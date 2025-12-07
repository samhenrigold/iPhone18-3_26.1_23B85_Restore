double TTRUndoRegistration.editingTarget.getter@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + 40);
  sub_21DBF8E0C();
  return result;
}

void TTRUndoRegistration.editingTarget.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 40) = v2;
}

uint64_t TTRUndoRegistration.action.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

void TTRUndoRegistration.init(navigationContext:editingTarget:action:)(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *a2;
  *a5 = 0u;
  *(a5 + 16) = 0u;
  v9 = MEMORY[0x277D84F90];
  *(a5 + 32) = 0;
  *(a5 + 40) = v9;
  sub_21D3DD654(a1, a5);

  *(a5 + 40) = v8;
  *(a5 + 48) = a3;
  *(a5 + 56) = a4;
}

uint64_t sub_21D3DC818(void *a1, uint64_t a2)
{
  sub_21D3DD5E4(a2, v8);
  type metadata accessor for FrozenUndoContext();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  v5 = v8[1];
  *(v4 + 24) = v8[0];
  *(v4 + 40) = v5;
  *(v4 + 56) = v9;
  v6 = a1;
  sub_21D3DC8A4(a2);
}

uint64_t sub_21D3DC8A4(uint64_t a1)
{
  v3 = *(a1 + 48);
  v10[2] = *v1;
  v10[3] = &off_282EB6E90;
  v9 = v1;

  v3(&v9);
  __swift_destroy_boxed_opaque_existential_0(&v9);
  v4 = v1[2];
  sub_21D3DD5E4(a1, v10);
  v5 = *(a1 + 40);
  v6 = v4;
  sub_21DBF8E0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59260, &unk_21DC0CB70);
  sub_21D0D0F1C(&qword_27CE5A7E8, &qword_27CE59260, &unk_21DC0CB70, MEMORY[0x277CBCEB0]);
  v7 = sub_21DBF920C();
  v9 = v6;
  v10[5] = v5;
  v10[6] = v7;
  NSUndoManager.undoActionNotificationSubject.getter();
  sub_21DBF906C();

  return sub_21D3DDF7C(&v9);
}

uint64_t TTRUndoContext.registerUndo(forEditing:action:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *a1;
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;

  TTRUndoContext.registerUndo(forEditing:action:)(&v11, sub_21D3DD6C4, v9, a4, a5);
}

uint64_t sub_21D3DCA9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_21D0D32E4(a1, v7);
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
  sub_21D0D0FD0(v7, v5 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59260, &unk_21DC0CB70);
  swift_allocObject();

  return sub_21DBF911C();
}

uint64_t sub_21D3DCB48(uint64_t (*a1)(uint64_t *), uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  a3(a5);
  v7 = 0;
  v8 = 0;
  return a1(&v7);
}

uint64_t sub_21D3DCBE4(uint64_t *a1, id a2, char a3, void *a4, uint64_t a5, uint64_t a6)
{
  v11 = *a1;
  if ((a3 & 1) == 0)
  {
    result = [a2 canRedo];
    if ((result & 1) == 0)
    {
      return result;
    }

    goto LABEL_5;
  }

  result = [a2 canUndo];
  if (result)
  {
LABEL_5:
    v16 = v11;
    v13 = swift_allocObject();
    *(v13 + 16) = a3 & 1;
    *(v13 + 24) = a2;
    *(v13 + 32) = a4;
    *(v13 + 40) = v11;
    v14 = a4;
    sub_21DBF8E0C();
    v15 = a2;
    TTRUndoContext.registerUndo(forEditing:action:)(&v16, sub_21D3DDF6C, v13, a5, a6);
  }

  return result;
}

uint64_t sub_21D3DCCD4(void *a1, char a2, void *a3, void *a4, uint64_t a5)
{
  v10 = a1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v10);
  v12 = (*(v11 + 8))(v10, v11);
  if (a2)
  {
    v13 = sub_21DBBF8F8(a4, v12);
  }

  else
  {
    v13 = sub_21DBBF928(a4, v12);
  }

  v14 = v13;

  v15 = a1[3];
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v15);
  v18 = a5;
  sub_21D3DCBE4(&v18, a3, (a2 & 1) == 0, a4, v15, v16);
  return v14;
}

uint64_t TTRBasicUndoContext.undoRegistration(forEditing:action:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a1;
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  *a4 = 0u;
  *(a4 + 16) = 0u;
  v8 = MEMORY[0x277D84F90];
  *(a4 + 32) = 0;
  *(a4 + 40) = v8;
  sub_21DBF8E0C();
  sub_21D3DD654(v10, a4);

  *(a4 + 40) = v7;
  *(a4 + 48) = a2;
  *(a4 + 56) = a3;
}

uint64_t TTRBasicUndoContext.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_21D3DCE9C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a1;
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  *a4 = 0u;
  *(a4 + 16) = 0u;
  v8 = MEMORY[0x277D84F90];
  *(a4 + 32) = 0;
  *(a4 + 40) = v8;
  sub_21DBF8E0C();
  sub_21D3DD654(v10, a4);

  *(a4 + 40) = v7;
  *(a4 + 48) = a2;
  *(a4 + 56) = a3;
}

uint64_t sub_21D3DCF60()
{
  sub_21D0CF7E0(v0 + 24, &qword_27CE5BDD0, &qword_21DC14DC0);

  return swift_deallocClassInstance();
}

uint64_t sub_21D3DCFB0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *v4;
  v9 = *a1;
  sub_21D3DD5E4(v8 + 24, v12);
  *a4 = 0u;
  *(a4 + 16) = 0u;
  v10 = MEMORY[0x277D84F90];
  *(a4 + 32) = 0;
  *(a4 + 40) = v10;
  sub_21DBF8E0C();
  sub_21D3DD654(v12, a4);

  *(a4 + 40) = v9;
  *(a4 + 48) = a2;
  *(a4 + 56) = a3;
}

void TTRUndoNavigationEditingTarget.init<A>(remObjects:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v8[5] = a1;
  v8[2] = a2;
  v4 = sub_21DBFA74C();
  WitnessTable = swift_getWitnessTable(MEMORY[0x277D83988], v4);
  v7 = sub_21D0E5014(sub_21D3DD6CC, v8, v4, &type metadata for TTRUndoNavigationEditingTarget.ItemID, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v6);

  *a3 = v7;
}

uint64_t sub_21D3DD0F4@<X0>(id *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = [*a1 remObjectID];
  a3[3] = sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
  *a3 = v5;
  result = swift_getMetatypeMetadata();
  a3[7] = result;
  a3[4] = a2;
  return result;
}

void TTRUndoNavigationEditingTarget.init<A>(remObject:)(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_21D23CE60(a2, a2);
  swift_allocObject();
  v6 = sub_21DBFA60C();
  *v7 = a1;
  sub_21D23C8B4(v6, a2);
  TTRUndoNavigationEditingTarget.init<A>(remObjects:)(v8, a2, &v9);
  *a3 = v9;
}

void *TTRUndoNavigationEditingTarget.append<A>(_:)(uint64_t a1, uint64_t a2)
{
  result = sub_21DBFA6DC();
  if (result)
  {
    v19 = v2;
    v6 = *v2;
    for (i = 4; ; ++i)
    {
      v8 = i - 4;
      v9 = sub_21DBFA6AC();
      sub_21DBFA61C();
      if (v9)
      {
        v10 = *(a1 + 8 * i);
        result = swift_unknownObjectRetain();
        v11 = i - 3;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_15;
        }
      }

      else
      {
        result = sub_21DBFBF7C();
        v10 = result;
        v11 = i - 3;
        if (__OFADD__(v8, 1))
        {
LABEL_15:
          __break(1u);
          return result;
        }
      }

      v12 = [v10 remObjectID];
      v21[3] = sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
      v21[0] = v12;
      v21[7] = swift_getMetatypeMetadata();
      v21[4] = a2;
      sub_21D22BFF0(v21, v20);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_21D2116C4(0, *(v6 + 2) + 1, 1, v6);
      }

      v14 = *(v6 + 2);
      v13 = *(v6 + 3);
      if (v14 >= v13 >> 1)
      {
        v6 = sub_21D2116C4((v13 > 1), v14 + 1, 1, v6);
      }

      swift_unknownObjectRelease();
      sub_21D22C04C(v21);
      *(v6 + 2) = v14 + 1;
      v15 = &v6[64 * v14];
      v16 = v20[3];
      v17 = v20[0];
      v18 = v20[1];
      *(v15 + 4) = v20[2];
      *(v15 + 5) = v16;
      *(v15 + 2) = v17;
      *(v15 + 3) = v18;
      result = sub_21DBFA6DC();
      if (v11 == result)
      {
        *v19 = v6;
        return result;
      }
    }
  }

  return result;
}

double TTRUndoNavigationEditingTarget.append<A>(_:)(uint64_t a1, uint64_t a2)
{
  sub_21D23CE60(a2, a2);
  swift_initStackObject();
  v4 = sub_21DBFA60C();
  *v5 = a1;
  sub_21D23C8B4(v4, a2);
  v7 = v6;
  swift_unknownObjectRetain();
  TTRUndoNavigationEditingTarget.append<A>(_:)(v7, a2);

  return result;
}

double TTRUndoNavigationEditingTarget.append(_:)(void *a1)
{
  v2 = [a1 objectID];
  v16[3] = sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
  v16[0] = v2;
  v3 = sub_21D0D8CF0(0, &qword_280D17860, 0x277D44750);
  v16[7] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE584E8, &unk_21DC0C0B0);
  v16[4] = v3;
  sub_21D22BFF0(v16, v13);
  v4 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_21D2116C4(0, *(v4 + 2) + 1, 1, v4);
    *v1 = v4;
  }

  v7 = *(v4 + 2);
  v6 = *(v4 + 3);
  if (v7 >= v6 >> 1)
  {
    v4 = sub_21D2116C4((v6 > 1), v7 + 1, 1, v4);
    *v1 = v4;
  }

  sub_21D22C04C(v16);
  *(v4 + 2) = v7 + 1;
  v8 = &v4[64 * v7];
  result = *&v14;
  v10 = v15;
  v11 = v13[0];
  v12 = v13[1];
  *(v8 + 4) = v14;
  *(v8 + 5) = v10;
  *(v8 + 2) = v11;
  *(v8 + 3) = v12;
  *v1 = v4;
  return result;
}

uint64_t sub_21D3DD5E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5BDD0, &qword_21DC14DC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D3DD654(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5BDD0, &qword_21DC14DC0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t initializeWithCopy for TTRUndoNavigationEditingTarget.ItemID(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  *(a1 + 24) = v4;
  (**(v4 - 8))();
  v5 = *(a2 + 56);
  *(a1 + 56) = v5;
  (**(v5 - 8))(a1 + 32, a2 + 32);
  return a1;
}

uint64_t *assignWithCopy for TTRUndoNavigationEditingTarget.ItemID(uint64_t *a1, uint64_t *a2)
{
  __swift_assign_boxed_opaque_existential_0(a1, a2);
  __swift_assign_boxed_opaque_existential_0(a1 + 4, a2 + 4);
  return a1;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t assignWithTake for TTRUndoNavigationEditingTarget.ItemID(uint64_t a1, _OWORD *a2)
{
  __swift_destroy_boxed_opaque_existential_0(a1);
  v4 = a2[1];
  *a1 = *a2;
  *(a1 + 16) = v4;
  __swift_destroy_boxed_opaque_existential_0((a1 + 32));
  v5 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v5;
  return a1;
}

uint64_t getEnumTagSinglePayload for TTRUndoNavigationEditingTarget.ItemID(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRUndoNavigationEditingTarget.ItemID(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t destroy for TTRUndoActionNotification(uint64_t a1)
{
  if (*(a1 + 32))
  {
    __swift_destroy_boxed_opaque_existential_0((a1 + 8));
  }
}

void *initializeWithCopy for TTRUndoActionNotification(void *a1, uint64_t a2)
{
  v4 = *a2;
  *a1 = *a2;
  v5 = a1 + 1;
  v6 = *(a2 + 32);
  v7 = v4;
  if (v6)
  {
    v8 = *(a2 + 40);
    a1[4] = v6;
    a1[5] = v8;
    (**(v6 - 8))(v5, a2 + 8, v6);
  }

  else
  {
    v9 = *(a2 + 24);
    *v5 = *(a2 + 8);
    *(v5 + 1) = v9;
    v5[4] = *(a2 + 40);
  }

  v10 = *(a2 + 48);
  v11 = *(a2 + 56);
  a1[6] = v10;
  a1[7] = v11;
  sub_21DBF8E0C();

  return a1;
}

uint64_t assignWithCopy for TTRUndoActionNotification(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  v7 = *(a2 + 32);
  if (!*(a1 + 32))
  {
    if (v7)
    {
      *(a1 + 32) = v7;
      *(a1 + 40) = *(a2 + 40);
      (**(v7 - 8))(a1 + 8, a2 + 8);
      goto LABEL_8;
    }

LABEL_7:
    v9 = *(a2 + 8);
    v10 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 24) = v10;
    *(a1 + 8) = v9;
    goto LABEL_8;
  }

  v8 = (a1 + 8);
  if (!v7)
  {
    __swift_destroy_boxed_opaque_existential_0(v8);
    goto LABEL_7;
  }

  __swift_assign_boxed_opaque_existential_1(v8, (a2 + 8));
LABEL_8:
  *(a1 + 48) = *(a2 + 48);
  sub_21DBF8E0C();

  *(a1 + 56) = *(a2 + 56);

  return a1;
}

uint64_t assignWithTake for TTRUndoActionNotification(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;

  if (*(a1 + 32))
  {
    __swift_destroy_boxed_opaque_existential_0((a1 + 8));
  }

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  v5 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v5;

  *(a1 + 56) = *(a2 + 56);

  return a1;
}

uint64_t getEnumTagSinglePayload for TTRUndoActionNotification(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t storeEnumTagSinglePayload for TTRUndoActionNotification(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t destroy for TTRUndoRegistration(void *a1)
{
  if (a1[3])
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }
}

uint64_t initializeWithCopy for TTRUndoRegistration(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (v4)
  {
    v5 = *(a2 + 32);
    *(a1 + 24) = v4;
    *(a1 + 32) = v5;
    (**(v4 - 8))(a1, a2);
  }

  else
  {
    v6 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v6;
    *(a1 + 32) = *(a2 + 32);
  }

  v7 = *(a2 + 56);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = v7;
  sub_21DBF8E0C();

  return a1;
}

uint64_t assignWithCopy for TTRUndoRegistration(uint64_t a1, __int128 *a2)
{
  v4 = *(a2 + 3);
  if (!*(a1 + 24))
  {
    if (v4)
    {
      *(a1 + 24) = v4;
      *(a1 + 32) = *(a2 + 4);
      (**(v4 - 8))(a1, a2);
      goto LABEL_8;
    }

LABEL_7:
    v5 = *a2;
    v6 = a2[1];
    *(a1 + 32) = *(a2 + 4);
    *a1 = v5;
    *(a1 + 16) = v6;
    goto LABEL_8;
  }

  if (!v4)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    goto LABEL_7;
  }

  __swift_assign_boxed_opaque_existential_1(a1, a2);
LABEL_8:
  *(a1 + 40) = *(a2 + 5);
  sub_21DBF8E0C();

  v7 = *(a2 + 7);
  *(a1 + 48) = *(a2 + 6);
  *(a1 + 56) = v7;

  return a1;
}

uint64_t assignWithTake for TTRUndoRegistration(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  v5 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v5;

  *(a1 + 48) = *(a2 + 48);

  return a1;
}

uint64_t getEnumTagSinglePayload for TTRUndoRegistration(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRUndoRegistration(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

Swift::String __swiftcall REMRemindersListDataView.SortingStyle.labelTextForSortingStyle()()
{
  v1 = v0;
  v2 = sub_21DBF70DC();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x277D45400])
  {
    if (qword_280D1BAA8 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

  if (v7 == *MEMORY[0x277D45428])
  {
    if (qword_280D1BAA8 == -1)
    {
LABEL_6:
      v8 = sub_21DBF516C();
      v10 = v9;
      (*(v3 + 8))(v6, v2);
      goto LABEL_7;
    }

LABEL_20:
    swift_once();
    goto LABEL_6;
  }

  if (v7 == *MEMORY[0x277D45408])
  {
    if (qword_280D1BAA8 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

  if (v7 == *MEMORY[0x277D45410])
  {
    if (qword_280D1BAA8 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

  if (v7 == *MEMORY[0x277D45420])
  {
    v8 = 0;
    v10 = 0xE000000000000000;
  }

  else
  {
    if (v7 != *MEMORY[0x277D45418])
    {
      v11 = sub_21DBFC63C();
      __break(1u);
      goto LABEL_23;
    }

    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    v8 = sub_21DBF516C();
    v10 = v13;
  }

LABEL_7:
  v11 = v8;
  v12 = v10;
LABEL_23:
  result._object = v12;
  result._countAndFlagsBits = v11;
  return result;
}

Swift::String __swiftcall REMRemindersListDataView.SortingStyle.labelTextForSortingDirection()()
{
  v1 = v0;
  v2 = sub_21DBF733C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v39 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v38 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v38 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v38 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v38 - v15;
  v17 = sub_21DBF70DC();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v21, v1, v17, v19);
  v22 = (*(v18 + 88))(v21, v17);
  if (v22 == *MEMORY[0x277D45400])
  {
    (*(v18 + 96))(v21, v17);
    (*(v3 + 32))(v16, v21, v2);
    (*(v3 + 104))(v13, *MEMORY[0x277D454E8], v2);
    sub_21D3DEE8C();
    sub_21DBFA5BC();
    sub_21DBFA5BC();
    v23 = *(v3 + 8);
    v23(v13, v2);
    if (v41 == v40)
    {
      if (qword_280D1BAA8 == -1)
      {
        goto LABEL_10;
      }
    }

    else if (qword_280D1BAA8 == -1)
    {
LABEL_10:
      v25 = sub_21DBF516C();
      v27 = v26;
      v23(v16, v2);
LABEL_30:
      v35 = v25;
      v36 = v27;
      goto LABEL_41;
    }

    swift_once();
    goto LABEL_10;
  }

  if (v22 == *MEMORY[0x277D45428])
  {
    (*(v18 + 96))(v21, v17);
    (*(v3 + 32))(v7, v21, v2);
    (*(v3 + 104))(v13, *MEMORY[0x277D454E8], v2);
    sub_21D3DEE8C();
    sub_21DBFA5BC();
    sub_21DBFA5BC();
    v24 = *(v3 + 8);
    v24(v13, v2);
    if (v41 == v40)
    {
      if (qword_280D1BAA8 == -1)
      {
        goto LABEL_16;
      }
    }

    else if (qword_280D1BAA8 == -1)
    {
LABEL_16:
      v25 = sub_21DBF516C();
      v27 = v29;
      v30 = v7;
LABEL_17:
      v24(v30, v2);
      goto LABEL_30;
    }

    swift_once();
    goto LABEL_16;
  }

  if (v22 == *MEMORY[0x277D45408])
  {
    (*(v18 + 96))(v21, v17);
    (*(v3 + 32))(v10, v21, v2);
    (*(v3 + 104))(v13, *MEMORY[0x277D454E8], v2);
    sub_21D3DEE8C();
    sub_21DBFA5BC();
    sub_21DBFA5BC();
    v28 = *(v3 + 8);
    v28(v13, v2);
    if (v41 == v40)
    {
      if (qword_280D1BAA8 == -1)
      {
        goto LABEL_23;
      }
    }

    else if (qword_280D1BAA8 == -1)
    {
LABEL_23:
      v25 = sub_21DBF516C();
      v27 = v32;
      v28(v10, v2);
      goto LABEL_30;
    }

    swift_once();
    goto LABEL_23;
  }

  if (v22 == *MEMORY[0x277D45410])
  {
    (*(v18 + 96))(v21, v17);
    v31 = v39;
    (*(v3 + 32))(v39, v21, v2);
    (*(v3 + 104))(v13, *MEMORY[0x277D454E8], v2);
    sub_21D3DEE8C();
    sub_21DBFA5BC();
    sub_21DBFA5BC();
    v24 = *(v3 + 8);
    v24(v13, v2);
    if (v41 == v40)
    {
      if (qword_280D1BAA8 == -1)
      {
        goto LABEL_32;
      }
    }

    else if (qword_280D1BAA8 == -1)
    {
LABEL_32:
      v25 = sub_21DBF516C();
      v27 = v34;
      v30 = v31;
      goto LABEL_17;
    }

    swift_once();
    goto LABEL_32;
  }

  if (v22 == *MEMORY[0x277D45420] || v22 == *MEMORY[0x277D45418])
  {
    v25 = 0;
    v27 = 0xE000000000000000;
    goto LABEL_30;
  }

  v35 = sub_21DBFC63C();
  __break(1u);
LABEL_41:
  result._object = v36;
  result._countAndFlagsBits = v35;
  return result;
}

unint64_t sub_21D3DEE8C()
{
  result = qword_27CE5BDE8;
  if (!qword_27CE5BDE8)
  {
    v3 = sub_21DBF733C();
    result = swift_getWitnessTable(MEMORY[0x277D454F0], v3, v0, v1);
    atomic_store(result, &qword_27CE5BDE8);
  }

  return result;
}

Swift::Int __swiftcall TTRCounterBasedIdentifierGenerator.allocID()()
{
  result = *(v0 + 16);
  *(v0 + 16) = result + 1;
  return result;
}

uint64_t TTRCounterBasedIdentifierGenerator.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

void sub_21D3DEF70(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_21DBFC01C();
    v3 = v1 + 64;
    v4 = sub_21DBFBCCC();
    v5 = 0;
    v6 = *(v1 + 36);
    v17 = v1 + 72;
    v18 = v1;
    while ((v4 & 0x8000000000000000) == 0 && v4 < 1 << *(v1 + 32))
    {
      v8 = v4 >> 6;
      if ((*(v3 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
      {
        goto LABEL_20;
      }

      if (v6 != *(v1 + 36))
      {
        goto LABEL_21;
      }

      v19 = v5;
      v9 = *(*(v1 + 56) + 8 * v4);
      sub_21DBFBFEC();
      sub_21DBFC03C();
      v1 = v18;
      sub_21DBFC04C();
      sub_21DBFBFFC();
      v7 = 1 << *(v18 + 32);
      if (v4 >= v7)
      {
        goto LABEL_22;
      }

      v10 = *(v3 + 8 * v8);
      if ((v10 & (1 << v4)) == 0)
      {
        goto LABEL_23;
      }

      if (v6 != *(v18 + 36))
      {
        goto LABEL_24;
      }

      v11 = v10 & (-2 << (v4 & 0x3F));
      if (v11)
      {
        v7 = __clz(__rbit64(v11)) | v4 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v12 = v8 << 6;
        v13 = v8 + 1;
        v14 = (v17 + 8 * v8);
        while (v13 < (v7 + 63) >> 6)
        {
          v16 = *v14++;
          v15 = v16;
          v12 += 64;
          ++v13;
          if (v16)
          {
            sub_21D15746C(v4, v6, 0);
            v7 = __clz(__rbit64(v15)) + v12;
            goto LABEL_4;
          }
        }

        sub_21D15746C(v4, v6, 0);
      }

LABEL_4:
      v5 = v19 + 1;
      v4 = v7;
      if (v19 + 1 == v2)
      {
        return;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }
}

uint64_t sub_21D3DF184(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_21D830500(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_21D3E5458(v6);
  return sub_21DBFBFFC();
}

uint64_t sub_21D3DF200()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_280D0C878);
  v1 = __swift_project_value_buffer(v0, qword_280D0C878);
  if (qword_280D0C8B0 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21A98);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t TTRAutoCompleteReminderProvider.__allocating_init(store:)(uint64_t a1)
{
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v2 + 120) = xmmword_21DC14FC0;
  *(v2 + 136) = 0;
  *(v2 + 144) = 0;
  *(v2 + 112) = a1;
  return v2;
}

uint64_t TTRAutoCompleteReminderProvider.init(store:)(uint64_t a1)
{
  swift_defaultActor_initialize();
  *(v1 + 120) = xmmword_21DC14FC0;
  *(v1 + 136) = 0;
  *(v1 + 144) = 0;
  *(v1 + 112) = a1;
  return v1;
}

uint64_t sub_21D3DF368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[15] = a5;
  v6[16] = v5;
  v6[13] = a3;
  v6[14] = a4;
  v6[11] = a1;
  v6[12] = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5BDF0, &qword_21DC14FD8);
  v6[17] = v7;
  v6[18] = *(v7 - 8);
  v6[19] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5BDF8, &qword_21DC14FE0);
  v6[20] = v8;
  v6[21] = *(v8 - 8);
  v6[22] = swift_task_alloc();
  v9 = sub_21DBF7E3C();
  v6[23] = v9;
  v6[24] = *(v9 - 8);
  v6[25] = swift_task_alloc();
  v6[26] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5BE00, &qword_21DC14FE8);
  v6[27] = swift_task_alloc();
  v6[28] = swift_task_alloc();
  v10 = sub_21DBF624C();
  v6[29] = v10;
  v6[30] = *(v10 - 8);
  v6[31] = swift_task_alloc();
  v6[32] = swift_task_alloc();
  v6[33] = swift_task_alloc();
  v6[34] = type metadata accessor for TTRAutoCompleteReminderListScope(0);
  v6[35] = swift_task_alloc();
  v11 = sub_21DBF563C();
  v6[36] = v11;
  v6[37] = *(v11 - 8);
  v6[38] = swift_task_alloc();
  v12 = sub_21DBF5A0C();
  v6[39] = v12;
  v6[40] = *(v12 - 8);
  v6[41] = swift_task_alloc();
  v13 = sub_21DBF5A2C();
  v6[42] = v13;
  v6[43] = *(v13 - 8);
  v6[44] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68, &unk_21DC0C060);
  v6[45] = swift_task_alloc();
  v14 = sub_21DBFC0AC();
  v6[46] = v14;
  v6[47] = *(v14 - 8);
  v6[48] = swift_task_alloc();
  v6[49] = swift_task_alloc();
  v15 = sub_21DBFC0CC();
  v6[50] = v15;
  v6[51] = *(v15 - 8);
  v6[52] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21D3DF838, v5, 0);
}

uint64_t sub_21D3DF838()
{
  v1 = v0[16];
  sub_21DBFC0BC();
  sub_21DBFC08C();
  v2 = *(v1 + 136);
  if (v2)
  {
    v3 = OBJC_IVAR____TtC15RemindersUICore28TTRAsyncSearchQueryPerformer_query;
    v4 = *&v2[OBJC_IVAR____TtC15RemindersUICore28TTRAsyncSearchQueryPerformer_query];
    v5 = v2;
    if (v4)
    {
      [v4 cancel];
      v6 = *&v2[v3];
    }

    else
    {
      v6 = 0;
    }

    *&v2[v3] = 0;

    v7 = *(v1 + 136);
  }

  else
  {
    v7 = 0;
  }

  v8 = v0[15];
  v9 = v0[14];
  *(v1 + 136) = 0;

  v10 = sub_21DBFA28C();
  if (v10 < sub_21D3E24FC(v9, v8))
  {
    v12 = v0[51];
    v11 = v0[52];
    v13 = v0[50];
    (*(v0[47] + 8))(v0[49], v0[46]);
    (*(v12 + 8))(v11, v13);

    v14 = v0[1];
    v15 = MEMORY[0x277D84F90];

    return v14(v15);
  }

  v149 = v1;
  v17 = v0[44];
  v18 = v0[43];
  v19 = v0[40];
  v20 = v0[41];
  v22 = v0[38];
  v21 = v0[39];
  v23 = v0[36];
  v150 = v0[37];
  v151 = v0[42];
  v155 = v0[45];
  v161 = v0[35];
  v24 = v0[30];
  v157 = v0[29];
  v158 = v0[13];
  v152 = v0[11];
  v153 = v0[12];
  _s15RemindersUICore22TTRCurrentTimeProviderC8calendar10Foundation8CalendarVvg_0();
  (*(v19 + 104))(v20, *MEMORY[0x277CC9998], v21);
  _s15RemindersUICore22TTRCurrentTimeProviderC3now10Foundation4DateVyF_0();
  sub_21DBF599C();
  (*(v150 + 8))(v22, v23);
  (*(v19 + 8))(v20, v21);
  (*(v18 + 8))(v17, v151);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59C98, &unk_21DC0CF50);
  v25 = *(v24 + 72);
  v26 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v148 = 2 * v25;
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_21DC08D20;
  v28 = (v27 + v26);
  v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5BE08, &unk_21DC14FF0) + 48);
  *v28 = v152;
  v28[1] = v153;
  v30 = *MEMORY[0x277D45270];
  v31 = sub_21DBF672C();
  (*(*(v31 - 8) + 104))(v27 + v26 + v29, v30, v31);
  v32 = *(v24 + 104);
  v32((v27 + v26), *MEMORY[0x277D44EE0], v157);
  v154 = v25;
  v33 = v27 + v26 + v25;
  v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5BE10, &qword_21DC28540) + 48);
  sub_21D0D3954(v155, v33, &qword_27CE58D68, &unk_21DC0C060);
  (*(v150 + 56))(v33 + v34, 1, 1, v23);
  v156 = v32;
  v32(v33, *MEMORY[0x277D44F18], v157);
  sub_21D3E32EC(v158, v161);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_21DBF8E0C();
      v44 = v27;
    }

    else
    {
      v59 = *(v0[16] + 112);
      v0[10] = 0;
      sub_21DBF8E0C();
      v60 = [v59 fetchActiveCloudKitAccountObjectIDsWithFetchOption:2 error:v0 + 10];
      v61 = v0[10];
      if (v60)
      {
        v62 = v60;
        v63 = v0[33];
        v64 = v0[29];
        v65 = v0[30];
        sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
        v66 = v26;
        v67 = sub_21DBFA5EC();
        v68 = v61;

        *v63 = v67;
        v156(v63, *MEMORY[0x277D44F78], v64);
        v44 = sub_21D21303C(1, 3, 1, v27);
        *(v44 + 2) = 3;
        (*(v65 + 32))(&v44[v66 + v148], v63, v64);
      }

      else
      {
        v96 = v61;
        v97 = sub_21DBF52DC();

        swift_willThrow();
        if (qword_280D0C870 != -1)
        {
          swift_once();
        }

        v98 = sub_21DBF84BC();
        __swift_project_value_buffer(v98, qword_280D0C878);
        v99 = v97;
        v100 = sub_21DBF84AC();
        v101 = sub_21DBFAEBC();

        if (os_log_type_enabled(v100, v101))
        {
          v102 = swift_slowAlloc();
          v103 = swift_slowAlloc();
          *v102 = 138412290;
          v104 = v97;
          v105 = _swift_stdlib_bridgeErrorToNSError();
          *(v102 + 4) = v105;
          *v103 = v105;
          _os_log_impl(&dword_21D0C9000, v100, v101, "TTRAutoCompleteReminderProvider fetchActiveCKAccounts error: %@", v102, 0xCu);
          sub_21D0CF7E0(v103, &unk_27CE60070, &unk_21DC09550);
          MEMORY[0x223D46520](v103, -1, -1);
          MEMORY[0x223D46520](v102, -1, -1);
        }

        else
        {
        }

        v44 = v27;
      }
    }

    goto LABEL_48;
  }

  v162 = v26;
  v163 = v27;
  if (!EnumCaseMultiPayload)
  {
    v36 = v0[33];
    v37 = v0[29];
    v38 = v0[30];
    v39 = *v0[35];
    v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5BE28, &unk_21DC15010) + 48);
    *v36 = v39;
    v41 = *MEMORY[0x277D44F68];
    v42 = sub_21DBF623C();
    (*(*(v42 - 8) + 104))(&v36[v40], v41, v42);
    v156(v36, *MEMORY[0x277D44F30], v37);
    sub_21DBF8E0C();
    v43 = v39;
    v44 = sub_21D21303C(1, 3, 1, v163);

    *(v44 + 2) = 3;
    (*(v38 + 32))(&v44[v162 + v148], v36, v37);
LABEL_48:
    v122 = v0[16];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63980, &unk_21DC09140);
    v123 = swift_allocObject();
    *(v123 + 16) = xmmword_21DC08D20;
    *(v123 + 32) = sub_21DBFA16C();
    *(v123 + 40) = v124;
    *(v123 + 48) = sub_21DBFA16C();
    *(v123 + 56) = v125;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5BE20, &unk_21DC31990);
    v126 = sub_21DBF659C();
    v127 = *(v126 - 8);
    v128 = (*(v127 + 80) + 32) & ~*(v127 + 80);
    v129 = swift_allocObject();
    *(v129 + 16) = xmmword_21DC08D00;
    (*(v127 + 104))(v129 + v128, *MEMORY[0x277D45058], v126);
    v130 = objc_allocWithZone(type metadata accessor for TTRAsyncSearchQueryPerformer());
    v131 = TTRAsyncSearchQueryPerformer.init(attributesToFetch:itemTypes:criteria:)(v123, v129, v44);
    v0[53] = v131;
    v132 = *(v149 + 136);
    *(v149 + 136) = v131;
    v133 = v131;

    TTRAsyncSearchQueryPerformer.search()();
    type metadata accessor for TTRAutoCompleteReminderProvider.ResultCollector();
    inited = swift_initStackObject();
    v0[54] = inited;
    type metadata accessor for TTRAutoCompleteReminderProvider.ResultCollector.InsensitiveDictionary();
    v135 = swift_allocObject();
    v0[55] = v135;
    *(v135 + 16) = MEMORY[0x277D84F98];
    inited[4] = v122;
    inited[5] = v135;
    inited[2] = 10;
    inited[3] = sub_21D3E3350;

    v136 = sub_21DBFA9EC();
    v138 = sub_21D3E33A0(v136, v137);
    v0[56] = v138;
    v139 = v0[16];
    v140 = swift_task_alloc();
    v0[57] = v140;
    *v140 = v0;
    v140[1] = sub_21D3E0920;
    v141 = v0[17];

    return MEMORY[0x2822005A8](v0 + 8, v139, v138, v141, v0 + 9);
  }

  v45 = v0[35];
  v46 = v0[33];
  v47 = v0[29];
  v48 = v0[30];
  v49 = v0[27];
  v50 = v0[28];
  v51 = v0[24];
  v159 = v0[23];
  v52 = *v45;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5BE18, &unk_21DC15000);
  sub_21D0D523C(v45 + *(v53 + 48), v50, &qword_27CE5BE00, &qword_21DC14FE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
  v54 = swift_allocObject();
  *(v54 + 16) = xmmword_21DC09CF0;
  *(v54 + 32) = v52;
  *v46 = v54;
  v156(v46, *MEMORY[0x277D44F78], v47);
  sub_21DBF8E0C();
  v55 = v52;
  v56 = sub_21D21303C(1, 3, 1, v163);
  *(v56 + 2) = 3;
  v57 = *(v48 + 32);
  v164 = v56;
  v57(&v56[v162 + v148], v46, v47);
  sub_21D0D3954(v50, v49, &qword_27CE5BE00, &qword_21DC14FE8);
  if ((*(v51 + 48))(v49, 1, v159) == 1)
  {
    v58 = v0[27];
    sub_21D0CF7E0(v0[28], &qword_27CE5BE00, &qword_21DC14FE8);

    sub_21D0CF7E0(v58, &qword_27CE5BE00, &qword_21DC14FE8);
    v44 = v164;
    goto LABEL_48;
  }

  v160 = v55;
  v69 = v0[26];
  v70 = v0[24];
  v71 = v0[25];
  v72 = v0[23];
  (*(v70 + 32))(v69, v0[27], v72);
  (*(v70 + 16))(v71, v69, v72);
  if ((*(v70 + 88))(v71, v72) == *MEMORY[0x277D45890])
  {
    v73 = v0[25];
    (*(v0[24] + 96))(v73, v0[23]);
    v75 = *v73;
    v74 = v73[1];
    if (v75 >> 62)
    {
      v76 = sub_21DBFBD7C();
    }

    else
    {
      v76 = *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v76)
    {

      if ((v75 & 0xC000000000000001) != 0)
      {
        v77 = MEMORY[0x223D44740](0, v75);
        goto LABEL_27;
      }

      if (*((v75 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v77 = *(v75 + 32);
LABEL_27:
        v78 = v77;
        v79 = v0[32];
        v80 = v0[29];

        v81 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5BE28, &unk_21DC15010) + 48);
        *v79 = v78;
        v82 = *MEMORY[0x277D44F68];
        v83 = sub_21DBF623C();
        (*(*(v83 - 8) + 104))(&v79[v81], v82, v83);
        v156(v79, *MEMORY[0x277D44F30], v80);
        v84 = *(v164 + 2);
        v85 = *(v164 + 3);
        v86 = v78;
        if (v84 >= v85 >> 1)
        {
          v142 = v86;
          v164 = sub_21D21303C((v85 > 1), v84 + 1, 1, v164);
          v86 = v142;
        }

        v87 = v0[32];
        v89 = v0[28];
        v88 = v0[29];
        v90 = v0[26];
        v91 = v0[23];
        v92 = v0[24];

        (*(v92 + 8))(v90, v91);
        sub_21D0CF7E0(v89, &qword_27CE5BE00, &qword_21DC14FE8);
        v44 = v164;
        *(v164 + 2) = v84 + 1;
        v93 = &v164[v162 + v84 * v154];
        v94 = v87;
        v95 = v88;
LABEL_47:
        v57(v93, v94, v95);
        goto LABEL_48;
      }

      __break(1u);
    }

    else
    {

      if (!(v74 >> 62))
      {
        if (!*((v74 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_55:
          v143 = v0[28];
          v144 = v0[26];
          v146 = v0[23];
          v145 = v0[24];

          (*(v145 + 8))(v144, v146);
          sub_21D0CF7E0(v143, &qword_27CE5BE00, &qword_21DC14FE8);
          v44 = v164;
          goto LABEL_48;
        }

LABEL_41:
        if ((v74 & 0xC000000000000001) != 0)
        {
          v106 = MEMORY[0x223D44740](0, v74);
        }

        else
        {
          if (!*((v74 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
          }

          v106 = *(v74 + 32);
        }

        v107 = v106;
        v108 = v0[31];
        v109 = v0[29];

        v110 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5BE28, &unk_21DC15010) + 48);
        *v108 = v107;
        v111 = *MEMORY[0x277D44F60];
        v112 = sub_21DBF623C();
        (*(*(v112 - 8) + 104))(&v108[v110], v111, v112);
        v156(v108, *MEMORY[0x277D44F30], v109);
        v113 = *(v164 + 2);
        v114 = *(v164 + 3);
        v115 = v107;
        if (v113 >= v114 >> 1)
        {
          v147 = v115;
          v164 = sub_21D21303C((v114 > 1), v113 + 1, 1, v164);
          v115 = v147;
        }

        v116 = v0[31];
        v118 = v0[28];
        v117 = v0[29];
        v119 = v0[26];
        v120 = v0[23];
        v121 = v0[24];

        (*(v121 + 8))(v119, v120);
        sub_21D0CF7E0(v118, &qword_27CE5BE00, &qword_21DC14FE8);
        v44 = v164;
        *(v164 + 2) = v113 + 1;
        v93 = &v164[v162 + v113 * v154];
        v94 = v116;
        v95 = v117;
        goto LABEL_47;
      }
    }

    if (!sub_21DBFBD7C())
    {
      goto LABEL_55;
    }

    goto LABEL_41;
  }

  return sub_21DBFC63C();
}

uint64_t sub_21D3E0920()
{
  v2 = *v1;

  v3 = *(v2 + 128);
  if (v0)
  {
    v4 = sub_21D3E0FCC;
  }

  else
  {
    v4 = sub_21D3E0A68;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_21D3E0A68()
{
  v46 = v0;
  v45[1] = *MEMORY[0x277D85DE8];
  if (v0[8])
  {
    sub_21D3E141C(v0[8]);

    v1 = v0[56];
    v2 = v0[16];
    v3 = swift_task_alloc();
    v0[57] = v3;
    *v3 = v0;
    v3[1] = sub_21D3E0920;
    v4 = v0[17];

    return MEMORY[0x2822005A8](v0 + 8, v2, v1, v4, v0 + 9);
  }

  else
  {
    (*(v0[18] + 8))(v0[19], v0[17]);
    v5 = sub_21D3E2208(3);
    sub_21DBFC08C();
    sub_21DBFC09C();
    if (qword_280D0C870 != -1)
    {
      swift_once();
    }

    v6 = sub_21DBF84BC();
    __swift_project_value_buffer(v6, qword_280D0C878);
    swift_bridgeObjectRetain_n();
    v7 = sub_21DBF84AC();
    v8 = sub_21DBFAE9C();
    v32 = v5;
    if (os_log_type_enabled(v7, v8))
    {
      log = v7;
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v45[0] = v10;
      *v9 = 136315394;
      v11 = sub_21DBFC89C();
      v13 = sub_21D0CDFB4(v11, v12, v45);

      *(v9 + 4) = v13;
      *(v9 + 12) = 2048;
      if (v5 >> 62)
      {
        v14 = sub_21DBFBD7C();
      }

      else
      {
        v14 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v31 = v0[53];
      v15 = v0[51];
      v39 = v0[50];
      v41 = v0[52];
      v37 = v0[49];
      v16 = v0[47];
      v30 = v0[48];
      v17 = v0[46];
      v18 = v0[21];
      v34 = v0[22];
      v35 = v0[45];
      v33 = v0[20];

      *(v9 + 14) = v14;

      _os_log_impl(&dword_21D0C9000, log, v8, "TTRAutoCompleteReminderProvider.search finished {duration: %s, returnCount(capped): %ld}", v9, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x223D46520](v10, -1, -1);
      MEMORY[0x223D46520](v9, -1, -1);

      v19 = *(v16 + 8);
      v19(v30, v17);
      (*(v18 + 8))(v34, v33);
      sub_21D0CF7E0(v35, &qword_27CE58D68, &unk_21DC0C060);
      v19(v37, v17);
      (*(v15 + 8))(v41, v39);
    }

    else
    {
      v20 = v0[53];
      v21 = v0[51];
      v42 = v0[50];
      loga = v0[52];
      v22 = v0[48];
      v23 = v0[46];
      v24 = v0[47];
      v38 = v0[45];
      v40 = v0[49];
      v25 = v0[21];
      v36 = v0[22];
      v26 = v0[20];
      swift_bridgeObjectRelease_n();

      v27 = *(v24 + 8);
      v27(v22, v23);
      (*(v25 + 8))(v36, v26);
      sub_21D0CF7E0(v38, &qword_27CE58D68, &unk_21DC0C060);
      v27(v40, v23);
      (*(v21 + 8))(loga, v42);
    }

    v28 = v0[1];

    return v28(v32);
  }
}

uint64_t sub_21D3E0FCC()
{
  v1 = v0[51];
  v15 = v0[50];
  v16 = v0[52];
  v2 = v0[47];
  v13 = v0[46];
  v14 = v0[49];
  v11 = v0[53];
  v12 = v0[45];
  v4 = v0[21];
  v3 = v0[22];
  v5 = v0[19];
  v6 = v0[20];
  v7 = v0[17];
  v8 = v0[18];

  (*(v8 + 8))(v5, v7);
  (*(v4 + 8))(v3, v6);
  sub_21D0CF7E0(v12, &qword_27CE58D68, &unk_21DC0C060);
  (*(v2 + 8))(v14, v13);
  (*(v1 + 8))(v16, v15);

  v9 = v0[1];

  return v9();
}

id sub_21D3E1200(void *a1, uint64_t a2)
{
  v19[1] = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 112);
  v19[0] = 0;
  v4 = [v3 fetchReminderWithObjectID:a1 error:v19];
  v5 = v19[0];
  if (!v4)
  {
    v6 = v5;
    v7 = sub_21DBF52DC();

    swift_willThrow();
    if (qword_280D0C870 != -1)
    {
      swift_once();
    }

    v8 = sub_21DBF84BC();
    __swift_project_value_buffer(v8, qword_280D0C878);
    v9 = a1;
    v10 = v7;
    v11 = sub_21DBF84AC();
    v12 = sub_21DBFAEBC();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412546;
      *(v13 + 4) = v9;
      *v14 = v9;
      *(v13 + 12) = 2112;
      v15 = v9;
      v16 = v7;
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 14) = v17;
      v14[1] = v17;
      _os_log_impl(&dword_21D0C9000, v11, v12, "TTRAutoCompleteReminderProvider fetchReminder(with: %@) failed: %@", v13, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE60070, &unk_21DC09550);
      swift_arrayDestroy();
      MEMORY[0x223D46520](v14, -1, -1);
      MEMORY[0x223D46520](v13, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  return v4;
}

void sub_21D3E141C(unint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE65010, &qword_21DC08D60);
  MEMORY[0x28223BE20](v2 - 8);
  v123 = &v108 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68, &unk_21DC0C060);
  MEMORY[0x28223BE20](v4 - 8);
  v111 = &v108 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v116 = &v108 - v7;
  v117 = sub_21DBF563C();
  v8 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v110 = &v108 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v125 = &v108 - v11;
  v12 = sub_21DBF659C();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v130 = &v108 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    v16 = sub_21DBFBD7C();
    if (!v16)
    {
      return;
    }
  }

  else
  {
    v16 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v16)
    {
      return;
    }
  }

  if (v16 >= 1)
  {
    v17 = 0;
    v132 = a1 & 0xC000000000000001;
    v129 = (v13 + 104);
    v128 = *MEMORY[0x277D45058];
    v127 = (v13 + 8);
    v114 = (v8 + 56);
    v109 = (v8 + 48);
    v108 = (v8 + 32);
    v113 = (v8 + 8);
    v18 = &selRef_setQueryFragment_;
    v14.n128_u64[0] = 136315394;
    v118 = v14;
    v14.n128_u64[0] = 138412290;
    v112 = v14;
    v126 = a1;
    v131 = v16;
    v115 = v12;
    while (1)
    {
      if (v132)
      {
        v19 = MEMORY[0x223D44740](v17, a1);
      }

      else
      {
        v19 = *(a1 + 8 * v17 + 32);
      }

      v20 = v19;
      v21 = [v19 v18[7]];
      v22 = sub_21DBFB51C();

      if (!v22)
      {
        goto LABEL_17;
      }

      v23 = [v22 entityName];
      v24 = sub_21DBFA16C();
      v26 = v25;

      v27 = v130;
      (*v129)(v130, v128, v12);
      v28 = sub_21DBF657C();
      v30 = v29;
      (*v127)(v27, v12);
      if (v24 == v28 && v26 == v30)
      {

        v18 = &selRef_setQueryFragment_;
      }

      else
      {
        v32 = sub_21DBFC64C();

        v18 = &selRef_setQueryFragment_;
        if ((v32 & 1) == 0)
        {

          v16 = v131;
LABEL_17:
          if (qword_280D0C870 != -1)
          {
            swift_once();
          }

          v33 = sub_21DBF84BC();
          __swift_project_value_buffer(v33, qword_280D0C878);
          v34 = v20;
          v35 = sub_21DBF84AC();
          v36 = sub_21DBFAEBC();

          if (os_log_type_enabled(v35, v36))
          {
            v37 = swift_slowAlloc();
            v38 = swift_slowAlloc();
            v134 = v38;
            *v37 = v118.n128_u32[0];
            v39 = [v34 uniqueIdentifier];
            v40 = sub_21DBFA16C();
            v42 = v41;

            v43 = sub_21D0CDFB4(v40, v42, &v134);

            *(v37 + 4) = v43;
            *(v37 + 12) = 2080;
            v44 = [v34 attributeSet];
            v45 = sub_21DBFB52C();
            v47 = v46;

            if (v47)
            {
              v48 = v45;
            }

            else
            {
              v48 = 7104878;
            }

            if (v47)
            {
              v49 = v47;
            }

            else
            {
              v49 = 0xE300000000000000;
            }

            a1 = v126;
            v50 = sub_21D0CDFB4(v48, v49, &v134);

            *(v37 + 14) = v50;
            v18 = &selRef_setQueryFragment_;
            _os_log_impl(&dword_21D0C9000, v35, v36, "TTRAutoCompleteReminderProvider.ResultCollector: Dropping item because of invalid objectID {uniqueIdentifier: %s, objectID: %s}", v37, 0x16u);
            swift_arrayDestroy();
            v51 = v38;
            v16 = v131;
            MEMORY[0x223D46520](v51, -1, -1);
            MEMORY[0x223D46520](v37, -1, -1);
          }

          else
          {
          }

          goto LABEL_6;
        }
      }

      v52 = [v20 attributeSet];
      v53 = [v52 displayName];

      if (!v53)
      {
        break;
      }

      v54 = sub_21DBFA16C();
      v56 = v55;

      v57 = [v20 attributeSet];
      v58 = [v57 completionDate];

      if (!v58)
      {

        if (qword_280D0C870 != -1)
        {
          swift_once();
        }

        v87 = sub_21DBF84BC();
        __swift_project_value_buffer(v87, qword_280D0C878);
        v78 = v22;
        v79 = sub_21DBF84AC();
        v88 = sub_21DBFAEBC();

        v89 = os_log_type_enabled(v79, v88);
        a1 = v126;
        if (v89)
        {
          v81 = swift_slowAlloc();
          v82 = swift_slowAlloc();
          *v81 = v112.n128_u32[0];
          *(v81 + 4) = v78;
          *v82 = v22;
          v83 = v78;
          v84 = v88;
          v85 = v79;
          v86 = "TTRAutoCompleteReminderProvider.ResultCollector: missing completion date in %@";
LABEL_42:
          _os_log_impl(&dword_21D0C9000, v85, v84, v86, v81, 0xCu);
          sub_21D0CF7E0(v82, &unk_27CE60070, &unk_21DC09550);
          v90 = v82;
          v18 = &selRef_setQueryFragment_;
          MEMORY[0x223D46520](v90, -1, -1);
          MEMORY[0x223D46520](v81, -1, -1);

LABEL_44:
          v16 = v131;
          goto LABEL_6;
        }

LABEL_43:

        goto LABEL_44;
      }

      sub_21DBF55FC();

      v59 = *(v124 + 40);
      v122 = v54;
      v134 = v54;
      v135 = v56;

      v60 = v123;
      sub_21DBF57AC();
      v61 = sub_21DBF582C();
      v62 = *(v61 - 8);
      v63 = *(v62 + 56);
      v119 = v62 + 56;
      v120 = v63;
      v63(v60, 0, 1, v61);
      v121 = sub_21D176F0C();
      v64 = sub_21DBFBBFC();
      v66 = v65;
      sub_21D0CF7E0(v60, &unk_27CE65010, &qword_21DC08D60);
      swift_beginAccess();
      v67 = *(v59 + 16);
      if (*(v67 + 16) && (sub_21DBF8E0C(), v68 = sub_21D0CEF70(v64, v66), v70 = v69, , (v70 & 1) != 0))
      {
        v71 = *(*(v67 + 56) + 8 * v68);

        v72 = [v71 attributeSet];

        v73 = [v72 completionDate];
        if (v73)
        {
          v74 = v111;
          sub_21DBF55FC();

          v75 = 0;
          v76 = v124;
        }

        else
        {
          v75 = 1;
          v76 = v124;
          v74 = v111;
        }

        v92 = v117;
        (*v114)(v74, v75, 1, v117);
        v91 = v116;
        sub_21D0D523C(v74, v116, &qword_27CE58D68, &unk_21DC0C060);
        if ((*v109)(v91, 1, v92) != 1)
        {
          (*v108)(v110, v91, v92);
          if (sub_21DBF55CC())
          {
            v100 = *(v76 + 40);
            v134 = v122;
            v135 = v56;

            v101 = v20;
            v102 = v123;
            sub_21DBF57AC();
            v120(v102, 0, 1, v61);
            v103 = sub_21DBFBBEC();
            v105 = v104;
            sub_21D0CF7E0(v102, &unk_27CE65010, &qword_21DC08D60);

            swift_beginAccess();
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v133 = *(v100 + 16);
            *(v100 + 16) = 0x8000000000000000;
            sub_21D477E70(v101, v103, v105, isUniquelyReferenced_nonNull_native);

            *(v100 + 16) = v133;
            swift_endAccess();

            v92 = v117;
          }

          else
          {
          }

          v16 = v131;
          v18 = &selRef_setQueryFragment_;
          v107 = *v113;
          (*v113)(v110, v92);
          v107(v125, v92);
          a1 = v126;
          v12 = v115;
          goto LABEL_6;
        }
      }

      else
      {

        v91 = v116;
        v92 = v117;
        (*v114)(v116, 1, 1, v117);
        v76 = v124;
      }

      sub_21D0CF7E0(v91, &qword_27CE58D68, &unk_21DC0C060);
      v93 = *(v76 + 40);
      v134 = v122;
      v135 = v56;
      v94 = v20;

      v95 = v123;
      sub_21DBF57AC();
      v120(v95, 0, 1, v61);
      v96 = sub_21DBFBBEC();
      v98 = v97;
      sub_21D0CF7E0(v95, &unk_27CE65010, &qword_21DC08D60);

      swift_beginAccess();
      v99 = swift_isUniquelyReferenced_nonNull_native();
      v133 = *(v93 + 16);
      *(v93 + 16) = 0x8000000000000000;
      sub_21D477E70(v94, v96, v98, v99);

      *(v93 + 16) = v133;
      swift_endAccess();

      (*v113)(v125, v92);
      a1 = v126;
      v12 = v115;
      v16 = v131;
      v18 = &selRef_setQueryFragment_;
LABEL_6:
      if (v16 == ++v17)
      {
        return;
      }
    }

    if (qword_280D0C870 != -1)
    {
      swift_once();
    }

    v77 = sub_21DBF84BC();
    __swift_project_value_buffer(v77, qword_280D0C878);
    v78 = v22;
    v79 = sub_21DBF84AC();
    v80 = sub_21DBFAEBC();

    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      *v81 = v112.n128_u32[0];
      *(v81 + 4) = v78;
      *v82 = v22;
      v83 = v78;
      v84 = v80;
      v85 = v79;
      v86 = "TTRAutoCompleteReminderProvider.ResultCollector: missing title in %@";
      goto LABEL_42;
    }

    goto LABEL_43;
  }

  __break(1u);
}

uint64_t sub_21D3E2208(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 40);
  swift_beginAccess();
  v5 = *(*(v4 + 16) + 16);
  v6 = MEMORY[0x277D84F90];
  if (v5 > 0xA)
  {
    return v6;
  }

  v7 = sub_21DBF8E0C();
  sub_21D3DEF70(v7);

  v8 = sub_21DBF8E0C();
  v18 = sub_21D2FB230(v9, v8);
  sub_21D3DF184(&v18);

  v10 = v18;
  v18 = v6;
  if (v10 < 0 || (v10 & 0x4000000000000000) != 0)
  {
    v11 = sub_21DBFBD7C();
    if (v11)
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

  v11 = *(v10 + 16);
  if (!v11)
  {
LABEL_21:

    return v6;
  }

LABEL_5:
  if (v11 >= 1)
  {
    v12 = 0;
    while (1)
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x223D44740](v12, v10);
      }

      else
      {
        v13 = *(v10 + 8 * v12 + 32);
      }

      v14 = v13;
      if (v6 >> 62)
      {
        if (sub_21DBFBD7C() >= a1)
        {
          goto LABEL_7;
        }
      }

      else if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) >= a1)
      {
        goto LABEL_7;
      }

      v15 = sub_21D3E556C(v14, *(v2 + 24));
      if (v15)
      {
        v16 = v15;
        MEMORY[0x223D42D80]();
        if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_21DBFA63C();
        }

        sub_21DBFA6CC();

        v6 = v18;
        goto LABEL_8;
      }

LABEL_7:

LABEL_8:
      if (v11 == ++v12)
      {
        goto LABEL_21;
      }
    }
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_21D3E2450()
{
  v1 = *(*(v0 + 16) + 136);
  if (v1)
  {
    v2 = OBJC_IVAR____TtC15RemindersUICore28TTRAsyncSearchQueryPerformer_query;
    v3 = *&v1[OBJC_IVAR____TtC15RemindersUICore28TTRAsyncSearchQueryPerformer_query];
    v4 = v1;
    if (v3)
    {
      [v3 cancel];
      v5 = *&v1[v2];
    }

    else
    {
      v5 = 0;
    }

    *&v1[v2] = 0;
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_21D3E24FC(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
LABEL_6:
    v8 = sub_21DBFA16C();
    v10 = v9;
    v11 = sub_21D3E25D4();
    if (v11[2])
    {
      v12 = sub_21D0CEF70(v8, v10);
      v14 = v13;

      if (v14)
      {
        v7 = *(v11[7] + 8 * v12);
        goto LABEL_11;
      }
    }

    else
    {
    }

    v7 = 3;
    goto LABEL_11;
  }

  v4 = sub_21D3E25D4();
  if (!v4[2] || (v5 = sub_21D0CEF70(a1, a2), (v6 & 1) == 0))
  {

    goto LABEL_6;
  }

  v7 = *(v4[7] + 8 * v5);
LABEL_11:

  return v7;
}

void *sub_21D3E25D4()
{
  if (*(v0 + 144))
  {
    v1 = *(v0 + 144);
  }

  else
  {
    v1 = sub_21D3E2634(v0);
    *(v0 + 144) = v1;
    sub_21DBF8E0C();
  }

  sub_21DBF8E0C();
  return v1;
}

void *sub_21D3E2634(uint64_t a1)
{
  v40[1] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 112);
  v40[0] = 0;
  v2 = [v1 fetchMinimumSearchTermLengthByBaseLanguageWithError_];
  v3 = v40[0];
  if (v2)
  {
    v4 = v2;
    sub_21D0D8CF0(0, &unk_280D0C1E0, 0x277CCABB0);
    v5 = sub_21DBF9E6C();
    v6 = v3;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58138, &qword_21DC0CAA0);
    v7 = sub_21DBFC3DC();
    v8 = v7;
    v9 = 0;
    v10 = v5 + 64;
    v11 = 1 << *(v5 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v38 = v7 + 64;
    v39 = v5;
    if (v13)
    {
      while (1)
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_11:
        v18 = v15 | (v9 << 6);
        v19 = (*(v39 + 48) + 16 * v18);
        v5 = *v19;
        v20 = v19[1];
        v21 = *(*(v39 + 56) + 8 * v18);
        sub_21DBF8E0C();
        v22 = [v21 integerValue];
        *(v38 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
        v23 = (v8[6] + 16 * v18);
        *v23 = v5;
        v23[1] = v20;
        *(v8[7] + 8 * v18) = v22;
        v24 = v8[2];
        v25 = __OFADD__(v24, 1);
        v26 = v24 + 1;
        if (v25)
        {
          break;
        }

        v8[2] = v26;
        if (!v13)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      v16 = v9;
      while (1)
      {
        v9 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        if (v9 >= v14)
        {

          return v8;
        }

        v17 = *(v10 + 8 * v9);
        ++v16;
        if (v17)
        {
          v15 = __clz(__rbit64(v17));
          v13 = (v17 - 1) & v17;
          goto LABEL_11;
        }
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_23;
  }

  v27 = v40[0];
  v5 = sub_21DBF52DC();

  swift_willThrow();
  if (qword_280D0C870 != -1)
  {
LABEL_23:
    swift_once();
  }

  v28 = sub_21DBF84BC();
  __swift_project_value_buffer(v28, qword_280D0C878);
  v29 = v5;
  v30 = sub_21DBF84AC();
  v31 = sub_21DBFAEBC();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v40[0] = v33;
    *v32 = 136315138;
    swift_getErrorValue();
    v34 = sub_21DBFC75C();
    v36 = sub_21D0CDFB4(v34, v35, v40);

    *(v32 + 4) = v36;
    _os_log_impl(&dword_21D0C9000, v30, v31, "TTRAutoCompleteReminderProvider lazy init minimumSearchTermLengthByBaseLanguage error: %s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v33);
    MEMORY[0x223D46520](v33, -1, -1);
    MEMORY[0x223D46520](v32, -1, -1);
  }

  else
  {
  }

  return sub_21D17865C(MEMORY[0x277D84F90]);
}

uint64_t sub_21D3E29C8()
{

  return swift_deallocClassInstance();
}

uint64_t sub_21D3E2A00()
{

  return swift_deallocClassInstance();
}

uint64_t TTRAutoCompleteReminderProvider.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t TTRAutoCompleteReminderProvider.__deallocating_deinit()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_21D3E2AD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_21D203124;

  return sub_21D3DF368(a1, a2, a3, a4, a5);
}

uint64_t sub_21D3E2BA0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_21D1B795C;

  return sub_21D3E2430();
}

uint64_t _s15RemindersUICore32TTRAutoCompleteReminderListScopeO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_21DBF7E3C();
  v53 = *(v4 - 8);
  v54 = v4;
  MEMORY[0x28223BE20](v4);
  v51 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v52 = &v48 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5BE00, &qword_21DC14FE8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v48 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v48 - v15;
  MEMORY[0x28223BE20](v17);
  v55 = &v48 - v18;
  v19 = type metadata accessor for TTRAutoCompleteReminderListScope(0);
  MEMORY[0x28223BE20](v19);
  v21 = (&v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v22);
  v24 = (&v48 - v23);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5BE30, &qword_21DC151C8);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = &v48 - v26;
  v29 = (&v48 + *(v28 + 56) - v26);
  sub_21D3E32EC(a1, &v48 - v26);
  sub_21D3E32EC(a2, v29);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      sub_21D3E32EC(v27, v24);
      v31 = *v24;
      if (!swift_getEnumCaseMultiPayload())
      {
        v32 = *v29;
        sub_21D0D8CF0(0, &qword_280D17680, 0x277D82BB8);
        v33 = sub_21DBFB63C();

LABEL_27:
        sub_21D3E3AA0(v27);
        return v33 & 1;
      }

      goto LABEL_15;
    }

    sub_21D3E32EC(v27, v21);
    v31 = *v21;
    v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5BE18, &unk_21DC15000) + 48);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_21D0CF7E0(v21 + v34, &qword_27CE5BE00, &qword_21DC14FE8);
LABEL_15:

      goto LABEL_16;
    }

    v35 = *v29;
    v36 = v21 + v34;
    v37 = v55;
    sub_21D0D523C(v36, v55, &qword_27CE5BE00, &qword_21DC14FE8);
    v38 = v29 + v34;
    v39 = v16;
    sub_21D0D523C(v38, v16, &qword_27CE5BE00, &qword_21DC14FE8);
    sub_21D0D8CF0(0, &qword_280D17680, 0x277D82BB8);
    if ((sub_21DBFB63C() & 1) == 0)
    {

      sub_21D0CF7E0(v37, &qword_27CE5BE00, &qword_21DC14FE8);
      sub_21D0CF7E0(v16, &qword_27CE5BE00, &qword_21DC14FE8);
      sub_21D3E3AA0(v27);
      goto LABEL_17;
    }

    v50 = v35;
    sub_21D0D3954(v37, v13, &qword_27CE5BE00, &qword_21DC14FE8);
    v40 = v53;
    v41 = v54;
    v42 = *(v53 + 48);
    if (v42(v13, 1, v54) == 1)
    {
      v10 = v13;
    }

    else
    {
      v48 = *(v40 + 32);
      v48(v52, v13, v41);
      v49 = v39;
      sub_21D0D3954(v39, v10, &qword_27CE5BE00, &qword_21DC14FE8);
      if (v42(v10, 1, v41) != 1)
      {
        v44 = v51;
        v48(v51, v10, v41);
        v45 = v52;
        v33 = sub_21DBF7E2C();

        v46 = *(v40 + 8);
        v46(v44, v41);
        v46(v45, v41);
        sub_21D0CF7E0(v55, &qword_27CE5BE00, &qword_21DC14FE8);
        v43 = v49;
LABEL_26:
        sub_21D0CF7E0(v43, &qword_27CE5BE00, &qword_21DC14FE8);
        goto LABEL_27;
      }

      (*(v40 + 8))(v52, v41);
      v39 = v49;
      v37 = v55;
    }

    sub_21D0CF7E0(v10, &qword_27CE5BE00, &qword_21DC14FE8);
    v33 = v42(v37, 1, v41) == 1 && v42(v39, 1, v41) == 1;
    sub_21D0CF7E0(v55, &qword_27CE5BE00, &qword_21DC14FE8);
    v43 = v39;
    goto LABEL_26;
  }

  if (EnumCaseMultiPayload == 2)
  {
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      goto LABEL_16;
    }
  }

  else if (swift_getEnumCaseMultiPayload() != 3)
  {
LABEL_16:
    sub_21D0CF7E0(v27, &qword_27CE5BE30, &qword_21DC151C8);
LABEL_17:
    v33 = 0;
    return v33 & 1;
  }

  sub_21D3E3AA0(v27);
  v33 = 1;
  return v33 & 1;
}

uint64_t type metadata accessor for TTRAutoCompleteReminderListScope(uint64_t a1)
{
  result = qword_280D11C30;
  if (!qword_280D11C30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21D3E32EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRAutoCompleteReminderListScope(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_21D3E33A0(uint64_t a1, uint64_t a2)
{
  result = qword_280D12278[0];
  if (!qword_280D12278[0])
  {
    v5 = type metadata accessor for TTRAutoCompleteReminderProvider();
    result = swift_getWitnessTable(protocol conformance descriptor for TTRAutoCompleteReminderProvider, v5, v2, v3);
    atomic_store(result, qword_280D12278);
  }

  return result;
}

char *initializeBufferWithCopyOfBuffer for TTRAutoCompleteReminderListScope(char *a1, char *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v10 = *a2;
    *a1 = *a2;
    a1 = (v10 + ((v5 + 16) & ~v5));

    return a1;
  }

  v6 = *(a3 - 8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v11 = *a2;
    *a1 = *a2;
    v12 = v11;
    v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5BE18, &unk_21DC15000) + 48);
    v14 = sub_21DBF7E3C();
    v15 = *(v14 - 8);
    if ((*(v15 + 48))(&a2[v13], 1, v14))
    {
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5BE00, &qword_21DC14FE8);
      memcpy(&a1[v13], &a2[v13], *(*(v16 - 8) + 64));
    }

    else
    {
      (*(v15 + 16))(&a1[v13], &a2[v13], v14);
      (*(v15 + 56))(&a1[v13], 0, 1, v14);
    }

    goto LABEL_12;
  }

  if (!EnumCaseMultiPayload)
  {
    v8 = *a2;
    *a1 = *a2;
    v9 = v8;
LABEL_12:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v17 = *(v6 + 64);

  return memcpy(a1, a2, v17);
}

void destroy for TTRAutoCompleteReminderListScope(id *a1, uint64_t a2)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {

    v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5BE18, &unk_21DC15000) + 48);
    v6 = sub_21DBF7E3C();
    v8 = *(v6 - 8);
    if (!(*(v8 + 48))(a1 + v5, 1, v6))
    {
      v7 = *(v8 + 8);

      v7(a1 + v5, v6);
    }
  }

  else if (!EnumCaseMultiPayload)
  {
    v4 = *a1;
  }
}

void **initializeWithCopy for TTRAutoCompleteReminderListScope(void **a1, void **a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v9 = *a2;
    *a1 = *a2;
    v10 = v9;
    v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5BE18, &unk_21DC15000) + 48);
    v12 = sub_21DBF7E3C();
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(a2 + v11, 1, v12))
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5BE00, &qword_21DC14FE8);
      memcpy(a1 + v11, a2 + v11, *(*(v14 - 8) + 64));
    }

    else
    {
      (*(v13 + 16))(a1 + v11, a2 + v11, v12);
      (*(v13 + 56))(a1 + v11, 0, 1, v12);
    }

    goto LABEL_10;
  }

  if (!EnumCaseMultiPayload)
  {
    v7 = *a2;
    *a1 = *a2;
    v8 = v7;
LABEL_10:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v15 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v15);
}

void **assignWithCopy for TTRAutoCompleteReminderListScope(void **a1, void **a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_21D3E3AA0(a1);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v9 = *a2;
    *a1 = *a2;
    v10 = v9;
    v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5BE18, &unk_21DC15000) + 48);
    v12 = sub_21DBF7E3C();
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(a2 + v11, 1, v12))
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5BE00, &qword_21DC14FE8);
      memcpy(a1 + v11, a2 + v11, *(*(v14 - 8) + 64));
    }

    else
    {
      (*(v13 + 16))(a1 + v11, a2 + v11, v12);
      (*(v13 + 56))(a1 + v11, 0, 1, v12);
    }

    goto LABEL_11;
  }

  if (!EnumCaseMultiPayload)
  {
    v7 = *a2;
    *a1 = *a2;
    v8 = v7;
LABEL_11:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v15 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v15);
}

uint64_t sub_21D3E3AA0(uint64_t a1)
{
  v2 = type metadata accessor for TTRAutoCompleteReminderListScope(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *initializeWithTake for TTRAutoCompleteReminderListScope(char *a1, char *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *a1 = *a2;
    v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5BE18, &unk_21DC15000) + 48);
    v7 = sub_21DBF7E3C();
    v8 = *(v7 - 8);
    if ((*(v8 + 48))(&a2[v6], 1, v7))
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5BE00, &qword_21DC14FE8);
      memcpy(&a1[v6], &a2[v6], *(*(v9 - 8) + 64));
    }

    else
    {
      (*(v8 + 32))(&a1[v6], &a2[v6], v7);
      (*(v8 + 56))(&a1[v6], 0, 1, v7);
    }

    swift_storeEnumTagMultiPayload();
    return a1;
  }

  else
  {
    v10 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v10);
  }
}

char *assignWithTake for TTRAutoCompleteReminderListScope(char *a1, char *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_21D3E3AA0(a1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *a1 = *a2;
    v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5BE18, &unk_21DC15000) + 48);
    v7 = sub_21DBF7E3C();
    v8 = *(v7 - 8);
    if ((*(v8 + 48))(&a2[v6], 1, v7))
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5BE00, &qword_21DC14FE8);
      memcpy(&a1[v6], &a2[v6], *(*(v9 - 8) + 64));
    }

    else
    {
      (*(v8 + 32))(&a1[v6], &a2[v6], v7);
      (*(v8 + 56))(&a1[v6], 0, 1, v7);
    }

    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v10 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v10);
}

void sub_21D3E3E2C(uint64_t a1)
{
  v2[4] = MEMORY[0x277D833E8] + 64;
  sub_21D3E3EDC(319);
  if (v1 <= 0x3F)
  {
    swift_getTupleTypeLayout2();
    v2[5] = v2;
    swift_initEnumMetadataMultiPayload();
  }
}

void sub_21D3E3EDC(uint64_t a1)
{
  if (!qword_280D0C798)
  {
    sub_21DBF7E3C();
    v1 = sub_21DBFBA8C();
    if (!v2)
    {
      atomic_store(v1, &qword_280D0C798);
    }
  }
}

uint64_t dispatch thunk of TTRAutoCompleteReminderProviderType.search(title:listScope:baseLanguage:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v17 = (*(a7 + 8) + **(a7 + 8));
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_21D22D4FC;

  return v17(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t dispatch thunk of TTRAutoCompleteReminderProviderType.cancel()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 16) + **(a2 + 16));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21D0F00D0;

  return v7(a1, a2);
}

uint64_t dispatch thunk of TTRAutoCompleteReminderProvider.search(title:listScope:baseLanguage:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = (*(*v5 + 136) + **(*v5 + 136));
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = sub_21D22C140;

  return v14(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of TTRAutoCompleteReminderProvider.cancel()()
{
  v4 = (*(*v0 + 144) + **(*v0 + 144));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_21D1B795C;

  return v4();
}

BOOL sub_21D3E4430(void *a1, void *a2)
{
  v55 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE65010, &qword_21DC08D60);
  MEMORY[0x28223BE20](v3 - 8);
  v51 = &v50 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68, &unk_21DC0C060);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v50 - v9;
  v11 = sub_21DBF563C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v54 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v50 - v15;
  *&v18 = MEMORY[0x28223BE20](v17).n128_u64[0];
  v20 = &v50 - v19;
  v53 = a1;
  v21 = [a1 attributeSet];
  v22 = &selRef__setContentViewMarginType_;
  v23 = [v21 completionDate];

  v52 = v20;
  if (v23)
  {
    sub_21DBF55FC();

    v24 = *(v12 + 32);
    v24(v10, v16, v11);
    v25 = *(v12 + 56);
    v25(v10, 0, 1, v11);
    v24(v20, v10, v11);
    v22 = &selRef__setContentViewMarginType_;
  }

  else
  {
    v25 = *(v12 + 56);
    v25(v10, 1, 1, v11);
    sub_21DBF557C();
    if ((*(v12 + 48))(v10, 1, v11) != 1)
    {
      sub_21D0CF7E0(v10, &qword_27CE58D68, &unk_21DC0C060);
    }
  }

  v26 = [v55 attributeSet];
  v27 = [v26 v22[499]];

  if (v27)
  {
    sub_21DBF55FC();

    v28 = *(v12 + 32);
    v28(v7, v16, v11);
    v25(v7, 0, 1, v11);
    v29 = v54;
    v28(v54, v7, v11);
    v30 = v52;
  }

  else
  {
    v25(v7, 1, 1, v11);
    v29 = v54;
    sub_21DBF557C();
    v31 = (*(v12 + 48))(v7, 1, v11);
    v30 = v52;
    if (v31 != 1)
    {
      sub_21D0CF7E0(v7, &qword_27CE58D68, &unk_21DC0C060);
    }
  }

  v32 = [v53 attributeSet];
  v33 = [v32 displayName];

  if (v33)
  {
    v34 = sub_21DBFA16C();
    v36 = v35;
  }

  else
  {
    v34 = 0;
    v36 = 0xE000000000000000;
  }

  v37 = [v55 &selRef_setInsetsLayoutMarginsFromSafeArea_ + 4];
  v38 = [v37 displayName];

  if (v38)
  {
    v39 = sub_21DBFA16C();
    v41 = v40;
  }

  else
  {
    v39 = 0;
    v41 = 0xE000000000000000;
  }

  v42 = sub_21DBF561C();
  if (v42)
  {
    if (v42 == 1)
    {

      v43 = *(v12 + 8);
      v43(v29, v11);
      v43(v30, v11);
      return 1;
    }

    else
    {

      v49 = *(v12 + 8);
      v49(v29, v11);
      v49(v30, v11);
      return 0;
    }
  }

  else
  {
    v58 = v34;
    v59 = v36;
    v56 = v39;
    v57 = v41;
    v45 = sub_21DBF582C();
    v46 = v51;
    (*(*(v45 - 8) + 56))(v51, 1, 1, v45);
    sub_21D176F0C();
    v47 = sub_21DBFBBCC();
    sub_21D0CF7E0(v46, &unk_27CE65010, &qword_21DC08D60);
    v48 = *(v12 + 8);
    v48(v29, v11);
    v48(v30, v11);

    return v47 == -1;
  }
}

uint64_t sub_21D3E4A6C(void **__dst, id *__src, id *a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v17 = *v4;
      v18 = *v6;
      v19 = v17;
      v20 = v6;
      v21 = sub_21D3E4430(v18, v19);

      if (v21)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4++;
      v6 = v20;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v7;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v20;
    v6 = v20 + 1;
    if (v7 == v20)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[v13];
  if (v11 >= 8 && v6 > v7)
  {
    v34 = v4;
LABEL_24:
    v33 = v6;
    v22 = v6 - 1;
    --v5;
    v23 = v14;
    do
    {
      v24 = v5 + 1;
      v25 = *--v23;
      v26 = v22;
      v27 = *v22;
      v28 = v25;
      v29 = v27;
      v30 = sub_21D3E4430(v28, v29);

      if (v30)
      {
        v31 = v26;
        if (v24 != v33)
        {
          *v5 = *v26;
        }

        v4 = v34;
        if (v14 <= v34 || (v6 = v31, v31 <= v7))
        {
          v6 = v31;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v24 != v14)
      {
        *v5 = *v23;
      }

      --v5;
      v14 = v23;
      v22 = v26;
    }

    while (v23 > v34);
    v14 = v23;
    v6 = v33;
    v4 = v34;
  }

LABEL_35:
  if (v6 != v4 || v6 >= (v4 + ((v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v6, v4, 8 * (v14 - v4));
  }

  return 1;
}

uint64_t sub_21D3E4CF4(uint64_t *a1, void **a2, void *a3)
{
  v5 = a1;
  v6 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_13:
    result = sub_21D82E300(v6);
    v6 = result;
  }

  v15 = v5;
  *v5 = v6;
  v8 = (v6 + 16);
  v9 = *(v6 + 16);
  if (v9 < 2)
  {
LABEL_9:
    *v15 = v6;
    return 1;
  }

  else
  {
    while (*a3)
    {
      v10 = v6 + 16 * v9;
      v5 = *v10;
      v11 = &v8[2 * v9];
      v12 = v11[1];
      sub_21D3E4A6C((*a3 + 8 * *v10), (*a3 + 8 * *v11), (*a3 + 8 * v12), a2);
      if (v3)
      {
        goto LABEL_9;
      }

      if (v12 < v5)
      {
        __break(1u);
LABEL_11:
        __break(1u);
LABEL_12:
        __break(1u);
        goto LABEL_13;
      }

      v13 = *v8;
      if (v9 - 2 >= *v8)
      {
        goto LABEL_11;
      }

      *v10 = v5;
      *(v10 + 8) = v12;
      v14 = v13 - v9;
      if (v13 < v9)
      {
        goto LABEL_12;
      }

      v9 = v13 - 1;
      result = memmove(v11, v11 + 2, 16 * v14);
      *v8 = v9;
      if (v9 <= 1)
      {
        goto LABEL_9;
      }
    }

    *v15 = v6;
    __break(1u);
  }

  return result;
}

void sub_21D3E4E24(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v101 = MEMORY[0x277D84F90];
  v5 = a3[1];
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = MEMORY[0x277D84F90];
    while (1)
    {
      v8 = v6;
      v9 = v6 + 1;
      if (v6 + 1 < v5)
      {
        v10 = *(*a3 + 8 * v9);
        v11 = 8 * v6;
        v12 = (*a3 + 8 * v6);
        v14 = *v12;
        v13 = v12 + 2;
        v15 = v10;
        v16 = v14;
        v17 = v8;
        v18 = sub_21D3E4430(v15, v16);

        v95 = v17;
        v19 = v17 + 2;
        while (v5 != v19)
        {
          v20 = *(v13 - 1);
          v21 = *v13;
          v22 = v20;
          LODWORD(v20) = sub_21D3E4430(v21, v22);

          ++v19;
          ++v13;
          if (v18 != v20)
          {
            v5 = v19 - 1;
            break;
          }
        }

        if (v18)
        {
          v8 = v95;
          if (v5 < v95)
          {
            goto LABEL_110;
          }

          if (v95 < v5)
          {
            v23 = 8 * v5 - 8;
            v24 = v5;
            v25 = v95;
            do
            {
              if (v25 != --v24)
              {
                v27 = *a3;
                if (!*a3)
                {
                  goto LABEL_115;
                }

                v26 = *(v27 + v11);
                *(v27 + v11) = *(v27 + v23);
                *(v27 + v23) = v26;
              }

              ++v25;
              v23 -= 8;
              v11 += 8;
            }

            while (v25 < v24);
          }

          v9 = v5;
        }

        else
        {
          v9 = v5;
          v8 = v95;
        }
      }

      v28 = a3[1];
      if (v9 < v28)
      {
        if (__OFSUB__(v9, v8))
        {
          goto LABEL_109;
        }

        if (v9 - v8 < a4)
        {
          v29 = v8 + a4;
          if (__OFADD__(v8, a4))
          {
            goto LABEL_111;
          }

          if (v29 >= v28)
          {
            v29 = a3[1];
          }

          if (v29 < v8)
          {
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
            return;
          }

          if (v9 != v29)
          {
            v92 = v7;
            v30 = *a3;
            v31 = *a3 + 8 * v9 - 8;
            v96 = v8;
            v98 = v29;
            v32 = v8 - v9;
            do
            {
              v33 = v9;
              v34 = *(v30 + 8 * v9);
              v35 = v32;
              v36 = v31;
              do
              {
                v37 = *v36;
                v38 = v34;
                v39 = v37;
                v40 = sub_21D3E4430(v38, v39);

                if (!v40)
                {
                  break;
                }

                if (!v30)
                {
                  goto LABEL_113;
                }

                v41 = *v36;
                v34 = *(v36 + 8);
                *v36 = v34;
                *(v36 + 8) = v41;
                v36 -= 8;
              }

              while (!__CFADD__(v35++, 1));
              v9 = v33 + 1;
              v31 += 8;
              --v32;
            }

            while ((v33 + 1) != v98);
            v9 = v98;
            v7 = v92;
            v8 = v96;
          }
        }
      }

      if (v9 < v8)
      {
        goto LABEL_108;
      }

      v97 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_21D210B90(0, *(v7 + 2) + 1, 1, v7);
      }

      v44 = *(v7 + 2);
      v43 = *(v7 + 3);
      v45 = v44 + 1;
      if (v44 >= v43 >> 1)
      {
        v7 = sub_21D210B90((v43 > 1), v44 + 1, 1, v7);
      }

      *(v7 + 2) = v45;
      v46 = v7 + 32;
      v47 = &v7[16 * v44 + 32];
      *v47 = v8;
      *(v47 + 1) = v9;
      v99 = *a1;
      if (!*a1)
      {
        goto LABEL_116;
      }

      if (v44)
      {
        while (1)
        {
          v48 = v45 - 1;
          if (v45 >= 4)
          {
            break;
          }

          if (v45 == 3)
          {
            v49 = *(v7 + 4);
            v50 = *(v7 + 5);
            v59 = __OFSUB__(v50, v49);
            v51 = v50 - v49;
            v52 = v59;
LABEL_57:
            if (v52)
            {
              goto LABEL_98;
            }

            v65 = &v7[16 * v45];
            v67 = *v65;
            v66 = *(v65 + 1);
            v68 = __OFSUB__(v66, v67);
            v69 = v66 - v67;
            v70 = v68;
            if (v68)
            {
              goto LABEL_100;
            }

            v71 = &v46[16 * v48];
            v73 = *v71;
            v72 = *(v71 + 1);
            v59 = __OFSUB__(v72, v73);
            v74 = v72 - v73;
            if (v59)
            {
              goto LABEL_103;
            }

            if (__OFADD__(v69, v74))
            {
              goto LABEL_105;
            }

            if (v69 + v74 >= v51)
            {
              if (v51 < v74)
              {
                v48 = v45 - 2;
              }

              goto LABEL_79;
            }

            goto LABEL_72;
          }

          if (v45 < 2)
          {
            goto LABEL_106;
          }

          v75 = &v7[16 * v45];
          v77 = *v75;
          v76 = *(v75 + 1);
          v59 = __OFSUB__(v76, v77);
          v69 = v76 - v77;
          v70 = v59;
LABEL_72:
          if (v70)
          {
            goto LABEL_102;
          }

          v78 = &v46[16 * v48];
          v80 = *v78;
          v79 = *(v78 + 1);
          v59 = __OFSUB__(v79, v80);
          v81 = v79 - v80;
          if (v59)
          {
            goto LABEL_104;
          }

          if (v81 < v69)
          {
            goto LABEL_3;
          }

LABEL_79:
          if (v48 - 1 >= v45)
          {
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
LABEL_99:
            __break(1u);
LABEL_100:
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
            goto LABEL_112;
          }

          if (!*a3)
          {
            goto LABEL_114;
          }

          v86 = v7;
          v87 = &v46[16 * v48 - 16];
          v88 = *v87;
          v89 = &v46[16 * v48];
          v90 = *(v89 + 1);
          sub_21D3E4A6C((*a3 + 8 * *v87), (*a3 + 8 * *v89), (*a3 + 8 * v90), v99);
          if (v4)
          {
            goto LABEL_91;
          }

          if (v90 < v88)
          {
            goto LABEL_93;
          }

          v91 = *(v86 + 2);
          if (v48 > v91)
          {
            goto LABEL_94;
          }

          *v87 = v88;
          *(v87 + 1) = v90;
          if (v48 >= v91)
          {
            goto LABEL_95;
          }

          v45 = v91 - 1;
          memmove(&v46[16 * v48], v89 + 16, 16 * (v91 - 1 - v48));
          v7 = v86;
          *(v86 + 2) = v91 - 1;
          if (v91 <= 2)
          {
            goto LABEL_3;
          }
        }

        v53 = &v46[16 * v45];
        v54 = *(v53 - 8);
        v55 = *(v53 - 7);
        v59 = __OFSUB__(v55, v54);
        v56 = v55 - v54;
        if (v59)
        {
          goto LABEL_96;
        }

        v58 = *(v53 - 6);
        v57 = *(v53 - 5);
        v59 = __OFSUB__(v57, v58);
        v51 = v57 - v58;
        v52 = v59;
        if (v59)
        {
          goto LABEL_97;
        }

        v60 = &v7[16 * v45];
        v62 = *v60;
        v61 = *(v60 + 1);
        v59 = __OFSUB__(v61, v62);
        v63 = v61 - v62;
        if (v59)
        {
          goto LABEL_99;
        }

        v59 = __OFADD__(v51, v63);
        v64 = v51 + v63;
        if (v59)
        {
          goto LABEL_101;
        }

        if (v64 >= v56)
        {
          v82 = &v46[16 * v48];
          v84 = *v82;
          v83 = *(v82 + 1);
          v59 = __OFSUB__(v83, v84);
          v85 = v83 - v84;
          if (v59)
          {
            goto LABEL_107;
          }

          if (v51 < v85)
          {
            v48 = v45 - 2;
          }

          goto LABEL_79;
        }

        goto LABEL_57;
      }

LABEL_3:
      v5 = a3[1];
      v6 = v97;
      if (v97 >= v5)
      {
        v101 = v7;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_117;
  }

  sub_21D3E4CF4(&v101, *a1, a3);
LABEL_91:
}

void sub_21D3E5380(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
LABEL_5:
    v8 = *(v5 + 8 * v4);
    v9 = v7;
    v10 = v6;
    while (1)
    {
      v11 = *v10;
      v12 = v8;
      v13 = v11;
      v14 = sub_21D3E4430(v12, v13);

      if (!v14)
      {
LABEL_4:
        ++v4;
        v6 += 8;
        --v7;
        if (v4 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v15 = *v10;
      v8 = *(v10 + 8);
      *v10 = v8;
      *(v10 + 8) = v15;
      v10 -= 8;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_21D3E5458(uint64_t *a1)
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
        sub_21D0D8CF0(0, &qword_280D0C2E8, 0x277CC34B0);
        v6 = sub_21DBFA69C();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_21D3E4E24(v8, v9, a1, v4);
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
    sub_21D3E5380(0, v2, 1, a1);
  }
}

uint64_t sub_21D3E556C(void *a1, uint64_t (*a2)(void *, __n128))
{
  v4 = sub_21DBF659C();
  v5 = *(v4 - 8);
  *&v6 = MEMORY[0x28223BE20](v4).n128_u64[0];
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 attributeSet];
  v10 = sub_21DBFB51C();

  if (!v10)
  {
    goto LABEL_8;
  }

  v40 = a2;
  v11 = [v10 entityName];
  v12 = sub_21DBFA16C();
  v14 = v13;

  (*(v5 + 104))(v8, *MEMORY[0x277D45058], v4);
  v15 = sub_21DBF657C();
  v17 = v16;
  (*(v5 + 8))(v8, v4);
  if (v12 == v15 && v14 == v17)
  {

    goto LABEL_20;
  }

  v19 = sub_21DBFC64C();

  if (v19)
  {
LABEL_20:
    v39 = (v40)(v10);

    return v39;
  }

LABEL_8:
  if (qword_280D0C870 != -1)
  {
    swift_once();
  }

  v20 = sub_21DBF84BC();
  __swift_project_value_buffer(v20, qword_280D0C878);
  v21 = a1;
  v22 = sub_21DBF84AC();
  v23 = sub_21DBFAEBC();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v41 = v25;
    *v24 = 136315394;
    v26 = [v21 uniqueIdentifier];
    v27 = sub_21DBFA16C();
    v29 = v28;

    v30 = sub_21D0CDFB4(v27, v29, &v41);

    *(v24 + 4) = v30;
    *(v24 + 12) = 2080;
    v31 = [v21 attributeSet];
    v32 = sub_21DBFB52C();
    v34 = v33;

    if (v34)
    {
      v35 = v32;
    }

    else
    {
      v35 = 7104878;
    }

    if (v34)
    {
      v36 = v34;
    }

    else
    {
      v36 = 0xE300000000000000;
    }

    v37 = sub_21D0CDFB4(v35, v36, &v41);

    *(v24 + 14) = v37;
    _os_log_impl(&dword_21D0C9000, v22, v23, "TTRAutoCompleteReminderProvider.ResultCollector: Impossible as invalid objectID {uniqueIdentifier: %s, objectID: %s} should have been filtered", v24, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D46520](v25, -1, -1);
    MEMORY[0x223D46520](v24, -1, -1);
  }

  return 0;
}

void sub_21D3E59A8()
{
  if (qword_280D16860 != -1)
  {
    swift_once();
  }

  v0 = qword_280D21C98;
  v1 = sub_21DBFA12C();
  v2 = [objc_opt_self() imageNamed:v1 inBundle:v0 compatibleWithTraitCollection:0];

  _sSo7UIImageC15RemindersUICoreE22transformOptionalValueyA2BSgFZ_0(v2);
  v4 = v3;

  qword_27CE5BE40 = v4;
}

uint64_t sub_21D3E5ACC()
{
  v0 = sub_21DBFAA1C();
  MEMORY[0x223D42AA0](v0);

  MEMORY[0x223D42AA0](8236, 0xE200000000000000);
  v1 = sub_21DBFAA1C();
  MEMORY[0x223D42AA0](v1);

  MEMORY[0x223D42AA0](32032, 0xE200000000000000);
  return 8315;
}

void sub_21D3E5B60()
{
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5BE48, &qword_21DC15298);
  MEMORY[0x28223BE20](v65);
  v64 = &v62 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v63 = &v62 - v3;
  v4 = sub_21DBF5B9C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v71 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v70 = &v62 - v8;
  MEMORY[0x28223BE20](v9);
  v69 = &v62 - v10;
  MEMORY[0x28223BE20](v11);
  v68 = &v62 - v12;
  MEMORY[0x28223BE20](v13);
  v73 = &v62 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v62 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v62 - v19;
  v21 = *(v0 + 16);
  if (v21 < 0)
  {
    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {
    v72 = v0;
    v22 = MEMORY[0x277D84F90];
    if (v21)
    {
      v66 = v17;
      v75 = MEMORY[0x277D84F90];
      sub_21D18EF04(0, v21, 0);
      v23 = 0;
      v22 = v75;
      v67 = *(v72 + 40);
      do
      {
        v24 = v21;
        v67(v23);
        v75 = v22;
        v28 = *(v22 + 16);
        v27 = *(v22 + 24);
        if (v28 >= v27 >> 1)
        {
          v30 = v25;
          v31 = v26;
          sub_21D18EF04((v27 > 1), v28 + 1, 1);
          v26 = v31;
          v25 = v30;
          v22 = v75;
        }

        ++v23;
        *(v22 + 16) = v28 + 1;
        v29 = v22 + 48 * v28;
        *(v29 + 32) = v25;
        *(v29 + 40) = v26;
        *(v29 + 48) = 0u;
        *(v29 + 64) = 0u;
        v21 = v24;
      }

      while (v24 != v23);
      v17 = v66;
    }

    *(v72 + 72) = v22;

    v32 = sub_21D3E6930(&qword_280D1B818, MEMORY[0x277CC9A28], MEMORY[0x277CC9A58]);
    sub_21DBFBCAC();
    if (v21)
    {
      v33 = 0;
      do
      {
        v34 = v33 + 1;
        v74 = v33;
        sub_21DBFBC6C();
        v33 = v34;
      }

      while (v21 != v34);
    }

    v67 = v32;
    v36 = *(v5 + 32);
    v35 = v5 + 32;
    v36(v20, v17, v4);
    sub_21DBF5B8C();
    v37 = (v35 - 24);
    v66 = (v35 - 16);
    v38 = MEMORY[0x277D84F90];
    do
    {
      if ((sub_21DBF5B1C() & 1) == 0)
      {
        v40 = v65;
        v41 = *(v65 + 48);
        v42 = v63;
        *(v42 + v41) = sub_21D3E61BC();
        sub_21DBF5B7C();
        sub_21DBF5B5C();
        v43 = v64;
        sub_21D3E68C0(v42, v64);

        v38 = *(v43 + *(v40 + 48));
        (*v37)(v43, v4);
      }

      if (*(v38 + 2))
      {
        v44 = v68;
        v45 = v73;
        sub_21D3E64C4(v38, v39);
        v46 = *v37;
        (*v37)(v20, v4);

        v47 = *v66;
        (*v66)(v20, v44, v4);
        v47(v70, v45, v4);
        v47(v71, v44, v4);
        v48 = v69;
        sub_21DBFBC5C();
        sub_21DBFBC4C();
        v46(v48, v4);
        v46(v44, v4);
        v38 = MEMORY[0x277D84F90];
      }

      if ((sub_21DBF5B1C() & 1) != 0 && !*(v38 + 2))
      {
        v49 = sub_21DBF5ABC();
        if ((v50 & 1) == 0)
        {
          v51 = sub_21D3E6634(v49, 0);
          if (v54)
          {
            goto LABEL_30;
          }

          v55 = v51;
          v56 = v52;
          v57 = v53;
          sub_21DBF5B0C();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v38 = sub_21D213180(0, *(v38 + 2) + 1, 1, v38);
          }

          v59 = *(v38 + 2);
          v58 = *(v38 + 3);
          if (v59 >= v58 >> 1)
          {
            v38 = sub_21D213180((v58 > 1), v59 + 1, 1, v38);
          }

          *(v38 + 2) = v59 + 1;
          v60 = &v38[24 * v59];
          *(v60 + 4) = v55;
          *(v60 + 5) = v56;
          *(v60 + 6) = v57;
        }
      }
    }

    while ((sub_21DBF5B1C() & 1) == 0 || *(v38 + 2) || (sub_21DBF5B1C() & 1) == 0);
    v61 = *v37;
    (*v37)(v73, v4);
    v61(v20, v4);
    sub_21DBF8E0C();
  }
}

char *sub_21D3E61BC()
{
  v0 = sub_21DBF5A5C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA80, &qword_21DC0A040);
  MEMORY[0x28223BE20](v4);
  v6 = &v25 - v5;
  sub_21DBF5B8C();
  sub_21DBF5A6C();
  sub_21DBF5B9C();
  sub_21D3E6930(&qword_280D1B820, MEMORY[0x277CC9A28], MEMORY[0x277CC9A50]);
  v7 = (v1 + 8);
  v29 = MEMORY[0x277D84F90];
  while (1)
  {
    sub_21DBFACAC();
    sub_21D3E6930(&qword_280D1B840, MEMORY[0x277CC9A08], MEMORY[0x277CC9A10]);
    v8 = sub_21DBFA10C();
    (*v7)(v3, v0);
    if (v8)
    {
      break;
    }

    v9 = sub_21DBFAD3C();
    v11 = *v10;
    v9(v30, 0);
    sub_21DBFACBC();
    v12 = sub_21D3E6634(v11, 1u);
    if (v15)
    {
      sub_21DBF5AFC();
    }

    else
    {
      v26 = v13;
      v27 = v14;
      v28 = v12;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v29 = sub_21D213180(0, *(v29 + 2) + 1, 1, v29);
      }

      v16 = v28;
      v18 = *(v29 + 2);
      v17 = *(v29 + 3);
      v20 = v26;
      v19 = v27;
      if (v18 >= v17 >> 1)
      {
        v23 = sub_21D213180((v17 > 1), v18 + 1, 1, v29);
        v20 = v26;
        v19 = v27;
        v29 = v23;
        v16 = v28;
      }

      v21 = v29;
      *(v29 + 2) = v18 + 1;
      v22 = &v21[24 * v18];
      *(v22 + 4) = v16;
      *(v22 + 5) = v20;
      *(v22 + 6) = v19;
    }
  }

  sub_21D304524(v6);
  return v29;
}

uint64_t sub_21D3E64C4(uint64_t a1, __n128 a2)
{
  v3 = v2;
  result = sub_21DBF5B8C();
  v6 = *(a1 + 16);
  if (!v6)
  {
    return result;
  }

  for (i = (a1 + 48); ; i += 3)
  {
    v8 = *(i - 2);
    v9 = v8 - 1;
    if (__OFSUB__(v8, 1))
    {
      break;
    }

    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      goto LABEL_23;
    }

    v11 = *(i - 1);
    v12 = *i;
    if (sub_21DBF5B2C())
    {
      v13 = *(v3 + 72);
      result = swift_isUniquelyReferenced_nonNull_native();
      *(v3 + 72) = v13;
      if (result)
      {
        if ((v9 & 0x8000000000000000) != 0)
        {
          goto LABEL_24;
        }
      }

      else
      {
        result = sub_21D256CB8(v13);
        v13 = result;
        if ((v9 & 0x8000000000000000) != 0)
        {
          goto LABEL_24;
        }
      }

      if (v9 >= *(v13 + 16))
      {
        goto LABEL_25;
      }

      v14 = (v13 + 48 * v9 + 56);
    }

    else
    {
      result = sub_21DBF5B2C();
      if ((result & 1) == 0)
      {
        goto LABEL_4;
      }

      v13 = *(v3 + 72);
      result = swift_isUniquelyReferenced_nonNull_native();
      *(v3 + 72) = v13;
      if (result)
      {
        if ((v10 & 0x8000000000000000) != 0)
        {
          goto LABEL_20;
        }
      }

      else
      {
        result = sub_21D256CB8(v13);
        v13 = result;
        if ((v10 & 0x8000000000000000) != 0)
        {
LABEL_20:
          __break(1u);
          return result;
        }
      }

      if (v10 >= *(v13 + 16))
      {
        goto LABEL_26;
      }

      v14 = (v13 + 48 * v10 + 48);
      v11 = v12;
    }

    *v14 = v11 + *v14;
    *(v3 + 72) = v13;
    result = sub_21DBF5AFC();
LABEL_4:
    if (!--v6)
    {
      return result;
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
  return result;
}

char *sub_21D3E6634(unint64_t a1, unsigned __int8 a2)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  v2 = v3;
  v7 = *(v3 + 9);
  if (*(v7 + 16) <= a1)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    result = sub_21D256CB8(v3);
    v3 = result;
    goto LABEL_14;
  }

  v8 = (v7 + 48 * a1);
  v9 = v8[6];
  v10 = v8[7];
  if (v9 > v10)
  {
    v11 = v8[6];
  }

  else
  {
    v11 = v8[7];
  }

  if (v10 >= v9)
  {
    v12 = v8[6];
  }

  else
  {
    v12 = v8[7];
  }

  v13 = *(v3 + 4) * (v11 - v12);
  v14 = v8[4] + v12;
  v15 = v8[5] + v12;
  v16 = v15 + v13;
  v17 = v14 + v13;
  if (v10 >= v9)
  {
    v15 = v16;
    v17 = v14;
  }

  v4 = a1;
  if (a2 & (*(v3 + 7))(v17 + v15 + 60.0, 10000.0))
  {
    return 0;
  }

  v5 = v18;
  v6 = v19;
  v3 = *(v3 + 9);
  result = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + 9) = v3;
  if ((result & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_14:
  if (*(v3 + 2) <= v4)
  {
    __break(1u);
  }

  else
  {
    result = v4;
    v21 = &v3[48 * v4];
    *(v21 + 8) = v5;
    *(v21 + 9) = v6;
    *(v2 + 9) = v3;
  }

  return result;
}

uint64_t sub_21D3E67DC()
{

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for TTRILabeledIconsTitleLayout.LayoutInfo(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TTRILabeledIconsTitleLayout.LayoutInfo(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 48) = v3;
  return result;
}

uint64_t sub_21D3E68C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5BE48, &qword_21DC15298);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D3E6930(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TTRIReminderCellQuickBarHashtagsViewModel(unsigned __int8 *a1, unsigned int a2)
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
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t TTRILocationQuickPickersCellContentState.ttriAccessiblityProximity.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t TTRILocationQuickPickersCellContentState.ttriAccessibilityCurrentLocation.getter()
{
  v1 = *(v0 + 32);
  sub_21DBF8E0C();
  return v1;
}

void TTRILocationQuickPickersCellContentState.ttriAccessibilityCurrentLocation.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

uint64_t TTRILocationQuickPickersCellContentState.init(items:selected:ttriAccessiblityProximity:ttriAccessibilityCurrentLocation:)@<X0>(uint64_t result@<X0>, char *a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v7 = *a2;
  *a7 = result;
  *(a7 + 8) = v7;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4 & 1;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6;
  return result;
}

uint64_t sub_21D3E6BA0@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + qword_27CE5BE50);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_21D25A948;
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

uint64_t sub_21D3E6C40(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_21D25A920;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + qword_27CE5BE50);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_21D0D0E78(v3, v4);
  return sub_21D0D0E88(v8, v9);
}

uint64_t TTRILocationQuickPickersCellContent.action.getter()
{
  v1 = (v0 + qword_27CE5BE50);
  swift_beginAccess();
  v2 = *v1;
  sub_21D0D0E78(*v1, v1[1]);
  return v2;
}

uint64_t TTRILocationQuickPickersCellContent.action.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + qword_27CE5BE50);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_21D0D0E88(v6, v7);
}

id TTRILocationQuickPickersCellContent.init(state:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = a1[2];
  v5 = *(a1 + 24);
  v6 = a1[4];
  v7 = a1[5];
  v8 = (v1 + qword_27CE5BE50);
  *v8 = 0;
  v8[1] = 0;
  v9 = MEMORY[0x277D85000];
  *(v1 + *((*MEMORY[0x277D85000] & *v1) + 0x68)) = 0;
  *(v1 + *((*v9 & *v1) + 0x70) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + *((*v9 & *v1) + 0x90)) = 0;
  v10 = v1 + *((*v9 & *v1) + 0x78);
  *v10 = v2;
  v10[8] = v3;
  *(v10 + 2) = v4;
  v10[24] = v5;
  *(v10 + 4) = v6;
  *(v10 + 5) = v7;
  *(v1 + *((*v9 & *v1) + 0x80)) = 0;
  v11 = (v1 + *((*v9 & *v1) + 0x88));
  *v11 = 0xD000000000000018;
  v11[1] = 0x800000021DC5B0C0;
  v13.receiver = v1;
  v13.super_class = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5BE58, &qword_21DC152E0);
  return objc_msgSendSuper2(&v13, sel_init);
}

void TTRILocationQuickPickersCellContent.updateCell(_:)()
{
  v1 = v0 + *((*MEMORY[0x277D85000] & *v0) + 0x78);
  swift_beginAccess();
  v2 = *(*v1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v32 = MEMORY[0x277D84F90];
    sub_21DBF8E0C();
    sub_21D18EE2C(0, v2, 0);
    v4 = 32;
    v3 = v32;
    do
    {
      sub_21D3E75A8(&v26);
      v32 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_21D18EE2C((v5 > 1), v6 + 1, 1);
        v3 = v32;
      }

      *(v3 + 16) = v6 + 1;
      v7 = v3 + 88 * v6;
      v8 = v27;
      *(v7 + 32) = v26;
      *(v7 + 48) = v8;
      v9 = v28;
      v10 = v29;
      v11 = v30;
      *(v7 + 112) = v31;
      *(v7 + 80) = v10;
      *(v7 + 96) = v11;
      *(v7 + 64) = v9;
      ++v4;
      --v2;
    }

    while (v2);
  }

  v12 = sub_21D3E8918();
  v13 = sub_21D1D7E94(v3, v12);

  if ((v13 & 1) == 0)
  {
    sub_21D3E8ABC(v3);
  }

  if (v1[8] == 6)
  {
    *&v28 = 0;
    v26 = 0u;
    v27 = 0u;
  }

  else
  {
    LOBYTE(v32) = v1[8];
    sub_21D3E82A8();
    sub_21DBFBE2C();
  }

  sub_21D3E8DA8(&v26, 0);
  sub_21D3E8240(&v26);
  if ((v1[24] & 1) != 0 || *(v1 + 2) != 1)
  {
    if (qword_280D1BAA8 == -1)
    {
      goto LABEL_17;
    }

    goto LABEL_37;
  }

  if (qword_280D1BAA8 != -1)
  {
LABEL_37:
    swift_once();
  }

LABEL_17:
  v14 = sub_21DBF516C();
  v16 = v15;
  v17 = *(v1 + 5);
  if (v17)
  {
    v18 = *(v1 + 4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5EE90, &qword_21DC109C0);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_21DC08D00;
    *(v19 + 56) = MEMORY[0x277D837D0];
    *(v19 + 64) = sub_21D17A884();
    *(v19 + 32) = v18;
    *(v19 + 40) = v17;
    sub_21DBF8E0C();
    v20 = sub_21DBFA17C();
  }

  else
  {
    v20 = 0;
    v21 = 0xE000000000000000;
  }

  v22 = v1[8];
  if (v22 > 3)
  {
    if (v22 == 4)
    {
      goto LABEL_35;
    }

    v23 = v21;
    if (v22 != 5)
    {
      goto LABEL_35;
    }

    v24 = v20;

    if (qword_280D1BAA8 != -1)
    {
      swift_once();
    }

    v14 = sub_21DBF516C();
    v16 = v25;
    v21 = v23;
    v20 = v24;
  }

  else
  {
    if (v22 - 1 < 2)
    {

      if ((v1[24] & 1) != 0 || *(v1 + 2) != 1)
      {
        if (qword_280D1BAA8 == -1)
        {
LABEL_34:
          v20 = sub_21DBF516C();
          goto LABEL_36;
        }
      }

      else if (qword_280D1BAA8 == -1)
      {
        goto LABEL_34;
      }

      swift_once();
      goto LABEL_34;
    }

    if (v1[8])
    {
LABEL_35:

      v20 = 0;
      v21 = 0;
      v14 = 0;
      v16 = 0;
    }
  }

LABEL_36:
  sub_21D3E85E8(v20, v21);
  sub_21D3E85F4(v14, v16);
}

uint64_t sub_21D3E75A8@<X0>(void *a1@<X8>)
{
  v4 = *v2;
  if (v4 <= 2)
  {
    if (*v2)
    {
      if (v4 == 1)
      {
        sub_21D3E82A8();
        sub_21DBFBE2C();
        v5 = [objc_opt_self() configurationWithScale_];
        v6 = sub_21DBFA12C();
        v7 = [objc_opt_self() _systemImageNamed_withConfiguration_];

        v8 = [objc_opt_self() systemCyanColor];
        if (qword_280D1BAA8 == -1)
        {
          goto LABEL_15;
        }
      }

      else
      {
        sub_21D3E82A8();
        sub_21DBFBE2C();
        v15 = [objc_opt_self() configurationWithScale_];
        v16 = sub_21DBFA12C();
        v7 = [objc_opt_self() _systemImageNamed_withConfiguration_];

        v8 = [objc_opt_self() systemBrownColor];
        if (qword_280D1BAA8 == -1)
        {
LABEL_15:
          v17 = sub_21DBF516C();
          v19 = v18;
          result = sub_21DBF516C();
          goto LABEL_19;
        }
      }
    }

    else
    {
      sub_21D3E82A8();
      sub_21DBFBE2C();
      v11 = [objc_opt_self() configurationWithScale_];
      v12 = sub_21DBFA12C();
      v7 = [objc_opt_self() _systemImageNamed_withConfiguration_];

      v8 = [objc_opt_self() systemGray2Color];
      if (qword_280D1BAA8 == -1)
      {
        goto LABEL_15;
      }
    }

LABEL_20:
    swift_once();
    goto LABEL_15;
  }

  if (v4 == 3)
  {
    sub_21D3E82A8();
    sub_21DBFBE2C();
    v13 = [objc_opt_self() configurationWithScale_];
    v14 = sub_21DBFA12C();
    v7 = [objc_opt_self() _systemImageNamed_withConfiguration_];

    v8 = [objc_opt_self() systemBlueColor];
    if (qword_280D1BAA8 == -1)
    {
      goto LABEL_15;
    }

    goto LABEL_20;
  }

  if (v4 == 4)
  {
    sub_21D3E82A8();
    sub_21DBFBE2C();
    v9 = [objc_opt_self() configurationWithScale_];
    v10 = sub_21DBFA12C();
    v7 = [objc_opt_self() _systemImageNamed_withConfiguration_];

    v8 = [objc_opt_self() systemBlueColor];
    if (qword_280D1BAA8 == -1)
    {
      goto LABEL_15;
    }

    goto LABEL_20;
  }

  sub_21D3E82A8();
  sub_21DBFBE2C();
  v22 = [objc_opt_self() configurationWithScale_];
  v23 = sub_21DBFA12C();
  v26 = [objc_opt_self() _systemImageNamed_withConfiguration_];

  v25 = [objc_opt_self() systemGray2Color];
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  v17 = sub_21DBF516C();
  v19 = v24;
  result = sub_21DBF516C();
  v8 = v25;
  v7 = v26;
LABEL_19:
  a1[5] = v7;
  a1[6] = v8;
  a1[7] = v17;
  a1[8] = v19;
  a1[9] = result;
  a1[10] = v21;
  return result;
}

id TTRILocationQuickPickersCellContent.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

BOOL _s15RemindersUICore40TTRILocationQuickPickersCellContentStateV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v11 = *(a2 + 32);
  v10 = *(a2 + 40);
  sub_21D1D5448(*a1, *a2);
  if ((v12 & 1) == 0)
  {
    return 0;
  }

  if (v2 == 6)
  {
    if (v7 != 6)
    {
      return 0;
    }
  }

  else if (v7 == 6 || (sub_21D25BD94(v2, v7) & 1) == 0)
  {
    return 0;
  }

  if (v4)
  {
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    if (v3 == v8)
    {
      v13 = v9;
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
      return 0;
    }
  }

  if (v6)
  {
    return v10 && (v5 == v11 && v6 == v10 || (sub_21DBFC64C() & 1) != 0);
  }

  return !v10;
}

uint64_t sub_21D3E8240(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5BE60, &unk_21DC15460);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21D3E82A8()
{
  result = qword_27CE5BE68;
  if (!qword_27CE5BE68)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRLocationQuickPickItem, &type metadata for TTRLocationQuickPickItem, v0, v1);
    atomic_store(result, &qword_27CE5BE68);
  }

  return result;
}

double destroy for TTRILocationQuickPickersCellContentState()
{

  return result;
}

uint64_t initializeWithCopy for TTRILocationQuickPickersCellContentState(uint64_t a1, uint64_t *a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = a2[2];
  *(a1 + 24) = *(a2 + 24);
  v3 = a2[5];
  *(a1 + 32) = a2[4];
  *(a1 + 40) = v3;
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  return a1;
}

uint64_t assignWithCopy for TTRILocationQuickPickersCellContentState(uint64_t a1, uint64_t *a2)
{
  *a1 = *a2;
  sub_21DBF8E0C();

  *(a1 + 8) = *(a2 + 8);
  v4 = a2[2];
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 16) = v4;
  *(a1 + 32) = a2[4];
  *(a1 + 40) = a2[5];
  sub_21DBF8E0C();

  return a1;
}

uint64_t assignWithTake for TTRILocationQuickPickersCellContentState(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  v4 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v4;

  return a1;
}

uint64_t getEnumTagSinglePayload for TTRReminderAndComputedProperties(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for TTRReminderAndComputedProperties(uint64_t result, int a2, int a3)
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

uint64_t type metadata accessor for TTRILocationQuickPickersCellContent(uint64_t a1)
{
  result = qword_27CE5BE70;
  if (!qword_27CE5BE70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21D3E8600(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = (v3 + *a3);
  v5 = *v4;
  v6 = v4[1];
  *v4 = a1;
  v4[1] = a2;
  if (a2)
  {
    if (v6)
    {
      v7 = v5 == a1 && v6 == a2;
      if (v7 || (sub_21DBFC64C() & 1) != 0)
      {

        return;
      }
    }
  }

  else if (!v6)
  {
    return;
  }

  v8 = OBJC_IVAR____TtC15RemindersUICore20TTRILabeledIconsView_cells;
  swift_beginAccess();
  v9 = *(v3 + v8);
  if (v9 >> 62)
  {
    goto LABEL_30;
  }

  v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_14:
  sub_21DBF8E0C();
  if (v10)
  {
    v11 = 0;
    do
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x223D44740](v11, v9);
        v13 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
LABEL_24:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_30:
          v10 = sub_21DBFBD7C();
          goto LABEL_14;
        }

        v12 = *(v9 + 8 * v11 + 32);
        v13 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_24;
        }
      }

      if (*(v12 + OBJC_IVAR____TtC15RemindersUICore19TTRILabeledIconCell_isSelected))
      {
        v14 = v12;

        sub_21D1D9CF0(v14 + OBJC_IVAR____TtC15RemindersUICore19TTRILabeledIconCell_item, v15);

        sub_21D181CE0(v15, v16);
        sub_21D1D9D4C(v15);
        goto LABEL_27;
      }

      ++v11;
    }

    while (v13 != v10);
  }

  v17 = 0;
  memset(v16, 0, sizeof(v16));
LABEL_27:
  sub_21D3E8DA8(v16, 1);

  sub_21D0CF7E0(v16, &qword_27CE5BE60, &unk_21DC15460);
}

double sub_21D3E87FC()
{
  *(v0 + OBJC_IVAR____TtC15RemindersUICore20TTRILabeledIconsView_titleLayoutInfos) = 0;

  v1 = OBJC_IVAR____TtC15RemindersUICore20TTRILabeledIconsView_cells;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_21DBFBD7C())
  {
    sub_21DBF8E0C();
    if (!i)
    {
      break;
    }

    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x223D44740](v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      [v5 invalidateIntrinsicContentSize];

      ++v4;
      if (v7 == i)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_12:

  return result;
}

char *sub_21D3E8918()
{
  v1 = OBJC_IVAR____TtC15RemindersUICore20TTRILabeledIconsView_cells;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 >> 62)
  {
    v3 = sub_21DBFBD7C();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = MEMORY[0x277D84F90];
  if (!v3)
  {
    return v4;
  }

  v17 = MEMORY[0x277D84F90];
  sub_21DBF8E0C();
  result = sub_21D18EE2C(0, v3 & ~(v3 >> 63), 0);
  if ((v3 & 0x8000000000000000) == 0)
  {
    v6 = 0;
    v4 = v17;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x223D44740](v6, v2);
        sub_21D1D9CF0(v7 + OBJC_IVAR____TtC15RemindersUICore19TTRILabeledIconCell_item, v15);
        swift_unknownObjectRelease();
      }

      else
      {
        sub_21D1D9CF0(*(v2 + 8 * v6 + 32) + OBJC_IVAR____TtC15RemindersUICore19TTRILabeledIconCell_item, v15);
      }

      v17 = v4;
      v9 = *(v4 + 16);
      v8 = *(v4 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_21D18EE2C((v8 > 1), v9 + 1, 1);
        v4 = v17;
      }

      ++v6;
      *(v4 + 16) = v9 + 1;
      v10 = v4 + 88 * v9;
      v11 = v15[1];
      *(v10 + 32) = v15[0];
      *(v10 + 48) = v11;
      v12 = v15[2];
      v13 = v15[3];
      v14 = v15[4];
      *(v10 + 112) = v16;
      *(v10 + 80) = v13;
      *(v10 + 96) = v14;
      *(v10 + 64) = v12;
    }

    while (v3 != v6);

    return v4;
  }

  __break(1u);
  return result;
}

void sub_21D3E8ABC(uint64_t a1)
{
  v2 = v1;
  v3 = MEMORY[0x277D84F90];
  v14 = *(a1 + 16);
  if (v14)
  {
    v33 = MEMORY[0x277D84F90];
    sub_21DBFC01C();
    v5 = 0;
    v13 = OBJC_IVAR____TtC15RemindersUICore20TTRILabeledIconsView_titleFont;
    v6 = a1 + 32;
    do
    {
      v7 = v5 + 1;
      sub_21D1D9CF0(v6, v31);
      v24 = v5;
      v27 = v31[2];
      v28 = v31[3];
      v29 = v31[4];
      v30 = v32;
      v25 = v31[0];
      v26 = v31[1];
      sub_21D0D3954(&v24, &v15, &qword_27CE5BF08, &unk_21DC15470);
      v8 = v15;
      v22[2] = v18;
      v22[3] = v19;
      v22[4] = v20;
      v23 = v21;
      v22[0] = v16;
      v22[1] = v17;
      sub_21D1D9CF0(v22, &v15);
      v9 = *&v2[v13];
      v10 = objc_allocWithZone(type metadata accessor for TTRILabeledIconCell());
      sub_21D3EA8F8(v2, &v15, v8, v9, v10, 60.0);
      sub_21D1D9D4C(v22);
      sub_21D0CF7E0(&v24, &qword_27CE5BF08, &unk_21DC15470);
      sub_21DBFBFEC();
      sub_21DBFC03C();
      sub_21DBFC04C();
      sub_21DBFBFFC();
      v6 += 88;
      v5 = v7;
    }

    while (v14 != v7);
    v3 = v33;
  }

  v11 = OBJC_IVAR____TtC15RemindersUICore20TTRILabeledIconsView_cells;
  swift_beginAccess();
  *&v2[v11] = v3;
  sub_21DBF8E0C();

  if (v3 >> 62)
  {
    sub_21D0D8CF0(0, &qword_280D176A0, 0x277D75D18);
    sub_21DBF8E0C();
    sub_21DBFC33C();
  }

  else
  {
    sub_21DBF8E0C();
    sub_21DBFC65C();
    sub_21D0D8CF0(0, &qword_280D176A0, 0x277D75D18);
  }

  sub_21D0D8CF0(0, &qword_280D176A0, 0x277D75D18);
  v12 = sub_21DBFA5DC();

  [v2 setArrangedSubviews_];

  sub_21D3E9684();
}

void sub_21D3E8DA8(uint64_t a1, char a2)
{
  v4 = OBJC_IVAR____TtC15RemindersUICore20TTRILabeledIconsView_cells;
  swift_beginAccess();
  v30 = v2;
  v5 = *(v2 + v4);
  if (v5 >> 62)
  {
LABEL_60:
    v6 = sub_21DBFBD7C();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_21DBF8E0C();
  if (v6)
  {
    v7 = 0;
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x223D44740](v7, v5);
        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
LABEL_13:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_60;
        }

        v8 = *(v5 + 8 * v7 + 32);
        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_13;
        }
      }

      if (*(v8 + OBJC_IVAR____TtC15RemindersUICore19TTRILabeledIconCell_isSelected))
      {
        v10 = v8;

        sub_21D1D9CF0(v10 + OBJC_IVAR____TtC15RemindersUICore19TTRILabeledIconCell_item, v39);

        sub_21D181CE0(v39, v44);
        sub_21D1D9D4C(v39);
        goto LABEL_16;
      }

      ++v7;
    }

    while (v9 != v6);
  }

  v45 = 0;
  memset(v44, 0, sizeof(v44));
LABEL_16:
  sub_21D0D3954(a1, v39, &qword_27CE5BE60, &unk_21DC15460);
  sub_21D0D3954(v44, &v41, &qword_27CE5BE60, &unk_21DC15460);
  if (v40)
  {
    sub_21D0D3954(v39, v38, &qword_27CE5BE60, &unk_21DC15460);
    if (*(&v42 + 1))
    {
      v35 = v41;
      v36 = v42;
      v37 = v43;
      v11 = MEMORY[0x223D445C0](v38, &v35);
      sub_21D181D3C(&v35);
      sub_21D0CF7E0(v44, &qword_27CE5BE60, &unk_21DC15460);
      sub_21D181D3C(v38);
      sub_21D0CF7E0(v39, &qword_27CE5BE60, &unk_21DC15460);
      if ((v11 & 1) != 0 && (a2 & 1) == 0)
      {
        return;
      }

      goto LABEL_26;
    }

    sub_21D0CF7E0(v44, &qword_27CE5BE60, &unk_21DC15460);
    sub_21D181D3C(v38);
  }

  else
  {
    sub_21D0CF7E0(v44, &qword_27CE5BE60, &unk_21DC15460);
    if (!*(&v42 + 1))
    {
      sub_21D0CF7E0(v39, &qword_27CE5BE60, &unk_21DC15460);
      if ((a2 & 1) == 0)
      {
        return;
      }

      goto LABEL_26;
    }
  }

  sub_21D0CF7E0(v39, &qword_27CE5BF00, qword_21DC172F0);
LABEL_26:
  v12 = *(v2 + v4);
  if (v12 >> 62)
  {
    v13 = sub_21DBFBD7C();
    if (!v13)
    {
LABEL_57:
      sub_21D3E87FC();
      return;
    }
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v13)
    {
      goto LABEL_57;
    }
  }

  if (v13 >= 1)
  {
    v31 = v2 + OBJC_IVAR____TtC15RemindersUICore20TTRILabeledIconsView_ttriAccessibilityHintForSelectedItem;
    v32 = v2 + OBJC_IVAR____TtC15RemindersUICore20TTRILabeledIconsView_ttriAccessibilityValueForSelectedItem;
    sub_21DBF8E0C();
    v14 = 0;
    v33 = v13;
    while (1)
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x223D44740](v14, v12);
      }

      else
      {
        v17 = *(v12 + 8 * v14 + 32);
      }

      v18 = v17;
      sub_21D181CE0(&v17[OBJC_IVAR____TtC15RemindersUICore19TTRILabeledIconCell_item], v44);
      sub_21D0D3954(v44, v39, &qword_27CE5BE60, &unk_21DC15460);
      sub_21D0D3954(a1, &v41, &qword_27CE5BE60, &unk_21DC15460);
      if (v40)
      {
        sub_21D0D3954(v39, v38, &qword_27CE5BE60, &unk_21DC15460);
        if (!*(&v42 + 1))
        {
          sub_21D0CF7E0(v44, &qword_27CE5BE60, &unk_21DC15460);
          sub_21D181D3C(v38);
LABEL_48:
          sub_21D0CF7E0(v39, &qword_27CE5BF00, qword_21DC172F0);
          v27 = v18[OBJC_IVAR____TtC15RemindersUICore19TTRILabeledIconCell_isSelected];
          v18[OBJC_IVAR____TtC15RemindersUICore19TTRILabeledIconCell_isSelected] = 0;
          if (v27 == 1)
          {
            sub_21D3EB46C();
          }

          v23 = 0;
          v21 = &v18[OBJC_IVAR____TtC15RemindersUICore19TTRILabeledIconCell_button];
          v22 = *&v18[OBJC_IVAR____TtC15RemindersUICore19TTRILabeledIconCell_button];
          goto LABEL_52;
        }

        v35 = v41;
        v36 = v42;
        v37 = v43;
        v19 = MEMORY[0x223D445C0](v38, &v35);
        sub_21D181D3C(&v35);
        sub_21D0CF7E0(v44, &qword_27CE5BE60, &unk_21DC15460);
        sub_21D181D3C(v38);
        sub_21D0CF7E0(v39, &qword_27CE5BE60, &unk_21DC15460);
        v20 = v18[OBJC_IVAR____TtC15RemindersUICore19TTRILabeledIconCell_isSelected];
        v18[OBJC_IVAR____TtC15RemindersUICore19TTRILabeledIconCell_isSelected] = v19 & 1;
        if ((v19 & 1) != v20)
        {
          sub_21D3EB46C();
        }

        v21 = &v18[OBJC_IVAR____TtC15RemindersUICore19TTRILabeledIconCell_button];
        v22 = *&v18[OBJC_IVAR____TtC15RemindersUICore19TTRILabeledIconCell_button];
        if ((v19 & 1) == 0)
        {
          v23 = 0;
          goto LABEL_52;
        }
      }

      else
      {
        sub_21D0CF7E0(v44, &qword_27CE5BE60, &unk_21DC15460);
        if (*(&v42 + 1))
        {
          goto LABEL_48;
        }

        sub_21D0CF7E0(v39, &qword_27CE5BE60, &unk_21DC15460);
        v24 = v18[OBJC_IVAR____TtC15RemindersUICore19TTRILabeledIconCell_isSelected];
        v18[OBJC_IVAR____TtC15RemindersUICore19TTRILabeledIconCell_isSelected] = 1;
        if ((v24 & 1) == 0)
        {
          sub_21D3EB46C();
        }

        v21 = &v18[OBJC_IVAR____TtC15RemindersUICore19TTRILabeledIconCell_button];
        v22 = *&v18[OBJC_IVAR____TtC15RemindersUICore19TTRILabeledIconCell_button];
      }

      if (*(v31 + 8))
      {
        v25 = v22;
        sub_21DBF8E0C();
        v26 = sub_21DBFA12C();

        v23 = 1;
        goto LABEL_53;
      }

      v23 = 1;
LABEL_52:
      v25 = v22;
      v26 = 0;
LABEL_53:
      [v25 setAccessibilityHint_];

      v28 = *v21;
      if (v23 && *(v32 + 8))
      {
        v29 = v28;
        sub_21DBF8E0C();
        v16 = sub_21DBFA12C();
      }

      else
      {
        v15 = v28;
        v16 = 0;
      }

      ++v14;
      [v28 setAccessibilityValue_];

      if (v33 == v14)
      {

        goto LABEL_57;
      }
    }
  }

  __break(1u);
}

id sub_21D3E93DC(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC15RemindersUICore20TTRILabeledIconsView_viewDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC15RemindersUICore20TTRILabeledIconsView_itemWidth] = 0x404E000000000000;
  *&v4[OBJC_IVAR____TtC15RemindersUICore20TTRILabeledIconsView_centerAdjustmentAllowed] = 0x3FF0000000000000;
  v10 = &v4[OBJC_IVAR____TtC15RemindersUICore20TTRILabeledIconsView_ttriAccessibilityHintForSelectedItem];
  *v10 = 0;
  v10[1] = 0;
  v11 = &v4[OBJC_IVAR____TtC15RemindersUICore20TTRILabeledIconsView_ttriAccessibilityValueForSelectedItem];
  *v11 = 0;
  v11[1] = 0;
  v4[OBJC_IVAR____TtC15RemindersUICore20TTRILabeledIconsView_isDebugTitleFramesEnabled] = 0;
  v12 = &v4[OBJC_IVAR____TtC15RemindersUICore20TTRILabeledIconsView_unitTest_itemSpacing];
  *v12 = 0;
  v12[8] = 1;
  *&v4[OBJC_IVAR____TtC15RemindersUICore20TTRILabeledIconsView_cells] = MEMORY[0x277D84F90];
  *&v4[OBJC_IVAR____TtC15RemindersUICore20TTRILabeledIconsView_labelOutset] = 0;
  *&v4[OBJC_IVAR____TtC15RemindersUICore20TTRILabeledIconsView_labelMinSpacing] = 0;
  *&v4[OBJC_IVAR____TtC15RemindersUICore20TTRILabeledIconsView_titleLayoutInfos] = 0;
  v13 = &v4[OBJC_IVAR____TtC15RemindersUICore20TTRILabeledIconsView_scale];
  *v13 = nullsub_1;
  v13[1] = 0;
  if (qword_280D176B8 != -1)
  {
    swift_once();
  }

  *&v4[OBJC_IVAR____TtC15RemindersUICore20TTRILabeledIconsView_titleFont] = sub_21D900614(1);
  v19.receiver = v4;
  v19.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v19, sel_initWithFrame_, a1, a2, a3, a4);
  [v14 setAxis_];
  [v14 setDistribution_];
  [v14 setAlignment_];
  [v14 setLayoutMarginsRelativeArrangement_];
  [v14 setPreservesSuperviewLayoutMargins_];
  [v14 setInsetsLayoutMarginsFromSafeArea_];
  sub_21D3E9684();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE65630, &unk_21DC22100);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_21DC08D00;
  v16 = sub_21DBF8D4C();
  v17 = MEMORY[0x277D74DB8];
  *(v15 + 32) = v16;
  *(v15 + 40) = v17;
  sub_21DBFB5CC();

  swift_unknownObjectRelease();

  return v14;
}

void sub_21D3E9684()
{
  v1 = v0;
  v2 = sub_21D3E9C00();
  v4 = v3;
  v5 = &v1[OBJC_IVAR____TtC15RemindersUICore20TTRILabeledIconsView_scale];
  *v5 = v2;
  v5[1] = v6;

  v7 = *&v1[OBJC_IVAR____TtC15RemindersUICore20TTRILabeledIconsView_titleFont];
  v37 = OBJC_IVAR____TtC15RemindersUICore20TTRILabeledIconsView_titleFont;
  *&v1[OBJC_IVAR____TtC15RemindersUICore20TTRILabeledIconsView_titleFont] = v4;

  v8 = *v5;

  v10 = (v8)(v9, 8.0);

  *&v1[OBJC_IVAR____TtC15RemindersUICore20TTRILabeledIconsView_labelOutset] = v10;
  *&v1[OBJC_IVAR____TtC15RemindersUICore20TTRILabeledIconsView_labelMinSpacing] = 0x402C000000000000;
  v38 = v1;
  if (v1[OBJC_IVAR____TtC15RemindersUICore20TTRILabeledIconsView_unitTest_itemSpacing + 8])
  {
    v11 = *v5;

    v13 = (v11)(v12, 20.0);

    v14 = fmax(v13, 20.0);
  }

  else
  {
    v14 = *&v1[OBJC_IVAR____TtC15RemindersUICore20TTRILabeledIconsView_unitTest_itemSpacing];
  }

  [v1 setSpacing_];
  v15 = OBJC_IVAR____TtC15RemindersUICore20TTRILabeledIconsView_cells;
  swift_beginAccess();
  v16 = *&v1[v15];
  if (v16 >> 62)
  {
LABEL_21:
    v17 = sub_21DBFBD7C();
  }

  else
  {
    v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_21DBF8E0C();
  if (!v17)
  {
LABEL_18:

    sub_21D3E87FC();
    return;
  }

  v18 = 0;
  while (1)
  {
    if ((v16 & 0xC000000000000001) != 0)
    {
      v22 = MEMORY[0x223D44740](v18, v16);
    }

    else
    {
      if (v18 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_20;
      }

      v22 = *(v16 + 8 * v18 + 32);
    }

    v23 = v22;
    v24 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v25 = *&v38[v37];
    v26 = OBJC_IVAR____TtC15RemindersUICore19TTRILabeledIconCell_titleFont;
    v27 = *&v22[OBJC_IVAR____TtC15RemindersUICore19TTRILabeledIconCell_titleFont];
    *&v22[OBJC_IVAR____TtC15RemindersUICore19TTRILabeledIconCell_titleFont] = v25;
    v28 = v25;

    v29 = v23[OBJC_IVAR____TtC15RemindersUICore19TTRILabeledIconCell_isSelected];
    v30 = OBJC_IVAR____TtC15RemindersUICore19TTRILabeledIconCell_titleLabel;
    v31 = *&v23[OBJC_IVAR____TtC15RemindersUICore19TTRILabeledIconCell_titleLabel];
    v32 = objc_opt_self();
    if (v29 == 1)
    {
      break;
    }

    v19 = [v32 labelColor];
    [v31 setTextColor_];

    v20 = *&v23[v30];
    v21 = *&v23[v26];
    [v20 setFont_];
LABEL_9:

    ++v18;
    if (v24 == v17)
    {
      goto LABEL_18;
    }
  }

  v33 = [v32 whiteColor];
  [v31 setTextColor_];

  v34 = [*&v23[v26] fontDescriptor];
  v35 = [v34 fontDescriptorWithSymbolicTraits_];

  if (v35)
  {
    v36 = *&v23[v30];
    v21 = [objc_opt_self() fontWithDescriptor:v35 size:0.0];
    [v36 setFont_];

    goto LABEL_9;
  }

  __break(1u);
}

void sub_21D3E9AC4()
{
  v0 = *MEMORY[0x277D76818];
  v1 = *MEMORY[0x277D76838];
  v2 = v0;
  v3 = v1;
  v4 = v2;
  if (sub_21DBFB46C())
  {
    qword_27CE5BE88 = v3;
    unk_27CE5BE90 = v4;
  }

  else
  {
    __break(1u);
  }
}

double sub_21D3E9B5C()
{
  [v0 layoutMargins];
  v2 = v1;
  [v0 layoutMargins];
  v4 = v2 + v3;
  v5 = *(sub_21D3E8918() + 2);

  if (v5)
  {
    v6 = *(sub_21D3E8918() + 2);

    [v0 spacing];
    return v4 + v6 * 60.0 + (v6 + -1.0) * v7;
  }

  return v4;
}

double (*sub_21D3E9C00())(double a1)
{
  v1 = [v0 traitCollection];
  if (qword_27CE56718 != -1)
  {
    swift_once();
  }

  v2 = UITraitCollection.clampingContentSizeCategory(to:)(qword_27CE5BE88, unk_27CE5BE90);

  v3 = [v2 preferredContentSizeCategory];
  v4 = sub_21DBFA16C();
  v6 = v5;
  if (v4 == sub_21DBFA16C() && v6 == v7)
  {
  }

  else
  {
    v9 = sub_21DBFC64C();

    if ((v9 & 1) == 0)
    {
      v19 = sub_21DBFA16C();
      v21 = v20;
      if (v19 == sub_21DBFA16C() && v21 == v22)
      {

        v10 = 2.0;
      }

      else
      {
        v24 = sub_21DBFC64C();

        if (v24)
        {

          v10 = 2.0;
        }

        else
        {
          v25 = sub_21DBFA16C();
          v27 = v26;
          if (v25 == sub_21DBFA16C() && v27 == v28)
          {

            v10 = 1.0;
          }

          else
          {
            v29 = sub_21DBFC64C();

            if (v29)
            {
              v10 = 1.0;
            }

            else
            {
              v10 = 0.0;
            }
          }
        }
      }

      goto LABEL_11;
    }
  }

  v10 = 3.0;
LABEL_11:
  if (qword_27CE56710 != -1)
  {
    swift_once();
  }

  v11 = qword_27CE5BE80;
  v12 = objc_opt_self();
  v13 = v2;
  v14 = [v12 preferredFontDescriptorWithTextStyle:v11 compatibleWithTraitCollection:v13];
  if (!v14)
  {
    v16 = 0;
LABEL_18:
    [objc_opt_self() preferredFontForTextStyle_];
    goto LABEL_19;
  }

  v15 = v14;
  v16 = [v14 fontDescriptorWithDesign_];

  if (!v16 || ![objc_opt_self() fontWithDescriptor:v16 size:0.0])
  {
    goto LABEL_18;
  }

LABEL_19:

  v17 = pow(1.3, v10);
  *(swift_allocObject() + 16) = v17;
  return sub_21D3EB18C;
}

uint64_t sub_21D3E9FA4(char *a1)
{
  v2 = OBJC_IVAR____TtC15RemindersUICore20TTRILabeledIconsView_cells;
  swift_beginAccess();
  v3 = *&a1[v2];
  if (v3 >> 62)
  {
    v4 = sub_21DBFBD7C();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = *&a1[OBJC_IVAR____TtC15RemindersUICore20TTRILabeledIconsView_centerAdjustmentAllowed];
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  type metadata accessor for TTRILabeledIconsTitleLayout();
  inited = swift_initStackObject();
  v9 = MEMORY[0x277D84F90];
  inited[8] = v7;
  inited[9] = v9;
  inited[2] = v4;
  inited[3] = 0x404E000000000000;
  inited[4] = v5;
  inited[5] = sub_21D3EB030;
  inited[6] = v6;
  inited[7] = sub_21D3EB054;
  v10 = a1;
  sub_21D3E5B60();
  v12 = v11;
  swift_setDeallocating();

  *&v10[OBJC_IVAR____TtC15RemindersUICore20TTRILabeledIconsView_titleLayoutInfos] = v12;
  sub_21DBF8E0C();

  return v12;
}

double sub_21D3EA120(uint64_t a1)
{
  v2 = v1;
  v4 = *(sub_21D3E8918() + 2);

  v5 = 0.0;
  if ((a1 & 0x8000000000000000) == 0 && v4 > a1)
  {
    v6 = *(sub_21D3E8918() + 2);

    v7 = *&v2[OBJC_IVAR____TtC15RemindersUICore20TTRILabeledIconsView_scale];

    v5 = v7(v8, 8.0);

    v9 = sub_21D3E9B5C();
    [v2 layoutMargins];
    v11 = v10;
    [v2 layoutMargins];
    v13 = 0.0;
    if (v6 >= 2)
    {
      v13 = (v5 + v5 + v9 - v11 - v12 + v6 * -60.0 - (v5 + v5) * v6 - (v6 + -1.0) * *&v2[OBJC_IVAR____TtC15RemindersUICore20TTRILabeledIconsView_labelMinSpacing]) / (v6 + -1.0) * 0.5;
    }

    sub_21D3E8918();

    if (a1)
    {
      sub_21D3E8918();

      return v5 + v13 * *&v2[OBJC_IVAR____TtC15RemindersUICore20TTRILabeledIconsView_centerAdjustmentAllowed];
    }
  }

  return v5;
}

void sub_21D3EA2B0(unint64_t a1, double a2, double a3)
{
  v7 = OBJC_IVAR____TtC15RemindersUICore20TTRILabeledIconsView_cells;
  swift_beginAccess();
  v8 = *(v3 + v7);
  if ((v8 & 0xC000000000000001) == 0)
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) > a1)
    {
      v9 = *(v8 + 8 * a1 + 32);
      goto LABEL_5;
    }

    __break(1u);
    goto LABEL_10;
  }

  v9 = MEMORY[0x223D44740](a1);
LABEL_5:
  v10 = v9;
  swift_endAccess();
  v11 = *&v10[OBJC_IVAR____TtC15RemindersUICore19TTRILabeledIconCell_titleLabel];

  [v11 systemLayoutSizeFittingSize_];
  v12 = [v11 font];
  if (v12)
  {
    v13 = v12;
    [v12 lineHeight];

    return;
  }

LABEL_10:
  __break(1u);
}

double destroy for TTRILabeledIconsViewItem(uint64_t a1)
{
  __swift_destroy_boxed_opaque_existential_0(a1);

  return result;
}

uint64_t initializeWithCopy for TTRILabeledIconsViewItem(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  *(a1 + 24) = v4;
  (**(v4 - 8))();
  v5 = *(a2 + 40);
  v6 = *(a2 + 48);
  *(a1 + 40) = v5;
  *(a1 + 48) = v6;
  v7 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v7;
  v8 = *(a2 + 72);
  v9 = *(a2 + 80);
  *(a1 + 72) = v8;
  *(a1 + 80) = v9;
  v10 = v5;
  v11 = v6;
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  return a1;
}

uint64_t *assignWithCopy for TTRILabeledIconsViewItem(uint64_t *a1, uint64_t *a2)
{
  __swift_assign_boxed_opaque_existential_1(a1, a2);
  v4 = a1[5];
  v5 = a2[5];
  a1[5] = v5;
  v6 = v5;

  v7 = a1[6];
  v8 = a2[6];
  a1[6] = v8;
  v9 = v8;

  a1[7] = a2[7];
  a1[8] = a2[8];
  sub_21DBF8E0C();

  a1[9] = a2[9];
  a1[10] = a2[10];
  sub_21DBF8E0C();

  return a1;
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t assignWithTake for TTRILabeledIconsViewItem(uint64_t a1, uint64_t a2)
{
  __swift_destroy_boxed_opaque_existential_0(a1);
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  v5 = *(a1 + 40);
  v6 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v6;

  v7 = *(a1 + 48);
  *(a1 + 48) = *(a2 + 48);

  v8 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v8;

  v9 = *(a2 + 80);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = v9;

  return a1;
}

uint64_t getEnumTagSinglePayload for TTRILabeledIconsViewItem(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRILabeledIconsViewItem(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21D3EA7B0(unint64_t a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v3 = result;
  result = sub_21D3E8918();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (*(result + 16) <= a1)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  sub_21D1D9CF0(result + 88 * a1 + 32, v9);

  sub_21D181CE0(v9, v8);
  sub_21D1D9D4C(v9);
  sub_21DBFBE1C();
  if (swift_dynamicCast())
  {
    v4 = v3 + qword_27CE5BE50;
    swift_beginAccess();
    v5 = *v4;
    if (!*v4)
    {
      sub_21D181D3C(v8);
      return swift_unknownObjectRelease();
    }

    v6 = *(v4 + 8);

    v5(&v7);
    sub_21D0D0E88(v5, v6);
  }

  swift_unknownObjectRelease();
  return sub_21D181D3C(v8);
}

id sub_21D3EA8F8(void *a1, void *a2, uint64_t a3, void *a4, _BYTE *a5, double a6)
{
  swift_getObjectType();
  v12 = &a5[OBJC_IVAR____TtC15RemindersUICore19TTRILabeledIconCell_cellDelegate];
  *&a5[OBJC_IVAR____TtC15RemindersUICore19TTRILabeledIconCell_cellDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  a5[OBJC_IVAR____TtC15RemindersUICore19TTRILabeledIconCell_isSelected] = 0;
  a5[OBJC_IVAR____TtC15RemindersUICore19TTRILabeledIconCell_isDebugTitleFramesEnabled] = 0;
  *&a5[OBJC_IVAR____TtC15RemindersUICore19TTRILabeledIconCell_selectionView] = 0;
  v13 = &a5[OBJC_IVAR____TtC15RemindersUICore19TTRILabeledIconCell_debugViews];
  type metadata accessor for TTRILabeledIconCellButton();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *v13 = 0;
  v13[1] = 0;
  v15 = [ObjCClassFromMetadata buttonWithType_];
  v16 = a2[5];
  v17 = v15;
  [v17 setImage:v16 forState:0];
  v18 = v17;
  [v18 setClipsToBounds_];
  v19 = [v18 layer];
  [v19 setCornerRadius_];

  v20 = [objc_opt_self() whiteColor];
  [v18 setTintColor_];

  [v18 setCustomAlignmentRectInsets_];
  v21 = v18;
  v22 = sub_21DBFA12C();
  [v21 setAccessibilityLabel_];

  v23 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v23 setAdjustsFontForContentSizeCategory_];
  [v23 setTextAlignment_];
  [v23 setNumberOfLines_];
  [v23 setLineBreakMode_];
  v24 = sub_21DBFA12C();
  [v23 setText_];

  [v23 setIsAccessibilityElement_];
  sub_21D1D9CF0(a2, &a5[OBJC_IVAR____TtC15RemindersUICore19TTRILabeledIconCell_item]);
  *&a5[OBJC_IVAR____TtC15RemindersUICore19TTRILabeledIconCell_button] = v21;
  *&a5[OBJC_IVAR____TtC15RemindersUICore19TTRILabeledIconCell_titleLabel] = v23;
  *&a5[OBJC_IVAR____TtC15RemindersUICore19TTRILabeledIconCell_index] = a3;
  *&a5[OBJC_IVAR____TtC15RemindersUICore19TTRILabeledIconCell_itemWidth] = a6;
  *(v12 + 1) = &off_282EB7220;
  swift_unknownObjectWeakAssign();
  *&a5[OBJC_IVAR____TtC15RemindersUICore19TTRILabeledIconCell_titleFont] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_21DC0AA00;
  *(v25 + 32) = v21;
  *(v25 + 40) = v23;
  sub_21D0D8CF0(0, &qword_280D176A0, 0x277D75D18);
  v26 = v23;
  v27 = a4;
  v28 = sub_21DBFA5DC();

  v34.receiver = a5;
  v34.super_class = type metadata accessor for TTRILabeledIconCell();
  v29 = objc_msgSendSuper2(&v34, sel_initWithArrangedSubviews_, v28);

  v30 = v29;
  [v21 addTarget:v30 action:sel_buttonAction_ forControlEvents:0x2000];
  v31 = [objc_allocWithZone(MEMORY[0x277D75B80]) initWithTarget:v30 action:sel_buttonAction_];

  [v26 addGestureRecognizer_];
  [v26 setUserInteractionEnabled_];
  v32 = v30;
  [v32 setDelegate_];
  [v32 setAlignment_];
  [v32 setDistribution_];
  [v32 setAxis_];
  [v32 setSpacing_];
  if (qword_27CE56720 != -1)
  {
    swift_once();
  }

  [v32 setLayoutMargins_];
  [v32 setLayoutMarginsRelativeArrangement_];
  [v32 setPreservesSuperviewLayoutMargins_];

  sub_21D3EB774();
  sub_21D3EB90C();
  sub_21D0D8CF0(0, &unk_27CE5BF10, 0x277D75C80);
  sub_21DBFB25C();
  sub_21DBFB5CC();

  swift_unknownObjectRelease();

  sub_21D1D9D4C(a2);
  return v32;
}

uint64_t sub_21D3EAECC(void *a1, void *a2)
{
  if ((MEMORY[0x223D445C0]() & 1) == 0)
  {
    return 0;
  }

  v4 = a1[5];
  v5 = a2[5];
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    sub_21D0D8CF0(0, &qword_280D17688, 0x277D755B8);
    v6 = v5;
    v7 = v4;
    v8 = sub_21DBFB63C();

    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v9 = a1[6];
  v10 = a2[6];
  if (v9)
  {
    if (v10)
    {
      sub_21D0D8CF0(0, &qword_280D1B8F0, 0x277D75348);
      v11 = v10;
      v12 = v9;
      v13 = sub_21DBFB63C();

      if (v13)
      {
        goto LABEL_12;
      }
    }

    return 0;
  }

  if (v10)
  {
    return 0;
  }

LABEL_12:
  if ((a1[7] != a2[7] || a1[8] != a2[8]) && (sub_21DBFC64C() & 1) == 0)
  {
    return 0;
  }

  if (a1[9] == a2[9] && a1[10] == a2[10])
  {
    return 1;
  }

  return sub_21DBFC64C();
}

void sub_21D3EB07C()
{
  *(v0 + OBJC_IVAR____TtC15RemindersUICore20TTRILabeledIconsView_viewDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC15RemindersUICore20TTRILabeledIconsView_itemWidth) = 0x404E000000000000;
  *(v0 + OBJC_IVAR____TtC15RemindersUICore20TTRILabeledIconsView_centerAdjustmentAllowed) = 0x3FF0000000000000;
  v1 = (v0 + OBJC_IVAR____TtC15RemindersUICore20TTRILabeledIconsView_ttriAccessibilityHintForSelectedItem);
  *v1 = 0;
  v1[1] = 0;
  v2 = (v0 + OBJC_IVAR____TtC15RemindersUICore20TTRILabeledIconsView_ttriAccessibilityValueForSelectedItem);
  *v2 = 0;
  v2[1] = 0;
  *(v0 + OBJC_IVAR____TtC15RemindersUICore20TTRILabeledIconsView_isDebugTitleFramesEnabled) = 0;
  v3 = v0 + OBJC_IVAR____TtC15RemindersUICore20TTRILabeledIconsView_unitTest_itemSpacing;
  *v3 = 0;
  *(v3 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC15RemindersUICore20TTRILabeledIconsView_cells) = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC15RemindersUICore20TTRILabeledIconsView_labelOutset) = 0;
  *(v0 + OBJC_IVAR____TtC15RemindersUICore20TTRILabeledIconsView_labelMinSpacing) = 0;
  *(v0 + OBJC_IVAR____TtC15RemindersUICore20TTRILabeledIconsView_titleLayoutInfos) = 0;
  sub_21DBFC31C();
  __break(1u);
}

void sub_21D3EB248(uint64_t a1)
{
  v9.receiver = v1;
  v9.super_class = type metadata accessor for TTRILabeledIconCell();
  objc_msgSendSuper2(&v9, sel_tintColorDidChange);
  v2 = *&v1[OBJC_IVAR____TtC15RemindersUICore19TTRILabeledIconCell_selectionView];
  if (v2)
  {
    v3 = objc_opt_self();
    v4 = v2;
    v5 = [v3 tintColor];
    v6 = [v1 traitCollection];
    if ([v6 accessibilityContrast] == 1)
    {
      v7 = sub_21DBFB24C();

      v6 = v7;
    }

    v8 = [v5 resolvedColorWithTraitCollection_];

    [v4 setBackgroundColor_];
  }
}

double sub_21D3EB3B4()
{
  result = -4.0;
  xmmword_27CE5BF20 = xmmword_21DC15480;
  *&qword_27CE5BF30 = xmmword_21DC15480;
  return result;
}

void sub_21D3EB46C()
{
  v1 = *&v0[OBJC_IVAR____TtC15RemindersUICore19TTRILabeledIconCell_selectionView];
  if (v0[OBJC_IVAR____TtC15RemindersUICore19TTRILabeledIconCell_isSelected] == 1)
  {
    if (v1)
    {
      v11 = *&v0[OBJC_IVAR____TtC15RemindersUICore19TTRILabeledIconCell_selectionView];
    }

    else
    {
      v11 = sub_21D3EB5BC(v0);
      v1 = 0;
    }

    v6 = v1;
    [v11 setHidden_];
    sub_21D3EB774();
    v7 = *&v0[OBJC_IVAR____TtC15RemindersUICore19TTRILabeledIconCell_button];
    v8 = *MEMORY[0x277D76598];
    v9 = [v7 accessibilityTraits];
    if ((v8 & ~v9) != 0)
    {
      v10 = v8;
    }

    else
    {
      v10 = 0;
    }

    [v7 setAccessibilityTraits_];
  }

  else
  {
    if (v1)
    {
      [v1 setHidden_];
    }

    sub_21D3EB774();
    v2 = *&v0[OBJC_IVAR____TtC15RemindersUICore19TTRILabeledIconCell_button];
    v3 = *MEMORY[0x277D76598];
    v4 = [v2 accessibilityTraits];
    v5 = -1;
    if ((v4 & v3) != 0)
    {
      v5 = ~v3;
    }

    [v2 setAccessibilityTraits_];
  }
}

id sub_21D3EB5BC(char *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v3 = [objc_opt_self() tintColor];
  v4 = [a1 traitCollection];
  if ([v4 accessibilityContrast] == 1)
  {
    v5 = sub_21DBFB24C();

    v4 = v5;
  }

  v6 = [v3 resolvedColorWithTraitCollection_];

  [v2 setBackgroundColor_];
  v7 = [v2 layer];
  [v7 setCornerRadius_];

  v8 = [v2 layer];
  [v8 setCornerCurve_];

  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  [a1 insertSubview:v2 atIndex:0];
  v9 = *&a1[OBJC_IVAR____TtC15RemindersUICore19TTRILabeledIconCell_selectionView];
  *&a1[OBJC_IVAR____TtC15RemindersUICore19TTRILabeledIconCell_selectionView] = v2;
  v10 = v2;

  return v10;
}

void sub_21D3EB774()
{
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore19TTRILabeledIconCell_isSelected);
  v2 = *(v0 + OBJC_IVAR____TtC15RemindersUICore19TTRILabeledIconCell_titleLabel);
  v3 = objc_opt_self();
  if (v1 == 1)
  {
    v4 = [v3 whiteColor];
    [v2 setTextColor_];

    v5 = [*(v0 + OBJC_IVAR____TtC15RemindersUICore19TTRILabeledIconCell_titleFont) fontDescriptor];
    v6 = [v5 fontDescriptorWithSymbolicTraits_];

    if (v6)
    {
      v9 = [objc_opt_self() fontWithDescriptor:v6 size:0.0];
      [v2 setFont_];
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v7 = [v3 labelColor];
    [v2 setTextColor_];

    v8 = *(v0 + OBJC_IVAR____TtC15RemindersUICore19TTRILabeledIconCell_titleFont);

    [v2 setFont_];
  }
}

void sub_21D3EB90C()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC15RemindersUICore19TTRILabeledIconCell_item + 48];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC15RemindersUICore19TTRILabeledIconCell_item + 48];
  }

  else
  {
    v3 = [objc_opt_self() redColor];
    v2 = 0;
  }

  v4 = v2;
  v5 = [v0 traitCollection];
  if ([v5 accessibilityContrast] == 1)
  {
    v6 = sub_21DBFB24C();

    v5 = v6;
  }

  v7 = [v3 resolvedColorWithTraitCollection_];

  v8 = *&v1[OBJC_IVAR____TtC15RemindersUICore19TTRILabeledIconCell_button];
  if (qword_27CE56960 != -1)
  {
    swift_once();
  }

  v9 = [qword_27CE5CEB0 imageWithTintColor:v7 renderingMode:1];
  [v8 setBackgroundImage:v9 forState:0];
}

id sub_21D3EBA9C(char *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v3 = [v2 layer];
  v4 = objc_opt_self();
  v5 = [v4 orangeColor];
  v6 = [v5 colorWithAlphaComponent_];

  v7 = [v6 CGColor];
  [v3 setBorderColor_];

  v8 = [v2 layer];
  [v8 setBorderWidth_];

  v9 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v10 = [v9 layer];
  v11 = [v4 greenColor];
  v12 = [v11 colorWithAlphaComponent_];

  v13 = [v12 CGColor];
  [v10 setBorderColor_];

  v14 = [v9 layer];
  [v14 setBorderWidth_];

  [a1 insertSubview:v2 atIndex:0];
  [a1 insertSubview:v9 atIndex:1];
  v15 = &a1[OBJC_IVAR____TtC15RemindersUICore19TTRILabeledIconCell_debugViews];
  v16 = *&a1[OBJC_IVAR____TtC15RemindersUICore19TTRILabeledIconCell_debugViews];
  v17 = *(v15 + 1);
  *v15 = v9;
  *(v15 + 1) = v2;
  v18 = v9;
  v19 = v2;
  sub_21D0D9834(v16, v17);
  return v9;
}

id sub_21D3EC0BC(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_21D3EC11C(char *a1)
{
  v2 = *&a1[OBJC_IVAR____TtC15RemindersUICore19TTRILabeledIconCell_selectionView];
  if (v2)
  {
    v3 = objc_opt_self();
    v4 = v2;
    v5 = [v3 tintColor];
    v6 = [a1 traitCollection];
    if ([v6 accessibilityContrast] == 1)
    {
      v7 = sub_21DBFB24C();

      v6 = v7;
    }

    v8 = [v5 resolvedColorWithTraitCollection_];

    [v4 setBackgroundColor_];
  }

  sub_21D3EB90C();
}

void sub_21D3EC234(void *a1)
{
  if (*(v1 + OBJC_IVAR____TtC15RemindersUICore19TTRILabeledIconCell_titleLabel) == a1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      return;
    }

    v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore19TTRILabeledIconCell_index);
    if (*&Strong[OBJC_IVAR____TtC15RemindersUICore20TTRILabeledIconsView_titleLayoutInfos])
    {
      v4 = *&Strong[OBJC_IVAR____TtC15RemindersUICore20TTRILabeledIconsView_titleLayoutInfos];
      if ((v3 & 0x8000000000000000) == 0)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v4 = sub_21D3E9FA4(Strong);
      if ((v3 & 0x8000000000000000) == 0)
      {
LABEL_7:
        if (v3 < *(v4 + 16))
        {
          sub_21DBF8E0C();
          swift_unknownObjectRelease();

          return;
        }

        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
    return;
  }

  if (*(v1 + OBJC_IVAR____TtC15RemindersUICore19TTRILabeledIconCell_button) != a1)
  {
    [a1 systemLayoutSizeFittingSize_];
  }
}

void sub_21D3EC35C(uint64_t a1, double a2, double a3, CGFloat a4, double a5)
{
  if (*&v5[OBJC_IVAR____TtC15RemindersUICore19TTRILabeledIconCell_titleLabel] != a1)
  {
    return;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v10 = *&v5[OBJC_IVAR____TtC15RemindersUICore19TTRILabeledIconCell_index];
  if (*&Strong[OBJC_IVAR____TtC15RemindersUICore20TTRILabeledIconsView_titleLayoutInfos])
  {
    v11 = *&Strong[OBJC_IVAR____TtC15RemindersUICore20TTRILabeledIconsView_titleLayoutInfos];
    if ((v10 & 0x8000000000000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v11 = sub_21D3E9FA4(Strong);
  if ((v10 & 0x8000000000000000) != 0)
  {
    goto LABEL_23;
  }

LABEL_5:
  if (v10 >= *(v11 + 16))
  {
LABEL_24:
    __break(1u);
    return;
  }

  v12 = (v11 + 48 * v10);
  v13 = v12[4];
  v14 = v12[5];
  v15 = v12[6];
  v16 = v12[7];
  v17 = v12[8];
  sub_21DBF8E0C();

  v18 = [v5 effectiveUserInterfaceLayoutDirection];
  v19 = v18;
  v43 = v14;
  if (v18 == 1)
  {
    v20 = v14 + v16;
  }

  else
  {
    v20 = v13 + v15;
  }

  v21 = a4;
  v44 = -v20;
  v22 = UIEdgeInsetsInsetRect(a2, a3, a4, a5, 0.0, -v20);
  v24 = v23;
  rect = v23;
  v47 = v25;
  v48 = v26;
  v50.origin.x = a2;
  v50.origin.y = a3;
  v50.size.width = v21;
  v50.size.height = a5;
  v27 = CGRectGetMidX(v50) + v17 * -0.5;
  v51.origin.x = a2;
  v51.origin.y = a3;
  v45 = v21;
  v51.size.width = v21;
  v51.size.height = a5;
  MinY = CGRectGetMinY(v51);
  v52.origin.x = v27;
  v52.origin.y = MinY;
  v52.size.width = v17;
  v52.size.height = a5;
  MinX = CGRectGetMinX(v52);
  v53.origin.x = v22;
  v53.origin.y = v24;
  v53.size.width = v48;
  v53.size.height = v47;
  v30 = CGRectGetMinX(v53);
  if (MinX <= v30)
  {
    MinX = v30;
  }

  v54.origin.x = MinX;
  v54.origin.y = MinY;
  v54.size.width = v17;
  v54.size.height = a5;
  CGRectGetMinX(v54);
  v55.origin.x = v22;
  v55.origin.y = rect;
  v55.size.width = v48;
  v55.size.height = v47;
  CGRectGetMaxX(v55);
  v56.origin.x = MinX;
  v56.origin.y = MinY;
  v56.size.width = v17;
  v56.size.height = a5;
  CGRectGetWidth(v56);
  if (v5[OBJC_IVAR____TtC15RemindersUICore19TTRILabeledIconCell_isDebugTitleFramesEnabled] != 1)
  {
    goto LABEL_20;
  }

  v31 = *&v5[OBJC_IVAR____TtC15RemindersUICore19TTRILabeledIconCell_debugViews];
  v32 = *&v5[OBJC_IVAR____TtC15RemindersUICore19TTRILabeledIconCell_debugViews + 8];
  v33 = v31;
  v34 = v32;
  if (!v31)
  {
    v35 = *&v5[OBJC_IVAR____TtC15RemindersUICore19TTRILabeledIconCell_debugViews + 8];
    v36 = sub_21D3EBA9C(v5);
    if (v36)
    {
      v33 = v36;
      v34 = v37;
      v31 = 0;
      v32 = v35;
      goto LABEL_15;
    }

LABEL_20:
    swift_unknownObjectRelease();
    return;
  }

LABEL_15:
  sub_21D10EC0C(v31, v32);
  v57.origin.x = a2;
  v57.origin.y = a3;
  v57.size.width = v45;
  v57.size.height = a5;
  v58 = CGRectInset(v57, 0.0, 2.0);
  v59 = CGRectOffset(v58, 0.0, (2 * (v10 & 1)));
  x = v59.origin.x;
  y = v59.origin.y;
  width = v59.size.width;
  height = v59.size.height;
  if (v19 == 1)
  {
    v42 = v43;
  }

  else
  {
    v42 = v13;
  }

  [v33 setFrame_];
  v60.origin.x = x;
  v60.origin.y = y;
  v60.size.width = width;
  v60.size.height = height;
  v61 = CGRectInset(v60, 0.0, 2.0);
  [v34 setFrame_];
  swift_unknownObjectRelease();
}

void sub_21D3EC6F4()
{
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore19TTRILabeledIconCell_selectionView);
  if (v1)
  {
    v10 = v1;
    if (([v10 isHidden] & 1) == 0)
    {
      [*(v0 + OBJC_IVAR____TtC15RemindersUICore19TTRILabeledIconCell_titleLabel) frame];
      if (qword_27CE56720 != -1)
      {
        v9 = v2;
        v7 = v3;
        v8 = v4;
        v6 = v5;
        swift_once();
        v5 = v6;
        v3 = v7;
        v4 = v8;
        v2 = v9;
      }

      [v10 setFrame_];
    }
  }
}

uint64_t sub_21D3EC7F8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 25))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  if (*(a2 + 25))
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  return sub_21D3EDF68(*a1, *(a1 + 8), *(a1 + 16), v2 | *(a1 + 24), *a2, *(a2 + 8), *(a2 + 16), v3 | *(a2 + 24));
}

id sub_21D3EC840(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4)
{
  v9 = (v4 + qword_27CE5BF98);
  *v9 = 0;
  v9[1] = 0;
  v10 = (v4 + qword_27CE5BFA0);
  *v10 = 0;
  v10[1] = 0;
  v11 = MEMORY[0x277D85000];
  *(v4 + *((*MEMORY[0x277D85000] & *v4) + 0x68)) = 0;
  *(v4 + *((*v11 & *v4) + 0x70) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v4 + *((*v11 & *v4) + 0x90)) = 0;
  v12 = v4 + *((*v11 & *v4) + 0x78);
  *v12 = a1;
  *(v12 + 1) = a2;
  *(v12 + 2) = a3;
  v12[24] = a4;
  v12[25] = HIBYTE(a4) & 1;
  *(v4 + *((*v11 & *v4) + 0x80)) = 0;
  v13 = (v4 + *((*v11 & *v4) + 0x88));
  *v13 = 0x436B6E694C707041;
  v13[1] = 0xEB000000006C6C65;
  v15.receiver = v4;
  v15.super_class = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5BFF0, &qword_21DC15628);
  return objc_msgSendSuper2(&v15, sel_init);
}

uint64_t sub_21D3EC9D4(uint64_t a1)
{
  v5[2] = a1;
  v1 = *(a1 + qword_27CE5AF20);
  v2 = swift_allocObject();
  *(v2 + 16) = sub_21D3EE09C;
  *(v2 + 24) = v5;
  aBlock[4] = sub_21D0E6070;
  aBlock[5] = v2;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_24;
  v3 = _Block_copy(aBlock);

  [v1 performBatchUpdates_];
  _Block_release(v3);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }

  return result;
}

void sub_21D3ECB0C(char *a1, void *a2)
{
  v3 = a2 + *((*MEMORY[0x277D85000] & *a2) + 0x78);
  swift_beginAccess();
  v4 = *&a1[qword_27CE65590];
  if (*(v3 + 2))
  {
    v5 = v4;
    sub_21DBF8E0C();
    v6 = sub_21DBFA12C();
  }

  else
  {
    v7 = v4;
    v6 = 0;
  }

  [v4 setText_];

  [*&a1[qword_27CE5BFB8] setImage_];
  if (*(v3 + 2))
  {
    sub_21DBF8E0C();
    v8 = sub_21DBFA12C();
  }

  else
  {
    v8 = 0;
  }

  [a1 setAccessibilityLabel_];

  [*&a1[qword_27CE5BFC0] setHidden_];
  v9 = v3[24];
  v10 = a1[qword_27CE5BFD0];
  a1[qword_27CE5BFD0] = v9;
  if (v9 != v10)
  {
    sub_21D3ECF80();
  }
}

id sub_21D3ECC90(uint64_t a1)
{
  [*(a1 + qword_27CE5BFC8) removeTarget:v1 action:0 forControlEvents:0x2000];
  v3 = *(a1 + qword_27CE5BFC0);

  return [v3 removeTarget:v1 action:0 forControlEvents:0x2000];
}

id sub_21D3ECD08(uint64_t a1)
{
  [*(a1 + qword_27CE5BFC8) addTarget:v1 action:sel_openAction_ forControlEvents:0x2000];
  v3 = *(a1 + qword_27CE5BFC0);

  return [v3 addTarget:v1 action:sel_contactAction_ forControlEvents:0x2000];
}

void sub_21D3ECDA0(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_unknownObjectRetain();
  v6 = a1;
  sub_21DBFBC1C();
  swift_unknownObjectRelease();
  v7 = &v6[*a4];
  v8 = *v7;
  if (*v7)
  {
    v9 = *(v7 + 1);

    v8(v10);
    sub_21D0D0E88(v8, v9);

    __swift_destroy_boxed_opaque_existential_0(v11);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v11);
  }
}

uint64_t sub_21D3ECE48()
{
  sub_21D0D0E88(*(v0 + qword_27CE5BF98), *(v0 + qword_27CE5BF98 + 8));
  v1 = *(v0 + qword_27CE5BFA0);
  v2 = *(v0 + qword_27CE5BFA0 + 8);

  return sub_21D0D0E88(v1, v2);
}

uint64_t sub_21D3ECE90(uint64_t a1)
{
  sub_21D0D0E88(*(a1 + qword_27CE5BF98), *(a1 + qword_27CE5BF98 + 8));
  v2 = *(a1 + qword_27CE5BFA0);
  v3 = *(a1 + qword_27CE5BFA0 + 8);

  return sub_21D0D0E88(v2, v3);
}

void sub_21D3ECF80()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F2F0, qword_21DC0FEA0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v10 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = &v10 - v4;
  v6 = sub_21DBFA12C();
  v7 = [objc_opt_self() _systemImageNamed_];

  sub_21DBFB97C();
  v8 = sub_21DBFB95C();
  if ((*(*(v8 - 8) + 48))(v5, 1, v8))
  {
    sub_21D0D3954(v5, v2, &unk_27CE5F2F0, qword_21DC0FEA0);
    sub_21DBFB98C();

    sub_21D0CF7E0(v5, &unk_27CE5F2F0, qword_21DC0FEA0);
  }

  else
  {
    v9 = v7;
    sub_21DBFB8FC();
    sub_21DBFB98C();
  }
}

char *sub_21D3ED170(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v86 = a3;
  v83[1] = a2;
  v89 = a1;
  ObjectType = swift_getObjectType();
  v5 = sub_21DBFB8DC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v83 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21DBFB7EC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21DBFB95C();
  v93 = *(v13 - 8);
  v94 = v13;
  MEMORY[0x28223BE20](v13);
  v92 = v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = v83 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = v83 - v19;
  v88 = v4;
  v4[qword_27CE5BFD0] = 0;
  v91 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  [v91 setContentMode_];
  sub_21DBFB8EC();
  (*(v10 + 104))(v12, *MEMORY[0x277D74FD8], v9);
  sub_21DBFB7FC();
  (*(v6 + 104))(v8, *MEMORY[0x277D75030], v5);
  sub_21DBFB7DC();
  v21 = *MEMORY[0x277D76A08];
  v22 = objc_opt_self();
  v23 = [v22 configurationWithTextStyle:v21 scale:2];
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
  v24 = swift_allocObject();
  v84 = xmmword_21DC0AA00;
  *(v24 + 16) = xmmword_21DC0AA00;
  v25 = objc_opt_self();
  *(v24 + 32) = [v25 labelColor];
  *(v24 + 40) = [v25 clearColor];
  sub_21D0D8CF0(0, &qword_280D1B8F0, 0x277D75348);
  v26 = sub_21DBFA5DC();

  v27 = [v22 configurationWithPaletteColors_];

  v28 = [v23 configurationByApplyingConfiguration_];
  v29 = v94;
  sub_21DBFB78C();
  sub_21DBFB82C();
  sub_21D0D8CF0(0, &qword_280D0C1C0, 0x277D75220);
  v30 = *(v93 + 16);
  v30(v17, v20, v29);
  v31 = v17;
  v32 = sub_21DBFB96C();
  v33 = qword_27CE57520;
  v34 = v32;
  if (v33 != -1)
  {
    swift_once();
  }

  v35 = sub_21DBFA12C();
  [v34 setAccessibilityLabel_];

  v36 = v92;
  v90 = v20;
  v30(v92, v20, v29);
  v37 = sub_21DBFA12C();
  v38 = [objc_opt_self() _systemImageNamed_];

  sub_21DBFB8FC();
  v30(v31, v36, v94);
  v39 = sub_21DBFB96C();
  v40 = qword_27CE57528;
  v41 = v39;
  if (v40 != -1)
  {
    swift_once();
  }

  v42 = sub_21DBFA12C();
  [v41 setAccessibilityLabel_];

  v43 = v91;
  v44 = v88;
  *&v88[qword_27CE5BFB8] = v91;
  *&v44[qword_27CE5BFC8] = v34;
  *&v44[qword_27CE5BFC0] = v41;
  if (v86)
  {
    v45 = v43;
    v46 = v34;
    v47 = v41;
    v48 = sub_21DBFA12C();
  }

  else
  {
    v49 = v43;
    v50 = v34;
    v51 = v41;
    v48 = 0;
  }

  v97.receiver = v44;
  v97.super_class = ObjectType;
  v52 = objc_msgSendSuper2(&v97, sel_initWithStyle_reuseIdentifier_, v89, v48);

  v53 = swift_allocObject();
  *(v53 + 16) = v84;
  *(v53 + 32) = v41;
  *(v53 + 40) = v34;
  sub_21D0D8CF0(0, &qword_280D176A0, 0x277D75D18);
  v54 = v52;
  v89 = v34;
  v88 = v41;
  v55 = v54;
  v56 = sub_21DBFA5DC();

  v57 = [objc_opt_self() containerStackViewWithAxis:0 arrangedSubviews:v56];

  [v57 setAlignment_];
  [v57 setSpacing_];
  v58 = &v55[qword_27CE65610];
  swift_beginAccess();
  v60 = *v58;
  v59 = *(v58 + 1);
  v62 = *(v58 + 2);
  v61 = *(v58 + 3);
  v63 = *(v58 + 4);
  *v58 = v57;
  *(v58 + 8) = 0u;
  *(v58 + 24) = 0u;
  v64 = v58[40];
  v58[40] = 1;
  v65 = v57;
  sub_21D361B20(v60, v59, v62, v61, v63, v64);
  sub_21D361BB4(v60, v59, v62, v61, v63, v64);
  *&v103 = v60;
  *(&v103 + 1) = v59;
  *&v104 = v62;
  *(&v104 + 1) = v61;
  *&v105 = v63;
  BYTE8(v105) = v64;
  sub_21DA7F6B4(&v103);
  sub_21D361BB4(v60, v59, v62, v61, v63, v64);
  LOBYTE(v103) = 0;
  LOBYTE(v98) = 1;
  v66 = &v55[qword_27CE655A0];
  swift_beginAccess();
  v98 = *v66;
  v67 = *(v66 + 1);
  v68 = *(v66 + 2);
  v69 = *(v66 + 3);
  v102 = v66[64];
  v100 = v68;
  v101 = v69;
  v99 = v67;
  v103 = *v66;
  v70 = *(v66 + 1);
  v71 = *(v66 + 2);
  v72 = *(v66 + 3);
  v107 = v66[64];
  v105 = v71;
  v106 = v72;
  v104 = v70;
  v73 = v91;
  *v66 = v91;
  __asm { FMOV            V0.2D, #31.0 }

  *(v66 + 8) = _Q0;
  *(v66 + 3) = 0;
  *(v66 + 2) = 0u;
  *(v66 + 3) = 0u;
  v66[64] = 65;
  v79 = v55;
  sub_21D0D3954(&v98, v95, &unk_27CE5EA00, &unk_21DC0A7C0);
  sub_21D0CF7E0(&v103, &unk_27CE5EA00, &unk_21DC0A7C0);
  v95[2] = v100;
  v95[3] = v101;
  v96 = v102;
  v95[0] = v98;
  v95[1] = v99;
  sub_21DA7EF48(v95);

  sub_21D0CF7E0(&v98, &unk_27CE5EA00, &unk_21DC0A7C0);
  [v79 setIsAccessibilityElement_];

  sub_21D3ECF80();
  v80 = *(v93 + 8);
  v81 = v94;
  v80(v92, v94);
  v80(v90, v81);
  return v79;
}

char *sub_21D3EDADC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (a4)
  {
    a4 = sub_21DBFA16C();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return sub_21D3ED170(a3, a4, v6);
}

void sub_21D3EDB28(uint64_t a1)
{
  *(a1 + qword_27CE5BFD0) = 0;
  sub_21DBFC31C();
  __break(1u);
}

void sub_21D3EDBEC()
{
  v1 = *(v0 + qword_27CE5BFC8);
}

void sub_21D3EDC3C(uint64_t a1)
{
  v2 = *(a1 + qword_27CE5BFC8);
}

uint64_t initializeWithCopy for TTRIAppLinkCellState(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  v5 = v3;
  sub_21DBF8E0C();
  return a1;
}

uint64_t assignWithCopy for TTRIAppLinkCellState(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  *a1 = *a2;
  v6 = v5;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  sub_21DBF8E0C();

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 25) = *(a2 + 25);
  return a1;
}

__n128 __swift_memcpy26_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 10) = *(a2 + 10);
  *a1 = result;
  return result;
}

uint64_t assignWithTake for TTRIAppLinkCellState(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;

  v5 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v5;

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 25) = *(a2 + 25);
  return a1;
}

uint64_t getEnumTagSinglePayload for TTRIAppLinkCellState(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 26))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRIAppLinkCellState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 26) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 26) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_21D3EDF14()
{
  result = qword_27CE5BFE8;
  if (!qword_27CE5BFE8)
  {
    result = swift_getWitnessTable(byte_21DC15600, &type metadata for TTRIAppLinkCellState.OpenButtonImage, v0, v1);
    atomic_store(result, &qword_27CE5BFE8);
  }

  return result;
}

uint64_t sub_21D3EDF68(void *a1, uint64_t a2, uint64_t a3, __int16 a4, void *a5, uint64_t a6, uint64_t a7, __int16 a8)
{
  if (a1)
  {
    if (!a5)
    {
      return 0;
    }

    sub_21D0D8CF0(0, &qword_280D17688, 0x277D755B8);
    v16 = a5;
    v17 = a1;
    v18 = sub_21DBFB63C();

    if ((v18 & 1) == 0)
    {
      return 0;
    }
  }

  else if (a5)
  {
    return 0;
  }

  if (!a3)
  {
    result = 0;
    if (a7)
    {
      return result;
    }

    goto LABEL_16;
  }

  if (!a7)
  {
    return 0;
  }

  if (a2 == a6 && a3 == a7)
  {
    if (a8 != a4)
    {
      return 0;
    }

    return ((a8 & 0x100) == 0) ^ ((a4 & 0x100) >> 8);
  }

  v20 = sub_21DBFC64C();
  result = 0;
  if (v20)
  {
LABEL_16:
    if (a8 == a4)
    {
      return ((a8 & 0x100) == 0) ^ ((a4 & 0x100) >> 8);
    }
  }

  return result;
}

id TTRILocationQuickPickersTableCell.__allocating_init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a3)
  {
    v6 = sub_21DBFA12C();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithStyle:a1 reuseIdentifier:v6];

  return v7;
}

id TTRILocationQuickPickersTableCell.init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v8 = [objc_allocWithZone(type metadata accessor for TTRILabeledIconsView()) initWithFrame_];
  [v8 setLayoutMargins_];
  [v8 setEdgesPreservingSuperviewLayoutMargins_];
  *&v3[OBJC_IVAR____TtC15RemindersUICore33TTRILocationQuickPickersTableCell_labeledIconsView] = v8;
  v9 = [objc_allocWithZone(MEMORY[0x277CEC648]) initWithDocumentView_];
  [v9 setHorizontalAlignment_];
  [v9 setVerticalAlignment_];
  [v9 setCanScrollDocumentViewVertically_];
  [v9 setCanScrollDocumentViewHorizontally_];
  v10 = v9;
  [v10 setContentInsetAdjustmentBehavior_];
  v11 = v10;
  [v11 setPreservesSuperviewLayoutMargins_];
  v12 = *MEMORY[0x277D768C8];
  v13 = *(MEMORY[0x277D768C8] + 8);
  v14 = *(MEMORY[0x277D768C8] + 16);
  v15 = *(MEMORY[0x277D768C8] + 24);
  [v11 setContentInset_];

  *&v4[OBJC_IVAR____TtC15RemindersUICore33TTRILocationQuickPickersTableCell_scrollView] = v11;
  v16 = v11;
  if (a3)
  {
    v17 = sub_21DBFA12C();
  }

  else
  {
    v17 = 0;
  }

  v24.receiver = v4;
  v24.super_class = ObjectType;
  v18 = objc_msgSendSuper2(&v24, sel_initWithStyle_reuseIdentifier_, a1, v17);

  v19 = v18;
  v20 = [v19 containerView];
  [v20 setLayoutMarginsRelativeArrangement_];
  [v20 setPreservesSuperviewLayoutMargins_];
  [v20 setHorizontalAlignment_];
  [v20 setVerticalAlignment_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_21DC09CF0;
  *(v21 + 32) = v11;
  sub_21D0D8CF0(0, &qword_280D176A0, 0x277D75D18);
  v22 = sub_21DBFA5DC();

  [v20 setArrangedSubviews_];

  [v19 setSeparatorInset_];
  return v19;
}

id TTRILocationQuickPickersTableCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id TTRILocationQuickPickersTableCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t TTRTreeStorageWithFlattenedChildren.__allocating_init(upstreamTree:itemIDsWithFlattenedChildren:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  TTRTreeStorageWithFlattenedChildren.init(upstreamTree:itemIDsWithFlattenedChildren:)(a1, a2);
  return v4;
}

void TTRTreeStorageWithFlattenedChildren.init(upstreamTree:itemIDsWithFlattenedChildren:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(*(*(*v2 + 88) + 8) + 8);
  v7 = *(*v2 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_21DBFBA8C();
  v10 = sub_21DBFBA8C();
  MEMORY[0x28223BE20](v10 - 8);
  v86 = v71 - v11;
  v110 = *(v9 - 8);
  MEMORY[0x28223BE20](v12);
  v104 = v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v103 = v71 - v15;
  MEMORY[0x28223BE20](v16);
  v89 = v71 - v17;
  v18 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v19);
  v102 = v71 - v20;
  v90 = v6;
  v106 = v7;
  v21 = v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v23 = swift_getAssociatedTypeWitness();
  v92 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v85 = v71 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v87 = v71 - v26;
  v27 = sub_21DBFBA8C();
  v105 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v83 = v71 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v82 = v71 - v30;
  MEMORY[0x28223BE20](v31);
  v109 = v71 - v32;
  v72 = AssociatedConformanceWitness;
  v33 = swift_getAssociatedConformanceWitness();
  v3[4] = sub_21DBF9E2C();
  v80 = v3 + 4;
  v115[0] = v33;
  WitnessTable = swift_getWitnessTable(MEMORY[0x277D84F48], v27, v115);
  v35 = sub_21DBF9E4C();
  v91 = v3;
  v3[5] = v35;
  v3 += 5;
  v111 = AssociatedTypeWitness;
  sub_21DBFA74C();
  v84 = v27;
  v79 = WitnessTable;
  v3[1] = sub_21DBF9E2C();
  *(v3 - 3) = a1;
  *(v3 - 2) = a2;
  v78 = v3;
  v113 = a2;
  v88 = v23;
  v71[2] = a1;
  v81 = v33;
  if ((a2 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_21DBF8E0C();
    sub_21DBFBD1C();
    sub_21DBFAB5C();
    v36 = v115[2];
    v113 = v115[1];
    v37 = v115[3];
    v107 = v115[4];
    v38 = v115[5];
  }

  else
  {
    v39 = -1 << *(v113 + 32);
    v36 = v113 + 56;
    v37 = ~v39;
    v40 = -v39;
    if (v40 < 64)
    {
      v41 = ~(-1 << v40);
    }

    else
    {
      v41 = -1;
    }

    v38 = v41 & *(v113 + 56);
    swift_unknownObjectRetain();
    sub_21DBF8E0C();
    v107 = 0;
  }

  v112 = (v92 + 56);
  v71[1] = v37;
  v42 = (v37 + 64) >> 6;
  v108 = (v92 + 16);
  v99 = (v92 + 32);
  v43 = v90;
  v98 = v90 + 40;
  v97 = (v18 + 48);
  v77 = (v18 + 32);
  v76 = (v110 + 16);
  v75 = (v110 + 56);
  v71[3] = v72 + 24;
  v74 = (v18 + 8);
  v96 = (v110 + 8);
  v73 = (v105 + 8);
  v95 = (v92 + 8);
  v105 = v21;
  v44 = v89;
  v45 = v88;
  v46 = v87;
  v47 = v109;
  v48 = v91;
  v101 = v36;
  v100 = v42;
  while (v113 < 0)
  {
    if (!sub_21DBFBDBC())
    {
LABEL_26:
      swift_unknownObjectRelease();
      (*v112)(v47, 1, 1, v45);
      sub_21D0CFAF8(v113);
      return;
    }

    sub_21DBFC60C();
    swift_unknownObjectRelease();
LABEL_21:
    v110 = *v112;
    v110(v47, 0, 1, v45);
    (*v99)(v46, v47, v45);
    v114 = v48[2];
    (*(v43 + 40))(v46, v106, v43);
    v52 = *v97;
    v53 = v111;
    if ((*v97)(v44, 1, v111) == 1)
    {
      (*v95)(v46, v45);
      (*v96)(v44, v105);
      v47 = v109;
    }

    else
    {
      v54 = *v77;
      v94 = v52;
      v55 = v102;
      v54(v102, v44, v53);
      v56 = v103;
      sub_21D3EF36C(v55, v103);
      (*v108)(v85, v46, v45);
      v93 = *v76;
      v57 = v86;
      v58 = v105;
      v93(v86, v56, v105);
      (*v75)(v57, 0, 1, v58);
      swift_beginAccess();
      sub_21DBF9F4C();
      sub_21DBF9F6C();
      swift_endAccess();
      v59 = v104;
      v93(v104, v56, v58);
      if (v94(v59, 1, v53) == 1)
      {
        v60 = v96;
        v61 = v96;
        v62 = v58;
        v63 = v58;
        v47 = v109;
        v64 = v110;
        v65 = v83;
        v66 = v74;
        v67 = 1;
      }

      else
      {
        v65 = v83;
        (*(v72 + 24))(v53);
        v59 = v104;
        v67 = 0;
        v66 = v74;
        v61 = v74;
        v62 = v53;
        v63 = v58;
        v47 = v109;
        v64 = v110;
        v60 = v96;
      }

      (*v61)(v59, v62);
      v68 = v67;
      v45 = v88;
      v64(v65, v68, 1, v88);
      swift_beginAccess();
      v69 = v84;
      sub_21DBFABAC();
      v70 = v82;
      sub_21DBFAB2C();
      swift_endAccess();
      (*v73)(v70, v69);
      (*v60)(v103, v63);
      (*v66)(v102, v111);
      v46 = v87;
      (*v95)(v87, v45);
      v48 = v91;
      v43 = v90;
      v44 = v89;
    }

    v36 = v101;
    v42 = v100;
  }

  if (v38)
  {
    v49 = v107;
LABEL_20:
    v51 = __clz(__rbit64(v38));
    v38 &= v38 - 1;
    (*(v92 + 16))(v47, *(v113 + 48) + *(v92 + 72) * (v51 | (v49 << 6)), v45);
    goto LABEL_21;
  }

  v50 = v107;
  while (1)
  {
    v49 = v50 + 1;
    if (__OFADD__(v50, 1))
    {
      break;
    }

    if (v49 >= v42)
    {
      goto LABEL_26;
    }

    v38 = *(v36 + 8 * v49);
    ++v50;
    if (v38)
    {
      v107 = v49;
      goto LABEL_20;
    }
  }

  __break(1u);
}

uint64_t sub_21D3EF36C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a1;
  v4 = *(*(*(*v2 + 88) + 8) + 8);
  v5 = *(*v2 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v51 = swift_getAssociatedTypeWitness();
  v37 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v50 = v36 - v7;
  v8 = sub_21DBFBA8C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v46 = v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v36 - v12;
  v14 = *(AssociatedTypeWitness - 8);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = v36 - v17;
  v52 = v2;
  v45 = v2[2];
  v55 = v45;
  v19 = *(v4 + 48);
  v47 = v5;
  v48 = v4;
  v43 = v19;
  v44 = v4 + 48;
  (v19)(v53, v5, v4, v16);
  v20 = *(v9 + 16);
  v49 = a2;
  v53 = v8;
  v41 = v20;
  v42 = v9 + 16;
  v20(v13, a2, v8);
  v39 = *(v14 + 48);
  v40 = v14 + 48;
  if (v39(v13, 1, AssociatedTypeWitness) == 1)
  {
    return (*(v9 + 8))(v13, v53);
  }

  v23 = *(v14 + 32);
  v22 = v14 + 32;
  v36[0] = v37 + 1;
  v36[1] = AssociatedConformanceWitness + 24;
  v37 = (v22 - 24);
  v38 = v23;
  v24 = (v9 + 8);
  v25 = (v9 + 32);
  while (1)
  {
    v26 = v22;
    v38(v18, v13, AssociatedTypeWitness);
    v27 = v13;
    v28 = v50;
    (*(AssociatedConformanceWitness + 24))(AssociatedTypeWitness, AssociatedConformanceWitness);
    v29 = v51;
    swift_getAssociatedConformanceWitness();
    v30 = sub_21DBFAB6C();
    (*v36[0])(v28, v29);
    if ((v30 & 1) == 0)
    {
      break;
    }

    v31 = v46;
    v55 = v45;
    v43(v18, v47, v48);
    (*v37)(v18, AssociatedTypeWitness);
    v32 = *v24;
    v33 = v49;
    v34 = v53;
    (*v24)(v49, v53);
    (*v25)(v33, v31, v34);
    v41(v27, v33, v34);
    v35 = v39(v27, 1, AssociatedTypeWitness);
    v13 = v27;
    v22 = v26;
    if (v35 == 1)
    {
      return (v32)(v13, v53);
    }
  }

  return (*v37)(v18, AssociatedTypeWitness);
}

uint64_t TTRTreeStorageWithFlattenedChildren.numberOfChildren(of:)(uint64_t a1)
{
  v3 = *v1;
  if (!sub_21D3EF920(a1))
  {
    return (*(*(*(*(v3 + 88) + 8) + 8) + 24))(a1, *(v3 + 80));
  }

  swift_getAssociatedTypeWitness();
  v4 = sub_21DBFA6DC();

  return v4;
}

uint64_t sub_21D3EF920(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = sub_21DBFBA8C();
  v4 = sub_21DBFBA8C();
  v43 = *(v4 - 8);
  v44 = v4;
  MEMORY[0x28223BE20](v4);
  v42 = v38 - v5;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = swift_getAssociatedTypeWitness();
  v45 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v46 = v38 - v8;
  v9 = *(v3 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = v38 - v11;
  v13 = sub_21DBFBA8C();
  v14 = *(v13 - 8);
  v49 = v13;
  v50 = v14;
  MEMORY[0x28223BE20](v13);
  v40 = v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = v38 - v17;
  v20 = MEMORY[0x28223BE20](v19);
  v22 = v38 - v21;
  v23 = *(v9 + 16);
  v41 = a1;
  v23(v12, a1, v3, v20);
  v24 = *(AssociatedTypeWitness - 8);
  v25 = 1;
  v26 = (*(v24 + 48))(v12, 1, AssociatedTypeWitness);
  v48 = AssociatedConformanceWitness;
  if (v26 == 1)
  {
    v24 = v9;
    v27 = v3;
  }

  else
  {
    (*(AssociatedConformanceWitness + 24))(AssociatedTypeWitness, AssociatedConformanceWitness);
    v25 = 0;
    v27 = AssociatedTypeWitness;
  }

  (*(v24 + 8))(v12, v27);
  v28 = v45;
  (*(v45 + 56))(v22, v25, 1, v7);
  v30 = v49;
  v29 = v50;
  v32 = v50 + 16;
  v31 = *(v50 + 16);
  v47 = v22;
  v39 = v31;
  v31(v18, v22, v49);
  if ((*(v28 + 48))(v18, 1, v7) == 1)
  {
    (*(v29 + 8))(v18, v30);
  }

  else
  {
    v38[1] = v32;
    (*(v28 + 32))(v46, v18, v7);
    swift_beginAccess();
    swift_getAssociatedConformanceWitness();
    v33 = v42;
    sub_21DBF9F5C();
    swift_endAccess();
    if ((*(v9 + 48))(v33, 1, v3) != 1)
    {
      (*(v43 + 8))(v33, v44);
      v36 = sub_21DBFA68C();
      (*(v28 + 8))(v46, v7);
      (*(v50 + 8))(v47, v49);
      return v36;
    }

    (*(v28 + 8))(v46, v7);
    (*(v43 + 8))(v33, v44);
    v30 = v49;
  }

  swift_beginAccess();
  v52 = swift_getAssociatedConformanceWitness();
  sub_21DBF8E0C();
  swift_getWitnessTable(MEMORY[0x277D84F48], v30, &v52);
  v34 = v47;
  v35 = sub_21DBFAB6C();

  if (v35)
  {
    swift_beginAccess();
    sub_21DBFA74C();
    sub_21DBF9F5C();
    v36 = v51;
    if (!v51)
    {
      swift_endAccess();
      v36 = sub_21D3F18D0(v41);
      v39(v40, v34, v30);
      v51 = v36;
      swift_beginAccess();
      sub_21DBF9F4C();
      sub_21DBF8E0C();
      sub_21DBF9F6C();
    }

    swift_endAccess();
    (*(v50 + 8))(v34, v30);
  }

  else
  {
    (*(v50 + 8))(v34, v30);
    return 0;
  }

  return v36;
}

void TTRTreeStorageWithFlattenedChildren.child(_:of:)(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  if (sub_21D3EF920(a2))
  {
    swift_getAssociatedTypeWitness();
    sub_21DBFA78C();
  }

  else
  {
    (*(*(*(*(v6 + 88) + 8) + 8) + 32))(a1, a2, *(v6 + 80));
  }
}

uint64_t TTRTreeStorageWithFlattenedChildren.parent(of:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_21DBFBA8C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  v10 = *(AssociatedTypeWitness - 8);
  (*(v10 + 16))(&v12 - v8, a1, AssociatedTypeWitness, v7);
  (*(v10 + 56))(v9, 0, 1, AssociatedTypeWitness);
  sub_21D3F0394(v9, a2);
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_21D3F0394@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v56 = a2;
  v5 = *(*(*(*v3 + 88) + 8) + 8);
  v6 = *(*v3 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_21DBFBA8C();
  v9 = sub_21DBFBA8C();
  v45 = *(v9 - 8);
  v46 = v9;
  MEMORY[0x28223BE20](v9);
  v50 = v43 - v10;
  v53 = v5;
  v54 = v6;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v51 = swift_getAssociatedTypeWitness();
  v48 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v49 = v43 - v11;
  v12 = *(v8 - 8);
  MEMORY[0x28223BE20](v13);
  v44 = v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = v43 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = v43 - v19;
  v21 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v22);
  v52 = v43 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v24);
  v27 = v43 - v26;
  v28 = *(v12 + 16);
  v55 = v8;
  v28(v20, a1, v8, v25);
  v29 = *(v21 + 48);
  if (v29(v20, 1, AssociatedTypeWitness) == 1)
  {
    v17 = v20;
LABEL_5:
    (*(v12 + 8))(v17, v55);
    return (*(v21 + 56))(v56, 1, 1, AssociatedTypeWitness);
  }

  v43[0] = *(v21 + 32);
  v43[1] = v21 + 32;
  (v43[0])(v27, v20, AssociatedTypeWitness);
  v57 = v3[2];
  (*(v53 + 48))(v27, v54);
  if (v29(v17, 1, AssociatedTypeWitness) == 1)
  {
    (*(v21 + 8))(v27, AssociatedTypeWitness);
    goto LABEL_5;
  }

  v54 = v27;
  v31 = v52;
  (v43[0])(v52, v17, AssociatedTypeWitness);
  v32 = v49;
  (*(AssociatedConformanceWitness + 24))(AssociatedTypeWitness, AssociatedConformanceWitness);
  swift_beginAccess();
  v33 = v51;
  swift_getAssociatedConformanceWitness();
  v34 = v50;
  v35 = v55;
  sub_21DBF9F5C();
  v36 = (*(v12 + 48))(v34, 1, v35);
  v37 = (v48 + 8);
  v38 = (v21 + 8);
  if (v36 == 1)
  {
    (*(v45 + 8))(v34, v46);
    swift_endAccess();
    (*v37)(v32, v33);
    (*(v21 + 8))(v54, AssociatedTypeWitness);
    v39 = v56;
    (v43[0])(v56, v31, AssociatedTypeWitness);
    return (*(v21 + 56))(v39, 0, 1, AssociatedTypeWitness);
  }

  else
  {
    v40 = *(v12 + 32);
    v41 = v44;
    v40(v44, v34, v35);
    swift_endAccess();
    (*v37)(v32, v33);
    v42 = *v38;
    (*v38)(v52, AssociatedTypeWitness);
    v42(v54, AssociatedTypeWitness);
    return (v40)(v56, v41, v35);
  }
}

uint64_t TTRTreeStorageWithFlattenedChildren.convertFromImmediateUpstream(_:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v111 = a2;
  v4 = *v2;
  v102 = *(*v2 + 88);
  v5 = *(*(v102 + 8) + 8);
  v6 = *(v4 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v123 = v5;
  v125 = v6;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = swift_getAssociatedTypeWitness();
  v108 = sub_21DBFBA8C();
  v107 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v106 = &v97 - v10;
  v11 = sub_21DBFBA8C();
  v100 = sub_21DBFBA8C();
  v99 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v116 = &v97 - v12;
  v120 = v9;
  v119 = *(v9 - 8);
  MEMORY[0x28223BE20](v13);
  v117 = &v97 - v14;
  v121 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v15);
  v122 = &v97 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v118 = &v97 - v18;
  v19 = *(v11 - 8);
  MEMORY[0x28223BE20](v20);
  v105 = &v97 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v124 = &v97 - v23;
  MEMORY[0x28223BE20](v24);
  v101 = &v97 - v25;
  MEMORY[0x28223BE20](v26);
  v28 = &v97 - v27;
  MEMORY[0x28223BE20](v29);
  v31 = &v97 - v30;
  v33 = type metadata accessor for TTRDerivedTreeLocation(0, AssociatedTypeWitness, AssociatedConformanceWitness, v32);
  MEMORY[0x28223BE20](v33);
  v103 = &v97 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x28223BE20](v35);
  v38 = &v97 - v37;
  v110 = v39;
  (*(v39 + 16))(&v97 - v37, a1, v33, v36);
  v40 = *(v19 + 16);
  v40(v31, v38, v11);
  v41 = *(v33 + 36);
  v109 = v38;
  v104 = *&v38[v41];
  v127 = v31;
  v114 = v40;
  v115 = v19 + 16;
  v40(v28, v31, v11);
  v42 = v121;
  v43 = *(v121 + 48);
  v44 = v43(v28, 1, AssociatedTypeWitness);
  v113 = v19;
  v112 = AssociatedConformanceWitness;
  if (v44 == 1)
  {
    (*(v19 + 8))(v28, v11);
  }

  else
  {
    v98 = v43;
    (*(v42 + 32))(v118, v28, AssociatedTypeWitness);
    (*(AssociatedConformanceWitness + 24))(AssociatedTypeWitness, AssociatedConformanceWitness);
    swift_beginAccess();
    v45 = v120;
    swift_getAssociatedConformanceWitness();
    v46 = v116;
    sub_21DBF9F5C();
    v47 = (*(v19 + 48))(v46, 1, v11);
    v48 = v19;
    v49 = (v119 + 8);
    v50 = v45;
    if (v47 != 1)
    {
      v84 = v101;
      (*(v48 + 32))(v101, v116, v11);
      swift_endAccess();
      (*v49)(v117, v50);
      v128 = sub_21D3F1850(v84);
      MEMORY[0x28223BE20](v128);
      v85 = v102;
      *(&v97 - 4) = v125;
      *(&v97 - 3) = v85;
      *(&v97 - 2) = v118;
      v86 = sub_21DBFA74C();
      swift_getWitnessTable(MEMORY[0x277D83988], v86);
      sub_21DBFACCC();

      if (v130)
      {
        v87 = *(v48 + 8);
        v87(v84, v11);
        v87(v127, v11);
        v88 = v110;
        (*(v110 + 8))(v109, v33);
        (*(v88 + 56))(v111, 1, 1, v33);
        return (*(v121 + 8))(v118, AssociatedTypeWitness);
      }

      v89 = v118;
      v90 = v129[1];
      result = v114(v124, v84, v11);
      v91 = v90 + v104;
      if (__OFADD__(v90, v104))
      {
        goto LABEL_31;
      }

      v92 = v11;
      v93 = v113;
      v94 = v121;
      if (__OFADD__(v91, 1))
      {
LABEL_32:
        __break(1u);
        return result;
      }

      v95 = v103;
      TTRDerivedTreeLocation.init(parent:index:)(v124, v91 + 1, AssociatedTypeWitness, v112, v103);
      v96 = *(v93 + 8);
      v96(v84, v92);
      v96(v127, v92);
      v80 = v110;
      v81 = v109;
      (*(v110 + 8))(v109, v33);
      v82 = *(v80 + 32);
      v82(v81, v95, v33);
      (*(v94 + 8))(v89, AssociatedTypeWitness);
LABEL_25:
      v83 = v111;
      v82(v111, v81, v33);
      return (*(v80 + 56))(v83, 0, 1, v33);
    }

    (*(v99 + 8))(v116, v100);
    swift_endAccess();
    (*v49)(v117, v45);
    v42 = v121;
    (*(v121 + 8))(v118, AssociatedTypeWitness);
    v19 = v48;
    v43 = v98;
  }

  swift_beginAccess();
  v51 = v105;
  v114(v105, v127, v11);
  v52 = v43(v51, 1, AssociatedTypeWitness);
  v53 = v112;
  if (v52 == 1)
  {
    v54 = v51;
    v55 = *(v19 + 8);
    sub_21DBF8E0C();
    v55(v54, v11);
    v56 = 1;
    v57 = v108;
    v58 = v107;
    v59 = v106;
  }

  else
  {
    v60 = *(v112 + 24);
    sub_21DBF8E0C();
    v59 = v106;
    v60(AssociatedTypeWitness, v53);
    (*(v42 + 8))(v51, AssociatedTypeWitness);
    v56 = 0;
    v57 = v108;
    v58 = v107;
  }

  (*(v119 + 56))(v59, v56, 1, v120);
  v129[0] = swift_getAssociatedConformanceWitness();
  swift_getWitnessTable(MEMORY[0x277D84F48], v57, v129);
  v61 = sub_21DBFAB6C();

  (*(v58 + 8))(v59, v57);
  if (v61)
  {
    v119 = *(v126 + 16);
    v128 = v119;
    result = (*(v123 + 24))(v127, v125);
    if (result >= v104)
    {
      v63 = v104;
    }

    else
    {
      v63 = result;
    }

    if (v63 < 0)
    {
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    v108 = v33;
    v120 = v11;
    v121 = AssociatedTypeWitness;
    v64 = 0;
    if (v63)
    {
      v65 = 0;
      v117 = *(v123 + 32);
      v118 = (v123 + 32);
      v116 = (v42 + 16);
      v66 = (v42 + 56);
      v67 = (v113 + 8);
      v68 = (v42 + 8);
      while (1)
      {
        v69 = v63;
        v128 = v119;
        v70 = v122;
        (v117)(v65, v127, v125, v123);
        v71 = v124;
        v72 = v121;
        (*v116)(v124, v70, v121);
        (*v66)(v71, 0, 1, v72);
        sub_21D3F18D0(v71);
        (*v67)(v71, v120);
        v73 = sub_21DBFA6DC();

        result = (*v68)(v70, v72);
        v74 = v73 + 1;
        if (__OFADD__(v73, 1))
        {
          break;
        }

        v75 = __OFADD__(v64, v74);
        v64 += v74;
        if (v75)
        {
          goto LABEL_29;
        }

        ++v65;
        v63 = v69;
        if (v69 == v65)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

LABEL_18:
    v76 = v124;
    v77 = v127;
    v78 = v120;
    v114(v124, v127, v120);
    v79 = v103;
    TTRDerivedTreeLocation.init(parent:index:)(v76, v64, v121, v112, v103);
    (*(v113 + 8))(v77, v78);
    v80 = v110;
    v81 = v109;
    v33 = v108;
    (*(v110 + 8))(v109, v108);
    v82 = *(v80 + 32);
    v82(v81, v79, v33);
    goto LABEL_25;
  }

  (*(v113 + 8))(v127, v11);
  v80 = v110;
  v83 = v111;
  (*(v110 + 32))(v111, v109, v33);
  return (*(v80 + 56))(v83, 0, 1, v33);
}

uint64_t sub_21D3F1850(uint64_t a1)
{
  v3 = *v1;
  result = sub_21D3EF920(a1);
  if (!result)
  {
    return TTRTreeContentsQueryable.children(of:)(a1, *(v3 + 80), *(*(*(v3 + 88) + 8) + 8));
  }

  return result;
}

uint64_t sub_21D3F18D0(uint64_t a1)
{
  v3 = swift_allocObject();
  swift_getAssociatedTypeWitness();
  *(v3 + 16) = sub_21DBF9E3C();
  sub_21D3F4840(a1, v1, v3);
  swift_beginAccess();
  v4 = *(v3 + 16);
  sub_21DBF8E0C();

  return v4;
}

uint64_t TTRTreeStorageWithFlattenedChildren.convertToImmediateUpstream(_:for:)(void (*a1)(char *, char *, uint64_t), char *a2)
{
  v3 = v2;
  v6 = *(*v3 + 88);
  v7 = *(*(v6 + 8) + 8);
  v8 = *(*v3 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_21DBFBA8C();
  v58 = *(v10 - 8);
  v59 = v10;
  MEMORY[0x28223BE20](v10);
  v56 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v60 = &v52 - v13;
  v57 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v52 - v15;
  v17 = *a2;
  v18 = sub_21D3F1850(a1);
  if (v17)
  {

    *&v62 = sub_21D3F21E8(a1);
    type metadata accessor for TTRTreeStorageWithFlattenedChildren.InferredInsertLocation(255, v8, v6, v19);
    v20 = sub_21DBFA74C();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    type metadata accessor for TTRDerivedTreeLocation(0, AssociatedTypeWitness, AssociatedConformanceWitness, v22);
    swift_getWitnessTable(MEMORY[0x277D83970], v20);
    v23 = sub_21DBFA4EC();
  }

  else
  {
    v55 = v16;
    v67 = v18;
    v24 = sub_21DBFA74C();
    swift_getWitnessTable(MEMORY[0x277D83980], v24);
    sub_21DBFAC2C();
    v66 = v62;
    v54 = swift_getAssociatedConformanceWitness();
    v26 = type metadata accessor for TTRDerivedTreeLocation(0, AssociatedTypeWitness, v54, v25);
    v65 = *(a1 + *(v26 + 36));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A050, &qword_21DC10D10);
    if (sub_21DBFAD8C())
    {
      v52 = v6;
      v53 = v26;
      v27 = v55;
      sub_21DBFA78C();

      *&v62 = v3[2];
      v28 = v62;
      v29 = *(v7 + 48);
      swift_unknownObjectRetain();
      v30 = v60;
      v29(v27, v8, v7);
      *&v62 = v28;
      v31 = TTRTreeContentsQueryable.childrenCollection(of:)(v30, v8, v7);
      v33 = v32;
      v35 = v34;
      v37 = v36;
      v38 = swift_unknownObjectRelease();
      *&v62 = v31;
      *(&v62 + 1) = v33;
      v63 = v35;
      v64 = v37;
      MEMORY[0x28223BE20](v38);
      v39 = v52;
      *(&v52 - 4) = v8;
      *(&v52 - 3) = v39;
      *(&v52 - 2) = v27;
      sub_21D0E8418(qword_27CE5C010, MEMORY[0x277D83D28]);
      v40 = sub_21DBFC0EC();
      v61 = sub_21D0E8418(&qword_280D17898, MEMORY[0x277D83D48]);
      swift_getWitnessTable(MEMORY[0x277D84300], v40, &v61);
      sub_21DBFACCC();

      if (BYTE8(v66))
      {
        v23 = sub_21DBFA68C();
        (*(v58 + 8))(v60, v59);
      }

      else
      {
        v41 = v66;
        v42 = v53;
        sub_21DBFC5CC();
        swift_allocObject();
        v43 = sub_21DBFA60C();
        v45 = v44;
        v47 = v58;
        v46 = v59;
        v48 = v56;
        v49 = v60;
        (*(v58 + 16))(v56, v60, v59);
        TTRDerivedTreeLocation.init(parent:index:)(v48, v41, AssociatedTypeWitness, v54, v45);
        sub_21D23C8B4(v43, v42);
        v23 = v50;
        (*(v47 + 8))(v49, v46);
      }

      (*(v57 + 8))(v27, AssociatedTypeWitness);
    }

    else
    {

      return sub_21DBFA68C();
    }
  }

  return v23;
}

uint64_t sub_21D3F1FE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[1] = a2;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v17 - v10;
  v12 = *(AssociatedConformanceWitness + 24);
  v13 = swift_checkMetadataState();
  v12(v13, AssociatedConformanceWitness);
  v12(v13, AssociatedConformanceWitness);
  swift_getAssociatedConformanceWitness();
  v14 = sub_21DBFA10C();
  v15 = *(v6 + 8);
  v15(v8, AssociatedTypeWitness);
  v15(v11, AssociatedTypeWitness);
  return v14 & 1;
}

uint64_t sub_21D3F21E8(void (*a1)(char *, char *, uint64_t))
{
  v278 = *v1;
  v3 = *(v278 + 88);
  v255 = *(v3 + 8);
  v4 = *(v278 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = swift_getAssociatedTypeWitness();
  v238 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v232 = &v213 - v8;
  v256 = v9;
  v10 = sub_21DBFBA8C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v224 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v252 = &v213 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v230 = (&v213 - v13);
  v244 = v10;
  v231 = *(v10 - 8);
  MEMORY[0x28223BE20](v14);
  v236 = &v213 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v240 = &v213 - v17;
  MEMORY[0x28223BE20](v18);
  v264 = &v213 - v19;
  MEMORY[0x28223BE20](v20);
  v223 = &v213 - v21;
  MEMORY[0x28223BE20](v22);
  v235 = &v213 - v23;
  MEMORY[0x28223BE20](v24);
  v237 = &v213 - v25;
  v269 = AssociatedConformanceWitness;
  v27 = type metadata accessor for TTRDerivedTreeLocation(255, AssociatedTypeWitness, AssociatedConformanceWitness, v26);
  v229 = sub_21DBFBA8C();
  v228 = *(v229 - 8);
  MEMORY[0x28223BE20](v229);
  v248 = &v213 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v234 = (&v213 - v30);
  v262 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v31);
  v251 = &v213 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v239 = &v213 - v34;
  MEMORY[0x28223BE20](v35);
  v241 = &v213 - v36;
  MEMORY[0x28223BE20](v37);
  v227 = &v213 - v38;
  MEMORY[0x28223BE20](v39);
  v243 = (&v213 - v40);
  MEMORY[0x28223BE20](v41);
  v242 = &v213 - v42;
  v254 = v4;
  inserted = type metadata accessor for TTRTreeStorageWithFlattenedChildren.InferredInsertLocation(0, v4, v3, v43);
  MEMORY[0x28223BE20](inserted);
  v261 = &v213 - v44;
  v266 = AssociatedTypeWitness;
  v45 = sub_21DBFBA8C();
  v277 = swift_getTupleTypeMetadata2();
  MEMORY[0x28223BE20](v277);
  v275 = &v213 - v46;
  v270 = *(v27 - 8);
  MEMORY[0x28223BE20](v47);
  v260 = &v213 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v49);
  v253 = &v213 - v50;
  MEMORY[0x28223BE20](v51);
  v53 = &v213 - v52;
  v54 = *(v45 - 8);
  MEMORY[0x28223BE20](v55);
  v245 = &v213 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v57);
  v247 = &v213 - v58;
  MEMORY[0x28223BE20](v59);
  v268 = &v213 - v60;
  MEMORY[0x28223BE20](v61);
  v226 = &v213 - v62;
  MEMORY[0x28223BE20](v63);
  v246 = (&v213 - v64);
  MEMORY[0x28223BE20](v65);
  v233 = &v213 - v66;
  MEMORY[0x28223BE20](v67);
  v69 = &v213 - v68;
  MEMORY[0x28223BE20](v70);
  v72 = &v213 - v71;
  v74 = MEMORY[0x28223BE20](v73);
  v76 = &v213 - v75;
  v263 = v54;
  v79 = *(v54 + 16);
  v77 = v54 + 16;
  v78 = v79;
  v265 = v45;
  result = (v79)(v72, a1, v45, v74);
  v271 = v27;
  v81 = *(a1 + *(v27 + 36));
  if (__OFSUB__(v81, 1))
  {
    __break(1u);
    return result;
  }

  v225 = v72;
  v82 = v266;
  TTRDerivedTreeLocation.init(parent:index:)(v72, v81 - 1, v266, v269, v53);
  v83 = v278;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for TTRTreeStorageWithFlattenedChildren<A>, v278);
  TTRTreeStorageTreeDeriving.item(at:)(v53, v83, WitnessTable, v76);
  v85 = *(v270 + 8);
  v250 = v270 + 8;
  v249 = v85;
  v85(v53, v271);
  v276 = a1;
  v274 = v1;
  sub_21D3F501C(a1, v1, v69);
  v279 = sub_21DBF9E3C();
  v86 = v76;
  v87 = *(v277 + 48);
  v88 = v275;
  v257 = v86;
  v89 = v265;
  v78(v275);
  v258 = v69;
  v278 = v77;
  (v78)(&v88[v87], v69, v89);
  v90 = v262;
  v92 = v262 + 48;
  v91 = *(v262 + 48);
  v93 = v91(v88, 1, v82);
  v94 = v82;
  v277 = v92;
  v95 = v91(&v88[v87], 1, v82);
  v96 = v88;
  if (v93 == 1)
  {
    v97 = v261;
    if (v95 == 1)
    {
      (v78)(v261, v276, v89);
      swift_storeEnumTagMultiPayload();
      sub_21DBFA74C();
      sub_21DBFA6FC();
    }

    else
    {
      v107 = &v88[v87];
      v108 = v242;
      (*(v90 + 32))(v242, v107, v82);
      (*(v90 + 16))(v97, v108, v82);
      swift_storeEnumTagMultiPayload();
      sub_21DBFA74C();
      sub_21DBFA6FC();
      (*(v90 + 8))(v108, v82);
    }

    v109 = *(v263 + 8);
    v109(v258, v89);
    goto LABEL_10;
  }

  v98 = v91;
  v276 = v78;
  v100 = v90 + 32;
  v99 = *(v90 + 32);
  v101 = v90;
  if (v95 != 1)
  {
    v110 = v241;
    v111 = v96;
    v112 = v94;
    v99(v241);
    v113 = v239;
    v273 = v99;
    (v99)(v239, &v111[v87], v112);
    v114 = v234;
    v233 = v274[2];
    TTRTreeStorageTreeDeriving.derivedTreeLocation(for:)(v113, v254, v255, v234);
    v116 = v270;
    v115 = v271;
    v117 = *(v270 + 48);
    v227 = (v270 + 48);
    v225 = v117;
    if (v117(v114, 1, v271) == 1)
    {
      v118 = *(v101 + 8);
      v118(v113, v112);
      v118(v110, v112);
      v119 = *(v263 + 8);
      v119(v258, v89);
      v119(v257, v89);
      (*(v228 + 8))(v114, v229);
      return v279;
    }

    v127 = *(v116 + 32);
    v128 = v114;
    v129 = v253;
    v270 = v116 + 32;
    v222 = v127;
    v127(v253, v128, v115);
    v130 = v269;
    v131 = (v269 + 3);
    v132 = v237;
    v218 = v269[3];
    v218(v112, v269);
    v133 = *(v238 + 56);
    v134 = 1;
    v274 = (v238 + 56);
    v246 = v133;
    v133(v132, 0, 1, v256);
    v135 = v226;
    v276(v226, v129, v89);
    v136 = v98(v135, 1, v112);
    v275 = v98;
    v272 = v100;
    v217 = v131;
    if (v136 == 1)
    {
      v101 = v263;
      v137 = v89;
      v138 = v235;
    }

    else
    {
      v138 = v235;
      v218(v112, v130);
      v134 = 0;
      v137 = v112;
    }

    (*(v101 + 8))(v135, v137);
    v139 = v256;
    v246(v138, v134, 1, v256);
    v140 = *(TupleTypeMetadata2 + 48);
    v141 = v231;
    v142 = (v231 + 16);
    v143 = *(v231 + 16);
    v144 = v230;
    v145 = v237;
    v146 = v244;
    v143(v230, v237, v244);
    v243 = v140;
    v143(v140 + v144, v138, v146);
    v148 = v238 + 48;
    v147 = *(v238 + 48);
    v149 = v147(v144, 1, v139);
    v150 = v251;
    v226 = v142;
    v221 = v143;
    v220 = v148;
    v219 = v147;
    if (v149 == 1)
    {
      v151 = *(v141 + 8);
      v152 = v244;
      (v151)(v235, v244);
      (v151)(v145, v152);
      if (v147(v243 + v144, 1, v256) == 1)
      {
        (v151)(v144, v244);
        v153 = v241;
        v154 = v258;
LABEL_46:
        v205 = v153;
        v206 = v262;
        v207 = v154;
        v208 = v239;
        v209 = v266;
        (*(v262 + 16))(v261, v239, v266);
        swift_storeEnumTagMultiPayload();
        sub_21DBFA74C();
        sub_21DBFA6FC();
        v249(v253, v271);
        v210 = *(v206 + 8);
        v210(v208, v209);
        v210(v205, v209);
        v109 = *(v263 + 8);
        v109(v207, v89);
LABEL_10:
        v109(v257, v89);
        return v279;
      }

      v158 = v244;
    }

    else
    {
      v155 = v223;
      v143(v223, v144, v244);
      v156 = v243;
      v157 = v256;
      if (v147(v243 + v144, 1, v256) != 1)
      {
        v200 = v238;
        v201 = v156 + v144;
        v202 = v232;
        (*(v238 + 32))(v232, v201, v157);
        swift_getAssociatedConformanceWitness();
        LODWORD(v243) = sub_21DBFA10C();
        v203 = *(v200 + 8);
        v203(v202, v157);
        v151 = *(v141 + 8);
        v204 = v244;
        (v151)(v235, v244);
        (v151)(v237, v204);
        v203(v155, v157);
        v153 = v241;
        v154 = v258;
        (v151)(v230, v204);
        v159 = v248;
        v158 = v204;
        if (v243)
        {
          goto LABEL_46;
        }

        goto LABEL_27;
      }

      v151 = *(v141 + 8);
      v158 = v244;
      (v151)(v235, v244);
      (v151)(v237, v158);
      (*(v238 + 8))(v155, v157);
    }

    v153 = v241;
    (*(v224 + 8))(v144, TupleTypeMetadata2);
    v159 = v248;
LABEL_27:
    v234 = v151;
    v160 = v262;
    v161 = *(v262 + 16);
    v162 = v268;
    v163 = v266;
    v237 = (v262 + 16);
    v235 = v161;
    (v161)(v268, v153, v266);
    v164 = *(v160 + 56);
    v215 = v160 + 56;
    v214 = v164;
    v164(v162, 0, 1, v163);
    v165 = v247;
    v276(v247, v162, v89);
    v166 = (v275)(v165, 1, v163);
    v167 = v240;
    v168 = v271;
    if (v166 == 1)
    {
LABEL_28:
      v249(v253, v168);
      v169 = *(v262 + 8);
      v169(v239, v163);
      v169(v241, v163);
      v170 = *(v263 + 8);
      v170(v258, v89);
      v170(v257, v89);
      v170(v165, v89);
      v170(v268, v89);
      return v279;
    }

    v230 = (v263 + 24);
    v243 = (v262 + 8);
    v223 = (v263 + 8);
    v213 = (v238 + 32);
    v216 = (v238 + 8);
    v238 = v231 + 8;
    v231 = v224 + 8;
    while (1)
    {
      v273(v150, v165, v163);
      TTRTreeStorageTreeDeriving.derivedTreeLocation(for:)(v150, v254, v255, v159);
      if (v225(v159, 1, v168) == 1)
      {
        v211 = *v243;
        (*v243)(v150, v163);
        v249(v253, v168);
        v211(v239, v163);
        v211(v241, v163);
        v212 = *v223;
        (*v223)(v258, v89);
        v212(v257, v89);
        (*(v228 + 8))(v159, v229);
        v212(v268, v89);
        return v279;
      }

      v173 = v260;
      v222(v260, v159, v168);
      (v235)(v261, v150, v163);
      swift_storeEnumTagMultiPayload();
      sub_21DBFA74C();
      sub_21DBFA6FC();
      v174 = v268;
      (*v230)(v268, v173, v89);
      v175 = 1;
      v176 = v275;
      v177 = (v275)(v174, 1, v163);
      v178 = v264;
      if (!v177)
      {
        v179 = v242;
        (v235)(v242, v268, v163);
        v218(v163, v269);
        (*v243)(v179, v163);
        v175 = 0;
      }

      v180 = 1;
      v181 = v175;
      v182 = v256;
      v246(v178, v181, 1, v256);
      v183 = v245;
      v276(v245, v253, v89);
      if (v176(v183, 1, v163) == 1)
      {
        v184 = v223;
        v185 = v89;
      }

      else
      {
        v218(v163, v269);
        v180 = 0;
        v184 = v243;
        v185 = v163;
      }

      (*v184)(v183, v185);
      v246(v167, v180, 1, v182);
      v186 = *(TupleTypeMetadata2 + 48);
      v187 = v252;
      v188 = v264;
      v189 = v158;
      v190 = v221;
      v221(v252, v264, v158);
      v190(&v187[v186], v167, v158);
      v191 = v219;
      if (v219(v187, 1, v182) == 1)
      {
        break;
      }

      v194 = v236;
      v190(v236, v187, v158);
      if (v191(&v187[v186], 1, v182) == 1)
      {
        v171 = v234;
        (v234)(v167, v158);
        v171(v264, v158);
        v168 = v271;
        v249(v260, v271);
        v172 = v194;
        v150 = v251;
        (*v243)(v251, v266);
        (*v216)(v172, v182);
        v89 = v265;
LABEL_31:
        (*v231)(v187, TupleTypeMetadata2);
        v163 = v266;
        v159 = v248;
        goto LABEL_32;
      }

      v195 = v232;
      (*v213)(v232, &v187[v186], v182);
      v196 = v194;
      v163 = v266;
      swift_getAssociatedConformanceWitness();
      LODWORD(v224) = sub_21DBFA10C();
      v197 = *v216;
      v158 = v244;
      (*v216)(v195, v182);
      v198 = v234;
      (v234)(v240, v158);
      v198(v264, v158);
      v249(v260, v271);
      v150 = v251;
      (*v243)(v251, v163);
      v167 = v240;
      v197(v196, v182);
      v168 = v271;
      v198(v252, v158);
      v159 = v248;
      v89 = v265;
      if (v224)
      {
        goto LABEL_44;
      }

LABEL_32:
      v165 = v247;
      v276(v247, v268, v89);
      if ((v275)(v165, 1, v163) == 1)
      {
        goto LABEL_28;
      }
    }

    v192 = v234;
    (v234)(v167, v189);
    v192(v188, v189);
    v168 = v271;
    v249(v260, v271);
    v150 = v251;
    (*v243)(v251, v266);
    v193 = v191(&v187[v186], 1, v182);
    v89 = v265;
    v158 = v189;
    if (v193 == 1)
    {
      (v234)(v187, v189);
      v163 = v266;
      v159 = v248;
LABEL_44:
      v199 = v268;
      (*v223)(v268, v89);
      v214(v199, 1, 1, v163);
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  v102 = v243;
  (v99)(v243, v96, v82);
  v103 = *(v90 + 16);
  v104 = v233;
  v271 = v103;
  v103(v233, v102, v82);
  (*(v101 + 56))(v104, 0, 1, v82);
  v105 = v246;
  v276(v246, v104, v89);
  if (v98(v105, 1, v82) == 1)
  {
    v106 = *(v263 + 8);
    v106(v104, v89);
  }

  else
  {
    v269 = (v101 + 8);
    v270 = v101 + 16;
    v120 = v82;
    v121 = (v263 + 8);
    v268 = (v263 + 32);
    v263 = (v263 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v275 = v98;
    v272 = v100;
    v273 = v99;
    v122 = v261;
    v123 = v227;
    v124 = v104;
    v125 = v246;
    v126 = v225;
    do
    {
      v273(v123, v125, v120);
      v271(v122, v123, v120);
      swift_storeEnumTagMultiPayload();
      sub_21DBFA74C();
      sub_21DBFA6FC();
      sub_21D3F4CE8(v123, v274, v126);
      (*v269)(v123, v120);
      v106 = *v121;
      (*v121)(v124, v89);
      (*v268)(v124, v126, v89);
      v276(v125, v124, v89);
    }

    while ((v275)(v125, 1, v120) != 1);
    v94 = v120;
    v101 = v262;
    v106(v124, v89);
  }

  (*(v101 + 8))(v243, v94);
  v106(v258, v89);
  v106(v257, v89);
  v106(v246, v89);
  return v279;
}