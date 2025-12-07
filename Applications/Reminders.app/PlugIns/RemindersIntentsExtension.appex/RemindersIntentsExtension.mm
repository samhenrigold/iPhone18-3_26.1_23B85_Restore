uint64_t sub_100001D38()
{
  v0 = sub_100030664();
  sub_100008CC4(v0, qword_100041AB8);
  v1 = sub_1000089D8(v0, qword_100041AB8);
  if (qword_100041B10 != -1)
  {
    swift_once();
  }

  v2 = sub_1000089D8(v0, qword_100042D50);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_100001FE0(unint64_t a1, void (*a2)(NSObject *))
{
  if (qword_100041AB0 != -1)
  {
    swift_once();
  }

  v5 = sub_100030664();
  sub_1000089D8(v5, qword_100041AB8);

  v6 = sub_100030654();
  LOBYTE(v7) = sub_100030884();
  v8 = a1 >> 62;
  if (!os_log_type_enabled(v6, v7))
  {

    goto LABEL_8;
  }

  v2 = swift_slowAlloc();
  *v2 = 134217984;
  if (v8)
  {
    goto LABEL_35;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_100030CE4())
  {
    *(v2 + 4) = i;

    _os_log_impl(&_mh_execute_header, v6, v7, "Search dataSource returned %ld reminders", v2, 0xCu);

LABEL_8:
    if (v8)
    {
      if (sub_100030CE4() <= 9)
      {
LABEL_10:
        sub_100008D28(0, &unk_100041E90, INTask_ptr);
        a1 = sub_1000309D4();
        goto LABEL_13;
      }
    }

    else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10) <= 9)
    {
      goto LABEL_10;
    }

LABEL_13:
    if (a1 >> 62)
    {
      v7 = sub_100030CE4();
      if (!v7)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v7)
      {
        goto LABEL_24;
      }
    }

    v24 = _swiftEmptyArrayStorage;
    v6 = &v24;
    sub_100030BF4();
    if ((v7 & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_35:
    ;
  }

  sub_100008D28(0, &unk_100041E90, INTask_ptr);
  if ((a1 & 0xC000000000000001) != 0)
  {
    v10 = 0;
    do
    {
      v11 = v10 + 1;
      sub_100030BA4();
      sub_1000309E4();
      sub_100030BD4();
      sub_100030C04();
      sub_100030C14();
      sub_100030BE4();
      v10 = v11;
    }

    while (v7 != v11);
  }

  else
  {
    v12 = 32;
    do
    {
      v13 = *(a1 + v12);
      sub_1000309E4();
      sub_100030BD4();
      sub_100030C04();
      sub_100030C14();
      sub_100030BE4();
      v12 += 8;
      --v7;
    }

    while (v7);
  }

LABEL_24:

  v14 = [objc_allocWithZone(INSearchForNotebookItemsIntentResponse) initWithCode:3 userActivity:0];
  sub_100008D28(0, &unk_100041E90, INTask_ptr);
  isa = sub_100030784().super.isa;

  [v14 setTasks:isa];

  v23 = v14;
  v16 = sub_100030654();
  v17 = sub_100030884();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = -1;
    v19 = swift_slowAlloc();
    *v19 = 134217984;
    v20 = [v23 tasks];
    if (v20)
    {
      v21 = v20;
      v22 = sub_100030794();

      if (v22 >> 62)
      {
        v18 = sub_100030CE4();
      }

      else
      {
        v18 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }
    }

    *(v19 + 4) = v18;

    _os_log_impl(&_mh_execute_header, v16, v17, "Return success search result {tasksCount: %ld}", v19, 0xCu);
  }

  else
  {

    v16 = v23;
  }

  a2(v23);
}

void sub_10000246C(uint64_t a1, uint64_t a2, void (*a3)(NSObject *))
{
  v3 = sub_1000303D4();
  v4 = sub_1000303B4();
  if (qword_100041AB0 != -1)
  {
    goto LABEL_52;
  }

LABEL_2:
  v5 = sub_100030664();
  v6 = sub_1000089D8(v5, qword_100041AB8);

  v7 = sub_100030654();
  v8 = sub_100030884();
  v9 = (v3 >> 62);
  if (os_log_type_enabled(v7, v8))
  {
    v10 = swift_slowAlloc();
    *v10 = 134217984;
    if (!v9)
    {
      v11 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_5;
    }

    goto LABEL_56;
  }

  while (1)
  {

    v12 = sub_100030654();
    v8 = sub_100030884();
    v13 = v4 >> 62;
    if (os_log_type_enabled(v12, v8))
    {
      v14 = swift_slowAlloc();
      *v14 = 134217984;
      if (v13)
      {
        v15 = sub_100030CE4();
      }

      else
      {
        v15 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v14 + 4) = v15;

      _os_log_impl(&_mh_execute_header, v12, v8, "Search dataSource returned %ld smartLists", v14, 0xCu);
    }

    else
    {
    }

    if (v9)
    {
      v10 = sub_100030CE4();
    }

    else
    {
      v10 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v9 = _swiftEmptyArrayStorage;
    v43 = v6;
    if (v10)
    {
      v49 = _swiftEmptyArrayStorage;
      v7 = &v49;
      sub_100030BF4();
      if (v10 < 0)
      {
        __break(1u);
        goto LABEL_55;
      }

      v39 = v4 >> 62;
      v40 = v4;
      v16 = 0;
      v8 = OS_LOG_TYPE_DEFAULT;
      v17 = v3 & 0xC000000000000001;
      v18 = v3;
      v44 = (v3 & 0xFFFFFFFFFFFFFF8);
      do
      {
        v4 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          __break(1u);
          goto LABEL_49;
        }

        if (v17)
        {
          v19 = sub_100030BA4();
        }

        else
        {
          if (v16 >= v44[2])
          {
            goto LABEL_50;
          }

          v19 = *(v18 + 8 * v16 + 32);
        }

        v20 = v19;
        v47 = v19;
        sub_100002AB8(&v47, &v48);

        sub_100030BD4();
        v3 = v49[2];
        sub_100030C04();
        sub_100030C14();
        sub_100030BE4();
        ++v16;
      }

      while (v4 != v10);
      v21 = v49;
      v6 = v43;
      v4 = v40;
      v3 = v18;
      v9 = _swiftEmptyArrayStorage;
      v22 = v40 & 0xFFFFFFFFFFFFFF8;
      if (v39)
      {
        break;
      }

      goto LABEL_24;
    }

    v8 = OS_LOG_TYPE_DEFAULT;
    v21 = _swiftEmptyArrayStorage;
    v22 = v4 & 0xFFFFFFFFFFFFFF8;
    if (v13)
    {
      break;
    }

LABEL_24:
    v10 = *(v22 + 16);
    if (!v10)
    {
      goto LABEL_36;
    }

LABEL_25:
    v41 = v21;
    v49 = _swiftEmptyArrayStorage;
    v7 = &v49;
    sub_100030BF4();
    if ((v10 & 0x8000000000000000) == 0)
    {
      v23 = 0;
      v24 = v4 & 0xC000000000000001;
      v25 = v4;
      v45 = (v4 & 0xFFFFFFFFFFFFFF8);
      while (1)
      {
        v4 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          break;
        }

        if (v24)
        {
          v26 = sub_100030BA4();
        }

        else
        {
          if (v23 >= v45[2])
          {
            goto LABEL_51;
          }

          v26 = *(v25 + 8 * v23 + 32);
        }

        v27 = v26;
        v47 = v26;
        sub_100002EF4(&v47, &v48);

        sub_100030BD4();
        v3 = v49[2];
        sub_100030C04();
        sub_100030C14();
        sub_100030BE4();
        ++v23;
        if (v4 == v10)
        {

          v28 = v49;
          v21 = v41;
          goto LABEL_37;
        }
      }

LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      swift_once();
      goto LABEL_2;
    }

LABEL_55:
    __break(1u);
LABEL_56:
    v11 = sub_100030CE4();
LABEL_5:
    *(v10 + 4) = v11;

    _os_log_impl(&_mh_execute_header, v7, v8, "Search dataSource returned %ld lists", v10, 0xCu);
  }

  v10 = sub_100030CE4();
  if (v10)
  {
    goto LABEL_25;
  }

LABEL_36:

  v28 = _swiftEmptyArrayStorage;
LABEL_37:
  v29 = [objc_allocWithZone(INSearchForNotebookItemsIntentResponse) initWithCode:3 userActivity:0];
  v49 = v21;
  sub_10000CD60(v28);
  sub_100008D28(0, &qword_100041C20, INTaskList_ptr);
  isa = sub_100030784().super.isa;

  [v29 setTaskLists:isa];

  v46 = v29;
  v31 = sub_100030654();
  v32 = sub_100030884();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = -1;
    v34 = swift_slowAlloc();
    *v34 = 134217984;
    v35 = [v46 taskLists];
    if (v35)
    {
      v36 = v35;
      v37 = sub_100030794();

      if (v37 >> 62)
      {
        v33 = sub_100030CE4();
      }

      else
      {
        v33 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v38 = a3;
    }

    else
    {
      v38 = a3;
    }

    *(v34 + 4) = v33;

    _os_log_impl(&_mh_execute_header, v31, v32, "Return success search result {taskListsCount: %ld}", v34, 0xCu);
  }

  else
  {

    v31 = v46;
    v38 = a3;
  }

  v38(v46);
}

uint64_t sub_100002AB8@<X0>(void **a1@<X0>, uint64_t *a3@<X8>)
{
  v3 = *a1;
  sub_100008944(&qword_100041C28, &qword_100033DD0);
  v4 = sub_100030354();
  v5 = *(v4 - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100033CE0;
  v9 = (v8 + v7);
  v10 = *(sub_100008944(&qword_100041C30, &qword_100033DD8) + 48);
  *v9 = [v3 objectID];
  v11 = enum case for REMSearchCriterion.Inclusion.includeForSiri(_:);
  v12 = sub_100030344();
  (*(*(v12 - 8) + 104))(&v9[v10], v11, v12);
  v13 = *(v5 + 104);
  v13(v9, enum case for REMSearchCriterion.listID(_:), v4);
  v9[v6] = 0;
  v13(&v9[v6], enum case for REMSearchCriterion.isCompleted(_:), v4);
  sub_100030414();
  v14 = [objc_opt_self() defaultFetchOptions];
  sub_100030404();
  if (v30)
  {

    if (qword_100041AB0 != -1)
    {
      swift_once();
    }

    v15 = sub_100030664();
    sub_1000089D8(v15, qword_100041AB8);
    v16 = v3;
    swift_errorRetain();
    v17 = sub_100030654();
    v18 = sub_100030864();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v32 = v21;
      *v19 = 138412546;
      v22 = [v16 objectID];
      *(v19 + 4) = v22;
      *v20 = v22;
      *(v19 + 12) = 2080;
      swift_getErrorValue();
      v23 = sub_100030D64();
      v25 = sub_10002B88C(v23, v24, &v32);

      *(v19 + 14) = v25;
      _os_log_impl(&_mh_execute_header, v17, v18, "Error fetching reminders for list {listID: %@, error: %s", v19, 0x16u);
      sub_100008BB8(v20, &unk_100041BF0, &unk_100033DB0);

      sub_100008D70(v21);
    }

    sub_100008D28(0, &qword_100041C20, INTaskList_ptr);
    v26 = v16;
    v27 = sub_100030814();
  }

  else
  {

    sub_100008D28(0, &qword_100041C20, INTaskList_ptr);
    v29 = v3;
    result = sub_100030824();
    v27 = result;
  }

  *a3 = v27;
  return result;
}

uint64_t sub_100002EF4@<X0>(void **a1@<X0>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  sub_100030414();
  sub_1000303F4();
  if (v3)
  {
    if (qword_100041AB0 != -1)
    {
      swift_once();
    }

    v6 = sub_100030664();
    sub_1000089D8(v6, qword_100041AB8);
    v7 = v5;
    swift_errorRetain();
    v8 = sub_100030654();
    v9 = sub_100030864();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v22 = v21;
      *v10 = 138412546;
      v12 = [v7 objectID];
      *(v10 + 4) = v12;
      *v11 = v12;
      *(v10 + 12) = 2080;
      swift_getErrorValue();
      v13 = sub_100030D64();
      v15 = a3;
      v16 = sub_10002B88C(v13, v14, &v22);

      *(v10 + 14) = v16;
      a3 = v15;
      _os_log_impl(&_mh_execute_header, v8, v9, "Error fetching reminders for smartList {smartListID: %@, error: %s", v10, 0x16u);
      sub_100008BB8(v11, &unk_100041BF0, &unk_100033DB0);

      sub_100008D70(v21);
    }

    sub_100008D28(0, &qword_100041C20, INTaskList_ptr);
    v17 = v7;
    v18 = sub_1000307F4();
  }

  else
  {
    sub_100008D28(0, &qword_100041C20, INTaskList_ptr);
    v20 = v5;
    result = sub_1000307F4();
    v18 = result;
  }

  *a3 = v18;
  return result;
}

void sub_1000031B8(void *a1, int a2, void *a3, void *aBlock, void (*a5)(id, id, void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v9 = a3;
  v10 = a1;
  a5(v9, v10, v8);
  _Block_release(v8);
  _Block_release(v8);
}

id sub_10000327C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRSearchForNotebookItemsIntentHandler();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id variable initialization expression of TTRIntentHandler.store()
{
  v0 = objc_allocWithZone(REMStore);

  return [v0 initUserInteractive:1];
}

__n128 initializeWithTake for TTRContactRepresentationResolver(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1000033C4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000033E4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_100003434(uint64_t a1, id *a2)
{
  result = sub_1000306D4();
  *a2 = 0;
  return result;
}

uint64_t sub_1000034AC(uint64_t a1, id *a2)
{
  v3 = sub_1000306E4();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_10000352C@<X0>(uint64_t *a1@<X8>)
{
  sub_1000306F4();
  v2 = sub_1000306C4();

  *a1 = v2;
  return result;
}

uint64_t sub_100003570(void *a1, uint64_t *a2)
{
  v2 = sub_1000306F4();
  v4 = v3;
  if (v2 == sub_1000306F4() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_100030D44();
  }

  return v7 & 1;
}

void *sub_1000035F8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_100003608@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_1000306C4();

  *a2 = v3;
  return result;
}

uint64_t sub_100003650@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000306F4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10000367C(uint64_t a1)
{
  v2 = sub_100008E98(&qword_100041C70, &unk_100033EC0);
  v3 = sub_100008E98(&qword_100041C78, &unk_100033E68);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100003714()
{
  sub_1000306F4();
  v0 = sub_100030754();

  return v0;
}

uint64_t sub_100003750(uint64_t a1)
{
  sub_1000306F4();
  sub_100030734();
}

Swift::Int sub_1000037A4(uint64_t a1)
{
  sub_1000306F4();
  sub_100030D84();
  sub_100030734();
  v1 = sub_100030D94();

  return v1;
}

void sub_100003818(void *a1, uint64_t a2, void (**a3)(void, void))
{
  if (qword_100041AB0 != -1)
  {
    swift_once();
  }

  v5 = sub_100030664();
  sub_1000089D8(v5, qword_100041AB8);
  v6 = a1;
  v7 = sub_100030654();
  v8 = sub_100030884();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    *(v9 + 4) = v6;
    *v10 = v6;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v7, v8, "SiriKit asked for resolving itemType {intent: %@}", v9, 0xCu);
    sub_100008BB8(v10, &unk_100041BF0, &unk_100033DB0);
  }

  v12 = [v6 itemType];
  if (v12 > 1)
  {
    if (v12 != 3)
    {
      if (v12 != 2)
      {
        goto LABEL_19;
      }

      if ((sub_100030984() & 1) == 0)
      {
        v13 = [objc_opt_self() successWithResolvedNotebookItemType:2];
        goto LABEL_13;
      }
    }

LABEL_12:
    v13 = [objc_opt_self() successWithResolvedNotebookItemType:3];
    goto LABEL_13;
  }

  if (!v12)
  {
    goto LABEL_12;
  }

  if (v12 != 1)
  {
LABEL_19:
    v19 = sub_1000216C8(_swiftEmptyArrayStorage);
    v20 = sub_1000216C8(_swiftEmptyArrayStorage);
    _Block_release(a3);
    sub_100026B5C("unknown item type", 17, 2, v19, v20);
    __break(1u);
    return;
  }

  sub_100008D28(0, &qword_100041C40, INNotebookItemTypeResolutionResult_ptr);
  v13 = [swift_getObjCClassFromMetadata() unsupported];
LABEL_13:
  v21 = v13;
  v14 = sub_100030654();
  v15 = sub_100030884();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 138412290;
    *(v16 + 4) = v21;
    *v17 = v21;
    v18 = v21;
    _os_log_impl(&_mh_execute_header, v14, v15, "Resolved itemType {result: %@}", v16, 0xCu);
    sub_100008BB8(v17, &unk_100041BF0, &unk_100033DB0);
  }

  (a3)[2](a3, v21);
}

uint64_t sub_100003B78(void *a1, void *a2, void (**a3)(void, void))
{
  v597 = a2;
  v572 = sub_10002FF84();
  v571 = *(v572 - 8);
  __chkstk_darwin(v572);
  v570 = &v531 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100008944(&unk_100041BA0, &qword_100033D68);
  __chkstk_darwin(v6 - 8);
  v565 = &v531 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v536 = &v531 - v9;
  __chkstk_darwin(v10);
  v548 = &v531 - v11;
  __chkstk_darwin(v12);
  v547 = &v531 - v13;
  __chkstk_darwin(v14);
  v557 = &v531 - v15;
  v591 = sub_10002FE04();
  v604 = *(v591 - 8);
  __chkstk_darwin(v591);
  v569 = &v531 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v558 = &v531 - v18;
  __chkstk_darwin(v19);
  v556 = &v531 - v20;
  v593 = sub_10002FEE4();
  v594 = *(v593 - 8);
  __chkstk_darwin(v593);
  v551 = &v531 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v564 = &v531 - v23;
  __chkstk_darwin(v24);
  v563 = &v531 - v25;
  __chkstk_darwin(v26);
  v533 = &v531 - v27;
  __chkstk_darwin(v28);
  v535 = &v531 - v29;
  __chkstk_darwin(v30);
  v546 = &v531 - v31;
  __chkstk_darwin(v32);
  v34 = &v531 - v33;
  __chkstk_darwin(v35);
  v583 = &v531 - v36;
  __chkstk_darwin(v37);
  v555 = &v531 - v38;
  __chkstk_darwin(v39);
  v607 = &v531 - v40;
  __chkstk_darwin(v41);
  v606 = &v531 - v42;
  v43 = sub_100008944(&unk_100042170, &unk_100033D70);
  __chkstk_darwin(v43 - 8);
  v574 = &v531 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v45);
  v589 = &v531 - v46;
  v592 = sub_10002FF94();
  v590 = *(v592 - 8);
  __chkstk_darwin(v592);
  v595 = &v531 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_100008944(&qword_100041BB0, &unk_1000340A0);
  __chkstk_darwin(v48 - 8);
  v573 = &v531 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v50);
  v580 = (&v531 - v51);
  __chkstk_darwin(v52);
  v579 = &v531 - v53;
  __chkstk_darwin(v54);
  v578 = (&v531 - v55);
  __chkstk_darwin(v56);
  v605 = (&v531 - v57);
  __chkstk_darwin(v58);
  v577 = &v531 - v59;
  __chkstk_darwin(v60);
  v599 = &v531 - v61;
  __chkstk_darwin(v62);
  v588 = &v531 - v63;
  __chkstk_darwin(v64);
  v576 = &v531 - v65;
  __chkstk_darwin(v66);
  v603 = &v531 - v67;
  v545 = sub_100008944(&qword_100041BB8, &qword_100033D80);
  __chkstk_darwin(v545);
  v586 = &v531 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v69);
  v550 = &v531 - v70;
  __chkstk_darwin(v71);
  v614 = &v531 - v72;
  __chkstk_darwin(v73);
  v544 = &v531 - v74;
  v75 = sub_100008944(&unk_100041BC0, &qword_100033D88);
  __chkstk_darwin(v75 - 8);
  v575 = &v531 - v76;
  v615 = sub_100030584();
  v610 = *(v615 - 8);
  __chkstk_darwin(v615);
  v554 = &v531 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v78);
  v541 = &v531 - v79;
  __chkstk_darwin(v80);
  v553 = &v531 - v81;
  __chkstk_darwin(v82);
  v600 = &v531 - v83;
  v612 = sub_100030354();
  v84 = *(v612 - 8);
  __chkstk_darwin(v612);
  v567 = &v531 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v86);
  v562 = &v531 - v87;
  __chkstk_darwin(v88);
  v561 = &v531 - v89;
  __chkstk_darwin(v90);
  v549 = &v531 - v91;
  __chkstk_darwin(v92);
  v582 = &v531 - v93;
  __chkstk_darwin(v94);
  v581 = &v531 - v95;
  __chkstk_darwin(v96);
  v584 = &v531 - v97;
  __chkstk_darwin(v98);
  v585 = &v531 - v99;
  __chkstk_darwin(v100);
  v532 = &v531 - v101;
  __chkstk_darwin(v102);
  v560 = &v531 - v103;
  __chkstk_darwin(v104);
  v559 = &v531 - v105;
  __chkstk_darwin(v106);
  v568 = (&v531 - v107);
  __chkstk_darwin(v108);
  v609 = &v531 - v109;
  __chkstk_darwin(v110);
  v542 = (&v531 - v111);
  __chkstk_darwin(v112);
  v543 = (&v531 - v113);
  __chkstk_darwin(v114);
  v552 = &v531 - v115;
  __chkstk_darwin(v116);
  v602 = &v531 - v117;
  __chkstk_darwin(v118);
  v601 = &v531 - v119;
  v587 = swift_allocObject();
  *(v587 + 16) = a3;
  v566 = a3;
  _Block_copy(a3);
  if (qword_100041AB0 != -1)
  {
    swift_once();
  }

  v120 = sub_100030664();
  v121 = sub_1000089D8(v120, qword_100041AB8);
  sub_100008944(&qword_1000425E0, &unk_100033D90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100033CF0;
  *(inited + 32) = 0x746E65746E69;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 72) = sub_100008D28(0, &unk_100041BD0, INSearchForNotebookItemsIntent_ptr);
  *(inited + 48) = a1;
  v123 = a1;
  v124 = sub_1000216C8(inited);
  swift_setDeallocating();
  sub_100008BB8(inited + 32, &unk_1000425F0, &qword_1000340B0);
  sub_100026D38("Search task via Siri {intent: %@}", 33, 2, v124);

  v125 = v123;
  v598 = v121;
  v126 = sub_100030654();
  v127 = sub_100030884();

  if (os_log_type_enabled(v126, v127))
  {
    v128 = swift_slowAlloc();
    v129 = swift_slowAlloc();
    *v128 = 138412290;
    *(v128 + 4) = v125;
    *v129 = v125;
    v130 = v125;
    _os_log_impl(&_mh_execute_header, v126, v127, "SiriKit asked for handling search {intent: %@}", v128, 0xCu);
    sub_100008BB8(v129, &unk_100041BF0, &unk_100033DB0);
  }

  v619 = _swiftEmptyArrayStorage;
  v131 = [v125 title];
  if (v131)
  {
    v132 = v131;
    v133 = [v131 spokenPhrase];

    v134 = sub_1000306F4();
    v136 = v135;
  }

  else
  {
    v134 = 0;
    v136 = 0;
  }

  v137 = [v125 content];
  if (v137)
  {
    v138 = v137;
    v139 = sub_1000306F4();
    v141 = v140;
  }

  else
  {
    v139 = 0;
    v141 = 0;
  }

  v142 = v614;
  v608 = v84;
  v611 = v125;
  v534 = v34;
  if (!(v136 | v141))
  {
    v143 = _swiftEmptyArrayStorage;
    v596 = _swiftEmptyArrayStorage;
    v144 = v612;
    v145 = v84;
    v146 = v615;
    v147 = v610;
    goto LABEL_36;
  }

  v148 = 0;
  v616 = v134;
  v617[0] = v136;
  v617[1] = v139;
  v617[2] = v141;
  v149 = _swiftEmptyArrayStorage;
LABEL_14:
  v150 = &v617[2 * v148];
  while (++v148 != 3)
  {
    v151 = v150 + 2;
    v152 = *v150;
    v150 += 2;
    if (v152)
    {
      v153 = *(v151 - 3);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v149 = sub_10002B4F4(0, *(v149 + 2) + 1, 1, v149);
      }

      v155 = *(v149 + 2);
      v154 = *(v149 + 3);
      if (v155 >= v154 >> 1)
      {
        v149 = sub_10002B4F4((v154 > 1), v155 + 1, 1, v149);
      }

      *(v149 + 2) = v155 + 1;
      v156 = &v149[16 * v155];
      *(v156 + 4) = v153;
      *(v156 + 5) = v152;
      goto LABEL_14;
    }
  }

  sub_100008944(&qword_100041C00, &qword_100033DC0);
  swift_arrayDestroy();
  v618 = v149;
  sub_100008944(&qword_100041C08, &qword_100033DC8);
  sub_100008C18();
  v157 = sub_1000306B4();
  v158 = v84;
  v160 = v159;

  v161 = sub_100008944(&qword_100041BE8, &qword_100034130);
  v162 = *(v161 + 48);
  v163 = v601;
  v596 = v157;
  *v601 = v157;
  *(v163 + 1) = v160;
  v164 = enum case for REMStringMatchingStyle.prefix(_:);
  v165 = sub_100030474();
  v166 = *(*(v165 - 8) + 104);
  v166(&v163[v162], v164, v165);
  v167 = enum case for REMSearchCriterion.textualField(_:);
  v168 = *(v158 + 104);
  v540 = v158 + 104;
  v539 = v168;
  v168(v163, enum case for REMSearchCriterion.textualField(_:), v612);

  v613 = sub_10002B4CC(0, 1, 1, _swiftEmptyArrayStorage);
  v170 = v613[2];
  v169 = v613[3];
  if (v170 >= v169 >> 1)
  {
    v613 = sub_10002B4CC((v169 > 1), v170 + 1, 1, v613);
  }

  v171 = v613;
  v613[2] = v170 + 1;
  v172 = *(v608 + 32);
  v538 = (*(v608 + 80) + 32) & ~*(v608 + 80);
  v537 = *(v608 + 72);
  v173 = v171 + v538 + v537 * v170;
  v174 = v601;
  v144 = v612;
  v601 = v172;
  (v172)(v173, v174, v612);
  v619 = v171;
  v175 = *(v161 + 48);
  v176 = v602;
  *v602 = v596;
  *(v176 + 1) = v160;
  v166(&v176[v175], v164, v165);
  v539(v176, v167, v144);
  v177 = sub_10002B4CC(0, 1, 1, _swiftEmptyArrayStorage);
  v179 = v177[2];
  v178 = v177[3];
  if (v179 >= v178 >> 1)
  {
    v177 = sub_10002B4CC((v178 > 1), v179 + 1, 1, v177);
  }

  v142 = v614;
  v146 = v615;
  v147 = v610;
  v177[2] = v179 + 1;
  v596 = v177;
  (v601)(v177 + v538 + v179 * v537, v602, v144);
  v180 = [v611 title];
  v145 = v608;
  v143 = v613;
  if (v180)
  {
    v181 = v180;
    v182 = [v180 vocabularyIdentifier];

    if (v182)
    {
      v183 = sub_1000306F4();
      v185 = v184;

      if (v183 == 0xD000000000000011 && 0x8000000100034940 == v185)
      {

        v143 = v613;
        v186 = v552;
LABEL_32:
        v188 = enum case for REMSearchableListType.grocery(_:);
        v189 = sub_100030394();
        (*(*(v189 - 8) + 104))(v186, v188, v189);
        v539(v186, enum case for REMSearchCriterion.listType(_:), v144);
        v191 = v596[2];
        v190 = v596[3];
        if (v191 >= v190 >> 1)
        {
          v596 = sub_10002B4CC((v190 > 1), v191 + 1, 1, v596);
        }

        v192 = v596;
        v596[2] = v191 + 1;
        (v601)(v192 + v538 + v191 * v537, v186, v144);
        goto LABEL_35;
      }

      v187 = sub_100030D44();

      v143 = v613;
      v186 = v552;
      if (v187)
      {
        goto LABEL_32;
      }
    }
  }

LABEL_35:
  v125 = v611;
LABEL_36:
  v193 = [v125 notebookItemIdentifier];
  if (!v193)
  {
    v206 = v125;
    v207 = sub_100030654();
    v208 = sub_100030864();

    if (os_log_type_enabled(v207, v208))
    {
      v209 = v142;
      v210 = v143;
      v211 = swift_slowAlloc();
      v212 = v145;
      v213 = swift_slowAlloc();
      *v211 = 138412290;
      *(v211 + 4) = v206;
      *v213 = v206;
      v214 = v206;
      _os_log_impl(&_mh_execute_header, v207, v208, "[Announce Reminders] notebookIdentifier not found in intent: %@", v211, 0xCu);
      sub_100008BB8(v213, &unk_100041BF0, &unk_100033DB0);
      v145 = v212;

      v143 = v210;
      v142 = v209;
    }

LABEL_65:
    v263 = [v125 status] == 2;
    v264 = v609;
    *v609 = v263;
    v265 = *(v145 + 104);
    v615 = v145 + 104;
    (v265)(v264, enum case for REMSearchCriterion.isCompleted(_:), v144);
    swift_beginAccess();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v143 = sub_10002B4CC(0, v143[2] + 1, 1, v143);
    }

    v267 = v143[2];
    v266 = v143[3];
    if (v267 >= v266 >> 1)
    {
      v143 = sub_10002B4CC((v266 > 1), v267 + 1, 1, v143);
    }

    v143[2] = v267 + 1;
    v268 = *(v145 + 32);
    v602 = ((*(v145 + 80) + 32) & ~*(v145 + 80));
    v601 = *(v145 + 72);
    v610 = v145 + 32;
    v609 = v268;
    (v268)(&v602[v143 + v601 * v267], v264, v144);
    v619 = v143;
    swift_endAccess();
    v269 = [v125 location];
    v600 = v265;
    if (v269 && (v270 = v269, v271 = [v269 name], v270, v271))
    {
      v272 = sub_1000306F4();
      v274 = v273;

      if ([v125 locationSearchType] == 1)
      {
        v275 = *(sub_100008944(&qword_100041BE8, &qword_100034130) + 48);
        v276 = v568;
        *v568 = v272;
        v276[1] = v274;
        v277 = enum case for REMStringMatchingStyle.prefix(_:);
        v278 = sub_100030474();
        (*(*(v278 - 8) + 104))(v276 + v275, v277, v278);
        (v265)(v276, enum case for REMSearchCriterion.location(_:), v144);
        swift_beginAccess();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v143 = sub_10002B4CC(0, v143[2] + 1, 1, v143);
        }

        v280 = v143[2];
        v279 = v143[3];
        v145 = v608;
        if (v280 >= v279 >> 1)
        {
          v143 = sub_10002B4CC((v279 > 1), v280 + 1, 1, v143);
        }

        v143[2] = v280 + 1;
        (v609)(&v602[v143 + v280 * v601], v568, v144);
        v281 = v143;
        v619 = v143;
        swift_endAccess();
      }

      else
      {
        v281 = v143;
      }
    }

    else
    {
      v281 = v143;
    }

    v283 = *(v145 + 56);
    v282 = (v145 + 56);
    v575 = v283;
    (v283)(v142, 1, 1, v144);
    v284 = [v125 temporalEventTriggerTypes];
    v285 = [v125 temporalEventTriggerTypes];
    v286 = (v285 & 2) == 0;
    v287 = [v125 temporalEventTriggerTypes];
    if (v284)
    {
      v288 = v591;
      v289 = v281;
      if ((v285 & 2) != 0)
      {
        if ((v287 & 4) == 0)
        {
          v292 = v282;
          v286 = 0;
          v291 = v600;
          goto LABEL_90;
        }

        goto LABEL_96;
      }

      if ((v287 & 4) != 0)
      {
        goto LABEL_96;
      }

      sub_100008BB8(v142, &qword_100041BB8, &qword_100033D80);
    }

    else
    {
      v288 = v591;
      if ((v285 & 2) == 0)
      {
        v289 = v281;
        if ((v287 & 4) != 0)
        {
          sub_100008BB8(v142, &qword_100041BB8, &qword_100033D80);
LABEL_87:
          *v142 = 1;
          v291 = v600;
          (v600)(v142, enum case for REMSearchCriterion.hasDueDate(_:), v144);
          v292 = v282;
          (v575)(v142, 0, 1, v144);
LABEL_90:
          v293 = v567;
          *v567 = v286;
          (v291)(v293, enum case for REMSearchCriterion.isRecurrent(_:), v144);
          swift_beginAccess();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v289 = sub_10002B4CC(0, v289[2] + 1, 1, v289);
          }

          v294 = v588;
          v296 = v289[2];
          v295 = v289[3];
          if (v296 >= v295 >> 1)
          {
            v289 = sub_10002B4CC((v295 > 1), v296 + 1, 1, v289);
          }

          v289[2] = v296 + 1;
          (v609)(&v602[v289 + v296 * v601], v293, v144);
          v619 = v289;
          swift_endAccess();
          v297 = v605;
          v282 = v292;
LABEL_97:
          v298 = [v125 dateTime];
          if (!v298)
          {
            goto LABEL_189;
          }

          v299 = v298;
          v300 = [v298 allDay];
          if (v300)
          {
            v301 = v299;
            v302 = v300;
            LODWORD(v568) = [v300 BOOLValue];

            v299 = v301;
          }

          else
          {
            LODWORD(v568) = 0;
          }

          v303 = v577;
          v588 = v299;
          v304 = [v299 startDateComponents];
          v613 = v289;
          if (v304)
          {
            v305 = v304;
            sub_10002FDA4();

            v306 = 0;
          }

          else
          {
            v306 = 1;
          }

          v567 = v282;
          v307 = v604;
          v308 = *(v604 + 56);
          v308(v294, v306, 1, v288);
          v309 = v576;
          sub_100008AE0(v294, v576);
          v310 = *(v307 + 48);
          v577 = (v307 + 48);
          v605 = v310;
          if (v310(v309, 1, v288) == 1)
          {
            sub_100008BB8(v309, &qword_100041BB0, &unk_1000340A0);
            v311 = 1;
            v312 = v603;
          }

          else
          {
            v312 = v603;
            sub_10002FD84();
            (*(v307 + 8))(v309, v288);
            v311 = 0;
          }

          v313 = v595;
          v314 = 1;
          v308(v312, v311, 1, v288);
          v315 = [v588 endDateComponents];
          if (v315)
          {
            v316 = v315;
            sub_10002FDA4();

            v314 = 0;
          }

          v308(v297, v314, 1, v288);
          sub_100008AE0(v297, v303);
          if (v605(v303, 1, v288) == 1)
          {
            sub_100008BB8(v303, &qword_100041BB0, &unk_1000340A0);
            v317 = 1;
            v318 = v599;
          }

          else
          {
            v318 = v599;
            sub_10002FD84();
            (*(v604 + 8))(v303, v288);
            v317 = 0;
          }

          v308(v318, v317, 1, v288);
          v319 = v578;
          sub_100008B50(v603, v578, &qword_100041BB0, &unk_1000340A0);
          v320 = v605(v319, 1, v288);
          v321 = v589;
          if (v320 == 1)
          {
            sub_100008BB8(v319, &qword_100041BB0, &unk_1000340A0);
            v322 = v590;
            v323 = v592;
            (*(v590 + 56))(v321, 1, 1, v592);
          }

          else
          {
            sub_10002FDF4();
            v318 = v599;
            (*(v604 + 8))(v319, v288);
            v322 = v590;
            v323 = v592;
            if ((*(v590 + 48))(v321, 1, v592) != 1)
            {
              (*(v322 + 32))(v313, v321, v323);
              goto LABEL_125;
            }
          }

          v324 = v573;
          sub_100008B50(v318, v573, &qword_100041BB0, &unk_1000340A0);
          if (v605(v324, 1, v288) == 1)
          {
            sub_100008BB8(v324, &qword_100041BB0, &unk_1000340A0);
            v325 = v574;
            (*(v322 + 56))(v574, 1, 1, v323);
          }

          else
          {
            v325 = v574;
            sub_10002FDF4();
            (*(v604 + 8))(v324, v288);
            v326 = *(v322 + 48);
            if (v326(v325, 1, v323) != 1)
            {
              (*(v322 + 32))(v313, v325, v323);
LABEL_123:
              v327 = v589;
              v328 = v326(v589, 1, v323);
              v318 = v599;
              if (v328 != 1)
              {
                sub_100008BB8(v327, &unk_100042170, &unk_100033D70);
              }

LABEL_125:
              sub_10002FE64();
              sub_10002FE74();
              v329 = v579;
              sub_100008B50(v603, v579, &qword_100041BB0, &unk_1000340A0);
              if (v605(v329, 1, v288) == 1)
              {
                sub_100008BB8(v329, &qword_100041BB0, &unk_1000340A0);
                v330 = v594;
              }

              else
              {
                v331 = v604;
                v332 = *(v604 + 32);
                v333 = v556;
                v332(v556, v329, v288);
                if (v568)
                {
                  v334 = v558;
                  sub_10002FD74();
                  (*(v331 + 8))(v333, v288);
                  v332(v333, v334, v288);
                }

                sub_100008A10(v597 + OBJC_IVAR____TtC25RemindersIntentsExtension38TTRSearchForNotebookItemsIntentHandler_timeProvider, *(v597 + OBJC_IVAR____TtC25RemindersIntentsExtension38TTRSearchForNotebookItemsIntentHandler_timeProvider + 24));
                v335 = v583;
                sub_100030034();
                v336 = v557;
                sub_10002FF54();
                v337 = v594;
                v338 = *(v594 + 8);
                v339 = v593;
                v338(v335, v593);
                v340 = *(v337 + 48);
                if (v340(v336, 1, v339) == 1)
                {
                  v341 = v555;
                  sub_10002FE64();
                  (*(v604 + 8))(v333, v288);
                  v342 = v606;
                  v338(v606, v339);
                  v343 = v341;
                  v330 = v337;
                  if (v340(v336, 1, v339) != 1)
                  {
                    sub_100008BB8(v336, &unk_100041BA0, &qword_100033D68);
                  }
                }

                else
                {
                  (*(v604 + 8))(v333, v288);
                  v342 = v606;
                  v338(v606, v339);
                  v343 = v555;
                  (*(v337 + 32))(v555, v336, v339);
                  v330 = v337;
                }

                (*(v330 + 32))(v342, v343, v339);
                v125 = v611;
                v318 = v599;
                v288 = v591;
              }

              v344 = v318;
              v345 = v580;
              sub_100008B50(v344, v580, &qword_100041BB0, &unk_1000340A0);
              if (v605(v345, 1, v288) == 1)
              {
                sub_100008BB8(v345, &qword_100041BB0, &unk_1000340A0);
                v142 = v614;
                v346 = v593;
                v347 = &selRef_imageWithUIImage_;
                goto LABEL_150;
              }

              v348 = v604;
              v349 = *(v604 + 32);
              v350 = v569;
              v349(v569, v345, v288);
              if (v568)
              {
                v351 = v558;
                sub_10002FD74();
                v352 = *(v348 + 8);
                v352(v350, v288);
                v349(v350, v351, v288);
                sub_100008A10(v597 + OBJC_IVAR____TtC25RemindersIntentsExtension38TTRSearchForNotebookItemsIntentHandler_timeProvider, *(v597 + OBJC_IVAR____TtC25RemindersIntentsExtension38TTRSearchForNotebookItemsIntentHandler_timeProvider + 24));
                v353 = v583;
                sub_100030034();
                v354 = v547;
                sub_10002FF54();
                v355 = v594;
                v356 = v348 + 8;
                v357 = v593;
                v605 = *(v594 + 8);
                (v605)(v353, v593);
                v589 = *(v355 + 48);
                if ((v589)(v354, 1, v357) != 1)
                {
                  v580 = v352;
                  v604 = v356;
                  v372 = *(v355 + 32);
                  v373 = v534;
                  v579 = v355 + 32;
                  v578 = v372;
                  (v372)(v534, v354, v357);
                  v374 = v571;
                  v375 = v570;
                  v376 = v572;
                  (*(v571 + 104))(v570, enum case for Calendar.Component.day(_:), v572);
                  v377 = v536;
                  sub_10002FF74();
                  v378 = v375;
                  v379 = v377;
                  (*(v374 + 8))(v378, v376);
                  if ((v589)(v377, 1, v357) == 1)
                  {
                    (v605)(v373, v357);
                    v580(v569, v591);
                    sub_100008BB8(v377, &unk_100041BA0, &qword_100033D68);
                    v380 = v607;
                    v381 = v607;
                  }

                  else
                  {
                    v381 = v533;
                    sub_10002FE84();
                    v382 = v605;
                    (v605)(v373, v357);
                    v580(v569, v591);
                    v380 = v607;
                    v382(v607, v357);
                    v382(v379, v357);
                  }

                  v142 = v614;
                  v125 = v611;
                  v347 = &selRef_imageWithUIImage_;
                  v383 = v535;
                  v384 = v578;
                  (v578)(v535, v381, v357);
                  v384(v380, v383, v357);
                  v346 = v357;
                  v330 = v594;
LABEL_150:
                  v385 = &v347[365][v597];
                  if (sub_100030984())
                  {
                    v386 = v583;
                    sub_10002FE64();
                    v387 = *(v330 + 8);
                    v388 = v606;
                    v387(v606, v346);
                    v605 = *(v330 + 32);
                    v605(v388, v386, v346);
                    sub_100008A10(v385, *(v385 + 3));
                    v389 = v593;
                    sub_100030034();
                    v390 = v563;
                    sub_10002FF44();
                    v387(v386, v389);
                    v391 = v571;
                    v392 = v570;
                    v393 = v390;
                    v394 = v572;
                    (*(v571 + 104))(v570, enum case for Calendar.Component.day(_:), v572);
                    v395 = v565;
                    sub_10002FF74();
                    (*(v391 + 8))(v392, v394);
                    v346 = v389;
                    v330 = v594;
                    if ((*(v594 + 48))(v395, 1, v346) == 1)
                    {
                      v387(v393, v346);
                      sub_100008BB8(v395, &unk_100041BA0, &qword_100033D68);
                      v396 = v607;
                      v397 = v607;
                    }

                    else
                    {
                      v397 = v551;
                      sub_10002FE84();
                      v387(v393, v346);
                      v396 = v607;
                      v387(v607, v346);
                      v387(v395, v346);
                    }

                    v398 = v564;
                    v399 = v605;
                    v605(v564, v397, v346);
                    v399(v396, v398, v346);
                    v142 = v614;
                    v125 = v611;
                  }

                  v400 = [v125 dateSearchType];
                  if (v400 <= 1)
                  {
                    v144 = v612;
                    v401 = v606;
                    if (!v400)
                    {

                      v402 = *(v330 + 8);
                      v402(v607, v346);
                      v402(v401, v346);
                      (*(v590 + 8))(v595, v592);
                      sub_100008BB8(v599, &qword_100041BB0, &unk_1000340A0);
                      sub_100008BB8(v603, &qword_100041BB0, &unk_1000340A0);
                      v403 = v608;
                      v404 = v585;
                      v289 = v613;
LABEL_196:
                      v481 = v586;
                      sub_100008B50(v142, v586, &qword_100041BB8, &qword_100033D80);
                      if ((*(v403 + 48))(v481, 1, v144) == 1)
                      {
                        sub_100008BB8(v481, &qword_100041BB8, &qword_100033D80);
                      }

                      else
                      {
                        (v609)(v404, v481, v144);
                        (*(v403 + 16))(v584, v404, v144);
                        swift_beginAccess();
                        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                        {
                          v289 = sub_10002B4CC(0, v289[2] + 1, 1, v289);
                        }

                        v483 = v289[2];
                        v482 = v289[3];
                        if (v483 >= v482 >> 1)
                        {
                          v289 = sub_10002B4CC((v482 > 1), v483 + 1, 1, v289);
                        }

                        v289[2] = v483 + 1;
                        (v609)(&v602[v289 + v483 * v601], v584, v144);
                        v619 = v289;
                        swift_endAccess();
                        (*(v403 + 8))(v404, v144);
                      }

                      v484 = v611;
                      v485 = [v611 taskPriority];
                      v486 = v596;
                      v487 = v600;
                      if (!v485)
                      {
LABEL_217:
                        v494 = [v484 itemType];
                        v495 = sub_100030654();
                        if (v494 == 2)
                        {
                          v509 = sub_100030884();
                          if (os_log_type_enabled(v495, v509))
                          {
                            v510 = swift_slowAlloc();
                            v511 = swift_slowAlloc();
                            v618 = v511;
                            *v510 = 136315138;

                            v512 = sub_1000307A4();
                            v514 = v513;

                            v515 = sub_10002B88C(v512, v514, &v618);

                            *(v510 + 4) = v515;
                            _os_log_impl(&_mh_execute_header, v495, v509, "Consulting Search datasource for lists {itemType: taskList, criteria: %s}", v510, 0xCu);
                            sub_100008D70(v511);
                          }

                          v516 = v597;
                          v517 = *(v597 + OBJC_IVAR____TtC25RemindersIntentsExtension38TTRSearchForNotebookItemsIntentHandler_dataSource + 24);
                          v518 = *(v597 + OBJC_IVAR____TtC25RemindersIntentsExtension38TTRSearchForNotebookItemsIntentHandler_dataSource + 32);
                          sub_100008A10(v597 + OBJC_IVAR____TtC25RemindersIntentsExtension38TTRSearchForNotebookItemsIntentHandler_dataSource, v517);
                          v519 = swift_allocObject();
                          v519[2] = v516;
                          v519[3] = sub_1000089C4;
                          v519[4] = v587;
                          v520 = *(v518 + 32);

                          v521 = v516;
                          v520(v486, sub_100008A94, v519, v517, v518);
                        }

                        else
                        {
                          if (v494 != 3)
                          {
                            v522 = sub_100030874();
                            if (os_log_type_enabled(v495, v522))
                            {
                              v523 = swift_slowAlloc();
                              *v523 = 0;
                              _os_log_impl(&_mh_execute_header, v495, v522, "Unhandled itemType. Should have been cleaned up in resolve(). Return failure search result.", v523, 2u);
                            }

                            v524 = [objc_allocWithZone(INSearchForNotebookItemsIntentResponse) initWithCode:4 userActivity:0];
                            (v566)[2](v566, v524);

                            goto LABEL_229;
                          }

                          v496 = v289;
                          v497 = sub_100030884();
                          if (os_log_type_enabled(v495, v497))
                          {
                            v498 = swift_slowAlloc();
                            v499 = swift_slowAlloc();
                            v618 = v499;
                            *v498 = 136315138;

                            v500 = sub_1000307A4();
                            v502 = v501;

                            v503 = sub_10002B88C(v500, v502, &v618);

                            *(v498 + 4) = v503;
                            _os_log_impl(&_mh_execute_header, v495, v497, "Consulting Search datasource for reminders {itemType: task, criteria: %s}", v498, 0xCu);
                            sub_100008D70(v499);
                          }

                          v504 = *(v597 + OBJC_IVAR____TtC25RemindersIntentsExtension38TTRSearchForNotebookItemsIntentHandler_dataSource + 24);
                          v505 = *(v597 + OBJC_IVAR____TtC25RemindersIntentsExtension38TTRSearchForNotebookItemsIntentHandler_dataSource + 32);
                          sub_100008A10(v597 + OBJC_IVAR____TtC25RemindersIntentsExtension38TTRSearchForNotebookItemsIntentHandler_dataSource, v504);
                          v506 = swift_allocObject();
                          v507 = v587;
                          *(v506 + 16) = sub_1000089C4;
                          *(v506 + 24) = v507;
                          v508 = *(v505 + 24);

                          v508(v496, sub_100008AD8, v506, v504, v505);
                        }

LABEL_229:
                        sub_100008BB8(v614, &qword_100041BB8, &qword_100033D80);
                      }

                      if (v485 == 1)
                      {
                        *v582 = 0;
                        v487();
                        swift_beginAccess();
                        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                        {
                          v289 = sub_10002B4CC(0, v289[2] + 1, 1, v289);
                        }

                        v489 = v289[2];
                        v488 = v289[3];
                        if (v489 >= v488 >> 1)
                        {
                          v289 = sub_10002B4CC((v488 > 1), v489 + 1, 1, v289);
                        }

                        v289[2] = v489 + 1;
                        v490 = &v602[v289 + v489 * v601];
                        v491 = &v614;
LABEL_216:
                        (v609)(v490, *(v491 - 32), v144);
                        v619 = v289;
                        swift_endAccess();
                        goto LABEL_217;
                      }

                      if (v485 == 2)
                      {
                        *v581 = 1;
                        v487();
                        swift_beginAccess();
                        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                        {
                          v289 = sub_10002B4CC(0, v289[2] + 1, 1, v289);
                        }

                        v493 = v289[2];
                        v492 = v289[3];
                        if (v493 >= v492 >> 1)
                        {
                          v289 = sub_10002B4CC((v492 > 1), v493 + 1, 1, v289);
                        }

                        v289[2] = v493 + 1;
                        v490 = &v602[v289 + v493 * v601];
                        v491 = &v613;
                        goto LABEL_216;
                      }

                      v527 = sub_1000216C8(_swiftEmptyArrayStorage);
                      v528 = sub_1000216C8(_swiftEmptyArrayStorage);

                      _Block_release(v566);
                      v529 = "unknown task priority";
                      v530 = 21;
                      goto LABEL_233;
                    }

                    v430 = v595;
                    if (v400 == 1)
                    {
                      v431 = v550;
                      sub_100008B50(v142, v550, &qword_100041BB8, &qword_100033D80);
                      v403 = v608;
                      v144 = v612;
                      v432 = (*(v608 + 48))(v431, 1, v612);
                      v433 = v549;
                      v434 = v600;
                      v435 = v588;
                      if (v432 == 1)
                      {
                        sub_100008BB8(v431, &qword_100041BB8, &qword_100033D80);
LABEL_191:
                        v469 = *(sub_100008944(&qword_100041BE0, &unk_100033DA0) + 48);
                        v470 = *(v330 + 16);
                        v470(v433, v606, v346);
                        v471 = *(v330 + 56);
                        v471(v433, 0, 1, v346);
                        v470(&v433[v469], v607, v346);
                        v471(&v433[v469], 0, 1, v346);
                        v144 = v612;
                        (v434)(v433, enum case for REMSearchCriterion.dueDate(_:), v612);
                        swift_beginAccess();
                        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                        v404 = v585;
                        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                        {
                          v613 = sub_10002B4CC(0, v613[2] + 1, 1, v613);
                        }

                        v473 = v592;
                        v475 = v613[2];
                        v474 = v613[3];
                        v476 = v594;
                        if (v475 >= v474 >> 1)
                        {
                          v613 = sub_10002B4CC((v474 > 1), v475 + 1, 1, v613);
                        }

                        v477 = v613;
                        v613[2] = v475 + 1;
                        (v609)(&v602[v477 + v475 * v601], v433, v144);
                        v619 = v477;
                        swift_endAccess();

                        v478 = *(v476 + 8);
                        v479 = v593;
                        v478(v607, v593);
                        v478(v606, v479);
                        v480 = v473;
                        v289 = v477;
                        (*(v590 + 8))(v595, v480);
                        sub_100008BB8(v599, &qword_100041BB0, &unk_1000340A0);
                        sub_100008BB8(v603, &qword_100041BB0, &unk_1000340A0);
                        goto LABEL_196;
                      }

                      if ((*(v403 + 88))(v431, v144) != enum case for REMSearchCriterion.hasDueDate(_:))
                      {
                        (*(v403 + 8))(v431, v144);
                        goto LABEL_191;
                      }

                      (*(v403 + 96))(v431, v144);
                      if ((*v431 & 1) == 0)
                      {

                        v526 = *(v330 + 8);
                        v526(v607, v346);
                        v526(v606, v346);
                        (*(v590 + 8))(v430, v592);
                        sub_100008BB8(v599, &qword_100041BB0, &unk_1000340A0);
                        sub_100008BB8(v603, &qword_100041BB0, &unk_1000340A0);
                        v403 = v608;
                        v404 = v585;
                        v289 = v613;
                        goto LABEL_196;
                      }

                      v457 = *(sub_100008944(&qword_100041BE0, &unk_100033DA0) + 48);
                      v458 = *(v330 + 16);
                      v459 = v532;
                      v460 = v606;
                      v458(v532, v606, v346);
                      v461 = *(v330 + 56);
                      v461(v459, 0, 1, v346);
                      v458(&v459[v457], v607, v346);
                      v461(&v459[v457], 0, 1, v346);
                      v144 = v612;
                      (v434)(v459, enum case for REMSearchCriterion.dueDate(_:), v612);
                      swift_beginAccess();
                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        v613 = sub_10002B4CC(0, v613[2] + 1, 1, v613);
                      }

                      v462 = v592;
                      v464 = v613[2];
                      v463 = v613[3];
                      v465 = v594;
                      if (v464 >= v463 >> 1)
                      {
                        v613 = sub_10002B4CC((v463 > 1), v464 + 1, 1, v613);
                      }

                      v466 = v613;
                      v613[2] = v464 + 1;
                      (v609)(&v602[v466 + v464 * v601], v459, v144);
                      v619 = v466;
                      swift_endAccess();

                      v467 = *(v465 + 8);
                      v467(v607, v346);
                      v467(v460, v346);
                      v468 = v462;
                      v289 = v466;
                      (*(v590 + 8))(v595, v468);
                      sub_100008BB8(v599, &qword_100041BB0, &unk_1000340A0);
                      sub_100008BB8(v603, &qword_100041BB0, &unk_1000340A0);
                      sub_100008BB8(v142, &qword_100041BB8, &qword_100033D80);
                      (v575)(v142, 1, 1, v144);
LABEL_189:
                      v403 = v608;
                      v404 = v585;
                      goto LABEL_196;
                    }

LABEL_232:
                    v527 = sub_1000216C8(_swiftEmptyArrayStorage);
                    v528 = sub_1000216C8(_swiftEmptyArrayStorage);

                    _Block_release(v566);
                    v529 = "unknown date search type";
                    v530 = 24;
LABEL_233:
                    sub_100026B5C(v529, v530, 2, v527, v528);
                    __break(1u);
                    goto LABEL_234;
                  }

                  v405 = v606;
                  if (v400 == 2)
                  {
                    v406 = sub_100008944(&qword_100041BE0, &unk_100033DA0);
                    v407 = *(v406 + 48);
                    v408 = v346;
                    v409 = *(v330 + 16);
                    v410 = v559;
                    v409(v559, v405, v346);
                    v411 = *(v330 + 56);
                    v411(v410, 0, 1, v408);
                    v409(&v410[v407], v607, v408);
                    v411(&v410[v407], 0, 1, v408);
                    v412 = enum case for REMSearchCriterion.modifiedDate(_:);
                    (v600)(v410, enum case for REMSearchCriterion.modifiedDate(_:), v612);
                    swift_beginAccess();
                    v413 = v613;
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v413 = sub_10002B4CC(0, v413[2] + 1, 1, v413);
                    }

                    v613 = v413;
                    v415 = v413[2];
                    v414 = v413[3];
                    if (v415 >= v414 >> 1)
                    {
                      v613 = sub_10002B4CC((v414 > 1), v415 + 1, 1, v613);
                    }

                    v416 = v613;
                    v613[2] = v415 + 1;
                    v417 = v612;
                    (v609)(&v602[v416 + v415 * v601], v559, v612);
                    v619 = v416;
                    swift_endAccess();
                    v418 = *(v406 + 48);
                    v419 = v561;
                    v420 = v593;
                    v409(v561, v606, v593);
                    v411(v419, 0, 1, v420);
                    v409(&v419[v418], v607, v420);
                    v144 = v417;
                    v411(&v419[v418], 0, 1, v420);
                    (v600)(v419, v412, v417);
                    v421 = v596;
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v596 = sub_10002B4CC(0, v421[2] + 1, 1, v421);
                    }

                    v422 = v614;
                    v403 = v608;
                    v404 = v585;
                    v423 = v603;
                    v425 = v596[2];
                    v424 = v596[3];
                    if (v425 >= v424 >> 1)
                    {
                      v596 = sub_10002B4CC((v424 > 1), v425 + 1, 1, v596);
                    }

                    v426 = *(v594 + 8);
                    v426(v607, v420);
                    v426(v606, v420);
                    (*(v590 + 8))(v595, v592);
                    sub_100008BB8(v599, &qword_100041BB0, &unk_1000340A0);
                    sub_100008BB8(v423, &qword_100041BB0, &unk_1000340A0);
                    v427 = v596;
                    v596[2] = v425 + 1;
                    v428 = &v602[v427 + v425 * v601];
                    v429 = &v593;
                  }

                  else
                  {
                    if (v400 != 3)
                    {
                      goto LABEL_232;
                    }

                    v436 = sub_100008944(&qword_100041BE0, &unk_100033DA0);
                    v437 = *(v436 + 48);
                    v438 = v346;
                    v439 = *(v330 + 16);
                    v440 = v560;
                    v439(v560, v405, v346);
                    v441 = *(v330 + 56);
                    v441(v440, 0, 1, v438);
                    v439(&v440[v437], v607, v438);
                    v441(&v440[v437], 0, 1, v438);
                    v442 = enum case for REMSearchCriterion.creationDate(_:);
                    (v600)(v440, enum case for REMSearchCriterion.creationDate(_:), v612);
                    swift_beginAccess();
                    v443 = v613;
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v443 = sub_10002B4CC(0, v443[2] + 1, 1, v443);
                    }

                    v613 = v443;
                    v445 = v443[2];
                    v444 = v443[3];
                    if (v445 >= v444 >> 1)
                    {
                      v613 = sub_10002B4CC((v444 > 1), v445 + 1, 1, v613);
                    }

                    v446 = v613;
                    v613[2] = v445 + 1;
                    v447 = v612;
                    (v609)(&v602[v446 + v445 * v601], v560, v612);
                    v619 = v446;
                    swift_endAccess();
                    v448 = *(v436 + 48);
                    v449 = v562;
                    v450 = v593;
                    v439(v562, v405, v593);
                    v441(v449, 0, 1, v450);
                    v439(&v449[v448], v607, v450);
                    v144 = v447;
                    v441(&v449[v448], 0, 1, v450);
                    (v600)(v449, v442, v447);
                    v451 = v596;
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v596 = sub_10002B4CC(0, v451[2] + 1, 1, v451);
                    }

                    v422 = v614;
                    v403 = v608;
                    v404 = v585;
                    v452 = v603;
                    v454 = v596[2];
                    v453 = v596[3];
                    if (v454 >= v453 >> 1)
                    {
                      v596 = sub_10002B4CC((v453 > 1), v454 + 1, 1, v596);
                    }

                    v455 = *(v594 + 8);
                    v455(v607, v450);
                    v455(v606, v450);
                    (*(v590 + 8))(v595, v592);
                    sub_100008BB8(v599, &qword_100041BB0, &unk_1000340A0);
                    sub_100008BB8(v452, &qword_100041BB0, &unk_1000340A0);
                    v456 = v596;
                    v596[2] = v454 + 1;
                    v428 = &v602[v456 + v454 * v601];
                    v429 = &v594;
                  }

                  (v609)(v428, *(v429 - 32), v144);
                  v289 = v613;
                  v142 = v422;
                  goto LABEL_196;
                }

                v352(v350, v288);
                sub_100008BB8(v354, &unk_100041BA0, &qword_100033D68);
                v142 = v614;
                v346 = v357;
                v330 = v355;
                v125 = v611;
              }

              else
              {
                sub_100008A10(v597 + OBJC_IVAR____TtC25RemindersIntentsExtension38TTRSearchForNotebookItemsIntentHandler_timeProvider, *(v597 + OBJC_IVAR____TtC25RemindersIntentsExtension38TTRSearchForNotebookItemsIntentHandler_timeProvider + 24));
                v358 = v348;
                v359 = v583;
                sub_100030034();
                v360 = v548;
                sub_10002FF54();
                v361 = v594;
                v362 = *(v594 + 8);
                v363 = v359;
                v364 = v360;
                v365 = v593;
                v362(v363, v593);
                v366 = v288;
                v346 = v365;
                (*(v358 + 8))(v350, v366);
                v367 = *(v361 + 48);
                if (v367(v364, 1, v365) == 1)
                {
                  v368 = *(v361 + 32);
                  v369 = v546;
                  v368(v546, v607, v365);
                  v370 = v367(v364, 1, v365);
                  v142 = v614;
                  if (v370 != 1)
                  {
                    sub_100008BB8(v364, &unk_100041BA0, &qword_100033D68);
                  }

                  v330 = v594;
                  v371 = v607;
                }

                else
                {
                  v371 = v607;
                  v362(v607, v346);
                  v368 = *(v361 + 32);
                  v369 = v546;
                  v368(v546, v364, v346);
                  v142 = v614;
                  v330 = v361;
                }

                v368(v371, v369, v346);
              }

              v347 = &selRef_imageWithUIImage_;
              goto LABEL_150;
            }
          }

          sub_100008A10(v597 + OBJC_IVAR____TtC25RemindersIntentsExtension38TTRSearchForNotebookItemsIntentHandler_timeProvider, *(v597 + OBJC_IVAR____TtC25RemindersIntentsExtension38TTRSearchForNotebookItemsIntentHandler_timeProvider + 24));
          v323 = v592;
          sub_100030044();
          v326 = *(v322 + 48);
          if (v326(v325, 1, v323) != 1)
          {
            sub_100008BB8(v325, &unk_100042170, &unk_100033D70);
          }

          goto LABEL_123;
        }

LABEL_96:
        v297 = v605;
        v294 = v588;
        goto LABEL_97;
      }

      v290 = v287;
      sub_100008BB8(v142, &qword_100041BB8, &qword_100033D80);
      v289 = v281;
      if ((v290 & 4) == 0)
      {
        goto LABEL_87;
      }
    }

    *v142 = !(v284 & 1);
    (v600)(v142, enum case for REMSearchCriterion.hasDueDate(_:), v144);
    (v575)(v142, 0, 1, v144);
    goto LABEL_96;
  }

  v194 = v193;
  v195 = sub_1000306F4();
  v197 = v196;

  v198 = v575;
  sub_100030574();
  if ((*(v147 + 48))(v198, 1, v146) == 1)
  {
    v199 = v143;
    sub_100008BB8(v198, &unk_100041BC0, &qword_100033D88);

    v200 = sub_100030654();
    v201 = sub_100030864();

    if (os_log_type_enabled(v200, v201))
    {
      v202 = swift_slowAlloc();
      v203 = v142;
      v204 = swift_slowAlloc();
      v618 = v204;
      *v202 = 136315138;
      v205 = sub_10002B88C(v195, v197, &v618);

      *(v202 + 4) = v205;
      _os_log_impl(&_mh_execute_header, v200, v201, "[Announce Reminders] Unable to create itemIdentifier from %s", v202, 0xCu);
      sub_100008D70(v204);
      v142 = v203;

      v145 = v608;
    }

    else
    {
    }

    v143 = v199;
    goto LABEL_65;
  }

  v215 = v198;
  v216 = v600;
  (*(v147 + 32))(v600, v215, v146);
  v217 = v147;
  v218 = *(v147 + 16);
  v219 = v553;
  v218(v553, v216, v146);
  v220 = sub_100030654();
  v221 = sub_100030884();
  if (os_log_type_enabled(v220, v221))
  {
    v222 = swift_slowAlloc();
    v613 = v143;
    v223 = v222;
    v224 = swift_slowAlloc();
    v601 = v218;
    v225 = v224;
    v618 = v224;
    *v223 = 136446210;
    (v601)(v541, v219, v146);
    v226 = sub_100030704();
    v228 = v227;
    v602 = *(v217 + 8);
    (v602)(v219, v615);
    v229 = sub_10002B88C(v226, v228, &v618);
    v230 = v614;

    *(v223 + 4) = v229;
    v142 = v230;
    v146 = v615;
    _os_log_impl(&_mh_execute_header, v220, v221, "[Announce Reminders] requestIdentifier:%{public}s", v223, 0xCu);
    sub_100008D70(v225);
    v218 = v601;

    v143 = v613;
  }

  else
  {

    v602 = *(v217 + 8);
    (v602)(v219, v146);
  }

  v231 = v554;
  v218(v554, v600, v146);
  v232 = (*(v217 + 88))(v231, v146);
  if (v232 == enum case for REMNotificationIdentifier.objectID(_:))
  {

    (*(v217 + 96))(v231, v146);
    v233 = *v231;
    sub_100008944(&unk_100041EB0, &unk_1000340E0);
    v234 = swift_allocObject();
    *(v234 + 16) = xmmword_100033D00;
    *(v234 + 32) = v233;
    v235 = v543;
    *v543 = v234;
    v236 = v608;
    (*(v608 + 104))(v235, enum case for REMSearchCriterion.objectID(_:), v612);
    v237 = v233;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v143 = sub_10002B4CC(0, v143[2] + 1, 1, v143);
    }

    v239 = v143[2];
    v238 = v143[3];
    v240 = v239 + 1;
    if (v239 >= v238 >> 1)
    {
      v143 = sub_10002B4CC((v238 > 1), v239 + 1, 1, v143);
    }

LABEL_59:
    v143[2] = v240;
    v244 = v236;
    v245 = v236 + 32;
    v246 = *(v236 + 32);
    v247 = v143 + ((*(v236 + 80) + 32) & ~*(v236 + 80));
    v248 = *(v245 + 40);
    v246(&v247[v248 * v239], v235, v612);
    v619 = v143;
    v249 = sub_100030654();
    v250 = sub_100030884();
    if (os_log_type_enabled(v249, v250))
    {
      v251 = swift_slowAlloc();
      v252 = swift_slowAlloc();
      v253 = v143;
      v254 = v252;
      v618 = v252;
      *v251 = 136446210;
      v613 = v253;
      v255 = v253[2];
      if (v255)
      {
        v256 = &v247[v248 * (v255 - 1)];
        v257 = v244;
        v258 = v544;
        v144 = v612;
        (*(v244 + 16))(v544, v256, v612);
        v259 = 0;
      }

      else
      {
        v259 = 1;
        v144 = v612;
        v257 = v244;
        v258 = v544;
      }

      (*(v257 + 56))(v258, v259, 1, v144);
      v260 = sub_100030704();
      v262 = sub_10002B88C(v260, v261, &v618);
      v145 = v244;

      *(v251 + 4) = v262;
      _os_log_impl(&_mh_execute_header, v249, v250, "[Announce Reminders] Added %{public}s to search criteria", v251, 0xCu);
      sub_100008D70(v254);

      (v602)(v600, v615);
      v125 = v611;
      v143 = v613;
      v142 = v614;
    }

    else
    {

      (v602)(v600, v615);
      v144 = v612;
      v125 = v611;
      v145 = v244;
    }

    goto LABEL_65;
  }

  v241 = v612;
  v236 = v608;
  if (v232 == enum case for REMNotificationIdentifier.daCalendarItemUniqueIdentifier(_:))
  {

    (*(v217 + 96))(v231, v146);
    v242 = *(v231 + 1);
    v235 = v542;
    *v542 = *v231;
    v235[1] = v242;
    (*(v236 + 104))(v235, enum case for REMSearchCriterion.daCalendarItemUniqueIdentifier(_:), v241);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v143 = sub_10002B4CC(0, v143[2] + 1, 1, v143);
    }

    v239 = v143[2];
    v243 = v143[3];
    v240 = v239 + 1;
    if (v239 >= v243 >> 1)
    {
      v143 = sub_10002B4CC((v243 > 1), v239 + 1, 1, v143);
    }

    goto LABEL_59;
  }

LABEL_234:

  _Block_release(v566);
  result = sub_100030D34();
  __break(1u);
  return result;
}

uint64_t sub_100008944(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10000898C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000089D8(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void *sub_100008A10(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100008A54()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100008AA0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100008AE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100008944(&qword_100041BB0, &unk_1000340A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100008B50(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100008944(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100008BB8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100008944(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_100008C18()
{
  result = qword_100041C10;
  if (!qword_100041C10)
  {
    sub_100008C7C(&qword_100041C08, &qword_100033DC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100041C10);
  }

  return result;
}

uint64_t sub_100008C7C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t *sub_100008CC4(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_100008D28(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_100008D70(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

void sub_100008DE4(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_100008E98(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for REMSmartListType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100008F14()
{
  v0 = sub_100030664();
  sub_100008CC4(v0, qword_100041CE0);
  v1 = sub_1000089D8(v0, qword_100041CE0);
  if (qword_100041B10 != -1)
  {
    swift_once();
  }

  v2 = sub_1000089D8(v0, qword_100042D50);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_100008FDC(unint64_t a1, void (*a2)(void))
{
  if (a1 >> 62)
  {
    v4 = sub_100030CE4();
    if (v4 > 0)
    {
      goto LABEL_3;
    }

LABEL_30:
    if (qword_100041AD0 != -1)
    {
      swift_once();
    }

    v32 = sub_100030664();
    sub_1000089D8(v32, qword_100041CE0);
    v33 = sub_100030654();
    v34 = sub_100030884();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v33, v34, "No reminder matches with the term {result: .unsupported}", v35, 2u);
    }

    sub_100008D28(0, &qword_100041EA8, INTaskResolutionResult_ptr);
    v31 = [swift_getObjCClassFromMetadata() unsupported];
    goto LABEL_35;
  }

  v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4 <= 0)
  {
    goto LABEL_30;
  }

LABEL_3:
  if (v4 == 1)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      sub_100030BA4();
    }

    else
    {
      if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return;
      }

      v5 = *(a1 + 32);
    }

    sub_100008D28(0, &unk_100041E90, INTask_ptr);
    isa = sub_1000309E4();
    if (qword_100041AD0 != -1)
    {
      swift_once();
    }

    v7 = sub_100030664();
    sub_1000089D8(v7, qword_100041CE0);

    v8 = sub_100030654();
    v9 = sub_100030884();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      if ((a1 & 0xC000000000000001) != 0)
      {
        v12 = sub_100030BA4();
      }

      else
      {
        v12 = *(a1 + 32);
      }

      *(v10 + 4) = v12;
      *v11 = v12;
      _os_log_impl(&_mh_execute_header, v8, v9, "One reminder matches with the term {result: .success(%@)}", v10, 0xCu);
      sub_100008BB8(v11, &unk_100041BF0, &unk_100033DB0);
    }

    v30 = [objc_opt_self() successWithResolvedTask:isa];
  }

  else
  {
    if (qword_100041AD0 != -1)
    {
      swift_once();
    }

    v13 = sub_100030664();
    sub_1000089D8(v13, qword_100041CE0);
    v14 = sub_100030654();
    v15 = sub_100030884();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Multiple reminders match with the term {result: .disambiguation}", v16, 2u);
    }

    v17 = sub_100030654();
    v18 = sub_100030884();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v37 = v20;
      *v19 = 136315138;
      sub_100008D28(0, &unk_100041EC0, REMReminder_ptr);
      v21 = sub_1000307A4();
      v23 = sub_10002B88C(v21, v22, &v37);

      *(v19 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v17, v18, "Matching reminders: %s", v19, 0xCu);
      sub_100008D70(v20);
    }

    v37 = _swiftEmptyArrayStorage;
    sub_100030BF4();
    sub_100008D28(0, &unk_100041E90, INTask_ptr);
    if ((a1 & 0xC000000000000001) != 0)
    {
      v24 = 0;
      do
      {
        v25 = v24 + 1;
        sub_100030BA4();
        sub_1000309E4();
        sub_100030BD4();
        sub_100030C04();
        sub_100030C14();
        sub_100030BE4();
        v24 = v25;
      }

      while (v4 != v25);
    }

    else
    {
      v26 = (a1 + 32);
      do
      {
        v27 = *v26++;
        v28 = v27;
        sub_1000309E4();
        sub_100030BD4();
        sub_100030C04();
        sub_100030C14();
        sub_100030BE4();
        --v4;
      }

      while (v4);
    }

    v29 = objc_opt_self();
    isa = sub_100030784().super.isa;

    v30 = [v29 disambiguationWithTasksToDisambiguate:isa];
  }

  v31 = v30;

LABEL_35:
  v36 = v31;
  a2();
}

void sub_1000096E4(void *a1, int a2, void *a3, void *aBlock, void (*a5)(id, id, void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v10 = a3;
  v9 = a1;
  a5(v10, v9, v8);
  _Block_release(v8);

  _Block_release(v8);
}

void sub_100009778(void **a1, int a2, id a3, uint64_t a4, uint64_t a5, void *a6, void (*a7)(void))
{
  v10 = *a1;
  if (*a1)
  {
    v11 = qword_100041AD0;
    v12 = v10;
    if (v11 != -1)
    {
      swift_once();
    }

    v13 = sub_100030664();
    sub_1000089D8(v13, qword_100041CE0);
    v14 = v12;
    v15 = sub_100030654();
    v16 = sub_100030884();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = a7;
      v19 = swift_slowAlloc();
      *v17 = 138412290;
      *(v17 + 4) = v14;
      *v19 = v10;
      v20 = v14;
      _os_log_impl(&_mh_execute_header, v15, v16, "Populating contactRepresentation {contactRepresentation: %@}", v17, 0xCu);
      sub_100008BB8(v19, &unk_100041BF0, &unk_100033DB0);
      a7 = v18;
    }

    v21 = v14;
    sub_100030124();
  }

  v49 = 0;
  v22 = [a3 saveSynchronouslyWithError:&v49];
  v23 = v49;
  if (v22 && (sub_100030074(), v24 = v23, sub_100030064(), sub_100030054(), , v25 = *(a4 + OBJC_IVAR____TtC25RemindersIntentsExtension32TTRSetTaskAttributeIntentHandler_store), v49 = 0, v26 = [v25 fetchReminderWithObjectID:a5 error:&v49], v23 = v49, v26))
  {
    v27 = v26;
    v28 = objc_allocWithZone(INSetTaskAttributeIntentResponse);
    v29 = v23;
    v30 = [v28 initWithCode:3 userActivity:0];
    sub_100008D28(0, &unk_100041E90, INTask_ptr);
    v31 = v27;
    v32 = sub_1000309E4();
    [v30 setModifiedTask:v32];

    v49 = a6;
    v33 = sub_100030104();
    v34 = [v33 accountCapabilities];

    sub_100008D28(0, &unk_100041E50, INSetTaskAttributeIntent_ptr);
    v35 = sub_1000302B4();

    [v30 setWarnings:v35];
    (a7)(v30);
  }

  else
  {
    v36 = v23;
    sub_10002FE24();

    swift_willThrow();
    if (qword_100041AD0 != -1)
    {
      swift_once();
    }

    v37 = sub_100030664();
    sub_1000089D8(v37, qword_100041CE0);
    swift_errorRetain();
    v38 = sub_100030654();
    v39 = sub_100030864();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = a7;
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v49 = v42;
      *v41 = 136315138;
      swift_getErrorValue();
      v43 = sub_100030D64();
      v45 = sub_10002B88C(v43, v44, &v49);

      *(v41 + 4) = v45;
      _os_log_impl(&_mh_execute_header, v38, v39, "Error saving saveRequest {error: %s}", v41, 0xCu);
      sub_100008D70(v42);

      a7 = v40;
    }

    v46 = [objc_allocWithZone(INSetTaskAttributeIntentResponse) initWithCode:4 userActivity:0];
    a7();
  }
}

void sub_100009CB0(void *a1, int a2, void *a3, void *aBlock, void (*a5)(id, id, void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v9 = a3;
  v10 = a1;
  a5(v9, v10, v8);
  _Block_release(v8);
  _Block_release(v8);
}

id sub_100009D74()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRSetTaskAttributeIntentHandler();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100009E60(void *a1, void *a2, void (**a3)(void, void))
{
  v43 = sub_100030354();
  v41 = *(v43 - 8);
  __chkstk_darwin(v43);
  v40 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = swift_allocObject();
  *(v42 + 16) = a3;
  _Block_copy(a3);
  if (qword_100041AD0 != -1)
  {
    swift_once();
  }

  v7 = sub_100030664();
  sub_1000089D8(v7, qword_100041CE0);
  v8 = a1;
  v9 = sub_100030654();
  v10 = sub_100030884();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v38 = a2;
    v39 = a3;
    v12 = v11;
    v13 = swift_slowAlloc();
    v45 = v13;
    *v12 = 136315138;
    v14 = [v8 targetTask];
    v44 = v14;
    sub_100008944(&qword_100041E60, &qword_1000340B8);
    v15 = sub_100030A94();
    v17 = v16;

    v18 = sub_10002B88C(v15, v17, &v45);

    *(v12 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v9, v10, "SiriKit asked for resolving target task {targetTask: %s}", v12, 0xCu);
    sub_100008D70(v13);

    a2 = v38;
    a3 = v39;
  }

  v19 = [v8 targetTask];
  if (v19)
  {
    v20 = v19;
    v21 = [v8 status] == 1;
    v22 = v40;
    v23 = v41;
    *v40 = v21;
    v24 = v43;
    (*(v23 + 104))(v22, enum case for REMSearchCriterion.isCompleted(_:), v43);
    v25 = (a2 + OBJC_IVAR____TtC25RemindersIntentsExtension32TTRSetTaskAttributeIntentHandler_dataSource);
    v26 = *(a2 + OBJC_IVAR____TtC25RemindersIntentsExtension32TTRSetTaskAttributeIntentHandler_dataSource + 24);
    v39 = v25[4];
    v38 = sub_100008A10(v25, v26);
    sub_100008944(&unk_100041EB0, &unk_1000340E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100033D00;
    *(inited + 32) = v20;
    sub_100008944(&qword_100041C28, &qword_100033DD0);
    v28 = (*(v23 + 80) + 32) & ~*(v23 + 80);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_100033CF0;
    (*(v23 + 16))(v29 + v28, v22, v24);
    v30 = swift_allocObject();
    v31 = v42;
    *(v30 + 16) = sub_1000089C4;
    *(v30 + 24) = v31;
    v32 = v20;

    sub_10000B8D8(inited, v29, sub_10000B8C8, v30, v26, v39);

    swift_setDeallocating();
    swift_arrayDestroy();
    (*(v23 + 8))(v22, v43);
  }

  else
  {
    v33 = sub_100030654();
    v34 = sub_100030864();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v33, v34, "INSetTaskAttributeIntent contains nil targetTask, returning INTask.disambiguateWithIncompleteReminders", v35, 2u);
    }

    sub_100008D28(0, &unk_100041E90, INTask_ptr);
    sub_100008D28(0, &qword_100041EA8, INTaskResolutionResult_ptr);
    v36 = sub_100030994();
    (a3)[2](a3, v36);
  }
}

uint64_t sub_10000A380(void *a1)
{
  v2 = [a1 contactEventTrigger];
  if (v2)
  {
    goto LABEL_2;
  }

  if ([a1 priority])
  {
    return 0;
  }

  v2 = [a1 spatialEventTrigger];
  if (v2)
  {
    goto LABEL_2;
  }

  if ([a1 status])
  {
    return 0;
  }

  v2 = [a1 taskTitle];
  if (v2 || (v2 = [a1 temporalEventTrigger]) != 0)
  {
LABEL_2:

    return 0;
  }

  return 1;
}

void sub_10000A448(void *a1, uint64_t a2)
{
  if (qword_100041AD0 != -1)
  {
    swift_once();
  }

  v4 = sub_100030664();
  sub_1000089D8(v4, qword_100041CE0);
  v5 = a1;
  v6 = sub_100030654();
  v7 = sub_100030884();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v31 = v9;
    *v8 = 136315138;
    v30 = [v5 taskTitle];
    sub_100008944(&qword_100041EA0, &qword_1000340D8);
    v10 = sub_100030A94();
    v12 = v11;

    v13 = sub_10002B88C(v10, v12, &v31);

    *(v8 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v6, v7, "SiriKit asked for resolving task title {taskTitle: %s}", v8, 0xCu);
    sub_100008D70(v9);
  }

  v14 = [v5 taskTitle];
  if (v14)
  {
    v15 = v14;
    v16 = v14;
    v17 = sub_100030654();
    v18 = sub_100030884();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      *(v19 + 4) = v16;
      *v20 = v15;
      v21 = v16;
      _os_log_impl(&_mh_execute_header, v17, v18, "Resolving TaskTitle, got new task title, returning success {taskTitle: %@}", v19, 0xCu);
      sub_100008BB8(v20, &unk_100041BF0, &unk_100033DB0);
    }

    v22 = [objc_opt_self() successWithResolvedString:v16];
    (*(a2 + 16))(a2, v22);
  }

  else
  {
    v23 = sub_10000A380(v5);
    v24 = sub_100030654();
    v25 = sub_100030884();
    v26 = os_log_type_enabled(v24, v25);
    if (v23)
    {
      if (v26)
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&_mh_execute_header, v24, v25, "Resolving TaskTitle, nothing to do, returning .needsValue()", v27, 2u);
      }

      sub_100008D28(0, &qword_1000425A0, INSpeakableStringResolutionResult_ptr);
      v28 = [swift_getObjCClassFromMetadata() needsValue];
    }

    else
    {
      if (v26)
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&_mh_execute_header, v24, v25, "Resolving TaskTitle, no title, other stuff to do, returning .notRequired()", v29, 2u);
      }

      sub_100008D28(0, &qword_1000425A0, INSpeakableStringResolutionResult_ptr);
      v28 = [swift_getObjCClassFromMetadata() notRequired];
    }

    v22 = v28;
    (*(a2 + 16))(a2, v22);
  }
}

void sub_10000A86C(void *a1, char *a2, void (**a3)(void, void))
{
  v116 = sub_100030234();
  v115 = *(v116 - 8);
  __chkstk_darwin(v116);
  v110 = &v107 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100008944(&qword_1000425D0, &qword_100034098);
  __chkstk_darwin(v7 - 8);
  v113 = &v107 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v114 = &v107 - v10;
  v11 = sub_10002FE04();
  v118 = *(v11 - 8);
  v119 = v11;
  __chkstk_darwin(v11);
  v117 = &v107 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100008944(&qword_100041BB0, &unk_1000340A0);
  __chkstk_darwin(v13 - 8);
  v112 = &v107 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v107 - v16;
  __chkstk_darwin(v18);
  v120 = &v107 - v19;
  v121 = swift_allocObject();
  *(v121 + 16) = a3;
  _Block_copy(a3);
  if (qword_100041AD0 != -1)
  {
    swift_once();
  }

  v20 = sub_100030664();
  sub_1000089D8(v20, qword_100041CE0);
  sub_100008944(&qword_1000425E0, &unk_100033D90);
  inited = swift_initStackObject();
  v109 = xmmword_100033CF0;
  *(inited + 16) = xmmword_100033CF0;
  *(inited + 32) = 0x746E65746E69;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 72) = sub_100008D28(0, &unk_100041E50, INSetTaskAttributeIntent_ptr);
  *(inited + 48) = a1;
  v22 = a1;
  v23 = sub_1000216C8(inited);
  swift_setDeallocating();
  sub_100008BB8(inited + 32, &unk_1000425F0, &qword_1000340B0);
  sub_100026D38("Set task attribute via Siri {intent: %@}", 40, 2, v23);

  v24 = v22;
  v25 = sub_100030654();
  v26 = sub_100030884();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v27 = 138412290;
    *(v27 + 4) = v24;
    *v28 = v24;
    v29 = v24;
    _os_log_impl(&_mh_execute_header, v25, v26, "SiriKit asked for handling set task attribute intent {intent: %@}", v27, 0xCu);
    sub_100008BB8(v28, &unk_100041BF0, &unk_100033DB0);
  }

  v30 = [v24 targetTask];
  if (v30)
  {
    v31 = v30;
    v32 = *&a2[OBJC_IVAR____TtC25RemindersIntentsExtension32TTRSetTaskAttributeIntentHandler_store];
    v33 = sub_1000309B4();

    if (v33)
    {
      v34 = [v33 objectID];
      v35 = [objc_allocWithZone(REMSaveRequest) initWithStore:v32];
      sub_1000301D4();
      v123 = v33;
      v36 = v35;
      v108 = v33;
      v107 = v36;
      sub_1000300F4();
      v37 = v122[0];
      v38 = [v24 taskTitle];
      v111 = a2;
      if (v38)
      {
        v39 = v38;
        v40 = [v38 spokenPhrase];
        if (!v40)
        {
          sub_1000306F4();
          v40 = sub_1000306C4();
        }

        v41 = [objc_allocWithZone(NSAttributedString) initWithString:v40];

        v42.super.isa = v41;
        v125.value._countAndFlagsBits = 0;
        v125.value._object = 0;
        sub_100030194(v42, v125, 1);
      }

      v43 = [v24 status];
      v44 = v119;
      if (v43)
      {
        if (v43 != 1 && v43 != 2)
        {
          v103 = sub_1000216C8(_swiftEmptyArrayStorage);
          v104 = sub_1000216C8(_swiftEmptyArrayStorage);

          _Block_release(a3);
          v105 = "unknown status";
          v106 = 14;
          goto LABEL_51;
        }

        sub_1000301B4();
      }

      v56 = sub_100030104();
      v57 = [v56 accountCapabilities];

      LODWORD(v56) = [v57 supportsFlagged];
      if (!v56 || (v58 = [v24 priority]) == 0)
      {
LABEL_26:
        v60 = [v24 spatialEventTrigger];
        v61 = v120;
        v62 = v118;
        if (v60)
        {
          v63 = v60;
          sub_100008D28(0, &qword_100041E78, REMAlarmLocationTrigger_ptr);
          v64 = v63;
          v65 = sub_100030964();
          if (v65)
          {
            v66 = v65;
            sub_100030144();
          }

          sub_100008D28(0, &unk_100041E80, REMAlarmVehicleTrigger_ptr);
          v67 = v64;
          v68 = sub_100030954();
          if (v68)
          {
            v69 = v68;
            sub_100030134();

            v67 = v69;
          }
        }

        v70 = [v24 temporalEventTrigger];
        if (v70)
        {
          v71 = v70;
          sub_100030934();
        }

        else
        {
          (*(v62 + 56))(v61, 1, 1, v44);
        }

        sub_100008B50(v61, v17, &qword_100041BB0, &unk_1000340A0);
        if ((*(v62 + 48))(v17, 1, v44) == 1)
        {
          v72 = &qword_100041BB0;
          v73 = &unk_1000340A0;
          v74 = v17;
        }

        else
        {
          v75 = v117;
          (*(v62 + 32))(v117, v17, v44);
          v76 = v112;
          (*(v62 + 16))(v112, v75, v44);
          (*(v62 + 56))(v76, 0, 1, v44);
          sub_100030164();
          sub_100008BB8(v76, &qword_100041BB0, &unk_1000340A0);
          if ([v24 temporalEventTrigger])
          {
            sub_10000B82C(&v111[OBJC_IVAR____TtC25RemindersIntentsExtension32TTRSetTaskAttributeIntentHandler_timeProvider], v122);
            v77 = v114;
            sub_100030224();
            v78 = v116;
            v79 = v115;
          }

          else
          {
            v79 = v115;
            v77 = v114;
            v78 = v116;
            (*(v115 + 56))(v114, 1, 1, v116);
          }

          v80 = v113;
          sub_100008B50(v77, v113, &qword_1000425D0, &qword_100034098);
          if ((*(v79 + 48))(v80, 1, v78) != 1)
          {
            v81 = *(v79 + 32);
            v116 = v34;
            v82 = v77;
            v83 = v62;
            v84 = v110;
            v81(v110, v80, v78);
            sub_100008944(&qword_100041E70, &unk_1000340C8);
            v85 = (*(v79 + 80) + 32) & ~*(v79 + 80);
            v86 = swift_allocObject();
            *(v86 + 1) = v109;
            (*(v79 + 16))(&v86[v85], v84, v78);
            v124.value._rawValue = v86;
            v124.is_nil = 0;
            sub_100030154(v124, v87);

            (*(v79 + 8))(v84, v78);
            v88 = v82;
            v34 = v116;
            sub_100008BB8(v88, &qword_1000425D0, &qword_100034098);
            (*(v83 + 8))(v117, v44);
LABEL_44:
            v89 = [v24 contactEventTrigger];
            v90 = v111;
            if (v89 && (v91 = v89, v92 = [v89 triggerContact], v91, v92))
            {
              v93 = sub_100008A10(&v90[OBJC_IVAR____TtC25RemindersIntentsExtension32TTRSetTaskAttributeIntentHandler_contactRepresentationResolver], *&v90[OBJC_IVAR____TtC25RemindersIntentsExtension32TTRSetTaskAttributeIntentHandler_contactRepresentationResolver + 24]);
              *&v94 = __chkstk_darwin(v93);
              *(&v107 - 2) = v94;
              *(&v107 - 2) = v92;
              sub_100008944(&qword_100041E68, &qword_1000340C0);
              swift_allocObject();
              v95 = v92;
              sub_100030624();
            }

            else
            {
              v122[0] = 0;
              sub_100008944(&qword_100041E68, &qword_1000340C0);
              swift_allocObject();
              sub_100030614();
              v95 = 0;
            }

            v96 = swift_allocObject();
            v97 = v107;
            v96[2] = v37;
            v96[3] = v97;
            v96[4] = v90;
            v96[5] = v34;
            v96[6] = v24;
            v96[7] = sub_10000B8D4;
            v96[8] = v121;
            v98 = v24;
            v99 = v97;

            v100 = v90;
            v101 = v34;

            v102 = sub_1000305B4();
            sub_1000305F4();

            sub_100008BB8(v120, &qword_100041BB0, &unk_1000340A0);

            return;
          }

          sub_100008BB8(v77, &qword_1000425D0, &qword_100034098);
          (*(v62 + 8))(v117, v44);
          v74 = v80;
          v72 = &qword_1000425D0;
          v73 = &qword_100034098;
        }

        sub_100008BB8(v74, v72, v73);
        goto LABEL_44;
      }

      if (v58 == 1)
      {
        v59 = 0;
LABEL_25:
        sub_1000301C4(v59);
        goto LABEL_26;
      }

      if (v58 == 2)
      {
        v59 = 1;
        goto LABEL_25;
      }

      v103 = sub_1000216C8(_swiftEmptyArrayStorage);
      v104 = sub_1000216C8(_swiftEmptyArrayStorage);

      _Block_release(a3);
      v105 = "unknown priority";
      v106 = 16;
LABEL_51:
      sub_100026B5C(v105, v106, 2, v103, v104);
      __break(1u);
      return;
    }
  }

  v45 = v24;
  v46 = sub_100030654();
  v47 = sub_100030864();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v122[0] = v49;
    *v48 = 136315138;
    v50 = [v45 targetTask];
    v123 = v50;
    sub_100008944(&qword_100041E60, &qword_1000340B8);
    v51 = sub_100030A94();
    v53 = v52;

    v54 = sub_10002B88C(v51, v53, v122);

    *(v48 + 4) = v54;
    _os_log_impl(&_mh_execute_header, v46, v47, "Should have resolved targetTask into a reminder. {targetTask: %s}", v48, 0xCu);
    sub_100008D70(v49);
  }

  v55 = [objc_allocWithZone(INSetTaskAttributeIntentResponse) initWithCode:4 userActivity:0];
  (a3)[2](a3, v55);
}

uint64_t sub_10000B760()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000B798()
{

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10000B82C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10000B890()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_10000B8D8(unint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v42 = a6;
  v41 = a5;
  v51 = sub_100030354();
  v10 = *(v51 - 8);
  v11.n128_f64[0] = __chkstk_darwin(v51);
  v13 = (&v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v54 = _swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
    v14 = sub_100030CE4();
  }

  else
  {
    v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v44 = a3;
  v45 = a4;
  v40 = a2;
  if (v14)
  {
    if (v14 < 1)
    {
      __break(1u);
      return;
    }

    v15 = 0;
    v52 = a1 & 0xC000000000000001;
    v49 = enum case for REMStringMatchingStyle.prefix(_:);
    v48 = enum case for REMSearchCriterion.textualField(_:);
    v46 = v10 + 32;
    v47 = (v10 + 104);
    v16 = _swiftEmptyArrayStorage;
    v50 = _swiftEmptyArrayStorage;
    do
    {
      if (v52)
      {
        v18 = sub_100030BA4();
      }

      else
      {
        v18 = *(a1 + 8 * v15 + 32);
      }

      v19 = v18;
      v20 = sub_1000309A4();
      if (v20)
      {
        v17 = v20;
        sub_100030774();
        if (*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1000307B4();
        }

        sub_1000307C4();

        v50 = v54;
      }

      else
      {
        v21 = [v19 title];
        v22 = [v21 spokenPhrase];

        v23 = sub_1000306F4();
        v25 = v24;

        v26 = *(sub_100008944(&qword_100041BE8, &qword_100034130) + 48);
        *v13 = v23;
        v13[1] = v25;
        v27 = sub_100030474();
        (*(*(v27 - 8) + 104))(v13 + v26, v49, v27);
        (*v47)(v13, v48, v51);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = sub_10002B4CC(0, v16[2] + 1, 1, v16);
        }

        v29 = v16[2];
        v28 = v16[3];
        if (v29 >= v28 >> 1)
        {
          v16 = sub_10002B4CC((v28 > 1), v29 + 1, 1, v16);
        }

        v16[2] = v29 + 1;
        (*(v10 + 32))(v16 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v29, v13, v51);
      }

      ++v15;
    }

    while (v14 != v15);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
    v50 = _swiftEmptyArrayStorage;
  }

  v31 = v42;
  v30 = v43;
  v32 = v41;
  v33 = (*(v42 + 8))(v50, v41, v42, v11);
  if (v16[2])
  {
    v34 = sub_100008944(&qword_100041F70, &qword_100034138);
    __chkstk_darwin(v34);
    *(&v39 - 4) = v32;
    *(&v39 - 3) = v31;
    v35 = v40;
    *(&v39 - 2) = v30;
    *(&v39 - 1) = v35;
    v36 = sub_10002806C(sub_10000D7C4, (&v39 - 6), v16);

    v53 = v36;
    sub_100008944(&qword_100041F78, &qword_100034140);
    sub_10000D87C(&qword_100041F80, &qword_100041F78, &qword_100034140);
    sub_1000305D4();

    v37 = swift_allocObject();
    v37[2] = v44;
    v37[3] = v45;
    v37[4] = v33;

    v38 = sub_1000305B4();
    sub_1000305F4();
  }

  else
  {

    v44(v33);
  }
}

uint64_t sub_10000BDF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  sub_100008944(&qword_100041C28, &qword_100033DD0);
  v9 = sub_100030354();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_100033CF0;
  (*(v10 + 16))(v12 + v11, a1, v9);

  sub_10000CD78(v12);
  v13 = sub_10000BF44(a2, a3, a4);

  *a5 = v13;
  return result;
}

uint64_t sub_10000BF44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100008944(&qword_100041F70, &qword_100034138);
  swift_allocObject();
  return sub_100030624();
}

uint64_t sub_10000BFB0(uint64_t *a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  v6 = sub_10000C04C(*a1);

  sub_10000CED4(v6, sub_10000D20C);
  a2(a4);
}

uint64_t sub_10000C04C(uint64_t a1)
{
  v28 = *(a1 + 16);
  if (!v28)
  {
    return _swiftEmptyArrayStorage;
  }

  v1 = 0;
  v2 = _swiftEmptyArrayStorage;
  v27 = a1 + 32;
  v3 = &qword_100041F88;
  while (1)
  {
    v5 = *(v27 + 8 * v1);
    v6 = v5 >> 62;
    if (v5 >> 62)
    {
      v7 = sub_100030CE4();
    }

    else
    {
      v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v8 = v2 >> 62;
    if (v2 >> 62)
    {
      v25 = sub_100030CE4();
      v10 = v25 + v7;
      if (__OFADD__(v25, v7))
      {
LABEL_32:
        __break(1u);
        return _swiftEmptyArrayStorage;
      }
    }

    else
    {
      v9 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v10 = v9 + v7;
      if (__OFADD__(v9, v7))
      {
        goto LABEL_32;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v32 = v7;
    if (result)
    {
      if (!v8)
      {
        v11 = v2 & 0xFFFFFFFFFFFFFF8;
        if (v10 <= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

LABEL_14:
      sub_100030CE4();
      goto LABEL_15;
    }

    if (v8)
    {
      goto LABEL_14;
    }

LABEL_15:
    result = sub_100030BB4();
    v2 = result;
    v11 = result & 0xFFFFFFFFFFFFFF8;
LABEL_16:
    v12 = *(v11 + 16);
    v13 = *(v11 + 24);
    if (v6)
    {
      break;
    }

    v14 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      goto LABEL_3;
    }

LABEL_20:
    if (((v13 >> 1) - v12) < v32)
    {
      goto LABEL_36;
    }

    v29 = v1;
    v30 = v2;
    v16 = v11 + 8 * v12 + 32;
    v26 = v11;
    if (v6)
    {
      if (v14 < 1)
      {
        goto LABEL_38;
      }

      sub_10000D87C(&qword_100041F90, v3, &unk_100034148);
      for (i = 0; i != v14; ++i)
      {
        sub_100008944(v3, &unk_100034148);
        v18 = v3;
        v19 = sub_10002C064(v31, i, v5);
        v21 = *v20;
        (v19)(v31, 0);
        v3 = v18;
        *(v16 + 8 * i) = v21;
      }
    }

    else
    {
      sub_100008D28(0, &unk_100041EC0, REMReminder_ptr);
      swift_arrayInitWithCopy();
    }

    v1 = v29;
    v2 = v30;
    if (v32 >= 1)
    {
      v22 = *(v26 + 16);
      v23 = __OFADD__(v22, v32);
      v24 = v22 + v32;
      if (v23)
      {
        goto LABEL_37;
      }

      *(v26 + 16) = v24;
    }

LABEL_4:
    if (++v1 == v28)
    {
      return v2;
    }
  }

  v15 = v11;
  result = sub_100030CE4();
  v11 = v15;
  v14 = result;
  if (result)
  {
    goto LABEL_20;
  }

LABEL_3:

  if (v32 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_10000C330(uint64_t a1)
{
  v28 = *(a1 + 16);
  if (!v28)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_1000303E4();
  v1 = 0;
  v2 = _swiftEmptyArrayStorage;
  v3 = &qword_100041F50;
  while (1)
  {
    v5 = sub_1000303D4();
    v6 = v5;
    v7 = v5 >> 62;
    if (v5 >> 62)
    {
      v8 = sub_100030CE4();
    }

    else
    {
      v8 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v9 = v2 >> 62;
    if (v2 >> 62)
    {
      v26 = sub_100030CE4();
      v11 = v26 + v8;
      if (__OFADD__(v26, v8))
      {
LABEL_32:
        __break(1u);
        return _swiftEmptyArrayStorage;
      }
    }

    else
    {
      v10 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v11 = v10 + v8;
      if (__OFADD__(v10, v8))
      {
        goto LABEL_32;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v32 = v8;
    if (result)
    {
      if (!v9)
      {
        v12 = v2 & 0xFFFFFFFFFFFFFF8;
        if (v11 <= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

LABEL_14:
      sub_100030CE4();
      goto LABEL_15;
    }

    if (v9)
    {
      goto LABEL_14;
    }

LABEL_15:
    result = sub_100030BB4();
    v2 = result;
    v12 = result & 0xFFFFFFFFFFFFFF8;
LABEL_16:
    v13 = *(v12 + 16);
    v14 = *(v12 + 24);
    if (v7)
    {
      break;
    }

    v15 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v15)
    {
      goto LABEL_3;
    }

LABEL_20:
    if (((v14 >> 1) - v13) < v32)
    {
      goto LABEL_36;
    }

    v29 = v1;
    v30 = v2;
    v17 = v12 + 8 * v13 + 32;
    v27 = v12;
    if (v7)
    {
      if (v15 < 1)
      {
        goto LABEL_38;
      }

      sub_10000D87C(&qword_100041F58, v3, &qword_100034118);
      for (i = 0; i != v15; ++i)
      {
        sub_100008944(v3, &qword_100034118);
        v19 = v3;
        v20 = sub_10002C064(v31, i, v6);
        v22 = *v21;
        (v20)(v31, 0);
        v3 = v19;
        *(v17 + 8 * i) = v22;
      }
    }

    else
    {
      sub_100008D28(0, &qword_100041F48, REMList_ptr);
      swift_arrayInitWithCopy();
    }

    v1 = v29;
    v2 = v30;
    if (v32 >= 1)
    {
      v23 = *(v27 + 16);
      v24 = __OFADD__(v23, v32);
      v25 = v23 + v32;
      if (v24)
      {
        goto LABEL_37;
      }

      *(v27 + 16) = v25;
    }

LABEL_4:
    if (++v1 == v28)
    {
      return v2;
    }
  }

  v16 = v12;
  result = sub_100030CE4();
  v12 = v16;
  v15 = result;
  if (result)
  {
    goto LABEL_20;
  }

LABEL_3:

  if (v32 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_10000C664(uint64_t a1)
{
  v28 = *(a1 + 16);
  if (!v28)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_1000303E4();
  v1 = 0;
  v2 = _swiftEmptyArrayStorage;
  v3 = &qword_100041F38;
  while (1)
  {
    v5 = sub_1000303B4();
    v6 = v5;
    v7 = v5 >> 62;
    if (v5 >> 62)
    {
      v8 = sub_100030CE4();
    }

    else
    {
      v8 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v9 = v2 >> 62;
    if (v2 >> 62)
    {
      v26 = sub_100030CE4();
      v11 = v26 + v8;
      if (__OFADD__(v26, v8))
      {
LABEL_32:
        __break(1u);
        return _swiftEmptyArrayStorage;
      }
    }

    else
    {
      v10 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v11 = v10 + v8;
      if (__OFADD__(v10, v8))
      {
        goto LABEL_32;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v32 = v8;
    if (result)
    {
      if (!v9)
      {
        v12 = v2 & 0xFFFFFFFFFFFFFF8;
        if (v11 <= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

LABEL_14:
      sub_100030CE4();
      goto LABEL_15;
    }

    if (v9)
    {
      goto LABEL_14;
    }

LABEL_15:
    result = sub_100030BB4();
    v2 = result;
    v12 = result & 0xFFFFFFFFFFFFFF8;
LABEL_16:
    v13 = *(v12 + 16);
    v14 = *(v12 + 24);
    if (v7)
    {
      break;
    }

    v15 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v15)
    {
      goto LABEL_3;
    }

LABEL_20:
    if (((v14 >> 1) - v13) < v32)
    {
      goto LABEL_36;
    }

    v29 = v1;
    v30 = v2;
    v17 = v12 + 8 * v13 + 32;
    v27 = v12;
    if (v7)
    {
      if (v15 < 1)
      {
        goto LABEL_38;
      }

      sub_10000D87C(&qword_100041F40, v3, &qword_100034110);
      for (i = 0; i != v15; ++i)
      {
        sub_100008944(v3, &qword_100034110);
        v19 = v3;
        v20 = sub_10002C064(v31, i, v6);
        v22 = *v21;
        (v20)(v31, 0);
        v3 = v19;
        *(v17 + 8 * i) = v22;
      }
    }

    else
    {
      sub_100008D28(0, &qword_100041F30, REMSmartList_ptr);
      swift_arrayInitWithCopy();
    }

    v1 = v29;
    v2 = v30;
    if (v32 >= 1)
    {
      v23 = *(v27 + 16);
      v24 = __OFADD__(v23, v32);
      v25 = v23 + v32;
      if (v24)
      {
        goto LABEL_37;
      }

      *(v27 + 16) = v25;
    }

LABEL_4:
    if (++v1 == v28)
    {
      return v2;
    }
  }

  v16 = v12;
  result = sub_100030CE4();
  v12 = v16;
  v15 = result;
  if (result)
  {
    goto LABEL_20;
  }

LABEL_3:

  if (v32 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_10000C998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_10000D764;
  *(v14 + 24) = v13;
  v15 = *(a8 + 24);

  v15(a6, sub_10000D854, v14, a7, a8);
}

uint64_t sub_10000CAD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  v12 = *(a7 + 80);

  v12(sub_10000D730, v11, a6, a7);
}

uint64_t sub_10000CBB0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  sub_100008944(a3, a4);
  swift_allocObject();
  return sub_100030624();
}

uint64_t sub_10000CC08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_10000D764;
  *(v12 + 24) = v11;
  v13 = *(a7 + 88);

  v13(sub_10000D79C, v12, a6, a7);
}

uint64_t sub_10000CCE8(uint64_t *a1, void (*a2)(uint64_t, uint64_t))
{
  v3 = *a1;
  v4 = sub_10000C330(*a1);
  v5 = sub_10000C664(v3);
  a2(v4, v5);
}

uint64_t sub_10000CD78(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_10002B4CC(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = (v3[3] >> 1) - v3[2];
  result = sub_100030354();
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_10000CED4(unint64_t a1, uint64_t (*a2)(uint64_t, void, uint64_t))
{
  if (a1 >> 62)
  {
    v5 = sub_100030CE4();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v2 >> 62))
  {
    v6 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = __OFADD__(v6, v5);
    result = v6 + v5;
    if (!v7)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = sub_100030CE4();
  v7 = __OFADD__(v15, v5);
  result = v15 + v5;
  if (v7)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_10000CFCC(result, 1);
  v9 = *v2;
  v10 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v10 + 8 * *(v10 + 0x10) + 32, (*(v10 + 0x18) >> 1) - *(v10 + 0x10), a1);
  v12 = v11;

  if (v12 < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12 < 1)
  {
LABEL_9:
    *v2 = v9;
    return result;
  }

  v13 = *(v10 + 16);
  v7 = __OFADD__(v13, v12);
  v14 = v13 + v12;
  if (!v7)
  {
    *(v10 + 16) = v14;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_10000CFCC(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_100030CE4();
LABEL_9:
  result = sub_100030BB4();
  *v2 = result;
  return result;
}

uint64_t sub_10000D06C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_100030CE4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_100030CE4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10000D87C(&qword_100041FA0, &qword_100041F98, &qword_100034158);
          for (i = 0; i != v6; ++i)
          {
            sub_100008944(&qword_100041F98, &qword_100034158);
            v9 = sub_10002C064(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_100008D28(0, &qword_100041C20, INTaskList_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10000D20C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_100030CE4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_100030CE4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10000D87C(&qword_100041F90, &qword_100041F88, &unk_100034148);
          for (i = 0; i != v6; ++i)
          {
            sub_100008944(&qword_100041F88, &unk_100034148);
            v9 = sub_10002C064(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_100008D28(0, &unk_100041EC0, REMReminder_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10000D3AC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_100030CE4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_100030CE4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10000D87C(&qword_100041F40, &qword_100041F38, &qword_100034110);
          for (i = 0; i != v6; ++i)
          {
            sub_100008944(&qword_100041F38, &qword_100034110);
            v9 = sub_10002C064(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_100008D28(0, &qword_100041F30, REMSmartList_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10000D54C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_100030CE4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_100030CE4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10000D87C(&qword_100041F58, &qword_100041F50, &qword_100034118);
          for (i = 0; i != v6; ++i)
          {
            sub_100008944(&qword_100041F50, &qword_100034118);
            v9 = sub_10002C064(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_100008D28(0, &qword_100041F48, REMList_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10000D6F8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000D764(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t sub_10000D7E8()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000D87C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100008C7C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_10000D8E0(uint64_t a1, unint64_t a2)
{
  v82 = sub_100030394();
  v4 = *(v82 - 8);
  __chkstk_darwin(v82);
  v81 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v80 = &v65 - v7;
  v8 = sub_100030354();
  base_props = v8[-1].base_props;
  __chkstk_darwin(v8);
  v11 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v70 = &v65 - v13;
  __chkstk_darwin(v14);
  v83 = &v65 - v15;
  __chkstk_darwin(v16);
  v18 = &v65 - v17;
  v19 = a2 >> 62;
  if (a2 >> 62)
  {
    goto LABEL_50;
  }

  v20 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (v20 < 2)
  {
    goto LABEL_12;
  }

  v66 = v19;
  v67 = v11;
  v69 = a1;
  v21 = *(a1 + 16);
  v71 = a2;

  v68 = v21;
  v22 = v83;
  if (!v21)
  {
LABEL_11:

    goto LABEL_12;
  }

  v24 = *(base_props + 2);
  v23 = base_props + 16;
  v89 = v24;
  v25 = v69 + ((v23[64] + 32) & ~v23[64]);
  v86 = *(v23 + 7);
  v88 = (v23 + 72);
  v26 = enum case for REMSearchCriterion.listType(_:);
  v79 = (v23 + 80);
  v76 = (v4 + 32);
  v75 = enum case for REMSearchableListType.grocery(_:);
  v74 = (v4 + 104);
  v73 = (v4 + 8);
  v87 = v23 - 8;
  v65 = v25;
  v27 = v25;
  v28 = v68;
  v77 = v18;
  v78 = v23;
  while (1)
  {
    v30 = v89;
    v89(v18, v27, v8);
    v30(v22, v18, v8);
    v31 = *v88;
    if ((*v88)(v22, v8) == v26)
    {
      break;
    }

    v29 = *v87;
    (*v87)(v22, v8);
LABEL_7:
    v29(v18, v8);
    v27 += v86;
    if (!--v28)
    {
      goto LABEL_11;
    }
  }

  v84 = v31;
  v72 = *v79;
  v72(v22, v8);
  v32 = v80;
  v33 = v22;
  v34 = v82;
  (*v76)(v80, v33, v82);
  v35 = v81;
  (*v74)(v81, v75, v34);
  v85 = sub_100030384();
  v36 = *v73;
  (*v73)(v35, v34);
  v36(v32, v34);
  v29 = *v87;
  if ((v85 & 1) == 0)
  {
    v18 = v77;
    v22 = v83;
    goto LABEL_7;
  }

  base_props = v8;
  v29(v77, v8);

  v19 = enum case for REMSearchCriterion.textualField(_:);
  v41 = v70;
  v42 = v65;
  v43 = v68;
  v44 = v72;
  while (1)
  {
    v89(v41, v42, base_props);
    if (v84(v41, base_props) == v19)
    {
      break;
    }

    v29(v41, base_props);
    v42 += v86;
    if (!--v43)
    {
      goto LABEL_11;
    }
  }

  v44(v41, base_props);
  v86 = *(v41 + 1);
  v45 = sub_100008944(&qword_100041BE8, &qword_100034130);
  v18 = v42;
  v46 = *(v45 + 48);
  v47 = sub_100030474();
  v48 = *(*(v47 - 8) + 8);
  v48(&v41[v46], v47);

  v49 = v67;
  v89(v67, v18, base_props);
  if (v84(v49, base_props) == v19)
  {
    v72(v49, base_props);
    v50 = *(v49 + 1);
    v88 = *v49;
    v89 = v50;
    v48(&v49[*(v45 + 48)], v47);

    v93 = _swiftEmptyArrayStorage;
    a2 = v71;
    if (v66)
    {
      v4 = sub_100030CE4();
    }

    else
    {
      v4 = *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v4)
    {
      v11 = 0;
      v51 = a2 & 0xC000000000000001;
      a1 = a2 & 0xFFFFFFFFFFFFFF8;
      v8 = &TTRBundleLookupObject__metaData;
      v52 = &TTRBundleLookupObject__metaData;
      v87 = v4;
      while (1)
      {
        if (v51)
        {
          v53 = sub_100030BA4();
        }

        else
        {
          if (v11 >= *(a1 + 16))
          {
            goto LABEL_49;
          }

          v53 = *(a2 + 8 * v11 + 32);
        }

        v19 = v53;
        base_props = (v11 + 1);
        if (__OFADD__(v11, 1))
        {
          __break(1u);
LABEL_49:
          __break(1u);
LABEL_50:
          v20 = sub_100030CE4();
          goto LABEL_3;
        }

        v54 = [v53 v8[52].ivars];
        if (v54)
        {
          v18 = v54;
          if ([v54 v52[52].weak_ivar_lyt])
          {
            v55 = a1;
            v56 = v51;
            v57 = v8;
            v58 = [v19 name];
            v59 = sub_1000306F4();
            v61 = v60;

            v92[0] = v59;
            v92[1] = v61;
            v90 = v88;
            v91 = v89;
            sub_10000FA88();
            v62 = sub_100030AA4();

            if (v62)
            {
            }

            else
            {
              sub_100030BD4();
              v18 = v93[2];
              sub_100030C04();
              sub_100030C14();
              sub_100030BE4();
            }

            a2 = v71;
            v8 = v57;
            v51 = v56;
            a1 = v55;
            v4 = v87;
            v52 = &TTRBundleLookupObject__metaData;
            goto LABEL_28;
          }
        }

LABEL_28:
        ++v11;
        if (base_props == v4)
        {
          v63 = v93;
          goto LABEL_42;
        }
      }
    }

    v63 = _swiftEmptyArrayStorage;
LABEL_42:

    if ((v63 & 0x8000000000000000) != 0 || (v63 & 0x4000000000000000) != 0)
    {
      if (sub_100030CE4())
      {
LABEL_45:
        if (_swiftEmptyArrayStorage >> 62 && sub_100030CE4())
        {
          sub_10000F634(_swiftEmptyArrayStorage);
        }

        else
        {
          v64 = &_swiftEmptySetSingleton;
        }

        v92[0] = v64;
        v39 = sub_10000F900(v63, v92);

        goto LABEL_15;
      }
    }

    else if (*(v63 + 16))
    {
      goto LABEL_45;
    }

LABEL_12:
    if (_swiftEmptyArrayStorage >> 62 && sub_100030CE4())
    {
      sub_10000F634(_swiftEmptyArrayStorage);
    }

    else
    {
      v37 = &_swiftEmptySetSingleton;
    }

    v92[0] = v37;

    v39 = sub_10000F900(v38, v92);

LABEL_15:

    return v39;
  }

  result = (v29)(v49, base_props);
  __break(1u);
  return result;
}

uint64_t sub_10000E208(uint64_t *a1, void *a2)
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

    v9 = sub_100030B24();

    if (v9)
    {

      sub_10000FADC();
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_100030B14();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_10000E570(v7, result + 1);
    v20 = v19[2];
    if (v19[3] <= v20)
    {
      sub_10000E750(v20 + 1);
    }

    v18 = v8;
    sub_10000EBD8(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_10000FADC();
  v11 = sub_100030A54(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_10000EC5C(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_100030A64();

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

uint64_t sub_10000E420(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_100030D84();
  sub_100030734();
  v8 = sub_100030D94();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_100030D44() & 1) != 0)
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

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_10000EDBC(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

Swift::Int sub_10000E570(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100008944(&qword_100041FB0, &qword_100034160);
    v2 = sub_100030B64();
    v15 = v2;
    sub_100030B04();
    if (sub_100030B34())
    {
      sub_10000FADC();
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_10000E750(v9 + 1);
        }

        v2 = v15;
        result = sub_100030A54(*(v15 + 40));
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

      while (sub_100030B34());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

uint64_t sub_10000E750(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100008944(&qword_100041FB0, &qword_100034160);
  result = sub_100030B54();
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
      result = sub_100030A54(*(v5 + 40));
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

uint64_t sub_10000E978(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100008944(&qword_100041FB8, &qword_100034168);
  result = sub_100030B54();
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
      sub_100030D84();
      sub_100030734();
      result = sub_100030D94();
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

unint64_t sub_10000EBD8(uint64_t a1, void *a2)
{
  sub_100030A54(a2[5]);
  result = sub_100030AF4();
  *(a2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << result;
  *(a2[6] + 8 * result) = a1;
  ++a2[2];
  return result;
}

void sub_10000EC5C(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_10000E750(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_10000EF3C();
      goto LABEL_12;
    }

    sub_10000F1E8(v6 + 1);
  }

  v8 = *v3;
  v9 = sub_100030A54(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_10000FADC();
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_100030A64();

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
  sub_100030D54();
  __break(1u);
}

uint64_t sub_10000EDBC(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_10000E978(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_10000F08C();
      goto LABEL_16;
    }

    sub_10000F3FC(v8 + 1);
  }

  v10 = *v4;
  sub_100030D84();
  sub_100030734();
  result = sub_100030D94();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_100030D44();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_100030D54();
  __break(1u);
  return result;
}

id sub_10000EF3C()
{
  v1 = v0;
  sub_100008944(&qword_100041FB0, &qword_100034160);
  v2 = *v0;
  v3 = sub_100030B44();
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

void *sub_10000F08C()
{
  v1 = v0;
  sub_100008944(&qword_100041FB8, &qword_100034168);
  v2 = *v0;
  v3 = sub_100030B44();
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

uint64_t sub_10000F1E8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100008944(&qword_100041FB0, &qword_100034160);
  result = sub_100030B54();
  v5 = result;
  if (*(v3 + 16))
  {
    v25 = v1;
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
      v16 = *(v5 + 40);
      v17 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      result = sub_100030A54(v16);
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
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
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v17;
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

        v2 = v25;
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

uint64_t sub_10000F3FC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100008944(&qword_100041FB8, &qword_100034168);
  result = sub_100030B54();
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
      sub_100030D84();

      sub_100030734();
      result = sub_100030D94();
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

void sub_10000F634(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_100030CE4())
    {
LABEL_3:
      sub_100008944(&qword_100041FB0, &qword_100034160);
      v3 = sub_100030B74();
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_100030CE4();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = (v3 + 7);
  v37 = v5;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    while (1)
    {
      v8 = sub_100030BA4();
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_100030A54(v3[5]);
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *&v6[8 * (v13 >> 6)];
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_10000FADC();
        while (1)
        {
          v18 = *(v3[6] + 8 * v13);
          v19 = sub_100030A64();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *&v6[8 * (v13 >> 6)];
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v5 = v37;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v5 = v37;
        if (v7 == v37)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *&v6[8 * v14] = v16 | v15;
        *(v3[6] + 8 * v13) = v10;
        v20 = v3[2];
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_32;
        }

        v3[2] = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v36 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v36)
    {
      v23 = v3[5];
      v24 = *(a1 + 32 + 8 * v22);
      v25 = sub_100030A54(v23);
      v26 = -1 << *(v3 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      v29 = *&v6[8 * (v27 >> 6)];
      v30 = 1 << v27;
      if (((1 << v27) & v29) != 0)
      {
        v31 = ~v26;
        sub_10000FADC();
        while (1)
        {
          v32 = *(v3[6] + 8 * v27);
          v33 = sub_100030A64();

          if (v33)
          {
            break;
          }

          v27 = (v27 + 1) & v31;
          v28 = v27 >> 6;
          v29 = *&v6[8 * (v27 >> 6)];
          v30 = 1 << v27;
          if (((1 << v27) & v29) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *&v6[8 * v28] = v30 | v29;
        *(v3[6] + 8 * v27) = v24;
        v34 = v3[2];
        v9 = __OFADD__(v34, 1);
        v35 = v34 + 1;
        if (v9)
        {
          goto LABEL_34;
        }

        v3[2] = v35;
      }

      if (++v22 == v37)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

void *sub_10000F900(unint64_t a1, uint64_t a2)
{
  v13 = _swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
LABEL_16:
    v3 = sub_100030CE4();
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
LABEL_3:
      v4 = 0;
      v5 = a1 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v6 = sub_100030BA4();
          v7 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
LABEL_13:
            __break(1u);
            return v13;
          }
        }

        else
        {
          if (v4 >= *(v5 + 16))
          {
            __break(1u);
            goto LABEL_16;
          }

          v6 = *(a1 + 8 * v4 + 32);
          v7 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
            goto LABEL_13;
          }
        }

        v8 = v6;
        v9 = sub_10000E208(&v12, v8);

        if (v9)
        {
          sub_100030BD4();
          sub_100030C04();
          v5 = v11;
          sub_100030C14();
          sub_100030BE4();
        }

        else
        {
        }

        ++v4;
        if (v7 == v3)
        {
          return v13;
        }
      }
    }
  }

  return _swiftEmptyArrayStorage;
}

unint64_t sub_10000FA88()
{
  result = qword_100041FA8;
  if (!qword_100041FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100041FA8);
  }

  return result;
}

unint64_t sub_10000FADC()
{
  result = qword_100041F48;
  if (!qword_100041F48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100041F48);
  }

  return result;
}

uint64_t sub_10000FB28()
{
  v0 = sub_100030664();
  sub_100008CC4(v0, qword_100041FC0);
  v1 = sub_1000089D8(v0, qword_100041FC0);
  if (qword_100041B10 != -1)
  {
    swift_once();
  }

  v2 = sub_1000089D8(v0, qword_100042D50);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10000FBF0(uint64_t a1)
{
  v2 = v1;
  if (qword_100041AD8 != -1)
  {
    swift_once();
  }

  v4 = sub_100030664();
  sub_1000089D8(v4, qword_100041FC0);
  v5 = sub_100030654();
  v6 = sub_100030884();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "[TTRIntentsHandlerStoreDataSource] Using the backup intents handler data source", v7, 2u);
  }

  *(v2 + 16) = a1;
  return v2;
}

uint64_t sub_10000FCE0(uint64_t a1, void (*a2)(uint64_t))
{
  sub_100030414();
  v3 = [objc_opt_self() defaultFetchOptions];
  v4 = sub_100030404();

  a2(v4);
}

void *sub_10000FF24(unint64_t a1)
{
  if (a1 >> 62)
  {
    if (!sub_100030CE4())
    {
      return _swiftEmptyArrayStorage;
    }
  }

  else if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = *(v1 + 16);
  sub_100008D28(0, &unk_1000420E0, REMObjectID_ptr);
  isa = sub_100030784().super.isa;
  v19 = 0;
  v4 = [v2 fetchRemindersWithObjectIDs:isa error:&v19];

  v5 = v19;
  if (v4)
  {
    sub_100008D28(0, &unk_100041EC0, REMReminder_ptr);
    sub_100012784();
    v6 = sub_100030684();
    v7 = v5;

    v8 = sub_10002BE34(v6);

    return v8;
  }

  v10 = v19;
  sub_10002FE24();

  swift_willThrow();
  if (qword_100041AD8 != -1)
  {
    swift_once();
  }

  v11 = sub_100030664();
  sub_1000089D8(v11, qword_100041FC0);

  v12 = sub_100030654();
  v13 = sub_100030864();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v19 = v15;
    *v14 = 136315138;
    v16 = sub_1000307A4();
    v18 = sub_10002B88C(v16, v17, &v19);

    *(v14 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v12, v13, "Error fetching reminders by objetIDs {objectIDs: %s}", v14, 0xCu);
    sub_100008D70(v15);
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_1000101CC(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v6 = sub_1000303E4();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  __chkstk_darwin(v8);
  v10 = &v13 - v9;
  if (*(a1 + 16) <= 1uLL)
  {
    sub_100030414();
    sub_1000303A4();
    a2(v10);
    return (*(v7 + 8))(v10, v6);
  }

  else
  {
    v11 = swift_allocObject();
    *(v11 + 16) = a2;
    *(v11 + 24) = a3;

    sub_10002833C(a1, sub_100012834, v11);
  }
}

uint64_t sub_100010510(uint64_t a1, uint64_t a2, void (*a3)(char *))
{
  v4 = sub_1000303E4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_1000303C4();
  a3(v7);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_100010614(unint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v81 = a3;
  v80 = a2;
  v79 = sub_1000303E4();
  v78 = *(v79 - 8);
  __chkstk_darwin(v79);
  v77 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_100030354();
  v92 = *(v97 - 8);
  __chkstk_darwin(v97);
  v86 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v95 = &v76 - v11;
  v99 = _swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
    v12 = sub_100030CE4();
    if (v12)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
LABEL_3:
      if (v12 >= 1)
      {
        v13 = 0;
        v14 = a1 & 0xC000000000000001;
        v87 = enum case for REMSearchCriterion.textualField(_:);
        v88 = enum case for REMStringMatchingStyle.prefix(_:);
        v93 = (v92 + 32);
        v94 = (v92 + 104);
        v85 = 0x8000000100034940;
        v84 = enum case for REMSearchableListType.grocery(_:);
        v6 = _swiftEmptyArrayStorage;
        v83 = enum case for REMSearchCriterion.listType(_:);
        v96 = _swiftEmptyArrayStorage;
        v89 = a1 & 0xC000000000000001;
        v90 = v12;
        v91 = a1;
        while (1)
        {
          if (v14)
          {
            v15 = sub_100030BA4();
          }

          else
          {
            v15 = *(a1 + 8 * v13 + 32);
          }

          v16 = v15;
          v17 = sub_100030834();
          if (v17)
          {
            v18 = v17;
            sub_100030774();
            if (*((v99 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v99 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1000307B4();
            }

            sub_1000307C4();

            v96 = v99;
            goto LABEL_7;
          }

          v19 = [v16 title];
          v20 = [v19 spokenPhrase];

          v21 = sub_1000306F4();
          v23 = v22;

          v24 = *(sub_100008944(&qword_100041BE8, &qword_100034130) + 48);
          v25 = v95;
          *v95 = v21;
          *(v25 + 1) = v23;
          v26 = sub_100030474();
          (*(*(v26 - 8) + 104))(&v25[v24], v88, v26);
          v27 = *v94;
          (*v94)(v25, v87, v97);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v6 = sub_10002B4CC(0, v6[2] + 1, 1, v6);
          }

          v29 = v6[2];
          v28 = v6[3];
          if (v29 >= v28 >> 1)
          {
            v6 = sub_10002B4CC((v28 > 1), v29 + 1, 1, v6);
          }

          v6[2] = v29 + 1;
          v30 = (*(v92 + 80) + 32) & ~*(v92 + 80);
          v31 = v6;
          v32 = v6 + v30;
          v33 = *(v92 + 72);
          v34 = &v32[v33 * v29];
          v35 = *(v92 + 32);
          v35(v34, v95, v97);
          v36 = [v16 title];
          v37 = [v36 vocabularyIdentifier];

          if (v37)
          {
            v38 = sub_1000306F4();
            v40 = v39;

            if (v38 == 0xD000000000000011 && v85 == v40)
            {

LABEL_24:
              v42 = sub_100030394();
              v43 = v86;
              (*(*(v42 - 8) + 104))(v86, v84, v42);
              v27(v43, v83, v97);
              v45 = v31[2];
              v44 = v31[3];
              if (v45 >= v44 >> 1)
              {
                v31 = sub_10002B4CC((v44 > 1), v45 + 1, 1, v31);
              }

              a1 = v91;

              v31[2] = v45 + 1;
              v46 = v31 + v30 + v45 * v33;
              v6 = v31;
              v35(v46, v86, v97);
              goto LABEL_6;
            }

            v41 = sub_100030D44();

            if (v41)
            {
              goto LABEL_24;
            }
          }

          v6 = v31;
          a1 = v91;
LABEL_6:
          v14 = v89;
          v12 = v90;
LABEL_7:
          if (v12 == ++v13)
          {
            goto LABEL_29;
          }
        }
      }

      __break(1u);
      goto LABEL_61;
    }
  }

  v6 = _swiftEmptyArrayStorage;
  v96 = _swiftEmptyArrayStorage;
LABEL_29:
  v5 = v96;
  if (!(v96 >> 62))
  {
    if (*((v96 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_31;
    }

LABEL_58:
    v54 = _swiftEmptyArrayStorage;
    v4 = _swiftEmptyArrayStorage;
    if (v6[2])
    {
      goto LABEL_54;
    }

    goto LABEL_59;
  }

LABEL_57:
  if (!sub_100030CE4())
  {
    goto LABEL_58;
  }

LABEL_31:
  v3 = *(v82 + 16);
  v47 = sub_100008D28(0, &unk_1000420E0, REMObjectID_ptr);

  isa = sub_100030784().super.isa;

  v100 = 0;
  v49 = [v3 fetchListsWithObjectIDs:isa error:&v100];

  v50 = v100;
  v95 = v47;
  if (!v49)
  {
    v60 = v100;
    sub_10002FE24();

    swift_willThrow();
    v4 = _swiftEmptyArrayStorage;
LABEL_48:
    if (qword_100041AD8 != -1)
    {
      swift_once();
    }

    v62 = sub_100030664();
    sub_1000089D8(v62, qword_100041FC0);
    v63 = sub_100030654();
    v64 = sub_100030864();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v100 = v66;
      *v65 = 136315138;

      v67 = v4;
      v68 = sub_1000307A4();
      v70 = v69;

      v71 = sub_10002B88C(v68, v70, &v100);

      *(v65 + 4) = v71;
      v4 = v67;
      _os_log_impl(&_mh_execute_header, v63, v64, "Error fetching lists by objetIDs {objectIDs: %s}", v65, 0xCu);
      sub_100008D70(v66);
    }

    v54 = _swiftEmptyArrayStorage;
    goto LABEL_53;
  }

  sub_100008D28(0, &qword_100041F48, REMList_ptr);
  sub_100012784();
  v51 = sub_100030684();
  v52 = v50;

  v4 = sub_10002BEF4(v51);

  if (!(v5 >> 62))
  {
    v53 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_34;
  }

LABEL_61:
  v53 = sub_100030CE4();
LABEL_34:
  v54 = _swiftEmptyArrayStorage;
  if (v53)
  {
    v93 = v4;
    v94 = v6;
    v100 = _swiftEmptyArrayStorage;

    sub_100030BF4();
    if (v53 < 0)
    {
      __break(1u);
    }

    v55 = 0;
    v6 = (v5 & 0xC000000000000001);
    v97 = v5 & 0xFFFFFFFFFFFFFF8;
    do
    {
      v56 = v55 + 1;
      if (__OFADD__(v55, 1))
      {
        __break(1u);
LABEL_56:
        __break(1u);
        goto LABEL_57;
      }

      if (v6)
      {
        v57 = sub_100030BA4();
      }

      else
      {
        if (v55 >= *(v97 + 16))
        {
          goto LABEL_56;
        }

        v57 = *(v5 + 8 * v55 + 32);
      }

      v58 = v57;
      v98[0] = 0;
      if (![v3 fetchCustomSmartListWithObjectID:v57 error:v98])
      {
        v61 = v98[0];

        sub_10002FE24();

        swift_willThrow();

        v4 = v93;
        v6 = v94;
        goto LABEL_48;
      }

      v59 = v98[0];

      sub_100030BD4();
      sub_100030C04();
      sub_100030C14();
      sub_100030BE4();
      ++v55;
      v5 = v96;
    }

    while (v56 != v53);

    v54 = v100;
    v4 = v93;
    v6 = v94;
    if (v94[2])
    {
      goto LABEL_54;
    }

    goto LABEL_59;
  }

LABEL_53:
  if (v6[2])
  {
LABEL_54:
    v72 = swift_allocObject();
    v73 = v81;
    v72[2] = v80;
    v72[3] = v73;
    v72[4] = v4;
    v72[5] = v6;
    v72[6] = v54;

    sub_10002833C(v6, sub_100012774, v72);
  }

LABEL_59:

  v75 = v77;
  sub_1000303C4();
  v80(v75);
  (*(v78 + 8))(v75, v79);
}

uint64_t sub_1000110D0(unint64_t a1, unint64_t a2, void (*a3)(char *), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = sub_1000303E4();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1;

  sub_10000CEBC(v15);
  sub_10000D8E0(a6, v19);

  v19 = a2;

  sub_10000CEA4(v16);
  sub_1000303C4();
  a3(v14);
  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_100011234(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v7 = swift_allocObject();
  *(v7 + 16) = _swiftEmptyArrayStorage;
  v8 = *(v3 + 16);
  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = v7;
  v13[4] = sub_100012368;
  v13[5] = v9;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_100011B5C;
  v13[3] = &unk_10003D648;
  v10 = _Block_copy(v13);

  [v8 enumerateAllListsWithBlock:v10];
  _Block_release(v10);
  swift_beginAccess();

  a3(v11);
}

void sub_1000113B0(char *a1, uint64_t a2, uint64_t a3, char *a4, void *a5)
{
  v8 = a1;
  if (![a1 isShared])
  {
    return;
  }

  v9 = [v8 sharedOwnerAddress];
  if (v9)
  {
    v10 = v9;
    v11 = sub_1000306F4();
    v13 = v12;

    if (sub_10001187C(v11, v13, a3))
    {
    }

    else
    {
      v14 = sub_10001187C(v11, v13, a4);

      if ((v14 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    if ([v8 isShared])
    {
      swift_beginAccess();
      v15 = v8;
      sub_100030774();
      if (*((a5[2] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((a5[2] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1000307B4();
      }

      sub_1000307C4();
      swift_endAccess();
    }
  }

LABEL_10:
  v16 = [v8 shareeContext];
  if (!v16)
  {
    return;
  }

  v17 = v16;
  v18 = [v16 sharees];

  sub_100008D28(0, &qword_1000420D8, REMSharee_ptr);
  v19 = sub_100030794();

  if (v19 >> 62)
  {
LABEL_34:
    v20 = sub_100030CE4();
    v42 = a4;
    if (v20)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v42 = a4;
    if (v20)
    {
LABEL_13:
      a4 = 0;
      v43 = _swiftEmptyArrayStorage;
      v40 = v8;
      v41 = a5;
      while (2)
      {
        v8 = a4;
        while (1)
        {
          if ((v19 & 0xC000000000000001) != 0)
          {
            v21 = sub_100030BA4();
          }

          else
          {
            if (v8 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_33;
            }

            v21 = *(v19 + 8 * v8 + 32);
          }

          a5 = v21;
          a4 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            __break(1u);
LABEL_33:
            __break(1u);
            goto LABEL_34;
          }

          v22 = [v21 status];
          if (v22 > 5)
          {
            if (qword_100041AD8 != -1)
            {
              swift_once();
            }

            v34 = sub_100030664();
            sub_1000089D8(v34, qword_100041FC0);
            v35 = sub_1000216C8(_swiftEmptyArrayStorage);
            v36 = sub_1000216C8(_swiftEmptyArrayStorage);
            sub_100026B5C("unknown status", 14, 2, v35, v36);
            __break(1u);
            return;
          }

          if (((1 << v22) & 0x1D) == 0)
          {
            v23 = [a5 address];
            if (v23)
            {
              break;
            }
          }

          ++v8;
          if (a4 == v20)
          {
            v8 = v40;
            a5 = v41;
            goto LABEL_36;
          }
        }

        v38 = v23;
        v24 = [v23 rem_removingMailto];

        v25 = sub_1000306F4();
        v37 = v26;
        v39 = v25;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v43 = sub_10002B4F4(0, *(v43 + 2) + 1, 1, v43);
        }

        v29 = *(v43 + 2);
        v28 = *(v43 + 3);
        if (v29 >= v28 >> 1)
        {
          v43 = sub_10002B4F4((v28 > 1), v29 + 1, 1, v43);
        }

        *(v43 + 2) = v29 + 1;
        v30 = &v43[16 * v29];
        *(v30 + 4) = v39;
        *(v30 + 5) = v37;
        v8 = v40;
        a5 = v41;
        if (a4 != v20)
        {
          continue;
        }

        goto LABEL_36;
      }
    }
  }

  v43 = _swiftEmptyArrayStorage;
LABEL_36:

  v31 = sub_100021AE0(v43);

  if (sub_100011974(v31, a3))
  {
    v32 = sub_100011974(v31, v42);

    if (v32)
    {
      return;
    }
  }

  else
  {
  }

  swift_beginAccess();
  v33 = v8;
  sub_100030774();
  if (*((a5[2] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((a5[2] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1000307B4();
  }

  sub_1000307C4();
  swift_endAccess();
}

uint64_t sub_10001187C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_100030D84();
  sub_100030734();
  v6 = sub_100030D94();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_100030D44() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_100011974(uint64_t a1, uint64_t a2)
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
      sub_100030D84();

      sub_100030734();
      v19 = sub_100030D94();
      v20 = -1 << *(v6 + 32);
      v21 = v19 & ~v20;
      if ((*(v11 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
      {
        v22 = ~v20;
        while (1)
        {
          v23 = (*(v6 + 48) + 16 * v21);
          v24 = *v23 == v18 && v23[1] == v17;
          if (v24 || (sub_100030D44() & 1) != 0)
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

void sub_100011B5C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

id sub_100011BD0()
{
  v1 = *(v0 + 16);
  v14 = 0;
  result = [v1 fetchDefaultListWithError:&v14];
  if (v14)
  {
    v3 = result;
    v4 = v14;

    swift_willThrow();
    if (qword_100041AD8 != -1)
    {
      swift_once();
    }

    v5 = sub_100030664();
    sub_1000089D8(v5, qword_100041FC0);
    v6 = v4;
    v7 = sub_100030654();
    v8 = sub_100030864();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v14 = v10;
      *v9 = 136315138;
      swift_getErrorValue();
      v11 = sub_100030D64();
      v13 = sub_10002B88C(v11, v12, &v14);

      *(v9 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v7, v8, "Error fetching default list %s", v9, 0xCu);
      sub_100008D70(v10);
    }

    else
    {
    }

    return 0;
  }

  return result;
}

uint64_t sub_100011DB8(uint64_t a1)
{
  v14[0] = a1;
  v1 = sub_1000304A4();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100030554();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100008944(&qword_1000420D0, &unk_1000341E0);
  __chkstk_darwin(v9 - 8);
  v11 = v14 - v10;
  sub_100030564();
  sub_100030494();
  sub_100030484();
  (*(v2 + 8))(v4, v1);
  sub_100030544();
  (*(v6 + 8))(v8, v5);
  v12 = sub_100030534();
  (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
  (v14[0])(v11);
  return sub_100012280(v11);
}

uint64_t sub_10001203C()
{

  return _swift_deallocClassInstance(v0, 24, 7);
}

uint64_t sub_100012198(void (*a1)(uint64_t))
{
  sub_100008944(&qword_1000426C0, &unk_100034550);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100034180;
  v3 = REMSmartListTypeToday;
  v4 = REMSmartListTypeScheduled;
  *(v2 + 32) = REMSmartListTypeToday;
  *(v2 + 40) = v4;
  v5 = REMSmartListTypeAll;
  v6 = REMSmartListTypeFlagged;
  *(v2 + 48) = REMSmartListTypeAll;
  *(v2 + 56) = v6;
  v7 = REMSmartListTypeAssigned;
  *(v2 + 64) = REMSmartListTypeAssigned;
  v8 = v3;
  v9 = v4;
  v10 = v5;
  v11 = v6;
  v12 = v7;
  a1(v2);
}

uint64_t sub_100012280(uint64_t a1)
{
  v2 = sub_100008944(&qword_1000420D0, &unk_1000341E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000122E8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100012320()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100012374(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001238C(uint64_t a1, uint64_t a2, void (*a3)(char *), uint64_t a4)
{
  v7 = sub_1000303E4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  __chkstk_darwin(v9);
  v11 = &v15 - v10;
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  *(v12 + 24) = a4;
  if (*(a1 + 16) < 2uLL)
  {
    sub_100030414();

    sub_1000303A4();
    a3(v11);
    (*(v8 + 8))(v11, v7);
  }

  else
  {
    v13 = swift_allocObject();
    *(v13 + 16) = sub_100012824;
    *(v13 + 24) = v12;

    sub_10002833C(a1, sub_10001282C, v13);
  }
}

uint64_t sub_100012724()
{

  return _swift_deallocObject(v0, 56, 7);
}

unint64_t sub_100012784()
{
  result = qword_100042150;
  if (!qword_100042150)
  {
    sub_100008D28(255, &unk_1000420E0, REMObjectID_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100042150);
  }

  return result;
}

uint64_t sub_1000127EC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100012840()
{
  v0 = sub_100030664();
  sub_100008CC4(v0, qword_1000420F0);
  v1 = sub_1000089D8(v0, qword_1000420F0);
  if (qword_100041B10 != -1)
  {
    swift_once();
  }

  v2 = sub_1000089D8(v0, qword_100042D50);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100012908(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = [a1 tasks];
  if (v7)
  {
    v8 = v7;
    sub_100008D28(0, &unk_100041E90, INTask_ptr);
    v9 = sub_100030794();

    v10 = swift_allocObject();
    *(v10 + 16) = a2;
    *(v10 + 24) = a3;

    sub_10002CFAC(v9, sub_100013CAC, v10);
  }

  else
  {
    v11 = *(v3 + OBJC_IVAR____TtC25RemindersIntentsExtension27TTRSnoozeTasksIntentHandler_dataSource);
    v12 = swift_allocObject();
    v12[2] = a2;
    v12[3] = a3;
    v12[4] = a1;
    v13 = v11[6];
    v14 = v11[7];
    sub_100008A10(v11 + 3, v13);
    v15 = swift_allocObject();
    v15[2] = v11;
    v15[3] = sub_100013C1C;
    v15[4] = v12;
    v16 = *(v14 + 8);

    v17 = a1;

    v16(sub_100013C68, v15, v13, v14);
  }
}

void sub_100012AD4(unint64_t a1, void (*a2)(uint64_t))
{
  v4 = a1 >> 62;
  if (!(a1 >> 62))
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_32:
    if (qword_100041AE0 != -1)
    {
      swift_once();
    }

    v27 = sub_100030664();
    sub_1000089D8(v27, qword_1000420F0);
    v28 = sub_100030654();
    v29 = sub_100030844();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "No reminders found for searchTerm {result: .unsupported(.noTasksFound)}", v30, 2u);
    }

    v26 = [objc_opt_self() unsupportedForReason:1];
    goto LABEL_37;
  }

  if (!sub_100030CE4())
  {
    goto LABEL_32;
  }

  v5 = sub_100030CE4();
LABEL_3:
  if (v5 != 1)
  {
    if (qword_100041AE0 != -1)
    {
      swift_once();
    }

    v14 = sub_100030664();
    sub_1000089D8(v14, qword_1000420F0);

    v15 = sub_100030654();
    v16 = sub_100030844();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 134217984;
      if (v4)
      {
        v18 = sub_100030CE4();
      }

      else
      {
        v18 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v17 + 4) = v18;

      _os_log_impl(&_mh_execute_header, v15, v16, "Found %ld reminders found for searchTerm {result: .disambiguation}", v17, 0xCu);
    }

    else
    {
    }

    if (v5)
    {
      sub_100030BF4();
      if (v5 < 0)
      {
LABEL_42:
        __break(1u);
        return;
      }

      sub_100008D28(0, &unk_100041E90, INTask_ptr);
      if ((a1 & 0xC000000000000001) != 0)
      {
        v19 = 0;
        do
        {
          v20 = v19 + 1;
          sub_100030BA4();
          sub_1000309E4();
          sub_100030BD4();
          sub_100030C04();
          sub_100030C14();
          sub_100030BE4();
          v19 = v20;
        }

        while (v5 != v20);
      }

      else
      {
        v21 = (a1 + 32);
        do
        {
          v22 = *v21++;
          v23 = v22;
          sub_1000309E4();
          sub_100030BD4();
          sub_100030C04();
          sub_100030C14();
          sub_100030BE4();
          --v5;
        }

        while (v5);
      }
    }

    v24 = objc_opt_self();
    sub_100008D28(0, &unk_100041E90, INTask_ptr);
    isa = sub_100030784().super.isa;

    v13 = [v24 disambiguationWithTasksToDisambiguate:isa];

    goto LABEL_29;
  }

  if (qword_100041AE0 != -1)
  {
    swift_once();
  }

  v6 = sub_100030664();
  sub_1000089D8(v6, qword_1000420F0);
  v7 = sub_100030654();
  v8 = sub_100030844();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "One reminder found for searchTerm {result: .success}", v9, 2u);
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    sub_100030BA4();
    goto LABEL_11;
  }

  if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_42;
  }

  v10 = *(a1 + 32);
LABEL_11:
  v11 = objc_opt_self();
  sub_100008D28(0, &unk_100041E90, INTask_ptr);
  v12 = sub_1000309E4();
  v13 = [v11 successWithResolvedTask:v12];

LABEL_29:
  v26 = [objc_allocWithZone(INSnoozeTasksTaskResolutionResult) initWithTaskResolutionResult:v13];

LABEL_37:
  sub_100008944(&unk_100041EB0, &unk_1000340E0);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_100033D00;
  *(v31 + 32) = v26;
  v32 = v26;
  a2(v31);
}

uint64_t sub_100013074(unint64_t a1, void (*a2)(void *), int a3, id a4)
{
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    v49 = a4;
    if (sub_100030CE4())
    {
      v50 = sub_100030CE4();
      a4 = v49;
      v7 = v50;
      if (v50 == 1)
      {
        goto LABEL_6;
      }

      goto LABEL_4;
    }

LABEL_45:
    if (qword_100041AE0 != -1)
    {
      swift_once();
    }

    v51 = sub_100030664();
    sub_1000089D8(v51, qword_1000420F0);
    v52 = sub_100030654();
    v53 = sub_100030884();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&_mh_execute_header, v52, v53, "No reminders to snooze. {result: .unsupported(.noTasksFound)}", v54, 2u);
    }

    sub_100008944(&unk_100041EB0, &unk_1000340E0);
    v25 = swift_allocObject();
    *(v25 + 1) = xmmword_100033D00;
    v25[4] = [objc_opt_self() unsupportedForReason:1];
    goto LABEL_50;
  }

  v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v7)
  {
    goto LABEL_45;
  }

  if (v7 == 1)
  {
    goto LABEL_6;
  }

LABEL_4:
  v8 = [a4 all];
  if (!v8 || (v9 = v8, v10 = [v8 BOOLValue], v9, !v10))
  {
    if (qword_100041AE0 == -1)
    {
LABEL_12:
      v17 = sub_100030664();
      sub_1000089D8(v17, qword_1000420F0);

      v18 = sub_100030654();
      v19 = sub_100030864();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v56 = v21;
        *v20 = 136315138;
        sub_100008D28(0, &unk_100041EC0, REMReminder_ptr);
        v22 = sub_1000307A4();
        v24 = sub_10002B88C(v22, v23, &v56);

        *(v20 + 4) = v24;
        _os_log_impl(&_mh_execute_header, v18, v19, "Multiple reminders match but user didn't say 'all'. Ask the user to disambiguate which reminder to snooze. {reminders: %s, result: .disambiguation}", v20, 0xCu);
        sub_100008D70(v21);
      }

      sub_100008944(&unk_100041EB0, &unk_1000340E0);
      v25 = swift_allocObject();
      *(v25 + 1) = xmmword_100033D00;
      if (!v7)
      {
        goto LABEL_41;
      }

      v56 = _swiftEmptyArrayStorage;
      result = sub_100030BF4();
      if ((v7 & 0x8000000000000000) == 0)
      {
        sub_100008D28(0, &unk_100041E90, INTask_ptr);
        if ((a1 & 0xC000000000000001) != 0)
        {
          v27 = 0;
          do
          {
            v28 = v27 + 1;
            sub_100030BA4();
            sub_1000309E4();
            sub_100030BD4();
            sub_100030C04();
            sub_100030C14();
            sub_100030BE4();
            v27 = v28;
          }

          while (v7 != v28);
        }

        else
        {
          v43 = (a1 + 32);
          do
          {
            v44 = *v43++;
            v45 = v44;
            sub_1000309E4();
            sub_100030BD4();
            sub_100030C04();
            sub_100030C14();
            sub_100030BE4();
            --v7;
          }

          while (v7);
        }

LABEL_41:
        sub_100008D28(0, &qword_100042148, INSnoozeTasksTaskResolutionResult_ptr);
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        sub_100008D28(0, &unk_100041E90, INTask_ptr);
        isa = sub_100030784().super.isa;

        v48 = [ObjCClassFromMetadata disambiguationWithTasksToDisambiguate:isa];

        v25[4] = v48;
        goto LABEL_50;
      }

      __break(1u);
LABEL_57:
      __break(1u);
      return result;
    }

LABEL_55:
    swift_once();
    goto LABEL_12;
  }

LABEL_6:
  if (qword_100041AE0 != -1)
  {
    swift_once();
  }

  v11 = sub_100030664();
  sub_1000089D8(v11, qword_1000420F0);

  v12 = sub_100030654();
  v13 = sub_100030884();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v56 = v15;
    *v14 = 134218242;
    if (v6)
    {
      v16 = sub_100030CE4();
    }

    else
    {
      v16 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v14 + 4) = v16;

    *(v14 + 12) = 2080;
    if (v7)
    {
      v55 = v15;
      result = sub_100030BF4();
      if (v7 < 0)
      {
        goto LABEL_57;
      }

      v29 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v30 = sub_100030BA4();
        }

        else
        {
          v30 = *(a1 + 8 * v29 + 32);
        }

        v31 = v30;
        ++v29;
        v32 = [v30 objectID];

        sub_100030BD4();
        sub_100030C04();
        sub_100030C14();
        sub_100030BE4();
      }

      while (v7 != v29);
      v15 = v55;
    }

    sub_100008D28(0, &unk_1000420E0, REMObjectID_ptr);
    v33 = sub_1000307A4();
    v35 = v34;

    v36 = sub_10002B88C(v33, v35, &v56);

    *(v14 + 14) = v36;
    _os_log_impl(&_mh_execute_header, v12, v13, "Resolved %ld tasks to snooze. {reminderIDs: %s, result: .success}", v14, 0x16u);
    sub_100008D70(v15);
  }

  else
  {
  }

  v25 = _swiftEmptyArrayStorage;
  if (v7)
  {
    v56 = _swiftEmptyArrayStorage;
    sub_100030BF4();
    if ((v7 & 0x8000000000000000) == 0)
    {
      sub_100008D28(0, &qword_100042148, INSnoozeTasksTaskResolutionResult_ptr);
      v37 = swift_getObjCClassFromMetadata();
      sub_100008D28(0, &unk_100041E90, INTask_ptr);
      v38 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v39 = sub_100030BA4();
        }

        else
        {
          v39 = *(a1 + 8 * v38 + 32);
        }

        ++v38;
        v40 = v39;
        v41 = sub_1000309E4();
        v42 = [v37 successWithResolvedTask:v41];

        sub_100030BD4();
        sub_100030C04();
        sub_100030C14();
        sub_100030BE4();
      }

      while (v7 != v38);
      a2(v56);
      goto LABEL_51;
    }

    __break(1u);
    goto LABEL_55;
  }

LABEL_50:
  a2(v25);
LABEL_51:
}

void sub_100013968(uint64_t a1, uint64_t a2)
{
  sub_100008D28(0, &qword_100042148, INSnoozeTasksTaskResolutionResult_ptr);
  isa = sub_100030784().super.isa;
  (*(a2 + 16))(a2, isa);
}

id sub_100013B28()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRSnoozeTasksIntentHandler();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100013BDC()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100013C28()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100013C74()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_100013CB4(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a3)
  {
    if (sub_100030C64() == *(a4 + 36))
    {
      sub_100030C74();
      sub_100008D28(0, &unk_1000420E0, REMObjectID_ptr);
      swift_dynamicCast();
      sub_100021234(v6);
      v5 = v4;

      if (v5)
      {
        sub_100030C44();
        sub_100030C94();
        swift_unknownObjectRelease();
        return;
      }

      goto LABEL_14;
    }

    __break(1u);
    goto LABEL_12;
  }

  if (a1 < 0 || -(-1 << *(a4 + 32)) <= a1)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (((*(a4 + 64 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> a1) & 1) == 0)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (*(a4 + 36) != a2)
  {
LABEL_15:
    __break(1u);
    return;
  }

  sub_100030AE4();
}

void sub_100013E18(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      sub_100030CA4();
      sub_100008D28(0, &unk_100041EC0, REMReminder_ptr);
      swift_dynamicCast();
      return;
    }

    goto LABEL_20;
  }

  if ((a3 & 1) == 0)
  {
    if ((a1 & 0x8000000000000000) == 0 && 1 << *(a4 + 32) > a1)
    {
      if ((*(a4 + 8 * (a1 >> 6) + 64) >> a1))
      {
        if (*(a4 + 36) == a2)
        {
          goto LABEL_12;
        }

LABEL_19:
        __break(1u);
LABEL_20:
        __break(1u);
        return;
      }

      goto LABEL_17;
    }

LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (sub_100030C64() != *(a4 + 36))
  {
    __break(1u);
    goto LABEL_16;
  }

  sub_100030C74();
  sub_100008D28(0, &unk_1000420E0, REMObjectID_ptr);
  swift_dynamicCast();
  v5 = sub_100021234(v10);
  v7 = v6;

  if ((v7 & 1) == 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  a1 = v5;
LABEL_12:
  v8 = *(*(a4 + 56) + 8 * a1);

  v9 = v8;
}

void *sub_100013FA8(uint64_t a1, void *a2)
{
  v2 = a1;
  v24 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = sub_100030C84();
    result = _swiftEmptyArrayStorage;
    if (!v3)
    {
      return result;
    }

    v30 = _swiftEmptyArrayStorage;
    sub_100030BF4();
    result = sub_100030C24();
    v27 = result;
    v28 = v5;
    v29 = 1;
    if ((v3 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v3 = *(v2 + 16);
  result = _swiftEmptyArrayStorage;
  if (!v3)
  {
    return result;
  }

  v30 = _swiftEmptyArrayStorage;
  sub_100030BF4();
  result = sub_100030AD4();
  v6 = *(v2 + 36);
  v27 = result;
  v28 = v6;
  v29 = 0;
LABEL_7:
  v7 = 0;
  v23 = v3;
  while (v7 < v3)
  {
    v14 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      goto LABEL_20;
    }

    v16 = v27;
    v15 = v28;
    v17 = v29;
    sub_100013E18(v27, v28, v29, v2);
    v19 = v18;
    v20 = [a2 updateReminder:v18];

    sub_100030BD4();
    v21 = v2;
    sub_100030C04();
    sub_100030C14();
    result = sub_100030BE4();
    if (v24)
    {
      if (!v17)
      {
        goto LABEL_21;
      }

      if (sub_100030C54())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      v3 = v23;
      sub_100008944(&qword_100042160, &qword_1000342B0);
      v22 = sub_1000306A4();
      sub_100030CD4();
      result = v22(v26, 0);
    }

    else
    {
      sub_100013CB4(v16, v15, v17, v2);
      v9 = v8;
      v11 = v10;
      v13 = v12;
      result = sub_100015700(v16, v15, v17);
      v27 = v9;
      v28 = v11;
      v29 = v13 & 1;
      v2 = v21;
      v3 = v23;
    }

    ++v7;
    if (v14 == v3)
    {
      sub_100015700(v27, v28, v29);
      return v30;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_10001422C(void *a1, uint64_t a2)
{
  v108 = a2;
  v3 = sub_100008944(&qword_100042168, &qword_1000342B8);
  __chkstk_darwin(v3 - 8);
  v5 = &v102 - v4;
  v6 = sub_100008944(&unk_100042170, &unk_100033D70);
  __chkstk_darwin(v6 - 8);
  v112 = &v102 - v7;
  v8 = sub_100008944(&unk_100041BA0, &qword_100033D68);
  __chkstk_darwin(v8 - 8);
  v10 = &v102 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v102 - v12;
  __chkstk_darwin(v14);
  v105 = &v102 - v15;
  __chkstk_darwin(v16);
  v106 = &v102 - v17;
  v115 = sub_10002FEE4();
  v18 = *(v115 - 8);
  __chkstk_darwin(v115);
  v104 = &v102 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v102 - v21;
  __chkstk_darwin(v23);
  v25 = &v102 - v24;
  __chkstk_darwin(v26);
  v114 = &v102 - v27;
  if (qword_100041AE0 != -1)
  {
    swift_once();
  }

  v28 = sub_100030664();
  v29 = sub_1000089D8(v28, qword_1000420F0);
  v30 = a1;
  v107 = v29;
  v31 = sub_100030654();
  v32 = sub_100030884();

  v33 = os_log_type_enabled(v31, v32);
  v109 = v25;
  v113 = v5;
  if (v33)
  {
    v34 = swift_slowAlloc();
    v111 = swift_slowAlloc();
    v117 = v111;
    *v34 = 136315138;
    v116 = [v30 nextTriggerTime];
    sub_100008944(&unk_100042180, &unk_1000342C0);
    v35 = sub_100030704();
    v37 = v22;
    v38 = v30;
    v39 = v18;
    v40 = v13;
    v41 = v10;
    v42 = sub_10002B88C(v35, v36, &v117);

    *(v34 + 4) = v42;
    v10 = v41;
    v13 = v40;
    v18 = v39;
    v30 = v38;
    v22 = v37;
    _os_log_impl(&_mh_execute_header, v31, v32, "Resolving nextTriggerTime {nextTriggerTime: %s}", v34, 0xCu);
    sub_100008D70(v111);
    v25 = v109;
  }

  sub_10002FED4();
  sub_10002FED4();
  sub_10002FE84();
  v110 = *(v18 + 8);
  v111 = (v18 + 8);
  v110(v22, v115);
  v43 = [v30 nextTriggerTime];
  v44 = v106;
  if (v43)
  {
    v45 = v43;
    v46 = [v43 endDate];
    if (v46)
    {
      v47 = v46;
      sub_10002FEC4();

      v48 = *(v18 + 32);
      v49 = v10;
      v50 = v105;
      v103 = v45;
      v51 = v25;
      v52 = v44;
      v53 = v115;
      v48(v105, v22, v115);
      v54 = *(v18 + 56);
      v54(v50, 0, 1, v53);
      v55 = v50;
      v10 = v49;
      v48(v52, v55, v53);
      v56 = v52;
      v57 = v53;
      v44 = v52;
      v25 = v51;
      v45 = v103;
      v54(v56, 0, 1, v57);
      v58 = v104;
      v59 = (*(v18 + 48))(v44, 1, v115);
    }

    else
    {
      v60 = *(v18 + 56);
      v61 = 1;
      v60(v105, 1, 1, v115);
      v62 = [v45 startDate];
      if (v62)
      {
        v63 = v62;
        sub_10002FEC4();

        v61 = 0;
      }

      v58 = v104;
      v64 = v13;
      v65 = v61;
      v66 = v13;
      v67 = v115;
      v60(v64, v65, 1, v115);
      sub_10001570C(v66, v44);
      v68 = *(v18 + 48);
      v69 = v105;
      if (v68(v105, 1, v67) != 1)
      {
        sub_100008BB8(v69, &unk_100041BA0, &qword_100033D68);
      }

      v59 = v68(v44, 1, v115);
    }

    if (v59 == 1)
    {

      sub_100008BB8(v44, &unk_100041BA0, &qword_100033D68);
    }

    else
    {
      v70 = *(v18 + 32);
      v70(v58, v44, v115);
      v71 = sub_10002FEA4();

      if (v71)
      {
        v72 = v115;
        v110(v25, v115);
        v70(v25, v58, v72);
      }

      else
      {
        v110(v58, v115);
      }
    }
  }

  v73 = v115;
  (*(v18 + 16))(v10, v25, v115);
  (*(v18 + 56))(v10, 0, 1, v73);
  v74 = sub_10002FF94();
  v75 = v10;
  v76 = *(v74 - 8);
  (*(v76 + 56))(v112, 1, 1, v74);
  v77 = sub_10002FFC4();
  v78 = *(v77 - 8);
  (*(v78 + 56))(v113, 1, 1, v77);
  v79.super.isa = sub_10002FE94().super.isa;
  isa = 0;
  if ((*(v18 + 48))(v75, 1, v73) != 1)
  {
    isa = sub_10002FE94().super.isa;
    v110(v75, v115);
  }

  v81 = v112;
  if ((*(v76 + 48))(v112, 1, v74) == 1)
  {
    v82 = 0;
  }

  else
  {
    v82 = sub_10002FF64().super.isa;
    (*(v76 + 8))(v81, v74);
  }

  v83 = v113;
  if ((*(v78 + 48))(v113, 1, v77) == 1)
  {
    v84 = 0;
  }

  else
  {
    v84 = sub_10002FFB4().super.isa;
    (*(v78 + 8))(v83, v77);
  }

  v85 = [objc_allocWithZone(INDateComponentsRange) initWithStartDate:v79.super.isa endDate:isa onCalendar:v82 inTimeZone:v84];

  v86 = v85;
  v87 = sub_100030654();
  v88 = sub_100030884();

  if (os_log_type_enabled(v87, v88))
  {
    v89 = swift_slowAlloc();
    v90 = swift_slowAlloc();
    v117 = v90;
    *v89 = 136315138;
    v91 = v86;
    v92 = [v91 description];
    v93 = sub_1000306F4();
    v95 = v94;

    v96 = sub_10002B88C(v93, v95, &v117);

    *(v89 + 4) = v96;
    _os_log_impl(&_mh_execute_header, v87, v88, "Resolved nextTriggerTime. {nextTriggerTime: %s, result: .success", v89, 0xCu);
    sub_100008D70(v90);
  }

  v97 = v109;
  v98 = [objc_opt_self() successWithResolvedDateComponentsRange:v86];
  (*(v108 + 16))(v108, v98);

  v99 = v115;
  v100 = v110;
  v110(v97, v115);
  return v100(v114, v99);
}

void sub_100014CD0(unint64_t a1, unint64_t a2, __objc2_class_ro *a3)
{
  v6 = sub_10002FEE4();
  v89 = *(v6 - 8);
  v90 = v6;
  __chkstk_darwin(v6);
  v8 = v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100041AE0 != -1)
  {
    goto LABEL_46;
  }

  while (1)
  {
    v9 = sub_100030664();
    sub_1000089D8(v9, qword_1000420F0);
    v10 = a1;
    v11 = sub_100030654();
    v12 = sub_100030884();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = v8;
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      *(v14 + 4) = v10;
      *v15 = v10;
      v16 = v10;
      _os_log_impl(&_mh_execute_header, v11, v12, "SiriKit asked for handling snooze tasks intent {intent: %@}", v14, 0xCu);
      sub_100008BB8(v15, &unk_100041BF0, &unk_100033DB0);

      v8 = v13;
    }

    v17 = [v10 tasks];
    if (!v17)
    {
      v31 = sub_100030654();
      v32 = sub_100030864();
      if (!os_log_type_enabled(v31, v32))
      {
        goto LABEL_38;
      }

      v33 = swift_slowAlloc();
      *v33 = 0;
      v34 = "No .tasks to snooze. Should have resolved this in resolve stage. Giving up";
      goto LABEL_37;
    }

    v18 = v17;
    sub_100008D28(0, &unk_100041E90, INTask_ptr);
    v19 = sub_100030794();
    v20 = [v10 nextTriggerTime];
    if (!v20)
    {

      goto LABEL_35;
    }

    v21 = v20;
    v22 = [v20 endDate];
    if (!v22)
    {
      break;
    }

    v83 = v21;
    v85 = a3;
    v23 = v22;
    sub_10002FEC4();

    sub_10002FEB4();
    v25 = v24;
    v26 = *(a2 + OBJC_IVAR____TtC25RemindersIntentsExtension27TTRSnoozeTasksIntentHandler_store);
    v27 = objc_allocWithZone(REMSaveRequest);
    v86 = v26;
    v87 = [v27 initWithStore:v26];
    v91 = _swiftEmptyArrayStorage;
    v84 = v8;
    a3 = (v19 & 0xFFFFFFFFFFFFFF8);
    if (v19 >> 62)
    {
      v28 = sub_100030CE4();
    }

    else
    {
      v28 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    a1 = 0;
    v82[2] = 0;
    v88 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v28 == a1)
      {

        v35 = sub_100008D28(0, &unk_1000420E0, REMObjectID_ptr);
        isa = sub_100030784().super.isa;
        v91 = 0;
        v37 = [v86 fetchRemindersWithObjectIDs:isa error:&v91];

        v38 = v91;
        if (v37)
        {
          sub_100008D28(0, &unk_100041EC0, REMReminder_ptr);
          sub_100012784();
          v39 = sub_100030684();
          v40 = v38;

          v41 = v87;
          v42 = sub_100013FA8(v39, v41);

          v82[1] = v35;
          v86 = v41;
          if (v42 >> 62)
          {
            a1 = sub_100030CE4();
            if (a1)
            {
LABEL_25:
              a2 = 0;
              v8 = (v42 & 0xC000000000000001);
              a3 = &TTRBundleLookupObject__metaData;
              do
              {
                if (v8)
                {
                  v43 = sub_100030BA4();
                }

                else
                {
                  if (a2 >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_45;
                  }

                  v43 = *(v42 + 8 * a2 + 32);
                }

                v44 = v43;
                v45 = a2 + 1;
                if (__OFADD__(a2, 1))
                {
                  goto LABEL_44;
                }

                [v43 snoozeFromNowForTimeInterval:v25];

                ++a2;
              }

              while (v45 != a1);
            }
          }

          else
          {
            a1 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (a1)
            {
              goto LABEL_25;
            }
          }

          v91 = 0;
          v50 = v86;
          v51 = [v86 saveSynchronouslyWithError:&v91];
          v38 = v91;
          if (v51)
          {
            sub_100030074();
            v52 = v38;
            sub_100030064();
            sub_100030054();

            v53 = sub_100030654();
            v54 = sub_100030884();

            v55 = os_log_type_enabled(v53, v54);
            v56 = v85;
            if (v55)
            {
              v57 = swift_slowAlloc();
              v58 = swift_slowAlloc();
              v91 = v58;
              *v57 = 136315138;
              v59 = sub_1000307A4();
              v61 = v60;

              v62 = sub_10002B88C(v59, v61, &v91);

              *(v57 + 4) = v62;
              _os_log_impl(&_mh_execute_header, v53, v54, "Successfully snoozed reminders. {reminderIDs: %s}", v57, 0xCu);
              sub_100008D70(v58);
            }

            else
            {
            }

            v78 = v89;
            v77 = v90;
            v80 = v83;
            v79 = v84;
            v81 = [objc_allocWithZone(INSnoozeTasksIntentResponse) initWithCode:3 userActivity:0];
            [v81 setSnoozedTasks:v18];

            (v56->ivar_lyt)(v56, v81);
            (*(v78 + 8))(v79, v77);
            return;
          }

          v49 = v85;
        }

        else
        {
          v49 = v85;
        }

        v63 = v38;

        sub_10002FE24();
        swift_willThrow();

        v64 = sub_100030654();
        v65 = sub_100030864();

        if (os_log_type_enabled(v64, v65))
        {
          v66 = swift_slowAlloc();
          v67 = swift_slowAlloc();
          v91 = v67;
          *v66 = 136315138;
          v68 = sub_1000307A4();
          v70 = v69;

          v71 = sub_10002B88C(v68, v70, &v91);

          *(v66 + 4) = v71;
          _os_log_impl(&_mh_execute_header, v64, v65, "Error snoozing reminders {reminderIDs: %s}", v66, 0xCu);
          sub_100008D70(v67);
        }

        else
        {
        }

        v73 = v89;
        v72 = v90;
        v75 = v83;
        v74 = v84;
        v76 = [objc_allocWithZone(INSnoozeTasksIntentResponse) initWithCode:4 userActivity:0];
        (v49->ivar_lyt)(v49, v76);

        (*(v73 + 8))(v74, v72);
        return;
      }

      if ((v19 & 0xC000000000000001) != 0)
      {
        v29 = sub_100030BA4();
      }

      else
      {
        if (a1 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_43;
        }

        v29 = *(v19 + 8 * a1 + 32);
      }

      v30 = v29;
      a2 = a1 + 1;
      if (__OFADD__(a1, 1))
      {
        break;
      }

      v8 = sub_1000309A4();

      ++a1;
      if (v8)
      {
        sub_100030774();
        if (*((v91 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v91 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1000307B4();
        }

        sub_1000307C4();
        v88 = v91;
        a1 = a2;
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
    swift_once();
  }

LABEL_35:
  v31 = sub_100030654();
  v32 = sub_100030864();
  if (!os_log_type_enabled(v31, v32))
  {
    goto LABEL_38;
  }

  v33 = swift_slowAlloc();
  *v33 = 0;
  v34 = "No nextTriggerTime.endDate. Should have resolved this in resolve stage. Giving up.";
LABEL_37:
  _os_log_impl(&_mh_execute_header, v31, v32, v34, v33, 2u);

LABEL_38:

  v46 = [objc_allocWithZone(INSnoozeTasksIntentResponse) initWithCode:4 userActivity:0];
  ivar_lyt = a3->ivar_lyt;
  v90 = v46;
  ivar_lyt(a3);
  v48 = v90;
}

uint64_t sub_100015700(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_10001570C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100008944(&unk_100041BA0, &qword_100033D68);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001577C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000157BC()
{
  v0 = sub_100030664();
  sub_100008CC4(v0, qword_100042190);
  v1 = sub_1000089D8(v0, qword_100042190);
  if (qword_100041B10 != -1)
  {
    swift_once();
  }

  v2 = sub_1000089D8(v0, qword_100042D50);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_100015884()
{
  v1 = OBJC_IVAR____TtC25RemindersIntentsExtension16TTRIntentHandler____lazy_storage___contactStore;
  v2 = *(v0 + OBJC_IVAR____TtC25RemindersIntentsExtension16TTRIntentHandler____lazy_storage___contactStore);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC25RemindersIntentsExtension16TTRIntentHandler____lazy_storage___contactStore);
  }

  else
  {
    v4 = [objc_allocWithZone(CNContactStore) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id TTRIntentHandler.handler(for:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  ObjectType = swift_getObjectType();
  if (qword_100041AE8 != -1)
  {
    swift_once();
  }

  v5 = sub_100030664();
  sub_1000089D8(v5, qword_100042190);
  v6 = a1;
  v7 = sub_100030654();
  v8 = sub_100030854();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    *(v9 + 4) = v6;
    *v10 = v6;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v7, v8, "SiriKit asks for handler for intent: %@", v9, 0xCu);
    sub_1000169BC(v10);
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v12 = &OBJC_IVAR____TtC25RemindersIntentsExtension16TTRIntentHandler____lazy_storage___addTasksHandler;
    v13 = sub_100015F84;
LABEL_11:
    v14 = sub_100015C48(v12, v13);
LABEL_12:
    v15 = v14;
    result = swift_getObjectType();
LABEL_13:
    a2[3] = result;
    *a2 = v15;
    return result;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v12 = &OBJC_IVAR____TtC25RemindersIntentsExtension16TTRIntentHandler____lazy_storage___setTaskAttributeHandler;
    v13 = sub_100016374;
    goto LABEL_11;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v12 = &OBJC_IVAR____TtC25RemindersIntentsExtension16TTRIntentHandler____lazy_storage___snoozeTasksHandler;
    v13 = sub_10001666C;
    goto LABEL_11;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v14 = sub_100015CB0();
    goto LABEL_12;
  }

  sub_100030364();
  if (swift_dynamicCastClass())
  {
    v15 = sub_100015DDC();
    result = type metadata accessor for ConfigurationIntentHandler();
    goto LABEL_13;
  }

  v17 = v6;
  v18 = sub_100030654();
  v19 = sub_100030874();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v20 = 138412290;
    *(v20 + 4) = v17;
    *v21 = v17;
    v22 = v17;
    _os_log_impl(&_mh_execute_header, v18, v19, "TTRIntentHandler does not know how to handle intent of class: %@", v20, 0xCu);
    sub_1000169BC(v21);
  }

  a2[3] = ObjectType;
  *a2 = v23;

  return v23;
}

uint64_t sub_100015C48(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = a2(v2);
    *(v2 + v3) = v5;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  return v5;
}

id sub_100015CB0()
{
  v1 = OBJC_IVAR____TtC25RemindersIntentsExtension16TTRIntentHandler____lazy_storage___searchForNotebookItemsHandler;
  if (*(v0 + OBJC_IVAR____TtC25RemindersIntentsExtension16TTRIntentHandler____lazy_storage___searchForNotebookItemsHandler))
  {
    v2 = *(v0 + OBJC_IVAR____TtC25RemindersIntentsExtension16TTRIntentHandler____lazy_storage___searchForNotebookItemsHandler);
  }

  else
  {
    v3 = *(v0 + OBJC_IVAR____TtC25RemindersIntentsExtension16TTRIntentHandler_store);
    v4 = *(v0 + OBJC_IVAR____TtC25RemindersIntentsExtension16TTRIntentHandler_queue);
    type metadata accessor for TTRIntentsHandlerStoreDataSource();
    swift_allocObject();
    v5 = v3;
    v6 = v0;
    v7 = sub_10000FBF0(v5);
    type metadata accessor for TTRIntentsHandlerSpotlightDataSource();
    v8 = swift_allocObject();
    v9 = v5;
    v10 = v4;
    v11 = sub_100016A48(v9, v10, v7, v8);
    sub_100030214();
    swift_allocObject();
    v12 = v9;
    v13 = v10;
    v14 = sub_100030204();
    v2 = sub_100016E28(v12, v13, v11, v14);
    *(v6 + v1) = v2;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  return v2;
}

id sub_100015DDC()
{
  v1 = OBJC_IVAR____TtC25RemindersIntentsExtension16TTRIntentHandler____lazy_storage___widgetListHandler;
  v2 = *(v0 + OBJC_IVAR____TtC25RemindersIntentsExtension16TTRIntentHandler____lazy_storage___widgetListHandler);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC25RemindersIntentsExtension16TTRIntentHandler____lazy_storage___widgetListHandler);
  }

  else
  {
    v4 = *(v0 + OBJC_IVAR____TtC25RemindersIntentsExtension16TTRIntentHandler_store);
    v5 = *(v0 + OBJC_IVAR____TtC25RemindersIntentsExtension16TTRIntentHandler_queue);
    type metadata accessor for TTRIntentsHandlerStoreDataSource();
    swift_allocObject();
    v6 = v4;
    v7 = v0;
    v8 = sub_10000FBF0(v6);
    type metadata accessor for TTRIntentsHandlerSpotlightDataSource();
    v9 = swift_allocObject();
    v10 = v6;
    v11 = v5;
    v12 = sub_100016A48(v10, v11, v8, v9);
    v13 = objc_allocWithZone(type metadata accessor for ConfigurationIntentHandler());
    v14 = sub_100016C94(v10, v11, v12, v13);
    v15 = *(v7 + v1);
    *(v7 + v1) = v14;
    v3 = v14;

    v2 = 0;
  }

  v16 = v2;
  return v3;
}

char *sub_100015F84(char *a1)
{
  v2 = sub_1000302D4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000302C4();
  v6 = *&a1[OBJC_IVAR____TtC25RemindersIntentsExtension16TTRIntentHandler_store];
  v7 = *&a1[OBJC_IVAR____TtC25RemindersIntentsExtension16TTRIntentHandler_queue];
  type metadata accessor for TTRIntentsHandlerStoreDataSource();
  swift_allocObject();
  v8 = v6;
  v9 = sub_10000FBF0(v8);
  v10 = type metadata accessor for TTRIntentsHandlerSpotlightDataSource();
  v11 = swift_allocObject();
  v12 = v8;

  v13 = v7;
  v14 = sub_100016A48(v12, v13, v9, v11);
  v41[3] = v10;
  v41[4] = &off_10003DE48;

  v41[0] = v14;
  sub_10000B82C(v41, v40);
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  v16 = sub_100030214();
  swift_allocObject();
  v17 = a1;
  v18 = sub_100030204();
  v38 = &type metadata for TTRContactRepresentationResolver;
  v39 = &off_10003DE38;
  v37[0] = sub_100016BA4;
  v37[1] = v15;
  v36[3] = v2;
  v36[4] = &protocol witness table for TTRCurrentUserActivityProvider;
  v19 = sub_100016BC8(v36);
  (*(v3 + 16))(v19, v5, v2);
  v35[3] = v16;
  v35[4] = &protocol witness table for TTRCurrentTimeProvider;
  v35[0] = v18;
  v20 = type metadata accessor for TTRAddTasksIntentHandler();
  v21 = objc_allocWithZone(v20);
  v22 = sub_100016C2C(v37, v38);
  v23 = __chkstk_darwin(v22);
  v25 = (&v31 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v26 + 16))(v25, v23);
  v33 = &type metadata for TTRContactRepresentationResolver;
  v34 = &off_10003DE38;
  v32 = *v25;
  v21[OBJC_IVAR____TtC25RemindersIntentsExtension24TTRAddTasksIntentHandler_didNotSpecifyTargetList] = 0;
  sub_10000B82C(v35, &v21[OBJC_IVAR____TtC25RemindersIntentsExtension24TTRAddTasksIntentHandler_timeProvider]);
  *&v21[OBJC_IVAR____TtC25RemindersIntentsExtension24TTRAddTasksIntentHandler_store] = v12;
  *&v21[OBJC_IVAR____TtC25RemindersIntentsExtension24TTRAddTasksIntentHandler_queue] = v13;
  sub_10000B82C(v40, &v21[OBJC_IVAR____TtC25RemindersIntentsExtension24TTRAddTasksIntentHandler_dataSource]);
  sub_10000B82C(&v32, &v21[OBJC_IVAR____TtC25RemindersIntentsExtension24TTRAddTasksIntentHandler_contactRepresentationResolver]);
  sub_10000B82C(v36, &v21[OBJC_IVAR____TtC25RemindersIntentsExtension24TTRAddTasksIntentHandler_userActivityProvider]);
  v31.receiver = v21;
  v31.super_class = v20;
  v27 = v12;
  v28 = v13;
  v29 = objc_msgSendSuper2(&v31, "init");
  sub_100008D70(v40);
  (*(v3 + 8))(v5, v2);
  sub_100008D70(v35);
  sub_100008D70(v36);
  sub_100008D70(&v32);
  sub_100008D70(v37);
  sub_100008D70(v41);
  return v29;
}

char *sub_100016374(char *a1)
{
  v2 = *&a1[OBJC_IVAR____TtC25RemindersIntentsExtension16TTRIntentHandler_store];
  v3 = *&a1[OBJC_IVAR____TtC25RemindersIntentsExtension16TTRIntentHandler_queue];
  type metadata accessor for TTRIntentsHandlerStoreDataSource();
  swift_allocObject();
  v4 = v2;
  v5 = sub_10000FBF0(v4);
  v6 = type metadata accessor for TTRIntentsHandlerSpotlightDataSource();
  v7 = swift_allocObject();
  v8 = v4;

  v9 = v3;
  v10 = sub_100016A48(v8, v9, v5, v7);
  v32[3] = v6;
  v32[4] = &off_10003DE48;

  v32[0] = v10;
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  sub_10000B82C(v32, v31);
  v12 = sub_100030214();
  swift_allocObject();
  v13 = a1;
  v30[3] = &type metadata for TTRContactRepresentationResolver;
  v30[4] = &off_10003DE38;
  v30[0] = sub_100016F50;
  v30[1] = v11;
  v29[3] = v12;
  v29[4] = &protocol witness table for TTRCurrentTimeProvider;
  v29[0] = sub_100030204();
  v14 = type metadata accessor for TTRSetTaskAttributeIntentHandler();
  v15 = objc_allocWithZone(v14);
  v16 = sub_100016C2C(v30, &type metadata for TTRContactRepresentationResolver);
  v17 = __chkstk_darwin(v16);
  v19 = (&v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19, v17);
  v27 = &type metadata for TTRContactRepresentationResolver;
  v28 = &off_10003DE38;
  v26 = *v19;
  *&v15[OBJC_IVAR____TtC25RemindersIntentsExtension32TTRSetTaskAttributeIntentHandler_store] = v8;
  *&v15[OBJC_IVAR____TtC25RemindersIntentsExtension32TTRSetTaskAttributeIntentHandler_queue] = v9;
  sub_10000B82C(&v26, &v15[OBJC_IVAR____TtC25RemindersIntentsExtension32TTRSetTaskAttributeIntentHandler_contactRepresentationResolver]);
  sub_10000B82C(v31, &v15[OBJC_IVAR____TtC25RemindersIntentsExtension32TTRSetTaskAttributeIntentHandler_dataSource]);
  sub_10000B82C(v29, &v15[OBJC_IVAR____TtC25RemindersIntentsExtension32TTRSetTaskAttributeIntentHandler_timeProvider]);
  v25.receiver = v15;
  v25.super_class = v14;
  v21 = v8;
  v22 = v9;
  v23 = objc_msgSendSuper2(&v25, "init");
  sub_100008D70(v31);
  sub_100008D70(v29);
  sub_100008D70(&v26);
  sub_100008D70(v30);
  sub_100008D70(v32);
  return v23;
}

id sub_10001666C(uint64_t a1)
{
  v2 = [objc_allocWithZone(UNUserNotificationCenter) initWithBundleIdentifier:REMAppBundleIdentifier];
  v3 = *(a1 + OBJC_IVAR____TtC25RemindersIntentsExtension16TTRIntentHandler_store);
  v13 = sub_100008D28(0, &unk_100042340, UNUserNotificationCenter_ptr);
  v14 = &off_10003E060;
  *&v12 = v2;
  type metadata accessor for TTRIntentsHandlerNotificationCenterDataSource();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  sub_100016C7C(&v12, v4 + 24);
  v5 = *(a1 + OBJC_IVAR____TtC25RemindersIntentsExtension16TTRIntentHandler_queue);
  v6 = type metadata accessor for TTRSnoozeTasksIntentHandler();
  v7 = objc_allocWithZone(v6);
  *&v7[OBJC_IVAR____TtC25RemindersIntentsExtension27TTRSnoozeTasksIntentHandler_store] = v3;
  *&v7[OBJC_IVAR____TtC25RemindersIntentsExtension27TTRSnoozeTasksIntentHandler_queue] = v5;
  *&v7[OBJC_IVAR____TtC25RemindersIntentsExtension27TTRSnoozeTasksIntentHandler_dataSource] = v4;
  v11.receiver = v7;
  v11.super_class = v6;
  v8 = v3;
  v9 = v5;
  return objc_msgSendSuper2(&v11, "init");
}

id TTRIntentHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TTRIntentHandler.init()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = OBJC_IVAR____TtC25RemindersIntentsExtension16TTRIntentHandler_store;
  *&v1[v3] = [objc_allocWithZone(REMStore) initUserInteractive:1];
  v4 = OBJC_IVAR____TtC25RemindersIntentsExtension16TTRIntentHandler_queue;
  sub_100008D28(0, &qword_1000421C0, OS_dispatch_queue_ptr);
  *&v1[v4] = sub_100030904();
  *&v1[OBJC_IVAR____TtC25RemindersIntentsExtension16TTRIntentHandler____lazy_storage___contactStore] = 0;
  *&v1[OBJC_IVAR____TtC25RemindersIntentsExtension16TTRIntentHandler____lazy_storage___addTasksHandler] = 0;
  *&v1[OBJC_IVAR____TtC25RemindersIntentsExtension16TTRIntentHandler____lazy_storage___setTaskAttributeHandler] = 0;
  *&v1[OBJC_IVAR____TtC25RemindersIntentsExtension16TTRIntentHandler____lazy_storage___snoozeTasksHandler] = 0;
  *&v1[OBJC_IVAR____TtC25RemindersIntentsExtension16TTRIntentHandler____lazy_storage___searchForNotebookItemsHandler] = 0;
  *&v1[OBJC_IVAR____TtC25RemindersIntentsExtension16TTRIntentHandler____lazy_storage___widgetListHandler] = 0;
  v6.receiver = v1;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, "init");
}

id TTRIntentHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000169BC(uint64_t a1)
{
  v2 = sub_100008944(&unk_100041BF0, &unk_100033DB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100016A48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = type metadata accessor for TTRIntentsHandlerStoreDataSource();
  v15 = &off_10003D598;
  *&v13 = a3;
  if (qword_100041B30 != -1)
  {
    swift_once();
  }

  v8 = sub_100030664();
  sub_1000089D8(v8, qword_100042728);
  v9 = sub_100030654();
  v10 = sub_100030884();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "[TTRIntentsHandlerSpotlightDataSource] Using the Spotlight intents handler data source", v11, 2u);
  }

  *(a4 + 16) = a1;
  *(a4 + 24) = a2;
  sub_100016C7C(&v13, a4 + 32);
  return a4;
}

uint64_t sub_100016B6C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t *sub_100016BC8(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_100016C2C(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_100016C7C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

id sub_100016C94(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  ObjectType = swift_getObjectType();
  v16[3] = type metadata accessor for TTRIntentsHandlerSpotlightDataSource();
  v16[4] = &off_10003DE48;
  v16[0] = a3;
  *&a4[OBJC_IVAR____TtC25RemindersIntentsExtension26ConfigurationIntentHandler_badgeSize] = vdupq_n_s64(0x4040000000000000uLL);
  if (qword_100041AF0 != -1)
  {
    swift_once();
  }

  v9 = sub_100030664();
  sub_1000089D8(v9, qword_100042350);
  v10 = sub_100030654();
  v11 = sub_100030884();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "ConfigurationIntentHandler Created", v12, 2u);
  }

  *&a4[OBJC_IVAR____TtC25RemindersIntentsExtension26ConfigurationIntentHandler_store] = a1;
  *&a4[OBJC_IVAR____TtC25RemindersIntentsExtension26ConfigurationIntentHandler_queue] = a2;
  sub_10000B82C(v16, &a4[OBJC_IVAR____TtC25RemindersIntentsExtension26ConfigurationIntentHandler_dataSource]);
  v15.receiver = a4;
  v15.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v15, "init");
  sub_100008D70(v16);
  return v13;
}

id sub_100016E28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = *a4;
  v15[3] = type metadata accessor for TTRIntentsHandlerSpotlightDataSource();
  v15[4] = &off_10003DE48;
  v15[0] = a3;
  v14[3] = v8;
  v14[4] = &protocol witness table for TTRCurrentTimeProvider;
  v14[0] = a4;
  v9 = type metadata accessor for TTRSearchForNotebookItemsIntentHandler();
  v10 = objc_allocWithZone(v9);
  *&v10[OBJC_IVAR____TtC25RemindersIntentsExtension38TTRSearchForNotebookItemsIntentHandler_store] = a1;
  *&v10[OBJC_IVAR____TtC25RemindersIntentsExtension38TTRSearchForNotebookItemsIntentHandler_queue] = a2;
  sub_10000B82C(v15, &v10[OBJC_IVAR____TtC25RemindersIntentsExtension38TTRSearchForNotebookItemsIntentHandler_dataSource]);
  sub_10000B82C(v14, &v10[OBJC_IVAR____TtC25RemindersIntentsExtension38TTRSearchForNotebookItemsIntentHandler_timeProvider]);
  v13.receiver = v10;
  v13.super_class = v9;
  v11 = objc_msgSendSuper2(&v13, "init");
  sub_100008D70(v15);
  sub_100008D70(v14);
  return v11;
}

void sub_100016F54(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = a1;
    v7 = 0;
    v8 = _swiftEmptyArrayStorage;
    while (v7 < *(a3 + 16))
    {
      v15 = *(a3 + 8 * v7 + 32);
      v9 = v15;
      v10 = v6(&v15);
      if (v3)
      {

        return;
      }

      if (v10)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v16 = v8;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100021404(0, v8[2] + 1, 1);
          v8 = v16;
        }

        v13 = v8[2];
        v12 = v8[3];
        if (v13 >= v12 >> 1)
        {
          sub_100021404((v12 > 1), v13 + 1, 1);
          v8 = v16;
        }

        v8[2] = v13 + 1;
        v8[v13 + 4] = v9;
        v6 = a1;
      }

      else
      {
      }

      if (v5 == ++v7)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:
  }
}

uint64_t sub_1000170B4()
{
  v0 = sub_100030664();
  sub_100008CC4(v0, qword_100042350);
  v1 = sub_1000089D8(v0, qword_100042350);
  if (qword_100041B18 != -1)
  {
    swift_once();
  }

  v2 = sub_1000089D8(v0, qword_100042D68);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_100017204(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  if (qword_100041AF0 != -1)
  {
    swift_once();
  }

  v11 = sub_100030664();
  sub_1000089D8(v11, qword_100042350);

  v12 = a1;
  v13 = sub_100030654();
  v14 = sub_100030884();

  if (os_log_type_enabled(v13, v14))
  {
    v37 = a4;
    v15 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *v15 = 136315394;
    v16 = v12;
    v17 = [v16 description];
    v18 = sub_1000306F4();
    v20 = v19;

    v21 = sub_10002B88C(v18, v20, &v39);

    *(v15 + 4) = v21;
    *(v15 + 12) = 2080;
    v22 = a2;

    sub_100008944(&qword_100041C00, &qword_100033DC0);
    v23 = sub_100030704();
    v25 = sub_10002B88C(v23, v24, &v39);

    *(v15 + 14) = v25;
    _os_log_impl(&_mh_execute_header, v13, v14, "Widget provideListOptions {intent: %s, searchTerm: %s}", v15, 0x16u);
    swift_arrayDestroy();

    a4 = v37;
  }

  else
  {

    v22 = a2;
  }

  sub_100008944(&qword_1000423B8, &unk_100034348);
  v26 = &v6[OBJC_IVAR____TtC25RemindersIntentsExtension26ConfigurationIntentHandler_dataSource];
  v27 = *&v6[OBJC_IVAR____TtC25RemindersIntentsExtension26ConfigurationIntentHandler_dataSource + 24];
  v28 = *&v6[OBJC_IVAR____TtC25RemindersIntentsExtension26ConfigurationIntentHandler_dataSource + 32];
  sub_100008A10(&v6[OBJC_IVAR____TtC25RemindersIntentsExtension26ConfigurationIntentHandler_dataSource], v27);
  sub_10000CB88(v27, v28);
  v29 = *(v26 + 3);
  v30 = *(v26 + 4);
  sub_100008A10(v26, v29);
  sub_10000CAAC(v29, v30);
  sub_1000305E4();

  v31 = swift_allocObject();
  v31[2] = a4;
  v31[3] = a5;
  v31[4] = v6;
  v31[5] = v22;
  v31[6] = a3;
  v32 = swift_allocObject();
  *(v32 + 16) = sub_10001ADD0;
  *(v32 + 24) = v31;

  v33 = v6;
  v34 = sub_1000305B4();
  sub_1000305F4();

  v35 = swift_allocObject();
  *(v35 + 16) = a4;
  *(v35 + 24) = a5;

  v36 = sub_1000305B4();
  sub_100030604();
}

void sub_1000176C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_10002FE14();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

uint64_t sub_100017734(uint64_t a1, uint64_t a2, uint64_t (*a3)(id, void), uint64_t a4, void *a5, void *a6, uint64_t a7)
{
  v151 = a6;
  v152 = a7;
  v133 = a4;
  v134 = a3;
  v136 = sub_100030514();
  v140 = *(v136 - 8);
  __chkstk_darwin(v136);
  v149 = v126 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100008944(&qword_1000423C8, &unk_100034360);
  __chkstk_darwin(v11 - 8);
  v150 = v126 - v12;
  v139 = sub_10002FE54();
  v13 = *(v139 - 8);
  __chkstk_darwin(v139);
  v138 = v126 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100008944(&qword_1000423B0, &qword_100034340);
  __chkstk_darwin(v15 - 8);
  v17 = v126 - v16;
  v131 = sub_100030284();
  v130 = *(v131 - 8);
  __chkstk_darwin(v131);
  v132 = v126 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100008944(&qword_1000420D0, &unk_1000341E0);
  __chkstk_darwin(v19 - 8);
  v21 = v126 - v20;
  v22 = sub_100030534();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = v126 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v135 = v126 - v27;
  if (!a1)
  {
LABEL_4:
    if (qword_100041AF0 == -1)
    {
LABEL_5:
      v28 = sub_100030664();
      sub_1000089D8(v28, qword_100042350);
      v29 = sub_100030654();
      v30 = sub_100030864();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&_mh_execute_header, v29, v30, "Widget provideListOptions failed no data", v31, 2u);
      }

      return v134(0, 0);
    }

LABEL_44:
    swift_once();
    goto LABEL_5;
  }

  sub_10001AE88(a2, v21);
  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    sub_100008BB8(v21, &qword_1000420D0, &unk_1000341E0);
    goto LABEL_4;
  }

  v148 = v13;
  v33 = v135;
  (*(v23 + 32))(v135, v21, v22);
  if (qword_100041AF0 != -1)
  {
    swift_once();
  }

  v34 = sub_100030664();
  v35 = sub_1000089D8(v34, qword_100042350);
  (*(v23 + 16))(v25, v33, v22);

  v36 = v23;
  v126[1] = v35;
  v37 = sub_100030654();
  v38 = sub_100030884();
  v39 = os_log_type_enabled(v37, v38);
  v129 = v22;
  v128 = v23;
  if (v39)
  {
    v40 = swift_slowAlloc();
    *v40 = 134218240;
    *(v40 + 4) = *(a1 + 16);

    *(v40 + 12) = 2048;
    v41 = *(sub_100030524() + 16);

    v127 = *(v36 + 8);
    v127(v25, v22);
    *(v40 + 14) = v41;
    _os_log_impl(&_mh_execute_header, v37, v38, "Widget provideListOptions smartListTypes: %ld, accounts %ld ", v40, 0x16u);
  }

  else
  {
    v127 = *(v23 + 8);
    v127(v25, v22);
  }

  v159 = _swiftEmptyArrayStorage;
  sub_1000302A4();
  v42 = v132;
  v43 = sub_100030294();
  __chkstk_darwin(v43);
  v124 = v42;

  sub_100016F54(sub_10001AEF8, &v126[-4], a1);
  v146 = 0;
  v147 = a5;
  v45 = *(v44 + 16);
  v46 = v148;
  if (v45)
  {
    v153 = _swiftEmptyArrayStorage;
    v47 = v44;
    sub_100030BF4();
    sub_100030324();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v144 = sub_10001AB2C();
    v48 = v47;
    v137 = (v46 + 8);
    v143 = v157;
    v49 = 4;
    v142 = v17;
    v141 = v47;
    v50 = v147;
    while (1)
    {
      v51 = v48[v49];
      sub_100030464();
      v52 = sub_100030454();
      v53 = *(v52 - 8);
      v54 = (*(v53 + 48))(v17, 1, v52);
      v148 = v45;
      if (v54 == 1)
      {
        sub_100008BB8(v17, &qword_1000423B0, &qword_100034340);
        v55 = 0;
      }

      else
      {
        v56 = v138;
        sub_100030444();
        (*(v53 + 8))(v17, v52);
        sub_10002FE34();
        v55 = v57;
        (*v137)(v56, v139);
      }

      sub_1000308F4();
      if (v55)
      {
        v58 = sub_1000306C4();
      }

      else
      {
        v58 = 0;
      }

      v59 = objc_allocWithZone(ObjCClassFromMetadata);
      v60 = sub_1000306C4();

      v61 = [v59 initWithIdentifier:v58 displayString:v60];

      v158 = 0;
      v62 = sub_100030904();
      v63 = swift_allocObject();
      v63[2] = v51;
      v63[3] = v50;
      v63[4] = &v158;
      v64 = swift_allocObject();
      *(v64 + 16) = sub_10001B620;
      *(v64 + 24) = v63;
      v157[2] = sub_10001B610;
      v157[3] = v64;
      aBlock = _NSConcreteStackBlock;
      v156 = 1107296256;
      v157[0] = sub_10001A914;
      v157[1] = &unk_10003DA00;
      v65 = _Block_copy(&aBlock);
      v66 = v51;
      v67 = v50;

      dispatch_sync(v62, v65);

      _Block_release(v65);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        break;
      }

      v69 = v158;

      if (v69)
      {
        v70 = v69;
        v71 = v61;
        [v71 setDisplayImage:v70];
      }

      sub_100030BD4();
      sub_100030C04();
      sub_100030C14();
      sub_100030BE4();
      ++v49;
      v45 = v148 - 1;
      v17 = v142;
      v48 = v141;
      if (v148 == 1)
      {

        v72 = v153;
        a5 = v147;
        goto LABEL_27;
      }
    }

    __break(1u);
    goto LABEL_42;
  }

  v72 = _swiftEmptyArrayStorage;
LABEL_27:
  v73 = v136;
  if (v152)
  {
    v158 = _swiftEmptyArrayStorage;
    if (v72 >> 62)
    {
      v74 = sub_100030CE4();
      if (v74)
      {
LABEL_30:
        v75 = 0;
        v148 = v72 & 0xC000000000000001;
        while (1)
        {
          if (v148)
          {
            v77 = sub_100030BA4();
          }

          else
          {
            if (v75 >= *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v77 = *(v72 + 8 * v75 + 32);
          }

          v78 = v77;
          v79 = v75 + 1;
          if (__OFADD__(v75, 1))
          {
            break;
          }

          v80 = [v77 displayString];
          v81 = sub_1000306F4();
          v83 = v82;

          aBlock = v81;
          v156 = v83;
          v153 = v151;
          v154 = v152;
          v84 = sub_10002FF34();
          v85 = v150;
          (*(*(v84 - 8) + 56))(v150, 1, 1, v84);
          v124 = sub_10000FA88();
          v125 = v124;
          sub_100030AB4();
          LOBYTE(v80) = v86;
          sub_100008BB8(v85, &qword_1000423C8, &unk_100034360);

          if (v80)
          {
          }

          else
          {
            sub_100030BD4();
            sub_100030C04();
            sub_100030C14();
            sub_100030BE4();
          }

          ++v75;
          v76 = v79 == v74;
          a5 = v147;
          if (v76)
          {
            goto LABEL_46;
          }
        }

LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }
    }

    else
    {
      v74 = *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v74)
      {
        goto LABEL_30;
      }
    }

LABEL_46:

    v73 = v136;
  }

  v87 = &_s10Foundation14DateComponentsV15RemindersUICoreE010rem_allDaybC0ACyF_ptr;
  v88 = objc_allocWithZone(INObjectSection);
  v89 = sub_100030324();
  isa = sub_100030784().super.isa;

  v91 = [v88 initWithTitle:0 items:isa];

  v92 = v91;
  sub_100030774();
  if (*((v159 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v159 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_82;
  }

  while (1)
  {
    v138 = v92;
    sub_1000307C4();
    v93 = v159;
    v94 = sub_100030524();
    ObjCClassFromMetadata = *(v94 + 16);
    if (!ObjCClassFromMetadata)
    {
      break;
    }

    v92 = 0;
    v144 = v94 + ((*(v140 + 80) + 32) & ~*(v140 + 80));
    v143 = (v140 + 16);
    v141 = (v140 + 8);
    v139 = v89;
    v142 = v94;
    while (v92 < *(v94 + 16))
    {
      v95 = *(v140 + 72);
      v148 = v92;
      (*(v140 + 16))(v149, v144 + v95 * v92, v73);
      v96 = sub_100030504();
      v97 = a5;
      v98 = v146;
      v100 = sub_10001AF58(v96, v97, v99);
      v146 = v98;

      if (v152)
      {
        v158 = _swiftEmptyArrayStorage;
        if (v100 >> 62)
        {
          v92 = sub_100030CE4();
          if (v92)
          {
LABEL_54:
            v89 = 0;
            v73 = v100 & 0xC000000000000001;
            a5 = (v100 & 0xFFFFFFFFFFFFFF8);
            while (1)
            {
              if (v73)
              {
                v101 = sub_100030BA4();
              }

              else
              {
                if (v89 >= *((v100 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_80;
                }

                v101 = *(v100 + 8 * v89 + 32);
              }

              v102 = v101;
              v87 = (v89 + 1);
              if (__OFADD__(v89, 1))
              {
                break;
              }

              v103 = [v101 displayString];
              v104 = sub_1000306F4();
              v106 = v105;

              aBlock = v104;
              v156 = v106;
              v153 = v151;
              v154 = v152;
              v107 = sub_10002FF34();
              v108 = v150;
              (*(*(v107 - 8) + 56))(v150, 1, 1, v107);
              v124 = sub_10000FA88();
              v125 = v124;
              sub_100030AB4();
              LOBYTE(v103) = v109;
              sub_100008BB8(v108, &qword_1000423C8, &unk_100034360);

              if (v103)
              {
              }

              else
              {
                sub_100030BD4();
                sub_100030C04();
                sub_100030C14();
                sub_100030BE4();
              }

              ++v89;
              if (v87 == v92)
              {
                a5 = v147;
                v73 = v136;
                v87 = &_s10Foundation14DateComponentsV15RemindersUICoreE010rem_allDaybC0ACyF_ptr;
                v89 = v139;
                goto LABEL_66;
              }
            }

            __break(1u);
LABEL_80:
            __break(1u);
            break;
          }
        }

        else
        {
          v92 = *((v100 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v92)
          {
            goto LABEL_54;
          }
        }

LABEL_66:
      }

      v110 = sub_1000304F4();
      v111 = [v110 displayName];

      if (!v111)
      {
        sub_1000306F4();
        v111 = sub_1000306C4();
      }

      v112 = objc_allocWithZone(v87[449]);
      v113 = sub_100030784().super.isa;

      v114 = [v112 initWithTitle:v111 items:v113];

      v115 = v114;
      sub_100030774();
      if (*((v159 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v159 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1000307B4();
      }

      v92 = v148 + 1;
      sub_1000307C4();

      (*v141)(v149, v73);
      v94 = v142;
      if (v92 == ObjCClassFromMetadata)
      {
        v93 = v159;
        goto LABEL_73;
      }
    }

    __break(1u);
LABEL_82:
    sub_1000307B4();
  }

LABEL_73:

  v116 = sub_100030654();
  v117 = sub_100030884();
  if (os_log_type_enabled(v116, v117))
  {
    v118 = swift_slowAlloc();
    *v118 = 134217984;
    if (v93 >> 62)
    {
      v119 = sub_100030CE4();
    }

    else
    {
      v119 = *((v93 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v118 + 4) = v119;

    _os_log_impl(&_mh_execute_header, v116, v117, "Widget provideListOptions sections %ld ", v118, 0xCu);
  }

  else
  {
  }

  v120 = objc_allocWithZone(INObjectCollection);
  sub_100008944(&qword_1000423D0, &qword_100034370);
  v121 = sub_100030784().super.isa;

  v122 = [v120 initWithSections:v121];

  v123 = v122;
  v134(v122, 0);

  v127(v135, v129);
  return (*(v130 + 8))(v132, v131);
}