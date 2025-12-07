uint64_t TTRAccountsListsPresenterCapability.__deallocating_deinit()
{
  sub_21D157444(v0 + 16);

  __swift_destroy_boxed_opaque_existential_0((v0 + 40));

  return swift_deallocClassInstance();
}

void *sub_21D7EB9A4()
{
  v1 = v0;
  v2 = v0 + OBJC_IVAR____TtCC15RemindersUICore35TTRAccountsListsPresenterCapabilityP33_8A89D2A718AD2C10AB9E066540BACB2625RemindersInsertionRequest____lazy_storage___creationTarget;
  v3 = *(v0 + OBJC_IVAR____TtCC15RemindersUICore35TTRAccountsListsPresenterCapabilityP33_8A89D2A718AD2C10AB9E066540BACB2625RemindersInsertionRequest____lazy_storage___creationTarget);
  v4 = *(v0 + OBJC_IVAR____TtCC15RemindersUICore35TTRAccountsListsPresenterCapabilityP33_8A89D2A718AD2C10AB9E066540BACB2625RemindersInsertionRequest____lazy_storage___creationTarget + 8);
  v5 = v3;
  if (v4 == 255)
  {
    v5 = sub_21D7EBA40(v1);
    v6 = *v2;
    *v2 = v5;
    v7 = *(v2 + 8);
    *(v2 + 8) = v8;
    sub_21D157850(v5, v8);
    sub_21D195308(v6, v7);
  }

  sub_21D1952F4(v3, v4);
  return v5;
}

uint64_t sub_21D7EBA40(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A490, &unk_21DC0F950);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v13 - v3;
  sub_21D0D3954(a1 + OBJC_IVAR____TtCC15RemindersUICore35TTRAccountsListsPresenterCapabilityP33_8A89D2A718AD2C10AB9E066540BACB2625RemindersInsertionRequest_parent, &v13 - v3, &qword_27CE5A490, &unk_21DC0F950);
  v5 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  if ((*(*(v5 - 8) + 48))(v4, 1, v5) != 1)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = 0;
    switch(EnumCaseMultiPayload)
    {
      case 1:
        sub_21D101390(v4, type metadata accessor for TTRAccountsListsViewModel.Item);
        return 1;
      case 2:
      case 3:
      case 5:
      case 6:
      case 8:
      case 9:
      case 10:
      case 11:
      case 12:
      case 13:
      case 14:
        sub_21D101390(v4, type metadata accessor for TTRAccountsListsViewModel.Item);
        return 0;
      case 4:
        v10 = *(v4 + 2);
        sub_21DA1CE20(v10, &v13);
        if (v14 == 255)
        {
          goto LABEL_18;
        }

        if (!v14)
        {
          v11 = v13;

          return v11;
        }

        sub_21D103A34(v13, v14);
LABEL_18:

        goto LABEL_19;
      case 7:
        v8 = *(v4 + 6);
        sub_21DA1CE20(v8, &v13);
        if (v14 == 1 || v14 == 4)
        {
          v12 = v13;

          return v12;
        }

        if (v14 != 255)
        {
          sub_21D103A34(v13, v14);
        }

LABEL_19:

        break;
      case 15:
      case 16:
        return result;
      default:
        v9 = sub_21DBF56BC();
        (*(*(v9 - 8) + 8))(v4, v9);
        return 0;
    }
  }

  return 0;
}

uint64_t sub_21D7EBCDC(uint64_t a1)
{
  v86 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  v2 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v80 = &v79 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v81 = &v79 - v5;
  MEMORY[0x28223BE20](v6);
  v79 = &v79 - v7;
  v8 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v82 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A498, &unk_21DC29EB0);
  MEMORY[0x28223BE20](v85);
  v12 = &v79 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A490, &unk_21DC0F950);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v79 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A4A0, &unk_21DC0F970);
  MEMORY[0x28223BE20](v16 - 8);
  v83 = &v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v79 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v79 - v22;
  v84 = a1;
  TTRAccountsListsViewModel.Item.treeItemIdentifier.getter(&v79 - v22);
  v24 = *(v9 + 56);
  v24(v23, 0, 1, v8);
  sub_21D0D3954(v87 + OBJC_IVAR____TtCC15RemindersUICore35TTRAccountsListsPresenterCapabilityP33_8A89D2A718AD2C10AB9E066540BACB2625RemindersInsertionRequest_parent, v15, &qword_27CE5A490, &unk_21DC0F950);
  if ((*(v2 + 48))(v15, 1, v86) == 1)
  {
    sub_21D0CF7E0(v15, &qword_27CE5A490, &unk_21DC0F950);
    v25 = 1;
  }

  else
  {
    TTRAccountsListsViewModel.Item.treeItemIdentifier.getter(v20);
    sub_21D101390(v15, type metadata accessor for TTRAccountsListsViewModel.Item);
    v25 = 0;
  }

  v24(v20, v25, 1, v8);
  v26 = *(v85 + 48);
  sub_21D0D3954(v23, v12, &qword_27CE5A4A0, &unk_21DC0F970);
  sub_21D0D3954(v20, &v12[v26], &qword_27CE5A4A0, &unk_21DC0F970);
  v27 = *(v9 + 48);
  if (v27(v12, 1, v8) == 1)
  {
    sub_21D0CF7E0(v20, &qword_27CE5A4A0, &unk_21DC0F970);
    sub_21D0CF7E0(v23, &qword_27CE5A4A0, &unk_21DC0F970);
    if (v27(&v12[v26], 1, v8) == 1)
    {
      sub_21D0CF7E0(v12, &qword_27CE5A4A0, &unk_21DC0F970);
      return 0;
    }

    goto LABEL_9;
  }

  v29 = v83;
  sub_21D0D3954(v12, v83, &qword_27CE5A4A0, &unk_21DC0F970);
  if (v27(&v12[v26], 1, v8) == 1)
  {
    sub_21D0CF7E0(v20, &qword_27CE5A4A0, &unk_21DC0F970);
    sub_21D0CF7E0(v23, &qword_27CE5A4A0, &unk_21DC0F970);
    sub_21D101390(v29, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
LABEL_9:
    sub_21D0CF7E0(v12, &qword_27CE5A498, &unk_21DC29EB0);
    goto LABEL_10;
  }

  v37 = v82;
  sub_21D7F4090(&v12[v26], v82, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
  v38 = _s15RemindersUICore25TTRAccountsListsViewModelC14ItemIdentifierO2eeoiySbAE_AEtFZ_0(v29, v37);
  sub_21D101390(v37, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
  sub_21D0CF7E0(v20, &qword_27CE5A4A0, &unk_21DC0F970);
  sub_21D0CF7E0(v23, &qword_27CE5A4A0, &unk_21DC0F970);
  sub_21D101390(v29, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
  sub_21D0CF7E0(v12, &qword_27CE5A4A0, &unk_21DC0F970);
  if (v38)
  {
    return 0;
  }

LABEL_10:
  v30 = v87;
  v31 = sub_21D7EB9A4();
  v33 = v31;
  if (!v32)
  {
    v39 = v84;
    v40 = v80;
    sub_21D0FE6CC(v84, v80, type metadata accessor for TTRAccountsListsViewModel.Item);
    if (swift_getEnumCaseMultiPayload() == 7)
    {

      goto LABEL_26;
    }

    sub_21D101390(v40, type metadata accessor for TTRAccountsListsViewModel.Item);
    TTRAccountsListsViewModel.listOrCustomSmartList(for:)(v39, &v88);
    v43 = BYTE8(v88);
    if (BYTE8(v88) == 255)
    {
LABEL_26:
      v48 = v33;
      v49 = 0;
LABEL_32:
      sub_21D157478(v48, v49);
      return 0;
    }

    v44 = v88;
    v45 = [v88 accountID];
    sub_21D0D8CF0(0, &qword_280D17680, 0x277D82BB8);
    v46 = [v33 accountID];
    v47 = sub_21DBFB63C();

    if (v47)
    {
      if (v43)
      {
        sub_21D157478(v33, 0);
        sub_21D157864(v44, v43);
        return 2;
      }

      v56 = [v44 canBeIncludedInGroup];
      sub_21D157478(v33, 0);
      sub_21D157864(v44, v43);
      if (v56)
      {
        return 2;
      }
    }

    else
    {
      sub_21D157478(v33, 0);
      sub_21D157864(v44, v43);
    }

    return 0;
  }

  v34 = v84;
  if (v32 == 1)
  {
    v35 = v81;
    sub_21D0FE6CC(v84, v81, type metadata accessor for TTRAccountsListsViewModel.Item);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
      case 2u:
      case 3u:
      case 4u:
      case 8u:
      case 9u:
      case 0xAu:
      case 0xBu:
      case 0xCu:
      case 0xDu:
      case 0xEu:
        sub_21D157478(v33, 1u);
        v36 = v35;
        goto LABEL_21;
      case 5u:
      case 6u:
      case 7u:
        sub_21D101390(v35, type metadata accessor for TTRAccountsListsViewModel.Item);
        TTRAccountsListsViewModel.listOrCustomSmartList(for:)(v34, &v88);
        v50 = BYTE8(v88);
        if (BYTE8(v88) == 255)
        {
          goto LABEL_31;
        }

        v51 = v88;
        v52 = [v33 objectID];
        v53 = TTRAccountsListsViewModel.allowedInsertionIndicesInAccount(_:)(v52);
        v55 = *(v30 + OBJC_IVAR____TtCC15RemindersUICore35TTRAccountsListsPresenterCapabilityP33_8A89D2A718AD2C10AB9E066540BACB2625RemindersInsertionRequest_childIndex);
        if (v55 >= v53 && v54 >= v55)
        {
          sub_21D0D8CF0(0, &qword_280D17680, 0x277D82BB8);
          if (v50)
          {
            v72 = [v51 accountID];
            v73 = [v33 objectID];
            v74 = sub_21DBFB63C();
            sub_21D157478(v33, 1u);

            sub_21D157864(v51, v50);
          }

          else
          {
            v75 = [v51 account];
            v76 = [v75 objectID];

            v77 = [v33 objectID];
            v74 = sub_21DBFB63C();
            sub_21D157478(v33, 1u);

            sub_21D157864(v51, v50);
          }

          if (v74)
          {
            return 2;
          }

          else
          {
            return 0;
          }
        }

        else
        {
          sub_21D157478(v33, 1u);

          sub_21D157864(v51, v50);
          return 0;
        }

      case 0xFu:
      case 0x10u:
LABEL_31:
        v48 = v33;
        v49 = 1;
        goto LABEL_32;
      default:
        sub_21D157478(v33, 1u);
        v70 = sub_21DBF56BC();
        (*(*(v70 - 8) + 8))(v35, v70);
        return 0;
    }
  }

  if (!v31)
  {
    return 0;
  }

  v41 = v79;
  sub_21D0FE6CC(v84, v79, type metadata accessor for TTRAccountsListsViewModel.Item);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0;
  switch(EnumCaseMultiPayload)
  {
    case 1:
    case 2:
    case 4:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
      v36 = v41;
LABEL_21:
      sub_21D101390(v36, type metadata accessor for TTRAccountsListsViewModel.Item);
      return 0;
    case 3:
      sub_21D101390(v41, type metadata accessor for TTRAccountsListsViewModel.Item);
      return 2;
    case 5:
    case 6:
      v57 = *(v41 + 217);
      v58 = *(v41 + 216);
      v59 = *(v41 + 148);
      v60 = *(v41 + 147);
      v61 = *(v41 + 146);
      v62 = *(v41 + 145);
      v63 = *(v41 + 144);
      v64 = *(v41 + 120);
      v66 = *(v41 + 40);
      v65 = *(v41 + 48);
      v67 = *(v41 + 16);
      v88 = *v41;
      v89 = v67;
      v90 = *(v41 + 24);
      v91 = v66;
      v92 = v65;
      v68 = *(v41 + 72);
      v93 = *(v41 + 56);
      v94 = v68;
      v69 = *(v41 + 104);
      v95 = *(v41 + 88);
      v96 = v69;
      v97 = v64;
      v98 = *(v41 + 128);
      v99 = v63;
      v100 = v62;
      v101 = v61;
      v102 = v60;
      v103 = v59;
      v104 = *(v41 + 152);
      v105 = *(v41 + 168);
      v106 = *(v41 + 184);
      v107 = *(v41 + 200);
      v108 = v58;
      v109 = v57;
      if (*(v30 + OBJC_IVAR____TtCC15RemindersUICore35TTRAccountsListsPresenterCapabilityP33_8A89D2A718AD2C10AB9E066540BACB2625RemindersInsertionRequest_containerIsInEditMode) != 1 || v61 == 2)
      {
        sub_21D1077D8(&v88);
        return 0;
      }

      if (v61)
      {
        sub_21D1077D8(&v88);
        return 2;
      }

      v78 = TTRAccountsListsViewModel.exceedsMaximumNumberOfPinnedListsAdding(count:)(1);
      sub_21D1077D8(&v88);
      if (v78)
      {
        result = 1;
      }

      else
      {
        result = 2;
      }

      break;
    case 15:
    case 16:
      return result;
    default:
      v71 = sub_21DBF56BC();
      (*(*(v71 - 8) + 8))(v41, v71);
      return 0;
  }

  return result;
}

uint64_t sub_21D7EC94C()
{
  sub_21D0CF7E0(v0 + OBJC_IVAR____TtCC15RemindersUICore35TTRAccountsListsPresenterCapabilityP33_8A89D2A718AD2C10AB9E066540BACB2625RemindersInsertionRequest_parent, &qword_27CE5A490, &unk_21DC0F950);

  sub_21D0D0E88(*(v0 + OBJC_IVAR____TtCC15RemindersUICore35TTRAccountsListsPresenterCapabilityP33_8A89D2A718AD2C10AB9E066540BACB2625RemindersInsertionRequest_additionalSubjectFilter), *(v0 + OBJC_IVAR____TtCC15RemindersUICore35TTRAccountsListsPresenterCapabilityP33_8A89D2A718AD2C10AB9E066540BACB2625RemindersInsertionRequest_additionalSubjectFilter + 8));
  sub_21D195308(*(v0 + OBJC_IVAR____TtCC15RemindersUICore35TTRAccountsListsPresenterCapabilityP33_8A89D2A718AD2C10AB9E066540BACB2625RemindersInsertionRequest____lazy_storage___creationTarget), *(v0 + OBJC_IVAR____TtCC15RemindersUICore35TTRAccountsListsPresenterCapabilityP33_8A89D2A718AD2C10AB9E066540BACB2625RemindersInsertionRequest____lazy_storage___creationTarget + 8));

  return swift_deallocClassInstance();
}

double TTRAccountsListsPresenterCapability.RemindersInsertionPlan.moveSubjects.getter()
{
  swift_beginAccess();
  sub_21DBF8E0C();
  return result;
}

double sub_21D7ECA9C(void (*a1)(char *, uint64_t, uint64_t, uint64_t))
{
  v2 = v1;
  v58 = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A490, &unk_21DC0F950);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v44 - v5;
  v55 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  v48 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v47 = v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v54 = v44 - v9;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58848, &qword_21DC09A90);
  v10 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v51 = v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v52 = v44 - v13;
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59B20, &qword_21DC0CD68);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21DC08D00;
  *(inited + 32) = sub_21D7F4030;
  *(inited + 40) = v15;
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  v18 = (v17 + 16);
  v19 = swift_allocObject();
  swift_weakInit();
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  *(v20 + 24) = v17;
  v50 = a1;
  sub_21DBF8E0C();

  v46 = v17;

  v21 = sub_21D21455C(1, 2, 1, inited);
  v22 = v21;
  v21[2] = 2;
  v21[6] = sub_21D7F4088;
  v21[7] = v20;
  v23 = (*(v2 + 32) + OBJC_IVAR____TtCC15RemindersUICore35TTRAccountsListsPresenterCapabilityP33_8A89D2A718AD2C10AB9E066540BACB2625RemindersInsertionRequest_additionalSubjectFilter);
  v24 = *v23;
  if (*v23)
  {
    v49 = v10;
    v25 = v23[1];
    v26 = v21[3];

    if (v26 <= 5)
    {
      v22 = sub_21D21455C((v26 > 1), 3, 1, v22);
    }

    v22[2] = 3;
    v22[8] = v24;
    v22[9] = v25;
    v10 = v49;
  }

  sub_21D7EF34C(v50, *(v50 + 16) == 0, v22, v56);
  v27 = v56[0];
  v28 = v57;
  swift_beginAccess();
  *(v2 + 24) = v27;
  swift_beginAccess();
  v29 = *v18;
  swift_beginAccess();
  *(v2 + 25) = v29;
  swift_beginAccess();
  *(v2 + 16) = v28;

  v30 = *(v2 + 16);
  v31 = *(v30 + 16);
  if (v31)
  {
    v44[2] = v22;
    v44[3] = v20;
    v44[4] = v15;
    v45 = v2;
    v32 = v30 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v50 = v10[9];
    v49 = (v48 + 56);
    v33 = (v48 + 48);
    v44[1] = v30;
    sub_21DBF8E0C();
    v34 = MEMORY[0x277D84F90];
    v35 = v47;
    do
    {
      v36 = v6;
      v37 = v52;
      sub_21D0D3954(v32, v52, &qword_27CE58848, &qword_21DC09A90);
      v38 = v51;
      sub_21D0D523C(v37, v51, &qword_27CE58848, &qword_21DC09A90);
      LODWORD(v37) = *(v38 + *(v53 + 48));
      sub_21D7F4090(v38, v35, type metadata accessor for TTRAccountsListsViewModel.Item);
      if (v37 == 1)
      {
        v6 = v36;
        sub_21D7F4090(v35, v36, type metadata accessor for TTRAccountsListsViewModel.Item);
        v39 = 0;
      }

      else
      {
        sub_21D101390(v35, type metadata accessor for TTRAccountsListsViewModel.Item);
        v39 = 1;
        v6 = v36;
      }

      v40 = v55;
      (*v49)(v6, v39, 1, v55);
      if ((*v33)(v6, 1, v40) == 1)
      {
        sub_21D0CF7E0(v6, &qword_27CE5A490, &unk_21DC0F950);
      }

      else
      {
        sub_21D7F4090(v6, v54, type metadata accessor for TTRAccountsListsViewModel.Item);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v34 = sub_21D103C5C(0, v34[2] + 1, 1, v34);
        }

        v42 = v34[2];
        v41 = v34[3];
        if (v42 >= v41 >> 1)
        {
          v34 = sub_21D103C5C((v41 > 1), v42 + 1, 1, v34);
        }

        v34[2] = v42 + 1;
        sub_21D7F4090(v54, v34 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v42, type metadata accessor for TTRAccountsListsViewModel.Item);
        v35 = v47;
      }

      v32 += v50;
      --v31;
    }

    while (v31);

    v2 = v45;
  }

  else
  {

    v34 = MEMORY[0x277D84F90];
  }

  *(v2 + 40) = v34;

  return result;
}

double sub_21D7ED208(uint64_t a1)
{
  *(a1 + 224) = 0;
  result = 0.0;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

void sub_21D7ED27C(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, char a6)
{
  if ((a6 & 1) == 0)
  {
  }
}

void *TTRAccountsListsPresenterCapability.RemindersInsertionPlan.generateParamsForSaving()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61CB0, &unk_21DC36540);
  MEMORY[0x28223BE20](v4 - 8);
  v74 = (&v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v73 = (&v65 - v7);
  v8 = type metadata accessor for TTRAccountsListsViewModel.PinnedList(0);
  v75 = *(v8 - 8);
  v76 = v8;
  MEMORY[0x28223BE20](v8);
  v70 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v69 = &v65 - v11;
  v12 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  MEMORY[0x28223BE20](v12 - 8);
  v72 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v71 = &v65 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A500, &qword_21DC29A80);
  v78 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v65 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A4E8, &qword_21DC0F9D8);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v65 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61CB8, &qword_21DC29A88);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = &v65 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61CC0, &qword_21DC29A90);
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v77 = &v65 - v30;
  result = sub_21D7EB9A4();
  v33 = result;
  if (v32)
  {
    if (v32 == 1)
    {
      sub_21D7EDCD8(v2, v79);
      v34 = v79[0];
      if (v79[0])
      {
        goto LABEL_6;
      }

      v44 = v33;
      v45 = 1;
      goto LABEL_14;
    }

    if (!result)
    {
LABEL_15:
      v46 = type metadata accessor for TTRAccountsListsPresenterCapability.RemindersInsertionPlan.MovingParam(0);
      v38 = *(*(v46 - 8) + 56);
      v41 = v46;
      v39 = a1;
      v40 = 1;
      goto LABEL_16;
    }

    v65 = v29;
    v66 = v28;
    v67 = v27;
    v68 = a1;
    if (!*(v2 + 40))
    {
      __break(1u);
      return result;
    }

    v79[0] = *(v2 + 40);
    sub_21DBF8E0C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61C60, &unk_21DC29A40);
    type metadata accessor for TTRAccountsListsPresenterCapability.RemindersInsertionPlan.PinnableListMoveSubject(0);
    sub_21D0D0F1C(&qword_27CE61C68, &qword_27CE61C60, &unk_21DC29A40, MEMORY[0x277D83970]);
    v42 = sub_21DBFA43C();

    if (!v42)
    {
LABEL_31:
      v60 = type metadata accessor for TTRAccountsListsPresenterCapability.RemindersInsertionPlan.MovingParam(0);
      return (*(*(v60 - 8) + 56))(v68, 1, 1, v60);
    }

    sub_21D7EE19C(v24);
    if ((*(v78 + 48))(v24, 1, v16))
    {

      sub_21D0CF7E0(v24, &qword_27CE5A4E8, &qword_21DC0F9D8);
      v43 = v67;
      (*(v65 + 56))(v67, 1, 1, v66);
LABEL_30:
      sub_21D0CF7E0(v43, &qword_27CE61CB8, &qword_21DC29A88);
      goto LABEL_31;
    }

    sub_21D0D3954(v24, v21, &qword_27CE5A500, &qword_21DC29A80);
    sub_21D0CF7E0(v24, &qword_27CE5A4E8, &qword_21DC0F9D8);
    sub_21D0D3954(v21, v18, &qword_27CE5A500, &qword_21DC29A80);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v49 = v65;
    v48 = v66;
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        v55 = v71;
        sub_21D7F4090(v18, v71, type metadata accessor for TTRAccountsListsViewModel.Item);
        v51 = v73;
        sub_21D7EE550(v55, v73);
        sub_21D101390(v55, type metadata accessor for TTRAccountsListsViewModel.Item);
        sub_21D0CF7E0(v21, &qword_27CE5A500, &qword_21DC29A80);
        v56 = (*(v75 + 48))(v51, 1, v76);
        v43 = v67;
        if (v56 != 1)
        {
          v58 = v51;
          v59 = v69;
          sub_21D7F4090(v58, v69, type metadata accessor for TTRAccountsListsViewModel.PinnedList);
          sub_21D7F4090(v59, v43, type metadata accessor for TTRAccountsListsViewModel.PinnedList);
          goto LABEL_27;
        }
      }

      else
      {
        v50 = v72;
        sub_21D7F4090(v18, v72, type metadata accessor for TTRAccountsListsViewModel.Item);
        v51 = v74;
        sub_21D7EE550(v50, v74);
        sub_21D101390(v50, type metadata accessor for TTRAccountsListsViewModel.Item);
        sub_21D0CF7E0(v21, &qword_27CE5A500, &qword_21DC29A80);
        v52 = (*(v75 + 48))(v51, 1, v76);
        v43 = v67;
        if (v52 != 1)
        {
          v53 = v51;
          v54 = v70;
          sub_21D7F4090(v53, v70, type metadata accessor for TTRAccountsListsViewModel.PinnedList);
          sub_21D7F4090(v54, v43, type metadata accessor for TTRAccountsListsViewModel.PinnedList);
LABEL_27:
          swift_storeEnumTagMultiPayload();
          v57 = 0;
          goto LABEL_28;
        }
      }

      sub_21D0CF7E0(v51, &qword_27CE61CB0, &unk_21DC36540);
      v57 = 1;
LABEL_28:
      (*(v49 + 56))(v43, v57, 1, v48);
      if ((*(v49 + 48))(v43, 1, v48) != 1)
      {
        v61 = v77;
        sub_21D0D523C(v43, v77, &qword_27CE61CC0, &qword_21DC29A90);
        v62 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61CC8, &unk_21DC29A98) + 48);
        v63 = v68;
        *v68 = v42;
        sub_21D0D523C(v61, v63 + v62, &qword_27CE61CC0, &qword_21DC29A90);
        v64 = type metadata accessor for TTRAccountsListsPresenterCapability.RemindersInsertionPlan.MovingParam(0);
        swift_storeEnumTagMultiPayload();
        return (*(*(v64 - 8) + 56))(v63, 0, 1, v64);
      }

      goto LABEL_30;
    }

    sub_21D0CF7E0(v21, &qword_27CE5A500, &qword_21DC29A80);
    v43 = v67;
    goto LABEL_27;
  }

  sub_21D7EDCD8(v2, v79);
  v34 = v79[0];
  if (!v79[0])
  {
    v44 = v33;
    v45 = 0;
LABEL_14:
    sub_21D157478(v44, v45);
    goto LABEL_15;
  }

LABEL_6:
  v35 = v80;
  v36 = v79[1];
  *a1 = v34;
  *(a1 + 8) = v33;
  *(a1 + 16) = v36;
  *(a1 + 24) = v35;
  v37 = type metadata accessor for TTRAccountsListsPresenterCapability.RemindersInsertionPlan.MovingParam(0);
  swift_storeEnumTagMultiPayload();
  v38 = *(*(v37 - 8) + 56);
  v39 = a1;
  v40 = 0;
  v41 = v37;
LABEL_16:

  return v38(v39, v40, 1, v41);
}

void sub_21D7EDCD8(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v29 = a2;
  v3 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  MEMORY[0x28223BE20](v3 - 8);
  v28 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v27 = &v26 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A500, &qword_21DC29A80);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v26 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A4E8, &qword_21DC0F9D8);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v26 - v15;
  if (!*(a1 + 40))
  {
    __break(1u);
    return;
  }

  v30 = *(a1 + 40);
  sub_21DBF8E0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61C60, &unk_21DC29A40);
  sub_21D0D0F1C(&qword_27CE61C68, &qword_27CE61C60, &unk_21DC29A40, MEMORY[0x277D83970]);
  v17 = sub_21DBFA43C();

  if (v17)
  {
    sub_21D7EE19C(v16);
    if ((*(v8 + 48))(v16, 1, v7))
    {

      sub_21D0CF7E0(v16, &qword_27CE5A4E8, &qword_21DC0F9D8);
      goto LABEL_5;
    }

    sub_21D0D3954(v16, v13, &qword_27CE5A500, &qword_21DC29A80);
    sub_21D0CF7E0(v16, &qword_27CE5A4E8, &qword_21DC0F9D8);
    sub_21D0D3954(v13, v10, &qword_27CE5A500, &qword_21DC29A80);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        sub_21D0CF7E0(v13, &qword_27CE5A500, &qword_21DC29A80);
        v21 = 0;
        v32 = 0;
        v22 = 2;
      }

      else
      {
        sub_21D0CF7E0(v13, &qword_27CE5A500, &qword_21DC29A80);
        v32 = 0;
        v22 = 2;
        v21 = 1;
      }

      goto LABEL_16;
    }

    if (EnumCaseMultiPayload)
    {
      v23 = v27;
      sub_21D7F4090(v10, v27, type metadata accessor for TTRAccountsListsViewModel.Item);

      TTRAccountsListsViewModel.listOrCustomSmartList(for:)(v23, &v30);

      sub_21D101390(v23, type metadata accessor for TTRAccountsListsViewModel.Item);
      sub_21D0CF7E0(v13, &qword_27CE5A500, &qword_21DC29A80);
      v21 = v30;
      if (v31 != 255)
      {
        v32 = v31 & 1;
        v22 = 1;
        goto LABEL_16;
      }
    }

    else
    {
      v20 = v28;
      sub_21D7F4090(v10, v28, type metadata accessor for TTRAccountsListsViewModel.Item);

      TTRAccountsListsViewModel.listOrCustomSmartList(for:)(v20, &v30);

      sub_21D101390(v20, type metadata accessor for TTRAccountsListsViewModel.Item);
      sub_21D0CF7E0(v13, &qword_27CE5A500, &qword_21DC29A80);
      v21 = v30;
      if (v31 != 255)
      {
        v22 = 0;
        v32 = v31 & 1;
LABEL_16:
        v24 = v32 | (v22 << 8);
        v25 = v29;
        *v29 = v17;
        v25[1] = v21;
        *(v25 + 8) = v24;
        return;
      }
    }

    sub_21D157864(v21, 255);
  }

LABEL_5:
  v18 = v29;
  *v29 = 0;
  v18[1] = 0;
  *(v18 + 8) = 0;
}

uint64_t sub_21D7EE19C@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A490, &unk_21DC0F950);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v25 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59A08, &unk_21DC0F960);
  MEMORY[0x28223BE20](v5);
  v7 = &v25 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61CD0, &qword_21DC29AA8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v25 - v12;
  v14 = OBJC_IVAR____TtCC15RemindersUICore35TTRAccountsListsPresenterCapability22RemindersInsertionPlan____lazy_storage___relativeInsertionPosition;
  swift_beginAccess();
  sub_21D0D3954(v1 + v14, v13, &qword_27CE61CD0, &qword_21DC29AA8);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A4E8, &qword_21DC0F9D8);
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v13, 1, v15) != 1)
  {
    return sub_21D0D523C(v13, v26, &qword_27CE5A4E8, &qword_21DC0F9D8);
  }

  sub_21D0CF7E0(v13, &qword_27CE61CD0, &qword_21DC29AA8);
  v17 = *(v1 + 32);
  sub_21D0D3954(v17 + OBJC_IVAR____TtCC15RemindersUICore35TTRAccountsListsPresenterCapabilityP33_8A89D2A718AD2C10AB9E066540BACB2625RemindersInsertionRequest_parent, v4, &qword_27CE5A490, &unk_21DC0F950);
  v18 = *(v17 + OBJC_IVAR____TtCC15RemindersUICore35TTRAccountsListsPresenterCapabilityP33_8A89D2A718AD2C10AB9E066540BACB2625RemindersInsertionRequest_childIndex);
  v19 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  (*(*(v19 - 8) + 56))(v7, 1, 1, v19);
  sub_21D0F02F4(v4, v7, &qword_27CE5A490, &unk_21DC0F950);
  *&v7[*(v5 + 36)] = v18;
  v20 = *(v1 + 40);
  sub_21DBF8E0C();

  v21 = v10;
  v22 = v26;
  v25 = v1;
  sub_21D26A678(v7, v20, v26);

  sub_21D0CF7E0(v7, &qword_27CE59A08, &unk_21DC0F960);
  sub_21D0D3954(v22, v21, &qword_27CE5A4E8, &qword_21DC0F9D8);
  (*(v16 + 56))(v21, 0, 1, v15);
  v23 = v25;
  swift_beginAccess();
  sub_21D0F02F4(v21, v23 + v14, &qword_27CE61CD0, &qword_21DC29AA8);
  return swift_endAccess();
}

uint64_t sub_21D7EE550@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v29[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 16];
  sub_21D0FE6CC(a1, v6, type metadata accessor for TTRAccountsListsViewModel.Item);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
    case 2u:
    case 4u:
    case 7u:
    case 8u:
    case 9u:
    case 0xAu:
    case 0xBu:
    case 0xCu:
    case 0xDu:
    case 0xEu:
      sub_21D101390(v6, type metadata accessor for TTRAccountsListsViewModel.Item);
      goto LABEL_3;
    case 3u:
      sub_21D7F4090(v6, a2, type metadata accessor for TTRAccountsListsViewModel.SmartList);
      v26 = type metadata accessor for TTRAccountsListsViewModel.PinnedList(0);
      goto LABEL_11;
    case 5u:
    case 6u:
      v9 = v6[217];
      v10 = v6[216];
      v11 = v6[148];
      v12 = v6[147];
      v13 = v6[146];
      v14 = v6[145];
      v15 = v6[144];
      v16 = v6[120];
      v18 = *(v6 + 5);
      v17 = *(v6 + 6);
      v19 = *(v6 + 2);
      v28 = *v6;
      *v29 = v19;
      *&v29[8] = *(v6 + 24);
      *&v29[24] = v18;
      *v30 = v17;
      *&v30[8] = *(v6 + 56);
      *&v30[24] = *(v6 + 72);
      *&v30[40] = *(v6 + 88);
      *&v30[56] = *(v6 + 104);
      v30[72] = v16;
      v31 = *(v6 + 8);
      v32[0] = v15;
      v32[1] = v14;
      v32[2] = v13;
      v32[3] = v12;
      v32[4] = v11;
      *&v32[8] = *(v6 + 152);
      *&v32[24] = *(v6 + 168);
      *&v32[40] = *(v6 + 184);
      *&v32[56] = *(v6 + 200);
      v32[72] = v10;
      v32[73] = v9;
      if (v13 == 2 || (v13 & 1) == 0)
      {
        sub_21D1077D8(&v28);
LABEL_3:
        v7 = type metadata accessor for TTRAccountsListsViewModel.PinnedList(0);
        return (*(*(v7 - 8) + 56))(a2, 1, 1, v7);
      }

      else
      {
        v20 = *&v32[32];
        a2[10] = *&v32[16];
        a2[11] = v20;
        a2[12] = *&v32[48];
        *(a2 + 202) = *&v32[58];
        v21 = *&v30[64];
        a2[6] = *&v30[48];
        a2[7] = v21;
        v22 = *v32;
        a2[8] = v31;
        a2[9] = v22;
        v23 = *v30;
        a2[2] = *&v29[16];
        a2[3] = v23;
        v24 = *&v30[32];
        a2[4] = *&v30[16];
        a2[5] = v24;
        v25 = *v29;
        *a2 = v28;
        a2[1] = v25;
        v26 = type metadata accessor for TTRAccountsListsViewModel.PinnedList(0);
LABEL_11:
        swift_storeEnumTagMultiPayload();
        return (*(*(v26 - 8) + 56))(a2, 0, 1, v26);
      }

    case 0xFu:
    case 0x10u:
      goto LABEL_3;
    default:
      v27 = sub_21DBF56BC();
      (*(*(v27 - 8) + 8))(v6, v27);
      goto LABEL_3;
  }
}

Swift::OpaquePointer_optional __swiftcall TTRAccountsListsPresenterCapability.RemindersInsertionPlan.generateOptimisticMoves()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A490, &unk_21DC0F950);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v14 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59A08, &unk_21DC0F960);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - v7;
  v9 = *(v0 + 40);
  if (v9)
  {
    v10 = *(v0 + 32);
    sub_21D0D3954(v10 + OBJC_IVAR____TtCC15RemindersUICore35TTRAccountsListsPresenterCapabilityP33_8A89D2A718AD2C10AB9E066540BACB2625RemindersInsertionRequest_parent, v3, &qword_27CE5A490, &unk_21DC0F950);
    v11 = *(v10 + OBJC_IVAR____TtCC15RemindersUICore35TTRAccountsListsPresenterCapabilityP33_8A89D2A718AD2C10AB9E066540BACB2625RemindersInsertionRequest_childIndex);
    v12 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
    (*(*(v12 - 8) + 56))(v8, 1, 1, v12);

    sub_21DBF8E0C();
    sub_21D0F02F4(v3, v8, &qword_27CE5A490, &unk_21DC0F950);
    *&v8[*(v4 + 36)] = v11;
    v13 = sub_21D26EEBC(v9, v8);

    sub_21D0CF7E0(v8, &qword_27CE59A08, &unk_21DC0F960);
    v5 = v13;
  }

  else
  {
    __break(1u);
  }

  result.value._rawValue = v5;
  result.is_nil = v6;
  return result;
}

uint64_t sub_21D7EEA38@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{

  TTRAccountsListsViewModel.listOrCustomSmartList(for:)(a1, a2);
}

uint64_t sub_21D7EEA9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  MEMORY[0x28223BE20](v4);
  v6 = (v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21D0FE6CC(a1, v6, type metadata accessor for TTRAccountsListsViewModel.Item);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
    case 2u:
    case 4u:
    case 7u:
    case 8u:
    case 9u:
    case 0xAu:
    case 0xBu:
    case 0xCu:
    case 0xDu:
    case 0xEu:
      sub_21D101390(v6, type metadata accessor for TTRAccountsListsViewModel.Item);
      goto LABEL_3;
    case 3u:
      sub_21D7F4090(v6, a2, type metadata accessor for TTRAccountsListsViewModel.SmartList);
      type metadata accessor for TTRAccountsListsViewModel.PinnedList(0);
      swift_storeEnumTagMultiPayload();
      v22 = type metadata accessor for TTRAccountsListsPresenterCapability.RemindersInsertionPlan.PinnableListMoveSubject(0);
      swift_storeEnumTagMultiPayload();
      return (*(*(v22 - 8) + 56))(a2, 0, 1, v22);
    case 5u:
      v23 = v6[5];
      v45 = v6[4];
      v46 = v23;
      v24 = v6[3];
      v43 = v6[2];
      v44 = v24;
      v25 = v6[9];
      v49 = v6[8];
      v50 = v25;
      v26 = v6[7];
      v47 = v6[6];
      v48 = v26;
      *(v53 + 10) = *(v6 + 202);
      v27 = v6[12];
      v52 = v6[11];
      v53[0] = v27;
      v51 = v6[10];
      v28 = v6[1];
      v41 = *v6;
      v42 = v28;

      TTRAccountsListsViewModel.listOrCustomSmartList(for:)(a1, v39);

      v29 = BYTE8(v39[0]);
      if (BYTE8(v39[0]) == 255)
      {
        goto LABEL_12;
      }

      v30 = *&v39[0];
      if (BYTE8(v39[0]))
      {
        sub_21D157864(*&v39[0], SBYTE8(v39[0]));
LABEL_12:
        sub_21D1077D8(&v41);
LABEL_3:
        v7 = type metadata accessor for TTRAccountsListsPresenterCapability.RemindersInsertionPlan.PinnableListMoveSubject(0);
        return (*(*(v7 - 8) + 56))(a2, 1, 1, v7);
      }

      if ([*&v39[0] isPinned])
      {
        sub_21D157864(v30, v29);
        goto LABEL_18;
      }

      sub_21D1077D8(&v41);
      *a2 = v30;
      *(a2 + 8) = 0;
      goto LABEL_20;
    case 6u:
      v9 = v6[3];
      v10 = v6[5];
      v45 = v6[4];
      v46 = v10;
      v11 = v6[3];
      v12 = v6[1];
      v43 = v6[2];
      v44 = v11;
      v13 = v6[7];
      v14 = v6[9];
      v49 = v6[8];
      v50 = v14;
      v15 = v6[7];
      v16 = v6[5];
      v47 = v6[6];
      v48 = v15;
      *(v53 + 10) = *(v6 + 202);
      v17 = v6[11];
      v53[0] = v6[12];
      v18 = v6[11];
      v19 = v6[9];
      v51 = v6[10];
      v52 = v18;
      v20 = v6[1];
      v41 = *v6;
      v42 = v20;
      v39[10] = v51;
      v39[11] = v17;
      v40[0] = v6[12];
      *(v40 + 10) = *(v6 + 202);
      v39[6] = v47;
      v39[7] = v13;
      v39[8] = v49;
      v39[9] = v19;
      v39[2] = v43;
      v39[3] = v9;
      v39[4] = v45;
      v39[5] = v16;
      v39[0] = v41;
      v39[1] = v12;

      v21 = TTRAccountsListsViewModel.remSmartList(for:)(v39);

      if (v21)
      {
        if ([v21 isPinned])
        {

LABEL_18:
          v33 = v52;
          *(a2 + 160) = v51;
          *(a2 + 176) = v33;
          *(a2 + 192) = v53[0];
          *(a2 + 202) = *(v53 + 10);
          v34 = v48;
          *(a2 + 96) = v47;
          *(a2 + 112) = v34;
          v35 = v50;
          *(a2 + 128) = v49;
          *(a2 + 144) = v35;
          v36 = v44;
          *(a2 + 32) = v43;
          *(a2 + 48) = v36;
          v37 = v46;
          *(a2 + 64) = v45;
          *(a2 + 80) = v37;
          v38 = v42;
          *a2 = v41;
          *(a2 + 16) = v38;
          type metadata accessor for TTRAccountsListsViewModel.PinnedList(0);
          swift_storeEnumTagMultiPayload();
          v22 = type metadata accessor for TTRAccountsListsPresenterCapability.RemindersInsertionPlan.PinnableListMoveSubject(0);
        }

        else
        {
          sub_21D1077D8(&v41);
          *a2 = v21;
          *(a2 + 8) = 1;
LABEL_20:
          v22 = type metadata accessor for TTRAccountsListsPresenterCapability.RemindersInsertionPlan.PinnableListMoveSubject(0);
        }

        swift_storeEnumTagMultiPayload();
        type metadata accessor for TTRAccountsListsPresenterCapability.RemindersInsertionPlan.PinnableListMoveSubject(0);
        return (*(*(v22 - 8) + 56))(a2, 0, 1, v22);
      }

      else
      {
        v32 = type metadata accessor for TTRAccountsListsPresenterCapability.RemindersInsertionPlan.PinnableListMoveSubject(0);
        (*(*(v32 - 8) + 56))(a2, 1, 1, v32);
        return sub_21D1077D8(&v41);
      }

    case 0xFu:
    case 0x10u:
      goto LABEL_3;
    default:
      v31 = sub_21DBF56BC();
      (*(*(v31 - 8) + 8))(v6, v31);
      goto LABEL_3;
  }
}

uint64_t sub_21D7EEF4C@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v7 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v26 - v12;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    goto LABEL_15;
  }

  v15 = *(*(result + 32) + OBJC_IVAR____TtCC15RemindersUICore35TTRAccountsListsPresenterCapabilityP33_8A89D2A718AD2C10AB9E066540BACB2625RemindersInsertionRequest_viewModel);

  TTRAccountsListsViewModel.listOrCustomSmartList(for:)(a1, &v28);
  v16 = v29;
  if (v29 == 255)
  {
LABEL_14:

LABEL_15:
    v25 = 0;
    goto LABEL_16;
  }

  v26[1] = v15;
  v17 = v28;
  if (v29)
  {
    sub_21D157864(v28, v29);
    goto LABEL_14;
  }

  v18 = [v28 parentListID];
  sub_21D157864(v17, v16);
  v27 = v18;
  if (!v18)
  {
    goto LABEL_14;
  }

  v26[0] = a4;
  v19 = *(a3 + 16);
  if (v19)
  {
    v20 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v21 = *(v8 + 72);
    do
    {
      sub_21D0FE6CC(v20, v13, type metadata accessor for TTRAccountsListsViewModel.Item);
      sub_21D0FE6CC(v13, v10, type metadata accessor for TTRAccountsListsViewModel.Item);
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        v22 = *(v10 + 6);

        sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
        v23 = v27;
        v24 = sub_21DBFB63C();
        sub_21D101390(v13, type metadata accessor for TTRAccountsListsViewModel.Item);

        if (v24)
        {

          v25 = 1;
          goto LABEL_18;
        }
      }

      else
      {
        sub_21D101390(v10, type metadata accessor for TTRAccountsListsViewModel.Item);
        sub_21D101390(v13, type metadata accessor for TTRAccountsListsViewModel.Item);
      }

      v20 += v21;
      --v19;
    }

    while (v19);
  }

  v25 = 0;
LABEL_18:
  a4 = v26[0];
LABEL_16:
  *a4 = v25;
  return result;
}

void sub_21D7EF264(uint64_t a1@<X0>, uint64_t a3@<X2>, char *a4@<X8>)
{
  swift_beginAccess();
  if (swift_weakLoadStrong() && (, v7 = sub_21D7EBCDC(a1), , , v7 != 2))
  {
    swift_beginAccess();
    v9 = *(a3 + 16) | v7;
    swift_beginAccess();
    *(a3 + 16) = v9 & 1;
    v8 = 2;
  }

  else
  {
    v8 = 0;
  }

  *a4 = v8;
}

uint64_t sub_21D7EF34C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61D48, &qword_21DC29EA0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v29 - v15;
  v17 = sub_21DBF5B9C();
  v31 = *(v17 - 8);
  v32 = v17;
  MEMORY[0x28223BE20](v17);
  v34 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DBF5B8C();
  v33 = a1;
  if (a2)
  {
    v19 = 1;
  }

  else
  {
    v30 = a4;
    *&v36[17] = 0;
    *&v36[25] = 0;
    *&v36[9] = a1;
    sub_21DBF8E0C();
    v19 = 0;
    v35 = a3;
    v20 = a3 + 40;
    while (1)
    {
      sub_21D7E7A3C(v13);
      sub_21D0D523C(v13, v16, &qword_27CE61D48, &qword_21DC29EA0);
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61D50, &qword_21DC29EA8);
      if ((*(*(v21 - 8) + 48))(v16, 1, v21) == 1)
      {
        break;
      }

      sub_21D7F4090(&v16[*(v21 + 48)], v10, type metadata accessor for TTRAccountsListsViewModel.Item);
      v22 = *(v35 + 16) + 1;
      v23 = v20;
      do
      {
        if (!--v22)
        {
          sub_21DBF5AFC();
          goto LABEL_5;
        }

        v24 = v23 + 16;
        v25 = *(v23 - 8);

        v25(v36, v10);

        v23 = v24;
      }

      while (!v36[0]);
      if (v36[0] != 1)
      {
        v19 = 1;
      }

LABEL_5:
      sub_21D101390(v10, type metadata accessor for TTRAccountsListsViewModel.Item);
    }

    a4 = v30;
  }

  v26 = v34;
  v27 = sub_21D7E7528(v33, v34);
  *a4 = v19 & 1;
  *(a4 + 8) = v27;
  return (*(v31 + 8))(v26, v32);
}

uint64_t TTRAccountsListsPresenterCapability.RemindersInsertionPlan.deinit()
{

  sub_21D0CF7E0(v0 + OBJC_IVAR____TtCC15RemindersUICore35TTRAccountsListsPresenterCapability22RemindersInsertionPlan____lazy_storage___relativeInsertionPosition, &qword_27CE61CD0, &qword_21DC29AA8);
  return v0;
}

uint64_t TTRAccountsListsPresenterCapability.RemindersInsertionPlan.__deallocating_deinit()
{

  sub_21D0CF7E0(v0 + OBJC_IVAR____TtCC15RemindersUICore35TTRAccountsListsPresenterCapability22RemindersInsertionPlan____lazy_storage___relativeInsertionPosition, &qword_27CE61CD0, &qword_21DC29AA8);

  return swift_deallocClassInstance();
}

void sub_21D7EF748(unint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_21DBFC59C();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_21D0D8CF0(0, &qword_280D0C1A0, 0x277CBDA58);
        v6 = sub_21DBFA69C();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_21D7EF9D8(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_21D7EF85C(0, v2, 1, a1);
  }
}

void sub_21D7EF85C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v26 = *a4;
    v4 = *a4 + 8 * a3 - 8;
    v5 = a1 - a3;
LABEL_6:
    v24 = v4;
    v25 = a3;
    v6 = *(v26 + 8 * a3);
    v23 = v5;
    while (1)
    {
      v7 = *v4;
      v8 = v6;
      v9 = v7;
      v10 = [v8 identifier];
      v11 = sub_21DBFA16C();
      v13 = v12;

      v14 = [v9 identifier];
      v15 = sub_21DBFA16C();
      v17 = v16;

      if (v15 == v11 && v17 == v13)
      {

LABEL_5:
        a3 = v25 + 1;
        v4 = v24 + 8;
        v5 = v23 - 1;
        if (v25 + 1 == a2)
        {
          return;
        }

        goto LABEL_6;
      }

      v19 = sub_21DBFC64C();

      if ((v19 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v26)
      {
        break;
      }

      v20 = *v4;
      v6 = *(v4 + 8);
      *v4 = v6;
      *(v4 + 8) = v20;
      v4 -= 8;
      if (__CFADD__(v5++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }
}

void sub_21D7EF9D8(void ***a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v6 = a3;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_106:
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_145;
    }

    v4 = v9;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v107 = v4;
LABEL_109:
      v4 = *(v107 + 2);
      if (v4 >= 2)
      {
        do
        {
          v108 = *v6;
          if (!*v6)
          {
            goto LABEL_143;
          }

          v6 = (v4 - 1);
          v109 = *&v107[16 * v4];
          v110 = v107;
          v111 = *&v107[16 * v4 + 24];
          sub_21D7F01D0((v108 + 8 * v109), (v108 + 8 * *&v107[16 * v4 + 16]), (v108 + 8 * v111), v5);
          if (v126)
          {
            break;
          }

          if (v111 < v109)
          {
            goto LABEL_132;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v110 = sub_21D82E300(v110);
          }

          if (v4 - 2 >= *(v110 + 2))
          {
            goto LABEL_133;
          }

          v112 = &v110[16 * v4];
          *v112 = v109;
          *(v112 + 1) = v111;
          sub_21D82E274(v4 - 1);
          v107 = v110;
          v4 = *(v110 + 2);
          v6 = a3;
        }

        while (v4 > 1);
      }

LABEL_117:

      return;
    }

LABEL_139:
    v107 = sub_21D82E300(v4);
    goto LABEL_109;
  }

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    v10 = v8++;
    if (v8 < v7)
    {
      v122 = v7;
      v114 = v9;
      v116 = v10;
      v4 = *v6;
      v11 = *(*v6 + 8 * v8);
      v12 = *(*v6 + 8 * v10);
      v13 = v11;
      v14 = v12;
      v15 = [v13 identifier];
      v5 = sub_21DBFA16C();
      v17 = v16;

      v18 = [v14 identifier];
      v19 = sub_21DBFA16C();
      v21 = v20;

      if (v19 == v5 && v21 == v17)
      {
        v127 = 0;
      }

      else
      {
        v127 = sub_21DBFC64C();
      }

      v10 = v116;
      v8 = v116 + 2;
      if (v116 + 2 < v122)
      {
        v4 += 8 * v116 + 16;
        do
        {
          v124 = v8;
          v24 = *(v4 - 8);
          v25 = *v4;
          v26 = v24;
          v27 = [v25 identifier];
          v5 = sub_21DBFA16C();
          v29 = v28;

          v30 = [v26 identifier];
          v31 = sub_21DBFA16C();
          v33 = v32;

          if (v31 == v5 && v33 == v29)
          {

            v8 = v124;
            if (v127)
            {
              v6 = a3;
              v9 = v114;
              v10 = v116;
              goto LABEL_25;
            }
          }

          else
          {
            v23 = sub_21DBFC64C();

            v8 = v124;
            if ((v127 ^ v23))
            {
              goto LABEL_23;
            }
          }

          ++v8;
          v4 += 8;
        }

        while (v122 != v8);
        v8 = v122;
LABEL_23:
        v10 = v116;
      }

      v6 = a3;
      v9 = v114;
      if (v127)
      {
LABEL_25:
        if (v8 < v10)
        {
          goto LABEL_136;
        }

        if (v10 < v8)
        {
          v35 = 8 * v8 - 8;
          v36 = 8 * v10;
          v37 = v8;
          v38 = v10;
          do
          {
            if (v38 != --v37)
            {
              v39 = *v6;
              if (!*v6)
              {
                goto LABEL_142;
              }

              v40 = *(v39 + v36);
              *(v39 + v36) = *(v39 + v35);
              *(v39 + v35) = v40;
            }

            ++v38;
            v35 -= 8;
            v36 += 8;
          }

          while (v38 < v37);
        }
      }
    }

    v41 = v6[1];
    if (v8 < v41)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_135;
      }

      if (v8 - v10 < a4)
      {
        break;
      }
    }

LABEL_54:
    if (v8 < v10)
    {
      goto LABEL_134;
    }

    v60 = v9;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v9 = v60;
    }

    else
    {
      v9 = sub_21D210B90(0, *(v60 + 2) + 1, 1, v60);
    }

    v4 = *(v9 + 2);
    v61 = *(v9 + 3);
    v62 = v4 + 1;
    if (v4 >= v61 >> 1)
    {
      v9 = sub_21D210B90((v61 > 1), v4 + 1, 1, v9);
    }

    *(v9 + 2) = v62;
    v63 = &v9[16 * v4];
    *(v63 + 4) = v10;
    *(v63 + 5) = v8;
    v64 = *a1;
    if (!*a1)
    {
      goto LABEL_144;
    }

    if (v4)
    {
      while (1)
      {
        v65 = v62 - 1;
        if (v62 >= 4)
        {
          break;
        }

        if (v62 == 3)
        {
          v66 = *(v9 + 4);
          v67 = *(v9 + 5);
          v76 = __OFSUB__(v67, v66);
          v68 = v67 - v66;
          v69 = v76;
LABEL_74:
          if (v69)
          {
            goto LABEL_123;
          }

          v82 = &v9[16 * v62];
          v84 = *v82;
          v83 = *(v82 + 1);
          v85 = __OFSUB__(v83, v84);
          v86 = v83 - v84;
          v87 = v85;
          if (v85)
          {
            goto LABEL_126;
          }

          v88 = &v9[16 * v65 + 32];
          v90 = *v88;
          v89 = *(v88 + 1);
          v76 = __OFSUB__(v89, v90);
          v91 = v89 - v90;
          if (v76)
          {
            goto LABEL_129;
          }

          if (__OFADD__(v86, v91))
          {
            goto LABEL_130;
          }

          if (v86 + v91 >= v68)
          {
            if (v68 < v91)
            {
              v65 = v62 - 2;
            }

            goto LABEL_95;
          }

          goto LABEL_88;
        }

        v92 = &v9[16 * v62];
        v94 = *v92;
        v93 = *(v92 + 1);
        v76 = __OFSUB__(v93, v94);
        v86 = v93 - v94;
        v87 = v76;
LABEL_88:
        if (v87)
        {
          goto LABEL_125;
        }

        v95 = &v9[16 * v65];
        v97 = *(v95 + 4);
        v96 = *(v95 + 5);
        v76 = __OFSUB__(v96, v97);
        v98 = v96 - v97;
        if (v76)
        {
          goto LABEL_128;
        }

        if (v98 < v86)
        {
          goto LABEL_3;
        }

LABEL_95:
        v4 = v65 - 1;
        if (v65 - 1 >= v62)
        {
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
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
          goto LABEL_138;
        }

        if (!*v6)
        {
          goto LABEL_141;
        }

        v5 = v8;
        v103 = v9;
        v104 = *&v9[16 * v4 + 32];
        v105 = *&v9[16 * v65 + 40];
        sub_21D7F01D0((*v6 + 8 * v104), (*v6 + 8 * *&v9[16 * v65 + 32]), (*v6 + 8 * v105), v64);
        if (v126)
        {
          goto LABEL_117;
        }

        if (v105 < v104)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v103 = sub_21D82E300(v103);
        }

        if (v4 >= *(v103 + 2))
        {
          goto LABEL_120;
        }

        v106 = &v103[16 * v4];
        *(v106 + 4) = v104;
        *(v106 + 5) = v105;
        sub_21D82E274(v65);
        v9 = v103;
        v62 = *(v103 + 2);
        v8 = v5;
        if (v62 <= 1)
        {
          goto LABEL_3;
        }
      }

      v70 = &v9[16 * v62 + 32];
      v71 = *(v70 - 64);
      v72 = *(v70 - 56);
      v76 = __OFSUB__(v72, v71);
      v73 = v72 - v71;
      if (v76)
      {
        goto LABEL_121;
      }

      v75 = *(v70 - 48);
      v74 = *(v70 - 40);
      v76 = __OFSUB__(v74, v75);
      v68 = v74 - v75;
      v69 = v76;
      if (v76)
      {
        goto LABEL_122;
      }

      v77 = &v9[16 * v62];
      v79 = *v77;
      v78 = *(v77 + 1);
      v76 = __OFSUB__(v78, v79);
      v80 = v78 - v79;
      if (v76)
      {
        goto LABEL_124;
      }

      v76 = __OFADD__(v68, v80);
      v81 = v68 + v80;
      if (v76)
      {
        goto LABEL_127;
      }

      if (v81 >= v73)
      {
        v99 = &v9[16 * v65 + 32];
        v101 = *v99;
        v100 = *(v99 + 1);
        v76 = __OFSUB__(v100, v101);
        v102 = v100 - v101;
        if (v76)
        {
          goto LABEL_131;
        }

        if (v68 < v102)
        {
          v65 = v62 - 2;
        }

        goto LABEL_95;
      }

      goto LABEL_74;
    }

LABEL_3:
    v7 = v6[1];
    if (v8 >= v7)
    {
      goto LABEL_106;
    }
  }

  v42 = v10 + a4;
  if (__OFADD__(v10, a4))
  {
    goto LABEL_137;
  }

  if (v42 >= v41)
  {
    v42 = v6[1];
  }

  if (v42 < v10)
  {
LABEL_138:
    __break(1u);
    goto LABEL_139;
  }

  if (v8 == v42)
  {
    goto LABEL_54;
  }

  v115 = v9;
  v117 = v10;
  v128 = *v6;
  v4 = *v6 + 8 * v8 - 8;
  v43 = v10 - v8;
  v120 = v42;
LABEL_43:
  v123 = v4;
  v125 = v8;
  v44 = *(v128 + 8 * v8);
  v121 = v43;
  v45 = v43;
  while (1)
  {
    v46 = *v4;
    v47 = v44;
    v48 = v46;
    v49 = [v47 identifier];
    v5 = sub_21DBFA16C();
    v51 = v50;

    v52 = [v48 identifier];
    v53 = sub_21DBFA16C();
    v55 = v54;

    if (v53 == v5 && v55 == v51)
    {

LABEL_42:
      v8 = v125 + 1;
      v4 = v123 + 8;
      v43 = v121 - 1;
      if ((v125 + 1) == v120)
      {
        v8 = v120;
        v6 = a3;
        v9 = v115;
        v10 = v117;
        goto LABEL_54;
      }

      goto LABEL_43;
    }

    v57 = sub_21DBFC64C();

    if ((v57 & 1) == 0)
    {
      goto LABEL_42;
    }

    if (!v128)
    {
      break;
    }

    v58 = *v4;
    v44 = *(v4 + 8);
    *v4 = v44;
    *(v4 + 8) = v58;
    v4 -= 8;
    if (__CFADD__(v45++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
}

uint64_t sub_21D7F01D0(void **__dst, void **__src, char *a3, void **a4)
{
  v4 = a3;
  v5 = __dst;
  v6 = __src - __dst;
  v7 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v7 = __src - __dst;
  }

  v8 = v7 >> 3;
  v9 = a3 - __src;
  v10 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v10 = a3 - __src;
  }

  v11 = v10 >> 3;
  if (v8 >= v10 >> 3)
  {
    v5 = __src;
    if (a4 != __src || &__src[v11] <= a4)
    {
      v30 = a4;
      memmove(a4, __src, 8 * v11);
      a4 = v30;
    }

    v55 = &a4[v11];
    v13 = a4;
    if (v9 >= 8 && v5 > __dst)
    {
      v50 = a4;
LABEL_31:
      v54 = v5;
      v31 = v5 - 1;
      v32 = v4;
      v33 = v55;
      v52 = v31;
      do
      {
        v34 = *--v33;
        v35 = *v31;
        v36 = v34;
        v37 = v35;
        v38 = [v36 identifier];
        v39 = sub_21DBFA16C();
        v41 = v40;

        v42 = [v37 identifier];
        v43 = sub_21DBFA16C();
        v45 = v44;

        if (v43 == v39 && v45 == v41)
        {

          v4 = v32 - 8;
        }

        else
        {
          v47 = sub_21DBFC64C();

          v4 = v32 - 8;
          if (v47)
          {
            v13 = v50;
            if (v32 != v54)
            {
              *v4 = *v52;
            }

            if (v55 <= v50 || (v5 = v52, v52 <= __dst))
            {
              v5 = v52;
              goto LABEL_48;
            }

            goto LABEL_31;
          }
        }

        v13 = v50;
        v31 = v52;
        if (v55 != v32)
        {
          *v4 = *v33;
        }

        v55 = v33;
        v32 = v4;
      }

      while (v33 > v50);
      v55 = v33;
      v5 = v54;
    }
  }

  else
  {
    v13 = a4;
    if (a4 != __dst || &__dst[v8] <= a4)
    {
      memmove(a4, __dst, 8 * v8);
    }

    v55 = &v13[v8];
    if (v6 >= 8 && __src < v4)
    {
      v14 = __src;
      v51 = v4;
      while (1)
      {
        v53 = v14;
        v15 = *v13;
        v16 = *v14;
        v17 = v15;
        v18 = [v16 identifier];
        v19 = sub_21DBFA16C();
        v21 = v20;

        v22 = [v17 identifier];
        v23 = sub_21DBFA16C();
        v25 = v24;

        v26 = v23 == v19 && v25 == v21;
        if (v26)
        {
          break;
        }

        v27 = sub_21DBFC64C();

        if ((v27 & 1) == 0)
        {
          goto LABEL_20;
        }

        v28 = v53;
        v14 = v53 + 1;
        v29 = v51;
        if (v5 != v53)
        {
          goto LABEL_21;
        }

LABEL_22:
        ++v5;
        if (v13 >= v55 || v14 >= v29)
        {
          goto LABEL_48;
        }
      }

LABEL_20:
      v28 = v13;
      v26 = v5 == v13++;
      v14 = v53;
      v29 = v51;
      if (v26)
      {
        goto LABEL_22;
      }

LABEL_21:
      *v5 = *v28;
      goto LABEL_22;
    }
  }

LABEL_48:
  if (v5 != v13 || v5 >= (v13 + ((v55 - v13 + (v55 - v13 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v5, v13, 8 * (v55 - v13));
  }

  return 1;
}

unint64_t sub_21D7F06A4()
{
  result = qword_27CE61CD8;
  if (!qword_27CE61CD8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRAccountsListsPresenterCapability.GroupCreationValidationError, &type metadata for TTRAccountsListsPresenterCapability.GroupCreationValidationError, v0, v1);
    atomic_store(result, &qword_27CE61CD8);
  }

  return result;
}

double destroy for TTRAccountsListsPresenterCapability.ViewModelGroupCreationParams(uint64_t a1)
{

  sub_21D1078C0(*(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 112), *(a1 + 120));
  sub_21D0FB9F4(*(a1 + 128), *(a1 + 136), *(a1 + 144));

  return result;
}

uint64_t initializeWithCopy for TTRAccountsListsPresenterCapability.ViewModelGroupCreationParams(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v5;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  v6 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v6;
  v7 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v7;
  v8 = *(a2 + 72);
  v9 = *(a2 + 80);
  v10 = *(a2 + 88);
  v11 = *(a2 + 96);
  v12 = *(a2 + 104);
  v22 = *(a2 + 112);
  v21 = *(a2 + 120);
  v13 = v4;
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21D0FB960(v8, v9, v10, v11, v12, v22, v21);
  *(a1 + 72) = v8;
  *(a1 + 80) = v9;
  *(a1 + 88) = v10;
  *(a1 + 96) = v11;
  *(a1 + 104) = v12;
  *(a1 + 112) = v22;
  *(a1 + 120) = v21;
  v14 = *(a2 + 128);
  v15 = *(a2 + 136);
  LOBYTE(v7) = *(a2 + 144);
  sub_21D0FB9BC(v14, v15, v7);
  *(a1 + 128) = v14;
  *(a1 + 136) = v15;
  *(a1 + 144) = v7;
  *(a1 + 145) = *(a2 + 145);
  *(a1 + 152) = *(a2 + 152);
  v16 = *(a2 + 176);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 176) = v16;
  v17 = *(a2 + 192);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 192) = v17;
  v18 = *(a2 + 208);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 208) = v18;
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 224) = *(a2 + 224);
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  v19 = v17;
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  return a1;
}

uint64_t assignWithCopy for TTRAccountsListsPresenterCapability.ViewModelGroupCreationParams(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  sub_21DBF8E0C();

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  sub_21DBF8E0C();

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  sub_21DBF8E0C();

  v7 = *(a2 + 72);
  v8 = *(a2 + 80);
  v9 = *(a2 + 88);
  v10 = *(a2 + 96);
  v11 = *(a2 + 104);
  v12 = *(a2 + 112);
  v13 = *(a2 + 120);
  sub_21D0FB960(v7, v8, v9, v10, v11, v12, v13);
  v14 = *(a1 + 72);
  v15 = *(a1 + 80);
  v16 = *(a1 + 88);
  v17 = *(a1 + 96);
  v18 = *(a1 + 104);
  v19 = *(a1 + 112);
  v20 = *(a1 + 120);
  *(a1 + 72) = v7;
  *(a1 + 80) = v8;
  *(a1 + 88) = v9;
  *(a1 + 96) = v10;
  *(a1 + 104) = v11;
  *(a1 + 112) = v12;
  *(a1 + 120) = v13;
  sub_21D1078C0(v14, v15, v16, v17, v18, v19, v20);
  v21 = *(a2 + 128);
  v22 = *(a2 + 136);
  LOBYTE(v9) = *(a2 + 144);
  sub_21D0FB9BC(v21, v22, v9);
  v23 = *(a1 + 128);
  v24 = *(a1 + 136);
  v25 = *(a1 + 144);
  *(a1 + 128) = v21;
  *(a1 + 136) = v22;
  *(a1 + 144) = v9;
  sub_21D0FB9F4(v23, v24, v25);
  *(a1 + 145) = *(a2 + 145);
  *(a1 + 146) = *(a2 + 146);
  *(a1 + 147) = *(a2 + 147);
  *(a1 + 148) = *(a2 + 148);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 168) = *(a2 + 168);
  sub_21DBF8E0C();

  *(a1 + 176) = *(a2 + 176);
  sub_21DBF8E0C();

  *(a1 + 184) = *(a2 + 184);
  sub_21DBF8E0C();

  v26 = *(a1 + 192);
  v27 = *(a2 + 192);
  *(a1 + 192) = v27;
  v28 = v27;

  *(a1 + 200) = *(a2 + 200);
  *(a1 + 208) = *(a2 + 208);
  sub_21DBF8E0C();

  *(a1 + 216) = *(a2 + 216);
  *(a1 + 217) = *(a2 + 217);
  *(a1 + 224) = *(a2 + 224);
  sub_21DBF8E0C();

  return a1;
}

__n128 __swift_memcpy232_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[13];
  *(a1 + 224) = *(a2 + 28);
  *(a1 + 192) = v11;
  *(a1 + 208) = v12;
  *(a1 + 176) = result;
  return result;
}

uint64_t assignWithTake for TTRAccountsListsPresenterCapability.ViewModelGroupCreationParams(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;

  v5 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v5;

  *(a1 + 24) = *(a2 + 24);
  v6 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v6;

  v7 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v7;

  v8 = *(a2 + 120);
  v9 = *(a1 + 72);
  v10 = *(a1 + 80);
  v11 = *(a1 + 88);
  v12 = *(a1 + 96);
  v13 = *(a1 + 104);
  v14 = *(a1 + 112);
  v15 = *(a1 + 120);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = v8;
  sub_21D1078C0(v9, v10, v11, v12, v13, v14, v15);
  v16 = *(a2 + 144);
  v17 = *(a1 + 128);
  v18 = *(a1 + 136);
  v19 = *(a1 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v16;
  sub_21D0FB9F4(v17, v18, v19);
  *(a1 + 145) = *(a2 + 145);
  *(a1 + 146) = *(a2 + 146);
  *(a1 + 147) = *(a2 + 147);
  *(a1 + 148) = *(a2 + 148);
  *(a1 + 152) = *(a2 + 152);

  *(a1 + 168) = *(a2 + 168);

  v20 = *(a1 + 192);
  *(a1 + 184) = *(a2 + 184);

  v21 = *(a2 + 208);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 208) = v21;

  *(a1 + 216) = *(a2 + 216);
  *(a1 + 217) = *(a2 + 217);
  *(a1 + 224) = *(a2 + 224);

  return a1;
}

uint64_t getEnumTagSinglePayload for TTRAccountsListsPresenterCapability.ViewModelGroupCreationParams(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 232))
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

uint64_t storeEnumTagSinglePayload for TTRAccountsListsPresenterCapability.ViewModelGroupCreationParams(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0u;
    *(result + 216) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 232) = 1;
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

    *(result + 232) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double destroy for TTRAccountsListsPresenterCapability.GroupCreationParams(id *a1)
{

  return result;
}

uint64_t initializeWithCopy for TTRAccountsListsPresenterCapability.GroupCreationParams(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = *(a2 + 32);
  v7 = v3;
  v8 = v4;
  v9 = v5;
  sub_21DBF8E0C();
  return a1;
}

uint64_t assignWithCopy for TTRAccountsListsPresenterCapability.GroupCreationParams(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  v7 = *(a2 + 8);
  v8 = *(a1 + 8);
  *(a1 + 8) = v7;
  v9 = v7;

  v10 = *(a2 + 16);
  v11 = *(a2 + 24);
  v12 = *(a1 + 16);
  *(a1 + 16) = v10;
  *(a1 + 24) = v11;
  v13 = v10;

  *(a1 + 32) = *(a2 + 32);
  sub_21DBF8E0C();

  return a1;
}

uint64_t assignWithTake for TTRAccountsListsPresenterCapability.GroupCreationParams(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *a1 = *a2;

  v5 = *(a2 + 24);
  v6 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v5;

  *(a1 + 32) = *(a2 + 32);

  return a1;
}

uint64_t assignWithCopy for TTRAccountsListsPresenterCapability.CustomSmartListCreationParams(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  sub_21DBF8E0C();

  v7 = *(a2 + 24);
  v8 = *(a1 + 24);
  *(a1 + 24) = v7;
  v9 = v7;

  return a1;
}

uint64_t assignWithTake for TTRAccountsListsPresenterCapability.CustomSmartListCreationParams(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  v5 = *(a1 + 24);
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

double destroy for TTRAccountsListsPresenterCapability.ListPinningParams(void *a1)
{
  if (*a1 >= 2uLL)
  {
  }

  return result;
}

uint64_t sub_21D7F1070(uint64_t result, unint64_t *a2)
{
  v3 = *a2;
  if (*a2 >= 2)
  {
    v4 = result;
    sub_21DBF8E0C();
    result = v4;
  }

  *result = v3;
  *(result + 8) = *(a2 + 8);
  return result;
}

uint64_t assignWithCopy for TTRAccountsListsPresenterCapability.ListPinningParams(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  if (v4 >= 2)
  {
    if (v5 >= 2)
    {
      *a1 = v5;
      sub_21DBF8E0C();
    }

    else
    {
      sub_21D0CF7E0(a1, &qword_27CE61CE0, &unk_21DC29CF0);
      *a1 = *a2;
    }
  }

  else
  {
    *a1 = v5;
    if (v5 >= 2)
    {
      sub_21DBF8E0C();
    }
  }

  *(a1 + 8) = *(a2 + 8);
  return a1;
}

unint64_t *assignWithTake for TTRAccountsListsPresenterCapability.ListPinningParams(unint64_t *result, uint64_t a2)
{
  v3 = *a2;
  if (*result >= 2)
  {
    if (v3 >= 2)
    {
      *result = v3;
      v5 = result;

      result = v5;
    }

    else
    {
      v4 = result;
      sub_21D0CF7E0(result, &qword_27CE61CE0, &unk_21DC29CF0);
      result = v4;
      *v4 = v3;
    }
  }

  else
  {
    *result = v3;
  }

  *(result + 8) = *(a2 + 8);
  return result;
}

uint64_t getEnumTagSinglePayload for TTRAccountsListsPresenterCapability.ListPinningParams(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 9))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 2;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRAccountsListsPresenterCapability.ListPinningParams(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

double destroy for TTRAccountsListsPresenterCapability.ListPinningParams.Action(void *a1)
{
  if (*a1 >= 0xFFFFFFFFuLL)
  {
  }

  return result;
}

unint64_t *assignWithCopy for TTRAccountsListsPresenterCapability.ListPinningParams.Action(unint64_t *a1, unint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  if (v3 < 0xFFFFFFFF)
  {
    *a1 = v4;
    if (v4 >= 0xFFFFFFFF)
    {
      sub_21DBF8E0C();
    }
  }

  else if (v4 < 0xFFFFFFFF)
  {

    *a1 = *a2;
  }

  else
  {
    *a1 = v4;
    sub_21DBF8E0C();
  }

  return a1;
}

unint64_t *assignWithTake for TTRAccountsListsPresenterCapability.ListPinningParams.Action(unint64_t *result, unint64_t *a2)
{
  v2 = *a2;
  if (*result < 0xFFFFFFFF)
  {
    *result = v2;
  }

  else if (v2 < 0xFFFFFFFF)
  {
    v4 = result;

    result = v4;
    *v4 = v2;
  }

  else
  {
    *result = v2;
    v3 = result;

    return v3;
  }

  return result;
}

void sub_21D7F13D0(uint64_t a1)
{
  sub_21D0DA63C(319, &qword_280D19B10, type metadata accessor for TTRAccountsListsViewModel.Item, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_21D7F14D0(uint64_t a1)
{
  sub_21D7F15AC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_21D7F15AC(uint64_t a1)
{
  if (!qword_27CE61D08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE5A4E8, &qword_21DC0F9D8);
    v1 = sub_21DBFBA8C();
    if (!v2)
    {
      atomic_store(v1, &qword_27CE61D08);
    }
  }
}

void *initializeBufferWithCopyOfBuffer for TTRAccountsListsPresenterCapability.RemindersInsertionPlan.MovingParam(void *a1, unsigned __int8 *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v27 = *a2;
    *a1 = *a2;
    a1 = (v27 + ((v5 + 16) & ~v5));

    return a1;
  }

  v6 = *(a3 - 8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 1)
  {
    v28 = *(a2 + 1);
    *a1 = *a2;
    a1[1] = v28;
    v29 = *(a2 + 2);
    v30 = a2[25];
    v31 = a2[24];
    sub_21DBF8E0C();
    v32 = v28;
    sub_21D749C9C(v29, v31, v30);
    a1[2] = v29;
    *(a1 + 24) = v31;
    *(a1 + 25) = v30;
    goto LABEL_20;
  }

  if (!EnumCaseMultiPayload)
  {
    *a1 = *a2;
    sub_21DBF8E0C();
    v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61CC8, &unk_21DC29A98) + 48);
    v9 = a1 + v8;
    v10 = &a2[v8];
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61CC0, &qword_21DC29A90);
    v12 = swift_getEnumCaseMultiPayload();
    if (v12 == 1)
    {
      type metadata accessor for TTRAccountsListsViewModel.PinnedList(0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v35 = *v10;
        v36 = *(v10 + 1);
        *v9 = *v10;
        *(v9 + 1) = v36;
        *(v9 + 2) = *(v10 + 2);
        *(v9 + 24) = *(v10 + 24);
        v37 = *(v10 + 6);
        *(v9 + 5) = *(v10 + 5);
        *(v9 + 6) = v37;
        v38 = *(v10 + 8);
        *(v9 + 7) = *(v10 + 7);
        *(v9 + 8) = v38;
        v39 = *(v10 + 9);
        v40 = *(v10 + 11);
        v66 = *(v10 + 12);
        v64 = *(v10 + 13);
        v60 = *(v10 + 10);
        v62 = *(v10 + 14);
        v68 = v10[120];
        v41 = v35;
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        sub_21D0FB960(v39, v60, v40, v66, v64, v62, v68);
        *(v9 + 9) = v39;
        *(v9 + 10) = v60;
        *(v9 + 11) = v40;
        *(v9 + 12) = v66;
        *(v9 + 13) = v64;
        *(v9 + 14) = v62;
        v9[120] = v68;
        v42 = *(v10 + 16);
        v43 = *(v10 + 17);
        LOBYTE(v37) = v10[144];
        sub_21D0FB9BC(v42, v43, v37);
        *(v9 + 16) = v42;
        *(v9 + 17) = v43;
        v9[144] = v37;
        *(v9 + 145) = *(v10 + 145);
        *(v9 + 152) = *(v10 + 152);
        v44 = *(v10 + 22);
        *(v9 + 21) = *(v10 + 21);
        *(v9 + 22) = v44;
        v45 = *(v10 + 24);
        *(v9 + 23) = *(v10 + 23);
        *(v9 + 24) = v45;
        v46 = *(v10 + 26);
        *(v9 + 25) = *(v10 + 25);
        *(v9 + 26) = v46;
        *(v9 + 108) = *(v10 + 108);
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        v47 = v45;
        goto LABEL_19;
      }

LABEL_18:
      v48 = sub_21DBF56BC();
      (*(*(v48 - 8) + 16))(v9, v10, v48);
      v49 = type metadata accessor for TTRAccountsListsViewModel.SmartList(0);
      v9[v49[5]] = v10[v49[5]];
      *&v9[v49[6]] = *&v10[v49[6]];
      v50 = v49[7];
      v51 = &v9[v50];
      v52 = &v10[v50];
      v54 = *v52;
      v53 = *(v52 + 1);
      *v51 = v54;
      *(v51 + 1) = v53;
      *&v9[v49[8]] = *&v10[v49[8]];
      v9[v49[9]] = v10[v49[9]];
      v55 = v49[10];
      v56 = &v9[v55];
      v57 = &v10[v55];
      v58 = *(v57 + 1);
      *v56 = *v57;
      *(v56 + 1) = v58;
      sub_21DBF8E0C();
      goto LABEL_19;
    }

    if (!v12)
    {
      type metadata accessor for TTRAccountsListsViewModel.PinnedList(0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v13 = *v10;
        v14 = *(v10 + 1);
        *v9 = *v10;
        *(v9 + 1) = v14;
        *(v9 + 2) = *(v10 + 2);
        *(v9 + 24) = *(v10 + 24);
        v15 = *(v10 + 6);
        *(v9 + 5) = *(v10 + 5);
        *(v9 + 6) = v15;
        v16 = *(v10 + 8);
        *(v9 + 7) = *(v10 + 7);
        *(v9 + 8) = v16;
        v17 = *(v10 + 10);
        v18 = *(v10 + 11);
        v63 = *(v10 + 13);
        v65 = *(v10 + 12);
        v59 = *(v10 + 9);
        v61 = *(v10 + 14);
        v67 = v10[120];
        v19 = v13;
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        sub_21D0FB960(v59, v17, v18, v65, v63, v61, v67);
        *(v9 + 9) = v59;
        *(v9 + 10) = v17;
        *(v9 + 11) = v18;
        *(v9 + 12) = v65;
        *(v9 + 13) = v63;
        *(v9 + 14) = v61;
        v9[120] = v67;
        v20 = *(v10 + 16);
        v21 = *(v10 + 17);
        v22 = v10[144];
        sub_21D0FB9BC(v20, v21, v22);
        *(v9 + 16) = v20;
        *(v9 + 17) = v21;
        v9[144] = v22;
        *(v9 + 145) = *(v10 + 145);
        *(v9 + 152) = *(v10 + 152);
        v23 = *(v10 + 22);
        *(v9 + 21) = *(v10 + 21);
        *(v9 + 22) = v23;
        v24 = *(v10 + 24);
        *(v9 + 23) = *(v10 + 23);
        *(v9 + 24) = v24;
        v25 = *(v10 + 26);
        *(v9 + 25) = *(v10 + 25);
        *(v9 + 26) = v25;
        *(v9 + 108) = *(v10 + 108);
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        v26 = v24;
LABEL_19:
        sub_21DBF8E0C();
        swift_storeEnumTagMultiPayload();
        swift_storeEnumTagMultiPayload();
        goto LABEL_20;
      }

      goto LABEL_18;
    }

    memcpy(v9, v10, *(*(v11 - 8) + 64));
LABEL_20:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v33 = *(v6 + 64);

  return memcpy(a1, a2, v33);
}

double destroy for TTRAccountsListsPresenterCapability.RemindersInsertionPlan.MovingParam(uint64_t a1, uint64_t a2)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 1)
  {

    v6 = *(a1 + 16);
    v7 = *(a1 + 25);
    v8 = *(a1 + 24);

    sub_21D228468(v6, v8, v7);
  }

  else if (!EnumCaseMultiPayload)
  {

    v5 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61CC8, &unk_21DC29A98) + 48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61CC0, &qword_21DC29A90);
    if (swift_getEnumCaseMultiPayload() <= 1)
    {
      type metadata accessor for TTRAccountsListsViewModel.PinnedList(0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {

        sub_21D1078C0(*(v5 + 72), *(v5 + 80), *(v5 + 88), *(v5 + 96), *(v5 + 104), *(v5 + 112), *(v5 + 120));
        sub_21D0FB9F4(*(v5 + 128), *(v5 + 136), *(v5 + 144));
      }

      else
      {
        v9 = sub_21DBF56BC();
        (*(*(v9 - 8) + 8))(v5, v9);
        type metadata accessor for TTRAccountsListsViewModel.SmartList(0);
      }
    }
  }

  return result;
}

void *initializeWithCopy for TTRAccountsListsPresenterCapability.RemindersInsertionPlan.MovingParam(void *a1, unsigned __int8 *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 1)
  {
    v26 = *(a2 + 1);
    *a1 = *a2;
    a1[1] = v26;
    v27 = *(a2 + 2);
    v28 = a2[25];
    v29 = a2[24];
    sub_21DBF8E0C();
    v30 = v26;
    sub_21D749C9C(v27, v29, v28);
    a1[2] = v27;
    *(a1 + 24) = v29;
    *(a1 + 25) = v28;
    goto LABEL_18;
  }

  if (!EnumCaseMultiPayload)
  {
    *a1 = *a2;
    sub_21DBF8E0C();
    v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61CC8, &unk_21DC29A98) + 48);
    v8 = a1 + v7;
    v9 = &a2[v7];
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61CC0, &qword_21DC29A90);
    v11 = swift_getEnumCaseMultiPayload();
    if (v11 == 1)
    {
      type metadata accessor for TTRAccountsListsViewModel.PinnedList(0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v33 = *v9;
        v34 = *(v9 + 1);
        *v8 = *v9;
        *(v8 + 1) = v34;
        *(v8 + 2) = *(v9 + 2);
        *(v8 + 24) = *(v9 + 24);
        v35 = *(v9 + 6);
        *(v8 + 5) = *(v9 + 5);
        *(v8 + 6) = v35;
        v36 = *(v9 + 8);
        *(v8 + 7) = *(v9 + 7);
        *(v8 + 8) = v36;
        v37 = *(v9 + 9);
        v38 = *(v9 + 11);
        v64 = *(v9 + 12);
        v62 = *(v9 + 13);
        v58 = *(v9 + 10);
        v60 = *(v9 + 14);
        v66 = v9[120];
        v39 = v33;
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        sub_21D0FB960(v37, v58, v38, v64, v62, v60, v66);
        *(v8 + 9) = v37;
        *(v8 + 10) = v58;
        *(v8 + 11) = v38;
        *(v8 + 12) = v64;
        *(v8 + 13) = v62;
        *(v8 + 14) = v60;
        v8[120] = v66;
        v40 = *(v9 + 16);
        v41 = *(v9 + 17);
        LOBYTE(v35) = v9[144];
        sub_21D0FB9BC(v40, v41, v35);
        *(v8 + 16) = v40;
        *(v8 + 17) = v41;
        v8[144] = v35;
        *(v8 + 145) = *(v9 + 145);
        *(v8 + 152) = *(v9 + 152);
        v42 = *(v9 + 22);
        *(v8 + 21) = *(v9 + 21);
        *(v8 + 22) = v42;
        v43 = *(v9 + 24);
        *(v8 + 23) = *(v9 + 23);
        *(v8 + 24) = v43;
        v44 = *(v9 + 26);
        *(v8 + 25) = *(v9 + 25);
        *(v8 + 26) = v44;
        *(v8 + 108) = *(v9 + 108);
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        v45 = v43;
        goto LABEL_17;
      }

LABEL_16:
      v46 = sub_21DBF56BC();
      (*(*(v46 - 8) + 16))(v8, v9, v46);
      v47 = type metadata accessor for TTRAccountsListsViewModel.SmartList(0);
      v8[v47[5]] = v9[v47[5]];
      *&v8[v47[6]] = *&v9[v47[6]];
      v48 = v47[7];
      v49 = &v8[v48];
      v50 = &v9[v48];
      v52 = *v50;
      v51 = *(v50 + 1);
      *v49 = v52;
      *(v49 + 1) = v51;
      *&v8[v47[8]] = *&v9[v47[8]];
      v8[v47[9]] = v9[v47[9]];
      v53 = v47[10];
      v54 = &v8[v53];
      v55 = &v9[v53];
      v56 = *(v55 + 1);
      *v54 = *v55;
      *(v54 + 1) = v56;
      sub_21DBF8E0C();
      goto LABEL_17;
    }

    if (!v11)
    {
      type metadata accessor for TTRAccountsListsViewModel.PinnedList(0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v12 = *v9;
        v13 = *(v9 + 1);
        *v8 = *v9;
        *(v8 + 1) = v13;
        *(v8 + 2) = *(v9 + 2);
        *(v8 + 24) = *(v9 + 24);
        v14 = *(v9 + 6);
        *(v8 + 5) = *(v9 + 5);
        *(v8 + 6) = v14;
        v15 = *(v9 + 8);
        *(v8 + 7) = *(v9 + 7);
        *(v8 + 8) = v15;
        v16 = *(v9 + 10);
        v17 = *(v9 + 11);
        v61 = *(v9 + 13);
        v63 = *(v9 + 12);
        v57 = *(v9 + 9);
        v59 = *(v9 + 14);
        v65 = v9[120];
        v18 = v12;
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        sub_21D0FB960(v57, v16, v17, v63, v61, v59, v65);
        *(v8 + 9) = v57;
        *(v8 + 10) = v16;
        *(v8 + 11) = v17;
        *(v8 + 12) = v63;
        *(v8 + 13) = v61;
        *(v8 + 14) = v59;
        v8[120] = v65;
        v19 = *(v9 + 16);
        v20 = *(v9 + 17);
        v21 = v9[144];
        sub_21D0FB9BC(v19, v20, v21);
        *(v8 + 16) = v19;
        *(v8 + 17) = v20;
        v8[144] = v21;
        *(v8 + 145) = *(v9 + 145);
        *(v8 + 152) = *(v9 + 152);
        v22 = *(v9 + 22);
        *(v8 + 21) = *(v9 + 21);
        *(v8 + 22) = v22;
        v23 = *(v9 + 24);
        *(v8 + 23) = *(v9 + 23);
        *(v8 + 24) = v23;
        v24 = *(v9 + 26);
        *(v8 + 25) = *(v9 + 25);
        *(v8 + 26) = v24;
        *(v8 + 108) = *(v9 + 108);
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        v25 = v23;
LABEL_17:
        sub_21DBF8E0C();
        swift_storeEnumTagMultiPayload();
        swift_storeEnumTagMultiPayload();
        goto LABEL_18;
      }

      goto LABEL_16;
    }

    memcpy(v8, v9, *(*(v10 - 8) + 64));
LABEL_18:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v31 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v31);
}

unsigned __int8 *assignWithCopy for TTRAccountsListsPresenterCapability.RemindersInsertionPlan.MovingParam(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_21D101390(a1, type metadata accessor for TTRAccountsListsPresenterCapability.RemindersInsertionPlan.MovingParam);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 1)
  {
    *a1 = *a2;
    v21 = *(a2 + 1);
    *(a1 + 1) = v21;
    v22 = *(a2 + 2);
    v23 = a2[25];
    v24 = a2[24];
    sub_21DBF8E0C();
    v25 = v21;
    sub_21D749C9C(v22, v24, v23);
    *(a1 + 2) = v22;
    a1[24] = v24;
    a1[25] = v23;
    goto LABEL_19;
  }

  if (!EnumCaseMultiPayload)
  {
    *a1 = *a2;
    sub_21DBF8E0C();
    v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61CC8, &unk_21DC29A98) + 48);
    v8 = &a1[v7];
    v9 = &a2[v7];
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61CC0, &qword_21DC29A90);
    v11 = swift_getEnumCaseMultiPayload();
    if (v11 == 1)
    {
      type metadata accessor for TTRAccountsListsViewModel.PinnedList(0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v28 = *v9;
        *v8 = *v9;
        *(v8 + 1) = *(v9 + 1);
        *(v8 + 2) = *(v9 + 2);
        *(v8 + 3) = *(v9 + 3);
        *(v8 + 4) = *(v9 + 4);
        *(v8 + 5) = *(v9 + 5);
        *(v8 + 6) = *(v9 + 6);
        *(v8 + 7) = *(v9 + 7);
        *(v8 + 8) = *(v9 + 8);
        v29 = *(v9 + 9);
        v30 = *(v9 + 11);
        v52 = *(v9 + 12);
        v50 = *(v9 + 13);
        v46 = *(v9 + 10);
        v48 = *(v9 + 14);
        v54 = v9[120];
        v31 = v28;
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        sub_21D0FB960(v29, v46, v30, v52, v50, v48, v54);
        *(v8 + 9) = v29;
        *(v8 + 10) = v46;
        *(v8 + 11) = v30;
        *(v8 + 12) = v52;
        *(v8 + 13) = v50;
        *(v8 + 14) = v48;
        v8[120] = v54;
        v32 = *(v9 + 16);
        v33 = *(v9 + 17);
        v34 = v9[144];
        sub_21D0FB9BC(v32, v33, v34);
        *(v8 + 16) = v32;
        *(v8 + 17) = v33;
        v8[144] = v34;
        v8[145] = v9[145];
        v8[146] = v9[146];
        v8[147] = v9[147];
        v8[148] = v9[148];
        *(v8 + 19) = *(v9 + 19);
        *(v8 + 20) = *(v9 + 20);
        *(v8 + 21) = *(v9 + 21);
        *(v8 + 22) = *(v9 + 22);
        *(v8 + 23) = *(v9 + 23);
        v35 = *(v9 + 24);
        *(v8 + 24) = v35;
        *(v8 + 25) = *(v9 + 25);
        *(v8 + 26) = *(v9 + 26);
        v8[216] = v9[216];
        v8[217] = v9[217];
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        v36 = v35;
        goto LABEL_18;
      }

LABEL_17:
      v37 = sub_21DBF56BC();
      (*(*(v37 - 8) + 16))(v8, v9, v37);
      v38 = type metadata accessor for TTRAccountsListsViewModel.SmartList(0);
      v8[v38[5]] = v9[v38[5]];
      *&v8[v38[6]] = *&v9[v38[6]];
      v39 = v38[7];
      v40 = &v8[v39];
      v41 = &v9[v39];
      *v40 = *v41;
      *(v40 + 1) = *(v41 + 1);
      *&v8[v38[8]] = *&v9[v38[8]];
      v8[v38[9]] = v9[v38[9]];
      v42 = v38[10];
      v43 = &v8[v42];
      v44 = &v9[v42];
      *v43 = *v44;
      *(v43 + 1) = *(v44 + 1);
      sub_21DBF8E0C();
      goto LABEL_18;
    }

    if (!v11)
    {
      type metadata accessor for TTRAccountsListsViewModel.PinnedList(0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v12 = *v9;
        *v8 = *v9;
        *(v8 + 1) = *(v9 + 1);
        *(v8 + 2) = *(v9 + 2);
        *(v8 + 3) = *(v9 + 3);
        *(v8 + 4) = *(v9 + 4);
        *(v8 + 5) = *(v9 + 5);
        *(v8 + 6) = *(v9 + 6);
        *(v8 + 7) = *(v9 + 7);
        *(v8 + 8) = *(v9 + 8);
        v13 = *(v9 + 10);
        v14 = *(v9 + 11);
        v49 = *(v9 + 13);
        v51 = *(v9 + 12);
        v45 = *(v9 + 9);
        v47 = *(v9 + 14);
        v53 = v9[120];
        v15 = v12;
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        sub_21D0FB960(v45, v13, v14, v51, v49, v47, v53);
        *(v8 + 9) = v45;
        *(v8 + 10) = v13;
        *(v8 + 11) = v14;
        *(v8 + 12) = v51;
        *(v8 + 13) = v49;
        *(v8 + 14) = v47;
        v8[120] = v53;
        v16 = *(v9 + 16);
        v17 = *(v9 + 17);
        v18 = v9[144];
        sub_21D0FB9BC(v16, v17, v18);
        *(v8 + 16) = v16;
        *(v8 + 17) = v17;
        v8[144] = v18;
        v8[145] = v9[145];
        v8[146] = v9[146];
        v8[147] = v9[147];
        v8[148] = v9[148];
        *(v8 + 19) = *(v9 + 19);
        *(v8 + 20) = *(v9 + 20);
        *(v8 + 21) = *(v9 + 21);
        *(v8 + 22) = *(v9 + 22);
        *(v8 + 23) = *(v9 + 23);
        v19 = *(v9 + 24);
        *(v8 + 24) = v19;
        *(v8 + 25) = *(v9 + 25);
        *(v8 + 26) = *(v9 + 26);
        v8[216] = v9[216];
        v8[217] = v9[217];
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        v20 = v19;
LABEL_18:
        sub_21DBF8E0C();
        swift_storeEnumTagMultiPayload();
        swift_storeEnumTagMultiPayload();
        goto LABEL_19;
      }

      goto LABEL_17;
    }

    memcpy(v8, v9, *(*(v10 - 8) + 64));
LABEL_19:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v26 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v26);
}

void *initializeWithTake for TTRAccountsListsPresenterCapability.RemindersInsertionPlan.MovingParam(void *a1, void *a2, uint64_t a3)
{
  if (!swift_getEnumCaseMultiPayload())
  {
    *a1 = *a2;
    v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61CC8, &unk_21DC29A98) + 48);
    v9 = a1 + v8;
    v10 = a2 + v8;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61CC0, &qword_21DC29A90);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      v13 = type metadata accessor for TTRAccountsListsViewModel.PinnedList(0);
      if (swift_getEnumCaseMultiPayload())
      {
LABEL_10:
        memcpy(v9, v10, *(*(v13 - 8) + 64));
LABEL_13:
        swift_storeEnumTagMultiPayload();
        goto LABEL_14;
      }
    }

    else
    {
      if (EnumCaseMultiPayload)
      {
        memcpy(v9, v10, *(*(v11 - 8) + 64));
LABEL_14:
        swift_storeEnumTagMultiPayload();
        return a1;
      }

      v13 = type metadata accessor for TTRAccountsListsViewModel.PinnedList(0);
      if (swift_getEnumCaseMultiPayload())
      {
        goto LABEL_10;
      }
    }

    v14 = sub_21DBF56BC();
    (*(*(v14 - 8) + 32))(v9, v10, v14);
    v15 = type metadata accessor for TTRAccountsListsViewModel.SmartList(0);
    v9[v15[5]] = v10[v15[5]];
    *&v9[v15[6]] = *&v10[v15[6]];
    *&v9[v15[7]] = *&v10[v15[7]];
    *&v9[v15[8]] = *&v10[v15[8]];
    v9[v15[9]] = v10[v15[9]];
    *&v9[v15[10]] = *&v10[v15[10]];
    swift_storeEnumTagMultiPayload();
    goto LABEL_13;
  }

  v6 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v6);
}

void *assignWithTake for TTRAccountsListsPresenterCapability.RemindersInsertionPlan.MovingParam(void *a1, void *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_21D101390(a1, type metadata accessor for TTRAccountsListsPresenterCapability.RemindersInsertionPlan.MovingParam);
  if (!swift_getEnumCaseMultiPayload())
  {
    *a1 = *a2;
    v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61CC8, &unk_21DC29A98) + 48);
    v9 = a1 + v8;
    v10 = a2 + v8;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61CC0, &qword_21DC29A90);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      v13 = type metadata accessor for TTRAccountsListsViewModel.PinnedList(0);
      if (swift_getEnumCaseMultiPayload())
      {
LABEL_11:
        memcpy(v9, v10, *(*(v13 - 8) + 64));
LABEL_14:
        swift_storeEnumTagMultiPayload();
        goto LABEL_15;
      }
    }

    else
    {
      if (EnumCaseMultiPayload)
      {
        memcpy(v9, v10, *(*(v11 - 8) + 64));
LABEL_15:
        swift_storeEnumTagMultiPayload();
        return a1;
      }

      v13 = type metadata accessor for TTRAccountsListsViewModel.PinnedList(0);
      if (swift_getEnumCaseMultiPayload())
      {
        goto LABEL_11;
      }
    }

    v14 = sub_21DBF56BC();
    (*(*(v14 - 8) + 32))(v9, v10, v14);
    v15 = type metadata accessor for TTRAccountsListsViewModel.SmartList(0);
    v9[v15[5]] = v10[v15[5]];
    *&v9[v15[6]] = *&v10[v15[6]];
    *&v9[v15[7]] = *&v10[v15[7]];
    *&v9[v15[8]] = *&v10[v15[8]];
    v9[v15[9]] = v10[v15[9]];
    *&v9[v15[10]] = *&v10[v15[10]];
    swift_storeEnumTagMultiPayload();
    goto LABEL_14;
  }

  v6 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v6);
}

void sub_21D7F311C(uint64_t a1)
{
  sub_21D0DA63C(319, &qword_27CE61D20, type metadata accessor for TTRAccountsListsViewModel.PinnedList, type metadata accessor for TTRRelativeInsertionPosition);
  if (v1 <= 0x3F)
  {
    swift_getTupleTypeLayout2();
    v3 = &v2;
    v4 = &unk_21DC29E10;
    v5 = &unk_21DC29E10;
    swift_initEnumMetadataMultiPayload();
  }
}

char *initializeBufferWithCopyOfBuffer for TTRAccountsListsPresenterCapability.RemindersInsertionPlan.PinnableListMoveSubject(char *a1, char **a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v9 = *a2;
    *a1 = *a2;
    a1 = &v9[(v5 + 16) & ~v5];
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v6 = *a2;
      v7 = *(a2 + 8);
      *a1 = *a2;
      a1[8] = v7;
      v8 = v6;
    }

    else
    {
      type metadata accessor for TTRAccountsListsViewModel.PinnedList(0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v10 = *a2;
        v11 = a2[1];
        *a1 = *a2;
        *(a1 + 1) = v11;
        *(a1 + 2) = a2[2];
        *(a1 + 24) = *(a2 + 3);
        v12 = a2[6];
        *(a1 + 5) = a2[5];
        *(a1 + 6) = v12;
        v13 = a2[8];
        *(a1 + 7) = a2[7];
        *(a1 + 8) = v13;
        v14 = a2[9];
        v15 = a2[10];
        v17 = a2[11];
        v16 = a2[12];
        v38 = a2[14];
        v39 = a2[13];
        v37 = *(a2 + 120);
        v18 = v10;
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        sub_21D0FB960(v14, v15, v17, v16, v39, v38, v37);
        *(a1 + 9) = v14;
        *(a1 + 10) = v15;
        *(a1 + 11) = v17;
        *(a1 + 12) = v16;
        *(a1 + 13) = v39;
        *(a1 + 14) = v38;
        a1[120] = v37;
        v19 = a2[16];
        v20 = a2[17];
        LOBYTE(v12) = *(a2 + 144);
        sub_21D0FB9BC(v19, v20, v12);
        *(a1 + 16) = v19;
        *(a1 + 17) = v20;
        a1[144] = v12;
        *(a1 + 145) = *(a2 + 145);
        *(a1 + 152) = *(a2 + 19);
        v21 = a2[22];
        *(a1 + 21) = a2[21];
        *(a1 + 22) = v21;
        v22 = a2[24];
        *(a1 + 23) = a2[23];
        *(a1 + 24) = v22;
        v23 = a2[26];
        *(a1 + 25) = a2[25];
        *(a1 + 26) = v23;
        *(a1 + 108) = *(a2 + 108);
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        v24 = v22;
      }

      else
      {
        v25 = sub_21DBF56BC();
        (*(*(v25 - 8) + 16))(a1, a2, v25);
        v26 = type metadata accessor for TTRAccountsListsViewModel.SmartList(0);
        a1[v26[5]] = *(a2 + v26[5]);
        *&a1[v26[6]] = *(a2 + v26[6]);
        v27 = v26[7];
        v28 = &a1[v27];
        v29 = (a2 + v27);
        v31 = *v29;
        v30 = v29[1];
        *v28 = v31;
        *(v28 + 1) = v30;
        *&a1[v26[8]] = *(a2 + v26[8]);
        a1[v26[9]] = *(a2 + v26[9]);
        v32 = v26[10];
        v33 = &a1[v32];
        v34 = (a2 + v32);
        v35 = v34[1];
        *v33 = *v34;
        *(v33 + 1) = v35;
        sub_21DBF8E0C();
      }

      sub_21DBF8E0C();
      swift_storeEnumTagMultiPayload();
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

double destroy for TTRAccountsListsPresenterCapability.RemindersInsertionPlan.PinnableListMoveSubject(uint64_t a1, uint64_t a2)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = *a1;
  }

  else
  {
    type metadata accessor for TTRAccountsListsViewModel.PinnedList(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {

      sub_21D1078C0(*(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 112), *(a1 + 120));
      sub_21D0FB9F4(*(a1 + 128), *(a1 + 136), *(a1 + 144));
    }

    else
    {
      v5 = sub_21DBF56BC();
      (*(*(v5 - 8) + 8))(a1, v5);
      type metadata accessor for TTRAccountsListsViewModel.SmartList(0);
    }
  }

  return result;
}

uint64_t initializeWithCopy for TTRAccountsListsPresenterCapability.RemindersInsertionPlan.PinnableListMoveSubject(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = *a2;
    v6 = *(a2 + 8);
    *a1 = *a2;
    *(a1 + 8) = v6;
    v7 = v5;
  }

  else
  {
    type metadata accessor for TTRAccountsListsViewModel.PinnedList(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v8 = *a2;
      v9 = *(a2 + 8);
      *a1 = *a2;
      *(a1 + 8) = v9;
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 24) = *(a2 + 24);
      v10 = *(a2 + 48);
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 48) = v10;
      v11 = *(a2 + 64);
      *(a1 + 56) = *(a2 + 56);
      *(a1 + 64) = v11;
      v12 = *(a2 + 72);
      v13 = *(a2 + 80);
      v15 = *(a2 + 88);
      v14 = *(a2 + 96);
      v16 = *(a2 + 104);
      v38 = *(a2 + 112);
      v37 = *(a2 + 120);
      v17 = v8;
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21D0FB960(v12, v13, v15, v14, v16, v38, v37);
      *(a1 + 72) = v12;
      *(a1 + 80) = v13;
      *(a1 + 88) = v15;
      *(a1 + 96) = v14;
      *(a1 + 104) = v16;
      *(a1 + 112) = v38;
      *(a1 + 120) = v37;
      v18 = *(a2 + 128);
      v19 = *(a2 + 136);
      v20 = *(a2 + 144);
      sub_21D0FB9BC(v18, v19, v20);
      *(a1 + 128) = v18;
      *(a1 + 136) = v19;
      *(a1 + 144) = v20;
      *(a1 + 145) = *(a2 + 145);
      *(a1 + 152) = *(a2 + 152);
      v21 = *(a2 + 176);
      *(a1 + 168) = *(a2 + 168);
      *(a1 + 176) = v21;
      v22 = *(a2 + 192);
      *(a1 + 184) = *(a2 + 184);
      *(a1 + 192) = v22;
      v23 = *(a2 + 208);
      *(a1 + 200) = *(a2 + 200);
      *(a1 + 208) = v23;
      *(a1 + 216) = *(a2 + 216);
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      v24 = v22;
    }

    else
    {
      v25 = sub_21DBF56BC();
      (*(*(v25 - 8) + 16))(a1, a2, v25);
      v26 = type metadata accessor for TTRAccountsListsViewModel.SmartList(0);
      *(a1 + v26[5]) = *(a2 + v26[5]);
      *(a1 + v26[6]) = *(a2 + v26[6]);
      v27 = v26[7];
      v28 = (a1 + v27);
      v29 = (a2 + v27);
      v31 = *v29;
      v30 = v29[1];
      *v28 = v31;
      v28[1] = v30;
      *(a1 + v26[8]) = *(a2 + v26[8]);
      *(a1 + v26[9]) = *(a2 + v26[9]);
      v32 = v26[10];
      v33 = (a1 + v32);
      v34 = (a2 + v32);
      v35 = v34[1];
      *v33 = *v34;
      v33[1] = v35;
      sub_21DBF8E0C();
    }

    sub_21DBF8E0C();
    swift_storeEnumTagMultiPayload();
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t assignWithCopy for TTRAccountsListsPresenterCapability.RemindersInsertionPlan.PinnableListMoveSubject(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    sub_21D101390(a1, type metadata accessor for TTRAccountsListsPresenterCapability.RemindersInsertionPlan.PinnableListMoveSubject);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v5 = *a2;
      v6 = *(a2 + 8);
      *a1 = *a2;
      *(a1 + 8) = v6;
      v7 = v5;
    }

    else
    {
      type metadata accessor for TTRAccountsListsViewModel.PinnedList(0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v8 = *a2;
        *a1 = *a2;
        *(a1 + 8) = *(a2 + 8);
        *(a1 + 16) = *(a2 + 16);
        *(a1 + 24) = *(a2 + 24);
        *(a1 + 32) = *(a2 + 32);
        *(a1 + 40) = *(a2 + 40);
        *(a1 + 48) = *(a2 + 48);
        *(a1 + 56) = *(a2 + 56);
        *(a1 + 64) = *(a2 + 64);
        v9 = *(a2 + 72);
        v10 = *(a2 + 80);
        v12 = *(a2 + 88);
        v11 = *(a2 + 96);
        v29 = *(a2 + 112);
        v30 = *(a2 + 104);
        v28 = *(a2 + 120);
        v13 = v8;
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        sub_21D0FB960(v9, v10, v12, v11, v30, v29, v28);
        *(a1 + 72) = v9;
        *(a1 + 80) = v10;
        *(a1 + 88) = v12;
        *(a1 + 96) = v11;
        *(a1 + 104) = v30;
        *(a1 + 112) = v29;
        *(a1 + 120) = v28;
        v14 = *(a2 + 128);
        v15 = *(a2 + 136);
        v16 = *(a2 + 144);
        sub_21D0FB9BC(v14, v15, v16);
        *(a1 + 128) = v14;
        *(a1 + 136) = v15;
        *(a1 + 144) = v16;
        *(a1 + 145) = *(a2 + 145);
        *(a1 + 146) = *(a2 + 146);
        *(a1 + 147) = *(a2 + 147);
        *(a1 + 148) = *(a2 + 148);
        *(a1 + 152) = *(a2 + 152);
        *(a1 + 160) = *(a2 + 160);
        *(a1 + 168) = *(a2 + 168);
        *(a1 + 176) = *(a2 + 176);
        *(a1 + 184) = *(a2 + 184);
        v17 = *(a2 + 192);
        *(a1 + 192) = v17;
        *(a1 + 200) = *(a2 + 200);
        *(a1 + 208) = *(a2 + 208);
        *(a1 + 216) = *(a2 + 216);
        *(a1 + 217) = *(a2 + 217);
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        v18 = v17;
      }

      else
      {
        v19 = sub_21DBF56BC();
        (*(*(v19 - 8) + 16))(a1, a2, v19);
        v20 = type metadata accessor for TTRAccountsListsViewModel.SmartList(0);
        *(a1 + v20[5]) = *(a2 + v20[5]);
        *(a1 + v20[6]) = *(a2 + v20[6]);
        v21 = v20[7];
        v22 = (a1 + v21);
        v23 = (a2 + v21);
        *v22 = *v23;
        v22[1] = v23[1];
        *(a1 + v20[8]) = *(a2 + v20[8]);
        *(a1 + v20[9]) = *(a2 + v20[9]);
        v24 = v20[10];
        v25 = (a1 + v24);
        v26 = (a2 + v24);
        *v25 = *v26;
        v25[1] = v26[1];
        sub_21DBF8E0C();
      }

      sub_21DBF8E0C();
      swift_storeEnumTagMultiPayload();
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

char *initializeWithTake for TTRAccountsListsPresenterCapability.RemindersInsertionPlan.PinnableListMoveSubject(char *a1, char *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload())
  {
    v6 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v6);
  }

  else
  {
    v8 = type metadata accessor for TTRAccountsListsViewModel.PinnedList(0);
    if (swift_getEnumCaseMultiPayload())
    {
      memcpy(a1, a2, *(*(v8 - 8) + 64));
    }

    else
    {
      v9 = sub_21DBF56BC();
      (*(*(v9 - 8) + 32))(a1, a2, v9);
      v10 = type metadata accessor for TTRAccountsListsViewModel.SmartList(0);
      a1[v10[5]] = a2[v10[5]];
      *&a1[v10[6]] = *&a2[v10[6]];
      *&a1[v10[7]] = *&a2[v10[7]];
      *&a1[v10[8]] = *&a2[v10[8]];
      a1[v10[9]] = a2[v10[9]];
      *&a1[v10[10]] = *&a2[v10[10]];
      swift_storeEnumTagMultiPayload();
    }

    swift_storeEnumTagMultiPayload();
    return a1;
  }
}

char *assignWithTake for TTRAccountsListsPresenterCapability.RemindersInsertionPlan.PinnableListMoveSubject(char *a1, char *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_21D101390(a1, type metadata accessor for TTRAccountsListsPresenterCapability.RemindersInsertionPlan.PinnableListMoveSubject);
  if (!swift_getEnumCaseMultiPayload())
  {
    v8 = type metadata accessor for TTRAccountsListsViewModel.PinnedList(0);
    if (swift_getEnumCaseMultiPayload())
    {
      memcpy(a1, a2, *(*(v8 - 8) + 64));
    }

    else
    {
      v9 = sub_21DBF56BC();
      (*(*(v9 - 8) + 32))(a1, a2, v9);
      v10 = type metadata accessor for TTRAccountsListsViewModel.SmartList(0);
      a1[v10[5]] = a2[v10[5]];
      *&a1[v10[6]] = *&a2[v10[6]];
      *&a1[v10[7]] = *&a2[v10[7]];
      *&a1[v10[8]] = *&a2[v10[8]];
      a1[v10[9]] = a2[v10[9]];
      *&a1[v10[10]] = *&a2[v10[10]];
      swift_storeEnumTagMultiPayload();
    }

    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v6 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v6);
}

uint64_t sub_21D7F3EA8(uint64_t a1)
{
  result = type metadata accessor for TTRAccountsListsViewModel.PinnedList(319);
  if (v2 <= 0x3F)
  {
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

uint64_t assignWithCopy for TTRAccountsListsPresenterCapability.RemindersInsertionRequest.CreationTarget(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  sub_21D157850(*a2, v4);
  v5 = *a1;
  *a1 = v3;
  v6 = *(a1 + 8);
  *(a1 + 8) = v4;
  sub_21D157478(v5, v6);
  return a1;
}

uint64_t assignWithTake for TTRAccountsListsPresenterCapability.RemindersInsertionRequest.CreationTarget(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = *a1;
  *a1 = *a2;
  v5 = *(a1 + 8);
  *(a1 + 8) = v3;
  sub_21D157478(v4, v5);
  return a1;
}

double sub_21D7F4008(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 202) = 0u;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t objectdestroy_33Tm(void (*a1)(void))
{

  a1(*(v1 + 24));

  return swift_deallocObject();
}

uint64_t sub_21D7F4090(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D7F411C()
{
  sub_21D0D0E88(v0[2], v0[3]);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 10);
  __swift_destroy_boxed_opaque_existential_0(v0 + 15);
  __swift_destroy_boxed_opaque_existential_0(v0 + 20);

  return swift_deallocClassInstance();
}

void *sub_21D7F41A8(void *a1, void *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v9 = *a2;
    *a1 = *a2;
    a1 = (v9 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = sub_21DBF563C();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    v8 = *(a3 + 24);
    *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
    *(a1 + v8) = *(a2 + v8);
  }

  return a1;
}

uint64_t destroy for TTRTemplatePublicLinkData.CreatedStateDescription(uint64_t a1)
{
  v2 = sub_21DBF563C();
  v3 = *(*(v2 - 8) + 8);

  return v3(a1, v2);
}

uint64_t sub_21D7F42DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DBF563C();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  v7 = *(a3 + 24);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  *(a1 + v7) = *(a2 + v7);
  return a1;
}

uint64_t sub_21D7F4360(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DBF563C();
  (*(*(v6 - 8) + 24))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  *(a1 + *(a3 + 24)) = *(a2 + *(a3 + 24));
  return a1;
}

uint64_t sub_21D7F43E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DBF563C();
  (*(*(v6 - 8) + 32))(a1, a2, v6);
  v7 = *(a3 + 24);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  *(a1 + v7) = *(a2 + v7);
  return a1;
}

uint64_t sub_21D7F446C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21DBF563C();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  v7 = *(a3 + 24);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  *(a1 + v7) = *(a2 + v7);
  return a1;
}

uint64_t type metadata accessor for TTRIReminderDetailDueDateModificationInput(uint64_t a1)
{
  result = qword_27CE61D58;
  if (!qword_27CE61D58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21D7F4564(uint64_t a1)
{
  result = sub_21DBF563C();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t TTRReminderListCompletionBehavior.AlertContents.title.getter()
{
  v1 = *v0;
  sub_21DBF8E0C();
  return v1;
}

uint64_t TTRReminderListCompletionBehavior.AlertContents.message.getter()
{
  v1 = *(v0 + 16);
  sub_21DBF8E0C();
  return v1;
}

RemindersUICore::TTRReminderListCompletionBehavior::AlertContents __swiftcall TTRReminderListCompletionBehavior.AlertContents.init(title:message:)(Swift::String title, Swift::String message)
{
  *v2 = title;
  v2[1] = message;
  result.message = message;
  result.title = title;
  return result;
}

uint64_t TTRSetReminderCompletedPresenterCapability.__allocating_init(interactor:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t TTRSetReminderCompletedPresenterCapability.init(interactor:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t TTRSetReminderCompletedPresenterCapability.presenterUserConfirmation(forSettingCompletedTo:reminders:completionBehavior:with:)(char a1, uint64_t a2, _OWORD *a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 176) = a5;
  *(v6 + 184) = v5;
  *(v6 + 160) = a2;
  *(v6 + 168) = a4;
  *(v6 + 59) = a1;
  v7 = a3[1];
  *(v6 + 192) = *a3;
  *(v6 + 208) = v7;
  return MEMORY[0x2822009F8](sub_21D7F46E4, 0, 0);
}

uint64_t sub_21D7F46E4(uint64_t a1, uint64_t a2)
{
  if (!*(v2 + 168))
  {
    v5 = objc_opt_self();
    v6 = sub_21DBFA12C();
    [v5 internalErrorWithDebugDescription_];

    swift_willThrow();
    v7 = *(v2 + 8);
    v8 = 0;
LABEL_38:

    return v7(v8);
  }

  v3 = *(v2 + 200);
  v4 = *(v2 + 176);
  if (v3 <= 1)
  {
    if (!v3)
    {
      v8 = 0;
LABEL_37:
      v7 = *(v2 + 8);
      goto LABEL_38;
    }

    if (v3 != 1)
    {
LABEL_15:
      v29 = *(v2 + 216);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61D68, &qword_21DC29FC0);
      v30 = swift_allocObject();
      *(v2 + 224) = v30;
      *(v30 + 16) = xmmword_21DC08D00;
      v31 = qword_280D1BAA8;
      swift_unknownObjectRetain();
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      if (v31 != -1)
      {
LABEL_46:
        swift_once();
        v29 = *(v2 + 216);
        v3 = *(v2 + 200);
      }

      v32 = *(v2 + 208);
      v33 = *(v2 + 192);
      *(v30 + 32) = sub_21DBF516C();
      *(v30 + 40) = v34;
      *(v30 + 48) = 1;
      swift_getObjectType();
      *(v2 + 112) = v33;
      *(v2 + 120) = v3;
      *(v2 + 128) = v32;
      *(v2 + 136) = v29;
      *(v2 + 144) = v30;
      *(v2 + 152) = 2;
      v59 = (*(v4 + 8) + **(v4 + 8));
      v35 = swift_task_alloc();
      *(v2 + 232) = v35;
      *v35 = v2;
      v35[1] = sub_21D7F5134;

      return v59();
    }

LABEL_36:
    v8 = 1;
    goto LABEL_37;
  }

  if (v3 != 2)
  {
    if (v3 == 3)
    {
      v9 = *(v2 + 176);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EF40, &qword_21DC1F370);
      v10 = swift_allocObject();
      *(v2 + 288) = v10;
      *(v10 + 16) = xmmword_21DC08D20;
      v11 = qword_280D1BAA8;
      swift_unknownObjectRetain();
      if (v11 != -1)
      {
        swift_once();
      }

      *(v10 + 32) = sub_21DBF516C();
      *(v10 + 40) = v12;
      *(v10 + 48) = 1;
      *(v10 + 56) = sub_21DBF516C();
      *(v10 + 64) = v13;
      *(v10 + 72) = 256;
      v14 = sub_21DBF516C();
      v16 = v15;
      *(v2 + 296) = v15;
      v17 = sub_21DBF516C();
      v19 = v18;
      *(v2 + 304) = v18;
      ObjectType = swift_getObjectType();
      *(v2 + 16) = v14;
      *(v2 + 24) = v16;
      *(v2 + 32) = v17;
      *(v2 + 40) = v19;
      *(v2 + 48) = v10;
      *(v2 + 56) = 3;
      v58 = (*(v9 + 8) + **(v9 + 8));
      v21 = swift_task_alloc();
      *(v2 + 312) = v21;
      *v21 = v2;
      v21[1] = sub_21D7F546C;
      v22 = MEMORY[0x277D839B0];
      v23 = v2 + 57;
      v24 = v2 + 16;
      v25 = ObjectType;
      v26 = v9;
      v27 = v58;
      goto LABEL_12;
    }

    goto LABEL_15;
  }

  if (*(v2 + 59) != 1)
  {
    goto LABEL_36;
  }

  v36 = *(v2 + 160);
  v57 = *(v2 + 176);
  if (v36 >> 62)
  {
    v37 = sub_21DBFBD7C();
  }

  else
  {
    v37 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = *(v2 + 184);
  swift_unknownObjectRetain();
  if (!v37)
  {
LABEL_35:
    swift_unknownObjectRelease();
    goto LABEL_36;
  }

  v30 = 0;
  v60 = v36 & 0xC000000000000001;
  v38 = v36 & 0xFFFFFFFFFFFFFF8;
  v39 = *(v2 + 160) + 32;
  v40 = v37;
  while (1)
  {
    if (v60)
    {
      v41 = MEMORY[0x223D44740](v30, *(v2 + 160));
    }

    else
    {
      if (v30 >= *(v38 + 16))
      {
        goto LABEL_45;
      }

      v41 = *(v39 + 8 * v30);
    }

    v42 = v41;
    v43 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      __break(1u);
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    v44 = *(v4 + 24);
    v45 = swift_getObjectType();
    if ((*(v44 + 8))(v42, v45, v44))
    {
      break;
    }

LABEL_26:
    ++v30;
    if (v43 == v40)
    {
      goto LABEL_35;
    }
  }

  v46 = [v42 isRecurrent];

  if (v46)
  {
    goto LABEL_26;
  }

  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  v47 = sub_21DBF516C();
  v49 = v48;
  *(v2 + 248) = v48;
  v61 = sub_21DBF516C();
  v51 = v50;
  *(v2 + 256) = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EF40, &qword_21DC1F370);
  v52 = swift_allocObject();
  *(v2 + 264) = v52;
  *(v52 + 16) = xmmword_21DC08D20;
  *(v52 + 32) = sub_21DBF516C();
  *(v52 + 40) = v53;
  *(v52 + 48) = 256;
  *(v52 + 56) = sub_21DBF516C();
  *(v52 + 64) = v54;
  *(v52 + 72) = 1;
  v55 = swift_getObjectType();
  *(v2 + 64) = v47;
  *(v2 + 72) = v49;
  *(v2 + 80) = v61;
  *(v2 + 88) = v51;
  *(v2 + 96) = v52;
  *(v2 + 104) = 3;
  v62 = (*(v57 + 8) + **(v57 + 8));
  v56 = swift_task_alloc();
  *(v2 + 272) = v56;
  *v56 = v2;
  v56[1] = sub_21D7F52CC;
  v22 = MEMORY[0x277D839B0];
  v23 = v2 + 58;
  v24 = v2 + 64;
  v25 = v55;
  v26 = v57;
  v27 = v62;
LABEL_12:

  return v27(v23, v24, v22, v25, v26);
}

uint64_t sub_21D7F5134()
{
  *(*v1 + 240) = v0;

  if (v0)
  {
    v2 = sub_21D7F5658;
  }

  else
  {

    v2 = sub_21D7F5264;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21D7F5264()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_21D7F52CC()
{
  *(*v1 + 280) = v0;

  if (v0)
  {
    v2 = sub_21D7F56E8;
  }

  else
  {

    v2 = sub_21D7F5404;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21D7F5404()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 58);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_21D7F546C()
{
  *(*v1 + 320) = v0;

  if (v0)
  {
    v2 = sub_21D7F5778;
  }

  else
  {

    v2 = sub_21D7F559C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21D7F559C()
{
  if (*(v0 + 57) == 1)
  {
    v1 = *(v0 + 160);
    v2 = *(*(v0 + 184) + 24);
    ObjectType = swift_getObjectType();
    (*(v2 + 16))(v1, ObjectType, v2);
  }

  swift_unknownObjectRelease();
  v4 = *(v0 + 8);

  return v4(0);
}

uint64_t sub_21D7F5658()
{

  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_21D7F56E8()
{

  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_21D7F5778()
{

  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t TTRSetReminderCompletedPresenterCapability.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

double destroy for TTRReminderListCompletionBehavior(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = -1;
  if (v1 < 0xFFFFFFFF)
  {
    v2 = v1;
  }

  if (v1 && v2 - 1 < 0)
  {
  }

  return result;
}

void *initializeWithCopy for TTRReminderListCompletionBehavior(void *result, void *a2)
{
  v2 = a2[1];
  LODWORD(v3) = -1;
  if (v2 < 0xFFFFFFFF)
  {
    v3 = a2[1];
  }

  if (v3 - 1 < 0 && v2)
  {
    *result = *a2;
    result[1] = v2;
    v5 = a2[3];
    result[2] = a2[2];
    result[3] = v5;
    v6 = result;
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    return v6;
  }

  else
  {
    v4 = *(a2 + 1);
    *result = *a2;
    *(result + 1) = v4;
  }

  return result;
}

_OWORD *assignWithCopy for TTRReminderListCompletionBehavior(_OWORD *result, uint64_t a2)
{
  v2 = *(result + 1);
  LODWORD(v3) = -1;
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v4) = -1;
  }

  else
  {
    v4 = *(result + 1);
  }

  v5 = v4 - 1;
  v6 = *(a2 + 8);
  if (v6 < 0xFFFFFFFF)
  {
    v3 = *(a2 + 8);
  }

  v7 = v3 - 1;
  if (v5 < 0)
  {
    if ((v7 & 0x80000000) == 0)
    {
      if (v2)
      {
        v9 = result;
        v10 = a2;

        a2 = v10;
        result = v9;
      }

      goto LABEL_13;
    }

    if (v2)
    {
      if (v6)
      {
        *result = *a2;
        v12 = result;
        v13 = a2;
        sub_21DBF8E0C();

        *(v12 + 2) = *(v13 + 16);
        v8 = v12;
        *(v12 + 3) = *(v13 + 24);
        sub_21DBF8E0C();
      }

      else
      {
        v8 = result;
        v14 = a2;
        sub_21D7F5A5C(result);
        v15 = v14[1];
        *v8 = *v14;
        v8[1] = v15;
      }

      return v8;
    }
  }

  else if ((v7 & 0x80000000) == 0)
  {
LABEL_13:
    v11 = *(a2 + 16);
    *result = *a2;
    result[1] = v11;
    return result;
  }

  if (!v6)
  {
    goto LABEL_13;
  }

  *result = *a2;
  *(result + 2) = *(a2 + 16);
  v8 = result;
  *(result + 3) = *(a2 + 24);
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  return v8;
}

uint64_t sub_21D7F5A5C(uint64_t a1)
{

  return a1;
}

uint64_t assignWithTake for TTRReminderListCompletionBehavior(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  LODWORD(v3) = -1;
  if (v2 < 0xFFFFFFFF)
  {
    v3 = *(result + 8);
  }

  if (v3 - 1 >= 0)
  {
    goto LABEL_4;
  }

  v5 = *(a2 + 8);
  LODWORD(v6) = -1;
  if (v5 < 0xFFFFFFFF)
  {
    v6 = *(a2 + 8);
  }

  if (v6 - 1 >= 0)
  {
    if (v2)
    {
      v7 = result;
      v8 = a2;

      a2 = v8;
      result = v7;
    }

    goto LABEL_4;
  }

  if (!v2)
  {
LABEL_4:
    v4 = *(a2 + 16);
    *result = *a2;
    *(result + 16) = v4;
    return result;
  }

  if (v5)
  {
    *result = *a2;
    *(result + 8) = v5;
    v9 = result;
    v10 = a2;

    v11 = *(v10 + 24);
    *(v9 + 16) = *(v10 + 16);
    *(v9 + 24) = v11;
  }

  else
  {
    v9 = result;
    v12 = a2;
    sub_21D7F5A5C(result);
    v13 = v12[1];
    *v9 = *v12;
    *(v9 + 16) = v13;
  }

  return v9;
}

uint64_t getEnumTagSinglePayload for TTRReminderListCompletionBehavior(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 32))
  {
    return (*a1 + 2147483644);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  v5 = v4 + 1;
  v6 = v4 - 2;
  if (v5 >= 4)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TTRReminderListCompletionBehavior(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 3;
    }
  }

  return result;
}

void *sub_21D7F5C1C(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    result[2] = 0;
    result[3] = 0;
    *result = a2 - 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = a2;
  }

  return result;
}

uint64_t sub_21D7F5CEC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v12 = MEMORY[0x277D84F90];
    sub_21D18E820(0, v1, 0);
    v2 = v12;
    v4 = a1 + 48;
    do
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61E68, &unk_21DC2A2C0);
      swift_dynamicCast();
      v5 = v10;
      v7 = *(v12 + 16);
      v6 = *(v12 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_21D18E820((v6 > 1), v7 + 1, 1);
        v5 = v10;
      }

      *(v12 + 16) = v7 + 1;
      v8 = v12 + 24 * v7;
      *(v8 + 32) = v5;
      *(v8 + 48) = v11;
      v4 += 24;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_21D7F5E1C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v9 = MEMORY[0x277D84F90];
    sub_21D18E9A0(0, v1, 0);
    v4 = a1 + 32;
    v2 = v9;
    do
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61E78, &qword_21DC2A2E0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61E80, &qword_21DC2A2E8);
      swift_dynamicCast();
      v6 = *(v9 + 16);
      v5 = *(v9 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_21D18E9A0((v5 > 1), v6 + 1, 1);
      }

      *(v9 + 16) = v6 + 1;
      *(v9 + 8 * v6 + 32) = v8;
      v4 += 8;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_21D7F5F48(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_21DBFBD7C();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v7 = MEMORY[0x277D84F90];
    result = sub_21DBFC01C();
    if (v2 < 0)
    {
      __break(1u);
    }

    else
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = 0;
        do
        {
          v5 = v4 + 1;
          MEMORY[0x223D44740]();
          __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61B88, &qword_21DC2A2B0);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61E60, &qword_21DC2A2B8);
          swift_dynamicCast();
          sub_21DBFBFEC();
          sub_21DBFC03C();
          sub_21DBFC04C();
          sub_21DBFBFFC();
          v4 = v5;
        }

        while (v2 != v5);
      }

      else
      {
        v6 = a1 + 32;
        do
        {
          v6 += 8;

          __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61B88, &qword_21DC2A2B0);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61E60, &qword_21DC2A2B8);
          swift_dynamicCast();
          sub_21DBFBFEC();
          sub_21DBFC03C();
          sub_21DBFC04C();
          sub_21DBFBFFC();
          --v2;
        }

        while (v2);
      }

      return v7;
    }
  }

  return result;
}

uint64_t sub_21D7F613C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_21DBFBD7C();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v9 = MEMORY[0x277D84F90];
    result = sub_21DBFC01C();
    if (v2 < 0)
    {
      __break(1u);
    }

    else
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = 0;
        do
        {
          v5 = v4 + 1;
          MEMORY[0x223D44740]();
          sub_21D0D8CF0(0, &qword_27CE5A908, 0x277CD3E98);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5DF70, &unk_21DC1B248);
          swift_dynamicCast();
          sub_21DBFBFEC();
          sub_21DBFC03C();
          sub_21DBFC04C();
          sub_21DBFBFFC();
          v4 = v5;
        }

        while (v2 != v5);
      }

      else
      {
        v6 = (a1 + 32);
        sub_21D0D8CF0(0, &qword_27CE5A908, 0x277CD3E98);
        do
        {
          v7 = *v6++;
          v8 = v7;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5DF70, &unk_21DC1B248);
          swift_dynamicCast();
          sub_21DBFBFEC();
          sub_21DBFC03C();
          sub_21DBFC04C();
          sub_21DBFBFFC();
          --v2;
        }

        while (v2);
      }

      return v9;
    }
  }

  return result;
}

uint64_t sub_21D7F6350(uint64_t a1)
{
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59C48, &unk_21DC0CEE0);
  v2 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v4 = &v16 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61E70, &unk_21DC2A2D0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  v9 = *(a1 + 16);
  v10 = MEMORY[0x277D84F90];
  if (v9)
  {
    v17 = MEMORY[0x277D84F90];
    sub_21D18F0AC(0, v9, 0);
    v10 = v17;
    v11 = a1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v12 = *(v2 + 72);
    do
    {
      sub_21D7F92CC(v11, v4);
      swift_dynamicCast();
      v17 = v10;
      v14 = *(v10 + 16);
      v13 = *(v10 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_21D18F0AC((v13 > 1), v14 + 1, 1);
        v10 = v17;
      }

      *(v10 + 16) = v14 + 1;
      sub_21D7F933C(v8, v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v14);
      v11 += v12;
      --v9;
    }

    while (v9);
  }

  return v10;
}

uint64_t sub_21D7F6588(unint64_t a1, uint64_t (*a2)(BOOL, uint64_t, uint64_t), uint64_t a3)
{
  if (a1 >> 62)
  {
    v6 = sub_21DBFBD7C();
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = MEMORY[0x277D84F90];
  if (!v6)
  {
    return v7;
  }

  v21 = MEMORY[0x277D84F90];
  result = a2(0, v6 & ~(v6 >> 63), 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v7 = v21;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v9 = 0;
      do
      {
        v10 = MEMORY[0x223D44740](v9, a1);
        v12 = *(v21 + 16);
        v11 = *(v21 + 24);
        if (v12 >= v11 >> 1)
        {
          v14 = v10;
          a2(v11 > 1, v12 + 1, 1);
          v10 = v14;
        }

        ++v9;
        *(v21 + 16) = v12 + 1;
        v13 = v21 + 16 * v12;
        *(v13 + 32) = v10;
        *(v13 + 40) = a3;
      }

      while (v6 != v9);
    }

    else
    {
      v15 = (a1 + 32);
      v16 = *(v21 + 16);
      v17 = 16 * v16;
      do
      {
        v18 = *v15;
        v19 = *(v21 + 24);

        if (v16 >= v19 >> 1)
        {
          a2(v19 > 1, v16 + 1, 1);
        }

        *(v21 + 16) = v16 + 1;
        v20 = v21 + v17;
        *(v20 + 32) = v18;
        *(v20 + 40) = a3;
        v17 += 16;
        ++v15;
        ++v16;
        --v6;
      }

      while (v6);
    }

    return v7;
  }

  __break(1u);
  return result;
}

char *sub_21D7F674C(unint64_t a1, unint64_t *a2, void *a3)
{
  if (a1 >> 62)
  {
    v6 = sub_21DBFBD7C();
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = MEMORY[0x277D84F90];
  if (!v6)
  {
    return v7;
  }

  v17 = MEMORY[0x277D84F90];
  result = sub_21D18F3D8(0, v6 & ~(v6 >> 63), 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v7 = v17;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v6; ++i)
      {
        MEMORY[0x223D44740](i, a1);
        sub_21D0D8CF0(0, a2, a3);
        swift_dynamicCast();
        v17 = v7;
        v11 = *(v7 + 16);
        v10 = *(v7 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_21D18F3D8((v10 > 1), v11 + 1, 1);
          v7 = v17;
        }

        *(v7 + 16) = v11 + 1;
        sub_21D0CF2E8(v16, (v7 + 32 * v11 + 32));
      }
    }

    else
    {
      v12 = (a1 + 32);
      sub_21D0D8CF0(0, a2, a3);
      do
      {
        v13 = *v12;
        swift_dynamicCast();
        v17 = v7;
        v15 = *(v7 + 16);
        v14 = *(v7 + 24);
        if (v15 >= v14 >> 1)
        {
          sub_21D18F3D8((v14 > 1), v15 + 1, 1);
          v7 = v17;
        }

        *(v7 + 16) = v15 + 1;
        sub_21D0CF2E8(v16, (v7 + 32 * v15 + 32));
        ++v12;
        --v6;
      }

      while (v6);
    }

    return v7;
  }

  __break(1u);
  return result;
}

char *sub_21D7F6938(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_21DBFBD7C();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v12 = MEMORY[0x277D84F90];
  result = sub_21D18F3D8(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v12;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        MEMORY[0x223D44740](i, a1);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DF40, &qword_21DC1B230);
        swift_dynamicCast();
        v12 = v3;
        v7 = *(v3 + 16);
        v6 = *(v3 + 24);
        if (v7 >= v6 >> 1)
        {
          sub_21D18F3D8((v6 > 1), v7 + 1, 1);
          v3 = v12;
        }

        *(v3 + 16) = v7 + 1;
        sub_21D0CF2E8(v11, (v3 + 32 * v7 + 32));
      }
    }

    else
    {
      v8 = a1 + 32;
      do
      {
        swift_unknownObjectRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DF40, &qword_21DC1B230);
        swift_dynamicCast();
        v12 = v3;
        v10 = *(v3 + 16);
        v9 = *(v3 + 24);
        if (v10 >= v9 >> 1)
        {
          sub_21D18F3D8((v9 > 1), v10 + 1, 1);
          v3 = v12;
        }

        *(v3 + 16) = v10 + 1;
        sub_21D0CF2E8(v11, (v3 + 32 * v10 + 32));
        v8 += 8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

void *sub_21D7F6B68(unint64_t a1, unint64_t *a2, void *a3, uint64_t a4)
{
  if (a1 >> 62)
  {
    v8 = sub_21DBFBD7C();
  }

  else
  {
    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = MEMORY[0x277D84F90];
  if (!v8)
  {
    return v9;
  }

  v23 = MEMORY[0x277D84F90];
  result = sub_21D18F670(0, v8 & ~(v8 >> 63), 0);
  if ((v8 & 0x8000000000000000) == 0)
  {
    v9 = v23;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v11 = 0;
      do
      {
        v12 = MEMORY[0x223D44740](v11, a1);
        v23 = v9;
        v14 = *(v9 + 16);
        v13 = *(v9 + 24);
        if (v14 >= v13 >> 1)
        {
          sub_21D18F670((v13 > 1), v14 + 1, 1);
          v9 = v23;
        }

        ++v11;
        v21 = sub_21D0D8CF0(0, a2, a3);
        v22 = a4;
        *&v20 = v12;
        *(v9 + 16) = v14 + 1;
        sub_21D0D0FD0(&v20, v9 + 40 * v14 + 32);
      }

      while (v8 != v11);
    }

    else
    {
      v15 = (a1 + 32);
      do
      {
        v16 = *v15;
        v23 = v9;
        v18 = *(v9 + 16);
        v17 = *(v9 + 24);
        v19 = v16;
        if (v18 >= v17 >> 1)
        {
          sub_21D18F670((v17 > 1), v18 + 1, 1);
          v9 = v23;
        }

        v21 = sub_21D0D8CF0(0, a2, a3);
        v22 = a4;
        *&v20 = v19;
        *(v9 + 16) = v18 + 1;
        sub_21D0D0FD0(&v20, v9 + 40 * v18 + 32);
        ++v15;
        --v8;
      }

      while (v8);
    }

    return v9;
  }

  __break(1u);
  return result;
}

uint64_t sub_21D7F6D2C(uint64_t a1)
{
  v2 = sub_21DBF8B7C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v21 = MEMORY[0x277D84F90];
    sub_21D18F79C(0, v6, 0);
    v7 = v21;
    v10 = *(v3 + 16);
    v8 = v3 + 16;
    v9 = v10;
    v11 = a1 + ((*(v8 + 64) + 32) & ~*(v8 + 64));
    v17 = *(v8 + 56);
    do
    {
      v9(v5, v11, v2);
      v21 = v7;
      v13 = *(v7 + 16);
      v12 = *(v7 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_21D18F79C((v12 > 1), v13 + 1, 1);
      }

      v19 = v2;
      v20 = MEMORY[0x277D74CF8];
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v18);
      v9(boxed_opaque_existential_0, v5, v2);
      v7 = v21;
      *(v21 + 16) = v13 + 1;
      sub_21D0D0FD0(&v18, v7 + 40 * v13 + 32);
      (*(v8 - 8))(v5, v2);
      v11 += v17;
      --v6;
    }

    while (v6);
  }

  return v7;
}

uint64_t TTRReminderCopyPasteItem.reminders(in:)(void *a1)
{
  v3 = sub_21DBFC1BC();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_21D7F8B78();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21DC1C120;
  *(inited + 32) = sub_21D0D8CF0(0, &qword_27CE61D88, 0x277CBEAC0);
  *(inited + 40) = sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
  *(inited + 48) = sub_21D0D8CF0(0, &qword_27CE5A398, 0x277D44560);
  *(inited + 56) = sub_21D0D8CF0(0, &unk_27CE61D90, 0x277D446C8);
  *(inited + 64) = sub_21D0D8CF0(0, &qword_27CE5A390, 0x277D447C8);
  sub_21DBF521C();
  swift_allocObject();
  sub_21DBF520C();
  sub_21D0D8CF0(0, &qword_27CE61DA0, 0x277CCAAC8);
  sub_21D7F5E1C(inited);

  sub_21DBFB08C();

  if (v1)
  {
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE61DB0, &unk_21DC2A0B0);
  sub_21DBF5F6C();
  v7 = sub_21DBF777C();
  swift_allocObject();
  v8 = a1;
  v9 = sub_21DBF775C();
  sub_21DBFC1AC();
  v14[3] = v7;
  v14[0] = v9;

  v10 = sub_21DBF51FC();
  sub_21D17C854(v14, v5);
  v10(v13, 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61DC0, &qword_21DC2A0C0);
  sub_21D7F8D64(&qword_27CE61DD0, sub_21D7F8BF0, MEMORY[0x277D83978]);
  sub_21DBF51EC();
  sub_21D1A8418(v15);

  return v14[0];
}

uint64_t sub_21D7F7228()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE61D70);
  v1 = __swift_project_value_buffer(v0, qword_27CE61D70);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_21D7F72F0()
{
  sub_21DBFBEEC();
  if (qword_280D19F80 != -1)
  {
    swift_once();
  }

  v1 = qword_280D19F88;
  v0 = *algn_280D19F90;
  sub_21DBF8E0C();

  result = MEMORY[0x223D42AA0](0xD000000000000012, 0x800000021DC6C010);
  qword_280D152D8 = v1;
  unk_280D152E0 = v0;
  return result;
}

uint64_t static TTRReminderCopyPasteItem.pasteboardTypeString.getter()
{
  if (qword_280D152D0 != -1)
  {
    swift_once();
  }

  v0 = qword_280D152D8;
  sub_21DBF8E0C();
  return v0;
}

uint64_t TTRReminderCopyPasteItem.Reminder.init(reminder:children:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_21D7F7434()
{
  if (*v0)
  {
    return 0x6E6572646C696863;
  }

  else
  {
    return 0x7265646E696D6572;
  }
}

void sub_21D7F7468(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7265646E696D6572 && a2 == 0xE800000000000000;
  if (v6 || (sub_21DBFC64C() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x6E6572646C696863 && a2 == 0xE800000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_21DBFC64C();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_21D7F7544(uint64_t a1)
{
  v2 = sub_21D7F8C44();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21D7F7580(uint64_t a1)
{
  v2 = sub_21D7F8C44();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TTRReminderCopyPasteItem.Reminder.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61DE0, &qword_21DC2A0C8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - v6;
  v8 = *v1;
  v11 = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21D7F8C44();
  v9 = v8;
  sub_21DBFC88C();
  v13 = v9;
  v12 = 0;
  sub_21DBF635C();
  sub_21D7F8C98(&qword_27CE61DF0, MEMORY[0x277D44FC8]);
  sub_21DBFC56C();

  if (!v2)
  {
    v13 = v11;
    v12 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61DF8, &qword_21DC2A0D0);
    sub_21D7F8CDC(&qword_27CE61E00, &qword_27CE61DF0, MEMORY[0x277D44FC8], MEMORY[0x277D83948]);
    sub_21DBFC56C();
  }

  return (*(v5 + 8))(v7, v4);
}

void TTRReminderCopyPasteItem.Reminder.init(from:)(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61E08, &qword_21DC2A0D8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21D7F8C44();
  sub_21DBFC87C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    sub_21DBF635C();
    v13 = 0;
    sub_21D7F8C98(&qword_27CE61E10, MEMORY[0x277D44FD0]);
    sub_21DBFC4EC();
    v9 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61DF8, &qword_21DC2A0D0);
    v13 = 1;
    sub_21D7F8CDC(&qword_27CE61E18, &qword_27CE61E10, MEMORY[0x277D44FD0], MEMORY[0x277D83978]);
    sub_21DBFC4EC();
    (*(v6 + 8))(v8, v5);
    v10 = v14;
    *a2 = v9;
    a2[1] = v10;
    v11 = v9;
    sub_21DBF8E0C();
    __swift_destroy_boxed_opaque_existential_0(a1);
  }
}

id TTRReminderCopyPasteItem.init(_:)(uint64_t a1)
{
  v2 = v1;
  v79[4] = *MEMORY[0x277D85DE8];
  ObjectType = swift_getObjectType();
  v5 = sub_21DBFC1BC();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  if (!v8)
  {

    *&v2[OBJC_IVAR____TtC15RemindersUICore24TTRReminderCopyPasteItem_metadata] = xmmword_21DC2A0A0;
    *&v2[OBJC_IVAR____TtC15RemindersUICore24TTRReminderCopyPasteItem_storages] = xmmword_21DC2A0A0;
    v27 = &v2[OBJC_IVAR____TtC15RemindersUICore24TTRReminderCopyPasteItem_titles];
    *v27 = 0;
    *(v27 + 1) = 0;
    v76.receiver = v2;
    v76.super_class = ObjectType;
    return objc_msgSendSuper2(&v76, sel_init);
  }

  v75 = ObjectType;
  v9 = *(a1 + 40);
  v10 = *(a1 + 32);
  sub_21DBF8E0C();
  v74 = v10;
  v11 = [v10 store];
  sub_21DBF525C();
  swift_allocObject();
  v12 = sub_21DBF524C();
  v13 = v11;
  sub_21D17942C(MEMORY[0x277D84F90]);
  v14 = sub_21DBF777C();
  swift_allocObject();
  v73 = v13;
  v15 = sub_21DBF775C();
  sub_21DBFC1AC();
  v79[3] = v14;
  v79[0] = v15;

  v16 = sub_21DBF523C();
  sub_21D17C854(v79, v7);
  v16(v78, 0);
  v79[0] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61DC0, &qword_21DC2A0C0);
  sub_21D7F8D64(&qword_27CE61E20, sub_21D7F8DDC, MEMORY[0x277D83948]);
  v72 = v12;
  v17 = sub_21DBF522C();
  v71 = v15;
  v69 = v17;
  v32 = v31;
  v33 = objc_opt_self();
  sub_21DBF776C();
  sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
  sub_21D183A0C();
  v34 = sub_21DBF9E5C();

  v79[0] = 0;
  v35 = [v33 archivedDataWithRootObject:v34 requiringSecureCoding:1 error:v79];

  v36 = v79[0];
  if (v35)
  {
    v68 = v9;
    v37 = sub_21DBF551C();
    v39 = v38;

    v40 = &v2[OBJC_IVAR____TtC15RemindersUICore24TTRReminderCopyPasteItem_metadata];
    v41 = v69;
    *v40 = v69;
    *(v40 + 1) = v32;
    v42 = &v2[OBJC_IVAR____TtC15RemindersUICore24TTRReminderCopyPasteItem_storages];
    *v42 = v37;
    v42[1] = v39;
    v67 = v32;
    sub_21D1BAF70(v41, v32);
    v66 = v37;
    v65 = v39;
    sub_21D1BAF70(v37, v39);
    v43 = 0;
    v44 = a1 + 40;
    v63 = v8 - 1;
    v70 = MEMORY[0x277D84F90];
    v64 = a1 + 40;
LABEL_11:
    v45 = v44 + 16 * v43;
    v46 = v43;
    while (v46 < *(a1 + 16))
    {
      v43 = v46 + 1;
      v47 = *(v45 - 8);
      sub_21DBF8E0C();
      v48 = [v47 titleAsString];
      if (v48)
      {
        v39 = v48;
        v62 = sub_21DBFA16C();
        v61 = v49;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v70 = sub_21D210A84(0, *(v70 + 2) + 1, 1, v70);
        }

        v51 = *(v70 + 2);
        v50 = *(v70 + 3);
        if (v51 >= v50 >> 1)
        {
          v70 = sub_21D210A84((v50 > 1), v51 + 1, 1, v70);
        }

        v52 = v70;
        *(v70 + 2) = v51 + 1;
        v53 = &v52[16 * v51];
        v54 = v61;
        *(v53 + 4) = v62;
        *(v53 + 5) = v54;
        v44 = v64;
        if (v63 == v46)
        {
LABEL_21:

          v79[0] = v70;
          __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61630, &qword_21DC0B3A0);
          sub_21D1ADAA8();
          v55 = sub_21DBFA07C();
          v57 = v56;
          sub_21D17B8A8(v66, v65);
          sub_21D17B8A8(v69, v67);

          v58 = &v2[OBJC_IVAR____TtC15RemindersUICore24TTRReminderCopyPasteItem_titles];
          *v58 = v55;
          v58[1] = v57;
          v30 = v75;
          goto LABEL_22;
        }

        goto LABEL_11;
      }

      v45 += 16;
      ++v46;
      if (v8 == v43)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
  }

  else
  {
    v60 = v36;

    v39 = sub_21DBF52DC();

    swift_willThrow();
    sub_21D17B8A8(v69, v32);
    if (qword_27CE56CE8 == -1)
    {
      goto LABEL_4;
    }
  }

  swift_once();
LABEL_4:
  v18 = sub_21DBF84BC();
  __swift_project_value_buffer(v18, qword_27CE61D70);
  v19 = v39;
  v20 = sub_21DBF84AC();
  v21 = sub_21DBFAEBC();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v79[0] = v23;
    *v22 = 136315138;
    swift_getErrorValue();
    v24 = sub_21DBFC74C();
    v26 = sub_21D0CDFB4(v24, v25, v79);

    *(v22 + 4) = v26;
    _os_log_impl(&dword_21D0C9000, v20, v21, "error creating copy paste item %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v23);
    MEMORY[0x223D46520](v23, -1, -1);
    MEMORY[0x223D46520](v22, -1, -1);
  }

  else
  {
  }

  *&v2[OBJC_IVAR____TtC15RemindersUICore24TTRReminderCopyPasteItem_metadata] = xmmword_21DC2A0A0;
  *&v2[OBJC_IVAR____TtC15RemindersUICore24TTRReminderCopyPasteItem_storages] = xmmword_21DC2A0A0;
  v29 = &v2[OBJC_IVAR____TtC15RemindersUICore24TTRReminderCopyPasteItem_titles];
  *v29 = 0;
  *(v29 + 1) = 0;
  v30 = v75;
LABEL_22:
  v77.receiver = v2;
  v77.super_class = v30;
  v28 = objc_msgSendSuper2(&v77, sel_init);

  return v28;
}

id TTRReminderCopyPasteItem.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TTRReminderCopyPasteItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall TTRReminderCopyPasteItem.encode(with:)(NSCoder with)
{
  v2 = sub_21DBF54FC();
  v3 = sub_21DBFA12C();
  [(objc_class *)with.super.isa encodeObject:v2 forKey:v3];

  v4 = sub_21DBF54FC();
  v5 = sub_21DBFA12C();
  [(objc_class *)with.super.isa encodeObject:v4 forKey:v5];
}

id TTRReminderCopyPasteItem.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id TTRReminderCopyPasteItem.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  sub_21D0D8CF0(0, &qword_27CE61E40, 0x277CBEA90);
  v3 = sub_21DBFB5DC();
  if (v3)
  {
    v4 = v3;
    v5 = sub_21DBF551C();
    v7 = v6;

    v8 = sub_21DBFB5DC();
    if (v8)
    {
      v9 = v8;
      v10 = sub_21DBF551C();
      v12 = v11;

      v13 = objc_allocWithZone(ObjectType);
      v14 = &v13[OBJC_IVAR____TtC15RemindersUICore24TTRReminderCopyPasteItem_metadata];
      *v14 = v5;
      v14[1] = v7;
      v15 = &v13[OBJC_IVAR____TtC15RemindersUICore24TTRReminderCopyPasteItem_storages];
      *v15 = v10;
      v15[1] = v12;
      v16 = &v13[OBJC_IVAR____TtC15RemindersUICore24TTRReminderCopyPasteItem_titles];
      *v16 = 0;
      *(v16 + 1) = 0;
      sub_21D1BAF70(v5, v7);
      sub_21D1BAF70(v10, v12);
      v19.receiver = v13;
      v19.super_class = ObjectType;
      v17 = objc_msgSendSuper2(&v19, sel_init);

      sub_21D17B8A8(v10, v12);
      sub_21D17B8A8(v5, v7);
      swift_getObjectType();
      swift_deallocPartialClassInstance();
      return v17;
    }

    sub_21D17B8A8(v5, v7);
  }

  else
  {
  }

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t TTRReminderCopyPasteItem.loadData(withTypeIdentifier:forItemProviderCompletionHandler:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, unint64_t, void *))
{
  v14[1] = *MEMORY[0x277D85DE8];
  v14[0] = 0;
  v5 = [objc_opt_self() archivedDataWithRootObject:v3 requiringSecureCoding:1 error:v14];
  v6 = v14[0];
  if (v5)
  {
    v7 = sub_21DBF551C();
    v9 = v8;

    sub_21D1BAF70(v7, v9);
    a3(v7, v9, 0);
    sub_21D17B8A8(v7, v9);
    sub_21D17B8A8(v7, v9);
  }

  else
  {
    v10 = v6;
    v11 = sub_21DBF52DC();

    swift_willThrow();
    v12 = v11;
    a3(0, 0xF000000000000000, v11);
  }

  return 0;
}

id sub_21D7F890C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63980, &unk_21DC09140);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_21DC08D00;
  if (qword_280D152D0 != -1)
  {
    swift_once();
  }

  v1 = unk_280D152E0;
  *(v0 + 32) = qword_280D152D8;
  *(v0 + 40) = v1;
  sub_21DBF8E0C();
  v2 = sub_21DBFA5DC();

  return v2;
}

uint64_t sub_21D7F89D4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63980, &unk_21DC09140);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_21DC08D00;
  if (qword_280D152D0 != -1)
  {
    swift_once();
  }

  v1 = unk_280D152E0;
  *(v0 + 32) = qword_280D152D8;
  *(v0 + 40) = v1;
  sub_21DBF8E0C();
  return v0;
}

uint64_t sub_21D7F8B78()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61E78, &qword_21DC2A2E0);
  if (swift_isClassType())
  {
    v1 = v0 == 0;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    v2 = &unk_27CE61E88;
    v3 = &unk_21DC2A2F0;
  }

  else
  {
    v2 = &unk_27CE5E450;
    v3 = &unk_21DC09E70;
  }

  return __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
}

unint64_t sub_21D7F8BF0()
{
  result = qword_27CE61DD8;
  if (!qword_27CE61DD8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRReminderCopyPasteItem.Reminder, &type metadata for TTRReminderCopyPasteItem.Reminder, v0, v1);
    atomic_store(result, &qword_27CE61DD8);
  }

  return result;
}

unint64_t sub_21D7F8C44()
{
  result = qword_27CE61DE8;
  if (!qword_27CE61DE8)
  {
    result = swift_getWitnessTable(byte_21DC2A24C, &type metadata for TTRReminderCopyPasteItem.Reminder.CodingKeys, v0, v1);
    atomic_store(result, &qword_27CE61DE8);
  }

  return result;
}

uint64_t sub_21D7F8C98(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = sub_21DBF635C();
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21D7F8CDC(unint64_t *a1, unint64_t *a2, const char *a3, const char *a4)
{
  result = *a1;
  if (!result)
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE61DF8, &qword_21DC2A0D0);
    v10 = sub_21D7F8C98(a2, a3);
    result = swift_getWitnessTable(a4, v9, &v10);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21D7F8D64(unint64_t *a1, uint64_t (*a2)(void), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE61DC0, &qword_21DC2A0C0);
    v8 = a2();
    result = swift_getWitnessTable(a3, v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21D7F8DDC()
{
  result = qword_27CE61E28;
  if (!qword_27CE61E28)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRReminderCopyPasteItem.Reminder, &type metadata for TTRReminderCopyPasteItem.Reminder, v0, v1);
    atomic_store(result, &qword_27CE61E28);
  }

  return result;
}

uint64_t sub_21D7F8E30(uint64_t a1, uint64_t a2)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v14[0] = 0;
  v3 = [objc_opt_self() archivedDataWithRootObject:a1 requiringSecureCoding:1 error:v14];
  v4 = v14[0];
  if (v3)
  {
    v5 = sub_21DBF551C();
    v7 = v6;

    sub_21D1BAF70(v5, v7);
    v8 = sub_21DBF54FC();
    (*(a2 + 16))(a2, v8, 0);

    sub_21D17B8A8(v5, v7);
    sub_21D17B8A8(v5, v7);
  }

  else
  {
    v9 = v4;
    v10 = sub_21DBF52DC();

    swift_willThrow();
    v11 = v10;
    v12 = sub_21DBF52CC();
    (*(a2 + 16))(a2, 0, v12);
  }

  return 0;
}

void *sub_21D7F8F98(uint64_t a1, uint64_t a2)
{
  sub_21D0D8CF0(0, &qword_27CE61DA0, 0x277CCAAC8);
  result = sub_21DBFB07C();
  if (!v3)
  {
    if (result)
    {
      v5 = v2;
    }

    else
    {
      v5 = 0;
      v7[1] = 0;
      v7[2] = 0;
    }

    v7[0] = result;
    v7[3] = v5;
    v6 = result;
    sub_21DBF5F6C();

    sub_21D1A8418(v7);
    return v7[4];
  }

  return result;
}

double destroy for TTRReminderCopyPasteItem.Reminder(id *a1)
{

  return result;
}

uint64_t assignWithCopy for TTRReminderCopyPasteItem.Reminder(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  *(a1 + 8) = *(a2 + 8);
  sub_21DBF8E0C();

  return a1;
}

id *assignWithTake for TTRReminderCopyPasteItem.Reminder(id *a1, _OWORD *a2)
{
  *a1 = *a2;

  return a1;
}

unint64_t sub_21D7F91C8()
{
  result = qword_27CE61E48;
  if (!qword_27CE61E48)
  {
    result = swift_getWitnessTable(byte_21DC2A224, &type metadata for TTRReminderCopyPasteItem.Reminder.CodingKeys, v0, v1);
    atomic_store(result, &qword_27CE61E48);
  }

  return result;
}

unint64_t sub_21D7F9220()
{
  result = qword_27CE61E50;
  if (!qword_27CE61E50)
  {
    result = swift_getWitnessTable(asc_21DC2A194, &type metadata for TTRReminderCopyPasteItem.Reminder.CodingKeys, v0, v1);
    atomic_store(result, &qword_27CE61E50);
  }

  return result;
}

unint64_t sub_21D7F9278()
{
  result = qword_27CE61E58;
  if (!qword_27CE61E58)
  {
    result = swift_getWitnessTable(byte_21DC2A1BC, &type metadata for TTRReminderCopyPasteItem.Reminder.CodingKeys, v0, v1);
    atomic_store(result, &qword_27CE61E58);
  }

  return result;
}

uint64_t sub_21D7F92CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59C48, &unk_21DC0CEE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D7F933C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61E70, &unk_21DC2A2D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t TTRTipCategorizeYourGroceries.title.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  sub_21D176F0C();
  return sub_21DBF996C();
}

uint64_t TTRTipCategorizeYourGroceries.message.getter()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  sub_21D176F0C();
  return sub_21DBF996C();
}

uint64_t TTRTipCategorizeYourGroceries.actions.getter()
{
  v0 = sub_21DBF8EEC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  v12 = sub_21DBF516C();
  v13 = v4;
  sub_21D7F98A0(v10[1], v11);
  v5 = swift_allocObject();
  sub_21D7F98DC(v11, v5 + 16);
  sub_21D176F0C();
  sub_21DBF8ECC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61E90, &unk_21DC2A300);
  v6 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_21DC08D00;
  (*(v1 + 32))(v7 + v6, v3, v0);
  v8 = sub_21D7FA438(v7);
  swift_setDeallocating();
  (*(v1 + 8))(v7 + v6, v0);
  swift_deallocClassInstance();
  return v8;
}

uint64_t sub_21D7F9834(uint64_t a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(a1 + 8);
    ObjectType = swift_getObjectType();
    (*(v3 + 8))(ObjectType, v3);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21D7F98A0(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakCopyInit();
  *(a2 + 8) = *(a1 + 8);
  return a2;
}

uint64_t sub_21D7F98DC(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectWeakTakeInit();
  *(a2 + 8) = *(a1 + 8);
  return a2;
}

uint64_t TTRTipCategorizeYourGroceries.options.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F9B8, &unk_21DC21E50);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v13 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F9C0, &unk_21DC2A310);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F9C8, &qword_21DC21E60);
  v8 = sub_21DBF8E5C();
  *(swift_allocObject() + 16) = xmmword_21DC08D00;
  sub_21DBF8E6C();
  v9 = MEMORY[0x277CE19F0];
  sub_21DBF8E2C();

  v13 = v8;
  v14 = v9;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x223D41600](v7, v4, OpaqueTypeConformance2);
  v13 = v4;
  v14 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v11 = sub_21DBF8E3C();
  (*(v1 + 8))(v3, v0);
  (*(v5 + 8))(v7, v4);
  return v11;
}

uint64_t sub_21D7F9BD0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_21D7F98A0(a1, v6);
  Strong = swift_unknownObjectWeakLoadStrong();
  v4 = v6[1];
  result = sub_21D157444(v6);
  *a2 = Strong;
  a2[1] = v4;
  return result;
}

uint64_t TTRTipCategorizeYourGroceries.delegate.setter(uint64_t a1, uint64_t a2)
{
  *(v2 + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t (*TTRTipCategorizeYourGroceries.delegate.modify(uint64_t *a1))(uint64_t *a1)
{
  a1[2] = v1;
  Strong = swift_unknownObjectWeakLoadStrong();
  v4 = *(v1 + 8);
  *a1 = Strong;
  a1[1] = v4;
  return sub_21D7F9CD8;
}

uint64_t sub_21D7F9CD8(uint64_t *a1)
{
  *(a1[2] + 8) = a1[1];
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t TTRTipCategorizeYourGroceries.init(delegate:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 8) = 0;
  *(swift_unknownObjectWeakInit() + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_21D7F9D78()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  sub_21D176F0C();
  return sub_21DBF996C();
}

uint64_t sub_21D7F9E50()
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  sub_21D176F0C();
  return sub_21DBF996C();
}

uint64_t sub_21D7F9F50()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F9B8, &unk_21DC21E50);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v13 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F9C0, &unk_21DC2A310);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F9C8, &qword_21DC21E60);
  v8 = sub_21DBF8E5C();
  *(swift_allocObject() + 16) = xmmword_21DC08D00;
  sub_21DBF8E6C();
  v9 = MEMORY[0x277CE19F0];
  sub_21DBF8E2C();

  v13 = v8;
  v14 = v9;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x223D41600](v7, v4, OpaqueTypeConformance2);
  v13 = v4;
  v14 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v11 = sub_21DBF8E3C();
  (*(v1 + 8))(v3, v0);
  (*(v5 + 8))(v7, v4);
  return v11;
}

uint64_t sub_21D7FA200@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_21D7FA864();
  result = MEMORY[0x223D41550](a1, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

void *sub_21D7FA240(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21D7FA260(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_21D7FA260(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61E90, &unk_21DC2A300);
  v10 = *(sub_21DBF8EEC() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_21DBF8EEC() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_21D7FA438(uint64_t a1)
{
  v2 = sub_21DBF8EEC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61EA8, &unk_21DC2A410);
  MEMORY[0x28223BE20](v30);
  v29 = (&v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v9 = &v24 - v8;
  v31 = MEMORY[0x277D84F90];
  sub_21D7FA240(0, 0, 0);
  v10 = v31;
  v28 = *(a1 + 16);
  if (v28)
  {
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v14 = *(v12 + 56);
    v26 = (*(v12 + 64) + 32) & ~*(v12 + 64);
    v27 = v13;
    v15 = a1 + v26;
    v24 = (v12 + 16);
    v25 = v14;
    do
    {
      v16 = v29;
      v17 = *(v30 + 48);
      *v29 = v11;
      v18 = v12;
      v27(v16 + v17, v15, v2);
      sub_21D7FA8B8(v16, v9);
      sub_21DBF8EDC();
      sub_21D7FA928(v9);
      v31 = v10;
      v19 = v2;
      v21 = *(v10 + 16);
      v20 = *(v10 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_21D7FA240((v20 > 1), v21 + 1, 1);
        v10 = v31;
      }

      ++v11;
      *(v10 + 16) = v21 + 1;
      v22 = v25;
      (*v24)(v10 + v26 + v21 * v25, v5, v19);
      v15 += v22;
      v2 = v19;
      v12 = v18;
    }

    while (v28 != v11);
  }

  return v10;
}

unint64_t sub_21D7FA6AC()
{
  result = qword_27CE61E98;
  if (!qword_27CE61E98)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRTipCategorizeYourGroceries, &type metadata for TTRTipCategorizeYourGroceries, v0, v1);
    atomic_store(result, &qword_27CE61E98);
  }

  return result;
}

uint64_t initializeWithCopy for TTRTipCategorizeYourGroceries(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakCopyInit();
  *(result + 8) = *(a2 + 8);
  return result;
}

uint64_t assignWithCopy for TTRTipCategorizeYourGroceries(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakCopyAssign();
  *(result + 8) = *(a2 + 8);
  return result;
}

uint64_t initializeWithTake for TTRTipCategorizeYourGroceries(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakTakeInit();
  *(result + 8) = *(a2 + 8);
  return result;
}

uint64_t assignWithTake for TTRTipCategorizeYourGroceries(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakTakeAssign();
  *(result + 8) = *(a2 + 8);
  return result;
}

uint64_t getEnumTagSinglePayload for TTRTipCategorizeYourGroceries(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  if ((*(a1 + 8) & 0xF000000000000007) != 0)
  {
    v2 = *a1 & 0x7FFFFFFF;
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRTipCategorizeYourGroceries(uint64_t result, int a2, int a3)
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
      *(result + 8) = 1;
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

unint64_t sub_21D7FA864()
{
  result = qword_27CE61EA0;
  if (!qword_27CE61EA0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRTipCategorizeYourGroceries, &type metadata for TTRTipCategorizeYourGroceries, v0, v1);
    atomic_store(result, &qword_27CE61EA0);
  }

  return result;
}

uint64_t sub_21D7FA8B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61EA8, &unk_21DC2A410);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D7FA928(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61EA8, &unk_21DC2A410);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t TTRICollectionViewCellSelectionOption.hashValue.getter()
{
  v1 = *v0;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  return sub_21DBFC82C();
}

unint64_t sub_21D7FAA4C()
{
  result = qword_27CE61EB0;
  if (!qword_27CE61EB0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRICollectionViewCellSelectionOption, &type metadata for TTRICollectionViewCellSelectionOption, v0, v1);
    atomic_store(result, &qword_27CE61EB0);
  }

  return result;
}

char *TTRReminderCellTitleSuggestedAttributeSplitter.splitCellTitleAugmentation(_:)(void *a1, uint64_t *a2)
{
  v61 = type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType(0);
  MEMORY[0x28223BE20](v61);
  v60 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_21DBF7A0C();
  v5 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v68 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_21DBF79FC();
  v7 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v66 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58A78, &qword_21DC09E90);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v55 - v13;
  v15 = type metadata accessor for TTRReminderSuggestedAttribute(0);
  MEMORY[0x28223BE20](v15);
  v59 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v65 = &v55 - v19;
  v21 = *a2;
  v20 = a2[1];
  v22 = a2[2];
  v23 = a2[3];
  if (v20)
  {
    v57 = a1;
    v58 = v22;
    v55 = v20;
    v56 = v21;
    v24 = *(v23 + 2);
    if (v24)
    {
      v25 = (v23 + 32);
      v72 = (v18 + 56);
      v64 = *MEMORY[0x277D456F0];
      v62 = (v7 + 8);
      v63 = (v5 + 104);
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      v23 = MEMORY[0x277D84F90];
      v73 = MEMORY[0x277D84F90];
      while (1)
      {
        sub_21D1D9BE4(v25, v75);
        sub_21D0CEB98(v75, v74);
        if (swift_dynamicCast())
        {
        }

        else
        {
          sub_21D0CEB98(v75, v74);
          v38 = swift_dynamicCast();
          v39 = *v72;
          if (v38)
          {
            v39(v14, 0, 1, v15);
            v40 = v65;
            sub_21D19AF08(v14, v65);
            v70 = *(v15 + 20);
            (*v63)(v68, v64, v69);
            v71 = v24;
            v41 = v39;
            v42 = v23;
            v43 = v15;
            v44 = v14;
            v45 = v66;
            sub_21DBF79EC();
            v46 = sub_21DBF79BC();
            v47 = v45;
            v14 = v44;
            v15 = v43;
            v23 = v42;
            v39 = v41;
            v24 = v71;
            (*v62)(v47, v67);
            sub_21D19B204(v40, type metadata accessor for TTRReminderSuggestedAttribute);
            if (v46)
            {
              goto LABEL_8;
            }
          }

          else
          {
            v39(v14, 1, 1, v15);
            sub_21D19AEA0(v14);
          }

          sub_21D0CEB98(v75, v74);
          if (!swift_dynamicCast())
          {
            v39(v11, 1, 1, v15);
            sub_21D19AEA0(v11);
LABEL_20:
            sub_21D1D9BE4(v75, v74);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v73 = sub_21D211038(0, *(v73 + 2) + 1, 1, v73);
            }

            v51 = *(v73 + 2);
            v50 = *(v73 + 3);
            if (v51 >= v50 >> 1)
            {
              v73 = sub_21D211038((v50 > 1), v51 + 1, 1, v73);
            }

            sub_21D1D9C40(v75);
            v52 = v73;
            *(v73 + 2) = v51 + 1;
            v26 = &v52[192 * v51];
            goto LABEL_5;
          }

          v39(v11, 0, 1, v15);
          v48 = v59;
          sub_21D19AF08(v11, v59);
          v49 = v60;
          sub_21D19B1A0(v48, v60);
          sub_21D19B204(v48, type metadata accessor for TTRReminderSuggestedAttribute);
          LODWORD(v48) = swift_getEnumCaseMultiPayload();
          sub_21D19B204(v49, type metadata accessor for TTRReminderSuggestedAttribute.AugmentedAttributeType);
          if (v48 != 5)
          {
            goto LABEL_20;
          }
        }

LABEL_8:
        sub_21D1D9BE4(v75, v74);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v23 = sub_21D211038(0, *(v23 + 2) + 1, 1, v23);
        }

        v37 = *(v23 + 2);
        v36 = *(v23 + 3);
        if (v37 >= v36 >> 1)
        {
          v23 = sub_21D211038((v36 > 1), v37 + 1, 1, v23);
        }

        sub_21D1D9C40(v75);
        *(v23 + 2) = v37 + 1;
        v26 = &v23[192 * v37];
LABEL_5:
        v27 = v74[3];
        v28 = v74[0];
        v29 = v74[1];
        *(v26 + 4) = v74[2];
        *(v26 + 5) = v27;
        *(v26 + 2) = v28;
        *(v26 + 3) = v29;
        v30 = v74[7];
        v31 = v74[5];
        v32 = v74[4];
        *(v26 + 8) = v74[6];
        *(v26 + 9) = v30;
        *(v26 + 6) = v32;
        *(v26 + 7) = v31;
        v33 = v74[11];
        v34 = v74[9];
        v35 = v74[8];
        *(v26 + 12) = v74[10];
        *(v26 + 13) = v33;
        *(v26 + 10) = v35;
        *(v26 + 11) = v34;
        v25 += 192;
        if (!--v24)
        {
          goto LABEL_27;
        }
      }
    }

    sub_21DBF8E0C();
    sub_21DBF8E0C();
    v23 = MEMORY[0x277D84F90];
    v73 = MEMORY[0x277D84F90];
LABEL_27:
    v21 = v56;
    a1 = v57;
    v22 = v58;
    v53 = v55;
    result = v73;
  }

  else
  {
    v53 = 0;
    result = MEMORY[0x277D84F90];
  }

  *a1 = v21;
  a1[1] = v53;
  a1[2] = v22;
  a1[3] = v23;
  return result;
}

uint64_t sub_21D7FB294(uint64_t a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2._object = 0x800000021DC63430;
    v2._countAndFlagsBits = 0xD000000000000019;
    TTRDeferredAction.scheduleNextRunLoop(reason:)(v2);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21D7FB308()
{
  sub_21D157444(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_21D7FB374()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE61EB8);
  v1 = __swift_project_value_buffer(v0, qword_27CE61EB8);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_21D7FB43C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  v5 = sub_21DBFA80C();
  v4[4] = v5;
  v4[5] = *(v5 - 8);
  v4[6] = swift_task_alloc();
  v4[7] = sub_21DBFA84C();
  v4[8] = sub_21DBFA83C();
  v6 = swift_task_alloc();
  v4[9] = v6;
  *v6 = v4;
  v6[1] = sub_21D7FB554;

  return TimeZone.defaultCityName()();
}

uint64_t sub_21D7FB554(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[10] = a1;
  v4[11] = a2;
  v4[12] = v2;

  v6 = sub_21DBFA7CC();
  if (v2)
  {
    v7 = sub_21D7FB8D0;
  }

  else
  {
    v7 = sub_21D7FB6B8;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_21D7FB6B8()
{
  v1 = v0[12];

  sub_21DBFA99C();
  if (v1)
  {

    v0[2] = v1;
    v2 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B280, &qword_21DC09C40);
    if (swift_dynamicCast())
    {
      v4 = v0[5];
      v3 = v0[6];
      v5 = v0[4];

      (*(v4 + 8))(v3, v5);
    }

    else
    {
      if (qword_27CE56CF8 != -1)
      {
        swift_once();
      }

      v9 = sub_21DBF84BC();
      __swift_project_value_buffer(v9, qword_27CE61EB8);
      v10 = sub_21DBF84AC();
      v11 = sub_21DBFAEBC();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&dword_21D0C9000, v10, v11, "Failed to fetch initial time zone city name", v12, 2u);
        MEMORY[0x223D46520](v12, -1, -1);
      }
    }
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = v0[11];
      v8 = (Strong + OBJC_IVAR____TtC15RemindersUICore32TTRITimeZonePickerViewController_initialSearchTerm);
      *v8 = v0[10];
      v8[1] = v7;

      sub_21DBF8E0C();
      swift_unknownObjectRelease();
    }

    sub_21D7FBA74(v0[10], v0[11]);
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_21D7FB8D0()
{

  v1 = v0[12];
  v0[2] = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B280, &qword_21DC09C40);
  if (swift_dynamicCast())
  {
    v4 = v0[5];
    v3 = v0[6];
    v5 = v0[4];

    (*(v4 + 8))(v3, v5);
  }

  else
  {
    if (qword_27CE56CF8 != -1)
    {
      swift_once();
    }

    v6 = sub_21DBF84BC();
    __swift_project_value_buffer(v6, qword_27CE61EB8);
    v7 = sub_21DBF84AC();
    v8 = sub_21DBFAEBC();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_21D0C9000, v7, v8, "Failed to fetch initial time zone city name", v9, 2u);
      MEMORY[0x223D46520](v9, -1, -1);
    }
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_21D7FBA74(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F150, &qword_21DC0D090);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v20 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61F10, &qword_21DC2A748);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v20 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61F18, &qword_21DC2A750);
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  sub_21D7FBD14(v11, a1, a2);
  sub_21D0CF7E0(v11, &qword_27CE61F10, &qword_21DC2A748);
  v13 = OBJC_IVAR____TtC15RemindersUICore26TTRTimeZonePickerPresenter_initialSetupTask;
  if (*(v2 + OBJC_IVAR____TtC15RemindersUICore26TTRTimeZonePickerPresenter_initialSetupTask))
  {

    sub_21DBFA96C();
  }

  *(v2 + v13) = 0;

  v14 = OBJC_IVAR____TtC15RemindersUICore26TTRTimeZonePickerPresenter_fetchSearchResultsTask;
  if (*(v2 + OBJC_IVAR____TtC15RemindersUICore26TTRTimeZonePickerPresenter_fetchSearchResultsTask))
  {

    sub_21DBFA96C();
  }

  v15 = sub_21DBFA89C();
  (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
  sub_21DBFA84C();

  sub_21DBF8E0C();
  v16 = sub_21DBFA83C();
  v17 = swift_allocObject();
  v18 = MEMORY[0x277D85700];
  v17[2] = v16;
  v17[3] = v18;
  v17[4] = v3;
  v17[5] = a1;
  v17[6] = a2;
  *(v3 + v14) = sub_21D1B5178(0, 0, v8, &unk_21DC2A760, v17);
}

void sub_21D7FBD14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61F50, &qword_21DC2A7A8);
  MEMORY[0x28223BE20](v55);
  v54 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v56 = &v43 - v10;
  MEMORY[0x28223BE20](v11);
  v51 = &v43 - v12;
  v13 = type metadata accessor for TTRTimeZonePickerViewModel.CellViewModel(0);
  v52 = *(v13 - 8);
  v53 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61F10, &qword_21DC2A748);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v43 - v17;
  sub_21D0D3954(a1, &v43 - v17, &qword_27CE61F10, &qword_21DC2A748);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61F18, &qword_21DC2A750);
  v20 = *(v19 - 8);
  v21 = v19;
  if ((*(v20 + 48))(v18, 1) == 1)
  {
    sub_21D0CF7E0(v18, &qword_27CE61F10, &qword_21DC2A748);
    v22 = 0;
    if (a3)
    {
      goto LABEL_3;
    }

    goto LABEL_14;
  }

  v46 = a3;
  v47 = a2;
  sub_21D801268(&qword_27CE61F58, &qword_27CE61F18, &qword_21DC2A750);
  v27 = sub_21DBFAC8C();
  v22 = MEMORY[0x277D84F90];
  if (!v27)
  {
LABEL_13:
    (*(v20 + 8))(v18, v21);
    a3 = v46;
    a2 = v47;
    if (v46)
    {
LABEL_3:
      v23 = a3;
      if (v22)
      {
LABEL_5:
        sub_21DBF8E0C();
        sub_21DA4D178(a2, v23, v22, v59);
        v24 = (v4 + OBJC_IVAR____TtC15RemindersUICore26TTRTimeZonePickerPresenter_viewModel);
        v25 = v59[1];
        *v24 = v59[0];
        v24[1] = v25;
        v24[2] = v59[2];

        v26._object = 0x800000021DC63430;
        v26._countAndFlagsBits = 0xD000000000000019;
        TTRDeferredAction.scheduleNextRunLoop(reason:)(v26);
        return;
      }

LABEL_4:
      v22 = *(v4 + OBJC_IVAR____TtC15RemindersUICore26TTRTimeZonePickerPresenter_viewModel + 32);
      sub_21DBF8E0C();
      goto LABEL_5;
    }

LABEL_14:
    a2 = *(v4 + OBJC_IVAR____TtC15RemindersUICore26TTRTimeZonePickerPresenter_viewModel + 16);
    v23 = *(v4 + OBJC_IVAR____TtC15RemindersUICore26TTRTimeZonePickerPresenter_viewModel + 24);
    sub_21DBF8E0C();
    if (v22)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v28 = v27;
  v58 = MEMORY[0x277D84F90];
  sub_21D18F52C(0, v27 & ~(v27 >> 63), 0);
  v22 = v58;
  sub_21DBFAC3C();
  if ((v28 & 0x8000000000000000) == 0)
  {
    v44 = v20;
    v45 = v4;
    v49 = v18;
    v50 = v56 + 8;
    v48 = v21;
    do
    {
      v57 = v22;
      v29 = sub_21DBFAD3C();
      v30 = v51;
      sub_21D0D3954(v31, v51, &qword_27CE61F50, &qword_21DC2A7A8);
      v29(v59, 0);
      v32 = v56;
      sub_21D0D3954(v30, v56, &qword_27CE61F50, &qword_21DC2A7A8);
      v33 = v55;

      v34 = v54;
      sub_21D0D523C(v30, v54, &qword_27CE61F50, &qword_21DC2A7A8);
      v35 = (v34 + *(v33 + 48));
      v36 = *v35;
      v37 = v35[1];
      v38 = sub_21DBF5C4C();
      v39 = *(v38 - 8);
      (*(v39 + 32))(v15, v32, v38);
      v40 = &v15[*(v53 + 20)];
      *v40 = v36;
      *(v40 + 1) = v37;
      (*(v39 + 8))(v34, v38);
      v22 = v57;
      v58 = v57;
      v42 = *(v57 + 16);
      v41 = *(v57 + 24);
      if (v42 >= v41 >> 1)
      {
        sub_21D18F52C((v41 > 1), v42 + 1, 1);
        v22 = v58;
      }

      *(v22 + 16) = v42 + 1;
      sub_21D8012BC(v15, v22 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v42);
      v21 = v48;
      v18 = v49;
      sub_21DBFACBC();
      --v28;
    }

    while (v28);
    v4 = v45;
    v20 = v44;
    goto LABEL_13;
  }

  __break(1u);
}

uint64_t sub_21D7FC2B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a4;
  v9 = sub_21DBFA80C();
  v6[4] = v9;
  v6[5] = *(v9 - 8);
  v6[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61F10, &qword_21DC2A748);
  v6[7] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61F18, &qword_21DC2A750);
  v6[8] = v10;
  v6[9] = *(v10 - 8);
  v11 = swift_task_alloc();
  v6[10] = v11;
  v6[11] = sub_21DBFA84C();
  v6[12] = sub_21DBFA83C();
  v12 = swift_task_alloc();
  v6[13] = v12;
  *v12 = v6;
  v12[1] = sub_21D7FC48C;

  return sub_21D7FCA10(v11, a5, a6);
}

uint64_t sub_21D7FC48C()
{
  *(*v1 + 112) = v0;

  v3 = sub_21DBFA7CC();
  if (v0)
  {
    v4 = sub_21D7FC858;
  }

  else
  {
    v4 = sub_21D7FC5E4;
  }

  return MEMORY[0x2822009F8](v4, v3, v2);
}

uint64_t sub_21D7FC5E4()
{
  v1 = v0[14];

  sub_21DBFA99C();
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[8];
  if (v1)
  {
    (*(v3 + 8))(v0[10], v0[8]);
    v0[2] = v1;
    v5 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B280, &qword_21DC09C40);
    if (swift_dynamicCast())
    {
      v7 = v0[5];
      v6 = v0[6];
      v8 = v0[4];

      (*(v7 + 8))(v6, v8);
    }

    else
    {
      if (qword_27CE56CF8 != -1)
      {
        swift_once();
      }

      v10 = sub_21DBF84BC();
      __swift_project_value_buffer(v10, qword_27CE61EB8);
      v11 = sub_21DBF84AC();
      v12 = sub_21DBFAEBC();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&dword_21D0C9000, v11, v12, "Failed to fetch results for time zone picker", v13, 2u);
        MEMORY[0x223D46520](v13, -1, -1);
      }
    }
  }

  else
  {
    v9 = v0[7];
    (*(v3 + 16))(v9, v0[10], v0[8]);
    (*(v3 + 56))(v9, 0, 1, v4);
    sub_21D7FBD14(v9, 0, 0);
    sub_21D0CF7E0(v9, &qword_27CE61F10, &qword_21DC2A748);
    (*(v3 + 8))(v2, v4);
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_21D7FC858()
{

  v1 = v0[14];
  v0[2] = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B280, &qword_21DC09C40);
  if (swift_dynamicCast())
  {
    v4 = v0[5];
    v3 = v0[6];
    v5 = v0[4];

    (*(v4 + 8))(v3, v5);
  }

  else
  {
    if (qword_27CE56CF8 != -1)
    {
      swift_once();
    }

    v6 = sub_21DBF84BC();
    __swift_project_value_buffer(v6, qword_27CE61EB8);
    v7 = sub_21DBF84AC();
    v8 = sub_21DBFAEBC();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_21D0C9000, v7, v8, "Failed to fetch results for time zone picker", v9, 2u);
      MEMORY[0x223D46520](v9, -1, -1);
    }
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_21D7FCA10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[142] = a3;
  v3[141] = a2;
  v3[140] = a1;
  v4 = sub_21DBF5C4C();
  v3[143] = v4;
  v3[144] = *(v4 - 8);
  v3[145] = swift_task_alloc();
  v3[146] = swift_task_alloc();
  v3[147] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61F20, &qword_21DC2A778);
  v3[148] = swift_task_alloc();
  v3[149] = swift_task_alloc();
  v3[150] = swift_task_alloc();
  v3[151] = swift_task_alloc();
  v3[152] = swift_task_alloc();
  v3[153] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61F28, &qword_21DC2A780);
  v3[154] = v5;
  v3[155] = *(v5 - 8);
  v3[156] = swift_task_alloc();
  v3[157] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61F30, &qword_21DC2A788);
  v3[158] = swift_task_alloc();
  v3[159] = swift_task_alloc();
  v3[160] = swift_task_alloc();
  v6 = sub_21DBF582C();
  v3[161] = v6;
  v3[162] = *(v6 - 8);
  v3[163] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61F18, &qword_21DC2A750);
  v3[164] = v7;
  v3[165] = *(v7 - 8);
  v3[166] = swift_task_alloc();
  sub_21DBFA84C();
  v3[167] = sub_21DBFA83C();
  v9 = sub_21DBFA7CC();
  v3[168] = v9;
  v3[169] = v8;

  return MEMORY[0x2822009F8](sub_21D7FCD1C, v9, v8);
}

uint64_t sub_21D7FCD1C()
{
  v1 = v0;
  v17 = v0 + 10;
  v2 = v0 + 82;
  v3 = v0[163];
  v4 = v0[162];
  v16 = v1[161];
  v1[170] = sub_21D8011A8();
  sub_21DBF617C();
  v5 = swift_allocBox();
  v1[171] = v5;
  v1[172] = v6;
  v1[173] = sub_21D801200();
  sub_21DBF617C();
  v1[174] = swift_allocBox();
  v1[175] = v7;
  sub_21DBF617C();
  sub_21DBF57AC();
  v8 = objc_allocWithZone(MEMORY[0x277D0ECC0]);
  v9 = sub_21DBF574C();
  v10 = [v8 initWithLocale_];
  v1[176] = v10;

  (*(v4 + 8))(v3, v16);
  v11 = sub_21DBFA12C();
  v1[177] = v11;
  v1[86] = sub_21D80134C;
  v1[87] = v5;
  v1[82] = MEMORY[0x277D85DD0];
  v1[83] = 1107296256;
  v1[84] = sub_21D5EDE98;
  v1[85] = &block_descriptor_90;
  v12 = _Block_copy(v2);
  v1[178] = v12;

  v1[10] = v1;
  v1[11] = sub_21D7FD004;
  v13 = swift_continuation_init();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5ED58, &qword_21DC2A790);
  v1[179] = v14;
  v1[49] = v14;
  v1[42] = MEMORY[0x277D85DD0];
  v1[43] = 1107296256;
  v1[44] = sub_21D5EDF0C;
  v1[45] = &block_descriptor_14_3;
  v1[46] = v13;
  [v10 regionsWithName:v11 options:2 types:8 sort:2 cursor:v12 finished:?];

  return MEMORY[0x282200938](v17);
}

uint64_t sub_21D7FD004()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 1440) = v2;
  v3 = *(v1 + 1352);
  v4 = *(v1 + 1344);
  if (v2)
  {
    v5 = sub_21D8001B8;
  }

  else
  {
    v5 = sub_21D7FD134;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_21D7FD134()
{
  v1 = v0[177];
  _Block_release(v0[178]);

  sub_21DBFA99C();
  v2 = v0[172];
  v3 = v0[160];
  v4 = v0[157];
  v5 = v0[156];
  v6 = v0[155];
  v7 = v0[154];
  swift_beginAccess();
  v8 = *(v6 + 16);
  v0[181] = v8;
  v0[182] = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v5, v2, v7);
  v8(v3, v5, v7);
  *(v0 + 422) = *(v4 + 36);
  v0[183] = sub_21D801268(&qword_27CE61F40, &qword_27CE61F28, &qword_21DC2A780);
  sub_21DBFAC3C();
  v9 = *(v6 + 8);
  v0[184] = v9;
  v0[185] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v5, v7);
  v10 = *(v0 + 422);
  v11 = v0[160];
  sub_21DBFACAC();
  if (*(v11 + v10) == v0[139])
  {
    v12 = 1;
  }

  else
  {
    v13 = v0[152];
    v14 = sub_21DBFAD3C();
    sub_21D0D3954(v15, v13, &qword_27CE61F48, &qword_21DC2A798);
    v14(v0 + 108, 0);
    sub_21DBFACBC();
    v12 = 0;
  }

  v16 = v0[153];
  v17 = v0[152];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61F48, &qword_21DC2A798);
  (*(*(v18 - 8) + 56))(v17, v12, 1, v18);
  sub_21D0D523C(v17, v16, &qword_27CE61F20, &qword_21DC2A778);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61F48, &qword_21DC2A798);
  v0[186] = v19;
  v20 = *(v19 - 8);
  v0[187] = v20;
  v21 = *(v20 + 48);
  v0[188] = v21;
  v0[189] = (v20 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v21(v16, 1, v19) == 1)
  {
    sub_21D0CF7E0(v0[160], &qword_27CE61F30, &qword_21DC2A788);
    sub_21DBFA99C();
    v0[193] = 0;
    v22 = v0 + 34;
    v23 = v0[179];
    v24 = v0[176];
    v25 = v0[174];
    v26 = sub_21DBFA12C();
    v0[194] = v26;
    v0[98] = sub_21D80124C;
    v0[99] = v25;
    v0[94] = MEMORY[0x277D85DD0];
    v0[95] = 1107296256;
    v0[96] = sub_21D5EDE98;
    v0[97] = &block_descriptor_17_2;
    v27 = _Block_copy(v0 + 94);
    v0[195] = v27;

    v0[34] = v0;
    v0[35] = sub_21D7FE090;
    v28 = swift_continuation_init();
    v0[73] = v23;
    v0[70] = v28;
    v0[66] = MEMORY[0x277D85DD0];
    v0[67] = 1107296256;
    v0[68] = sub_21D5EDF0C;
    v0[69] = &block_descriptor_20_1;
    [v24 regionsWithName:v26 options:2 types:2 sort:2 cursor:v27 finished:v0 + 66];
  }

  else
  {
    v29 = v0[147];
    v30 = v0[144];
    v31 = *(v0[153] + *(v19 + 48));
    v0[190] = v31;
    (*(v30 + 32))(v29);
    sub_21DBFA99C();
    v0[191] = 0;
    v22 = v0 + 18;
    v32 = v0[176];
    v0[18] = v0;
    v0[23] = v0 + 131;
    v0[19] = sub_21D7FD894;
    v33 = swift_continuation_init();
    v0[57] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5ED60, &qword_21DC2A7A0);
    v0[50] = MEMORY[0x277D85DD0];
    v0[51] = 1107296256;
    v0[52] = sub_21D5EE998;
    v0[53] = &block_descriptor_33_0;
    v0[54] = v33;
    [v32 formattedNameForRegion:v31 result:v0 + 50];
  }

  return MEMORY[0x282200938](v22);
}

uint64_t sub_21D7FD894()
{
  v1 = *v0;
  v2 = *(*v0 + 176);
  *(*v0 + 1536) = v2;
  v3 = *(v1 + 1352);
  v4 = *(v1 + 1344);
  if (v2)
  {
    v5 = sub_21D80035C;
  }

  else
  {
    v5 = sub_21D7FD9C4;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_21D7FD9C4()
{
  v1 = *(v0 + 1520);
  v2 = *(v0 + 1176);
  v3 = *(v0 + 1152);
  v4 = *(v0 + 1144);
  v5 = *(v0 + 1056);
  *(v0 + 1080) = *(v0 + 1048);
  *(v0 + 1088) = v5;
  sub_21DBF616C();

  (*(v3 + 8))(v2, v4);

  v6 = *(v0 + 1528);
  v7 = *(v0 + 1688);
  v8 = *(v0 + 1280);
  sub_21DBFACAC();
  if (*(v8 + v7) == *(v0 + 1112))
  {
    v9 = 1;
  }

  else
  {
    v10 = *(v0 + 1216);
    v11 = sub_21DBFAD3C();
    sub_21D0D3954(v12, v10, &qword_27CE61F48, &qword_21DC2A798);
    v11(v0 + 864, 0);
    sub_21DBFACBC();
    v9 = 0;
  }

  v13 = *(v0 + 1224);
  v14 = *(v0 + 1216);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61F48, &qword_21DC2A798);
  (*(*(v15 - 8) + 56))(v14, v9, 1, v15);
  sub_21D0D523C(v14, v13, &qword_27CE61F20, &qword_21DC2A778);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61F48, &qword_21DC2A798);
  *(v0 + 1488) = v16;
  v17 = *(v16 - 8);
  *(v0 + 1496) = v17;
  v18 = *(v17 + 48);
  *(v0 + 1504) = v18;
  *(v0 + 1512) = (v17 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v18(v13, 1, v16) == 1)
  {
    sub_21D0CF7E0(*(v0 + 1280), &qword_27CE61F30, &qword_21DC2A788);
    sub_21DBFA99C();
    *(v0 + 1544) = v6;
    if (v6)
    {
      v19 = *(v0 + 1408);
      (*(*(v0 + 1320) + 8))(*(v0 + 1328), *(v0 + 1312));

LABEL_9:

      v30 = *(v0 + 8);

      return v30();
    }

    v32 = *(v0 + 1432);
    v33 = *(v0 + 1408);
    v34 = *(v0 + 1392);
    v35 = sub_21DBFA12C();
    *(v0 + 1552) = v35;
    *(v0 + 784) = sub_21D80124C;
    *(v0 + 792) = v34;
    *(v0 + 752) = MEMORY[0x277D85DD0];
    *(v0 + 760) = 1107296256;
    *(v0 + 768) = sub_21D5EDE98;
    *(v0 + 776) = &block_descriptor_17_2;
    v36 = _Block_copy((v0 + 752));
    *(v0 + 1560) = v36;

    *(v0 + 272) = v0;
    *(v0 + 280) = sub_21D7FE090;
    v37 = swift_continuation_init();
    *(v0 + 584) = v32;
    *(v0 + 560) = v37;
    *(v0 + 528) = MEMORY[0x277D85DD0];
    *(v0 + 536) = 1107296256;
    *(v0 + 544) = sub_21D5EDF0C;
    *(v0 + 552) = &block_descriptor_20_1;
    [v33 regionsWithName:v35 options:2 types:2 sort:2 cursor:v36 finished:v0 + 528];
    v38 = v0 + 272;
  }

  else
  {
    v20 = *(v0 + 1176);
    v21 = *(v0 + 1152);
    v22 = *(*(v0 + 1224) + *(v16 + 48));
    *(v0 + 1520) = v22;
    (*(v21 + 32))(v20);
    sub_21DBFA99C();
    *(v0 + 1528) = v6;
    if (v6)
    {
      v23 = v22;
      v24 = *(v0 + 1408);
      v25 = *(v0 + 1320);
      v41 = *(v0 + 1312);
      v42 = *(v0 + 1328);
      v26 = *(v0 + 1280);
      v27 = *(v0 + 1176);
      v28 = *(v0 + 1152);
      v29 = *(v0 + 1144);

      (*(v28 + 8))(v27, v29);
      sub_21D0CF7E0(v26, &qword_27CE61F30, &qword_21DC2A788);
      (*(v25 + 8))(v42, v41);
      goto LABEL_9;
    }

    v39 = *(v0 + 1408);
    *(v0 + 144) = v0;
    *(v0 + 184) = v0 + 1048;
    *(v0 + 152) = sub_21D7FD894;
    v40 = swift_continuation_init();
    *(v0 + 456) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5ED60, &qword_21DC2A7A0);
    *(v0 + 400) = MEMORY[0x277D85DD0];
    *(v0 + 408) = 1107296256;
    *(v0 + 416) = sub_21D5EE998;
    *(v0 + 424) = &block_descriptor_33_0;
    *(v0 + 432) = v40;
    [v39 formattedNameForRegion:v22 result:v0 + 400];
    v38 = v0 + 144;
  }

  return MEMORY[0x282200938](v38);
}

uint64_t sub_21D7FE090()
{
  v1 = *v0;
  v2 = *(*v0 + 304);
  *(*v0 + 1568) = v2;
  v3 = *(v1 + 1352);
  v4 = *(v1 + 1344);
  if (v2)
  {
    v5 = sub_21D80053C;
  }

  else
  {
    v5 = sub_21D7FE1C0;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_21D7FE1C0()
{
  v1 = *(v0 + 1552);
  v2 = *(v0 + 1544);
  _Block_release(*(v0 + 1560));

  sub_21DBFA99C();
  if (v2)
  {
    v3 = *(v0 + 1408);
    (*(*(v0 + 1320) + 8))(*(v0 + 1328), *(v0 + 1312));

    v4 = *(v0 + 8);
LABEL_3:

    return v4();
  }

  else
  {
    v39 = *(v0 + 1472);
    v6 = *(v0 + 1448);
    v7 = *(v0 + 1400);
    v8 = *(v0 + 1272);
    v9 = *(v0 + 1256);
    v10 = *(v0 + 1248);
    v11 = *(v0 + 1232);
    swift_beginAccess();
    v6(v10, v7, v11);
    v6(v8, v10, v11);
    *(v0 + 1692) = *(v9 + 36);
    sub_21DBFAC3C();
    v39(v10, v11);
    while (1)
    {
      v12 = *(v0 + 1692);
      v13 = *(v0 + 1272);
      sub_21DBFACAC();
      if (*(v13 + v12) == *(v0 + 1096))
      {
        v14 = 1;
      }

      else
      {
        v15 = *(v0 + 1200);
        v16 = sub_21DBFAD3C();
        sub_21D0D3954(v17, v15, &qword_27CE61F48, &qword_21DC2A798);
        v16(v0 + 800, 0);
        sub_21DBFACBC();
        v14 = 0;
      }

      v18 = *(v0 + 1504);
      v19 = *(v0 + 1488);
      v20 = *(v0 + 1208);
      v21 = *(v0 + 1200);
      v22 = *(*(v0 + 1496) + 56);
      *(v0 + 1576) = v22;
      v22(v21, v14, 1, v19);
      sub_21D0D523C(v21, v20, &qword_27CE61F20, &qword_21DC2A778);
      if (v18(v20, 1, v19) == 1)
      {
        sub_21D0CF7E0(*(v0 + 1272), &qword_27CE61F30, &qword_21DC2A788);

        sub_21DBFA99C();
        v29 = *(v0 + 1328);
        v30 = *(v0 + 1320);
        v31 = *(v0 + 1312);
        v32 = *(v0 + 1120);

        (*(v30 + 32))(v32, v29, v31);

        v4 = *(v0 + 8);
        goto LABEL_3;
      }

      v23 = *(v0 + 1168);
      v24 = *(v0 + 1152);
      v25 = *(v0 + 1144);
      v26 = *(*(v0 + 1208) + *(*(v0 + 1488) + 48));
      *(v0 + 1584) = v26;
      v27 = *(v24 + 32);
      *(v0 + 1592) = v27;
      *(v0 + 1600) = (v24 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
      v27(v23);
      sub_21DBF618C();
      v28 = *(v24 + 8);
      *(v0 + 1608) = v28;
      *(v0 + 1616) = (v24 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v28(v23, v25);
      if (!*(v0 + 976))
      {
        break;
      }
    }

    sub_21DBFA99C();
    *(v0 + 1624) = 0;
    v38 = *(v0 + 1432);
    v40 = *(v0 + 1408);
    v33 = swift_allocBox();
    *(v0 + 1632) = v33;
    *(v0 + 1640) = v34;
    sub_21DBF617C();
    v35 = [v26 regionId];
    *(v0 + 736) = sub_21D80134C;
    *(v0 + 744) = v33;
    *(v0 + 704) = MEMORY[0x277D85DD0];
    *(v0 + 712) = 1107296256;
    *(v0 + 720) = sub_21D5EDE98;
    *(v0 + 728) = &block_descriptor_24_0;
    v36 = _Block_copy((v0 + 704));
    *(v0 + 1648) = v36;

    *(v0 + 16) = v0;
    *(v0 + 24) = sub_21D7FE970;
    v37 = swift_continuation_init();
    *(v0 + 648) = v38;
    *(v0 + 624) = v37;
    *(v0 + 592) = MEMORY[0x277D85DD0];
    *(v0 + 600) = 1107296256;
    *(v0 + 608) = sub_21D5EDF0C;
    *(v0 + 616) = &block_descriptor_27_1;
    [v40 childRegionsOfRegionId:v35 types:8 sort:2 recursive:1 cursor:v36 finished:v0 + 592];

    return MEMORY[0x282200938](v0 + 16);
  }
}

uint64_t sub_21D7FE970()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 1656) = v2;
  v3 = *(v1 + 1352);
  v4 = *(v1 + 1344);
  if (v2)
  {
    v5 = sub_21D8006E0;
  }

  else
  {
    v5 = sub_21D7FEAA0;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_21D7FEAA0()
{
  v1 = *(v0 + 1624);
  _Block_release(*(v0 + 1648));
  sub_21DBFA99C();
  if (v1)
  {
    v2 = *(v0 + 1408);
    v3 = *(v0 + 1328);
    v4 = *(v0 + 1320);
    v5 = *(v0 + 1312);
    v6 = *(v0 + 1272);

    sub_21D0CF7E0(v6, &qword_27CE61F30, &qword_21DC2A788);
    (*(v4 + 8))(v3, v5);

    v7 = *(v0 + 8);
LABEL_3:

    return v7();
  }

  else
  {
    v9 = *(v0 + 1640);
    v62 = *(v0 + 1472);
    v10 = *(v0 + 1448);
    v11 = *(v0 + 1264);
    v12 = *(v0 + 1256);
    v13 = *(v0 + 1248);
    v14 = *(v0 + 1232);
    swift_beginAccess();
    v10(v13, v9, v14);
    v10(v11, v13, v14);
    *(v0 + 1696) = *(v12 + 36);
    sub_21DBFAC3C();
    v62(v13, v14);
    while (1)
    {
      v15 = *(v0 + 1696);
      v16 = *(v0 + 1264);
      sub_21DBFACAC();
      if (*(v16 + v15) == *(v0 + 1104))
      {
        v17 = 1;
      }

      else
      {
        v18 = *(v0 + 1184);
        v19 = sub_21DBFAD3C();
        sub_21D0D3954(v20, v18, &qword_27CE61F48, &qword_21DC2A798);
        v19(v0 + 832, 0);
        sub_21DBFACBC();
        v17 = 0;
      }

      v21 = *(v0 + 1504);
      v22 = *(v0 + 1488);
      v23 = *(v0 + 1192);
      v24 = *(v0 + 1184);
      (*(v0 + 1576))(v24, v17, 1, v22);
      sub_21D0D523C(v24, v23, &qword_27CE61F20, &qword_21DC2A778);
      if (v21(v23, 1, v22) == 1)
      {
        break;
      }

      v25 = *(v0 + 1592);
      v26 = *(v0 + 1160);
      v27 = *(*(v0 + 1192) + *(*(v0 + 1488) + 48));
      *(v0 + 1664) = v27;
      v25(v26);
      sub_21DBF618C();
      if (!*(v0 + 992))
      {
        sub_21DBFA99C();
        *(v0 + 1672) = 0;
        v52 = v0 + 208;
        v53 = *(v0 + 1408);
        *(v0 + 208) = v0;
        *(v0 + 248) = v0 + 1000;
        *(v0 + 216) = sub_21D7FF5E4;
        v54 = swift_continuation_init();
        *(v0 + 520) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5ED60, &qword_21DC2A7A0);
        *(v0 + 464) = MEMORY[0x277D85DD0];
        *(v0 + 472) = 1107296256;
        *(v0 + 480) = sub_21D5EE998;
        *(v0 + 488) = &block_descriptor_30_0;
        *(v0 + 496) = v54;
        [v53 formattedNameForRegion:v27 result:v0 + 464];
        goto LABEL_23;
      }

      v28 = *(v0 + 1608);
      v29 = *(v0 + 1160);
      v30 = *(v0 + 1144);

      v28(v29, v30);
    }

    v31 = *(v0 + 1584);
    sub_21D0CF7E0(*(v0 + 1264), &qword_27CE61F30, &qword_21DC2A788);

    while (1)
    {
      v32 = *(v0 + 1692);
      v33 = *(v0 + 1272);
      sub_21DBFACAC();
      if (*(v33 + v32) == *(v0 + 1096))
      {
        v34 = 1;
      }

      else
      {
        v35 = *(v0 + 1200);
        v36 = sub_21DBFAD3C();
        sub_21D0D3954(v37, v35, &qword_27CE61F48, &qword_21DC2A798);
        v36(v0 + 800, 0);
        sub_21DBFACBC();
        v34 = 0;
      }

      v38 = *(v0 + 1504);
      v39 = *(v0 + 1488);
      v40 = *(v0 + 1208);
      v41 = *(v0 + 1200);
      v42 = *(*(v0 + 1496) + 56);
      *(v0 + 1576) = v42;
      v42(v41, v34, 1, v39);
      sub_21D0D523C(v41, v40, &qword_27CE61F20, &qword_21DC2A778);
      if (v38(v40, 1, v39) == 1)
      {
        sub_21D0CF7E0(*(v0 + 1272), &qword_27CE61F30, &qword_21DC2A788);

        sub_21DBFA99C();
        v49 = *(v0 + 1328);
        v50 = *(v0 + 1320);
        v51 = *(v0 + 1312);
        v55 = *(v0 + 1120);

        (*(v50 + 32))(v55, v49, v51);

        v7 = *(v0 + 8);
        goto LABEL_3;
      }

      v43 = *(v0 + 1168);
      v44 = *(v0 + 1152);
      v45 = *(v0 + 1144);
      v46 = *(*(v0 + 1208) + *(*(v0 + 1488) + 48));
      *(v0 + 1584) = v46;
      v47 = *(v44 + 32);
      *(v0 + 1592) = v47;
      *(v0 + 1600) = (v44 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
      v47(v43);
      sub_21DBF618C();
      v48 = *(v44 + 8);
      *(v0 + 1608) = v48;
      *(v0 + 1616) = (v44 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v48(v43, v45);
      if (!*(v0 + 976))
      {
        break;
      }
    }

    sub_21DBFA99C();
    *(v0 + 1624) = 0;
    v52 = v0 + 16;
    v63 = *(v0 + 1408);
    v61 = *(v0 + 1432);
    v56 = swift_allocBox();
    *(v0 + 1632) = v56;
    *(v0 + 1640) = v57;
    sub_21DBF617C();
    v58 = [v46 regionId];
    *(v0 + 736) = sub_21D80134C;
    *(v0 + 744) = v56;
    *(v0 + 704) = MEMORY[0x277D85DD0];
    *(v0 + 712) = 1107296256;
    *(v0 + 720) = sub_21D5EDE98;
    *(v0 + 728) = &block_descriptor_24_0;
    v59 = _Block_copy((v0 + 704));
    *(v0 + 1648) = v59;

    *(v0 + 16) = v0;
    *(v0 + 24) = sub_21D7FE970;
    v60 = swift_continuation_init();
    *(v0 + 648) = v61;
    *(v0 + 624) = v60;
    *(v0 + 592) = MEMORY[0x277D85DD0];
    *(v0 + 600) = 1107296256;
    *(v0 + 608) = sub_21D5EDF0C;
    *(v0 + 616) = &block_descriptor_27_1;
    [v63 childRegionsOfRegionId:v58 types:8 sort:2 recursive:1 cursor:v59 finished:v0 + 592];
LABEL_23:

    return MEMORY[0x282200938](v52);
  }
}

uint64_t sub_21D7FF5E4()
{
  v1 = *v0;
  v2 = *(*v0 + 240);
  *(*v0 + 1680) = v2;
  v3 = *(v1 + 1352);
  v4 = *(v1 + 1344);
  if (v2)
  {
    v5 = sub_21D8008B0;
  }

  else
  {
    v5 = sub_21D7FF714;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_21D7FF714()
{
  v1 = *(v0 + 1664);
  v2 = *(v0 + 1608);
  v3 = *(v0 + 1160);
  v4 = *(v0 + 1144);
  v5 = *(v0 + 1008);
  *(v0 + 1032) = *(v0 + 1000);
  *(v0 + 1040) = v5;
  sub_21DBF616C();

  v2(v3, v4);

  v71 = *(v0 + 1672);
  while (1)
  {
    v6 = *(v0 + 1696);
    v7 = *(v0 + 1264);
    sub_21DBFACAC();
    if (*(v7 + v6) == *(v0 + 1104))
    {
      v8 = 1;
    }

    else
    {
      v9 = *(v0 + 1184);
      v10 = sub_21DBFAD3C();
      sub_21D0D3954(v11, v9, &qword_27CE61F48, &qword_21DC2A798);
      v10(v0 + 832, 0);
      sub_21DBFACBC();
      v8 = 0;
    }

    v12 = *(v0 + 1504);
    v13 = *(v0 + 1488);
    v14 = *(v0 + 1192);
    v15 = *(v0 + 1184);
    (*(v0 + 1576))(v15, v8, 1, v13);
    sub_21D0D523C(v15, v14, &qword_27CE61F20, &qword_21DC2A778);
    if (v12(v14, 1, v13) == 1)
    {
      v22 = *(v0 + 1584);
      sub_21D0CF7E0(*(v0 + 1264), &qword_27CE61F30, &qword_21DC2A788);

      while (1)
      {
        v23 = *(v0 + 1692);
        v24 = *(v0 + 1272);
        sub_21DBFACAC();
        if (*(v24 + v23) == *(v0 + 1096))
        {
          v25 = 1;
        }

        else
        {
          v26 = *(v0 + 1200);
          v27 = sub_21DBFAD3C();
          sub_21D0D3954(v28, v26, &qword_27CE61F48, &qword_21DC2A798);
          v27(v0 + 800, 0);
          sub_21DBFACBC();
          v25 = 0;
        }

        v29 = *(v0 + 1504);
        v30 = *(v0 + 1488);
        v31 = *(v0 + 1208);
        v32 = *(v0 + 1200);
        v33 = *(*(v0 + 1496) + 56);
        *(v0 + 1576) = v33;
        v33(v32, v25, 1, v30);
        sub_21D0D523C(v32, v31, &qword_27CE61F20, &qword_21DC2A778);
        if (v29(v31, 1, v30) == 1)
        {
          sub_21D0CF7E0(*(v0 + 1272), &qword_27CE61F30, &qword_21DC2A788);

          sub_21DBFA99C();
          v46 = *(v0 + 1408);
          v47 = *(v0 + 1328);
          v48 = *(v0 + 1320);
          v49 = *(v0 + 1312);
          if (v71)
          {
            (*(v48 + 8))(v47, v49);

            goto LABEL_21;
          }

          v60 = *(v0 + 1120);

          (*(v48 + 32))(v60, v47, v49);

          v55 = *(v0 + 8);
          goto LABEL_22;
        }

        v34 = *(v0 + 1168);
        v35 = *(v0 + 1152);
        v36 = *(v0 + 1144);
        v37 = *(*(v0 + 1208) + *(*(v0 + 1488) + 48));
        *(v0 + 1584) = v37;
        v38 = *(v35 + 32);
        *(v0 + 1592) = v38;
        *(v0 + 1600) = (v35 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
        v38(v34);
        sub_21DBF618C();
        v39 = *(v35 + 8);
        *(v0 + 1608) = v39;
        *(v0 + 1616) = (v35 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v39(v34, v36);
        if (!*(v0 + 976))
        {
          break;
        }
      }

      sub_21DBFA99C();
      *(v0 + 1624) = v71;
      if (v71)
      {
        v50 = *(v0 + 1408);
        v51 = *(v0 + 1328);
        v52 = *(v0 + 1320);
        v53 = *(v0 + 1312);
        v54 = *(v0 + 1272);

        sub_21D0CF7E0(v54, &qword_27CE61F30, &qword_21DC2A788);
        (*(v52 + 8))(v51, v53);
        goto LABEL_21;
      }

      v57 = v0 + 16;
      v72 = *(v0 + 1408);
      v70 = *(v0 + 1432);
      v61 = swift_allocBox();
      *(v0 + 1632) = v61;
      *(v0 + 1640) = v62;
      sub_21DBF617C();
      v63 = [v37 regionId];
      *(v0 + 736) = sub_21D80134C;
      *(v0 + 744) = v61;
      *(v0 + 704) = MEMORY[0x277D85DD0];
      *(v0 + 712) = 1107296256;
      *(v0 + 720) = sub_21D5EDE98;
      *(v0 + 728) = &block_descriptor_24_0;
      v64 = _Block_copy((v0 + 704));
      *(v0 + 1648) = v64;

      *(v0 + 16) = v0;
      *(v0 + 24) = sub_21D7FE970;
      v65 = swift_continuation_init();
      *(v0 + 648) = v70;
      *(v0 + 624) = v65;
      *(v0 + 592) = MEMORY[0x277D85DD0];
      *(v0 + 600) = 1107296256;
      *(v0 + 608) = sub_21D5EDF0C;
      *(v0 + 616) = &block_descriptor_27_1;
      [v72 childRegionsOfRegionId:v63 types:8 sort:2 recursive:1 cursor:v64 finished:v0 + 592];
      goto LABEL_28;
    }

    v16 = *(v0 + 1592);
    v17 = *(v0 + 1160);
    v18 = *(*(v0 + 1192) + *(*(v0 + 1488) + 48));
    *(v0 + 1664) = v18;
    v16(v17);
    sub_21DBF618C();
    if (!*(v0 + 992))
    {
      break;
    }

    v19 = *(v0 + 1608);
    v20 = *(v0 + 1160);
    v21 = *(v0 + 1144);

    v19(v20, v21);
  }

  sub_21DBFA99C();
  *(v0 + 1672) = v71;
  if (!v71)
  {
    v57 = v0 + 208;
    v58 = *(v0 + 1408);
    *(v0 + 208) = v0;
    *(v0 + 248) = v0 + 1000;
    *(v0 + 216) = sub_21D7FF5E4;
    v59 = swift_continuation_init();
    *(v0 + 520) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5ED60, &qword_21DC2A7A0);
    *(v0 + 464) = MEMORY[0x277D85DD0];
    *(v0 + 472) = 1107296256;
    *(v0 + 480) = sub_21D5EE998;
    *(v0 + 488) = &block_descriptor_30_0;
    *(v0 + 496) = v59;
    [v58 formattedNameForRegion:v18 result:v0 + 464];
LABEL_28:

    return MEMORY[0x282200938](v57);
  }

  v67 = *(v0 + 1608);
  v40 = *(v0 + 1584);
  v41 = *(v0 + 1408);
  v69 = *(v0 + 1328);
  v42 = *(v0 + 1320);
  v68 = *(v0 + 1312);
  v66 = *(v0 + 1272);
  v43 = *(v0 + 1264);
  v44 = *(v0 + 1160);
  v45 = *(v0 + 1144);

  v67(v44, v45);
  sub_21D0CF7E0(v43, &qword_27CE61F30, &qword_21DC2A788);
  sub_21D0CF7E0(v66, &qword_27CE61F30, &qword_21DC2A788);
  (*(v42 + 8))(v69, v68);

LABEL_21:

  v55 = *(v0 + 8);
LABEL_22:

  return v55();
}

uint64_t sub_21D8001B8()
{
  v1 = v0[178];
  v2 = v0[177];
  v3 = v0[176];
  v4 = v0[166];
  v5 = v0[165];
  v6 = v0[164];

  swift_willThrow();

  (*(v5 + 8))(v4, v6);
  _Block_release(v1);

  v7 = v0[1];

  return v7();
}

uint64_t sub_21D80035C()
{
  v1 = v0[190];
  v2 = v0[176];
  v11 = v0[166];
  v3 = v0[165];
  v4 = v0[164];
  v5 = v0[160];
  v6 = v0[147];
  v7 = v0[144];
  v8 = v0[143];

  swift_willThrow();

  (*(v7 + 8))(v6, v8);
  sub_21D0CF7E0(v5, &qword_27CE61F30, &qword_21DC2A788);
  (*(v3 + 8))(v11, v4);

  v9 = v0[1];

  return v9();
}

uint64_t sub_21D80053C()
{
  v1 = v0[195];
  v2 = v0[194];
  v3 = v0[176];
  v4 = v0[166];
  v5 = v0[165];
  v6 = v0[164];

  swift_willThrow();

  (*(v5 + 8))(v4, v6);
  _Block_release(v1);

  v7 = v0[1];

  return v7();
}

uint64_t sub_21D8006E0()
{
  v1 = v0[206];
  v2 = v0[198];
  v3 = v0[176];
  v4 = v0[166];
  v5 = v0[165];
  v6 = v0[164];
  v7 = v0[159];

  swift_willThrow();

  sub_21D0CF7E0(v7, &qword_27CE61F30, &qword_21DC2A788);
  (*(v5 + 8))(v4, v6);
  _Block_release(v1);

  v8 = v0[1];

  return v8();
}

uint64_t sub_21D8008B0()
{
  v1 = v0[208];
  v2 = v0[201];
  v3 = v0[198];
  v4 = v0[176];
  v5 = v0[165];
  v12 = v0[164];
  v13 = v0[166];
  v11 = v0[159];
  v6 = v0[158];
  v7 = v0[145];
  v8 = v0[143];

  swift_willThrow();

  v2(v7, v8);
  sub_21D0CF7E0(v6, &qword_27CE61F30, &qword_21DC2A788);
  sub_21D0CF7E0(v11, &qword_27CE61F30, &qword_21DC2A788);
  (*(v5 + 8))(v13, v12);

  v9 = v0[1];

  return v9();
}

id sub_21D800AC0(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_21DBF5C4C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v14 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61F28, &qword_21DC2A780);
  swift_projectBox();
  result = [a1 timeZone];
  if (result)
  {
    v12 = result;
    sub_21DBF5C2C();

    (*(v5 + 32))(v10, v7, v4);
    swift_beginAccess();
    sub_21DBF618C();
    v13 = v15;
    swift_endAccess();
    if (v13)
    {
    }

    else
    {
      v14[1] = a1;
      swift_beginAccess();
      sub_21DBF616C();
      swift_endAccess();
    }

    return (*(v5 + 8))(v10, v4);
  }

  return result;
}

uint64_t sub_21D800C9C()
{
  sub_21D157444(v0 + 16);
  sub_21D157444(v0 + 32);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + 64));

  v1 = OBJC_IVAR____TtC15RemindersUICore26TTRTimeZonePickerPresenter_currentTimeZone;
  v2 = sub_21DBF5C4C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC15RemindersUICore26TTRTimeZonePickerPresenter_date;
  v4 = sub_21DBF563C();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return v0;
}

uint64_t sub_21D800DD0()
{
  sub_21D800C9C();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TTRTimeZonePickerPresenter(uint64_t a1)
{
  result = qword_27CE61EF0;
  if (!qword_27CE61EF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21D800E7C(uint64_t a1)
{
  result = sub_21DBF5C4C();
  if (v2 <= 0x3F)
  {
    result = sub_21DBF563C();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

void *sub_21D800F9C()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = result;
    v3 = *(v0 + OBJC_IVAR____TtC15RemindersUICore26TTRTimeZonePickerPresenter_viewModel + 32);
    v6 = *(v0 + OBJC_IVAR____TtC15RemindersUICore26TTRTimeZonePickerPresenter_viewModel + 16);
    v7 = v3;
    v5 = *(v0 + OBJC_IVAR____TtC15RemindersUICore26TTRTimeZonePickerPresenter_viewModel);
    v8 = v5;
    v9 = v6;
    v10 = v3;
    sub_21D0D3954(&v8, v4, &qword_27CE61F00, &qword_21DC2A728);
    sub_21D35BFD0(&v9, v4);
    sub_21D0D3954(&v10, v4, &qword_27CE61F08, &qword_21DC2A730);
    sub_21D0D3954(&v10 + 8, v4, &qword_27CE64FD0, &unk_21DC2A738);
    if ([v2 isViewLoaded])
    {
      sub_21DA4AF30(&v5, 1);
    }

    sub_21D0CF7E0(&v8, &qword_27CE61F00, &qword_21DC2A728);
    sub_21D6C9C70(&v9);
    sub_21D0CF7E0(&v10, &qword_27CE61F08, &qword_21DC2A730);
    sub_21D0CF7E0(&v10 + 8, &qword_27CE64FD0, &unk_21DC2A738);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21D8010E0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_21D1B795C;

  return sub_21D7FC2B4(a1, v4, v5, v6, v7, v8);
}

unint64_t sub_21D8011A8()
{
  result = qword_27CE58378;
  if (!qword_27CE58378)
  {
    v3 = sub_21DBF5C4C();
    result = swift_getWitnessTable(MEMORY[0x277CC9A80], v3, v0, v1);
    atomic_store(result, &qword_27CE58378);
  }

  return result;
}

unint64_t sub_21D801200()
{
  result = qword_27CE61F38;
  if (!qword_27CE61F38)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CE61F38);
  }

  return result;
}

uint64_t sub_21D801268(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable(MEMORY[0x277D44E88], v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21D8012BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRTimeZonePickerViewModel.CellViewModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_21D801350()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong navigationController];

    if (v3)
    {
      if (*(v0 + 32))
      {
        [v3 dismissViewControllerAnimated:1 completion:0];
      }

      else
      {
      }
    }
  }
}

uint64_t sub_21D801408()
{
  MEMORY[0x223D46650](v0 + 16);
  MEMORY[0x223D46650](v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t TTRITimeZonePickerAssembly.PresentationStyle.hashValue.getter()
{
  v1 = *v0;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  return sub_21DBFC82C();
}

id static TTRITimeZonePickerAssembly.createViewControllerForModalPresentation(delegate:currentTimeZone:date:)(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t, uint64_t), uint64_t a4)
{
  v7 = 1;
  v4 = sub_21D8017C4(a1, a2, a3, a4, &v7);
  v5 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];
  [v5 setModalPresentationStyle_];

  return v5;
}

id sub_21D801570(uint64_t a1, void *a2, char *a3)
{
  ObjectType = swift_getObjectType();
  v7 = sub_21DBF8D1C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21DBF8D3C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&a3[OBJC_IVAR____TtC15RemindersUICore32TTRITimeZonePickerViewController_dataSource] = 0;
  v15 = &a3[OBJC_IVAR____TtC15RemindersUICore32TTRITimeZonePickerViewController_lastConsumedViewModel];
  *(v15 + 1) = 0u;
  *(v15 + 2) = 0u;
  *v15 = 0u;
  *&a3[OBJC_IVAR____TtC15RemindersUICore32TTRITimeZonePickerViewController_searchController] = 0;
  v16 = &a3[OBJC_IVAR____TtC15RemindersUICore32TTRITimeZonePickerViewController_initialSearchTerm];
  *v16 = 0;
  *(v16 + 1) = 0;
  v17 = &a3[OBJC_IVAR____TtC15RemindersUICore32TTRITimeZonePickerViewController_presenter];
  *v17 = a1;
  *(v17 + 1) = &off_282ED3DC8;
  *&a3[OBJC_IVAR____TtC15RemindersUICore32TTRITimeZonePickerViewController_localUndoManager] = a2;
  sub_21D0D8CF0(0, &qword_27CE64FF0, 0x277D752B8);
  (*(v8 + 104))(v10, *MEMORY[0x277D74D50], v7);
  v18 = a2;
  sub_21DBF8D2C();
  v19 = sub_21DBFB55C();
  (*(v12 + 8))(v14, v11);
  v22.receiver = a3;
  v22.super_class = ObjectType;
  v20 = objc_msgSendSuper2(&v22, sel_initWithCollectionViewLayout_, v19);

  return v20;
}

id sub_21D8017C4(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t, uint64_t), uint64_t a4, char *a5)
{
  v58 = a4;
  v57 = a3;
  v63 = a2;
  v64 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F150, &qword_21DC0D090);
  MEMORY[0x28223BE20](v6 - 8);
  v65 = &v56 - v7;
  v62 = sub_21DBF5EDC();
  MEMORY[0x28223BE20](v62);
  v61 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_21DBF563C();
  v59 = *(v69 - 8);
  v9 = v59;
  MEMORY[0x28223BE20](v69);
  v11 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = v11;
  v12 = sub_21DBF5C4C();
  v68 = v12;
  v60 = *(v12 - 8);
  v13 = v60;
  MEMORY[0x28223BE20](v12);
  v66 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a5;
  v16 = objc_allocWithZone(TTRUndoManager);
  v17 = sub_21DBFA12C();
  v18 = [v16 initWithDebugIdentifier_];

  type metadata accessor for TTRTimeZonePickerInteractor();
  v19 = swift_allocObject();
  v19[3] = 0;
  swift_unknownObjectWeakInit();
  v19[4] = v18;
  v19[5] = 0;
  v20 = v18;
  v21 = sub_21D550BD8(v18, v19, sub_21D7FB294, 0);

  v19[5] = v21;

  v22 = type metadata accessor for TTRITimeZonePickerRouter();
  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v23 + 32) = v15;
  v56 = *(v13 + 16);
  v24 = v66;
  v56(v66, v57, v12);
  v57 = *(v9 + 16);
  v57(v11, v58, v69);
  v71[3] = v22;
  v71[4] = &off_282ED3F68;
  v71[0] = v23;
  type metadata accessor for TTRTimeZonePickerPresenter(0);
  v25 = swift_allocObject();
  v26 = __swift_mutable_project_boxed_opaque_existential_1(v71, v22);
  v27 = MEMORY[0x28223BE20](v26);
  v29 = (&v56 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v30 + 16))(v29, v27);
  v31 = *v29;
  v70[3] = v22;
  v70[4] = &off_282ED3F68;
  v70[0] = v31;
  *(v25 + 3) = 0;
  swift_unknownObjectWeakInit();
  *(v25 + 5) = 0;
  swift_unknownObjectWeakInit();
  v32 = &v25[OBJC_IVAR____TtC15RemindersUICore26TTRTimeZonePickerPresenter_viewModel];
  v33 = v20;

  v34 = MEMORY[0x277D84F90];
  sub_21DA4D178(0, 0xE000000000000000, MEMORY[0x277D84F90], v72);
  v35 = v72[1];
  *v32 = v72[0];
  *(v32 + 1) = v35;
  *(v32 + 2) = v72[2];
  *&v25[OBJC_IVAR____TtC15RemindersUICore26TTRTimeZonePickerPresenter_initialSetupTask] = 0;
  *&v25[OBJC_IVAR____TtC15RemindersUICore26TTRTimeZonePickerPresenter_fetchSearchResultsTask] = 0;
  *(v25 + 6) = v19;
  *(v25 + 7) = &off_282ED3D98;
  sub_21D0D32E4(v70, (v25 + 64));
  *(v25 + 13) = v33;
  v56(&v25[OBJC_IVAR____TtC15RemindersUICore26TTRTimeZonePickerPresenter_currentTimeZone], v24, v68);
  v57(&v25[OBJC_IVAR____TtC15RemindersUICore26TTRTimeZonePickerPresenter_date], v67, v69);
  sub_21D0D8CF0(0, &qword_280D1B900, 0x277D85C78);
  v36 = v33;
  v37 = sub_21DBFB12C();
  type metadata accessor for TTRDeferredAction();
  v38 = swift_allocObject();
  v38[3] = 0;
  swift_unknownObjectWeakInit();
  *&v73[0] = v34;
  sub_21D0DD20C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD90, &unk_21DC0F180);
  sub_21D0DA49C();
  sub_21DBFBCBC();
  sub_21DBF5EFC();
  swift_allocObject();
  v39 = v36;
  v38[5] = sub_21DBF5EEC();
  v38[6] = v34;
  v38[4] = v37;
  *&v25[OBJC_IVAR____TtC15RemindersUICore26TTRTimeZonePickerPresenter_deferredAction] = v38;
  swift_beginAccess();
  v38[3] = &off_282ED3DA0;
  swift_unknownObjectWeakAssign();
  sub_21DA4D178(0, 0xE000000000000000, v34, v73);

  (*(v59 + 8))(v67, v69);
  (*(v60 + 8))(v66, v68);
  __swift_destroy_boxed_opaque_existential_0(v70);
  v40 = &v25[OBJC_IVAR____TtC15RemindersUICore26TTRTimeZonePickerPresenter_viewModel];
  v41 = v73[1];
  *v40 = v73[0];
  *(v40 + 1) = v41;
  *(v40 + 2) = v73[2];

  __swift_destroy_boxed_opaque_existential_0(v71);
  v42 = objc_allocWithZone(type metadata accessor for TTRITimeZonePickerViewController());

  v44 = sub_21D801570(v43, v39, v42);
  v45 = objc_allocWithZone(MEMORY[0x277D757A0]);
  v46 = v44;
  v47 = [v45 initWithRootViewController_];
  v19[3] = &off_282ED3DB8;
  swift_unknownObjectWeakAssign();
  *(v25 + 3) = &off_282EE2988;
  swift_unknownObjectWeakAssign();
  *(v25 + 5) = v63;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v48._countAndFlagsBits = 0xD000000000000019;
    v48._object = 0x800000021DC63430;
    TTRDeferredAction.scheduleNextRunLoop(reason:)(v48);
    swift_unknownObjectRelease();
  }

  v49 = sub_21DBFA89C();
  v50 = v65;
  (*(*(v49 - 8) + 56))(v65, 1, 1, v49);
  sub_21DBFA84C();

  v51 = sub_21DBFA83C();
  v52 = swift_allocObject();
  v53 = MEMORY[0x277D85700];
  v52[2] = v51;
  v52[3] = v53;
  v52[4] = v25;
  v54 = sub_21D1B5178(0, 0, v50, &unk_21DC2A930, v52);

  *&v25[OBJC_IVAR____TtC15RemindersUICore26TTRTimeZonePickerPresenter_initialSetupTask] = v54;

  return v46;
}

unint64_t sub_21D8020FC()
{
  result = qword_27CE61F60;
  if (!qword_27CE61F60)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRITimeZonePickerAssembly.PresentationStyle, &type metadata for TTRITimeZonePickerAssembly.PresentationStyle, v0, v1);
    atomic_store(result, &qword_27CE61F60);
  }

  return result;
}

uint64_t sub_21D802184(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21D1B795C;

  return sub_21D7FB43C(a1, v4, v5, v6);
}

uint64_t TTRRemoveTemplatePresenterCapability.TemplateDeletionAlert.hashValue.getter()
{
  v1 = *v0;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  return sub_21DBFC82C();
}

uint64_t TTRRemoveTemplatePresenterCapability.__allocating_init(interactor:)(__int128 *a1)
{
  v2 = swift_allocObject();
  sub_21D0D0FD0(a1, v2 + 16);
  return v2;
}

uint64_t TTRRemoveTemplatePresenterCapability.deleteTemplate(_:potentiallyLongOperationPerformer:presentAlert:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[9] = a4;
  v5[10] = v4;
  v5[7] = a2;
  v5[8] = a3;
  v5[6] = a1;
  v6 = sub_21DBF563C();
  v5[11] = v6;
  v5[12] = *(v6 - 8);
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F150, &qword_21DC0D090);
  v5[15] = swift_task_alloc();
  v7 = sub_21DBFAE0C();
  v5[16] = v7;
  v5[17] = *(v7 - 8);
  v5[18] = swift_task_alloc();
  v5[19] = sub_21DBFA84C();
  v5[20] = sub_21DBFA83C();
  v9 = sub_21DBFA7CC();
  v5[21] = v9;
  v5[22] = v8;

  return MEMORY[0x2822009F8](sub_21D8024C4, v9, v8);
}

uint64_t sub_21D8024C4()
{
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v3 = *(v0 + 128);
  sub_21DBFAE1C();
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 == *MEMORY[0x277D459D8])
  {
    (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));
    goto LABEL_3;
  }

  if (v4 == *MEMORY[0x277D459C8])
  {
    v8 = *(v0 + 64);
    *(v0 + 307) = 0;
    v11 = (v8 + *v8);
    v9 = swift_task_alloc();
    *(v0 + 184) = v9;
    *v9 = v0;
    v9[1] = sub_21D802724;
    v7 = v0 + 307;
    goto LABEL_6;
  }

  if (v4 == *MEMORY[0x277D459D0])
  {
LABEL_3:
    v5 = *(v0 + 64);
    *(v0 + 304) = 1;
    v11 = (v5 + *v5);
    v6 = swift_task_alloc();
    *(v0 + 192) = v6;
    *v6 = v0;
    v6[1] = sub_21D802954;
    v7 = v0 + 304;
LABEL_6:

    return v11(v7);
  }

  return sub_21DBFC63C();
}

uint64_t sub_21D802724(char a1)
{
  v2 = *v1;
  v3 = *v1;
  *(v3 + 24) = a1;
  *(v3 + 16) = v1;

  v4 = *(v2 + 176);
  v5 = *(v2 + 168);

  return MEMORY[0x2822009F8](sub_21D80284C, v5, v4);
}

uint64_t sub_21D80284C(uint64_t a1)
{
  if (*(v1 + 24) == 1)
  {
    *(v1 + 200) = sub_21DBFA83C();
    v3 = sub_21DBFA7CC();
    *(v1 + 208) = v3;
    *(v1 + 216) = v2;

    return MEMORY[0x2822009F8](sub_21D802B84, v3, v2);
  }

  else
  {

    v4 = *(v1 + 8);

    return v4(0);
  }
}

uint64_t sub_21D802954(char a1)
{
  v2 = *v1;
  v3 = *v1;
  *(v3 + 40) = a1;
  *(v3 + 32) = v1;

  v4 = *(v2 + 176);
  v5 = *(v2 + 168);

  return MEMORY[0x2822009F8](sub_21D802A7C, v5, v4);
}

uint64_t sub_21D802A7C(uint64_t a1)
{
  if (*(v1 + 40) == 1)
  {
    *(v1 + 200) = sub_21DBFA83C();
    v3 = sub_21DBFA7CC();
    *(v1 + 208) = v3;
    *(v1 + 216) = v2;

    return MEMORY[0x2822009F8](sub_21D802B84, v3, v2);
  }

  else
  {

    v4 = *(v1 + 8);

    return v4(0);
  }
}

uint64_t sub_21D802B84()
{
  v1 = v0[15];
  v2 = v0[7];
  v4 = v2[4];
  v3 = v2[5];
  v5 = swift_allocObject();
  v0[28] = v5;
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = v2[2];
  v0[29] = v6;
  v7 = sub_21DBFA89C();
  (*(*(v7 - 8) + 56))(v1, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v6;
  v8[5] = sub_21D0E6070;
  v8[6] = v5;

  v0[30] = sub_21D3932A8(0, 0, v1, &unk_21DC2A950, v8);
  sub_21D0EC98C(v1);
  _s15RemindersUICore22TTRCurrentTimeProviderC3now10Foundation4DateVyF_0();
  v0[31] = sub_21DBFA83C();
  v10 = sub_21DBFA7CC();
  v0[32] = v10;
  v0[33] = v9;

  return MEMORY[0x2822009F8](sub_21D802D1C, v10, v9);
}

uint64_t sub_21D802D1C()
{
  v1 = *(v0 + 10);
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v2);
  v7 = (*(v3 + 8) + **(v3 + 8));
  v4 = swift_task_alloc();
  *(v0 + 34) = v4;
  *v4 = v0;
  v4[1] = sub_21D802E50;
  v5 = *(v0 + 6);

  return v7(v0 + 305, v5, v2, v3);
}

uint64_t sub_21D802E50()
{
  v1 = *v0;

  v2 = *(v1 + 264);
  v3 = *(v1 + 256);

  return MEMORY[0x2822009F8](sub_21D802F70, v3, v2);
}

uint64_t sub_21D802F70()
{

  v1 = *(v0 + 208);
  v2 = *(v0 + 216);

  return MEMORY[0x2822009F8](sub_21D802FD4, v1, v2);
}

uint64_t sub_21D802FD4(uint64_t a1)
{
  v2 = *(v1 + 56);
  _s15RemindersUICore22TTRCurrentTimeProviderC3now10Foundation4DateVyF_0();
  if (*(v2 + 24) == 1 && (v3 = *(v1 + 232), sub_21DBF558C(), v3 + 5.0 - v4 > 0.0))
  {
    v5 = sub_21DBFC86C();
    v6 = swift_task_alloc();
    *(v1 + 280) = v6;
    *v6 = v1;
    v6[1] = sub_21D80319C;

    return MEMORY[0x282200480](v5);
  }

  else
  {
    v7 = *(v1 + 56);
    sub_21DBFA96C();
    v10 = (*(v7 + 48) + **(v7 + 48));
    v8 = swift_task_alloc();
    *(v1 + 288) = v8;
    *v8 = v1;
    v8[1] = sub_21D8033D0;

    return v10();
  }
}

uint64_t sub_21D80319C()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 208);
    v4 = *(v2 + 216);
    v5 = sub_21D803AD4;
  }

  else
  {
    v3 = *(v2 + 208);
    v4 = *(v2 + 216);
    v5 = sub_21D8032C0;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_21D8032C0()
{
  v1 = *(v0 + 56);
  sub_21DBFA96C();
  v4 = (*(v1 + 48) + **(v1 + 48));
  v2 = swift_task_alloc();
  *(v0 + 288) = v2;
  *v2 = v0;
  v2[1] = sub_21D8033D0;

  return v4();
}

uint64_t sub_21D8033D0()
{
  v1 = *v0;

  v2 = *(v1 + 216);
  v3 = *(v1 + 208);

  return MEMORY[0x2822009F8](sub_21D8034F0, v3, v2);
}

uint64_t sub_21D8034F0()
{
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v0 + 88);
  v4 = *(v0 + 96);

  v5 = *(v4 + 8);
  v5(v2, v3);
  v5(v1, v3);
  *(v0 + 308) = *(v0 + 305);
  v6 = *(v0 + 168);
  v7 = *(v0 + 176);

  return MEMORY[0x2822009F8](sub_21D8035B8, v6, v7);
}

uint64_t sub_21D8035B8()
{
  if (!*(v0 + 308))
  {
    v1 = 1;
    goto LABEL_5;
  }

  if (*(v0 + 308) == 1)
  {
    v1 = 0;
LABEL_5:

    v2 = *(v0 + 8);

    return v2(v1);
  }

  v4 = *(v0 + 64);
  *(v0 + 306) = 2;
  v6 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v0 + 296) = v5;
  *v5 = v0;
  v5[1] = sub_21D803748;

  return v6(v0 + 306);
}

uint64_t sub_21D803748()
{
  v1 = *v0;

  v2 = *(v1 + 176);
  v3 = *(v1 + 168);

  return MEMORY[0x2822009F8](sub_21D803868, v3, v2);
}

uint64_t sub_21D803868()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t TTRRemoveTemplatePresenterCapability.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_21D803954(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = v1[4];
  v8 = *(v1 + 5);
  v7 = *(v1 + 6);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_21D1B795C;

  return sub_21D9968FC(v6, a1, v4, v5, v8, v7);
}