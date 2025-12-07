uint64_t (*sub_214F61108(void *a1))(__int128 *)
{
  v2 = v1;
  v4 = type metadata accessor for NoteEditActivityEvent.Parents(0);
  MEMORY[0x28223BE20](v4, v5);
  v7 = (v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD0, &unk_2150C2740);
  v10 = MEMORY[0x28223BE20](v8 - 8, v9);
  v12 = v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v13);
  v15 = v54 - v14;
  v16 = sub_2150A3960();
  v17 = *(v16 - 8);
  v19 = MEMORY[0x28223BE20](v16, v18);
  v21 = v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v22);
  v24 = v54 - v23;
  v25 = [v2 recentUpdatesGenerationDate];
  if (v25)
  {
    v26 = v25;
    sub_2150A3930();

    (*(v17 + 32))(v24, v21, v16);
    if (a1)
    {
      v54[2] = v4;
      v27 = ICCloudSyncingObject.sharedRootActivityEvents.getter();
      MEMORY[0x28223BE20](v27, v28);
      v54[-2] = v24;
      v56 = sub_214F5FE18(sub_214F738C0, &v54[-4], v29);
      v30 = ICCloudSyncingObject.persistedActivityEvents.getter();
      MEMORY[0x28223BE20](v30, v31);
      v54[-2] = v24;
      v55 = sub_214F5FE18(sub_214F73784, &v54[-4], v32);
      objc_opt_self();
      v33 = swift_dynamicCastObjCClass();
      if (v33)
      {
        v34 = v33;
        v54[1] = 0;
        (*(v17 + 16))(v15, v24, v16);
        v35 = v12;
        v36 = *(v17 + 56);
        v36(v15, 0, 1, v16);
        v36(v35, 1, 1, v16);
        v37 = [v34 mergeableString];
        objc_opt_self();
        v38 = swift_dynamicCastObjCClass();
        if (v38)
        {
          v39 = v38;
          *v7 = v34;
          swift_storeEnumTagMultiPayload();
          v40 = a1;
          v41 = _s11NotesShared21NoteEditActivityEventV6events3for2in14afterTimestamp06recentK0SayACGSo29ICTTMergeableAttributedStringC_AC7ParentsO10Foundation4DateVSgAQtFZ_0(v39, v7, v15, v35);

          sub_214F73828(v7, type metadata accessor for NoteEditActivityEvent.Parents);
        }

        else
        {

          v41 = MEMORY[0x277D84F90];
        }

        sub_214F302D4(v35, &qword_27CA41DD0, &unk_2150C2740);
        sub_214F302D4(v15, &qword_27CA41DD0, &unk_2150C2740);
        v45 = [v34 visibleAttachments];
        sub_214D55670(0, &qword_27CA44A30, off_278192998);
        sub_214F737A4();
        v46 = sub_2150A52E0();

        MEMORY[0x28223BE20](v47, v48);
        v54[-2] = v24;
        sub_215068F64(sub_214F7380C, &v54[-4], v46);
        v50 = v49;

        v57 = v56;
        sub_21506873C(v55);
        v51 = sub_215067EF4(v41);

        sub_21506873C(v51);
        v52 = sub_215067EF4(v50);

        sub_21506873C(v52);
        v42 = v57;
        goto LABEL_12;
      }

      v43 = v55;
      v44 = v56;
    }

    else
    {
      v43 = MEMORY[0x277D84F90];
      v44 = MEMORY[0x277D84F90];
    }

    v58 = v44;
    sub_21506873C(v43);
    v42 = v58;
LABEL_12:
    (*(v17 + 8))(v24, v16);
    return v42;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_214F6163C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_214F616E4(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  return (*(v2 + 8))(v1, v2);
}

uint64_t sub_214F6173C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2150A3960();
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, a1);
  v9 = *(a2 + 24);
  v10 = *(a2 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a2, v9);
  return (*(v10 + 16))(v7, v9, v10);
}

uint64_t sub_214F61838(void *a1, uint64_t a2)
{
  v3 = sub_2150A3960();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  (*(v9 + 8))(v8, v9);
  LOBYTE(a1) = sub_2150A3900();
  (*(v4 + 8))(v7, v3);
  return a1 & 1;
}

uint64_t sub_214F61958@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD0, &unk_2150C2740);
  v8 = MEMORY[0x28223BE20](v6 - 8, v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v20 - v12;
  v14 = *a1;
  v15 = sub_2150A3960();
  v16 = *(v15 - 8);
  (*(v16 + 16))(v13, a2, v15);
  v17 = *(v16 + 56);
  v17(v13, 0, 1, v15);
  v17(v10, 1, 1, v15);
  v18 = _s11NotesShared21NoteEditActivityEventV6events3for14afterTimestamp06recentJ0SayACGSo12ICAttachmentC_10Foundation4DateVSgANtFZ_0(v14, v13, v10);
  sub_214F302D4(v10, &qword_27CA41DD0, &unk_2150C2740);
  result = sub_214F302D4(v13, &qword_27CA41DD0, &unk_2150C2740);
  *a3 = v18;
  return result;
}

id ICActivityStreamDigest.recentUpdatesFilter.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD0, &unk_2150C2740);
  v4 = MEMORY[0x28223BE20](v2 - 8, v3);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v4, v7);
  v45 = &v43 - v9;
  v11 = MEMORY[0x28223BE20](v8, v10);
  v46 = &v43 - v12;
  v14 = MEMORY[0x28223BE20](v11, v13);
  v16 = &v43 - v15;
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v43 - v18;
  v20 = sub_2150A3960();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20, v22);
  v24 = &v43 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([v0 recentActivityEventsStorage])
  {
    sub_2150A58F0();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v48, 0, sizeof(v48));
  }

  v47[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42178, &qword_2150C6010);
  v47[0] = swift_allocObject();
  sub_214F43C14(v48, v47[0] + 16, &qword_27CA42178, &qword_2150C6010);
  v25 = sub_214F6DE50(v47, &unk_27CA44A20, &qword_2150CD760, qword_27CA42278, &unk_2150C36C0);
  sub_214F302D4(v48, &qword_27CA42178, &qword_2150C6010);
  __swift_destroy_boxed_opaque_existential_0(v47);
  if (!*(v25 + 16))
  {

    (*(v21 + 56))(v19, 1, 1, v20);
    goto LABEL_9;
  }

  v43 = v16;
  v44 = v6;
  sub_214F6163C(v25 + 32, v49);

  v26 = v50;
  v27 = v51;
  __swift_project_boxed_opaque_existential_1(v49, v50);
  (*(v27 + 8))(v26, v27);
  v28 = *(v21 + 56);
  v28(v19, 0, 1, v20);
  __swift_destroy_boxed_opaque_existential_0(v49);
  v29 = *(v21 + 48);
  if (v29(v19, 1, v20) == 1)
  {
LABEL_9:
    sub_214F302D4(v19, &qword_27CA41DD0, &unk_2150C2740);
    return 0;
  }

  (*(v21 + 32))(v24, v19, v20);
  v30 = [v1 recentUpdatesGenerationDate];
  if (v30)
  {
    v31 = v43;
    v32 = v30;
    sub_2150A3930();

    v33 = 0;
    v34 = v46;
  }

  else
  {
    v33 = 1;
    v34 = v46;
    v31 = v43;
  }

  v28(v31, v33, 1, v20);
  v36 = *(v21 + 16);
  v46 = v24;
  v36(v34, v24, v20);
  v37 = v34;
  v28(v34, 0, 1, v20);
  v35 = [objc_allocWithZone(ICTTTextEditFilter) init];
  [v35 setAllowedUserIDs_];
  [v35 setAllowedAttachmentIDs_];
  [v35 setAllowsMissingTimestamps_];
  [v35 setAllowsMissingUsers_];
  v38 = v45;
  sub_214F43C14(v31, v45, &qword_27CA41DD0, &unk_2150C2740);
  v39 = 0;
  if (v29(v38, 1, v20) != 1)
  {
    v39 = sub_2150A38F0();
    (*(v21 + 8))(v38, v20);
  }

  [v35 setFromDate_];

  v40 = v44;
  sub_214F43C14(v37, v44, &qword_27CA41DD0, &unk_2150C2740);
  if (v29(v40, 1, v20) == 1)
  {
    v41 = 0;
  }

  else
  {
    v41 = sub_2150A38F0();
    (*(v21 + 8))(v40, v20);
  }

  [v35 setToDate_];

  sub_214F302D4(v37, &qword_27CA41DD0, &unk_2150C2740);
  sub_214F302D4(v31, &qword_27CA41DD0, &unk_2150C2740);
  (*(v21 + 8))(v46, v20);
  return v35;
}

uint64_t sub_214F6211C(void *a1)
{
  if ([v1 resolverStorage])
  {
    sub_2150A58F0();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v27, 0, sizeof(v27));
  }

  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42178, &qword_2150C6010);
  v24[0] = swift_allocObject();
  sub_214F43C14(v27, v24[0] + 16, &qword_27CA42178, &qword_2150C6010);
  sub_214F6C88C(v24);
  v4 = v3;
  sub_214F302D4(v27, &qword_27CA42178, &qword_2150C6010);
  __swift_destroy_boxed_opaque_existential_0(v24);
  ObjectType = swift_getObjectType();
  v6 = (*(v4 + 8))(ObjectType, v4);
  swift_unknownObjectRelease();
  if (!v6)
  {
    return MEMORY[0x277D84F90];
  }

  v7 = ICCloudSyncingObject.activityEvents.getter();

  v8 = *(v7 + 16);
  if (!v8)
  {
    v11 = MEMORY[0x277D84F90];
LABEL_18:

    return v11;
  }

  v9 = 0;
  v10 = v7 + 32;
  v11 = MEMORY[0x277D84F90];
  v23 = v7;
  while (v9 < *(v7 + 16))
  {
    sub_214F6163C(v10, v27);
    if (sub_214F6243C(v27, a1))
    {
      sub_214D7A458(v27, v24);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v28 = v11;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_214F86DA0(0, *(v11 + 16) + 1, 1);
        v11 = v28;
      }

      v14 = *(v11 + 16);
      v13 = *(v11 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_214F86DA0((v13 > 1), v14 + 1, 1);
      }

      v15 = v25;
      v16 = v26;
      v17 = __swift_mutable_project_boxed_opaque_existential_1(v24, v25);
      MEMORY[0x28223BE20](v17, v17);
      v19 = &v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v20 + 16))(v19);
      sub_214F71418(v14, v19, &v28, v15, v16);
      __swift_destroy_boxed_opaque_existential_0(v24);
      v11 = v28;
      v7 = v23;
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_0(v27);
    }

    ++v9;
    v10 += 40;
    if (v8 == v9)
    {
      goto LABEL_18;
    }
  }

  __break(1u);

  __swift_destroy_boxed_opaque_existential_0(v27);

  __break(1u);
  return result;
}

BOOL sub_214F6243C(void *a1, void *a2)
{
  v4 = sub_2150A3960();
  v52 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4, v5);
  v50 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v51 = &v50 - v10;
  v12 = MEMORY[0x28223BE20](v9, v11);
  v53 = &v50 - v13;
  v15 = MEMORY[0x28223BE20](v12, v14);
  v17 = &v50 - v16;
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v50 - v19;
  v21 = [a2 allowedUserIDs];
  result = 0;
  if (!v21 || (v22 = v21, v23 = sub_2150A52E0(), v22, v25 = a1[3], v24 = a1[4], __swift_project_boxed_opaque_existential_1(a1, v25), (*(v24 + 48))(v54, v25, v24), v26 = v54[0], v27 = v54[1], , LOBYTE(v26) = sub_215051570(v26, v27, v23), , , (v26 & 1) != 0))
  {
    v28 = [a2 allowedAttachmentIDs];
    if (!v28 || (v29 = v28, v30 = sub_2150A52E0(), v29, v31 = a1[3], v32 = a1[4], __swift_project_boxed_opaque_existential_1(a1, v31), v33 = (*(v32 + 56))(v31, v32), LOBYTE(v31) = sub_214F6288C(v33, v30), , , (v31 & 1) == 0))
    {
      v34 = [a2 fromDate];
      v35 = v52;
      if (!v34 || (v36 = v34, sub_2150A3930(), v36, (*(v35 + 32))(v20, v17, v4), v37 = a1[3], v38 = a1[4], __swift_project_boxed_opaque_existential_1(a1, v37), v39 = v53, (*(v38 + 8))(v37, v38), sub_214F73628(), LOBYTE(v37) = sub_2150A4A30(), v40 = *(v35 + 8), v40(v39, v4), v40(v20, v4), (v37 & 1) == 0))
      {
        v41 = [a2 toDate];
        if (!v41)
        {
          return 1;
        }

        v42 = v50;
        v43 = v41;
        sub_2150A3930();

        v44 = v51;
        (*(v35 + 32))(v51, v42, v4);
        v45 = a1[3];
        v46 = a1[4];
        __swift_project_boxed_opaque_existential_1(a1, v45);
        v47 = v53;
        (*(v46 + 8))(v45, v46);
        sub_214F73628();
        LOBYTE(v45) = sub_2150A4A30();
        v48 = *(v35 + 8);
        v48(v47, v4);
        v48(v44, v4);
        if ((v45 & 1) == 0)
        {
          return 1;
        }
      }
    }
  }

  return result;
}

uint64_t sub_214F6288C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 1;
  }

  v3 = *(a1 + 16);
  if (!v3)
  {
    return 1;
  }

  if (v2 >= v3)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  v5 = v4 + 56;
  if (v2 >= v3)
  {
    v6 = a2;
  }

  else
  {
    v6 = a1;
  }

  v7 = 1 << *(v4 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v4 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = v6 + 56;

  v13 = 0;
  v25 = v4;
  while (v9)
  {
    v14 = v9;
LABEL_19:
    v9 = (v14 - 1) & v14;
    if (*(v6 + 16))
    {
      v16 = (*(v4 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v14)))));
      v18 = *v16;
      v17 = v16[1];
      sub_2150A64B0();

      sub_2150A4BB0();
      v19 = sub_2150A64E0();
      v20 = -1 << *(v6 + 32);
      v21 = v19 & ~v20;
      if ((*(v11 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
      {
        v22 = ~v20;
        while (1)
        {
          v23 = (*(v6 + 48) + 16 * v21);
          v24 = *v23 == v18 && v23[1] == v17;
          if (v24 || (sub_2150A6270() & 1) != 0)
          {
            break;
          }

          v21 = (v21 + 1) & v22;
          if (((*(v11 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
          {
            goto LABEL_28;
          }
        }

        return 0;
      }

LABEL_28:

      v4 = v25;
    }
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v10)
    {

      return 1;
    }

    v14 = *(v5 + 8 * v15);
    ++v13;
    if (v14)
    {
      v13 = v15;
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

uint64_t ICActivityStreamDigest.hasUnseenHighlights.getter()
{
  if ([v0 objc_hasUnseenSummary])
  {
    ICActivityStreamDigest.recentUpdatesRange.getter();
    v2 = v1 ^ 1;
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

char *ICActivityStreamDigest.recentUpdatesRange.getter()
{
  v1 = v0;
  if ([v0 resolverStorage])
  {
    sub_2150A58F0();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v28, 0, sizeof(v28));
  }

  v27[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42178, &qword_2150C6010);
  v27[0] = swift_allocObject();
  sub_214F43C14(v28, v27[0] + 16, &qword_27CA42178, &qword_2150C6010);
  sub_214F6C88C(v27);
  v3 = v2;
  sub_214F302D4(v28, &qword_27CA42178, &qword_2150C6010);
  __swift_destroy_boxed_opaque_existential_0(v27);
  ObjectType = swift_getObjectType();
  v5 = (*(v3 + 8))(ObjectType, v3);
  swift_unknownObjectRelease();
  if (!v5)
  {
    return 0;
  }

  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (!v6 || (v7 = v6, (v8 = [v1 objc_recentUpdatesFilter]) == 0))
  {

    return 0;
  }

  v9 = v8;
  v10 = [objc_allocWithZone(ICTTTextEditGrouper) initWithNote_];
  [v10 setJoinsWhitespaceAndNewlineGaps_];
  [v10 setFilter_];
  v11 = [v10 groupedEdits];
  sub_214D55670(0, &qword_27CA42180, off_278193000);
  v12 = sub_2150A4ED0();

  if (!(v12 >> 62))
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13)
    {
      goto LABEL_9;
    }

LABEL_21:

    v16 = MEMORY[0x277D84F90];
LABEL_22:
    v25 = sub_215062A98(v16);

    return v25;
  }

  v13 = sub_2150A59D0();
  if (!v13)
  {
    goto LABEL_21;
  }

LABEL_9:
  v26 = v5;
  *&v28[0] = MEMORY[0x277D84F90];
  result = sub_214F86ECC(0, v13 & ~(v13 >> 63), 0);
  if ((v13 & 0x8000000000000000) == 0)
  {
    v15 = 0;
    v16 = *&v28[0];
    do
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x216062780](v15, v12);
      }

      else
      {
        v17 = *(v12 + 8 * v15 + 32);
      }

      v18 = v17;
      v19 = [v17 range];
      v21 = v20;

      *&v28[0] = v16;
      v23 = *(v16 + 16);
      v22 = *(v16 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_214F86ECC((v22 > 1), v23 + 1, 1);
        v16 = *&v28[0];
      }

      ++v15;
      *(v16 + 16) = v23 + 1;
      v24 = v16 + 16 * v23;
      *(v24 + 32) = v19;
      *(v24 + 40) = v21;
    }

    while (v13 != v15);

    v5 = v26;
    goto LABEL_22;
  }

  __break(1u);
  return result;
}

uint64_t ICActivityStreamDigest.hasUnseenSummary.getter()
{
  v1 = v0;
  ObjectType = v83;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD0, &unk_2150C2740);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v64 - v5;
  v7 = sub_2150A6540();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2150A3960();
  v13 = *(v12 - 8);
  v15 = MEMORY[0x28223BE20](v12, v14);
  v67 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v64 - v18;
  v74 = v1;
  if ([v1 recentActivityEventsStorage])
  {
    sub_2150A58F0();
    swift_unknownObjectRelease();
  }

  else
  {
    v84 = 0u;
    v85 = 0u;
  }

  v68 = v19;
  v69 = v13;
  v70 = v12;
  v71 = v6;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42178, &qword_2150C6010);
  v78 = v73;
  v77[0] = swift_allocObject();
  sub_214F43C14(&v84, v77[0] + 16, &qword_27CA42178, &qword_2150C6010);
  v20 = sub_214F6DE50(v77, &unk_27CA44A20, &qword_2150CD760, qword_27CA42278, &unk_2150C36C0);
  sub_214F302D4(&v84, &qword_27CA42178, &qword_2150C6010);
  __swift_destroy_boxed_opaque_existential_0(v77);
  v72 = *(v20 + 16);
  if (!v72)
  {
    v23 = MEMORY[0x277D84F90];
LABEL_27:

    v45 = [v74 lastActivitySummaryViewedDate];
    if (v45)
    {
      v46 = v68;
      v47 = v45;
      sub_2150A3930();

      if (*(v23 + 16))
      {
        sub_214F6163C(v23 + 32, &v84);

        v48 = *(&v85 + 1);
        v49 = v86;
        __swift_project_boxed_opaque_existential_1(&v84, *(&v85 + 1));
        v50 = v71;
        (*(v49 + 8))(v48, v49);
        v51 = v69;
        v52 = v70;
        (*(v69 + 56))(v50, 0, 1, v70);
        __swift_destroy_boxed_opaque_existential_0(&v84);
        if ((*(v51 + 48))(v50, 1, v52) != 1)
        {
          v56 = v67;
          (*(v51 + 32))(v67, v50, v52);
          v53 = sub_2150A3820();
          v57 = *(v51 + 8);
          v57(v56, v52);
          v57(v46, v52);
          return v53 & 1;
        }

        (*(v51 + 8))(v46, v52);
      }

      else
      {
        v54 = v69;
        v55 = v70;
        (*(v69 + 8))(v46, v70);

        v50 = v71;
        (*(v54 + 56))(v71, 1, 1, v55);
      }

      sub_214F302D4(v50, &qword_27CA41DD0, &unk_2150C2740);
      v53 = 0;
    }

    else
    {

      v53 = 0;
    }

    return v53 & 1;
  }

  v64 = v11;
  v65 = v8;
  v66 = v7;
  v21 = 0;
  v22 = v20 + 32;
  v23 = MEMORY[0x277D84F90];
  while (v21 < *(v20 + 16))
  {
    sub_214F6163C(v22, &v84);
    v24 = *(&v85 + 1);
    v25 = v86;
    __swift_project_boxed_opaque_existential_1(&v84, *(&v85 + 1));
    (*(v25 + 48))(v77, v24, v25);
    v75 = v77[0];
    v26 = v77[1];
    v76 = v78;
    if ([v74 resolverStorage])
    {
      sub_2150A58F0();
      swift_unknownObjectRelease();
    }

    else
    {
      memset(v83, 0, sizeof(v83));
    }

    v27 = v20;
    v82[3] = v73;
    v82[0] = swift_allocObject();
    sub_214F43C14(v83, v82[0] + 16, &qword_27CA42178, &qword_2150C6010);
    ObjectType = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42188, &qword_2150C34A8);
    sub_214F50074(v82, v81);
    if (!swift_dynamicCast())
    {
      goto LABEL_37;
    }

    v28 = v80[1];
    sub_214F302D4(v83, &qword_27CA42178, &qword_2150C6010);
    __swift_destroy_boxed_opaque_existential_0(v82);
    ObjectType = swift_getObjectType();
    v29 = *(v28 + 8);

    v30 = v29(ObjectType, v28);
    if (!v30 || (v31 = v30, ObjectType = [v30 cloudAccount], v31, !ObjectType))
    {
      swift_bridgeObjectRelease_n();
      swift_unknownObjectRelease();

      v20 = v27;
LABEL_21:
      sub_214D7A458(&v84, v77);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v87 = v23;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_214F86DA0(0, *(v23 + 16) + 1, 1);
        v23 = v87;
      }

      v38 = *(v23 + 16);
      v37 = *(v23 + 24);
      if (v38 >= v37 >> 1)
      {
        sub_214F86DA0((v37 > 1), v38 + 1, 1);
      }

      v39 = v78;
      v40 = v79;
      v41 = __swift_mutable_project_boxed_opaque_existential_1(v77, v78);
      MEMORY[0x28223BE20](v41, v41);
      v43 = &v64 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v44 + 16))(v43);
      sub_214F71418(v38, v43, &v87, v39, v40);
      __swift_destroy_boxed_opaque_existential_0(v77);
      v23 = v87;
      goto LABEL_8;
    }

    v32 = [ObjectType userRecordName];

    v33 = sub_2150A4AD0();
    ObjectType = v34;

    v20 = v27;
    if (v75 == v33 && v26 == ObjectType)
    {

      swift_bridgeObjectRelease_n();
      swift_unknownObjectRelease();
    }

    else
    {
      v35 = sub_2150A6270();

      swift_bridgeObjectRelease_n();
      swift_unknownObjectRelease();

      if ((v35 & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    __swift_destroy_boxed_opaque_existential_0(&v84);
LABEL_8:
    ++v21;
    v22 += 40;
    if (v72 == v21)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_37:
  v81[0] = 0;
  v81[1] = 0xE000000000000000;
  sub_2150A5B20();

  strcpy(v80, "Cannot cast ");
  BYTE5(v80[1]) = 0;
  HIWORD(v80[1]) = -5120;
  sub_214F50074(v82, v81);
  v59 = v64;
  sub_2150A64F0();
  v60 = v66;
  v61 = sub_2150A6100();
  MEMORY[0x2160617E0](v61);

  v62 = *(v65 + 8);
  v62(v59, v60);
  MEMORY[0x2160617E0](544432416, 0xE400000000000000);
  v81[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42190, &qword_2150C34B0);
  v81[0] = ObjectType;
  sub_2150A64F0();
  v63 = sub_2150A6100();
  MEMORY[0x2160617E0](v63);

  v62(v59, v60);
  result = sub_2150A5E10();
  __break(1u);
  return result;
}

BOOL ICActivityStreamDigest.hasRecentUpdates.getter()
{
  if ([v0 recentActivityEventsStorage])
  {
    sub_2150A58F0();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
  }

  *(&v8 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42178, &qword_2150C6010);
  *&v7 = swift_allocObject();
  sub_214F43C14(v6, v7 + 16, &qword_27CA42178, &qword_2150C6010);
  v1 = sub_214F6DE50(&v7, &unk_27CA44A20, &qword_2150CD760, qword_27CA42278, &unk_2150C36C0);
  sub_214F302D4(v6, &qword_27CA42178, &qword_2150C6010);
  __swift_destroy_boxed_opaque_existential_0(&v7);
  LOBYTE(v4[0]) = 1;
  ICActivityStreamDigest.summary(for:format:)(v1, v4, &v7);

  v4[0] = v7;
  v4[1] = v8;
  v5[0] = v9[0];
  *(v5 + 9) = *(v9 + 9);
  v2 = v8;
  if (v8)
  {
    sub_214F302D4(v4, &qword_27CA42198, &qword_2150C34B8);
  }

  return v2 != 0;
}

uint64_t ICActivityStreamDigest.summary(for:format:)@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, _OWORD *a3@<X8>)
{
  v140 = a3;
  v5 = sub_2150A6540();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v132 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a2;
  v162 = MEMORY[0x277D84F90];
  swift_getKeyPath();
  *&v160 = a1;

  v11 = &v160;
  v12 = 0;
  sub_214F6E43C(sub_214F73888, 0, sub_214F422B8, sub_214F6E5B0);
  v132 = v9;
  v133 = v6;
  v134 = v5;

  v13 = v160;
  LOBYTE(v160) = v10;
  v152 = sub_214F72134(v13, &v160);
  v145 = v10;
  LOBYTE(v160) = v10;
  v148 = sub_214F71610(v13);
  v146 = v14;
  v147 = v13;
  v15 = sub_214F724EC(v13);
  v18 = *(v15 + 2);
  if (v18)
  {
    v19 = 0;
    v150 = *(v15 + 2);
    v144 = (v18 - 1);
    v20 = (v15 + 56);
    v143 = MEMORY[0x277D84F90];
    v151 = v15;
    v142 = v15 + 56;
    do
    {
      v21 = (v20 + 32 * v19);
      v22 = v19;
      while (1)
      {
        v23 = *(v15 + 2);
        if (v22 >= v23)
        {
          __break(1u);
LABEL_123:
          __break(1u);
          goto LABEL_124;
        }

        v24 = *(v21 - 3);
        v5 = *(v21 - 2);
        v25 = *(v21 - 1);
        v6 = *v21;
        v19 = (v22 + 1);
        *&v160 = v24;
        *(&v160 + 1) = v5;
        *&v161 = v25;
        *(&v161 + 1) = v6;
        MEMORY[0x28223BE20](v15, v16);
        v11 = (&v132 - 4);
        v130 = &v160;

        if ((sub_215068340(sub_214F72F00, (&v132 - 4), v152) & 1) == 0)
        {
          break;
        }

        v21 += 4;
        ++v22;
        v15 = v151;
        if (v150 == v19)
        {
          goto LABEL_15;
        }
      }

      v11 = v143;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v158[0] = v11;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_214F86EEC(0, v11[2] + 1, 1);
        v11 = v158[0];
      }

      v28 = v11[2];
      v27 = v11[3];
      if (v28 >= v27 >> 1)
      {
        sub_214F86EEC((v27 > 1), v28 + 1, 1);
        v11 = v158[0];
      }

      v11[2] = v28 + 1;
      v143 = v11;
      v29 = &v11[4 * v28];
      v29[4] = v24;
      v29[5] = v5;
      v29[6] = v25;
      v29[7] = v6;
      v15 = v151;
      v20 = v142;
    }

    while (v144 != v22);
  }

  else
  {
    v143 = MEMORY[0x277D84F90];
  }

LABEL_15:

  v19 = v147;
  v11 = sub_214F72F1C(v147);

  v31 = v11;
  v32 = v11[2];
  if (v32)
  {
    v33 = 0;
    v150 = v11[2];
    v147 = v32 - 1;
    v34 = (v11 + 7);
    v142 = MEMORY[0x277D84F90];
    v144 = (v11 + 7);
    do
    {
      v21 = &v34[32 * v33];
      v35 = v33;
      while (1)
      {
        v23 = *(v31 + 2);
        if (v35 >= v23)
        {
          goto LABEL_123;
        }

        v6 = v31;
        v151 = &v132;
        v36 = *(v21 - 3);
        v19 = *(v21 - 2);
        v37 = *(v21 - 1);
        v5 = *v21;
        v33 = v35 + 1;
        *&v160 = v36;
        *(&v160 + 1) = v19;
        *&v161 = v37;
        *(&v161 + 1) = v5;
        MEMORY[0x28223BE20](v31, v30);
        v11 = (&v132 - 4);
        v130 = &v160;

        if ((sub_215068340(sub_214F738DC, (&v132 - 4), v152) & 1) == 0)
        {
          break;
        }

        v21 += 4;
        ++v35;
        v31 = v6;
        if (v150 == v33)
        {
          goto LABEL_29;
        }
      }

      v11 = v142;
      v38 = swift_isUniquelyReferenced_nonNull_native();
      v158[0] = v11;
      if ((v38 & 1) == 0)
      {
        sub_214F86EEC(0, v11[2] + 1, 1);
        v11 = v158[0];
      }

      v31 = v6;
      v40 = v11[2];
      v39 = v11[3];
      v6 = v40 + 1;
      if (v40 >= v39 >> 1)
      {
        v151 = v31;
        sub_214F86EEC((v39 > 1), v40 + 1, 1);
        v31 = v151;
        v11 = v158[0];
      }

      v11[2] = v6;
      v142 = v11;
      v41 = &v11[4 * v40];
      v41[4] = v36;
      v41[5] = v19;
      v41[6] = v37;
      v41[7] = v5;
      v34 = v144;
    }

    while (v147 != v35);
  }

  else
  {
    v142 = MEMORY[0x277D84F90];
  }

LABEL_29:

  LOBYTE(v160) = v145;
  v42 = sub_214F65C74(v152, &v160);
  LOBYTE(v5) = v43 != 0;
  if (!v43)
  {

    v144 = MEMORY[0x277D84F90];
    goto LABEL_33;
  }

  v19 = v42;
  v11 = v43;
  v17 = sub_21505F4D0(0, 1, 1, MEMORY[0x277D84F90]);
  v6 = *(v17 + 2);
  v23 = *(v17 + 3);
  v21 = (v6 + 1);
  if (v6 >= v23 >> 1)
  {
    goto LABEL_126;
  }

  while (1)
  {
    *(v17 + 2) = v21;
    v144 = v17;
    v44 = &v17[16 * v6];
    *(v44 + 4) = v19;
    *(v44 + 5) = v11;
    sub_215068790(v152);
LABEL_33:
    v45 = v145;
    LOBYTE(v160) = v145;
    v21 = v148;

    v6 = v146;

    v137 = sub_214F66AC8(v21, v6, &v160);
    v11 = v46;

    v138 = v11;
    if (!v11)
    {

      v58 = v45;
      if (v45)
      {
LABEL_101:
        v91 = sub_214F6BEE0(v143);
        if (v92)
        {
          v93 = v91;
          v94 = v92;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v95 = v144;
          }

          else
          {
            v95 = sub_21505F4D0(0, *(v144 + 2) + 1, 1, v144);
          }

          v97 = *(v95 + 2);
          v96 = *(v95 + 3);
          v98 = v143;
          if (v97 >= v96 >> 1)
          {
            v95 = sub_21505F4D0((v96 > 1), v97 + 1, 1, v95);
            v98 = v143;
          }

          *(v95 + 2) = v97 + 1;
          v99 = &v95[16 * v97];
          *(v99 + 4) = v93;
          *(v99 + 5) = v94;
          goto LABEL_114;
        }

        v100 = sub_214F6C788(v142);
        if (v101)
        {
          v102 = v100;
          v103 = v101;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v144 = sub_21505F4D0(0, *(v144 + 2) + 1, 1, v144);
          }

          v98 = v142;
          v95 = v144;
          v105 = *(v144 + 2);
          v104 = *(v144 + 3);
          if (v105 >= v104 >> 1)
          {
            v95 = sub_21505F4D0((v104 > 1), v105 + 1, 1, v144);
            v98 = v142;
          }

          *(v95 + 2) = v105 + 1;
          v106 = &v95[16 * v105];
          *(v106 + 4) = v102;
          *(v106 + 5) = v103;
LABEL_114:
          v107 = v95;
          sub_215068790(v98);
          v58 = v145;
          v108 = *(v107 + 2);
          if (v108)
          {
            goto LABEL_118;
          }

          goto LABEL_115;
        }
      }

      else
      {
      }

      goto LABEL_117;
    }

    v47 = *(v6 + 16);
    if (v47)
    {
      break;
    }

    v135 = 1;
LABEL_57:
    v59 = v21[2];

    if (!v59)
    {
      v61 = MEMORY[0x277D84F90];
LABEL_82:

      if (v135)
      {
        v85 = 0;
        goto LABEL_84;
      }

      if (*(v61 + 16))
      {
        *&v160 = v146;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA421A0, &qword_2150C34C0);
        sub_214F43BCC(&qword_27CA421A8, &qword_27CA421A0, &qword_2150C34C0, MEMORY[0x277D83970]);
        sub_214F733BC();
        v88 = *(sub_2150A4D50() + 16);

        if (v88 == 2)
        {
          v85 = 1;
          v21 = v148;
          if (v145)
          {
            goto LABEL_92;
          }
        }

        else
        {
          *&v160 = v148;
          v21 = v148;
          v89 = *(sub_2150A4D50() + 16);

          v85 = v89 == 2;
          if (v145)
          {
            goto LABEL_92;
          }
        }

LABEL_84:
        v86 = *(v144 + 2);
        v87 = v86;
      }

      else
      {
        v85 = 0;
        if (!v145)
        {
          goto LABEL_84;
        }

LABEL_92:
        v87 = 0;
        v86 = *(v144 + 2);
      }

      v90 = swift_isUniquelyReferenced_nonNull_native();
      v158[0] = v144;
      if (!v90 || v86 >= *(v144 + 3) >> 1)
      {
        v144 = sub_21505F4D0(v90, v86 + 1, 1, v144);
        v158[0] = v144;
      }

      sub_214F732D8(v87, v87, 1, v137, v138);

      if (v85)
      {
      }

      else
      {

        v61 = v21;
      }

      sub_215068790(v61);
      v58 = v145;
      if (v145)
      {
        LOBYTE(v5) = 1;
        goto LABEL_101;
      }

      LOBYTE(v5) = 1;
LABEL_117:
      v107 = v144;
      v108 = *(v144 + 2);
      if (v108)
      {
LABEL_118:
        if ((v58 & 1) == 0 && v108 != 1)
        {
          sub_214F6E4D8(v107, (v107 + 32), 0, 3uLL);
          v112 = v111;

          v107 = v112;
        }

        *&v160 = v107;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DE0, &qword_2150C2910);
        sub_214F43BCC(&qword_280C24540, &qword_27CA41DE0, &qword_2150C2910, MEMORY[0x277D83958]);
        v113 = sub_2150A4A20();
        v115 = v114;

        sub_214F65078(v162, &v160);

        v116 = v160;
        v117 = BYTE8(v160);
        v118 = BYTE9(v160);
        v119 = v161;
        v120 = v140;
        *v140 = v145;
        *(v120 + 1) = v113;
        *(v120 + 2) = v115;
        *(v120 + 3) = v116;
        *(v120 + 32) = v117;
        *(v120 + 33) = v118;
        *(v120 + 40) = v119;
        *(v120 + 56) = v5;
        return result;
      }

LABEL_115:

      v110 = v140;
      *(v140 + 41) = 0u;
      v110[1] = 0u;
      v110[2] = 0u;
      *v110 = 0u;
      return result;
    }

    v60 = 0;
    v136 = v59 - 1;
    v61 = MEMORY[0x277D84F90];
    v139 = v21 + 7;
    v62 = &qword_27CA42178;
    v6 = &qword_2150C6010;
LABEL_59:
    v141 = v61;
    v63 = &v139[4 * v60];
    v19 = v60;
    while (1)
    {
      v23 = v21[2];
      if (v19 >= v23)
      {
        break;
      }

      v64 = *(v63 - 3);
      v150 = v12;
      v151 = v64;
      v65 = *(v63 - 2);
      v147 = *(v63 - 1);
      v66 = *v63;

      v152 = v65;

      if ([v149 resolverStorage])
      {
        sub_2150A58F0();
        swift_unknownObjectRelease();
      }

      else
      {
        v160 = 0u;
        v161 = 0u;
      }

      v159 = __swift_instantiateConcreteTypeFromMangledNameV2(v62, v6);
      v158[0] = swift_allocObject();
      sub_214F43C14(&v160, v158[0] + 16, v62, v6);
      v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42188, &qword_2150C34A8);
      sub_214F50074(v158, &v155);
      if (!swift_dynamicCast())
      {
        v155 = 0;
        v156 = 0xE000000000000000;
        sub_2150A5B20();

        strcpy(v154, "Cannot cast ");
        BYTE5(v154[1]) = 0;
        HIWORD(v154[1]) = -5120;
        sub_214F50074(v158, &v155);
        v121 = v132;
        sub_2150A64F0();
        v122 = v134;
        v123 = sub_2150A6100();
        MEMORY[0x2160617E0](v123);

        v124 = *(v133 + 8);
        v124(v121, v122);
        MEMORY[0x2160617E0](544432416, 0xE400000000000000);
        v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42190, &qword_2150C34B0);
        v155 = v67;
        sub_2150A64F0();
        v125 = sub_2150A6100();
        MEMORY[0x2160617E0](v125);

        v124(v121, v122);
        goto LABEL_130;
      }

      sub_214F302D4(&v160, v62, v6);
      v11 = v154[0];
      v68 = v154[1];
      __swift_destroy_boxed_opaque_existential_0(v158);
      ObjectType = swift_getObjectType();
      v70 = (*(v68 + 8))(ObjectType, v68);
      if (!v70 || (v71 = v70, v72 = [v70 cloudAccount], v71, !v72))
      {
        swift_unknownObjectRelease();
LABEL_74:
        v61 = v141;
        v80 = swift_isUniquelyReferenced_nonNull_native();
        v153 = v61;
        if ((v80 & 1) == 0)
        {
          v11 = &v153;
          sub_214F86EEC(0, *(v61 + 16) + 1, 1);
          v61 = v153;
        }

        v81 = v147;
        v5 = *(v61 + 16);
        v82 = *(v61 + 24);
        if (v5 >= v82 >> 1)
        {
          v11 = &v153;
          sub_214F86EEC((v82 > 1), v5 + 1, 1);
          v61 = v153;
        }

        v60 = v19 + 1;
        *(v61 + 16) = v5 + 1;
        v83 = (v61 + 32 * v5);
        v84 = v152;
        v83[4] = v151;
        v83[5] = v84;
        v83[6] = v81;
        v83[7] = v66;
        v21 = v148;
        v12 = v150;
        if (v136 != v19)
        {
          goto LABEL_59;
        }

        goto LABEL_82;
      }

      v73 = v6;
      v74 = v62;
      v75 = v59;
      v76 = [v72 userRecordName];

      v5 = sub_2150A4AD0();
      v78 = v77;

      v79 = v152;
      if (v151 == v5 && v152 == v78)
      {

        swift_unknownObjectRelease();
        v59 = v75;
        v62 = v74;
        v6 = v73;
      }

      else
      {
        LOBYTE(v5) = sub_2150A6270();

        swift_unknownObjectRelease();
        v11 = v79;
        v59 = v75;
        v62 = v74;
        v6 = v73;
        if ((v5 & 1) == 0)
        {
          goto LABEL_74;
        }
      }

      ++v19;
      v63 += 4;
      v21 = v148;
      v12 = v150;
      if (v59 == v19)
      {
        v61 = v141;
        goto LABEL_82;
      }
    }

LABEL_124:
    __break(1u);
LABEL_125:
    __break(1u);
LABEL_126:
    v17 = sub_21505F4D0((v23 > 1), v21, 1, v17);
  }

  v19 = 0;
  v21 = (v6 + 56);
  v152 = *(v6 + 16);
  while (1)
  {
    v23 = *(v6 + 16);
    if (v19 >= v23)
    {
      goto LABEL_125;
    }

    v49 = *(v21 - 3);
    v48 = *(v21 - 2);

    if ([v149 resolverStorage])
    {
      sub_2150A58F0();
      swift_unknownObjectRelease();
    }

    else
    {
      v160 = 0u;
      v161 = 0u;
    }

    v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42178, &qword_2150C6010);
    v158[0] = swift_allocObject();
    sub_214F43C14(&v160, v158[0] + 16, &qword_27CA42178, &qword_2150C6010);
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42188, &qword_2150C34A8);
    sub_214F50074(v158, &v155);
    if (!swift_dynamicCast())
    {
      break;
    }

    sub_214F302D4(&v160, &qword_27CA42178, &qword_2150C6010);
    v11 = v154[0];
    v5 = v154[1];
    __swift_destroy_boxed_opaque_existential_0(v158);
    v51 = swift_getObjectType();
    v52 = (*(v5 + 8))(v51, v5);
    if (v52 && (v53 = v52, v5 = [v52 cloudAccount], v53, v5))
    {
      v54 = [v5 userRecordName];

      v55 = sub_2150A4AD0();
      v5 = v56;

      if (v49 == v55 && v48 == v5)
      {

        swift_unknownObjectRelease();
LABEL_55:
        v135 = 0;
LABEL_56:
        v21 = v148;
        goto LABEL_57;
      }

      v57 = sub_2150A6270();

      swift_unknownObjectRelease();
      v47 = v152;
      if (v57)
      {
        goto LABEL_55;
      }
    }

    else
    {

      swift_unknownObjectRelease();
    }

    ++v19;
    v21 += 4;
    v6 = v146;
    if (v47 == v19)
    {
      v135 = 1;
      goto LABEL_56;
    }
  }

  v155 = 0;
  v156 = 0xE000000000000000;
  sub_2150A5B20();

  strcpy(v154, "Cannot cast ");
  BYTE5(v154[1]) = 0;
  HIWORD(v154[1]) = -5120;
  sub_214F50074(v158, &v155);
  v126 = v132;
  sub_2150A64F0();
  v127 = v134;
  v128 = sub_2150A6100();
  MEMORY[0x2160617E0](v128);

  v124 = *(v133 + 8);
  v124(v126, v127);
  MEMORY[0x2160617E0](544432416, 0xE400000000000000);
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42190, &qword_2150C34B0);
  v155 = v50;
  sub_2150A64F0();
  v129 = sub_2150A6100();
  MEMORY[0x2160617E0](v129);

  v124(v126, v127);
LABEL_130:
  v131 = 0;
  v130 = 12;
  sub_2150A5E10();
  __break(1u);

  __break(1u);
  return result;
}

id ICActivityStreamDigest.recentUpdatesRangeValue.getter()
{
  v0 = ICActivityStreamDigest.recentUpdatesRange.getter();
  if (v2)
  {
    return 0;
  }

  else
  {
    return [objc_opt_self() valueWithRange_];
  }
}

uint64_t ICActivityStreamDigest.isCurrentUserMentionedInRecentSummary.getter()
{
  v1 = [v0 objc_recentUpdatesFilter];
  if (v1)
  {
    v2 = v1;
    v3 = sub_214F6211C(v1);
    LOBYTE(v10) = 1;
    sub_214F71610(v3);
    v5 = v4;

    sub_214F65078(v5, &v10);

    v6 = v11;
    v7 = v12;

    v8 = v6 | v7;
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_214F65078@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v92 = a2;
  v3 = sub_2150A6540();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v101 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA421A0, &qword_2150C34C0);
  sub_214F43BCC(&qword_27CA421A8, &qword_27CA421A0, &qword_2150C34C0, MEMORY[0x277D83970]);
  sub_214F733BC();
  v8 = sub_2150A4D50();
  v9 = *(v8 + 16);
  if (v9)
  {
    v88 = v7;
    v89 = v4;
    v90 = v3;
    v103 = MEMORY[0x277D84F90];
    sub_214F86F0C(0, v9, 0);
    v97 = v103;
    v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42188, &qword_2150C34A8);
    v91 = v8;
    v10 = (v8 + 56);
    v11 = v9;
    v12 = v93;
    v95 = v9;
    while (1)
    {
      v14 = *(v10 - 3);
      v13 = *(v10 - 2);
      v15 = *v10;
      *&v96 = *(v10 - 1);
      *(&v96 + 1) = v15;

      if ([v12 resolverStorage])
      {
        sub_2150A58F0();
        swift_unknownObjectRelease();
      }

      else
      {
        v101 = 0u;
        v102 = 0u;
      }

      v100[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42178, &qword_2150C6010);
      v100[0] = swift_allocObject();
      sub_214F43C14(&v101, v100[0] + 16, &qword_27CA42178, &qword_2150C6010);
      sub_214F50074(v100, v99);
      if (!swift_dynamicCast())
      {
        goto LABEL_60;
      }

      v16 = v98[1];
      sub_214F302D4(&v101, &qword_27CA42178, &qword_2150C6010);
      __swift_destroy_boxed_opaque_existential_0(v100);
      ObjectType = swift_getObjectType();
      v18 = (*(v16 + 8))(ObjectType, v16);
      if (!v18)
      {
        goto LABEL_14;
      }

      v19 = v18;
      v20 = [v18 cloudAccount];

      if (!v20)
      {
        goto LABEL_14;
      }

      v21 = [v20 userRecordName];

      v22 = sub_2150A4AD0();
      v24 = v23;

      if (v14 != v22 || v13 != v24)
      {
        break;
      }

      swift_unknownObjectRelease();

      v25 = 0;
      v26 = 0;
      v27 = v95;
      v12 = v93;
LABEL_20:
      v33 = v97;
      v103 = v97;
      v35 = *(v97 + 16);
      v34 = *(v97 + 24);
      if (v35 >= v34 >> 1)
      {
        sub_214F86F0C((v34 > 1), v35 + 1, 1);
        v33 = v103;
      }

      v10 += 4;
      *(v33 + 16) = v35 + 1;
      v97 = v33;
      v36 = v33 + 16 * v35;
      *(v36 + 32) = v25;
      *(v36 + 40) = v26;
      if (!--v11)
      {
        *&v101 = MEMORY[0x277D84F90];
        sub_214F86A20(0, v27, 0);
        v37 = v101;
        v38 = (v91 + 40);
        do
        {
          v40 = *(v38 - 1);
          v39 = *v38;
          *&v101 = v37;
          v42 = *(v37 + 16);
          v41 = *(v37 + 24);

          if (v42 >= v41 >> 1)
          {
            sub_214F86A20((v41 > 1), v42 + 1, 1);
            v37 = v101;
          }

          *(v37 + 16) = v42 + 1;
          v43 = v37 + 16 * v42;
          *(v43 + 32) = v40;
          *(v43 + 40) = v39;
          v38 += 4;
          --v27;
        }

        while (v27);

        v46 = v97;
        goto LABEL_29;
      }
    }

    v28 = sub_2150A6270();

    v12 = v93;
    if (v28)
    {
      swift_unknownObjectRelease();

      v25 = 0;
      v26 = 0;
    }

    else
    {
LABEL_14:
      *&v101 = v14;
      *(&v101 + 1) = v13;
      v100[0] = 7105633;
      v100[1] = 0xE300000000000000;
      sub_214D6E6C4();
      if (sub_2150A58B0())
      {
        *&v101 = v14;
        *(&v101 + 1) = v13;
        v102 = v96;
        v29 = (*(v16 + 48))(&v101, ObjectType, v16);
        if (v29)
        {
          v30 = v29;
          v31 = [v29 ic_activityStreamDisplayName];

          v25 = sub_2150A4AD0();
          v26 = v32;

          swift_unknownObjectRelease();
        }

        else
        {
          swift_unknownObjectRelease();

          v25 = 0;
          v26 = 1;
        }
      }

      else
      {
        swift_unknownObjectRelease();

        v25 = 0;
        v26 = 2;
      }
    }

    v27 = v95;
    goto LABEL_20;
  }

  v37 = MEMORY[0x277D84F90];
  v46 = MEMORY[0x277D84F90];
LABEL_29:
  v101 = 0uLL;
  MEMORY[0x28223BE20](v44, v45);
  v47 = sub_215068290(sub_214F73680, (&v88 - 4), v46);
  LODWORD(v97) = v47;
  v101 = xmmword_2150C3470;
  MEMORY[0x28223BE20](v47, v48);
  v86 = &v101;
  DWORD2(v96) = sub_215068290(sub_214F738A4, (&v88 - 4), v46);
  *&v96 = 0;
  v49 = *(v46 + 16);
  v50 = v46;
  if (v49)
  {
    v51 = v46;
    v52 = 0;
    v53 = v46 + 40;
    v54 = MEMORY[0x277D84F90];
LABEL_31:
    v55 = v49 - v52;
    v56 = (v53 + 16 * v52);
    while (v52 < *(v51 + 16))
    {
      v60 = *(v56 - 1);
      v59 = *v56;
      if (*v56)
      {
        v61 = v59 == 2;
      }

      else
      {
        v61 = 1;
      }

      if (!v61)
      {
        if (v59 == 1)
        {
          v62 = *(v56 - 1);
          sub_214F736A0(v60, 1uLL);
          sub_214F736A0(0, 1uLL);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v101 = v54;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_214F86F0C(0, *(v54 + 16) + 1, 1);
            v54 = v101;
          }

          v51 = v50;
          v65 = *(v54 + 16);
          v64 = *(v54 + 24);
          v66 = v62;
          if (v65 >= v64 >> 1)
          {
            sub_214F86F0C((v64 > 1), v65 + 1, 1);
            v51 = v50;
            v66 = v62;
            v54 = v101;
          }

          ++v52;
          *(v54 + 16) = v65 + 1;
          v67 = v54 + 16 * v65;
          *(v67 + 32) = v66;
          *(v67 + 40) = 1;
          if (v55 != 1)
          {
            goto LABEL_31;
          }

          goto LABEL_47;
        }

        v57 = *(v56 - 1);
        v58 = *v56;

        v59 = v58;
        v60 = v57;
      }

      sub_214F736A0(v60, v59);
      sub_214F736A0(0, 1uLL);
      v56 += 2;
      ++v52;
      --v55;
      v51 = v50;
      if (!v55)
      {
        goto LABEL_47;
      }
    }
  }

  else
  {
    v54 = MEMORY[0x277D84F90];
LABEL_47:
    v68 = *(v54 + 16);

    v69 = v50;
    v70 = 0;
    v71 = MEMORY[0x277D84F90];
LABEL_48:
    v72 = 16 * v70 + 40;
    while (1)
    {
      if (v49 == v70)
      {

        v80 = v92;
        *v92 = v37;
        *(v80 + 8) = v97 & 1;
        *(v80 + 9) = BYTE8(v96) & 1;
        v80[2] = v68;
        v80[3] = v71;
        return result;
      }

      if (v70 >= *(v69 + 16))
      {
        break;
      }

      ++v70;
      v73 = v72 + 16;
      v74 = *(v69 + v72);
      v72 += 16;
      if (v74 >= 3)
      {
        v75 = *(v69 + v73 - 24);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v71 = sub_21505F4D0(0, *(v71 + 2) + 1, 1, v71);
        }

        v77 = *(v71 + 2);
        v76 = *(v71 + 3);
        if (v77 >= v76 >> 1)
        {
          v71 = sub_21505F4D0((v76 > 1), v77 + 1, 1, v71);
        }

        v69 = v50;
        *(v71 + 2) = v77 + 1;
        v78 = &v71[16 * v77];
        *(v78 + 4) = v75;
        *(v78 + 5) = v74;
        goto LABEL_48;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_60:
  v99[0] = 0;
  v99[1] = 0xE000000000000000;
  sub_2150A5B20();

  strcpy(v98, "Cannot cast ");
  BYTE5(v98[1]) = 0;
  HIWORD(v98[1]) = -5120;
  sub_214F50074(v100, v99);
  v81 = v88;
  sub_2150A64F0();
  v82 = v90;
  v83 = sub_2150A6100();
  MEMORY[0x2160617E0](v83);

  v84 = *(v89 + 8);
  v84(v81, v82);
  MEMORY[0x2160617E0](544432416, 0xE400000000000000);
  v99[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42190, &qword_2150C34B0);
  v99[0] = v94;
  sub_2150A64F0();
  v85 = sub_2150A6100();
  MEMORY[0x2160617E0](v85);

  v84(v81, v82);
  v87 = 0;
  v86 = 12;
  result = sub_2150A5E10();
  __break(1u);
  return result;
}

Swift::Bool __swiftcall ICActivityStreamDigest.isCurrentUserMentioned(in:)(ICTTTextEditFilter *in)
{
  v1 = sub_214F6211C(in);
  LOBYTE(v7) = 1;
  sub_214F71610(v1);
  v3 = v2;

  sub_214F65078(v3, &v7);

  v4 = v8;
  v5 = v9;

  return (v4 | v5) & 1;
}

uint64_t ICActivityStreamDigest.summary(for:format:)@<X0>(void *a1@<X0>, unsigned __int8 *a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = *a2;
  v5 = sub_214F6211C(a1);
  v7 = v4;
  ICActivityStreamDigest.summary(for:format:)(v5, &v7, a3);
}

uint64_t sub_214F65C74(uint64_t a1, char *a2)
{
  v2 = *a2;
  sub_214F65078(a1, &v79);
  v3 = *(v79 + 16);
  if (v3 == 2)
  {
    v7 = v81[2];
    if (v80)
    {
      if (v7)
      {
LABEL_9:
        v8 = v81[4];
        v9 = v81[5];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E00, &qword_2150C2950);
        v10 = swift_allocObject();
        *(v10 + 16) = xmmword_2150C25D0;
        *(v10 + 56) = MEMORY[0x277D837D0];
        v11 = sub_214D74008();
        *(v10 + 32) = v8;
        *(v10 + 64) = v11;
        *(v10 + 40) = v9;
        v12 = objc_opt_self();

        v13 = sub_2150A4A90();
        v44 = [v12 localizedFrameworkStringForKey:v13 value:0 table:0 allowSiri:1];

        v45 = sub_2150A4AD0();
        v47 = v46;

        v48 = v10;
        v49 = v45;
        goto LABEL_23;
      }
    }

    else if (v7)
    {
      v20 = v81[4];
      v19 = v81[5];
      if (v7 == 1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E00, &qword_2150C2950);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_2150C29C0;
        *(inited + 56) = MEMORY[0x277D837D0];
        v22 = sub_214D74008();
        *(inited + 32) = v20;
        *(inited + 40) = v19;
        v23 = MEMORY[0x277D83C10];
        *(inited + 96) = MEMORY[0x277D83B88];
        *(inited + 104) = v23;
        *(inited + 64) = v22;
        *(inited + 72) = 1;
        v24 = objc_opt_self();

        v25 = sub_2150A4A90();
        v26 = [v24 localizedFrameworkStringForKey:v25 value:0 table:0 allowSiri:0];
        goto LABEL_26;
      }

      v51 = v81[6];
      v50 = v81[7];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E00, &qword_2150C2950);
      if (v2)
      {
        v52 = swift_initStackObject();
        *(v52 + 16) = xmmword_2150C29C0;
        v53 = MEMORY[0x277D837D0];
        *(v52 + 56) = MEMORY[0x277D837D0];
        v54 = sub_214D74008();
        *(v52 + 32) = v20;
        *(v52 + 40) = v19;
        *(v52 + 96) = v53;
        *(v52 + 104) = v54;
        *(v52 + 64) = v54;
        *(v52 + 72) = v51;
        *(v52 + 80) = v50;
        v55 = objc_opt_self();

        v56 = sub_2150A4A90();
        v57 = [v55 localizedFrameworkStringForKey:v56 value:0 table:0 allowSiri:1];

        v58 = sub_2150A4AD0();
        v60 = v59;

        v61 = sub_214F9A03C(v52, v58, v60);
LABEL_28:
        v3 = v61;

        swift_bridgeObjectRelease_n();
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42268, &qword_2150C36B8);
        goto LABEL_29;
      }

      v71 = swift_allocObject();
      *(v71 + 16) = xmmword_2150C29C0;
      v72 = MEMORY[0x277D837D0];
      *(v71 + 56) = MEMORY[0x277D837D0];
      v73 = sub_214D74008();
      *(v71 + 32) = v20;
      *(v71 + 40) = v19;
      *(v71 + 96) = v72;
      *(v71 + 104) = v73;
      *(v71 + 64) = v73;
      *(v71 + 72) = v51;
      *(v71 + 80) = v50;
      v74 = objc_opt_self();

      v75 = sub_2150A4A90();
      v76 = [v74 localizedFrameworkStringForKey:v75 value:0 table:0 allowSiri:1];

      v77 = sub_2150A4AD0();
      v47 = v78;

      v48 = v71;
      v49 = v77;
LABEL_23:
      v3 = sub_214F9A03C(v48, v49, v47);

      swift_bridgeObjectRelease_n();
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42268, &qword_2150C36B8);
      swift_arrayDestroy();
      swift_deallocClassInstance();
      return v3;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E00, &qword_2150C2950);
    v14 = swift_initStackObject();
    *(v14 + 16) = xmmword_2150C25D0;
    v32 = MEMORY[0x277D83C10];
    *(v14 + 56) = MEMORY[0x277D83B88];
    *(v14 + 64) = v32;
    *(v14 + 32) = 2;
    v33 = objc_opt_self();
    v17 = sub_2150A4A90();
    v18 = [v33 localizedFrameworkStringForKey:v17 value:0 table:0 allowSiri:0];
    goto LABEL_21;
  }

  v4 = v3 - 1;
  if (v3 == 1)
  {
    if (v80 || !v81[2])
    {
      v5 = objc_opt_self();
      v6 = sub_2150A4A90();
      v62 = [v5 localizedFrameworkStringForKey:v6 value:0 table:0 allowSiri:1];

      v3 = sub_2150A4AD0();

      return v3;
    }

    goto LABEL_9;
  }

  if (v3)
  {
    if (v80)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E00, &qword_2150C2950);
      v14 = swift_initStackObject();
      *(v14 + 16) = xmmword_2150C25D0;
      v15 = MEMORY[0x277D83C10];
      *(v14 + 56) = MEMORY[0x277D83B88];
      *(v14 + 64) = v15;
      *(v14 + 32) = v4;
      v16 = objc_opt_self();
      v17 = sub_2150A4A90();
      v18 = [v16 localizedFrameworkStringForKey:v17 value:0 table:0 allowSiri:0];
LABEL_21:
      v34 = v18;

      v35 = sub_2150A4AD0();
      v37 = v36;

      v38 = v14;
      v39 = v35;
LABEL_27:
      v61 = sub_215005B28(v38, v39, v37);
      goto LABEL_28;
    }

    if (!v81[2])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E00, &qword_2150C2950);
      v40 = swift_initStackObject();
      *(v40 + 16) = xmmword_2150C25D0;
      v41 = MEMORY[0x277D83C10];
      *(v40 + 56) = MEMORY[0x277D83B88];
      *(v40 + 64) = v41;
      *(v40 + 32) = v3;
      v42 = objc_opt_self();
      v43 = sub_2150A4A90();
      v63 = [v42 localizedFrameworkStringForKey:v43 value:0 table:0 allowSiri:0];

      v64 = sub_2150A4AD0();
      v66 = v65;

      v3 = sub_215005B28(v40, v64, v66);

      swift_bridgeObjectRelease_n();
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42268, &qword_2150C36B8);
LABEL_29:
      swift_arrayDestroy();
      return v3;
    }

    v28 = v81[4];
    v27 = v81[5];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E00, &qword_2150C2950);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2150C29C0;
    *(inited + 56) = MEMORY[0x277D837D0];
    v29 = sub_214D74008();
    *(inited + 32) = v28;
    *(inited + 40) = v27;
    v30 = MEMORY[0x277D83C10];
    *(inited + 96) = MEMORY[0x277D83B88];
    *(inited + 104) = v30;
    *(inited + 64) = v29;
    *(inited + 72) = v4;
    v31 = objc_opt_self();

    v25 = sub_2150A4A90();
    v26 = [v31 localizedFrameworkStringForKey:v25 value:0 table:0 allowSiri:0];
LABEL_26:
    v67 = v26;

    v68 = sub_2150A4AD0();
    v37 = v69;

    v38 = inited;
    v39 = v68;
    goto LABEL_27;
  }

  return v3;
}

uint64_t sub_214F66AC8(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = *a3;
  sub_214F65078(a1, &v348);
  v5 = v349;
  v6 = v351;
  v7 = a2;
  v8 = v348;
  sub_214F65078(v7, &v348);
  v9 = *(v8 + 16);
  v10 = *(v348 + 16);
  if (v9 == 2)
  {
    if (v10 != 1)
    {
      goto LABEL_20;
    }

    v14 = v6[2];
    if (v5)
    {
      if (v14)
      {
        v16 = v6[4];
        v15 = v6[5];
        if (v350 || v349)
        {
          goto LABEL_184;
        }

        if (v351[2])
        {
          v133 = v351[4];
          v134 = v351[5];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E00, &qword_2150C2950);
          if (v4)
          {
            v78 = swift_allocObject();
            *(v78 + 16) = xmmword_2150C29C0;
            v135 = MEMORY[0x277D837D0];
            *(v78 + 56) = MEMORY[0x277D837D0];
            v136 = sub_214D74008();
            *(v78 + 32) = v16;
            *(v78 + 40) = v15;
            *(v78 + 96) = v135;
            *(v78 + 104) = v136;
            *(v78 + 64) = v136;
            *(v78 + 72) = v133;
            *(v78 + 80) = v134;
            v137 = objc_opt_self();

            v80 = sub_2150A4A90();
            v81 = [v137 localizedFrameworkStringForKey:v80 value:0 table:0 allowSiri:1];
            goto LABEL_207;
          }

          v152 = swift_allocObject();
          *(v152 + 16) = xmmword_2150C25D0;
          *(v152 + 56) = MEMORY[0x277D837D0];
          *(v152 + 64) = sub_214D74008();
          *(v152 + 32) = v133;
          *(v152 + 40) = v134;
          v227 = objc_opt_self();

          v228 = sub_2150A4A90();
          v229 = [v227 localizedFrameworkStringForKey:v228 value:0 table:0 allowSiri:1];
LABEL_214:
          v330 = v229;

          v331 = sub_2150A4AD0();
          v313 = v332;

          v314 = v152;
          v315 = v331;
          goto LABEL_215;
        }

LABEL_58:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E00, &qword_2150C2950);
        v71 = swift_allocObject();
        *(v71 + 16) = xmmword_2150C25D0;
        *(v71 + 56) = MEMORY[0x277D837D0];
        v72 = sub_214D74008();
        *(v71 + 32) = v16;
        *(v71 + 64) = v72;
        *(v71 + 40) = v15;
        v73 = objc_opt_self();

        v74 = sub_2150A4A90();
        v274 = [v73 localizedFrameworkStringForKey:v74 value:0 table:0 allowSiri:1];

        v275 = sub_2150A4AD0();
        v277 = v276;

        v278 = sub_214F9A03C(v71, v275, v277);
LABEL_217:
        v13 = v278;
        goto LABEL_221;
      }

      if (v350)
      {
        goto LABEL_66;
      }

      if (v349)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E00, &qword_2150C2950);
        v119 = swift_allocObject();
        *(v119 + 16) = xmmword_2150C25D0;
        v120 = MEMORY[0x277D83C10];
        *(v119 + 56) = MEMORY[0x277D83B88];
        *(v119 + 64) = v120;
        *(v119 + 32) = 2;
        v121 = objc_opt_self();
        v122 = sub_2150A4A90();
        v123 = [v121 localizedFrameworkStringForKey:v122 value:0 table:0 allowSiri:0];
        goto LABEL_143;
      }

      if (!v351[2])
      {
LABEL_66:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E00, &qword_2150C2950);
        v82 = swift_allocObject();
        *(v82 + 16) = xmmword_2150C25D0;
        *(v82 + 32) = 1;
        v83 = MEMORY[0x277D83C10];
        *(v82 + 56) = MEMORY[0x277D83B88];
        *(v82 + 64) = v83;
        v84 = objc_opt_self();
LABEL_205:
        v307 = sub_2150A4A90();
        v334 = [v84 localizedFrameworkStringForKey:v307 value:0 table:0 allowSiri:0];

        v335 = sub_2150A4AD0();
        v218 = v336;

        v219 = v82;
        v220 = v335;
LABEL_216:
        v278 = sub_215005B28(v219, v220, v218);
        goto LABEL_217;
      }

      v174 = v351[4];
      v175 = v351[5];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E00, &qword_2150C2950);
      v176 = swift_allocObject();
      v177 = v176;
      *(v176 + 16) = xmmword_2150C29C0;
      if (v4)
      {
LABEL_136:
        *(v176 + 56) = MEMORY[0x277D837D0];
        v178 = sub_214D74008();
        v177[4] = v174;
        v177[5] = v175;
        v179 = MEMORY[0x277D83C10];
        v177[12] = MEMORY[0x277D83B88];
        v177[13] = v179;
        v177[8] = v178;
        v177[9] = 1;
LABEL_137:
        v180 = objc_opt_self();

        v181 = sub_2150A4A90();
        v182 = [v180 localizedFrameworkStringForKey:v181 value:0 table:0 allowSiri:0];
        v261 = v182;

        v262 = sub_2150A4AD0();
        v264 = v263;

        v13 = sub_215005B28(v177, v262, v264);
LABEL_221:

        swift_bridgeObjectRelease_n();
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42268, &qword_2150C36B8);
LABEL_222:
        swift_arrayDestroy();
        goto LABEL_223;
      }
    }

    else
    {
      if (v14)
      {
        v49 = v6[4];
        v48 = v6[5];
        if (v14 == 1)
        {
          if (v350 || v349 || !v351[2])
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E00, &qword_2150C2950);
            v106 = swift_allocObject();
            *(v106 + 16) = xmmword_2150C29C0;
            *(v106 + 56) = MEMORY[0x277D837D0];
            v265 = sub_214D74008();
            *(v106 + 32) = v49;
            *(v106 + 40) = v48;
            v266 = MEMORY[0x277D83C10];
            *(v106 + 96) = MEMORY[0x277D83B88];
            *(v106 + 104) = v266;
            *(v106 + 64) = v265;
            *(v106 + 72) = 1;
            v240 = objc_opt_self();

            goto LABEL_193;
          }

          v203 = v351[4];
          v204 = v351[5];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E00, &qword_2150C2950);
          v196 = swift_allocObject();
          *(v196 + 16) = xmmword_2150C29B0;
          v205 = MEMORY[0x277D837D0];
          *(v196 + 56) = MEMORY[0x277D837D0];
          v206 = sub_214D74008();
          *(v196 + 64) = v206;
          if (v4)
          {
            *(v196 + 32) = v203;
            *(v196 + 40) = v204;
            *(v196 + 96) = v205;
            *(v196 + 104) = v206;
            *(v196 + 72) = v49;
            *(v196 + 80) = v48;
            v207 = MEMORY[0x277D83C10];
            *(v196 + 136) = MEMORY[0x277D83B88];
            *(v196 + 144) = v207;
            *(v196 + 112) = 1;
          }

          else
          {
            *(v196 + 32) = v49;
            *(v196 + 40) = v48;
            v295 = MEMORY[0x277D83C10];
            *(v196 + 96) = MEMORY[0x277D83B88];
            *(v196 + 104) = v295;
            *(v196 + 72) = 1;
            *(v196 + 136) = v205;
            *(v196 + 144) = v206;
            *(v196 + 112) = v203;
            *(v196 + 120) = v204;
          }

          goto LABEL_156;
        }

        v86 = v6[7];
        if (!v350 && !v349 && v351[2])
        {
          v208 = v351[5];
          v347 = v351[4];
          if (v4)
          {
            v346 = v6[6];
            v209 = objc_opt_self();

            v345 = v208;
            v210 = sub_2150A4A90();
            v211 = [v209 localizedFrameworkStringForKey:v210 value:0 table:0 allowSiri:1];

            sub_2150A4AD0();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E00, &qword_2150C2950);
            v212 = swift_allocObject();
            *(v212 + 16) = xmmword_2150C29B0;
            v213 = MEMORY[0x277D837D0];
            *(v212 + 56) = MEMORY[0x277D837D0];
            v214 = sub_214D74008();
            *(v212 + 32) = v49;
            *(v212 + 40) = v48;
            *(v212 + 96) = v213;
            *(v212 + 104) = v214;
            *(v212 + 64) = v214;
            *(v212 + 72) = v346;
            *(v212 + 80) = v86;
            *(v212 + 136) = v213;
            *(v212 + 144) = v214;
            *(v212 + 112) = v347;
            *(v212 + 120) = v345;
            v13 = sub_2150A4AA0();

            return v13;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E00, &qword_2150C2950);
          v296 = swift_allocObject();
          *(v296 + 16) = xmmword_2150C25D0;
          *(v296 + 56) = MEMORY[0x277D837D0];
          *(v296 + 64) = sub_214D74008();
          *(v296 + 32) = v347;
          *(v296 + 40) = v208;
          v297 = objc_opt_self();

          v298 = sub_2150A4A90();
          v299 = [v297 localizedFrameworkStringForKey:v298 value:0 table:0 allowSiri:1];

          v300 = sub_2150A4AD0();
          v302 = v301;

          v13 = sub_214F9A03C(v296, v300, v302);

          swift_bridgeObjectRelease_n();
          swift_setDeallocating();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42268, &qword_2150C36B8);
          swift_arrayDestroy();
LABEL_223:
          swift_deallocClassInstance();
          return v13;
        }

        v267 = v6[6];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E00, &qword_2150C2950);
        v268 = swift_allocObject();
        *(v268 + 16) = xmmword_2150C29C0;
        v269 = MEMORY[0x277D837D0];
        *(v268 + 56) = MEMORY[0x277D837D0];
        v270 = sub_214D74008();
        *(v268 + 32) = v49;
        *(v268 + 40) = v48;
        *(v268 + 96) = v269;
        *(v268 + 104) = v270;
        *(v268 + 64) = v270;
        *(v268 + 72) = v267;
        *(v268 + 80) = v86;
        v271 = objc_opt_self();

        v272 = sub_2150A4A90();
        v273 = [v271 localizedFrameworkStringForKey:v272 value:0 table:0 allowSiri:1];
LABEL_225:
        v341 = v273;

        v342 = sub_2150A4AD0();
        v344 = v343;

        v13 = sub_214F9A03C(v268, v342, v344);

        swift_bridgeObjectRelease_n();
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42268, &qword_2150C36B8);
        goto LABEL_222;
      }

      if (v350 || v349 || !v351[2])
      {
        goto LABEL_204;
      }

      v174 = v351[4];
      v175 = v351[5];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E00, &qword_2150C2950);
      v176 = swift_allocObject();
      v177 = v176;
      *(v176 + 16) = xmmword_2150C29C0;
      if ((v4 & 1) == 0)
      {
        goto LABEL_136;
      }
    }

    v183 = MEMORY[0x277D83C10];
    *(v176 + 56) = MEMORY[0x277D83B88];
    *(v176 + 64) = v183;
    *(v176 + 32) = 1;
    *(v176 + 96) = MEMORY[0x277D837D0];
    *(v176 + 104) = sub_214D74008();
    v177[9] = v174;
    v177[10] = v175;
    goto LABEL_137;
  }

  v11 = v9 - 1;
  if (v9 != 1)
  {
    if (!v9)
    {
      if (v10 >= 2)
      {
        goto LABEL_20;
      }

      goto LABEL_9;
    }

    if (v10 == 1)
    {
      if (v5)
      {
        if (v350)
        {
          if (v4)
          {
            goto LABEL_142;
          }

          goto LABEL_41;
        }

        if (v349)
        {
          if (v4)
          {
            goto LABEL_142;
          }

          goto LABEL_41;
        }

        if (!v351[2])
        {
          if (v4)
          {
LABEL_142:
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E00, &qword_2150C2950);
            v119 = swift_allocObject();
            *(v119 + 16) = xmmword_2150C25D0;
            v184 = MEMORY[0x277D83C10];
            *(v119 + 56) = MEMORY[0x277D83B88];
            *(v119 + 64) = v184;
            *(v119 + 32) = v9;
            v185 = objc_opt_self();
            v122 = sub_2150A4A90();
            v123 = [v185 localizedFrameworkStringForKey:v122 value:0 table:0 allowSiri:0];
            goto LABEL_143;
          }

LABEL_41:
          v46 = objc_opt_self();
          v47 = sub_2150A4A90();
          v303 = [v46 localizedFrameworkStringForKey:v47 value:0 table:0 allowSiri:1];

          v13 = sub_2150A4AD0();

          return v13;
        }

        v104 = v351[4];
        v105 = v351[5];
        if (v4)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E00, &qword_2150C2950);
          v106 = swift_allocObject();
          *(v106 + 16) = xmmword_2150C29C0;
          v107 = MEMORY[0x277D83C10];
          *(v106 + 56) = MEMORY[0x277D83B88];
          *(v106 + 64) = v107;
          *(v106 + 32) = v11;
          *(v106 + 96) = MEMORY[0x277D837D0];
          *(v106 + 104) = sub_214D74008();
          *(v106 + 72) = v104;
          *(v106 + 80) = v105;
          v108 = objc_opt_self();

          v109 = sub_2150A4A90();
          v110 = [v108 localizedFrameworkStringForKey:v109 value:0 table:0 allowSiri:0];
LABEL_218:
          v337 = v110;

          v338 = sub_2150A4AD0();
          v169 = v339;

          v170 = v106;
          v171 = v338;
          goto LABEL_219;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E00, &qword_2150C2950);
        v78 = swift_allocObject();
        *(v78 + 16) = xmmword_2150C25D0;
        *(v78 + 56) = MEMORY[0x277D837D0];
        *(v78 + 64) = sub_214D74008();
        *(v78 + 32) = v104;
        *(v78 + 40) = v105;
        v221 = objc_opt_self();

        v80 = sub_2150A4A90();
        v81 = [v221 localizedFrameworkStringForKey:v80 value:0 table:0 allowSiri:1];
        goto LABEL_207;
      }

      if (v6[2])
      {
        v51 = v6[4];
        v50 = v6[5];
        if (v350)
        {
          if ((v4 & 1) == 0)
          {
            goto LABEL_41;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E00, &qword_2150C2950);
          v52 = swift_allocObject();
          *(v52 + 16) = xmmword_2150C29C0;
          *(v52 + 56) = MEMORY[0x277D837D0];
          v53 = sub_214D74008();
          *(v52 + 32) = v51;
          *(v52 + 40) = v50;
          v54 = MEMORY[0x277D83C10];
          *(v52 + 96) = MEMORY[0x277D83B88];
          *(v52 + 104) = v54;
          *(v52 + 64) = v53;
          *(v52 + 72) = v11;
          v55 = objc_opt_self();

          v56 = sub_2150A4A90();
          v57 = [v55 localizedFrameworkStringForKey:v56 value:0 table:0 allowSiri:0];
LABEL_85:
          v98 = v57;

          v99 = sub_2150A4AD0();
          v101 = v100;

          v102 = v52;
          v103 = v99;
LABEL_144:
          v13 = sub_215005B28(v102, v103, v101);
          goto LABEL_221;
        }

        if (!v349)
        {
          if (v351[2])
          {
            v138 = v351[4];
            v139 = v351[5];
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E00, &qword_2150C2950);
            inited = swift_initStackObject();
            if (v4)
            {
              *(inited + 16) = xmmword_2150C29B0;
              v141 = MEMORY[0x277D837D0];
              *(inited + 56) = MEMORY[0x277D837D0];
              v142 = sub_214D74008();
              *(inited + 32) = v51;
              *(inited + 40) = v50;
              v143 = MEMORY[0x277D83C10];
              *(inited + 96) = MEMORY[0x277D83B88];
              *(inited + 104) = v143;
              *(inited + 64) = v142;
              *(inited + 72) = v11;
              *(inited + 136) = v141;
              *(inited + 144) = v142;
              *(inited + 112) = v138;
              *(inited + 120) = v139;
              v144 = objc_opt_self();

              v145 = sub_2150A4A90();
              v146 = [v144 localizedFrameworkStringForKey:v145 value:0 table:0 allowSiri:0];

              v147 = sub_2150A4AD0();
              v149 = v148;

              v13 = sub_215005B28(inited, v147, v149);
            }

            else
            {
              *(inited + 16) = xmmword_2150C25D0;
              *(inited + 56) = MEMORY[0x277D837D0];
              *(inited + 64) = sub_214D74008();
              *(inited + 32) = v138;
              *(inited + 40) = v139;
              v230 = objc_opt_self();

              v231 = sub_2150A4A90();
              v232 = [v230 localizedFrameworkStringForKey:v231 value:0 table:0 allowSiri:1];

              v233 = sub_2150A4AD0();
              v235 = v234;

              v13 = sub_214F9A03C(inited, v233, v235);
            }

            swift_bridgeObjectRelease_n();
            swift_setDeallocating();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42268, &qword_2150C36B8);
            goto LABEL_52;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E00, &qword_2150C2950);
          v222 = swift_initStackObject();
          *(v222 + 16) = xmmword_2150C29C0;
          *(v222 + 56) = MEMORY[0x277D837D0];
          v223 = sub_214D74008();
          *(v222 + 32) = v51;
          *(v222 + 40) = v50;
          v224 = MEMORY[0x277D83C10];
          *(v222 + 96) = MEMORY[0x277D83B88];
          *(v222 + 104) = v224;
          *(v222 + 64) = v223;
          *(v222 + 72) = v11;
          v225 = objc_opt_self();

          v226 = sub_2150A4A90();
          v281 = [v225 localizedFrameworkStringForKey:v226 value:0 table:0 allowSiri:0];

          v282 = sub_2150A4AD0();
          v284 = v283;

          v13 = sub_215005B28(v222, v282, v284);
          goto LABEL_26;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E00, &qword_2150C2950);
        v87 = swift_allocObject();
        *(v87 + 16) = xmmword_2150C29C0;
        *(v87 + 56) = MEMORY[0x277D837D0];
        v88 = sub_214D74008();
        *(v87 + 32) = v51;
        *(v87 + 40) = v50;
        v89 = MEMORY[0x277D83C10];
        *(v87 + 96) = MEMORY[0x277D83B88];
        *(v87 + 104) = v89;
        *(v87 + 64) = v88;
        *(v87 + 72) = v11;
        v90 = objc_opt_self();

        v91 = sub_2150A4A90();
        v215 = [v90 localizedFrameworkStringForKey:v91 value:0 table:0 allowSiri:0];

        v216 = sub_2150A4AD0();
        v218 = v217;

        v219 = v87;
        v220 = v216;
        goto LABEL_216;
      }

      if (v350 || v349)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E00, &qword_2150C2950);
        v82 = swift_allocObject();
        *(v82 + 16) = xmmword_2150C25D0;
        *(v82 + 32) = v9;
        v85 = MEMORY[0x277D83C10];
        *(v82 + 56) = MEMORY[0x277D83B88];
        *(v82 + 64) = v85;
        v84 = objc_opt_self();
        goto LABEL_205;
      }

      if (v351[2])
      {
        v189 = v351[4];
        v190 = v351[5];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E00, &qword_2150C2950);
        v191 = swift_allocObject();
        v106 = v191;
        *(v191 + 16) = xmmword_2150C29C0;
        if (v4)
        {
          v192 = MEMORY[0x277D83C10];
          *(v191 + 56) = MEMORY[0x277D83B88];
          *(v191 + 64) = v192;
          *(v191 + 32) = v11;
          *(v191 + 96) = MEMORY[0x277D837D0];
          *(v191 + 104) = sub_214D74008();
          *(v106 + 72) = v189;
          *(v106 + 80) = v190;
        }

        else
        {
          *(v191 + 56) = MEMORY[0x277D837D0];
          v279 = sub_214D74008();
          *(v106 + 32) = v189;
          *(v106 + 40) = v190;
          v280 = MEMORY[0x277D83C10];
          *(v106 + 96) = MEMORY[0x277D83B88];
          *(v106 + 104) = v280;
          *(v106 + 64) = v279;
          *(v106 + 72) = v11;
        }

        v193 = objc_opt_self();

        v109 = sub_2150A4A90();
        v110 = [v193 localizedFrameworkStringForKey:v109 value:0 table:0 allowSiri:0];
        goto LABEL_218;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E00, &qword_2150C2950);
      if (v4)
      {
        v246 = swift_initStackObject();
        *(v246 + 16) = xmmword_2150C25D0;
        v247 = MEMORY[0x277D83C10];
        *(v246 + 56) = MEMORY[0x277D83B88];
        *(v246 + 64) = v247;
        *(v246 + 32) = v9;
        v248 = objc_opt_self();
        v249 = sub_2150A4A90();
        v250 = [v248 localizedFrameworkStringForKey:v249 value:0 table:0 allowSiri:0];

        v251 = sub_2150A4AD0();
        v253 = v252;

        v13 = sub_215005B28(v246, v251, v253);
        goto LABEL_22;
      }

      v161 = swift_allocObject();
      *(v161 + 16) = xmmword_2150C25D0;
      v308 = MEMORY[0x277D83C10];
      *(v161 + 56) = MEMORY[0x277D83B88];
      *(v161 + 64) = v308;
      *(v161 + 32) = v9;
      v309 = objc_opt_self();
      v164 = sub_2150A4A90();
      v165 = [v309 localizedFrameworkStringForKey:v164 value:0 table:0 allowSiri:0];
LABEL_132:
      v166 = v165;

      v167 = sub_2150A4AD0();
      v169 = v168;

      v170 = v161;
      v171 = v167;
LABEL_219:
      v333 = sub_215005B28(v170, v171, v169);
      goto LABEL_220;
    }

LABEL_20:
    if (v350)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E00, &qword_2150C2950);
      v17 = swift_initStackObject();
      *(v17 + 16) = xmmword_2150C25D0;
      v18 = MEMORY[0x277D83C10];
      *(v17 + 56) = MEMORY[0x277D83B88];
      *(v17 + 64) = v18;
      *(v17 + 32) = v9;
      v19 = objc_opt_self();
      v20 = sub_2150A4A90();
      v21 = [v19 localizedFrameworkStringForKey:v20 value:0 table:0 allowSiri:0];

      v22 = sub_2150A4AD0();
      v24 = v23;

      v13 = sub_215005B28(v17, v22, v24);
LABEL_22:

LABEL_23:

      swift_bridgeObjectRelease_n();
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42268, &qword_2150C36B8);
LABEL_52:
      swift_arrayDestroy();
      return v13;
    }

    if (!v349)
    {
      v33 = v351[2];
      if (v10 == 2 && v33 >= 2)
      {
        v58 = v351[4];
        v59 = v351[5];
        v61 = v351[6];
        v60 = v351[7];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E00, &qword_2150C2950);
        v62 = swift_initStackObject();
        *(v62 + 16) = xmmword_2150C29C0;
        v63 = MEMORY[0x277D837D0];
        *(v62 + 56) = MEMORY[0x277D837D0];
        v64 = sub_214D74008();
        *(v62 + 32) = v58;
        *(v62 + 40) = v59;
        *(v62 + 96) = v63;
        *(v62 + 104) = v64;
        *(v62 + 64) = v64;
        *(v62 + 72) = v61;
        *(v62 + 80) = v60;
        v65 = objc_opt_self();

        v66 = sub_2150A4A90();
        v67 = [v65 localizedFrameworkStringForKey:v66 value:0 table:0 allowSiri:1];

        v68 = sub_2150A4AD0();
        v70 = v69;

        v13 = sub_214F9A03C(v62, v68, v70);

        goto LABEL_51;
      }

      if (!v33)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E00, &qword_2150C2950);
        v111 = swift_initStackObject();
        *(v111 + 16) = xmmword_2150C25D0;
        v112 = MEMORY[0x277D83C10];
        *(v111 + 56) = MEMORY[0x277D83B88];
        *(v111 + 64) = v112;
        *(v111 + 32) = v10;
        v113 = objc_opt_self();
        v114 = sub_2150A4A90();
        v115 = [v113 localizedFrameworkStringForKey:v114 value:0 table:0 allowSiri:0];

        v116 = sub_2150A4AD0();
        v118 = v117;

        v13 = sub_215005B28(v111, v116, v118);

        goto LABEL_23;
      }

      v35 = v351[4];
      v36 = v351[5];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E00, &qword_2150C2950);
      v37 = swift_initStackObject();
      *(v37 + 16) = xmmword_2150C29C0;
      *(v37 + 56) = MEMORY[0x277D837D0];
      v38 = sub_214D74008();
      *(v37 + 32) = v35;
      *(v37 + 40) = v36;
      v39 = MEMORY[0x277D83C10];
      *(v37 + 96) = MEMORY[0x277D83B88];
      *(v37 + 104) = v39;
      *(v37 + 64) = v38;
      *(v37 + 72) = v10 - 1;
      v40 = objc_opt_self();

      v41 = sub_2150A4A90();
      v42 = [v40 localizedFrameworkStringForKey:v41 value:0 table:0 allowSiri:0];

      v43 = sub_2150A4AD0();
      v45 = v44;

      v13 = sub_215005B28(v37, v43, v45);

LABEL_33:

LABEL_51:

      swift_bridgeObjectRelease_n();
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42268, &qword_2150C36B8);
      goto LABEL_52;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E00, &qword_2150C2950);
    v25 = swift_initStackObject();
    *(v25 + 16) = xmmword_2150C25D0;
    v26 = MEMORY[0x277D83C10];
    *(v25 + 56) = MEMORY[0x277D83B88];
    *(v25 + 64) = v26;
    *(v25 + 32) = v10 - 1;
    v27 = objc_opt_self();
    v28 = sub_2150A4A90();
    v29 = [v27 localizedFrameworkStringForKey:v28 value:0 table:0 allowSiri:0];

    v30 = sub_2150A4AD0();
    v32 = v31;

    v13 = sub_215005B28(v25, v30, v32);
LABEL_26:

    goto LABEL_33;
  }

  if (v10 == 2)
  {
    if (v5)
    {
      if (v350)
      {
        goto LABEL_41;
      }

      v92 = v351[2];
      if (v349)
      {
        if (v92)
        {
          goto LABEL_130;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E00, &qword_2150C2950);
        v161 = swift_allocObject();
        *(v161 + 16) = xmmword_2150C25D0;
        *(v161 + 32) = 2;
        v236 = MEMORY[0x277D83C10];
        *(v161 + 56) = MEMORY[0x277D83B88];
        *(v161 + 64) = v236;
        v237 = objc_opt_self();
        goto LABEL_173;
      }

      if (v92)
      {
        v155 = v351[4];
        v156 = v351[5];
        if (v92 != 1)
        {
          v242 = v351[6];
          v241 = v351[7];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E00, &qword_2150C2950);
          v78 = swift_allocObject();
          *(v78 + 16) = xmmword_2150C29C0;
          v243 = MEMORY[0x277D837D0];
          *(v78 + 56) = MEMORY[0x277D837D0];
          v244 = sub_214D74008();
          *(v78 + 32) = v155;
          *(v78 + 40) = v156;
          *(v78 + 96) = v243;
          *(v78 + 104) = v244;
          *(v78 + 64) = v244;
          *(v78 + 72) = v242;
          *(v78 + 80) = v241;
          v245 = objc_opt_self();

          v80 = sub_2150A4A90();
          v81 = [v245 localizedFrameworkStringForKey:v80 value:0 table:0 allowSiri:1];
          goto LABEL_207;
        }

        goto LABEL_177;
      }

LABEL_204:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E00, &qword_2150C2950);
      v82 = swift_allocObject();
      *(v82 + 16) = xmmword_2150C25D0;
      *(v82 + 32) = 2;
      v306 = MEMORY[0x277D83C10];
      *(v82 + 56) = MEMORY[0x277D83B88];
      *(v82 + 64) = v306;
      v84 = objc_opt_self();
      goto LABEL_205;
    }

    if (v6[2])
    {
      v16 = v6[4];
      v15 = v6[5];
      if (v350)
      {
        goto LABEL_58;
      }

      v124 = v351[2];
      if (v349)
      {
        if (v124)
        {
          v125 = v351[4];
          v126 = v351[5];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E00, &qword_2150C2950);
          v127 = swift_allocObject();
          *(v127 + 16) = xmmword_2150C29C0;
          v128 = MEMORY[0x277D837D0];
          *(v127 + 56) = MEMORY[0x277D837D0];
          v129 = sub_214D74008();
          *(v127 + 64) = v129;
          if ((v4 & 1) == 0)
          {
            goto LABEL_151;
          }

          goto LABEL_106;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E00, &qword_2150C2950);
        v256 = swift_allocObject();
        v196 = v256;
        *(v256 + 16) = xmmword_2150C29C0;
        if (v4)
        {
          v257 = MEMORY[0x277D83C10];
          *(v256 + 56) = MEMORY[0x277D83B88];
          *(v256 + 64) = v257;
          *(v256 + 32) = 1;
          *(v256 + 96) = MEMORY[0x277D837D0];
          *(v256 + 104) = sub_214D74008();
          *(v196 + 72) = v16;
          *(v196 + 80) = v15;
        }

        else
        {
          *(v256 + 56) = MEMORY[0x277D837D0];
          v321 = sub_214D74008();
          *(v196 + 32) = v16;
          *(v196 + 40) = v15;
          v322 = MEMORY[0x277D83C10];
          *(v196 + 96) = MEMORY[0x277D83B88];
          *(v196 + 104) = v322;
          *(v196 + 64) = v321;
          *(v196 + 72) = 1;
        }

        goto LABEL_187;
      }

      if (!v124)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E00, &qword_2150C2950);
        v259 = swift_allocObject();
        v196 = v259;
        *(v259 + 16) = xmmword_2150C29C0;
        if (v4)
        {
          v260 = MEMORY[0x277D83C10];
          *(v259 + 56) = MEMORY[0x277D83B88];
          *(v259 + 64) = v260;
          *(v259 + 32) = 2;
          *(v259 + 96) = MEMORY[0x277D837D0];
          *(v259 + 104) = sub_214D74008();
          *(v196 + 72) = v16;
          *(v196 + 80) = v15;
        }

        else
        {
          *(v259 + 56) = MEMORY[0x277D837D0];
          v323 = sub_214D74008();
          *(v196 + 32) = v16;
          *(v196 + 40) = v15;
          v324 = MEMORY[0x277D83C10];
          *(v196 + 96) = MEMORY[0x277D83B88];
          *(v196 + 104) = v324;
          *(v196 + 64) = v323;
          *(v196 + 72) = 2;
        }

LABEL_187:
        v258 = objc_opt_self();

        v201 = sub_2150A4A90();
        v202 = [v258 localizedFrameworkStringForKey:v201 value:0 table:0 allowSiri:0];
        goto LABEL_212;
      }

      v194 = v351[4];
      v195 = v351[5];
      if (v124 != 1)
      {
        v291 = v351[6];
        v290 = v351[7];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E00, &qword_2150C2950);
        v78 = swift_allocObject();
        *(v78 + 16) = xmmword_2150C29C0;
        v292 = MEMORY[0x277D837D0];
        *(v78 + 56) = MEMORY[0x277D837D0];
        v293 = sub_214D74008();
        *(v78 + 32) = v194;
        *(v78 + 40) = v195;
        *(v78 + 96) = v292;
        *(v78 + 104) = v293;
        *(v78 + 64) = v293;
        *(v78 + 72) = v291;
        *(v78 + 80) = v290;
        v294 = objc_opt_self();

        v80 = sub_2150A4A90();
        v81 = [v294 localizedFrameworkStringForKey:v80 value:0 table:0 allowSiri:1];
        goto LABEL_207;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E00, &qword_2150C2950);
      v196 = swift_allocObject();
      *(v196 + 16) = xmmword_2150C29B0;
      v197 = MEMORY[0x277D837D0];
      *(v196 + 56) = MEMORY[0x277D837D0];
      v198 = sub_214D74008();
      *(v196 + 64) = v198;
      if (v4)
      {
        *(v196 + 32) = v194;
        *(v196 + 40) = v195;
        v199 = MEMORY[0x277D83C10];
        *(v196 + 96) = MEMORY[0x277D83B88];
        *(v196 + 104) = v199;
        *(v196 + 72) = 1;
        *(v196 + 136) = v197;
        *(v196 + 144) = v198;
        *(v196 + 112) = v16;
        *(v196 + 120) = v15;
      }

      else
      {
        *(v196 + 32) = v16;
        *(v196 + 40) = v15;
        *(v196 + 96) = v197;
        *(v196 + 104) = v198;
        *(v196 + 72) = v194;
        *(v196 + 80) = v195;
        v325 = MEMORY[0x277D83C10];
        *(v196 + 136) = MEMORY[0x277D83B88];
        *(v196 + 144) = v325;
        *(v196 + 112) = 1;
      }

LABEL_156:
      v200 = objc_opt_self();

      v201 = sub_2150A4A90();
      v202 = [v200 localizedFrameworkStringForKey:v201 value:0 table:0 allowSiri:0];
LABEL_212:
      v326 = v202;

      v327 = sub_2150A4AD0();
      v329 = v328;

      v289 = sub_215005B28(v196, v327, v329);
      goto LABEL_213;
    }

    if (v350)
    {
      goto LABEL_41;
    }

    v157 = v351[2];
    if (v349)
    {
      if (v157)
      {
        goto LABEL_130;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E00, &qword_2150C2950);
      v161 = swift_allocObject();
      *(v161 + 16) = xmmword_2150C25D0;
      *(v161 + 32) = 1;
      v305 = MEMORY[0x277D83C10];
      *(v161 + 56) = MEMORY[0x277D83B88];
      *(v161 + 64) = v305;
      v237 = objc_opt_self();
LABEL_173:
      v164 = sub_2150A4A90();
      v165 = [v237 localizedFrameworkStringForKey:v164 value:0 table:0 allowSiri:0];
      goto LABEL_132;
    }

    if (!v157)
    {
      goto LABEL_204;
    }

    v155 = v351[4];
    v156 = v351[5];
    if (v157 == 1)
    {
LABEL_177:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E00, &qword_2150C2950);
      v106 = swift_allocObject();
      *(v106 + 16) = xmmword_2150C29C0;
      *(v106 + 56) = MEMORY[0x277D837D0];
      v238 = sub_214D74008();
      *(v106 + 32) = v155;
      *(v106 + 40) = v156;
      v239 = MEMORY[0x277D83C10];
      *(v106 + 96) = MEMORY[0x277D83B88];
      *(v106 + 104) = v239;
      *(v106 + 64) = v238;
      *(v106 + 72) = 1;
      v240 = objc_opt_self();

LABEL_193:
      v109 = sub_2150A4A90();
      v110 = [v240 localizedFrameworkStringForKey:v109 value:0 table:0 allowSiri:0];
      goto LABEL_218;
    }

    v316 = v351[6];
    v317 = v351[7];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E00, &qword_2150C2950);
    v268 = swift_allocObject();
    *(v268 + 16) = xmmword_2150C29C0;
    v318 = MEMORY[0x277D837D0];
    *(v268 + 56) = MEMORY[0x277D837D0];
    v319 = sub_214D74008();
    *(v268 + 32) = v155;
    *(v268 + 40) = v156;
    *(v268 + 96) = v318;
    *(v268 + 104) = v319;
    *(v268 + 64) = v319;
    *(v268 + 72) = v316;
    *(v268 + 80) = v317;
    v320 = objc_opt_self();

    v272 = sub_2150A4A90();
    v273 = [v320 localizedFrameworkStringForKey:v272 value:0 table:0 allowSiri:1];
    goto LABEL_225;
  }

  v12 = v10 - 1;
  if (v10 != 1)
  {
    if (!v10)
    {
      goto LABEL_9;
    }

    if (v350)
    {
      goto LABEL_41;
    }

    v75 = v351[2];
    if (v349)
    {
      if (!v75)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E00, &qword_2150C2950);
        v161 = swift_allocObject();
        *(v161 + 16) = xmmword_2150C25D0;
        v162 = MEMORY[0x277D83C10];
        *(v161 + 56) = MEMORY[0x277D83B88];
        *(v161 + 64) = v162;
        *(v161 + 32) = v12;
        v163 = objc_opt_self();
        v164 = sub_2150A4A90();
        v165 = [v163 localizedFrameworkStringForKey:v164 value:0 table:0 allowSiri:0];
        goto LABEL_132;
      }

      v76 = v351[4];
      v77 = v351[5];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E00, &qword_2150C2950);
      v78 = swift_allocObject();
      *(v78 + 16) = xmmword_2150C25D0;
      *(v78 + 56) = MEMORY[0x277D837D0];
      *(v78 + 64) = sub_214D74008();
      *(v78 + 32) = v76;
      *(v78 + 40) = v77;
      v79 = objc_opt_self();

      v80 = sub_2150A4A90();
      v81 = [v79 localizedFrameworkStringForKey:v80 value:0 table:0 allowSiri:1];
LABEL_207:
      v310 = v81;

      v311 = sub_2150A4AD0();
      v313 = v312;

      v314 = v78;
      v315 = v311;
LABEL_215:
      v333 = sub_214F9A03C(v314, v315, v313);
LABEL_220:
      v13 = v333;
      goto LABEL_221;
    }

    if (v75)
    {
      v94 = v351[4];
      v93 = v351[5];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E00, &qword_2150C2950);
      v52 = swift_allocObject();
      *(v52 + 16) = xmmword_2150C29C0;
      *(v52 + 56) = MEMORY[0x277D837D0];
      v95 = sub_214D74008();
      *(v52 + 32) = v94;
      *(v52 + 40) = v93;
      v96 = MEMORY[0x277D83C10];
      *(v52 + 96) = MEMORY[0x277D83B88];
      *(v52 + 104) = v96;
      *(v52 + 64) = v95;
      *(v52 + 72) = v12;
      v97 = objc_opt_self();

      v56 = sub_2150A4A90();
      v57 = [v97 localizedFrameworkStringForKey:v56 value:0 table:0 allowSiri:0];
      goto LABEL_85;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E00, &qword_2150C2950);
    v119 = swift_allocObject();
    *(v119 + 16) = xmmword_2150C25D0;
    v172 = MEMORY[0x277D83C10];
    *(v119 + 56) = MEMORY[0x277D83B88];
    *(v119 + 64) = v172;
    *(v119 + 32) = v10;
    v173 = objc_opt_self();
    v122 = sub_2150A4A90();
    v123 = [v173 localizedFrameworkStringForKey:v122 value:0 table:0 allowSiri:0];
LABEL_143:
    v186 = v123;

    v187 = sub_2150A4AD0();
    v101 = v188;

    v102 = v119;
    v103 = v187;
    goto LABEL_144;
  }

  if (!v5)
  {
    if (v6[2])
    {
      v16 = v6[4];
      v15 = v6[5];
      if (!v350 && !v349 && v351[2])
      {
        v125 = v351[4];
        v126 = v351[5];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E00, &qword_2150C2950);
        v127 = swift_allocObject();
        *(v127 + 16) = xmmword_2150C29C0;
        v128 = MEMORY[0x277D837D0];
        *(v127 + 56) = MEMORY[0x277D837D0];
        v129 = sub_214D74008();
        *(v127 + 64) = v129;
        if (v4)
        {
LABEL_151:
          *(v127 + 32) = v125;
          *(v127 + 40) = v126;
          *(v127 + 96) = v128;
          *(v127 + 104) = v129;
          *(v127 + 72) = v16;
          *(v127 + 80) = v15;
          goto LABEL_107;
        }

LABEL_106:
        *(v127 + 32) = v16;
        *(v127 + 40) = v15;
        *(v127 + 96) = v128;
        *(v127 + 104) = v129;
        *(v127 + 72) = v125;
        *(v127 + 80) = v126;
LABEL_107:
        v130 = objc_opt_self();

        v131 = sub_2150A4A90();
        v132 = [v130 localizedFrameworkStringForKey:v131 value:0 table:0 allowSiri:1];
        v285 = v132;

        v286 = sub_2150A4AD0();
        v288 = v287;

        v289 = sub_214F9A03C(v127, v286, v288);
LABEL_213:
        v13 = v289;
        goto LABEL_221;
      }

LABEL_184:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E00, &qword_2150C2950);
      v78 = swift_allocObject();
      *(v78 + 16) = xmmword_2150C25D0;
      *(v78 + 56) = MEMORY[0x277D837D0];
      v254 = sub_214D74008();
      *(v78 + 32) = v16;
      *(v78 + 64) = v254;
      *(v78 + 40) = v15;
      v255 = objc_opt_self();

      v80 = sub_2150A4A90();
      v81 = [v255 localizedFrameworkStringForKey:v80 value:0 table:0 allowSiri:1];
      goto LABEL_207;
    }

    if (v350 || v349)
    {
      goto LABEL_41;
    }

    if (!v351[2])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E00, &qword_2150C2950);
      v152 = swift_allocObject();
      *(v152 + 16) = xmmword_2150C25D0;
      *(v152 + 32) = 1;
      v304 = MEMORY[0x277D83C10];
      *(v152 + 56) = MEMORY[0x277D83B88];
      *(v152 + 64) = v304;
      v154 = objc_opt_self();
      goto LABEL_202;
    }

LABEL_130:
    v158 = v351[4];
    v159 = v351[5];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E00, &qword_2150C2950);
    v152 = swift_allocObject();
    *(v152 + 16) = xmmword_2150C25D0;
    *(v152 + 56) = MEMORY[0x277D837D0];
    v160 = sub_214D74008();
    *(v152 + 32) = v158;
    *(v152 + 64) = v160;
    *(v152 + 40) = v159;
    v154 = objc_opt_self();

LABEL_202:
    v228 = sub_2150A4A90();
    v229 = [v154 localizedFrameworkStringForKey:v228 value:0 table:0 allowSiri:1];
    goto LABEL_214;
  }

  if (v350)
  {
    goto LABEL_41;
  }

  if (!v349)
  {
    if (!v351[2])
    {
      goto LABEL_41;
    }

    v150 = v351[4];
    v151 = v351[5];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E00, &qword_2150C2950);
    v152 = swift_allocObject();
    *(v152 + 16) = xmmword_2150C25D0;
    *(v152 + 56) = MEMORY[0x277D837D0];
    v153 = sub_214D74008();
    *(v152 + 32) = v150;
    *(v152 + 64) = v153;
    *(v152 + 40) = v151;
    v154 = objc_opt_self();

    goto LABEL_202;
  }

  if ((v4 & 1) == 0)
  {
    goto LABEL_41;
  }

LABEL_9:

  return 0;
}

uint64_t sub_214F6BEE0(uint64_t a1)
{
  sub_214F65078(a1, &v63);
  v1 = *(v63 + 16);
  if (v1 == 2)
  {
    v3 = v65[2];
    if (v64)
    {
      if (v3)
      {
LABEL_9:
        v5 = v65[4];
        v4 = v65[5];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E00, &qword_2150C2950);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_2150C25D0;
        *(inited + 56) = MEMORY[0x277D837D0];
        *(inited + 64) = sub_214D74008();
        *(inited + 32) = v5;
        *(inited + 40) = v4;
        v7 = objc_opt_self();

        v8 = sub_2150A4A90();
        v9 = [v7 localizedFrameworkStringForKey:v8 value:0 table:0 allowSiri:1];
        goto LABEL_26;
      }
    }

    else if (v3)
    {
      if (v3 == 1)
      {
        v16 = v65[4];
        v15 = v65[5];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E00, &qword_2150C2950);
        v17 = swift_initStackObject();
        *(v17 + 16) = xmmword_2150C29C0;
        *(v17 + 56) = MEMORY[0x277D837D0];
        v18 = sub_214D74008();
        *(v17 + 32) = v16;
        *(v17 + 40) = v15;
        v19 = MEMORY[0x277D83C10];
        *(v17 + 96) = MEMORY[0x277D83B88];
        *(v17 + 104) = v19;
        *(v17 + 64) = v18;
        *(v17 + 72) = 1;
        v20 = objc_opt_self();

        v21 = sub_2150A4A90();
        v22 = [v20 localizedFrameworkStringForKey:v21 value:0 table:0 allowSiri:0];
        goto LABEL_19;
      }

      v52 = v65[4];
      v51 = v65[5];
      v54 = v65[6];
      v53 = v65[7];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E00, &qword_2150C2950);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2150C29C0;
      v55 = MEMORY[0x277D837D0];
      *(inited + 56) = MEMORY[0x277D837D0];
      v56 = sub_214D74008();
      *(inited + 32) = v52;
      *(inited + 40) = v51;
      *(inited + 96) = v55;
      *(inited + 104) = v56;
      *(inited + 64) = v56;
      *(inited + 72) = v54;
      *(inited + 80) = v53;
      v57 = objc_opt_self();

      v8 = sub_2150A4A90();
      v9 = [v57 localizedFrameworkStringForKey:v8 value:0 table:0 allowSiri:1];
LABEL_26:
      v58 = v9;

      v59 = sub_2150A4AD0();
      v61 = v60;

      v39 = sub_214F9A03C(inited, v59, v61);
      goto LABEL_27;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E00, &qword_2150C2950);
    v10 = swift_initStackObject();
    *(v10 + 16) = xmmword_2150C25D0;
    v34 = MEMORY[0x277D83C10];
    *(v10 + 56) = MEMORY[0x277D83B88];
    *(v10 + 64) = v34;
    *(v10 + 32) = 2;
    v35 = objc_opt_self();
    v13 = sub_2150A4A90();
    v14 = [v35 localizedFrameworkStringForKey:v13 value:0 table:0 allowSiri:0];
    goto LABEL_21;
  }

  v2 = v1 - 1;
  if (v1 == 1)
  {
    if (v64 || !v65[2])
    {
      v40 = objc_opt_self();
      v41 = sub_2150A4A90();
      v42 = [v40 localizedFrameworkStringForKey:v41 value:0 table:0 allowSiri:1];

      v1 = sub_2150A4AD0();

      return v1;
    }

    goto LABEL_9;
  }

  if (v1)
  {
    if (v64)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E00, &qword_2150C2950);
      v10 = swift_initStackObject();
      *(v10 + 16) = xmmword_2150C25D0;
      v11 = MEMORY[0x277D83C10];
      *(v10 + 56) = MEMORY[0x277D83B88];
      *(v10 + 64) = v11;
      *(v10 + 32) = v2;
      v12 = objc_opt_self();
      v13 = sub_2150A4A90();
      v14 = [v12 localizedFrameworkStringForKey:v13 value:0 table:0 allowSiri:0];
LABEL_21:
      v36 = v14;

      v37 = sub_2150A4AD0();
      v31 = v38;

      v32 = v10;
      v33 = v37;
      goto LABEL_22;
    }

    if (!v65[2])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E00, &qword_2150C2950);
      v43 = swift_initStackObject();
      *(v43 + 16) = xmmword_2150C25D0;
      v44 = MEMORY[0x277D83C10];
      *(v43 + 56) = MEMORY[0x277D83B88];
      *(v43 + 64) = v44;
      *(v43 + 32) = v1;
      v45 = objc_opt_self();
      v46 = sub_2150A4A90();
      v47 = [v45 localizedFrameworkStringForKey:v46 value:0 table:0 allowSiri:0];

      v48 = sub_2150A4AD0();
      v50 = v49;

      v1 = sub_215005B28(v43, v48, v50);

      swift_bridgeObjectRelease_n();
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42268, &qword_2150C36B8);
LABEL_28:
      swift_arrayDestroy();
      return v1;
    }

    v24 = v65[4];
    v23 = v65[5];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E00, &qword_2150C2950);
    v17 = swift_initStackObject();
    *(v17 + 16) = xmmword_2150C29C0;
    *(v17 + 56) = MEMORY[0x277D837D0];
    v25 = sub_214D74008();
    *(v17 + 32) = v24;
    *(v17 + 40) = v23;
    v26 = MEMORY[0x277D83C10];
    *(v17 + 96) = MEMORY[0x277D83B88];
    *(v17 + 104) = v26;
    *(v17 + 64) = v25;
    *(v17 + 72) = v2;
    v27 = objc_opt_self();

    v21 = sub_2150A4A90();
    v22 = [v27 localizedFrameworkStringForKey:v21 value:0 table:0 allowSiri:0];
LABEL_19:
    v28 = v22;

    v29 = sub_2150A4AD0();
    v31 = v30;

    v32 = v17;
    v33 = v29;
LABEL_22:
    v39 = sub_215005B28(v32, v33, v31);
LABEL_27:
    v1 = v39;

    swift_bridgeObjectRelease_n();
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42268, &qword_2150C36B8);
    goto LABEL_28;
  }

  return v1;
}

uint64_t sub_214F6C788(uint64_t a1)
{
  sub_214F65078(a1, &v6);
  if (*(v6 + 16) == 1 && v7)
  {
    v1 = objc_opt_self();
    v2 = sub_2150A4A90();
    v3 = [v1 localizedFrameworkStringForKey:v2 value:0 table:0 allowSiri:1];

    v4 = sub_2150A4AD0();

    return v4;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_214F6C88C(uint64_t a1)
{
  v2 = sub_2150A6540();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42188, &qword_2150C34A8);
  sub_214F50074(a1, v13);
  if (swift_dynamicCast())
  {
    return v12[0];
  }

  v13[0] = 0;
  v13[1] = 0xE000000000000000;
  sub_2150A5B20();

  strcpy(v12, "Cannot cast ");
  BYTE5(v12[1]) = 0;
  HIWORD(v12[1]) = -5120;
  sub_214F50074(a1, v13);
  sub_2150A64F0();
  v9 = sub_2150A6100();
  MEMORY[0x2160617E0](v9);

  v10 = *(v3 + 8);
  v10(v6, v2);
  MEMORY[0x2160617E0](544432416, 0xE400000000000000);
  v13[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42190, &qword_2150C34B0);
  v13[0] = v7;
  sub_2150A64F0();
  v11 = sub_2150A6100();
  MEMORY[0x2160617E0](v11);

  v10(v6, v2);
  result = sub_2150A5E10();
  __break(1u);
  return result;
}

uint64_t sub_214F6CADC(uint64_t a1)
{
  v2 = sub_2150A6540();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_214F50074(a1, v13);
  v7 = MEMORY[0x277D837D0];
  if (swift_dynamicCast())
  {
    return v12[0];
  }

  v13[0] = 0;
  v13[1] = 0xE000000000000000;
  sub_2150A5B20();

  strcpy(v12, "Cannot cast ");
  BYTE5(v12[1]) = 0;
  HIWORD(v12[1]) = -5120;
  sub_214F50074(a1, v13);
  sub_2150A64F0();
  v9 = sub_2150A6100();
  MEMORY[0x2160617E0](v9);

  v10 = *(v3 + 8);
  v10(v6, v2);
  MEMORY[0x2160617E0](544432416, 0xE400000000000000);
  v13[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42230, &qword_2150C3688);
  v13[0] = v7;
  sub_2150A64F0();
  v11 = sub_2150A6100();
  MEMORY[0x2160617E0](v11);

  v10(v6, v2);
  result = sub_2150A5E10();
  __break(1u);
  return result;
}

uint64_t sub_214F6CD40(uint64_t a1)
{
  v2 = sub_2150A6540();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_214F50074(a1, v13);
  v7 = MEMORY[0x277D839B0];
  if (swift_dynamicCast())
  {
    return v12[0] & 1;
  }

  v13[0] = 0;
  v13[1] = 0xE000000000000000;
  sub_2150A5B20();

  strcpy(v12, "Cannot cast ");
  HIBYTE(v12[6]) = 0;
  v12[7] = -5120;
  sub_214F50074(a1, v13);
  sub_2150A64F0();
  v9 = sub_2150A6100();
  MEMORY[0x2160617E0](v9);

  v10 = *(v3 + 8);
  v10(v6, v2);
  MEMORY[0x2160617E0](544432416, 0xE400000000000000);
  v13[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42238, &qword_2150C3690);
  v13[0] = v7;
  sub_2150A64F0();
  v11 = sub_2150A6100();
  MEMORY[0x2160617E0](v11);

  v10(v6, v2);
  result = sub_2150A5E10();
  __break(1u);
  return result;
}

uint64_t sub_214F6CF84(uint64_t a1)
{
  v2 = sub_2150A6540();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_214F50074(a1, v13);
  v7 = MEMORY[0x277D839F8];
  result = swift_dynamicCast();
  if (!result)
  {
    v13[0] = 0;
    v13[1] = 0xE000000000000000;
    sub_2150A5B20();

    strcpy(v12, "Cannot cast ");
    HIBYTE(v12[6]) = 0;
    v12[7] = -5120;
    sub_214F50074(a1, v13);
    sub_2150A64F0();
    v9 = sub_2150A6100();
    MEMORY[0x2160617E0](v9);

    v10 = *(v3 + 8);
    v10(v6, v2);
    MEMORY[0x2160617E0](544432416, 0xE400000000000000);
    v13[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42228, &qword_2150C3680);
    v13[0] = v7;
    sub_2150A64F0();
    v11 = sub_2150A6100();
    MEMORY[0x2160617E0](v11);

    v10(v6, v2);
    result = sub_2150A5E10();
    __break(1u);
  }

  return result;
}

uint64_t sub_214F6D1C4(uint64_t a1)
{
  v2 = sub_2150A6540();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_214F50074(a1, v13);
  v7 = MEMORY[0x277D83A90];
  result = swift_dynamicCast();
  if (!result)
  {
    v13[0] = 0;
    v13[1] = 0xE000000000000000;
    sub_2150A5B20();

    strcpy(v12, "Cannot cast ");
    HIBYTE(v12[6]) = 0;
    v12[7] = -5120;
    sub_214F50074(a1, v13);
    sub_2150A64F0();
    v9 = sub_2150A6100();
    MEMORY[0x2160617E0](v9);

    v10 = *(v3 + 8);
    v10(v6, v2);
    MEMORY[0x2160617E0](544432416, 0xE400000000000000);
    v13[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42220, &qword_2150C3678);
    v13[0] = v7;
    sub_2150A64F0();
    v11 = sub_2150A6100();
    MEMORY[0x2160617E0](v11);

    v10(v6, v2);
    result = sub_2150A5E10();
    __break(1u);
  }

  return result;
}

uint64_t sub_214F6D4C8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v8 = sub_2150A6540();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_214F50074(a1, v18);
  if (swift_dynamicCast())
  {
    return LOBYTE(v17[0]);
  }

  v18[0] = 0;
  v18[1] = 0xE000000000000000;
  sub_2150A5B20();

  strcpy(v17, "Cannot cast ");
  HIBYTE(v17[6]) = 0;
  v17[7] = -5120;
  sub_214F50074(a1, v18);
  sub_2150A64F0();
  v14 = sub_2150A6100();
  MEMORY[0x2160617E0](v14);

  v15 = *(v9 + 8);
  v15(v12, v8);
  MEMORY[0x2160617E0](544432416, 0xE400000000000000);
  v18[3] = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v18[0] = a2;
  sub_2150A64F0();
  v16 = sub_2150A6100();
  MEMORY[0x2160617E0](v16);

  v15(v12, v8);
  result = sub_2150A5E10();
  __break(1u);
  return result;
}

uint64_t sub_214F6D728(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v8 = sub_2150A6540();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_214F50074(a1, v18);
  if (swift_dynamicCast())
  {
    return v17[0];
  }

  v18[0] = 0;
  v18[1] = 0xE000000000000000;
  sub_2150A5B20();

  strcpy(v17, "Cannot cast ");
  HIBYTE(v17[6]) = 0;
  v17[7] = -5120;
  sub_214F50074(a1, v18);
  sub_2150A64F0();
  v14 = sub_2150A6100();
  MEMORY[0x2160617E0](v14);

  v15 = *(v9 + 8);
  v15(v12, v8);
  MEMORY[0x2160617E0](544432416, 0xE400000000000000);
  v18[3] = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v18[0] = a2;
  sub_2150A64F0();
  v16 = sub_2150A6100();
  MEMORY[0x2160617E0](v16);

  v15(v12, v8);
  result = sub_2150A5E10();
  __break(1u);
  return result;
}

uint64_t sub_214F6D988(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v8 = sub_2150A6540();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_214F50074(a1, v18);
  if (swift_dynamicCast())
  {
    return v17[0];
  }

  v18[0] = 0;
  v18[1] = 0xE000000000000000;
  sub_2150A5B20();

  strcpy(v17, "Cannot cast ");
  BYTE1(v17[3]) = 0;
  HIWORD(v17[3]) = -5120;
  sub_214F50074(a1, v18);
  sub_2150A64F0();
  v14 = sub_2150A6100();
  MEMORY[0x2160617E0](v14);

  v15 = *(v9 + 8);
  v15(v12, v8);
  MEMORY[0x2160617E0](544432416, 0xE400000000000000);
  v18[3] = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v18[0] = a2;
  sub_2150A64F0();
  v16 = sub_2150A6100();
  MEMORY[0x2160617E0](v16);

  v15(v12, v8);
  result = sub_2150A5E10();
  __break(1u);
  return result;
}

uint64_t sub_214F6DBE8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v8 = sub_2150A6540();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_214F50074(a1, v18);
  if (swift_dynamicCast())
  {
    return v17[0];
  }

  v18[0] = 0;
  v18[1] = 0xE000000000000000;
  sub_2150A5B20();

  strcpy(v17, "Cannot cast ");
  BYTE5(v17[1]) = 0;
  HIWORD(v17[1]) = -5120;
  sub_214F50074(a1, v18);
  sub_2150A64F0();
  v14 = sub_2150A6100();
  MEMORY[0x2160617E0](v14);

  v15 = *(v9 + 8);
  v15(v12, v8);
  MEMORY[0x2160617E0](544432416, 0xE400000000000000);
  v18[3] = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v18[0] = a2;
  sub_2150A64F0();
  v16 = sub_2150A6100();
  MEMORY[0x2160617E0](v16);

  v15(v12, v8);
  result = sub_2150A5E10();
  __break(1u);
  return result;
}

uint64_t sub_214F6DE50(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v10 = sub_2150A6540();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  sub_214F50074(a1, v21);
  if (swift_dynamicCast())
  {
    return v20[0];
  }

  v21[0] = 0;
  v21[1] = 0xE000000000000000;
  sub_2150A5B20();

  strcpy(v20, "Cannot cast ");
  BYTE5(v20[1]) = 0;
  HIWORD(v20[1]) = -5120;
  sub_214F50074(a1, v21);
  sub_2150A64F0();
  v17 = sub_2150A6100();
  MEMORY[0x2160617E0](v17);

  v18 = *(v11 + 8);
  v18(v14, v10);
  MEMORY[0x2160617E0](544432416, 0xE400000000000000);
  v21[3] = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v21[0] = v15;
  sub_2150A64F0();
  v19 = sub_2150A6100();
  MEMORY[0x2160617E0](v19);

  v18(v14, v10);
  result = sub_2150A5E10();
  __break(1u);
  return result;
}

uint64_t sub_214F6E0A8(uint64_t a1)
{
  v2 = sub_2150A6540();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_214D55670(0, &qword_27CA42250, off_278192B68);
  sub_214F50074(a1, v13);
  if (swift_dynamicCast())
  {
    return v12[0];
  }

  v13[0] = 0;
  v13[1] = 0xE000000000000000;
  sub_2150A5B20();

  strcpy(v12, "Cannot cast ");
  BYTE5(v12[1]) = 0;
  HIWORD(v12[1]) = -5120;
  sub_214F50074(a1, v13);
  sub_2150A64F0();
  v9 = sub_2150A6100();
  MEMORY[0x2160617E0](v9);

  v10 = *(v3 + 8);
  v10(v6, v2);
  MEMORY[0x2160617E0](544432416, 0xE400000000000000);
  v13[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42258, &qword_2150C36A0);
  v13[0] = v7;
  sub_2150A64F0();
  v11 = sub_2150A6100();
  MEMORY[0x2160617E0](v11);

  v10(v6, v2);
  result = sub_2150A5E10();
  __break(1u);
  return result;
}

uint64_t sub_214F6E33C(uint64_t (*a1)(char *, char *), uint64_t a2)
{
  type metadata accessor for NoteEditActivityEvent(0);
  v5 = *v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_214F422CC(v5);
  }

  result = sub_214F6E6C8(a1, a2);
  *v2 = v5;
  return result;
}

uint64_t sub_214F6E43C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  v9 = *v4;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = a3(v9);
  }

  result = a4(a1, a2);
  *v4 = v9;
  return result;
}

void sub_214F6E4D8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DC0, &qword_2150C2720);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 17;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 4);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_214F6E5B0(uint64_t (*a1)(__int128 *, void *), uint64_t a2)
{
  v5 = v2[1];
  result = sub_2150A60E0();
  if (result < v5)
  {
    if (v5 >= -1)
    {
      v7 = result;
      if (v5 < 2)
      {
        v8 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA44A10, &unk_2150CD750);
        v8 = sub_2150A4F50();
        *(v8 + 16) = v5 / 2;
      }

      v10[0] = v8 + 32;
      v10[1] = v5 / 2;
      v9 = v8;
      sub_214F6ED8C(v10, v11, v2, a1, a2, v7);
      *(v9 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v5 < 0)
  {
    goto LABEL_12;
  }

  if (v5)
  {
    return sub_214F6E910(0, v5, 1, a1);
  }

  return result;
}

uint64_t sub_214F6E6C8(uint64_t (*a1)(char *, char *), uint64_t a2)
{
  v5 = v2[1];
  result = sub_2150A60E0();
  if (result < v5)
  {
    if (v5 >= -1)
    {
      v7 = result;
      v8 = v5 / 2;
      if (v5 < 2)
      {
        v9 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for NoteEditActivityEvent(0);
        v9 = sub_2150A4F50();
        *(v9 + 16) = v8;
      }

      v10 = *(type metadata accessor for NoteEditActivityEvent(0) - 8);
      v11[0] = (v9 + ((*(v10 + 80) + 32) & ~*(v10 + 80)));
      v11[1] = v8;
      sub_214F6F478(v11, v12, v2, a1, a2, v7);
      *(v9 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v5 < 0)
  {
    goto LABEL_12;
  }

  if (v5)
  {
    return sub_214F6EA3C(0, v5, 1, a1);
  }

  return result;
}

uint64_t sub_214F6E804(uint64_t (*a1)(__int128 *, __int128 *), uint64_t a2)
{
  v5 = v2[1];
  result = sub_2150A60E0();
  if (result < v5)
  {
    if (v5 >= -1)
    {
      v7 = result;
      if (v5 < 2)
      {
        v8 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for _NSRange(0);
        v8 = sub_2150A4F50();
        *(v8 + 16) = v5 / 2;
      }

      v10[0] = v8 + 32;
      v10[1] = v5 / 2;
      v9 = v8;
      sub_214F6FF70(v10, v11, v2, a1, a2, v7);
      *(v9 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v5 < 0)
  {
    goto LABEL_12;
  }

  if (v5)
  {
    return sub_214F6ECB4(0, v5, 1, a1);
  }

  return result;
}

uint64_t sub_214F6E910(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(__int128 *, void *))
{
  if (a3 != a2)
  {
    v7 = a3;
    v8 = *v4;
    v9 = *v4 + 40 * a3;
    v10 = result - a3;
LABEL_4:
    v15 = v10;
    v18 = v9;
    while (1)
    {
      sub_214F6163C(v9, v17);
      sub_214F6163C(v9 - 40, v16);
      v11 = a4(v17, v16);
      __swift_destroy_boxed_opaque_existential_0(v16);
      result = __swift_destroy_boxed_opaque_existential_0(v17);
      if (v5)
      {
        break;
      }

      if (v11)
      {
        if (!v8)
        {
          __break(1u);
          return result;
        }

        sub_214D7A458(v9, v17);
        v12 = *(v9 - 24);
        *v9 = *(v9 - 40);
        *(v9 + 16) = v12;
        *(v9 + 32) = *(v9 - 8);
        result = sub_214D7A458(v17, v9 - 40);
        v9 -= 40;
        if (!__CFADD__(v10++, 1))
        {
          continue;
        }
      }

      ++v7;
      v9 = v18 + 40;
      v10 = v15 - 1;
      if (v7 != a2)
      {
        goto LABEL_4;
      }

      return result;
    }
  }

  return result;
}

uint64_t sub_214F6EA3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, char *))
{
  v40 = a4;
  v39 = type metadata accessor for NoteEditActivityEvent(0);
  v10 = MEMORY[0x28223BE20](v39, v9);
  v38 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v15 = &v30 - v14;
  result = MEMORY[0x28223BE20](v13, v16);
  v20 = &v30 - v19;
  v31 = a2;
  if (a3 != a2)
  {
    v21 = *v4;
    v22 = *(v18 + 72);
    v23 = *v4 + v22 * (a3 - 1);
    v36 = -v22;
    v37 = v21;
    v24 = a1 - a3;
    v30 = v22;
    v25 = v21 + v22 * a3;
LABEL_4:
    v34 = v23;
    v35 = a3;
    v32 = v25;
    v33 = v24;
    v26 = v23;
    while (1)
    {
      sub_214F736B4(v25, v20, type metadata accessor for NoteEditActivityEvent);
      sub_214F736B4(v26, v15, type metadata accessor for NoteEditActivityEvent);
      v27 = v40(v20, v15);
      sub_214F73828(v15, type metadata accessor for NoteEditActivityEvent);
      result = sub_214F73828(v20, type metadata accessor for NoteEditActivityEvent);
      if (v5)
      {
        break;
      }

      if (v27)
      {
        if (!v37)
        {
          __break(1u);
          return result;
        }

        v28 = v38;
        sub_214F7371C(v25, v38, type metadata accessor for NoteEditActivityEvent);
        swift_arrayInitWithTakeFrontToBack();
        result = sub_214F7371C(v28, v26, type metadata accessor for NoteEditActivityEvent);
        v26 += v36;
        v25 += v36;
        if (!__CFADD__(v24++, 1))
        {
          continue;
        }
      }

      a3 = v35 + 1;
      v23 = v34 + v30;
      v24 = v33 - 1;
      v25 = v32 + v30;
      if (v35 + 1 != v31)
      {
        goto LABEL_4;
      }

      return result;
    }
  }

  return result;
}

uint64_t sub_214F6ECB4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(__int128 *, __int128 *))
{
  v17 = a2;
  if (a3 != a2)
  {
    v7 = a3;
    v8 = *v4;
    v9 = *v4 + 16 * a3 - 16;
    v10 = result - a3;
LABEL_4:
    v11 = *(v8 + 16 * v7);
    v12 = v10;
    v13 = v9;
    while (1)
    {
      v16 = v11;
      v15 = *v13;
      result = a4(&v16, &v15);
      if (v5)
      {
        break;
      }

      if (result)
      {
        if (!v8)
        {
          __break(1u);
          return result;
        }

        v11 = v13[1];
        v13[1] = *v13;
        *v13-- = v11;
        if (!__CFADD__(v12++, 1))
        {
          continue;
        }
      }

      ++v7;
      v9 += 16;
      --v10;
      if (v7 != v17)
      {
        goto LABEL_4;
      }

      return result;
    }
  }

  return result;
}

uint64_t sub_214F6ED8C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t (*a4)(__int128 *, void *), uint64_t a5, uint64_t a6)
{
  v7 = a3;
  v101 = result;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = MEMORY[0x277D84F90];
LABEL_93:
    v8 = *v101;
    if (*v101)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        goto LABEL_125;
      }

      goto LABEL_95;
    }

    goto LABEL_134;
  }

  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  while (1)
  {
    v11 = v9;
    v12 = v9 + 1;
    if (v12 >= v8)
    {
      v8 = v12;
    }

    else
    {
      v13 = *v7;
      sub_214F6163C(*v7 + 40 * v12, v106);
      sub_214F6163C(v13 + 40 * v11, v105);
      v14 = a4(v106, v105);
      if (v6)
      {
LABEL_105:
        __swift_destroy_boxed_opaque_existential_0(v105);
        __swift_destroy_boxed_opaque_existential_0(v106);
      }

      v15 = v14;
      __swift_destroy_boxed_opaque_existential_0(v105);
      result = __swift_destroy_boxed_opaque_existential_0(v106);
      v16 = 0;
      v17 = v11;
      v18 = v11 - v8 + 2;
      v97 = v17;
      v19 = 40 * v17;
      v20 = v13 + 40 * v17 + 80;
      do
      {
        if (!(v18 + v16))
        {
          v11 = v97;
          v22 = v8 - 1;
          if ((v15 & 1) == 0)
          {
            goto LABEL_15;
          }

          goto LABEL_13;
        }

        sub_214F6163C(v20, v106);
        sub_214F6163C(v20 - 40, v105);
        v21 = a4(v106, v105);
        __swift_destroy_boxed_opaque_existential_0(v105);
        result = __swift_destroy_boxed_opaque_existential_0(v106);
        ++v16;
        v20 += 40;
      }

      while (((v15 ^ v21) & 1) == 0);
      v11 = v97;
      v22 = v97 + v16;
      v8 = v97 + v16 + 1;
      if ((v15 & 1) == 0)
      {
LABEL_15:
        v7 = a3;
        goto LABEL_23;
      }

LABEL_13:
      if (v8 < v11)
      {
        goto LABEL_128;
      }

      if (v11 > v22)
      {
        goto LABEL_15;
      }

      v23 = 40 * v8 - 40;
      v24 = v11;
      v25 = v8;
      do
      {
        if (v24 != --v25)
        {
          v30 = *a3;
          if (!*a3)
          {
            goto LABEL_132;
          }

          v26 = v30 + v19;
          v27 = v30 + v23;
          sub_214D7A458((v30 + v19), v106);
          v28 = *(v27 + 32);
          v29 = *(v27 + 16);
          *v26 = *v27;
          *(v26 + 16) = v29;
          *(v26 + 32) = v28;
          result = sub_214D7A458(v106, v27);
        }

        ++v24;
        v23 -= 40;
        v19 += 40;
      }

      while (v24 < v25);
      v7 = a3;
      v11 = v97;
    }

LABEL_23:
    v31 = *(v7 + 8);
    if (v8 >= v31)
    {
      goto LABEL_32;
    }

    if (__OFSUB__(v8, v11))
    {
      goto LABEL_124;
    }

    if (v8 - v11 >= a6)
    {
      goto LABEL_32;
    }

    if (__OFADD__(v11, a6))
    {
      __break(1u);
LABEL_127:
      __break(1u);
LABEL_128:
      __break(1u);
LABEL_129:
      __break(1u);
LABEL_130:
      __break(1u);
      goto LABEL_131;
    }

    if (v11 + a6 >= v31)
    {
      v32 = *(v7 + 8);
    }

    else
    {
      v32 = v11 + a6;
    }

    if (v32 < v11)
    {
      goto LABEL_127;
    }

    if (v8 == v32)
    {
LABEL_32:
      v33 = v8;
    }

    else
    {
      v81 = *v7;
      v82 = v81 + 40 * v8;
      v98 = v11;
      v100 = v32;
      v83 = v11 - v8;
      do
      {
        v95 = v83;
        v84 = v82;
        v85 = v82;
        do
        {
          sub_214F6163C(v85, v106);
          sub_214F6163C(v85 - 40, v105);
          v86 = a4(v106, v105);
          if (v6)
          {
            goto LABEL_105;
          }

          v87 = v86;
          __swift_destroy_boxed_opaque_existential_0(v105);
          result = __swift_destroy_boxed_opaque_existential_0(v106);
          if ((v87 & 1) == 0)
          {
            break;
          }

          if (!v81)
          {
            goto LABEL_130;
          }

          sub_214D7A458(v85, v106);
          v88 = *(v85 - 24);
          *v85 = *(v85 - 40);
          *(v85 + 16) = v88;
          *(v85 + 32) = *(v85 - 8);
          sub_214D7A458(v106, v85 - 40);
          v85 -= 40;
        }

        while (!__CFADD__(v83++, 1));
        ++v8;
        v82 = v84 + 40;
        v83 = v95 - 1;
        v33 = v100;
      }

      while (v8 != v100);
      v7 = a3;
      v11 = v98;
    }

    v8 = 40;
    if (v33 < v11)
    {
      goto LABEL_123;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_21505F5DC(0, *(v10 + 2) + 1, 1, v10);
      v10 = result;
    }

    v35 = *(v10 + 2);
    v34 = *(v10 + 3);
    v36 = v35 + 1;
    if (v35 >= v34 >> 1)
    {
      result = sub_21505F5DC((v34 > 1), v35 + 1, 1, v10);
      v10 = result;
    }

    *(v10 + 2) = v36;
    v37 = &v10[16 * v35];
    *(v37 + 4) = v11;
    *(v37 + 5) = v33;
    v38 = *v101;
    if (!*v101)
    {
      goto LABEL_133;
    }

    v99 = v33;
    if (v35)
    {
      break;
    }

LABEL_3:
    v8 = *(v7 + 8);
    v9 = v99;
    if (v99 >= v8)
    {
      goto LABEL_93;
    }
  }

  while (1)
  {
    v39 = v36 - 1;
    if (v36 >= 4)
    {
      v44 = &v10[16 * v36 + 32];
      v45 = *(v44 - 64);
      v46 = *(v44 - 56);
      v50 = __OFSUB__(v46, v45);
      v47 = v46 - v45;
      if (v50)
      {
        goto LABEL_110;
      }

      v49 = *(v44 - 48);
      v48 = *(v44 - 40);
      v50 = __OFSUB__(v48, v49);
      v42 = v48 - v49;
      v43 = v50;
      if (v50)
      {
        goto LABEL_111;
      }

      v51 = &v10[16 * v36];
      v53 = *v51;
      v52 = *(v51 + 1);
      v50 = __OFSUB__(v52, v53);
      v54 = v52 - v53;
      if (v50)
      {
        goto LABEL_113;
      }

      v50 = __OFADD__(v42, v54);
      v55 = v42 + v54;
      if (v50)
      {
        goto LABEL_116;
      }

      if (v55 >= v47)
      {
        v73 = &v10[16 * v39 + 32];
        v75 = *v73;
        v74 = *(v73 + 1);
        v50 = __OFSUB__(v74, v75);
        v76 = v74 - v75;
        if (v50)
        {
          goto LABEL_122;
        }

        if (v42 < v76)
        {
          v39 = v36 - 2;
        }

        goto LABEL_74;
      }

      goto LABEL_53;
    }

    if (v36 == 3)
    {
      v40 = *(v10 + 4);
      v41 = *(v10 + 5);
      v50 = __OFSUB__(v41, v40);
      v42 = v41 - v40;
      v43 = v50;
LABEL_53:
      if (v43)
      {
        goto LABEL_112;
      }

      v56 = &v10[16 * v36];
      v58 = *v56;
      v57 = *(v56 + 1);
      v59 = __OFSUB__(v57, v58);
      v60 = v57 - v58;
      v61 = v59;
      if (v59)
      {
        goto LABEL_115;
      }

      v62 = &v10[16 * v39 + 32];
      v64 = *v62;
      v63 = *(v62 + 1);
      v50 = __OFSUB__(v63, v64);
      v65 = v63 - v64;
      if (v50)
      {
        goto LABEL_118;
      }

      if (__OFADD__(v60, v65))
      {
        goto LABEL_119;
      }

      if (v60 + v65 >= v42)
      {
        if (v42 < v65)
        {
          v39 = v36 - 2;
        }

        goto LABEL_74;
      }

      goto LABEL_67;
    }

    v66 = &v10[16 * v36];
    v68 = *v66;
    v67 = *(v66 + 1);
    v50 = __OFSUB__(v67, v68);
    v60 = v67 - v68;
    v61 = v50;
LABEL_67:
    if (v61)
    {
      goto LABEL_114;
    }

    v69 = &v10[16 * v39];
    v71 = *(v69 + 4);
    v70 = *(v69 + 5);
    v50 = __OFSUB__(v70, v71);
    v72 = v70 - v71;
    if (v50)
    {
      goto LABEL_117;
    }

    if (v72 < v60)
    {
      goto LABEL_3;
    }

LABEL_74:
    v77 = v39 - 1;
    if (v39 - 1 >= v36)
    {
      break;
    }

    if (!*v7)
    {
      goto LABEL_129;
    }

    v78 = *&v10[16 * v77 + 32];
    v79 = *&v10[16 * v39 + 40];
    sub_214F70594((*v7 + 40 * v78), (*v7 + 40 * *&v10[16 * v39 + 32]), *v7 + 40 * v79, v38, a4, a5);
    if (v6)
    {
    }

    if (v79 < v78)
    {
      goto LABEL_108;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_214F41D00(v10);
    }

    if (v77 >= *(v10 + 2))
    {
      goto LABEL_109;
    }

    v80 = &v10[16 * v77];
    *(v80 + 4) = v78;
    *(v80 + 5) = v79;
    v107 = v10;
    result = sub_214F41C74(v39);
    v10 = v107;
    v36 = *(v107 + 2);
    if (v36 <= 1)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_108:
  __break(1u);
LABEL_109:
  __break(1u);
LABEL_110:
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
  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  result = sub_214F41D00(v10);
  v10 = result;
LABEL_95:
  v107 = v10;
  v90 = *(v10 + 2);
  if (v90 < 2)
  {
  }

  v91 = v7;
  v7 = 40;
  while (*v91)
  {
    v92 = *&v10[16 * v90];
    v93 = *&v10[16 * v90 + 24];
    sub_214F70594((*v91 + 40 * v92), (*v91 + 40 * *&v10[16 * v90 + 16]), *v91 + 40 * v93, v8, a4, a5);
    if (v6)
    {
    }

    if (v93 < v92)
    {
      goto LABEL_120;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_214F41D00(v10);
    }

    if (v90 - 2 >= *(v10 + 2))
    {
      goto LABEL_121;
    }

    v94 = &v10[16 * v90];
    *v94 = v92;
    *(v94 + 1) = v93;
    v107 = v10;
    result = sub_214F41C74(v90 - 1);
    v10 = v107;
    v90 = *(v107 + 2);
    if (v90 <= 1)
    {
    }
  }

LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_214F6F478(char **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(char *, char *), uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v150 = a4;
  v151 = a5;
  v138 = a1;
  v143 = type metadata accessor for NoteEditActivityEvent(0);
  v148 = *(v143 - 8);
  v11 = MEMORY[0x28223BE20](v143, v10);
  v140 = &v127 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v142 = &v127 - v15;
  v17 = MEMORY[0x28223BE20](v14, v16);
  v19 = MEMORY[0x28223BE20](v17, v18);
  v21 = &v127 - v20;
  v23 = MEMORY[0x28223BE20](v19, v22);
  v25 = MEMORY[0x28223BE20](v23, v24);
  v27 = &v127 - v26;
  v29 = MEMORY[0x28223BE20](v25, v28);
  result = MEMORY[0x28223BE20](v29, v30);
  v149 = a3;
  if (a3[1] < 1)
  {
    v38 = MEMORY[0x277D84F90];
LABEL_99:
    v27 = *v138;
    if (*v138)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        goto LABEL_133;
      }

      goto LABEL_101;
    }

    goto LABEL_142;
  }

  v36 = a3[1];
  v133 = &v127 - v32;
  v134 = v35;
  v144 = v34;
  v141 = v33;
  v132 = a6;
  v37 = 0;
  v38 = MEMORY[0x277D84F90];
  v131 = v21;
  while (1)
  {
    if (v37 + 1 >= v36)
    {
      v51 = v37 + 1;
    }

    else
    {
      v136 = v36;
      v39 = *v149;
      v40 = *(v148 + 72);
      v41 = v37;
      v42 = *v149 + v40 * (v37 + 1);
      v43 = v133;
      sub_214F736B4(v42, v133, type metadata accessor for NoteEditActivityEvent);
      v147 = v39;
      v44 = v39 + v40 * v41;
      v45 = v134;
      sub_214F736B4(v44, v134, type metadata accessor for NoteEditActivityEvent);
      LODWORD(v146) = v150(v43, v45);
      if (v7)
      {
        sub_214F73828(v45, type metadata accessor for NoteEditActivityEvent);
        v126 = v43;
        goto LABEL_112;
      }

      sub_214F73828(v45, type metadata accessor for NoteEditActivityEvent);
      result = sub_214F73828(v43, type metadata accessor for NoteEditActivityEvent);
      v130 = v136 - 1;
      v145 = v136 - 2;
      v46 = v147 + v40 * (v41 + 2);
      v135 = v41;
      v47 = v40;
      v147 = v40;
      while (v145 != v41)
      {
        sub_214F736B4(v46, v27, type metadata accessor for NoteEditActivityEvent);
        v48 = v27;
        v49 = v144;
        sub_214F736B4(v42, v144, type metadata accessor for NoteEditActivityEvent);
        v50 = v150(v48, v49);
        sub_214F73828(v49, type metadata accessor for NoteEditActivityEvent);
        result = sub_214F73828(v48, type metadata accessor for NoteEditActivityEvent);
        ++v41;
        v47 = v147;
        v46 += v147;
        v42 += v147;
        v27 = v48;
        if ((v146 ^ v50))
        {
          v51 = v41 + 1;
          goto LABEL_12;
        }
      }

      v41 = v130;
      v51 = v136;
LABEL_12:
      v37 = v135;
      if ((v146 & 1) == 0)
      {
        goto LABEL_15;
      }

      if (v51 < v135)
      {
        goto LABEL_136;
      }

      if (v135 <= v41)
      {
        v52 = v51;
        v53 = v47 * (v51 - 1);
        v54 = v52 * v47;
        v136 = v52;
        v137 = v27;
        v55 = v52;
        v56 = v135;
        v57 = v135 * v47;
        do
        {
          if (v56 != --v55)
          {
            v58 = *v149;
            if (!*v149)
            {
              goto LABEL_140;
            }

            sub_214F7371C(v58 + v57, v140, type metadata accessor for NoteEditActivityEvent);
            if (v57 < v53 || v58 + v57 >= (v58 + v54))
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v57 != v53)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            result = sub_214F7371C(v140, v58 + v53, type metadata accessor for NoteEditActivityEvent);
            v27 = v137;
            v47 = v147;
          }

          ++v56;
          v53 -= v47;
          v54 -= v47;
          v57 += v47;
        }

        while (v56 < v55);
        v21 = v131;
        v37 = v135;
        v51 = v136;
      }

      else
      {
LABEL_15:
        v21 = v131;
      }
    }

    v59 = v149[1];
    if (v51 >= v59)
    {
      goto LABEL_36;
    }

    if (__OFSUB__(v51, v37))
    {
      goto LABEL_132;
    }

    if (v51 - v37 >= v132)
    {
LABEL_36:
      v61 = v51;
      if (v51 < v37)
      {
        goto LABEL_131;
      }

      goto LABEL_37;
    }

    if (__OFADD__(v37, v132))
    {
      __break(1u);
LABEL_135:
      __break(1u);
LABEL_136:
      __break(1u);
LABEL_137:
      __break(1u);
LABEL_138:
      __break(1u);
      goto LABEL_139;
    }

    if (v37 + v132 >= v59)
    {
      v60 = v149[1];
    }

    else
    {
      v60 = v37 + v132;
    }

    if (v60 < v37)
    {
      goto LABEL_135;
    }

    if (v51 == v60)
    {
      goto LABEL_36;
    }

    v137 = v27;
    v109 = *v149;
    v110 = *(v148 + 72);
    v111 = *v149 + v110 * (v51 - 1);
    v146 = -v110;
    v147 = v109;
    v135 = v37;
    v112 = v37 - v51;
    v128 = v110;
    v113 = v109 + v51 * v110;
    v145 = v60;
    v139 = v38;
    do
    {
      v129 = v113;
      v130 = v112;
      v136 = v111;
      while (1)
      {
        sub_214F736B4(v113, v21, type metadata accessor for NoteEditActivityEvent);
        v114 = v21;
        v115 = v141;
        sub_214F736B4(v111, v141, type metadata accessor for NoteEditActivityEvent);
        v116 = v150(v114, v115);
        if (v7)
        {
          sub_214F73828(v115, type metadata accessor for NoteEditActivityEvent);
          v126 = v114;
LABEL_112:
          sub_214F73828(v126, type metadata accessor for NoteEditActivityEvent);
        }

        v117 = v116;
        v118 = v51;
        sub_214F73828(v115, type metadata accessor for NoteEditActivityEvent);
        result = sub_214F73828(v114, type metadata accessor for NoteEditActivityEvent);
        v21 = v114;
        if ((v117 & 1) == 0)
        {
          break;
        }

        if (!v147)
        {
          goto LABEL_138;
        }

        v119 = v142;
        sub_214F7371C(v113, v142, type metadata accessor for NoteEditActivityEvent);
        swift_arrayInitWithTakeFrontToBack();
        sub_214F7371C(v119, v111, type metadata accessor for NoteEditActivityEvent);
        v111 += v146;
        v113 += v146;
        v120 = __CFADD__(v112++, 1);
        v51 = v118;
        v7 = 0;
        v38 = v139;
        if (v120)
        {
          goto LABEL_95;
        }
      }

      v7 = 0;
      v38 = v139;
LABEL_95:
      ++v51;
      v111 = v136 + v128;
      v112 = v130 - 1;
      v113 = v129 + v128;
      v61 = v145;
    }

    while (v51 != v145);
    v27 = v137;
    v37 = v135;
    if (v145 < v135)
    {
      goto LABEL_131;
    }

LABEL_37:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_21505F5DC(0, *(v38 + 2) + 1, 1, v38);
      v38 = result;
    }

    v63 = *(v38 + 2);
    v62 = *(v38 + 3);
    v64 = v63 + 1;
    if (v63 >= v62 >> 1)
    {
      result = sub_21505F5DC((v62 > 1), v63 + 1, 1, v38);
      v38 = result;
    }

    *(v38 + 2) = v64;
    v65 = &v38[16 * v63];
    *(v65 + 4) = v37;
    *(v65 + 5) = v61;
    v145 = v61;
    v66 = *v138;
    if (!*v138)
    {
      goto LABEL_141;
    }

    if (v63)
    {
      break;
    }

LABEL_3:
    v36 = v149[1];
    v37 = v145;
    if (v145 >= v36)
    {
      goto LABEL_99;
    }
  }

  while (2)
  {
    v67 = v64 - 1;
    if (v64 >= 4)
    {
      v72 = &v38[16 * v64 + 32];
      v73 = *(v72 - 64);
      v74 = *(v72 - 56);
      v78 = __OFSUB__(v74, v73);
      v75 = v74 - v73;
      if (v78)
      {
        goto LABEL_118;
      }

      v77 = *(v72 - 48);
      v76 = *(v72 - 40);
      v78 = __OFSUB__(v76, v77);
      v70 = v76 - v77;
      v71 = v78;
      if (v78)
      {
        goto LABEL_119;
      }

      v79 = &v38[16 * v64];
      v81 = *v79;
      v80 = *(v79 + 1);
      v78 = __OFSUB__(v80, v81);
      v82 = v80 - v81;
      if (v78)
      {
        goto LABEL_121;
      }

      v78 = __OFADD__(v70, v82);
      v83 = v70 + v82;
      if (v78)
      {
        goto LABEL_124;
      }

      if (v83 >= v75)
      {
        v101 = &v38[16 * v67 + 32];
        v103 = *v101;
        v102 = *(v101 + 1);
        v78 = __OFSUB__(v102, v103);
        v104 = v102 - v103;
        if (v78)
        {
          goto LABEL_130;
        }

        if (v70 < v104)
        {
          v67 = v64 - 2;
        }
      }

      else
      {
LABEL_56:
        if (v71)
        {
          goto LABEL_120;
        }

        v84 = &v38[16 * v64];
        v86 = *v84;
        v85 = *(v84 + 1);
        v87 = __OFSUB__(v85, v86);
        v88 = v85 - v86;
        v89 = v87;
        if (v87)
        {
          goto LABEL_123;
        }

        v90 = &v38[16 * v67 + 32];
        v92 = *v90;
        v91 = *(v90 + 1);
        v78 = __OFSUB__(v91, v92);
        v93 = v91 - v92;
        if (v78)
        {
          goto LABEL_126;
        }

        if (__OFADD__(v88, v93))
        {
          goto LABEL_127;
        }

        if (v88 + v93 < v70)
        {
          goto LABEL_70;
        }

        if (v70 < v93)
        {
          v67 = v64 - 2;
        }
      }
    }

    else
    {
      if (v64 == 3)
      {
        v68 = *(v38 + 4);
        v69 = *(v38 + 5);
        v78 = __OFSUB__(v69, v68);
        v70 = v69 - v68;
        v71 = v78;
        goto LABEL_56;
      }

      v94 = &v38[16 * v64];
      v96 = *v94;
      v95 = *(v94 + 1);
      v78 = __OFSUB__(v95, v96);
      v88 = v95 - v96;
      v89 = v78;
LABEL_70:
      if (v89)
      {
        goto LABEL_122;
      }

      v97 = &v38[16 * v67];
      v99 = *(v97 + 4);
      v98 = *(v97 + 5);
      v78 = __OFSUB__(v98, v99);
      v100 = v98 - v99;
      if (v78)
      {
        goto LABEL_125;
      }

      if (v100 < v88)
      {
        goto LABEL_3;
      }
    }

    v105 = v67 - 1;
    if (v67 - 1 < v64)
    {
      if (!*v149)
      {
        goto LABEL_137;
      }

      v106 = *&v38[16 * v105 + 32];
      v107 = *&v38[16 * v67 + 40];
      sub_214F70948(*v149 + *(v148 + 72) * v106, *v149 + *(v148 + 72) * *&v38[16 * v67 + 32], *v149 + *(v148 + 72) * v107, v66, v150, v151);
      if (v7)
      {
      }

      if (v107 < v106)
      {
        goto LABEL_116;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v38 = sub_214F41D00(v38);
      }

      if (v105 >= *(v38 + 2))
      {
        goto LABEL_117;
      }

      v108 = &v38[16 * v105];
      *(v108 + 4) = v106;
      *(v108 + 5) = v107;
      v152 = v38;
      result = sub_214F41C74(v67);
      v38 = v152;
      v64 = *(v152 + 2);
      if (v64 <= 1)
      {
        goto LABEL_3;
      }

      continue;
    }

    break;
  }

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
  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  result = sub_214F41D00(v38);
  v38 = result;
LABEL_101:
  v152 = v38;
  v121 = *(v38 + 2);
  if (v121 < 2)
  {
  }

  v122 = v150;
  while (*v149)
  {
    v123 = *&v38[16 * v121];
    v124 = *&v38[16 * v121 + 24];
    sub_214F70948(*v149 + *(v148 + 72) * v123, *v149 + *(v148 + 72) * *&v38[16 * v121 + 16], *v149 + *(v148 + 72) * v124, v27, v122, v151);
    if (v7)
    {
    }

    if (v124 < v123)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v38 = sub_214F41D00(v38);
    }

    if (v121 - 2 >= *(v38 + 2))
    {
      goto LABEL_129;
    }

    v125 = &v38[16 * v121];
    *v125 = v123;
    *(v125 + 1) = v124;
    v152 = v38;
    result = sub_214F41C74(v121 - 1);
    v38 = v152;
    v121 = *(v152 + 2);
    if (v121 <= 1)
    {
    }
  }

LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
  return result;
}

uint64_t sub_214F6FF70(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t (*a4)(__int128 *, __int128 *), uint64_t a5, uint64_t a6)
{
  v91 = result;
  v8 = a3;
  v9 = a3[1];
  if (v9 < 1)
  {
    v11 = MEMORY[0x277D84F90];
LABEL_89:
    v12 = *v91;
    if (*v91)
    {
      v9 = v6;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        goto LABEL_118;
      }

      goto LABEL_91;
    }

    goto LABEL_127;
  }

  v10 = 0;
  v11 = MEMORY[0x277D84F90];
  while (1)
  {
    v12 = v10 + 1;
    if (v10 + 1 >= v9)
    {
      goto LABEL_15;
    }

    v13 = *v8;
    v14 = *(v13 + 16 * v12);
    v92 = *(v13 + 16 * v10);
    v93 = v14;
    result = a4(&v93, &v92);
    if (v6)
    {
    }

    v15 = result;
    v16 = 16 * v10;
    v17 = (v13 + 16 * v10 + 32);
    v86 = v10;
    while (v9 - 2 != v10)
    {
      v18 = *v17;
      v92 = *(v17 - 1);
      v93 = v18;
      result = a4(&v93, &v92);
      ++v10;
      ++v17;
      if ((v15 ^ result))
      {
        v9 = v10 + 1;
        v8 = a3;
        if ((v15 & 1) == 0)
        {
          goto LABEL_10;
        }

LABEL_12:
        if (v9 >= v86)
        {
          v19 = v86 <= v10;
          v10 = v86;
          if (v19)
          {
            v75 = 16 * v9 - 16;
            v76 = v9;
            v77 = v86;
            do
            {
              if (v77 != --v76)
              {
                v78 = *v8;
                if (!*v8)
                {
                  goto LABEL_125;
                }

                v79 = *(v78 + v16);
                *(v78 + v16) = *(v78 + v75);
                *(v78 + v75) = v79;
              }

              ++v77;
              v75 -= 16;
              v16 += 16;
            }

            while (v77 < v76);
          }

          v12 = v9;
          goto LABEL_15;
        }

LABEL_121:
        __break(1u);
LABEL_122:
        __break(1u);
LABEL_123:
        __break(1u);
        goto LABEL_124;
      }
    }

    v10 = v9 - 1;
    v8 = a3;
    if (v15)
    {
      goto LABEL_12;
    }

LABEL_10:
    v12 = v9;
    v10 = v86;
LABEL_15:
    v20 = v8[1];
    if (v12 >= v20)
    {
      goto LABEL_130;
    }

    if (__OFSUB__(v12, v10))
    {
      goto LABEL_117;
    }

    if (v12 - v10 >= a6)
    {
      goto LABEL_130;
    }

    v21 = (v10 + a6);
    if (__OFADD__(v10, a6))
    {
      __break(1u);
LABEL_120:
      __break(1u);
      goto LABEL_121;
    }

    if (v21 >= v20)
    {
      v21 = v8[1];
    }

    if (v21 < v10)
    {
      goto LABEL_120;
    }

    if (v12 == v21)
    {
LABEL_130:
      if (v12 < v10)
      {
        goto LABEL_116;
      }
    }

    else
    {
      v68 = *v8;
      v69 = *v8 + 16 * v12 - 16;
      v87 = v10;
      v9 = v10 - v12;
      v84 = v21;
      do
      {
        v90 = v12;
        v70 = *(v68 + 16 * v12);
        v71 = v9;
        v72 = v69;
        v73 = v69;
        do
        {
          v93 = v70;
          v8 = (v73 + 1);
          v92 = *v73;
          result = a4(&v93, &v92);
          if (v6)
          {
          }

          if ((result & 1) == 0)
          {
            break;
          }

          if (!v68)
          {
            goto LABEL_123;
          }

          v70 = v73[1];
          *v8 = *v73;
          *v73-- = v70;
        }

        while (!__CFADD__(v71++, 1));
        v12 = v90 + 1;
        v69 = v72 + 16;
        --v9;
      }

      while ((v90 + 1) != v84);
      v12 = v84;
      v10 = v87;
      if (v84 < v87)
      {
        goto LABEL_116;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_21505F5DC(0, *(v11 + 2) + 1, 1, v11);
      v11 = result;
    }

    v23 = *(v11 + 2);
    v22 = *(v11 + 3);
    v24 = v23 + 1;
    if (v23 >= v22 >> 1)
    {
      result = sub_21505F5DC((v22 > 1), v23 + 1, 1, v11);
      v11 = result;
    }

    v8 = a3;
    *(v11 + 2) = v24;
    v25 = &v11[16 * v23];
    *(v25 + 4) = v10;
    *(v25 + 5) = v12;
    v26 = *v91;
    if (!*v91)
    {
      goto LABEL_126;
    }

    v89 = v12;
    if (v23)
    {
      break;
    }

LABEL_3:
    v9 = a3[1];
    v10 = v89;
    if (v89 >= v9)
    {
      goto LABEL_89;
    }
  }

  while (1)
  {
    v27 = v24 - 1;
    if (v24 >= 4)
    {
      v32 = &v11[16 * v24 + 32];
      v33 = *(v32 - 64);
      v34 = *(v32 - 56);
      v38 = __OFSUB__(v34, v33);
      v35 = v34 - v33;
      if (v38)
      {
        goto LABEL_103;
      }

      v37 = *(v32 - 48);
      v36 = *(v32 - 40);
      v38 = __OFSUB__(v36, v37);
      v30 = v36 - v37;
      v31 = v38;
      if (v38)
      {
        goto LABEL_104;
      }

      v39 = &v11[16 * v24];
      v41 = *v39;
      v40 = *(v39 + 1);
      v38 = __OFSUB__(v40, v41);
      v42 = v40 - v41;
      if (v38)
      {
        goto LABEL_106;
      }

      v38 = __OFADD__(v30, v42);
      v43 = v30 + v42;
      if (v38)
      {
        goto LABEL_109;
      }

      if (v43 >= v35)
      {
        v61 = &v11[16 * v27 + 32];
        v63 = *v61;
        v62 = *(v61 + 1);
        v38 = __OFSUB__(v62, v63);
        v64 = v62 - v63;
        if (v38)
        {
          goto LABEL_115;
        }

        if (v30 < v64)
        {
          v27 = v24 - 2;
        }

        goto LABEL_64;
      }

      goto LABEL_43;
    }

    if (v24 == 3)
    {
      v28 = *(v11 + 4);
      v29 = *(v11 + 5);
      v38 = __OFSUB__(v29, v28);
      v30 = v29 - v28;
      v31 = v38;
LABEL_43:
      if (v31)
      {
        goto LABEL_105;
      }

      v44 = &v11[16 * v24];
      v46 = *v44;
      v45 = *(v44 + 1);
      v47 = __OFSUB__(v45, v46);
      v48 = v45 - v46;
      v49 = v47;
      if (v47)
      {
        goto LABEL_108;
      }

      v50 = &v11[16 * v27 + 32];
      v52 = *v50;
      v51 = *(v50 + 1);
      v38 = __OFSUB__(v51, v52);
      v53 = v51 - v52;
      if (v38)
      {
        goto LABEL_111;
      }

      if (__OFADD__(v48, v53))
      {
        goto LABEL_112;
      }

      if (v48 + v53 >= v30)
      {
        if (v30 < v53)
        {
          v27 = v24 - 2;
        }

        goto LABEL_64;
      }

      goto LABEL_57;
    }

    v54 = &v11[16 * v24];
    v56 = *v54;
    v55 = *(v54 + 1);
    v38 = __OFSUB__(v55, v56);
    v48 = v55 - v56;
    v49 = v38;
LABEL_57:
    if (v49)
    {
      goto LABEL_107;
    }

    v57 = &v11[16 * v27];
    v59 = *(v57 + 4);
    v58 = *(v57 + 5);
    v38 = __OFSUB__(v58, v59);
    v60 = v58 - v59;
    if (v38)
    {
      goto LABEL_110;
    }

    if (v60 < v48)
    {
      goto LABEL_3;
    }

LABEL_64:
    v9 = v27 - 1;
    if (v27 - 1 >= v24)
    {
      break;
    }

    if (!*a3)
    {
      goto LABEL_122;
    }

    v65 = *&v11[16 * v9 + 32];
    v66 = *&v11[16 * v27 + 40];
    sub_214F70F90((*a3 + 16 * v65), (*a3 + 16 * *&v11[16 * v27 + 32]), (*a3 + 16 * v66), v26, a4);
    if (v6)
    {
    }

    if (v66 < v65)
    {
      goto LABEL_101;
    }

    v12 = 0;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_214F41D00(v11);
    }

    if (v9 >= *(v11 + 2))
    {
      goto LABEL_102;
    }

    v67 = &v11[16 * v9];
    *(v67 + 4) = v65;
    *(v67 + 5) = v66;
    v94 = v11;
    result = sub_214F41C74(v27);
    v11 = v94;
    v24 = *(v94 + 2);
    if (v24 <= 1)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_101:
  __break(1u);
LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
LABEL_105:
  __break(1u);
LABEL_106:
  __break(1u);
LABEL_107:
  __break(1u);
LABEL_108:
  __break(1u);
LABEL_109:
  __break(1u);
LABEL_110:
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
  result = sub_214F41D00(v11);
  v11 = result;
LABEL_91:
  v94 = v11;
  v80 = *(v11 + 2);
  if (v80 < 2)
  {
  }

  while (*v8)
  {
    v81 = *&v11[16 * v80];
    v82 = *&v11[16 * v80 + 24];
    sub_214F70F90((*v8 + 16 * v81), (*v8 + 16 * *&v11[16 * v80 + 16]), (*v8 + 16 * v82), v12, a4);
    if (v9)
    {
    }

    if (v82 < v81)
    {
      goto LABEL_113;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_214F41D00(v11);
    }

    if (v80 - 2 >= *(v11 + 2))
    {
      goto LABEL_114;
    }

    v83 = &v11[16 * v80];
    *v83 = v81;
    *(v83 + 1) = v82;
    v94 = v11;
    result = sub_214F41C74(v80 - 1);
    v11 = v94;
    v80 = *(v94 + 2);
    if (v80 <= 1)
    {
    }
  }

LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
  return result;
}

uint64_t sub_214F70594(char *__dst, char *__src, unint64_t a3, char *a4, uint64_t (*a5)(void *, void *), uint64_t a6)
{
  v42[6] = a6;
  v7 = a4;
  v8 = a3;
  v9 = __src;
  v10 = __dst;
  v11 = __src - __dst;
  v12 = (__src - __dst) / 40;
  v13 = a3 - __src;
  v14 = (a3 - __src) / 40;
  if (v12 < v14)
  {
    if (a4 != __dst || &__dst[40 * v12] <= a4)
    {
      memmove(a4, __dst, 40 * v12);
    }

    v15 = v7 + 40 * v12;
    if (v11 < 40)
    {
LABEL_6:
      v9 = v10;
      goto LABEL_42;
    }

    while (1)
    {
      if (v9 >= v8)
      {
        goto LABEL_6;
      }

      sub_214F6163C(v9, v42);
      sub_214F6163C(v7, v41);
      v20 = a5(v42, v41);
      if (v6)
      {
        __swift_destroy_boxed_opaque_existential_0(v41);
        __swift_destroy_boxed_opaque_existential_0(v42);
        v36 = (v15 - v7) / 40;
        if (v10 < v7 || v10 >= v7 + 40 * v36 || v10 != v7)
        {
          v35 = 40 * v36;
          v34 = v10;
          goto LABEL_46;
        }

        return 1;
      }

      v21 = v20;
      __swift_destroy_boxed_opaque_existential_0(v41);
      __swift_destroy_boxed_opaque_existential_0(v42);
      if (v21)
      {
        break;
      }

      v16 = v7;
      v17 = v10 == v7;
      v7 += 40;
      if (!v17)
      {
        goto LABEL_8;
      }

LABEL_9:
      v10 += 40;
      if (v7 >= v15)
      {
        goto LABEL_6;
      }
    }

    v16 = v9;
    v17 = v10 == v9;
    v9 += 40;
    if (v17)
    {
      goto LABEL_9;
    }

LABEL_8:
    v18 = *v16;
    v19 = *(v16 + 16);
    *(v10 + 4) = *(v16 + 32);
    *v10 = v18;
    *(v10 + 1) = v19;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[40 * v14] <= a4)
  {
    memmove(a4, __src, 40 * v14);
  }

  v15 = v7 + 40 * v14;
  if (v13 < 40 || v9 <= v10)
  {
LABEL_42:
    v37 = (v15 - v7) / 40;
    if (v9 < v7 || v9 >= v7 + 40 * v37 || v9 != v7)
    {
      v35 = 40 * v37;
      v34 = v9;
      goto LABEL_46;
    }

    return 1;
  }

  v22 = -v7;
LABEL_22:
  v39 = v9;
  v9 -= 40;
  v23 = v15 - 40;
  v24 = v22 + v15;
  v8 -= 40;
  while (1)
  {
    sub_214F6163C(v23, v42);
    sub_214F6163C(v9, v41);
    v27 = a5(v42, v41);
    if (v6)
    {
      break;
    }

    v28 = v27;
    __swift_destroy_boxed_opaque_existential_0(v41);
    __swift_destroy_boxed_opaque_existential_0(v42);
    if (v28)
    {
      if (v8 + 40 != v39)
      {
        v31 = *v9;
        v32 = *(v9 + 1);
        *(v8 + 32) = *(v9 + 4);
        *v8 = v31;
        *(v8 + 16) = v32;
      }

      v15 = v23 + 40;
      if (v23 + 40 <= v7 || (v22 = -v7, v9 <= v10))
      {
        v15 = v23 + 40;
        goto LABEL_42;
      }

      goto LABEL_22;
    }

    if (v8 + 40 != v23 + 40)
    {
      v29 = *v23;
      v30 = *(v23 + 16);
      *(v8 + 32) = *(v23 + 32);
      *v8 = v29;
      *(v8 + 16) = v30;
    }

    v25 = v23 - 40;
    v24 -= 40;
    v8 -= 40;
    v26 = v23 > v7;
    v23 -= 40;
    if (!v26)
    {
      v15 = v25 + 40;
      v9 = v39;
      goto LABEL_42;
    }
  }

  __swift_destroy_boxed_opaque_existential_0(v41);
  __swift_destroy_boxed_opaque_existential_0(v42);
  v33 = v24 / 40;
  v34 = v39;
  if (v39 < v7 || v39 >= v7 + 40 * v33 || v39 != v7)
  {
    v35 = 40 * v33;
LABEL_46:
    memmove(v34, v7, v35);
  }

  return 1;
}

unint64_t sub_214F70948(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t (*a5)(char *, char *), uint64_t a6)
{
  v7 = v6;
  v58 = a6;
  v59 = a5;
  v60 = a3;
  v57 = type metadata accessor for NoteEditActivityEvent(0);
  v12 = MEMORY[0x28223BE20](v57, v11);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v12, v15);
  v18 = &v49 - v17;
  v20 = MEMORY[0x28223BE20](v16, v19);
  v22 = &v49 - v21;
  result = MEMORY[0x28223BE20](v20, v23);
  v26 = &v49 - v25;
  v56 = *(v27 + 72);
  if (!v56)
  {
    __break(1u);
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  result = a1;
  if (a2 - a1 == 0x8000000000000000 && v56 == -1)
  {
    goto LABEL_66;
  }

  v28 = v60 - a2;
  if (v60 - a2 != 0x8000000000000000 || v56 != -1)
  {
    v29 = (a2 - a1) / v56;
    v63 = a1;
    v62 = a4;
    v55 = a1;
    if (v29 < v28 / v56)
    {
      v30 = v29 * v56;
      if (a4 < result || result + v30 <= a4)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (a4 == result)
        {
          goto LABEL_17;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      result = v55;
LABEL_17:
      v55 = a4 + v30;
      v61 = a4 + v30;
      if (v30 >= 1 && a2 < v60)
      {
        while (1)
        {
          v33 = result;
          sub_214F736B4(a2, v26, type metadata accessor for NoteEditActivityEvent);
          sub_214F736B4(a4, v22, type metadata accessor for NoteEditActivityEvent);
          v34 = v59(v26, v22);
          if (v7)
          {
            break;
          }

          v35 = v34;
          v36 = a4;
          sub_214F73828(v22, type metadata accessor for NoteEditActivityEvent);
          sub_214F73828(v26, type metadata accessor for NoteEditActivityEvent);
          if (v35)
          {
            v37 = v56;
            v38 = v33;
            if (v33 < a2 || v33 >= a2 + v56)
            {
              swift_arrayInitWithTakeFrontToBack();
              v38 = v33;
              a2 += v37;
              v7 = 0;
            }

            else
            {
              v7 = 0;
              if (v33 != a2)
              {
                swift_arrayInitWithTakeBackToFront();
                v38 = v33;
              }

              a2 += v37;
            }
          }

          else
          {
            v39 = a4;
            v37 = v56;
            a4 += v56;
            v38 = v33;
            if (v33 < v36 || v33 >= a4)
            {
              swift_arrayInitWithTakeFrontToBack();
              v38 = v33;
              v7 = 0;
            }

            else
            {
              v7 = 0;
              if (v33 != v39)
              {
                swift_arrayInitWithTakeBackToFront();
                v38 = v33;
              }
            }

            v62 = a4;
          }

          result = v38 + v37;
          v63 = result;
          if (a4 >= v55 || a2 >= v60)
          {
            goto LABEL_64;
          }
        }

        sub_214F73828(v22, type metadata accessor for NoteEditActivityEvent);
        sub_214F73828(v26, type metadata accessor for NoteEditActivityEvent);
      }

LABEL_64:
      sub_214F52408(&v63, &v62, &v61);
      return 1;
    }

    v31 = v28 / v56 * v56;
    if (a4 < a2 || a2 + v31 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      if (a4 == a2)
      {
LABEL_40:
        v40 = a4 + v31;
        if (v31 >= 1)
        {
          v41 = -v56;
          v42 = v40;
          v51 = v18;
          v52 = v14;
          do
          {
            v49 = v40;
            v43 = a2;
            v53 = a2;
            v54 = a2 + v41;
            while (1)
            {
              v44 = v60;
              if (v43 <= result)
              {
                v63 = v43;
                v61 = v49;
                goto LABEL_64;
              }

              v50 = v40;
              v56 = v42;
              v45 = v42 + v41;
              sub_214F736B4(v42 + v41, v18, type metadata accessor for NoteEditActivityEvent);
              sub_214F736B4(v54, v14, type metadata accessor for NoteEditActivityEvent);
              v46 = v59(v18, v14);
              if (v7)
              {
                sub_214F73828(v14, type metadata accessor for NoteEditActivityEvent);
                sub_214F73828(v18, type metadata accessor for NoteEditActivityEvent);
                v63 = v53;
                v61 = v50;
                goto LABEL_64;
              }

              v47 = v46;
              v60 = v44 + v41;
              sub_214F73828(v14, type metadata accessor for NoteEditActivityEvent);
              sub_214F73828(v18, type metadata accessor for NoteEditActivityEvent);
              if (v47)
              {
                break;
              }

              v40 = v45;
              if (v44 < v56 || v60 >= v56)
              {
                swift_arrayInitWithTakeFrontToBack();
                v7 = 0;
              }

              else
              {
                v7 = 0;
                if (v44 != v56)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v42 = v45;
              result = v55;
              v18 = v51;
              v14 = v52;
              v43 = v53;
              if (v45 <= a4)
              {
                a2 = v53;
                goto LABEL_63;
              }
            }

            if (v44 < v53 || v60 >= v53)
            {
              a2 = v54;
              swift_arrayInitWithTakeFrontToBack();
              v7 = 0;
              v40 = v50;
            }

            else
            {
              v48 = v44 == v53;
              a2 = v54;
              v7 = 0;
              v40 = v50;
              if (!v48)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            result = v55;
            v42 = v56;
            v18 = v51;
            v14 = v52;
          }

          while (v56 > a4);
        }

LABEL_63:
        v63 = a2;
        v61 = v40;
        goto LABEL_64;
      }

      swift_arrayInitWithTakeBackToFront();
    }

    result = v55;
    goto LABEL_40;
  }

LABEL_67:
  __break(1u);
  return result;
}

uint64_t sub_214F70F90(char *__dst, char *__src, char *a3, char *a4, uint64_t (*a5)(__int128 *, __int128 *))
{
  v37 = a5;
  v6 = a4;
  v7 = a3;
  v8 = __src;
  v9 = __dst;
  v10 = __src - __dst;
  v11 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v11 = __src - __dst;
  }

  v12 = v11 >> 4;
  v13 = a3 - __src;
  v14 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v14 = a3 - __src;
  }

  v15 = v14 >> 4;
  if (v12 >= v14 >> 4)
  {
    if (a4 != __src || &__src[16 * v15] <= a4)
    {
      memmove(a4, __src, 16 * v15);
    }

    v16 = &v6[16 * v15];
    if (v13 >= 16 && v8 > v9)
    {
      v21 = -v6;
      v22 = v37;
      do
      {
        v34 = v8;
        v8 -= 16;
        v23 = &v16[v21];
        v7 -= 16;
        v24 = v16;
        while (1)
        {
          v25 = *(v24 - 1);
          v24 -= 16;
          v35 = *v8;
          v36 = v25;
          v26 = v22(&v36, &v35);
          if (v5)
          {
            if (v23 >= 0)
            {
              v31 = v23;
            }

            else
            {
              v31 = v23 + 15;
            }

            v30 = v34;
            if (v34 >= v6 && v34 < &v6[v31 & 0xFFFFFFFFFFFFFFF0] && v34 == v6)
            {
              return 1;
            }

            v29 = 16 * (v31 >> 4);
            goto LABEL_59;
          }

          v27 = v7 + 16;
          if (v26)
          {
            break;
          }

          if (v27 != v16)
          {
            *v7 = *v24;
          }

          v23 -= 16;
          v7 -= 16;
          v16 = v24;
          if (v24 <= v6)
          {
            v16 = v24;
            v8 = v34;
            goto LABEL_53;
          }
        }

        if (v27 != v34)
        {
          *v7 = *v8;
        }

        v21 = -v6;
      }

      while (v16 > v6 && v8 > v9);
    }

LABEL_53:
    v32 = v16 - v6 + 15;
    if (v16 - v6 >= 0)
    {
      v32 = v16 - v6;
    }

    if (v8 >= v6 && v8 < &v6[v32 & 0xFFFFFFFFFFFFFFF0] && v8 == v6)
    {
      return 1;
    }

    v29 = 16 * (v32 >> 4);
    v30 = v8;
LABEL_59:
    memmove(v30, v6, v29);
    return 1;
  }

  if (a4 != __dst || &__dst[16 * v12] <= a4)
  {
    memmove(a4, __dst, 16 * v12);
  }

  v16 = &v6[16 * v12];
  if (v10 < 16 || v8 >= v7)
  {
LABEL_21:
    v8 = v9;
    goto LABEL_53;
  }

  v17 = v37;
  while (1)
  {
    v36 = *v8;
    v35 = *v6;
    v18 = v17(&v36, &v35);
    if (v5)
    {
      break;
    }

    if ((v18 & 1) == 0)
    {
      v19 = v6;
      v20 = v9 == v6;
      v6 += 16;
      if (v20)
      {
        goto LABEL_19;
      }

LABEL_18:
      *v9 = *v19;
      goto LABEL_19;
    }

    v19 = v8;
    v20 = v9 == v8;
    v8 += 16;
    if (!v20)
    {
      goto LABEL_18;
    }

LABEL_19:
    v9 += 16;
    if (v6 >= v16 || v8 >= v7)
    {
      goto LABEL_21;
    }
  }

  v28 = v16 - v6 + 15;
  if (v16 - v6 >= 0)
  {
    v28 = v16 - v6;
  }

  if (v9 < v6 || v9 >= &v6[v28 & 0xFFFFFFFFFFFFFFF0] || v9 != v6)
  {
    v29 = 16 * (v28 >> 4);
    v30 = v9;
    goto LABEL_59;
  }

  return 1;
}

uint64_t sub_214F71288(void *a1, void *a2)
{
  v4 = sub_2150A3960();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v12 = v19 - v11;
  v13 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v13);
  (*(v14 + 8))(v13, v14);
  v15 = a2[3];
  v16 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v15);
  (*(v16 + 8))(v15, v16);
  LOBYTE(a1) = sub_2150A3900();
  v17 = *(v5 + 8);
  v17(v9, v4);
  v17(v12, v4);
  return a1 & 1;
}

uint64_t sub_214F71418(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_214D7A458(&v12, v10 + 40 * a1 + 32);
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_214F71500(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD0, &unk_2150C2740);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

BOOL sub_214F71570(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  switch(v3)
  {
    case 0:
      return !v4;
    case 1:
      return v4 == 1;
    case 2:
      return v4 == 2;
  }

  if (v4 < 3)
  {
    return 0;
  }

  if (*a1 == *a2 && v3 == v4)
  {
    return 1;
  }

  return sub_2150A6270() & 1;
}

uint64_t sub_214F71610(uint64_t a1)
{
  v82 = type metadata accessor for PersistedActivityEvent.Activities(0);
  v3 = MEMORY[0x28223BE20](v82, v2);
  v86 = (v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v3, v5);
  v88 = v81 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42270, &unk_2150CD740);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = v81 - v9;
  *&v89 = type metadata accessor for PersistedActivityEvent(0);
  v12 = MEMORY[0x28223BE20](v89, v11);
  v81[0] = v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12, v14);
  v87 = v81 - v16;
  v18 = MEMORY[0x28223BE20](v15, v17);
  v84 = v81 - v19;
  v21 = MEMORY[0x28223BE20](v18, v20);
  v23 = v81 - v22;
  result = MEMORY[0x28223BE20](v21, v24);
  v28 = v81 - v27;
  v29 = *(a1 + 16);
  *&v85 = v26;
  if (v29)
  {
    v30 = a1 + 32;
    v31 = (v26 + 56);
    v32 = (v26 + 48);
    v33 = MEMORY[0x277D84F90];
    do
    {
      sub_214F6163C(v30, v91);
      sub_214D7A458(v91, v90);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA44A10, &unk_2150CD750);
      v34 = v89;
      v35 = swift_dynamicCast();
      (*v31)(v10, v35 ^ 1u, 1, v34);
      if ((*v32)(v10, 1, v34) == 1)
      {
        result = sub_214F302D4(v10, &qword_27CA42270, &unk_2150CD740);
      }

      else
      {
        sub_214F7371C(v10, v28, type metadata accessor for PersistedActivityEvent);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v33 = sub_21505F8B8(0, v33[2] + 1, 1, v33);
        }

        v37 = v33[2];
        v36 = v33[3];
        if (v37 >= v36 >> 1)
        {
          v33 = sub_21505F8B8((v36 > 1), v37 + 1, 1, v33);
        }

        v33[2] = v37 + 1;
        result = sub_214F7371C(v28, v33 + ((*(v85 + 80) + 32) & ~*(v85 + 80)) + *(v85 + 72) * v37, type metadata accessor for PersistedActivityEvent);
      }

      v30 += 40;
      --v29;
    }

    while (v29);
  }

  else
  {
    v33 = MEMORY[0x277D84F90];
  }

  v83 = v33[2];
  if (!v83)
  {
    v39 = MEMORY[0x277D84F90];
    v40 = v85;
LABEL_30:

    v49 = *(v39 + 16);
    v50 = MEMORY[0x277D84F90];
    if (!v49)
    {
      goto LABEL_61;
    }

    *&v91[0] = MEMORY[0x277D84F90];
    sub_214F86EEC(0, v49, 0);
    v50 = *&v91[0];
    v51 = *(v40 + 80);
    v84 = v39;
    v52 = v39 + ((v51 + 32) & ~v51);
    v88 = *(v40 + 72);
    v83 = v52;
    v53 = v81[0];
    do
    {
      sub_214F736B4(v52, v53, type metadata accessor for PersistedActivityEvent);
      v54 = (v53 + *(v89 + 24));
      v55 = *v54;
      v56 = v54[1];
      v57 = v54[2];
      v58 = v54[3];

      sub_214F73828(v53, type metadata accessor for PersistedActivityEvent);
      *&v91[0] = v50;
      v60 = *(v50 + 16);
      v59 = *(v50 + 24);
      if (v60 >= v59 >> 1)
      {
        sub_214F86EEC((v59 > 1), v60 + 1, 1);
        v53 = v81[0];
        v50 = *&v91[0];
      }

      *(v50 + 16) = v60 + 1;
      v61 = (v50 + 32 * v60);
      v61[4] = v55;
      v61[5] = v56;
      v61[6] = v57;
      v61[7] = v58;
      v52 += v88;
      --v49;
    }

    while (v49);
    v62 = *(v84 + 16);
    if (!v62)
    {
LABEL_61:

      return v50;
    }

    v63 = MEMORY[0x277D84F90];
    v64 = *(v89 + 28);
    v85 = xmmword_2150C25D0;
    v65 = MEMORY[0x277D84F90];
    v66 = v83;
    while (1)
    {
      v67 = v87;
      sub_214F736B4(v66, v87, type metadata accessor for PersistedActivityEvent);
      sub_214F736B4(v67 + v64, v86, type metadata accessor for PersistedActivityEvent.Activities);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 3)
      {
        break;
      }

      if (EnumCaseMultiPayload <= 6)
      {
        if ((EnumCaseMultiPayload - 4) < 2)
        {
          v70 = v86[2];
          v69 = v86[3];
          v89 = *v86;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42720, &qword_2150C2968);
          v71 = swift_allocObject();
          v72 = v89;
          *(v71 + 16) = v85;
          *(v71 + 32) = v72;
          *(v71 + 48) = v70;
          *(v71 + 56) = v69;
          goto LABEL_45;
        }

        v80 = sub_2150A3A00();
        (*(*(v80 - 8) + 8))(v86, v80);
        goto LABEL_44;
      }

      v71 = v63;
      if (EnumCaseMultiPayload == 7)
      {
        v71 = *v86;
      }

LABEL_45:
      result = sub_214F73828(v87, type metadata accessor for PersistedActivityEvent);
      v73 = *(v71 + 16);
      v74 = *(v65 + 16);
      v75 = v74 + v73;
      if (__OFADD__(v74, v73))
      {
        goto LABEL_63;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) != 0 && v75 <= *(v65 + 24) >> 1)
      {
        if (!*(v71 + 16))
        {
          goto LABEL_37;
        }
      }

      else
      {
        if (v74 <= v75)
        {
          v76 = v74 + v73;
        }

        else
        {
          v76 = v74;
        }

        result = sub_21505FC18(result, v76, 1, v65);
        v65 = result;
        if (!*(v71 + 16))
        {
LABEL_37:

          if (v73)
          {
            goto LABEL_64;
          }

          goto LABEL_38;
        }
      }

      if ((*(v65 + 24) >> 1) - *(v65 + 16) < v73)
      {
        goto LABEL_65;
      }

      swift_arrayInitWithCopy();

      if (v73)
      {
        v77 = *(v65 + 16);
        v78 = __OFADD__(v77, v73);
        v79 = v77 + v73;
        if (v78)
        {
          goto LABEL_66;
        }

        *(v65 + 16) = v79;
      }

LABEL_38:
      v66 += v88;
      if (!--v62)
      {
        goto LABEL_61;
      }
    }

    sub_214F73828(v86, type metadata accessor for PersistedActivityEvent.Activities);
LABEL_44:
    v71 = v63;
    goto LABEL_45;
  }

  v38 = 0;
  v81[2] = 0x80000002150E1A00;
  v81[1] = 0x80000002150E19E0;
  v39 = MEMORY[0x277D84F90];
  v40 = v85;
  while (v38 < v33[2])
  {
    v41 = (*(v40 + 80) + 32) & ~*(v40 + 80);
    v42 = *(v40 + 72);
    sub_214F736B4(v33 + v41 + v42 * v38, v23, type metadata accessor for PersistedActivityEvent);
    sub_214F736B4(&v23[*(v89 + 28)], v88, type metadata accessor for PersistedActivityEvent.Activities);
    v43 = swift_getEnumCaseMultiPayload();
    if (v43 < 6)
    {
      sub_214F73828(v88, type metadata accessor for PersistedActivityEvent.Activities);
    }

    else if (v43 == 6)
    {
      v44 = sub_2150A3A00();
      (*(*(v44 - 8) + 8))(v88, v44);
    }

    else if (v43 == 7)
    {
      sub_214F73828(v88, type metadata accessor for PersistedActivityEvent.Activities);

LABEL_24:
      sub_214F7371C(v23, v84, type metadata accessor for PersistedActivityEvent);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v91[0] = v39;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_214F86DC0(0, *(v39 + 16) + 1, 1);
        v39 = *&v91[0];
      }

      v48 = *(v39 + 16);
      v47 = *(v39 + 24);
      if (v48 >= v47 >> 1)
      {
        sub_214F86DC0((v47 > 1), v48 + 1, 1);
        v39 = *&v91[0];
      }

      *(v39 + 16) = v48 + 1;
      result = sub_214F7371C(v84, v39 + v41 + v48 * v42, type metadata accessor for PersistedActivityEvent);
      v40 = v85;
      goto LABEL_15;
    }

    v45 = sub_2150A6270();

    if (v45)
    {
      goto LABEL_24;
    }

    result = sub_214F73828(v23, type metadata accessor for PersistedActivityEvent);
LABEL_15:
    if (v83 == ++v38)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
  return result;
}

uint64_t sub_214F72134(uint64_t a1, unsigned __int8 *a2)
{
  v4 = type metadata accessor for NoteEditActivityEvent(0);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = *a2;
  v8 = *(a1 + 16);
  v35 = a1;
  if (v8)
  {
    v9 = a1 + 32;
    v10 = MEMORY[0x277D84F90];
    do
    {
      sub_214F6163C(v9, &v40);
      sub_214F6163C(&v40, v37);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA44A10, &unk_2150CD750);
      if (swift_dynamicCast())
      {
        sub_214F73828(v7, type metadata accessor for NoteEditActivityEvent);
        sub_214D7A458(&v40, v37);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v43 = v10;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_214F86DA0(0, *(v10 + 16) + 1, 1);
          v10 = v43;
        }

        v13 = *(v10 + 16);
        v12 = *(v10 + 24);
        if (v13 >= v12 >> 1)
        {
          sub_214F86DA0((v12 > 1), v13 + 1, 1);
        }

        v14 = v38;
        v15 = v39;
        v16 = __swift_mutable_project_boxed_opaque_existential_1(v37, v38);
        MEMORY[0x28223BE20](v16, v16);
        v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v19 + 16))(v18);
        sub_214F71418(v13, v18, &v43, v14, v15);
        __swift_destroy_boxed_opaque_existential_0(v37);
        v10 = v43;
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_0(&v40);
      }

      v9 += 40;
      --v8;
    }

    while (v8);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v20 = *(v10 + 16);
  if (!v20)
  {

    v21 = MEMORY[0x277D84F90];
    if (v36)
    {
      return v21;
    }

    goto LABEL_20;
  }

  v43 = MEMORY[0x277D84F90];
  sub_214F86EEC(0, v20, 0);
  v21 = v43;
  v34 = v10;
  v22 = v10 + 32;
  do
  {
    sub_214F6163C(v22, &v40);
    v23 = v41;
    v24 = v42;
    __swift_project_boxed_opaque_existential_1(&v40, v41);
    (*(v24 + 48))(v37, v23, v24);
    v25 = v37[0];
    v26 = v37[1];
    v27 = v37[2];
    v28 = v38;
    __swift_destroy_boxed_opaque_existential_0(&v40);
    v43 = v21;
    v30 = *(v21 + 16);
    v29 = *(v21 + 24);
    if (v30 >= v29 >> 1)
    {
      sub_214F86EEC((v29 > 1), v30 + 1, 1);
      v21 = v43;
    }

    *(v21 + 16) = v30 + 1;
    v31 = (v21 + 32 * v30);
    v31[4] = v25;
    v31[5] = v26;
    v31[6] = v27;
    v31[7] = v28;
    v22 += 40;
    --v20;
  }

  while (v20);

  if ((v36 & 1) == 0)
  {
LABEL_20:
    if (*(v21 + 16))
    {
      LOBYTE(v40) = 0;
      v32 = sub_214F71610(v35);

      *&v40 = v21;
      sub_215068790(v32);
      return v40;
    }
  }

  return v21;
}

char *sub_214F724EC(uint64_t a1)
{
  v71 = type metadata accessor for PersistedActivityEvent.Activities(0);
  v3 = MEMORY[0x28223BE20](v71, v2);
  v69 = (v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v3, v5);
  v66[0] = v66 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42270, &unk_2150CD740);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = v66 - v9;
  v11 = type metadata accessor for PersistedActivityEvent(0);
  v12 = *(v11 - 8);
  v14 = MEMORY[0x28223BE20](v11, v13);
  *&v68 = v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14, v16);
  v70 = v66 - v18;
  v20 = MEMORY[0x28223BE20](v17, v19);
  *&v72 = v66 - v21;
  result = MEMORY[0x28223BE20](v20, v22);
  v25 = v66 - v24;
  v26 = *(a1 + 16);
  if (v26)
  {
    v27 = a1 + 32;
    v28 = (v12 + 56);
    v29 = (v12 + 48);
    v30 = MEMORY[0x277D84F90];
    v67 = v12;
    do
    {
      sub_214F6163C(v27, v74);
      sub_214D7A458(v74, v73);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA44A10, &unk_2150CD750);
      v31 = swift_dynamicCast();
      (*v28)(v10, v31 ^ 1u, 1, v11);
      if ((*v29)(v10, 1, v11) == 1)
      {
        result = sub_214F302D4(v10, &qword_27CA42270, &unk_2150CD740);
      }

      else
      {
        sub_214F7371C(v10, v25, type metadata accessor for PersistedActivityEvent);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v30 = sub_21505F8B8(0, v30[2] + 1, 1, v30);
        }

        v33 = v30[2];
        v32 = v30[3];
        if (v33 >= v32 >> 1)
        {
          v30 = sub_21505F8B8((v32 > 1), v33 + 1, 1, v30);
        }

        v30[2] = v33 + 1;
        v34 = v30 + ((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * v33;
        v12 = v67;
        result = sub_214F7371C(v25, v34, type metadata accessor for PersistedActivityEvent);
      }

      v27 += 40;
      --v26;
    }

    while (v26);
  }

  else
  {
    v30 = MEMORY[0x277D84F90];
  }

  v67 = v30[2];
  if (v67)
  {
    v35 = 0;
    v66[2] = 0x80000002150E1A00;
    v36 = MEMORY[0x277D84F90];
    v66[1] = 0x80000002150E19E0;
    v37 = v66[0];
    while (1)
    {
      if (v35 >= v30[2])
      {
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
        return result;
      }

      v38 = (*(v12 + 80) + 32) & ~*(v12 + 80);
      v39 = *(v12 + 72);
      v40 = v72;
      sub_214F736B4(v30 + v38 + v39 * v35, v72, type metadata accessor for PersistedActivityEvent);
      sub_214F736B4(v40 + *(v11 + 28), v37, type metadata accessor for PersistedActivityEvent.Activities);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 3)
      {
        goto LABEL_27;
      }

      if (EnumCaseMultiPayload <= 5)
      {
        break;
      }

      if (EnumCaseMultiPayload == 6)
      {
        v42 = sub_2150A3A00();
        (*(*(v42 - 8) + 8))(v37, v42);
        goto LABEL_28;
      }

      if (EnumCaseMultiPayload == 7)
      {
        goto LABEL_27;
      }

LABEL_28:
      v43 = sub_2150A6270();

      if (v43)
      {
        goto LABEL_29;
      }

      result = sub_214F73828(v72, type metadata accessor for PersistedActivityEvent);
LABEL_15:
      if (v67 == ++v35)
      {
        goto LABEL_35;
      }
    }

    if (EnumCaseMultiPayload == 4)
    {
      sub_214F73828(v37, type metadata accessor for PersistedActivityEvent.Activities);

LABEL_29:
      sub_214F7371C(v72, v68, type metadata accessor for PersistedActivityEvent);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v74[0] = v36;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_214F86DC0(0, *(v36 + 16) + 1, 1);
        v36 = *&v74[0];
      }

      v46 = *(v36 + 16);
      v45 = *(v36 + 24);
      if (v46 >= v45 >> 1)
      {
        sub_214F86DC0((v45 > 1), v46 + 1, 1);
        v36 = *&v74[0];
      }

      *(v36 + 16) = v46 + 1;
      result = sub_214F7371C(v68, v36 + v38 + v46 * v39, type metadata accessor for PersistedActivityEvent);
      goto LABEL_15;
    }

LABEL_27:
    sub_214F73828(v37, type metadata accessor for PersistedActivityEvent.Activities);
    goto LABEL_28;
  }

  v36 = MEMORY[0x277D84F90];
LABEL_35:

  v47 = *(v36 + 16);
  if (v47)
  {
    v48 = *(v11 + 28);
    v49 = v36 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v50 = MEMORY[0x277D84F90];
    v51 = *(v12 + 72);
    v68 = xmmword_2150C25D0;
    while (1)
    {
      v52 = v70;
      sub_214F736B4(v49, v70, type metadata accessor for PersistedActivityEvent);
      sub_214F736B4(v52 + v48, v69, type metadata accessor for PersistedActivityEvent.Activities);
      v53 = swift_getEnumCaseMultiPayload();
      if (v53 <= 3)
      {
        break;
      }

      if (v53 <= 6)
      {
        if ((v53 - 4) < 2)
        {
          v55 = v69[2];
          v54 = v69[3];
          v72 = *v69;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42720, &qword_2150C2968);
          v56 = swift_allocObject();
          v57 = v72;
          *(v56 + 16) = v68;
          *(v56 + 32) = v57;
          *(v56 + 48) = v55;
          *(v56 + 56) = v54;
          result = sub_214F73828(v70, type metadata accessor for PersistedActivityEvent);
          goto LABEL_45;
        }

        v65 = sub_2150A3A00();
        (*(*(v65 - 8) + 8))(v69, v65);
        goto LABEL_44;
      }

      if (v53 != 7)
      {
        goto LABEL_44;
      }

      result = sub_214F73828(v70, type metadata accessor for PersistedActivityEvent);
      v56 = *v69;
LABEL_45:
      v58 = *(v56 + 16);
      v59 = *(v50 + 2);
      v60 = v59 + v58;
      if (__OFADD__(v59, v58))
      {
        goto LABEL_65;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if (result && v60 <= *(v50 + 3) >> 1)
      {
        if (*(v56 + 16))
        {
          goto LABEL_54;
        }
      }

      else
      {
        if (v59 <= v60)
        {
          v61 = v59 + v58;
        }

        else
        {
          v61 = v59;
        }

        result = sub_21505FC18(result, v61, 1, v50);
        v50 = result;
        if (*(v56 + 16))
        {
LABEL_54:
          if ((*(v50 + 3) >> 1) - *(v50 + 2) < v58)
          {
            goto LABEL_67;
          }

          swift_arrayInitWithCopy();

          if (v58)
          {
            v62 = *(v50 + 2);
            v63 = __OFADD__(v62, v58);
            v64 = v62 + v58;
            if (v63)
            {
              goto LABEL_68;
            }

            *(v50 + 2) = v64;
          }

          goto LABEL_38;
        }
      }

      if (v58)
      {
        goto LABEL_66;
      }

LABEL_38:
      v49 += v51;
      if (!--v47)
      {

        return v50;
      }
    }

    sub_214F73828(v69, type metadata accessor for PersistedActivityEvent.Activities);
LABEL_44:
    result = sub_214F73828(v70, type metadata accessor for PersistedActivityEvent);
    v56 = MEMORY[0x277D84F90];
    goto LABEL_45;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_214F72F1C(uint64_t a1)
{
  v2 = type metadata accessor for ShareActivityEvent(0);
  MEMORY[0x28223BE20](v2, v3);
  v5 = &v31[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = a1 + 32;
    v8 = MEMORY[0x277D84F90];
    do
    {
      sub_214F6163C(v7, &v34);
      sub_214F6163C(&v34, v31);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA44A10, &unk_2150CD750);
      if (swift_dynamicCast())
      {
        sub_214F73828(v5, type metadata accessor for ShareActivityEvent);
        sub_214D7A458(&v34, v31);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v37 = v8;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_214F86DA0(0, *(v8 + 16) + 1, 1);
          v8 = v37;
        }

        v11 = *(v8 + 16);
        v10 = *(v8 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_214F86DA0((v10 > 1), v11 + 1, 1);
        }

        v12 = *(&v32 + 1);
        v13 = v33;
        v14 = __swift_mutable_project_boxed_opaque_existential_1(v31, *(&v32 + 1));
        MEMORY[0x28223BE20](v14, v14);
        v16 = &v31[-1] - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v17 + 16))(v16);
        sub_214F71418(v11, v16, &v37, v12, v13);
        __swift_destroy_boxed_opaque_existential_0(v31);
        v8 = v37;
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_0(&v34);
      }

      v7 += 40;
      --v6;
    }

    while (v6);
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  v18 = *(v8 + 16);
  if (v18)
  {
    v37 = MEMORY[0x277D84F90];
    sub_214F86EEC(0, v18, 0);
    v19 = v37;
    v20 = v8 + 32;
    do
    {
      sub_214F6163C(v20, &v34);
      v21 = v35;
      v22 = v36;
      __swift_project_boxed_opaque_existential_1(&v34, v35);
      (*(v22 + 48))(v31, v21, v22);
      __swift_destroy_boxed_opaque_existential_0(&v34);
      v23 = v31[0];
      v24 = v31[1];
      v25 = v32;
      v37 = v19;
      v27 = *(v19 + 16);
      v26 = *(v19 + 24);
      if (v27 >= v26 >> 1)
      {
        v30 = v32;
        sub_214F86EEC((v26 > 1), v27 + 1, 1);
        v25 = v30;
        v19 = v37;
      }

      *(v19 + 16) = v27 + 1;
      v28 = v19 + 32 * v27;
      *(v28 + 32) = v23;
      *(v28 + 40) = v24;
      *(v28 + 48) = v25;
      v20 += 40;
      --v18;
    }

    while (v18);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v19;
}

uint64_t sub_214F73280(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_2150A6270() & 1;
  }
}

unint64_t sub_214F732D8(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v11 = *v5;
  v12 = (v11 + 32 + 16 * result);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(a3, v6);
  v14 = a3 - v6;
  if (v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v14)
  {
    v15 = *(v11 + 16);
    v13 = __OFSUB__(v15, a2);
    v16 = v15 - a2;
    if (!v13)
    {
      result = &v12[2 * a3];
      v17 = (v11 + 32 + 16 * a2);
      if (result != v17 || result >= v17 + 16 * v16)
      {
        result = memmove(result, v17, 16 * v16);
      }

      v19 = *(v11 + 16);
      v13 = __OFADD__(v19, v14);
      v20 = v19 + v14;
      if (!v13)
      {
        *(v11 + 16) = v20;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 > 0)
  {
    *v12 = a4;
    v12[1] = a5;

    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

unint64_t sub_214F733BC()
{
  result = qword_27CA421B0;
  if (!qword_27CA421B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA421B0);
  }

  return result;
}

unint64_t sub_214F73414()
{
  result = qword_27CA421B8;
  if (!qword_27CA421B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA421B8);
  }

  return result;
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t _s7SummaryV7FormatsOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s7SummaryV7FormatsOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_214F73628()
{
  result = qword_27CA44B10;
  if (!qword_27CA44B10)
  {
    sub_2150A3960();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA44B10);
  }

  return result;
}

uint64_t sub_214F736A0(uint64_t a1, unint64_t a2)
{
  if (a2 >= 3)
  {
  }

  return result;
}

uint64_t sub_214F736B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_214F7371C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_214F737A4()
{
  result = qword_27CA41E30;
  if (!qword_27CA41E30)
  {
    sub_214D55670(255, &qword_27CA44A30, off_278192998);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA41E30);
  }

  return result;
}

uint64_t sub_214F73828(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_214F738F8(uint64_t a1, uint64_t a2)
{
  v15 = a1;
  v16 = a2;
  v14 = sub_2150A55A0();
  v3 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v4);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2150A5590();
  MEMORY[0x28223BE20](v7, v8);
  v9 = sub_2150A4490();
  MEMORY[0x28223BE20](v9 - 8, v10);
  v13[1] = sub_214F74814(0, v11);
  v2[3] = 0;
  v2[4] = 0;
  v2[2] = 0;
  sub_2150A4440();
  v17 = MEMORY[0x277D84F90];
  sub_214F74860(&qword_280C24510, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DC8, &qword_2150C3730);
  sub_214F748A8(&unk_280C24530, &qword_27CA41DC8, &qword_2150C3730);
  sub_2150A5930();
  (*(v3 + 104))(v6, *MEMORY[0x277D85260], v14);
  v2[5] = sub_2150A55D0();
  return v2;
}

uint64_t sub_214F73B44(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_2150A4400();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_2150A4490();
  v11 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v12);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[1] = *(v3 + 40);
  v15 = swift_allocObject();
  v15[2] = v3;
  v15[3] = a1;
  v15[4] = a2;
  aBlock[4] = sub_214F74808;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_214F44018;
  aBlock[3] = &block_descriptor_21_0;
  v16 = _Block_copy(aBlock);

  sub_2150A4440();
  v20 = MEMORY[0x277D84F90];
  sub_214F74860(&qword_280C24570, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA41A28, &qword_2150C2960);
  sub_214F748A8(&qword_280C24550, &unk_27CA41A28, &qword_2150C2960);
  sub_2150A5930();
  MEMORY[0x216062180](0, v14, v10, v16);
  _Block_release(v16);
  (*(v7 + 8))(v10, v6);
  (*(v11 + 8))(v14, v19);
}

uint64_t sub_214F73E14(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E50, &qword_2150C3710);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v15 - v8;
  if (a1[2])
  {
    v10 = a1[3];
    v11 = a1[4];
    a1[3] = a2;
    a1[4] = a3;

    return sub_214D6AB7C(v10, v11);
  }

  else
  {
    v13 = sub_2150A5120();
    (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
    v14 = swift_allocObject();
    v14[2] = 0;
    v14[3] = 0;
    v14[4] = a2;
    v14[5] = a3;
    v14[6] = a1;

    a1[2] = sub_214FD26AC(0, 0, v9, &unk_2150C3728, v14);
  }
}

uint64_t sub_214F73F90(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a6;
  v9 = (a4 + *a4);
  v7 = swift_task_alloc();
  *(v6 + 24) = v7;
  *v7 = v6;
  v7[1] = sub_214F7407C;

  return v9();
}

uint64_t sub_214F7407C()
{

  return MEMORY[0x2822009F8](sub_214F74178, 0, 0);
}

uint64_t sub_214F74178()
{
  sub_214F741D8();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_214F741D8()
{
  v1 = sub_2150A4400();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2150A4490();
  v6 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v7);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[1] = *(v0 + 40);
  aBlock[4] = sub_214F74628;
  v16 = v0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_214F44018;
  aBlock[3] = &block_descriptor_4;
  v10 = _Block_copy(aBlock);

  sub_2150A4440();
  v14 = MEMORY[0x277D84F90];
  sub_214F74860(&qword_280C24570, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA41A28, &qword_2150C2960);
  sub_214F748A8(&qword_280C24550, &unk_27CA41A28, &qword_2150C2960);
  sub_2150A5930();
  MEMORY[0x216062180](0, v9, v5, v10);
  _Block_release(v10);
  (*(v2 + 8))(v5, v1);
  (*(v6 + 8))(v9, v13);
}

uint64_t sub_214F74478(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E50, &qword_2150C3710);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v11 - v4;
  a1[2] = 0;

  v7 = a1[3];
  if (v7)
  {
    v8 = a1[4];
    v9 = sub_2150A5120();
    a1[3] = 0;
    a1[4] = 0;
    (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
    v10 = swift_allocObject();
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = v7;
    v10[5] = v8;
    v10[6] = a1;

    a1[2] = sub_214FD26AC(0, 0, v5, &unk_2150C3720, v10);
  }

  return result;
}

uint64_t sub_214F745BC()
{

  sub_214D6AB7C(*(v0 + 24), *(v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t sub_214F74630(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_214F557A8;

  return sub_214F73F90(a1, v4, v5, v6, v7, v8);
}

uint64_t objectdestroyTm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_214F74740(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_214F53FB0;

  return sub_214F73F90(a1, v4, v5, v6, v7, v8);
}

unint64_t sub_214F74814(uint64_t a1, uint64_t a2)
{
  result = qword_280C24508;
  if (!qword_280C24508)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280C24508);
  }

  return result;
}

uint64_t sub_214F74860(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_214F748A8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t Argument.wrappedValue.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 96);
  swift_beginAccess();
  return (*(*(*(v3 + 80) - 8) + 16))(a1, v1 + v4);
}

uint64_t Argument.wrappedValue.setter(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 96);
  swift_beginAccess();
  (*(*(*(v3 + 80) - 8) + 40))(v1 + v4, a1);
  return swift_endAccess();
}

uint64_t Argument.name.getter()
{
  v0 = sub_214F75FE0();

  return v0;
}

uint64_t Argument.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(*v2 + 104));
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t Argument.isHidden.getter()
{
  v1 = *(*v0 + 112);
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t Argument.isHidden.setter(char a1)
{
  v3 = *(*v1 + 112);
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t Argument.isReadonly.getter()
{
  v1 = *(*v0 + 120);
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t Argument.isReadonly.setter(char a1)
{
  v3 = *(*v1 + 120);
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t Argument.summary.getter()
{
  v0 = sub_214F76034();

  return v0;
}

uint64_t Argument.summary.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(*v2 + 128));
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t Argument.prose.getter()
{
  v0 = sub_214F76088();

  return v0;
}

uint64_t Argument.prose.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(*v2 + 136));
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t Argument.__allocating_init(wrappedValue:name:isHidden:isReadonly:summary:prose:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = a5;
  v13 = a4;
  v17 = swift_allocObject();
  Argument.init(wrappedValue:name:isHidden:isReadonly:summary:prose:)(a1, a2, a3, v13, v12, a6, a7, a8, a9);
  return v17;
}

uint64_t *Argument.init(wrappedValue:name:isHidden:isReadonly:summary:prose:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v14 = *v9;
  v15 = (v9 + *(*v9 + 104));
  *v15 = 0;
  v15[1] = 0;
  v16 = *(*v9 + 112);
  *(v9 + v16) = 0;
  v17 = *(*v9 + 120);
  *(v9 + v17) = 0;
  v18 = (v9 + *(*v9 + 128));
  *v18 = 0;
  v18[1] = 0;
  v19 = (v9 + *(*v9 + 136));
  *v19 = 0;
  v19[1] = 0;
  (*(*(*(v14 + 80) - 8) + 32))(v9 + *(*v9 + 96), a1);
  swift_beginAccess();
  *v15 = a2;
  v15[1] = a3;
  swift_beginAccess();
  *(v9 + v16) = a4;
  swift_beginAccess();
  *(v9 + v17) = a5;
  swift_beginAccess();
  *v18 = a6;
  v18[1] = a7;
  swift_beginAccess();
  *v19 = a8;
  v19[1] = a9;

  return v9;
}

uint64_t Argument.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  Argument.init(from:)(a1, v3);
  return v2;
}

void *Argument.init(from:)(void *a1, uint64_t a2)
{
  v4 = v2;
  v16 = *v2;
  v6 = *(v16 + 80);
  v14 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](a1, a2);
  v9 = &v15[-v8 - 8];
  v10 = (v4 + *(v16 + 104));
  *v10 = 0;
  v10[1] = 0;
  *(v4 + *(*v4 + 112)) = 0;
  *(v4 + *(*v4 + 120)) = 0;
  v11 = (v4 + *(*v4 + 128));
  *v11 = 0;
  v11[1] = 0;
  v12 = (v4 + *(*v4 + 136));
  *v12 = 0;
  v12[1] = 0;
  sub_214F6163C(v7, v15);
  sub_2150A52C0();
  __swift_destroy_boxed_opaque_existential_0(a1);
  if (v3)
  {

    swift_deallocPartialClassInstance();
  }

  else
  {
    (*(v14 + 32))(v4 + *(*v4 + 96), v9, v6);
  }

  return v4;
}

uint64_t Argument.value.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 96);
  swift_beginAccess();
  v5 = *(v3 + 80);
  a1[3] = v5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  return (*(*(v5 - 8) + 16))(boxed_opaque_existential_1, v1 + v4, v5);
}

uint64_t Argument.value.setter(void *a1, uint64_t a2)
{
  v4 = *(*v2 + 80);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](a1, a2);
  v8 = &v11 - v7;
  castOrFatalError<A>(_:as:)(v6, v4, v4, &v11 - v7);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v9 = *(*v2 + 96);
  swift_beginAccess();
  (*(v5 + 40))(v2 + v9, v8, v4);
  return swift_endAccess();
}

void (*Argument.value.modify(uint64_t **a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  *a1 = v3;
  v3[8] = v1;
  Argument.value.getter(v3);
  return sub_214F75774;
}

void sub_214F75774(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_214F50074(*a1, (v2 + 4));
    Argument.value.setter(v2 + 4, v3);
    __swift_destroy_boxed_opaque_existential_0(v2);
  }

  else
  {
    Argument.value.setter(*a1, a2);
  }

  free(v2);
}

Swift::String __swiftcall Argument.typeSummary(forName:)(Swift::String forName)
{
  v2 = v1;
  object = forName._object;
  countAndFlagsBits = forName._countAndFlagsBits;
  v5 = *v2;
  v6 = *(*v2 + 80);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](forName._countAndFlagsBits, forName._object);
  v9 = &v20 - v8;
  v10 = *(v5 + 96);
  swift_beginAccess();
  (*(v7 + 16))(v9, v2 + v10, v6);
  swift_getDynamicType();
  (*(v7 + 8))(v9, v6);
  v11 = (*(*(v5 + 88) + 32))(countAndFlagsBits, object, v6);
  v13 = v12;
  v14 = *(*v2 + 120);
  swift_beginAccess();
  if (*(v2 + v14) == 1)
  {
    v24 = v11;
    v25 = v13;
    MEMORY[0x2160617E0](32, 0xE100000000000000);
    v22 = 0;
    v23 = 0xE000000000000000;
    sub_2150A49F0();
    MEMORY[0x2160617E0](91, 0xE100000000000000);
    v21 = 2;
    v15 = sub_2150A6100();
    MEMORY[0x2160617E0](v15);

    sub_2150A49F0();
    MEMORY[0x2160617E0](v22, v23);

    MEMORY[0x2160617E0](0x294F2F5228, 0xE500000000000000);
    v22 = 0;
    v23 = 0xE000000000000000;
    sub_2150A49F0();
    MEMORY[0x2160617E0](91, 0xE100000000000000);
    v21 = 0;
    v16 = sub_2150A6100();
    MEMORY[0x2160617E0](v16);

    sub_2150A49F0();
    MEMORY[0x2160617E0](v22, v23);

    v11 = v24;
    v13 = v25;
  }

  v17 = v11;
  v18 = v13;
  result._object = v18;
  result._countAndFlagsBits = v17;
  return result;
}

uint64_t Argument.deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96));

  return v0;
}

uint64_t Argument.__deallocating_deinit()
{
  Argument.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_214F75C18()
{
  v0 = sub_214F75FE0();

  return v0;
}

uint64_t sub_214F75CA4()
{
  v0 = sub_214F76034();

  return v0;
}

uint64_t sub_214F75CE0()
{
  v0 = sub_214F76088();

  return v0;
}

uint64_t (*sub_214F75D64(uint64_t *a1))()
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
  *(v2 + 32) = Argument.value.modify(v2);
  return sub_214F75DD8;
}

void sub_214F75DD8(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_214F75E44@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = Argument.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t Argument<>.encode(to:)(uint64_t a1, uint64_t a2)
{
  v3 = *(*v2 + 80);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](a1, a2);
  v6 = &v10 - v5;
  v8 = *(v7 + 96);
  swift_beginAccess();
  (*(v4 + 16))(v6, v2 + v8, v3);
  sub_2150A4990();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_214F75FE0()
{
  v1 = v0 + *(*v0 + 104);
  swift_beginAccess();
  return *v1;
}

uint64_t sub_214F76034()
{
  v1 = v0 + *(*v0 + 128);
  swift_beginAccess();
  return *v1;
}

uint64_t sub_214F76088()
{
  v1 = v0 + *(*v0 + 136);
  swift_beginAccess();
  return *v1;
}

uint64_t sub_214F76190(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

Swift::Void __swiftcall NoteObject.associateAppEntity(with:)(CSSearchableItemAttributeSet with)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41D40, &unk_2150C7230);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v11[-1] - v4;
  sub_214F5EC1C(v11);
  sub_214F30070(LOBYTE(v11[0]), v11[1], v11[2], v5);
  v6 = sub_2150A3750();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_214F5C454(v5);
  }

  else
  {
    sub_2150A3650();
    (*(v7 + 8))(v5, v6);
  }

  v8 = [v1 title];
  if (v8)
  {
    v9 = v8;
    sub_2150A4AD0();
  }

  sub_214F301C4(MEMORY[0x277D84F90]);
  sub_2150A5710();
}

void sub_214F764B0(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  NoteObject.associateAppEntity(with:)(v4);
}

uint64_t dispatch thunk of ActivityEventResolving.fetch(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 24))(a1, a2);
}

{
  return (*(a3 + 40))(a1, a2);
}

uint64_t dispatch thunk of ActivityEventResolving.resolve(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 32))(a1, a2);
}

{
  return (*(a3 + 48))(a1, a2);
}

uint64_t ICFolderObject<>.entityIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2150A3F30();
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v70 = &v61[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v61[-v9];
  v11 = [v1 objectID];
  if (![v11 ic_isModernType])
  {
    [v11 ic_isLegacyType];
  }

  v65 = v61;
  MEMORY[0x28223BE20](v12, v13);
  v68 = v14;
  v61[-16] = v14;
  v15 = qword_280C245E0;
  v16 = v1;
  if (v15 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v3, qword_280C24890);
  v66 = *(v4 + 16);
  v67 = v17;
  v66(v10);
  v18 = swift_allocObject();
  *(v18 + 16) = 2;
  v19 = sub_214D6DCAC(v18, sub_214D6DCB8, &v61[-32]);
  v69 = v4;
  if (v19)
  {
  }

  else
  {
    v20 = sub_2150A5570();
    v21 = sub_2150A3F10();
    if (os_log_type_enabled(v21, v20))
    {
      v22 = swift_slowAlloc();
      v62 = v20;
      v23 = v22;
      v63 = swift_slowAlloc();
      v73 = v63;
      *v23 = 136315650;
      v24 = sub_2150A5B70();
      v26 = sub_214F7723C(v24, v25, &v73);
      v64 = a1;
      v27 = v26;

      *(v23 + 4) = v27;
      *(v23 + 12) = 2048;
      *(v23 + 14) = 50;
      *(v23 + 22) = 2080;
      v71 = 0;
      v72 = 0xE000000000000000;
      sub_2150A5B20();
      MEMORY[0x2160617E0](0xD000000000000034, 0x80000002150E1D10);
      v28 = [v16 ic_loggingDescription];
      v29 = sub_2150A4AD0();
      v31 = v30;

      v32 = v29;
      a1 = v64;
      MEMORY[0x2160617E0](v32, v31);

      v33 = sub_214F7723C(v71, v72, &v73);

      *(v23 + 24) = v33;
      _os_log_impl(&dword_214D51000, v21, v62, "Failed assertion at %s:%lu: %s", v23, 0x20u);
      v34 = v63;
      swift_arrayDestroy();
      MEMORY[0x216064AF0](v34, -1, -1);
      MEMORY[0x216064AF0](v23, -1, -1);
    }

    v4 = v69;
  }

  v35 = *(v4 + 8);
  v35(v10, v3);

  v36 = v70;
  v37 = [v16 identifierURIPathComponent];
  if (v37)
  {
    v39 = v37;
    v40 = sub_2150A4AD0();
    v42 = v41;
  }

  else
  {
    v40 = 0;
    v42 = 0xE000000000000000;
  }

  v65 = v61;
  MEMORY[0x28223BE20](v37, v38);
  *&v61[-16] = v40;
  *&v61[-8] = v42;
  (v66)(v36, v67, v3);
  v43 = swift_allocObject();
  *(v43 + 16) = 2;
  v44 = v16;
  if (sub_214D6DCAC(v43, sub_214D6DD44, &v61[-32]))
  {

LABEL_18:
    v35(v36, v3);
    goto LABEL_19;
  }

  v45 = sub_2150A5570();
  v46 = sub_2150A3F10();
  if (!os_log_type_enabled(v46, v45))
  {

    goto LABEL_18;
  }

  v47 = swift_slowAlloc();
  LODWORD(v66) = v45;
  v48 = v47;
  v67 = swift_slowAlloc();
  v73 = v67;
  *v48 = 136315650;
  v49 = sub_2150A5B70();
  v51 = sub_214F7723C(v49, v50, &v73);
  v64 = a1;
  v52 = v51;

  *(v48 + 4) = v52;
  *(v48 + 12) = 2048;
  *(v48 + 14) = 52;
  *(v48 + 22) = 2080;
  v71 = 0;
  v72 = 0xE000000000000000;
  sub_2150A5B20();

  v71 = 0xD000000000000028;
  v72 = 0x80000002150E1CE0;
  v53 = [v44 ic_loggingDescription];
  v54 = sub_2150A4AD0();
  v63 = v35;
  v56 = v55;

  v57 = v54;
  a1 = v64;
  MEMORY[0x2160617E0](v57, v56);

  v58 = sub_214F7723C(v71, v72, &v73);

  *(v48 + 24) = v58;
  _os_log_impl(&dword_214D51000, v46, v66, "Failed assertion at %s:%lu: %s", v48, 0x20u);
  v59 = v67;
  swift_arrayDestroy();
  MEMORY[0x216064AF0](v59, -1, -1);
  MEMORY[0x216064AF0](v48, -1, -1);

  v63(v70, v3);
LABEL_19:

  *a1 = v68;
  *(a1 + 8) = v40;
  *(a1 + 16) = v42;
  return result;
}

void NoteAccountObject.entityIdentifier.getter(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = [v1 objectID];
  v5 = [v4 ic_isModernType];
  if ((v5 & 1) == 0)
  {
    [v4 ic_isLegacyType];
  }

  if ([v2 isLocalAccount])
  {
    v6 = 0;
    v7 = 0;
  }

  else
  {
    v8 = [objc_opt_self() emailAddressForAccount_];
    v6 = sub_2150A4AD0();
    v7 = v9;
  }

  *a1 = v6;
  *(a1 + 8) = v7;
  *(a1 + 16) = v5 ^ 1;
}

void ICHashtag.entityIdentifier.getter(uint64_t *a1@<X8>)
{
  v3 = [v1 displayText];
  if (v3)
  {
    v4 = v3;
    v5 = sub_2150A4AD0();
    v7 = v6;

    *a1 = v5;
    a1[1] = v7;
  }

  else
  {
    __break(1u);
  }
}

void NotesAssistantFolderOption.entityIdentifier.getter(uint64_t a1@<X8>)
{
  v3 = sub_2150A3F30();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v37[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = [v1 managedObjectID];
  if ([v8 ic_isModernType])
  {

    v11 = 0;
  }

  else
  {
    v12 = [v8 ic_isLegacyType];

    if (v12)
    {
      v11 = 1;
    }

    else
    {
      v11 = 2;
    }
  }

  MEMORY[0x28223BE20](v9, v10);
  v37[-16] = v11;
  v13 = qword_280C245E0;
  v14 = v1;
  if (v13 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v3, qword_280C24890);
  (*(v4 + 16))(v7, v15, v3);
  v16 = swift_allocObject();
  *(v16 + 16) = 2;
  if (sub_214D6DCAC(v16, sub_214D6DCB8, &v37[-32]))
  {
  }

  else
  {
    v17 = sub_2150A5570();
    v18 = sub_2150A3F10();
    if (os_log_type_enabled(v18, v17))
    {
      v19 = swift_slowAlloc();
      v42 = a1;
      v20 = v19;
      v40 = swift_slowAlloc();
      v45 = v40;
      *v20 = 136315650;
      v21 = sub_2150A5B70();
      v39 = v18;
      v23 = sub_214F7723C(v21, v22, &v45);
      v41 = v37;
      v24 = v23;

      *(v20 + 4) = v24;
      *(v20 + 12) = 2048;
      *(v20 + 14) = 148;
      *(v20 + 22) = 2080;
      v43 = 0;
      v44 = 0xE000000000000000;
      sub_2150A5B20();
      MEMORY[0x2160617E0](0xD000000000000048, 0x80000002150E3B50);
      v25 = [v14 description];
      v26 = sub_2150A4AD0();
      v38 = v17;
      v27 = v11;
      v29 = v28;

      MEMORY[0x2160617E0](v26, v29);

      v30 = sub_214F7723C(v43, v44, &v45);

      *(v20 + 24) = v30;
      v11 = v27;
      v18 = v39;
      _os_log_impl(&dword_214D51000, v39, v38, "Failed assertion at %s:%lu: %s", v20, 0x20u);
      v31 = v40;
      swift_arrayDestroy();
      MEMORY[0x216064AF0](v31, -1, -1);
      v32 = v20;
      a1 = v42;
      MEMORY[0x216064AF0](v32, -1, -1);
    }
  }

  (*(v4 + 8))(v7, v3);

  v33 = [v14 identifierURIPathComponent];
  v34 = sub_2150A4AD0();
  v36 = v35;

  *a1 = v11;
  *(a1 + 8) = v34;
  *(a1 + 16) = v36;
}

unint64_t sub_214F7723C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_214F77308(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_214F50074(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_214F77308(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_214F77414(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_2150A5C80();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}