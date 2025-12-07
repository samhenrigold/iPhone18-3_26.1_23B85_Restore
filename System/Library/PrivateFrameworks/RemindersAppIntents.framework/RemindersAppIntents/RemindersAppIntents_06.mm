unint64_t sub_261B900C8(unint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v39 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
LABEL_43:
    v26 = a1;
    v37 = a1 & 0xFFFFFFFFFFFFFF8;
    v27 = a4;
    v28 = sub_261D00274();
    a4 = v27;
    v5 = v28;
    a1 = v26;
  }

  else
  {
    v37 = a1 & 0xFFFFFFFFFFFFFF8;
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v5)
  {
    v6 = 0;
    v29 = a1;
    v35 = a1 + 32;
    v36 = a1 & 0xC000000000000001;
    v7 = a2 + 56;
    v30 = MEMORY[0x277D84F90];
    v32 = a4;
    v33 = a4 & 0xC000000000000001;
    v34 = v5;
    while (1)
    {
      if (v36)
      {
        a1 = MEMORY[0x26671CA10](v6, v29);
      }

      else
      {
        if (v6 >= *(v37 + 16))
        {
          goto LABEL_42;
        }

        a1 = *(v35 + 8 * v6);
      }

      v8 = a1;
      if (__OFADD__(v6++, 1))
      {
        __break(1u);
LABEL_42:
        __break(1u);
        goto LABEL_43;
      }

      if ((a2 & 0xC000000000000001) != 0)
      {
        v10 = a1;
        v11 = sub_261D002B4();

        if (v11)
        {
          goto LABEL_13;
        }
      }

      else if (*(a2 + 16))
      {
        sub_261B05020(0, &qword_280D21DF0, 0x277D44700);
        v15 = sub_261D000E4();
        v16 = -1 << *(a2 + 32);
        v17 = v15 & ~v16;
        if ((*(v7 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
        {
          v18 = ~v16;
          while (1)
          {
            v19 = *(*(a2 + 48) + 8 * v17);
            v20 = sub_261D000F4();

            if (v20)
            {
              break;
            }

            v17 = (v17 + 1) & v18;
            if (((*(v7 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
            {
              goto LABEL_26;
            }
          }

LABEL_13:
          if (*a3 >> 62)
          {
            if (sub_261D00274())
            {
LABEL_15:
              v12 = *a3;
              result = swift_isUniquelyReferenced_nonNull_bridgeObject();
              if (!result || (v12 & 0x8000000000000000) != 0 || (v12 & 0x4000000000000000) != 0)
              {
                result = sub_261BA00C0();
                v12 = result;
              }

              v14 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (!v14)
              {
                __break(1u);
                return result;
              }

              *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) = v14 - 1;
              *a3 = v12;

LABEL_33:
              MEMORY[0x26671C310]();
              if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_261CFFC84();
              }

              a1 = sub_261CFFCB4();
              v30 = v39;
              goto LABEL_6;
            }
          }

          else if (*((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_15;
          }

LABEL_5:

          goto LABEL_6;
        }
      }

LABEL_26:
      if (v33)
      {
        v21 = v8;
        v22 = sub_261D004A4();

        if (!v22)
        {
          goto LABEL_5;
        }

        sub_261B05020(0, &qword_27FEDDF20, 0x277D44750);
        swift_dynamicCast();

        if (v38)
        {
          goto LABEL_33;
        }
      }

      else
      {
        if (!*(v32 + 16))
        {
          goto LABEL_5;
        }

        v23 = sub_261B37CA4(v8);
        if ((v24 & 1) == 0)
        {
          goto LABEL_5;
        }

        v25 = *(*(v32 + 56) + 8 * v23);

        if (v25)
        {
          goto LABEL_33;
        }
      }

LABEL_6:
      if (v6 == v34)
      {
        return v30;
      }
    }
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_261B90474(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4)
{
  *(v5 + 72) = a4;
  *(v5 + 80) = v4;
  *(v5 + 56) = a1;
  *(v5 + 64) = a2;
  *(v5 + 88) = *(type metadata accessor for ReminderEntity(0) - 8);
  *(v5 + 96) = swift_task_alloc();
  v7 = sub_261CFFF44();
  *(v5 + 104) = v7;
  *(v5 + 112) = *(v7 - 8);
  *(v5 + 120) = swift_task_alloc();
  v8 = sub_261CFF204();
  *(v5 + 128) = v8;
  *(v5 + 136) = *(v8 - 8);
  *(v5 + 144) = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0F0, &qword_261D05718);
  *(v5 + 152) = v9;
  *(v5 + 160) = *(v9 - 8);
  *(v5 + 168) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB240, &qword_261D05720);
  *(v5 + 176) = swift_task_alloc();
  v10 = sub_261CFDBE4();
  *(v5 + 184) = v10;
  *(v5 + 192) = *(v10 - 8);
  *(v5 + 200) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB248, &qword_261D05728);
  *(v5 + 208) = swift_task_alloc();
  v11 = sub_261CFE814();
  *(v5 + 216) = v11;
  *(v5 + 224) = *(v11 - 8);
  *(v5 + 232) = swift_task_alloc();
  *(v5 + 329) = *a3;

  return MEMORY[0x2822009F8](sub_261B90788, 0, 0);
}

uint64_t sub_261B90788()
{
  v1 = *(v0 + 56);
  *(v0 + 240) = *(*(v0 + 80) + 24);
  sub_261B9DCEC(v1);
  v4 = sub_261B9BAD4(3, v2, v3);
  *(v0 + 248) = v4;
  v5 = *(v0 + 329);
  v6 = v4;

  *(v0 + 328) = v5;
  v7 = swift_task_alloc();
  *(v0 + 256) = v7;
  *v7 = v0;
  v7[1] = sub_261B90940;
  v8 = *(v0 + 72);
  v9 = *(v0 + 64);

  return sub_261B8BBA0(v6, v9, (v0 + 328), v8);
}

uint64_t sub_261B90940(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 264) = a1;
  *(v3 + 272) = v1;

  if (v1)
  {
    v4 = sub_261B91E98;
  }

  else
  {
    v4 = sub_261B90A64;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_261B90A64()
{
  v102 = v0;
  if (qword_27FED9950 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 64);
  v2 = sub_261CFF7A4();
  __swift_project_value_buffer(v2, qword_27FEDB208);
  sub_261CFD104();
  v3 = v1;
  v4 = sub_261CFF784();
  v5 = sub_261CFFE84();

  if (!os_log_type_enabled(v4, v5))
  {
    goto LABEL_21;
  }

  v6 = *(v0 + 264);
  v7 = swift_slowAlloc();
  v8 = swift_slowAlloc();
  v9 = swift_slowAlloc();
  v100 = v9;
  *v7 = 136446722;
  if (v6 >> 62)
  {
    goto LABEL_81;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_261D00274())
  {
    v11 = MEMORY[0x277D84F90];
    LODWORD(v99) = v5;
    v94 = v8;
    v97 = v9;
    if (!i)
    {
      break;
    }

    v101 = MEMORY[0x277D84F90];
    sub_261D003A4();
    if ((i & 0x8000000000000000) == 0)
    {
      v12 = 0;
      v13 = *(v0 + 264) + 32;
      do
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v14 = MEMORY[0x26671CA10](v12, *(v0 + 264));
        }

        else
        {
          v14 = *(v13 + 8 * v12);
        }

        v15 = v14;
        ++v12;
        v16 = [v14 objectID];

        sub_261D00374();
        sub_261D003B4();
        sub_261D003C4();
        sub_261D00384();
      }

      while (i != v12);
      v11 = v101;
      break;
    }

    __break(1u);
LABEL_83:
    for (j = sub_261D00274(); ; j = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v37 = MEMORY[0x277D84F90];
      if (!j)
      {
        break;
      }

      v101 = MEMORY[0x277D84F90];
      sub_261D003A4();
      if ((j & 0x8000000000000000) == 0)
      {
        v70 = 0;
        v71 = *(v0 + 264) + 32;
        do
        {
          if ((v9 & 0xC000000000000001) != 0)
          {
            v72 = MEMORY[0x26671CA10](v70, *(v0 + 264));
          }

          else
          {
            v72 = *(v71 + 8 * v70);
          }

          v73 = v72;
          ++v70;
          v74 = [v72 objectID];

          sub_261D00374();
          sub_261D003B4();
          sub_261D003C4();
          sub_261D00384();
        }

        while (j != v70);
        v37 = v101;
        break;
      }

      __break(1u);
LABEL_85:
      v40 = sub_261D00274();
LABEL_29:
      v41 = MEMORY[0x277D84F90];
      if (v40)
      {
        v95 = v9;
        v101 = MEMORY[0x277D84F90];
        v42 = sub_261D003A4();
        if (v40 < 0)
        {
          __break(1u);
          return MEMORY[0x2822009F8](v42, v43, v44);
        }

        v45 = 0;
        v46 = v37 & 0xC000000000000001;
        v47 = *(v0 + 264) + 32;
        do
        {
          if (v46)
          {
            v48 = MEMORY[0x26671CA10](v45, *(v0 + 264));
          }

          else
          {
            v48 = *(v47 + 8 * v45);
          }

          v49 = v48;
          ++v45;
          v50 = [v48 objectID];

          sub_261D00374();
          sub_261D003B4();
          sub_261D003C4();
          sub_261D00384();
        }

        while (v40 != v45);
        v41 = v101;
        LOBYTE(v9) = v95;
      }

      v63 = *(v0 + 64);
      v64 = sub_261B05020(0, &qword_280D21DF0, 0x277D44700);
      v65 = MEMORY[0x26671C340](v41, v64);
      v67 = v66;

      v68 = sub_261B879C8(v65, v67, &v100);

      *(v5 + 4) = v68;
      *(v5 + 12) = 2114;
      v69 = [v63 objectID];
      *(v5 + 14) = v69;
      *v97 = v69;
      _os_log_impl(&dword_261AE2000, j, v9, "[MoveRemindersToListAppIntent] Cannot move reminders to custom smart list without a paramsForREMManualOrdering {reminderIDs: %{public}s, customSmartList: %{public}@", v5, 0x16u);
      sub_261AE6A40(v97, &unk_27FEDA730, &unk_261D035C0);
      MEMORY[0x26671D560](v97, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v99);
      MEMORY[0x26671D560](v99, -1, -1);
      MEMORY[0x26671D560](v5, -1, -1);
LABEL_41:

      v9 = *(v0 + 264);
      v4 = (v9 >> 62);
      if (v9 >> 62)
      {
        goto LABEL_83;
      }
    }

    v75 = *(v0 + 280);
    v76 = sub_261CFC0B8(v37);
    if (v75)
    {

      goto LABEL_22;
    }

    v77 = v76;

    v78 = sub_261B88278(v77);

    if (*(v78 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE120, &qword_261D05738);
      v79 = sub_261D00544();
    }

    else
    {
      v79 = MEMORY[0x277D84F98];
    }

    v101 = v79;
    v80 = sub_261CFD104();
    sub_261CB5FD4(v80, 1, &v101);

    v81 = v101;
    if (v4)
    {
      v5 = sub_261D00274();
    }

    else
    {
      v5 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v5)
    {
      v6 = MEMORY[0x277D84F90];
LABEL_76:

      v93 = *(v0 + 8);

      return v93(v6);
    }

    v7 = 0;
    v8 = v9 & 0xC000000000000001;
    v4 = (v9 & 0xFFFFFFFFFFFFFF8);
    v98 = *(v0 + 88);
    v99 = (*(v0 + 264) + 32);
    v6 = MEMORY[0x277D84F90];
    v96 = v9 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v8)
      {
        v82 = MEMORY[0x26671CA10](v7, *(v0 + 264));
      }

      else
      {
        if (v7 >= v4[2].isa)
        {
          goto LABEL_80;
        }

        v82 = v99[v7];
      }

      v83 = v82;
      v84 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v85 = [v82 objectID];
      v9 = v85;
      if (*(v81 + 16) && (v86 = sub_261B37CA4(v85), (v87 & 1) != 0))
      {
        v88 = v8;
        v89 = v5;
        v90 = *(v98 + 72);
        sub_261B4C910(*(v81 + 56) + v90 * v86, *(v0 + 96));

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_261B41560(0, *(v6 + 16) + 1, 1, v6);
        }

        v9 = *(v6 + 16);
        v91 = *(v6 + 24);
        if (v9 >= v91 >> 1)
        {
          v6 = sub_261B41560((v91 > 1), v9 + 1, 1, v6);
        }

        v92 = *(v0 + 96);
        *(v6 + 16) = v9 + 1;
        sub_261B837B0(v92, v6 + ((*(v98 + 80) + 32) & ~*(v98 + 80)) + v9 * v90);
        v5 = v89;
        v8 = v88;
        v4 = v96;
      }

      else
      {
      }

      ++v7;
      if (v84 == v5)
      {
        goto LABEL_76;
      }
    }

    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    ;
  }

  v17 = *(v0 + 329);
  v18 = *(v0 + 64);
  v19 = sub_261B05020(0, &qword_280D21DF0, 0x277D44700);
  v20 = MEMORY[0x26671C340](v11, v19);
  v22 = v21;

  v23 = sub_261B879C8(v20, v22, &v100);

  *(v7 + 4) = v23;
  *(v7 + 12) = 2114;
  v24 = [v18 remObjectID];
  *(v7 + 14) = v24;
  *v94 = v24;
  *(v7 + 22) = 2082;
  if (v17)
  {
    v25 = 0x6D6F74746F62;
  }

  else
  {
    v25 = 7368564;
  }

  if (v17)
  {
    v26 = 0xE600000000000000;
  }

  else
  {
    v26 = 0xE300000000000000;
  }

  v27 = sub_261B879C8(v25, v26, &v100);

  *(v7 + 24) = v27;
  _os_log_impl(&dword_261AE2000, v4, v99, "[MoveRemindersToListAppIntent] Move reminders to CSL {reminderIDs: %{public}s, smartList: %{public}@, insertPosition: %{public}s", v7, 0x20u);
  sub_261AE6A40(v94, &unk_27FEDA730, &unk_261D035C0);
  MEMORY[0x26671D560](v94, -1, -1);
  swift_arrayDestroy();
  MEMORY[0x26671D560](v9, -1, -1);
  MEMORY[0x26671D560](v7, -1, -1);
LABEL_21:

  v28 = *(v0 + 272);
  sub_261B8D450(*(v0 + 208));
  *(v0 + 280) = v28;
  if (v28)
  {
LABEL_22:

    v29 = *(v0 + 8);

    return v29();
  }

  else
  {
    v31 = *(v0 + 216);
    v32 = *(v0 + 224);
    v33 = *(v0 + 208);
    if ((*(v32 + 48))(v33, 1, v31) == 1)
    {
      v5 = *(v0 + 264);
      v34 = *(v0 + 64);
      sub_261AE6A40(v33, &qword_27FEDB248, &qword_261D05728);
      sub_261CFD104();
      v35 = v34;
      j = sub_261CFF784();
      LOBYTE(v9) = sub_261CFFE64();

      if (os_log_type_enabled(j, v9))
      {
        v37 = *(v0 + 264);
        v5 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        *v5 = 136446466;
        v99 = v39;
        v100 = v39;
        v97 = v38;
        if (!(v37 >> 62))
        {
          v40 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
          goto LABEL_29;
        }

        goto LABEL_85;
      }

      goto LABEL_41;
    }

    v52 = *(v0 + 192);
    v51 = *(v0 + 200);
    v54 = *(v0 + 176);
    v53 = *(v0 + 184);
    v55 = *(v0 + 72);
    v56 = *(v0 + 80);
    (*(v32 + 32))(*(v0 + 232), v33, v31);
    v57 = *(v56 + 16);
    *(v0 + 288) = v57;
    (*(v52 + 104))(v51, *MEMORY[0x277D45C20], v53);
    sub_261AE498C(v55, v0 + 16);
    v58 = sub_261CFE474();
    (*(*(v58 - 8) + 56))(v54, 1, 1, v58);
    *(v0 + 296) = sub_261CFFD24();
    v59 = v57;
    *(v0 + 304) = sub_261CFFD14();
    v60 = sub_261CFFCF4();
    v62 = v61;
    v42 = sub_261B91688;
    v43 = v60;
    v44 = v62;

    return MEMORY[0x2822009F8](v42, v43, v44);
  }
}

uint64_t sub_261B91688()
{

  objc_allocWithZone(sub_261CFE424());
  *(v0 + 312) = sub_261CFE414();

  return MEMORY[0x2822009F8](sub_261B91734, 0, 0);
}

uint64_t sub_261B91734()
{
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  v3 = *(v0 + 104);
  v4 = *(v0 + 64);
  if (*(v0 + 329))
  {
    v5 = MEMORY[0x277D45DB0];
  }

  else
  {
    v5 = MEMORY[0x277D45DB8];
  }

  (*(*(v0 + 160) + 104))(*(v0 + 168), *v5, *(v0 + 152));
  v6 = [v4 sortingStyle];
  sub_261CFFEA4();

  (*(v2 + 104))(v1, *MEMORY[0x277D45EC0], v3);
  *(v0 + 320) = sub_261CFFD14();
  v8 = sub_261CFFCF4();

  return MEMORY[0x2822009F8](sub_261B91860, v8, v7);
}

uint64_t sub_261B91860()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[18];
  v10 = v0[19];
  v4 = v0[17];
  v9 = v0[16];
  v5 = v0[14];
  v6 = v0[15];
  v7 = v0[13];

  sub_261CFE404();
  (*(v5 + 8))(v6, v7);
  (*(v4 + 8))(v3, v9);
  (*(v2 + 8))(v1, v10);

  return MEMORY[0x2822009F8](sub_261B91978, 0, 0);
}

uint64_t sub_261B91978()
{
  v43 = v0;
  v2 = *(v0 + 224);
  v1 = *(v0 + 232);
  v3 = *(v0 + 216);

  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 264);
  v5 = v4 >> 62;
  if (v4 >> 62)
  {
    goto LABEL_42;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_261D00274())
  {
    v7 = MEMORY[0x277D84F90];
    v40 = v5;
    if (i)
    {
      v42 = MEMORY[0x277D84F90];
      result = sub_261D003A4();
      if (i < 0)
      {
        __break(1u);
        return result;
      }

      v9 = 0;
      v10 = *(v0 + 264) + 32;
      do
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v11 = MEMORY[0x26671CA10](v9, *(v0 + 264));
        }

        else
        {
          v11 = *(v10 + 8 * v9);
        }

        v12 = v11;
        ++v9;
        v13 = [v11 objectID];

        sub_261D00374();
        sub_261D003B4();
        sub_261D003C4();
        sub_261D00384();
      }

      while (i != v9);
      v7 = v42;
    }

    v14 = *(v0 + 280);
    v15 = sub_261CFC0B8(v7);
    if (v14)
    {

      v16 = *(v0 + 8);

      return v16();
    }

    v17 = v15;

    v18 = sub_261B88278(v17);

    if (*(v18 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE120, &qword_261D05738);
      v19 = sub_261D00544();
    }

    else
    {
      v19 = MEMORY[0x277D84F98];
    }

    v42 = v19;
    v20 = sub_261CFD104();
    sub_261CB5FD4(v20, 1, &v42);

    v21 = v42;
    if (v40)
    {
      break;
    }

    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      goto LABEL_36;
    }

LABEL_20:
    v22 = 0;
    v23 = v4 & 0xC000000000000001;
    v24 = v4 & 0xFFFFFFFFFFFFFF8;
    v39 = *(v0 + 88);
    v41 = *(v0 + 264) + 32;
    v25 = MEMORY[0x277D84F90];
    v38 = v4 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v23)
      {
        v26 = MEMORY[0x26671CA10](v22, *(v0 + 264));
      }

      else
      {
        if (v22 >= *(v24 + 16))
        {
          goto LABEL_41;
        }

        v26 = *(v41 + 8 * v22);
      }

      v27 = v26;
      v28 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      v29 = [v26 objectID];
      v4 = v29;
      if (*(v21 + 16) && (v30 = sub_261B37CA4(v29), (v31 & 1) != 0))
      {
        v32 = v23;
        v33 = v5;
        v34 = *(v39 + 72);
        sub_261B4C910(*(v21 + 56) + v34 * v30, *(v0 + 96));

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v25 = sub_261B41560(0, v25[2] + 1, 1, v25);
        }

        v4 = v25[2];
        v35 = v25[3];
        if (v4 >= v35 >> 1)
        {
          v25 = sub_261B41560((v35 > 1), v4 + 1, 1, v25);
        }

        v36 = *(v0 + 96);
        v25[2] = v4 + 1;
        sub_261B837B0(v36, v25 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + v4 * v34);
        v5 = v33;
        v23 = v32;
        v24 = v38;
      }

      else
      {
      }

      ++v22;
      if (v28 == v5)
      {
        goto LABEL_37;
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    ;
  }

  v5 = sub_261D00274();
  if (v5)
  {
    goto LABEL_20;
  }

LABEL_36:
  v25 = MEMORY[0x277D84F90];
LABEL_37:

  v37 = *(v0 + 8);

  return v37(v25);
}

uint64_t sub_261B91E98()
{

  v1 = *(v0 + 8);

  return v1();
}

void *sub_261B91F60(void *a1, uint64_t a2)
{
  if ((~a2 & 0xF000000000000007) != 0)
  {
    return sub_261B49FA0(a1, a2);
  }

  return a1;
}

uint64_t sub_261B91F74(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA598, &qword_261D05740);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_261B91FE4(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_261B91FF0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t OpenReminderAppIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v85 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA280, &unk_261D02510);
  MEMORY[0x28223BE20](v1 - 8);
  v71 = v65 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA390, &unk_261D02F60);
  MEMORY[0x28223BE20](v3 - 8);
  v70 = v65 - v4;
  v5 = sub_261CFD184();
  v6 = *(v5 - 8);
  v86 = v5;
  v87 = v6;
  MEMORY[0x28223BE20](v5);
  v84 = v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1E8, &unk_261D02310);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v77 = v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v76 = v65 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE110, &unk_261D035B0);
  MEMORY[0x28223BE20](v12 - 8);
  v75 = v65 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  MEMORY[0x28223BE20](v14 - 8);
  v80 = v65 - v15;
  v16 = sub_261CFD674();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_261CFD884();
  MEMORY[0x28223BE20](v20 - 8);
  v21 = sub_261CFFA44();
  MEMORY[0x28223BE20](v21 - 8);
  v22 = sub_261CFD6A4();
  v23 = *(v22 - 8);
  v24 = MEMORY[0x28223BE20](v22);
  v78 = v65 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v27 = v65 - v26;
  v65[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAA68, &unk_261D03630);
  sub_261CFF9B4();
  sub_261CFD874();
  v28 = *MEMORY[0x277CC9110];
  v79 = v17;
  v29 = v17[13];
  v29(v19, v28, v16);
  v69 = v27;
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  LODWORD(v68) = v28;
  v30 = v28;
  v31 = v16;
  v67 = v17 + 13;
  v66 = v29;
  v29(v19, v30, v16);
  v32 = v80;
  v33 = v19;
  sub_261CFD6C4();
  v34 = *(v23 + 56);
  v35 = v32;
  v82 = v23 + 56;
  v83 = v22;
  v81 = v34;
  v34(v32, 0, 1, v22);
  v36 = type metadata accessor for ReminderEntity(0);
  (*(*(v36 - 8) + 56))(v75, 1, 1, v36);
  sub_261CFF9B4();
  if (qword_280D22DA8 != -1)
  {
    swift_once();
  }

  v37 = __swift_project_value_buffer(v31, qword_280D27028);
  v79[2](v19, v37, v31);
  sub_261CFD874();
  sub_261CFD6C4();
  v38 = v76;
  sub_261CFC844();
  v39 = sub_261CFC834();
  v78 = v39;
  v40 = *(v39 - 8);
  v41 = *(v40 + 56);
  v73 = v41;
  v74 = v40 + 56;
  v41(v38, 0, 1, v39);
  v41(v77, 1, 1, v39);
  v72 = *MEMORY[0x277CBA308];
  v42 = *(v87 + 104);
  v87 += 104;
  v79 = v42;
  v43 = v84;
  (v42)(v84);
  sub_261B94EA4(&qword_280D22358, &protocol conformance descriptor for ReminderEntity);
  *v85 = sub_261CFCC34();
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAA30, &unk_261D035F0);
  sub_261CFF9B4();
  sub_261CFD874();
  v66(v33, v68, v31);
  sub_261CFD6C4();
  v44 = v35;
  v45 = v83;
  v81(v35, 1, 1, v83);
  LOBYTE(v89) = 2;
  v46 = sub_261CFFCE4();
  (*(*(v46 - 8) + 56))(v70, 1, 1, v46);
  v47 = v78;
  v48 = v73;
  v73(v38, 1, 1, v78);
  v49 = v43;
  v50 = v72;
  (v79)(v49, v72, v86);
  v85[1] = sub_261CFCD44();
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA290, qword_261D0F1D0);
  v51 = v81;
  v81(v44, 1, 1, v45);
  v69 = sub_261CFF994();
  v89 = 0;
  v90 = 0;
  v52 = *(v69 - 8);
  v68 = *(v52 + 56);
  v70 = (v52 + 56);
  v53 = v71;
  v68(v71, 1, 1, v69);
  v48(v38, 1, 1, v47);
  v54 = v86;
  v55 = v79;
  (v79)(v84, v50, v86);
  v56 = v80;
  v57 = sub_261CFCD04();
  v58 = v85;
  v85[2] = v57;
  v51(v56, 1, 1, v83);
  v89 = 0;
  v90 = 0;
  v68(v53, 1, 1, v69);
  v59 = v76;
  v60 = v73;
  v73(v76, 1, 1, v78);
  v61 = v84;
  (v55)(v84, v50, v54);
  v62 = v80;
  v58[3] = sub_261CFCD04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB290, &qword_261D05770);
  v81(v62, 1, 1, v83);
  LOBYTE(v89) = 6;
  v63 = v78;
  v60(v59, 1, 1, v78);
  v60(v77, 1, 1, v63);
  (v79)(v61, v72, v86);
  sub_261B94D00();
  v58[4] = sub_261CFCBF4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB298, &qword_261D05778);
  v88 = 0;
  sub_261AE4630();
  sub_261D002D4();
  sub_261CFC6B4();
  sub_261CFC6A4();
  result = sub_261CFC684();
  v58[5] = result;
  return result;
}

uint64_t sub_261B92C70()
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
  __swift_allocate_value_buffer(v6, qword_27FEDB278);
  __swift_project_value_buffer(v6, qword_27FEDB278);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v1 + 104))(v3, *MEMORY[0x277CC9110], v0);
  return sub_261CFD6C4();
}

uint64_t static OpenReminderAppIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED9958 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD6A4();
  v3 = __swift_project_value_buffer(v2, qword_27FEDB278);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static OpenReminderAppIntent.description.getter@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_261B93218(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for ReminderEntity(0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - v7;
  sub_261B4C910(a1, &v10 - v7);
  sub_261B4C910(v8, v6);
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCBC4();
  sub_261B4C974(v8);
}

uint64_t OpenReminderAppIntent.target.setter(uint64_t a1)
{
  v2 = type metadata accessor for ReminderEntity(0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_261B4C910(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_261CFCBC4();
  return sub_261B4C974(a1);
}

uint64_t (*OpenReminderAppIntent.target.modify(uint64_t *a1))()
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

uint64_t sub_261B934AC(char *a1, uint64_t *a2)
{
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCBC4();
}

uint64_t (*OpenReminderAppIntent.showDetail.modify(uint64_t *a1))()
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

uint64_t sub_261B9365C(uint64_t *a1, uint64_t *a2)
{
  sub_261CFD104();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCBC4();
}

uint64_t (*OpenReminderAppIntent.title.modify(uint64_t *a1))()
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

uint64_t sub_261B93810(uint64_t *a1, uint64_t *a2)
{
  sub_261CFD104();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCBC4();
}

uint64_t (*OpenReminderAppIntent.caption.modify(uint64_t *a1))()
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

uint64_t sub_261B939B4(char *a1, uint64_t *a2)
{
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCBC4();
}

uint64_t (*OpenReminderAppIntent.inSmartList.modify(uint64_t *a1))()
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

uint64_t OpenReminderAppIntent.perform()(uint64_t a1)
{
  *(v2 + 112) = a1;
  v3 = v1[1];
  *(v2 + 16) = *v1;
  *(v2 + 32) = v3;
  *(v2 + 48) = v1[2];
  sub_261CFFD24();
  *(v2 + 120) = sub_261CFFD14();
  v5 = sub_261CFFCF4();
  *(v2 + 128) = v5;
  *(v2 + 136) = v4;

  return MEMORY[0x2822009F8](sub_261B93BDC, v5, v4);
}

uint64_t sub_261B93BDC()
{
  sub_261B94D54(v0 + 2, v0 + 8);
  v1 = swift_task_alloc();
  v0[18] = v1;
  *v1 = v0;
  v1[1] = sub_261B93CA4;
  v2 = v0[14];

  return sub_261C57E74(v2, "OpenReminderAppIntent", 21, 2, (v0 + 2));
}

uint64_t sub_261B93CA4()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  v3 = *(v2 + 136);
  v4 = *(v2 + 128);
  if (v0)
  {
    v5 = sub_261B953C4;
  }

  else
  {
    v5 = sub_261B953C8;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_261B93DE0(uint64_t a1, uint64_t a2)
{
  v2[13] = a1;
  v2[14] = a2;
  sub_261CFFD24();
  v2[15] = sub_261CFFD14();
  v4 = sub_261CFFCF4();
  v2[16] = v4;
  v2[17] = v3;

  return MEMORY[0x2822009F8](sub_261B93E78, v4, v3);
}

uint64_t sub_261B93E78()
{
  v1 = *(v0 + 112);
  sub_261B1A690(0);
  sub_261CFC664();
  v2 = *(v0 + 88);
  v3 = *(v0 + 96);
  __swift_project_boxed_opaque_existential_1((v0 + 64), v2);
  v4 = *v1;
  v5 = v1[2];
  *(v0 + 32) = v1[1];
  *(v0 + 48) = v5;
  *(v0 + 16) = v4;
  v9 = (*(v3 + 8) + **(v3 + 8));
  v6 = swift_task_alloc();
  *(v0 + 144) = v6;
  *v6 = v0;
  v6[1] = sub_261B93FDC;
  v7 = *(v0 + 104);

  return v9(v7, v0 + 16, v2, v3);
}

uint64_t sub_261B93FDC()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  v3 = *(v2 + 128);
  v4 = *(v2 + 136);
  if (v0)
  {
    v5 = sub_261B9415C;
  }

  else
  {
    v5 = sub_261B940F0;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_261B940F0()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 64));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_261B9415C()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 64));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t static OpenReminderAppIntent.parameterSummary.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB2A0, &qword_261D057A8);
  MEMORY[0x28223BE20](v0 - 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB2A8, &qword_261D057B0);
  MEMORY[0x28223BE20](v1);
  sub_261B3199C();
  sub_261CFD164();
  sub_261CFD154();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB2B0, &qword_261D057E0);
  sub_261CFD144();

  sub_261CFD154();
  sub_261CFD174();
  return sub_261CFD134();
}

uint64_t sub_261B9437C()
{
  swift_getKeyPath();
  sub_261B3199C();
  v0 = sub_261CFCDA4();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA740, &qword_261D05A10);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_261D030F0;
  *(v1 + 32) = v0;
  sub_261CFCDA4();
  v2 = sub_261CFD104();

  return v2;
}

uint64_t (*sub_261B944A0(uint64_t *a1))()
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

uint64_t (*sub_261B9457C(uint64_t *a1))()
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

uint64_t sub_261B945F0(uint64_t a1)
{
  v2 = type metadata accessor for ReminderEntity(0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_261B4C910(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_261CFCBC4();
  return sub_261B4C974(a1);
}

uint64_t (*sub_261B94680(uint64_t *a1))()
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

uint64_t sub_261B946F4@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED9958 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD6A4();
  v3 = __swift_project_value_buffer(v2, qword_27FEDB278);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_261B9479C(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB2A0, &qword_261D057A8);
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB2A8, &qword_261D057B0);
  MEMORY[0x28223BE20](v3);
  sub_261CFD164();
  sub_261CFD154();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB2B0, &qword_261D057E0);
  sub_261CFD144();

  sub_261CFD154();
  sub_261CFD174();
  return sub_261CFD134();
}

uint64_t sub_261B9494C(uint64_t a1)
{
  *(v2 + 112) = a1;
  v3 = v1[1];
  *(v2 + 16) = *v1;
  *(v2 + 32) = v3;
  *(v2 + 48) = v1[2];
  sub_261CFFD24();
  *(v2 + 120) = sub_261CFFD14();
  v5 = sub_261CFFCF4();
  *(v2 + 128) = v5;
  *(v2 + 136) = v4;

  return MEMORY[0x2822009F8](sub_261B949F4, v5, v4);
}

uint64_t sub_261B949F4()
{
  sub_261B94D54(v0 + 2, v0 + 8);
  v1 = swift_task_alloc();
  v0[18] = v1;
  *v1 = v0;
  v1[1] = sub_261B94ABC;
  v2 = v0[14];

  return sub_261C57E74(v2, "OpenReminderAppIntent", 21, 2, (v0 + 2));
}

uint64_t sub_261B94ABC()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  v3 = *(v2 + 136);
  v4 = *(v2 + 128);
  if (v0)
  {
    v5 = sub_261B94C5C;
  }

  else
  {
    v5 = sub_261B94BF8;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_261B94BF8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_261B94C5C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_261B94CC4(uint64_t a1)
{
  v2 = sub_261B3199C();

  return MEMORY[0x28210B538](a1, v2);
}

unint64_t sub_261B94D00()
{
  result = qword_280D223D8;
  if (!qword_280D223D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D223D8);
  }

  return result;
}

unint64_t sub_261B94D90()
{
  result = qword_27FEDB2B8;
  if (!qword_27FEDB2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB2B8);
  }

  return result;
}

unint64_t sub_261B94E1C()
{
  result = qword_27FEDB2C0;
  if (!qword_27FEDB2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB2C0);
  }

  return result;
}

uint64_t sub_261B94EA4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ReminderEntity(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_261B94EF0()
{
  result = qword_27FEDB2C8;
  if (!qword_27FEDB2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB2C8);
  }

  return result;
}

unint64_t sub_261B94F48()
{
  result = qword_27FEDB2D0;
  if (!qword_27FEDB2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB2D0);
  }

  return result;
}

uint64_t destroy for OpenReminderAppIntent(void *a1)
{
}

uint64_t *initializeWithCopy for OpenReminderAppIntent(uint64_t *a1, uint64_t *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;
  v5 = a2[5];
  a1[4] = a2[4];
  a1[5] = v5;
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  return a1;
}

uint64_t *assignWithCopy for OpenReminderAppIntent(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;
  sub_261CFCDA4();

  a1[1] = a2[1];
  sub_261CFCDA4();

  a1[2] = a2[2];
  sub_261CFCDA4();

  a1[3] = a2[3];
  sub_261CFCDA4();

  a1[4] = a2[4];
  sub_261CFCDA4();

  a1[5] = a2[5];
  sub_261CFCDA4();

  return a1;
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

void *assignWithTake for OpenReminderAppIntent(void *a1, _OWORD *a2)
{

  *a1 = *a2;

  *(a1 + 1) = a2[1];

  *(a1 + 2) = a2[2];

  return a1;
}

uint64_t getEnumTagSinglePayload for OpenReminderAppIntent(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t storeEnumTagSinglePayload for OpenReminderAppIntent(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t dispatch thunk of OpenReminderAppIntentPerforming.perform(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_261AF43A8;

  return v11(a1, a2, a3, a4);
}

uint64_t *sub_261B953CC(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v24 = *a2;
    *a1 = *a2;
    a1 = (v24 + ((v5 + 16) & ~v5));
    sub_261CFCDA4();
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v6 = a2[1];
    *a1 = *a2;
    a1[1] = v6;
    v7 = a2[3];
    a1[2] = a2[2];
    a1[3] = v7;
    v8 = a2[5];
    a1[4] = a2[4];
    a1[5] = v8;
    v9 = type metadata accessor for ReminderEntity(0);
    v10 = v9[10];
    v11 = a1 + v10;
    v12 = a2 + v10;
    v13 = *(a2 + v10 + 8);
    *v11 = *(a2 + v10);
    *(v11 + 1) = v13;
    v14 = type metadata accessor for AppEntityID(0);
    v15 = *(v14 + 20);
    v16 = sub_261CFD844();
    v38 = *(*(v16 - 8) + 16);
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFD104();
    v38(&v11[v15], &v12[v15], v16);
    v17 = *(v14 + 24);
    v18 = &v11[v17];
    v19 = &v12[v17];
    v20 = type metadata accessor for RecurrentInstanceSpecifier(0);
    v21 = *(v20 - 8);
    v22 = (*(v21 + 48))(v19, 1, v20);
    if (EnumCaseMultiPayload == 1)
    {
      if (v22)
      {
        v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA108, &unk_261D020C0);
        memcpy(v18, v19, *(*(v23 - 8) + 64));
      }

      else
      {
        v26 = sub_261CFD4E4();
        (*(*(v26 - 8) + 16))(v18, v19, v26);
        v18[*(v20 + 20)] = v19[*(v20 + 20)];
        (*(v21 + 56))(v18, 0, 1, v20);
      }

      *(a1 + v9[11]) = *(a2 + v9[11]);
      *(a1 + v9[12]) = *(a2 + v9[12]);
      *(a1 + v9[13]) = *(a2 + v9[13]);
      *(a1 + v9[14]) = *(a2 + v9[14]);
      *(a1 + v9[15]) = *(a2 + v9[15]);
      *(a1 + v9[16]) = *(a2 + v9[16]);
      *(a1 + v9[17]) = *(a2 + v9[17]);
      *(a1 + v9[18]) = *(a2 + v9[18]);
      *(a1 + v9[19]) = *(a2 + v9[19]);
      *(a1 + v9[20]) = *(a2 + v9[20]);
      *(a1 + v9[21]) = *(a2 + v9[21]);
      *(a1 + v9[22]) = *(a2 + v9[22]);
      *(a1 + v9[23]) = *(a2 + v9[23]);
      *(a1 + v9[24]) = *(a2 + v9[24]);
      *(a1 + v9[25]) = *(a2 + v9[25]);
      *(a1 + v9[26]) = *(a2 + v9[26]);
      *(a1 + v9[27]) = *(a2 + v9[27]);
      *(a1 + v9[28]) = *(a2 + v9[28]);
      *(a1 + v9[29]) = *(a2 + v9[29]);
      *(a1 + v9[30]) = *(a2 + v9[30]);
      v27 = *(_s20CategorizedRemindersV15FetchedReminderVMa(0) + 20);
      v28 = *(a2 + v27);
      *(a1 + v27) = v28;
      v29 = *(_s20CategorizedRemindersV17RecurrentInstanceVMa(0) + 20);
      v30 = *(a2 + v29);
      *(a1 + v29) = v30;
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
      sub_261CFCDA4();
      sub_261CFCDA4();
      sub_261CFCDA4();
      sub_261CFCDA4();
      sub_261CFCDA4();
      sub_261CFCDA4();
      sub_261CFCDA4();
      v31 = v28;
      v32 = v30;
    }

    else
    {
      if (v22)
      {
        v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA108, &unk_261D020C0);
        memcpy(v18, v19, *(*(v25 - 8) + 64));
      }

      else
      {
        v33 = sub_261CFD4E4();
        (*(*(v33 - 8) + 16))(v18, v19, v33);
        v18[*(v20 + 20)] = v19[*(v20 + 20)];
        (*(v21 + 56))(v18, 0, 1, v20);
      }

      *(a1 + v9[11]) = *(a2 + v9[11]);
      *(a1 + v9[12]) = *(a2 + v9[12]);
      *(a1 + v9[13]) = *(a2 + v9[13]);
      *(a1 + v9[14]) = *(a2 + v9[14]);
      *(a1 + v9[15]) = *(a2 + v9[15]);
      *(a1 + v9[16]) = *(a2 + v9[16]);
      *(a1 + v9[17]) = *(a2 + v9[17]);
      *(a1 + v9[18]) = *(a2 + v9[18]);
      *(a1 + v9[19]) = *(a2 + v9[19]);
      *(a1 + v9[20]) = *(a2 + v9[20]);
      *(a1 + v9[21]) = *(a2 + v9[21]);
      *(a1 + v9[22]) = *(a2 + v9[22]);
      *(a1 + v9[23]) = *(a2 + v9[23]);
      *(a1 + v9[24]) = *(a2 + v9[24]);
      *(a1 + v9[25]) = *(a2 + v9[25]);
      *(a1 + v9[26]) = *(a2 + v9[26]);
      *(a1 + v9[27]) = *(a2 + v9[27]);
      *(a1 + v9[28]) = *(a2 + v9[28]);
      *(a1 + v9[29]) = *(a2 + v9[29]);
      *(a1 + v9[30]) = *(a2 + v9[30]);
      v34 = *(_s20CategorizedRemindersV15FetchedReminderVMa(0) + 20);
      v35 = *(a2 + v34);
      *(a1 + v34) = v35;
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
      sub_261CFCDA4();
      sub_261CFCDA4();
      sub_261CFCDA4();
      sub_261CFCDA4();
      sub_261CFCDA4();
      sub_261CFCDA4();
      sub_261CFCDA4();
      v36 = v35;
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

void sub_261B95B34(void *a1, uint64_t a2)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  v4 = a1 + *(type metadata accessor for ReminderEntity(0) + 40);

  v5 = type metadata accessor for AppEntityID(0);
  v6 = *(v5 + 20);
  v7 = sub_261CFD844();
  (*(*(v7 - 8) + 8))(&v4[v6], v7);
  v8 = *(v5 + 24);
  v9 = type metadata accessor for RecurrentInstanceSpecifier(0);
  v10 = (*(*(v9 - 8) + 48))(&v4[v8], 1, v9);
  if (EnumCaseMultiPayload == 1)
  {
    if (!v10)
    {
      v11 = sub_261CFD4E4();
      (*(*(v11 - 8) + 8))(&v4[v8], v11);
    }

    v12 = _s20CategorizedRemindersV17RecurrentInstanceVMa(0);
  }

  else
  {
    if (!v10)
    {
      v13 = sub_261CFD4E4();
      (*(*(v13 - 8) + 8))(&v4[v8], v13);
    }

    v12 = _s20CategorizedRemindersV15FetchedReminderVMa(0);
  }

  v14 = *(a1 + *(v12 + 20));
}

uint64_t *sub_261B95EE0(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = a2[1];
  *a1 = *a2;
  a1[1] = v5;
  v6 = a2[3];
  a1[2] = a2[2];
  a1[3] = v6;
  v7 = a2[5];
  a1[4] = a2[4];
  a1[5] = v7;
  v8 = type metadata accessor for ReminderEntity(0);
  v9 = v8[10];
  v10 = a1 + v9;
  v11 = a2 + v9;
  v12 = *(a2 + v9 + 8);
  *v10 = *(a2 + v9);
  *(v10 + 1) = v12;
  v13 = type metadata accessor for AppEntityID(0);
  v14 = *(v13 + 20);
  v15 = sub_261CFD844();
  v34 = *(*(v15 - 8) + 16);
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFD104();
  v34(&v10[v14], &v11[v14], v15);
  v16 = *(v13 + 24);
  v17 = &v10[v16];
  v18 = &v11[v16];
  v19 = type metadata accessor for RecurrentInstanceSpecifier(0);
  v20 = *(v19 - 8);
  v21 = (*(v20 + 48))(v18, 1, v19);
  if (EnumCaseMultiPayload == 1)
  {
    if (v21)
    {
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA108, &unk_261D020C0);
      memcpy(v17, v18, *(*(v22 - 8) + 64));
    }

    else
    {
      v24 = sub_261CFD4E4();
      (*(*(v24 - 8) + 16))(v17, v18, v24);
      v17[*(v19 + 20)] = v18[*(v19 + 20)];
      (*(v20 + 56))(v17, 0, 1, v19);
    }

    *(a1 + v8[11]) = *(a2 + v8[11]);
    *(a1 + v8[12]) = *(a2 + v8[12]);
    *(a1 + v8[13]) = *(a2 + v8[13]);
    *(a1 + v8[14]) = *(a2 + v8[14]);
    *(a1 + v8[15]) = *(a2 + v8[15]);
    *(a1 + v8[16]) = *(a2 + v8[16]);
    *(a1 + v8[17]) = *(a2 + v8[17]);
    *(a1 + v8[18]) = *(a2 + v8[18]);
    *(a1 + v8[19]) = *(a2 + v8[19]);
    *(a1 + v8[20]) = *(a2 + v8[20]);
    *(a1 + v8[21]) = *(a2 + v8[21]);
    *(a1 + v8[22]) = *(a2 + v8[22]);
    *(a1 + v8[23]) = *(a2 + v8[23]);
    *(a1 + v8[24]) = *(a2 + v8[24]);
    *(a1 + v8[25]) = *(a2 + v8[25]);
    *(a1 + v8[26]) = *(a2 + v8[26]);
    *(a1 + v8[27]) = *(a2 + v8[27]);
    *(a1 + v8[28]) = *(a2 + v8[28]);
    *(a1 + v8[29]) = *(a2 + v8[29]);
    *(a1 + v8[30]) = *(a2 + v8[30]);
    v25 = *(_s20CategorizedRemindersV15FetchedReminderVMa(0) + 20);
    v26 = *(a2 + v25);
    *(a1 + v25) = v26;
    v27 = *(_s20CategorizedRemindersV17RecurrentInstanceVMa(0) + 20);
    v28 = *(a2 + v27);
    *(a1 + v27) = v28;
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
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    v29 = v26;
  }

  else
  {
    if (v21)
    {
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA108, &unk_261D020C0);
      memcpy(v17, v18, *(*(v23 - 8) + 64));
    }

    else
    {
      v30 = sub_261CFD4E4();
      (*(*(v30 - 8) + 16))(v17, v18, v30);
      v17[*(v19 + 20)] = v18[*(v19 + 20)];
      (*(v20 + 56))(v17, 0, 1, v19);
    }

    *(a1 + v8[11]) = *(a2 + v8[11]);
    *(a1 + v8[12]) = *(a2 + v8[12]);
    *(a1 + v8[13]) = *(a2 + v8[13]);
    *(a1 + v8[14]) = *(a2 + v8[14]);
    *(a1 + v8[15]) = *(a2 + v8[15]);
    *(a1 + v8[16]) = *(a2 + v8[16]);
    *(a1 + v8[17]) = *(a2 + v8[17]);
    *(a1 + v8[18]) = *(a2 + v8[18]);
    *(a1 + v8[19]) = *(a2 + v8[19]);
    *(a1 + v8[20]) = *(a2 + v8[20]);
    *(a1 + v8[21]) = *(a2 + v8[21]);
    *(a1 + v8[22]) = *(a2 + v8[22]);
    *(a1 + v8[23]) = *(a2 + v8[23]);
    *(a1 + v8[24]) = *(a2 + v8[24]);
    *(a1 + v8[25]) = *(a2 + v8[25]);
    *(a1 + v8[26]) = *(a2 + v8[26]);
    *(a1 + v8[27]) = *(a2 + v8[27]);
    *(a1 + v8[28]) = *(a2 + v8[28]);
    *(a1 + v8[29]) = *(a2 + v8[29]);
    *(a1 + v8[30]) = *(a2 + v8[30]);
    v31 = *(_s20CategorizedRemindersV15FetchedReminderVMa(0) + 20);
    v28 = *(a2 + v31);
    *(a1 + v31) = v28;
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
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
  }

  v32 = v28;
  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t *sub_261B965B4(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    sub_261B98750(a1, _s20CategorizedRemindersV12EditableItemOMa);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    *a1 = *a2;
    a1[1] = a2[1];
    a1[2] = a2[2];
    a1[3] = a2[3];
    a1[4] = a2[4];
    a1[5] = a2[5];
    v5 = type metadata accessor for ReminderEntity(0);
    v6 = v5[10];
    v7 = a1 + v6;
    v8 = a2 + v6;
    *v7 = *(a2 + v6);
    *(v7 + 1) = *(a2 + v6 + 8);
    v30 = type metadata accessor for AppEntityID(0);
    v9 = *(v30 + 20);
    v10 = sub_261CFD844();
    v29 = *(*(v10 - 8) + 16);
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFD104();
    v29(&v7[v9], &v8[v9], v10);
    v11 = *(v30 + 24);
    v12 = &v7[v11];
    v13 = &v8[v11];
    v14 = type metadata accessor for RecurrentInstanceSpecifier(0);
    v15 = *(v14 - 8);
    v16 = (*(v15 + 48))(v13, 1, v14);
    if (EnumCaseMultiPayload == 1)
    {
      if (v16)
      {
        v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA108, &unk_261D020C0);
        memcpy(v12, v13, *(*(v17 - 8) + 64));
      }

      else
      {
        v19 = sub_261CFD4E4();
        (*(*(v19 - 8) + 16))(v12, v13, v19);
        v12[*(v14 + 20)] = v13[*(v14 + 20)];
        (*(v15 + 56))(v12, 0, 1, v14);
      }

      *(a1 + v5[11]) = *(a2 + v5[11]);
      *(a1 + v5[12]) = *(a2 + v5[12]);
      *(a1 + v5[13]) = *(a2 + v5[13]);
      *(a1 + v5[14]) = *(a2 + v5[14]);
      *(a1 + v5[15]) = *(a2 + v5[15]);
      *(a1 + v5[16]) = *(a2 + v5[16]);
      *(a1 + v5[17]) = *(a2 + v5[17]);
      *(a1 + v5[18]) = *(a2 + v5[18]);
      *(a1 + v5[19]) = *(a2 + v5[19]);
      *(a1 + v5[20]) = *(a2 + v5[20]);
      *(a1 + v5[21]) = *(a2 + v5[21]);
      *(a1 + v5[22]) = *(a2 + v5[22]);
      *(a1 + v5[23]) = *(a2 + v5[23]);
      *(a1 + v5[24]) = *(a2 + v5[24]);
      *(a1 + v5[25]) = *(a2 + v5[25]);
      *(a1 + v5[26]) = *(a2 + v5[26]);
      *(a1 + v5[27]) = *(a2 + v5[27]);
      *(a1 + v5[28]) = *(a2 + v5[28]);
      *(a1 + v5[29]) = *(a2 + v5[29]);
      *(a1 + v5[30]) = *(a2 + v5[30]);
      v20 = *(_s20CategorizedRemindersV15FetchedReminderVMa(0) + 20);
      v21 = *(a2 + v20);
      *(a1 + v20) = v21;
      v22 = *(_s20CategorizedRemindersV17RecurrentInstanceVMa(0) + 20);
      v23 = *(a2 + v22);
      *(a1 + v22) = v23;
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
      sub_261CFCDA4();
      sub_261CFCDA4();
      sub_261CFCDA4();
      sub_261CFCDA4();
      sub_261CFCDA4();
      sub_261CFCDA4();
      sub_261CFCDA4();
      v24 = v21;
    }

    else
    {
      if (v16)
      {
        v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA108, &unk_261D020C0);
        memcpy(v12, v13, *(*(v18 - 8) + 64));
      }

      else
      {
        v25 = sub_261CFD4E4();
        (*(*(v25 - 8) + 16))(v12, v13, v25);
        v12[*(v14 + 20)] = v13[*(v14 + 20)];
        (*(v15 + 56))(v12, 0, 1, v14);
      }

      *(a1 + v5[11]) = *(a2 + v5[11]);
      *(a1 + v5[12]) = *(a2 + v5[12]);
      *(a1 + v5[13]) = *(a2 + v5[13]);
      *(a1 + v5[14]) = *(a2 + v5[14]);
      *(a1 + v5[15]) = *(a2 + v5[15]);
      *(a1 + v5[16]) = *(a2 + v5[16]);
      *(a1 + v5[17]) = *(a2 + v5[17]);
      *(a1 + v5[18]) = *(a2 + v5[18]);
      *(a1 + v5[19]) = *(a2 + v5[19]);
      *(a1 + v5[20]) = *(a2 + v5[20]);
      *(a1 + v5[21]) = *(a2 + v5[21]);
      *(a1 + v5[22]) = *(a2 + v5[22]);
      *(a1 + v5[23]) = *(a2 + v5[23]);
      *(a1 + v5[24]) = *(a2 + v5[24]);
      *(a1 + v5[25]) = *(a2 + v5[25]);
      *(a1 + v5[26]) = *(a2 + v5[26]);
      *(a1 + v5[27]) = *(a2 + v5[27]);
      *(a1 + v5[28]) = *(a2 + v5[28]);
      *(a1 + v5[29]) = *(a2 + v5[29]);
      *(a1 + v5[30]) = *(a2 + v5[30]);
      v26 = *(_s20CategorizedRemindersV15FetchedReminderVMa(0) + 20);
      v23 = *(a2 + v26);
      *(a1 + v26) = v23;
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
      sub_261CFCDA4();
      sub_261CFCDA4();
      sub_261CFCDA4();
      sub_261CFCDA4();
      sub_261CFCDA4();
      sub_261CFCDA4();
      sub_261CFCDA4();
    }

    v27 = v23;
    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

_OWORD *sub_261B96CF0(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v6 = a2[1];
  *a1 = *a2;
  a1[1] = v6;
  a1[2] = a2[2];
  v7 = type metadata accessor for ReminderEntity(0);
  v8 = v7[10];
  v9 = a1 + v8;
  v10 = a2 + v8;
  *(a1 + v8) = *(a2 + v8);
  v11 = type metadata accessor for AppEntityID(0);
  v12 = *(v11 + 20);
  v13 = sub_261CFD844();
  (*(*(v13 - 8) + 32))(&v9[v12], &v10[v12], v13);
  v14 = *(v11 + 24);
  v15 = &v9[v14];
  v16 = &v10[v14];
  v17 = type metadata accessor for RecurrentInstanceSpecifier(0);
  v18 = *(v17 - 8);
  v19 = (*(v18 + 48))(v16, 1, v17);
  if (EnumCaseMultiPayload == 1)
  {
    if (v19)
    {
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA108, &unk_261D020C0);
      memcpy(v15, v16, *(*(v20 - 8) + 64));
    }

    else
    {
      v22 = sub_261CFD4E4();
      (*(*(v22 - 8) + 32))(v15, v16, v22);
      v15[*(v17 + 20)] = v16[*(v17 + 20)];
      (*(v18 + 56))(v15, 0, 1, v17);
    }

    *(a1 + v7[11]) = *(a2 + v7[11]);
    *(a1 + v7[12]) = *(a2 + v7[12]);
    *(a1 + v7[13]) = *(a2 + v7[13]);
    *(a1 + v7[14]) = *(a2 + v7[14]);
    *(a1 + v7[15]) = *(a2 + v7[15]);
    *(a1 + v7[16]) = *(a2 + v7[16]);
    *(a1 + v7[17]) = *(a2 + v7[17]);
    *(a1 + v7[18]) = *(a2 + v7[18]);
    *(a1 + v7[19]) = *(a2 + v7[19]);
    *(a1 + v7[20]) = *(a2 + v7[20]);
    *(a1 + v7[21]) = *(a2 + v7[21]);
    *(a1 + v7[22]) = *(a2 + v7[22]);
    *(a1 + v7[23]) = *(a2 + v7[23]);
    *(a1 + v7[24]) = *(a2 + v7[24]);
    *(a1 + v7[25]) = *(a2 + v7[25]);
    *(a1 + v7[26]) = *(a2 + v7[26]);
    *(a1 + v7[27]) = *(a2 + v7[27]);
    *(a1 + v7[28]) = *(a2 + v7[28]);
    *(a1 + v7[29]) = *(a2 + v7[29]);
    *(a1 + v7[30]) = *(a2 + v7[30]);
    v23 = _s20CategorizedRemindersV15FetchedReminderVMa(0);
    *(a1 + *(v23 + 20)) = *(a2 + *(v23 + 20));
    v24 = _s20CategorizedRemindersV17RecurrentInstanceVMa(0);
  }

  else
  {
    if (v19)
    {
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA108, &unk_261D020C0);
      memcpy(v15, v16, *(*(v21 - 8) + 64));
    }

    else
    {
      v25 = sub_261CFD4E4();
      (*(*(v25 - 8) + 32))(v15, v16, v25);
      v15[*(v17 + 20)] = v16[*(v17 + 20)];
      (*(v18 + 56))(v15, 0, 1, v17);
    }

    *(a1 + v7[11]) = *(a2 + v7[11]);
    *(a1 + v7[12]) = *(a2 + v7[12]);
    *(a1 + v7[13]) = *(a2 + v7[13]);
    *(a1 + v7[14]) = *(a2 + v7[14]);
    *(a1 + v7[15]) = *(a2 + v7[15]);
    *(a1 + v7[16]) = *(a2 + v7[16]);
    *(a1 + v7[17]) = *(a2 + v7[17]);
    *(a1 + v7[18]) = *(a2 + v7[18]);
    *(a1 + v7[19]) = *(a2 + v7[19]);
    *(a1 + v7[20]) = *(a2 + v7[20]);
    *(a1 + v7[21]) = *(a2 + v7[21]);
    *(a1 + v7[22]) = *(a2 + v7[22]);
    *(a1 + v7[23]) = *(a2 + v7[23]);
    *(a1 + v7[24]) = *(a2 + v7[24]);
    *(a1 + v7[25]) = *(a2 + v7[25]);
    *(a1 + v7[26]) = *(a2 + v7[26]);
    *(a1 + v7[27]) = *(a2 + v7[27]);
    *(a1 + v7[28]) = *(a2 + v7[28]);
    *(a1 + v7[29]) = *(a2 + v7[29]);
    *(a1 + v7[30]) = *(a2 + v7[30]);
    v24 = _s20CategorizedRemindersV15FetchedReminderVMa(0);
  }

  *(a1 + *(v24 + 20)) = *(a2 + *(v24 + 20));
  swift_storeEnumTagMultiPayload();
  return a1;
}

_OWORD *sub_261B971A0(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    sub_261B98750(a1, _s20CategorizedRemindersV12EditableItemOMa);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v6 = a2[1];
    *a1 = *a2;
    a1[1] = v6;
    a1[2] = a2[2];
    v7 = type metadata accessor for ReminderEntity(0);
    v8 = v7[10];
    v9 = a1 + v8;
    v10 = a2 + v8;
    *(a1 + v8) = *(a2 + v8);
    v11 = type metadata accessor for AppEntityID(0);
    v12 = *(v11 + 20);
    v13 = sub_261CFD844();
    (*(*(v13 - 8) + 32))(&v9[v12], &v10[v12], v13);
    v14 = *(v11 + 24);
    v15 = &v9[v14];
    v16 = &v10[v14];
    v17 = type metadata accessor for RecurrentInstanceSpecifier(0);
    v18 = *(v17 - 8);
    v19 = (*(v18 + 48))(v16, 1, v17);
    if (EnumCaseMultiPayload == 1)
    {
      if (v19)
      {
        v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA108, &unk_261D020C0);
        memcpy(v15, v16, *(*(v20 - 8) + 64));
      }

      else
      {
        v22 = sub_261CFD4E4();
        (*(*(v22 - 8) + 32))(v15, v16, v22);
        v15[*(v17 + 20)] = v16[*(v17 + 20)];
        (*(v18 + 56))(v15, 0, 1, v17);
      }

      *(a1 + v7[11]) = *(a2 + v7[11]);
      *(a1 + v7[12]) = *(a2 + v7[12]);
      *(a1 + v7[13]) = *(a2 + v7[13]);
      *(a1 + v7[14]) = *(a2 + v7[14]);
      *(a1 + v7[15]) = *(a2 + v7[15]);
      *(a1 + v7[16]) = *(a2 + v7[16]);
      *(a1 + v7[17]) = *(a2 + v7[17]);
      *(a1 + v7[18]) = *(a2 + v7[18]);
      *(a1 + v7[19]) = *(a2 + v7[19]);
      *(a1 + v7[20]) = *(a2 + v7[20]);
      *(a1 + v7[21]) = *(a2 + v7[21]);
      *(a1 + v7[22]) = *(a2 + v7[22]);
      *(a1 + v7[23]) = *(a2 + v7[23]);
      *(a1 + v7[24]) = *(a2 + v7[24]);
      *(a1 + v7[25]) = *(a2 + v7[25]);
      *(a1 + v7[26]) = *(a2 + v7[26]);
      *(a1 + v7[27]) = *(a2 + v7[27]);
      *(a1 + v7[28]) = *(a2 + v7[28]);
      *(a1 + v7[29]) = *(a2 + v7[29]);
      *(a1 + v7[30]) = *(a2 + v7[30]);
      v23 = _s20CategorizedRemindersV15FetchedReminderVMa(0);
      *(a1 + *(v23 + 20)) = *(a2 + *(v23 + 20));
      v24 = _s20CategorizedRemindersV17RecurrentInstanceVMa(0);
    }

    else
    {
      if (v19)
      {
        v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA108, &unk_261D020C0);
        memcpy(v15, v16, *(*(v21 - 8) + 64));
      }

      else
      {
        v25 = sub_261CFD4E4();
        (*(*(v25 - 8) + 32))(v15, v16, v25);
        v15[*(v17 + 20)] = v16[*(v17 + 20)];
        (*(v18 + 56))(v15, 0, 1, v17);
      }

      *(a1 + v7[11]) = *(a2 + v7[11]);
      *(a1 + v7[12]) = *(a2 + v7[12]);
      *(a1 + v7[13]) = *(a2 + v7[13]);
      *(a1 + v7[14]) = *(a2 + v7[14]);
      *(a1 + v7[15]) = *(a2 + v7[15]);
      *(a1 + v7[16]) = *(a2 + v7[16]);
      *(a1 + v7[17]) = *(a2 + v7[17]);
      *(a1 + v7[18]) = *(a2 + v7[18]);
      *(a1 + v7[19]) = *(a2 + v7[19]);
      *(a1 + v7[20]) = *(a2 + v7[20]);
      *(a1 + v7[21]) = *(a2 + v7[21]);
      *(a1 + v7[22]) = *(a2 + v7[22]);
      *(a1 + v7[23]) = *(a2 + v7[23]);
      *(a1 + v7[24]) = *(a2 + v7[24]);
      *(a1 + v7[25]) = *(a2 + v7[25]);
      *(a1 + v7[26]) = *(a2 + v7[26]);
      *(a1 + v7[27]) = *(a2 + v7[27]);
      *(a1 + v7[28]) = *(a2 + v7[28]);
      *(a1 + v7[29]) = *(a2 + v7[29]);
      *(a1 + v7[30]) = *(a2 + v7[30]);
      v24 = _s20CategorizedRemindersV15FetchedReminderVMa(0);
    }

    *(a1 + *(v24 + 20)) = *(a2 + *(v24 + 20));
    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t sub_261B976C4(uint64_t a1)
{
  result = _s20CategorizedRemindersV15FetchedReminderVMa(319);
  if (v2 <= 0x3F)
  {
    result = _s20CategorizedRemindersV17RecurrentInstanceVMa(319);
    if (v3 <= 0x3F)
    {
      swift_initEnumMetadataMultiPayload();
      return 0;
    }
  }

  return result;
}

uint64_t *sub_261B97788(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = *(*(a3 - 8) + 80);
  v4 = *a2;
  *a1 = *a2;
  if ((v3 & 0x20000) != 0)
  {
    v6 = (v4 + ((v3 + 16) & ~v3));
    sub_261CFCDA4();
  }

  else
  {
    v6 = a1;
    v27 = a2[2];
    a1[1] = a2[1];
    a1[2] = v27;
    v28 = a2[4];
    a1[3] = a2[3];
    a1[4] = v28;
    a1[5] = a2[5];
    v7 = type metadata accessor for ReminderEntity(0);
    v8 = v7[10];
    v9 = v6 + v8;
    v10 = a2 + v8;
    v11 = *(a2 + v8 + 8);
    *v9 = *(a2 + v8);
    *(v9 + 1) = v11;
    v12 = type metadata accessor for AppEntityID(0);
    v13 = *(v12 + 20);
    v14 = sub_261CFD844();
    v26 = *(*(v14 - 8) + 16);
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFD104();
    v26(&v9[v13], &v10[v13], v14);
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

    *(v6 + v7[11]) = *(a2 + v7[11]);
    *(v6 + v7[12]) = *(a2 + v7[12]);
    *(v6 + v7[13]) = *(a2 + v7[13]);
    *(v6 + v7[14]) = *(a2 + v7[14]);
    *(v6 + v7[15]) = *(a2 + v7[15]);
    *(v6 + v7[16]) = *(a2 + v7[16]);
    *(v6 + v7[17]) = *(a2 + v7[17]);
    *(v6 + v7[18]) = *(a2 + v7[18]);
    *(v6 + v7[19]) = *(a2 + v7[19]);
    *(v6 + v7[20]) = *(a2 + v7[20]);
    *(v6 + v7[21]) = *(a2 + v7[21]);
    *(v6 + v7[22]) = *(a2 + v7[22]);
    *(v6 + v7[23]) = *(a2 + v7[23]);
    *(v6 + v7[24]) = *(a2 + v7[24]);
    *(v6 + v7[25]) = *(a2 + v7[25]);
    *(v6 + v7[26]) = *(a2 + v7[26]);
    *(v6 + v7[27]) = *(a2 + v7[27]);
    *(v6 + v7[28]) = *(a2 + v7[28]);
    *(v6 + v7[29]) = *(a2 + v7[29]);
    *(v6 + v7[30]) = *(a2 + v7[30]);
    v22 = *(a3 + 20);
    v23 = *(a2 + v22);
    *(v6 + v22) = v23;
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
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    v24 = v23;
  }

  return v6;
}

void sub_261B97BC8(void *a1, uint64_t a2)
{

  v4 = a1 + *(type metadata accessor for ReminderEntity(0) + 40);

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

  v11 = *(a1 + *(a2 + 20));
}

uint64_t *sub_261B97E14(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = a2[1];
  *a1 = *a2;
  a1[1] = v5;
  v6 = a2[3];
  a1[2] = a2[2];
  a1[3] = v6;
  v7 = a2[5];
  a1[4] = a2[4];
  a1[5] = v7;
  v8 = type metadata accessor for ReminderEntity(0);
  v9 = v8[10];
  v10 = a1 + v9;
  v11 = a2 + v9;
  v12 = *(a2 + v9 + 8);
  *v10 = *(a2 + v9);
  *(v10 + 1) = v12;
  v13 = type metadata accessor for AppEntityID(0);
  v14 = *(v13 + 20);
  v15 = sub_261CFD844();
  v27 = *(*(v15 - 8) + 16);
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFD104();
  v27(&v10[v14], &v11[v14], v15);
  v16 = *(v13 + 24);
  v17 = &v10[v16];
  v18 = &v11[v16];
  v19 = type metadata accessor for RecurrentInstanceSpecifier(0);
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v18, 1, v19))
  {
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA108, &unk_261D020C0);
    memcpy(v17, v18, *(*(v21 - 8) + 64));
  }

  else
  {
    v22 = sub_261CFD4E4();
    (*(*(v22 - 8) + 16))(v17, v18, v22);
    v17[*(v19 + 20)] = v18[*(v19 + 20)];
    (*(v20 + 56))(v17, 0, 1, v19);
  }

  *(a1 + v8[11]) = *(a2 + v8[11]);
  *(a1 + v8[12]) = *(a2 + v8[12]);
  *(a1 + v8[13]) = *(a2 + v8[13]);
  *(a1 + v8[14]) = *(a2 + v8[14]);
  *(a1 + v8[15]) = *(a2 + v8[15]);
  *(a1 + v8[16]) = *(a2 + v8[16]);
  *(a1 + v8[17]) = *(a2 + v8[17]);
  *(a1 + v8[18]) = *(a2 + v8[18]);
  *(a1 + v8[19]) = *(a2 + v8[19]);
  *(a1 + v8[20]) = *(a2 + v8[20]);
  *(a1 + v8[21]) = *(a2 + v8[21]);
  *(a1 + v8[22]) = *(a2 + v8[22]);
  *(a1 + v8[23]) = *(a2 + v8[23]);
  *(a1 + v8[24]) = *(a2 + v8[24]);
  *(a1 + v8[25]) = *(a2 + v8[25]);
  *(a1 + v8[26]) = *(a2 + v8[26]);
  *(a1 + v8[27]) = *(a2 + v8[27]);
  *(a1 + v8[28]) = *(a2 + v8[28]);
  *(a1 + v8[29]) = *(a2 + v8[29]);
  *(a1 + v8[30]) = *(a2 + v8[30]);
  v23 = *(a3 + 20);
  v24 = *(a2 + v23);
  *(a1 + v23) = v24;
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
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  v25 = v24;
  return a1;
}

uint64_t *sub_261B9820C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  *a1 = *a2;
  sub_261CFCDA4();

  a1[1] = a2[1];
  sub_261CFCDA4();

  a1[2] = a2[2];
  sub_261CFCDA4();

  a1[3] = a2[3];
  sub_261CFCDA4();

  a1[4] = a2[4];
  sub_261CFCDA4();

  a1[5] = a2[5];
  sub_261CFCDA4();

  v5 = type metadata accessor for ReminderEntity(0);
  v6 = v5[10];
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
  if (!v10)
  {
    if (!v18)
    {
      v26 = sub_261CFD4E4();
      (*(*(v26 - 8) + 24))(v13, v14, v26);
      v13[*(v15 + 20)] = v14[*(v15 + 20)];
      goto LABEL_7;
    }

    sub_261B98750(v13, type metadata accessor for RecurrentInstanceSpecifier);
    goto LABEL_6;
  }

  if (v18)
  {
LABEL_6:
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA108, &unk_261D020C0);
    memcpy(v13, v14, *(*(v20 - 8) + 64));
    goto LABEL_7;
  }

  v19 = sub_261CFD4E4();
  (*(*(v19 - 8) + 16))(v13, v14, v19);
  v13[*(v15 + 20)] = v14[*(v15 + 20)];
  (*(v16 + 56))(v13, 0, 1, v15);
LABEL_7:
  *(a1 + v5[11]) = *(a2 + v5[11]);
  sub_261CFCDA4();

  *(a1 + v5[12]) = *(a2 + v5[12]);
  sub_261CFCDA4();

  *(a1 + v5[13]) = *(a2 + v5[13]);
  sub_261CFCDA4();

  *(a1 + v5[14]) = *(a2 + v5[14]);
  sub_261CFCDA4();

  *(a1 + v5[15]) = *(a2 + v5[15]);
  sub_261CFCDA4();

  *(a1 + v5[16]) = *(a2 + v5[16]);
  sub_261CFCDA4();

  *(a1 + v5[17]) = *(a2 + v5[17]);
  sub_261CFCDA4();

  *(a1 + v5[18]) = *(a2 + v5[18]);
  sub_261CFCDA4();

  *(a1 + v5[19]) = *(a2 + v5[19]);
  sub_261CFCDA4();

  *(a1 + v5[20]) = *(a2 + v5[20]);
  sub_261CFCDA4();

  *(a1 + v5[21]) = *(a2 + v5[21]);
  sub_261CFCDA4();

  *(a1 + v5[22]) = *(a2 + v5[22]);
  sub_261CFCDA4();

  *(a1 + v5[23]) = *(a2 + v5[23]);
  sub_261CFCDA4();

  *(a1 + v5[24]) = *(a2 + v5[24]);
  sub_261CFCDA4();

  *(a1 + v5[25]) = *(a2 + v5[25]);
  sub_261CFCDA4();

  *(a1 + v5[26]) = *(a2 + v5[26]);
  sub_261CFCDA4();

  *(a1 + v5[27]) = *(a2 + v5[27]);
  sub_261CFCDA4();

  *(a1 + v5[28]) = *(a2 + v5[28]);
  sub_261CFCDA4();

  *(a1 + v5[29]) = *(a2 + v5[29]);
  sub_261CFCDA4();

  *(a1 + v5[30]) = *(a2 + v5[30]);
  sub_261CFCDA4();

  v21 = *(a3 + 20);
  v22 = *(a2 + v21);
  v23 = *(a1 + v21);
  *(a1 + v21) = v22;
  v24 = v22;

  return a1;
}

uint64_t sub_261B98750(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t *sub_261B987B0(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  *a1 = *a2;

  a1[1] = a2[1];

  a1[2] = a2[2];

  a1[3] = a2[3];

  a1[4] = a2[4];

  a1[5] = a2[5];

  v5 = type metadata accessor for ReminderEntity(0);
  v6 = v5[10];
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
  if (!v11)
  {
    if (!v19)
    {
      v25 = sub_261CFD4E4();
      (*(*(v25 - 8) + 40))(v14, v15, v25);
      v14[*(v16 + 20)] = v15[*(v16 + 20)];
      goto LABEL_7;
    }

    sub_261B98750(v14, type metadata accessor for RecurrentInstanceSpecifier);
    goto LABEL_6;
  }

  if (v19)
  {
LABEL_6:
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA108, &unk_261D020C0);
    memcpy(v14, v15, *(*(v21 - 8) + 64));
    goto LABEL_7;
  }

  v20 = sub_261CFD4E4();
  (*(*(v20 - 8) + 32))(v14, v15, v20);
  v14[*(v16 + 20)] = v15[*(v16 + 20)];
  (*(v17 + 56))(v14, 0, 1, v16);
LABEL_7:
  *(a1 + v5[11]) = *(a2 + v5[11]);

  *(a1 + v5[12]) = *(a2 + v5[12]);

  *(a1 + v5[13]) = *(a2 + v5[13]);

  *(a1 + v5[14]) = *(a2 + v5[14]);

  *(a1 + v5[15]) = *(a2 + v5[15]);

  *(a1 + v5[16]) = *(a2 + v5[16]);

  *(a1 + v5[17]) = *(a2 + v5[17]);

  *(a1 + v5[18]) = *(a2 + v5[18]);

  *(a1 + v5[19]) = *(a2 + v5[19]);

  *(a1 + v5[20]) = *(a2 + v5[20]);

  *(a1 + v5[21]) = *(a2 + v5[21]);

  *(a1 + v5[22]) = *(a2 + v5[22]);

  *(a1 + v5[23]) = *(a2 + v5[23]);

  *(a1 + v5[24]) = *(a2 + v5[24]);

  *(a1 + v5[25]) = *(a2 + v5[25]);

  *(a1 + v5[26]) = *(a2 + v5[26]);

  *(a1 + v5[27]) = *(a2 + v5[27]);

  *(a1 + v5[28]) = *(a2 + v5[28]);

  *(a1 + v5[29]) = *(a2 + v5[29]);

  *(a1 + v5[30]) = *(a2 + v5[30]);

  v22 = *(a3 + 20);
  v23 = *(a1 + v22);
  *(a1 + v22) = *(a2 + v22);

  return a1;
}

uint64_t *sub_261B98C5C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = *(*(a3 - 8) + 80);
  v4 = *a2;
  *a1 = *a2;
  if ((v3 & 0x20000) != 0)
  {
    v6 = (v4 + ((v3 + 16) & ~v3));
    sub_261CFCDA4();
  }

  else
  {
    v6 = a1;
    v30 = a2[2];
    a1[1] = a2[1];
    a1[2] = v30;
    v31 = a2[4];
    a1[3] = a2[3];
    a1[4] = v31;
    a1[5] = a2[5];
    v7 = type metadata accessor for ReminderEntity(0);
    v8 = v7[10];
    v9 = v6 + v8;
    v10 = a2 + v8;
    v11 = *(a2 + v8 + 8);
    *v9 = *(a2 + v8);
    *(v9 + 1) = v11;
    v12 = type metadata accessor for AppEntityID(0);
    v13 = *(v12 + 20);
    v14 = sub_261CFD844();
    v29 = *(*(v14 - 8) + 16);
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFD104();
    v29(&v9[v13], &v10[v13], v14);
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

    *(v6 + v7[11]) = *(a2 + v7[11]);
    *(v6 + v7[12]) = *(a2 + v7[12]);
    *(v6 + v7[13]) = *(a2 + v7[13]);
    *(v6 + v7[14]) = *(a2 + v7[14]);
    *(v6 + v7[15]) = *(a2 + v7[15]);
    *(v6 + v7[16]) = *(a2 + v7[16]);
    *(v6 + v7[17]) = *(a2 + v7[17]);
    *(v6 + v7[18]) = *(a2 + v7[18]);
    *(v6 + v7[19]) = *(a2 + v7[19]);
    *(v6 + v7[20]) = *(a2 + v7[20]);
    *(v6 + v7[21]) = *(a2 + v7[21]);
    *(v6 + v7[22]) = *(a2 + v7[22]);
    *(v6 + v7[23]) = *(a2 + v7[23]);
    *(v6 + v7[24]) = *(a2 + v7[24]);
    *(v6 + v7[25]) = *(a2 + v7[25]);
    *(v6 + v7[26]) = *(a2 + v7[26]);
    *(v6 + v7[27]) = *(a2 + v7[27]);
    *(v6 + v7[28]) = *(a2 + v7[28]);
    *(v6 + v7[29]) = *(a2 + v7[29]);
    *(v6 + v7[30]) = *(a2 + v7[30]);
    v22 = *(_s20CategorizedRemindersV15FetchedReminderVMa(0) + 20);
    v23 = *(a2 + v22);
    *(v6 + v22) = v23;
    v24 = *(a3 + 20);
    v25 = *(a2 + v24);
    *(v6 + v24) = v25;
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
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    v26 = v23;
    v27 = v25;
  }

  return v6;
}

void sub_261B990C4(void *a1, uint64_t a2)
{

  v4 = a1 + *(type metadata accessor for ReminderEntity(0) + 40);

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

  v11 = *(a1 + *(a2 + 20));
}

uint64_t *sub_261B99324(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = a2[1];
  *a1 = *a2;
  a1[1] = v5;
  v6 = a2[3];
  a1[2] = a2[2];
  a1[3] = v6;
  v7 = a2[5];
  a1[4] = a2[4];
  a1[5] = v7;
  v8 = type metadata accessor for ReminderEntity(0);
  v9 = v8[10];
  v10 = a1 + v9;
  v11 = a2 + v9;
  v12 = *(a2 + v9 + 8);
  *v10 = *(a2 + v9);
  *(v10 + 1) = v12;
  v13 = type metadata accessor for AppEntityID(0);
  v14 = *(v13 + 20);
  v15 = sub_261CFD844();
  v30 = *(*(v15 - 8) + 16);
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFD104();
  v30(&v10[v14], &v11[v14], v15);
  v16 = *(v13 + 24);
  v17 = &v10[v16];
  v18 = &v11[v16];
  v19 = type metadata accessor for RecurrentInstanceSpecifier(0);
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v18, 1, v19))
  {
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA108, &unk_261D020C0);
    memcpy(v17, v18, *(*(v21 - 8) + 64));
  }

  else
  {
    v22 = sub_261CFD4E4();
    (*(*(v22 - 8) + 16))(v17, v18, v22);
    v17[*(v19 + 20)] = v18[*(v19 + 20)];
    (*(v20 + 56))(v17, 0, 1, v19);
  }

  *(a1 + v8[11]) = *(a2 + v8[11]);
  *(a1 + v8[12]) = *(a2 + v8[12]);
  *(a1 + v8[13]) = *(a2 + v8[13]);
  *(a1 + v8[14]) = *(a2 + v8[14]);
  *(a1 + v8[15]) = *(a2 + v8[15]);
  *(a1 + v8[16]) = *(a2 + v8[16]);
  *(a1 + v8[17]) = *(a2 + v8[17]);
  *(a1 + v8[18]) = *(a2 + v8[18]);
  *(a1 + v8[19]) = *(a2 + v8[19]);
  *(a1 + v8[20]) = *(a2 + v8[20]);
  *(a1 + v8[21]) = *(a2 + v8[21]);
  *(a1 + v8[22]) = *(a2 + v8[22]);
  *(a1 + v8[23]) = *(a2 + v8[23]);
  *(a1 + v8[24]) = *(a2 + v8[24]);
  *(a1 + v8[25]) = *(a2 + v8[25]);
  *(a1 + v8[26]) = *(a2 + v8[26]);
  *(a1 + v8[27]) = *(a2 + v8[27]);
  *(a1 + v8[28]) = *(a2 + v8[28]);
  *(a1 + v8[29]) = *(a2 + v8[29]);
  *(a1 + v8[30]) = *(a2 + v8[30]);
  v23 = *(_s20CategorizedRemindersV15FetchedReminderVMa(0) + 20);
  v24 = *(a2 + v23);
  *(a1 + v23) = v24;
  v25 = *(a3 + 20);
  v26 = *(a2 + v25);
  *(a1 + v25) = v26;
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
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  v27 = v24;
  v28 = v26;
  return a1;
}

uint64_t *sub_261B99744(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  *a1 = *a2;
  sub_261CFCDA4();

  a1[1] = a2[1];
  sub_261CFCDA4();

  a1[2] = a2[2];
  sub_261CFCDA4();

  a1[3] = a2[3];
  sub_261CFCDA4();

  a1[4] = a2[4];
  sub_261CFCDA4();

  a1[5] = a2[5];
  sub_261CFCDA4();

  v5 = type metadata accessor for ReminderEntity(0);
  v6 = v5[10];
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
  if (!v10)
  {
    if (!v18)
    {
      v30 = sub_261CFD4E4();
      (*(*(v30 - 8) + 24))(v13, v14, v30);
      v13[*(v15 + 20)] = v14[*(v15 + 20)];
      goto LABEL_7;
    }

    sub_261B98750(v13, type metadata accessor for RecurrentInstanceSpecifier);
    goto LABEL_6;
  }

  if (v18)
  {
LABEL_6:
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA108, &unk_261D020C0);
    memcpy(v13, v14, *(*(v20 - 8) + 64));
    goto LABEL_7;
  }

  v19 = sub_261CFD4E4();
  (*(*(v19 - 8) + 16))(v13, v14, v19);
  v13[*(v15 + 20)] = v14[*(v15 + 20)];
  (*(v16 + 56))(v13, 0, 1, v15);
LABEL_7:
  *(a1 + v5[11]) = *(a2 + v5[11]);
  sub_261CFCDA4();

  *(a1 + v5[12]) = *(a2 + v5[12]);
  sub_261CFCDA4();

  *(a1 + v5[13]) = *(a2 + v5[13]);
  sub_261CFCDA4();

  *(a1 + v5[14]) = *(a2 + v5[14]);
  sub_261CFCDA4();

  *(a1 + v5[15]) = *(a2 + v5[15]);
  sub_261CFCDA4();

  *(a1 + v5[16]) = *(a2 + v5[16]);
  sub_261CFCDA4();

  *(a1 + v5[17]) = *(a2 + v5[17]);
  sub_261CFCDA4();

  *(a1 + v5[18]) = *(a2 + v5[18]);
  sub_261CFCDA4();

  *(a1 + v5[19]) = *(a2 + v5[19]);
  sub_261CFCDA4();

  *(a1 + v5[20]) = *(a2 + v5[20]);
  sub_261CFCDA4();

  *(a1 + v5[21]) = *(a2 + v5[21]);
  sub_261CFCDA4();

  *(a1 + v5[22]) = *(a2 + v5[22]);
  sub_261CFCDA4();

  *(a1 + v5[23]) = *(a2 + v5[23]);
  sub_261CFCDA4();

  *(a1 + v5[24]) = *(a2 + v5[24]);
  sub_261CFCDA4();

  *(a1 + v5[25]) = *(a2 + v5[25]);
  sub_261CFCDA4();

  *(a1 + v5[26]) = *(a2 + v5[26]);
  sub_261CFCDA4();

  *(a1 + v5[27]) = *(a2 + v5[27]);
  sub_261CFCDA4();

  *(a1 + v5[28]) = *(a2 + v5[28]);
  sub_261CFCDA4();

  *(a1 + v5[29]) = *(a2 + v5[29]);
  sub_261CFCDA4();

  *(a1 + v5[30]) = *(a2 + v5[30]);
  sub_261CFCDA4();

  v21 = *(_s20CategorizedRemindersV15FetchedReminderVMa(0) + 20);
  v22 = *(a2 + v21);
  v23 = *(a1 + v21);
  *(a1 + v21) = v22;
  v24 = v22;

  v25 = *(a3 + 20);
  v26 = *(a2 + v25);
  v27 = *(a1 + v25);
  *(a1 + v25) = v26;
  v28 = v26;

  return a1;
}

_OWORD *sub_261B99CA8(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  v6 = a2[1];
  *a1 = *a2;
  a1[1] = v6;
  a1[2] = a2[2];
  v7 = type metadata accessor for ReminderEntity(0);
  v8 = v7[10];
  v9 = a1 + v8;
  v10 = a2 + v8;
  *(a1 + v8) = *(a2 + v8);
  v11 = type metadata accessor for AppEntityID(0);
  v12 = *(v11 + 20);
  v13 = sub_261CFD844();
  (*(*(v13 - 8) + 32))(&v9[v12], &v10[v12], v13);
  v14 = *(v11 + 24);
  v15 = &v9[v14];
  v16 = &v10[v14];
  v17 = type metadata accessor for RecurrentInstanceSpecifier(0);
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v16, 1, v17))
  {
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA108, &unk_261D020C0);
    memcpy(v15, v16, *(*(v19 - 8) + 64));
  }

  else
  {
    v20 = sub_261CFD4E4();
    (*(*(v20 - 8) + 32))(v15, v16, v20);
    v15[*(v17 + 20)] = v16[*(v17 + 20)];
    (*(v18 + 56))(v15, 0, 1, v17);
  }

  *(a1 + v7[11]) = *(a2 + v7[11]);
  *(a1 + v7[12]) = *(a2 + v7[12]);
  *(a1 + v7[13]) = *(a2 + v7[13]);
  *(a1 + v7[14]) = *(a2 + v7[14]);
  *(a1 + v7[15]) = *(a2 + v7[15]);
  *(a1 + v7[16]) = *(a2 + v7[16]);
  *(a1 + v7[17]) = *(a2 + v7[17]);
  *(a1 + v7[18]) = *(a2 + v7[18]);
  *(a1 + v7[19]) = *(a2 + v7[19]);
  *(a1 + v7[20]) = *(a2 + v7[20]);
  *(a1 + v7[21]) = *(a2 + v7[21]);
  *(a1 + v7[22]) = *(a2 + v7[22]);
  *(a1 + v7[23]) = *(a2 + v7[23]);
  *(a1 + v7[24]) = *(a2 + v7[24]);
  *(a1 + v7[25]) = *(a2 + v7[25]);
  *(a1 + v7[26]) = *(a2 + v7[26]);
  *(a1 + v7[27]) = *(a2 + v7[27]);
  *(a1 + v7[28]) = *(a2 + v7[28]);
  *(a1 + v7[29]) = *(a2 + v7[29]);
  *(a1 + v7[30]) = *(a2 + v7[30]);
  v21 = _s20CategorizedRemindersV15FetchedReminderVMa(0);
  *(a1 + *(v21 + 20)) = *(a2 + *(v21 + 20));
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

uint64_t *sub_261B99F7C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  *a1 = *a2;

  a1[1] = a2[1];

  a1[2] = a2[2];

  a1[3] = a2[3];

  a1[4] = a2[4];

  a1[5] = a2[5];

  v5 = type metadata accessor for ReminderEntity(0);
  v6 = v5[10];
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
  if (!v11)
  {
    if (!v19)
    {
      v27 = sub_261CFD4E4();
      (*(*(v27 - 8) + 40))(v14, v15, v27);
      v14[*(v16 + 20)] = v15[*(v16 + 20)];
      goto LABEL_7;
    }

    sub_261B98750(v14, type metadata accessor for RecurrentInstanceSpecifier);
    goto LABEL_6;
  }

  if (v19)
  {
LABEL_6:
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA108, &unk_261D020C0);
    memcpy(v14, v15, *(*(v21 - 8) + 64));
    goto LABEL_7;
  }

  v20 = sub_261CFD4E4();
  (*(*(v20 - 8) + 32))(v14, v15, v20);
  v14[*(v16 + 20)] = v15[*(v16 + 20)];
  (*(v17 + 56))(v14, 0, 1, v16);
LABEL_7:
  *(a1 + v5[11]) = *(a2 + v5[11]);

  *(a1 + v5[12]) = *(a2 + v5[12]);

  *(a1 + v5[13]) = *(a2 + v5[13]);

  *(a1 + v5[14]) = *(a2 + v5[14]);

  *(a1 + v5[15]) = *(a2 + v5[15]);

  *(a1 + v5[16]) = *(a2 + v5[16]);

  *(a1 + v5[17]) = *(a2 + v5[17]);

  *(a1 + v5[18]) = *(a2 + v5[18]);

  *(a1 + v5[19]) = *(a2 + v5[19]);

  *(a1 + v5[20]) = *(a2 + v5[20]);

  *(a1 + v5[21]) = *(a2 + v5[21]);

  *(a1 + v5[22]) = *(a2 + v5[22]);

  *(a1 + v5[23]) = *(a2 + v5[23]);

  *(a1 + v5[24]) = *(a2 + v5[24]);

  *(a1 + v5[25]) = *(a2 + v5[25]);

  *(a1 + v5[26]) = *(a2 + v5[26]);

  *(a1 + v5[27]) = *(a2 + v5[27]);

  *(a1 + v5[28]) = *(a2 + v5[28]);

  *(a1 + v5[29]) = *(a2 + v5[29]);

  *(a1 + v5[30]) = *(a2 + v5[30]);

  v22 = *(_s20CategorizedRemindersV15FetchedReminderVMa(0) + 20);
  v23 = *(a1 + v22);
  *(a1 + v22) = *(a2 + v22);

  v24 = *(a3 + 20);
  v25 = *(a1 + v24);
  *(a1 + v24) = *(a2 + v24);

  return a1;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = a4(0);
  v8 = *(v7 - 8);
  if (*(v8 + 84) == a2)
  {
    v9 = *(v8 + 48);

    return v9(a1, a2, v7);
  }

  else
  {
    v11 = *(a1 + *(a3 + 20));
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v10 = *(result - 8);
  if (*(v10 + 84) == a3)
  {
    v11 = *(v10 + 56);

    return v11(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_261B9A5C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t a5)
{
  result = a4(319, a2, a3);
  if (v6 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void *sub_261B9A654(uint64_t a1, int a2)
{
  v4 = v3;
  v103 = a2;
  v96 = _s20CategorizedRemindersV17RecurrentInstanceVMa(0);
  MEMORY[0x28223BE20](v96);
  v95 = &v92 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = _s20CategorizedRemindersV12EditableItemOMa(0);
  v101 = *(v7 - 8);
  v102 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v109 = &v92 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v100 = &v92 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA108, &unk_261D020C0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v92 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA160, &qword_261D02220);
  MEMORY[0x28223BE20](v14 - 8);
  v99 = &v92 - v15;
  v98 = type metadata accessor for RemindersInCalendarUtilities.ReminderSpecifier(0);
  MEMORY[0x28223BE20](v98);
  v108 = (&v92 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v97 = _s20CategorizedRemindersV15FetchedReminderVMa(0);
  MEMORY[0x28223BE20](v97);
  v112 = &v92 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = type metadata accessor for AppEntityID(0);
  MEMORY[0x28223BE20](v118);
  v116 = &v92 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = type metadata accessor for ReminderEntity(0);
  MEMORY[0x28223BE20](v114);
  v115 = &v92 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = _s27CategorizedReminderEntitiesV12EditableItemVMa(0);
  v21 = *(v20 - 8);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v113 = &v92 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = &v92 - v24;
  sub_261B9DCEC(a1);
  v27 = v26;
  v28 = *(v26 + 16);
  v94 = v29;
  if (v28)
  {
    v107 = v3;
    v110 = v13;
    v111 = v2;
    v121 = MEMORY[0x277D84F90];
    sub_261CFD104();
    sub_261D003A4();
    v30 = (*(v21 + 80) + 32) & ~*(v21 + 80);
    v93 = v27;
    v31 = v27 + v30;
    v106 = v21;
    v117 = *(v21 + 72);
    do
    {
      sub_261B9C2D4(v31, v25, _s27CategorizedReminderEntitiesV12EditableItemVMa);
      v32 = objc_allocWithZone(MEMORY[0x277D44700]);
      v33 = sub_261CFD814();
      v34 = sub_261CFFA54();
      [v32 initWithUUID:v33 entityName:v34];

      sub_261B98750(v25, _s27CategorizedReminderEntitiesV12EditableItemVMa);
      sub_261D00374();
      sub_261D003B4();
      sub_261D003C4();
      sub_261D00384();
      v31 += v117;
      --v28;
    }

    while (v28);
    v35 = v121;
    v13 = v110;
    v27 = v93;
    v21 = v106;
    v4 = v107;
  }

  else
  {
    sub_261CFD104();
    v35 = MEMORY[0x277D84F90];
  }

  v36 = sub_261CFC0B8(v35);
  if (v4)
  {

    return swift_bridgeObjectRelease_n();
  }

  v38 = v21;
  v39 = v36;

  v121 = MEMORY[0x277D84FA0];
  v40 = *(v27 + 16);
  if (v40)
  {
    v92 = 0;
    v41 = v38;
    v42 = (*(v38 + 80) + 32) & ~*(v38 + 80);
    v93 = v27;
    v43 = v27 + v42;
    v117 = v39 & 0xC000000000000001;
    v44 = *(v41 + 72);
    v110 = v39;
    v111 = v44;
    v45 = v39 & 0xFFFFFFFFFFFFFF8;
    if (v39 < 0)
    {
      v45 = v39;
    }

    v106 = v45;
    v107 = MEMORY[0x277D84F90];
    v46 = v114;
    while (1)
    {
      v47 = v113;
      sub_261B9C2D4(v43, v113, _s27CategorizedReminderEntitiesV12EditableItemVMa);
      v48 = v47;
      v49 = v115;
      sub_261B9C24C(v48, v115, type metadata accessor for ReminderEntity);
      sub_261B9C2D4(v49 + *(v46 + 40), v116, type metadata accessor for AppEntityID);
      v50 = objc_allocWithZone(MEMORY[0x277D44700]);
      v51 = sub_261CFD814();
      v52 = sub_261CFFA54();
      v53 = [v50 initWithUUID:v51 entityName:v52];

      if (v117)
      {
        v54 = v53;
        v55 = sub_261D004A4();

        if (v55)
        {
          v119 = v55;
          sub_261B05020(0, &qword_27FEDDF20, 0x277D44750);
          swift_dynamicCast();
          v56 = v120[0];
          if (v120[0])
          {
            goto LABEL_21;
          }
        }
      }

      else if (*(v110 + 2))
      {
        v57 = sub_261B37CA4(v53);
        if (v58)
        {
          v56 = *(*(v110 + 7) + 8 * v57);
          if (v56)
          {
LABEL_21:
            v105 = v53;
            v59 = v112;
            sub_261B9C2D4(v115, v112, type metadata accessor for ReminderEntity);
            *(v59 + *(v97 + 20)) = v56;
            v60 = v13;
            v61 = objc_allocWithZone(MEMORY[0x277D44700]);
            v104 = v56;
            v62 = v116;
            v63 = sub_261CFD814();
            v64 = sub_261CFFA54();
            v65 = v61;
            v13 = v60;
            v66 = [v65 initWithUUID:v63 entityName:v64];

            sub_261AFB668(v62 + *(v118 + 24), v60, &qword_27FEDA108, &unk_261D020C0);
            v67 = type metadata accessor for RecurrentInstanceSpecifier(0);
            if ((*(*(v67 - 8) + 48))(v60, 1, v67) == 1)
            {
              sub_261AE6A40(v60, &qword_27FEDA108, &unk_261D020C0);
              v68 = sub_261CFD4E4();
              v69 = v99;
              (*(*(v68 - 8) + 56))(v99, 1, 1, v68);
            }

            else
            {
              v70 = sub_261CFD4E4();
              v71 = *(v70 - 8);
              v69 = v99;
              (*(v71 + 16))(v99, v13, v70);
              sub_261B98750(v13, type metadata accessor for RecurrentInstanceSpecifier);
              (*(v71 + 56))(v69, 0, 1, v70);
            }

            v72 = v100;
            v73 = v108;
            *v108 = v66;
            sub_261B02380(v69, v73 + *(v98 + 20));
            v74 = v104;
            v75 = sub_261B026B0(v104, v103 & 1);

            v76 = v107;
            if (v75)
            {
              v77 = v95;
              sub_261B9C2D4(v112, v95, _s20CategorizedRemindersV15FetchedReminderVMa);
              *(v77 + *(v96 + 20)) = v75;
              sub_261B9C24C(v77, v72, _s20CategorizedRemindersV17RecurrentInstanceVMa);
            }

            else
            {
              sub_261B9C2D4(v112, v72, _s20CategorizedRemindersV15FetchedReminderVMa);
            }

            swift_storeEnumTagMultiPayload();
            sub_261B9C2D4(v72, v109, _s20CategorizedRemindersV12EditableItemOMa);
            v78 = v75;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v76 = sub_261B416D0(0, v76[2] + 1, 1, v76);
            }

            v80 = v76[2];
            v79 = v76[3];
            if (v80 >= v79 >> 1)
            {
              v76 = sub_261B416D0((v79 > 1), v80 + 1, 1, v76);
            }

            sub_261B98750(v72, _s20CategorizedRemindersV12EditableItemOMa);
            sub_261B98750(v108, type metadata accessor for RemindersInCalendarUtilities.ReminderSpecifier);
            sub_261B98750(v112, _s20CategorizedRemindersV15FetchedReminderVMa);
            sub_261B98750(v115, type metadata accessor for ReminderEntity);
            v76[2] = v80 + 1;
            v81 = (*(v101 + 80) + 32) & ~*(v101 + 80);
            v107 = v76;
            sub_261B9C24C(v109, v76 + v81 + *(v101 + 72) * v80, _s20CategorizedRemindersV12EditableItemOMa);
            sub_261B98750(v116, type metadata accessor for AppEntityID);
            goto LABEL_13;
          }
        }
      }

      sub_261B9C850(v120, v53);

      sub_261B98750(v115, type metadata accessor for ReminderEntity);
      sub_261B98750(v116, type metadata accessor for AppEntityID);
LABEL_13:
      v43 += v111;
      --v40;
      v46 = v114;
      if (!v40)
      {

        goto LABEL_34;
      }
    }
  }

  v107 = MEMORY[0x277D84F90];
LABEL_34:

  if ((v121 & 0xC000000000000001) != 0)
  {
    sub_261CFD104();
    v82 = sub_261D00274();

    if (v82)
    {
LABEL_36:
      if (qword_27FED9960 != -1)
      {
        swift_once();
      }

      v83 = sub_261CFF7A4();
      __swift_project_value_buffer(v83, qword_27FEDB2E8);
      v84 = sub_261CFF784();
      v85 = sub_261CFFE64();
      if (os_log_type_enabled(v84, v85))
      {
        v86 = swift_slowAlloc();
        v87 = swift_slowAlloc();
        v120[0] = v87;
        *v86 = 136315138;
        sub_261B05020(0, &qword_280D21DF0, 0x277D44700);
        sub_261B3B918();
        sub_261CFD104();
        v88 = sub_261CFFD74();
        v90 = v89;

        v91 = sub_261B879C8(v88, v90, v120);

        *(v86 + 4) = v91;
        _os_log_impl(&dword_261AE2000, v84, v85, "REMStoreIntentPerformer#fetchAndCategorizeReminders: missing reminders {objectIDs: %s}", v86, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v87);
        MEMORY[0x26671D560](v87, -1, -1);
        MEMORY[0x26671D560](v86, -1, -1);
      }

      return v107;
    }
  }

  else if (*(v121 + 16))
  {
    goto LABEL_36;
  }

  return v107;
}

uint64_t sub_261B9B45C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB330, &unk_261D05A90);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v21 - v13;
  result = sub_261B9C33C(a1, a2, a3);
  if (!v4)
  {
    if (*(result + 16))
    {
      v16 = result;
      v17 = _s20CategorizedRemindersV12EditableItemOMa(0);
      v18 = *(v17 - 8);
      sub_261B9C2D4(v16 + ((*(v18 + 80) + 32) & ~*(v18 + 80)), v14, _s20CategorizedRemindersV12EditableItemOMa);

      (*(v18 + 56))(v14, 0, 1, v17);
    }

    else
    {

      v17 = _s20CategorizedRemindersV12EditableItemOMa(0);
      (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
    }

    sub_261AFB668(v14, v12, &qword_27FEDB330, &unk_261D05A90);
    _s20CategorizedRemindersV12EditableItemOMa(0);
    if ((*(*(v17 - 8) + 48))(v12, 1, v17) == 1)
    {
      sub_261AE6A40(v12, &qword_27FEDB330, &unk_261D05A90);
      v19 = objc_opt_self();
      v20 = sub_261CFFA54();
      [v19 internalErrorWithDebugDescription_];

      swift_willThrow();
      return sub_261AE6A40(v14, &qword_27FEDB330, &unk_261D05A90);
    }

    else
    {
      sub_261AE6A40(v14, &qword_27FEDB330, &unk_261D05A90);
      return sub_261B9C24C(v12, a4, _s20CategorizedRemindersV12EditableItemOMa);
    }
  }

  return result;
}

uint64_t sub_261B9B744(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = _s20CategorizedRemindersV17RecurrentInstanceVMa(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _s20CategorizedRemindersV12EditableItemOMa(0);
  v33 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v31 - v13;
  v15 = _s20CategorizedRemindersV15FetchedReminderVMa(0);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = v34;
  v20 = sub_261B9C33C(a1, a2, a3);
  if (!v19)
  {
    v21 = v33;
    v31[2] = 0;
    v22 = *(v20 + 16);
    if (v22)
    {
      v32 = v8;
      v35 = MEMORY[0x277D84F90];
      v23 = v20;
      sub_261B3A234(0, v22, 0);
      a1 = v35;
      v24 = v21;
      v25 = *(v21 + 80);
      v31[1] = v23;
      v26 = v23 + ((v25 + 32) & ~v25);
      v33 = *(v24 + 72);
      v34 = v9;
      do
      {
        sub_261B9C2D4(v26, v14, _s20CategorizedRemindersV12EditableItemOMa);
        sub_261B9C24C(v14, v12, _s20CategorizedRemindersV12EditableItemOMa);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v27 = v32;
          sub_261B9C24C(v12, v32, _s20CategorizedRemindersV17RecurrentInstanceVMa);
          sub_261B9C2D4(v27, v18, _s20CategorizedRemindersV15FetchedReminderVMa);
          sub_261B98750(v27, _s20CategorizedRemindersV17RecurrentInstanceVMa);
        }

        else
        {
          sub_261B9C24C(v12, v18, _s20CategorizedRemindersV15FetchedReminderVMa);
        }

        v35 = a1;
        v29 = *(a1 + 16);
        v28 = *(a1 + 24);
        if (v29 >= v28 >> 1)
        {
          sub_261B3A234((v28 > 1), v29 + 1, 1);
          a1 = v35;
        }

        *(a1 + 16) = v29 + 1;
        sub_261B9C24C(v18, a1 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v29, _s20CategorizedRemindersV15FetchedReminderVMa);
        v26 += v33;
        --v22;
      }

      while (v22);
    }

    else
    {

      return MEMORY[0x277D84F90];
    }
  }

  return a1;
}

void *sub_261B9BAD4(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = type metadata accessor for ReminderEntity(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _s27CategorizedReminderEntitiesV12EditableItemVMa(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_261B9C5F8(a2, a3);
  if (!v3)
  {
    v22 = 0;
    v15 = a2[2];
    if (v15)
    {
      v23 = v8;
      v16 = *(v11 + 20);
      v17 = a2 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
      v18 = *(v12 + 72);
      a2 = MEMORY[0x277D84F90];
      v24 = a1;
      do
      {
        sub_261B9C2D4(v17, v14, _s27CategorizedReminderEntitiesV12EditableItemVMa);
        if ((*&v14[v16] & ~a1) != 0)
        {
          sub_261B98750(v14, _s27CategorizedReminderEntitiesV12EditableItemVMa);
        }

        else
        {
          sub_261B9C24C(v14, v10, type metadata accessor for ReminderEntity);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            a2 = sub_261B41560(0, a2[2] + 1, 1, a2);
          }

          v20 = a2[2];
          v19 = a2[3];
          if (v20 >= v19 >> 1)
          {
            a2 = sub_261B41560((v19 > 1), v20 + 1, 1, a2);
          }

          a2[2] = v20 + 1;
          sub_261B9C24C(v10, a2 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v20, type metadata accessor for ReminderEntity);
          a1 = v24;
        }

        v17 += v18;
        --v15;
      }

      while (v15);
    }

    else
    {
      return MEMORY[0x277D84F90];
    }
  }

  return a2;
}

uint64_t sub_261B9BD84()
{
  v0 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v0, qword_27FEDB2E8);
  v1 = __swift_project_value_buffer(v0, qword_27FEDB2E8);
  if (qword_280D22888 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D27010);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void *sub_261B9BE94@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_261B9BEC0@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_261B9BF84@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_261B9BFB4@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_261C651A0();

  *a2 = v3;
  return result;
}

id sub_261B9BFF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = _s20CategorizedRemindersV17RecurrentInstanceVMa(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _s20CategorizedRemindersV15FetchedReminderVMa(0);
  MEMORY[0x28223BE20](v9);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _s20CategorizedRemindersV12EditableItemOMa(0);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v21 - v16;
  v18 = v21[1];
  result = sub_261B9B45C(a1, a2, a3, v21 - v16);
  if (!v18)
  {
    sub_261B9C24C(v17, v15, _s20CategorizedRemindersV12EditableItemOMa);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_261B9C24C(v15, v8, _s20CategorizedRemindersV17RecurrentInstanceVMa);
      sub_261B9C2D4(v8, v11, _s20CategorizedRemindersV15FetchedReminderVMa);
      sub_261B98750(v8, _s20CategorizedRemindersV17RecurrentInstanceVMa);
    }

    else
    {
      sub_261B9C24C(v15, v11, _s20CategorizedRemindersV15FetchedReminderVMa);
    }

    v20 = *&v11[*(v9 + 20)];
    sub_261B98750(v11, _s20CategorizedRemindersV15FetchedReminderVMa);
    return v20;
  }

  return result;
}

uint64_t sub_261B9C24C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_261B9C2D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_261B9C33C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = _s20CategorizedRemindersV12EditableItemOMa(0);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v28 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v28 - v15;
  sub_261B9C5F8(a2, a3);
  if (!v3)
  {
    v28 = 0;
    v17 = *(a2 + 16);
    if (v17)
    {
      v31 = v11;
      v29 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v18 = a2 + v29;
      v19 = *(v8 + 72);
      a2 = MEMORY[0x277D84F90];
      v30 = v7;
      do
      {
        sub_261B9C2D4(v18, v16, _s20CategorizedRemindersV12EditableItemOMa);
        sub_261B9C2D4(v16, v14, _s20CategorizedRemindersV12EditableItemOMa);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v21 = 1;
        if (EnumCaseMultiPayload == 1)
        {
          v21 = 2;
        }

        v22 = a1;
        v23 = v21 & a1;
        sub_261B98750(v14, _s20CategorizedRemindersV12EditableItemOMa);
        if (v23)
        {
          sub_261B9C24C(v16, v31, _s20CategorizedRemindersV12EditableItemOMa);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v32 = a2;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_261B39E9C(0, *(a2 + 16) + 1, 1);
            a2 = v32;
          }

          v26 = *(a2 + 16);
          v25 = *(a2 + 24);
          if (v26 >= v25 >> 1)
          {
            sub_261B39E9C((v25 > 1), v26 + 1, 1);
            a2 = v32;
          }

          *(a2 + 16) = v26 + 1;
          sub_261B9C24C(v31, a2 + v29 + v26 * v19, _s20CategorizedRemindersV12EditableItemOMa);
        }

        else
        {
          sub_261B98750(v16, _s20CategorizedRemindersV12EditableItemOMa);
        }

        v18 += v19;
        --v17;
        a1 = v22;
      }

      while (v17);
    }

    else
    {
      return MEMORY[0x277D84F90];
    }
  }

  return a2;
}

uint64_t sub_261B9C5F8(uint64_t result, uint64_t a2)
{
  if (!*(result + 16) && *(a2 + 16))
  {
    if (qword_27FED9960 != -1)
    {
      swift_once();
    }

    v2 = sub_261CFF7A4();
    __swift_project_value_buffer(v2, qword_27FEDB2E8);
    v3 = sub_261CFF784();
    v4 = sub_261CFFE84();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_261AE2000, v3, v4, "REMStoreIntentPerformer: input reminder entities are all disabled recurrent instances", v5, 2u);
      MEMORY[0x26671D560](v5, -1, -1);
    }

    sub_261B01D70();
    swift_allocError();
    *v6 = 5;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_261B9C71C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_261B9D820(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *(_s27CategorizedReminderEntitiesV12EditableItemVMa(0) - 8);
    v10 = *(v9 + 72);
    v11 = v5 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + v10 * a1;
    result = sub_261B9C24C(v11, a2, _s27CategorizedReminderEntitiesV12EditableItemVMa);
    if (v10 > 0 || v11 >= v11 + v10 + v10 * (v8 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_261B9C850(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;
    sub_261CFD104();
    v9 = sub_261D00284();

    if (v9)
    {

      sub_261B05020(0, &qword_280D21DF0, 0x277D44700);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_261D00274();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_261B558DC(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_261B9CBD8(v20 + 1);
    }

    v18 = v8;
    sub_261B9D060(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_261B05020(0, &qword_280D21DF0, 0x277D44700);
  v11 = sub_261D000E4();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_261B9D0E4(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_261D000F4();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_261B9CA88(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_261D006C4();
  sub_261CFFB14();
  v8 = sub_261D006F4();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_261D00614() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;
    sub_261CFD104();
    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_261CFD104();
    sub_261B9D254(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_261B9CBD8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAB78, &unk_261D099C0);
  result = sub_261D002F4();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      result = sub_261D000E4();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_261B9CE00(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAB70, &unk_261D05AA0);
  result = sub_261D002F4();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_261D006C4();
      sub_261CFFB14();
      result = sub_261D006F4();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_261B9D060(uint64_t a1, uint64_t a2)
{
  sub_261D000E4();
  result = sub_261D00214();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void sub_261B9D0E4(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_261B9CBD8(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_261CBAF08();
      goto LABEL_12;
    }

    sub_261B9D3D4(v6 + 1);
  }

  v8 = *v3;
  v9 = sub_261D000E4();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_261B05020(0, &qword_280D21DF0, 0x277D44700);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_261D000F4();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_261D00644();
  __break(1u);
}

void sub_261B9D254(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_261B9CE00(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_261CBB058();
      goto LABEL_16;
    }

    sub_261B9D5E8(v8 + 1);
  }

  v10 = *v4;
  sub_261D006C4();
  sub_261CFFB14();
  v11 = sub_261D006F4();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == result && v14[1] == a2;
      if (v15 || (sub_261D00614() & 1) != 0)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = result;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return;
  }

  __break(1u);
LABEL_19:
  sub_261D00644();
  __break(1u);
}

uint64_t sub_261B9D3D4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAB78, &unk_261D099C0);
  result = sub_261D002F4();
  v5 = result;
  if (*(v3 + 16))
  {
    v24 = v1;
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      result = sub_261D000E4();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v24;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_261B9D5E8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAB70, &unk_261D05AA0);
  result = sub_261D002F4();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_261D006C4();
      sub_261CFD104();
      sub_261CFFB14();
      result = sub_261D006F4();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_261B9D848(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_261D00274();
  }

  return sub_261D00354();
}

uint64_t sub_261B9D8AC(uint64_t a1, uint64_t a2)
{
  v37 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA108, &unk_261D020C0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v35 - v4;
  v6 = type metadata accessor for ReminderEntity(0);
  v7 = MEMORY[0x28223BE20](v6);
  v42 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v38 = &v35 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v35 - v12;
  v14 = *(a1 + 16);
  if (v14)
  {
    v15 = *(v11 + 80);
    v16 = *(v11 + 72);
    v40 = v5;
    v41 = (v15 + 32) & ~v15;
    v17 = a1 + v41;
    v18 = MEMORY[0x277D84F90];
    v36 = v6;
    v39 = v16;
    while (1)
    {
      sub_261B9C2D4(v17, v13, type metadata accessor for ReminderEntity);
      v22 = v13;
      v23 = &v13[*(v6 + 40)];
      v24 = type metadata accessor for AppEntityID(0);
      v25 = v40;
      sub_261AFB668(&v23[*(v24 + 24)], v40, &qword_27FEDA108, &unk_261D020C0);
      v26 = type metadata accessor for RecurrentInstanceSpecifier(0);
      if ((*(*(v26 - 8) + 48))(v25, 1, v26) == 1)
      {
        sub_261AE6A40(v25, &qword_27FEDA108, &unk_261D020C0);
      }

      else
      {
        v27 = *(v25 + *(v26 + 20));
        sub_261B98750(v25, type metadata accessor for RecurrentInstanceSpecifier);
        if (v27)
        {
          v13 = v22;
          sub_261B9C2D4(v22, v38, type metadata accessor for ReminderEntity);
          v28 = v37;
          v29 = *(v37 + 8);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v28 + 8) = v29;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v29 = sub_261B41560(0, v29[2] + 1, 1, v29);
            *(v37 + 8) = v29;
          }

          v21 = v39;
          v32 = v29[2];
          v31 = v29[3];
          if (v32 >= v31 >> 1)
          {
            v29 = sub_261B41560((v31 > 1), v32 + 1, 1, v29);
            *(v37 + 8) = v29;
          }

          v29[2] = v32 + 1;
          sub_261B9C24C(v38, v29 + v41 + v32 * v21, type metadata accessor for ReminderEntity);
          sub_261B98750(v22, type metadata accessor for ReminderEntity);
          v6 = v36;
          goto LABEL_6;
        }
      }

      v13 = v22;
      sub_261B9C24C(v22, v42, type metadata accessor for ReminderEntity);
      v33 = swift_isUniquelyReferenced_nonNull_native();
      v43 = v18;
      if ((v33 & 1) == 0)
      {
        sub_261B39DB8(0, *(v18 + 16) + 1, 1);
        v18 = v43;
      }

      v20 = *(v18 + 16);
      v19 = *(v18 + 24);
      v21 = v39;
      if (v20 >= v19 >> 1)
      {
        sub_261B39DB8((v19 > 1), v20 + 1, 1);
        v18 = v43;
      }

      *(v18 + 16) = v20 + 1;
      sub_261B9C24C(v42, v18 + v41 + v20 * v21, type metadata accessor for ReminderEntity);
LABEL_6:
      v17 += v21;
      if (!--v14)
      {
        return v18;
      }
    }
  }

  return MEMORY[0x277D84F90];
}

void sub_261B9DCEC(uint64_t a1)
{
  v1 = _s27CategorizedReminderEntitiesV12EditableItemVMa(0);
  v2 = *(v1 - 8);
  v79 = v1;
  v80 = v2;
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v68 = &v68 - v7;
  MEMORY[0x28223BE20](v6);
  v75 = &v68 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA108, &unk_261D020C0);
  MEMORY[0x28223BE20](v9 - 8);
  v70 = &v68 - v10;
  v82 = type metadata accessor for AppEntityID(0);
  MEMORY[0x28223BE20](v82);
  v83 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for ReminderEntity(0);
  v12 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v14 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88[0] = MEMORY[0x277D84F90];
  v88[1] = MEMORY[0x277D84F90];
  v15 = sub_261CFD104();
  v16 = sub_261B9D8AC(v15, v88);

  v86 = MEMORY[0x277D84FA0];
  v87 = MEMORY[0x277D84FA0];
  v74 = *(v16 + 16);
  if (!v74)
  {
LABEL_49:

    return;
  }

  v73 = v16 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
  v84 = sub_261B05020(0, &qword_280D21DF0, 0x277D44700);
  v17 = 0;
  v18 = MEMORY[0x277D84F90];
  v69 = v5;
  v71 = v16;
  v72 = v12;
  v76 = v14;
  while (v17 < *(v16 + 16))
  {
    v81 = v18;
    sub_261B9C2D4(v73 + *(v12 + 72) * v17, v14, type metadata accessor for ReminderEntity);
    sub_261B9C2D4(&v14[*(v77 + 40)], v83, type metadata accessor for AppEntityID);
    v19 = objc_allocWithZone(MEMORY[0x277D44700]);
    v20 = sub_261CFD814();
    v21 = sub_261CFFA54();
    v22 = [v19 initWithUUID:v20 entityName:v21];

    v23 = v87;
    if ((v87 & 0xC000000000000001) != 0)
    {
      v24 = v22;
      v25 = sub_261D002B4();

      if (v25)
      {
        goto LABEL_3;
      }
    }

    else if (*(v87 + 16))
    {
      v26 = sub_261D000E4();
      v27 = -1 << *(v23 + 32);
      v28 = v26 & ~v27;
      if ((*(v23 + 56 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28))
      {
        v29 = ~v27;
        while (1)
        {
          v30 = *(*(v23 + 48) + 8 * v28);
          v31 = sub_261D000F4();

          if (v31)
          {
            break;
          }

          v28 = (v28 + 1) & v29;
          if (((*(v23 + 56 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
          {
            goto LABEL_15;
          }
        }

LABEL_3:
        v14 = v76;
        goto LABEL_4;
      }
    }

LABEL_15:
    v32 = v70;
    sub_261AFB668(v83 + *(v82 + 24), v70, &qword_27FEDA108, &unk_261D020C0);
    v33 = type metadata accessor for RecurrentInstanceSpecifier(0);
    v34 = (*(*(v33 - 8) + 48))(v32, 1, v33);
    sub_261AE6A40(v32, &qword_27FEDA108, &unk_261D020C0);
    v14 = v76;
    if (v34 == 1)
    {
      v35 = v22;
      sub_261B9C850(&v85, v35);

      v36 = v86;
      v37 = v75;
      v78 = v35;
      if ((v86 & 0xC000000000000001) != 0)
      {
        v38 = v35;
        v39 = sub_261D002B4();

        if (v39)
        {
          goto LABEL_18;
        }

LABEL_35:
        v50 = 1;
      }

      else
      {
        if (!*(v86 + 16) || (v54 = sub_261D000E4(), v55 = -1 << *(v36 + 32), v56 = v54 & ~v55, ((*(v36 + 56 + ((v56 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v56) & 1) == 0))
        {
          v50 = 1;
          goto LABEL_44;
        }

        v57 = ~v55;
        while (1)
        {
          v58 = *(*(v36 + 48) + 8 * v56);
          v59 = sub_261D000F4();

          if (v59)
          {
            break;
          }

          v56 = (v56 + 1) & v57;
          if (((*(v36 + 56 + ((v56 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v56) & 1) == 0)
          {
            goto LABEL_35;
          }
        }

LABEL_18:
        v40 = v81;
        v41 = v81[2];
        v42 = v78;
        if (v41)
        {
          v43 = v81 + ((*(v80 + 80) + 32) & ~*(v80 + 80));
          while (v41 <= v40[2])
          {
            --v41;
            sub_261B9C2D4(&v43[*(v80 + 72) * v41], v37, _s27CategorizedReminderEntitiesV12EditableItemVMa);
            if (*(v37 + *(v79 + 20)) == 2)
            {
              sub_261B05020(0, &qword_27FEDA1B0, 0x277D82BB8);
              v44 = objc_allocWithZone(MEMORY[0x277D44700]);
              v37 = v75;
              v45 = sub_261CFD814();
              v46 = sub_261CFFA54();
              v47 = v44;
              v42 = v78;
              v48 = [v47 initWithUUID:v45 entityName:v46];

              LOBYTE(v45) = sub_261D000F4();
              v40 = v81;
              sub_261B98750(v37, _s27CategorizedReminderEntitiesV12EditableItemVMa);
              if (v45)
              {
                v49 = v68;
                sub_261B9C71C(v41, v68);
                sub_261B98750(v49, _s27CategorizedReminderEntitiesV12EditableItemVMa);
                goto LABEL_26;
              }
            }

            else
            {
              sub_261B98750(v37, _s27CategorizedReminderEntitiesV12EditableItemVMa);
            }

            if (!v41)
            {
              goto LABEL_26;
            }
          }

          __break(1u);
          break;
        }

LABEL_26:

        v50 = 1;
        v5 = v69;
      }

      v14 = v76;
LABEL_44:
      sub_261B9C2D4(v14, v5, type metadata accessor for ReminderEntity);
      *&v5[*(v79 + 20)] = v50;
      v18 = v88[0];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_261B41538(0, v18[2] + 1, 1, v18);
      }

      v67 = v18[2];
      v66 = v18[3];
      v16 = v71;
      v12 = v72;
      if (v67 >= v66 >> 1)
      {
        v18 = sub_261B41538((v66 > 1), v67 + 1, 1, v18);
      }

      sub_261B98750(v14, type metadata accessor for ReminderEntity);
      v18[2] = v67 + 1;
      sub_261B9C24C(v5, v18 + ((*(v80 + 80) + 32) & ~*(v80 + 80)) + *(v80 + 72) * v67, _s27CategorizedReminderEntitiesV12EditableItemVMa);
      v88[0] = v18;
      goto LABEL_5;
    }

    v51 = v86;
    if ((v86 & 0xC000000000000001) != 0)
    {
      v52 = v22;
      v53 = sub_261D002B4();

      if ((v53 & 1) == 0)
      {
        goto LABEL_42;
      }
    }

    else
    {
      if (!*(v86 + 16) || (v60 = sub_261D000E4(), v61 = -1 << *(v51 + 32), v62 = v60 & ~v61, ((*(v51 + 56 + ((v62 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v62) & 1) == 0))
      {
LABEL_42:
        sub_261B9C850(&v85, v22);

        v50 = 2;
        goto LABEL_44;
      }

      v63 = ~v61;
      while (1)
      {
        v64 = *(*(v51 + 48) + 8 * v62);
        v65 = sub_261D000F4();

        if (v65)
        {
          break;
        }

        v62 = (v62 + 1) & v63;
        if (((*(v51 + 56 + ((v62 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v62) & 1) == 0)
        {
          goto LABEL_42;
        }
      }
    }

LABEL_4:
    sub_261B98750(v14, type metadata accessor for ReminderEntity);

    v16 = v71;
    v12 = v72;
    v18 = v81;
LABEL_5:
    ++v17;
    sub_261B98750(v83, type metadata accessor for AppEntityID);
    if (v17 == v74)
    {
      goto LABEL_49;
    }
  }

  __break(1u);
}

uint64_t *sub_261B9E6D4(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = *(*(a3 - 8) + 80);
  v4 = *a2;
  *a1 = *a2;
  if ((v3 & 0x20000) != 0)
  {
    v6 = (v4 + ((v3 + 16) & ~v3));
  }

  else
  {
    v6 = a1;
    v24 = a2[2];
    a1[1] = a2[1];
    a1[2] = v24;
    v25 = a2[4];
    a1[3] = a2[3];
    a1[4] = v25;
    a1[5] = a2[5];
    v7 = type metadata accessor for ReminderEntity(0);
    v8 = v7[10];
    v9 = v6 + v8;
    v10 = a2 + v8;
    v11 = *(a2 + v8 + 8);
    *v9 = *(a2 + v8);
    *(v9 + 1) = v11;
    v12 = type metadata accessor for AppEntityID(0);
    v13 = *(v12 + 20);
    v14 = sub_261CFD844();
    v23 = *(*(v14 - 8) + 16);
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFD104();
    v23(&v9[v13], &v10[v13], v14);
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

    *(v6 + v7[11]) = *(a2 + v7[11]);
    *(v6 + v7[12]) = *(a2 + v7[12]);
    *(v6 + v7[13]) = *(a2 + v7[13]);
    *(v6 + v7[14]) = *(a2 + v7[14]);
    *(v6 + v7[15]) = *(a2 + v7[15]);
    *(v6 + v7[16]) = *(a2 + v7[16]);
    *(v6 + v7[17]) = *(a2 + v7[17]);
    *(v6 + v7[18]) = *(a2 + v7[18]);
    *(v6 + v7[19]) = *(a2 + v7[19]);
    *(v6 + v7[20]) = *(a2 + v7[20]);
    *(v6 + v7[21]) = *(a2 + v7[21]);
    *(v6 + v7[22]) = *(a2 + v7[22]);
    *(v6 + v7[23]) = *(a2 + v7[23]);
    *(v6 + v7[24]) = *(a2 + v7[24]);
    *(v6 + v7[25]) = *(a2 + v7[25]);
    *(v6 + v7[26]) = *(a2 + v7[26]);
    *(v6 + v7[27]) = *(a2 + v7[27]);
    *(v6 + v7[28]) = *(a2 + v7[28]);
    *(v6 + v7[29]) = *(a2 + v7[29]);
    *(v6 + v7[30]) = *(a2 + v7[30]);
    *(v6 + *(a3 + 20)) = *(a2 + *(a3 + 20));
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
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
  }

  sub_261CFCDA4();
  return v6;
}

uint64_t sub_261B9EB10(void *a1)
{

  v2 = a1 + *(type metadata accessor for ReminderEntity(0) + 40);

  v3 = type metadata accessor for AppEntityID(0);
  v4 = *(v3 + 20);
  v5 = sub_261CFD844();
  (*(*(v5 - 8) + 8))(&v2[v4], v5);
  v6 = *(v3 + 24);
  v7 = type metadata accessor for RecurrentInstanceSpecifier(0);
  if (!(*(*(v7 - 8) + 48))(&v2[v6], 1, v7))
  {
    v8 = sub_261CFD4E4();
    (*(*(v8 - 8) + 8))(&v2[v6], v8);
  }
}

uint64_t *sub_261B9ED4C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = a2[1];
  *a1 = *a2;
  a1[1] = v5;
  v6 = a2[3];
  a1[2] = a2[2];
  a1[3] = v6;
  v7 = a2[5];
  a1[4] = a2[4];
  a1[5] = v7;
  v8 = type metadata accessor for ReminderEntity(0);
  v9 = v8[10];
  v10 = a1 + v9;
  v11 = a2 + v9;
  v12 = *(a2 + v9 + 8);
  *v10 = *(a2 + v9);
  *(v10 + 1) = v12;
  v13 = type metadata accessor for AppEntityID(0);
  v14 = *(v13 + 20);
  v15 = sub_261CFD844();
  v24 = *(*(v15 - 8) + 16);
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFD104();
  v24(&v10[v14], &v11[v14], v15);
  v16 = *(v13 + 24);
  v17 = &v10[v16];
  v18 = &v11[v16];
  v19 = type metadata accessor for RecurrentInstanceSpecifier(0);
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v18, 1, v19))
  {
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA108, &unk_261D020C0);
    memcpy(v17, v18, *(*(v21 - 8) + 64));
  }

  else
  {
    v22 = sub_261CFD4E4();
    (*(*(v22 - 8) + 16))(v17, v18, v22);
    v17[*(v19 + 20)] = v18[*(v19 + 20)];
    (*(v20 + 56))(v17, 0, 1, v19);
  }

  *(a1 + v8[11]) = *(a2 + v8[11]);
  *(a1 + v8[12]) = *(a2 + v8[12]);
  *(a1 + v8[13]) = *(a2 + v8[13]);
  *(a1 + v8[14]) = *(a2 + v8[14]);
  *(a1 + v8[15]) = *(a2 + v8[15]);
  *(a1 + v8[16]) = *(a2 + v8[16]);
  *(a1 + v8[17]) = *(a2 + v8[17]);
  *(a1 + v8[18]) = *(a2 + v8[18]);
  *(a1 + v8[19]) = *(a2 + v8[19]);
  *(a1 + v8[20]) = *(a2 + v8[20]);
  *(a1 + v8[21]) = *(a2 + v8[21]);
  *(a1 + v8[22]) = *(a2 + v8[22]);
  *(a1 + v8[23]) = *(a2 + v8[23]);
  *(a1 + v8[24]) = *(a2 + v8[24]);
  *(a1 + v8[25]) = *(a2 + v8[25]);
  *(a1 + v8[26]) = *(a2 + v8[26]);
  *(a1 + v8[27]) = *(a2 + v8[27]);
  *(a1 + v8[28]) = *(a2 + v8[28]);
  *(a1 + v8[29]) = *(a2 + v8[29]);
  *(a1 + v8[30]) = *(a2 + v8[30]);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
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
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  return a1;
}

uint64_t *sub_261B9F140(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  *a1 = *a2;
  sub_261CFCDA4();

  a1[1] = a2[1];
  sub_261CFCDA4();

  a1[2] = a2[2];
  sub_261CFCDA4();

  a1[3] = a2[3];
  sub_261CFCDA4();

  a1[4] = a2[4];
  sub_261CFCDA4();

  a1[5] = a2[5];
  sub_261CFCDA4();

  v5 = type metadata accessor for ReminderEntity(0);
  v6 = v5[10];
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
  if (!v10)
  {
    if (!v18)
    {
      v22 = sub_261CFD4E4();
      (*(*(v22 - 8) + 24))(v13, v14, v22);
      v13[*(v15 + 20)] = v14[*(v15 + 20)];
      goto LABEL_7;
    }

    sub_261B98750(v13, type metadata accessor for RecurrentInstanceSpecifier);
    goto LABEL_6;
  }

  if (v18)
  {
LABEL_6:
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA108, &unk_261D020C0);
    memcpy(v13, v14, *(*(v20 - 8) + 64));
    goto LABEL_7;
  }

  v19 = sub_261CFD4E4();
  (*(*(v19 - 8) + 16))(v13, v14, v19);
  v13[*(v15 + 20)] = v14[*(v15 + 20)];
  (*(v16 + 56))(v13, 0, 1, v15);
LABEL_7:
  *(a1 + v5[11]) = *(a2 + v5[11]);
  sub_261CFCDA4();

  *(a1 + v5[12]) = *(a2 + v5[12]);
  sub_261CFCDA4();

  *(a1 + v5[13]) = *(a2 + v5[13]);
  sub_261CFCDA4();

  *(a1 + v5[14]) = *(a2 + v5[14]);
  sub_261CFCDA4();

  *(a1 + v5[15]) = *(a2 + v5[15]);
  sub_261CFCDA4();

  *(a1 + v5[16]) = *(a2 + v5[16]);
  sub_261CFCDA4();

  *(a1 + v5[17]) = *(a2 + v5[17]);
  sub_261CFCDA4();

  *(a1 + v5[18]) = *(a2 + v5[18]);
  sub_261CFCDA4();

  *(a1 + v5[19]) = *(a2 + v5[19]);
  sub_261CFCDA4();

  *(a1 + v5[20]) = *(a2 + v5[20]);
  sub_261CFCDA4();

  *(a1 + v5[21]) = *(a2 + v5[21]);
  sub_261CFCDA4();

  *(a1 + v5[22]) = *(a2 + v5[22]);
  sub_261CFCDA4();

  *(a1 + v5[23]) = *(a2 + v5[23]);
  sub_261CFCDA4();

  *(a1 + v5[24]) = *(a2 + v5[24]);
  sub_261CFCDA4();

  *(a1 + v5[25]) = *(a2 + v5[25]);
  sub_261CFCDA4();

  *(a1 + v5[26]) = *(a2 + v5[26]);
  sub_261CFCDA4();

  *(a1 + v5[27]) = *(a2 + v5[27]);
  sub_261CFCDA4();

  *(a1 + v5[28]) = *(a2 + v5[28]);
  sub_261CFCDA4();

  *(a1 + v5[29]) = *(a2 + v5[29]);
  sub_261CFCDA4();

  *(a1 + v5[30]) = *(a2 + v5[30]);
  sub_261CFCDA4();

  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

_OWORD *sub_261B9F678(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  v6 = a2[1];
  *a1 = *a2;
  a1[1] = v6;
  a1[2] = a2[2];
  v7 = type metadata accessor for ReminderEntity(0);
  v8 = v7[10];
  v9 = a1 + v8;
  v10 = a2 + v8;
  *(a1 + v8) = *(a2 + v8);
  v11 = type metadata accessor for AppEntityID(0);
  v12 = *(v11 + 20);
  v13 = sub_261CFD844();
  (*(*(v13 - 8) + 32))(&v9[v12], &v10[v12], v13);
  v14 = *(v11 + 24);
  v15 = &v9[v14];
  v16 = &v10[v14];
  v17 = type metadata accessor for RecurrentInstanceSpecifier(0);
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v16, 1, v17))
  {
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA108, &unk_261D020C0);
    memcpy(v15, v16, *(*(v19 - 8) + 64));
  }

  else
  {
    v20 = sub_261CFD4E4();
    (*(*(v20 - 8) + 32))(v15, v16, v20);
    v15[*(v17 + 20)] = v16[*(v17 + 20)];
    (*(v18 + 56))(v15, 0, 1, v17);
  }

  *(a1 + v7[11]) = *(a2 + v7[11]);
  *(a1 + v7[12]) = *(a2 + v7[12]);
  *(a1 + v7[13]) = *(a2 + v7[13]);
  *(a1 + v7[14]) = *(a2 + v7[14]);
  *(a1 + v7[15]) = *(a2 + v7[15]);
  *(a1 + v7[16]) = *(a2 + v7[16]);
  *(a1 + v7[17]) = *(a2 + v7[17]);
  *(a1 + v7[18]) = *(a2 + v7[18]);
  *(a1 + v7[19]) = *(a2 + v7[19]);
  *(a1 + v7[20]) = *(a2 + v7[20]);
  *(a1 + v7[21]) = *(a2 + v7[21]);
  *(a1 + v7[22]) = *(a2 + v7[22]);
  *(a1 + v7[23]) = *(a2 + v7[23]);
  *(a1 + v7[24]) = *(a2 + v7[24]);
  *(a1 + v7[25]) = *(a2 + v7[25]);
  *(a1 + v7[26]) = *(a2 + v7[26]);
  *(a1 + v7[27]) = *(a2 + v7[27]);
  *(a1 + v7[28]) = *(a2 + v7[28]);
  *(a1 + v7[29]) = *(a2 + v7[29]);
  *(a1 + v7[30]) = *(a2 + v7[30]);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

uint64_t *sub_261B9F938(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  *a1 = *a2;

  a1[1] = a2[1];

  a1[2] = a2[2];

  a1[3] = a2[3];

  a1[4] = a2[4];

  a1[5] = a2[5];

  v5 = type metadata accessor for ReminderEntity(0);
  v6 = v5[10];
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
  if (!v11)
  {
    if (!v19)
    {
      v23 = sub_261CFD4E4();
      (*(*(v23 - 8) + 40))(v14, v15, v23);
      v14[*(v16 + 20)] = v15[*(v16 + 20)];
      goto LABEL_7;
    }

    sub_261B98750(v14, type metadata accessor for RecurrentInstanceSpecifier);
    goto LABEL_6;
  }

  if (v19)
  {
LABEL_6:
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA108, &unk_261D020C0);
    memcpy(v14, v15, *(*(v21 - 8) + 64));
    goto LABEL_7;
  }

  v20 = sub_261CFD4E4();
  (*(*(v20 - 8) + 32))(v14, v15, v20);
  v14[*(v16 + 20)] = v15[*(v16 + 20)];
  (*(v17 + 56))(v14, 0, 1, v16);
LABEL_7:
  *(a1 + v5[11]) = *(a2 + v5[11]);

  *(a1 + v5[12]) = *(a2 + v5[12]);

  *(a1 + v5[13]) = *(a2 + v5[13]);

  *(a1 + v5[14]) = *(a2 + v5[14]);

  *(a1 + v5[15]) = *(a2 + v5[15]);

  *(a1 + v5[16]) = *(a2 + v5[16]);

  *(a1 + v5[17]) = *(a2 + v5[17]);

  *(a1 + v5[18]) = *(a2 + v5[18]);

  *(a1 + v5[19]) = *(a2 + v5[19]);

  *(a1 + v5[20]) = *(a2 + v5[20]);

  *(a1 + v5[21]) = *(a2 + v5[21]);

  *(a1 + v5[22]) = *(a2 + v5[22]);

  *(a1 + v5[23]) = *(a2 + v5[23]);

  *(a1 + v5[24]) = *(a2 + v5[24]);

  *(a1 + v5[25]) = *(a2 + v5[25]);

  *(a1 + v5[26]) = *(a2 + v5[26]);

  *(a1 + v5[27]) = *(a2 + v5[27]);

  *(a1 + v5[28]) = *(a2 + v5[28]);

  *(a1 + v5[29]) = *(a2 + v5[29]);

  *(a1 + v5[30]) = *(a2 + v5[30]);

  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

uint64_t *sub_261B9FDDC(uint64_t *a1, uint64_t *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  sub_261CFD104();
  sub_261CFD104();
  return a1;
}

uint64_t *sub_261B9FE14(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;
  sub_261CFD104();

  a1[1] = a2[1];
  sub_261CFD104();

  return a1;
}

void *sub_261B9FE74(void *a1, _OWORD *a2)
{

  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for GroupEntityQuery(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t storeEnumTagSinglePayload for GroupEntityQuery(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_261B9FF5C()
{
  result = qword_27FEDB348;
  if (!qword_27FEDB348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB348);
  }

  return result;
}

unint64_t sub_261B9FFB4()
{
  result = qword_27FEDB350;
  if (!qword_27FEDB350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB350);
  }

  return result;
}

unint64_t sub_261BA000C()
{
  result = qword_27FEDB358;
  if (!qword_27FEDB358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB358);
  }

  return result;
}

unint64_t sub_261BA0064()
{
  result = qword_27FEDB360;
  if (!qword_27FEDB360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB360);
  }

  return result;
}

uint64_t sub_261BA00E8()
{
  v0 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v0, qword_27FEDB368);
  v1 = __swift_project_value_buffer(v0, qword_27FEDB368);
  if (qword_280D22888 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D27010);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_261BA02B0()
{
  v13 = v0;

  if (qword_27FED9968 != -1)
  {
    swift_once();
  }

  v1 = sub_261CFF7A4();
  __swift_project_value_buffer(v1, qword_27FEDB368);
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
    v6 = sub_261B879C8(v0[4], v0[5], &v12);

    *(v4 + 4) = v6;
    _os_log_impl(&dword_261AE2000, v2, v3, "[OpenSearchAppIntent] Open section with searchPhrase: %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x26671D560](v5, -1, -1);
    MEMORY[0x26671D560](v4, -1, -1);
  }

  v7 = v0[9];
  sub_261CFCBB4();
  sub_261BBFE8C(v0[2], v0[3], v7);

  v8 = [objc_opt_self() defaultWorkspace];
  if (v8)
  {
    v9 = v8;
    sub_261D00034();
  }

  (*(v0[8] + 8))(v0[9], v0[7]);
  sub_261CFC9A4();

  v10 = v0[1];

  return v10();
}

uint64_t sub_261BA04E8(uint64_t a1, _OWORD *a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_261AF43A8;

  return REMStoreIntentPerformer.perform(_:)(a1, a2);
}

uint64_t sub_261BA0588(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v18 = a2;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA680, &qword_261D03238);
  v5 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v7 = &v16 - v6;
  v8 = *(a1 + 16);
  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    v20 = MEMORY[0x277D84F90];
    sub_261B3A278(0, v8, 0);
    v9 = v20;
    v10 = *(sub_261CFEFD4() - 8);
    v11 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v16 = v5 + 32;
    v12 = *(v10 + 72);
    while (1)
    {
      sub_261BA2F0C(v11, v18, &v19, v7);
      if (v3)
      {
        break;
      }

      v3 = 0;
      v20 = v9;
      v14 = *(v9 + 16);
      v13 = *(v9 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_261B3A278((v13 > 1), v14 + 1, 1);
        v9 = v20;
      }

      *(v9 + 16) = v14 + 1;
      (*(v5 + 32))(v9 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v14, v7, v17);
      v11 += v12;
      if (!--v8)
      {
        return v9;
      }
    }
  }

  return v9;
}

void *sub_261BA078C(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return MEMORY[0x277D84F90];
  }

  v5 = *(sub_261CFEF74() - 8);
  v6 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v7 = *(v5 + 72);
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    result = sub_261BA3488(v6, a2, &v21);
    if (v2)
    {

      return v8;
    }

    v10 = v21;
    v11 = *(v21 + 2);
    v12 = v8[2];
    v13 = v12 + v11;
    if (__OFADD__(v12, v11))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) != 0 && v13 <= v8[3] >> 1)
    {
      if (*(v10 + 2))
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v12 <= v13)
      {
        v15 = v12 + v11;
      }

      else
      {
        v15 = v12;
      }

      v8 = sub_261B42224(isUniquelyReferenced_nonNull_native, v15, 1, v8);
      if (*(v10 + 2))
      {
LABEL_15:
        v16 = (v8[3] >> 1) - v8[2];
        result = type metadata accessor for GroupEntity(0);
        if (v16 < v11)
        {
          goto LABEL_24;
        }

        swift_arrayInitWithCopy();

        if (v11)
        {
          v17 = v8[2];
          v18 = __OFADD__(v17, v11);
          v19 = v17 + v11;
          if (v18)
          {
            goto LABEL_25;
          }

          v8[2] = v19;
        }

        goto LABEL_4;
      }
    }

    if (v11)
    {
      goto LABEL_23;
    }

LABEL_4:
    v6 += v7;
    if (!--v3)
    {
      return v8;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_261BA0984(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
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
          v8 = MEMORY[0x26671CA10](v5, a3);
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
      v13 = sub_261D00274();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t sub_261BA0AAC()
{
  v0 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v0, qword_27FEDB380);
  v1 = __swift_project_value_buffer(v0, qword_27FEDB380);
  if (qword_280D22888 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D27010);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_261BA0D00()
{
  v46 = v0;
  v45[1] = *MEMORY[0x277D85DE8];
  if (qword_27FED9970 != -1)
  {
    swift_once();
  }

  v1 = sub_261CFF7A4();
  __swift_project_value_buffer(v1, qword_27FEDB380);
  sub_261CFD104();
  v2 = sub_261CFF784();
  v3 = sub_261CFFE84();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 80);
    v5 = *(v0 + 24);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v45[0] = v7;
    *v6 = 136446210;
    v8 = MEMORY[0x26671C340](v5, v4);
    v10 = sub_261B879C8(v8, v9, v45);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_261AE2000, v2, v3, "[GroupEntityGroupQueryPerforming] Query groups with identifiers %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x26671D560](v7, -1, -1);
    MEMORY[0x26671D560](v6, -1, -1);
  }

  v11 = *(v0 + 24);
  v41 = *(*(v0 + 32) + 16);
  v12 = *(v11 + 16);
  v44 = v0;
  if (v12)
  {
    v13 = *(v0 + 88);
    v45[0] = MEMORY[0x277D84F90];
    sub_261D003A4();
    v14 = v11 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v15 = *(v13 + 72);
    v16 = v12;
    do
    {
      v17 = *(v0 + 96);
      sub_261BA4248(v14, v17, type metadata accessor for AppEntityID);
      v18 = objc_allocWithZone(MEMORY[0x277D44700]);
      v19 = sub_261CFD814();
      v20 = sub_261CFFA54();
      v0 = v44;
      [v18 initWithUUID:v19 entityName:v20];

      sub_261BA42B0(v17, type metadata accessor for AppEntityID);
      sub_261D00374();
      sub_261D003B4();
      sub_261D003C4();
      sub_261D00384();
      v14 += v15;
      --v16;
    }

    while (v16);
  }

  sub_261B05020(0, &qword_280D21DF0, 0x277D44700);
  v21 = sub_261CFFC54();

  *(v0 + 16) = 0;
  v22 = [v41 fetchListsWithObjectIDs:v21 error:v0 + 16];

  v23 = *(v0 + 16);
  if (v22)
  {
    sub_261B05020(0, &qword_27FEDB0E0, 0x277D44660);
    sub_261B3B918();
    v24 = sub_261CFF8F4();
    v25 = v23;

    if (v12)
    {
      v26 = *(v0 + 88);
      v43 = *(v0 + 56);
      v27 = (v43 + 48);
      v28 = *(v0 + 24) + ((*(v26 + 80) + 32) & ~*(v26 + 80));
      v29 = *(v26 + 72);
      v30 = MEMORY[0x277D84F90];
      v42 = v29;
      do
      {
        sub_261BA1334(v24, *(v0 + 40));
        v31 = *(v0 + 40);
        if ((*v27)(v31, 1, *(v0 + 48)) == 1)
        {
          sub_261AE6A40(v31, &unk_27FEDD950, &unk_261D01440);
        }

        else
        {
          v33 = *(v0 + 64);
          v32 = *(v0 + 72);
          sub_261BA41C0(v31, v32, type metadata accessor for GroupEntity);
          sub_261BA41C0(v32, v33, type metadata accessor for GroupEntity);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v30 = sub_261B42224(0, v30[2] + 1, 1, v30);
          }

          v35 = v30[2];
          v34 = v30[3];
          v0 = v44;
          if (v35 >= v34 >> 1)
          {
            v30 = sub_261B42224((v34 > 1), v35 + 1, 1, v30);
          }

          v36 = *(v44 + 64);
          v30[2] = v35 + 1;
          sub_261BA41C0(v36, v30 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v35, type metadata accessor for GroupEntity);
          v29 = v42;
          v27 = (v43 + 48);
        }

        v28 += v29;
        --v12;
      }

      while (v12);
    }

    else
    {
      v30 = MEMORY[0x277D84F90];
    }

    v38 = *(v0 + 8);

    return v38(v30);
  }

  else
  {
    v37 = v23;
    sub_261CFD654();

    swift_willThrow();

    v40 = *(v0 + 8);

    return v40();
  }
}

void sub_261BA1334(void *a2@<X1>, uint64_t *a3@<X8>)
{
  v71 = a3;
  v74 = a2;
  v78 = *MEMORY[0x277D85DE8];
  v3 = type metadata accessor for ListEntity(0);
  v75 = *(v3 - 8);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v70 = (&v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v4);
  v69 = &v67 - v6;
  type metadata accessor for AppEntityID(0);
  v7 = objc_allocWithZone(MEMORY[0x277D44700]);
  v8 = sub_261CFD814();
  v9 = sub_261CFFA54();
  v73 = [v7 initWithUUID:v8 entityName:v9];

  v10 = objc_allocWithZone(MEMORY[0x277D44700]);
  v11 = sub_261CFD814();
  v12 = sub_261CFFA54();
  v13 = [v10 initWithUUID:v11 entityName:v12];

  v14 = sub_261CADF34(v13, v74);
  if (v14)
  {
    if ([v14 isGroup])
    {
      v15 = [v14 sublistContext];
      if (v15)
      {
        v16 = v15;
        v74 = v14;
        v76 = 0;
        v77 = MEMORY[0x277D84F90];
        v17 = [v15 fetchListsWithError_];
        v18 = v76;
        if (v17)
        {
          v19 = v17;
          sub_261B05020(0, &qword_27FEDB0E0, 0x277D44660);
          v20 = sub_261CFFC64();
          v21 = v18;

          if (v20 >> 62)
          {
            v22 = sub_261D00274();
          }

          else
          {
            v22 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v24 = v69;
          v23 = v70;
          v68 = v16;
          if (v22)
          {
            v76 = MEMORY[0x277D84F90];
            sub_261B3A0E8(0, v22 & ~(v22 >> 63), 0);
            if (v22 < 0)
            {
              __break(1u);
              goto LABEL_45;
            }

            v25 = 0;
            v26 = v75;
            v27 = v76;
            do
            {
              if ((v20 & 0xC000000000000001) != 0)
              {
                v28 = MEMORY[0x26671CA10](v25, v20);
              }

              else
              {
                v28 = *(v20 + 8 * v25 + 32);
              }

              sub_261B73240(v28, v24);
              v76 = v27;
              v30 = v27[2];
              v29 = v27[3];
              if (v30 >= v29 >> 1)
              {
                sub_261B3A0E8((v29 > 1), v30 + 1, 1);
                v26 = v75;
                v27 = v76;
              }

              ++v25;
              v27[2] = v30 + 1;
              sub_261BA41C0(v24, v27 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v30, type metadata accessor for ListEntity);
            }

            while (v22 != v25);

            v23 = v70;
          }

          else
          {

            v27 = MEMORY[0x277D84F90];
          }

          sub_261BBBA5C(v27);
          v76 = 0;
          v16 = v68;
          v49 = [v68 fetchCustomSmartListsWithError_];
          v50 = v76;
          if (v49)
          {
            v51 = v49;
            sub_261B05020(0, &unk_27FEDB000, 0x277D447F8);
            v24 = sub_261CFFC64();
            v52 = v50;

            if (!(v24 >> 62))
            {
              v53 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v53)
              {
LABEL_32:
                v76 = MEMORY[0x277D84F90];
                sub_261B3A0E8(0, v53 & ~(v53 >> 63), 0);
                if (v53 < 0)
                {
                  __break(1u);
                }

                v54 = 0;
                v55 = v76;
                v56 = v74;
                do
                {
                  if ((v24 & 0xC000000000000001) != 0)
                  {
                    v57 = MEMORY[0x26671CA10](v54, v24);
                  }

                  else
                  {
                    v57 = *(v24 + 8 * v54 + 32);
                  }

                  v58 = v57;
                  v59 = v56;
                  sub_261B750A0(v58, v56, v23);
                  v76 = v55;
                  v60 = v23;
                  v62 = v55[2];
                  v61 = v55[3];
                  if (v62 >= v61 >> 1)
                  {
                    sub_261B3A0E8((v61 > 1), v62 + 1, 1);
                    v56 = v74;
                    v55 = v76;
                  }

                  ++v54;
                  v55[2] = v62 + 1;
                  sub_261BA41C0(v60, v55 + ((*(v75 + 80) + 32) & ~*(v75 + 80)) + *(v75 + 72) * v62, type metadata accessor for ListEntity);
                  v23 = v60;
                }

                while (v53 != v54);

                goto LABEL_47;
              }

LABEL_46:

              v55 = MEMORY[0x277D84F90];
LABEL_47:
              sub_261BBBA5C(v55);
              v64 = v71;
              v65 = v72;
              sub_261B84F14(v74, v77, v71);

              if (!v65)
              {
                v66 = type metadata accessor for GroupEntity(0);
                (*(*(v66 - 8) + 56))(v64, 0, 1, v66);
              }

              return;
            }

LABEL_45:
            v53 = sub_261D00274();
            if (v53)
            {
              goto LABEL_32;
            }

            goto LABEL_46;
          }

          v63 = v76;

          sub_261CFD654();
        }

        else
        {
          v48 = v76;
          sub_261CFD654();
        }

        swift_willThrow();

        return;
      }
    }

    v31 = v14;
    if (qword_27FED9970 != -1)
    {
      swift_once();
    }

    v32 = sub_261CFF7A4();
    __swift_project_value_buffer(v32, qword_27FEDB380);
    v33 = v73;
    v34 = sub_261CFF784();
    v35 = sub_261CFFE74();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *v36 = 138543362;
      *(v36 + 4) = v33;
      *v37 = v33;
      v38 = v33;
      _os_log_impl(&dword_261AE2000, v34, v35, "[GroupEntityGroupQueryPerforming] Should not happen that the group fetched with a list ID not being a group: %{public}@", v36, 0xCu);
      sub_261AE6A40(v37, &unk_27FEDA730, &unk_261D035C0);
      MEMORY[0x26671D560](v37, -1, -1);
      MEMORY[0x26671D560](v36, -1, -1);
    }

    sub_261B01D70();
    swift_allocError();
    *v39 = 20;
    swift_willThrow();
  }

  else
  {
    if (qword_27FED9970 != -1)
    {
      swift_once();
    }

    v40 = sub_261CFF7A4();
    __swift_project_value_buffer(v40, qword_27FEDB380);
    v41 = v73;
    v42 = sub_261CFF784();
    v43 = sub_261CFFE64();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *v44 = 138543362;
      *(v44 + 4) = v41;
      *v45 = v41;
      v46 = v41;
      _os_log_impl(&dword_261AE2000, v42, v43, "[GroupEntityGroupQueryPerforming] Could not fetch list with %{public}@", v44, 0xCu);
      sub_261AE6A40(v45, &unk_27FEDA730, &unk_261D035C0);
      MEMORY[0x26671D560](v45, -1, -1);
      MEMORY[0x26671D560](v44, -1, -1);
      v41 = v42;
      v42 = v46;
    }

    v47 = type metadata accessor for GroupEntity(0);
    (*(*(v47 - 8) + 56))(v71, 1, 1, v47);
  }
}

uint64_t sub_261BA1D0C()
{
  v33 = v0;
  if (qword_27FED9970 != -1)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v1 = sub_261CFF7A4();
    __swift_project_value_buffer(v1, qword_27FEDB380);
    sub_261CFD104();
    v2 = sub_261CFF784();
    v3 = sub_261CFFE84();

    v30 = v0;
    if (os_log_type_enabled(v2, v3))
    {
      v5 = v0[3];
      v4 = v0[4];
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v31[0] = v7;
      *v6 = 136315138;
      *(v6 + 4) = sub_261B879C8(v5, v4, v31);
      _os_log_impl(&dword_261AE2000, v2, v3, "[GroupEntityGroupQueryPerforming] Query groups matching string %s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x26671D560](v7, -1, -1);
      MEMORY[0x26671D560](v6, -1, -1);
    }

    v8 = v0[4];
    v31[0] = v0[3];
    v31[1] = v8;
    sub_261CFEFE4();
    sub_261CFD104();
    v9 = sub_261CFEF54();
    v29 = *(v9 + 16);
    if (!v29)
    {
      break;
    }

    v10 = 0;
    v27 = v0[8];
    v11 = MEMORY[0x277D84F90];
    v28 = v9;
    while (v10 < *(v9 + 16))
    {
      v13 = v0[9];
      v12 = v0[10];
      v14 = v0[7];
      v15 = (*(v27 + 80) + 32) & ~*(v27 + 80);
      v16 = *(v27 + 72);
      (*(v27 + 16))(v12, v9 + v15 + v16 * v10, v14);
      v17 = *(v27 + 32);
      v17(v13, v12, v14);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v32 = v11;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_261B3A064(0, *(v11 + 16) + 1, 1);
        v11 = v32;
      }

      v20 = *(v11 + 16);
      v19 = *(v11 + 24);
      v0 = v30;
      if (v20 >= v19 >> 1)
      {
        sub_261B3A064((v19 > 1), v20 + 1, 1);
        v11 = v32;
      }

      ++v10;
      v21 = v30[9];
      v22 = v30[7];
      *(v11 + 16) = v20 + 1;
      v17(v11 + v15 + v20 * v16, v21, v22);
      v9 = v28;
      if (v29 == v10)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_18:
    swift_once();
  }

  v11 = MEMORY[0x277D84F90];
LABEL_14:

  sub_261BA0588(v11, v31);
  v24 = v0[6];

  v25 = sub_261CFD6A4();
  (*(*(v25 - 8) + 56))(v24, 1, 1, v25);
  type metadata accessor for GroupEntity(0);
  sub_261BA4168();
  sub_261CFCFC4();

  v26 = v0[1];

  return v26();
}

uint64_t REMStoreIntentPerformer.suggestedEntities(query:for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[8] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  v4[11] = swift_task_alloc();
  v5 = sub_261CFEFD4();
  v4[12] = v5;
  v4[13] = *(v5 - 8);
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0C0, &unk_261D02500);
  v4[18] = swift_task_alloc();
  v6 = type metadata accessor for ListEntity(0);
  v4[19] = v6;
  v4[20] = *(v6 - 8);
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261BA230C, 0, 0);
}

uint64_t sub_261BA230C()
{
  v88 = v0;
  v87 = *MEMORY[0x277D85DE8];
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[18];
  sub_261B425D4(v0[9], v3);
  v84 = v0;
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_261AE6A40(v0[18], &unk_27FEDE0C0, &unk_261D02500);
    if (qword_27FED9970 != -1)
    {
      goto LABEL_42;
    }

    while (1)
    {
      v4 = sub_261CFF7A4();
      __swift_project_value_buffer(v4, qword_27FEDB380);
      v5 = sub_261CFF784();
      v6 = sub_261CFFE84();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        _os_log_impl(&dword_261AE2000, v5, v6, "[GroupEntityGroupQueryPerforming] Query suggested groups in all accounts", v7, 2u);
        MEMORY[0x26671D560](v7, -1, -1);
      }

      sub_261CFEFE4();
      v85 = 0;
      v86 = 0;
      v8 = sub_261CFEF54();
      v82 = *(v8 + 16);
      if (!v82)
      {
        break;
      }

      v9 = 0;
      v78 = v0[13];
      v10 = MEMORY[0x277D84F90];
      v80 = v8;
      while (v9 < *(v8 + 16))
      {
        v12 = v0[14];
        v11 = v0[15];
        v13 = v0[12];
        v14 = (*(v78 + 80) + 32) & ~*(v78 + 80);
        v15 = *(v78 + 72);
        (*(v78 + 16))(v11, v8 + v14 + v15 * v9, v13);
        v16 = *(v78 + 32);
        v16(v12, v11, v13);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_261B3A064(0, *(v10 + 16) + 1, 1);
        }

        v18 = *(v10 + 16);
        v17 = *(v10 + 24);
        v0 = v84;
        if (v18 >= v17 >> 1)
        {
          sub_261B3A064((v17 > 1), v18 + 1, 1);
        }

        ++v9;
        v19 = v84[14];
        v20 = v84[12];
        *(v10 + 16) = v18 + 1;
        v16(v10 + v14 + v18 * v15, v19, v20);
        v8 = v80;
        if (v82 == v9)
        {
          goto LABEL_33;
        }
      }

      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      swift_once();
    }

    v10 = MEMORY[0x277D84F90];
LABEL_33:

    sub_261BA0588(v10, &v85);
    v68 = v0[11];

    v69 = sub_261CFD6A4();
    (*(*(v69 - 8) + 56))(v68, 1, 1, v69);
    type metadata accessor for GroupEntity(0);
    sub_261BA4168();
    sub_261CFCFC4();
  }

  else
  {
    v21 = v0[22];
    v22 = v0[18];
    v23 = v0[10];
    sub_261BA41C0(v22, v21, type metadata accessor for ListEntity);
    v24 = *(v23 + 16);
    type metadata accessor for AppEntityID(0);
    v25 = objc_allocWithZone(MEMORY[0x277D44700]);
    v26 = sub_261CFD814();
    v27 = sub_261CFFA54();
    v28 = [v25 initWithUUID:v26 entityName:v27];

    v84[7] = 0;
    v29 = [v24 fetchListWithObjectID:v28 error:v84 + 7];

    v30 = v84[7];
    if (!v29)
    {
      v50 = v84[22];
      v51 = v30;
      sub_261CFD654();

      swift_willThrow();
      sub_261BA42B0(v50, type metadata accessor for ListEntity);

      v70 = v84[1];
      goto LABEL_36;
    }

    v31 = qword_27FED9970;
    v32 = v30;
    if (v31 != -1)
    {
      swift_once();
    }

    v34 = v84[21];
    v33 = v84[22];
    v35 = sub_261CFF7A4();
    __swift_project_value_buffer(v35, qword_27FEDB380);
    sub_261BA4248(v33, v34, type metadata accessor for ListEntity);
    v36 = v29;
    v0 = v84;
    v37 = sub_261CFF784();
    v38 = sub_261CFFE84();

    v39 = os_log_type_enabled(v37, v38);
    v40 = v84[21];
    v41 = &unk_279AFB000;
    if (v39)
    {
      v42 = swift_slowAlloc();
      v75 = v36;
      v43 = swift_slowAlloc();
      *v42 = 138543618;
      v44 = objc_allocWithZone(MEMORY[0x277D44700]);
      v45 = sub_261CFD814();
      v46 = sub_261CFFA54();
      v47 = [v44 initWithUUID:v45 entityName:v46];

      sub_261BA42B0(v40, type metadata accessor for ListEntity);
      *(v42 + 4) = v47;
      *v43 = v47;
      *(v42 + 12) = 2114;
      v48 = [v75 account];
      v49 = [v48 objectID];

      v41 = &unk_279AFB000;
      *(v42 + 14) = v49;
      v43[1] = v49;
      _os_log_impl(&dword_261AE2000, v37, v38, "[GroupEntityGroupQueryPerforming] Query suggested groups for list: %{public}@ within account: %{public}@}", v42, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA730, &unk_261D035C0);
      swift_arrayDestroy();
      v36 = v75;
      MEMORY[0x26671D560](v43, -1, -1);
      v0 = v84;
      MEMORY[0x26671D560](v42, -1, -1);
    }

    else
    {

      sub_261BA42B0(v40, type metadata accessor for ListEntity);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA740, &qword_261D05A10);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_261D030F0;
    *(inited + 32) = [v36 v41[160]];
    sub_261CFEFE4();
    v85 = 0;
    v86 = 0;
    v53 = sub_261CFEF54();
    v76 = v36;
    v83 = *(v53 + 16);
    v54 = 0;
    if (v83)
    {
      v55 = 0;
      v56 = v0[13];
      v79 = (v56 + 32);
      v57 = MEMORY[0x277D84F90];
      v81 = v53;
      do
      {
        if (v55 >= *(v53 + 16))
        {
          goto LABEL_41;
        }

        v58 = v0[17];
        v59 = (*(v56 + 80) + 32) & ~*(v56 + 80);
        v60 = *(v56 + 72);
        (*(v56 + 16))(v58, v53 + v59 + v60 * v55, v0[12]);
        v61 = swift_task_alloc();
        *(v61 + 16) = v58;
        LOBYTE(v58) = sub_261BA0984(sub_261BA4228, v61, inited);
        v0 = v84;

        if (v58)
        {
          v77 = v54;
          v62 = inited;
          v63 = *v79;
          (*v79)(v84[16], v84[17], v84[12]);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_261B3A064(0, *(v57 + 16) + 1, 1);
          }

          v65 = *(v57 + 16);
          v64 = *(v57 + 24);
          if (v65 >= v64 >> 1)
          {
            sub_261B3A064((v64 > 1), v65 + 1, 1);
          }

          v0 = v84;
          v66 = v84[16];
          v67 = v84[12];
          *(v57 + 16) = v65 + 1;
          v63(v57 + v59 + v65 * v60, v66, v67);
          inited = v62;
          v54 = v77;
        }

        else
        {
          (*(v56 + 8))(v84[17], v84[12]);
        }

        ++v55;
        v53 = v81;
      }

      while (v83 != v55);
    }

    else
    {
      v57 = MEMORY[0x277D84F90];
    }

    sub_261BA0588(v57, &v85);
    v72 = v0[22];
    v73 = v0[11];

    v74 = sub_261CFD6A4();
    (*(*(v74 - 8) + 56))(v73, 1, 1, v74);
    type metadata accessor for GroupEntity(0);
    sub_261BA4168();
    sub_261CFCFC4();

    sub_261BA42B0(v72, type metadata accessor for ListEntity);
  }

  v70 = v84[1];
LABEL_36:

  return v70();
}

uint64_t sub_261BA2E58(void **a1)
{
  v1 = *a1;
  sub_261B05020(0, &qword_27FEDA1B0, 0x277D82BB8);
  v2 = [v1 objectID];
  v3 = sub_261CFEF84();
  v4 = [v3 objectID];

  LOBYTE(v3) = sub_261D000F4();
  return v3 & 1;
}

uint64_t sub_261BA2F0C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v54 = a3;
  v42[4] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA6F0, &qword_261D01450);
  MEMORY[0x28223BE20](v7 - 8);
  v49 = v42 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  MEMORY[0x28223BE20](v9 - 8);
  v48 = v42 - v10;
  v11 = type metadata accessor for GroupEntity(0);
  v12 = *(v11 - 8);
  v52 = v11;
  v53 = v12;
  v13 = MEMORY[0x28223BE20](v11);
  v51 = v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = v42 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA690, &qword_261D03248);
  v50 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = v42 - v18;
  v20 = sub_261CFD6A4();
  v43 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v22 = v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_261CFEF94();
  v24 = sub_261BA078C(v23, a2);

  if (v4)
  {
    *v54 = v4;
  }

  else
  {
    v42[3] = a1;
    v26 = v52;
    v45 = v20;
    v46 = v17;
    v54 = v16;
    v47 = v22;
    v27 = v24[2];
    if (v27)
    {
      v42[2] = 0;
      v55 = MEMORY[0x277D84F90];
      sub_261B3A2B8(0, v27, 0);
      v28 = v55;
      v29 = (*(v53 + 80) + 32) & ~*(v53 + 80);
      v42[1] = v24;
      v30 = v24 + v29;
      v31 = *(v53 + 72);
      v43 += 7;
      v44 = v31;
      v32 = v51;
      v42[5] = v50 + 32;
      v33 = v54;
      do
      {
        v53 = v27;
        sub_261BA4248(v30, v33, type metadata accessor for GroupEntity);
        sub_261BA4248(v33, v32, type metadata accessor for GroupEntity);
        sub_261CFCA04();
        sub_261CFD664();
        (*v43)(v48, 1, 1, v45);
        v34 = sub_261CFD074();
        (*(*(v34 - 8) + 56))(v49, 1, 1, v34);
        sub_261BA4168();
        v33 = v54;
        sub_261CFC7F4();
        sub_261BA42B0(v33, type metadata accessor for GroupEntity);
        v55 = v28;
        v36 = *(v28 + 16);
        v35 = *(v28 + 24);
        if (v36 >= v35 >> 1)
        {
          sub_261B3A2B8((v35 > 1), v36 + 1, 1);
          v28 = v55;
        }

        *(v28 + 16) = v36 + 1;
        (*(v50 + 32))(v28 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v36, v19, v46);
        v30 += v44;
        v27 = v53 - 1;
        v37 = v47;
        v32 = v51;
      }

      while (v53 != 1);

      v38 = v52;
    }

    else
    {

      v28 = MEMORY[0x277D84F90];
      v37 = v47;
      v38 = v26;
    }

    v39 = sub_261CFEF84();
    v40 = [v39 displayName];

    sub_261CFFA74();
    sub_261CFD664();
    v41 = sub_261BA4168();
    return MEMORY[0x2667195E0](v37, v28, v38, v41);
  }

  return result;
}

uint64_t *sub_261BA3488@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char **a3@<X8>)
{
  v58 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA708, &qword_261D03298);
  MEMORY[0x28223BE20](v5 - 8);
  v71 = &v53 - v6;
  v7 = type metadata accessor for ListEntity(0);
  v75 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v74 = (&v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v72 = (&v53 - v10);
  v70 = type metadata accessor for GroupEntity(0);
  v73 = *(v70 - 8);
  v11 = MEMORY[0x28223BE20](v70);
  v69 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v59 = &v53 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v53 - v16;
  MEMORY[0x28223BE20](v15);
  v55 = (&v53 - v18);
  v68 = sub_261CFEF64();
  v19 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v21 = (&v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v57 = sub_261CFEFA4();
  v56 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v23 = &v53 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_261CFEF74();
  v25 = *(v24 - 1);
  MEMORY[0x28223BE20](v24);
  v27 = &v53 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 16))(v27, a1, v24);
  v28 = (*(v25 + 88))(v27, v24);
  if (v28 == *MEMORY[0x277D452F8] || v28 == *MEMORY[0x277D452F0])
  {
    (*(v25 + 8))(v27, v24);
    v27 = MEMORY[0x277D84F90];
    v29 = v59;
    result = *(a2 + 8);
    if (result)
    {
      while (1)
      {
        v68 = *a2;
        v31 = *(v27 + 2);
        v72 = result;
        sub_261CFD104();
        v67 = v31;
        if (!v31)
        {
          break;
        }

        v32 = 0;
        v33 = MEMORY[0x277D84F90];
        v66 = v27;
        while (1)
        {
          v34 = *(v27 + 2);
          if (v32 >= v34)
          {
            break;
          }

          v75 = (*(v73 + 80) + 32) & ~*(v73 + 80);
          v74 = *(v73 + 72);
          sub_261BA4248(&v27[v75 + v74 * v32], v29, type metadata accessor for GroupEntity);
          sub_261CFCA04();
          v24 = v79;
          v35 = v71;
          sub_261CFD874();
          v36 = sub_261CFD884();
          (*(*(v36 - 8) + 56))(v35, 0, 1, v36);
          sub_261B3BA3C();
          a2 = v29;
          v19 = MEMORY[0x277D837D0];
          v37 = sub_261D00194();
          v39 = v38;
          sub_261AE6A40(v35, &qword_27FEDA708, &qword_261D03298);

          v78 = v37;
          v79 = v39;
          v76 = v68;
          v77 = v72;
          v23 = sub_261D00184();

          if (v23)
          {
            sub_261BA41C0(v29, v69, type metadata accessor for GroupEntity);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v80 = v33;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v23 = &v80;
              sub_261B3A2F8(0, v33[2] + 1, 1);
              v33 = v80;
            }

            v27 = v66;
            v42 = v33[2];
            v41 = v33[3];
            v24 = (v42 + 1);
            if (v42 >= v41 >> 1)
            {
              v23 = &v80;
              sub_261B3A2F8((v41 > 1), v42 + 1, 1);
              v33 = v80;
            }

            v33[2] = v24;
            sub_261BA41C0(v69, v33 + v75 + v42 * v74, type metadata accessor for GroupEntity);
          }

          else
          {
            sub_261BA42B0(v29, type metadata accessor for GroupEntity);
            v27 = v66;
          }

          if (v67 == ++v32)
          {
            goto LABEL_33;
          }
        }

        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        v27 = sub_261B42224((v34 > 1), v33, 1, v27);
LABEL_39:
        v29 = v59;
        sub_261BA42B0(v24, type metadata accessor for GroupEntity);
        (*(v56 + 8))(v23, v57);
        *(v27 + 2) = v33;
        sub_261BA41C0(v19, &v27[((*(v73 + 80) + 32) & ~*(v73 + 80)) + *(v73 + 72) * v32], type metadata accessor for GroupEntity);
        result = *(a2 + 8);
        if (!result)
        {
          goto LABEL_34;
        }
      }

      v33 = MEMORY[0x277D84F90];
LABEL_33:

      v27 = v33;
    }

LABEL_34:
    *v58 = v27;
    return result;
  }

  if (v28 != *MEMORY[0x277D45300])
  {
    goto LABEL_45;
  }

  v53 = v17;
  v54 = a2;
  v43 = *(v25 + 96);
  v33 = (v25 + 96);
  v43(v27, v24);
  (*(v56 + 32))(v23, v27, v57);
  v44 = sub_261CFEF94();
  v67 = *(v44 + 16);
  if (!v67)
  {
    v32 = MEMORY[0x277D84F90];
LABEL_36:

    v51 = sub_261CFEF84();
    v24 = v55;
    v52 = v60;
    sub_261B84F14(v51, v32, v55);
    v60 = v52;
    a2 = v54;
    if (!v52)
    {
      v19 = v53;
      sub_261BA4248(v24, v53, type metadata accessor for GroupEntity);
      v27 = sub_261B42224(0, 1, 1, MEMORY[0x277D84F90]);
      v32 = *(v27 + 2);
      v34 = *(v27 + 3);
      v33 = (v32 + 1);
      if (v32 >= v34 >> 1)
      {
        goto LABEL_43;
      }

      goto LABEL_39;
    }

    return (*(v56 + 8))(v23, v57);
  }

  v45 = 0;
  v64 = v19 + 88;
  v65 = v19 + 16;
  v63 = *MEMORY[0x277D452E8];
  v61 = *MEMORY[0x277D452E0];
  v62 = (v19 + 96);
  v32 = MEMORY[0x277D84F90];
  v66 = v44;
  while (1)
  {
    v34 = *(v44 + 16);
    if (v45 >= v34)
    {
      goto LABEL_42;
    }

    v46 = v68;
    (*(v19 + 16))(v21, v44 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v45, v68);
    v47 = (*(v19 + 88))(v21, v46);
    if (v47 != v63)
    {
      break;
    }

    (*v62)(v21, v46);
    v24 = *v21;
    sub_261B73240(v24, v72);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v32 = sub_261B419E8(0, *(v32 + 16) + 1, 1, v32);
    }

    a2 = *(v32 + 16);
    v48 = *(v32 + 24);
    v27 = (a2 + 1);
    if (a2 >= v48 >> 1)
    {
      v32 = sub_261B419E8((v48 > 1), a2 + 1, 1, v32);
    }

    v33 = v72;
LABEL_19:
    ++v45;

    *(v32 + 16) = v27;
    sub_261BA41C0(v33, v32 + ((*(v75 + 80) + 32) & ~*(v75 + 80)) + *(v75 + 72) * a2, type metadata accessor for ListEntity);
    v44 = v66;
    if (v67 == v45)
    {
      goto LABEL_36;
    }
  }

  if (v47 == v61)
  {
    (*v62)(v21, v46);
    v24 = *v21;
    v49 = sub_261CFEF84();
    sub_261B750A0(v24, v49, v74);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v32 = sub_261B419E8(0, *(v32 + 16) + 1, 1, v32);
    }

    a2 = *(v32 + 16);
    v50 = *(v32 + 24);
    v27 = (a2 + 1);
    if (a2 >= v50 >> 1)
    {
      v32 = sub_261B419E8((v50 > 1), a2 + 1, 1, v32);
    }

    v33 = v74;
    goto LABEL_19;
  }

  sub_261D00604();
  __break(1u);
LABEL_45:
  result = sub_261D00604();
  __break(1u);
  return result;
}

uint64_t sub_261BA3F70(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_261B0D584;

  return REMStoreIntentPerformer.entities(query:for:)(v4, a2);
}

uint64_t sub_261BA4008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_261AF4BDC;

  return REMStoreIntentPerformer.entities(query:matching:)(a1, v8, a3, a4);
}

uint64_t sub_261BA40BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_261AF43A8;

  return REMStoreIntentPerformer.suggestedEntities(query:for:)(a1, v6, a3);
}

unint64_t sub_261BA4168()
{
  result = qword_280D22668;
  if (!qword_280D22668)
  {
    type metadata accessor for GroupEntity(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D22668);
  }

  return result;
}

uint64_t sub_261BA41C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_261BA4248(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_261BA42B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_261BA431C()
{
  sub_261D006C4();
  sub_261CFFB14();
  return sub_261D006F4();
}

uint64_t sub_261BA4364(uint64_t a1)
{
  sub_261D006C4();
  sub_261CFFB14();
  return sub_261D006F4();
}

uint64_t sub_261BA43B4@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_261D00554();

  *a3 = v4 != 0;
  return result;
}

RemindersAppIntents::SmartListPrefetchStrategyRepresentation::Identifiers_optional __swiftcall SmartListPrefetchStrategyRepresentation.Identifiers.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_261D00554();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t SmartListPrefetchStrategyRepresentation.Identifiers.rawValue.getter()
{
  v1 = 0xD000000000000021;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000029;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD00000000000001DLL;
  }
}

uint64_t sub_261BA44B8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = "SmartListPrefetchStrategy.all";
  v4 = 0xD000000000000021;
  if (v2 == 1)
  {
    v5 = 0xD000000000000021;
  }

  else
  {
    v5 = 0xD000000000000029;
  }

  if (v2 == 1)
  {
    v6 = "SmartListPrefetchStrategy.all";
  }

  else
  {
    v6 = "hStrategy.initial";
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD00000000000001DLL;
  }

  if (v2)
  {
    v8 = v6;
  }

  else
  {
    v8 = "internalAppIntent";
  }

  if (*a2 != 1)
  {
    v4 = 0xD000000000000029;
    v3 = "hStrategy.initial";
  }

  if (*a2)
  {
    v9 = v4;
  }

  else
  {
    v9 = 0xD00000000000001DLL;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = "internalAppIntent";
  }

  if (v7 == v9 && (v8 | 0x8000000000000000) == (v10 | 0x8000000000000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_261D00614();
  }

  return v11 & 1;
}

uint64_t sub_261BA4590()
{
  sub_261D006C4();
  sub_261CFFB14();

  return sub_261D006F4();
}

uint64_t sub_261BA462C(uint64_t a1)
{
  sub_261CFFB14();
}

uint64_t sub_261BA46B4(uint64_t a1)
{
  sub_261D006C4();
  sub_261CFFB14();

  return sub_261D006F4();
}

void sub_261BA4758(unint64_t *a1@<X8>)
{
  v2 = 0xD00000000000001DLL;
  v3 = "SmartListPrefetchStrategy.all";
  v4 = 0xD000000000000021;
  if (*v1 != 1)
  {
    v4 = 0xD000000000000029;
    v3 = "hStrategy.initial";
  }

  if (*v1)
  {
    v2 = v4;
    v5 = v3;
  }

  else
  {
    v5 = "internalAppIntent";
  }

  *a1 = v2;
  a1[1] = v5 | 0x8000000000000000;
}

uint64_t SmartListPrefetchStrategyRepresentation.entitySpecification.getter(uint64_t a1)
{
  if (!*(v1 + 8))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB398, &qword_261D05CE0);
    sub_261CFEBA4();
    *(swift_allocObject() + 16) = xmmword_261D03450;
    sub_261BA4A70();
    goto LABEL_5;
  }

  if (*(v1 + 8) == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB398, &qword_261D05CE0);
    sub_261CFEBA4();
    *(swift_allocObject() + 16) = xmmword_261D03450;
    sub_261BA49C8();
LABEL_5:
    sub_261CFEB94();
    sub_261BA4A1C();
    sub_261CFEB34();
  }

  sub_261BA4A1C();
  return sub_261CFEB34();
}

unint64_t sub_261BA49C8()
{
  result = qword_27FEDB3A0;
  if (!qword_27FEDB3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB3A0);
  }

  return result;
}

unint64_t sub_261BA4A1C()
{
  result = qword_27FEDB3A8;
  if (!qword_27FEDB3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB3A8);
  }

  return result;
}

unint64_t sub_261BA4A70()
{
  result = qword_27FEDB3B0;
  if (!qword_27FEDB3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB3B0);
  }

  return result;
}

void *static SmartListPrefetchStrategyRepresentation.from(_:context:)@<X0>(uint64_t a2@<X8>)
{
  sub_261CFEB44();
  __swift_project_boxed_opaque_existential_1(&v9, v11);
  sub_261CFEAA4();
  v3 = sub_261D00554();

  result = __swift_destroy_boxed_opaque_existential_0(&v9);
  if (v3 == 2)
  {
    result = sub_261CFEB54();
    if (v10)
    {
      v7 = 0;
    }

    else
    {
      v7 = v9;
    }

    if (v10)
    {
      v8 = -1;
    }

    else
    {
      v8 = 1;
    }

    *a2 = v7;
    *(a2 + 8) = v8;
  }

  else
  {
    if (v3 == 1)
    {
      result = sub_261CFEB54();
      v5 = v10 << 31 >> 31;
      v6 = v9;
      if (v10)
      {
        v6 = 0;
      }

      *a2 = v6;
    }

    else
    {
      *a2 = 0;
      if (v3)
      {
        LOBYTE(v5) = -1;
      }

      else
      {
        LOBYTE(v5) = 2;
      }
    }

    *(a2 + 8) = v5;
  }

  return result;
}

unint64_t sub_261BA4C10()
{
  result = qword_27FEDB3B8;
  if (!qword_27FEDB3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB3B8);
  }

  return result;
}

unint64_t sub_261BA4C68()
{
  result = qword_27FEDB3C0;
  if (!qword_27FEDB3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB3C0);
  }

  return result;
}

unint64_t sub_261BA4CC0()
{
  result = qword_27FEDB3C8;
  if (!qword_27FEDB3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB3C8);
  }

  return result;
}

unint64_t sub_261BA4D20()
{
  result = qword_27FEDB3D0;
  if (!qword_27FEDB3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB3D0);
  }

  return result;
}

uint64_t sub_261BA4D74(uint64_t a1)
{
  v2 = sub_261BA52DC();

  return MEMORY[0x28213DA70](a1, v2);
}

uint64_t sub_261BA4DB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_261BA52DC();

  return MEMORY[0x28213DA58](a1, a2, v4);
}

uint64_t sub_261BA4DFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_261BA52DC();

  return MEMORY[0x28213DA68](a1, a2, a3, v6);
}

unint64_t sub_261BA4E64()
{
  result = qword_27FEDB3D8;
  if (!qword_27FEDB3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB3D8);
  }

  return result;
}

uint64_t sub_261BA4EB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_261BA52DC();

  return MEMORY[0x28213DA60](a1, a2, v4);
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for SmartListPrefetchStrategyRepresentation(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for SmartListPrefetchStrategyRepresentation(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_261BA4FA4(uint64_t a1)
{
  if (*(a1 + 8) <= 1u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_261BA4FBC(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for SmartListPrefetchStrategyRepresentation.Identifiers(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SmartListPrefetchStrategyRepresentation.Identifiers(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for RemindersInCalendarUtilities(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for RemindersInCalendarUtilities(_WORD *result, int a2, int a3)
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

unint64_t sub_261BA5230()
{
  result = qword_27FEDB3E0;
  if (!qword_27FEDB3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB3E0);
  }

  return result;
}

unint64_t sub_261BA5288()
{
  result = qword_27FEDB3E8;
  if (!qword_27FEDB3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB3E8);
  }

  return result;
}

unint64_t sub_261BA52DC()
{
  result = qword_27FEDB3F0;
  if (!qword_27FEDB3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB3F0);
  }

  return result;
}

uint64_t RemotePreferencesEntity.timeZoneOverride.getter()
{
  v1 = v0[4];
  v2 = v0[5];
  __swift_project_boxed_opaque_existential_1(v0 + 1, v1);
  return (*(v2 + 8))(v1, v2);
}

uint64_t sub_261BA53A0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB418, &unk_261D06050);
  sub_261AE4630();
  sub_261D002D4();
  sub_261CFC6B4();
  sub_261CFC6A4();
  result = sub_261CFC684();
  qword_27FEDB3F8 = result;
  return result;
}

uint64_t RemotePreferencesEntityQuery.init()@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB418, &unk_261D06050);
  sub_261AE4630();
  sub_261D002D4();
  sub_261CFC6B4();
  sub_261CFC6A4();
  result = sub_261CFC684();
  *a1 = result;
  return result;
}

uint64_t static RemotePreferencesEntity.defaultQuery.getter@<X0>(void *a1@<X8>)
{
  if (qword_27FED9978 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_27FEDB3F8;
  return sub_261CFCDA4();
}

uint64_t static RemotePreferencesEntity.defaultQuery.setter(uint64_t *a1)
{
  v1 = *a1;
  if (qword_27FED9978 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27FEDB3F8 = v1;
}

uint64_t (*static RemotePreferencesEntity.defaultQuery.modify(uint64_t a1))(void)
{
  if (qword_27FED9978 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_261BA5638@<X0>(void *a1@<X8>)
{
  if (qword_27FED9978 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_27FEDB3F8;
  return sub_261CFCDA4();
}

uint64_t sub_261BA56B8(uint64_t *a1)
{
  v1 = *a1;
  v2 = qword_27FED9978;
  sub_261CFCDA4();
  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27FEDB3F8 = v1;
}

uint64_t sub_261BA5740()
{
  v0 = sub_261CFD234();
  __swift_allocate_value_buffer(v0, qword_27FEDB400);
  __swift_project_value_buffer(v0, qword_27FEDB400);
  return sub_261CFD214();
}

uint64_t static RemotePreferencesEntity.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED9980 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD234();
  v3 = __swift_project_value_buffer(v2, qword_27FEDB400);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static RemotePreferencesEntity.typeDisplayRepresentation.setter(uint64_t a1)
{
  if (qword_27FED9980 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD234();
  v3 = __swift_project_value_buffer(v2, qword_27FEDB400);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static RemotePreferencesEntity.typeDisplayRepresentation.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_27FED9980 != -1)
  {
    swift_once();
  }

  v1 = sub_261CFD234();
  __swift_project_value_buffer(v1, qword_27FEDB400);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_261BA59EC@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED9980 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD234();
  v3 = __swift_project_value_buffer(v2, qword_27FEDB400);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_261BA5AAC(uint64_t a1)
{
  if (qword_27FED9980 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD234();
  v3 = __swift_project_value_buffer(v2, qword_27FEDB400);
  swift_beginAccess();
  (*(*(v2 - 8) + 24))(v3, a1, v2);
  return swift_endAccess();
}

uint64_t RemotePreferencesEntity.init(deferredPropertyPerformer:)@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA848, &unk_261D074E0);
  swift_getKeyPath();
  sub_261BA5C14();
  *a2 = sub_261CFCB04();

  return sub_261AE49F0(a1, (a2 + 1));
}

unint64_t sub_261BA5C14()
{
  result = qword_27FEDB420;
  if (!qword_27FEDB420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB420);
  }

  return result;
}

uint64_t sub_261BA5C68@<X0>(uint64_t *a2@<X8>)
{
  sub_261BA6318();
  result = sub_261CFC634();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_261BA5CA8(uint64_t a1)
{
  v2 = sub_261BA5C14();

  return MEMORY[0x28210B488](a1, v2);
}

void sub_261BA5CF4()
{
  sub_261BA6318();

  JUMPOUT(0x266718CF0);
}

uint64_t sub_261BA5D40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_261AF43A8;

  return MEMORY[0x28210C4A0](a1, a2, a3, a4);
}

uint64_t sub_261BA5E04(uint64_t a1)
{
  v2 = sub_261BA619C();

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t RemotePreferencesEntityQuery.uniqueEntity()@<X0>(uint64_t *a2@<X8>)
{
  sub_261CFC664();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA848, &unk_261D074E0);
  swift_getKeyPath();
  sub_261BA5C14();
  result = sub_261CFCB04();
  *a2 = result;
  return result;
}

unint64_t sub_261BA5EDC()
{
  result = qword_27FEDB428;
  if (!qword_27FEDB428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB428);
  }

  return result;
}

unint64_t sub_261BA5F34()
{
  result = qword_27FEDB430;
  if (!qword_27FEDB430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB430);
  }

  return result;
}

unint64_t sub_261BA5F8C()
{
  result = qword_27FEDB438;
  if (!qword_27FEDB438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB438);
  }

  return result;
}

unint64_t sub_261BA5FE4()
{
  result = qword_27FEDB440;
  if (!qword_27FEDB440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB440);
  }

  return result;
}

unint64_t sub_261BA6038()
{
  result = qword_27FEDB448;
  if (!qword_27FEDB448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB448);
  }

  return result;
}

unint64_t sub_261BA609C()
{
  result = qword_27FEDB450;
  if (!qword_27FEDB450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB450);
  }

  return result;
}

unint64_t sub_261BA60F0()
{
  result = qword_27FEDB458;
  if (!qword_27FEDB458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB458);
  }

  return result;
}

unint64_t sub_261BA6144()
{
  result = qword_27FEDB460;
  if (!qword_27FEDB460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB460);
  }

  return result;
}

unint64_t sub_261BA619C()
{
  result = qword_27FEDB468;
  if (!qword_27FEDB468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB468);
  }

  return result;
}

unint64_t sub_261BA6200()
{
  result = qword_27FEDB470;
  if (!qword_27FEDB470)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEDB478, &qword_261D06200);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB470);
  }

  return result;
}

unint64_t sub_261BA6268()
{
  result = qword_27FEDB480;
  if (!qword_27FEDB480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB480);
  }

  return result;
}

unint64_t sub_261BA62C0()
{
  result = qword_27FEDB488;
  if (!qword_27FEDB488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB488);
  }

  return result;
}

unint64_t sub_261BA6318()
{
  result = qword_27FEDB490;
  if (!qword_27FEDB490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB490);
  }

  return result;
}

uint64_t sub_261BA636C(uint64_t *a1)
{
  sub_261CFC664();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA848, &unk_261D074E0);
  swift_getKeyPath();
  sub_261BA5C14();
  *a1 = sub_261CFCB04();
  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_261BA6434(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_261BA5EDC();
  *v4 = v2;
  v4[1] = sub_261BA64E4;

  return MEMORY[0x28210B2B8](a2, v5);
}

uint64_t sub_261BA64E4(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v6 = *(v5 + 8);

  return v6();
}

unint64_t sub_261BA65FC()
{
  result = qword_27FEDB498;
  if (!qword_27FEDB498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB498);
  }

  return result;
}

unint64_t sub_261BA6654()
{
  result = qword_27FEDB4A0;
  if (!qword_27FEDB4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB4A0);
  }

  return result;
}

uint64_t sub_261BA66A8@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB418, &unk_261D06050);
  sub_261AE4630();
  sub_261D002D4();
  sub_261CFC6B4();
  sub_261CFC6A4();
  result = sub_261CFC684();
  *a1 = result;
  return result;
}

uint64_t sub_261BA6734(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_261BA5EDC();
  *v5 = v2;
  v5[1] = sub_261B4276C;

  return MEMORY[0x28210B2C8](a1, a2, v6);
}

uint64_t sub_261BA67E8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  v5 = sub_261BA5EDC();
  *v4 = v2;
  v4[1] = sub_261BA6EA0;

  return MEMORY[0x28210B2C0](a2, v5);
}

unint64_t sub_261BA689C()
{
  result = qword_27FEDB4A8;
  if (!qword_27FEDB4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB4A8);
  }

  return result;
}

unint64_t sub_261BA68F4()
{
  result = qword_27FEDB4B0;
  if (!qword_27FEDB4B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEDB4B8, qword_261D063C8);
    sub_261BA6144();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB4B0);
  }

  return result;
}

uint64_t sub_261BA6978(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_261BA6038();
  *v5 = v2;
  v5[1] = sub_261AF43A8;

  return MEMORY[0x28210B618](a1, a2, v6);
}

uint64_t sub_261BA6A2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_261AF4BDC;

  return MEMORY[0x28210C148](a1, a2, a3);
}

uint64_t destroy for RemotePreferencesEntity(void *a1)
{
  v1 = a1 + 1;

  return __swift_destroy_boxed_opaque_existential_0(v1);
}

uint64_t initializeWithCopy for RemotePreferencesEntity(uint64_t a1, uint64_t *a2)
{
  *a1 = *a2;
  v4 = *(a2 + 2);
  *(a1 + 32) = v4;
  v5 = v4;
  v6 = **(v4 - 8);
  sub_261CFCDA4();
  v6(a1 + 8, a2 + 1, v5);
  return a1;
}

uint64_t *assignWithCopy for RemotePreferencesEntity(uint64_t *a1, uint64_t *a2)
{
  v3 = a2 + 1;
  *a1 = *a2;
  sub_261CFCDA4();

  __swift_assign_boxed_opaque_existential_1(a1 + 1, v3);
  return a1;
}

uint64_t *__swift_assign_boxed_opaque_existential_1(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v2 = result[3];
    v3 = a2[3];
    if (v2 == v3)
    {
      v10 = *(v2 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        v12 = *a2;
        v13 = result;
        sub_261CFCDA4();

        *v13 = v12;
      }

      else
      {
        v11 = *(v10 + 24);

        return v11();
      }
    }

    else
    {
      result[3] = v3;
      result[4] = a2[4];
      v4 = *(v2 - 8);
      v5 = *(v3 - 8);
      v6 = v5;
      v7 = *(v5 + 80);
      if ((*(v4 + 82) & 2) != 0)
      {
        if ((v7 & 0x20000) != 0)
        {
          *result = *a2;
          sub_261CFCDA4();
        }

        else
        {
          (*(v5 + 16))();
        }
      }

      else
      {
        v9 = result;
        (*(v4 + 32))(v14);
        if ((v7 & 0x20000) != 0)
        {
          *v9 = *a2;
          sub_261CFCDA4();
        }

        else
        {
          (*(v6 + 16))(v9, a2, v3);
        }

        return (*(v4 + 8))(v14, v2);
      }
    }
  }

  return result;
}

uint64_t *assignWithTake for RemotePreferencesEntity(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  __swift_destroy_boxed_opaque_existential_0(a1 + 1);
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 3) = *(a2 + 3);
  a1[5] = a2[5];
  return a1;
}

uint64_t sub_261BA6ED8(char *a1, uint64_t *a2)
{
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCA14();
}

uint64_t (*SmartListEntity.type.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_261CFC9F4();
  return sub_261AFA230;
}

uint64_t sub_261BA7050(char *a1, uint64_t *a2)
{
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCA14();
}

uint64_t (*SmartListEntity.isHidden.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_261CFC9F4();
  return sub_261B02064;
}

uint64_t SmartListEntity.init(type:isHidden:)@<X0>(unsigned __int8 *a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  v27 = a2;
  v26 = sub_261CFEC94();
  MEMORY[0x28223BE20](v26);
  v25 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_261CFD674();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_261CFD884();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = sub_261CFFA44();
  MEMORY[0x28223BE20](v11 - 8);
  v12 = sub_261CFD6A4();
  MEMORY[0x28223BE20](v12 - 8);
  v24 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB4F8, &qword_261D06510);
  sub_261CFF9B4();
  sub_261CFD874();
  v13 = *MEMORY[0x277CC9110];
  v14 = *(v7 + 104);
  v14(v9, v13, v6);
  sub_261CFD6C4();
  sub_261B94D00();
  v23 = sub_261CFCA34();
  *a3 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB500, &unk_261D06518);
  sub_261CFF9B4();
  sub_261CFD874();
  v14(v9, v13, v6);
  sub_261CFD6B4();
  a3[1] = sub_261CFCB34();
  type metadata accessor for AnyListEntityLazyImage(0);
  v15 = swift_allocObject();
  *&v29 = MEMORY[0x277D84F90];
  sub_261BA9C40();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD9E0, &qword_261D014D0);
  sub_261B01D28(&qword_280D21E20, &unk_27FEDD9E0, &qword_261D014D0, MEMORY[0x277D83970]);
  sub_261D001D4();
  sub_261CFECB4();
  swift_allocObject();
  *(v15 + 128) = sub_261CFECA4();
  v16 = OBJC_IVAR____TtC19RemindersAppIntents22AnyListEntityLazyImage_cachedDisplayRepresentationImage;
  v17 = sub_261CFD074();
  (*(*(v17 - 8) + 56))(v15 + v16, 1, 1, v17);
  v18 = v31;
  *(v15 + 65) = v32;
  v19 = v34;
  *(v15 + 81) = v33;
  *(v15 + 97) = v19;
  v20 = v30;
  *(v15 + 17) = v29;
  *(v15 + 33) = v20;
  v21 = v24;
  *(v15 + 16) = v24;
  *(v15 + 113) = v35;
  *(v15 + 49) = v18;
  *(v15 + 121) = 0;
  a3[2] = v15;
  v28 = v21;
  sub_261CFCA14();
  v28 = v27;
  return sub_261CFCA14();
}

unint64_t SmartListEntity.id.getter()
{
  sub_261CFCA04();
  v0 = 0xD000000000000023;
  v1 = 0xD000000000000025;
  v2 = 0xD000000000000026;
  if (v5 != 4)
  {
    v2 = 0xD000000000000027;
  }

  if (v5 != 3)
  {
    v1 = v2;
  }

  v3 = 0xD000000000000021;
  if (v5 == 1)
  {
    v3 = 0xD000000000000027;
  }

  if (v5)
  {
    v0 = v3;
  }

  if (v5 <= 2u)
  {
    return v0;
  }

  else
  {
    return v1;
  }
}

unint64_t SmartListType.id.getter()
{
  v1 = 0xD000000000000027;
  v2 = *v0;
  v3 = 0xD000000000000025;
  v4 = 0xD000000000000026;
  if (v2 != 4)
  {
    v4 = 0xD000000000000027;
  }

  if (v2 != 3)
  {
    v3 = v4;
  }

  if (v2 != 1)
  {
    v1 = 0xD000000000000021;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000023;
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

uint64_t SmartListEntity.displayRepresentation.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v17[-v1];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA6F0, &qword_261D01450);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v8 = &v17[-v7];
  v9 = sub_261CFD6A4();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v17[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v15 = &v17[-v14];
  sub_261CFCA04();
  v17[14] = v17[15];
  sub_261BA7A10(v15);
  AnyListEntityLazyImage.displayRepresentationImage.getter();
  (*(v10 + 16))(v13, v15, v9);
  (*(v10 + 56))(v2, 1, 1, v9);
  sub_261BA9C98(v8, v6);
  sub_261CFD0A4();
  sub_261AE6A40(v8, &qword_27FEDA6F0, &qword_261D01450);
  return (*(v10 + 8))(v15, v9);
}

uint64_t sub_261BA7A10@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_261CFD0B4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v20 - v8;
  v10 = *v1;
  if (qword_280D223E0 != -1)
  {
    v19 = *v1;
    swift_once();
    v10 = v19;
  }

  v11 = off_280D223E8;
  if (*(off_280D223E8 + 2) && (v12 = sub_261B37E0C(v10), (v13 & 1) != 0))
  {
    (*(v4 + 16))(v6, v11[7] + *(v4 + 72) * v12, v3);
    sub_261CFD084();
    (*(v4 + 8))(v6, v3);
    v14 = sub_261CFD6A4();
    v15 = *(v14 - 8);
    (*(v15 + 56))(v9, 0, 1, v14);
    return (*(v15 + 32))(a1, v9, v14);
  }

  else
  {
    v17 = sub_261CFD6A4();
    v18 = *(v17 - 8);
    (*(v18 + 56))(v9, 1, 1, v17);
    sub_261CFD664();
    result = (*(v18 + 48))(v9, 1, v17);
    if (result != 1)
    {
      return sub_261AE6A40(v9, &unk_27FEDA6D0, &unk_261D02CD0);
    }
  }

  return result;
}

uint64_t static SmartListEntity.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED9988 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD234();
  v3 = __swift_project_value_buffer(v2, qword_27FEDB4C0);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static SmartListEntity.typeDisplayRepresentation.setter(uint64_t a1)
{
  if (qword_27FED9988 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD234();
  v3 = __swift_project_value_buffer(v2, qword_27FEDB4C0);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static SmartListEntity.typeDisplayRepresentation.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_27FED9988 != -1)
  {
    swift_once();
  }

  v1 = sub_261CFD234();
  __swift_project_value_buffer(v1, qword_27FEDB4C0);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_261BA7F48@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED9988 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD234();
  v3 = __swift_project_value_buffer(v2, qword_27FEDB4C0);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_261BA8008(uint64_t a1)
{
  if (qword_27FED9988 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD234();
  v3 = __swift_project_value_buffer(v2, qword_27FEDB4C0);
  swift_beginAccess();
  (*(*(v2 - 8) + 24))(v3, a1, v2);
  return swift_endAccess();
}

uint64_t sub_261BA80D0@<X0>(void *a1@<X8>)
{
  if (qword_27FED9990 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_27FEDB4D8;
  return sub_261CFCDA4();
}

uint64_t static SmartListEntity.defaultQuery.getter@<X0>(void *a1@<X8>)
{
  if (qword_27FED9990 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_27FEDB4D8;
  return sub_261CFCDA4();
}

unint64_t sub_261BA81D0@<X0>(unint64_t *a1@<X8>)
{
  result = SmartListEntity.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_261BA81F8(uint64_t a1)
{
  v2 = sub_261B8485C();

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_261BA8248(uint64_t a1)
{
  v2 = sub_261BA9EC4();

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t sub_261BA8294()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB188, &qword_261D05330);
  sub_261AE4630();
  sub_261D002D4();
  sub_261CFC6B4();
  sub_261CFC6A4();
  result = sub_261CFC684();
  qword_27FEDB4D8 = result;
  return result;
}

uint64_t static SmartListEntity.defaultQuery.setter(uint64_t *a1)
{
  v1 = *a1;
  if (qword_27FED9990 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27FEDB4D8 = v1;
}

uint64_t (*static SmartListEntity.defaultQuery.modify(uint64_t a1))(void)
{
  if (qword_27FED9990 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t SmartListType.title.getter()
{
  v1 = sub_261CFD0B4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_261CFD6A4();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v22 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v22 - v13;
  v15 = *v0;
  if (qword_280D223E0 != -1)
  {
    v21 = *v0;
    swift_once();
    v15 = v21;
  }

  v16 = off_280D223E8;
  if (!*(off_280D223E8 + 2))
  {
    return 0;
  }

  v17 = sub_261B37E0C(v15);
  if ((v18 & 1) == 0)
  {
    return 0;
  }

  (*(v2 + 16))(v4, v16[7] + *(v2 + 72) * v17, v1);
  sub_261CFD084();
  (*(v2 + 8))(v4, v1);
  (*(v6 + 32))(v14, v12, v5);
  (*(v6 + 16))(v9, v14, v5);
  v19 = sub_261CFFA94();
  (*(v6 + 8))(v14, v5);
  return v19;
}