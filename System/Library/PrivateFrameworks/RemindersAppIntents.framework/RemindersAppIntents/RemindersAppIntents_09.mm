uint64_t _s21ReminderEditingModuleVwca(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  v7 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(a1 + 16) = v7;
  return a1;
}

uint64_t _s21ReminderEditingModuleVwta(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  swift_unknownObjectRelease();
  *(a1 + 16) = v4;
  return a1;
}

void sub_261BE05D8(void *a1, void *a2, void *a3)
{
  if (a3)
  {
    v22 = a3;
    if ([a2 canUndo])
    {
      if (qword_27FED9AB8 != -1)
      {
        swift_once();
      }

      v5 = sub_261CFF7A4();
      __swift_project_value_buffer(v5, qword_27FEDC018);
      v6 = sub_261CFF784();
      v7 = sub_261CFFE54();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&dword_261AE2000, v6, v7, "ReminderEditingUI: register undo", v8, 2u);
        MEMORY[0x26671D560](v8, -1, -1);
      }

      MEMORY[0x28223BE20](v9);
      v10 = v22;
      v11 = [v10 groupsByEvent];
      if (v11)
      {
        if (qword_280D21E90 != -1)
        {
          swift_once();
        }

        sub_261CFFE34();
        v12 = [a1 titleAsString];
        if (v12)
        {
          v13 = v12;
          v14 = sub_261CFFA74();
          v16 = v15;
        }

        else
        {
          v14 = 0;
          v16 = 0xE000000000000000;
        }

        sub_261C92A18(v14, v16);

        v21 = sub_261CFFA54();

        [v10 setActionName_];
      }

      else
      {
        MEMORY[0x28223BE20](v11);
        sub_261CFFE44();
      }
    }

    else
    {
      if (qword_27FED9AB8 != -1)
      {
        swift_once();
      }

      v17 = sub_261CFF7A4();
      __swift_project_value_buffer(v17, qword_27FEDC018);
      v18 = sub_261CFF784();
      v19 = sub_261CFFE54();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_261AE2000, v18, v19, "ReminderEditingUI: no undo actions to register", v20, 2u);
        MEMORY[0x26671D560](v20, -1, -1);
      }
    }
  }
}

uint64_t sub_261BE095C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC038, &qword_261D09118);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_261BE09CC()
{
  result = qword_27FEDC080;
  if (!qword_27FEDC080)
  {
    type metadata accessor for RemindersInCalendarIOSReminderEditingPresenter();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDC080);
  }

  return result;
}

uint64_t sub_261BE0A24(unint64_t *a1, unint64_t *a2, void *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_261B05020(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_261BE0A8C()
{
  v0 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v0, qword_27FEDC108);
  v1 = __swift_project_value_buffer(v0, qword_27FEDC108);
  if (qword_280D22888 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D27010);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_261BE0BE8(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_261BE0C08, 0, 0);
}

void sub_261BE0C08()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v38 = v1 + 40;
    v4 = MEMORY[0x277D84F90];
    do
    {
      v39 = v4;
      v5 = (v38 + 16 * v3);
      v6 = v3;
      while (1)
      {
        if (v6 >= v2)
        {
          __break(1u);
LABEL_114:
          __break(1u);
          return;
        }

        v3 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_114;
        }

        v8 = *(v5 - 1);
        v7 = *v5;
        sub_261CFD104();
        v9 = byte_287440CF0;
        v10 = 0xD000000000000027;
        v11 = 0xD000000000000026;
        v12 = "ers.smartlist.completed";
        if (byte_287440CF0 != 4)
        {
          v11 = 0xD000000000000027;
          v12 = " Hidden Property Title";
        }

        if (byte_287440CF0 == 3)
        {
          v11 = 0xD000000000000025;
          v12 = "ers.smartlist.assigned";
        }

        if (byte_287440CF0 != 1)
        {
          v10 = 0xD000000000000021;
        }

        v13 = "ers.smartlist.all";
        if (byte_287440CF0 != 1)
        {
          v13 = "ers.smartlist.flagged";
        }

        if (!byte_287440CF0)
        {
          v10 = 0xD000000000000023;
          v13 = "ers.smartlist.scheduled";
        }

        v14 = byte_287440CF0 <= 2u ? v10 : v11;
        v15 = byte_287440CF0 <= 2u ? v13 : v12;
        if (v14 == v8 && (v15 | 0x8000000000000000) == v7)
        {
          break;
        }

        v16 = sub_261D00614();

        if (v16)
        {
          goto LABEL_103;
        }

        v9 = byte_287440CF1;
        if (byte_287440CF1 > 2u)
        {
          if (byte_287440CF1 == 3)
          {
            v19 = 0xD000000000000025;
            v20 = "ers.smartlist.assigned";
          }

          else if (byte_287440CF1 == 4)
          {
            v19 = 0xD000000000000026;
            v20 = "ers.smartlist.completed";
          }

          else
          {
            v19 = 0xD000000000000027;
            v20 = " Hidden Property Title";
          }
        }

        else
        {
          v17 = 0xD000000000000021;
          if (byte_287440CF1 == 1)
          {
            v17 = 0xD000000000000027;
          }

          v18 = "ers.smartlist.all";
          if (byte_287440CF1 != 1)
          {
            v18 = "ers.smartlist.flagged";
          }

          if (byte_287440CF1)
          {
            v19 = v17;
          }

          else
          {
            v19 = 0xD000000000000023;
          }

          v20 = "ers.smartlist.scheduled";
          if (byte_287440CF1)
          {
            v20 = v18;
          }
        }

        if (v19 == v8 && (v20 | 0x8000000000000000) == v7)
        {
          break;
        }

        v21 = sub_261D00614();

        if (v21)
        {
          goto LABEL_103;
        }

        v9 = byte_287440CF2;
        if (byte_287440CF2 > 2u)
        {
          if (byte_287440CF2 == 3)
          {
            v22 = 0xD000000000000025;
            v23 = "ers.smartlist.assigned";
          }

          else if (byte_287440CF2 == 4)
          {
            v22 = 0xD000000000000026;
            v23 = "ers.smartlist.completed";
          }

          else
          {
            v22 = 0xD000000000000027;
            v23 = " Hidden Property Title";
          }
        }

        else if (byte_287440CF2)
        {
          if (byte_287440CF2 == 1)
          {
            v22 = 0xD000000000000027;
            v23 = "ers.smartlist.all";
          }

          else
          {
            v22 = 0xD000000000000021;
            v23 = "ers.smartlist.flagged";
          }
        }

        else
        {
          v22 = 0xD000000000000023;
          v23 = "ers.smartlist.scheduled";
        }

        if (v22 == v8 && (v23 | 0x8000000000000000) == v7)
        {
          break;
        }

        v24 = sub_261D00614();

        if (v24)
        {
          goto LABEL_103;
        }

        v9 = byte_287440CF3;
        if (byte_287440CF3 > 2u)
        {
          if (byte_287440CF3 == 3)
          {
            v25 = 0xD000000000000025;
            v26 = "ers.smartlist.assigned";
          }

          else if (byte_287440CF3 == 4)
          {
            v25 = 0xD000000000000026;
            v26 = "ers.smartlist.completed";
          }

          else
          {
            v25 = 0xD000000000000027;
            v26 = " Hidden Property Title";
          }
        }

        else if (byte_287440CF3)
        {
          if (byte_287440CF3 == 1)
          {
            v25 = 0xD000000000000027;
            v26 = "ers.smartlist.all";
          }

          else
          {
            v25 = 0xD000000000000021;
            v26 = "ers.smartlist.flagged";
          }
        }

        else
        {
          v25 = 0xD000000000000023;
          v26 = "ers.smartlist.scheduled";
        }

        if (v25 == v8 && (v26 | 0x8000000000000000) == v7)
        {
          break;
        }

        v27 = sub_261D00614();

        if (v27)
        {
          goto LABEL_103;
        }

        v9 = byte_287440CF4;
        if (byte_287440CF4 > 2u)
        {
          if (byte_287440CF4 == 3)
          {
            v28 = 0xD000000000000025;
            v29 = "ers.smartlist.assigned";
          }

          else if (byte_287440CF4 == 4)
          {
            v28 = 0xD000000000000026;
            v29 = "ers.smartlist.completed";
          }

          else
          {
            v28 = 0xD000000000000027;
            v29 = " Hidden Property Title";
          }
        }

        else if (byte_287440CF4)
        {
          if (byte_287440CF4 == 1)
          {
            v28 = 0xD000000000000027;
            v29 = "ers.smartlist.all";
          }

          else
          {
            v28 = 0xD000000000000021;
            v29 = "ers.smartlist.flagged";
          }
        }

        else
        {
          v28 = 0xD000000000000023;
          v29 = "ers.smartlist.scheduled";
        }

        if (v28 == v8 && (v29 | 0x8000000000000000) == v7)
        {
          break;
        }

        v30 = sub_261D00614();

        if (v30)
        {
          goto LABEL_103;
        }

        v9 = byte_287440CF5;
        if (byte_287440CF5 > 2u)
        {
          if (byte_287440CF5 == 3)
          {
            v31 = 0xD000000000000025;
            v32 = "ers.smartlist.assigned";
          }

          else if (byte_287440CF5 == 4)
          {
            v31 = 0xD000000000000026;
            v32 = "ers.smartlist.completed";
          }

          else
          {
            v31 = 0xD000000000000027;
            v32 = " Hidden Property Title";
          }
        }

        else if (byte_287440CF5)
        {
          if (byte_287440CF5 == 1)
          {
            v31 = 0xD000000000000027;
            v32 = "ers.smartlist.all";
          }

          else
          {
            v31 = 0xD000000000000021;
            v32 = "ers.smartlist.flagged";
          }
        }

        else
        {
          v31 = 0xD000000000000023;
          v32 = "ers.smartlist.scheduled";
        }

        if (v31 == v8 && (v32 | 0x8000000000000000) == v7)
        {
          break;
        }

        v33 = sub_261D00614();

        if (v33)
        {
          goto LABEL_103;
        }

        ++v6;
        v5 += 2;
        if (v3 == v2)
        {
          v4 = v39;
          goto LABEL_110;
        }
      }

LABEL_103:

      v4 = v39;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_261B42130(0, *(v39 + 2) + 1, 1, v39);
      }

      v35 = *(v4 + 2);
      v34 = *(v4 + 3);
      if (v35 >= v34 >> 1)
      {
        v4 = sub_261B42130((v34 > 1), v35 + 1, 1, v4);
      }

      *(v4 + 2) = v35 + 1;
      v4[v35 + 32] = v9;
    }

    while (v3 != v2);
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

LABEL_110:
  *(v37 + 32) = v4;
  v36 = swift_task_alloc();
  *(v37 + 40) = v36;
  *v36 = v37;
  v36[1] = sub_261BE1224;

  sub_261BE15EC(v4);
}

uint64_t sub_261BE1224(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {
    v5 = sub_261BE13B4;
  }

  else
  {
    *(v4 + 56) = a1;
    v5 = sub_261BE134C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_261BE134C()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 56);

  return v1(v2);
}

uint64_t sub_261BE13B4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t REMStoreIntentPerformer.suggestedEntities(query:)()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_261BE14B0;

  return sub_261BE15EC(&unk_287440CF8);
}

uint64_t sub_261BE14B0(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 24) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_261BE2F64, 0, 0);
  }

  else
  {
    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_261BE15EC(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC120, &unk_261D092B0);
  v2[5] = swift_task_alloc();
  v3 = sub_261CFFE24();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261BE1710, 0, 0);
}

uint64_t sub_261BE1710()
{
  v96 = v0;
  v95 = *MEMORY[0x277D85DE8];
  v1 = *(v0[4] + 16);
  v0[2] = 0;
  v2 = [v1 fetchPrimaryActiveCloudKitAccountWithError_];
  v3 = v0[2];
  v89 = v0;
  if (!v2)
  {
    v38 = v3;
    v39 = sub_261CFD654();

    swift_willThrow();
    goto LABEL_34;
  }

  v4 = v2;
  v5 = v3;
  v6 = [v4 capabilities];

  LODWORD(v4) = [v6 supportsPinnedLists];
  if (!v4)
  {
LABEL_34:
    v40 = v0[3];
    v41 = *(v40 + 16);
    if (!v41)
    {
      goto LABEL_171;
    }

    v42 = 0x656C756465686373;
    v43 = 0x7961646F74;
    v44 = (v40 + 32);
    v15 = MEMORY[0x277D84F90];
    while (1)
    {
      if (byte_287440CC8 > 2u)
      {
        if (byte_287440CC8 == 3)
        {
          v48 = 0xE700000000000000;
          v47 = 0x64656767616C66;
        }

        else if (byte_287440CC8 == 4)
        {
          v48 = 0xE800000000000000;
          v47 = 0x64656E6769737361;
        }

        else
        {
          v47 = 0x6574656C706D6F63;
          v48 = 0xE900000000000064;
        }
      }

      else
      {
        if (byte_287440CC8 == 1)
        {
          v45 = v42;
        }

        else
        {
          v45 = 7105633;
        }

        if (byte_287440CC8 == 1)
        {
          v46 = 0xE900000000000064;
        }

        else
        {
          v46 = 0xE300000000000000;
        }

        if (byte_287440CC8)
        {
          v47 = v45;
        }

        else
        {
          v47 = v43;
        }

        if (byte_287440CC8)
        {
          v48 = v46;
        }

        else
        {
          v48 = 0xE500000000000000;
        }
      }

      v50 = *v44++;
      v49 = v50;
      v51 = v50 == 4;
      v52 = 0x6574656C706D6F63;
      if (v50 == 4)
      {
        v52 = 0x64656E6769737361;
      }

      v53 = 0xE800000000000000;
      if (!v51)
      {
        v53 = 0xE900000000000064;
      }

      if (v49 == 3)
      {
        v52 = 0x64656767616C66;
        v53 = 0xE700000000000000;
      }

      v54 = v42;
      if (v49 == 1)
      {
        v55 = v42;
      }

      else
      {
        v55 = 7105633;
      }

      if (v49 == 1)
      {
        v56 = 0xE900000000000064;
      }

      else
      {
        v56 = 0xE300000000000000;
      }

      if (!v49)
      {
        v55 = v43;
        v56 = 0xE500000000000000;
      }

      if (v49 <= 2)
      {
        v57 = v55;
      }

      else
      {
        v57 = v52;
      }

      if (v49 <= 2)
      {
        v58 = v56;
      }

      else
      {
        v58 = v53;
      }

      v59 = v43;
      if (v47 == v57 && v48 == v58)
      {
LABEL_76:

LABEL_78:
        v92[0] = v49;
        SmartListEntity.init(type:isHidden:)(v92, 2, &v93);
        v91 = v93;
        v61 = v94;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = sub_261B42010(0, *(v15 + 2) + 1, 1, v15);
        }

        v63 = *(v15 + 2);
        v62 = *(v15 + 3);
        if (v63 >= v62 >> 1)
        {
          v80 = sub_261B42010((v62 > 1), v63 + 1, 1, v15);
          v43 = v59;
          v15 = v80;
        }

        else
        {
          v43 = v59;
        }

        *(v15 + 2) = v63 + 1;
        v64 = &v15[24 * v63];
        *(v64 + 2) = v91;
        *(v64 + 6) = v61;
        goto LABEL_83;
      }

      v60 = sub_261D00614();

      if (v60)
      {
        goto LABEL_78;
      }

      if (byte_287440CC9 > 2u)
      {
        v65 = v54;
        if (byte_287440CC9 == 3)
        {
          v67 = 0xE700000000000000;
          v66 = 0x64656767616C66;
          if (v49 <= 2)
          {
            goto LABEL_104;
          }

          goto LABEL_96;
        }

        if (byte_287440CC9 == 4)
        {
          v67 = 0xE800000000000000;
          v66 = 0x64656E6769737361;
          if (v49 <= 2)
          {
            goto LABEL_104;
          }

          goto LABEL_96;
        }

        v66 = 0x6574656C706D6F63;
      }

      else
      {
        v65 = v54;
        if (!byte_287440CC9)
        {
          v67 = 0xE500000000000000;
          v66 = v59;
          if (v49 <= 2)
          {
            goto LABEL_104;
          }

          goto LABEL_96;
        }

        if (byte_287440CC9 != 1)
        {
          v67 = 0xE300000000000000;
          v66 = 7105633;
          if (v49 <= 2)
          {
            goto LABEL_104;
          }

          goto LABEL_96;
        }

        v66 = v54;
      }

      v67 = 0xE900000000000064;
      if (v49 <= 2)
      {
LABEL_104:
        if (v49)
        {
          if (v49 == 1)
          {
            goto LABEL_109;
          }

          v68 = 0xE300000000000000;
          v65 = 7105633;
        }

        else
        {
          v68 = 0xE500000000000000;
          v65 = v59;
        }

        goto LABEL_110;
      }

LABEL_96:
      if (v49 == 3)
      {
        v68 = 0xE700000000000000;
        v65 = 0x64656767616C66;
      }

      else
      {
        if (v49 != 4)
        {
          v65 = 0x6574656C706D6F63;
LABEL_109:
          v68 = 0xE900000000000064;
          goto LABEL_110;
        }

        v68 = 0xE800000000000000;
        v65 = 0x64656E6769737361;
      }

LABEL_110:
      if (v66 == v65 && v67 == v68)
      {
        goto LABEL_76;
      }

      v69 = sub_261D00614();

      if (v69)
      {
        goto LABEL_78;
      }

      if (byte_287440CCA > 2u)
      {
        v70 = v54;
        if (byte_287440CCA == 3)
        {
          v72 = 0xE700000000000000;
          v71 = 0x64656767616C66;
          if (v49 <= 2)
          {
            goto LABEL_132;
          }

          goto LABEL_124;
        }

        if (byte_287440CCA == 4)
        {
          v72 = 0xE800000000000000;
          v71 = 0x64656E6769737361;
          if (v49 <= 2)
          {
            goto LABEL_132;
          }

          goto LABEL_124;
        }

        v71 = 0x6574656C706D6F63;
      }

      else
      {
        v70 = v54;
        if (!byte_287440CCA)
        {
          v72 = 0xE500000000000000;
          v71 = v59;
          if (v49 <= 2)
          {
            goto LABEL_132;
          }

          goto LABEL_124;
        }

        if (byte_287440CCA != 1)
        {
          v72 = 0xE300000000000000;
          v71 = 7105633;
          if (v49 <= 2)
          {
            goto LABEL_132;
          }

          goto LABEL_124;
        }

        v71 = v54;
      }

      v72 = 0xE900000000000064;
      if (v49 <= 2)
      {
LABEL_132:
        if (v49)
        {
          if (v49 == 1)
          {
            goto LABEL_137;
          }

          v73 = 0xE300000000000000;
          v70 = 7105633;
        }

        else
        {
          v73 = 0xE500000000000000;
          v70 = v59;
        }

        goto LABEL_138;
      }

LABEL_124:
      if (v49 == 3)
      {
        v73 = 0xE700000000000000;
        v70 = 0x64656767616C66;
      }

      else
      {
        if (v49 != 4)
        {
          v70 = 0x6574656C706D6F63;
LABEL_137:
          v73 = 0xE900000000000064;
          goto LABEL_138;
        }

        v73 = 0xE800000000000000;
        v70 = 0x64656E6769737361;
      }

LABEL_138:
      if (v71 == v70 && v72 == v73)
      {
        goto LABEL_76;
      }

      v74 = sub_261D00614();

      if (v74)
      {
        goto LABEL_78;
      }

      if (byte_287440CCB > 2u)
      {
        v75 = v54;
        if (byte_287440CCB == 3)
        {
          v77 = 0xE700000000000000;
          v76 = 0x64656767616C66;
          if (v49 <= 2)
          {
            goto LABEL_160;
          }

          goto LABEL_152;
        }

        if (byte_287440CCB == 4)
        {
          v77 = 0xE800000000000000;
          v76 = 0x64656E6769737361;
          if (v49 <= 2)
          {
            goto LABEL_160;
          }

          goto LABEL_152;
        }

        v76 = 0x6574656C706D6F63;
      }

      else
      {
        v75 = v54;
        if (!byte_287440CCB)
        {
          v77 = 0xE500000000000000;
          v76 = v59;
          if (v49 <= 2)
          {
            goto LABEL_160;
          }

          goto LABEL_152;
        }

        if (byte_287440CCB != 1)
        {
          v77 = 0xE300000000000000;
          v76 = 7105633;
          if (v49 <= 2)
          {
            goto LABEL_160;
          }

          goto LABEL_152;
        }

        v76 = v54;
      }

      v77 = 0xE900000000000064;
      if (v49 <= 2)
      {
LABEL_160:
        if (v49)
        {
          if (v49 == 1)
          {
            goto LABEL_165;
          }

          v78 = 0xE300000000000000;
          v75 = 7105633;
        }

        else
        {
          v78 = 0xE500000000000000;
          v75 = v59;
        }

        goto LABEL_166;
      }

LABEL_152:
      if (v49 == 3)
      {
        v78 = 0xE700000000000000;
        v75 = 0x64656767616C66;
      }

      else
      {
        if (v49 != 4)
        {
          v75 = 0x6574656C706D6F63;
LABEL_165:
          v78 = 0xE900000000000064;
          goto LABEL_166;
        }

        v78 = 0xE800000000000000;
        v75 = 0x64656E6769737361;
      }

LABEL_166:
      if (v76 == v75 && v77 == v78)
      {
        goto LABEL_76;
      }

      v79 = sub_261D00614();

      if (v79)
      {
        goto LABEL_78;
      }

      v43 = v59;
LABEL_83:
      --v41;
      v42 = v54;
      if (!v41)
      {
        goto LABEL_172;
      }
    }
  }

  v7 = v0[3];
  v8 = *(v7 + 16);
  if (!v8)
  {
LABEL_171:
    v15 = MEMORY[0x277D84F90];
    goto LABEL_172;
  }

  v9 = v0[7];
  v10 = (v7 + 32);
  v11 = *MEMORY[0x277D44B90];
  v12 = *MEMORY[0x277D44B88];
  v13 = *MEMORY[0x277D44BA0];
  v14 = *MEMORY[0x277D44B80];
  v90 = *MEMORY[0x277D44BA8];
  v84 = (v9 + 32);
  v85 = (v9 + 8);
  v87 = *MEMORY[0x277D44BC0];
  v88 = (v9 + 48);
  v15 = MEMORY[0x277D84F90];
  v83 = *MEMORY[0x277D44B80];
  do
  {
    while (1)
    {
      v17 = *v10++;
      v16 = v17;
      if (v17 == 4)
      {
        v18 = v12;
      }

      else
      {
        v18 = v11;
      }

      if (v16 == 3)
      {
        v18 = v13;
      }

      v19 = v90;
      if (v16 != 1)
      {
        v19 = v14;
      }

      if (!v16)
      {
        v19 = v87;
      }

      v20 = (v16 <= 2 ? v19 : v18);
      v22 = v89[5];
      v21 = v89[6];
      v23 = v20;
      sub_261CFFE14();
      if ((*v88)(v22, 1, v21) != 1)
      {
        break;
      }

      sub_261AE6A40(v89[5], &qword_27FEDC120, &unk_261D092B0);
      if (!--v8)
      {
        goto LABEL_172;
      }
    }

    v24 = v12;
    v25 = v11;
    (*v84)(v89[8], v89[5], v89[6]);
    v26 = sub_261D00124();
    v27 = v89[8];
    v28 = v89[6];
    v29 = v26;
    SmartListType.init(remSmartListType:)([v26 smartListType], &v93);
    v30 = v93;
    if (v93 == 6)
    {
      v30 = 0;
    }

    v92[0] = v30;
    v31 = sub_261CFFE04();
    if (v31 == 2)
    {
      v32 = 1;
    }

    else
    {
      v32 = 2;
    }

    if (v31 == 1)
    {
      v33 = 0;
    }

    else
    {
      v33 = v32;
    }

    SmartListEntity.init(type:isHidden:)(v92, v33, &v93);

    (*v85)(v27, v28);
    v86 = v93;
    v34 = v94;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = sub_261B42010(0, *(v15 + 2) + 1, 1, v15);
    }

    v11 = v25;
    v36 = *(v15 + 2);
    v35 = *(v15 + 3);
    v12 = v24;
    if (v36 >= v35 >> 1)
    {
      v15 = sub_261B42010((v35 > 1), v36 + 1, 1, v15);
    }

    v14 = v83;
    *(v15 + 2) = v36 + 1;
    v37 = &v15[24 * v36];
    *(v37 + 2) = v86;
    *(v37 + 6) = v34;
    --v8;
  }

  while (v8);
LABEL_172:

  v81 = v89[1];

  return v81(v15);
}

uint64_t REMStoreIntentPerformer.allEntities(query:)()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_261BE2300;

  return sub_261BE15EC(&unk_287440D20);
}

uint64_t sub_261BE2300(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 24) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_261BE243C, 0, 0);
  }

  else
  {
    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t REMStoreIntentPerformer.entities(query:matching:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[8] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA708, &qword_261D03298);
  v4[11] = swift_task_alloc();
  v5 = sub_261CFD0B4();
  v4[12] = v5;
  v4[13] = *(v5 - 8);
  v4[14] = swift_task_alloc();
  v6 = sub_261CFD6A4();
  v4[15] = v6;
  v4[16] = *(v6 - 8);
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261BE25C4, 0, 0);
}

uint64_t sub_261BE25C4()
{
  v42 = v0;
  if (qword_27FED9AC0 != -1)
  {
    swift_once();
  }

  v1 = sub_261CFF7A4();
  __swift_project_value_buffer(v1, qword_27FEDC108);
  sub_261CFD104();
  v2 = sub_261CFF784();
  v3 = sub_261CFFE84();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[8];
    v4 = v0[9];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v41 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_261B879C8(v5, v4, &v41);
    _os_log_impl(&dword_261AE2000, v2, v3, "[SmartListEntityQueryPerforming] Query smart list matching string %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x26671D560](v7, -1, -1);
    MEMORY[0x26671D560](v6, -1, -1);
  }

  if (qword_280D223E0 != -1)
  {
    swift_once();
  }

  v8 = 0;
  v9 = v0[16];
  v10 = off_280D223E8;
  v38 = v0[13];
  v37 = (v9 + 32);
  v35 = (v9 + 8);
  v36 = (v9 + 16);
  v11 = MEMORY[0x277D84F90];
  v39 = off_280D223E8;
  do
  {
    v40 = byte_287441648[v8 + 32];
    if (v10[2] && (v12 = sub_261B37E0C(byte_287441648[v8 + 32]), (v13 & 1) != 0))
    {
      v14 = v0[18];
      v15 = v0[19];
      v16 = v0[17];
      v17 = v0[14];
      v18 = v0[15];
      v19 = v0[12];
      (*(v38 + 16))(v17, v10[7] + *(v38 + 72) * v12, v19);
      sub_261CFD084();
      (*(v38 + 8))(v17, v19);
      (*v37)(v15, v14, v18);
      (*v36)(v16, v15, v18);
      v20 = sub_261CFFA94();
      v22 = v21;
      (*v35)(v15, v18);
    }

    else
    {
      v20 = 0;
      v22 = 0xE000000000000000;
    }

    v23 = v0[11];
    v24 = v0[8];
    v25 = v0[9];
    v0[2] = v20;
    v0[3] = v22;
    sub_261CFD874();
    v26 = sub_261CFD884();
    (*(*(v26 - 8) + 56))(v23, 0, 1, v26);
    sub_261B3BA3C();
    v27 = sub_261D00194();
    v29 = v28;
    sub_261AE6A40(v23, &qword_27FEDA708, &qword_261D03298);

    v0[4] = v27;
    v0[5] = v29;
    v0[6] = v24;
    v0[7] = v25;
    LOBYTE(v27) = sub_261D00184();

    if (v27)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v41 = v11;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_261B3A33C(0, *(v11 + 16) + 1, 1);
        v11 = v41;
      }

      v10 = v39;
      v32 = *(v11 + 16);
      v31 = *(v11 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_261B3A33C((v31 > 1), v32 + 1, 1);
        v11 = v41;
      }

      *(v11 + 16) = v32 + 1;
      *(v11 + v32 + 32) = v40;
    }

    else
    {
      v10 = v39;
    }

    v0[22] = v11;
    ++v8;
  }

  while (v8 != 6);
  v33 = swift_task_alloc();
  v0[20] = v33;
  *v33 = v0;
  v33[1] = sub_261BE2A68;

  return sub_261BE15EC(v11);
}

uint64_t sub_261BE2A68(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 168) = v1;

  if (v1)
  {
    v5 = sub_261BE2C40;
  }

  else
  {
    *(v4 + 184) = a1;
    v5 = sub_261BE2B90;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_261BE2B90()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 184);

  return v1(v2);
}

uint64_t sub_261BE2C40()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_261BE2CEC(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_261B4276C;

  return sub_261BE0BE8(a2);
}

uint64_t sub_261BE2D84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_261B4276C;

  return REMStoreIntentPerformer.entities(query:matching:)(v6, a2, a3);
}

uint64_t sub_261BE2E2C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_261BE14B0;

  return sub_261BE15EC(&unk_287440CF8);
}

uint64_t sub_261BE2EC8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_261BE14B0;

  return sub_261BE15EC(&unk_287440D20);
}

uint64_t sub_261BE2FAC()
{
  v0 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v0, qword_27FEDC128);
  v1 = __swift_project_value_buffer(v0, qword_27FEDC128);
  if (qword_280D22888 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D27010);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t OpenSearchAppIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v29 = a1;
  v1 = sub_261CFD184();
  v27 = *(v1 - 8);
  v28 = v1;
  MEMORY[0x28223BE20](v1);
  v26 = v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1E8, &unk_261D02310);
  MEMORY[0x28223BE20](v3 - 8);
  v25 = v24 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA280, &unk_261D02510);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v24 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v24 - v9;
  v11 = sub_261CFD674();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_261CFD884();
  MEMORY[0x28223BE20](v15 - 8);
  v16 = sub_261CFFA44();
  MEMORY[0x28223BE20](v16 - 8);
  v17 = sub_261CFD6A4();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v24[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA288, &unk_261D02520);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v12 + 104))(v14, *MEMORY[0x277CC9110], v11);
  sub_261CFD6C4();
  (*(v18 + 56))(v10, 1, 1, v17);
  v19 = sub_261CFF994();
  v31 = 0;
  v32 = 0;
  (*(*(v19 - 8) + 56))(v7, 1, 1, v19);
  v20 = sub_261CFC834();
  (*(*(v20 - 8) + 56))(v25, 1, 1, v20);
  (*(v27 + 104))(v26, *MEMORY[0x277CBA308], v28);
  v21 = sub_261CFCD24();
  v22 = v29;
  *v29 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC158, &qword_261D092E0);
  v30 = 0;
  sub_261AE4630();
  sub_261D002D4();
  sub_261CFC6B4();
  sub_261CFC6A4();
  result = sub_261CFC684();
  v22[1] = result;
  return result;
}

uint64_t sub_261BE3594()
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
  __swift_allocate_value_buffer(v6, qword_27FEDC140);
  __swift_project_value_buffer(v6, qword_27FEDC140);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v1 + 104))(v3, *MEMORY[0x277CC9110], v0);
  return sub_261CFD6C4();
}

uint64_t static OpenSearchAppIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED9AD0 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD6A4();
  v3 = __swift_project_value_buffer(v2, qword_27FEDC140);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static OpenSearchAppIntent.description.getter@<X0>(uint64_t a1@<X8>)
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

void *sub_261BE3B18@<X0>(void *a1@<X8>)
{
  result = sub_261CFCBB4();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_261BE3B54(uint64_t *a1, uint64_t *a2)
{
  sub_261CFD104();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCBC4();
}

uint64_t (*OpenSearchAppIntent.searchPhrase.modify(uint64_t *a1))()
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

uint64_t OpenSearchAppIntent.perform()(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = *v1;
  sub_261CFFD24();
  *(v2 + 56) = sub_261CFFD14();
  v4 = sub_261CFFCF4();
  *(v2 + 64) = v4;
  *(v2 + 72) = v3;

  return MEMORY[0x2822009F8](sub_261BE3D1C, v4, v3);
}

uint64_t sub_261BE3D1C()
{
  v13 = v0;
  if (qword_27FED9AC8 != -1)
  {
    swift_once();
  }

  v1 = sub_261CFF7A4();
  __swift_project_value_buffer(v1, qword_27FEDC128);
  sub_261CFCDA4();
  sub_261CFCDA4();
  v2 = sub_261CFF784();
  v3 = sub_261CFFE84();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v12 = v5;
    *v4 = 136315138;
    sub_261CFCBB4();
    v6 = sub_261B879C8(v0[2], v0[3], &v12);

    *(v4 + 4) = v6;
    _os_log_impl(&dword_261AE2000, v2, v3, "[AppIntent] Open Reminders and search for: %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x26671D560](v5, -1, -1);
    MEMORY[0x26671D560](v4, -1, -1);
  }

  sub_261CFCDA4();
  sub_261CFCDA4();
  v7 = swift_task_alloc();
  v0[10] = v7;
  *v7 = v0;
  v7[1] = sub_261B07CF8;
  v8 = v0[5];
  v9 = v0[6];
  v10 = v0[4];

  return sub_261C58B68(v10, "OpenSearchAppIntent", 19, 2, v8, v9);
}

uint64_t sub_261BE3F3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[10] = a2;
  v3[11] = a3;
  v3[9] = a1;
  sub_261CFFD24();
  v3[12] = sub_261CFFD14();
  v5 = sub_261CFFCF4();
  v3[13] = v5;
  v3[14] = v4;

  return MEMORY[0x2822009F8](sub_261BE3FD8, v5, v4);
}

uint64_t sub_261BE3FD8()
{
  v1 = v0[10];
  v2 = v0[11];
  sub_261B1EB3C(0, v1, v2);
  sub_261CFC664();
  v3 = v0[5];
  v4 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v3);
  v0[7] = v1;
  v0[8] = v2;
  v8 = (*(v4 + 8) + **(v4 + 8));
  v5 = swift_task_alloc();
  v0[15] = v5;
  *v5 = v0;
  v5[1] = sub_261BB5674;
  v6 = v0[9];

  return v8(v6, v0 + 7, v3, v4);
}

uint64_t (*sub_261BE41AC(uint64_t *a1))()
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

uint64_t sub_261BE4220@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED9AD0 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD6A4();
  v3 = __swift_project_value_buffer(v2, qword_27FEDC140);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_261BE42CC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_261AF43A8;

  return OpenSearchAppIntent.perform()(a1);
}

unint64_t sub_261BE4388()
{
  result = qword_27FEDC160;
  if (!qword_27FEDC160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDC160);
  }

  return result;
}

unint64_t sub_261BE43E4()
{
  result = qword_27FEDC168;
  if (!qword_27FEDC168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDC168);
  }

  return result;
}

unint64_t sub_261BE443C()
{
  result = qword_27FEDC170;
  if (!qword_27FEDC170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDC170);
  }

  return result;
}

uint64_t dispatch thunk of OpenSearchAppIntentPerforming.perform(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_261AF43A8;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_261BE4640()
{
  v0 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v0, qword_27FEDC180);
  v1 = __swift_project_value_buffer(v0, qword_27FEDC180);
  if (qword_280D22880 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D26FF8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id static RemindersInCalendarUtilities.itemProviderWriter(for:)(uint64_t a1)
{
  v2 = type metadata accessor for RemindersInCalendarUtilities.ReminderSpecifier(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_261B04F14(a1, v4);
  v5 = _s16ReminderDragItemCMa(0);
  v6 = objc_allocWithZone(v5);
  sub_261B04F14(v4, v6 + OBJC_IVAR____TtCO19RemindersAppIntents28RemindersInCalendarUtilities16ReminderDragItem_reminderSpecifier);
  v9.receiver = v6;
  v9.super_class = v5;
  v7 = objc_msgSendSuper2(&v9, sel_init);
  sub_261B04F78(v4);
  return v7;
}

uint64_t sub_261BE4858(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_261CFCDA4();
    v6 = v4;
    v4 = sub_261CFD774();
    v8 = v7;
  }

  else
  {
    sub_261CFCDA4();
    v8 = 0xF000000000000000;
  }

  v9 = a3;
  v5(v4, v8, a3);

  sub_261BE4E4C(v4, v8);
}

void sub_261BE49A4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 >> 60 == 15)
  {
    v6 = 0;
    if (a3)
    {
LABEL_3:
      v7 = sub_261CFD644();
      goto LABEL_6;
    }
  }

  else
  {
    v6 = sub_261CFD764();
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_6:
  v8 = v7;
  (*(a4 + 16))(a4, v6);
}

id sub_261BE4A3C(uint64_t a1, uint64_t a2, uint64_t a3, void (**a4)(void, void, void))
{
  v7 = swift_allocObject();
  *(v7 + 16) = a4;
  sub_261BE4DE8();
  _Block_copy(a4);
  if (sub_261D00004())
  {
    sub_261B7161C();
    v8 = sub_261CFFA54();

    v9 = sub_261CFFA54();
    v31 = sub_261BE4DE0;
    v32 = v7;
    aBlock = MEMORY[0x277D85DD0];
    v28 = 1107296256;
    v29 = sub_261BE4858;
    v30 = &block_descriptor_0;
    v10 = _Block_copy(&aBlock);
    sub_261CFCDA4();

    v11 = [v8 loadDataWithTypeIdentifier:v9 forItemProviderCompletionHandler:v10];
    _Block_release(v10);

    return v11;
  }

  else
  {
    v13 = objc_opt_self();
    sub_261D00334();

    aBlock = 0xD00000000000001CLL;
    v28 = 0x8000000261D1D660;
    MEMORY[0x26671C210](a1, a2);
    v14 = sub_261CFFA54();

    v15 = [v13 internalErrorWithDebugDescription_];

    swift_willThrow();
    if (qword_27FED9AD8 != -1)
    {
      swift_once();
    }

    v16 = sub_261CFF7A4();
    __swift_project_value_buffer(v16, qword_27FEDC180);
    v17 = v15;
    v18 = sub_261CFF784();
    v19 = sub_261CFFE64();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      aBlock = v21;
      *v20 = 136446210;
      swift_getErrorValue();
      v22 = sub_261D00674();
      v24 = sub_261B879C8(v22, v23, &aBlock);

      *(v20 + 4) = v24;
      _os_log_impl(&dword_261AE2000, v18, v19, "RemindersInCalendar: failed to load data for ReminderDragItem {error: %{public}s}", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x26671D560](v21, -1, -1);
      MEMORY[0x26671D560](v20, -1, -1);
    }

    v25 = v15;
    v26 = sub_261CFD644();
    (a4)[2](a4, 0, v26);

    return 0;
  }
}

unint64_t sub_261BE4DE8()
{
  result = qword_27FEDC1F8;
  if (!qword_27FEDC1F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FEDC1F8);
  }

  return result;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_261CFCDA4();
}

uint64_t sub_261BE4E4C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_261BE4E60(a1, a2);
  }

  return a1;
}

uint64_t sub_261BE4E60(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t OpenListAppIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v36 = a1;
  v1 = sub_261CFD184();
  v34 = *(v1 - 8);
  v35 = v1;
  MEMORY[0x28223BE20](v1);
  v33 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1E8, &unk_261D02310);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v32 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v31 = &v28 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0C0, &unk_261D02500);
  MEMORY[0x28223BE20](v7 - 8);
  v30 = &v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  MEMORY[0x28223BE20](v9 - 8);
  v29 = &v28 - v10;
  v11 = sub_261CFD674();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_261CFD884();
  MEMORY[0x28223BE20](v15 - 8);
  v16 = sub_261CFFA44();
  MEMORY[0x28223BE20](v16 - 8);
  v17 = sub_261CFD6A4();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA298, &qword_261D02530);
  sub_261CFF9B4();
  sub_261CFD874();
  v19 = *MEMORY[0x277CC9110];
  v20 = *(v12 + 104);
  v20(v14, v19, v11);
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v20(v14, v19, v11);
  v21 = v29;
  sub_261CFD6C4();
  (*(v18 + 56))(v21, 0, 1, v17);
  v22 = type metadata accessor for ListEntity(0);
  (*(*(v22 - 8) + 56))(v30, 1, 1, v22);
  v23 = sub_261CFC834();
  v24 = *(*(v23 - 8) + 56);
  v24(v31, 1, 1, v23);
  v24(v32, 1, 1, v23);
  (*(v34 + 104))(v33, *MEMORY[0x277CBA308], v35);
  sub_261B5F3AC(&qword_280D227A0, &protocol conformance descriptor for ListEntity);
  v25 = sub_261CFCC34();
  v26 = v36;
  *v36 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC278, &qword_261D094A0);
  v37 = 0;
  sub_261AE4630();
  sub_261D002D4();
  sub_261CFC6B4();
  sub_261CFC6A4();
  result = sub_261CFC684();
  v26[1] = result;
  return result;
}

uint64_t sub_261BE54EC()
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
  __swift_allocate_value_buffer(v6, qword_27FEDC260);
  __swift_project_value_buffer(v6, qword_27FEDC260);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v1 + 104))(v3, *MEMORY[0x277CC9110], v0);
  return sub_261CFD6C4();
}

uint64_t static OpenListAppIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED9AE0 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD6A4();
  v3 = __swift_project_value_buffer(v2, qword_27FEDC260);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static OpenListAppIntent.description.getter@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_261BE5A70(uint64_t a1, uint64_t *a2)
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
  sub_261CFCBC4();
  sub_261B0A1F0(v8);
}

uint64_t OpenListAppIntent.target.setter(uint64_t a1)
{
  v2 = type metadata accessor for ListEntity(0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_261B0A18C(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_261CFCBC4();
  return sub_261B0A1F0(a1);
}

uint64_t (*OpenListAppIntent.target.modify(uint64_t *a1))()
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

uint64_t OpenListAppIntent.perform()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = *v1;
  sub_261CFFD24();
  *(v2 + 40) = sub_261CFFD14();
  v4 = sub_261CFFCF4();
  *(v2 + 48) = v4;
  *(v2 + 56) = v3;

  return MEMORY[0x2822009F8](sub_261BE5D18, v4, v3);
}

uint64_t sub_261BE5D18()
{
  sub_261CFCDA4();
  sub_261CFCDA4();
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_261BB52D8;
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];

  return sub_261C58F48(v4, "OpenListAppIntent", 17, 2, v2, v3);
}

unint64_t sub_261BE5DF0()
{
  result = qword_27FEDC280;
  if (!qword_27FEDC280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDC280);
  }

  return result;
}

uint64_t sub_261BE5E78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[10] = a2;
  v3[11] = a3;
  v3[9] = a1;
  sub_261CFFD24();
  v3[12] = sub_261CFFD14();
  v5 = sub_261CFFCF4();
  v3[13] = v5;
  v3[14] = v4;

  return MEMORY[0x2822009F8](sub_261BE5F14, v5, v4);
}

uint64_t sub_261BE5F14()
{
  v1 = v0[10];
  v2 = v0[11];
  sub_261B1F8E4(0, v1, v2);
  sub_261CFC664();
  v3 = v0[5];
  v4 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v3);
  v0[7] = v1;
  v0[8] = v2;
  v8 = (*(v4 + 8) + **(v4 + 8));
  v5 = swift_task_alloc();
  v0[15] = v5;
  *v5 = v0;
  v5[1] = sub_261BB5674;
  v6 = v0[9];

  return v8(v6, v0 + 7, v3, v4);
}

uint64_t sub_261BE6080(uint64_t a1)
{
  v2 = type metadata accessor for ListEntity(0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_261B0A18C(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_261CFCBC4();
  return sub_261B0A1F0(a1);
}

uint64_t (*sub_261BE6110(uint64_t *a1))()
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

unint64_t sub_261BE6188()
{
  result = qword_280D22BB0;
  if (!qword_280D22BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D22BB0);
  }

  return result;
}

unint64_t sub_261BE61E0()
{
  result = qword_280D22BB8;
  if (!qword_280D22BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D22BB8);
  }

  return result;
}

uint64_t sub_261BE62A0@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED9AE0 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD6A4();
  v3 = __swift_project_value_buffer(v2, qword_27FEDC260);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_261BE634C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = *v1;
  sub_261CFFD24();
  *(v2 + 40) = sub_261CFFD14();
  v4 = sub_261CFFCF4();
  *(v2 + 48) = v4;
  *(v2 + 56) = v3;

  return MEMORY[0x2822009F8](sub_261BE63EC, v4, v3);
}

uint64_t sub_261BE63EC()
{
  sub_261CFCDA4();
  sub_261CFCDA4();
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_261BB5C4C;
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];

  return sub_261C58F48(v4, "OpenListAppIntent", 17, 2, v2, v3);
}

uint64_t dispatch thunk of OpenListAppIntentPerforming.perform(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_261AF43A8;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_261BE6628()
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
  __swift_allocate_value_buffer(v6, qword_27FEDC288);
  __swift_project_value_buffer(v6, qword_27FEDC288);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v1 + 104))(v3, *MEMORY[0x277CC9110], v0);
  return sub_261CFD6C4();
}

uint64_t static UpdateSectionDisplayNameAppIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED9AE8 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD6A4();
  v3 = __swift_project_value_buffer(v2, qword_27FEDC288);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static UpdateSectionDisplayNameAppIntent.description.getter@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_261BE6BD0(uint64_t a1, uint64_t *a2)
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

uint64_t UpdateSectionDisplayNameAppIntent.entity.setter(uint64_t a1)
{
  v2 = type metadata accessor for SectionEntity(0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_261B2EAD0(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_261CFCBC4();
  return sub_261B2EB34(a1);
}

uint64_t (*UpdateSectionDisplayNameAppIntent.entity.modify(uint64_t *a1))()
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

uint64_t (*UpdateSectionDisplayNameAppIntent.property.modify(uint64_t *a1))()
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

uint64_t sub_261BE6EF4()
{
  result = swift_getKeyPath();
  qword_27FEDC2A0 = result;
  return result;
}

uint64_t static UpdateSectionDisplayNameAppIntent.binding.getter()
{
  if (qword_27FED9AF0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return sub_261CFCDA4();
}

uint64_t static UpdateSectionDisplayNameAppIntent.binding.setter(uint64_t a1)
{
  if (qword_27FED9AF0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27FEDC2A0 = a1;
}

uint64_t (*static UpdateSectionDisplayNameAppIntent.binding.modify(uint64_t a1))(void)
{
  if (qword_27FED9AF0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_261BE709C@<X0>(void *a1@<X8>)
{
  if (qword_27FED9AF0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_27FEDC2A0;
  return sub_261CFCDA4();
}

uint64_t sub_261BE711C(uint64_t *a1)
{
  v1 = *a1;
  v2 = qword_27FED9AF0;
  sub_261CFCDA4();
  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27FEDC2A0 = v1;
}

uint64_t UpdateSectionDisplayNameAppIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v59 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA280, &unk_261D02510);
  MEMORY[0x28223BE20](v1 - 8);
  v54 = v38 - v2;
  v58 = sub_261CFD184();
  v60 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v57 = v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1E8, &unk_261D02310);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v53 = v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v56 = v38 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1E0, &unk_261D02300);
  MEMORY[0x28223BE20](v8 - 8);
  v52 = v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  MEMORY[0x28223BE20](v10 - 8);
  v55 = v38 - v11;
  v12 = sub_261CFD674();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_261CFD884();
  MEMORY[0x28223BE20](v16 - 8);
  v17 = sub_261CFFA44();
  MEMORY[0x28223BE20](v17 - 8);
  v18 = sub_261CFD6A4();
  v50 = v18;
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v38[1] = v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA398, &unk_261D02CE0);
  sub_261CFF9B4();
  sub_261CFD874();
  v22 = *(v13 + 104);
  v39 = *MEMORY[0x277CC9110];
  v21 = v39;
  v40 = v12;
  v22(v15, v39, v12);
  v42 = v22;
  v41 = v13 + 104;
  sub_261CFD6B4();
  sub_261CFF9B4();
  sub_261CFD874();
  v22(v15, v21, v12);
  v23 = v55;
  sub_261CFD6C4();
  v24 = *(v19 + 56);
  v49 = v19 + 56;
  v51 = v24;
  v24(v23, 0, 1, v18);
  v25 = type metadata accessor for SectionEntity(0);
  (*(*(v25 - 8) + 56))(v52, 1, 1, v25);
  v26 = sub_261CFC834();
  v45 = v26;
  v27 = *(v26 - 8);
  v28 = *(v27 + 56);
  v46 = v28;
  v47 = v27 + 56;
  v28(v56, 1, 1, v26);
  v28(v53, 1, 1, v26);
  v43 = *MEMORY[0x277CBA308];
  v29 = *(v60 + 104);
  v60 += 104;
  v44 = v29;
  v29(v57);
  sub_261AE82F4(&qword_280D224E0, type metadata accessor for SectionEntity, &protocol conformance descriptor for SectionEntity);
  *v59 = sub_261CFCC34();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA288, &unk_261D02520);
  sub_261CFF9B4();
  sub_261CFD874();
  v30 = v39;
  v31 = v40;
  v32 = v42;
  v42(v15, v39, v40);
  sub_261CFD6B4();
  sub_261CFF9B4();
  sub_261CFD874();
  v32(v15, v30, v31);
  v33 = v55;
  sub_261CFD6C4();
  v51(v33, 0, 1, v50);
  v34 = sub_261CFF994();
  v62 = 0;
  v63 = 0;
  (*(*(v34 - 8) + 56))(v54, 1, 1, v34);
  v46(v56, 1, 1, v45);
  v44(v57, v43, v58);
  v35 = sub_261CFCD24();
  v36 = v59;
  v59[1] = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA3A8, &qword_261D02CF0);
  v61 = 0;
  sub_261AE4630();
  sub_261D002D4();
  sub_261CFC6B4();
  sub_261CFC6A4();
  result = sub_261CFC684();
  v36[2] = result;
  return result;
}

uint64_t UpdateSectionDisplayNameAppIntent.perform()(uint64_t a1)
{
  *(v2 + 208) = a1;
  v3 = sub_261CFC9D4();
  *(v2 + 216) = v3;
  *(v2 + 224) = *(v3 - 8);
  *(v2 + 232) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1E0, &unk_261D02300);
  *(v2 + 240) = swift_task_alloc();
  *(v2 + 248) = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA3B0, &qword_261D02D00);
  *(v2 + 256) = v4;
  *(v2 + 264) = *(v4 - 8);
  *(v2 + 272) = swift_task_alloc();
  v5 = sub_261CFD754();
  *(v2 + 280) = v5;
  *(v2 + 288) = *(v5 - 8);
  *(v2 + 296) = swift_task_alloc();
  *(v2 + 304) = swift_task_alloc();
  v6 = type metadata accessor for SectionEntity(0);
  *(v2 + 312) = v6;
  *(v2 + 320) = *(v6 - 8);
  *(v2 + 328) = swift_task_alloc();
  *(v2 + 336) = swift_task_alloc();
  *(v2 + 344) = *v1;
  *(v2 + 360) = *(v1 + 16);
  *(v2 + 368) = sub_261CFFD24();
  *(v2 + 376) = sub_261CFFD14();
  v8 = sub_261CFFCF4();
  *(v2 + 384) = v8;
  *(v2 + 392) = v7;

  return MEMORY[0x2822009F8](sub_261BE7D2C, v8, v7);
}

uint64_t sub_261BE7D2C()
{
  v13 = v0;
  v1 = *(v0 + 360);
  v3 = *(v0 + 344);
  v2 = *(v0 + 352);
  v4 = *(v0 + 336);
  v5 = *(v0 + 304);
  sub_261CFCBB4();
  sub_261CFC664();
  sub_261C6FD40(v4, v0 + 56, v11);
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  sub_261B2EB34(v4);
  v6 = v11[1];
  *(v0 + 16) = v11[0];
  *(v0 + 32) = v6;
  *(v0 + 48) = v12;
  sub_261B30804(v0 + 16, v0 + 96);
  sub_261CFCBB4();
  v7 = *(v0 + 184);
  *(v0 + 192) = *(v0 + 176);
  *(v0 + 200) = v7;
  sub_261CFCBC4();
  sub_261B30860(v0 + 16);
  sub_261CFCBB4();
  sub_261BBEA50(2u, v5);
  sub_261B2EB34(v4);
  sub_261B20688(0, v3, v2, v1);
  *(v0 + 400) = sub_261CFFD14();
  v9 = sub_261CFFCF4();
  *(v0 + 408) = v9;
  *(v0 + 416) = v8;

  return MEMORY[0x2822009F8](sub_261BE7E94, v9, v8);
}

uint64_t sub_261BE7E94()
{
  sub_261B30804(v0 + 16, v0 + 136);
  v1 = swift_task_alloc();
  *(v0 + 424) = v1;
  *v1 = v0;
  v1[1] = sub_261BE7F5C;
  v2 = *(v0 + 272);

  return sub_261C54060(v2, "UpdateSectionAppIntent", 22, 2, v0 + 16);
}

uint64_t sub_261BE7F5C()
{
  v2 = *v1;
  *(*v1 + 432) = v0;

  v3 = *(v2 + 416);
  v4 = *(v2 + 408);
  if (v0)
  {
    v5 = sub_261BE8640;
  }

  else
  {
    v5 = sub_261BE8098;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_261BE8098()
{

  v1 = *(v0 + 384);
  v2 = *(v0 + 392);

  return MEMORY[0x2822009F8](sub_261BE80FC, v1, v2);
}

uint64_t sub_261BE80FC()
{
  v38 = v0;
  v1 = v0[39];
  v2 = v0[40];
  v3 = v0[31];
  v4 = v0[30];

  sub_261B01D28(&qword_27FEDA3B8, &qword_27FEDA3B0, &qword_261D02D00, MEMORY[0x277CBA268]);
  sub_261CFC964();
  sub_261B05584(v3, v4);
  if ((*(v2 + 48))(v4, 1, v1) == 1)
  {
    v6 = v0[36];
    v5 = v0[37];
    v7 = v0[35];
    sub_261B055F4(v0[30]);
    sub_261CFD704();
    v8 = sub_261CFD714();
    v10 = v9;
    v36 = *(v6 + 8);
    v36(v5, v7);
    if (qword_27FED97C0 != -1)
    {
      swift_once();
    }

    v11 = sub_261CFF7A4();
    __swift_project_value_buffer(v11, qword_27FED9EF8);
    sub_261CFD104();
    v12 = sub_261CFF784();
    v13 = sub_261CFFE64();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v37[0] = v15;
      *v14 = 136315650;
      v16 = sub_261B879C8(v8, v10, v37);

      *(v14 + 4) = v16;
      *(v14 + 12) = 2048;
      *(v14 + 14) = 134;
      *(v14 + 22) = 2080;
      *(v14 + 24) = sub_261B879C8(0xD00000000000004CLL, 0x8000000261D171B0, v37);
      _os_log_impl(&dword_261AE2000, v12, v13, "Value is unexpectedly nil {source: %s:%ld, description: %s}", v14, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x26671D560](v15, -1, -1);
      MEMORY[0x26671D560](v14, -1, -1);
    }

    else
    {
    }

    v28 = v0[33];
    v27 = v0[34];
    v30 = v0[31];
    v29 = v0[32];
    sub_261B01D70();
    swift_allocError();
    *v31 = 20;
    swift_willThrow();
    sub_261B30860((v0 + 2));
    sub_261B055F4(v30);
    (*(v28 + 8))(v27, v29);
    v36(v0[38], v0[35]);

    v26 = v0[1];
  }

  else
  {
    v17 = v0[41];
    v18 = v0[36];
    v19 = v0[37];
    v20 = v0[34];
    v33 = v0[35];
    v34 = v0[38];
    v21 = v0[32];
    v22 = v0[33];
    v23 = v0[31];
    v24 = v0[28];
    v25 = v0[29];
    v35 = v0[27];
    sub_261B30EB0(v0[30], v17);
    sub_261B055F4(v23);
    (*(v22 + 8))(v20, v21);
    (*(v18 + 16))(v19, v34, v33);
    sub_261CFC9E4();
    sub_261AE82F4(&qword_280D224D0, type metadata accessor for SectionEntity, &protocol conformance descriptor for SectionEntity);
    sub_261AE82F4(&qword_27FEDA3C0, MEMORY[0x277CB9DE0], MEMORY[0x277CB9DD8]);
    sub_261CFC984();
    sub_261B30860((v0 + 2));
    (*(v24 + 8))(v25, v35);
    sub_261B2EB34(v17);
    (*(v18 + 8))(v34, v33);

    v26 = v0[1];
  }

  return v26();
}

uint64_t sub_261BE8640()
{

  v1 = *(v0 + 384);
  v2 = *(v0 + 392);

  return MEMORY[0x2822009F8](sub_261BE86A4, v1, v2);
}

uint64_t sub_261BE86A4()
{
  v1 = v0[36];

  sub_261B30860((v0 + 2));
  (*(v1 + 8))(v0[38], v0[35]);

  v2 = v0[1];

  return v2();
}

uint64_t static UpdateSectionDisplayNameAppIntent.parameterSummary.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC2A8, &qword_261D09678);
  MEMORY[0x28223BE20](v0 - 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC2B0, &qword_261D09680);
  MEMORY[0x28223BE20](v1);
  sub_261B316FC();
  sub_261CFD164();
  sub_261CFD154();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC2B8, &qword_261D096B0);
  sub_261CFD144();

  sub_261CFD154();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC2C0, &qword_261D096E0);
  sub_261CFD144();

  sub_261CFD154();
  sub_261CFD174();
  return sub_261CFD124();
}

uint64_t sub_261BE8998(uint64_t a1)
{
  v2 = type metadata accessor for SectionEntity(0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_261B2EAD0(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_261CFCBC4();
  return sub_261B2EB34(a1);
}

uint64_t (*sub_261BE8A28(uint64_t *a1))()
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

uint64_t (*sub_261BE8A9C(uint64_t *a1))()
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

uint64_t sub_261BE8B10()
{
  if (qword_27FED9AF0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return sub_261CFCDA4();
}

uint64_t sub_261BE8B88@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED9AE8 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD6A4();
  v3 = __swift_project_value_buffer(v2, qword_27FEDC288);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_261BE8C38(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_261AF43A8;

  return UpdateSectionDisplayNameAppIntent.perform()(a1);
}

uint64_t sub_261BE8CD4(uint64_t a1)
{
  v2 = sub_261B316FC();

  return MEMORY[0x28210B538](a1, v2);
}

unint64_t sub_261BE8D5C()
{
  result = qword_280D22BD8;
  if (!qword_280D22BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D22BD8);
  }

  return result;
}

unint64_t sub_261BE8DB4()
{
  result = qword_280D22BE8;
  if (!qword_280D22BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D22BE8);
  }

  return result;
}

uint64_t sub_261BE8E68()
{
  v0 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v0, qword_27FEDC2E8);
  v1 = __swift_project_value_buffer(v0, qword_27FEDC2E8);
  if (qword_280D22888 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D27010);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_261BE9054()
{
  v20 = v0;
  v1 = *(v0 + 160);
  v2 = *(v0 + 136);

  sub_261CFCBB4();
  LOBYTE(v2) = *(v1 + *(v2 + 84));
  sub_261BED568(v1, type metadata accessor for ListEntity);
  v3 = *(v0 + 176);
  v12 = *(v0 + 104);
  v4 = *(v0 + 64);
  v16 = *(v0 + 48);
  v17 = v4;
  v18 = *(v0 + 80);
  v5 = *(v0 + 32);
  v14 = *(v0 + 16);
  if (v2)
  {
    v7 = (v0 + 144);
    v6 = *(v0 + 144);
    v13 = v3;
    v19 = *(v0 + 96);
    v15 = v5;
    sub_261BEAFB4(&v12, v6);
  }

  else
  {
    v7 = (v0 + 152);
    v8 = *(v0 + 152);
    v13 = v3;
    v19 = *(v0 + 96);
    v15 = v5;
    sub_261BE9260(&v12, v8);
  }

  v9 = *(v0 + 168);
  sub_261BED500(*v7, v9, type metadata accessor for ListEntity);
  sub_261BECB94();
  sub_261CFC994();
  sub_261BED568(v9, type metadata accessor for ListEntity);

  v10 = *(v0 + 8);

  return v10();
}

void sub_261BE9260(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v236 = a2;
  v261 = *MEMORY[0x277D85DE8];
  v227 = sub_261CFD884();
  v226 = *(v227 - 8);
  MEMORY[0x28223BE20](v227);
  v225 = &v222 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v234 = sub_261CFDDB4();
  v233 = *(v234 - 8);
  MEMORY[0x28223BE20](v234);
  v231 = (&v222 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v232 = sub_261CFE314();
  v230 = *(v232 - 8);
  v6 = MEMORY[0x28223BE20](v232);
  v228 = &v222 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v229 = &v222 - v8;
  v235 = sub_261CFDDD4();
  v252 = *(v235 - 8);
  MEMORY[0x28223BE20](v235);
  v248 = &v222 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD950, &unk_261D01440);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v222 - v11;
  v250 = type metadata accessor for GroupEntity(0);
  v13 = *(v250 - 8);
  MEMORY[0x28223BE20](v250);
  v253 = &v222 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for AppEntityID(0);
  MEMORY[0x28223BE20](v15);
  v17 = &v222 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for ListEntity(0);
  v19 = v18 - 8;
  MEMORY[0x28223BE20](v18);
  v21 = &v222 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v239 = a1[3];
  v22 = a1[5];
  v247 = a1[4];
  v240 = v22;
  v23 = a1[7];
  v249 = a1[6];
  v241 = v23;
  v24 = a1[9];
  v243 = a1[8];
  v242 = v24;
  v25 = a1[11];
  v244 = a1[10];
  v245 = v25;
  v246 = a1[12];
  v26 = *(v2 + 16);
  sub_261CFCBB4();
  sub_261BED5C8(&v21[*(v19 + 28)], v17, type metadata accessor for AppEntityID);
  sub_261BED568(v21, type metadata accessor for ListEntity);
  v27 = objc_allocWithZone(MEMORY[0x277D44700]);
  v28 = sub_261CFD814();
  v29 = sub_261CFFA54();
  v30 = [v27 initWithUUID:v28 entityName:v29];

  sub_261BED568(v17, type metadata accessor for AppEntityID);
  v254 = 0;
  v31 = [v26 fetchListWithObjectID:v30 error:&v254];

  v32 = v254;
  if (!v31)
  {
    v39 = v254;
    sub_261CFD654();

    swift_willThrow();
    return;
  }

  v33 = objc_allocWithZone(MEMORY[0x277D447D8]);
  v34 = v32;
  v224 = v26;
  v35 = [v33 initWithStore_];
  [v35 setSaveIsNoopIfNoChangedKeys_];
  v36 = [v35 updateList_];
  v37 = [v31 parentList];
  if (v37)
  {
    v38 = v37;
    v251 = [v35 updateList_];
  }

  else
  {
    v251 = 0;
  }

  sub_261CFCBB4();
  v40 = (*(v13 + 48))(v12, 1, v250);
  v238 = v35;
  v249 = v36;
  v237 = v31;
  if (v40 != 1)
  {
    sub_261BED500(v12, v253, type metadata accessor for GroupEntity);
    v44 = [v31 parentList];
    if (v44)
    {
      v45 = v44;
      v46 = [v44 objectID];
    }

    else
    {
      v46 = 0;
    }

    v47 = objc_allocWithZone(MEMORY[0x277D44700]);
    v48 = sub_261CFD814();
    v49 = sub_261CFFA54();
    v50 = [v47 initWithUUID:v48 entityName:v49];

    if (v46)
    {
      sub_261B05020(0, &qword_280D21DF0, 0x277D44700);
      v51 = v46;
      v52 = v46;
      v53 = sub_261D000F4();

      if (v53)
      {

        LODWORD(v250) = 0;
        v36 = v249;
LABEL_16:
        sub_261BED568(v253, type metadata accessor for GroupEntity);
        goto LABEL_17;
      }
    }

    else
    {
      v51 = 0;
    }

    v36 = v249;
    if ([v249 canBeIncludedInGroup] && (objc_msgSend(v36, sel_isGroup) & 1) == 0)
    {
      v77 = objc_allocWithZone(MEMORY[0x277D44700]);
      v78 = sub_261CFD814();
      v79 = sub_261CFFA54();
      v80 = [v77 initWithUUID:v78 entityName:v79];

      v254 = 0;
      v81 = [v224 fetchListWithObjectID:v80 error:&v254];

      if (v81)
      {
        v82 = v254;
        v83 = v238;
        v84 = [v238 updateList_];
        sub_261B05020(0, &qword_27FEDA1B0, 0x277D82BB8);
        v85 = [v36 accountID];
        v86 = [v84 accountID];
        v87 = sub_261D000F4();

        v88 = v237;
        if (v87)
        {
          v89 = [v84 sublistContext];
          if (v89)
          {
            v90 = v89;
            [v89 addListChangeItem_];

            LODWORD(v250) = 1;
            v251 = v84;
            goto LABEL_16;
          }

          sub_261B01D70();
          swift_allocError();
          *v183 = 0;
        }

        else
        {
          sub_261B01D70();
          swift_allocError();
          *v97 = 8;
        }

        swift_willThrow();

LABEL_28:
        sub_261BED568(v253, type metadata accessor for GroupEntity);
        return;
      }

      v96 = v254;
      sub_261CFD654();
    }

    else
    {
      sub_261B01D70();
      swift_allocError();
      *v61 = 1;
    }

    swift_willThrow();

    goto LABEL_28;
  }

  sub_261AE6A40(v12, &unk_27FEDD950, &unk_261D01440);
  v41 = [v36 parentListID];
  if (v41)
  {

    v42 = [v31 account];
    v43 = [v35 updateAccount_];

    [v43 addListChangeItem_];
    v251 = 0;
    LODWORD(v250) = 1;
  }

  else
  {
    LODWORD(v250) = 0;
  }

LABEL_17:
  sub_261CFCBB4();
  v54 = v255;
  if (v255)
  {
    v55 = v254;
    v56 = [v36 name];
    v57 = sub_261CFFA74();
    v59 = v58;

    if (v57 == v55 && v54 == v59)
    {
    }

    else
    {
      v60 = sub_261D00614();

      if (v60)
      {
      }

      else
      {
        v62 = sub_261CFFA54();

        [v36 setName_];

        LODWORD(v250) = 1;
      }
    }
  }

  sub_261CFCBB4();
  v64 = v254;
  v63 = v255;
  v66 = v256;
  v65 = v257;
  v67 = v258;
  v68 = [v36 appearanceContext];
  v69 = v68;
  if (!v63)
  {
    if (v68)
    {
      [v68 setBadge_];
    }

    goto LABEL_63;
  }

  if (v68)
  {
    v254 = v64;
    v255 = v63;
    v256 = v66;
    v257 = v65;
    v258 = v67;
    v70 = sub_261CA695C();
    if (v70)
    {
      v71 = v70;
      v72 = MEMORY[0x26671C600]();
      v253 = v71;
      if (v72)
      {
        v73 = v72;
        v74 = [v72 rawValue];

        if (v74)
        {
          v240 = sub_261CFFA74();
          v76 = v75;
        }

        else
        {
          v240 = 0;
          v76 = 0;
        }

        v71 = v253;
      }

      else
      {
        v240 = 0;
        v76 = 0;
      }

      v91 = [v71 rawValue];
      if (v91)
      {
        v92 = v91;
        v239 = sub_261CFFA74();
        v94 = v93;

        if (v76)
        {
          if (v94)
          {
            if (v240 == v239 && v76 == v94)
            {

LABEL_61:
              sub_261AF9C70(v64, v63, v66, v65, v67);

              goto LABEL_62;
            }

            v98 = sub_261D00614();

            if (v98)
            {
              goto LABEL_61;
            }

LABEL_57:
            v95 = v253;
            [v69 setBadge_];

            sub_261AF9C70(v64, v63, v66, v65, v67);
            LODWORD(v250) = 1;
LABEL_62:
            v36 = v249;
            goto LABEL_63;
          }
        }

        else if (!v94)
        {
          goto LABEL_61;
        }
      }

      else if (!v76)
      {
        goto LABEL_61;
      }

      goto LABEL_57;
    }
  }

  sub_261AF9C70(v64, v63, v66, v65, v67);
LABEL_63:
  v99 = v252;
  sub_261CFCBB4();
  if (v255)
  {
    v100 = v36;
    v101 = v254;
    v102 = v257;
    v104 = v258;
    v103 = v259;
    v105 = v260;
    v253 = v256;
    v247 = v255;
    v106 = v100;
    v107 = [v106 accountCapabilities];
    v108 = [v107 supportsListAppearance];

    v109 = sub_261B42C3C(v108);
    if (v109)
    {
      v222 = v101;
      v223 = v102;
      v224 = v104;
      v239 = v103;
      v240 = v105;
      v110 = v109;
      v111 = [v106 color];
      if (v111 && (v112 = v111, sub_261B05020(0, &qword_27FEDC300, 0x277D445D0), v113 = v110, v114 = sub_261D000F4(), v113, v112, (v114 & 1) != 0))
      {
        sub_261AF98C8(v222, v247, v253, v223, v224, v239, v240);
      }

      else
      {
        [v106 setColor_];

        sub_261AF98C8(v222, v247, v253, v223, v224, v239, v240);
        LODWORD(v250) = 1;
      }
    }

    else
    {
      sub_261AF98C8(v101, v247, v253, v102, v104, v103, v105);
    }

    v36 = v249;
    v99 = v252;
  }

  else
  {
    [v36 setColor_];
  }

  sub_261CFCBB4();
  v115 = v248;
  if (v254 != 2)
  {
    v116 = v254 & 1;
    if ([v36 isPinned] != v116)
    {
      [v36 setIsPinned_];
      LODWORD(v250) = 1;
    }
  }

  sub_261CFCBB4();
  v117 = v254;
  if (v254 != 2)
  {
    v118 = [v36 autoCategorizeContextChangeItem];
    if (!v118 || (v119 = v118, v120 = [v118 shouldAutoCategorizeItems], v119, v115 = v248, v120 != (v117 & 1)))
    {
      v121 = [v36 autoCategorizeContextChangeItem];
      [v121 setShouldAutoCategorizeItems_];

      LODWORD(v250) = 1;
    }
  }

  sub_261CFCBB4();
  if (v254 != 2)
  {
    v122 = v254 & 1;
    v252 = sub_261CFDE54();
    v123 = sub_261CFDDA4();
    *v115 = [v36 remObjectID];
    v124 = *MEMORY[0x277D45C90];
    v125 = v99[13];
    v126 = v235;
    v125(v115, v124, v235);
    v127 = sub_261CFDDC4() & 1;

    v128 = v126;
    v129 = v99[1];
    v129(v115, v128);
    LODWORD(v253) = v122;
    v130 = v127 == v122;
    v36 = v249;
    if (!v130)
    {
      v131 = v128;
      v132 = sub_261CFDDA4();
      *v115 = [v36 remObjectID];
      v125(v115, v124, v131);
      sub_261CFDDF4();

      v129(v115, v131);
      LODWORD(v250) = 1;
    }
  }

  sub_261CFCBB4();
  v133 = v254;
  if (v254 == 2)
  {
    LOBYTE(v254) = 2;
    sub_261BECF50(&v254, MEMORY[0x277D45C88]);
    v134 = v237;
    goto LABEL_105;
  }

  v135 = MEMORY[0x277D45C88];
  sub_261BECBEC(MEMORY[0x277D45C88], &v254);
  v134 = v237;
  if (v254 == 2)
  {
    goto LABEL_85;
  }

  if (v254)
  {
    v148 = 0x736E6D756C6F63;
  }

  else
  {
    v148 = 1953720684;
  }

  if (v254)
  {
    v149 = 0xE700000000000000;
  }

  else
  {
    v149 = 0xE400000000000000;
  }

  if (v133)
  {
    v150 = 0x736E6D756C6F63;
  }

  else
  {
    v150 = 1953720684;
  }

  if (v133)
  {
    v151 = 0xE700000000000000;
  }

  else
  {
    v151 = 0xE400000000000000;
  }

  if (v148 == v150 && v149 == v151)
  {

    goto LABEL_105;
  }

  v152 = sub_261D00614();

  if ((v152 & 1) == 0)
  {
LABEL_85:
    LOBYTE(v254) = v133 & 1;
    if (v133)
    {
      v136 = MEMORY[0x277D45D60];
    }

    else
    {
      v136 = MEMORY[0x277D45D58];
    }

    sub_261BED2EC(&v254);
    v137 = v230;
    v138 = *v136;
    v139 = v228;
    v140 = v232;
    (*(v230 + 104))(v228, v138, v232);
    v141 = v229;
    (*(v137 + 32))(v229, v139, v140);
    sub_261CFDE54();
    v142 = sub_261CFDDA4();
    v143 = [v36 remObjectID];
    v144 = v231;
    *v231 = v143;
    v145 = *v135;
    v146 = v233;
    v147 = v234;
    (*(v233 + 104))(v144, v145, v234);
    sub_261CFDD94();

    (*(v146 + 8))(v144, v147);
    (*(v137 + 8))(v141, v140);
    LODWORD(v250) = 1;
  }

LABEL_105:
  sub_261CFCBB4();
  v153 = MEMORY[0x277D44BD8];
  if (v254 <= 4u)
  {
    v156 = MEMORY[0x277D44BE8];
    v157 = MEMORY[0x277D44BE0];
    if (v254 != 3)
    {
      v157 = MEMORY[0x277D44C00];
    }

    if (v254 != 2)
    {
      v156 = v157;
    }

    if (v254)
    {
      v153 = MEMORY[0x277D44BF0];
    }

    if (v254 <= 1u)
    {
      v155 = v153;
    }

    else
    {
      v155 = v156;
    }
  }

  else if (v254 > 7u)
  {
    if (v254 == 8)
    {
      v155 = MEMORY[0x277D44C08];
    }

    else
    {
      if (v254 != 9)
      {
        [v36 setSortingStyle_];
        goto LABEL_132;
      }

      v155 = MEMORY[0x277D44C10];
    }
  }

  else
  {
    v154 = MEMORY[0x277D44BD0];
    if (v254 != 6)
    {
      v154 = MEMORY[0x277D44BC8];
    }

    if (v254 == 5)
    {
      v155 = MEMORY[0x277D44BF8];
    }

    else
    {
      v155 = v154;
    }
  }

  v158 = *v155;
  v159 = [v36 sortingStyle];
  v160 = sub_261CFFA74();
  v162 = v161;
  if (v160 == sub_261CFFA74() && v162 == v163)
  {
  }

  else
  {
    v164 = sub_261D00614();

    if (v164)
    {
    }

    else
    {
      [v36 setSortingStyle_];

      LODWORD(v250) = 1;
    }
  }

LABEL_132:
  sub_261CFCBB4();
  v165 = v254;
  if (v254 == 2)
  {
    v166 = [v36 groceryContextChangeItem];
    if (v166)
    {
      v167 = v166;
      [v166 setShouldCategorizeGroceryItems_];
    }

    v168 = [v36 groceryContextChangeItem];
    if (v168)
    {
      v169 = v168;
      [v168 setGroceryLocaleID_];
    }

    goto LABEL_161;
  }

  v170 = [v36 groceryContextChangeItem];
  if (v170)
  {
    v171 = v170;
    v172 = [v170 shouldCategorizeGroceryItems];

    if (v172)
    {
      if (v165)
      {

        goto LABEL_161;
      }

      v173 = sub_261D00614();

      if (v173)
      {
        goto LABEL_161;
      }
    }

    else if (v165)
    {
    }

    else
    {
      v174 = sub_261D00614();

      if ((v174 & 1) == 0)
      {
        goto LABEL_161;
      }
    }

    v175 = [v36 groceryContextChangeItem];
    if (v175)
    {
      v176 = v175;
      [v175 setShouldCategorizeGroceryItems_];
    }

    v177 = [v36 groceryContextChangeItem];
    if (!v177)
    {
LABEL_160:
      LODWORD(v250) = 1;
      goto LABEL_161;
    }

    v178 = v177;
    if (v172)
    {
      v179 = 0;
LABEL_159:
      [v178 setGroceryLocaleID_];

      goto LABEL_160;
    }

    v180 = [objc_opt_self() daemonUserDefaults];
    v181 = [v180 preferredLocalizations];

    if (v181)
    {
      v182 = sub_261CFFC64();

      if (*(v182 + 16))
      {
        sub_261CFD104();

LABEL_158:
        v179 = sub_261CFFA54();

        goto LABEL_159;
      }
    }

    v184 = v225;
    sub_261CFD874();
    sub_261CFD854();
    (*(v226 + 8))(v184, v227);
    goto LABEL_158;
  }

LABEL_161:
  if (qword_27FED9AF8 != -1)
  {
    swift_once();
  }

  v185 = sub_261CFF7A4();
  v186 = __swift_project_value_buffer(v185, qword_27FEDC2E8);
  v187 = v36;
  v188 = v134;
  v253 = v186;
  v189 = sub_261CFF784();
  v190 = sub_261CFFE84();

  if (os_log_type_enabled(v189, v190))
  {
    v191 = swift_slowAlloc();
    v192 = swift_slowAlloc();
    v249 = v192;
    v252 = swift_slowAlloc();
    v254 = v252;
    *v191 = 138543618;
    v193 = [v188 objectID];
    *(v191 + 4) = v193;
    *v192 = v193;
    *(v191 + 12) = 2082;
    v194 = v187;
    v195 = [v187 changedKeys];
    sub_261CFFD64();

    v187 = v194;
    v196 = sub_261CFFD74();
    v198 = v197;

    v199 = sub_261B879C8(v196, v198, &v254);

    *(v191 + 14) = v199;
    _os_log_impl(&dword_261AE2000, v189, v190, "[UpdateListIntentPerforming] Update list properties with id: %{public}@, changedKeys: %{public}s", v191, 0x16u);
    v200 = v249;
    sub_261AE6A40(v249, &unk_27FEDA730, &unk_261D035C0);
    MEMORY[0x26671D560](v200, -1, -1);
    v201 = v252;
    __swift_destroy_boxed_opaque_existential_0(v252);
    MEMORY[0x26671D560](v201, -1, -1);
    MEMORY[0x26671D560](v191, -1, -1);
  }

  v202 = v238;
  v254 = 0;
  if ([v238 saveSynchronouslyWithError_])
  {
    v203 = v254;
    if ((v250 & 1) == 0)
    {
      v204 = [v187 changedKeys];
      v205 = sub_261CFFD64();

      v206 = *(v205 + 16);

      if (!v206)
      {
        v207 = sub_261CFF784();
        v208 = sub_261CFFE84();
        if (os_log_type_enabled(v207, v208))
        {
          v209 = swift_slowAlloc();
          *v209 = 0;
          _os_log_impl(&dword_261AE2000, v207, v208, "[UpdateListIntentPerforming] No changes required for list. Not throwing an error because of Shortcuts multiple intent calls.", v209, 2u);
          MEMORY[0x26671D560](v209, -1, -1);
        }
      }
    }

    sub_261B797FC(v187, v251, v236);
  }

  else
  {
    v210 = v254;
    v211 = sub_261CFD654();

    swift_willThrow();
    v212 = v211;
    v213 = sub_261CFF784();
    v214 = sub_261CFFE64();

    if (os_log_type_enabled(v213, v214))
    {
      v215 = swift_slowAlloc();
      v253 = v188;
      v216 = v215;
      v217 = swift_slowAlloc();
      v254 = v217;
      *v216 = 136315138;
      swift_getErrorValue();
      v218 = sub_261D00674();
      v220 = sub_261B879C8(v218, v219, &v254);

      *(v216 + 4) = v220;
      _os_log_impl(&dword_261AE2000, v213, v214, "[UpdateListIntentPerforming] Update list properties failed with save error: %s", v216, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v217);
      v202 = v238;
      MEMORY[0x26671D560](v217, -1, -1);
      v188 = v253;
      MEMORY[0x26671D560](v216, -1, -1);
    }

    sub_261B01D70();
    swift_allocError();
    *v221 = 19;
    swift_willThrow();
  }
}

void sub_261BEAFB4(void *a1@<X0>, void *a2@<X8>)
{
  v214 = a2;
  v223 = *MEMORY[0x277D85DE8];
  v195 = sub_261CFDDB4();
  v194 = *(v195 - 8);
  MEMORY[0x28223BE20](v195);
  v192 = (&v189 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v193 = sub_261CFE314();
  v191 = *(v193 - 8);
  v5 = MEMORY[0x28223BE20](v193);
  v189 = &v189 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v190 = &v189 - v7;
  v199 = sub_261CFDDD4();
  v207 = *(v199 - 8);
  MEMORY[0x28223BE20](v199);
  v198 = (&v189 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD950, &unk_261D01440);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v196 = &v189 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v197 = &v189 - v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v189 - v14;
  v210 = type metadata accessor for GroupEntity(0);
  v211 = *(v210 - 1);
  MEMORY[0x28223BE20](v210);
  v200 = &v189 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for AppEntityID(0);
  MEMORY[0x28223BE20](v17);
  v19 = &v189 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for ListEntity(0);
  MEMORY[0x28223BE20](v20);
  v22 = &v189 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v202 = a1[3];
  v23 = a1[5];
  v203 = a1[4];
  *(&v202 + 1) = v23;
  v24 = a1[7];
  v212 = a1[6];
  v204 = v24;
  v205 = a1[8];
  v25 = a1[11];
  v206 = a1[10];
  v208 = v25;
  v26 = *(v2 + 16);
  sub_261CFCBB4();
  v213 = v20;
  sub_261BED5C8(&v22[v20[5]], v19, type metadata accessor for AppEntityID);
  sub_261BED568(v22, type metadata accessor for ListEntity);
  v27 = objc_allocWithZone(MEMORY[0x277D44700]);
  v28 = sub_261CFD814();
  v29 = sub_261CFFA54();
  v30 = [v27 initWithUUID:v28 entityName:v29];

  sub_261BED568(v19, type metadata accessor for AppEntityID);
  *&v219 = 0;
  v31 = [v26 fetchCustomSmartListWithObjectID:v30 error:&v219];

  if (!v31)
  {
    v45 = v219;
    sub_261CFD654();

    swift_willThrow();
    return;
  }

  v32 = v219;
  sub_261CFCBB4();
  v33 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];
  [v33 setSaveIsNoopIfNoChangedKeys_];
  v209 = v33;
  v34 = [v33 updateSmartList_];
  sub_261CFCBB4();
  v35 = v211;
  v36 = v210;
  v37 = (*(v211 + 6))(v15, 1, v210);
  v212 = v34;
  v201 = v31;
  if (v37 == 1)
  {
    sub_261AE6A40(v15, &unk_27FEDD950, &unk_261D01440);
    v38 = [v34 parentListID];
    v39 = v34;
    if (!v38)
    {
      goto LABEL_10;
    }

    v40 = [v31 accountID];
    *&v219 = 0;
    v41 = [v26 fetchAccountWithObjectID:v40 error:&v219];

    if (v41)
    {
      v42 = v219;
      v43 = [v209 updateAccount_];
      [v43 addSmartListChangeItem_];
      v44 = v197;
      v35[7](v197, 1, 1, v36);
      sub_261AFB668(v44, v196, &unk_27FEDD950, &unk_261D01440);
      sub_261CFD2E4();

      sub_261AE6A40(v44, &unk_27FEDD950, &unk_261D01440);
      goto LABEL_10;
    }

    v66 = v219;
    sub_261CFD654();

    swift_willThrow();
LABEL_18:
    v67 = v214;
    goto LABEL_118;
  }

  v46 = v15;
  v47 = v200;
  sub_261BED500(v46, v200, type metadata accessor for GroupEntity);
  v48 = objc_allocWithZone(MEMORY[0x277D44700]);
  v49 = sub_261CFD814();
  v50 = sub_261CFFA54();
  v51 = [v48 initWithUUID:v49 entityName:v50];

  *&v219 = 0;
  v52 = [v26 fetchListWithObjectID:v51 error:&v219];

  if (!v52)
  {
    v64 = v219;
    sub_261CFD654();

    swift_willThrow();
    sub_261BED568(v47, type metadata accessor for GroupEntity);
    goto LABEL_18;
  }

  v53 = v219;
  v54 = v209;
  v55 = [v209 updateList_];
  v56 = [v55 sublistContext];
  v57 = v214;
  v39 = v212;
  if (!v56)
  {
    sub_261B01D70();
    swift_allocError();
    *v68 = 0;
    swift_willThrow();

    sub_261BED568(v47, type metadata accessor for GroupEntity);
    v67 = v57;
    goto LABEL_118;
  }

  v58 = v56;
  [v56 addSmartListChangeItem_];
  v59 = v197;
  sub_261BED5C8(v47, v197, type metadata accessor for GroupEntity);
  (*(v211 + 7))(v59, 0, 1, v210);
  sub_261AFB668(v59, v196, &unk_27FEDD950, &unk_261D01440);
  sub_261CFD2E4();

  sub_261AE6A40(v59, &unk_27FEDD950, &unk_261D01440);
  sub_261BED568(v47, type metadata accessor for GroupEntity);
LABEL_10:
  sub_261CFCBB4();
  v60 = *(&v219 + 1);
  v61 = v214;
  if (*(&v219 + 1))
  {
    v62 = v219;
    *&v219 = v39;
    sub_261B05020(0, &qword_27FEDC310, 0x277D44800);
    if (sub_261D00044() == v62 && v60 == v63)
    {
    }

    else
    {
      v65 = sub_261D00614();

      if (v65)
      {
      }

      else
      {
        v69 = sub_261CFFA54();
        [v39 setName_];

        *&v219 = v62;
        *(&v219 + 1) = v60;
        sub_261CFCA14();
      }
    }
  }

  sub_261CFCBB4();
  v70 = *(&v219 + 1);
  if (*(&v219 + 1))
  {
    v71 = v219;
    v72 = v220;
    v73 = v221;
    v74 = [v39 customContext];
    if (v74)
    {
      v75 = v74;
      *&v219 = v71;
      *(&v219 + 1) = v70;
      v220 = v72;
      *&v221 = v73;
      v211 = sub_261CA695C();
      if (v211)
      {
        *&v219 = v39;
        sub_261B05020(0, &qword_27FEDC310, 0x277D44800);
        v76 = sub_261D00054();
        if (v76 && (v77 = v76, v78 = [v76 rawValue], v77, v78))
        {
          v210 = sub_261CFFA74();
          v80 = v79;
        }

        else
        {
          v210 = 0;
          v80 = 0;
        }

        v83 = [v211 rawValue];
        if (v83)
        {
          v84 = v83;
          *(&v202 + 1) = sub_261CFFA74();
          v86 = v85;

          if (v80)
          {
            if (v86)
            {
              if (v210 == *(&v202 + 1) && v80 == v86)
              {

LABEL_45:
                sub_261AF9C70(v71, v70, v72, *(&v72 + 1), v73);

                v61 = v214;
                goto LABEL_46;
              }

              v88 = sub_261D00614();

              if (v88)
              {
                goto LABEL_45;
              }

LABEL_43:
              v87 = v211;
              [v75 setBadge_];
              v61 = v214;
              *&v219 = v71;
              *(&v219 + 1) = v70;
              v220 = v72;
              *&v221 = v73;
              sub_261CFCDA4();
              sub_261CFD104();
              sub_261CFCDA4();
              sub_261CFCDA4();
              sub_261CFD2E4();

              sub_261AF9C70(v71, v70, v72, *(&v72 + 1), v73);
LABEL_46:
              v39 = v212;
              goto LABEL_47;
            }
          }

          else if (!v86)
          {
            goto LABEL_45;
          }
        }

        else if (!v80)
        {
          goto LABEL_45;
        }

        goto LABEL_43;
      }
    }

    sub_261AF9C70(v71, v70, v72, *(&v72 + 1), v73);
    goto LABEL_47;
  }

  v81 = [v39 customContext];
  if (v81)
  {
    v82 = v81;
    [v81 setBadge_];
  }

  *&v221 = 0;
  v219 = 0u;
  v220 = 0u;
  sub_261CFD2E4();
LABEL_47:
  v89 = MEMORY[0x277D45F00];
  sub_261CFCBB4();
  if (!*(&v219 + 1))
  {
    [v39 setColor_];
    *(&v216 + 1) = sub_261B05020(0, &qword_27FEDC310, 0x277D44800);
    *&v217 = v89;
    *&v215 = v39;
    v104 = v39;
    ColorEntity.init(list:)(&v215, &v219);
    v215 = v219;
    v216 = v220;
    v217 = v221;
    v218 = v222;
    sub_261CFD2E4();
    goto LABEL_57;
  }

  v90 = v39;
  v91 = v219;
  v92 = *(&v220 + 1);
  v93 = v221;
  v94 = v222;
  v211 = v220;
  v210 = *(&v219 + 1);
  v95 = v90;
  v96 = [v95 accountCapabilities];
  v97 = [v96 supportsListAppearance];

  v98 = sub_261B42C3C(v97);
  if (!v98)
  {
    sub_261AF98C8(v91, v210, v211, v92, v93, *(&v93 + 1), v94);
    goto LABEL_55;
  }

  v197 = v91;
  v200 = v92;
  v202 = v93;
  v203 = v94;
  v99 = v98;
  v100 = [v95 color];
  if (v100)
  {
    v101 = v100;
    sub_261B05020(0, &qword_27FEDC300, 0x277D445D0);
    v102 = v99;
    v103 = sub_261D000F4();

    if (v103)
    {
      sub_261AF98C8(v197, v210, v211, v200, v202, *(&v202 + 1), v203);

LABEL_55:
      v61 = v214;
      goto LABEL_56;
    }
  }

  [v95 setColor_];

  *(&v216 + 1) = sub_261B05020(0, &qword_27FEDC310, 0x277D44800);
  *&v217 = MEMORY[0x277D45F00];
  *&v215 = v95;
  v105 = v95;
  ColorEntity.init(list:)(&v215, &v219);
  v61 = v214;
  v215 = v219;
  v216 = v220;
  v217 = v221;
  v218 = v222;
  sub_261CFD2E4();
  sub_261AF98C8(v197, v210, v211, v200, v202, *(&v202 + 1), v203);

LABEL_56:
  v39 = v212;
LABEL_57:
  sub_261CFCBB4();
  if (v219 != 2)
  {
    v106 = v219 & 1;
    if ([v39 isPinned] != v106)
    {
      [v39 setIsPinned_];
      LOBYTE(v219) = v106;
      sub_261CFD2E4();
    }
  }

  sub_261CFCBB4();
  if (v219 != 2)
  {
    v107 = v219 & 1;
    v211 = sub_261CFDE54();
    v108 = sub_261CFDDA4();
    v109 = [v212 remObjectID];
    v110 = v198;
    *v198 = v109;
    v111 = *MEMORY[0x277D45C98];
    v112 = v207;
    v113 = v199;
    v210 = *(v207 + 104);
    (v210)(v110, v111, v199);
    v114 = sub_261CFDDC4() & 1;

    v115 = *(v112 + 8);
    v207 = v112 + 8;
    v115(v110, v113);
    v116 = v114 == v107;
    v61 = v214;
    if (!v116)
    {
      v117 = sub_261CFDDA4();
      v118 = [v212 remObjectID];
      v119 = v198;
      *v198 = v118;
      v120 = v199;
      (v210)(v119, v111, v199);
      sub_261CFDDF4();

      v115(v119, v120);
      LOBYTE(v219) = v107;
      sub_261CFD2E4();
    }
  }

  sub_261CFCBB4();
  v121 = v219;
  if (v219 == 2)
  {
    LOBYTE(v219) = 2;
    v122 = MEMORY[0x277D45C80];
    v123 = v212;
    sub_261BECF50(&v219, MEMORY[0x277D45C80]);
    sub_261BECBEC(v122, &v219);
    sub_261CFD2E4();
    goto LABEL_86;
  }

  v124 = MEMORY[0x277D45C80];
  v123 = v212;
  sub_261BECBEC(MEMORY[0x277D45C80], &v219);
  if (v219 == 2)
  {
    goto LABEL_66;
  }

  if (v219)
  {
    v138 = 0x736E6D756C6F63;
  }

  else
  {
    v138 = 1953720684;
  }

  if (v219)
  {
    v139 = 0xE700000000000000;
  }

  else
  {
    v139 = 0xE400000000000000;
  }

  if (v121)
  {
    v140 = 0x736E6D756C6F63;
  }

  else
  {
    v140 = 1953720684;
  }

  if (v121)
  {
    v141 = 0xE700000000000000;
  }

  else
  {
    v141 = 0xE400000000000000;
  }

  if (v138 == v140 && v139 == v141)
  {

    goto LABEL_86;
  }

  v142 = sub_261D00614();

  if ((v142 & 1) == 0)
  {
LABEL_66:
    v125 = v121 & 1;
    LOBYTE(v219) = v121 & 1;
    if (v121)
    {
      v126 = MEMORY[0x277D45D60];
    }

    else
    {
      v126 = MEMORY[0x277D45D58];
    }

    sub_261BED2EC(&v219);
    v127 = v191;
    v128 = *v126;
    v129 = v189;
    v130 = v193;
    (*(v191 + 104))(v189, v128, v193);
    v131 = v190;
    (*(v127 + 32))(v190, v129, v130);
    sub_261CFDE54();
    v132 = sub_261CFDDA4();
    v133 = [v123 remObjectID];
    v134 = v192;
    *v192 = v133;
    v135 = *v124;
    v136 = v194;
    v137 = v195;
    (*(v194 + 104))(v134, v135, v195);
    sub_261CFDD94();

    (*(v136 + 8))(v134, v137);
    (*(v127 + 8))(v131, v130);
    v61 = v214;
    LOBYTE(v219) = v125;
    sub_261CFD2E4();
  }

LABEL_86:
  sub_261CFCBB4();
  v143 = MEMORY[0x277D44BD8];
  if (v219 <= 4u)
  {
    v147 = MEMORY[0x277D44BE8];
    v148 = MEMORY[0x277D44BE0];
    if (v219 != 3)
    {
      v148 = MEMORY[0x277D44C00];
    }

    if (v219 != 2)
    {
      v147 = v148;
    }

    if (v219)
    {
      v143 = MEMORY[0x277D44BF0];
    }

    if (v219 <= 1u)
    {
      v146 = v143;
    }

    else
    {
      v146 = v147;
    }

    v144 = v201;
    goto LABEL_103;
  }

  v144 = v201;
  if (v219 <= 7u)
  {
    v145 = MEMORY[0x277D44BD0];
    if (v219 != 6)
    {
      v145 = MEMORY[0x277D44BC8];
    }

    if (v219 == 5)
    {
      v146 = MEMORY[0x277D44BF8];
    }

    else
    {
      v146 = v145;
    }

    goto LABEL_103;
  }

  if (v219 == 8)
  {
    v146 = MEMORY[0x277D44C08];
    goto LABEL_103;
  }

  if (v219 == 9)
  {
    v146 = MEMORY[0x277D44C10];
LABEL_103:
    v149 = *v146;
    v150 = [v123 sortingStyle];
    v151 = sub_261CFFA74();
    v153 = v152;
    if (v151 == sub_261CFFA74() && v153 == v154)
    {
    }

    else
    {
      v155 = sub_261D00614();

      if ((v155 & 1) == 0)
      {
        [v123 setSortingStyle_];
        sub_261CFCBB4();
        LOBYTE(v215) = v219;
        sub_261CFD2E4();
      }

      v144 = v201;
    }

    goto LABEL_109;
  }

  [v123 setSortingStyle_];
  v188 = [v123 sortingStyle];
  sub_261B781A4(&v219);

  LOBYTE(v215) = v219;
  sub_261CFD2E4();
LABEL_109:
  if (qword_27FED9AF8 != -1)
  {
    swift_once();
  }

  v156 = sub_261CFF7A4();
  v157 = __swift_project_value_buffer(v156, qword_27FEDC2E8);
  v158 = v123;
  v159 = v144;
  v211 = v157;
  v160 = sub_261CFF784();
  v161 = sub_261CFFE84();

  v162 = os_log_type_enabled(v160, v161);
  v213 = v158;
  v212 = v159;
  if (v162)
  {
    v163 = swift_slowAlloc();
    v164 = swift_slowAlloc();
    v165 = swift_slowAlloc();
    *&v219 = v165;
    *v163 = 138543618;
    v166 = [v159 objectID];
    *(v163 + 4) = v166;
    *v164 = v166;
    *(v163 + 12) = 2082;
    v167 = [v158 changedKeys];
    sub_261CFFD64();

    v61 = v214;
    v168 = sub_261CFFD74();
    v170 = v169;

    v171 = sub_261B879C8(v168, v170, &v219);

    *(v163 + 14) = v171;
    _os_log_impl(&dword_261AE2000, v160, v161, "[UpdateListIntentPerforming] Update CSL properties with id: %{public}@, changedKeys: %{public}s", v163, 0x16u);
    sub_261AE6A40(v164, &unk_27FEDA730, &unk_261D035C0);
    MEMORY[0x26671D560](v164, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v165);
    MEMORY[0x26671D560](v165, -1, -1);
    MEMORY[0x26671D560](v163, -1, -1);
  }

  v172 = v209;
  *&v219 = 0;
  if ([v209 saveSynchronouslyWithError_])
  {
    v173 = v219;

    return;
  }

  v174 = v219;
  v175 = sub_261CFD654();

  swift_willThrow();
  v176 = v175;
  v177 = sub_261CFF784();
  v178 = sub_261CFFE64();

  v179 = os_log_type_enabled(v177, v178);
  v180 = v212;
  if (v179)
  {
    v181 = swift_slowAlloc();
    v182 = swift_slowAlloc();
    *&v219 = v182;
    *v181 = 136315138;
    swift_getErrorValue();
    v183 = sub_261D00674();
    v185 = sub_261B879C8(v183, v184, &v219);

    *(v181 + 4) = v185;
    _os_log_impl(&dword_261AE2000, v177, v178, "[UpdateListIntentPerforming] Update CSL properties failed with save error: %s", v181, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v182);
    MEMORY[0x26671D560](v182, -1, -1);
    MEMORY[0x26671D560](v181, -1, -1);
  }

  v186 = v213;
  sub_261B01D70();
  swift_allocError();
  *v187 = 19;
  swift_willThrow();

  v67 = v61;
LABEL_118:
  sub_261BED568(v67, type metadata accessor for ListEntity);
}

unint64_t sub_261BECB94()
{
  result = qword_280D22790;
  if (!qword_280D22790)
  {
    type metadata accessor for ListEntity(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D22790);
  }

  return result;
}

uint64_t sub_261BECBEC@<X0>(unsigned int *a1@<X0>, char *a2@<X8>)
{
  v23 = a1;
  v24 = a2;
  v3 = v2;
  v4 = sub_261CFE314();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_261CFDDB4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (&v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB0A8, &unk_261D050D8);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v23 - v16;
  sub_261CFDE54();
  v18 = sub_261CFDDA4();
  *v11 = [v3 remObjectID];
  (*(v9 + 104))(v11, *v23, v8);
  sub_261CFDE04();

  (*(v9 + 8))(v11, v8);
  sub_261AFB668(v17, v15, &qword_27FEDB0A8, &unk_261D050D8);
  if ((*(v5 + 48))(v15, 1, v4) == 1)
  {
    sub_261AE6A40(v17, &qword_27FEDB0A8, &unk_261D050D8);
    result = sub_261AE6A40(v15, &qword_27FEDB0A8, &unk_261D050D8);
    *v24 = 2;
    return result;
  }

  v20 = v24;
  (*(v5 + 16))(v7, v15, v4);
  v21 = (*(v5 + 88))(v7, v4);
  if (v21 == *MEMORY[0x277D45D58])
  {
    v22 = 0;
  }

  else
  {
    if (v21 != *MEMORY[0x277D45D60])
    {
      result = sub_261D00604();
      __break(1u);
      return result;
    }

    v22 = 1;
  }

  sub_261AE6A40(v17, &qword_27FEDB0A8, &unk_261D050D8);
  *v20 = v22;
  return (*(v5 + 8))(v15, v4);
}

uint64_t sub_261BECF50(unsigned __int8 *a1, unsigned int *a2)
{
  v4 = v2;
  v6 = sub_261CFDDB4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB0A8, &unk_261D050D8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v21 - v11;
  v13 = sub_261CFE314();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  if (v17 == 2)
  {
    (*(v14 + 56))(v12, 1, 1, v13);
    (*(v14 + 104))(v16, *MEMORY[0x277D45D58], v13);
  }

  else
  {
    if (v17)
    {
      v18 = MEMORY[0x277D45D60];
    }

    else
    {
      v18 = MEMORY[0x277D45D58];
    }

    (*(v14 + 104))(v12, *v18, v13);
    (*(v14 + 56))(v12, 0, 1, v13);
    (*(v14 + 32))(v16, v12, v13);
  }

  sub_261CFDE54();
  v19 = sub_261CFDDA4();
  *v9 = [v4 remObjectID];
  (*(v7 + 104))(v9, *a2, v6);
  sub_261CFDD94();

  (*(v7 + 8))(v9, v6);
  return (*(v14 + 8))(v16, v13);
}

uint64_t sub_261BED240(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_261AF43A8;

  return REMStoreIntentPerformer.perform(_:)(a1, a2);
}

void sub_261BED2EC(char *a1)
{
  v2 = sub_261CFED34();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  sub_261CFDE54();
  v7 = sub_261CFDDA4();
  if (v6)
  {
    v15 = v7;
    sub_261CFEDA4();
    sub_261CFED94();
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC308, &qword_261D098C8);
    v9 = &v5[*(v8 + 48)];
    v10 = &v5[*(v8 + 80)];
    v11 = *MEMORY[0x277D44E40];
    v12 = sub_261CFED24();
    (*(*(v12 - 8) + 104))(v5, v11, v12);
    *v9 = sub_261CFDDE4();
    v9[1] = v13;
    sub_261CFDE14();
    *v10 = 0xD000000000000013;
    *(v10 + 1) = 0x8000000261D188C0;
    (*(v3 + 104))(v5, *MEMORY[0x277D44E98], v2);
    sub_261CFED84();

    (*(v3 + 8))(v5, v2);
  }

  else
  {
  }
}

uint64_t sub_261BED500(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_261BED568(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_261BED5C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_261BED630()
{
  v0 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v0, qword_280D21E58);
  v1 = __swift_project_value_buffer(v0, qword_280D21E58);
  if (qword_280D22880 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D26FF8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t _s34ScheduledRemindersFetchResultTokenVwCP(uint64_t a1, uint64_t a2)
{
  v4 = sub_261CFF624();
  v5 = **(v4 - 8);

  return v5(a1, a2, v4);
}

uint64_t _s34ScheduledRemindersFetchResultTokenVwca(uint64_t a1, uint64_t a2)
{
  v4 = sub_261CFF624();
  (*(*(v4 - 8) + 24))(a1, a2, v4);
  return a1;
}

uint64_t _s34ScheduledRemindersFetchResultTokenVwtk(uint64_t a1, uint64_t a2)
{
  v4 = sub_261CFF624();
  (*(*(v4 - 8) + 32))(a1, a2, v4);
  return a1;
}

uint64_t _s34ScheduledRemindersFetchResultTokenVwta(uint64_t a1, uint64_t a2)
{
  v4 = sub_261CFF624();
  (*(*(v4 - 8) + 40))(a1, a2, v4);
  return a1;
}

uint64_t sub_261BED8C8(uint64_t a1)
{
  result = sub_261CFF624();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

unint64_t _s29ScheduledRemindersFetchResultVwCP(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v13 = *a2;
    *a1 = *a2;
    a1 = v13 + ((v4 + 16) & ~v4);
    sub_261CFCDA4();
  }

  else
  {
    v6 = *a2;
    v7 = *(a2 + 8);
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    sub_261AE7220(*a2, v7, v8, v9);
    *a1 = v6;
    *(a1 + 8) = v7;
    *(a1 + 16) = v8;
    *(a1 + 24) = v9;
    v11 = *(a3 + 20);
    v12 = sub_261CFF624();
    (*(*(v12 - 8) + 16))(a1 + v11, a2 + v11, v12);
  }

  return a1;
}

uint64_t _s29ScheduledRemindersFetchResultVwcp(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  sub_261AE7220(*a2, v7, v8, v9);
  *a1 = v6;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  v10 = *(a3 + 20);
  v11 = sub_261CFF624();
  (*(*(v11 - 8) + 16))(a1 + v10, a2 + v10, v11);
  return a1;
}

uint64_t _s29ScheduledRemindersFetchResultVwca(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  sub_261AE7220(*a2, v7, v8, v9);
  v10 = *a1;
  v11 = *(a1 + 8);
  v12 = *(a1 + 16);
  v13 = *(a1 + 24);
  *a1 = v6;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  sub_261AE75C4(v10, v11, v12, v13);
  v14 = *(a3 + 20);
  v15 = sub_261CFF624();
  (*(*(v15 - 8) + 24))(a1 + v14, a2 + v14, v15);
  return a1;
}

_OWORD *_s29ScheduledRemindersFetchResultVwtk(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 9) = *(a2 + 9);
  v5 = *(a3 + 20);
  v6 = sub_261CFF624();
  (*(*(v6 - 8) + 32))(a1 + v5, a2 + v5, v6);
  return a1;
}

uint64_t _s29ScheduledRemindersFetchResultVwta(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  *a1 = *a2;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  sub_261AE75C4(v8, v9, v10, v11);
  v12 = *(a3 + 20);
  v13 = sub_261CFF624();
  (*(*(v13 - 8) + 40))(a1 + v12, a2 + v12, v13);
  return a1;
}

uint64_t sub_261BEDD04(uint64_t a1)
{
  result = sub_261CFF624();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *sub_261BEDDAC(uint64_t *a1, uint64_t *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  a1[2] = a2[2];
  sub_261CFD104();
  sub_261CFD104();
  sub_261CFD104();
  return a1;
}

uint64_t *_s29ScheduledRemindersFetchResultV17IncrementalResultVwca(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;
  sub_261CFD104();

  a1[1] = a2[1];
  sub_261CFD104();

  a1[2] = a2[2];
  sub_261CFD104();

  return a1;
}

void *_s29ScheduledRemindersFetchResultV17IncrementalResultVwta(void *a1, uint64_t a2)
{

  *a1 = *a2;

  a1[2] = *(a2 + 16);

  return a1;
}

uint64_t _s29ScheduledRemindersFetchResultV15RemindersResultOwcp(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  sub_261AE7220(*a2, v4, v5, v6);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  return a1;
}

uint64_t _s29ScheduledRemindersFetchResultV15RemindersResultOwca(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  sub_261AE7220(*a2, v4, v5, v6);
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  sub_261AE75C4(v7, v8, v9, v10);
  return a1;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t _s29ScheduledRemindersFetchResultV15RemindersResultOwta(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  v5 = *a1;
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  v8 = *(a1 + 24);
  *a1 = *a2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  sub_261AE75C4(v5, v7, v6, v8);
  return a1;
}

uint64_t _s29ScheduledRemindersFetchResultV15RemindersResultOwet(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t _s29ScheduledRemindersFetchResultV15RemindersResultOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

unint64_t sub_261BEE0C8()
{
  result = qword_27FEDC328;
  if (!qword_27FEDC328)
  {
    sub_261CFEE04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDC328);
  }

  return result;
}

void sub_261BEE120(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_261D000E4();
  v5 = v3 + 56;
  v6 = -1 << *(v3 + 32);
  v7 = v4 & ~v6;
  v8 = v7 >> 6;
  v9 = *(v3 + 56 + 8 * (v7 >> 6));
  v10 = 1 << v7;
  if (((1 << v7) & v9) != 0)
  {
    v11 = ~v6;
    sub_261B57A9C();
    while (1)
    {
      v12 = *(*(v3 + 48) + 8 * v7);
      v13 = sub_261D000F4();

      if (v13)
      {
        break;
      }

      v7 = (v7 + 1) & v11;
      v8 = v7 >> 6;
      v9 = *(v5 + 8 * (v7 >> 6));
      v10 = 1 << v7;
      if (((1 << v7) & v9) == 0)
      {
        goto LABEL_5;
      }
    }

    v15 = *(v3 + 48);
    v16 = *(v15 + 8 * v7);
    *(v15 + 8 * v7) = a1;
  }

  else
  {
LABEL_5:
    v14 = *(v3 + 16);
    if (v14 >= *(v3 + 24))
    {
      __break(1u);
    }

    else
    {
      *(v5 + 8 * v8) = v10 | v9;
      *(*(v3 + 48) + 8 * v7) = a1;
      *(v3 + 16) = v14 + 1;
    }
  }
}

void RemindersInCalendarUtilities.ListColor.init(color:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  if (a1)
  {
    v4 = sub_261D00114();
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
}

uint64_t RemindersInCalendarUtilities.ListColor.init(dataRepresentation:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  sub_261CFD594();
  swift_allocObject();
  sub_261CFD584();
  sub_261BEE34C();
  sub_261CFD574();
  sub_261BE4E60(a1, a2);

  if (!v3)
  {
    *a3 = v8;
  }

  return result;
}

unint64_t sub_261BEE34C()
{
  result = qword_27FEDC330;
  if (!qword_27FEDC330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDC330);
  }

  return result;
}

uint64_t RemindersInCalendarUtilities.ListColor.dataRepresentation()()
{
  v1 = *v0;
  sub_261CFD5C4();
  swift_allocObject();
  v2 = v1;
  sub_261CFD5B4();
  sub_261BEE440();
  v3 = sub_261CFD5A4();

  return v3;
}

unint64_t sub_261BEE440()
{
  result = qword_280D22930;
  if (!qword_280D22930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D22930);
  }

  return result;
}

uint64_t RemindersInCalendarUtilities.ListColor.colorEntity.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_261CFDC94();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v5);
  v10 = &v16 - v9;
  v11 = *v1;
  if (v11)
  {
    sub_261CFDCC4();
    v12 = v11;
    sub_261CFDCB4();
    (*(v4 + 16))(v7, v10, v3);
    sub_261B42948(v7, &v17);

    result = (*(v4 + 8))(v10, v3);
    v13 = v19;
    v14 = v20;
    v15 = v18;
    *a1 = v17;
    *(a1 + 8) = v15;
  }

  else
  {
    *(a1 + 16) = 0;
    v13 = 0uLL;
    *a1 = 0u;
    v14 = 0uLL;
  }

  *(a1 + 24) = v13;
  *(a1 + 40) = v14;
  return result;
}

uint64_t sub_261BEE610()
{
  sub_261D006C4();
  MEMORY[0x26671CDA0](0);
  return sub_261D006F4();
}

uint64_t sub_261BEE67C(uint64_t a1)
{
  sub_261D006C4();
  MEMORY[0x26671CDA0](0);
  return sub_261D006F4();
}

uint64_t sub_261BEE6DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6F43656372756F73 && a2 == 0xEB00000000726F6CLL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_261D00614();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_261BEE774(uint64_t a1)
{
  v2 = sub_261BEECFC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261BEE7B0(uint64_t a1)
{
  v2 = sub_261BEECFC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_261BEE7EC(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC348, &qword_261D09A70);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_261BEECFC();
  sub_261D00724();
  v9[1] = a2;
  sub_261CFED14();
  sub_261BEED50(&unk_280D22D80, MEMORY[0x277D44E10]);
  sub_261D00594();
  return (*(v5 + 8))(v7, v4);
}

void *sub_261BEE958@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_261BEEB68(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t RemindersInCalendarUtilities.ListColor.platformColor.getter()
{
  v1 = sub_261CFDC94();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_261CFDCC4();
  v6 = v5;
  sub_261CFDCB4();

  v7 = sub_261CFDC84();
  (*(v2 + 8))(v4, v1);
  return v7;
}

uint64_t sub_261BEEAAC(uint64_t *a1, unsigned int a2)
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

uint64_t sub_261BEEB08(uint64_t result, unsigned int a2, unsigned int a3)
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

void *sub_261BEEB68(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC338, &qword_261D09A68);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_261BEECFC();
  sub_261D00714();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    sub_261CFED14();
    sub_261BEED50(&qword_27FEDC340, MEMORY[0x277D44E18]);
    sub_261D00564();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return v7;
}

unint64_t sub_261BEECFC()
{
  result = qword_280D22948[0];
  if (!qword_280D22948[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280D22948);
  }

  return result;
}

uint64_t sub_261BEED50(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_261CFED14();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_261BEEDA8()
{
  result = qword_27FEDC350;
  if (!qword_27FEDC350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDC350);
  }

  return result;
}

unint64_t sub_261BEEE00()
{
  result = qword_280D22938;
  if (!qword_280D22938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D22938);
  }

  return result;
}

unint64_t sub_261BEEE58()
{
  result = qword_280D22940;
  if (!qword_280D22940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D22940);
  }

  return result;
}

uint64_t DeleteRemindersAppIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v51 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA390, &unk_261D02F60);
  MEMORY[0x28223BE20](v1 - 8);
  v46 = &v33 - v2;
  v50 = sub_261CFD184();
  v52 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v49 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1E8, &unk_261D02310);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v48 = &v33 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  MEMORY[0x28223BE20](v9 - 8);
  v47 = &v33 - v10;
  v35 = sub_261CFD674();
  v11 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_261CFD884();
  MEMORY[0x28223BE20](v14 - 8);
  v15 = sub_261CFFA44();
  MEMORY[0x28223BE20](v15 - 8);
  v16 = sub_261CFD6A4();
  v43 = v16;
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v33 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1F0, &qword_261D132D0);
  sub_261CFF9B4();
  sub_261CFD874();
  v34 = *MEMORY[0x277CC9110];
  v19 = *(v11 + 104);
  v36 = v11 + 104;
  v37 = v19;
  (v19)(v13);
  sub_261CFD6C4();
  v20 = *(v17 + 56);
  v42 = v17 + 56;
  v44 = v20;
  v20(v47, 1, 1, v16);
  v54 = 0;
  v21 = sub_261CFC834();
  v22 = *(v21 - 8);
  v23 = *(v22 + 56);
  v41 = v23;
  v45 = v22 + 56;
  v23(v48, 1, 1, v21);
  v23(v7, 1, 1, v21);
  v39 = *MEMORY[0x277CBA308];
  v24 = *(v52 + 104);
  v52 += 104;
  v40 = v24;
  v24(v49);
  sub_261B32BE4();
  *v51 = sub_261CFCC34();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAA30, &unk_261D035F0);
  sub_261CFF9B4();
  sub_261CFD874();
  v25 = v34;
  v26 = v35;
  v27 = v37;
  v37(v13, v34, v35);
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v27(v13, v25, v26);
  v28 = v47;
  sub_261CFD6C4();
  v44(v28, 0, 1, v43);
  LOBYTE(v54) = 2;
  v29 = sub_261CFFCE4();
  (*(*(v29 - 8) + 56))(v46, 1, 1, v29);
  v41(v48, 1, 1, v21);
  v40(v49, v39, v50);
  v30 = sub_261CFCD44();
  v31 = v51;
  v51[1] = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC388, &qword_261D09B98);
  v53 = 0;
  sub_261AE4630();
  sub_261D002D4();
  sub_261CFC6B4();
  sub_261CFC6A4();
  result = sub_261CFC684();
  v31[2] = result;
  return result;
}

uint64_t sub_261BEF6B0()
{
  v0 = sub_261CFD244();
  __swift_allocate_value_buffer(v0, qword_27FEDC358);
  v1 = __swift_project_value_buffer(v0, qword_27FEDC358);
  v2 = *MEMORY[0x277CBA3F8];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t static DeleteRemindersAppIntent.authenticationPolicy.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED9B08 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD244();
  v3 = __swift_project_value_buffer(v2, qword_27FEDC358);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static DeleteRemindersAppIntent.authenticationPolicy.setter(uint64_t a1)
{
  if (qword_27FED9B08 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD244();
  v3 = __swift_project_value_buffer(v2, qword_27FEDC358);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static DeleteRemindersAppIntent.authenticationPolicy.modify(uint64_t a1))(void)
{
  if (qword_27FED9B08 != -1)
  {
    swift_once();
  }

  v1 = sub_261CFD244();
  __swift_project_value_buffer(v1, qword_27FEDC358);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_261BEF980@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED9B08 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD244();
  v3 = __swift_project_value_buffer(v2, qword_27FEDC358);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_261BEFA40(uint64_t a1)
{
  if (qword_27FED9B08 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD244();
  v3 = __swift_project_value_buffer(v2, qword_27FEDC358);
  swift_beginAccess();
  (*(*(v2 - 8) + 24))(v3, a1, v2);
  return swift_endAccess();
}

uint64_t sub_261BEFB08()
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
  __swift_allocate_value_buffer(v6, qword_27FEDC370);
  __swift_project_value_buffer(v6, qword_27FEDC370);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v1 + 104))(v3, *MEMORY[0x277CC9110], v0);
  return sub_261CFD6C4();
}

uint64_t static DeleteRemindersAppIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED9B10 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD6A4();
  v3 = __swift_project_value_buffer(v2, qword_27FEDC370);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static DeleteRemindersAppIntent.description.getter@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_261BF008C(uint64_t *a1, uint64_t *a2)
{
  sub_261CFD104();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCBC4();
}

uint64_t (*DeleteRemindersAppIntent.entities.modify(uint64_t *a1))()
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

uint64_t (*DeleteRemindersAppIntent.deleteSubtasks.modify(uint64_t *a1))()
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

uint64_t static DeleteRemindersAppIntent.parameterSummary.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC390, &qword_261D09BA0);
  MEMORY[0x28223BE20](v0 - 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC398, &qword_261D09BA8);
  MEMORY[0x28223BE20](v1);
  sub_261B316A8();
  sub_261CFD164();
  sub_261CFD154();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC3A0, &qword_261D09BD8);
  sub_261CFD144();

  sub_261CFD154();
  sub_261CFD174();
  return sub_261CFD134();
}

uint64_t sub_261BF0450()
{
  swift_getKeyPath();
  sub_261B316A8();
  v0 = sub_261CFCDA4();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA740, &qword_261D05A10);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_261D030F0;
  *(v1 + 32) = v0;
  sub_261CFCDA4();
  v2 = sub_261CFD104();

  return v2;
}

uint64_t DeleteRemindersAppIntent.perform()(uint64_t a1)
{
  *(v2 + 120) = a1;
  *(v2 + 128) = *v1;
  *(v2 + 144) = *(v1 + 16);
  sub_261CFFD24();
  *(v2 + 152) = sub_261CFFD14();
  v4 = sub_261CFFCF4();
  *(v2 + 160) = v4;
  *(v2 + 168) = v3;

  return MEMORY[0x2822009F8](sub_261BF05B4, v4, v3);
}

uint64_t sub_261BF05B4()
{
  v1 = v0[17];
  v2 = v0[18];
  v3 = v0[16];
  sub_261B21444(0, v3, v1, v2);
  sub_261CFC664();
  v4 = v0[5];
  v5 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v4);
  v0[12] = v3;
  v0[13] = v1;
  v0[14] = v2;
  v8 = (*(v5 + 8) + **(v5 + 8));
  v6 = swift_task_alloc();
  v0[22] = v6;
  *v6 = v0;
  v6[1] = sub_261BF0728;

  return v8(v0 + 7, v0 + 12, v4, v5);
}

uint64_t sub_261BF0728()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v3 = v2[20];
    v4 = v2[21];
    v5 = sub_261BF08BC;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v2 + 7);
    v3 = v2[20];
    v4 = v2[21];
    v5 = sub_261BF0844;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_261BF0844()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  sub_261CFC9A4();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_261BF08BC()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_261BF092C()
{
  result = qword_27FEDC3A8;
  if (!qword_27FEDC3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDC3A8);
  }

  return result;
}

unint64_t sub_261BF0988()
{
  result = qword_27FEDC3B0;
  if (!qword_27FEDC3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDC3B0);
  }

  return result;
}

unint64_t sub_261BF09E0()
{
  result = qword_27FEDC3B8;
  if (!qword_27FEDC3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDC3B8);
  }

  return result;
}

uint64_t sub_261BF0A6C@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED9B10 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD6A4();
  v3 = __swift_project_value_buffer(v2, qword_27FEDC370);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_261BF0B14(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC390, &qword_261D09BA0);
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC398, &qword_261D09BA8);
  MEMORY[0x28223BE20](v3);
  sub_261CFD164();
  sub_261CFD154();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC3A0, &qword_261D09BD8);
  sub_261CFD144();

  sub_261CFD154();
  sub_261CFD174();
  return sub_261CFD134();
}

uint64_t sub_261BF0CC4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_261AF43A8;

  return DeleteRemindersAppIntent.perform()(a1);
}

uint64_t sub_261BF0D64(uint64_t a1)
{
  v2 = sub_261B316A8();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t dispatch thunk of DeleteRemindersAppIntentPerforming.perform(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_261AF43A8;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_261BF0EE4()
{
  v0 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v0, qword_27FEDC3D0);
  v1 = __swift_project_value_buffer(v0, qword_27FEDC3D0);
  if (qword_280D22888 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D27010);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_261BF12E4()
{
  v123 = v0;
  v122[1] = *MEMORY[0x277D85DE8];

  sub_261CFCBB4();
  v1 = *(v0 + 48);
  if (v1)
  {
    v2 = *(v0 + 40);
  }

  else
  {
    v2 = sub_261CFE2B4();
    v1 = v3;
  }

  v4 = *(v0 + 272);
  v5 = *(v0 + 168);
  v6 = *(v0 + 176);
  *(v0 + 56) = v2;
  *(v0 + 64) = v1;
  sub_261CFD874();
  (*(v6 + 56))(v4, 0, 1, v5);
  sub_261B3BA3C();
  v7 = sub_261D00174();
  v9 = v8;
  sub_261AE6A40(v4, &qword_27FEDA708, &qword_261D03298);

  sub_261CFCBB4();
  if (qword_27FED9B18 != -1)
  {
    swift_once();
  }

  v10 = *(v0 + 256);
  v11 = *(v0 + 264);
  v12 = sub_261CFF7A4();
  __swift_project_value_buffer(v12, qword_27FEDC3D0);
  sub_261AFB668(v11, v10, &unk_27FEDD950, &unk_261D01440);
  sub_261CFD104();
  v13 = sub_261CFF784();
  v14 = sub_261CFFE84();

  v15 = os_log_type_enabled(v13, v14);
  v16 = *(v0 + 256);
  if (v15)
  {
    v17 = *(v0 + 248);
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v122[0] = v19;
    *v18 = 136315394;
    *(v18 + 4) = sub_261B879C8(v7, v9, v122);
    *(v18 + 12) = 2082;
    sub_261AFB668(v16, v17, &unk_27FEDD950, &unk_261D01440);
    v20 = type metadata accessor for GroupEntity(0);
    v21 = (*(*(v20 - 8) + 48))(v17, 1, v20);
    v22 = *(v0 + 248);
    if (v21 == 1)
    {
      sub_261AE6A40(v22, &unk_27FEDD950, &unk_261D01440);
      v23 = 1;
    }

    else
    {
      v24 = *(v20 + 20);
      v25 = *(v0 + 248);
      sub_261B7C0F0(v22 + v24, *(v0 + 232));
      sub_261BF22F8(v25, type metadata accessor for GroupEntity);
      v23 = 0;
    }

    v27 = *(v0 + 224);
    v26 = *(v0 + 232);
    v28 = *(v0 + 192);
    v29 = *(v0 + 200);
    (*(v29 + 56))(v26, v23, 1, v28);
    sub_261AFB668(v26, v27, &qword_27FEDAA00, &qword_261D035A8);
    if ((*(v29 + 48))(v27, 1, v28) == 1)
    {
      v30 = 0xE300000000000000;
      v31 = 7104878;
    }

    else
    {
      v32 = *(v0 + 216);
      v33 = *(v0 + 208);
      sub_261BC0FC4(*(v0 + 224), v32);
      sub_261B7C0F0(v32, v33);
      v31 = sub_261CFFAB4();
      v30 = v34;
      sub_261BF22F8(v32, type metadata accessor for AppEntityID);
    }

    v35 = *(v0 + 256);
    sub_261AE6A40(*(v0 + 232), &qword_27FEDAA00, &qword_261D035A8);
    sub_261AE6A40(v35, &unk_27FEDD950, &unk_261D01440);
    v36 = sub_261B879C8(v31, v30, v122);

    *(v18 + 14) = v36;
    _os_log_impl(&dword_261AE2000, v13, v14, "[CreateListAppIntent] Create list with name: %s, group: %{public}s", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26671D560](v19, -1, -1);
    MEMORY[0x26671D560](v18, -1, -1);
  }

  else
  {

    sub_261AE6A40(v16, &unk_27FEDD950, &unk_261D01440);
  }

  v37 = *(*(v0 + 112) + 16);
  *(v0 + 72) = 0;
  v38 = [v37 fetchPrimaryActiveCloudKitAccountWithError_];
  v39 = *(v0 + 72);
  if (!v38)
  {
    v53 = v39;

    sub_261CFD654();

    swift_willThrow();
    goto LABEL_47;
  }

  v40 = v38;
  v41 = *(v0 + 264);
  v42 = *(v0 + 240);
  v43 = objc_allocWithZone(MEMORY[0x277D447D8]);
  v44 = v39;
  v45 = [v43 initWithStore_];
  v46 = [v45 updateAccount_];
  sub_261AFB668(v41, v42, &unk_27FEDD950, &unk_261D01440);
  v47 = type metadata accessor for GroupEntity(0);
  v48 = (*(*(v47 - 8) + 48))(v42, 1, v47);
  v49 = *(v0 + 240);
  if (v48 == 1)
  {
    sub_261AE6A40(*(v0 + 240), &unk_27FEDD950, &unk_261D01440);
    v50 = 0;
LABEL_18:
    v51 = sub_261CFFA54();

    v52 = [v45 addListWithName:v51 toAccountChangeItem:v46];
    goto LABEL_19;
  }

  v116 = v46;
  v118 = v45;
  v54 = *(v0 + 216);
  sub_261B7C0F0(v49 + *(v47 + 20), v54);
  sub_261BF22F8(v49, type metadata accessor for GroupEntity);
  v55 = objc_allocWithZone(MEMORY[0x277D44700]);
  v56 = sub_261CFD814();
  v57 = sub_261CFFA54();
  v58 = [v55 initWithUUID:v56 entityName:v57];

  sub_261BF22F8(v54, type metadata accessor for AppEntityID);
  *(v0 + 96) = 0;
  v59 = [v37 fetchListWithObjectID:v58 error:v0 + 96];
  v60 = *(v0 + 96);
  if (!v59)
  {
    v73 = v60;

    sub_261CFD654();

    swift_willThrow();
LABEL_38:

    goto LABEL_47;
  }

  v61 = v59;
  v62 = v60;
  if (([v61 isGroup] & 1) == 0)
  {

    v58 = v58;
    v74 = sub_261CFF784();
    v75 = sub_261CFFE64();

    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      *v76 = 138543362;
      *(v76 + 4) = v58;
      *v77 = v58;
      v78 = v58;
      _os_log_impl(&dword_261AE2000, v74, v75, "[CreateListAppIntent] Attempt to create list with a target parent that is not actually a group {objectID: %{public}@}", v76, 0xCu);
      sub_261AE6A40(v77, &unk_27FEDA730, &unk_261D035C0);
      MEMORY[0x26671D560](v77, -1, -1);
      MEMORY[0x26671D560](v76, -1, -1);
    }

    sub_261B01D70();
    swift_allocError();
    *v79 = 0;
    swift_willThrow();

    goto LABEL_38;
  }

  v50 = [v118 updateList_];

  if (!v50)
  {
    v46 = v116;
    v45 = v118;
    goto LABEL_18;
  }

  v63 = [v50 sublistContext];
  v46 = v116;
  if (!v63)
  {
    v45 = v118;
    goto LABEL_18;
  }

  v64 = v63;
  v51 = sub_261CFFA54();

  v45 = v118;
  v52 = [v118 addListWithName:v51 toListSublistContextChangeItem:v64];

LABEL_19:
  sub_261CFCBB4();
  v115 = v40;
  if (*(v0 + 312) == 1)
  {

    goto LABEL_28;
  }

  v65 = sub_261D00614();

  if (v65)
  {
LABEL_28:
    v66 = [v52 groceryContextChangeItem];
    if (v66)
    {
      v67 = v66;
      [v66 setShouldCategorizeGroceryItems_];
    }

    v68 = [v52 groceryContextChangeItem];
    if (!v68)
    {
      goto LABEL_42;
    }

    v69 = v68;
    v120 = v52;
    v70 = [objc_opt_self() daemonUserDefaults];
    v71 = [v70 preferredLocalizations];

    if (v71)
    {
      v72 = sub_261CFFC64();

      if (*(v72 + 16))
      {
        sub_261CFD104();

LABEL_41:
        v85 = sub_261CFFA54();

        [v69 setGroceryLocaleID_];

        v52 = v120;
        goto LABEL_42;
      }
    }

    v80 = v50;
    v81 = v46;
    v83 = *(v0 + 176);
    v82 = *(v0 + 184);
    v84 = *(v0 + 168);
    sub_261CFD874();
    sub_261CFD854();
    (*(v83 + 8))(v82, v84);
    v46 = v81;
    v50 = v80;
    goto LABEL_41;
  }

LABEL_42:
  *(v0 + 80) = 0;
  v86 = [v45 saveSynchronouslyWithError_];
  v87 = *(v0 + 80);
  if (v86)
  {
    v114 = *(v0 + 264);
    v88 = *(v0 + 160);
    v90 = *(v0 + 136);
    v89 = *(v0 + 144);
    v117 = v46;
    v92 = *(v0 + 120);
    v91 = *(v0 + 128);
    v112 = *(v0 + 104);
    v113 = v50;
    v93 = v87;
    v94 = v52;
    sub_261B797FC(v94, v50, v88);
    sub_261BBF268(v92, v111, v112);
    sub_261CFC9E4();
    sub_261BF22B0(&qword_280D22790, type metadata accessor for ListEntity, &protocol conformance descriptor for ListEntity);
    sub_261BF22B0(&qword_27FEDA3C0, MEMORY[0x277CB9DE0], MEMORY[0x277CB9DD8]);
    sub_261CFC974();

    (*(v90 + 8))(v89, v91);
    sub_261BF22F8(v88, type metadata accessor for ListEntity);
    sub_261AE6A40(v114, &unk_27FEDD950, &unk_261D01440);

    v95 = *(v0 + 8);
    goto LABEL_48;
  }

  v121 = v50;
  v119 = v45;
  v96 = v87;
  v97 = sub_261CFD654();

  swift_willThrow();
  v98 = v97;
  v99 = sub_261CFF784();
  v100 = sub_261CFFE64();

  if (os_log_type_enabled(v99, v100))
  {
    v101 = v46;
    v102 = swift_slowAlloc();
    v103 = swift_slowAlloc();
    v122[0] = v103;
    *v102 = 136315138;
    swift_getErrorValue();
    v104 = sub_261D00664();
    v106 = v52;
    v107 = sub_261B879C8(v104, v105, v122);

    *(v102 + 4) = v107;
    v52 = v106;
    _os_log_impl(&dword_261AE2000, v99, v100, "[CreateListAppIntent] Create list failed to save new list error: %s", v102, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v103);
    MEMORY[0x26671D560](v103, -1, -1);
    v108 = v102;
    v46 = v101;
    MEMORY[0x26671D560](v108, -1, -1);
  }

  sub_261B01D70();
  swift_allocError();
  *v109 = 19;
  swift_willThrow();

LABEL_47:
  sub_261AE6A40(*(v0 + 264), &unk_27FEDD950, &unk_261D01440);

  v95 = *(v0 + 8);
LABEL_48:

  return v95();
}

uint64_t sub_261BF2204(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_261AF43A8;

  return REMStoreIntentPerformer.perform(_:)(a1, a2);
}

uint64_t sub_261BF22B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_261BF22F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t DeleteListsAppIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v37 = a1;
  v36 = sub_261CFD184();
  v34 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = v30 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1E8, &unk_261D02310);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v33 = v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v32 = v30 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  MEMORY[0x28223BE20](v6 - 8);
  v30[0] = v30 - v7;
  v8 = sub_261CFD674();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_261CFD884();
  MEMORY[0x28223BE20](v12 - 8);
  v13 = sub_261CFFA44();
  MEMORY[0x28223BE20](v13 - 8);
  v14 = sub_261CFD6A4();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v30[1] = v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = v30 - v18;
  v30[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC400, &qword_261D09DF0);
  sub_261CFF9B4();
  sub_261CFD874();
  v20 = *MEMORY[0x277CC9110];
  v31 = v9;
  v21 = *(v9 + 104);
  v21(v11, v20, v8);
  v30[3] = v19;
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v21(v11, v20, v8);
  v22 = v30[0];
  sub_261CFD6C4();
  (*(v15 + 56))(v22, 0, 1, v14);
  v39 = 0;
  sub_261CFF9B4();
  if (qword_280D22DA8 != -1)
  {
    swift_once();
  }

  v23 = __swift_project_value_buffer(v8, qword_280D27028);
  (*(v31 + 16))(v11, v23, v8);
  sub_261CFD874();
  sub_261CFD6C4();
  v24 = v32;
  sub_261CFC844();
  v25 = sub_261CFC834();
  v26 = *(*(v25 - 8) + 56);
  v26(v24, 0, 1, v25);
  v26(v33, 1, 1, v25);
  (*(v34 + 104))(v35, *MEMORY[0x277CBA308], v36);
  sub_261BF29C0();
  v27 = sub_261CFCC34();
  v28 = v37;
  *v37 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC408, &qword_261D09DF8);
  v38 = 0;
  sub_261AE4630();
  sub_261D002D4();
  sub_261CFC6B4();
  sub_261CFC6A4();
  result = sub_261CFC684();
  v28[1] = result;
  return result;
}

unint64_t sub_261BF29C0()
{
  result = qword_280D227A0;
  if (!qword_280D227A0)
  {
    type metadata accessor for ListEntity(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D227A0);
  }

  return result;
}

uint64_t sub_261BF2A20()
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
  __swift_allocate_value_buffer(v6, qword_27FEDC3E8);
  __swift_project_value_buffer(v6, qword_27FEDC3E8);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v1 + 104))(v3, *MEMORY[0x277CC9110], v0);
  return sub_261CFD6C4();
}

uint64_t static DeleteListsAppIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED9B20 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD6A4();
  v3 = __swift_project_value_buffer(v2, qword_27FEDC3E8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static DeleteListsAppIntent.description.getter@<X0>(uint64_t a1@<X8>)
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

void (*DeleteListsAppIntent.entities.modify(uint64_t *a1))(void *a1)
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
  return sub_261AFA3C4;
}

uint64_t static DeleteListsAppIntent.parameterSummary.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC410, &qword_261D09E00);
  MEMORY[0x28223BE20](v0 - 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC418, &qword_261D09E08);
  MEMORY[0x28223BE20](v1);
  sub_261B31654();
  sub_261CFD164();
  sub_261CFD154();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC420, &qword_261D09E38);
  sub_261CFD144();

  sub_261CFD154();
  sub_261CFD174();
  return sub_261CFD124();
}

uint64_t DeleteListsAppIntent.perform()(uint64_t a1)
{
  *(v2 + 112) = a1;
  *(v2 + 120) = *v1;
  sub_261CFFD24();
  *(v2 + 136) = sub_261CFFD14();
  v4 = sub_261CFFCF4();
  *(v2 + 144) = v4;
  *(v2 + 152) = v3;

  return MEMORY[0x2822009F8](sub_261BF32B0, v4, v3);
}

uint64_t sub_261BF32B0()
{
  v1 = v0[15];
  v2 = v0[16];
  sub_261B22200(0, v1, v2);
  sub_261CFC664();
  v3 = v0[5];
  v4 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v3);
  v0[12] = v1;
  v0[13] = v2;
  v7 = (*(v4 + 8) + **(v4 + 8));
  v5 = swift_task_alloc();
  v0[20] = v5;
  *v5 = v0;
  v5[1] = sub_261BB6FC8;

  return v7(v0 + 7, v0 + 12, v3, v4);
}

unint64_t sub_261BF3420()
{
  result = qword_27FEDC428;
  if (!qword_27FEDC428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDC428);
  }

  return result;
}

unint64_t sub_261BF347C()
{
  result = qword_27FEDC430;
  if (!qword_27FEDC430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDC430);
  }

  return result;
}

unint64_t sub_261BF34D4()
{
  result = qword_27FEDC438;
  if (!qword_27FEDC438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDC438);
  }

  return result;
}

uint64_t sub_261BF3560@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED9B20 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD6A4();
  v3 = __swift_project_value_buffer(v2, qword_27FEDC3E8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_261BF3608(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC410, &qword_261D09E00);
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC418, &qword_261D09E08);
  MEMORY[0x28223BE20](v3);
  sub_261CFD164();
  sub_261CFD154();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC420, &qword_261D09E38);
  sub_261CFD144();

  sub_261CFD154();
  sub_261CFD174();
  return sub_261CFD124();
}

uint64_t sub_261BF37A0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_261AF43A8;

  return DeleteListsAppIntent.perform()(a1);
}

uint64_t sub_261BF3840(uint64_t a1)
{
  v2 = sub_261B31654();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t dispatch thunk of DeleteListsAppIntentPerforming.perform(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_261AF43A8;

  return v11(a1, a2, a3, a4);
}

void sub_261BF39C0(uint64_t a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE110, &unk_261D035B0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for ReminderEntity(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1) == 1)
  {
    sub_261AE6A40(a1, &unk_27FEDE110, &unk_261D035B0);
    sub_261BF8094(a2, v7);

    sub_261AE6A40(v7, &unk_27FEDE110, &unk_261D035B0);
  }

  else
  {
    sub_261B837B0(a1, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    sub_261BF852C(v10, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v14;
  }
}

uint64_t sub_261BF3B64(uint64_t a1)
{
  v1 = a1;
  v23 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_261D00274();
    result = MEMORY[0x277D84F90];
    if (!v2)
    {
      return result;
    }

    v28 = MEMORY[0x277D84F90];
    sub_261D003A4();
    result = sub_261D00414();
    v25 = result;
    v26 = v4;
    v27 = 1;
    if ((v2 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v2 = *(v1 + 16);
  result = MEMORY[0x277D84F90];
  if (!v2)
  {
    return result;
  }

  v28 = MEMORY[0x277D84F90];
  sub_261D003A4();
  result = sub_261D001E4();
  v5 = *(v1 + 36);
  v25 = result;
  v26 = v5;
  v27 = 0;
LABEL_7:
  v6 = 0;
  v22 = v2;
  while (v6 < v2)
  {
    v13 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      goto LABEL_20;
    }

    v14 = v25;
    v15 = v26;
    v16 = v27;
    sub_261CB66A8(v25, v26, v27, v1);
    v18 = v17;
    v19 = [v17 list];
    v20 = v1;

    sub_261D00374();
    sub_261D003B4();
    sub_261D003C4();
    result = sub_261D00384();
    if (v23)
    {
      if (!v16)
      {
        goto LABEL_21;
      }

      if (sub_261D00444())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      v2 = v22;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB250, &qword_261D05748);
      v21 = sub_261CFF924();
      sub_261D004D4();
      result = v21(v24, 0);
    }

    else
    {
      sub_261CB6544(v14, v15, v16, v1);
      v8 = v7;
      v10 = v9;
      v12 = v11;
      result = sub_261B91FE4(v14, v15, v16);
      v25 = v8;
      v26 = v10;
      v27 = v12 & 1;
      v1 = v20;
      v2 = v22;
    }

    ++v6;
    if (v13 == v2)
    {
      sub_261B91FE4(v25, v26, v27);
      return v28;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

void *sub_261BF3DE0(uint64_t a1, uint64_t *a2)
{
  v32 = a2;
  v31 = type metadata accessor for ReminderEntity(0);
  v3 = MEMORY[0x28223BE20](v31);
  v30 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v29 = &v26 - v6;
  MEMORY[0x28223BE20](v5);
  v28 = &v26 - v8;
  v9 = *(a1 + 16);
  if (!v9)
  {
    return MEMORY[0x277D84F90];
  }

  v10 = *(v7 + 72);
  v27 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v11 = a1 + v27;
  type metadata accessor for AppEntityID(0);
  v12 = MEMORY[0x277D84F90];
  do
  {
    v13 = objc_allocWithZone(MEMORY[0x277D44700]);
    v14 = sub_261CFD814();
    v15 = sub_261CFFA54();
    v16 = [v13 initWithUUID:v14 entityName:v15];

    v17 = *v32;
    if (*(*v32 + 16) && (v18 = sub_261B37CA4(v16), (v19 & 1) != 0))
    {
      v20 = *(v17 + 56) + v18 * v10;
      v21 = v29;
      sub_261B4C910(v20, v29);

      v22 = v28;
      sub_261B837B0(v21, v28);
      sub_261B837B0(v22, v30);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_261B41560(0, v12[2] + 1, 1, v12);
      }

      v24 = v12[2];
      v23 = v12[3];
      if (v24 >= v23 >> 1)
      {
        v12 = sub_261B41560((v23 > 1), v24 + 1, 1, v12);
      }

      v12[2] = v24 + 1;
      sub_261B837B0(v30, v12 + v27 + v24 * v10);
    }

    else
    {
    }

    v11 += v10;
    --v9;
  }

  while (v9);
  return v12;
}

uint64_t sub_261BF407C()
{
  v0 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v0, qword_27FEDC450);
  v1 = __swift_project_value_buffer(v0, qword_27FEDC450);
  if (qword_280D22888 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D27010);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_261BF41E8()
{
  *(v0 + 56) = *(v0 + 104);
  *(v0 + 72) = *(v0 + 120);
  v1 = sub_261CFE5B4();
  v2 = sub_261CFE494();
  v3 = MEMORY[0x277D45E18];
  *(v0 + 40) = v1;
  *(v0 + 48) = v3;
  *(v0 + 16) = v2;
  v4 = swift_task_alloc();
  *(v0 + 160) = v4;
  *v4 = v0;
  v4[1] = sub_261BF42C4;
  v5 = *(v0 + 88);

  return sub_261BF4444(v5, v0 + 56, v0 + 16);
}

uint64_t sub_261BF42C4()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v3 = v2[18];
    v4 = v2[19];
    v5 = sub_261BB715C;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v2 + 2);
    v3 = v2[18];
    v4 = v2[19];
    v5 = sub_261BF43E0;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_261BF43E0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_261BF4444(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 72) = a3;
  *(v4 + 80) = v3;
  *(v4 + 64) = a1;
  v6 = sub_261CFC9D4();
  *(v4 + 88) = v6;
  *(v4 + 96) = *(v6 - 8);
  *(v4 + 104) = swift_task_alloc();
  v7 = sub_261CFD754();
  *(v4 + 112) = v7;
  *(v4 + 120) = *(v7 - 8);
  *(v4 + 128) = swift_task_alloc();
  *(v4 + 136) = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA598, &qword_261D05740);
  *(v4 + 144) = v8;
  *(v4 + 152) = *(v8 - 8);
  *(v4 + 160) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE110, &unk_261D035B0);
  *(v4 + 168) = swift_task_alloc();
  *(v4 + 176) = swift_task_alloc();
  v9 = type metadata accessor for ReminderEntity(0);
  *(v4 + 184) = v9;
  *(v4 + 192) = *(v9 - 8);
  *(v4 + 200) = swift_task_alloc();
  *(v4 + 208) = swift_task_alloc();
  *(v4 + 216) = swift_task_alloc();
  *(v4 + 224) = swift_task_alloc();
  *(v4 + 232) = *a2;
  *(v4 + 248) = *(a2 + 16);

  return MEMORY[0x2822009F8](sub_261BF46B0, 0, 0);
}

uint64_t sub_261BF46B0()
{
  v154 = v0;
  v1 = v0;
  sub_261CFCBB4();
  sub_261B9DCEC(v0[2]);
  v3 = v2;
  v5 = v4;

  v6 = sub_261B9BAD4(3, v3, v5);
  v0[32] = v6;
  v146 = v6;
  v10 = v0[23];
  v9 = v0[24];
  v11 = v1[22];

  sub_261CFCBB4();
  LODWORD(v12) = *(v1 + 352);
  sub_261CFCBB4();
  v13 = *(v9 + 48);
  v1[33] = v13;
  v1[34] = (v9 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v14 = v13(v11, 1, v10);
  if (v14 == 1)
  {
    sub_261AE6A40(v1[22], &unk_27FEDE110, &unk_261D035B0);
    v15 = 0;
    v16 = v146;
    goto LABEL_7;
  }

  sub_261B837B0(v1[22], v1[28]);
  type metadata accessor for AppEntityID(0);
  v28 = objc_allocWithZone(MEMORY[0x277D44700]);
  v29 = sub_261CFD814();
  v30 = sub_261CFFA54();
  v31 = [v28 initWithUUID:v29 entityName:v30];

  v16 = v146;
  v15 = sub_261CFBFC8(v31);

  v64 = sub_261CFFDF4();
  v65 = [v64 supportsSubtasks];

  if (!v65)
  {
    v67 = v1[28];

    sub_261B01D70();
    swift_allocError();
    v69 = 18;
    goto LABEL_39;
  }

  v66 = [v15 isSubtask];
  v67 = v1[28];
  if (v66)
  {

    sub_261B01D70();
    swift_allocError();
    v69 = 17;
LABEL_39:
    *v68 = v69;
    swift_willThrow();

    sub_261B4C974(v67);

    v7 = v1[1];
    goto LABEL_2;
  }

  sub_261B4C974(v1[28]);
LABEL_7:
  v1[35] = v15;
  v137 = *(v1[10] + 16);
  v17 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];
  v1[36] = v17;
  v141 = v17;
  [v17 setSaveIsNoopIfNoChangedKeys_];
  sub_261CFD104();
  v18 = v16;
  if ((v12 & 1) == 0)
  {
    v18 = sub_261B491CC(v16);
  }

  v142 = v15;
  v19 = v18[2];
  v144 = v12;
  if (v19)
  {
    v20 = v1[24];
    v153[0] = MEMORY[0x277D84F90];
    sub_261D003A4();
    v21 = v18 + ((*(v20 + 80) + 32) & ~*(v20 + 80));
    v22 = *(v20 + 72);
    do
    {
      v23 = v1[27];
      sub_261B4C910(v21, v23);
      type metadata accessor for AppEntityID(0);
      v24 = objc_allocWithZone(MEMORY[0x277D44700]);
      v25 = sub_261CFD814();
      v26 = sub_261CFFA54();
      [v24 initWithUUID:v25 entityName:v26];

      sub_261B4C974(v23);
      sub_261D00374();
      sub_261D003B4();
      sub_261D003C4();
      sub_261D00384();
      v21 += v22;
      --v19;
    }

    while (v19);

    v27 = v153[0];
    LODWORD(v12) = v144;
    v16 = v146;
  }

  else
  {

    v27 = MEMORY[0x277D84F90];
  }

  v1[3] = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE100, &qword_261D05750);
  sub_261BF8D24();
  sub_261B3B918();
  v32 = sub_261CFFC34();
  v1[37] = v32;

  v33 = v16[2];
  v34 = MEMORY[0x277D84F90];
  if (v33)
  {
    v139 = v32;
    v35 = v1[24];
    v151 = v1[19];
    v149 = v1[18];
    v153[0] = MEMORY[0x277D84F90];
    sub_261B39DFC(0, v33, 0);
    v34 = v153[0];
    v36 = v16 + ((*(v35 + 80) + 32) & ~*(v35 + 80));
    v147 = *(v35 + 72);
    do
    {
      v37 = v1[20];
      sub_261B4C910(v36, v37 + *(v149 + 48));
      type metadata accessor for AppEntityID(0);
      v38 = v1;
      v39 = objc_allocWithZone(MEMORY[0x277D44700]);
      v40 = sub_261CFD814();
      v41 = sub_261CFFA54();
      v42 = [v39 initWithUUID:v40 entityName:v41];

      *v37 = v42;
      v153[0] = v34;
      v44 = *(v34 + 16);
      v43 = *(v34 + 24);
      if (v44 >= v43 >> 1)
      {
        sub_261B39DFC((v43 > 1), v44 + 1, 1);
        v34 = v153[0];
      }

      v45 = v38[20];
      *(v34 + 16) = v44 + 1;
      sub_261B91F74(v45, v34 + ((*(v151 + 80) + 32) & ~*(v151 + 80)) + *(v151 + 72) * v44);
      v36 += v147;
      --v33;
      v1 = v38;
    }

    while (v33);
    LODWORD(v12) = v144;
    v32 = v139;
  }

  if (*(v34 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE120, &qword_261D05738);
    v46 = sub_261D00544();
  }

  else
  {
    v46 = MEMORY[0x277D84F98];
  }

  v153[0] = v46;
  sub_261BF8D88(v34, 1, v153);

  v1[4] = v153[0];
  if (v142)
  {
    v47 = qword_27FED9B28;
    v48 = v142;
    if (v47 != -1)
    {
      goto LABEL_89;
    }

    goto LABEL_26;
  }

  v48 = v1[10];
  sub_261BF6544(v32);
  v1[38] = v70;
  v1[39] = v71;
  v80 = v70;
  v81 = sub_261BF9BE0(v32, v70, v71, v137);
  v1[40] = v81;
  v153[0] = MEMORY[0x277D84F90];
  if (v32 >> 62)
  {
    v48 = v81;
    v89 = sub_261D00274();
    v81 = v48;
  }

  else
  {
    v89 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v143 = v80;
  v150 = v81;
  if (!v89)
  {
    v105 = MEMORY[0x277D84F90];
LABEL_72:
    if (v105 < 0 || (v105 & 0x4000000000000000) != 0)
    {
      v106 = v150;
      if (sub_261D00274())
      {
        goto LABEL_75;
      }
    }

    else
    {
      v106 = v150;
      if (*(v105 + 16))
      {
LABEL_75:
        if (qword_27FED9B28 != -1)
        {
          swift_once();
        }

        v107 = sub_261CFF7A4();
        __swift_project_value_buffer(v107, qword_27FEDC450);
        sub_261CFCDA4();
        v108 = sub_261CFF784();
        v109 = sub_261CFFE84();

        if (os_log_type_enabled(v108, v109))
        {
          v110 = swift_slowAlloc();
          v111 = swift_slowAlloc();
          v153[0] = v111;
          *v110 = 136446466;
          v112 = sub_261B05020(0, &qword_280D21DF0, 0x277D44700);
          v113 = MEMORY[0x26671C340](v105, v112);
          v114 = v1;
          v116 = v115;

          v117 = sub_261B879C8(v113, v116, v153);
          v1 = v114;

          *(v110 + 4) = v117;
          *(v110 + 12) = 2082;
          if (v12)
          {
            v118 = 0x6D6F74746F62;
          }

          else
          {
            v118 = 7368564;
          }

          if (v12)
          {
            v119 = 0xE600000000000000;
          }

          else
          {
            v119 = 0xE300000000000000;
          }

          v120 = sub_261B879C8(v118, v119, v153);

          *(v110 + 14) = v120;
          _os_log_impl(&dword_261AE2000, v108, v109, "[MoveRemindersToParentReminder] Move reminders to become top-level reminders {reminderIDs: %{public}s, insertPosition: %{public}s", v110, 0x16u);
          swift_arrayDestroy();
          v121 = v111;
          v80 = v143;
          MEMORY[0x26671D560](v121, -1, -1);
          MEMORY[0x26671D560](v110, -1, -1);
        }

        else
        {
        }

        v106 = v150;
        LOBYTE(v153[0]) = v12;
        sub_261BF7050(v32, v153, v141);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC468, &qword_261D0A018);
        sub_261CFF904();
        LOBYTE(v12) = v144;

        goto LABEL_93;
      }
    }

LABEL_93:
    if ((v106 & 0xC000000000000001) != 0)
    {
      v122 = sub_261D00274();
    }

    else
    {
      v122 = *(v106 + 16);
    }

    if (!v122)
    {

      goto LABEL_41;
    }

    if (qword_27FED9B28 != -1)
    {
      swift_once();
    }

    v123 = sub_261CFF7A4();
    __swift_project_value_buffer(v123, qword_27FEDC450);
    sub_261CFD104();
    v124 = sub_261CFF784();
    v125 = sub_261CFFE84();

    if (os_log_type_enabled(v124, v125))
    {
      v12 = swift_slowAlloc();
      v126 = swift_slowAlloc();
      v153[0] = v126;
      *v12 = 136446466;
      sub_261B05020(0, &qword_280D21DF0, 0x277D44700);
      sub_261B05020(0, &qword_27FEDA5E0, 0x277D44698);
      sub_261CFD104();
      v127 = sub_261CFF914();
      v129 = v128;

      v130 = sub_261B879C8(v127, v129, v153);

      *(v12 + 4) = v130;
      *(v12 + 12) = 2082;
      if (v144)
      {
        v131 = 0x6D6F74746F62;
      }

      else
      {
        v131 = 7368564;
      }

      if (v144)
      {
        v132 = 0xE600000000000000;
      }

      else
      {
        v132 = 0xE300000000000000;
      }

      v133 = sub_261B879C8(v131, v132, v153);

      *(v12 + 14) = v133;
      _os_log_impl(&dword_261AE2000, v124, v125, "[MoveRemindersToParentReminder] Move reminders to become top-level reminders into sections {reminderIDs: %{public}s, insertPosition: %{public}s", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26671D560](v126, -1, -1);
      v134 = v12;
      LOBYTE(v12) = v144;
      MEMORY[0x26671D560](v134, -1, -1);
    }

    *(v1 + 353) = v12;
    v135 = swift_task_alloc();
    v1[41] = v135;
    *v135 = v1;
    v135[1] = sub_261BF5B28;

    return sub_261BFAC50(v106, v1 + 353, v80);
  }

  v148 = v1;
  v1 = 0;
  v12 = v32 & 0xC000000000000001;
  v90 = v81 & 0xC000000000000001;
  while (1)
  {
    if (v12)
    {
      v91 = MEMORY[0x26671CA10](v1, v32);
    }

    else
    {
      if (v1 >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_88;
      }

      v91 = *(v32 + 8 * v1 + 32);
    }

    v92 = v91;
    v93 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      break;
    }

    if (v90)
    {
      v94 = v91;
      v48 = sub_261D004A4();

      if (v48)
      {
        v148[6] = v48;
        sub_261B05020(0, &qword_27FEDA5E0, 0x277D44698);
        swift_dynamicCast();
        v95 = v148[5];
        if (v95)
        {
          goto LABEL_65;
        }
      }
    }

    else if (v150[2])
    {
      v48 = v150;
      v96 = sub_261B37CA4(v91);
      if (v97)
      {
        v95 = *(v150[7] + 8 * v96);
        if (v95)
        {
LABEL_65:

          goto LABEL_53;
        }
      }
    }

    v48 = v153;
    sub_261D00374();
    sub_261D003B4();
    sub_261D003C4();
    sub_261D00384();
LABEL_53:
    v1 = (v1 + 1);
    if (v93 == v89)
    {
      v105 = v153[0];
      v1 = v148;
      LODWORD(v12) = v144;
      goto LABEL_72;
    }
  }

  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  swift_once();
LABEL_26:
  v49 = sub_261CFF7A4();
  __swift_project_value_buffer(v49, qword_27FEDC450);
  v50 = v48;
  sub_261CFD104();
  v51 = sub_261CFF784();
  v52 = sub_261CFFE84();

  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v152 = swift_slowAlloc();
    v153[0] = v152;
    *v53 = 136446722;
    v55 = sub_261B05020(0, &qword_280D21DF0, 0x277D44700);
    v56 = MEMORY[0x26671C340](v32, v55);
    v58 = v1;
    v59 = sub_261B879C8(v56, v57, v153);

    *(v53 + 4) = v59;
    *(v53 + 12) = 2114;
    v60 = [v50 objectID];
    *(v53 + 14) = v60;
    *v54 = v60;
    *(v53 + 22) = 2082;
    if (v12)
    {
      v61 = 0x6D6F74746F62;
    }

    else
    {
      v61 = 7368564;
    }

    if (v12)
    {
      v62 = 0xE600000000000000;
    }

    else
    {
      v62 = 0xE300000000000000;
    }

    v63 = sub_261B879C8(v61, v62, v153);

    *(v53 + 24) = v63;
    v1 = v58;
    _os_log_impl(&dword_261AE2000, v51, v52, "[MoveRemindersToParentReminder] Move reminders as subtasks to parent reminder {reminderIDs: %{public}s, parentReminder: %{public}@, insertPosition: %{public}s", v53, 0x20u);
    sub_261AE6A40(v54, &unk_27FEDA730, &unk_261D035C0);
    MEMORY[0x26671D560](v54, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x26671D560](v152, -1, -1);
    MEMORY[0x26671D560](v53, -1, -1);
  }

  LOBYTE(v153[0]) = v12;
  sub_261BF6188(v32, v50, v153, v141);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC468, &qword_261D0A018);
  sub_261CFF904();

LABEL_41:
  v72 = v1[37];
  v73 = v1[32];
  v74 = v1[9];

  __swift_project_boxed_opaque_existential_1(v74, v74[3]);
  *(swift_allocObject() + 16) = v72;
  sub_261CFE484();

  v75 = sub_261BF3DE0(v73, v1 + 4);
  if (*(v73 + 16))
  {
    v76 = v1[26];
    v77 = v1[17];
    v78 = *(v1[24] + 80);
    sub_261B4C910(v1[32] + ((v78 + 32) & ~v78), v76);

    sub_261BBF818(0, v77);
    v79 = v76;
    goto LABEL_68;
  }

  v82 = v1[33];
  v83 = v1[23];
  v84 = v1[21];

  sub_261CFCBB4();
  if (v82(v84, 1, v83) == 1)
  {
    sub_261AE6A40(v1[21], &unk_27FEDE110, &unk_261D035B0);
    if (qword_27FED9A10 != -1)
    {
      swift_once();
    }

    v85 = v1[17];
    v86 = v1[14];
    v87 = v1[15];
    v88 = __swift_project_value_buffer(v86, qword_27FEDB8A8);
    (*(v87 + 16))(v85, v88, v86);
  }

  else
  {
    v98 = v1[25];
    v99 = v1[17];
    sub_261B837B0(v1[21], v98);
    sub_261BBF818(0, v99);
    v79 = v98;
LABEL_68:
    sub_261B4C974(v79);
  }

  v138 = v1[36];
  v140 = v1[35];
  v136 = v1[17];
  v145 = v1[16];
  v101 = v1[14];
  v100 = v1[15];
  v103 = v1[12];
  v102 = v1[13];
  v104 = v1[11];
  v1[7] = v75;
  (*(v100 + 16))(v145);
  sub_261CFC9E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0D0, qword_261D11550);
  sub_261B834D8();
  sub_261BFBDB8(&qword_27FEDA3C0, MEMORY[0x277CB9DE0], MEMORY[0x277CB9DD8]);
  sub_261CFC974();

  (*(v103 + 8))(v102, v104);
  (*(v100 + 8))(v136, v101);

  v7 = v1[1];
LABEL_2:

  return v7();
}

uint64_t sub_261BF5B28(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 336) = v1;

  if (v1)
  {

    v5 = sub_261BF6090;
  }

  else
  {
    *(v4 + 344) = a1;
    v5 = sub_261BF5CA0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_261BF5CA0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC468, &qword_261D0A018);
  sub_261CFF904();
  v1 = v0[37];
  v2 = v0[32];
  v3 = v0[9];

  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  *(swift_allocObject() + 16) = v1;
  sub_261CFE484();

  v4 = sub_261BF3DE0(v2, v0 + 4);
  v5 = v4;
  if (*(v2 + 16))
  {
    v6 = v0[26];
    v7 = v0[17];
    v8 = *(v0[24] + 80);
    sub_261B4C910(v0[32] + ((v8 + 32) & ~v8), v6);

    sub_261BBF818(0, v7);
    sub_261B4C974(v6);
  }

  else
  {
    v9 = v4;
    v10 = v0[33];
    v11 = v0[23];
    v12 = v0[21];

    sub_261CFCBB4();
    if (v10(v12, 1, v11) == 1)
    {
      sub_261AE6A40(v0[21], &unk_27FEDE110, &unk_261D035B0);
      if (qword_27FED9A10 != -1)
      {
        swift_once();
      }

      v13 = v0[17];
      v14 = v0[14];
      v15 = v0[15];
      v16 = __swift_project_value_buffer(v14, qword_27FEDB8A8);
      (*(v15 + 16))(v13, v16, v14);
    }

    else
    {
      v17 = v0[25];
      v18 = v0[17];
      sub_261B837B0(v0[21], v17);
      sub_261BBF818(0, v18);
      sub_261B4C974(v17);
    }

    v5 = v9;
  }

  v27 = v0[36];
  v28 = v0[35];
  v26 = v0[17];
  v29 = v0[16];
  v20 = v0[14];
  v19 = v0[15];
  v22 = v0[12];
  v21 = v0[13];
  v23 = v0[11];
  v0[7] = v5;
  (*(v19 + 16))(v29);
  sub_261CFC9E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0D0, qword_261D11550);
  sub_261B834D8();
  sub_261BFBDB8(&qword_27FEDA3C0, MEMORY[0x277CB9DE0], MEMORY[0x277CB9DD8]);
  sub_261CFC974();

  (*(v22 + 8))(v21, v23);
  (*(v19 + 8))(v26, v20);

  v24 = v0[1];

  return v24();
}

uint64_t sub_261BF6090()
{

  v1 = *(v0 + 8);

  return v1();
}

id sub_261BF6188(unint64_t a1, void *a2, unsigned __int8 *a3, void *a4)
{
  v6 = v4;
  v11 = sub_261CFF1F4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = *a3;
  result = sub_261CFC0B8(a1);
  if (!v5)
  {
    v31 = v12;
    v16 = result;
    v17 = sub_261CFD104();
    v18 = sub_261BF3B64(v17);
    v34 = 0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA740, &qword_261D05A10);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_261D030F0;
    *(inited + 32) = [a2 list];
    *&v36 = v18;
    sub_261BBBBF8(inited);
    sub_261CFFE94();

    v20 = [*(v6 + 16) refreshReminder_];
    v21 = [a4 updateReminder_];
    sub_261CFDD24();
    v39 = [v20 list];
    v38 = 0;
    v36 = 0u;
    v37 = 0u;
    v22 = a4;
    sub_261CFDF24();
    v33 = v40;
    sub_261CFE144();
    v39 = v20;
    v38 = 0;
    v36 = 0u;
    v37 = 0u;
    v23 = v22;
    v32 = v20;
    sub_261CFDF24();
    v24 = v40;
    *&v36 = MEMORY[0x277D84F98];
    sub_261CFD104();
    v25 = v23;
    sub_261CFCDA4();
    v26 = a2;
    v27 = v21;
    v28 = v34;
    sub_261BF91D4(a1, v16, v24, v25, v35, v26, &v36, v27);

    if (v28)
    {
    }

    else
    {

      v29 = v31;
      (*(v31 + 104))(v14, *MEMORY[0x277D45E88], v11);
      sub_261CFDCF4();

      (*(v29 + 8))(v14, v11);
      return v36;
    }
  }

  return result;
}

void sub_261BF6544(char *a1)
{
  v100 = a1;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDB0F0, &qword_261D050F8);
  v99 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v96 = v67 - v2;
  v104 = sub_261CFF114();
  v97 = *(v104 - 8);
  v3 = MEMORY[0x28223BE20](v104);
  v103 = v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v102 = v67 - v5;
  v95 = sub_261CFF244();
  v98 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v94 = v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_261CFF334();
  v83 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v92 = v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_261CFF284();
  v84 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_261CFF204();
  v85 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_261CFF374();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = v101;
  v19 = sub_261CFC0B8(v100);
  if (v18)
  {
    return;
  }

  v75 = v15;
  v100 = v17;
  v77 = v14;
  v89 = v13;
  v90 = v11;
  v86 = v10;
  v87 = v8;
  v67[4] = v19;
  v88 = v1;
  v101 = 0;
  if ((v19 & 0xC000000000000001) != 0)
  {
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = sub_261D00424() | 0x8000000000000000;
  }

  else
  {
    v24 = -1 << *(v19 + 32);
    v21 = ~v24;
    v20 = (v19 + 64);
    v25 = -v24;
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    else
    {
      v26 = -1;
    }

    v22 = v26 & *(v19 + 64);
    v23 = v19;
  }

  v27 = v99;
  sub_261CFD104();
  v28 = 0;
  v67[1] = v21;
  v29 = (v21 + 64) >> 6;
  v85 += 13;
  v84 += 13;
  v83 += 13;
  v82 = *MEMORY[0x277D45418];
  v81 = *MEMORY[0x277D45468];
  v80 = *MEMORY[0x277D45500];
  v79 = *MEMORY[0x277D45458];
  v78 = (v98 + 104);
  v73 = (v27 + 8);
  v72 = (v97 + 16);
  v67[3] = v97 + 32;
  v67[2] = v97 + 40;
  v70 = (v97 + 8);
  ++v75;
  v30 = MEMORY[0x277D84F98];
  v76 = v23;
  v71 = v29;
  v74 = v20;
  while ((v23 & 0x8000000000000000) != 0)
  {
    v42 = sub_261D004B4();
    if (!v42 || (v44 = v43, v105 = v42, sub_261B05020(0, &qword_280D21DF0, 0x277D44700), swift_dynamicCast(), v34 = v28, v38 = v106, v105 = v44, sub_261B05020(0, &qword_27FEDDF20, 0x277D44750), swift_dynamicCast(), v39 = v106, v68 = v34, v69 = v22, v35 = v22, v41 = v89, v40 = v90, !v38))
    {
LABEL_30:
      sub_261AE6F74(v23);
      return;
    }

LABEL_20:
    v98 = v35;
    v99 = v38;
    (*v85)(v41, v82, v40);
    (*v84)(v86, v81, v87);
    (*v83)(v92, v80, v93);
    (*v78)(v94, v79, v95);
    v45 = v39;
    sub_261CFF364();
    v46 = [v45 list];
    v47 = v96;
    v48 = v101;
    sub_261CFF0C4();
    if (v48)
    {
      (*v75)(v100, v77);

      sub_261AE6F74(v76);

      return;
    }

    v101 = 0;

    v49 = v102;
    v50 = v91;
    sub_261CFF534();
    (*v73)(v47, v50);
    v51 = [v45 list];
    v52 = [v51 objectID];

    (*v72)(v103, v49, v104);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v106 = v30;
    v54 = sub_261B37CA4(v52);
    v56 = *(v30 + 2);
    v57 = (v55 & 1) == 0;
    v58 = __OFADD__(v56, v57);
    v59 = v56 + v57;
    if (v58)
    {
      goto LABEL_34;
    }

    v60 = v55;
    if (*(v30 + 3) >= v59)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v66 = v54;
        sub_261CA4F30();
        v54 = v66;
      }
    }

    else
    {
      sub_261CA3FD0(v59, isUniquelyReferenced_nonNull_native);
      v54 = sub_261B37CA4(v52);
      if ((v60 & 1) != (v61 & 1))
      {
        goto LABEL_36;
      }
    }

    v62 = v97;
    v63 = v77;
    v30 = v106;
    if (v60)
    {
      v31 = v104;
      (*(v97 + 40))(*(v106 + 7) + *(v97 + 72) * v54, v103, v104);
    }

    else
    {
      *&v106[8 * (v54 >> 6) + 64] |= 1 << v54;
      *(*(v30 + 6) + 8 * v54) = v52;
      v31 = v104;
      (*(v62 + 32))(*(v30 + 7) + *(v62 + 72) * v54, v103, v104);
      v64 = *(v30 + 2);
      v58 = __OFADD__(v64, 1);
      v65 = v64 + 1;
      if (v58)
      {
        goto LABEL_35;
      }

      *(v30 + 2) = v65;
      v52 = v45;
    }

    (*v70)(v102, v31);
    (*v75)(v100, v63);

    v28 = v34;
    v22 = v98;
    v20 = v74;
    v23 = v76;
    v29 = v71;
  }

  v32 = v28;
  v33 = v22;
  v34 = v28;
  if (v22)
  {
LABEL_16:
    v68 = v28;
    v69 = v22;
    v35 = (v33 - 1) & v33;
    v36 = (v34 << 9) | (8 * __clz(__rbit64(v33)));
    v37 = *(*(v23 + 56) + v36);
    v38 = *(*(v23 + 48) + v36);
    v39 = v37;
    v41 = v89;
    v40 = v90;
    if (!v38)
    {
      goto LABEL_30;
    }

    goto LABEL_20;
  }

  while (1)
  {
    v34 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      break;
    }

    if (v34 >= v29)
    {
      goto LABEL_30;
    }

    v33 = *&v20[8 * v34];
    ++v32;
    if (v33)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  sub_261B05020(0, &qword_280D21DF0, 0x277D44700);
  sub_261D00654();
  __break(1u);
}

id sub_261BF7050(unint64_t a1, unsigned __int8 *a2, void *a3)
{
  v6 = sub_261CFF1F4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(a2) = *a2;
  result = sub_261CFC0B8(a1);
  v40 = result;
  if (v3)
  {
    return result;
  }

  v34 = v7;
  v37 = v9;
  v38 = v6;
  v44 = MEMORY[0x277D84F98];
  v43 = MEMORY[0x277D84F98];
  if (a1 >> 62)
  {
    goto LABEL_38;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_261D00274())
  {
    sub_261CFD104();
    v39 = a3;
    if (!i)
    {
      break;
    }

    v13 = a2;
    v14 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x26671CA10](v14, a1);
      }

      else
      {
        if (v14 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_37;
        }

        v15 = *(a1 + 8 * v14 + 32);
      }

      a2 = v15;
      a3 = (v14 + 1);
      if (__OFADD__(v14, 1))
      {
        break;
      }

      v42 = v15;
      sub_261BF7858(&v42, v40, &v44, v39, v13, &v43);

      ++v14;
      if (a3 == i)
      {
        v16 = v44;
        goto LABEL_14;
      }
    }

LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    ;
  }

  v16 = MEMORY[0x277D84F98];
LABEL_14:
  swift_bridgeObjectRelease_n();

  if ((v16 & 0xC000000000000001) != 0)
  {
    v17 = 0;
    v18 = 0;
    a1 = 0;
    v40 = sub_261D00424() | 0x8000000000000000;
  }

  else
  {
    v19 = -1 << *(v16 + 32);
    v18 = ~v19;
    v17 = v16 + 64;
    v20 = -v19;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    a1 = v21 & *(v16 + 64);
    v40 = v16;
  }

  v33[1] = v16;
  swift_bridgeObjectRetain_n();
  v22 = 0;
  v33[0] = v18;
  a2 = ((v18 + 64) >> 6);
  v39 = *MEMORY[0x277D44BF0];
  v36 = *MEMORY[0x277D45E90];
  v35 = (v34 + 104);
  v23 = (v34 + 8);
  v24 = v40;
  if ((v40 & 0x8000000000000000) == 0)
  {
    while (1)
    {
      v28 = v22;
      v29 = a1;
      v27 = v22;
      if (!a1)
      {
        break;
      }

LABEL_28:
      a3 = ((v29 - 1) & v29);
      v30 = *(*(v24 + 56) + ((v27 << 9) | (8 * __clz(__rbit64(v29)))));
      sub_261CFCDA4();
      if (!v30)
      {
        goto LABEL_32;
      }

LABEL_29:
      v32 = v37;
      v31 = v38;
      (*v35)(v37, v36, v38);
      sub_261CFDCF4();

      (*v23)(v32, v31);
      v22 = v27;
      a1 = a3;
      v24 = v40;
      if ((v40 & 0x8000000000000000) != 0)
      {
        goto LABEL_21;
      }
    }

    while (1)
    {
      v27 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v27 >= a2)
      {
        goto LABEL_33;
      }

      v29 = *(v17 + 8 * v27);
      ++v28;
      if (v29)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
    goto LABEL_36;
  }

LABEL_21:
  if (sub_261D004B4())
  {
    v26 = v25;
    swift_unknownObjectRelease();
    v41 = v26;
    sub_261CFDD24();
    swift_dynamicCast();
    v27 = v22;
    a3 = a1;
    if (v42)
    {
      goto LABEL_29;
    }
  }

LABEL_32:
  v24 = v40;
LABEL_33:
  sub_261AE6F74(v24);
  swift_bridgeObjectRelease_n();
  return v43;
}

void sub_261BF7470(void *a1, char a2, uint64_t a3)
{
  if (a2)
  {
    if (qword_27FED9B28 != -1)
    {
      swift_once();
    }

    v5 = sub_261CFF7A4();
    __swift_project_value_buffer(v5, qword_27FEDC450);
    sub_261CFD104();
    sub_261BFBE00(a1, 1);
    oslog = sub_261CFF784();
    v6 = sub_261CFFE64();

    sub_261BFBE0C(a1, 1);
    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v26 = v8;
      *v7 = 136446466;
      v9 = sub_261B05020(0, &qword_280D21DF0, 0x277D44700);
      v10 = MEMORY[0x26671C340](a3, v9);
      v12 = sub_261B879C8(v10, v11, &v26);

      *(v7 + 4) = v12;
      *(v7 + 12) = 2080;
      swift_getErrorValue();
      v13 = sub_261D00674();
      v15 = sub_261B879C8(v13, v14, &v26);

      *(v7 + 14) = v15;
      _os_log_impl(&dword_261AE2000, oslog, v6, "[MoveRemindersToParentReminder] Saved request failed {reminderIDs: %{public}s, error: %s}", v7, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26671D560](v8, -1, -1);
      v16 = v7;
LABEL_10:
      MEMORY[0x26671D560](v16, -1, -1);

      return;
    }
  }

  else
  {
    if (qword_27FED9B28 != -1)
    {
      swift_once();
    }

    v17 = sub_261CFF7A4();
    __swift_project_value_buffer(v17, qword_27FEDC450);
    sub_261CFD104();
    oslog = sub_261CFF784();
    v18 = sub_261CFFE84();

    if (os_log_type_enabled(oslog, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v26 = v20;
      *v19 = 136446210;
      v21 = sub_261B05020(0, &qword_280D21DF0, 0x277D44700);
      v22 = MEMORY[0x26671C340](a3, v21);
      v24 = sub_261B879C8(v22, v23, &v26);

      *(v19 + 4) = v24;
      _os_log_impl(&dword_261AE2000, oslog, v18, "[MoveRemindersToParentReminder] Saved request completed successfully {reminderIDs: %{public}s}", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x26671D560](v20, -1, -1);
      v16 = v19;
      goto LABEL_10;
    }
  }
}

uint64_t sub_261BF77AC(uint64_t a1, _OWORD *a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_261AF43A8;

  return REMStoreIntentPerformer.perform(_:)(a1, a2);
}

char *sub_261BF7858(void **a1, uint64_t a2, uint64_t *a3, void *a4, int a5, uint64_t a6)
{
  LODWORD(v80) = a5;
  v81 = a4;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA108, &unk_261D020C0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v77 = &v70[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v15 = &v70[-v14];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE110, &unk_261D035B0);
  MEMORY[0x28223BE20](v16 - 8);
  v78 = &v70[-v17];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB270, &qword_261D05768);
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v70[-v20];
  result = sub_261CADDB4(*a1, a2);
  if (result)
  {
    v23 = result;
    v79 = v15;
    v75 = a6;
    v76 = v6;
    v24 = [result list];
    v25 = [v24 objectID];

    v26 = sub_261CADE84(v25, *a3);
    if (v26)
    {
      v27 = v26;
    }

    else
    {
      v74 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA740, &qword_261D05A10);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_261D030F0;
      *(v28 + 32) = [v23 list];
      v29 = v81;
      sub_261CFFE94();

      sub_261CFDD24();
      v30 = [v23 list];
      v83 = 0;
      v84 = v30;
      memset(v82, 0, sizeof(v82));
      v31 = v29;
      sub_261CFDF24();
      v27 = v85;
      swift_retain_n();
      v32 = [v23 0x279AFBEF1];
      v33 = [v32 objectID];

      v34 = *a3;
      if ((*a3 & 0xC000000000000001) != 0)
      {
        if (v34 < 0)
        {
          v35 = *a3;
        }

        else
        {
          v35 = v34 & 0xFFFFFFFFFFFFFF8;
        }

        result = sub_261D00274();
        if (__OFADD__(result, 1))
        {
          __break(1u);
          return result;
        }

        *a3 = sub_261CA248C(v35, (result + 1));
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v82[0] = *a3;
      sub_261BF83B0(v27, v33, isUniquelyReferenced_nonNull_native);
      *a3 = *&v82[0];

      if (qword_27FED9B28 != -1)
      {
        swift_once();
      }

      v37 = sub_261CFF7A4();
      __swift_project_value_buffer(v37, qword_27FEDC450);
      v38 = v23;
      v39 = sub_261CFF784();
      v40 = sub_261CFFE54();

      v73 = v39;
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v71 = v40;
        v42 = v41;
        v43 = swift_slowAlloc();
        v72 = swift_slowAlloc();
        *&v82[0] = v72;
        *v42 = 138543874;
        v44 = [v38 objectID];
        *(v42 + 4) = v44;
        *v43 = v44;
        *(v42 + 12) = 2114;
        v45 = [v38 list];
        v46 = [v45 objectID];

        *(v42 + 14) = v46;
        v43[1] = v46;
        *(v42 + 22) = 2082;
        if (v80)
        {
          v47 = 0x6D6F74746F62;
        }

        else
        {
          v47 = 7368564;
        }

        if (v80)
        {
          v48 = 0xE600000000000000;
        }

        else
        {
          v48 = 0xE300000000000000;
        }

        v49 = sub_261B879C8(v47, v48, v82);

        *(v42 + 24) = v49;
        v50 = v73;
        _os_log_impl(&dword_261AE2000, v73, v71, "[MoveRemindersToParentReminder] Move reminder to top-level with id: %{public}@, within its original list: %{public}@, at position: %{public}s", v42, 0x20u);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA730, &unk_261D035C0);
        swift_arrayDestroy();
        MEMORY[0x26671D560](v43, -1, -1);
        v51 = v72;
        __swift_destroy_boxed_opaque_existential_0(v72);
        MEMORY[0x26671D560](v51, -1, -1);
        MEMORY[0x26671D560](v42, -1, -1);
      }

      else
      {
      }
    }

    sub_261CFCDA4();
    v52 = [v81 updateReminder_];
    v53 = MEMORY[0x277D45DB0];
    if ((v80 & 1) == 0)
    {
      v53 = MEMORY[0x277D45DB8];
    }

    (*(v19 + 104))(v21, *v53, v18);
    v54 = sub_261CFDD04();

    (*(v19 + 8))(v21, v18);
    v55 = [v23 objectID];
    v56 = type metadata accessor for RecurrentInstanceSpecifier(0);
    v57 = v79;
    (*(*(v56 - 8) + 56))(v79, 1, 1, v56);
    v58 = v54;
    v59 = [v58 listChangeItem];
    if (v59 && (v60 = v59, v61 = [v59 storage], v60, v61))
    {
      v62 = [v58 storage];
      v63 = [v58 accountCapabilities];
      v80 = v23;
      v81 = v27;
      v64 = v63;
      v65 = v77;
      sub_261AFB668(v57, v77, &qword_27FEDA108, &unk_261D020C0);
      v66 = v55;
      v67 = v78;
      sub_261C7EDC4(v62, v61, v64, 0, 0, v65, v78);

      sub_261AE6A40(v57, &qword_27FEDA108, &unk_261D020C0);
      v68 = type metadata accessor for ReminderEntity(0);
      (*(*(v68 - 8) + 56))(v67, 0, 1, v68);
      sub_261BF39C0(v67, v66);
    }

    else
    {

      sub_261B01D70();
      swift_allocError();
      *v69 = 11;
      swift_willThrow();

      return sub_261AE6A40(v57, &qword_27FEDA108, &unk_261D020C0);
    }
  }

  return result;
}

uint64_t sub_261BF8094@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_261B37CA4(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v19 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_261CA4754();
      v9 = v19;
    }

    v10 = *(v9 + 56);
    v11 = type metadata accessor for ReminderEntity(0);
    v18 = *(v11 - 8);
    sub_261B837B0(v10 + *(v18 + 72) * v7, a2);
    sub_261BF81E8(v7, v9);
    *v3 = v9;
    v12 = *(v18 + 56);
    v13 = a2;
    v14 = 0;
    v15 = v11;
  }

  else
  {
    v16 = type metadata accessor for ReminderEntity(0);
    v12 = *(*(v16 - 8) + 56);
    v15 = v16;
    v13 = a2;
    v14 = 1;
  }

  return v12(v13, v14, 1, v15);
}

void sub_261BF81E8(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_261D001F4() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      v10 = sub_261D000E4();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8 || v3 < v11)
        {
          goto LABEL_5;
        }
      }

      else if (v11 < v8 && v3 < v11)
      {
        goto LABEL_5;
      }

      v14 = *(a2 + 48);
      v15 = (v14 + 8 * v3);
      v16 = (v14 + 8 * v6);
      if (v3 != v6 || v15 >= v16 + 1)
      {
        *v15 = *v16;
      }

      v17 = *(a2 + 56);
      v18 = *(*(type metadata accessor for ReminderEntity(0) - 8) + 72);
      v19 = v18 * v3;
      v20 = v17 + v18 * v3;
      v21 = v18 * v6;
      v22 = v17 + v18 * v6 + v18;
      if (v19 < v21 || v20 >= v22)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v19 == v21)
        {
          goto LABEL_5;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v24 = *(a2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v26;
    ++*(a2 + 36);
  }
}

id sub_261BF83B0(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_261B37CA4(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_261CA296C(v13, a3 & 1);
      v8 = sub_261B37CA4(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        sub_261B05020(0, &qword_280D21DF0, 0x277D44700);
        result = sub_261D00654();
        __break(1u);
        return result;
      }
    }

    else
    {
      v16 = v8;
      sub_261CA45F0();
      v8 = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    *(v18[7] + 8 * v8) = a1;
  }

  v18[(v8 >> 6) + 8] |= 1 << v8;
  *(v18[6] + 8 * v8) = a2;
  *(v18[7] + 8 * v8) = a1;
  v20 = v18[2];
  v12 = __OFADD__(v20, 1);
  v21 = v20 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18[2] = v21;

  return a2;
}

id sub_261BF852C(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v9 = sub_261B37CA4(a2);
  v10 = v7[2];
  v11 = (v8 & 1) == 0;
  v12 = v10 + v11;
  if (__OFADD__(v10, v11))
  {
    __break(1u);
    goto LABEL_17;
  }

  v13 = v8;
  v14 = v7[3];
  if (v14 < v12 || (a3 & 1) == 0)
  {
    if (v14 >= v12 && (a3 & 1) == 0)
    {
      sub_261CA4754();
      goto LABEL_7;
    }

    sub_261CA2BDC(v12, a3 & 1);
    v19 = sub_261B37CA4(a2);
    if ((v13 & 1) == (v20 & 1))
    {
      v9 = v19;
      v15 = *v4;
      if (v13)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    sub_261B05020(0, &qword_280D21DF0, 0x277D44700);
    result = sub_261D00654();
    __break(1u);
    return result;
  }

LABEL_7:
  v15 = *v4;
  if (v13)
  {
LABEL_8:
    v16 = v15[7];
    v17 = v16 + *(*(type metadata accessor for ReminderEntity(0) - 8) + 72) * v9;

    return sub_261B4AC20(a1, v17);
  }

LABEL_13:
  sub_261BF8808(v9, a2, a1, v15);

  return a2;
}

void sub_261BF8690(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_261B37CA4(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_261CA3A98(v13, a3 & 1);
      v8 = sub_261B37CA4(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        sub_261B05020(0, &qword_280D21DF0, 0x277D44700);
        sub_261D00654();
        __break(1u);
        return;
      }
    }

    else
    {
      v16 = v8;
      sub_261CA4DCC();
      v8 = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    v19 = v18[7];
    v20 = *(v19 + 8 * v8);
    *(v19 + 8 * v8) = a1;

    return;
  }

  v18[(v8 >> 6) + 8] |= 1 << v8;
  *(v18[6] + 8 * v8) = a2;
  *(v18[7] + 8 * v8) = a1;
  v21 = v18[2];
  v12 = __OFADD__(v21, 1);
  v22 = v21 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18[2] = v22;

  v23 = a2;
}

uint64_t sub_261BF8808(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = type metadata accessor for ReminderEntity(0);
  result = sub_261B837B0(a3, v7 + *(*(v8 - 8) + 72) * a1);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

void sub_261BF889C(unint64_t a1, void *a2, char a3, void *a4)
{
  v43 = a4;
  LOBYTE(v4) = a3;
  v7 = type metadata accessor for ReminderEntity(0);
  v42 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA598, &qword_261D05740);
  MEMORY[0x28223BE20](v41);
  v40 = &v35 - v10;
  if (a1 >> 62)
  {
LABEL_31:
    v11 = sub_261D00274();
  }

  else
  {
    v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_261CFD104();
  sub_261CFD104();
  if (!v11)
  {
LABEL_25:
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    return;
  }

  v12 = 0;
  v38 = a1 & 0xFFFFFFFFFFFFFF8;
  v39 = a1 & 0xC000000000000001;
  v36 = a2;
  v37 = a1;
  while (1)
  {
    if (v39)
    {
      v13 = MEMORY[0x26671CA10](v12, a1);
    }

    else
    {
      if (v12 >= *(v38 + 16))
      {
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      v13 = *(a1 + 8 * v12 + 32);
    }

    v14 = v13;
    v15 = a2[2];
    if (v12 == v15)
    {

      goto LABEL_25;
    }

    if (v12 >= v15)
    {
      goto LABEL_28;
    }

    v16 = *(v42 + 72);
    v17 = a2 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + v16 * v12;
    v18 = v40;
    v19 = *(v41 + 48);
    sub_261B4C910(v17, &v40[v19]);
    v47 = v14;
    v20 = &v18[v19];
    a1 = v9;
    sub_261B837B0(v20, v9);
    a2 = *v43;
    v9 = sub_261B37CA4(v14);
    v22 = a2[2];
    v23 = (v21 & 1) == 0;
    v24 = v22 + v23;
    if (__OFADD__(v22, v23))
    {
      goto LABEL_29;
    }

    v25 = v21;
    if (a2[3] >= v24)
    {
      break;
    }

    v26 = v43;
    sub_261CA2BDC(v24, v4 & 1);
    a2 = *v26;
    v27 = sub_261B37CA4(v14);
    if ((v25 & 1) != (v28 & 1))
    {
      sub_261B05020(0, &qword_280D21DF0, 0x277D44700);
      sub_261D00654();
      __break(1u);
      goto LABEL_33;
    }

    v9 = v27;
    if (v25)
    {
      goto LABEL_22;
    }

LABEL_17:
    v4 = *v43;
    *(*v43 + 8 * (v9 >> 6) + 64) |= 1 << v9;
    *(v4[6] + 8 * v9) = v14;
    v29 = v4[7] + v9 * v16;
    v9 = a1;
    sub_261B837B0(a1, v29);
    v30 = v4[2];
    v31 = __OFADD__(v30, 1);
    v32 = v30 + 1;
    if (v31)
    {
      goto LABEL_30;
    }

    ++v12;
    v4[2] = v32;
    LOBYTE(v4) = 1;
    a2 = v36;
    a1 = v37;
    if (v11 == v12)
    {
      goto LABEL_25;
    }
  }

  if (v4)
  {
    if (v21)
    {
      goto LABEL_22;
    }

    goto LABEL_17;
  }

  a2 = v43;
  sub_261CA4754();
  if ((v25 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_22:
  v33 = swift_allocError();
  swift_willThrow();
  v46 = v33;
  v34 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE130, &qword_261D0A028);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_261B4C974(a1);

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();

    return;
  }

LABEL_33:
  v44 = 0;
  v45 = 0xE000000000000000;
  sub_261D00334();
  MEMORY[0x26671C210](0xD00000000000001BLL, 0x8000000261D1DD20);
  sub_261B05020(0, &qword_280D21DF0, 0x277D44700);
  sub_261D00404();
  MEMORY[0x26671C210](39, 0xE100000000000000);
  sub_261D004E4();
  __break(1u);
}

unint64_t sub_261BF8D24()
{
  result = qword_27FEDD910;
  if (!qword_27FEDD910)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27FEDE100, &qword_261D05750);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDD910);
  }

  return result;
}

uint64_t sub_261BF8D88(uint64_t a1, int a2, void *a3)
{
  v7 = type metadata accessor for ReminderEntity(0);
  v53 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v50 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v46 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA598, &qword_261D05740);
  result = MEMORY[0x28223BE20](v12);
  v16 = (&v46 - v15);
  v17 = *(a1 + 16);
  if (!v17)
  {
    return result;
  }

  v49 = a2;
  v18 = *(result + 48);
  v19 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v52 = *(v14 + 72);
  v47 = v19;
  v48 = a1;
  sub_261AFB668(a1 + v19, &v46 - v15, &qword_27FEDA598, &qword_261D05740);
  v20 = *v16;
  v51 = v18;
  sub_261B837B0(v16 + v18, v11);
  v21 = *a3;
  v23 = sub_261B37CA4(v20);
  v24 = v21[2];
  v25 = (v22 & 1) == 0;
  v26 = v24 + v25;
  if (__OFADD__(v24, v25))
  {
    goto LABEL_22;
  }

  LOBYTE(v3) = v22;
  if (v21[3] >= v26)
  {
    if ((v49 & 1) == 0)
    {
      goto LABEL_24;
    }

    while (1)
    {
LABEL_7:
      v29 = v17;
      v30 = *a3;
      if (v3)
      {
        v23 *= *(v53 + 72);
        v31 = v50;
        sub_261B4C910(v30[7] + v23, v50);
        sub_261B4C974(v11);

        result = sub_261B4AC20(v31, v30[7] + v23);
      }

      else
      {
        v30[(v23 >> 6) + 8] |= 1 << v23;
        *(v30[6] + 8 * v23) = v20;
        result = sub_261B837B0(v11, v30[7] + *(v53 + 72) * v23);
        v32 = v30[2];
        v33 = __OFADD__(v32, 1);
        v34 = v32 + 1;
        if (v33)
        {
          goto LABEL_23;
        }

        v30[2] = v34;
      }

      v17 = v29 - 1;
      if (v29 == 1)
      {
        return result;
      }

      v3 = v48 + v52 + v47;
      while (1)
      {
        sub_261AFB668(v3, v16, &qword_27FEDA598, &qword_261D05740);
        v20 = *v16;
        sub_261B837B0(v16 + v51, v11);
        v36 = *a3;
        v37 = sub_261B37CA4(v20);
        v39 = v36[2];
        v40 = (v38 & 1) == 0;
        v33 = __OFADD__(v39, v40);
        v41 = v39 + v40;
        if (v33)
        {
          break;
        }

        v23 = v38;
        if (v36[3] < v41)
        {
          sub_261CA2BDC(v41, 1);
          v37 = sub_261B37CA4(v20);
          if ((v23 & 1) != (v42 & 1))
          {
            goto LABEL_25;
          }
        }

        v43 = *a3;
        if (v23)
        {
          v23 = *(v53 + 72) * v37;
          v35 = v50;
          sub_261B4C910(v43[7] + v23, v50);
          sub_261B4C974(v11);

          result = sub_261B4AC20(v35, v43[7] + v23);
        }

        else
        {
          v43[(v37 >> 6) + 8] |= 1 << v37;
          *(v43[6] + 8 * v37) = v20;
          result = sub_261B837B0(v11, v43[7] + *(v53 + 72) * v37);
          v44 = v43[2];
          v33 = __OFADD__(v44, 1);
          v45 = v44 + 1;
          if (v33)
          {
            goto LABEL_23;
          }

          v43[2] = v45;
        }

        v3 += v52;
        if (!--v17)
        {
          return result;
        }
      }

LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      sub_261CA4754();
    }
  }

  sub_261CA2BDC(v26, v49 & 1);
  v27 = sub_261B37CA4(v20);
  if ((v3 & 1) == (v28 & 1))
  {
    v23 = v27;
    goto LABEL_7;
  }

LABEL_25:
  sub_261B05020(0, &qword_280D21DF0, 0x277D44700);
  result = sub_261D00654();
  __break(1u);
  return result;
}

void sub_261BF91D4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, char a5, void *a6, void *a7, void *a8)
{
  v87 = a8;
  v86 = a7;
  v82 = a6;
  LOBYTE(v9) = a5;
  v101 = a3;
  v102 = a4;
  v106 = a2;
  v109[1] = *MEMORY[0x277D85DE8];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA108, &unk_261D020C0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v85 = &v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v103 = &v80 - v14;
  v15 = type metadata accessor for ReminderEntity(0);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v84 = &v80 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v83 = (&v80 - v18);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB270, &qword_261D05768);
  v19 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v99 = &v80 - v21;
  v81 = v8;
  if (a1 >> 62)
  {
    goto LABEL_47;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_261D00274())
  {
    v23 = 0;
    v24 = a1 & 0xC000000000000001;
    v25 = a1 & 0xFFFFFFFFFFFFFF8;
    v107 = v106 & 0xC000000000000001;
    v26 = v106 & 0xFFFFFFFFFFFFFF8;
    if (v106 < 0)
    {
      v26 = v106;
    }

    v105 = v26;
    v27 = MEMORY[0x277D45DB8];
    v97 = v19 + 13;
    v96 = v19 + 1;
    if (v9)
    {
      v27 = MEMORY[0x277D45DB0];
    }

    v95 = *v27;
    *&v20 = 138543618;
    v80 = v20;
    v91 = a1;
    v88 = i;
    v90 = a1 & 0xC000000000000001;
    v89 = a1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v24)
      {
        v28 = MEMORY[0x26671CA10](v23, a1);
      }

      else
      {
        if (v23 >= *(v25 + 16))
        {
          goto LABEL_46;
        }

        v28 = *(a1 + 8 * v23 + 32);
      }

      v29 = v28;
      v9 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v107)
      {
        v30 = v28;
        v19 = sub_261D004A4();

        if (!v19)
        {
          goto LABEL_8;
        }

        v108 = v19;
        sub_261B05020(0, &qword_27FEDDF20, 0x277D44750);
        swift_dynamicCast();
        v31 = v109[0];
        if (!v109[0])
        {
          goto LABEL_8;
        }
      }

      else if (!*(v106 + 16) || (v19 = v106, v32 = sub_261B37CA4(v28), (v33 & 1) == 0) || (v31 = *(*(v106 + 56) + 8 * v32)) == 0)
      {
LABEL_8:

        goto LABEL_9;
      }

      v34 = [v31 subtaskContext];
      if (v34)
      {
        v35 = v34;
        v109[0] = 0;
        v36 = [v34 hasSubtasksWithError_];
        v37 = v109[0];
        if (v109[0])
        {
          swift_willThrow();
          v37;

          v29 = v31;
          goto LABEL_44;
        }

        if (v36)
        {
          v71 = v29;
          if (qword_27FED9B28 != -1)
          {
            swift_once();
          }

          v72 = sub_261CFF7A4();
          __swift_project_value_buffer(v72, qword_27FEDC450);
          v73 = v31;
          v74 = sub_261CFF784();
          v75 = sub_261CFFE64();

          if (os_log_type_enabled(v74, v75))
          {
            v76 = swift_slowAlloc();
            v77 = swift_slowAlloc();
            *v76 = 138543362;
            v78 = [v73 objectID];
            *(v76 + 4) = v78;
            *v77 = v78;
            _os_log_impl(&dword_261AE2000, v74, v75, "[MoveRemindersToParentReminder] Cannot move reminders that have subtasks to become subtasks of another {reminderID: %{public}@}", v76, 0xCu);
            sub_261AE6A40(v77, &unk_27FEDA730, &unk_261D035C0);
            MEMORY[0x26671D560](v77, -1, -1);
            MEMORY[0x26671D560](v76, -1, -1);
          }

          sub_261B01D70();
          swift_allocError();
          *v79 = 17;
          swift_willThrow();

          v29 = v35;
          goto LABEL_44;
        }
      }

      v38 = [v102 updateReminder_];
      v39 = v99;
      v40 = v31;
      v41 = v100;
      (v97->isa)(v99, v95, v100);
      v42 = sub_261CFDFB4();

      (v96->isa)(v39, v41);
      if (v42)
      {
        v98 = v40;
        v43 = [v40 objectID];
        v44 = type metadata accessor for RecurrentInstanceSpecifier(0);
        (*(*(v44 - 8) + 56))(v103, 1, 1, v44);
        v45 = v42;
        v46 = [v45 listChangeItem];
        if (!v46 || (v47 = v46, v48 = [v46 storage], v47, !v48))
        {

          sub_261B01D70();
          swift_allocError();
          *v70 = 11;
          swift_willThrow();

          sub_261AE6A40(v103, &qword_27FEDA108, &unk_261D020C0);

LABEL_44:

          return;
        }

        v93 = [v45 storage];
        v49 = [v45 accountCapabilities];
        v104 = v29;
        v92 = v49;
        v50 = [v87 storage];
        v94 = v43;
        v51 = v103;
        v52 = v85;
        sub_261AFB668(v103, v85, &qword_27FEDA108, &unk_261D020C0);
        v53 = v83;
        v54 = v50;
        i = v88;
        sub_261C7EDC4(v93, v48, v92, v54, 0, v52, v83);

        v55 = v51;
        a1 = v91;
        sub_261AE6A40(v55, &qword_27FEDA108, &unk_261D020C0);
        v56 = v84;
        sub_261B837B0(v53, v84);
        v57 = v86;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v109[0] = *v57;
        v19 = v109;
        v59 = v56;
        v60 = v94;
        sub_261BF852C(v59, v94, isUniquelyReferenced_nonNull_native);

        *v57 = v109[0];
      }

      else
      {
        if (qword_27FED9B28 != -1)
        {
          swift_once();
        }

        v61 = sub_261CFF7A4();
        __swift_project_value_buffer(v61, qword_27FEDC450);
        v62 = v40;
        v63 = v82;
        v19 = sub_261CFF784();
        v64 = sub_261CFFE64();

        if (os_log_type_enabled(v19, v64))
        {
          v65 = swift_slowAlloc();
          v66 = swift_slowAlloc();
          v104 = v29;
          v67 = v66;
          *v65 = v80;
          v68 = [v62 objectID];
          *(v65 + 4) = v68;
          *v67 = v68;
          *(v65 + 12) = 2114;
          i = v88;
          v69 = [v63 objectID];
          *(v65 + 14) = v69;
          v67[1] = v69;
          _os_log_impl(&dword_261AE2000, v19, v64, "[MoveRemindersToParentReminder] Unexpectedly failed to move reminder as subtask {reminderID: %{public}@, parentReminder: %{public}@}", v65, 0x16u);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA730, &unk_261D035C0);
          swift_arrayDestroy();
          MEMORY[0x26671D560](v67, -1, -1);
          MEMORY[0x26671D560](v65, -1, -1);
        }

        else
        {
        }

        a1 = v91;
      }

      v24 = v90;
      v25 = v89;
LABEL_9:
      ++v23;
      if (v9 == i)
      {
        goto LABEL_48;
      }
    }

    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    ;
  }

LABEL_48:
}