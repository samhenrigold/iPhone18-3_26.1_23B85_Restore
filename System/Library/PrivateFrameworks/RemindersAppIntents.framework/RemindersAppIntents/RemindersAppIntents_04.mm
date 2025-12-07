uint64_t sub_261B54494()
{
  v131 = v0;
  v130[5] = *MEMORY[0x277D85DE8];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA670, &qword_261D03228);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_261D03450;
  sub_261CFCBB4();
  v129 = v0;
  v2 = sub_261B9A654(v1, 1);
  v4 = v3;
  v5 = *(v0 + 296);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_261B9B45C(3, v2, v4, v5);
  v6 = *(v0 + 288);
  v7 = *(v0 + 296);
  v8 = *(v0 + 240);

  sub_261B575F8(v7, v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v10 = *(v0 + 288);
  v11 = *(v0 + 272);
  if (EnumCaseMultiPayload == 1)
  {
    v12 = *(v0 + 224);
    v13 = *(v0 + 232);
    v14 = *(v0 + 168);
    v15 = *(v0 + 176);
    sub_261B579D4(v10, v13, _s20CategorizedRemindersV17RecurrentInstanceVMa);
    v16 = *(v13 + *(v12 + 20));
    v17 = *(v13 + *(v8 + 20));
    v18 = [v16 date];
    sub_261CFD7C4();

    sub_261B57A3C(v13, _s20CategorizedRemindersV17RecurrentInstanceVMa);
    (*(v15 + 56))(v11, 0, 1, v14);
  }

  else
  {
    v19 = *(v0 + 248);
    v20 = *(v0 + 168);
    v21 = *(v0 + 176);
    sub_261B579D4(v10, v19, _s20CategorizedRemindersV15FetchedReminderVMa);
    v22 = *(v19 + *(v8 + 20));
    sub_261B57A3C(v19, _s20CategorizedRemindersV15FetchedReminderVMa);
    (*(v21 + 56))(v11, 1, 1, v20);
    v17 = v22;
  }

  if (qword_27FED9888 != -1)
  {
    swift_once();
  }

  v23 = sub_261CFF7A4();
  __swift_project_value_buffer(v23, qword_27FEDAB50);
  v24 = v17;
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  v25 = sub_261CFF784();
  v26 = sub_261CFFE84();

  if (os_log_type_enabled(v25, v26))
  {
    v127 = v24;
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v27 = 138543618;
    v29 = [v127 objectID];

    *(v27 + 4) = v29;
    *v28 = v29;
    *(v27 + 12) = 1026;
    sub_261CFCBB4();
    *(v27 + 14) = *(v0 + 347);

    _os_log_impl(&dword_261AE2000, v25, v26, "[CompleteReminderAppIntent] Complete reminder with id: %{public}@, completeSubtasks: %{BOOL,public}d", v27, 0x12u);
    sub_261AE6A40(v28, &unk_27FEDA730, &unk_261D035C0);
    MEMORY[0x26671D560](v28, -1, -1);
    v30 = v27;
    v24 = v127;
    MEMORY[0x26671D560](v30, -1, -1);
  }

  else
  {

    v25 = v24;
  }

  v31 = *(v0 + 264);
  v32 = *(v0 + 168);
  v33 = *(v0 + 176);
  sub_261AFB668(*(v0 + 272), v31, &qword_27FEDAB68, &unk_261D11C90);
  v125 = *(v33 + 48);
  if (v125(v31, 1, v32) == 1)
  {
    sub_261AE6A40(*(v0 + 264), &qword_27FEDAB68, &unk_261D11C90);
  }

  else
  {
    v34 = *(v0 + 208);
    v35 = *(v0 + 216);
    v36 = *(v0 + 168);
    v37 = *(v0 + 176);
    (*(v37 + 32))(v35, *(v0 + 264), v36);
    (*(v37 + 16))(v34, v35, v36);
    v38 = sub_261CFF784();
    v39 = sub_261CFFE84();
    v40 = os_log_type_enabled(v38, v39);
    v41 = *(v0 + 208);
    v42 = *(v0 + 216);
    v44 = *(v0 + 168);
    v43 = *(v0 + 176);
    if (v40)
    {
      v128 = v24;
      v45 = swift_slowAlloc();
      v121 = v42;
      v46 = swift_slowAlloc();
      v130[0] = v46;
      *v45 = 136315138;
      sub_261B57AE8(&qword_27FEDA198, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v47 = sub_261D005F4();
      v49 = v48;
      v50 = *(v43 + 8);
      v50(v41, v44);
      v51 = sub_261B879C8(v47, v49, v130);

      *(v45 + 4) = v51;
      _os_log_impl(&dword_261AE2000, v38, v39, "[CompleteReminderAppIntent] afterDateForAdvancingForwardRecurrence: %s", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v46);
      MEMORY[0x26671D560](v46, -1, -1);
      v52 = v45;
      v24 = v128;
      MEMORY[0x26671D560](v52, -1, -1);

      v50(v121, v44);
    }

    else
    {

      v53 = *(v43 + 8);
      v53(v41, v44);
      v53(v42, v44);
    }
  }

  sub_261CFCBB4();
  if (*(v0 + 344) == 1)
  {
    sub_261CFC488(v24);
  }

  v54 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];
  [v54 setSaveIsNoopIfNoChangedKeys_];
  v55 = [v24 parentReminder];
  if (v55)
  {
    v56 = v55;
    v57 = v24;
    v123 = [v54 updateReminder_];
  }

  else
  {
    v57 = v24;
    v123 = 0;
  }

  sub_261CFDFF4();
  swift_allocObject();
  sub_261CFDFD4();
  sub_261CFE144();
  memset(v130, 0, 40);
  v58 = v57;
  v59 = v54;
  sub_261CFE134();
  sub_261CFCBB4();
  sub_261CFCDA4();
  sub_261CFE114();

  v60 = v129;
  sub_261CFCBB4();
  v61 = 0;
  if (*(v129 + 346) == 1)
  {
    v62 = sub_261CFDFE4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA740, &qword_261D05A10);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_261D030F0;
    *(inited + 32) = [v58 objectID];
    if ((v62 & 0xC000000000000001) != 0)
    {
      if (v62 >= 0)
      {
        v62 &= 0xFFFFFFFFFFFFFF8uLL;
      }

      v64 = sub_261D00274();
      v62 = sub_261B558DC(v62, v64);
    }

    v65 = sub_261B55ABC(inited, v62);
    swift_setDeallocating();
    swift_arrayDestroy();
    v66 = v59;
    sub_261B57750(v65, v66);
    v61 = v67;
  }

  v68 = *(v129 + 256);
  v69 = *(v129 + 168);
  sub_261AFB668(*(v129 + 272), v68, &qword_27FEDAB68, &unk_261D11C90);
  v70 = v125(v68, 1, v69);
  v71 = *(v129 + 256);
  v122 = v58;
  if (v70 == 1)
  {
    sub_261AE6A40(v71, &qword_27FEDAB68, &unk_261D11C90);
  }

  else
  {
    v72 = *(v129 + 200);
    v126 = v72;
    v73 = *(v129 + 192);
    v74 = *(v129 + 176);
    v75 = *(v129 + 168);
    v76 = *(v74 + 32);
    v76(v72, v71, v75);
    (*(v74 + 16))(v73, v72, v75);
    v77 = v61;
    v78 = v59;
    v79 = (*(v74 + 80) + 16) & ~*(v74 + 80);
    v80 = swift_allocObject();
    v81 = v80 + v79;
    v59 = v78;
    v61 = v77;
    v76(v81, v73, v75);
    *(v129 + 48) = sub_261B5765C;
    *(v129 + 56) = v80;
    *(v129 + 16) = MEMORY[0x277D85DD0];
    *(v129 + 24) = 1107296256;
    *(v129 + 32) = sub_261B556E0;
    *(v129 + 40) = &block_descriptor;
    v60 = v129;
    v82 = _Block_copy((v129 + 16));

    _Block_release(v82);
    (*(v74 + 8))(v126, v75);
  }

  v60[13] = 0;
  v83 = [v59 saveSynchronouslyWithError_];
  v84 = v60[13];
  if (!v83)
  {
    v93 = v60[37];
    v94 = v60[34];
    v95 = v84;

    sub_261CFD654();

    swift_willThrow();

    sub_261AE6A40(v94, &qword_27FEDAB68, &unk_261D11C90);
    v96 = v93;
LABEL_35:
    sub_261B57A3C(v96, _s20CategorizedRemindersV12EditableItemOMa);

    v103 = *(v129 + 8);
    goto LABEL_36;
  }

  v85 = v60[17];
  v86 = v84;
  v87 = sub_261CFDF94();
  v88 = type metadata accessor for RecurrentInstanceSpecifier(0);
  (*(*(v88 - 8) + 56))(v85, 1, 1, v88);
  v89 = v123;
  v90 = [v87 listChangeItem];
  if (!v90 || (v91 = v90, v92 = [v90 storage], v91, !v92))
  {
    v97 = v89;
    v98 = v87;
    v99 = v60[37];
    v100 = v60[34];
    v101 = v60[17];

    sub_261B01D70();
    swift_allocError();
    *v102 = 11;
    swift_willThrow();

    sub_261AE6A40(v101, &qword_27FEDA108, &unk_261D020C0);
    sub_261AE6A40(v100, &qword_27FEDAB68, &unk_261D11C90);
    v96 = v99;
    goto LABEL_35;
  }

  v117 = [v87 storage];
  v116 = [v87 accountCapabilities];
  if (v123)
  {
    v124 = [v89 storage];
  }

  else
  {
    v124 = 0;
  }

  v118 = v87;
  v119 = v89;
  aBlock = v92;
  if (v61)
  {
    if (v61 >> 62)
    {
      v105 = sub_261D00274();
      if (v105)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v105 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v105)
      {
LABEL_43:
        v130[0] = MEMORY[0x277D84F90];
        sub_261D003A4();
        if (v105 < 0)
        {
          __break(1u);
        }

        v106 = 0;
        do
        {
          if ((v61 & 0xC000000000000001) != 0)
          {
            v107 = MEMORY[0x26671CA10](v106, v61);
          }

          else
          {
            v107 = *(v61 + 8 * v106 + 32);
          }

          v108 = v107;
          ++v106;
          v109 = [v107 storage];

          sub_261D00374();
          sub_261D003B4();
          sub_261D003C4();
          sub_261D00384();
        }

        while (v105 != v106);

        v110 = v130[0];
        v60 = v129;
        goto LABEL_53;
      }
    }

    v110 = MEMORY[0x277D84F90];
  }

  else
  {
    v110 = 0;
  }

LABEL_53:
  v115 = v60[37];
  v114 = v60[34];
  v111 = v60[20];
  v112 = v60[17];
  v113 = v60[16];
  sub_261AFB668(v112, v113, &qword_27FEDA108, &unk_261D020C0);
  sub_261C7EDC4(v117, aBlock, v116, v124, v110, v113, v111);

  sub_261AE6A40(v112, &qword_27FEDA108, &unk_261D020C0);
  sub_261B57AE8(&qword_280D22350, type metadata accessor for ReminderEntity, &protocol conformance descriptor for ReminderEntity);
  sub_261CFC994();

  sub_261B57A3C(v111, type metadata accessor for ReminderEntity);
  sub_261AE6A40(v114, &qword_27FEDAB68, &unk_261D11C90);
  sub_261B57A3C(v115, _s20CategorizedRemindersV12EditableItemOMa);

  v103 = v60[1];
LABEL_36:

  return v103();
}

id sub_261B556E0(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAB68, &unk_261D11C90);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  v7 = *(a1 + 32);
  sub_261CFCDA4();
  v8 = a2;
  v7();

  v9 = sub_261CFD7E4();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 48))(v6, 1, v9);
  v12 = 0;
  if (v11 != 1)
  {
    v13 = sub_261CFD794();
    (*(v10 + 8))(v6, v9);
    v12 = v13;
  }

  return v12;
}

uint64_t sub_261B55830(uint64_t a1, _OWORD *a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_261AF43A8;

  return REMStoreIntentPerformer.perform(_:)(a1, a2);
}

uint64_t sub_261B558DC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAB78, &unk_261D099C0);
    v2 = sub_261D00304();
    v15 = v2;
    sub_261D00234();
    if (sub_261D002A4())
    {
      sub_261B57A9C();
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_261B9CBD8(v9 + 1);
        }

        v2 = v15;
        result = sub_261D000E4();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_261D002A4());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_261B55ABC(unint64_t a1, uint64_t a2)
{
  v2 = a2;
  v53[2] = *MEMORY[0x277D85DE8];
  if (*(a2 + 16))
  {
    v53[0] = a1;
    v44 = a1 >> 62;
    if (a1 >> 62)
    {
LABEL_47:
      v35 = a1;
      v3 = sub_261D00274();
      a1 = v35;
    }

    else
    {
      v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v49 = a1;
    a1 = sub_261CFD104();
    if (v3)
    {
      v4 = 0;
      v50 = v49 & 0xC000000000000001;
      v48 = v49 & 0xFFFFFFFFFFFFFF8;
      v46 = v49 + 32;
      v52 = (v2 + 56);
      while (1)
      {
        if (v50)
        {
          a1 = MEMORY[0x26671CA10](v4, v49);
        }

        else
        {
          if (v4 >= *(v48 + 16))
          {
            goto LABEL_46;
          }

          a1 = *(v46 + 8 * v4);
        }

        v51 = a1;
        v5 = __OFADD__(v4++, 1);
        if (v5)
        {
          goto LABEL_45;
        }

        v6 = sub_261D000E4();
        v7 = -1 << *(v2 + 32);
        v8 = v6 & ~v7;
        v9 = v8 >> 6;
        v10 = 1 << v8;
        if (((1 << v8) & v52[v8 >> 6]) != 0)
        {
          break;
        }

LABEL_6:

        if (v4 == v3)
        {
          goto LABEL_40;
        }
      }

      v11 = ~v7;
      sub_261B57A9C();
      while (1)
      {
        v12 = *(*(v2 + 48) + 8 * v8);
        v13 = sub_261D000F4();

        if (v13)
        {
          break;
        }

        v8 = (v8 + 1) & v11;
        v9 = v8 >> 6;
        v10 = 1 << v8;
        if (((1 << v8) & v52[v8 >> 6]) == 0)
        {
          goto LABEL_6;
        }
      }

      v53[1] = v4;

      v15 = *(v2 + 32);
      v16 = v15 & 0x3F;
      v17 = ((1 << v15) + 63) >> 6;
      v42 = v17;
      if (v16 <= 0xD)
      {
LABEL_19:
        v43 = &v41;
        MEMORY[0x28223BE20](v14);
        v19 = &v41 - ((v18 + 15) & 0x3FFFFFFFFFFFFFF0);
        a1 = memcpy(v19, v52, v18);
        v20 = *(v2 + 16);
        v21 = *&v19[8 * v9] & ~v10;
        v47 = v19;
        *&v19[8 * v9] = v21;
        v45 = v20 - 1;
        if (v44)
        {
          a1 = sub_261D00274();
          v51 = a1;
        }

        else
        {
          v51 = *(v48 + 16);
        }

        while (1)
        {
          if (v4 == v51)
          {
            v2 = sub_261B571E0(v47, v42, v45, v2);
            goto LABEL_40;
          }

          if (v50)
          {
            a1 = MEMORY[0x26671CA10](v4, v49);
          }

          else
          {
            if ((v4 & 0x8000000000000000) != 0)
            {
              goto LABEL_43;
            }

            if (v4 >= *(v48 + 16))
            {
              goto LABEL_44;
            }

            a1 = *(v46 + 8 * v4);
          }

          v22 = a1;
          v5 = __OFADD__(v4++, 1);
          if (v5)
          {
            break;
          }

          v23 = sub_261D000E4();
          v24 = v2;
          v25 = -1 << *(v2 + 32);
          v26 = v23 & ~v25;
          v27 = v26 >> 6;
          v28 = 1 << v26;
          if (((1 << v26) & v52[v26 >> 6]) != 0)
          {
            v29 = ~v25;
            while (1)
            {
              v30 = *(*(v24 + 48) + 8 * v26);
              v31 = sub_261D000F4();

              if (v31)
              {
                break;
              }

              v26 = (v26 + 1) & v29;
              v27 = v26 >> 6;
              v28 = 1 << v26;
              if (((1 << v26) & v52[v26 >> 6]) == 0)
              {
                goto LABEL_22;
              }
            }

            v32 = v47[v27];
            v47[v27] = v32 & ~v28;
            v2 = v24;
            if ((v32 & v28) != 0)
            {
              v33 = v45 - 1;
              if (__OFSUB__(v45, 1))
              {
                __break(1u);
              }

              --v45;
              if (!v33)
              {

                v2 = MEMORY[0x277D84FA0];
                goto LABEL_40;
              }
            }
          }

          else
          {
LABEL_22:

            v2 = v24;
          }
        }

        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

      v36 = 8 * v17;
      sub_261CFCDA4();
      v37 = v2;
      v38 = v36;
      if (swift_stdlib_isStackAllocationSafe())
      {

        v2 = v37;
        goto LABEL_19;
      }

      v39 = swift_slowAlloc();
      memcpy(v39, v52, v38);
      sub_261B56AF4(v39, v42, v37, v8, v53);
      v2 = v40;

      MEMORY[0x26671D560](v39, -1, -1);
    }

LABEL_40:
  }

  else
  {

    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_261B55F8C(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v66 = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v53 = 0;
  v7 = a1 + 56;
  v6 = *(a1 + 56);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v57 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v6;
  v12 = (63 - v9) >> 6;
  v61 = (a2 + 56);
  v13 = sub_261CFD104();
  v15 = 0;
  v59 = v13;
  if (!v11)
  {
LABEL_6:
    v16 = v15;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_56;
      }

      if (v17 >= v12)
      {
        goto LABEL_53;
      }

      v11 = *(v7 + 8 * v17);
      ++v16;
      if (v11)
      {
        v15 = v17;
        break;
      }
    }
  }

  while (1)
  {
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = *(v13 + 48);
    v60 = v15;
    v20 = (v19 + ((v15 << 10) | (16 * v18)));
    v22 = *v20;
    v21 = v20[1];
    sub_261D006C4();
    sub_261CFD104();
    sub_261CFFB14();
    v23 = sub_261D006F4();
    v24 = -1 << *(v5 + 32);
    v2 = v23 & ~v24;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v61[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:

    v13 = v59;
    v15 = v60;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v3 = ~v24;
  while (1)
  {
    v25 = (*(v5 + 48) + 16 * v2);
    v26 = *v25 == v22 && v25[1] == v21;
    if (v26 || (sub_261D00614() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v3;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v61[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v3 = v59;
  v27 = v60;
  v63 = v57;
  v64 = v60;
  v65 = v11;
  v62[0] = v59;
  v62[1] = v7;

  v29 = *(v5 + 32);
  v54 = ((1 << v29) + 63) >> 6;
  v14 = 8 * v54;
  if ((v29 & 0x3Fu) > 0xD)
  {
    goto LABEL_57;
  }

  while (1)
  {
    v55 = &v53;
    MEMORY[0x28223BE20](v28);
    v2 = &v53 - ((v30 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v61, v30);
    v31 = *(v2 + 8 * v8) & ~v4;
    v32 = *(v5 + 16);
    v58 = v2;
    *(v2 + 8 * v8) = v31;
    v33 = v32 - 1;
LABEL_23:
    v56 = v33;
    if (v11)
    {
      goto LABEL_33;
    }

LABEL_28:
    v35 = v27;
    while (1)
    {
      v36 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v36 >= v12)
      {
        v5 = sub_261B573D4(v58, v54, v56, v5);
        goto LABEL_51;
      }

      v11 = *(v7 + 8 * v36);
      ++v35;
      if (v11)
      {
        v27 = v36;
        while (1)
        {
LABEL_33:
          while (1)
          {
            v37 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v38 = *(v3 + 48);
            v60 = v27;
            v39 = (v38 + ((v27 << 10) | (16 * v37)));
            v40 = *v39;
            v4 = v39[1];
            sub_261D006C4();
            sub_261CFD104();
            sub_261CFFB14();
            v41 = sub_261D006F4();
            v42 = -1 << *(v5 + 32);
            v8 = v41 & ~v42;
            v2 = v8 >> 6;
            v43 = 1 << v8;
            if (((1 << v8) & v61[v8 >> 6]) != 0)
            {
              break;
            }

LABEL_45:

            v27 = v60;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v44 = (*(v5 + 48) + 16 * v8);
          if (*v44 != v40 || v44[1] != v4)
          {
            v46 = ~v42;
            while ((sub_261D00614() & 1) == 0)
            {
              v8 = (v8 + 1) & v46;
              v2 = v8 >> 6;
              v43 = 1 << v8;
              if (((1 << v8) & v61[v8 >> 6]) == 0)
              {
                v3 = v59;
                goto LABEL_45;
              }

              v47 = (*(v5 + 48) + 16 * v8);
              if (*v47 == v40 && v47[1] == v4)
              {
                break;
              }
            }
          }

          v3 = v59;
          v34 = v58[v2];
          v58[v2] = v34 & ~v43;
          v26 = (v34 & v43) == 0;
          v27 = v60;
          if (!v26)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v33 = v56 - 1;
        if (__OFSUB__(v56, 1))
        {
          __break(1u);
        }

        if (v56 == 1)
        {

          v5 = MEMORY[0x277D84FA0];
          goto LABEL_51;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    v49 = v14;
    sub_261CFCDA4();
    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v27 = v60;
  }

  v50 = swift_slowAlloc();
  memcpy(v50, v61, v49);
  v51 = v53;
  v52 = sub_261B56D24(v50, v54, v5, v2, v62);

  if (!v51)
  {

    MEMORY[0x26671D560](v50, -1, -1);
    v3 = v62[0];
    v57 = v63;
    v5 = v52;
LABEL_51:
    v13 = v3;
LABEL_53:
    sub_261AE6F74(v13);
    return v5;
  }

  result = MEMORY[0x26671D560](v50, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_261B564FC(unint64_t a1, uint64_t a2)
{
  v3 = a2;
  v77 = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = sub_261D00424();
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = v4 | 0x8000000000000000;
  }

  else
  {
    v9 = -1 << *(a1 + 32);
    v6 = ~v9;
    v5 = a1 + 64;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v7 = v11 & *(a1 + 64);
    v8 = a1;
  }

  v72 = v8;
  v73 = v5;
  v64 = v5;
  v74 = v6;
  v75 = 0;
  v12 = (v6 + 64) >> 6;
  v69 = (v3 + 56);
  v76 = v7;
  sub_261CFD104();
  v14 = 0;
  v63 = v6;
  v66 = v12;
  v67 = v8;
  v68 = v3;
  while (1)
  {
    if ((v8 & 0x8000000000000000) != 0)
    {
      v24 = sub_261D004C4();
      if (!v24)
      {
        goto LABEL_66;
      }

      v70 = v24;
      sub_261B57A9C();
      swift_dynamicCast();
      v22 = v71;
      if (!v71)
      {
        goto LABEL_66;
      }
    }

    else
    {
      v15 = v7;
      v16 = v14;
      if (v7)
      {
LABEL_20:
        v21 = (v15 - 1) & v15;
        v22 = *(*(v8 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));
        v23 = v22;
        v18 = v16;
        v20 = v64;
      }

      else
      {
        if (v12 <= v14 + 1)
        {
          v17 = v14 + 1;
        }

        else
        {
          v17 = v12;
        }

        v18 = v17 - 1;
        v19 = v14;
        v20 = v64;
        while (1)
        {
          v16 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            goto LABEL_68;
          }

          if (v16 >= v12)
          {
            break;
          }

          v15 = *(v64 + 8 * v16);
          ++v19;
          if (v15)
          {
            goto LABEL_20;
          }
        }

        v22 = 0;
        v21 = 0;
      }

      v72 = v8;
      v73 = v20;
      v74 = v6;
      v75 = v18;
      v76 = v21;
      if (!v22)
      {
LABEL_66:
        v53 = v8;
        goto LABEL_64;
      }

      v7 = v21;
      v14 = v18;
    }

    v25 = sub_261D000E4();
    v26 = -1 << *(v3 + 32);
    v6 = v25 & ~v26;
    v8 = v6 >> 6;
    v2 = 1 << v6;
    if (((1 << v6) & v69[v6 >> 6]) != 0)
    {
      break;
    }

LABEL_10:

    v6 = v63;
    v12 = v66;
    v8 = v67;
  }

  v27 = ~v26;
  sub_261B57A9C();
  while (1)
  {
    v28 = *(*(v3 + 48) + 8 * v6);
    v29 = sub_261D000F4();

    if (v29)
    {
      break;
    }

    v6 = (v6 + 1) & v27;
    v8 = v6 >> 6;
    v3 = v68;
    v2 = 1 << v6;
    if (((1 << v6) & v69[v6 >> 6]) == 0)
    {
      goto LABEL_10;
    }
  }

  v3 = v68;

  v31 = *(v68 + 32);
  v61[0] = ((1 << v31) + 63) >> 6;
  v13 = 8 * v61[0];
  if ((v31 & 0x3Fu) > 0xD)
  {
    goto LABEL_69;
  }

  while (2)
  {
    v61[1] = v61;
    MEMORY[0x28223BE20](v30);
    v33 = v61 - ((v32 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v33, v69, v32);
    v34 = *&v33[8 * v8] & ~v2;
    v35 = *(v3 + 16);
    v62 = v33;
    *&v33[8 * v8] = v34;
    v8 = v35 - 1;
    v36 = v66;
    v37 = v67;
LABEL_33:
    v65 = v8;
    while ((v37 & 0x8000000000000000) != 0)
    {
      v39 = sub_261D004C4();
      if (!v39)
      {
        goto LABEL_62;
      }

      v70 = v39;
      swift_dynamicCast();
      v6 = v71;
      if (!v71)
      {
        goto LABEL_62;
      }

LABEL_51:
      v45 = sub_261D000E4();
      v46 = -1 << *(v3 + 32);
      v47 = v45 & ~v46;
      v48 = v47 >> 6;
      v2 = 1 << v47;
      if (((1 << v47) & v69[v47 >> 6]) != 0)
      {
        v49 = ~v46;
        while (1)
        {
          v50 = *(*(v3 + 48) + 8 * v47);
          v51 = sub_261D000F4();

          if (v51)
          {
            break;
          }

          v47 = (v47 + 1) & v49;
          v48 = v47 >> 6;
          v3 = v68;
          v2 = 1 << v47;
          if (((1 << v47) & v69[v47 >> 6]) == 0)
          {
            goto LABEL_34;
          }
        }

        v52 = v62[v48];
        v62[v48] = v52 & ~v2;
        v37 = v67;
        v3 = v68;
        v8 = v65;
        v36 = v66;
        if ((v52 & v2) != 0)
        {
          v8 = v65 - 1;
          if (__OFSUB__(v65, 1))
          {
            __break(1u);
          }

          if (v65 == 1)
          {

            v3 = MEMORY[0x277D84FA0];
            goto LABEL_63;
          }

          goto LABEL_33;
        }
      }

      else
      {
LABEL_34:

        v36 = v66;
        v37 = v67;
        v8 = v65;
      }
    }

    if (v7)
    {
      v38 = v14;
LABEL_48:
      v43 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v6 = *(*(v37 + 48) + ((v38 << 9) | (8 * v43)));
      v44 = v6;
      v41 = v38;
      v42 = v64;
LABEL_49:
      v72 = v37;
      v73 = v42;
      v74 = v63;
      v75 = v41;
      v76 = v7;
      if (!v6)
      {
LABEL_62:
        v3 = sub_261B571E0(v62, v61[0], v8, v3);
        goto LABEL_63;
      }

      v14 = v41;
      goto LABEL_51;
    }

    if (v36 <= v14 + 1)
    {
      v40 = v14 + 1;
    }

    else
    {
      v40 = v36;
    }

    v41 = v40 - 1;
    v42 = v64;
    while (1)
    {
      v38 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v38 >= v36)
      {
        v6 = 0;
        v7 = 0;
        goto LABEL_49;
      }

      v7 = *(v64 + 8 * v38);
      ++v14;
      if (v7)
      {
        goto LABEL_48;
      }
    }

    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    v55 = v13;
    sub_261CFCDA4();
    v56 = v55;
    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v57 = swift_slowAlloc();
  memcpy(v57, v69, v56);
  sub_261B56F5C(v57, v61[0], v3, v6, &v72, v58);
  v60 = v59;

  MEMORY[0x26671D560](v57, -1, -1);
  v3 = v60;
LABEL_63:
  v53 = v72;
LABEL_64:
  sub_261AE6F74(v53);
  return v3;
}

void sub_261B56AF4(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5)
{
  v5 = a5;
  v7 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v29 = a3 + 56;
  while (2)
  {
    v26 = v8;
    do
    {
      while (1)
      {
        if (*v5 >> 62)
        {
          v9 = sub_261D00274();
        }

        else
        {
          v9 = *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v10 = v5[1];
        if (v10 == v9)
        {
          sub_261CFCDA4();
          sub_261B571E0(a1, a2, v26, a3);
          return;
        }

        v11 = *v5;
        if ((*v5 & 0xC000000000000001) != 0)
        {
          v12 = MEMORY[0x26671CA10](v5[1]);
        }

        else
        {
          if ((v10 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_26:
            __break(1u);
LABEL_27:
            __break(1u);
LABEL_28:
            __break(1u);
            return;
          }

          if (v10 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_27;
          }

          v12 = *(v11 + 8 * v10 + 32);
        }

        v13 = v12;
        if (__OFADD__(v10, 1))
        {
          goto LABEL_26;
        }

        v5[1] = v10 + 1;
        v14 = sub_261D000E4();
        v15 = -1 << *(a3 + 32);
        v16 = v14 & ~v15;
        v17 = v16 >> 6;
        v18 = 1 << v16;
        if (((1 << v16) & *(v29 + 8 * (v16 >> 6))) != 0)
        {
          break;
        }

LABEL_3:

        v5 = a5;
      }

      sub_261B57A9C();
      v19 = *(*(a3 + 48) + 8 * v16);
      v20 = sub_261D000F4();

      if ((v20 & 1) == 0)
      {
        v21 = ~v15;
        do
        {
          v16 = (v16 + 1) & v21;
          v17 = v16 >> 6;
          v18 = 1 << v16;
          if (((1 << v16) & *(v29 + 8 * (v16 >> 6))) == 0)
          {
            goto LABEL_3;
          }

          v22 = *(*(a3 + 48) + 8 * v16);
          v23 = sub_261D000F4();
        }

        while ((v23 & 1) == 0);
      }

      v5 = a5;

      v24 = a1[v17];
      a1[v17] = v24 & ~v18;
    }

    while ((v24 & v18) == 0);
    v8 = v26 - 1;
    if (__OFSUB__(v26, 1))
    {
      goto LABEL_28;
    }

    if (v26 != 1)
    {
      continue;
    }

    break;
  }
}

unint64_t *sub_261B56D24(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v31 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v30 = v8;
    do
    {
      while (1)
      {
        v11 = a5[3];
        v12 = a5[4];
        if (!v12)
        {
          v14 = (a5[2] + 64) >> 6;
          v15 = a5[3];
          while (1)
          {
            v13 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              __break(1u);
              goto LABEL_30;
            }

            if (v13 >= v14)
            {
              break;
            }

            v12 = *(a5[1] + 8 * v13);
            ++v15;
            if (v12)
            {
              goto LABEL_10;
            }
          }

          if (v14 <= v11 + 1)
          {
            v28 = v11 + 1;
          }

          else
          {
            v28 = (a5[2] + 64) >> 6;
          }

          a5[3] = v28 - 1;
          a5[4] = 0;
          sub_261CFCDA4();
          return sub_261B573D4(v31, a2, v30, a3);
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        sub_261D006C4();
        sub_261CFD104();
        sub_261CFFB14();
        v19 = sub_261D006F4();
        v20 = -1 << *(a3 + 32);
        v21 = v19 & ~v20;
        v22 = v21 >> 6;
        v23 = 1 << v21;
        if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) != 0)
        {
          break;
        }

LABEL_21:
      }

      v24 = (*(a3 + 48) + 16 * v21);
      if (*v24 != v18 || v24[1] != v17)
      {
        v26 = ~v20;
        while ((sub_261D00614() & 1) == 0)
        {
          v21 = (v21 + 1) & v26;
          v22 = v21 >> 6;
          v23 = 1 << v21;
          if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) == 0)
          {
            goto LABEL_21;
          }

          v27 = (*(a3 + 48) + 16 * v21);
          if (*v27 == v18 && v27[1] == v17)
          {
            break;
          }
        }
      }

      v10 = v31[v22];
      v31[v22] = v10 & ~v23;
    }

    while ((v10 & v23) == 0);
    v8 = v30 - 1;
    if (__OFSUB__(v30, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      if (v30 != 1)
      {
        continue;
      }

      return MEMORY[0x277D84FA0];
    }

    return result;
  }
}

void sub_261B56F5C(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5, __n128 a6)
{
  v6 = a5;
  v8 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v9 = v8 - 1;
  v34 = a3 + 56;
  while (2)
  {
    v31 = v9;
    do
    {
      while (1)
      {
        if ((*v6 & 0x8000000000000000) != 0)
        {
          if (!sub_261D004C4())
          {
            goto LABEL_29;
          }

          sub_261B57A9C();
          swift_dynamicCast();
          v13 = v35;
          if (!v35)
          {
            goto LABEL_29;
          }
        }

        else
        {
          v10 = v6[3];
          v11 = v6[4];
          if (!v11)
          {
            v14 = (v6[2] + 64) >> 6;
            if (v14 <= v10 + 1)
            {
              v15 = v10 + 1;
            }

            else
            {
              v15 = (v6[2] + 64) >> 6;
            }

            v16 = v15 - 1;
            while (1)
            {
              v12 = v10 + 1;
              if (__OFADD__(v10, 1))
              {
                break;
              }

              if (v12 >= v14)
              {
                v6[3] = v16;
                v6[4] = 0;
                goto LABEL_29;
              }

              v11 = *(v6[1] + 8 * v12);
              ++v10;
              if (v11)
              {
                goto LABEL_17;
              }
            }

            __break(1u);
            goto LABEL_31;
          }

          v12 = v6[3];
LABEL_17:
          v17 = (v11 - 1) & v11;
          v13 = *(*(*v6 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v11)))));
          v18 = v13;
          v6[3] = v12;
          v6[4] = v17;
          if (!v13)
          {
LABEL_29:
            sub_261CFCDA4();
            sub_261B571E0(a1, a2, v31, a3);
            return;
          }
        }

        v19 = sub_261D000E4();
        v20 = -1 << *(a3 + 32);
        v21 = v19 & ~v20;
        v22 = v21 >> 6;
        v23 = 1 << v21;
        if (((1 << v21) & *(v34 + 8 * (v21 >> 6))) == 0)
        {
          goto LABEL_3;
        }

        sub_261B57A9C();
        v24 = *(*(a3 + 48) + 8 * v21);
        v25 = sub_261D000F4();

        if (v25)
        {
          break;
        }

        v26 = ~v20;
        while (1)
        {
          v21 = (v21 + 1) & v26;
          v22 = v21 >> 6;
          v23 = 1 << v21;
          if (((1 << v21) & *(v34 + 8 * (v21 >> 6))) == 0)
          {
            break;
          }

          v27 = *(*(a3 + 48) + 8 * v21);
          v28 = sub_261D000F4();

          if (v28)
          {
            goto LABEL_23;
          }
        }

LABEL_3:

        v6 = a5;
      }

LABEL_23:
      v6 = a5;

      v29 = a1[v22];
      a1[v22] = v29 & ~v23;
    }

    while ((v29 & v23) == 0);
    v9 = v31 - 1;
    if (__OFSUB__(v31, 1))
    {
LABEL_31:
      __break(1u);
      return;
    }

    if (v31 != 1)
    {
      continue;
    }

    break;
  }
}

uint64_t sub_261B571E0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAB78, &unk_261D099C0);
  result = sub_261D00314();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    result = sub_261D000E4();
    v17 = -1 << *(v9 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 48) + 8 * v20) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_261B573D4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAB70, &unk_261D05AA0);
  result = sub_261D00314();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_261D006C4();
    sub_261CFD104();
    sub_261CFFB14();
    result = sub_261D006F4();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_261B575F8(uint64_t a1, uint64_t a2)
{
  v4 = _s20CategorizedRemindersV12EditableItemOMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_261B5765C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_261CFD7E4();
  v6 = *(v3 - 8);
  (*(v6 + 16))(a1, v1 + ((*(v6 + 80) + 16) & ~*(v6 + 80)), v3);
  v4 = *(v6 + 56);

  return v4(a1, 0, 1, v3);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_261CFCDA4();
}

void sub_261B57750(uint64_t a1, void *a2)
{
  v2 = a1;
  v23 = MEMORY[0x277D84F90];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_261D00234();
    sub_261B57A9C();
    sub_261B57AE8(&qword_27FEDA570, sub_261B57A9C, MEMORY[0x277D85378]);
    sub_261CFFDA4();
    v2 = v18;
    v3 = v19;
    v4 = v20;
    v5 = v21;
    v6 = v22;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
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

    v6 = v9 & *(a1 + 56);
    sub_261CFD104();
    v5 = 0;
  }

LABEL_7:
  v10 = v5;
  v11 = v6;
  while (1)
  {
    if (v2 < 0)
    {
      if (!sub_261D002A4() || (sub_261B57A9C(), swift_dynamicCast(), v14 = v17, v5 = v10, v6 = v11, !v17))
      {
LABEL_21:
        sub_261AE6F74(v2);
        return;
      }

      goto LABEL_17;
    }

    v12 = v10;
    v13 = v11;
    v5 = v10;
    if (!v11)
    {
      break;
    }

LABEL_13:
    v6 = (v13 - 1) & v13;
    v14 = *(*(v2 + 48) + ((v5 << 9) | (8 * __clz(__rbit64(v13)))));
    if (!v14)
    {
      goto LABEL_21;
    }

LABEL_17:
    v15 = [a2 _trackedReminderChangeItemForObjectID_];

    v10 = v5;
    v11 = v6;
    if (v15)
    {
      MEMORY[0x26671C310]();
      if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_261CFFC84();
      }

      sub_261CFFCB4();
      goto LABEL_7;
    }
  }

  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= ((v4 + 64) >> 6))
    {
      goto LABEL_21;
    }

    v13 = *(v3 + 8 * v5);
    ++v12;
    if (v13)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t sub_261B579D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_261B57A3C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_261B57A9C()
{
  result = qword_280D21DF0;
  if (!qword_280D21DF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280D21DF0);
  }

  return result;
}

uint64_t sub_261B57AE8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_261B57B34()
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
  __swift_allocate_value_buffer(v6, qword_27FEDAB80);
  __swift_project_value_buffer(v6, qword_27FEDAB80);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v1 + 104))(v3, *MEMORY[0x277CC9110], v0);
  return sub_261CFD6C4();
}

uint64_t static UpdateListIsPinnedAppIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED9890 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD6A4();
  v3 = __swift_project_value_buffer(v2, qword_27FEDAB80);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static UpdateListIsPinnedAppIntent.description.getter@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_261B580DC(uint64_t a1, uint64_t *a2)
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

uint64_t UpdateListIsPinnedAppIntent.entity.setter(uint64_t a1)
{
  v2 = type metadata accessor for ListEntity(0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_261B0A18C(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_261CFCBC4();
  return sub_261B0A1F0(a1);
}

uint64_t (*UpdateListIsPinnedAppIntent.entity.modify(uint64_t *a1))()
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

void *sub_261B58334@<X0>(_BYTE *a1@<X8>)
{
  result = sub_261CFCBB4();
  *a1 = v3;
  return result;
}

uint64_t (*UpdateListIsPinnedAppIntent.property.modify(uint64_t *a1))()
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

uint64_t sub_261B5843C()
{
  result = swift_getKeyPath();
  qword_27FEDAB98 = result;
  return result;
}

uint64_t static UpdateListIsPinnedAppIntent.binding.getter()
{
  if (qword_27FED9898 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return sub_261CFCDA4();
}

uint64_t static UpdateListIsPinnedAppIntent.binding.setter(uint64_t a1)
{
  if (qword_27FED9898 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27FEDAB98 = a1;
}

uint64_t (*static UpdateListIsPinnedAppIntent.binding.modify(uint64_t a1))(void)
{
  if (qword_27FED9898 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_261B585E4@<X0>(void *a1@<X8>)
{
  if (qword_27FED9898 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_27FEDAB98;
  return sub_261CFCDA4();
}

uint64_t sub_261B58664(uint64_t *a1)
{
  v1 = *a1;
  v2 = qword_27FED9898;
  sub_261CFCDA4();
  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27FEDAB98 = v1;
}

uint64_t UpdateListIsPinnedAppIntent.init()@<X0>(uint64_t *a1@<X8>)
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
  v46 = v19;
  v64 = *(v19 - 8);
  v20 = MEMORY[0x28223BE20](v19);
  v57 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v56 = &v42 - v23;
  MEMORY[0x28223BE20](v22);
  v59 = &v42 - v24;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA298, &qword_261D02530);
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
  v47 = v28;
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
  v47(v34, 0, 1, v46);
  LOBYTE(v67[0]) = 1;
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

uint64_t UpdateListIsPinnedAppIntent.perform()(uint64_t a1)
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

  return MEMORY[0x2822009F8](sub_261B593C4, v8, v7);
}

uint64_t sub_261B593C4()
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
  sub_261B12A4C(0, v3, v2, v1);
  *(v0 + 576) = sub_261CFFD14();
  v9 = sub_261CFFCF4();
  *(v0 + 584) = v9;
  *(v0 + 592) = v8;

  return MEMORY[0x2822009F8](sub_261B5951C, v9, v8);
}

uint64_t sub_261B5951C()
{
  sub_261B59DEC(v0 + 16, v0 + 240);
  v1 = swift_task_alloc();
  *(v0 + 600) = v1;
  *v1 = v0;
  v1[1] = sub_261B595E4;
  v2 = *(v0 + 480);

  return sub_261C56650(v2, "UpdateListAppIntent", 19, 2, v0 + 16);
}

uint64_t sub_261B595E4()
{
  v2 = *v1;
  *(*v1 + 608) = v0;

  v3 = *(v2 + 592);
  v4 = *(v2 + 584);
  if (v0)
  {
    v5 = sub_261B59CB8;
  }

  else
  {
    v5 = sub_261B59720;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_261B59720()
{

  v1 = *(v0 + 568);
  v2 = *(v0 + 560);

  return MEMORY[0x2822009F8](sub_261B59788, v2, v1);
}

uint64_t sub_261B59788()
{
  v37 = v0;
  v1 = v0[61];
  v2 = v0[62];
  v3 = v0[57];
  v4 = v0[56];

  sub_261B01D28(&qword_27FEDABB0, &qword_27FEDABA8, &qword_261D03840, MEMORY[0x277CBA268]);
  sub_261CFC964();
  sub_261B425D4(v3, v4);
  if ((*(v2 + 48))(v4, 1, v1) == 1)
  {
    v6 = v0[51];
    v5 = v0[52];
    v7 = v0[50];
    sub_261B59E9C(v0[56]);
    sub_261CFD704();
    v8 = sub_261CFD714();
    v10 = v9;
    (*(v6 + 8))(v5, v7);
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
      v36[0] = v15;
      *v14 = 136315650;
      v16 = sub_261B879C8(v8, v10, v36);

      *(v14 + 4) = v16;
      *(v14 + 12) = 2048;
      *(v14 + 14) = 231;
      *(v14 + 22) = 2080;
      *(v14 + 24) = sub_261B879C8(0xD000000000000049, 0x8000000261D188E0, v36);
      _os_log_impl(&dword_261AE2000, v12, v13, "Value is unexpectedly nil {source: %s:%ld, description: %s}", v14, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x26671D560](v15, -1, -1);
      MEMORY[0x26671D560](v14, -1, -1);
    }

    else
    {
    }

    v31 = v0[59];
    v30 = v0[60];
    v33 = v0[57];
    v32 = v0[58];
    sub_261B01D70();
    swift_allocError();
    *v34 = 20;
    swift_willThrow();
    sub_261B59E48((v0 + 2));
    sub_261B59E9C(v33);
    (*(v31 + 8))(v30, v32);

    v29 = v0[1];
  }

  else
  {
    v18 = v0[59];
    v17 = v0[60];
    v20 = v0[57];
    v19 = v0[58];
    sub_261B01E2C(v0[56], v0[63]);
    sub_261B59E9C(v20);
    (*(v18 + 8))(v17, v19);
    if (qword_27FED9A10 != -1)
    {
      swift_once();
    }

    v21 = v0[63];
    v23 = v0[54];
    v22 = v0[55];
    v24 = v0[52];
    v25 = v0[53];
    v26 = v0[50];
    v27 = v0[51];
    v28 = __swift_project_value_buffer(v26, qword_27FEDB8A8);
    (*(v27 + 16))(v24, v28, v26);
    sub_261CFC9E4();
    sub_261B5A458(&qword_280D22790, type metadata accessor for ListEntity, &protocol conformance descriptor for ListEntity);
    sub_261B5A458(&qword_27FEDA3C0, MEMORY[0x277CB9DE0], MEMORY[0x277CB9DD8]);
    sub_261CFC984();
    sub_261B59E48((v0 + 2));
    (*(v23 + 8))(v22, v25);
    sub_261B0A1F0(v21);

    v29 = v0[1];
  }

  return v29();
}

uint64_t sub_261B59CB8()
{

  v1 = *(v0 + 568);
  v2 = *(v0 + 560);

  return MEMORY[0x2822009F8](sub_261B59D20, v2, v1);
}

uint64_t sub_261B59D20()
{

  sub_261B59E48(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_261B59E9C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0C0, &unk_261D02500);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static UpdateListIsPinnedAppIntent.parameterSummary.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDABB8, &qword_261D03848);
  MEMORY[0x28223BE20](v0 - 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDABC0, &qword_261D03850);
  MEMORY[0x28223BE20](v1);
  sub_261B31C90();
  sub_261CFD164();
  sub_261CFD154();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDABC8, &qword_261D03880);
  sub_261CFD144();

  sub_261CFD154();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDABD0, &unk_261D038B0);
  sub_261CFD144();

  sub_261CFD154();
  sub_261CFD174();
  return sub_261CFD124();
}

uint64_t sub_261B5A0E0(uint64_t a1)
{
  v2 = type metadata accessor for ListEntity(0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_261B0A18C(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_261CFCBC4();
  return sub_261B0A1F0(a1);
}

uint64_t (*sub_261B5A170(uint64_t *a1))()
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

uint64_t (*sub_261B5A1E4(uint64_t *a1))()
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

uint64_t sub_261B5A258()
{
  if (qword_27FED9898 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return sub_261CFCDA4();
}

uint64_t sub_261B5A2D0@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED9890 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD6A4();
  v3 = __swift_project_value_buffer(v2, qword_27FEDAB80);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_261B5A380(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_261AF43A8;

  return UpdateListIsPinnedAppIntent.perform()(a1);
}

uint64_t sub_261B5A41C(uint64_t a1)
{
  v2 = sub_261B31C90();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t sub_261B5A458(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_261B5A4EC()
{
  result = qword_280D22C20;
  if (!qword_280D22C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D22C20);
  }

  return result;
}

unint64_t sub_261B5A544()
{
  result = qword_280D22C30;
  if (!qword_280D22C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D22C30);
  }

  return result;
}

uint64_t sub_261B5A5F8()
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
  __swift_allocate_value_buffer(v6, qword_27FEDAC00);
  __swift_project_value_buffer(v6, qword_27FEDAC00);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v1 + 104))(v3, *MEMORY[0x277CC9110], v0);
  return sub_261CFD6C4();
}

uint64_t static UpdateListTypeAppIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED98A0 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD6A4();
  v3 = __swift_project_value_buffer(v2, qword_27FEDAC00);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static UpdateListTypeAppIntent.description.getter@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_261B5ABC4(uint64_t a1, uint64_t *a2)
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

uint64_t UpdateListTypeAppIntent.entity.setter(uint64_t a1)
{
  v2 = type metadata accessor for ListEntity(0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_261B0A18C(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_261CFCBC4();
  return sub_261B0A1F0(a1);
}

uint64_t (*UpdateListTypeAppIntent.entity.modify(uint64_t *a1))()
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

uint64_t sub_261B5AE0C(char *a1, uint64_t *a2)
{
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCBC4();
}

uint64_t (*UpdateListTypeAppIntent.property.modify(uint64_t *a1))()
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

uint64_t sub_261B5AF50()
{
  result = swift_getKeyPath();
  qword_27FEDAC18 = result;
  return result;
}

uint64_t static UpdateListTypeAppIntent.binding.getter()
{
  if (qword_27FED98A8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return sub_261CFCDA4();
}

uint64_t static UpdateListTypeAppIntent.binding.setter(uint64_t a1)
{
  if (qword_27FED98A8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27FEDAC18 = a1;
}

uint64_t (*static UpdateListTypeAppIntent.binding.modify(uint64_t a1))(void)
{
  if (qword_27FED98A8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_261B5B0F8@<X0>(void *a1@<X8>)
{
  if (qword_27FED98A8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_27FEDAC18;
  return sub_261CFCDA4();
}

uint64_t sub_261B5B178(uint64_t *a1)
{
  v1 = *a1;
  v2 = qword_27FED98A8;
  sub_261CFCDA4();
  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27FEDAC18 = v1;
}

uint64_t UpdateListTypeAppIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v57 = a1;
  v56 = sub_261CFD184();
  v58 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v55 = v38 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1E8, &unk_261D02310);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v54 = v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v53 = v38 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0C0, &unk_261D02500);
  MEMORY[0x28223BE20](v6 - 8);
  v51 = v38 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  MEMORY[0x28223BE20](v8 - 8);
  v52 = v38 - v9;
  v10 = sub_261CFD674();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_261CFD884();
  MEMORY[0x28223BE20](v14 - 8);
  v15 = sub_261CFFA44();
  MEMORY[0x28223BE20](v15 - 8);
  v16 = sub_261CFD6A4();
  v49 = v16;
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v38[1] = v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA298, &qword_261D02530);
  sub_261CFF9B4();
  sub_261CFD874();
  v20 = *(v11 + 104);
  v39 = *MEMORY[0x277CC9110];
  v19 = v39;
  v40 = v10;
  v20(v13, v39, v10);
  v41 = v20;
  v42 = v11 + 104;
  sub_261CFD6B4();
  sub_261CFF9B4();
  sub_261CFD874();
  v38[0] = v13;
  v20(v13, v19, v10);
  v21 = v52;
  sub_261CFD6C4();
  v22 = *(v17 + 56);
  v48 = v17 + 56;
  v50 = v22;
  v22(v21, 0, 1, v16);
  v23 = type metadata accessor for ListEntity(0);
  (*(*(v23 - 8) + 56))(v51, 1, 1, v23);
  v24 = sub_261CFC834();
  v25 = *(v24 - 8);
  v26 = *(v25 + 56);
  v43 = v26;
  v44 = v25 + 56;
  v26(v53, 1, 1, v24);
  v26(v54, 1, 1, v24);
  v45 = *MEMORY[0x277CBA308];
  v27 = *(v58 + 104);
  v58 += 104;
  v46 = v27;
  v27(v55);
  sub_261B5A458(&qword_280D227A0, type metadata accessor for ListEntity, &protocol conformance descriptor for ListEntity);
  *v57 = sub_261CFCC34();
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAC20, &unk_261D03A70);
  sub_261CFF9B4();
  sub_261CFD874();
  v28 = v38[0];
  v29 = v39;
  v30 = v40;
  v31 = v41;
  v41(v38[0], v39, v40);
  sub_261CFD6B4();
  sub_261CFF9B4();
  sub_261CFD874();
  v31(v28, v29, v30);
  v32 = v52;
  sub_261CFD6C4();
  v50(v32, 0, 1, v49);
  LOBYTE(v60[0]) = 2;
  v33 = v43;
  v43(v53, 1, 1, v24);
  v33(v54, 1, 1, v24);
  v46(v55, v45, v56);
  sub_261AFF54C();
  v34 = sub_261CFCC04();
  v35 = v57;
  v57[1] = v34;
  *(v35 + 16) = 0;
  v36 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDABA0, &qword_261D03830);
  v59 = 0;
  sub_261AE4630();
  sub_261D002D4();
  sub_261CFC6B4();
  sub_261CFC6A4();
  result = sub_261CFC684();
  v36[3] = result;
  return result;
}

uint64_t UpdateListTypeAppIntent.perform()(uint64_t a1)
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
  *(v2 + 520) = swift_task_alloc();
  *(v2 + 528) = *v1;
  *(v2 + 626) = *(v1 + 16);
  *(v2 + 544) = *(v1 + 24);
  *(v2 + 552) = sub_261CFFD24();
  *(v2 + 560) = sub_261CFFD14();
  v8 = sub_261CFFCF4();
  *(v2 + 568) = v8;
  *(v2 + 576) = v7;

  return MEMORY[0x2822009F8](sub_261B5BD24, v8, v7);
}

uint64_t sub_261B5BD24()
{
  v19 = v0;
  v1 = *(v0 + 520);
  v2 = *(v0 + 488);
  sub_261CFCBB4();
  v3 = *(v1 + *(v2 + 84));
  sub_261B0A1F0(v1);
  if (v3)
  {
    v4 = sub_261D00614();

    if ((v4 & 1) == 0)
    {

      sub_261B01D70();
      swift_allocError();
      *v5 = 30;
      swift_willThrow();

      v6 = *(v0 + 8);

      return v6();
    }
  }

  else
  {
  }

  v8 = *(v0 + 544);
  v9 = *(v0 + 626);
  v10 = *(v0 + 536);
  v11 = *(v0 + 528);
  v12 = *(v0 + 512);
  sub_261CFCBB4();
  sub_261CFC664();
  sub_261B7C4B8(v12, v0 + 352, v18);
  __swift_destroy_boxed_opaque_existential_0((v0 + 352));
  sub_261B0A1F0(v12);
  v13 = v18[5];
  *(v0 + 80) = v18[4];
  *(v0 + 96) = v13;
  *(v0 + 112) = v18[6];
  v14 = v18[1];
  *(v0 + 16) = v18[0];
  *(v0 + 32) = v14;
  v15 = v18[3];
  *(v0 + 48) = v18[2];
  *(v0 + 64) = v15;
  sub_261B59DEC(v0 + 16, v0 + 128);
  sub_261CFCBB4();
  *(v0 + 625) = *(v0 + 624);
  sub_261CFCBC4();
  sub_261B59E48(v0 + 16);
  sub_261B13808(0, v11, v10, v9, v8);
  *(v0 + 584) = sub_261CFFD14();
  v17 = sub_261CFFCF4();
  *(v0 + 592) = v17;
  *(v0 + 600) = v16;

  return MEMORY[0x2822009F8](sub_261B5BFDC, v17, v16);
}

uint64_t sub_261B5BFDC()
{
  sub_261B59DEC(v0 + 16, v0 + 240);
  v1 = swift_task_alloc();
  *(v0 + 608) = v1;
  *v1 = v0;
  v1[1] = sub_261B5C0A4;
  v2 = *(v0 + 480);

  return sub_261C56650(v2, "UpdateListAppIntent", 19, 2, v0 + 16);
}

uint64_t sub_261B5C0A4()
{
  v2 = *v1;
  *(*v1 + 616) = v0;

  v3 = *(v2 + 600);
  v4 = *(v2 + 592);
  if (v0)
  {
    v5 = sub_261B5C75C;
  }

  else
  {
    v5 = sub_261B5C1E0;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_261B5C1E0()
{

  v1 = *(v0 + 576);
  v2 = *(v0 + 568);

  return MEMORY[0x2822009F8](sub_261B5C248, v2, v1);
}

uint64_t sub_261B5C248()
{
  v37 = v0;
  v1 = v0[61];
  v2 = v0[62];
  v3 = v0[57];
  v4 = v0[56];

  sub_261B01D28(&qword_27FEDABB0, &qword_27FEDABA8, &qword_261D03840, MEMORY[0x277CBA268]);
  sub_261CFC964();
  sub_261B425D4(v3, v4);
  if ((*(v2 + 48))(v4, 1, v1) == 1)
  {
    v6 = v0[51];
    v5 = v0[52];
    v7 = v0[50];
    sub_261B59E9C(v0[56]);
    sub_261CFD704();
    v8 = sub_261CFD714();
    v10 = v9;
    (*(v6 + 8))(v5, v7);
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
      v36[0] = v15;
      *v14 = 136315650;
      v16 = sub_261B879C8(v8, v10, v36);

      *(v14 + 4) = v16;
      *(v14 + 12) = 2048;
      *(v14 + 14) = 231;
      *(v14 + 22) = 2080;
      *(v14 + 24) = sub_261B879C8(0xD000000000000049, 0x8000000261D188E0, v36);
      _os_log_impl(&dword_261AE2000, v12, v13, "Value is unexpectedly nil {source: %s:%ld, description: %s}", v14, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x26671D560](v15, -1, -1);
      MEMORY[0x26671D560](v14, -1, -1);
    }

    else
    {
    }

    v27 = v0[59];
    v26 = v0[60];
    v29 = v0[57];
    v28 = v0[58];
    sub_261B01D70();
    swift_allocError();
    *v30 = 20;
    swift_willThrow();
    sub_261B59E48((v0 + 2));
    sub_261B59E9C(v29);
    (*(v27 + 8))(v26, v28);

    v25 = v0[1];
  }

  else
  {
    v17 = v0[63];
    v18 = v0[64];
    v19 = v0[60];
    v21 = v0[58];
    v20 = v0[59];
    v22 = v0[57];
    v23 = v0[54];
    v24 = v0[52];
    v35 = v0[53];
    v32 = v0[55];
    v34 = v0[49];
    sub_261B01E2C(v0[56], v17);
    sub_261B59E9C(v22);
    (*(v20 + 8))(v19, v21);
    sub_261CFCBB4();
    sub_261BBF268(v24, v32, v34);
    sub_261B0A1F0(v18);
    sub_261CFC9E4();
    sub_261B5A458(&qword_280D22790, type metadata accessor for ListEntity, &protocol conformance descriptor for ListEntity);
    sub_261B5A458(&qword_27FEDA3C0, MEMORY[0x277CB9DE0], MEMORY[0x277CB9DD8]);
    sub_261CFC984();
    sub_261B59E48((v0 + 2));
    (*(v23 + 8))(v33, v35);
    sub_261B0A1F0(v17);

    v25 = v0[1];
  }

  return v25();
}

uint64_t sub_261B5C75C()
{

  v1 = *(v0 + 576);
  v2 = *(v0 + 568);

  return MEMORY[0x2822009F8](sub_261B5C7C4, v2, v1);
}

uint64_t sub_261B5C7C4()
{

  sub_261B59E48(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t static UpdateListTypeAppIntent.parameterSummary.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAC28, &qword_261D03A90);
  MEMORY[0x28223BE20](v0 - 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAC30, &qword_261D03A98);
  MEMORY[0x28223BE20](v1);
  sub_261B31C3C();
  sub_261CFD164();
  sub_261CFD154();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAC38, &qword_261D03AC8);
  sub_261CFD144();

  sub_261CFD154();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAC40, &qword_261D03AF8);
  sub_261CFD144();

  sub_261CFD154();
  sub_261CFD174();
  return sub_261CFD124();
}

uint64_t sub_261B5CA8C(uint64_t a1)
{
  v2 = type metadata accessor for ListEntity(0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_261B0A18C(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_261CFCBC4();
  return sub_261B0A1F0(a1);
}

uint64_t (*sub_261B5CB1C(uint64_t *a1))()
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

uint64_t (*sub_261B5CBB4(uint64_t *a1))()
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

uint64_t sub_261B5CC28()
{
  if (qword_27FED98A8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return sub_261CFCDA4();
}

uint64_t sub_261B5CCA0@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED98A0 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD6A4();
  v3 = __swift_project_value_buffer(v2, qword_27FEDAC00);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_261B5CD50(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_261AF43A8;

  return UpdateListTypeAppIntent.perform()(a1);
}

uint64_t sub_261B5CDEC(uint64_t a1)
{
  v2 = sub_261B31C3C();

  return MEMORY[0x28210B538](a1, v2);
}

unint64_t sub_261B5CE74()
{
  result = qword_280D22C80;
  if (!qword_280D22C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D22C80);
  }

  return result;
}

unint64_t sub_261B5CECC()
{
  result = qword_280D22C90;
  if (!qword_280D22C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D22C90);
  }

  return result;
}

uint64_t destroy for UpdateListTypeAppIntent(void *a1)
{
}

uint64_t initializeWithCopy for UpdateListTypeAppIntent(uint64_t a1, uint64_t *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = a2[3];
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  return a1;
}

uint64_t *assignWithCopy for UpdateListTypeAppIntent(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;
  sub_261CFCDA4();

  a1[1] = a2[1];
  sub_261CFCDA4();

  *(a1 + 16) = *(a2 + 16);
  a1[3] = a2[3];
  sub_261CFCDA4();

  return a1;
}

uint64_t assignWithTake for UpdateListTypeAppIntent(uint64_t a1, uint64_t a2)
{

  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  return a1;
}

uint64_t sub_261B5D0F4()
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
  __swift_allocate_value_buffer(v6, qword_27FEDAC60);
  __swift_project_value_buffer(v6, qword_27FEDAC60);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v1 + 104))(v3, *MEMORY[0x277CC9110], v0);
  return sub_261CFD6C4();
}

uint64_t static UpdateListSortingStyleAppIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED98B0 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD6A4();
  v3 = __swift_project_value_buffer(v2, qword_27FEDAC60);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static UpdateListSortingStyleAppIntent.description.getter@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_261B5D69C(uint64_t a1, uint64_t *a2)
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

uint64_t UpdateListSortingStyleAppIntent.entity.setter(uint64_t a1)
{
  v2 = type metadata accessor for ListEntity(0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_261B0A18C(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_261CFCBC4();
  return sub_261B0A1F0(a1);
}

uint64_t (*UpdateListSortingStyleAppIntent.entity.modify(uint64_t *a1))()
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

uint64_t (*UpdateListSortingStyleAppIntent.property.modify(uint64_t *a1))()
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

uint64_t sub_261B5D9B4()
{
  result = swift_getKeyPath();
  qword_27FEDAC78 = result;
  return result;
}

uint64_t static UpdateListSortingStyleAppIntent.binding.getter()
{
  if (qword_27FED98B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return sub_261CFCDA4();
}

uint64_t static UpdateListSortingStyleAppIntent.binding.setter(uint64_t a1)
{
  if (qword_27FED98B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27FEDAC78 = a1;
}

uint64_t (*static UpdateListSortingStyleAppIntent.binding.modify(uint64_t a1))(void)
{
  if (qword_27FED98B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_261B5DB5C@<X0>(void *a1@<X8>)
{
  if (qword_27FED98B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_27FEDAC78;
  return sub_261CFCDA4();
}

uint64_t sub_261B5DBDC(uint64_t *a1)
{
  v1 = *a1;
  v2 = qword_27FED98B8;
  sub_261CFCDA4();
  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27FEDAC78 = v1;
}

uint64_t UpdateListSortingStyleAppIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v56 = a1;
  v55 = sub_261CFD184();
  v57 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v54 = v37 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1E8, &unk_261D02310);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v53 = v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v52 = v37 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0C0, &unk_261D02500);
  MEMORY[0x28223BE20](v6 - 8);
  v50 = v37 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  MEMORY[0x28223BE20](v8 - 8);
  v51 = v37 - v9;
  v10 = sub_261CFD674();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_261CFD884();
  MEMORY[0x28223BE20](v14 - 8);
  v15 = sub_261CFFA44();
  MEMORY[0x28223BE20](v15 - 8);
  v16 = sub_261CFD6A4();
  v48 = v16;
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v37[1] = v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA298, &qword_261D02530);
  sub_261CFF9B4();
  sub_261CFD874();
  v20 = *(v11 + 104);
  v38 = *MEMORY[0x277CC9110];
  v19 = v38;
  v39 = v10;
  v20(v13, v38, v10);
  v41 = v20;
  v40 = v11 + 104;
  sub_261CFD6B4();
  sub_261CFF9B4();
  sub_261CFD874();
  v20(v13, v19, v10);
  v21 = v51;
  sub_261CFD6C4();
  v22 = *(v17 + 56);
  v47 = v17 + 56;
  v49 = v22;
  v22(v21, 0, 1, v16);
  v23 = type metadata accessor for ListEntity(0);
  (*(*(v23 - 8) + 56))(v50, 1, 1, v23);
  v24 = sub_261CFC834();
  v25 = *(v24 - 8);
  v26 = *(v25 + 56);
  v42 = v26;
  v43 = v25 + 56;
  v26(v52, 1, 1, v24);
  v26(v53, 1, 1, v24);
  v44 = *MEMORY[0x277CBA308];
  v27 = *(v57 + 104);
  v57 += 104;
  v45 = v27;
  v27(v54);
  sub_261B5F3AC(&qword_280D227A0, &protocol conformance descriptor for ListEntity);
  *v56 = sub_261CFCC34();
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAC80, &unk_261D03CB0);
  sub_261CFF9B4();
  sub_261CFD874();
  v28 = v38;
  v29 = v39;
  v30 = v41;
  v41(v13, v38, v39);
  sub_261CFD6B4();
  sub_261CFF9B4();
  sub_261CFD874();
  v30(v13, v28, v29);
  v31 = v51;
  sub_261CFD6C4();
  v49(v31, 0, 1, v48);
  LOBYTE(v59[0]) = 10;
  v32 = v42;
  v42(v52, 1, 1, v24);
  v32(v53, 1, 1, v24);
  v45(v54, v44, v55);
  sub_261AFF69C();
  v33 = sub_261CFCC04();
  v34 = v56;
  v56[1] = v33;
  *(v34 + 16) = 0;
  v35 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDABA0, &qword_261D03830);
  v58 = 0;
  sub_261AE4630();
  sub_261D002D4();
  sub_261CFC6B4();
  sub_261CFC6A4();
  result = sub_261CFC684();
  v35[3] = result;
  return result;
}

uint64_t UpdateListSortingStyleAppIntent.perform()(uint64_t a1)
{
  *(v2 + 392) = a1;
  v3 = sub_261CFD754();
  *(v2 + 400) = v3;
  *(v2 + 408) = *(v3 - 8);
  *(v2 + 416) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0C0, &unk_261D02500);
  *(v2 + 424) = swift_task_alloc();
  *(v2 + 432) = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDABA8, &qword_261D03840);
  *(v2 + 440) = v4;
  *(v2 + 448) = *(v4 - 8);
  *(v2 + 456) = swift_task_alloc();
  v5 = type metadata accessor for ListEntity(0);
  *(v2 + 464) = v5;
  *(v2 + 472) = *(v5 - 8);
  *(v2 + 480) = swift_task_alloc();
  *(v2 + 488) = swift_task_alloc();
  *(v2 + 496) = *v1;
  *(v2 + 594) = *(v1 + 16);
  *(v2 + 512) = *(v1 + 24);
  *(v2 + 520) = sub_261CFFD24();
  *(v2 + 528) = sub_261CFFD14();
  v7 = sub_261CFFCF4();
  *(v2 + 536) = v7;
  *(v2 + 544) = v6;

  return MEMORY[0x2822009F8](sub_261B5E714, v7, v6);
}

uint64_t sub_261B5E714()
{
  v13 = v0;
  v1 = *(v0 + 594);
  v3 = *(v0 + 504);
  v2 = *(v0 + 512);
  v5 = *(v0 + 488);
  v4 = *(v0 + 496);
  sub_261CFCBB4();
  sub_261CFC664();
  sub_261B7C4B8(v5, v0 + 352, v12);
  __swift_destroy_boxed_opaque_existential_0((v0 + 352));
  sub_261B0A1F0(v5);
  v6 = v12[5];
  *(v0 + 80) = v12[4];
  *(v0 + 96) = v6;
  *(v0 + 112) = v12[6];
  v7 = v12[1];
  *(v0 + 16) = v12[0];
  *(v0 + 32) = v7;
  v8 = v12[3];
  *(v0 + 48) = v12[2];
  *(v0 + 64) = v8;
  sub_261B59DEC(v0 + 16, v0 + 128);
  sub_261CFCBB4();
  *(v0 + 593) = *(v0 + 592);
  sub_261CFCBC4();
  sub_261B59E48(v0 + 16);
  sub_261B145E0(0, v4, v3, v1, v2);
  *(v0 + 552) = sub_261CFFD14();
  v10 = sub_261CFFCF4();
  *(v0 + 560) = v10;
  *(v0 + 568) = v9;

  return MEMORY[0x2822009F8](sub_261B5E878, v10, v9);
}

uint64_t sub_261B5E878()
{
  sub_261B59DEC(v0 + 16, v0 + 240);
  v1 = swift_task_alloc();
  *(v0 + 576) = v1;
  *v1 = v0;
  v1[1] = sub_261B5E940;
  v2 = *(v0 + 456);

  return sub_261C56650(v2, "UpdateListAppIntent", 19, 2, v0 + 16);
}

uint64_t sub_261B5E940()
{
  v2 = *v1;
  *(*v1 + 584) = v0;

  v3 = *(v2 + 568);
  v4 = *(v2 + 560);
  if (v0)
  {
    v5 = sub_261B5EF18;
  }

  else
  {
    v5 = sub_261B5EA7C;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_261B5EA7C()
{

  v1 = *(v0 + 544);
  v2 = *(v0 + 536);

  return MEMORY[0x2822009F8](sub_261B5EAE4, v2, v1);
}

uint64_t sub_261B5EAE4()
{
  v30 = v0;
  v1 = v0[58];
  v2 = v0[59];
  v3 = v0[54];
  v4 = v0[53];

  sub_261B01D28(&qword_27FEDABB0, &qword_27FEDABA8, &qword_261D03840, MEMORY[0x277CBA268]);
  sub_261CFC964();
  sub_261B425D4(v3, v4);
  if ((*(v2 + 48))(v4, 1, v1) == 1)
  {
    v5 = v0[52];
    v6 = v0[50];
    v7 = v0[51];
    sub_261B59E9C(v0[53]);
    sub_261CFD704();
    v8 = sub_261CFD714();
    v10 = v9;
    (*(v7 + 8))(v5, v6);
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
      v29[0] = v15;
      *v14 = 136315650;
      v16 = sub_261B879C8(v8, v10, v29);

      *(v14 + 4) = v16;
      *(v14 + 12) = 2048;
      *(v14 + 14) = 231;
      *(v14 + 22) = 2080;
      *(v14 + 24) = sub_261B879C8(0xD000000000000049, 0x8000000261D188E0, v29);
      _os_log_impl(&dword_261AE2000, v12, v13, "Value is unexpectedly nil {source: %s:%ld, description: %s}", v14, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x26671D560](v15, -1, -1);
      MEMORY[0x26671D560](v14, -1, -1);
    }

    else
    {
    }

    v24 = v0[56];
    v23 = v0[57];
    v26 = v0[54];
    v25 = v0[55];
    sub_261B01D70();
    swift_allocError();
    *v27 = 20;
    swift_willThrow();
    sub_261B59E48((v0 + 2));
    sub_261B59E9C(v26);
    (*(v24 + 8))(v23, v25);

    v22 = v0[1];
  }

  else
  {
    v17 = v0[60];
    v18 = v0[57];
    v20 = v0[55];
    v19 = v0[56];
    v21 = v0[54];
    sub_261B01E2C(v0[53], v17);
    sub_261B59E9C(v21);
    (*(v19 + 8))(v18, v20);
    sub_261B5F3AC(&qword_280D22790, &protocol conformance descriptor for ListEntity);
    sub_261CFC994();
    sub_261B59E48((v0 + 2));
    sub_261B0A1F0(v17);

    v22 = v0[1];
  }

  return v22();
}

uint64_t sub_261B5EF18()
{

  v1 = *(v0 + 544);
  v2 = *(v0 + 536);

  return MEMORY[0x2822009F8](sub_261B5EF80, v2, v1);
}

uint64_t sub_261B5EF80()
{

  sub_261B59E48(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_261B5F038(uint64_t a1)
{
  v2 = type metadata accessor for ListEntity(0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_261B0A18C(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_261CFCBC4();
  return sub_261B0A1F0(a1);
}

uint64_t (*sub_261B5F0C8(uint64_t *a1))()
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

uint64_t (*sub_261B5F13C(uint64_t *a1))()
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

uint64_t sub_261B5F1B0()
{
  if (qword_27FED98B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return sub_261CFCDA4();
}

uint64_t sub_261B5F228@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED98B0 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD6A4();
  v3 = __swift_project_value_buffer(v2, qword_27FEDAC60);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_261B5F2D4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_261AF43A8;

  return UpdateListSortingStyleAppIntent.perform()(a1);
}

uint64_t sub_261B5F370(uint64_t a1)
{
  v2 = sub_261B31BE8();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t sub_261B5F3AC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ListEntity(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_261B5F43C()
{
  result = qword_280D22C08;
  if (!qword_280D22C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D22C08);
  }

  return result;
}

unint64_t sub_261B5F494()
{
  result = qword_280D22C18;
  if (!qword_280D22C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D22C18);
  }

  return result;
}

uint64_t sub_261B5F57C()
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
  __swift_allocate_value_buffer(v6, qword_27FEDAC90);
  __swift_project_value_buffer(v6, qword_27FEDAC90);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v1 + 104))(v3, *MEMORY[0x277CC9110], v0);
  return sub_261CFD6C4();
}

uint64_t static UpdateListListLayoutAppIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED98C0 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD6A4();
  v3 = __swift_project_value_buffer(v2, qword_27FEDAC90);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static UpdateListListLayoutAppIntent.description.getter@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_261B5FB24(uint64_t a1, uint64_t *a2)
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

uint64_t UpdateListListLayoutAppIntent.entity.setter(uint64_t a1)
{
  v2 = type metadata accessor for ListEntity(0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_261B0A18C(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_261CFCBC4();
  return sub_261B0A1F0(a1);
}

uint64_t (*UpdateListListLayoutAppIntent.entity.modify(uint64_t *a1))()
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

uint64_t (*UpdateListListLayoutAppIntent.property.modify(uint64_t *a1))()
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

uint64_t sub_261B5FE3C()
{
  result = swift_getKeyPath();
  qword_27FEDACA8 = result;
  return result;
}

uint64_t static UpdateListListLayoutAppIntent.binding.getter()
{
  if (qword_27FED98C8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return sub_261CFCDA4();
}

uint64_t static UpdateListListLayoutAppIntent.binding.setter(uint64_t a1)
{
  if (qword_27FED98C8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27FEDACA8 = a1;
}

uint64_t (*static UpdateListListLayoutAppIntent.binding.modify(uint64_t a1))(void)
{
  if (qword_27FED98C8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_261B5FFE4@<X0>(void *a1@<X8>)
{
  if (qword_27FED98C8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_27FEDACA8;
  return sub_261CFCDA4();
}

uint64_t sub_261B60064(uint64_t *a1)
{
  v1 = *a1;
  v2 = qword_27FED98C8;
  sub_261CFCDA4();
  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27FEDACA8 = v1;
}

uint64_t UpdateListListLayoutAppIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v55 = a1;
  v54 = sub_261CFD184();
  v57 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v53 = v37 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1E8, &unk_261D02310);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v52 = v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v51 = v37 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0C0, &unk_261D02500);
  MEMORY[0x28223BE20](v6 - 8);
  v50 = v37 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  MEMORY[0x28223BE20](v8 - 8);
  v56 = v37 - v9;
  v10 = sub_261CFD674();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_261CFD884();
  MEMORY[0x28223BE20](v14 - 8);
  v15 = sub_261CFFA44();
  MEMORY[0x28223BE20](v15 - 8);
  v16 = sub_261CFD6A4();
  v47 = v16;
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v37[1] = v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA298, &qword_261D02530);
  sub_261CFF9B4();
  sub_261CFD874();
  v20 = *(v11 + 104);
  v38 = *MEMORY[0x277CC9110];
  v19 = v38;
  v39 = v10;
  v20(v13, v38, v10);
  v41 = v20;
  v40 = v11 + 104;
  sub_261CFD6B4();
  sub_261CFF9B4();
  sub_261CFD874();
  v20(v13, v19, v10);
  v21 = v56;
  sub_261CFD6C4();
  v22 = *(v17 + 56);
  v46 = v17 + 56;
  v48 = v22;
  v22(v21, 0, 1, v16);
  v23 = type metadata accessor for ListEntity(0);
  (*(*(v23 - 8) + 56))(v50, 1, 1, v23);
  v24 = sub_261CFC834();
  v25 = *(v24 - 8);
  v26 = *(v25 + 56);
  v42 = v26;
  v43 = v25 + 56;
  v26(v51, 1, 1, v24);
  v26(v52, 1, 1, v24);
  v44 = *MEMORY[0x277CBA308];
  v27 = *(v57 + 104);
  v57 += 104;
  v45 = v27;
  v27(v53);
  sub_261B5A458(&qword_280D227A0, type metadata accessor for ListEntity, &protocol conformance descriptor for ListEntity);
  *v55 = sub_261CFCC34();
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDACB0, &unk_261D03E70);
  sub_261CFF9B4();
  sub_261CFD874();
  v28 = v38;
  v29 = v39;
  v30 = v41;
  v41(v13, v38, v39);
  sub_261CFD6B4();
  sub_261CFF9B4();
  sub_261CFD874();
  v30(v13, v28, v29);
  v31 = v56;
  sub_261CFD6C4();
  v48(v31, 0, 1, v47);
  LOBYTE(v59[0]) = 0;
  v32 = v42;
  v42(v51, 1, 1, v24);
  v32(v52, 1, 1, v24);
  v45(v53, v44, v54);
  sub_261AFF648();
  v33 = sub_261CFCC04();
  v34 = v55;
  v55[1] = v33;
  *(v34 + 16) = 0;
  v35 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDABA0, &qword_261D03830);
  v58 = 0;
  sub_261AE4630();
  sub_261D002D4();
  sub_261CFC6B4();
  sub_261CFC6A4();
  result = sub_261CFC684();
  v35[3] = result;
  return result;
}

uint64_t UpdateListListLayoutAppIntent.perform()(uint64_t a1)
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
  *(v2 + 618) = *(v1 + 16);
  *(v2 + 536) = *(v1 + 24);
  *(v2 + 544) = sub_261CFFD24();
  *(v2 + 552) = sub_261CFFD14();
  v8 = sub_261CFFCF4();
  *(v2 + 560) = v8;
  *(v2 + 568) = v7;

  return MEMORY[0x2822009F8](sub_261B60C00, v8, v7);
}

uint64_t sub_261B60C00()
{
  v13 = v0;
  v1 = *(v0 + 536);
  v2 = *(v0 + 618);
  v3 = *(v0 + 528);
  v4 = *(v0 + 520);
  v5 = *(v0 + 512);
  sub_261CFCBB4();
  sub_261CFC664();
  sub_261B7C4B8(v5, v0 + 352, v12);
  __swift_destroy_boxed_opaque_existential_0((v0 + 352));
  sub_261B0A1F0(v5);
  v6 = v12[5];
  *(v0 + 80) = v12[4];
  *(v0 + 96) = v6;
  *(v0 + 112) = v12[6];
  v7 = v12[1];
  *(v0 + 16) = v12[0];
  *(v0 + 32) = v7;
  v8 = v12[3];
  *(v0 + 48) = v12[2];
  *(v0 + 64) = v8;
  sub_261B59DEC(v0 + 16, v0 + 128);
  sub_261CFCBB4();
  *(v0 + 617) = *(v0 + 616);
  sub_261CFCBC4();
  sub_261B59E48(v0 + 16);
  sub_261B153B8(0, v4, v3, v2, v1);
  *(v0 + 576) = sub_261CFFD14();
  v10 = sub_261CFFCF4();
  *(v0 + 584) = v10;
  *(v0 + 592) = v9;

  return MEMORY[0x2822009F8](sub_261B60D6C, v10, v9);
}

uint64_t sub_261B60D6C()
{
  sub_261B59DEC(v0 + 16, v0 + 240);
  v1 = swift_task_alloc();
  *(v0 + 600) = v1;
  *v1 = v0;
  v1[1] = sub_261B60E34;
  v2 = *(v0 + 480);

  return sub_261C56650(v2, "UpdateListAppIntent", 19, 2, v0 + 16);
}

uint64_t sub_261B60E34()
{
  v2 = *v1;
  *(*v1 + 608) = v0;

  v3 = *(v2 + 592);
  v4 = *(v2 + 584);
  if (v0)
  {
    v5 = sub_261B59CB8;
  }

  else
  {
    v5 = sub_261B60F70;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_261B60F70()
{

  v1 = *(v0 + 568);
  v2 = *(v0 + 560);

  return MEMORY[0x2822009F8](sub_261B60FD8, v2, v1);
}

uint64_t sub_261B60FD8()
{
  v37 = v0;
  v1 = v0[61];
  v2 = v0[62];
  v3 = v0[57];
  v4 = v0[56];

  sub_261B01D28(&qword_27FEDABB0, &qword_27FEDABA8, &qword_261D03840, MEMORY[0x277CBA268]);
  sub_261CFC964();
  sub_261B425D4(v3, v4);
  if ((*(v2 + 48))(v4, 1, v1) == 1)
  {
    v6 = v0[51];
    v5 = v0[52];
    v7 = v0[50];
    sub_261B59E9C(v0[56]);
    sub_261CFD704();
    v8 = sub_261CFD714();
    v10 = v9;
    (*(v6 + 8))(v5, v7);
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
      v36[0] = v15;
      *v14 = 136315650;
      v16 = sub_261B879C8(v8, v10, v36);

      *(v14 + 4) = v16;
      *(v14 + 12) = 2048;
      *(v14 + 14) = 231;
      *(v14 + 22) = 2080;
      *(v14 + 24) = sub_261B879C8(0xD000000000000049, 0x8000000261D188E0, v36);
      _os_log_impl(&dword_261AE2000, v12, v13, "Value is unexpectedly nil {source: %s:%ld, description: %s}", v14, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x26671D560](v15, -1, -1);
      MEMORY[0x26671D560](v14, -1, -1);
    }

    else
    {
    }

    v27 = v0[59];
    v26 = v0[60];
    v29 = v0[57];
    v28 = v0[58];
    sub_261B01D70();
    swift_allocError();
    *v30 = 20;
    swift_willThrow();
    sub_261B59E48((v0 + 2));
    sub_261B59E9C(v29);
    (*(v27 + 8))(v26, v28);

    v25 = v0[1];
  }

  else
  {
    v17 = v0[63];
    v18 = v0[64];
    v19 = v0[60];
    v20 = v0[58];
    v21 = v0[59];
    v22 = v0[57];
    v23 = v0[55];
    v35 = v0[54];
    v24 = v0[52];
    v33 = v0[49];
    v34 = v0[53];
    sub_261B01E2C(v0[56], v17);
    sub_261B59E9C(v22);
    (*(v21 + 8))(v19, v20);
    sub_261CFCBB4();
    sub_261BBF268(v24, v32, v33);
    sub_261B0A1F0(v18);
    sub_261CFC9E4();
    sub_261B5A458(&qword_280D22790, type metadata accessor for ListEntity, &protocol conformance descriptor for ListEntity);
    sub_261B5A458(&qword_27FEDA3C0, MEMORY[0x277CB9DE0], MEMORY[0x277CB9DD8]);
    sub_261CFC984();
    sub_261B59E48((v0 + 2));
    (*(v35 + 8))(v23, v34);
    sub_261B0A1F0(v17);

    v25 = v0[1];
  }

  return v25();
}

uint64_t static UpdateListListLayoutAppIntent.parameterSummary.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDACB8, &qword_261D03E90);
  MEMORY[0x28223BE20](v0 - 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDACC0, &qword_261D03E98);
  MEMORY[0x28223BE20](v1);
  sub_261B31B94();
  sub_261CFD164();
  sub_261CFD154();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDACC8, &qword_261D03EC8);
  sub_261CFD144();

  sub_261CFD154();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDACD0, &qword_261D03EF8);
  sub_261CFD144();

  sub_261CFD154();
  sub_261CFD174();
  return sub_261CFD124();
}

uint64_t sub_261B616B0(uint64_t a1)
{
  v2 = type metadata accessor for ListEntity(0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_261B0A18C(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_261CFCBC4();
  return sub_261B0A1F0(a1);
}

uint64_t (*sub_261B61740(uint64_t *a1))()
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

uint64_t (*sub_261B617B4(uint64_t *a1))()
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

uint64_t sub_261B61828()
{
  if (qword_27FED98C8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return sub_261CFCDA4();
}

uint64_t sub_261B618A0@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED98C0 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD6A4();
  v3 = __swift_project_value_buffer(v2, qword_27FEDAC90);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_261B61950(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_261AF43A8;

  return UpdateListListLayoutAppIntent.perform()(a1);
}

uint64_t sub_261B619EC(uint64_t a1)
{
  v2 = sub_261B31B94();

  return MEMORY[0x28210B538](a1, v2);
}

unint64_t sub_261B61A74()
{
  result = qword_280D22D60;
  if (!qword_280D22D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D22D60);
  }

  return result;
}

unint64_t sub_261B61ACC()
{
  result = qword_280D22D70;
  if (!qword_280D22D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D22D70);
  }

  return result;
}

uint64_t sub_261B61B80()
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
  __swift_allocate_value_buffer(v6, qword_27FEDACF0);
  __swift_project_value_buffer(v6, qword_27FEDACF0);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v1 + 104))(v3, *MEMORY[0x277CC9110], v0);
  return sub_261CFD6C4();
}

uint64_t static UpdateListShowsCompletedAppIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED98D0 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD6A4();
  v3 = __swift_project_value_buffer(v2, qword_27FEDACF0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static UpdateListShowsCompletedAppIntent.description.getter@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_261B62128(uint64_t a1, uint64_t *a2)
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

uint64_t UpdateListShowsCompletedAppIntent.entity.setter(uint64_t a1)
{
  v2 = type metadata accessor for ListEntity(0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_261B0A18C(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_261CFCBC4();
  return sub_261B0A1F0(a1);
}

uint64_t (*UpdateListShowsCompletedAppIntent.entity.modify(uint64_t *a1))()
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

uint64_t (*UpdateListShowsCompletedAppIntent.property.modify(uint64_t *a1))()
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

uint64_t sub_261B6244C()
{
  result = swift_getKeyPath();
  qword_27FEDAD08 = result;
  return result;
}

uint64_t static UpdateListShowsCompletedAppIntent.binding.getter()
{
  if (qword_27FED98D8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return sub_261CFCDA4();
}

uint64_t static UpdateListShowsCompletedAppIntent.binding.setter(uint64_t a1)
{
  if (qword_27FED98D8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27FEDAD08 = a1;
}

uint64_t (*static UpdateListShowsCompletedAppIntent.binding.modify(uint64_t a1))(void)
{
  if (qword_27FED98D8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_261B625F4@<X0>(void *a1@<X8>)
{
  if (qword_27FED98D8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_27FEDAD08;
  return sub_261CFCDA4();
}

uint64_t sub_261B62674(uint64_t *a1)
{
  v1 = *a1;
  v2 = qword_27FED98D8;
  sub_261CFCDA4();
  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27FEDAD08 = v1;
}

uint64_t UpdateListShowsCompletedAppIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v62 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA390, &unk_261D02F60);
  MEMORY[0x28223BE20](v1 - 8);
  v56 = v42 - v2;
  v61 = sub_261CFD184();
  v64 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v60 = v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1E8, &unk_261D02310);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v53 = v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v59 = v42 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0C0, &unk_261D02500);
  MEMORY[0x28223BE20](v8 - 8);
  v49 = v42 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v42 - v11;
  v13 = sub_261CFD674();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_261CFD884();
  MEMORY[0x28223BE20](v17 - 8);
  v18 = sub_261CFFA44();
  MEMORY[0x28223BE20](v18 - 8);
  v19 = sub_261CFD6A4();
  v45 = v19;
  v63 = *(v19 - 8);
  v20 = MEMORY[0x28223BE20](v19);
  v55 = v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v54 = v42 - v23;
  MEMORY[0x28223BE20](v22);
  v58 = v42 - v24;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA298, &qword_261D02530);
  sub_261CFF9B4();
  sub_261CFD874();
  v25 = *MEMORY[0x277CC9110];
  v27 = v14 + 104;
  v26 = *(v14 + 104);
  v42[0] = v13;
  v26(v16, v25, v13);
  v43 = v26;
  v42[1] = v27;
  sub_261CFD6B4();
  sub_261CFF9B4();
  sub_261CFD874();
  v26(v16, v25, v13);
  v57 = v12;
  sub_261CFD6C4();
  v28 = *(v63 + 56);
  v63 += 56;
  v46 = v28;
  v28(v12, 0, 1, v19);
  v29 = type metadata accessor for ListEntity(0);
  (*(*(v29 - 8) + 56))(v49, 1, 1, v29);
  v30 = sub_261CFC834();
  v51 = v30;
  v31 = *(v30 - 8);
  v32 = *(v31 + 56);
  v50 = v32;
  v52 = v31 + 56;
  v32(v59, 1, 1, v30);
  v32(v53, 1, 1, v30);
  v47 = *MEMORY[0x277CBA308];
  v33 = *(v64 + 104);
  v64 += 104;
  v48 = v33;
  v33(v60);
  sub_261B5A458(&qword_280D227A0, type metadata accessor for ListEntity, &protocol conformance descriptor for ListEntity);
  v34 = v57;
  *v62 = sub_261CFCC34();
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA3A0, &qword_261D02F70);
  sub_261CFF9B4();
  sub_261CFD874();
  v35 = v42[0];
  v36 = v43;
  v43(v16, v25, v42[0]);
  sub_261CFD6B4();
  sub_261CFF9B4();
  sub_261CFD874();
  v36(v16, v25, v35);
  sub_261CFD6C4();
  v46(v34, 0, 1, v45);
  LOBYTE(v66[0]) = 1;
  sub_261CFF9B4();
  sub_261CFD874();
  v36(v16, v25, v35);
  sub_261CFD6B4();
  sub_261CFF9B4();
  sub_261CFD874();
  v36(v16, v25, v35);
  sub_261CFD6B4();
  v37 = v56;
  sub_261CFFCD4();
  v38 = sub_261CFFCE4();
  (*(*(v38 - 8) + 56))(v37, 0, 1, v38);
  v50(v59, 1, 1, v51);
  v48(v60, v47, v61);
  v39 = sub_261CFCD44();
  v40 = v62;
  v62[1] = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDABA0, &qword_261D03830);
  v65 = 0;
  sub_261AE4630();
  sub_261D002D4();
  sub_261CFC6B4();
  sub_261CFC6A4();
  result = sub_261CFC684();
  v40[2] = result;
  return result;
}

uint64_t UpdateListShowsCompletedAppIntent.perform()(uint64_t a1)
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

  return MEMORY[0x2822009F8](sub_261B633D4, v8, v7);
}

uint64_t sub_261B633D4()
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
  sub_261B16190(0, v3, v2, v1);
  *(v0 + 576) = sub_261CFFD14();
  v9 = sub_261CFFCF4();
  *(v0 + 584) = v9;
  *(v0 + 592) = v8;

  return MEMORY[0x2822009F8](sub_261B6352C, v9, v8);
}

uint64_t sub_261B6352C()
{
  sub_261B59DEC(v0 + 16, v0 + 240);
  v1 = swift_task_alloc();
  *(v0 + 600) = v1;
  *v1 = v0;
  v1[1] = sub_261B60E34;
  v2 = *(v0 + 480);

  return sub_261C56650(v2, "UpdateListAppIntent", 19, 2, v0 + 16);
}

uint64_t static UpdateListShowsCompletedAppIntent.parameterSummary.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAD10, &qword_261D040C8);
  MEMORY[0x28223BE20](v0 - 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAD18, &qword_261D040D0);
  MEMORY[0x28223BE20](v1);
  sub_261B31B40();
  sub_261CFD164();
  sub_261CFD154();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAD20, &qword_261D04100);
  sub_261CFD144();

  sub_261CFD154();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAD28, &unk_261D04130);
  sub_261CFD144();

  sub_261CFD154();
  sub_261CFD174();
  return sub_261CFD124();
}

uint64_t sub_261B637E8(uint64_t a1)
{
  v2 = type metadata accessor for ListEntity(0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_261B0A18C(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_261CFCBC4();
  return sub_261B0A1F0(a1);
}

uint64_t (*sub_261B63878(uint64_t *a1))()
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

uint64_t (*sub_261B638EC(uint64_t *a1))()
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

uint64_t sub_261B63960()
{
  if (qword_27FED98D8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return sub_261CFCDA4();
}

uint64_t sub_261B639D8@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED98D0 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD6A4();
  v3 = __swift_project_value_buffer(v2, qword_27FEDACF0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_261B63A88(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_261AF43A8;

  return UpdateListShowsCompletedAppIntent.perform()(a1);
}

uint64_t sub_261B63B24(uint64_t a1)
{
  v2 = sub_261B31B40();

  return MEMORY[0x28210B538](a1, v2);
}

unint64_t sub_261B63BAC()
{
  result = qword_280D22BF0;
  if (!qword_280D22BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D22BF0);
  }

  return result;
}

unint64_t sub_261B63C04()
{
  result = qword_280D22C00;
  if (!qword_280D22C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D22C00);
  }

  return result;
}

uint64_t sub_261B63CB8()
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
  __swift_allocate_value_buffer(v6, qword_27FEDAD48);
  __swift_project_value_buffer(v6, qword_27FEDAD48);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v1 + 104))(v3, *MEMORY[0x277CC9110], v0);
  return sub_261CFD6C4();
}

uint64_t static UpdateListParentAppIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED98E0 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD6A4();
  v3 = __swift_project_value_buffer(v2, qword_27FEDAD48);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static UpdateListParentAppIntent.description.getter@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_261B64260(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for ListEntity(0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - v7;
  sub_261B646D0(a1, &v10 - v7, type metadata accessor for ListEntity);
  sub_261B646D0(v8, v6, type metadata accessor for ListEntity);
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCBC4();
  sub_261B64738(v8, type metadata accessor for ListEntity);
}

uint64_t UpdateListParentAppIntent.entity.setter(uint64_t a1)
{
  v2 = type metadata accessor for ListEntity(0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_261B646D0(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ListEntity);
  sub_261CFCBC4();
  return sub_261B64738(a1, type metadata accessor for ListEntity);
}

uint64_t (*UpdateListParentAppIntent.entity.modify(uint64_t *a1))()
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

uint64_t sub_261B64508(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for GroupEntity(0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - v7;
  sub_261B646D0(a1, &v10 - v7, type metadata accessor for GroupEntity);
  sub_261B646D0(v8, v6, type metadata accessor for GroupEntity);
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCBC4();
  sub_261B64738(v8, type metadata accessor for GroupEntity);
}

uint64_t UpdateListParentAppIntent.property.setter(uint64_t a1)
{
  v2 = type metadata accessor for GroupEntity(0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_261B646D0(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GroupEntity);
  sub_261CFCBC4();
  return sub_261B64738(a1, type metadata accessor for GroupEntity);
}

uint64_t sub_261B646D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_261B64738(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t (*UpdateListParentAppIntent.property.modify(uint64_t *a1))()
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

uint64_t sub_261B64830()
{
  result = swift_getKeyPath();
  qword_27FEDAD60 = result;
  return result;
}

uint64_t static UpdateListParentAppIntent.binding.getter()
{
  if (qword_27FED98E8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return sub_261CFCDA4();
}

uint64_t static UpdateListParentAppIntent.binding.setter(uint64_t a1)
{
  if (qword_27FED98E8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27FEDAD60 = a1;
}

uint64_t (*static UpdateListParentAppIntent.binding.modify(uint64_t a1))(void)
{
  if (qword_27FED98E8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_261B649D8@<X0>(void *a1@<X8>)
{
  if (qword_27FED98E8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_27FEDAD60;
  return sub_261CFCDA4();
}

uint64_t sub_261B64A58(uint64_t *a1)
{
  v1 = *a1;
  v2 = qword_27FED98E8;
  sub_261CFCDA4();
  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27FEDAD60 = v1;
}

uint64_t UpdateListParentAppIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v59 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD950, &unk_261D01440);
  MEMORY[0x28223BE20](v1 - 8);
  v54 = &v40 - v2;
  v58 = sub_261CFD184();
  v61 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v57 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1E8, &unk_261D02310);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v56 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v55 = &v40 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0C0, &unk_261D02500);
  MEMORY[0x28223BE20](v8 - 8);
  v53 = &v40 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  MEMORY[0x28223BE20](v10 - 8);
  v60 = &v40 - v11;
  v12 = sub_261CFD674();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_261CFD884();
  MEMORY[0x28223BE20](v16 - 8);
  v17 = sub_261CFFA44();
  MEMORY[0x28223BE20](v17 - 8);
  v18 = sub_261CFD6A4();
  v51 = v18;
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v40 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA298, &qword_261D02530);
  sub_261CFF9B4();
  sub_261CFD874();
  v22 = *(v13 + 104);
  v41 = *MEMORY[0x277CC9110];
  v21 = v41;
  v42 = v12;
  v22(v15, v41, v12);
  v44 = v22;
  v43 = v13 + 104;
  sub_261CFD6B4();
  sub_261CFF9B4();
  sub_261CFD874();
  v22(v15, v21, v12);
  v23 = v60;
  sub_261CFD6C4();
  v24 = *(v19 + 56);
  v50 = v19 + 56;
  v52 = v24;
  v24(v23, 0, 1, v18);
  v25 = type metadata accessor for ListEntity(0);
  (*(*(v25 - 8) + 56))(v53, 1, 1, v25);
  v26 = sub_261CFC834();
  v27 = *(v26 - 8);
  v28 = *(v27 + 56);
  v45 = v28;
  v46 = v27 + 56;
  v28(v55, 1, 1, v26);
  v28(v56, 1, 1, v26);
  v47 = *MEMORY[0x277CBA308];
  v29 = *(v61 + 104);
  v61 += 104;
  v48 = v29;
  v29(v57);
  sub_261B65438();
  sub_261B66D00(&qword_280D227A0, type metadata accessor for ListEntity, &protocol conformance descriptor for ListEntity);
  *v59 = sub_261CFCC24();
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAD70, &unk_261D06AA0);
  sub_261CFF9B4();
  sub_261CFD874();
  v30 = v41;
  v31 = v42;
  v32 = v44;
  v44(v15, v41, v42);
  sub_261CFD6B4();
  sub_261CFF9B4();
  sub_261CFD874();
  v32(v15, v30, v31);
  v33 = v60;
  sub_261CFD6C4();
  v52(v33, 0, 1, v51);
  v34 = type metadata accessor for GroupEntity(0);
  (*(*(v34 - 8) + 56))(v54, 1, 1, v34);
  v35 = v45;
  v45(v55, 1, 1, v26);
  v35(v56, 1, 1, v26);
  v48(v57, v47, v58);
  sub_261B66D00(&qword_280D22670, type metadata accessor for GroupEntity, &protocol conformance descriptor for GroupEntity);
  v36 = sub_261CFCC34();
  v37 = v59;
  v59[1] = v36;
  *(v37 + 16) = 0;
  v38 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDABA0, &qword_261D03830);
  v62 = 0;
  sub_261AE4630();
  sub_261D002D4();
  sub_261CFC6B4();
  sub_261CFC6A4();
  result = sub_261CFC684();
  v38[3] = result;
  return result;
}

unint64_t sub_261B65438()
{
  result = qword_27FEDAD68;
  if (!qword_27FEDAD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDAD68);
  }

  return result;
}

uint64_t static UpdateListParentAppIntent.parameterSummary.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAD78, &qword_261D042F8);
  MEMORY[0x28223BE20](v0 - 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAD80, &qword_261D04300);
  MEMORY[0x28223BE20](v1);
  sub_261B31AEC();
  sub_261CFD164();
  sub_261CFD154();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAD88, &qword_261D04330);
  sub_261CFD144();

  sub_261CFD154();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAD90, &qword_261D04360);
  sub_261CFD144();

  sub_261CFD154();
  sub_261CFD174();
  return sub_261CFD124();
}

uint64_t sub_261B65688@<X0>(uint64_t *a1@<X8>)
{
  result = sub_261CFCBD4();
  *a1 = result;
  return result;
}

uint64_t UpdateListParentAppIntent.perform()(uint64_t a1)
{
  *(v2 + 392) = a1;
  v3 = type metadata accessor for GroupEntity(0);
  *(v2 + 400) = v3;
  *(v2 + 408) = *(v3 - 8);
  *(v2 + 416) = swift_task_alloc();
  v4 = sub_261CFD754();
  *(v2 + 424) = v4;
  *(v2 + 432) = *(v4 - 8);
  *(v2 + 440) = swift_task_alloc();
  v5 = sub_261CFC9D4();
  *(v2 + 448) = v5;
  *(v2 + 456) = *(v5 - 8);
  *(v2 + 464) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0C0, &unk_261D02500);
  *(v2 + 472) = swift_task_alloc();
  *(v2 + 480) = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDABA8, &qword_261D03840);
  *(v2 + 488) = v6;
  *(v2 + 496) = *(v6 - 8);
  *(v2 + 504) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD950, &unk_261D01440);
  *(v2 + 512) = swift_task_alloc();
  *(v2 + 520) = swift_task_alloc();
  v7 = type metadata accessor for ListEntity(0);
  *(v2 + 528) = v7;
  *(v2 + 536) = *(v7 - 8);
  *(v2 + 544) = swift_task_alloc();
  *(v2 + 552) = swift_task_alloc();
  *(v2 + 560) = swift_task_alloc();
  *(v2 + 568) = *v1;
  *(v2 + 665) = *(v1 + 16);
  *(v2 + 584) = *(v1 + 24);
  *(v2 + 592) = sub_261CFFD24();
  *(v2 + 600) = sub_261CFFD14();
  v9 = sub_261CFFCF4();
  *(v2 + 608) = v9;
  *(v2 + 616) = v8;

  return MEMORY[0x2822009F8](sub_261B659F0, v9, v8);
}

uint64_t sub_261B659F0()
{
  v21 = v0;
  v1 = *(v0 + 560);
  sub_261CFCBB4();
  sub_261CFD2D4();
  v2 = *(v0 + 664);
  sub_261B64738(v1, type metadata accessor for ListEntity);
  if (v2 == 2 || (v2 & 1) == 0)
  {
    v6 = *(v0 + 584);
    v19 = *(v0 + 665);
    v7 = *(v0 + 576);
    v8 = *(v0 + 568);
    v9 = *(v0 + 552);
    v10 = *(v0 + 520);
    v11 = *(v0 + 512);
    v13 = *(v0 + 400);
    v12 = *(v0 + 408);
    sub_261CFCBB4();
    sub_261CFC664();
    sub_261B7C4B8(v9, v0 + 352, v20);
    __swift_destroy_boxed_opaque_existential_0((v0 + 352));
    sub_261B64738(v9, type metadata accessor for ListEntity);
    v14 = v20[5];
    *(v0 + 80) = v20[4];
    *(v0 + 96) = v14;
    *(v0 + 112) = v20[6];
    v15 = v20[1];
    *(v0 + 16) = v20[0];
    *(v0 + 32) = v15;
    v16 = v20[3];
    *(v0 + 48) = v20[2];
    *(v0 + 64) = v16;
    sub_261B59DEC(v0 + 16, v0 + 128);
    sub_261CFCBB4();
    (*(v12 + 56))(v10, 0, 1, v13);
    sub_261AFB668(v10, v11, &unk_27FEDD950, &unk_261D01440);
    sub_261CFCBC4();
    sub_261AE6A40(v10, &unk_27FEDD950, &unk_261D01440);
    sub_261B59E48(v0 + 16);
    sub_261B16F4C(0, v8, v7, v19, v6);
    *(v0 + 624) = sub_261CFFD14();
    v18 = sub_261CFFCF4();
    *(v0 + 632) = v18;
    *(v0 + 640) = v17;

    return MEMORY[0x2822009F8](sub_261B65D14, v18, v17);
  }

  else
  {

    sub_261B01D70();
    swift_allocError();
    *v3 = 9;
    swift_willThrow();

    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_261B65D14()
{
  sub_261B59DEC(v0 + 16, v0 + 240);
  v1 = swift_task_alloc();
  *(v0 + 648) = v1;
  *v1 = v0;
  v1[1] = sub_261B65DDC;
  v2 = *(v0 + 504);

  return sub_261C56650(v2, "UpdateListAppIntent", 19, 2, v0 + 16);
}

uint64_t sub_261B65DDC()
{
  v2 = *v1;
  *(*v1 + 656) = v0;

  v3 = *(v2 + 640);
  v4 = *(v2 + 632);
  if (v0)
  {
    v5 = sub_261B6655C;
  }

  else
  {
    v5 = sub_261B65F18;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_261B65F18()
{

  v1 = *(v0 + 616);
  v2 = *(v0 + 608);

  return MEMORY[0x2822009F8](sub_261B65F80, v2, v1);
}

uint64_t sub_261B65F80()
{
  v35 = v0;
  v1 = v0[67];
  v2 = v0[66];
  v3 = v0[60];
  v4 = v0[59];

  sub_261B01D28(&qword_27FEDABB0, &qword_27FEDABA8, &qword_261D03840, MEMORY[0x277CBA268]);
  sub_261CFC964();
  sub_261AFB668(v3, v4, &unk_27FEDE0C0, &unk_261D02500);
  if ((*(v1 + 48))(v4, 1, v2) == 1)
  {
    v6 = v0[54];
    v5 = v0[55];
    v7 = v0[53];
    sub_261AE6A40(v0[59], &unk_27FEDE0C0, &unk_261D02500);
    sub_261CFD704();
    v8 = sub_261CFD714();
    v10 = v9;
    (*(v6 + 8))(v5, v7);
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
      v34[0] = v15;
      *v14 = 136315650;
      v16 = sub_261B879C8(v8, v10, v34);

      *(v14 + 4) = v16;
      *(v14 + 12) = 2048;
      *(v14 + 14) = 231;
      *(v14 + 22) = 2080;
      *(v14 + 24) = sub_261B879C8(0xD000000000000049, 0x8000000261D188E0, v34);
      _os_log_impl(&dword_261AE2000, v12, v13, "Value is unexpectedly nil {source: %s:%ld, description: %s}", v14, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x26671D560](v15, -1, -1);
      MEMORY[0x26671D560](v14, -1, -1);
    }

    else
    {
    }

    v27 = v0[62];
    v26 = v0[63];
    v29 = v0[60];
    v28 = v0[61];
    sub_261B01D70();
    swift_allocError();
    *v30 = 20;
    swift_willThrow();
    sub_261B59E48((v0 + 2));
    sub_261AE6A40(v29, &unk_27FEDE0C0, &unk_261D02500);
    (*(v27 + 8))(v26, v28);

    v25 = v0[1];
  }

  else
  {
    v17 = v0[68];
    v18 = v0[63];
    v20 = v0[61];
    v19 = v0[62];
    v21 = v0[60];
    v22 = v0[57];
    v23 = v0[55];
    v33 = v0[56];
    v24 = v0[52];
    v32 = v0[58];
    sub_261B01E2C(v0[59], v17);
    sub_261AE6A40(v21, &unk_27FEDE0C0, &unk_261D02500);
    (*(v19 + 8))(v18, v20);
    sub_261CFCBB4();
    sub_261BBF2B0(v23);
    sub_261B64738(v24, type metadata accessor for GroupEntity);
    sub_261CFC9E4();
    sub_261B66D00(&qword_280D22790, type metadata accessor for ListEntity, &protocol conformance descriptor for ListEntity);
    sub_261B66D00(&qword_27FEDA3C0, MEMORY[0x277CB9DE0], MEMORY[0x277CB9DD8]);
    sub_261CFC984();
    sub_261B59E48((v0 + 2));
    (*(v22 + 8))(v32, v33);
    sub_261B64738(v17, type metadata accessor for ListEntity);

    v25 = v0[1];
  }

  return v25();
}

uint64_t sub_261B6655C()
{

  v1 = *(v0 + 616);
  v2 = *(v0 + 608);

  return MEMORY[0x2822009F8](sub_261B665C4, v2, v1);
}

uint64_t sub_261B665C4()
{

  sub_261B59E48(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_261B666D0(uint64_t a1)
{
  v2 = type metadata accessor for ListEntity(0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_261B646D0(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ListEntity);
  sub_261CFCBC4();
  return sub_261B64738(a1, type metadata accessor for ListEntity);
}

uint64_t (*sub_261B6677C(uint64_t *a1))()
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

uint64_t sub_261B667F0(uint64_t a1)
{
  v2 = type metadata accessor for GroupEntity(0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_261B646D0(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GroupEntity);
  sub_261CFCBC4();
  return sub_261B64738(a1, type metadata accessor for GroupEntity);
}

uint64_t (*sub_261B6689C(uint64_t *a1))()
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

uint64_t sub_261B66910()
{
  if (qword_27FED98E8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return sub_261CFCDA4();
}

uint64_t sub_261B66988@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED98E0 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD6A4();
  v3 = __swift_project_value_buffer(v2, qword_27FEDAD48);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_261B66A38(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_261AF43A8;

  return UpdateListParentAppIntent.perform()(a1);
}

uint64_t sub_261B66AD4(uint64_t a1)
{
  v2 = sub_261B31AEC();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t sub_261B66B30()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA120, &qword_261D02820);
  *(v0 + 48) = 0;
  sub_261AE4630();
  sub_261D002D4();
  sub_261CFC6B4();
  sub_261CFC6A4();
  v1 = sub_261CFC684();
  *(v0 + 24) = v1;
  sub_261CFCDA4();
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_261B0AF4C;
  v3 = *(v0 + 16);

  return sub_261C51EBC(v3, "ListEntityQuery.suggestedEntities", 33, 2, v1, 1);
}

uint64_t sub_261B66C68(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_261AF4BDC;

  return sub_261B66B10(a1);
}

uint64_t sub_261B66D00(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_261B66D94()
{
  result = qword_280D22C38;
  if (!qword_280D22C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D22C38);
  }

  return result;
}

unint64_t sub_261B66DEC()
{
  result = qword_280D22C48;
  if (!qword_280D22C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D22C48);
  }

  return result;
}

unint64_t sub_261B66E94()
{
  result = qword_27FEDADA0;
  if (!qword_27FEDADA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDADA0);
  }

  return result;
}

uint64_t sub_261B66F50()
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
  __swift_allocate_value_buffer(v6, qword_27FEDADB8);
  __swift_project_value_buffer(v6, qword_27FEDADB8);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v1 + 104))(v3, *MEMORY[0x277CC9110], v0);
  return sub_261CFD6C4();
}

uint64_t static UpdateListBadgeAppIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED98F0 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD6A4();
  v3 = __swift_project_value_buffer(v2, qword_27FEDADB8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static UpdateListBadgeAppIntent.description.getter@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_261B674F8(uint64_t a1, uint64_t *a2)
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

uint64_t UpdateListBadgeAppIntent.entity.setter(uint64_t a1)
{
  v2 = type metadata accessor for ListEntity(0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_261B0A18C(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_261CFCBC4();
  return sub_261B0A1F0(a1);
}

uint64_t (*UpdateListBadgeAppIntent.entity.modify(uint64_t *a1))()
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

double sub_261B67740@<D0>(uint64_t a1@<X8>)
{
  sub_261CFCBB4();
  *a1 = v3;
  result = *&v4;
  *(a1 + 8) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  return result;
}

uint64_t sub_261B6778C(uint64_t *a1, uint64_t *a2)
{
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFD104();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCBC4();
}

uint64_t (*UpdateListBadgeAppIntent.property.modify(uint64_t *a1))()
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

uint64_t sub_261B67918()
{
  result = swift_getKeyPath();
  qword_27FEDADD0 = result;
  return result;
}

uint64_t static UpdateListBadgeAppIntent.binding.getter()
{
  if (qword_27FED98F8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return sub_261CFCDA4();
}

uint64_t static UpdateListBadgeAppIntent.binding.setter(uint64_t a1)
{
  if (qword_27FED98F8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27FEDADD0 = a1;
}

uint64_t (*static UpdateListBadgeAppIntent.binding.modify(uint64_t a1))(void)
{
  if (qword_27FED98F8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_261B67AC0@<X0>(void *a1@<X8>)
{
  if (qword_27FED98F8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_27FEDADD0;
  return sub_261CFCDA4();
}

uint64_t sub_261B67B40(uint64_t *a1)
{
  v1 = *a1;
  v2 = qword_27FED98F8;
  sub_261CFCDA4();
  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27FEDADD0 = v1;
}

uint64_t UpdateListBadgeAppIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v56 = a1;
  v55 = sub_261CFD184();
  v57 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v54 = &v37 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1E8, &unk_261D02310);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v53 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v52 = &v37 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0C0, &unk_261D02500);
  MEMORY[0x28223BE20](v6 - 8);
  v50 = &v37 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  MEMORY[0x28223BE20](v8 - 8);
  v51 = &v37 - v9;
  v10 = sub_261CFD674();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_261CFD884();
  MEMORY[0x28223BE20](v14 - 8);
  v15 = sub_261CFFA44();
  MEMORY[0x28223BE20](v15 - 8);
  v16 = sub_261CFD6A4();
  v48 = v16;
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v37 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA298, &qword_261D02530);
  sub_261CFF9B4();
  sub_261CFD874();
  v20 = *(v11 + 104);
  v38 = *MEMORY[0x277CC9110];
  v19 = v38;
  v39 = v10;
  v20(v13, v38, v10);
  v41 = v20;
  v40 = v11 + 104;
  sub_261CFD6B4();
  sub_261CFF9B4();
  sub_261CFD874();
  v20(v13, v19, v10);
  v21 = v51;
  sub_261CFD6C4();
  v22 = *(v17 + 56);
  v47 = v17 + 56;
  v49 = v22;
  v22(v21, 0, 1, v16);
  v23 = type metadata accessor for ListEntity(0);
  (*(*(v23 - 8) + 56))(v50, 1, 1, v23);
  v24 = sub_261CFC834();
  v25 = *(v24 - 8);
  v26 = *(v25 + 56);
  v42 = v26;
  v43 = v25 + 56;
  v26(v52, 1, 1, v24);
  v26(v53, 1, 1, v24);
  v44 = *MEMORY[0x277CBA308];
  v27 = *(v57 + 104);
  v57 += 104;
  v45 = v27;
  v27(v54);
  sub_261B5F3AC(&qword_280D227A0, &protocol conformance descriptor for ListEntity);
  *v56 = sub_261CFCC34();
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDADD8, &unk_261D045E0);
  sub_261CFF9B4();
  sub_261CFD874();
  v28 = v38;
  v29 = v39;
  v30 = v41;
  v41(v13, v38, v39);
  sub_261CFD6B4();
  sub_261CFF9B4();
  sub_261CFD874();
  v30(v13, v28, v29);
  v31 = v51;
  sub_261CFD6C4();
  v49(v31, 0, 1, v48);
  v61 = 0;
  v59 = 0u;
  v60 = 0u;
  v32 = v42;
  v42(v52, 1, 1, v24);
  v32(v53, 1, 1, v24);
  v45(v54, v44, v55);
  sub_261AFF5F4();
  v33 = sub_261CFCC34();
  v34 = v56;
  v56[1] = v33;
  *(v34 + 16) = 0;
  v35 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDABA0, &qword_261D03830);
  v58 = 0;
  sub_261AE4630();
  sub_261D002D4();
  sub_261CFC6B4();
  sub_261CFC6A4();
  result = sub_261CFC684();
  v35[3] = result;
  return result;
}

uint64_t UpdateListBadgeAppIntent.perform()(uint64_t a1)
{
  *(v2 + 472) = a1;
  v3 = sub_261CFD754();
  *(v2 + 480) = v3;
  *(v2 + 488) = *(v3 - 8);
  *(v2 + 496) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0C0, &unk_261D02500);
  *(v2 + 504) = swift_task_alloc();
  *(v2 + 512) = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDABA8, &qword_261D03840);
  *(v2 + 520) = v4;
  *(v2 + 528) = *(v4 - 8);
  *(v2 + 536) = swift_task_alloc();
  v5 = type metadata accessor for ListEntity(0);
  *(v2 + 544) = v5;
  *(v2 + 552) = *(v5 - 8);
  *(v2 + 560) = swift_task_alloc();
  *(v2 + 568) = swift_task_alloc();
  *(v2 + 576) = *v1;
  *(v2 + 672) = *(v1 + 16);
  *(v2 + 592) = *(v1 + 24);
  *(v2 + 600) = sub_261CFFD24();
  *(v2 + 608) = sub_261CFFD14();
  v7 = sub_261CFFCF4();
  *(v2 + 616) = v7;
  *(v2 + 624) = v6;

  return MEMORY[0x2822009F8](sub_261B6866C, v7, v6);
}

uint64_t sub_261B6866C()
{
  v15 = v0;
  v1 = *(v0 + 592);
  v2 = *(v0 + 672);
  v3 = *(v0 + 584);
  v4 = *(v0 + 576);
  v5 = *(v0 + 568);
  sub_261CFCBB4();
  sub_261CFC664();
  sub_261B7C4B8(v5, v0 + 352, v14);
  __swift_destroy_boxed_opaque_existential_0((v0 + 352));
  sub_261B0A1F0(v5);
  v6 = v14[5];
  *(v0 + 80) = v14[4];
  *(v0 + 96) = v6;
  *(v0 + 112) = v14[6];
  v7 = v14[1];
  *(v0 + 16) = v14[0];
  *(v0 + 32) = v7;
  v8 = v14[3];
  *(v0 + 48) = v14[2];
  *(v0 + 64) = v8;
  sub_261B59DEC(v0 + 16, v0 + 128);
  sub_261CFCBB4();
  v9 = *(v0 + 416);
  v10 = *(v0 + 424);
  *(v0 + 432) = *(v0 + 392);
  *(v0 + 440) = *(v0 + 400);
  *(v0 + 456) = v9;
  *(v0 + 464) = v10;
  sub_261CFCBC4();
  sub_261B59E48(v0 + 16);
  sub_261B17D24(0, v4, v3, v2, v1);
  *(v0 + 632) = sub_261CFFD14();
  v12 = sub_261CFFCF4();
  *(v0 + 640) = v12;
  *(v0 + 648) = v11;

  return MEMORY[0x2822009F8](sub_261B687E8, v12, v11);
}

uint64_t sub_261B687E8()
{
  sub_261B59DEC(v0 + 16, v0 + 240);
  v1 = swift_task_alloc();
  *(v0 + 656) = v1;
  *v1 = v0;
  v1[1] = sub_261B688B0;
  v2 = *(v0 + 536);

  return sub_261C56650(v2, "UpdateListAppIntent", 19, 2, v0 + 16);
}

uint64_t sub_261B688B0()
{
  v2 = *v1;
  *(*v1 + 664) = v0;

  v3 = *(v2 + 648);
  v4 = *(v2 + 640);
  if (v0)
  {
    v5 = sub_261B68EA4;
  }

  else
  {
    v5 = sub_261B689EC;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_261B689EC()
{

  v1 = *(v0 + 624);
  v2 = *(v0 + 616);

  return MEMORY[0x2822009F8](sub_261B68A54, v2, v1);
}

uint64_t sub_261B68A54()
{
  v30 = v0;
  v1 = v0[69];
  v2 = v0[68];
  v4 = v0[63];
  v3 = v0[64];

  sub_261B01D28(&qword_27FEDABB0, &qword_27FEDABA8, &qword_261D03840, MEMORY[0x277CBA268]);
  sub_261CFC964();
  sub_261B425D4(v3, v4);
  if ((*(v1 + 48))(v4, 1, v2) == 1)
  {
    v5 = v0[62];
    v6 = v0[60];
    v7 = v0[61];
    sub_261B59E9C(v0[63]);
    sub_261CFD704();
    v8 = sub_261CFD714();
    v10 = v9;
    (*(v7 + 8))(v5, v6);
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
      v29[0] = v15;
      *v14 = 136315650;
      v16 = sub_261B879C8(v8, v10, v29);

      *(v14 + 4) = v16;
      *(v14 + 12) = 2048;
      *(v14 + 14) = 231;
      *(v14 + 22) = 2080;
      *(v14 + 24) = sub_261B879C8(0xD000000000000049, 0x8000000261D188E0, v29);
      _os_log_impl(&dword_261AE2000, v12, v13, "Value is unexpectedly nil {source: %s:%ld, description: %s}", v14, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x26671D560](v15, -1, -1);
      MEMORY[0x26671D560](v14, -1, -1);
    }

    else
    {
    }

    v23 = v0[67];
    v24 = v0[66];
    v25 = v0[65];
    v26 = v0[64];
    sub_261B01D70();
    swift_allocError();
    *v27 = 20;
    swift_willThrow();
    sub_261B59E48((v0 + 2));
    sub_261B59E9C(v26);
    (*(v24 + 8))(v23, v25);

    v22 = v0[1];
  }

  else
  {
    v17 = v0[70];
    v18 = v0[67];
    v19 = v0[66];
    v20 = v0[65];
    v21 = v0[64];
    sub_261B01E2C(v0[63], v17);
    sub_261B59E9C(v21);
    (*(v19 + 8))(v18, v20);
    sub_261B5F3AC(&qword_280D22790, &protocol conformance descriptor for ListEntity);
    sub_261CFC994();
    sub_261B59E48((v0 + 2));
    sub_261B0A1F0(v17);

    v22 = v0[1];
  }

  return v22();
}

uint64_t sub_261B68EA4()
{

  v1 = *(v0 + 624);
  v2 = *(v0 + 616);

  return MEMORY[0x2822009F8](sub_261B68F0C, v2, v1);
}

uint64_t sub_261B68F0C()
{

  sub_261B59E48(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_261B68FC8(uint64_t a1)
{
  v2 = type metadata accessor for ListEntity(0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_261B0A18C(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_261CFCBC4();
  return sub_261B0A1F0(a1);
}

uint64_t (*sub_261B69058(uint64_t *a1))()
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

uint64_t (*sub_261B69114(uint64_t *a1))()
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

uint64_t sub_261B69188()
{
  if (qword_27FED98F8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return sub_261CFCDA4();
}

uint64_t sub_261B69200@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED98F0 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD6A4();
  v3 = __swift_project_value_buffer(v2, qword_27FEDADB8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_261B692AC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_261AF43A8;

  return UpdateListBadgeAppIntent.perform()(a1);
}

uint64_t sub_261B69348(uint64_t a1)
{
  v2 = sub_261B31A98();

  return MEMORY[0x28210B538](a1, v2);
}

unint64_t sub_261B693D0()
{
  result = qword_280D22C68;
  if (!qword_280D22C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D22C68);
  }

  return result;
}

unint64_t sub_261B69428()
{
  result = qword_280D22C78;
  if (!qword_280D22C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D22C78);
  }

  return result;
}

uint64_t sub_261B69510()
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
  __swift_allocate_value_buffer(v6, qword_27FEDADE8);
  __swift_project_value_buffer(v6, qword_27FEDADE8);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v1 + 104))(v3, *MEMORY[0x277CC9110], v0);
  return sub_261CFD6C4();
}

uint64_t static UpdateListColorAppIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED9900 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD6A4();
  v3 = __swift_project_value_buffer(v2, qword_27FEDADE8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static UpdateListColorAppIntent.description.getter@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_261B69AB8(uint64_t a1, uint64_t *a2)
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

uint64_t UpdateListColorAppIntent.entity.setter(uint64_t a1)
{
  v2 = type metadata accessor for ListEntity(0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_261B0A18C(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_261CFCBC4();
  return sub_261B0A1F0(a1);
}

uint64_t (*UpdateListColorAppIntent.entity.modify(uint64_t *a1))()
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

double sub_261B69D00@<D0>(uint64_t a1@<X8>)
{
  sub_261CFCBB4();
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 24) = v5;
  result = *&v6;
  *(a1 + 40) = v6;
  return result;
}

uint64_t sub_261B69D50(void *a1, uint64_t *a2)
{
  sub_261CFD104();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCBC4();
}

uint64_t (*UpdateListColorAppIntent.property.modify(uint64_t *a1))()
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

uint64_t sub_261B69F04()
{
  result = swift_getKeyPath();
  qword_27FEDAE00 = result;
  return result;
}

uint64_t static UpdateListColorAppIntent.binding.getter()
{
  if (qword_27FED9908 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return sub_261CFCDA4();
}

uint64_t static UpdateListColorAppIntent.binding.setter(uint64_t a1)
{
  if (qword_27FED9908 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27FEDAE00 = a1;
}

uint64_t (*static UpdateListColorAppIntent.binding.modify(uint64_t a1))(void)
{
  if (qword_27FED9908 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_261B6A0AC@<X0>(void *a1@<X8>)
{
  if (qword_27FED9908 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_27FEDAE00;
  return sub_261CFCDA4();
}

uint64_t sub_261B6A12C(uint64_t *a1)
{
  v1 = *a1;
  v2 = qword_27FED9908;
  sub_261CFCDA4();
  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27FEDAE00 = v1;
}

uint64_t UpdateListColorAppIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v56 = a1;
  v55 = sub_261CFD184();
  v57 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v54 = &v37 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1E8, &unk_261D02310);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v53 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v52 = &v37 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0C0, &unk_261D02500);
  MEMORY[0x28223BE20](v6 - 8);
  v50 = &v37 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  MEMORY[0x28223BE20](v8 - 8);
  v51 = &v37 - v9;
  v10 = sub_261CFD674();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_261CFD884();
  MEMORY[0x28223BE20](v14 - 8);
  v15 = sub_261CFFA44();
  MEMORY[0x28223BE20](v15 - 8);
  v16 = sub_261CFD6A4();
  v48 = v16;
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v37 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA298, &qword_261D02530);
  sub_261CFF9B4();
  sub_261CFD874();
  v20 = *(v11 + 104);
  v38 = *MEMORY[0x277CC9110];
  v19 = v38;
  v39 = v10;
  v20(v13, v38, v10);
  v41 = v20;
  v40 = v11 + 104;
  sub_261CFD6B4();
  sub_261CFF9B4();
  sub_261CFD874();
  v20(v13, v19, v10);
  v21 = v51;
  sub_261CFD6C4();
  v22 = *(v17 + 56);
  v47 = v17 + 56;
  v49 = v22;
  v22(v21, 0, 1, v16);
  v23 = type metadata accessor for ListEntity(0);
  (*(*(v23 - 8) + 56))(v50, 1, 1, v23);
  v24 = sub_261CFC834();
  v25 = *(v24 - 8);
  v26 = *(v25 + 56);
  v42 = v26;
  v43 = v25 + 56;
  v26(v52, 1, 1, v24);
  v26(v53, 1, 1, v24);
  v44 = *MEMORY[0x277CBA308];
  v27 = *(v57 + 104);
  v57 += 104;
  v45 = v27;
  v27(v54);
  sub_261B5F3AC(&qword_280D227A0, &protocol conformance descriptor for ListEntity);
  *v56 = sub_261CFCC34();
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAE08, &unk_261D047A0);
  sub_261CFF9B4();
  sub_261CFD874();
  v28 = v38;
  v29 = v39;
  v30 = v41;
  v41(v13, v38, v39);
  sub_261CFD6B4();
  sub_261CFF9B4();
  sub_261CFD874();
  v30(v13, v28, v29);
  v31 = v51;
  sub_261CFD6C4();
  v49(v31, 0, 1, v48);
  v62 = 0;
  v60 = 0u;
  v61 = 0u;
  v59 = 0u;
  v32 = v42;
  v42(v52, 1, 1, v24);
  v32(v53, 1, 1, v24);
  v45(v54, v44, v55);
  sub_261AFF5A0();
  v33 = sub_261CFCC34();
  v34 = v56;
  v56[1] = v33;
  *(v34 + 16) = 0;
  v35 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDABA0, &qword_261D03830);
  v58 = 0;
  sub_261AE4630();
  sub_261D002D4();
  sub_261CFC6B4();
  sub_261CFC6A4();
  result = sub_261CFC684();
  v35[3] = result;
  return result;
}

uint64_t UpdateListColorAppIntent.perform()(uint64_t a1)
{
  *(v2 + 504) = a1;
  v3 = sub_261CFD754();
  *(v2 + 512) = v3;
  *(v2 + 520) = *(v3 - 8);
  *(v2 + 528) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0C0, &unk_261D02500);
  *(v2 + 536) = swift_task_alloc();
  *(v2 + 544) = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDABA8, &qword_261D03840);
  *(v2 + 552) = v4;
  *(v2 + 560) = *(v4 - 8);
  *(v2 + 568) = swift_task_alloc();
  v5 = type metadata accessor for ListEntity(0);
  *(v2 + 576) = v5;
  *(v2 + 584) = *(v5 - 8);
  *(v2 + 592) = swift_task_alloc();
  *(v2 + 600) = swift_task_alloc();
  *(v2 + 608) = *v1;
  *(v2 + 704) = *(v1 + 16);
  *(v2 + 624) = *(v1 + 24);
  *(v2 + 632) = sub_261CFFD24();
  *(v2 + 640) = sub_261CFFD14();
  v7 = sub_261CFFCF4();
  *(v2 + 648) = v7;
  *(v2 + 656) = v6;

  return MEMORY[0x2822009F8](sub_261B6AC6C, v7, v6);
}

uint64_t sub_261B6AC6C()
{
  v14 = v0;
  v1 = *(v0 + 624);
  v2 = *(v0 + 704);
  v3 = *(v0 + 616);
  v4 = *(v0 + 608);
  v5 = *(v0 + 600);
  sub_261CFCBB4();
  sub_261CFC664();
  sub_261B7C4B8(v5, v0 + 464, v13);
  __swift_destroy_boxed_opaque_existential_0((v0 + 464));
  sub_261B0A1F0(v5);
  v6 = v13[5];
  *(v0 + 80) = v13[4];
  *(v0 + 96) = v6;
  *(v0 + 112) = v13[6];
  v7 = v13[1];
  *(v0 + 16) = v13[0];
  *(v0 + 32) = v7;
  v8 = v13[3];
  *(v0 + 48) = v13[2];
  *(v0 + 64) = v8;
  sub_261B59DEC(v0 + 16, v0 + 128);
  sub_261CFCBB4();
  *(v0 + 408) = *(v0 + 352);
  v9 = *(v0 + 376);
  *(v0 + 416) = *(v0 + 360);
  *(v0 + 432) = v9;
  *(v0 + 448) = *(v0 + 392);
  sub_261CFCBC4();
  sub_261B59E48(v0 + 16);
  sub_261B18AFC(0, v4, v3, v2, v1);
  *(v0 + 664) = sub_261CFFD14();
  v11 = sub_261CFFCF4();
  *(v0 + 672) = v11;
  *(v0 + 680) = v10;

  return MEMORY[0x2822009F8](sub_261B6ADE8, v11, v10);
}

uint64_t sub_261B6ADE8()
{
  sub_261B59DEC(v0 + 16, v0 + 240);
  v1 = swift_task_alloc();
  *(v0 + 688) = v1;
  *v1 = v0;
  v1[1] = sub_261B6AEB0;
  v2 = *(v0 + 568);

  return sub_261C56650(v2, "UpdateListAppIntent", 19, 2, v0 + 16);
}

uint64_t sub_261B6AEB0()
{
  v2 = *v1;
  *(*v1 + 696) = v0;

  v3 = *(v2 + 680);
  v4 = *(v2 + 672);
  if (v0)
  {
    v5 = sub_261B6B4B8;
  }

  else
  {
    v5 = sub_261B6AFEC;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_261B6AFEC()
{

  v1 = *(v0 + 656);
  v2 = *(v0 + 648);

  return MEMORY[0x2822009F8](sub_261B6B054, v2, v1);
}

uint64_t sub_261B6B054()
{
  v30 = v0;
  v1 = v0[73];
  v2 = v0[72];
  v3 = v0[68];
  v4 = v0[67];

  sub_261B01D28(&qword_27FEDABB0, &qword_27FEDABA8, &qword_261D03840, MEMORY[0x277CBA268]);
  sub_261CFC964();
  sub_261B425D4(v3, v4);
  if ((*(v1 + 48))(v4, 1, v2) == 1)
  {
    v5 = v0[66];
    v6 = v0[65];
    v7 = v0[64];
    sub_261B59E9C(v0[67]);
    sub_261CFD704();
    v8 = sub_261CFD714();
    v10 = v9;
    (*(v6 + 8))(v5, v7);
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
      v29[0] = v15;
      *v14 = 136315650;
      v16 = sub_261B879C8(v8, v10, v29);

      *(v14 + 4) = v16;
      *(v14 + 12) = 2048;
      *(v14 + 14) = 231;
      *(v14 + 22) = 2080;
      *(v14 + 24) = sub_261B879C8(0xD000000000000049, 0x8000000261D188E0, v29);
      _os_log_impl(&dword_261AE2000, v12, v13, "Value is unexpectedly nil {source: %s:%ld, description: %s}", v14, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x26671D560](v15, -1, -1);
      MEMORY[0x26671D560](v14, -1, -1);
    }

    else
    {
    }

    v23 = v0[71];
    v24 = v0[70];
    v25 = v0[69];
    v26 = v0[68];
    sub_261B01D70();
    swift_allocError();
    *v27 = 20;
    swift_willThrow();
    sub_261B59E48((v0 + 2));
    sub_261B59E9C(v26);
    (*(v24 + 8))(v23, v25);

    v22 = v0[1];
  }

  else
  {
    v17 = v0[74];
    v18 = v0[71];
    v19 = v0[70];
    v20 = v0[69];
    v21 = v0[68];
    sub_261B01E2C(v0[67], v17);
    sub_261B59E9C(v21);
    (*(v19 + 8))(v18, v20);
    sub_261B5F3AC(&qword_280D22790, &protocol conformance descriptor for ListEntity);
    sub_261CFC994();
    sub_261B59E48((v0 + 2));
    sub_261B0A1F0(v17);

    v22 = v0[1];
  }

  return v22();
}

uint64_t sub_261B6B4B8()
{

  v1 = *(v0 + 656);
  v2 = *(v0 + 648);

  return MEMORY[0x2822009F8](sub_261B6B520, v2, v1);
}

uint64_t sub_261B6B520()
{

  sub_261B59E48(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_261B6B5E0(uint64_t a1)
{
  v2 = type metadata accessor for ListEntity(0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_261B0A18C(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_261CFCBC4();
  return sub_261B0A1F0(a1);
}

uint64_t (*sub_261B6B670(uint64_t *a1))()
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

uint64_t (*sub_261B6B730(uint64_t *a1))()
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

uint64_t sub_261B6B7A4()
{
  if (qword_27FED9908 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return sub_261CFCDA4();
}

uint64_t sub_261B6B81C@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED9900 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD6A4();
  v3 = __swift_project_value_buffer(v2, qword_27FEDADE8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_261B6B8C8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_261AF43A8;

  return UpdateListColorAppIntent.perform()(a1);
}

uint64_t sub_261B6B964(uint64_t a1)
{
  v2 = sub_261B31A44();

  return MEMORY[0x28210B538](a1, v2);
}

unint64_t sub_261B6B9EC()
{
  result = qword_280D22C50;
  if (!qword_280D22C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D22C50);
  }

  return result;
}

unint64_t sub_261B6BA44()
{
  result = qword_280D22C60;
  if (!qword_280D22C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D22C60);
  }

  return result;
}

void sub_261B6BB2C(uint64_t a1, unint64_t a2)
{
  if (qword_27FED9948 != -1)
  {
    swift_once();
  }

  v4 = sub_261CFF7A4();
  __swift_project_value_buffer(v4, qword_27FEDB1E0);
  sub_261CFD104();
  oslog = sub_261CFF784();
  v5 = sub_261CFFE84();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v9 = v7;
    *v6 = 136315394;
    *(v6 + 4) = sub_261B879C8(0xD000000000000014, 0x8000000261D19BC0, &v9);
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_261B879C8(a1, a2, &v9);
    _os_log_impl(&dword_261AE2000, oslog, v5, "Logging Analytics for query: %s.%s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26671D560](v7, -1, -1);
    MEMORY[0x26671D560](v6, -1, -1);
  }
}

void sub_261B6BCC0(uint64_t a1, unint64_t a2)
{
  if (qword_27FED9948 != -1)
  {
    swift_once();
  }

  v4 = sub_261CFF7A4();
  __swift_project_value_buffer(v4, qword_27FEDB1E0);
  sub_261CFD104();
  oslog = sub_261CFF784();
  v5 = sub_261CFFE84();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v9 = v7;
    *v6 = 136315394;
    *(v6 + 4) = sub_261B879C8(0xD000000000000012, 0x8000000261D04AE0, &v9);
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_261B879C8(a1, a2, &v9);
    _os_log_impl(&dword_261AE2000, oslog, v5, "Logging Analytics for query: %s.%s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26671D560](v7, -1, -1);
    MEMORY[0x26671D560](v6, -1, -1);
  }
}

void sub_261B6BE54(uint64_t a1, unint64_t a2)
{
  if (qword_27FED9948 != -1)
  {
    swift_once();
  }

  v4 = sub_261CFF7A4();
  __swift_project_value_buffer(v4, qword_27FEDB1E0);
  sub_261CFD104();
  oslog = sub_261CFF784();
  v5 = sub_261CFFE84();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v9 = v7;
    *v6 = 136315394;
    *(v6 + 4) = sub_261B879C8(0xD000000000000014, 0x8000000261D19B80, &v9);
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_261B879C8(a1, a2, &v9);
    _os_log_impl(&dword_261AE2000, oslog, v5, "Logging Analytics for query: %s.%s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26671D560](v7, -1, -1);
    MEMORY[0x26671D560](v6, -1, -1);
  }
}

void sub_261B6BFE8(uint64_t a1, unint64_t a2)
{
  if (qword_27FED9948 != -1)
  {
    swift_once();
  }

  v4 = sub_261CFF7A4();
  __swift_project_value_buffer(v4, qword_27FEDB1E0);
  sub_261CFD104();
  oslog = sub_261CFF784();
  v5 = sub_261CFFE84();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v9 = v7;
    *v6 = 136315394;
    *(v6 + 4) = sub_261B879C8(0xD000000000000010, 0x8000000261D19B60, &v9);
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_261B879C8(a1, a2, &v9);
    _os_log_impl(&dword_261AE2000, oslog, v5, "Logging Analytics for query: %s.%s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26671D560](v7, -1, -1);
    MEMORY[0x26671D560](v6, -1, -1);
  }
}

void sub_261B6C17C(uint64_t a1, unint64_t a2)
{
  if (qword_27FED9948 != -1)
  {
    swift_once();
  }

  v4 = sub_261CFF7A4();
  __swift_project_value_buffer(v4, qword_27FEDB1E0);
  sub_261CFD104();
  oslog = sub_261CFF784();
  v5 = sub_261CFFE84();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v9 = v7;
    *v6 = 136315394;
    *(v6 + 4) = sub_261B879C8(0xD000000000000015, 0x8000000261D19B40, &v9);
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_261B879C8(a1, a2, &v9);
    _os_log_impl(&dword_261AE2000, oslog, v5, "Logging Analytics for query: %s.%s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26671D560](v7, -1, -1);
    MEMORY[0x26671D560](v6, -1, -1);
  }
}

void sub_261B6C310(uint64_t a1, unint64_t a2)
{
  if (qword_27FED9948 != -1)
  {
    swift_once();
  }

  v4 = sub_261CFF7A4();
  __swift_project_value_buffer(v4, qword_27FEDB1E0);
  sub_261CFD104();
  oslog = sub_261CFF784();
  v5 = sub_261CFFE84();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v9 = v7;
    *v6 = 136315394;
    *(v6 + 4) = sub_261B879C8(0xD000000000000013, 0x8000000261D19B20, &v9);
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_261B879C8(a1, a2, &v9);
    _os_log_impl(&dword_261AE2000, oslog, v5, "Logging Analytics for query: %s.%s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26671D560](v7, -1, -1);
    MEMORY[0x26671D560](v6, -1, -1);
  }
}

void sub_261B6C4A4(uint64_t a1, unint64_t a2)
{
  if (qword_27FED9948 != -1)
  {
    swift_once();
  }

  v4 = sub_261CFF7A4();
  __swift_project_value_buffer(v4, qword_27FEDB1E0);
  sub_261CFD104();
  oslog = sub_261CFF784();
  v5 = sub_261CFFE84();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v9 = v7;
    *v6 = 136315394;
    *(v6 + 4) = sub_261B879C8(0x69746E457473694CLL, 0xEF79726575517974, &v9);
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_261B879C8(a1, a2, &v9);
    _os_log_impl(&dword_261AE2000, oslog, v5, "Logging Analytics for query: %s.%s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26671D560](v7, -1, -1);
    MEMORY[0x26671D560](v6, -1, -1);
  }
}

void sub_261B6C640(uint64_t a1, unint64_t a2)
{
  if (qword_27FED9948 != -1)
  {
    swift_once();
  }

  v4 = sub_261CFF7A4();
  __swift_project_value_buffer(v4, qword_27FEDB1E0);
  sub_261CFD104();
  oslog = sub_261CFF784();
  v5 = sub_261CFFE84();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v9 = v7;
    *v6 = 136315394;
    *(v6 + 4) = sub_261B879C8(0xD000000000000010, 0x8000000261D19B00, &v9);
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_261B879C8(a1, a2, &v9);
    _os_log_impl(&dword_261AE2000, oslog, v5, "Logging Analytics for query: %s.%s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26671D560](v7, -1, -1);
    MEMORY[0x26671D560](v6, -1, -1);
  }
}

uint64_t SectionEntityQuery.init()@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAE18, &qword_261D04970);
  sub_261AE4630();
  sub_261D002D4();
  sub_261CFC6B4();
  sub_261CFC6A4();
  result = sub_261CFC684();
  *a1 = result;
  return result;
}

uint64_t SectionEntityQuery.entities(for:)(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_261B6C884, 0, 0);
}

uint64_t sub_261B6C884()
{
  sub_261CFCDA4();
  sub_261CFD104();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_261B0E3F8;
  v3 = v0[2];
  v2 = v0[3];

  return sub_261C5E608("SectionEntityQuery.entitiesForIdentifiers", 41, 2, v2, v3);
}

uint64_t SectionEntityQuery.suggestedEntities()(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_261B6C978, 0, 0);
}

uint64_t sub_261B6C978()
{
  sub_261CFCDA4();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_261B6EAB8;
  v2 = v0[2];
  v3 = v0[3];

  return sub_261C57094(v2, "SectionEntityQuery.suggestedEntities", 36, 2, v3);
}

uint64_t sub_261B6CA3C@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAE18, &qword_261D04970);
  sub_261AE4630();
  sub_261D002D4();
  sub_261CFC6B4();
  sub_261CFC6A4();
  result = sub_261CFC684();
  *a1 = result;
  return result;
}

uint64_t sub_261B6CAC8(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_261B6CAEC, 0, 0);
}

uint64_t sub_261B6CAEC()
{
  sub_261CFCDA4();
  sub_261CFD104();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_261B0D104;
  v3 = v0[2];
  v2 = v0[3];

  return sub_261C5E608("SectionEntityQuery.entitiesForIdentifiers", 41, 2, v2, v3);
}

uint64_t sub_261B6CBBC(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_261B6CBE0, 0, 0);
}

uint64_t sub_261B6CBE0()
{
  sub_261CFCDA4();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_261B6CCA4;
  v2 = v0[2];
  v3 = v0[3];

  return sub_261C57094(v2, "SectionEntityQuery.suggestedEntities", 36, 2, v3);
}

uint64_t sub_261B6CCA4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_261B6CD98(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_261B6E1C4();
  *v5 = v2;
  v5[1] = sub_261AF43A8;

  return MEMORY[0x28210B618](a1, a2, v6);
}

uint64_t SectionEntityQuery.entities(matching:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[2] = a1;
  v4[3] = a2;
  v5 = *v3;
  v4[4] = a3;
  v4[5] = v5;
  return MEMORY[0x2822009F8](sub_261B6CE74, 0, 0);
}

uint64_t sub_261B6CE74()
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

  return sub_261C57978(v4, "SectionEntityQuery.entitiesMatchingString", 41, 2, v2, v5, v3);
}

uint64_t sub_261B6CF48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a3;
  v4[11] = a4;
  v4[8] = a1;
  v4[9] = a2;
  return MEMORY[0x2822009F8](sub_261B6CF6C, 0, 0);
}

uint64_t sub_261B6CF6C()
{
  v1 = v0[9];
  sub_261B6BCC0(0xD000000000000013, 0x8000000261D19BA0);
  sub_261CFC664();
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v0[7] = v1;
  v9 = (*(v3 + 16) + **(v3 + 16));
  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_261B6D0DC;
  v5 = v0[10];
  v6 = v0[11];
  v7 = v0[8];

  return v9(v7, v0 + 7, v5, v6, v2, v3);
}

uint64_t sub_261B6D0DC()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_261B6D254;
  }

  else
  {
    v2 = sub_261B6D1F0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_261B6D1F0()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_261B6D254()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_261B6D2B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[2] = a1;
  v4[3] = a2;
  v5 = *v3;
  v4[4] = a3;
  v4[5] = v5;
  return MEMORY[0x2822009F8](sub_261B6D2E0, 0, 0);
}

uint64_t sub_261B6D2E0()
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

  return sub_261C57978(v4, "SectionEntityQuery.entitiesMatchingString", 41, 2, v2, v5, v3);
}

uint64_t sub_261B6D3B4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_261B6D4A8@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v29 = a2;
  v30 = a3;
  v31 = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAE58, &qword_261D04B78);
  v5 = *(v4 - 8);
  v32 = v4;
  v33 = v5;
  MEMORY[0x28223BE20](v4);
  v26 = &v26 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAE60, &qword_261D04B80);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAE68, &qword_261D04B88);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v26 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAE70, &qword_261D04B90);
  v16 = *(v15 - 8);
  v27 = v15;
  v28 = v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v26 - v17;
  sub_261B01D28(&qword_27FEDAE78, &qword_27FEDAE60, &qword_261D04B80, MEMORY[0x277CC90F8]);
  sub_261CFD634();
  swift_getKeyPath();
  sub_261CFD604();

  (*(v8 + 8))(v10, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAE80, &unk_261D04BC0);
  type metadata accessor for ListEntity(0);
  v19 = MEMORY[0x277CC90C0];
  sub_261B01D28(&qword_27FEDAE88, &qword_27FEDAE68, &qword_261D04B88, MEMORY[0x277CC90C0]);
  sub_261B01D28(&qword_27FEDAE90, &qword_27FEDAE80, &unk_261D04BC0, v19);
  sub_261CFD614();
  (*(v12 + 8))(v14, v11);
  v34 = v29;
  v35 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAE98, &qword_261D0AAA0);
  v20 = v26;
  sub_261CFD624();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAEA0, &qword_261D04BD0);
  v22 = v31;
  *(v31 + 24) = v21;
  v22[4] = sub_261B6E618();
  __swift_allocate_boxed_opaque_existential_1(v22);
  sub_261B01D28(&qword_27FEDAF08, &qword_27FEDAE70, &qword_261D04B90, MEMORY[0x277CC8F70]);
  sub_261B01D28(&qword_27FEDAF10, &qword_27FEDAE58, &qword_261D04B78, MEMORY[0x277CC9080]);
  sub_261B6EA4C(&qword_27FEDAF18, MEMORY[0x277D837F8], MEMORY[0x277D84F50]);
  v23 = v27;
  v24 = v32;
  sub_261CFD5F4();
  (*(v33 + 8))(v20, v24);
  return (*(v28 + 8))(v18, v23);
}

uint64_t sub_261B6D9B4(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAEE8, &qword_261D04BE0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAED8, &qword_261D04BD8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  sub_261B01D28(&qword_27FEDAF20, &qword_27FEDAEE8, &qword_261D04BE0, MEMORY[0x277CC90F8]);
  sub_261CFD634();
  swift_getKeyPath();
  sub_261CFD604();

  (*(v2 + 8))(v4, v1);
  swift_getKeyPath();
  sub_261B01D28(&qword_27FEDAF28, &qword_27FEDAED8, &qword_261D04BD8, MEMORY[0x277CC90C0]);
  sub_261CFD604();

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_261B6DC04(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 112) = a4;
  *(v4 + 72) = a2;
  *(v4 + 80) = a3;
  *(v4 + 64) = a1;
  return MEMORY[0x2822009F8](sub_261B6DC2C, 0, 0);
}

void sub_261B6DC2C()
{
  v1 = v0[9];
  v2 = v0[10];
  sub_261B6BCC0(0xD000000000000028, 0x8000000261D19AD0);
  sub_261CFC664();
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v0[7] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAE50, &qword_261D04B68);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD940, &qword_261D04B70);
  v5 = *(v4 - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = swift_allocObject();
  v0[11] = v7;
  *(v7 + 16) = xmmword_261D03450;
  (*(v5 + 16))(v7 + v6, v2, v4);
  v9 = *(v3 + 24) + **(v3 + 24);
  v8 = swift_task_alloc();
  v0[12] = v8;
  *v8 = v0;
  v8[1] = sub_261B6DE84;

  __asm { BRAA            X8, X16 }
}

uint64_t sub_261B6DE84()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_261B6DFA0;
  }

  else
  {

    v2 = sub_261B6D1F0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_261B6DFA0()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_261B6E010()
{
  result = qword_27FEDAE20;
  if (!qword_27FEDAE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDAE20);
  }

  return result;
}

unint64_t sub_261B6E068()
{
  result = qword_27FEDAE28;
  if (!qword_27FEDAE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDAE28);
  }

  return result;
}

unint64_t sub_261B6E0F4()
{
  result = qword_27FEDAE30;
  if (!qword_27FEDAE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDAE30);
  }

  return result;
}

unint64_t sub_261B6E1C4()
{
  result = qword_27FEDAE48;
  if (!qword_27FEDAE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDAE48);
  }

  return result;
}

uint64_t dispatch thunk of SectionEntitySectionQueryPerforming.entities(query:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_261B01F5C;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of SectionEntitySectionQueryPerforming.entities(query:matching:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 16) + **(a6 + 16));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_261AF43A8;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of SectionEntitySectionQueryPerforming.entities(query:matching:mode:sortedBy:limit:excludeSectionlessSections:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, char a7, unsigned int a8, uint64_t a9, uint64_t a10)
{
  v20 = (*(a10 + 24) + **(a10 + 24));
  v18 = swift_task_alloc();
  *(v10 + 16) = v18;
  *v18 = v10;
  v18[1] = sub_261AF4BDC;

  return v20(a1, a2, a3, a4 & 1, a5, a6, a7 & 1, a8, a9, a10);
}

unint64_t sub_261B6E618()
{
  result = qword_27FEDAEA8;
  if (!qword_27FEDAEA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEDAEA0, &qword_261D04BD0);
    sub_261B6E6A4();
    sub_261B6E914();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDAEA8);
  }

  return result;
}

unint64_t sub_261B6E6A4()
{
  result = qword_27FEDAEB0;
  if (!qword_27FEDAEB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEDAE70, &qword_261D04B90);
    sub_261B6E730();
    sub_261B6E7E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDAEB0);
  }

  return result;
}

unint64_t sub_261B6E730()
{
  result = qword_27FEDAEB8;
  if (!qword_27FEDAEB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEDAE68, &qword_261D04B88);
    sub_261B01D28(&qword_27FEDAEC0, &qword_27FEDAE60, &qword_261D04B80, MEMORY[0x277CC90F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDAEB8);
  }

  return result;
}

unint64_t sub_261B6E7E0()
{
  result = qword_27FEDAEC8;
  if (!qword_27FEDAEC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEDAE80, &unk_261D04BC0);
    sub_261B6E864();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDAEC8);
  }

  return result;
}

unint64_t sub_261B6E864()
{
  result = qword_27FEDAED0;
  if (!qword_27FEDAED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEDAED8, &qword_261D04BD8);
    sub_261B01D28(&qword_27FEDAEE0, &qword_27FEDAEE8, &qword_261D04BE0, MEMORY[0x277CC90F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDAED0);
  }

  return result;
}

unint64_t sub_261B6E914()
{
  result = qword_27FEDAEF0;
  if (!qword_27FEDAEF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEDAE58, &qword_261D04B78);
    sub_261B6EA4C(&qword_27FEDAEF8, MEMORY[0x277D83808], MEMORY[0x277D84F58]);
    sub_261B6EA4C(&qword_27FEDAF00, MEMORY[0x277D837D8], MEMORY[0x277D84F40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDAEF0);
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_261B6EA4C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEDAE98, &qword_261D0AAA0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_261B6EC50()
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
  __swift_allocate_value_buffer(v6, qword_27FEDAF30);
  __swift_project_value_buffer(v6, qword_27FEDAF30);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v1 + 104))(v3, *MEMORY[0x277CC9110], v0);
  return sub_261CFD6C4();
}

uint64_t static UpdateListNameAppIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED9910 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD6A4();
  v3 = __swift_project_value_buffer(v2, qword_27FEDAF30);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static UpdateListNameAppIntent.description.getter@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_261B6F1F8(uint64_t a1, uint64_t *a2)
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

uint64_t UpdateListNameAppIntent.entity.setter(uint64_t a1)
{
  v2 = type metadata accessor for ListEntity(0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_261B0A18C(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_261CFCBC4();
  return sub_261B0A1F0(a1);
}

uint64_t (*UpdateListNameAppIntent.entity.modify(uint64_t *a1))()
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

void *sub_261B6F450@<X0>(void *a1@<X8>)
{
  result = sub_261CFCBB4();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_261B6F48C(uint64_t *a1, uint64_t *a2)
{
  sub_261CFD104();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCBC4();
}

uint64_t (*UpdateListNameAppIntent.property.modify(uint64_t *a1))()
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

uint64_t sub_261B6F5D0()
{
  result = swift_getKeyPath();
  qword_27FEDAF48 = result;
  return result;
}

uint64_t static UpdateListNameAppIntent.binding.getter()
{
  if (qword_27FED9918 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return sub_261CFCDA4();
}

uint64_t static UpdateListNameAppIntent.binding.setter(uint64_t a1)
{
  if (qword_27FED9918 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27FEDAF48 = a1;
}

uint64_t (*static UpdateListNameAppIntent.binding.modify(uint64_t a1))(void)
{
  if (qword_27FED9918 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_261B6F778@<X0>(void *a1@<X8>)
{
  if (qword_27FED9918 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_27FEDAF48;
  return sub_261CFCDA4();
}

uint64_t sub_261B6F7F8(uint64_t *a1)
{
  v1 = *a1;
  v2 = qword_27FED9918;
  sub_261CFCDA4();
  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27FEDAF48 = v1;
}

uint64_t UpdateListNameAppIntent.init()@<X0>(uint64_t *a1@<X8>)
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
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0C0, &unk_261D02500);
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
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA298, &qword_261D02530);
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
  v25 = type metadata accessor for ListEntity(0);
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
  sub_261B5A458(&qword_280D227A0, type metadata accessor for ListEntity, &protocol conformance descriptor for ListEntity);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDABA0, &qword_261D03830);
  v61 = 0;
  sub_261AE4630();
  sub_261D002D4();
  sub_261CFC6B4();
  sub_261CFC6A4();
  result = sub_261CFC684();
  v36[2] = result;
  return result;
}

uint64_t UpdateListNameAppIntent.perform()(uint64_t a1)
{
  *(v2 + 456) = a1;
  v3 = sub_261CFD754();
  *(v2 + 464) = v3;
  *(v2 + 472) = *(v3 - 8);
  *(v2 + 480) = swift_task_alloc();
  v4 = sub_261CFC9D4();
  *(v2 + 488) = v4;
  *(v2 + 496) = *(v4 - 8);
  *(v2 + 504) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0C0, &unk_261D02500);
  *(v2 + 512) = swift_task_alloc();
  *(v2 + 520) = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDABA8, &qword_261D03840);
  *(v2 + 528) = v5;
  *(v2 + 536) = *(v5 - 8);
  *(v2 + 544) = swift_task_alloc();
  v6 = type metadata accessor for ListEntity(0);
  *(v2 + 552) = v6;
  *(v2 + 560) = *(v6 - 8);
  *(v2 + 568) = swift_task_alloc();
  *(v2 + 576) = swift_task_alloc();
  *(v2 + 584) = *v1;
  *(v2 + 600) = *(v1 + 16);
  *(v2 + 608) = sub_261CFFD24();
  *(v2 + 616) = sub_261CFFD14();
  v8 = sub_261CFFCF4();
  *(v2 + 624) = v8;
  *(v2 + 632) = v7;

  return MEMORY[0x2822009F8](sub_261B703F4, v8, v7);
}

uint64_t sub_261B703F4()
{
  v14 = v0;
  v1 = *(v0 + 600);
  v2 = *(v0 + 592);
  v3 = *(v0 + 584);
  v4 = *(v0 + 576);
  sub_261CFCBB4();
  sub_261CFC664();
  sub_261B7C4B8(v4, v0 + 352, v13);
  __swift_destroy_boxed_opaque_existential_0((v0 + 352));
  sub_261B0A1F0(v4);
  v5 = v13[5];
  *(v0 + 80) = v13[4];
  *(v0 + 96) = v5;
  *(v0 + 112) = v13[6];
  v6 = v13[1];
  *(v0 + 16) = v13[0];
  *(v0 + 32) = v6;
  v7 = v13[3];
  *(v0 + 48) = v13[2];
  *(v0 + 64) = v7;
  sub_261B59DEC(v0 + 16, v0 + 128);
  sub_261CFCBB4();
  v8 = *(v0 + 400);
  *(v0 + 408) = *(v0 + 392);
  *(v0 + 416) = v8;
  sub_261CFCBC4();
  sub_261CFCBB4();
  v9 = *(v0 + 432);
  *(v0 + 440) = *(v0 + 424);
  *(v0 + 448) = v9;
  sub_261CFCBC4();
  sub_261B59E48(v0 + 16);
  sub_261B198D4(0, v3, v2, v1);
  *(v0 + 640) = sub_261CFFD14();
  v11 = sub_261CFFCF4();
  *(v0 + 648) = v11;
  *(v0 + 656) = v10;

  return MEMORY[0x2822009F8](sub_261B7056C, v11, v10);
}

uint64_t sub_261B7056C()
{
  sub_261B59DEC(v0 + 16, v0 + 240);
  v1 = swift_task_alloc();
  *(v0 + 664) = v1;
  *v1 = v0;
  v1[1] = sub_261B70634;
  v2 = *(v0 + 544);

  return sub_261C56650(v2, "UpdateListAppIntent", 19, 2, v0 + 16);
}

uint64_t sub_261B70634()
{
  v2 = *v1;
  *(*v1 + 672) = v0;

  v3 = *(v2 + 656);
  v4 = *(v2 + 648);
  if (v0)
  {
    v5 = sub_261B70CEC;
  }

  else
  {
    v5 = sub_261B70770;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_261B70770()
{

  v1 = *(v0 + 632);
  v2 = *(v0 + 624);

  return MEMORY[0x2822009F8](sub_261B707D8, v2, v1);
}

uint64_t sub_261B707D8()
{
  v37 = v0;
  v1 = v0[70];
  v2 = v0[69];
  v3 = v0[65];
  v4 = v0[64];

  sub_261B01D28(&qword_27FEDABB0, &qword_27FEDABA8, &qword_261D03840, MEMORY[0x277CBA268]);
  sub_261CFC964();
  sub_261B425D4(v3, v4);
  if ((*(v1 + 48))(v4, 1, v2) == 1)
  {
    v6 = v0[59];
    v5 = v0[60];
    v7 = v0[58];
    sub_261B59E9C(v0[64]);
    sub_261CFD704();
    v8 = sub_261CFD714();
    v10 = v9;
    (*(v6 + 8))(v5, v7);
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
      v36[0] = v15;
      *v14 = 136315650;
      v16 = sub_261B879C8(v8, v10, v36);

      *(v14 + 4) = v16;
      *(v14 + 12) = 2048;
      *(v14 + 14) = 231;
      *(v14 + 22) = 2080;
      *(v14 + 24) = sub_261B879C8(0xD000000000000049, 0x8000000261D188E0, v36);
      _os_log_impl(&dword_261AE2000, v12, v13, "Value is unexpectedly nil {source: %s:%ld, description: %s}", v14, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x26671D560](v15, -1, -1);
      MEMORY[0x26671D560](v14, -1, -1);
    }

    else
    {
    }

    v26 = v0[68];
    v27 = v0[67];
    v28 = v0[66];
    v29 = v0[65];
    sub_261B01D70();
    swift_allocError();
    *v30 = 20;
    swift_willThrow();
    sub_261B59E48((v0 + 2));
    sub_261B59E9C(v29);
    (*(v27 + 8))(v26, v28);

    v25 = v0[1];
  }

  else
  {
    v17 = v0[72];
    v18 = v0[71];
    v19 = v0[68];
    v20 = v0[67];
    v21 = v0[66];
    v22 = v0[65];
    v23 = v0[63];
    v35 = v0[62];
    v24 = v0[60];
    v33 = v0[57];
    v34 = v0[61];
    sub_261B01E2C(v0[64], v18);
    sub_261B59E9C(v22);
    (*(v20 + 8))(v19, v21);
    sub_261CFCBB4();
    sub_261BBF268(v24, v32, v33);
    sub_261B0A1F0(v17);
    sub_261CFC9E4();
    sub_261B5A458(&qword_280D22790, type metadata accessor for ListEntity, &protocol conformance descriptor for ListEntity);
    sub_261B5A458(&qword_27FEDA3C0, MEMORY[0x277CB9DE0], MEMORY[0x277CB9DD8]);
    sub_261CFC984();
    sub_261B59E48((v0 + 2));
    (*(v35 + 8))(v23, v34);
    sub_261B0A1F0(v18);

    v25 = v0[1];
  }

  return v25();
}

uint64_t sub_261B70CEC()
{

  v1 = *(v0 + 632);
  v2 = *(v0 + 624);

  return MEMORY[0x2822009F8](sub_261B70D54, v2, v1);
}

uint64_t sub_261B70D54()
{

  sub_261B59E48(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t static UpdateListNameAppIntent.parameterSummary.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAF50, &qword_261D04D38);
  MEMORY[0x28223BE20](v0 - 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAF58, &qword_261D04D40);
  MEMORY[0x28223BE20](v1);
  sub_261B319F0();
  sub_261CFD164();
  sub_261CFD154();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAF60, &qword_261D04D70);
  sub_261CFD144();

  sub_261CFD154();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAF68, &unk_261D04DA0);
  sub_261CFD144();

  sub_261CFD154();
  sub_261CFD174();
  return sub_261CFD124();
}

uint64_t sub_261B71010(uint64_t a1)
{
  v2 = type metadata accessor for ListEntity(0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_261B0A18C(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_261CFCBC4();
  return sub_261B0A1F0(a1);
}

uint64_t (*sub_261B710A0(uint64_t *a1))()
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

void *sub_261B71114@<X0>(void *a1@<X8>)
{
  result = sub_261CFCBB4();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t (*sub_261B71188(uint64_t *a1))()
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

uint64_t sub_261B711FC()
{
  if (qword_27FED9918 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return sub_261CFCDA4();
}

uint64_t sub_261B71274@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED9910 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD6A4();
  v3 = __swift_project_value_buffer(v2, qword_27FEDAF30);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_261B71324(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_261AF43A8;

  return UpdateListNameAppIntent.perform()(a1);
}

uint64_t sub_261B713C0(uint64_t a1)
{
  v2 = sub_261B319F0();

  return MEMORY[0x28210B538](a1, v2);
}

unint64_t sub_261B71448()
{
  result = qword_280D22C98;
  if (!qword_280D22C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D22C98);
  }

  return result;
}

unint64_t sub_261B714A0()
{
  result = qword_280D22CA8;
  if (!qword_280D22CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D22CA8);
  }

  return result;
}

uint64_t sub_261B71554()
{
  v0 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v0, qword_27FEDAF88);
  v1 = __swift_project_value_buffer(v0, qword_27FEDAF88);
  if (qword_280D22880 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D26FF8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_261B7161C()
{
  v2 = v1;
  v3 = sub_261CFE674();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27FED9920 != -1)
  {
    swift_once();
  }

  v7 = sub_261CFF7A4();
  __swift_project_value_buffer(v7, qword_27FEDAF88);
  v8 = v0;
  v9 = sub_261CFF784();
  v10 = sub_261CFFE84();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v31 = v3;
    v12 = v11;
    v13 = swift_slowAlloc();
    v28 = v6;
    v29 = v1;
    v14 = v4;
    v15 = v13;
    v30[0] = v13;
    *v12 = 136315138;
    v16 = RemindersInCalendarUtilities.ReminderSpecifier.description.getter();
    v18 = sub_261B879C8(v16, v17, v30);

    *(v12 + 4) = v18;
    _os_log_impl(&dword_261AE2000, v9, v10, "RemindersInCalendar: fetch reminder to generate text description {specifiers: %s}", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    v19 = v15;
    v4 = v14;
    v6 = v28;
    v2 = v29;
    MEMORY[0x26671D560](v19, -1, -1);
    v20 = v12;
    v3 = v31;
    MEMORY[0x26671D560](v20, -1, -1);
  }

  sub_261CFE454();
  v21 = OBJC_IVAR____TtCO19RemindersAppIntents28RemindersInCalendarUtilities16ReminderDragItem_reminderSpecifier;
  if (qword_280D21E90 != -1)
  {
    swift_once();
  }

  v22 = sub_261CFE434();
  if (!v2)
  {
    v23 = v22;
    v24 = sub_261B026B0(v22, 1);
    sub_261CFE6B4();
    swift_allocObject();
    sub_261CFE6A4();
    (*(v4 + 104))(v6, *MEMORY[0x277D45E50], v3);
    sub_261CFE684();
    v30[3] = sub_261B71AAC();
    v30[4] = MEMORY[0x277D45E98];
    v30[0] = v23;
    v25 = v23;
    v21 = sub_261CFE694();

    __swift_destroy_boxed_opaque_existential_0(v30);
  }

  return v21;
}

id sub_261B71980()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t _s16ReminderDragItemCMa(uint64_t a1)
{
  result = qword_27FEDAFA8;
  if (!qword_27FEDAFA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_261B71A1C(uint64_t a1)
{
  result = type metadata accessor for RemindersInCalendarUtilities.ReminderSpecifier(319);
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_261B71AAC()
{
  result = qword_27FEDDF20;
  if (!qword_27FEDDF20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FEDDF20);
  }

  return result;
}

void sub_261B71AF8(unint64_t a1, unint64_t *a2, void *a3)
{
  v17 = MEMORY[0x277D84F90];
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = sub_261D00424() | 0x8000000000000000;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v4 = ~v7;
    v3 = a1 + 64;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v5 = v9 & *(a1 + 64);
    v6 = a1;
  }

  sub_261CFD104();
  v10 = 0;
  if ((v6 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v11 = v10;
    v12 = v5;
    v13 = v10;
    if (!v5)
    {
      break;
    }

LABEL_12:
    v5 = (v12 - 1) & v12;
    if (!*(*(v6 + 56) + ((v13 << 9) | (8 * __clz(__rbit64(v12))))))
    {
LABEL_20:
      sub_261AE6F74(v6);
      return;
    }

    while (1)
    {
      MEMORY[0x26671C310]();
      if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_261CFFC84();
      }

      sub_261CFFCB4();
      v10 = v13;
      if ((v6 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_261D004B4())
      {
        swift_unknownObjectRelease();
        sub_261B05020(0, a2, a3);
        swift_dynamicCast();
        v13 = v10;
        if (v16)
        {
          continue;
        }
      }

      goto LABEL_20;
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= ((v4 + 64) >> 6))
    {
      goto LABEL_20;
    }

    v12 = *(v3 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_261B71D20()
{
  v0 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v0, qword_27FEDAFB8);
  v1 = __swift_project_value_buffer(v0, qword_27FEDAFB8);
  if (qword_280D22888 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D27010);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_261B71EBC()
{
  v87 = v0;
  v86 = *MEMORY[0x277D85DE8];
  v1 = v0[11];
  v2 = v0[10];

  *&v83 = v2;
  *(&v83 + 1) = v1;
  v82[0] = 0;
  v3 = sub_261B729F4(v82);
  *&v83 = v2;
  *(&v83 + 1) = v1;
  v82[0] = 1;
  v4 = sub_261B729F4(v82);
  if (v3 >> 62)
  {
    v5 = sub_261D00274();
  }

  else
  {
    v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = v4 >> 62;
  v7 = 0x27FED9000uLL;
  if (!v5)
  {
    if (!v6)
    {
      if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_6;
      }

LABEL_25:

      if (qword_27FED9928 == -1)
      {
LABEL_26:
        v31 = sub_261CFF7A4();
        __swift_project_value_buffer(v31, qword_27FEDAFB8);
        v32 = sub_261CFF784();
        v33 = sub_261CFFE64();
        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          *v34 = 0;
          _os_log_impl(&dword_261AE2000, v32, v33, "[DeleteSectionsAppIntentPerforming] Delete sections failed because the list or section IDs array has no valid inputs.", v34, 2u);
          MEMORY[0x26671D560](v34, -1, -1);
        }

        sub_261B01D70();
        swift_allocError();
        *v35 = 24;
        swift_willThrow();
        goto LABEL_56;
      }

LABEL_66:
      swift_once();
      goto LABEL_26;
    }

    if (!sub_261D00274())
    {
      goto LABEL_25;
    }
  }

LABEL_6:
  v8 = *(v0[9] + 16);
  v81 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];
  [v81 setSaveIsNoopIfNoChangedKeys_];
  if (!v5)
  {
    goto LABEL_31;
  }

  if (qword_27FED9928 != -1)
  {
    swift_once();
  }

  v9 = sub_261CFF7A4();
  __swift_project_value_buffer(v9, qword_27FEDAFB8);
  sub_261CFD104();
  v10 = sub_261CFF784();
  v11 = sub_261CFFE84();

  v79 = v4 >> 62;
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *&v83 = v13;
    *v12 = 136446210;
    v14 = sub_261B05020(0, &qword_280D21DF0, 0x277D44700);
    v15 = MEMORY[0x26671C340](v3, v14);
    v17 = sub_261B879C8(v15, v16, &v83);

    *(v12 + 4) = v17;
    v7 = 0x27FED9000uLL;
    _os_log_impl(&dword_261AE2000, v10, v11, "[DeleteRemindersAppIntent] Delete list sections with ids: %{public}s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x26671D560](v13, -1, -1);
    MEMORY[0x26671D560](v12, -1, -1);
  }

  sub_261B05020(0, &qword_280D21DF0, 0x277D44700);
  v18 = sub_261CFFC54();

  v0[5] = 0;
  v19 = [v8 fetchListSectionsWithObjectIDs:v18 error:v0 + 5];

  v20 = v0[5];
  if (!v19)
  {
    v30 = v20;

    sub_261CFD654();

LABEL_55:
    swift_willThrow();

    goto LABEL_56;
  }

  sub_261B05020(0, &qword_27FEDA5E0, 0x277D44698);
  sub_261B3B918();
  v21 = sub_261CFF8F4();
  v22 = v20;

  sub_261B71AF8(v21, &qword_27FEDA5E0, 0x277D44698);
  v24 = v23;

  if (v24 >> 62)
  {
    v25 = sub_261D00274();
    if (v25)
    {
      goto LABEL_14;
    }

LABEL_30:
    v6 = v4 >> 62;
    goto LABEL_31;
  }

  v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v25)
  {
    goto LABEL_30;
  }

LABEL_14:
  v78 = v4;
  sub_261CFDD24();
  if (v25 < 1)
  {
    __break(1u);
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v26 = 0;
  do
  {
    if ((v24 & 0xC000000000000001) != 0)
    {
      v27 = MEMORY[0x26671CA10](v26, v24);
    }

    else
    {
      v27 = *(v24 + 8 * v26 + 32);
    }

    v28 = v27;
    ++v26;
    v0[6] = [v27 list];
    v85 = 0;
    v83 = 0u;
    v84 = 0u;
    v29 = v81;
    sub_261CFDF24();
    sub_261CFDCD4();
  }

  while (v25 != v26);
  v7 = 0x27FED9000;
  v4 = v78;
  v6 = v79;
LABEL_31:

  if (v6)
  {
    if (!sub_261D00274())
    {
      goto LABEL_47;
    }
  }

  else if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_47;
  }

  if (*(v7 + 2344) != -1)
  {
    swift_once();
  }

  v36 = sub_261CFF7A4();
  __swift_project_value_buffer(v36, qword_27FEDAFB8);
  sub_261CFD104();
  v37 = sub_261CFF784();
  v38 = sub_261CFFE84();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    *&v83 = v80;
    *v39 = 136446210;
    v40 = sub_261B05020(0, &qword_280D21DF0, 0x277D44700);
    v41 = MEMORY[0x26671C340](v4, v40);
    v43 = v7;
    v44 = sub_261B879C8(v41, v42, &v83);

    *(v39 + 4) = v44;
    v7 = v43;
    _os_log_impl(&dword_261AE2000, v37, v38, "[DeleteRemindersAppIntent] Delete smart list sections with ids: %{public}s", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v80);
    MEMORY[0x26671D560](v80, -1, -1);
    MEMORY[0x26671D560](v39, -1, -1);
  }

  sub_261B05020(0, &qword_280D21DF0, 0x277D44700);
  v45 = sub_261CFFC54();

  v0[5] = 0;
  v46 = [v8 fetchSmartListSectionsWithObjectIDs:v45 error:v0 + 5];

  v47 = v0[5];
  if (!v46)
  {
    v76 = v47;
    sub_261CFD654();

    goto LABEL_55;
  }

  sub_261B05020(0, &qword_27FEDA5E8, 0x277D44818);
  sub_261B3B918();
  v48 = sub_261CFF8F4();
  v49 = v47;

  sub_261B71AF8(v48, &qword_27FEDA5E8, 0x277D44818);
  v51 = v50;

  if (v51 >> 62)
  {
    v52 = sub_261D00274();
    if (v52)
    {
LABEL_40:
      sub_261CFE184();
      if (v52 >= 1)
      {
        v53 = 0;
        v54 = v51;
        v55 = v51 & 0xC000000000000001;
        do
        {
          if (v55)
          {
            v56 = MEMORY[0x26671CA10](v53, v54);
          }

          else
          {
            v56 = *(v54 + 8 * v53 + 32);
          }

          v57 = v56;
          ++v53;
          v0[6] = [v56 smartList];
          v85 = 0;
          v83 = 0u;
          v84 = 0u;
          v58 = v81;
          sub_261CFDF24();
          sub_261CFE174();
        }

        while (v52 != v53);
        v7 = 0x27FED9000uLL;
        goto LABEL_47;
      }

      goto LABEL_65;
    }
  }

  else
  {
    v52 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v52)
    {
      goto LABEL_40;
    }
  }

LABEL_47:

  v0[5] = 0;
  v59 = [v81 saveSynchronouslyWithError_];
  v60 = v0[5];
  if (v59)
  {
    v61 = v0[8];
    v61[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAFD0, &qword_261D072B0);
    v61[4] = sub_261B730AC();
    __swift_allocate_boxed_opaque_existential_1(v61);
    v62 = v60;
    sub_261CFC9A4();

    v63 = v0[1];
    goto LABEL_57;
  }

  v64 = v60;
  v65 = sub_261CFD654();

  swift_willThrow();
  if (*(v7 + 2344) != -1)
  {
    swift_once();
  }

  v66 = sub_261CFF7A4();
  __swift_project_value_buffer(v66, qword_27FEDAFB8);
  v67 = v65;
  v68 = sub_261CFF784();
  v69 = sub_261CFFE64();

  if (os_log_type_enabled(v68, v69))
  {
    v70 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    *&v83 = v71;
    *v70 = 136315138;
    swift_getErrorValue();
    v72 = sub_261D00674();
    v74 = sub_261B879C8(v72, v73, &v83);

    *(v70 + 4) = v74;
    _os_log_impl(&dword_261AE2000, v68, v69, "[DeleteSectionsAppIntentPerforming] Delete sections failed with save error: %s", v70, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v71);
    MEMORY[0x26671D560](v71, -1, -1);
    MEMORY[0x26671D560](v70, -1, -1);
  }

  sub_261B01D70();
  swift_allocError();
  *v75 = 19;
  swift_willThrow();

LABEL_56:
  v63 = v0[1];
LABEL_57:

  return v63();
}

uint64_t sub_261B729F4(unsigned __int8 *a1)
{
  v39 = type metadata accessor for AppEntityID(0);
  MEMORY[0x28223BE20](v39);
  v38 = &v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for SectionEntityID(0);
  MEMORY[0x28223BE20](v44);
  v42 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0C0, &unk_261D02500);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v37 - v5;
  v41 = type metadata accessor for ListEntity(0);
  v7 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v49 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SectionEntity(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  sub_261CFCBB4();
  v14 = v50;
  v50 = MEMORY[0x277D84F90];
  v15 = *(v14 + 16);
  if (v15)
  {
    v43 = v9;
    v48 = *(v9 + 36);
    v16 = *(v10 + 80);
    v37 = v14;
    v17 = v14 + ((v16 + 32) & ~v16);
    v18 = *(v10 + 72);
    v19 = (v7 + 48);
    if (v13)
    {
      v20 = 0x6D536D6F74737563;
    }

    else
    {
      v20 = 1953720684;
    }

    v21 = 0xE400000000000000;
    if (v13)
    {
      v21 = 0xEF7473694C747261;
    }

    v45 = v21;
    v46 = v20;
    v40 = MEMORY[0x277D84F90];
    v23 = v41;
    v22 = v42;
    v47 = v18;
    while (1)
    {
      sub_261B73110(v17, v12, type metadata accessor for SectionEntity);
      sub_261CFCA04();
      if ((*v19)(v6, 1, v23) != 1)
      {
        break;
      }

      sub_261B731E0(v12, type metadata accessor for SectionEntity);
      sub_261B59E9C(v6);
LABEL_9:
      v17 += v18;
      if (!--v15)
      {

        return v40;
      }
    }

    v24 = v49;
    sub_261B73178(v6, v49, type metadata accessor for ListEntity);
    if (*(v24 + *(v23 + 84)))
    {
      v25 = 0x6D536D6F74737563;
    }

    else
    {
      v25 = 1953720684;
    }

    if (*(v24 + *(v23 + 84)))
    {
      v26 = 0xEF7473694C747261;
    }

    else
    {
      v26 = 0xE400000000000000;
    }

    if (v25 == v46 && v26 == v45)
    {
    }

    else
    {
      v28 = sub_261D00614();

      if ((v28 & 1) == 0)
      {
        sub_261B731E0(v49, type metadata accessor for ListEntity);
        v29 = type metadata accessor for SectionEntity;
        v30 = v12;
        goto LABEL_26;
      }
    }

    sub_261B73110(&v12[*(v43 + 24)], v22, type metadata accessor for SectionEntityID);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v31 = v38;
      sub_261B73178(v22, v38, type metadata accessor for AppEntityID);
      v32 = objc_allocWithZone(MEMORY[0x277D44700]);
      v33 = sub_261CFD814();
      v34 = sub_261CFFA54();
      [v32 initWithUUID:v33 entityName:{v34, v37}];

      sub_261B731E0(v49, type metadata accessor for ListEntity);
      sub_261B731E0(v31, type metadata accessor for AppEntityID);
      v35 = sub_261B731E0(v12, type metadata accessor for SectionEntity);
      MEMORY[0x26671C310](v35);
      if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_261CFFC84();
      }

      sub_261CFFCB4();
      v40 = v50;
      v23 = v41;
      v22 = v42;
      goto LABEL_30;
    }

    sub_261B731E0(v49, type metadata accessor for ListEntity);
    sub_261B731E0(v12, type metadata accessor for SectionEntity);
    v29 = type metadata accessor for SectionEntityID;
    v30 = v22;
LABEL_26:
    sub_261B731E0(v30, v29);
LABEL_30:
    v18 = v47;
    goto LABEL_9;
  }

  return MEMORY[0x277D84F90];
}