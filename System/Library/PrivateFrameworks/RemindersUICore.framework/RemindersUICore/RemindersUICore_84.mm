void sub_21D8BF978(uint64_t a1)
{
  v1 = a1;
  v31 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_21DBFBD7C();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v37 = MEMORY[0x277D84F90];
    sub_21D18ED90(0, v2 & ~(v2 >> 63), 0);
    v3 = v37;
    if (v31)
    {
      v4 = sub_21DBFBD0C();
    }

    else
    {
      v4 = sub_21DBFBCCC();
      v5 = *(v1 + 36);
    }

    v34 = v4;
    v35 = v5;
    v36 = v31 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      v29 = v1 + 56;
      v28 = v1 + 64;
      v30 = v2;
      while (v6 < v2)
      {
        if (__OFADD__(v6++, 1))
        {
          goto LABEL_36;
        }

        v10 = v34;
        v9 = v35;
        v11 = v36;
        v12 = v1;
        sub_21D3656F4(v34, v35, v36, v1);
        v14 = v13;
        v37 = v3;
        v16 = *(v3 + 16);
        v15 = *(v3 + 24);
        if (v16 >= v15 >> 1)
        {
          sub_21D18ED90((v15 > 1), v16 + 1, 1);
          v3 = v37;
        }

        *(v3 + 16) = v16 + 1;
        v17 = v3 + 32 * v16;
        *(v17 + 40) = 0;
        *(v17 + 48) = 0;
        *(v17 + 32) = v14;
        *(v17 + 56) = 1;
        v32 = v3;
        if (v31)
        {
          if (!v11)
          {
            goto LABEL_41;
          }

          v1 = v12;
          if (sub_21DBFBD2C())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v30;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5AE58, &unk_21DC11840);
          v7 = sub_21DBFAAEC();
          sub_21DBFBDEC();
          v7(v33, 0);
        }

        else
        {
          if (v11)
          {
            goto LABEL_42;
          }

          if ((v10 & 0x8000000000000000) != 0)
          {
            goto LABEL_37;
          }

          v1 = v12;
          v18 = 1 << *(v12 + 32);
          if (v10 >= v18)
          {
            goto LABEL_37;
          }

          v19 = v10 >> 6;
          v20 = *(v29 + 8 * (v10 >> 6));
          if (((v20 >> v10) & 1) == 0)
          {
            goto LABEL_38;
          }

          if (*(v12 + 36) != v9)
          {
            goto LABEL_39;
          }

          v21 = v20 & (-2 << (v10 & 0x3F));
          if (v21)
          {
            v18 = __clz(__rbit64(v21)) | v10 & 0x7FFFFFFFFFFFFFC0;
            v2 = v30;
          }

          else
          {
            v22 = v19 << 6;
            v23 = v19 + 1;
            v24 = (v28 + 8 * v19);
            v2 = v30;
            while (v23 < (v18 + 63) >> 6)
            {
              v26 = *v24++;
              v25 = v26;
              v22 += 64;
              ++v23;
              if (v26)
              {
                sub_21D15746C(v10, v9, 0);
                v18 = __clz(__rbit64(v25)) + v22;
                goto LABEL_32;
              }
            }

            sub_21D15746C(v10, v9, 0);
          }

LABEL_32:
          v27 = *(v1 + 36);
          v34 = v18;
          v35 = v27;
          v36 = 0;
        }

        v3 = v32;
        if (v6 == v2)
        {
          sub_21D15746C(v34, v35, v36);
          return;
        }
      }

      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
  }
}

uint64_t sub_21D8BFCB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_21D0CEB98(a1, v10);
  if (swift_dynamicCast())
  {
    if (v8 == a2 && v9 == a3)
    {

      v6 = 1;
    }

    else
    {
      v6 = sub_21DBFC64C();
    }
  }

  else
  {

    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_21D8BFD78(uint64_t a1)
{
  v2 = type metadata accessor for TTRReminderSuggestedAttribute.AttributeType(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v19[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v7 = &v19[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58A78, &qword_21DC09E90);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v19[-v9];
  v11 = type metadata accessor for TTRReminderSuggestedAttribute(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v19[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_21D0CEB98(a1, v19);
  v15 = swift_dynamicCast();
  v16 = *(v12 + 56);
  if (v15)
  {
    v16(v10, 0, 1, v11);
    sub_21D19AF08(v10, v14);
    sub_21DAE205C(v7);
    sub_21DAE205C(v4);
    v17 = _s15RemindersUICore29TTRReminderSuggestedAttributeV0E4TypeO19areKeyContentsEqualySbAE_AEtFZ_0(v7, v4);
    sub_21D8C5E9C(v4, type metadata accessor for TTRReminderSuggestedAttribute.AttributeType);
    sub_21D8C5E9C(v7, type metadata accessor for TTRReminderSuggestedAttribute.AttributeType);
    sub_21D8C5E9C(v14, type metadata accessor for TTRReminderSuggestedAttribute);
  }

  else
  {
    v16(v10, 1, 1, v11);
    sub_21D0CF7E0(v10, &qword_27CE58A78, &qword_21DC09E90);
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_21D8BFFEC(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58A78, &qword_21DC09E90);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v20[-v5];
  v7 = type metadata accessor for TTRReminderSuggestedAttribute(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_21D0CEB98(a1, v20);
  v11 = swift_dynamicCast();
  v12 = *(v8 + 56);
  if (v11)
  {
    v12(v6, 0, 1, v7);
    sub_21D19AF08(v6, v10);
    if ((_s15RemindersUICore29TTRReminderSuggestedAttributeV09AugmentedE4TypeO2eeoiySbAE_AEtFZ_0(a2, v10) & 1) == 0)
    {
      goto LABEL_16;
    }

    if ((sub_21DBF79BC() & 1) == 0)
    {
      goto LABEL_16;
    }

    sub_21D0D8CF0(0, &qword_280D17680, 0x277D82BB8);
    if ((sub_21DBFB63C() & 1) == 0)
    {
      goto LABEL_16;
    }

    v13 = *(v7 + 28);
    v14 = (a2 + v13);
    v15 = *(a2 + v13 + 16);
    v16 = &v10[v13];
    if (v15)
    {
      if (!v16[16])
      {
LABEL_16:
        v17 = 0;
        goto LABEL_17;
      }
    }

    else
    {
      if (v16[16])
      {
        goto LABEL_16;
      }

      if (*v14 != *v16 || v14[1] != *(v16 + 1))
      {
        goto LABEL_16;
      }
    }

    v17 = 1;
LABEL_17:
    sub_21D8C5E9C(v10, type metadata accessor for TTRReminderSuggestedAttribute);
    return v17;
  }

  v12(v6, 1, 1, v7);
  sub_21D0CF7E0(v6, &qword_27CE58A78, &qword_21DC09E90);
  return 0;
}

void *TTRReminderCellInlineHashtagEditingPresenter.__allocating_init(interactor:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();

  return sub_21D8C4724(a1, v2, ObjectType, a2);
}

uint64_t sub_21D8C028C()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_280D0F370);
  v1 = __swift_project_value_buffer(v0, qword_280D0F370);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

double TTRReminderCellInlineHashtagEditProcessingOutput.hashtagUpdate.getter@<D0>(void *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  *a1 = v1[1];
  a1[1] = v2;
  a1[2] = v3;
  sub_21DBF8E0C();

  sub_21DBF8E0C();
  return result;
}

double TTRReminderCellInlineHashtagEditProcessingOutput.augmentation.getter@<D0>(uint64_t *a1@<X8>)
{
  v2 = v1[4];
  v3 = v1[5];
  v4 = v1[6];
  v5 = v1[7];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_21D24A7C4(v2, v3, v4, v5);
}

double TTRReminderCellInlineHashtagSuggestionApplicationResult.hashtagUpdate.getter@<D0>(void *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  *a1 = v1[1];
  a1[1] = v2;
  a1[2] = v3;
  sub_21DBF8E0C();

  sub_21DBF8E0C();
  return result;
}

void *TTRReminderCellInlineHashtagEditingPresenter.init(interactor:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();

  return sub_21D8C4788(a1, v2, v6, ObjectType, a2);
}

uint64_t TTRReminderCellInlineHashtagEditingPresenter.requestHandleBeginEditingText(_:editingSession:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v41 = a3;
  v40[1] = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A0F0, &qword_21DC0E530);
  MEMORY[0x28223BE20](v6 - 8);
  v42 = v40 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE636A8, &qword_21DC2FB08);
  v9 = *(v8 - 8);
  v44 = v8;
  v45 = v9;
  MEMORY[0x28223BE20](v8);
  v43 = v40 - v10;
  v11 = sub_21DBF78CC();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v15 = MEMORY[0x277D84FA0];
  *(v4 + 6) = MEMORY[0x277D84FA0];

  v16 = [a1 string];
  v17 = sub_21DBFA16C();
  v19 = v18;

  v20 = MEMORY[0x223D42B30](v17, v19);

  v21 = swift_allocObject();
  *(v21 + 16) = v15;
  v22 = (v21 + 16);
  v50 = sub_21D24B444;
  v51 = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D472974;
  v49 = &block_descriptor_109;
  v23 = _Block_copy(aBlock);

  [a1 rem:0 enumerateHashtagInRange:v20 options:0x100000 usingBlock:v23];
  _Block_release(v23);
  swift_beginAccess();
  v24 = *v22;
  sub_21DBF8E0C();

  *(v4 + 5) = v24;

  ObjectType = swift_getObjectType();
  (*(v41 + 32))(aBlock, ObjectType);
  sub_21DBF78BC();
  v26 = OBJC_IVAR____TtC15RemindersUICore44TTRReminderCellInlineHashtagEditingPresenter_fetchedHashtagLabels;
  swift_beginAccess();
  (*(v12 + 40))(&v4[v26], v14, v11);
  swift_endAccess();
  v27 = *(v4 + 3);
  v28 = swift_getObjectType();
  v29 = v49;
  v30 = v50;
  __swift_project_boxed_opaque_existential_1(aBlock, v49);
  v31 = (*(v30 + 22))(v29, v30);
  v32 = (*(v27 + 8))(v31, v28, v27);

  v47 = v32;
  v33 = [objc_opt_self() mainRunLoop];
  v46 = v33;
  v34 = sub_21DBFBA0C();
  v35 = v42;
  (*(*(v34 - 8) + 56))(v42, 1, 1, v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A110, &unk_21DC0E550);
  sub_21D0D8CF0(0, &qword_280D17650, 0x277CBEB88);
  sub_21D0D0F1C(&qword_280D0C498, &qword_27CE5A110, &unk_21DC0E550, MEMORY[0x277CBCD90]);
  sub_21D0D65DC(&qword_280D17660, &qword_280D17650, 0x277CBEB88, MEMORY[0x277CC9E80]);
  v36 = v43;
  sub_21DBF936C();
  sub_21D0CF7E0(v35, &qword_27CE5A0F0, &qword_21DC0E530);

  swift_allocObject();
  swift_weakInit();
  sub_21D0D0F1C(&qword_280D0C510, &qword_27CE636A8, &qword_21DC2FB08, MEMORY[0x277CBCD60]);
  v37 = v44;
  v38 = sub_21DBF92AC();

  (*(v45 + 8))(v36, v37);
  *(v4 + 7) = v38;

  return __swift_destroy_boxed_opaque_existential_0(aBlock);
}

void sub_21D8C0A64(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    if (qword_280D0F368 != -1)
    {
      swift_once();
    }

    v2 = sub_21DBF84BC();
    __swift_project_value_buffer(v2, qword_280D0F370);
    v3 = v1;
    v4 = sub_21DBF84AC();
    v5 = sub_21DBFAEBC();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v12 = v7;
      *v6 = 136315138;
      swift_getErrorValue();
      v8 = sub_21DBFC75C();
      v10 = v9;

      v11 = sub_21D0CDFB4(v8, v10, &v12);

      *(v6 + 4) = v11;
      _os_log_impl(&dword_21D0C9000, v4, v5, "fetchAllHashtagLabels failed {error: %s}", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x223D46520](v7, -1, -1);
      MEMORY[0x223D46520](v6, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_21D8C0C18(uint64_t a1, uint64_t a2)
{
  v2 = sub_21DBF78CC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    v8 = sub_21DBF6ABC();
    v9 = sub_21DBF6ACC();
    v11 = v8;
    sub_21D5623AC(v9);
    sub_21DBF784C();
    v10 = OBJC_IVAR____TtC15RemindersUICore44TTRReminderCellInlineHashtagEditingPresenter_fetchedHashtagLabels;
    swift_beginAccess();
    (*(v3 + 40))(v7 + v10, v5, v2);
    swift_endAccess();
  }

  return result;
}

char ***TTRReminderCellInlineHashtagEditingPresenter.request(handleEditingTextChange:detail:hasMarkedText:editingSession:)@<X0>(char ***result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  if ((a3 & 1) != 0 || !*(a2 + 32))
  {
    goto LABEL_8;
  }

  v8 = *(a2 + 8);
  v44 = *a2;
  v45 = result;
  v9 = *(a2 + 24);
  v42 = *(a2 + 16);
  v43 = v8;
  v41 = v9;
  ObjectType = swift_getObjectType();
  v39 = *(a4 + 32);
  v40 = ObjectType;
  v39(&v52, ObjectType, a4);
  v11 = *(&v53 + 1);
  v12 = v54;
  __swift_project_boxed_opaque_existential_1(&v52, *(&v53 + 1));
  (*(v12 + 216))(&v47, v11, v12);
  if (!*(&v48 + 1))
  {
    sub_21D0CF7E0(&v47, &qword_27CE5A140, &unk_21DC0E560);
    result = __swift_destroy_boxed_opaque_existential_0(&v52);
LABEL_8:
    *(a5 + 64) = 0;
    *(a5 + 32) = 0u;
    *(a5 + 48) = 0u;
    *a5 = 0u;
    *(a5 + 16) = 0u;
    return result;
  }

  sub_21D0D15E0(&v47, v51);
  __swift_destroy_boxed_opaque_existential_0(&v52);
  v13 = v45;
  sub_21D5FF13C(v44, v45, v43, v42, &v52);
  v47 = v52;
  v48 = v53;
  v49 = v54;
  v50 = v55;

  v14 = sub_21D602A98();

  v44 = 0;
  v15 = v47;
  v43 = v47;
  v16 = (v39)(v46, v40, a4);
  MEMORY[0x28223BE20](v16);
  v40 = v5;
  v37[2] = v5;
  v37[3] = v46;
  v37[4] = v51;
  sub_21D173F24(sub_21D8C4820, v37, v15);
  v18 = v17;
  __swift_destroy_boxed_opaque_existential_0(v46);
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  v19 = sub_21D47A110(v13, v14, v18);
  v45 = v14;

  v44 = v18;

  v20 = [v19 string];
  v21 = sub_21DBFA16C();
  v41 = v22;
  v42 = v21;

  v23 = *(&v47 + 1);
  v24 = v48;
  v26 = v49;
  v25 = v50;
  sub_21D8C4844(*(&v47 + 1), v48, *(&v48 + 1), v49, *(&v49 + 1), v50);

  v39 = *(&v24 + 1);
  v27 = sub_21D602690(v23, v24, *(&v24 + 1), v26);
  v43 = v19;
  v28 = [v19 string];
  v38 = sub_21DBFA16C();
  v30 = v29;

  if (v26)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58860, &qword_21DC2FB10);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21DC08D00;
    *(inited + 32) = v23;
    *(inited + 40) = v24;
    *(inited + 48) = 0;
    v32 = sub_21D1D1278(inited);
    swift_setDeallocating();
    sub_21DBF8E0C();
    v33 = sub_21D8C4888(v23, v24, *(&v26 + 1), v25);

    sub_21D602690(v23, v24, v39, v26);
    v34 = v38;
  }

  else
  {

    v34 = 0;
    v30 = 0;
    v32 = 0;
    v33 = 0;
  }

  result = __swift_destroy_boxed_opaque_existential_0(v51);
  v35 = v44;
  *a5 = v45;
  *(a5 + 8) = v35;
  v36 = v41;
  *(a5 + 16) = v42;
  *(a5 + 24) = v36;
  *(a5 + 32) = v34;
  *(a5 + 40) = v30;
  *(a5 + 48) = v32;
  *(a5 + 56) = v33;
  *(a5 + 64) = v43;
  return result;
}

double TTRReminderCellInlineHashtagEditingPresenter.request(applySuggestion:currentText:editingSession:)@<D0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = *a1;
  v7 = a1[1];
  v58 = a1[2];
  v59 = a1[3];
  v9 = (a3 + 32);
  ObjectType = swift_getObjectType();
  v56 = *v9;
  (*v9)(&v63, ObjectType, a3);
  v10 = v65;
  v11 = v66;
  __swift_project_boxed_opaque_existential_1(&v63, v65);
  (*(v11 + 216))(&v61, v10, v11);
  if (v62)
  {
    v53 = v4;
    v55 = a4;
    sub_21D0D15E0(&v61, v67);
    __swift_destroy_boxed_opaque_existential_0(&v63);
    v63 = sub_21DBFA23C();
    v64 = v12;
    sub_21DBF8E0C();
    v13 = v8;
    v14 = v8;
    v15 = v7;
    MEMORY[0x223D42AA0](v14, v7);

    v16 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v17 = sub_21DBFA12C();

    v18 = [v16 initWithString_];

    v19 = [v18 string];
    v20 = sub_21DBFA16C();
    v22 = v21;

    v63 = v20;
    v64 = v22;
    sub_21DBF8E0C();
    MEMORY[0x223D42AA0](32, 0xE100000000000000);

    v23 = v63;
    v24 = v64;
    v56(&v63, ObjectType, a3);
    v25 = v68;
    v26 = v69;
    __swift_project_boxed_opaque_existential_1(v67, v68);
    v27 = (*(v26 + 8))(v25, v26);
    sub_21D8C3E08(v13, v15, v27, &selRef_name);
    v29 = v28;

    if (!v29)
    {
      swift_beginAccess();
      v30 = *(v53 + 48);
      sub_21DBF8E0C();
      sub_21D8C3E08(v13, v15, v30, &selRef_name);
      v29 = v31;

      if (!v29)
      {
        v29 = sub_21D8C3C9C(&v63);
      }
    }

    __swift_destroy_boxed_opaque_existential_0(&v63);
    MEMORY[0x223D42B30](v23, v24);
    v63 = sub_21DBFA23C();
    v64 = v32;
    sub_21DBF8E0C();
    MEMORY[0x223D42AA0](v13, v15);

    v33 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v34 = sub_21DBFA12C();

    v35 = [v33 initWithString_];

    v36 = [v35 string];
    v37 = sub_21DBFA16C();
    v39 = v38;

    v40 = MEMORY[0x223D42B30](v37, v39);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58808, &unk_21DC09A50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21DC08D00;
    *(inited + 32) = v58;
    *(inited + 40) = v59;
    *(inited + 48) = v23;
    *(inited + 56) = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58828, &qword_21DC09A70);
    v54 = v23;
    v42 = v24;
    v43 = swift_initStackObject();
    *(v43 + 16) = xmmword_21DC08D00;
    *(v43 + 32) = v29;
    *(v43 + 40) = v58;
    *(v43 + 48) = v40;
    v44 = v29;
    sub_21DBF8E0C();
    swift_unknownObjectRetain();
    v45 = sub_21D47A110(a2, inited, v43);
    swift_setDeallocating();
    sub_21D873CB4(inited + 32);
    swift_setDeallocating();
    sub_21D8C4E68(v43 + 32);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_21DC08D00;
    *(v46 + 32) = v44;
    *(v46 + 40) = v58;
    *(v46 + 48) = v40;
    swift_unknownObjectRetain();
    v47 = [v45 string];
    v48 = sub_21DBFA16C();
    v50 = v49;

    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_21DC08D00;
    *(v51 + 32) = v58;
    *(v51 + 40) = v59;
    *(v51 + 48) = v54;
    *(v51 + 56) = v42;
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_0(v67);
    *v55 = v51;
    v55[1] = v46;
    v55[2] = v48;
    v55[3] = v50;
    v55[4] = v45;
  }

  else
  {
    sub_21D0CF7E0(&v61, &qword_27CE5A140, &unk_21DC0E560);
    __swift_destroy_boxed_opaque_existential_0(&v63);
    *(a4 + 32) = 0;
    result = 0.0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }

  return result;
}

id TTRReminderCellInlineHashtagEditingPresenter.requestAdoptForeignHashtag(in:currentText:editingSession:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v72 = a1;
  v11 = sub_21DBF4CAC();
  v12 = *(v11 - 1);
  MEMORY[0x28223BE20](v11);
  v14 = v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjectType = swift_getObjectType();
  v17 = (a5 + 32);
  v16 = *(a5 + 32);
  v67[1] = a4;
  v69 = ObjectType;
  v70 = a5;
  v68 = v16;
  v16(v75, ObjectType, a5);
  v18 = v76;
  v19 = v77;
  __swift_project_boxed_opaque_existential_1(v75, v76);
  (*(v19 + 216))(&v73, v18, v19);
  if (!v74)
  {
    sub_21D0CF7E0(&v73, &qword_27CE5A140, &unk_21DC0E560);
    v32 = v75;
LABEL_6:
    __swift_destroy_boxed_opaque_existential_0(v32);
    return 0;
  }

  v67[0] = v6;
  sub_21D0D15E0(&v73, v78);
  __swift_destroy_boxed_opaque_existential_0(v75);
  v71 = a3;
  result = [a3 string];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v21 = result;
  v22 = v72;
  v23 = [result substringWithRange_];

  v24 = sub_21DBFA16C();
  v26 = v25;

  v27 = sub_21DBF4C1C();
  MEMORY[0x28223BE20](v27);
  v67[-2] = v14;
  v28 = sub_21D3F7414(sub_21D24B3BC, &v67[-4], v24, v26);
  if (v29)
  {

    v30 = 0;
    v31 = 0xE000000000000000;
  }

  else
  {
    v33 = sub_21D3F7BA8(v28, v24, v26);
    v35 = v34;
    v37 = v36;
    v39 = v38;

    v40 = v37;
    v22 = v72;
    v30 = MEMORY[0x223D429B0](v33, v35, v40, v39);
    v31 = v41;
  }

  v42 = v71;
  (*(v12 + 8))(v14, v11);
  v43 = HIBYTE(v31) & 0xF;
  if ((v31 & 0x2000000000000000) == 0)
  {
    v43 = v30 & 0xFFFFFFFFFFFFLL;
  }

  if (!v43)
  {
    goto LABEL_18;
  }

  if (v22 < 0)
  {
    __break(1u);
    goto LABEL_28;
  }

  v44 = [v42 rem:v22 hashtagAtIndex:0 effectiveRange:?];
  if (!v44)
  {
LABEL_18:
    __swift_destroy_boxed_opaque_existential_0(v78);

    return 0;
  }

  v11 = v44;
  v45 = [v44 objectIdentifier];
  v46 = sub_21DBFA16C();
  v48 = v47;

  v68(v75, v69, v70);
  v17 = sub_21D8C1E18(v46, v48, v30, v31, v75, v78);

  __swift_destroy_boxed_opaque_existential_0(v75);
  if (!v17)
  {
    if (qword_280D0F368 != -1)
    {
      swift_once();
    }

    v56 = sub_21DBF84BC();
    __swift_project_value_buffer(v56, qword_280D0F370);
    v57 = v11;
    v58 = sub_21DBF84AC();
    v59 = sub_21DBFAEBC();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v75[0] = v61;
      *v60 = 136315138;
      v62 = [v57 objectIdentifier];
      v63 = sub_21DBFA16C();
      v65 = v64;

      v66 = sub_21D0CDFB4(v63, v65, v75);

      *(v60 + 4) = v66;
      _os_log_impl(&dword_21D0C9000, v58, v59, "TTRReminderCellInlineHashtagEditingPresenter failed to adopted foreign hashtag {objectIdentifier: %s}", v60, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v61);
      MEMORY[0x223D46520](v61, -1, -1);
      MEMORY[0x223D46520](v60, -1, -1);
    }

    else
    {
    }

    v32 = v78;
    goto LABEL_6;
  }

  v49 = [v17 objectIdentifier];
  a3 = sub_21DBFA16C();
  v31 = v50;

  if (qword_280D0F368 != -1)
  {
LABEL_28:
    swift_once();
  }

  v51 = sub_21DBF84BC();
  __swift_project_value_buffer(v51, qword_280D0F370);
  sub_21DBF8E0C();
  v52 = sub_21DBF84AC();
  v53 = sub_21DBFAEDC();

  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v75[0] = v55;
    *v54 = 136315138;
    *(v54 + 4) = sub_21D0CDFB4(a3, v31, v75);
    _os_log_impl(&dword_21D0C9000, v52, v53, "TTRReminderCellInlineHashtagEditingPresenter adopted foreign hashtag {objectID: %s}", v54, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v55);
    MEMORY[0x223D46520](v55, -1, -1);
    MEMORY[0x223D46520](v54, -1, -1);
  }

  else
  {
  }

  __swift_destroy_boxed_opaque_existential_0(v78);
  return a3;
}

id sub_21D8C1E18(uint64_t a1, unint64_t a2, void *a3, void *a4, void *a5, void *a6)
{
  v7 = v6;
  v52[0] = a5;
  v52[1] = a3;
  v52[2] = a4;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58370, &unk_21DC091F0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v52 - v12;
  v14 = sub_21DBF56BC();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a6[3];
  v19 = a6[4];
  __swift_project_boxed_opaque_existential_1(a6, v18);
  v20 = (*(v19 + 8))(v18, v19);
  sub_21D8C3E08(a1, a2, v20, &selRef_objectIdentifier);
  v22 = v21;

  if (!v22)
  {
    v23 = v17;
    swift_beginAccess();
    v24 = *(v7 + 48);
    sub_21DBF8E0C();
    sub_21D8C3E08(a1, a2, v24, &selRef_objectIdentifier);
    v22 = v25;

    if (!v22)
    {
      v26 = a1;
      sub_21DBF564C();
      v27 = v15;
      v28 = *(v15 + 48);
      v29 = v14;
      if (v28(v13, 1, v14) == 1)
      {
        sub_21D0CF7E0(v13, &qword_27CE58370, &unk_21DC091F0);
        if (qword_280D0F368 != -1)
        {
          swift_once();
        }

        v30 = sub_21DBF84BC();
        __swift_project_value_buffer(v30, qword_280D0F370);
        sub_21DBF8E0C();
        v31 = sub_21DBF84AC();
        v32 = sub_21DBFAEBC();

        if (os_log_type_enabled(v31, v32))
        {
          v33 = a2;
          v34 = swift_slowAlloc();
          v35 = swift_slowAlloc();
          v53[0] = v35;
          *v34 = 136315138;
          *(v34 + 4) = sub_21D0CDFB4(v26, v33, v53);
          _os_log_impl(&dword_21D0C9000, v31, v32, "findOrCreateHashtag: the given object identifier is invalid {objectID: %s}", v34, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v35);
          MEMORY[0x223D46520](v35, -1, -1);
          MEMORY[0x223D46520](v34, -1, -1);
        }

        return 0;
      }

      else
      {
        v36 = v23;
        (*(v27 + 32))(v23, v13, v14);
        v37 = objc_opt_self();
        v38 = v27;
        v39 = sub_21DBF566C();
        v40 = [v37 objectIDWithUUID_];

        v41 = v52[0];
        v42 = v52[0][3];
        v43 = v52[0][4];
        __swift_project_boxed_opaque_existential_1(v52[0], v42);
        v44 = (*(v43 + 16))(v42, v43);
        v45 = v41[3];
        v46 = v41[4];
        __swift_project_boxed_opaque_existential_1(v41, v45);
        v47 = (*(v46 + 8))(v45, v46);
        v48 = objc_allocWithZone(MEMORY[0x277D44648]);
        v49 = sub_21DBFA12C();
        v50 = [v48 initWithObjectID:v40 accountID:v44 reminderID:v47 type:1 name:v49];

        swift_beginAccess();
        v22 = v50;
        sub_21D29BA34(&v54, v22);
        swift_endAccess();

        (*(v38 + 8))(v36, v29);
      }
    }
  }

  return v22;
}

uint64_t TTRReminderCellInlineHashtagEditingPresenter.requestConvertTextToHashtag(in:currentText:editingSession:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  v10 = sub_21DBF4CAC();
  v77 = *(v10 - 8);
  v78 = v10;
  MEMORY[0x28223BE20](v10);
  v76 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjectType = swift_getObjectType();
  v13 = *(a4 + 32);
  v80 = ObjectType;
  *&v81 = a4;
  v79 = v13;
  v13(&aBlock, ObjectType, a4);
  v14 = v86;
  v15 = v87;
  __swift_project_boxed_opaque_existential_1(&aBlock, v86);
  (*(v15 + 27))(&v89, v14, v15);
  if (!v90)
  {
    sub_21D0CF7E0(&v89, &qword_27CE5A140, &unk_21DC0E560);
    p_aBlock = &aBlock;
    goto LABEL_5;
  }

  sub_21D0D15E0(&v89, v91);
  __swift_destroy_boxed_opaque_existential_0(&aBlock);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  v17 = (v16 + 16);
  v87 = sub_21D24BDA4;
  v88 = v16;
  aBlock = MEMORY[0x277D85DD0];
  v84 = 1107296256;
  v85 = sub_21D472974;
  v86 = &block_descriptor_9_3;
  v18 = _Block_copy(&aBlock);
  v82 = a2;

  v19 = v82;

  [a3 rem:a1 enumerateHashtagInRange:v19 options:0x100000 usingBlock:v18];
  _Block_release(v18);
  swift_beginAccess();
  LOBYTE(v17) = *v17;

  if (v17)
  {
    p_aBlock = v91;
LABEL_5:
    result = __swift_destroy_boxed_opaque_existential_0(p_aBlock);
LABEL_6:
    a5[4] = 0;
    *a5 = 0u;
    *(a5 + 1) = 0u;
    return result;
  }

  v74 = a5;
  type metadata accessor for TTRHashtagEditingPresenterCapability();
  v22 = [a3 string];
  v23 = sub_21DBFA16C();
  v24 = v19;
  v26 = v25;

  static TTRHashtagEditingPresenterCapability.hashtagTextAttributes(of:in:)(v23, v26, a1, v24, &aBlock);

  if (aBlock == 2)
  {
    result = __swift_destroy_boxed_opaque_existential_0(v91);
    a5 = v74;
    goto LABEL_6;
  }

  v72 = a3;
  v27 = [a3 string];
  if (!v27)
  {
    sub_21DBFA16C();
    v27 = sub_21DBFA12C();
  }

  v73 = a1;
  v28 = [v27 substringWithRange_];

  v29 = sub_21DBFA16C();
  v31 = v30;

  v32 = v76;
  v33 = sub_21DBF4C1C();
  MEMORY[0x28223BE20](v33);
  *(&v71 - 2) = v32;
  v34 = sub_21D3F7414(sub_21D24BE88, (&v71 - 4), v29, v31);
  if (v35)
  {

    v36 = 0;
    v37 = 0xE000000000000000;
  }

  else
  {
    v38 = sub_21D3F7BA8(v34, v29, v31);
    v40 = v39;
    v42 = v41;
    v44 = v43;

    v36 = MEMORY[0x223D429B0](v38, v40, v42, v44);
    v37 = v45;
  }

  (*(v77 + 8))(v32, v78);
  aBlock = sub_21DBFA23C();
  v84 = v46;
  sub_21DBF8E0C();
  MEMORY[0x223D42AA0](v36, v37);

  v78 = aBlock;
  v47 = v84;
  sub_21DBF8E0C();
  v79(&aBlock, v80, v81);
  v48 = v92;
  v49 = v93;
  __swift_project_boxed_opaque_existential_1(v91, v92);
  v50 = (*(v49 + 8))(v48, v49);
  sub_21D8C3E08(v36, v37, v50, &selRef_name);
  v52 = v51;

  if (!v52)
  {
    v53 = v75;
    swift_beginAccess();
    v54 = *(v53 + 48);
    sub_21DBF8E0C();
    sub_21D8C3E08(v36, v37, v54, &selRef_name);
    v52 = v55;

    if (!v52)
    {
      v52 = sub_21D8C3C9C(&aBlock);
    }
  }

  __swift_destroy_boxed_opaque_existential_0(&aBlock);
  v56 = v78;
  v57 = MEMORY[0x223D42B30]();
  v79 = v57;

  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58808, &unk_21DC09A50);
  inited = swift_initStackObject();
  v81 = xmmword_21DC08D00;
  *(inited + 16) = xmmword_21DC08D00;
  v59 = v73;
  *(inited + 32) = v73;
  *(inited + 40) = v82;
  *(inited + 48) = v56;
  *(inited + 56) = v47;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58828, &qword_21DC09A70);
  v60 = swift_initStackObject();
  *(v60 + 16) = v81;
  *(v60 + 32) = v52;
  *(v60 + 40) = v59;
  *(v60 + 48) = v57;
  v61 = v52;
  sub_21DBF8E0C();
  swift_unknownObjectRetain();
  v62 = sub_21D47A110(v72, inited, v60);
  swift_setDeallocating();
  sub_21D873CB4(inited + 32);
  swift_setDeallocating();
  sub_21D8C4E68(v60 + 32);
  v63 = swift_allocObject();
  *(v63 + 16) = v81;
  *(v63 + 32) = v61;
  *(v63 + 40) = v59;
  *(v63 + 48) = v79;
  swift_unknownObjectRetain();
  v64 = [v62 string];
  v65 = sub_21DBFA16C();
  v67 = v66;

  v68 = swift_allocObject();
  *(v68 + 16) = v81;
  v69 = v82;
  *(v68 + 32) = v59;
  *(v68 + 40) = v69;
  *(v68 + 48) = v78;
  *(v68 + 56) = v47;
  swift_unknownObjectRelease();

  result = __swift_destroy_boxed_opaque_existential_0(v91);
  v70 = v74;
  *v74 = v68;
  v70[1] = v63;
  v70[2] = v65;
  v70[3] = v67;
  v70[4] = v62;
  return result;
}

char *TTRReminderCellInlineHashtagEditingPresenter.commitHashtagChanges(for:on:otherTextProperties:)(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v131 = a1;
  ObjectType = swift_getObjectType();
  v8 = *(a3 + 32);
  v8(v149, ObjectType, a3);
  v9 = v150;
  v10 = v151;
  __swift_project_boxed_opaque_existential_1(v149, v150);
  (*(v10 + 216))(&aBlock, v9, v10);
  if (!v146)
  {
    sub_21D0CF7E0(&aBlock, &qword_27CE5A140, &unk_21DC0E560);
    __swift_destroy_boxed_opaque_existential_0(v149);

    return v131;
  }

  v132 = a4;
  v11 = ObjectType;
  v12 = a3;
  sub_21D0D15E0(&aBlock, v152);
  __swift_destroy_boxed_opaque_existential_0(v149);
  sub_21D601C0C(v131, v149);

  v13 = sub_21D602A98();

  v14 = v149[0];
  v124 = v11;
  v125 = a2;
  v126 = v12;
  v15 = v8(&aBlock, v11, v12);
  MEMORY[0x28223BE20](v15);
  v118[0] = v128;
  v118[1] = &aBlock;
  v16 = v128;
  v119 = v152;
  sub_21D173F24(sub_21D8C5F04, &v117, v14);
  v18 = v17;
  v127 = 0;
  __swift_destroy_boxed_opaque_existential_0(&aBlock);
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  v19 = sub_21D47A110(v131, v13, v18);
  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  v20 = [v19 string];
  v21 = sub_21DBFA16C();
  v23 = v22;

  v24 = MEMORY[0x223D42B30](v21, v23);

  v25 = swift_allocObject();
  v26 = MEMORY[0x277D84FA0];
  *(v25 + 16) = MEMORY[0x277D84FA0];
  v27 = (v25 + 16);
  v147 = sub_21D47BA94;
  v148 = v25;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v145 = sub_21D472974;
  v146 = &block_descriptor_16_0;
  v28 = _Block_copy(&aBlock);

  v123 = v19;
  [v19 rem:0 enumerateHashtagInRange:v24 options:0x100000 usingBlock:v28];
  _Block_release(v28);
  swift_beginAccess();
  v29 = *v27;
  sub_21DBF8E0C();

  v30 = *(v16 + 40);
  if (*(v29 + 16) <= *(v30 + 16) >> 3)
  {
    *&aBlock = *(v16 + 40);
    sub_21DBF8E0C();
    sub_21D9F86E8(v29);
    v31 = aBlock;
  }

  else
  {
    sub_21DBF8E0C();
    v31 = sub_21D9F8D40(v29, v30);
  }

  v33 = v132;
  v143 = v31;
  v140[0] = v26;
  if (v132 >> 62)
  {
    goto LABEL_62;
  }

  v34 = *((v132 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v34)
  {
    goto LABEL_18;
  }

LABEL_10:
  v122 = v29;
  v35 = 0;
  v130 = v33 & 0xFFFFFFFFFFFFFF8;
  v131 = (v33 & 0xC000000000000001);
  v129 = &v145;
  while (1)
  {
    if (v131)
    {
      v36 = MEMORY[0x223D44740](v35, v33);
    }

    else
    {
      if (v35 >= *(v130 + 16))
      {
        goto LABEL_59;
      }

      v36 = *(v33 + 8 * v35 + 32);
    }

    v37 = v36;
    v29 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      break;
    }

    v38 = [v36 string];
    v39 = sub_21DBFA16C();
    v41 = v40;

    v42 = MEMORY[0x223D42B30](v39, v41);

    v43 = swift_allocObject();
    *(v43 + 16) = MEMORY[0x277D84FA0];
    v44 = (v43 + 16);
    v147 = sub_21D47BA94;
    v148 = v43;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v145 = sub_21D472974;
    v146 = &block_descriptor_21_2;
    v45 = _Block_copy(&aBlock);

    [v37 rem:0 enumerateHashtagInRange:v42 options:0x100000 usingBlock:v45];
    _Block_release(v45);
    swift_beginAccess();
    v26 = *v44;
    sub_21DBF8E0C();

    sub_21D3234F8(v26);

    ++v35;
    v33 = v132;
    if (v29 == v34)
    {
      v26 = v140[0];
      v29 = v122;
      goto LABEL_18;
    }
  }

  while (1)
  {
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    v115 = v33;
    v116 = sub_21DBFBD7C();
    v33 = v115;
    v34 = v116;
    if (v116)
    {
      goto LABEL_10;
    }

LABEL_18:
    sub_21D9F86E8(v26);

    MEMORY[0x28223BE20](v46);
    v119 = v152;
    v120 = v47;
    v48 = v127;
    sub_21D4E64B8(sub_21D8C4EBC, v118, v47);
    v50 = v49;
    swift_beginAccess();
    v51 = sub_21DBF8E0C();
    v52 = sub_21D8C54C4(v51, v29);
    v122 = v48;

    if (qword_280D0F368 != -1)
    {
      swift_once();
    }

    v53 = sub_21DBF84BC();
    __swift_project_value_buffer(v53, qword_280D0F370);

    sub_21DBF8E0C();
    v54 = sub_21DBF84AC();
    v55 = sub_21DBFAEDC();

    v56 = os_log_type_enabled(v54, v55);
    v128 = v50;
    if (v56)
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      *&aBlock = v58;
      *v57 = 136315394;
      v59 = sub_21D8C384C(v52);
      v61 = sub_21D0CDFB4(v59, v60, &aBlock);

      *(v57 + 4) = v61;
      *(v57 + 12) = 2080;
      v62 = sub_21D8C3974(v50);
      v64 = sub_21D0CDFB4(v62, v63, &aBlock);

      *(v57 + 14) = v64;
      _os_log_impl(&dword_21D0C9000, v54, v55, "TTRReminderCellInlineHashtagEditingPresenter committing inline hashtags {add: %s, remove: %s}", v57, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223D46520](v58, -1, -1);
      MEMORY[0x223D46520](v57, -1, -1);
    }

    v127 = v52;
    if ((v52 & 0xC000000000000001) != 0)
    {

      sub_21DBFBD1C();
      sub_21D0D8CF0(0, &qword_280D0C348, 0x277D44648);
      sub_21D0D65DC(&qword_280D0C340, &qword_280D0C348, 0x277D44648, MEMORY[0x277D85378]);
      sub_21DBFAB5C();
      v65 = *(&aBlock + 1);
      v52 = aBlock;
      v66 = v145;
      v67 = v146;
      v29 = v147;
    }

    else
    {
      v68 = -1 << *(v52 + 32);
      v65 = v52 + 56;
      v66 = ~v68;
      v69 = -v68;
      v70 = v69 < 64 ? ~(-1 << v69) : -1;
      v29 = v70 & *(v52 + 56);

      v67 = 0;
    }

    v121 = v66;
    v26 = ((v66 + 64) >> 6);
    v130 = " action name";
    v131 = v26;
    v129 = v52;
    if (v52 < 0)
    {
      break;
    }

LABEL_29:
    v71 = v67;
    v72 = v29;
    v73 = v67;
    if (v29)
    {
LABEL_33:
      v74 = (v72 - 1) & v72;
      v75 = *(*(v52 + 48) + ((v73 << 9) | (8 * __clz(__rbit64(v72)))));
      if (v75)
      {
        goto LABEL_37;
      }

      goto LABEL_43;
    }

    while (1)
    {
      v73 = v71 + 1;
      if (__OFADD__(v71, 1))
      {
        break;
      }

      if (v73 >= v26)
      {
        goto LABEL_43;
      }

      v72 = *(v65 + 8 * v73);
      ++v71;
      if (v72)
      {
        goto LABEL_33;
      }
    }

    __break(1u);
  }

  while (1)
  {
    v76 = sub_21DBFBDBC();
    if (!v76)
    {
      break;
    }

    v139 = v76;
    sub_21D0D8CF0(0, &qword_280D0C348, 0x277D44648);
    swift_dynamicCast();
    v75 = v140[0];
    v73 = v67;
    v74 = v29;
    if (!v140[0])
    {
      break;
    }

LABEL_37:
    v132 = v74;
    v77 = v65;
    v133 = 0x6E756F4372616863;
    v134 = 0xE900000000000074;
    v26 = v75;
    v78 = [v75 name];
    sub_21DBFA16C();

    sub_21DBFA28C();

    v135 = sub_21DBFABEC();
    v136 = 1701869940;
    v137 = 0xE400000000000000;
    sub_21D0D8CF0(0, &qword_27CE5A168, 0x277CCACA8);
    v138 = sub_21DBFB66C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE582E0, &qword_21DC090B8);
    v79 = sub_21DBFC40C();

    v29 = v133;
    v80 = v134;
    v81 = v135;
    sub_21DBF8E0C();
    v82 = v81;
    v83 = sub_21D0CEF70(v29, v80);
    if (v33)
    {
      goto LABEL_60;
    }

    *(v79 + ((v83 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v83;
    v84 = (v79[6] + 16 * v83);
    *v84 = v29;
    v84[1] = v80;
    *(v79[7] + 8 * v83) = v82;
    v85 = v79[2];
    v86 = __OFADD__(v85, 1);
    v87 = v85 + 1;
    if (v86)
    {
      goto LABEL_61;
    }

    v79[2] = v87;
    v29 = v136;
    v88 = v137;
    v89 = v138;
    sub_21DBF8E0C();
    v90 = v89;
    v91 = sub_21D0CEF70(v29, v88);
    if (v33)
    {
      goto LABEL_60;
    }

    *(v79 + ((v91 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v91;
    v92 = (v79[6] + 16 * v91);
    *v92 = v29;
    v92[1] = v88;
    *(v79[7] + 8 * v91) = v90;
    v93 = v79[2];
    v86 = __OFADD__(v93, 1);
    v94 = v93 + 1;
    if (v86)
    {
      goto LABEL_61;
    }

    v79[2] = v94;

    sub_21DBF835C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59220, &qword_21DC0E700);
    swift_arrayDestroy();
    MEMORY[0x223D40B00](0xD00000000000001DLL, v130 | 0x8000000000000000, v79, 0, 1);

    v67 = v73;
    v26 = v131;
    v29 = v132;
    v65 = v77;
    v52 = v129;
    if ((v129 & 0x8000000000000000) == 0)
    {
      goto LABEL_29;
    }
  }

LABEL_43:
  sub_21D0CFAF8(v52);
  (*(v126 + 72))(v140, v124);
  v95 = v141;
  v96 = v142;
  v97 = __swift_project_boxed_opaque_existential_1(v140, v141);
  sub_21D8BF978(v127);
  v99 = v98;

  if (v128 >> 62)
  {
    v100 = sub_21DBFBD7C();
  }

  else
  {
    v100 = *((v128 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v131 = v97;
  v132 = v96;
  v130 = v99;
  if (!v100)
  {

    v102 = MEMORY[0x277D84F90];
    goto LABEL_56;
  }

  v139 = MEMORY[0x277D84F90];
  result = sub_21D18ED90(0, v100 & ~(v100 >> 63), 0);
  if (v100 < 0)
  {
    __break(1u);
  }

  else
  {
    v129 = v95;
    v101 = 0;
    v102 = v139;
    v103 = v128;
    v104 = v128 & 0xC000000000000001;
    do
    {
      if (v104)
      {
        v105 = MEMORY[0x223D44740](v101, v103);
      }

      else
      {
        v105 = *(v103 + 8 * v101 + 32);
      }

      v106 = v105;
      v139 = v102;
      v108 = *(v102 + 16);
      v107 = *(v102 + 24);
      if (v108 >= v107 >> 1)
      {
        sub_21D18ED90((v107 > 1), v108 + 1, 1);
        v103 = v128;
        v102 = v139;
      }

      *(v102 + 16) = v108 + 1;
      v109 = v102 + 32 * v108;
      *(v109 + 40) = 0;
      *(v109 + 48) = 0;
      ++v101;
      *(v109 + 32) = v106;
      *(v109 + 56) = 1;
    }

    while (v100 != v101);

    v95 = v129;
LABEL_56:
    v110 = v149[1];
    v111 = v149[2];
    v112 = v150;
    v113 = v151;

    v114 = sub_21D602690(v110, v111, v112, v113);
    (*(v132 + 96))(v130, v102, v95, v114);

    __swift_destroy_boxed_opaque_existential_0(v140);
    __swift_destroy_boxed_opaque_existential_0(v152);
    return v123;
  }

  return result;
}

void sub_21D8C37AC(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a2[3];
  v7 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v6);
  v8 = (*(v7 + 8))(v6, v7);
  sub_21D8C3E08(v4, v5, v8, &selRef_objectIdentifier);
  v10 = v9;

  *a3 = v10;
}

uint64_t sub_21D8C384C(uint64_t a1)
{
  sub_21D8BF610(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61630, &qword_21DC0B3A0);
  sub_21D0D0F1C(&qword_280D178D0, qword_27CE61630, &qword_21DC0B3A0, MEMORY[0x277D83958]);
  v2 = sub_21DBFA07C();
  v4 = v3;

  if ((a1 & 0xC000000000000001) == 0)
  {
    if (*(a1 + 16) == 1)
    {
      return v2;
    }

    goto LABEL_3;
  }

  if (sub_21DBFBD7C() != 1)
  {
LABEL_3:
    MEMORY[0x223D42AA0](v2, v4);

    MEMORY[0x223D42AA0](93, 0xE100000000000000);
    return 91;
  }

  return v2;
}

uint64_t sub_21D8C3974(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_21DBFBD7C();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2)
  {
    v18 = MEMORY[0x277D84F90];
    result = sub_21D18E678(0, v2 & ~(v2 >> 63), 0);
    if (v2 < 0)
    {
      __break(1u);
      return result;
    }

    v4 = 0;
    v5 = v18;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x223D44740](v4, a1);
      }

      else
      {
        v6 = *(a1 + 8 * v4 + 32);
      }

      v7 = v6;
      v8 = [v6 objectIdentifier];
      v9 = sub_21DBFA16C();
      v11 = v10;

      v18 = v5;
      v13 = *(v5 + 16);
      v12 = *(v5 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_21D18E678((v12 > 1), v13 + 1, 1);
      }

      ++v4;
      *(v5 + 16) = v13 + 1;
      v14 = v5 + 16 * v13;
      *(v14 + 32) = v9;
      *(v14 + 40) = v11;
    }

    while (v2 != v4);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61630, &qword_21DC0B3A0);
  sub_21D0D0F1C(&qword_280D178D0, qword_27CE61630, &qword_21DC0B3A0, MEMORY[0x277D83958]);
  v15 = sub_21DBFA07C();
  v17 = v16;

  if (v2 != 1)
  {
    MEMORY[0x223D42AA0](v15, v17);

    MEMORY[0x223D42AA0](93, 0xE100000000000000);
    return 91;
  }

  return v15;
}

void sub_21D8C3B78(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  v8 = *a1;
  v18 = a1[1];
  v9 = a1[4];
  v10 = a1[5];
  v11 = a4[3];
  v12 = a4[4];
  __swift_project_boxed_opaque_existential_1(a4, v11);
  v13 = (*(v12 + 8))(v11, v12);
  sub_21D8C3E08(v9, v10, v13, &selRef_name);
  v15 = v14;

  if (!v15)
  {
    swift_beginAccess();
    v16 = *(a2 + 48);
    sub_21DBF8E0C();
    sub_21D8C3E08(v9, v10, v16, &selRef_name);
    v15 = v17;

    if (!v15)
    {
      v15 = sub_21D8C3C9C(a3);
    }
  }

  *a5 = v15;
  a5[1] = v8;
  a5[2] = v18;
}

id sub_21D8C3C9C(void *a1)
{
  v2 = [objc_opt_self() newObjectID];
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = (*(v4 + 16))(v3, v4);
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  v8 = (*(v7 + 8))(v6, v7);
  v9 = objc_allocWithZone(MEMORY[0x277D44648]);
  v10 = sub_21DBFA12C();
  v11 = [v9 initWithObjectID:v2 accountID:v5 reminderID:v8 type:1 name:v10];

  swift_beginAccess();
  v12 = v11;
  sub_21D29BA34(&v14, v12);
  swift_endAccess();

  return v12;
}

void sub_21D8C3E08(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v26 = a3;
  if ((a3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_21DBFBD1C();
    sub_21D0D8CF0(0, &qword_280D0C348, 0x277D44648);
    sub_21D0D65DC(&qword_280D0C340, &qword_280D0C348, 0x277D44648, MEMORY[0x277D85378]);
    sub_21DBFAB5C();
    v4 = v29;
    v26 = v28;
    v5 = v30;
    v6 = v31;
    v7 = v32;
  }

  else
  {
    v8 = -1 << *(a3 + 32);
    v4 = a3 + 56;
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

    v7 = v10 & *(a3 + 56);
    sub_21DBF8E0C();
    v6 = 0;
  }

  v11 = (v5 + 64) >> 6;
  while (v26 < 0)
  {
    if (!sub_21DBFBDBC())
    {
      goto LABEL_24;
    }

    sub_21D0D8CF0(0, &qword_280D0C348, 0x277D44648);
    swift_dynamicCast();
    v16 = v27;
    v14 = v6;
    v15 = v7;
    if (!v27)
    {
      goto LABEL_24;
    }

LABEL_18:
    if ([v16 type] == 1)
    {
      v17 = [v16 *a4];
      v18 = sub_21DBFA16C();
      v20 = v19;

      if (v18 == a1 && v20 == a2)
      {

LABEL_24:
        sub_21D0CFAF8(v26);
        return;
      }

      v22 = sub_21DBFC64C();

      if (v22)
      {
        goto LABEL_24;
      }
    }

    v6 = v14;
    v7 = v15;
  }

  v12 = v6;
  v13 = v7;
  v14 = v6;
  if (v7)
  {
LABEL_14:
    v15 = (v13 - 1) & v13;
    v16 = *(*(v26 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));
    if (!v16)
    {
      goto LABEL_24;
    }

    goto LABEL_18;
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
      goto LABEL_24;
    }

    v13 = *(v4 + 8 * v14);
    ++v12;
    if (v13)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

uint64_t TTRReminderCellInlineHashtagEditingPresenter.deinit()
{
  swift_unknownObjectRelease();

  v1 = OBJC_IVAR____TtC15RemindersUICore44TTRReminderCellInlineHashtagEditingPresenter_fetchedHashtagLabels;
  v2 = sub_21DBF78CC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t TTRReminderCellInlineHashtagEditingPresenter.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  v1 = OBJC_IVAR____TtC15RemindersUICore44TTRReminderCellInlineHashtagEditingPresenter_fetchedHashtagLabels;
  v2 = sub_21DBF78CC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void sub_21D8C4240(id a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 16);
  if (v4)
  {
    v5 = (a2 + 56);
    do
    {
      v6 = *(v5 - 3);
      v7 = *(v5 - 2);
      v8 = *v5;
      sub_21DBF8E0C();
      v9 = sub_21DBFA12C();
      [a1 replaceCharactersInRange:v6 withString:{v7, v9}];

      if (qword_280D177B8 != -1)
      {
        swift_once();
      }

      v10 = qword_280D177C0;
      if ((v8 & 0x1000000000000000) != 0)
      {
        v11 = sub_21DBFA35C();
      }

      else
      {
        v11 = sub_21DBFA36C();
      }

      v12 = v11;

      [a1 removeAttribute:v10 range:{v6, v12}];
      v5 += 4;
      --v4;
    }

    while (v4);
  }

  v13 = *(a3 + 16);
  if (v13)
  {
    [a1 beginEditing];
    v14 = [a1 string];
    v15 = sub_21DBFA16C();
    v17 = v16;

    v18 = MEMORY[0x223D42B30](v15, v17);

    v19 = *MEMORY[0x277D740E8];
    for (i = (a3 + 48); ; i += 3)
    {
      v25 = *(i - 1);
      v26 = v25 + *i;
      if (__OFADD__(v25, *i))
      {
        __break(1u);
LABEL_33:
        __break(1u);
        return;
      }

      v27 = *(i - 2);
      v22 = v26 >= v18 ? v18 : v25 + *i;
      if ((v25 & 0x8000000000000000) == 0 && v25 < v18)
      {
        break;
      }

      if (v25 <= 0 && v26 > 0)
      {
        v25 = 0;
LABEL_13:
        v23 = qword_280D177B8;
        swift_unknownObjectRetain();
        if (v23 != -1)
        {
          swift_once();
        }

        [a1 removeAttribute:qword_280D177C0 range:{v25, v22}];
        [a1 removeAttribute:v19 range:{v25, v22}];
        v24 = [objc_opt_self() attributeFromHashtag_];
        [a1 rem:v24 addHashtag:v25 range:v22];
        swift_unknownObjectRelease();
      }

      if (!--v13)
      {

        [a1 endEditing];
        return;
      }
    }

    v21 = __OFSUB__(v22, v25);
    v22 -= v25;
    if (v21)
    {
      goto LABEL_33;
    }

    goto LABEL_13;
  }
}

double TTRReminderCellInlineHashtagNoOpEditingPresenter.request(handleEditingTextChange:detail:hasMarkedText:editingSession:)@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 64) = 0;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

double TTRReminderCellInlineHashtagNoOpEditingPresenter.request(applySuggestion:currentText:editingSession:)@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

double TTRReminderCellInlineHashtagNoOpEditingPresenter.requestConvertTextToHashtag(in:currentText:editingSession:)@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

double sub_21D8C45B8@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 64) = 0;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

unint64_t *sub_21D8C45D0(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_21DBF8E0C();
    sub_21D8C4ED8(v7, a2, a3, a4);
    v9 = v8;
    swift_bridgeObjectRelease_n();

    return v9;
  }

  return result;
}

id sub_21D8C466C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v8 = sub_21DBFA23C();
  v9 = v3;
  sub_21DBF8E0C();
  MEMORY[0x223D42AA0](v1, v2);

  v4 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v5 = sub_21DBFA12C();

  v6 = [v4 initWithString_];

  return v6;
}

void *sub_21D8C4724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_allocObject();

  return sub_21D8C4788(a1, v7, v8, a3, a4);
}

void *sub_21D8C4788(uint64_t a1, void *a2, __n128 a3, uint64_t a4, uint64_t a5)
{
  v8 = MEMORY[0x277D84FA0];
  a2[5] = MEMORY[0x277D84FA0];
  a2[6] = v8;
  a2[7] = 0;
  sub_21DBF78BC();
  a2[2] = a1;
  a2[3] = a5;
  type metadata accessor for TTRInlineHashtagEditProcessor();
  v9 = swift_allocObject();
  type metadata accessor for TTRReminderTextChangeDetailAdjuster();
  *(v9 + 16) = swift_allocObject();
  *(v9 + 24) = 75;
  a2[4] = v9;
  return a2;
}

double sub_21D8C4844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a4)
  {
    sub_21DBF8E0C();

    sub_21DBF8E0C();
  }

  return result;
}

uint64_t sub_21D8C4888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_21DBF78CC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC15RemindersUICore44TTRReminderCellInlineHashtagEditingPresenter_fetchedHashtagLabels;
  swift_beginAccess();
  (*(v10 + 16))(v12, v4 + v13, v9);
  sub_21DBF8E0C();
  v14 = sub_21DBF77FC();
  (*(v10 + 8))(v12, v9);
  v15 = *(v14 + 16);
  if (v15)
  {
    v60 = a3;
    v61 = a4;
    *&v62 = MEMORY[0x277D84F90];
    sub_21D18ED50(0, v15, 0);
    v16 = v62;
    v59 = v14;
    v17 = (v14 + 40);
    do
    {
      v18 = *(v17 - 1);
      v19 = *v17;
      *&v62 = v16;
      v21 = *(v16 + 2);
      v20 = *(v16 + 3);
      sub_21DBF8E0C();
      if (v21 >= v20 >> 1)
      {
        sub_21D18ED50((v20 > 1), v21 + 1, 1);
        v16 = v62;
      }

      *(v16 + 2) = v21 + 1;
      v22 = &v16[32 * v21];
      *(v22 + 4) = v18;
      *(v22 + 5) = v19;
      *(v22 + 6) = a1;
      *(v22 + 7) = a2;
      v17 += 2;
      --v15;
    }

    while (v15);

    a3 = v60;
    a4 = v61;
    if (*(v16 + 2))
    {
      goto LABEL_17;
    }
  }

  else
  {

    v16 = MEMORY[0x277D84F90];
    if (*(MEMORY[0x277D84F90] + 16))
    {
      goto LABEL_17;
    }
  }

  type metadata accessor for TTRHashtagEditingPresenterCapability();
  v23 = MEMORY[0x223D42B30](a3, a4);
  static TTRHashtagEditingPresenterCapability.hashtagTextAttributes(of:in:)(a3, a4, 0, v23, &v62);
  if (v62 != 2 && (v62 & 0x100) == 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v16 = sub_21D211EAC(0, *(v16 + 2) + 1, 1, v16);
    }

    v25 = *(v16 + 2);
    v24 = *(v16 + 3);
    if (v25 >= v24 >> 1)
    {
      v16 = sub_21D211EAC((v24 > 1), v25 + 1, 1, v16);
    }

    *(v16 + 2) = v25 + 1;
    v26 = &v16[32 * v25];
    *(v26 + 4) = a3;
    *(v26 + 5) = a4;
    *(v26 + 6) = a1;
    *(v26 + 7) = a2;
    v27 = *(v16 + 2);
    if (!v27)
    {
      goto LABEL_16;
    }

    goto LABEL_18;
  }

LABEL_17:

  v27 = *(v16 + 2);
  if (!v27)
  {
LABEL_16:

    return MEMORY[0x277D84F90];
  }

LABEL_18:
  v63 = MEMORY[0x277D84F90];
  sub_21D18EAE4(0, v27, 0);
  v28 = v63;
  v53[1] = v16;
  v29 = v16 + 56;
  do
  {
    v59 = v29;
    v60 = v28;
    v61 = v27;
    v30 = *(v29 - 3);
    v31 = *(v29 - 2);
    v33 = *(v29 - 1);
    v32 = *v29;
    v34 = swift_allocObject();
    v34[2] = v30;
    v34[3] = v31;
    v34[4] = v33;
    v34[5] = v32;
    v58 = v34;
    v35 = swift_allocObject();
    v35[2] = v30;
    v35[3] = v31;
    v35[4] = v33;
    v35[5] = v32;
    v57 = v35;
    v36 = swift_allocObject();
    v36[2] = v30;
    v36[3] = v31;
    v36[4] = v33;
    v36[5] = v32;
    v56 = v36;
    v37 = swift_allocObject();
    v37[2] = v30;
    v37[3] = v31;
    v37[4] = v33;
    v37[5] = v32;
    v55 = v37;
    v38 = swift_allocObject();
    v38[2] = v30;
    v38[3] = v31;
    v38[4] = v33;
    v38[5] = v32;
    v54 = v38;
    v39 = swift_allocObject();
    v39[2] = v30;
    v39[3] = v31;
    v39[4] = v33;
    v39[5] = v32;
    v40 = swift_allocObject();
    v40[2] = v30;
    v40[3] = v31;
    v40[4] = v33;
    v40[5] = v32;
    v41 = swift_allocObject();
    v41[2] = v30;
    v41[3] = v31;
    v41[4] = v33;
    v41[5] = v32;
    v42 = swift_allocObject();
    v42[2] = v30;
    v42[3] = v31;
    v42[4] = v33;
    v42[5] = v32;
    v43 = swift_allocObject();
    v43[2] = v30;
    v43[3] = v31;
    v43[4] = v33;
    v43[5] = v32;
    v44 = swift_allocObject();
    v44[2] = v30;
    v44[3] = v31;
    v44[4] = v33;
    v44[5] = v32;
    v28 = v60;
    v63 = v60;
    v46 = *(v60 + 16);
    v45 = *(v60 + 24);
    swift_bridgeObjectRetain_n();
    if (v46 >= v45 >> 1)
    {
      sub_21D18EAE4((v45 > 1), v46 + 1, 1);
      v28 = v63;
    }

    v47 = v58;
    v48 = v59 + 4;
    *(v28 + 16) = v46 + 1;
    v49 = v28 + 192 * v46;
    *(v49 + 32) = v47;
    *(v49 + 40) = v62;
    *(v49 + 56) = &type metadata for TTRReminderCellHashtagSuggestion;
    *(v49 + 64) = sub_21D35C710;
    v50 = v56;
    *(v49 + 72) = v57;
    *(v49 + 80) = sub_21D24BDBC;
    *(v49 + 88) = v50;
    *(v49 + 96) = sub_21D35C7C4;
    v51 = v54;
    *(v49 + 104) = v55;
    *(v49 + 112) = sub_21D35C7CC;
    *(v49 + 120) = v51;
    *(v49 + 128) = sub_21D3178BC;
    *(v49 + 136) = v39;
    *(v49 + 144) = sub_21D317880;
    *(v49 + 152) = v40;
    *(v49 + 160) = sub_21D111F98;
    *(v49 + 168) = v41;
    *(v49 + 176) = sub_21D8C5E58;
    *(v49 + 184) = v42;
    *(v49 + 192) = sub_21D8C5E70;
    *(v49 + 200) = v43;
    *(v49 + 208) = sub_21D8C5E58;
    *(v49 + 216) = v44;
    v27 = v61 - 1;
    v29 = v48;
  }

  while (v61 != 1);

  return v28;
}

void sub_21D8C4ED8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = a2;
  v28 = 0;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  v32 = a4 + 56;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v31 = (v9 - 1) & v9;
LABEL_13:
    v29 = v11 | (v5 << 6);
    v14 = *(*(a3 + 48) + 8 * v29);
    v15 = [v14 objectIdentifier];
    v16 = sub_21DBFA16C();
    v18 = v17;

    if (*(a4 + 16) && (sub_21DBFC7DC(), sub_21DBFA27C(), v19 = sub_21DBFC82C(), v20 = -1 << *(a4 + 32), v21 = v19 & ~v20, ((*(v32 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) != 0))
    {
      v22 = ~v20;
      while (1)
      {
        v23 = (*(a4 + 48) + 16 * v21);
        v24 = *v23 == v16 && v23[1] == v18;
        if (v24 || (sub_21DBFC64C() & 1) != 0)
        {
          break;
        }

        v21 = (v21 + 1) & v22;
        if (((*(v32 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      *(a1 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
      v25 = __OFADD__(v28++, 1);
      v9 = v31;
      if (v25)
      {
        __break(1u);
LABEL_26:

        sub_21D7BFC3C(a1, v26, v28, a3);
        return;
      }
    }

    else
    {
LABEL_5:

      v9 = v31;
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_26;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v31 = (v13 - 1) & v13;
      goto LABEL_13;
    }
  }

  __break(1u);
}

unint64_t *sub_21D8C5124(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = a1;
  v43 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = ((1 << v6) + 63) >> 6;
  v9 = 8 * v8;
  v10 = sub_21DBF8E0C();
  if (v7 > 0xD)
  {
    goto LABEL_30;
  }

  while (1)
  {
    v35[1] = v3;
    v35[2] = v35;
    v36 = v8;
    MEMORY[0x28223BE20](v10);
    v37 = v35 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v37, v9);
    v38 = 0;
    v39 = v5;
    v11 = 0;
    v8 = v5 + 56;
    v12 = 1 << *(v5 + 32);
    v13 = v12 < 64 ? ~(-1 << v12) : -1;
    v14 = v13 & *(v5 + 56);
    v15 = (v12 + 63) >> 6;
    v42 = a2 + 56;
    while (v14)
    {
      v16 = __clz(__rbit64(v14));
      v41 = (v14 - 1) & v14;
LABEL_14:
      v19 = v16 | (v11 << 6);
      v20 = *(v5 + 48);
      v40 = v19;
      v21 = *(v20 + 8 * v19);
      v9 = [v21 objectIdentifier];
      v3 = sub_21DBFA16C();
      v23 = v22;

      v24 = a2;
      if (*(a2 + 16) && (sub_21DBFC7DC(), sub_21DBFA27C(), v25 = sub_21DBFC82C(), v26 = -1 << *(a2 + 32), v9 = v25 & ~v26, ((*(v42 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
      {
        v27 = ~v26;
        while (1)
        {
          v28 = (*(v24 + 48) + 16 * v9);
          v29 = *v28 == v3 && v28[1] == v23;
          if (v29 || (sub_21DBFC64C() & 1) != 0)
          {
            break;
          }

          v9 = (v9 + 1) & v27;
          if (((*(v42 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
          {
            goto LABEL_6;
          }
        }

        *&v37[(v40 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v40;
        v30 = __OFADD__(v38++, 1);
        a2 = v24;
        v5 = v39;
        v14 = v41;
        if (v30)
        {
          __break(1u);
LABEL_27:
          v31 = sub_21D7BFC3C(v37, v36, v38, v5);

          return v31;
        }
      }

      else
      {
LABEL_6:

        a2 = v24;
        v5 = v39;
        v14 = v41;
      }
    }

    v17 = v11;
    while (1)
    {
      v11 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v11 >= v15)
      {
        goto LABEL_27;
      }

      v18 = *(v8 + 8 * v11);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v41 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_30:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v33 = swift_slowAlloc();
  sub_21DBF8E0C();
  v34 = sub_21D8C45D0(v33, v8, v5, a2);

  MEMORY[0x223D46520](v33, -1, -1);

  return v34;
}

uint64_t sub_21D8C54C4(uint64_t a1, uint64_t a2)
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    return sub_21D8C5124(a1, a2);
  }

  v3 = MEMORY[0x277D84FA0];
  v27 = MEMORY[0x277D84FA0];
  sub_21DBF8E0C();
  sub_21DBFBD1C();
  if (sub_21DBFBDBC())
  {
    sub_21D0D8CF0(0, &qword_280D0C348, 0x277D44648);
    v4 = a2 + 56;
    do
    {
      swift_dynamicCast();
      v5 = [v26 objectIdentifier];
      v6 = sub_21DBFA16C();
      v8 = v7;

      if (*(a2 + 16) && (sub_21DBFC7DC(), sub_21DBFA27C(), v9 = sub_21DBFC82C(), v10 = -1 << *(a2 + 32), v11 = v9 & ~v10, ((*(v4 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0))
      {
        v12 = ~v10;
        while (1)
        {
          v13 = (*(a2 + 48) + 16 * v11);
          v14 = *v13 == v6 && v13[1] == v8;
          if (v14 || (sub_21DBFC64C() & 1) != 0)
          {
            break;
          }

          v11 = (v11 + 1) & v12;
          if (((*(v4 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
          {
            goto LABEL_4;
          }
        }

        v15 = *(v3 + 16);
        if (*(v3 + 24) <= v15)
        {
          sub_21D8AD2CC(v15 + 1);
        }

        v3 = v27;
        result = sub_21DBFB62C();
        v17 = v27 + 56;
        v18 = -1 << *(v27 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v27 + 56 + 8 * (v19 >> 6))) != 0)
        {
          v21 = __clz(__rbit64((-1 << v19) & ~*(v27 + 56 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v22 = 0;
          v23 = (63 - v18) >> 6;
          do
          {
            if (++v20 == v23 && (v22 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v24 = v20 == v23;
            if (v20 == v23)
            {
              v20 = 0;
            }

            v22 |= v24;
            v25 = *(v17 + 8 * v20);
          }

          while (v25 == -1);
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
        }

        *(v17 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        *(*(v27 + 48) + 8 * v21) = v26;
        ++*(v27 + 16);
      }

      else
      {
LABEL_4:
      }
    }

    while (sub_21DBFBDBC());
  }

  return v3;
}

void destroy for TTRReminderCellInlineHashtagEditProcessingOutput(uint64_t a1)
{

  if (*(a1 + 40))
  {
  }

  v2 = *(a1 + 64);
}

void *initializeWithCopy for TTRReminderCellInlineHashtagEditProcessingOutput(void *a1, void *a2)
{
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;
  v5 = a2[3];
  a1[2] = a2[2];
  a1[3] = v5;
  v6 = a2[5];
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  if (v6)
  {
    a1[4] = a2[4];
    a1[5] = v6;
    v7 = a2[7];
    a1[6] = a2[6];
    a1[7] = v7;
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
  }

  else
  {
    v8 = *(a2 + 3);
    *(a1 + 2) = *(a2 + 2);
    *(a1 + 3) = v8;
  }

  v9 = a2[8];
  a1[8] = v9;
  v10 = v9;
  return a1;
}

void *assignWithCopy for TTRReminderCellInlineHashtagEditProcessingOutput(void *a1, void *a2)
{
  *a1 = *a2;
  sub_21DBF8E0C();

  a1[1] = a2[1];
  sub_21DBF8E0C();

  a1[2] = a2[2];
  a1[3] = a2[3];
  sub_21DBF8E0C();

  v4 = a2[5];
  if (a1[5])
  {
    if (v4)
    {
      a1[4] = a2[4];
      a1[5] = a2[5];
      sub_21DBF8E0C();

      a1[6] = a2[6];
      sub_21DBF8E0C();

      a1[7] = a2[7];
      sub_21DBF8E0C();
    }

    else
    {
      sub_21D0CF7E0((a1 + 4), &qword_27CE5A640, &qword_21DC0FE00);
      v5 = *(a2 + 3);
      *(a1 + 2) = *(a2 + 2);
      *(a1 + 3) = v5;
    }
  }

  else if (v4)
  {
    a1[4] = a2[4];
    a1[5] = a2[5];
    a1[6] = a2[6];
    a1[7] = a2[7];
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
  }

  else
  {
    v6 = *(a2 + 3);
    *(a1 + 2) = *(a2 + 2);
    *(a1 + 3) = v6;
  }

  v7 = a2[8];
  v8 = a1[8];
  a1[8] = v7;
  v9 = v7;

  return a1;
}

uint64_t assignWithTake for TTRReminderCellInlineHashtagEditProcessingOutput(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  v4 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v4;

  if (!*(a1 + 40))
  {
    goto LABEL_5;
  }

  v5 = *(a2 + 40);
  if (!v5)
  {
    sub_21D0CF7E0(a1 + 32, &qword_27CE5A640, &qword_21DC0FE00);
LABEL_5:
    v6 = *(a2 + 48);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = v6;
    goto LABEL_6;
  }

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v5;

  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);

LABEL_6:
  v7 = *(a1 + 64);
  *(a1 + 64) = *(a2 + 64);

  return a1;
}

uint64_t *initializeWithCopy for TTRReminderCellInlineHashtagSuggestionApplicationResult(uint64_t *a1, uint64_t *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;
  v5 = a2[4];
  a1[4] = v5;
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  v6 = v5;
  return a1;
}

uint64_t *assignWithCopy for TTRReminderCellInlineHashtagSuggestionApplicationResult(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;
  sub_21DBF8E0C();

  a1[1] = a2[1];
  sub_21DBF8E0C();

  a1[2] = a2[2];
  a1[3] = a2[3];
  sub_21DBF8E0C();

  v4 = a2[4];
  v5 = a1[4];
  a1[4] = v4;
  v6 = v4;

  return a1;
}

uint64_t assignWithTake for TTRReminderCellInlineHashtagSuggestionApplicationResult(uint64_t a1, uint64_t a2)
{

  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);

  v4 = *(a1 + 32);
  *(a1 + 24) = *(a2 + 24);

  return a1;
}

uint64_t type metadata accessor for TTRReminderCellInlineHashtagEditingPresenter(uint64_t a1)
{
  result = qword_280D0E1C0;
  if (!qword_280D0E1C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21D8C5D18(uint64_t a1)
{
  result = sub_21DBF78CC();
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

uint64_t sub_21D8C5E9C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21D8C5F34()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE636B0);
  v1 = __swift_project_value_buffer(v0, qword_27CE636B0);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_21D8C604C(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC15RemindersUICore37TTRShowSiriFoundInAppsDataModelSource_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_21D8C60B8(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC15RemindersUICore37TTRShowSiriFoundInAppsDataModelSource_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_21D1820A0;
}

uint64_t TTRShowSiriFoundInAppsDataModelSource.__allocating_init(store:sortingStyle:canChangeSortingStyle:)(void *a1, uint64_t a2, char a3)
{
  v6 = swift_allocObject();
  *(v6 + OBJC_IVAR____TtC15RemindersUICore37TTRShowSiriFoundInAppsDataModelSource_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v6 + OBJC_IVAR____TtC15RemindersUICore37TTRShowSiriFoundInAppsDataModelSource_dataViewMonitor) = 0;
  *(v6 + OBJC_IVAR____TtC15RemindersUICore37TTRShowSiriFoundInAppsDataModelSource_store) = a1;
  v7 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_sortingStyle;
  v8 = sub_21DBF70DC();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v6 + v7, a2, v8);
  *(v6 + OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_reminderFetchManager) = 0;
  *(v6 + 16) = a3;
  v10 = a1;

  sub_21D8C62E0();

  (*(v9 + 8))(a2, v8);

  return v6;
}

uint64_t TTRShowSiriFoundInAppsDataModelSource.init(store:sortingStyle:canChangeSortingStyle:)(void *a1, uint64_t a2, char a3)
{
  v4 = sub_21D8C8D18(a1, a2, a3);

  return v4;
}

uint64_t sub_21D8C62E0()
{
  v1 = v0;
  v2 = sub_21DBFB11C();
  v93 = *(v2 - 8);
  v94 = v2;
  MEMORY[0x28223BE20](v2);
  v92 = &v81 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_21DBFB0BC();
  MEMORY[0x28223BE20](v90);
  v91 = &v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21DBF9D5C();
  MEMORY[0x28223BE20](v5 - 8);
  v89 = &v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C2B0, qword_21DC20CC0);
  MEMORY[0x28223BE20](v7 - 8);
  v87 = &v81 - v8;
  v97 = sub_21DBF70DC();
  v9 = *(v97 - 1);
  MEMORY[0x28223BE20](v97);
  v11 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D378, &qword_21DC19530);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v81 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C2A0, &unk_21DC15DC0);
  v86 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v88 = &v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v81 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v81 - v21;
  MEMORY[0x28223BE20](v23);
  v99 = &v81 - v24;
  v95 = OBJC_IVAR____TtC15RemindersUICore37TTRShowSiriFoundInAppsDataModelSource_dataViewMonitor;
  v25 = v0;
  if (*(v0 + OBJC_IVAR____TtC15RemindersUICore37TTRShowSiriFoundInAppsDataModelSource_dataViewMonitor))
  {
    v26 = v0 + OBJC_IVAR____TtC15RemindersUICore37TTRShowSiriFoundInAppsDataModelSource_delegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v27 = *(v26 + 8);
      ObjectType = swift_getObjectType();
      v101[0] = 10;
      (*(*(v27 + 8) + 16))(v101, ObjectType);
      swift_unknownObjectRelease();
    }

    v1 = v0;
    if (*(v0 + v95))
    {

      sub_21D737EF8();
    }
  }

  v29 = *(v15 + 48);
  v30 = sub_21DBF72DC();
  (*(*(v30 - 8) + 56))(v14, 1, 1, v30);
  v31 = v99;
  MEMORY[0x223D3FED0](MEMORY[0x277D84F90], v14, 2, MEMORY[0x277D84F90], MEMORY[0x277D84F90]);
  *(v31 + v29) = 0;
  v32 = v1 + OBJC_IVAR____TtC15RemindersUICore37TTRShowSiriFoundInAppsDataModelSource_delegate;
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong() || (v33 = *(v32 + 8), v34 = swift_getObjectType(), v35 = (*(*(v33 + 8) + 8))(v34), v37 = v36, swift_unknownObjectRelease(), (v37 & 1) != 0))
  {
    v35 = 30;
  }

  v38 = *(v25 + OBJC_IVAR____TtC15RemindersUICore37TTRShowSiriFoundInAppsDataModelSource_store);
  v39 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_sortingStyle;
  v85 = v25;
  swift_beginAccess();
  v40 = v97;
  (*(v9 + 16))(v11, v25 + v39, v97);
  type metadata accessor for TTRShowSiriFoundInAppsMonitorableDataView(0);
  v41 = swift_allocObject();
  *(v41 + 16) = v38;
  (*(v9 + 32))(v41 + OBJC_IVAR____TtC15RemindersUICore41TTRShowSiriFoundInAppsMonitorableDataView_sortingStyle, v11, v40);
  *(v41 + OBJC_IVAR____TtC15RemindersUICore41TTRShowSiriFoundInAppsMonitorableDataView_remindersToPrefetchCount) = v35;
  v98 = v41;
  sub_21D0D3954(v99, v22, &qword_27CE5C2A0, &unk_21DC15DC0);
  v42 = *(v15 + 48);
  v43 = *&v22[v42];
  v44 = sub_21DBF773C();
  (*(*(v44 - 8) + 32))(v19, v22, v44);
  *&v19[v42] = v43;
  v83 = sub_21D0D8CF0(0, &qword_280D1B900, 0x277D85C78);
  v45 = v38;

  v46 = sub_21DBFB12C();
  sub_21DBF60DC();
  v84 = sub_21DBF60BC();
  v47 = sub_21DBF60AC();
  v81 = v47;
  v97 = *MEMORY[0x277D76648];
  v96 = *MEMORY[0x277D76768];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63708, &unk_21DC2FEE0);
  v48 = swift_allocObject();
  v49 = *(*v48 + 104);
  v50 = *(v86 + 56);
  v50(v48 + v49, 1, 1, v15);
  v51 = (v48 + *(*v48 + 136));
  *v51 = 0;
  v51[1] = 0;
  *(v48 + *(*v48 + 112)) = v46;
  v52 = v46;
  *(v48 + *(*v48 + 120)) = v47;
  sub_21D0D3954(v19, v48 + *(*v48 + 96), &qword_27CE5C2A0, &unk_21DC15DC0);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C298, &qword_21DC196B0);
  swift_storeEnumTagMultiPayload();
  v53 = v87;
  sub_21D0D3954(v19, v87, &qword_27CE5C2A0, &unk_21DC15DC0);
  v50(v53, 0, 1, v15);
  swift_beginAccess();
  v54 = v97;
  v55 = v96;
  v82 = v52;
  v81 = v81;
  sub_21D8C92F0(v53, v48 + v49);
  swift_endAccess();
  sub_21DBF9D4C();
  v100 = MEMORY[0x277D84F90];
  sub_21D66282C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60F00, &unk_21DC0D9A0);
  sub_21D0D9418(&qword_280D178C0, &unk_27CE60F00, &unk_21DC0D9A0);
  sub_21DBFBCBC();
  (*(v93 + 104))(v92, *MEMORY[0x277D85260], v94);
  v56 = sub_21DBFB14C();
  v57 = v88;
  sub_21D0D3954(v19, v88, &qword_27CE5C2A0, &unk_21DC15DC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63710, &unk_21DC2FEF0);
  v58 = swift_allocObject();
  *(v58 + 72) = 0u;
  *(v58 + 88) = 0u;
  *(v58 + 104) = 0;
  *(v58 + 108) = -1;
  *(v58 + 120) = 0;
  *(v58 + 128) = 1;
  v59 = *(*v58 + 216);
  v60 = swift_slowAlloc();
  *(v58 + v59) = v60;
  *(v58 + *(*v58 + 224)) = 0;
  v61 = v84;
  *(v58 + 16) = v56;
  *(v58 + 24) = v61;
  v62 = v98;
  *(v58 + 32) = v81;
  *(v58 + 40) = v62;
  sub_21D0D3954(v57, v58 + *(*v58 + 208), &qword_27CE5C2A0, &unk_21DC15DC0);
  swift_storeEnumTagMultiPayload();
  *v60 = 0;

  sub_21D0CF7E0(v57, &qword_27CE5C2A0, &unk_21DC15DC0);
  sub_21D0CF7E0(v19, &qword_27CE5C2A0, &unk_21DC15DC0);
  v63 = v96;
  *(v58 + 48) = v97;
  *(v58 + 56) = v63;
  *(v58 + 64) = 1;
  *(v48 + *(*v48 + 128)) = v58;
  v64 = swift_allocObject();
  swift_weakInit();
  v65 = swift_allocObject();
  v66 = v85;
  swift_weakInit();
  v67 = swift_allocObject();
  *(v67 + 16) = v64;
  *(v67 + 24) = v65;
  v68 = *(v58 + 72);
  v69 = *(v58 + 80);
  *(v58 + 72) = sub_21D8C9360;
  *(v58 + 80) = v67;

  sub_21D0D0E88(v68, v69);

  v70 = *(v48 + *(*v48 + 128));
  v71 = swift_allocObject();
  swift_weakInit();
  v72 = *(v70 + 88);
  v73 = *(v70 + 96);
  *(v70 + 88) = sub_21D8C9368;
  *(v70 + 96) = v71;

  sub_21D0D0E88(v72, v73);

  v74 = swift_allocObject();
  swift_weakInit();
  v75 = swift_allocObject();
  swift_weakInit();
  v76 = swift_allocObject();
  *(v76 + 16) = v74;
  *(v76 + 24) = v75;
  v77 = (v48 + *(*v48 + 136));
  v78 = *v77;
  v79 = v77[1];
  *v77 = sub_21D8C9370;
  v77[1] = v76;

  sub_21D0D0E88(v78, v79);

  *(v66 + v95) = v48;

  sub_21D4013A4(1);

  return sub_21D0CF7E0(v99, &qword_27CE5C2A0, &unk_21DC15DC0);
}

uint64_t TTRShowSiriFoundInAppsMonitorableDataView.__allocating_init(store:sortingStyle:remindersToPrefetchCount:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  v7 = OBJC_IVAR____TtC15RemindersUICore41TTRShowSiriFoundInAppsMonitorableDataView_sortingStyle;
  v8 = sub_21DBF70DC();
  (*(*(v8 - 8) + 32))(v6 + v7, a2, v8);
  *(v6 + OBJC_IVAR____TtC15RemindersUICore41TTRShowSiriFoundInAppsMonitorableDataView_remindersToPrefetchCount) = a3;
  return v6;
}

uint64_t sub_21D8C7060()
{
  sub_21D157444(v0 + OBJC_IVAR____TtC15RemindersUICore37TTRShowSiriFoundInAppsDataModelSource_delegate);
}

uint64_t TTRShowSiriFoundInAppsDataModelSource.deinit()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_sortingStyle;
  v2 = sub_21DBF70DC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_21D157444(v0 + OBJC_IVAR____TtC15RemindersUICore37TTRShowSiriFoundInAppsDataModelSource_delegate);

  return v0;
}

uint64_t TTRShowSiriFoundInAppsDataModelSource.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_sortingStyle;
  v2 = sub_21DBF70DC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC15RemindersUICore37TTRShowSiriFoundInAppsDataModelSource_delegate;

  sub_21D157444(v0 + v3);

  return swift_deallocClassInstance();
}

uint64_t TTRShowSiriFoundInAppsDataModelSource.monitorWillFetch(_:)()
{
  v1 = v0 + OBJC_IVAR____TtC15RemindersUICore37TTRShowSiriFoundInAppsDataModelSource_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(*(v3 + 8) + 24))(ObjectType);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t TTRShowSiriFoundInAppsDataModelSource.monitor(_:didFetch:diff:transitioningFrom:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v56 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C2A0, &unk_21DC15DC0);
  MEMORY[0x28223BE20](v8);
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v54 - v12;
  v14 = sub_21DBF773C();
  v15 = *(v14 - 8);
  (*(v15 + 16))(v13, a2, v14);
  *&v13[*(v8 + 48)] = a3;
  v57 = v4;
  v16 = *(v4 + OBJC_IVAR____TtC15RemindersUICore37TTRShowSiriFoundInAppsDataModelSource_dataViewMonitor);
  if (!v16)
  {
    v26 = a3;
    return sub_21D0CF7E0(v13, &qword_27CE5C2A0, &unk_21DC15DC0);
  }

  v17 = a3;
  if (v16 != a1)
  {
    return sub_21D0CF7E0(v13, &qword_27CE5C2A0, &unk_21DC15DC0);
  }

  v18 = v17;
  v19 = sub_21DBF6E3C();
  sub_21D4F5F28(v19);
  v21 = v20;

  v55 = v13;
  if (a3)
  {
    v22 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_reminderFetchManager;
    v23 = v57;
    swift_beginAccess();
    if (*(v23 + v22))
    {
      v24 = v18;

      sub_21D4F9F64(v24, v21);

      v25 = v57;
    }

    else
    {
      v27 = *(v23 + OBJC_IVAR____TtC15RemindersUICore37TTRShowSiriFoundInAppsDataModelSource_store);
      sub_21D0D8CF0(0, &qword_280D1B900, 0x277D85C78);
      v28 = v18;
      v29 = sub_21DBFB12C();
      v30 = swift_allocObject();
      *(v30 + 16) = 0;
      v31 = sub_21D87E81C(v27, sub_21D1947D8, v30, v28, v29);
      *(v57 + v22) = v31;

      v25 = v57;

      swift_beginAccess();
      v31[3] = &protocol witness table for TTRShowSiriFoundInAppsDataModelSource;
      swift_unknownObjectWeakAssign();
    }

    v13 = v55;
  }

  else
  {

    v25 = v57;
  }

  sub_21D0D3954(v13, v10, &qword_27CE5C2A0, &unk_21DC15DC0);

  v32 = sub_21DBF716C();
  (*(v15 + 8))(v10, v14);
  if (!(v32 >> 62))
  {
    v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v33)
    {
      goto LABEL_12;
    }

LABEL_30:

LABEL_31:
    v58 = 0;
    v59 = 0xE000000000000000;
    sub_21DBFBEEC();
    v58 = *v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DAD8, &unk_21DC1A820);
    v49 = sub_21DBFA1AC();
    v51 = v50;

    v58 = v49;
    v59 = v51;
    MEMORY[0x223D42AA0](0xD000000000000021, 0x800000021DC448D0);
    v52 = sub_21DBFAEDC();
    MEMORY[0x28223BE20](v52);
    *(&v54 - 4) = v25;
    *(&v54 - 3) = v13;
    *(&v54 - 2) = v56;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE590D0, &qword_21DC0AD80);
    sub_21DBF625C();

    return sub_21D0CF7E0(v13, &qword_27CE5C2A0, &unk_21DC15DC0);
  }

  if (!sub_21DBFBD7C())
  {
    goto LABEL_30;
  }

  v33 = sub_21DBFBD7C();
  if (!v33)
  {

    v35 = MEMORY[0x277D84F90];
LABEL_21:
    v13 = v55;
    v25 = v57;
    if (*(v35 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE585A8, &qword_21DC09560);
      v43 = sub_21DBFC40C();
    }

    else
    {
      v43 = MEMORY[0x277D84F98];
    }

    v60[0] = v43;
    v44 = sub_21DBF8E0C();
    sub_21D1931C0(v44, 1, v60);

    v45 = v60[0];
    v46 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_reminderFetchManager;
    swift_beginAccess();
    if (*(v25 + v46))
    {

      sub_21D188810(v45);
      v48 = v47;

      TTRBatchFetchManager<A>.override(objects:)(v48);
    }

    else
    {
    }

    goto LABEL_31;
  }

LABEL_12:
  v60[0] = MEMORY[0x277D84F90];
  sub_21D18E6B8(0, v33 & ~(v33 >> 63), 0);
  if ((v33 & 0x8000000000000000) == 0)
  {
    v34 = 0;
    v35 = v60[0];
    do
    {
      if ((v32 & 0xC000000000000001) != 0)
      {
        v36 = MEMORY[0x223D44740](v34, v32);
      }

      else
      {
        v36 = *(v32 + 8 * v34 + 32);
      }

      v37 = v36;
      v38 = [v36 objectID];
      v60[0] = v35;
      v40 = *(v35 + 16);
      v39 = *(v35 + 24);
      if (v40 >= v39 >> 1)
      {
        v42 = v38;
        sub_21D18E6B8((v39 > 1), v40 + 1, 1);
        v38 = v42;
        v35 = v60[0];
      }

      ++v34;
      *(v35 + 16) = v40 + 1;
      v41 = v35 + 16 * v40;
      *(v41 + 32) = v38;
      *(v41 + 40) = v37;
    }

    while (v33 != v34);

    goto LABEL_21;
  }

  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_21D8C796C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, BOOL *a4@<X8>)
{
  v7 = a1 + OBJC_IVAR____TtC15RemindersUICore37TTRShowSiriFoundInAppsDataModelSource_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v9 = result;
  if (result)
  {
    v10 = *(v7 + 8);
    ObjectType = swift_getObjectType();
    (*(v10 + 16))(a2, a3, ObjectType, v10);
    result = swift_unknownObjectRelease();
  }

  *a4 = v9 == 0;
  return result;
}

uint64_t sub_21D8C7A38()
{
  v1 = v0 + OBJC_IVAR____TtC15RemindersUICore37TTRShowSiriFoundInAppsDataModelSource_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(*(v3 + 8) + 24))(ObjectType);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21D8C7AB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C2A0, &unk_21DC15DC0) + 48));

  return TTRShowSiriFoundInAppsDataModelSource.monitor(_:didFetch:diff:transitioningFrom:)(a1, a2, v6, a3);
}

Swift::Void __swiftcall TTRShowSiriFoundInAppsDataModelSource.updated(objectIDs:)(Swift::OpaquePointer objectIDs)
{
  sub_21DBFBEEC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DAD8, &unk_21DC1A820);
  sub_21DBFA1AC();

  MEMORY[0x223D42AA0](0xD000000000000013, 0x800000021DC44650);
  sub_21DBFAEDC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE590D0, &qword_21DC0AD80);
  sub_21DBF625C();
}

uint64_t sub_21D8C7C58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, BOOL *a3@<X8>)
{
  v5 = a1 + OBJC_IVAR____TtC15RemindersUICore37TTRShowSiriFoundInAppsDataModelSource_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v7 = result;
  if (result)
  {
    v8 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    (*(v8 + 24))(a2, ObjectType, v8);
    result = swift_unknownObjectRelease();
  }

  *a3 = v7 == 0;
  return result;
}

void TTRShowSiriFoundInAppsDataModelSource.update(error:)(void *a1)
{
  if (qword_27CE56E00 != -1)
  {
    swift_once();
  }

  v2 = sub_21DBF84BC();
  __swift_project_value_buffer(v2, qword_27CE636B0);
  v3 = a1;

  oslog = sub_21DBF84AC();
  v4 = sub_21DBFAEBC();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315394;
    swift_getErrorValue();
    v7 = sub_21DBFC75C();
    v9 = sub_21D0CDFB4(v7, v8, &v11);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_21D0CDFB4(0x6E756F4669726973, 0xEF737070416E4964, &v11);
    _os_log_impl(&dword_21D0C9000, oslog, v4, "TTRShowSiriFoundInAppsDataModelSource update error {error: %s, dataModelSource: %s}", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D46520](v6, -1, -1);
    MEMORY[0x223D46520](v5, -1, -1);
  }

  else
  {
  }
}

uint64_t TTRShowSiriFoundInAppsMonitorableDataView.init(store:sortingStyle:remindersToPrefetchCount:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = OBJC_IVAR____TtC15RemindersUICore41TTRShowSiriFoundInAppsMonitorableDataView_sortingStyle;
  v7 = sub_21DBF70DC();
  (*(*(v7 - 8) + 32))(v3 + v6, a2, v7);
  *(v3 + OBJC_IVAR____TtC15RemindersUICore41TTRShowSiriFoundInAppsMonitorableDataView_remindersToPrefetchCount) = a3;
  return v3;
}

char *TTRShowSiriFoundInAppsMonitorableDataView.fetchData(from:userInteractive:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v50 = a2;
  v5 = v4;
  v49 = a1;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C2A8, &unk_21DC2FD00);
  MEMORY[0x28223BE20](v46);
  v47 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v48 = &v43 - v9;
  v10 = sub_21DBF71BC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE597E0, &unk_21DC15DD0);
  v44 = *(v14 - 8);
  v45 = v14;
  MEMORY[0x28223BE20](v14);
  v52 = &v43 - v15;
  v53 = sub_21DBF734C();
  v16 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v18 = (&v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C2B0, qword_21DC20CC0);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v43 - v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C298, &qword_21DC196B0);
  sub_21DBFC83C();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C2A0, &unk_21DC15DC0);
  if ((*(*(v22 - 8) + 48))(v21, 1, v22) == 1)
  {
    sub_21D0CF7E0(v21, &qword_27CE5C2B0, qword_21DC20CC0);
    if (a4)
    {
      v23 = v5;
      v24 = *(v5 + 16);
      v25 = 0;
LABEL_6:
      v29 = MEMORY[0x277D45508];
      v30 = v16;
      goto LABEL_10;
    }

    v25 = 0;
    goto LABEL_8;
  }

  v26 = *(v22 + 48);
  v27 = a4;
  v25 = *&v21[v26];
  v28 = sub_21DBF773C();
  (*(*(v28 - 8) + 8))(v21, v28);
  if ((v27 & 1) == 0)
  {
LABEL_8:
    v23 = v5;
    v24 = [*(v5 + 16) nonUserInteractiveStore];
    goto LABEL_9;
  }

  v23 = v5;
  v24 = *(v5 + 16);
  if (!v25)
  {
    goto LABEL_6;
  }

LABEL_9:
  v30 = v16;
  v29 = MEMORY[0x277D454F8];
LABEL_10:
  v31 = v10;
  *v18 = *(v23 + OBJC_IVAR____TtC15RemindersUICore41TTRShowSiriFoundInAppsMonitorableDataView_remindersToPrefetchCount);
  v32 = v30;
  (*(v30 + 104))(v18, *v29, v53);
  (*(v11 + 104))(v13, *MEMORY[0x277D45470], v31);
  v33 = v51;
  v34 = v52;
  sub_21DBF74AC();
  v35 = v25;
  if (v33)
  {

    (*(v11 + 8))(v13, v31);
  }

  else
  {
    (*(v11 + 8))(v13, v31);
    v51 = 0;
    v37 = v45;
    v36 = v46;
    v38 = *(v46 + 48);
    v39 = v48;
    v43 = v35;
    sub_21DBF76DC();
    *(v39 + v38) = sub_21DBF76BC();
    v40 = v47;
    sub_21D0D3954(v39, v47, &qword_27CE5C2A8, &unk_21DC2FD00);
    v13 = *(v40 + *(v36 + 48));
    v41 = sub_21DBF773C();
    (*(*(v41 - 8) + 32))(v49, v40, v41);
    sub_21DBF76CC();

    sub_21D0CF7E0(v39, &qword_27CE5C2A8, &unk_21DC2FD00);
    (*(v44 + 8))(v34, v37);
  }

  (*(v32 + 8))(v18, v53);
  return v13;
}

uint64_t TTRShowSiriFoundInAppsMonitorableDataView.deinit()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore41TTRShowSiriFoundInAppsMonitorableDataView_sortingStyle;
  v2 = sub_21DBF70DC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t TTRShowSiriFoundInAppsMonitorableDataView.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore41TTRShowSiriFoundInAppsMonitorableDataView_sortingStyle;
  v2 = sub_21DBF70DC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_21D8C8660(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  result = TTRShowSiriFoundInAppsMonitorableDataView.fetchData(from:userInteractive:)(a1, a2, a3, a4);
  if (!v4)
  {
    v7 = result;
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C2A0, &unk_21DC15DC0);
    *(a1 + *(result + 48)) = v7;
  }

  return result;
}

void sub_21D8C86BC(uint64_t a1)
{
  v37 = a1;
  v2 = sub_21DBF76AC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C298, &qword_21DC196B0);
  MEMORY[0x28223BE20](v6);
  v8 = &v33 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C2B0, qword_21DC20CC0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v33 - v10;
  v39 = sub_21DBF773C();
  MEMORY[0x28223BE20](v39);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v33 - v16;
  v38 = v1;
  v18 = *(v1 + OBJC_IVAR____TtC15RemindersUICore37TTRShowSiriFoundInAppsDataModelSource_dataViewMonitor);
  if (v18)
  {
    v35 = v2;
    v36 = v15;
    v33 = v5;
    v34 = v3;
    v19 = *(*v18 + 96);
    swift_beginAccess();
    sub_21D0D3954(v18 + v19, v8, &qword_27CE5C298, &qword_21DC196B0);
    sub_21DBFC83C();
    sub_21D0CF7E0(v8, &qword_27CE5C298, &qword_21DC196B0);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C2A0, &unk_21DC15DC0);
    if ((*(*(v20 - 8) + 48))(v11, 1, v20) == 1)
    {
      sub_21D0CF7E0(v11, &qword_27CE5C2B0, qword_21DC20CC0);
    }

    else
    {

      v21 = *(v36 + 32);
      v22 = v39;
      v21(v13, v11, v39);
      v21(v17, v13, v22);
      v42[0] = v37;
      swift_getKeyPath(byte_21DC2FE90);
      swift_getKeyPath(byte_21DC2FEC0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DF80, &qword_21DC09CB0);
      sub_21D0D9418(&qword_27CE589E8, &qword_27CE5DF80, &qword_21DC09CB0);
      sub_21D183A0C();
      v23 = sub_21DBFA46C();

      v24 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_reminderFetchManager;
      v25 = v38;
      swift_beginAccess();
      if (*(v25 + v24))
      {

        TTRBatchFetchManager<A>.override(objects:)(v23);
      }

      sub_21D183AA0(v23);
      v27 = v26;

      sub_21D19ED38(v27);

      v28 = v33;
      if (MEMORY[0x277D84F90] >> 62)
      {
        if (sub_21DBFBD7C())
        {
          sub_21D1CDECC(MEMORY[0x277D84F90]);
        }

        if (sub_21DBFBD7C())
        {
          sub_21D1CDECC(MEMORY[0x277D84F90]);
        }

        if (sub_21DBFBD7C())
        {
          sub_21D1CDECC(MEMORY[0x277D84F90]);
        }
      }

      sub_21DBF767C();
      v40 = 0;
      v41 = 0xE000000000000000;
      sub_21DBFBEEC();
      v40 = *v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DAD8, &unk_21DC1A820);
      v29 = sub_21DBFA1AC();
      v31 = v30;

      v40 = v29;
      v41 = v31;
      MEMORY[0x223D42AA0](0xD000000000000021, 0x800000021DC448D0);
      v32 = sub_21DBFAEDC();
      MEMORY[0x28223BE20](v32);
      *(&v33 - 4) = v25;
      *(&v33 - 3) = v17;
      *(&v33 - 2) = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE590D0, &qword_21DC0AD80);
      sub_21DBF625C();

      (*(v34 + 8))(v28, v35);
      (*(v36 + 8))(v17, v22);
    }
  }
}

uint64_t sub_21D8C8D18(void *a1, uint64_t a2, char a3)
{
  *(v3 + OBJC_IVAR____TtC15RemindersUICore37TTRShowSiriFoundInAppsDataModelSource_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + OBJC_IVAR____TtC15RemindersUICore37TTRShowSiriFoundInAppsDataModelSource_dataViewMonitor) = 0;
  *(v3 + OBJC_IVAR____TtC15RemindersUICore37TTRShowSiriFoundInAppsDataModelSource_store) = a1;
  v7 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_sortingStyle;
  v8 = sub_21DBF70DC();
  v9 = *(v8 - 8);
  (*(v9 + 16))(v3 + v7, a2, v8);
  *(v3 + OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_reminderFetchManager) = 0;
  *(v3 + 16) = a3;
  v10 = a1;

  sub_21D8C62E0();

  (*(v9 + 8))(a2, v8);
  return v3;
}

void sub_21D8C8E30(void *a1)
{
  if (qword_27CE56E00 != -1)
  {
    swift_once();
  }

  v2 = sub_21DBF84BC();
  __swift_project_value_buffer(v2, qword_27CE636B0);
  v3 = a1;

  oslog = sub_21DBF84AC();
  v4 = sub_21DBFAEBC();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315394;
    swift_getErrorValue();
    v7 = sub_21DBFC75C();
    v9 = sub_21D0CDFB4(v7, v8, &v11);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_21D0CDFB4(0x6E756F4669726973, 0xEF737070416E4964, &v11);
    _os_log_impl(&dword_21D0C9000, oslog, v4, "TTRShowSiriFoundInAppsDataModelSource did hit error {error: %s, dataModelSource: %s}", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D46520](v6, -1, -1);
    MEMORY[0x223D46520](v5, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_21D8C91F8(uint64_t a1)
{
  result = sub_21DBF70DC();
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

uint64_t sub_21D8C92F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C2B0, qword_21DC20CC0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void TTRReminderLocationPickerModel.item(with:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = *v3;
  v31 = *(*v3 + 16);
  if (v31)
  {
    v4 = a2;
    v5 = 0;
    v6 = (v32 + 80);
    while (v5 < *(v32 + 16))
    {
      v7 = *(v6 - 6);
      v8 = *(v6 - 5);
      v9 = *(v6 - 4);
      v10 = *(v6 - 3);
      v11 = *(v6 - 2);
      v12 = *(v6 - 1);
      v13 = *v6;
      v14 = v13 >> 5;
      v33 = v10;
      v34 = v9;
      if (v13 >> 5 > 2)
      {
        if (v14 == 3)
        {
          sub_21D5800C8(v7, v8, v9, v10, v11, v12, v13);
          v15 = sub_21D8CA438(v7);
          v16 = v26;
        }

        else if (v14 == 4)
        {
          v17 = [v7 title];
          v18 = sub_21DBFA16C();
          v20 = v19;

          v36 = v18;
          v37 = v20;
          MEMORY[0x223D42AA0](2108704, 0xE300000000000000);
          v21 = [v7 subtitle];
          v22 = sub_21DBFA16C();
          v24 = v23;

          MEMORY[0x223D42AA0](v22, v24);
          v4 = a2;

          v15 = v36;
          v16 = v37;
        }

        else
        {
          if (v13 == 160 && (v8 | v7 | v9 | v10 | v11 | v12) == 0)
          {
            v16 = 0xEC0000007265746ELL;
          }

          else
          {
            v16 = 0xEB00000000746978;
          }

          v15 = 0x45656C6369686576;
        }
      }

      else if (v14)
      {
        sub_21D5800C8(v7, v8, v9, v10, v11, v12, v13);
        sub_21DBF8E0C();
        v15 = v7;
        v16 = v8;
      }

      else
      {
        v25 = v7;
        v15 = 0x4C746E6572727563;
        v16 = 0xEF6E6F697461636FLL;
      }

      if (v15 == a1 && v16 == v4)
      {

LABEL_25:
        *a3 = v7;
        *(a3 + 8) = v8;
        *(a3 + 16) = v34;
        *(a3 + 24) = v33;
        *(a3 + 32) = v11;
        *(a3 + 40) = v12;
        *(a3 + 48) = v13;
        return;
      }

      v28 = sub_21DBFC64C();

      if (v28)
      {
        goto LABEL_25;
      }

      ++v5;
      sub_21D5801B4(v7, v8, v34, v33, v11, v12, v13);
      v6 += 56;
      if (v31 == v5)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_23:
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
    *(a3 + 48) = -2;
  }
}

double TTRReminderLocationPickerModel.Item.geoServiceAddress.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48) >> 5;
  if (v2 > 2)
  {
    if (v2 != 3 && v2 == 4)
    {
      v6 = *v1;
      *a1 = *v1;
      *(a1 + 8) = 0;
      *(a1 + 16) = 2;
      v4 = v6;
      return result;
    }

LABEL_10:
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = -1;
    return result;
  }

  if (!v2)
  {
    goto LABEL_10;
  }

  v3 = *(v1 + 40);
  if (v2 == 1)
  {
    *a1 = v3;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    v7 = v3;
  }

  else
  {
    *a1 = *(v1 + 32);
    *(a1 + 8) = v3;
    *(a1 + 16) = 1;
    sub_21DBF8E0C();
  }

  return result;
}

unint64_t TTRReminderLocationPickerModel.Item.localizedDisplayAttributes.getter()
{
  v1 = sub_21DBF4CAC();
  v2 = *(v1 - 8);
  *&v4 = MEMORY[0x28223BE20](v1).n128_u64[0];
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v0;
  v8 = *(v0 + 8);
  v9 = *(v0 + 24);
  v26 = *(v0 + 16);
  v11 = *(v0 + 32);
  v10 = *(v0 + 40);
  v12 = *(v0 + 48);
  v13 = v12 >> 5;
  if (v12 >> 5 <= 2)
  {
    if (v13)
    {
      if (v13 == 1)
      {
        if (v11)
        {
          v14 = sub_21DBFA12C();
        }

        else
        {
          v14 = 0;
        }

        v23 = [objc_opt_self() ttr:v14 localizedAddressTitleForLabel:v26 contact:?];

        v16 = sub_21DBFA16C();
        sub_21D8CA7E4(v10);
      }

      else
      {
        v22 = v3;
        sub_21DBF8E0C();
        sub_21DBF4C8C();
        v27 = v11;
        v28 = v10;
        sub_21D176F0C();
        v27 = sub_21DBFBB0C();
        __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61630, &qword_21DC0B3A0);
        sub_21D1ADAA8();
        sub_21DBFA07C();
        (*(v2 + 8))(v6, v22);

        return v26;
      }
    }

    else
    {
      if (qword_280D1BAA8 != -1)
      {
        swift_once();
      }

      v18 = sub_21DBF516C();
      if (v7)
      {
        v19 = v26;
        v25 = v18;
        sub_21D5800C8(v7, v8, v26, v9, v11, v10, v12);
        sub_21D8CAAE8(v7, 1);
        sub_21D5801B4(v7, v8, v19, v9, v11, v10, v12);
        return v25;
      }

      else
      {
        sub_21DBF516C();
        return v18;
      }
    }

    return v16;
  }

  if (v13 != 3)
  {
    if (v13 == 4)
    {
      v15 = [v7 title];
      v16 = sub_21DBFA16C();

      v17 = [v7 subtitle];
      sub_21DBFA16C();

      return v16;
    }

    if (v26 | v8 | v7 | v9 | v11 | *(v0 + 40) || v12 != 160)
    {
      if (qword_280D1BAA8 == -1)
      {
LABEL_21:
        v16 = sub_21DBF516C();
        sub_21DBF516C();
        return v16;
      }
    }

    else if (qword_280D1BAA8 == -1)
    {
      goto LABEL_21;
    }

    swift_once();
    goto LABEL_21;
  }

  v20 = [v7 name];
  if (v20)
  {
    v21 = v20;
    v16 = sub_21DBFA16C();
  }

  else
  {
    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    v16 = sub_21DBF516C();
  }

  sub_21D8CAAE8(v7, 0);
  return v16;
}

uint64_t TTRReminderLocationPickerModel.Item.identifier.getter()
{
  v1 = *v0;
  v2 = *(v0 + 48) >> 5;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      return sub_21D8CA438(*v0);
    }

    else if (v2 == 4)
    {
      v4 = [*v0 title];
      v5 = sub_21DBFA16C();

      v10 = v5;
      MEMORY[0x223D42AA0](2108704, 0xE300000000000000);
      v6 = [v1 subtitle];
      v7 = sub_21DBFA16C();
      v9 = v8;

      MEMORY[0x223D42AA0](v7, v9);

      return v10;
    }

    else
    {
      return 0x45656C6369686576;
    }
  }

  else if (v2)
  {
    sub_21DBF8E0C();
    return v1;
  }

  else
  {
    return 0x4C746E6572727563;
  }
}

unint64_t TTRReminderLocationPickerModel.Item.accessibilityIdentifier.getter()
{
  v1 = v0->i64[0];
  v2 = v0[3].u8[0];
  v3 = v2 >> 5;
  if (v2 >> 5 > 2)
  {
    if (v3 == 3)
    {
      return sub_21D8CA438(v0->i64[0]);
    }

    else if (v3 == 4)
    {
      v5 = [v0->i64[0] title];
      v6 = sub_21DBFA16C();

      v14 = v6;
      MEMORY[0x223D42AA0](2108704, 0xE300000000000000);
      v7 = [v1 subtitle];
      v8 = sub_21DBFA16C();
      v10 = v9;

      MEMORY[0x223D42AA0](v8, v10);

      return v14;
    }

    else
    {
      v11 = vorrq_s8(v0[1], v0[2]);
      v12 = v1 | *&vorr_s8(*v11.i8, *&vextq_s8(v11, v11, 8uLL)) | v0->i64[1];
      if (v2 == 160 && v12 == 0)
      {
        return 0xD00000000000002ALL;
      }

      else
      {
        return 0xD000000000000029;
      }
    }
  }

  else if (v3)
  {
    sub_21DBF8E0C();
    return v1;
  }

  else
  {
    return 0xD00000000000002DLL;
  }
}

uint64_t TTRReminderLocationPickerModel.Placemark.description.getter()
{
  v1 = *v0;
  if (!*(v0 + 8))
  {
    v7 = 0x616D6563616C702ELL;
    v2 = [v1 description];
    v3 = sub_21DBFA16C();
    v5 = v4;

    MEMORY[0x223D42AA0](v3, v5);

    goto LABEL_5;
  }

  if (*(v0 + 8) == 1)
  {
    v7 = 0;
    MEMORY[0x223D42AA0](0x28726F7272652ELL, 0xE700000000000000);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B280, &qword_21DC09C40);
    sub_21DBFC14C();
LABEL_5:
    MEMORY[0x223D42AA0](41, 0xE100000000000000);
    return v7;
  }

  if (v1)
  {
    return 0x64616F4C746F6E2ELL;
  }

  else
  {
    return 0x656E6F6E2ELL;
  }
}

uint64_t TTRReminderLocationPickerModel.Placemark.normalizedMapRegionForLocationTrigger.getter()
{
  if (*(v0 + 8))
  {
    return 0;
  }

  v2 = *v0;
  v3 = *v0;
  v4 = sub_21DBFADDC();
  sub_21D57EF34(v2, 0);
  return v4;
}

unint64_t TTRReminderLocationPickerModel.Item.titleForLocationTrigger.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = *(v0 + 48);
  if (!(v7 >> 5) || v7 >> 5 == 5 && (!(v3 | v2 | v1 | v4 | v5 | v6) && v7 == 160 || v7 == 160 && v1 == 1 && !(v3 | v2 | v4 | v5 | v6)))
  {
    TTRReminderLocationPickerModel.Item.localizedDisplayAttributes.getter();
    v9 = v8;
  }

  else
  {
    v9 = TTRReminderLocationPickerModel.Item.localizedDisplayAttributes.getter();
  }

  return v9;
}

id TTRReminderLocationPickerModel.Placemark.clPlacemark.getter()
{
  if (*(v0 + 8))
  {
    return 0;
  }

  v1 = *v0;
  v2 = *v0;
  return v1;
}

void TTRReminderLocationPickerModel.Placemark.init(_:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  if ((v6 >> 61) > 2)
  {
    if (v6 >> 61 == 3)
    {
      v8 = *(a1 + 8);
    }

    else
    {
      v8 = v6 & 0x1FFFFFFFFFFFFFFFLL;
    }

    v9 = v8;
    v7 = 1;
  }

  else
  {
    if ((v6 >> 61) >= 2)
    {
      v7 = 0;
      goto LABEL_9;
    }

    v7 = 2;
    v8 = 1;
  }

  sub_21D47B42C(v3, v4, v5, v6);
  v3 = v8;
LABEL_9:
  *a2 = v3;
  *(a2 + 8) = v7;
}

uint64_t sub_21D8CA438(void *a1)
{
  v2 = [a1 name];
  if (v2)
  {
    v3 = v2;
    v4 = sub_21DBFA16C();
    v6 = v5;
  }

  else
  {
    v6 = 0xE800000000000000;
    v4 = 0x64656C7469746E55;
  }

  v7 = [a1 location];
  if (v7)
  {
    v8 = v7;
    [v7 coordinate];
  }

  sub_21DBFAA2C();
  MEMORY[0x223D42AA0](44, 0xE100000000000000);
  v9 = [a1 location];
  if (v9)
  {
    v10 = v9;
    [v9 coordinate];
  }

  sub_21DBFAA2C();
  v11 = [a1 region];
  if (v11)
  {
    v12 = v11;
    objc_opt_self();
    v13 = swift_dynamicCastObjCClass();
    if (v13)
    {
      [v13 radius];
    }
  }

  MEMORY[0x223D42AA0](v15, 0xE000000000000000);

  MEMORY[0x223D42AA0](64, 0xE100000000000000);
  sub_21DBFAA2C();
  MEMORY[0x223D42AA0](8250, 0xE200000000000000);
  MEMORY[0x223D42AA0](v4, v6);

  return 0;
}

uint64_t _s15RemindersUICore30TTRReminderLocationPickerModelV9PlacemarkO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (v3 != 1)
    {
      if (v2)
      {
        if (v5 != 2 || v4 != 1)
        {
          goto LABEL_14;
        }
      }

      else if (v5 != 2 || v4 != 0)
      {
        goto LABEL_14;
      }

      sub_21D57ED3C(*a2, *(a2 + 8));
      v6 = 1;
      LOBYTE(v3) = 2;
      goto LABEL_23;
    }

    if (v5 == 1)
    {
      LOBYTE(v3) = 1;
      sub_21D57ED3C(*a2, 1u);
      sub_21D57ED3C(v2, 1u);
      v6 = 1;
      goto LABEL_23;
    }

LABEL_14:
    sub_21D57ED3C(*a2, *(a2 + 8));
    sub_21D57ED3C(v2, v3);
    v6 = 0;
    goto LABEL_23;
  }

  if (*(a2 + 8))
  {
    goto LABEL_14;
  }

  sub_21D57ED3C(*a2, 0);
  sub_21D57ED3C(v2, 0);
  sub_21D57ED3C(v4, 0);
  sub_21D57ED3C(v2, 0);
  v7 = sub_21D8CA438(v2);
  v9 = v8;
  if (v7 == sub_21D8CA438(v4) && v9 == v10)
  {
    v6 = 1;
  }

  else
  {
    v6 = sub_21DBFC64C();
  }

  sub_21D57EF34(v4, 0);
  sub_21D57EF34(v2, 0);
  LOBYTE(v3) = 0;
  LOBYTE(v5) = 0;
LABEL_23:
  sub_21D57EF34(v2, v3);
  sub_21D57EF34(v4, v5);
  return v6 & 1;
}

uint64_t sub_21D8CA7E4(uint64_t a1)
{
  v2 = sub_21DBF4CAC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() stringFromPostalAddress:a1 style:0];
  v7 = sub_21DBFA16C();
  v9 = v8;

  sub_21DBF4C8C();
  v13[0] = v7;
  v13[1] = v9;
  sub_21D176F0C();
  v10 = sub_21DBFBB0C();

  v13[0] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61630, &qword_21DC0B3A0);
  sub_21D1ADAA8();
  v11 = sub_21DBFA07C();
  (*(v3 + 8))(v5, v2);

  return v11;
}

uint64_t sub_21D8CA968(void *a1)
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90, &qword_21DC109C0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_21DC08D20;
  [a1 coordinate];
  v3 = MEMORY[0x277D839F8];
  v4 = MEMORY[0x277D83A80];
  *(v2 + 56) = MEMORY[0x277D839F8];
  *(v2 + 64) = v4;
  *(v2 + 32) = v5;
  [a1 coordinate];
  *(v2 + 96) = v3;
  *(v2 + 104) = v4;
  *(v2 + 72) = v6;
  v7 = sub_21DBFA13C();

  return v7;
}

uint64_t sub_21D8CAAE8(void *a1, char a2)
{
  v4 = [a1 postalAddress];
  if (v4)
  {
    v5 = v4;
    v6 = sub_21D8CA7E4(v4);
    v8 = v7;

    v9 = HIBYTE(v8) & 0xF;
    if ((v8 & 0x2000000000000000) == 0)
    {
      v9 = v6 & 0xFFFFFFFFFFFFLL;
    }

    if (v9)
    {
      return v6;
    }
  }

  v10 = [a1 name];
  if (v10)
  {
    v11 = v10;
    v6 = sub_21DBFA16C();
    v13 = v12;

    if (a2)
    {
      v14 = HIBYTE(v13) & 0xF;
      if ((v13 & 0x2000000000000000) == 0)
      {
        v14 = v6 & 0xFFFFFFFFFFFFLL;
      }

      if (v14)
      {
        return v6;
      }
    }
  }

  v15 = [a1 location];
  if (v15)
  {
    v16 = v15;
    v6 = sub_21D8CA968(v15);
    v18 = v17;

    v19 = HIBYTE(v18) & 0xF;
    if ((v18 & 0x2000000000000000) == 0)
    {
      v19 = v6 & 0xFFFFFFFFFFFFLL;
    }

    if (v19)
    {
      return v6;
    }
  }

  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  return sub_21DBF516C();
}

uint64_t initializeWithCopy for TTRReminderLocationPickerModel.Item(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(a2 + 48);
  sub_21D5800C8(*a2, v4, v5, v6, v7, v8, v9);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  return a1;
}

uint64_t assignWithCopy for TTRReminderLocationPickerModel.Item(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(a2 + 48);
  sub_21D5800C8(*a2, v4, v5, v6, v7, v8, v9);
  v10 = *a1;
  v11 = *(a1 + 8);
  v12 = *(a1 + 16);
  v13 = *(a1 + 24);
  v14 = *(a1 + 32);
  v15 = *(a1 + 40);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  v16 = *(a1 + 48);
  *(a1 + 48) = v9;
  sub_21D5801B4(v10, v11, v12, v13, v14, v15, v16);
  return a1;
}

uint64_t assignWithTake for TTRReminderLocationPickerModel.Item(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 48);
  v4 = *a1;
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v10;
  *(a1 + 32) = *(a2 + 32);
  v11 = *(a1 + 48);
  *(a1 + 48) = v3;
  sub_21D5801B4(v4, v6, v5, v7, v8, v9, v11);
  return a1;
}

uint64_t getEnumTagSinglePayload for TTRReminderLocationPickerModel.Item(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7B && *(a1 + 49))
  {
    return (*a1 + 123);
  }

  v3 = ((*(a1 + 48) >> 5) & 0xFFFFFF87 | (8 * ((*(a1 + 48) >> 1) & 0xF))) ^ 0x7F;
  if (v3 >= 0x7A)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for TTRReminderLocationPickerModel.Item(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7A)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 123;
    if (a3 >= 0x7B)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7B)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 16) = 0u;
      *(result + 32) = 0u;
      *result = 0u;
      *(result + 48) = 2 * (((-a2 >> 3) & 0xF) - 16 * a2);
    }
  }

  return result;
}

uint64_t sub_21D8CAEFC(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 <= 0x9F)
  {
    return v1 >> 5;
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t sub_21D8CAF28(uint64_t result, unsigned int a2)
{
  if (a2 < 5)
  {
    *(result + 48) = *(result + 48) & 1 | (32 * a2);
  }

  else
  {
    *result = a2 - 5;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0;
    *(result + 48) = -96;
  }

  return result;
}

uint64_t assignWithCopy for TTRReminderLocationPickerModel.Placemark(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  sub_21D57ED3C(*a2, v4);
  v5 = *a1;
  *a1 = v3;
  v6 = *(a1 + 8);
  *(a1 + 8) = v4;
  sub_21D57EF34(v5, v6);
  return a1;
}

uint64_t assignWithTake for TTRReminderLocationPickerModel.Placemark(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = *a1;
  *a1 = *a2;
  v5 = *(a1 + 8);
  *(a1 + 8) = v3;
  sub_21D57EF34(v4, v5);
  return a1;
}

uint64_t sub_21D8CB02C()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE63718);
  v1 = __swift_project_value_buffer(v0, qword_27CE63718);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_21D8CB144(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  v5 = OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_smartList;
  swift_beginAccess();
  v6 = *(v2 + v5);
  if (v6)
  {
    v7 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DAD0, &qword_21DC2FFC0);
    sub_21DBFA1AC();
    MEMORY[0x223D42AA0](0x65746164707520, 0xE700000000000000);
    v8 = sub_21DBFAEDC();
    MEMORY[0x28223BE20](v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE590D0, &qword_21DC0AD80);
    sub_21DBF625C();
  }

  return swift_unknownObjectRelease();
}

void (*sub_21D8CB2F0(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_21D8CB390;
}

void sub_21D8CB390(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    v4 = v3[5];
    swift_endAccess();
    swift_unknownObjectRelease();
    v5 = OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_smartList;
    swift_beginAccess();
    v6 = *(v4 + v5);
    if (v6)
    {
      v3[3] = *v3[5];
      v7 = v6;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DAD0, &qword_21DC2FFC0);
      sub_21DBFA1AC();
      MEMORY[0x223D42AA0](0x65746164707520, 0xE700000000000000);
      v8 = sub_21DBFAEDC();
      MEMORY[0x28223BE20](v8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE590D0, &qword_21DC0AD80);
      sub_21DBF625C();
    }
  }

  free(v3);
}

void sub_21D8CB54C(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_smartList;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

void *sub_21D8CB5AC()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_smartList;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t TTRShowCustomSmartListDataModelSource.__allocating_init(store:smartList:countCompleted:sortingStyle:canChangeSortingStyle:userDefaults:)(void *a1, void *a2, _BYTE *a3, uint64_t a4, int a5, void *a6)
{
  LODWORD(v39) = a5;
  v11 = swift_allocObject();
  LOBYTE(a3) = *a3;
  *(v11 + OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v12 = OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_smartList;
  *(v11 + OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_smartList) = 0;
  v13 = &qword_27CE63000;
  *(v11 + OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_layoutContextInstance) = 0;
  *(v11 + OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_dataViewMonitor) = 0;
  *(v11 + OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_store) = a1;
  swift_beginAccess();
  *(v11 + v12) = a2;
  *(v11 + OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_countCompleted) = a3;
  sub_21D0D32E4(a6, v11 + OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_userDefaults);
  v14 = a1;
  if (a2)
  {
    v15 = [a2 objectID];
    v16 = 1;
  }

  else
  {
    v15 = 0;
    v16 = 2;
  }

  if (qword_280D1AA10 != -1)
  {
    swift_once();
  }

  v17 = qword_280D1AA18;
  type metadata accessor for TTRRemindersListDataModelSourceShowCompletedContext();
  v18 = swift_allocObject();
  v19 = sub_21D193548(v15, v16, v17, v18);
  v20 = &qword_27CE63000;
  *(v11 + OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_showCompletedContextInstance) = v19;
  type metadata accessor for TTRRemindersListDataModelSourceTipKitContext();
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 18) = 0;
  *(v11 + OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_tipKitContextInstance) = v21;
  v22 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_sortingStyle;
  v23 = sub_21DBF70DC();
  v24 = *(v23 - 8);
  v25 = v11 + v22;
  v26 = a4;
  (*(v24 + 16))(v25, a4, v23);
  *(v11 + OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_reminderFetchManager) = 0;
  *(v11 + 16) = v39 & 1;
  if (a2)
  {
    v27 = type metadata accessor for TTRRemindersListDataModelSourceLayoutContext();
    v40 = a2;
    v41 = 1;
    v28 = *(v11 + OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_userDefaults + 24);
    v29 = *(v11 + OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_userDefaults + 32);
    v30 = __swift_project_boxed_opaque_existential_1((v11 + OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_userDefaults), v28);
    v39 = &v39;
    v31 = MEMORY[0x28223BE20](v30);
    v32 = v26;
    v34 = &v39 - v33;
    (*(v35 + 16))(&v39 - v33, v31);
    v36 = *(v29 + 8);

    a2 = sub_21D6F1094(&v40, v34, v27, v28, v36);

    __swift_destroy_boxed_opaque_existential_0(a6);
    (*(v24 + 8))(v32, v23);
    if (a2)
    {
      swift_beginAccess();
      a2[4] = &protocol witness table for TTRShowCustomSmartListDataModelSource;
      swift_unknownObjectWeakAssign();
    }

    v13 = &qword_27CE63000;
    v20 = &qword_27CE63000;
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(a6);
    (*(v24 + 8))(a4, v23);
  }

  *(v11 + v13[230]) = a2;

  v37 = *(v11 + v20[234]);
  swift_beginAccess();
  *(v37 + 24) = &protocol witness table for TTRShowCustomSmartListDataModelSource;
  swift_unknownObjectWeakAssign();

  return v11;
}

uint64_t TTRShowCustomSmartListDataModelSource.init(store:smartList:countCompleted:sortingStyle:canChangeSortingStyle:userDefaults:)(void *a1, void *a2, char *a3, uint64_t a4, int a5, void *a6)
{
  LODWORD(v39) = a5;
  v11 = *a3;
  *(v6 + OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v12 = OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_smartList;
  *(v6 + OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_smartList) = 0;
  v13 = &qword_27CE63000;
  *(v6 + OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_layoutContextInstance) = 0;
  *(v6 + OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_dataViewMonitor) = 0;
  *(v6 + OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_store) = a1;
  swift_beginAccess();
  *(v6 + v12) = a2;
  *(v6 + OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_countCompleted) = v11;
  sub_21D0D32E4(a6, v6 + OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_userDefaults);
  v14 = a1;
  if (a2)
  {
    v15 = [a2 objectID];
    v16 = 1;
  }

  else
  {
    v15 = 0;
    v16 = 2;
  }

  if (qword_280D1AA10 != -1)
  {
    swift_once();
  }

  v17 = qword_280D1AA18;
  type metadata accessor for TTRRemindersListDataModelSourceShowCompletedContext();
  v18 = swift_allocObject();
  v19 = sub_21D193548(v15, v16, v17, v18);
  v20 = &qword_27CE63000;
  *(v6 + OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_showCompletedContextInstance) = v19;
  type metadata accessor for TTRRemindersListDataModelSourceTipKitContext();
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 18) = 0;
  *(v6 + OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_tipKitContextInstance) = v21;
  v22 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_sortingStyle;
  v23 = sub_21DBF70DC();
  v24 = *(v23 - 8);
  v25 = v6 + v22;
  v26 = a4;
  (*(v24 + 16))(v25, a4, v23);
  *(v6 + OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_reminderFetchManager) = 0;
  *(v6 + 16) = v39 & 1;
  if (a2)
  {
    v27 = type metadata accessor for TTRRemindersListDataModelSourceLayoutContext();
    v40 = a2;
    v41 = 1;
    v28 = *(v6 + OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_userDefaults + 24);
    v29 = *(v6 + OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_userDefaults + 32);
    v30 = __swift_project_boxed_opaque_existential_1((v6 + OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_userDefaults), v28);
    v39 = &v39;
    v31 = MEMORY[0x28223BE20](v30);
    v32 = v26;
    v34 = &v39 - v33;
    (*(v35 + 16))(&v39 - v33, v31);
    v36 = *(v29 + 8);

    a2 = sub_21D6F1094(&v40, v34, v27, v28, v36);

    __swift_destroy_boxed_opaque_existential_0(a6);
    (*(v24 + 8))(v32, v23);
    if (a2)
    {
      swift_beginAccess();
      a2[4] = &protocol witness table for TTRShowCustomSmartListDataModelSource;
      swift_unknownObjectWeakAssign();
    }

    v13 = &qword_27CE63000;
    v20 = &qword_27CE63000;
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(a6);
    (*(v24 + 8))(a4, v23);
  }

  *(v6 + v13[230]) = a2;

  v37 = *(v6 + v20[234]);
  swift_beginAccess();
  *(v37 + 24) = &protocol witness table for TTRShowCustomSmartListDataModelSource;
  swift_unknownObjectWeakAssign();

  return v6;
}

void sub_21D8CBE24(char a1)
{
  v2 = v1;
  if ((a1 & 1) == 0)
  {
    goto LABEL_8;
  }

  v3 = OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_smartList;
  swift_beginAccess();
  v4 = *(v2 + v3);
  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = qword_27CE56E08;
  v6 = v4;
  if (v5 != -1)
  {
    swift_once();
  }

  v7 = sub_21DBF84BC();
  __swift_project_value_buffer(v7, qword_27CE63718);
  v8 = sub_21DBF84AC();
  v9 = sub_21DBFAEDC();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_21D0C9000, v8, v9, "TTRShowCustomSmartListDataModelSource start synchronously", v10, 2u);
    MEMORY[0x223D46520](v10, -1, -1);
  }

  v11 = sub_21D8CD56C(v6);
  if ((v11 & 1) == 0)
  {
LABEL_8:
    if (qword_27CE56E08 != -1)
    {
      swift_once();
    }

    v12 = sub_21DBF84BC();
    __swift_project_value_buffer(v12, qword_27CE63718);
    v13 = sub_21DBF84AC();
    v14 = sub_21DBFAEDC();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_21D0C9000, v13, v14, "TTRShowCustomSmartListDataModelSource start asynchronously", v15, 2u);
      MEMORY[0x223D46520](v15, -1, -1);
    }

    v16 = 10;
    sub_21D8CFD7C(&v16);
  }
}

void sub_21D8CC01C(void *a1, char a2)
{
  v5 = sub_21DBF70DC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v30 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v29 - v9;
  v11 = OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_smartList;
  swift_beginAccess();
  v12 = *(v2 + v11);
  *(v2 + v11) = a1;
  v13 = a1;
  v14 = [v13 objectID];
  v15 = v14;
  if (v12)
  {
    v16 = [v12 objectID];
    v17 = v16;
    if (v15)
    {
      if (v16)
      {
        sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
        v18 = sub_21DBFB63C();

        if (v18)
        {
          goto LABEL_13;
        }

LABEL_8:
        if (*(v2 + 16) == 1)
        {
          v19 = [v13 sortingStyle];
          v20 = sub_21DBFA16C();
          v22 = v21;
          if (v20 == sub_21DBFA16C() && v22 == v23)
          {
          }

          else
          {
            v25 = sub_21DBFC64C();

            if ((v25 & 1) == 0)
            {
              v28 = [v13 sortingStyle];
              sub_21DBFAF7C();

              goto LABEL_18;
            }
          }
        }

        sub_21DBF707C();
LABEL_18:
        v26 = v30;
        (*(v6 + 16))(v30, v10, v5);
        v27 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_sortingStyle;
        swift_beginAccess();
        (*(v6 + 40))(v2 + v27, v26, v5);
        swift_endAccess();
        v31[0] = 0;
        sub_21D8CFD7C(v31);

        (*(v6 + 8))(v10, v5);
        return;
      }

LABEL_7:

      goto LABEL_8;
    }

    v15 = v16;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  else if (v14)
  {
    goto LABEL_7;
  }

LABEL_13:
  if (a2)
  {

    sub_21D852368(v24);
  }
}

void sub_21D8CC3C4(_OWORD *a1@<X8>)
{
  v68 = sub_21DBF773C();
  v67 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v66 = &v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58560, &unk_21DC09540);
  MEMORY[0x28223BE20](v4 - 8);
  v72 = &v60 - v5;
  v6 = sub_21DBF6C9C();
  v74 = *(v6 - 8);
  v75 = v6;
  MEMORY[0x28223BE20](v6);
  v65 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v63 = &v60 - v9;
  MEMORY[0x28223BE20](v10);
  v70 = &v60 - v11;
  v73 = sub_21DBFB1AC();
  v71 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v64 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_21DBF714C();
  v86 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v14 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_21DBF734C();
  v83 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v16 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_21DBF70DC();
  v82 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v18 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63760, &qword_21DC2FFC8);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v60 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58568, &qword_21DC2FFD0);
  v80 = *(v22 - 8);
  v81 = v22;
  MEMORY[0x28223BE20](v22);
  v69 = &v60 - v23;
  v24 = sub_21DBF71BC();
  v78 = *(v24 - 8);
  v79 = v24;
  MEMORY[0x28223BE20](v24);
  v26 = (&v60 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_smartList;
  swift_beginAccess();
  v28 = *(v1 + v27);
  if (v28)
  {
    v76 = a1;
    v29 = v28;

    v31 = sub_21D8526E8(v26, v30);

    v32 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_sortingStyle;
    swift_beginAccess();
    (*(v82 + 16))(v18, v1 + v32, v84);
    (*(v83 + 104))(v16, *MEMORY[0x277D45500], v85);
    v33 = v77;
    (*(v86 + 104))(v14, *MEMORY[0x277D45460], v77);
    sub_21DBF6CAC();
    v60 = v29;
    v61 = v31;
    v62 = v26;
    (*(v86 + 8))(v14, v33);
    (*(v83 + 8))(v16, v85);
    (*(v82 + 8))(v18, v84);
    v35 = v80;
    v34 = v81;
    (*(v80 + 56))(v21, 0, 1, v81);
    v36 = v69;
    (*(v35 + 32))();
    v37 = v70;
    v38 = sub_21DBF76DC();
    v39 = v72;
    MEMORY[0x223D3F430](v38);
    v40 = *(v74 + 8);
    v41 = v37;
    v42 = v75;
    v40(v41, v75);
    v43 = v71;
    v44 = v73;
    if ((*(v71 + 48))(v39, 1, v73) == 1)
    {

      (*(v35 + 8))(v36, v34);
      (*(v78 + 8))(v62, v79);
      sub_21D0CF7E0(v39, &qword_27CE58560, &unk_21DC09540);
      v45 = v76;
      v76[2] = 0u;
      v45[3] = 0u;
      *v45 = 0u;
      v45[1] = 0u;
    }

    else
    {
      v46 = v64;
      (*(v43 + 32))(v64, v39, v44);
      v47 = v63;
      v48 = sub_21DBF76DC();
      v49 = v66;
      MEMORY[0x223D3F440](v48);
      v40(v47, v42);
      v86 = sub_21DBF718C();
      (*(v67 + 8))(v49, v68);
      v50 = v36;
      v51 = v65;
      v52 = v81;
      sub_21DBF76DC();
      v85 = sub_21DBF6C2C();
      v40(v51, v42);
      v53 = sub_21DBFB18C();
      v54 = sub_21DBFB19C();
      v55 = sub_21DBFB17C();
      v57 = v56;

      (*(v43 + 8))(v46, v44);
      (*(v80 + 8))(v50, v52);
      (*(v78 + 8))(v62, v79);
      v58 = v76;
      v59 = v61;
      *v76 = v86;
      *(v58 + 1) = v59;
      *(v58 + 2) = v85;
      *(v58 + 24) = 0;
      *(v58 + 4) = v53;
      *(v58 + 20) = v54;
      *(v58 + 6) = v55;
      *(v58 + 7) = v57;
    }
  }

  else
  {
    a1[2] = 0u;
    a1[3] = 0u;
    *a1 = 0u;
    a1[1] = 0u;
  }
}

uint64_t sub_21D8CCE24()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_smartList;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (!v2)
  {
    return 0;
  }

  type metadata accessor for TTRShowCustomSmartListDataModelSourceDeleteCompletedContext(0);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtC15RemindersUICore59TTRShowCustomSmartListDataModelSourceDeleteCompletedContext_listForBatchDelete;
  *(v3 + v4) = [v2 objectID];
  v5 = *MEMORY[0x277D45940];
  v6 = sub_21DBF806C();
  (*(*(v6 - 8) + 104))(v3 + v4, v5, v6);
  return v3;
}

uint64_t TTRShowCustomSmartListDataModelSourceDeleteCompletedContext.__allocating_init(customSmartList:)(void *a1)
{
  v2 = swift_allocObject();
  v3 = OBJC_IVAR____TtC15RemindersUICore59TTRShowCustomSmartListDataModelSourceDeleteCompletedContext_listForBatchDelete;
  v4 = [a1 objectID];

  *(v2 + v3) = v4;
  v5 = *MEMORY[0x277D45940];
  v6 = sub_21DBF806C();
  (*(*(v6 - 8) + 104))(v2 + v3, v5, v6);
  return v2;
}

id sub_21D8CCFFC@<X0>(uint64_t *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_smartList;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (v4)
  {
    v5 = *(v1 + OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_store);
    v11 = *(v1 + v3);
    v6 = type metadata accessor for TTRShowCustomSmartListTipKitDataModelSource();
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    *(v7 + 24) = v11;
    v8 = v5;
    v4 = v11;
    v9 = &protocol witness table for TTRTipKitDataModelSourceBase;
  }

  else
  {
    v7 = 0;
    v6 = 0;
    v9 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v7;
  a1[3] = v6;
  a1[4] = v9;

  return v4;
}

double sub_21D8CD0C0@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_21DBF70DC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21DBF71BC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v26 - v12;
  v14 = OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_smartList;
  swift_beginAccess();
  if (*(v1 + v14))
  {
    v27 = *(v1 + v14);
    if (*(*(v1 + OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_showCompletedContextInstance) + 40))
    {
      v15 = MEMORY[0x277D45468];
    }

    else
    {
      v15 = MEMORY[0x277D45470];
    }

    (*(v8 + 104))(v13, *v15, v7);
    (*(v8 + 16))(v10, v13, v7);
    v26 = v6;
    v16 = v3;
    v17 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_sortingStyle;
    swift_beginAccess();
    v18 = v6;
    v19 = v16;
    (*(v4 + 16))(v18, v1 + v17, v16);
    v20 = type metadata accessor for TTRShowCustomSmartListPrintingDataModelSource(0);
    v21 = swift_allocObject();
    v22 = v27;
    *(v21 + 16) = v27;
    (*(v8 + 32))(v21 + OBJC_IVAR____TtC15RemindersUICore45TTRShowCustomSmartListPrintingDataModelSource_showCompleted, v10, v7);
    (*(v4 + 32))(v21 + OBJC_IVAR____TtC15RemindersUICore45TTRShowCustomSmartListPrintingDataModelSource_sortingStyle, v26, v19);
    *(a1 + 24) = v20;
    *(a1 + 32) = &protocol witness table for TTRShowCustomSmartListPrintingDataModelSource;
    *a1 = v21;
    v23 = *(v8 + 8);
    v24 = v22;
    v23(v13, v7);
  }

  else
  {
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t TTRShowCustomSmartListPrintingDataModelSource.__allocating_init(smartList:showCompleted:sortingStyle:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  v7 = OBJC_IVAR____TtC15RemindersUICore45TTRShowCustomSmartListPrintingDataModelSource_showCompleted;
  v8 = sub_21DBF71BC();
  (*(*(v8 - 8) + 32))(v6 + v7, a2, v8);
  v9 = OBJC_IVAR____TtC15RemindersUICore45TTRShowCustomSmartListPrintingDataModelSource_sortingStyle;
  v10 = sub_21DBF70DC();
  (*(*(v10 - 8) + 32))(v6 + v9, a3, v10);
  return v6;
}

uint64_t sub_21D8CD474()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_smartList;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = v2;
    v4 = [v3 accountCapabilities];
    v5 = [v4 supportsTemplates];

    if (v5)
    {
      type metadata accessor for TTRShowCustomSmartListTemplateContext();
      result = swift_allocObject();
      *(result + 16) = v3;
      return result;
    }
  }

  return 0;
}

uint64_t sub_21D8CD56C(void *a1)
{
  v181 = sub_21DBFB11C();
  v180 = *(v181 - 8);
  MEMORY[0x28223BE20](v181);
  v179 = &v167 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v177 = sub_21DBFB0BC();
  MEMORY[0x28223BE20](v177);
  v178 = &v167 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21DBF9D5C();
  MEMORY[0x28223BE20](v4 - 8);
  v176 = &v167 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D400, &unk_21DC195F0);
  MEMORY[0x28223BE20](v6 - 8);
  v175 = &v167 - v7;
  v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C280, &unk_21DC15DA0);
  MEMORY[0x28223BE20](v202);
  v200 = (&v167 - v8);
  v191 = sub_21DBF76AC();
  v190 = *(v191 - 8);
  MEMORY[0x28223BE20](v191);
  v189 = &v167 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v199 = &v167 - v11;
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE637E8, &qword_21DC30328);
  MEMORY[0x28223BE20](v185);
  v184 = &v167 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v188 = &v167 - v14;
  v198 = sub_21DBF70DC();
  v197 = *(v198 - 8);
  MEMORY[0x28223BE20](v198);
  v196 = &v167 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v195 = sub_21DBF71BC();
  v16 = *(v195 - 8);
  MEMORY[0x28223BE20](v195);
  v204 = (&v167 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C288, &unk_21DC1A810);
  v172 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v174 = &v167 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v173 = &v167 - v21;
  MEMORY[0x28223BE20](v22);
  v186 = &v167 - v23;
  MEMORY[0x28223BE20](v24);
  v183 = &v167 - v25;
  MEMORY[0x28223BE20](v26);
  v192 = &v167 - v27;
  MEMORY[0x28223BE20](v28);
  v30 = &v167 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58560, &unk_21DC09540);
  MEMORY[0x28223BE20](v31 - 8);
  v33 = &v167 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D378, &qword_21DC19530);
  MEMORY[0x28223BE20](v34 - 8);
  v36 = &v167 - v35;
  v171 = sub_21DBF719C();
  v170 = *(v171 - 8);
  MEMORY[0x28223BE20](v171);
  v182 = &v167 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v40 = &v167 - v39;
  v41 = sub_21DBF6C5C();
  v42 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v194 = &v167 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v46 = &v167 - v45;
  sub_21DBF72BC();
  v47 = sub_21DBF72DC();
  (*(*(v47 - 8) + 56))(v36, 0, 1, v47);
  MEMORY[0x223D3F930](MEMORY[0x277D84F90], v36, 2, MEMORY[0x277D84F90], MEMORY[0x277D84F90]);
  v48 = sub_21DBFAE4C();
  v49 = sub_21DBFB1AC();
  (*(*(v49 - 8) + 56))(v33, 1, 1, v49);
  v50 = v33;
  v51 = v30;
  MEMORY[0x223D3F3F0](v40, v48, v50);
  v187 = v18;
  v52 = *(v18 + 48);
  v53 = v42[2];
  v54 = v30;
  v193 = v46;
  v203 = v41;
  v55 = v201;
  v53(v54, v46, v41);
  *(v51 + v52) = 0;
  v56 = *(v55 + OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_showCompletedContextInstance);
  if (*(v56 + 40) == 1)
  {
    v57 = v195;
    (*(v16 + 104))(v204, *MEMORY[0x277D45468], v195);
  }

  else
  {
    swift_beginAccess();
    *v204 = *(v56 + 48);
    v57 = v195;
    (*(v16 + 104))();
    sub_21DBF8E0C();
  }

  v58 = *(v55 + OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_countCompleted);
  v59 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_sortingStyle;
  swift_beginAccess();
  v60 = v197;
  v61 = v55 + v59;
  v62 = v196;
  v63 = v198;
  (v197)[2](v196, v61, v198);
  type metadata accessor for TTRShowCustomSmartListMonitorableDataView(0);
  v64 = swift_allocObject();
  *(v64 + 16) = a1;
  (*(v16 + 32))(v64 + OBJC_IVAR____TtC15RemindersUICore41TTRShowCustomSmartListMonitorableDataView_showCompleted, v204, v57);
  *(v64 + OBJC_IVAR____TtC15RemindersUICore41TTRShowCustomSmartListMonitorableDataView_countCompleted) = v58;
  (v60)[4](v64 + OBJC_IVAR____TtC15RemindersUICore41TTRShowCustomSmartListMonitorableDataView_sortingStyle, v62, v63);
  *(v64 + OBJC_IVAR____TtC15RemindersUICore41TTRShowCustomSmartListMonitorableDataView_remindersToPrefetchCount) = 0;
  v65 = v200;
  sub_21D0D3954(v51, v200, &qword_27CE5C288, &unk_21DC1A810);
  swift_storeEnumTagMultiPayload();
  v66 = a1;
  v67 = v194;
  v68 = v199;
  v69 = TTRShowCustomSmartListMonitorableDataView.fetchData(from:userInteractive:)(v194, v199, v65, 1);
  v196 = v51;
  v197 = v66;
  v169 = 0;
  v198 = v64;
  sub_21D0CF7E0(v65, &qword_27CE5C280, &unk_21DC15DA0);
  v204 = v42;
  v70 = v42[4];
  v71 = v188;
  v72 = v203;
  v70(v188, v67, v203);
  v73 = v187;
  *(v71 + *(v187 + 48)) = v69;
  v74 = v185;
  v75 = *(v185 + 48);
  v200 = *(v190 + 32);
  v76 = v191;
  v200(v71 + v75, v68, v191);
  v77 = v184;
  sub_21D0D3954(v71, v184, &qword_27CE637E8, &qword_21DC30328);
  v78 = *(v73 + 48);
  v79 = *&v77[v78];
  v199 = *(v74 + 48);
  v80 = v192;
  v81 = v72;
  v195 = (v42 + 4);
  v82 = v70;
  v70(v192, v77, v81);
  *(v80 + v78) = v79;
  v200(v189, &v77[v199], v76);
  v83 = v183;
  sub_21D0D3954(v80, v183, &qword_27CE5C288, &unk_21DC1A810);
  if (*&v83[*(v73 + 48)])
  {
    v168 = *&v83[*(v73 + 48)];
    v199 = v204[1];
    ++v204;
    v84 = v203;
    (v199)(v83, v203);
    v85 = v186;
    sub_21D0D3954(v80, v186, &qword_27CE5C288, &unk_21DC1A810);
    v86 = *(v73 + 48);
    v87 = *(v85 + v86);
    v88 = v173;
    v82(v173, v85, v84);
    *&v88[v86] = v87;
    v89 = v88;
    v195 = sub_21D0D8CF0(0, &qword_280D1B900, 0x277D85C78);

    v90 = sub_21DBFB12C();
    v184 = v90;
    sub_21DBF60DC();
    v194 = sub_21DBF60BC();
    v91 = sub_21DBF60AC();
    v183 = v91;
    v200 = *MEMORY[0x277D76648];
    v185 = *MEMORY[0x277D76768];
    v92 = v185;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D408, &unk_21DC19600);
    v93 = swift_allocObject();
    v94 = *(*v93 + 104);
    v95 = *(v172 + 56);
    v95(v93 + v94, 1, 1, v73);
    v96 = (v93 + *(*v93 + 136));
    *v96 = 0;
    v96[1] = 0;
    *(v93 + *(*v93 + 112)) = v90;
    *(v93 + *(*v93 + 120)) = v91;
    sub_21D0D3954(v89, v93 + *(*v93 + 96), &qword_27CE5C288, &unk_21DC1A810);
    swift_storeEnumTagMultiPayload();
    v97 = v175;
    sub_21D0D3954(v89, v175, &qword_27CE5C288, &unk_21DC1A810);
    v95(v97, 0, 1, v73);
    swift_beginAccess();
    v98 = v200;
    v99 = v92;
    v184 = v184;
    v100 = v183;
    sub_21D8D43F0(v97, v93 + v94);
    swift_endAccess();
    sub_21DBF9D4C();
    v209 = MEMORY[0x277D84F90];
    sub_21D66282C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60F00, &unk_21DC0D9A0);
    sub_21D0D9418(&qword_280D178C0, &unk_27CE60F00, &unk_21DC0D9A0);
    sub_21DBFBCBC();
    (*(v180 + 104))(v179, *MEMORY[0x277D85260], v181);
    v101 = sub_21DBFB14C();
    v102 = v174;
    sub_21D0D3954(v89, v174, &qword_27CE5C288, &unk_21DC1A810);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D410, &qword_21DC19610);
    v103 = swift_allocObject();
    *(v103 + 72) = 0u;
    *(v103 + 88) = 0u;
    *(v103 + 104) = 0;
    *(v103 + 108) = -1;
    *(v103 + 120) = 0;
    *(v103 + 128) = 1;
    v104 = *(*v103 + 216);
    v105 = swift_slowAlloc();
    *(v103 + v104) = v105;
    *(v103 + *(*v103 + 224)) = 0;
    v106 = v194;
    *(v103 + 16) = v101;
    *(v103 + 24) = v106;
    v107 = v198;
    *(v103 + 32) = v100;
    *(v103 + 40) = v107;
    sub_21D0D3954(v102, v103 + *(*v103 + 208), &qword_27CE5C288, &unk_21DC1A810);
    swift_storeEnumTagMultiPayload();
    *v105 = 0;

    sub_21D0CF7E0(v102, &qword_27CE5C288, &unk_21DC1A810);
    sub_21D0CF7E0(v89, &qword_27CE5C288, &unk_21DC1A810);
    v108 = v185;
    *(v103 + 48) = v200;
    *(v103 + 56) = v108;
    *(v103 + 64) = 1;
    *(v93 + *(*v93 + 128)) = v103;
    v109 = swift_allocObject();
    swift_weakInit();
    v110 = swift_allocObject();
    v111 = v201;
    swift_weakInit();
    v112 = swift_allocObject();
    *(v112 + 16) = v109;
    *(v112 + 24) = v110;
    v113 = *(v103 + 72);
    v114 = *(v103 + 80);
    *(v103 + 72) = sub_21D5047B4;
    *(v103 + 80) = v112;

    sub_21D0D0E88(v113, v114);

    v115 = *(v93 + *(*v93 + 128));
    v116 = swift_allocObject();
    swift_weakInit();
    v117 = *(v115 + 88);
    v118 = *(v115 + 96);
    *(v115 + 88) = sub_21D5047BC;
    *(v115 + 96) = v116;

    v119 = v117;
    v120 = v111;
    sub_21D0D0E88(v119, v118);

    v121 = swift_allocObject();
    swift_weakInit();
    v122 = swift_allocObject();
    swift_weakInit();
    v123 = swift_allocObject();
    *(v123 + 16) = v121;
    *(v123 + 24) = v122;
    v124 = (v93 + *(*v93 + 136));
    v125 = *v124;
    v126 = v124[1];
    *v124 = sub_21D5047C4;
    v124[1] = v123;

    sub_21D0D0E88(v125, v126);

    v127 = OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_dataViewMonitor;
    swift_beginAccess();
    *(v111 + v127) = v93;

    v128 = v186;
    sub_21D0D3954(v192, v186, &qword_27CE5C288, &unk_21DC1A810);

    v129 = v182;
    MEMORY[0x223D3F400]();
    (v199)(v128, v203);
    v130 = v111 + OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_delegate;
    swift_beginAccess();
    if (!swift_unknownObjectWeakLoadStrong() || (v132 = *(v130 + 1), ObjectType = swift_getObjectType(), v134 = (*(*(v132 + 8) + 8))(ObjectType), v125 = v135, swift_unknownObjectRelease(), (v125 & 1) != 0))
    {
      v134 = 30;
    }

    v131.n128_f64[0] = v134 * 1.5;
    v136 = v196;
    if (COERCE__INT64(fabs(v131.n128_f64[0])) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v131.n128_f64[0] > -9.22337204e18)
      {
        if (v131.n128_f64[0] < 9.22337204e18)
        {
          v125 = sub_21DA68CBC(v131.n128_f64[0], v131);
          if (qword_27CE56E08 == -1)
          {
LABEL_13:
            v137 = sub_21DBF84BC();
            __swift_project_value_buffer(v137, qword_27CE63718);
            sub_21DBF8E0C();
            v138 = sub_21DBF84AC();
            v139 = sub_21DBFAEAC();

            if (os_log_type_enabled(v138, v139))
            {
              v140 = swift_slowAlloc();
              v141 = swift_slowAlloc();
              v208 = v141;
              *v140 = 136315138;
              v142 = v136;
              if (v125 >> 62)
              {
                v143 = sub_21DBFBD7C();
              }

              else
              {
                v143 = *((v125 & 0xFFFFFFFFFFFFFF8) + 0x10);
              }

              v207 = v143;
              sub_21D679D9C();
              v144 = sub_21DBFBC0C();
              v146 = sub_21D0CDFB4(v144, v145, &v208);

              *(v140 + 4) = v146;
              _os_log_impl(&dword_21D0C9000, v138, v139, "Fetching initial set of reminders {count: %s}", v140, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v141);
              MEMORY[0x223D46520](v141, -1, -1);
              MEMORY[0x223D46520](v140, -1, -1);

              v120 = v201;
            }

            else
            {
              v142 = v136;
            }

            v156 = [v197 store];
            v157 = sub_21DBFB12C();
            v158 = swift_allocObject();
            *(v158 + 16) = 0;
            v159 = v168;
            v160 = sub_21D87E81C(v156, sub_21D554248, v158, v159, v157);
            swift_beginAccess();
            v160[3] = &protocol witness table for TTRShowCustomSmartListDataModelSource;
            swift_unknownObjectWeakAssign();
            sub_21DAB0AFC(v125);

            v161 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_reminderFetchManager;
            swift_beginAccess();
            *(v120 + v161) = v160;

            if (*(v120 + v127))
            {

              sub_21D400B14(1);
            }

            v205 = 0;
            v206 = 0xE000000000000000;
            sub_21DBFBEEC();
            v205 = *v120;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DAD0, &qword_21DC2FFC0);
            v162 = sub_21DBFA1AC();
            v164 = v163;

            v205 = v162;
            v206 = v164;
            MEMORY[0x223D42AA0](0xD000000000000012, 0x800000021DC44630);
            v165 = sub_21DBFAEDC();
            MEMORY[0x28223BE20](v165);
            *(&v167 - 4) = v120;
            *(&v167 - 3) = v197;
            *(&v167 - 2) = v129;
            v166 = v189;
            *(&v167 - 1) = v189;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE590D0, &qword_21DC0AD80);
            sub_21DBF625C();

            sub_21D0CF7E0(v192, &qword_27CE5C288, &unk_21DC1A810);
            sub_21D0CF7E0(v188, &qword_27CE637E8, &qword_21DC30328);
            sub_21D0CF7E0(v142, &qword_27CE5C288, &unk_21DC1A810);
            (v199)(v193, v203);
            (*(v170 + 8))(v129, v171);
            (*(v190 + 8))(v166, v191);
            return 1;
          }

LABEL_28:
          swift_once();
          goto LABEL_13;
        }

LABEL_27:
        __break(1u);
        goto LABEL_28;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_27;
  }

  v147 = v204[1];
  v148 = v203;
  v147(v83, v203);
  v149 = v196;
  if (qword_27CE56E08 != -1)
  {
    swift_once();
  }

  v150 = sub_21DBF84BC();
  __swift_project_value_buffer(v150, qword_27CE63718);
  v151 = sub_21DBF84AC();
  v152 = sub_21DBFAEBC();
  if (os_log_type_enabled(v151, v152))
  {
    v153 = swift_slowAlloc();
    *v153 = 0;
    _os_log_impl(&dword_21D0C9000, v151, v152, "startSynchronously failed, missing initial fetch result token", v153, 2u);
    v154 = v153;
    v148 = v203;
    MEMORY[0x223D46520](v154, -1, -1);
  }

  sub_21D0CF7E0(v80, &qword_27CE5C288, &unk_21DC1A810);
  sub_21D0CF7E0(v188, &qword_27CE637E8, &qword_21DC30328);
  sub_21D0CF7E0(v149, &qword_27CE5C288, &unk_21DC1A810);
  v147(v193, v148);
  (*(v190 + 8))(v189, v191);
  return 0;
}

uint64_t TTRShowCustomSmartListMonitorableDataView.__allocating_init(smartList:showCompleted:countCompleted:sortingStyle:remindersToPrefetchCount:)(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  LOBYTE(a3) = *a3;
  *(v10 + 16) = a1;
  v11 = OBJC_IVAR____TtC15RemindersUICore41TTRShowCustomSmartListMonitorableDataView_showCompleted;
  v12 = sub_21DBF71BC();
  (*(*(v12 - 8) + 32))(v10 + v11, a2, v12);
  *(v10 + OBJC_IVAR____TtC15RemindersUICore41TTRShowCustomSmartListMonitorableDataView_countCompleted) = a3;
  v13 = OBJC_IVAR____TtC15RemindersUICore41TTRShowCustomSmartListMonitorableDataView_sortingStyle;
  v14 = sub_21DBF70DC();
  (*(*(v14 - 8) + 32))(v10 + v13, a4, v14);
  *(v10 + OBJC_IVAR____TtC15RemindersUICore41TTRShowCustomSmartListMonitorableDataView_remindersToPrefetchCount) = a5;
  return v10;
}

char *TTRShowCustomSmartListMonitorableDataView.fetchData(from:userInteractive:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v59 = a1;
  v60 = a2;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63798, &qword_21DC2FFD8);
  MEMORY[0x28223BE20](v54);
  v55 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v58 = &v53 - v9;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE637A0, &unk_21DC2FFE0);
  v56 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v73 = &v53 - v10;
  v11 = sub_21DBF714C();
  v68 = *(v11 - 8);
  v69 = v11;
  MEMORY[0x28223BE20](v11);
  v67 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21DBF70DC();
  v65 = *(v13 - 8);
  v66 = v13;
  MEMORY[0x28223BE20](v13);
  v64 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_21DBF738C();
  v70 = *(v15 - 8);
  v71 = v15;
  MEMORY[0x28223BE20](v15);
  v74 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_21DBF71BC();
  v17 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v19 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v53 - v21;
  v78 = sub_21DBF734C();
  v23 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v63 = &v53 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = (&v53 - v26);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D400, &unk_21DC195F0);
  MEMORY[0x28223BE20](v28 - 8);
  v30 = &v53 - v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C280, &unk_21DC15DA0);
  sub_21DBFC83C();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C288, &unk_21DC1A810);
  if ((*(*(v31 - 8) + 48))(v30, 1, v31) == 1)
  {
    sub_21D0CF7E0(v30, &qword_27CE5D400, &unk_21DC195F0);
    v77 = 0;
  }

  else
  {
    v77 = *&v30[*(v31 + 48)];
    v32 = sub_21DBF6C5C();
    (*(*(v32 - 8) + 8))(v30, v32);
  }

  v61 = *(v5 + 16);
  v33 = [v61 store];
  v34 = v33;
  if (a4)
  {
    v76 = v33;
    if (!v77)
    {
      v35 = MEMORY[0x277D45508];
      goto LABEL_9;
    }
  }

  else
  {
    v76 = [v33 nonUserInteractiveStore];
  }

  v35 = MEMORY[0x277D454F8];
LABEL_9:
  *v27 = *(v5 + OBJC_IVAR____TtC15RemindersUICore41TTRShowCustomSmartListMonitorableDataView_remindersToPrefetchCount);
  (*(v23 + 104))(v27, *v35, v78);
  v36 = *(v5 + OBJC_IVAR____TtC15RemindersUICore41TTRShowCustomSmartListMonitorableDataView_countCompleted);
  v37 = OBJC_IVAR____TtC15RemindersUICore41TTRShowCustomSmartListMonitorableDataView_showCompleted;
  v62 = v34;
  if (v36 > 1)
  {
    v38 = v75;
    (*(v17 + 16))(v22, v5 + OBJC_IVAR____TtC15RemindersUICore41TTRShowCustomSmartListMonitorableDataView_showCompleted, v75);
    v39 = (*(v17 + 88))(v22, v38);
    if (v39 == *MEMORY[0x277D45478])
    {
      (*(v17 + 8))(v22, v38);
    }

    else if (v39 == *MEMORY[0x277D45480])
    {
      (*(v17 + 8))(v22, v75);
    }

    else if (v39 != *MEMORY[0x277D45470] && v39 != *MEMORY[0x277D45468])
    {
      result = sub_21DBFC63C();
      __break(1u);
      return result;
    }
  }

  (*(v65 + 16))(v64, v5 + OBJC_IVAR____TtC15RemindersUICore41TTRShowCustomSmartListMonitorableDataView_sortingStyle, v66);
  (*(v17 + 16))(v19, v5 + v37, v75);
  v40 = v78;
  (*(v23 + 16))(v63, v27, v78);
  (*(v68 + 104))(v67, *MEMORY[0x277D45460], v69);
  v41 = v74;
  sub_21DBF737C();
  v42 = v72;
  v43 = v73;
  v45 = v76;
  v44 = v77;
  sub_21DBF6CBC();
  if (v42)
  {

    (*(v70 + 8))(v41, v71);
    (*(v23 + 8))(v27, v40);
  }

  else
  {
    v46 = v54;
    v47 = *(v54 + 48);
    v48 = v58;
    v76 = v45;
    v77 = v44;
    v49 = v57;
    sub_21DBF76DC();
    *(v48 + v47) = sub_21DBF76BC();
    v50 = v55;
    sub_21D0D3954(v48, v55, &qword_27CE63798, &qword_21DC2FFD8);
    v41 = *(v50 + *(v46 + 48));
    v51 = sub_21DBF6C5C();
    (*(*(v51 - 8) + 32))(v59, v50, v51);
    sub_21DBF76CC();

    sub_21D0CF7E0(v48, &qword_27CE63798, &qword_21DC2FFD8);
    (*(v56 + 8))(v43, v49);
    (*(v70 + 8))(v74, v71);
    (*(v23 + 8))(v27, v78);
  }

  return v41;
}

uint64_t sub_21D8CFCAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, BOOL *a5@<X8>)
{
  v9 = a1 + OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v11 = result;
  if (result)
  {
    v12 = *(v9 + 8);
    ObjectType = swift_getObjectType();
    (*(v12 + 24))(a2, a3, a4, ObjectType, v12);
    result = swift_unknownObjectRelease();
  }

  *a5 = v11 == 0;
  return result;
}

uint64_t sub_21D8CFD7C(unsigned __int8 *a1)
{
  v2 = sub_21DBF70DC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v104 = &v95 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_21DBF71BC();
  v102 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v101 = &v95 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C288, &unk_21DC1A810);
  v98 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v103 = &v95 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v109 = &v95 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D400, &unk_21DC195F0);
  MEMORY[0x28223BE20](v9 - 8);
  v97 = &v95 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58560, &unk_21DC09540);
  MEMORY[0x28223BE20](v11 - 8);
  v100 = &v95 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D378, &qword_21DC19530);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v95 - v14;
  v16 = sub_21DBF719C();
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v95 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_21DBF6C5C();
  v19 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v110 = &v95 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *a1;
  v106 = v19;
  v105 = v21;
  if (!v21)
  {
    v112 = v2;
    v22 = OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_smartList;
    v23 = v113;
    swift_beginAccess();
    v24 = *(v23 + v22);
    if (v24)
    {
      v25 = [v24 objectID];
      v26 = 1;
    }

    else
    {
      v25 = 0;
      v26 = 2;
    }

    v99 = v3;
    if (qword_280D1AA10 != -1)
    {
      swift_once();
    }

    v27 = qword_280D1AA18;
    type metadata accessor for TTRRemindersListDataModelSourceShowCompletedContext();
    v28 = swift_allocObject();
    v29 = sub_21D193548(v25, v26, v27, v28);

    v30 = v113;
    *(v113 + OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_showCompletedContextInstance) = v29;

    swift_beginAccess();
    v29[3] = &protocol witness table for TTRShowCustomSmartListDataModelSource;
    swift_unknownObjectWeakAssign();

    v31 = *(v30 + v22);
    if (v31)
    {
      v32 = type metadata accessor for TTRRemindersListDataModelSourceLayoutContext();
      v117 = v31;
      v118 = 1;
      v33 = *(v113 + OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_userDefaults + 24);
      v34 = *(v113 + OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_userDefaults + 32);
      v35 = __swift_project_boxed_opaque_existential_1((v113 + OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_userDefaults), v33);
      v36 = MEMORY[0x28223BE20](v35);
      v38 = &v95 - v37;
      (*(v39 + 16))(&v95 - v37, v36);
      v40 = *(v34 + 8);
      v41 = v31;
      v42 = sub_21D6F1094(&v117, v38, v32, v33, v40);
      if (v42)
      {
        swift_beginAccess();
        *(v42 + 32) = &protocol witness table for TTRShowCustomSmartListDataModelSource;
        swift_unknownObjectWeakAssign();
      }
    }

    else
    {
      v42 = 0;
    }

    v2 = v112;
    v3 = v99;
    v19 = v106;
    v21 = v105;
    *(v113 + OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_layoutContextInstance) = v42;
  }

  v112 = OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_dataViewMonitor;
  swift_beginAccess();
  if (v21 == 10 || *(v113 + v112))
  {
    v43 = v113 + OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_delegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v44 = *(v43 + 1);
      ObjectType = swift_getObjectType();
      v116[0] = v21;
      (*(*(v44 + 8) + 16))(v116, ObjectType);
      swift_unknownObjectRelease();
    }
  }

  v46 = OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_smartList;
  v47 = v113;
  swift_beginAccess();
  v48 = *(v47 + v46);
  if (v48)
  {
    v49 = v48;
    sub_21DBF72BC();
    v50 = sub_21DBF72DC();
    (*(*(v50 - 8) + 56))(v15, 0, 1, v50);
    MEMORY[0x223D3F930](MEMORY[0x277D84F90], v15, 2, MEMORY[0x277D84F90], MEMORY[0x277D84F90]);
    v96 = v49;
    v51 = sub_21DBFAE4C();
    v52 = sub_21DBFB1AC();
    v53 = v100;
    (*(*(v52 - 8) + 56))(v100, 1, 1, v52);
    MEMORY[0x223D3F3F0](v18, v51, v53);
    v54 = *(v113 + v112);
    if (v54)
    {
      v55 = *(*v54 + 104);
      swift_beginAccess();
      v56 = v54 + v55;
      v57 = v97;
      sub_21D0D3954(v56, v97, &qword_27CE5D400, &unk_21DC195F0);
      v58 = v107;
      if ((*(v98 + 48))(v57, 1, v107) == 1)
      {
        sub_21D0CF7E0(v57, &qword_27CE5D400, &unk_21DC195F0);
        v59 = 0;
      }

      else
      {
        v59 = *&v57[*(v58 + 48)];
        (*(v19 + 8))(v57, v111);
      }
    }

    else
    {
      v59 = 0;
      v58 = v107;
    }

    v61 = *(v58 + 48);
    v62 = v109;
    v97 = *(v19 + 16);
    v98 = v19 + 16;
    (v97)(v109, v110, v111);
    *&v62[v61] = v59;
    v63 = v113 + OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_delegate;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v100 = v59;
    if (Strong)
    {
      v65 = *(v63 + 1);
      v66 = swift_getObjectType();
      v67 = *(v65 + 8);
      v99 = v3;
      v68 = *(v67 + 8);
      v69 = v59;
      v70 = v68(v66, v67);
      v3 = v99;
      v71 = v70;
      LOBYTE(v66) = v72;
      swift_unknownObjectRelease();
      v73 = v101;
      v74 = v102;
      if ((v66 & 1) == 0)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v75 = v59;
      v73 = v101;
      v74 = v102;
    }

    v71 = 30;
LABEL_29:
    v102 = v71;
    v76 = *(v113 + OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_showCompletedContextInstance);
    v77 = v108;
    v78 = v2;
    if (*(v76 + 40) == 1)
    {
      (*(v74 + 104))(v73, *MEMORY[0x277D45468], v108);
    }

    else
    {
      swift_beginAccess();
      *v73 = *(v76 + 48);
      (*(v74 + 104))(v73, *MEMORY[0x277D45480], v77);
      sub_21DBF8E0C();
    }

    v79 = v113;
    v80 = *(v113 + OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_countCompleted);
    v81 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_sortingStyle;
    swift_beginAccess();
    v82 = v104;
    (*(v3 + 16))(v104, v79 + v81, v78);
    type metadata accessor for TTRShowCustomSmartListMonitorableDataView(0);
    v83 = swift_allocObject();
    v84 = v96;
    *(v83 + 16) = v96;
    (*(v74 + 32))(v83 + OBJC_IVAR____TtC15RemindersUICore41TTRShowCustomSmartListMonitorableDataView_showCompleted, v73, v108);
    *(v83 + OBJC_IVAR____TtC15RemindersUICore41TTRShowCustomSmartListMonitorableDataView_countCompleted) = v80;
    (*(v3 + 32))(v83 + OBJC_IVAR____TtC15RemindersUICore41TTRShowCustomSmartListMonitorableDataView_sortingStyle, v82, v78);
    v85 = v103;
    *(v83 + OBJC_IVAR____TtC15RemindersUICore41TTRShowCustomSmartListMonitorableDataView_remindersToPrefetchCount) = v102;
    v86 = *(v107 + 48);
    v87 = v109;
    (v97)(v85, v109, v111);
    *(v85 + v86) = v100;
    v88 = v112;
    swift_beginAccess();
    v89 = v84;
    sub_21D4FFEFC((v79 + v88), v85, v83, v79, v105);
    sub_21D0CF7E0(v85, &qword_27CE5C288, &unk_21DC1A810);
    swift_endAccess();
    v114 = *v79;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DAD0, &qword_21DC2FFC0);
    v114 = sub_21DBFA1AC();
    v115 = v90;
    MEMORY[0x223D42AA0](0x65746164707520, 0xE700000000000000);
    v91 = sub_21DBFAEDC();
    MEMORY[0x28223BE20](v91);
    *(&v95 - 2) = v79;
    *(&v95 - 1) = v89;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE590D0, &qword_21DC0AD80);
    sub_21DBF625C();

    sub_21D0CF7E0(v87, &qword_27CE5C288, &unk_21DC1A810);
    return (*(v106 + 8))(v110, v111);
  }

  v60 = v112;
  if (*(v113 + v112))
  {

    sub_21D737E08();
  }

  v93 = v113;
  *(v113 + v60) = 0;

  v94 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_reminderFetchManager;
  swift_beginAccess();
  *(v93 + v94) = 0;
}

uint64_t sub_21D8D0A68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, BOOL *a3@<X8>)
{
  v5 = a1 + OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v7 = result;
  if (result)
  {
    v8 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    (*(v8 + 16))(a2, ObjectType, v8);
    result = swift_unknownObjectRelease();
  }

  *a3 = v7 == 0;
  return result;
}

void sub_21D8D0B20(void *a1, uint64_t a2)
{
  if (a1)
  {
    v5 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_reminderFetchManager;
    swift_beginAccess();
    if (*(v2 + v5))
    {
      v6 = a1;

      sub_21D4F9F64(v6, a2);
    }

    else
    {
      v7 = OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_smartList;
      swift_beginAccess();
      v8 = *(v2 + v7);
      if (v8)
      {
        v9 = a1;
        v10 = v8;
        v11 = [v10 store];
        sub_21D0D8CF0(0, &qword_280D1B900, 0x277D85C78);
        v12 = v2;
        v13 = sub_21DBFB12C();
        v14 = swift_allocObject();
        *(v14 + 16) = 0;
        v15 = sub_21D87E81C(v11, sub_21D1947D8, v14, v9, v13);

        *(v12 + v5) = v15;

        swift_beginAccess();
        v15[3] = &protocol witness table for TTRShowCustomSmartListDataModelSource;
        swift_unknownObjectWeakAssign();
      }
    }
  }
}

uint64_t sub_21D8D0CF0()
{
  sub_21D157444(v0 + OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_delegate);

  return __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_userDefaults));
}

uint64_t TTRShowCustomSmartListDataModelSource.deinit()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_sortingStyle;
  v2 = sub_21DBF70DC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_21D157444(v0 + OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_delegate);

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_userDefaults));
  return v0;
}

uint64_t TTRShowCustomSmartListDataModelSource.__deallocating_deinit()
{
  TTRShowCustomSmartListDataModelSource.deinit();

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall TTRShowCustomSmartListDataModelSource.showCompletedAllowlistChanged(isCleared:)(Swift::Bool isCleared)
{
  if (isCleared)
  {
    v1 = 3;
  }

  else
  {
    v1 = 2;
  }

  v2 = v1;
  sub_21D8CFD7C(&v2);
}

uint64_t sub_21D8D0F68(char a1)
{
  if (a1)
  {
    v1 = 3;
  }

  else
  {
    v1 = 2;
  }

  v3 = v1;
  return sub_21D8CFD7C(&v3);
}

Swift::Void __swiftcall TTRShowCustomSmartListDataModelSource.listLayoutDidChange(shouldForceUpdate:)(Swift::Bool shouldForceUpdate)
{
  v3 = v1 + OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    (*(*(v4 + 8) + 32))(shouldForceUpdate, ObjectType);
    swift_unknownObjectRelease();
  }
}

uint64_t sub_21D8D102C(char a1)
{
  v3 = v1 + OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    (*(*(v5 + 8) + 32))(a1 & 1, ObjectType);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21D8D10C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, BOOL *a3@<X8>)
{
  v6 = sub_21DBF719C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1 + OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v12 = result;
  if (result)
  {
    v13 = *(v10 + 8);
    ObjectType = swift_getObjectType();
    v17 = v6;
    v15 = ObjectType;
    MEMORY[0x223D3F400]();
    (*(v13 + 24))(0, v9, a2, v15, v13);
    swift_unknownObjectRelease();
    result = (*(v7 + 8))(v9, v17);
  }

  *a3 = v12 == 0;
  return result;
}

uint64_t TTRShowCustomSmartListDataModelSource.monitorWillFetch(_:)()
{
  v1 = v0 + OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(*(v3 + 8) + 24))(ObjectType);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t TTRShowCustomSmartListDataModelSource.monitor(_:didFetch:diff:transitioningFrom:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v63 = a4;
  v9 = sub_21DBF719C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C288, &unk_21DC1A810);
  MEMORY[0x28223BE20](v13);
  v62 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v56 - v16;
  v18 = sub_21DBF6C5C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 16);
  v60 = v18;
  v20(v17, a2);
  v61 = v13;
  v21 = *(v13 + 48);
  v64 = v17;
  *&v17[v21] = a3;
  v22 = OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_dataViewMonitor;
  swift_beginAccess();
  v23 = *(v5 + v22);
  if (!v23)
  {
    v39 = a3;
    return sub_21D0CF7E0(v64, &qword_27CE5C288, &unk_21DC1A810);
  }

  v24 = a3;
  if (v23 != a1)
  {
    return sub_21D0CF7E0(v64, &qword_27CE5C288, &unk_21DC1A810);
  }

  v25 = sub_21DBF6E3C();
  sub_21D4F5F28(v25);
  v27 = v26;

  sub_21D8D0B20(a3, v27);

  v28 = v62;
  sub_21D0D3954(v64, v62, &qword_27CE5C288, &unk_21DC1A810);

  MEMORY[0x223D3F400]();
  v58 = *(v19 + 8);
  v59 = v19 + 8;
  v58(v28, v60);
  v29 = sub_21DBF716C();
  (*(v10 + 8))(v12, v9);
  if (!(v29 >> 62))
  {
    v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v30)
    {
      goto LABEL_5;
    }

LABEL_24:

LABEL_25:
    v46 = v64;
    v47 = v62;
    sub_21D0D3954(v64, v62, &qword_27CE5C288, &unk_21DC1A810);

    v48 = sub_21DBF6C2C();
    v58(v47, v60);
    v49 = OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_smartList;
    swift_beginAccess();
    v50 = *(v5 + v49);
    *(v5 + v49) = v48;

    v65 = 0;
    v66 = 0xE000000000000000;
    sub_21DBFBEEC();
    v65 = *v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DAD0, &qword_21DC2FFC0);
    v51 = sub_21DBFA1AC();
    v53 = v52;

    v65 = v51;
    v66 = v53;
    MEMORY[0x223D42AA0](0xD000000000000012, 0x800000021DC44630);
    v54 = sub_21DBFAEDC();
    MEMORY[0x28223BE20](v54);
    *(&v56 - 4) = v5;
    *(&v56 - 3) = v46;
    *(&v56 - 2) = v63;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE590D0, &qword_21DC0AD80);
    sub_21DBF625C();

    return sub_21D0CF7E0(v64, &qword_27CE5C288, &unk_21DC1A810);
  }

  if (!sub_21DBFBD7C())
  {
    goto LABEL_24;
  }

  v30 = sub_21DBFBD7C();
  if (!v30)
  {
    v57 = v5;

    v32 = MEMORY[0x277D84F90];
LABEL_15:
    v5 = v57;
    if (*(v32 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE585A8, &qword_21DC09560);
      v40 = sub_21DBFC40C();
    }

    else
    {
      v40 = MEMORY[0x277D84F98];
    }

    v67[0] = v40;
    v41 = sub_21DBF8E0C();
    sub_21D1931C0(v41, 1, v67);

    v42 = v67[0];
    v43 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_reminderFetchManager;
    swift_beginAccess();
    if (*(v5 + v43))
    {

      sub_21D188810(v42);
      v45 = v44;

      TTRBatchFetchManager<A>.override(objects:)(v45);
    }

    else
    {
    }

    goto LABEL_25;
  }

LABEL_5:
  v57 = v5;
  v67[0] = MEMORY[0x277D84F90];
  sub_21D18E6B8(0, v30 & ~(v30 >> 63), 0);
  if ((v30 & 0x8000000000000000) == 0)
  {
    v31 = 0;
    v32 = v67[0];
    do
    {
      if ((v29 & 0xC000000000000001) != 0)
      {
        v33 = MEMORY[0x223D44740](v31, v29);
      }

      else
      {
        v33 = *(v29 + 8 * v31 + 32);
      }

      v34 = v33;
      v35 = [v33 objectID];
      v67[0] = v32;
      v37 = *(v32 + 16);
      v36 = *(v32 + 24);
      if (v37 >= v36 >> 1)
      {
        sub_21D18E6B8((v36 > 1), v37 + 1, 1);
        v32 = v67[0];
      }

      ++v31;
      *(v32 + 16) = v37 + 1;
      v38 = v32 + 16 * v37;
      *(v38 + 32) = v35;
      *(v38 + 40) = v34;
    }

    while (v30 != v31);

    goto LABEL_15;
  }

  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_21D8D1940@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, BOOL *a4@<X8>)
{
  v30 = a2;
  v31 = a3;
  v33 = a4;
  v6 = sub_21DBF719C();
  v32 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C288, &unk_21DC1A810);
  MEMORY[0x28223BE20](v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v24 - v13;
  v15 = a1 + OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v17 = result;
  if (result)
  {
    v27 = *(v15 + 8);
    ObjectType = swift_getObjectType();
    v18 = v30;
    sub_21D0D3954(v30, v14, &qword_27CE5C288, &unk_21DC1A810);

    v19 = sub_21DBF6C2C();
    v29 = v4;
    v25 = v19;
    v20 = sub_21DBF6C5C();
    v21 = *(v20 - 8);
    v26 = v6;
    v22 = *(v21 + 8);
    v22(v14, v20);
    sub_21D0D3954(v18, v11, &qword_27CE5C288, &unk_21DC1A810);

    MEMORY[0x223D3F400]();
    v22(v11, v20);
    v23 = v25;
    (*(v27 + 24))(v25, v8, v31, ObjectType);
    swift_unknownObjectRelease();

    result = (*(v32 + 8))(v8, v26);
  }

  *v33 = v17 == 0;
  return result;
}

uint64_t sub_21D8D1C00()
{
  v1 = v0 + OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    (*(*(v3 + 8) + 24))(ObjectType);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21D8D1C7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C288, &unk_21DC1A810) + 48));

  return TTRShowCustomSmartListDataModelSource.monitor(_:didFetch:diff:transitioningFrom:)(a1, a2, v6, a3);
}

Swift::Void __swiftcall TTRShowCustomSmartListDataModelSource.updated(objectIDs:)(Swift::OpaquePointer objectIDs)
{
  sub_21DBFBEEC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DAD0, &qword_21DC2FFC0);
  sub_21DBFA1AC();

  MEMORY[0x223D42AA0](0xD000000000000013, 0x800000021DC44650);
  sub_21DBFAEDC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE590D0, &qword_21DC0AD80);
  sub_21DBF625C();
}

uint64_t sub_21D8D1E20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, BOOL *a3@<X8>)
{
  v5 = a1 + OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v7 = result;
  if (result)
  {
    v8 = *(v5 + 8);
    ObjectType = swift_getObjectType();
    (*(v8 + 32))(a2, ObjectType, v8);
    result = swift_unknownObjectRelease();
  }

  *a3 = v7 == 0;
  return result;
}

void TTRShowCustomSmartListDataModelSource.update(error:)(void *a1)
{
  v2 = v1;
  if (qword_27CE56E08 != -1)
  {
    swift_once();
  }

  v4 = sub_21DBF84BC();
  __swift_project_value_buffer(v4, qword_27CE63718);
  v5 = a1;

  oslog = sub_21DBF84AC();
  v6 = sub_21DBFAEBC();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v20 = v8;
    *v7 = 136315394;
    swift_getErrorValue();
    v9 = sub_21DBFC75C();
    v11 = sub_21D0CDFB4(v9, v10, &v20);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    v12 = 0xE000000000000000;
    v13 = OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_smartList;
    swift_beginAccess();
    v14 = *(v2 + v13);
    if (v14)
    {
      v15 = [v14 description];
      v16 = sub_21DBFA16C();
      v12 = v17;
    }

    else
    {
      v16 = 0;
    }

    MEMORY[0x223D42AA0](v16, v12);

    MEMORY[0x223D42AA0](0x73694C7472616D73, 0xEB00000000203A74);

    v18 = sub_21D0CDFB4(0, 0xE000000000000000, &v20);

    *(v7 + 14) = v18;
    _os_log_impl(&dword_21D0C9000, oslog, v6, "TTRShowCustomSmartListDataModelSource update error {error: %s, dataModelSource: %s}", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D46520](v8, -1, -1);
    MEMORY[0x223D46520](v7, -1, -1);
  }

  else
  {
  }
}

id TTRShowCustomSmartListPrintingDataModelSource.store.getter()
{
  v1 = [*(v0 + 16) store];

  return v1;
}

uint64_t TTRShowCustomSmartListPrintingDataModelSource.init(smartList:showCompleted:sortingStyle:)(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  *(v4 + 16) = a1;
  v7 = OBJC_IVAR____TtC15RemindersUICore45TTRShowCustomSmartListPrintingDataModelSource_showCompleted;
  v8 = sub_21DBF71BC();
  (*(*(v8 - 8) + 32))(v4 + v7, a2, v8);
  v9 = OBJC_IVAR____TtC15RemindersUICore45TTRShowCustomSmartListPrintingDataModelSource_sortingStyle;
  v10 = sub_21DBF70DC();
  (*(*(v10 - 8) + 32))(v4 + v9, a3, v10);
  return v4;
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> TTRShowCustomSmartListPrintingDataModelSource.fetchListTree()(RemindersUICore::TTRRemindersPrintingListTree *__return_ptr retstr)
{
  v2 = v1;
  v80 = retstr;
  v3 = sub_21DBF6F4C();
  v75 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v99 = &v73 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_21DBF6F8C();
  v74 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v101 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D378, &qword_21DC19530);
  MEMORY[0x28223BE20](v6 - 8);
  v79 = &v73 - v7;
  v89 = sub_21DBF6C5C();
  v82 = *(v89 - 1);
  MEMORY[0x28223BE20](v89);
  v81 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21DBF719C();
  v77 = *(v9 - 8);
  v78 = v9;
  MEMORY[0x28223BE20](v9);
  v86 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE637A0, &unk_21DC2FFE0);
  v76 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v88 = &v73 - v11;
  v12 = sub_21DBF714C();
  v97 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v96 = (&v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_21DBF734C();
  v93 = *(v14 - 8);
  v94 = v14;
  MEMORY[0x28223BE20](v14);
  v95 = &v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_21DBF71BC();
  v16 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v92 = &v73 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_21DBF70DC();
  v18 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v20 = &v73 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_21DBF738C();
  v84 = *(v21 - 8);
  v85 = v21;
  MEMORY[0x28223BE20](v21);
  v87 = &v73 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27CE56E08 != -1)
  {
    goto LABEL_25;
  }

  while (1)
  {
    v23 = sub_21DBF84BC();
    __swift_project_value_buffer(v23, qword_27CE63718);

    v24 = sub_21DBF84AC();
    v25 = sub_21DBFAEDC();

    v26 = os_log_type_enabled(v24, v25);
    v100 = v3;
    if (v26)
    {
      v27 = swift_slowAlloc();
      v73 = v12;
      v28 = v2;
      v29 = v27;
      v30 = swift_slowAlloc();
      *v29 = 138412290;
      v31 = [v28[2] objectID];
      *(v29 + 4) = v31;
      *v30 = v31;
      _os_log_impl(&dword_21D0C9000, v24, v25, "PrintingDataModelSource: fetch smartList tree {listID: %@}", v29, 0xCu);
      sub_21D0CF7E0(v30, &unk_27CE60070, &unk_21DC09550);
      v32 = v30;
      v3 = v100;
      MEMORY[0x223D46520](v32, -1, -1);
      v33 = v29;
      v2 = v28;
      v12 = v73;
      MEMORY[0x223D46520](v33, -1, -1);
    }

    v34 = OBJC_IVAR____TtC15RemindersUICore45TTRShowCustomSmartListPrintingDataModelSource_showCompleted;
    (*(v18 + 16))(v20, v2 + OBJC_IVAR____TtC15RemindersUICore45TTRShowCustomSmartListPrintingDataModelSource_sortingStyle, v90);
    (*(v16 + 16))(v92, v2 + v34, v91);
    (*(v93 + 104))(v95, *MEMORY[0x277D45500], v94);
    (*(v97 + 104))(v96, *MEMORY[0x277D45450], v12);
    v35 = v87;
    sub_21DBF737C();
    v36 = [v2[2] store];
    v37 = v98;
    sub_21DBF6CBC();
    if (v37)
    {
      (*(v84 + 8))(v35, v85);

      return;
    }

    v73 = 0;
    v2 = &v109;

    v12 = v81;
    v38 = sub_21DBF76DC();
    MEMORY[0x223D3F400](v38);
    v18 = v82 + 8;
    v98 = *(v82 + 8);
    v39 = v89;
    (v98)(v12, v89);
    sub_21DBF76DC();
    v16 = sub_21DBF6C2C();
    (v98)(v12, v39);
    v40 = sub_21DBF718C();
    v20 = *(v40 + 16);
    if (!v20)
    {
      break;
    }

    v82 = v16;
    v116 = MEMORY[0x277D84F90];
    v98 = v40;
    sub_21D18E6F8(0, v20, 0);
    if (*(v98 + 16))
    {
      v18 = 0;
      v12 = v116;
      v41 = v98 + ((*(v74 + 80) + 32) & ~*(v74 + 80));
      v96 = (v75 + 88);
      v97 = v74 + 16;
      LODWORD(v95) = *MEMORY[0x277D453E0];
      LODWORD(v90) = *MEMORY[0x277D453D8];
      v89 = (v75 + 96);
      v42 = *(v74 + 72);
      v93 = *(v74 + 16);
      v94 = (v74 + 8);
      v91 = v42;
      v92 = v20 - 1;
      do
      {
        v43 = v101;
        (v93)(v101, v41, v117);
        v44 = v99;
        sub_21DBF6F5C();
        v45 = (*v96)(v44, v3);
        if (v45 == v95)
        {
          (*v89)(v44, v3);
          v46 = v44;
          v47 = *v44;
          v48 = *(v44 + 1);
          v49 = *(v46 + 2);

          *&v104 = v48;
          *(&v104 + 1) = v49;
          v105 = 0u;
          v106 = 0u;
          v107 = 0u;
          LODWORD(v108[0]) = 192;
          BYTE4(v108[0]) = 3;
          *(v108 + 5) = v102;
          BYTE7(v108[0]) = v103;
          *(v108 + 8) = 0u;
          *(&v108[1] + 8) = 0u;
          *(&v108[2] + 8) = 0u;
          WORD4(v108[3]) = 255;
          nullsub_1();
        }

        else
        {
          if (v45 != v90)
          {
            sub_21DBFC63C();
            __break(1u);
            return;
          }

          sub_21D6EEF24(&v104);
          v43 = v101;
        }

        v20 = sub_21DBF6F7C();
        v113 = v108[0];
        v114 = v108[1];
        v115[0] = v108[2];
        *(v115 + 10) = *(&v108[2] + 10);
        v109 = v104;
        v110 = v105;
        v111 = v106;
        v112 = v107;
        (*v94)(v43, v117);
        v106 = v111;
        v107 = v112;
        v108[2] = v115[0];
        v108[3] = v115[1];
        v108[0] = v113;
        v108[1] = v114;
        v104 = v109;
        v105 = v110;
        v116 = v12;
        v16 = *(v12 + 16);
        v50 = *(v12 + 24);
        if (v16 >= v50 >> 1)
        {
          sub_21D18E6F8((v50 > 1), v16 + 1, 1);
          v12 = v116;
        }

        *(v12 + 16) = v16 + 1;
        v51 = v12 + 136 * v16;
        v52 = v104;
        v53 = v105;
        v54 = v107;
        *(v51 + 64) = v106;
        *(v51 + 80) = v54;
        *(v51 + 32) = v52;
        *(v51 + 48) = v53;
        v55 = v108[0];
        v56 = v108[1];
        v57 = v108[3];
        *(v51 + 128) = v108[2];
        *(v51 + 144) = v57;
        *(v51 + 96) = v55;
        *(v51 + 112) = v56;
        *(v51 + 160) = v20;
        if (v92 == v18)
        {

          v16 = v82;
          goto LABEL_20;
        }

        v41 += v91;
        ++v18;
        v3 = v100;
      }

      while (v18 < *(v98 + 16));
    }

    __break(1u);
LABEL_25:
    swift_once();
  }

  v12 = MEMORY[0x277D84F90];
LABEL_20:
  v58 = [v16 name];
  v117 = sub_21DBFA16C();
  v101 = v59;

  type metadata accessor for TTRListColors();
  *(&v105 + 1) = sub_21DBF63FC();
  *&v106 = &protocol witness table for REMSmartList;
  *&v104 = v16;
  v99 = v16;
  static TTRListColors.color(for:)(&v104, &v109);
  sub_21D0CF7E0(&v104, &qword_27CE59DC0, &qword_21DC0FBF0);
  v60 = v109;
  v61 = v110;
  v62 = *(&v111 + 1);
  v98 = v111;
  v63 = v112;
  v104 = v109;
  v105 = v110;
  v64 = *(&v110 + 1);
  v106 = v111;
  LOBYTE(v107) = v112;
  v100 = TTRListColors.Color.nativeColor.getter();
  sub_21D1078C0(v60, *(&v60 + 1), v61, v64, v98, v62, v63);
  v65 = v79;
  v66 = v86;
  sub_21DBF715C();
  v67 = sub_21DBF72DC();
  v68 = *(v67 - 8);
  v69 = (*(v68 + 48))(v65, 1, v67);
  if (v69 == 1)
  {

    (*(v77 + 8))(v66, v78);
    (*(v76 + 8))(v88, v83);
    (*(v84 + 8))(v87, v85);
    sub_21D0CF7E0(v65, &qword_27CE5D378, &qword_21DC19530);
    v70 = 0;
  }

  else
  {
    v70 = sub_21DBF72AC();

    (*(v77 + 8))(v66, v78);
    (*(v76 + 8))(v88, v83);
    (*(v84 + 8))(v87, v85);
    (*(v68 + 8))(v65, v67);
  }

  v71 = v80;
  v72 = v101;
  v80->listName._countAndFlagsBits = v117;
  v71->listName._object = v72;
  v71->listColor.super.isa = v100;
  v71->count.value = v70;
  v71->count.is_nil = v69 == 1;
  v71->sections._rawValue = v12;
  v71->reminderColorSource = RemindersUICore_TTRRemindersPrintingViewModel_ReminderColorSource_parentListColor;
}

id sub_21D8D302C()
{
  v1 = [*(*v0 + 16) store];

  return v1;
}

uint64_t TTRShowCustomSmartListDataModelSourceDeleteCompletedContext.listForBatchDelete.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore59TTRShowCustomSmartListDataModelSourceDeleteCompletedContext_listForBatchDelete;
  v4 = sub_21DBF806C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t TTRShowCustomSmartListDataModelSourceDeleteCompletedContext.init(customSmartList:)(void *a1)
{
  v3 = sub_21DBF806C();
  v4 = *(v3 - 8);
  *&v5 = MEMORY[0x28223BE20](v3).n128_u64[0];
  v7 = (&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = [a1 objectID];

  *v7 = v8;
  (*(v4 + 104))(v7, *MEMORY[0x277D45940], v3);
  (*(v4 + 32))(v1 + OBJC_IVAR____TtC15RemindersUICore59TTRShowCustomSmartListDataModelSourceDeleteCompletedContext_listForBatchDelete, v7, v3);
  return v1;
}

uint64_t TTRShowCustomSmartListDataModelSourceDeleteCompletedContext.deinit()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore59TTRShowCustomSmartListDataModelSourceDeleteCompletedContext_listForBatchDelete;
  v2 = sub_21DBF806C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t TTRShowCustomSmartListDataModelSourceDeleteCompletedContext.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore59TTRShowCustomSmartListDataModelSourceDeleteCompletedContext_listForBatchDelete;
  v2 = sub_21DBF806C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_21D8D3320@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore59TTRShowCustomSmartListDataModelSourceDeleteCompletedContext_listForBatchDelete;
  v4 = sub_21DBF806C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t TTRShowCustomSmartListMonitorableDataView.init(smartList:showCompleted:countCompleted:sortingStyle:remindersToPrefetchCount:)(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, __n128 a6)
{
  v10 = *a3;
  *(v6 + 16) = a1;
  v11 = OBJC_IVAR____TtC15RemindersUICore41TTRShowCustomSmartListMonitorableDataView_showCompleted;
  v12 = sub_21DBF71BC();
  (*(*(v12 - 8) + 32))(v6 + v11, a2, v12);
  *(v6 + OBJC_IVAR____TtC15RemindersUICore41TTRShowCustomSmartListMonitorableDataView_countCompleted) = v10;
  v13 = OBJC_IVAR____TtC15RemindersUICore41TTRShowCustomSmartListMonitorableDataView_sortingStyle;
  v14 = sub_21DBF70DC();
  (*(*(v14 - 8) + 32))(v6 + v13, a4, v14);
  *(v6 + OBJC_IVAR____TtC15RemindersUICore41TTRShowCustomSmartListMonitorableDataView_remindersToPrefetchCount) = a5;
  return v6;
}

uint64_t sub_21D8D34A4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  result = TTRShowCustomSmartListMonitorableDataView.fetchData(from:userInteractive:)(a1, a2, a3, a4);
  if (!v4)
  {
    v7 = result;
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C288, &unk_21DC1A810);
    *(a1 + *(result + 48)) = v7;
  }

  return result;
}

void sub_21D8D3540(uint64_t a1)
{
  v34 = a1;
  v2 = sub_21DBF76AC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v37 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C280, &unk_21DC15DA0);
  MEMORY[0x28223BE20](v5);
  v7 = &v32 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D400, &unk_21DC195F0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v32 - v9;
  v36 = sub_21DBF6C5C();
  v38 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v32 - v14;
  v16 = OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_dataViewMonitor;
  swift_beginAccess();
  v35 = v1;
  v17 = *(v1 + v16);
  if (v17)
  {
    v32 = v3;
    v33 = v2;
    v18 = *(*v17 + 96);
    swift_beginAccess();
    sub_21D0D3954(v17 + v18, v7, &qword_27CE5C280, &unk_21DC15DA0);
    sub_21DBFC83C();
    sub_21D0CF7E0(v7, &qword_27CE5C280, &unk_21DC15DA0);
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C288, &unk_21DC1A810);
    if ((*(*(v19 - 8) + 48))(v10, 1, v19) == 1)
    {
      sub_21D0CF7E0(v10, &qword_27CE5D400, &unk_21DC195F0);
    }

    else
    {

      v20 = *(v38 + 32);
      v21 = v36;
      v20(v12, v10, v36);
      v20(v15, v12, v21);
      v41[0] = v34;
      swift_getKeyPath(byte_21DC302E0);
      swift_getKeyPath(byte_21DC30310);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DF80, &qword_21DC09CB0);
      sub_21D0D9418(&qword_27CE589E8, &qword_27CE5DF80, &qword_21DC09CB0);
      sub_21D183A0C();
      v22 = sub_21DBFA46C();

      v23 = OBJC_IVAR____TtC15RemindersUICore35TTRRemindersListDataModelSourceBase_reminderFetchManager;
      v24 = v35;
      swift_beginAccess();
      if (*(v24 + v23))
      {

        TTRBatchFetchManager<A>.override(objects:)(v22);
      }

      sub_21D183AA0(v22);
      v26 = v25;

      sub_21D19ED38(v26);

      if (MEMORY[0x277D84F90] >> 62)
      {
        if (sub_21DBFBD7C())
        {
          sub_21DB83C28(MEMORY[0x277D84F90]);
        }

        if (sub_21DBFBD7C())
        {
          sub_21DB83C28(MEMORY[0x277D84F90]);
        }

        if (sub_21DBFBD7C())
        {
          sub_21DB83C28(MEMORY[0x277D84F90]);
        }
      }

      v27 = v37;
      sub_21DBF767C();
      v39 = 0;
      v40 = 0xE000000000000000;
      sub_21DBFBEEC();
      v39 = *v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DAD0, &qword_21DC2FFC0);
      v28 = sub_21DBFA1AC();
      v30 = v29;

      v39 = v28;
      v40 = v30;
      MEMORY[0x223D42AA0](0xD000000000000021, 0x800000021DC448D0);
      v31 = sub_21DBFAEDC();
      MEMORY[0x28223BE20](v31);
      *(&v32 - 4) = v24;
      *(&v32 - 3) = v15;
      *(&v32 - 2) = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE590D0, &qword_21DC0AD80);
      sub_21DBF625C();

      (*(v32 + 8))(v27, v33);
      (*(v38 + 8))(v15, v21);
    }
  }
}

void sub_21D8D3BAC(void *a1)
{
  v2 = v1;
  if (qword_27CE56E08 != -1)
  {
    swift_once();
  }

  v4 = sub_21DBF84BC();
  __swift_project_value_buffer(v4, qword_27CE63718);
  v5 = a1;

  v6 = sub_21DBF84AC();
  v7 = sub_21DBFAEBC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v35 = v9;
    *v8 = 136315394;
    swift_getErrorValue();
    v10 = sub_21DBFC75C();
    v12 = sub_21D0CDFB4(v10, v11, &v35);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    v13 = 0xE000000000000000;
    v38 = 0;
    v39 = 0xE000000000000000;
    v36 = 0x73694C7472616D73;
    v37 = 0xEB00000000203A74;
    v14 = OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_smartList;
    swift_beginAccess();
    v15 = *(v2 + v14);
    if (v15)
    {
      v16 = [v15 description];
      v17 = sub_21DBFA16C();
      v13 = v18;
    }

    else
    {
      v17 = 0;
    }

    MEMORY[0x223D42AA0](v17, v13);

    MEMORY[0x223D42AA0](v36, v37);

    v19 = sub_21D0CDFB4(v38, v39, &v35);

    *(v8 + 14) = v19;
    _os_log_impl(&dword_21D0C9000, v6, v7, "TTRShowCustomSmartListDataModelSource did hit error {error: %s, dataModelSource: %s}", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D46520](v9, -1, -1);
    MEMORY[0x223D46520](v8, -1, -1);
  }

  else
  {
  }

  v20 = OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_smartList;
  swift_beginAccess();
  v21 = *(v2 + v20);
  if (v21)
  {
    v22 = [v21 objectID];
    if (v22)
    {
      v23 = v22;
      v24 = objc_opt_self();
      v25 = sub_21DBF52CC();
      LODWORD(v24) = [v24 isNoSuchObjectError:v25 forObjectID:v23];

      if (v24)
      {
        v26 = v23;
        v27 = sub_21DBF84AC();
        v28 = sub_21DBFAEBC();

        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          v30 = swift_slowAlloc();
          *v29 = 138543362;
          *(v29 + 4) = v26;
          *v30 = v23;
          v31 = v26;
          _os_log_impl(&dword_21D0C9000, v27, v28, "List got deleted {listObjectID: %{public}@}", v29, 0xCu);
          sub_21D0CF7E0(v30, &unk_27CE60070, &unk_21DC09550);
          MEMORY[0x223D46520](v30, -1, -1);
          MEMORY[0x223D46520](v29, -1, -1);
        }

        v32 = v2 + OBJC_IVAR____TtC15RemindersUICore37TTRShowCustomSmartListDataModelSource_delegate;
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v33 = *(v32 + 8);
          ObjectType = swift_getObjectType();
          (*(v33 + 40))(ObjectType, v33);
          swift_unknownObjectRelease();
        }
      }
    }
  }
}

uint64_t sub_21D8D42B4(uint64_t a1, __n128 a2)
{
  result = sub_21DBF71BC();
  if (v3 <= 0x3F)
  {
    result = sub_21DBF70DC();
    if (v4 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_21D8D43F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5D400, &unk_21DC195F0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_21D8D44F8(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;
  if (v2 != v4)
  {
    sub_21D8D45B0(1);
  }
}

void TTRRemindersBoardCellPresentationStatesPresenterCapability.isMultiSelectMode.setter(char a1)
{
  v3 = a1 & 1;
  swift_beginAccess();
  v4 = *(v1 + 16);
  *(v1 + 16) = a1;
  if (v4 != v3)
  {
    sub_21D8D45B0(1);
  }
}

uint64_t sub_21D8D45B0(int a1)
{
  v2 = v1;
  v92 = a1;
  v99 = type metadata accessor for TTRRemindersBoardCellPresentationStates(0);
  MEMORY[0x28223BE20](v99);
  v100 = &v88 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v98 = &v88 - v5;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F2E0, &unk_21DC0F9C0);
  MEMORY[0x28223BE20](v93);
  v96 = &v88 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90, &unk_21DC09290);
  MEMORY[0x28223BE20](v7 - 8);
  v105 = &v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v104 = &v88 - v10;
  MEMORY[0x28223BE20](v11);
  v91 = &v88 - v12;
  MEMORY[0x28223BE20](v13);
  v94 = &v88 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v88 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v88 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v88 - v22;
  v24 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v90 = &v88 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v95 = &v88 - v28;
  MEMORY[0x28223BE20](v29);
  v31 = &v88 - v30;
  MEMORY[0x28223BE20](v32);
  v34 = &v88 - v33;
  v35 = OBJC_IVAR____TtC15RemindersUICore58TTRRemindersBoardCellPresentationStatesPresenterCapability_itemIDWithAnchoredPopover;
  swift_beginAccess();
  v97 = v35;
  sub_21D569DB4(&v2[v35], v23);
  v101 = v25;
  v36 = *(v25 + 48);
  v37 = v36(v23, 1, v24);
  v103 = v24;
  if (v37 != 1)
  {
    sub_21D8D7C90(v23, v34, type metadata accessor for TTRRemindersListViewModel.ItemID);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63810, &unk_21DC30410);
    v41 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE581D0, &qword_21DC08F88) - 8);
    v42 = (*(*v41 + 80) + 32) & ~*(*v41 + 80);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_21DC08D00;
    v44 = v43 + v42;
    v45 = v41[14];
    sub_21D8D7CF8(v34, v44, type metadata accessor for TTRRemindersListViewModel.ItemID);
    *(v44 + v45) = 1;
    v102 = sub_21D1782FC(v43);
    swift_setDeallocating();
    sub_21D0CF7E0(v44, &qword_27CE581D0, &qword_21DC08F88);
    swift_deallocClassInstance();
    sub_21D8D7D60(v34, type metadata accessor for TTRRemindersListViewModel.ItemID);
    v40 = v2;
    v46 = &qword_27CE63000;
    v47 = &qword_27CE63000;
    goto LABEL_21;
  }

  sub_21D0CF7E0(v23, &qword_27CE5FB90, &unk_21DC09290);
  v38 = sub_21D1782FC(MEMORY[0x277D84F90]);
  v39 = OBJC_IVAR____TtC15RemindersUICore58TTRRemindersBoardCellPresentationStatesPresenterCapability_internalEditingItemID;
  swift_beginAccess();
  v89 = v39;
  sub_21D569DB4(&v2[v39], v20);
  v40 = v2;
  if (v36(v20, 1, v24) == 1)
  {
    v102 = v38;
    sub_21D0CF7E0(v20, &qword_27CE5FB90, &unk_21DC09290);
  }

  else
  {
    sub_21D8D7C90(v20, v31, type metadata accessor for TTRRemindersListViewModel.ItemID);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v107[0] = v38;
    sub_21D47950C(1, v31, isUniquelyReferenced_nonNull_native);
    v40 = v2;
    sub_21D8D7D60(v31, type metadata accessor for TTRRemindersListViewModel.ItemID);
    v102 = v107[0];
  }

  v49 = OBJC_IVAR____TtC15RemindersUICore58TTRRemindersBoardCellPresentationStatesPresenterCapability_mouseOverItemID;
  swift_beginAccess();
  sub_21D569DB4(&v40[v49], v17);
  v50 = v103;
  v51 = v36(v17, 1, v103);
  v46 = &qword_27CE63000;
  v52 = v96;
  if (v51 == 1)
  {
    sub_21D0CF7E0(v17, &qword_27CE5FB90, &unk_21DC09290);
    v47 = &qword_27CE63000;
    goto LABEL_21;
  }

  v53 = v95;
  sub_21D8D7C90(v17, v95, type metadata accessor for TTRRemindersListViewModel.ItemID);
  v54 = v94;
  sub_21D8D7CF8(v53, v94, type metadata accessor for TTRRemindersListViewModel.ItemID);
  (*(v101 + 7))(v54, 0, 1, v50);
  v55 = *(v93 + 48);
  sub_21D569DB4(v54, v52);
  sub_21D569DB4(&v40[v89], v52 + v55);
  if (v36(v52, 1, v50) == 1)
  {
    sub_21D0CF7E0(v54, &qword_27CE5FB90, &unk_21DC09290);
    v56 = v36((v52 + v55), 1, v50);
    v57 = v102;
    v47 = &qword_27CE63000;
    if (v56 == 1)
    {
      sub_21D0CF7E0(v52, &qword_27CE5FB90, &unk_21DC09290);
LABEL_18:
      sub_21D8D7D60(v95, type metadata accessor for TTRRemindersListViewModel.ItemID);
      goto LABEL_21;
    }

    goto LABEL_13;
  }

  v58 = v91;
  sub_21D569DB4(v52, v91);
  if (v36((v52 + v55), 1, v50) == 1)
  {
    sub_21D0CF7E0(v54, &qword_27CE5FB90, &unk_21DC09290);
    sub_21D8D7D60(v58, type metadata accessor for TTRRemindersListViewModel.ItemID);
    v57 = v102;
    v47 = &qword_27CE63000;
LABEL_13:
    sub_21D0CF7E0(v52, &qword_27CE5F2E0, &unk_21DC0F9C0);
    goto LABEL_14;
  }

  v61 = v90;
  sub_21D8D7C90(v52 + v55, v90, type metadata accessor for TTRRemindersListViewModel.ItemID);
  v62 = _s15RemindersUICore25TTRRemindersListViewModelC6ItemIDO2eeoiySbAE_AEtFZ_0(v58, v61);
  sub_21D8D7D60(v61, type metadata accessor for TTRRemindersListViewModel.ItemID);
  sub_21D0CF7E0(v54, &qword_27CE5FB90, &unk_21DC09290);
  sub_21D8D7D60(v58, type metadata accessor for TTRRemindersListViewModel.ItemID);
  sub_21D0CF7E0(v52, &qword_27CE5FB90, &unk_21DC09290);
  v57 = v102;
  v47 = &qword_27CE63000;
  if (v62)
  {
    goto LABEL_18;
  }

LABEL_14:
  if (v40[v47[255]] == 1 && (v59 = OBJC_IVAR____TtC15RemindersUICore58TTRRemindersBoardCellPresentationStatesPresenterCapability_isMultiSelected, swift_beginAccess(), v40[v59] != 1))
  {
    v60 = 2;
  }

  else
  {
    v60 = 0;
  }

  v63 = swift_isUniquelyReferenced_nonNull_native();
  v106[0] = v57;
  v64 = v95;
  sub_21D47950C(v60, v95, v63);
  sub_21D8D7D60(v64, type metadata accessor for TTRRemindersListViewModel.ItemID);
  v102 = v106[0];
LABEL_21:
  v65 = v98;
  v66 = 3;
  if (v40[v47[255]] == 1)
  {
    v67 = OBJC_IVAR____TtC15RemindersUICore58TTRRemindersBoardCellPresentationStatesPresenterCapability_isMultiSelected;
    swift_beginAccess();
    if (v40[v67])
    {
      v66 = 3;
    }

    else
    {
      v66 = 4;
    }
  }

  LODWORD(v93) = v66;
  swift_beginAccess();
  LODWORD(v96) = v40[16];
  swift_beginAccess();
  LODWORD(v95) = v40[17];
  swift_beginAccess();
  LODWORD(v94) = v40[18];
  v68 = v46[254];
  swift_beginAccess();
  sub_21D569DB4(&v40[v68], v104);
  sub_21D569DB4(&v40[v97], v105);
  v69 = OBJC_IVAR____TtC15RemindersUICore58TTRRemindersBoardCellPresentationStatesPresenterCapability_itemIDsWithContextMenu;
  swift_beginAccess();
  v70 = *&v40[v69];
  v71 = OBJC_IVAR____TtC15RemindersUICore58TTRRemindersBoardCellPresentationStatesPresenterCapability_itemIDsWithPonderingTextEffect;
  swift_beginAccess();
  v72 = *&v40[v71];
  v73 = v99;
  v74 = *(v99 + 28);
  v75 = *(v101 + 7);
  v76 = v103;
  v75(&v65[v74], 1, 1, v103);
  v101 = v40;
  v77 = v73[8];
  v75(&v65[v77], 1, 1, v76);
  v78 = v65;
  *v65 = v96;
  v65[1] = v95;
  v65[2] = v94;
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21D322950(v104, &v65[v74]);
  v79 = v101;
  sub_21D322950(v105, &v65[v77]);
  *&v65[v73[9]] = v70;
  v80 = &v65[v73[10]];
  *v80 = v93;
  *(v80 + 1) = v102;
  *&v65[v73[11]] = v72;
  v81 = OBJC_IVAR____TtC15RemindersUICore58TTRRemindersBoardCellPresentationStatesPresenterCapability_cellPresentationStates;
  swift_beginAccess();
  v82 = v100;
  sub_21D8D7CF8(&v79[v81], v100, type metadata accessor for TTRRemindersBoardCellPresentationStates);
  LOBYTE(v70) = _s15RemindersUICore39TTRRemindersBoardCellPresentationStatesV2eeoiySbAC_ACtFZ_0(v82, v78);
  sub_21D8D7D60(v82, type metadata accessor for TTRRemindersBoardCellPresentationStates);
  if ((v70 & 1) == 0)
  {
    swift_beginAccess();
    sub_21D8D8054(v78, &v79[v81]);
    swift_endAccess();
    if (v92)
    {
      v83 = &v79[OBJC_IVAR____TtC15RemindersUICore58TTRRemindersBoardCellPresentationStatesPresenterCapability_cellPresentationStatesDidChange];
      swift_beginAccess();
      v84 = *v83;
      if (!*v83)
      {
        sub_21D8D7D60(v78, type metadata accessor for TTRRemindersBoardCellPresentationStates);
        return swift_endAccess();
      }

      v85 = *(v83 + 1);
      swift_endAccess();

      v84(v86);
      sub_21D0D0E88(v84, v85);
    }
  }

  return sub_21D8D7D60(v78, type metadata accessor for TTRRemindersBoardCellPresentationStates);
}

void (*TTRRemindersBoardCellPresentationStatesPresenterCapability.isMultiSelectMode.modify(uint64_t *a1))(uint64_t a1)
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
  *(v4 + 32) = *(v1 + 16);
  return sub_21D8D523C;
}

void sub_21D8D523C(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 24);
  v3 = *(*a1 + 32);
  v4 = *(v2 + 16);
  *(v2 + 16) = v3;
  if (v3 != v4)
  {
    sub_21D8D45B0(1);
  }

  free(v1);
}

void sub_21D8D52C8(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 17);
  *(v3 + 17) = v2;
  if (v2 != v4)
  {
    sub_21D8D45B0(1);
  }
}

void (*TTRRemindersBoardCellPresentationStatesPresenterCapability.hasActiveDragAndDrop.modify(uint64_t *a1))(uint64_t a1)
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
  *(v4 + 32) = *(v1 + 17);
  return sub_21D8D53B0;
}

void sub_21D8D53B0(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 24);
  v3 = *(*a1 + 32);
  v4 = *(v2 + 17);
  *(v2 + 17) = v3;
  if (v3 != v4)
  {
    sub_21D8D45B0(1);
  }

  free(v1);
}

void sub_21D8D543C(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 18);
  *(v3 + 18) = v2;
  if (v2 != v4)
  {
    sub_21D8D45B0(1);
  }
}

void (*TTRRemindersBoardCellPresentationStatesPresenterCapability.hasActiveColumnReordering.modify(uint64_t *a1))(uint64_t a1)
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
  *(v4 + 32) = *(v1 + 18);
  return sub_21D8D5524;
}

void sub_21D8D5524(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 24);
  v3 = *(*a1 + 32);
  v4 = *(v2 + 18);
  *(v2 + 18) = v3;
  if (v3 != v4)
  {
    sub_21D8D45B0(1);
  }

  free(v1);
}

uint64_t sub_21D8D5588(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90, &unk_21DC09290);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - v3;
  sub_21D569DB4(a1, &v6 - v3);
  return TTRRemindersBoardCellPresentationStatesPresenterCapability.editingItemID.setter(v4);
}

uint64_t TTRRemindersBoardCellPresentationStatesPresenterCapability.editingItemID.setter(uint64_t a1)
{
  v3 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v19[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90, &unk_21DC09290);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v19[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F2E0, &unk_21DC0F9C0);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v19[-v12];
  v14 = OBJC_IVAR____TtC15RemindersUICore58TTRRemindersBoardCellPresentationStatesPresenterCapability_internalEditingItemID;
  swift_beginAccess();
  v15 = *(v11 + 56);
  sub_21D569DB4(v1 + v14, v13);
  sub_21D569DB4(a1, &v13[v15]);
  v16 = *(v4 + 48);
  if (v16(v13, 1, v3) != 1)
  {
    sub_21D569DB4(v13, v9);
    if (v16(&v13[v15], 1, v3) != 1)
    {
      sub_21D8D7C90(&v13[v15], v6, type metadata accessor for TTRRemindersListViewModel.ItemID);
      v18 = _s15RemindersUICore25TTRRemindersListViewModelC6ItemIDO2eeoiySbAE_AEtFZ_0(v9, v6);
      sub_21D8D7D60(v6, type metadata accessor for TTRRemindersListViewModel.ItemID);
      sub_21D8D7D60(v9, type metadata accessor for TTRRemindersListViewModel.ItemID);
      sub_21D0CF7E0(v13, &qword_27CE5FB90, &unk_21DC09290);
      if (v18)
      {
        return sub_21D0CF7E0(a1, &qword_27CE5FB90, &unk_21DC09290);
      }

      goto LABEL_7;
    }

    sub_21D8D7D60(v9, type metadata accessor for TTRRemindersListViewModel.ItemID);
LABEL_6:
    sub_21D0CF7E0(v13, &qword_27CE5F2E0, &unk_21DC0F9C0);
LABEL_7:
    swift_beginAccess();
    sub_21D31E91C(a1, v1 + v14);
    swift_endAccess();
    sub_21D8D45B0(1);
    return sub_21D0CF7E0(a1, &qword_27CE5FB90, &unk_21DC09290);
  }

  if (v16(&v13[v15], 1, v3) != 1)
  {
    goto LABEL_6;
  }

  sub_21D0CF7E0(v13, &qword_27CE5FB90, &unk_21DC09290);
  return sub_21D0CF7E0(a1, &qword_27CE5FB90, &unk_21DC09290);
}

uint64_t (*TTRRemindersBoardCellPresentationStatesPresenterCapability.editingItemID.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x80uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 48) = v1;
  v6 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v7 + 64));
  }

  v5[9] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F2E0, &unk_21DC0F9C0);
  v5[10] = v9;
  v10 = *(*(v9 - 8) + 64);
  if (v3)
  {
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v11 = malloc(v10);
  }

  v5[11] = v11;
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90, &unk_21DC09290) - 8) + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(v12);
    v5[13] = malloc(v12);
    v13 = malloc(v12);
  }

  v14 = v13;
  v15 = OBJC_IVAR____TtC15RemindersUICore58TTRRemindersBoardCellPresentationStatesPresenterCapability_internalEditingItemID;
  v5[14] = v13;
  v5[15] = v15;
  swift_beginAccess();
  sub_21D569DB4(v1 + v15, v14);
  return sub_21D8D5AEC;
}

void sub_21D8D5AEC(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v4 = v2[13];
    v3 = v2[14];
    v6 = v2[11];
    v5 = v2[12];
    v7 = v2[9];
    sub_21D569DB4(v3, v5);
    TTRRemindersBoardCellPresentationStatesPresenterCapability.editingItemID.setter(v5);
    goto LABEL_11;
  }

  v8 = v2[14];
  v9 = v2[11];
  v10 = v2[7];
  v11 = v2[8];
  v12 = *(v2[10] + 48);
  sub_21D569DB4(v2[6] + v2[15], v9);
  sub_21D569DB4(v8, v9 + v12);
  v13 = *(v11 + 48);
  if (v13(v9, 1, v10) != 1)
  {
    v14 = v2[7];
    sub_21D569DB4(v2[11], v2[13]);
    v15 = v13(v9 + v12, 1, v14);
    v16 = v2[13];
    if (v15 != 1)
    {
      v20 = v2[11];
      v21 = v2[9];
      sub_21D8D7C90(v9 + v12, v21, type metadata accessor for TTRRemindersListViewModel.ItemID);
      v22 = _s15RemindersUICore25TTRRemindersListViewModelC6ItemIDO2eeoiySbAE_AEtFZ_0(v16, v21);
      sub_21D8D7D60(v21, type metadata accessor for TTRRemindersListViewModel.ItemID);
      sub_21D8D7D60(v16, type metadata accessor for TTRRemindersListViewModel.ItemID);
      sub_21D0CF7E0(v20, &qword_27CE5FB90, &unk_21DC09290);
      if (v22)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    sub_21D8D7D60(v2[13], type metadata accessor for TTRRemindersListViewModel.ItemID);
LABEL_8:
    sub_21D0CF7E0(v2[11], &qword_27CE5F2E0, &unk_21DC0F9C0);
LABEL_9:
    v17 = v2[14];
    v18 = v2[15];
    v19 = v2[6];
    swift_beginAccess();
    sub_21D31E91C(v17, v19 + v18);
    swift_endAccess();
    sub_21D8D45B0(1);
    goto LABEL_10;
  }

  if (v13(v9 + v12, 1, v2[7]) != 1)
  {
    goto LABEL_8;
  }

  sub_21D0CF7E0(v2[11], &qword_27CE5FB90, &unk_21DC09290);
LABEL_10:
  v4 = v2[13];
  v3 = v2[14];
  v6 = v2[11];
  v5 = v2[12];
  v7 = v2[9];
LABEL_11:
  sub_21D0CF7E0(v3, &qword_27CE5FB90, &unk_21DC09290);
  free(v3);
  free(v4);
  free(v5);
  free(v6);
  free(v7);

  free(v2);
}

uint64_t sub_21D8D5D5C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  return sub_21D569DB4(v2 + v4, a2);
}

void (*TTRRemindersBoardCellPresentationStatesPresenterCapability.itemIDWithAnchoredPopover.modify(uint64_t *a1))(char **a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x70uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90, &unk_21DC09290) - 8) + 64);
  if (v3)
  {
    v5[10] = swift_coroFrameAlloc();
    v5[11] = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v5[10] = malloc(v6);
    v5[11] = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  v9 = OBJC_IVAR____TtC15RemindersUICore58TTRRemindersBoardCellPresentationStatesPresenterCapability_itemIDWithAnchoredPopover;
  v5[12] = v7;
  v5[13] = v9;
  swift_beginAccess();
  sub_21D569DB4(v1 + v9, v8);
  return sub_21D8D5EDC;
}

uint64_t (*TTRRemindersBoardCellPresentationStatesPresenterCapability.itemIDsWithContextMenu.modify(uint64_t *a1))()
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
  v5 = OBJC_IVAR____TtC15RemindersUICore58TTRRemindersBoardCellPresentationStatesPresenterCapability_itemIDsWithContextMenu;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  sub_21DBF8E0C();
  return sub_21D8D5F9C;
}

uint64_t sub_21D8D5FAC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90, &unk_21DC09290);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v17[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v13 = &v17[-v12];
  sub_21D569DB4(a1, &v17[-v12]);
  v14 = *a2;
  v15 = *a5;
  swift_beginAccess();
  sub_21D569DB4(v14 + v15, v10);
  swift_beginAccess();
  sub_21D31E91C(v13, v14 + v15);
  swift_endAccess();
  sub_21D8D6210(v10, a5);
  sub_21D0CF7E0(v10, &qword_27CE5FB90, &unk_21DC09290);
  return sub_21D0CF7E0(v13, &qword_27CE5FB90, &unk_21DC09290);
}

uint64_t sub_21D8D6100(uint64_t a1, uint64_t *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90, &unk_21DC09290);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v10[-v6];
  v8 = *a2;
  swift_beginAccess();
  sub_21D569DB4(v2 + v8, v7);
  swift_beginAccess();
  sub_21D31E91C(a1, v2 + v8);
  swift_endAccess();
  sub_21D8D6210(v7, a2);
  sub_21D0CF7E0(a1, &qword_27CE5FB90, &unk_21DC09290);
  return sub_21D0CF7E0(v7, &qword_27CE5FB90, &unk_21DC09290);
}

uint64_t sub_21D8D6210(uint64_t a1, uint64_t *a2)
{
  v5 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90, &unk_21DC09290);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v21 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F2E0, &unk_21DC0F9C0);
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12);
  v15 = &v21 - v14;
  v16 = *a2;
  swift_beginAccess();
  v17 = *(v13 + 56);
  sub_21D569DB4(v2 + v16, v15);
  sub_21D569DB4(a1, &v15[v17]);
  v18 = *(v6 + 48);
  if (v18(v15, 1, v5) == 1)
  {
    if (v18(&v15[v17], 1, v5) == 1)
    {
      return sub_21D0CF7E0(v15, &qword_27CE5FB90, &unk_21DC09290);
    }

    goto LABEL_6;
  }

  sub_21D569DB4(v15, v11);
  if (v18(&v15[v17], 1, v5) == 1)
  {
    sub_21D8D7D60(v11, type metadata accessor for TTRRemindersListViewModel.ItemID);
LABEL_6:
    sub_21D0CF7E0(v15, &qword_27CE5F2E0, &unk_21DC0F9C0);
    return sub_21D8D45B0(1);
  }

  sub_21D8D7C90(&v15[v17], v8, type metadata accessor for TTRRemindersListViewModel.ItemID);
  v20 = _s15RemindersUICore25TTRRemindersListViewModelC6ItemIDO2eeoiySbAE_AEtFZ_0(v11, v8);
  sub_21D8D7D60(v8, type metadata accessor for TTRRemindersListViewModel.ItemID);
  sub_21D8D7D60(v11, type metadata accessor for TTRRemindersListViewModel.ItemID);
  result = sub_21D0CF7E0(v15, &qword_27CE5FB90, &unk_21DC09290);
  if ((v20 & 1) == 0)
  {
    return sub_21D8D45B0(1);
  }

  return result;
}

void (*TTRRemindersBoardCellPresentationStatesPresenterCapability.mouseOverItemID.modify(uint64_t *a1))(char **a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x70uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90, &unk_21DC09290) - 8) + 64);
  if (v3)
  {
    v5[10] = swift_coroFrameAlloc();
    v5[11] = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v5[10] = malloc(v6);
    v5[11] = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  v9 = OBJC_IVAR____TtC15RemindersUICore58TTRRemindersBoardCellPresentationStatesPresenterCapability_mouseOverItemID;
  v5[12] = v7;
  v5[13] = v9;
  swift_beginAccess();
  sub_21D569DB4(v1 + v9, v8);
  return sub_21D8D65F8;
}

void sub_21D8D6604(char **a1, char a2, uint64_t *a3)
{
  v4 = *a1;
  v5 = *(*a1 + 12);
  v6 = *(*a1 + 13);
  v7 = *(*a1 + 10);
  v8 = *(*a1 + 11);
  v9 = *(*a1 + 9);
  if (a2)
  {
    sub_21D569DB4(*(*a1 + 12), v8);
    sub_21D569DB4(v9 + v6, v7);
    swift_beginAccess();
    sub_21D31E91C(v8, v9 + v6);
    swift_endAccess();
    sub_21D8D6210(v7, a3);
    sub_21D0CF7E0(v7, &qword_27CE5FB90, &unk_21DC09290);
  }

  else
  {
    sub_21D569DB4(v9 + v6, v8);
    swift_beginAccess();
    sub_21D31E91C(v5, v9 + v6);
    swift_endAccess();
    sub_21D8D6210(v8, a3);
  }

  sub_21D0CF7E0(v8, &qword_27CE5FB90, &unk_21DC09290);
  sub_21D0CF7E0(v5, &qword_27CE5FB90, &unk_21DC09290);
  free(v5);
  free(v8);
  free(v7);

  free(v4);
}

double sub_21D8D6760(uint64_t *a1)
{
  swift_beginAccess();
  sub_21DBF8E0C();
  return result;
}

void sub_21D8D67A4(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  v8 = *(v6 + v7);
  *(v6 + v7) = v5;
  swift_bridgeObjectRetain_n();
  sub_21D320EEC(v5, v8);
  LOBYTE(v7) = v9;

  if ((v7 & 1) == 0)
  {
    sub_21D8D45B0(1);
  }
}

void sub_21D8D683C(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v2 + v4);
  *(v2 + v4) = a1;
  v6 = sub_21DBF8E0C();
  sub_21D320EEC(v6, v5);
  LOBYTE(v4) = v7;

  if ((v4 & 1) == 0)
  {
    sub_21D8D45B0(1);
  }
}

uint64_t (*TTRRemindersBoardCellPresentationStatesPresenterCapability.itemIDsWithPonderingTextEffect.modify(uint64_t *a1))()
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
  v5 = OBJC_IVAR____TtC15RemindersUICore58TTRRemindersBoardCellPresentationStatesPresenterCapability_itemIDsWithPonderingTextEffect;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  sub_21DBF8E0C();
  return sub_21D8D80B8;
}

void sub_21D8D6958(uint64_t a1, char a2)
{
  v3 = *a1;
  v5 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v6 = *(v5 + v4);
  *(v5 + v4) = *(*a1 + 24);
  v7 = sub_21DBF8E0C();
  if (a2)
  {
    v8 = sub_21DBF8E0C();
    sub_21D320EEC(v8, v6);
    v10 = v9;

    if ((v10 & 1) == 0)
    {
      sub_21D8D45B0(1);
    }
  }

  else
  {
    sub_21D320EEC(v7, v6);
    v12 = v11;

    if ((v12 & 1) == 0)
    {
      sub_21D8D45B0(1);
    }
  }

  free(v3);
}

uint64_t TTRRemindersBoardCellPresentationStatesPresenterCapability.isMultiSelected.getter()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore58TTRRemindersBoardCellPresentationStatesPresenterCapability_isMultiSelected;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_21D8D6A6C(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC15RemindersUICore58TTRRemindersBoardCellPresentationStatesPresenterCapability_isMultiSelected;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  if (v2 != v5)
  {
    sub_21D8D45B0(1);
  }
}

void (*TTRRemindersBoardCellPresentationStatesPresenterCapability.isMultiSelected.modify(uint64_t *a1))(uint64_t a1)
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
  v5 = OBJC_IVAR____TtC15RemindersUICore58TTRRemindersBoardCellPresentationStatesPresenterCapability_isMultiSelected;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_21D8D6B6C;
}

void sub_21D8D6B6C(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 24);
  v2 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v5 = *(v3 + v2);
  *(v3 + v2) = v4;
  if (v4 != v5)
  {
    sub_21D8D45B0(1);
  }

  free(v1);
}

uint64_t TTRRemindersBoardCellPresentationStatesPresenterCapability.cellPresentationStates.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore58TTRRemindersBoardCellPresentationStatesPresenterCapability_cellPresentationStates;
  swift_beginAccess();
  return sub_21D8D7CF8(v1 + v3, a1, type metadata accessor for TTRRemindersBoardCellPresentationStates);
}

uint64_t sub_21D8D6C30@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC15RemindersUICore58TTRRemindersBoardCellPresentationStatesPresenterCapability_cellPresentationStatesDidChange);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_21D0E6070;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_21D0D0E78(v4, v5);
}

uint64_t sub_21D8D6CD0(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_21D11DA58;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC15RemindersUICore58TTRRemindersBoardCellPresentationStatesPresenterCapability_cellPresentationStatesDidChange);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_21D0D0E78(v3, v4);
  return sub_21D0D0E88(v8, v9);
}

uint64_t TTRRemindersBoardCellPresentationStatesPresenterCapability.cellPresentationStatesDidChange.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC15RemindersUICore58TTRRemindersBoardCellPresentationStatesPresenterCapability_cellPresentationStatesDidChange);
  swift_beginAccess();
  v2 = *v1;
  sub_21D0D0E78(*v1, v1[1]);
  return v2;
}

uint64_t TTRRemindersBoardCellPresentationStatesPresenterCapability.cellPresentationStatesDidChange.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC15RemindersUICore58TTRRemindersBoardCellPresentationStatesPresenterCapability_cellPresentationStatesDidChange);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_21D0D0E88(v6, v7);
}

uint64_t TTRRemindersBoardCellPresentationStatesPresenterCapability.__allocating_init(showsInfoButtonWhenSelected:)(uint64_t a1)
{
  v1 = a1;
  v2 = swift_allocObject();
  TTRRemindersBoardCellPresentationStatesPresenterCapability.init(showsInfoButtonWhenSelected:)(v1);
  return v2;
}

uint64_t TTRRemindersBoardCellPresentationStatesPresenterCapability.init(showsInfoButtonWhenSelected:)(char a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90, &unk_21DC09290);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v26 - v7;
  v27 = &v26 - v7;
  v9 = type metadata accessor for TTRRemindersBoardCellPresentationStates(0);
  v10 = (v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + 16) = 0;
  *(v1 + 18) = 0;
  v13 = OBJC_IVAR____TtC15RemindersUICore58TTRRemindersBoardCellPresentationStatesPresenterCapability_itemIDWithAnchoredPopover;
  v14 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  v15 = *(*(v14 - 8) + 56);
  v15(v1 + v13, 1, 1, v14);
  v16 = MEMORY[0x277D84FA0];
  *(v1 + OBJC_IVAR____TtC15RemindersUICore58TTRRemindersBoardCellPresentationStatesPresenterCapability_itemIDsWithContextMenu) = MEMORY[0x277D84FA0];
  v17 = v16;
  v15(v1 + OBJC_IVAR____TtC15RemindersUICore58TTRRemindersBoardCellPresentationStatesPresenterCapability_mouseOverItemID, 1, 1, v14);
  *(v1 + OBJC_IVAR____TtC15RemindersUICore58TTRRemindersBoardCellPresentationStatesPresenterCapability_itemIDsWithPonderingTextEffect) = v17;
  *(v1 + OBJC_IVAR____TtC15RemindersUICore58TTRRemindersBoardCellPresentationStatesPresenterCapability_isMultiSelected) = 0;
  v18 = (v1 + OBJC_IVAR____TtC15RemindersUICore58TTRRemindersBoardCellPresentationStatesPresenterCapability_cellPresentationStatesDidChange);
  *v18 = 0;
  v18[1] = 0;
  v15(v1 + OBJC_IVAR____TtC15RemindersUICore58TTRRemindersBoardCellPresentationStatesPresenterCapability_internalEditingItemID, 1, 1, v14);
  *(v1 + OBJC_IVAR____TtC15RemindersUICore58TTRRemindersBoardCellPresentationStatesPresenterCapability_showsInfoButtonWhenSelected) = a1;
  v15(v8, 1, 1, v14);
  v19 = v5;
  v15(v5, 1, 1, v14);
  v20 = sub_21D1782FC(MEMORY[0x277D84F90]);
  v21 = v10[9];
  v15(&v12[v21], 1, 1, v14);
  v22 = v10[10];
  v15(&v12[v22], 1, 1, v14);
  *v12 = 0;
  v12[2] = 0;
  sub_21D322950(v27, &v12[v21]);
  sub_21D322950(v19, &v12[v22]);
  v23 = MEMORY[0x277D84FA0];
  *&v12[v10[11]] = MEMORY[0x277D84FA0];
  v24 = &v12[v10[12]];
  *v24 = 3;
  *(v24 + 1) = v20;
  *&v12[v10[13]] = v23;
  sub_21D8D7C90(v12, v1 + OBJC_IVAR____TtC15RemindersUICore58TTRRemindersBoardCellPresentationStatesPresenterCapability_cellPresentationStates, type metadata accessor for TTRRemindersBoardCellPresentationStates);
  sub_21D8D45B0(1);
  return v1;
}

uint64_t TTRRemindersBoardCellPresentationStatesPresenterCapability.prepareToInsertAndEdit(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v29 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F2E0, &unk_21DC0F9C0);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v10 = &v28 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90, &unk_21DC09290);
  MEMORY[0x28223BE20](v11 - 8);
  v31 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v28 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v28 - v17;
  v19 = OBJC_IVAR____TtC15RemindersUICore58TTRRemindersBoardCellPresentationStatesPresenterCapability_internalEditingItemID;
  swift_beginAccess();
  v32 = a1;
  sub_21D8D7CF8(a1, v18, type metadata accessor for TTRRemindersListViewModel.ItemID);
  v30 = *(v5 + 56);
  v30(v18, 0, 1, v4);
  v20 = *(v8 + 56);
  v33 = v2;
  sub_21D569DB4(v2 + v19, v10);
  sub_21D569DB4(v18, &v10[v20]);
  v21 = *(v5 + 48);
  if (v21(v10, 1, v4) == 1)
  {
    sub_21D0CF7E0(v18, &qword_27CE5FB90, &unk_21DC09290);
    if (v21(&v10[v20], 1, v4) == 1)
    {
      return sub_21D0CF7E0(v10, &qword_27CE5FB90, &unk_21DC09290);
    }

    goto LABEL_6;
  }

  sub_21D569DB4(v10, v15);
  if (v21(&v10[v20], 1, v4) == 1)
  {
    sub_21D0CF7E0(v18, &qword_27CE5FB90, &unk_21DC09290);
    sub_21D8D7D60(v15, type metadata accessor for TTRRemindersListViewModel.ItemID);
LABEL_6:
    sub_21D0CF7E0(v10, &qword_27CE5F2E0, &unk_21DC0F9C0);
LABEL_7:
    v23 = v31;
    sub_21D8D7CF8(v32, v31, type metadata accessor for TTRRemindersListViewModel.ItemID);
    v30(v23, 0, 1, v4);
    v24 = v33;
    swift_beginAccess();
    sub_21D322950(v23, v24 + v19);
    swift_endAccess();
    return sub_21D8D45B0(0);
  }

  v25 = &v10[v20];
  v26 = v29;
  sub_21D8D7C90(v25, v29, type metadata accessor for TTRRemindersListViewModel.ItemID);
  v27 = _s15RemindersUICore25TTRRemindersListViewModelC6ItemIDO2eeoiySbAE_AEtFZ_0(v15, v26);
  sub_21D8D7D60(v26, type metadata accessor for TTRRemindersListViewModel.ItemID);
  sub_21D0CF7E0(v18, &qword_27CE5FB90, &unk_21DC09290);
  sub_21D8D7D60(v15, type metadata accessor for TTRRemindersListViewModel.ItemID);
  result = sub_21D0CF7E0(v10, &qword_27CE5FB90, &unk_21DC09290);
  if ((v27 & 1) == 0)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t TTRRemindersBoardCellPresentationStatesPresenterCapability.deinit()
{
  sub_21D0CF7E0(v0 + OBJC_IVAR____TtC15RemindersUICore58TTRRemindersBoardCellPresentationStatesPresenterCapability_itemIDWithAnchoredPopover, &qword_27CE5FB90, &unk_21DC09290);

  sub_21D0CF7E0(v0 + OBJC_IVAR____TtC15RemindersUICore58TTRRemindersBoardCellPresentationStatesPresenterCapability_mouseOverItemID, &qword_27CE5FB90, &unk_21DC09290);

  sub_21D8D7D60(v0 + OBJC_IVAR____TtC15RemindersUICore58TTRRemindersBoardCellPresentationStatesPresenterCapability_cellPresentationStates, type metadata accessor for TTRRemindersBoardCellPresentationStates);
  sub_21D0D0E88(*(v0 + OBJC_IVAR____TtC15RemindersUICore58TTRRemindersBoardCellPresentationStatesPresenterCapability_cellPresentationStatesDidChange), *(v0 + OBJC_IVAR____TtC15RemindersUICore58TTRRemindersBoardCellPresentationStatesPresenterCapability_cellPresentationStatesDidChange + 8));
  sub_21D0CF7E0(v0 + OBJC_IVAR____TtC15RemindersUICore58TTRRemindersBoardCellPresentationStatesPresenterCapability_internalEditingItemID, &qword_27CE5FB90, &unk_21DC09290);
  return v0;
}

uint64_t TTRRemindersBoardCellPresentationStatesPresenterCapability.__deallocating_deinit()
{
  sub_21D0CF7E0(v0 + OBJC_IVAR____TtC15RemindersUICore58TTRRemindersBoardCellPresentationStatesPresenterCapability_itemIDWithAnchoredPopover, &qword_27CE5FB90, &unk_21DC09290);

  sub_21D0CF7E0(v0 + OBJC_IVAR____TtC15RemindersUICore58TTRRemindersBoardCellPresentationStatesPresenterCapability_mouseOverItemID, &qword_27CE5FB90, &unk_21DC09290);

  sub_21D8D7D60(v0 + OBJC_IVAR____TtC15RemindersUICore58TTRRemindersBoardCellPresentationStatesPresenterCapability_cellPresentationStates, type metadata accessor for TTRRemindersBoardCellPresentationStates);
  sub_21D0D0E88(*(v0 + OBJC_IVAR____TtC15RemindersUICore58TTRRemindersBoardCellPresentationStatesPresenterCapability_cellPresentationStatesDidChange), *(v0 + OBJC_IVAR____TtC15RemindersUICore58TTRRemindersBoardCellPresentationStatesPresenterCapability_cellPresentationStatesDidChange + 8));
  sub_21D0CF7E0(v0 + OBJC_IVAR____TtC15RemindersUICore58TTRRemindersBoardCellPresentationStatesPresenterCapability_internalEditingItemID, &qword_27CE5FB90, &unk_21DC09290);

  return swift_deallocClassInstance();
}

void _s15RemindersUICore58TTRRemindersBoardCellPresentationStatesPresenterCapabilityC20hasActiveDragAndDropSbvs_0(char a1)
{
  v3 = a1 & 1;
  swift_beginAccess();
  v4 = *(v1 + 17);
  *(v1 + 17) = a1;
  if (v4 != v3)
  {
    sub_21D8D45B0(1);
  }
}

void _s15RemindersUICore58TTRRemindersBoardCellPresentationStatesPresenterCapabilityC25hasActiveColumnReorderingSbvs_0(char a1)
{
  v3 = a1 & 1;
  swift_beginAccess();
  v4 = *(v1 + 18);
  *(v1 + 18) = a1;
  if (v4 != v3)
  {
    sub_21D8D45B0(1);
  }
}

uint64_t TTRRemindersBoardCellPresentationStatesPresenterCapability.requestHandleMouseOver(_:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90, &unk_21DC09290);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v8 = &v11[-v7];
  sub_21D569DB4(a1, &v11[-v7]);
  v9 = OBJC_IVAR____TtC15RemindersUICore58TTRRemindersBoardCellPresentationStatesPresenterCapability_mouseOverItemID;
  swift_beginAccess();
  sub_21D569DB4(v1 + v9, v5);
  swift_beginAccess();
  sub_21D31E91C(v8, v1 + v9);
  swift_endAccess();
  sub_21D8D6210(v5, &OBJC_IVAR____TtC15RemindersUICore58TTRRemindersBoardCellPresentationStatesPresenterCapability_mouseOverItemID);
  sub_21D0CF7E0(v5, &qword_27CE5FB90, &unk_21DC09290);
  return sub_21D0CF7E0(v8, &qword_27CE5FB90, &unk_21DC09290);
}

void _s15RemindersUICore58TTRRemindersBoardCellPresentationStatesPresenterCapabilityC15isMultiSelectedSbvs_0(char a1)
{
  v3 = a1 & 1;
  v4 = OBJC_IVAR____TtC15RemindersUICore58TTRRemindersBoardCellPresentationStatesPresenterCapability_isMultiSelected;
  swift_beginAccess();
  v5 = *(v1 + v4);
  *(v1 + v4) = a1;
  if (v5 != v3)
  {
    sub_21D8D45B0(1);
  }
}

Swift::Void __swiftcall TTRRemindersBoardCellPresentationStatesPresenterCapability.requestHandleContextMenuStateChange(_:)(Swift::OpaquePointer_optional a1)
{
  if (a1.value._rawValue)
  {
    v2 = sub_21DBF8E0C();
    v3 = sub_21D19EE98(v2);

    v4 = OBJC_IVAR____TtC15RemindersUICore58TTRRemindersBoardCellPresentationStatesPresenterCapability_itemIDsWithContextMenu;
    swift_beginAccess();
    v5 = *(v1 + v4);
    *(v1 + v4) = v3;
    v6 = sub_21DBF8E0C();
    sub_21D320EEC(v6, v5);
    LOBYTE(v4) = v7;

    if (v4)
    {
      return;
    }
  }

  else
  {
    v8 = OBJC_IVAR____TtC15RemindersUICore58TTRRemindersBoardCellPresentationStatesPresenterCapability_itemIDsWithContextMenu;
    swift_beginAccess();
    v9 = *(v1 + v8);
    v10 = MEMORY[0x277D84FA0];
    *(v1 + v8) = MEMORY[0x277D84FA0];
    sub_21D320EEC(v10, v9);
    LOBYTE(v8) = v11;

    if (v8)
    {
      return;
    }
  }

  sub_21D8D45B0(1);
}

uint64_t sub_21D8D7B48(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90, &unk_21DC09290);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v8 = &v11[-v7];
  sub_21D569DB4(a1, &v11[-v7]);
  v9 = OBJC_IVAR____TtC15RemindersUICore58TTRRemindersBoardCellPresentationStatesPresenterCapability_mouseOverItemID;
  swift_beginAccess();
  sub_21D569DB4(v1 + v9, v5);
  swift_beginAccess();
  sub_21D31E91C(v8, v1 + v9);
  swift_endAccess();
  sub_21D8D6210(v5, &OBJC_IVAR____TtC15RemindersUICore58TTRRemindersBoardCellPresentationStatesPresenterCapability_mouseOverItemID);
  sub_21D0CF7E0(v5, &qword_27CE5FB90, &unk_21DC09290);
  return sub_21D0CF7E0(v8, &qword_27CE5FB90, &unk_21DC09290);
}

uint64_t sub_21D8D7C90(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D8D7CF8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D8D7D60(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t keypath_get_11Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  return sub_21D569DB4(v4 + v5, a3);
}

double keypath_get_15Tm@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  *a3 = *(v4 + v5);
  sub_21DBF8E0C();
  return result;
}

uint64_t type metadata accessor for TTRRemindersBoardCellPresentationStatesPresenterCapability(uint64_t a1)
{
  result = qword_27CE63800;
  if (!qword_27CE63800)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21D8D7F28(uint64_t a1)
{
  sub_21D322C1C(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for TTRRemindersBoardCellPresentationStates(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_21D8D8054(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRRemindersBoardCellPresentationStates(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t TTRVisualFormatBuilder.init(metrics:views:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = MEMORY[0x277D84F90];
  a3[1] = a2;
  a3[2] = v3;
  *a3 = result;
  return result;
}

Swift::Void __swiftcall TTRVisualFormatBuilder.add(_:options:)(Swift::String _, NSLayoutFormatOptions options)
{
  v4 = objc_opt_self();
  v5 = sub_21DBFA12C();
  sub_21D188D70(*v2);
  sub_21D188F5C(v6);

  v7 = sub_21DBF9E5C();

  sub_21D188F70(v2[1]);
  v8 = sub_21DBF9E5C();

  v9 = [v4 constraintsWithVisualFormat:v5 options:options metrics:v7 views:v8];

  sub_21D3677A0();
  v10 = sub_21DBFA5EC();

  sub_21D562934(v10);
}

Swift::Void __swiftcall TTRVisualFormatBuilder.activateConstraints()()
{
  v0 = objc_opt_self();
  sub_21D3677A0();
  v1 = sub_21DBFA5DC();
  [v0 activateConstraints_];
}

double destroy for TTRVisualFormatBuilder()
{

  return result;
}

uint64_t *sub_21D8D82EC(uint64_t *a1, uint64_t *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  a1[2] = a2[2];
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  return a1;
}

uint64_t *assignWithCopy for TTRVisualFormatBuilder(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;
  sub_21DBF8E0C();

  a1[1] = a2[1];
  sub_21DBF8E0C();

  a1[2] = a2[2];
  sub_21DBF8E0C();

  return a1;
}

uint64_t assignWithTake for TTRVisualFormatBuilder(uint64_t a1, uint64_t a2)
{

  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);

  return a1;
}

id REMColor.nativeColor.getter()
{
  [v0 red];
  v2 = v1;
  [v0 green];
  v4 = v3;
  [v0 blue];
  v6 = v5;
  [v0 alpha];
  v8 = v7;
  v9 = objc_allocWithZone(MEMORY[0x277D75348]);

  return [v9 initWithRed:v2 green:v4 blue:v6 alpha:v8];
}

uint64_t TTRTreeStorageDerivedRerootedTree.__allocating_init(upstreamTree:rootItem:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  TTRTreeStorageDerivedRerootedTree.init(upstreamTree:rootItem:)(a1, a2);
  return v4;
}

char *TTRTreeStorageDerivedRerootedTree.init(upstreamTree:rootItem:)(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  *(v2 + 2) = a1;
  v5 = *(v4 + 104);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(&v2[v5], a2, AssociatedTypeWitness);
  return v2;
}

uint64_t TTRTreeStorageDerivedRerootedTree.numberOfChildren(of:)(uint64_t a1)
{
  v2 = v1;
  v4 = *(*(*(*v2 + 88) + 8) + 8);
  v5 = *(*v2 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = swift_getAssociatedTypeWitness();
  v47 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v46 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v41 - v10;
  v12 = sub_21DBFBA8C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v48 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v41 - v16;
  v18 = *(AssociatedTypeWitness - 8);
  v20 = MEMORY[0x28223BE20](v19);
  v49 = &v41 - v21;
  v22 = a1;
  v24 = v23;
  (*(v13 + 16))(v17, v22, v23, v20);
  v50 = v18;
  if ((*(v18 + 48))(v17, 1, AssociatedTypeWitness) == 1)
  {
    (*(v13 + 8))(v17, v24);
    return 1;
  }

  else
  {
    v41 = v13;
    v42 = v24;
    v43 = v5;
    v44 = v4;
    (*(v50 + 32))(v49, v17, AssociatedTypeWitness);
    v26 = AssociatedConformanceWitness;
    v27 = *(AssociatedConformanceWitness + 24);
    v27(AssociatedTypeWitness, AssociatedConformanceWitness);
    v28 = v46;
    v27(AssociatedTypeWitness, v26);
    swift_getAssociatedConformanceWitness();
    v29 = sub_21DBFA10C();
    v30 = *(v47 + 8);
    v30(v28, v7);
    v30(v11, v7);
    swift_beginAccess();
    v51 = v2[2];
    if (v29)
    {
      v31 = v50;
      v32 = v48;
      (*(v50 + 56))(v48, 1, 1, AssociatedTypeWitness);
      v33 = v44;
      v34 = *(v44 + 24);
      swift_unknownObjectRetain();
      v35 = v34(v32, v43, v33);
      (*(v41 + 8))(v32, v42);
      swift_unknownObjectRelease();
      (*(v31 + 8))(v49, AssociatedTypeWitness);
    }

    else
    {
      v37 = v49;
      v36 = v50;
      v38 = v48;
      (*(v50 + 16))(v48, v49, AssociatedTypeWitness);
      (*(v36 + 56))(v38, 0, 1, AssociatedTypeWitness);
      v39 = v44;
      v40 = *(v44 + 24);
      swift_unknownObjectRetain();
      v35 = v40(v38, v43, v39);
      (*(v41 + 8))(v38, v42);
      swift_unknownObjectRelease();
      (*(v36 + 8))(v37, AssociatedTypeWitness);
    }

    return v35;
  }
}

uint64_t TTRTreeStorageDerivedRerootedTree.child(_:of:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v43 = a1;
  v46 = a3;
  v6 = *(*(*(*v4 + 88) + 8) + 8);
  v7 = *(*v4 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v44 = v6;
  v42 = v7;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = swift_getAssociatedTypeWitness();
  v40 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v39 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v37 - v13;
  v15 = sub_21DBFBA8C();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v41 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v37 - v19;
  v21 = *(AssociatedTypeWitness - 8);
  v23 = MEMORY[0x28223BE20](v22);
  v45 = &v37 - v24;
  (*(v16 + 16))(v20, a2, v15, v23);
  if ((*(v21 + 48))(v20, 1, AssociatedTypeWitness) == 1)
  {
    (*(v16 + 8))(v20, v15);
    return (*(v21 + 16))(v46, v4 + *(*v4 + 104), AssociatedTypeWitness);
  }

  else
  {
    v37 = v16;
    v38 = v15;
    (*(v21 + 32))(v45, v20, AssociatedTypeWitness);
    v26 = *(AssociatedConformanceWitness + 24);
    v26(AssociatedTypeWitness, AssociatedConformanceWitness);
    v27 = v4 + 2;
    v28 = v39;
    v26(AssociatedTypeWitness, AssociatedConformanceWitness);
    swift_getAssociatedConformanceWitness();
    v29 = sub_21DBFA10C();
    v30 = *(v40 + 8);
    v30(v28, v10);
    v30(v14, v10);
    swift_beginAccess();
    v47 = *v27;
    v31 = v41;
    if (v29)
    {
      (*(v21 + 56))(v41, 1, 1, AssociatedTypeWitness);
      v32 = v44;
      v33 = *(v44 + 32);
      swift_unknownObjectRetain();
      v33(v43, v31, v42, v32);
      (*(v37 + 8))(v31, v38);
      swift_unknownObjectRelease();
      return (*(v21 + 8))(v45, AssociatedTypeWitness);
    }

    else
    {
      v34 = v45;
      (*(v21 + 16))(v41, v45, AssociatedTypeWitness);
      (*(v21 + 56))(v31, 0, 1, AssociatedTypeWitness);
      v35 = v44;
      v36 = *(v44 + 32);
      swift_unknownObjectRetain();
      v36(v43, v31, v42, v35);
      (*(v37 + 8))(v31, v38);
      swift_unknownObjectRelease();
      return (*(v21 + 8))(v34, AssociatedTypeWitness);
    }
  }
}

uint64_t TTRTreeStorageDerivedRerootedTree.item(withID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v21 = a1;
  v22 = a2;
  v4 = *v2;
  v5 = *(*(v4[11] + 8) + 8);
  v6 = v4[10];
  swift_getAssociatedTypeWitness();
  v19 = v6;
  v20 = v5;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v11 = &v19 - v10;
  v12 = *(AssociatedConformanceWitness + 24);
  v13 = v4[13];
  v14 = swift_checkMetadataState();
  v12(v14, AssociatedConformanceWitness);
  v15 = v21;
  swift_getAssociatedConformanceWitness();
  LOBYTE(AssociatedConformanceWitness) = sub_21DBFA10C();
  (*(v9 + 8))(v11, AssociatedTypeWitness);
  if (AssociatedConformanceWitness)
  {
    v16 = *(v14 - 8);
    v17 = v22;
    (*(v16 + 16))(v22, &v3[v13], v14);
    return (*(v16 + 56))(v17, 0, 1, v14);
  }

  else
  {
    swift_beginAccess();
    v23 = *(v3 + 2);
    return (*(v20 + 40))(v15, v19);
  }
}

uint64_t TTRTreeStorageDerivedRerootedTree.parent(of:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v43 = a2;
  v5 = *(*(*(*v3 + 88) + 8) + 8);
  v6 = *(*v3 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_21DBFBA8C();
  v36 = *(v8 - 8);
  v37 = v8;
  MEMORY[0x28223BE20](v8);
  v38 = &v34 - v9;
  v42 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v10);
  v35 = &v34 - v11;
  v39 = v6;
  v40 = v5;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v13 = swift_getAssociatedTypeWitness();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v34 - v19;
  v21 = *(AssociatedConformanceWitness + 24);
  v41 = a1;
  v21(AssociatedTypeWitness, AssociatedConformanceWitness, v18);
  v34 = *(*v3 + 104);
  (v21)(AssociatedTypeWitness, AssociatedConformanceWitness);
  swift_getAssociatedConformanceWitness();
  LOBYTE(a1) = sub_21DBFA10C();
  v22 = *(v14 + 8);
  v22(v16, v13);
  v22(v20, v13);
  if (a1)
  {
    v23 = 1;
    v25 = v42;
    v24 = v43;
  }

  else
  {
    swift_beginAccess();
    v44 = v3[2];
    v27 = v40;
    v26 = v41;
    v29 = v38;
    v28 = v39;
    (*(v40 + 48))(v41, v39, v40);
    v25 = v42;
    if ((*(v42 + 48))(v29, 1, AssociatedTypeWitness) == 1)
    {
      (*(v36 + 8))(v29, v37);
      v44 = v3[2];
      if (!TTRTreeContentsQueryable.contains(_:)(v26, v28, v27))
      {
        v23 = 1;
        v24 = v43;
        return (*(v25 + 56))(v24, v23, 1, AssociatedTypeWitness);
      }

      v30 = v3 + v34;
      v24 = v43;
      (*(v25 + 16))(v43, v30, AssociatedTypeWitness);
    }

    else
    {
      v31 = *(v25 + 32);
      v32 = v35;
      v31(v35, v29, AssociatedTypeWitness);
      v24 = v43;
      v31(v43, v32, AssociatedTypeWitness);
    }

    v23 = 0;
  }

  return (*(v25 + 56))(v24, v23, 1, AssociatedTypeWitness);
}