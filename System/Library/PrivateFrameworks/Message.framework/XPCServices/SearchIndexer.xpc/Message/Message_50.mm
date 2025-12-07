void sub_100333E88(uint64_t a1)
{
  v3 = v1;
  v5 = [v3 managedObjectContext];
  if (v5)
  {
    v6 = v5;
    sub_1003336DC(v3, a1, &v10);
    if (v2)
    {
    }

    else
    {
      v7 = v10;
      if (*(v10 + 16))
      {
        sub_10000C9C0(&qword_1005D9930, &qword_1004F6B58);
        v8 = sub_1004A6A74();
      }

      else
      {
        v8 = _swiftEmptyDictionarySingleton;
      }

      v9 = v8;
      sub_100333FA4(v7, 1, &v9);
    }
  }

  else
  {
    sub_1003511F4(_swiftEmptyArrayStorage);
  }
}

void sub_100333FA4(uint64_t a1, char a2, void *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v7 = *(a1 + 40);
    v8 = *a3;
    v47 = *(a1 + 32);
    v9 = sub_100067004();
    v11 = v8[2];
    v12 = (v10 & 1) == 0;
    v13 = v11 + v12;
    if (__OFADD__(v11, v12))
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v14 = v9;
    v15 = v10;
    v16 = v8[3];
    v17 = v7;
    if (v16 < v13)
    {
      sub_10035F9DC(v13, a2 & 1);
      v18 = sub_100067004();
      if ((v15 & 1) != (v19 & 1))
      {
LABEL_27:
        sub_1004A6E24();
        __break(1u);
        return;
      }

      v14 = v18;
      v20 = *a3;
      if ((v15 & 1) == 0)
      {
        goto LABEL_12;
      }

LABEL_9:
      v21 = v20[7];
      v22 = *(v21 + 8 * v14);
      *(v21 + 8 * v14) = v17;

      v23 = v3 - 1;
      if (v3 == 1)
      {
        return;
      }

LABEL_15:
      for (i = (a1 + 56); ; i += 2)
      {
        v30 = *(i - 2);
        v31 = *i;
        v32 = *a3;
        v33 = sub_100067004();
        v35 = v32[2];
        v36 = (v34 & 1) == 0;
        v37 = v35 + v36;
        if (__OFADD__(v35, v36))
        {
          break;
        }

        v38 = v33;
        v39 = v34;
        v40 = v32[3];
        v41 = v31;
        if (v40 < v37)
        {
          sub_10035F9DC(v37, 1);
          v42 = sub_100067004();
          if ((v39 & 1) != (v43 & 1))
          {
            goto LABEL_27;
          }

          v38 = v42;
        }

        v44 = *a3;
        if (v39)
        {
          v28 = v44[7];
          v29 = *(v28 + 8 * v38);
          *(v28 + 8 * v38) = v41;
        }

        else
        {
          v44[(v38 >> 6) + 8] |= 1 << v38;
          *(v44[6] + 4 * v38) = v30;
          *(v44[7] + 8 * v38) = v41;
          v45 = v44[2];
          v25 = __OFADD__(v45, 1);
          v46 = v45 + 1;
          if (v25)
          {
            goto LABEL_26;
          }

          v44[2] = v46;
        }

        if (!--v23)
        {
          return;
        }
      }

      goto LABEL_25;
    }

    if (a2)
    {
      v20 = *a3;
      if (v15)
      {
        goto LABEL_9;
      }
    }

    else
    {
      sub_1003614E0();
      v20 = *a3;
      if (v15)
      {
        goto LABEL_9;
      }
    }

LABEL_12:
    v20[(v14 >> 6) + 8] |= 1 << v14;
    *(v20[6] + 4 * v14) = v47;
    *(v20[7] + 8 * v14) = v17;
    v24 = v20[2];
    v25 = __OFADD__(v24, 1);
    v26 = v24 + 1;
    if (v25)
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v20[2] = v26;
    v23 = v3 - 1;
    if (v3 == 1)
    {
      return;
    }

    goto LABEL_15;
  }
}

uint64_t sub_100334204(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = result;
    v3 = (result + OBJC_IVAR____TtC17IMAPSearchIndexer14MessagesSource__fetchedResultsController);
    v4 = *(result + OBJC_IVAR____TtC17IMAPSearchIndexer14MessagesSource__fetchedResultsController + 8);
    *v3 = 0;
    v3[1] = 0;

    if (*(v2 + OBJC_IVAR____TtC17IMAPSearchIndexer14MessagesSource_state) == 1)
    {
      (*(v2 + OBJC_IVAR____TtC17IMAPSearchIndexer14MessagesSource_contentDidChange))();
    }
  }

  return result;
}

uint64_t sub_10033429C()
{

  v1 = OBJC_IVAR____TtC17IMAPSearchIndexer14MessagesSource_logger;
  v2 = sub_1004A4A74();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MessagesSource(uint64_t a1)
{
  result = qword_1005D9990;
  if (!qword_1005D9990)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1003343F0(uint64_t a1)
{
  result = sub_1004A4A74();
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

id sub_1003344C4()
{
  v1 = *(v0 + 16);
  if (qword_1005D8760 != -1)
  {
    swift_once();
  }

  v22[2] = xmmword_1005D9218;
  v22[3] = *&qword_1005D9228;
  v22[4] = xmmword_1005D9238;
  v22[0] = xmmword_1005D91F8;
  v22[1] = *&qword_1005D9208;
  result = sub_1003521DC(v22);
  v3 = result;
  if ((*(v0 + OBJC_IVAR____TtC17IMAPSearchIndexer14MessagesSource_state) & 1) == 0)
  {
    return [objc_allocWithZone(NSArray) init];
  }

  v4 = v0 + OBJC_IVAR____TtC17IMAPSearchIndexer14MessagesSource__fetchedResultsController;
  v5 = *(v0 + OBJC_IVAR____TtC17IMAPSearchIndexer14MessagesSource__fetchedResultsController + 8);
  if (v5 && *v4 == result)
  {
    v6 = v5;
    v7 = [v6 fetchedObjects];
    if (v7)
    {
LABEL_17:
      v20 = v7;

      return v20;
    }

LABEL_16:
    v7 = [objc_allocWithZone(NSArray) init];
    goto LABEL_17;
  }

  v8 = *(v0 + OBJC_IVAR____TtC17IMAPSearchIndexer14MessagesSource_observer);
  if (v8)
  {
    v9 = v8;
    v10 = sub_1003349E8();
    v11 = [objc_allocWithZone(NSFetchedResultsController) initWithFetchRequest:v10 managedObjectContext:v1 sectionNameKeyPath:0 cacheName:0];

    [v11 setDelegate:v9];
    v21 = 0;
    if ([v11 performFetch:&v21])
    {
      v12 = v21;
    }

    else
    {
      v13 = v21;
      sub_1004A4274();

      swift_willThrow();
      swift_errorRetain();
      v14 = sub_1004A4A54();
      v15 = sub_1004A6014();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        *v16 = 138412290;
        v18 = sub_1004A4264();
        *(v16 + 4) = v18;
        *v17 = v18;
        _os_log_impl(&_mh_execute_header, v14, v15, "Failed to fetch: %@", v16, 0xCu);
        sub_100190D30(v17);
      }

      else
      {
      }
    }

    v19 = *(v4 + 8);
    *v4 = v3;
    *(v4 + 8) = v11;
    v6 = v11;

    v7 = [v6 fetchedObjects];
    if (v7)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  __break(1u);
  return result;
}

id sub_100334904()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_100334994()
{
  result = qword_1005D9AE0;
  if (!qword_1005D9AE0)
  {
    result = swift_getWitnessTable(byte_1004F6CD8, &type metadata for MessagesSource.State, v0, v1);
    atomic_store(result, &qword_1005D9AE0);
  }

  return result;
}

id sub_1003349E8()
{
  v1 = v0;
  v2 = objc_allocWithZone(NSFetchRequest);
  v3 = sub_1004A5734();
  v4 = [v2 initWithEntityName:v3];

  [v4 setReturnsObjectsAsFaults:0];
  v5 = *(v1 + 40);
  if (v5 >= 800)
  {
    v5 = 800;
  }

  if (v5 <= 250)
  {
    v6 = 250;
  }

  else
  {
    v6 = v5;
  }

  [v4 setFetchBatchSize:v6];
  if (qword_1005D8760 != -1)
  {
    swift_once();
  }

  v11[2] = xmmword_1005D9218;
  v11[3] = *&qword_1005D9228;
  v11[4] = xmmword_1005D9238;
  v11[0] = xmmword_1005D91F8;
  v11[1] = *&qword_1005D9208;
  v7 = sub_1003521DC(v11);
  v8 = (*(v1 + 24))(v7);
  [v4 setPredicate:v8];

  sub_100334B5C();
  isa = sub_1004A5C04().super.isa;
  [v4 setSortDescriptors:isa];

  return v4;
}

unint64_t sub_100334B5C()
{
  result = qword_1005D9940;
  if (!qword_1005D9940)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1005D9940);
  }

  return result;
}

uint64_t sub_100334BA8()
{
  v0 = sub_1004A4A74();
  sub_1001C2074(v0, qword_1005D9AE8);
  sub_1001C203C(v0, qword_1005D9AE8);
  return sub_1004A4A64();
}

uint64_t sub_100334C28(void *a1, uint64_t a2)
{
  v4 = *v2;
  if (*v2 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1004A6A34())
  {
    v6 = 0;
    while ((v4 & 0xC000000000000001) != 0)
    {
      v7 = sub_1004A6794();
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_12;
      }

LABEL_7:
      sub_10019A8E4(0, &qword_1005D91C0, NSObject_ptr);
      if (sub_1004A62F4())
      {
        return v7;
      }

      ++v6;
      if (v8 == i)
      {
        goto LABEL_15;
      }
    }

    if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_13;
    }

    v7 = *(v4 + 8 * v6 + 32);

    v8 = v6 + 1;
    if (!__OFADD__(v6, 1))
    {
      goto LABEL_7;
    }

LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }

LABEL_15:
  type metadata accessor for MessagesToDownload.Source();
  swift_allocObject();
  v9 = a1;

  v7 = sub_1003367DC(v9, a2);

  sub_1004A5BF4();
  if (*((*v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1004A5C44();
  }

  result = sub_1004A5C84();
  v11 = *(v7 + 32);
  if (v11)
  {
    if ((*(v11 + OBJC_IVAR____TtC17IMAPSearchIndexer14MessagesSource_state) & 1) == 0)
    {
      *(v11 + OBJC_IVAR____TtC17IMAPSearchIndexer14MessagesSource_state) = 1;
      (*(v11 + OBJC_IVAR____TtC17IMAPSearchIndexer14MessagesSource_contentDidChange))(result);
    }

    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100334E18()
{
  v1 = *v0;
  v50 = *v0 >> 62;
  v2 = *v0 & 0xFFFFFFFFFFFFFF8;
  if (v50)
  {
    goto LABEL_48;
  }

  v58 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (2)
  {
    v3 = 0;
    v55 = v1 + 32;
    v56 = v1 & 0xC000000000000001;
    p_attr = &stru_1005CAFF8.attr;
    v52 = v2;
    while (1)
    {
      if (v3 == v58)
      {
        if (v50)
        {
          v3 = sub_1004A6A34();
        }

        else
        {
          v3 = *(v2 + 16);
        }

LABEL_105:
        if (v1 >> 62)
        {
          goto LABEL_119;
        }

        v48 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v48 >= v3)
        {
          goto LABEL_107;
        }

LABEL_120:
        __break(1u);
LABEL_121:
        __break(1u);
LABEL_122:
        __break(1u);
LABEL_123:
        __break(1u);
        goto LABEL_124;
      }

      if (v56)
      {
        v5 = sub_1004A6794();
      }

      else
      {
        if (v3 >= *(v2 + 16))
        {
          goto LABEL_43;
        }

        v5 = *(v55 + 8 * v3);
      }

      if ([*(v5 + 16) *(p_attr + 3432)])
      {

LABEL_36:
        v2 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          __break(1u);
          goto LABEL_50;
        }

        if (!v50)
        {
          v22 = v52;
          goto LABEL_52;
        }

        if (v2 != sub_1004A6A34())
        {
          goto LABEL_53;
        }

        goto LABEL_105;
      }

      v6 = *(v5 + 16);
      v7 = sub_1004A5734();
      [v6 willAccessValueForKey:v7];

      v8 = [v6 primitiveName];
      if (v8)
      {
        break;
      }

      rawValue = 0;
LABEL_28:
      v0 = sub_1004A5734();
      [v6 didAccessValueForKey:v0];

      if (!rawValue)
      {
        goto LABEL_36;
      }

      v21 = __OFADD__(v3++, 1);
      if (v21)
      {
        goto LABEL_44;
      }
    }

    v0 = v8;
    p_attr = sub_1004A6294();
    v9 = sub_1004A62A4();
    v10 = sub_1004A6294();
    v11 = sub_1004A62A4();
    if (p_attr < v10 || v11 < p_attr)
    {
      goto LABEL_45;
    }

    v12 = sub_1004A6294();
    v13 = sub_1004A62A4();
    if (v9 < v12 || v13 < v9)
    {
      goto LABEL_46;
    }

    v14 = v9 - p_attr;
    if (__OFSUB__(v9, p_attr))
    {
      goto LABEL_47;
    }

    if (!v14)
    {
      v15 = _swiftEmptyArrayStorage;
LABEL_27:
      p_attr = 0x1005CB000;

      rawValue = MailboxName.init(_:)(v15).bytes._rawValue;
      goto LABEL_28;
    }

    v53 = v3;
    if (v14 >= 1)
    {
      v3 = v1;
      sub_10000C9C0(&qword_1005D65C0, &unk_1004DD1B0);
      v15 = swift_allocObject();
      v16 = j__malloc_size(v15);
      v15[2] = v14;
      v15[3] = 2 * v16 - 64;
      v1 = sub_1004A6294();
      if (v1 != sub_1004A62A4())
      {
        v2 = (v15 + 4);
        v17 = ~p_attr + v9;
        while (1)
        {
          v18 = sub_1004A62B4();
          p_attr = sub_1004A6294();
          v19 = sub_1004A62A4();
          if (v1 < p_attr || v1 >= v19)
          {
            break;
          }

          *v2 = v18;
          if (!v17)
          {
            v1 = v3;
            v2 = v52;
            v3 = v53;
            goto LABEL_27;
          }

          ++v2;
          ++v1;
          --v17;
          if (v1 == sub_1004A62A4())
          {
            goto LABEL_50;
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
LABEL_47:
        __break(1u);
LABEL_48:
        v58 = sub_1004A6A34();
        continue;
      }

LABEL_50:

      __break(1u);
    }

    break;
  }

  sub_1004A6294();
  __break(1u);
LABEL_52:
  while (2)
  {
    if (v2 == *(v22 + 16))
    {
      goto LABEL_105;
    }

LABEL_53:
    while (2)
    {
      v23 = v1 & 0xC000000000000001;
      if ((v1 & 0xC000000000000001) != 0)
      {
        v24 = sub_1004A6794();
      }

      else
      {
        if ((v2 & 0x8000000000000000) != 0)
        {
          goto LABEL_111;
        }

        if (v2 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_112;
        }

        v24 = *(v1 + 8 * v2 + 32);
      }

      if ([*(v24 + 16) *(p_attr + 3432)])
      {

LABEL_97:
        v21 = __OFADD__(v2++, 1);
        if (v21)
        {
          goto LABEL_113;
        }

        if (!(v1 >> 62))
        {
          goto LABEL_104;
        }

        if (v2 == sub_1004A6A34())
        {
          goto LABEL_105;
        }

        continue;
      }

      break;
    }

    v25 = *(v24 + 16);
    v26 = sub_1004A5734();
    [v25 willAccessValueForKey:v26];

    v27 = [v25 primitiveName];
    if (!v27)
    {
      v43 = 0;
      goto LABEL_78;
    }

    v0 = v27;
    v28 = sub_1004A6294();
    v29 = sub_1004A62A4();
    v30 = sub_1004A6294();
    v31 = sub_1004A62A4();
    if (v28 < v30 || v31 < v28)
    {
      goto LABEL_114;
    }

    v32 = sub_1004A6294();
    v33 = sub_1004A62A4();
    if (v29 < v32 || v33 < v29)
    {
      goto LABEL_115;
    }

    v59 = v25;
    v34 = v29 - v28;
    if (__OFSUB__(v29, v28))
    {
      goto LABEL_116;
    }

    if (!v34)
    {
      v35 = _swiftEmptyArrayStorage;
      p_attr = 0x1005CB000;
LABEL_77:

      v43 = MailboxName.init(_:)(v35).bytes._rawValue;
      v25 = v59;
LABEL_78:
      v0 = sub_1004A5734();
      [v25 didAccessValueForKey:v0];

      if (v43)
      {

        if (v3 != v2)
        {
          if (v23)
          {
            v0 = sub_1004A6794();
            v44 = sub_1004A6794();
          }

          else
          {
            if (v3 < 0)
            {
              goto LABEL_121;
            }

            v45 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v3 >= v45)
            {
              goto LABEL_122;
            }

            if (v2 >= v45)
            {
              goto LABEL_123;
            }

            v0 = *(v1 + 32 + 8 * v3);
            v44 = *(v1 + 32 + 8 * v2);
          }

          if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
          {
            v1 = sub_100139930(v1);
            v46 = (v1 >> 62) & 1;
          }

          else
          {
            LODWORD(v46) = 0;
          }

          v47 = v1 & 0xFFFFFFFFFFFFFF8;
          *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v3 + 0x20) = v44;

          if ((v1 & 0x8000000000000000) != 0 || v46)
          {
            v1 = sub_100139930(v1);
            v47 = v1 & 0xFFFFFFFFFFFFFF8;
            if ((v2 & 0x8000000000000000) != 0)
            {
LABEL_103:
              __break(1u);
LABEL_104:
              v22 = v1 & 0xFFFFFFFFFFFFFF8;
              continue;
            }
          }

          else if ((v2 & 0x8000000000000000) != 0)
          {
            goto LABEL_103;
          }

          if (v2 >= *(v47 + 16))
          {
            goto LABEL_118;
          }

          *(v47 + 8 * v2 + 32) = v0;

          *v51 = v1;
        }

        v21 = __OFADD__(v3++, 1);
        if (v21)
        {
          goto LABEL_117;
        }
      }

      goto LABEL_97;
    }

    break;
  }

  v57 = v1 & 0xC000000000000001;
  v54 = v3;
  if (v34 < 1)
  {
    goto LABEL_125;
  }

  v3 = v1;
  sub_10000C9C0(&qword_1005D65C0, &unk_1004DD1B0);
  v35 = swift_allocObject();
  v36 = j__malloc_size(v35);
  v35[2] = v34;
  v35[3] = 2 * v36 - 64;
  v37 = sub_1004A6294();
  if (v37 == sub_1004A62A4())
  {
LABEL_124:

    __break(1u);
LABEL_125:
    result = sub_1004A6294();
    __break(1u);
    return result;
  }

  v38 = v35 + 4;
  v39 = ~v28 + v29;
  while (1)
  {
    v40 = sub_1004A62B4();
    v41 = sub_1004A6294();
    v42 = sub_1004A62A4();
    if (v37 < v41 || v37 >= v42)
    {
      break;
    }

    *v38 = v40;
    if (!v39)
    {
      v1 = v3;
      v3 = v54;
      p_attr = 0x1005CB000;
      v23 = v57;
      goto LABEL_77;
    }

    ++v38;
    ++v37;
    --v39;
    if (v37 == sub_1004A62A4())
    {
      goto LABEL_124;
    }
  }

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
  v48 = sub_1004A6A34();
  if (v48 < v3)
  {
    goto LABEL_120;
  }

LABEL_107:

  return sub_100336C30(v3, v48);
}

uint64_t sub_100335578()
{

  return swift_deallocClassInstance();
}

id sub_1003355FC(uint64_t a1, void *a2)
{
  sub_10000C9C0(&qword_1005D8FE0, &qword_1004F65D0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1004D01D0;
  v5 = [a2 objectID];
  *(v4 + 56) = sub_10019A8E4(0, &qword_1005D8FE8, NSManagedObjectID_ptr);
  *(v4 + 32) = v5;
  v6 = [objc_allocWithZone(NSNumber) initWithLongLong:a1];
  *(v4 + 88) = sub_10019A8E4(0, &qword_1005D51B0, NSNumber_ptr);
  *(v4 + 64) = v6;
  v7 = sub_1004A5734();
  isa = sub_1004A5C04().super.isa;

  v9 = [objc_opt_self() predicateWithFormat:v7 argumentArray:isa];

  return v9;
}

uint64_t sub_10033574C(uint64_t *a1, uint64_t *a2)
{
  v2 = *(a1 + 2);
  v3 = a1[2];
  v4 = *(a2 + 2);
  v5 = a2[2];
  sub_10019A8E4(0, &qword_1005D91C0, NSObject_ptr);
  if ((sub_1004A62F4() & 1) == 0 || v2 != v4)
  {
    return 0;
  }

  return sub_100336368(v3, v5);
}

BOOL sub_1003357F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_1003364F8(v5, v7);
}

int *sub_100335868@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v41 = a2;
  v42 = a3;
  v4 = sub_10000C9C0(&qword_1005D9BB8, &qword_1004F6D68);
  __chkstk_darwin(v4 - 8);
  v40 = &v36 - v5;
  v6 = _s5StateV15DeferredRequestVMa(0);
  v38 = *(v6 - 8);
  v39 = v6;
  __chkstk_darwin(v6);
  v36 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = _s11QueuedItemsV4ItemVMa(0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8 - 8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 24);
  swift_beginAccess();
  v13 = *(v12 + 48);

  os_unfair_lock_lock((v13 + 48));
  v14 = *(v13 + 16);
  v15 = *(v9 + 80);
  v16 = v14[4];
  v17 = v14[2];
  v37 = v14[3];
  if (v17 >= v16 + v37)
  {
    v18 = v16 + v37;
  }

  else
  {
    v18 = v17;
  }

  v19 = (v15 + 40) & ~v15;
  v43 = v14;
  v44 = v16;
  v45 = v18;

  v20 = 0;
  if (v16 == v18)
  {
LABEL_5:
    if (sub_100351DD0())
    {
      v14 = v43;
      v16 = v44;
      goto LABEL_7;
    }

    os_unfair_lock_unlock((v13 + 48));

    swift_beginAccess();
    swift_retain_n();
    v25 = v40;
    v26 = v20;
    v27 = v41;
    sub_100337430(v37, 457, v26, 0x4C4B400, v41, v40);
    if ((*(v38 + 48))(v25, 1, v39) == 1)
    {
      sub_100336F90(v25);
      swift_endAccess();

LABEL_16:
      v35 = v42;
      *v42 = 0;
      v35[1] = 0;
      v35[2] = 0;
      return result;
    }

    v29 = v36;
    sub_100336FF8(v25, v36, v28);

    sub_100339978(&v43, v29, v27, a1 + 40, a1, v30);

    sub_10033705C(v29, _s5StateV15DeferredRequestVMa);
    swift_endAccess();

    if ((v46 & 1) == 0)
    {
      goto LABEL_16;
    }

    v31 = v44;
    v32 = v43;
    v33 = *(a1 + 16);
    v34 = v42;
    *v42 = v33;
    v34[1] = v31;
    v34[2] = v32;

    return v33;
  }

  else
  {
LABEL_7:
    while (1)
    {
      v21 = v16 + 1;
      v44 = v16 + 1;
      sub_100323720(v14 + v19 + *(v9 + 72) * v16, v11);
      result = type metadata accessor for PendingItem(0);
      v23 = *&v11[result[7]];
      v24 = __OFADD__(v20, v23);
      v20 += v23;
      if (v24)
      {
        break;
      }

      sub_10033705C(v11, _s11QueuedItemsV4ItemVMa);
      ++v16;
      if (v21 == v45)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

char *sub_100335C40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v61 = a3;
  v63 = a2;
  v64 = a1;
  v4 = _s11QueuedItemsV4ItemVMa(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4 - 8);
  v7 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v3 + 32);
  if (!v8)
  {
LABEL_65:
    __break(1u);
LABEL_66:

    result = sub_1004A69A4();
    __break(1u);
    return result;
  }

  v9 = *(v3 + 24);
  swift_beginAccess();
  v10 = *(v9 + 48);

  os_unfair_lock_lock((v10 + 48));
  v11 = *(v10 + 16);
  v71 = _swiftEmptySetSingleton;
  v12 = v11[4];
  if (v11[2] >= v11[3] + v12)
  {
    v13 = v11[3] + v12;
  }

  else
  {
    v13 = v11[2];
  }

  v14 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v67 = v11;
  v68 = v12;
  v69 = v13;

  while (1)
  {
    if (v12 != v13)
    {
      goto LABEL_6;
    }

    v15 = sub_100351DD0();
    v11 = v67;
    if ((v15 & 1) == 0)
    {
      break;
    }

    v12 = v68;
LABEL_6:
    v68 = v12 + 1;
    sub_100323720(v11 + v14 + *(v5 + 72) * v12, v7);
    sub_10036210C(v70, *(v7 + 1));
    sub_10033705C(v7, _s11QueuedItemsV4ItemVMa);
    v13 = v69;
    ++v12;
  }

  v16 = v71;
  os_unfair_lock_unlock((v10 + 48));

  v17 = sub_1003344C4();
  v18 = *(v8 + 40);
  if (v18 < 0)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v19 = v17;
  v66 = [v19 count];
  v20 = 0;
  if (!v18)
  {
    v65 = _swiftEmptyArrayStorage;
    goto LABEL_59;
  }

  v60 = 0;
  v21 = 0;
  v22 = v16 + 7;
  v65 = _swiftEmptyArrayStorage;
LABEL_14:
  if (v21 < v66)
  {
    --v18;
    do
    {
      v23 = [v19 objectAtIndexedSubscript:v21];
      sub_1004A64E4();
      swift_unknownObjectRelease();
      _s7MessageCMa();
      if (!swift_dynamicCast())
      {
        goto LABEL_66;
      }

      v24 = v71;
      v25 = sub_1004A5734();
      [v24 willAccessValueForKey:v25];

      v26 = [v24 primitiveSpotlightID];
      v27 = v26;
      if (v26)
      {
        v28 = [v26 longLongValue];
      }

      else
      {
        v28 = 0;
      }

      ++v21;
      v29 = sub_1004A5734();
      [v24 didAccessValueForKey:v29];

      if (v27)
      {
        if (!v16[2] || (sub_1004A6E94(), sub_1004A6EF4(v28), v30 = sub_1004A6F14(), v31 = -1 << *(v16 + 32), v32 = v30 & ~v31, ((*(v22 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0))
        {
LABEL_27:
          v62 = v20;
          v34 = sub_1004A5734();
          [v24 willAccessValueForKey:v34];

          v35 = [v24 primitiveUid];
          if (v35)
          {
            v36 = v35;
            v37 = [v35 longLongValue];

            v38 = (v37 - 0x100000000) < 0xFFFFFFFF00000001;
            if ((v37 - 0x100000000) >= 0xFFFFFFFF00000001)
            {
              v39 = v37;
            }

            else
            {
              v39 = 0;
            }
          }

          else
          {
            v39 = 0;
            v38 = 1;
          }

          v40 = sub_1004A5734();
          [v24 didAccessValueForKey:v40];

          if (v38 || (LODWORD(v67) = v39, v41 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400), (MessageIdentifierSet.contains(_:)(&v67, v41) & 1) != 0))
          {

            v20 = v62;
            if (v18)
            {
              goto LABEL_14;
            }
          }

          else
          {
            if (*(v65 + 2) >= v63)
            {
              goto LABEL_13;
            }

            v42 = sub_1004A5734();
            [v24 willAccessValueForKey:v42];

            v43 = [v24 primitiveMessageSize];
            v44 = v43;
            if (v43)
            {
              v45 = [v43 integerValue];
            }

            else
            {
              v45 = 0;
            }

            v46 = sub_1004A5734();
            [v24 didAccessValueForKey:v46];

            if (v44)
            {
              if (v45 > 1000000)
              {
                v47 = 821709;
                goto LABEL_45;
              }
            }

            else
            {
              v45 = 0;
            }

            v48 = 809;
            if (v45 > 809)
            {
              v48 = v45;
            }

            v47 = v45 + v48 + 1709;
LABEL_45:
            v49 = v60 + v47;
            if (__OFADD__(v60, v47))
            {
              __break(1u);
              goto LABEL_64;
            }

            if (v49 >= v61)
            {
LABEL_13:

              v20 = 1;
              if (!v18)
              {
                break;
              }

              goto LABEL_14;
            }

            v50 = sub_10033B018();
            LODWORD(v60) = v51;
            if (v51)
            {
              v52 = 0;
            }

            else
            {
              v52 = v50;
            }

            v59 = v52;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v65 = sub_10035DA28(0, *(v65 + 2) + 1, 1, v65);
            }

            v54 = *(v65 + 2);
            v53 = *(v65 + 3);
            if (v54 >= v53 >> 1)
            {
              v65 = sub_10035DA28((v53 > 1), v54 + 1, 1, v65);
            }

            v55 = v65;
            *(v65 + 2) = v54 + 1;
            v56 = &v55[24 * v54];
            *(v56 + 8) = v39;
            *(v56 + 5) = v59;
            v56[48] = v60 & 1;
            v60 = v49;
            v20 = v62;
            if (v18)
            {
              goto LABEL_14;
            }
          }

          break;
        }

        v33 = ~v31;
        while (*(v16[6] + 8 * v32) != v28)
        {
          v32 = (v32 + 1) & v33;
          if (((*(v22 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
          {
            goto LABEL_27;
          }
        }
      }
    }

    while (v21 < v66);
  }

LABEL_59:

  result = v65;
  if (!*(v65 + 2) && (v20 & 1) != 0)
  {

    return 0;
  }

  return result;
}

uint64_t sub_100336368(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    if (*(a2 + 32) == *(a1 + 32))
    {
      v3 = (a2 + 56);
      v4 = (a1 + 56);
      do
      {
        v5 = *(v3 - 8);
        if (*(v4 - 8) == 1)
        {
          if ((*(v3 - 2) & 1) == 0)
          {
            return 0;
          }
        }

        else
        {
          v6 = *(v3 - 2);
          if (*(v3 - 8))
          {
            v6 = 0;
          }

          if (*(v4 - 2) != v6)
          {
            v5 = 1;
          }

          if (v5)
          {
            return 0;
          }
        }

        if (!--v2)
        {
          return 1;
        }

        v8 = *v3;
        v3 += 6;
        v7 = v8;
        v9 = *v4;
        v4 += 6;
      }

      while (v7 == v9);
    }

    return 0;
  }

  return 1;
}

unint64_t sub_1003363F8(uint64_t a1, char a2)
{
  v4 = *v2;
  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if ((isUniquelyReferenced_nonNull_bridgeObject & 1) == 0 || (result = 0, (v4 & 0x8000000000000000) != 0) || (v4 & 0x4000000000000000) != 0 || a1 > *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    if (v4 >> 62)
    {
      sub_1004A6A34();
    }

    result = sub_1004A67A4();
    *v2 = result;
  }

  return result;
}

BOOL sub_1003364F8(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  if (*(a1 + 32))
  {
    if (*(a2 + 32))
    {
      v5 = *(a2 + 8);
      return sub_100336368(v3, *a2) & (v5 == v4);
    }

    return 0;
  }

  if (*(a2 + 32))
  {
    return 0;
  }

  v8 = *(a1 + 16);
  v7 = *(a1 + 24);
  v9 = *a2 == v3 && v4 == *(a2 + 8);
  v10 = v9 && v8 == *(a2 + 16);
  return v10 && v7 == *(a2 + 24);
}

uint64_t sub_100336580(int a1, uint64_t a2, char a3, int a4, uint64_t a5, char a6)
{
  if (a4 == a1)
  {
    if (a3)
    {
      if (a6)
      {
        return 1;
      }
    }

    else
    {
      if (a6)
      {
        v7 = 0;
      }

      else
      {
        v7 = a5;
      }

      if ((a6 & 1) == 0 && v7 == a2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1003365BC(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a2;
    v5 = a1;
    v6 = *v4;
    v7 = *v4 >> 62;
    if (!v7)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_13:
      __break(1u);
      goto LABEL_14;
    }
  }

  result = sub_1004A6A34();
  if (result < v3)
  {
    goto LABEL_13;
  }

LABEL_4:
  if (__OFSUB__(v3, v5))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v9 = v5 - v3;
  if (__OFSUB__(0, v3 - v5))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v7)
  {
    v10 = sub_1004A6A34();
  }

  else
  {
    v10 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = __OFADD__(v10, v9);
  result = v10 + v9;
  if (!v11)
  {
    sub_1003363F8(result, 1);
    return sub_100336B2C(v5, v3, 0, 0, _s11AccountInfoCMa);
  }

LABEL_16:
  __break(1u);
  return result;
}

id (*sub_1003366A0(void *a1))(uint64_t a1)
{
  *(swift_allocObject() + 16) = a1;
  sub_10000C9C0(qword_1005D9010, &unk_1004D3CA0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1004F6340;
  v3 = objc_allocWithZone(NSSortDescriptor);
  v4 = a1;
  v5 = sub_1004A5734();
  v6 = [v3 initWithKey:v5 ascending:1];

  *(v2 + 32) = v6;
  v7 = objc_allocWithZone(NSSortDescriptor);
  v8 = sub_1004A5734();
  v9 = [v7 initWithKey:v8 ascending:0];

  *(v2 + 40) = v9;
  return sub_100336F88;
}

uint64_t sub_1003367DC(void *a1, uint64_t a2)
{
  v5 = sub_1004A4A74();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  v34 = v2;
  v9 = *(a2 + 16);
  v10 = a1;

  v11 = v9;
  v33 = sub_1003366A0(v10);
  v13 = v12;
  v15 = v14;
  v17 = v16;
  if (qword_1005D8780 != -1)
  {
    swift_once();
  }

  v18 = sub_1001C203C(v5, qword_1005D9AE8);
  v19 = v6;
  v20 = *(v6 + 16);
  v20(v8, v18, v5);
  type metadata accessor for MessagesSource(0);
  v21 = swift_allocObject();
  *(v21 + OBJC_IVAR____TtC17IMAPSearchIndexer14MessagesSource_observer) = 0;
  *(v21 + OBJC_IVAR____TtC17IMAPSearchIndexer14MessagesSource_generationToken) = 0;
  v22 = (v21 + OBJC_IVAR____TtC17IMAPSearchIndexer14MessagesSource__fetchedResultsController);
  *v22 = 0;
  v22[1] = 0;
  *(v21 + OBJC_IVAR____TtC17IMAPSearchIndexer14MessagesSource_state) = 0;
  v21[2] = v11;
  v20(v21 + OBJC_IVAR____TtC17IMAPSearchIndexer14MessagesSource_logger, v8, v5);
  v21[3] = v33;
  v21[4] = v13;
  v21[5] = v15;
  v21[6] = v17;
  v23 = (v21 + OBJC_IVAR____TtC17IMAPSearchIndexer14MessagesSource_contentDidChange);
  *v23 = UInt32.init(_:);
  v23[1] = 0;
  v24 = type metadata accessor for MessagesSource.Observer();
  v25 = objc_allocWithZone(v24);
  swift_weakInit();
  swift_weakAssign();
  v35.receiver = v25;
  v35.super_class = v24;
  v26 = v11;

  v27 = objc_msgSendSuper2(&v35, "init");
  v28 = *(v21 + OBJC_IVAR____TtC17IMAPSearchIndexer14MessagesSource_observer);
  *(v21 + OBJC_IVAR____TtC17IMAPSearchIndexer14MessagesSource_observer) = v27;

  v29 = swift_allocObject();
  swift_weakInit();

  v30 = sub_100323BF4(sub_10032DC3C, v29);

  (*(v19 + 8))(v8, v5);

  *(v21 + OBJC_IVAR____TtC17IMAPSearchIndexer14MessagesSource_generationToken) = v30;

  swift_unknownObjectRelease();
  v31 = v34;
  *(v34 + 32) = v21;
  *(v31 + 40) = *sub_1004A47B4();

  return v31;
}

uint64_t sub_100336B2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v5 = a3;
  v8 = a2;
  v12 = *v6;
  v6 = (*v6 & 0xFFFFFFFFFFFFFF8);
  v9 = v6 + 4;
  v7 = &v6[a1 + 4];
  a5(a4);
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v5, v11);
  v11 = v5 - v11;
  if (v14)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v11)
  {
    goto LABEL_17;
  }

  v10 = v12 >> 62;
  if (!(v12 >> 62))
  {
    result = v6[2];
    v15 = result - v8;
    if (!__OFSUB__(result, v8))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_1004A6A34();
  v15 = result - v8;
  if (__OFSUB__(result, v8))
  {
    goto LABEL_23;
  }

LABEL_6:
  v16 = (v7 + 8 * v5);
  v17 = &v9[v8];
  if (v16 != v17 || v16 >= &v17[8 * v15])
  {
    memmove(v16, v17, 8 * v15);
  }

  if (v10)
  {
    result = sub_1004A6A34();
  }

  else
  {
    result = v6[2];
  }

  if (__OFADD__(result, v11))
  {
    goto LABEL_24;
  }

  v6[2] = result + v11;
LABEL_17:
  if (v5 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_100336C30(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a2;
    v5 = a1;
    v6 = *v4;
    v7 = *v4 >> 62;
    if (!v7)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_13:
      __break(1u);
      goto LABEL_14;
    }
  }

  result = sub_1004A6A34();
  if (result < v3)
  {
    goto LABEL_13;
  }

LABEL_4:
  if (__OFSUB__(v3, v5))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v9 = v5 - v3;
  if (__OFSUB__(0, v3 - v5))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v7)
  {
    v10 = sub_1004A6A34();
  }

  else
  {
    v10 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = __OFADD__(v10, v9);
  result = v10 + v9;
  if (!v11)
  {
    sub_1001AC08C(result, 1);
    return sub_100336B2C(v5, v3, 0, v12, type metadata accessor for MessagesToDownload.Source);
  }

LABEL_16:
  __break(1u);
  return result;
}

unint64_t sub_100336D10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = type metadata accessor for MessageBeingDownloaded(0);
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

unint64_t sub_100336E58(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_10035D8CC(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_100336D10(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t sub_100336F18()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100336F50()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100336F90(uint64_t a1)
{
  v2 = sub_10000C9C0(&qword_1005D9BB8, &qword_1004F6D68);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100336FF8(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = _s5StateV15DeferredRequestVMa(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10033705C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1003370E8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
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

uint64_t sub_100337130(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

Swift::Int sub_1003371AC(uint64_t a1)
{
  sub_1004A6E94();
  sub_1004A6EE4(*v1);
  sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
  sub_1000956A0();
  sub_1004A5564();
  sub_1004A6EB4(*(v1 + *(a1 + 24)));
  return sub_1004A6F14();
}

void sub_100337244(uint64_t a1, uint64_t a2)
{
  sub_1004A6EE4(*v2);
  sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
  sub_1000956A0();
  sub_1004A5564();
  sub_1004A6EB4(*(v2 + *(a2 + 24)));
}

Swift::Int sub_1003372CC(uint64_t a1, uint64_t a2)
{
  sub_1004A6E94();
  sub_1004A6EE4(*v2);
  sub_10000C9C0(&qword_1005CD7A8, &unk_1004CF5A0);
  sub_1000956A0();
  sub_1004A5564();
  sub_1004A6EB4(*(v2 + *(a2 + 24)));
  return sub_1004A6F14();
}

BOOL sub_100337360(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  sub_100016D2C();
  return (sub_1004A7034() & 1) != 0 && *(a1 + *(a3 + 24)) == *(a2 + *(a3 + 24));
}

uint64_t sub_1003373EC(uint64_t *a1, uint64_t *a2, __n128 a3)
{
  v4 = *a1;
  v5 = *a2;
  v6 = v4[3];
  if (v6 != v5[3])
  {
    return 0;
  }

  if (v4 == v5 || v6 == 0)
  {
    return 1;
  }

  else
  {
    return sub_1003385B8(v5, v4, a3);
  }
}

void sub_100337430(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, NSObject *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = v6;
  v82 = a3;
  v83 = a4;
  v80 = a1;
  v81 = a2;
  v10 = sub_10000C9C0(&qword_1005D9BD8, &qword_1004F6F28);
  __chkstk_darwin(v10 - 8);
  v12 = &v76 - v11;
  v13 = _s5StateV7RequestVMa(0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = (&v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v17);
  v19 = &v76 - v18;
  v21 = __chkstk_darwin(v20);
  v23 = (&v76 - v22);
  if ((*v7)[3].isa < 1)
  {
    (*(v14 + 56))(v12, 1, 1, v13, v21);
    sub_100025F40(v12, &qword_1005D9BD8, &qword_1004F6F28);
    v44 = (a5 + *(_s6LoggerVMa_0(0) + 20));
    v45 = *v44;
    v46 = *(v44 + 1);
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v47 = sub_1004A4A54();
    v48 = sub_1004A6004();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 68158464;
      *(v49 + 4) = 2;
      *(v49 + 8) = 256;
      *(v49 + 10) = v45;
      *(v49 + 11) = 1040;
      *(v49 + 13) = 8;
      *(v49 + 17) = 1024;
      *(v49 + 19) = v46;
      _os_log_impl(&_mh_execute_header, v47, v48, "[%.*hhx-%.*X] No deferred message requests.", v49, 0x17u);
    }

    v50 = _s5StateV15DeferredRequestVMa(0);
    v51 = *(*(v50 - 8) + 56);
    v52 = a6;
    goto LABEL_34;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1003384A8(_s5StateV7RequestVMa, &qword_1005D9BC8, &qword_1004F6F18, _s5StateV7RequestVMa);
  }

  v24 = *v7;
  v78 = (*(v14 + 80) + 40) & ~*(v14 + 80);
  isa = v24[4].isa;
  v77 = *(v14 + 72);
  sub_100339910(v24 + v78 + v77 * isa, v12, _s5StateV7RequestVMa);
  v26 = v24[4].isa;
  v27 = __OFADD__(v26, 1);
  v28 = (v26 + 1);
  if (v27)
  {
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v29 = v24[3].isa;
  if (v28 >= v24[2].isa)
  {
    v28 = 0;
  }

  v24[4].isa = v28;
  if (__OFSUB__(v29, 1))
  {
    goto LABEL_37;
  }

  v79 = a6;
  v24[3].isa = (v29 - 1);
  (*(v14 + 56))(v12, 0, 1, v13);
  sub_100339910(v12, v23, _s5StateV7RequestVMa);
  v30 = sub_10032B874(*(&v23->isa + *(v13 + 24)), v80, v81, v82, v83);
  v32 = v31;
  v33 = (a5 + *(_s6LoggerVMa_0(0) + 20));
  v34 = *v33;
  v35 = *(v33 + 1);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  if (v30 >= 1 && v32 >= 1)
  {
    v24 = v23;
    sub_100339848(v23, v19, _s5StateV7RequestVMa);
    v53 = sub_1004A4A54();
    v54 = sub_1004A6034();
    if (os_log_type_enabled(v53, v54))
    {
      v56 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v85 = v57;
      *v56 = 68158722;
      *(v56 + 4) = 2;
      *(v56 + 8) = 256;
      *(v56 + 10) = v34;
      *(v56 + 11) = 1040;
      *(v56 + 13) = 8;
      *(v56 + 17) = 1024;
      *(v56 + 19) = v35;
      *(v56 + 23) = 2080;
      v84 = *v19;
      sub_1000D40AC();
      v58 = sub_1004A5A84();
      v60 = v59;
      sub_1003398B0(v19, _s5StateV7RequestVMa);
      v61 = sub_10015BA6C(v58, v60, &v85);

      *(v56 + 25) = v61;
      _os_log_impl(&_mh_execute_header, v53, v54, "[%.*hhx-%.*X] Popped deferred message request %s.", v56, 0x21u);
      sub_1000197E0(v57);

LABEL_29:
      v66 = v79;
      sub_100339910(v24, v79, _s5StateV7RequestVMa);
      v67 = _s5StateV15DeferredRequestVMa(0);
      v68 = (v66 + *(v67 + 20));
      *v68 = v30;
      v68[1] = v32;
      v69 = (v66 + *(v67 + 24));
      v70 = v81;
      *v69 = v80;
      v69[1] = v70;
      v71 = v83;
      v69[2] = v82;
      v69[3] = v71;
      (*(*(v67 - 8) + 56))(v66, 0, 1, v67);
      return;
    }

LABEL_28:

    sub_1003398B0(v19, _s5StateV7RequestVMa);
    goto LABEL_29;
  }

  v83 = v23;
  sub_100339848(v23, v16, _s5StateV7RequestVMa);
  v37 = sub_1004A4A54();
  v38 = sub_1004A6034();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v85 = v32;
    *v39 = 68158722;
    *(v39 + 4) = 2;
    *(v39 + 8) = 256;
    *(v39 + 10) = v34;
    *(v39 + 11) = 1040;
    *(v39 + 13) = 8;
    *(v39 + 17) = 1024;
    *(v39 + 19) = v35;
    *(v39 + 23) = 2080;
    v84 = *v16;
    sub_1000D40AC();
    v40 = sub_1004A5A84();
    v42 = v41;
    sub_1003398B0(v16, _s5StateV7RequestVMa);
    v43 = sub_10015BA6C(v40, v42, &v85);

    *(v39 + 25) = v43;
    _os_log_impl(&_mh_execute_header, v37, v38, "[%.*hhx-%.*X] Currently no capacity for deferred message request %s.", v39, 0x21u);
    sub_1000197E0(v32);
  }

  else
  {

    sub_1003398B0(v16, _s5StateV7RequestVMa);
  }

  v30 = v79;
  v62 = v24[3].isa;
  v63 = v62 + 1;
  if (__OFADD__(v62, 1))
  {
    goto LABEL_38;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v53 = *v7;
  if (*v7)[2].isa >= v63 && (isUniquelyReferenced_nonNull_native)
  {
    v65 = v53[4].isa;
    if (v65)
    {
      goto LABEL_25;
    }
  }

  else
  {
    sub_100337D24(isUniquelyReferenced_nonNull_native, v63, 0, _s5StateV7RequestVMa, &qword_1005D9BC8, &qword_1004F6F18, _s5StateV7RequestVMa);
    v53 = *v7;
    v65 = (*v7)[4].isa;
    if (v65)
    {
LABEL_25:
      v19 = v65 - 1;
      if (__OFSUB__(v65, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      goto LABEL_32;
    }
  }

  v72 = v53[2].isa;
  v19 = v72 - 1;
  if (__OFSUB__(v72, 1))
  {
LABEL_40:
    __break(1u);
    return;
  }

LABEL_32:
  v73 = v83;
  sub_100339848(v83, v53 + v78 + v19 * v77, _s5StateV7RequestVMa);
  v53[4].isa = v19;
  v74 = v53[3].isa;
  v27 = __OFADD__(v74, 1);
  v75 = (v74 + 1);
  if (v27)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v53[3].isa = v75;
  sub_1003398B0(v73, _s5StateV7RequestVMa);
  v50 = _s5StateV15DeferredRequestVMa(0);
  v51 = *(*(v50 - 8) + 56);
  v52 = v30;
LABEL_34:
  v51(v52, 1, 1, v50);
}

size_t sub_100337D24(char a1, Swift::Int a2, char a3, uint64_t (*a4)(void), uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v13 = *v7;
  v14 = (*v7 + 16);
  v15 = *v14;
  v16 = a4(0);
  v17 = v16;
  if (v15 >= a2)
  {
    v26 = *(*(v16 - 8) + 80);
    sub_10000C9C0(a5, a6);
    v23 = swift_allocObject();
    v27 = *(v13 + 24);
    *(v23 + 16) = v15;
    *(v23 + 24) = v27;
    if (v27 >= 1)
    {
      sub_100338360(v23 + 16, v23 + ((v26 + 40) & ~v26), v14, v13 + ((v26 + 40) & ~v26), a7);
    }

    goto LABEL_19;
  }

  sub_1004A47C4(a2, a3 & 1);
  v18 = *(v17 - 8);
  v19 = *(v18 + 80);
  if (a1)
  {
    v20 = *(v13 + 24);
    sub_10000C9C0(a5, a6);
    v21 = *(v18 + 72);
    v22 = (v19 + 40) & ~v19;
    v23 = swift_allocObject();
    result = j__malloc_size(v23);
    if (v21)
    {
      if (result - v22 != 0x8000000000000000 || v21 != -1)
      {
        *(v23 + 16) = (result - v22) / v21;
        *(v23 + 24) = v20;
        *(v23 + 32) = 0;
        if (v20 >= 1)
        {
          sub_1003380A0(v23 + 16, v23 + v22, v14, v13 + v22, a7);
          *(v13 + 24) = 0;
        }

LABEL_19:

        *v7 = v23;
        return result;
      }

      goto LABEL_22;
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  sub_10000C9C0(a5, a6);
  v28 = *(v18 + 72);
  v29 = (v19 + 40) & ~v19;
  v23 = swift_allocObject();
  result = j__malloc_size(v23);
  if (!v28)
  {
    goto LABEL_21;
  }

  if (result - v29 != 0x8000000000000000 || v28 != -1)
  {
    v31 = *(v13 + 24);
    *(v23 + 16) = (result - v29) / v28;
    *(v23 + 24) = v31;
    *(v23 + 32) = 0;
    if (v31 >= 1)
    {
      sub_100338238(v23 + 16, v23 + v29, v14, v13 + v29, a7);
    }

    goto LABEL_19;
  }

LABEL_23:
  __break(1u);
  return result;
}

void *sub_100337FD8(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v5 = result[1];
  v6 = result[2];
  v7 = v6 + v5;
  if (!__OFADD__(v6, v5))
  {
    v11 = result;
    if ((v5 & 0x8000000000000000) == 0)
    {
      v12 = __OFSUB__(v7, *result);
      if (v7 < *result || (v7 -= *result, !v12))
      {
LABEL_9:
        v13 = a4(0);
        result = sub_100339848(a3, a2 + *(*(v13 - 8) + 72) * v7, a5);
        v14 = v11[1];
        v12 = __OFADD__(v14, 1);
        v15 = v14 + 1;
        if (!v12)
        {
          v11[1] = v15;
          return result;
        }

        goto LABEL_12;
      }

      __break(1u);
    }

    if (v7 < 0)
    {
      v12 = __OFADD__(v7, *result);
      v7 += *result;
      if (v12)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_9;
  }

  __break(1u);
LABEL_12:
  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

void sub_1003380A0(uint64_t a1, unint64_t a2, void *a3, unint64_t a4, uint64_t (*a5)(void))
{
  v5 = a3[2];
  v6 = *a3 - v5;
  if (__OFSUB__(*a3, v5))
  {
    __break(1u);
    goto LABEL_37;
  }

  v9 = a3[1];
  v10 = *(a5(0) - 8);
  if (v6 < v9)
  {
    v11 = v9 - v6;
    if (!__OFSUB__(v9, v6))
    {
      v12 = v6;
      v13 = a4;
      goto LABEL_6;
    }

LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v13 = 0;
  v11 = 0;
  v12 = v9;
LABEL_6:
  if (v11)
  {
    v14 = v6 < v9;
  }

  else
  {
    v14 = 0;
  }

  v15 = *(v10 + 72);
  if (v14)
  {
    v16 = v13;
  }

  else
  {
    v16 = 0;
  }

  if (v12 < 1)
  {
    v12 = 0;
    goto LABEL_22;
  }

  if (!a4)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v17 = a4 + v15 * v5;
  if (v17 <= a2 && v17 + v15 * v12 > a2)
  {
    if (v17 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }
  }

  else
  {
    swift_arrayInitWithTakeFrontToBack();
  }

LABEL_22:
  if (v6 < v9 && v11 >= 1)
  {
    if (v16)
    {
      v20 = a2 + v15 * v12;
      if (v20 < v16 || v20 >= v16 + v15 * v11)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (v20 != v16)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      return;
    }

LABEL_39:
    __break(1u);
  }
}

void sub_100338238(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(void))
{
  v5 = a3[2];
  v6 = *a3 - v5;
  if (__OFSUB__(*a3, v5))
  {
    __break(1u);
    goto LABEL_17;
  }

  v8 = a3[1];
  a5(0);
  if (v6 < v8)
  {
    v9 = v8 - v6;
    if (!__OFSUB__(v8, v6))
    {
      v10 = v6;
      v11 = a4;
      goto LABEL_6;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = 0;
  v9 = 0;
  v10 = v8;
LABEL_6:
  if (v10 < 1)
  {
    goto LABEL_9;
  }

  if (!a4)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  swift_arrayInitWithCopy();
LABEL_9:
  if (v6 < v8 && v9 >= 1)
  {
    if (v11)
    {
      swift_arrayInitWithCopy();
      return;
    }

LABEL_19:
    __break(1u);
  }
}

void sub_100338360(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(void))
{
  v5 = a3[2];
  v6 = *a3 - v5;
  if (__OFSUB__(*a3, v5))
  {
    __break(1u);
    goto LABEL_17;
  }

  v8 = a3[1];
  a5(0);
  if (v6 >= v8)
  {
    v10 = 0;
    v9 = 0;
    if (v8 < 1)
    {
      goto LABEL_9;
    }

LABEL_7:
    if (a4)
    {
      swift_arrayInitWithCopy();
      goto LABEL_9;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v9 = v8 - v6;
  if (__OFSUB__(v8, v6))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v10 = a4;
  if (v6 >= 1)
  {
    goto LABEL_7;
  }

LABEL_9:
  if (v6 < v8 && v9 >= 1)
  {
    if (v10)
    {
      swift_arrayInitWithCopy();
      return;
    }

LABEL_19:
    __break(1u);
  }
}

uint64_t sub_1003384A8(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *v4;
  v9 = a1(0);
  v10 = *(v8 + 16);
  v11 = *(*(v9 - 8) + 80);
  sub_10000C9C0(a2, a3);
  v12 = swift_allocObject();
  v13 = *(v8 + 24);
  *(v12 + 16) = v10;
  *(v12 + 24) = v13;
  if (v13 >= 1)
  {
    sub_100338360(v12 + 16, v12 + ((v11 + 40) & ~v11), (v8 + 16), v8 + ((v11 + 40) & ~v11), a4);
  }

  *v4 = v12;
  return result;
}

uint64_t sub_1003385B8(void *a1, void *a2, __n128 a3)
{
  v5 = _s5StateV7RequestVMa(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v9);
  v11 = (&v42 - v10);
  v42 = sub_10000C9C0(&qword_1005D9BE0, &qword_1004F6F30);
  __chkstk_darwin(v42);
  v13 = &v42 - v12;
  v14 = sub_10000C9C0(&qword_1005D9BD8, &qword_1004F6F28);
  __chkstk_darwin(v14 - 8);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v42 - v18;
  v20 = *(v6 + 80);
  v21 = a2[4];
  v22 = a2[3] + v21;
  if (a2[2] < v22)
  {
    v22 = a2[2];
  }

  v49 = a2;
  v50 = v21;
  v51 = v22;
  v23 = a1[4];
  v24 = a1[3] + v23;
  if (a1[2] < v24)
  {
    v24 = a1[2];
  }

  v43 = (v20 + 40) & ~v20;
  v44 = v6;
  v46 = a1;
  v47 = v23;
  v48 = v24;
  v25 = (v6 + 56);
  v26 = (v6 + 48);

  while (1)
  {
    v27 = v50;
    if (v50 != v51)
    {
      goto LABEL_9;
    }

    if (sub_100351DD0())
    {
      v27 = v50;
LABEL_9:
      v50 = v27 + 1;
      sub_100339848(v49 + v43 + *(v44 + 72) * v27, v19, _s5StateV7RequestVMa);
      v28 = 0;
      goto LABEL_11;
    }

    v28 = 1;
LABEL_11:
    v29 = *v25;
    (*v25)(v19, v28, 1, v5);
    v30 = v47;
    if (v47 != v48)
    {
      goto LABEL_14;
    }

    if (sub_100351DD0())
    {
      v30 = v47;
LABEL_14:
      v47 = v30 + 1;
      sub_100339848(v46 + v43 + *(v44 + 72) * v30, v16, _s5StateV7RequestVMa);
      v31 = 0;
      goto LABEL_16;
    }

    v31 = 1;
LABEL_16:
    v29(v16, v31, 1, v5);
    v32 = *(v42 + 48);
    sub_100339FDC(v19, v13);
    sub_100339FDC(v16, &v13[v32]);
    v33 = *v26;
    if ((*v26)(v13, 1, v5) == 1)
    {
      break;
    }

    if (v33(&v13[v32], 1, v5) == 1)
    {

      sub_1003398B0(v13, _s5StateV7RequestVMa);
      return 0;
    }

    sub_100339910(v13, v11, _s5StateV7RequestVMa);
    sub_100339910(&v13[v32], v8, _s5StateV7RequestVMa);
    if (*v11 != *v8 || (sub_100016D2C(), (sub_1004A7034() & 1) == 0))
    {
      sub_1003398B0(v8, _s5StateV7RequestVMa);
      sub_1003398B0(v11, _s5StateV7RequestVMa);
LABEL_23:

      return 0;
    }

    v45 = *(v11 + *(v5 + 24));
    sub_1003398B0(v11, _s5StateV7RequestVMa);
    v34 = v25;
    v35 = v26;
    v36 = v19;
    v37 = v16;
    v38 = *(v8 + *(v5 + 24));
    sub_1003398B0(v8, _s5StateV7RequestVMa);
    v39 = v45 == v38;
    v16 = v37;
    v19 = v36;
    v26 = v35;
    v25 = v34;
    if (!v39)
    {
      goto LABEL_23;
    }
  }

  v40 = v33(&v13[v32], 1, v5);
  result = 1;
  if (v40 == 1)
  {
    return result;
  }

  sub_100025F40(&v13[v32], &qword_1005D9BD8, &qword_1004F6F28);
  return 0;
}

uint64_t sub_100338AB4(_DWORD *a1, _DWORD *a2, __n128 a3)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v5 = _s5StateV7RequestVMa(0);
  sub_100016D2C();
  if ((sub_1004A7034() & 1) != 0 && *(a1 + *(v5 + 24)) == *(a2 + *(v5 + 24)) && ((v6 = _s5StateV15DeferredRequestVMa(0), v7 = *(v6 + 20), v9 = *(a1 + v7), v8 = *(a1 + v7 + 8), v10 = (a2 + v7), v12 = *v10, v11 = v10[1], v9 == v12) ? (v13 = v8 == v11) : (v13 = 0), v13))
  {
    v14 = vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(*(a1 + *(v6 + 24)), *(a2 + *(v6 + 24))), vceqq_s64(*(a1 + *(v6 + 24) + 16), *(a2 + *(v6 + 24) + 16)))));
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t sub_100338BA0(uint64_t a1, uint64_t a2, __n128 a3)
{
  v45.i64[0] = _s5StateV7RequestVMa(0);
  __chkstk_darwin(v45.i64[0]);
  v6 = (v41.i32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v44.i64[0] = _s5StateV15DeferredRequestVMa(0);
  __chkstk_darwin(v44.i64[0]);
  v8 = (v41.i32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = _s5StateV6ActionOMa(0);
  __chkstk_darwin(v9);
  v11 = (v41.i32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v12);
  v14 = (v41.i32 - v13);
  v15 = sub_10000C9C0(&qword_1005D9DD0, &unk_1004F7010);
  __chkstk_darwin(v15 - 8);
  v17 = &v41.i8[-v16];
  v19 = &v41.i8[*(v18 + 56) - v16];
  sub_100339848(a1, v41.i64 - v16, _s5StateV6ActionOMa);
  sub_100339848(a2, v19, _s5StateV6ActionOMa);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_100339848(v17, v14, _s5StateV6ActionOMa);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_100339910(v19, v8, _s5StateV15DeferredRequestVMa);
      if (*v14 == *v8 && (sub_100016D2C(), (sub_1004A7034() & 1) != 0) && *(v14 + *(v45.i64[0] + 24)) == *(v8 + *(v45.i64[0] + 24)) && (v29 = *(v44.i64[0] + 20), v30 = v14 + v29, v31 = *(v14 + v29), v32 = (v8 + v29), v31 == *v32) && *(v30 + 1) == v32[1])
      {
        v33 = *(v44.i64[0] + 24);
        v34 = (v14 + v33);
        v35 = (v8 + v33);
        v36 = *v34;
        v44 = v34[1];
        v45 = v36;
        v37 = *v35;
        v42 = v35[1];
        v43 = v37;
        sub_1003398B0(v8, _s5StateV15DeferredRequestVMa);
        if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(v45, v43), vceqq_s64(v44, v42)))))
        {
          sub_1003398B0(v14, _s5StateV15DeferredRequestVMa);
          sub_1003398B0(v17, _s5StateV6ActionOMa);
          v26 = 1;
          return v26 & 1;
        }
      }

      else
      {
        sub_1003398B0(v8, _s5StateV15DeferredRequestVMa);
      }

      v38 = _s5StateV15DeferredRequestVMa;
      v39 = v14;
      goto LABEL_22;
    }

    v27 = _s5StateV15DeferredRequestVMa;
    v28 = v14;
LABEL_10:
    sub_1003398B0(v28, v27);
    sub_100025F40(v17, &qword_1005D9DD0, &unk_1004F7010);
LABEL_23:
    v26 = 0;
    return v26 & 1;
  }

  sub_100339848(v17, v11, _s5StateV6ActionOMa);
  v20 = *(sub_10000C9C0(&qword_1005D9BC0, &qword_1004F6F10) + 48);
  v21 = *(v11 + v20 + 16);
  v43 = *(v11 + v20);
  v44 = v21;
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v27 = _s5StateV7RequestVMa;
    v28 = v11;
    goto LABEL_10;
  }

  v22 = *&v19[v20 + 16];
  v41 = *&v19[v20];
  v42 = v22;
  sub_100339910(v19, v6, _s5StateV7RequestVMa);
  if (*v11 != *v6 || (sub_100016D2C(), (sub_1004A7034() & 1) == 0))
  {
    sub_1003398B0(v6, _s5StateV7RequestVMa);
    goto LABEL_21;
  }

  v23 = *(v45.i64[0] + 24);
  v24 = *(v11 + v23);
  v25 = *(v6 + v23);
  sub_1003398B0(v6, _s5StateV7RequestVMa);
  if (v24 != v25)
  {
LABEL_21:
    v38 = _s5StateV7RequestVMa;
    v39 = v11;
LABEL_22:
    sub_1003398B0(v39, v38);
    sub_1003398B0(v17, _s5StateV6ActionOMa);
    goto LABEL_23;
  }

  sub_1003398B0(v11, _s5StateV7RequestVMa);
  v26 = vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(v43, v41), vceqq_s64(v44, v42))));
  sub_1003398B0(v17, _s5StateV6ActionOMa);
  return v26 & 1;
}

void sub_10033913C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X6>, uint64_t a8@<X7>, _OWORD *a9@<X8>)
{
  *&v77 = a8;
  v75 = a6;
  *&v78 = a1;
  v73 = a9;
  v15 = _s5StateV7RequestVMa(0);
  v68 = *(v15 - 8);
  __chkstk_darwin(v15);
  v70 = (&v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v17);
  v72 = &v67 - v18;
  v19 = _s5StateV15DeferredRequestVMa(0);
  __chkstk_darwin(v19);
  v69 = (&v67 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = _s5StateV6ActionOMa(0);
  __chkstk_darwin(v21);
  v23 = &v67 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v26 = &v67 - v25;
  v76 = a7;
  v71 = *a7;
  v27 = *(v71 + 24);
  v74 = a2;
  if (v27)
  {
    v28 = a3;
    v29 = a4;
    v30 = a5;
  }

  else
  {
    v31 = a2;
    v28 = a3;
    v32 = a3;
    v29 = a4;
    v33 = a4;
    v30 = a5;
    v34 = sub_10032B874(*(v78 + *(v15 + 24)), v31, v32, v33, a5);
    if (v34 >= 1 && v35 >= 1)
    {
      v63 = v34;
      v64 = v35;
      sub_100339848(v78, v26, _s5StateV7RequestVMa);
      v65 = &v26[*(v19 + 20)];
      *v65 = v63;
      *(v65 + 1) = v64;
      v66 = &v26[*(v19 + 24)];
      goto LABEL_9;
    }
  }

  v66 = &v26[*(sub_10000C9C0(&qword_1005D9BC0, &qword_1004F6F10) + 48)];
  sub_100339848(v78, v26, _s5StateV7RequestVMa);
LABEL_9:
  v37 = v77;
  *v66 = v74;
  *(v66 + 1) = v28;
  *(v66 + 2) = v29;
  *(v66 + 3) = v30;
  swift_storeEnumTagMultiPayload();
  sub_100339848(v26, v23, _s5StateV6ActionOMa);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v54 = v69;
    sub_100339910(v23, v69, _s5StateV15DeferredRequestVMa);
    sub_10033997C(v54, v75, v76, v37, v80);
    v77 = v80[0];
    v78 = v80[1];
    v55 = v81;
    sub_1003398B0(v54, _s5StateV15DeferredRequestVMa);
    sub_1003398B0(v26, _s5StateV6ActionOMa);
LABEL_19:
    v61 = v78;
    v62 = v73;
    *v73 = v77;
    v62[1] = v61;
    *(v62 + 32) = v55;
    return;
  }

  v38 = &v23[*(sub_10000C9C0(&qword_1005D9BC0, &qword_1004F6F10) + 48)];
  v39 = *(v38 + 1);
  v77 = *v38;
  v78 = v39;
  v40 = v72;
  sub_100339910(v23, v72, _s5StateV7RequestVMa);
  v41 = (v75 + *(_s6LoggerVMa_0(0) + 20));
  v42 = *v41;
  v43 = *(v41 + 1);

  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v44 = v70;
  sub_100339848(v40, v70, _s5StateV7RequestVMa);
  v45 = sub_1004A4A54();
  v46 = sub_1004A6034();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = v26;
    v49 = swift_slowAlloc();
    *&v80[0] = v49;
    *v47 = 68158722;
    *(v47 + 4) = 2;
    *(v47 + 8) = 256;
    *(v47 + 10) = v42;
    *(v47 + 11) = 1040;
    *(v47 + 13) = 8;
    *(v47 + 17) = 1024;
    *(v47 + 19) = v43;
    *(v47 + 23) = 2080;
    v79[0] = *v44;
    sub_1000D40AC();
    v50 = sub_1004A5A84();
    v52 = v51;
    sub_1003398B0(v44, _s5StateV7RequestVMa);
    v53 = sub_10015BA6C(v50, v52, v80);

    *(v47 + 25) = v53;
    _os_log_impl(&_mh_execute_header, v45, v46, "[%.*hhx-%.*X] Enqueuing message request %s.", v47, 0x21u);
    sub_1000197E0(v49);
    v26 = v48;
  }

  else
  {

    sub_1003398B0(v44, _s5StateV7RequestVMa);
  }

  v56 = v76;
  v57 = *(v71 + 24);
  v58 = v57 + 1;
  if (!__OFADD__(v57, 1))
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v60 = *v56;
    if (*(*v56 + 16) < v58 || (isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_100337D24(isUniquelyReferenced_nonNull_native, v58, 0, _s5StateV7RequestVMa, &qword_1005D9BC8, &qword_1004F6F18, _s5StateV7RequestVMa);
      v60 = *v56;
    }

    sub_100337FD8((v60 + 16), v60 + ((*(v68 + 80) + 40) & ~*(v68 + 80)), v40, _s5StateV7RequestVMa, _s5StateV7RequestVMa);
    sub_1003398B0(v26, _s5StateV6ActionOMa);
    sub_1003398B0(v40, _s5StateV7RequestVMa);

    v55 = 0;
    goto LABEL_19;
  }

  __break(1u);

  __break(1u);
}

uint64_t sub_100339848(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1003398B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100339910(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_10033997C(unsigned int *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v60 = a3;
  v9 = _s5StateV15DeferredRequestVMa(0);
  __chkstk_darwin(v9);
  v59 = (v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v11);
  v61 = (v56 - v12);
  v13 = _s5StateV7RequestVMa(0);
  v14 = v13 - 8;
  v15 = *(v13 - 8);
  __chkstk_darwin(v13);
  v17 = v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100339848(a1, v17, _s5StateV7RequestVMa);
  v18 = *(v14 + 28);
  v19 = sub_100335C40(&v17[v18], *(a1 + *(v9 + 20)), *(a1 + *(v9 + 20) + 8));
  sub_100025F40(&v17[v18], &unk_1005D91B0, &unk_1004CF400);
  if (v19)
  {
    v20 = (a2 + *(_s6LoggerVMa_0(0) + 20));
    v21 = *v20;
    v22 = *(v20 + 1);

    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    variable initialization expression of Engine.isProcessingUpdates();
    v23 = v61;
    sub_100339848(a1, v61, _s5StateV15DeferredRequestVMa);

    v24 = sub_1004A4A54();
    v25 = sub_1004A6034();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v58 = a5;
      v27 = v26;
      v28 = swift_slowAlloc();
      v63[0] = v28;
      *v27 = 68158978;
      *(v27 + 4) = 2;
      *(v27 + 8) = 256;
      *(v27 + 10) = v21;
      *(v27 + 11) = 1040;
      *(v27 + 13) = 8;
      *(v27 + 17) = 1024;
      *(v27 + 19) = v22;
      *(v27 + 23) = 2048;
      *(v27 + 25) = *(v19 + 2);

      *(v27 + 33) = 2080;
      v62 = *v23;
      sub_1000D40AC();
      v29 = sub_1004A5A84();
      v31 = v30;
      sub_1003398B0(v23, _s5StateV15DeferredRequestVMa);
      v32 = sub_10015BA6C(v29, v31, v63);

      *(v27 + 35) = v32;
      _os_log_impl(&_mh_execute_header, v24, v25, "[%.*hhx-%.*X] Returning %ld messages for request %s.", v27, 0x2Bu);
      sub_1000197E0(v28);

      a5 = v58;
    }

    else
    {

      swift_bridgeObjectRelease_n();
      sub_1003398B0(v23, _s5StateV15DeferredRequestVMa);
    }

    v46 = *a1;
    v47 = 0uLL;
    v48 = v19;
LABEL_14:
    *a5 = v48;
    *(a5 + 8) = v46;
    *(a5 + 16) = v47;
    *(a5 + 32) = v19 != 0;
    return;
  }

  v61 = v15;
  v56[1] = a4;
  v57 = 0;
  v33 = v9;
  v58 = a5;
  v34 = (a2 + *(_s6LoggerVMa_0(0) + 20));
  v35 = *v34;
  v36 = *(v34 + 1);
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  variable initialization expression of Engine.isProcessingUpdates();
  v37 = v59;
  sub_100339848(a1, v59, _s5StateV15DeferredRequestVMa);
  v38 = sub_1004A4A54();
  v39 = sub_1004A6034();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v63[0] = v41;
    *v40 = 68158722;
    *(v40 + 4) = 2;
    *(v40 + 8) = 256;
    *(v40 + 10) = v35;
    *(v40 + 11) = 1040;
    *(v40 + 13) = 8;
    *(v40 + 17) = 1024;
    *(v40 + 19) = v36;
    *(v40 + 23) = 2080;
    v62 = *v37;
    sub_1000D40AC();
    v42 = sub_1004A5A84();
    v44 = v43;
    sub_1003398B0(v37, _s5StateV15DeferredRequestVMa);
    v45 = sub_10015BA6C(v42, v44, v63);

    *(v40 + 25) = v45;
    _os_log_impl(&_mh_execute_header, v38, v39, "[%.*hhx-%.*X] (Re-)enqueuing (deferred) message request %s due to batch size limits.", v40, 0x21u);
    sub_1000197E0(v41);
  }

  else
  {

    sub_1003398B0(v37, _s5StateV15DeferredRequestVMa);
  }

  v49 = v60;
  v50 = v61;
  v51 = *(*v60 + 24);
  v52 = v51 + 1;
  if (!__OFADD__(v51, 1))
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v54 = *v49;
    if (*(*v49 + 16) < v52 || (isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_100337D24(isUniquelyReferenced_nonNull_native, v52, 0, _s5StateV7RequestVMa, &qword_1005D9BC8, &qword_1004F6F18, _s5StateV7RequestVMa);
      v54 = *v49;
    }

    sub_100337FD8((v54 + 16), v54 + ((*(v50 + 80) + 40) & ~*(v50 + 80)), a1, _s5StateV7RequestVMa, _s5StateV7RequestVMa);
    v55 = a1 + *(v33 + 24);
    v48 = *v55;
    v46 = *(v55 + 1);
    v47 = *(v55 + 1);
    v19 = v57;
    a5 = v58;
    goto LABEL_14;
  }

  __break(1u);

  __break(1u);
}

uint64_t sub_100339FDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005D9BD8, &qword_1004F6F28);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_10033A04C(uint64_t a1)
{
  _s5StateV15DeferredRequestVMa(319);
  if (v1 <= 0x3F)
  {
    sub_10033A0C0(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_10033A0C0(uint64_t a1)
{
  if (!qword_1005D9C68)
  {
    _s5StateV7RequestVMa(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1005D9C68);
    }
  }
}

uint64_t sub_10033A13C(uint64_t a1, uint64_t a2)
{
  v4 = _s5StateV7RequestVMa(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10033A1BC(uint64_t a1, uint64_t a2)
{
  v4 = _s5StateV7RequestVMa(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_10033A22C(uint64_t a1)
{
  result = _s5StateV7RequestVMa(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10033A2C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_10033A35C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

void sub_10033A3E4(uint64_t a1)
{
  sub_100050DB8(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_10033A46C()
{
  result = qword_1005D9DC8;
  if (!qword_1005D9DC8)
  {
    v3 = _s5StateV7RequestVMa(255);
    result = swift_getWitnessTable(byte_1004F6F58, v3, v0, v1);
    atomic_store(result, &qword_1005D9DC8);
  }

  return result;
}

uint64_t sub_10033A4F8()
{
  v1 = sub_1004A5734();
  [v0 willAccessValueForKey:v1];

  v2 = [v0 primitiveAccount];
  if (!v2)
  {
    goto LABEL_6;
  }

  v3 = v2;
  v4 = sub_1004A5764();
  v6 = v5;

  v7 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v7 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {

LABEL_6:
    v4 = 0;
  }

  v8 = sub_1004A5734();
  [v0 didAccessValueForKey:v8];

  return v4;
}

unint64_t sub_10033A5E0()
{
  v1 = sub_1004A5734();
  [v0 willAccessValueForKey:v1];

  v2 = [v0 primitiveUid];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 longLongValue];

    v5 = v4 - 0x100000000 < 0xFFFFFFFF00000001;
    if (v4 - 0x100000000 >= 0xFFFFFFFF00000001)
    {
      v4 = v4;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
    v5 = 1;
  }

  v6 = sub_1004A5734();
  [v0 didAccessValueForKey:v6];

  return v4 | (v5 << 32);
}

unint64_t sub_10033A6CC()
{
  v1 = sub_1004A44E4();
  __chkstk_darwin(v1 - 8);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1004A5734();
  [v0 willAccessValueForKey:v4];

  v5 = [v0 primitiveDataUsage];
  if (v5)
  {
    v6 = v5;
    v7 = sub_1004A4414();
    v9 = v8;

    sub_100014CEC(v7, v9);
    sub_1004A44D4();
    v10 = sub_100378058(v3, v7, v9);
    sub_100014D40(v7, v9);
  }

  else
  {
    v10 = sub_1003510AC(_swiftEmptyArrayStorage);
  }

  v11 = sub_1004A5734();
  [v0 didAccessValueForKey:v11];

  return v10;
}

void *sub_10033A824()
{
  v1 = sub_1004A5734();
  [v0 willAccessValueForKey:v1];

  v2 = [v0 primitiveName];
  if (v2)
  {
    v3 = v2;
    v4 = sub_100359E0C(v3);

    rawValue = MailboxName.init(_:)(v4).bytes._rawValue;
  }

  else
  {
    rawValue = 0;
  }

  v6 = sub_1004A5734();
  [v0 didAccessValueForKey:v6];

  return rawValue;
}

uint64_t sub_10033A8F8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE800000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x716553646F6DLL;
  v6 = 0xEB00000000776F4CLL;
  if (a1 != 4)
  {
    v6 = 0xEA00000000007055;
  }

  if (a1 != 3)
  {
    v5 = 0x7473657265746E69;
    v4 = v6;
  }

  v7 = 0x4C64656863746566;
  v8 = 0xEA0000000000776FLL;
  if (a1 != 1)
  {
    v7 = 0x5564656863746566;
    v8 = 0xE900000000000070;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v7 = 0x79746964696C6176;
  }

  if (a1 <= 2u)
  {
    v9 = v7;
  }

  else
  {
    v9 = v5;
  }

  if (v2 <= 2)
  {
    v10 = v3;
  }

  else
  {
    v10 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v11 = 0xE600000000000000;
      if (v9 != 0x716553646F6DLL)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v11 = 0xEB00000000776F4CLL;
      if (v9 != 0x7473657265746E69)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v11 = 0xEA00000000007055;
      if (v9 != 0x7473657265746E69)
      {
LABEL_34:
        v12 = sub_1004A6D34();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v11 = 0xEA0000000000776FLL;
      if (v9 != 0x4C64656863746566)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v11 = 0xE900000000000070;
      if (v9 != 0x5564656863746566)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v11 = 0xE800000000000000;
    if (v9 != 0x79746964696C6176)
    {
      goto LABEL_34;
    }
  }

  if (v10 != v11)
  {
    goto LABEL_34;
  }

  v12 = 1;
LABEL_35:

  return v12 & 1;
}

Swift::Int sub_10033AAF0(unsigned __int8 a1)
{
  sub_1004A6E94();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return sub_1004A6F14();
}

Swift::Int sub_10033AC04(uint64_t a1, unsigned __int8 a2)
{
  sub_1004A6E94();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return sub_1004A6F14();
}

void sub_10033AD54(unsigned __int8 a1)
{
  v3 = a1;
  v4 = sub_1004A5734();
  [v1 willChangeValueForKey:v4];

  if (v3)
  {
    v5 = [objc_allocWithZone(NSNumber) initWithLongLong:a1];
  }

  else
  {
    v5 = 0;
  }

  [v1 setPrimitiveAttributeChange:v5];

  v6 = sub_1004A5734();
  [v1 didChangeValueForKey:v6];
}

uint64_t sub_10033AE78(uint64_t a1, uint64_t a2, SEL *a3)
{
  v5 = sub_1004A5734();
  [v3 willAccessValueForKey:v5];

  v6 = [v3 *a3];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 integerValue];
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_1004A5734();
  [v3 didAccessValueForKey:v9];

  return v8 & ~(v8 >> 63);
}

unint64_t sub_10033AF38()
{
  v1 = sub_1004A5734();
  [v0 willAccessValueForKey:v1];

  v2 = [v0 primitiveFlags];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 longLongValue];

    v5 = sub_100320048(v4);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_1004A5734();
  [v0 didAccessValueForKey:v6];

  return v5;
}

id sub_10033B048(uint64_t a1, uint64_t a2, SEL *a3, SEL *a4)
{
  v7 = sub_1004A5734();
  [v4 willAccessValueForKey:v7];

  v8 = [v4 *a3];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 *a4];
  }

  else
  {
    v10 = 0;
  }

  v11 = sub_1004A5734();
  [v4 didAccessValueForKey:v11];

  return v10;
}

id sub_10033B114(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(void))
{
  v6 = [objc_allocWithZone(NSEntityDescription) init];
  v7 = sub_1004A5734();

  [v6 setName:v7];

  a4();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v9)
  {
    sub_1004A5764();
    v9 = sub_1004A5734();
  }

  [v6 setManagedObjectClassName:v9];

  if (a3 >> 62)
  {
    sub_10019A8E4(0, &qword_1005D9F00, NSPropertyDescription_ptr);

    sub_1004A69B4();
  }

  else
  {

    sub_1004A6D94();
    sub_10019A8E4(0, &qword_1005D9F00, NSPropertyDescription_ptr);
  }

  sub_10019A8E4(0, &qword_1005D9F00, NSPropertyDescription_ptr);
  isa = sub_1004A5C04().super.isa;

  [v6 setProperties:isa];

  return v6;
}

id sub_10033B308(void *a1)
{
  v2 = [a1 propertiesByName];
  sub_10019A8E4(0, &qword_1005D9F00, NSPropertyDescription_ptr);
  v3 = sub_1004A5514();
  if (!*(v3 + 16) || (v4 = sub_100064090(6580597, 0xE300000000000000), (v5 & 1) == 0))
  {

    __break(1u);
LABEL_9:

    __break(1u);
    goto LABEL_10;
  }

  v6 = v4;

  v7 = *(*(v3 + 56) + 8 * v6);

  v8 = [objc_allocWithZone(NSFetchIndexElementDescription) initWithProperty:v7 collationType:0];

  [v8 setAscending:0];
  sub_10000C9C0(qword_1005D9010, &unk_1004D3CA0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1004F7020;
  v10 = [a1 propertiesByName];
  v11 = sub_1004A5514();
  if (!*(v11 + 16))
  {
    goto LABEL_9;
  }

  v12 = sub_100064090(0x786F626C69616DLL, 0xE700000000000000);
  if ((v13 & 1) == 0)
  {
    goto LABEL_9;
  }

  v14 = v12;

  v15 = *(*(v11 + 56) + 8 * v14);

  v16 = [objc_allocWithZone(NSFetchIndexElementDescription) initWithProperty:v15 collationType:0];

  *(v9 + 32) = v16;
  v17 = [a1 propertiesByName];
  v18 = sub_1004A5514();
  if (*(v18 + 16))
  {
    v19 = sub_100064090(0x65526F546465656ELL, 0xEE006574616E6F64);
    if (v20)
    {
      v21 = v19;

      v22 = *(*(v18 + 56) + 8 * v21);

      v23 = [objc_allocWithZone(NSFetchIndexElementDescription) initWithProperty:v22 collationType:0];

      *(v9 + 40) = v23;
      *(v9 + 48) = v8;
      v24 = objc_allocWithZone(NSFetchIndexDescription);
      v25 = v8;
      v26 = sub_1004A5734();
      sub_10019A8E4(0, &qword_1005D9F08, NSFetchIndexElementDescription_ptr);
      isa = sub_1004A5C04().super.isa;

      v28 = [v24 initWithName:v26 elements:isa];

      return v28;
    }
  }

LABEL_10:

  __break(1u);
  return result;
}

void sub_10033B644(void *a1, uint64_t a2)
{
  v4 = [a1 primitiveIndexableMessageInfo];
  if (v4)
  {
    v5 = v4;
    v6 = OBJC_IVAR____TtCE17IMAPSearchIndexerV9IMAP2MIME20IndexableMessageInfoP33_5FFF53AECAA0B5B4FDC4BFE964265B9C7Wrapper_info;
    swift_beginAccess();
    sub_10034082C(a2, v5 + v6);
    swift_endAccess();
  }

  else
  {
    v5 = [objc_allocWithZone(_s7WrapperCMa(0)) init];
    v7 = OBJC_IVAR____TtCE17IMAPSearchIndexerV9IMAP2MIME20IndexableMessageInfoP33_5FFF53AECAA0B5B4FDC4BFE964265B9C7Wrapper_info;
    swift_beginAccess();
    sub_10034082C(a2, v5 + v7);
    swift_endAccess();
    [a1 setPrimitiveIndexableMessageInfo:v5];
  }
}

void sub_10033B738(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = sub_1004A5734();
  v30.receiver = v2;
  v30.super_class = ObjectType;
  objc_msgSendSuper2(&v30, "didChangeValueForKey:", v7);

  if (a1 == 0x7367616C66 && a2 == 0xE500000000000000 || (sub_1004A6D34() & 1) != 0)
  {
    sub_10000C9C0(&qword_1005CEFD8, &qword_1004D1EC0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1004CEAA0;
    *(v8 + 32) = a1;
    *(v8 + 40) = a2;

    isa = sub_1004A5C04().super.isa;

    v10 = [v2 committedValuesForKeys:isa];

    v11 = sub_1004A5514();
    if (!*(v11 + 16) || (v12 = sub_100064090(a1, a2), (v13 & 1) == 0))
    {

      return;
    }

    sub_1001659C8(*(v11 + 56) + 32 * v12, v29);

    sub_10019A8E4(0, &qword_1005D51B0, NSNumber_ptr);
    if ((swift_dynamicCast() & 1) == 0)
    {
      return;
    }

    v14 = v27;
    v15 = sub_1004A5734();
    v16 = [v3 valueForKey:v15];

    if (v16)
    {
      sub_1004A64E4();
      swift_unknownObjectRelease();
    }

    else
    {
      v27 = 0u;
      v28 = 0u;
    }

    v29[0] = v27;
    v29[1] = v28;
    if (*(&v28 + 1))
    {
      if (swift_dynamicCast())
      {
        v17 = v14;
        v18 = v26;
        v19 = sub_1004A62F4();

        if (v19)
        {

          return;
        }

        goto LABEL_18;
      }
    }

    else
    {
      sub_100025F40(v29, &qword_1005D4768, &unk_1004F5B20);
    }

    v18 = 0;
LABEL_18:
    v20 = sub_1004A5734();
    [v3 willAccessValueForKey:v20];

    v21 = [v3 primitiveAttributeChange];
    if (v21)
    {
      v22 = v21;
      v23 = [v21 longLongValue];

      if (v23 > 0xFF)
      {
        v24 = 1;
      }

      else
      {
        v24 = v23 | 1;
      }
    }

    else
    {
      v24 = 1;
    }

    v25 = sub_1004A5734();
    [v3 didAccessValueForKey:v25];

    sub_10033AD54(v24);
  }
}

BOOL sub_10033BB44(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v5 = *a1;
  v6[0] = v2;
  *(v6 + 13) = *(a1 + 29);
  v3 = a2[1];
  v7 = *a2;
  v8[0] = v3;
  *(v8 + 13) = *(a2 + 29);
  return sub_10033D090(&v5, &v7);
}

void sub_10033BB90(__int128 *a1)
{
  v2 = v1;
  v3 = sub_1004A5734();
  [v1 willChangeValueForKey:v3];

  sub_10033C5CC();
  sub_1003407D8();
  v4 = sub_1004A3FE4();
  v6 = v5;

  isa = sub_1004A4404().super.isa;
  v8 = sub_1004A5734();
  [v2 setPrimitiveValue:isa forKey:v8];

  sub_100014D40(v4, v6);
  v9 = sub_1004A5734();
  [v2 didChangeValueForKey:v9];
}

id sub_10033BCE8()
{
  v1 = objc_allocWithZone(NSFetchRequest);
  v2 = sub_1004A5734();
  v3 = [v1 initWithEntityName:v2];

  sub_10000C9C0(&qword_1005D8FE0, &qword_1004F65D0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1004CEAA0;
  v5 = [v0 objectID];
  *(v4 + 56) = sub_10019A8E4(0, &qword_1005D8FE8, NSManagedObjectID_ptr);
  *(v4 + 32) = v5;
  v6 = sub_1004A5734();
  isa = sub_1004A5C04().super.isa;

  v8 = [objc_opt_self() predicateWithFormat:v6 argumentArray:isa];

  [v3 setPredicate:v8];
  return v3;
}

id sub_10033BE80(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7.receiver = a1;
  v7.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v7, "initWithEntity:insertIntoManagedObjectContext:", a3, a4);
}

uint64_t _s7WrapperCMa(uint64_t a1)
{
  result = qword_1005D9EA8;
  if (!qword_1005D9EA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10033C01C(uint64_t a1)
{
  sub_10033C0AC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10033C0AC(uint64_t a1)
{
  if (!qword_1005D9EB8)
  {
    type metadata accessor for IndexableMessageInfo(255);
    v1 = sub_1004A6374();
    if (!v2)
    {
      atomic_store(v1, &qword_1005D9EB8);
    }
  }
}

id sub_10033C1A8(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = _s13ManagedObjectCMa();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_10033C238()
{
  v1 = v0;
  v2 = sub_1004A3EF4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1004A3F04();
  v7 = *(v6 - 8);
  *&v8 = __chkstk_darwin(v6).n128_u64[0];
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [v0 managedObjectContext];
  if (!v11)
  {
    v25 = 0u;
    v26 = 0u;
LABEL_9:
    sub_100025F40(&v25, &qword_1005D4768, &unk_1004F5B20);
    goto LABEL_10;
  }

  v22 = v2;
  v12 = v0;
  v13 = v11;
  v14 = [v11 userInfo];

  *&v23 = 0x6F6365446E6F736ALL;
  *(&v23 + 1) = 0xEB00000000726564;
  v15 = [v14 __swift_objectForKeyedSubscript:sub_1004A6DF4()];
  swift_unknownObjectRelease();

  if (v15)
  {
    sub_1004A64E4();
    swift_unknownObjectRelease();
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
  }

  v25 = v23;
  v26 = v24;
  v1 = v12;
  v2 = v22;
  if (!*(&v24 + 1))
  {
    goto LABEL_9;
  }

  sub_1004A3F54();
  if (swift_dynamicCast())
  {
    return v23;
  }

LABEL_10:
  sub_1004A3F54();
  swift_allocObject();
  v16 = sub_1004A3F44();
  (*(v7 + 104))(v10, enum case for JSONDecoder.DateDecodingStrategy.millisecondsSince1970(_:), v6);
  sub_1004A3F24();
  (*(v3 + 104))(v5, enum case for JSONDecoder.DataDecodingStrategy.base64(_:), v2);
  sub_1004A3F14();
  v17 = [v1 managedObjectContext];
  if (v17)
  {
    v18 = v17;
    v19 = [v17 userInfo];

    *&v25 = 0x6F6365446E6F736ALL;
    *(&v25 + 1) = 0xEB00000000726564;

    [v19 __swift_setObject:v16 forKeyedSubscript:sub_1004A6DF4()];

    swift_unknownObjectRelease();
  }

  return v16;
}

uint64_t sub_10033C5CC()
{
  v1 = v0;
  v2 = sub_1004A3FA4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1004A3FB4();
  v7 = *(v6 - 8);
  *&v8 = __chkstk_darwin(v6).n128_u64[0];
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [v0 managedObjectContext];
  if (!v11)
  {
    v25 = 0u;
    v26 = 0u;
LABEL_9:
    sub_100025F40(&v25, &qword_1005D4768, &unk_1004F5B20);
    goto LABEL_10;
  }

  v22 = v2;
  v12 = v0;
  v13 = v11;
  v14 = [v11 userInfo];

  *&v23 = 0x6F636E456E6F736ALL;
  *(&v23 + 1) = 0xEB00000000726564;
  v15 = [v14 __swift_objectForKeyedSubscript:sub_1004A6DF4()];
  swift_unknownObjectRelease();

  if (v15)
  {
    sub_1004A64E4();
    swift_unknownObjectRelease();
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
  }

  v25 = v23;
  v26 = v24;
  v1 = v12;
  v2 = v22;
  if (!*(&v24 + 1))
  {
    goto LABEL_9;
  }

  sub_1004A4004();
  if (swift_dynamicCast())
  {
    return v23;
  }

LABEL_10:
  sub_1004A4004();
  swift_allocObject();
  v16 = sub_1004A3FF4();
  (*(v7 + 104))(v10, enum case for JSONEncoder.DateEncodingStrategy.millisecondsSince1970(_:), v6);
  sub_1004A3FD4();
  (*(v3 + 104))(v5, enum case for JSONEncoder.DataEncodingStrategy.base64(_:), v2);
  sub_1004A3FC4();
  v17 = [v1 managedObjectContext];
  if (v17)
  {
    v18 = v17;
    v19 = [v17 userInfo];

    *&v25 = 0x6F636E456E6F736ALL;
    *(&v25 + 1) = 0xEB00000000726564;

    [v19 __swift_setObject:v16 forKeyedSubscript:sub_1004A6DF4()];

    swift_unknownObjectRelease();
  }

  return v16;
}

unint64_t sub_10033C960(char a1, char a2)
{
  sub_10000C9C0(&qword_1005D9EC0, &qword_1004F70D8);
  result = sub_1004A6B54();
  if (!v2)
  {
    v4 = result;
    v5 = sub_1004A6B54();
    if (((v4 | v5) & 0x100000000) != 0)
    {
      return 0;
    }

    else if (v5 >= v4)
    {
      return v4 | (v5 << 32);
    }

    else
    {
      sub_100340784();
      swift_allocError();
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_10033CA34(void *a1)
{
  v3 = v1;
  v5 = sub_10000C9C0(&qword_1005D9ED8, &unk_1004F70E0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13[-v7];
  sub_10002587C(a1, a1[3]);
  sub_100340730();
  sub_1004A6FA4();
  v9 = v3[4];
  v13[31] = 0;
  v13[28] = v9;
  sub_1004A6C24();
  if (!v2)
  {
    v10 = v3[16];
    v13[27] = 1;
    v13[24] = v10;
    sub_1004A6C24();
    v13[23] = 2;
    v13[20] = v10;
    sub_1004A6C24();
    v13[19] = 3;
    sub_1004A6C34();
    v11 = v3[44];
    v13[18] = 4;
    v13[16] = v11;
    sub_1004A6C24();
    v13[15] = 5;
    v13[12] = v11;
    sub_1004A6C24();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10033CCCC(uint64_t a1)
{
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
}

unint64_t sub_10033CDD0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100340AA0(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_10033CE00(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x79746964696C6176;
  v5 = 0xE600000000000000;
  v6 = 0x716553646F6DLL;
  v7 = 0xEB00000000776F4CLL;
  if (v2 != 4)
  {
    v7 = 0xEA00000000007055;
  }

  if (v2 != 3)
  {
    v6 = 0x7473657265746E69;
    v5 = v7;
  }

  v8 = 0xEA0000000000776FLL;
  v9 = 0x4C64656863746566;
  if (v2 != 1)
  {
    v9 = 0x5564656863746566;
    v8 = 0xE900000000000070;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = v8;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

uint64_t sub_10033CECC()
{
  v1 = *v0;
  v2 = 0x79746964696C6176;
  v3 = 0x716553646F6DLL;
  if (v1 != 3)
  {
    v3 = 0x7473657265746E69;
  }

  v4 = 0x4C64656863746566;
  if (v1 != 1)
  {
    v4 = 0x5564656863746566;
  }

  if (*v0)
  {
    v2 = v4;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10033CF94@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100340AA0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10033CFBC(uint64_t a1)
{
  v2 = sub_100340730();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10033CFF8(uint64_t a1)
{
  v2 = sub_100340730();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_10033D034@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_1003404A8(a2, &v6);
  if (!v2)
  {
    v5 = v7[0];
    *a1 = v6;
    a1[1] = v5;
    result = *(v7 + 13);
    *(a1 + 29) = *(v7 + 13);
  }

  return result;
}

BOOL sub_10033D090(_BOOL8 result, uint64_t a2)
{
  v2 = *(a2 + 4);
  if (*(result + 4))
  {
    if (!*(a2 + 4))
    {
      return 0;
    }
  }

  else
  {
    if (*result != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  v3 = *(a2 + 16);
  if (*(result + 16))
  {
    if (!*(a2 + 16))
    {
      return 0;
    }
  }

  else
  {
    if (*(a2 + 8) != *(result + 8))
    {
      v3 = 1;
    }

    if (v3)
    {
      return 0;
    }
  }

  if (*(result + 32))
  {
    if ((*(a2 + 32) & 1) == 0)
    {
      return 0;
    }

LABEL_19:
    v6 = *(a2 + 44);
    if ((*(result + 44) & 1) == 0)
    {
      if (*(a2 + 36) != *(result + 36))
      {
        v6 = 1;
      }

      return (v6 & 1) == 0;
    }

    return (*(a2 + 44) & 1) != 0;
  }

  if (*(a2 + 32))
  {
    return 0;
  }

  v4 = *(result + 24);
  v5 = *(a2 + 24);
  if (((v5 | v4) & 0x8000000000000000) == 0)
  {
    if (v5 != v4)
    {
      return 0;
    }

    goto LABEL_19;
  }

  __break(1u);
  return result;
}

id sub_10033D148()
{
  v0 = sub_1004A61E4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v298 = &v282 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v297 = &v282 - v4;
  __chkstk_darwin(v5);
  v296 = &v282 - v6;
  __chkstk_darwin(v7);
  v295 = &v282 - v8;
  __chkstk_darwin(v9);
  v294 = &v282 - v10;
  __chkstk_darwin(v11);
  v293 = &v282 - v12;
  __chkstk_darwin(v13);
  *&v292 = &v282 - v14;
  __chkstk_darwin(v15);
  v291 = &v282 - v16;
  __chkstk_darwin(v17);
  v290 = &v282 - v18;
  __chkstk_darwin(v19);
  v289 = &v282 - v20;
  __chkstk_darwin(v21);
  v288 = &v282 - v22;
  __chkstk_darwin(v23);
  v287 = &v282 - v24;
  __chkstk_darwin(v25);
  v286 = &v282 - v26;
  __chkstk_darwin(v27);
  v285 = &v282 - v28;
  __chkstk_darwin(v29);
  v283 = &v282 - v30;
  __chkstk_darwin(v31);
  v33 = &v282 - v32;
  __chkstk_darwin(v34);
  v36 = &v282 - v35;
  v284 = [objc_allocWithZone(NSManagedObjectModel) init];
  v299 = sub_10000C9C0(qword_1005D9010, &unk_1004D3CA0);
  *&v301 = swift_allocObject();
  *(v301 + 16) = xmmword_1004F7030;
  sub_1004A61C4();
  v307 = 0u;
  v308 = 0u;
  v37 = [objc_allocWithZone(NSAttributeDescription) init];
  v38 = sub_1004A5734();
  [v37 setName:v38];

  [v37 setOptional:1];
  v39 = *(v1 + 16);
  v304 = v1 + 16;
  *&v303 = v39;
  v39(v33, v36, v0);
  sub_1004A61F4();
  sub_10034089C(&v307, v305);
  v40 = v306;
  if (v306)
  {
    v41 = sub_10002587C(v305, v306);
    v42 = *(v40 - 8);
    v43 = __chkstk_darwin(v41);
    v45 = v0;
    v46 = v1;
    v47 = &v282 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v42 + 16))(v47, v43);
    v48 = sub_1004A6D14();
    v49 = v47;
    v1 = v46;
    v0 = v45;
    (*(v42 + 8))(v49, v40);
    sub_1000197E0(v305);
  }

  else
  {
    v48 = 0;
  }

  [v37 setDefaultValue:v48];
  swift_unknownObjectRelease();
  [v37 setAllowsExternalBinaryDataStorage:0];

  [v37 setTransient:0];
  sub_100025F40(&v307, &qword_1005D4768, &unk_1004F5B20);
  v302 = *(v1 + 8);
  v302(v36, v0);
  *(v301 + 32) = v37;
  v50 = v283;
  sub_1004A61C4();
  *(&v308 + 1) = &type metadata for Int;
  *&v307 = 0;
  v51 = [objc_allocWithZone(NSAttributeDescription) init];
  v52 = sub_1004A5734();
  [v51 setName:v52];

  [v51 setOptional:0];
  (v303)(v33, v50, v0);
  sub_1004A61F4();
  sub_10034089C(&v307, v305);
  v53 = v306;
  v300 = (v1 + 8);
  if (v306)
  {
    v54 = sub_10002587C(v305, v306);
    v55 = *(v53 - 8);
    v56 = __chkstk_darwin(v54);
    v58 = &v282 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v55 + 16))(v58, v56);
    v59 = sub_1004A6D14();
    (*(v55 + 8))(v58, v53);
    sub_1000197E0(v305);
  }

  else
  {
    v59 = 0;
  }

  [v51 setDefaultValue:v59];
  swift_unknownObjectRelease();
  [v51 setAllowsExternalBinaryDataStorage:0];

  [v51 setTransient:0];
  v302(v50, v0);
  sub_100025F40(&v307, &qword_1005D4768, &unk_1004F5B20);
  *(v301 + 40) = v51;
  v60 = v285;
  sub_1004A61B4();
  *(&v308 + 1) = &type metadata for Bool;
  LOBYTE(v307) = 0;
  v61 = [objc_allocWithZone(NSAttributeDescription) init];
  v62 = sub_1004A5734();
  [v61 setName:v62];

  [v61 setOptional:0];
  (v303)(v33, v60, v0);
  sub_1004A61F4();
  sub_10034089C(&v307, v305);
  v63 = v306;
  if (v306)
  {
    v64 = sub_10002587C(v305, v306);
    v65 = *(v63 - 8);
    v66 = __chkstk_darwin(v64);
    v68 = &v282 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v65 + 16))(v68, v66);
    v69 = sub_1004A6D14();
    (*(v65 + 8))(v68, v63);
    sub_1000197E0(v305);
  }

  else
  {
    v69 = 0;
  }

  [v61 setDefaultValue:v69];
  swift_unknownObjectRelease();
  [v61 setAllowsExternalBinaryDataStorage:0];

  [v61 setTransient:0];
  v302(v285, v0);
  sub_100025F40(&v307, &qword_1005D4768, &unk_1004F5B20);
  *(v301 + 48) = v61;
  v70 = v286;
  sub_1004A61C4();
  v307 = 0u;
  v308 = 0u;
  v71 = [objc_allocWithZone(NSAttributeDescription) init];
  v72 = sub_1004A5734();
  [v71 setName:v72];

  [v71 setOptional:1];
  (v303)(v33, v70, v0);
  sub_1004A61F4();
  sub_10034089C(&v307, v305);
  v73 = v306;
  if (v306)
  {
    v74 = sub_10002587C(v305, v306);
    v75 = *(v73 - 8);
    v76 = __chkstk_darwin(v74);
    v78 = &v282 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v75 + 16))(v78, v76);
    v79 = sub_1004A6D14();
    (*(v75 + 8))(v78, v73);
    sub_1000197E0(v305);
  }

  else
  {
    v79 = 0;
  }

  [v71 setDefaultValue:v79];
  swift_unknownObjectRelease();
  [v71 setAllowsExternalBinaryDataStorage:0];

  [v71 setTransient:0];
  sub_100025F40(&v307, &qword_1005D4768, &unk_1004F5B20);
  v302(v286, v0);
  *(v301 + 56) = v71;
  v80 = v287;
  sub_1004A61C4();
  v307 = 0u;
  v308 = 0u;
  v81 = [objc_allocWithZone(NSAttributeDescription) init];
  v82 = sub_1004A5734();
  [v81 setName:v82];

  [v81 setOptional:1];
  (v303)(v33, v80, v0);
  sub_1004A61F4();
  sub_10034089C(&v307, v305);
  v83 = v306;
  if (v306)
  {
    v84 = sub_10002587C(v305, v306);
    v85 = *(v83 - 8);
    v86 = __chkstk_darwin(v84);
    v88 = &v282 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v85 + 16))(v88, v86);
    v89 = sub_1004A6D14();
    (*(v85 + 8))(v88, v83);
    sub_1000197E0(v305);
  }

  else
  {
    v89 = 0;
  }

  [v81 setDefaultValue:v89];
  swift_unknownObjectRelease();
  [v81 setAllowsExternalBinaryDataStorage:0];

  [v81 setTransient:0];
  sub_100025F40(&v307, &qword_1005D4768, &unk_1004F5B20);
  v302(v287, v0);
  *(v301 + 64) = v81;
  v90 = v288;
  sub_1004A61C4();
  v307 = 0u;
  v308 = 0u;
  v91 = [objc_allocWithZone(NSAttributeDescription) init];
  v92 = sub_1004A5734();
  [v91 setName:v92];

  [v91 setOptional:1];
  (v303)(v33, v90, v0);
  sub_1004A61F4();
  sub_10034089C(&v307, v305);
  v93 = v306;
  if (v306)
  {
    v94 = sub_10002587C(v305, v306);
    v95 = *(v93 - 8);
    v96 = __chkstk_darwin(v94);
    v98 = &v282 - ((v97 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v95 + 16))(v98, v96);
    v99 = sub_1004A6D14();
    (*(v95 + 8))(v98, v93);
    sub_1000197E0(v305);
  }

  else
  {
    v99 = 0;
  }

  [v91 setDefaultValue:v99];
  swift_unknownObjectRelease();
  [v91 setAllowsExternalBinaryDataStorage:0];

  [v91 setTransient:0];
  sub_100025F40(&v307, &qword_1005D4768, &unk_1004F5B20);
  v302(v288, v0);
  *(v301 + 72) = v91;
  v100 = v289;
  sub_1004A61C4();
  v307 = 0u;
  v308 = 0u;
  v101 = [objc_allocWithZone(NSAttributeDescription) init];
  v102 = sub_1004A5734();
  [v101 setName:v102];

  [v101 setOptional:1];
  (v303)(v33, v100, v0);
  sub_1004A61F4();
  sub_10034089C(&v307, v305);
  v103 = v306;
  if (v306)
  {
    v104 = sub_10002587C(v305, v306);
    v105 = *(v103 - 8);
    v106 = __chkstk_darwin(v104);
    v108 = &v282 - ((v107 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v105 + 16))(v108, v106);
    v109 = sub_1004A6D14();
    (*(v105 + 8))(v108, v103);
    sub_1000197E0(v305);
  }

  else
  {
    v109 = 0;
  }

  [v101 setDefaultValue:v109];
  swift_unknownObjectRelease();
  [v101 setAllowsExternalBinaryDataStorage:0];

  [v101 setTransient:0];
  sub_100025F40(&v307, &qword_1005D4768, &unk_1004F5B20);
  v302(v289, v0);
  *(v301 + 80) = v101;
  v110 = v290;
  sub_1004A6194();
  v307 = 0u;
  v308 = 0u;
  v111 = [objc_allocWithZone(NSAttributeDescription) init];
  v112 = sub_1004A5734();
  [v111 setName:v112];

  [v111 setOptional:1];
  (v303)(v33, v110, v0);
  sub_1004A61F4();
  sub_10034089C(&v307, v305);
  v113 = v306;
  if (v306)
  {
    v114 = sub_10002587C(v305, v306);
    v115 = *(v113 - 8);
    v116 = __chkstk_darwin(v114);
    v118 = &v282 - ((v117 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v115 + 16))(v118, v116);
    v119 = sub_1004A6D14();
    (*(v115 + 8))(v118, v113);
    sub_1000197E0(v305);
  }

  else
  {
    v119 = 0;
  }

  [v111 setDefaultValue:v119];
  swift_unknownObjectRelease();
  [v111 setAllowsExternalBinaryDataStorage:0];

  [v111 setTransient:0];
  sub_100025F40(&v307, &qword_1005D4768, &unk_1004F5B20);
  v302(v290, v0);
  *(v301 + 88) = v111;
  v120 = v291;
  sub_1004A61D4();
  v307 = 0u;
  v308 = 0u;
  v121 = [objc_allocWithZone(NSAttributeDescription) init];
  v122 = sub_1004A5734();
  [v121 setName:v122];

  [v121 setOptional:1];
  (v303)(v33, v120, v0);
  sub_1004A61F4();
  sub_10034089C(&v307, v305);
  v123 = v306;
  if (v306)
  {
    v124 = sub_10002587C(v305, v306);
    v125 = *(v123 - 8);
    v126 = __chkstk_darwin(v124);
    v128 = &v282 - ((v127 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v125 + 16))(v128, v126);
    v129 = sub_1004A6D14();
    (*(v125 + 8))(v128, v123);
    sub_1000197E0(v305);
  }

  else
  {
    v129 = 0;
  }

  [v121 setDefaultValue:v129];
  swift_unknownObjectRelease();
  [v121 setAllowsExternalBinaryDataStorage:0];

  [v121 setTransient:1];
  sub_100025F40(&v307, &qword_1005D4768, &unk_1004F5B20);
  v302(v291, v0);
  *(v301 + 96) = v121;
  v130 = v292;
  sub_1004A61C4();
  v307 = 0u;
  v308 = 0u;
  v131 = [objc_allocWithZone(NSAttributeDescription) init];
  v132 = sub_1004A5734();
  [v131 setName:v132];

  [v131 setOptional:1];
  (v303)(v33, v130, v0);
  sub_1004A61F4();
  sub_10034089C(&v307, v305);
  v133 = v306;
  if (v306)
  {
    v134 = sub_10002587C(v305, v306);
    v135 = *(v133 - 8);
    v136 = __chkstk_darwin(v134);
    v138 = &v282 - ((v137 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v135 + 16))(v138, v136);
    v139 = sub_1004A6D14();
    (*(v135 + 8))(v138, v133);
    sub_1000197E0(v305);
  }

  else
  {
    v139 = 0;
  }

  [v131 setDefaultValue:v139];
  swift_unknownObjectRelease();
  [v131 setAllowsExternalBinaryDataStorage:0];

  [v131 setTransient:0];
  sub_100025F40(&v307, &qword_1005D4768, &unk_1004F5B20);
  v302(v292, v0);
  v140 = v301;
  *(v301 + 104) = v131;
  v141 = sub_10033B114(0x6567617373656DLL, 0xE700000000000000, v140, _s7MessageCMa);
  sub_10000C9C0(&qword_1005D9EF0, &qword_1004F70F0);
  v142 = swift_allocObject();
  v301 = xmmword_1004CEAA0;
  *(v142 + 16) = xmmword_1004CEAA0;
  sub_10000C9C0(&qword_1005D8FE0, &qword_1004F65D0);
  v143 = swift_allocObject();
  *(v143 + 16) = v301;
  *(v143 + 56) = &type metadata for String;
  *(v143 + 32) = 0x6867696C746F7073;
  *(v143 + 40) = 0xEB00000000444974;
  *(v142 + 32) = v143;
  sub_10000C9C0(&qword_1005D9EF8, &qword_1004F70F8);
  isa = sub_1004A5C04().super.isa;

  [v141 setUniquenessConstraints:isa];

  v145 = swift_allocObject();
  v292 = xmmword_1004F7020;
  *(v145 + 16) = xmmword_1004F7020;
  v146 = v293;
  sub_1004A61A4();
  v307 = 0u;
  v308 = 0u;
  v147 = [objc_allocWithZone(NSAttributeDescription) init];
  v148 = sub_1004A5734();
  [v147 setName:v148];

  [v147 setOptional:1];
  (v303)(v33, v146, v0);
  sub_1004A61F4();
  sub_10034089C(&v307, v305);
  v149 = v306;
  if (v306)
  {
    v150 = sub_10002587C(v305, v306);
    v151 = *(v149 - 8);
    v152 = __chkstk_darwin(v150);
    v154 = &v282 - ((v153 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v151 + 16))(v154, v152);
    v155 = sub_1004A6D14();
    (*(v151 + 8))(v154, v149);
    sub_1000197E0(v305);
  }

  else
  {
    v155 = 0;
  }

  [v147 setDefaultValue:v155];
  swift_unknownObjectRelease();
  [v147 setAllowsExternalBinaryDataStorage:0];

  [v147 setTransient:0];
  sub_100025F40(&v307, &qword_1005D4768, &unk_1004F5B20);
  v302(v293, v0);
  *(v145 + 32) = v147;
  v156 = v294;
  sub_1004A6184();
  v307 = 0u;
  v308 = 0u;
  v157 = [objc_allocWithZone(NSAttributeDescription) init];
  v158 = sub_1004A5734();
  [v157 setName:v158];

  [v157 setOptional:1];
  (v303)(v33, v156, v0);
  sub_1004A61F4();
  sub_10034089C(&v307, v305);
  v159 = v306;
  if (v306)
  {
    v160 = sub_10002587C(v305, v306);
    v161 = *(v159 - 8);
    v162 = __chkstk_darwin(v160);
    v164 = &v282 - ((v163 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v161 + 16))(v164, v162);
    v165 = sub_1004A6D14();
    (*(v161 + 8))(v164, v159);
    sub_1000197E0(v305);
  }

  else
  {
    v165 = 0;
  }

  [v157 setDefaultValue:v165];
  swift_unknownObjectRelease();
  [v157 setAllowsExternalBinaryDataStorage:0];

  [v157 setTransient:0];
  sub_100025F40(&v307, &qword_1005D4768, &unk_1004F5B20);
  v302(v294, v0);
  *(v145 + 40) = v157;
  v166 = v295;
  sub_1004A6184();
  v307 = 0u;
  v308 = 0u;
  v167 = [objc_allocWithZone(NSAttributeDescription) init];
  v168 = sub_1004A5734();
  [v167 setName:v168];

  [v167 setOptional:1];
  (v303)(v33, v166, v0);
  sub_1004A61F4();
  sub_10034089C(&v307, v305);
  v169 = v306;
  if (v306)
  {
    v170 = sub_10002587C(v305, v306);
    v171 = *(v169 - 8);
    v172 = __chkstk_darwin(v170);
    v174 = &v282 - ((v173 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v171 + 16))(v174, v172);
    v175 = sub_1004A6D14();
    (*(v171 + 8))(v174, v169);
    sub_1000197E0(v305);
  }

  else
  {
    v175 = 0;
  }

  [v167 setDefaultValue:v175];
  swift_unknownObjectRelease();
  [v167 setAllowsExternalBinaryDataStorage:0];

  [v167 setTransient:0];
  sub_100025F40(&v307, &qword_1005D4768, &unk_1004F5B20);
  v302(v295, v0);
  *(v145 + 48) = v167;
  *&v301 = sub_10033B114(0x786F626C69616DLL, 0xE700000000000000, v145, _s7MailboxCMa);
  v176 = swift_allocObject();
  *(v176 + 16) = v292;
  v177 = v296;
  sub_1004A61A4();
  v307 = 0u;
  v308 = 0u;
  v178 = [objc_allocWithZone(NSAttributeDescription) init];
  v179 = sub_1004A5734();
  [v178 setName:v179];

  [v178 setOptional:1];
  (v303)(v33, v177, v0);
  sub_1004A61F4();
  sub_10034089C(&v307, v305);
  v180 = v306;
  if (v306)
  {
    v181 = sub_10002587C(v305, v306);
    v182 = *(v180 - 8);
    v183 = __chkstk_darwin(v181);
    v185 = &v282 - ((v184 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v182 + 16))(v185, v183);
    v186 = sub_1004A6D14();
    (*(v182 + 8))(v185, v180);
    sub_1000197E0(v305);
  }

  else
  {
    v186 = 0;
  }

  [v178 setDefaultValue:v186];
  swift_unknownObjectRelease();
  [v178 setAllowsExternalBinaryDataStorage:0];

  [v178 setTransient:0];
  sub_100025F40(&v307, &qword_1005D4768, &unk_1004F5B20);
  v302(v296, v0);
  *(v176 + 32) = v178;
  v187 = v297;
  sub_1004A6184();
  v307 = 0u;
  v308 = 0u;
  v188 = [objc_allocWithZone(NSAttributeDescription) init];
  v189 = sub_1004A5734();
  [v188 setName:v189];

  [v188 setOptional:1];
  (v303)(v33, v187, v0);
  sub_1004A61F4();
  sub_10034089C(&v307, v305);
  v190 = v306;
  if (v306)
  {
    v191 = sub_10002587C(v305, v306);
    v192 = *(v190 - 8);
    v193 = __chkstk_darwin(v191);
    v195 = &v282 - ((v194 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v192 + 16))(v195, v193);
    v196 = sub_1004A6D14();
    (*(v192 + 8))(v195, v190);
    sub_1000197E0(v305);
  }

  else
  {
    v196 = 0;
  }

  v197 = v284;
  [v188 setDefaultValue:v196];
  swift_unknownObjectRelease();
  [v188 setAllowsExternalBinaryDataStorage:0];

  [v188 setTransient:0];
  sub_100025F40(&v307, &qword_1005D4768, &unk_1004F5B20);
  v302(v297, v0);
  *(v176 + 40) = v188;
  v198 = v298;
  sub_1004A61C4();
  *(&v308 + 1) = &type metadata for Int;
  *&v307 = 0;
  v199 = [objc_allocWithZone(NSAttributeDescription) init];
  v200 = sub_1004A5734();
  [v199 setName:v200];

  [v199 setOptional:0];
  (v303)(v33, v198, v0);
  sub_1004A61F4();
  sub_10034089C(&v307, v305);
  v201 = v306;
  if (v306)
  {
    v202 = sub_10002587C(v305, v306);
    v203 = *(v201 - 8);
    v204 = __chkstk_darwin(v202);
    v206 = &v282 - ((v205 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v203 + 16))(v206, v204);
    v207 = sub_1004A6D14();
    (*(v203 + 8))(v206, v201);
    sub_1000197E0(v305);
  }

  else
  {
    v207 = 0;
  }

  [v199 setDefaultValue:v207];
  swift_unknownObjectRelease();
  [v199 setAllowsExternalBinaryDataStorage:0];

  [v199 setTransient:0];
  v302(v298, v0);
  sub_100025F40(&v307, &qword_1005D4768, &unk_1004F5B20);
  *(v176 + 48) = v199;
  v208 = sub_10033B114(0x49746E756F636361, 0xEB000000006F666ELL, v176, _s11AccountInfoCMa);
  v209 = [objc_allocWithZone(NSRelationshipDescription) init];
  v210 = sub_1004A5734();
  [v209 setName:v210];

  v211 = v301;
  [v209 setDestinationEntity:v301];
  [v209 setDeleteRule:0];
  [v209 setMinCount:1];
  [v209 setMaxCount:1];
  v212 = [v141 properties];
  v213 = sub_10019A8E4(0, &qword_1005D9F00, NSPropertyDescription_ptr);
  v214 = sub_1004A5C14();

  *&v307 = v214;
  sub_1004A5BF4();
  if (*((v307 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v307 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1004A5C44();
  }

  sub_1004A5C84();
  v304 = v213;
  v215 = sub_1004A5C04().super.isa;

  [v141 setProperties:v215];

  v216 = v141;
  v217 = [v197 entities];
  sub_10019A8E4(0, &qword_1005D9EE8, NSEntityDescription_ptr);
  v218 = sub_1004A5C14();

  *&v307 = v218;
  sub_1004A5BF4();
  if (*((v307 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v307 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1004A5C44();
  }

  sub_1004A5C84();
  v219 = sub_1004A5C04().super.isa;

  [v197 setEntities:v219];

  v220 = v211;
  v221 = [v197 entities];
  v222 = sub_1004A5C14();

  *&v307 = v222;
  sub_1004A5BF4();
  if (*((v307 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v307 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1004A5C44();
  }

  v302 = v220;
  sub_1004A5C84();
  v223 = sub_1004A5C04().super.isa;

  [v197 setEntities:v223];

  v224 = v208;
  v225 = [v197 entities];
  v226 = sub_1004A5C14();

  *&v307 = v226;
  sub_1004A5BF4();
  if (*((v307 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v307 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1004A5C44();
  }

  *&v301 = v224;
  sub_1004A5C84();
  v227 = sub_1004A5C04().super.isa;

  [v197 setEntities:v227];

  v228 = sub_10033B308(v216);
  v229 = swift_allocObject();
  *(v229 + 16) = xmmword_1004E9040;
  v230 = swift_allocObject();
  *(v230 + 16) = xmmword_1004D3930;
  v231 = [v216 propertiesByName];
  v232 = sub_1004A5514();
  if (!*(v232 + 16) || (v233 = sub_100064090(0x6867696C746F7073, 0xEB00000000444974), (v234 & 1) == 0))
  {

    __break(1u);
LABEL_69:

    __break(1u);
LABEL_70:

    __break(1u);
LABEL_71:

    __break(1u);
    goto LABEL_72;
  }

  v235 = v233;

  v236 = *(*(v232 + 56) + 8 * v235);

  v237 = [objc_allocWithZone(NSFetchIndexElementDescription) initWithProperty:v236 collationType:0];

  *(v230 + 32) = v237;
  v238 = objc_allocWithZone(NSFetchIndexDescription);
  v239 = sub_1004A5734();
  sub_10019A8E4(0, &qword_1005D9F08, NSFetchIndexElementDescription_ptr);
  v240 = sub_1004A5C04().super.isa;

  v241 = [v238 initWithName:v239 elements:v240];

  *(v229 + 32) = v241;
  *(v229 + 40) = v228;
  v242 = swift_allocObject();
  v303 = xmmword_1004F6340;
  *(v242 + 16) = xmmword_1004F6340;
  v300 = v228;
  v243 = [v216 propertiesByName];
  v244 = sub_1004A5514();
  if (!*(v244 + 16))
  {
    goto LABEL_69;
  }

  v245 = sub_100064090(0x6E65477865646E69, 0xEF6E6F6974617265);
  if ((v246 & 1) == 0)
  {
    goto LABEL_69;
  }

  v247 = v245;

  v248 = *(*(v244 + 56) + 8 * v247);

  v249 = [objc_allocWithZone(NSFetchIndexElementDescription) initWithProperty:v248 collationType:0];

  *(v242 + 32) = v249;
  v250 = [v216 propertiesByName];
  v251 = sub_1004A5514();
  if (!*(v251 + 16))
  {
    goto LABEL_70;
  }

  v252 = sub_100064090(0x7475626972747461, 0xEF65676E61684365);
  if ((v253 & 1) == 0)
  {
    goto LABEL_70;
  }

  v254 = v252;

  v255 = *(*(v251 + 56) + 8 * v254);

  v256 = [objc_allocWithZone(NSFetchIndexElementDescription) initWithProperty:v255 collationType:0];

  *(v242 + 40) = v256;
  v257 = objc_allocWithZone(NSFetchIndexDescription);
  v258 = sub_1004A5734();
  v259 = sub_1004A5C04().super.isa;

  v260 = [v257 initWithName:v258 elements:v259];

  *(v229 + 48) = v260;
  v261 = swift_allocObject();
  *(v261 + 16) = v303;
  v262 = [v216 propertiesByName];
  v263 = sub_1004A5514();
  if (!*(v263 + 16))
  {
    goto LABEL_71;
  }

  v264 = sub_100064090(0x6E65477865646E69, 0xEF6E6F6974617265);
  if ((v265 & 1) == 0)
  {
    goto LABEL_71;
  }

  v266 = v264;

  v267 = *(*(v263 + 56) + 8 * v266);

  v268 = [objc_allocWithZone(NSFetchIndexElementDescription) initWithProperty:v267 collationType:0];

  *(v261 + 32) = v268;
  v269 = [v216 propertiesByName];
  v270 = sub_1004A5514();
  if (*(v270 + 16))
  {
    v271 = sub_100064090(0x65526F546465656ELL, 0xEE006574616E6F64);
    if (v272)
    {
      v273 = v271;

      v274 = *(*(v270 + 56) + 8 * v273);

      v275 = [objc_allocWithZone(NSFetchIndexElementDescription) initWithProperty:v274 collationType:0];

      *(v261 + 40) = v275;
      v276 = objc_allocWithZone(NSFetchIndexDescription);
      v277 = sub_1004A5734();
      v278 = sub_1004A5C04().super.isa;

      v279 = [v276 initWithName:v277 elements:v278];

      *(v229 + 56) = v279;
      sub_10019A8E4(0, &qword_1005D9F10, NSFetchIndexDescription_ptr);
      v280 = sub_1004A5C04().super.isa;

      [v216 setIndexes:v280];

      return v284;
    }
  }

LABEL_72:

  __break(1u);
  return result;
}

id sub_100340328(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = [a1 persistentStoreCoordinator];
  if (!v5)
  {
    __break(1u);
    goto LABEL_6;
  }

  v6 = v5;
  v7 = [v5 managedObjectModel];

  v8 = [v7 entitiesByName];
  sub_10019A8E4(0, &qword_1005D9EE8, NSEntityDescription_ptr);
  v9 = sub_1004A5514();
  v10 = (*(ObjectType + 80))();
  if (!*(v9 + 16))
  {
LABEL_6:

    goto LABEL_7;
  }

  v12 = sub_100064090(v10, v11);
  v14 = v13;

  if (v14)
  {

    v15 = *(*(v9 + 56) + 8 * v12);

    v16 = a1;
    v17 = [v2 initWithEntity:v15 insertIntoManagedObjectContext:v16];

    return v17;
  }

LABEL_7:

  __break(1u);
  return result;
}

uint64_t sub_1003404A8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10000C9C0(&qword_1005D9EC0, &qword_1004F70D8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v22 - v7;
  sub_10002587C(a1, a1[3]);
  sub_100340730();
  sub_1004A6F84();
  if (v2)
  {
    return sub_1000197E0(a1);
  }

  v33 = 0;
  v9 = sub_1004A6B54();
  if (v9)
  {
    v10 = BYTE4(v9) & 1;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = v9;
  }

  v12 = sub_10033C960(1, 2);
  v26 = v13;
  LODWORD(v27) = v11;
  if (v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = v12;
  }

  v32 = 3;
  result = sub_1004A6B64();
  v23 = v14;
  v24 = v16;
  if (v16)
  {
    v25 = 0;
    v17 = v27;
LABEL_16:
    v18 = sub_10033C960(4, 5);
    v20 = v19;
    v21 = *(v6 + 8);
    v27 = v18;
    v21(v8, v5);
    v31 = v10;
    v30 = v26 & 1;
    v29 = v24 & 1;
    v28 = v20 & 1;
    result = sub_1000197E0(a1);
    *a2 = v17;
    *(a2 + 4) = v31;
    *(a2 + 8) = v23;
    *(a2 + 16) = v30;
    *(a2 + 24) = v25;
    *(a2 + 32) = v29;
    *(a2 + 36) = v27;
    *(a2 + 44) = v28;
    return result;
  }

  v25 = result;
  v17 = v27;
  if ((result & 0x8000000000000000) == 0)
  {
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

unint64_t sub_100340730()
{
  result = qword_1005D9EC8;
  if (!qword_1005D9EC8)
  {
    result = swift_getWitnessTable(byte_1004F729C, &_s7MailboxC8MetadataV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1005D9EC8);
  }

  return result;
}

unint64_t sub_100340784()
{
  result = qword_1005D9ED0;
  if (!qword_1005D9ED0)
  {
    result = swift_getWitnessTable(aU_9, &type metadata for InvalidUIDRangeError, v0, v1);
    atomic_store(result, &qword_1005D9ED0);
  }

  return result;
}

unint64_t sub_1003407D8()
{
  result = qword_1005D9EE0;
  if (!qword_1005D9EE0)
  {
    result = swift_getWitnessTable(byte_1004F7088, &_s7MailboxC8MetadataVN, v0, v1);
    atomic_store(result, &qword_1005D9EE0);
  }

  return result;
}

uint64_t sub_10034082C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005D6670, &qword_1004EBFB0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_10034089C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C9C0(&qword_1005D4768, &unk_1004F5B20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10034092C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 45))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10034094C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 44) = 0;
    *(result + 40) = 0;
    *result = (a2 - 1);
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

  *(result + 45) = v3;
  return result;
}

unint64_t sub_10034099C()
{
  result = qword_1005D9F18;
  if (!qword_1005D9F18)
  {
    result = swift_getWitnessTable(a5_5, &_s7MailboxC8MetadataV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1005D9F18);
  }

  return result;
}

unint64_t sub_1003409F4()
{
  result = qword_1005D9F20;
  if (!qword_1005D9F20)
  {
    result = swift_getWitnessTable(asc_1004F716C, &_s7MailboxC8MetadataV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1005D9F20);
  }

  return result;
}

unint64_t sub_100340A4C()
{
  result = qword_1005D9F28;
  if (!qword_1005D9F28)
  {
    result = swift_getWitnessTable(asc_1004F7194, &_s7MailboxC8MetadataV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1005D9F28);
  }

  return result;
}

unint64_t sub_100340AA0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1005B2D58;
  v6._object = a2;
  v4 = sub_1004A6AF4(v3, v6);

  if (v4 >= 6)
  {
    return 6;
  }

  else
  {
    return v4;
  }
}

id sub_100340B10(uint64_t a1, void *a2)
{
  sub_10000C9C0(qword_1005D9010, &unk_1004D3CA0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1004F6340;
  sub_10000C9C0(&qword_1005D8FE0, &qword_1004F65D0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1004CEAA0;
  v5 = [a2 objectID];
  *(v4 + 56) = sub_10019A8E4(0, &qword_1005D8FE8, NSManagedObjectID_ptr);
  *(v4 + 32) = v5;
  v6 = sub_1004A5734();
  isa = sub_1004A5C04().super.isa;

  v8 = objc_opt_self();
  v9 = [v8 predicateWithFormat:v6 argumentArray:isa];

  *(v3 + 32) = v9;
  v10 = sub_1004A5734();
  v11 = sub_1004A5C04().super.isa;
  v12 = [v8 predicateWithFormat:v10 argumentArray:v11];

  *(v3 + 40) = v12;
  sub_10019A8E4(0, &qword_1005D9008, NSPredicate_ptr);
  v13 = sub_1004A5C04().super.isa;

  v14 = [objc_opt_self() andPredicateWithSubpredicates:v13];

  return v14;
}

id sub_100340D2C(void *a1, void *a2, uint64_t a3, char *a4)
{
  v35 = a3;
  v7 = sub_1004A4A74();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  sub_10000C9C0(qword_1005D9010, &unk_1004D3CA0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1004D3930;
  v13 = objc_allocWithZone(NSSortDescriptor);
  v33 = a2;
  v14 = a1;
  v15 = sub_1004A5734();
  v16 = [v13 initWithKey:v15 ascending:0];

  *(v12 + 32) = v16;
  v17 = *(v8 + 16);
  v34 = a4;
  v17(v10, a4, v7);
  type metadata accessor for MessagesSource(0);
  v18 = swift_allocObject();
  *(v18 + OBJC_IVAR____TtC17IMAPSearchIndexer14MessagesSource_observer) = 0;
  *(v18 + OBJC_IVAR____TtC17IMAPSearchIndexer14MessagesSource_generationToken) = 0;
  v19 = (v18 + OBJC_IVAR____TtC17IMAPSearchIndexer14MessagesSource__fetchedResultsController);
  *v19 = 0;
  v19[1] = 0;
  *(v18 + OBJC_IVAR____TtC17IMAPSearchIndexer14MessagesSource_state) = 0;
  v18[2] = v14;
  v17(v18 + OBJC_IVAR____TtC17IMAPSearchIndexer14MessagesSource_logger, v10, v7);
  v18[3] = sub_1003414D0;
  v18[4] = v11;
  v18[5] = v35;
  v18[6] = v12;
  v20 = (v18 + OBJC_IVAR____TtC17IMAPSearchIndexer14MessagesSource_contentDidChange);
  *v20 = UInt32.init(_:);
  v20[1] = 0;
  v21 = type metadata accessor for MessagesSource.Observer();
  v22 = objc_allocWithZone(v21);
  swift_weakInit();
  swift_weakAssign();
  v36.receiver = v22;
  v36.super_class = v21;
  v23 = v14;

  v24 = objc_msgSendSuper2(&v36, "init");
  v25 = *(v18 + OBJC_IVAR____TtC17IMAPSearchIndexer14MessagesSource_observer);
  *(v18 + OBJC_IVAR____TtC17IMAPSearchIndexer14MessagesSource_observer) = v24;

  v26 = swift_allocObject();
  swift_weakInit();

  v27 = sub_100323BF4(sub_10032DC3C, v26);

  v28 = *(v8 + 8);
  v28(v10, v7);

  *(v18 + OBJC_IVAR____TtC17IMAPSearchIndexer14MessagesSource_generationToken) = v27;
  swift_unknownObjectRelease();
  if (*(v18 + OBJC_IVAR____TtC17IMAPSearchIndexer14MessagesSource_state))
  {

    v28(v34, v7);
  }

  else
  {
    *(v18 + OBJC_IVAR____TtC17IMAPSearchIndexer14MessagesSource_state) = 1;
    v29 = *(v18 + OBJC_IVAR____TtC17IMAPSearchIndexer14MessagesSource_contentDidChange);

    v29(v30);

    v28(v34, v7);
  }

  return v33;
}

void *sub_100341120(uint64_t a1)
{
  v2 = sub_1003344C4();
  v3 = *(a1 + 40);
  if (v3 < 0)
  {
    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v4 = v2;
    v5 = [v4 count];
    v6 = _swiftEmptyArrayStorage;
    if (v3)
    {
      v7 = v5;
      v8 = 0;
      v35 = 0;
      v9 = &_swiftEmptyArrayStorage[4];
LABEL_4:
      v31 = v3;
      v32 = v9;
      v34 = v6;
      if (v8 < v7)
      {
        do
        {
          v10 = [v4 objectAtIndexedSubscript:v8];
          sub_1004A64E4();
          swift_unknownObjectRelease();
          _s7MessageCMa();
          if (!swift_dynamicCast())
          {
            goto LABEL_36;
          }

          ++v8;
          v11 = sub_1004A5734();
          [v39 willAccessValueForKey:v11];

          v12 = [v39 primitiveSpotlightID];
          if (v12)
          {
            v14 = v12;
            [v12 longLongValue];

            v15 = sub_1004A5734();
            [v39 didAccessValueForKey:v15];

            if (v35)
            {
              v6 = v34;
              v16 = v35 - 1;
              if (__OFSUB__(v35, 1))
              {
                goto LABEL_33;
              }
            }

            else
            {
              v17 = v34[3];
              if (((v17 >> 1) + 0x4000000000000000) < 0)
              {
                goto LABEL_35;
              }

              v18 = v17 & 0xFFFFFFFFFFFFFFFELL;
              if (v18 <= 1)
              {
                v18 = 1;
              }

              v36 = v18;
              sub_10000C9C0(qword_1005D9010, &unk_1004D3CA0);
              v30 = swift_allocObject();
              v19 = j__malloc_size(v30);
              v20 = v19 - 32;
              if (v19 < 32)
              {
                v20 = v19 - 25;
              }

              v21 = v20 >> 3;
              v30[2] = v36;
              v30[3] = (2 * (v20 >> 3)) | 1;
              v22 = (v30 + 4);
              v23 = v34[3] >> 1;
              if (v34[2])
              {
                v24 = v34 + 4;
                if (v30 != v34 || v22 >= v24 + 8 * v23)
                {
                  v37 = v20 >> 3;
                  v33 = v34[3] >> 1;
                  memmove(v30 + 4, v24, 8 * v23);
                  v23 = v33;
                  v22 = (v30 + 4);
                  v21 = v37;
                }

                v34[2] = 0;
              }

              v32 = (v22 + 8 * v23);
              v38 = (v21 & 0x7FFFFFFFFFFFFFFFLL) - v23;

              v6 = v30;
              v16 = v38 - 1;
              if (__OFSUB__(v38, 1))
              {
                goto LABEL_33;
              }
            }

            v35 = v16;
            *v32 = v39;
            v9 = v32 + 1;
            --v3;
            if (v31 != 1)
            {
              goto LABEL_4;
            }

            goto LABEL_28;
          }

          v13 = sub_1004A5734();
          [v39 didAccessValueForKey:v13];
        }

        while (v7 != v8);
      }

      v6 = v34;
    }

    else
    {
      v35 = 0;
    }

LABEL_28:

    v25 = v6[3];
    if (v25 < 2)
    {
LABEL_31:

      return v6;
    }

    v26 = v25 >> 1;
    v27 = __OFSUB__(v26, v35);
    v28 = v26 - v35;
    if (!v27)
    {
      v6[2] = v28;
      goto LABEL_31;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  result = sub_1004A69A4();
  __break(1u);
  return result;
}

uint64_t sub_100341498()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1003414D8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100341534(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v6 = *(a3 + 24);
  v7 = type metadata accessor for PendingItem.Info(0);
  v8 = *(*(v7 - 8) + 48);

  return v8(a1 + v6, a2, v7);
}

uint64_t sub_1003415E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = type metadata accessor for PendingItem.Info(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

void sub_10034167C(uint64_t a1)
{
  sub_100341720(319);
  if (v1 <= 0x3F)
  {
    sub_100341778(319, v1, v2, v3);
    if (v4 <= 0x3F)
    {
      type metadata accessor for PendingItem.Info(319);
      if (v5 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100341720(uint64_t a1)
{
  if (!qword_1005D9F98)
  {
    v2 = type metadata accessor for PendingItem(255);
    v5 = type metadata accessor for UInt64Identifier(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1005D9F98);
    }
  }
}

void sub_100341778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!qword_1005D9FA0)
  {
    v4 = type metadata accessor for UInt64Identifier(0, &type metadata for _SpotlightMessageID, a3, a4);
    if (!v5)
    {
      atomic_store(v4, &qword_1005D9FA0);
    }
  }
}

uint64_t sub_1003417C8(uint64_t a1)
{
  result = type metadata accessor for PendingItem.AddMessage(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100341864(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for IndexableMessageInfo(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1004A44E4();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_10034199C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for IndexableMessageInfo(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1004A44E4();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_100341AC0(uint64_t a1)
{
  result = type metadata accessor for IndexableMessageInfo(319);
  if (v2 <= 0x3F)
  {
    result = sub_1004A44E4();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100341B64@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for PendingItem.AddMessage(0);
  __chkstk_darwin(v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PendingItem.Info(0);
  __chkstk_darwin(v9);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v26 - v13;
  v15 = *a1;
  v16 = type metadata accessor for EnqueueableItem(0);
  sub_100341F64(a1 + *(v16 + 20), v14);
  *a3 = a2;
  a3[1] = v15;
  v17 = type metadata accessor for PendingItem(0);
  sub_100341F64(v14, a3 + *(v17 + 24));
  sub_100341F64(v14, v11);
  if (!swift_getEnumCaseMultiPayload())
  {
    sub_100342028(v11, v8);
    v20 = *(v6 + 24);
    v21 = &v8[v20 + *(type metadata accessor for IndexableMessageInfo(0) + 60)];
    if (v21[16] == 255)
    {
      sub_100341FC8(a1, type metadata accessor for EnqueueableItem);
      sub_100341FC8(v14, type metadata accessor for PendingItem.Info);
      v24 = 0;
    }

    else
    {
      v23 = *v21;
      v22 = *(v21 + 1);
      if ((v22 & 0x1000000000000000) != 0)
      {
        v24 = sub_1004A59E4();
        sub_100341FC8(a1, type metadata accessor for EnqueueableItem);
        sub_100341FC8(v14, type metadata accessor for PendingItem.Info);
      }

      else
      {
        sub_100341FC8(a1, type metadata accessor for EnqueueableItem);
        sub_100341FC8(v14, type metadata accessor for PendingItem.Info);
        if ((v22 & 0x2000000000000000) != 0)
        {
          v24 = HIBYTE(v22) & 0xF;
          goto LABEL_11;
        }

        v24 = v23 & 0xFFFFFFFFFFFFLL;
      }

      if (v24 >= 1000001)
      {
        v19 = 822772;
LABEL_14:
        result = sub_100341FC8(v8, type metadata accessor for PendingItem.AddMessage);
        goto LABEL_15;
      }
    }

LABEL_11:
    v25 = 809;
    if (v24 > 809)
    {
      v25 = v24;
    }

    v19 = v25 + v24 + 2772;
    goto LABEL_14;
  }

  sub_100341FC8(a1, type metadata accessor for EnqueueableItem);
  result = sub_100341FC8(v14, type metadata accessor for PendingItem.Info);
  v19 = 1092;
LABEL_15:
  *(a3 + *(v17 + 28)) = v19;
  return result;
}

uint64_t sub_100341E68(void *a1, void *a2, uint64_t a3)
{
  if (*a1 == *a2)
  {
    return sub_10034208C(a1 + *(a3 + 20), a2 + *(a3 + 20));
  }

  else
  {
    return 0;
  }
}

unint64_t sub_100341EAC()
{
  result = qword_1005DA120;
  if (!qword_1005DA120)
  {
    result = swift_getWitnessTable(aE_6, &type metadata for PendingItem.MemoryPressure, v0, v1);
    atomic_store(result, &qword_1005DA120);
  }

  return result;
}

uint64_t sub_100341F64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PendingItem.Info(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100341FC8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100342028(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PendingItem.AddMessage(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10034208C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PendingItem.AddMessage(0);
  __chkstk_darwin(v4);
  v6 = (&v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for PendingItem.Info(0);
  __chkstk_darwin(v7);
  v9 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = (&v55 - v11);
  v13 = sub_10000C9C0(&qword_1005DA128, &qword_1004F74D8);
  __chkstk_darwin(v13 - 8);
  v15 = &v55 - v14;
  v17 = &v55 + *(v16 + 56) - v14;
  sub_100341F64(a1, &v55 - v14);
  sub_100341F64(a2, v17);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_100341F64(v15, v12);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_100341FC8(v12, type metadata accessor for PendingItem.AddMessage);
      goto LABEL_34;
    }

    sub_100342028(v17, v6);
    v32 = *v12 == *v6 && v12[1] == v6[1];
    if (!v32 && (sub_1004A6D34() & 1) == 0)
    {
      goto LABEL_72;
    }

    sub_1003428B4();
    if ((sub_1004A62F4() & 1) == 0 || (static IndexableMessageInfo.__derived_struct_equals(_:_:)() & 1) == 0)
    {
      goto LABEL_72;
    }

    v33 = *(v4 + 28);
    v34 = v12 + v33;
    v35 = *(v12 + v33);
    v36 = *(v12 + v33 + 1);
    v37 = *(v12 + v33 + 2);
    v38 = *(v12 + v33 + 3);
    v39 = *(v12 + v33 + 4);
    v40 = *(v12 + v33 + 5);
    v41 = *(v12 + v33 + 6);
    v42 = v6 + v33;
    v43 = v35 & 1;
    v32 = (v36 & 1) == 0;
    v44 = 256;
    if (v32)
    {
      v45 = 0;
    }

    else
    {
      v45 = 256;
    }

    v32 = (v37 & 1) == 0;
    v46 = 0x10000;
    if (v32)
    {
      v47 = 0;
    }

    else
    {
      v47 = 0x10000;
    }

    v32 = (v38 & 1) == 0;
    v48 = 0x1000000;
    if (v32)
    {
      v49 = 0;
    }

    else
    {
      v49 = 0x1000000;
    }

    v32 = (v39 & 1) == 0;
    v50 = &_mh_execute_header;
    if (v32)
    {
      v51 = 0;
    }

    else
    {
      v51 = &_mh_execute_header;
    }

    v32 = (v40 & 1) == 0;
    v52 = 0x10000000000;
    if (v32)
    {
      v53 = 0;
    }

    else
    {
      v53 = 0x10000000000;
    }

    v54 = v43 | (v41 << 48) | v45 | v47 | v49 | v51 | v53 | (v34[7] << 56);
    if ((v42[1] & 1) == 0)
    {
      v44 = 0;
    }

    if ((v42[2] & 1) == 0)
    {
      v46 = 0;
    }

    if ((v42[3] & 1) == 0)
    {
      v48 = 0;
    }

    if ((v42[4] & 1) == 0)
    {
      v50 = 0;
    }

    if ((v42[5] & 1) == 0)
    {
      v52 = 0;
    }

    if ((static Flags.__derived_struct_equals(_:_:)(v54, v34[8] & 1, *v42 & 1 | (v42[6] << 48) | v44 | v46 | v48 | v50 | v52 | (v42[7] << 56), v42[8] & 1) & 1) == 0 || (sub_1004A44B4() & 1) == 0)
    {
LABEL_72:
      sub_100341FC8(v6, type metadata accessor for PendingItem.AddMessage);
      sub_100341FC8(v12, type metadata accessor for PendingItem.AddMessage);
      sub_100341FC8(v15, type metadata accessor for PendingItem.Info);
      goto LABEL_35;
    }

    sub_100341FC8(v6, type metadata accessor for PendingItem.AddMessage);
    sub_100341FC8(v12, type metadata accessor for PendingItem.AddMessage);
LABEL_33:
    sub_100341FC8(v15, type metadata accessor for PendingItem.Info);
    v30 = 1;
    return v30 & 1;
  }

  if (EnumCaseMultiPayload != 1)
  {
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  sub_100341F64(v15, v9);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
LABEL_34:
    sub_10034284C(v15);
LABEL_35:
    v30 = 0;
    return v30 & 1;
  }

  v19 = 256;
  if (v9[1])
  {
    v20 = 256;
  }

  else
  {
    v20 = 0;
  }

  v21 = 0x10000;
  if (v9[2])
  {
    v22 = 0x10000;
  }

  else
  {
    v22 = 0;
  }

  v23 = 0x1000000;
  if (v9[3])
  {
    v24 = 0x1000000;
  }

  else
  {
    v24 = 0;
  }

  v25 = &_mh_execute_header;
  if (v9[4])
  {
    v26 = &_mh_execute_header;
  }

  else
  {
    v26 = 0;
  }

  v27 = 0x10000000000;
  if (v9[5])
  {
    v28 = 0x10000000000;
  }

  else
  {
    v28 = 0;
  }

  v29 = *v9 & 1 | (v9[6] << 48) | v20 | v22 | v24 | v26 | v28 | (v9[7] << 56);
  if ((v17[1] & 1) == 0)
  {
    v19 = 0;
  }

  if ((v17[2] & 1) == 0)
  {
    v21 = 0;
  }

  if ((v17[3] & 1) == 0)
  {
    v23 = 0;
  }

  if ((v17[4] & 1) == 0)
  {
    v25 = 0;
  }

  if ((v17[5] & 1) == 0)
  {
    v27 = 0;
  }

  v30 = static Flags.__derived_struct_equals(_:_:)(v29, v9[8] & 1, *v17 & 1 | (v17[6] << 48) | v19 | v21 | v23 | v25 | v27 | (v17[7] << 56), v17[8] & 1);
  sub_100341FC8(v15, type metadata accessor for PendingItem.Info);
  return v30 & 1;
}

uint64_t sub_1003425D0(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1004A6D34() & 1) == 0)
  {
    return 0;
  }

  sub_1003428B4();
  if ((sub_1004A62F4() & 1) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for PendingItem.AddMessage(0);
  if ((static IndexableMessageInfo.__derived_struct_equals(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v6 = *(v5 + 28);
  v7 = a1 + v6;
  v8 = *(a1 + v6);
  v9 = *(a1 + v6 + 1);
  v10 = *(a1 + v6 + 2);
  v11 = *(a1 + v6 + 3);
  v12 = *(a1 + v6 + 4);
  v13 = *(a1 + v6 + 5);
  v14 = *(a1 + v6 + 6);
  v15 = a2 + v6;
  v16 = v8 & 1;
  v4 = (v9 & 1) == 0;
  v17 = 256;
  if (v4)
  {
    v18 = 0;
  }

  else
  {
    v18 = 256;
  }

  v4 = (v10 & 1) == 0;
  v19 = 0x10000;
  if (v4)
  {
    v20 = 0;
  }

  else
  {
    v20 = 0x10000;
  }

  v4 = (v11 & 1) == 0;
  v21 = 0x1000000;
  if (v4)
  {
    v22 = 0;
  }

  else
  {
    v22 = 0x1000000;
  }

  v4 = (v12 & 1) == 0;
  v23 = &_mh_execute_header;
  if (v4)
  {
    v24 = 0;
  }

  else
  {
    v24 = &_mh_execute_header;
  }

  v4 = (v13 & 1) == 0;
  v25 = 0x10000000000;
  if (v4)
  {
    v26 = 0;
  }

  else
  {
    v26 = 0x10000000000;
  }

  v27 = v16 | (v14 << 48) | v18 | v20 | v22 | v24 | v26 | (v7[7] << 56);
  if ((v15[1] & 1) == 0)
  {
    v17 = 0;
  }

  if ((v15[2] & 1) == 0)
  {
    v19 = 0;
  }

  if ((v15[3] & 1) == 0)
  {
    v21 = 0;
  }

  if ((v15[4] & 1) == 0)
  {
    v23 = 0;
  }

  if ((v15[5] & 1) == 0)
  {
    v25 = 0;
  }

  if ((static Flags.__derived_struct_equals(_:_:)(v27, v7[8] & 1, *v15 & 1 | (v15[6] << 48) | v17 | v19 | v21 | v23 | v25 | (v15[7] << 56), v15[8] & 1) & 1) == 0)
  {
    return 0;
  }

  return sub_1004A44B4();
}

BOOL sub_1003427B8(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (a1[1] == a2[1])
  {
    v4 = type metadata accessor for PendingItem(0);
    if (sub_10034208C(a1 + *(v4 + 24), a2 + *(v4 + 24)))
    {
      return *(a1 + *(v4 + 28)) == *(a2 + *(v4 + 28));
    }
  }

  return 0;
}

uint64_t sub_10034284C(uint64_t a1)
{
  v2 = sub_10000C9C0(&qword_1005DA128, &qword_1004F74D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1003428B4()
{
  result = qword_1005D91C0;
  if (!qword_1005D91C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1005D91C0);
  }

  return result;
}

uint64_t sub_100342914(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = type metadata accessor for PendingItem.Info(0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1003429A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = type metadata accessor for PendingItem.Info(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

void sub_100342A1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100341778(319, a2, a3, a4);
  if (v4 <= 0x3F)
  {
    type metadata accessor for PendingItem.Info(319);
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100342AA0(uint64_t a1)
{
  v49 = sub_1004A4374();
  v3 = *(v49 - 8);
  __chkstk_darwin(v49);
  v48 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v47 = &v41 - v6;
  v7 = *(a1 + 16);
  if (v7)
  {
    v41 = v1;
    v57 = _swiftEmptyArrayStorage;
    sub_100091A08(0, v7, 0);
    v54 = v57;
    v8 = a1 + 56;
    v9 = sub_1004A6554();
    v10 = 0;
    v45 = (v3 + 8);
    v46 = a1;
    v42 = a1 + 64;
    v43 = v7;
    v44 = a1 + 56;
    while ((v9 & 0x8000000000000000) == 0 && v9 < 1 << *(a1 + 32))
    {
      if ((*(v8 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
      {
        goto LABEL_23;
      }

      v52 = v9 >> 6;
      v53 = 1 << v9;
      v13 = *(a1 + 36);
      v50 = v10;
      v51 = v13;
      v14 = qword_1005D8790;
      v15 = *(*(a1 + 48) + 8 * v9);
      if (v14 != -1)
      {
        swift_once();
      }

      v16 = [qword_1005DA2A8 keyName];
      v17 = sub_1004A5764();
      v19 = v18;

      v55 = v17;
      v56 = v19;
      v58._countAndFlagsBits = 10045;
      v58._object = 0xE200000000000000;
      sub_1004A5994(v58);
      v20 = [v15 URIRepresentation];
      v21 = v47;
      sub_1004A4344();

      v22 = v48;
      sub_1004A4284();
      v23 = *v45;
      v24 = v49;
      (*v45)(v21, v49);
      v25 = sub_1004A42B4();
      v27 = v26;
      v23(v22, v24);
      v59._countAndFlagsBits = v25;
      v59._object = v27;
      sub_1004A5994(v59);

      v60._countAndFlagsBits = 39;
      v60._object = 0xE100000000000000;
      sub_1004A5994(v60);

      v28 = v55;
      v29 = v56;
      v30 = v54;
      v57 = v54;
      v32 = v54[2];
      v31 = v54[3];
      if (v32 >= v31 >> 1)
      {
        sub_100091A08((v31 > 1), v32 + 1, 1);
        v30 = v57;
      }

      v30[2] = v32 + 1;
      v33 = &v30[2 * v32];
      v33[4] = v28;
      v33[5] = v29;
      a1 = v46;
      v11 = 1 << *(v46 + 32);
      if (v9 >= v11)
      {
        goto LABEL_24;
      }

      v8 = v44;
      v34 = *(v44 + 8 * v52);
      if ((v34 & v53) == 0)
      {
        goto LABEL_25;
      }

      v54 = v30;
      if (v51 != *(v46 + 36))
      {
        goto LABEL_26;
      }

      v35 = v34 & (-2 << (v9 & 0x3F));
      if (v35)
      {
        v11 = __clz(__rbit64(v35)) | v9 & 0x7FFFFFFFFFFFFFC0;
        v12 = v43;
      }

      else
      {
        v36 = v52 << 6;
        v37 = v52 + 1;
        v12 = v43;
        v38 = (v42 + 8 * v52);
        while (v37 < (v11 + 63) >> 6)
        {
          v40 = *v38++;
          v39 = v40;
          v36 += 64;
          ++v37;
          if (v40)
          {
            sub_100020944(v9, v51, 0);
            v11 = __clz(__rbit64(v39)) + v36;
            goto LABEL_4;
          }
        }

        sub_100020944(v9, v51, 0);
      }

LABEL_4:
      v10 = v50 + 1;
      v9 = v11;
      if (v50 + 1 == v12)
      {
        return;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }
}

uint64_t sub_100342EA0()
{
  v0 = sub_1004A4A74();
  sub_1001C2074(v0, qword_1005DA1C0);
  sub_1001C203C(v0, qword_1005DA1C0);
  return sub_1004A4A64();
}

uint64_t sub_100342F14()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100342F78(void *rawValue, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v9 = rawValue;
  v10 = SearchQuery.id.getter(rawValue);
  v12 = v11;
  if (qword_1005D8788 != -1)
  {
    goto LABEL_15;
  }

  while (1)
  {
    v13 = sub_1004A4A74();
    sub_1001C203C(v13, qword_1005DA1C0);

    v14 = sub_1004A4A54();
    v15 = sub_1004A6034();

    v36 = v6;
    v37 = v9;
    v34 = v10;
    v35 = v12;
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      aBlock[0] = v9;
      *v16 = 141558275;
      *(v16 + 4) = 1752392040;
      *(v16 + 12) = 2085;

      v6 = sub_10015BA6C(v10, v12, aBlock);

      *(v16 + 14) = v6;
      _os_log_impl(&_mh_execute_header, v14, v15, "[%{sensitive,mask.hash}s] Starting.", v16, 0x16u);
      sub_1000197E0(v9);
    }

    v17 = a3[2];
    v10 = _swiftEmptyArrayStorage;
    if (!v17)
    {
      break;
    }

    v31 = a5;
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_10034F6C0(0, v17, 0);
    v10 = aBlock[0];
    v30 = a3;
    a3 += 6;
    while (1)
    {
      a5 = *(a3 - 1);
      v18 = *a3;
      v19 = HIBYTE(*a3) & 0xFLL;
      if ((*a3 & 0x2000000000000000) == 0)
      {
        v19 = a5 & 0xFFFFFFFFFFFFLL;
      }

      if (!v19)
      {
        break;
      }

      v21 = MailboxName.init(_:)(v20);
      v9 = v21.bytes._rawValue;
      aBlock[0] = v10;
      v12 = v10[2];
      v22 = v10[3];
      v6 = v12 + 1;
      if (v12 >= v22 >> 1)
      {
        sub_10034F6C0((v22 > 1), v12 + 1, 1);
        v10 = aBlock[0];
      }

      v10[2] = v6;
      v23 = &v10[4 * v12];
      v23[2].bytes._rawValue = a5;
      *&v23[2]._hashValue._value = v18;
      v23[3] = v21;
      a3 += 3;
      if (!--v17)
      {
        a3 = v30;
        a5 = v31;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_15:
    swift_once();
  }

LABEL_13:
  v24 = swift_allocObject();
  v24[2] = v37;
  v24[3] = a2;
  v24[4] = a3;
  v24[5] = v36;
  v24[6] = v34;
  v24[7] = v35;
  v24[8] = a4;
  v24[9] = a5;
  v25 = *(v36 + 24);
  v26 = swift_allocObject();
  v26[2] = v36;
  v26[3] = v10;
  v26[4] = v34;
  v26[5] = v35;
  v26[6] = sub_100346F38;
  v26[7] = v24;
  aBlock[4] = sub_100346FBC;
  aBlock[5] = v26;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10019C778;
  aBlock[3] = &unk_1005B4CC0;
  v27 = _Block_copy(aBlock);
  swift_retain_n();

  v28 = v37;

  [v25 performBlock:v27];
  _Block_release(v27);
}

uint64_t sub_100343314(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t (*a8)(uint64_t), uint64_t a9)
{
  sub_10019A8E4(0, &qword_1005DA280, CSUserQuery_ptr);
  v15 = a2;

  v16 = sub_100343548(v15, a3, a1);
  if (a3 >= 541)
  {
    v17 = 541;
  }

  else
  {
    v17 = a3;
  }

  v18 = swift_allocObject();
  v18[2] = a6;
  v18[3] = a7;
  v18[4] = a8;
  v18[5] = a9;
  if (v16)
  {
    v19 = qword_1005D8788;

    if (v19 != -1)
    {
      swift_once();
    }

    v20 = sub_1004A4A74();
    v21 = sub_1001C203C(v20, qword_1005DA1C0);
    v22 = swift_allocObject();
    swift_weakInit();
    v23 = swift_allocObject();
    v23[2] = v22;
    v23[3] = sub_100347434;
    v23[4] = v18;
    v23[5] = v17;
    v23[6] = a6;
    v23[7] = a7;
    v23[8] = a1;

    sub_100345710(a6, a7, v21, sub_1003474C8, v23);
  }

  else
  {

    v24 = sub_1003512F8(_swiftEmptyArrayStorage);
    sub_1003436FC(v24, a6, a7, a8);
  }
}

id sub_100343548(void *a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    v6 = [a1 userQueryString];
    v7 = objc_opt_self();
    v8 = a1;
    v9 = [v7 userQueryContextWithCurrentSuggestion:v8];
    isa = sub_1004A5C04().super.isa;
    [v9 setBundleIDs:isa];

    if (a2 >= 541)
    {
      a2 = 541;
    }

    v11 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    [v9 setMaxResultCount:a2];

    v12 = [v11 initWithUserQueryString:v6 userQueryContext:v9];
    v13 = v12;
    sub_100342AA0(a3);

    v14 = sub_1004A5C04().super.isa;

    [v13 setFilterQueries:v14];
  }

  else
  {

    return 0;
  }

  return v13;
}

uint64_t sub_1003436FC(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(uint64_t))
{
  if (qword_1005D8788 != -1)
  {
    goto LABEL_20;
  }

  while (1)
  {
    v8 = sub_1004A4A74();
    sub_1001C203C(v8, qword_1005DA1C0);

    v9 = sub_1004A4A54();
    v10 = sub_1004A6034();

    if (!os_log_type_enabled(v9, v10))
    {
      break;
    }

    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v25 = v12;
    *v11 = 141558531;
    *(v11 + 4) = 1752392040;
    *(v11 + 12) = 2085;
    v13 = sub_10015BA6C(a2, a3, &v25);
    v14 = 0;
    v15 = 0;
    *(v11 + 14) = v13;
    *(v11 + 22) = 2048;
    v16 = 1 << *(a1 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(a1 + 64);
    v19 = (v16 + 63) >> 6;
    while (v18)
    {
      v20 = v14;
LABEL_13:
      v21 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      v22 = *(*(*(a1 + 56) + ((v20 << 9) | (8 * v21))) + 16);
      v23 = __OFADD__(v15, v22);
      v15 += v22;
      if (v23)
      {
        __break(1u);
        goto LABEL_16;
      }
    }

    while (1)
    {
      v20 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v20 >= v19)
      {
        *(v11 + 24) = v15;

        _os_log_impl(&_mh_execute_header, v9, v10, "[%{sensitive,mask.hash}s] Done. %ld UIDs.", v11, 0x20u);
        sub_1000197E0(v12);

        return a4(a1);
      }

      v18 = *(a1 + 64 + 8 * v20);
      ++v14;
      if (v18)
      {
        v14 = v20;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_20:
    swift_once();
  }

LABEL_16:

  return a4(a1);
}

void sub_100343948(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a2;
  v6 = *v3;
  v7 = *(a1 + 16);
  if (!v7)
  {
    v11 = _swiftEmptyArrayStorage;
LABEL_82:
    v46 = v3[3];
    v47 = v11;
    v48 = swift_allocObject();
    v48[2] = v47;
    v48[3] = v3;
    v48[4] = v5;
    v48[5] = a3;
    v48[6] = v6;
    v58 = sub_100348594;
    v59 = v48;
    aBlock = _NSConcreteStackBlock;
    v55 = 1107296256;
    v56 = sub_10019C778;
    v57 = &unk_1005B4F40;
    v49 = _Block_copy(&aBlock);

    [v46 performBlock:v49];
    _Block_release(v49);
    return;
  }

  v8 = 0;
  v9 = a1 + 32;
  v10 = &aBlock + 1;
  v11 = _swiftEmptyArrayStorage;
  while (v8 < v7)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      goto LABEL_84;
    }

    v13 = (v9 + 16 * v8);
    v14 = *v13;
    v15 = v13[1];
    ++v8;
    v16 = HIBYTE(v15) & 0xF;
    v17 = v14 & 0xFFFFFFFFFFFFLL;
    if ((v15 & 0x2000000000000000) != 0)
    {
      v18 = HIBYTE(v15) & 0xF;
    }

    else
    {
      v18 = v14 & 0xFFFFFFFFFFFFLL;
    }

    if (v18)
    {
      if ((v15 & 0x1000000000000000) != 0)
      {
        v51 = v11;
        v34 = v10;

        v21 = sub_10010C818(v14, v15, 10);
        v50 = v35;

        v10 = v34;
        v11 = v51;
        v5 = a2;
        if (v50)
        {
          goto LABEL_69;
        }

        goto LABEL_72;
      }

      if ((v15 & 0x2000000000000000) != 0)
      {
        aBlock = v14;
        v55 = v15 & 0xFFFFFFFFFFFFFFLL;
        if (v14 == 43)
        {
          if (!v16)
          {
            goto LABEL_88;
          }

          if (--v16)
          {
            v21 = 0;
            v29 = v10;
            while (1)
            {
              v30 = *v29 - 48;
              if (v30 > 9)
              {
                break;
              }

              if (!is_mul_ok(v21, 0xAuLL))
              {
                break;
              }

              v24 = __CFADD__(10 * v21, v30);
              v21 = 10 * v21 + v30;
              if (v24)
              {
                break;
              }

              ++v29;
              if (!--v16)
              {
                goto LABEL_68;
              }
            }
          }
        }

        else if (v14 == 45)
        {
          if (!v16)
          {
            goto LABEL_87;
          }

          if (--v16)
          {
            v21 = 0;
            v25 = v10;
            while (1)
            {
              v26 = *v25 - 48;
              if (v26 > 9)
              {
                break;
              }

              if (!is_mul_ok(v21, 0xAuLL))
              {
                break;
              }

              v24 = 10 * v21 >= v26;
              v21 = 10 * v21 - v26;
              if (!v24)
              {
                break;
              }

              ++v25;
              if (!--v16)
              {
                goto LABEL_68;
              }
            }
          }
        }

        else if (v16)
        {
          v21 = 0;
          p_aBlock = &aBlock;
          while (1)
          {
            v33 = *p_aBlock - 48;
            if (v33 > 9)
            {
              break;
            }

            if (!is_mul_ok(v21, 0xAuLL))
            {
              break;
            }

            v24 = __CFADD__(10 * v21, v33);
            v21 = 10 * v21 + v33;
            if (v24)
            {
              break;
            }

            p_aBlock = (p_aBlock + 1);
            if (!--v16)
            {
              goto LABEL_68;
            }
          }
        }
      }

      else
      {
        if ((v14 & 0x1000000000000000) != 0)
        {
          v19 = ((v15 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v42 = v11;
          v43 = v5;
          v44 = v10;
          v19 = sub_1004A67E4();
          v10 = v44;
          v5 = v43;
          v11 = v42;
        }

        v20 = *v19;
        if (v20 == 43)
        {
          if (v17 < 1)
          {
            goto LABEL_85;
          }

          v16 = v17 - 1;
          if (v17 != 1)
          {
            v21 = 0;
            if (!v19)
            {
              goto LABEL_59;
            }

            v27 = v19 + 1;
            while (1)
            {
              v28 = *v27 - 48;
              if (v28 > 9)
              {
                break;
              }

              if (!is_mul_ok(v21, 0xAuLL))
              {
                break;
              }

              v24 = __CFADD__(10 * v21, v28);
              v21 = 10 * v21 + v28;
              if (v24)
              {
                break;
              }

              ++v27;
              if (!--v16)
              {
                goto LABEL_68;
              }
            }
          }
        }

        else if (v20 == 45)
        {
          if (v17 < 1)
          {
            goto LABEL_86;
          }

          v16 = v17 - 1;
          if (v17 != 1)
          {
            v21 = 0;
            if (!v19)
            {
              goto LABEL_59;
            }

            v22 = v19 + 1;
            while (1)
            {
              v23 = *v22 - 48;
              if (v23 > 9)
              {
                break;
              }

              if (!is_mul_ok(v21, 0xAuLL))
              {
                break;
              }

              v24 = 10 * v21 >= v23;
              v21 = 10 * v21 - v23;
              if (!v24)
              {
                break;
              }

              ++v22;
              if (!--v16)
              {
                goto LABEL_68;
              }
            }
          }
        }

        else if (v17)
        {
          v21 = 0;
          if (!v19)
          {
LABEL_59:
            LOBYTE(v16) = 0;
            goto LABEL_68;
          }

          while (1)
          {
            v31 = *v19 - 48;
            if (v31 > 9)
            {
              break;
            }

            if (!is_mul_ok(v21, 0xAuLL))
            {
              break;
            }

            v24 = __CFADD__(10 * v21, v31);
            v21 = 10 * v21 + v31;
            if (v24)
            {
              break;
            }

            ++v19;
            if (!--v17)
            {
              goto LABEL_59;
            }
          }
        }
      }

      v21 = 0;
      LOBYTE(v16) = 1;
LABEL_68:
      v60 = v16;
      if (v16)
      {
        goto LABEL_69;
      }

LABEL_72:
      v36 = v10;
      v52 = v6;
      v37 = v3;
      v38 = v11;
      v39 = a3;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v11 = v38;
      }

      else
      {
        v11 = sub_10035DB38(0, *(v38 + 2) + 1, 1, v38);
      }

      v41 = *(v11 + 2);
      v40 = *(v11 + 3);
      if (v41 >= v40 >> 1)
      {
        v45 = sub_10035DB38((v40 > 1), v41 + 1, 1, v11);
        v10 = v36;
        v11 = v45;
      }

      else
      {
        v10 = v36;
      }

      *(v11 + 2) = v41 + 1;
      *&v11[8 * v41 + 32] = v21;
      a3 = v39;
      v3 = v37;
      v6 = v52;
      v5 = a2;
      if (v12 == v7)
      {
        goto LABEL_82;
      }
    }

    else
    {
LABEL_69:
      if (v12 == v7)
      {
        goto LABEL_82;
      }
    }
  }

  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
}

uint64_t sub_100343E50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v108 = a3;
  v109 = a4;
  v107 = a2;
  v4 = sub_1004A5244();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v112 = &v98 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_1004A5274();
  v111 = *(v113 - 8);
  __chkstk_darwin(v113);
  v110 = &v98 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
  v105 = *(v106 - 8);
  __chkstk_darwin(v106);
  v103 = &v98 - v8;

  v10 = sub_10036808C(v9);

  sub_100347864(v10);
  v12 = v11;

  v13 = swift_allocObject();
  v14 = sub_100351418(_swiftEmptyArrayStorage);
  v115 = v13;
  *(v13 + 16) = v14;
  aBlock[0] = 0;
  v15 = v12;
  v16 = [v15 execute:aBlock];
  v114 = v5;
  if (!v16)
  {
    v84 = aBlock[0];
    sub_1004A4274();

    swift_willThrow();
    if (qword_1005D8788 != -1)
    {
      swift_once();
    }

    v85 = sub_1004A4A74();
    sub_1001C203C(v85, qword_1005DA1C0);
    swift_errorRetain();
    v86 = sub_1004A4A54();
    v87 = sub_1004A6014();

    if (os_log_type_enabled(v86, v87))
    {
      v88 = swift_slowAlloc();
      v89 = swift_slowAlloc();
      *v88 = 138412290;
      v90 = sub_1004A4264();
      *(v88 + 4) = v90;
      *v89 = v90;
      _os_log_impl(&_mh_execute_header, v86, v87, "Lookup request failed: %@", v88, 0xCu);
      sub_100025F40(v89, &qword_1005D51A0, &qword_1004D0940);
    }

    else
    {
    }

    goto LABEL_64;
  }

  v17 = v16;
  v18 = aBlock[0];

  v19 = [v17 count];
  if (v19 < 1)
  {
LABEL_58:

LABEL_64:
    v92 = v108;
    v91 = v109;
    v93 = swift_allocObject();
    v93[2] = v92;
    v93[3] = v91;
    v93[4] = v115;
    aBlock[4] = sub_10034860C;
    aBlock[5] = v93;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10019C778;
    aBlock[3] = &unk_1005B4FB8;
    v94 = _Block_copy(aBlock);

    v95 = v110;
    sub_1004A5254();
    v118 = _swiftEmptyArrayStorage;
    sub_10022AAC8();
    sub_10000C9C0(&unk_1005D91A0, &unk_1004DDA60);
    sub_10022AB20();
    v96 = v112;
    sub_1004A6544();
    sub_1004A6084();
    _Block_release(v94);

    (*(v114 + 8))(v96, v4);
    (*(v111 + 8))(v95, v113);
  }

  v20 = v19;
  v21 = 0;
  v102 = v4;
  v116 = v19;
  v117 = v15;
  while (1)
  {
    v22 = [v17 objectAtIndexedSubscript:v21];
    sub_1004A64E4();
    swift_unknownObjectRelease();
    _s7MessageCMa();
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    v23 = v118;
    v24 = sub_1004A5734();
    [v23 willAccessValueForKey:v24];

    v25 = [v23 primitiveUid];
    if (v25)
    {
      v26 = v25;
      v27 = [v25 longLongValue];

      v28 = (v27 - 0x100000000) < 0xFFFFFFFF00000001;
      if ((v27 - 0x100000000) >= 0xFFFFFFFF00000001)
      {
        v29 = v27;
      }

      else
      {
        v29 = 0;
      }
    }

    else
    {
      v29 = 0;
      v28 = 1;
    }

    v30 = sub_1004A5734();
    [v23 didAccessValueForKey:v30];

    if (v28 || (v31 = [v23 mailbox]) == 0)
    {
    }

    else
    {
      v32 = v31;
      v33 = [v31 objectID];
      v34 = [v33 entity];
      v35 = [v34 name];

      if (!v35)
      {
        goto LABEL_20;
      }

      v36 = sub_1004A5764();
      v38 = v37;

      if (v36 == 0x786F626C69616DLL && v38 == 0xE700000000000000)
      {

        v20 = v116;
      }

      else
      {
        v39 = sub_1004A6D34();

        v20 = v116;
        if ((v39 & 1) == 0)
        {
          goto LABEL_20;
        }
      }

      if ([v33 isTemporaryID])
      {
LABEL_20:

        v15 = v117;
        goto LABEL_5;
      }

      v40 = [v23 mailbox];
      if (!v40)
      {

LABEL_42:
        v15 = v117;
        goto LABEL_5;
      }

      v41 = v40;
      v42 = sub_1004A5734();
      [v41 willAccessValueForKey:v42];

      v43 = [v41 primitiveName];
      v104 = v41;
      if (v43)
      {
        v44 = v43;
        v45 = sub_1004A6294();
        v46 = sub_1004A62A4();
        v47 = sub_1004A6294();
        v48 = sub_1004A62A4();
        if (v45 < v47 || v48 < v45)
        {
          __break(1u);
LABEL_66:
          __break(1u);
LABEL_67:
          __break(1u);
LABEL_68:
          __break(1u);
LABEL_69:
          __break(1u);
        }

        v49 = sub_1004A6294();
        v50 = sub_1004A62A4();
        if (v46 < v49 || v50 < v46)
        {
          goto LABEL_66;
        }

        v51 = __OFSUB__(v46, v45);
        v52 = v46 - v45;
        if (v51)
        {
          goto LABEL_67;
        }

        if (v52)
        {
          v53 = sub_10015BEAC(v52, 0);
          v54 = v44;
          v55 = sub_100359EE8(aBlock, (v53 + 4), v52);

          if (v55 != v52)
          {
            goto LABEL_69;
          }
        }

        else
        {

          v53 = _swiftEmptyArrayStorage;
        }

        v4 = v102;
        v57 = MailboxName.init(_:)(v53);
        rawValue = v57.bytes._rawValue;
        value = v57._hashValue._value;

        v20 = v116;
        v41 = v104;
      }

      else
      {
        rawValue = 0;
        value = 0;
      }

      v58 = sub_1004A5734();
      [v41 didAccessValueForKey:v58];

      if (!rawValue)
      {

        goto LABEL_42;
      }

      v59 = sub_1004A5734();
      [v41 willAccessValueForKey:v59];

      v60 = [v41 primitiveAccount];
      if (v60)
      {
        v99 = rawValue;
        v61 = v60;
        v62 = sub_1004A5764();
        v64 = v63;

        v65 = HIBYTE(v64) & 0xF;
        v100 = v62;
        if ((v64 & 0x2000000000000000) == 0)
        {
          v65 = v62 & 0xFFFFFFFFFFFFLL;
        }

        if (v65)
        {
          v66 = v64;
        }

        else
        {

          v100 = 0;
          v66 = 0;
        }

        rawValue = v99;
      }

      else
      {
        v100 = 0;
        v66 = 0;
      }

      v67 = sub_1004A5734();
      [v41 didAccessValueForKey:v67];

      if (v66)
      {
        LODWORD(v118) = v29;
        v68 = v115;
        v69 = rawValue;
        v70 = *(v115 + 16);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        aBlock[0] = v70;
        *(v68 + 16) = 0x8000000000000000;
        v99 = v66;
        v72 = v69;
        v74 = sub_10035E2D4(v100, v66, v69, value);
        v75 = v70[2];
        v76 = (v73 & 1) == 0;
        v77 = v75 + v76;
        if (__OFADD__(v75, v76))
        {
          goto LABEL_68;
        }

        v78 = v73;
        if (v70[3] >= v77)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_10036163C();
            v70 = aBlock[0];
          }
        }

        else
        {
          sub_10035FC68(v77, isUniquelyReferenced_nonNull_native);
          v70 = aBlock[0];
          v79 = sub_10035E2D4(v100, v99, v72, value);
          if ((v78 & 1) != (v80 & 1))
          {
            goto LABEL_71;
          }

          v74 = v79;
        }

        v81 = v115;
        v20 = v116;
        *(v115 + 16) = v70;

        v82 = *(v81 + 16);
        if (v78)
        {
        }

        else
        {
          sub_100016D2C();
          v83 = v103;
          sub_1004A7114();
          sub_100376E18(v74, v100, v99, v72, value, v83, v82);
        }

        MessageIdentifierSet.insert(_:)(aBlock, &v118, v106);

        v4 = v102;
        v15 = v117;
      }

      else
      {

        v4 = v102;
        v20 = v116;
        v15 = v117;
      }
    }

LABEL_5:
    if (v20 == ++v21)
    {
      goto LABEL_58;
    }
  }

  sub_1004A69A4();
  __break(1u);
LABEL_71:
  result = sub_1004A6E24();
  __break(1u);
  return result;
}

uint64_t sub_100344AE4(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  swift_beginAccess();

  v5 = sub_100344B60(v4);

  a1(v5);
}

void *sub_100344B60(uint64_t a1)
{
  v52 = sub_10000C9C0(&qword_1005DA290, &unk_1004F7540);
  __chkstk_darwin(v52);
  v3 = &v48 - v2;
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  v10 = _swiftEmptyArrayStorage;
  v49 = a1 + 64;
  v50 = a1;
  v48 = v8;
  v51 = v3;
  if (v7)
  {
    while (1)
    {
      v57 = v10;
LABEL_9:
      v56 = v7;
      v12 = __clz(__rbit64(v7)) | (v9 << 6);
      v13 = *(a1 + 56);
      v14 = *(a1 + 48) + 32 * v12;
      v16 = *v14;
      v15 = *(v14 + 8);
      v17 = *(v14 + 16);
      LODWORD(v58) = *(v14 + 24);
      v18 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
      v19 = v13 + *(*(v18 - 8) + 72) * v12;
      v20 = v51;
      v21 = v17;
      sub_10000E268(v19, &v51[*(v52 + 48)], &unk_1005D91B0, &unk_1004CF400);
      *v20 = v16;
      *(v20 + 8) = v15;
      *(v20 + 16) = v17;
      *(v20 + 24) = v58;
      v22 = HIBYTE(v15) & 0xF;
      v58 = v16;
      if ((v15 & 0x2000000000000000) == 0)
      {
        v22 = v16 & 0xFFFFFFFFFFFFLL;
      }

      if (!v22)
      {
        break;
      }

      v23 = v20;
      v24 = v15;
      v55 = v9;
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      v25 = MessageIdentifierSet.count.getter();
      if (v25)
      {
        v26 = v25;
        v54 = v21;
        v60 = _swiftEmptyArrayStorage;
        sub_10034F670(0, v25 & ~(v25 >> 63), 0);
        v27 = v60;
        v28 = MessageIdentifierSet.startIndex.getter(v18);
        if (v26 < 0)
        {
          goto LABEL_32;
        }

        v30 = v28;
        v31 = v29;
        v53 = v15;
        do
        {
          MessageIdentifierSet.subscript.getter(v31, v18, &v59);
          v32 = v59;
          v60 = v27;
          v33 = v23;
          v35 = v27[2];
          v34 = v27[3];
          if (v35 >= v34 >> 1)
          {
            v38 = v59;
            sub_10034F670((v34 > 1), v35 + 1, 1);
            v32 = v38;
            v27 = v60;
          }

          v27[2] = v35 + 1;
          *(v27 + v35 + 8) = v32;
          MessageIdentifierSet.index(_:offsetBy:)(v30, v31, 1);
          v30 = v36;
          v31 = v37;
          --v26;
          v23 = v33;
        }

        while (v26);
        a1 = v50;
        v10 = v57;
        v24 = v53;
        v21 = v54;
      }

      else
      {
        v27 = _swiftEmptyArrayStorage;
        a1 = v50;
        v10 = v57;
      }

      sub_100025F40(v23, &qword_1005DA290, &unk_1004F7540);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v8 = v48;
      v40 = v56;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v10 = sub_10035DC3C(0, v10[2] + 1, 1, v10);
      }

      v42 = v10[2];
      v41 = v10[3];
      if (v42 >= v41 >> 1)
      {
        v10 = sub_10035DC3C((v41 > 1), v42 + 1, 1, v10);
      }

      v7 = (v40 - 1) & v40;
      v10[2] = v42 + 1;
      v43 = &v10[4 * v42];
      v44 = v58;
      v43[4] = v21;
      v43[5] = v44;
      v43[6] = v24;
      v43[7] = v27;
      v9 = v55;
      v4 = v49;
      if (!v7)
      {
        goto LABEL_5;
      }
    }

LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    while (1)
    {
LABEL_5:
      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v11 >= v8)
      {
        break;
      }

      v7 = *(v4 + 8 * v11);
      ++v9;
      if (v7)
      {
        v57 = v10;
        v9 = v11;
        goto LABEL_9;
      }
    }

    if (v10[2])
    {
      sub_10000C9C0(&qword_1005DA298, &qword_1004F7550);
      v45 = sub_1004A6A74();
    }

    else
    {
      v45 = _swiftEmptyDictionarySingleton;
    }

    v60 = v45;

    sub_100346FE4(v46, 1, &v60);

    return v60;
  }

  return result;
}

uint64_t sub_100344FA0(unint64_t a1, uint64_t a2, void (*a3)(void), char **a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8)
{
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    sub_1003512F8(_swiftEmptyArrayStorage);
    a3();
  }

  if (a5 < 0)
  {
LABEL_110:
    __break(1u);
    goto LABEL_111;
  }

  v8 = a1 >> 62;
  v54 = a6;
  if (a1 >> 62)
  {
LABEL_111:
    v48 = sub_1004A6A34();
    result = sub_1004A6A34();
    if (result < 0)
    {
LABEL_122:
      __break(1u);
      return result;
    }

    if (v48 >= a5)
    {
      v49 = a5;
    }

    else
    {
      v49 = v48;
    }

    if (v48 < 0)
    {
      v49 = a5;
    }

    if (a5)
    {
      v18 = v49;
    }

    else
    {
      v18 = 0;
    }

    result = sub_1004A6A34();
    if (result >= v18)
    {
      goto LABEL_11;
    }

LABEL_121:
    __break(1u);
    goto LABEL_122;
  }

  result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result >= a5)
  {
    v17 = a5;
  }

  else
  {
    v17 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (a5)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  if (result < v18)
  {
    goto LABEL_121;
  }

LABEL_11:
  if ((a1 & 0xC000000000000001) != 0 && v18)
  {
    sub_10019A8E4(0, &qword_1005DA288, CSSearchableItem_ptr);

    v19 = 0;
    do
    {
      v20 = (v19 + 1);
      sub_1004A6774(v19);
      v19 = v20;
    }

    while (v18 != v20);
  }

  else
  {
  }

  v50 = a7;
  v52 = a3;
  if (v8)
  {

    sub_1004A6A44();
    a7 = v21;
    a3 = v22;
    v18 = (v23 >> 1);
  }

  else
  {
    a3 = 0;
    a7 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
  }

  v51 = a8;
  v53 = a4;
  swift_unknownObjectRetain();
  if (a3 == v18)
  {
    v55 = _swiftEmptyArrayStorage;
    goto LABEL_103;
  }

  v55 = _swiftEmptyArrayStorage;
  a4 = &selRef_primitiveMessageSize;
  a8 = a3;
  do
  {
    a5 = a8;
    while (1)
    {
      while (1)
      {
        if (a5 < a3 || a8 >= v18)
        {
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
          goto LABEL_110;
        }

        v24 = *(a7 + 8 * a8++);
        v25 = v24;
        v8 = [v25 uniqueIdentifier];
        a1 = sub_1004A5764();
        v27 = v26;

        v28 = HIBYTE(v27) & 0xF;
        v29 = a1 & 0xFFFFFFFFFFFFLL;
        if ((v27 & 0x2000000000000000) != 0 ? HIBYTE(v27) & 0xF : a1 & 0xFFFFFFFFFFFFLL)
        {
          break;
        }

        if (a8 == v18)
        {
          goto LABEL_103;
        }
      }

      if ((v27 & 0x1000000000000000) == 0)
      {
        if ((v27 & 0x2000000000000000) != 0)
        {
          v56[0] = a1;
          v56[1] = v27 & 0xFFFFFFFFFFFFFFLL;
          if (a1 == 43)
          {
            if (!v28)
            {
              goto LABEL_109;
            }

            if (--v28)
            {
              a1 = 0;
              v40 = v56 + 1;
              while (1)
              {
                v41 = *v40 - 48;
                if (v41 > 9)
                {
                  break;
                }

                if (!is_mul_ok(a1, 0xAuLL))
                {
                  break;
                }

                v35 = __CFADD__(10 * a1, v41);
                a1 = 10 * a1 + v41;
                if (v35)
                {
                  break;
                }

                ++v40;
                if (!--v28)
                {
                  goto LABEL_90;
                }
              }
            }
          }

          else if (a1 == 45)
          {
            if (!v28)
            {
              goto LABEL_108;
            }

            if (--v28)
            {
              a1 = 0;
              v36 = v56 + 1;
              while (1)
              {
                v37 = *v36 - 48;
                if (v37 > 9)
                {
                  break;
                }

                if (!is_mul_ok(a1, 0xAuLL))
                {
                  break;
                }

                v35 = 10 * a1 >= v37;
                a1 = 10 * a1 - v37;
                if (!v35)
                {
                  break;
                }

                ++v36;
                if (!--v28)
                {
                  goto LABEL_90;
                }
              }
            }
          }

          else if (v28)
          {
            a1 = 0;
            v43 = v56;
            while (1)
            {
              v44 = *v43 - 48;
              if (v44 > 9)
              {
                break;
              }

              if (!is_mul_ok(a1, 0xAuLL))
              {
                break;
              }

              v35 = __CFADD__(10 * a1, v44);
              a1 = 10 * a1 + v44;
              if (v35)
              {
                break;
              }

              ++v43;
              if (!--v28)
              {
                goto LABEL_90;
              }
            }
          }
        }

        else
        {
          if ((a1 & 0x1000000000000000) != 0)
          {
            v31 = ((v27 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v31 = sub_1004A67E4();
          }

          v32 = *v31;
          if (v32 == 43)
          {
            if (v29 < 1)
            {
              goto LABEL_106;
            }

            v28 = v29 - 1;
            if (v29 != 1)
            {
              a1 = 0;
              if (!v31)
              {
                goto LABEL_81;
              }

              v38 = v31 + 1;
              while (1)
              {
                v39 = *v38 - 48;
                if (v39 > 9)
                {
                  break;
                }

                if (!is_mul_ok(a1, 0xAuLL))
                {
                  break;
                }

                v35 = __CFADD__(10 * a1, v39);
                a1 = 10 * a1 + v39;
                if (v35)
                {
                  break;
                }

                ++v38;
                if (!--v28)
                {
                  goto LABEL_90;
                }
              }
            }
          }

          else if (v32 == 45)
          {
            if (v29 < 1)
            {
              goto LABEL_107;
            }

            v28 = v29 - 1;
            if (v29 != 1)
            {
              a1 = 0;
              if (v31)
              {
                v33 = v31 + 1;
                while (1)
                {
                  v34 = *v33 - 48;
                  if (v34 > 9)
                  {
                    goto LABEL_89;
                  }

                  if (!is_mul_ok(a1, 0xAuLL))
                  {
                    goto LABEL_89;
                  }

                  v35 = 10 * a1 >= v34;
                  a1 = 10 * a1 - v34;
                  if (!v35)
                  {
                    goto LABEL_89;
                  }

                  ++v33;
                  if (!--v28)
                  {
                    goto LABEL_90;
                  }
                }
              }

LABEL_81:
              LOBYTE(v28) = 0;
LABEL_90:
              v57 = v28;
              v8 = v28;
              goto LABEL_91;
            }
          }

          else
          {
            if (!v29)
            {
              goto LABEL_89;
            }

            a1 = 0;
            if (!v31)
            {
              goto LABEL_81;
            }

            while (1)
            {
              v42 = *v31 - 48;
              if (v42 > 9)
              {
                break;
              }

              if (!is_mul_ok(a1, 0xAuLL))
              {
                break;
              }

              v35 = __CFADD__(10 * a1, v42);
              a1 = 10 * a1 + v42;
              if (v35)
              {
                break;
              }

              ++v31;
              if (!--v29)
              {
                goto LABEL_81;
              }
            }
          }
        }

LABEL_89:
        a1 = 0;
        LOBYTE(v28) = 1;
        goto LABEL_90;
      }

      v57 = 0;
      a1 = sub_10010C818(a1, v27, 10);
      v8 = v45;
LABEL_91:

      if ((v8 & 1) == 0)
      {
        break;
      }

      if (a8 == v18)
      {
        goto LABEL_103;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v55 = sub_10035DB38(0, *(v55 + 2) + 1, 1, v55);
    }

    v8 = *(v55 + 2);
    v46 = *(v55 + 3);
    if (v8 >= v46 >> 1)
    {
      v55 = sub_10035DB38((v46 > 1), v8 + 1, 1, v55);
    }

    *(v55 + 2) = v8 + 1;
    *&v55[8 * v8 + 32] = a1;
  }

  while (a8 != v18);
LABEL_103:
  swift_unknownObjectRelease_n();
  v47 = sub_10036808C(v55);

  sub_1003455AC(v54, v50, v47, v51, v52, v53);
}

void sub_1003455AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v14 = *v6;
  v15 = v6[3];
  v16 = swift_allocObject();
  v16[2] = v7;
  v16[3] = a1;
  v16[4] = a2;
  v16[5] = a4;
  v16[6] = a3;
  v16[7] = a5;
  v16[8] = a6;
  v16[9] = v14;
  v18[4] = sub_100347850;
  v18[5] = v16;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 1107296256;
  v18[2] = sub_10019C778;
  v18[3] = &unk_1005B4EA0;
  v17 = _Block_copy(v18);

  [v15 performBlock:v17];
  _Block_release(v17);
}

uint64_t sub_100345710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v37 = a1;
  v35 = a4;
  v36 = a5;
  v34 = a3;
  v7 = sub_1004A4A74();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = swift_allocObject();
  *(v27 + 16) = _swiftEmptyArrayStorage;
  v33 = *(v8 + 16);
  v33(v10, a3, v7);
  v11 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v12 = (v9 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = v11;
  v32 = v12;
  v13 = (v12 + 23) & 0xFFFFFFFFFFFFFFF8;
  v14 = swift_allocObject();
  v30 = *(v8 + 32);
  v30(v14 + v11, v10, v7);
  v15 = (v14 + v12);
  *v15 = v37;
  v15[1] = a2;
  v28 = a2;
  v16 = v27;
  *(v14 + v13) = v27;
  v43 = sub_1003475C4;
  v44 = v14;
  aBlock = _NSConcreteStackBlock;
  v40 = 1107296256;
  v29 = &v41;
  v41 = sub_100346A9C;
  v42 = &unk_1005B4E00;
  v17 = _Block_copy(&aBlock);

  [v38 setFoundItemsHandler:v17];
  _Block_release(v17);
  v33(v10, v34, v7);
  v18 = swift_allocObject();
  v30(v18 + v31, v10, v7);
  v19 = (v18 + v32);
  v20 = v36;
  v21 = v28;
  *v19 = v37;
  v19[1] = v21;
  v22 = (v18 + v13);
  *v22 = v35;
  v22[1] = v20;
  *(v18 + ((v13 + 23) & 0xFFFFFFFFFFFFFFF8)) = v16;
  v43 = sub_10034773C;
  v44 = v18;
  aBlock = _NSConcreteStackBlock;
  v40 = 1107296256;
  v41 = sub_100346E74;
  v42 = &unk_1005B4E50;
  v23 = _Block_copy(&aBlock);

  v24 = v38;
  [v38 setCompletionHandler:v23];
  _Block_release(v23);
  [v24 start];
}

uint64_t sub_100345A78(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v59 = a7;
  v58 = a6;
  v57 = a1;
  v11 = sub_1004A5244();
  v64 = *(v11 - 8);
  v65 = v11;
  __chkstk_darwin(v11);
  v63 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1004A5274();
  v61 = *(v13 - 8);
  v62 = v13;
  __chkstk_darwin(v13);
  v60 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_10000C9C0(&qword_1005DA290, &unk_1004F7540);
  __chkstk_darwin(v69);
  v68 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v67 = &v53 - v17;
  v56 = a5;
  sub_100347864(a5);
  v19 = v18;
  v54 = a2;
  v55 = a3;
  v20 = sub_100347B40(a2, a3, a4, v18);

  v21 = *(v20 + 64);
  v66 = v20 + 64;
  v22 = 1 << *(v20 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & v21;
  v25 = (v22 + 63) >> 6;
  v70 = v20;

  v26 = 0;
  v27 = 0;
  do
  {
    if (!v24)
    {
      while (1)
      {
        v28 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          break;
        }

        if (v28 >= v25)
        {
          goto LABEL_13;
        }

        v24 = *(v66 + 8 * v28);
        ++v26;
        if (v24)
        {
          v74 = v27;
          v26 = v28;
          goto LABEL_10;
        }
      }

      __break(1u);
LABEL_20:
      swift_once();
LABEL_15:
      v40 = sub_1004A4A74();
      sub_1001C203C(v40, qword_1005DA1C0);
      v41 = v55;

      v42 = sub_1004A4A54();
      v43 = sub_1004A6014();

      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        aBlock[0] = v45;
        *v44 = 141558787;
        *(v44 + 4) = 1752392040;
        *(v44 + 12) = 2085;
        *(v44 + 14) = sub_10015BA6C(v54, v41, aBlock);
        *(v44 + 22) = 2048;
        *(v44 + 24) = *(v26 + 16);

        *(v44 + 32) = 2048;
        *(v44 + 34) = v27;
        _os_log_impl(&_mh_execute_header, v42, v43, "[%{sensitive,mask.hash}s] Spotlight returned %ld message IDs, but %ld messages found in database.", v44, 0x2Au);
        sub_1000197E0(v45);
      }

      else
      {
      }

      goto LABEL_18;
    }

    v74 = v27;
    v28 = v26;
LABEL_10:
    v29 = __clz(__rbit64(v24));
    v24 &= v24 - 1;
    v30 = v29 | (v28 << 6);
    v31 = *(v70 + 56);
    v32 = *(v70 + 48) + 32 * v30;
    v33 = *(v32 + 8);
    v72 = *v32;
    v34 = *(v32 + 16);
    v71 = *(v32 + 24);
    v73 = sub_10000C9C0(&unk_1005D91B0, &unk_1004CF400);
    v35 = v69;
    v36 = v67;
    sub_10000E268(v31 + *(*(v73 - 8) + 72) * v30, &v67[*(v69 + 48)], &unk_1005D91B0, &unk_1004CF400);
    *v36 = v72;
    *(v36 + 8) = v33;
    *(v36 + 16) = v34;
    *(v36 + 24) = v71;
    v37 = v68;
    sub_10000E268(v36, v68, &qword_1005DA290, &unk_1004F7540);

    v38 = *(v35 + 48);
    v39 = MessageIdentifierSet.count.getter();
    sub_100025F40(v36, &qword_1005DA290, &unk_1004F7540);
    sub_100025F40(v37 + v38, &unk_1005D91B0, &unk_1004CF400);
    v27 = v74 + v39;
  }

  while (!__OFADD__(v74, v39));
  __break(1u);
LABEL_13:

  v26 = v56;
  if (v27 != *(v56 + 16))
  {
    if (qword_1005D8788 == -1)
    {
      goto LABEL_15;
    }

    goto LABEL_20;
  }

LABEL_18:
  v46 = swift_allocObject();
  v47 = v59;
  v46[2] = v58;
  v46[3] = v47;
  v46[4] = v70;
  aBlock[4] = sub_1003484F8;
  aBlock[5] = v46;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10019C778;
  aBlock[3] = &unk_1005B4EF0;
  v48 = _Block_copy(aBlock);

  v49 = v60;
  sub_1004A5254();
  v75 = _swiftEmptyArrayStorage;
  sub_10022AAC8();
  sub_10000C9C0(&unk_1005D91A0, &unk_1004DDA60);
  sub_10022AB20();
  v50 = v63;
  v51 = v65;
  sub_1004A6544();
  sub_1004A6084();
  _Block_release(v48);
  (*(v64 + 8))(v50, v51);
  (*(v61 + 8))(v49, v62);
}

uint64_t sub_100346140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v47 = a5;
  v48 = a6;
  v43 = a3;
  v44 = a4;
  v8 = sub_1004A5244();
  v53 = *(v8 - 8);
  v54 = v8;
  __chkstk_darwin(v8);
  v51 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_1004A5274();
  v50 = *(v52 - 8);
  __chkstk_darwin(v52);
  v49 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = a1;

  v12 = sub_100368180(v11);
  v45 = a2;

  v13 = sub_10032F7C4(v12);

  aBlock[0] = _swiftEmptySetSingleton;
  if (v13 >> 62)
  {
    goto LABEL_24;
  }

  for (i = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1004A6A34())
  {
    v15 = 0;
    v55 = v13 & 0xFFFFFFFFFFFFFF8;
    v56 = v13 & 0xC000000000000001;
    while (1)
    {
      if (v56)
      {
        v16 = sub_1004A6794();
      }

      else
      {
        if (v15 >= *(v55 + 16))
        {
          goto LABEL_23;
        }

        v16 = *(v13 + 8 * v15 + 32);
      }

      v17 = v16;
      v18 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      v19 = [v16 objectID];
      v20 = [v19 entity];
      v21 = [v20 name];

      if (v21)
      {
        v22 = sub_1004A5764();
        v24 = v23;

        if (v22 == 0x786F626C69616DLL && v24 == 0xE700000000000000)
        {
        }

        else
        {
          v26 = sub_1004A6D34();

          if ((v26 & 1) == 0)
          {
            goto LABEL_4;
          }
        }

        if (![v19 isTemporaryID])
        {
          v27 = v19;
          sub_100362378(v58, v27);

          goto LABEL_5;
        }
      }

LABEL_4:

LABEL_5:
      ++v15;
      if (v18 == i)
      {
        v28 = aBlock[0];
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    ;
  }

  v28 = _swiftEmptySetSingleton;
LABEL_26:

  v29 = *(v45 + 16);
  if (v28[2] != v29)
  {
    if (qword_1005D8788 != -1)
    {
      swift_once();
    }

    v30 = sub_1004A4A74();
    sub_1001C203C(v30, qword_1005DA1C0);

    v31 = v44;

    v32 = sub_1004A4A54();
    v33 = sub_1004A6014();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      aBlock[0] = v35;
      *v34 = 141558787;
      *(v34 + 4) = 1752392040;
      *(v34 + 12) = 2085;
      *(v34 + 14) = sub_10015BA6C(v43, v31, aBlock);
      *(v34 + 22) = 2048;
      *(v34 + 24) = v28[2];

      *(v34 + 32) = 2048;
      *(v34 + 34) = v29;

      _os_log_impl(&_mh_execute_header, v32, v33, "[%{sensitive,mask.hash}s] Found %ld mailboxes for search request with %ld mailboxes.", v34, 0x2Au);
      sub_1000197E0(v35);
    }

    else
    {
    }
  }

  v36 = swift_allocObject();
  v37 = v48;
  v36[2] = v47;
  v36[3] = v37;
  v36[4] = v28;
  aBlock[4] = sub_1003473C4;
  aBlock[5] = v36;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10019C778;
  aBlock[3] = &unk_1005B4D10;
  v38 = _Block_copy(aBlock);

  v39 = v49;
  sub_1004A5254();
  v58[0] = _swiftEmptyArrayStorage;
  sub_10022AAC8();
  sub_10000C9C0(&unk_1005D91A0, &unk_1004DDA60);
  sub_10022AB20();
  v40 = v51;
  v41 = v54;
  sub_1004A6544();
  sub_1004A6084();
  _Block_release(v38);
  (*(v53 + 8))(v40, v41);
  (*(v50 + 8))(v39, v52);
}

uint64_t sub_10034675C(unint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v28[0] = _swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
    goto LABEL_23;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1004A6A34())
  {
    v26 = a4;
    v8 = 0;
    a4 = 0x80000001004A84B0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = sub_1004A6794();
      }

      else
      {
        if (v8 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v9 = *(a1 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v12 = [v9 attributeSet];
      v13 = [v12 bundleID];

      if (v13)
      {
        v14 = sub_1004A5764();
        v16 = v15;

        if (v14 == 0xD00000000000001DLL && 0x80000001004A84B0 == v16)
        {

LABEL_18:
          sub_1004A6814();
          sub_1004A68A4();
          sub_1004A68B4();
          sub_1004A6834();
          goto LABEL_5;
        }

        v18 = sub_1004A6D34();

        if (v18)
        {
          goto LABEL_18;
        }
      }

LABEL_5:
      ++v8;
      if (v11 == i)
      {
        v19 = v28[0];
        a4 = v26;
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    ;
  }

  v19 = _swiftEmptyArrayStorage;
LABEL_25:

  v20 = sub_1004A4A54();
  v21 = sub_1004A6034();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v28[0] = v23;
    *v22 = 141558531;
    *(v22 + 4) = 1752392040;
    *(v22 + 12) = 2085;
    *(v22 + 14) = sub_10015BA6C(a3, a4, v28);
    *(v22 + 22) = 2048;
    if ((v19 & 0x8000000000000000) != 0 || (v19 & 0x4000000000000000) != 0)
    {
      v24 = sub_1004A6A34();
    }

    else
    {
      v24 = *(v19 + 16);
    }

    *(v22 + 24) = v24;

    _os_log_impl(&_mh_execute_header, v20, v21, "[%{sensitive,mask.hash}s] Spotlight found %ld items.", v22, 0x20u);
    sub_1000197E0(v23);
  }

  else
  {
  }

  swift_beginAccess();
  sub_1003328DC(v19);
  return swift_endAccess();
}

uint64_t sub_100346A9C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  sub_10019A8E4(0, &qword_1005DA288, CSSearchableItem_ptr);
  v3 = sub_1004A5C14();

  v2(v3);
}

uint64_t sub_100346B20(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void (*a5)(__n128), uint64_t a6, uint64_t a7)
{
  if (a1)
  {
    swift_errorRetain();

    v10 = sub_1004A4A54();
    v11 = sub_1004A6014();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v25[0] = v14;
      *v12 = 141558531;
      *(v12 + 4) = 1752392040;
      *(v12 + 12) = 2085;
      *(v12 + 14) = sub_10015BA6C(a3, a4, v25);
      *(v12 + 22) = 2112;
      swift_errorRetain();
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 24) = v15;
      *v13 = v15;
      _os_log_impl(&_mh_execute_header, v10, v11, "[%{sensitive,mask.hash}s] Spotlight search could not be completed due to %@", v12, 0x20u);
      sub_100025F40(v13, &qword_1005D51A0, &qword_1004D0940);

      sub_1000197E0(v14);
    }

    (a5)(_swiftEmptyArrayStorage);
  }

  else
  {

    v18 = sub_1004A4A54();
    v19 = sub_1004A6034();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v25[0] = v21;
      *v20 = 141558531;
      *(v20 + 4) = 1752392040;
      *(v20 + 12) = 2085;
      *(v20 + 14) = sub_10015BA6C(a3, a4, v25);
      *(v20 + 22) = 2048;
      swift_beginAccess();
      v22 = *(a7 + 16);
      if (v22 >> 62)
      {
        v23 = sub_1004A6A34();
      }

      else
      {
        v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v20 + 24) = v23;

      _os_log_impl(&_mh_execute_header, v18, v19, "[%{sensitive,mask.hash}s] Spotlight completed with %ld results", v20, 0x20u);
      sub_1000197E0(v21);
    }

    else
    {
    }

    swift_beginAccess();

    (a5)(v24);
  }
}

void sub_100346E74(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_100346EE0()
{

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_100346F6C()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100346FCC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100346FE4(void *a1, char a2, void *a3)
{
  v36 = a1[2];
  if (!v36)
  {
  }

  v5 = a1[4];
  v6 = a1[5];
  v8 = a1[6];
  v7 = a1[7];
  v9 = *a3;

  v10 = sub_10035E248(v5, v6, v8);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  LOBYTE(v16) = v11;
  if (v9[3] < v15)
  {
    sub_10035FFE0(v15, a2 & 1);
    v10 = sub_10035E248(v5, v6, v8);
    if ((v16 & 1) == (v17 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v10 = sub_1004A6E24();
    __break(1u);
  }

  if (a2)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v19 = v10;
  sub_100361898();
  v10 = v19;
  if (v16)
  {
LABEL_8:
    swift_allocError();
    swift_willThrow();
    swift_errorRetain();
    sub_10000C9C0(&qword_1005D0460, &qword_1004D3CE0);
    if ((swift_dynamicCast() & 1) == 0)
    {
    }

    goto LABEL_26;
  }

LABEL_11:
  v20 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v21 = (v20[6] + 24 * v10);
  *v21 = v5;
  v21[1] = v6;
  v21[2] = v8;
  *(v20[7] + 8 * v10) = v7;
  v22 = v20[2];
  v14 = __OFADD__(v22, 1);
  v23 = v22 + 1;
  if (v14)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_1004A6724(30);
    v38._object = 0x80000001004AA380;
    v38._countAndFlagsBits = 0xD00000000000001BLL;
    sub_1004A5994(v38);
    sub_1004A6934();
    v39._countAndFlagsBits = 39;
    v39._object = 0xE100000000000000;
    sub_1004A5994(v39);
    result = sub_1004A69A4();
    __break(1u);
    return result;
  }

  v20[2] = v23;
  if (v36 != 1)
  {
    v16 = a1 + 11;
    v24 = 1;
    while (v24 < a1[2])
    {
      v5 = *(v16 - 3);
      v6 = *(v16 - 2);
      v8 = *(v16 - 1);
      v7 = *v16;
      v25 = *a3;

      v26 = sub_10035E248(v5, v6, v8);
      v28 = v25[2];
      v29 = (v27 & 1) == 0;
      v14 = __OFADD__(v28, v29);
      v30 = v28 + v29;
      if (v14)
      {
        goto LABEL_23;
      }

      a2 = v27;
      if (v25[3] < v30)
      {
        sub_10035FFE0(v30, 1);
        v26 = sub_10035E248(v5, v6, v8);
        if ((a2 & 1) != (v31 & 1))
        {
          goto LABEL_5;
        }
      }

      if (a2)
      {
        goto LABEL_8;
      }

      v32 = *a3;
      *(*a3 + 8 * (v26 >> 6) + 64) |= 1 << v26;
      v33 = (v32[6] + 24 * v26);
      *v33 = v5;
      v33[1] = v6;
      v33[2] = v8;
      *(v32[7] + 8 * v26) = v7;
      v34 = v32[2];
      v14 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v24;
      v32[2] = v35;
      v16 += 4;
      if (v36 == v24)
      {
      }
    }

    goto LABEL_25;
  }
}