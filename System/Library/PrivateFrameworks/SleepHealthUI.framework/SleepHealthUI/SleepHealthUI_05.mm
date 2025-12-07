void sub_269C9D67C(uint64_t a1)
{
  if (!qword_28034F1C8)
  {
    sub_269C9D7A8(255);
    sub_269C9DA44(255, &qword_28034F208, MEMORY[0x277CE0BD8], &type metadata for ClearTextCaseFromEnvironment, MEMORY[0x277CDFAB8]);
    sub_269C3EEE8(v1, v2, v3);
    sub_269C9E17C(&qword_28034F210, sub_269C9D7A8, MEMORY[0x277CE14C0]);
    sub_269C9DA98();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v5)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_28034F1C8);
    }
  }
}

void sub_269C9D7DC(uint64_t a1)
{
  if (!qword_28034F1D8)
  {
    sub_269C9D484(255, &qword_28034F1E0, sub_269C9D884, &type metadata for ClearTextCaseFromEnvironment, MEMORY[0x277CDFAB8]);
    sub_269C9D9B8(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_28034F1D8);
    }
  }
}

void sub_269C9D884(uint64_t a1)
{
  if (!qword_28034F1E8)
  {
    sub_269C9DA44(255, &qword_28034F1F0, MEMORY[0x277CE0BD8], MEMORY[0x277CE0BC8], MEMORY[0x277CDF020]);
    sub_269C9D934();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_28034F1E8);
    }
  }
}

unint64_t sub_269C9D934()
{
  result = qword_28034F1F8;
  if (!qword_28034F1F8)
  {
    sub_269C9DA44(255, &qword_28034F1F0, MEMORY[0x277CE0BD8], MEMORY[0x277CE0BC8], MEMORY[0x277CDF020]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034F1F8);
  }

  return result;
}

void sub_269C9D9B8(uint64_t a1)
{
  if (!qword_28034F200)
  {
    sub_269C9DA44(255, &qword_28034F1F0, MEMORY[0x277CE0BD8], MEMORY[0x277CE0BC8], MEMORY[0x277CDF020]);
    v1 = sub_269D98D00();
    if (!v2)
    {
      atomic_store(v1, &qword_28034F200);
    }
  }
}

void sub_269C9DA44(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_269C9DA98()
{
  result = qword_28034F218;
  if (!qword_28034F218)
  {
    sub_269C9DA44(255, &qword_28034F208, MEMORY[0x277CE0BD8], &type metadata for ClearTextCaseFromEnvironment, MEMORY[0x277CDFAB8]);
    sub_269C9DB44(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034F218);
  }

  return result;
}

unint64_t sub_269C9DB44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28034F220;
  if (!qword_28034F220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034F220);
  }

  return result;
}

void sub_269C9DBCC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_269C9DC78(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

uint64_t sub_269C9DCFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepDeepLinkTextProvider.DeepLinkText(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_269C9DD60(uint64_t a1)
{
  type metadata accessor for SleepDeepLinkTextProvider.DeepLinkText(0);

  return sub_269C9A318(a1);
}

unint64_t sub_269C9DDE0()
{
  result = qword_28034F238;
  if (!qword_28034F238)
  {
    sub_269C9D634(255);
    sub_269C9D7A8(255);
    sub_269C9DA44(255, &qword_28034F208, MEMORY[0x277CE0BD8], &type metadata for ClearTextCaseFromEnvironment, MEMORY[0x277CDFAB8]);
    sub_269C3EEE8(v1, v2, v3);
    sub_269C9E17C(&qword_28034F210, sub_269C9D7A8, MEMORY[0x277CE14C0]);
    sub_269C9DA98();
    swift_getOpaqueTypeConformance2();
    sub_269C9E17C(&qword_28034F240, sub_269C9DB98, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034F238);
  }

  return result;
}

uint64_t objectdestroyTm_0()
{
  v1 = *(type metadata accessor for SleepDeepLinkTextProvider.DeepLinkText(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = sub_269D972A0();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocObject();
}

uint64_t sub_269C9E054()
{
  v1 = *(type metadata accessor for SleepDeepLinkTextProvider.DeepLinkText(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_269C9A4C0(v2);
}

uint64_t sub_269C9E0B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_269C9E114(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_269C9E17C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_269C9E288(uint64_t a1, uint64_t a2)
{
  sub_269C9DA44(0, &qword_28034F0A8, &type metadata for PromotionView, &type metadata for SleepDeepLinkButton, MEMORY[0x277CE0338]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_269C9E318(uint64_t a1)
{
  sub_269C9DA44(0, &qword_28034F0A8, &type metadata for PromotionView, &type metadata for SleepDeepLinkButton, MEMORY[0x277CE0338]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_269C9E3F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_269C9E438(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_269C9E498()
{
  if (!qword_28034F250)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_28034F250);
    }
  }
}

unint64_t sub_269C9E4F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28034F258;
  if (!qword_28034F258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034F258);
  }

  return result;
}

uint64_t sub_269C9E548(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_269C9E55C(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

unint64_t sub_269C9E570()
{
  result = qword_28034F260;
  if (!qword_28034F260)
  {
    sub_269C9DC30(255);
    sub_269C9DDE0();
    sub_269C9E17C(&qword_28034E0A0, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034F260);
  }

  return result;
}

id static UIAlertController.createOccurrenceChangeAlert(calendar:occurrence:weekdays:changes:sender:changeNextHandler:changeAllHandler:cancelHandler:)(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v17 = *a4;
  if (qword_28034D738 != -1)
  {
    swift_once();
  }

  v18 = sub_269D98250();
  __swift_project_value_buffer(v18, qword_280351208);
  v19 = a2;
  v20 = sub_269D98230();
  v21 = sub_269D9AB80();

  if (os_log_type_enabled(v20, v21))
  {
    v49 = a1;
    v22 = swift_slowAlloc();
    v50 = a7;
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    aBlock = v48;
    *v22 = 136446466;
    v23 = sub_269D9B4D0();
    v25 = v19;
    v26 = a3;
    v27 = a5;
    v28 = v17;
    v29 = a6;
    v30 = sub_269C2EACC(v23, v24, &aBlock);

    *(v22 + 4) = v30;
    a6 = v29;
    v17 = v28;
    a5 = v27;
    a3 = v26;
    v19 = v25;
    *(v22 + 12) = 2114;
    *(v22 + 14) = v25;
    *v47 = v25;
    v31 = v25;
    _os_log_impl(&dword_269C18000, v20, v21, "[%{public}s] creating action sheet for occurrence: %{public}@", v22, 0x16u);
    sub_269C773DC(v47);
    a7 = v50;
    MEMORY[0x26D652460](v47, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v48);
    MEMORY[0x26D652460](v48, -1, -1);
    v32 = v22;
    a1 = v49;
    MEMORY[0x26D652460](v32, -1, -1);
  }

  aBlock = v17;
  _sSo17UIAlertControllerC13SleepHealthUIE18changeAlertMessage8calendar10occurrence8weekdays7changesSS10Foundation8CalendarV_So27HKSPSleepScheduleOccurrenceCSo12HKSPWeekdaysVAC0pQ9EditModelC9ChangeSetVtFZ_0(a1, v19, a3, &aBlock);
  v33 = sub_269D9A5F0();

  v34 = [objc_opt_self() alertControllerWithTitle:0 message:v33 preferredStyle:0];

  v35 = [v34 popoverPresentationController];
  [v35 setSourceItem_];

  aBlock = v17;
  _sSo17UIAlertControllerC13SleepHealthUIE16changeNextAction10occurrence7changesSSSo27HKSPSleepScheduleOccurrenceC_AC0lM9EditModelC9ChangeSetVtFZ_0(v19, &aBlock);

  v36 = sub_269D9A5F0();

  v56 = a6;
  v57 = a7;
  aBlock = MEMORY[0x277D85DD0];
  v53 = 1107296256;
  v54 = sub_269CECE18;
  v55 = &block_descriptor_9;
  v37 = _Block_copy(&aBlock);

  v38 = objc_opt_self();
  v39 = [v38 actionWithTitle:v36 style:0 handler:v37];
  _Block_release(v37);

  [v34 addAction_];
  if (qword_280C0AE70 != -1)
  {
    swift_once();
  }

  sub_269D972C0();

  v40 = sub_269D9A5F0();

  v56 = a8;
  v57 = a9;
  aBlock = MEMORY[0x277D85DD0];
  v53 = 1107296256;
  v54 = sub_269CECE18;
  v55 = &block_descriptor_3;
  v41 = _Block_copy(&aBlock);

  v42 = [v38 actionWithTitle:v40 style:0 handler:{v41, 0xE000000000000000}];
  _Block_release(v41);

  [v34 addAction_];
  sub_269D972C0();
  v43 = sub_269D9A5F0();

  if (a10)
  {
    v56 = a10;
    v57 = a11;
    aBlock = MEMORY[0x277D85DD0];
    v53 = 1107296256;
    v54 = sub_269CECE18;
    v55 = &block_descriptor_6;
    v44 = _Block_copy(&aBlock);
  }

  else
  {
    v44 = 0;
  }

  v45 = [v38 &selRef_begin + 1];
  _Block_release(v44);

  [v34 addAction_];
  return v34;
}

id sub_269C9EBF8(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *a1;
  if (qword_28034D738 != -1)
  {
    swift_once();
  }

  v11 = sub_269D98250();
  __swift_project_value_buffer(v11, qword_280351208);
  v12 = a2;
  v13 = sub_269D98230();
  v14 = sub_269D9AB80();

  if (os_log_type_enabled(v13, v14))
  {
    v36 = a3;
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v35 = a4;
    v17 = a6;
    v18 = swift_slowAlloc();
    aBlock = v18;
    *v15 = 136446466;
    v19 = sub_269D9B4D0();
    v21 = sub_269C2EACC(v19, v20, &aBlock);

    *(v15 + 4) = v21;
    *(v15 + 12) = 2114;
    *(v15 + 14) = v12;
    *v16 = v12;
    v22 = v12;
    _os_log_impl(&dword_269C18000, v13, v14, "[%{public}s] creating issue alert occurrence: %{public}@", v15, 0x16u);
    sub_269C773DC(v16);
    MEMORY[0x26D652460](v16, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    v23 = v18;
    a6 = v17;
    a4 = v35;
    MEMORY[0x26D652460](v23, -1, -1);
    v24 = v15;
    a3 = v36;
    MEMORY[0x26D652460](v24, -1, -1);
  }

  aBlock = v10;
  sub_269C9FBB0(&aBlock);
  v25 = sub_269D9A5F0();

  v26 = [objc_opt_self() alertControllerWithTitle:0 message:v25 preferredStyle:1];

  if (qword_280C0AE70 != -1)
  {
    swift_once();
  }

  sub_269D972C0();

  v27 = sub_269D9A5F0();

  v42 = a3;
  v43 = a4;
  aBlock = MEMORY[0x277D85DD0];
  v39 = 1107296256;
  v40 = sub_269CECE18;
  v41 = &block_descriptor_9;
  v28 = _Block_copy(&aBlock);

  v29 = objc_opt_self();
  v30 = [v29 actionWithTitle:v27 style:0 handler:{v28, 0xE000000000000000}];
  _Block_release(v28);

  [v26 addAction_];
  sub_269D972C0();
  v31 = sub_269D9A5F0();

  if (a5)
  {
    v42 = a5;
    v43 = a6;
    aBlock = MEMORY[0x277D85DD0];
    v39 = 1107296256;
    v40 = sub_269CECE18;
    v41 = &block_descriptor_12_0;
    v32 = _Block_copy(&aBlock);
  }

  else
  {
    v32 = 0;
  }

  v33 = [v29 actionWithTitle:v31 style:1 handler:{v32, 0xE000000000000000}];
  _Block_release(v32);

  [v26 addAction_];
  return v26;
}

uint64_t sub_269C9F090(uint64_t a1)
{
  result = 0;
  if (a1 <= 3)
  {
    if (a1 != 1 && a1 != 2)
    {
      if (a1 != 3)
      {
        return result;
      }

      if (qword_280C0AE70 == -1)
      {
        return sub_269D972C0();
      }

      goto LABEL_20;
    }
  }

  else
  {
    if (a1 <= 5)
    {
      if (a1 != 4)
      {
        goto LABEL_12;
      }

      if (qword_280C0AE70 == -1)
      {
        return sub_269D972C0();
      }

LABEL_20:
      swift_once();
      return sub_269D972C0();
    }

    if (a1 != 6)
    {
      if (a1 != 7)
      {
        return result;
      }

LABEL_12:
      if (qword_280C0AE70 == -1)
      {
        return sub_269D972C0();
      }

      goto LABEL_20;
    }
  }

  if (qword_280C0AE70 != -1)
  {
    goto LABEL_20;
  }

  return sub_269D972C0();
}

uint64_t _sSo17UIAlertControllerC13SleepHealthUIE18changeAlertMessage8calendar10occurrence8weekdays7changesSS10Foundation8CalendarV_So27HKSPSleepScheduleOccurrenceCSo12HKSPWeekdaysVAC0pQ9EditModelC9ChangeSetVtFZ_0(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4)
{
  v62 = *MEMORY[0x277D85DE8];
  v8 = sub_269D977F0();
  v9 = *(v8 - 8);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v13 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a4;
  v15 = a3;
  if (v14 == 1)
  {
    v15 = a3;
    if ([a2 crossesDayBoundary])
    {
      v15 = HKSPWeekdaysShiftBackOneDay();
    }
  }

  if (v15 == *MEMORY[0x277D62398])
  {
    goto LABEL_5;
  }

  if (!HKSPWeekdaysIsSingleDay())
  {
    v24 = sub_269D976E0();
    v25 = HKSPWeekendDaysInCalendar();

    if (v15 == v25 || (v26 = sub_269D976E0(), v27 = HKSPWeekdayDaysInCalendar(), v26, v15 == v27))
    {
LABEL_5:
      if (qword_280C0AE70 != -1)
      {
        swift_once();
      }

      return sub_269D972C0();
    }

    v28 = sub_269D976E0();
    v29 = HKSPDaysForWeekdaysInCalendar();

    sub_269D977B0();
    if (sub_269D977D0() != 2 || (v30 = sub_269D977E0(), (v31 & 1) != 0) || (v32 = v30, v33 = sub_269D977C0(), (v34 & 1) != 0))
    {
      v60 = 0;
      v61 = 0;
      v35 = sub_269D976E0();
      v36 = HKSPWeekdaysAreConsecutiveInCalendar();

      if (!v36)
      {
        if (qword_280C0AE70 != -1)
        {
          swift_once();
        }

        sub_269D972C0();
        sub_269C9FD50(0, &qword_28034E6B0, sub_269C716C8, MEMORY[0x277D84560]);
        v42 = swift_allocObject();
        *(v42 + 16) = xmmword_269D9EBE0;
        v43 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
        [v43 setFormattingContext_];
        v44 = NSDateFormatter.localizedCommaSeparatedList(using:calendar:useShortSymbols:)(v15, a1, 0);
        v46 = v45;

        *(v42 + 56) = MEMORY[0x277D837D0];
        *(v42 + 64) = sub_269C7172C(v47, v48, v49);
        *(v42 + 32) = v44;
        *(v42 + 40) = v46;
        v50 = sub_269D9A600();

        goto LABEL_25;
      }

      v59 = sub_269C9F090(v61);
      v38 = v37;
      v39 = sub_269C9F090(v60);
      v41 = v40;
      if (qword_280C0AE70 == -1)
      {
LABEL_24:
        sub_269D972C0();
        sub_269C9FD50(0, &qword_28034E6B0, sub_269C716C8, MEMORY[0x277D84560]);
        v54 = swift_allocObject();
        *(v54 + 16) = xmmword_269D9EBF0;
        v55 = MEMORY[0x277D837D0];
        *(v54 + 56) = MEMORY[0x277D837D0];
        v58 = sub_269C7172C(v54, v56, v57);
        *(v54 + 32) = v59;
        *(v54 + 40) = v38;
        *(v54 + 96) = v55;
        *(v54 + 104) = v58;
        *(v54 + 64) = v58;
        *(v54 + 72) = v39;
        *(v54 + 80) = v41;
        v50 = sub_269D9A600();

LABEL_25:

        (*(v9 + 8))(v13, v8);
        return v50;
      }
    }

    else
    {
      v51 = v33;
      v59 = sub_269C9F090(v32);
      v38 = v52;
      v39 = sub_269C9F090(v51);
      v41 = v53;
      if (qword_280C0AE70 == -1)
      {
        goto LABEL_24;
      }
    }

    swift_once();
    goto LABEL_24;
  }

  if (qword_280C0AE70 != -1)
  {
    swift_once();
  }

  sub_269D972C0();
  sub_269C9FD50(0, &qword_28034E6B0, sub_269C716C8, MEMORY[0x277D84560]);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_269D9EBE0;
  v18 = HKSPDayForWeekdays();
  v19 = sub_269C9F090(v18);
  v21 = v20;
  *(v17 + 56) = MEMORY[0x277D837D0];
  *(v17 + 64) = sub_269C7172C(v19, v20, v22);
  *(v17 + 32) = v19;
  *(v17 + 40) = v21;
  v23 = sub_269D9A600();

  return v23;
}

uint64_t _sSo17UIAlertControllerC13SleepHealthUIE16changeNextAction10occurrence7changesSSSo27HKSPSleepScheduleOccurrenceC_AC0lM9EditModelC9ChangeSetVtFZ_0(void *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a2 == 1)
  {
    if (qword_280C0AE70 == -1)
    {
      return sub_269D972C0();
    }

    goto LABEL_10;
  }

  v3 = [a1 alarmConfiguration];
  v4 = [v3 isEnabled];

  if ((v2 & 4) == 0 && !v4)
  {
    if (qword_280C0AE70 == -1)
    {
      return sub_269D972C0();
    }

    goto LABEL_10;
  }

  if (qword_280C0AE70 != -1)
  {
LABEL_10:
    swift_once();
  }

  return sub_269D972C0();
}

double block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_269C9FBB0(uint64_t *a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = 2;
  }

  else if ((v1 & 2) != 0)
  {
    v3 = 3;
  }

  else if ((v1 & 4) != 0)
  {
    v3 = 4;
  }

  else
  {
    if ((v1 & 8) == 0)
    {
      return 0;
    }

    v3 = 5;
  }

  sub_269C9FD50(0, &qword_28034E6B0, sub_269C716C8, MEMORY[0x277D84560]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_269D9EBF0;
  v5 = sub_269C85F54(v3);
  v7 = v6;
  v8 = MEMORY[0x277D837D0];
  *(v4 + 56) = MEMORY[0x277D837D0];
  v10 = sub_269C7172C(v5, v6, v9);
  *(v4 + 64) = v10;
  *(v4 + 32) = v5;
  *(v4 + 40) = v7;
  if (qword_280C0AE70 != -1)
  {
    swift_once();
  }

  v11 = sub_269D972C0();
  *(v4 + 96) = v8;
  *(v4 + 104) = v10;
  *(v4 + 72) = v11;
  *(v4 + 80) = v12;
  v2 = sub_269D9A600();

  return v2;
}

void sub_269C9FD50(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_269C9FDD4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
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

uint64_t sub_269C9FE30(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_269C9FEAC(uint64_t a1, uint64_t a2)
{
  sub_269CA01B8(0, &qword_28034F268, sub_269CA0170, sub_269CA023C, MEMORY[0x277CE0330]);
  MEMORY[0x28223BE20](v4, v5);
  v7 = v21 - v6;
  sub_269CA0170(0);
  v9 = v8;
  MEMORY[0x28223BE20](v8, v10);
  v14 = v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v21[1] = a2;

    v15 = sub_269D99FF0();
    sub_269CA023C(0, v16, v17);
    (*(*(v18 - 8) + 16))(v14, a1, v18);
    *&v14[*(v9 + 36)] = v15;
    sub_269CA04A8(v14, v7);
    swift_storeEnumTagMultiPayload();
    sub_269CA0380();
    sub_269CA0460(&qword_28034F2A0, sub_269CA023C, MEMORY[0x277CE04B0]);
    sub_269D992D0();
    return sub_269CA050C(v14);
  }

  else
  {
    sub_269CA023C(0, v11, v12);
    (*(*(v20 - 8) + 16))(v7, a1, v20);
    swift_storeEnumTagMultiPayload();
    sub_269CA0380();
    sub_269CA0460(&qword_28034F2A0, sub_269CA023C, MEMORY[0x277CE04B0]);
    return sub_269D992D0();
  }
}

void sub_269CA01B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_269CA023C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!qword_28034F278)
  {
    sub_269CA0298(0, a2, a3);
    v3 = sub_269D99360();
    if (!v4)
    {
      atomic_store(v3, &qword_28034F278);
    }
  }
}

unint64_t sub_269CA0298(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28034F280;
  if (!qword_28034F280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034F280);
  }

  return result;
}

void sub_269CA02EC(uint64_t a1)
{
  if (!qword_28034F288)
  {
    sub_269D99400();
    sub_269CA0460(&qword_28034F290, MEMORY[0x277CDE350], MEMORY[0x277CDE348]);
    v1 = sub_269D99350();
    if (!v2)
    {
      atomic_store(v1, &qword_28034F288);
    }
  }
}

unint64_t sub_269CA0380()
{
  result = qword_28034F298;
  if (!qword_28034F298)
  {
    sub_269CA0170(255);
    sub_269CA0460(&qword_28034F2A0, sub_269CA023C, MEMORY[0x277CE04B0]);
    sub_269CA0460(&qword_28034F2A8, sub_269CA02EC, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034F298);
  }

  return result;
}

uint64_t sub_269CA0460(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_269CA04A8(uint64_t a1, uint64_t a2)
{
  sub_269CA0170(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_269CA050C(uint64_t a1)
{
  sub_269CA0170(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_269CA0568()
{
  result = qword_28034F2B0;
  if (!qword_28034F2B0)
  {
    sub_269CA01B8(255, &qword_28034F2B8, sub_269CA0170, sub_269CA023C, MEMORY[0x277CE0338]);
    sub_269CA0380();
    sub_269CA0460(&qword_28034F2A0, sub_269CA023C, MEMORY[0x277CE04B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034F2B0);
  }

  return result;
}

id HKSPSleepStore.settings.getter()
{

  return sub_269CA099C(&selRef_currentSleepSettingsWithError_, "[%{public}s] Error retrieving current sleep settings: %{public}s", 0x277D62520);
}

id HKSPSleepStore.schedule.getter()
{
  v21[1] = *MEMORY[0x277D85DE8];
  swift_getObjectType();
  v21[0] = 0;
  result = [v0 currentSleepScheduleWithError_];
  if (result)
  {
    v2 = 1;
  }

  else
  {
    v2 = v21[0] == 0;
  }

  if (!v2)
  {
    v3 = result;
    v4 = qword_280C0B218;
    v5 = v21[0];
    if (v4 != -1)
    {
      swift_once();
    }

    v6 = sub_269D98250();
    __swift_project_value_buffer(v6, qword_280C0B220);
    v7 = v5;
    v8 = sub_269D98230();
    v9 = sub_269D9AB60();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v21[0] = v11;
      *v10 = 136446466;
      v12 = sub_269D9B4D0();
      v14 = sub_269C2EACC(v12, v13, v21);

      *(v10 + 4) = v14;
      *(v10 + 12) = 2082;
      v15 = v7;
      v16 = [v15 description];
      v17 = sub_269D9A630();
      v19 = v18;

      v20 = sub_269C2EACC(v17, v19, v21);

      *(v10 + 14) = v20;
      _os_log_impl(&dword_269C18000, v8, v9, "[%{public}s] Error retrieving current sleep schedule: %{public}s", v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D652460](v11, -1, -1);
      MEMORY[0x26D652460](v10, -1, -1);
    }

    else
    {
    }

    return v3;
  }

  return result;
}

id HKSPSleepStore.eventRecord.getter()
{

  return sub_269CA099C(&selRef_currentSleepEventRecordWithError_, "[%{public}s] Error retrieving current sleep event record: %{public}s", 0x277D624D8);
}

id sub_269CA099C(SEL *a1, const char *a2, Class *a3)
{
  v30[1] = *MEMORY[0x277D85DE8];
  swift_getObjectType();
  v30[0] = 0;
  v7 = [v3 *a1];
  if (v7)
  {
    v8 = v7;
    v9 = v30[0];
  }

  else
  {
    v10 = v30[0];
    v11 = sub_269D97360();

    swift_willThrow();
    if (qword_280C0B218 != -1)
    {
      swift_once();
    }

    v12 = sub_269D98250();
    __swift_project_value_buffer(v12, qword_280C0B220);
    v13 = v11;
    v14 = sub_269D98230();
    v15 = sub_269D9AB60();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v30[0] = v17;
      *v16 = 136446466;
      v18 = sub_269D9B4D0();
      v20 = sub_269C2EACC(v18, v19, v30);

      *(v16 + 4) = v20;
      *(v16 + 12) = 2082;
      ErrorValue = swift_getErrorValue();
      v22 = MEMORY[0x28223BE20](ErrorValue, v29[1]);
      (*(v24 + 16))(v29 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), v22);
      v25 = sub_269D9A660();
      v27 = sub_269C2EACC(v25, v26, v30);

      *(v16 + 14) = v27;
      _os_log_impl(&dword_269C18000, v14, v15, a2, v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D652460](v17, -1, -1);
      MEMORY[0x26D652460](v16, -1, -1);
    }

    v8 = [objc_allocWithZone(*a3) init];
  }

  return v8;
}

uint64_t HKSPSleepStore.secondsSinceAlarmDismissal.getter()
{
  v0 = sub_269D97580();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = HKSPSleepStore.eventRecord.getter();
  sub_269D97550();
  v6 = sub_269D974B0();
  (*(v1 + 8))(v4, v0);
  v7 = [v5 secondsSinceAlarmDismissalFromDate_];

  if (!v7)
  {
    return 0;
  }

  [v7 doubleValue];
  v9 = v8;

  return v9;
}

void HKSPSleepStore.applySettingsModifications(settingsModifications:completion:)(void (*a1)(void *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v10 = HKSPSleepStore.settings.getter();
  [v10 mutableCopy];

  sub_269D9AED0();
  swift_unknownObjectRelease();
  sub_269CA1250();
  swift_dynamicCast();
  v11 = v16;
  a1(v16);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = ObjectType;
  aBlock[4] = sub_269CA129C;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_269C7A600;
  aBlock[3] = &block_descriptor_10;
  v13 = _Block_copy(aBlock);
  v14 = v11;
  sub_269C255A8(a3, a4);

  [v5 saveCurrentSleepSettings:v14 completion:v13];
  _Block_release(v13);
}

void sub_269CA0F68(uint64_t a1, id a2, void (*a3)(id, uint64_t), uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    if (a3)
    {
      (a3)(0, 0, a3, a4, a5);
    }
  }

  else
  {
    if (a2)
    {
      v6 = a2;
    }

    else
    {
      sub_269CA12C0(a1, 0, a3);
      v7 = swift_allocError();
      a2 = 0;
      v6 = v7;
    }

    v8 = a2;
    if (qword_280C0B218 != -1)
    {
      swift_once();
    }

    v9 = sub_269D98250();
    __swift_project_value_buffer(v9, qword_280C0B220);
    v10 = v6;
    v11 = sub_269D98230();
    v12 = sub_269D9AB60();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v27 = v14;
      *v13 = 136446466;
      v15 = sub_269D9B4D0();
      v17 = sub_269C2EACC(v15, v16, &v27);

      *(v13 + 4) = v17;
      *(v13 + 12) = 2082;
      ErrorValue = swift_getErrorValue();
      v19 = MEMORY[0x28223BE20](ErrorValue, v26[1]);
      (*(v21 + 16))(v26 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), v19);
      v22 = sub_269D9A660();
      v24 = sub_269C2EACC(v22, v23, &v27);

      *(v13 + 14) = v24;
      _os_log_impl(&dword_269C18000, v11, v12, "[%{public}s] Error saving sleep settings: %{public}s", v13, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D652460](v14, -1, -1);
      MEMORY[0x26D652460](v13, -1, -1);
    }

    if (a3)
    {
      v25 = v6;
      a3(v6, 1);
    }
  }
}

unint64_t sub_269CA1250()
{
  result = qword_28034F2C0;
  if (!qword_28034F2C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28034F2C0);
  }

  return result;
}

double block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t sub_269CA12C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28034F2C8;
  if (!qword_28034F2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034F2C8);
  }

  return result;
}

uint64_t ScheduleOccurrenceAlarmSnoozeDurationPickerTableViewCell.apply(_:)(uint64_t a1)
{
  type metadata accessor for AlarmSnoozeDurationPickerModel(0);
  v3 = swift_allocObject();
  sub_269D97A20();
  *(v3 + 16) = a1;
  *&v1[OBJC_IVAR____TtC13SleepHealthUI56ScheduleOccurrenceAlarmSnoozeDurationPickerTableViewCell_snoozeDurationPickerModel] = v3;

  [v1 setNeedsUpdateConfiguration];
}

id sub_269CA1400(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR____TtC13SleepHealthUI56ScheduleOccurrenceAlarmSnoozeDurationPickerTableViewCell_snoozeDurationPickerModel] = 0;
  if (a3)
  {
    v5 = sub_269D9A5F0();
  }

  else
  {
    v5 = 0;
  }

  v14.receiver = v3;
  v14.super_class = type metadata accessor for ScheduleOccurrenceAlarmSnoozeDurationPickerTableViewCell();
  v6 = objc_msgSendSuper2(&v14, sel_initWithStyle_reuseIdentifier_, a1, v5);

  v7 = objc_allocWithZone(MEMORY[0x277D75348]);
  v13[4] = sub_269CC7C58;
  v13[5] = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_269CC7F6C;
  v13[3] = &block_descriptor_11;
  v8 = _Block_copy(v13);
  v9 = v6;
  v10 = [v7 initWithDynamicProvider_];
  _Block_release(v8);

  [v9 setBackgroundColor_];

  [v9 setAutomaticallyUpdatesBackgroundConfiguration_];
  *(swift_allocObject() + 16) = v9;
  v11 = v9;
  sub_269D9ABD0();

  return v11;
}

uint64_t sub_269CA15B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_269CA2760(0);
  v5[3] = v3;
  v5[4] = sub_269CA2908(&qword_28034F310, sub_269CA2760, MEMORY[0x277CDE1C0]);
  __swift_allocate_boxed_opaque_existential_1(v5);
  sub_269CA2A5C(0, &qword_28034F2F8, type metadata accessor for AlarmSnoozeDurationPickerView, MEMORY[0x277D83D88]);
  sub_269CA2830();
  sub_269D99390();
  return MEMORY[0x26D650E10](v5);
}

uint64_t sub_269CA16AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AlarmSnoozeDurationPickerView(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269CA2A5C(0, &qword_28034F2F8, type metadata accessor for AlarmSnoozeDurationPickerView, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v14 - v11;
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (*(a1 + OBJC_IVAR____TtC13SleepHealthUI56ScheduleOccurrenceAlarmSnoozeDurationPickerTableViewCell_snoozeDurationPickerModel))
  {
    type metadata accessor for AlarmSnoozeDurationPickerModel(0);
    sub_269CA2908(&qword_28034F318, type metadata accessor for AlarmSnoozeDurationPickerModel, &unk_269DA3900);

    sub_269D9A110();
    sub_269CA29E4(v8, v12);
    (*(v5 + 56))(v12, 0, 1, v4);
  }

  else
  {
    (*(v5 + 56))(v12, 1, 1, v4);
  }

  sub_269CA2950(v12, a2);
}

id ScheduleOccurrenceAlarmSnoozeDurationPickerTableViewCell.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ScheduleOccurrenceAlarmSnoozeDurationPickerTableViewCell();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_269CA1AF8(uint64_t a1)
{
  v3 = *v1;
  type metadata accessor for AlarmSnoozeDurationPickerModel(0);
  v4 = swift_allocObject();
  sub_269D97A20();
  *(v4 + 16) = a1;
  *&v3[OBJC_IVAR____TtC13SleepHealthUI56ScheduleOccurrenceAlarmSnoozeDurationPickerTableViewCell_snoozeDurationPickerModel] = v4;

  [v3 setNeedsUpdateConfiguration];
}

double sub_269CA1BB4()
{
  v1 = [*(*(v0 + 16) + OBJC_IVAR____TtC13SleepHealthUI27ScheduleOccurrenceEditModel_mutableOccurrence) alarmConfiguration];
  [v1 mutableCopy];

  sub_269D9AED0();
  swift_unknownObjectRelease();
  sub_269C60AF4();
  swift_dynamicCast();
  [v5 snoozeDuration];
  v3 = v2;

  return v3;
}

uint64_t sub_269CA1C78()
{

  v1 = OBJC_IVAR____TtC13SleepHealthUI30AlarmSnoozeDurationPickerModel___observationRegistrar;
  v2 = sub_269D97A30();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_269CA1D24@<X0>(uint64_t a1@<X8>)
{
  v42 = a1;
  v41 = sub_269D98DE0();
  v38 = *(v41 - 8);
  MEMORY[0x28223BE20](v41, v1);
  v3 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269CA2A5C(0, &qword_28034F320, type metadata accessor for AlarmSnoozeDurationPickerModel, MEMORY[0x277CE12F8]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v36 - v8;
  sub_269CA2B8C(0);
  v37 = v10;
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269CA2DC4(0);
  v39 = *(v15 - 8);
  v40 = v15;
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280C0AE70 != -1)
  {
    swift_once();
  }

  v50 = sub_269D972C0();
  v51 = v19;
  sub_269D9A100();
  swift_getKeyPath();
  sub_269D9A120();

  v20 = (*(v6 + 8))(v9, v5);
  v47 = v43;
  v48 = v44;
  v49 = v45;
  MEMORY[0x28223BE20](v20, v21);
  sub_269CA2C20(0);
  v22 = sub_269CA2D54();
  sub_269C3EEE8(v22, v23, v24);
  v25 = MEMORY[0x277D837D0];
  sub_269D99F70();
  sub_269D98DD0();
  v26 = sub_269CA2908(&qword_28034F368, sub_269CA2B8C, MEMORY[0x277CDF038]);
  v27 = v37;
  v28 = v41;
  sub_269D99AA0();
  (*(v38 + 8))(v3, v28);
  (*(v11 + 8))(v14, v27);
  sub_269CA2EA0(0, &qword_280C0B440, v25, MEMORY[0x277D84560]);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_269DA0D60;
  *(v29 + 32) = sub_269D9A630();
  *(v29 + 40) = v30;
  *(v29 + 48) = 0x7065656C53;
  *(v29 + 56) = 0xE500000000000000;
  strcpy((v29 + 64), "ScheduleEditor");
  *(v29 + 79) = -18;
  v43 = v29;
  sub_269C49A1C(&unk_287A9FCE0);
  sub_269CA2EA0(0, &qword_280C0B4F0, v25, MEMORY[0x277D83940]);
  sub_269CA2CFC(&qword_280C0AF30, &qword_280C0B4F0, v25, MEMORY[0x277D83958]);
  v31 = sub_269D9A520();
  v33 = v32;

  sub_269C4BEAC(&unk_287A9FD00);
  v43 = v31;
  v44 = v33;

  MEMORY[0x26D650930](0x6F6974617275442ELL, 0xEF72656B6369506ELL);

  v43 = v27;
  v44 = v28;
  v45 = v26;
  v46 = MEMORY[0x277CDDB70];
  swift_getOpaqueTypeConformance2();
  v34 = v40;
  sub_269D99BB0();

  return (*(v39 + 8))(v18, v34);
}

void sub_269CA2370(uint64_t a1)
{
  v2 = type metadata accessor for AlarmSnoozeDurationPickerView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8, v5);
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = *MEMORY[0x277D61FF0] * 60.0;
  if (v6 == 0.0)
  {
    __break(1u);
  }

  else
  {
    v10[1] = sub_269D70B40(*MEMORY[0x277D61FE8] * 60.0, *MEMORY[0x277D61FE0] * 60.0, v6);
    swift_getKeyPath();
    sub_269CA2EF0(a1, v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
    v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v8 = swift_allocObject();
    sub_269CA29E4(v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
    v9 = MEMORY[0x277D839F8];
    sub_269CA2EA0(0, &qword_28034F348, MEMORY[0x277D839F8], MEMORY[0x277D83940]);
    sub_269CA2CFC(&qword_28034F350, &qword_28034F348, v9, MEMORY[0x277D83980]);
    sub_269D9A080();
  }
}

uint64_t sub_269CA25D4@<X0>(double *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = type metadata accessor for ShorterDateComponentsFormatter();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR____TtC13SleepHealthUI30ShorterDateComponentsFormatter_options] = 4;
  v19.receiver = v5;
  v19.super_class = v4;
  v6 = objc_msgSendSuper2(&v19, sel_init);
  v7 = [v6 stringFromTimeInterval_];

  if (v7)
  {
    sub_269D9A630();
  }

  sub_269C3EEE8(v8, v9, v10);
  v11 = sub_269D99960();
  v13 = v12;
  v15 = v14;
  v17 = v16;

  *a2 = v11;
  *(a2 + 8) = v13;
  *(a2 + 16) = v15 & 1;
  *(a2 + 24) = v17;
  return result;
}

double block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void sub_269CA2760(uint64_t a1)
{
  if (!qword_28034F2F0)
  {
    sub_269CA2A5C(255, &qword_28034F2F8, type metadata accessor for AlarmSnoozeDurationPickerView, MEMORY[0x277D83D88]);
    sub_269CA2830();
    v1 = sub_269D993A0();
    if (!v2)
    {
      atomic_store(v1, &qword_28034F2F0);
    }
  }
}

unint64_t sub_269CA2830()
{
  result = qword_28034F300;
  if (!qword_28034F300)
  {
    sub_269CA2A5C(255, &qword_28034F2F8, type metadata accessor for AlarmSnoozeDurationPickerView, MEMORY[0x277D83D88]);
    sub_269CA2908(&qword_28034F308, type metadata accessor for AlarmSnoozeDurationPickerView, &unk_269DA3940);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034F300);
  }

  return result;
}

uint64_t sub_269CA2908(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_269CA2950(uint64_t a1, uint64_t a2)
{
  sub_269CA2A5C(0, &qword_28034F2F8, type metadata accessor for AlarmSnoozeDurationPickerView, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_269CA29E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AlarmSnoozeDurationPickerView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_269CA2A5C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_269CA2AD4(uint64_t a1)
{
  sub_269CA2A5C(319, &qword_28034F320, type metadata accessor for AlarmSnoozeDurationPickerModel, MEMORY[0x277CE12F8]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_269CA2B8C(uint64_t a1)
{
  if (!qword_28034F338)
  {
    sub_269CA2C20(255);
    sub_269CA2D54();
    v1 = sub_269D99F80();
    if (!v2)
    {
      atomic_store(v1, &qword_28034F338);
    }
  }
}

void sub_269CA2C20(uint64_t a1)
{
  if (!qword_28034F340)
  {
    v1 = MEMORY[0x277D839F8];
    sub_269CA2EA0(255, &qword_28034F348, MEMORY[0x277D839F8], MEMORY[0x277D83940]);
    sub_269CA2CFC(&qword_28034F350, &qword_28034F348, v1, MEMORY[0x277D83980]);
    v2 = sub_269D9A0A0();
    if (!v3)
    {
      atomic_store(v2, &qword_28034F340);
    }
  }
}

uint64_t sub_269CA2CFC(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_269CA2EA0(255, a2, a3, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_269CA2D54()
{
  result = qword_28034F358;
  if (!qword_28034F358)
  {
    sub_269CA2C20(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034F358);
  }

  return result;
}

void sub_269CA2DC4(uint64_t a1)
{
  if (!qword_28034F360)
  {
    sub_269CA2B8C(255);
    sub_269D98DE0();
    sub_269CA2908(&qword_28034F368, sub_269CA2B8C, MEMORY[0x277CDF038]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_28034F360);
    }
  }
}

void sub_269CA2EA0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_269CA2EF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AlarmSnoozeDurationPickerView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_269CA2F54@<X0>(double *a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for AlarmSnoozeDurationPickerView(0);

  return sub_269CA25D4(a1, a2);
}

unint64_t sub_269CA2FD4()
{
  result = qword_28034F370;
  if (!qword_28034F370)
  {
    sub_269CA3104(255);
    sub_269CA2B8C(255);
    sub_269D98DE0();
    sub_269CA2908(&qword_28034F368, sub_269CA2B8C, MEMORY[0x277CDF038]);
    swift_getOpaqueTypeConformance2();
    sub_269CA2908(&qword_28034E0A0, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034F370);
  }

  return result;
}

void sub_269CA3104(uint64_t a1)
{
  if (!qword_28034F378)
  {
    sub_269CA2DC4(255);
    sub_269D99540();
    v1 = sub_269D98D00();
    if (!v2)
    {
      atomic_store(v1, &qword_28034F378);
    }
  }
}

void DeepLinkOpener.open(url:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_opt_self() defaultWorkspace];
  if (v5)
  {
    v6 = v5;
    v7 = sub_269D973A0();
    v8 = sub_269CA3604();
    v9 = swift_allocObject();
    *(v9 + 16) = a2;
    *(v9 + 24) = a3;
    v11[4] = sub_269CA377C;
    v11[5] = v9;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 1107296256;
    v11[2] = sub_269CA3540;
    v11[3] = &block_descriptor_12;
    v10 = _Block_copy(v11);
    sub_269C255A8(a2, a3);

    [v6 openURL:v7 configuration:v8 completionHandler:v10];
    _Block_release(v10);
  }
}

uint64_t sub_269CA32B4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  sub_269CA3958(0, &unk_280351880, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v17 - v9;
  v11 = sub_269D9A900();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  sub_269D9A8E0();
  sub_269C255A8(a3, a4);
  v12 = a2;
  v13 = sub_269D9A8D0();
  v14 = swift_allocObject();
  v15 = MEMORY[0x277D85700];
  v14[2] = v13;
  v14[3] = v15;
  v14[4] = a3;
  v14[5] = a4;
  v14[6] = a2;
  sub_269C7A29C(0, 0, v10, &unk_269DA3A18, v14);
}

uint64_t sub_269CA341C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  sub_269D9A8E0();
  v6[6] = sub_269D9A8D0();
  v8 = sub_269D9A880();

  return MEMORY[0x2822009F8](sub_269CA34B8, v8, v7);
}

uint64_t sub_269CA34B8()
{
  v1 = *(v0 + 24);

  if (v1)
  {
    (*(v0 + 24))(*(v0 + 40));
  }

  **(v0 + 16) = v1 == 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_269CA3540(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_269D9A490();
  }

  else
  {
    v5 = 0;
  }

  v6 = a3;
  v4(v5, a3);
}

id sub_269CA3604()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CC1F00]) init];
  sub_269CA3958(0, &qword_28034F380, sub_269C583D4, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_269D9EBF0;
  *(inited + 32) = sub_269D9A630();
  *(inited + 40) = v2;
  v3 = MEMORY[0x277D839B0];
  *(inited + 72) = MEMORY[0x277D839B0];
  *(inited + 48) = 1;
  *(inited + 80) = sub_269D9A630();
  *(inited + 88) = v4;
  *(inited + 120) = v3;
  *(inited + 96) = 1;
  sub_269C449C0(inited);
  swift_setDeallocating();
  sub_269C583D4();
  swift_arrayDestroy();
  v5 = sub_269D9A480();

  [v0 setFrontBoardOptions_];

  [v0 setSensitive_];
  return v0;
}

double block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t getEnumTagSinglePayload for DeepLinkOpener(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for DeepLinkOpener(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_269CA3890(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_269C71C08;

  return sub_269CA341C(a1, v4, v5, v6, v7, v8);
}

void sub_269CA3958(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t SleepOnboardingUserInfo.sleepDurationGoal.getter()
{
  swift_beginAccess();
  [*(v0 + 40) sleepDurationGoal];
  result = 0;
  if (v2 > 0.0)
  {
    [*(v0 + 40) sleepDurationGoal];
    return v3;
  }

  return result;
}

BOOL SleepOnboardingUserInfo.isWindDownEnabled.getter()
{
  swift_beginAccess();
  [*(v0 + 40) windDownTime];
  return v1 > 0.0;
}

uint64_t SleepOnboardingUserInfo.SleepScheduleType.hashValue.getter()
{
  v1 = *v0;
  sub_269D9B350();
  MEMORY[0x26D6515B0](v1);
  return sub_269D9B390();
}

id SleepOnboardingUserInfo.context.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  return v2;
}

void sub_269CA3BA0(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
  v5 = v2;
}

id sub_269CA3BF8()
{
  swift_beginAccess();
  v1 = *(v0 + 40);

  return v1;
}

void sub_269CA3C3C(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 40);
  *(v1 + 40) = a1;
}

void sub_269CA3CD4(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 48);
  *(v1 + 48) = a1;
}

void sub_269CA3D6C(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 56);
  *(v3 + 56) = v2;
  v5 = v2;
}

void *sub_269CA3DC4()
{
  swift_beginAccess();
  v1 = *(v0 + 56);
  v2 = v1;
  return v1;
}

void sub_269CA3E08(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 56);
  *(v1 + 56) = a1;
}

uint64_t sub_269CA3ED4(char a1)
{
  result = swift_beginAccess();
  *(v1 + 64) = a1;
  return result;
}

uint64_t sub_269CA3F6C@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(v1 + 80);
  return result;
}

uint64_t sub_269CA3FB0(char *a1)
{
  v2 = *a1;
  result = swift_beginAccess();
  *(v1 + 80) = v2;
  return result;
}

uint64_t sub_269CA4080(char a1)
{
  result = swift_beginAccess();
  *(v1 + 128) = a1;
  return result;
}

uint64_t SleepOnboardingUserInfo.__allocating_init(onboardingManager:onboardingContext:sleepSchedule:sleepScheduleType:sleepSettings:)(void *a1, uint64_t *a2, void *a3, char *a4, void *a5)
{
  swift_allocObject();
  v10 = sub_269CA4E44(a1, a2, a3, a4, a5);

  return v10;
}

uint64_t SleepOnboardingUserInfo.init(onboardingManager:onboardingContext:sleepSchedule:sleepScheduleType:sleepSettings:)(void *a1, uint64_t *a2, void *a3, char *a4, void *a5)
{
  v6 = sub_269CA4E44(a1, a2, a3, a4, a5);

  return v6;
}

void sub_269CA4208()
{
  if (*(v0 + 24))
  {
    return;
  }

  v1 = [objc_opt_self() sharedBehavior];
  if (!v1)
  {
    __break(1u);
    goto LABEL_9;
  }

  v2 = v1;
  v3 = [v1 features];

  if (!v3)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v4 = [v3 sleepResultsNotificationsOnWatch];

  if ((v4 & 1) == 0)
  {
    swift_beginAccess();
    [*(v0 + 48) setWakeUpResults_];
  }

  swift_beginAccess();
  [*(v0 + 48) setTimeInBedTracking_];
  swift_beginAccess();
  [*(v0 + 40) setEnabled_];
  [*(v0 + 48) setSpringBoardGreetingDisabled_];
}

uint64_t SleepOnboardingUserInfo.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 88));

  return swift_deallocClassInstance();
}

id sub_269CA43EC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = [*(v3 + 40) sleepDurationGoal];
  v6 = v5;
  v7 = 0;
  if (v6 > 0.0)
  {
    result = [*(v3 + 40) sleepDurationGoal];
  }

  *a2 = v7;
  *(a2 + 8) = v6 <= 0.0;
  return result;
}

id SleepOnboardingUserInfo.sleepDurationGoal.setter(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = *&a1;
  }

  swift_beginAccess();
  return [*(v2 + 40) setSleepDurationGoal_];
}

void (*SleepOnboardingUserInfo.sleepDurationGoal.modify(uint64_t *a1))(uint64_t a1)
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
  [*(v1 + 40) sleepDurationGoal];
  v6 = v5;
  v7 = 0;
  if (v6 > 0.0)
  {
    [*(v1 + 40) sleepDurationGoal];
  }

  *(v4 + 24) = v7;
  *(v4 + 32) = v6 <= 0.0;
  return sub_269CA459C;
}

void sub_269CA459C(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 24);
  if (*(*a1 + 32))
  {
    v2 = 0.0;
  }

  [*(*(*a1 + 40) + 40) setSleepDurationGoal_];

  free(v1);
}

void (*SleepOnboardingUserInfo.windDownDuration.modify(uint64_t *a1))(uint64_t a1)
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
  *(v3 + 32) = v1;
  swift_beginAccess();
  [*(v1 + 40) windDownTime];
  *(v4 + 24) = v5;
  return sub_269CA4690;
}

void sub_269CA4690(uint64_t a1)
{
  v1 = *a1;
  [*(*(*a1 + 32) + 40) setWindDownTime_];

  free(v1);
}

id SleepOnboardingUserInfo.isWindDownEnabled.setter(char a1)
{
  if (a1)
  {
    swift_beginAccess();
    result = [*(v1 + 40) windDownTime];
    if (v3 == 0.0)
    {
      return [*(v1 + 40) setWindDownTime_];
    }
  }

  else
  {
    swift_beginAccess();
    return [*(v1 + 40) setWindDownTime_];
  }

  return result;
}

void (*SleepOnboardingUserInfo.isWindDownEnabled.modify(uint64_t *a1))(uint64_t a1)
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
  *(v3 + 24) = v1;
  swift_beginAccess();
  [*(v1 + 40) windDownTime];
  *(v4 + 32) = v5 > 0.0;
  return sub_269CA4818;
}

void sub_269CA4818(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 32);
  v3 = *(*(*a1 + 24) + 40);
  v4 = 0.0;
  if (v2)
  {
    [v3 windDownTime];
    if (v5 != 0.0)
    {
      goto LABEL_5;
    }

    v3 = *(v1[3] + 40);
    v4 = *MEMORY[0x277D623C8] * 60.0;
  }

  [v3 setWindDownTime_];
LABEL_5:

  free(v1);
}

void SleepOnboardingUserInfo.isSleepModeEnabled.setter(char a1)
{
  swift_beginAccess();
  if (a1)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  [*(v1 + 48) setScheduledSleepMode_];
  v4 = *(v1 + 48);
  [v4 setSleepModeOptions_];
}

void (*SleepOnboardingUserInfo.isSleepModeEnabled.modify(uint64_t *a1))(uint64_t a1)
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
  *(v3 + 24) = v1;
  swift_beginAccess();
  *(v4 + 32) = [*(v1 + 48) scheduledSleepMode];
  return sub_269CA49CC;
}

void sub_269CA49CC(uint64_t a1)
{
  v1 = *a1;
  SleepOnboardingUserInfo.isSleepModeEnabled.setter(*(*a1 + 32));

  free(v1);
}

uint64_t SleepOnboardingUserInfo.hasWatch.getter()
{
  v1 = v0[14];
  v2 = v0[15];
  __swift_project_boxed_opaque_existential_1Tm(v0 + 11, v1);
  return (*(v2 + 80))(v1, v2) & 1;
}

uint64_t SleepOnboardingUserInfo.watchSupportsSleepTracking.getter()
{
  v1 = v0[14];
  v2 = v0[15];
  __swift_project_boxed_opaque_existential_1Tm(v0 + 11, v1);
  return (*(v2 + 96))(v1, v2) & 1;
}

uint64_t SleepOnboardingUserInfo.watchSupportsSleepStages.getter()
{
  v1 = v0[14];
  v2 = v0[15];
  __swift_project_boxed_opaque_existential_1Tm(v0 + 11, v1);
  return (*(v2 + 112))(v1, v2) & 1;
}

uint64_t SleepOnboardingUserInfo.watchSupportsRespiratoryRate.getter()
{
  v1 = v0[14];
  v2 = v0[15];
  __swift_project_boxed_opaque_existential_1Tm(v0 + 11, v1);
  return (*(v2 + 120))(v1, v2) & 1;
}

uint64_t SleepOnboardingUserInfo.watchSupportsWristTemperature.getter()
{
  v1 = v0[14];
  v2 = v0[15];
  __swift_project_boxed_opaque_existential_1Tm(v0 + 11, v1);
  return (*(v2 + 128))(v1, v2) & 1;
}

uint64_t SleepOnboardingUserInfo.watchSupportsHealthStatus.getter()
{
  v1 = v0[14];
  v2 = v0[15];
  __swift_project_boxed_opaque_existential_1Tm(v0 + 11, v1);
  return (*(v2 + 136))(v1, v2) & 1;
}

uint64_t sub_269CA4C1C()
{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 120);
  __swift_project_boxed_opaque_existential_1Tm((*v0 + 88), v1);
  return (*(v2 + 80))(v1, v2) & 1;
}

uint64_t sub_269CA4C78()
{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 120);
  __swift_project_boxed_opaque_existential_1Tm((*v0 + 88), v1);
  return (*(v2 + 96))(v1, v2) & 1;
}

uint64_t sub_269CA4CD4()
{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 120);
  __swift_project_boxed_opaque_existential_1Tm((*v0 + 88), v1);
  return (*(v2 + 112))(v1, v2) & 1;
}

uint64_t sub_269CA4D30()
{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 120);
  __swift_project_boxed_opaque_existential_1Tm((*v0 + 88), v1);
  return (*(v2 + 120))(v1, v2) & 1;
}

uint64_t sub_269CA4D8C()
{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 120);
  __swift_project_boxed_opaque_existential_1Tm((*v0 + 88), v1);
  return (*(v2 + 128))(v1, v2) & 1;
}

uint64_t sub_269CA4DE8()
{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 120);
  __swift_project_boxed_opaque_existential_1Tm((*v0 + 88), v1);
  return (*(v2 + 136))(v1, v2) & 1;
}

uint64_t sub_269CA4E44(void *a1, uint64_t *a2, void *a3, char *a4, void *a5)
{
  v6 = v5;
  v10 = *a2;
  v11 = *(a2 + 8);
  v12 = a2[2];
  v13 = *a4;
  *(v6 + 56) = 0;
  *(v6 + 64) = 1;
  v14 = [objc_allocWithZone(MEMORY[0x277CCD0A0]) init];
  *(v6 + 128) = 0;
  *(v6 + 72) = v14;
  *(v6 + 16) = v10;
  *(v6 + 24) = v11;
  *(v6 + 32) = v12;
  sub_269C2DB5C(a1, v6 + 88);
  if (a3)
  {
    v15 = a3;
  }

  else
  {
    v15 = [objc_allocWithZone(MEMORY[0x277D624F8]) init];
  }

  v16 = a3;
  [v15 mutableCopy];

  sub_269D9AED0();
  swift_unknownObjectRelease();
  sub_269C1B0B8(0, &qword_28034E978, 0x277D62488);
  swift_dynamicCast();
  *(v6 + 40) = v40;
  v17 = (v6 + 40);
  if (a5)
  {
    v18 = a5;
  }

  else
  {
    v18 = [objc_allocWithZone(MEMORY[0x277D62520]) init];
  }

  v19 = a5;
  [v18 mutableCopy];

  sub_269D9AED0();
  swift_unknownObjectRelease();
  sub_269C1B0B8(0, &qword_28034F2C0, 0x277D62498);
  swift_dynamicCast();
  *(v6 + 48) = v40;
  v39 = v19;
  if (!a3)
  {
    v28 = 0;
    goto LABEL_30;
  }

  v20 = [v16 occurrences];
  sub_269C1B0B8(0, &qword_28034E050, 0x277D62508);
  v21 = sub_269D9A7E0();

  v37 = a1;
  v38 = v6;
  v36 = v13;
  v35 = (v6 + 40);
  if (v21 >> 62)
  {
LABEL_27:
    v22 = sub_269D9AF50();
    if (v22)
    {
LABEL_10:
      v23 = 0;
      while (1)
      {
        if ((v21 & 0xC000000000000001) != 0)
        {
          v24 = MEMORY[0x26D651260](v23, v21);
        }

        else
        {
          if (v23 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_26;
          }

          v24 = *(v21 + 8 * v23 + 32);
        }

        v25 = v24;
        v26 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          __break(1u);
LABEL_26:
          __break(1u);
          goto LABEL_27;
        }

        sub_269D9A8E0();
        sub_269D9A8D0();
        sub_269D9A880();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        v27 = [v25 isRepeating];

        if (v27)
        {
          break;
        }

        ++v23;
        if (v26 == v22)
        {
          goto LABEL_28;
        }
      }

      [v25 mutableCopy];

      sub_269D9AED0();
      swift_unknownObjectRelease();
      sub_269C1B0B8(0, &qword_28034DC30, 0x277D62490);
      if (swift_dynamicCast())
      {
        v28 = v40;
      }

      else
      {
        v28 = 0;
      }

      goto LABEL_29;
    }
  }

  else
  {
    v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v22)
    {
      goto LABEL_10;
    }
  }

LABEL_28:

  v28 = 0;
LABEL_29:
  a1 = v37;
  v6 = v38;
  v13 = v36;
  v17 = v35;
LABEL_30:
  swift_beginAccess();
  v29 = *(v6 + 56);
  *(v6 + 56) = v28;

  *(v6 + 80) = v13;
  v30 = a1[3];
  v31 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v30);
  v32 = (*(v31 + 144))(v30, v31);
  swift_beginAccess();
  *(v6 + 128) = v32 & 1;
  if ((*(v6 + 24) & 1) == 0)
  {
    v33 = *MEMORY[0x277D623C8] * 60.0;
    swift_beginAccess();
    [*v17 setWindDownTime_];
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v6;
}

unint64_t sub_269CA5308(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28034F388;
  if (!qword_28034F388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034F388);
  }

  return result;
}

id sub_269CA5698(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v64 = a8;
  v67 = a6;
  v66 = a5;
  v65 = a1;
  v12 = sub_269D97870();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280C0B720 != -1)
  {
    swift_once();
  }

  v17 = sub_269D98250();
  v18 = __swift_project_value_buffer(v17, qword_280C0B728);
  (*(v13 + 16))(v16, a2, v12);

  v19 = sub_269D98230();
  v20 = sub_269D9AB80();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v61 = a7;
    v22 = v21;
    v23 = swift_slowAlloc();
    v62 = v18;
    v24 = v23;
    *&aBlock = v23;
    *v22 = 136446722;
    v25 = sub_269D9B4D0();
    v27 = sub_269C2EACC(v25, v26, &aBlock);
    v63 = a3;
    v28 = v27;

    *(v22 + 4) = v28;
    *(v22 + 12) = 2080;
    sub_269CA6638(v29, v30);
    v31 = sub_269D9B230();
    v33 = v32;
    (*(v13 + 8))(v16, v12);
    v34 = sub_269C2EACC(v31, v33, &aBlock);
    a3 = v63;

    *(v22 + 14) = v34;
    *(v22 + 22) = 2080;
    *(v22 + 24) = sub_269C2EACC(a3, a4, &aBlock);
    _os_log_impl(&dword_269C18000, v19, v20, "[%{public}s] Cell provider called for indexPath %s itemIdentifier %s", v22, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x26D652460](v24, -1, -1);
    v35 = v22;
    a7 = v61;
    MEMORY[0x26D652460](v35, -1, -1);
  }

  else
  {

    (*(v13 + 8))(v16, v12);
  }

  swift_getObjectType();
  sub_269D97FE0();
  if (!v70)
  {
    sub_269C8492C(&aBlock, &qword_28034F390, &qword_280350880, MEMORY[0x277D10D40]);

    v40 = sub_269D98230();
    v41 = sub_269D9AB80();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *&aBlock = v43;
      *v42 = 136446210;
      *(v42 + 4) = sub_269C2EACC(a3, a4, &aBlock);
      _os_log_impl(&dword_269C18000, v40, v41, "The CellProvider block called us back with an item that no longer exists. Item Identifier: %{public}s", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v43);
      MEMORY[0x26D652460](v43, -1, -1);
      MEMORY[0x26D652460](v42, -1, -1);
    }

    return [objc_allocWithZone(MEMORY[0x277D75B48]) init];
  }

  v36 = a3;
  sub_269C25520(&aBlock, v76);
  sub_269C2DB5C(v76, &aBlock);
  sub_269C3232C(0, &qword_280350880, MEMORY[0x277D10D40]);
  sub_269C3232C(0, &qword_28034E550, MEMORY[0x277D10D48]);
  if (swift_dynamicCast())
  {
    sub_269C25520(v73, v75);
    __swift_project_boxed_opaque_existential_1Tm(v75, v75[3]);
    sub_269D97F30();
    v37 = sub_269D9A5F0();

    v38 = [v65 dequeueReusableCellWithIdentifier_];

    if (v38)
    {
      swift_getObjectType();
      if (swift_conformsToProtocol2())
      {
        sub_269C2DB5C(v75, &aBlock);
        v39 = v38;
        sub_269D98000();
      }

      if (a7)
      {
        [v38 setBackgroundColor_];
      }

      else
      {
        if ([v65 style] == 2)
        {
          v44 = objc_allocWithZone(MEMORY[0x277D75348]);
          v71 = sub_269CC7C58;
          v72 = 0;
          *&aBlock = MEMORY[0x277D85DD0];
          *(&aBlock + 1) = 1107296256;
          v69 = sub_269CC7F6C;
          v70 = &block_descriptor_13;
          v45 = _Block_copy(&aBlock);
          v46 = v38;
          v47 = [v44 initWithDynamicProvider_];
          _Block_release(v45);

          [v46 setBackgroundColor_];
        }

        else
        {
          v48 = objc_opt_self();
          v49 = v38;
          v47 = [v48 systemBackgroundColor];
          [v49 setBackgroundColor_];
        }
      }
    }

    else if (!a7)
    {
      [v65 style];
    }

    v50 = sub_269D98230();
    v51 = sub_269D9AB80();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      *&aBlock = v53;
      *v52 = 136446466;
      v54 = sub_269D9B4D0();
      v56 = sub_269C2EACC(v54, v55, &aBlock);

      *(v52 + 4) = v56;
      *(v52 + 12) = 2080;
      *(v52 + 14) = sub_269C2EACC(v36, a4, &aBlock);
      _os_log_impl(&dword_269C18000, v50, v51, "[%{public}s] Returning cell for item %s", v52, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D652460](v53, -1, -1);
      MEMORY[0x26D652460](v52, -1, -1);
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v75);
    __swift_destroy_boxed_opaque_existential_1Tm(v76);
    return v38;
  }

  v74 = 0;
  memset(v73, 0, sizeof(v73));
  sub_269C8492C(v73, &qword_28034E548, &qword_28034E550, MEMORY[0x277D10D48]);
  *&aBlock = 0;
  *(&aBlock + 1) = 0xE000000000000000;
  sub_269D9B000();
  MEMORY[0x26D650930](91, 0xE100000000000000);
  v58 = sub_269D9B4D0();
  MEMORY[0x26D650930](v58);

  MEMORY[0x26D650930](46, 0xE100000000000000);
  MEMORY[0x26D650930](0xD000000000000047, 0x8000000269DAFB90);
  MEMORY[0x26D650930](2112093, 0xE300000000000000);
  __swift_project_boxed_opaque_existential_1Tm(v76, v76[3]);
  v59 = sub_269D97F20();
  MEMORY[0x26D650930](v59);

  MEMORY[0x26D650930](0xD0000000000000AELL, 0x8000000269DAFBE0);
  result = sub_269D9B100();
  __break(1u);
  return result;
}

uint64_t sub_269CA5FCC()
{
  v1 = v0;
  v2 = *v0;
  sub_269CA6690();
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + 49) = 1;
  if (qword_280C0B720 != -1)
  {
    swift_once();
  }

  v9 = sub_269D98250();
  __swift_project_value_buffer(v9, qword_280C0B728);
  v10 = sub_269D98230();
  v11 = sub_269D9AB80();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v20 = v13;
    *v12 = 136446210;
    v14 = sub_269D9B4D0();
    v19 = v8;
    v16 = sub_269C2EACC(v14, v15, &v20);
    v8 = v19;

    *(v12 + 4) = v16;
    _os_log_impl(&dword_269C18000, v10, v11, "[%{public}s] Applying diffable snapshot", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x26D652460](v13, -1, -1);
    MEMORY[0x26D652460](v12, -1, -1);
  }

  *(v1 + 50) = *(v1 + 48);
  swift_getObjectType();
  sub_269D97FF0();
  v17 = swift_allocObject();
  *(v17 + 16) = v1;
  *(v17 + 24) = v2;

  sub_269D983A0();

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_269CA627C(uint64_t a1, uint64_t a2)
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_280C0B720 != -1)
  {
    swift_once();
  }

  v3 = sub_269D98250();
  __swift_project_value_buffer(v3, qword_280C0B728);
  v4 = sub_269D98230();
  v5 = sub_269D9AB80();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136446210;
    v8 = sub_269D9B4D0();
    v10 = sub_269C2EACC(v8, v9, &v12);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_269C18000, v4, v5, "[%{public}s] Finished applying snapshot", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x26D652460](v7, -1, -1);
    MEMORY[0x26D652460](v6, -1, -1);
  }

  *(a1 + 50) = 0;
}

uint64_t sub_269CA6444()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

double block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t sub_269CA6638(uint64_t a1, uint64_t a2)
{
  result = qword_28034F398;
  if (!qword_28034F398)
  {
    sub_269D97870();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034F398);
  }

  return result;
}

void sub_269CA6690()
{
  if (!qword_28034EF20)
  {
    v0 = sub_269D98360();
    if (!v1)
    {
      atomic_store(v0, &qword_28034EF20);
    }
  }
}

uint64_t sub_269CA6718(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void *SleepOnboardingManager.__allocating_init(sleepStore:healthStore:)(void *a1, void *a2)
{
  v4 = sub_269CAB574(a1, a2);

  return v4;
}

void *SleepOnboardingManager.__allocating_init(sleepStore:healthStore:healthStatusFeatureProvider:sleepHealthNotificationSettingsProvider:)(void *a1, void *a2, void *a3, void *a4)
{
  v9 = a3[3];
  v10 = a3[4];
  v11 = __swift_mutable_project_boxed_opaque_existential_1(a3, v9);
  v12 = a4[3];
  v13 = a4[4];
  v14 = __swift_mutable_project_boxed_opaque_existential_1(a4, v12);
  v15 = sub_269CAB98C(a1, a2, v11, v14, v4, v9, v12, v10, v13);

  __swift_destroy_boxed_opaque_existential_1Tm(a4);
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  return v15;
}

void *SleepOnboardingManager.init(sleepStore:healthStore:healthStatusFeatureProvider:sleepHealthNotificationSettingsProvider:)(void *a1, void *a2, void *a3, void *a4)
{
  v9 = a3[3];
  v8 = a3[4];
  v10 = __swift_mutable_project_boxed_opaque_existential_1(a3, v9);
  v11 = MEMORY[0x28223BE20](v10, v10);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13, v11);
  v16 = a4[3];
  v15 = a4[4];
  v17 = __swift_mutable_project_boxed_opaque_existential_1(a4, v16);
  v18 = MEMORY[0x28223BE20](v17, v17);
  v20 = v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20, v18);
  v22 = sub_269CAB6AC(a1, a2, v13, v20, v24[1], v9, v16, v8, v15);

  __swift_destroy_boxed_opaque_existential_1Tm(a4);
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  return v22;
}

id sub_269CA6AB4()
{
  sub_269D9A630();
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_269D9A5F0();

  v2 = [v0 initWithSuiteName_];

  if (!v2)
  {
    return 0;
  }

  v3 = [v2 BOOLForKey_];

  return v3;
}

uint64_t sub_269CA6B68()
{
  v44[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 56);
  v44[0] = 0;
  v2 = [v1 isFeatureCapabilitySupportedOnActivePairedDeviceWithError_];
  v3 = v44[0];
  if (!v2 || (v4 = v2, v5 = v44[0], v6 = [v4 BOOLValue], v4, v44[0] = 0, v7 = objc_msgSend(v1, sel_isCurrentOnboardingVersionCompletedWithError_, v44), v3 = v44[0], !v7))
  {
    v15 = v3;
    v16 = sub_269D97360();

    swift_willThrow();
    if (qword_280C0B720 != -1)
    {
      swift_once();
    }

    v17 = sub_269D98250();
    __swift_project_value_buffer(v17, qword_280C0B728);
    v18 = v16;
    v19 = sub_269D98230();
    v20 = sub_269D9AB60();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v44[0] = v22;
      *v21 = 136446466;
      v23 = sub_269D9B4D0();
      v25 = sub_269C2EACC(v23, v24, v44);

      *(v21 + 4) = v25;
      *(v21 + 12) = 2082;
      ErrorValue = swift_getErrorValue();
      v27 = MEMORY[0x28223BE20](ErrorValue, v43[1]);
      (*(v29 + 16))(v43 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0), v27);
      v30 = sub_269D9A660();
      v32 = sub_269C2EACC(v30, v31, v44);

      *(v21 + 14) = v32;
      _os_log_impl(&dword_269C18000, v19, v20, "[%{public}s] Error sleep tracking capability: %{public}s", v21, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D652460](v22, -1, -1);
      MEMORY[0x26D652460](v21, -1, -1);
    }

    else
    {
    }

    goto LABEL_17;
  }

  v8 = v7;
  v9 = v44[0];
  v10 = [v8 BOOLValue];

  sub_269D9A630();
  v11 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v12 = sub_269D9A5F0();

  v13 = [v11 initWithSuiteName_];

  if (v13)
  {
    v14 = [v13 BOOLForKey_];
  }

  else
  {
    v14 = 0;
  }

  if (qword_280C0B720 != -1)
  {
    swift_once();
  }

  v33 = sub_269D98250();
  __swift_project_value_buffer(v33, qword_280C0B728);
  v34 = sub_269D98230();
  v35 = sub_269D9AB80();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v44[0] = v37;
    *v36 = 136446978;
    v38 = sub_269D9B4D0();
    v40 = sub_269C2EACC(v38, v39, v44);

    *(v36 + 4) = v40;
    *(v36 + 12) = 1026;
    *(v36 + 14) = v6;
    *(v36 + 18) = 1026;
    *(v36 + 20) = v10;
    *(v36 + 24) = 1026;
    *(v36 + 26) = v14;
    _os_log_impl(&dword_269C18000, v34, v35, "[%{public}s] Watch onboarding check: isSupported:%{BOOL,public}d hasOnboarded:%{BOOL,public}d isWatchAgeGated:%{BOOL,public}d", v36, 0x1Eu);
    __swift_destroy_boxed_opaque_existential_1Tm(v37);
    MEMORY[0x26D652460](v37, -1, -1);
    MEMORY[0x26D652460](v36, -1, -1);
  }

  if (!v6)
  {
LABEL_17:
    v41 = 0;
    return v41 & 1;
  }

  v41 = (v10 | v14) ^ 1;
  return v41 & 1;
}

id sub_269CA709C()
{
  v26[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 48);
  v26[0] = 0;
  v2 = [v1 isFeatureCapabilitySupportedOnActivePairedDeviceWithError_];
  if (v2)
  {
    v3 = v2;
    v4 = v26[0];
    v5 = [v3 BOOLValue];
  }

  else
  {
    v6 = v26[0];
    v7 = sub_269D97360();

    swift_willThrow();
    if (qword_280C0B720 != -1)
    {
      swift_once();
    }

    v8 = sub_269D98250();
    __swift_project_value_buffer(v8, qword_280C0B728);
    v9 = v7;
    v10 = sub_269D98230();
    v11 = sub_269D9AB60();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v26[0] = v13;
      *v12 = 136446466;
      v14 = sub_269D9B4D0();
      v16 = sub_269C2EACC(v14, v15, v26);

      *(v12 + 4) = v16;
      *(v12 + 12) = 2082;
      ErrorValue = swift_getErrorValue();
      v18 = MEMORY[0x28223BE20](ErrorValue, v25[1]);
      (*(v20 + 16))(v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), v18);
      v21 = sub_269D9A660();
      v23 = sub_269C2EACC(v21, v22, v26);

      *(v12 + 14) = v23;
      _os_log_impl(&dword_269C18000, v10, v11, "[%{public}s] Unable to fetch sleep coaching state with error %{public}s", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D652460](v13, -1, -1);
      MEMORY[0x26D652460](v12, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  return v5;
}

id sub_269CA73C4(SEL *a1)
{
  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v3 = result;
    v4 = [result *a1];

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_269CA7424()
{
  v1 = sub_269D981D0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1Tm((v0 + 152), *(v0 + 176));
  sub_269D981F0();
  v6 = sub_269D981E0();
  (*(v2 + 8))(v5, v1);
  v7 = [v6 areAllRequirementsSatisfied];

  return v7;
}

id sub_269CA7798()
{
  v1 = sub_269D981D0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1Tm((v0 + 192), *(v0 + 216));
  sub_269D981F0();
  v6 = sub_269D981E0();
  (*(v2 + 8))(v5, v1);
  v7 = [v6 areAllRequirementsSatisfied];

  return v7;
}

uint64_t sub_269CA7B0C()
{
  swift_beginAccess();
  sub_269C2DB5C(v0 + 272, v4);
  v1 = v5;
  v2 = v6;
  __swift_project_boxed_opaque_existential_1Tm(v4, v5);
  LOBYTE(v1) = (*(v2 + 8))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1Tm(v4);
  return v1 & 1;
}

uint64_t sub_269CA7B98@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  sub_269C2DB5C(v3 + 272, v7);
  v4 = v8;
  v5 = v9;
  __swift_project_boxed_opaque_existential_1Tm(v7, v8);
  LOBYTE(v3) = (*(v5 + 24))(v4, v5);
  result = __swift_destroy_boxed_opaque_existential_1Tm(v7);
  *a2 = v3 & 1;
  return result;
}

uint64_t sub_269CA7C30()
{
  swift_beginAccess();
  sub_269C2DB5C(v0 + 272, v4);
  v1 = v5;
  v2 = v6;
  __swift_project_boxed_opaque_existential_1Tm(v4, v5);
  LOBYTE(v1) = (*(v2 + 24))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1Tm(v4);
  return v1 & 1;
}

uint64_t sub_269CA7CBC(char a1)
{
  v2 = v1;
  if (qword_280C0B720 != -1)
  {
    swift_once();
  }

  v4 = sub_269D98250();
  __swift_project_value_buffer(v4, qword_280C0B728);
  v5 = sub_269D98230();
  v6 = sub_269D9AB80();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18[0] = v8;
    *v7 = 136446466;
    v9 = sub_269D9B4D0();
    v11 = sub_269C2EACC(v9, v10, v18);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2082;
    if (a1)
    {
      v12 = 1702195828;
    }

    else
    {
      v12 = 0x65736C6166;
    }

    if (a1)
    {
      v13 = 0xE400000000000000;
    }

    else
    {
      v13 = 0xE500000000000000;
    }

    v14 = sub_269C2EACC(v12, v13, v18);

    *(v7 + 14) = v14;
    _os_log_impl(&dword_269C18000, v5, v6, "[%{public}s] Updating health status features enabled: %{public}s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D652460](v8, -1, -1);
    MEMORY[0x26D652460](v7, -1, -1);
  }

  swift_beginAccess();
  v15 = *(v2 + 296);
  v16 = *(v2 + 304);
  __swift_mutable_project_boxed_opaque_existential_1(v2 + 272, v15);
  (*(v16 + 32))(a1 & 1, v15, v16);
  return swift_endAccess();
}

void (*sub_269CA7EE4(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 64) = v1;
  swift_beginAccess();
  sub_269C2DB5C(v1 + 272, v4);
  v5 = *(v4 + 24);
  v6 = *(v4 + 32);
  __swift_project_boxed_opaque_existential_1Tm(v4, v5);
  v7 = (*(v6 + 24))(v5, v6);
  __swift_destroy_boxed_opaque_existential_1Tm(v4);
  *(v4 + 72) = v7 & 1;
  return sub_269CA7FC0;
}

void sub_269CA7FC0(uint64_t a1)
{
  v1 = *a1;
  sub_269CA7CBC(*(*a1 + 72));

  free(v1);
}

void sub_269CA8048(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if (qword_280C0B720 != -1)
  {
    swift_once();
  }

  v7 = sub_269D98250();
  __swift_project_value_buffer(v7, qword_280C0B728);
  v8 = sub_269D98230();
  v9 = sub_269D9AB80();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v20[0] = v11;
    *v10 = 136446210;
    v12 = sub_269D9B4D0();
    v14 = sub_269C2EACC(v12, v13, v20);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_269C18000, v8, v9, "[%{public}s] Fetching suggested sleep schedule", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x26D652460](v11, -1, -1);
    MEMORY[0x26D652460](v10, -1, -1);
  }

  sub_269C4E764();
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_269DA13E0;
  *(v15 + 32) = [objc_allocWithZone(type metadata accessor for ProactiveSuggestionProvider()) init];
  *(v15 + 40) = HKSPDefaultScheduleProvider();
  v16 = v3[8];
  sub_269CABB38();
  v17 = sub_269D9A7D0();

  v18 = swift_allocObject();
  v18[2] = a1;
  v18[3] = a2;
  v18[4] = v6;
  v20[4] = sub_269CABB9C;
  v20[5] = v18;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 1107296256;
  v20[2] = sub_269CA87D4;
  v20[3] = &block_descriptor_14;
  v19 = _Block_copy(v20);

  [v16 suggestedSleepScheduleWithProviders:v17 completion:v19];
  _Block_release(v19);
}

uint64_t sub_269CA82FC(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_269CAC2E4(0, &unk_280351880, MEMORY[0x277D85720]);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v39 - v13;
  if (a3)
  {
    v15 = a3;
    if (qword_280C0B720 != -1)
    {
      swift_once();
    }

    v16 = sub_269D98250();
    __swift_project_value_buffer(v16, qword_280C0B728);
    v17 = a3;
    v18 = sub_269D98230();
    v19 = sub_269D9AB60();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v43 = v39;
      *v20 = 136446466;
      v21 = sub_269D9B4D0();
      v23 = sub_269C2EACC(v21, v22, &v43);
      v41 = a4;
      v24 = v23;

      *(v20 + 4) = v24;
      *(v20 + 12) = 2082;
      ErrorValue = swift_getErrorValue();
      v40 = a1;
      v26 = MEMORY[0x28223BE20](ErrorValue, v42);
      (*(v28 + 16))(&v39 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0), v26);
      v29 = sub_269D9A660();
      a1 = v40;
      v31 = sub_269C2EACC(v29, v30, &v43);
      a4 = v41;

      *(v20 + 14) = v31;
      _os_log_impl(&dword_269C18000, v18, v19, "[%{public}s] Unable to retrieve schedule with error %{public}s)", v20, 0x16u);
      v32 = v39;
      swift_arrayDestroy();
      MEMORY[0x26D652460](v32, -1, -1);
      MEMORY[0x26D652460](v20, -1, -1);
    }

    else
    {
    }
  }

  v33 = sub_269D9A900();
  (*(*(v33 - 8) + 56))(v14, 1, 1, v33);
  sub_269D9A8E0();
  swift_unknownObjectRetain();

  v34 = a1;
  v35 = sub_269D9A8D0();
  v36 = swift_allocObject();
  v37 = MEMORY[0x277D85700];
  v36[2] = v35;
  v36[3] = v37;
  v36[4] = a4;
  v36[5] = a5;
  v36[6] = a1;
  v36[7] = a2;
  sub_269C79F94(0, 0, v14, &unk_269DA3CE8, v36);
}

uint64_t sub_269CA86B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  sub_269D9A8E0();
  v7[6] = sub_269D9A8D0();
  v9 = sub_269D9A880();

  return MEMORY[0x2822009F8](sub_269CA8754, v9, v8);
}

uint64_t sub_269CA8754()
{
  v1 = v0[5];
  v2 = v0[4];
  v3 = v0[2];

  v3(v2, v1);
  v4 = v0[1];

  return v4();
}

void sub_269CA87D4(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 32);

  v9 = a2;
  swift_unknownObjectRetain();
  v8 = a4;
  v7(a2, a3, a4);

  swift_unknownObjectRelease();
}

id sub_269CA8878(void *a1)
{
  v2 = v1;
  v61[1] = *MEMORY[0x277D85DE8];
  v4 = sub_269D9A630();
  v6 = v5;
  if (v4 == sub_269D9A630() && v6 == v7)
  {
  }

  else
  {
    v9 = sub_269D9B280();

    if ((v9 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  v10 = *(v2 + 24);
  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v12 = result;
    v13 = [result hksp_supportsSleep];

    if (!v13 || (v14 = [v10 profileIdentifier], v15 = objc_msgSend(v14, sel_type), v14, v15 == 3))
    {
      if (qword_280C0B720 != -1)
      {
        swift_once();
      }

      v16 = sub_269D98250();
      __swift_project_value_buffer(v16, qword_280C0B728);
      v17 = sub_269D98230();
      v18 = sub_269D9AB60();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v61[0] = v20;
        *v19 = 136446210;
        v21 = sub_269D9B4D0();
        v23 = sub_269C2EACC(v21, v22, v61);

        *(v19 + 4) = v23;
        _os_log_impl(&dword_269C18000, v17, v18, "[%{public}s] Sleep coaching not supported", v19, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v20);
        MEMORY[0x26D652460](v20, -1, -1);
        MEMORY[0x26D652460](v19, -1, -1);
      }

      goto LABEL_23;
    }

LABEL_15:
    if (qword_280C0B720 != -1)
    {
      swift_once();
    }

    v24 = sub_269D98250();
    __swift_project_value_buffer(v24, qword_280C0B728);
    v25 = a1;
    v26 = sub_269D98230();
    v27 = sub_269D9AB80();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v61[0] = v29;
      *v28 = 136446466;
      v30 = sub_269D9B4D0();
      v32 = sub_269C2EACC(v30, v31, v61);

      *(v28 + 4) = v32;
      *(v28 + 12) = 2082;
      v33 = sub_269D9ACC0();
      v35 = sub_269C2EACC(v33, v34, v61);

      *(v28 + 14) = v35;
      _os_log_impl(&dword_269C18000, v26, v27, "[%{public}s] Fetching onboarded state for feature with identifier %{public}s", v28, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D652460](v29, -1, -1);
      MEMORY[0x26D652460](v28, -1, -1);
    }

    sub_269CABBC0(v25);
    v61[0] = 0;
    v36 = [swift_unknownObjectRetain() isCurrentOnboardingVersionCompletedWithError_];
    if (v36)
    {
      v37 = v36;
      v38 = v61[0];
      v39 = [v37 BOOLValue];

      swift_unknownObjectRelease();
      return v39;
    }

    v40 = v61[0];
    v41 = sub_269D97360();

    swift_willThrow();
    v42 = v25;
    v43 = v41;
    v17 = sub_269D98230();
    v44 = sub_269D9AB60();

    if (!os_log_type_enabled(v17, v44))
    {
      swift_unknownObjectRelease();

      return 0;
    }

    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v61[0] = v46;
    *v45 = 136446722;
    v47 = sub_269D9B4D0();
    v49 = sub_269C2EACC(v47, v48, v61);

    *(v45 + 4) = v49;
    *(v45 + 12) = 2082;
    v50 = sub_269D9ACC0();
    v52 = sub_269C2EACC(v50, v51, v61);

    *(v45 + 14) = v52;
    *(v45 + 22) = 2082;
    ErrorValue = swift_getErrorValue();
    v54 = MEMORY[0x28223BE20](ErrorValue, v60[1]);
    (*(v56 + 16))(v60 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0), v54);
    v57 = sub_269D9A660();
    v59 = sub_269C2EACC(v57, v58, v61);

    *(v45 + 24) = v59;
    _os_log_impl(&dword_269C18000, v17, v44, "[%{public}s] Error reading onboarding completion for feature identifier %{public}s: %{public}s", v45, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x26D652460](v46, -1, -1);
    MEMORY[0x26D652460](v45, -1, -1);

    swift_unknownObjectRelease();
LABEL_23:

    return 0;
  }

  __break(1u);
  return result;
}

void sub_269CA8F20(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  if (qword_280C0B720 != -1)
  {
    swift_once();
  }

  v5 = sub_269D98250();
  __swift_project_value_buffer(v5, qword_280C0B728);
  v6 = sub_269D98230();
  v7 = sub_269D9AB80();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    aBlock[0] = v9;
    *v8 = 136446210;
    v10 = sub_269D9B4D0();
    v12 = sub_269C2EACC(v10, v11, aBlock);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_269C18000, v6, v7, "[%{public}s] Onboarding did complete for sleep", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x26D652460](v9, -1, -1);
    MEMORY[0x26D652460](v8, -1, -1);
  }

  sub_269CA4208();
  if (*(a1 + 24))
  {
    swift_beginAccess();
    if ([*(a1 + 48) sleepTracking])
    {
      v13 = *(a1 + 48);
      v14 = sub_269D98230();
      v15 = sub_269D9AB80();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        aBlock[0] = v17;
        *v16 = 136446210;
        v18 = sub_269D9B4D0();
        v20 = sub_269C2EACC(v18, v19, aBlock);

        *(v16 + 4) = v20;
        _os_log_impl(&dword_269C18000, v14, v15, "[%{public}s] Saving sleep settings", v16, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v17);
        MEMORY[0x26D652460](v17, -1, -1);
        MEMORY[0x26D652460](v16, -1, -1);
      }

      v21 = v2[8];
      v22 = swift_allocObject();
      *(v22 + 16) = v4;
      aBlock[4] = sub_269CABD5C;
      aBlock[5] = v22;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_269C7A600;
      aBlock[3] = &block_descriptor_6_0;
      v23 = _Block_copy(aBlock);

      [v21 saveCurrentSleepSettings:v13 options:2 completion:v23];
      _Block_release(v23);

      sub_269CA92A8(a1);
    }
  }

  else
  {

    sub_269CA9908(a1);
  }
}

uint64_t sub_269CA92A8(uint64_t a1)
{
  sub_269CAA070(*MEMORY[0x277CCC0E8]);
  result = swift_beginAccess();
  if (*(a1 + 128) == 1)
  {
    if (qword_280C0B720 != -1)
    {
      swift_once();
    }

    v3 = sub_269D98250();
    __swift_project_value_buffer(v3, qword_280C0B728);
    v4 = sub_269D98230();
    v5 = sub_269D9AB80();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v11 = v7;
      *v6 = 136446210;
      v8 = sub_269D9B4D0();
      v10 = sub_269C2EACC(v8, v9, &v11);

      *(v6 + 4) = v10;
      _os_log_impl(&dword_269C18000, v4, v5, "[%{public}s] Enabling health status notifications", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v7);
      MEMORY[0x26D652460](v7, -1, -1);
      MEMORY[0x26D652460](v6, -1, -1);
    }

    return sub_269CA7CBC(1);
  }

  return result;
}

void sub_269CA9460()
{
  v1 = *v0;
  if (qword_280C0B720 != -1)
  {
    swift_once();
  }

  v2 = sub_269D98250();
  __swift_project_value_buffer(v2, qword_280C0B728);
  v3 = sub_269D98230();
  v4 = sub_269D9AB80();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14[0] = v6;
    *v5 = 136446210;
    v7 = sub_269D9B4D0();
    v9 = sub_269C2EACC(v7, v8, v14);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_269C18000, v3, v4, "[%{public}s] Sending tips discoverability signal", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x26D652460](v6, -1, -1);
    MEMORY[0x26D652460](v5, -1, -1);
  }

  v10 = swift_allocObject();
  *(v10 + 16) = v1;
  v14[4] = sub_269CABD88;
  v14[5] = v10;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = sub_269CA6718;
  v14[3] = &block_descriptor_12_1;
  v11 = _Block_copy(v14);
  v12 = [objc_opt_self() blockOperationWithBlock_];
  _Block_release(v11);

  sub_269C1B0B8(0, &unk_28034F410, 0x277CCABD8);
  v13 = sub_269D9ABE0();
  [v13 addOperation_];
}

void sub_269CA96C4(uint64_t a1)
{
  v1 = objc_allocWithZone(MEMORY[0x277D10DD8]);
  v2 = sub_269D9A5F0();
  v3 = [v1 initWithIdentifier_];

  [v3 donateSignal];
  if (qword_280C0B720 != -1)
  {
    swift_once();
  }

  v4 = sub_269D98250();
  __swift_project_value_buffer(v4, qword_280C0B728);
  v18 = v3;
  oslog = sub_269D98230();
  v5 = sub_269D9AB80();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v19 = v7;
    *v6 = 136446466;
    v8 = sub_269D9B4D0();
    v10 = sub_269C2EACC(v8, v9, &v19);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2082;
    v11 = [v18 identifier];
    v12 = sub_269D9A630();
    v14 = v13;

    v15 = sub_269C2EACC(v12, v14, &v19);

    *(v6 + 14) = v15;
    _os_log_impl(&dword_269C18000, oslog, v5, "[%{public}s] Tip with id %{public}s submitted successfully", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D652460](v7, -1, -1);
    MEMORY[0x26D652460](v6, -1, -1);

    v16 = v18;
  }

  else
  {

    v16 = oslog;
  }
}

void sub_269CA9908(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  sub_269CAC2E4(0, &unk_28034F420, MEMORY[0x277D62578]);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v58 = &v57 - v7;
  if (qword_280C0B720 != -1)
  {
    swift_once();
  }

  v8 = sub_269D98250();
  __swift_project_value_buffer(v8, qword_280C0B728);
  v9 = sub_269D98230();
  v10 = sub_269D9AB80();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    aBlock = v12;
    *v11 = 136446210;
    v13 = sub_269D9B4D0();
    v15 = sub_269C2EACC(v13, v14, &aBlock);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_269C18000, v9, v10, "[%{public}s] Saving has completed sleep coaching onboarding", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x26D652460](v12, -1, -1);
    MEMORY[0x26D652460](v11, -1, -1);
  }

  v60 = v2;
  sub_269CAA774();
  swift_beginAccess();
  v16 = *(a1 + 40);
  v59 = a1;
  v17 = *(a1 + 16);
  v18 = v16;
  v19 = v17;
  v20 = sub_269D98230();
  v21 = sub_269D9AB80();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    aBlock = v23;
    *v22 = 136446210;
    v24 = sub_269D9B4D0();
    v25 = v4;
    v27 = sub_269C2EACC(v24, v26, &aBlock);

    *(v22 + 4) = v27;
    _os_log_impl(&dword_269C18000, v20, v21, "[%{public}s] Saving sleep schedule", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    MEMORY[0x26D652460](v23, -1, -1);
    MEMORY[0x26D652460](v22, -1, -1);
  }

  else
  {

    v25 = v4;
  }

  v28 = HKSPAnalyticsScheduleChangeContext();
  sub_269D9A490();

  v29 = v60[8];
  v30 = sub_269D9A480();

  v31 = swift_allocObject();
  *(v31 + 16) = v25;
  v65 = sub_269CAC338;
  v66 = v31;
  aBlock = MEMORY[0x277D85DD0];
  v62 = 1107296256;
  v63 = sub_269C7A600;
  v64 = &block_descriptor_40;
  v32 = _Block_copy(&aBlock);

  [v29 saveCurrentSleepSchedule:v18 options:3 context:v30 completion:v32];
  _Block_release(v32);

  v33 = v59;
  swift_beginAccess();
  v34 = *(v33 + 48);
  v35 = sub_269D98230();
  v36 = sub_269D9AB80();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    aBlock = v38;
    *v37 = 136446210;
    v39 = sub_269D9B4D0();
    v41 = sub_269C2EACC(v39, v40, &aBlock);

    *(v37 + 4) = v41;
    _os_log_impl(&dword_269C18000, v35, v36, "[%{public}s] Saving sleep settings", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v38);
    MEMORY[0x26D652460](v38, -1, -1);
    MEMORY[0x26D652460](v37, -1, -1);
  }

  v42 = swift_allocObject();
  *(v42 + 16) = v25;
  v65 = sub_269CAC4C8;
  v66 = v42;
  aBlock = MEMORY[0x277D85DD0];
  v62 = 1107296256;
  v63 = sub_269C7A600;
  v64 = &block_descriptor_47;
  v43 = _Block_copy(&aBlock);

  [v29 saveCurrentSleepSettings:v34 options:2 completion:v43];
  _Block_release(v43);

  v44 = objc_opt_self();
  v45 = [v44 sharedBehavior];
  v46 = v60;
  if (!v45)
  {
    __break(1u);
    goto LABEL_23;
  }

  v47 = v45;
  v48 = [v45 features];

  if (!v48)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v49 = [v48 sleepResultsNotificationsOnWatch];

  if (v49)
  {
    sub_269C2DB5C((v46 + 29), &aBlock);
    __swift_project_boxed_opaque_existential_1Tm(&aBlock, v64);
    v50 = v58;
    sub_269D97A40();
    v51 = sub_269D97A80();
    (*(*(v51 - 8) + 56))(v50, 0, 1, v51);
    sub_269D97D90();
    sub_269CAC364(v50);
    __swift_destroy_boxed_opaque_existential_1Tm(&aBlock);
  }

  if ([*(v33 + 48) sleepTracking])
  {
    sub_269CA92A8(v33);
  }

  sub_269CAA070(*MEMORY[0x277CCC0E0]);
  v52 = [v44 sharedBehavior];
  if (!v52)
  {
    goto LABEL_24;
  }

  v53 = v52;
  v54 = [v52 features];

  if (!v54)
  {
LABEL_25:
    __break(1u);
    return;
  }

  v55 = [v54 sleepDetails];

  if (v55)
  {
    v56 = 341;
  }

  else
  {
    v56 = 63;
  }

  sub_269CAAD94(v56);
}

uint64_t sub_269CAA070(void *a1)
{
  v2 = v1;
  v4 = *v2;
  if (qword_280C0B720 != -1)
  {
    swift_once();
  }

  v5 = sub_269D98250();
  __swift_project_value_buffer(v5, qword_280C0B728);
  v6 = a1;
  v7 = sub_269D98230();
  v8 = sub_269D9AB80();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v22[0] = v10;
    *v9 = 136446466;
    v11 = sub_269D9B4D0();
    v13 = sub_269C2EACC(v11, v12, v22);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2082;
    v14 = sub_269D9ACC0();
    v16 = sub_269C2EACC(v14, v15, v22);

    *(v9 + 14) = v16;
    _os_log_impl(&dword_269C18000, v7, v8, "[%{public}s] Saving has onboarded feature with identifier %{public}s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D652460](v10, -1, -1);
    MEMORY[0x26D652460](v9, -1, -1);
  }

  v17 = sub_269CABBC0(v6);
  v18 = swift_allocObject();
  *(v18 + 16) = v6;
  *(v18 + 24) = v4;
  v22[4] = sub_269CAC2DC;
  v22[5] = v18;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 1107296256;
  v22[2] = sub_269C7A600;
  v22[3] = &block_descriptor_34;
  v19 = _Block_copy(v22);
  v20 = v6;
  swift_unknownObjectRetain();

  [v17 setCurrentOnboardingVersionCompletedForCountryCode:0 countryCodeProvenance:0 date:0 settings:0 completion:v19];
  _Block_release(v19);
  return swift_unknownObjectRelease();
}

void sub_269CAA318(int a1, NSObject *a2, void *a3, uint64_t a4)
{
  if (a2)
  {
    v6 = a2;
    if (qword_280C0B720 != -1)
    {
      swift_once();
    }

    v7 = sub_269D98250();
    __swift_project_value_buffer(v7, qword_280C0B728);
    v8 = a2;
    v9 = a3;
    v10 = sub_269D98230();
    v11 = sub_269D9AB60();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v40 = v13;
      *v12 = 136446722;
      v14 = sub_269D9B4D0();
      v16 = sub_269C2EACC(v14, v15, &v40);

      *(v12 + 4) = v16;
      *(v12 + 12) = 2082;
      v17 = sub_269D9ACC0();
      v19 = sub_269C2EACC(v17, v18, &v40);

      *(v12 + 14) = v19;
      *(v12 + 22) = 2082;
      ErrorValue = swift_getErrorValue();
      v21 = MEMORY[0x28223BE20](ErrorValue, v39[1]);
      (*(v23 + 16))(v39 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), v21);
      v24 = sub_269D9A660();
      v26 = sub_269C2EACC(v24, v25, &v40);

      *(v12 + 24) = v26;
      _os_log_impl(&dword_269C18000, v10, v11, "[%{public}s] Failed to save onboarding state for feature %{public}s with error: %{public}s", v12, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x26D652460](v13, -1, -1);
      MEMORY[0x26D652460](v12, -1, -1);

      return;
    }

    v38 = a2;
  }

  else
  {
    if (qword_280C0B720 != -1)
    {
      swift_once();
    }

    v27 = sub_269D98250();
    __swift_project_value_buffer(v27, qword_280C0B728);
    v28 = a3;
    v39[0] = sub_269D98230();
    v29 = sub_269D9AB80();

    if (os_log_type_enabled(v39[0], v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v40 = v31;
      *v30 = 136446466;
      v32 = sub_269D9B4D0();
      v34 = sub_269C2EACC(v32, v33, &v40);

      *(v30 + 4) = v34;
      *(v30 + 12) = 2082;
      v35 = sub_269D9ACC0();
      v37 = sub_269C2EACC(v35, v36, &v40);

      *(v30 + 14) = v37;
      _os_log_impl(&dword_269C18000, v39[0], v29, "[%{public}s] Saved onboarding complete for feature %{public}s", v30, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D652460](v31, -1, -1);
      MEMORY[0x26D652460](v30, -1, -1);

      return;
    }

    v38 = v39[0];
  }
}

void sub_269CAA774()
{
  v1 = v0;
  v2 = *v0;
  if (qword_280C0B720 != -1)
  {
    swift_once();
  }

  v3 = sub_269D98250();
  __swift_project_value_buffer(v3, qword_280C0B728);
  v4 = sub_269D98230();
  v5 = sub_269D9AB80();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15[0] = v7;
    *v6 = 136446210;
    v8 = sub_269D9B4D0();
    v10 = sub_269C2EACC(v8, v9, v15);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_269C18000, v4, v5, "[%{public}s] Creating sleep focus", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x26D652460](v7, -1, -1);
    MEMORY[0x26D652460](v6, -1, -1);
  }

  v11 = v1[8];
  v12 = [objc_opt_self() defaultConfigurationState];
  v13 = swift_allocObject();
  *(v13 + 16) = v2;
  v15[4] = sub_269CAC2B0;
  v15[5] = v13;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 1107296256;
  v15[2] = sub_269C7A600;
  v15[3] = &block_descriptor_28;
  v14 = _Block_copy(v15);

  [v11 createSleepFocusInState:v12 completion:v14];
  _Block_release(v14);
}

void sub_269CAA9B0(int a1, NSObject *a2, uint64_t a3, const char *a4, const char *a5)
{
  if (a2)
  {
    v7 = a2;
    if (qword_280C0B720 != -1)
    {
      swift_once();
    }

    v8 = sub_269D98250();
    __swift_project_value_buffer(v8, qword_280C0B728);
    v9 = a2;
    v10 = sub_269D98230();
    v11 = sub_269D9AB60();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v34 = v13;
      *v12 = 136446466;
      v14 = sub_269D9B4D0();
      v16 = sub_269C2EACC(v14, v15, &v34);

      *(v12 + 4) = v16;
      *(v12 + 12) = 2082;
      ErrorValue = swift_getErrorValue();
      v18 = MEMORY[0x28223BE20](ErrorValue, v33[1]);
      (*(v20 + 16))(v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), v18);
      v21 = sub_269D9A660();
      v23 = sub_269C2EACC(v21, v22, &v34);

      *(v12 + 14) = v23;
      _os_log_impl(&dword_269C18000, v10, v11, a4, v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D652460](v13, -1, -1);
      MEMORY[0x26D652460](v12, -1, -1);

      return;
    }

    v32 = a2;
  }

  else
  {
    if (qword_280C0B720 != -1)
    {
      swift_once();
    }

    v25 = sub_269D98250();
    __swift_project_value_buffer(v25, qword_280C0B728);
    v33[0] = sub_269D98230();
    v26 = sub_269D9AB80();
    if (os_log_type_enabled(v33[0], v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v34 = v28;
      *v27 = 136446210;
      v29 = sub_269D9B4D0();
      v31 = sub_269C2EACC(v29, v30, &v34);

      *(v27 + 4) = v31;
      _os_log_impl(&dword_269C18000, v33[0], v26, a5, v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v28);
      MEMORY[0x26D652460](v28, -1, -1);
      MEMORY[0x26D652460](v27, -1, -1);

      return;
    }

    v32 = v33[0];
  }
}

void sub_269CAAD94(uint64_t a1)
{
  v2 = [objc_opt_self() sharedInstanceForHealthStore_];
  if (v2)
  {
    v3 = v2;
    v4 = sub_269D9A9A0();
    v5 = [v3 displayTypeWithIdentifier_];

    if (v5)
    {
      sub_269D97EE0();
      oslog = [v5 objectType];
      sub_269D97ED0();
    }

    else
    {
      if (qword_280C0B720 != -1)
      {
        swift_once();
      }

      v6 = sub_269D98250();
      __swift_project_value_buffer(v6, qword_280C0B728);
      oslog = sub_269D98230();
      v7 = sub_269D9AB60();
      if (os_log_type_enabled(oslog, v7))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        v16 = v10;
        *v8 = 136446466;
        v11 = sub_269D9B4D0();
        v13 = sub_269C2EACC(v11, v12, &v16);

        *(v8 + 4) = v13;
        *(v8 + 12) = 2114;
        v14 = sub_269D9A9A0();
        *(v8 + 14) = v14;
        *v9 = v14;
        _os_log_impl(&dword_269C18000, oslog, v7, "[%{public}s] Unable to create display type from identifier %{public}@", v8, 0x16u);
        sub_269C773DC(v9);
        MEMORY[0x26D652460](v9, -1, -1);
        __swift_destroy_boxed_opaque_existential_1Tm(v10);
        MEMORY[0x26D652460](v10, -1, -1);
        MEMORY[0x26D652460](v8, -1, -1);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t SleepOnboardingManager.deinit()
{

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 72));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 112));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 152));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 192));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 232));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 272));
  return v0;
}

uint64_t SleepOnboardingManager.__deallocating_deinit()
{
  SleepOnboardingManager.deinit();

  return swift_deallocClassInstance();
}

id sub_269CAB1B0(uint64_t a1, uint64_t a2, SEL *a3)
{
  result = [objc_opt_self() sharedBehavior];
  if (result)
  {
    v5 = result;
    v6 = [result *a3];

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_269CAB260()
{
  v1 = *v0;
  swift_beginAccess();
  sub_269C2DB5C(v1 + 272, v5);
  v2 = v6;
  v3 = v7;
  __swift_project_boxed_opaque_existential_1Tm(v5, v6);
  LOBYTE(v2) = (*(v3 + 8))(v2, v3);
  __swift_destroy_boxed_opaque_existential_1Tm(v5);
  return v2 & 1;
}

uint64_t sub_269CAB2F0()
{
  v1 = *v0;
  swift_beginAccess();
  sub_269C2DB5C(v1 + 272, v5);
  v2 = v6;
  v3 = v7;
  __swift_project_boxed_opaque_existential_1Tm(v5, v6);
  LOBYTE(v2) = (*(v3 + 24))(v2, v3);
  __swift_destroy_boxed_opaque_existential_1Tm(v5);
  return v2 & 1;
}

void (*sub_269CAB3A4(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *v1;
  *(v3 + 64) = v5;
  swift_beginAccess();
  sub_269C2DB5C(v5 + 272, v4);
  v6 = *(v4 + 24);
  v7 = *(v4 + 32);
  __swift_project_boxed_opaque_existential_1Tm(v4, v6);
  LOBYTE(v5) = (*(v7 + 24))(v6, v7);
  __swift_destroy_boxed_opaque_existential_1Tm(v4);
  *(v4 + 72) = v5 & 1;
  return sub_269CA7FC0;
}

void *sub_269CAB574(void *a1, void *a2)
{
  v4 = sub_269D97D80();
  v5 = sub_269D97D70();
  type metadata accessor for HealthStatusFeatureProvider();
  v6 = swift_allocObject();
  v16 = v4;
  v17 = MEMORY[0x277D62630];
  *&v15 = v5;
  v7 = *MEMORY[0x277CCC0F0];
  v8 = objc_allocWithZone(MEMORY[0x277CCD460]);
  swift_retain_n();
  v9 = a2;
  v10 = [v8 initWithFeatureIdentifier:v7 healthStore:v9];
  v11 = sub_269C1B0B8(0, &qword_28034F430, 0x277CCD460);
  v12 = MEMORY[0x277D113B8];
  v6[5] = v11;
  v6[6] = v12;
  v6[2] = v10;

  sub_269C25520(&v15, (v6 + 7));
  type metadata accessor for SleepOnboardingManager();
  v13 = swift_allocObject();
  return sub_269CC88A4(a1, v9, v6, v5, v13);
}

void *sub_269CAB6AC(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v39 = a6;
  v40 = a8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v38);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_1, a3, a6);
  v36 = a7;
  v37 = a9;
  v17 = __swift_allocate_boxed_opaque_existential_1(&v35);
  (*(*(a7 - 8) + 32))(v17, a4, a7);
  a5[2] = [a1 analyticsManager];
  a5[3] = a2;
  v18 = objc_opt_self();
  v19 = a2;
  v20 = [v18 hksp_healthNotificationCenter];
  type metadata accessor for SleepNotificationManager();
  v21 = swift_allocObject();
  *(v21 + 16) = v20;
  a5[4] = v21;
  a5[8] = a1;
  v22 = type metadata accessor for SleepScheduleProvider();
  v23 = a1;
  v24 = SleepScheduleProvider.__allocating_init(sleepStore:)(v23);
  a5[12] = v22;
  a5[13] = &protocol witness table for SleepScheduleProvider;
  a5[9] = v24;
  v25 = v23;
  v26 = HKSPSleepStore.settings.getter();
  v27 = type metadata accessor for SleepSettingsProvider();
  v28 = objc_allocWithZone(v27);
  v29 = SleepSettingsProvider.init(sleepStore:sleepSettings:)(v25, v26);
  a5[17] = v27;
  a5[18] = &protocol witness table for SleepSettingsProvider;
  a5[14] = v29;
  a5[5] = [objc_allocWithZone(MEMORY[0x277D62460]) initWithFeatureIdentifier:*MEMORY[0x277CCC0D0] sleepStore:v25];
  a5[6] = [objc_allocWithZone(MEMORY[0x277D62460]) initWithFeatureIdentifier:*MEMORY[0x277CCC0E0] sleepStore:v25];
  a5[7] = [objc_allocWithZone(MEMORY[0x277D62460]) initWithFeatureIdentifier:*MEMORY[0x277CCC0E8] sleepStore:v25];
  v30 = [objc_allocWithZone(MEMORY[0x277CCD460]) initWithFeatureIdentifier:*MEMORY[0x277CCC0C8] healthStore:v19];
  v31 = sub_269C1B0B8(0, &qword_28034F430, 0x277CCD460);
  v32 = MEMORY[0x277D113B8];
  a5[22] = v31;
  a5[23] = v32;
  a5[19] = v30;
  v33 = [objc_allocWithZone(MEMORY[0x277CCD460]) initWithFeatureIdentifier:*MEMORY[0x277CCC0F8] healthStore:v19];
  a5[27] = v31;
  a5[28] = v32;
  a5[24] = v33;
  sub_269C25520(&v38, (a5 + 34));
  sub_269C25520(&v35, (a5 + 29));
  return a5;
}

void *sub_269CAB98C(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v26 = a2;
  v27 = a8;
  v25 = a1;
  v13 = *(a7 - 8);
  MEMORY[0x28223BE20](a1, a2);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v18, v19);
  v21 = &v24 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SleepOnboardingManager();
  v22 = swift_allocObject();
  (*(v17 + 16))(v21, a3, a6);
  (*(v13 + 16))(v15, a4, a7);
  return sub_269CAB6AC(v25, v26, v21, v15, v22, a6, a7, v27, a9);
}

unint64_t sub_269CABB38()
{
  result = qword_28034F3A8;
  if (!qword_28034F3A8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_28034F3A8);
  }

  return result;
}

double block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_269CABBC0(uint64_t a1)
{
  v2 = sub_269D9A630();
  v4 = v3;
  if (v2 == sub_269D9A630() && v4 == v5)
  {
    v8 = 40;
LABEL_8:

    return *(v1 + v8);
  }

  v7 = sub_269D9B280();

  if (v7)
  {
    v8 = 40;
    return *(v1 + v8);
  }

  v10 = sub_269D9A630();
  v12 = v11;
  if (v10 == sub_269D9A630() && v12 == v13)
  {
    v8 = 48;
    goto LABEL_8;
  }

  v15 = sub_269D9B280();

  if (v15)
  {
    v8 = 48;
    return *(v1 + v8);
  }

  v16 = sub_269D9A630();
  v18 = v17;
  if (v16 == sub_269D9A630() && v18 == v19)
  {
    v8 = 56;
    goto LABEL_8;
  }

  v20 = sub_269D9B280();

  if (v20)
  {
    v8 = 56;
  }

  else
  {
    v8 = 48;
  }

  return *(v1 + v8);
}

void sub_269CAC2E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_269D9AE60();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_269CAC364(uint64_t a1)
{
  sub_269CAC2E4(0, &unk_28034F420, MEMORY[0x277D62578]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_269CAC3DC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_269C71C08;

  return sub_269CA86B8(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t static NSDateComponentsFormatter.shorterDateString(from:)(uint64_t a1)
{
  v1 = type metadata accessor for ShorterDateComponentsFormatter();
  v2 = objc_allocWithZone(v1);
  *&v2[OBJC_IVAR____TtC13SleepHealthUI30ShorterDateComponentsFormatter_options] = 4;
  v8.receiver = v2;
  v8.super_class = v1;
  v3 = objc_msgSendSuper2(&v8, sel_init);
  v4 = sub_269D97110();
  v5 = [v3 stringFromDateComponents_];

  if (!v5)
  {
    return 0;
  }

  v6 = sub_269D9A630();

  return v6;
}

uint64_t static NSDateComponentsFormatter.shortHourString(from:)(double a1)
{
  v2 = type metadata accessor for ShortHourDateComponentsFormatter();
  v3 = objc_allocWithZone(v2);
  *&v3[OBJC_IVAR____TtC13SleepHealthUI32ShortHourDateComponentsFormatter_options] = 4;
  v8.receiver = v3;
  v8.super_class = v2;
  v4 = objc_msgSendSuper2(&v8, sel_init);
  [v4 setUnitsStyle_];
  [v4 setAllowedUnits_];
  v5 = [v4 stringFromTimeInterval_];

  if (!v5)
  {
    return 0;
  }

  v6 = sub_269D9A630();

  return v6;
}

id ShortHourDateComponentsFormatter.__allocating_init(options:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC13SleepHealthUI32ShortHourDateComponentsFormatter_options] = a1;
  v6.receiver = v3;
  v6.super_class = v1;
  v4 = objc_msgSendSuper2(&v6, sel_init);
  [v4 setUnitsStyle_];
  [v4 setAllowedUnits_];

  return v4;
}

uint64_t sub_269CAC7AC(uint64_t (*a1)(void), void *a2, double a3)
{
  v5 = a1();
  v6 = objc_allocWithZone(v5);
  *&v6[*a2] = 4;
  v11.receiver = v6;
  v11.super_class = v5;
  v7 = objc_msgSendSuper2(&v11, sel_init);
  v8 = [v7 stringFromTimeInterval_];

  if (!v8)
  {
    return 0;
  }

  v9 = sub_269D9A630();

  return v9;
}

id sub_269CAC874(uint64_t a1, void *a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[*a2] = a1;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t sub_269CAC8E4(uint64_t (*a1)(void), double a2)
{
  v3 = [objc_allocWithZone(a1()) init];
  v4 = [v3 stringFromTimeInterval_];

  if (!v4)
  {
    return 0;
  }

  v5 = sub_269D9A630();

  return v5;
}

uint64_t sub_269CAC994(uint64_t a1, uint64_t (*a2)(void))
{
  v2 = [objc_allocWithZone(a2()) init];
  v3 = sub_269D97110();
  v4 = [v2 stringFromDateComponents_];

  if (!v4)
  {
    return 0;
  }

  v5 = sub_269D9A630();

  return v5;
}

id static NSDateComponentsFormatter.briefStandaloneDuration.getter()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCA958]) init];
  [v0 setAllowedUnits_];
  [v0 setUnitsStyle_];
  [v0 setFormattingContext_];
  return v0;
}

id sub_269CACAB0(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CCA958]) init];
  [v2 setAllowedUnits_];
  [v2 setUnitsStyle_];
  return v2;
}

id static NSDateComponentsFormatter.full.getter()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCA958]) init];
  [v0 setUnitsStyle_];
  return v0;
}

void __swiftcall NSDateComponentsFormatter.spellOutFormatter()(NSDateComponentsFormatter *__return_ptr retstr)
{
  [v1 copy];
  sub_269D9AED0();
  swift_unknownObjectRelease();
  sub_269CAF458();
  swift_dynamicCast();
  [v2 setUnitsStyle_];
}

uint64_t sub_269CACBEC(double a1)
{
  v49 = sub_269D96F60();
  v3 = *(v49 - 8);
  MEMORY[0x28223BE20](v49, v4);
  v48 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_269D97650();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ForceDoubleZerosDateComponentsFormatter();
  v58.receiver = v1;
  v58.super_class = v11;
  v12 = objc_msgSendSuper2(&v58, sel_stringFromTimeInterval_, a1);
  if (!v12)
  {
    return 0;
  }

  v13 = v12;
  v14 = sub_269D9A630();
  v16 = v15;

  sub_269CAD43C(v10);
  v17 = sub_269D975D0();
  v19 = v18;
  (*(v7 + 8))(v10, v6);
  if (v17 == 0x53555F6E65 && v19 == 0xE500000000000000)
  {
  }

  else
  {
    v21 = sub_269D9B280();

    if ((v21 & 1) == 0)
    {
      return v14;
    }
  }

  v47 = (v3 + 8);
  v25 = &unk_287A9FD48;
  v26 = 3;
  v46 = sub_269C3EEE8(v22, v23, v24);
  while (1)
  {
    v50 = v26;
    v27 = *(v25 - 1);
    v28 = *v25;
    v29 = *(v25 - 3);
    v30 = *(v25 - 2);
    v56 = v14;
    v57 = v16;
    v54 = v29;
    v55 = v30;
    v45 = v27;
    v52 = v27;
    v53 = v28;

    v51 = v28;

    v31 = sub_269D9AEB0();
    v33 = v32;

    v56 = v29;
    v57 = v30;
    v34 = v48;
    sub_269D96F30();
    v35 = sub_269D9AEA0();
    v37 = v36;
    v38 = *v47;
    v39 = v34;
    v16 = v33;
    v14 = v31;
    (*v47)(v39, v49);

    if (v31 == v35 && v16 == v37)
    {
      break;
    }

    v40 = sub_269D9B280();

    v41 = v50;
    if (v40)
    {
      goto LABEL_17;
    }

    v25 += 4;
    v26 = v41 - 1;
    if (!v26)
    {
      sub_269CAF4A4();
      swift_arrayDestroy();
      return v14;
    }
  }

LABEL_17:

  sub_269CAF4A4();
  swift_arrayDestroy();
  v56 = v45;
  v57 = v51;
  v42 = v48;
  sub_269D96F30();
  v14 = sub_269D9AEA0();
  v38(v42, v49);

  return v14;
}

uint64_t sub_269CAD00C()
{
  v47 = sub_269D96F60();
  v1 = *(v47 - 8);
  MEMORY[0x28223BE20](v47, v2);
  v46 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_269D97650();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_269D97110();
  v10 = type metadata accessor for ForceDoubleZerosDateComponentsFormatter();
  v56.receiver = v0;
  v56.super_class = v10;
  v11 = objc_msgSendSuper2(&v56, sel_stringFromDateComponents_, v9);

  if (!v11)
  {
    return 0;
  }

  v12 = sub_269D9A630();
  v14 = v13;

  sub_269CAD43C(v8);
  v15 = sub_269D975D0();
  v17 = v16;
  (*(v5 + 8))(v8, v4);
  if (v15 == 0x53555F6E65 && v17 == 0xE500000000000000)
  {
  }

  else
  {
    v19 = sub_269D9B280();

    if ((v19 & 1) == 0)
    {
      return v12;
    }
  }

  v45 = (v1 + 8);
  v23 = &unk_287A9FDC8;
  v24 = 3;
  v44 = sub_269C3EEE8(v20, v21, v22);
  while (1)
  {
    v48 = v24;
    v25 = *(v23 - 1);
    v26 = *v23;
    v27 = *(v23 - 3);
    v28 = *(v23 - 2);
    v54 = v12;
    v55 = v14;
    v52 = v27;
    v53 = v28;
    v43 = v25;
    v50 = v25;
    v51 = v26;

    v49 = v26;

    v29 = sub_269D9AEB0();
    v31 = v30;

    v54 = v27;
    v55 = v28;
    v32 = v46;
    sub_269D96F30();
    v33 = sub_269D9AEA0();
    v35 = v34;
    v36 = *v45;
    v37 = v32;
    v14 = v31;
    v12 = v29;
    (*v45)(v37, v47);

    if (v29 == v33 && v14 == v35)
    {
      break;
    }

    v38 = sub_269D9B280();

    v39 = v48;
    if (v38)
    {
      goto LABEL_17;
    }

    v23 += 4;
    v24 = v39 - 1;
    if (!v24)
    {
      sub_269CAF4A4();
      swift_arrayDestroy();
      return v12;
    }
  }

LABEL_17:

  sub_269CAF4A4();
  swift_arrayDestroy();
  v54 = v43;
  v55 = v49;
  v40 = v46;
  sub_269D96F30();
  v12 = sub_269D9AEA0();
  v36(v40, v47);

  return v12;
}

uint64_t sub_269CAD43C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_269CAF848(0, &unk_280C0BB50, MEMORY[0x277CC99E8]);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v23 - v10;
  sub_269CAF848(0, &qword_280C0B3E0, MEMORY[0x277CC9788]);
  v14 = MEMORY[0x28223BE20](v12 - 8, v13);
  v16 = &v23 - v15;
  v17 = [v2 calendar];
  if (v17)
  {
    v18 = v17;
    sub_269D97710();

    v19 = sub_269D977A0();
    (*(*(v19 - 8) + 56))(v7, 0, 1, v19);
  }

  else
  {
    v19 = sub_269D977A0();
    (*(*(v19 - 8) + 56))(v7, 1, 1, v19);
  }

  sub_269CAF89C(v7, v11);
  sub_269D977A0();
  if ((*(*(v19 - 8) + 48))(v11, 1, v19))
  {
    sub_269CAF91C(v11, &unk_280C0BB50, MEMORY[0x277CC99E8]);
    v20 = sub_269D97650();
    (*(*(v20 - 8) + 56))(v16, 1, 1, v20);
  }

  else
  {
    sub_269D97750();
    sub_269CAF91C(v11, &unk_280C0BB50, MEMORY[0x277CC99E8]);
    v20 = sub_269D97650();
    v21 = *(v20 - 8);
    if ((*(v21 + 48))(v16, 1, v20) != 1)
    {
      return (*(v21 + 32))(a1, v16, v20);
    }
  }

  sub_269D97630();
  sub_269D97650();
  result = (*(*(v20 - 8) + 48))(v16, 1, v20);
  if (result != 1)
  {
    return sub_269CAF91C(v16, &qword_280C0B3E0, MEMORY[0x277CC9788]);
  }

  return result;
}

uint64_t sub_269CAD7BC(uint64_t a1, uint64_t a2)
{
  v44 = sub_269D96F60();
  v4 = *(v44 - 8);
  MEMORY[0x28223BE20](v44, v5);
  v43 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_269D97650();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269CAD43C(v11);
  v12 = sub_269D975D0();
  v14 = v13;
  (*(v8 + 8))(v11, v7);
  if (v12 == 0x53555F6E65 && v14 == 0xE500000000000000)
  {
  }

  else
  {
    v16 = sub_269D9B280();

    if ((v16 & 1) == 0)
    {

      return a1;
    }
  }

  v42 = (v4 + 8);

  v18 = &unk_287A9FE48;
  v19 = 3;
  v41 = sub_269C3EEE8(v17, v20, v21);
  while (1)
  {
    v45 = v19;
    v22 = *(v18 - 1);
    v23 = *v18;
    v24 = *(v18 - 3);
    v25 = *(v18 - 2);
    v51 = a1;
    v52 = a2;
    v49 = v24;
    v50 = v25;
    v40 = v22;
    v47 = v22;
    v48 = v23;

    v46 = v23;

    v26 = sub_269D9AEB0();
    v28 = v27;

    v51 = v24;
    v52 = v25;
    v29 = v43;
    sub_269D96F30();
    v30 = sub_269D9AEA0();
    v32 = v31;
    v33 = *v42;
    v34 = v29;
    a2 = v28;
    a1 = v26;
    (*v42)(v34, v44);

    if (v26 == v30 && a2 == v32)
    {
      break;
    }

    v35 = sub_269D9B280();

    v36 = v45;
    if (v35)
    {
      goto LABEL_15;
    }

    v18 += 4;
    v19 = v36 - 1;
    if (!v19)
    {
      sub_269CAF4A4();
      swift_arrayDestroy();
      return a1;
    }
  }

LABEL_15:

  sub_269CAF4A4();
  swift_arrayDestroy();
  v51 = v40;
  v52 = v46;
  v37 = v43;
  sub_269D96F30();
  a1 = sub_269D9AEA0();
  v33(v37, v44);

  return a1;
}

id ForceDoubleZerosDateComponentsFormatter.init()(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ForceDoubleZerosDateComponentsFormatter();
  return objc_msgSendSuper2(&v3, sel_init);
}

id ForceDoubleZerosDateComponentsFormatter.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for ForceDoubleZerosDateComponentsFormatter();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id BriefOneHourIsSixtyMinDateComponentsFormatter.init()()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for BriefOneHourIsSixtyMinDateComponentsFormatter();
  v1 = objc_msgSendSuper2(&v3, sel_init);
  [v1 setZeroFormattingBehavior_];
  [v1 setUnitsStyle_];

  return v1;
}

uint64_t sub_269CADF7C(uint64_t a1)
{
  v2 = v1;
  v3 = sub_269D971A0();
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = v3;
  }

  v6 = sub_269D97150();
  if ((v7 & 1) == 0)
  {
    if (v6 == 1)
    {
      if (!v5)
      {
        goto LABEL_8;
      }

      goto LABEL_10;
    }

    if (v6)
    {
      goto LABEL_10;
    }
  }

  if (v5 <= 60)
  {
LABEL_8:
    v8 = 64;
    goto LABEL_11;
  }

LABEL_10:
  v8 = 96;
LABEL_11:
  [v1 setAllowedUnits_];
  v9 = sub_269D97110();
  v13.receiver = v2;
  v13.super_class = type metadata accessor for BriefOneHourIsSixtyMinDateComponentsFormatter();
  v10 = objc_msgSendSuper2(&v13, sel_stringFromDateComponents_, v9);

  if (!v10)
  {
    return 0;
  }

  v11 = sub_269D9A630();

  return v11;
}

uint64_t sub_269CAE088()
{
  v1 = OBJC_IVAR____TtC13SleepHealthUI30ShorterDateComponentsFormatter_options;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_269CAE0CC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13SleepHealthUI30ShorterDateComponentsFormatter_options;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id ShorterDateComponentsFormatter.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

uint64_t sub_269CAE390(uint64_t a1)
{
  v2 = sub_269D97150();
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = v2;
  }

  result = sub_269D971A0();
  v7 = 60 * v4;
  if ((v4 * 60) >> 64 != (60 * v4) >> 63)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = result;
  }

  v9 = __OFADD__(v7, v8);
  v10 = v7 + v8;
  if (v9)
  {
    goto LABEL_14;
  }

  v11 = [v1 stringFromTimeInterval_];
  if (!v11)
  {
    return 0;
  }

  v12 = v11;
  v13 = sub_269D9A630();

  return v13;
}

id sub_269CAE468(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  v6 = sub_269D971F0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269D97120();
  v11 = a1;
  a4(v10);
  v13 = v12;

  (*(v7 + 8))(v10, v6);
  if (v13)
  {
    v14 = sub_269D9A5F0();
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

id ShorterDateComponentsFormatter.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_269CAE648()
{
  v1 = OBJC_IVAR____TtC13SleepHealthUI32ShortHourDateComponentsFormatter_options;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_269CAE68C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13SleepHealthUI32ShortHourDateComponentsFormatter_options;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id ShortHourDateComponentsFormatter.init(options:)(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC13SleepHealthUI32ShortHourDateComponentsFormatter_options] = a1;
  v4.receiver = v1;
  v4.super_class = type metadata accessor for ShortHourDateComponentsFormatter();
  v2 = objc_msgSendSuper2(&v4, sel_init);
  [v2 setUnitsStyle_];
  [v2 setAllowedUnits_];

  return v2;
}

uint64_t sub_269CAE874(double a1)
{
  if (a1 / 60.0 / 60.0 != 0.0)
  {
    v5 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
    swift_beginAccess();
    v4 = HKTimePeriodString();

    if (v4)
    {
      goto LABEL_5;
    }

    return 0;
  }

  v8.receiver = v1;
  v8.super_class = type metadata accessor for ShortHourDateComponentsFormatter();
  v3 = objc_msgSendSuper2(&v8, sel_stringFromTimeInterval_, a1);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
LABEL_5:
  v6 = sub_269D9A630();

  return v6;
}

uint64_t sub_269CAEA08()
{
  v1 = OBJC_IVAR____TtC13SleepHealthUI34ShortMinuteDateComponentsFormatter_options;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_269CAEA4C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC13SleepHealthUI34ShortMinuteDateComponentsFormatter_options;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id sub_269CAEB1C(uint64_t a1, void *a2, uint64_t (*a3)(void))
{
  *&v3[*a2] = a1;
  v5.receiver = v3;
  v5.super_class = a3();
  return objc_msgSendSuper2(&v5, sel_init);
}

void sub_269CAEC14(double a1)
{
  v44 = sub_269D96F60();
  v2 = *(v44 - 8);
  MEMORY[0x28223BE20](v44, v3);
  v43 = v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_269D97650();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  swift_beginAccess();
  v11 = HKTimePeriodString();

  if (!v11)
  {
    __break(1u);
    return;
  }

  v12 = sub_269D9A630();
  v14 = v13;

  sub_269CAD43C(v9);
  v15 = sub_269D975D0();
  v17 = v16;
  (*(v6 + 8))(v9, v5);
  if (v15 == 0x53555F6E65 && v17 == 0xE500000000000000)
  {
  }

  else
  {
    v19 = sub_269D9B280();

    if ((v19 & 1) == 0)
    {
      return;
    }
  }

  v42 = (v2 + 8);
  v23 = &unk_287A9FEC8;
  v24 = 3;
  v41[1] = sub_269C3EEE8(v20, v21, v22);
  while (1)
  {
    v45 = v24;
    v25 = *(v23 - 1);
    v26 = *v23;
    v27 = *(v23 - 3);
    v28 = *(v23 - 2);
    v51 = v12;
    v52 = v14;
    v49 = v27;
    v50 = v28;
    v41[0] = v25;
    v47 = v25;
    v48 = v26;

    v46 = v26;

    v29 = sub_269D9AEB0();
    v31 = v30;

    v51 = v27;
    v52 = v28;
    v32 = v43;
    sub_269D96F30();
    v33 = sub_269D9AEA0();
    v35 = v34;
    v36 = *v42;
    v37 = v32;
    v14 = v31;
    v12 = v29;
    (*v42)(v37, v44);

    if (v29 == v33 && v14 == v35)
    {
      break;
    }

    v38 = sub_269D9B280();

    v39 = v45;
    if (v38)
    {
      goto LABEL_16;
    }

    v23 += 4;
    v24 = v39 - 1;
    if (!v24)
    {
      sub_269CAF4A4();
      swift_arrayDestroy();
      return;
    }
  }

LABEL_16:

  sub_269CAF4A4();
  swift_arrayDestroy();
  v51 = v41[0];
  v52 = v46;
  v40 = v43;
  sub_269D96F30();
  sub_269D9AEA0();
  v36(v40, v44);
}

id sub_269CAF060(void *a1, double a2, uint64_t a3, uint64_t (*a4)(double))
{
  v6 = a1;
  a4(a2);
  v8 = v7;

  if (v8)
  {
    v9 = sub_269D9A5F0();
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

id sub_269CAF0F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_269D971F0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269D97120();
  (*(v4 + 8))(v7, v3);

  return 0;
}

id AbbreviatedOneHourIsSixtyMinDateComponentsFormatter.init()()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for AbbreviatedOneHourIsSixtyMinDateComponentsFormatter();
  v1 = objc_msgSendSuper2(&v3, sel_init);
  [v1 setUnitsStyle_];
  [v1 setAllowedUnits_];

  return v1;
}

id sub_269CAF348(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_269CAF458()
{
  result = qword_28034DE58;
  if (!qword_28034DE58)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28034DE58);
  }

  return result;
}

void sub_269CAF4A4()
{
  if (!qword_28034F458)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_28034F458);
    }
  }
}

uint64_t keypath_getTm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  result = swift_beginAccess();
  *a3 = *(v4 + v5);
  return result;
}

uint64_t keypath_setTm(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  result = swift_beginAccess();
  *(v6 + v7) = v5;
  return result;
}

void sub_269CAF848(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_269D9AE60();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_269CAF89C(uint64_t a1, uint64_t a2)
{
  sub_269CAF848(0, &unk_280C0BB50, MEMORY[0x277CC99E8]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_269CAF91C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_269CAF848(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

__n128 __swift_memcpy89_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_269CAF9C8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 89))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 33);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_269CAFA1C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 89) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 89) = 0;
    }

    if (a2)
    {
      *(result + 33) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_269CAFAA4@<X0>(uint64_t a1@<X8>)
{
  v60 = a1;
  v2 = sub_269D99040();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1[3];
  v79 = v1[2];
  v80 = v7;
  *v81 = v1[4];
  *&v81[9] = *(v1 + 73);
  v8 = v1[1];
  v77 = *v1;
  v78 = v8;
  v59 = sub_269D99D10();
  v75 = v59;
  v76 = 256;
  v9 = 0.7;
  if ((v79 & 1) == 0)
  {
    v9 = 0.0;
  }

  v68 = xmmword_269DA3E80;
  v69 = xmmword_269DA3E80;
  v70 = xmmword_269DA3E80;
  v71 = 0;
  v72 = v9;
  v73 = xmmword_269DA3E90;
  v74 = 0;
  v67 = BYTE1(v79);
  if (v81[24])
  {
    *&v66[0] = *(&v79 + 1);
    *(v66 + 8) = v80;
    *(&v66[1] + 8) = *v81;
    *(&v66[2] + 1) = *&v81[16];
    sub_269CB1900(&v77, &v61);
  }

  else
  {
    sub_269CB1900(&v77, &v61);
    sub_269D9AB70();
    v10 = sub_269D99590();
    sub_269D98200();

    sub_269D99030();
    swift_getAtKeyPath();
    sub_269CB1938(&v77);
    (*(v3 + 8))(v6, v2);
  }

  v82 = v66[0];
  v83 = v66[1];
  v84 = v66[2];
  v11 = swift_allocObject();
  v12 = v80;
  v11[3] = v79;
  v11[4] = v12;
  v11[5] = *v81;
  *(v11 + 89) = *&v81[9];
  v13 = v78;
  v11[1] = v77;
  v11[2] = v13;
  v14 = v83;
  v11[7] = v82;
  v11[8] = v14;
  v11[9] = v84;
  v15 = swift_allocObject();
  v16 = v80;
  v15[3] = v79;
  v15[4] = v16;
  v15[5] = *v81;
  *(v15 + 89) = *&v81[9];
  v17 = v78;
  v15[1] = v77;
  v15[2] = v17;
  sub_269CB1900(&v77, &v61);
  sub_269CB1900(&v77, &v61);
  sub_269CB197C(0, v18, v19);
  v58 = v20;
  sub_269CB1A4C(0, v21, v22);
  v57 = v23;
  sub_269CB1E04();
  v56 = v24;
  v55 = sub_269CB2C7C(&qword_28034F530, sub_269CB197C, MEMORY[0x277CDF3A0]);
  v54 = sub_269CB2B9C(v55, v25, v26);
  sub_269CB2020(255);
  v53 = v27;
  sub_269CB29E8(255);
  v29 = v28;
  sub_269CB2210(255);
  v52 = v30;
  sub_269CB23D4(255);
  v51 = v31;
  sub_269CB2570(255);
  v50 = v32;
  sub_269CB26DC(255);
  v49 = v33;
  sub_269CB281C(255);
  v35 = v34;
  sub_269CB28E0(255);
  v37 = v36;
  v38 = MEMORY[0x277CDF6F0];
  v39 = sub_269CB2C7C(&qword_28034F510, sub_269CB28E0, MEMORY[0x277CDF6F0]);
  v61 = &type metadata for SleepScoreAnimationState;
  v62 = v37;
  v63 = v37;
  v64 = v39;
  v65 = v39;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v41 = sub_269CB2C7C(&qword_28034F528, sub_269CB29E8, v38);
  v61 = &type metadata for SleepScoreAnimationState;
  v62 = v35;
  v63 = v29;
  v64 = OpaqueTypeConformance2;
  v65 = v41;
  v42 = swift_getOpaqueTypeConformance2();
  v61 = &type metadata for SleepScoreAnimationState;
  v62 = v49;
  v63 = v29;
  v64 = v42;
  v65 = v41;
  v43 = swift_getOpaqueTypeConformance2();
  v61 = &type metadata for SleepScoreAnimationState;
  v62 = v50;
  v63 = v29;
  v64 = v43;
  v65 = v41;
  v44 = swift_getOpaqueTypeConformance2();
  v61 = &type metadata for SleepScoreAnimationState;
  v62 = v51;
  v63 = v29;
  v64 = v44;
  v65 = v41;
  v45 = swift_getOpaqueTypeConformance2();
  v61 = &type metadata for SleepScoreAnimationState;
  v62 = v52;
  v63 = v29;
  v64 = v45;
  v65 = v41;
  v46 = swift_getOpaqueTypeConformance2();
  v61 = &type metadata for SleepScoreAnimationState;
  v62 = v53;
  v63 = v29;
  v64 = v46;
  v65 = v41;
  swift_getOpaqueTypeConformance2();
  sub_269D99B20();
}

uint64_t sub_269CB0008@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X3>, uint64_t a4@<X8>)
{
  v8 = sub_269D9A180();
  v10 = v9;
  sub_269CB0198(a2, a3, &v27);
  v51 = v37;
  v52 = v38;
  v53 = v39;
  v54 = v40;
  v47 = v33;
  v48 = v34;
  v49 = v35;
  v50 = v36;
  v43 = v29;
  v44 = v30;
  v45 = v31;
  v46 = v32;
  v41 = v27;
  v42 = v28;
  *&v55 = v8;
  *(&v55 + 1) = v10;
  sub_269CB1AB4(0, v11, v12);
  (*(*(v13 - 8) + 16))(a4, a1, v13);
  sub_269CB1A4C(0, v14, v15);
  v17 = (a4 + *(v16 + 36));
  v18 = v54;
  v17[12] = v53;
  v17[13] = v18;
  v17[14] = v55;
  v19 = v50;
  v17[8] = v49;
  v17[9] = v19;
  v20 = v52;
  v17[10] = v51;
  v17[11] = v20;
  v21 = v46;
  v17[4] = v45;
  v17[5] = v21;
  v22 = v48;
  v17[6] = v47;
  v17[7] = v22;
  v23 = v42;
  *v17 = v41;
  v17[1] = v23;
  v24 = v44;
  v17[2] = v43;
  v17[3] = v24;
  v56[10] = v37;
  v56[11] = v38;
  v56[12] = v39;
  v56[13] = v40;
  v56[6] = v33;
  v56[7] = v34;
  v56[8] = v35;
  v56[9] = v36;
  v56[2] = v29;
  v56[3] = v30;
  v56[4] = v31;
  v56[5] = v32;
  v56[0] = v27;
  v56[1] = v28;
  v57 = v8;
  v58 = v10;
  sub_269CB2D10(&v41, &v26);
  return sub_269CB2D74(v56);
}

uint64_t sub_269CB0198@<X0>(uint64_t result@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = result;
  v6 = (v3 + 8);
  v7 = (v3 + 16);
  v8 = *(v3 + 24);
  v9 = *(v3 + 32);
  v10 = *(result + 80);
  if (v10 == 1.0)
  {
    v11 = v3;
  }

  else
  {
    v7 = (result + 32);
    v6 = (result + 16);
    v11 = result;
  }

  v12 = *v11;
  v13 = *v6;
  v14 = *v7;
  if ((*(v3 + 32) & 1) != 0 || v10 == 1.0)
  {
    goto LABEL_10;
  }

  v15 = round(*(result + 48));
  if ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v15 <= -9.22337204e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v15 < 9.22337204e18)
  {
    v9 = 0;
    v8 = v15;
LABEL_10:
    v16 = *(result + 8);
    v17 = *(result + 24);
    v18 = *(result + 40);
    v25 = *(result + 56);
    v26 = *a2;
    v19 = *(result + 72);
    v29 = v9;
    v27 = a2[1];
    v28 = *(a2 + 4);
    KeyPath = swift_getKeyPath();
    v21 = swift_getKeyPath();

    v22 = sub_269D99670();

    result = swift_allocObject();
    v23 = *(v4 + 48);
    *(result + 48) = *(v4 + 32);
    *(result + 64) = v23;
    *(result + 80) = *(v4 + 64);
    *(result + 96) = *(v4 + 80);
    v24 = *(v4 + 16);
    *(result + 16) = *v4;
    *(result + 32) = v24;
    *a3 = v12;
    *(a3 + 8) = v16;
    *(a3 + 16) = v13;
    *(a3 + 24) = v17;
    *(a3 + 32) = v14;
    *(a3 + 40) = v18;
    *(a3 + 48) = v8;
    *(a3 + 56) = v29;
    *(a3 + 64) = v25;
    *(a3 + 80) = v19;
    *(a3 + 88) = v10;
    *(a3 + 96) = KeyPath;
    *(a3 + 136) = 0;
    *(a3 + 120) = 0u;
    *(a3 + 104) = 0u;
    *(a3 + 144) = 0;
    *(a3 + 152) = v21;
    *(a3 + 160) = v26;
    *(a3 + 176) = v27;
    *(a3 + 192) = v28;
    *(a3 + 200) = v22;
    *(a3 + 208) = sub_269CB2DD0;
    *(a3 + 216) = result;
    return result;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_269CB03A0@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  v165 = a2;
  sub_269CB2020(0);
  v164 = v3;
  v163 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v4);
  v162 = &v141 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269CB2210(0);
  v161 = v6;
  v160 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v7);
  v159 = &v141 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269CB23D4(0);
  v178 = v9;
  v158 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v10);
  v177 = &v141 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269CB2570(0);
  v176 = v12;
  v157 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v13);
  v175 = &v141 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269CB26DC(0);
  v174 = v15;
  v156 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v16);
  v173 = &v141 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269CB281C(0);
  v172 = v18;
  v155 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v19);
  v171 = &v141 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269CB29E8(0);
  v22 = v21;
  v188 = *(v21 - 8);
  MEMORY[0x28223BE20](v21, v23);
  v147 = &v141 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25, v26);
  v187 = &v141 - v27;
  MEMORY[0x28223BE20](v28, v29);
  v186 = &v141 - v30;
  MEMORY[0x28223BE20](v31, v32);
  v185 = &v141 - v33;
  MEMORY[0x28223BE20](v34, v35);
  v184 = &v141 - v36;
  MEMORY[0x28223BE20](v37, v38);
  v183 = &v141 - v39;
  MEMORY[0x28223BE20](v40, v41);
  v182 = &v141 - v42;
  sub_269CB28E0(0);
  v44 = v43;
  v179 = *(v43 - 8);
  MEMORY[0x28223BE20](v43, v45);
  v180 = &v141 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v47, v48);
  v50 = &v141 - v49;
  MEMORY[0x28223BE20](v51, v52);
  v181 = &v141 - v53;
  v153 = sub_269D9A200();
  v151 = *(v153 - 8);
  MEMORY[0x28223BE20](v153, v54);
  v56 = &v141 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v57, v58);
  v60 = &v141 - v59;
  sub_269CB1E04();
  v154 = v61;
  v152 = *(v61 - 8);
  MEMORY[0x28223BE20](v61, v62);
  v150 = &v141 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v64, v65);
  v170 = &v141 - v66;
  MEMORY[0x28223BE20](v67, v68);
  v149 = &v141 - v69;
  sub_269D9A8E0();
  v148 = sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v71 = *a1;
  v70 = a1[1];
  v72 = a1[2];
  v144 = a1[3];
  v73 = *(a1 + 32);
  v143 = v73;
  if (v144 < 90)
  {
    v74 = 1;
  }

  else
  {
    v74 = v73;
  }

  if (v74)
  {
    v75 = 0.833333333;
  }

  else
  {
    v75 = 1.33333333;
  }

  if (v74)
  {
    v76 = 0.5;
  }

  else
  {
    v76 = 1.0;
  }

  sub_269D9A1E0();
  sub_269D9A1E0();
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath, v78);
  *(&v141 - 2) = 0x3FE5555555555555;
  *(&v141 - 1) = v56;
  v167 = v56;
  sub_269CB2990();
  v168 = v60;
  v80 = v79;
  v81 = sub_269CB2C7C(&qword_28034F508, sub_269CB2990, MEMORY[0x277CDF848]);
  sub_269D98B00();
  v142 = MEMORY[0x277CDF6F0];
  v82 = v50;
  v83 = sub_269CB2C7C(&qword_28034F510, sub_269CB28E0, MEMORY[0x277CDF6F0]);
  v145 = v83;
  MEMORY[0x26D64EF90](v82, &type metadata for SleepScoreAnimationState, v44, v83);
  v84 = *(v179 + 8);
  v179 += 8;
  v169 = v82;
  v84(v82, v44);
  v146 = v84;
  v85 = swift_getKeyPath();
  MEMORY[0x28223BE20](v85, v86);
  *(&v141 - 2) = 0x3FE5555555555555;
  *(&v141 - 1) = v56;
  v87 = v180;
  sub_269D98B00();
  MEMORY[0x26D64EF90](v87, &type metadata for SleepScoreAnimationState, v44, v83);
  v84(v87, v44);
  v88 = swift_getKeyPath();
  v166 = v44;
  MEMORY[0x28223BE20](v88, v89);
  *(&v141 - 4) = 0x3FD5555555555555;
  *(&v141 - 3) = v75;
  v90 = v168;
  *(&v141 - 2) = v168;
  sub_269CB2AD8(0);
  v189 = MEMORY[0x277D839F8];
  v190 = v80;
  v191 = v80;
  v192 = v81;
  v193 = v81;
  swift_getOpaqueTypeConformance2();
  v91 = v183;
  sub_269D98B00();
  v92 = sub_269CB2C7C(&qword_28034F528, sub_269CB29E8, v142);
  MEMORY[0x26D64EF90](v91, &type metadata for SleepScoreAnimationState, v22, v92);
  v93 = v188 + 8;
  v94 = *(v188 + 8);
  v94(v91, v22);
  v95 = swift_getKeyPath();
  MEMORY[0x28223BE20](v95, v96);
  *(&v141 - 6) = 0x3FD5555555555555;
  *(&v141 - 5) = v144;
  *(&v141 - 32) = v143;
  *(&v141 - 3) = v75;
  v97 = v90;
  *(&v141 - 2) = v90;
  v98 = v184;
  sub_269D98B00();
  MEMORY[0x26D64EF90](v98, &type metadata for SleepScoreAnimationState, v22, v92);
  v94(v98, v22);
  v99 = swift_getKeyPath();
  MEMORY[0x28223BE20](v99, v100);
  *(&v141 - 4) = 0x3FD5555555555555;
  *(&v141 - 3) = v75;
  *(&v141 - 2) = v97;
  v101 = v185;
  sub_269D98B00();
  MEMORY[0x26D64EF90](v101, &type metadata for SleepScoreAnimationState, v22, v92);
  v94(v101, v22);
  v102 = swift_getKeyPath();
  MEMORY[0x28223BE20](v102, v103);
  *(&v141 - 4) = 0x3FD5555555555555;
  *(&v141 - 3) = v71;
  *(&v141 - 2) = v76;
  v104 = v167;
  *(&v141 - 1) = v167;
  v105 = v186;
  sub_269D98B00();
  MEMORY[0x26D64EF90](v105, &type metadata for SleepScoreAnimationState, v22, v92);
  v94(v105, v22);
  v106 = swift_getKeyPath();
  MEMORY[0x28223BE20](v106, v107);
  *(&v141 - 4) = 0x3FDAAAAAAAAAAAABLL;
  *(&v141 - 3) = v70;
  *(&v141 - 2) = v76;
  *(&v141 - 1) = v104;
  v108 = v187;
  sub_269D98B00();
  MEMORY[0x26D64EF90](v108, &type metadata for SleepScoreAnimationState, v22, v92);
  v94(v108, v22);
  v188 = v93;
  v142 = v94;
  v109 = swift_getKeyPath();
  MEMORY[0x28223BE20](v109, v110);
  *(&v141 - 4) = 0x3FE0000000000000;
  *(&v141 - 3) = v72;
  *(&v141 - 2) = v76;
  *(&v141 - 1) = v104;
  v111 = v147;
  sub_269D98B00();
  MEMORY[0x26D64EF90](v111, &type metadata for SleepScoreAnimationState, v22, v92);
  v94(v111, v22);
  v112 = v166;
  v113 = v145;
  MEMORY[0x26D64EFC0](v181, &type metadata for SleepScoreAnimationState, v166, v145);
  sub_269D98D60();
  v189 = &type metadata for SleepScoreAnimationState;
  v190 = v112;
  v191 = v112;
  v192 = v113;
  v193 = v113;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v115 = v172;
  sub_269D98D60();
  v189 = &type metadata for SleepScoreAnimationState;
  v190 = v115;
  v191 = v22;
  v192 = OpaqueTypeConformance2;
  v193 = v92;
  v116 = swift_getOpaqueTypeConformance2();
  v117 = v174;
  sub_269D98D60();
  v189 = &type metadata for SleepScoreAnimationState;
  v190 = v117;
  v191 = v22;
  v192 = v116;
  v193 = v92;
  v118 = swift_getOpaqueTypeConformance2();
  v119 = v176;
  sub_269D98D60();
  v189 = &type metadata for SleepScoreAnimationState;
  v190 = v119;
  v191 = v22;
  v192 = v118;
  v193 = v92;
  v120 = swift_getOpaqueTypeConformance2();
  v121 = v159;
  v122 = v178;
  sub_269D98D60();
  v189 = &type metadata for SleepScoreAnimationState;
  v190 = v122;
  v191 = v22;
  v192 = v120;
  v193 = v92;
  v123 = swift_getOpaqueTypeConformance2();
  v124 = v162;
  v125 = v161;
  sub_269D98D60();
  v189 = &type metadata for SleepScoreAnimationState;
  v190 = v125;
  v191 = v22;
  v192 = v123;
  v193 = v92;
  v126 = swift_getOpaqueTypeConformance2();
  v127 = v150;
  v128 = v164;
  sub_269D98D60();
  v189 = &type metadata for SleepScoreAnimationState;
  v190 = v128;
  v191 = v22;
  v192 = v126;
  v193 = v92;
  v129 = swift_getOpaqueTypeConformance2();
  v130 = v154;
  MEMORY[0x26D64EFA0](v127, &type metadata for SleepScoreAnimationState, v154, v129);
  v152 = *(v152 + 8);
  (v152)(v127, v130);
  (*(v163 + 8))(v124, v128);
  (*(v160 + 8))(v121, v125);
  (*(v158 + 8))(v177, v178);
  (*(v157 + 8))(v175, v176);
  (*(v156 + 8))(v173, v174);
  (*(v155 + 8))(v171, v172);
  v131 = v166;
  v132 = v146;
  v146(v180, v166);
  v133 = v142;
  v142(v187, v22);
  v133(v186, v22);
  v133(v185, v22);
  v133(v184, v22);
  v133(v183, v22);
  v133(v182, v22);
  v132(v169, v131);
  v132(v181, v131);
  v134 = *(v151 + 8);
  v135 = v153;
  v134(v167, v153);
  v134(v168, v135);
  v136 = v149;
  v137 = v170;
  MEMORY[0x26D64EF90](v170, &type metadata for SleepScoreAnimationState, v130, v129);
  v138 = v137;
  v139 = v152;
  (v152)(v138, v130);
  MEMORY[0x26D64EFC0](v136, &type metadata for SleepScoreAnimationState, v130, v129);
  MEMORY[0x26D64EFA0](v127, &type metadata for SleepScoreAnimationState, v130, v129);
  v139(v127, v130);
  v139(v136, v130);
}

void sub_269CB17EC(uint64_t a1, uint64_t a2)
{
  v3 = sub_269D9A200();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 80) == 1.0)
  {
    sub_269D9A1E0();
    sub_269D9A190();
    (*(v4 + 8))(v7, v3);
    sub_269D98A30();
  }
}

void sub_269CB197C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!qword_28034F460)
  {
    sub_269CB19F8(0, a2, a3);
    v3 = sub_269D989D0();
    if (!v4)
    {
      atomic_store(v3, &qword_28034F460);
    }
  }
}

unint64_t sub_269CB19F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28034F468;
  if (!qword_28034F468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034F468);
  }

  return result;
}

void sub_269CB1A4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!qword_28034F470)
  {
    sub_269CB1AB4(255, a2, a3);
    sub_269CB1B0C(255);
    v3 = sub_269D98D00();
    if (!v4)
    {
      atomic_store(v3, &qword_28034F470);
    }
  }
}

void sub_269CB1AB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!qword_28034F478)
  {
    sub_269CB197C(255, a2, a3);
    v3 = sub_269D99380();
    if (!v4)
    {
      atomic_store(v3, &qword_28034F478);
    }
  }
}

void sub_269CB1B0C(uint64_t a1)
{
  if (!qword_28034F480)
  {
    sub_269CB1B70(255);
    sub_269CB1C80();
    v1 = sub_269D98E00();
    if (!v2)
    {
      atomic_store(v1, &qword_28034F480);
    }
  }
}

void sub_269CB1B70(uint64_t a1)
{
  if (!qword_28034F488)
  {
    sub_269CB1BD0(255);
    v1 = sub_269D98D00();
    if (!v2)
    {
      atomic_store(v1, &qword_28034F488);
    }
  }
}

void sub_269CB1BD0(uint64_t a1)
{
  if (!qword_28034F490)
  {
    sub_269CB1C30();
    v1 = sub_269D98D00();
    if (!v2)
    {
      atomic_store(v1, &qword_28034F490);
    }
  }
}

void sub_269CB1C30()
{
  if (!qword_28034F498)
  {
    v0 = sub_269D99530();
    if (!v1)
    {
      atomic_store(v0, &qword_28034F498);
    }
  }
}

unint64_t sub_269CB1C80()
{
  result = qword_28034F4A0;
  if (!qword_28034F4A0)
  {
    sub_269CB1B70(255);
    sub_269CB1D00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034F4A0);
  }

  return result;
}

unint64_t sub_269CB1D00()
{
  result = qword_28034F4A8;
  if (!qword_28034F4A8)
  {
    sub_269CB1BD0(255);
    sub_269CB1DB0(v1, v2, v3);
    sub_269CB2C7C(&qword_28034F4B8, sub_269CB1C30, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034F4A8);
  }

  return result;
}

unint64_t sub_269CB1DB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28034F4B0;
  if (!qword_28034F4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034F4B0);
  }

  return result;
}

void sub_269CB1E04()
{
  if (!qword_28034F4C0)
  {
    sub_269CB2020(255);
    sub_269CB29E8(255);
    sub_269CB2210(255);
    sub_269CB23D4(255);
    sub_269CB2570(255);
    sub_269CB26DC(255);
    sub_269CB281C(255);
    sub_269CB28E0(255);
    v0 = MEMORY[0x277CDF6F0];
    sub_269CB2C7C(&qword_28034F510, sub_269CB28E0, MEMORY[0x277CDF6F0]);
    swift_getOpaqueTypeConformance2();
    sub_269CB2C7C(&qword_28034F528, sub_269CB29E8, v0);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_28034F4C0);
    }
  }
}

void sub_269CB2020(uint64_t a1)
{
  if (!qword_28034F4C8)
  {
    sub_269CB2210(255);
    sub_269CB29E8(255);
    sub_269CB23D4(255);
    sub_269CB2570(255);
    sub_269CB26DC(255);
    sub_269CB281C(255);
    sub_269CB28E0(255);
    v1 = MEMORY[0x277CDF6F0];
    sub_269CB2C7C(&qword_28034F510, sub_269CB28E0, MEMORY[0x277CDF6F0]);
    swift_getOpaqueTypeConformance2();
    sub_269CB2C7C(&qword_28034F528, sub_269CB29E8, v1);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_28034F4C8);
    }
  }
}

void sub_269CB2210(uint64_t a1)
{
  if (!qword_28034F4D0)
  {
    sub_269CB23D4(255);
    sub_269CB29E8(255);
    sub_269CB2570(255);
    sub_269CB26DC(255);
    sub_269CB281C(255);
    sub_269CB28E0(255);
    v1 = MEMORY[0x277CDF6F0];
    sub_269CB2C7C(&qword_28034F510, sub_269CB28E0, MEMORY[0x277CDF6F0]);
    swift_getOpaqueTypeConformance2();
    sub_269CB2C7C(&qword_28034F528, sub_269CB29E8, v1);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_28034F4D0);
    }
  }
}

void sub_269CB23D4(uint64_t a1)
{
  if (!qword_28034F4D8)
  {
    sub_269CB2570(255);
    sub_269CB29E8(255);
    sub_269CB26DC(255);
    sub_269CB281C(255);
    sub_269CB28E0(255);
    v1 = MEMORY[0x277CDF6F0];
    sub_269CB2C7C(&qword_28034F510, sub_269CB28E0, MEMORY[0x277CDF6F0]);
    swift_getOpaqueTypeConformance2();
    sub_269CB2C7C(&qword_28034F528, sub_269CB29E8, v1);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_28034F4D8);
    }
  }
}

void sub_269CB2570(uint64_t a1)
{
  if (!qword_28034F4E0)
  {
    sub_269CB26DC(255);
    sub_269CB29E8(255);
    sub_269CB281C(255);
    sub_269CB28E0(255);
    v1 = MEMORY[0x277CDF6F0];
    sub_269CB2C7C(&qword_28034F510, sub_269CB28E0, MEMORY[0x277CDF6F0]);
    swift_getOpaqueTypeConformance2();
    sub_269CB2C7C(&qword_28034F528, sub_269CB29E8, v1);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_28034F4E0);
    }
  }
}

void sub_269CB26DC(uint64_t a1)
{
  if (!qword_28034F4E8)
  {
    sub_269CB281C(255);
    sub_269CB29E8(255);
    sub_269CB28E0(255);
    v1 = MEMORY[0x277CDF6F0];
    sub_269CB2C7C(&qword_28034F510, sub_269CB28E0, MEMORY[0x277CDF6F0]);
    swift_getOpaqueTypeConformance2();
    sub_269CB2C7C(&qword_28034F528, sub_269CB29E8, v1);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_28034F4E8);
    }
  }
}

void sub_269CB281C(uint64_t a1)
{
  if (!qword_28034F4F0)
  {
    sub_269CB28E0(255);
    sub_269CB2C7C(&qword_28034F510, sub_269CB28E0, MEMORY[0x277CDF6F0]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_28034F4F0);
    }
  }
}

void sub_269CB28E0(uint64_t a1)
{
  if (!qword_28034F4F8)
  {
    sub_269CB2990();
    sub_269CB2C7C(&qword_28034F508, sub_269CB2990, MEMORY[0x277CDF848]);
    v1 = sub_269D98AF0();
    if (!v2)
    {
      atomic_store(v1, &qword_28034F4F8);
    }
  }
}

void sub_269CB2990()
{
  if (!qword_28034F500)
  {
    v0 = sub_269D98C30();
    if (!v1)
    {
      atomic_store(v0, &qword_28034F500);
    }
  }
}

void sub_269CB29E8(uint64_t a1)
{
  if (!qword_28034F518)
  {
    sub_269CB2AD8(255);
    sub_269CB2990();
    sub_269CB2C7C(&qword_28034F508, sub_269CB2990, MEMORY[0x277CDF848]);
    swift_getOpaqueTypeConformance2();
    v1 = sub_269D98AF0();
    if (!v2)
    {
      atomic_store(v1, &qword_28034F518);
    }
  }
}

void sub_269CB2AD8(uint64_t a1)
{
  if (!qword_28034F520)
  {
    sub_269CB2990();
    sub_269CB2C7C(&qword_28034F508, sub_269CB2990, MEMORY[0x277CDF848]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_28034F520);
    }
  }
}

unint64_t sub_269CB2B9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28034F538;
  if (!qword_28034F538)
  {
    sub_269CB1A4C(255, a2, a3);
    sub_269CB2C7C(&qword_28034F540, sub_269CB1AB4, MEMORY[0x277CE0520]);
    sub_269CB2C7C(&qword_28034F548, sub_269CB1B0C, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034F538);
  }

  return result;
}

uint64_t sub_269CB2C7C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_269CB2D10(uint64_t a1, uint64_t a2)
{
  sub_269CB1B0C(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_269CB2D74(uint64_t a1)
{
  sub_269CB1B0C(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id SleepSettingsModel.__allocating_init(sleepSettingsProvider:sleepHealthSettingsProvider:)(void *a1, uint64_t a2)
{
  v5 = a1[3];
  v6 = a1[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a1, v5);
  v8 = sub_269CB5948(v7, a2, v2, v5, v6);

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v8;
}

id SleepSettingsModel.__allocating_init(sleepStore:)(void *a1)
{
  v1 = a1;
  v2 = HKSPSleepStore.settings.getter();
  v3 = objc_allocWithZone(type metadata accessor for SleepSettingsProvider());
  v4 = SleepSettingsProvider.init(sleepStore:sleepSettings:)(v1, v2);
  sub_269D97D80();
  v5 = sub_269D97D70();
  v6 = objc_allocWithZone(type metadata accessor for SleepSettingsModel());
  v7 = sub_269CB5A60(v4, v5, v6);

  return v7;
}

id SleepSettingsModel.init(sleepSettingsProvider:sleepHealthSettingsProvider:)(void *a1, uint64_t a2)
{
  v5 = a1[3];
  v6 = a1[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a1, v5);
  v8 = MEMORY[0x28223BE20](v7, v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10, v8);
  v12 = sub_269CB57AC(v10, a2, v2, v5, v6);

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v12;
}

id SleepSettingsModel.__deallocating_deinit()
{
  v1 = sub_269D97D30();
  v2 = *(v1 - 8);
  v4 = MEMORY[0x28223BE20](v1, v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 104))(v6, *MEMORY[0x277D62620], v1, v4);

  v7 = v0;
  sub_269D97D50();

  (*(v2 + 8))(v6, v1);

  v8 = type metadata accessor for SleepSettingsModel();
  v10.receiver = v7;
  v10.super_class = v8;
  return objc_msgSendSuper2(&v10, sel_dealloc);
}

void (*sub_269CB32FC(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  v2 = OBJC_IVAR____TtC13SleepHealthUI18SleepSettingsModel_sleepSettings;
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = [*(v1 + v2) scheduledSleepMode];
  return sub_269CB3358;
}

void sub_269CB3394(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC13SleepHealthUI18SleepSettingsModel_sleepSettings);
  v4 = [v3 sleepModeOptions];
  v5 = 0x4000;
  if ((a1 & 1) == 0)
  {
    v5 = 0;
  }

  [v3 setSleepModeOptions_];

  sub_269CB4B04();
}

void (*sub_269CB3414(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = ([*(v1 + OBJC_IVAR____TtC13SleepHealthUI18SleepSettingsModel_sleepSettings) sleepModeOptions] & 0x4000) != 0;
  return sub_269CB3474;
}

void (*sub_269CB34D4(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  v2 = OBJC_IVAR____TtC13SleepHealthUI18SleepSettingsModel_sleepSettings;
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = [*(v1 + v2) sleepTracking];
  return sub_269CB3530;
}

void (*sub_269CB3574(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  v2 = OBJC_IVAR____TtC13SleepHealthUI18SleepSettingsModel_sleepSettings;
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = [*(v1 + v2) timeInBedTracking];
  return sub_269CB35D0;
}

void (*sub_269CB3614(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  v2 = OBJC_IVAR____TtC13SleepHealthUI18SleepSettingsModel_sleepSettings;
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = [*(v1 + v2) bedtimeReminders];
  return sub_269CB3670;
}

void (*sub_269CB36B4(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  v2 = OBJC_IVAR____TtC13SleepHealthUI18SleepSettingsModel_sleepSettings;
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = [*(v1 + v2) wakeUpResults];
  return sub_269CB3710;
}

uint64_t sub_269CB371C()
{
  v1 = sub_269D97A80();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = v0;

  sub_269D97D10();

  v6 = sub_269D97A50();
  (*(v2 + 8))(v5, v1);
  return v6;
}

uint64_t sub_269CB3834(uint64_t a1)
{
  v2 = sub_269D97A80();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = v1;

  sub_269D97D10();

  v7 = sub_269D97A70();
  (*(v3 + 8))(v6, v2);
  return v7 & 1;
}

uint64_t sub_269CB3954()
{

  sub_269D97D60();
}

uint64_t sub_269CB39A4(uint64_t a1)
{
  v19 = MEMORY[0x277D62578];
  sub_269CB6768(0, &unk_28034F420, MEMORY[0x277D62578]);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v18 - v4;
  v6 = sub_269D97A80();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v18 - v13;
  v20 = v1;

  sub_269D97D10();

  sub_269D97A60();
  v15 = *(v7 + 16);
  v15(v10, v14, v6);
  v15(v5, v10, v6);
  (*(v7 + 56))(v5, 0, 1, v6);

  sub_269D97D00();

  sub_269CB69DC(v5, &unk_28034F420, v19);
  v16 = *(v7 + 8);
  v16(v10, v6);
  return (v16)(v14, v6);
}

void sub_269CB3C1C(char a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC13SleepHealthUI18SleepSettingsModel_sleepSettings);
  v4 = [v3 sleepModeOptions];
  v5 = 8;
  if ((a1 & 1) == 0)
  {
    v5 = 0;
  }

  [v3 setSleepModeOptions_];

  sub_269CB4B04();
}

void (*sub_269CB3C9C(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = ([*(v1 + OBJC_IVAR____TtC13SleepHealthUI18SleepSettingsModel_sleepSettings) sleepModeOptions] & 8) != 0;
  return sub_269CB3CFC;
}

void (*sub_269CB3D5C(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  v2 = OBJC_IVAR____TtC13SleepHealthUI18SleepSettingsModel_sleepSettings;
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = [*(v1 + v2) chargingReminders];
  return sub_269CB3DB8;
}

void (*sub_269CB3DFC(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  v2 = OBJC_IVAR____TtC13SleepHealthUI18SleepSettingsModel_sleepSettings;
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = [*(v1 + v2) shareAcrossDevices];
  return sub_269CB3E58;
}

void sub_269CB3E9C(char a1, SEL *a2)
{
  [*(v2 + OBJC_IVAR____TtC13SleepHealthUI18SleepSettingsModel_sleepSettings) *a2];

  sub_269CB4B04();
}

void (*sub_269CB3EDC(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  v2 = OBJC_IVAR____TtC13SleepHealthUI18SleepSettingsModel_sleepSettings;
  *a1 = v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = [*(v1 + v2) watchSleepFeaturesEnabled];
  return sub_269CB3F38;
}

uint64_t sub_269CB3FAC(uint64_t (*a1)(uint64_t, uint64_t))
{
  v3 = (v1 + OBJC_IVAR____TtC13SleepHealthUI18SleepSettingsModel_sleepSettingsProvider);
  v4 = *(v1 + OBJC_IVAR____TtC13SleepHealthUI18SleepSettingsModel_sleepSettingsProvider + 24);
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1Tm(v3, v4);
  return a1(v4, v5) & 1;
}

uint64_t sub_269CB4008()
{
  v1 = sub_269D97D30();
  v44 = *(v1 - 8);
  v45 = v1;
  MEMORY[0x28223BE20](v1, v2);
  v43 = v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269CB65D4(0);
  v5 = *(v4 - 8);
  v41 = v4;
  v42 = v5;
  MEMORY[0x28223BE20](v4, v6);
  v40 = v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = MEMORY[0x277D85248];
  sub_269CB6768(0, &qword_280C0AED0, MEMORY[0x277D85248]);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = v34 - v10;
  sub_269CB67BC(0);
  v35 = v12;
  v39 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v13);
  v15 = v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = (v0 + OBJC_IVAR____TtC13SleepHealthUI18SleepSettingsModel_sleepSettingsProvider);
  v17 = *(v0 + OBJC_IVAR____TtC13SleepHealthUI18SleepSettingsModel_sleepSettingsProvider + 24);
  v18 = *(v0 + OBJC_IVAR____TtC13SleepHealthUI18SleepSettingsModel_sleepSettingsProvider + 32);
  __swift_project_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC13SleepHealthUI18SleepSettingsModel_sleepSettingsProvider), v17);
  v47 = (*(v18 + 16))(v17, v18);
  sub_269CB6874(0, &qword_28034DFE0, MEMORY[0x277CBCE30]);
  sub_269CB6968();
  v19 = sub_269D988B0();

  v47 = v19;
  sub_269C1B0B8(0, &qword_280C0AEB0, 0x277D85C78);
  v20 = sub_269D9AC40();
  v48 = v20;
  v37 = sub_269D9AC30();
  v21 = *(v37 - 8);
  v36 = *(v21 + 56);
  v38 = v21 + 56;
  v36(v11, 1, 1, v37);
  sub_269CB6874(0, &qword_28034F598, MEMORY[0x277CBCD88]);
  sub_269CB68F4();
  v34[1] = sub_269C2FC08();
  sub_269D988E0();
  sub_269CB69DC(v11, &qword_280C0AED0, v46);

  swift_allocObject();
  swift_unknownObjectWeakInit();
  v22 = MEMORY[0x277CBCD60];
  sub_269CB5CB8(&qword_28034F5A8, 255, sub_269CB67BC, MEMORY[0x277CBCD60]);
  v23 = v35;
  sub_269D98900();

  (*(v39 + 8))(v15, v23);
  swift_beginAccess();
  sub_269D98740();
  swift_endAccess();

  v24 = v16[3];
  v25 = v16[4];
  __swift_project_boxed_opaque_existential_1Tm(v16, v24);
  v47 = (*(v25 + 24))(v24, v25);
  sub_269CB6A40(0, &qword_28034E8C8, MEMORY[0x277CBCE30]);
  sub_269CB6AB0();
  v26 = sub_269D988B0();

  v47 = v26;
  v27 = sub_269D9AC40();
  v48 = v27;
  v36(v11, 1, 1, v37);
  sub_269CB6A40(0, &qword_28034F580, MEMORY[0x277CBCD88]);
  sub_269CB66F4();
  v28 = v40;
  sub_269D988E0();
  sub_269CB69DC(v11, &qword_280C0AED0, v46);

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_269CB5CB8(&qword_28034F5B8, 255, sub_269CB65D4, v22);
  v29 = v41;
  sub_269D98900();

  (*(v42 + 8))(v28, v29);
  swift_beginAccess();
  sub_269D98740();
  swift_endAccess();

  v31 = v43;
  v30 = v44;
  v32 = v45;
  (*(v44 + 104))(v43, *MEMORY[0x277D62620], v45);

  sub_269D97D40();

  return (*(v30 + 8))(v31, v32);
}

void sub_269CB46EC(void **a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_269CB47F4(v2);
  }
}

void *sub_269CB4748(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    type metadata accessor for SleepSettingsModel();
    sub_269CB5CB8(&qword_28034F568, v4, type metadata accessor for SleepSettingsModel, &protocol conformance descriptor for SleepSettingsModel);
    sub_269D98770();

    sub_269D98810();
  }

  return result;
}

void sub_269CB47F4(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  [a1 mutableCopy];
  sub_269D9AED0();
  swift_unknownObjectRelease();
  sub_269C1B0B8(0, &qword_28034F2C0, 0x277D62498);
  if (swift_dynamicCast())
  {
    v4 = v27;
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D62498]) init];
  }

  v5 = OBJC_IVAR____TtC13SleepHealthUI18SleepSettingsModel_sleepSettings;
  v6 = *(v2 + OBJC_IVAR____TtC13SleepHealthUI18SleepSettingsModel_sleepSettings);
  v7 = sub_269D9ADD0();

  if ((v7 & 1) == 0)
  {
    if (qword_280C0B218 != -1)
    {
      swift_once();
    }

    v8 = sub_269D98250();
    __swift_project_value_buffer(v8, qword_280C0B220);
    v9 = v4;
    v10 = sub_269D98230();
    v11 = sub_269D9AB40();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v28[0] = v26;
      *v12 = 136446466;
      v13 = sub_269D9B4D0();
      v15 = sub_269C2EACC(v13, v14, v28);

      *(v12 + 4) = v15;
      *(v12 + 12) = 2082;
      v16 = v9;
      v17 = [v16 description];
      v18 = sub_269D9A630();
      v25 = v11;
      v20 = v19;

      v21 = sub_269C2EACC(v18, v20, v28);

      *(v12 + 14) = v21;
      _os_log_impl(&dword_269C18000, v10, v25, "[%{public}s] Updating sleep settings: %{public}s", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D652460](v26, -1, -1);
      MEMORY[0x26D652460](v12, -1, -1);
    }

    v22 = *(v2 + v5);
    *(v2 + v5) = v9;
    v23 = v9;

    type metadata accessor for SleepSettingsModel();
    sub_269CB5CB8(&qword_28034F568, v24, type metadata accessor for SleepSettingsModel, &protocol conformance descriptor for SleepSettingsModel);
    sub_269D98770();
    sub_269D98810();
  }
}

void sub_269CB4B04()
{
  ObjectType = swift_getObjectType();
  if (qword_280C0B218 != -1)
  {
    swift_once();
  }

  v2 = sub_269D98250();
  __swift_project_value_buffer(v2, qword_280C0B220);
  v3 = v0;
  v4 = sub_269D98230();
  v5 = sub_269D9AB40();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v24[0] = v7;
    *v6 = 136446466;
    v8 = sub_269D9B4D0();
    v10 = sub_269C2EACC(v8, v9, v24);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2082;
    v11 = *&v3[OBJC_IVAR____TtC13SleepHealthUI18SleepSettingsModel_sleepSettings];
    v12 = [v11 description];
    v13 = sub_269D9A630();
    v15 = v14;

    v16 = sub_269C2EACC(v13, v15, v24);

    *(v6 + 14) = v16;
    _os_log_impl(&dword_269C18000, v4, v5, "[%{public}s] Saving sleep settings: %{public}s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D652460](v7, -1, -1);
    MEMORY[0x26D652460](v6, -1, -1);
  }

  v17 = *&v3[OBJC_IVAR____TtC13SleepHealthUI18SleepSettingsModel_sleepSettingsProvider + 24];
  v18 = *&v3[OBJC_IVAR____TtC13SleepHealthUI18SleepSettingsModel_sleepSettingsProvider + 32];
  __swift_project_boxed_opaque_existential_1Tm(&v3[OBJC_IVAR____TtC13SleepHealthUI18SleepSettingsModel_sleepSettingsProvider], v17);
  v19 = (*(v18 + 8))(v17, v18);
  v20 = *&v3[OBJC_IVAR____TtC13SleepHealthUI18SleepSettingsModel_sleepSettings];
  v21 = swift_allocObject();
  *(v21 + 16) = ObjectType;
  v24[4] = sub_269CB6B88;
  v24[5] = v21;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 1107296256;
  v24[2] = sub_269C7A600;
  v24[3] = &block_descriptor_15;
  v22 = _Block_copy(v24);
  v23 = v20;

  [v19 saveCurrentSleepSettings:v23 completion:v22];
  _Block_release(v22);
}

void sub_269CB4DEC(char a1, id a2, uint64_t a3)
{
  if (a1)
  {
    if (qword_280C0B218 != -1)
    {
      swift_once();
    }

    v3 = sub_269D98250();
    __swift_project_value_buffer(v3, qword_280C0B220);
    v29 = sub_269D98230();
    v4 = sub_269D9AB40();
    if (os_log_type_enabled(v29, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v32 = v6;
      *v5 = 136446210;
      v7 = sub_269D9B4D0();
      v9 = sub_269C2EACC(v7, v8, &v32);

      *(v5 + 4) = v9;
      _os_log_impl(&dword_269C18000, v29, v4, "[%{public}s] Successfully saved sleep settings.", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v6);
      MEMORY[0x26D652460](v6, -1, -1);
      MEMORY[0x26D652460](v5, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (a2)
    {
      v10 = a2;
    }

    else
    {
      type metadata accessor for HKError(0);
      v31 = 0;
      sub_269C581B0(MEMORY[0x277D84F90]);
      sub_269CB5CB8(&qword_28034DB88, 255, type metadata accessor for HKError, &unk_269D9FCB8);
      sub_269D97340();
      a2 = 0;
      v10 = v32;
    }

    v11 = a2;
    if (qword_280C0B218 != -1)
    {
      swift_once();
    }

    v12 = sub_269D98250();
    __swift_project_value_buffer(v12, qword_280C0B220);
    v13 = v10;
    v14 = sub_269D98230();
    v15 = sub_269D9AB60();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v32 = v17;
      *v16 = 136446466;
      v18 = sub_269D9B4D0();
      v20 = sub_269C2EACC(v18, v19, &v32);

      *(v16 + 4) = v20;
      *(v16 + 12) = 2082;
      ErrorValue = swift_getErrorValue();
      v22 = MEMORY[0x28223BE20](ErrorValue, v30);
      (*(v24 + 16))(&v28 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), v22);
      v25 = sub_269D9A660();
      v27 = sub_269C2EACC(v25, v26, &v32);

      *(v16 + 14) = v27;
      _os_log_impl(&dword_269C18000, v14, v15, "[%{public}s] Error saving sleep settings: %{public}s", v16, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D652460](v17, -1, -1);
      MEMORY[0x26D652460](v16, -1, -1);
    }

    else
    {
    }
  }
}

void sub_269CB5220(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v6 = v5;
  v33 = a5;
  v11 = sub_269D97D30();
  v12 = *(v11 - 8);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 104))(v16, *MEMORY[0x277D62620], v11, v14);
  v17 = sub_269D97D20();
  v19 = v18;
  (*(v12 + 8))(v16, v11);
  if (!a2)
  {

    v22 = 0;
LABEL_9:
    sub_269CB5C00(a3, v35);
    v23 = v36;
    if (v36)
    {
      v24 = __swift_project_boxed_opaque_existential_1Tm(v35, v36);
      v25 = *(v23 - 8);
      v26 = MEMORY[0x28223BE20](v24, v24);
      v28 = &v32 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v25 + 16))(v28, v26);
      v29 = sub_269D9B260();
      (*(v25 + 8))(v28, v23);
      __swift_destroy_boxed_opaque_existential_1Tm(v35);
      if (!a4)
      {
LABEL_12:
        v30 = type metadata accessor for SleepSettingsModel();
        v34.receiver = v6;
        v34.super_class = v30;
        objc_msgSendSuper2(&v34, sel_observeValueForKeyPath_ofObject_change_context_, v22, v29, a4, v33);

        swift_unknownObjectRelease();
        return;
      }
    }

    else
    {
      v29 = 0;
      if (!a4)
      {
        goto LABEL_12;
      }
    }

    type metadata accessor for NSKeyValueChangeKey(0);
    sub_269CB5CB8(&qword_28034DBB0, 255, type metadata accessor for NSKeyValueChangeKey, &unk_269D9FBA8);
    a4 = sub_269D9A480();
    goto LABEL_12;
  }

  if (v17 == a1 && v19 == a2)
  {
  }

  else
  {
    v21 = sub_269D9B280();

    if ((v21 & 1) == 0)
    {
      v22 = sub_269D9A5F0();
      goto LABEL_9;
    }
  }

  type metadata accessor for SleepSettingsModel();
  sub_269CB5CB8(&qword_28034F568, v31, type metadata accessor for SleepSettingsModel, &protocol conformance descriptor for SleepSettingsModel);
  sub_269D98770();
  sub_269D98810();
}

id SleepSettingsModel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_269CB5770@<X0>(uint64_t *a3@<X8>)
{
  type metadata accessor for SleepSettingsModel();
  result = sub_269D98770();
  *a3 = result;
  return result;
}

id sub_269CB57AC(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  v17[3] = a4;
  v17[4] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v17);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a1, a4);
  *&a3[OBJC_IVAR____TtC13SleepHealthUI18SleepSettingsModel_subscriptions] = MEMORY[0x277D84FA0];
  sub_269C2DB5C(v17, &a3[OBJC_IVAR____TtC13SleepHealthUI18SleepSettingsModel_sleepSettingsProvider]);
  *&a3[OBJC_IVAR____TtC13SleepHealthUI18SleepSettingsModel_sleepHealthSettingsProvider] = a2;

  v11 = SleepSettingsProviding.sleepSettings.getter(a4, a5);
  [v11 mutableCopy];
  sub_269D9AED0();
  swift_unknownObjectRelease();
  sub_269C1B0B8(0, &qword_28034F2C0, 0x277D62498);
  if (swift_dynamicCast())
  {
    v12 = v16;
  }

  else
  {
    v12 = [objc_allocWithZone(MEMORY[0x277D62498]) init];
  }

  *&a3[OBJC_IVAR____TtC13SleepHealthUI18SleepSettingsModel_sleepSettings] = v12;
  v15.receiver = a3;
  v15.super_class = type metadata accessor for SleepSettingsModel();
  v13 = objc_msgSendSuper2(&v15, sel_init);
  sub_269CB4008();

  __swift_destroy_boxed_opaque_existential_1Tm(v17);
  return v13;
}

id sub_269CB5948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a4 - 8);
  MEMORY[0x28223BE20](a1, a2);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = objc_allocWithZone(type metadata accessor for SleepSettingsModel());
  (*(v9 + 16))(v11, a1, a4);
  return sub_269CB57AC(v11, a2, v12, a4, a5);
}

id sub_269CB5A60(uint64_t a1, uint64_t a2, char *a3)
{
  v12[3] = type metadata accessor for SleepSettingsProvider();
  v12[4] = &protocol witness table for SleepSettingsProvider;
  v12[0] = a1;
  *&a3[OBJC_IVAR____TtC13SleepHealthUI18SleepSettingsModel_subscriptions] = MEMORY[0x277D84FA0];
  sub_269C2DB5C(v12, &a3[OBJC_IVAR____TtC13SleepHealthUI18SleepSettingsModel_sleepSettingsProvider]);
  *&a3[OBJC_IVAR____TtC13SleepHealthUI18SleepSettingsModel_sleepHealthSettingsProvider] = a2;

  sub_269D987C0();
  [v11 mutableCopy];
  sub_269D9AED0();
  swift_unknownObjectRelease();
  sub_269C1B0B8(0, &qword_28034F2C0, 0x277D62498);
  if (swift_dynamicCast())
  {
    v6 = v10;
  }

  else
  {
    v6 = [objc_allocWithZone(MEMORY[0x277D62498]) init];
  }

  *&a3[OBJC_IVAR____TtC13SleepHealthUI18SleepSettingsModel_sleepSettings] = v6;
  v9.receiver = a3;
  v9.super_class = type metadata accessor for SleepSettingsModel();
  v7 = objc_msgSendSuper2(&v9, sel_init);
  sub_269CB4008();

  __swift_destroy_boxed_opaque_existential_1Tm(v12);
  return v7;
}

uint64_t sub_269CB5C00(uint64_t a1, uint64_t a2)
{
  sub_269CB5C64();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_269CB5C64()
{
  if (!qword_28034DC08)
  {
    v0 = sub_269D9AE60();
    if (!v1)
    {
      atomic_store(v0, &qword_28034DC08);
    }
  }
}

uint64_t sub_269CB5CB8(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id keypath_getTm_0@<X0>(void *a1@<X0>, SEL *a2@<X3>, _BYTE *a3@<X8>)
{
  result = [*(*a1 + OBJC_IVAR____TtC13SleepHealthUI18SleepSettingsModel_sleepSettings) *a2];
  *a3 = result;
  return result;
}

void sub_269CB65D4(uint64_t a1)
{
  if (!qword_28034F578)
  {
    sub_269CB6A40(255, &qword_28034F580, MEMORY[0x277CBCD88]);
    sub_269C1B0B8(255, &qword_280C0AEB0, 0x277D85C78);
    sub_269CB66F4();
    sub_269C2FC08();
    v1 = sub_269D98710();
    if (!v2)
    {
      atomic_store(v1, &qword_28034F578);
    }
  }
}

void sub_269CB668C(uint64_t a1)
{
  if (!qword_28034E8D0)
  {
    sub_269C1B0B8(255, &qword_28034E8D8, 0x277D624E8);
    v1 = sub_269D9AE60();
    if (!v2)
    {
      atomic_store(v1, &qword_28034E8D0);
    }
  }
}

unint64_t sub_269CB66F4()
{
  result = qword_28034F588;
  if (!qword_28034F588)
  {
    sub_269CB6A40(255, &qword_28034F580, MEMORY[0x277CBCD88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034F588);
  }

  return result;
}

void sub_269CB6768(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_269D9AE60();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_269CB67BC(uint64_t a1)
{
  if (!qword_28034F590)
  {
    sub_269CB6874(255, &qword_28034F598, MEMORY[0x277CBCD88]);
    sub_269C1B0B8(255, &qword_280C0AEB0, 0x277D85C78);
    sub_269CB68F4();
    sub_269C2FC08();
    v1 = sub_269D98710();
    if (!v2)
    {
      atomic_store(v1, &qword_28034F590);
    }
  }
}

void sub_269CB6874(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void, void))
{
  if (!*a2)
  {
    v6 = sub_269C1B0B8(255, &qword_28034E8C0, 0x277D62520);
    v7 = a3(a1, v6, MEMORY[0x277D84A98], MEMORY[0x277D84AC0]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_269CB68F4()
{
  result = qword_28034F5A0;
  if (!qword_28034F5A0)
  {
    sub_269CB6874(255, &qword_28034F598, MEMORY[0x277CBCD88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034F5A0);
  }

  return result;
}

unint64_t sub_269CB6968()
{
  result = qword_28034DFE8;
  if (!qword_28034DFE8)
  {
    sub_269CB6874(255, &qword_28034DFE0, MEMORY[0x277CBCE30]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034DFE8);
  }

  return result;
}

uint64_t sub_269CB69DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_269CB6768(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_269CB6A40(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void, void))
{
  if (!*a2)
  {
    sub_269CB668C(255);
    v7 = a3(a1, v6, MEMORY[0x277D84A98], MEMORY[0x277D84AC0]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_269CB6AB0()
{
  result = qword_28034F5B0;
  if (!qword_28034F5B0)
  {
    sub_269CB6A40(255, &qword_28034E8C8, MEMORY[0x277CBCE30]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034F5B0);
  }

  return result;
}

uint64_t sub_269CB6B2C(uint64_t a1)
{
  sub_269CB5C64();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void *WeatherPrefetcher.__allocating_init(model:scheduler:)(char *a1, void *a2)
{
  swift_allocObject();
  v4 = sub_269CB9254(a1, a2);

  return v4;
}

uint64_t sub_269CB6C10@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_269D98880(a2);
}

uint64_t sub_269CB6C8C(uint64_t a1, uint64_t *a2)
{
  sub_269C6C9C4(0);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v12 - v9;
  sub_269CBA090(a1, &v12 - v9, sub_269C6C9C4);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_269CBA090(v10, v6, sub_269C6C9C4);

  sub_269D98890();
  return sub_269CB9B0C(v10, sub_269C6C9C4);
}

uint64_t sub_269CB6DB8@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_269D98880(a1);
}

uint64_t sub_269CB6E30(uint64_t a1)
{
  sub_269C6C9C4(0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_269CBA090(a1, v5, sub_269C6C9C4);

  sub_269D98890();
  return sub_269CB9B0C(a1, sub_269C6C9C4);
}

void (*sub_269CB6F20(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_269D98870();
  return sub_269C458D0;
}

uint64_t sub_269CB6FC4(void *a1)
{
  swift_beginAccess();
  sub_269CB9A10(0, &qword_28034EA40, sub_269C6C9C4, MEMORY[0x277CBCED0]);
  sub_269D98850();
  return swift_endAccess();
}

uint64_t sub_269CB7060(_BYTE *a1, uint64_t *a2)
{
  sub_269C7C508(0);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9, v10);
  v13 = &v16 - v12;
  v14 = *(v5 + 16);
  (v14)(&v16 - v12, a1, v4, v11);
  v14(v8, v13, v4);
  swift_beginAccess();
  sub_269CB9A10(0, &qword_28034EA40, sub_269C6C9C4, MEMORY[0x277CBCED0]);
  sub_269D98860();
  swift_endAccess();
  return (*(v5 + 8))(v13, v4);
}

uint64_t sub_269CB71FC()
{
  swift_beginAccess();
  sub_269CB9A10(0, &qword_28034EA40, sub_269C6C9C4, MEMORY[0x277CBCED0]);
  sub_269D98850();
  return swift_endAccess();
}

uint64_t sub_269CB7294(uint64_t a1)
{
  sub_269C7C508(0);
  v3 = v2;
  v4 = *(v2 - 8);
  v6 = MEMORY[0x28223BE20](v2, v5);
  (*(v4 + 16))(&v9 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3, v6);
  swift_beginAccess();
  sub_269CB9A10(0, &qword_28034EA40, sub_269C6C9C4, MEMORY[0x277CBCED0]);
  sub_269D98860();
  swift_endAccess();
  return (*(v4 + 8))(a1, v3);
}

void (*sub_269CB73E8(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  sub_269C7C508(0);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC13SleepHealthUI17WeatherPrefetcher__currentWeather;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  sub_269CB9A10(0, &qword_28034EA40, sub_269C6C9C4, MEMORY[0x277CBCED0]);
  v5[16] = v11;
  sub_269D98850();
  swift_endAccess();
  return sub_269C45F6C;
}

void *WeatherPrefetcher.init(model:scheduler:)(char *a1, void *a2)
{
  v4 = sub_269CB9254(a1, a2);

  return v4;
}

uint64_t sub_269CB75B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v55 = a3;
  sub_269CB9A74(0);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v56 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269C6C9C4(0);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v54 - v14;
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v54 - v18;
  v20 = type metadata accessor for CurrentWeatherModel(0);
  v57 = *(v20 - 8);
  v58 = v20;
  MEMORY[0x28223BE20](v20, v21);
  v23 = &v54 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24, v25);
  v27 = &v54 - v26;
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_269CBA090(a1, v19, sub_269C6C9C4);
  if ((*(v57 + 48))(v19, 1, v58) == 1)
  {
    v28 = sub_269C6C9C4;
    v29 = v19;
  }

  else
  {
    sub_269CB9AA8(v19, v27);
    if (qword_28034D738 != -1)
    {
      swift_once();
    }

    v30 = sub_269D98250();
    __swift_project_value_buffer(v30, qword_280351208);
    v54 = v27;
    sub_269CBA090(v27, v23, type metadata accessor for CurrentWeatherModel);
    v31 = sub_269D98230();
    v32 = sub_269D9AB80();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v59[0] = v34;
      *v33 = 136446466;
      v35 = sub_269D9B4D0();
      v37 = sub_269C2EACC(v35, v36, v59);
      v55 = a2;
      v38 = v11;
      v39 = v15;
      v40 = v37;

      *(v33 + 4) = v40;
      *(v33 + 12) = 2082;
      v41 = sub_269CB7BE8();
      v43 = v42;
      sub_269CB9B0C(v23, type metadata accessor for CurrentWeatherModel);
      v44 = sub_269C2EACC(v41, v43, v59);
      v15 = v39;
      v11 = v38;

      *(v33 + 14) = v44;
      _os_log_impl(&dword_269C18000, v31, v32, "[%{public}s] weather model updated: %{public}s", v33, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D652460](v34, -1, -1);
      MEMORY[0x26D652460](v33, -1, -1);
    }

    else
    {

      sub_269CB9B0C(v23, type metadata accessor for CurrentWeatherModel);
    }

    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    v46 = v54;
    if (Strong)
    {
      v47 = Strong;
      v48 = v56;
      sub_269D97550();
      v49 = sub_269D97580();
      (*(*(v49 - 8) + 56))(v48, 0, 1, v49);
      v50 = OBJC_IVAR____TtC13SleepHealthUI17WeatherPrefetcher_lastFetchedDate;
      swift_beginAccess();
      sub_269CB9F30(v48, v47 + v50);
      swift_endAccess();
    }

    swift_beginAccess();
    v51 = swift_weakLoadStrong();
    if (v51)
    {
      v52 = *(v51 + 16);

      sub_269C6DA78();
    }

    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_269CBA090(v46, v15, type metadata accessor for CurrentWeatherModel);
      (*(v57 + 56))(v15, 0, 1, v58);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_269CBA090(v15, v11, sub_269C6C9C4);
      sub_269D98890();
      sub_269CB9B0C(v15, sub_269C6C9C4);
    }

    v28 = type metadata accessor for CurrentWeatherModel;
    v29 = v46;
  }

  sub_269CB9B0C(v29, v28);
}

uint64_t sub_269CB7BE8()
{
  sub_269CB9F94(0);
  v1 = *(v0 - 8);
  v72 = v0;
  v73 = v1;
  MEMORY[0x28223BE20](v0, v2);
  v70 = &v63 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v5);
  v71 = &v63 - v6;
  v7 = sub_269D979B0();
  v8 = *(v7 - 8);
  v67 = v7;
  v68 = v8;
  MEMORY[0x28223BE20](v7, v9);
  v65 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_269D97810();
  v11 = *(v64 - 8);
  MEMORY[0x28223BE20](v64, v12);
  v14 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_269D97580();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269CBA014(0);
  MEMORY[0x28223BE20](v20 - 8, v21);
  v69 = &v63 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23, v24);
  v66 = &v63 - v25;
  MEMORY[0x28223BE20](v26, v27);
  v74 = &v63 - v28;
  v29 = type metadata accessor for CurrentWeatherModel(0);
  sub_269D97900();
  sub_269D97800();
  v30 = v71;
  sub_269D97A00();
  (*(v11 + 8))(v14, v64);
  (*(v16 + 8))(v19, v15);
  v31 = v72;
  v77 = 0;
  v78 = 0xE000000000000000;
  sub_269D9B000();

  v77 = 60;
  v78 = 0xE100000000000000;
  v75 = v29;
  sub_269CBA048();
  v32 = sub_269D9A660();
  MEMORY[0x26D650930](v32);

  MEMORY[0x26D650930](0x7469646E6F63203ALL, 0xED0000203A6E6F69);
  v33 = v65;
  sub_269D97910();
  sub_269CB9E04(&qword_28034F600, MEMORY[0x277CE3328], MEMORY[0x277CE3358]);
  v34 = v67;
  v35 = sub_269D9B230();
  MEMORY[0x26D650930](v35);

  v36 = v33;
  v37 = v73;
  (*(v68 + 8))(v36, v34);
  MEMORY[0x26D650930](0x203A706D6574202CLL, 0xE800000000000000);
  sub_269D978E0();
  sub_269CB9E04(&qword_28034F608, sub_269CB9F94, MEMORY[0x277CC8800]);
  v38 = sub_269D9B230();
  MEMORY[0x26D650930](v38);

  v39 = *(v37 + 8);
  v73 = v37 + 8;
  v39(v30, v31);
  MEMORY[0x26D650930](0x203A776F6C20, 0xE600000000000000);
  v40 = v66;
  sub_269CBA090(v74, v66, sub_269CBA014);
  v41 = sub_269D978A0();
  v42 = *(v41 - 8);
  v43 = *(v42 + 48);
  v44 = v43(v40, 1, v41);
  if (v44 == 1)
  {
    sub_269CB9B0C(v40, sub_269CBA014);
    v45 = 0;
  }

  else
  {
    sub_269D97880();
    v68 = v42;
    v46 = v39;
    v47 = v70;
    sub_269D96F20();
    v48 = v72;
    v46(v30, v72);
    sub_269D96F00();
    v45 = v49;
    v50 = v47;
    v39 = v46;
    v42 = v68;
    v39(v50, v48);
    (*(v42 + 8))(v40, v41);
  }

  v75 = v45;
  v76 = v44 == 1;
  sub_269CBA0F8();
  v51 = sub_269D9A660();
  MEMORY[0x26D650930](v51);

  MEMORY[0x26D650930](0x203A6867696820, 0xE700000000000000);
  v52 = v69;
  sub_269CBA090(v74, v69, sub_269CBA014);
  v53 = v43(v52, 1, v41);
  if (v53 == 1)
  {
    sub_269CB9B0C(v52, sub_269CBA014);
    v54 = 0;
  }

  else
  {
    v55 = v71;
    sub_269D97890();
    v56 = v70;
    sub_269D96F20();
    v57 = v55;
    v58 = v72;
    v39(v57, v72);
    sub_269D96F00();
    v54 = v59;
    v39(v56, v58);
    (*(v42 + 8))(v52, v41);
  }

  v75 = v54;
  v76 = v53 == 1;
  v60 = sub_269D9A660();
  MEMORY[0x26D650930](v60);

  MEMORY[0x26D650930](62, 0xE100000000000000);
  v61 = v77;
  sub_269CB9B0C(v74, sub_269CBA014);
  return v61;
}

void sub_269CB83A8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, void (*a5)(uint64_t))
{
  sub_269D9A8E0();
  sub_269D9A8D0();
  sub_269D9A880();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_28034D738 != -1)
  {
    swift_once();
  }

  v7 = sub_269D98250();
  __swift_project_value_buffer(v7, qword_280351208);
  v8 = sub_269D98230();
  v9 = sub_269D9AB80();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18[0] = v11;
    *v10 = 136446210;
    v12 = sub_269D9B4D0();
    v14 = sub_269C2EACC(v12, v13, v18);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_269C18000, v8, v9, a4, v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x26D652460](v11, -1, -1);
    MEMORY[0x26D652460](v10, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v16 = *(Strong + 16);

    a5(v17);
  }

  else
  {
  }
}

void sub_269CB85C4()
{
  v1 = v0;
  v2 = *v0;
  sub_269CB9A74(0);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v93 = &v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_269D97580();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v87 = &v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v87 - v12;
  sub_269C6C9C4(0);
  MEMORY[0x28223BE20](v14 - 8, v15);
  v90 = &v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v18);
  v91 = &v87 - v19;
  MEMORY[0x28223BE20](v20, v21);
  v95 = (&v87 - v22);
  v23 = type metadata accessor for CurrentWeatherModel(0);
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23, v25);
  v27 = &v87 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28034D738 != -1)
  {
    swift_once();
  }

  v28 = sub_269D98250();
  v96 = __swift_project_value_buffer(v28, qword_280351208);
  v29 = sub_269D98230();
  v30 = sub_269D9AB80();
  v31 = os_log_type_enabled(v29, v30);
  v94 = v2;
  if (v31)
  {
    v32 = swift_slowAlloc();
    v88 = v7;
    v33 = v32;
    v34 = swift_slowAlloc();
    v92 = v23;
    v35 = v34;
    v97[0] = v34;
    *v33 = 136446210;
    v36 = sub_269D9B4D0();
    v89 = v27;
    v38 = v24;
    v39 = v1;
    v40 = v6;
    v41 = sub_269C2EACC(v36, v37, v97);
    v27 = v89;

    *(v33 + 4) = v41;
    v6 = v40;
    v1 = v39;
    v24 = v38;
    _os_log_impl(&dword_269C18000, v29, v30, "[%{public}s] refreshing weather", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v35);
    v42 = v35;
    v23 = v92;
    MEMORY[0x26D652460](v42, -1, -1);
    v43 = v33;
    v7 = v88;
    MEMORY[0x26D652460](v43, -1, -1);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v44 = v95;
  sub_269D98880(v95);

  if ((*(v24 + 48))(v44, 1, v23) == 1)
  {
    v45 = sub_269C6C9C4;
    v46 = v44;
LABEL_9:
    sub_269CB9B0C(v46, v45);
    v50 = sub_269D98230();
    v51 = sub_269D9AB80();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v98 = v53;
      *v52 = 136446210;
      v54 = sub_269D9B4D0();
      v56 = sub_269C2EACC(v54, v55, &v98);

      *(v52 + 4) = v56;
      _os_log_impl(&dword_269C18000, v50, v51, "[%{public}s] weather not prefetched, fetching now", v52, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v53);
      MEMORY[0x26D652460](v53, -1, -1);
      MEMORY[0x26D652460](v52, -1, -1);
    }

    sub_269C6D47C();
    return;
  }

  sub_269CB9AA8(v44, v27);
  v47 = OBJC_IVAR____TtC13SleepHealthUI17WeatherPrefetcher_lastFetchedDate;
  swift_beginAccess();
  v48 = v1 + v47;
  v49 = v93;
  sub_269CBA090(v48, v93, sub_269CB9A74);
  if ((*(v7 + 48))(v49, 1, v6) == 1)
  {
    sub_269CB9B0C(v27, type metadata accessor for CurrentWeatherModel);
    v45 = sub_269CB9A74;
    v46 = v49;
    goto LABEL_9;
  }

  (*(v7 + 32))(v13, v49, v6);
  sub_269D974F0();
  if (v57 <= -300.0)
  {
    v95 = v24;
    v92 = v23;
    v69 = v87;
    (*(v7 + 16))(v87, v13, v6);
    v70 = sub_269D98230();
    v71 = sub_269D9AB80();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v89 = v27;
      v73 = v72;
      v96 = swift_slowAlloc();
      v98 = v96;
      *v73 = 136446466;
      v74 = sub_269D9B4D0();
      v76 = v69;
      v77 = sub_269C2EACC(v74, v75, &v98);

      *(v73 + 4) = v77;
      *(v73 + 12) = 2080;
      sub_269CB9E04(&qword_280C0B3E8, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v78 = sub_269D9B230();
      v80 = v79;
      v81 = v76;
      v82 = *(v7 + 8);
      v82(v81, v6);
      v83 = sub_269C2EACC(v78, v80, &v98);

      *(v73 + 14) = v83;
      _os_log_impl(&dword_269C18000, v70, v71, "[%{public}s] weather was prefetched at %s and is stale, fetching now", v73, 0x16u);
      v84 = v96;
      swift_arrayDestroy();
      MEMORY[0x26D652460](v84, -1, -1);
      v85 = v73;
      v27 = v89;
      MEMORY[0x26D652460](v85, -1, -1);
    }

    else
    {

      v82 = *(v7 + 8);
      v82(v69, v6);
    }

    v86 = v91;
    (v95[7])(v91, 1, 1, v92);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_269CBA090(v86, v90, sub_269C6C9C4);

    sub_269D98890();
    sub_269CB9B0C(v86, sub_269C6C9C4);
    sub_269C6D47C();
    v82(v13, v6);
  }

  else
  {
    v58 = sub_269D98230();
    v59 = sub_269D9AB80();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v92 = v23;
      v96 = v61;
      v98 = v61;
      *v60 = 136446210;
      v62 = sub_269D9B4D0();
      v88 = v7;
      v64 = v24;
      v65 = v27;
      v66 = sub_269C2EACC(v62, v63, &v98);
      v7 = v88;

      *(v60 + 4) = v66;
      v27 = v65;
      v24 = v64;
      _os_log_impl(&dword_269C18000, v58, v59, "[%{public}s] weather was prefetched, updating", v60, 0xCu);
      v67 = v96;
      __swift_destroy_boxed_opaque_existential_1Tm(v96);
      v23 = v92;
      MEMORY[0x26D652460](v67, -1, -1);
      MEMORY[0x26D652460](v60, -1, -1);
    }

    v68 = v91;
    sub_269CBA090(v27, v91, type metadata accessor for CurrentWeatherModel);
    (*(v24 + 56))(v68, 0, 1, v23);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_269CBA090(v68, v90, sub_269C6C9C4);

    sub_269D98890();
    sub_269CB9B0C(v68, sub_269C6C9C4);
    (*(v7 + 8))(v13, v6);
  }

  sub_269CB9B0C(v27, type metadata accessor for CurrentWeatherModel);
}

uint64_t WeatherPrefetcher.deinit()
{
  v1 = OBJC_IVAR____TtC13SleepHealthUI17WeatherPrefetcher__currentWeather;
  sub_269CB9A10(0, &qword_28034EA40, sub_269C6C9C4, MEMORY[0x277CBCED0]);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_269CB9B0C(v0 + OBJC_IVAR____TtC13SleepHealthUI17WeatherPrefetcher_lastFetchedDate, sub_269CB9A74);

  return v0;
}

uint64_t WeatherPrefetcher.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC13SleepHealthUI17WeatherPrefetcher__currentWeather;
  sub_269CB9A10(0, &qword_28034EA40, sub_269C6C9C4, MEMORY[0x277CBCED0]);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_269CB9B0C(v0 + OBJC_IVAR____TtC13SleepHealthUI17WeatherPrefetcher_lastFetchedDate, sub_269CB9A74);

  return swift_deallocClassInstance();
}

uint64_t sub_269CB9214@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for WeatherPrefetcher(0);
  result = sub_269D98770();
  *a2 = result;
  return result;
}

void *sub_269CB9254(char *a1, void *a2)
{
  v3 = v2;
  v49 = a2;
  v53 = *v2;
  sub_269C7C508(0);
  v51 = *(v5 - 8);
  v52 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v50 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269CB9A10(0, &qword_28034EA40, sub_269C6C9C4, MEMORY[0x277CBCED0]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v49 - v12;
  sub_269C6C9C4(0);
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v19);
  v21 = &v49 - v20;
  v22 = OBJC_IVAR____TtC13SleepHealthUI17WeatherPrefetcher__currentWeather;
  v23 = type metadata accessor for CurrentWeatherModel(0);
  (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
  sub_269CBA090(v21, v17, sub_269C6C9C4);
  sub_269D98840();
  sub_269CB9B0C(v21, sub_269C6C9C4);
  (*(v10 + 32))(v3 + v22, v13, v9);
  v24 = OBJC_IVAR____TtC13SleepHealthUI17WeatherPrefetcher_lastFetchedDate;
  v25 = sub_269D97580();
  (*(*(v25 - 8) + 56))(v3 + v24, 1, 1, v25);
  *(v3 + OBJC_IVAR____TtC13SleepHealthUI17WeatherPrefetcher_cancellables) = MEMORY[0x277D84FA0];
  if (qword_28034D738 != -1)
  {
    swift_once();
  }

  v26 = sub_269D98250();
  __swift_project_value_buffer(v26, qword_280351208);
  v27 = sub_269D98230();
  v28 = sub_269D9AB80();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v54[0] = v30;
    *v29 = 136446210;
    v31 = v53;
    v32 = sub_269D9B4D0();
    v34 = sub_269C2EACC(v32, v33, v54);

    *(v29 + 4) = v34;
    _os_log_impl(&dword_269C18000, v27, v28, "[%{public}s] initializing...", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v30);
    MEMORY[0x26D652460](v30, -1, -1);
    MEMORY[0x26D652460](v29, -1, -1);
  }

  else
  {

    v31 = v53;
  }

  v35 = v49;
  v3[2] = a1;
  v3[3] = v35;
  swift_beginAccess();
  v36 = a1;
  v37 = v35;
  v38 = v50;
  sub_269D98850();
  swift_endAccess();
  v39 = swift_allocObject();
  swift_weakInit();
  v40 = swift_allocObject();
  *(v40 + 16) = v39;
  *(v40 + 24) = v31;
  sub_269CB9E04(&qword_28034EA48, sub_269C7C508, MEMORY[0x277CBCEC8]);

  v41 = v52;
  sub_269D98900();

  (*(v51 + 8))(v38, v41);
  swift_beginAccess();
  sub_269D98740();
  swift_endAccess();

  v54[0] = *&v37[OBJC_IVAR____TtC13SleepHealthUI24WeatherPrefetchScheduler_onShouldPrefetch];
  v42 = swift_allocObject();
  swift_weakInit();
  v43 = swift_allocObject();
  *(v43 + 16) = v42;
  *(v43 + 24) = v31;
  v44 = swift_allocObject();
  *(v44 + 16) = sub_269CB9E4C;
  *(v44 + 24) = v43;
  sub_269CB9E90();
  sub_269CB9E04(&qword_28034F5E8, sub_269CB9E90, MEMORY[0x277CBCE20]);

  sub_269D98900();

  swift_beginAccess();
  sub_269D98740();
  swift_endAccess();

  v54[0] = *&v37[OBJC_IVAR____TtC13SleepHealthUI24WeatherPrefetchScheduler_onShouldCancel];
  v45 = swift_allocObject();
  swift_weakInit();

  v46 = swift_allocObject();
  *(v46 + 16) = v45;
  *(v46 + 24) = v31;
  v47 = swift_allocObject();
  *(v47 + 16) = sub_269CB9EF4;
  *(v47 + 24) = v46;
  sub_269D98900();

  swift_beginAccess();
  sub_269D98740();
  swift_endAccess();

  sub_269D0D4C0();
  return v3;
}

void sub_269CB9A10(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_269CB9AA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CurrentWeatherModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_269CB9B0C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for WeatherPrefetcher(uint64_t a1)
{
  result = qword_28034F5D8;
  if (!qword_28034F5D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_269CB9BC0(uint64_t a1)
{
  sub_269CB9A10(319, &qword_28034EA40, sub_269C6C9C4, MEMORY[0x277CBCED0]);
  if (v1 <= 0x3F)
  {
    sub_269CB9A74(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_269CB9E04(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_269CB9E90()
{
  if (!qword_280350920)
  {
    v0 = sub_269D987A0();
    if (!v1)
    {
      atomic_store(v0, &qword_280350920);
    }
  }
}

uint64_t sub_269CB9F30(uint64_t a1, uint64_t a2)
{
  sub_269CB9A74(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_269CB9FC8()
{
  result = qword_28034E6A0;
  if (!qword_28034E6A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28034E6A0);
  }

  return result;
}

unint64_t sub_269CBA048()
{
  result = qword_28034F5F8;
  if (!qword_28034F5F8)
  {
    type metadata accessor for CurrentWeatherModel(255);
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_28034F5F8);
  }

  return result;
}

uint64_t sub_269CBA090(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_269CBA0F8()
{
  if (!qword_280C0B4E0)
  {
    v0 = sub_269D9AE60();
    if (!v1)
    {
      atomic_store(v0, &qword_280C0B4E0);
    }
  }
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_269CBA160(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_269CBA1A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

CFTimeInterval sub_269CBA204(double a1, double a2)
{
  result = CACurrentMediaTime();
  v6 = *(v2 + 8);
  v7 = a1 - v6;
  if (a1 - v6 > 3.14159265)
  {
    v8 = a1 + -6.28318531;
    v6 = 0.0 - v6;
LABEL_5:
    v7 = v8 + v6;
    goto LABEL_6;
  }

  if (v7 < -3.14159265)
  {
    v8 = 6.28318531 - a1;
    goto LABEL_5;
  }

LABEL_6:
  if ((*(v2 + 1) & 1) == 0 && fabs(v7) > 2.22044605e-16)
  {
    *(v2 + 1) = 1;
    v7 = 0.0;
  }

  v9 = v7 / (result - *(v2 + 16));
  *(v2 + 32) = v9;
  v10 = a2;
  v11 = 1.0;
  if (v10 < 0.15)
  {
    v11 = 0.0;
    if (v10 > 0.0)
    {
      v12 = result;
      *&result = v10 / 0.15;
      [*(v2 + 40) _solveForInput_];
      v14 = v13;
      result = v12;
      v11 = v14;
    }
  }

  v15 = fabs(v9) / 0.975;
  if (v15 > 1.0)
  {
    v15 = 1.0;
  }

  v16 = *(v2 + 24) + v7 * (v15 * 0.75 + 0.25) * v11;
  *(v2 + 16) = result;
  *(v2 + 24) = v16;
  *(v2 + 8) = a1;
  return result;
}

unint64_t sub_269CBA384(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28034F610;
  if (!qword_28034F610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034F610);
  }

  return result;
}

unint64_t sub_269CBA3DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_28034F618;
  if (!qword_28034F618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034F618);
  }

  return result;
}

uint64_t sub_269CBA4B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v12 = MEMORY[0x277D84F90];
    sub_269C75338(0, v1, 0);
    v2 = v12;
    v4 = MEMORY[0x277D10D48];
    v5 = a1 + 32;
    v6 = MEMORY[0x277D10D40];
    do
    {
      sub_269C2DB5C(v5, v10);
      sub_269C3232C(0, &qword_28034E550, v4);
      sub_269C3232C(0, &qword_280350880, v6);
      swift_dynamicCast();
      v12 = v2;
      v8 = *(v2 + 16);
      v7 = *(v2 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_269C75338((v7 > 1), v8 + 1, 1);
        v2 = v12;
      }

      *(v2 + 16) = v8 + 1;
      sub_269C25520(&v11, v2 + 40 * v8 + 32);
      v5 += 40;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_269CBA5F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v16 = MEMORY[0x277D84F90];
    sub_269C754C0(0, v1, 0);
    v2 = v16;
    v4 = (a1 + 32);
    do
    {
      v5 = *v4;
      v16 = v2;
      v6 = *(v2 + 16);
      v7 = *(v2 + 24);
      v8 = v5;
      v11 = v8;
      if (v6 >= v7 >> 1)
      {
        v8 = sub_269C754C0((v7 > 1), v6 + 1, 1);
        v2 = v16;
      }

      v14 = &type metadata for ConfirmationScheduleItem;
      v15 = sub_269C5EA6C(v8, v9, v10);
      *&v13 = v11;
      *(v2 + 16) = v6 + 1;
      sub_269C25520(&v13, v2 + 40 * v6 + 32);
      ++v4;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_269CBA6F4()
{
  sub_269CA6690();
  v2 = *(v1 - 8);
  v192 = v1;
  v193 = v2;
  MEMORY[0x28223BE20](v1, v3);
  v190 = &v189 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v6);
  v191 = &v189 - v7;
  sub_269CBDF00(0, &qword_280C0BB60, MEMORY[0x277CC9578]);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v222 = (&v189 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11, v12);
  v221 = (&v189 - v13);
  MEMORY[0x28223BE20](v14, v15);
  v220 = (&v189 - v16);
  sub_269CBDF00(0, &qword_28034E048, MEMORY[0x277CC8990]);
  MEMORY[0x28223BE20](v17 - 8, v18);
  v219 = &v189 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v21);
  v218 = &v189 - v22;
  v207 = type metadata accessor for ScheduleOccurrenceRow(0);
  MEMORY[0x28223BE20](v207, v23);
  v206 = &v189 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v225 = sub_269D98090();
  v196 = *(v225 - 8);
  v211 = v196;
  MEMORY[0x28223BE20](v225, v25);
  v194 = &v189 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27, v28);
  v189 = &v189 - v29;
  MEMORY[0x28223BE20](v30, v31);
  v212 = &v189 - v32;
  MEMORY[0x28223BE20](v33, v34);
  v195 = &v189 - v35;
  MEMORY[0x28223BE20](v36, v37);
  v197 = &v189 - v38;
  MEMORY[0x28223BE20](v39, v40);
  v42 = &v189 - v41;
  MEMORY[0x28223BE20](v43, v44);
  v46 = &v189 - v45;
  v198 = v0;
  v47 = sub_269CBBE00();
  LOBYTE(v229[0]) = *(v47 + 96);
  v49 = *(v47 + 32);
  v48 = *(v47 + 40);
  v50 = *(v47 + 48);

  sub_269C539F4(v48, v49, v50, v46);

  v51 = MEMORY[0x277D84F90];
  v52 = sub_269D61F20(0, 1, 1, MEMORY[0x277D84F90]);
  v54 = *(v52 + 16);
  v53 = *(v52 + 24);
  v55 = v54 + 1;
  if (v54 >= v53 >> 1)
  {
    goto LABEL_39;
  }

  while (1)
  {
    *(v52 + 16) = v55;
    v56 = *(v211 + 32);
    v213 = (*(v211 + 80) + 32) & ~*(v211 + 80);
    v223 = *(v211 + 72);
    v208 = v56;
    v209 = v211 + 32;
    v56(v52 + v213 + v223 * v54, v46, v225);
    v232 = v52;
    v210 = *(v198 + qword_28034F620);
    sub_269D987C0();
    v57 = *&v229[0];
    v58 = [*&v229[0] occurrences];

    sub_269C1B0B8(0, &qword_28034E050, 0x277D62508);
    v52 = sub_269D9A7E0();

    *&v229[0] = v51;
    v55 = v52 >> 62 ? sub_269D9AF50() : *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v59 = MEMORY[0x277D84F90];
    v205 = v42;
    if (!v55)
    {
      break;
    }

    v60 = 0;
    v224 = v52 & 0xC000000000000001;
    v46 = (v52 & 0xFFFFFFFFFFFFFF8);
    while (1)
    {
      if (v224)
      {
        v61 = MEMORY[0x26D651260](v60, v52);
      }

      else
      {
        v53 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v60 >= v53)
        {
          goto LABEL_38;
        }

        v61 = *(v52 + 8 * v60 + 32);
      }

      v51 = v61;
      v54 = v60 + 1;
      if (__OFADD__(v60, 1))
      {
        break;
      }

      v42 = v55;
      sub_269D9A8E0();
      sub_269D9A8D0();
      sub_269D9A880();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v62 = [v51 isSingleDayOverride];

      if (v62)
      {
      }

      else
      {
        sub_269D9B050();
        sub_269D9B090();
        sub_269D9B0A0();
        sub_269D9B060();
      }

      v55 = v42;
      ++v60;
      if (v54 == v42)
      {
        v63 = *&v229[0];
        v59 = MEMORY[0x277D84F90];
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    v52 = sub_269D61F20((v53 > 1), v55, 1, v52);
  }

  v63 = MEMORY[0x277D84F90];
LABEL_19:

  if (v63 < 0 || (v63 & 0x4000000000000000) != 0)
  {
    v64 = sub_269D9AF50();
    if (!v64)
    {
      goto LABEL_42;
    }
  }

  else
  {
    v64 = *(v63 + 16);
    if (!v64)
    {
      goto LABEL_42;
    }
  }

  v231 = v59;
  result = sub_269C75390(0, v64 & ~(v64 >> 63), 0);
  if (v64 < 0)
  {
    __break(1u);
LABEL_98:
    __break(1u);
LABEL_99:
    __break(1u);
    goto LABEL_100;
  }

  v59 = v231;
  v203 = sub_269D9A8E0();
  v66 = 0;
  v67 = *(v198 + qword_28034F630);
  v201 = v63 & 0xC000000000000001;
  v202 = v67;
  v200 = v64 - 1;
  v199 = xmmword_269D9EBF0;
  for (i = v63; ; v63 = i)
  {
    *&v217 = v66;
    if (v201)
    {
      v68 = MEMORY[0x26D651260]();
    }

    else
    {
      v68 = *(v63 + 8 * v66 + 32);
    }

    v69 = v68;
    v224 = v59;
    v216 = sub_269D9A8D0();
    sub_269D9A880();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v70 = v69;
    static ScheduleOccurrenceViewModel.ViewStyle.sleepOnboardingStyle.getter(v229);
    v71 = [v70 bedtimeComponents];
    v72 = v218;
    sub_269D97120();

    v73 = sub_269D971F0();
    v74 = *(*(v73 - 8) + 56);
    v74(v72, 0, 1, v73);
    v75 = [v70 wakeUpComponents];
    v76 = v219;
    sub_269D97120();

    v74(v76, 0, 1, v73);
    v215 = [v70 weekdays];
    v77 = sub_269D97580();
    v78 = *(*(v77 - 8) + 56);
    v78(v220, 1, 1, v77);
    v78(v221, 1, 1, v77);
    v78(v222, 1, 1, v77);
    v79 = v70;
    v80 = [v79 alarmConfiguration];
    v81 = [v80 isEnabled];

    v214 = v79;
    if (v81)
    {
      v82 = 0;
    }

    else
    {
      v82 = 2;
    }

    v83 = type metadata accessor for ScheduleOccurrenceViewModel(0);
    v84 = v83[11];
    v85 = v206;
    v78(&v206[v84], 1, 1, v77);
    v86 = v83[12];
    v78((v85 + v86), 1, 1, v77);
    v87 = v83[13];
    v78((v85 + v87), 1, 1, v77);
    sub_269C4E3A0(v218, v85);
    sub_269C4E3A0(v219, v85 + v83[5]);
    v88 = v85 + v83[6];
    *v88 = 0;
    *(v88 + 8) = 1;
    *(v85 + v83[7]) = v215;
    sub_269CB9F30(v220, v85 + v87);
    sub_269CB9F30(v221, v85 + v86);
    sub_269CB9F30(v222, v85 + v84);
    *(v85 + v83[14]) = 0;
    *(v85 + v83[8]) = v82;
    *(v85 + v83[9]) = 0;
    v89 = v85 + v83[10];
    v90 = v229[11];
    *(v89 + 160) = v229[10];
    *(v89 + 176) = v90;
    *(v89 + 192) = v230;
    v91 = v229[7];
    *(v89 + 96) = v229[6];
    *(v89 + 112) = v91;
    v92 = v229[9];
    *(v89 + 128) = v229[8];
    *(v89 + 144) = v92;
    v93 = v229[3];
    *(v89 + 32) = v229[2];
    *(v89 + 48) = v93;
    v94 = v229[5];
    *(v89 + 64) = v229[4];
    *(v89 + 80) = v94;
    v95 = v229[1];
    *v89 = v229[0];
    *(v89 + 16) = v95;
    v96 = v210;

    v97 = v214;
    v98 = [v214 weekdays];
    sub_269CBD20C(v96, v98, v202, &v233);
    sub_269CBDA4C(0, &qword_28034E868, &qword_280350880, MEMORY[0x277D10D40], MEMORY[0x277D84560]);
    v99 = swift_allocObject();
    *(v99 + 16) = v199;
    v100 = v207;
    *(v99 + 56) = v207;
    *(v99 + 64) = sub_269CBD0B0(&qword_28034F698, type metadata accessor for ScheduleOccurrenceRow, &unk_269DA4808);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v99 + 32));
    v102 = sub_269CBDF74(v85, boxed_opaque_existential_1, type metadata accessor for ScheduleOccurrenceRow);
    v235[0] = *&v234[8];
    *(v99 + 96) = &type metadata for EditScheduleOccurrenceRow;
    *(v99 + 104) = sub_269CBDFDC(v102, v103, v104);
    v105 = swift_allocObject();
    *(v99 + 72) = v105;
    v106 = *v234;
    *(v105 + 16) = v233;
    *(v105 + 32) = v106;
    *(v105 + 48) = *&v234[16];
    v226 = v100;

    sub_269CBDAB4(v235, &v227);
    sub_269CBE030();
    v227 = sub_269D9A660();
    v228 = v107;
    MEMORY[0x26D650930](45, 0xE100000000000000);
    v108 = ScheduleOccurrenceViewModel.description.getter();
    MEMORY[0x26D650930](v108);

    v109 = v205;
    sub_269D98080();

    sub_269CBDB3C(v235);

    sub_269CBE078(v85);

    v59 = v224;
    v231 = v224;
    v111 = *(v224 + 16);
    v110 = *(v224 + 24);
    if (v111 >= v110 >> 1)
    {
      sub_269C75390((v110 > 1), v111 + 1, 1);
      v59 = v231;
    }

    *(v59 + 16) = v111 + 1;
    v208(v59 + v213 + v111 * v223, v109, v225);
    if (v200 == v217)
    {
      break;
    }

    v66 = v217 + 1;
  }

LABEL_42:

  v224 = v59;

  sub_269C49B10(v112);
  sub_269D987C0();
  v113 = *&v229[0];
  if ([*&v229[0] weekdaysWithOccurrences])
  {
    if ([v113 weekdaysWithoutOccurrences])
    {
      v114 = [v113 weekdaysWithOccurrences];
      v115 = 0;
      goto LABEL_48;
    }

    v114 = 0;
  }

  else
  {
    v114 = 1;
  }

  v115 = 1;
LABEL_48:

  v116 = *(v198 + qword_28034F630);
  v117 = MEMORY[0x277D837D0];
  sub_269CBE1F8(0, &qword_280C0B440, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v218 = v118;
  v119 = swift_allocObject();
  *(v119 + 16) = xmmword_269DA0D60;
  *(v119 + 32) = sub_269D9A630();
  *(v119 + 40) = v120;
  *(v119 + 48) = 0x7065656C53;
  *(v119 + 56) = 0xE500000000000000;
  *(v119 + 64) = 0x696472616F626E4FLL;
  *(v119 + 72) = 0xEA0000000000676ELL;
  *&v229[0] = v119;
  sub_269C49A1C(&unk_287A9F380);
  sub_269CBE1F8(0, &qword_280C0B4F0, v117, MEMORY[0x277D83940]);
  sub_269C4BE38();
  v121 = sub_269D9A520();
  v123 = v122;

  sub_269C4BEAC(&unk_287A9F3A0);
  sub_269CBDA4C(0, &qword_28034E100, &qword_28034E550, MEMORY[0x277D10D48], MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  v217 = xmmword_269D9EBE0;
  *(inited + 16) = xmmword_269D9EBE0;
  *(inited + 56) = &type metadata for AddSchedulePromptRow;
  *(inited + 64) = sub_269CBE0D4(inited, v125, v126);
  v127 = swift_allocObject();
  *(inited + 32) = v127;
  *(v127 + 16) = v114;
  *(v127 + 24) = v115;
  *(v127 + 32) = v116;
  *(v127 + 40) = v121;
  *(v127 + 48) = v123;
  sub_269CBA4B8(inited);

  *&v229[0] = 0;
  *(&v229[0] + 1) = 0xE000000000000000;
  sub_269D9B000();

  *&v229[0] = 0xD000000000000013;
  *(&v229[0] + 1) = 0x8000000269DB04B0;
  sub_269D987C0();
  v128 = v227;
  if (![v227 weekdaysWithOccurrences])
  {
    v129 = 1;
LABEL_53:
    v130 = 1;
    goto LABEL_54;
  }

  if (![v128 weekdaysWithoutOccurrences])
  {
    v129 = 0;
    goto LABEL_53;
  }

  v129 = [v128 weekdaysWithOccurrences];
  v130 = 0;
LABEL_54:
  v132 = v195;
  v131 = v196;

  v227 = v129;
  LOBYTE(v228) = v130;
  v133 = sub_269D9A660();
  MEMORY[0x26D650930](v133);

  v134 = v197;
  sub_269D98080();
  v135 = *(v211 + 16);
  v211 += 16;
  v221 = v135;
  v135(v132, v134, v225);
  v136 = v232;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_96;
  }

LABEL_55:
  v137 = v212;
  v139 = *(v136 + 2);
  v138 = *(v136 + 3);
  v140 = v139 + 1;
  if (v139 >= v138 >> 1)
  {
    v136 = sub_269D61F20((v138 > 1), v139 + 1, 1, v136);
  }

  *(v136 + 2) = v140;
  v141 = v136 + v213;
  v208(v136 + v213 + v139 * v223, v132, v225);
  v132 = 0;
  v142 = 0;
  v222 = (v131 + 8);
  v219 = v141;
  v220 = v136;
  while (1)
  {
    if (v142 >= *(v136 + 2))
    {
      __break(1u);
LABEL_96:
      v136 = sub_269D61F20(0, *(v136 + 2) + 1, 1, v136);
      goto LABEL_55;
    }

    v221(v137, v141, v225);
    v131 = sub_269D9A8E0();
    sub_269D9A8D0();
    sub_269D9A880();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v144 = sub_269D98070();
    v146 = v145;
    if (*(v224 + 16))
    {
      break;
    }

    v143 = *v222;
    (*v222)(v137, v225);
LABEL_59:
    ++v142;
    v132 += 16;
    v141 += v223;
    v136 = v220;
    if (v140 == v142)
    {

LABEL_79:
      sub_269D980C0();
LABEL_80:
      v143(v197, v225);
    }
  }

  if (v144 == sub_269D98070() && v146 == v147)
  {
    v148 = 1;
  }

  else
  {
    v148 = sub_269D9B280();
  }

  v143 = *v222;
  (*v222)(v212, v225);
  if ((v148 & 1) == 0)
  {
    v137 = v212;
    goto LABEL_59;
  }

  v149 = v191;
  sub_269D980F0();
  v150 = v192;
  v151 = sub_269D98330();
  v152 = *(v193 + 8);
  v193 += 8;
  v152(v149, v150);
  v153 = *(v151 + 16);

  if (v142 >= v153 || v142 >= *(v220 + 2))
  {
    goto LABEL_79;
  }

  v154 = v190;
  sub_269D980F0();
  v155 = sub_269D98330();
  result = (v152)(v154, v150);
  if (v142 >= *(v155 + 16))
  {
    goto LABEL_98;
  }

  v215 = v152;
  v156 = *&v132[v155 + 40];
  v224 = *&v132[v155 + 32];

  if (v142 >= *(v220 + 2))
  {
    goto LABEL_99;
  }

  v157 = v189;
  v158 = v141;
  v159 = v225;
  v221(v189, v158, v225);
  v160 = sub_269D98070();
  v162 = v161;
  v143(v157, v159);
  if (v224 == v160 && v156 == v162)
  {

    goto LABEL_79;
  }

  v163 = sub_269D9B280();

  if (v163)
  {
    goto LABEL_79;
  }

  v164 = *(v220 + 2);
  v165 = MEMORY[0x277D84F90];
  if (v164)
  {
    *&v229[0] = MEMORY[0x277D84F90];
    sub_269C75370(0, v164, 0);
    v166 = *&v229[0];
    v167 = v219;
    do
    {
      v224 = v166;
      v219 = v167;
      (v221)(v194);
      sub_269D9A8D0();
      sub_269D9A880();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v168 = v194;
      v216 = sub_269D98070();
      v170 = v169;
      v143(v168, v225);

      v166 = v224;
      *&v229[0] = v224;
      v172 = *(v224 + 16);
      v171 = *(v224 + 24);
      if (v172 >= v171 >> 1)
      {
        sub_269C75370((v171 > 1), v172 + 1, 1);
        v166 = *&v229[0];
      }

      *(v166 + 16) = v172 + 1;
      v173 = v166 + 16 * v172;
      *(v173 + 32) = v216;
      *(v173 + 40) = v170;
      v167 = v219 + v223;
      --v164;
    }

    while (v164);
    v165 = v166;
  }

  v174 = v191;
  sub_269D980F0();
  v175 = v192;
  v176 = sub_269D98330();
  result = v215(v174, v175);
  if (v142 >= *(v176 + 16))
  {
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  v177 = *&v132[v176 + 32];
  v178 = *&v132[v176 + 40];

  *&v229[0] = v177;
  *(&v229[0] + 1) = v178;
  MEMORY[0x28223BE20](v179, v180);
  *(&v189 - 2) = v229;
  v181 = sub_269CBD160(sub_269CBE128, (&v189 - 4), v165);

  if ((v181 & 1) == 0)
  {
    goto LABEL_79;
  }

  v182 = swift_allocObject();
  *(v182 + 16) = v217;
  v183 = v191;
  sub_269D980F0();
  v184 = v192;
  v185 = sub_269D98330();
  result = v215(v183, v184);
  if (v142 < *(v185 + 16))
  {
    v187 = *&v132[v185 + 32];
    v186 = *&v132[v185 + 40];

    *(v182 + 32) = v187;
    *(v182 + 40) = v186;
    sub_269D980C0();
    v188 = sub_269D980E0();
    sub_269D98320();

    v188(v229, 0);
    sub_269D980D0();
    goto LABEL_80;
  }

LABEL_101:
  __break(1u);
  return result;
}