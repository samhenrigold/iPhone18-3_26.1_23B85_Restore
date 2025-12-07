id NSManagedObjectID.managedEntityContextType.getter@<X0>(char *a1@<X8>)
{
  result = [v1 ic_isModernType];
  if (result)
  {
    v4 = 0;
  }

  else
  {
    result = [v1 ic_isLegacyType];
    if (result)
    {
      v4 = 1;
    }

    else
    {
      v4 = 2;
    }
  }

  *a1 = v4;
  return result;
}

uint64_t sub_21502D420(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 1819112552;
  }

  else
  {
    v3 = 0x6E7265646F6DLL;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (*a2)
  {
    v5 = 1819112552;
  }

  else
  {
    v5 = 0x6E7265646F6DLL;
  }

  if (*a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2150A6270();
  }

  return v8 & 1;
}

void sub_21502D4BC(char *a2@<X8>)
{
  v3 = sub_2150A5EE0();

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void sub_21502D51C(uint64_t *a1@<X8>)
{
  v2 = 1819112552;
  if (!*v1)
  {
    v2 = 0x6E7265646F6DLL;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_21502D550()
{
  sub_2150A64B0();
  sub_2150A4BB0();

  return sub_2150A64E0();
}

double sub_21502D5C8(uint64_t a1)
{
  sub_2150A4BB0();

  return result;
}

uint64_t sub_21502D62C()
{
  sub_2150A64B0();
  sub_2150A4BB0();

  return sub_2150A64E0();
}

uint64_t ManagedEntityContextType.description.getter()
{
  if (*v0)
  {
    return 1819112552;
  }

  else
  {
    return 0x6E7265646F6DLL;
  }
}

uint64_t sub_21502D6D0()
{
  if (*v0)
  {
    return 1819112552;
  }

  else
  {
    return 0x6E7265646F6DLL;
  }
}

unint64_t ManagedEntityContextType.debugDescription.getter()
{
  v1 = *v0;
  sub_2150A5B20();

  if (v1)
  {
    v2 = 1819112552;
  }

  else
  {
    v2 = 0x6E7265646F6DLL;
  }

  if (v1)
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE600000000000000;
  }

  MEMORY[0x2160617E0](v2, v3);

  return 0xD000000000000019;
}

unint64_t sub_21502D7A4()
{
  result = qword_27CA44178;
  if (!qword_27CA44178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA44178);
  }

  return result;
}

uint64_t FastSync.MessageVersion.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2150A6580();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v7, v7[3]);
    type metadata accessor for NotesVersion(0);
    sub_21502D910();
    sub_2150A6290();
    v5 = v7[6];
    __swift_destroy_boxed_opaque_existential_0(v7);
    *a2 = v5;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_21502D910()
{
  result = qword_27CA44180;
  if (!qword_27CA44180)
  {
    type metadata accessor for NotesVersion(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA44180);
  }

  return result;
}

uint64_t FastSync.MessageVersion.encode(to:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2150A65A0();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_2150A62C0();
  return __swift_destroy_boxed_opaque_existential_0(v2);
}

uint64_t sub_21502DA14(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2150A65A0();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_2150A62C0();
  return __swift_destroy_boxed_opaque_existential_0(v2);
}

unint64_t sub_21502DB18()
{
  result = qword_27CA44188;
  if (!qword_27CA44188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA44188);
  }

  return result;
}

uint64_t _s14MessageVersionVwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s14MessageVersionVwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

void sub_21502DBC4(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_2150A5980();
    sub_214D55670(0, &qword_27CA44A30, off_278192998);
    sub_214F737A4();
    sub_2150A5320();
    v1 = v21;
    v2 = v22;
    v3 = v23;
    v4 = v24;
    v5 = v25;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  v20 = MEMORY[0x277D84F90];
  while (v1 < 0)
  {
    if (!sub_2150A5A10() || (sub_214D55670(0, &qword_27CA44A30, off_278192998), swift_dynamicCast(), (v11 = v26) == 0))
    {
LABEL_24:
      sub_214F420F4(v1);
      return;
    }

LABEL_17:
    v12 = [v11 identifier];
    if (v12)
    {
      v13 = v12;
      v19 = sub_2150A4AD0();
      v15 = v14;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_21505F4D0(0, *(v20 + 2) + 1, 1, v20);
      }

      v17 = *(v20 + 2);
      v16 = *(v20 + 3);
      if (v17 >= v16 >> 1)
      {
        v20 = sub_21505F4D0((v16 > 1), v17 + 1, 1, v20);
      }

      *(v20 + 2) = v17 + 1;
      v18 = &v20[16 * v17];
      *(v18 + 4) = v19;
      *(v18 + 5) = v15;
    }

    else
    {
    }
  }

  v9 = v4;
  v10 = v5;
  if (v5)
  {
LABEL_13:
    v5 = (v10 - 1) & v10;
    v11 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v11)
    {
      goto LABEL_24;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v4 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_24;
    }

    v10 = *(v2 + 8 * v4);
    ++v9;
    if (v10)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t sub_21502DE5C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41D40, &unk_2150C7230);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v24 - v4;
  v6 = sub_2150A3750();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v12);
  v26 = &v24 - v13;
  v14 = *(a1 + 16);
  v28 = MEMORY[0x277D84F90];
  sub_214F86FCC(0, v14, 0);
  v15 = v28;
  if (v14)
  {
    v16 = a1 + 32;
    v24 = v5;
    v25 = (v7 + 56);
    v17 = (v7 + 32);
    while (1)
    {
      sub_214F50074(v16, v27);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      (*v25)(v5, 0, 1, v6);
      v18 = *v17;
      v19 = v26;
      (*v17)(v26, v5, v6);
      v18(v11, v19, v6);
      v28 = v15;
      v20 = v11;
      v22 = *(v15 + 16);
      v21 = *(v15 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_214F86FCC((v21 > 1), v22 + 1, 1);
        v15 = v28;
      }

      *(v15 + 16) = v22 + 1;
      v18((v15 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v22), v20, v6);
      v16 += 32;
      --v14;
      v11 = v20;
      v5 = v24;
      if (!v14)
      {
        return v15;
      }
    }

    (*v25)(v5, 1, 1, v6);
    sub_214F302D4(v5, &qword_27CA41D40, &unk_2150C7230);
    return 0;
  }

  return v15;
}

uint64_t sub_21502E120(unint64_t a1)
{
  v8 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  sub_2150A5CE0();
  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2150A59D0())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x216062780](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v4 = *(a1 + 8 * j + 32);
      }

      v5 = v4;
      v6 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {

        return 0;
      }

      sub_2150A5CB0();
      sub_2150A5CF0();
      sub_2150A5D00();
      sub_2150A5CC0();
      if (v6 == i)
      {
        return v8;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    sub_2150A59D0();
    sub_2150A5CE0();
  }

  return v8;
}

uint64_t sub_21502E288()
{
  v0 = sub_2150A3F30();
  __swift_allocate_value_buffer(v0, qword_27CA44190);
  v1 = __swift_project_value_buffer(v0, qword_27CA44190);
  if (qword_27CA415C8 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27CA42B10);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t NotesDataType.hashValue.getter()
{
  v1 = *v0;
  sub_2150A64B0();
  MEMORY[0x216063080](v1);
  return sub_2150A64E0();
}

uint64_t NotesDataObject.title.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t NotesDataObject.created.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for NotesDataObject(0) + 20);

  return sub_214F5D4A4(v3, a1);
}

uint64_t type metadata accessor for NotesDataObject(uint64_t a1)
{
  result = qword_27CA441E8;
  if (!qword_27CA441E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t NotesDataObject.modified.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for NotesDataObject(0) + 24);

  return sub_214F5D4A4(v3, a1);
}

uint64_t NotesDataObject.identifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for NotesDataObject(0) + 28));

  return v1;
}

uint64_t NotesDataObject.contentString.getter()
{
  v1 = *(v0 + *(type metadata accessor for NotesDataObject(0) + 32));

  return v1;
}

uint64_t NotesDataObject.spotlightID.getter()
{
  v1 = *(v0 + *(type metadata accessor for NotesDataObject(0) + 36));

  return v1;
}

uint64_t NotesDataObject.type.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for NotesDataObject(0);
  *a1 = *(v1 + *(result + 40));
  return result;
}

uint64_t NotesDataObject.children.getter()
{
  type metadata accessor for NotesDataObject(0);
}

id NotesDataManager.init(managedObjectContext:)(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC11NotesShared16NotesDataManager_didStartSharedContext;
  v1[OBJC_IVAR____TtC11NotesShared16NotesDataManager_didStartSharedContext] = 0;
  if (a1)
  {
    *&v1[OBJC_IVAR____TtC11NotesShared16NotesDataManager_context] = a1;
LABEL_13:
    v15.receiver = v1;
    v15.super_class = type metadata accessor for NotesDataManager();
    return objc_msgSendSuper2(&v15, sel_init);
  }

  v3 = [objc_opt_self() sharedContext];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 managedObjectContext];

    if (v5)
    {
      *&v1[OBJC_IVAR____TtC11NotesShared16NotesDataManager_context] = v5;
      goto LABEL_13;
    }
  }

  if (qword_27CA41768 != -1)
  {
    swift_once();
  }

  v6 = swift_beginAccess();
  v7 = qword_27CA441A8;
  if (qword_27CA441A8)
  {
    swift_endAccess();
    v8 = v7;
LABEL_12:
    v11 = v7;
    v12 = [v8 managedObjectContext];

    *&v1[OBJC_IVAR____TtC11NotesShared16NotesDataManager_context] = v12;
    v1[v2] = 1;
    goto LABEL_13;
  }

  v9 = v1;
  qword_27CA441B0(&v16, v6);
  v10 = v16;
  qword_27CA441A8 = v16;
  swift_endAccess();
  if (v10)
  {
    v8 = v10;
    v7 = 0;
    v1 = v9;
    goto LABEL_12;
  }

  sub_215030504();
  swift_allocError();
  *v14 = 5;
  swift_willThrow();
  type metadata accessor for NotesDataManager();
  return swift_deallocPartialClassInstance();
}

void sub_21502E838(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC11NotesShared16NotesDataManager_context);
  type metadata accessor for NotesDataObject(0);
  v4 = v3;
  sub_2150A56D0();
}

void sub_21502E8CC(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC11NotesShared16NotesDataManager_context;
  v3 = [*(a1 + OBJC_IVAR____TtC11NotesShared16NotesDataManager_context) persistentStoreCoordinator];
  if (v3)
  {
    v4 = v3;
    v5 = sub_2150A4A90();
    v6 = [v4 ic:v5 managedObjectIDForURIString:?];

    if (v6)
    {
      v7 = [*(a1 + v2) ic:v6 existingObjectWithID:?];
      if (v7)
      {
        v9 = *(a1 + v2);
        v10 = MEMORY[0x28223BE20](v7, v8);
        type metadata accessor for NotesDataObject(0);
        v11 = v9;
        sub_2150A56D0();
      }

      else
      {
        sub_215030504();
        swift_allocError();
        *v14 = 3;
        swift_willThrow();
      }
    }

    else
    {
      sub_215030504();
      swift_allocError();
      *v13 = 2;
      swift_willThrow();
    }
  }

  else
  {
    sub_215030504();
    swift_allocError();
    *v12 = 1;
    swift_willThrow();
  }
}

uint64_t sub_21502EAD4(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC11NotesShared16NotesDataManager_context);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA441D8, &qword_2150CAF18);
  sub_2150A56D0();

  return v4;
}

void sub_21502EB60(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v6 = MEMORY[0x277D84F90];
  v5 = a2;
  sub_215030B84(a1, &v6, v5);

  *a3 = v6;
}

void sub_21502EBD4(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v7 = type metadata accessor for NotesDataObject(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v25[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = *a1;
  v12 = a1[1];
  v14 = *(a3 + OBJC_IVAR____TtC11NotesShared16NotesDataManager_context);
  v26 = a3;
  v27 = v13;
  v28 = v12;
  v15 = v14;
  sub_2150A56D0();
  if (v3)
  {

    if (qword_27CA41760 != -1)
    {
      swift_once();
    }

    v16 = sub_2150A3F30();
    __swift_project_value_buffer(v16, qword_27CA44190);

    v17 = sub_2150A3F10();
    v18 = sub_2150A5560();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v29 = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_214F7723C(v13, v12, &v29);
      _os_log_impl(&dword_214D51000, v17, v18, "failed to get Notes data object: %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x216064AF0](v20, -1, -1);
      MEMORY[0x216064AF0](v19, -1, -1);
    }
  }

  else
  {

    v21 = *a2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v21 = sub_2150604E8(0, v21[2] + 1, 1, v21);
      *a2 = v21;
    }

    v24 = v21[2];
    v23 = v21[3];
    if (v24 >= v23 >> 1)
    {
      v21 = sub_2150604E8((v23 > 1), v24 + 1, 1, v21);
      *a2 = v21;
    }

    v21[2] = v24 + 1;
    sub_2150309AC(v11, v21 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v24);
  }
}

void sub_21502EEA0(uint64_t a1, char a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC11NotesShared16NotesDataManager_context);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA441D8, &qword_2150CAF18);
  sub_2150A56D0();
}

void sub_21502EF3C(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v41 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44208, &unk_2150CB0F0);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = (&v39 - v9);
  v11 = type metadata accessor for NotesDataObject(0);
  v44 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11, v12);
  v48 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v15);
  v43 = &v39 - v16;
  v17 = objc_opt_self();
  v18 = OBJC_IVAR____TtC11NotesShared16NotesDataManager_context;
  v19 = [v17 predicateForVisibleNotesInContext_];
  v20 = [objc_opt_self() sortDescriptorsForType:(a2 & 1) == 0 ascending:1];
  if (!v20)
  {
    sub_214D55670(0, &qword_27CA44210, 0x277CCAC98);
    sub_2150A4ED0();
    v20 = sub_2150A4EB0();
  }

  sub_214D55670(0, &qword_27CA43100, off_278192E00);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v22 = *(a1 + v18);
  v23 = v19;
  v24 = [ObjCClassFromMetadata ic:v23 objectsMatchingPredicate:v20 sortDescriptors:0 relationshipKeyPathsForPrefetching:a3 fetchLimit:v22 context:?];

  sub_214D55670(0, &qword_27CA43228, 0x277CBE438);
  v25 = sub_2150A4ED0();

  v26 = sub_21502E120(v25);

  if (v26)
  {
    v27 = (v26 & 0xFFFFFFFFFFFFFF8);
    if (v26 >> 62)
    {
      goto LABEL_26;
    }

    for (i = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_2150A59D0())
    {
      v29 = v47;
      v40 = v23;
      if (!i)
      {
        break;
      }

      v30 = 0;
      v47 = v26 & 0xC000000000000001;
      v23 = (v44 + 48);
      v31 = MEMORY[0x277D84F90];
      v45 = i;
      v46 = v27;
      v42 = v26;
      while (1)
      {
        if (v47)
        {
          v32 = MEMORY[0x216062780](v30, v26);
        }

        else
        {
          if (v30 >= v27[2])
          {
            goto LABEL_25;
          }

          v32 = *(v26 + 8 * v30 + 32);
        }

        v27 = v32;
        v33 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
          break;
        }

        v49 = v32;
        v34 = v29;
        sub_21502F3DC(&v49, v10);

        if ((*v23)(v10, 1, v11) == 1)
        {
          sub_214F302D4(v10, &qword_27CA44208, &unk_2150CB0F0);
        }

        else
        {
          v35 = v43;
          sub_2150309AC(v10, v43);
          sub_2150309AC(v35, v48);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v31 = sub_2150604E8(0, v31[2] + 1, 1, v31);
          }

          v37 = v31[2];
          v36 = v31[3];
          if (v37 >= v36 >> 1)
          {
            v31 = sub_2150604E8((v36 > 1), v37 + 1, 1, v31);
          }

          v31[2] = v37 + 1;
          sub_2150309AC(v48, v31 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v37);
          v29 = v34;
          v26 = v42;
        }

        ++v30;
        v27 = v46;
        if (v33 == v45)
        {
          goto LABEL_23;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      ;
    }

    v31 = MEMORY[0x277D84F90];
LABEL_23:

    *v41 = v31;
  }

  else
  {
    sub_215030504();
    swift_allocError();
    *v38 = 3;
    swift_willThrow();
  }
}

uint64_t sub_21502F3DC@<X0>(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD0, &unk_2150C2740);
  v7 = MEMORY[0x28223BE20](v5 - 8, v6);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v51 - v11;
  v13 = *a1;
  v14 = [*a1 attachments];
  if (v14)
  {
    v15 = v14;
    sub_214D55670(0, &qword_27CA44A30, off_278192998);
    sub_214F737A4();
    v16 = sub_2150A52E0();

    sub_21502DBC4(v16);
    v53 = v17;
  }

  else
  {
    v53 = MEMORY[0x277D84F90];
  }

  v18 = [v13 title];
  if (v18)
  {
    v19 = v18;
    v20 = sub_2150A4AD0();
    v51 = v21;
    v52 = v20;
  }

  else
  {
    v51 = 0;
    v52 = 0;
  }

  v22 = [v13 creationDate];
  if (v22)
  {
    v23 = v22;
    sub_2150A3930();

    v24 = sub_2150A3960();
    (*(*(v24 - 8) + 56))(v12, 0, 1, v24);
  }

  else
  {
    v25 = sub_2150A3960();
    (*(*(v25 - 8) + 56))(v12, 1, 1, v25);
  }

  v26 = [v13 modificationDate];
  if (v26)
  {
    v27 = v26;
    sub_2150A3930();

    v28 = 0;
  }

  else
  {
    v28 = 1;
  }

  v54 = v12;
  v29 = sub_2150A3960();
  (*(*(v29 - 8) + 56))(v9, v28, 1, v29);
  v30 = [v13 identifier];
  v55 = v2;
  if (v30)
  {
    v31 = v30;
    v32 = v9;
    v33 = sub_2150A4AD0();
    v35 = v34;
  }

  else
  {
    v32 = v9;
    v33 = 0;
    v35 = 0;
  }

  v36 = [v13 searchableString];
  v37 = [v36 string];

  v38 = sub_2150A4AD0();
  v40 = v39;

  v41 = [v13 searchIndexingIdentifier];
  v42 = sub_2150A4AD0();
  v44 = v43;

  v45 = v51;
  *a2 = v52;
  a2[1] = v45;
  v46 = type metadata accessor for NotesDataObject(0);
  sub_214F71500(v54, a2 + v46[5]);
  sub_214F71500(v32, a2 + v46[6]);
  v47 = (a2 + v46[7]);
  *v47 = v33;
  v47[1] = v35;
  v48 = (a2 + v46[8]);
  *v48 = v38;
  v48[1] = v40;
  v49 = (a2 + v46[9]);
  *v49 = v42;
  v49[1] = v44;
  *(a2 + v46[10]) = 0;
  *(a2 + v46[11]) = v53;
  return (*(*(v46 - 1) + 56))(a2, 0, 1, v46);
}

void sub_21502F7D8(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC11NotesShared16NotesDataManager_context);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA441D8, &qword_2150CAF18);
  sub_2150A56D0();
}

void sub_21502F86C(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v50 = a2;
  v39 = a3;
  v45 = type metadata accessor for NotesDataObject(0);
  v43 = *(v45 - 8);
  v5 = MEMORY[0x28223BE20](v45, v4);
  v48 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v44 = &v39 - v9;
  MEMORY[0x28223BE20](v8, v10);
  v42 = &v39 - v11;
  v51 = MEMORY[0x277D84F90];
  v12 = (a1 & 0xFFFFFFFFFFFFFF8);
  if (a1 >> 62)
  {
LABEL_34:
    v13 = sub_2150A59D0();
  }

  else
  {
    v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = 0;
  v15 = OBJC_IVAR____TtC11NotesShared16NotesDataManager_context;
  v46 = MEMORY[0x277D84F90];
  while (v13 != v14)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v16 = MEMORY[0x216062780](v14, a1);
    }

    else
    {
      if (v14 >= v12[2])
      {
        goto LABEL_31;
      }

      v16 = *(a1 + 8 * v14 + 32);
    }

    v17 = v16;
    v18 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v19 = [*(v50 + v15) ic:v16 existingObjectWithID:?];

    ++v14;
    if (v19)
    {
      MEMORY[0x216061A60]();
      if (*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v51 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2150A4F10();
      }

      sub_2150A4F70();
      v46 = v51;
      v14 = v18;
    }
  }

  v20 = v46;
  if (v46 >> 62)
  {
    v38 = v46;
    a1 = sub_2150A59D0();
    v20 = v38;
    if (a1)
    {
      goto LABEL_16;
    }
  }

  else
  {
    a1 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (a1)
    {
LABEL_16:
      v21 = 0;
      v40 = v20 & 0xFFFFFFFFFFFFFF8;
      v41 = v20 & 0xC000000000000001;
      v22 = MEMORY[0x277D84F90];
      while (1)
      {
        if (v41)
        {
          v23 = MEMORY[0x216062780](v21, v20);
        }

        else
        {
          if (v21 >= *(v40 + 16))
          {
            goto LABEL_33;
          }

          v23 = *(v20 + 8 * v21 + 32);
        }

        v25 = v23;
        if (__OFADD__(v21, 1))
        {
          goto LABEL_32;
        }

        v47 = v21 + 1;
        v26 = v15;
        v27 = a1;
        v28 = v26;
        MEMORY[0x28223BE20](v23, v24);
        v12 = &v39 - 4;
        *(&v39 - 2) = v25;
        v30 = v29;
        v31 = v44;
        v32 = v49;
        sub_2150A56D0();
        v49 = v32;
        if (v32)
        {

          return;
        }

        v33 = v42;
        sub_2150309AC(v31, v42);
        sub_2150309AC(v33, v48);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = sub_2150604E8(0, v22[2] + 1, 1, v22);
        }

        a1 = v27;
        v35 = v22[2];
        v34 = v22[3];
        v15 = v28;
        if (v35 >= v34 >> 1)
        {
          v22 = sub_2150604E8((v34 > 1), v35 + 1, 1, v22);
        }

        v37 = v47;
        v36 = v48;
        v22[2] = v35 + 1;
        sub_2150309AC(v36, v22 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v35);
        ++v21;
        v20 = v46;
        if (v37 == a1)
        {
          goto LABEL_37;
        }
      }
    }
  }

  v22 = MEMORY[0x277D84F90];
LABEL_37:

  *v39 = v22;
}

uint64_t sub_21502FCAC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD0, &unk_2150C2740);
  v7 = MEMORY[0x28223BE20](v5 - 8, v6);
  v9 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v7, v10);
  v13 = &v80 - v12;
  v15 = MEMORY[0x28223BE20](v11, v14);
  v17 = &v80 - v16;
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v80 - v19;
  objc_opt_self();
  v21 = swift_dynamicCastObjCClass();
  if (v21)
  {
    v22 = v21;
    v87 = a1;
    v23 = a1;
    v24 = [v22 attachments];
    if (v24)
    {
      v25 = v24;
      sub_214D55670(0, &qword_27CA44A30, off_278192998);
      sub_214F737A4();
      v26 = sub_2150A52E0();

      sub_21502DBC4(v26);
      v85 = v27;
    }

    else
    {
      v85 = MEMORY[0x277D84F90];
    }

    v34 = [v22 title];
    if (v34)
    {
      v35 = v34;
      v81 = sub_2150A4AD0();
      v86 = v36;
    }

    else
    {
      v81 = 0;
      v86 = 0;
    }

    v37 = [v22 creationDate];
    if (v37)
    {
      v38 = v37;
      sub_2150A3930();

      v39 = sub_2150A3960();
      (*(*(v39 - 8) + 56))(v20, 0, 1, v39);
    }

    else
    {
      v40 = sub_2150A3960();
      (*(*(v40 - 8) + 56))(v20, 1, 1, v40);
    }

    v41 = [v22 modificationDate];
    if (v41)
    {
      v42 = v41;
      sub_2150A3930();

      v43 = 0;
    }

    else
    {
      v43 = 1;
    }

    v44 = sub_2150A3960();
    (*(*(v44 - 8) + 56))(v17, v43, 1, v44);
    v45 = [v22 identifier];
    v88 = v2;
    if (v45)
    {
      v46 = v45;
      v47 = sub_2150A4AD0();
      v83 = v48;
      v84 = v47;
    }

    else
    {
      v83 = 0;
      v84 = 0;
    }

    v49 = [v22 searchableString];
    v50 = [v49 string];

    v82 = 0;
  }

  else
  {
    objc_opt_self();
    v28 = swift_dynamicCastObjCClass();
    if (!v28)
    {
      sub_215030504();
      swift_allocError();
      *v51 = 4;
      return swift_willThrow();
    }

    v22 = v28;
    v87 = a1;
    v29 = a1;
    v30 = [v22 title];
    if (v30)
    {
      v31 = v30;
      v32 = sub_2150A4AD0();
      v86 = v33;
    }

    else
    {
      v32 = 0;
      v86 = 0;
    }

    v53 = [v22 creationDate];
    if (v53)
    {
      v54 = v53;
      sub_2150A3930();

      v55 = sub_2150A3960();
      (*(*(v55 - 8) + 56))(v13, 0, 1, v55);
    }

    else
    {
      v56 = sub_2150A3960();
      (*(*(v56 - 8) + 56))(v13, 1, 1, v56);
    }

    v57 = [v22 modificationDate];
    if (v57)
    {
      v58 = v57;
      sub_2150A3930();

      v59 = 0;
    }

    else
    {
      v59 = 1;
    }

    v60 = sub_2150A3960();
    (*(*(v60 - 8) + 56))(v9, v59, 1, v60);
    v61 = [v22 identifier];
    v88 = v2;
    if (v61)
    {
      v62 = v61;
      v63 = sub_2150A4AD0();
      v83 = v64;
      v84 = v63;
    }

    else
    {
      v83 = 0;
      v84 = 0;
    }

    v65 = [v22 additionalIndexableText];
    if (v65)
    {
      v50 = v65;
      v81 = v32;
      v85 = MEMORY[0x277D84F90];
      v82 = 1;
    }

    else
    {
      v66 = [v22 summary];
      v85 = MEMORY[0x277D84F90];
      v82 = 1;
      if (!v66)
      {
        v67 = 0;
        v69 = 0;
        goto LABEL_38;
      }

      v50 = v66;
      v81 = v32;
    }

    v20 = v13;
    v17 = v9;
  }

  v67 = sub_2150A4AD0();
  v69 = v68;

  v13 = v20;
  v9 = v17;
  v32 = v81;
LABEL_38:
  v70 = [v22 searchIndexingIdentifier];
  v71 = sub_2150A4AD0();
  v73 = v72;

  v74 = v86;
  *a2 = v32;
  a2[1] = v74;
  v75 = type metadata accessor for NotesDataObject(0);
  sub_214F71500(v13, a2 + v75[5]);
  result = sub_214F71500(v9, a2 + v75[6]);
  v76 = (a2 + v75[7]);
  v77 = v83;
  *v76 = v84;
  v76[1] = v77;
  v78 = (a2 + v75[8]);
  *v78 = v67;
  v78[1] = v69;
  v79 = (a2 + v75[9]);
  *v79 = v71;
  v79[1] = v73;
  *(a2 + v75[10]) = v82;
  *(a2 + v75[11]) = v85;
  return result;
}

id NotesDataManager.__deallocating_deinit(id a1)
{
  if (v1[OBJC_IVAR____TtC11NotesShared16NotesDataManager_didStartSharedContext] == 1)
  {
    [objc_opt_self() clearSharedContext];
  }

  v3.receiver = v1;
  v3.super_class = type metadata accessor for NotesDataManager();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id NotesDataManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void sub_2150304E0()
{
  qword_27CA441A8 = 0;
  qword_27CA441B0 = sub_215030A10;
  qword_27CA441B8 = 0;
}

unint64_t sub_215030504()
{
  result = qword_27CA441C8;
  if (!qword_27CA441C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA441C8);
  }

  return result;
}

unint64_t sub_2150305FC()
{
  result = qword_27CA441E0;
  if (!qword_27CA441E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA441E0);
  }

  return result;
}

void sub_215030688(uint64_t a1)
{
  sub_215030774(319, &qword_280C23178, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_214F938E4(319);
    if (v2 <= 0x3F)
    {
      sub_215030774(319, &qword_27CA441F8, MEMORY[0x277D83940]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_215030774(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D837D0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_21503093C()
{
  result = qword_27CA44200;
  if (!qword_27CA44200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA44200);
  }

  return result;
}

uint64_t sub_2150309AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NotesDataObject(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_215030A10@<X0>(uint64_t *a1@<X8>)
{
  result = sub_215030A38();
  *a1 = result;
  return result;
}

void *sub_215030A38()
{
  v0 = objc_opt_self();
  [v0 startSharedContextWithOptions_];
  v1 = [v0 sharedContext];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 databaseOpenError];
    if (!v3)
    {
      return v2;
    }

    v4 = v3;
  }

  if (qword_27CA41760 != -1)
  {
    swift_once();
  }

  v5 = sub_2150A3F30();
  __swift_project_value_buffer(v5, qword_27CA44190);
  v6 = sub_2150A3F10();
  v7 = sub_2150A5560();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_214D51000, v6, v7, "Cannot create modern note context for Spotlight export — returning nil and exiting shortly", v8, 2u);
    MEMORY[0x216064AF0](v8, -1, -1);
  }

  return 0;
}

void sub_215030B84(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    for (i = (a1 + 40); ; i += 2)
    {
      v8 = *i;
      v9[0] = *(i - 1);
      v9[1] = v8;

      sub_21502EBD4(v9, a2, a3);
      if (v3)
      {
        break;
      }

      if (!--v4)
      {
        return;
      }
    }
  }
}

uint64_t FastSync.MessageContainer.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2150A3A00();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t FastSync.MessageContainer.init(messages:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  _s10Foundation4UUIDV11NotesSharedE15defaultArgumentACvgZ_0();
  result = type metadata accessor for FastSync.MessageContainer(0, a2, v6, v7);
  *(a3 + *(result + 32)) = a1;
  *(a3 + *(result + 28)) = 11;
  return result;
}

uint64_t FastSync.MessageContainer.init<A>(message:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44218, &qword_2150CB100);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_2150C25D0;
  *(v10 + 56) = a3;
  *(v10 + 64) = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v10 + 32));
  v17 = *(a3 - 8);
  (*(v17 + 16))(boxed_opaque_existential_1, a1, a3);
  *(v10 + 72) = 0;
  _s10Foundation4UUIDV11NotesSharedE15defaultArgumentACvgZ_0();
  v14 = type metadata accessor for FastSync.MessageContainer(0, a2, v12, v13);
  *(a5 + *(v14 + 32)) = v10;
  *(a5 + *(v14 + 28)) = 11;
  v15 = *(v17 + 8);

  return v15(a1, a3);
}

__n128 FastSync.MessageContainer.append<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *&v17[8] = a3;
  *&v17[16] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v16);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a1, a3);
  v17[24] = 0;
  v9 = *(a2 + 32);
  v10 = *(v4 + v9);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = sub_21505FE30(0, v10[2] + 1, 1, v10);
  }

  v12 = v10[2];
  v11 = v10[3];
  if (v12 >= v11 >> 1)
  {
    v10 = sub_21505FE30((v11 > 1), v12 + 1, 1, v10);
  }

  v10[2] = v12 + 1;
  v13 = &v10[6 * v12];
  result = v16;
  v15 = *v17;
  *(v13 + 57) = *&v17[9];
  *(v13 + 2) = result;
  *(v13 + 3) = v15;
  *(v4 + v9) = v10;
  return result;
}

unint64_t FastSync.MessageContainer.subscript.getter@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v4 = *(v3 + *(a2 + 32));
    if (*(v4 + 16) > result)
    {
      return sub_215032F04(v4 + 48 * result + 32, a3);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_215031004(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC700](a1, a2, WitnessTable, v5);
}

uint64_t sub_21503108C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = FastSync.MessageContainer.count.getter(a1);
  *a2 = result;
  return result;
}

uint64_t (*sub_2150310B4(uint64_t **a1, unint64_t *a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_215031184(v6, *a2, a3);
  return sub_21503113C;
}

void sub_21503113C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

void (*sub_215031184(uint64_t *a1, unint64_t a2, uint64_t a3))(uint64_t *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x29uLL);
  }

  *a1 = v6;
  FastSync.MessageContainer.subscript.getter(a2, a3, v6);
  return sub_215031210;
}

void sub_215031210(uint64_t *a1)
{
  v1 = *a1;
  sub_215032FE0(*a1);

  free(v1);
}

void *sub_215031250()
{
  swift_getWitnessTable();

  return sub_2150A53B0();
}

uint64_t sub_215031348(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC6F8](a1, a2, WitnessTable, v5);
}

uint64_t sub_2150313D0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t, uint64_t, void))
{
  v8 = *a1;
  WitnessTable = swift_getWitnessTable();
  return a4(&v8, a2, WitnessTable, MEMORY[0x277D83BC8]);
}

uint64_t sub_215031448@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  (*(*(a1 - 8) + 32))(a2, v3, a1);
  swift_getWitnessTable();
  result = sub_2150A5DD0();
  *(a2 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_2150314D4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC7A8](a1, WitnessTable);
}

uint64_t sub_215031528(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();
  v4 = sub_2150331F8(v1, a1, WitnessTable);
  (*(*(a1 - 8) + 8))(v1, a1);
  return v4;
}

unint64_t sub_2150315B4(uint64_t a1, uint64_t a2)
{
  v2 = sub_2150A5EE0();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_215031608(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837F8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_21503167C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_2150316E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_215031758(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

unint64_t sub_2150317C8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2150315B4(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_215031800@<X0>(uint64_t *a1@<X8>)
{
  result = sub_214D79008(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_21503183C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_215031600(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_215031868@<X0>(_BYTE *a2@<X8>)
{
  result = sub_215033D9C();
  *a2 = result;
  return result;
}

uint64_t sub_215031894(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_2150318E8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t FastSync.MessageContainer.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v57 = a3;
  v61 = sub_2150A3A00();
  v60 = *(v61 - 8);
  MEMORY[0x28223BE20](v61, v5);
  v64 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s16MessageContainerV10CodingKeysOMa(255, a2, v7, v8);
  swift_getWitnessTable();
  v9 = sub_2150A5FE0();
  v10 = *(v9 - 8);
  v62 = v9;
  v63 = v10;
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v53 - v12;
  v59 = a2;
  v16 = type metadata accessor for FastSync.MessageContainer(0, a2, v14, v15);
  v58 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16, v17);
  v20 = &v53 - v19;
  v21 = *(v18 + 32);
  *&v21[&v53 - v19] = MEMORY[0x277D84F90];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v22 = v72;
  sub_2150A6590();
  if (v22)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v23 = v60;
  v55 = v21;
  v72 = v16;
  v56 = v20;
  LOBYTE(v67) = 0;
  sub_214FA94F4(&qword_27CA43008, MEMORY[0x277CC9618]);
  v24 = v61;
  sub_2150A5FC0();
  v26 = v56;
  (*(v23 + 32))(v56, v64, v24);
  LOBYTE(v65) = 2;
  sub_215032F8C();
  sub_2150A5FC0();
  *&v26[*(v72 + 28)] = v67;
  LOBYTE(v67) = 1;
  sub_2150A5F00();
  v61 = v13;
  __swift_project_boxed_opaque_existential_1(v70, v71);
  result = sub_2150A6120();
  v54 = a1;
  if (v27)
  {
    v28 = MEMORY[0x277D84F90];
    v29 = v55;
  }

  else
  {
    v30 = v55;
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v28 = sub_21505FE30(0, ((result + 1) / 2) & ~((result + 1 + ((result + 1) >> 63)) >> 63), 0, MEMORY[0x277D84F90]);
    v29 = v30;
    *&v30[v56] = v28;
  }

  __swift_project_boxed_opaque_existential_1(v70, v71);
  if ((sub_2150A6150() & 1) == 0)
  {
    v53 = "' that isn't a FastSyncMessage.";
    v60 = "' does not exist.";
    v55 = "Tried to decode type '";
    v64 = "didStartSharedContext";
    while (1)
    {
      __swift_mutable_project_boxed_opaque_existential_1(v70, v71);
      v34 = sub_2150A6130();
      v36 = v35;
      v37 = sub_2150A5B30();
      if (!v37)
      {
        break;
      }

      v38 = v37;

      v39 = swift_conformsToProtocol2();
      if (!v39)
      {
        v67 = 0;
        v68 = 0xE000000000000000;
        sub_2150A5B20();
        MEMORY[0x2160617E0](0xD000000000000016, v60 | 0x8000000000000000);
        v43 = sub_2150A6670();
        MEMORY[0x2160617E0](v43);

        v42 = 0xD00000000000001FLL;
        v44 = &v74;
        goto LABEL_19;
      }

      v40 = v39;
      if ((sub_215033274(v38, v39) & 1) == 0)
      {
        v67 = 0;
        v68 = 0xE000000000000000;
        sub_2150A5B20();
        MEMORY[0x2160617E0](0x6E697463656A6552, 0xEA00000000002067);
        v45 = sub_2150A6670();
        MEMORY[0x2160617E0](v45);

        v42 = 0xD000000000000029;
        v44 = &v73;
LABEL_19:
        v41 = *(v44 - 32) | 0x8000000000000000;
LABEL_20:
        MEMORY[0x2160617E0](v42, v41);
        sub_2150A5C20();
        v46 = swift_allocError();
        sub_2150A5BE0();

        v67 = v46;
        v69 = 1;
        __swift_mutable_project_boxed_opaque_existential_1(v70, v71);
        UnkeyedDecodingContainer.skip(count:)(1);
        goto LABEL_21;
      }

      __swift_mutable_project_boxed_opaque_existential_1(v70, v71);
      *&v66[8] = v38;
      *&v66[16] = v40;
      __swift_allocate_boxed_opaque_existential_1(&v65);
      sub_2150A6140();
      sub_214F6163C(&v65, &v67);
      v69 = 0;
      __swift_destroy_boxed_opaque_existential_0(&v65);
LABEL_21:
      v31 = v56;
      v47 = v28;
      sub_215032F04(&v67, &v65);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v47 = sub_21505FE30(0, v28[2] + 1, 1, v28);
      }

      v49 = v47[2];
      v48 = v47[3];
      if (v49 >= v48 >> 1)
      {
        v47 = sub_21505FE30((v48 > 1), v49 + 1, 1, v47);
      }

      sub_215032FE0(&v67);
      v47[2] = v49 + 1;
      v50 = &v47[6 * v49];
      v51 = v65;
      v52 = *v66;
      *(v50 + 57) = *&v66[9];
      v50[2] = v51;
      v50[3] = v52;
      v28 = v47;
      *&v29[v31] = v47;
      __swift_project_boxed_opaque_existential_1(v70, v71);
      if (sub_2150A6150())
      {
        goto LABEL_10;
      }
    }

    v67 = 0;
    v68 = 0xE000000000000000;
    sub_2150A5B20();

    v67 = 0x272065707954;
    v68 = 0xE600000000000000;
    MEMORY[0x2160617E0](v34, v36);

    v41 = v64 | 0x8000000000000000;
    v42 = 0xD000000000000011;
    goto LABEL_20;
  }

  v31 = v56;
LABEL_10:
  (*(v63 + 8))(v61, v62);
  __swift_destroy_boxed_opaque_existential_0(v70);
  v32 = v58;
  v33 = v72;
  (*(v58 + 16))(v57, v31, v72);
  __swift_destroy_boxed_opaque_existential_0(v54);
  return (*(v32 + 8))(v31, v33);
}

uint64_t FastSync.MessageContainer.encode(to:)(void *a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = *(a2 + 16);
  _s16MessageContainerV10CodingKeysOMa(255, v50, a3, a4);
  swift_getWitnessTable();
  v8 = sub_2150A60C0();
  MEMORY[0x28223BE20](v8, v9);
  v12 = v43 - v11;
  if (*(*(v4 + *(a2 + 32)) + 16))
  {
    v47 = a2;
    v48 = v5;
    v49 = v10;
    v13 = v4;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2150A65B0();
    LOBYTE(v51[0]) = 0;
    sub_2150A3A00();
    sub_214FA94F4(&qword_280C241B8, MEMORY[0x277CC95F8]);
    v14 = v12;
    v15 = v48;
    sub_2150A60A0();
    if (v15)
    {
      return (*(v49 + 8))(v12, v8);
    }

    else
    {
      v16 = v47;
      *&v51[0] = *(v13 + *(v47 + 28));
      LOBYTE(v55) = 2;
      sub_215033380();
      sub_2150A60A0();
      v43[1] = 0;
      LOBYTE(v51[0]) = 1;
      v45 = v8;
      v44 = v14;
      sub_2150A6000();
      v29 = *(v13 + *(v16 + 32));
      v30 = *(v29 + 16);
      if (v30)
      {
        v31 = v29 + 32;
        v47 = "SyncMessageContainer.swift";
        *&v28 = 136315650;
        v46 = v28;
        do
        {
          sub_215032F04(v31, v51);
          if (v53)
          {
            v32 = *&v51[0];
            v57 = *&v51[0];
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD8, &unk_2150C2A90);
            swift_willThrowTypedImpl();
            v33 = v32;
            if (qword_280C23230 != -1)
            {
              swift_once();
            }

            v34 = sub_2150A3F30();
            __swift_project_value_buffer(v34, qword_280C23238);
            v35 = sub_2150A5570();
            v36 = sub_2150A3F10();
            if (os_log_type_enabled(v36, v35))
            {
              v37 = swift_slowAlloc();
              v48 = swift_slowAlloc();
              v54[0] = v48;
              *v37 = v46;
              v38 = sub_2150A5B70();
              v40 = sub_214F7723C(v38, v39, v54);

              *(v37 + 4) = v40;
              *(v37 + 12) = 2048;
              *(v37 + 14) = 190;
              *(v37 + 22) = 2080;
              *&v51[0] = 0;
              *(&v51[0] + 1) = 0xE000000000000000;
              sub_2150A5B20();
              MEMORY[0x2160617E0](0xD000000000000037, v47 | 0x8000000000000000);
              v57 = v32;
              sub_2150A5DB0();
              v41 = sub_214F7723C(*&v51[0], *(&v51[0] + 1), v54);

              *(v37 + 24) = v41;
              _os_log_impl(&dword_214D51000, v36, v35, "Failed assertion at %s:%lu: %s", v37, 0x20u);
              v42 = v48;
              swift_arrayDestroy();
              MEMORY[0x216064AF0](v42, -1, -1);
              MEMORY[0x216064AF0](v37, -1, -1);
            }
          }

          else
          {
            sub_214D7A458(v51, v54);
            sub_2150333D4(v54, &v55);
            __swift_destroy_boxed_opaque_existential_0(v54);
          }

          v31 += 48;
          --v30;
        }

        while (v30);
      }

      __swift_destroy_boxed_opaque_existential_0(&v55);
      return (*(v49 + 8))(v44, v45);
    }
  }

  else
  {
    if (qword_280C23230 != -1)
    {
      swift_once();
    }

    v18 = sub_2150A3F30();
    __swift_project_value_buffer(v18, qword_280C23238);
    v19 = sub_2150A5570();
    v20 = sub_2150A3F10();
    if (os_log_type_enabled(v20, v19))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v54[0] = v22;
      *v21 = 136315650;
      v23 = sub_2150A5B70();
      v25 = sub_214F7723C(v23, v24, v54);

      *(v21 + 4) = v25;
      *(v21 + 12) = 2048;
      *(v21 + 14) = 176;
      *(v21 + 22) = 2080;
      v55 = 0;
      v56 = 0xE000000000000000;
      memset(v51, 0, sizeof(v51));
      v52 = 7;
      sub_2150A5DB0();
      v26 = sub_214F7723C(v55, v56, v54);

      *(v21 + 24) = v26;
      _os_log_impl(&dword_214D51000, v20, v19, "Failed assertion at %s:%lu: %s", v21, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x216064AF0](v22, -1, -1);
      MEMORY[0x216064AF0](v21, -1, -1);
    }

    sub_215003804();
    swift_allocError();
    *v27 = 0u;
    *(v27 + 16) = 0u;
    *(v27 + 32) = 7;
    return swift_willThrow();
  }
}

uint64_t FastSync.MessageContainer.description.getter(uint64_t a1)
{
  sub_2150A5B20();
  v3 = sub_2150A6670();

  MEMORY[0x2160617E0](1029990696, 0xE400000000000000);
  sub_2150A3A00();
  sub_214FA94F4(&qword_280C24850, MEMORY[0x277CC9628]);
  v4 = sub_2150A6100();
  MEMORY[0x2160617E0](v4);

  MEMORY[0x2160617E0](0x6F6973726576202CLL, 0xEA00000000003D6ELL);
  v5 = sub_2150A6100();
  MEMORY[0x2160617E0](v5);

  MEMORY[0x2160617E0](0x746C75736572202CLL, 0xEA00000000003D73);
  v6 = *(v1 + *(a1 + 32));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44220, &qword_2150CD120);
  v8 = MEMORY[0x216061AA0](v6, v7);
  MEMORY[0x2160617E0](v8);

  MEMORY[0x2160617E0](41, 0xE100000000000000);
  return v3;
}

unint64_t sub_215032B44@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v46 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v12 = a5;
  v16 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v17 = HIBYTE(a6) & 0xF) : (v17 = a5 & 0xFFFFFFFFFFFFLL), !v17))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v16 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v16 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    v8 = sub_2150A4D40();
    v12 = v31;
    v13 = v32;
    v14 = v33;

    v15 = sub_21505FD24(0, 1, 1, MEMORY[0x277D84F90]);
    v10 = *(v15 + 16);
    a7 = *(v15 + 24);
LABEL_39:
    v11 = v10 + 1;
    if (v10 < a7 >> 1)
    {
LABEL_40:
      *(v15 + 16) = v11;
      v37 = (v15 + 32 * v10);
      v37[4] = v8;
      v37[5] = v12;
      v37[6] = v13;
      v37[7] = v14;
      return v15;
    }

LABEL_43:
    v15 = sub_21505FD24((a7 > 1), v11, 1, v15);
    goto LABEL_40;
  }

  v8 = a4;
  v18 = 4 * v17;
  v15 = MEMORY[0x277D84F90];
  v19 = 15;
  while (1)
  {
    v14 = v19 >> 14;
    if (v19 >> 14 == v18)
    {
      goto LABEL_33;
    }

    v42 = v15;
    v40 = a1;
    while (2)
    {
      v43 = v19;
      v15 = v19;
      while (1)
      {
        v20 = sub_2150A4D10();
        v13 = v21;
        v45[0] = v20;
        v45[1] = v21;
        v22 = v46(v45);
        if (v9)
        {

          return v15;
        }

        v23 = v22;

        if (v23)
        {
          break;
        }

        v15 = sub_2150A4BD0();
        v14 = v15 >> 14;
        if (v15 >> 14 == v18)
        {
          v15 = v42;
          v19 = v43;
          goto LABEL_33;
        }
      }

      result = v43;
      if (v43 >> 14 == v14 && (a2 & 1) != 0)
      {
        v19 = sub_2150A4BD0();
        v14 = v19 >> 14;
        if (v19 >> 14 != v18)
        {
          continue;
        }

        v15 = v42;
LABEL_33:
        if (v19 >> 14 == v18 && (a2 & 1) != 0)
        {

          return v15;
        }

        if (v18 < v19 >> 14)
        {
          __break(1u);
        }

        else
        {
          v8 = sub_2150A4D40();
          v12 = v34;
          v13 = v35;
          v14 = v36;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v10 = *(v15 + 16);
            a7 = *(v15 + 24);
            goto LABEL_39;
          }
        }

        v15 = sub_21505FD24(0, *(v15 + 16) + 1, 1, v15);
        goto LABEL_38;
      }

      break;
    }

    if (v14 < v43 >> 14)
    {
      break;
    }

    v25 = sub_2150A4D40();
    v44 = v26;
    v38 = v28;
    v39 = v27;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v42 = sub_21505FD24(0, *(v42 + 2) + 1, 1, v42);
    }

    v14 = *(v42 + 2);
    v29 = *(v42 + 3);
    v13 = v14 + 1;
    if (v14 >= v29 >> 1)
    {
      v42 = sub_21505FD24((v29 > 1), v14 + 1, 1, v42);
    }

    *(v42 + 2) = v13;
    v30 = &v42[32 * v14];
    *(v30 + 4) = v25;
    *(v30 + 5) = v44;
    *(v30 + 6) = v39;
    *(v30 + 7) = v38;
    v15 = v42;
    v19 = sub_2150A4BD0();
    a1 = v40;
    if (*(v42 + 2) == v40)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_215032F04(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44220, &qword_2150CD120);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_215032F8C()
{
  result = qword_27CA44228;
  if (!qword_27CA44228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA44228);
  }

  return result;
}

uint64_t sub_215032FE0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44220, &qword_2150CD120);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_215033048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t), uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  result = sub_2150A4A40();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v13 = a5(0, AssociatedTypeWitness, AssociatedConformanceWitness);
  result = a6(a1, a2 + *(v13 + 36), AssociatedTypeWitness, AssociatedConformanceWitness);
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_21503312C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = sub_2150A4A40();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  sub_2150A54D0();
  result = sub_2150A4A40();
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_2150331FC(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v6 = a5 & 0xFFFFFFFFFFFFLL;
  }

  if (a3 == a5 && a4 == a6 && !(a1 >> 16) && a2 >> 16 == v6)
  {
    return 1;
  }

  else
  {
    return sub_2150A60F0() & 1;
  }
}

uint64_t sub_215033274(uint64_t a1, unint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44360, &qword_2150CB598);
  v2 = sub_2150A4B50();
  v12[0] = 46;
  v12[1] = 0xE100000000000000;
  v11[2] = v12;
  v4 = sub_215032B44(0x7FFFFFFFFFFFFFFFLL, 1, sub_214F73280, v11, v2, v3, 0x2EuLL);
  if (v4[2])
  {
    v5 = v4[4];
    v6 = v4[5];
    v7 = v4[6];
    v8 = v4[7];

    v9 = sub_2150331FC(v5, v6, v7, v8, 0x6168537365746F4ELL, 0xEB00000000646572);
  }

  else
  {

    v9 = 0;
  }

  return v9 & 1;
}

unint64_t sub_215033380()
{
  result = qword_27CA44230;
  if (!qword_27CA44230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA44230);
  }

  return result;
}

void sub_2150333D4(void *a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  swift_getDynamicType();
  sub_2150A5DE0();
  if (v4)
  {
    __swift_mutable_project_boxed_opaque_existential_1(a2, *(a2 + 24));
    sub_2150A6200();

    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    __swift_mutable_project_boxed_opaque_existential_1(a2, *(a2 + 24));
    sub_2150A6210();
  }

  else
  {
    if (qword_280C23230 != -1)
    {
      swift_once();
    }

    v5 = sub_2150A3F30();
    __swift_project_value_buffer(v5, qword_280C23238);
    v6 = sub_2150A5570();
    log = sub_2150A3F10();
    if (os_log_type_enabled(log, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v15 = v8;
      *v7 = 136315650;
      v9 = sub_2150A5B70();
      v11 = sub_214F7723C(v9, v10, &v15);

      *(v7 + 4) = v11;
      *(v7 + 12) = 2048;
      *(v7 + 14) = 199;
      *(v7 + 22) = 2080;
      sub_2150A5B20();
      MEMORY[0x2160617E0](0xD000000000000033, 0x80000002150E7510);
      v12 = sub_2150A6670();
      MEMORY[0x2160617E0](v12);

      v13 = sub_214F7723C(0, 0xE000000000000000, &v15);

      *(v7 + 24) = v13;
      _os_log_impl(&dword_214D51000, log, v6, "Failed assertion at %s:%lu: %s", v7, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x216064AF0](v8, -1, -1);
      MEMORY[0x216064AF0](v7, -1, -1);
    }

    else
    {
    }
  }
}

unint64_t sub_2150339B0()
{
  result = qword_27CA44240;
  if (!qword_27CA44240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA44240);
  }

  return result;
}

uint64_t sub_215033B78(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA42760, &qword_2150C3ED8);
    sub_2150339B0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_215033C28(uint64_t a1)
{
  sub_2150A3A00();
  if (v1 <= 0x3F)
  {
    sub_215033CDC(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_215033CDC(uint64_t a1)
{
  if (!qword_27CA442D8[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA44220, &qword_2150CD120);
    v1 = sub_2150A4FD0();
    if (!v2)
    {
      atomic_store(v1, qword_27CA442D8);
    }
  }
}

uint64_t sub_215033DB8()
{
  v0 = sub_2150A3F30();
  __swift_allocate_value_buffer(v0, qword_27CA44368);
  v1 = __swift_project_value_buffer(v0, qword_27CA44368);
  if (qword_280C23250 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280C23258);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t SiriTranscriptionMethod.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  v1 = OBJC_IVAR____TtC11NotesShared23SiriTranscriptionMethod_transcriptionContinuation;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44388, &qword_2150CB5A0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  return v0;
}

uint64_t SiriTranscriptionMethod.init()()
{
  *(v0 + 16) = 0;
  v1 = OBJC_IVAR____TtC11NotesShared23SiriTranscriptionMethod_transcriptionContinuation;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44388, &qword_2150CB5A0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  return v0;
}

uint64_t SiriTranscriptionMethod.prepareForTranscription()(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E50, &qword_2150C3710);
  v2[4] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44390, &qword_2150CB5B8);
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44398, &qword_2150CB5C0);
  v2[8] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA443A0, &qword_2150CB5C8);
  v2[9] = v4;
  v5 = *(v4 - 8);
  v2[10] = v5;
  v2[11] = *(v5 + 64);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_215034144, 0, 0);
}

uint64_t sub_215034144()
{
  v1 = v0[3];
  v2 = [objc_allocWithZone(type metadata accessor for SiriSpeechRecognitionManager(0)) init];
  v3 = *(v1 + 16);
  *(v1 + 16) = v2;

  v4 = *(v1 + 16);
  v0[14] = v4;
  if (v4)
  {
    v4;
    v5 = swift_task_alloc();
    v0[15] = v5;
    *v5 = v0;
    v5[1] = sub_2150342C0;
    v6 = v0[8];

    return sub_215051E98(v6);
  }

  else
  {
    v8 = v0[8];
    (*(v0[10] + 56))(v8, 1, 1, v0[9]);
    sub_214F302D4(v8, &qword_27CA44398, &qword_2150CB5C0);
    v9 = swift_task_alloc();
    v0[17] = v9;
    *v9 = v0;
    v9[1] = sub_215034654;

    return SiriTranscriptionMethod.finishTranscription()();
  }
}

uint64_t sub_2150342C0()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = sub_215034894;
  }

  else
  {

    v3 = sub_2150343DC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2150343DC()
{
  v1 = v0[13];
  v2 = v0[10];
  v16 = v0[12];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[4];
  v8 = v0[5];
  v14 = v0[3];
  (*(v2 + 56))(v3, 0, 1, v4);
  v15 = *(v2 + 32);
  v15(v1, v3, v4);
  type metadata accessor for TranscriptionUpdate(0);
  (*(v5 + 104))(v6, *MEMORY[0x277D85778], v8);
  sub_2150A5180();
  v9 = sub_2150A5120();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  (*(v2 + 16))(v16, v1, v4);
  v10 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = 0;
  *(v11 + 3) = 0;
  *(v11 + 4) = v14;
  v15(&v11[v10], v16, v4);

  sub_214FD26AC(0, 0, v7, &unk_2150CB5D8, v11);

  (*(v2 + 8))(v1, v4);

  v12 = v0[1];

  return v12();
}

uint64_t sub_215034654()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_2150347CC, 0, 0);
  }
}

uint64_t sub_2150347CC()
{
  sub_214F4810C();
  swift_allocError();
  *v1 = 15;
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_215034894()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t SiriTranscriptionMethod.finishTranscription()()
{
  v1[8] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA443A8, &qword_2150CB5E8);
  v1[9] = swift_task_alloc();
  v1[10] = type metadata accessor for TranscriptionUpdate(0);
  v1[11] = swift_task_alloc();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44388, &qword_2150CB5A0);
  v1[12] = v2;
  v1[13] = *(v2 - 8);
  v1[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA443B0, &qword_2150CB5F0);
  v1[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_215034AA4, 0, 0);
}

uint64_t sub_215034AA4()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[8];
  v4 = OBJC_IVAR____TtC11NotesShared23SiriTranscriptionMethod_transcriptionContinuation;
  v0[16] = OBJC_IVAR____TtC11NotesShared23SiriTranscriptionMethod_transcriptionContinuation;
  swift_beginAccess();
  v5 = *(v2 + 48);
  v0[17] = v5;
  v0[18] = (v2 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v6 = 1;
  if (!v5(v3 + v4, 1, v1))
  {
    v7 = v0[14];
    v8 = v0[12];
    v9 = v0[13];
    v10 = v0[11];
    (*(v9 + 16))(v7, v3 + v4, v8);
    *v10 = 1;
    swift_storeEnumTagMultiPayload();
    sub_2150A5140();
    (*(v9 + 8))(v7, v8);
    v6 = 0;
  }

  v11 = v0[15];
  v12 = v0[8];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA443B8, &qword_2150CB5F8);
  (*(*(v13 - 8) + 56))(v11, v6, 1, v13);
  sub_214F302D4(v11, &qword_27CA443B0, &qword_2150CB5F0);
  v14 = *(v12 + 16);
  v0[19] = v14;
  if (v14)
  {
    v14;
    v15 = swift_task_alloc();
    v0[20] = v15;
    *v15 = v0;
    v15[1] = sub_215034DCC;

    return sub_21505385C();
  }

  else
  {
    v17 = v0[17];
    v18 = v0[16];
    v19 = v0[12];
    v20 = v0[8];
    *(v20 + 16) = 0;
    if (!v17(v20 + v18, 1, v19))
    {
      v22 = v0[13];
      v21 = v0[14];
      v23 = v0[12];
      (*(v22 + 16))(v21, v0[8] + v0[16], v23);
      sub_2150A5150();
      (*(v22 + 8))(v21, v23);
    }

    v24 = v0[16];
    v26 = v0[8];
    v25 = v0[9];
    (*(v0[13] + 56))(v25, 1, 1, v0[12]);
    swift_beginAccess();
    sub_215037BF0(v25, v26 + v24);
    swift_endAccess();

    v27 = v0[1];

    return v27();
  }
}

uint64_t sub_215034DCC()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v3 = sub_215035048;
  }

  else
  {

    v3 = sub_215034EE8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_215034EE8()
{
  v1 = v0[8];
  v2 = *(v1 + 16);
  v3 = v0[17];
  v4 = v0[16];
  v5 = v0[12];
  *(v1 + 16) = 0;

  if (!v3(v1 + v4, 1, v5))
  {
    v7 = v0[13];
    v6 = v0[14];
    v8 = v0[12];
    (*(v7 + 16))(v6, v0[8] + v0[16], v8);
    sub_2150A5150();
    (*(v7 + 8))(v6, v8);
  }

  v9 = v0[16];
  v11 = v0[8];
  v10 = v0[9];
  (*(v0[13] + 56))(v10, 1, 1, v0[12]);
  swift_beginAccess();
  sub_215037BF0(v10, v11 + v9);
  swift_endAccess();

  v12 = v0[1];

  return v12();
}

uint64_t sub_215035048()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t SiriTranscriptionMethod.receiveAudio(_:)(uint64_t *a1)
{
  v3 = *a1;
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_215035104, 0, 0);
}

uint64_t sub_215035104()
{
  v1 = *(v0[2] + 16);
  if (v1)
  {
    v2 = v0[3];
    v3 = v1;
    sub_215053424(v2);
  }

  v4 = v0[1];

  return v4();
}

uint64_t sub_2150351A8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E50, &qword_2150C3710);
  v3[5] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44390, &qword_2150CB5B8);
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41EE8, &qword_2150C2B00);
  v3[9] = swift_task_alloc();
  v5 = sub_2150A3750();
  v3[10] = v5;
  v3[11] = *(v5 - 8);
  v3[12] = swift_task_alloc();
  sub_2150A4120();
  v3[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41EF8, &unk_2150C2B10);
  v3[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43C90, &unk_2150C90D0);
  v3[15] = swift_task_alloc();
  v6 = sub_2150A3AC0();
  v3[16] = v6;
  v3[17] = *(v6 - 8);
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_215035448, 0, 0);
}

uint64_t sub_215035448(uint64_t a1)
{
  if (ICInternalSettingsDisableGASRAvailabilityCheck())
  {
    sub_2150A3A10();
  }

  else
  {
    sub_2150A3A70();
  }

  v2 = v1[14];
  v3 = v1[15];
  v33 = v1[11];
  v35 = v1[10];
  v36 = v1[12];
  v37 = v1[9];
  v34 = v1[3];
  (*(v1[17] + 16))();
  v4 = *MEMORY[0x277CDCE30];
  v5 = sub_2150A42A0();
  v6 = *(v5 - 8);
  (*(v6 + 104))(v3, v4, v5);
  (*(v6 + 56))(v3, 0, 1, v5);
  v7 = sub_2150A4130();
  (*(*(v7 - 8) + 56))(v2, 1, 1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41F00, &unk_2150CB670);
  v8 = sub_2150A4140();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_2150C25D0;
  (*(v9 + 104))(v11 + v10, *MEMORY[0x277CDCAB0], v8);
  sub_214F803B8(v11);
  swift_setDeallocating();
  (*(v9 + 8))(v11 + v10, v8);
  swift_deallocClassInstance();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41F08, &unk_2150C2B20);
  v12 = sub_2150A4290();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_2150C25D0;
  (*(v13 + 104))(v15 + v14, *MEMORY[0x277CDCDB0], v12);
  sub_214F806D8(v15);
  swift_setDeallocating();
  (*(v13 + 8))(v15 + v14, v12);
  swift_deallocClassInstance();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41F10, &unk_2150CB680);
  v16 = sub_2150A41A0();
  v17 = *(v16 - 8);
  v18 = *(v17 + 72);
  v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_2150C29B0;
  v21 = v20 + v19;
  v22 = *(v17 + 104);
  v22(v21, *MEMORY[0x277CDCB08], v16);
  v22(v21 + v18, *MEMORY[0x277CDCB10], v16);
  v22(v21 + 2 * v18, *MEMORY[0x277CDCB28], v16);
  sub_21505578C(v20);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_2150A41E0();
  swift_allocObject();
  v23 = sub_2150A41C0();
  v1[20] = v23;
  sub_2150A40E0();
  sub_2150A4110();
  (*(v33 + 16))(v36, v34, v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43C98, &unk_2150C90E0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2150C25D0;
  v25 = sub_215037DE0();
  *(v24 + 32) = v23;
  *(v24 + 40) = v25;
  v26 = sub_2150A4250();
  (*(*(v26 - 8) + 56))(v37, 1, 1, v26);
  sub_2150A4240();
  swift_allocObject();

  v27 = sub_2150A4230();
  v28 = swift_task_alloc();
  v1[21] = v28;
  *v28 = v1;
  v28[1] = sub_215035A84;
  v29 = v1[12];
  v30 = v1[13];
  v31 = v1[9];

  return MEMORY[0x28212BC08](v30, v29, v24, v31, 0, v27, 0, 0);
}

uint64_t sub_215035A84(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v3[22] = a1;
  v3[23] = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_215035F3C, 0, 0);
  }

  else
  {
    v5 = swift_task_alloc();
    v3[24] = v5;
    *v5 = v4;
    v5[1] = sub_215035C08;

    return MEMORY[0x28212BBF0]();
  }
}

uint64_t sub_215035C08()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_215036044;
  }

  else
  {
    v2 = sub_215035D1C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_215035D1C()
{
  v1 = v0[20];
  v2 = v0[17];
  v13 = v0[19];
  v12 = v0[16];
  v3 = v0[8];
  v4 = v0[6];
  v5 = v0[7];
  v7 = v0[4];
  v6 = v0[5];
  type metadata accessor for TranscriptionUpdate(0);
  (*(v5 + 104))(v3, *MEMORY[0x277D85778], v4);
  sub_2150A5180();
  v8 = sub_2150A5120();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v7;
  v9[5] = v1;

  sub_215051880(0, 0, v6, &unk_2150CB698, v9);

  (*(v2 + 8))(v13, v12);

  v10 = v0[1];

  return v10();
}

uint64_t sub_215035F3C()
{
  v1 = v0[19];
  v2 = v0[17];
  v3 = v0[16];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_215036044()
{

  v1 = v0[19];
  v3 = v0[16];
  v2 = v0[17];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_215036154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v6 = sub_2150A4190();
  v5[11] = v6;
  v5[12] = *(v6 - 8);
  v5[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E98, &unk_2150C2AE0);
  v5[14] = swift_task_alloc();
  v5[15] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41EA0, &unk_2150C90C0);
  v5[16] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41EA8, &unk_2150C2AF0);
  v5[17] = v7;
  v5[18] = *(v7 - 8);
  v5[19] = swift_task_alloc();
  v5[20] = type metadata accessor for TranscriptionUpdate(0);
  v5[21] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44388, &qword_2150CB5A0);
  v5[22] = v8;
  v5[23] = *(v8 - 8);
  v5[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA443B0, &qword_2150CB5F0);
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();
  v5[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2150363D8, 0, 0);
}

uint64_t sub_2150363D8()
{
  v1 = v0[22];
  v2 = v0[23];
  v3 = v0[9];
  v4 = OBJC_IVAR____TtC11NotesShared23SiriTranscriptionMethod_transcriptionContinuation;
  v0[28] = OBJC_IVAR____TtC11NotesShared23SiriTranscriptionMethod_transcriptionContinuation;
  swift_beginAccess();
  v5 = *(v2 + 48);
  v0[29] = v5;
  v0[30] = (v2 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v6 = 1;
  if (!v5(v3 + v4, 1, v1))
  {
    v8 = v0[23];
    v7 = v0[24];
    v10 = v0[21];
    v9 = v0[22];
    (*(v8 + 16))(v7, v3 + v4, v9);
    *v10 = 0;
    swift_storeEnumTagMultiPayload();
    sub_2150A5140();
    (*(v8 + 8))(v7, v9);
    v6 = 0;
  }

  v11 = v0[27];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA443B8, &qword_2150CB5F8);
  (*(*(v12 - 8) + 56))(v11, v6, 1, v12);
  sub_214F302D4(v11, &qword_27CA443B0, &qword_2150CB5F0);
  sub_2150A41B0();
  v0[31] = swift_getOpaqueTypeConformance2();
  sub_2150A5220();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v14 = swift_task_alloc();
  v0[32] = v14;
  *v14 = v0;
  v14[1] = sub_215036640;
  v15 = v0[17];
  v16 = v0[14];

  return MEMORY[0x282200310](v16, 0, 0, v0 + 8, v15, AssociatedConformanceWitness);
}

uint64_t sub_215036640()
{

  if (v0)
  {
    v1 = sub_215036DBC;
  }

  else
  {
    v1 = sub_215036750;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_215036750()
{
  v1 = v0[14];
  v2 = v0[11];
  v3 = v0[12];
  v4 = (*(v3 + 48))(v1, 1, v2);
  v5 = v0[29];
  v6 = v0[28];
  v7 = v0[22];
  if (v4 == 1)
  {
    v8 = v0[9];
    (*(v0[18] + 8))(v0[19], v0[17]);
    v9 = 1;
    if (!v5(v8 + v6, 1, v7))
    {
      v11 = v0[23];
      v10 = v0[24];
      v13 = v0[21];
      v12 = v0[22];
      (*(v11 + 16))(v10, v0[9] + v0[28], v12);
      *v13 = 1;
      swift_storeEnumTagMultiPayload();
      sub_2150A5140();
      (*(v11 + 8))(v10, v12);
      v9 = 0;
    }

    v14 = v0[26];
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA443B8, &qword_2150CB5F8);
    (*(*(v15 - 8) + 56))(v14, v9, 1, v15);
    sub_214F302D4(v14, &qword_27CA443B0, &qword_2150CB5F0);
    v16 = swift_task_alloc();
    v0[33] = v16;
    *v16 = v0;
    v16[1] = sub_215036BA4;

    return SiriTranscriptionMethod.finishTranscription()();
  }

  else
  {
    v18 = v0[9];
    (*(v3 + 32))(v0[13], v1, v2);
    swift_beginAccess();
    if (v5(v18 + v6, 1, v7))
    {
      (*(v0[12] + 8))(v0[13], v0[11]);
      swift_endAccess();
      v19 = 1;
    }

    else
    {
      v20 = v0[24];
      v21 = v0[22];
      v22 = v0[23];
      v23 = v0[21];
      v25 = v0[12];
      v24 = v0[13];
      v26 = v0[11];
      (*(v22 + 16))(v20, v0[9] + v0[28], v21);
      swift_endAccess();
      (*(v25 + 16))(v23, v24, v26);
      swift_storeEnumTagMultiPayload();
      sub_2150A5140();
      (*(v22 + 8))(v20, v21);
      (*(v25 + 8))(v24, v26);
      v19 = 0;
    }

    v27 = v0[25];
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA443B8, &qword_2150CB5F8);
    (*(*(v28 - 8) + 56))(v27, v19, 1, v28);
    sub_214F302D4(v27, &qword_27CA443B0, &qword_2150CB5F0);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v30 = swift_task_alloc();
    v0[32] = v30;
    *v30 = v0;
    v30[1] = sub_215036640;
    v31 = v0[17];
    v32 = v0[14];

    return MEMORY[0x282200310](v32, 0, 0, v0 + 8, v31, AssociatedConformanceWitness);
  }
}

uint64_t sub_215036BA4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_215036DBC()
{
  (*(v0[18] + 8))(v0[19], v0[17]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_215036EAC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA443A8, &qword_2150CB5E8);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v12 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44388, &qword_2150CB5A0);
  v9 = *(v8 - 8);
  (*(v9 + 16))(v7, a1, v8);
  (*(v9 + 56))(v7, 0, 1, v8);
  v10 = OBJC_IVAR____TtC11NotesShared23SiriTranscriptionMethod_transcriptionContinuation;
  swift_beginAccess();
  sub_215037BF0(v7, a2 + v10);
  return swift_endAccess();
}

uint64_t sub_215036FE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v6 = sub_2150A4190();
  v5[10] = v6;
  v5[11] = *(v6 - 8);
  v5[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E98, &unk_2150C2AE0);
  v5[13] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA443D8, &qword_2150CB6A8);
  v5[14] = v7;
  v5[15] = *(v7 - 8);
  v5[16] = swift_task_alloc();
  v5[17] = type metadata accessor for TranscriptionUpdate(0);
  v5[18] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44388, &qword_2150CB5A0);
  v5[19] = v8;
  v5[20] = *(v8 - 8);
  v5[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA443B0, &qword_2150CB5F0);
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21503722C, 0, 0);
}

uint64_t sub_21503722C()
{
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[8];
  v4 = OBJC_IVAR____TtC11NotesShared23SiriTranscriptionMethod_transcriptionContinuation;
  v0[25] = OBJC_IVAR____TtC11NotesShared23SiriTranscriptionMethod_transcriptionContinuation;
  swift_beginAccess();
  v5 = *(v2 + 48);
  v0[26] = v5;
  v0[27] = (v2 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v6 = 1;
  if (!v5(v3 + v4, 1, v1))
  {
    v8 = v0[20];
    v7 = v0[21];
    v10 = v0[18];
    v9 = v0[19];
    (*(v8 + 16))(v7, v3 + v4, v9);
    *v10 = 0;
    swift_storeEnumTagMultiPayload();
    sub_2150A5140();
    (*(v8 + 8))(v7, v9);
    v6 = 0;
  }

  v11 = v0[24];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA443B8, &qword_2150CB5F8);
  (*(*(v12 - 8) + 56))(v11, v6, 1, v12);
  sub_214F302D4(v11, &qword_27CA443B0, &qword_2150CB5F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA443A0, &qword_2150CB5C8);
  sub_2150A5160();
  v13 = swift_task_alloc();
  v0[28] = v13;
  *v13 = v0;
  v13[1] = sub_215037440;
  v14 = v0[13];
  v15 = v0[14];

  return MEMORY[0x2822003E8](v14, 0, 0, v15);
}

uint64_t sub_215037440()
{

  return MEMORY[0x2822009F8](sub_21503753C, 0, 0);
}

uint64_t sub_21503753C()
{
  v1 = v0[13];
  v2 = v0[10];
  v3 = v0[11];
  v4 = (*(v3 + 48))(v1, 1, v2);
  v5 = v0[26];
  v6 = v0[25];
  v7 = v0[19];
  if (v4 == 1)
  {
    v8 = v0[8];
    (*(v0[15] + 8))(v0[16], v0[14]);
    v9 = 1;
    if (!v5(v8 + v6, 1, v7))
    {
      v11 = v0[20];
      v10 = v0[21];
      v13 = v0[18];
      v12 = v0[19];
      (*(v11 + 16))(v10, v0[8] + v0[25], v12);
      *v13 = 1;
      swift_storeEnumTagMultiPayload();
      sub_2150A5140();
      (*(v11 + 8))(v10, v12);
      v9 = 0;
    }

    v14 = v0[23];
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA443B8, &qword_2150CB5F8);
    (*(*(v15 - 8) + 56))(v14, v9, 1, v15);
    sub_214F302D4(v14, &qword_27CA443B0, &qword_2150CB5F0);
    if (qword_27CA41770 != -1)
    {
      swift_once();
    }

    v16 = sub_2150A3F30();
    __swift_project_value_buffer(v16, qword_27CA44368);
    v17 = sub_2150A3F10();
    v18 = sub_2150A5550();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_214D51000, v17, v18, "Recognition stream task completed", v19, 2u);
      MEMORY[0x216064AF0](v19, -1, -1);
    }

    v20 = v0[1];

    return v20();
  }

  else
  {
    v22 = v0[8];
    (*(v3 + 32))(v0[12], v1, v2);
    swift_beginAccess();
    if (v5(v22 + v6, 1, v7))
    {
      (*(v0[11] + 8))(v0[12], v0[10]);
      swift_endAccess();
      v23 = 1;
    }

    else
    {
      v24 = v0[21];
      v25 = v0[19];
      v26 = v0[20];
      v27 = v0[18];
      v29 = v0[11];
      v28 = v0[12];
      v30 = v0[10];
      (*(v26 + 16))(v24, v0[8] + v0[25], v25);
      swift_endAccess();
      (*(v29 + 16))(v27, v28, v30);
      swift_storeEnumTagMultiPayload();
      sub_2150A5140();
      (*(v26 + 8))(v24, v25);
      (*(v29 + 8))(v28, v30);
      v23 = 0;
    }

    v31 = v0[22];
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA443B8, &qword_2150CB5F8);
    (*(*(v32 - 8) + 56))(v31, v23, 1, v32);
    sub_214F302D4(v31, &qword_27CA443B0, &qword_2150CB5F0);
    v33 = swift_task_alloc();
    v0[28] = v33;
    *v33 = v0;
    v33[1] = sub_215037440;
    v34 = v0[13];
    v35 = v0[14];

    return MEMORY[0x2822003E8](v34, 0, 0, v35);
  }
}

uint64_t SiriTranscriptionMethod.__deallocating_deinit()
{
  sub_214F302D4(v0 + OBJC_IVAR____TtC11NotesShared23SiriTranscriptionMethod_transcriptionContinuation, &qword_27CA443A8, &qword_2150CB5E8);

  return swift_deallocClassInstance();
}

uint64_t sub_215037AEC(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA443A0, &qword_2150CB5C8) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_214F53FB0;

  return sub_215036FE4(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_215037BF0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA443A8, &qword_2150CB5E8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for SiriTranscriptionMethod(uint64_t a1)
{
  result = qword_27CA443C0;
  if (!qword_27CA443C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_215037CB4(uint64_t a1)
{
  sub_215037D7C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_215037D7C(uint64_t a1)
{
  if (!qword_27CA443D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA44388, &qword_2150CB5A0);
    v1 = sub_2150A57E0();
    if (!v2)
    {
      atomic_store(v1, &qword_27CA443D0);
    }
  }
}

unint64_t sub_215037DE0()
{
  result = qword_27CA43CA0;
  if (!qword_27CA43CA0)
  {
    sub_2150A41E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA43CA0);
  }

  return result;
}

uint64_t sub_215037E54(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_214F53FB0;

  return sub_215036154(a1, v4, v5, v7, v6);
}

void sub_215037F18(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    for (i = (a1 + 40); ; i += 2)
    {
      v6 = *i;
      v7[0] = *(i - 1);
      v7[1] = v6;

      sub_21503863C(v7, a2);
      if (v2)
      {
        break;
      }

      if (!--v3)
      {
        return;
      }
    }
  }
}

uint64_t sub_215037FA8(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_215060978(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_215038034()
{
  v0 = sub_2150A3F30();
  __swift_allocate_value_buffer(v0, qword_27CA443E0);
  v1 = __swift_project_value_buffer(v0, qword_27CA443E0);
  if (qword_280C23250 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280C23258);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t TranscriptPostProcessorError.hashValue.getter()
{
  v1 = *v0;
  sub_2150A64B0();
  MEMORY[0x216063080](v1);
  return sub_2150A64E0();
}

uint64_t sub_215038190(uint64_t a1, uint64_t a2, uint64_t a3, char **a4, uint64_t a5, uint64_t a6)
{
  v7 = sub_2150A4D40();
  v8 = MEMORY[0x216061730](v7);
  v10 = v9;

  v11 = *a4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a4 = v11;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = sub_21505F4D0(0, *(v11 + 2) + 1, 1, v11);
    *a4 = v11;
  }

  v14 = *(v11 + 2);
  v13 = *(v11 + 3);
  if (v14 >= v13 >> 1)
  {
    v11 = sub_21505F4D0((v13 > 1), v14 + 1, 1, v11);
    *a4 = v11;
  }

  *(v11 + 2) = v14 + 1;
  v15 = &v11[16 * v14];
  *(v15 + 4) = v8;
  *(v15 + 5) = v10;
  return 1;
}

void sub_215038260(unint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v35 = a2;
  v3 = sub_2150A3050();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v8 = a1[1];
  if ((v8 & 0x2000000000000000) != 0)
  {
    v10 = HIBYTE(v8) & 0xF;
  }

  else
  {
    v10 = *a1 & 0xFFFFFFFFFFFFLL;
  }

  v11 = 7;
  if (((v8 >> 60) & ((v9 & 0x800000000000000) == 0)) != 0)
  {
    v11 = 11;
  }

  v12 = v11 | (v10 << 16);

  v44 = v12;
  if (v10)
  {
    v12 = v44;
    do
    {
      sub_2150A4BE0();
      sub_2150A4D10();
      v13 = sub_2150A49D0();

      if ((v13 & 1) == 0)
      {
        break;
      }

      v12 = sub_2150A4BE0();
    }

    while (v12 >= 0x4000);
  }

  if (4 * v10 < v12 >> 14)
  {
    __break(1u);
  }

  else
  {
    v36 = v9;
    v37 = v8;
    sub_2150A3010();
    sub_214D6E6C4();
    v14 = sub_2150A5880();
    v16 = v15;
    (*(v4 + 8))(v7, v3);
    v42 = v14;
    v43 = v16;

    sub_2150385A4(v14, v16);
    v18 = v17;

    if (!v18 || (v19 = sub_2150A49E0(), , (v19 & 1) == 0))
    {
      MEMORY[0x2160617E0](46, 0xE100000000000000);
    }

    v20 = v42;
    v21 = v43;

    sub_2150238C4(1, v20, v21);

    v34 = sub_2150A5800();
    v23 = v22;

    v24 = sub_214FBA930(1uLL, v20, v21);
    v26 = v25;
    v28 = v27;
    v30 = v29;

    v40 = v34;
    v41 = v23;
    v36 = v24;
    v37 = v26;
    v38 = v28;
    v39 = v30;
    sub_214F99030();
    sub_2150A4C00();

    v36 = v44;
    v37 = v12;
    v38 = v9;
    v39 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44420, &unk_2150CB7E0);
    sub_214F43BCC(&qword_27CA44428, &qword_27CA44420, &unk_2150CB7E0, MEMORY[0x277D84440]);
    sub_2150A4C00();

    v31 = v41;
    v32 = v35;
    *v35 = v40;
    v32[1] = v31;
  }
}

uint64_t sub_2150385A4(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  sub_2150A4BE0();
  return sub_2150A4D10();
}

void sub_21503863C(uint64_t *a1, uint64_t a2)
{
  v28 = a2;
  v37 = sub_2150A3050();
  v3 = *(v37 - 8);
  MEMORY[0x28223BE20](v37, v4);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1[1];
  v35 = *a1;
  v36 = v7;
  v33 = 8238;
  v34 = 0xE200000000000000;
  v32 = sub_214D6E6C4();
  v8 = sub_2150A5870();
  v9 = v8;
  v10 = *(v8 + 16);
  if (v10)
  {
    v11 = 0;
    v30 = *(v8 + 16);
    v31 = (v3 + 8);
    v12 = v8 + 40;
    v26 = v10 - 1;
    v29 = MEMORY[0x277D84F90];
    v27 = v8 + 40;
    do
    {
      v13 = (v12 + 16 * v11);
      v14 = v11;
      while (1)
      {
        if (v14 >= *(v9 + 16))
        {
          __break(1u);
          return;
        }

        v16 = *(v13 - 1);
        v15 = *v13;
        v11 = v14 + 1;
        v35 = v16;
        v36 = v15;

        sub_2150A2FF0();
        v17 = sub_2150A5880();
        v19 = v18;
        (*v31)(v6, v37);

        v20 = HIBYTE(v19) & 0xF;
        if ((v19 & 0x2000000000000000) == 0)
        {
          v20 = v17 & 0xFFFFFFFFFFFFLL;
        }

        if (v20)
        {
          break;
        }

        v13 += 2;
        ++v14;
        if (v30 == v11)
        {
          goto LABEL_17;
        }
      }

      v21 = v29;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v33 = v21;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_214F86A20(0, *(v21 + 16) + 1, 1);
        v21 = v33;
      }

      v24 = *(v21 + 16);
      v23 = *(v21 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_214F86A20((v23 > 1), v24 + 1, 1);
        v21 = v33;
      }

      *(v21 + 16) = v24 + 1;
      v29 = v21;
      v25 = v21 + 16 * v24;
      *(v25 + 32) = v16;
      *(v25 + 40) = v15;
      v12 = v27;
    }

    while (v26 != v14);
  }

  else
  {
    v29 = MEMORY[0x277D84F90];
  }

LABEL_17:

  sub_215068D7C(v29);
}

uint64_t sub_2150388D8(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_2150A4BF0();

    return sub_2150A4D40();
  }

  return result;
}

uint64_t sub_215038974(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v11 = MEMORY[0x277D84F90];
  gotLoadHelper_x8__OBJC_CLASS___NLTokenizer(a5);
  v8 = [objc_allocWithZone(*(v7 + 2528)) initWithUnit_];
  v9 = sub_2150A4A90();
  [v8 setString_];

  [v8 setLanguage_];
  sub_2150A54F0();

  return v11;
}

uint64_t sub_215038A88(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v14 = MEMORY[0x277D84F90];
    sub_214F86A20(0, v1, 0);
    v2 = v14;
    v4 = (a1 + 40);
    do
    {
      v5 = *v4;
      v12[0] = *(v4 - 1);
      v12[1] = v5;
      sub_215038260(v12, v13);
      v6 = v13[0];
      v7 = v13[1];
      v14 = v2;
      v9 = *(v2 + 16);
      v8 = *(v2 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_214F86A20((v8 > 1), v9 + 1, 1);
        v2 = v14;
      }

      *(v2 + 16) = v9 + 1;
      v10 = v2 + 16 * v9;
      *(v10 + 32) = v6;
      *(v10 + 40) = v7;
      v4 += 2;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void *sub_215038B68(void *a1, uint64_t a2, void *a3)
{
  v293 = a2;
  v303 = a1;
  v281 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44400, &qword_2150CB7C8);
  MEMORY[0x28223BE20](v281, v5);
  v287 = &v278 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44408, &unk_2150CB7D0);
  v283 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v8);
  v282 = &v278 - v9;
  v302 = sub_2150A3050();
  v298 = *(v302 - 8);
  MEMORY[0x28223BE20](v302, v10);
  v299 = &v278 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v292 = sub_2150A3340();
  MEMORY[0x28223BE20](v292, v12);
  v291 = &v278 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v290 = sub_2150A3400();
  v289 = *(v290 - 1);
  MEMORY[0x28223BE20](v290, v14);
  v288 = &v278 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42338, qword_2150C3890);
  v18 = MEMORY[0x28223BE20](v16 - 8, v17);
  v286 = &v278 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v20);
  v301 = (&v278 - v21);
  v22 = type metadata accessor for TranscriptViewModelSegment(0);
  v23 = *(v22 - 1);
  v25 = MEMORY[0x28223BE20](v22, v24);
  v295 = &v278 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v25, v27);
  v294 = &v278 - v29;
  v31 = MEMORY[0x28223BE20](v28, v30);
  v33 = &v278 - v32;
  v35 = MEMORY[0x28223BE20](v31, v34);
  v284 = &v278 - v36;
  v38 = MEMORY[0x28223BE20](v35, v37);
  v285 = (&v278 - v39);
  v41 = MEMORY[0x28223BE20](v38, v40);
  v43 = &v278 - v42;
  v45 = MEMORY[0x28223BE20](v41, v44);
  v47 = &v278 - v46;
  v49 = MEMORY[0x28223BE20](v45, v48);
  v300 = &v278 - v50;
  MEMORY[0x28223BE20](v49, v51);
  v53 = &v278 - v52;
  if (![a3 audioTranscriptPostProcessingEnabled])
  {
    if (qword_27CA41778 != -1)
    {
      swift_once();
    }

    v60 = sub_2150A3F30();
    __swift_project_value_buffer(v60, qword_27CA443E0);
    v61 = sub_2150A3F10();
    v62 = sub_2150A5540();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&dword_214D51000, v61, v62, "Audio transcript post-processing disabled by cloud config.", v63, 2u);
      MEMORY[0x216064AF0](v63, -1, -1);
    }

    sub_21503B06C();
    swift_allocError();
    v59 = 1;
    goto LABEL_12;
  }

  if (ICInternalSettingsShouldDisableTranscriptPostProcessing())
  {
    if (qword_27CA41778 == -1)
    {
LABEL_4:
      v54 = sub_2150A3F30();
      __swift_project_value_buffer(v54, qword_27CA443E0);
      v55 = sub_2150A3F10();
      v56 = sub_2150A5540();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        *v57 = 0;
        _os_log_impl(&dword_214D51000, v55, v56, "Audio transcript post-processing disabled by user defaults.", v57, 2u);
        MEMORY[0x216064AF0](v57, -1, -1);
      }

      sub_21503B06C();
      swift_allocError();
      v59 = 2;
      goto LABEL_12;
    }

LABEL_175:
    swift_once();
    goto LABEL_4;
  }

  v279 = v7;
  v280 = v3;
  v7 = 0;
  v311 = *(v303 + 16);
  while (v311 != v7)
  {
    sub_214F5456C(v303 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v7++, v53);
    v65 = *&v53[v22[9] + 8];

    sub_214F545D0(v53);
    if (v65)
    {

      sub_21503B06C();
      swift_allocError();
      v59 = 3;
LABEL_12:
      *v58 = v59;
      swift_willThrow();
      return v7;
    }
  }

  if (!v311)
  {
    if (qword_27CA41778 != -1)
    {
      goto LABEL_177;
    }

    goto LABEL_31;
  }

  ShouldPostProcessOnlyTranscriptParagraphs = ICInternalSettingsShouldPostProcessOnlyTranscriptParagraphs();
  v304 = v22;
  if (ShouldPostProcessOnlyTranscriptParagraphs)
  {
    if (qword_27CA41778 == -1)
    {
      goto LABEL_21;
    }

    goto LABEL_180;
  }

  v309 = MEMORY[0x277D84F90];
  v99 = v23;
  v100 = v311;
  sub_214F86A20(ShouldPostProcessOnlyTranscriptParagraphs, v311, 0);
  v101 = v309;
  v286 = (*(v99 + 80) + 32) & ~*(v99 + 80);
  v102 = (v303 + v286);
  v103 = *(v99 + 72);
  v300 = v303 + v286;
  v296 = v103;
  do
  {
    sub_214F5456C(v102, v33);
    v104 = &v33[v22[5]];
    v105 = *v104;
    v106 = *(v104 + 1);

    sub_214F545D0(v33);
    v309 = v101;
    v108 = *(v101 + 16);
    v107 = *(v101 + 24);
    if (v108 >= v107 >> 1)
    {
      sub_214F86A20((v107 > 1), v108 + 1, 1);
      v103 = v296;
      v101 = v309;
    }

    *(v101 + 16) = v108 + 1;
    v109 = v101 + 16 * v108;
    *(v109 + 32) = v105;
    *(v109 + 40) = v106;
    v102 += v103;
    --v100;
    v22 = v304;
  }

  while (v100);
  v285 = v101;
  v111 = v288;
  static TranscriptViewModelSegment.transcriptStringFromSegments(segments:includeSpeakerLabels:)(v303, 1, v288);
  sub_2150A3330();
  (*(v289 + 8))(v111, v290);
  sub_214F7E26C();
  v112 = sub_2150A4D20();
  v94 = v113;
  gotLoadHelper_x8__NLLanguageEnglish(v114);
  v116 = **(v115 + 1800);
  v23 = v293;
  v117 = v293;
  if (!v293)
  {
    v118 = v116;
    v117 = v116;
  }

  v119 = sub_2150A4AD0();
  v121 = v120;
  v123 = v119 == sub_2150A4AD0() && v121 == v122;
  v7 = v298;
  if (v123)
  {
    v135 = v23;
  }

  else
  {
    v124 = sub_2150A6270();
    v125 = v23;
    v23 = v117;

    if ((v124 & 1) == 0)
    {

      v126 = qword_27CA41778;
      v127 = v23;
      if (v126 != -1)
      {
        swift_once();
      }

      v128 = sub_2150A3F30();
      __swift_project_value_buffer(v128, qword_27CA443E0);
      v129 = v127;
      v130 = sub_2150A3F10();
      v131 = sub_2150A5540();

      if (os_log_type_enabled(v130, v131))
      {
        v132 = swift_slowAlloc();
        v133 = swift_slowAlloc();
        *v132 = 138412290;
        *(v132 + 4) = v129;
        *v133 = v117;
        v7 = v129;
        _os_log_impl(&dword_214D51000, v130, v131, "Resolved language %@ was not supported. Skipping post-processing.", v132, 0xCu);
        sub_214F302D4(v133, &qword_27CA41DF0, &qword_2150C2940);
        MEMORY[0x216064AF0](v133, -1, -1);
        MEMORY[0x216064AF0](v132, -1, -1);
        v134 = v130;
        v130 = v7;
      }

      else
      {
        v134 = v129;
      }

      sub_21503B06C();
      swift_allocError();
      *v184 = 0;
      swift_willThrow();

      return v7;
    }
  }

  if (sub_2150A51A0())
  {

    if (qword_27CA41778 != -1)
    {
      swift_once();
    }

    v136 = sub_2150A3F30();
    __swift_project_value_buffer(v136, qword_27CA443E0);
    v137 = sub_2150A3F10();
    v138 = sub_2150A5550();
    if (os_log_type_enabled(v137, v138))
    {
      v139 = swift_slowAlloc();
      *v139 = 0;
      _os_log_impl(&dword_214D51000, v137, v138, "Cancelled after step 1. Aborting.", v139, 2u);
      MEMORY[0x216064AF0](v139, -1, -1);
    }

    sub_21503B06C();
    swift_allocError();
    *v140 = 4;
    swift_willThrow();

    return v7;
  }

  v297 = sub_2150A4BC0();
  v290 = v117;
  v142 = sub_215038974(v112, v94, v117, 1, v141);

  v303 = *(v142 + 16);
  if (v303)
  {
    v143 = 0;
    v301 = (v7 + 8);
    v121 = (v142 + 40);
    v7 = MEMORY[0x277D84F90];
    while (v143 < *(v142 + 16))
    {
      v23 = *v121;
      v309 = *(v121 - 1);
      v310 = v23;

      v144 = v299;
      sub_2150A3010();
      sub_214D6E6C4();
      v145 = sub_2150A5880();
      v147 = v146;
      (*v301)(v144, v302);
      v309 = v145;
      v310 = v147;

      MEMORY[0x2160617E0](2570, 0xE200000000000000);
      v148 = v7;

      v149 = v309;
      v150 = v310;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v148 = sub_21505F4D0(0, *(v7 + 16) + 1, 1, v7);
      }

      v152 = *(v148 + 2);
      v151 = *(v148 + 3);
      v7 = v148;
      v94 = v152 + 1;
      if (v152 >= v151 >> 1)
      {
        v7 = sub_21505F4D0((v151 > 1), v152 + 1, 1, v7);
      }

      v143 = (v143 + 1);

      *(v7 + 16) = v94;
      v153 = v7 + 16 * v152;
      *(v153 + 32) = v149;
      *(v153 + 40) = v150;
      v121 += 2;
      if (v303 == v143)
      {
        goto LABEL_75;
      }
    }

    __break(1u);
    goto LABEL_175;
  }

  v7 = MEMORY[0x277D84F90];
LABEL_75:

  v156 = *(v7 + 16);
  if (v156)
  {
    v23 = v156 - 1;
    v157 = v7 + 16 * (v156 - 1);
    v159 = *(v157 + 32);
    v158 = *(v157 + 40);

    v160 = sub_2150388D8(v297, v159, v158);
    v162 = v161;
    v164 = v163;
    v121 = v165;

    v142 = MEMORY[0x216061730](v160, v162, v164, v121);
    v94 = v166;

    v297 = v7;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_77;
    }
  }

  else
  {
    __break(1u);
  }

  v297 = sub_215060978(v297);
LABEL_77:
  v110 = v280;
  v167 = v297;
  v7 = v298;
  if (v156 > *(v297 + 16))
  {
    __break(1u);
LABEL_184:
    __break(1u);
LABEL_185:
    __break(1u);
LABEL_186:
    __break(1u);
    goto LABEL_187;
  }

  v168 = v297 + 16 * v23;
  *(v168 + 32) = v142;
  *(v168 + 40) = v94;

  v169 = sub_2150A51A0();
  v22 = v304;
  if (v169)
  {

    if (qword_27CA41778 != -1)
    {
      swift_once();
    }

    v170 = sub_2150A3F30();
    __swift_project_value_buffer(v170, qword_27CA443E0);
    v171 = sub_2150A3F10();
    v172 = sub_2150A5550();
    v173 = os_log_type_enabled(v171, v172);
    v174 = v290;
    if (v173)
    {
      v175 = swift_slowAlloc();
      *v175 = 0;
      _os_log_impl(&dword_214D51000, v171, v172, "Cancelled after step 2. Aborting.", v175, 2u);
      MEMORY[0x216064AF0](v175, -1, -1);
    }

    sub_21503B06C();
    swift_allocError();
    *v176 = 4;
    swift_willThrow();
    goto LABEL_133;
  }

  v307 = MEMORY[0x277D84F90];
  sub_215037F18(v167, &v307);
  v288 = v307;
  v177 = sub_215038A88(v307);
  if (sub_2150A51A0())
  {

    if (qword_27CA41778 != -1)
    {
      swift_once();
    }

    v178 = sub_2150A3F30();
    __swift_project_value_buffer(v178, qword_27CA443E0);
    v179 = sub_2150A3F10();
    v180 = sub_2150A5550();
    v181 = os_log_type_enabled(v179, v180);
    v174 = v290;
    if (v181)
    {
      v182 = swift_slowAlloc();
      *v182 = 0;
      v183 = "Cancelled after step 3. Aborting.";
LABEL_131:
      _os_log_impl(&dword_214D51000, v179, v180, v183, v182, 2u);
      MEMORY[0x216064AF0](v182, -1, -1);
    }

LABEL_132:

    sub_21503B06C();
    swift_allocError();
    *v234 = 4;
    swift_willThrow();

LABEL_133:

    return v7;
  }

  v280 = v110;
  v309 = v177;
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DE0, &qword_2150C2910);
  v186 = sub_214F43BCC(&qword_280C24540, &qword_27CA41DE0, &qword_2150C2910, MEMORY[0x277D83958]);
  v291 = v185;
  v289 = v186;
  v187 = sub_2150A4A20();
  v189 = v188;

  v309 = v187;
  v310 = v189;
  v190 = v299;
  sub_2150A2FF0();
  v303 = sub_214D6E6C4();
  v191 = sub_2150A5860();
  v301 = *(v7 + 8);
  v298 = v7 + 8;
  v301(v190, v302);

  v47 = 0;
  v192 = *(v191 + 16);
  v193 = (v191 + 40);
  v7 = MEMORY[0x277D84F90];
LABEL_92:
  v194 = &v193[2 * v47];
  while (1)
  {
    if (v192 == v47)
    {

      v43 = v285[2];
      if (*(v7 + 16) == v43)
      {

LABEL_105:
        v201 = v300;
        v301 = *(v7 + 16);
        if (v301)
        {
          v202 = 0;
          v203 = (v7 + 40);
          v303 = MEMORY[0x277D84F90];
          while (v202 < *(v7 + 16))
          {
            if (v311 == v202)
            {
              goto LABEL_179;
            }

            v47 = v7;
            v204 = *v203;
            v302 = *(v203 - 1);
            v205 = *(v201 + v22[6]);
            v206 = *(v201 + v22[7]);
            v207 = v22[9];
            v208 = v304[10];
            v300 = v201;
            v43 = *(v201 + v207);
            v209 = *(v201 + v207 + 8);
            v23 = v294;
            v210 = &v294[v207];
            v294[v208] = 2;

            _s10Foundation4UUIDV11NotesSharedE15defaultArgumentACvgZ_0();
            v211 = (v23 + v304[5]);
            *v211 = v302;
            v211[1] = v204;
            *(v23 + v304[6]) = v205;
            *(v23 + v304[7]) = v206;
            *v210 = v43;
            v210[1] = v209;
            *(v23 + v208) = 2;
            v22 = v304;
            *(v23 + v304[8]) = v205 + v206;
            sub_214F5456C(v23, v295);
            v212 = v303;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v212 = sub_21505F724(0, v212[2] + 1, 1, v212);
            }

            v214 = v212[2];
            v213 = v212[3];
            v303 = v212;
            v7 = v47;
            if (v214 >= v213 >> 1)
            {
              v303 = sub_21505F724((v213 > 1), v214 + 1, 1, v303);
            }

            ++v202;
            sub_214F545D0(v294);
            v215 = v303;
            *(v303 + 16) = v214 + 1;
            v216 = v296;
            sub_214F5462C(v295, v215 + v286 + v214 * v296);
            v201 = v300 + v216;
            v203 += 2;
            if (v301 == v202)
            {
              goto LABEL_126;
            }
          }

          __break(1u);
LABEL_179:
          __break(1u);
LABEL_180:
          swift_once();
LABEL_21:
          v67 = sub_2150A3F30();
          __swift_project_value_buffer(v67, qword_27CA443E0);
          v68 = sub_2150A3F10();
          v69 = sub_2150A5540();
          if (os_log_type_enabled(v68, v69))
          {
            v70 = swift_slowAlloc();
            *v70 = 0;
            _os_log_impl(&dword_214D51000, v68, v69, "PostProcessOnlyTranscriptParagraphs default was set, so only doing light processing.", v70, 2u);
            MEMORY[0x216064AF0](v70, -1, -1);
          }

          v299 = ((*(v23 + 80) + 32) & ~*(v23 + 80));
          v71 = &v299[v303];
          v72 = v301;
          sub_214F5456C(&v299[v303], v301);
          v294 = *(v23 + 56);
          (v294)(v72, 0, 1, v22);
          v73 = v22[5];
          v293 = v22[6];
          v292 = (v300 + v73);
          v291 = v22[7];
          v7 = MEMORY[0x277D84F90];
          v290 = (v300 + v22[9]);
          v295 = v23 + 56;
          v296 = v47;
          v74 = *(v23 + 72);
          v297 = v23;
          v298 = v74;
          do
          {
            v302 = v71;
            v303 = v7;
            v75 = v300;
            sub_214F5456C(v71, v300);
            sub_214F302D4(v72, &qword_27CA42338, qword_2150C3890);
            sub_214F5456C(v75, v72);
            (v294)(v72, 0, 1, v22);
            v76 = v292[1];
            v309 = *v292;
            v310 = v76;
            v307 = 2570;
            v308 = 0xE200000000000000;
            v305 = 0;
            v306 = 0xE000000000000000;
            sub_214D6E6C4();
            v309 = sub_2150A5890();
            v310 = v77;
            v307 = 46;
            v308 = 0xE100000000000000;
            v305 = 657966;
            v306 = 0xE300000000000000;
            v78 = sub_2150A5890();
            v80 = v79;

            v81 = *(v75 + v293);
            v82 = *(v75 + v291);
            v84 = *v290;
            v83 = v290[1];

            v85 = v75;
            v86 = v296;
            sub_214F545D0(v85);
            v87 = v22[10];
            v88 = (v86 + v22[9]);
            *(v86 + v87) = 2;
            _s10Foundation4UUIDV11NotesSharedE15defaultArgumentACvgZ_0();
            v89 = (v86 + v304[5]);
            *v89 = v78;
            v89[1] = v80;
            *(v86 + v304[6]) = v81;
            *(v86 + v304[7]) = v82;
            *v88 = v84;
            v88[1] = v83;
            v7 = v303;
            v22 = v304;
            *(v86 + v87) = 2;
            *(v86 + v22[8]) = v81 + v82;
            sub_214F5456C(v86, v43);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v7 = sub_21505F724(0, *(v7 + 16) + 1, 1, v7);
            }

            v91 = *(v7 + 16);
            v90 = *(v7 + 24);
            v72 = v301;
            v92 = v302;
            v93 = v297;
            if (v91 >= v90 >> 1)
            {
              v7 = sub_21505F724((v90 > 1), v91 + 1, 1, v7);
            }

            sub_214F545D0(v86);
            *(v7 + 16) = v91 + 1;
            v94 = v298;
            sub_214F5462C(v43, &v299[v7 + v91 * v298]);
            v71 = (v92 + v94);
            --v311;
          }

          while (v311);
          if (!*(v7 + 16))
          {
            sub_214F302D4(v72, &qword_27CA42338, qword_2150C3890);
            return v7;
          }

          v110 = v286;
          sub_21503B0D0(v72, v286);
          if ((*(v93 + 48))(v110, 1, v22) == 1)
          {
            sub_214F302D4(v72, &qword_27CA42338, qword_2150C3890);
            sub_214F302D4(v110, &qword_27CA42338, qword_2150C3890);
            return v7;
          }

          v23 = v72;
          v121 = v285;
          sub_214F5462C(v110, v285);
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v155 = *(v7 + 16);
            if (v155)
            {
              goto LABEL_72;
            }

            goto LABEL_188;
          }

LABEL_187:
          v7 = sub_21506098C(v7);
          v155 = *(v7 + 16);
          if (v155)
          {
LABEL_72:
            v94 = (v155 - 1) * v298;
            sub_214F545D0(&v299[v7 + v94]);
            *(v7 + 16) = v155 - 1;
            v110 = v284;
            sub_214F5456C(v121, v284);
            v154 = *(v7 + 24);
            if (v155 <= v154 >> 1)
            {
LABEL_73:
              sub_214F545D0(v121);
              sub_214F302D4(v23, &qword_27CA42338, qword_2150C3890);
              *(v7 + 16) = v155;
              sub_214F5462C(v110, &v299[v7 + v94]);
              return v7;
            }

LABEL_189:
            v7 = sub_21505F724((v154 > 1), v155, 1, v7);
            goto LABEL_73;
          }

LABEL_188:
          __break(1u);
          goto LABEL_189;
        }

        v303 = MEMORY[0x277D84F90];
LABEL_126:

        if ((sub_2150A51A0() & 1) == 0)
        {

          return v303;
        }

        v174 = v290;
        if (qword_27CA41778 != -1)
        {
          swift_once();
        }

        v233 = sub_2150A3F30();
        __swift_project_value_buffer(v233, qword_27CA443E0);
        v179 = sub_2150A3F10();
        v180 = sub_2150A5550();
        if (os_log_type_enabled(v179, v180))
        {
          v182 = swift_slowAlloc();
          *v182 = 0;
          v183 = "Cancelled after step 4. Aborting.";
          goto LABEL_131;
        }

        goto LABEL_132;
      }

      if (qword_27CA41778 != -1)
      {
        swift_once();
      }

      v217 = sub_2150A3F30();
      v284 = __swift_project_value_buffer(v217, qword_27CA443E0);
      v218 = sub_2150A3F10();
      v219 = sub_2150A5560();
      if (os_log_type_enabled(v218, v219))
      {
        v220 = swift_slowAlloc();
        *v220 = 0;
        _os_log_impl(&dword_214D51000, v218, v219, "There was a difference in word count between the initial and post-processed strings. Ideally this shouldn't happen, but sometimes it is unavoidable. Trying to reconcile this with a diff.", v220, 2u);
        MEMORY[0x216064AF0](v220, -1, -1);
      }

      v221 = *(v7 + 16);
      v222 = MEMORY[0x277D84F90];
      v293 = v7;
      if (v221)
      {
        v292 = v43;
        v305 = MEMORY[0x277D84F90];
        sub_214F86A20(0, v221, 0);
        v223 = v305;
        v224 = v7 + 40;
        do
        {
          v309 = sub_2150A4B40();
          v310 = v225;

          v226 = v299;
          sub_2150A3010();
          v227 = sub_2150A5880();
          v229 = v228;

          v301(v226, v302);

          v305 = v223;
          v231 = *(v223 + 16);
          v230 = *(v223 + 24);
          if (v231 >= v230 >> 1)
          {
            sub_214F86A20((v230 > 1), v231 + 1, 1);
            v223 = v305;
          }

          *(v223 + 16) = v231 + 1;
          v232 = v223 + 16 * v231;
          *(v232 + 32) = v227;
          *(v232 + 40) = v229;
          v224 += 16;
          --v221;
        }

        while (v221);
        v43 = v292;
        v222 = MEMORY[0x277D84F90];
      }

      else
      {
        v223 = MEMORY[0x277D84F90];
      }

      if (v43)
      {
        v305 = v222;
        sub_214F86A20(0, v43, 0);
        v235 = v305;
        v236 = v285 + 5;
        do
        {
          v309 = sub_2150A4B40();
          v310 = v237;

          v238 = v299;
          sub_2150A3010();
          v239 = sub_2150A5880();
          v241 = v240;

          v301(v238, v302);

          v305 = v235;
          v243 = *(v235 + 16);
          v242 = *(v235 + 24);
          if (v243 >= v242 >> 1)
          {
            sub_214F86A20((v242 > 1), v243 + 1, 1);
            v235 = v305;
          }

          *(v235 + 16) = v243 + 1;
          v244 = v235 + 16 * v243;
          *(v244 + 32) = v239;
          *(v244 + 40) = v241;
          v236 += 2;
          --v43;
        }

        while (v43);
      }

      else
      {

        v235 = MEMORY[0x277D84F90];
      }

      v285 = v235;
      v309 = v235;
      v305 = v223;
      v245 = v282;
      sub_2150A4A10();

      v246 = v287;
      v7 = v279;
      (*(v283 + 16))(v287, v245, v279);
      v247 = *(v281 + 36);
      v23 = sub_214F43BCC(&qword_27CA44418, &qword_27CA44408, &unk_2150CB7D0, MEMORY[0x277D84490]);
      sub_2150A53D0();
      sub_2150A5400();
      v22 = v304;
      if (*(v246 + v247) != v309)
      {
        v289 = v247;
        do
        {
          v94 = v246;
          v256 = sub_2150A5470();
          v43 = *v257;
          v258 = *(v257 + 16);
          v110 = *(v257 + 32);
          v259 = *(v257 + 33);
          v260 = *v257;
          v292 = *(v257 + 8);
          v291 = v258;
          sub_21503B0C0(v260, v292, v258);
          v256(&v309, 0);
          v121 = v23;
          sub_2150A5410();
          if (v259)
          {
            v261 = v293;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v261 = sub_215060978(v261);
            }

            v262 = *(v261 + 2);
            if (v43 >= v262)
            {
              goto LABEL_184;
            }

            v263 = v262 - 1;
            memmove(&v261[16 * v43 + 32], &v261[16 * v43 + 48], 16 * (v262 - 1 - v43));
            v293 = v261;
            *(v261 + 2) = v263;
            sub_21503B0C8(v43, v292, v291);

            v22 = v304;
          }

          else
          {
            v252 = v293;
            v94 = *(v293 + 16);
            if (v94 < v43)
            {
              goto LABEL_185;
            }

            v22 = v304;
            if (v43 < 0)
            {
              goto LABEL_186;
            }

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            if (!isUniquelyReferenced_nonNull_native || v94 >= *(v252 + 3) >> 1)
            {
              v252 = sub_21505F4D0(isUniquelyReferenced_nonNull_native, v94 + 1, 1, v252);
            }

            v253 = &v252[16 * v43];
            swift_arrayDestroy();
            memmove(v253 + 48, v253 + 32, 16 * (*(v252 + 2) - v43));
            v254 = *(v252 + 2) + 1;
            v293 = v252;
            *(v252 + 2) = v254;
            v255 = v291;
            *(v253 + 4) = v292;
            *(v253 + 5) = v255;
          }

          v246 = v287;
          v7 = v279;
          sub_2150A5400();
        }

        while (*(v246 + v289) != v309);
      }

      sub_214F302D4(v246, &qword_27CA44400, &qword_2150CB7C8);
      if (sub_2150A51A0())
      {

        v248 = sub_2150A3F10();
        v249 = sub_2150A5550();
        if (os_log_type_enabled(v248, v249))
        {
          v250 = swift_slowAlloc();
          *v250 = 0;
          _os_log_impl(&dword_214D51000, v248, v249, "Cancelled after step 4a. Aborting.", v250, 2u);
          MEMORY[0x216064AF0](v250, -1, -1);
        }

        sub_21503B06C();
        swift_allocError();
        *v251 = 4;
        swift_willThrow();

        (*(v283 + 8))(v282, v7);
      }

      else
      {
        v7 = v293;
        v265 = *(v293 + 16);
        v47 = MEMORY[0x277D84F90];
        if (v265)
        {
          v305 = MEMORY[0x277D84F90];
          sub_214F86A20(0, v265, 0);
          v47 = v305;
          v43 = v7 + 40;
          do
          {
            v309 = sub_2150A4B40();
            v310 = v266;

            v267 = v299;
            sub_2150A3010();
            v268 = sub_2150A5880();
            v23 = v269;

            v301(v267, v302);

            v305 = v47;
            v271 = *(v47 + 16);
            v270 = *(v47 + 24);
            if (v271 >= v270 >> 1)
            {
              sub_214F86A20((v270 > 1), v271 + 1, 1);
              v47 = v305;
            }

            *(v47 + 16) = v271 + 1;
            v272 = v47 + 16 * v271;
            *(v272 + 32) = v268;
            *(v272 + 40) = v23;
            v43 += 16;
            --v265;
          }

          while (v265);
          v22 = v304;
          v7 = v293;
        }

        v273 = sub_214F8F910(v47, v285);

        if (v273)
        {
          (*(v283 + 8))(v282, v279);
          goto LABEL_105;
        }

        v274 = sub_2150A3F10();
        v275 = sub_2150A5570();
        if (os_log_type_enabled(v274, v275))
        {
          v276 = swift_slowAlloc();
          *v276 = 0;
          _os_log_impl(&dword_214D51000, v274, v275, "The post-processor encountered a discrepancy where diffing was necessary and attempted to diff, however, the attempt was unsuccessful. This is unexpected.", v276, 2u);
          MEMORY[0x216064AF0](v276, -1, -1);
        }

        sub_21503B06C();
        swift_allocError();
        *v277 = 5;
        swift_willThrow();

        (*(v283 + 8))(v282, v279);
      }

      return v7;
    }

    if (v47 >= *(v191 + 16))
    {
      break;
    }

    ++v47;
    v195 = *(v194 - 1);
    v23 = *v194;
    v194 += 2;
    v196 = HIBYTE(v23) & 0xF;
    if ((v23 & 0x2000000000000000) == 0)
    {
      v196 = v195 & 0xFFFFFFFFFFFFLL;
    }

    if (v196)
    {

      v197 = swift_isUniquelyReferenced_nonNull_native();
      v309 = v7;
      v292 = v193;
      if ((v197 & 1) == 0)
      {
        sub_214F86A20(0, *(v7 + 16) + 1, 1);
        v7 = v309;
      }

      v199 = *(v7 + 16);
      v198 = *(v7 + 24);
      if (v199 >= v198 >> 1)
      {
        sub_214F86A20((v198 > 1), v199 + 1, 1);
        v7 = v309;
      }

      *(v7 + 16) = v199 + 1;
      v200 = v7 + 16 * v199;
      *(v200 + 32) = v195;
      *(v200 + 40) = v23;
      v22 = v304;
      v193 = v292;
      goto LABEL_92;
    }
  }

  __break(1u);
LABEL_177:
  swift_once();
LABEL_31:
  v95 = sub_2150A3F30();
  __swift_project_value_buffer(v95, qword_27CA443E0);
  v96 = sub_2150A3F10();
  v97 = sub_2150A5550();
  if (os_log_type_enabled(v96, v97))
  {
    v98 = swift_slowAlloc();
    *v98 = 0;
    _os_log_impl(&dword_214D51000, v96, v97, "Tried to post-process zero segments.", v98, 2u);
    MEMORY[0x216064AF0](v98, -1, -1);
  }

  return MEMORY[0x277D84F90];
}

unint64_t sub_21503AFA4()
{
  result = qword_27CA443F8;
  if (!qword_27CA443F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA443F8);
  }

  return result;
}

unint64_t sub_21503B06C()
{
  result = qword_27CA44410;
  if (!qword_27CA44410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA44410);
  }

  return result;
}

uint64_t sub_21503B0D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42338, qword_2150C3890);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21503B14C()
{
  v0 = sub_2150A3F30();
  __swift_allocate_value_buffer(v0, qword_27CA44430);
  v1 = __swift_project_value_buffer(v0, qword_27CA44430);
  if (qword_280C23250 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280C23258);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t TranscriptSegmentType.hashValue.getter()
{
  v1 = *v0;
  sub_2150A64B0();
  MEMORY[0x216063080](v1);
  return sub_2150A64E0();
}

uint64_t TranscriptUpdateType.hashValue.getter()
{
  v1 = *v0;
  sub_2150A64B0();
  MEMORY[0x216063080](v1);
  return sub_2150A64E0();
}

uint64_t sub_21503B378@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2150439CC(&qword_27CA44450, type metadata accessor for LiveTranscriptionCoordinator, &protocol conformance descriptor for LiveTranscriptionCoordinator);
  sub_2150A3B40();

  swift_beginAccess();
  *a2 = *(v3 + 16);
}

uint64_t sub_21503B464()
{
  swift_getKeyPath();
  sub_2150439CC(&qword_27CA44450, type metadata accessor for LiveTranscriptionCoordinator, &protocol conformance descriptor for LiveTranscriptionCoordinator);
  sub_2150A3B40();

  swift_beginAccess();
}

uint64_t type metadata accessor for LiveTranscriptionCoordinator(uint64_t a1)
{
  result = qword_27CA444A8;
  if (!qword_27CA444A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_21503B568(uint64_t a1)
{
  swift_beginAccess();

  v4 = sub_214F8F9A0(v3, a1);

  if (v4)
  {
    *(v1 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v7);
    sub_2150439CC(&qword_27CA44450, type metadata accessor for LiveTranscriptionCoordinator, &protocol conformance descriptor for LiveTranscriptionCoordinator);
    sub_2150A3B30();
  }

  return result;
}

void sub_21503B6B0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 16) = a2;
}

uint64_t (*sub_21503B734(uint64_t *a1))()
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
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC11NotesShared28LiveTranscriptionCoordinator___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_2150439CC(&qword_27CA44450, type metadata accessor for LiveTranscriptionCoordinator, &protocol conformance descriptor for LiveTranscriptionCoordinator);
  sub_2150A3B40();

  *v4 = v1;
  swift_getKeyPath();
  sub_2150A3B60();

  v4[7] = sub_21503B328(v4);
  return sub_21503B86C;
}

uint64_t sub_21503B8C8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2150439CC(&qword_27CA44450, type metadata accessor for LiveTranscriptionCoordinator, &protocol conformance descriptor for LiveTranscriptionCoordinator);
  sub_2150A3B40();

  swift_beginAccess();
  *a2 = *(v3 + 24);
}

uint64_t sub_21503B9B4()
{
  swift_getKeyPath();
  sub_2150439CC(&qword_27CA44450, type metadata accessor for LiveTranscriptionCoordinator, &protocol conformance descriptor for LiveTranscriptionCoordinator);
  sub_2150A3B40();

  swift_beginAccess();
}

double sub_21503BA6C(uint64_t a1)
{
  swift_beginAccess();

  v4 = sub_214F8F9A0(v3, a1);

  if (v4)
  {
    *(v1 + 24) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v7);
    sub_2150439CC(&qword_27CA44450, type metadata accessor for LiveTranscriptionCoordinator, &protocol conformance descriptor for LiveTranscriptionCoordinator);
    sub_2150A3B30();
  }

  return result;
}

void sub_21503BBB4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 24) = a2;
}

uint64_t (*sub_21503BC38(uint64_t *a1))()
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
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC11NotesShared28LiveTranscriptionCoordinator___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_2150439CC(&qword_27CA44450, type metadata accessor for LiveTranscriptionCoordinator, &protocol conformance descriptor for LiveTranscriptionCoordinator);
  sub_2150A3B40();

  *v4 = v1;
  swift_getKeyPath();
  sub_2150A3B60();

  v4[7] = sub_21503B878(v4);
  return sub_21503BD70;
}

uint64_t sub_21503BDCC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2150439CC(&qword_27CA44450, type metadata accessor for LiveTranscriptionCoordinator, &protocol conformance descriptor for LiveTranscriptionCoordinator);
  sub_2150A3B40();

  swift_beginAccess();
  *a2 = *(v3 + 32);
}

uint64_t sub_21503BEB8()
{
  swift_getKeyPath();
  sub_2150439CC(&qword_27CA44450, type metadata accessor for LiveTranscriptionCoordinator, &protocol conformance descriptor for LiveTranscriptionCoordinator);
  sub_2150A3B40();

  swift_beginAccess();
}

double sub_21503BFA4(uint64_t a1)
{
  swift_beginAccess();

  v4 = sub_214F8F9A0(v3, a1);

  if (v4)
  {
    *(v1 + 32) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v7);
    sub_2150439CC(&qword_27CA44450, type metadata accessor for LiveTranscriptionCoordinator, &protocol conformance descriptor for LiveTranscriptionCoordinator);
    sub_2150A3B30();
  }

  return result;
}

void sub_21503C0EC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 32) = a2;
}

uint64_t (*sub_21503C170(uint64_t *a1))()
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
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC11NotesShared28LiveTranscriptionCoordinator___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_2150439CC(&qword_27CA44450, type metadata accessor for LiveTranscriptionCoordinator, &protocol conformance descriptor for LiveTranscriptionCoordinator);
  sub_2150A3B40();

  *v4 = v1;
  swift_getKeyPath();
  sub_2150A3B60();

  v4[7] = sub_21503BD7C(v4);
  return sub_21503C2A8;
}

id sub_21503C304@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2150439CC(&qword_27CA44450, type metadata accessor for LiveTranscriptionCoordinator, &protocol conformance descriptor for LiveTranscriptionCoordinator);
  sub_2150A3B40();

  swift_beginAccess();
  v4 = *(v3 + 48);
  *a2 = v4;

  return v4;
}

id sub_21503C3FC()
{
  swift_getKeyPath();
  sub_2150439CC(&qword_27CA44450, type metadata accessor for LiveTranscriptionCoordinator, &protocol conformance descriptor for LiveTranscriptionCoordinator);
  sub_2150A3B40();

  swift_beginAccess();
  v1 = *(v0 + 48);

  return v1;
}

void sub_21503C4C0(void *a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v1 + 48);
  sub_21503C610();
  v5 = v4;
  v6 = sub_2150A5780();

  if (v6)
  {
    v7 = *(v2 + 48);
    *(v2 + 48) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v9);
    sub_2150439CC(&qword_27CA44450, type metadata accessor for LiveTranscriptionCoordinator, &protocol conformance descriptor for LiveTranscriptionCoordinator);
    sub_2150A3B30();
  }
}

unint64_t sub_21503C610()
{
  result = qword_27CA44458;
  if (!qword_27CA44458)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CA44458);
  }

  return result;
}

void sub_21503C65C(uint64_t a1, void *a2)
{
  swift_beginAccess();
  v4 = *(a1 + 48);
  *(a1 + 48) = a2;
  v5 = a2;
}

uint64_t (*sub_21503C6D8(uint64_t *a1))()
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
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC11NotesShared28LiveTranscriptionCoordinator___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_2150439CC(&qword_27CA44450, type metadata accessor for LiveTranscriptionCoordinator, &protocol conformance descriptor for LiveTranscriptionCoordinator);
  sub_2150A3B40();

  *v4 = v1;
  swift_getKeyPath();
  sub_2150A3B60();

  v4[7] = sub_21503C2B4(v4);
  return sub_21503C810;
}

uint64_t sub_21503C86C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2150439CC(&qword_27CA44450, type metadata accessor for LiveTranscriptionCoordinator, &protocol conformance descriptor for LiveTranscriptionCoordinator);
  sub_2150A3B40();

  result = swift_beginAccess();
  *a2 = *(v3 + 56);
  return result;
}

uint64_t sub_21503C950()
{
  swift_getKeyPath();
  sub_2150439CC(&qword_27CA44450, type metadata accessor for LiveTranscriptionCoordinator, &protocol conformance descriptor for LiveTranscriptionCoordinator);
  sub_2150A3B40();

  swift_beginAccess();
  return *(v0 + 56);
}

uint64_t sub_21503CA04(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (*(v1 + 56) == v2)
  {
    *(v1 + 56) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v5);
    sub_2150439CC(&qword_27CA44450, type metadata accessor for LiveTranscriptionCoordinator, &protocol conformance descriptor for LiveTranscriptionCoordinator);
    sub_2150A3B30();
  }

  return result;
}

uint64_t (*sub_21503CB40(uint64_t *a1))()
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
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC11NotesShared28LiveTranscriptionCoordinator___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_2150439CC(&qword_27CA44450, type metadata accessor for LiveTranscriptionCoordinator, &protocol conformance descriptor for LiveTranscriptionCoordinator);
  sub_2150A3B40();

  *v4 = v1;
  swift_getKeyPath();
  sub_2150A3B60();

  v4[7] = sub_21503C81C(v4);
  return sub_21503CC78;
}

uint64_t sub_21503CCD4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2150439CC(&qword_27CA44450, type metadata accessor for LiveTranscriptionCoordinator, &protocol conformance descriptor for LiveTranscriptionCoordinator);
  sub_2150A3B40();

  swift_beginAccess();
  return sub_214F43C14(v3 + 64, a2, &qword_27CA44460, &qword_2150CB8E0);
}

uint64_t sub_21503CDA4(uint64_t a1, uint64_t *a2)
{
  sub_214F43C14(a1, v3, &qword_27CA44460, &qword_2150CB8E0);
  swift_getKeyPath();
  sub_2150439CC(&qword_27CA44450, type metadata accessor for LiveTranscriptionCoordinator, &protocol conformance descriptor for LiveTranscriptionCoordinator);
  sub_2150A3B30();

  return sub_214F302D4(v3, &qword_27CA44460, &qword_2150CB8E0);
}

uint64_t sub_21503CEAC@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_2150439CC(&qword_27CA44450, type metadata accessor for LiveTranscriptionCoordinator, &protocol conformance descriptor for LiveTranscriptionCoordinator);
  sub_2150A3B40();

  swift_beginAccess();
  return sub_214F43C14(v1 + 64, a1, &qword_27CA44460, &qword_2150CB8E0);
}

uint64_t sub_21503CF7C(uint64_t a1)
{
  swift_getKeyPath();
  sub_2150439CC(&qword_27CA44450, type metadata accessor for LiveTranscriptionCoordinator, &protocol conformance descriptor for LiveTranscriptionCoordinator);
  sub_2150A3B30();

  return sub_214F302D4(a1, &qword_27CA44460, &qword_2150CB8E0);
}

uint64_t sub_21503D05C(uint64_t a1, uint64_t a2)
{
  sub_214F43C14(a2, v4, &qword_27CA44460, &qword_2150CB8E0);
  swift_beginAccess();
  sub_215044874(v4, a1 + 64);
  return swift_endAccess();
}

uint64_t (*sub_21503D0F0(uint64_t *a1))()
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
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC11NotesShared28LiveTranscriptionCoordinator___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_2150439CC(&qword_27CA44450, type metadata accessor for LiveTranscriptionCoordinator, &protocol conformance descriptor for LiveTranscriptionCoordinator);
  sub_2150A3B40();

  *v4 = v1;
  swift_getKeyPath();
  sub_2150A3B60();

  v4[7] = sub_21503CC84(v4);
  return sub_21503D228;
}

id LiveTranscriptionCoordinator.__allocating_init(attachmentModel:)(void *a1)
{
  swift_allocObject();
  v2 = sub_215043664(a1);

  return v2;
}

id LiveTranscriptionCoordinator.init(attachmentModel:)(void *a1)
{
  v2 = sub_215043664(a1);

  return v2;
}

uint64_t sub_21503D2AC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2150A3400();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC11NotesShared28LiveTranscriptionCoordinator__transcript;
  swift_beginAccess();
  v10 = *(v5 + 16);
  v10(v8, v2 + v9, v4);
  sub_2150439CC(&qword_27CA44470, MEMORY[0x277CC8C40], MEMORY[0x277CC8C58]);
  v16[0] = a1;
  LOBYTE(a1) = sub_2150A4A80();
  v11 = *(v5 + 8);
  v11(v8, v4);
  if (a1)
  {
    v10(v8, v16[0], v4);
    swift_beginAccess();
    (*(v5 + 40))(v2 + v9, v8, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v13);
    v14 = v16[0];
    v16[-2] = v2;
    v16[-1] = v14;
    v16[1] = v2;
    sub_2150439CC(&qword_27CA44450, type metadata accessor for LiveTranscriptionCoordinator, &protocol conformance descriptor for LiveTranscriptionCoordinator);
    sub_2150A3B30();
  }

  return (v11)(v16[0], v4);
}

uint64_t sub_21503D54C()
{
  swift_getKeyPath();
  sub_2150439CC(&qword_27CA44450, type metadata accessor for LiveTranscriptionCoordinator, &protocol conformance descriptor for LiveTranscriptionCoordinator);
  sub_2150A3B40();

  swift_beginAccess();
  v1 = *(v0 + 32);
  swift_getKeyPath();

  sub_2150A3B40();

  swift_beginAccess();

  sub_21506860C(v2);
  swift_getKeyPath();
  sub_2150A3B40();

  swift_beginAccess();

  sub_21506860C(v3);
  return v1;
}

uint64_t sub_21503D724@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_2150439CC(&qword_27CA44450, type metadata accessor for LiveTranscriptionCoordinator, &protocol conformance descriptor for LiveTranscriptionCoordinator);
  sub_2150A3B40();

  v4 = OBJC_IVAR____TtC11NotesShared28LiveTranscriptionCoordinator__transcript;
  swift_beginAccess();
  v5 = sub_2150A3400();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_21503D81C(uint64_t a1)
{
  v2 = sub_2150A3400();
  MEMORY[0x28223BE20](v2, v3);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1);
  return sub_21503D2AC(v5);
}

uint64_t sub_21503D8E8@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v6 = v1;
  sub_2150439CC(&qword_27CA44450, type metadata accessor for LiveTranscriptionCoordinator, &protocol conformance descriptor for LiveTranscriptionCoordinator);
  sub_2150A3B40();

  v3 = OBJC_IVAR____TtC11NotesShared28LiveTranscriptionCoordinator__transcript;
  swift_beginAccess();
  v4 = sub_2150A3400();
  return (*(*(v4 - 8) + 16))(a1, v6 + v3, v4);
}

uint64_t sub_21503D9E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2150A3400();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a2, v4);
  v9 = OBJC_IVAR____TtC11NotesShared28LiveTranscriptionCoordinator__transcript;
  swift_beginAccess();
  (*(v5 + 40))(a1 + v9, v8, v4);
  return swift_endAccess();
}

uint64_t (*sub_21503DAFC(uint64_t *a1))()
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
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC11NotesShared28LiveTranscriptionCoordinator___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_2150439CC(&qword_27CA44450, type metadata accessor for LiveTranscriptionCoordinator, &protocol conformance descriptor for LiveTranscriptionCoordinator);
  sub_2150A3B40();

  *v4 = v1;
  swift_getKeyPath();
  sub_2150A3B60();

  v4[7] = sub_21503D6C4(v4);
  return sub_21503DC34;
}

void sub_21503DC40(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v3 = v3[4];
  swift_getKeyPath();
  sub_2150A3B50();

  free(v3);
}

uint64_t sub_21503DCD4()
{
  v1 = v0;
  v2 = sub_2150A3340();
  MEMORY[0x28223BE20](v2, v3);
  v4 = sub_2150A3400();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v12 = v0;
  sub_2150439CC(&qword_27CA44450, type metadata accessor for LiveTranscriptionCoordinator, &protocol conformance descriptor for LiveTranscriptionCoordinator);
  sub_2150A3B40();

  v9 = OBJC_IVAR____TtC11NotesShared28LiveTranscriptionCoordinator__transcript;
  swift_beginAccess();
  (*(v5 + 16))(v8, v1 + v9, v4);
  sub_2150A3330();
  (*(v5 + 8))(v8, v4);
  sub_2150439CC(&qword_27CA42330, MEMORY[0x277CC8B30], MEMORY[0x277CC8B40]);
  return sub_2150A4D20();
}

uint64_t sub_21503DEE8()
{
  v1 = sub_21503D54C();
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = v0;

  sub_214F73B44(&unk_2150CB918, v2);
}

uint64_t sub_21503DF70(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E50, &qword_2150C3710);
  v2[4] = swift_task_alloc();
  v3 = sub_2150A3400();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v2[7] = *(v4 + 64);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21503E07C, 0, 0);
}

uint64_t sub_21503E07C()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[6];
  v4 = v0[4];
  v5 = v0[5];
  static TranscriptViewModelSegment.transcriptStringFromSegments(segments:includeSpeakerLabels:)(v0[2], 1, v2);
  v6 = sub_2150A5120();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = swift_allocObject();
  swift_weakInit();
  (*(v3 + 16))(v1, v2, v5);
  sub_2150A50A0();

  v8 = sub_2150A5090();
  v9 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D85700];
  *(v10 + 2) = v8;
  *(v10 + 3) = v11;
  *(v10 + 4) = v7;
  (*(v3 + 32))(&v10[v9], v1, v5);

  sub_214FD26AC(0, 0, v4, &unk_2150CBC08, v10);

  (*(v3 + 8))(v2, v5);

  v12 = v0[1];

  return v12();
}

uint64_t sub_21503E268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[22] = a4;
  v5[23] = a5;
  v6 = sub_2150A3400();
  v5[24] = v6;
  v5[25] = *(v6 - 8);
  v5[26] = swift_task_alloc();
  sub_2150A50A0();
  v5[27] = sub_2150A5090();
  v8 = sub_2150A5010();

  return MEMORY[0x2822009F8](sub_21503E35C, v8, v7);
}

uint64_t sub_21503E35C()
{

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v1 = v0[26];
    (*(v0[25] + 16))(v1, v0[23], v0[24]);
    sub_21503D2AC(v1);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    swift_getKeyPath();
    v0[21] = v3;
    sub_2150439CC(&qword_27CA44450, type metadata accessor for LiveTranscriptionCoordinator, &protocol conformance descriptor for LiveTranscriptionCoordinator);
    sub_2150A3B40();

    swift_beginAccess();
    sub_214F43C14(v3 + 64, (v0 + 2), &qword_27CA44460, &qword_2150CB8E0);

    if (v0[5])
    {
      sub_214F6163C((v0 + 2), (v0 + 7));
      sub_214F302D4((v0 + 2), &qword_27CA44460, &qword_2150CB8E0);
      v4 = v0[10];
      v5 = v0[11];
      __swift_project_boxed_opaque_existential_1(v0 + 7, v4);
      (*(v5 + 8))(v4, v5);
      __swift_destroy_boxed_opaque_existential_0(v0 + 7);
    }

    else
    {
      sub_214F302D4((v0 + 2), &qword_27CA44460, &qword_2150CB8E0);
    }
  }

  v6 = v0[1];

  return v6();
}

uint64_t sub_21503E56C(uint64_t a1)
{
  v2[21] = a1;
  v2[22] = v1;
  sub_2150A50A0();
  v2[23] = sub_2150A5090();
  v4 = sub_2150A5010();
  v2[24] = v4;
  v2[25] = v3;

  return MEMORY[0x2822009F8](sub_21503E604, v4, v3);
}

uint64_t sub_21503E604()
{
  v1 = [objc_opt_self() sharedInstance];
  v2 = [v1 supportsGeneralASR];

  if (v2)
  {
    v3 = v0[22];
    swift_beginAccess();
    if (*(v3 + 56))
    {
      v4 = v0[22];
      swift_getKeyPath();
      v5 = swift_task_alloc();
      *(v5 + 16) = v4;
      *(v5 + 24) = 0;
      v0[20] = v4;
      sub_2150439CC(&qword_27CA44450, type metadata accessor for LiveTranscriptionCoordinator, &protocol conformance descriptor for LiveTranscriptionCoordinator);
      sub_2150A3B30();
    }

    else
    {
      *(v3 + 56) = 0;
    }

    v8 = swift_task_alloc();
    v0[26] = v8;
    *v8 = v0;
    v8[1] = sub_21503E808;

    return SiriTranscriptionMethod.finishTranscription()();
  }

  else
  {

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_21503E808()
{
  v2 = *v1;
  *(*v1 + 216) = v0;

  v3 = *(v2 + 200);
  v4 = *(v2 + 192);
  if (v0)
  {
    v5 = sub_21503EDE0;
  }

  else
  {
    v5 = sub_21503E944;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

id sub_21503E944()
{
  v1 = *(v0 + 176);
  swift_getKeyPath();
  *(v0 + 112) = v1;
  sub_2150439CC(&qword_27CA44450, type metadata accessor for LiveTranscriptionCoordinator, &protocol conformance descriptor for LiveTranscriptionCoordinator);
  sub_2150A3B40();

  swift_beginAccess();
  if (!*(*(v1 + 24) + 16))
  {

LABEL_13:
    v27 = *(v0 + 176);
    v28 = sub_21503D54C();
    v29 = swift_allocObject();
    *(v29 + 16) = v28;
    *(v29 + 24) = v27;

    sub_214F73B44(&unk_2150CB928, v29);

    v18 = *(v0 + 8);
    goto LABEL_14;
  }

  v2 = *(v0 + 216);
  v3 = *(v0 + 176);
  swift_getKeyPath();
  *(v0 + 120) = v3;
  sub_2150A3B40();

  v4 = *(v1 + 24);
  v5 = objc_opt_self();

  v6 = [v5 sharedConfiguration];
  v7 = sub_215038B68(v4, 0, v6);
  if (v2)
  {
    v8 = *(v0 + 176);

    swift_getKeyPath();
    *(v0 + 128) = v8;
    sub_2150A3B40();

    v9 = *(v1 + 24);
  }

  else
  {
    v9 = v7;
  }

  v10 = [*(v0 + 168) identifier];
  if (!v10)
  {
LABEL_10:
    v19 = *(v0 + 176);
    swift_getKeyPath();
    *(v0 + 136) = v19;
    sub_2150A3B40();

    swift_beginAccess();
    result = [*(v19 + 48) attachment];
    if (result)
    {
      v21 = result;
      v22 = *(v0 + 176);
      v23 = [result managedObjectContext];

      [v23 ic_save];
      v24 = MEMORY[0x277D84F90];
      sub_21503BA6C(MEMORY[0x277D84F90]);
      sub_21503B568(v24);
      swift_getKeyPath();
      *(v0 + 144) = v22;
      sub_2150A3B40();

      result = [*(v19 + 48) audioDocument];
      if (result)
      {
        v25 = result;

        v26 = ICTTAudioDocument.transcriptViewModelSegments.getter();

        sub_21503BFA4(v26);
        goto LABEL_13;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return result;
  }

  fragmentUUID_8._rawValue = v9;
  v11 = *(v0 + 176);
  v12 = v10;
  fragmentUUID = sub_2150A4AD0();
  v14 = v13;

  swift_getKeyPath();
  *(v0 + 152) = v11;
  sub_2150A3B40();

  swift_beginAccess();
  v15 = *(v11 + 48);
  v16._countAndFlagsBits = fragmentUUID;
  v16._object = v14;
  ICAttachmentAudioModel.saveModelDataToSubattachment(transcriptSegments:fragmentUUID:retranscription:)(fragmentUUID_8, v16, 0);
  if (!v17)
  {

    goto LABEL_10;
  }

  v18 = *(v0 + 8);
LABEL_14:

  return v18();
}

uint64_t sub_21503EDE0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21503EE44(uint64_t a1)
{
  v2[29] = a1;
  v2[30] = v1;
  v3 = type metadata accessor for TranscriptViewModelSegment(0);
  v2[31] = v3;
  v2[32] = *(v3 - 8);
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();
  v2[35] = sub_2150A3340();
  v2[36] = swift_task_alloc();
  sub_2150A34D0();
  v2[37] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E78, &unk_2150C2AC0);
  v2[38] = v4;
  v2[39] = *(v4 - 8);
  v2[40] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E80, &unk_2150C90A0);
  v2[41] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E88, &unk_2150C2AD0);
  v2[42] = v5;
  v2[43] = *(v5 - 8);
  v2[44] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E90, &unk_2150C90B0);
  v2[45] = v6;
  v2[46] = *(v6 - 8);
  v2[47] = swift_task_alloc();
  v2[48] = swift_task_alloc();
  v7 = sub_2150A33B0();
  v2[49] = v7;
  v2[50] = *(v7 - 8);
  v2[51] = swift_task_alloc();
  v8 = sub_2150A3400();
  v2[52] = v8;
  v2[53] = *(v8 - 8);
  v2[54] = swift_task_alloc();
  v2[55] = swift_task_alloc();
  v2[56] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44478, &qword_2150CB938);
  v2[57] = swift_task_alloc();
  v9 = sub_2150A4400();
  v2[58] = v9;
  v2[59] = *(v9 - 8);
  v2[60] = swift_task_alloc();
  v10 = sub_2150A4490();
  v2[61] = v10;
  v2[62] = *(v10 - 8);
  v2[63] = swift_task_alloc();
  v11 = sub_2150A4220();
  v2[64] = v11;
  v2[65] = *(v11 - 8);
  v2[66] = swift_task_alloc();
  v2[67] = swift_task_alloc();
  v12 = sub_2150A4190();
  v2[68] = v12;
  v2[69] = *(v12 - 8);
  v2[70] = swift_task_alloc();
  v13 = type metadata accessor for TranscriptionUpdate(0);
  v2[71] = v13;
  v2[72] = *(v13 - 8);
  v2[73] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44480, &qword_2150CB940);
  v2[74] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44488, &unk_2150CB948);
  v2[75] = v14;
  v2[76] = *(v14 - 8);
  v2[77] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41D40, &unk_2150C7230);
  v2[78] = swift_task_alloc();
  v15 = sub_2150A3750();
  v2[79] = v15;
  v2[80] = *(v15 - 8);
  v2[81] = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44490, &qword_2150CB958);
  v2[82] = v16;
  v2[83] = *(v16 - 8);
  v2[84] = swift_task_alloc();
  v2[85] = swift_task_alloc();
  v2[86] = swift_task_alloc();
  v2[87] = sub_2150A50A0();
  v2[88] = sub_2150A5090();
  v18 = sub_2150A5010();
  v2[89] = v18;
  v2[90] = v17;

  return MEMORY[0x2822009F8](sub_21503F5B8, v18, v17);
}

id sub_21503F5B8()
{
  v30 = v0;
  v1 = [objc_opt_self() sharedInstance];
  v2 = [v1 supportsGeneralASR];

  if (!v2)
  {
LABEL_4:

    v7 = v0[1];

    return v7();
  }

  v3 = v0[30];
  swift_getKeyPath();
  v0[20] = v3;
  v0[91] = OBJC_IVAR____TtC11NotesShared28LiveTranscriptionCoordinator___observationRegistrar;
  v0[92] = sub_2150439CC(&qword_27CA44450, type metadata accessor for LiveTranscriptionCoordinator, &protocol conformance descriptor for LiveTranscriptionCoordinator);
  sub_2150A3B40();

  swift_beginAccess();
  result = [*(v3 + 48) audioDocument];
  if (!result)
  {
    __break(1u);
    goto LABEL_24;
  }

  v5 = result;
  v6 = [result isCallRecording];

  if (v6)
  {
    goto LABEL_4;
  }

  if (qword_27CA41780 != -1)
  {
    swift_once();
  }

  v8 = sub_2150A3F30();
  v0[93] = v8;
  __swift_project_value_buffer(v8, qword_27CA44430);

  v9 = sub_2150A3F10();
  v10 = sub_2150A5550();
  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[30];
  if (!v11)
  {

    goto LABEL_16;
  }

  v13 = swift_slowAlloc();
  v28 = swift_slowAlloc();
  v29 = v28;
  *v13 = 136315138;
  swift_getKeyPath();
  v0[28] = v12;
  sub_2150A3B40();

  v14 = [*(v3 + 48) attachment];

  if (!v14)
  {
LABEL_24:
    __break(1u);
    return result;
  }

  v15 = [v14 identifier];

  if (v15)
  {
    v16 = sub_2150A4AD0();
    v18 = v17;
  }

  else
  {
    v16 = 0;
    v18 = 0xE000000000000000;
  }

  v19 = sub_214F7723C(v16, v18, &v29);

  *(v13 + 4) = v19;
  _os_log_impl(&dword_214D51000, v9, v10, "Transcribing from live recording for attachment %s", v13, 0xCu);
  __swift_destroy_boxed_opaque_existential_0(v28);
  MEMORY[0x216064AF0](v28, -1, -1);
  MEMORY[0x216064AF0](v13, -1, -1);

LABEL_16:
  v20 = v0[80];
  v21 = v0[79];
  v22 = v0[78];
  sub_214F43C14(v0[29], v22, &qword_27CA41D40, &unk_2150C7230);
  if ((*(v20 + 48))(v22, 1, v21) == 1)
  {
    sub_214F302D4(v0[78], &qword_27CA41D40, &unk_2150C7230);
    v23 = swift_task_alloc();
    v0[96] = v23;
    *v23 = v0;
    v23[1] = sub_215040020;
    v24 = v0[84];

    return SiriTranscriptionMethod.prepareForTranscription()(v24);
  }

  else
  {
    (*(v0[80] + 32))(v0[81], v0[78], v0[79]);
    v25 = swift_task_alloc();
    v0[94] = v25;
    *v25 = v0;
    v25[1] = sub_21503FBFC;
    v26 = v0[85];
    v27 = v0[81];

    return sub_2150351A8(v26, v27);
  }
}

uint64_t sub_21503FBFC()
{
  v2 = *v1;
  *(*v1 + 760) = v0;

  v3 = *(v2 + 720);
  v4 = *(v2 + 712);
  if (v0)
  {
    v5 = sub_2150416C0;
  }

  else
  {
    v5 = sub_21503FD38;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_21503FD38()
{
  (*(*(v0 + 640) + 8))(*(v0 + 648), *(v0 + 632));
  v1 = *(v0 + 760);
  v2 = *(v0 + 240);
  (*(*(v0 + 664) + 32))(*(v0 + 688), *(v0 + 680), *(v0 + 656));
  swift_getKeyPath();
  *(v0 + 168) = v2;
  sub_2150A3B40();

  v3 = [*(v2 + 48) audioDocument];
  if (v3)
  {
    v7 = v3;
    v8 = *(v0 + 240);
    v9 = ICTTAudioDocument.transcriptViewModelSegments.getter();

    sub_21503BFA4(v9);
    v10 = sub_21503D54C();
    *(v0 + 784) = *(v8 + 120);
    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    *(v11 + 24) = v8;

    sub_214F73B44(&unk_2150CB960, v11);

    swift_beginAccess();
    if (*(v8 + 56) == 1)
    {
      *(v8 + 56) = 1;
    }

    else
    {
      v12 = *(v0 + 240);
      swift_getKeyPath();
      v13 = swift_task_alloc();
      *(v13 + 16) = v12;
      *(v13 + 24) = 1;
      *(v0 + 176) = v12;
      sub_2150A3B30();
    }

    sub_2150A5160();
    swift_beginAccess();
    *(v0 + 880) = *MEMORY[0x277CDCBB8];
    *(v0 + 884) = *MEMORY[0x277CDCBA0];
    *(v0 + 792) = v1;
    v14 = sub_2150A5090();
    *(v0 + 800) = v14;
    v15 = swift_task_alloc();
    *(v0 + 808) = v15;
    *v15 = v0;
    v15[1] = sub_215040428;
    v6 = *(v0 + 600);
    v3 = *(v0 + 592);
    v5 = MEMORY[0x277D85700];
    v4 = v14;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822003E8](v3, v4, v5, v6);
}

uint64_t sub_215040020()
{
  v2 = *v1;
  *(*v1 + 776) = v0;

  v3 = *(v2 + 720);
  v4 = *(v2 + 712);
  if (v0)
  {
    v5 = sub_2150418BC;
  }

  else
  {
    v5 = sub_21504015C;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_21504015C()
{
  v1 = *(v0 + 776);
  v2 = *(v0 + 240);
  (*(*(v0 + 664) + 32))(*(v0 + 688), *(v0 + 672), *(v0 + 656));
  swift_getKeyPath();
  *(v0 + 168) = v2;
  sub_2150A3B40();

  v3 = [*(v2 + 48) audioDocument];
  if (v3)
  {
    v7 = v3;
    v8 = *(v0 + 240);
    v9 = ICTTAudioDocument.transcriptViewModelSegments.getter();

    sub_21503BFA4(v9);
    v10 = sub_21503D54C();
    *(v0 + 784) = *(v8 + 120);
    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    *(v11 + 24) = v8;

    sub_214F73B44(&unk_2150CB960, v11);

    swift_beginAccess();
    if (*(v8 + 56) == 1)
    {
      *(v8 + 56) = 1;
    }

    else
    {
      v12 = *(v0 + 240);
      swift_getKeyPath();
      v13 = swift_task_alloc();
      *(v13 + 16) = v12;
      *(v13 + 24) = 1;
      *(v0 + 176) = v12;
      sub_2150A3B30();
    }

    sub_2150A5160();
    swift_beginAccess();
    *(v0 + 880) = *MEMORY[0x277CDCBB8];
    *(v0 + 884) = *MEMORY[0x277CDCBA0];
    *(v0 + 792) = v1;
    v14 = sub_2150A5090();
    *(v0 + 800) = v14;
    v15 = swift_task_alloc();
    *(v0 + 808) = v15;
    *v15 = v0;
    v15[1] = sub_215040428;
    v6 = *(v0 + 600);
    v3 = *(v0 + 592);
    v5 = MEMORY[0x277D85700];
    v4 = v14;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822003E8](v3, v4, v5, v6);
}

uint64_t sub_215040428()
{
  v1 = *v0;

  v2 = *(v1 + 720);
  v3 = *(v1 + 712);

  return MEMORY[0x2822009F8](sub_21504056C, v3, v2);
}

uint64_t sub_21504056C()
{
  v1 = *(v0 + 592);
  if ((*(*(v0 + 576) + 48))(v1, 1, *(v0 + 568)) == 1)
  {
    (*(*(v0 + 608) + 8))(*(v0 + 616), *(v0 + 600));
    v2 = swift_task_alloc();
    *(v0 + 816) = v2;
    *v2 = v0;
    v2[1] = sub_215041390;

    return sub_215041C90();
  }

  else
  {
    sub_215043A14(v1, *(v0 + 584), type metadata accessor for TranscriptionUpdate);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v4 = *(v0 + 880);
      v5 = *(v0 + 536);
      v6 = *(v0 + 528);
      v7 = *(v0 + 520);
      v8 = *(v0 + 512);
      (*(*(v0 + 552) + 32))(*(v0 + 560), *(v0 + 584), *(v0 + 544));
      sub_2150A4150();
      v9 = *(v7 + 104);
      v9(v6, v4, v8);
      v10 = sub_2150A4210();
      v11 = *(v7 + 8);
      v11(v6, v8);
      v12 = (v11)(v5, v8);
      if (v10 & 1) != 0 || (v13 = *(v0 + 884), v14 = *(v0 + 536), v15 = *(v0 + 528), v16 = *(v0 + 512), sub_2150A4150(), v9(v15, v13, v16), v17 = sub_2150A4210(), v11(v15, v16), v12 = (v11)(v14, v16), (v17))
      {
        v18 = MEMORY[0x216060D20](v12);
        if (*(v18 + 16))
        {
          v19 = *(v0 + 456);
          v20 = *(v0 + 416);
          v21 = *(v0 + 424);
          v22 = *(v21 + 16);
          v23 = (*(v21 + 80) + 32) & ~*(v21 + 80);
          v22(v19, v18 + v23, v20);

          (*(v21 + 56))(v19, 0, 1, v20);
          sub_214F302D4(v19, &qword_27CA44478, &qword_2150CB938);
          v24 = sub_21503B568(MEMORY[0x277D84F90]);
          v25 = MEMORY[0x216060D20](v24);
          if (*(v25 + 16))
          {
            v27 = *(v0 + 440);
            v26 = *(v0 + 448);
            v28 = *(v0 + 416);
            v29 = *(v0 + 424);
            v30 = v22;
            v31 = *(v0 + 400);
            v32 = *(v0 + 408);
            v100 = *(v0 + 384);
            v101 = *(v0 + 392);
            v102 = *(v0 + 368);
            v103 = *(v0 + 360);
            v105 = *(v0 + 376);
            v106 = *(v0 + 328);
            v109 = *(v0 + 312);
            v112 = *(v0 + 304);
            v30(v27, v25 + v23, v28);

            (*(v29 + 32))(v26, v27, v28);
            sub_2150A33D0();
            sub_2150A4260();
            sub_2150439CC(&qword_27CA41EB0, MEMORY[0x277CDCCE0], MEMORY[0x277CDCCD8]);
            sub_2150A33C0();
            (*(v31 + 8))(v32, v101);
            (*(v102 + 16))(v105, v100, v103);
            sub_214F43BCC(&qword_27CA41EB8, &qword_27CA41E90, &unk_2150C90B0, MEMORY[0x277CC8BE0]);
            sub_2150A4D60();
            sub_214F43BCC(&qword_27CA41EC0, &qword_27CA41E88, &unk_2150C2AD0, MEMORY[0x277CC8BC8]);
            sub_2150A5850();
            v33 = *(v109 + 48);
            v34 = v33(v106, 1, v112);
            v35 = MEMORY[0x277D84F90];
            if (v34 != 1)
            {
              v104 = v33;
              do
              {
                v64 = *(v0 + 320);
                sub_214F548A8(*(v0 + 328), v64);
                if ((*(v64 + 48) & 1) == 0)
                {
                  v65 = *(v0 + 320);
                  v66 = *(v0 + 272);
                  v110 = *(v0 + 264);
                  v113 = v35;
                  v67 = *(v0 + 248);
                  v69 = *(v65 + 32);
                  v68 = *(v65 + 40);
                  v70 = *(v65 + 8);
                  v71 = *(v65 + 16);
                  *(v0 + 832) = *v65;
                  *(v0 + 840) = v70;
                  *(v0 + 848) = v71;
                  *(v0 + 864) = v69;
                  *(v0 + 872) = v68;
                  sub_2150A5730();
                  v73 = v72 + 0.0;
                  sub_2150A54E0();
                  sub_2150A5730();
                  v75 = v74 + 0.0 - v73;
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41EC8, &qword_2150CC050);
                  sub_214F43BCC(&qword_27CA41ED0, &qword_27CA41EC8, &qword_2150CC050, MEMORY[0x277D83D30]);
                  sub_2150A3430();
                  sub_2150A3440();
                  sub_2150A3330();
                  sub_2150439CC(&qword_27CA42330, MEMORY[0x277CC8B30], MEMORY[0x277CC8B40]);
                  v76 = sub_2150A4D20();
                  v78 = v77;
                  v79 = v67[10];
                  v80 = (v66 + v67[9]);
                  *(v66 + v79) = 2;
                  _s10Foundation4UUIDV11NotesSharedE15defaultArgumentACvgZ_0();
                  v81 = (v66 + v67[5]);
                  *v81 = v76;
                  v81[1] = v78;
                  *(v66 + v67[6]) = v73;
                  *(v66 + v67[7]) = v75;
                  *v80 = 0;
                  v80[1] = 0;
                  *(v66 + v79) = 2;
                  v82 = v67[8];
                  v35 = v113;
                  *(v66 + v82) = v73 + v75;
                  sub_214F5456C(v66, v110);
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v35 = sub_21505F724(0, v113[2] + 1, 1, v113);
                  }

                  v84 = v35[2];
                  v83 = v35[3];
                  if (v84 >= v83 >> 1)
                  {
                    v35 = sub_21505F724((v83 > 1), v84 + 1, 1, v35);
                  }

                  v58 = *(v0 + 424);
                  v57 = *(v0 + 432);
                  v59 = *(v0 + 416);
                  v60 = *(v0 + 264);
                  v61 = *(v0 + 256);
                  sub_214F545D0(*(v0 + 272));
                  (*(v58 + 8))(v57, v59);
                  v35[2] = v84 + 1;
                  sub_215043A14(v60, v35 + ((*(v61 + 80) + 32) & ~*(v61 + 80)) + *(v61 + 72) * v84, type metadata accessor for TranscriptViewModelSegment);
                  v33 = v104;
                }

                v62 = *(v0 + 328);
                v63 = *(v0 + 304);
                sub_214F302D4(*(v0 + 320), &qword_27CA41E78, &unk_2150C2AC0);
                sub_2150A5850();
              }

              while (v33(v62, 1, v63) != 1);
            }

            v36 = *(v0 + 448);
            v38 = *(v0 + 416);
            v37 = *(v0 + 424);
            v39 = *(v0 + 384);
            v40 = *(v0 + 360);
            v41 = *(v0 + 368);
            (*(*(v0 + 344) + 8))(*(v0 + 352), *(v0 + 336));
            (*(v41 + 8))(v39, v40);
            (*(v37 + 8))(v36, v38);
          }

          else
          {

            if (qword_27CA417C0 != -1)
            {
              swift_once();
            }

            __swift_project_value_buffer(*(v0 + 744), qword_27CA446F8);
            v51 = sub_2150A3F10();
            v52 = sub_2150A5560();
            if (os_log_type_enabled(v51, v52))
            {
              v53 = swift_slowAlloc();
              *v53 = 0;
              _os_log_impl(&dword_214D51000, v51, v52, "got an empty result", v53, 2u);
              MEMORY[0x216064AF0](v53, -1, -1);
            }

            v35 = MEMORY[0x277D84F90];
          }

          v54 = *(v0 + 240);
          swift_getKeyPath();
          *(v0 + 200) = v54;
          sub_2150A3B40();

          *(v0 + 208) = v54;
          swift_getKeyPath();
          sub_2150A3B60();

          swift_beginAccess();
          sub_21506860C(v35);
          swift_endAccess();
          *(v0 + 216) = v54;
          swift_getKeyPath();
          sub_2150A3B50();

          v55 = sub_21503D54C();
          v56 = swift_allocObject();
          *(v56 + 16) = v55;
          *(v56 + 24) = v54;

          sub_214F73B44(&unk_2150CB980, v56);
        }

        else
        {
          v42 = *(v0 + 456);
          v43 = *(v0 + 416);
          v44 = *(v0 + 424);

          (*(v44 + 56))(v42, 1, 1, v43);
          sub_214F302D4(v42, &qword_27CA44478, &qword_2150CB938);
        }

        v45 = *(v0 + 792);
      }

      else
      {
        v45 = *(v0 + 792);
        v46 = *(v0 + 560);
        v47 = sub_2150A4180();
        v48 = swift_task_alloc();
        *(v48 + 16) = v46;
        v49 = sub_215058BBC(sub_2150439AC, v48, v47);

        LOBYTE(v47) = sub_214F8F9A0(v50, v49);

        if (v47)
        {
          *(*(v0 + 240) + 16) = v49;
        }

        else
        {
          v85 = *(v0 + 240);
          swift_getKeyPath();
          v86 = swift_task_alloc();
          *(v86 + 16) = v85;
          *(v86 + 24) = v49;
          *(v0 + 184) = v85;
          sub_2150A3B30();
        }

        v87 = *(v0 + 784);
        v88 = *(v0 + 504);
        v111 = *(v0 + 496);
        v114 = *(v0 + 488);
        v89 = *(v0 + 464);
        v107 = *(v0 + 480);
        v108 = *(v0 + 472);
        v90 = *(v0 + 240);
        v91 = sub_21503D54C();
        v92 = swift_allocObject();
        *(v92 + 16) = v91;
        *(v92 + 24) = v90;
        v93 = swift_allocObject();
        v93[2] = v87;
        v93[3] = &unk_2150CB970;
        v93[4] = v92;
        *(v0 + 48) = sub_214F74808;
        *(v0 + 56) = v93;
        *(v0 + 16) = MEMORY[0x277D85DD0];
        *(v0 + 24) = 1107296256;
        *(v0 + 32) = sub_214F44018;
        *(v0 + 40) = &block_descriptor_18;
        v94 = _Block_copy((v0 + 16));

        sub_2150A4440();
        *(v0 + 192) = MEMORY[0x277D84F90];
        sub_2150439CC(&qword_280C24570, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA41A28, &qword_2150C2960);
        sub_214F43BCC(&qword_280C24550, &unk_27CA41A28, &qword_2150C2960, MEMORY[0x277D83970]);
        sub_2150A5930();
        MEMORY[0x216062180](0, v88, v107, v94);
        _Block_release(v94);

        (*(v108 + 8))(v107, v89);
        (*(v111 + 8))(v88, v114);
      }

      (*(*(v0 + 552) + 8))(*(v0 + 560), *(v0 + 544));
      *(v0 + 792) = v45;
    }

    v95 = sub_2150A5090();
    *(v0 + 800) = v95;
    v96 = swift_task_alloc();
    *(v0 + 808) = v96;
    *v96 = v0;
    v96[1] = sub_215040428;
    v97 = *(v0 + 600);
    v98 = *(v0 + 592);
    v99 = MEMORY[0x277D85700];

    return MEMORY[0x2822003E8](v98, v95, v99, v97);
  }
}

uint64_t sub_215041390()
{
  v2 = *v1;
  *(*v1 + 824) = v0;

  v3 = *(v2 + 720);
  v4 = *(v2 + 712);
  if (v0)
  {
    v5 = sub_215041A94;
  }

  else
  {
    v5 = sub_2150414CC;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_2150414CC()
{
  v1 = v0[86];
  v2 = v0[83];
  v3 = v0[82];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2150416C0()
{
  v1 = v0[81];
  v2 = v0[80];
  v3 = v0[79];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2150418BC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_215041A94()
{
  v1 = v0[86];
  v2 = v0[83];
  v3 = v0[82];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_215041C90()
{
  v1[10] = v0;
  sub_2150A50A0();
  v1[11] = sub_2150A5090();
  v3 = sub_2150A5010();
  v1[12] = v3;
  v1[13] = v2;

  return MEMORY[0x2822009F8](sub_215041D28, v3, v2);
}

uint64_t sub_215041D28()
{
  v1 = v0[10];
  swift_beginAccess();
  if (*(v1 + 56))
  {
    v2 = v0[10];
    swift_getKeyPath();
    v3 = swift_task_alloc();
    *(v3 + 16) = v2;
    *(v3 + 24) = 0;
    v0[9] = v2;
    sub_2150439CC(&qword_27CA44450, type metadata accessor for LiveTranscriptionCoordinator, &protocol conformance descriptor for LiveTranscriptionCoordinator);
    sub_2150A3B30();
  }

  else
  {
    *(v1 + 56) = 0;
  }

  v4 = swift_task_alloc();
  v0[14] = v4;
  *v4 = v0;
  v4[1] = sub_215041EB0;

  return SiriTranscriptionMethod.finishTranscription()();
}

uint64_t sub_215041EB0()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  v3 = *(v2 + 104);
  v4 = *(v2 + 96);
  if (v0)
  {
    v5 = sub_21504213C;
  }

  else
  {
    v5 = sub_215041FEC;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

id sub_215041FEC()
{
  v1 = v0[10];
  swift_getKeyPath();
  v0[8] = v1;
  sub_2150439CC(&qword_27CA44450, type metadata accessor for LiveTranscriptionCoordinator, &protocol conformance descriptor for LiveTranscriptionCoordinator);
  sub_2150A3B40();

  swift_beginAccess();
  result = [*(v1 + 48) attachment];
  if (result)
  {
    v3 = result;

    v4 = [v3 objectID];

    sub_2150423D8(v4);
    v5 = v0[1];

    return v5();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21504213C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2150421A0(uint64_t *a1)
{
  v3 = *a1;
  v2[2] = v1;
  v2[3] = v3;
  sub_2150A50A0();
  v2[4] = sub_2150A5090();
  v5 = sub_2150A5010();
  v2[5] = v5;
  v2[6] = v4;

  return MEMORY[0x2822009F8](sub_21504223C, v5, v4);
}

uint64_t sub_215042264()
{
  v1 = *(v0[7] + 16);
  if (v1)
  {
    v2 = v0[3];
    v3 = v1;
    sub_215053424(v2);
    v0[8] = 0;
  }

  v4 = v0[5];
  v5 = v0[6];

  return MEMORY[0x2822009F8](sub_215042310, v4, v5);
}

uint64_t sub_215042310()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_215042374()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_2150423D8(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E50, &qword_2150C3710);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v17 - v6;
  swift_getKeyPath();
  v18 = v1;
  sub_2150439CC(&qword_27CA44450, type metadata accessor for LiveTranscriptionCoordinator, &protocol conformance descriptor for LiveTranscriptionCoordinator);
  sub_2150A3B40();

  swift_beginAccess();
  v8 = [*(v1 + 48) attachment];
  if (v8)
  {
    v9 = v8;
    v10 = [v8 managedObjectContext];

    if (v10)
    {
      v11 = sub_2150A5120();
      (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
      sub_2150A50A0();

      v12 = v10;
      v13 = a1;
      v14 = sub_2150A5090();
      v15 = swift_allocObject();
      v16 = MEMORY[0x277D85700];
      v15[2] = v14;
      v15[3] = v16;
      v15[4] = v2;
      v15[5] = v12;
      v15[6] = v13;
      sub_214FD26AC(0, 0, v7, &unk_2150CB9A8, v15);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2150425EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[30] = a5;
  v6[31] = a6;
  v6[29] = a4;
  v6[32] = sub_2150A3340();
  v6[33] = swift_task_alloc();
  v7 = sub_2150A3400();
  v6[34] = v7;
  v6[35] = *(v7 - 8);
  v6[36] = swift_task_alloc();
  sub_2150A50A0();
  v6[37] = sub_2150A5090();
  v9 = sub_2150A5010();
  v6[38] = v9;
  v6[39] = v8;

  return MEMORY[0x2822009F8](sub_215042714, v9, v8);
}

uint64_t sub_215042714()
{
  v1 = [objc_opt_self() sharedInstance];
  v2 = [v1 supportsOnDeviceSummary];

  if (v2)
  {
    v4 = v0[35];
    v3 = v0[36];
    v5 = v0[34];
    v6 = v0[29];
    type metadata accessor for SummarizationManager();
    swift_getKeyPath();
    v0[28] = v6;
    sub_2150439CC(&qword_27CA44450, type metadata accessor for LiveTranscriptionCoordinator, &protocol conformance descriptor for LiveTranscriptionCoordinator);
    sub_2150A3B40();

    v7 = OBJC_IVAR____TtC11NotesShared28LiveTranscriptionCoordinator__transcript;
    swift_beginAccess();
    (*(v4 + 16))(v3, v6 + v7, v5);
    sub_2150A3330();
    (*(v4 + 8))(v3, v5);
    sub_2150439CC(&qword_27CA42330, MEMORY[0x277CC8B30], MEMORY[0x277CC8B40]);
    v8 = sub_2150A4D20();
    v10 = v9;
    v0[40] = v9;
    v11 = swift_task_alloc();
    v0[41] = v11;
    *v11 = v0;
    v11[1] = sub_2150429AC;

    return static SummarizationManager.generateTopLineTranscriptSummary(transcript:)((v0 + 10), v8, v10);
  }

  else
  {

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_2150429AC()
{
  v2 = *v1;
  *(*v1 + 336) = v0;

  if (v0)
  {
    v3 = *(v2 + 304);
    v4 = *(v2 + 312);
    v5 = sub_2150431A4;
  }

  else
  {

    v3 = *(v2 + 304);
    v4 = *(v2 + 312);
    v5 = sub_215042AC8;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_215042AC8()
{
  v1 = *(v0 + 88);
  if (v1)
  {
    v3 = *(v0 + 240);
    v2 = *(v0 + 248);
    v4 = *(v0 + 80);
    v5 = swift_allocObject();
    *(v0 + 344) = v5;
    *(v5 + 16) = v3;
    *(v5 + 24) = v2;
    *(v5 + 32) = v4;
    *(v5 + 40) = v1;
    v6 = *(v0 + 112);
    *(v5 + 48) = *(v0 + 96);
    *(v5 + 64) = v6;
    *(v5 + 80) = *(v0 + 128);
    *(v5 + 96) = *(v0 + 144);
    v7 = v3;
    v8 = v2;

    return MEMORY[0x2822009F8](sub_215042BD4, 0, 0);
  }

  else
  {

    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_215042BD4()
{
  v1 = *(v0 + 240);

  return MEMORY[0x2822009F8](sub_215042C4C, 0, 0);
}

uint64_t sub_215042C4C()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 19;
  v5 = v0[43];
  v6 = v0[30];
  v1[2] = v2;
  v1[3] = sub_215042DB8;
  v7 = swift_continuation_init();
  v8 = swift_allocObject();
  v8[2] = sub_215044684;
  v8[3] = v5;
  v8[4] = v7;
  v1[23] = sub_215009A2C;
  v1[24] = v8;
  v1[19] = MEMORY[0x277D85DD0];
  v1[20] = 1107296256;
  v1[21] = sub_214F44018;
  v1[22] = &block_descriptor_120;
  v9 = _Block_copy(v4);

  [v6 performBlock_];
  _Block_release(v9);

  return MEMORY[0x282200938](v3);
}

uint64_t sub_215042DB8(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  *(*v1 + 352) = v3;
  if (v3)
  {
    swift_willThrow();
    v4 = sub_215042F68;
    v5 = 0;
    v6 = 0;
  }

  else
  {
    v7 = v2[30];

    v5 = v2[38];
    v6 = v2[39];
    v4 = sub_215042EF4;
  }

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_215042EF4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_215042F68(uint64_t a1)
{
  v2 = v1[30];
  swift_willThrow();

  v3 = v1[38];
  v4 = v1[39];

  return MEMORY[0x2822009F8](sub_215042FE8, v3, v4);
}

uint64_t sub_215042FE8()
{

  v1 = *(v0 + 352);
  if (qword_27CA41780 != -1)
  {
    swift_once();
  }

  v2 = sub_2150A3F30();
  __swift_project_value_buffer(v2, qword_27CA44430);
  v3 = v1;
  v4 = sub_2150A3F10();
  v5 = sub_2150A5560();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_214D51000, v4, v5, "failed to generate topline summary: %@", v6, 0xCu);
    sub_214F302D4(v7, &qword_27CA41DF0, &qword_2150C2940);
    MEMORY[0x216064AF0](v7, -1, -1);
    MEMORY[0x216064AF0](v6, -1, -1);
  }

  else
  {
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_2150431A4()
{

  v1 = *(v0 + 336);
  if (qword_27CA41780 != -1)
  {
    swift_once();
  }

  v2 = sub_2150A3F30();
  __swift_project_value_buffer(v2, qword_27CA44430);
  v3 = v1;
  v4 = sub_2150A3F10();
  v5 = sub_2150A5560();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_214D51000, v4, v5, "failed to generate topline summary: %@", v6, 0xCu);
    sub_214F302D4(v7, &qword_27CA41DF0, &qword_2150C2940);
    MEMORY[0x216064AF0](v7, -1, -1);
    MEMORY[0x216064AF0](v6, -1, -1);
  }

  else
  {
  }

  v10 = *(v0 + 8);

  return v10();
}

void sub_21504336C(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = [a1 objectWithID_];
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6 && (v7 = [v6 audioModel]) != 0)
  {
    v8 = v7;
    v9 = *(a3 + 48);
    *&v16.modelVersion.value._object = *(a3 + 32);
    *&v16.attributionIcon.value._object = v9;
    v16.attributionProvider.value._object = *(a3 + 64);
    v10 = *(a3 + 16);
    v16.text = *a3;
    *&v16.isSafe = v10;
    ICAttachmentAudioModel.saveTopLineSummaryToAttachment(summarizationResult:)(&v16);
    if (v11)
    {
    }

    else
    {
      [a1 ic_save];
    }
  }

  else
  {

    if (qword_27CA41780 != -1)
    {
      swift_once();
    }

    v12 = sub_2150A3F30();
    __swift_project_value_buffer(v12, qword_27CA44430);
    v13 = sub_2150A3F10();
    v14 = sub_2150A5560();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_214D51000, v13, v14, "could not fetch attachment to generate topline summary", v15, 2u);
      MEMORY[0x216064AF0](v15, -1, -1);
    }
  }
}

uint64_t LiveTranscriptionCoordinator.deinit()
{

  sub_214F302D4(v0 + 64, &qword_27CA44460, &qword_2150CB8E0);

  v1 = OBJC_IVAR____TtC11NotesShared28LiveTranscriptionCoordinator__transcript;
  v2 = sub_2150A3400();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC11NotesShared28LiveTranscriptionCoordinator___observationRegistrar;
  v4 = sub_2150A3B80();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t LiveTranscriptionCoordinator.__deallocating_deinit()
{
  LiveTranscriptionCoordinator.deinit();

  return swift_deallocClassInstance();
}

id sub_215043664(void *a1)
{
  v2 = v1;
  v4 = sub_2150A3400();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x277D84F90];
  *(v1 + 16) = MEMORY[0x277D84F90];
  *(v1 + 24) = v9;
  *(v1 + 32) = v9;
  *(v1 + 56) = 0;
  type metadata accessor for CancellableTaskQueue(0, v10);
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0u;
  *(v1 + 96) = 0u;
  swift_allocObject();
  *(v1 + 112) = sub_214F738F8(0xD00000000000002ALL, 0x80000002150E77B0);
  swift_allocObject();
  *(v1 + 120) = sub_214F738F8(0xD000000000000025, 0x80000002150E77E0);
  sub_2150A33F0();
  (*(v5 + 32))(v1 + OBJC_IVAR____TtC11NotesShared28LiveTranscriptionCoordinator__transcript, v8, v4);
  sub_2150A3B70();
  *(v1 + 48) = a1;
  type metadata accessor for SiriTranscriptionMethod(0);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  v12 = OBJC_IVAR____TtC11NotesShared23SiriTranscriptionMethod_transcriptionContinuation;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44388, &qword_2150CB5A0);
  (*(*(v13 - 8) + 56))(v11 + v12, 1, 1, v13);
  *(v2 + 40) = v11;
  result = [a1 audioDocument];
  if (result)
  {
    v15 = result;
    v16 = ICTTAudioDocument.transcriptViewModelSegments.getter();

    sub_21503BFA4(v16);
    v17 = sub_21503D54C();
    v18 = swift_allocObject();
    *(v18 + 16) = v17;
    *(v18 + 24) = v2;

    sub_214F73B44(&unk_2150CBC18, v18);

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_215043914()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_214F557A8;

  return sub_21503DF70(v2, v3);
}

uint64_t sub_2150439CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_215043A14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_215043A7C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 56) = v2;
  return result;
}

uint64_t sub_215043AD0(uint64_t a1)
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

  return sub_2150425EC(a1, v4, v5, v6, v7, v8);
}

unint64_t sub_215043B9C()
{
  result = qword_27CA44498;
  if (!qword_27CA44498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA44498);
  }

  return result;
}

unint64_t sub_215043BF4()
{
  result = qword_27CA444A0;
  if (!qword_27CA444A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA444A0);
  }

  return result;
}

uint64_t sub_215043C84(uint64_t a1)
{
  result = sub_2150A3400();
  if (v2 <= 0x3F)
  {
    result = sub_2150A3B80();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t dispatch thunk of LiveTranscriptionCoordinator.updateTranscriptFromModel(subattachment:)(uint64_t a1)
{
  v6 = (*(*v1 + 592) + **(*v1 + 592));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_214F557A8;

  return v6(a1);
}

uint64_t dispatch thunk of LiveTranscriptionCoordinator.transcribe(file:)(uint64_t a1)
{
  v6 = (*(*v1 + 608) + **(*v1 + 608));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_214F557A8;

  return v6(a1);
}

uint64_t dispatch thunk of LiveTranscriptionCoordinator.finishTranscription()()
{
  v4 = (*(*v0 + 616) + **(*v0 + 616));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_214F53FB0;

  return v4();
}

uint64_t dispatch thunk of LiveTranscriptionCoordinator.receiveAudio(_:)(uint64_t a1)
{
  v6 = (*(*v1 + 624) + **(*v1 + 624));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_214F557A8;

  return v6(a1);
}

uint64_t sub_2150446A4(uint64_t a1)
{
  v4 = *(sub_2150A3400() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_214F557A8;

  return sub_21503E268(a1, v6, v7, v8, v1 + v5);
}

uint64_t objectdestroyTm_1()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2150447DC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_214F53FB0;

  return sub_21503DF70(v2, v3);
}

uint64_t sub_215044874(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44460, &qword_2150CB8E0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id sub_215044934()
{
  result = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
  qword_27CA558F8 = result;
  return result;
}

id sub_215044968()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41A20, &qword_2150C3010);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2150CBC20;
  v1 = *MEMORY[0x277CBD018];
  *(v0 + 32) = *MEMORY[0x277CBD018];
  v2 = objc_opt_self();
  v3 = v1;
  v4 = [v2 descriptorForRequiredKeysForStyle_];
  v5 = *MEMORY[0x277CBCFC0];
  *(v0 + 40) = v4;
  *(v0 + 48) = v5;
  v8 = *MEMORY[0x277CBD098];
  *(v0 + 56) = *MEMORY[0x277CBD098];
  qword_27CA55900 = v0;
  v6 = v5;

  return v8;
}

uint64_t sub_215044A4C()
{
  if (qword_27CA41788 != -1)
  {
    swift_once();
  }

  v0 = qword_27CA558F8;
  v1 = sub_2150A4A90();
  if (qword_27CA41790 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA444C0, &qword_2150CBC60);
  v2 = sub_2150A4EB0();
  v3 = [v0 ic:v1 contactForHandleString:v2 keysToFetch:?];

  if (v3)
  {
    v4 = [objc_opt_self() stringFromContact:v3 style:0];
    if (v4)
    {
      v5 = v4;
      v6 = sub_2150A4AD0();

      return v6;
    }
  }

  return 0;
}

void sub_215044BBC(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_2150A5980();
    sub_214F48160(0, v2);
    sub_21504A1BC(&qword_27CA41E30, sub_214F48160, MEMORY[0x277D85378]);
    sub_2150A5320();
    v1 = v23;
    v3 = v24;
    v4 = v25;
    v5 = v26;
    v6 = v27;
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

    v5 = 0;
  }

  v22 = MEMORY[0x277D84F90];
  while (v1 < 0)
  {
    if (!sub_2150A5A10() || (sub_214F48160(0, v13), swift_dynamicCast(), (v12 = v28) == 0))
    {
LABEL_24:
      sub_214F420F4(v1);
      return;
    }

LABEL_17:
    v14 = [v12 identifier];
    if (v14)
    {
      v15 = v14;
      v21 = sub_2150A4AD0();
      v17 = v16;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = sub_21505F4D0(0, *(v22 + 2) + 1, 1, v22);
      }

      v19 = *(v22 + 2);
      v18 = *(v22 + 3);
      if (v19 >= v18 >> 1)
      {
        v22 = sub_21505F4D0((v18 > 1), v19 + 1, 1, v22);
      }

      *(v22 + 2) = v19 + 1;
      v20 = &v22[16 * v19];
      *(v20 + 4) = v21;
      *(v20 + 5) = v17;
    }

    else
    {
    }
  }

  v10 = v5;
  v11 = v6;
  if (v6)
  {
LABEL_13:
    v6 = (v11 - 1) & v11;
    v12 = *(*(v1 + 48) + ((v5 << 9) | (8 * __clz(__rbit64(v11)))));
    if (!v12)
    {
      goto LABEL_24;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v5 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v5 >= ((v4 + 64) >> 6))
    {
      goto LABEL_24;
    }

    v11 = *(v3 + 8 * v5);
    ++v10;
    if (v11)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

void *sub_215044E64(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41D40, &unk_2150C7230);
  v5 = MEMORY[0x28223BE20](v3 - 8, v4);
  v65 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v54 - v8;
  v64 = sub_2150A3750();
  v10 = *(v64 - 8);
  v12 = MEMORY[0x28223BE20](v64, v11);
  v57 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v14);
  v54 = &v54 - v15;
  v59 = v1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_2150A5980();
    sub_214F48160(0, v16);
    sub_21504A1BC(&qword_27CA41E30, sub_214F48160, MEMORY[0x277D85378]);
    result = sub_2150A5320();
    a1 = v67;
    v18 = v68;
    v19 = v69;
    v20 = v70;
    v21 = v71;
  }

  else
  {
    v22 = -1 << *(a1 + 32);
    v18 = a1 + 56;
    v19 = ~v22;
    v23 = -v22;
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    else
    {
      v24 = -1;
    }

    v21 = v24 & *(a1 + 56);

    v20 = 0;
  }

  v58 = v19;
  v25 = (v19 + 64) >> 6;
  v62 = (v10 + 56);
  v63 = (v10 + 48);
  v55 = v10;
  v56 = (v10 + 32);
  v60 = MEMORY[0x277D84F90];
  v61 = v25;
  v26 = v21;
  while (a1 < 0)
  {
    v30 = sub_2150A5A10();
    if (!v30 || (v66 = v30, sub_214F48160(0, v31), swift_dynamicCast(), (v29 = v72) == 0))
    {
LABEL_30:
      sub_214F420F4(a1);
      return v60;
    }

LABEL_17:
    v32 = v29;
    v33 = [v32 media];
    if (v33)
    {
      v34 = v18;
      v35 = v26;
      v36 = a1;
      v37 = v9;
      v38 = v33;
      v39 = [v38 mediaURL];
      v40 = v65;
      if (v39)
      {
        v41 = v39;
        sub_2150A36F0();

        v40 = v65;
        v42 = *v62;
        v43 = v65;
        v44 = 0;
      }

      else
      {
        v42 = *v62;
        v43 = v65;
        v44 = 1;
      }

      v45 = v64;
      v42(v43, v44, 1, v64);

      v9 = v37;
      a1 = v36;
      v26 = v35;
      v18 = v34;
      v25 = v61;
    }

    else
    {
      v45 = v64;
      v40 = v65;
      (*v62)(v65, 1, 1, v64);
    }

    sub_214F48094(v40, v9);

    if ((*v63)(v9, 1, v45) == 1)
    {
      result = sub_214F302D4(v9, &qword_27CA41D40, &unk_2150C7230);
    }

    else
    {
      v46 = v18;
      v47 = v26;
      v48 = *v56;
      v49 = v54;
      v50 = v64;
      (*v56)(v54, v9, v64);
      v48(v57, v49, v50);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v60 = sub_215060348(0, v60[2] + 1, 1, v60);
      }

      v52 = v60[2];
      v51 = v60[3];
      v26 = v47;
      if (v52 >= v51 >> 1)
      {
        v60 = sub_215060348((v51 > 1), v52 + 1, 1, v60);
      }

      v18 = v46;
      v53 = v60;
      v60[2] = v52 + 1;
      result = (v48)(v53 + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * v52, v57, v64);
      v25 = v61;
    }
  }

  v27 = v20;
  v28 = v26;
  if (v26)
  {
LABEL_13:
    v26 = (v28 - 1) & v28;
    v29 = *(*(a1 + 48) + ((v20 << 9) | (8 * __clz(__rbit64(v28)))));
    if (!v29)
    {
      goto LABEL_30;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v20 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v20 >= v25)
    {
      goto LABEL_30;
    }

    v28 = *(v18 + 8 * v20);
    ++v27;
    if (v28)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2150453B8()
{
  v0 = sub_2150A3F30();
  __swift_allocate_value_buffer(v0, qword_27CA444C8);
  v1 = __swift_project_value_buffer(v0, qword_27CA444C8);
  if (qword_280C23250 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280C23258);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_215045480(uint64_t a1)
{
  result = [objc_allocWithZone(type metadata accessor for Transcription()) init];
  qword_27CA444E0 = result;
  return result;
}

id Transcription.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id static Transcription.shared.getter()
{
  if (qword_27CA417A0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_27CA444E0;

  return v0;
}

void static Transcription.shared.setter(uint64_t a1)
{
  if (qword_27CA417A0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_27CA444E0;
  qword_27CA444E0 = a1;
}

uint64_t (*static Transcription.shared.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_27CA417A0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

id sub_21504576C@<X0>(void *a1@<X8>)
{
  if (qword_27CA417A0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_27CA444E0;
  *a1 = qword_27CA444E0;

  return v2;
}

void sub_2150457F8(id *a1)
{
  v1 = qword_27CA417A0;
  v2 = *a1;
  if (v1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = qword_27CA444E0;
  qword_27CA444E0 = v2;
}

id sub_215045880()
{
  v1 = *(v0 + OBJC_IVAR___ICTranscription__currentlyTranscribingAttachment);

  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  os_unfair_lock_unlock((v1 + 24));

  return v2;
}

uint64_t sub_2150458D8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___ICTranscription__downloadingModel;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

uint64_t sub_215045988(uint64_t a1)
{
  v3 = OBJC_IVAR___ICTranscription__downloadingModel;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_215045A40()
{
  v1 = OBJC_IVAR___ICTranscription__downloadingModel;
  swift_beginAccess();
  v2 = *(v0 + v1);

  os_unfair_lock_lock((v2 + 20));
  v3 = *(v2 + 16);
  os_unfair_lock_unlock((v2 + 20));

  return v3;
}

void sub_215045AAC(void *a1)
{
  v2 = *(v1 + OBJC_IVAR___ICTranscription_workerContext);
  if (v2)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = a1;
    v8[4] = sub_214F48104;
    v8[5] = v4;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 1107296256;
    v8[2] = sub_214F44018;
    v8[3] = &block_descriptor_19;
    v5 = _Block_copy(v8);
    v6 = v2;
    v7 = a1;

    [v6 performBlock_];
    _Block_release(v5);
  }
}

uint64_t sub_215045BA0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E50, &qword_2150C3710);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v13 - v4;
  type metadata accessor for Transcription();
  v14 = 0;
  sub_215045E78(&v14, a1);
  v7 = v6;
  v9 = v8;
  if (qword_27CA417A0 != -1)
  {
    swift_once();
  }

  v10 = sub_2150A5120();
  (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v7;
  v11[5] = v9;
  sub_214FD26AC(0, 0, v5, &unk_2150CBCD8, v11);
}

void sub_215045E78(uint64_t *a1, void *a2)
{
  v6 = sub_2150A3750();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v10 = MEMORY[0x28223BE20](v6, v9);
  v105 = &v87 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v102 = &v87 - v12;
  v13 = *a1;
  if (qword_27CA417A0 != -1)
  {
    swift_once();
  }

  v14 = swift_beginAccess();
  v16 = *(qword_27CA444E0 + OBJC_IVAR___ICTranscription_workerContext);
  if (!v16)
  {
    sub_21501CFCC();
    swift_allocError();
    *v19 = 5;
    swift_willThrow();
    return;
  }

  v100 = v6;
  v101 = v7;
  v99 = v2;
  MEMORY[0x28223BE20](v14, v15);
  *(&v87 - 2) = v16;
  *(&v87 - 1) = a2;
  sub_214F48160(0, v17);
  v18 = v16;
  sub_2150A56D0();
  if (v3)
  {

    return;
  }

  v98 = a2;
  v20 = v103;
  v21 = v13;
  v103 = v13;
  sub_215019F9C(&v103, v20);
  v22 = [v20 identifier];
  if (v22)
  {
    v23 = v22;
    v95 = sub_2150A4AD0();
    v97 = v24;
  }

  else
  {
    v95 = 0;
    v97 = 0xE000000000000000;
  }

  v25 = [v20 note];
  if (v25 && (v26 = v25, v27 = [v25 identifier], v26, v27))
  {
    v94 = sub_2150A4AD0();
    v29 = v28;
  }

  else
  {
    v94 = 0;
    v29 = 0xE000000000000000;
  }

  v30 = [v20 subAttachments];
  if (!v30)
  {
    goto LABEL_22;
  }

  v31 = v30;
  v96 = v29;
  sub_21504A1BC(&qword_27CA41E30, sub_214F48160, MEMORY[0x277D85378]);
  v32 = sub_2150A52E0();

  sub_215044BBC(v32);
  v34 = v33;

  if (!v34[2])
  {

LABEL_22:

    sub_21501CFCC();
    swift_allocError();
    v47 = 4;
LABEL_26:
    *v46 = v47;
    swift_willThrow();

    return;
  }

  v93 = v34;
  v35 = v34[4];
  v36 = v34[5];

  v37 = [v20 subAttachments];
  if (!v37)
  {
    goto LABEL_25;
  }

  v92 = v35;
  v38 = v37;
  v39 = sub_2150A52E0();

  v40 = sub_215044E64(v39);

  if (!*(v40 + 2))
  {

LABEL_25:

    sub_21501CFCC();
    swift_allocError();
    v47 = 3;
    goto LABEL_26;
  }

  v41 = v21;
  v42 = v100;
  v43 = v101;
  v44 = *(v101 + 16);
  v89 = *(v101 + 80);
  v90 = (v89 + 32) & ~v89;
  v91 = v36;
  v45 = v102;
  v44(v102, &v40[v90], v100);
  if (!v41)
  {
    (*(v43 + 8))(v45, v42);

    v48 = swift_allocObject();
    v49 = v98;
    v48[2] = v99;
    v48[3] = v49;
    v48[4] = v93;
    v48[5] = v40;
    v48[6] = v18;
LABEL_43:
    v86 = v49;
    return;
  }

  v88 = v40;
  if (*(v41 + 16))
  {

LABEL_42:
    v73 = *(v43 + 32);
    v101 = v43 + 32;
    v102 = v73;
    (v73)(v105, v45, v42);
    v74 = v90;
    v93 = (v8 + v90 + 7) & 0xFFFFFFFFFFFFFFF8;
    v88 = (v93 + 15) & 0xFFFFFFFFFFFFFFF8;
    v75 = (v88 + 15) & 0xFFFFFFFFFFFFFFF8;
    v76 = (v75 + 23) & 0xFFFFFFFFFFFFFFF8;
    v77 = swift_allocObject();
    v78 = v98;
    *(v77 + 16) = v99;
    *(v77 + 24) = v78;
    (v102)(v77 + v74, v105, v100);
    v79 = v94;
    *(v77 + v93) = v41;
    *(v77 + v88) = v18;
    v80 = (v77 + v75);
    v81 = v95;
    v82 = v96;
    *v80 = v79;
    v80[1] = v82;
    v83 = (v77 + v76);
    *v83 = v81;
    v83[1] = v97;
    v84 = (v77 + ((v76 + 23) & 0xFFFFFFFFFFFFFFF8));
    v49 = v78;
    v85 = v91;
    *v84 = v92;
    v84[1] = v85;
    goto LABEL_43;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DC0, &qword_2150C2720);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_2150C29C0;
  v51 = [v20 audioModel];
  if (!v51)
  {
    goto LABEL_33;
  }

  v52 = v51;
  v53 = [v51 audioDocument];

  if (!v53)
  {
    __break(1u);
    goto LABEL_45;
  }

  v54 = [v53 localSpeakerHandle];

  if (v54 && (v103 = 0, v104 = 0, sub_2150A4AC0(), v54, (v55 = v104) != 0))
  {
    *(v50 + 32) = v103;
    *(v50 + 40) = v55;
  }

  else
  {
LABEL_33:
    v56 = objc_opt_self();
    v57 = sub_2150A4A90();
    v58 = [v56 localizedFrameworkStringForKey:v57 value:0 table:0 allowSiri:1];

    v59 = sub_2150A4AD0();
    v61 = v60;

    *(v50 + 32) = v59;
    *(v50 + 40) = v61;
  }

  v62 = [v20 &selRef_supportsOnDeviceSummary + 6];
  if (!v62)
  {

    goto LABEL_40;
  }

  v63 = v62;
  v64 = [v62 audioDocument];

  if (v64)
  {

    v65 = [v64 remoteSpeakerHandle];

    if (v65)
    {
      v103 = 0;
      v104 = 0;
      sub_2150A4AC0();

      v66 = v104;
      if (v104)
      {
        *(v50 + 48) = v103;
        *(v50 + 56) = v66;

LABEL_41:
        v41 = v50;
        v42 = v100;
        v43 = v101;
        v45 = v102;
        goto LABEL_42;
      }
    }

LABEL_40:
    v67 = objc_opt_self();
    v68 = sub_2150A4A90();
    v69 = [v67 localizedFrameworkStringForKey:v68 value:0 table:0 allowSiri:1];

    v70 = sub_2150A4AD0();
    v72 = v71;

    *(v50 + 48) = v70;
    *(v50 + 56) = v72;

    goto LABEL_41;
  }

LABEL_45:
  __break(1u);
}

void sub_2150467C4(uint64_t a1, void *a2)
{
  v3 = *(v2 + OBJC_IVAR___ICTranscription_workerContext);
  if (v3)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = a1;
    *(v6 + 24) = a2;
    v10[4] = sub_215046BB8;
    v10[5] = v6;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 1107296256;
    v10[2] = sub_214F44018;
    v10[3] = &block_descriptor_6;
    v7 = _Block_copy(v10);
    v8 = v3;

    v9 = a2;

    [v8 performBlock_];
    _Block_release(v7);
  }
}

uint64_t sub_2150468CC(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E50, &qword_2150C3710);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v15 - v6;
  type metadata accessor for Transcription();
  v16 = a1;

  sub_215045E78(&v16, a2);
  v9 = v8;
  v11 = v10;

  if (qword_27CA417A0 != -1)
  {
    swift_once();
  }

  v12 = sub_2150A5120();
  (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v9;
  v13[5] = v11;
  sub_214FD26AC(0, 0, v7, &unk_2150CBCA8, v13);
}

uint64_t sub_215046C38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = sub_2150A5120();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_215046CF8, 0, 0);
}

uint64_t sub_215046CF8()
{
  if (qword_27CA417A0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *(v0 + 80) = *(qword_27CA444E0 + OBJC_IVAR___ICTranscription_queue);

  sub_2150A5100();
  sub_2150A3C00();
  sub_21504A1BC(&qword_27CA44518, MEMORY[0x277D36070], MEMORY[0x277D36078]);
  v2 = sub_2150A5010();

  return MEMORY[0x2822009F8](sub_215046E30, v2, v1);
}

uint64_t sub_215046E30()
{
  v1 = v0[9];
  v2 = v0[7];
  v3 = v0[8];
  sub_2150A3BF0();

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

id Transcription.init()()
{
  v1 = v0;
  v2 = sub_2150A5120();
  MEMORY[0x28223BE20](v2 - 8, v3);
  v4 = OBJC_IVAR___ICTranscription_queue;
  sub_2150A3C00();
  sub_2150A5100();
  *&v0[v4] = sub_2150A3BE0();
  v5 = OBJC_IVAR___ICTranscription__currentlyTranscribingAttachment;
  v6 = [objc_allocWithZone(MEMORY[0x277CBE448]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44508, &qword_2150CBC68);
  v7 = swift_allocObject();
  *(v7 + 24) = 0;
  *(v7 + 16) = v6;
  *&v1[v5] = v7;
  v8 = OBJC_IVAR___ICTranscription__downloadingModel;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44510, &qword_2150CBC70);
  v9 = swift_allocObject();
  *(v9 + 20) = 0;
  *(v9 + 16) = 0;
  *&v1[v8] = v9;
  v10 = [objc_opt_self() sharedContext];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 workerManagedObjectContext];
  }

  else
  {
    v12 = 0;
  }

  *&v1[OBJC_IVAR___ICTranscription_workerContext] = v12;
  v14.receiver = v1;
  v14.super_class = type metadata accessor for Transcription();
  return objc_msgSendSuper2(&v14, sel_init);
}

id Transcription.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Transcription();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2150472CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 360) = v14;
  *(v8 + 344) = v13;
  *(v8 + 328) = a7;
  *(v8 + 336) = a8;
  *(v8 + 312) = a5;
  *(v8 + 320) = a6;
  *(v8 + 296) = a3;
  *(v8 + 304) = a4;
  *(v8 + 280) = a1;
  *(v8 + 288) = a2;
  *(v8 + 368) = sub_2150A3340();
  *(v8 + 376) = swift_task_alloc();
  v9 = sub_2150A3400();
  *(v8 + 384) = v9;
  *(v8 + 392) = *(v9 - 8);
  *(v8 + 400) = swift_task_alloc();
  v10 = sub_2150A3C30();
  *(v8 + 408) = v10;
  *(v8 + 416) = *(v10 - 8);
  *(v8 + 424) = swift_task_alloc();
  *(v8 + 432) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_215047448, 0, 0);
}

uint64_t sub_215047448()
{
  v2 = v0[53];
  v1 = v0[54];
  v3 = v0[51];
  v4 = v0[52];
  sub_21504A068(v0[36]);
  v5 = [objc_opt_self() sharedInstance];
  sub_2150A56F0();

  (*(v4 + 104))(v2, *MEMORY[0x277D36088], v3);
  v6 = sub_2150A3C10();
  v7 = *(v4 + 8);
  v7(v2, v3);
  v7(v1, v3);
  v8 = swift_task_alloc();
  v0[55] = v8;
  *v8 = v0;
  v8[1] = sub_2150475AC;
  v9 = v0[36];

  return sub_21501A134(v6 & 1, v9);
}

uint64_t sub_2150475AC()
{
  v2 = *v1;
  v2[56] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_215047848, 0, 0);
  }

  else
  {
    type metadata accessor for CallRecordingTranscriber(0, v3);
    v4 = swift_task_alloc();
    v2[57] = v4;
    *v4 = v2;
    v4[1] = sub_215047734;
    v5 = v2[42];
    v6 = v2[43];
    v7 = v2[40];
    v8 = v2[41];
    v9 = v2[38];
    v10 = v2[39];
    v11 = v2[36];
    v12 = v2[37];

    return sub_214F48304(v12, v9, v10, v11, v7, v8, v5, v6);
  }
}

uint64_t sub_215047734(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 464) = a1;
  *(v3 + 472) = v1;

  if (v1)
  {
    v4 = sub_215047E78;
  }

  else
  {
    v4 = sub_215047A14;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_215047848(uint64_t a1)
{
  v2 = *(v1 + 448);
  sub_215049A40();
  if (qword_27CA41798 != -1)
  {
    swift_once();
  }

  v3 = sub_2150A3F30();
  __swift_project_value_buffer(v3, qword_27CA444C8);
  v4 = v2;
  v5 = sub_2150A3F10();
  v6 = sub_2150A5560();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v2;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_214D51000, v5, v6, "call transcription failed: %@", v7, 0xCu);
    sub_214F302D4(v8, &qword_27CA41DF0, &qword_2150C2940);
    MEMORY[0x216064AF0](v8, -1, -1);
    MEMORY[0x216064AF0](v7, -1, -1);
  }

  else
  {
  }

  v11 = *(v1 + 8);

  return v11();
}

uint64_t sub_215047A14()
{
  v1 = v0[58];
  v3 = v0[49];
  v2 = v0[50];
  v4 = v0[48];
  type metadata accessor for SummarizationManager();
  static TranscriptViewModelSegment.transcriptStringFromSegments(segments:includeSpeakerLabels:)(v1, 1, v2);
  sub_2150A3330();
  (*(v3 + 8))(v2, v4);
  sub_21504A1BC(&qword_27CA42330, MEMORY[0x277CC8B30], MEMORY[0x277CC8B40]);
  v5 = sub_2150A4D20();
  v7 = v6;
  v0[60] = v6;
  v8 = swift_task_alloc();
  v0[61] = v8;
  *v8 = v0;
  v8[1] = sub_215047B70;

  return static SummarizationManager.generateTopLineTranscriptSummary(transcript:)((v0 + 11), v5, v7);
}

uint64_t sub_215047B70()
{
  *(*v1 + 496) = v0;

  if (v0)
  {

    v2 = sub_215048044;
  }

  else
  {
    v2 = sub_215047CB4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_215047CB4()
{
  v1 = *(v0 + 464);
  v3 = *(v0 + 352);
  v2 = *(v0 + 360);
  v4 = *(v0 + 312);
  v6 = *(v0 + 280);
  v5 = *(v0 + 288);
  v7 = *(v0 + 104);
  v8 = *(v0 + 136);
  *(v0 + 48) = *(v0 + 120);
  *(v0 + 64) = v8;
  *(v0 + 80) = *(v0 + 152);
  *(v0 + 16) = *(v0 + 88);
  *(v0 + 32) = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = v6;
  *(v9 + 24) = v5;
  *(v9 + 32) = v4;
  *(v9 + 40) = v1;
  *(v9 + 48) = v3;
  *(v9 + 56) = v2;
  v10 = *(v0 + 64);
  *(v9 + 96) = *(v0 + 48);
  *(v9 + 112) = v10;
  *(v9 + 128) = *(v0 + 80);
  v11 = *(v0 + 32);
  *(v9 + 64) = *(v0 + 16);
  *(v9 + 80) = v11;
  *(v0 + 264) = sub_21504A204;
  *(v0 + 272) = v9;
  *(v0 + 232) = MEMORY[0x277D85DD0];
  *(v0 + 240) = 1107296256;
  *(v0 + 248) = sub_214F44018;
  *(v0 + 256) = &block_descriptor_40;
  v12 = _Block_copy((v0 + 232));
  v13 = v5;
  v14 = v4;

  sub_215019A34(v0 + 16, v0 + 160);

  [v14 performBlock_];
  _Block_release(v12);
  sub_214F302D4(v0 + 16, &qword_27CA43C80, &qword_2150C9080);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_215047E78(uint64_t a1)
{
  v2 = *(v1 + 472);
  sub_215049A40();
  if (qword_27CA41798 != -1)
  {
    swift_once();
  }

  v3 = sub_2150A3F30();
  __swift_project_value_buffer(v3, qword_27CA444C8);
  v4 = v2;
  v5 = sub_2150A3F10();
  v6 = sub_2150A5560();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v2;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_214D51000, v5, v6, "call transcription failed: %@", v7, 0xCu);
    sub_214F302D4(v8, &qword_27CA41DF0, &qword_2150C2940);
    MEMORY[0x216064AF0](v8, -1, -1);
    MEMORY[0x216064AF0](v7, -1, -1);
  }

  else
  {
  }

  v11 = *(v1 + 8);

  return v11();
}

uint64_t sub_215048044(uint64_t a1)
{
  v2 = *(v1 + 496);
  sub_215049A40();
  if (qword_27CA41798 != -1)
  {
    swift_once();
  }

  v3 = sub_2150A3F30();
  __swift_project_value_buffer(v3, qword_27CA444C8);
  v4 = v2;
  v5 = sub_2150A3F10();
  v6 = sub_2150A5560();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v2;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_214D51000, v5, v6, "call transcription failed: %@", v7, 0xCu);
    sub_214F302D4(v8, &qword_27CA41DF0, &qword_2150C2940);
    MEMORY[0x216064AF0](v8, -1, -1);
    MEMORY[0x216064AF0](v7, -1, -1);
  }

  else
  {
  }

  v11 = *(v1 + 8);

  return v11();
}

uint64_t sub_215048210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[44] = a4;
  v5[45] = a5;
  v5[42] = a2;
  v5[43] = a3;
  v5[41] = a1;
  v5[46] = sub_2150A3340();
  v5[47] = swift_task_alloc();
  v6 = sub_2150A3400();
  v5[48] = v6;
  v5[49] = *(v6 - 8);
  v5[50] = swift_task_alloc();
  v7 = sub_2150A3750();
  v5[51] = v7;
  v5[52] = *(v7 - 8);
  v5[53] = swift_task_alloc();
  v5[54] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44520, &qword_2150CBCD0);
  v5[55] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2150483A0, 0, 0);
}

uint64_t sub_2150483A0()
{
  sub_21504A068(*(v0 + 336));
  v1 = swift_task_alloc();
  *(v0 + 448) = v1;
  *v1 = v0;
  v1[1] = sub_215048450;
  v2 = *(v0 + 336);

  return sub_21501A134(0, v2);
}

uint64_t sub_215048450()
{
  *(*v1 + 456) = v0;

  if (v0)
  {
    v2 = sub_215048820;
  }

  else
  {
    v2 = sub_215048564;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_215048564()
{
  v1 = v0[43];
  v2 = v0[44];
  v3 = v1[2];
  v0[58] = v3;

  if (v3 && (v4 = v0[54], v5 = v0[52], v0[59] = MEMORY[0x277D84F90], v0[60] = 0, v0[61] = v1[4], v0[62] = v1[5], *(v2 + 16)))
  {
    v6 = v0[55];
    v7 = v0[53];
    v8 = v0[51];
    v9 = *(v4 + 48);
    (*(v5 + 16))(v6 + v9, v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v8);
    (*(v5 + 32))(v7, v6 + v9, v8);

    v10 = swift_task_alloc();
    v0[63] = v10;
    *v10 = v0;
    v10[1] = sub_2150489F0;
    v11 = v0[53];

    return sub_21501A6E0(v11, 0, 0, 0);
  }

  else
  {

    v14 = v0[49];
    v13 = v0[50];
    v15 = v0[48];

    type metadata accessor for SummarizationManager();
    static TranscriptViewModelSegment.transcriptStringFromSegments(segments:includeSpeakerLabels:)(MEMORY[0x277D84F90], 1, v13);

    sub_2150A3330();
    (*(v14 + 8))(v13, v15);
    sub_21504A1BC(&qword_27CA42330, MEMORY[0x277CC8B30], MEMORY[0x277CC8B40]);
    v16 = sub_2150A4D20();
    v18 = v17;
    v0[66] = v17;
    v19 = swift_task_alloc();
    v0[67] = v19;
    *v19 = v0;
    v19[1] = sub_215048B38;

    return static SummarizationManager.generateTopLineTranscriptSummary(transcript:)((v0 + 2), v16, v18);
  }
}

uint64_t sub_215048820(uint64_t a1)
{
  v2 = *(v1 + 456);
  sub_215049A40();
  if (qword_27CA41798 != -1)
  {
    swift_once();
  }

  v3 = sub_2150A3F30();
  __swift_project_value_buffer(v3, qword_27CA444C8);
  v4 = v2;
  v5 = sub_2150A3F10();
  v6 = sub_2150A5560();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v2;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_214D51000, v5, v6, "offline audio transcription failed: %@", v7, 0xCu);
    sub_214F302D4(v8, &qword_27CA41DF0, &qword_2150C2940);
    MEMORY[0x216064AF0](v8, -1, -1);
    MEMORY[0x216064AF0](v7, -1, -1);
  }

  else
  {
  }

  v11 = *(v1 + 8);

  return v11();
}

uint64_t sub_2150489F0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 512) = a1;
  *(v3 + 520) = v1;

  if (v1)
  {

    v4 = sub_215049384;
  }

  else
  {
    v4 = sub_215048C54;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_215048B38()
{
  *(*v1 + 544) = v0;

  if (v0)
  {
    v2 = sub_2150497A8;
  }

  else
  {

    v2 = sub_21504956C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_215048C54()
{
  v1 = v0[65];
  v2 = v0[64];
  v3 = [objc_opt_self() sharedConfiguration];
  v4 = sub_215038B68(v2, 0, v3);
  if (v1)
  {
    v6 = v0[52];
    v5 = v0[53];
    v7 = v0[51];

    (*(v6 + 8))(v5, v7);

    sub_215049A40();
    if (qword_27CA41798 != -1)
    {
      swift_once();
    }

    v8 = sub_2150A3F30();
    __swift_project_value_buffer(v8, qword_27CA444C8);
    v9 = v1;
    v10 = sub_2150A3F10();
    v11 = sub_2150A5560();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      v14 = v1;
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 4) = v15;
      *v13 = v15;
      _os_log_impl(&dword_214D51000, v10, v11, "offline audio transcription failed: %@", v12, 0xCu);
      sub_214F302D4(v13, &qword_27CA41DF0, &qword_2150C2940);
      MEMORY[0x216064AF0](v13, -1, -1);
      MEMORY[0x216064AF0](v12, -1, -1);
    }

    else
    {
    }

    v26 = v0[1];

    v26();
    return;
  }

  v16 = v0[59];

  v17 = v4[2];
  v18 = *(v16 + 16);
  v19 = v18 + v17;
  if (__OFADD__(v18, v17))
  {
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = v0[59];
  if ((isUniquelyReferenced_nonNull_native & 1) != 0 && v19 <= v21[3] >> 1)
  {
    if (v4[2])
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

  if (v18 <= v19)
  {
    v27 = v18 + v17;
  }

  else
  {
    v27 = v18;
  }

  v21 = sub_21505F724(isUniquelyReferenced_nonNull_native, v27, 1, v0[59]);
  if (!v4[2])
  {
LABEL_22:

    if (!v17)
    {
      goto LABEL_23;
    }

    goto LABEL_33;
  }

LABEL_10:
  v22 = (v21[3] >> 1) - v21[2];
  type metadata accessor for TranscriptViewModelSegment(0);
  if (v22 < v17)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  swift_arrayInitWithCopy();

  if (v17)
  {
    v23 = v21[2];
    v24 = __OFADD__(v23, v17);
    v25 = v23 + v17;
    if (!v24)
    {
      v21[2] = v25;
      goto LABEL_23;
    }

LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

LABEL_23:
  v29 = v0[61];
  v28 = v0[62];
  v59 = v0[58];
  v30 = v0[52];
  v57 = v0[51];
  v58 = v0[53];
  v31 = v0[45];
  v32 = v0[41];
  v33 = v0[42];
  v56 = v0[60] + 1;
  v34 = swift_allocObject();
  *(v34 + 16) = v32;
  *(v34 + 24) = v33;
  *(v34 + 32) = v31;
  *(v34 + 40) = v4;
  *(v34 + 48) = v29;
  *(v34 + 56) = v28;
  *(v34 + 64) = 0u;
  *(v34 + 80) = 0u;
  *(v34 + 96) = 0u;
  *(v34 + 112) = 0u;
  *(v34 + 128) = 0;
  v0[33] = sub_21504A2E4;
  v0[34] = v34;
  v0[29] = MEMORY[0x277D85DD0];
  v0[30] = 1107296256;
  v0[31] = sub_214F44018;
  v0[32] = &block_descriptor_49;
  v35 = _Block_copy(v0 + 29);
  v36 = v33;
  v37 = v31;

  [v37 performBlock_];
  _Block_release(v35);
  (*(v30 + 8))(v58, v57);
  if (v56 == v59 || (v38 = v0[60] + 1, v0[59] = v21, v0[60] = v38, v39 = v0[44], v40 = v0[43] + 16 * v38, v0[61] = *(v40 + 32), v0[62] = *(v40 + 40), v41 = *(v39 + 16), v38 == v41))
  {

    v43 = v0[49];
    v42 = v0[50];
    v44 = v0[48];

    type metadata accessor for SummarizationManager();
    static TranscriptViewModelSegment.transcriptStringFromSegments(segments:includeSpeakerLabels:)(v21, 1, v42);

    sub_2150A3330();
    (*(v43 + 8))(v42, v44);
    sub_21504A1BC(&qword_27CA42330, MEMORY[0x277CC8B30], MEMORY[0x277CC8B40]);
    v45 = sub_2150A4D20();
    v47 = v46;
    v0[66] = v46;
    v48 = swift_task_alloc();
    v0[67] = v48;
    *v48 = v0;
    v48[1] = sub_215048B38;

    static SummarizationManager.generateTopLineTranscriptSummary(transcript:)((v0 + 2), v45, v47);
    return;
  }

  if (v38 >= v41)
  {
LABEL_36:
    __break(1u);
    return;
  }

  v49 = v0[55];
  v51 = v0[52];
  v50 = v0[53];
  v52 = v0[51];
  v53 = *(v0[54] + 48);
  (*(v51 + 16))(v49 + v53, v39 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v38, v52);
  (*(v51 + 32))(v50, v49 + v53, v52);

  v54 = swift_task_alloc();
  v0[63] = v54;
  *v54 = v0;
  v54[1] = sub_2150489F0;
  v55 = v0[53];

  sub_21501A6E0(v55, 0, 0, 0);
}

uint64_t sub_215049384()
{
  (*(v0[52] + 8))(v0[53], v0[51]);
  v1 = v0[65];
  sub_215049A40();
  if (qword_27CA41798 != -1)
  {
    swift_once();
  }

  v2 = sub_2150A3F30();
  __swift_project_value_buffer(v2, qword_27CA444C8);
  v3 = v1;
  v4 = sub_2150A3F10();
  v5 = sub_2150A5560();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_214D51000, v4, v5, "offline audio transcription failed: %@", v6, 0xCu);
    sub_214F302D4(v7, &qword_27CA41DF0, &qword_2150C2940);
    MEMORY[0x216064AF0](v7, -1, -1);
    MEMORY[0x216064AF0](v6, -1, -1);
  }

  else
  {
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_21504956C()
{
  v1 = *(v0 + 32);
  *(v0 + 88) = *(v0 + 16);
  *(v0 + 104) = v1;
  v2 = *(v0 + 64);
  *(v0 + 120) = *(v0 + 48);
  *(v0 + 136) = v2;
  *(v0 + 152) = *(v0 + 80);
  v3 = *(v0 + 96);
  if (v3 && (v4 = *(v0 + 360), v5 = *(v0 + 328), v6 = *(v0 + 336), v7 = *(v0 + 88), v8 = swift_allocObject(), *(v8 + 16) = v5, *(v8 + 24) = v6, *(v8 + 32) = v4, *(v8 + 40) = v7, *(v8 + 48) = v3, v9 = *(v0 + 48), *(v8 + 56) = *(v0 + 32), *(v8 + 72) = v9, *(v8 + 88) = *(v0 + 64), *(v8 + 104) = *(v0 + 80), v10 = swift_allocObject(), *(v10 + 16) = sub_215019A24, *(v10 + 24) = v8, *(v0 + 312) = sub_214F5D418, *(v0 + 320) = v10, *(v0 + 280) = MEMORY[0x277D85DD0], *(v0 + 288) = 1107296256, *(v0 + 296) = sub_214F34100, *(v0 + 304) = &block_descriptor_59, v11 = _Block_copy((v0 + 280)), v12 = v6, v13 = v4, sub_215019A34(v0 + 88, v0 + 160), , , [v13 performBlockAndWait_], _Block_release(v11), LOBYTE(v11) = swift_isEscapingClosureAtFileLocation(), , , result = sub_214F302D4(v0 + 88, &qword_27CA43C80, &qword_2150C9080), (v11 & 1) != 0))
  {
    __break(1u);
  }

  else
  {

    v15 = *(v0 + 8);

    return v15();
  }

  return result;
}

uint64_t sub_2150497A8()
{

  v1 = *(v0 + 544);
  sub_215049A40();
  if (qword_27CA41798 != -1)
  {
    swift_once();
  }

  v2 = sub_2150A3F30();
  __swift_project_value_buffer(v2, qword_27CA444C8);
  v3 = v1;
  v4 = sub_2150A3F10();
  v5 = sub_2150A5560();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_214D51000, v4, v5, "offline audio transcription failed: %@", v6, 0xCu);
    sub_214F302D4(v7, &qword_27CA41DF0, &qword_2150C2940);
    MEMORY[0x216064AF0](v7, -1, -1);
    MEMORY[0x216064AF0](v6, -1, -1);
  }

  else
  {
  }

  v10 = *(v0 + 8);

  return v10();
}