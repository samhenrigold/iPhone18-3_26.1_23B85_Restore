uint64_t sub_21D65E354@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, BOOL *a4@<X8>)
{
  v18 = a2;
  v7 = sub_21DBF6F2C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1 + OBJC_IVAR____TtC15RemindersUICore34TTRShowSearchResultDataModelSource_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v13 = result;
  if (result)
  {
    v14 = *(v11 + 8);
    ObjectType = swift_getObjectType();
    v17 = v7;
    v16 = ObjectType;
    sub_21D65D7D4(v18, v10);
    (*(v14 + 24))(v10, a3, v16, v14);
    swift_unknownObjectRelease();
    result = (*(v8 + 8))(v10, v17);
  }

  *a4 = v13 == 0;
  return result;
}

uint64_t sub_21D65E4E8()
{
  v1 = v0 + OBJC_IVAR____TtC15RemindersUICore34TTRShowSearchResultDataModelSource_delegate;
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

uint64_t sub_21D65E564(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C378, &unk_21DC15EA0) + 48));

  return TTRShowSearchResultDataModelSource.monitor(_:didFetch:diff:transitioningFrom:)(a1, a2, v6, a3);
}

Swift::Void __swiftcall TTRShowSearchResultDataModelSource.updated(objectIDs:)(Swift::OpaquePointer objectIDs)
{
  sub_21DBFBEEC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5DB00, &unk_21DC20E90);
  sub_21DBFA1AC();

  MEMORY[0x223D42AA0](0xD000000000000013, 0x800000021DC44650);
  sub_21DBFAEDC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE590D0, &qword_21DC0AD80);
  sub_21DBF625C();
}

uint64_t sub_21D65E708@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, BOOL *a3@<X8>)
{
  v5 = a1 + OBJC_IVAR____TtC15RemindersUICore34TTRShowSearchResultDataModelSource_delegate;
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

void TTRShowSearchResultDataModelSource.update(error:)(void *a1)
{
  if (qword_27CE56B50 != -1)
  {
    swift_once();
  }

  v2 = sub_21DBF84BC();
  __swift_project_value_buffer(v2, qword_27CE5F6B0);
  v3 = a1;

  oslog = sub_21DBF84AC();
  v4 = sub_21DBFAEBC();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136315394;
    swift_getErrorValue();
    v7 = sub_21DBFC75C();
    v9 = sub_21D0CDFB4(v7, v8, &v14);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2080;
    type metadata accessor for TTRShowSearchResultDataModelSource(0);

    v10 = sub_21DBFA1AC();
    v12 = sub_21D0CDFB4(v10, v11, &v14);

    *(v5 + 14) = v12;
    _os_log_impl(&dword_21D0C9000, oslog, v4, "TTRShowSearchResultDataModelSource update error {error: %s, dataModelSource: %s}", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D46520](v6, -1, -1);
    MEMORY[0x223D46520](v5, -1, -1);
  }

  else
  {
  }
}

uint64_t TTRShowSearchResultDataModelSource.searchQueryPerformer(_:didFindItems:)(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC15RemindersUICore34TTRShowSearchResultDataModelSource_queryPerformer);
  if (v3)
  {
    v4 = v3 == result;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    v5 = OBJC_IVAR____TtC15RemindersUICore34TTRShowSearchResultDataModelSource_itemsByID;
    swift_beginAccess();
    v6 = sub_21DBF8E0C();
    sub_21D65F7F0(v6, sub_21D65F928, 0, (v2 + v5));
    return swift_endAccess();
  }

  return result;
}

uint64_t TTRShowSearchResultDataModelSource.searchQueryPerformer(_:didFinishWithError:)(uint64_t result, id a2)
{
  v3 = OBJC_IVAR____TtC15RemindersUICore34TTRShowSearchResultDataModelSource_queryPerformer;
  v4 = *(v2 + OBJC_IVAR____TtC15RemindersUICore34TTRShowSearchResultDataModelSource_queryPerformer);
  if (v4)
  {
    v5 = v4 == result;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    if (a2)
    {
      v7 = a2;
      if (qword_27CE56B58 != -1)
      {
        swift_once();
      }

      v8 = sub_21DBF84BC();
      __swift_project_value_buffer(v8, qword_27CE5F6C8);
      v9 = a2;

      v10 = sub_21DBF84AC();
      v11 = sub_21DBFAEBC();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        *v12 = 138412546;
        v14 = sub_21DBF52CC();
        *(v12 + 4) = v14;
        *v13 = v14;
        *(v12 + 12) = 2048;
        v15 = OBJC_IVAR____TtC15RemindersUICore34TTRShowSearchResultDataModelSource_itemsByID;
        swift_beginAccess();
        v16 = *(v2 + v15);
        if ((v16 & 0xC000000000000001) != 0)
        {
          sub_21DBF8E0C();
          v17 = sub_21DBFBD7C();
        }

        else
        {
          v17 = *(v16 + 16);
        }

        *(v12 + 14) = v17;

        _os_log_impl(&dword_21D0C9000, v10, v11, "Search completed with error: %@, found %ld results.", v12, 0x16u);
        sub_21D0CF7E0(v13, &unk_27CE60070, &unk_21DC09550);
        MEMORY[0x223D46520](v13, -1, -1);
        MEMORY[0x223D46520](v12, -1, -1);
      }

      else
      {
      }
    }

    else
    {
      if (qword_27CE56B58 != -1)
      {
        swift_once();
      }

      v18 = sub_21DBF84BC();
      __swift_project_value_buffer(v18, qword_27CE5F6C8);

      v19 = sub_21DBF84AC();
      v20 = sub_21DBFAE9C();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 134217984;
        v22 = OBJC_IVAR____TtC15RemindersUICore34TTRShowSearchResultDataModelSource_itemsByID;
        swift_beginAccess();
        v23 = *(v2 + v22);
        if ((v23 & 0xC000000000000001) != 0)
        {
          sub_21DBF8E0C();
          v24 = sub_21DBFBD7C();
        }

        else
        {
          v24 = *(v23 + 16);
        }

        *(v21 + 4) = v24;

        _os_log_impl(&dword_21D0C9000, v19, v20, "Search completed with %ld results.", v21, 0xCu);
        MEMORY[0x223D46520](v21, -1, -1);
      }

      else
      {
      }
    }

    v25 = *(v2 + v3);
    *(v2 + v3) = 0;

    v26 = 6;
    return sub_21D65BE2C(&v26);
  }

  return result;
}

uint64_t sub_21D65EDF0(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC15RemindersUICore34TTRShowSearchResultDataModelSource_queryPerformer);
  if (v3)
  {
    v4 = v3 == result;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    v5 = OBJC_IVAR____TtC15RemindersUICore34TTRShowSearchResultDataModelSource_itemsByID;
    swift_beginAccess();
    v6 = sub_21DBF8E0C();
    sub_21D65F7F0(v6, sub_21D65F928, 0, (v2 + v5));
    return swift_endAccess();
  }

  return result;
}

Swift::Void __swiftcall TTRShowSearchResultDataModelSource.showCompletedAllowlistChanged(isCleared:)(Swift::Bool isCleared)
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
  sub_21D65BE2C(&v2);
}

uint64_t sub_21D65EF18(char a1)
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
  return sub_21D65BE2C(&v3);
}

uint64_t TTRShowSearchResultMonitorableDataView.init(store:objectIDs:sortingStyle:showCompleted:countCompleted:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v9 = OBJC_IVAR____TtC15RemindersUICore38TTRShowSearchResultMonitorableDataView_sortingStyle;
  v10 = sub_21DBF70DC();
  (*(*(v10 - 8) + 32))(v5 + v9, a3, v10);
  v11 = OBJC_IVAR____TtC15RemindersUICore38TTRShowSearchResultMonitorableDataView_showCompleted;
  v12 = sub_21DBF71BC();
  (*(*(v12 - 8) + 32))(v5 + v11, a4, v12);
  *(v5 + OBJC_IVAR____TtC15RemindersUICore38TTRShowSearchResultMonitorableDataView_countCompleted) = a5;
  return v5;
}

char *TTRShowSearchResultMonitorableDataView.fetchData(from:userInteractive:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = v4;
  v34 = a2;
  v33 = a1;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C380, &unk_21DC20EA0);
  MEMORY[0x28223BE20](v31);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v30 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A910, &unk_21DC10B20);
  v32 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v30 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C388, &unk_21DC1A890);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v30 - v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C370, &qword_21DC15E98);
  sub_21DBFC83C();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C378, &unk_21DC15EA0);
  if ((*(*(v19 - 8) + 48))(v18, 1, v19) == 1)
  {
    sub_21D0CF7E0(v18, &qword_27CE5C388, &unk_21DC1A890);
    v20 = 0;
    v21 = *(v6 + 16);
    if ((a4 & 1) == 0)
    {
LABEL_3:
      v22 = [v21 nonUserInteractiveStore];
      goto LABEL_6;
    }
  }

  else
  {
    v20 = *&v18[*(v19 + 48)];
    v23 = sub_21DBF6F2C();
    (*(*(v23 - 8) + 8))(v18, v23);
    v21 = *(v6 + 16);
    if ((a4 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  v22 = v21;
LABEL_6:
  v24 = v22;
  sub_21DBF701C();
  if (v5)
  {
  }

  else
  {
    v25 = v13;
    v26 = v31;
    v27 = *(v31 + 48);
    v30 = v20;
    sub_21DBF76DC();
    *&v12[v27] = sub_21DBF76BC();
    sub_21D0D3954(v12, v9, &qword_27CE5C380, &unk_21DC20EA0);
    v18 = *&v9[*(v26 + 48)];
    v28 = sub_21DBF6F2C();
    (*(*(v28 - 8) + 32))(v33, v9, v28);
    sub_21DBF76CC();

    sub_21D0CF7E0(v12, &qword_27CE5C380, &unk_21DC20EA0);
    (*(v32 + 8))(v15, v25);
  }

  return v18;
}

uint64_t TTRShowSearchResultMonitorableDataView.deinit()
{

  v1 = OBJC_IVAR____TtC15RemindersUICore38TTRShowSearchResultMonitorableDataView_sortingStyle;
  v2 = sub_21DBF70DC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC15RemindersUICore38TTRShowSearchResultMonitorableDataView_showCompleted;
  v4 = sub_21DBF71BC();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t TTRShowSearchResultMonitorableDataView.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC15RemindersUICore38TTRShowSearchResultMonitorableDataView_sortingStyle;
  v2 = sub_21DBF70DC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC15RemindersUICore38TTRShowSearchResultMonitorableDataView_showCompleted;
  v4 = sub_21DBF71BC();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_21D65F584(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  result = TTRShowSearchResultMonitorableDataView.fetchData(from:userInteractive:)(a1, a2, a3, a4);
  if (!v4)
  {
    v7 = result;
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C378, &unk_21DC15EA0);
    *(a1 + *(result + 48)) = v7;
  }

  return result;
}

uint64_t sub_21D65F620(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a3;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v9 = *(*(result - 8) + 72);
  if (!v9)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v7 - v6 == 0x8000000000000000 && v9 == -1)
  {
    goto LABEL_17;
  }

  if (v5 < v6 || v5 >= v6 + (v7 - v6) / v9 * v9)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v5 != v6)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_21D65F708(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  result = a4(0);
  v8 = *(*(result - 8) + 72);
  if (!v8)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_17;
  }

  if (v4 < v5 || v4 >= v5 + (v6 - v5) / v8 * v8)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

void sub_21D65F7F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v9 = *a4;
  if ((*a4 & 0xC000000000000001) != 0)
  {
    if (v9 < 0)
    {
      v10 = *a4;
    }

    else
    {
      v10 = v9 & 0xFFFFFFFFFFFFFF8;
    }

    sub_21DBF8E0C();
    v11 = sub_21DBFBD7C();
    v13 = sub_21D9846C8(v10, v11);
    sub_21D661EFC(a1, a2, a3, 1, &v13);
    if (v4)
    {

      return;
    }
  }

  else
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *a4;
    sub_21D661EFC(a1, a2, a3, isUniquelyReferenced_nonNull_native, &v13);
  }

  *a4 = v13;
}

id sub_21D65F928@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v5 = *(a1 + 8);
  *a2 = *a1;
  a2[1] = v5;
  v3 = v2;

  return v5;
}

void sub_21D65F968(char *a1, unint64_t a2, char *a3, char *a4, uint64_t a5, __n128 a6)
{
  v11 = sub_21DBF6D7C();
  v99 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v102 = v90 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v14);
  v104 = v90 - v15;
  MEMORY[0x28223BE20](v16);
  v103 = v90 - v18;
  v20 = *(v19 + 72);
  if (!v20)
  {
    __break(1u);
LABEL_120:
    __break(1u);
    goto LABEL_121;
  }

  if (a2 - a1 == 0x8000000000000000 && v20 == -1)
  {
    goto LABEL_120;
  }

  v21 = &a3[-a2];
  if (&a3[-a2] != 0x8000000000000000 || v20 != -1)
  {
    v22 = (a2 - a1) / v20;
    v109 = a1;
    v108 = a4;
    v100 = a5;
    v101 = v11;
    v98 = v20;
    if (v22 < v21 / v20)
    {
      v23 = v22 * v20;
      if (a4 < a1 || &a1[v23] <= a4)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a4 != a1)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v97 = &a4[v23];
      v107 = &a4[v23];
      v102 = OBJC_IVAR____TtC15RemindersUICore34TTRShowSearchResultDataModelSource_itemsByID;
      swift_beginAccess();
      if (v23 >= 1 && a2 < a3)
      {
        v26 = *(v99 + 16);
        v99 += 16;
        v95 = (v99 - 8);
        v96 = v26;
        v93 = a3;
        while (1)
        {
          v27 = v96;
          v96(v103, a2, v11);
          v27(v104, a4, v11);
          v28 = sub_21DBF6D5C();
          v29 = v28;
          v30 = *&v102[a5];
          if ((v30 & 0xC000000000000001) != 0)
          {
            sub_21DBF8E0C();
            v31 = sub_21DBFC2CC();
            if (!v31)
            {
              goto LABEL_30;
            }

            v105 = v31;
            sub_21D0D8CF0(0, &qword_27CE58DA8, 0x277CC34B8);
            swift_dynamicCast();
            v32 = v106;
          }

          else
          {
            if (!*(v30 + 16))
            {

              goto LABEL_32;
            }

            sub_21DBF8E0C();
            v33 = sub_21D17E07C(v29);
            if ((v34 & 1) == 0)
            {
LABEL_30:

              goto LABEL_32;
            }

            v32 = *(*(v30 + 56) + 8 * v33);
          }

          if (v32)
          {
            v35 = [v32 title];

            if (v35)
            {
              v36 = sub_21DBFA16C();
              v38 = v37;

              goto LABEL_33;
            }
          }

LABEL_32:
          v36 = 0;
          v38 = 0xE000000000000000;
LABEL_33:
          v39 = sub_21DBF6D5C();
          v40 = v39;
          v41 = *&v102[a5];
          if ((v41 & 0xC000000000000001) != 0)
          {
            sub_21DBF8E0C();
            v42 = sub_21DBFC2CC();
            if (v42)
            {
              v43 = a4;
              v44 = a2;
              v105 = v42;
              sub_21D0D8CF0(0, &qword_27CE58DA8, 0x277CC34B8);
              swift_dynamicCast();
              v45 = v106;
              goto LABEL_39;
            }

LABEL_42:

            goto LABEL_45;
          }

          if (*(v41 + 16))
          {
            sub_21DBF8E0C();
            v46 = sub_21D17E07C(v40);
            if (v47)
            {
              v43 = a4;
              v44 = a2;
              v45 = *(*(v41 + 56) + 8 * v46);
LABEL_39:

              if (v45)
              {
                v48 = [v45 title];

                if (v48)
                {
                  v49 = sub_21DBFA16C();
                  v51 = v50;
                }

                else
                {
                  v49 = 0;
                  v51 = 0xE000000000000000;
                }

                a5 = v100;
              }

              else
              {
                v49 = 0;
                v51 = 0xE000000000000000;
              }

              a2 = v44;
              a4 = v43;
              a3 = v93;
              if (v36 != v49)
              {
                goto LABEL_52;
              }

              goto LABEL_50;
            }

            goto LABEL_42;
          }

LABEL_45:
          v51 = 0xE000000000000000;
          if (v36)
          {
            goto LABEL_52;
          }

LABEL_50:
          if (v38 == v51)
          {

            v52 = *v95;
            v11 = v101;
            (*v95)(v104, v101);
            v52(v103, v11);
            goto LABEL_57;
          }

LABEL_52:
          v53 = sub_21DBFC64C();

          v54 = *v95;
          v11 = v101;
          (*v95)(v104, v101);
          v54(v103, v11);
          if (v53)
          {
            v55 = v98;
            if (a1 < a2 || a1 >= a2 + v98)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 += v55;
            goto LABEL_65;
          }

LABEL_57:
          v55 = v98;
          v56 = &a4[v98];
          if (a1 < a4 || a1 >= v56)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v108 = v56;
          a4 += v55;
LABEL_65:
          a1 += v55;
          v109 = a1;
          if (a4 >= v97 || a2 >= a3)
          {
            goto LABEL_118;
          }
        }
      }

      goto LABEL_118;
    }

    v97 = v17;
    v24 = v21 / v20 * v20;
    if (a4 < a2 || a2 + v24 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v57 = &a4[v24];
    v104 = OBJC_IVAR____TtC15RemindersUICore34TTRShowSearchResultDataModelSource_itemsByID;
    swift_beginAccess();
    if (v24 < 1)
    {
LABEL_117:
      v109 = a2;
      v107 = v57;
LABEL_118:
      sub_21D65F708(&v109, &v108, &v107, MEMORY[0x277D453C0]);
      return;
    }

    v58 = -v98;
    v92 = (v99 + 8);
    v93 = (v99 + 16);
    v59 = &a4[v24];
    v60 = v97;
    v94 = a4;
    v103 = -v98;
LABEL_71:
    v90[0] = v57;
    v61 = a2;
    a2 += v58;
    v95 = a2;
    v96 = v61;
    while (1)
    {
      if (v61 <= a1)
      {
        v109 = v61;
        v107 = v90[0];
        goto LABEL_118;
      }

      v62 = a3;
      v91 = v57;
      v63 = *v93;
      v98 = v59 + v58;
      v99 = v59;
      v63(v60);
      (v63)(v102, a2, v11);
      v64 = sub_21DBF6D5C();
      v65 = v64;
      v66 = *&v104[v100];
      if ((v66 & 0xC000000000000001) != 0)
      {
        sub_21DBF8E0C();
        v67 = sub_21DBFC2CC();
        if (!v67)
        {
          goto LABEL_84;
        }

        v106 = v67;
        sub_21D0D8CF0(0, &qword_27CE58DA8, 0x277CC34B8);
        swift_dynamicCast();
        v68 = v107;
      }

      else
      {
        if (!*(v66 + 16))
        {

          goto LABEL_86;
        }

        sub_21DBF8E0C();
        v69 = sub_21D17E07C(v65);
        if ((v70 & 1) == 0)
        {
LABEL_84:

          goto LABEL_86;
        }

        v68 = *(*(v66 + 56) + 8 * v69);
      }

      if (v68)
      {
        v71 = [v68 title];

        if (v71)
        {
          v72 = sub_21DBFA16C();
          v74 = v73;

          goto LABEL_87;
        }
      }

LABEL_86:
      v72 = 0;
      v74 = 0xE000000000000000;
LABEL_87:
      v75 = sub_21DBF6D5C();
      v76 = v75;
      v77 = *&v104[v100];
      if ((v77 & 0xC000000000000001) != 0)
      {
        sub_21DBF8E0C();
        v78 = sub_21DBFC2CC();
        if (!v78)
        {
          goto LABEL_97;
        }

        v106 = v78;
        sub_21D0D8CF0(0, &qword_27CE58DA8, 0x277CC34B8);
        swift_dynamicCast();
        v79 = v107;
      }

      else
      {
        if (!*(v77 + 16))
        {

LABEL_99:
          v85 = 0xE000000000000000;
          if (v72)
          {
            goto LABEL_102;
          }

          goto LABEL_100;
        }

        sub_21DBF8E0C();
        v80 = sub_21D17E07C(v76);
        if ((v81 & 1) == 0)
        {
LABEL_97:

          goto LABEL_99;
        }

        v79 = *(*(v77 + 56) + 8 * v80);
      }

      if (!v79)
      {
        goto LABEL_99;
      }

      v82 = [v79 title];

      if (!v82)
      {
        goto LABEL_99;
      }

      v83 = sub_21DBFA16C();
      v85 = v84;

      if (v72 != v83)
      {
        goto LABEL_102;
      }

LABEL_100:
      if (v74 == v85)
      {
        v86 = 0;
        goto LABEL_103;
      }

LABEL_102:
      v86 = sub_21DBFC64C();
LABEL_103:
      a2 = v95;

      v87 = (v62 + v103);
      v88 = *v92;
      v11 = v101;
      (*v92)(v102, v101);
      v60 = v97;
      v88(v97, v11);
      if (v86)
      {
        a3 = v87;
        if (v62 < v96 || v87 >= v96)
        {
          swift_arrayInitWithTakeFrontToBack();
          v57 = v91;
        }

        else
        {
          v57 = v91;
          if (v62 != v96)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v59 = v99;
        v58 = v103;
        if (v99 <= v94)
        {
          goto LABEL_117;
        }

        goto LABEL_71;
      }

      v89 = v98;
      v57 = v98;
      a3 = v87;
      if (v62 < v99 || v87 >= v99)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (v62 != v99)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v59 = v57;
      v58 = v103;
      v61 = v96;
      if (v89 <= v94)
      {
        a2 = v96;
        goto LABEL_117;
      }
    }
  }

LABEL_121:
  __break(1u);
}

uint64_t sub_21D6604C4(char **a1, char *a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a1;
  v7 = *a1;

  v28 = v7;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_16:
    v28 = sub_21D82E300(v28);
  }

  v23 = v6;
  *v6 = v28;
  v8 = v28 + 16;
  v9 = *(v28 + 2);
  if (v9 < 2)
  {
LABEL_10:

    *v23 = v28;
    return 1;
  }

  else
  {
    v24 = (v28 + 16);
    while (1)
    {
      v10 = *a3;
      if (!*a3)
      {
        break;
      }

      v11 = &v28[16 * v9];
      v6 = *v11;
      v12 = &v8[16 * v9];
      v13 = *v12;
      v14 = *(v12 + 1);
      v15 = *(*(sub_21DBF6D7C() - 8) + 72);
      v16 = (v10 + v15 * v6);
      v17 = v10 + v15 * v13;
      v18 = (v10 + v15 * v14);

      sub_21D65F968(v16, v17, v18, a2, a4, v19);

      if (v5)
      {
        *v23 = v28;

        return 1;
      }

      if (v14 < v6)
      {
        __break(1u);
LABEL_14:
        __break(1u);
LABEL_15:
        __break(1u);
        goto LABEL_16;
      }

      v8 = v28 + 16;
      v20 = *v24;
      if (v9 - 2 >= *v24)
      {
        goto LABEL_14;
      }

      *v11 = v6;
      *(v11 + 1) = v14;
      v21 = v20 - v9;
      if (v20 < v9)
      {
        goto LABEL_15;
      }

      v9 = v20 - 1;
      memmove(v12, v12 + 16, 16 * v21);
      *v24 = v9;
      if (v9 <= 1)
      {
        goto LABEL_10;
      }
    }

    *v23 = v28;
    __break(1u);
  }

  return result;
}

void sub_21D660684(char **a1, __n128 a2, uint64_t a3, char **a4, uint64_t a5, void *a6)
{
  v178 = a5;
  v177 = a1;
  v8 = sub_21DBF6D7C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v180 = &v174 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v193 = &v174 - v12;
  MEMORY[0x28223BE20](v13);
  v202 = &v174 - v14;
  MEMORY[0x28223BE20](v15);
  v200 = &v174 - v16;
  MEMORY[0x28223BE20](v17);
  v191 = &v174 - v18;
  MEMORY[0x28223BE20](v19);
  v188 = &v174 - v20;
  MEMORY[0x28223BE20](v21);
  v176 = &v174 - v22;
  MEMORY[0x28223BE20](v23);
  v175 = &v174 - v24;
  v205 = MEMORY[0x277D84F90];
  v187 = a4;
  v25 = a4[1];
  if (v25 >= 1)
  {
    v201 = OBJC_IVAR____TtC15RemindersUICore34TTRShowSearchResultDataModelSource_itemsByID;
    v198 = v9 + 16;
    v199 = (v9 + 8);
    v196 = (v9 + 32);
    swift_retain_n();
    v26 = 0;
    v185 = MEMORY[0x277D84F90];
    v192 = a6;
    v186 = v9;
    v182 = v8;
    while (1)
    {
      v179 = v26;
      if (v26 + 1 >= v25)
      {
        v40 = v26 + 1;
        v63 = v178;
        goto LABEL_58;
      }

      v189 = v25;
      v27 = *v187;
      v28 = *(v9 + 72);
      v29 = &(*v187)[v28 * (v26 + 1)];
      v30 = *(v9 + 16);
      v31 = v175;
      v30(v175, v29, v8);
      v197 = v27;
      v32 = &v27[v28 * v26];
      v33 = v176;
      v184 = v30;
      v30(v176, v32, v8);
      v34 = v190;
      LODWORD(v195) = sub_21D65DB08(v31, v33, a6);
      v190 = v34;
      if (v34)
      {
        v173 = *v199;
        (*v199)(v33, v8);
        (v173)(v31, v8);
        goto LABEL_159;
      }

      v35 = *v199;
      (*v199)(v33, v8);
      v183 = v35;
      (v35)(v31, v8);
      swift_beginAccess();
      v36 = v26 + 2;
      v37 = &v197[v28 * v36];
      v194 = v28;
      while (1)
      {
        v40 = v189;
        if (v189 == v36)
        {
          break;
        }

        v41 = v184;
        v184(v188, v37, v8);
        v41(v191, v29, v8);
        v42 = sub_21DBF6D5C();
        v43 = v42;
        v44 = *(a6 + v201);
        if ((v44 & 0xC000000000000001) != 0)
        {
          sub_21DBF8E0C();
          v45 = sub_21DBFC2CC();
          if (!v45)
          {
            goto LABEL_20;
          }

          v203 = v45;
          sub_21D0D8CF0(0, &qword_27CE58DA8, 0x277CC34B8);
          swift_dynamicCast();
          v46 = v204;
        }

        else
        {
          if (!*(v44 + 16))
          {

            goto LABEL_22;
          }

          sub_21DBF8E0C();
          v47 = sub_21D17E07C(v43);
          if ((v48 & 1) == 0)
          {
LABEL_20:

            goto LABEL_22;
          }

          v46 = *(*(v44 + 56) + 8 * v47);
        }

        if (v46)
        {
          v49 = [v46 title];

          if (v49)
          {
            v197 = sub_21DBFA16C();
            v51 = v50;

            goto LABEL_23;
          }
        }

LABEL_22:
        v197 = 0;
        v51 = 0xE000000000000000;
LABEL_23:
        v52 = sub_21DBF6D5C();
        v53 = v52;
        v54 = *(a6 + v201);
        if ((v54 & 0xC000000000000001) != 0)
        {
          sub_21DBF8E0C();
          v55 = sub_21DBFC2CC();
          if (v55)
          {
            v203 = v55;
            sub_21D0D8CF0(0, &qword_27CE58DA8, 0x277CC34B8);
            swift_dynamicCast();
            v56 = v204;
LABEL_29:

            if (v56)
            {
              v59 = [v56 title];

              if (v59)
              {
                v60 = sub_21DBFA16C();
                v62 = v61;
              }

              else
              {
                v60 = 0;
                v62 = 0xE000000000000000;
              }

              a6 = v192;
            }

            else
            {
              v60 = 0;
              v62 = 0xE000000000000000;
            }

            v28 = v194;
            goto LABEL_39;
          }
        }

        else
        {
          if (!*(v54 + 16))
          {

            goto LABEL_35;
          }

          sub_21DBF8E0C();
          v57 = sub_21D17E07C(v53);
          if (v58)
          {
            v56 = *(*(v54 + 56) + 8 * v57);
            goto LABEL_29;
          }
        }

LABEL_35:
        v60 = 0;
        v62 = 0xE000000000000000;
LABEL_39:
        if (v197 == v60 && v51 == v62)
        {
          v38 = 0;
        }

        else
        {
          v38 = sub_21DBFC64C();
        }

        v39 = v183;
        (v183)(v191, v8);
        v39(v188, v8);
        ++v36;
        v37 += v28;
        v29 += v28;
        if ((v195 ^ v38))
        {
          v40 = v36 - 1;
          break;
        }
      }

      v63 = v178;
      v9 = v186;
      v26 = v179;
      if ((v195 & 1) == 0)
      {
        goto LABEL_58;
      }

      if (v40 < v179)
      {
        break;
      }

      if (v179 < v40)
      {
        v64 = v40;
        v65 = v28 * (v40 - 1);
        v66 = v40 * v28;
        v189 = v40;
        v67 = v179;
        v68 = v179 * v28;
        do
        {
          if (v67 != --v64)
          {
            v69 = *v187;
            if (!*v187)
            {
              goto LABEL_183;
            }

            v70 = *v196;
            (*v196)(v180, &v69[v68], v8);
            if (v68 < v65 || &v69[v68] >= &v69[v66])
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v68 != v65)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v70(&v69[v65], v180, v8);
            v63 = v178;
            v26 = v179;
          }

          ++v67;
          v65 -= v194;
          v66 -= v194;
          v68 += v194;
        }

        while (v67 < v64);
        a6 = v192;
        v9 = v186;
        v40 = v189;
      }

LABEL_58:
      v71 = v187[1];
      if (v40 >= v71)
      {
        goto LABEL_67;
      }

      if (__OFSUB__(v40, v26))
      {
        goto LABEL_177;
      }

      if (v40 - v26 >= v63)
      {
LABEL_67:
        v73 = v40;
        goto LABEL_68;
      }

      if (__OFADD__(v26, v63))
      {
        goto LABEL_178;
      }

      if (v26 + v63 >= v71)
      {
        v72 = v187[1];
      }

      else
      {
        v72 = v26 + v63;
      }

      if (v72 < v26)
      {
LABEL_179:
        __break(1u);
        break;
      }

      if (v40 == v72)
      {
        goto LABEL_67;
      }

      v195 = *v187;
      v137 = v40 - 1;
      v138 = (v26 - v40);
      v181 = v72;
      while (2)
      {
        swift_beginAccess();
        v140 = *(v9 + 72);
        v197 = *(v9 + 16);
        v184 = v137;
        v141 = &v195[v140 * v137];
        v194 = -v140;
        v189 = v40;
        v142 = &v195[v140 * v40];
        v183 = v138;
        while (2)
        {
          v143 = v197;
          (v197)(v200, v142, v8);
          (v143)(v202, v141, v8);
          v144 = sub_21DBF6D5C();
          v145 = v144;
          v146 = *(a6 + v201);
          if ((v146 & 0xC000000000000001) == 0)
          {
            if (!*(v146 + 16))
            {

              goto LABEL_132;
            }

            sub_21DBF8E0C();
            v149 = sub_21D17E07C(v145);
            if (v150)
            {
              v148 = *(*(v146 + 56) + 8 * v149);
              goto LABEL_127;
            }

LABEL_130:

            goto LABEL_132;
          }

          sub_21DBF8E0C();
          v147 = sub_21DBFC2CC();
          if (!v147)
          {
            goto LABEL_130;
          }

          v203 = v147;
          sub_21D0D8CF0(0, &qword_27CE58DA8, 0x277CC34B8);
          swift_dynamicCast();
          v148 = v204;
LABEL_127:

          if (v148)
          {
            v151 = [v148 title];

            if (v151)
            {
              v152 = sub_21DBFA16C();
              v154 = v153;

              goto LABEL_133;
            }
          }

LABEL_132:
          v152 = 0;
          v154 = 0xE000000000000000;
LABEL_133:
          v155 = sub_21DBF6D5C();
          v156 = v155;
          v157 = *(a6 + v201);
          if ((v157 & 0xC000000000000001) == 0)
          {
            if (*(v157 + 16))
            {
              sub_21DBF8E0C();
              v160 = sub_21D17E07C(v156);
              if (v161)
              {
                v159 = *(*(v157 + 56) + 8 * v160);
                goto LABEL_139;
              }

LABEL_142:
            }

            else
            {
            }

            v165 = 0xE000000000000000;
            if (v152)
            {
              goto LABEL_149;
            }

            break;
          }

          sub_21DBF8E0C();
          v158 = sub_21DBFC2CC();
          if (!v158)
          {
            goto LABEL_142;
          }

          v203 = v158;
          sub_21D0D8CF0(0, &qword_27CE58DA8, 0x277CC34B8);
          swift_dynamicCast();
          v159 = v204;
LABEL_139:

          if (v159 && (v162 = [v159 title], v159, v162))
          {
            v163 = sub_21DBFA16C();
            v165 = v164;

            v166 = v163;
          }

          else
          {
            v166 = 0;
            v165 = 0xE000000000000000;
          }

          a6 = v192;
          if (v152 != v166)
          {
LABEL_149:
            v167 = sub_21DBFC64C();

            v168 = *v199;
            (*v199)(v202, v8);
            (v168)(v200, v8);
            if ((v167 & 1) == 0)
            {
              goto LABEL_119;
            }

            if (!v195)
            {
              goto LABEL_181;
            }

            v169 = *v196;
            v170 = v193;
            (*v196)(v193, v142, v8);
            swift_arrayInitWithTakeFrontToBack();
            v169(v141, v170, v8);
            v141 += v194;
            v142 += v194;
            if (__CFADD__(v138++, 1))
            {
              goto LABEL_119;
            }

            continue;
          }

          break;
        }

        if (v154 != v165)
        {
          goto LABEL_149;
        }

        v139 = *v199;
        (*v199)(v202, v8);
        (v139)(v200, v8);
LABEL_119:
        v40 = v189 + 1;
        v137 = v184 + 1;
        v138 = v183 - 1;
        v73 = v181;
        v9 = v186;
        if (v189 + 1 != v181)
        {
          continue;
        }

        break;
      }

      v26 = v179;
LABEL_68:
      v74 = v185;
      if (v73 < v26)
      {
        goto LABEL_176;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v181 = v73;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v74 = sub_21D210B90(0, *(v74 + 2) + 1, 1, v74);
      }

      v77 = *(v74 + 2);
      v76 = *(v74 + 3);
      v78 = v77 + 1;
      if (v77 >= v76 >> 1)
      {
        v74 = sub_21D210B90((v76 > 1), v77 + 1, 1, v74);
      }

      *(v74 + 2) = v78;
      v79 = v74 + 32;
      v80 = &v74[16 * v77 + 32];
      v81 = v181;
      *v80 = v26;
      *(v80 + 1) = v81;
      v205 = v74;
      v197 = *v177;
      if (!v197)
      {
        goto LABEL_184;
      }

      v185 = v74;
      if (v77)
      {
        while (1)
        {
          v82 = v78 - 1;
          if (v78 >= 4)
          {
            break;
          }

          if (v78 == 3)
          {
            v83 = *(v74 + 4);
            v84 = *(v74 + 5);
            v93 = __OFSUB__(v84, v83);
            v85 = v84 - v83;
            v86 = v93;
LABEL_88:
            if (v86)
            {
              goto LABEL_167;
            }

            v99 = &v74[16 * v78];
            v101 = *v99;
            v100 = *(v99 + 1);
            v102 = __OFSUB__(v100, v101);
            v103 = v100 - v101;
            v104 = v102;
            if (v102)
            {
              goto LABEL_170;
            }

            v105 = &v79[16 * v82];
            v107 = *v105;
            v106 = *(v105 + 1);
            v93 = __OFSUB__(v106, v107);
            v108 = v106 - v107;
            if (v93)
            {
              goto LABEL_173;
            }

            if (__OFADD__(v103, v108))
            {
              goto LABEL_174;
            }

            if (v103 + v108 >= v85)
            {
              if (v85 < v108)
              {
                v82 = v78 - 2;
              }

              goto LABEL_109;
            }

            goto LABEL_102;
          }

          v109 = &v74[16 * v78];
          v111 = *v109;
          v110 = *(v109 + 1);
          v93 = __OFSUB__(v110, v111);
          v103 = v110 - v111;
          v104 = v93;
LABEL_102:
          if (v104)
          {
            goto LABEL_169;
          }

          v112 = &v79[16 * v82];
          v114 = *v112;
          v113 = *(v112 + 1);
          v93 = __OFSUB__(v113, v114);
          v115 = v113 - v114;
          if (v93)
          {
            goto LABEL_172;
          }

          if (v115 < v103)
          {
            goto LABEL_3;
          }

LABEL_109:
          if (v82 - 1 >= v78)
          {
            __break(1u);
LABEL_162:
            __break(1u);
LABEL_163:
            __break(1u);
LABEL_164:
            __break(1u);
LABEL_165:
            __break(1u);
LABEL_166:
            __break(1u);
LABEL_167:
            __break(1u);
LABEL_168:
            __break(1u);
LABEL_169:
            __break(1u);
LABEL_170:
            __break(1u);
LABEL_171:
            __break(1u);
LABEL_172:
            __break(1u);
LABEL_173:
            __break(1u);
LABEL_174:
            __break(1u);
LABEL_175:
            __break(1u);
LABEL_176:
            __break(1u);
LABEL_177:
            __break(1u);
LABEL_178:
            __break(1u);
            goto LABEL_179;
          }

          v120 = *v187;
          if (!*v187)
          {
            goto LABEL_182;
          }

          v121 = &v79[16 * v82 - 16];
          v122 = *v121;
          v123 = v79;
          v124 = v82;
          v125 = &v79[16 * v82];
          v126 = *(v125 + 1);
          v127 = *(v9 + 72);
          v128 = &v120[v127 * *v121];
          v129 = &v120[v127 * *v125];
          v130 = &v120[v127 * v126];
          v131 = v192;

          v132 = v128;
          v133 = v190;
          sub_21D65F968(v132, v129, v130, v197, v131, v134);

          v190 = v133;
          if (v133)
          {
            v205 = v185;
            goto LABEL_159;
          }

          v74 = v185;
          if (v126 < v122)
          {
            goto LABEL_162;
          }

          v135 = *(v185 + 2);
          if (v124 > v135)
          {
            goto LABEL_163;
          }

          *v121 = v122;
          *(v121 + 1) = v126;
          if (v124 >= v135)
          {
            goto LABEL_164;
          }

          v78 = v135 - 1;
          memmove(v125, v125 + 16, 16 * (v135 - 1 - v124));
          *(v74 + 2) = v135 - 1;
          v136 = v135 > 2;
          v9 = v186;
          v79 = v123;
          v8 = v182;
          if (!v136)
          {
LABEL_3:
            v205 = v74;
            goto LABEL_4;
          }
        }

        v87 = &v79[16 * v78];
        v88 = *(v87 - 8);
        v89 = *(v87 - 7);
        v93 = __OFSUB__(v89, v88);
        v90 = v89 - v88;
        if (v93)
        {
          goto LABEL_165;
        }

        v92 = *(v87 - 6);
        v91 = *(v87 - 5);
        v93 = __OFSUB__(v91, v92);
        v85 = v91 - v92;
        v86 = v93;
        if (v93)
        {
          goto LABEL_166;
        }

        v94 = &v74[16 * v78];
        v96 = *v94;
        v95 = *(v94 + 1);
        v93 = __OFSUB__(v95, v96);
        v97 = v95 - v96;
        if (v93)
        {
          goto LABEL_168;
        }

        v93 = __OFADD__(v85, v97);
        v98 = v85 + v97;
        if (v93)
        {
          goto LABEL_171;
        }

        if (v98 >= v90)
        {
          v116 = &v79[16 * v82];
          v118 = *v116;
          v117 = *(v116 + 1);
          v93 = __OFSUB__(v117, v118);
          v119 = v117 - v118;
          if (v93)
          {
            goto LABEL_175;
          }

          if (v85 < v119)
          {
            v82 = v78 - 2;
          }

          goto LABEL_109;
        }

        goto LABEL_88;
      }

LABEL_4:
      v25 = v187[1];
      v26 = v181;
      a6 = v192;
      if (v181 >= v25)
      {
        goto LABEL_157;
      }
    }

    __break(1u);
LABEL_181:

    __break(1u);
LABEL_182:

    __break(1u);
LABEL_183:

    __break(1u);
LABEL_184:

    __break(1u);
    goto LABEL_185;
  }

  swift_retain_n();
LABEL_157:
  v172 = *v177;
  if (!*v177)
  {
LABEL_185:

    __break(1u);
    return;
  }

  sub_21D6604C4(&v205, v172, v187, a6);

LABEL_159:
}

void sub_21D661718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, __n128 a6)
{
  v11 = sub_21DBF6D7C();
  v56 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v62 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v70 = &v54 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v54 - v16;
  v55 = a2;
  if (a3 != a2)
  {
    v67 = *a4;
    v69 = OBJC_IVAR____TtC15RemindersUICore34TTRShowSearchResultDataModelSource_itemsByID;
    v63 = (v56 + 8);
    v64 = v56 + 16;
    v60 = a5;
    v61 = (v56 + 32);
    v18 = a3 - 1;
    v19 = a1 - a3;
    v65 = &v54 - v16;
LABEL_6:
    swift_beginAccess();
    v21 = *(v56 + 72);
    v68 = *(v56 + 16);
    v58 = v18;
    v59 = a3;
    v22 = (v67 + v21 * v18);
    v66 = -v21;
    v23 = v67 + v21 * a3;
    v57 = v19;
    v24 = v19;
    while (1)
    {
      v25 = v68;
      v68(v17, v23, v11);
      v25(v70, v22, v11);
      v26 = sub_21DBF6D5C();
      v27 = v26;
      v28 = *(a5 + v69);
      if ((v28 & 0xC000000000000001) != 0)
      {
        sub_21DBF8E0C();
        v29 = sub_21DBFC2CC();
        if (!v29)
        {
          goto LABEL_16;
        }

        v71 = v29;
        sub_21D0D8CF0(0, &qword_27CE58DA8, 0x277CC34B8);
        swift_dynamicCast();
        v30 = v72;
      }

      else
      {
        if (!*(v28 + 16))
        {

          goto LABEL_18;
        }

        sub_21DBF8E0C();
        v31 = sub_21D17E07C(v27);
        if ((v32 & 1) == 0)
        {
LABEL_16:

          goto LABEL_18;
        }

        v30 = *(*(v28 + 56) + 8 * v31);
      }

      if (v30)
      {
        v33 = [v30 title];

        if (v33)
        {
          v34 = sub_21DBFA16C();
          v36 = v35;

          goto LABEL_19;
        }
      }

LABEL_18:
      v34 = 0;
      v36 = 0xE000000000000000;
LABEL_19:
      v37 = sub_21DBF6D5C();
      v38 = v37;
      v39 = *(a5 + v69);
      if ((v39 & 0xC000000000000001) != 0)
      {
        sub_21DBF8E0C();
        v40 = sub_21DBFC2CC();
        if (v40)
        {
          v71 = v40;
          sub_21D0D8CF0(0, &qword_27CE58DA8, 0x277CC34B8);
          swift_dynamicCast();
          v41 = v72;
LABEL_25:

          if (v41 && (v44 = [v41 title], v41, v44))
          {
            v45 = sub_21DBFA16C();
            v47 = v46;

            v48 = v45;
          }

          else
          {
            v48 = 0;
            v47 = 0xE000000000000000;
          }

          a5 = v60;
          if (v34 != v48)
          {
            goto LABEL_35;
          }

          goto LABEL_34;
        }

LABEL_28:

        goto LABEL_33;
      }

      if (*(v39 + 16))
      {
        sub_21DBF8E0C();
        v42 = sub_21D17E07C(v38);
        if (v43)
        {
          v41 = *(*(v39 + 56) + 8 * v42);
          goto LABEL_25;
        }

        goto LABEL_28;
      }

LABEL_33:
      v47 = 0xE000000000000000;
      if (v34)
      {
        goto LABEL_35;
      }

LABEL_34:
      if (v36 == v47)
      {

        v20 = *v63;
        (*v63)(v70, v11);
        v17 = v65;
        v20(v65, v11);
LABEL_5:
        a3 = v59 + 1;
        v18 = v58 + 1;
        v19 = v57 - 1;
        if (v59 + 1 == v55)
        {
          return;
        }

        goto LABEL_6;
      }

LABEL_35:
      v49 = sub_21DBFC64C();

      v50 = *v63;
      (*v63)(v70, v11);
      v17 = v65;
      v50(v65, v11);
      if ((v49 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v67)
      {
        __break(1u);
        return;
      }

      v51 = v62;
      v52 = *v61;
      (*v61)(v62, v23, v11);
      swift_arrayInitWithTakeFrontToBack();
      v52(v22, v51, v11);
      v22 += v66;
      v23 += v66;
      if (__CFADD__(v24++, 1))
      {
        goto LABEL_5;
      }
    }
  }
}

void sub_21D661C90(char **a1, void *a2)
{
  v4 = a1[1];
  swift_retain_n();
  v5 = sub_21DBFC59C();
  if (v5 < v4)
  {
    if (v4 >= -1)
    {
      v6 = v5;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_21DBF6D7C();
        v8 = sub_21DBFA69C();
        *(v8 + 16) = v7;
      }

      v10 = *(sub_21DBF6D7C() - 8);
      v12[0] = (v8 + ((*(v10 + 80) + 32) & ~*(v10 + 80)));
      v12[1] = v7;

      sub_21D660684(v12, v11, v13, a1, v6, a2);

      *(v8 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {

    sub_21D661718(0, v4, 1, a1, a2, v9);
  }
}

uint64_t sub_21D661E14(uint64_t *a1, void *a2, __n128 a3)
{
  v5 = *(sub_21DBF6D7C() - 8);
  v6 = *a1;
  swift_retain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = sub_21D82E468(v6);
  }

  v7 = v6[2];
  v9[0] = v6 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v9[1] = v7;

  sub_21D661C90(v9, a2);

  *a1 = v6;
}

unint64_t sub_21D661EFC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  sub_21D993FEC(&v43);
  v42 = v43;
  sub_21DBF8E0C();

  v7 = sub_21DA5E950();
  if (!v7)
  {
    goto LABEL_22;
  }

  v9 = v7;
  v10 = v8;
  v11 = *a5;
  result = sub_21D17E07C(v7);
  v14 = v11[2];
  v15 = (v13 & 1) == 0;
  v16 = __OFADD__(v14, v15);
  v17 = v14 + v15;
  if (v16)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v18 = v13;
  if (v11[3] < v17)
  {
    sub_21D21AB08(v17, a4 & 1);
    result = sub_21D17E07C(v9);
    if ((v18 & 1) == (v19 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
    result = sub_21DBFC70C();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v24 = result;
    sub_21D223488();
    result = v24;
    v20 = *a5;
    if (v18)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

LABEL_7:
  v20 = *a5;
  if (v18)
  {
LABEL_8:
    v21 = result;

    v22 = v20[7];
    v23 = *(v22 + 8 * v21);
    *(v22 + 8 * v21) = v10;

    goto LABEL_12;
  }

LABEL_10:
  v20[(result >> 6) + 8] |= 1 << result;
  *(v20[6] + 8 * result) = v9;
  *(v20[7] + 8 * result) = v10;
  v25 = v20[2];
  v16 = __OFADD__(v25, 1);
  v26 = v25 + 1;
  if (!v16)
  {
    v20[2] = v26;
LABEL_12:
    v27 = sub_21DA5E950();
    if (v27)
    {
      v9 = v27;
      v10 = v28;
      v18 = 1;
      do
      {
        v33 = *a5;
        result = sub_21D17E07C(v9);
        v35 = v33[2];
        v36 = (v34 & 1) == 0;
        v16 = __OFADD__(v35, v36);
        v37 = v35 + v36;
        if (v16)
        {
          goto LABEL_23;
        }

        a4 = v34;
        if (v33[3] < v37)
        {
          sub_21D21AB08(v37, 1);
          result = sub_21D17E07C(v9);
          if ((a4 & 1) != (v38 & 1))
          {
            goto LABEL_5;
          }
        }

        v39 = *a5;
        if (a4)
        {
          v29 = result;

          v30 = v39[7];
          v31 = *(v30 + 8 * v29);
          *(v30 + 8 * v29) = v10;
        }

        else
        {
          v39[(result >> 6) + 8] |= 1 << result;
          *(v39[6] + 8 * result) = v9;
          *(v39[7] + 8 * result) = v10;
          v40 = v39[2];
          v16 = __OFADD__(v40, 1);
          v41 = v40 + 1;
          if (v16)
          {
            goto LABEL_24;
          }

          v39[2] = v41;
        }

        v9 = sub_21DA5E950();
        v10 = v32;
      }

      while (v9);
    }

LABEL_22:
    sub_21D0CFAF8(v42);
  }

LABEL_24:
  __break(1u);
  return result;
}

void sub_21D662198(void *a1)
{
  if (qword_27CE56B50 != -1)
  {
    swift_once();
  }

  v2 = sub_21DBF84BC();
  __swift_project_value_buffer(v2, qword_27CE5F6B0);
  v3 = a1;

  oslog = sub_21DBF84AC();
  v4 = sub_21DBFAEBC();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136315394;
    swift_getErrorValue();
    v7 = sub_21DBFC75C();
    v9 = sub_21D0CDFB4(v7, v8, &v14);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2080;
    type metadata accessor for TTRShowSearchResultDataModelSource(0);

    v10 = sub_21DBFA1AC();
    v12 = sub_21D0CDFB4(v10, v11, &v14);

    *(v5 + 14) = v12;
    _os_log_impl(&dword_21D0C9000, oslog, v4, "TTRShowSearchResultDataModelSource did hit error {error: %s, dataModelSource: %s}", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D46520](v6, -1, -1);
    MEMORY[0x223D46520](v5, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_21D662680(uint64_t a1)
{
  result = sub_21DBF70DC();
  if (v2 <= 0x3F)
  {
    result = sub_21DBF71BC();
    if (v3 <= 0x3F)
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

uint64_t sub_21D6627BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C388, &unk_21DC1A890);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_21D66282C()
{
  result = qword_280D17808;
  if (!qword_280D17808)
  {
    v3 = sub_21DBFB0BC();
    result = swift_getWitnessTable(MEMORY[0x277D85238], v3, v0, v1);
    atomic_store(result, &qword_280D17808);
  }

  return result;
}

uint64_t IndexSet.nsRangeView.getter(__n128 a1)
{
  v1 = sub_21DBF5B4C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A150, &unk_21DC0E6E0);
  v5 = swift_allocBox();
  sub_21DBF5B6C();
  sub_21DBF5B3C();
  (*(v2 + 8))(v4, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A158, &unk_21DC289D0);
  v6 = swift_allocObject();
  *(v6 + 16) = sub_21D24B41C;
  *(v6 + 24) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A160, &unk_21DC0E6F0);
  result = swift_allocObject();
  *(result + 16) = v6;
  return result;
}

uint64_t IndexSet.init<A>(ranges:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v11 = &v14 - v10;
  sub_21DBF5B8C();
  (*(v5 + 16))(v7, a1, a2);
  sub_21DBFA40C();
  swift_getAssociatedConformanceWitness();
  sub_21DBFBAFC();
  if (v17)
  {
LABEL_5:
    (*(v5 + 8))(a1, a2);
    return (*(v9 + 8))(v11, AssociatedTypeWitness);
  }

  else
  {
    result = v15;
    v13 = v16;
    while (v13 + result >= result)
    {
      sub_21DBF5ADC();
      sub_21DBFBAFC();
      result = v15;
      v13 = v16;
      if (v17)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_21D662C60@<X0>(uint64_t a2@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A150, &unk_21DC0E6E0);
  v4 = swift_projectBox();
  swift_beginAccess();
  v5 = *(v3 + 36);
  sub_21DBF5B4C();
  sub_21D662D94(v6);
  sub_21DBFACAC();
  v7 = *(v4 + v5);
  v8 = v15[0];
  if (v7 == v15[0])
  {
    result = swift_endAccess();
    v10 = 0;
    v11 = 0;
LABEL_4:
    *a2 = v10;
    *(a2 + 8) = v11;
    *(a2 + 16) = v7 == v8;
    return result;
  }

  v12 = sub_21DBFAD3C();
  v10 = *v13;
  v14 = v13[1];
  v12(v15, 0);
  sub_21DBFACBC();
  result = swift_endAccess();
  v11 = v14 - v10;
  if (!__OFSUB__(v14, v10))
  {
    goto LABEL_4;
  }

  __break(1u);
  return result;
}

unint64_t sub_21D662D94(__n128 a1)
{
  result = qword_280D1B838;
  if (!qword_280D1B838)
  {
    v4 = sub_21DBF5B4C();
    result = swift_getWitnessTable(MEMORY[0x277CC9A20], v4, v1, v2);
    atomic_store(result, &qword_280D1B838);
  }

  return result;
}

uint64_t NSUserActivity.ttrDescription.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90, &unk_21DC09290);
  MEMORY[0x28223BE20](v2 - 8);
  v126 = &v116 - v3;
  v4 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  v124 = *(v4 - 8);
  v125 = v4;
  MEMORY[0x28223BE20](v4);
  v119 = &v116 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F780, &qword_21DC36500);
  MEMORY[0x28223BE20](v6 - 8);
  v123 = &v116 - v7;
  v8 = sub_21DBF6C1C();
  v120 = *(v8 - 8);
  v121 = v8;
  MEMORY[0x28223BE20](v8);
  v116 = &v116 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20, &qword_21DC0D4A0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v116 - v11;
  v13 = sub_21DBF54CC();
  v122 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v118 = &v116 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v117 = &v116 - v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63980, &unk_21DC09140);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_21DC08D10;
  strcpy(v129, "title: ");
  v129[1] = 0xE700000000000000;
  v18 = [v0 title];
  if (v18)
  {
    v19 = v18;
    v20 = sub_21DBFA16C();
    v22 = v21;
  }

  else
  {
    v22 = 0xE300000000000000;
    v20 = 7104878;
  }

  MEMORY[0x223D42AA0](v20, v22);

  v23 = v129[1];
  *(v17 + 32) = v129[0];
  *(v17 + 40) = v23;
  v129[0] = 0;
  v129[1] = 0xE000000000000000;
  sub_21DBFBEEC();

  v129[0] = 0xD000000000000016;
  v129[1] = 0x800000021DC65FE0;
  v24 = [v1 isEligibleForHandoff];
  v25 = v24 == 0;
  if (v24)
  {
    v26 = 1702195828;
  }

  else
  {
    v26 = 0x65736C6166;
  }

  if (v25)
  {
    v27 = 0xE500000000000000;
  }

  else
  {
    v27 = 0xE400000000000000;
  }

  MEMORY[0x223D42AA0](v26, v27);

  v28 = v129[1];
  *(v17 + 48) = v129[0];
  *(v17 + 56) = v28;
  v129[0] = 0;
  v129[1] = 0xE000000000000000;
  sub_21DBFBEEC();

  strcpy(v129, "userInfo: ");
  BYTE3(v129[1]) = 0;
  HIDWORD(v129[1]) = -369098752;
  v29 = [v1 userInfo];
  if (v29)
  {
    v30 = v29;
    v31 = sub_21DBF9E6C();

    v32 = *(v31 + 16);
  }

  else
  {
    v32 = 0;
  }

  v127 = v32;
  v33 = sub_21DBFC5BC();
  MEMORY[0x223D42AA0](v33);

  MEMORY[0x223D42AA0](0x29732879656B20, 0xE700000000000000);
  v34 = v129[1];
  *(v17 + 64) = v129[0];
  *(v17 + 72) = v34;
  v35 = [v1 activityType];
  v36 = sub_21DBFA16C();
  v38 = v37;

  v39._countAndFlagsBits = v36;
  v39._object = v38;
  TTRUserActivityType.init(activityType:)(v39);
  v40 = v129[0];
  if (LOBYTE(v129[0]) == 2)
  {
    v129[0] = 0;
    v129[1] = 0xE000000000000000;
    sub_21DBFBEEC();

    strcpy(v129, "activityType: ");
    HIBYTE(v129[1]) = -18;
    v41 = [v1 activityType];
    v42 = sub_21DBFA16C();
    v44 = v43;

    MEMORY[0x223D42AA0](v42, v44);
  }

  else
  {
    v129[0] = 0;
    v129[1] = 0xE000000000000000;
    sub_21DBFBEEC();

    v129[0] = 0xD000000000000015;
    v129[1] = 0x800000021DC66040;
    if (v40)
    {
      v45 = 1953720684;
    }

    else
    {
      v45 = 0xD000000000000016;
    }

    if (v40)
    {
      v46 = 0xE400000000000000;
    }

    else
    {
      v46 = 0x800000021DC66060;
    }

    MEMORY[0x223D42AA0](v45, v46);
  }

  v47 = v129[0];
  v48 = v129[1];
  v50 = *(v17 + 16);
  v49 = *(v17 + 24);
  if (v50 >= v49 >> 1)
  {
    v17 = sub_21D210A84((v49 > 1), v50 + 1, 1, v17);
  }

  *(v17 + 16) = v50 + 1;
  v51 = v17 + 16 * v50;
  *(v51 + 32) = v47;
  *(v51 + 40) = v48;
  v52 = sub_21D6657D4();
  if (v52)
  {
    v53 = v52;
    strcpy(v129, "objectID: ");
    BYTE3(v129[1]) = 0;
    HIDWORD(v129[1]) = -369098752;
    v54 = [v52 description];
    v55 = sub_21DBFA16C();
    v57 = v56;

    MEMORY[0x223D42AA0](v55, v57);

    v58 = v129[0];
    v59 = v129[1];
    v61 = *(v17 + 16);
    v60 = *(v17 + 24);
    if (v61 >= v60 >> 1)
    {
      v17 = sub_21D210A84((v60 > 1), v61 + 1, 1, v17);
    }

    *(v17 + 16) = v61 + 1;
    v62 = v17 + 16 * v61;
    *(v62 + 32) = v58;
    *(v62 + 40) = v59;
  }

  sub_21D668E7C(2u, v12);
  v63 = v122;
  if ((v122[6])(v12, 1, v13) == 1)
  {
    sub_21D0CF7E0(v12, &qword_27CE5EA20, &qword_21DC0D4A0);
  }

  else
  {
    v64 = v117;
    v63[4](v117, v12, v13);
    v65 = v118;
    v63[2](v118, v64, v13);
    TTRCrossDeviceIdentifier.init(url:)(v65, v129);
    (v63[1])(v64, v13);
    v66 = v134;
    if (v134 != 255)
    {
      v67 = v129[0];
      v68 = v129[1];
      v70 = v130;
      v69 = v131;
      v72 = v132;
      v71 = v133;
      v129[0] = 0;
      v129[1] = 0xE000000000000000;
      sub_21DBFBEEC();

      v127 = 0x76654473736F7263;
      v128 = 0xEF203A4449656369;
      v122 = v67;
      v129[0] = v67;
      v129[1] = v68;
      v117 = v71;
      v118 = v68;
      v130 = v70;
      v131 = v69;
      v132 = v72;
      v133 = v71;
      v134 = v66 & 1;
      v73 = TTRCrossDeviceIdentifier.description.getter();
      MEMORY[0x223D42AA0](v73);

      v74 = v127;
      v75 = v128;
      v77 = *(v17 + 16);
      v76 = *(v17 + 24);
      if (v77 >= v76 >> 1)
      {
        v17 = sub_21D210A84((v76 > 1), v77 + 1, 1, v17);
      }

      sub_21D66A604(v122, v118, v70, v69, v72, v117, v66);
      *(v17 + 16) = v77 + 1;
      v78 = v17 + 16 * v77;
      *(v78 + 32) = v74;
      *(v78 + 40) = v75;
    }
  }

  v79 = sub_21D6690E4(3u);
  v81 = v126;
  v82 = v123;
  if (v80)
  {
    sub_21D6644D0(v79, v80, v129);
    v83 = v129[0];
    if (LOBYTE(v129[0]) != 7)
    {
      v129[0] = 0;
      v129[1] = 0xE000000000000000;
      sub_21DBFBEEC();
      MEMORY[0x223D42AA0](0xD000000000000019, 0x800000021DC66020);
      LOBYTE(v127) = v83;
      sub_21DBFC14C();
      v84 = v129[0];
      v85 = v129[1];
      v87 = *(v17 + 16);
      v86 = *(v17 + 24);
      if (v87 >= v86 >> 1)
      {
        v17 = sub_21D210A84((v86 > 1), v87 + 1, 1, v17);
      }

      *(v17 + 16) = v87 + 1;
      v88 = v17 + 16 * v87;
      *(v88 + 32) = v84;
      *(v88 + 40) = v85;
    }
  }

  v89 = sub_21D6690E4(4u);
  if (v90)
  {
    strcpy(v129, "searchTerm: ");
    BYTE5(v129[1]) = 0;
    HIWORD(v129[1]) = -5120;
    MEMORY[0x223D42AA0](v89);

    v91 = v129[0];
    v92 = v129[1];
    v94 = *(v17 + 16);
    v93 = *(v17 + 24);
    if (v94 >= v93 >> 1)
    {
      v17 = sub_21D210A84((v93 > 1), v94 + 1, 1, v17);
    }

    *(v17 + 16) = v94 + 1;
    v95 = v17 + 16 * v94;
    *(v95 + 32) = v91;
    *(v95 + 40) = v92;
  }

  sub_21D6690E4(5u);
  if (v96)
  {
    sub_21DBF6B9C();
    v98 = v120;
    v97 = v121;
    (*(v120 + 56))(v82, 0, 1, v121);
    (*(v98 + 32))(v116, v82, v97);
    v129[0] = 0;
    v129[1] = 0xE000000000000000;
    sub_21DBFBEEC();

    v129[0] = 0x4C67617468736168;
    v129[1] = 0xEF203A736C656261;
    sub_21D679D54(&qword_27CE5F788, MEMORY[0x277D453A0], MEMORY[0x277D453B8]);
    v99 = sub_21DBFC5BC();
    MEMORY[0x223D42AA0](v99);

    v100 = v129[0];
    v101 = v129[1];
    v103 = *(v17 + 16);
    v102 = *(v17 + 24);
    if (v103 >= v102 >> 1)
    {
      v17 = sub_21D210A84((v102 > 1), v103 + 1, 1, v17);
    }

    (*(v120 + 8))(v116, v121);
    *(v17 + 16) = v103 + 1;
    v104 = v17 + 16 * v103;
    *(v104 + 32) = v100;
    *(v104 + 40) = v101;
  }

  sub_21D665994(v81);
  if ((*(v124 + 48))(v81, 1, v125) == 1)
  {
    sub_21D0CF7E0(v81, &qword_27CE5FB90, &unk_21DC09290);
  }

  else
  {
    v105 = v119;
    sub_21D66A70C(v81, v119, type metadata accessor for TTRRemindersListViewModel.ItemID);
    v129[0] = 0;
    v129[1] = 0xE000000000000000;
    sub_21DBFBEEC();

    v129[0] = 0xD000000000000015;
    v129[1] = 0x800000021DC66000;
    v106 = TTRRemindersListViewModel.ItemID.description.getter();
    MEMORY[0x223D42AA0](v106);

    v107 = v129[0];
    v108 = v129[1];
    v110 = *(v17 + 16);
    v109 = *(v17 + 24);
    if (v110 >= v109 >> 1)
    {
      v17 = sub_21D210A84((v109 > 1), v110 + 1, 1, v17);
    }

    sub_21D66A63C(v105, type metadata accessor for TTRRemindersListViewModel.ItemID);
    *(v17 + 16) = v110 + 1;
    v111 = v17 + 16 * v110;
    *(v111 + 32) = v107;
    *(v111 + 40) = v108;
  }

  v129[0] = 123;
  v129[1] = 0xE100000000000000;
  v127 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61630, &qword_21DC0B3A0);
  sub_21D0D0F1C(&qword_280D178D0, qword_27CE61630, &qword_21DC0B3A0, MEMORY[0x277D83958]);
  v112 = sub_21DBFA07C();
  v114 = v113;

  MEMORY[0x223D42AA0](v112, v114);

  MEMORY[0x223D42AA0](125, 0xE100000000000000);
  return v129[0];
}

uint64_t sub_21D663B4C()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE5F768);
  v1 = __swift_project_value_buffer(v0, qword_27CE5F768);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

RemindersUICore::TTRUserActivityType_optional __swiftcall TTRUserActivityType.init(activityType:)(Swift::String activityType)
{
  object = activityType._object;
  countAndFlagsBits = activityType._countAndFlagsBits;
  v4 = v1;
  v5 = byte_282EA7290;
  if (byte_282EA7290)
  {
    sub_21DBFBEEC();
    if (qword_280D19F80 != -1)
    {
      swift_once();
    }

    v7 = qword_280D19F88;
    v6 = *algn_280D19F90;
    sub_21DBF8E0C();

    v21 = v7;
    v23 = v6;
    v8 = 0x746976697463612ELL;
    v9 = 0xEE007473696C2E79;
  }

  else
  {
    sub_21DBFBEEC();
    if (qword_280D19F80 != -1)
    {
      swift_once();
    }

    v11 = qword_280D19F88;
    v10 = *algn_280D19F90;
    sub_21DBF8E0C();

    v21 = v11;
    v23 = v10;
    v9 = 0x800000021DC66080;
    v8 = 0xD000000000000020;
  }

  MEMORY[0x223D42AA0](v8, v9);
  if (v21 == countAndFlagsBits && v23 == object)
  {
    goto LABEL_10;
  }

  v12 = sub_21DBFC64C();

  if (v12)
  {
    goto LABEL_12;
  }

  v5 = byte_282EA7291;
  if (byte_282EA7291)
  {
    sub_21DBFBEEC();
    if (qword_280D19F80 != -1)
    {
      swift_once();
    }

    v15 = qword_280D19F88;
    v14 = *algn_280D19F90;
    sub_21DBF8E0C();

    v22 = v15;
    v24 = v14;
    v16 = 0x746976697463612ELL;
    v17 = 0xEE007473696C2E79;
  }

  else
  {
    sub_21DBFBEEC();
    if (qword_280D19F80 != -1)
    {
      swift_once();
    }

    v19 = qword_280D19F88;
    v18 = *algn_280D19F90;
    sub_21DBF8E0C();

    v22 = v19;
    v24 = v18;
    v17 = 0x800000021DC66080;
    v16 = 0xD000000000000020;
  }

  MEMORY[0x223D42AA0](v16, v17);
  if (v22 == countAndFlagsBits && v24 == object)
  {
LABEL_10:
  }

  else
  {
    v20 = sub_21DBFC64C();

    if ((v20 & 1) == 0)
    {

      v5 = 2;
      goto LABEL_13;
    }
  }

LABEL_12:

LABEL_13:
  *v4 = v5;
  return result;
}

uint64_t TTRUserActivityType.description.getter()
{
  if (*v0)
  {
    return 1953720684;
  }

  else
  {
    return 0xD000000000000016;
  }
}

uint64_t TTRUserActivityType.hashValue.getter()
{
  v1 = *v0;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  return sub_21DBFC82C();
}

uint64_t sub_21D664014()
{
  if (*v0)
  {
    return 1953720684;
  }

  else
  {
    return 0xD000000000000016;
  }
}

uint64_t sub_21D66404C()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    if (*v0)
    {
      if (v1 == 1)
      {
        if (qword_280D1BAA8 == -1)
        {
          return sub_21DBF516C();
        }
      }

      else if (qword_280D1BAA8 == -1)
      {
        return sub_21DBF516C();
      }
    }

    else if (qword_280D1BAA8 == -1)
    {
      return sub_21DBF516C();
    }

    goto LABEL_21;
  }

  if (*v0 <= 4u)
  {
    if (v1 == 3)
    {
      if (qword_280D1BAA8 == -1)
      {
        return sub_21DBF516C();
      }
    }

    else if (qword_280D1BAA8 == -1)
    {
      return sub_21DBF516C();
    }

    goto LABEL_21;
  }

  if (v1 == 5)
  {
    if (qword_280D1BAA8 == -1)
    {
      return sub_21DBF516C();
    }

    goto LABEL_21;
  }

  if (qword_280D1BAA8 != -1)
  {
LABEL_21:
    swift_once();
  }

  return sub_21DBF516C();
}

void sub_21D6644D0(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7961646F74 && a2 == 0xE500000000000000;
  if (v6 || (sub_21DBFC64C() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x656C756465686373 && a2 == 0xE900000000000064 || (sub_21DBFC64C() & 1) != 0)
  {

    v7 = 1;
  }

  else if (a1 == 0x6E696D65526C6C61 && a2 == 0xEC00000073726564 || (sub_21DBFC64C() & 1) != 0)
  {

    v7 = 2;
  }

  else if (a1 == 0x64656767616C66 && a2 == 0xE700000000000000 || (sub_21DBFC64C() & 1) != 0)
  {

    v7 = 3;
  }

  else if (a1 == 0x64656E6769737361 && a2 == 0xE800000000000000 || (sub_21DBFC64C() & 1) != 0)
  {

    v7 = 4;
  }

  else if (a1 == 0x6E756F4669726973 && a2 == 0xEF737070416E4964 || (sub_21DBFC64C() & 1) != 0)
  {

    v7 = 5;
  }

  else if (a1 == 0x6574656C706D6F63 && a2 == 0xE900000000000064)
  {

    v7 = 6;
  }

  else
  {
    v8 = sub_21DBFC64C();

    if (v8)
    {
      v7 = 6;
    }

    else
    {
      v7 = 7;
    }
  }

  *a3 = v7;
}

uint64_t sub_21D664738(void *a1)
{
  sub_21DBFBEEC();

  if (qword_280D19F80 != -1)
  {
    swift_once();
  }

  v9 = qword_280D19F88;
  v10 = *algn_280D19F90;
  sub_21DBF8E0C();
  MEMORY[0x223D42AA0](0xD000000000000020, 0x800000021DC66080);
  v2 = [a1 activityType];
  v3 = sub_21DBFA16C();
  v5 = v4;

  if (v9 == v3 && v10 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_21DBFC64C();
  }

  return v7 & 1;
}

uint64_t sub_21D664864(void *a1)
{
  sub_21DBFBEEC();

  if (qword_280D19F80 != -1)
  {
    swift_once();
  }

  v9 = qword_280D19F88;
  v10 = *algn_280D19F90;
  sub_21DBF8E0C();
  MEMORY[0x223D42AA0](0x746976697463612ELL, 0xEE007473696C2E79);
  v2 = [a1 activityType];
  v3 = sub_21DBFA16C();
  v5 = v4;

  if (v9 == v3 && v10 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_21DBFC64C();
  }

  return v7 & 1;
}

uint64_t TTRUserActivityWindowSceneRestorationPayload.State.firstVisibleItemID.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for TTRUserActivityWindowSceneRestorationPayload.State(0);
  MEMORY[0x28223BE20](v4);
  v6 = (&v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90, &unk_21DC09290);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  sub_21D66A774(v2, v6, v8, type metadata accessor for TTRUserActivityWindowSceneRestorationPayload.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 4)
    {
      v14 = sub_21DBF6C1C();
      (*(*(v14 - 8) + 8))(v6, v14);
    }

    else
    {
      sub_21D66A63C(v6, type metadata accessor for TTRUserActivityWindowSceneRestorationPayload.State);
    }

    v15 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
    return (*(*(v15 - 8) + 56))(a1, 1, 1, v15);
  }

  else
  {
    if (EnumCaseMultiPayload > 1)
    {
      v12 = &qword_27CE5F790;
      v13 = &qword_21DC210D8;
    }

    else
    {

      v12 = &qword_27CE5F798;
      v13 = &unk_21DC210E0;
    }

    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(v12, v13);
    sub_21D66A69C(v6 + *(v17 + 48), v10);
    return sub_21D66A69C(v10, a1);
  }
}

uint64_t TTRUserActivityWindowSceneRestorationPayload.navigationSpecifier.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for TTRUserActivityWindowSceneRestorationPayload.State(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D66A774(v2, v7, v5, type metadata accessor for TTRUserActivityWindowSceneRestorationPayload.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v26 = *(v7 + 1);
      *a1 = *v7;
      *(a1 + 1) = v26;
      v27 = *MEMORY[0x277D450F0];
      v28 = sub_21DBF663C();
      (*(*(v28 - 8) + 104))(a1, v27, v28);
      v18 = MEMORY[0x277D45210];
    }

    else if (EnumCaseMultiPayload == 4)
    {
      v15 = sub_21DBF6C1C();
      (*(*(v15 - 8) + 32))(a1, v7, v15);
      v16 = *MEMORY[0x277D45100];
      v17 = sub_21DBF664C();
      (*(*(v17 - 8) + 104))(a1, v16, v17);
      v18 = MEMORY[0x277D45218];
    }

    else
    {
      v34 = *v7;
      v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62680, &unk_21DC1D040) + 48);
      *a1 = v34;
      v36 = *MEMORY[0x277D45180];
      v37 = sub_21DBF66BC();
      (*(*(v37 - 8) + 104))(&a1[v35], v36, v37);
      v38 = *MEMORY[0x277D45168];
      v39 = sub_21DBF66DC();
      (*(*(v39 - 8) + 104))(&a1[v35], v38, v39);
      v18 = MEMORY[0x277D45248];
    }

    v40 = *v18;
    v41 = sub_21DBF66FC();
    return (*(*(v41 - 8) + 104))(a1, v40, v41);
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      v19 = *v7;
      v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F798, &unk_21DC210E0) + 48);
      v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE650D0, &qword_21DC210F0) + 48);
      *a1 = v19;
      v21 = *MEMORY[0x277D45140];
      v22 = sub_21DBF668C();
      (*(*(v22 - 8) + 104))(&a1[v20], v21, v22);
      v14 = MEMORY[0x277D451F8];
      goto LABEL_9;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v9 = *v7;
      v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F798, &unk_21DC210E0) + 48);
      v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE650D0, &qword_21DC210F0) + 48);
      *a1 = v9;
      v12 = *MEMORY[0x277D45140];
      v13 = sub_21DBF668C();
      (*(*(v13 - 8) + 104))(&a1[v11], v12, v13);
      v14 = MEMORY[0x277D451D8];
LABEL_9:
      v23 = *v14;
      v24 = sub_21DBF66FC();
      (*(*(v24 - 8) + 104))(a1, v23, v24);
      return sub_21D0CF7E0(&v7[v10], &qword_27CE5FB90, &unk_21DC09290);
    }

    v29 = *v7;
    v30 = *MEMORY[0x277D45128];
    v31 = sub_21DBF667C();
    (*(*(v31 - 8) + 104))(a1, v30, v31);
    v32 = sub_21DBF66FC();
    (*(*(v32 - 8) + 104))(a1, **(&unk_27832E470 + v29), v32);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F790, &qword_21DC210D8);
    return sub_21D0CF7E0(&v7[*(v33 + 48)], &qword_27CE5FB90, &unk_21DC09290);
  }
}

uint64_t sub_21D6650FC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21DBF6C1C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90, &unk_21DC09290);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v56 - v9;
  v11 = type metadata accessor for TTRUserActivityWindowSceneRestorationPayload.State(0);
  MEMORY[0x28223BE20](v11);
  v13 = (&v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  if ((sub_21D664738(a1) & 1) == 0)
  {
LABEL_19:

    goto LABEL_20;
  }

  v14 = sub_21D6657D4();
  if (v14)
  {
    v15 = v14;
    v57 = a2;
    v16 = [v14 entityName];
    v17 = sub_21DBFA16C();
    v19 = v18;

    v20 = [objc_opt_self() cdEntityName];
    v21 = sub_21DBFA16C();
    v23 = v22;

    if (v17 == v21 && v19 == v23)
    {
      goto LABEL_5;
    }

    v31 = sub_21DBFC64C();

    a2 = v57;
    if (v31)
    {
      goto LABEL_11;
    }

    v34 = [v15 entityName];
    v35 = sub_21DBFA16C();
    v37 = v36;

    v38 = [objc_opt_self() cdEntityName];
    v39 = sub_21DBFA16C();
    v41 = v40;

    if (v35 == v39 && v37 == v41)
    {
LABEL_5:

      a2 = v57;
LABEL_11:
      sub_21D665994(v10);

      v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F798, &unk_21DC210E0) + 48);
      *v13 = v15;
      sub_21D66A69C(v10, v13 + v32);
      goto LABEL_12;
    }

    v46 = sub_21DBFC64C();

    a2 = v57;
    if (v46)
    {
      goto LABEL_11;
    }

    v47 = [v15 entityName];
    v48 = sub_21DBFA16C();
    v50 = v49;

    v51 = [objc_opt_self() cdEntityName];
    v52 = sub_21DBFA16C();
    v54 = v53;

    if (v48 == v52 && v50 == v54)
    {

LABEL_27:
      *v13 = v15;
      goto LABEL_12;
    }

    v55 = sub_21DBFC64C();

    if (v55)
    {
      goto LABEL_27;
    }

LABEL_20:
    v33 = 1;
    goto LABEL_21;
  }

  v24 = sub_21D6690E4(3u);
  if (v25)
  {
    sub_21D6644D0(v24, v25, &v58);
    v26 = v58;
    if (v58 != 7)
    {
      sub_21D665994(v10);

      v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F790, &qword_21DC210D8) + 48);
      *v13 = v26;
      sub_21D66A69C(v10, v13 + v42);
      goto LABEL_12;
    }
  }

  v27 = sub_21D6690E4(4u);
  if (!v28)
  {
    sub_21D6690E4(5u);
    if (v43)
    {
      sub_21DBF6B9C();

      (*(v5 + 32))(v13, v7, v4);
      goto LABEL_12;
    }

    goto LABEL_19;
  }

  v29 = v27;
  v30 = v28;

  *v13 = v29;
  v13[1] = v30;
LABEL_12:
  swift_storeEnumTagMultiPayload();
  sub_21D66A70C(v13, a2, type metadata accessor for TTRUserActivityWindowSceneRestorationPayload.State);
  v33 = 0;
LABEL_21:
  v44 = type metadata accessor for TTRUserActivityWindowSceneRestorationPayload(0);
  return (*(*(v44 - 8) + 56))(a2, v33, 1, v44);
}

id sub_21D6657D4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20, &qword_21DC0D4A0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v10 - v1;
  v3 = sub_21DBF54CC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D668E7C(0, v2);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_21D0CF7E0(v2, &qword_27CE5EA20, &qword_21DC0D4A0);
  }

  else
  {
    (*(v4 + 32))(v6, v2, v3);
    v7 = sub_21DBF53FC();
    v8 = [objc_opt_self() objectIDWithURL_];

    (*(v4 + 8))(v6, v3);
    result = v8;
    if (v8)
    {
      return result;
    }
  }

  return 0;
}

uint64_t sub_21D665994@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  v11 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5.n128_f64[0] = sub_21D669314(6u, &v12);
  v6 = *(&v12 + 1);
  if (*(&v12 + 1) >> 60 == 15)
  {
    v7 = *(v11 + 56);

    return v7(a1, 1, 1, v2, v5);
  }

  else
  {
    v9 = v12;
    sub_21DBF521C();
    swift_allocObject();
    sub_21D1BAF70(v9, v6);
    sub_21DBF520C();
    sub_21D679D54(&qword_280D14270, type metadata accessor for TTRRemindersListViewModel.ItemID, protocol conformance descriptor for TTRRemindersListViewModel.ItemID);
    sub_21DBF51EC();
    sub_21D1BAF38(v9, v6);

    sub_21D1BAF38(v9, v6);
    sub_21D66A70C(v4, a1, type metadata accessor for TTRRemindersListViewModel.ItemID);
    return (*(v11 + 56))(a1, 0, 1, v2);
  }
}

Swift::Void __swiftcall TTRUserActivityWindowSceneRestorationPayload.update(_:)(NSUserActivity a1)
{
  v41[0] = sub_21DBF6C1C();
  v3 = *(v41[0] - 8);
  MEMORY[0x28223BE20](v41[0]);
  v5 = v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20, &qword_21DC0D4A0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v41 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90, &unk_21DC09290);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v41 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = v41 - v16;
  v18 = type metadata accessor for TTRUserActivityWindowSceneRestorationPayload.State(0);
  MEMORY[0x28223BE20](v18);
  v20 = (v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v41[1] = a1.super.isa;
  if (sub_21D664738(a1.super.isa))
  {
    sub_21D66A774(v1, v20, v21, type metadata accessor for TTRUserActivityWindowSceneRestorationPayload.State);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      if (EnumCaseMultiPayload == 3)
      {
        sub_21D66A0E4(*v20, v20[1], 4u);

        return;
      }

      if (EnumCaseMultiPayload == 4)
      {
        v23 = v41[0];
        (*(v3 + 32))(v5, v20, v41[0]);
        v24 = sub_21DBF6BAC();
        sub_21D66A0E4(v24, v40, 5u);

        (*(v3 + 8))(v5, v23);
        return;
      }

      v37 = *v20;
      v38 = [v37 urlRepresentation];
      sub_21DBF546C();

      v39 = sub_21DBF54CC();
      (*(*(v39 - 8) + 56))(v8, 0, 1, v39);
      sub_21D669548(v8, 0);

      v31 = &qword_27CE5EA20;
      v32 = &qword_21DC0D4A0;
      v30 = v8;
      goto LABEL_25;
    }

    if (EnumCaseMultiPayload <= 1)
    {
      v25 = *v20;
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F798, &unk_21DC210E0);
      sub_21D66A69C(v20 + *(v26 + 48), v17);
      v27 = v25;
      v28 = [v27 urlRepresentation];
      sub_21DBF546C();

      v29 = sub_21DBF54CC();
      (*(*(v29 - 8) + 56))(v8, 0, 1, v29);
      sub_21D669548(v8, 0);

      sub_21D0CF7E0(v8, &qword_27CE5EA20, &qword_21DC0D4A0);
      sub_21D0D3954(v17, v14, &qword_27CE5FB90, &unk_21DC09290);
      sub_21D6664F4(v14);

      v30 = v17;
      v31 = &qword_27CE5FB90;
      v32 = &unk_21DC09290;
LABEL_25:
      sub_21D0CF7E0(v30, v31, v32);
      return;
    }

    v33 = *v20;
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F790, &qword_21DC210D8);
    sub_21D66A69C(v20 + *(v34 + 48), v11);
    if (v33 <= 2)
    {
      if (!v33)
      {
        v35 = 0xE500000000000000;
        v36 = 0x7961646F74;
        goto LABEL_24;
      }

      if (v33 != 1)
      {
        v35 = 0xEC00000073726564;
        v36 = 0x6E696D65526C6C61;
        goto LABEL_24;
      }

      v36 = 0x656C756465686373;
    }

    else
    {
      if (v33 <= 4)
      {
        if (v33 == 3)
        {
          v35 = 0xE700000000000000;
          v36 = 0x64656767616C66;
        }

        else
        {
          v35 = 0xE800000000000000;
          v36 = 0x64656E6769737361;
        }

        goto LABEL_24;
      }

      if (v33 == 5)
      {
        v35 = 0xEF737070416E4964;
        v36 = 0x6E756F4669726973;
LABEL_24:
        sub_21D66A0E4(v36, v35, 3u);

        sub_21D0D3954(v11, v17, &qword_27CE5FB90, &unk_21DC09290);
        sub_21D6664F4(v17);
        v30 = v11;
        v31 = &qword_27CE5FB90;
        v32 = &unk_21DC09290;
        goto LABEL_25;
      }

      v36 = 0x6574656C706D6F63;
    }

    v35 = 0xE900000000000064;
    goto LABEL_24;
  }
}

uint64_t sub_21D6664F4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90, &unk_21DC09290);
  MEMORY[0x28223BE20](v2);
  MEMORY[0x28223BE20](v3);
  v5 = v11 - v4;
  sub_21D0D3954(a1, v11 - v4, &qword_27CE5FB90, &unk_21DC09290);
  v6 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  if ((*(*(v6 - 8) + 48))(v5, 1, v6) == 1)
  {
    sub_21D0CF7E0(v5, &qword_27CE5FB90, &unk_21DC09290);
    v7 = 0;
    v8 = 0xF000000000000000;
  }

  else
  {
    sub_21DBF525C();
    swift_allocObject();
    sub_21DBF524C();
    sub_21D679D54(&qword_280D14278, type metadata accessor for TTRRemindersListViewModel.ItemID, protocol conformance descriptor for TTRRemindersListViewModel.ItemID);
    v7 = sub_21DBF522C();
    v8 = v9;

    sub_21D66A63C(v5, type metadata accessor for TTRRemindersListViewModel.ItemID);
  }

  sub_21D669BB4(v7, v8, 6u);
  sub_21D1BAF38(v7, v8);
  return sub_21D0CF7E0(a1, &qword_27CE5FB90, &unk_21DC09290);
}

uint64_t TTRUserActivityListPayload.navigationSpecifier.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for TTRUserActivityListPayload.State(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = (&v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21D66A774(v2, v7, v5, type metadata accessor for TTRUserActivityListPayload.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v13 = *v7;
    if (EnumCaseMultiPayload)
    {
      v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE650D0, &qword_21DC210F0) + 48);
      v28 = [v13 objectID];

      *a1 = v28;
      v29 = *MEMORY[0x277D45140];
      v30 = sub_21DBF668C();
      (*(*(v30 - 8) + 104))(&a1[v27], v29, v30);
      v12 = MEMORY[0x277D451D8];
    }

    else
    {
      v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE650D0, &qword_21DC210F0) + 48);
      v15 = [v13 objectID];

      *a1 = v15;
      v16 = *MEMORY[0x277D45140];
      v17 = sub_21DBF668C();
      (*(*(v17 - 8) + 104))(&a1[v14], v16, v17);
      v12 = MEMORY[0x277D451F8];
    }

    goto LABEL_13;
  }

  if (EnumCaseMultiPayload != 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v9 = v7[1];
      *a1 = *v7;
      *(a1 + 1) = v9;
      v10 = *MEMORY[0x277D450F0];
      v11 = sub_21DBF663C();
      (*(*(v11 - 8) + 104))(a1, v10, v11);
      v12 = MEMORY[0x277D45210];
    }

    else
    {
      v24 = sub_21DBF6C1C();
      (*(*(v24 - 8) + 32))(a1, v7, v24);
      v25 = *MEMORY[0x277D45100];
      v26 = sub_21DBF664C();
      (*(*(v26 - 8) + 104))(a1, v25, v26);
      v12 = MEMORY[0x277D45218];
    }

LABEL_13:
    v31 = *v12;
    v21 = sub_21DBF66FC();
    v22 = *(*(v21 - 8) + 104);
    v32 = a1;
    v33 = v31;
    return v22(v32, v33, v21);
  }

  v18 = *v7;
  v19 = *MEMORY[0x277D45128];
  v20 = sub_21DBF667C();
  (*(*(v20 - 8) + 104))(a1, v19, v20);
  v21 = sub_21DBF66FC();
  v22 = *(*(v21 - 8) + 104);
  if (v18 <= 2)
  {
    if (v18)
    {
      if (v18 == 1)
      {
        v23 = MEMORY[0x277D45258];
      }

      else
      {
        v23 = MEMORY[0x277D451C8];
      }
    }

    else
    {
      v23 = MEMORY[0x277D45208];
    }
  }

  else if (v18 > 4)
  {
    if (v18 == 5)
    {
      v23 = MEMORY[0x277D451E0];
    }

    else
    {
      v23 = MEMORY[0x277D45250];
    }
  }

  else if (v18 == 3)
  {
    v23 = MEMORY[0x277D45228];
  }

  else
  {
    v23 = MEMORY[0x277D45240];
  }

  v33 = *v23;
  v32 = a1;
  return v22(v32, v33, v21);
}

uint64_t sub_21D666D48@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v65 = *MEMORY[0x277D85DE8];
  v60 = sub_21DBF6C1C();
  v59 = *(v60 - 1);
  MEMORY[0x28223BE20](v60);
  v7 = &v57[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20, &qword_21DC0D4A0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v57[-v9];
  v11 = sub_21DBF54CC();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v57[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  v17 = &v57[-v16];
  v62 = type metadata accessor for TTRUserActivityListPayload.State(0);
  MEMORY[0x28223BE20](v62);
  v19 = &v57[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (sub_21D664864(a1))
  {
    v61 = a3;
    v58 = a1;
    sub_21D668E7C(2u, v10);
    if ((*(v12 + 48))(v10, 1, v11) == 1)
    {
      sub_21D0CF7E0(v10, &qword_27CE5EA20, &qword_21DC0D4A0);
    }

    else
    {
      (*(v12 + 32))(v17, v10, v11);
      (*(v12 + 16))(v14, v17, v11);
      TTRCrossDeviceIdentifier.init(url:)(v14, v63);
      (*(v12 + 8))(v17, v11);
      v21 = v64;
      if (v64 != 255)
      {
        v23 = v63[0];
        v22 = v63[1];
        v24 = v63[2];
        v25 = v63[3];
        v26 = v63[4];
        v60 = v63[5];
        v64 &= 1u;
        v53 = REMStore.fetchList(with:)(v63);

        sub_21D66A604(v23, v22, v24, v25, v26, v60, v21);
        if (v53)
        {
          *v19 = v53;
          goto LABEL_21;
        }

        goto LABEL_28;
      }
    }

    v27 = a2;
    v28 = v58;
    v29 = sub_21D6657D4();
    if (!v29)
    {
      v34 = sub_21D6690E4(3u);
      if (v35)
      {
        sub_21D6644D0(v34, v35, v63);
        v36 = v63[0];
        if (LOBYTE(v63[0]) != 7)
        {

          *v19 = v36;
          goto LABEL_21;
        }
      }

      v37 = sub_21D6690E4(4u);
      if (v38)
      {
        v39 = v37;
        v40 = v38;

        *v19 = v39;
        v19[1] = v40;
        goto LABEL_21;
      }

      sub_21D6690E4(5u);
      if (v54)
      {
        sub_21DBF6B9C();
        a3 = v61;

        (*(v59 + 32))(v19, v7, v60);
        goto LABEL_22;
      }

      goto LABEL_27;
    }

    v30 = v29;
    v63[0] = 0;
    v31 = [v27 fetchCustomSmartListWithObjectID:v29 error:v63];
    if (v31)
    {
      v32 = v31;
      v33 = v63[0];

      *v19 = v32;
LABEL_21:
      a3 = v61;
LABEL_22:
      swift_storeEnumTagMultiPayload();
      sub_21D66A70C(v19, a3, type metadata accessor for TTRUserActivityListPayload.State);
      v20 = 0;
      goto LABEL_29;
    }

    v41 = v63[0];
    v42 = sub_21DBF52DC();

    swift_willThrow();
    if (qword_27CE56B60 != -1)
    {
      swift_once();
    }

    v43 = sub_21DBF84BC();
    __swift_project_value_buffer(v43, qword_27CE5F768);
    v44 = v42;
    v45 = sub_21DBF84AC();
    v46 = sub_21DBFAEBC();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = v28;
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v63[0] = v49;
      *v48 = 136315138;
      swift_getErrorValue();
      v50 = sub_21DBFC74C();
      v52 = sub_21D0CDFB4(v50, v51, v63);

      *(v48 + 4) = v52;
      _os_log_impl(&dword_21D0C9000, v45, v46, "Cannot fetch list {error: %s}", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v49);
      MEMORY[0x223D46520](v49, -1, -1);
      MEMORY[0x223D46520](v48, -1, -1);

LABEL_27:
      goto LABEL_28;
    }

LABEL_28:
    v20 = 1;
    a3 = v61;
    goto LABEL_29;
  }

  v20 = 1;
LABEL_29:
  v55 = type metadata accessor for TTRUserActivityListPayload(0);
  return (*(*(v55 - 8) + 56))(a3, v20, 1, v55);
}

Swift::Void __swiftcall TTRUserActivityListPayload.update(_:)(NSUserActivity a1)
{
  v3 = sub_21DBF6C1C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20, &qword_21DC0D4A0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v46 - v11;
  v13 = type metadata accessor for TTRUserActivityListPayload.State(0);
  MEMORY[0x28223BE20](v13);
  v15 = (v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (sub_21D664864(a1.super.isa))
  {
    sub_21D66A774(v1, v15, v16, type metadata accessor for TTRUserActivityListPayload.State);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        v18 = *v15;
        v30 = [v18 objectID];
        v31 = v30;
        if (v30)
        {
          v32 = [v30 urlRepresentation];
          sub_21DBF546C();

          v33 = 0;
        }

        else
        {
          v33 = 1;
        }

        v41 = sub_21DBF54CC();
        (*(*(v41 - 8) + 56))(v9, v33, 1, v41);
        sub_21D669548(v9, 0);

        sub_21D0CF7E0(v9, &qword_27CE5EA20, &qword_21DC0D4A0);
        v42 = [v18 customContext];
        if (v42)
        {
          v43 = v42;
          v44 = [v42 name];

          if (!v44)
          {
            sub_21DBFA16C();
            v44 = sub_21DBFA12C();
          }
        }

        else
        {
          v44 = 0;
        }

        [(objc_class *)a1.super.isa setTitle:v44];

        [(objc_class *)a1.super.isa setEligibleForHandoff:1];
      }

      else
      {
        v18 = *v15;
        REMList.crossDeviceIdentifier.getter(&v47);
        v20 = v47;
        v19 = v48;
        v22 = v49;
        v21 = v50;
        v24 = v51;
        v23 = v52;
        if (v53)
        {
          v25 = [v47 urlRepresentation];
          sub_21DBF546C();
          sub_21D1078C0(v20, v19, v22, v21, v24, v23, 1);
        }

        else
        {
          v46[0] = v47;
          v46[1] = v48;
          v46[2] = v49;
          v46[3] = v50;
          v46[4] = v51;
          v46[5] = v52;
          TTRCrossDeviceIdentifier.ExternalIdentifier.urlRepresentation.getter(v12);
          sub_21D1078C0(v20, v19, v22, v21, v24, v23, 0);
        }

        v34 = sub_21DBF54CC();
        (*(*(v34 - 8) + 56))(v12, 0, 1, v34);
        sub_21D669548(v12, 2u);
        sub_21D0CF7E0(v12, &qword_27CE5EA20, &qword_21DC0D4A0);
        v35 = [v18 displayName];
        if (!v35)
        {
          sub_21DBFA16C();
          v35 = sub_21DBFA12C();
        }

        [(objc_class *)a1.super.isa setTitle:v35];

        v36 = [v18 account];
        v37 = [v36 capabilities];

        v38 = [v37 supportsHandoff];
        [(objc_class *)a1.super.isa setEligibleForHandoff:v38];
      }

      goto LABEL_44;
    }

    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        (*(v4 + 32))(v6, v15, v3);
        v29 = sub_21DBF6BAC();
        sub_21D66A0E4(v29, v39, 5u);

        if (qword_280D1BAA8 != -1)
        {
          swift_once();
        }

        sub_21DBF516C();
        v40 = sub_21DBFA12C();

        [(objc_class *)a1.super.isa setTitle:v40];

        [(objc_class *)a1.super.isa setEligibleForHandoff:1];
        (*(v4 + 8))(v6, v3);
        goto LABEL_44;
      }

      sub_21D66A0E4(*v15, v15[1], 4u);

      if (qword_280D1BAA8 != -1)
      {
        swift_once();
      }

      sub_21DBF516C();
LABEL_43:
      v45 = sub_21DBFA12C();

      [(objc_class *)a1.super.isa setTitle:v45];

      [(objc_class *)a1.super.isa setEligibleForHandoff:1];
LABEL_44:
      sub_21D668100();
      return;
    }

    v26 = *v15;
    if (v26 <= 2)
    {
      if (!*v15)
      {
        v27 = 0xE500000000000000;
        v28 = 0x7961646F74;
        goto LABEL_42;
      }

      if (v26 != 1)
      {
        v27 = 0xEC00000073726564;
        v28 = 0x6E696D65526C6C61;
        goto LABEL_42;
      }

      v28 = 0x656C756465686373;
    }

    else
    {
      if (*v15 <= 4u)
      {
        if (v26 == 3)
        {
          v27 = 0xE700000000000000;
          v28 = 0x64656767616C66;
        }

        else
        {
          v27 = 0xE800000000000000;
          v28 = 0x64656E6769737361;
        }

        goto LABEL_42;
      }

      if (v26 == 5)
      {
        v27 = 0xEF737070416E4964;
        v28 = 0x6E756F4669726973;
LABEL_42:
        sub_21D66A0E4(v28, v27, 3u);

        LOBYTE(v47) = v26;
        sub_21D66404C();
        goto LABEL_43;
      }

      v28 = 0x6574656C706D6F63;
    }

    v27 = 0xE900000000000064;
    goto LABEL_42;
  }
}

void sub_21D668100()
{
  v1 = v0;
  v2 = [v0 userInfo];
  if (v2)
  {
    v3 = v2;
    v4 = sub_21DBF9E6C();

    v5 = 1 << *(v4 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(v4 + 64);
    v8 = (v5 + 63) >> 6;
    sub_21DBF8E0C();
    v9 = 0;
    v10 = MEMORY[0x277D84F90];
    while (v7)
    {
LABEL_10:
      v12 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      sub_21D181CE0(*(v4 + 48) + 40 * (v12 | (v9 << 6)), v24);
      sub_21DBFBE1C();
      sub_21D181D3C(v24);
      if ((swift_dynamicCast() & 1) != 0 && v23)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_21D210A84(0, *(v10 + 2) + 1, 1, v10);
        }

        v14 = *(v10 + 2);
        v13 = *(v10 + 3);
        v15 = v14 + 1;
        if (v14 >= v13 >> 1)
        {
          v21 = v14 + 1;
          v17 = v10;
          v18 = *(v10 + 2);
          v19 = sub_21D210A84((v13 > 1), v14 + 1, 1, v17);
          v14 = v18;
          v15 = v21;
          v10 = v19;
        }

        *(v10 + 2) = v15;
        v16 = &v10[16 * v14];
        *(v16 + 4) = v22;
        *(v16 + 5) = v23;
      }
    }

    while (1)
    {
      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v11 >= v8)
      {

        goto LABEL_19;
      }

      v7 = *(v4 + 64 + 8 * v11);
      ++v9;
      if (v7)
      {
        v9 = v11;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
LABEL_19:
    sub_21D0FC0A8(v10);

    v20 = sub_21DBFAA9C();

    [v1 setRequiredUserInfoKeys_];
  }
}

uint64_t NSUserActivity.ExtractedInfo.title.getter()
{
  v1 = *v0;
  sub_21DBF8E0C();
  return v1;
}

uint64_t NSUserActivity.ExtractedInfo.notes.getter()
{
  v1 = *(v0 + 16);
  sub_21DBF8E0C();
  return v1;
}

id static NSUserActivity.forStoringWindowSceneRestorationPayload()()
{
  sub_21DBFBEEC();

  if (qword_280D19F80 != -1)
  {
    swift_once();
  }

  v4 = qword_280D19F88;
  v5 = *algn_280D19F90;
  sub_21DBF8E0C();
  MEMORY[0x223D42AA0](0xD000000000000020, 0x800000021DC66080);
  v0 = objc_allocWithZone(MEMORY[0x277CCAE58]);
  v1 = sub_21DBFA12C();

  v2 = [v0 initWithActivityType_];

  return v2;
}

id sub_21D66850C()
{
  sub_21DBFBEEC();

  if (qword_280D19F80 != -1)
  {
    swift_once();
  }

  v4 = qword_280D19F88;
  v5 = *algn_280D19F90;
  sub_21DBF8E0C();
  MEMORY[0x223D42AA0](0x746976697463612ELL, 0xEE007473696C2E79);
  v0 = objc_allocWithZone(MEMORY[0x277CCAE58]);
  v1 = sub_21DBFA12C();

  v2 = [v0 initWithActivityType_];

  return v2;
}

id static NSUserActivity.forStoringListPayloadForSmartListsAndSearch()()
{
  sub_21DBFBEEC();

  if (qword_280D19F80 != -1)
  {
    swift_once();
  }

  v4 = qword_280D19F88;
  v5 = *algn_280D19F90;
  sub_21DBF8E0C();
  MEMORY[0x223D42AA0](0x746976697463612ELL, 0xEE007473696C2E79);
  v0 = objc_allocWithZone(MEMORY[0x277CCAE58]);
  v1 = sub_21DBFA12C();

  v2 = [v0 initWithActivityType_];

  return v2;
}

id NSUserActivity.init(forStoring:)(uint64_t a1, uint64_t a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  (*(a2 + 8))(&v8, a1, a2);
  TTRUserActivityType.activityType.getter();
  v5 = sub_21DBFA12C();

  v6 = [v4 initWithActivityType_];

  return v6;
}

uint64_t NSUserActivity.ttrExtractedInfo.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = [v1 activityType];
  v5 = sub_21DBFA16C();
  v7 = v6;

  v8 = v5 == 0xD000000000000023 && 0x800000021DC66100 == v7;
  if (v8 || (sub_21DBFC64C() & 1) != 0 || (v5 == 0xD000000000000025 ? (v9 = 0x800000021DC66130 == v7) : (v9 = 0), v9))
  {
  }

  else
  {
    v10 = sub_21DBFC64C();

    if ((v10 & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  v11 = [v2 userInfo];
  if (!v11)
  {
    goto LABEL_28;
  }

  v12 = v11;
  v13 = sub_21DBF9E6C();

  v48[0] = 0xD000000000000015;
  v48[1] = 0x800000021DC66160;
  sub_21DBFBE2C();
  if (!*(v13 + 16) || (v14 = sub_21D17EA0C(&v49), (v15 & 1) == 0))
  {

    sub_21D181D3C(&v49);
LABEL_28:
    v51 = 0u;
    v52 = 0u;
    goto LABEL_29;
  }

  sub_21D0CEB98(*(v13 + 56) + 32 * v14, &v51);
  sub_21D181D3C(&v49);

  if (!*(&v52 + 1))
  {
LABEL_29:
    sub_21D0CF7E0(&v51, &qword_27CE5C690, &unk_21DC11AB0);
    goto LABEL_30;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_30:
    v38 = [v2 title];
    if (v38)
    {
      v39 = v38;
      v40 = sub_21DBFA16C();
      v42 = v41;
    }

    else
    {
      v40 = 0;
      v42 = 0;
    }

    v43 = *(type metadata accessor for NSUserActivity.ExtractedInfo(0) + 24);
    v44 = sub_21DBF54CC();
    result = (*(*(v44 - 8) + 56))(a1 + v43, 1, 1, v44);
    *a1 = v40;
    a1[1] = v42;
    a1[2] = 0;
    a1[3] = 0;
    return result;
  }

  v17 = v49;
  v16 = v50;
  v18 = [v2 userInfo];
  if (!v18)
  {

    goto LABEL_28;
  }

  v19 = v18;
  v20 = sub_21DBF9E6C();

  strcpy(v48, "containerTitle");
  HIBYTE(v48[1]) = -18;
  sub_21DBFBE2C();
  if (!*(v20 + 16) || (v21 = sub_21D17EA0C(&v49), (v22 & 1) == 0))
  {

    sub_21D181D3C(&v49);
    v51 = 0u;
    v52 = 0u;
    goto LABEL_35;
  }

  sub_21D0CEB98(*(v20 + 56) + 32 * v21, &v51);
  sub_21D181D3C(&v49);

  if (!*(&v52 + 1))
  {
LABEL_35:

    goto LABEL_29;
  }

  v23 = MEMORY[0x277D837D0];
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_30;
  }

  v24 = v49;
  v25 = v50;
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  v26 = sub_21DBFA12C();

  sub_21D66A81C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90, &qword_21DC109C0);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_21DC08D20;
  *(v27 + 56) = v23;
  v28 = sub_21D17A884();
  *(v27 + 32) = v17;
  *(v27 + 40) = v16;
  *(v27 + 96) = v23;
  *(v27 + 104) = v28;
  *(v27 + 64) = v28;
  *(v27 + 72) = v24;
  *(v27 + 80) = v25;
  v29 = sub_21DBFB67C();
  v30 = sub_21DBFA16C();
  v32 = v31;

  v33 = [v2 title];
  if (v33)
  {
    v34 = v33;
    v35 = sub_21DBFA16C();
    v37 = v36;
  }

  else
  {

    v35 = 0;
    v37 = 0;
  }

  v46 = *(type metadata accessor for NSUserActivity.ExtractedInfo(0) + 24);
  v47 = sub_21DBF54CC();
  result = (*(*(v47 - 8) + 56))(a1 + v46, 1, 1, v47);
  *a1 = v35;
  a1[1] = v37;
  a1[2] = v30;
  a1[3] = v32;
  return result;
}

RemindersUICore::TTRUserActivityType_optional NSUserActivity.ttrUserActivityType.getter()
{
  v1 = [v0 activityType];
  v2 = sub_21DBFA16C();
  v4 = v3;

  v5 = v2;
  v6 = v4;

  return TTRUserActivityType.init(activityType:)(*&v5);
}

uint64_t NSUserActivity.setPayload(_:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1(a1, v2);

  return sub_21D66A868(v4, v1, v2, v3);
}

uint64_t NSUserActivity.windowSceneRestorationPayload.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;

  return sub_21D6650FC(v3, a1);
}

uint64_t NSUserActivity.listPayload(with:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2;
  v6 = a1;

  return sub_21D666D48(v5, v6, a2);
}

uint64_t sub_21D668E7C@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  v5 = [v2 userInfo];
  if (!v5)
  {
    goto LABEL_19;
  }

  v6 = v5;
  v7 = sub_21DBF9E6C();

  if (a1 <= 2u)
  {
    if (a1)
    {
      if (a1 == 1)
      {
        v9 = 0xD000000000000010;
        v8 = 0x800000021DC663A0;
      }

      else
      {
        v8 = 0xED00004449656369;
        v9 = 0x76654473736F7263;
      }
    }

    else
    {
      v8 = 0xE800000000000000;
      v9 = 0x44497463656A626FLL;
    }
  }

  else if (a1 > 4u)
  {
    if (a1 == 5)
    {
      v8 = 0xED0000736C656261;
      v9 = 0x4C67617468736168;
    }

    else
    {
      v8 = 0x800000021DC66380;
      v9 = 0xD000000000000013;
    }
  }

  else if (a1 == 3)
  {
    v8 = 0xED00006570795474;
    v9 = 0x73694C7472616D73;
  }

  else
  {
    v8 = 0xEA00000000006D72;
    v9 = 0x6554686372616573;
  }

  *&v16[0] = v9;
  *(&v16[0] + 1) = v8;
  sub_21DBFBE2C();
  if (!*(v7 + 16) || (v10 = sub_21D17EA0C(v15), (v11 & 1) == 0))
  {

    sub_21D181D3C(v15);
LABEL_19:
    memset(v16, 0, sizeof(v16));
    goto LABEL_20;
  }

  sub_21D0CEB98(*(v7 + 56) + 32 * v10, v16);
  sub_21D181D3C(v15);

LABEL_20:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C690, &unk_21DC11AB0);
  v12 = sub_21DBF54CC();
  v13 = swift_dynamicCast();
  return (*(*(v12 - 8) + 56))(a2, v13 ^ 1u, 1, v12);
}

uint64_t sub_21D6690E4(unsigned __int8 a1)
{
  v3 = [v1 userInfo];
  if (v3)
  {
    v4 = v3;
    v5 = sub_21DBF9E6C();

    if (a1 <= 2u)
    {
      if (a1)
      {
        if (a1 == 1)
        {
          v7 = 0xD000000000000010;
          v6 = 0x800000021DC663A0;
        }

        else
        {
          v6 = 0xED00004449656369;
          v7 = 0x76654473736F7263;
        }
      }

      else
      {
        v6 = 0xE800000000000000;
        v7 = 0x44497463656A626FLL;
      }
    }

    else if (a1 > 4u)
    {
      if (a1 == 5)
      {
        v6 = 0xED0000736C656261;
        v7 = 0x4C67617468736168;
      }

      else
      {
        v6 = 0x800000021DC66380;
        v7 = 0xD000000000000013;
      }
    }

    else if (a1 == 3)
    {
      v6 = 0xED00006570795474;
      v7 = 0x73694C7472616D73;
    }

    else
    {
      v6 = 0xEA00000000006D72;
      v7 = 0x6554686372616573;
    }

    *&v12[0] = v7;
    *(&v12[0] + 1) = v6;
    sub_21DBFBE2C();
    if (*(v5 + 16))
    {
      v8 = sub_21D17EA0C(&v11);
      if (v9)
      {
        sub_21D0CEB98(*(v5 + 56) + 32 * v8, v12);
        sub_21D181D3C(&v11);

        goto LABEL_20;
      }
    }

    sub_21D181D3C(&v11);
  }

  memset(v12, 0, sizeof(v12));
LABEL_20:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C690, &unk_21DC11AB0);
  if (swift_dynamicCast())
  {
    return v11;
  }

  else
  {
    return 0;
  }
}

double sub_21D669314@<D0>(unsigned __int8 a1@<W0>, _OWORD *a2@<X8>)
{
  v5 = [v2 userInfo];
  if (v5)
  {
    v6 = v5;
    v7 = sub_21DBF9E6C();

    if (a1 <= 2u)
    {
      if (a1)
      {
        if (a1 == 1)
        {
          v9 = 0xD000000000000010;
          v8 = 0x800000021DC663A0;
        }

        else
        {
          v8 = 0xED00004449656369;
          v9 = 0x76654473736F7263;
        }
      }

      else
      {
        v8 = 0xE800000000000000;
        v9 = 0x44497463656A626FLL;
      }
    }

    else if (a1 > 4u)
    {
      if (a1 == 5)
      {
        v8 = 0xED0000736C656261;
        v9 = 0x4C67617468736168;
      }

      else
      {
        v8 = 0x800000021DC66380;
        v9 = 0xD000000000000013;
      }
    }

    else if (a1 == 3)
    {
      v8 = 0xED00006570795474;
      v9 = 0x73694C7472616D73;
    }

    else
    {
      v8 = 0xEA00000000006D72;
      v9 = 0x6554686372616573;
    }

    *&v14[0] = v9;
    *(&v14[0] + 1) = v8;
    sub_21DBFBE2C();
    if (*(v7 + 16))
    {
      v10 = sub_21D17EA0C(v13);
      if (v11)
      {
        sub_21D0CEB98(*(v7 + 56) + 32 * v10, v14);
        sub_21D181D3C(v13);

        goto LABEL_20;
      }
    }

    sub_21D181D3C(v13);
  }

  memset(v14, 0, sizeof(v14));
LABEL_20:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5C690, &unk_21DC11AB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    result = 0.0;
    *a2 = xmmword_21DC18EF0;
  }

  return result;
}

void sub_21D669548(uint64_t a1, unsigned __int8 a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20, &qword_21DC0D4A0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v29 - v7;
  v9 = sub_21DBF54CC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D0D3954(a1, v8, &qword_27CE5EA20, &qword_21DC0D4A0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_21D0CF7E0(v8, &qword_27CE5EA20, &qword_21DC0D4A0);
    v13 = [v3 userInfo];
    if (v13)
    {
      v14 = v13;
      v15 = sub_21DBF9E6C();

      v31 = v15;
      if (a2 <= 2u)
      {
        if (a2)
        {
          if (a2 == 1)
          {
            v16 = 0xD000000000000010;
            v17 = 0x800000021DC663A0;
          }

          else
          {
            v16 = 0x76654473736F7263;
            v17 = 0xED00004449656369;
          }
        }

        else
        {
          v16 = 0x44497463656A626FLL;
          v17 = 0xE800000000000000;
        }
      }

      else if (a2 > 4u)
      {
        if (a2 == 5)
        {
          v16 = 0x4C67617468736168;
          v17 = 0xED0000736C656261;
        }

        else
        {
          v17 = 0x800000021DC66380;
          v16 = 0xD000000000000013;
        }
      }

      else if (a2 == 3)
      {
        v16 = 0x73694C7472616D73;
        v17 = 0xED00006570795474;
      }

      else
      {
        v16 = 0x6554686372616573;
        v17 = 0xEA00000000006D72;
      }

      *&v29[0] = v16;
      *(&v29[0] + 1) = v17;
      sub_21DBFBE2C();
      sub_21D874094(v30, &v32);
      sub_21D181D3C(v30);
      sub_21D0CF7E0(&v32, &qword_27CE5C690, &unk_21DC11AB0);
      if (v31)
      {
        v25 = sub_21DBF9E5C();
      }

      else
      {
        v25 = 0;
      }

      [v3 setUserInfo_];
    }

    else
    {
      [v3 setUserInfo_];
      v32 = 0u;
      v33 = 0u;
      sub_21D0CF7E0(&v32, &qword_27CE5C690, &unk_21DC11AB0);
    }
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    v18 = [v3 userInfo];
    if (!v18)
    {
      sub_21D1790F0(MEMORY[0x277D84F90]);
      v19 = sub_21DBF9E5C();

      [v3 setUserInfo_];
      v18 = v19;
    }

    v20 = [v3 userInfo];
    if (v20)
    {
      v21 = v20;
      v22 = sub_21DBF9E6C();

      if (a2 <= 2u)
      {
        if (a2)
        {
          if (a2 == 1)
          {
            v23 = 0xD000000000000010;
            v24 = 0x800000021DC663A0;
          }

          else
          {
            v23 = 0x76654473736F7263;
            v24 = 0xED00004449656369;
          }
        }

        else
        {
          v23 = 0x44497463656A626FLL;
          v24 = 0xE800000000000000;
        }
      }

      else if (a2 > 4u)
      {
        if (a2 == 5)
        {
          v23 = 0x4C67617468736168;
          v24 = 0xED0000736C656261;
        }

        else
        {
          v24 = 0x800000021DC66380;
          v23 = 0xD000000000000013;
        }
      }

      else if (a2 == 3)
      {
        v23 = 0x73694C7472616D73;
        v24 = 0xED00006570795474;
      }

      else
      {
        v23 = 0x6554686372616573;
        v24 = 0xEA00000000006D72;
      }

      *&v32 = v23;
      *(&v32 + 1) = v24;
      sub_21DBFBE2C();
      *(&v33 + 1) = v9;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v32);
      (*(v10 + 16))(boxed_opaque_existential_0, v12, v9);
      sub_21D0CF2E8(&v32, v29);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v31 = v22;
      sub_21D478860(v29, v30, isUniquelyReferenced_nonNull_native);
      sub_21D181D3C(v30);
      if (v31)
      {
        v28 = sub_21DBF9E5C();
      }

      else
      {
        v28 = 0;
      }

      [v3 setUserInfo_];
    }

    else
    {
      [v3 setUserInfo_];
    }

    (*(v10 + 8))(v12, v9);
  }
}

void sub_21D669BB4(uint64_t a1, unint64_t a2, unsigned __int8 a3)
{
  v4 = v3;
  if (a2 >> 60 == 15)
  {
    v6 = [v4 userInfo];
    if (!v6)
    {
      [v4 setUserInfo_];
      v23 = 0u;
      v24 = 0u;
      sub_21D0CF7E0(&v23, &qword_27CE5C690, &unk_21DC11AB0);
      return;
    }

    v7 = v6;
    v8 = sub_21DBF9E6C();

    v22 = v8;
    if (a3 <= 2u)
    {
      if (a3)
      {
        if (a3 == 1)
        {
          v9 = 0xD000000000000010;
          v10 = 0x800000021DC663A0;
        }

        else
        {
          v9 = 0x76654473736F7263;
          v10 = 0xED00004449656369;
        }
      }

      else
      {
        v9 = 0x44497463656A626FLL;
        v10 = 0xE800000000000000;
      }
    }

    else if (a3 > 4u)
    {
      if (a3 == 5)
      {
        v9 = 0x4C67617468736168;
        v10 = 0xED0000736C656261;
      }

      else
      {
        v10 = 0x800000021DC66380;
        v9 = 0xD000000000000013;
      }
    }

    else if (a3 == 3)
    {
      v9 = 0x73694C7472616D73;
      v10 = 0xED00006570795474;
    }

    else
    {
      v9 = 0x6554686372616573;
      v10 = 0xEA00000000006D72;
    }

    *&v20[0] = v9;
    *(&v20[0] + 1) = v10;
    sub_21DBFBE2C();
    sub_21D874094(v21, &v23);
    sub_21D181D3C(v21);
    sub_21D0CF7E0(&v23, &qword_27CE5C690, &unk_21DC11AB0);
    if (v22)
    {
      v18 = sub_21DBF9E5C();
    }

    else
    {
      v18 = 0;
    }

    [v4 setUserInfo_];
    goto LABEL_32;
  }

  v13 = [v4 userInfo];
  if (!v13)
  {
    sub_21D1790F0(MEMORY[0x277D84F90]);
    v14 = sub_21DBF9E5C();

    [v4 setUserInfo_];
    v13 = v14;
  }

  v15 = [v4 userInfo];
  if (v15)
  {
    v16 = v15;
    v17 = sub_21DBF9E6C();

    sub_21DBFBE2C();
    *(&v24 + 1) = MEMORY[0x277CC9318];
    *&v23 = a1;
    *(&v23 + 1) = a2;
    sub_21D0CF2E8(&v23, v20);
    sub_21D1BAF70(a1, a2);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = v17;
    sub_21D478860(v20, v21, isUniquelyReferenced_nonNull_native);
    sub_21D181D3C(v21);
    if (v22)
    {
      v18 = sub_21DBF9E5C();
    }

    else
    {
      v18 = 0;
    }

    [v4 setUserInfo_];
LABEL_32:

    return;
  }

  [v4 setUserInfo_];
}

void sub_21D66A0E4(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v4 = v3;
  if (!a2)
  {
    v13 = [v3 userInfo];
    if (!v13)
    {
      [v3 setUserInfo_];
      v24 = 0u;
      v25 = 0u;
      sub_21D0CF7E0(&v24, &qword_27CE5C690, &unk_21DC11AB0);
      return;
    }

    v14 = v13;
    v15 = sub_21DBF9E6C();

    v23 = v15;
    if (a3 <= 2u)
    {
      if (a3)
      {
        if (a3 == 1)
        {
          v16 = 0xD000000000000010;
          v17 = 0x800000021DC663A0;
        }

        else
        {
          v16 = 0x76654473736F7263;
          v17 = 0xED00004449656369;
        }
      }

      else
      {
        v16 = 0x44497463656A626FLL;
        v17 = 0xE800000000000000;
      }
    }

    else if (a3 > 4u)
    {
      if (a3 == 5)
      {
        v16 = 0x4C67617468736168;
        v17 = 0xED0000736C656261;
      }

      else
      {
        v17 = 0x800000021DC66380;
        v16 = 0xD000000000000013;
      }
    }

    else if (a3 == 3)
    {
      v16 = 0x73694C7472616D73;
      v17 = 0xED00006570795474;
    }

    else
    {
      v16 = 0x6554686372616573;
      v17 = 0xEA00000000006D72;
    }

    *&v21[0] = v16;
    *(&v21[0] + 1) = v17;
    sub_21DBFBE2C();
    sub_21D874094(v22, &v24);
    sub_21D181D3C(v22);
    sub_21D0CF7E0(&v24, &qword_27CE5C690, &unk_21DC11AB0);
    if (v23)
    {
      v20 = sub_21DBF9E5C();
    }

    else
    {
      v20 = 0;
    }

    goto LABEL_30;
  }

  v8 = [v4 userInfo];
  if (!v8)
  {
    sub_21D1790F0(MEMORY[0x277D84F90]);
    v9 = sub_21DBF9E5C();

    [v4 setUserInfo_];
    v8 = v9;
  }

  v10 = [v4 userInfo];
  if (v10)
  {
    v11 = v10;
    v12 = sub_21DBF9E6C();

    v18 = MEMORY[0x277D837D0];
    sub_21DBFBE2C();
    *(&v25 + 1) = v18;
    *&v24 = a1;
    *(&v24 + 1) = a2;
    sub_21D0CF2E8(&v24, v21);
    sub_21DBF8E0C();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = v12;
    sub_21D478860(v21, v22, isUniquelyReferenced_nonNull_native);
    sub_21D181D3C(v22);
    if (v23)
    {
      v20 = sub_21DBF9E5C();
    }

    else
    {
      v20 = 0;
    }

LABEL_30:
    [v4 setUserInfo_];

    return;
  }

  [v4 setUserInfo_];
}

void sub_21D66A604(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7 != -1)
  {
    sub_21D1078C0(a1, a2, a3, a4, a5, a6, a7 & 1);
  }
}

uint64_t sub_21D66A63C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21D66A69C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90, &unk_21DC09290);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D66A70C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D66A774(uint64_t a1, uint64_t a2, __n128 a3, uint64_t (*a4)(void, __n128))
{
  v6 = a4(0, a3);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_21D66A81C()
{
  result = qword_27CE5A168;
  if (!qword_27CE5A168)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CE5A168);
  }

  return result;
}

uint64_t sub_21D66A868(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v19 = a3;
  v20 = a4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v18 + 1));
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_0, a1, a3);
  v8 = [a2 activityType];
  v9 = sub_21DBFA16C();
  v11 = v10;

  __swift_project_boxed_opaque_existential_1((v18 + 1), v19);
  swift_getDynamicType();
  (*(v20 + 8))(v18);
  if (v9 == TTRUserActivityType.activityType.getter() && v11 == v12)
  {
  }

  else
  {
    v14 = sub_21DBFC64C();

    if ((v14 & 1) == 0)
    {
      return __swift_destroy_boxed_opaque_existential_0((v18 + 1));
    }
  }

  v15 = v19;
  v16 = v20;
  __swift_project_boxed_opaque_existential_1((v18 + 1), v19);
  (*(v16 + 24))(a2, v15, v16);
  return __swift_destroy_boxed_opaque_existential_0((v18 + 1));
}

unint64_t sub_21D66A9E8()
{
  result = qword_27CE5F7A0;
  if (!qword_27CE5F7A0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRUserActivityType, &type metadata for TTRUserActivityType, v0, v1);
    atomic_store(result, &qword_27CE5F7A0);
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for TTRUserActivityWindowSceneRestorationPayload(void *a1, void *a2)
{
  v4 = *(*(type metadata accessor for TTRUserActivityWindowSceneRestorationPayload.State(0) - 8) + 80);
  if ((v4 & 0x20000) == 0)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      if (EnumCaseMultiPayload == 3)
      {
        v19 = a2[1];
        *a1 = *a2;
        a1[1] = v19;
        sub_21DBF8E0C();
      }

      else if (EnumCaseMultiPayload == 4)
      {
        v14 = sub_21DBF6C1C();
        (*(*(v14 - 8) + 16))(a1, a2, v14);
      }

      else
      {
        v21 = *a2;
        *a1 = *a2;
        v22 = v21;
      }

      goto LABEL_139;
    }

    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v6 = *a2;
        *a1 = *a2;
        v7 = v6;
        v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F798, &unk_21DC210E0) + 48);
        v9 = a1 + v8;
        v10 = (a2 + v8);
        v11 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
        v12 = *(v11 - 8);
        if ((*(v12 + 48))(v10, 1, v11))
        {
          goto LABEL_12;
        }

        v26 = swift_getEnumCaseMultiPayload();
        if (v26 != 2)
        {
          if (v26 != 1)
          {
            if (!v26)
            {
              v24 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
              v27 = swift_getEnumCaseMultiPayload();
              if (v27 > 4)
              {
                if (v27 <= 7)
                {
                  if (v27 == 5 || v27 == 6)
                  {
                    goto LABEL_83;
                  }

                  goto LABEL_112;
                }

                if (v27 != 8 && v27 != 9)
                {
                  goto LABEL_112;
                }

                goto LABEL_87;
              }

              if (v27 <= 2)
              {
                if (v27 != 1)
                {
                  if (v27 == 2)
                  {
                    goto LABEL_83;
                  }

LABEL_112:
                  memcpy(v9, v10, *(*(v24 - 8) + 64));
                  goto LABEL_137;
                }

                goto LABEL_87;
              }

LABEL_83:
              v50 = sub_21DBF563C();
              (*(*(v50 - 8) + 16))(v9, v10, v50);
              swift_storeEnumTagMultiPayload();
              goto LABEL_137;
            }

            goto LABEL_51;
          }

          v35 = *v10;
          *v9 = *v10;
          v57 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
          v58 = v9;
          v31 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v36 = *(v31 - 8);
          v37 = *(v36 + 48);
          v38 = v35;
          if (v37(v10 + v57, 1, v31))
          {
            goto LABEL_46;
          }

          v46 = v36;
          v9 = v58;
          v48 = swift_getEnumCaseMultiPayload();
          if (v48 > 4)
          {
            if (v48 <= 7)
            {
              if (v48 == 5 || v48 == 6)
              {
                goto LABEL_118;
              }

              goto LABEL_135;
            }

            if (v48 != 8 && v48 != 9)
            {
              goto LABEL_135;
            }

            goto LABEL_122;
          }

          if (v48 <= 2)
          {
            if (v48 != 1)
            {
              if (v48 == 2)
              {
                goto LABEL_118;
              }

LABEL_135:
              memcpy(&v58[v57], v10 + v57, *(v46 + 64));
              goto LABEL_136;
            }

            goto LABEL_122;
          }

LABEL_118:
          v53 = sub_21DBF563C();
          (*(*(v53 - 8) + 16))(&v58[v57], v10 + v57, v53);
          swift_storeEnumTagMultiPayload();
LABEL_136:
          (*(v46 + 56))(&v58[v57], 0, 1, v31);
          goto LABEL_137;
        }
      }

      else
      {
        *a1 = *a2;
        v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F790, &qword_21DC210D8) + 48);
        v9 = a1 + v20;
        v10 = (a2 + v20);
        v11 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
        v12 = *(v11 - 8);
        if ((*(v12 + 48))(v10, 1, v11))
        {
          goto LABEL_12;
        }

        v28 = swift_getEnumCaseMultiPayload();
        if (v28 != 2)
        {
          if (v28 != 1)
          {
            if (!v28)
            {
              v24 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
              v29 = swift_getEnumCaseMultiPayload();
              if (v29 > 4)
              {
                if (v29 <= 7)
                {
                  if (v29 == 5 || v29 == 6)
                  {
                    goto LABEL_83;
                  }

                  goto LABEL_112;
                }

                if (v29 != 8 && v29 != 9)
                {
                  goto LABEL_112;
                }
              }

              else
              {
                if (v29 > 2)
                {
                  goto LABEL_83;
                }

                if (v29 != 1)
                {
                  if (v29 == 2)
                  {
                    goto LABEL_83;
                  }

                  goto LABEL_112;
                }
              }

LABEL_87:
              v51 = *v10;
              *v9 = *v10;
              v52 = v51;
              swift_storeEnumTagMultiPayload();
              goto LABEL_137;
            }

            goto LABEL_51;
          }

          v40 = *v10;
          *v9 = *v10;
          v57 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
          v58 = v9;
          v31 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v41 = *(v31 - 8);
          v42 = *(v41 + 48);
          v43 = v40;
          if (v42(v10 + v57, 1, v31))
          {
LABEL_46:
            v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
            v9 = v58;
            memcpy(&v58[v57], v10 + v57, *(*(v39 - 8) + 64));
LABEL_137:
            swift_storeEnumTagMultiPayload();
            goto LABEL_138;
          }

          v46 = v41;
          v9 = v58;
          v49 = swift_getEnumCaseMultiPayload();
          if (v49 > 4)
          {
            if (v49 <= 7)
            {
              if (v49 == 5 || v49 == 6)
              {
                goto LABEL_118;
              }

              goto LABEL_135;
            }

            if (v49 != 8 && v49 != 9)
            {
              goto LABEL_135;
            }
          }

          else
          {
            if (v49 > 2)
            {
              goto LABEL_118;
            }

            if (v49 != 1)
            {
              if (v49 == 2)
              {
                goto LABEL_118;
              }

              goto LABEL_135;
            }
          }

LABEL_122:
          v54 = *(v10 + v57);
          *&v58[v57] = v54;
          v55 = v54;
          swift_storeEnumTagMultiPayload();
          goto LABEL_136;
        }
      }
    }

    else
    {
      v15 = *a2;
      *a1 = *a2;
      v16 = v15;
      v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F798, &unk_21DC210E0) + 48);
      v9 = a1 + v17;
      v10 = (a2 + v17);
      v11 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
      v12 = *(v11 - 8);
      if ((*(v12 + 48))(v10, 1, v11))
      {
LABEL_12:
        v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90, &unk_21DC09290);
        memcpy(v9, v10, *(*(v18 - 8) + 64));
LABEL_139:
        swift_storeEnumTagMultiPayload();
        return a1;
      }

      v23 = swift_getEnumCaseMultiPayload();
      if (v23 != 2)
      {
        if (v23 != 1)
        {
          if (!v23)
          {
            v24 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
            v25 = swift_getEnumCaseMultiPayload();
            if (v25 > 4)
            {
              if (v25 <= 7)
              {
                if (v25 == 5 || v25 == 6)
                {
                  goto LABEL_83;
                }

                goto LABEL_112;
              }

              if (v25 != 8 && v25 != 9)
              {
                goto LABEL_112;
              }

              goto LABEL_87;
            }

            if (v25 > 2)
            {
              goto LABEL_83;
            }

            if (v25 == 1)
            {
              goto LABEL_87;
            }

            if (v25 != 2)
            {
              goto LABEL_112;
            }

            goto LABEL_83;
          }

LABEL_51:
          memcpy(v9, v10, *(v12 + 64));
LABEL_138:
          (*(v12 + 56))(v9, 0, 1, v11);
          goto LABEL_139;
        }

        v30 = *v10;
        *v9 = *v10;
        v57 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v58 = v9;
        v31 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v32 = *(v31 - 8);
        v33 = *(v32 + 48);
        v34 = v30;
        if (v33(v10 + v57, 1, v31))
        {
          goto LABEL_46;
        }

        v46 = v32;
        v9 = v58;
        v47 = swift_getEnumCaseMultiPayload();
        if (v47 > 4)
        {
          if (v47 <= 7)
          {
            if (v47 == 5 || v47 == 6)
            {
              goto LABEL_118;
            }

            goto LABEL_135;
          }

          if (v47 != 8 && v47 != 9)
          {
            goto LABEL_135;
          }

          goto LABEL_122;
        }

        if (v47 > 2)
        {
          goto LABEL_118;
        }

        if (v47 == 1)
        {
          goto LABEL_122;
        }

        if (v47 != 2)
        {
          goto LABEL_135;
        }

        goto LABEL_118;
      }
    }

    v44 = *v10;
    *v9 = *v10;
    v45 = v44;
    goto LABEL_137;
  }

  v13 = *a2;
  *a1 = *a2;
  a1 = (v13 + ((v4 + 16) & ~v4));

  return a1;
}

void destroy for TTRUserActivityWindowSceneRestorationPayload(id *a1)
{
  type metadata accessor for TTRUserActivityWindowSceneRestorationPayload.State(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {

      return;
    }

    if (EnumCaseMultiPayload == 4)
    {
      v8 = sub_21DBF6C1C();
LABEL_24:
      v9 = *(*(v8 - 8) + 8);
      v10 = v8;
      v11 = a1;
LABEL_25:

      v9(v11, v10);
      return;
    }

    if (EnumCaseMultiPayload != 5)
    {
      return;
    }

    goto LABEL_40;
  }

  if (EnumCaseMultiPayload < 2)
  {

    v3 = &qword_27CE5F798;
    v4 = &unk_21DC210E0;
  }

  else
  {
    if (EnumCaseMultiPayload != 2)
    {
      return;
    }

    v3 = &qword_27CE5F790;
    v4 = &qword_21DC210D8;
  }

  a1 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(v3, v4) + 48));
  v5 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  if (!(*(*(v5 - 8) + 48))(a1, 1, v5))
  {
    v6 = swift_getEnumCaseMultiPayload();
    if (v6 != 2)
    {
      if (v6 != 1)
      {
        if (v6)
        {
          return;
        }

        type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v7 = swift_getEnumCaseMultiPayload();
        if (v7 > 4)
        {
          if (v7 <= 7)
          {
            if (v7 != 5 && v7 != 6)
            {
              return;
            }

            goto LABEL_37;
          }

          if (v7 != 8 && v7 != 9)
          {
            return;
          }
        }

        else
        {
          if (v7 > 2)
          {
LABEL_37:
            v8 = sub_21DBF563C();
            goto LABEL_24;
          }

          if (v7 != 1)
          {
            if (v7 != 2)
            {
              return;
            }

            goto LABEL_37;
          }
        }

        goto LABEL_40;
      }

      v12 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v13 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      if ((*(*(v13 - 8) + 48))(a1 + v12, 1, v13))
      {
        return;
      }

      v14 = swift_getEnumCaseMultiPayload();
      if (v14 > 4)
      {
        if (v14 <= 7)
        {
          if (v14 != 5 && v14 != 6)
          {
            return;
          }

          goto LABEL_47;
        }

        if (v14 != 8 && v14 != 9)
        {
          return;
        }
      }

      else
      {
        if (v14 > 2)
        {
LABEL_47:
          v10 = sub_21DBF563C();
          v9 = *(*(v10 - 8) + 8);
          v11 = (a1 + v12);
          goto LABEL_25;
        }

        if (v14 != 1)
        {
          if (v14 != 2)
          {
            return;
          }

          goto LABEL_47;
        }
      }

      v15 = *(a1 + v12);
      goto LABEL_41;
    }

LABEL_40:
    v15 = *a1;
LABEL_41:
  }
}

void *initializeWithCopy for TTRUserActivityWindowSceneRestorationPayload(void *a1, uint64_t a2)
{
  type metadata accessor for TTRUserActivityWindowSceneRestorationPayload.State(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v5 = *a2;
        *a1 = *a2;
        v6 = v5;
        v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F798, &unk_21DC210E0) + 48);
        v8 = a1 + v7;
        v9 = (a2 + v7);
        v10 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
        v11 = *(v10 - 8);
        if ((*(v11 + 48))(v9, 1, v10))
        {
          goto LABEL_10;
        }

        v24 = swift_getEnumCaseMultiPayload();
        if (v24 != 2)
        {
          if (v24 != 1)
          {
            if (!v24)
            {
              v22 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
              v25 = swift_getEnumCaseMultiPayload();
              if (v25 > 4)
              {
                if (v25 <= 7)
                {
                  if (v25 == 5 || v25 == 6)
                  {
                    goto LABEL_81;
                  }

                  goto LABEL_110;
                }

                if (v25 != 8 && v25 != 9)
                {
                  goto LABEL_110;
                }

                goto LABEL_85;
              }

              if (v25 <= 2)
              {
                if (v25 != 1)
                {
                  if (v25 == 2)
                  {
                    goto LABEL_81;
                  }

LABEL_110:
                  memcpy(v8, v9, *(*(v22 - 8) + 64));
                  goto LABEL_135;
                }

                goto LABEL_85;
              }

LABEL_81:
              v48 = sub_21DBF563C();
              (*(*(v48 - 8) + 16))(v8, v9, v48);
              swift_storeEnumTagMultiPayload();
              goto LABEL_135;
            }

            goto LABEL_49;
          }

          v33 = *v9;
          *v8 = *v9;
          v55 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
          v56 = v8;
          v29 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v34 = *(v29 - 8);
          v35 = *(v34 + 48);
          v36 = v33;
          if (v35(v9 + v55, 1, v29))
          {
            goto LABEL_44;
          }

          v44 = v34;
          v8 = v56;
          v46 = swift_getEnumCaseMultiPayload();
          if (v46 > 4)
          {
            if (v46 <= 7)
            {
              if (v46 == 5 || v46 == 6)
              {
                goto LABEL_116;
              }

              goto LABEL_133;
            }

            if (v46 != 8 && v46 != 9)
            {
              goto LABEL_133;
            }

            goto LABEL_120;
          }

          if (v46 <= 2)
          {
            if (v46 != 1)
            {
              if (v46 == 2)
              {
                goto LABEL_116;
              }

LABEL_133:
              memcpy(&v56[v55], v9 + v55, *(v44 + 64));
              goto LABEL_134;
            }

            goto LABEL_120;
          }

LABEL_116:
          v51 = sub_21DBF563C();
          (*(*(v51 - 8) + 16))(&v56[v55], v9 + v55, v51);
          swift_storeEnumTagMultiPayload();
LABEL_134:
          (*(v44 + 56))(&v56[v55], 0, 1, v29);
          goto LABEL_135;
        }
      }

      else
      {
        *a1 = *a2;
        v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F790, &qword_21DC210D8) + 48);
        v8 = a1 + v18;
        v9 = (a2 + v18);
        v10 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
        v11 = *(v10 - 8);
        if ((*(v11 + 48))(v9, 1, v10))
        {
          goto LABEL_10;
        }

        v26 = swift_getEnumCaseMultiPayload();
        if (v26 != 2)
        {
          if (v26 != 1)
          {
            if (!v26)
            {
              v22 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
              v27 = swift_getEnumCaseMultiPayload();
              if (v27 > 4)
              {
                if (v27 <= 7)
                {
                  if (v27 == 5 || v27 == 6)
                  {
                    goto LABEL_81;
                  }

                  goto LABEL_110;
                }

                if (v27 != 8 && v27 != 9)
                {
                  goto LABEL_110;
                }
              }

              else
              {
                if (v27 > 2)
                {
                  goto LABEL_81;
                }

                if (v27 != 1)
                {
                  if (v27 == 2)
                  {
                    goto LABEL_81;
                  }

                  goto LABEL_110;
                }
              }

LABEL_85:
              v49 = *v9;
              *v8 = *v9;
              v50 = v49;
              swift_storeEnumTagMultiPayload();
              goto LABEL_135;
            }

            goto LABEL_49;
          }

          v38 = *v9;
          *v8 = *v9;
          v55 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
          v56 = v8;
          v29 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v39 = *(v29 - 8);
          v40 = *(v39 + 48);
          v41 = v38;
          if (v40(v9 + v55, 1, v29))
          {
LABEL_44:
            v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
            v8 = v56;
            memcpy(&v56[v55], v9 + v55, *(*(v37 - 8) + 64));
LABEL_135:
            swift_storeEnumTagMultiPayload();
            goto LABEL_136;
          }

          v44 = v39;
          v8 = v56;
          v47 = swift_getEnumCaseMultiPayload();
          if (v47 > 4)
          {
            if (v47 <= 7)
            {
              if (v47 == 5 || v47 == 6)
              {
                goto LABEL_116;
              }

              goto LABEL_133;
            }

            if (v47 != 8 && v47 != 9)
            {
              goto LABEL_133;
            }
          }

          else
          {
            if (v47 > 2)
            {
              goto LABEL_116;
            }

            if (v47 != 1)
            {
              if (v47 == 2)
              {
                goto LABEL_116;
              }

              goto LABEL_133;
            }
          }

LABEL_120:
          v52 = *(v9 + v55);
          *&v56[v55] = v52;
          v53 = v52;
          swift_storeEnumTagMultiPayload();
          goto LABEL_134;
        }
      }
    }

    else
    {
      v13 = *a2;
      *a1 = *a2;
      v14 = v13;
      v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F798, &unk_21DC210E0) + 48);
      v8 = a1 + v15;
      v9 = (a2 + v15);
      v10 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
      v11 = *(v10 - 8);
      if ((*(v11 + 48))(v9, 1, v10))
      {
LABEL_10:
        v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90, &unk_21DC09290);
        memcpy(v8, v9, *(*(v16 - 8) + 64));
        goto LABEL_137;
      }

      v21 = swift_getEnumCaseMultiPayload();
      if (v21 != 2)
      {
        if (v21 != 1)
        {
          if (!v21)
          {
            v22 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
            v23 = swift_getEnumCaseMultiPayload();
            if (v23 > 4)
            {
              if (v23 <= 7)
              {
                if (v23 == 5 || v23 == 6)
                {
                  goto LABEL_81;
                }

                goto LABEL_110;
              }

              if (v23 != 8 && v23 != 9)
              {
                goto LABEL_110;
              }

              goto LABEL_85;
            }

            if (v23 > 2)
            {
              goto LABEL_81;
            }

            if (v23 == 1)
            {
              goto LABEL_85;
            }

            if (v23 != 2)
            {
              goto LABEL_110;
            }

            goto LABEL_81;
          }

LABEL_49:
          memcpy(v8, v9, *(v11 + 64));
LABEL_136:
          (*(v11 + 56))(v8, 0, 1, v10);
          goto LABEL_137;
        }

        v28 = *v9;
        *v8 = *v9;
        v55 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v56 = v8;
        v29 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v30 = *(v29 - 8);
        v31 = *(v30 + 48);
        v32 = v28;
        if (v31(v9 + v55, 1, v29))
        {
          goto LABEL_44;
        }

        v44 = v30;
        v8 = v56;
        v45 = swift_getEnumCaseMultiPayload();
        if (v45 > 4)
        {
          if (v45 <= 7)
          {
            if (v45 == 5 || v45 == 6)
            {
              goto LABEL_116;
            }

            goto LABEL_133;
          }

          if (v45 != 8 && v45 != 9)
          {
            goto LABEL_133;
          }

          goto LABEL_120;
        }

        if (v45 > 2)
        {
          goto LABEL_116;
        }

        if (v45 == 1)
        {
          goto LABEL_120;
        }

        if (v45 != 2)
        {
          goto LABEL_133;
        }

        goto LABEL_116;
      }
    }

    v42 = *v9;
    *v8 = *v9;
    v43 = v42;
    goto LABEL_135;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v17 = *(a2 + 8);
    *a1 = *a2;
    a1[1] = v17;
    sub_21DBF8E0C();
  }

  else if (EnumCaseMultiPayload == 4)
  {
    v12 = sub_21DBF6C1C();
    (*(*(v12 - 8) + 16))(a1, a2, v12);
  }

  else
  {
    v19 = *a2;
    *a1 = *a2;
    v20 = v19;
  }

LABEL_137:
  swift_storeEnumTagMultiPayload();
  return a1;
}

void *assignWithCopy for TTRUserActivityWindowSceneRestorationPayload(void *a1, void *a2)
{
  if (a1 != a2)
  {
    sub_21D66A63C(a1, type metadata accessor for TTRUserActivityWindowSceneRestorationPayload.State);
    type metadata accessor for TTRUserActivityWindowSceneRestorationPayload.State(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      if (EnumCaseMultiPayload == 3)
      {
        *a1 = *a2;
        a1[1] = a2[1];
        sub_21DBF8E0C();
      }

      else if (EnumCaseMultiPayload == 4)
      {
        v12 = sub_21DBF6C1C();
        (*(*(v12 - 8) + 16))(a1, a2, v12);
      }

      else
      {
        v18 = *a2;
        *a1 = *a2;
        v19 = v18;
      }

      goto LABEL_138;
    }

    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v5 = *a2;
        *a1 = *a2;
        v6 = v5;
        v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F798, &unk_21DC210E0) + 48);
        v8 = a1 + v7;
        v9 = (a2 + v7);
        v10 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
        v11 = *(v10 - 8);
        if ((*(v11 + 48))(v9, 1, v10))
        {
          goto LABEL_11;
        }

        v23 = swift_getEnumCaseMultiPayload();
        if (v23 != 2)
        {
          if (v23 != 1)
          {
            if (!v23)
            {
              v21 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
              v24 = swift_getEnumCaseMultiPayload();
              if (v24 > 4)
              {
                if (v24 <= 7)
                {
                  if (v24 == 5 || v24 == 6)
                  {
                    goto LABEL_82;
                  }

                  goto LABEL_111;
                }

                if (v24 != 8 && v24 != 9)
                {
                  goto LABEL_111;
                }

                goto LABEL_86;
              }

              if (v24 <= 2)
              {
                if (v24 != 1)
                {
                  if (v24 == 2)
                  {
                    goto LABEL_82;
                  }

LABEL_111:
                  memcpy(v8, v9, *(*(v21 - 8) + 64));
                  goto LABEL_136;
                }

                goto LABEL_86;
              }

LABEL_82:
              v47 = sub_21DBF563C();
              (*(*(v47 - 8) + 16))(v8, v9, v47);
              swift_storeEnumTagMultiPayload();
              goto LABEL_136;
            }

            goto LABEL_50;
          }

          v32 = *v9;
          *v8 = *v9;
          v54 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
          v55 = v8;
          v28 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v33 = *(v28 - 8);
          v34 = *(v33 + 48);
          v35 = v32;
          if (v34(v9 + v54, 1, v28))
          {
            goto LABEL_45;
          }

          v43 = v33;
          v8 = v55;
          v45 = swift_getEnumCaseMultiPayload();
          if (v45 > 4)
          {
            if (v45 <= 7)
            {
              if (v45 == 5 || v45 == 6)
              {
                goto LABEL_117;
              }

              goto LABEL_134;
            }

            if (v45 != 8 && v45 != 9)
            {
              goto LABEL_134;
            }

            goto LABEL_121;
          }

          if (v45 <= 2)
          {
            if (v45 != 1)
            {
              if (v45 == 2)
              {
                goto LABEL_117;
              }

LABEL_134:
              memcpy(&v55[v54], v9 + v54, *(v43 + 64));
              goto LABEL_135;
            }

            goto LABEL_121;
          }

LABEL_117:
          v50 = sub_21DBF563C();
          (*(*(v50 - 8) + 16))(&v55[v54], v9 + v54, v50);
          swift_storeEnumTagMultiPayload();
LABEL_135:
          (*(v43 + 56))(&v55[v54], 0, 1, v28);
          goto LABEL_136;
        }
      }

      else
      {
        *a1 = *a2;
        v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F790, &qword_21DC210D8) + 48);
        v8 = a1 + v17;
        v9 = (a2 + v17);
        v10 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
        v11 = *(v10 - 8);
        if ((*(v11 + 48))(v9, 1, v10))
        {
          goto LABEL_11;
        }

        v25 = swift_getEnumCaseMultiPayload();
        if (v25 != 2)
        {
          if (v25 != 1)
          {
            if (!v25)
            {
              v21 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
              v26 = swift_getEnumCaseMultiPayload();
              if (v26 > 4)
              {
                if (v26 <= 7)
                {
                  if (v26 == 5 || v26 == 6)
                  {
                    goto LABEL_82;
                  }

                  goto LABEL_111;
                }

                if (v26 != 8 && v26 != 9)
                {
                  goto LABEL_111;
                }
              }

              else
              {
                if (v26 > 2)
                {
                  goto LABEL_82;
                }

                if (v26 != 1)
                {
                  if (v26 == 2)
                  {
                    goto LABEL_82;
                  }

                  goto LABEL_111;
                }
              }

LABEL_86:
              v48 = *v9;
              *v8 = *v9;
              v49 = v48;
              swift_storeEnumTagMultiPayload();
              goto LABEL_136;
            }

            goto LABEL_50;
          }

          v37 = *v9;
          *v8 = *v9;
          v54 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
          v55 = v8;
          v28 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v38 = *(v28 - 8);
          v39 = *(v38 + 48);
          v40 = v37;
          if (v39(v9 + v54, 1, v28))
          {
LABEL_45:
            v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
            v8 = v55;
            memcpy(&v55[v54], v9 + v54, *(*(v36 - 8) + 64));
LABEL_136:
            swift_storeEnumTagMultiPayload();
            goto LABEL_137;
          }

          v43 = v38;
          v8 = v55;
          v46 = swift_getEnumCaseMultiPayload();
          if (v46 > 4)
          {
            if (v46 <= 7)
            {
              if (v46 == 5 || v46 == 6)
              {
                goto LABEL_117;
              }

              goto LABEL_134;
            }

            if (v46 != 8 && v46 != 9)
            {
              goto LABEL_134;
            }
          }

          else
          {
            if (v46 > 2)
            {
              goto LABEL_117;
            }

            if (v46 != 1)
            {
              if (v46 == 2)
              {
                goto LABEL_117;
              }

              goto LABEL_134;
            }
          }

LABEL_121:
          v51 = *(v9 + v54);
          *&v55[v54] = v51;
          v52 = v51;
          swift_storeEnumTagMultiPayload();
          goto LABEL_135;
        }
      }
    }

    else
    {
      v13 = *a2;
      *a1 = *a2;
      v14 = v13;
      v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F798, &unk_21DC210E0) + 48);
      v8 = a1 + v15;
      v9 = (a2 + v15);
      v10 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
      v11 = *(v10 - 8);
      if ((*(v11 + 48))(v9, 1, v10))
      {
LABEL_11:
        v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90, &unk_21DC09290);
        memcpy(v8, v9, *(*(v16 - 8) + 64));
LABEL_138:
        swift_storeEnumTagMultiPayload();
        return a1;
      }

      v20 = swift_getEnumCaseMultiPayload();
      if (v20 != 2)
      {
        if (v20 != 1)
        {
          if (!v20)
          {
            v21 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
            v22 = swift_getEnumCaseMultiPayload();
            if (v22 > 4)
            {
              if (v22 <= 7)
              {
                if (v22 == 5 || v22 == 6)
                {
                  goto LABEL_82;
                }

                goto LABEL_111;
              }

              if (v22 != 8 && v22 != 9)
              {
                goto LABEL_111;
              }

              goto LABEL_86;
            }

            if (v22 > 2)
            {
              goto LABEL_82;
            }

            if (v22 == 1)
            {
              goto LABEL_86;
            }

            if (v22 != 2)
            {
              goto LABEL_111;
            }

            goto LABEL_82;
          }

LABEL_50:
          memcpy(v8, v9, *(v11 + 64));
LABEL_137:
          (*(v11 + 56))(v8, 0, 1, v10);
          goto LABEL_138;
        }

        v27 = *v9;
        *v8 = *v9;
        v54 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v55 = v8;
        v28 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v29 = *(v28 - 8);
        v30 = *(v29 + 48);
        v31 = v27;
        if (v30(v9 + v54, 1, v28))
        {
          goto LABEL_45;
        }

        v43 = v29;
        v8 = v55;
        v44 = swift_getEnumCaseMultiPayload();
        if (v44 > 4)
        {
          if (v44 <= 7)
          {
            if (v44 == 5 || v44 == 6)
            {
              goto LABEL_117;
            }

            goto LABEL_134;
          }

          if (v44 != 8 && v44 != 9)
          {
            goto LABEL_134;
          }

          goto LABEL_121;
        }

        if (v44 > 2)
        {
          goto LABEL_117;
        }

        if (v44 == 1)
        {
          goto LABEL_121;
        }

        if (v44 != 2)
        {
          goto LABEL_134;
        }

        goto LABEL_117;
      }
    }

    v41 = *v9;
    *v8 = *v9;
    v42 = v41;
    goto LABEL_136;
  }

  return a1;
}

_BYTE *initializeWithTake for TTRUserActivityWindowSceneRestorationPayload(_BYTE *a1, _BYTE *a2)
{
  v4 = type metadata accessor for TTRUserActivityWindowSceneRestorationPayload.State(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      *a1 = *a2;
      v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F790, &qword_21DC210D8) + 48);
      v7 = &a1[v16];
      v8 = &a2[v16];
      v9 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
      v10 = *(v9 - 8);
      if ((*(v10 + 48))(v8, 1, v9))
      {
        goto LABEL_13;
      }

      v23 = swift_getEnumCaseMultiPayload();
      if (v23 != 1)
      {
        if (!v23)
        {
          v18 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v24 = swift_getEnumCaseMultiPayload();
          if (v24 <= 3)
          {
            if (v24 == 2 || v24 == 3)
            {
              goto LABEL_29;
            }
          }

          else if (v24 == 4 || v24 == 5 || v24 == 6)
          {
            goto LABEL_29;
          }

          goto LABEL_77;
        }

        goto LABEL_43;
      }

      *v7 = *v8;
      v25 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v26 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v27 = *(v26 - 8);
      if ((*(v27 + 48))(&v8[v25], 1, v26))
      {
        goto LABEL_40;
      }

      v32 = swift_getEnumCaseMultiPayload();
      if (v32 <= 3)
      {
        if (v32 == 2 || v32 == 3)
        {
          goto LABEL_62;
        }
      }

      else if (v32 == 4 || v32 == 5 || v32 == 6)
      {
        goto LABEL_62;
      }

      goto LABEL_97;
    }

    if (EnumCaseMultiPayload == 4)
    {
      v11 = sub_21DBF6C1C();
      (*(*(v11 - 8) + 32))(a1, a2, v11);
LABEL_101:
      swift_storeEnumTagMultiPayload();
      return a1;
    }
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      *a1 = *a2;
      v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F798, &unk_21DC210E0) + 48);
      v7 = &a1[v14];
      v8 = &a2[v14];
      v9 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
      v10 = *(v9 - 8);
      if ((*(v10 + 48))(v8, 1, v9))
      {
LABEL_13:
        v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90, &unk_21DC09290);
        memcpy(v7, v8, *(*(v15 - 8) + 64));
        goto LABEL_101;
      }

      v20 = swift_getEnumCaseMultiPayload();
      if (v20 != 1)
      {
        if (!v20)
        {
          v18 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v21 = swift_getEnumCaseMultiPayload();
          if (v21 <= 3)
          {
            if (v21 == 2 || v21 == 3)
            {
              goto LABEL_29;
            }
          }

          else if (v21 == 4 || v21 == 5 || v21 == 6)
          {
            goto LABEL_29;
          }

          goto LABEL_77;
        }

LABEL_43:
        memcpy(v7, v8, *(v10 + 64));
LABEL_100:
        (*(v10 + 56))(v7, 0, 1, v9);
        goto LABEL_101;
      }

      *v7 = *v8;
      v25 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v26 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v27 = *(v26 - 8);
      if ((*(v27 + 48))(&v8[v25], 1, v26))
      {
LABEL_40:
        v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
        memcpy(&v7[v25], &v8[v25], *(*(v28 - 8) + 64));
        goto LABEL_99;
      }

      v30 = swift_getEnumCaseMultiPayload();
      if (v30 <= 3)
      {
        if (v30 == 2 || v30 == 3)
        {
          goto LABEL_62;
        }
      }

      else if (v30 == 4 || v30 == 5 || v30 == 6)
      {
        goto LABEL_62;
      }

      goto LABEL_97;
    }

    if (EnumCaseMultiPayload == 1)
    {
      *a1 = *a2;
      v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F798, &unk_21DC210E0) + 48);
      v7 = &a1[v6];
      v8 = &a2[v6];
      v9 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
      v10 = *(v9 - 8);
      if ((*(v10 + 48))(v8, 1, v9))
      {
        goto LABEL_13;
      }

      v17 = swift_getEnumCaseMultiPayload();
      if (v17 != 1)
      {
        if (!v17)
        {
          v18 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v19 = swift_getEnumCaseMultiPayload();
          if (v19 <= 3)
          {
            if (v19 == 2 || v19 == 3)
            {
              goto LABEL_29;
            }
          }

          else if (v19 == 4 || v19 == 5 || v19 == 6)
          {
LABEL_29:
            v22 = sub_21DBF563C();
            (*(*(v22 - 8) + 32))(v7, v8, v22);
            swift_storeEnumTagMultiPayload();
LABEL_99:
            swift_storeEnumTagMultiPayload();
            goto LABEL_100;
          }

LABEL_77:
          memcpy(v7, v8, *(*(v18 - 8) + 64));
          goto LABEL_99;
        }

        goto LABEL_43;
      }

      *v7 = *v8;
      v25 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v26 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v27 = *(v26 - 8);
      if ((*(v27 + 48))(&v8[v25], 1, v26))
      {
        goto LABEL_40;
      }

      v29 = swift_getEnumCaseMultiPayload();
      if (v29 <= 3)
      {
        if (v29 == 2 || v29 == 3)
        {
          goto LABEL_62;
        }
      }

      else if (v29 == 4 || v29 == 5 || v29 == 6)
      {
LABEL_62:
        v31 = sub_21DBF563C();
        (*(*(v31 - 8) + 32))(&v7[v25], &v8[v25], v31);
        swift_storeEnumTagMultiPayload();
LABEL_98:
        (*(v27 + 56))(&v7[v25], 0, 1, v26);
        goto LABEL_99;
      }

LABEL_97:
      memcpy(&v7[v25], &v8[v25], *(v27 + 64));
      goto LABEL_98;
    }
  }

  v12 = *(*(v4 - 8) + 64);

  return memcpy(a1, a2, v12);
}

_BYTE *assignWithTake for TTRUserActivityWindowSceneRestorationPayload(_BYTE *a1, _BYTE *a2)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_21D66A63C(a1, type metadata accessor for TTRUserActivityWindowSceneRestorationPayload.State);
  v4 = type metadata accessor for TTRUserActivityWindowSceneRestorationPayload.State(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      *a1 = *a2;
      v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F790, &qword_21DC210D8) + 48);
      v7 = &a1[v16];
      v8 = &a2[v16];
      v9 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
      v10 = *(v9 - 8);
      if ((*(v10 + 48))(v8, 1, v9))
      {
        goto LABEL_14;
      }

      v23 = swift_getEnumCaseMultiPayload();
      if (v23 != 1)
      {
        if (!v23)
        {
          v18 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v24 = swift_getEnumCaseMultiPayload();
          if (v24 <= 3)
          {
            if (v24 == 2 || v24 == 3)
            {
              goto LABEL_30;
            }
          }

          else if (v24 == 4 || v24 == 5 || v24 == 6)
          {
            goto LABEL_30;
          }

          goto LABEL_78;
        }

        goto LABEL_44;
      }

      *v7 = *v8;
      v25 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v26 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v27 = *(v26 - 8);
      if ((*(v27 + 48))(&v8[v25], 1, v26))
      {
        goto LABEL_41;
      }

      v32 = swift_getEnumCaseMultiPayload();
      if (v32 <= 3)
      {
        if (v32 == 2 || v32 == 3)
        {
          goto LABEL_63;
        }
      }

      else if (v32 == 4 || v32 == 5 || v32 == 6)
      {
        goto LABEL_63;
      }

      goto LABEL_98;
    }

    if (EnumCaseMultiPayload == 4)
    {
      v11 = sub_21DBF6C1C();
      (*(*(v11 - 8) + 32))(a1, a2, v11);
LABEL_102:
      swift_storeEnumTagMultiPayload();
      return a1;
    }
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      *a1 = *a2;
      v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F798, &unk_21DC210E0) + 48);
      v7 = &a1[v14];
      v8 = &a2[v14];
      v9 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
      v10 = *(v9 - 8);
      if ((*(v10 + 48))(v8, 1, v9))
      {
LABEL_14:
        v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90, &unk_21DC09290);
        memcpy(v7, v8, *(*(v15 - 8) + 64));
        goto LABEL_102;
      }

      v20 = swift_getEnumCaseMultiPayload();
      if (v20 != 1)
      {
        if (!v20)
        {
          v18 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v21 = swift_getEnumCaseMultiPayload();
          if (v21 <= 3)
          {
            if (v21 == 2 || v21 == 3)
            {
              goto LABEL_30;
            }
          }

          else if (v21 == 4 || v21 == 5 || v21 == 6)
          {
            goto LABEL_30;
          }

          goto LABEL_78;
        }

LABEL_44:
        memcpy(v7, v8, *(v10 + 64));
LABEL_101:
        (*(v10 + 56))(v7, 0, 1, v9);
        goto LABEL_102;
      }

      *v7 = *v8;
      v25 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v26 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v27 = *(v26 - 8);
      if ((*(v27 + 48))(&v8[v25], 1, v26))
      {
LABEL_41:
        v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
        memcpy(&v7[v25], &v8[v25], *(*(v28 - 8) + 64));
        goto LABEL_100;
      }

      v30 = swift_getEnumCaseMultiPayload();
      if (v30 <= 3)
      {
        if (v30 == 2 || v30 == 3)
        {
          goto LABEL_63;
        }
      }

      else if (v30 == 4 || v30 == 5 || v30 == 6)
      {
        goto LABEL_63;
      }

      goto LABEL_98;
    }

    if (EnumCaseMultiPayload == 1)
    {
      *a1 = *a2;
      v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F798, &unk_21DC210E0) + 48);
      v7 = &a1[v6];
      v8 = &a2[v6];
      v9 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
      v10 = *(v9 - 8);
      if ((*(v10 + 48))(v8, 1, v9))
      {
        goto LABEL_14;
      }

      v17 = swift_getEnumCaseMultiPayload();
      if (v17 != 1)
      {
        if (!v17)
        {
          v18 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v19 = swift_getEnumCaseMultiPayload();
          if (v19 <= 3)
          {
            if (v19 == 2 || v19 == 3)
            {
              goto LABEL_30;
            }
          }

          else if (v19 == 4 || v19 == 5 || v19 == 6)
          {
LABEL_30:
            v22 = sub_21DBF563C();
            (*(*(v22 - 8) + 32))(v7, v8, v22);
            swift_storeEnumTagMultiPayload();
LABEL_100:
            swift_storeEnumTagMultiPayload();
            goto LABEL_101;
          }

LABEL_78:
          memcpy(v7, v8, *(*(v18 - 8) + 64));
          goto LABEL_100;
        }

        goto LABEL_44;
      }

      *v7 = *v8;
      v25 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v26 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v27 = *(v26 - 8);
      if ((*(v27 + 48))(&v8[v25], 1, v26))
      {
        goto LABEL_41;
      }

      v29 = swift_getEnumCaseMultiPayload();
      if (v29 <= 3)
      {
        if (v29 == 2 || v29 == 3)
        {
          goto LABEL_63;
        }
      }

      else if (v29 == 4 || v29 == 5 || v29 == 6)
      {
LABEL_63:
        v31 = sub_21DBF563C();
        (*(*(v31 - 8) + 32))(&v7[v25], &v8[v25], v31);
        swift_storeEnumTagMultiPayload();
LABEL_99:
        (*(v27 + 56))(&v7[v25], 0, 1, v26);
        goto LABEL_100;
      }

LABEL_98:
      memcpy(&v7[v25], &v8[v25], *(v27 + 64));
      goto LABEL_99;
    }
  }

  v12 = *(*(v4 - 8) + 64);

  return memcpy(a1, a2, v12);
}

void *initializeBufferWithCopyOfBuffer for TTRUserActivityWindowSceneRestorationPayload.State(void *a1, void *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) == 0)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      if (EnumCaseMultiPayload == 3)
      {
        v20 = a2[1];
        *a1 = *a2;
        a1[1] = v20;
        sub_21DBF8E0C();
      }

      else if (EnumCaseMultiPayload == 4)
      {
        v15 = sub_21DBF6C1C();
        (*(*(v15 - 8) + 16))(a1, a2, v15);
      }

      else
      {
        v22 = *a2;
        *a1 = *a2;
        v23 = v22;
      }

      goto LABEL_139;
    }

    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v7 = *a2;
        *a1 = *a2;
        v8 = v7;
        v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F798, &unk_21DC210E0) + 48);
        v10 = a1 + v9;
        v11 = (a2 + v9);
        v12 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
        v13 = *(v12 - 8);
        if ((*(v13 + 48))(v11, 1, v12))
        {
          goto LABEL_12;
        }

        v27 = swift_getEnumCaseMultiPayload();
        if (v27 != 2)
        {
          if (v27 != 1)
          {
            if (!v27)
            {
              v25 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
              v28 = swift_getEnumCaseMultiPayload();
              if (v28 > 4)
              {
                if (v28 <= 7)
                {
                  if (v28 == 5 || v28 == 6)
                  {
                    goto LABEL_83;
                  }

                  goto LABEL_112;
                }

                if (v28 != 8 && v28 != 9)
                {
                  goto LABEL_112;
                }

                goto LABEL_87;
              }

              if (v28 <= 2)
              {
                if (v28 != 1)
                {
                  if (v28 == 2)
                  {
                    goto LABEL_83;
                  }

LABEL_112:
                  memcpy(v10, v11, *(*(v25 - 8) + 64));
                  goto LABEL_137;
                }

                goto LABEL_87;
              }

LABEL_83:
              v51 = sub_21DBF563C();
              (*(*(v51 - 8) + 16))(v10, v11, v51);
              swift_storeEnumTagMultiPayload();
              goto LABEL_137;
            }

            goto LABEL_51;
          }

          v36 = *v11;
          *v10 = *v11;
          v58 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
          v59 = v10;
          v32 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v37 = *(v32 - 8);
          v38 = *(v37 + 48);
          v39 = v36;
          if (v38(v11 + v58, 1, v32))
          {
            goto LABEL_46;
          }

          v47 = v37;
          v10 = v59;
          v49 = swift_getEnumCaseMultiPayload();
          if (v49 > 4)
          {
            if (v49 <= 7)
            {
              if (v49 == 5 || v49 == 6)
              {
                goto LABEL_118;
              }

              goto LABEL_135;
            }

            if (v49 != 8 && v49 != 9)
            {
              goto LABEL_135;
            }

            goto LABEL_122;
          }

          if (v49 <= 2)
          {
            if (v49 != 1)
            {
              if (v49 == 2)
              {
                goto LABEL_118;
              }

LABEL_135:
              memcpy(&v59[v58], v11 + v58, *(v47 + 64));
              goto LABEL_136;
            }

            goto LABEL_122;
          }

LABEL_118:
          v54 = sub_21DBF563C();
          (*(*(v54 - 8) + 16))(&v59[v58], v11 + v58, v54);
          swift_storeEnumTagMultiPayload();
LABEL_136:
          (*(v47 + 56))(&v59[v58], 0, 1, v32);
          goto LABEL_137;
        }
      }

      else
      {
        *a1 = *a2;
        v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F790, &qword_21DC210D8) + 48);
        v10 = a1 + v21;
        v11 = (a2 + v21);
        v12 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
        v13 = *(v12 - 8);
        if ((*(v13 + 48))(v11, 1, v12))
        {
          goto LABEL_12;
        }

        v29 = swift_getEnumCaseMultiPayload();
        if (v29 != 2)
        {
          if (v29 != 1)
          {
            if (!v29)
            {
              v25 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
              v30 = swift_getEnumCaseMultiPayload();
              if (v30 > 4)
              {
                if (v30 <= 7)
                {
                  if (v30 == 5 || v30 == 6)
                  {
                    goto LABEL_83;
                  }

                  goto LABEL_112;
                }

                if (v30 != 8 && v30 != 9)
                {
                  goto LABEL_112;
                }
              }

              else
              {
                if (v30 > 2)
                {
                  goto LABEL_83;
                }

                if (v30 != 1)
                {
                  if (v30 == 2)
                  {
                    goto LABEL_83;
                  }

                  goto LABEL_112;
                }
              }

LABEL_87:
              v52 = *v11;
              *v10 = *v11;
              v53 = v52;
              swift_storeEnumTagMultiPayload();
              goto LABEL_137;
            }

            goto LABEL_51;
          }

          v41 = *v11;
          *v10 = *v11;
          v58 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
          v59 = v10;
          v32 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v42 = *(v32 - 8);
          v43 = *(v42 + 48);
          v44 = v41;
          if (v43(v11 + v58, 1, v32))
          {
LABEL_46:
            v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
            v10 = v59;
            memcpy(&v59[v58], v11 + v58, *(*(v40 - 8) + 64));
LABEL_137:
            swift_storeEnumTagMultiPayload();
            goto LABEL_138;
          }

          v47 = v42;
          v10 = v59;
          v50 = swift_getEnumCaseMultiPayload();
          if (v50 > 4)
          {
            if (v50 <= 7)
            {
              if (v50 == 5 || v50 == 6)
              {
                goto LABEL_118;
              }

              goto LABEL_135;
            }

            if (v50 != 8 && v50 != 9)
            {
              goto LABEL_135;
            }
          }

          else
          {
            if (v50 > 2)
            {
              goto LABEL_118;
            }

            if (v50 != 1)
            {
              if (v50 == 2)
              {
                goto LABEL_118;
              }

              goto LABEL_135;
            }
          }

LABEL_122:
          v55 = *(v11 + v58);
          *&v59[v58] = v55;
          v56 = v55;
          swift_storeEnumTagMultiPayload();
          goto LABEL_136;
        }
      }
    }

    else
    {
      v16 = *a2;
      *a1 = *a2;
      v17 = v16;
      v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F798, &unk_21DC210E0) + 48);
      v10 = a1 + v18;
      v11 = (a2 + v18);
      v12 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
      v13 = *(v12 - 8);
      if ((*(v13 + 48))(v11, 1, v12))
      {
LABEL_12:
        v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90, &unk_21DC09290);
        memcpy(v10, v11, *(*(v19 - 8) + 64));
LABEL_139:
        swift_storeEnumTagMultiPayload();
        return a1;
      }

      v24 = swift_getEnumCaseMultiPayload();
      if (v24 != 2)
      {
        if (v24 != 1)
        {
          if (!v24)
          {
            v25 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
            v26 = swift_getEnumCaseMultiPayload();
            if (v26 > 4)
            {
              if (v26 <= 7)
              {
                if (v26 == 5 || v26 == 6)
                {
                  goto LABEL_83;
                }

                goto LABEL_112;
              }

              if (v26 != 8 && v26 != 9)
              {
                goto LABEL_112;
              }

              goto LABEL_87;
            }

            if (v26 > 2)
            {
              goto LABEL_83;
            }

            if (v26 == 1)
            {
              goto LABEL_87;
            }

            if (v26 != 2)
            {
              goto LABEL_112;
            }

            goto LABEL_83;
          }

LABEL_51:
          memcpy(v10, v11, *(v13 + 64));
LABEL_138:
          (*(v13 + 56))(v10, 0, 1, v12);
          goto LABEL_139;
        }

        v31 = *v11;
        *v10 = *v11;
        v58 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v59 = v10;
        v32 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v33 = *(v32 - 8);
        v34 = *(v33 + 48);
        v35 = v31;
        if (v34(v11 + v58, 1, v32))
        {
          goto LABEL_46;
        }

        v47 = v33;
        v10 = v59;
        v48 = swift_getEnumCaseMultiPayload();
        if (v48 > 4)
        {
          if (v48 <= 7)
          {
            if (v48 == 5 || v48 == 6)
            {
              goto LABEL_118;
            }

            goto LABEL_135;
          }

          if (v48 != 8 && v48 != 9)
          {
            goto LABEL_135;
          }

          goto LABEL_122;
        }

        if (v48 > 2)
        {
          goto LABEL_118;
        }

        if (v48 == 1)
        {
          goto LABEL_122;
        }

        if (v48 != 2)
        {
          goto LABEL_135;
        }

        goto LABEL_118;
      }
    }

    v45 = *v11;
    *v10 = *v11;
    v46 = v45;
    goto LABEL_137;
  }

  v14 = *a2;
  *a1 = *a2;
  a1 = (v14 + ((v5 + 16) & ~v5));

  return a1;
}

void destroy for TTRUserActivityWindowSceneRestorationPayload.State(id *a1, uint64_t a2)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {

      return;
    }

    if (EnumCaseMultiPayload == 4)
    {
      v9 = sub_21DBF6C1C();
LABEL_24:
      v10 = *(*(v9 - 8) + 8);
      v11 = v9;
      v12 = a1;
LABEL_25:

      v10(v12, v11);
      return;
    }

    if (EnumCaseMultiPayload != 5)
    {
      return;
    }

    goto LABEL_40;
  }

  if (EnumCaseMultiPayload < 2)
  {

    v4 = &qword_27CE5F798;
    v5 = &unk_21DC210E0;
  }

  else
  {
    if (EnumCaseMultiPayload != 2)
    {
      return;
    }

    v4 = &qword_27CE5F790;
    v5 = &qword_21DC210D8;
  }

  a1 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(v4, v5) + 48));
  v6 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  if (!(*(*(v6 - 8) + 48))(a1, 1, v6))
  {
    v7 = swift_getEnumCaseMultiPayload();
    if (v7 != 2)
    {
      if (v7 != 1)
      {
        if (v7)
        {
          return;
        }

        type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v8 = swift_getEnumCaseMultiPayload();
        if (v8 > 4)
        {
          if (v8 <= 7)
          {
            if (v8 != 5 && v8 != 6)
            {
              return;
            }

            goto LABEL_37;
          }

          if (v8 != 8 && v8 != 9)
          {
            return;
          }
        }

        else
        {
          if (v8 > 2)
          {
LABEL_37:
            v9 = sub_21DBF563C();
            goto LABEL_24;
          }

          if (v8 != 1)
          {
            if (v8 != 2)
            {
              return;
            }

            goto LABEL_37;
          }
        }

        goto LABEL_40;
      }

      v13 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v14 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      if ((*(*(v14 - 8) + 48))(a1 + v13, 1, v14))
      {
        return;
      }

      v15 = swift_getEnumCaseMultiPayload();
      if (v15 > 4)
      {
        if (v15 <= 7)
        {
          if (v15 != 5 && v15 != 6)
          {
            return;
          }

          goto LABEL_47;
        }

        if (v15 != 8 && v15 != 9)
        {
          return;
        }
      }

      else
      {
        if (v15 > 2)
        {
LABEL_47:
          v11 = sub_21DBF563C();
          v10 = *(*(v11 - 8) + 8);
          v12 = (a1 + v13);
          goto LABEL_25;
        }

        if (v15 != 1)
        {
          if (v15 != 2)
          {
            return;
          }

          goto LABEL_47;
        }
      }

      v16 = *(a1 + v13);
      goto LABEL_41;
    }

LABEL_40:
    v16 = *a1;
LABEL_41:
  }
}

void *initializeWithCopy for TTRUserActivityWindowSceneRestorationPayload.State(void *a1, uint64_t a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v6 = *a2;
        *a1 = *a2;
        v7 = v6;
        v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F798, &unk_21DC210E0) + 48);
        v9 = a1 + v8;
        v10 = (a2 + v8);
        v11 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
        v12 = *(v11 - 8);
        if ((*(v12 + 48))(v10, 1, v11))
        {
          goto LABEL_10;
        }

        v25 = swift_getEnumCaseMultiPayload();
        if (v25 != 2)
        {
          if (v25 != 1)
          {
            if (!v25)
            {
              v23 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
              v26 = swift_getEnumCaseMultiPayload();
              if (v26 > 4)
              {
                if (v26 <= 7)
                {
                  if (v26 == 5 || v26 == 6)
                  {
                    goto LABEL_81;
                  }

                  goto LABEL_110;
                }

                if (v26 != 8 && v26 != 9)
                {
                  goto LABEL_110;
                }

                goto LABEL_85;
              }

              if (v26 <= 2)
              {
                if (v26 != 1)
                {
                  if (v26 == 2)
                  {
                    goto LABEL_81;
                  }

LABEL_110:
                  memcpy(v9, v10, *(*(v23 - 8) + 64));
                  goto LABEL_135;
                }

                goto LABEL_85;
              }

LABEL_81:
              v49 = sub_21DBF563C();
              (*(*(v49 - 8) + 16))(v9, v10, v49);
              swift_storeEnumTagMultiPayload();
              goto LABEL_135;
            }

            goto LABEL_49;
          }

          v34 = *v10;
          *v9 = *v10;
          v56 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
          v57 = v9;
          v30 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v35 = *(v30 - 8);
          v36 = *(v35 + 48);
          v37 = v34;
          if (v36(v10 + v56, 1, v30))
          {
            goto LABEL_44;
          }

          v45 = v35;
          v9 = v57;
          v47 = swift_getEnumCaseMultiPayload();
          if (v47 > 4)
          {
            if (v47 <= 7)
            {
              if (v47 == 5 || v47 == 6)
              {
                goto LABEL_116;
              }

              goto LABEL_133;
            }

            if (v47 != 8 && v47 != 9)
            {
              goto LABEL_133;
            }

            goto LABEL_120;
          }

          if (v47 <= 2)
          {
            if (v47 != 1)
            {
              if (v47 == 2)
              {
                goto LABEL_116;
              }

LABEL_133:
              memcpy(&v57[v56], v10 + v56, *(v45 + 64));
              goto LABEL_134;
            }

            goto LABEL_120;
          }

LABEL_116:
          v52 = sub_21DBF563C();
          (*(*(v52 - 8) + 16))(&v57[v56], v10 + v56, v52);
          swift_storeEnumTagMultiPayload();
LABEL_134:
          (*(v45 + 56))(&v57[v56], 0, 1, v30);
          goto LABEL_135;
        }
      }

      else
      {
        *a1 = *a2;
        v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F790, &qword_21DC210D8) + 48);
        v9 = a1 + v19;
        v10 = (a2 + v19);
        v11 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
        v12 = *(v11 - 8);
        if ((*(v12 + 48))(v10, 1, v11))
        {
          goto LABEL_10;
        }

        v27 = swift_getEnumCaseMultiPayload();
        if (v27 != 2)
        {
          if (v27 != 1)
          {
            if (!v27)
            {
              v23 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
              v28 = swift_getEnumCaseMultiPayload();
              if (v28 > 4)
              {
                if (v28 <= 7)
                {
                  if (v28 == 5 || v28 == 6)
                  {
                    goto LABEL_81;
                  }

                  goto LABEL_110;
                }

                if (v28 != 8 && v28 != 9)
                {
                  goto LABEL_110;
                }
              }

              else
              {
                if (v28 > 2)
                {
                  goto LABEL_81;
                }

                if (v28 != 1)
                {
                  if (v28 == 2)
                  {
                    goto LABEL_81;
                  }

                  goto LABEL_110;
                }
              }

LABEL_85:
              v50 = *v10;
              *v9 = *v10;
              v51 = v50;
              swift_storeEnumTagMultiPayload();
              goto LABEL_135;
            }

            goto LABEL_49;
          }

          v39 = *v10;
          *v9 = *v10;
          v56 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
          v57 = v9;
          v30 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v40 = *(v30 - 8);
          v41 = *(v40 + 48);
          v42 = v39;
          if (v41(v10 + v56, 1, v30))
          {
LABEL_44:
            v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
            v9 = v57;
            memcpy(&v57[v56], v10 + v56, *(*(v38 - 8) + 64));
LABEL_135:
            swift_storeEnumTagMultiPayload();
            goto LABEL_136;
          }

          v45 = v40;
          v9 = v57;
          v48 = swift_getEnumCaseMultiPayload();
          if (v48 > 4)
          {
            if (v48 <= 7)
            {
              if (v48 == 5 || v48 == 6)
              {
                goto LABEL_116;
              }

              goto LABEL_133;
            }

            if (v48 != 8 && v48 != 9)
            {
              goto LABEL_133;
            }
          }

          else
          {
            if (v48 > 2)
            {
              goto LABEL_116;
            }

            if (v48 != 1)
            {
              if (v48 == 2)
              {
                goto LABEL_116;
              }

              goto LABEL_133;
            }
          }

LABEL_120:
          v53 = *(v10 + v56);
          *&v57[v56] = v53;
          v54 = v53;
          swift_storeEnumTagMultiPayload();
          goto LABEL_134;
        }
      }
    }

    else
    {
      v14 = *a2;
      *a1 = *a2;
      v15 = v14;
      v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F798, &unk_21DC210E0) + 48);
      v9 = a1 + v16;
      v10 = (a2 + v16);
      v11 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
      v12 = *(v11 - 8);
      if ((*(v12 + 48))(v10, 1, v11))
      {
LABEL_10:
        v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90, &unk_21DC09290);
        memcpy(v9, v10, *(*(v17 - 8) + 64));
        goto LABEL_137;
      }

      v22 = swift_getEnumCaseMultiPayload();
      if (v22 != 2)
      {
        if (v22 != 1)
        {
          if (!v22)
          {
            v23 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
            v24 = swift_getEnumCaseMultiPayload();
            if (v24 > 4)
            {
              if (v24 <= 7)
              {
                if (v24 == 5 || v24 == 6)
                {
                  goto LABEL_81;
                }

                goto LABEL_110;
              }

              if (v24 != 8 && v24 != 9)
              {
                goto LABEL_110;
              }

              goto LABEL_85;
            }

            if (v24 > 2)
            {
              goto LABEL_81;
            }

            if (v24 == 1)
            {
              goto LABEL_85;
            }

            if (v24 != 2)
            {
              goto LABEL_110;
            }

            goto LABEL_81;
          }

LABEL_49:
          memcpy(v9, v10, *(v12 + 64));
LABEL_136:
          (*(v12 + 56))(v9, 0, 1, v11);
          goto LABEL_137;
        }

        v29 = *v10;
        *v9 = *v10;
        v56 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v57 = v9;
        v30 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v31 = *(v30 - 8);
        v32 = *(v31 + 48);
        v33 = v29;
        if (v32(v10 + v56, 1, v30))
        {
          goto LABEL_44;
        }

        v45 = v31;
        v9 = v57;
        v46 = swift_getEnumCaseMultiPayload();
        if (v46 > 4)
        {
          if (v46 <= 7)
          {
            if (v46 == 5 || v46 == 6)
            {
              goto LABEL_116;
            }

            goto LABEL_133;
          }

          if (v46 != 8 && v46 != 9)
          {
            goto LABEL_133;
          }

          goto LABEL_120;
        }

        if (v46 > 2)
        {
          goto LABEL_116;
        }

        if (v46 == 1)
        {
          goto LABEL_120;
        }

        if (v46 != 2)
        {
          goto LABEL_133;
        }

        goto LABEL_116;
      }
    }

    v43 = *v10;
    *v9 = *v10;
    v44 = v43;
    goto LABEL_135;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v18 = *(a2 + 8);
    *a1 = *a2;
    a1[1] = v18;
    sub_21DBF8E0C();
  }

  else if (EnumCaseMultiPayload == 4)
  {
    v13 = sub_21DBF6C1C();
    (*(*(v13 - 8) + 16))(a1, a2, v13);
  }

  else
  {
    v20 = *a2;
    *a1 = *a2;
    v21 = v20;
  }

LABEL_137:
  swift_storeEnumTagMultiPayload();
  return a1;
}

void *assignWithCopy for TTRUserActivityWindowSceneRestorationPayload.State(void *a1, void *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    sub_21D66A63C(a1, type metadata accessor for TTRUserActivityWindowSceneRestorationPayload.State);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      if (EnumCaseMultiPayload == 3)
      {
        *a1 = *a2;
        a1[1] = a2[1];
        sub_21DBF8E0C();
      }

      else if (EnumCaseMultiPayload == 4)
      {
        v13 = sub_21DBF6C1C();
        (*(*(v13 - 8) + 16))(a1, a2, v13);
      }

      else
      {
        v19 = *a2;
        *a1 = *a2;
        v20 = v19;
      }

      goto LABEL_138;
    }

    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v6 = *a2;
        *a1 = *a2;
        v7 = v6;
        v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F798, &unk_21DC210E0) + 48);
        v9 = a1 + v8;
        v10 = (a2 + v8);
        v11 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
        v12 = *(v11 - 8);
        if ((*(v12 + 48))(v10, 1, v11))
        {
          goto LABEL_11;
        }

        v24 = swift_getEnumCaseMultiPayload();
        if (v24 != 2)
        {
          if (v24 != 1)
          {
            if (!v24)
            {
              v22 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
              v25 = swift_getEnumCaseMultiPayload();
              if (v25 > 4)
              {
                if (v25 <= 7)
                {
                  if (v25 == 5 || v25 == 6)
                  {
                    goto LABEL_82;
                  }

                  goto LABEL_111;
                }

                if (v25 != 8 && v25 != 9)
                {
                  goto LABEL_111;
                }

                goto LABEL_86;
              }

              if (v25 <= 2)
              {
                if (v25 != 1)
                {
                  if (v25 == 2)
                  {
                    goto LABEL_82;
                  }

LABEL_111:
                  memcpy(v9, v10, *(*(v22 - 8) + 64));
                  goto LABEL_136;
                }

                goto LABEL_86;
              }

LABEL_82:
              v48 = sub_21DBF563C();
              (*(*(v48 - 8) + 16))(v9, v10, v48);
              swift_storeEnumTagMultiPayload();
              goto LABEL_136;
            }

            goto LABEL_50;
          }

          v33 = *v10;
          *v9 = *v10;
          v55 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
          v56 = v9;
          v29 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v34 = *(v29 - 8);
          v35 = *(v34 + 48);
          v36 = v33;
          if (v35(v10 + v55, 1, v29))
          {
            goto LABEL_45;
          }

          v44 = v34;
          v9 = v56;
          v46 = swift_getEnumCaseMultiPayload();
          if (v46 > 4)
          {
            if (v46 <= 7)
            {
              if (v46 == 5 || v46 == 6)
              {
                goto LABEL_117;
              }

              goto LABEL_134;
            }

            if (v46 != 8 && v46 != 9)
            {
              goto LABEL_134;
            }

            goto LABEL_121;
          }

          if (v46 <= 2)
          {
            if (v46 != 1)
            {
              if (v46 == 2)
              {
                goto LABEL_117;
              }

LABEL_134:
              memcpy(&v56[v55], v10 + v55, *(v44 + 64));
              goto LABEL_135;
            }

            goto LABEL_121;
          }

LABEL_117:
          v51 = sub_21DBF563C();
          (*(*(v51 - 8) + 16))(&v56[v55], v10 + v55, v51);
          swift_storeEnumTagMultiPayload();
LABEL_135:
          (*(v44 + 56))(&v56[v55], 0, 1, v29);
          goto LABEL_136;
        }
      }

      else
      {
        *a1 = *a2;
        v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F790, &qword_21DC210D8) + 48);
        v9 = a1 + v18;
        v10 = (a2 + v18);
        v11 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
        v12 = *(v11 - 8);
        if ((*(v12 + 48))(v10, 1, v11))
        {
          goto LABEL_11;
        }

        v26 = swift_getEnumCaseMultiPayload();
        if (v26 != 2)
        {
          if (v26 != 1)
          {
            if (!v26)
            {
              v22 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
              v27 = swift_getEnumCaseMultiPayload();
              if (v27 > 4)
              {
                if (v27 <= 7)
                {
                  if (v27 == 5 || v27 == 6)
                  {
                    goto LABEL_82;
                  }

                  goto LABEL_111;
                }

                if (v27 != 8 && v27 != 9)
                {
                  goto LABEL_111;
                }
              }

              else
              {
                if (v27 > 2)
                {
                  goto LABEL_82;
                }

                if (v27 != 1)
                {
                  if (v27 == 2)
                  {
                    goto LABEL_82;
                  }

                  goto LABEL_111;
                }
              }

LABEL_86:
              v49 = *v10;
              *v9 = *v10;
              v50 = v49;
              swift_storeEnumTagMultiPayload();
              goto LABEL_136;
            }

            goto LABEL_50;
          }

          v38 = *v10;
          *v9 = *v10;
          v55 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
          v56 = v9;
          v29 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v39 = *(v29 - 8);
          v40 = *(v39 + 48);
          v41 = v38;
          if (v40(v10 + v55, 1, v29))
          {
LABEL_45:
            v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
            v9 = v56;
            memcpy(&v56[v55], v10 + v55, *(*(v37 - 8) + 64));
LABEL_136:
            swift_storeEnumTagMultiPayload();
            goto LABEL_137;
          }

          v44 = v39;
          v9 = v56;
          v47 = swift_getEnumCaseMultiPayload();
          if (v47 > 4)
          {
            if (v47 <= 7)
            {
              if (v47 == 5 || v47 == 6)
              {
                goto LABEL_117;
              }

              goto LABEL_134;
            }

            if (v47 != 8 && v47 != 9)
            {
              goto LABEL_134;
            }
          }

          else
          {
            if (v47 > 2)
            {
              goto LABEL_117;
            }

            if (v47 != 1)
            {
              if (v47 == 2)
              {
                goto LABEL_117;
              }

              goto LABEL_134;
            }
          }

LABEL_121:
          v52 = *(v10 + v55);
          *&v56[v55] = v52;
          v53 = v52;
          swift_storeEnumTagMultiPayload();
          goto LABEL_135;
        }
      }
    }

    else
    {
      v14 = *a2;
      *a1 = *a2;
      v15 = v14;
      v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F798, &unk_21DC210E0) + 48);
      v9 = a1 + v16;
      v10 = (a2 + v16);
      v11 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
      v12 = *(v11 - 8);
      if ((*(v12 + 48))(v10, 1, v11))
      {
LABEL_11:
        v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90, &unk_21DC09290);
        memcpy(v9, v10, *(*(v17 - 8) + 64));
LABEL_138:
        swift_storeEnumTagMultiPayload();
        return a1;
      }

      v21 = swift_getEnumCaseMultiPayload();
      if (v21 != 2)
      {
        if (v21 != 1)
        {
          if (!v21)
          {
            v22 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
            v23 = swift_getEnumCaseMultiPayload();
            if (v23 > 4)
            {
              if (v23 <= 7)
              {
                if (v23 == 5 || v23 == 6)
                {
                  goto LABEL_82;
                }

                goto LABEL_111;
              }

              if (v23 != 8 && v23 != 9)
              {
                goto LABEL_111;
              }

              goto LABEL_86;
            }

            if (v23 > 2)
            {
              goto LABEL_82;
            }

            if (v23 == 1)
            {
              goto LABEL_86;
            }

            if (v23 != 2)
            {
              goto LABEL_111;
            }

            goto LABEL_82;
          }

LABEL_50:
          memcpy(v9, v10, *(v12 + 64));
LABEL_137:
          (*(v12 + 56))(v9, 0, 1, v11);
          goto LABEL_138;
        }

        v28 = *v10;
        *v9 = *v10;
        v55 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
        v56 = v9;
        v29 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
        v30 = *(v29 - 8);
        v31 = *(v30 + 48);
        v32 = v28;
        if (v31(v10 + v55, 1, v29))
        {
          goto LABEL_45;
        }

        v44 = v30;
        v9 = v56;
        v45 = swift_getEnumCaseMultiPayload();
        if (v45 > 4)
        {
          if (v45 <= 7)
          {
            if (v45 == 5 || v45 == 6)
            {
              goto LABEL_117;
            }

            goto LABEL_134;
          }

          if (v45 != 8 && v45 != 9)
          {
            goto LABEL_134;
          }

          goto LABEL_121;
        }

        if (v45 > 2)
        {
          goto LABEL_117;
        }

        if (v45 == 1)
        {
          goto LABEL_121;
        }

        if (v45 != 2)
        {
          goto LABEL_134;
        }

        goto LABEL_117;
      }
    }

    v42 = *v10;
    *v9 = *v10;
    v43 = v42;
    goto LABEL_136;
  }

  return a1;
}

_BYTE *initializeWithTake for TTRUserActivityWindowSceneRestorationPayload.State(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      *a1 = *a2;
      v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F790, &qword_21DC210D8) + 48);
      v8 = &a1[v17];
      v9 = &a2[v17];
      v10 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
      v11 = *(v10 - 8);
      if ((*(v11 + 48))(v9, 1, v10))
      {
        goto LABEL_13;
      }

      v24 = swift_getEnumCaseMultiPayload();
      if (v24 != 1)
      {
        if (!v24)
        {
          v19 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v25 = swift_getEnumCaseMultiPayload();
          if (v25 <= 3)
          {
            if (v25 == 2 || v25 == 3)
            {
              goto LABEL_29;
            }
          }

          else if (v25 == 4 || v25 == 5 || v25 == 6)
          {
            goto LABEL_29;
          }

          goto LABEL_77;
        }

        goto LABEL_43;
      }

      *v8 = *v9;
      v26 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v27 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v28 = *(v27 - 8);
      if ((*(v28 + 48))(&v9[v26], 1, v27))
      {
        goto LABEL_40;
      }

      v33 = swift_getEnumCaseMultiPayload();
      if (v33 <= 3)
      {
        if (v33 == 2 || v33 == 3)
        {
          goto LABEL_62;
        }
      }

      else if (v33 == 4 || v33 == 5 || v33 == 6)
      {
        goto LABEL_62;
      }

      goto LABEL_97;
    }

    if (EnumCaseMultiPayload == 4)
    {
      v12 = sub_21DBF6C1C();
      (*(*(v12 - 8) + 32))(a1, a2, v12);
LABEL_101:
      swift_storeEnumTagMultiPayload();
      return a1;
    }
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      *a1 = *a2;
      v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F798, &unk_21DC210E0) + 48);
      v8 = &a1[v15];
      v9 = &a2[v15];
      v10 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
      v11 = *(v10 - 8);
      if ((*(v11 + 48))(v9, 1, v10))
      {
LABEL_13:
        v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90, &unk_21DC09290);
        memcpy(v8, v9, *(*(v16 - 8) + 64));
        goto LABEL_101;
      }

      v21 = swift_getEnumCaseMultiPayload();
      if (v21 != 1)
      {
        if (!v21)
        {
          v19 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v22 = swift_getEnumCaseMultiPayload();
          if (v22 <= 3)
          {
            if (v22 == 2 || v22 == 3)
            {
              goto LABEL_29;
            }
          }

          else if (v22 == 4 || v22 == 5 || v22 == 6)
          {
            goto LABEL_29;
          }

          goto LABEL_77;
        }

LABEL_43:
        memcpy(v8, v9, *(v11 + 64));
LABEL_100:
        (*(v11 + 56))(v8, 0, 1, v10);
        goto LABEL_101;
      }

      *v8 = *v9;
      v26 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v27 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v28 = *(v27 - 8);
      if ((*(v28 + 48))(&v9[v26], 1, v27))
      {
LABEL_40:
        v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
        memcpy(&v8[v26], &v9[v26], *(*(v29 - 8) + 64));
        goto LABEL_99;
      }

      v31 = swift_getEnumCaseMultiPayload();
      if (v31 <= 3)
      {
        if (v31 == 2 || v31 == 3)
        {
          goto LABEL_62;
        }
      }

      else if (v31 == 4 || v31 == 5 || v31 == 6)
      {
        goto LABEL_62;
      }

      goto LABEL_97;
    }

    if (EnumCaseMultiPayload == 1)
    {
      *a1 = *a2;
      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F798, &unk_21DC210E0) + 48);
      v8 = &a1[v7];
      v9 = &a2[v7];
      v10 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
      v11 = *(v10 - 8);
      if ((*(v11 + 48))(v9, 1, v10))
      {
        goto LABEL_13;
      }

      v18 = swift_getEnumCaseMultiPayload();
      if (v18 != 1)
      {
        if (!v18)
        {
          v19 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v20 = swift_getEnumCaseMultiPayload();
          if (v20 <= 3)
          {
            if (v20 == 2 || v20 == 3)
            {
              goto LABEL_29;
            }
          }

          else if (v20 == 4 || v20 == 5 || v20 == 6)
          {
LABEL_29:
            v23 = sub_21DBF563C();
            (*(*(v23 - 8) + 32))(v8, v9, v23);
            swift_storeEnumTagMultiPayload();
LABEL_99:
            swift_storeEnumTagMultiPayload();
            goto LABEL_100;
          }

LABEL_77:
          memcpy(v8, v9, *(*(v19 - 8) + 64));
          goto LABEL_99;
        }

        goto LABEL_43;
      }

      *v8 = *v9;
      v26 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v27 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v28 = *(v27 - 8);
      if ((*(v28 + 48))(&v9[v26], 1, v27))
      {
        goto LABEL_40;
      }

      v30 = swift_getEnumCaseMultiPayload();
      if (v30 <= 3)
      {
        if (v30 == 2 || v30 == 3)
        {
          goto LABEL_62;
        }
      }

      else if (v30 == 4 || v30 == 5 || v30 == 6)
      {
LABEL_62:
        v32 = sub_21DBF563C();
        (*(*(v32 - 8) + 32))(&v8[v26], &v9[v26], v32);
        swift_storeEnumTagMultiPayload();
LABEL_98:
        (*(v28 + 56))(&v8[v26], 0, 1, v27);
        goto LABEL_99;
      }

LABEL_97:
      memcpy(&v8[v26], &v9[v26], *(v28 + 64));
      goto LABEL_98;
    }
  }

  v13 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v13);
}

_BYTE *assignWithTake for TTRUserActivityWindowSceneRestorationPayload.State(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_21D66A63C(a1, type metadata accessor for TTRUserActivityWindowSceneRestorationPayload.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      *a1 = *a2;
      v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F790, &qword_21DC210D8) + 48);
      v8 = &a1[v17];
      v9 = &a2[v17];
      v10 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
      v11 = *(v10 - 8);
      if ((*(v11 + 48))(v9, 1, v10))
      {
        goto LABEL_14;
      }

      v24 = swift_getEnumCaseMultiPayload();
      if (v24 != 1)
      {
        if (!v24)
        {
          v19 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v25 = swift_getEnumCaseMultiPayload();
          if (v25 <= 3)
          {
            if (v25 == 2 || v25 == 3)
            {
              goto LABEL_30;
            }
          }

          else if (v25 == 4 || v25 == 5 || v25 == 6)
          {
            goto LABEL_30;
          }

          goto LABEL_78;
        }

        goto LABEL_44;
      }

      *v8 = *v9;
      v26 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v27 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v28 = *(v27 - 8);
      if ((*(v28 + 48))(&v9[v26], 1, v27))
      {
        goto LABEL_41;
      }

      v33 = swift_getEnumCaseMultiPayload();
      if (v33 <= 3)
      {
        if (v33 == 2 || v33 == 3)
        {
          goto LABEL_63;
        }
      }

      else if (v33 == 4 || v33 == 5 || v33 == 6)
      {
        goto LABEL_63;
      }

      goto LABEL_98;
    }

    if (EnumCaseMultiPayload == 4)
    {
      v12 = sub_21DBF6C1C();
      (*(*(v12 - 8) + 32))(a1, a2, v12);
LABEL_102:
      swift_storeEnumTagMultiPayload();
      return a1;
    }
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      *a1 = *a2;
      v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F798, &unk_21DC210E0) + 48);
      v8 = &a1[v15];
      v9 = &a2[v15];
      v10 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
      v11 = *(v10 - 8);
      if ((*(v11 + 48))(v9, 1, v10))
      {
LABEL_14:
        v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90, &unk_21DC09290);
        memcpy(v8, v9, *(*(v16 - 8) + 64));
        goto LABEL_102;
      }

      v21 = swift_getEnumCaseMultiPayload();
      if (v21 != 1)
      {
        if (!v21)
        {
          v19 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v22 = swift_getEnumCaseMultiPayload();
          if (v22 <= 3)
          {
            if (v22 == 2 || v22 == 3)
            {
              goto LABEL_30;
            }
          }

          else if (v22 == 4 || v22 == 5 || v22 == 6)
          {
            goto LABEL_30;
          }

          goto LABEL_78;
        }

LABEL_44:
        memcpy(v8, v9, *(v11 + 64));
LABEL_101:
        (*(v11 + 56))(v8, 0, 1, v10);
        goto LABEL_102;
      }

      *v8 = *v9;
      v26 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v27 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v28 = *(v27 - 8);
      if ((*(v28 + 48))(&v9[v26], 1, v27))
      {
LABEL_41:
        v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
        memcpy(&v8[v26], &v9[v26], *(*(v29 - 8) + 64));
        goto LABEL_100;
      }

      v31 = swift_getEnumCaseMultiPayload();
      if (v31 <= 3)
      {
        if (v31 == 2 || v31 == 3)
        {
          goto LABEL_63;
        }
      }

      else if (v31 == 4 || v31 == 5 || v31 == 6)
      {
        goto LABEL_63;
      }

      goto LABEL_98;
    }

    if (EnumCaseMultiPayload == 1)
    {
      *a1 = *a2;
      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5F798, &unk_21DC210E0) + 48);
      v8 = &a1[v7];
      v9 = &a2[v7];
      v10 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
      v11 = *(v10 - 8);
      if ((*(v11 + 48))(v9, 1, v10))
      {
        goto LABEL_14;
      }

      v18 = swift_getEnumCaseMultiPayload();
      if (v18 != 1)
      {
        if (!v18)
        {
          v19 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
          v20 = swift_getEnumCaseMultiPayload();
          if (v20 <= 3)
          {
            if (v20 == 2 || v20 == 3)
            {
              goto LABEL_30;
            }
          }

          else if (v20 == 4 || v20 == 5 || v20 == 6)
          {
LABEL_30:
            v23 = sub_21DBF563C();
            (*(*(v23 - 8) + 32))(v8, v9, v23);
            swift_storeEnumTagMultiPayload();
LABEL_100:
            swift_storeEnumTagMultiPayload();
            goto LABEL_101;
          }

LABEL_78:
          memcpy(v8, v9, *(*(v19 - 8) + 64));
          goto LABEL_100;
        }

        goto LABEL_44;
      }

      *v8 = *v9;
      v26 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v27 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v28 = *(v27 - 8);
      if ((*(v28 + 48))(&v9[v26], 1, v27))
      {
        goto LABEL_41;
      }

      v30 = swift_getEnumCaseMultiPayload();
      if (v30 <= 3)
      {
        if (v30 == 2 || v30 == 3)
        {
          goto LABEL_63;
        }
      }

      else if (v30 == 4 || v30 == 5 || v30 == 6)
      {
LABEL_63:
        v32 = sub_21DBF563C();
        (*(*(v32 - 8) + 32))(&v8[v26], &v9[v26], v32);
        swift_storeEnumTagMultiPayload();
LABEL_99:
        (*(v28 + 56))(&v8[v26], 0, 1, v27);
        goto LABEL_100;
      }

LABEL_98:
      memcpy(&v8[v26], &v9[v26], *(v28 + 64));
      goto LABEL_99;
    }
  }

  v13 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v13);
}

void sub_21D67829C(uint64_t a1)
{
  sub_21D679D00(319, &qword_280D14240, type metadata accessor for TTRRemindersListViewModel.ItemID);
  if (v1 <= 0x3F)
  {
    v2 = MEMORY[0x277D833E8] + 64;
    swift_getTupleTypeLayout2();
    v8 = &v7;
    swift_getTupleTypeLayout2();
    v9 = &v6;
    swift_getTupleTypeLayout2();
    v10 = &v5;
    v11 = &unk_21DC212A0;
    v3 = sub_21DBF6C1C();
    if (v4 <= 0x3F)
    {
      v12 = *(v3 - 8) + 64;
      v13 = v2;
      swift_initEnumMetadataMultiPayload();
    }
  }
}

char *initializeBufferWithCopyOfBuffer for TTRUserActivityListPayload(char *a1, char **a2)
{
  v4 = type metadata accessor for TTRUserActivityListPayload.State(0);
  v5 = *(*(v4 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = &v10[(v5 + 16) & ~v5];

    return a1;
  }

  v6 = *(v4 - 8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v14 = a2[1];
      *a1 = *a2;
      *(a1 + 1) = v14;
      sub_21DBF8E0C();
      goto LABEL_13;
    }

    if (EnumCaseMultiPayload == 4)
    {
      v11 = sub_21DBF6C1C();
      (*(*(v11 - 8) + 16))(a1, a2, v11);
      goto LABEL_13;
    }
  }

  else if (EnumCaseMultiPayload <= 1)
  {
    v8 = *a2;
    *a1 = *a2;
    v9 = v8;
LABEL_13:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v12 = *(v6 + 64);

  return memcpy(a1, a2, v12);
}

double destroy for TTRUserActivityListPayload(void **a1)
{
  type metadata accessor for TTRUserActivityListPayload.State(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
    }

    else if (EnumCaseMultiPayload == 4)
    {
      v5 = sub_21DBF6C1C();
      v6 = *(*(v5 - 8) + 8);

      v6(a1, v5);
    }
  }

  else if (EnumCaseMultiPayload <= 1)
  {
    v4 = *a1;
  }

  return result;
}

void *initializeWithCopy for TTRUserActivityListPayload(void *a1, void *a2)
{
  v4 = type metadata accessor for TTRUserActivityListPayload.State(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v11 = a2[1];
      *a1 = *a2;
      a1[1] = v11;
      sub_21DBF8E0C();
      goto LABEL_11;
    }

    if (EnumCaseMultiPayload == 4)
    {
      v8 = sub_21DBF6C1C();
      (*(*(v8 - 8) + 16))(a1, a2, v8);
      goto LABEL_11;
    }
  }

  else if (EnumCaseMultiPayload <= 1)
  {
    v6 = *a2;
    *a1 = *a2;
    v7 = v6;
LABEL_11:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v9 = *(*(v4 - 8) + 64);

  return memcpy(a1, a2, v9);
}