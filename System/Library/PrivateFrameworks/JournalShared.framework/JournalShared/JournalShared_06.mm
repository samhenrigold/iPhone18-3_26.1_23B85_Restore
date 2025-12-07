uint64_t sub_2556FDDC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_25574F0D0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a2, v4);
  v8 = OBJC_IVAR____TtC13JournalShared17ObservableJournal__journalID;
  swift_beginAccess();
  (*(v5 + 40))(a1 + v8, v7, v4);
  return swift_endAccess();
}

uint64_t ObservableJournal.__allocating_init(journalID:context:)(uint64_t a1, void *a2)
{
  swift_allocObject();
  v4 = sub_2557029F8(a1, a2);

  return v4;
}

uint64_t ObservableJournal.init(journalID:context:)(uint64_t a1, void *a2)
{
  v3 = sub_2557029F8(a1, a2);

  return v3;
}

void sub_2556FDF64(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFFE0, &qword_25575BCB0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v72 - v5);
  v88 = sub_25574F0D0();
  v7 = *(v88 - 8);
  v8 = MEMORY[0x28223BE20](v88);
  v10 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v87 = &v72 - v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v72 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF748, &qword_25575BD20);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v72 - v16;
  sub_255663294(a1, &v72 - v16, &qword_27F7BF748, &qword_25575BD20);
  v18 = sub_25574EBA0();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_255674B20(v17, &qword_27F7BF748, &qword_25575BD20);
    return;
  }

  v20 = sub_25574EB90();
  (*(v19 + 8))(v17, v18);
  if (v20)
  {
    v91 = sub_2557501B0();
    v92 = v21;
    sub_255750AA0();
    v22 = MEMORY[0x277D84F90];
    if (*(v20 + 16) && (v23 = sub_255674984(v94), (v24 & 1) != 0))
    {
      sub_255678EBC(*(v20 + 56) + 32 * v23, v93);
      sub_2556A7148(v94);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE388, &qword_255756A10);
      if (swift_dynamicCast())
      {
        v25 = v91;
        goto LABEL_11;
      }
    }

    else
    {
      sub_2556A7148(v94);
    }

    if (v22 >> 62 && sub_255750A30())
    {
      sub_255725FDC(MEMORY[0x277D84F90]);
      v25 = v71;
    }

    else
    {
      v25 = MEMORY[0x277D84FA0];
    }

LABEL_11:
    v91 = sub_2557501B0();
    v92 = v26;
    sub_255750AA0();
    if (*(v20 + 16) && (v27 = sub_255674984(v94), (v28 & 1) != 0))
    {
      sub_255678EBC(*(v20 + 56) + 32 * v27, v93);
      sub_2556A7148(v94);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE388, &qword_255756A10);
      if (swift_dynamicCast())
      {
        v29 = v91;
LABEL_18:
        v82 = v10;
        v84 = v14;
        v73 = v6;
        v83 = v2;
        sub_2556FE8E4(v29, v25);
        v76 = v30;
        if ((v30 & 0xC000000000000001) != 0)
        {
          swift_unknownObjectRetain();
          sub_2557509F0();
          sub_255669A88(0, &qword_27F7BDDA8, 0x277CBE438);
          sub_25568B170();
          sub_2557505C0();
          v31 = v94[0];
          v32 = v94[1];
          v33 = v94[2];
          v34 = v94[3];
          v35 = v94[4];
        }

        else
        {
          v36 = -1 << *(v30 + 32);
          v32 = v30 + 56;
          v33 = ~v36;
          v37 = -v36;
          if (v37 < 64)
          {
            v38 = ~(-1 << v37);
          }

          else
          {
            v38 = -1;
          }

          v35 = v38 & *(v30 + 56);
          v34 = 0;
        }

        v75 = v33;
        v39 = (v33 + 64) >> 6;
        v81 = (v7 + 32);
        v80 = (v7 + 16);
        v40 = (v7 + 8);
        v74 = "assetsFileManager";
        v41 = &property descriptor for JournalMO.isUploadedToCloud;
        v79 = v31;
        if ((v31 & 0x8000000000000000) == 0)
        {
          goto LABEL_28;
        }

LABEL_25:
        while (2)
        {
          v42 = sub_255750A60();
          if (!v42 || (v90 = v42, sub_255669A88(0, &qword_27F7BDDA8, 0x277CBE438), swift_dynamicCast(), v33 = *&v93[0], v43 = v34, v44 = v35, !*&v93[0]))
          {
LABEL_45:
            sub_25568B1C8(v31);

            return;
          }

          while (1)
          {
            v89 = v44;
            v86 = type metadata accessor for JournalMO();
            v47 = swift_dynamicCastClass();
            if (!v47)
            {
              goto LABEL_40;
            }

            v48 = v47;
            v33 = v33;
            v49 = [v48 v41[125]];
            if (!v49)
            {
              break;
            }

            v85 = v33;
            v77 = v35;
            v78 = v34;
            v50 = v87;
            v51 = v49;
            sub_25574F080();

            v52 = v84;
            (*v81)(v84, v50, v88);
            swift_getKeyPath();
            v53 = v40;
            v54 = v83;
            *&v93[0] = v83;
            sub_255703208(&qword_27F7BF708, type metadata accessor for ObservableJournal, &protocol conformance descriptor for ObservableJournal);
            sub_25574F190();

            v55 = OBJC_IVAR____TtC13JournalShared17ObservableJournal__journalID;
            swift_beginAccess();
            v56 = v54 + v55;
            v57 = v88;
            v58 = v82;
            (*v80)(v82, v56, v88);
            v33 = sub_25574F070();
            v59 = *v53;
            v60 = v58;
            v40 = v53;
            (*v53)(v60, v57);
            if (v33)
            {
              v61 = [v48 changedValuesForCurrentEvent];
              v33 = sub_255750080();

              if (*(v33 + 16))
              {
                v62 = sub_2556632FC(0xD000000000000013, v74 | 0x8000000000000000);
                if (v63)
                {
                  v66 = v62;
                  sub_25568B1C8(v79);
                  sub_255678EBC(*(v33 + 56) + 32 * v66, v93);
                  v67 = v85;

                  v59(v84, v57);
                  v33 = v67;

                  sub_255674B20(v93, &qword_27F7BE250, &qword_255756600);

                  if (swift_dynamicCastClass())
                  {
                    v68 = JournalMO.title.getter();
                    sub_2556FCDA0(v68, v69);
                    v70 = v73;
                    JournalMO.color.getter(v73);
                    sub_2556FD3A8(v70);

                    return;
                  }

LABEL_50:

                  return;
                }
              }

              v64 = v85;

              v59(v84, v57);
              memset(v93, 0, sizeof(v93));
              sub_255674B20(v93, &qword_27F7BE250, &qword_255756600);
            }

            else
            {
              v59(v52, v57);
              v65 = v85;
            }

            v34 = v43;
            v35 = v89;
            v31 = v79;
            v41 = &property descriptor for JournalMO.isUploadedToCloud;
            if (v79 < 0)
            {
              goto LABEL_25;
            }

LABEL_28:
            v45 = v34;
            v46 = v35;
            v43 = v34;
            if (!v35)
            {
              while (1)
              {
                v43 = v45 + 1;
                if (__OFADD__(v45, 1))
                {
                  break;
                }

                if (v43 >= v39)
                {
                  goto LABEL_45;
                }

                v46 = *(v32 + 8 * v43);
                ++v45;
                if (v46)
                {
                  goto LABEL_32;
                }
              }

              __break(1u);
              goto LABEL_50;
            }

LABEL_32:
            v44 = (v46 - 1) & v46;
            v33 = *(*(v31 + 48) + ((v43 << 9) | (8 * __clz(__rbit64(v46)))));
            if (!v33)
            {
              goto LABEL_45;
            }
          }

LABEL_40:
          v34 = v43;
          v35 = v89;
          if (v31 < 0)
          {
            continue;
          }

          goto LABEL_28;
        }
      }
    }

    else
    {

      sub_2556A7148(v94);
    }

    if (v22 >> 62 && sub_255750A30())
    {
      sub_255725FDC(MEMORY[0x277D84F90]);
    }

    else
    {
      v29 = MEMORY[0x277D84FA0];
    }

    goto LABEL_18;
  }
}

void sub_2556FE8E4(uint64_t a1, void *a2)
{
  v2 = a1;
  v16[1] = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    sub_2557509F0();
    sub_255669A88(0, &qword_27F7BDDA8, 0x277CBE438);
    sub_25568B170();
    sub_2557505C0();
    v2 = v16[2];
    v3 = v16[3];
    v4 = v16[4];
    v5 = v16[5];
    v6 = v16[6];
  }

  else
  {
    v5 = 0;
    v7 = -1 << *(a1 + 32);
    v3 = (a1 + 56);
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

    v6 = (v9 & *(a1 + 56));
  }

  v10 = (v4 + 64) >> 6;
  if (v2 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v11 = v5;
    v12 = v6;
    v13 = v5;
    if (!v6)
    {
      break;
    }

LABEL_12:
    v14 = (v12 - 1) & v12;
    v15 = *(*(v2 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v15)
    {
LABEL_18:
      sub_25568B1C8(v2);
      return;
    }

    while (1)
    {
      sub_2556FF6F4(v16, v15, &qword_27F7BDDA8, 0x277CBE438, &qword_27F7BF750, &qword_25575BD50);

      v5 = v13;
      v6 = v14;
      if ((v2 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_255750A60())
      {
        sub_255669A88(0, &qword_27F7BDDA8, 0x277CBE438);
        swift_dynamicCast();
        v15 = v16[0];
        v13 = v5;
        v14 = v6;
        if (v16[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v13 = (v11 + 1);
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      goto LABEL_18;
    }

    v12 = v3[v13];
    ++v11;
    if (v12)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t ObservableJournal.deinit()
{
  v1 = OBJC_IVAR____TtC13JournalShared17ObservableJournal_logger;
  v2 = sub_25574F2C0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_255674B20(v0 + OBJC_IVAR____TtC13JournalShared17ObservableJournal__color, &qword_27F7BFFE0, &qword_25575BCB0);
  v3 = OBJC_IVAR____TtC13JournalShared17ObservableJournal__journalID;
  v4 = sub_25574F0D0();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC13JournalShared17ObservableJournal___observationRegistrar;
  v6 = sub_25574F1D0();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  return v0;
}

uint64_t ObservableJournal.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC13JournalShared17ObservableJournal_logger;
  v2 = sub_25574F2C0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_255674B20(v0 + OBJC_IVAR____TtC13JournalShared17ObservableJournal__color, &qword_27F7BFFE0, &qword_25575BCB0);
  v3 = OBJC_IVAR____TtC13JournalShared17ObservableJournal__journalID;
  v4 = sub_25574F0D0();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC13JournalShared17ObservableJournal___observationRegistrar;
  v6 = sub_25574F1D0();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  return swift_deallocClassInstance();
}

uint64_t sub_2556FEE80(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_25574FF90();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_255703208(&qword_27F7BF780, MEMORY[0x277CFB7B8], MEMORY[0x277CFB7C0]);
  v33 = a2;
  v11 = sub_255750090();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_255703208(&qword_27F7BF788, MEMORY[0x277CFB7B8], MEMORY[0x277CFB7C8]);
      v21 = sub_255750100();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_255700B80(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_2556FF184(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_25574F0D0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_255703208(&qword_27F7BE0B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v33 = a2;
  v11 = sub_255750090();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_255703208(&qword_27F7BE0B8, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v21 = sub_255750100();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_255700E48(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_2556FF490(uint64_t *a1, void *a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5, void (*a6)(void))
{
  v11 = v6;
  v14 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    if (v14 < 0)
    {
      v15 = *v6;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFFFFFFFF8;
    }

    v16 = a2;

    v17 = sub_255750A40();

    if (v17)
    {

      a3(0);
      swift_dynamicCast();
      result = 0;
      *a1 = v35;
    }

    else
    {
      result = sub_255750A30();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v27 = sub_2556FF994(v15, result + 1, a4, a5, a6);
        v28 = *(v27 + 16);
        if (*(v27 + 24) <= v28)
        {
          sub_2557008DC(v28 + 1, a4, a5);
        }

        v29 = v16;
        sub_255700AFC(v29, v27);

        *v11 = v27;
        *a1 = v29;
        return 1;
      }
    }
  }

  else
  {
    a3(0);
    v19 = sub_255750930();
    v20 = -1 << *(v14 + 32);
    v21 = v19 & ~v20;
    if ((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
    {
      v22 = ~v20;
      while (1)
      {
        v23 = *(*(v14 + 48) + 8 * v21);
        v24 = sub_255750940();

        if (v24)
        {
          break;
        }

        v21 = (v21 + 1) & v22;
        if (((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v30 = *(*(v14 + 48) + 8 * v21);
      *a1 = v30;
      v31 = v30;
      return 0;
    }

    else
    {
LABEL_11:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v36 = *v11;
      v26 = a2;
      sub_255701110(v26, v21, isUniquelyReferenced_nonNull_native, a4, a5, a6);
      *v11 = v36;
      *a1 = v26;
      return 1;
    }
  }

  return result;
}

uint64_t sub_2556FF6F4(uint64_t *a1, void *a2, unint64_t *a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  v11 = v6;
  v14 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    if (v14 < 0)
    {
      v15 = *v6;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFFFFFFFF8;
    }

    v16 = a2;

    v17 = sub_255750A40();

    if (v17)
    {

      sub_255669A88(0, a3, a4);
      swift_dynamicCast();
      result = 0;
      *a1 = v36;
    }

    else
    {
      result = sub_255750A30();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v27 = sub_2556FFB8C(v15, result + 1, a5, a6, a3, a4);
        v28 = *(v27 + 16);
        if (*(v27 + 24) <= v28)
        {
          sub_2557008DC(v28 + 1, a5, a6);
        }

        v29 = v16;
        sub_255700AFC(v29, v27);

        *v11 = v27;
        *a1 = v29;
        return 1;
      }
    }
  }

  else
  {
    sub_255669A88(0, a3, a4);
    v19 = sub_255750930();
    v20 = -1 << *(v14 + 32);
    v21 = v19 & ~v20;
    if ((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
    {
      v22 = ~v20;
      while (1)
      {
        v23 = *(*(v14 + 48) + 8 * v21);
        v24 = sub_255750940();

        if (v24)
        {
          break;
        }

        v21 = (v21 + 1) & v22;
        if (((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v30 = *(*(v14 + 48) + 8 * v21);
      *a1 = v30;
      v31 = v30;
      return 0;
    }

    else
    {
LABEL_11:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v37 = *v11;
      v26 = a2;
      sub_255701294(v26, v21, isUniquelyReferenced_nonNull_native, a5, a6, a3, a4);
      *v11 = v37;
      *a1 = v26;
      return 1;
    }
  }

  return result;
}

uint64_t sub_2556FF994(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v8 = sub_255750AD0();
    v21 = v8;
    sub_2557509F0();
    if (sub_255750A60())
    {
      a5(0);
      do
      {
        swift_dynamicCast();
        v15 = *(v8 + 16);
        if (*(v8 + 24) <= v15)
        {
          sub_2557008DC(v15 + 1, a3, a4);
        }

        v8 = v21;
        result = sub_255750930();
        v10 = v21 + 56;
        v11 = -1 << *(v21 + 32);
        v12 = result & ~v11;
        v13 = v12 >> 6;
        if (((-1 << v12) & ~*(v21 + 56 + 8 * (v12 >> 6))) != 0)
        {
          v14 = __clz(__rbit64((-1 << v12) & ~*(v21 + 56 + 8 * (v12 >> 6)))) | v12 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v16 = 0;
          v17 = (63 - v11) >> 6;
          do
          {
            if (++v13 == v17 && (v16 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v18 = v13 == v17;
            if (v13 == v17)
            {
              v13 = 0;
            }

            v16 |= v18;
            v19 = *(v10 + 8 * v13);
          }

          while (v19 == -1);
          v14 = __clz(__rbit64(~v19)) + (v13 << 6);
        }

        *(v10 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
        *(*(v21 + 48) + 8 * v14) = v20;
        ++*(v21 + 16);
      }

      while (sub_255750A60());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v8;
}

uint64_t sub_2556FFB8C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t *a5, void *a6)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v10 = sub_255750AD0();
    v23 = v10;
    sub_2557509F0();
    if (sub_255750A60())
    {
      sub_255669A88(0, a5, a6);
      do
      {
        swift_dynamicCast();
        v17 = *(v10 + 16);
        if (*(v10 + 24) <= v17)
        {
          sub_2557008DC(v17 + 1, a3, a4);
        }

        v10 = v23;
        result = sub_255750930();
        v12 = v23 + 56;
        v13 = -1 << *(v23 + 32);
        v14 = result & ~v13;
        v15 = v14 >> 6;
        if (((-1 << v14) & ~*(v23 + 56 + 8 * (v14 >> 6))) != 0)
        {
          v16 = __clz(__rbit64((-1 << v14) & ~*(v23 + 56 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v18 = 0;
          v19 = (63 - v13) >> 6;
          do
          {
            if (++v15 == v19 && (v18 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v20 = v15 == v19;
            if (v15 == v19)
            {
              v15 = 0;
            }

            v18 |= v20;
            v21 = *(v12 + 8 * v15);
          }

          while (v21 == -1);
          v16 = __clz(__rbit64(~v21)) + (v15 << 6);
        }

        *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
        *(*(v23 + 48) + 8 * v16) = v22;
        ++*(v23 + 16);
      }

      while (sub_255750A60());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v10;
}

uint64_t sub_2556FFD8C(uint64_t a1)
{
  v2 = v1;
  v36 = sub_25574FF90();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF790, &qword_25575BD98);
  result = sub_255750AC0();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_255703208(&qword_27F7BF780, MEMORY[0x277CFB7B8], MEMORY[0x277CFB7C0]);
      result = sub_255750090();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t sub_2557000E8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF778, &qword_25575BD90);
  result = sub_255750AC0();
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
      sub_255750F80();
      sub_2557501F0();
      result = sub_255750FD0();
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

uint64_t sub_255700348(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF768, &unk_25575BD80);
  result = sub_255750AC0();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    v25 = v2;
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
      result = sub_255750F70();
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

    if (v8 >= 64)
    {
      bzero((v3 + 56), 8 * v11);
    }

    else
    {
      *v7 = -1 << v8;
    }

    v2 = v25;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_25570056C(uint64_t a1)
{
  v2 = v1;
  v36 = sub_25574F0D0();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE838, &qword_255758008);
  result = sub_255750AC0();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_255703208(&qword_27F7BE0B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_255750090();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t sub_2557008DC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_255750AC0();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v5 + 48) + 8 * (v16 | (v8 << 6)));
      result = sub_255750930();
      v20 = -1 << *(v7 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v19;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v5 + 32);
    if (v27 >= 64)
    {
      bzero((v5 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v27;
    }

    *(v5 + 16) = 0;
  }

  *v4 = v7;
  return result;
}

unint64_t sub_255700AFC(uint64_t a1, uint64_t a2)
{
  sub_255750930();
  result = sub_2557509D0();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_255700B80(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_25574FF90();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2556FFD8C(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_2557016E8(MEMORY[0x277CFB7B8], &qword_27F7BF790, &qword_25575BD98);
      goto LABEL_12;
    }

    sub_255701A60(v10 + 1);
  }

  v12 = *v3;
  sub_255703208(&qword_27F7BF780, MEMORY[0x277CFB7B8], MEMORY[0x277CFB7C0]);
  v13 = sub_255750090();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_255703208(&qword_27F7BF788, MEMORY[0x277CFB7B8], MEMORY[0x277CFB7C8]);
      v21 = sub_255750100();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_255750F00();
  __break(1u);
  return result;
}

uint64_t sub_255700E48(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_25574F0D0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_25570056C(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_2557016E8(MEMORY[0x277CC95F0], &qword_27F7BE838, &qword_255758008);
      goto LABEL_12;
    }

    sub_2557021A4(v10 + 1);
  }

  v12 = *v3;
  sub_255703208(&qword_27F7BE0B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v13 = sub_255750090();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_255703208(&qword_27F7BE0B8, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v21 = sub_255750100();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_255750F00();
  __break(1u);
  return result;
}

void sub_255701110(uint64_t a1, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, void (*a6)(void))
{
  v9 = *(*v6 + 16);
  v10 = *(*v6 + 24);
  if (v10 > v9 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v11 = a6;
    sub_2557008DC(v9 + 1, a4, a5);
  }

  else
  {
    if (v10 > v9)
    {
      sub_255701920(a4, a5);
      goto LABEL_12;
    }

    v11 = a6;
    sub_2557024C0(v9 + 1, a4, a5);
  }

  v12 = *v6;
  v13 = sub_255750930();
  v14 = -1 << *(v12 + 32);
  a2 = v13 & ~v14;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v15 = ~v14;
    v11(0);
    do
    {
      v16 = *(*(v12 + 48) + 8 * a2);
      v17 = sub_255750940();

      if (v17)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v15;
    }

    while (((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v18 = *v6;
  *(*v6 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v18 + 48) + 8 * a2) = a1;
  v19 = *(v18 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (!v20)
  {
    *(v18 + 16) = v21;
    return;
  }

  __break(1u);
LABEL_15:
  sub_255750F00();
  __break(1u);
}

void sub_255701294(uint64_t a1, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, unint64_t *a6, void *a7)
{
  v10 = *(*v7 + 16);
  v11 = *(*v7 + 24);
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v12 = a6;
    v13 = a7;
    sub_2557008DC(v10 + 1, a4, a5);
  }

  else
  {
    if (v11 > v10)
    {
      sub_255701920(a4, a5);
      goto LABEL_12;
    }

    v12 = a6;
    v13 = a7;
    sub_2557024C0(v10 + 1, a4, a5);
  }

  v14 = *v7;
  v15 = sub_255750930();
  v16 = -1 << *(v14 + 32);
  a2 = v15 & ~v16;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    sub_255669A88(0, v12, v13);
    do
    {
      v18 = *(*(v14 + 48) + 8 * a2);
      v19 = sub_255750940();

      if (v19)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v20 = *v7;
  *(*v7 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v20 + 48) + 8 * a2) = a1;
  v21 = *(v20 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (!v22)
  {
    *(v20 + 16) = v23;
    return;
  }

  __break(1u);
LABEL_15:
  sub_255750F00();
  __break(1u);
}

void *sub_255701424()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF778, &qword_25575BD90);
  v2 = *v0;
  v3 = sub_255750AB0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_255701580()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF768, &unk_25575BD80);
  v2 = *v0;
  v3 = sub_255750AB0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_2557016E8(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v7 = a1(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v11 = *v3;
  v12 = sub_255750AB0();
  v13 = v12;
  if (*(v11 + 16))
  {
    v27 = v6;
    result = (v12 + 56);
    v15 = ((1 << *(v13 + 32)) + 63) >> 6;
    if (v13 != v11 || result >= v11 + 56 + 8 * v15)
    {
      result = memmove(result, (v11 + 56), 8 * v15);
    }

    v17 = 0;
    *(v13 + 16) = *(v11 + 16);
    v18 = 1 << *(v11 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v11 + 56);
    v21 = (v18 + 63) >> 6;
    v28 = v8 + 32;
    for (i = v8 + 16; v20; result = (*(v8 + 32))(*(v13 + 48) + v25, v10, v7))
    {
      v22 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_17:
      v25 = *(v8 + 72) * (v22 | (v17 << 6));
      (*(v8 + 16))(v10, *(v11 + 48) + v25, v7);
    }

    v23 = v17;
    while (1)
    {
      v17 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v17 >= v21)
      {

        v6 = v27;
        goto LABEL_21;
      }

      v24 = *(v11 + 56 + 8 * v17);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v20 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v13;
  }

  return result;
}

id sub_255701920(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_255750AB0();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        result = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

uint64_t sub_255701A60(uint64_t a1)
{
  v2 = v1;
  v33 = sub_25574FF90();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF790, &qword_25575BD98);
  v7 = sub_255750AC0();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_255703208(&qword_27F7BF780, MEMORY[0x277CFB7B8], MEMORY[0x277CFB7C0]);
      result = sub_255750090();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
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
    *v2 = v7;
  }

  return result;
}

uint64_t sub_255701D7C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF778, &qword_25575BD90);
  result = sub_255750AC0();
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
      sub_255750F80();

      sub_2557501F0();
      result = sub_255750FD0();
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

uint64_t sub_255701FB4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF768, &unk_25575BD80);
  result = sub_255750AC0();
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
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      result = sub_255750F70();
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

        goto LABEL_26;
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
        goto LABEL_24;
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
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v2 = v5;
  }

  return result;
}

uint64_t sub_2557021A4(uint64_t a1)
{
  v2 = v1;
  v33 = sub_25574F0D0();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE838, &qword_255758008);
  v7 = sub_255750AC0();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_255703208(&qword_27F7BE0B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_255750090();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
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
    *v2 = v7;
  }

  return result;
}

uint64_t sub_2557024C0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_255750AC0();
  v7 = result;
  if (*(v5 + 16))
  {
    v26 = v3;
    v8 = 0;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(*(v5 + 48) + 8 * (v15 | (v8 << 6)));
      result = sub_255750930();
      v19 = -1 << *(v7 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v7 + 48) + 8 * v14) = v18;
      ++*(v7 + 16);
    }

    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v8 >= v12)
      {

        v4 = v26;
        goto LABEL_26;
      }

      v17 = *(v5 + 56 + 8 * v8);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
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
    *v4 = v7;
  }

  return result;
}

uint64_t sub_2557026CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MergeableColor(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFFE0, &qword_25575BCB0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF760, &qword_25575BD68);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_255663294(a1, &v20 - v13, &qword_27F7BFFE0, &qword_25575BCB0);
  sub_255663294(a2, &v14[v15], &qword_27F7BFFE0, &qword_25575BCB0);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    sub_255663294(v14, v10, &qword_27F7BFFE0, &qword_25575BCB0);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      sub_2557032C8(&v14[v15], v7);
      v18 = _s13JournalShared14MergeableColorO2eeoiySbAC_ACtFZ_0(v10, v7);
      sub_25570326C(v7);
      sub_25570326C(v10);
      sub_255674B20(v14, &qword_27F7BFFE0, &qword_25575BCB0);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    sub_25570326C(v10);
    goto LABEL_6;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_255674B20(v14, &qword_27F7BF760, &qword_25575BD68);
    v17 = 1;
    return v17 & 1;
  }

  sub_255674B20(v14, &qword_27F7BFFE0, &qword_25575BCB0);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_25570296C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFFE0, &qword_25575BCB0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2557029F8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_25574F0D0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v31 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFFE0, &qword_25575BCB0);
  MEMORY[0x28223BE20](v9 - 8);
  v30 = (&v29 - v10);
  v11 = OBJC_IVAR____TtC13JournalShared17ObservableJournal_logger;
  if (qword_27F7BD5B8 != -1)
  {
    swift_once();
  }

  v12 = sub_25574F2C0();
  v13 = __swift_project_value_buffer(v12, qword_27F7C04B0);
  (*(*(v12 - 8) + 16))(v3 + v11, v13, v12);
  v14 = (v3 + OBJC_IVAR____TtC13JournalShared17ObservableJournal__title);
  *v14 = 0;
  v14[1] = 0;
  v15 = OBJC_IVAR____TtC13JournalShared17ObservableJournal__color;
  v16 = type metadata accessor for MergeableColor(0);
  v17 = *(*(v16 - 8) + 56);
  v17(v3 + v15, 1, 1, v16);
  sub_25574F1C0();
  v32 = v7;
  (*(v7 + 16))(v3 + OBJC_IVAR____TtC13JournalShared17ObservableJournal__journalID, a1, v6);
  v33 = a2;
  sub_2557282C4(a1);
  v34 = a1;
  if (v18)
  {
    v19 = v18;
    v20 = JournalMO.title.getter();
    v22 = v21;

    sub_2556FCDA0(v20, v22);
    v23 = v19;
    v24 = v30;
    JournalMO.color.getter(v30);
  }

  else
  {
    sub_2556FCDA0(0, 0);
    v24 = v30;
    v17(v30, 1, 1, v16);
    v23 = 0;
  }

  sub_2556FD3A8(v24);

  v26 = v32;
  v25 = v33;
  v27 = [objc_opt_self() defaultCenter];
  [v27 addObserver:v3 selector:sel_contextObjectsDidChangeWithNotification_ name:*MEMORY[0x277CBE1B8] object:v25];

  (*(v26 + 8))(v34, v6);
  return v3;
}

void sub_255702F64(uint64_t a1)
{
  sub_25574F2C0();
  if (v1 <= 0x3F)
  {
    sub_2557031B0(319);
    if (v2 <= 0x3F)
    {
      sub_25574F0D0();
      if (v3 <= 0x3F)
      {
        sub_25574F1D0();
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_2557031B0(uint64_t a1)
{
  if (!qword_27F7BF740)
  {
    type metadata accessor for MergeableColor(255);
    v1 = sub_255750950();
    if (!v2)
    {
      atomic_store(v1, &qword_27F7BF740);
    }
  }
}

uint64_t sub_255703208(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25570326C(uint64_t a1)
{
  v2 = type metadata accessor for MergeableColor(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2557032C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MergeableColor(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_255703330@<X0>(char *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF7A8, &unk_25575BDB0);
  MEMORY[0x28223BE20](v3 - 8);
  v82 = &v75 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB40, &unk_255754E40);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v75 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v75 - v12;
  v14 = sub_25574F020();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v76 = &v75 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v75 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v75 - v24;
  v26 = [v1 bundleDate];
  if (v26)
  {
    v27 = v26;
    sub_25574EFF0();

    v78 = *(v15 + 32);
    v79 = v15 + 32;
    v78(v25, v23, v14);
    v28 = JournalEntryMO.assetsArray.getter();
    v29 = v28;
    v80 = a1;
    v81 = v15;
    v83 = v14;
    if (v28 >> 62)
    {
      goto LABEL_43;
    }

    for (i = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_255750A30())
    {
      v31 = 0;
      v84 = v29 & 0xFFFFFFFFFFFFFF8;
      v85 = v29 & 0xC000000000000001;
      v75 = (v81 + 48);
      v77 = (v81 + 56);
      while (1)
      {
        if (v85)
        {
          v32 = MEMORY[0x259C3E830](v31, v29);
        }

        else
        {
          if (v31 >= *(v84 + 16))
          {
            goto LABEL_42;
          }

          v32 = *(v29 + 8 * v31 + 32);
        }

        v33 = v32;
        v34 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
          break;
        }

        v35 = [v32 source];
        if (v35)
        {
          v36 = v25;
          v37 = v13;
          v38 = v35;
          v39 = sub_2557501B0();
          v41 = v40;

          if (v39 == 0x6974736567677573 && v41 == 0xEF74656568536E6FLL)
          {
          }

          else
          {
            v43 = sub_255750EB0();

            if ((v43 & 1) == 0)
            {

              v13 = v37;
              v25 = v36;
              goto LABEL_6;
            }
          }

          v44 = [v33 assetType];
          if (v44)
          {
            v45 = v44;
            v46 = sub_2557501B0();
            v48 = v47;
          }

          else
          {
            v46 = 0;
            v48 = 0xE000000000000000;
          }

          v49._countAndFlagsBits = v46;
          v49._object = v48;
          LOBYTE(v50) = AssetType.init(rawValue:)(v49);
          v25 = v36;
          if (v87 == 23)
          {

            v13 = v37;
            goto LABEL_6;
          }

          v86 = v87;
          v13 = v37;
          if (AssetType.metadataType.getter(v50))
          {
            type metadata accessor for PhotoLibraryAssetMetadata(0);
            if (swift_dynamicCastMetatype())
            {
              v51 = [v33 assetMetaData];
              if (v51)
              {
                v52 = v51;
                v53 = sub_25574EF90();
                v55 = v54;

                v56 = v82;
                sub_25573FA94(v82);

                sub_2556755A8(v53, v55);
                v57 = type metadata accessor for PhotoLibraryAssetMetadataDateOnly(0);
                if ((*(*(v57 - 8) + 48))(v56, 1, v57) == 1)
                {
                  sub_255674B20(v56, &qword_27F7BF7A8, &unk_25575BDB0);
                  v13 = v37;
                  v25 = v36;
                  goto LABEL_31;
                }

                v13 = v37;
                sub_2556700F4(v56, v37);
                sub_255704434(v56);
                v25 = v36;
                if ((*v75)(v37, 1, v83) != 1)
                {
                  v68 = v81 + 8;
                  v69 = v83;
                  (*(v81 + 8))(v25, v83);

                  v70 = v76;
                  v71 = v78;
                  v78(v76, v37, v69);
                  v72 = v80;
                  v71(v80, v70, v69);
                  return (*(v68 + 48))(v72, 0, 1, v69);
                }
              }

              else
              {

LABEL_31:
                (*v77)(v13, 1, 1, v83);
              }

              sub_255674B20(v13, &qword_27F7BEB40, &unk_255754E40);
              goto LABEL_6;
            }
          }
        }

LABEL_6:
        ++v31;
        if (v34 == i)
        {
          goto LABEL_44;
        }
      }

      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      ;
    }

LABEL_44:

    v73 = v80;
    v74 = v83;
    v78(v80, v25, v83);
    return (*(v81 + 56))(v73, 0, 1, v74);
  }

  else
  {
    v58 = [v1 entryDate];
    if (v58)
    {
      v59 = v58;
      sub_25574EFF0();

      v60 = v15;
      v61 = *(v15 + 32);
      v61(v11, v18, v14);
      v62 = *(v60 + 56);
      v62(v11, 0, 1, v14);
      v61(a1, v11, v14);
      return (v62)(a1, 0, 1, v14);
    }

    else
    {
      v64 = *(v15 + 56);
      v65 = 1;
      v64(v11, 1, 1, v14);
      v66 = [v1 createdDate];
      if (v66)
      {
        v67 = v66;
        sub_25574EFF0();

        v65 = 0;
      }

      v64(v8, v65, 1, v14);
      sub_2556719B8(v8, a1);
      result = (*(v15 + 48))(v11, 1, v14);
      if (result != 1)
      {
        return sub_255674B20(v11, &qword_27F7BEB40, &unk_255754E40);
      }
    }
  }

  return result;
}

Swift::Bool __swiftcall JournalEntryMO.updateSortingColumns()()
{
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF798, &unk_25575BDA0);
  MEMORY[0x28223BE20](v43);
  v2 = &v37 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB40, &unk_255754E40);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v44 = &v37 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v37 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v37 - v12;
  v14 = sub_25574F020();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v42 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v37 - v18;
  sub_255703330(v13);
  v20 = *(v15 + 48);
  if (v20(v13, 1, v14) != 1)
  {
    v38 = v6;
    v41 = v2;
    v37 = *(v15 + 32);
    v37(v19, v13, v14);
    v21 = *(v15 + 16);
    v40 = v19;
    v21(v11, v19, v14);
    v22 = *(v15 + 56);
    v23 = 1;
    v22(v11, 0, 1, v14);
    v39 = v0;
    v24 = [v0 momentDateForSorting];
    v25 = v44;
    if (v24)
    {
      v26 = v24;
      sub_25574EFF0();

      v23 = 0;
    }

    v22(v25, v23, 1, v14);
    v27 = *(v43 + 48);
    v28 = v41;
    sub_2556700F4(v11, v41);
    sub_2556700F4(v25, v28 + v27);
    if (v20(v28, 1, v14) == 1)
    {
      sub_255674B20(v25, &qword_27F7BEB40, &unk_255754E40);
      sub_255674B20(v11, &qword_27F7BEB40, &unk_255754E40);
      v29 = v20(v28 + v27, 1, v14);
      v30 = v40;
      if (v29 == 1)
      {
        sub_255674B20(v28, &qword_27F7BEB40, &unk_255754E40);
        (*(v15 + 8))(v30, v14);
        return 0;
      }
    }

    else
    {
      v31 = v38;
      sub_2556700F4(v28, v38);
      if (v20(v28 + v27, 1, v14) != 1)
      {
        v34 = (v28 + v27);
        v35 = v42;
        v37(v42, v34, v14);
        sub_255704578(&qword_27F7BF7A0, MEMORY[0x277CC9598]);
        LODWORD(v43) = sub_255750100();
        v36 = *(v15 + 8);
        v36(v35, v14);
        sub_255674B20(v44, &qword_27F7BEB40, &unk_255754E40);
        sub_255674B20(v11, &qword_27F7BEB40, &unk_255754E40);
        v36(v31, v14);
        sub_255674B20(v28, &qword_27F7BEB40, &unk_255754E40);
        v30 = v40;
        if (v43)
        {
          v36(v40, v14);
          return 0;
        }

LABEL_11:
        v32 = sub_25574EFC0();
        [v39 setMomentDateForSorting_];

        (*(v15 + 8))(v30, v14);
        return 1;
      }

      sub_255674B20(v44, &qword_27F7BEB40, &unk_255754E40);
      sub_255674B20(v11, &qword_27F7BEB40, &unk_255754E40);
      (*(v15 + 8))(v31, v14);
      v30 = v40;
    }

    sub_255674B20(v28, &qword_27F7BF798, &unk_25575BDA0);
    goto LABEL_11;
  }

  sub_255674B20(v13, &qword_27F7BEB40, &unk_255754E40);
  return 0;
}

uint64_t sub_255704084@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB40, &unk_255754E40);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF7C0, &qword_25575BE10);
  v17 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v15 - v8;
  v10 = type metadata accessor for PhotoLibraryAssetMetadataDateOnly(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255704524();
  sub_255750FE0();
  if (!v2)
  {
    v13 = v16;
    sub_25574F020();
    sub_255704578(&qword_27F7BDC38, MEMORY[0x277CC95A0]);
    sub_255750D40();
    (*(v17 + 8))(v9, v7);
    sub_2556719B8(v6, v12);
    sub_2557045BC(v12, v13);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2557042D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1702125924 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_255750EB0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_255704358(uint64_t a1)
{
  v2 = sub_255704524();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255704394(uint64_t a1)
{
  v2 = sub_255704524();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t type metadata accessor for PhotoLibraryAssetMetadataDateOnly(uint64_t a1)
{
  result = qword_27F7BF7B0;
  if (!qword_27F7BF7B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_255704434(uint64_t a1)
{
  v2 = type metadata accessor for PhotoLibraryAssetMetadataDateOnly(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2557044B8(uint64_t a1)
{
  sub_25566E80C(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_255704524()
{
  result = qword_27F7BF7C8;
  if (!qword_27F7BF7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF7C8);
  }

  return result;
}

uint64_t sub_255704578(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_25574F020();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2557045BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotoLibraryAssetMetadataDateOnly(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_255704634()
{
  result = qword_27F7BF7D0;
  if (!qword_27F7BF7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF7D0);
  }

  return result;
}

unint64_t sub_25570468C()
{
  result = qword_27F7BF7D8;
  if (!qword_27F7BF7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF7D8);
  }

  return result;
}

unint64_t sub_2557046E4()
{
  result = qword_27F7BF7E0;
  if (!qword_27F7BF7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF7E0);
  }

  return result;
}

uint64_t Date.startOfDay.getter()
{
  v0 = sub_25574F160();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25574F140();
  sub_25574F110();
  return (*(v1 + 8))(v3, v0);
}

uint64_t Date.endOfDay.getter@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v1 = sub_25574F020();
  v34 = *(v1 - 8);
  v35 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_25574F160();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v32 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB40, &unk_255754E40);
  MEMORY[0x28223BE20](v11 - 8);
  v33 = &v32 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF7E8, &qword_25575BF30);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v32 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF7F0, &qword_25575BF38);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v32 - v17;
  v32 = sub_25574ECE0();
  v19 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v21 = &v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 56))(v18, 1, 1, v4);
  v22 = sub_25574F170();
  (*(*(v22 - 8) + 56))(v15, 1, 1, v22);
  sub_25574ECD0();
  sub_25574ECB0();
  sub_25574ECC0();
  sub_25574F140();
  sub_25574F140();
  sub_25574F110();
  v23 = *(v5 + 8);
  v24 = v4;
  v23(v8, v4);
  v25 = v33;
  sub_25574F120();
  v27 = v34;
  v26 = v35;
  (*(v34 + 8))(v3, v35);
  v23(v10, v24);
  v28 = v21;
  v29 = v26;
  (*(v19 + 8))(v28, v32);
  v30 = *(v27 + 48);
  if (v30(v25, 1, v29) != 1)
  {
    return (*(v27 + 32))(v36, v25, v29);
  }

  (*(v27 + 16))(v36, v37, v29);
  result = (v30)(v25, 1, v29);
  if (result != 1)
  {
    return sub_255687634(v25);
  }

  return result;
}

uint64_t sub_255704D38(uint64_t (*a1)(uint64_t))
{
  v3 = sub_25574F160();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25574F140();
  LOBYTE(a1) = a1(v1);
  (*(v4 + 8))(v6, v3);
  return a1 & 1;
}

uint64_t sub_255704E24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2557052A4();
  sub_2557050DC();

  return sub_25574FDD0();
}

void *sub_255704E94()
{
  sub_2557052A4();
  sub_255705250();
  return sub_25574FDF0();
}

uint64_t sub_255704F00(uint64_t a1, uint64_t a2)
{
  sub_2557052A4();
  sub_255705250();
  return sub_25574FE00();
}

uint64_t sub_255704F5C(uint64_t a1)
{
  v2 = sub_2557052A4();
  v3 = sub_255705250();
  v4 = MEMORY[0x277CFB810];

  return MEMORY[0x28214E330](a1, v2, v3, v4);
}

uint64_t sub_255705014(uint64_t a1, uint64_t a2)
{
  v4 = sub_255705250();
  v5 = MEMORY[0x277CFB810];

  return MEMORY[0x28214E590](a1, a2, v4, v5);
}

uint64_t MergeableWritingDirection.debugDescription.getter()
{
  v1 = 0x69526F547466656CLL;
  if (*v0 != 1)
  {
    v1 = 0x4C6F547468676972;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C61727574616ELL;
  }
}

unint64_t sub_2557050DC()
{
  result = qword_27F7BF7F8;
  if (!qword_27F7BF7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF7F8);
  }

  return result;
}

unint64_t sub_255705134()
{
  result = qword_27F7BF800;
  if (!qword_27F7BF800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF800);
  }

  return result;
}

unint64_t sub_25570518C()
{
  result = qword_27F7BF808;
  if (!qword_27F7BF808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF808);
  }

  return result;
}

uint64_t sub_2557051E0()
{
  v1 = 0x69526F547466656CLL;
  if (*v0 != 1)
  {
    v1 = 0x4C6F547468676972;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C61727574616ELL;
  }
}

unint64_t sub_255705250()
{
  result = qword_27F7BF810;
  if (!qword_27F7BF810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF810);
  }

  return result;
}

unint64_t sub_2557052A4()
{
  result = qword_27F7BF818;
  if (!qword_27F7BF818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF818);
  }

  return result;
}

uint64_t sub_2557052F8()
{
  v0 = sub_25574F2C0();
  __swift_allocate_value_buffer(v0, qword_27F7BF820);
  __swift_project_value_buffer(v0, qword_27F7BF820);
  return sub_25574F2B0();
}

id JournalEntryMO.deepCopy()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE7E8, &unk_255757F00);
  MEMORY[0x28223BE20](v2 - 8);
  v75 = &v69 - v3;
  v73 = type metadata accessor for MergeableEntryAttributes(0);
  v72 = *(v73 - 8);
  v4 = MEMORY[0x28223BE20](v73);
  v71 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v69 - v7;
  MEMORY[0x28223BE20](v6);
  v10 = &v69 - v9;
  v83 = sub_25574EDF0();
  v90 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v12 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_25574F0D0();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v77 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v80 = &v69 - v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v69 - v19;
  sub_255705D68();
  v22 = v21;
  if (v21)
  {
    sub_25574F0C0();
    v23 = sub_25574F050();
    v24 = v14[1];
    v92 = v14 + 1;
    v93 = v13;
    v91 = v24;
    v24(v20, v13);
    v85 = v22;
    [v22 setId_];

    v88 = v1;
    v25 = JournalEntryMO.assetsArray.getter();
    if (v25 >> 62)
    {
      goto LABEL_41;
    }

    v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (1)
    {
      v69 = v10;
      v70 = v8;
      v84 = v25;
      if (!v26)
      {
        break;
      }

      v8 = 0;
      v87 = v25 & 0xC000000000000001;
      v79 = v25 & 0xFFFFFFFFFFFFFF8;
      v78 = v25 + 32;
      v82 = (v90 + 8);
      v76 = (v14 + 2);
      v81 = MEMORY[0x277D84F98];
      v10 = MEMORY[0x277D84F70];
      v27 = v93;
      v86 = v26;
      while (1)
      {
        if (v87)
        {
          v25 = MEMORY[0x259C3E830](v8, v84);
        }

        else
        {
          if (v8 >= *(v79 + 16))
          {
            goto LABEL_40;
          }

          v25 = *(v78 + 8 * v8);
        }

        v14 = v25;
        if (__OFADD__(v8++, 1))
        {
          break;
        }

        sub_255705D68();
        if (v29)
        {
          v30 = v29;
          sub_25574F0C0();
          v31 = sub_25574F050();
          v91(v20, v27);
          [v30 setId_];

          v32 = [v14 fileAttachments];
          if (!v32)
          {
            sub_255669A88(0, &qword_27F7BE7F0, 0x277CBEB98);
            v32 = MEMORY[0x259C3E5C0](MEMORY[0x277D84F90]);
          }

          sub_255750900();

          sub_25574EDE0();
          v90 = v14;
          while (v96)
          {
            sub_255663374(&v95, &v94);
            type metadata accessor for JournalEntryAssetFileAttachmentMO();
            if (swift_dynamicCast())
            {
              v46 = v98;
              sub_255705D68();
              if (v47)
              {
                v43 = v47;
                sub_25574F0C0();
                v44 = sub_25574F050();
                v45 = v93;
                v91(v20, v93);
                [v43 setId_];

                [v30 addFileAttachmentsObject_];
                v27 = v45;
              }

              else
              {

                v27 = v93;
              }
            }

            sub_25574EDE0();
          }

          (*v82)(v12, v83);
          [v85 addAssetsObject_];
          v33 = [v90 id];
          if (v33)
          {
            v34 = v80;
            v35 = v33;
            sub_25574F080();

            v36 = [v30 id];
            if (v36)
            {
              v37 = v77;
              v38 = v36;
              sub_25574F080();

              (*v76)(v20, v37, v27);
              v39 = v81;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *&v95 = v39;
              sub_255707328(v20, v34, isUniquelyReferenced_nonNull_native);
              v41 = v37;
              v42 = v91;
              v91(v41, v27);
              v42(v34, v27);
              v81 = v95;
            }

            else
            {
              v91(v34, v27);
            }
          }

          v48 = v89;
          v49 = v90;
          sub_255705FBC();
          v89 = v48;
          if (v48)
          {

            v22 = v85;

            return v22;
          }

          v14 = v30;
        }

        if (v8 == v86)
        {
          goto LABEL_28;
        }
      }

      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      v68 = v25;
      v26 = sub_255750A30();
      v25 = v68;
    }

    v81 = MEMORY[0x277D84F98];
LABEL_28:

    v50 = sub_255707CD0();
    v51 = v75;
    MergeableProvider.unwrappedMergeableAttributes.getter(v50, v75);
    if ((*(v72 + 48))(v51, 1, v73) == 1)
    {

      sub_255674B20(v51, &qword_27F7BE7E8, &unk_255757F00);
      return v85;
    }

    else
    {
      v52 = v69;
      sub_2556DFBE0(v51, v69);
      v53 = v70;
      MergeableEntryAttributes.deepCopy(idMap:)(v81, v70);

      v54 = v71;
      sub_255678764(v53, v71);
      v55 = type metadata accessor for WrappedMergeableEntryAttributes(0);
      v56 = objc_allocWithZone(v55);
      sub_255678764(v54, v56 + OBJC_IVAR___WrappedMergeableEntryAttributes_value);
      v97.receiver = v56;
      v97.super_class = v55;
      v57 = objc_msgSendSuper2(&v97, sel_init);
      sub_2556740EC(v54);
      [v85 setMergeableAttributes_];

      JournalEntryMO.cacheJournalRelationships()();
      if (v58)
      {
        if (qword_27F7BD7C0 != -1)
        {
          swift_once();
        }

        v59 = sub_25574F2C0();
        __swift_project_value_buffer(v59, qword_27F7BF820);
        v60 = v58;
        v61 = sub_25574F2A0();
        v62 = sub_255750780();

        if (os_log_type_enabled(v61, v62))
        {
          v63 = swift_slowAlloc();
          v64 = swift_slowAlloc();
          *v63 = 138412290;
          v65 = v58;
          v66 = _swift_stdlib_bridgeErrorToNSError();
          *(v63 + 4) = v66;
          *v64 = v66;
          _os_log_impl(&dword_255661000, v61, v62, "JournalEntryMO.deepCopy() - error in cacheJournalRelationships(): %@", v63, 0xCu);
          sub_255674B20(v64, &qword_27F7BEC80, &qword_255757E90);
          MEMORY[0x259C3F520](v64, -1, -1);
          MEMORY[0x259C3F520](v63, -1, -1);
        }
      }

      sub_2556740EC(v53);
      sub_2556740EC(v52);
      return v85;
    }
  }

  return v22;
}

void sub_255705D68()
{
  swift_getObjectType();
  v1 = [v0 managedObjectContext];
  if (v1)
  {
    v18 = v1;
    v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
    v19 = v0;
    v3 = [v0 entity];
    v4 = [v3 attributesByName];

    sub_255669A88(0, &qword_27F7BF840, 0x277CBE358);
    v5 = sub_255750080();

    sub_255707760(v5);
    v7 = v6;

    v8 = 0;
    v9 = 1 << *(v7 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v7 + 64);
    v12 = (v9 + 63) >> 6;
    while (v11)
    {
      v13 = v2;
LABEL_10:
      v11 &= v11 - 1;

      v15 = sub_255750180();
      v16 = [v19 valueForKey_];

      v17 = sub_255750180();

      v2 = v13;
      [v13 setValue:v16 forKey:v17];
      swift_unknownObjectRelease();
    }

    while (1)
    {
      v14 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v14 >= v12)
      {

        return;
      }

      v11 = *(v7 + 64 + 8 * v14);
      ++v8;
      if (v11)
      {
        v13 = v2;
        v8 = v14;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

void sub_255705FBC()
{
  v2 = sub_25574EDF0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v0 fileAttachments];
  if (!v6)
  {
    sub_255669A88(0, &qword_27F7BE7F0, 0x277CBEB98);
    v6 = MEMORY[0x259C3E5C0](MEMORY[0x277D84F90]);
  }

  sub_255750900();

  sub_25574EDE0();
  if (!v11)
  {
LABEL_9:
    (*(v3 + 8))(v5, v2);
    return;
  }

  while (1)
  {
    sub_255663374(&v10, &v9);
    type metadata accessor for JournalEntryAssetFileAttachmentMO();
    if (swift_dynamicCast())
    {
      break;
    }

LABEL_5:
    sub_25574EDE0();
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v7 = v8[1];
  sub_25570617C();
  if (!v1)
  {

    goto LABEL_5;
  }

  (*(v3 + 8))(v5, v2);
}

void sub_25570617C()
{
  v141 = *MEMORY[0x277D85DE8];
  v135 = sub_25574EE20();
  v137 = *(v135 - 8);
  MEMORY[0x28223BE20](v135);
  v134 = v114 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_25574EF10();
  v138 = *(v2 - 8);
  v3 = MEMORY[0x28223BE20](v2);
  v131 = v114 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v129 = v114 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  v130 = v114 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v132 = v114 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v127 = v114 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v128 = v114 - v14;
  MEMORY[0x28223BE20](v13);
  v136 = v114 - v15;
  v16 = sub_25574F0D0();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = v114 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED20, &unk_2557551D0);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v23 = v114 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v21);
  v26 = v114 - v25;
  v27 = MEMORY[0x28223BE20](v24);
  v29 = v114 - v28;
  MEMORY[0x28223BE20](v27);
  v31 = v114 - v30;
  v133 = v0;
  v32 = [v0 asset];
  if (v32)
  {
    v33 = v32;
    v34 = [v32 entry];
    if (!v34)
    {

      return;
    }

    v125 = v2;
    v126 = v34;
    v35 = [v33 id];
    v124 = v19;
    if (v35)
    {
      v36 = v35;
      sub_25574F080();

      v37 = *(v17 + 56);
      v37(v29, 0, 1, v16);
    }

    else
    {
      v37 = *(v17 + 56);
      v37(v29, 1, 1, v16);
    }

    sub_2556B0D64(v29, v31);
    v38 = v17;
    v39 = *(v17 + 48);
    if (v39(v31, 1, v16))
    {

      v40 = v31;
LABEL_14:
      sub_255674B20(v40, &unk_27F7BED20, &unk_2557551D0);
      return;
    }

    v121 = v39;
    v122 = v37;
    v123 = v33;
    v41 = v124;
    v120 = *(v38 + 16);
    (v120)(v124, v31, v16);
    sub_255674B20(v31, &unk_27F7BED20, &unk_2557551D0);
    v118 = sub_25574F040();
    v43 = v42;
    v119 = *(v38 + 8);
    v119(v41, v16);
    v44 = [v126 id];
    if (v44)
    {
      v45 = v44;
      sub_25574F080();

      v46 = 0;
    }

    else
    {
      v46 = 1;
    }

    v47 = v125;
    v122(v23, v46, 1, v16);
    sub_2556B0D64(v23, v26);
    v48 = v121(v26, 1, v16);
    v49 = v123;
    if (v48)
    {

      v40 = v26;
      goto LABEL_14;
    }

    v122 = v43;
    v50 = v124;
    (v120)(v124, v26, v16);
    sub_255674B20(v26, &unk_27F7BED20, &unk_2557551D0);
    v51 = sub_25574F040();
    v53 = v52;
    v119(v50, v16);
    v54 = [v133 filePath];
    if (!v54)
    {

      return;
    }

    v114[2] = v51;
    v119 = v53;
    v55 = v54;
    v114[1] = sub_2557501B0();
    v57 = v56;
    v58 = [v55 lastPathComponent];

    if (!v58)
    {
      sub_2557501B0();
      v58 = sub_255750180();
    }

    v59 = v127;
    if (qword_27F7BD7F8 != -1)
    {
      swift_once();
    }

    v60 = type metadata accessor for FileStoreConfiguration(0);
    v61 = __swift_project_value_buffer(v60, qword_27F7BFDF0);
    v62 = *(v60 + 24);
    v124 = v61;
    v120 = v62;
    LODWORD(v62) = v62[v61];
    v114[0] = v60;
    v121 = v58;
    if (v62)
    {
      v117 = v57;
      v63 = v137;
      v64 = *(v137 + 104);
      v65 = (v137 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
      v66 = v134;
      v67 = v135;
      (v64)(v134, *MEMORY[0x277CC91D8], v135);
      sub_255663E98();
      sub_25574EEF0();
      (*(v63 + 8))(v66, v67);
      v68 = v64;
    }

    else
    {
      sub_25574EE50();
      v63 = v137;
      v68 = *(v137 + 104);
      v65 = (v137 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
      v66 = v134;
      v67 = v135;
    }

    v69 = v59;
    v139 = 0x656D686361747441;
    v140 = 0xEB0000000073746ELL;
    v115 = *MEMORY[0x277CC91C0];
    v127 = v68;
    v117 = v65;
    (v68)(v66);
    sub_255663E98();
    v70 = v128;
    sub_25574EF00();
    v71 = *(v63 + 8);
    v137 = v63 + 8;
    v71(v66, v67);
    v72 = v71;
    v73 = v138 + 8;
    v74 = *(v138 + 8);
    v74(v69, v47);
    sub_25574EEA0();

    v138 = v73;
    v74(v70, v47);
    v75 = objc_allocWithZone(MEMORY[0x277CCACA8]);
    v76 = sub_255750180();

    v77 = [v75 initWithString_];

    v78 = sub_255750180();

    v79 = [v77 stringByAppendingPathComponent_];

    if (!v79)
    {
      sub_2557501B0();
      v79 = sub_255750180();
    }

    v122 = v72;
    v80 = [objc_allocWithZone(MEMORY[0x277CCACA8]) initWithString_];

    v81 = v121;
    v82 = [v80 stringByAppendingPathComponent_];

    v83 = v82;
    if (!v82)
    {
      sub_2557501B0();
      v83 = sub_255750180();
    }

    v128 = v83;
    v119 = sub_2557501B0();
    v121 = v84;
    v85 = v120[v124];
    v87 = v134;
    v86 = v135;
    v88 = v129;
    v116 = v74;
    if (v85)
    {
      v89 = v127;
      (v127)(v134, *MEMORY[0x277CC91D8], v135);
      sub_25574EEF0();
      v90 = v122;
      (v122)(v87, v86);
      v91 = v88;
    }

    else
    {
      sub_25574EE50();
      v91 = v88;
      v89 = v127;
      v90 = v122;
    }

    v139 = 0x656D686361747441;
    v140 = 0xEB0000000073746ELL;
    v89(v87, v115, v86);
    v92 = v130;
    sub_25574EF00();
    v90(v87, v86);
    v93 = v125;
    v94 = v116;
    v116(v91, v125);
    v95 = v132;
    sub_25574EEA0();

    v96 = v92;
    v97 = v95;
    v94(v96, v93);
    v98 = objc_opt_self();
    v99 = [v98 defaultManager];
    v100 = v131;
    sub_25574EEB0();
    v101 = sub_25574EE80();
    v94(v100, v93);
    v139 = 0;
    LODWORD(v93) = [v99 createDirectoryAtURL:v101 withIntermediateDirectories:1 attributes:0 error:&v139];

    v102 = v139;
    if (v93)
    {
      v103 = v139;
      v104 = [v98 defaultManager];
      v105 = v136;
      v106 = sub_25574EE80();
      v107 = sub_25574EE80();
      v139 = 0;
      v108 = [v104 copyItemAtURL:v106 toURL:v107 error:&v139];

      v102 = v139;
      v109 = v128;
      if (v108)
      {
        v110 = v139;
        [v133 setFilePath_];

        v111 = v125;
        v94(v97, v125);
        v94(v105, v111);
        return;
      }
    }

    else
    {
      v105 = v136;
      v109 = v128;
    }

    v112 = v102;

    sub_25574ED90();
    swift_willThrow();

    v113 = v125;
    v94(v97, v125);
    v94(v105, v113);
  }
}

uint64_t sub_255706FB0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_255674870(a2);
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
      sub_255743CA8(v13, a3 & 1);
      v8 = sub_255674870(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        type metadata accessor for Dataclass(0);
        sub_255750F10();
        __break(1u);
        return MEMORY[0x2821F96F8]();
      }
    }

    else
    {
      v16 = v8;
      sub_255742A5C();
      v8 = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    *(v18[7] + 8 * v8) = a1;

    return MEMORY[0x2821F96F8]();
  }

  v18[(v8 >> 6) + 8] |= 1 << v8;
  *(v18[6] + 8 * v8) = a2;
  *(v18[7] + 8 * v8) = a1;
  v19 = v18[2];
  v12 = __OFADD__(v19, 1);
  v20 = v19 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18[2] = v20;

  return MEMORY[0x2821F9840]();
}

uint64_t sub_255707118(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_25574F0D0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_25567AF04(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_255742E24();
      goto LABEL_7;
    }

    sub_2557442B8(v17, a3 & 1);
    v28 = sub_25567AF04(a2);
    if ((v18 & 1) == (v29 & 1))
    {
      v14 = v28;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_25570750C(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_255750F10();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE180, &unk_255755E10);
  v23 = *(v22 - 8);
  v24 = *(v23 + 40);
  v25 = v22;
  v26 = v21 + *(v23 + 72) * v14;

  return v24(v26, a1, v25);
}

uint64_t sub_255707328(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_25574F0D0();
  v26 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v13 = sub_25567AF04(a2);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      sub_2557433F0();
      goto LABEL_9;
    }

    sub_255744B28(v16, a3 & 1);
    v19 = sub_25567AF04(a2);
    if ((v17 & 1) == (v20 & 1))
    {
      v13 = v19;
      goto LABEL_9;
    }

LABEL_15:
    result = sub_255750F10();
    __break(1u);
    return result;
  }

LABEL_9:
  v21 = *v4;
  if (v17)
  {
    v22 = *(v26 + 40);
    v23 = v21[7] + *(v26 + 72) * v13;

    return v22(v23, a1, v8);
  }

  else
  {
    (*(v26 + 16))(v10, a2, v8);
    return sub_25570760C(v13, v10, a1, v21);
  }
}

uint64_t sub_25570750C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_25574F0D0();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE180, &unk_255755E10);
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a3, v11);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

uint64_t sub_25570760C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_25574F0D0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 32);
  v12 = *(v10 + 72) * a1;
  v11(v8 + v12, a2, v9);
  result = (v11)(a4[7] + v12, a3, v9);
  v14 = a4[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v16;
  }

  return result;
}

void *sub_2557076E8(void *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    sub_2557078C0(result, a2, a3);
    v7 = v6;

    return v7;
  }

  return result;
}

void sub_255707760(uint64_t a1)
{
  v2 = a1;
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v7 = swift_slowAlloc();
      sub_2557076E8(v7, v4, v2);
      MEMORY[0x259C3F520](v7, -1, -1);
      return;
    }
  }

  MEMORY[0x28223BE20](a1);
  v6 = v8 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v6, v5);
  sub_2557078C0(v6, v4, v2);
  if (v1)
  {
    swift_willThrow();
  }
}

void sub_2557078C0(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v22 = a2;
  v23 = a1;
  v24 = 0;
  v25 = a3;
  v3 = 0;
  v4 = a3 + 64;
  v5 = 1 << *(a3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a3 + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_11:
    v12 = v9 | (v3 << 6);
    v26 = &v21;
    v13 = (*(v25 + 48) + 16 * v12);
    v14 = v13[1];
    v15 = *(*(v25 + 56) + 8 * v12);
    v27[0] = *v13;
    v27[1] = v14;
    MEMORY[0x28223BE20](a1);
    v20[2] = v27;

    v16 = v15;
    v17 = v28;
    v18 = sub_2556A5CA8(sub_255707D28, v20, &unk_28678A178);
    v28 = v17;
    swift_arrayDestroy();

    if ((v18 & 1) == 0)
    {
      *(v23 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      if (__OFADD__(v24++, 1))
      {
        __break(1u);
LABEL_15:
        sub_255707A90(v23, v22, v24, v25);
        return;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      goto LABEL_15;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_255707A90(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF848, &qword_25575C148);
  result = sub_255750C90();
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
  v12 = result + 64;
  v32 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = *(v17 + 8 * v16);
    sub_255750F80();

    v33 = v21;
    sub_2557501F0();
    result = sub_255750FD0();
    v22 = -1 << *(v9 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v12 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = (*(v9 + 48) + 16 * v25);
    *v30 = v19;
    v30[1] = v20;
    *(*(v9 + 56) + 8 * v25) = v33;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v32;
    if (!v5)
    {
      return v9;
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
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

unint64_t sub_255707CD0()
{
  result = qword_27F7BF838;
  if (!qword_27F7BF838)
  {
    type metadata accessor for JournalEntryMO();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF838);
  }

  return result;
}

uint64_t sub_255707D28(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_255750EB0() & 1;
  }
}

uint64_t sub_255707D94(uint64_t a1)
{
  v2 = sub_255708BFC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255707DD0(uint64_t a1)
{
  v2 = sub_255708BFC();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_255707E0C()
{
  v1 = *v0;
  v2 = 1735290739;
  v3 = 0xD000000000000014;
  if (v1 != 6)
  {
    v3 = 0xD000000000000015;
  }

  v4 = 0x6F6F626F69647561;
  if (v1 != 4)
  {
    v4 = 0x7261506472696874;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x74736163646F70;
  if (v1 != 2)
  {
    v5 = 0x4174736163646F70;
  }

  if (*v0)
  {
    v2 = 0x75626C41676E6F73;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_255707F20@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_25570A0D8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_255707F48(uint64_t a1)
{
  v2 = sub_255708AAC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255707F84(uint64_t a1)
{
  v2 = sub_255708AAC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255707FC0(uint64_t a1)
{
  v2 = sub_255708C50();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255707FFC(uint64_t a1)
{
  v2 = sub_255708C50();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255708038(uint64_t a1)
{
  v2 = sub_255708CA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255708074(uint64_t a1)
{
  v2 = sub_255708CA4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2557080B0(uint64_t a1)
{
  v2 = sub_255708CF8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2557080EC(uint64_t a1)
{
  v2 = sub_255708CF8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255708128(uint64_t a1)
{
  v2 = sub_255708D4C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255708164(uint64_t a1)
{
  v2 = sub_255708D4C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2557081A0(uint64_t a1)
{
  v2 = sub_255708B54();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2557081DC(uint64_t a1)
{
  v2 = sub_255708B54();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255708218(uint64_t a1)
{
  v2 = sub_255708B00();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255708254(uint64_t a1)
{
  v2 = sub_255708B00();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255708290(uint64_t a1)
{
  v2 = sub_255708BA8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2557082CC(uint64_t a1)
{
  v2 = sub_255708BA8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MediaViewType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF850, &qword_25575C150);
  v52 = *(v3 - 8);
  v53 = v3;
  MEMORY[0x28223BE20](v3);
  v51 = &v33 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF858, &qword_25575C158);
  v49 = *(v5 - 8);
  v50 = v5;
  MEMORY[0x28223BE20](v5);
  v48 = &v33 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF860, &qword_25575C160);
  v46 = *(v7 - 8);
  v47 = v7;
  MEMORY[0x28223BE20](v7);
  v45 = &v33 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF868, &qword_25575C168);
  v43 = *(v9 - 8);
  v44 = v9;
  MEMORY[0x28223BE20](v9);
  v42 = &v33 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF870, &qword_25575C170);
  v40 = *(v11 - 8);
  v41 = v11;
  MEMORY[0x28223BE20](v11);
  v39 = &v33 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF878, &qword_25575C178);
  v37 = *(v13 - 8);
  v38 = v13;
  MEMORY[0x28223BE20](v13);
  v36 = &v33 - v14;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF880, &qword_25575C180);
  v34 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v16 = &v33 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF888, &qword_25575C188);
  v33 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v33 - v18;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF890, &qword_25575C190);
  v20 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v21 = *v1;
  v22 = a1[3];
  v23 = a1;
  v25 = &v33 - v24;
  __swift_project_boxed_opaque_existential_1(v23, v22);
  sub_255708AAC();
  sub_255750FF0();
  v26 = (v20 + 8);
  if (v21 > 3)
  {
    if (v21 > 5)
    {
      if (v21 == 6)
      {
        v61 = 6;
        sub_255708B54();
        v28 = v48;
        v27 = v54;
        sub_255750DA0();
        v30 = v49;
        v29 = v50;
      }

      else
      {
        v62 = 7;
        sub_255708B00();
        v28 = v51;
        v27 = v54;
        sub_255750DA0();
        v30 = v52;
        v29 = v53;
      }
    }

    else if (v21 == 4)
    {
      v59 = 4;
      sub_255708BFC();
      v28 = v42;
      v27 = v54;
      sub_255750DA0();
      v30 = v43;
      v29 = v44;
    }

    else
    {
      v60 = 5;
      sub_255708BA8();
      v28 = v45;
      v27 = v54;
      sub_255750DA0();
      v30 = v46;
      v29 = v47;
    }

    goto LABEL_16;
  }

  if (v21 > 1)
  {
    if (v21 == 2)
    {
      v57 = 2;
      sub_255708CA4();
      v28 = v36;
      v27 = v54;
      sub_255750DA0();
      v30 = v37;
      v29 = v38;
    }

    else
    {
      v58 = 3;
      sub_255708C50();
      v28 = v39;
      v27 = v54;
      sub_255750DA0();
      v30 = v40;
      v29 = v41;
    }

LABEL_16:
    (*(v30 + 8))(v28, v29);
    return (*v26)(v25, v27);
  }

  if (v21)
  {
    v56 = 1;
    sub_255708CF8();
    v31 = v54;
    sub_255750DA0();
    (*(v34 + 8))(v16, v35);
    return (*v26)(v25, v31);
  }

  v55 = 0;
  sub_255708D4C();
  v27 = v54;
  sub_255750DA0();
  (*(v33 + 8))(v19, v17);
  return (*v26)(v25, v27);
}

unint64_t sub_255708AAC()
{
  result = qword_27F7BF898;
  if (!qword_27F7BF898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF898);
  }

  return result;
}

unint64_t sub_255708B00()
{
  result = qword_27F7BF8A0;
  if (!qword_27F7BF8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF8A0);
  }

  return result;
}

unint64_t sub_255708B54()
{
  result = qword_27F7BF8A8;
  if (!qword_27F7BF8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF8A8);
  }

  return result;
}

unint64_t sub_255708BA8()
{
  result = qword_27F7BF8B0;
  if (!qword_27F7BF8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF8B0);
  }

  return result;
}

unint64_t sub_255708BFC()
{
  result = qword_27F7BF8B8;
  if (!qword_27F7BF8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF8B8);
  }

  return result;
}

unint64_t sub_255708C50()
{
  result = qword_27F7BF8C0;
  if (!qword_27F7BF8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF8C0);
  }

  return result;
}

unint64_t sub_255708CA4()
{
  result = qword_27F7BF8C8;
  if (!qword_27F7BF8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF8C8);
  }

  return result;
}

unint64_t sub_255708CF8()
{
  result = qword_27F7BF8D0;
  if (!qword_27F7BF8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF8D0);
  }

  return result;
}

unint64_t sub_255708D4C()
{
  result = qword_27F7BF8D8;
  if (!qword_27F7BF8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF8D8);
  }

  return result;
}

uint64_t MediaViewType.hashValue.getter()
{
  v1 = *v0;
  sub_255750F80();
  MEMORY[0x259C3EC60](v1);
  return sub_255750FD0();
}

uint64_t MediaViewType.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v83 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF8E0, &qword_25575C198);
  v75 = *(v3 - 8);
  v76 = v3;
  MEMORY[0x28223BE20](v3);
  v78 = &v57 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF8E8, &qword_25575C1A0);
  v73 = *(v5 - 8);
  v74 = v5;
  MEMORY[0x28223BE20](v5);
  v82 = &v57 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF8F0, &qword_25575C1A8);
  v71 = *(v7 - 8);
  v72 = v7;
  MEMORY[0x28223BE20](v7);
  v81 = &v57 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF8F8, &qword_25575C1B0);
  v10 = *(v9 - 8);
  v69 = v9;
  v70 = v10;
  MEMORY[0x28223BE20](v9);
  v80 = &v57 - v11;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF900, &qword_25575C1B8);
  v67 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v79 = &v57 - v12;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF908, &qword_25575C1C0);
  v65 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v77 = &v57 - v13;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF910, &qword_25575C1C8);
  v63 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v15 = &v57 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF918, &qword_25575C1D0);
  v62 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v57 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF920, &unk_25575C1D8);
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v57 - v21;
  v23 = a1[3];
  v85 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v23);
  sub_255708AAC();
  v24 = v84;
  sub_255750FE0();
  if (!v24)
  {
    v58 = v18;
    v57 = v16;
    v59 = v15;
    v26 = v79;
    v25 = v80;
    v28 = v81;
    v27 = v82;
    v84 = v20;
    v29 = v83;
    v61 = v19;
    v60 = v22;
    v30 = sub_255750D90();
    v31 = (2 * *(v30 + 16)) | 1;
    v86 = v30;
    v87 = v30 + 32;
    v88 = 0;
    v89 = v31;
    v32 = sub_255690550();
    if (v32 != 8 && v88 == v89 >> 1)
    {
      v90 = v32;
      if (v32 > 3u)
      {
        v43 = v61;
        v44 = v60;
        if (v32 > 5u)
        {
          v52 = v84;
          if (v32 == 6)
          {
            v91 = 6;
            sub_255708B54();
            sub_255750CE0();
            (*(v73 + 8))(v27, v74);
          }

          else
          {
            v91 = 7;
            sub_255708B00();
            v56 = v78;
            sub_255750CE0();
            (*(v75 + 8))(v56, v76);
          }

          (*(v52 + 8))(v44, v43);
          swift_unknownObjectRelease();
          v33 = v29;
          goto LABEL_25;
        }

        v33 = v29;
        v45 = v84;
        if (v32 == 4)
        {
          v91 = 4;
          sub_255708BFC();
          sub_255750CE0();
          v46 = v69;
          v47 = v70;
        }

        else
        {
          v91 = 5;
          sub_255708BA8();
          v25 = v28;
          sub_255750CE0();
          v47 = v71;
          v46 = v72;
        }

        (*(v47 + 8))(v25, v46);
        (*(v45 + 8))(v44, v43);
      }

      else
      {
        if (v32 > 1u)
        {
          v48 = v84;
          if (v32 == 2)
          {
            v91 = 2;
            sub_255708CA4();
            v49 = v77;
            v50 = v61;
            v51 = v60;
            sub_255750CE0();
            (*(v65 + 8))(v49, v66);
          }

          else
          {
            v91 = 3;
            sub_255708C50();
            v50 = v61;
            v51 = v60;
            sub_255750CE0();
            (*(v67 + 8))(v26, v68);
          }

          (*(v48 + 8))(v51, v50);
          swift_unknownObjectRelease();
          v33 = v29;
          goto LABEL_25;
        }

        v33 = v29;
        if (v32)
        {
          v91 = 1;
          sub_255708CF8();
          v53 = v59;
          v54 = v61;
          v55 = v60;
          sub_255750CE0();
          (*(v63 + 8))(v53, v64);
          (*(v84 + 8))(v55, v54);
        }

        else
        {
          v91 = 0;
          sub_255708D4C();
          v34 = v58;
          v35 = v61;
          v36 = v60;
          sub_255750CE0();
          (*(v62 + 8))(v34, v57);
          (*(v84 + 8))(v36, v35);
        }
      }

      swift_unknownObjectRelease();
LABEL_25:
      *v33 = v90;
      return __swift_destroy_boxed_opaque_existential_1(v85);
    }

    v37 = sub_255750B90();
    swift_allocError();
    v39 = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDEA8, &qword_25575AAB0);
    *v39 = &type metadata for MediaViewType;
    v40 = v61;
    v41 = v60;
    sub_255750CF0();
    sub_255750B80();
    (*(*(v37 - 8) + 104))(v39, *MEMORY[0x277D84160], v37);
    swift_willThrow();
    (*(v84 + 8))(v41, v40);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v85);
}

unint64_t sub_25570992C()
{
  result = qword_27F7BF928;
  if (!qword_27F7BF928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF928);
  }

  return result;
}

unint64_t sub_255709A54()
{
  result = qword_27F7BF930;
  if (!qword_27F7BF930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF930);
  }

  return result;
}

unint64_t sub_255709AAC()
{
  result = qword_27F7BF938;
  if (!qword_27F7BF938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF938);
  }

  return result;
}

unint64_t sub_255709B04()
{
  result = qword_27F7BF940;
  if (!qword_27F7BF940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF940);
  }

  return result;
}

unint64_t sub_255709B5C()
{
  result = qword_27F7BF948;
  if (!qword_27F7BF948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF948);
  }

  return result;
}

unint64_t sub_255709BB4()
{
  result = qword_27F7BF950;
  if (!qword_27F7BF950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF950);
  }

  return result;
}

unint64_t sub_255709C0C()
{
  result = qword_27F7BF958;
  if (!qword_27F7BF958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF958);
  }

  return result;
}

unint64_t sub_255709C64()
{
  result = qword_27F7BF960;
  if (!qword_27F7BF960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF960);
  }

  return result;
}

unint64_t sub_255709CBC()
{
  result = qword_27F7BF968;
  if (!qword_27F7BF968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF968);
  }

  return result;
}

unint64_t sub_255709D14()
{
  result = qword_27F7BF970;
  if (!qword_27F7BF970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF970);
  }

  return result;
}

unint64_t sub_255709D6C()
{
  result = qword_27F7BF978;
  if (!qword_27F7BF978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF978);
  }

  return result;
}

unint64_t sub_255709DC4()
{
  result = qword_27F7BF980;
  if (!qword_27F7BF980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF980);
  }

  return result;
}

unint64_t sub_255709E1C()
{
  result = qword_27F7BF988;
  if (!qword_27F7BF988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF988);
  }

  return result;
}

unint64_t sub_255709E74()
{
  result = qword_27F7BF990;
  if (!qword_27F7BF990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF990);
  }

  return result;
}

unint64_t sub_255709ECC()
{
  result = qword_27F7BF998;
  if (!qword_27F7BF998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF998);
  }

  return result;
}

unint64_t sub_255709F24()
{
  result = qword_27F7BF9A0;
  if (!qword_27F7BF9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF9A0);
  }

  return result;
}

unint64_t sub_255709F7C()
{
  result = qword_27F7BF9A8;
  if (!qword_27F7BF9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF9A8);
  }

  return result;
}

unint64_t sub_255709FD4()
{
  result = qword_27F7BF9B0;
  if (!qword_27F7BF9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF9B0);
  }

  return result;
}

unint64_t sub_25570A02C()
{
  result = qword_27F7BF9B8;
  if (!qword_27F7BF9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF9B8);
  }

  return result;
}

unint64_t sub_25570A084()
{
  result = qword_27F7BF9C0;
  if (!qword_27F7BF9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF9C0);
  }

  return result;
}

uint64_t sub_25570A0D8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1735290739 && a2 == 0xE400000000000000;
  if (v3 || (sub_255750EB0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x75626C41676E6F73 && a2 == 0xE90000000000006DLL || (sub_255750EB0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74736163646F70 && a2 == 0xE700000000000000 || (sub_255750EB0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4174736163646F70 && a2 == 0xED00007473697472 || (sub_255750EB0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6F6F626F69647561 && a2 == 0xE90000000000006BLL || (sub_255750EB0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7261506472696874 && a2 == 0xEF616964654D7974 || (sub_255750EB0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000255753520 == a2 || (sub_255750EB0() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000255753540 == a2)
  {

    return 7;
  }

  else
  {
    v6 = sub_255750EB0();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

Swift::Void __swiftcall JournalEntryMO.prepareForDeletion()()
{
  v1 = v0;
  v125 = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED20, &unk_2557551D0);
  MEMORY[0x28223BE20](v2 - 8);
  v116 = v103 - v3;
  v120 = type metadata accessor for StreakEvent(0);
  v4 = MEMORY[0x28223BE20](v120);
  v114 = v103 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = v103 - v6;
  v8 = sub_25574F020();
  v124 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v113 = v103 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v122 = v103 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v119 = v103 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = v103 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = v103 - v18;
  v20 = sub_25574F0D0();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x28223BE20](v20);
  v115 = v103 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = v103 - v25;
  v27 = MEMORY[0x28223BE20](v24);
  v117 = v103 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v118 = v103 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v33 = v103 - v32;
  MEMORY[0x28223BE20](v31);
  v123 = v103 - v34;
  v35 = type metadata accessor for JournalEntryMO();
  v126.receiver = v0;
  v126.super_class = v35;
  objc_msgSendSuper2(&v126, sel_prepareForDeletion);
  v36 = [v0 managedObjectContext];
  if (!v36)
  {
    goto LABEL_10;
  }

  v121 = v36;
  v37 = [v0 id];
  if (!v37)
  {
LABEL_7:

    goto LABEL_10;
  }

  v111 = v19;
  v109 = v7;
  v38 = v37;
  sub_25574F080();

  v39 = v123;
  (*(v21 + 32))(v123, v33, v20);
  v40 = [v0 createdDate];
  if (!v40)
  {
    (*(v21 + 8))(v39, v20);
    goto LABEL_7;
  }

  v110 = v26;
  v41 = v40;
  sub_25574EFF0();

  v42 = v21;
  (*(v124 + 32))(v111, v17, v8);
  type metadata accessor for JournalEntryAssetMO();
  v43 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v44 = [v43 initWithContext_];
  v45 = sub_25574F040();
  v47 = v46;
  v48 = v117;
  sub_25574F090();
  v49 = v118;
  sub_2556A0210(v45, v47, v48, v118);
  v50 = sub_25574F050();
  v51 = *(v42 + 8);
  v105 = v42 + 8;
  v104 = v51;
  v51(v49, v20);
  [v44 setId_];

  v52 = v119;
  sub_25574F000();
  v53 = sub_25574EFC0();
  v54 = v124;
  v55 = *(v124 + 8);
  v103[1] = v124 + 8;
  v103[0] = v55;
  v55(v52, v8);
  [v44 setCreatedDate_];

  v56 = sub_255750180();
  [v44 setAssetType_];

  v57 = sub_255750180();
  v106 = v44;
  [v44 setSource_];

  sub_25574EB30();
  swift_allocObject();
  sub_25574EB20();
  v58 = v116;
  (*(v42 + 16))(v116, v123, v20);
  v107 = v42;
  v59 = *(v42 + 56);
  v59(v58, 0, 1, v20);
  v60 = *(v54 + 16);
  v61 = v109;
  v62 = &v109[*(v120 + 20)];
  v112 = v8;
  v60(v62, v111, v8);
  v108 = v20;
  v59(v61, 1, 1, v20);
  sub_2556B17E8(v58, v61);
  sub_25570AFF4();
  v63 = v125;
  v64 = sub_25574EB10();
  v125 = v63;
  if (v63)
  {

    sub_2556B2360(v61);
    v66 = 0;
    v125 = 0;
  }

  else
  {
    v67 = v64;
    v68 = v65;
    sub_2556B2360(v61);

    v66 = sub_25574EF80();
    sub_2556755A8(v67, v68);
  }

  v26 = v110;
  v69 = v106;
  [v106 setAssetMetaData_];

  v8 = v112;
  (v103[0])(v111, v112);
  v20 = v108;
  v104(v123, v108);
  v21 = v107;
LABEL_10:
  v70 = [v1 managedObjectContext];
  if (v70)
  {
    v71 = v70;
    v72 = [v1 id];
    if (v72)
    {
      v73 = v115;
      v74 = v72;
      sub_25574F080();

      (*(v21 + 32))(v26, v73, v20);
      v75 = [v1 updatedDate];
      if (v75)
      {
        v76 = v113;
        v77 = v75;
        sub_25574EFF0();

        (*(v124 + 32))(v122, v76, v8);
        type metadata accessor for JournalEntryAssetMO();
        v78 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
        v79 = sub_25574F040();
        v80 = v8;
        v112 = v8;
        v82 = v81;
        v83 = v117;
        sub_25574F090();
        v84 = v118;
        sub_2556A0210(v79, v82, v83, v118);
        v85 = sub_25574F050();
        v86 = *(v21 + 8);
        v123 = (v21 + 8);
        v121 = v86;
        (v86)(v84, v20);
        [v78 setId_];

        v87 = v119;
        sub_25574F000();
        v88 = sub_25574EFC0();
        v89 = v124;
        v118 = *(v124 + 8);
        v119 = (v124 + 8);
        (v118)(v87, v80);
        [v78 setCreatedDate_];

        v90 = sub_255750180();
        [v78 setAssetType_];

        v91 = sub_255750180();
        [v78 setSource_];

        sub_25574EB30();
        swift_allocObject();
        sub_25574EB20();
        v92 = *(v21 + 16);
        v93 = v116;
        v110 = v26;
        v92(v116, v26, v20);
        v94 = *(v21 + 56);
        v94(v93, 0, 1, v20);
        v95 = v114;
        (*(v89 + 16))(&v114[*(v120 + 20)], v122, v112);
        v94(v95, 1, 1, v20);
        sub_2556B17E8(v93, v95);
        sub_25570AFF4();
        v96 = v125;
        v97 = sub_25574EB10();
        if (v96)
        {

          sub_2556B2360(v95);
          v99 = 0;
        }

        else
        {
          v100 = v97;
          v101 = v95;
          v102 = v98;
          sub_2556B2360(v101);

          v99 = sub_25574EF80();
          sub_2556755A8(v100, v102);
        }

        [v78 setAssetMetaData_];

        (v118)(v122, v112);
        (v121)(v110, v20);
      }

      else
      {
        (*(v21 + 8))(v26, v20);
      }
    }

    else
    {
    }
  }
}

unint64_t sub_25570AFF4()
{
  result = qword_27F7BF9C8;
  if (!qword_27F7BF9C8)
  {
    type metadata accessor for StreakEvent(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BF9C8);
  }

  return result;
}

uint64_t MergeableFollowUpPromptAttachment.prompt.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t MergeableFollowUpPromptAttachment.prompt.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t MergeableFollowUpPromptAttachment.init(prompt:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  type metadata accessor for MergeableFollowUpPromptAttachment(0);
  result = sub_25574FB20();
  *a3 = a1;
  a3[1] = a2;
  return result;
}

uint64_t static MergeableFollowUpPromptAttachment.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_255750EB0() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for MergeableFollowUpPromptAttachment(0);

  return sub_25574FAF0();
}

uint64_t MergeableFollowUpPromptAttachment.hash(into:)(uint64_t a1)
{
  sub_2557501F0();
  type metadata accessor for MergeableFollowUpPromptAttachment(0);
  sub_25574FB30();
  sub_25570C7BC(&qword_27F7BE3B0, MEMORY[0x277CFB650], MEMORY[0x277CFB658]);
  return sub_2557500A0();
}

uint64_t MergeableFollowUpPromptAttachment.hashValue.getter()
{
  sub_255750F80();
  sub_2557501F0();
  type metadata accessor for MergeableFollowUpPromptAttachment(0);
  sub_25574FB30();
  sub_25570C7BC(&qword_27F7BE3B0, MEMORY[0x277CFB650], MEMORY[0x277CFB658]);
  sub_2557500A0();
  return sub_255750FD0();
}

uint64_t sub_25570B31C()
{
  sub_255750F80();
  sub_2557501F0();
  sub_25574FB30();
  sub_25570C7BC(&qword_27F7BE3B0, MEMORY[0x277CFB650], MEMORY[0x277CFB658]);
  sub_2557500A0();
  return sub_255750FD0();
}

uint64_t sub_25570B3C4(uint64_t a1)
{
  sub_2557501F0();
  sub_25574FB30();
  sub_25570C7BC(&qword_27F7BE3B0, MEMORY[0x277CFB650], MEMORY[0x277CFB658]);
  return sub_2557500A0();
}

uint64_t sub_25570B450(uint64_t a1)
{
  sub_255750F80();
  sub_2557501F0();
  sub_25574FB30();
  sub_25570C7BC(&qword_27F7BE3B0, MEMORY[0x277CFB650], MEMORY[0x277CFB658]);
  sub_2557500A0();
  return sub_255750FD0();
}

uint64_t sub_25570B4F4(uint64_t *a1, void *a2, uint64_t a3)
{
  v3 = *a1 == *a2 && a1[1] == a2[1];
  if (!v3 && (sub_255750EB0() & 1) == 0)
  {
    return 0;
  }

  return sub_25574FAF0();
}

uint64_t MergeableFollowUpPromptAttachment.copy(renamingReferences:)@<X0>(char *a2@<X8>)
{
  v4 = sub_25574FB30();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25570B6A0(v2, a2);
  v9 = *v2;
  v8 = v2[1];

  *a2 = v9;
  *(a2 + 1) = v8;
  v10 = type metadata accessor for MergeableFollowUpPromptAttachment(0);
  sub_25574FB00();
  return (*(v5 + 40))(&a2[*(v10 + 20)], v7, v4);
}

uint64_t sub_25570B6A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MergeableFollowUpPromptAttachment(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t MergeableFollowUpPromptAttachment.minEncodingVersion.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CFB5F0];
  v3 = sub_25574F770();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t MergeableFollowUpPromptAttachment.encode(to:)()
{
  result = sub_25574FF70();
  if (!v0)
  {

    sub_25574FF80();

    type metadata accessor for MergeableFollowUpPromptAttachment(0);
    sub_25574FB10();
  }

  return result;
}

uint64_t MergeableFollowUpPromptAttachment.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE3F8, &qword_25575C9F0);
  MEMORY[0x28223BE20](v4 - 8);
  v63 = (v53 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFFF0, &qword_255755250);
  v61 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v53 - v10;
  v65 = sub_25574FB30();
  v12 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v14 = v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a2;
  v64 = *(type metadata accessor for MergeableFollowUpPromptAttachment(0) + 20);
  sub_25574FB20();
  v16 = v66;
  v17 = sub_25574FEE0();
  if (v16)
  {

    return (*(v12 + 8))(v15 + v64, v65);
  }

  else
  {
    v19 = v17;
    v60 = a1;
    v54 = v11;
    v55 = v9;
    v62 = v6;
    if (sub_25574FF00())
    {
      v20 = sub_255750260();
      v56 = v14;
      v57 = v12;
    }

    else
    {
      v56 = v14;
      v57 = v12;
      v20 = sub_255750250();
    }

    *v15 = v20;
    v15[1] = v21;
    v58 = v15;
    v53[1] = v21;
    v66 = v19;
    v22 = sub_25574FEF0();
    v23 = sub_255676334(v22);

    v68 = v23;
    sub_255676690(1);
    v24 = v68 + 56;
    v25 = 1 << *(v68 + 32);
    v26 = -1;
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    v27 = v26 & *(v68 + 56);
    v28 = (v25 + 63) >> 6;
    v29 = (v61 + 56);
    v30 = v68;

    v31 = 0;
    v59 = MEMORY[0x277D84F90];
    while (1)
    {
      v32 = v31;
      if (!v27)
      {
        break;
      }

LABEL_14:
      v33 = __clz(__rbit64(v27));
      v27 &= v27 - 1;
      v34 = *(*(v30 + 48) + ((v31 << 9) | (8 * v33)));
      if (sub_25574FF00())
      {
        v37 = v62;
        v36 = v63;
        *v63 = v34;
        v38 = v36;
        sub_25574F310();
        (*v29)(v38, 0, 1, v37);
        v39 = v54;
        sub_2556AA69C(v38, v54);
        sub_2556AA69C(v39, v55);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v59 = sub_25569874C(0, v59[2] + 1, 1, v59);
        }

        v40 = v61;
        v42 = v59[2];
        v41 = v59[3];
        v43 = v55;
        if (v42 >= v41 >> 1)
        {
          v45 = sub_25569874C((v41 > 1), v42 + 1, 1, v59);
          v40 = v61;
          v59 = v45;
          v43 = v55;
        }

        v44 = v59;
        v59[2] = v42 + 1;
        sub_2556AA69C(v43, v44 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v42);
      }

      else
      {
        v35 = v63;
        (*v29)(v63, 1, 1, v62);
        sub_2556DB128(v35);
      }
    }

    while (1)
    {
      v31 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        __break(1u);

        v12 = v57;
        v15 = v58;
        return (*(v12 + 8))(v15 + v64, v65);
      }

      if (v31 >= v28)
      {
        break;
      }

      v27 = *(v24 + 8 * v31);
      ++v32;
      if (v27)
      {
        goto LABEL_14;
      }
    }

    v46 = v59;
    if (v59[2])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE400, &qword_255756A50);
      v47 = sub_255750C90();
    }

    else
    {
      v47 = MEMORY[0x277D84F98];
    }

    v49 = v57;
    v48 = v58;
    v50 = v64;
    v51 = v65;
    v52 = v56;
    v67 = v47;
    sub_25570C118(v46, 1, &v67);
    sub_25574FB40();

    return (*(v49 + 40))(v48 + v50, v52, v51);
  }
}

uint64_t sub_25570BE20@<X0>(uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = sub_25574FB30();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25570B6A0(v3, a3);
  v11 = *v3;
  v10 = v3[1];

  *a3 = v11;
  *(a3 + 1) = v10;
  sub_25574FB00();
  return (*(v7 + 40))(&a3[*(a2 + 20)], v9, v6);
}

uint64_t sub_25570BF40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_25570C7BC(&qword_27F7BE8F8, type metadata accessor for MergeableFollowUpPromptAttachment, &protocol conformance descriptor for MergeableFollowUpPromptAttachment);
  sub_25570C7BC(&qword_27F7BF9D0, type metadata accessor for MergeableFollowUpPromptAttachment, &protocol conformance descriptor for MergeableFollowUpPromptAttachment);

  return sub_25574FDD0();
}

uint64_t sub_25570C04C()
{
  result = sub_25574FF70();
  if (!v0)
  {

    sub_25574FF80();

    sub_25574FB10();
  }

  return result;
}

void sub_25570C118(uint64_t a1, int a2, void *a3)
{
  v7 = sub_25574F320();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFFF0, &qword_255755250);
  v12 = MEMORY[0x28223BE20](v11);
  v15 = (&v55 - v14);
  v62 = *(a1 + 16);
  if (!v62)
  {
    goto LABEL_23;
  }

  LODWORD(v59) = a2;
  v57 = v3;
  v16 = *(v12 + 48);
  v17 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v61 = *(v13 + 72);
  v63 = a1;
  v56 = v17;
  sub_2556AAA64(a1 + v17, &v55 - v14);
  v58 = v8;
  v18 = *(v8 + 32);
  v69 = *v15;
  v19 = v69;
  v60 = v16;
  v64 = v7;
  v65 = v10;
  v18(v10, v15 + v16, v7);
  v20 = *a3;
  v22 = sub_255742798(v19);
  v23 = v20[2];
  v24 = (v21 & 1) == 0;
  v25 = v23 + v24;
  if (__OFADD__(v23, v24))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v26 = v21;
  if (v20[3] >= v25)
  {
    if (v59)
    {
      if ((v21 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      sub_255742BBC();
      if ((v26 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_10;
  }

  sub_255743F6C(v25, v59 & 1);
  v27 = sub_255742798(v19);
  if ((v26 & 1) == (v28 & 1))
  {
    v22 = v27;
    if ((v26 & 1) == 0)
    {
LABEL_13:
      v33 = *a3;
      *(*a3 + 8 * (v22 >> 6) + 64) |= 1 << v22;
      *(v33[6] + 8 * v22) = v19;
      v34 = v33[7];
      v59 = *(v58 + 72);
      v35 = (v34 + v59 * v22);
      v36 = v64;
      v18(v35, v65, v64);
      v37 = v33[2];
      v38 = __OFADD__(v37, 1);
      v39 = v37 + 1;
      if (!v38)
      {
        v33[2] = v39;
        v40 = v63;
        if (v62 != 1)
        {
          v41 = v63 + v61 + v56;
          v42 = 1;
          while (v42 < *(v40 + 16))
          {
            sub_2556AAA64(v41, v15);
            v69 = *v15;
            v43 = v69;
            v18(v65, v15 + v60, v36);
            v44 = *a3;
            v45 = sub_255742798(v43);
            v47 = v44[2];
            v48 = (v46 & 1) == 0;
            v38 = __OFADD__(v47, v48);
            v49 = v47 + v48;
            if (v38)
            {
              goto LABEL_24;
            }

            v50 = v46;
            if (v44[3] < v49)
            {
              sub_255743F6C(v49, 1);
              v45 = sub_255742798(v43);
              if ((v50 & 1) != (v51 & 1))
              {
                goto LABEL_27;
              }
            }

            if (v50)
            {
              goto LABEL_10;
            }

            v52 = *a3;
            *(*a3 + 8 * (v45 >> 6) + 64) |= 1 << v45;
            *(v52[6] + 8 * v45) = v43;
            v36 = v64;
            v18((v52[7] + v59 * v45), v65, v64);
            v53 = v52[2];
            v38 = __OFADD__(v53, 1);
            v54 = v53 + 1;
            if (v38)
            {
              goto LABEL_25;
            }

            ++v42;
            v52[2] = v54;
            v41 += v61;
            v40 = v63;
            if (v62 == v42)
            {
              goto LABEL_23;
            }
          }

          goto LABEL_26;
        }

LABEL_23:

        return;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

LABEL_10:
    v29 = sub_25574F750();
    sub_25570C7BC(&qword_27F7BE110, MEMORY[0x277CFB5B0], MEMORY[0x277CFB5B8]);
    v30 = swift_allocError();
    *v31 = 0xD00000000000003BLL;
    v31[1] = 0x8000000255753560;
    (*(*(v29 - 8) + 104))(v31, *MEMORY[0x277CFB5A8], v29);
    swift_willThrow();
    v68 = v30;
    v32 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE118, &qword_255755C80);
    if ((swift_dynamicCast() & 1) == 0)
    {
      (*(v58 + 8))(v65, v64);

      return;
    }

    goto LABEL_28;
  }

LABEL_27:
  sub_255750F10();
  __break(1u);
LABEL_28:
  v66 = 0;
  v67 = 0xE000000000000000;
  sub_255750B00();
  MEMORY[0x259C3DED0](0xD00000000000001BLL, 0x8000000255752750);
  sub_255750C20();
  MEMORY[0x259C3DED0](39, 0xE100000000000000);
  sub_255750C40();
  __break(1u);
}

uint64_t sub_25570C7BC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25570C804()
{
  sub_255750F80();
  AssetType.rawValue.getter();
  sub_2557501F0();

  return sub_255750FD0();
}

uint64_t sub_25570C86C(uint64_t a1)
{
  AssetType.rawValue.getter();
  sub_2557501F0();
}

uint64_t sub_25570C8D0(uint64_t a1)
{
  sub_255750F80();
  AssetType.rawValue.getter();
  sub_2557501F0();

  return sub_255750FD0();
}

uint64_t JournalEntryAssetMO.isEntryAssetType.getter()
{
  v1 = [v0 assetType];
  if (v1)
  {
    v2 = v1;
    v3 = sub_2557501B0();
    v5 = v4;

    if (v3 == 0x76456B6165727473 && v5 == 0xEB00000000746E65)
    {

      v8 = 0;
    }

    else
    {
      v7 = sub_255750EB0();

      v8 = v7 ^ 1;
    }
  }

  else
  {
    v8 = 1;
  }

  return v8 & 1;
}

unint64_t sub_25570CB50()
{
  result = qword_27F7BFA10;
  if (!qword_27F7BFA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BFA10);
  }

  return result;
}

unint64_t sub_25570CBA4()
{
  result = qword_27F7BFA18;
  if (!qword_27F7BFA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BFA18);
  }

  return result;
}

uint64_t NSPersistentStoreCoordinator.storesDidChangeNotifications.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFA20, &qword_25575CD40);
  MEMORY[0x28223BE20](v0);
  v1 = [objc_opt_self() defaultCenter];
  sub_25570CD40();
  sub_255750860();

  swift_getOpaqueTypeConformance2();
  return sub_255750C30();
}

unint64_t sub_25570CD40()
{
  result = qword_27F7BFA28;
  if (!qword_27F7BFA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BFA28);
  }

  return result;
}

unint64_t sub_25570CDA8()
{
  result = qword_27F7BFA30;
  if (!qword_27F7BFA30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7BFA38, &qword_25575CD58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BFA30);
  }

  return result;
}

void AssetType.tokenTypeIdentifier.getter(_BYTE *a1@<X8>)
{
  v2 = *v1;
  if (v2 > 0x15)
  {
    *a1 = 14;
  }

  else
  {
    *a1 = byte_25575CDBE[v2];
  }
}

uint64_t ContactAssetMetadata.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ContactAssetMetadata.startTime.getter@<X0>(uint64_t a2@<X8>)
{
  v4 = v2 + *(type metadata accessor for ContactAssetMetadata(0) + 20);

  return sub_2556700F4(v4, a2);
}

uint64_t type metadata accessor for ContactAssetMetadata(uint64_t a1)
{
  result = qword_27F7BFA68;
  if (!qword_27F7BFA68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ContactAssetMetadata.endTime.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ContactAssetMetadata(0) + 24);

  return sub_2556700F4(v3, a1);
}

uint64_t ContactAssetMetadata.init(name:startTime:endTime:duration:numberOfExchanges:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, char a8@<W7>, void *a9@<X8>)
{
  *a9 = a1;
  a9[1] = a2;
  v16 = type metadata accessor for ContactAssetMetadata(0);
  sub_2556719B8(a3, a9 + v16[5]);
  result = sub_2556719B8(a4, a9 + v16[6]);
  v18 = a9 + v16[7];
  *v18 = a5;
  v18[8] = a6 & 1;
  v19 = a9 + v16[8];
  *v19 = a7;
  v19[8] = a8 & 1;
  return result;
}

uint64_t sub_25570D060()
{
  v1 = *v0;
  v2 = 1701667182;
  v3 = 0x656D6954646E65;
  v4 = 0x6E6F697461727564;
  if (v1 != 3)
  {
    v4 = 0xD000000000000011;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6D69547472617473;
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

uint64_t sub_25570D0FC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_25570DC28(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_25570D124(uint64_t a1)
{
  v2 = sub_25570D3FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25570D160(uint64_t a1)
{
  v2 = sub_25570D3FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ContactAssetMetadata.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFA40, &qword_25575CDD8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25570D3FC();
  sub_255750FF0();
  v13 = 0;
  sub_255750E00();
  if (!v1)
  {
    type metadata accessor for ContactAssetMetadata(0);
    v12 = 1;
    sub_25574F020();
    sub_255671898(&qword_27F7BDC18, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
    sub_255750DF0();
    v11 = 2;
    sub_255750DF0();
    v10 = 3;
    sub_255750DD0();
    v9 = 4;
    sub_255750DE0();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_25570D3FC()
{
  result = qword_27F7BFA48;
  if (!qword_27F7BFA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BFA48);
  }

  return result;
}

uint64_t ContactAssetMetadata.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB40, &unk_255754E40);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v27 - v7;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFA50, &qword_25575CDE0);
  v31 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v10 = &v27 - v9;
  v11 = type metadata accessor for ContactAssetMetadata(0);
  MEMORY[0x28223BE20](v11);
  v13 = (&v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25570D3FC();
  v32 = v10;
  v14 = v34;
  sub_255750FE0();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v34 = v6;
  v15 = v31;
  v39 = 0;
  v16 = v13;
  *v13 = sub_255750D50();
  v13[1] = v17;
  v29 = v17;
  sub_25574F020();
  v38 = 1;
  v28 = sub_255671898(&qword_27F7BDC38, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
  sub_255750D40();
  sub_2556719B8(v8, v13 + v11[5]);
  v37 = 2;
  v18 = v34;
  v28 = 0;
  sub_255750D40();
  v19 = v16;
  sub_2556719B8(v18, v16 + v11[6]);
  v36 = 3;
  v20 = sub_255750D20();
  v21 = v16 + v11[7];
  *v21 = v20;
  *(v21 + 8) = v22 & 1;
  v35 = 4;
  v23 = sub_255750D30();
  LOBYTE(v16) = v24;
  (*(v15 + 8))(v32, v33);
  v25 = v19 + v11[8];
  *v25 = v23;
  *(v25 + 8) = v16 & 1;
  sub_25570D8A8(v19, v30);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_25570D90C(v19);
}

uint64_t sub_25570D8A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContactAssetMetadata(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25570D90C(uint64_t a1)
{
  v2 = type metadata accessor for ContactAssetMetadata(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25570D968(uint64_t a1)
{
  *(a1 + 8) = sub_255671898(&qword_27F7BFA58, type metadata accessor for ContactAssetMetadata, &protocol conformance descriptor for ContactAssetMetadata);
  result = sub_255671898(&qword_27F7BFA60, type metadata accessor for ContactAssetMetadata, &protocol conformance descriptor for ContactAssetMetadata);
  *(a1 + 16) = result;
  return result;
}

void sub_25570DA44(uint64_t a1)
{
  sub_25566E80C(319);
  if (v1 <= 0x3F)
  {
    sub_25566BFA8(319, &qword_27F7BEBF0, MEMORY[0x277D839F8]);
    if (v2 <= 0x3F)
    {
      sub_25566BFA8(319, &qword_27F7BEC00, MEMORY[0x277D83B88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_25570DB24()
{
  result = qword_27F7BFA78;
  if (!qword_27F7BFA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BFA78);
  }

  return result;
}

unint64_t sub_25570DB7C()
{
  result = qword_27F7BFA80;
  if (!qword_27F7BFA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BFA80);
  }

  return result;
}

unint64_t sub_25570DBD4()
{
  result = qword_27F7BFA88;
  if (!qword_27F7BFA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BFA88);
  }

  return result;
}

uint64_t sub_25570DC28(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_255750EB0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D69547472617473 && a2 == 0xE900000000000065 || (sub_255750EB0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656D6954646E65 && a2 == 0xE700000000000000 || (sub_255750EB0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000 || (sub_255750EB0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002557535E0 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_255750EB0();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t MergeableFont.init(traits:unknownProperties:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(type metadata accessor for MergeableFont(0) + 20);
  sub_25574FB20();
  sub_25570DEB4(a1, a3);
  v7 = sub_25574FB30();
  v8 = *(*(v7 - 8) + 40);

  return v8(a3 + v6, a2, v7);
}

uint64_t sub_25570DEB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MergeableFont.Traits(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static MergeableFont.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  type metadata accessor for MergeableFont(0);

  return sub_25574FAF0();
}

uint64_t MergeableFont.hash(into:)(uint64_t a1)
{
  MEMORY[0x259C3EC60](*v1);
  type metadata accessor for MergeableFont(0);
  sub_25574FB30();
  sub_2557119D0(&qword_27F7BE3B0, MEMORY[0x277CFB650], MEMORY[0x277CFB658]);
  return sub_2557500A0();
}

uint64_t MergeableFont.hashValue.getter()
{
  sub_255750F80();
  MEMORY[0x259C3EC60](*v0);
  type metadata accessor for MergeableFont(0);
  sub_25574FB30();
  sub_2557119D0(&qword_27F7BE3B0, MEMORY[0x277CFB650], MEMORY[0x277CFB658]);
  sub_2557500A0();
  return sub_255750FD0();
}

uint64_t sub_25570E0C0()
{
  sub_255750F80();
  MEMORY[0x259C3EC60](*v0);
  sub_25574FB30();
  sub_2557119D0(&qword_27F7BE3B0, MEMORY[0x277CFB650], MEMORY[0x277CFB658]);
  sub_2557500A0();
  return sub_255750FD0();
}

uint64_t sub_25570E16C(uint64_t a1)
{
  MEMORY[0x259C3EC60](*v1);
  sub_25574FB30();
  sub_2557119D0(&qword_27F7BE3B0, MEMORY[0x277CFB650], MEMORY[0x277CFB658]);
  return sub_2557500A0();
}

uint64_t sub_25570E200(uint64_t a1)
{
  sub_255750F80();
  MEMORY[0x259C3EC60](*v1);
  sub_25574FB30();
  sub_2557119D0(&qword_27F7BE3B0, MEMORY[0x277CFB650], MEMORY[0x277CFB658]);
  sub_2557500A0();
  return sub_255750FD0();
}

uint64_t sub_25570E2A8(void *a1, void *a2, uint64_t a3)
{
  if (*a1 == *a2)
  {
    return sub_25574FAF0();
  }

  else
  {
    return 0;
  }
}

uint64_t MergeableFont.Traits.init(rawValue:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for MergeableFont.Traits(0);
  result = sub_25574FB20();
  *a2 = a1;
  return result;
}

uint64_t sub_25570E358(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = type metadata accessor for MergeableFont.Traits(0);
  __swift_allocate_value_buffer(v5, a2);
  v6 = __swift_project_value_buffer(v5, a2);
  result = sub_25574FB20();
  *v6 = a3;
  return result;
}

uint64_t sub_25570E3DC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for MergeableFont.Traits(0);
  v7 = __swift_project_value_buffer(v6, a2);
  return sub_255711904(v7, a4, type metadata accessor for MergeableFont.Traits);
}

uint64_t MergeableFont.Traits.init(rawValue:unknownProperties:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = *(type metadata accessor for MergeableFont.Traits(0) + 20);
  sub_25574FB20();
  *a3 = a1;
  v7 = sub_25574FB30();
  v8 = *(*(v7 - 8) + 40);

  return v8(&a3[v6], a2, v7);
}

uint64_t sub_25570E4D4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_25574FB20();
  *a2 = v3;
  return result;
}

uint64_t sub_25570E508()
{
  sub_255750F80();
  MEMORY[0x259C3EC60](*v0);
  return sub_255750FD0();
}

uint64_t sub_25570E578(uint64_t a1)
{
  sub_255750F80();
  MEMORY[0x259C3EC60](*v1);
  return sub_255750FD0();
}

uint64_t sub_25570E5B8@<X0>(void *a2@<X8>)
{
  result = sub_25574FB20();
  *a2 = 0;
  return result;
}

uint64_t sub_25570E5E8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  MEMORY[0x28223BE20](a1);
  v6 = (&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *v2;
  sub_25574FB20();
  *a2 = v7;
  sub_25570FE64(a2);
  sub_255711904(a1, v6, type metadata accessor for MergeableFont.Traits);
  v8 = *v6 | v7;
  sub_25574FB20();
  sub_25570FE64(v2);
  sub_25570FE64(a1);
  result = sub_25570FE64(v6);
  *a2 = v8;
  return result;
}

uint64_t sub_25570E6C4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *v2;
  sub_25574FB20();
  *a2 = v5;
  sub_25570FE64(a2);
  v6 = *a1 & v5;
  sub_25574FB20();
  result = sub_25570FE64(v2);
  *a2 = v6;
  return result;
}

uint64_t sub_25570E730@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  MEMORY[0x28223BE20](a1);
  v6 = (&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *v2;
  sub_25574FB20();
  *a2 = v7;
  sub_25570FE64(a2);
  sub_255711904(a1, v6, type metadata accessor for MergeableFont.Traits);
  v8 = *v6 ^ v7;
  sub_25574FB20();
  sub_25570FE64(v2);
  sub_25570FE64(a1);
  result = sub_25570FE64(v6);
  *a2 = v8;
  return result;
}

uint64_t sub_25570E80C(uint64_t a1, void *a2)
{
  v3 = sub_25570E840(a1, a2);
  sub_25570FE64(a2);
  return v3 & 1;
}

uint64_t sub_25570E840(uint64_t a1, void *a2)
{
  v29 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFB30, "&e");
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v26 - v8;
  v10 = type metadata accessor for MergeableFont.Traits(0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = (&v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v15 = (&v26 - v14);
  v27 = v2;
  sub_255711904(v2, v13, type metadata accessor for MergeableFont.Traits);
  v16 = *v13;
  sub_25574FB20();
  *v15 = v16;
  sub_25570FE64(v15);
  v26 = a2;
  v17 = *a2;
  v18 = v17 & v16;
  sub_25574FB20();
  sub_25570FE64(v13);
  *v15 = v17 & v16;
  v28 = v4;
  v19 = *(v4 + 48);
  *v9 = v18 != v17;
  if (v18 == v17)
  {
    sub_25570DEB4(v15, &v9[v19]);
  }

  else
  {
    sub_25570FE64(v15);
    v20 = v26;
    sub_255711904(v26, &v9[v19], type metadata accessor for MergeableFont.Traits);
    sub_255711904(v20, v13, type metadata accessor for MergeableFont.Traits);
    v21 = v27;
    v22 = *v27;
    sub_25570FE64(v27);
    v23 = *v13 | v22;
    sub_25574FB20();
    sub_25570FE64(v13);
    *v21 = v23;
  }

  sub_255675060(v9, v7, &qword_27F7BFB30, "&e");
  v24 = *v7;
  sub_25570DEB4(&v7[*(v28 + 48)], v29);
  return v24;
}

uint64_t sub_25570EAA0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for MergeableFont.Traits(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = (&v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v11 = (&v16 - v10);
  sub_255711904(v2, v9, type metadata accessor for MergeableFont.Traits);
  v12 = *v9;
  sub_25574FB20();
  *v11 = v12;
  sub_25570FE64(v11);
  v13 = *a1 & v12;
  sub_25574FB20();
  sub_25570FE64(v9);
  *v11 = v13;
  sub_25574FB20();
  *v9 = 0;
  sub_25570FE64(v9);
  if (v13)
  {
    sub_25570F840(a1);
    sub_25570DEB4(v11, a2);
    v14 = 0;
  }

  else
  {
    sub_25570FE64(v11);
    v14 = 1;
  }

  return (*(v6 + 56))(a2, v14, 1, v5);
}

uint64_t sub_25570EC38@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_25570EC70(a1, a2);

  return sub_25570FE64(a1);
}

uint64_t sub_25570EC70@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for MergeableFont.Traits(0);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = (&v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v12 = (&v19 - v11);
  sub_255711904(v3, v10, type metadata accessor for MergeableFont.Traits);
  v13 = *v10;
  sub_25574FB20();
  *v12 = v13;
  sub_25570FE64(v12);
  v14 = *a1 & v13;
  sub_25574FB20();
  sub_25570FE64(v10);
  *v12 = v14;
  sub_255711904(a1, v10, type metadata accessor for MergeableFont.Traits);
  v15 = *v3;
  sub_25570FE64(v3);
  v16 = *v10 | v15;
  sub_25574FB20();
  sub_25570FE64(v10);
  *v3 = v16;
  sub_25574FB20();
  *v10 = 0;
  sub_25570FE64(v10);
  if (v14)
  {
    sub_25570DEB4(v12, a2);
    v17 = 0;
  }

  else
  {
    sub_25570FE64(v12);
    v17 = 1;
  }

  return (*(v7 + 56))(a2, v17, 1, v6);
}

uint64_t sub_25570EE40(void *a1)
{
  v3 = *v1;
  sub_25570FE64(v1);
  v4 = *a1 | v3;
  sub_25574FB20();
  result = sub_25570FE64(a1);
  *v1 = v4;
  return result;
}

uint64_t sub_25570EE98(void *a1)
{
  v3 = *v1;
  sub_25570FE64(v1);
  v4 = *a1 & v3;
  result = sub_25574FB20();
  *v1 = v4;
  return result;
}

uint64_t sub_25570EEE8(void *a1)
{
  v3 = *v1;
  sub_25570FE64(v1);
  v4 = *a1 ^ v3;
  sub_25574FB20();
  result = sub_25570FE64(a1);
  *v1 = v4;
  return result;
}

uint64_t sub_25570EF40@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_25570EF6C(a1, a2);

  return sub_25570FE64(v2);
}

uint64_t sub_25570EF6C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for MergeableFont.Traits(0);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = (&v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = MEMORY[0x28223BE20](v6);
  v11 = (&v21 - v10);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = (&v21 - v13);
  MEMORY[0x28223BE20](v12);
  v16 = (&v21 - v15);
  sub_255711904(v2, &v21 - v15, type metadata accessor for MergeableFont.Traits);
  sub_255711904(v2, v11, type metadata accessor for MergeableFont.Traits);
  v17 = *v11;
  sub_25574FB20();
  *v14 = v17;
  sub_25570FE64(v14);
  sub_255711904(a1, v8, type metadata accessor for MergeableFont.Traits);
  v18 = *v8 ^ v17;
  sub_25574FB20();
  sub_25570FE64(v8);
  sub_25570FE64(v11);
  *v14 = v18;
  v19 = *v16;
  sub_25574FB20();
  *a2 = v19;
  sub_25570FE64(a2);
  sub_25574FB20();
  sub_25570FE64(v14);
  result = sub_25570FE64(v16);
  *a2 = v19 & v18;
  return result;
}

BOOL sub_25570F120(void *a1)
{
  v3 = MEMORY[0x28223BE20](a1);
  v5 = (&v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v3);
  v7 = (&v11 - v6);
  sub_255711904(v1, v5, type metadata accessor for MergeableFont.Traits);
  v8 = *v5;
  sub_25574FB20();
  *v7 = v8;
  sub_25570FE64(v7);
  v9 = *a1 & v8;
  sub_25574FB20();
  sub_25570FE64(v5);
  *v7 = v9;
  sub_25570FE64(v7);
  return v9 == *v1;
}

BOOL sub_25570F224(uint64_t *a1)
{
  v3 = type metadata accessor for MergeableFont.Traits(0);
  v4 = MEMORY[0x28223BE20](v3);
  v6 = (&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v4);
  v8 = (&v12 - v7);
  sub_255711904(v1, v6, type metadata accessor for MergeableFont.Traits);
  v9 = *v6;
  sub_25574FB20();
  *v8 = v9;
  sub_25570FE64(v8);
  v10 = *a1;
  sub_25574FB20();
  sub_25570FE64(v6);
  *v8 = v10 & v9;
  sub_25574FB20();
  *v6 = 0;
  sub_25570FE64(v6);
  sub_25570FE64(v8);
  return (v10 & v9) == 0;
}

BOOL sub_25570F340(void *a1)
{
  v3 = MEMORY[0x28223BE20](a1);
  v5 = (&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = MEMORY[0x28223BE20](v3);
  v8 = (&v12 - v7);
  sub_255711904(v6, v5, type metadata accessor for MergeableFont.Traits);
  v9 = *v5;
  sub_25574FB20();
  *v8 = v9;
  sub_25570FE64(v8);
  v10 = *v1 & v9;
  sub_25574FB20();
  sub_25570FE64(v5);
  *v8 = v10;
  sub_25570FE64(v8);
  return v10 == *a1;
}

BOOL sub_25570F43C(uint64_t a1)
{
  MEMORY[0x28223BE20](a1 - 8);
  v3 = (&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_25574FB20();
  *v3 = 0;
  sub_25570FE64(v3);
  return *v1 == 0;
}

uint64_t sub_25570F4D4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFB30, "&e");
  v5 = MEMORY[0x28223BE20](v4);
  v41 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = v33 - v7;
  v9 = type metadata accessor for MergeableFont.Traits(0);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = (v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = MEMORY[0x28223BE20](v11);
  v16 = v33 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = v33 - v18;
  v40 = v17;
  v33[2] = *(v17 + 20);
  sub_25574FB20();
  *a2 = 0;
  v20 = *(a1 + 16);
  if (v20)
  {
    v36 = v16;
    v37 = v13;
    v38 = v19;
    v39 = v4;
    v21 = *(v10 + 80);
    v33[1] = a1;
    v22 = a1 + ((v21 + 32) & ~v21);
    v34 = *(v10 + 72);
    v35 = 0;
    do
    {
      v42 = v20;
      v25 = v38;
      sub_255711904(v22, v38, type metadata accessor for MergeableFont.Traits);
      sub_255711904(a2, v13, type metadata accessor for MergeableFont.Traits);
      v26 = *v13;
      v27 = v36;
      sub_25574FB20();
      *v27 = v26;
      sub_25570FE64(v27);
      v28 = v4;
      v29 = *v25;
      v30 = *v25 & v26;
      sub_25574FB20();
      sub_25570FE64(v13);
      *v27 = v30;
      v31 = *(v28 + 48);
      *v8 = v30 != v29;
      if (v30 == v29)
      {
        sub_25570FE64(v25);
        sub_25570DEB4(v27, &v8[v31]);
      }

      else
      {
        sub_25570FE64(v27);
        sub_255711904(v25, &v8[v31], type metadata accessor for MergeableFont.Traits);
        sub_255711904(v25, v13, type metadata accessor for MergeableFont.Traits);
        sub_25570FE64(a2);
        v23 = *v13 | v35;
        sub_25574FB20();
        sub_25570FE64(v13);
        sub_25570FE64(v25);
        v35 = v23;
        *a2 = v23;
      }

      v24 = v41;
      sub_255675060(v8, v41, &qword_27F7BFB30, "&e");
      v4 = v39;
      sub_25570FE64(v24 + *(v39 + 48));
      v22 += v34;
      v20 = v42 - 1;
    }

    while (v42 != 1);
  }
}

uint64_t sub_25570F840(uint64_t a1)
{
  v3 = type metadata accessor for MergeableFont.Traits(0);
  v4 = MEMORY[0x28223BE20](v3);
  v6 = (&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = MEMORY[0x28223BE20](v4);
  v9 = (&v16 - v8);
  MEMORY[0x28223BE20](v7);
  v11 = (&v16 - v10);
  sub_255711904(v1, v9, type metadata accessor for MergeableFont.Traits);
  v12 = *v9;
  sub_25574FB20();
  *v11 = v12;
  sub_25570FE64(v11);
  sub_255711904(a1, v6, type metadata accessor for MergeableFont.Traits);
  v13 = *v6 ^ v12;
  sub_25574FB20();
  sub_25570FE64(v6);
  sub_25570FE64(v9);
  *v11 = v13;
  v14 = *v1;
  sub_25570FE64(v1);
  sub_25574FB20();
  result = sub_25570FE64(v11);
  *v1 = v14 & v13;
  return result;
}

uint64_t sub_25570F9A8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  sub_25574FB20();
  *a3 = v5;
  v6 = *(*(a2 - 8) + 56);

  return v6(a3, 0, 1, a2);
}

uint64_t MergeableFont.debugDescription.getter()
{
  type metadata accessor for MergeableFont.Traits(0);
  sub_255750C20();
  return 0;
}

uint64_t sub_25570FAA0()
{
  type metadata accessor for MergeableFont.Traits(0);
  sub_255750C20();
  return 0;
}

uint64_t MergeableFont.Traits.debugDescription.getter()
{
  v1 = type metadata accessor for MergeableFont.Traits(0);
  v2 = MEMORY[0x28223BE20](v1);
  v4 = (v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v2);
  v6 = (v25 - v5);
  if (qword_27F7BD7E0 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_27F7BFAA8);
  sub_255711904(v7, v4, type metadata accessor for MergeableFont.Traits);
  v8 = *v4;
  sub_25574FB20();
  *v6 = v8;
  sub_25570FE64(v6);
  v9 = *v0;
  v10 = *v0 & v8;
  sub_25574FB20();
  sub_25570FE64(v4);
  *v6 = v10;
  sub_25570FE64(v6);
  if (v10 == *v7)
  {
    v11 = sub_255698E88(0, 1, 1, MEMORY[0x277D84F90]);
    v13 = *(v11 + 2);
    v12 = *(v11 + 3);
    if (v13 >= v12 >> 1)
    {
      v11 = sub_255698E88((v12 > 1), v13 + 1, 1, v11);
    }

    *(v11 + 2) = v13 + 1;
    v14 = &v11[16 * v13];
    *(v14 + 4) = 1684828002;
    *(v14 + 5) = 0xE400000000000000;
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  if (qword_27F7BD7D8 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v1, qword_27F7BFA90);
  sub_255711904(v15, v4, type metadata accessor for MergeableFont.Traits);
  v16 = *v4;
  sub_25574FB20();
  *v6 = v16;
  sub_25570FE64(v6);
  v17 = v16 & v9;
  sub_25574FB20();
  sub_25570FE64(v4);
  *v6 = v17;
  sub_25570FE64(v6);
  if (v17 == *v15)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_255698E88(0, *(v11 + 2) + 1, 1, v11);
    }

    v19 = *(v11 + 2);
    v18 = *(v11 + 3);
    if (v19 >= v18 >> 1)
    {
      v11 = sub_255698E88((v18 > 1), v19 + 1, 1, v11);
    }

    *(v11 + 2) = v19 + 1;
    v20 = &v11[16 * v19];
    *(v20 + 4) = 0x63696C617469;
    *(v20 + 5) = 0xE600000000000000;
  }

  v25[0] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE728, &qword_255757898);
  sub_2556B3A2C();
  v21 = sub_2557500C0();
  v23 = v22;

  v25[0] = 91;
  v25[1] = 0xE100000000000000;
  MEMORY[0x259C3DED0](v21, v23);

  MEMORY[0x259C3DED0](93, 0xE100000000000000);

  return v25[0];
}

uint64_t sub_25570FE64(uint64_t a1)
{
  v2 = type metadata accessor for MergeableFont.Traits(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t MergeableFont.copy(renamingReferences:)@<X0>(uint64_t a2@<X8>)
{
  v4 = sub_25574FB30();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MergeableFont.Traits(0);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_255711904(v2, a2, type metadata accessor for MergeableFont);
  sub_255711904(v2, v11, type metadata accessor for MergeableFont.Traits);
  *v11 = *v2;
  sub_25574FB00();
  v12 = *(v5 + 40);
  v12(&v11[*(v9 + 28)], v7, v4);
  sub_25571196C(v11, a2);
  v13 = type metadata accessor for MergeableFont(0);
  sub_25574FB00();
  return (v12)(a2 + *(v13 + 20), v7, v4);
}

uint64_t MergeableFont.Traits.copy(renamingReferences:)@<X0>(char *a2@<X8>)
{
  v4 = sub_25574FB30();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_255711904(v2, a2, type metadata accessor for MergeableFont.Traits);
  *a2 = *v2;
  v8 = type metadata accessor for MergeableFont.Traits(0);
  sub_25574FB00();
  return (*(v5 + 40))(&a2[*(v8 + 20)], v7, v4);
}

uint64_t MergeableFont.visitReferences(_:)(uint64_t a1)
{
  type metadata accessor for MergeableFont.Traits(0);
  sub_25574FAE0();
  type metadata accessor for MergeableFont(0);
  return sub_25574FAE0();
}

uint64_t MergeableFont.encode(to:)()
{
  result = sub_25574FF70();
  if (!v0)
  {
    type metadata accessor for MergeableFont.Traits(0);
    sub_2557119D0(&qword_27F7BFAC0, type metadata accessor for MergeableFont.Traits, &protocol conformance descriptor for MergeableFont.Traits);
    sub_25574FF80();
    type metadata accessor for MergeableFont(0);
    sub_25574FB10();
  }

  return result;
}

uint64_t MergeableFont.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE3F8, &qword_25575C9F0);
  MEMORY[0x28223BE20](v4 - 8);
  v68 = (&v60 - v5);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFFF0, &qword_255755250);
  v67 = *(v69 - 8);
  v6 = MEMORY[0x28223BE20](v69);
  v66 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v60 - v8;
  v10 = sub_25574FB30();
  v71 = *(v10 - 8);
  v72 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for MergeableFont.Traits(0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = (&v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v60 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = (&v60 - v20);
  v22 = *(type metadata accessor for MergeableFont(0) + 20);
  v74 = a2;
  v70 = v22;
  sub_25574FB20();
  v23 = v73;
  v24 = sub_25574FEE0();
  if (v23)
  {

    v26 = v71;
    v25 = v72;
    v27 = v70;
    return (*(v26 + 8))(v74 + v27, v25);
  }

  else
  {
    v29 = v24;
    v73 = v19;
    v61 = v9;
    v62 = v21;
    v30 = v68;
    v63 = v12;
    v65 = a1;
    v31 = sub_25574FF00();
    if (v31)
    {
      MergeableFont.Traits.init(from:)(v31, v16);
      v33 = v30;
      v64 = 0;
    }

    else
    {
      sub_2557119D0(&qword_27F7BFAC0, type metadata accessor for MergeableFont.Traits, &protocol conformance descriptor for MergeableFont.Traits);
      sub_2557119D0(&qword_27F7BFAC8, type metadata accessor for MergeableFont.Traits, "QЭ,\\@");
      v32 = v73;
      sub_255750320();
      v33 = v30;
      v64 = 0;
      v16 = v62;
      sub_25570DEB4(v32, v62);
    }

    sub_25570DEB4(v16, v74);
    v73 = v29;
    v34 = sub_25574FEF0();
    v35 = sub_255676334(v34);

    v76 = v35;
    sub_255676690(1);
    v36 = v76 + 56;
    v37 = 1 << *(v76 + 32);
    v38 = -1;
    if (v37 < 64)
    {
      v38 = ~(-1 << v37);
    }

    v39 = v38 & *(v76 + 56);
    v40 = (v37 + 63) >> 6;
    v41 = (v67 + 56);
    v42 = v76;

    v43 = 0;
    v68 = MEMORY[0x277D84F90];
    while (1)
    {
      v44 = v43;
      if (!v39)
      {
        break;
      }

LABEL_14:
      v45 = __clz(__rbit64(v39));
      v39 &= v39 - 1;
      v46 = *(*(v42 + 48) + ((v43 << 9) | (8 * v45)));
      if (sub_25574FF00())
      {
        v47 = v69;
        *v33 = v46;
        v48 = v64;
        sub_25574F310();
        v64 = v48;
        if (v48)
        {
LABEL_30:

          v26 = v71;
          v57 = v72;
          v27 = v70;
LABEL_27:
          sub_25570FE64(v74);
          v25 = v57;
          return (*(v26 + 8))(v74 + v27, v25);
        }

        (*v41)(v33, 0, 1, v47);
        v49 = v61;
        sub_255675060(v33, v61, &qword_27F7BFFF0, &qword_255755250);
        sub_255675060(v49, v66, &qword_27F7BFFF0, &qword_255755250);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v68 = sub_25569874C(0, v68[2] + 1, 1, v68);
        }

        v50 = v67;
        v52 = v68[2];
        v51 = v68[3];
        v53 = v66;
        if (v52 >= v51 >> 1)
        {
          v68 = sub_25569874C((v51 > 1), v52 + 1, 1, v68);
          v53 = v66;
          v50 = v67;
        }

        v54 = v68;
        v68[2] = v52 + 1;
        sub_255675060(v53, v54 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v52, &qword_27F7BFFF0, &qword_255755250);
      }

      else
      {
        (*v41)(v33, 1, 1, v69);
        sub_2556DB128(v33);
      }
    }

    while (1)
    {
      v43 = v44 + 1;
      if (__OFADD__(v44, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v43 >= v40)
      {
        break;
      }

      v39 = *(v36 + 8 * v43);
      ++v44;
      if (v39)
      {
        goto LABEL_14;
      }
    }

    v55 = v68;
    if (v68[2])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE400, &qword_255756A50);
      v56 = sub_255750C90();
    }

    else
    {
      v56 = MEMORY[0x277D84F98];
    }

    v26 = v71;
    v57 = v72;
    v58 = v64;
    v27 = v70;
    v59 = v63;
    v75 = v56;
    sub_255711FE4(v55, 1, &v75);
    v64 = v58;
    if (v58)
    {

      goto LABEL_27;
    }

    sub_25574FB40();

    return (*(v26 + 40))(v74 + v27, v59, v57);
  }
}

uint64_t MergeableFont.Traits.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE3F8, &qword_25575C9F0);
  MEMORY[0x28223BE20](v4 - 8);
  v67 = (&v57 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFFF0, &qword_255755250);
  v65 = *(v6 - 8);
  v66 = v6;
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v57 - v10;
  v68 = sub_25574FB30();
  v12 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v14 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(type metadata accessor for MergeableFont.Traits(0) + 20);
  v16 = a2;
  sub_25574FB20();
  v17 = v69;
  v18 = sub_25574FEE0();
  if (v17)
  {

    v19 = a2;
    v20 = v68;
    return (*(v12 + 8))(v19 + v15, v20);
  }

  else
  {
    v22 = v18;
    v64 = a1;
    v57 = v11;
    v58 = v9;
    if (sub_25574FF00())
    {
      v23 = sub_2557505E0();
      v24 = v16;
      v59 = v14;
      v60 = v15;
      v61 = v12;
    }

    else
    {
      v59 = v14;
      v60 = v15;
      v61 = v12;
      v23 = sub_2557505D0();
      v24 = v16;
    }

    v62 = v24;
    *v24 = v23;
    v69 = v22;
    v25 = sub_25574FEF0();
    v26 = sub_255676334(v25);

    v71 = v26;
    sub_255676690(1);
    v27 = v71 + 56;
    v28 = 1 << *(v71 + 32);
    v29 = -1;
    if (v28 < 64)
    {
      v29 = ~(-1 << v28);
    }

    v30 = v29 & *(v71 + 56);
    v31 = (v28 + 63) >> 6;
    v32 = (v65 + 56);
    v33 = v71;

    v34 = 0;
    v63 = MEMORY[0x277D84F90];
    while (1)
    {
      v35 = v34;
      if (!v30)
      {
        break;
      }

LABEL_14:
      v36 = __clz(__rbit64(v30));
      v30 &= v30 - 1;
      v37 = *(*(v33 + 48) + ((v34 << 9) | (8 * v36)));
      if (sub_25574FF00())
      {
        v40 = v66;
        v39 = v67;
        *v67 = v37;
        v41 = v39;
        sub_25574F310();
        (*v32)(v41, 0, 1, v40);
        v42 = v41;
        v43 = v57;
        sub_255675060(v42, v57, &qword_27F7BFFF0, &qword_255755250);
        sub_255675060(v43, v58, &qword_27F7BFFF0, &qword_255755250);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v63 = sub_25569874C(0, v63[2] + 1, 1, v63);
        }

        v44 = v65;
        v46 = v63[2];
        v45 = v63[3];
        v47 = v58;
        if (v46 >= v45 >> 1)
        {
          v49 = sub_25569874C((v45 > 1), v46 + 1, 1, v63);
          v44 = v65;
          v63 = v49;
          v47 = v58;
        }

        v48 = v63;
        v63[2] = v46 + 1;
        sub_255675060(v47, v48 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v46, &qword_27F7BFFF0, &qword_255755250);
      }

      else
      {
        v38 = v67;
        (*v32)(v67, 1, 1, v66);
        sub_2556DB128(v38);
      }
    }

    while (1)
    {
      v34 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        __break(1u);

        v12 = v61;
        v19 = v62;
        v20 = v68;
        v15 = v60;
        return (*(v12 + 8))(v19 + v15, v20);
      }

      if (v34 >= v31)
      {
        break;
      }

      v30 = *(v27 + 8 * v34);
      ++v35;
      if (v30)
      {
        goto LABEL_14;
      }
    }

    v50 = v63;
    if (v63[2])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE400, &qword_255756A50);
      v51 = sub_255750C90();
    }

    else
    {
      v51 = MEMORY[0x277D84F98];
    }

    v53 = v61;
    v52 = v62;
    v54 = v68;
    v55 = v59;
    v56 = v60;
    v70 = v51;
    sub_255711A18(v50, 1, &v70);
    sub_25574FB40();

    return (*(v53 + 40))(v52 + v56, v55, v54);
  }
}

uint64_t sub_2557110C0@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_25574FB30();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for MergeableFont.Traits(0);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_255711904(v3, a3, type metadata accessor for MergeableFont);
  sub_255711904(v3, v13, type metadata accessor for MergeableFont.Traits);
  *v13 = *v3;
  sub_25574FB00();
  v14 = *(v7 + 40);
  v14(&v13[*(v11 + 28)], v9, v6);
  sub_25571196C(v13, a3);
  sub_25574FB00();
  return (v14)(a3 + *(a2 + 20), v9, v6);
}

uint64_t sub_255711288(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2557119D0(&qword_27F7BE938, type metadata accessor for MergeableFont, &protocol conformance descriptor for MergeableFont);
  sub_2557119D0(&qword_27F7BFAD0, type metadata accessor for MergeableFont, &protocol conformance descriptor for MergeableFont);

  return sub_25574FDD0();
}

uint64_t sub_255711354(uint64_t a1)
{
  type metadata accessor for MergeableFont.Traits(0);
  sub_25574FAE0();
  return sub_25574FAE0();
}

uint64_t sub_2557113C4()
{
  result = sub_25574FF70();
  if (!v0)
  {
    type metadata accessor for MergeableFont.Traits(0);
    sub_2557119D0(&qword_27F7BFAC0, type metadata accessor for MergeableFont.Traits, &protocol conformance descriptor for MergeableFont.Traits);
    sub_25574FF80();
    sub_25574FB10();
  }

  return result;
}

uint64_t MergeableFont.Traits.encode(to:)()
{
  result = sub_25574FF70();
  if (!v0)
  {
    sub_25574FF80();
    type metadata accessor for MergeableFont.Traits(0);
    sub_25574FB10();
  }

  return result;
}

uint64_t sub_255711554@<X0>(uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = sub_25574FB30();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_255711904(v3, a3, type metadata accessor for MergeableFont.Traits);
  *a3 = *v3;
  sub_25574FB00();
  return (*(v7 + 40))(&a3[*(a2 + 20)], v9, v6);
}

uint64_t sub_25571166C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2557119D0(&qword_27F7BFB28, type metadata accessor for MergeableFont.Traits, &protocol conformance descriptor for MergeableFont.Traits);
  sub_2557119D0(&qword_27F7BFAE0, type metadata accessor for MergeableFont.Traits, "Aϭ,$@");

  return sub_25574FDD0();
}

uint64_t sub_255711750()
{
  result = sub_25574FF70();
  if (!v0)
  {
    sub_25574FF80();
    sub_25574FB10();
  }

  return result;
}

uint64_t sub_255711880(uint64_t a1, uint64_t a2)
{
  v4 = sub_2557119D0(&qword_27F7BFAC8, type metadata accessor for MergeableFont.Traits, "QЭ,\\@");
  v5 = MEMORY[0x277CFB810];

  return MEMORY[0x28214E590](a1, a2, v4, v5);
}

uint64_t sub_255711904(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25571196C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MergeableFont.Traits(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2557119D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_255711A18(uint64_t a1, int a2, void *a3)
{
  v7 = sub_25574F320();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFFF0, &qword_255755250);
  v12 = MEMORY[0x28223BE20](v11);
  v15 = (&v55 - v14);
  v62 = *(a1 + 16);
  if (!v62)
  {
    goto LABEL_23;
  }

  LODWORD(v59) = a2;
  v57 = v3;
  v16 = *(v12 + 48);
  v17 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v61 = *(v13 + 72);
  v63 = a1;
  v56 = v17;
  sub_2556AAA64(a1 + v17, &v55 - v14);
  v58 = v8;
  v18 = *(v8 + 32);
  v69 = *v15;
  v19 = v69;
  v60 = v16;
  v64 = v7;
  v65 = v10;
  v18(v10, v15 + v16, v7);
  v20 = *a3;
  v22 = sub_255742798(v19);
  v23 = v20[2];
  v24 = (v21 & 1) == 0;
  v25 = v23 + v24;
  if (__OFADD__(v23, v24))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v26 = v21;
  if (v20[3] >= v25)
  {
    if (v59)
    {
      if ((v21 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      sub_255742BBC();
      if ((v26 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_10;
  }

  sub_255743F6C(v25, v59 & 1);
  v27 = sub_255742798(v19);
  if ((v26 & 1) == (v28 & 1))
  {
    v22 = v27;
    if ((v26 & 1) == 0)
    {
LABEL_13:
      v33 = *a3;
      *(*a3 + 8 * (v22 >> 6) + 64) |= 1 << v22;
      *(v33[6] + 8 * v22) = v19;
      v34 = v33[7];
      v59 = *(v58 + 72);
      v35 = (v34 + v59 * v22);
      v36 = v64;
      v18(v35, v65, v64);
      v37 = v33[2];
      v38 = __OFADD__(v37, 1);
      v39 = v37 + 1;
      if (!v38)
      {
        v33[2] = v39;
        v40 = v63;
        if (v62 != 1)
        {
          v41 = v63 + v61 + v56;
          v42 = 1;
          while (v42 < *(v40 + 16))
          {
            sub_2556AAA64(v41, v15);
            v69 = *v15;
            v43 = v69;
            v18(v65, v15 + v60, v36);
            v44 = *a3;
            v45 = sub_255742798(v43);
            v47 = v44[2];
            v48 = (v46 & 1) == 0;
            v38 = __OFADD__(v47, v48);
            v49 = v47 + v48;
            if (v38)
            {
              goto LABEL_24;
            }

            v50 = v46;
            if (v44[3] < v49)
            {
              sub_255743F6C(v49, 1);
              v45 = sub_255742798(v43);
              if ((v50 & 1) != (v51 & 1))
              {
                goto LABEL_27;
              }
            }

            if (v50)
            {
              goto LABEL_10;
            }

            v52 = *a3;
            *(*a3 + 8 * (v45 >> 6) + 64) |= 1 << v45;
            *(v52[6] + 8 * v45) = v43;
            v36 = v64;
            v18((v52[7] + v59 * v45), v65, v64);
            v53 = v52[2];
            v38 = __OFADD__(v53, 1);
            v54 = v53 + 1;
            if (v38)
            {
              goto LABEL_25;
            }

            ++v42;
            v52[2] = v54;
            v41 += v61;
            v40 = v63;
            if (v62 == v42)
            {
              goto LABEL_23;
            }
          }

          goto LABEL_26;
        }

LABEL_23:

        return;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

LABEL_10:
    v29 = sub_25574F750();
    sub_2557119D0(&qword_27F7BE110, MEMORY[0x277CFB5B0], MEMORY[0x277CFB5B8]);
    v30 = swift_allocError();
    *v31 = 0xD000000000000020;
    v31[1] = 0x8000000255753630;
    (*(*(v29 - 8) + 104))(v31, *MEMORY[0x277CFB5A8], v29);
    swift_willThrow();
    v68 = v30;
    v32 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE118, &qword_255755C80);
    if ((swift_dynamicCast() & 1) == 0)
    {
      (*(v58 + 8))(v65, v64);

      return;
    }

    goto LABEL_28;
  }

LABEL_27:
  sub_255750F10();
  __break(1u);
LABEL_28:
  v66 = 0;
  v67 = 0xE000000000000000;
  sub_255750B00();
  MEMORY[0x259C3DED0](0xD00000000000001BLL, 0x8000000255752750);
  sub_255750C20();
  MEMORY[0x259C3DED0](39, 0xE100000000000000);
  sub_255750C40();
  __break(1u);
}

void sub_255711FE4(uint64_t a1, int a2, void *a3)
{
  v7 = sub_25574F320();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFFF0, &qword_255755250);
  v12 = MEMORY[0x28223BE20](v11);
  v15 = (&v55 - v14);
  v62 = *(a1 + 16);
  if (!v62)
  {
    goto LABEL_23;
  }

  LODWORD(v59) = a2;
  v57 = v3;
  v16 = *(v12 + 48);
  v17 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v61 = *(v13 + 72);
  v63 = a1;
  v56 = v17;
  sub_2556AAA64(a1 + v17, &v55 - v14);
  v58 = v8;
  v18 = *(v8 + 32);
  v69 = *v15;
  v19 = v69;
  v60 = v16;
  v64 = v7;
  v65 = v10;
  v18(v10, v15 + v16, v7);
  v20 = *a3;
  v22 = sub_255742798(v19);
  v23 = v20[2];
  v24 = (v21 & 1) == 0;
  v25 = v23 + v24;
  if (__OFADD__(v23, v24))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v26 = v21;
  if (v20[3] >= v25)
  {
    if (v59)
    {
      if ((v21 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      sub_255742BBC();
      if ((v26 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_10;
  }

  sub_255743F6C(v25, v59 & 1);
  v27 = sub_255742798(v19);
  if ((v26 & 1) == (v28 & 1))
  {
    v22 = v27;
    if ((v26 & 1) == 0)
    {
LABEL_13:
      v33 = *a3;
      *(*a3 + 8 * (v22 >> 6) + 64) |= 1 << v22;
      *(v33[6] + 8 * v22) = v19;
      v34 = v33[7];
      v59 = *(v58 + 72);
      v35 = (v34 + v59 * v22);
      v36 = v64;
      v18(v35, v65, v64);
      v37 = v33[2];
      v38 = __OFADD__(v37, 1);
      v39 = v37 + 1;
      if (!v38)
      {
        v33[2] = v39;
        v40 = v63;
        if (v62 != 1)
        {
          v41 = v63 + v61 + v56;
          v42 = 1;
          while (v42 < *(v40 + 16))
          {
            sub_2556AAA64(v41, v15);
            v69 = *v15;
            v43 = v69;
            v18(v65, v15 + v60, v36);
            v44 = *a3;
            v45 = sub_255742798(v43);
            v47 = v44[2];
            v48 = (v46 & 1) == 0;
            v38 = __OFADD__(v47, v48);
            v49 = v47 + v48;
            if (v38)
            {
              goto LABEL_24;
            }

            v50 = v46;
            if (v44[3] < v49)
            {
              sub_255743F6C(v49, 1);
              v45 = sub_255742798(v43);
              if ((v50 & 1) != (v51 & 1))
              {
                goto LABEL_27;
              }
            }

            if (v50)
            {
              goto LABEL_10;
            }

            v52 = *a3;
            *(*a3 + 8 * (v45 >> 6) + 64) |= 1 << v45;
            *(v52[6] + 8 * v45) = v43;
            v36 = v64;
            v18((v52[7] + v59 * v45), v65, v64);
            v53 = v52[2];
            v38 = __OFADD__(v53, 1);
            v54 = v53 + 1;
            if (v38)
            {
              goto LABEL_25;
            }

            ++v42;
            v52[2] = v54;
            v41 += v61;
            v40 = v63;
            if (v62 == v42)
            {
              goto LABEL_23;
            }
          }

          goto LABEL_26;
        }

LABEL_23:

        return;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

LABEL_10:
    v29 = sub_25574F750();
    sub_2557119D0(&qword_27F7BE110, MEMORY[0x277CFB5B0], MEMORY[0x277CFB5B8]);
    v30 = swift_allocError();
    *v31 = 0xD000000000000027;
    v31[1] = 0x8000000255753660;
    (*(*(v29 - 8) + 104))(v31, *MEMORY[0x277CFB5A8], v29);
    swift_willThrow();
    v68 = v30;
    v32 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE118, &qword_255755C80);
    if ((swift_dynamicCast() & 1) == 0)
    {
      (*(v58 + 8))(v65, v64);

      return;
    }

    goto LABEL_28;
  }

LABEL_27:
  sub_255750F10();
  __break(1u);
LABEL_28:
  v66 = 0;
  v67 = 0xE000000000000000;
  sub_255750B00();
  MEMORY[0x259C3DED0](0xD00000000000001BLL, 0x8000000255752750);
  sub_255750C20();
  MEMORY[0x259C3DED0](39, 0xE100000000000000);
  sub_255750C40();
  __break(1u);
}

id RecordUploading.partialCloudKitRecord.getter(uint64_t a1, uint64_t a2)
{
  result = sub_255712AD4(a1, a2);
  if (!result)
  {
    v5 = sub_255712B50(a1, a2);
    if (v6)
    {
      v7 = static RecordUploading.partialCloudKitRecord(recordName:)(v5, v6, a1, a2);

      return v7;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

id RecordUploading.currentChangeTags.getter(uint64_t a1, uint64_t a2)
{
  result = sub_255712AD4(a1, a2);
  if (result)
  {
    v3 = result;
    v4 = [result recordChangeTag];

    if (v4)
    {
      v5 = sub_2557501B0();

      return v5;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2557128E0()
{
  v0 = sub_25574F2C0();
  __swift_allocate_value_buffer(v0, qword_27F7BFB38);
  v1 = __swift_project_value_buffer(v0, qword_27F7BFB38);
  if (qword_27F7BD5C8 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27F7C04E0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id RecordUploading.cloudKitRecordID.getter(uint64_t a1, uint64_t a2)
{
  v4 = sub_255712AD4(a1, a2);
  if (v4)
  {
    v5 = v4;
    v6 = [v4 recordID];

    return v6;
  }

  else
  {
    sub_255712B50(a1, a2);
    if (v8)
    {
      sub_255669A88(0, &qword_27F7BF0D0, 0x277CBC5D0);
      if (qword_27F7BD780 != -1)
      {
        swift_once();
      }

      v9 = [qword_27F7BED98 zoneID];
      return sub_255750740();
    }

    else
    {
      return 0;
    }
  }
}

id sub_255712AD4(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 24))(a1);
  if (v3 >> 60 == 15)
  {
    return 0;
  }

  v5 = v2;
  v6 = v3;
  sub_255669A88(0, &unk_27F7BF070, 0x277CBC5A0);
  return CKRecord.init(systemFields:)(v5, v6);
}

uint64_t sub_255712B50(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED20, &unk_2557551D0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v25 - v6;
  v8 = sub_25574F0D0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = v2;
  sub_255750B20();
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_2556B224C(v7);
    if (qword_27F7BD7E8 != -1)
    {
      swift_once();
    }

    v12 = sub_25574F2C0();
    __swift_project_value_buffer(v12, qword_27F7BFB38);
    swift_unknownObjectRetain();
    v13 = sub_25574F2A0();
    v14 = sub_255750780();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v26 = v16;
      *v15 = 136315394;
      v17 = (*(a2 + 16))(a1, a2);
      v19 = sub_2556E474C(v17, v18, &v26);

      *(v15 + 4) = v19;
      *(v15 + 12) = 2080;
      v25 = v2;
      swift_unknownObjectRetain();
      v20 = sub_2557501D0();
      v22 = sub_2556E474C(v20, v21, &v26);

      *(v15 + 14) = v22;
      _os_log_impl(&dword_255661000, v13, v14, "Can't create %s record name because the object doesn't have an id: %s", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C3F520](v16, -1, -1);
      MEMORY[0x259C3F520](v15, -1, -1);
    }

    return 0;
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
    v24 = sub_25574F040();
    (*(v9 + 8))(v11, v8);
    return v24;
  }
}

uint64_t static RecordUploading.partialCloudKitRecord(recordName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_255669A88(0, &unk_27F7BF070, 0x277CBC5A0);
  (*(a4 + 16))(a3, a4);
  if (qword_27F7BD780 != -1)
  {
    swift_once();
  }

  v6 = qword_27F7BED98;
  sub_255669A88(0, &qword_27F7BF0D0, 0x277CBC5D0);
  v7 = [v6 zoneID];

  sub_255750740();
  return sub_255750910();
}

uint64_t static RecordUploading<>.markAllEntitiesForReuploading(context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a1;
  result = static Identifiable<>.fetchAll(context:)(a1, a2);
  if (!v3)
  {
    v8 = result;
    if (qword_27F7BD7E8 != -1)
    {
      goto LABEL_19;
    }

    while (1)
    {
      v9 = sub_25574F2C0();
      __swift_project_value_buffer(v9, qword_27F7BFB38);

      v10 = sub_25574F2A0();
      v11 = sub_2557507A0();
      v23 = v6;
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v24 = v13;
        *v12 = 134218242;
        *(v12 + 4) = sub_255750410();

        *(v12 + 12) = 2080;
        v14 = sub_255751020();
        v16 = sub_2556E474C(v14, v15, &v24);

        *(v12 + 14) = v16;
        _os_log_impl(&dword_255661000, v10, v11, "Marking all %ld %s objects for reuploading", v12, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v13);
        MEMORY[0x259C3F520](v13, -1, -1);
        MEMORY[0x259C3F520](v12, -1, -1);
      }

      else
      {
      }

      if (!sub_255750410())
      {
        break;
      }

      v17 = *(a3 + 48);
      v6 = a3 + 64;
      for (i = 4; ; ++i)
      {
        v19 = sub_2557503F0();
        sub_2557503A0();
        v20 = (v19 & 1) != 0 ? *(v8 + 8 * i) : sub_255750B50();
        v21 = v20;
        v22 = i - 3;
        if (__OFADD__(i - 4, 1))
        {
          break;
        }

        if (v17(a2, a3))
        {
          [v23 deleteObject_];
        }

        else
        {
          (*(a3 + 32))(0, 0xF000000000000000, a2, a3);
          (*(a3 + 64))(0, a2, a3);
        }

        if (v22 == sub_255750410())
        {
        }
      }

      __break(1u);
LABEL_19:
      swift_once();
    }
  }

  return result;
}

id static JournalEntryAssetMO.objectsToSyncPredicate.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7C0010, "*}");
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_255755050;
  sub_255669A88(0, &qword_27F7BDD58, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED30, qword_255757F10);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_255755060;
  v2 = MEMORY[0x277D837D0];
  *(v1 + 56) = MEMORY[0x277D837D0];
  v3 = sub_255666F5C();
  *(v1 + 64) = v3;
  *(v1 + 32) = 0xD000000000000011;
  *(v1 + 40) = 0x80000002557523D0;
  *(v0 + 32) = sub_255750750();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_255755060;
  *(v4 + 56) = v2;
  *(v4 + 64) = v3;
  *(v4 + 32) = 0xD000000000000012;
  *(v4 + 40) = 0x80000002557523F0;
  *(v0 + 40) = sub_255750750();
  *(v0 + 48) = sub_255750750();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_255755060;
  *(v5 + 56) = v2;
  *(v5 + 64) = v3;
  strcpy((v5 + 32), "assetMetaData");
  *(v5 + 46) = -4864;
  *(v0 + 56) = sub_255750750();
  v6 = sub_255750370();

  v7 = [objc_opt_self() andPredicateWithSubpredicates_];

  return v7;
}

uint64_t sub_2557135D4(uint64_t a1)
{
  result = sub_25571378C(&qword_27F7BFB50, type metadata accessor for JournalEntryMO, &protocol conformance descriptor for JournalEntryMO);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25571362C(uint64_t a1)
{
  result = sub_25571378C(&qword_27F7BFB58, type metadata accessor for JournalMO, &protocol conformance descriptor for JournalMO);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_255713684(uint64_t a1)
{
  result = sub_25571378C(&qword_27F7BEA60, type metadata accessor for AppStorageMO, &protocol conformance descriptor for AppStorageMO);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2557136DC(uint64_t a1)
{
  result = sub_25571378C(&qword_27F7BFB60, type metadata accessor for JournalEntryAssetMO, &protocol conformance descriptor for JournalEntryAssetMO);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_255713734(uint64_t a1)
{
  result = sub_25571378C(&qword_27F7BFB68, type metadata accessor for JournalEntryAssetFileAttachmentMO, &protocol conformance descriptor for JournalEntryAssetFileAttachmentMO);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25571378C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2557138B4(uint64_t a1)
{
  v1 = JournalEntryMO.assetsArrayUnsorted.getter();
  v2 = v1;
  v3 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v1 >> 62)
  {
LABEL_27:
    v4 = sub_255750A30();
  }

  else
  {
    v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  v20 = 0;
  while (2)
  {
    if (v5 != v4)
    {
      while (1)
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x259C3E830](v5, v2);
        }

        else
        {
          if ((v5 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_25:
            __break(1u);
LABEL_26:
            __break(1u);
            goto LABEL_27;
          }

          if (v5 >= *(v3 + 16))
          {
            goto LABEL_26;
          }

          v6 = *(v2 + 8 * v5 + 32);
        }

        v7 = v6;
        v8 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_25;
        }

        v9 = [v6 assetType];
        if (v9)
        {
          v10 = v9;
          v11 = sub_2557501B0();
          v13 = v12;
        }

        else
        {
          v11 = 0;
          v13 = 0xE000000000000000;
        }

        v14._countAndFlagsBits = v11;
        v14._object = v13;
        AssetType.init(rawValue:)(v14);
        v15 = v22 == 23 ? 22 : v22;
        if ((sub_2556C091C(v15, a1) & 1) == 0)
        {
          break;
        }

        ++v5;
        if (v8 == v4)
        {
          goto LABEL_23;
        }
      }

      v16 = v7;
      v17 = sub_255713A4C();

      v5 = v8;
      v18 = __OFADD__(v20, v17);
      v20 += v17;
      if (!v18)
      {
        continue;
      }

      __break(1u);
    }

    break;
  }

LABEL_23:

  return v20;
}

uint64_t sub_255713A4C()
{
  v1 = [v0 fileAttachments];
  if (v1)
  {
    v2 = v1;
    v21[0] = 0;
    type metadata accessor for JournalEntryAssetFileAttachmentMO();
    sub_25571434C(&qword_27F7BFB70, type metadata accessor for JournalEntryAssetFileAttachmentMO);
    sub_255750570();
  }

  if (MEMORY[0x277D84F90] >> 62)
  {
LABEL_20:
    if (sub_255750A30())
    {
      sub_255725CFC(MEMORY[0x277D84F90]);

      goto LABEL_5;
    }
  }

LABEL_5:

  sub_25571425C(v3, sub_2557141FC, 0, type metadata accessor for JournalEntryAssetFileAttachmentMO, &qword_27F7BFB70, type metadata accessor for JournalEntryAssetFileAttachmentMO, v21);
  v4 = 0;
  v5 = v21[0];
  v6 = v21[1];
  v7 = v21[3];
  v8 = v21[4];
  v18 = v21[5];
  v9 = (v21[2] + 64) >> 6;
  do
  {
    if (v5 < 0)
    {
      v15 = sub_255750A60();
      if (!v15)
      {
        goto LABEL_18;
      }

      v19 = v15;
      type metadata accessor for JournalEntryAssetFileAttachmentMO();
      swift_dynamicCast();
      v14 = v20;
      v12 = v7;
      v13 = v8;
      if (!v20)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v10 = v7;
      v11 = v8;
      v12 = v7;
      if (!v8)
      {
        while (1)
        {
          v12 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            break;
          }

          if (v12 >= v9)
          {
            goto LABEL_18;
          }

          v11 = *(v6 + 8 * v12);
          ++v10;
          if (v11)
          {
            goto LABEL_11;
          }
        }

        __break(1u);
        goto LABEL_20;
      }

LABEL_11:
      v13 = (v11 - 1) & v11;
      v14 = *(*(v5 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v11)))));
      if (!v14)
      {
        goto LABEL_18;
      }
    }

    v20 = v14;
    v18(&v19, &v20);

    v7 = v12;
    v8 = v13;
    v16 = __OFADD__(v4, v19);
    v4 += v19;
  }

  while (!v16);
  __break(1u);
LABEL_18:

  sub_25568B1C8(v5);

  return v4;
}

uint64_t sub_255713CDC()
{
  v1 = sub_25574ED80();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v40 = v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_25574EE20();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_25574EF10();
  v8 = *(v39 - 8);
  v9 = MEMORY[0x28223BE20](v39);
  v11 = v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = v34 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = v34 - v15;
  v17 = [v0 filePath];
  if (!v17)
  {
    return 0;
  }

  v36 = v1;
  v18 = v17;
  v37 = sub_2557501B0();
  v38 = v19;

  if (qword_27F7BD7F8 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for FileStoreConfiguration(0);
  v21 = *(__swift_project_value_buffer(v20, qword_27F7BFDF0) + *(v20 + 24));
  v35 = v2;
  if (v21)
  {
    v34[1] = *(v20 + 20);
    v22 = *(v5 + 104);
    v22(v7, *MEMORY[0x277CC91D8], v4);
    sub_255663E98();
    sub_25574EEF0();
    (*(v5 + 8))(v7, v4);
  }

  else
  {
    sub_25574EE50();
    v22 = *(v5 + 104);
  }

  v41 = 0x656D686361747441;
  v42 = 0xEB0000000073746ELL;
  v22(v7, *MEMORY[0x277CC91C0], v4);
  sub_255663E98();
  sub_25574EF00();
  (*(v5 + 8))(v7, v4);
  v23 = *(v8 + 8);
  v24 = v11;
  v25 = v39;
  v23(v24, v39);
  sub_25574EEA0();

  v23(v14, v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFB78, &unk_25575DF60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_255755060;
  v27 = *MEMORY[0x277CBE838];
  *(inited + 32) = *MEMORY[0x277CBE838];
  v28 = v27;
  sub_255667904(inited);
  swift_setDeallocating();
  sub_255663F00(inited + 32);
  v29 = v40;
  sub_25574EE40();

  v30 = sub_25574ED60();
  v32 = v31;
  (*(v35 + 8))(v29, v36);
  v23(v16, v25);
  if ((v32 & 1) == 0)
  {
    return v30;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2557141FC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_255713CDC();
  *a1 = result;
  return result;
}

uint64_t sub_25571425C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, unint64_t *a5@<X4>, uint64_t (*a6)(uint64_t)@<X5>, uint64_t *a7@<X8>)
{
  if ((result & 0xC000000000000001) != 0)
  {
    sub_2557509F0();
    a4(0);
    sub_25571434C(a5, a6);
    sub_2557505C0();
    result = v20;
    v13 = v21;
    v15 = v22;
    v14 = v23;
    v16 = v24;
  }

  else
  {
    v14 = 0;
    v17 = -1;
    v18 = -1 << *(result + 32);
    v13 = result + 56;
    v15 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v17 = ~(-1 << v19);
    }

    v16 = v17 & *(result + 56);
  }

  *a7 = result;
  a7[1] = v13;
  a7[2] = v15;
  a7[3] = v14;
  a7[4] = v16;
  a7[5] = a2;
  a7[6] = a3;
  return result;
}

uint64_t sub_25571434C(unint64_t *a1, uint64_t (*a2)(uint64_t))
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

uint64_t sub_2557143A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_255714868();
  sub_255714680();

  return sub_25574FDD0();
}

void *sub_255714418()
{
  sub_255714868();
  sub_255714814();
  return sub_25574FDF0();
}

uint64_t sub_255714484(uint64_t a1, uint64_t a2)
{
  sub_255714868();
  sub_255714814();
  return sub_25574FE00();
}

uint64_t sub_2557144E0(uint64_t a1)
{
  v2 = sub_255714868();
  v3 = sub_255714814();
  v4 = MEMORY[0x277CFB810];

  return MEMORY[0x28214E330](a1, v2, v3, v4);
}

uint64_t sub_255714598(uint64_t a1, uint64_t a2)
{
  v4 = sub_255714814();
  v5 = MEMORY[0x277CFB810];

  return MEMORY[0x28214E590](a1, a2, v4, v5);
}

uint64_t MergeableTextAlignment.debugDescription.getter()
{
  v1 = *v0;
  v2 = 0x6C61727574616ELL;
  v3 = 0x7468676972;
  v4 = 0x7265746E6563;
  if (v1 != 3)
  {
    v4 = 0x656966697473756ALL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1952867692;
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

unint64_t sub_255714680()
{
  result = qword_27F7BFB80;
  if (!qword_27F7BFB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BFB80);
  }

  return result;
}

unint64_t sub_2557146D8()
{
  result = qword_27F7BFB88;
  if (!qword_27F7BFB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BFB88);
  }

  return result;
}

unint64_t sub_255714730()
{
  result = qword_27F7BFB90;
  if (!qword_27F7BFB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BFB90);
  }

  return result;
}

uint64_t sub_255714784()
{
  v1 = *v0;
  v2 = 0x6C61727574616ELL;
  v3 = 0x7468676972;
  v4 = 0x7265746E6563;
  if (v1 != 3)
  {
    v4 = 0x656966697473756ALL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1952867692;
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

unint64_t sub_255714814()
{
  result = qword_27F7BFB98;
  if (!qword_27F7BFB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BFB98);
  }

  return result;
}

unint64_t sub_255714868()
{
  result = qword_27F7BFBA0;
  if (!qword_27F7BFBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BFBA0);
  }

  return result;
}