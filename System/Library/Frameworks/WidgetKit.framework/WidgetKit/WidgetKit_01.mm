unint64_t sub_19204149C()
{
  result = qword_1EADECD88;
  if (!qword_1EADECD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADECD88);
  }

  return result;
}

uint64_t sub_1920414F0(id *a1)
{
  v1 = *a1;
  sub_19204149C();
  v2 = v1;
  return sub_1922261F0();
}

uint64_t sub_19204154C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEECD0, &qword_1922363D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1920415BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEECD0, &qword_1922363D0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - v6;
  sub_19204154C(a1, &v9 - v6);
  sub_19204154C(v7, v4);
  sub_1920C8054();
  sub_1922261F0();
  return sub_192033970(v7, &qword_1EADEECD0, &qword_1922363D0);
}

unint64_t sub_1920416B0()
{
  result = qword_1EADED2D8;
  if (!qword_1EADED2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADED2D8);
  }

  return result;
}

uint64_t sub_192041704@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EADED2E8 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEED10, &unk_19222B0F0);
  v3 = __swift_project_value_buffer(v2, qword_1EADED2F0);

  return sub_192041788(v3, a1);
}

uint64_t sub_192041788(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEED10, &unk_19222B0F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1920417F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEED10, &unk_19222B0F0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - v6;
  sub_192041788(a1, &v9 - v6);
  sub_192041788(v7, v4);
  sub_1920416B0();
  sub_1922261F0();
  return sub_1920418D4(v7);
}

uint64_t sub_1920418D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEED10, &unk_19222B0F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_19204193C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_1920419A4@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEE9F0, &qword_19222A7A0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR____TtC9WidgetKit31_TimelineArchivedViewCollection____lazy_storage___dateRange;
  swift_beginAccess();
  sub_19202CFFC(v1 + v9, v8, &qword_1EADEE9F0, &qword_19222A7A0);
  v10 = sub_192224E00();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  sub_192033970(v8, &qword_1EADEE9F0, &qword_19222A7A0);
  sub_192041C50(v1, a1);
  (*(v11 + 16))(v5, a1, v10);
  (*(v11 + 56))(v5, 0, 1, v10);
  swift_beginAccess();
  sub_192096378(v5, v1 + v9);
  return swift_endAccess();
}

uint64_t sub_192041BB8()
{
  type metadata accessor for WidgetArchivableMetadata(0);

  v1 = sub_192041F58(v0);

  return v1;
}

uint64_t sub_192041C50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_192225150();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v32 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v36 = &v32 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v37 = &v32 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v32 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v32 - v19;
  v21 = a1 + OBJC_IVAR____TtC9WidgetKit31_TimelineArchivedViewCollection_metadata;
  v22 = *(v21 + *(type metadata accessor for WidgetArchivableMetadata(0) + 36));
  if (*(v22 + 16))
  {
    v32 = v10;
    v33 = v7;
    v35 = a2;
    v23 = *(type metadata accessor for WidgetArchivableMetadata.EntryMetadata(0) - 8);
    v24 = v22 + ((*(v23 + 80) + 32) & ~*(v23 + 80));
    v25 = *(v5 + 16);
    v25(v17, v24, v4);
    v34 = v5;
    v26 = *(v5 + 32);
    v26(v20, v17, v4);
    v27 = *(v22 + 16);
    if (v27)
    {
      v28 = v36;
      v25(v36, v24 + *(v23 + 72) * (v27 - 1), v4);
      v29 = v37;
      v26(v37, v28, v4);
      v25(v32, v20, v4);
      v25(v33, v29, v4);
      sub_192224DD0();
      v30 = *(v34 + 8);
      v30(v29, v4);
      return (v30)(v20, v4);
    }

    (*(v34 + 8))(v20, v4);
  }

  return sub_192224DF0();
}

uint64_t sub_192041FA0@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = sub_1922259F0();
  v5 = MEMORY[0x1E697DBA8];
  if (!v3)
  {
    v5 = MEMORY[0x1E697DBB8];
  }

  return (*(*(v4 - 8) + 104))(a2, *v5, v4);
}

uint64_t sub_192042088@<X0>(char *a2@<X8>)
{
  v3 = sub_192228700();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void *sub_1920420E8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = objc_allocWithZone(type metadata accessor for CHSWidgetDisplayPropertiesCodable());
  result = CHSWidgetDisplayPropertiesCodable.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_192042158(uint64_t a1)
{
  v2 = swift_allocObject();
  (*(*(*(*v2 + 128) - 8) + 32))(v2 + *(*v2 + 152), a1);
  return v2;
}

uint64_t sub_1920421EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t *a6@<X8>)
{
  v34 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  v14 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v16 = &v28 - v15;
  result = (*(a4 + 56))(a1, a3, a4, v14);
  if (!v6)
  {
    v32 = 0;
    v33 = v13;
    v28 = a6;
    v29 = a5;
    v31 = type metadata accessor for WidgetEnvironment.AnyKeyValueTuple();
    v30 = (*(a4 + 48))(a3, a4);
    type metadata accessor for WidgetEnvironment.AnyValue();
    v18 = swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    v19 = v34;
    swift_getAssociatedConformanceWitness();
    swift_allocObject();
    v20 = sub_19204343C(a1, v18);
    sub_1922261D0();
    v21 = sub_192228580();
    swift_allocObject();
    v22 = v32;
    v23 = sub_192042954(v30, v16, v20, v19, v21);
    v24 = v22;
    if (!v22)
    {
      v26 = v23;
      v27 = *(v33 + 8);

      result = v27(v16, AssociatedTypeWitness);
      *v28 = v26;
      return result;
    }

    v25 = *(v33 + 8);

    result = v25(v16, AssociatedTypeWitness);
    v6 = v24;
    a5 = v29;
  }

  *a5 = v6;
  return result;
}

char *sub_192042498(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEC00, &unk_19222AFF0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *CHSWidgetDisplayPropertiesCodable.init(from:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2618, &qword_192245150);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - v7;
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19204522C();
  sub_192228B70();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for CHSWidgetDisplayPropertiesCodable();
    swift_deallocPartialClassInstance();
    return v9;
  }

  LOBYTE(v21) = 0;
  if ((sub_192228800() & 1) == 0)
  {
    v24 = 1;
    sub_192045184();
    sub_1922287C0();
    v13 = v21;
    LOBYTE(v21) = 2;
    v17 = sub_1922287B0();
    v18 = type metadata accessor for CHSWidgetDisplayPropertiesCodable();
    v23.receiver = v3;
    v23.super_class = v18;
    v9 = objc_msgSendSuper2(&v23, sel_initWithScale_colorGamut_, v17, v13);
LABEL_9:
    (*(v6 + 8))(v8, v5);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return v9;
  }

  v24 = 0;
  sub_192047340();
  sub_1922287C0();
  v10 = *&v21;
  v11 = v22;
  sub_19202A7A8(0, &qword_1ED749280, 0x1E696ACD0);
  sub_19202A7A8(0, &unk_1ED74A3A0, 0x1E69943A0);
  result = sub_192228010();
  if (result)
  {
    v14 = result;
    v15 = type metadata accessor for CHSWidgetDisplayPropertiesCodable();
    v20.receiver = v3;
    v20.super_class = v15;
    v16 = v14;
    v9 = objc_msgSendSuper2(&v20, sel_initWithWidgetDisplayProperties_, v14);
    sub_192039140(v10, v11);

    goto LABEL_9;
  }

  __break(1u);
  return result;
}

unint64_t sub_1920428DC()
{
  result = qword_1ED74AD98;
  if (!qword_1ED74AD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74AD98);
  }

  return result;
}

uint64_t sub_192042954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v11 = *(a5 + *MEMORY[0x1E69E6CE8] + 8);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v18 - v13;
  type metadata accessor for WidgetEnvironment.AnyKeyValueTuple.Storage(0, v16, v11, v15);
  (*(v12 + 16))(v14, a2, v11);
  *(v6 + 16) = sub_1920453E4(a1, v14, a4);
  *(v6 + 24) = a3;
  return v6;
}

uint64_t sub_192042A78@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1358, &qword_19223A628);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_192042C00();
  sub_192228B70();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = sub_192228770();
  (*(v6 + 8))(v8, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v9 & 1;
  return result;
}

unint64_t sub_192042C00()
{
  result = qword_1ED74ADD8;
  if (!qword_1ED74ADD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74ADD8);
  }

  return result;
}

_WORD *storeEnumTagSinglePayload for OptionalLocalizationsWrapper.CodingKeys(_WORD *result, int a2, int a3)
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

uint64_t sub_192042D5C(uint64_t a1)
{
  v3 = *v1;
  v4 = type metadata accessor for WidgetEnvironment.AnyKey();
  v5 = *(v3 + 144);
  v6 = *(v3 + 152);
  v17 = sub_192045014(v4, v5, v6);
  swift_getAssociatedTypeWitness();
  v7 = sub_192227C40();
  v19 = (*(v6 + 72))(v5, v6);
  v20 = v8;
  v21 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEF308, &qword_19222CD28);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  swift_getWitnessTable();
  v10 = a1;
  sub_1922287C0();
  if (v16[6])
  {

    swift_willThrow();
  }

  else
  {

    v19 = v22;
    MEMORY[0x1EEE9AC00](v11);
    v16[2] = v5;
    v16[3] = v6;
    v16[4] = v17;
    v12 = type metadata accessor for WidgetEnvironment.AnyKeyValueTuple();
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF420, &unk_19222D820);
    WitnessTable = swift_getWitnessTable();
    v10 = sub_19204301C(sub_192042BDC, v16, v7, v12, v13, WitnessTable, MEMORY[0x1E69E7288], &v22);
  }

  return v10;
}

uint64_t sub_19204301C(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v13 = &v27 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v27 - v17;
  v19 = sub_192227E20();
  if (!v19)
  {
    return sub_192227BD0();
  }

  v41 = v19;
  v45 = sub_192228560();
  v32 = sub_192228570();
  sub_192228510();
  result = sub_192227E00();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = sub_192227ED0();
      v23 = v13;
      v24 = v13;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      sub_192228550();
      result = sub_192227E70();
      ++v21;
      v13 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_19204343C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for WidgetEnvironment.AnyValue.Storage(0, v9, v10, v11);
  (*(v6 + 16))(v8, a1, a2);
  *(v3 + 16) = sub_192042158(v8);
  return v3;
}

uint64_t sub_192043568()
{
  if (qword_1ED74AD88 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1920435E8(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5)
{
  if (*a3 == -1)
  {
  }

  else
  {
    swift_once();
  }
}

uint64_t WidgetEnvironment.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_192228B50();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v8, v8[3]);
    type metadata accessor for WidgetEnvironment.Storage();
    sub_1920C80A8(&qword_1ED74BE40, v5, type metadata accessor for WidgetEnvironment.Storage, &protocol conformance descriptor for WidgetEnvironment.Storage);
    sub_1922289B0();
    v6 = v8[6];
    __swift_destroy_boxed_opaque_existential_1(v8);
    *a2 = v6;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_192043788(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0A70, &qword_192236280);
    v3 = sub_1922286C0();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      v9 = v8;
      result = sub_19204437C(v6, v7);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v3[6] + 24 * result);
      *v12 = v5;
      v12[1] = v6;
      v12[2] = v7;
      *(v3[7] + 8 * result) = v9;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

char *sub_1920438A4@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  v6 = objc_allocWithZone(v2);
  result = WidgetEnvironment.Storage.init(from:)(a1);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

char *WidgetEnvironment.Storage.init(from:)(void *a1)
{
  v3 = v2;
  v4 = v1;
  ObjectType = swift_getObjectType();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEF308, &qword_19222CD28);
  v47 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v43 - v8;
  v10 = OBJC_IVAR___CHKWidgetEnvironment_tuples;
  v11 = sub_192043788(MEMORY[0x1E69E7CC0]);
  v53 = v10;
  *&v4[v10] = v11;
  if (qword_1ED74BCB8 != -1)
  {
LABEL_42:
    swift_once();
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1920446A0();
  sub_192228B70();
  v12 = v53;
  if (v3)
  {
    goto LABEL_37;
  }

  v52 = v9;
  v13 = sub_1922287F0();
  v57 = *(v13 + 16);
  v54 = 0;
  if (!v57)
  {

LABEL_34:
    swift_beginAccess();
    if (!v57 || *(*&v4[v12] + 16))
    {
      (*(v47 + 8))(v52, v7);
      v60.receiver = v4;
      v60.super_class = ObjectType;
      v3 = objc_msgSendSuper2(&v60, sel_init);
      __swift_destroy_boxed_opaque_existential_1(a1);
      return v3;
    }

    v3 = sub_1922284A0();
    swift_allocError();
    v42 = v41;
    sub_192228480();
    (*(*(v3 - 1) + 104))(v42, *MEMORY[0x1E69E6B00], v3);
    swift_willThrow();
    (*(v47 + 8))(v52, v7);
LABEL_37:
    __swift_destroy_boxed_opaque_existential_1(a1);

    swift_deallocPartialClassInstance();
    return v3;
  }

  v43 = v7;
  v44 = ObjectType;
  v45 = a1;
  v46 = v4;
  v7 = 0;
  v55 = v13;
  v56 = v13 + 32;
  ObjectType = v52;
  while (1)
  {
    v14 = v56 + 24 * v7;
    v15 = *(v14 + 8);
    a1 = *(v14 + 16);
    v16 = qword_1ED74BCC8;

    if (v16 != -1)
    {
      swift_once();
    }

    ++v7;
    swift_beginAccess();
    v17 = off_1ED74BF20;
    if (!*(off_1ED74BF20 + 2) || (v18 = sub_1920440AC(v15, a1), (v19 & 1) == 0))
    {
      swift_endAccess();
      v3 = v55;
      goto LABEL_6;
    }

    v9 = v4;
    v20 = *(v17[7] + 8 * v18);
    swift_endAccess();
    v21 = *(**(v20 + 16) + 112);

    v22 = v54;
    v23 = v21(ObjectType);
    if (!v22)
    {
      break;
    }

    v54 = 0;
    ObjectType = v52;
    v12 = v53;
    v3 = v55;
    v4 = v9;
LABEL_6:

    if (v7 == v57)
    {
      goto LABEL_32;
    }

LABEL_7:
    if (v7 >= v3[2])
    {
      __break(1u);
      goto LABEL_42;
    }
  }

  v24 = v23;
  v54 = 0;
  v51 = v20;
  v25 = (*(**(v20 + 16) + 80))();
  v12 = v53;
  v49 = v26;
  v50 = v25;
  v48 = v27;
  if (!(v24 >> 62))
  {
    v28 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v4 = v9;
    if (v28)
    {
      goto LABEL_16;
    }

LABEL_29:

LABEL_30:
    v38 = objc_allocWithZone(MEMORY[0x1E695DFB8]);
    v39 = sub_192227B60();

    v40 = [v38 initWithArray_];

    swift_beginAccess();
    sub_192047438(v40, v50, v49, v48);
    swift_endAccess();

    if (v7 == v57)
    {
LABEL_32:

      ObjectType = v44;
      a1 = v45;
      v7 = v43;
      goto LABEL_34;
    }

    ObjectType = v52;
    v3 = v55;
    goto LABEL_7;
  }

  v28 = sub_192228340();
  v4 = v9;
  if (!v28)
  {
    goto LABEL_29;
  }

LABEL_16:
  v61 = MEMORY[0x1E69E7CC0];
  result = sub_192047588(0, v28 & ~(v28 >> 63), 0);
  if ((v28 & 0x8000000000000000) == 0)
  {
    v30 = v61;
    if ((v24 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v28; ++i)
      {
        v32 = MEMORY[0x193B0B410](i, v24);
        v59 = &type metadata for WidgetEnvironment.Storage.TupleValue;
        *&v58 = v32;
        v61 = v30;
        v34 = *(v30 + 16);
        v33 = *(v30 + 24);
        v9 = v34 + 1;
        if (v34 >= v33 >> 1)
        {
          sub_192047588((v33 > 1), v34 + 1, 1);
          v30 = v61;
        }

        *(v30 + 16) = v9;
        sub_19203BEDC(&v58, (v30 + 32 * v34 + 32));
      }
    }

    else
    {
      v9 = 32;
      do
      {
        v35 = *(v24 + v9);
        v59 = &type metadata for WidgetEnvironment.Storage.TupleValue;
        *&v58 = v35;
        v61 = v30;
        v37 = *(v30 + 16);
        v36 = *(v30 + 24);

        if (v37 >= v36 >> 1)
        {
          sub_192047588((v36 > 1), v37 + 1, 1);
          v30 = v61;
        }

        *(v30 + 16) = v37 + 1;
        sub_19203BEDC(&v58, (v30 + 32 * v37 + 32));
        v9 += 8;
        --v28;
      }

      while (v28);
    }

    v4 = v46;
    v12 = v53;
    goto LABEL_30;
  }

  __break(1u);
  return result;
}

uint64_t sub_192044028(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  sub_192228AD0();
  sub_1922279B0();
  v5 = sub_192228B30();

  return a3(a1, a2, v5);
}

unint64_t sub_1920440C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1922289A0())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_19204417C()
{
  if (qword_1ED74ADC0 != -1)
  {
    swift_once();
  }

  v0 = qword_1ED74CB10;

  return v0;
}

uint64_t sub_1920441FC()
{
  if (qword_1ED74AC48 != -1)
  {
    swift_once();
  }

  v0 = qword_1ED74C9F0;

  return v0;
}

uint64_t sub_19204427C()
{
  if (qword_1ED74AD48 != -1)
  {
    swift_once();
  }

  v0 = qword_1ED74CAB0;

  return v0;
}

uint64_t sub_1920442FC()
{
  if (qword_1ED74AC58 != -1)
  {
    swift_once();
  }

  v0 = qword_1ED74CA10;

  return v0;
}

uint64_t BundleStub.init(identifier:version:url:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_192225020();
  (*(*(v10 - 8) + 56))(a5, 1, 1, v10);
  v11 = type metadata accessor for BundleStub(0);
  *(a5 + *(v11 + 20)) = a1;
  result = sub_19203CF50(a4, a5);
  v13 = (a5 + *(v11 + 24));
  *v13 = a2;
  v13[1] = a3;
  return result;
}

uint64_t sub_192044454(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE10, &unk_19222B630);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_19204452C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE10, &unk_19222B630);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t BundleStub.version.getter()
{
  v1 = *(v0 + *(type metadata accessor for BundleStub(0) + 24));

  return v1;
}

unint64_t sub_192044634()
{
  result = qword_1ED7488E0;
  if (!qword_1ED7488E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7488E0);
  }

  return result;
}

unint64_t sub_1920446A0()
{
  result = qword_1ED74BEF0;
  if (!qword_1ED74BEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74BEF0);
  }

  return result;
}

uint64_t sub_1920446F4@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_192044720(a2, a3);
  *a1 = result;
  a1[1] = v5;
  a1[2] = v6;
  return result;
}

uint64_t sub_192044720(uint64_t a1, uint64_t a2)
{
  if (qword_1ED74BCC8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = off_1ED74BF20;
  if (*(off_1ED74BF20 + 2) && (v5 = sub_1920440AC(a1, a2), (v6 & 1) != 0))
  {
    v7 = *(v4[7] + 8 * v5);
    swift_endAccess();

    v9 = (*(**(v7 + 16) + 80))(v8);

    return v9;
  }

  else
  {
    swift_endAccess();

    return 0;
  }
}

uint64_t sub_192044844()
{
  if (qword_1ED74BC88 != -1)
  {
    swift_once();
  }

  v0 = qword_1ED74CC20;

  return v0;
}

uint64_t sub_1920448C4()
{
  if (qword_1ED74BC98 != -1)
  {
    swift_once();
  }

  v0 = qword_1ED74CC40;

  return v0;
}

uint64_t sub_192044944()
{
  if (qword_1ED74BD00 != -1)
  {
    swift_once();
  }

  v0 = qword_1ED74CC60;

  return v0;
}

uint64_t sub_1920449C4()
{
  if (qword_1ED74A820 != -1)
  {
    swift_once();
  }

  v0 = qword_1ED74C850;

  return v0;
}

uint64_t sub_192044A44()
{
  if (qword_1ED74ACE8 != -1)
  {
    swift_once();
  }

  v0 = qword_1ED74CA50;

  return v0;
}

uint64_t sub_192044AC4()
{
  if (qword_1ED74A9C0 != -1)
  {
    swift_once();
  }

  v0 = qword_1ED74C938;

  return v0;
}

uint64_t sub_192044B44()
{
  if (qword_1ED74ACA0 != -1)
  {
    swift_once();
  }

  v0 = qword_1ED74CA30;

  return v0;
}

uint64_t sub_192044BC4()
{
  if (qword_1ED74AAF0 != -1)
  {
    swift_once();
  }

  v0 = qword_1ED74C990;

  return v0;
}

uint64_t sub_192044C44()
{
  if (qword_1ED74BC70 != -1)
  {
    swift_once();
  }

  v0 = qword_1ED74CC00;

  return v0;
}

uint64_t sub_192044CC4()
{
  if (qword_1ED74A628 != -1)
  {
    swift_once();
  }

  v0 = qword_1ED74C818;

  return v0;
}

uint64_t sub_192044D44()
{
  if (qword_1ED74AC18 != -1)
  {
    swift_once();
  }

  v0 = qword_1ED74C9D0;

  return v0;
}

uint64_t sub_192044DC4()
{
  if (qword_1ED74ADE8 != -1)
  {
    swift_once();
  }

  v0 = qword_1ED74CB30;

  return v0;
}

uint64_t sub_192044E44()
{
  if (qword_1ED74AC08 != -1)
  {
    swift_once();
  }

  v0 = qword_1ED74C9B0;

  return v0;
}

uint64_t sub_192044EC4()
{
  if (qword_1ED74ACF8 != -1)
  {
    swift_once();
  }

  v0 = qword_1ED74CA70;

  return v0;
}

uint64_t sub_192044F44(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_192044F8C()
{
  if (qword_1ED74AD08 != -1)
  {
    swift_once();
  }

  v0 = qword_1ED74CA90;

  return v0;
}

uint64_t sub_192045014(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  type metadata accessor for WidgetEnvironment.AnyKey.Storage(0, a2, a3, v6);
  *(v5 + 16) = swift_allocObject();
  return v5;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_192045094(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1920450D4()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t sub_192045104()
{
  if (qword_1ED74A9B0 != -1)
  {
    swift_once();
  }

  v0 = qword_1ED74C918;

  return v0;
}

unint64_t sub_192045184()
{
  result = qword_1ED74BFE8;
  if (!qword_1ED74BFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74BFE8);
  }

  return result;
}

uint64_t sub_1920451D8()
{
  v1 = 0x656C616373;
  if (*v0 != 1)
  {
    v1 = 0x6D6147726F6C6F63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1635017060;
  }
}

unint64_t sub_19204522C()
{
  result = qword_1ED74A970;
  if (!qword_1ED74A970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74A970);
  }

  return result;
}

unint64_t sub_192045280()
{
  result = qword_1ED74A600;
  if (!qword_1ED74A600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74A600);
  }

  return result;
}

unint64_t sub_1920452D4()
{
  result = qword_1ED74AD20;
  if (!qword_1ED74AD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74AD20);
  }

  return result;
}

void *sub_192045328@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

char *sub_1920453E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v7 = *v6;
  *(v6 + 2) = a1;
  (*(*(*(v7 + 144) - 8) + 32))(&v6[*(v7 + 160)], a2);
  *&v6[*(*v6 + 168)] = a3;
  return v6;
}

id sub_1920454A4@<X0>(void **a1@<X0>, void **a2@<X8>)
{
  v2 = *a1;
  *a2 = *a1;
  return v2;
}

void sub_1920454D4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0A70, &qword_192236280);
  v36 = v4;
  v6 = sub_1922286A0();
  v7 = v6;
  if (*(v5 + 16))
  {
    v35 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 24 * v20);
      v22 = *v21;
      v37 = v21[1];
      v23 = v21[2];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v36 & 1) == 0)
      {

        v25 = v24;
      }

      sub_192228AD0();
      sub_1922279B0();
      v26 = sub_192228B30();
      v27 = -1 << *(v7 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 24 * v15);
      *v16 = v22;
      v16[1] = v37;
      v16[2] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v35;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

uint64_t sub_1920457F4()
{
  v1 = *v0;
  v2 = sub_192228AD0();
  (*(**(v1 + 16) + 80))(v2);
  sub_1922279B0();

  return sub_192228B30();
}

unint64_t sub_192045878(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = *(v3 + 48) + 24 * v5;
      if (*(v9 + 8) == a1 && *(v9 + 16) == a2)
      {
        break;
      }

      if (sub_1922289A0())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_19204593C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_19204437C(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_1920454D4(v18, a5 & 1);
      v13 = sub_19204437C(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        sub_192228A40();
        __break(1u);
        return MEMORY[0x1EEE66BB8]();
      }
    }

    else
    {
      v21 = v13;
      sub_19207804C();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    *(v23[7] + 8 * v13) = a1;

    return MEMORY[0x1EEE66BB8]();
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v24 = (v23[6] + 24 * v13);
  *v24 = a2;
  v24[1] = a3;
  v24[2] = a4;
  *(v23[7] + 8 * v13) = a1;
  v25 = v23[2];
  v17 = __OFADD__(v25, 1);
  v26 = v25 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v26;
}

uint64_t sub_192045AEC()
{
  if (qword_1ED74ACF0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_192045B48()
{
  if (qword_1ED74ADE0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_192045BA4()
{
  if (qword_1ED74A5F0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_192045C00()
{
  if (qword_1ED74A9A8 != -1)
  {
    swift_once();
  }
}

uint64_t sub_192045C5C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for WidgetLocalizations(0);
  v5 = swift_allocObject();
  result = WidgetLocalizations.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t WidgetLocalizations.init(from:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1200, &qword_19222F370);
  v15 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v15 - v6;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1228, &qword_192239718);
  v8 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v10 = &v15 - v9;
  v11 = a1[3];
  v17 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v11);
  sub_192046078();
  sub_192228B70();
  if (v2)
  {
    type metadata accessor for WidgetLocalizations(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v12 = v15;
    v21 = 0;
    sub_1920460CC(&qword_1ED74AB10, MEMORY[0x1E69940D8]);
    sub_1922287C0();
    (*(v12 + 32))(v3 + OBJC_IVAR____TtC9WidgetKit19WidgetLocalizations_identifier, v7, v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEEA20, &qword_19222A7F0);
    v20 = 1;
    sub_19204611C(&qword_1ED74BD18, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
    sub_1922287C0();
    *(v3 + OBJC_IVAR____TtC9WidgetKit19WidgetLocalizations_availableLocalizations) = v18;
    v19 = 2;
    v14 = sub_192228770();
    (*(v8 + 8))(v10, v16);
    *(v3 + OBJC_IVAR____TtC9WidgetKit19WidgetLocalizations_supportsMixedLocalizations) = v14 & 1;
  }

  __swift_destroy_boxed_opaque_existential_1(v17);
  return v3;
}

unint64_t sub_192046078()
{
  result = qword_1ED74BDB0[0];
  if (!qword_1ED74BDB0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED74BDB0);
  }

  return result;
}

uint64_t sub_1920460CC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF1200, &qword_19222F370);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_19204611C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EADEEA20, &qword_19222A7F0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_192046188()
{
  v1 = 0xD000000000000016;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000001ALL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_192046200@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for OptionalLocalizationsWrapper();
  v5 = swift_allocObject();
  result = sub_192046258(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_192046258(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF9D8, &qword_19222F368);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_192046438();
  sub_192228B70();
  if (v2)
  {
    type metadata accessor for OptionalLocalizationsWrapper();
    swift_deallocPartialClassInstance();
  }

  else
  {
    type metadata accessor for WidgetLocalizations(0);
    sub_192046D84(&qword_1ED74BD98, 255, type metadata accessor for WidgetLocalizations, &protocol conformance descriptor for WidgetLocalizations);
    sub_192228750();
    (*(v5 + 8))(v7, v4);
    *(v1 + 16) = v9[1];
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v1;
}

unint64_t sub_192046438()
{
  result = qword_1ED74AC30;
  if (!qword_1ED74AC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74AC30);
  }

  return result;
}

uint64_t sub_19204648C()
{
  if (qword_1ED74BCF8 != -1)
  {
    swift_once();
  }
}

void *sub_1920464E8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1A98, &qword_19223F3E0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v62 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_192046CDC();
  sub_192228B70();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for CHSWidgetMetricsCodable();
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v77) = 8;
    if (sub_192228800())
    {
      v79 = 8;
      sub_192047340();
      sub_1922287C0();
      v74 = v1;
      v9 = *&v77;
      v10 = v78;
      sub_1922255C0();
      v11 = sub_19202A7A8(0, &qword_1ED74BD10, 0x1E69943F0);
      v12 = sub_1922255A0();
      v42 = v12;
      v67 = v11;
      v72 = v10;
      v73 = v9;
      [v12 size];
      v44 = v43;
      v46 = v45;
      [v42 cornerRadius];
      v48 = v47;
      [v42 scaleFactor];
      v50 = v49;
      v71 = [v42 fontStyle];
      v68 = [v42 margins];
      v69 = [v42 dynamicTextSupport];
      v70 = [v42 widgetGroupMargins];
      v51 = [v42 nestedContentMetrics];
      if (v51)
      {
        v52 = v51;
        v66 = sub_19202A7A8(0, &qword_1EADEEEB8, 0x1E696AD98);
        v65 = sub_19205DDC0(&qword_1EADF1A90, &qword_1EADEEEB8, 0x1E696AD98, MEMORY[0x1E69E81B8]);
        sub_192227840();

        v53 = sub_192227830();
      }

      else
      {
        v53 = 0;
      }

      v67 = v53;
      v54 = type metadata accessor for CHSWidgetMetricsCodable();
      v75.receiver = v74;
      v75.super_class = v54;
      v55 = v70;
      v56 = v68;
      v3 = objc_msgSendSuper2(&v75, sel_initWithSize_cornerRadius_scaleFactor_fontStyle_margins_supportsDynamicText_widgetGroupMargins_nestedContentMetrics_, v71, v68, v69, v70, v53, v44, v46, v48, v50);

      v61.n128_f64[0] = sub_192039140(v73, *&v72);
    }

    else
    {
      type metadata accessor for CGSize(0);
      v79 = 0;
      sub_19205B0BC(&qword_1ED74B588, 255, type metadata accessor for CGSize, MEMORY[0x1E695EFA0]);
      sub_1922287C0();
      v13 = v77;
      v14 = v78;
      v79 = 1;
      sub_192045184();
      sub_1922287C0();
      v15 = v77;
      v79 = 2;
      sub_1922287C0();
      v16 = v77;
      LOBYTE(v77) = 3;
      v74 = sub_1922287A0();
      type metadata accessor for CGRect(0);
      v79 = 4;
      sub_19205B0BC(&unk_1ED74A7A0, 255, type metadata accessor for CGRect, MEMORY[0x1E695EF80]);
      sub_1922287C0();
      CHSEdgeInsetsFromRect();
      v18 = v17;
      v20 = v19;
      v22 = v21;
      v24 = v23;
      v79 = 5;
      sub_1922287C0();
      v70 = v24;
      v71 = v22;
      v72 = v20;
      v73 = v18;
      CHSEdgeInsetsFromRect();
      v26 = v25;
      v28 = v27;
      v30 = v29;
      v32 = v31;
      v79 = 6;
      sub_1922287C0();
      v66 = v32;
      v67 = v30;
      v68 = v28;
      v69 = v26;
      CHSEdgeInsetsFromRect();
      v34 = v33;
      v36 = v35;
      v38 = v37;
      v40 = v39;
      LOBYTE(v77) = 7;
      v57 = sub_1922287B0();
      v65 = *MEMORY[0x1E69941E0];
      v64 = *(MEMORY[0x1E69941E0] + 8);
      v63 = *(MEMORY[0x1E69941E0] + 24);
      v58 = objc_allocWithZone(MEMORY[0x1E69943E8]);
      v59 = [v58 initWithSafeAreaInsets:*&v73 layoutInsets:v72 contentMargins:*&v71 backgroundRemovedContentMargins:{*&v70, *&v69, *&v68, *&v67, *&v66, v34, v36, v38, v40, v65, v64, v63}];
      v60 = type metadata accessor for CHSWidgetMetricsCodable();
      v76.receiver = v3;
      v76.super_class = v60;
      v3 = objc_msgSendSuper2(&v76, sel_initWithSize_cornerRadius_scaleFactor_fontStyle_margins_supportsDynamicText_widgetGroupMargins_nestedContentMetrics_, v74, v59, v57, 0, 0, v13, v14, v15, v16);
    }

    (*(v6 + 8))(v8, v5, v61);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v3;
}

unint64_t sub_192046CDC()
{
  result = qword_1ED74BD70;
  if (!qword_1ED74BD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74BD70);
  }

  return result;
}

unint64_t sub_192046D30()
{
  result = qword_1ED74B5D0;
  if (!qword_1ED74B5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74B5D0);
  }

  return result;
}

uint64_t sub_192046D84(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_192046DCC()
{
  result = qword_1ED74AD80;
  if (!qword_1ED74AD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74AD80);
  }

  return result;
}

uint64_t sub_192046E20(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {

    v2 = sub_192228600();

    if (v2)
    {
      type metadata accessor for WidgetEnvironment.AnyKey();
      swift_dynamicCast();
      return v5;
    }
  }

  else if (*(a2 + 16))
  {
    sub_19204D8A4(a1);
    if (v4)
    {
    }
  }

  return 0;
}

double sub_192046ED4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_192039140(a1, a2);
  }

  return result;
}

uint64_t sub_192046EE8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_192046F48(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_192046FA8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_192047008(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  if (!a1)
  {
    goto LABEL_21;
  }

  if (a1 >> 62)
  {
    if (sub_192228340())
    {
      v9 = sub_192228340();
      if (!v9)
      {

LABEL_16:
        v19 = objc_allocWithZone(MEMORY[0x1E695DFB8]);
        v20 = sub_192227B60();

        v21 = [v19 initWithArray_];

        swift_beginAccess();
        sub_192047438(v21, a2, a3, a4);
        swift_endAccess();
        return;
      }

      goto LABEL_4;
    }

    goto LABEL_20;
  }

  v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v9)
  {
LABEL_20:

LABEL_21:
    swift_beginAccess();
    v22 = sub_19204D458(a3, a4);
    swift_endAccess();

    return;
  }

LABEL_4:
  v27 = MEMORY[0x1E69E7CC0];
  sub_192047588(0, v9 & ~(v9 >> 63), 0);
  if ((v9 & 0x8000000000000000) == 0)
  {
    v23 = a3;
    v24 = a2;
    v10 = v27;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v9; ++i)
      {
        v12 = MEMORY[0x193B0B410](i, a1);
        v26 = &type metadata for WidgetEnvironment.Storage.TupleValue;
        v27 = v10;
        *&v25 = v12;
        v14 = *(v10 + 16);
        v13 = *(v10 + 24);
        if (v14 >= v13 >> 1)
        {
          sub_192047588((v13 > 1), v14 + 1, 1);
          v10 = v27;
        }

        *(v10 + 16) = v14 + 1;
        sub_19203BEDC(&v25, (v10 + 32 * v14 + 32));
      }
    }

    else
    {
      v15 = (a1 + 32);
      do
      {
        v16 = *v15;
        v26 = &type metadata for WidgetEnvironment.Storage.TupleValue;
        v27 = v10;
        *&v25 = v16;
        v17 = *(v10 + 16);
        v18 = *(v10 + 24);

        if (v17 >= v18 >> 1)
        {
          sub_192047588((v18 > 1), v17 + 1, 1);
          v10 = v27;
        }

        *(v10 + 16) = v17 + 1;
        sub_19203BEDC(&v25, (v10 + 32 * v17 + 32));
        ++v15;
        --v9;
      }

      while (v9);
    }

    a3 = v23;
    a2 = v24;
    goto LABEL_16;
  }

  __break(1u);
}

unint64_t sub_1920472B8()
{
  result = qword_1ED74ACC0;
  if (!qword_1ED74ACC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74ACC0);
  }

  return result;
}

uint64_t sub_19204730C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return sub_1920367C8(v3, v2);
}

unint64_t sub_192047340()
{
  result = qword_1ED74BFF0;
  if (!qword_1ED74BFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74BFF0);
  }

  return result;
}

unint64_t sub_192047394()
{
  result = qword_1ED74AC78;
  if (!qword_1ED74AC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74AC78);
  }

  return result;
}

uint64_t sub_192047400@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 8);
  *a2 = *result;
  *(a2 + 8) = v2;
  return result;
}

double sub_192047438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v4;
    sub_19204593C(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v17;
  }

  else
  {
    v12 = sub_19204437C(a3, a4);
    if (v13)
    {
      v14 = v12;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v18 = *v5;
      if (!v15)
      {
        sub_19207804C();
        v16 = v18;
      }

      sub_1920781D4(v14, v16);

      *v5 = v16;
    }

    else
    {
    }
  }

  return result;
}

char *sub_192047588(char *a1, int64_t a2, char a3)
{
  result = sub_192042498(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_1920475A8()
{
  result = qword_1ED74A9F0;
  if (!qword_1ED74A9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74A9F0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for OptionalLocalizationsWrapper.CodingKeys(unsigned int *a1, int a2)
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

uint64_t type metadata accessor for WidgetLocalizations(uint64_t a1)
{
  result = qword_1ED74AA10;
  if (!qword_1ED74AA10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_192047698()
{
  result = qword_1ED74AA00;
  if (!qword_1ED74AA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74AA00);
  }

  return result;
}

unint64_t sub_1920476EC()
{
  result = qword_1ED74AA50;
  if (!qword_1ED74AA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74AA50);
  }

  return result;
}

uint64_t WidgetRenderScheme.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1068, &qword_192239100);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1920476EC();
  sub_192228B70();
  if (!v2)
  {
    v14 = 0;
    sub_192047918();
    sub_1922287C0();
    v9 = v15;
    v13 = 1;
    v10 = sub_1922287E0();
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    *(a2 + 8) = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_192047918()
{
  result = qword_1ED74A9D8;
  if (!qword_1ED74A9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74A9D8);
  }

  return result;
}

uint64_t WidgetRenderingMode.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1B58, &qword_19223FBF8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1920475A8();
  sub_192228B70();
  if (!v2)
  {
    sub_192047AF0();
    sub_1922287C0();
    (*(v6 + 8))(v8, v5);
    *a2 = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_192047AF0()
{
  result = qword_1ED74A9F8;
  if (!qword_1ED74A9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74A9F8);
  }

  return result;
}

uint64_t sub_192047B44()
{
  if (*v0)
  {
    return 0xD000000000000014;
  }

  else
  {
    return 0x6E697265646E6572;
  }
}

WidgetKit::WidgetRenderingMode::Mode_optional __swiftcall WidgetRenderingMode.Mode.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_192047C7C@<X0>(char *a2@<X8>)
{
  v3 = sub_192228700();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

uint64_t sub_192047CDC@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = sub_192226580();
  v5 = MEMORY[0x1E697F600];
  if (!v3)
  {
    v5 = MEMORY[0x1E697F608];
  }

  return (*(*(v4 - 8) + 104))(a2, *v5, v4);
}

unint64_t sub_192047DC4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_192047DF4(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_192047DF4(uint64_t a1, uint64_t a2)
{
  v2 = sub_192228700();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_192047E40@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  if (!*a1)
  {
    v3 = MEMORY[0x1E697E9F8];
    goto LABEL_5;
  }

  if (*a1 == 1)
  {
    v3 = MEMORY[0x1E697E9F0];
LABEL_5:
    v4 = *v3;
    v5 = sub_192225D00();
    v6 = *(v5 - 8);
    (*(v6 + 104))(a2, v4, v5);
    return (*(v6 + 56))(a2, 0, 1, v5);
  }

  v8 = sub_192225D00();
  return (*(*(v8 - 8) + 56))(a2, 1, 1, v8);
}

unint64_t sub_192047F70@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_192047FA0(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_192047FA0(uint64_t a1, uint64_t a2)
{
  v2 = sub_192228700();

  if (v2 >= 0xC)
  {
    return 12;
  }

  else
  {
    return v2;
  }
}

uint64_t getEnumTagSinglePayload for ContentSizeCategoryKey.CodableContentSizeCategory(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_192048118(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 1802658148;
  }

  else
  {
    v3 = 0x746867696CLL;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (*a2)
  {
    v5 = 1802658148;
  }

  else
  {
    v5 = 0x746867696CLL;
  }

  if (*a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1922289A0();
  }

  return v8 & 1;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1920481D0(uint64_t a1)
{
  v2 = *(*v1 + 128);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v9 - v4;
  v6 = swift_dynamicCastClass();
  if (v6)
  {
    (*(v3 + 16))(v5, v6 + *(*v6 + 152), v2);

    v7 = sub_192227910();

    (*(v3 + 8))(v5, v2);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

void *sub_192048350@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  if (CHSWidgetFamilyIsValid())
  {
    result = InternalWidgetFamily.init(_:)(v3, v6);
    *a2 = v6[0];
  }

  else
  {
    v6[3] = MEMORY[0x1E69E6530];
    v6[0] = v3;
    sub_1922284C0();
    swift_allocError();
    sub_1920F7530(v6, v5);
    __swift_destroy_boxed_opaque_existential_1(v6);
    return swift_willThrow();
  }

  return result;
}

uint64_t InternalWidgetFamily.init(_:)@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v2 = result - 1;
  if (result - 1) < 0xE && ((0x2FFFu >> v2))
  {
    *a2 = byte_19223F12E[v2];
  }

  else
  {
    v7 = result;
    if (qword_1ED74C6B0 != -1)
    {
      swift_once();
    }

    v3 = sub_1922258B0();
    __swift_project_value_buffer(v3, qword_1ED74CCC8);
    v4 = sub_192225890();
    v5 = sub_192227F90();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 134349056;
      *(v6 + 4) = v7;
      _os_log_impl(&dword_192028000, v4, v5, "Unrecognized family: %{public}ld", v6, 0xCu);
      MEMORY[0x193B0C7F0](v6, -1, -1);
    }

    result = sub_192228620();
    __break(1u);
  }

  return result;
}

uint64_t sub_192048584()
{
  if (qword_1ED74AD00 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1920485E0()
{
  if (qword_1ED74AD10 != -1)
  {
    swift_once();
  }
}

uint64_t sub_192048660()
{
  if (qword_1ED74ACB0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1920486BC()
{
  if (qword_1ED74AC68 != -1)
  {
    swift_once();
  }
}

uint64_t sub_192048718()
{
  if (qword_1ED74A9B8 != -1)
  {
    swift_once();
  }
}

unint64_t sub_192048838(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v4 = 1702521203;
    v5 = 0x636146656C616373;
    if (a1 != 2)
    {
      v5 = 0x6C797453746E6F66;
    }

    if (a1)
    {
      v4 = 0x615272656E726F63;
    }

    if (a1 <= 1u)
    {
      return v4;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x4D746E65746E6F63;
    if (a1 != 6)
    {
      v1 = 0xD000000000000013;
    }

    v2 = 0x6165724165666173;
    if (a1 != 4)
    {
      v2 = 0x6E4974756F79616CLL;
    }

    if (a1 <= 5u)
    {
      return v2;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1920489E8()
{
  if (qword_1ED74BC80 != -1)
  {
    swift_once();
  }
}

uint64_t sub_192048A44()
{
  if (qword_1ED74BC90 != -1)
  {
    swift_once();
  }
}

uint64_t sub_192048AA0()
{
  if (qword_1ED74AAE8 != -1)
  {
    swift_once();
  }
}

uint64_t sub_192048AFC()
{
  if (qword_1ED74A828 != -1)
  {
    swift_once();
  }
}

uint64_t sub_192048B58()
{
  if (qword_1ED74BC68 != -1)
  {
    swift_once();
  }
}

void *sub_192048BB4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1340, &qword_19223A370);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - v5;
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_192046DCC();
  sub_192228B70();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    sub_192047340();
    sub_1922287C0();
    (*(v4 + 8))(v6, v3);
    v7 = v9;
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v7;
}

void *sub_192048D4C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = objc_allocWithZone(type metadata accessor for CHSWidgetMetricsCodable());
  result = sub_1920464E8(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void *sub_192048DA0@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 0;
    if (*result)
    {
      *a2 = 0;
      return result;
    }
  }

  *a2 = v2;
  return result;
}

WidgetKit::WidgetBackgroundStyle_optional __swiftcall WidgetBackgroundStyle.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

void *sub_192048DEC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_192048BB4(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t _ClockHandRotationEffect.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v16[1] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0E78, &qword_1922383E0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v16 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0E80, &qword_1922383E8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v16 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0E88, &qword_1922383F0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v16 - v10;
  v12 = sub_192158650();
  v13 = sub_19206CB1C(0, v12);

  if (v13)
  {
    sub_192159DEC(a1, v5);
    sub_19202CFFC(v5, v8, &qword_1EADF0E78, &qword_1922383E0);
    swift_storeEnumTagMultiPayload();
    sub_192159780();
    sub_192159838();
    sub_1922266E0();
    return sub_192033970(v5, &qword_1EADF0E78, &qword_1922383E0);
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0E90, &qword_1922383F8);
    (*(*(v15 - 8) + 16))(v11, a1, v15);
    sub_19202CFFC(v11, v8, &qword_1EADF0E88, &qword_1922383F0);
    swift_storeEnumTagMultiPayload();
    sub_192159780();
    sub_192159838();
    sub_1922266E0();
    return sub_192033970(v11, &qword_1EADF0E88, &qword_1922383F0);
  }
}

double sub_1920490B8(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEECD0, &qword_1922363D0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v22 - v6;
  v8 = sub_192224EA0();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19202CFFC(a2, v7, &qword_1EADEECD0, &qword_1922363D0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_192033970(v7, &qword_1EADEECD0, &qword_1922363D0);
    return sub_192159618(a1);
  }

  (*(v9 + 32))(v11, v7, v8);
  v13 = v2 + *(type metadata accessor for _ClockHandRotationEffect(0) + 72);
  v14 = *v13;
  if (*(v13 + 8) == 1)
  {
    if (v14 != 0.0)
    {
      if (*&v14 != 1)
      {
LABEL_15:
        v18 = sub_192224E90();
LABEL_16:
        v20 = v18;
        v21 = v19;
        (*(v9 + 8))(v11, v8);
        result = 0.0;
        if ((v21 & 1) == 0)
        {
          return (v20 + v20) * 3.14159265 / 60.0;
        }

        return result;
      }

      goto LABEL_13;
    }
  }

  else if (v14 != 43200.0)
  {
    if (v14 != 3600.0)
    {
      if (v14 != 60.0)
      {
        (*(v9 + 8))(v11, v8);
        return 0.0;
      }

      goto LABEL_15;
    }

LABEL_13:
    v18 = sub_192224E80();
    goto LABEL_16;
  }

  v15 = sub_192224E60();
  v17 = v16;
  (*(v9 + 8))(v11, v8);
  result = 0.0;
  if ((v17 & 1) == 0 && v15 != 12)
  {
    return (v15 + v15) * 3.14159265 / 12.0;
  }

  return result;
}

uint64_t sub_19204938C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _ClockHandRotationEffect(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1920493F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _ClockHandRotationEffect(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_192049464()
{
  result = qword_1EADF0F28;
  if (!qword_1EADF0F28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0EE0, &qword_192238430);
    sub_192159D84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF0F28);
  }

  return result;
}

unint64_t sub_1920494E8()
{
  result = qword_1EADECF10;
  if (!qword_1EADECF10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADEECD0, &qword_1922363D0);
    sub_1921435EC(&qword_1EADECF18, MEMORY[0x1E6968278], MEMORY[0x1E6968290]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADECF10);
  }

  return result;
}

uint64_t objectdestroyTm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = (*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0330, &qword_192233780);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1922261D0();
    (*(*(v4 - 8) + 8))(v1 + v3, v4);
  }

  else
  {
  }

  sub_19207A338(*(v1 + v3 + *(v2 + 20)), *(v1 + v3 + *(v2 + 20) + 8), *(v1 + v3 + *(v2 + 20) + 16));

  return swift_deallocObject();
}

uint64_t objectdestroyTm_0(void (*a1)(void), void (*a2)(void), void (*a3)(void))
{
  a1(v3[2]);
  a2(v3[4]);
  a3(v3[6]);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_1()
{
  v1 = sub_192226C60();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_2()
{
  sub_192049898(*(v0 + 16), *(v0 + 24));

  return swift_deallocObject();
}

uint64_t objectdestroyTm_3()
{
  (*(*(*(v0 + 32) - 8) + 8))(v0 + ((*(*(*(v0 + 32) - 8) + 80) + 64) & ~*(*(*(v0 + 32) - 8) + 80)));

  return swift_deallocObject();
}

double sub_192049898(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_1920498C8()
{
  type metadata accessor for WidgetEnvironment.AnyKey();
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2630, &qword_1922453C8);
  result = swift_allocObject();
  *(v0 + 16) = result;
  qword_1ED74C918 = v0;
  unk_1ED74C920 = 0xD000000000000018;
  qword_1ED74C928 = 0x8000000192249740;
  return result;
}

uint64_t sub_192049948()
{
  if (qword_1ED74AD58 != -1)
  {
    swift_once();
  }

  v0 = qword_1ED74CAD0;

  return v0;
}

uint64_t sub_1920499C8()
{
  result = swift_getKeyPath();
  qword_1ED74CAC8 = result;
  return result;
}

uint64_t sub_1920499F8()
{
  result = swift_getKeyPath();
  qword_1ED74C9E8 = result;
  return result;
}

unint64_t sub_192049A3C()
{
  result = qword_1ED74BED8;
  if (!qword_1ED74BED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74BED8);
  }

  return result;
}

unint64_t sub_192049A94()
{
  result = qword_1ED74BEE0;
  if (!qword_1ED74BEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74BEE0);
  }

  return result;
}

void sub_192049AEC()
{
  if (qword_1ED74BCA8 != -1)
  {
LABEL_44:
    swift_once();
  }

  v40 = off_1ED74BF10;
  v39 = *(off_1ED74BF10 + 2);
  if (!v39)
  {
    return;
  }

  v0 = 0;
  for (i = off_1ED74BF10 + 48; ; i += 24)
  {
    if (v0 >= v40[2])
    {
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v2 = *(i - 2);
    v3 = qword_1ED74BCC8;
    swift_retain_n();

    if (v3 != -1)
    {
      swift_once();
    }

    (*(**(v2 + 16) + 80))();
    v5 = v4;
    v7 = v6;

    swift_beginAccess();
    swift_retain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = off_1ED74BF20;
    v41 = off_1ED74BF20;
    off_1ED74BF20 = 0x8000000000000000;
    v10 = sub_1920440AC(v5, v7);
    v12 = v9[2];
    v13 = (v11 & 1) == 0;
    v14 = __OFADD__(v12, v13);
    v15 = v12 + v13;
    if (v14)
    {
      goto LABEL_39;
    }

    v16 = v11;
    if (v9[3] < v15)
    {
      sub_19204C504(v15, isUniquelyReferenced_nonNull_native);
      v10 = sub_1920440AC(v5, v7);
      if ((v16 & 1) != (v17 & 1))
      {
        goto LABEL_45;
      }

LABEL_14:
      v18 = v41;
      if (v16)
      {
        goto LABEL_15;
      }

      goto LABEL_17;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_14;
    }

    v19 = v10;
    sub_19213F250();
    v10 = v19;
    v18 = v41;
    if (v16)
    {
LABEL_15:
      *(v18[7] + 8 * v10) = v2;

      goto LABEL_19;
    }

LABEL_17:
    v18[(v10 >> 6) + 8] |= 1 << v10;
    v20 = (v18[6] + 16 * v10);
    *v20 = v5;
    v20[1] = v7;
    *(v18[7] + 8 * v10) = v2;
    v21 = v18[2];
    v14 = __OFADD__(v21, 1);
    v22 = v21 + 1;
    if (v14)
    {
      goto LABEL_42;
    }

    v18[2] = v22;
LABEL_19:
    off_1ED74BF20 = v18;
    swift_endAccess();
    if (qword_1ED74BCA0 != -1)
    {
      swift_once();
    }

    v23 = (*(**(v2 + 16) + 104))();
    swift_beginAccess();
    if ((off_1ED74BF08 & 0xC000000000000001) != 0)
    {
      if (off_1ED74BF08 < 0)
      {
        v24 = off_1ED74BF08;
      }

      else
      {
        v24 = (off_1ED74BF08 & 0xFFFFFFFFFFFFFF8);
      }

      v25 = sub_192228340();
      if (__OFADD__(v25, 1))
      {
        goto LABEL_41;
      }

      off_1ED74BF08 = sub_1920C4BAC(v24, v25 + 1);
    }

    v26 = swift_isUniquelyReferenced_nonNull_native();
    v27 = off_1ED74BF08;
    v42 = off_1ED74BF08;
    off_1ED74BF08 = 0x8000000000000000;
    v28 = sub_19204D8A4(v23);
    v30 = v27[2];
    v31 = (v29 & 1) == 0;
    v14 = __OFADD__(v30, v31);
    v32 = v30 + v31;
    if (v14)
    {
      goto LABEL_40;
    }

    v33 = v29;
    if (v27[3] < v32)
    {
      break;
    }

    if (v26)
    {
      goto LABEL_32;
    }

    v38 = v28;
    sub_19213F0EC();
    v28 = v38;
    v35 = v42;
    if (v33)
    {
LABEL_4:
      *(v35[7] + 8 * v28) = v2;

      goto LABEL_5;
    }

LABEL_33:
    v35[(v28 >> 6) + 8] |= 1 << v28;
    *(v35[6] + 8 * v28) = v23;
    *(v35[7] + 8 * v28) = v2;
    v36 = v35[2];
    v14 = __OFADD__(v36, 1);
    v37 = v36 + 1;
    if (v14)
    {
      goto LABEL_43;
    }

    v35[2] = v37;

LABEL_5:
    ++v0;
    off_1ED74BF08 = v35;

    swift_endAccess();

    if (v39 == v0)
    {
      return;
    }
  }

  sub_19204F2A8(v32, v26);
  v28 = sub_19204D8A4(v23);
  if ((v33 & 1) == (v34 & 1))
  {
LABEL_32:
    v35 = v42;
    if (v33)
    {
      goto LABEL_4;
    }

    goto LABEL_33;
  }

  sub_1922282D0();
  sub_192228A40();
  __break(1u);
LABEL_45:
  sub_192228A40();
  __break(1u);
}

void sub_192049F78()
{
  if (qword_1ED74B680 != -1)
  {
    swift_once();
  }

  v0 = off_1ED74B688;
  v1 = *(off_1ED74B688 + 2);
  if (!v1)
  {
    goto LABEL_6;
  }

  v2 = sub_19204C340(*(off_1ED74B688 + 2), 0);
  v3 = sub_1920C4A2C(&v5, v2 + 4, v1, v0);
  v4 = v5;

  sub_19204C3D0(v4);
  if (v3 != v1)
  {
    __break(1u);
LABEL_6:
    v2 = MEMORY[0x1E69E7CC0];
  }

  off_1ED74BF10 = v2;
}

void *sub_19204A06C()
{
  result = sub_19204A08C();
  off_1ED74B688 = result;
  return result;
}

uint64_t sub_19204A08C()
{
  if (qword_1ED74AC08 != -1)
  {
    swift_once();
  }

  v0 = qword_1ED74C9B0;
  v1 = *algn_1ED74C9B8;
  v2 = qword_1ED74C9C0;
  v3 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_19204AECC(1, v0, v1, v2, isUniquelyReferenced_nonNull_native);
  if (qword_1ED74AC58 != -1)
  {
    swift_once();
  }

  v5 = qword_1ED74CA10;
  v6 = *algn_1ED74CA18;
  v7 = qword_1ED74CA20;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  sub_19204AECC(2, v5, v6, v7, v8);
  if (qword_1ED74AC48 != -1)
  {
    swift_once();
  }

  v9 = qword_1ED74C9F0;
  v10 = *algn_1ED74C9F8;
  v11 = qword_1ED74CA00;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  sub_19204AECC(3, v9, v10, v11, v12);
  if (qword_1ED74AC18 != -1)
  {
    swift_once();
  }

  v13 = qword_1ED74C9D0;
  v14 = *algn_1ED74C9D8;
  v15 = qword_1ED74C9E0;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  sub_19204AECC(4, v13, v14, v15, v16);
  if (qword_1ED74ADC0 != -1)
  {
    swift_once();
  }

  v17 = qword_1ED74CB10;
  v18 = *algn_1ED74CB18;
  v19 = qword_1ED74CB20;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  sub_19204AECC(5, v17, v18, v19, v20);
  if (qword_1ED74ACE8 != -1)
  {
    swift_once();
  }

  v21 = qword_1ED74CA50;
  v22 = *algn_1ED74CA58;
  v23 = qword_1ED74CA60;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  sub_19204AECC(6, v21, v22, v23, v24);
  if (qword_1ED74ACA0 != -1)
  {
    swift_once();
  }

  v25 = qword_1ED74CA30;
  v26 = *algn_1ED74CA38;
  v27 = qword_1ED74CA40;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  sub_19204AECC(7, v25, v26, v27, v28);
  if (qword_1ED74AD58 != -1)
  {
    swift_once();
  }

  v29 = qword_1ED74CAD0;
  v30 = *algn_1ED74CAD8;
  v31 = qword_1ED74CAE0;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  sub_19204AECC(8, v29, v30, v31, v32);
  if (qword_1ED74AD48 != -1)
  {
    swift_once();
  }

  v33 = qword_1ED74CAB0;
  v34 = *algn_1ED74CAB8;
  v35 = qword_1ED74CAC0;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  sub_19204AECC(9, v33, v34, v35, v36);
  if (qword_1ED74BC98 != -1)
  {
    swift_once();
  }

  v37 = qword_1ED74CC40;
  v38 = *algn_1ED74CC48;
  v39 = qword_1ED74CC50;
  v40 = swift_isUniquelyReferenced_nonNull_native();
  sub_19204AECC(10, v37, v38, v39, v40);
  if (qword_1ED74BD00 != -1)
  {
    swift_once();
  }

  v41 = qword_1ED74CC60;
  v42 = *algn_1ED74CC68;
  v43 = qword_1ED74CC70;
  v44 = swift_isUniquelyReferenced_nonNull_native();
  sub_19204AECC(11, v41, v42, v43, v44);
  if (qword_1ED74BC70 != -1)
  {
    swift_once();
  }

  v45 = qword_1ED74CC00;
  v46 = *algn_1ED74CC08;
  v47 = qword_1ED74CC10;
  v48 = swift_isUniquelyReferenced_nonNull_native();
  sub_19204AECC(12, v45, v46, v47, v48);
  if (qword_1ED74BC88 != -1)
  {
    swift_once();
  }

  v49 = qword_1ED74CC20;
  v50 = *algn_1ED74CC28;
  v51 = qword_1ED74CC30;
  v52 = swift_isUniquelyReferenced_nonNull_native();
  sub_19204AECC(13, v49, v50, v51, v52);
  if (qword_1ED74AD08 != -1)
  {
    swift_once();
  }

  v53 = qword_1ED74CA90;
  v54 = *algn_1ED74CA98;
  v55 = qword_1ED74CAA0;
  v56 = swift_isUniquelyReferenced_nonNull_native();
  sub_19204AECC(14, v53, v54, v55, v56);
  if (qword_1ED74AD68 != -1)
  {
    swift_once();
  }

  v57 = qword_1ED74CAF0;
  v58 = *algn_1ED74CAF8;
  v59 = qword_1ED74CB00;
  v60 = swift_isUniquelyReferenced_nonNull_native();
  sub_19204AECC(16, v57, v58, v59, v60);
  if (qword_1ED74ACF8 != -1)
  {
    swift_once();
  }

  v61 = qword_1ED74CA70;
  v62 = *algn_1ED74CA78;
  v63 = qword_1ED74CA80;
  v64 = swift_isUniquelyReferenced_nonNull_native();
  sub_19204AECC(18, v61, v62, v63, v64);
  if (qword_1ED74ADE8 != -1)
  {
    swift_once();
  }

  v65 = qword_1ED74CB30;
  v66 = *algn_1ED74CB38;
  v67 = qword_1ED74CB40;
  v68 = swift_isUniquelyReferenced_nonNull_native();
  sub_19204AECC(19, v65, v66, v67, v68);
  if (qword_1ED74A9C0 != -1)
  {
    swift_once();
  }

  v69 = qword_1ED74C938;
  v70 = unk_1ED74C940;
  v71 = qword_1ED74C948;
  v72 = swift_isUniquelyReferenced_nonNull_native();
  sub_19204AECC(20, v69, v70, v71, v72);
  if (qword_1ED74AAF0 != -1)
  {
    swift_once();
  }

  v73 = qword_1ED74C990;
  v74 = *algn_1ED74C998;
  v75 = qword_1ED74C9A0;
  v76 = swift_isUniquelyReferenced_nonNull_native();
  sub_19204AECC(21, v73, v74, v75, v76);
  if (qword_1ED74A9B0 != -1)
  {
    swift_once();
  }

  v77 = qword_1ED74C918;
  v78 = unk_1ED74C920;
  v79 = qword_1ED74C928;
  v80 = swift_isUniquelyReferenced_nonNull_native();
  sub_19204AECC(22, v77, v78, v79, v80);
  if (qword_1ED74AAE0 != -1)
  {
    swift_once();
  }

  v81 = qword_1ED74C970;
  v82 = *algn_1ED74C978;
  v83 = qword_1ED74C980;
  v84 = swift_isUniquelyReferenced_nonNull_native();
  sub_19204AECC(23, v81, v82, v83, v84);
  if (qword_1ED74A920 != -1)
  {
    swift_once();
  }

  v85 = qword_1ED74C898;
  v86 = unk_1ED74C8A0;
  v87 = qword_1ED74C8A8;
  v88 = swift_isUniquelyReferenced_nonNull_native();
  sub_19204AECC(24, v85, v86, v87, v88);
  if (qword_1ED74A938 != -1)
  {
    swift_once();
  }

  v89 = qword_1ED74C8B8;
  v90 = unk_1ED74C8C0;
  v91 = qword_1ED74C8C8;
  v92 = swift_isUniquelyReferenced_nonNull_native();
  sub_19204AECC(25, v89, v90, v91, v92);
  if (qword_1ED74A998 != -1)
  {
    swift_once();
  }

  v93 = qword_1ED74C8F8;
  v94 = unk_1ED74C900;
  v95 = qword_1ED74C908;
  v96 = swift_isUniquelyReferenced_nonNull_native();
  sub_19204AECC(26, v93, v94, v95, v96);
  if (qword_1ED74A980 != -1)
  {
    swift_once();
  }

  v97 = qword_1ED74C8D8;
  v98 = unk_1ED74C8E0;
  v99 = qword_1ED74C8E8;
  v100 = swift_isUniquelyReferenced_nonNull_native();
  sub_19204AECC(27, v97, v98, v99, v100);
  if (qword_1ED74A838 != -1)
  {
    swift_once();
  }

  v101 = qword_1ED74C870;
  v102 = *algn_1ED74C878;
  v103 = qword_1ED74C880;
  v104 = swift_isUniquelyReferenced_nonNull_native();
  sub_19204AECC(28, v101, v102, v103, v104);
  if (qword_1ED74A820 != -1)
  {
    swift_once();
  }

  v105 = qword_1ED74C850;
  v106 = *algn_1ED74C858;
  v107 = qword_1ED74C860;
  v108 = swift_isUniquelyReferenced_nonNull_native();
  sub_19204AECC(29, v105, v106, v107, v108);
  if (qword_1ED74A668 != -1)
  {
    swift_once();
  }

  v109 = qword_1ED74C800;
  v110 = *algn_1ED74C808;
  v111 = qword_1ED74C810;
  v112 = swift_isUniquelyReferenced_nonNull_native();
  sub_19204AECC(30, v109, v110, v111, v112);
  if (qword_1ED74A738 != -1)
  {
    swift_once();
  }

  v113 = qword_1ED74C838;
  v114 = *byte_1ED74C840;
  v115 = qword_1ED74C848;
  v116 = swift_isUniquelyReferenced_nonNull_native();
  sub_19204AECC(31, v113, v114, v115, v116);
  if (qword_1ED74A628 != -1)
  {
    swift_once();
  }

  v117 = qword_1ED74C818;
  v118 = *byte_1ED74C820;
  v119 = qword_1ED74C828;
  v120 = swift_isUniquelyReferenced_nonNull_native();
  sub_19204AECC(33, v117, v118, v119, v120);
  if (qword_1ED74A4B8 != -1)
  {
    swift_once();
  }

  v121 = qword_1ED74C7D8;
  v122 = unk_1ED74C7E0;
  v123 = qword_1ED74C7E8;
  v124 = swift_isUniquelyReferenced_nonNull_native();
  sub_19204AECC(34, v121, v122, v123, v124);
  return v3;
}

uint64_t sub_19204ADDC()
{
  type metadata accessor for WidgetEnvironment.AnyKey();
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0B28, qword_192236798);
  result = swift_allocObject();
  *(v0 + 16) = result;
  qword_1ED74C9B0 = v0;
  *algn_1ED74C9B8 = 0xD000000000000026;
  qword_1ED74C9C0 = 0x800000019224BBB0;
  return result;
}

unint64_t sub_19204AECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  result = sub_19204437C(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_19204B41C(v18, a5 & 1);
      result = sub_19204437C(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_16:
        result = sub_192228A40();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = result;
      sub_19213E90C();
      result = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    *(v23[7] + 8 * result) = a1;
    return result;
  }

  v23[(result >> 6) + 8] |= 1 << result;
  v24 = (v23[6] + 24 * result);
  *v24 = a2;
  v24[1] = a3;
  v24[2] = a4;
  *(v23[7] + 8 * result) = a1;
  v25 = v23[2];
  v17 = __OFADD__(v25, 1);
  v26 = v25 + 1;
  if (v17)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v23[2] = v26;
}

uint64_t sub_19204B044()
{
  type metadata accessor for WidgetEnvironment.AnyKey();
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2AF8, qword_1922471F0);
  result = swift_allocObject();
  *(v0 + 16) = result;
  qword_1ED74CB30 = v0;
  *algn_1ED74CB38 = 0xD000000000000010;
  qword_1ED74CB40 = 0x800000019224F020;
  return result;
}

uint64_t sub_19204B0C4()
{
  type metadata accessor for WidgetEnvironment.AnyKey();
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2C48, &unk_192247990);
  result = swift_allocObject();
  *(v0 + 16) = result;
  qword_1ED74C938 = v0;
  unk_1ED74C940 = 0xD000000000000012;
  qword_1ED74C948 = 0x800000019224F070;
  return result;
}

unint64_t sub_19204B14C()
{
  result = qword_1ED74BF00;
  if (!qword_1ED74BF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74BF00);
  }

  return result;
}

uint64_t sub_19204B1C0()
{
  type metadata accessor for WidgetEnvironment.AnyKey();
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADF21E0, &unk_192243810);
  result = swift_allocObject();
  *(v0 + 16) = result;
  qword_1ED74CB10 = v0;
  *algn_1ED74CB18 = 0x686353726F6C6F63;
  qword_1ED74CB20 = 0xEB00000000656D65;
  return result;
}

uint64_t sub_19204B254()
{
  type metadata accessor for WidgetEnvironment.AnyKey();
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1B80, &unk_192240038);
  result = swift_allocObject();
  *(v0 + 16) = result;
  qword_1ED74CAD0 = v0;
  strcpy(algn_1ED74CAD8, "displayScale");
  BYTE5(qword_1ED74CAE0) = 0;
  HIWORD(qword_1ED74CAE0) = -5120;
  return result;
}

uint64_t sub_19204B2E8()
{
  type metadata accessor for WidgetEnvironment.AnyKey();
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFCB8, qword_192230FA0);
  result = swift_allocObject();
  *(v0 + 16) = result;
  qword_1ED74CAB0 = v0;
  *algn_1ED74CAB8 = 0xD000000000000010;
  qword_1ED74CAC0 = 0x800000019224A5B0;
  return result;
}

uint64_t sub_19204B378()
{
  type metadata accessor for WidgetEnvironment.AnyKey();
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFD08, &qword_1922313C8);
  result = swift_allocObject();
  *(v0 + 16) = result;
  qword_1ED74CC40 = v0;
  strcpy(algn_1ED74CC48, "widgetFamily");
  BYTE5(qword_1ED74CC50) = 0;
  HIWORD(qword_1ED74CC50) = -5120;
  return result;
}

void sub_19204B41C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0A68, &qword_192236278);
  v36 = v4;
  v6 = sub_1922286A0();
  v7 = v6;
  if (*(v5 + 16))
  {
    v35 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 56);
      v22 = (*(v5 + 48) + 24 * v20);
      v23 = *v22;
      v24 = v22[1];
      v25 = v22[2];
      v37 = *(v21 + 8 * v20);
      if ((v36 & 1) == 0)
      {
      }

      sub_192228AD0();
      sub_1922279B0();
      v26 = sub_192228B30();
      v27 = -1 << *(v7 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 24 * v15);
      *v16 = v23;
      v16[1] = v24;
      v16[2] = v25;
      *(*(v7 + 56) + 8 * v15) = v37;
      ++*(v7 + 16);
      v5 = v35;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

uint64_t sub_19204B6DC()
{
  type metadata accessor for WidgetEnvironment.AnyKey();
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0B20, &qword_192236790);
  result = swift_allocObject();
  *(v0 + 16) = result;
  qword_1ED74CA10 = v0;
  *algn_1ED74CA18 = 0xD000000000000019;
  qword_1ED74CA20 = 0x800000019224BB90;
  return result;
}

uint64_t sub_19204B75C()
{
  type metadata accessor for WidgetEnvironment.AnyKey();
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0B18, &qword_192236788);
  result = swift_allocObject();
  *(v0 + 16) = result;
  qword_1ED74C9F0 = v0;
  *algn_1ED74C9F8 = 0xD000000000000019;
  qword_1ED74CA00 = 0x800000019224BB70;
  return result;
}

uint64_t sub_19204B7DC()
{
  type metadata accessor for WidgetEnvironment.AnyKey();
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0B10, &qword_192236780);
  result = swift_allocObject();
  *(v0 + 16) = result;
  qword_1ED74C9D0 = v0;
  *algn_1ED74C9D8 = 0xD00000000000001FLL;
  qword_1ED74C9E0 = 0x800000019224BB50;
  return result;
}

uint64_t sub_19204B87C()
{
  type metadata accessor for WidgetEnvironment.AnyKey();
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0468, qword_192233FB0);
  result = swift_allocObject();
  *(v0 + 16) = result;
  qword_1ED74CA50 = v0;
  *algn_1ED74CA58 = 0xD000000000000013;
  qword_1ED74CA60 = 0x800000019224AFC0;
  return result;
}

uint64_t sub_19204B8FC()
{
  type metadata accessor for WidgetEnvironment.AnyKey();
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1F00, qword_192241C30);
  result = swift_allocObject();
  *(v0 + 16) = result;
  qword_1ED74CA30 = v0;
  *algn_1ED74CA38 = 0xD000000000000013;
  qword_1ED74CA40 = 0x800000019224E190;
  return result;
}

uint64_t sub_19204B98C()
{
  type metadata accessor for WidgetEnvironment.AnyKey();
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1A88, &qword_19223F3B0);
  result = swift_allocObject();
  *(v0 + 16) = result;
  qword_1ED74CC60 = v0;
  strcpy(algn_1ED74CC68, "widgetMetrics");
  HIWORD(qword_1ED74CC70) = -4864;
  return result;
}

uint64_t sub_19204BA24()
{
  type metadata accessor for WidgetEnvironment.AnyKey();
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0220, &qword_192233290);
  result = swift_allocObject();
  *(v0 + 16) = result;
  qword_1ED74CC00 = v0;
  *algn_1ED74CC08 = 0xD000000000000011;
  qword_1ED74CC10 = 0x800000019224A840;
  return result;
}

uint64_t sub_19204BAB4()
{
  type metadata accessor for WidgetEnvironment.AnyKey();
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF9D0, &qword_19222F338);
  result = swift_allocObject();
  *(v0 + 16) = result;
  qword_1ED74CC20 = v0;
  strcpy(algn_1ED74CC28, "localizations");
  HIWORD(qword_1ED74CC30) = -4864;
  return result;
}

uint64_t sub_19204BB3C()
{
  type metadata accessor for WidgetEnvironment.AnyKey();
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1808, qword_19223D050);
  result = swift_allocObject();
  *(v0 + 16) = result;
  qword_1ED74CA90 = v0;
  *algn_1ED74CA98 = 0xD000000000000010;
  qword_1ED74CAA0 = 0x800000019224CDF0;
  return result;
}

uint64_t sub_19204BBCC()
{
  type metadata accessor for WidgetEnvironment.AnyKey();
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2AB8, &unk_192246980);
  result = swift_allocObject();
  *(v0 + 16) = result;
  qword_1ED74CAF0 = v0;
  strcpy(algn_1ED74CAF8, "displayGamut");
  BYTE5(qword_1ED74CB00) = 0;
  HIWORD(qword_1ED74CB00) = -5120;
  return result;
}

uint64_t sub_19204BC60()
{
  type metadata accessor for WidgetEnvironment.AnyKey();
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF01C8, qword_192232A00);
  result = swift_allocObject();
  *(v0 + 16) = result;
  qword_1ED74CA70 = v0;
  *algn_1ED74CA78 = 0xD000000000000012;
  qword_1ED74CA80 = 0x800000019224A730;
  return result;
}

uint64_t sub_19204BCF0()
{
  type metadata accessor for WidgetEnvironment.AnyKey();
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF700, &unk_19222E270);
  result = swift_allocObject();
  *(v0 + 16) = result;
  qword_1ED74C990 = v0;
  *algn_1ED74C998 = 0xD000000000000025;
  qword_1ED74C9A0 = 0x8000000192249DD0;
  return result;
}

uint64_t sub_19204BD80()
{
  type metadata accessor for WidgetEnvironment.AnyKey();
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1950, qword_19223DC68);
  result = swift_allocObject();
  *(v0 + 16) = result;
  qword_1ED74C970 = v0;
  *algn_1ED74C978 = 0xD000000000000025;
  qword_1ED74C980 = 0x800000019224D1B0;
  return result;
}

uint64_t sub_19204BE10()
{
  type metadata accessor for WidgetEnvironment.AnyKey();
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1948, &qword_19223DC60);
  result = swift_allocObject();
  *(v0 + 16) = result;
  qword_1ED74C898 = v0;
  unk_1ED74C8A0 = 0xD00000000000002BLL;
  qword_1ED74C8A8 = 0x80000001922496F0;
  return result;
}

uint64_t sub_19204BEA0()
{
  type metadata accessor for WidgetEnvironment.AnyKey();
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1010, qword_192238A90);
  result = swift_allocObject();
  *(v0 + 16) = result;
  qword_1ED74C8B8 = v0;
  unk_1ED74C8C0 = 0xD000000000000025;
  qword_1ED74C8C8 = 0x800000019224C0A0;
  return result;
}

uint64_t sub_19204BF30()
{
  type metadata accessor for WidgetEnvironment.AnyKey();
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1370, &qword_19223A9C8);
  result = swift_allocObject();
  *(v0 + 16) = result;
  qword_1ED74C8F8 = v0;
  unk_1ED74C900 = 0xD000000000000010;
  qword_1ED74C908 = 0x800000019224C4E0;
  return result;
}

uint64_t sub_19204BFC0()
{
  type metadata accessor for WidgetEnvironment.AnyKey();
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0218, qword_1922330C8);
  result = swift_allocObject();
  *(v0 + 16) = result;
  qword_1ED74C8D8 = v0;
  unk_1ED74C8E0 = 0xD00000000000001CLL;
  qword_1ED74C8E8 = 0x800000019224A820;
  return result;
}

uint64_t sub_19204C050()
{
  type metadata accessor for WidgetEnvironment.AnyKey();
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF13C8, &qword_19223AE38);
  result = swift_allocObject();
  *(v0 + 16) = result;
  qword_1ED74C870 = v0;
  strcpy(algn_1ED74C878, "activityFamily");
  HIBYTE(qword_1ED74C880) = -18;
  return result;
}

uint64_t sub_19204C0E8()
{
  type metadata accessor for WidgetEnvironment.AnyKey();
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFB78, &qword_192230298);
  result = swift_allocObject();
  *(v0 + 16) = result;
  qword_1ED74C850 = v0;
  *algn_1ED74C858 = 0xD00000000000001ALL;
  qword_1ED74C860 = 0x8000000192249720;
  return result;
}

uint64_t sub_19204C178()
{
  type metadata accessor for WidgetEnvironment.AnyKey();
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2680, &unk_1922456D0);
  result = swift_allocObject();
  *(v0 + 16) = result;
  qword_1ED74C800 = v0;
  strcpy(algn_1ED74C808, "archiveVersion");
  HIBYTE(qword_1ED74C810) = -18;
  return result;
}

uint64_t sub_19204C210()
{
  type metadata accessor for WidgetEnvironment.AnyKey();
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFBD0, &unk_192230880);
  result = swift_allocObject();
  *(v0 + 16) = result;
  qword_1ED74C838 = v0;
  strcpy(byte_1ED74C840, "isRemoteWidget");
  HIBYTE(qword_1ED74C848) = -18;
  return result;
}

uint64_t sub_19204C2A8()
{
  type metadata accessor for WidgetEnvironment.AnyKey();
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0CD0, qword_192237620);
  result = swift_allocObject();
  *(v0 + 16) = result;
  qword_1ED74C818 = v0;
  strcpy(byte_1ED74C820, "levelOfDetail");
  HIWORD(qword_1ED74C828) = -4864;
  return result;
}

void *sub_19204C340(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEF4E0, &qword_19222D8C0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 2) + (v7 >> 63));
  return result;
}

void *sub_19204C3D8()
{
  result = sub_19204C400(MEMORY[0x1E69E7CC0]);
  off_1ED74BF20 = result;
  return result;
}

unint64_t sub_19204C400(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0A78, &qword_192236288);
    v3 = sub_1922286C0();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1920440AC(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void sub_19204C504(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0A78, &qword_192236288);
  v35 = v4;
  v6 = sub_1922286A0();
  v7 = v6;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {
      }

      sub_192228AD0();
      sub_1922279B0();
      v25 = sub_192228B30();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void *sub_19204C7AC()
{
  result = sub_19204F150(MEMORY[0x1E69E7CC0]);
  off_1ED74BF08 = result;
  return result;
}

uint64_t sub_19204C808()
{
  if (qword_1ED74AD50 != -1)
  {
    swift_once();
  }
}

uint64_t sub_19204C864(uint64_t a1)
{
  v2 = type metadata accessor for WidgetViewMetadata(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_19204C8C0(uint64_t a1, unint64_t a2)
{
  if (qword_1ED74BCA0 != -1)
  {
    goto LABEL_16;
  }

  while (1)
  {
    swift_beginAccess();
    v4 = sub_192046E20(a2, off_1ED74BF08);
    v5 = swift_endAccess();
    if (!v4)
    {
      break;
    }

    v6 = (*(**(v4 + 16) + 80))(v5);
    v10 = v6;
    v11 = v7;
    v12 = v8;
    if (!a1)
    {
      v20 = 0;
LABEL_14:
      sub_192047008(v20, v10, v11, v12, v9);

      return;
    }

    v23 = v8;
    v24 = v7;
    v25 = v6;
    v28 = MEMORY[0x1E69E7CC0];
    v13 = *(a1 + 16);
    if (!v13)
    {
      v26 = MEMORY[0x1E69E7CC0];
LABEL_13:

      v10 = v25;
      v12 = v23;
      v11 = v24;
      v20 = v26;
      goto LABEL_14;
    }

    v14 = 0;
    v22 = a2;
    v15 = MEMORY[0x1E69E6370];
    while (1)
    {
      a2 = v14;
      if (v14 >= *(a1 + 16))
      {
        break;
      }

      ++v14;
      v16 = *(a1 + 32 + a2);
      v27[3] = v15;
      LOBYTE(v27[0]) = v16;
      v21 = (*(**(v4 + 16) + 128))(v27);
      __swift_destroy_boxed_opaque_existential_1(v27);
      type metadata accessor for WidgetEnvironment.AnyKeyValueTuple();
      v17 = swift_allocObject();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF5F0, &qword_19222D9F8);
      v18 = swift_allocObject();
      *(v18 + 16) = v22;
      *(v18 + 24) = v16;
      *(v18 + 32) = v4;
      *(v17 + 16) = v18;
      *(v17 + 24) = v21;

      MEMORY[0x193B0AB00](v19);
      if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_192227BB0();
      }

      sub_192227C00();
      v26 = v28;
      if (v13 - 1 == a2)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_16:
    swift_once();
  }

  v27[0] = 0;
  v27[1] = 0xE000000000000000;
  sub_192228400();
  MEMORY[0x193B0A990](0xD000000000000028, 0x80000001922489A0);
  v28 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEC38, &qword_19222D9F0);
  sub_1922285A0();
  sub_192228620();
  __break(1u);
}

uint64_t sub_19204CC18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_19204CC80(uint64_t a1, uint64_t a2)
{
  if (qword_1ED74BCA0 != -1)
  {
    goto LABEL_16;
  }

  while (1)
  {
    swift_beginAccess();
    v4 = sub_192046E20(a2, off_1ED74BF08);
    v5 = swift_endAccess();
    if (!v4)
    {
      break;
    }

    v6 = (*(**(v4 + 16) + 80))(v5);
    v10 = v6;
    v11 = v7;
    v12 = v8;
    if (!a1)
    {
      v20 = 0;
LABEL_14:
      sub_192047008(v20, v10, v11, v12, v9);

      return;
    }

    v22 = v8;
    v23 = v7;
    v24 = v6;
    v28 = MEMORY[0x1E69E7CC0];
    v13 = *(a1 + 16);
    if (!v13)
    {
      v26 = MEMORY[0x1E69E7CC0];
LABEL_13:

      v10 = v24;
      v12 = v22;
      v11 = v23;
      v20 = v26;
      goto LABEL_14;
    }

    v21 = a2;
    v14 = 0;
    a2 = a1 + 32;
    while (1)
    {
      v15 = v14;
      if (v14 >= *(a1 + 16))
      {
        break;
      }

      v16 = *(a2 + v14++);
      v27[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEEBC0, &qword_19222D980);
      LOBYTE(v27[0]) = v16;
      v25 = (*(**(v4 + 16) + 128))(v27);
      __swift_destroy_boxed_opaque_existential_1(v27);
      type metadata accessor for WidgetEnvironment.AnyKeyValueTuple();
      v17 = swift_allocObject();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF588, &unk_19222D988);
      v18 = swift_allocObject();
      *(v18 + 16) = v21;
      *(v18 + 24) = v16;
      *(v18 + 32) = v4;
      *(v17 + 16) = v18;
      *(v17 + 24) = v25;

      MEMORY[0x193B0AB00](v19);
      if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_192227BB0();
      }

      sub_192227C00();
      v26 = v28;
      if (v13 - 1 == v15)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_16:
    swift_once();
  }

  v27[0] = 0;
  v27[1] = 0xE000000000000000;
  sub_192228400();
  MEMORY[0x193B0A990](0xD000000000000028, 0x80000001922489A0);
  v28 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEBB8, &unk_19222AFA0);
  sub_1922285A0();
  sub_192228620();
  __break(1u);
}

uint64_t sub_19204CFF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetViewMetadata(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_19204D058(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = sub_192225150();
  v19 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v22 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFA10, &qword_19222F5B8);
  v20 = *(v6 - 8);
  v21 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v18 - v7;
  v9 = type metadata accessor for WidgetArchivableMetadata.EntryMetadata(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = &v11[*(v12 + 28)];
  *v13 = 0;
  *(v13 + 1) = 0;
  v13[16] = 1;
  v23 = &v11[*(v12 + 32)];
  *v23 = xmmword_19222A790;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_19204D7FC();
  sub_192228B70();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_192046ED4(*v23, *(v23 + 1));
  }

  else
  {
    v14 = v20;
    LOBYTE(v24) = 0;
    sub_19203EDF0(qword_1ED748810, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
    sub_1922287C0();
    (*(v19 + 32))(v11, v22, v4);
    v26 = 1;
    sub_19204D850();
    sub_192228750();
    v15 = v25;
    *v13 = v24;
    v13[16] = v15;
    v26 = 2;
    sub_192047340();
    sub_192228750();
    (*(v14 + 8))(v8, v21);
    v16 = v24;
    v17 = v23;
    sub_192046ED4(*v23, *(v23 + 1));
    *v17 = v16;
    sub_19204CC18(v11, v18, type metadata accessor for WidgetArchivableMetadata.EntryMetadata);
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_192046FA8(v11, type metadata accessor for WidgetArchivableMetadata.EntryMetadata);
  }
}

uint64_t sub_19204D458(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_19204437C(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v2;
  v11 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_19207804C();
    v8 = v11;
  }

  v9 = *(*(v8 + 56) + 8 * v6);
  sub_1920781D4(v6, v8);
  *v3 = v8;
  return v9;
}

unint64_t sub_19204D530()
{
  v1 = *v0;
  v2 = 7107189;
  v3 = 0xD000000000000014;
  if (v1 == 5)
  {
    v3 = 0xD000000000000012;
  }

  if (v1 != 3)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0 > 4u)
  {
    v2 = v3;
  }

  v4 = 0xD000000000000012;
  v5 = 0xD000000000000019;
  if (v1 != 1)
  {
    v5 = 0xD00000000000001BLL;
  }

  if (*v0)
  {
    v4 = v5;
  }

  if (*v0 <= 2u)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_19204D610()
{
  v1 = 0x636E6176656C6572;
  if (*v0 != 1)
  {
    v1 = 0x7461447972746E65;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1702125924;
  }
}

uint64_t sub_19204D670(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADEF9F8, &qword_19222F590);
    sub_19203EDF0(a2, type metadata accessor for WidgetArchivableMetadata.EntryMetadata, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_19204D70C()
{
  result = qword_1ED74A2C8;
  if (!qword_1ED74A2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74A2C8);
  }

  return result;
}

uint64_t sub_19204D760(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADEFA00, &qword_19222F598);
    sub_19203EDF0(a2, type metadata accessor for WidgetViewMetadata, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_19204D7FC()
{
  result = qword_1ED74B0B8;
  if (!qword_1ED74B0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74B0B8);
  }

  return result;
}

unint64_t sub_19204D850()
{
  result = qword_1ED7485B0;
  if (!qword_1ED7485B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7485B0);
  }

  return result;
}

unint64_t sub_19204D8A4(uint64_t a1)
{
  sub_1922282D0();
  v2 = sub_192227880();
  return sub_19204D914(a1, v2);
}

unint64_t sub_19204D914(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_1922282D0();
    do
    {
      if (sub_192227910())
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_19204D9E0()
{
  if (qword_1ED74A938 != -1)
  {
    swift_once();
  }

  v0 = qword_1ED74C8B8;

  return v0;
}

uint64_t sub_19204DA60()
{
  if (qword_1ED74A998 != -1)
  {
    swift_once();
  }

  v0 = qword_1ED74C8F8;

  return v0;
}

uint64_t sub_19204DAE0()
{
  if (qword_1ED74A980 != -1)
  {
    swift_once();
  }

  v0 = qword_1ED74C8D8;

  return v0;
}

uint64_t sub_19204DB60()
{
  if (qword_1ED74A668 != -1)
  {
    swift_once();
  }

  v0 = qword_1ED74C800;

  return v0;
}

uint64_t sub_19204DBE0()
{
  if (qword_1ED74A738 != -1)
  {
    swift_once();
  }

  v0 = qword_1ED74C838;

  return v0;
}

uint64_t WidgetViewMetadata.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF218, &qword_19223B3F0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v38 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v37 = &v33 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE10, &unk_19222B630);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v36 = &v33 - v8;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF228, &qword_19222C4B8);
  v35 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v10 = &v33 - v9;
  v11 = type metadata accessor for WidgetViewMetadata(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 28);
  v16 = sub_192225020();
  v17 = *(*(v16 - 8) + 56);
  v44 = v15;
  v17(&v13[v15], 1, 1, v16);
  v18 = *(v11 + 32);
  v19 = sub_192226BA0();
  v20 = *(*(v19 - 8) + 56);
  v43 = v18;
  v20(&v13[v18], 1, 1, v19);
  v41 = *(v11 + 36);
  v20(&v13[v41], 1, 1, v19);
  v21 = a1[3];
  v42 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_19204D70C();
  v22 = v10;
  v23 = v40;
  sub_192228B70();
  if (v23)
  {
    v28 = v41;
    __swift_destroy_boxed_opaque_existential_1(v42);
    sub_192033970(&v13[v44], &qword_1EADEEE10, &unk_19222B630);
    sub_192033970(&v13[v43], &qword_1EADEF218, &qword_19223B3F0);
    return sub_192033970(&v13[v28], &qword_1EADEF218, &qword_19223B3F0);
  }

  else
  {
    v40 = v11;
    v25 = v36;
    v24 = v37;
    v26 = v38;
    v27 = v35;
    v51 = 0;
    *v13 = sub_192228770() & 1;
    v50 = 1;
    v13[1] = sub_192228770() & 1;
    v49 = 2;
    v13[2] = sub_192228740();
    v48 = 3;
    sub_19203D6B4(qword_1ED7488E8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FD0]);
    sub_192228750();
    sub_19204193C(v25, &v13[v44], &qword_1EADEEE10, &unk_19222B630);
    v47 = 4;
    sub_19203D6B4(&qword_1ED7486A0, MEMORY[0x1E697CB40], MEMORY[0x1E697CB50]);
    sub_192228750();
    sub_19204193C(v24, &v13[v43], &qword_1EADEF218, &qword_19223B3F0);
    v46 = 5;
    sub_192228750();
    sub_19204193C(v26, &v13[v41], &qword_1EADEF218, &qword_19223B3F0);
    v45 = 6;
    v29 = sub_192228740();
    v30 = v27;
    LOBYTE(v24) = v29;
    v31 = *(v40 + 40);
    (*(v30 + 8))(v22, v39);
    v13[v31] = v24;
    sub_19204CFF4(v13, v34);
    __swift_destroy_boxed_opaque_existential_1(v42);
    return sub_19204C864(v13);
  }
}

uint64_t storeEnumTagSinglePayload for WidgetViewMetadata.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for TimelineEntryRelevance(uint64_t result, int a2, int a3)
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

uint64_t sub_19204E300(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_19204E368()
{
  result = qword_1ED7486A8;
  if (!qword_1ED7486A8)
  {
    sub_192225150();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7486A8);
  }

  return result;
}

uint64_t sub_19204E3C0(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(void))
{
  v21 = a5;
  v8 = a2(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v20 - v10;
  v12 = *(a1 + 16);
  v13 = MEMORY[0x1E69E7CC0];
  if (v12)
  {
    v25 = MEMORY[0x1E69E7CC0];
    sub_19204E6AC(0, v12, 0);
    v13 = v25;
    v14 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v15 = *(v9 + 72);
    do
    {
      sub_19204E6EC(v14, v11, a3);
      v25 = v13;
      v17 = *(v13 + 16);
      v16 = *(v13 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_19204E6AC((v16 > 1), v17 + 1, 1);
        v13 = v25;
      }

      v23 = v8;
      v24 = a4;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v22);
      sub_19204E6EC(v11, boxed_opaque_existential_1, a3);
      *(v13 + 16) = v17 + 1;
      sub_19203832C(&v22, v13 + 40 * v17 + 32);
      sub_192046EE8(v11, v21);
      v14 += v15;
      --v12;
    }

    while (v12);
  }

  return v13;
}

void *sub_19204E564(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_19204E6AC(void *a1, int64_t a2, char a3)
{
  result = sub_19204E564(a1, a2, a3, *v3, &unk_1EADEF4B0, &unk_19222AFB0, &qword_1EADEEBD0, &qword_1922349A0);
  *v3 = result;
  return result;
}

uint64_t sub_19204E6EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_19204E754(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_19204E7D0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1 + OBJC_IVAR____TtC9WidgetKit31_TimelineArchivedViewCollection_metadata;
  v4 = type metadata accessor for WidgetArchivableMetadata(0);
  return sub_1920555AC(v3 + *(v4 + 24), a1, type metadata accessor for BundleStub);
}

uint64_t type metadata accessor for _TimelineArchivedViewCollection(uint64_t a1)
{
  result = qword_1ED748578;
  if (!qword_1ED748578)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_19204E878@<X0>(uint64_t *a1@<X8>)
{
  v36 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0CD8, &unk_192237800);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v34 = &v32[-v3];
  v4 = type metadata accessor for WidgetArchivableMetadata(0);
  v5 = (v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v32[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v32[-v9];
  sub_1920555AC(v1 + OBJC_IVAR____TtC9WidgetKit31_TimelineArchivedViewCollection_metadata, v7, type metadata accessor for WidgetArchivableMetadata);
  v11 = *&v7[v5[10]];
  v12 = *&v7[v5[9]];
  sub_1920555AC(&v7[v5[8]], &v10[v5[8]], type metadata accessor for BundleStub);
  v13 = *&v7[v5[11]];
  sub_1920555AC(&v7[v5[13]], &v10[v5[13]], type metadata accessor for TimelineReloadPolicy);
  v14 = v5[7];
  v15 = sub_192225150();
  (*(*(v15 - 8) + 16))(&v10[v14], &v7[v14], v15);
  v16 = v11;
  v17 = v12;

  v18 = *v7;
  v35 = type metadata accessor for WidgetArchivableMetadata;
  sub_192055614(v7, type metadata accessor for WidgetArchivableMetadata);
  *&v10[v5[10]] = v16;
  *&v10[v5[9]] = v17;
  *&v10[v5[11]] = v13;
  *v10 = v18;
  *&v10[v5[12]] = MEMORY[0x1E69E7CC0];
  sub_1920555AC(v10, v7, type metadata accessor for WidgetArchivableMetadata);
  v19 = sub_1922266C0();
  v20 = *(*(v19 - 8) + 56);
  v21 = v34;
  v20(v34, 1, 1, v19);
  v22 = v37;
  swift_beginAccess();
  v33 = *(v22 + 16);
  v23 = type metadata accessor for _TimelineArchivedViewCollection(0);
  v24 = swift_allocObject();
  swift_beginAccess();
  *(v24 + 16) = byte_1ED74B5B8;
  v25 = OBJC_IVAR____TtC9WidgetKit31_TimelineArchivedViewCollection____lazy_storage___dateRange;
  v26 = sub_192224E00();
  (*(*(v26 - 8) + 56))(v24 + v25, 1, 1, v26);
  v27 = OBJC_IVAR____TtC9WidgetKit31_TimelineArchivedViewCollection_archivedStates;
  v20((v24 + OBJC_IVAR____TtC9WidgetKit31_TimelineArchivedViewCollection_archivedStates), 1, 1, v19);
  sub_1920556D4(v7, v24 + OBJC_IVAR____TtC9WidgetKit31_TimelineArchivedViewCollection_metadata, type metadata accessor for WidgetArchivableMetadata);
  swift_beginAccess();
  sub_19214D94C(v21, v24 + v27);
  swift_endAccess();
  sub_192033970(v21, &qword_1EADF0CD8, &unk_192237800);
  swift_beginAccess();
  *(v24 + 16) = v33;
  *(v24 + 24) = MEMORY[0x1E69E7CD0];
  v28 = v37;
  swift_beginAccess();
  v29 = *(v28 + 24);
  swift_beginAccess();
  *(v24 + 24) = v29;
  v30 = v36;
  v36[3] = v23;
  v30[4] = &protocol witness table for _TimelineArchivedViewCollection;
  *v30 = v24;

  return sub_192055614(v10, v35);
}

uint64_t _TimelineArchivedViewCollection.__deallocating_deinit()
{

  sub_192033970(v0 + OBJC_IVAR____TtC9WidgetKit31_TimelineArchivedViewCollection____lazy_storage___dateRange, &qword_1EADEE9F0, &qword_19222A7A0);
  sub_192055614(v0 + OBJC_IVAR____TtC9WidgetKit31_TimelineArchivedViewCollection_metadata, type metadata accessor for WidgetArchivableMetadata);
  sub_192033970(v0 + OBJC_IVAR____TtC9WidgetKit31_TimelineArchivedViewCollection_archivedStates, &qword_1EADF0CD8, &unk_192237800);

  return swift_deallocClassInstance();
}

uint64_t TimelineViewCollection.effectiveReloadDate.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEED10, &unk_19222B0F0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v26 - v7;
  v9 = sub_192225150();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v26 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v26 - v17;
  sub_192055D08(a1, a2, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1920418D4(v8);
    v19 = 1;
  }

  else
  {
    v27 = a3;
    v26 = *(v10 + 32);
    v26(v18, v8, v9);
    (*(a2 + 56))(a1, a2);

    (*(a2 + 40))(a1, a2);
    sub_1922250E0();
    v20 = *(v10 + 8);
    v20(v12, v9);
    sub_19204E368();
    v21 = sub_1922278C0();
    v22 = (v21 & 1) == 0;
    if (v21)
    {
      v23 = v18;
    }

    else
    {
      v23 = v15;
    }

    if (v22)
    {
      v24 = v18;
    }

    else
    {
      v24 = v15;
    }

    v20(v23, v9);
    v26(v27, v24, v9);
    a3 = v27;
    v19 = 0;
  }

  return (*(v10 + 56))(a3, v19, 1, v9);
}

uint64_t sub_19204F094()
{
  type metadata accessor for WidgetArchivableMetadata(0);

  v1 = sub_192041F58(v0);

  return v1;
}

uint64_t getEnumTagSinglePayload for TimelineEntryRelevance(uint64_t a1, int a2)
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

__n128 sub_19204F134@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  v3 = (v2 + *(a1 + 20));
  v4 = v3[1].n128_u8[0];
  result = *v3;
  *a2 = *v3;
  a2[1].n128_u8[0] = v4;
  return result;
}

unint64_t sub_19204F150(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF4F0, &qword_19222D8C8);
    v3 = sub_1922286C0();

    for (i = (a1 + 40); ; i += 2)
    {
      v6 = *(i - 1);
      v5 = *i;

      result = sub_19204D8A4(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_19204F278()
{
  result = swift_getKeyPath();
  qword_1ED74CAA8 = result;
  return result;
}

void sub_19204F2A8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF4F0, &qword_19222D8C8);
  v33 = v4;
  v6 = sub_1922286A0();
  v7 = v6;
  if (*(v5 + 16))
  {
    v32 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(v5 + 56);
      v21 = *(*(v5 + 48) + 8 * v19);
      v22 = *(v20 + 8 * v19);
      if ((v33 & 1) == 0)
      {
      }

      sub_1922282D0();
      v23 = sub_192227880();
      v24 = -1 << *(v7 + 32);
      v25 = v23 & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      *(*(v7 + 56) + 8 * v15) = v22;
      ++*(v7 + 16);
      v5 = v32;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v2;
    if (v31 >= 64)
    {
      bzero(v9, ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

uint64_t sub_19204F54C()
{
  result = swift_getKeyPath();
  qword_1ED74CB08 = result;
  return result;
}

uint64_t sub_19204F57C()
{
  result = swift_getKeyPath();
  qword_1ED74CA08 = result;
  return result;
}

uint64_t sub_19204F5AC()
{
  result = swift_getKeyPath();
  qword_1ED74CA68 = result;
  return result;
}

uint64_t sub_19204F5DC()
{
  result = swift_getKeyPath();
  qword_1ED74CC18 = result;
  return result;
}

uint64_t sub_19204F614()
{
  if (qword_1ED74A930 != -1)
  {
    swift_once();
  }
}

uint64_t sub_19204F670()
{
  result = swift_getKeyPath();
  qword_1ED74C8B0 = result;
  return result;
}

uint64_t sub_19204F6A8()
{
  if (qword_1ED74A838 != -1)
  {
    swift_once();
  }

  v0 = qword_1ED74C870;

  return v0;
}

uint64_t sub_19204F728()
{
  if (qword_1ED74A840 != -1)
  {
    swift_once();
  }
}

uint64_t sub_19204F784()
{
  result = swift_getKeyPath();
  qword_1ED74CC58 = result;
  return result;
}

uint64_t sub_19204F7BC()
{
  result = swift_getKeyPath();
  qword_1ED74C910 = result;
  return result;
}

uint64_t sub_19204F7F4()
{
  result = swift_getKeyPath();
  qword_1ED74CC38 = result;
  return result;
}

uint64_t sub_19204F82C()
{
  result = swift_getKeyPath();
  qword_1ED74C9C8 = result;
  return result;
}

uint64_t sub_19204F880()
{
  result = swift_getKeyPath();
  qword_1ED74C968 = result;
  return result;
}

uint64_t sub_19204F8B0()
{
  if (qword_1ED74A990 != -1)
  {
    swift_once();
  }
}

uint64_t sub_19204F90C()
{
  result = swift_getKeyPath();
  qword_1ED74C8F0 = result;
  return result;
}

uint64_t sub_19204F944()
{
  if (qword_1ED74AD68 != -1)
  {
    swift_once();
  }

  v0 = qword_1ED74CAF0;

  return v0;
}

uint64_t sub_19204F9C4()
{
  if (qword_1ED74AD60 != -1)
  {
    swift_once();
  }
}

uint64_t sub_19204FA20()
{
  result = swift_getKeyPath();
  qword_1ED74CAE8 = result;
  return result;
}

uint64_t sub_19204FA50()
{
  result = swift_getKeyPath();
  qword_1ED74C988 = result;
  return result;
}

uint64_t sub_19204FA88()
{
  result = swift_getKeyPath();
  qword_1ED74C7F0 = result;
  return result;
}

uint64_t sub_19204FADC()
{
  result = swift_getKeyPath();
  qword_1ED74C890 = result;
  return result;
}

uint64_t sub_19204FB0C()
{
  if (qword_1ED74A978 != -1)
  {
    swift_once();
  }
}

uint64_t sub_19204FB68()
{
  if (qword_1ED74A730 != -1)
  {
    swift_once();
  }
}

uint64_t sub_19204FBC4()
{
  result = swift_getKeyPath();
  qword_1ED74C830 = result;
  return result;
}

uint64_t sub_19204FBFC()
{
  if (qword_1ED74A660 != -1)
  {
    swift_once();
  }
}

uint64_t sub_19204FC58()
{
  result = swift_getKeyPath();
  qword_1ED74C7F8 = result;
  return result;
}

uint64_t sub_19204FC8C()
{
  result = swift_getKeyPath();
  qword_1ED74C9A8 = result;
  return result;
}

uint64_t sub_19204FCBC()
{
  result = swift_getKeyPath();
  qword_1ED74C868 = result;
  return result;
}

uint64_t sub_19204FCF4()
{
  result = swift_getKeyPath();
  qword_1ED74C888 = result;
  return result;
}

uint64_t sub_19204FD1C()
{
  result = swift_getKeyPath();
  qword_1ED74CA28 = result;
  return result;
}

uint64_t sub_19204FD4C()
{
  result = swift_getKeyPath();
  qword_1ED74CA48 = result;
  return result;
}

uint64_t sub_19204FD7C()
{
  result = swift_getKeyPath();
  qword_1ED74C930 = result;
  return result;
}

uint64_t sub_19204FDB4()
{
  result = swift_getKeyPath();
  qword_1ED74C8D0 = result;
  return result;
}

uint64_t sub_19204FDEC()
{
  result = swift_getKeyPath();
  qword_1ED74CA88 = result;
  return result;
}

uint64_t sub_19204FE1C()
{
  result = swift_getKeyPath();
  qword_1ED74CB28 = result;
  return result;
}

uint64_t sub_19204FE4C()
{
  result = swift_getKeyPath();
  qword_1ED74CBF8 = result;
  return result;
}

unint64_t sub_19204FE88()
{
  result = qword_1ED74AA20;
  if (!qword_1ED74AA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74AA20);
  }

  return result;
}

uint64_t sub_19204FEDC(uint64_t a1)
{
  v2 = type metadata accessor for _ClockHandRotationEffect(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t WidgetEnvironment.encode(to:)(void *a1)
{
  v2 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v3 = v2;
  sub_192228B80();
  __swift_mutable_project_boxed_opaque_existential_1(v6, v6[3]);
  type metadata accessor for WidgetEnvironment.Storage();
  sub_1920C80A8(&qword_1ED74B598, v4, type metadata accessor for WidgetEnvironment.Storage, &protocol conformance descriptor for WidgetEnvironment.Storage);
  sub_1922289C0();

  return __swift_destroy_boxed_opaque_existential_1(v6);
}

id sub_192050078()
{
  result = [objc_allocWithZone(MEMORY[0x1E69943F0]) initWithSize:0.0 cornerRadius:{0.0, 0.0}];
  qword_1ED74CBF0 = result;
  return result;
}

void sub_1920500B8(uint64_t a1)
{
  sub_192050160();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_192050160()
{
  if (!qword_1ED74AB00)
  {
    v0 = sub_192225520();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED74AB00);
    }
  }
}

void *sub_1920501B0()
{
  type metadata accessor for WidgetArchiverAssertionTracker();
  v0 = swift_allocObject();
  result = sub_1920501EC();
  qword_1EAE00780 = v0;
  return result;
}

void *sub_1920501EC()
{
  v1 = v0;
  v16 = sub_192228070();
  v2 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v4 = v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_192228050();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_192227790();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = sub_19202A7A8(0, &qword_1ED74C690, 0x1E69E9610);
  v15[0] = "Timeline archive file reading";
  v15[1] = v7;
  sub_192227750();
  v17 = MEMORY[0x1E69E7CC0];
  sub_19202A7F0(&qword_1ED74C5D8, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADF22E0, &qword_19222B820);
  sub_19202A880(&unk_1ED74C5E0, &unk_1EADF22E0, &qword_19222B820);
  sub_1922282F0();
  (*(v2 + 104))(v4, *MEMORY[0x1E69E8090], v16);
  v8 = sub_1922280A0();
  v0[3] = 0;
  v0[4] = 0;
  v0[2] = v8;
  v9 = [objc_opt_self() currentProcess];
  v10 = [v9 pid];

  v1[5] = [objc_opt_self() targetWithPid_];
  v11 = sub_192227930();
  v12 = sub_192227930();
  v13 = [objc_opt_self() attributeWithDomain:v11 name:v12];

  v1[6] = v13;
  return v1;
}

unint64_t sub_192050538()
{
  result = qword_1ED74AA40;
  if (!qword_1ED74AA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74AA40);
  }

  return result;
}

unint64_t sub_192050590()
{
  result = qword_1ED74AA48;
  if (!qword_1ED74AA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74AA48);
  }

  return result;
}

unint64_t sub_1920505E8()
{
  result = qword_1ED74A9E0;
  if (!qword_1ED74A9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74A9E0);
  }

  return result;
}

unint64_t sub_19205063C()
{
  result = qword_1ED74A9E8;
  if (!qword_1ED74A9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74A9E8);
  }

  return result;
}

uint64_t sub_1920506BC(uint64_t a1, uint64_t *a2, void *a3, id *a4, uint64_t a5)
{
  v8 = sub_1922258B0();
  __swift_allocate_value_buffer(v8, a2);
  __swift_project_value_buffer(v8, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v9 = *a4;
  return sub_1922258C0();
}

uint64_t sub_19205076C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_1920507D4();
  result = sub_192228210();
  *a4 = result;
  return result;
}

unint64_t sub_1920507D4()
{
  result = qword_1ED74BB08;
  if (!qword_1ED74BB08)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED74BB08);
  }

  return result;
}

void sub_192050820(uint64_t a1)
{
  sub_192225150();
  if (v1 <= 0x3F)
  {
    type metadata accessor for BundleStub(319);
    if (v2 <= 0x3F)
    {
      sub_19202A7A8(319, &qword_1ED74BB40, 0x1E6994370);
      if (v3 <= 0x3F)
      {
        sub_1920509F0(319, &qword_1ED74A168, type metadata accessor for WidgetArchivableMetadata.EntryMetadata);
        if (v4 <= 0x3F)
        {
          sub_1920509F0(319, &qword_1ED74A170, type metadata accessor for WidgetViewMetadata);
          if (v5 <= 0x3F)
          {
            type metadata accessor for TimelineReloadPolicy(319);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_192050964(uint64_t a1)
{
  sub_19203F7F4(319);
  if (v1 <= 0x3F)
  {
    sub_192228100();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1920509F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_192227C40();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_192050A44(uint64_t a1)
{
  sub_192225150();
  if (v1 <= 0x3F)
  {
    sub_192040778(319, qword_1ED74A3B8, &type metadata for TimelineEntryRelevance);
    if (v2 <= 0x3F)
    {
      sub_192040778(319, &qword_1ED74A2D0, MEMORY[0x1E6969080]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_192050B00(uint64_t a1)
{
  sub_192050B6C(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_192050B6C(uint64_t a1)
{
  if (!qword_1ED74B858)
  {
    sub_192225150();
    v1 = sub_192228240();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED74B858);
    }
  }
}

uint64_t sub_192050BC4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1B30, &qword_19223FB18);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = v7 - v1;
  v3 = sub_1922285D0();
  __swift_allocate_value_buffer(v3, qword_1ED74C6B8);
  v4 = __swift_project_value_buffer(v3, qword_1ED74C6B8);
  v7[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1B38, &qword_19223FB20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1B40, &unk_19223FB28);
  sub_192227990();
  sub_1922285C0();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

unint64_t sub_192050D2C()
{
  result = qword_1ED74B080;
  if (!qword_1ED74B080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74B080);
  }

  return result;
}

unint64_t sub_192050D84()
{
  result = qword_1ED74B088;
  if (!qword_1ED74B088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74B088);
  }

  return result;
}

unint64_t sub_192050DEC()
{
  result = qword_1ED74AB58;
  if (!qword_1ED74AB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74AB58);
  }

  return result;
}

unint64_t sub_192050E44()
{
  result = qword_1ED74AB60;
  if (!qword_1ED74AB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74AB60);
  }

  return result;
}

unint64_t sub_192050EAC()
{
  result = qword_1ED74BB18;
  if (!qword_1ED74BB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74BB18);
  }

  return result;
}

unint64_t sub_192050F04()
{
  result = qword_1ED74BB20;
  if (!qword_1ED74BB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74BB20);
  }

  return result;
}

unint64_t sub_192050F58()
{
  result = qword_1EADED228;
  if (!qword_1EADED228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADED228);
  }

  return result;
}

void *sub_192050FAC@<X0>(void *a1@<X8>)
{
  sub_192050FFC();
  result = sub_1922261E0();
  *a1 = v3;
  return result;
}

unint64_t sub_192050FFC()
{
  result = qword_1ED74A100;
  if (!qword_1ED74A100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74A100);
  }

  return result;
}

uint64_t sub_192051050(id *a1)
{
  v1 = *a1;
  sub_192050FFC();
  v2 = v1;
  return sub_1922261F0();
}

uint64_t sub_1920510E8@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ED7499B8 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE10, &unk_19222B630);
  v3 = __swift_project_value_buffer(v2, qword_1ED748A78);
  swift_beginAccess();
  return sub_192051870(v3, a1);
}

uint64_t WidgetContainerShapeModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a1;
  v61 = a2;
  v59 = sub_192225D60();
  MEMORY[0x1EEE9AC00](v59);
  v4 = (&v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1838, &qword_19223D480);
  v55 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v54 = &v51 - v5;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1840, &qword_19223D488);
  MEMORY[0x1EEE9AC00](v56);
  v7 = &v51 - v6;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1848, &qword_19223D490);
  v8 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v10 = &v51 - v9;
  v11 = sub_1922261D0();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v2;
  v16 = *(v2 + 16);
  v17 = *(v2 + 24);
  v18 = *(v2 + 32);
  v19 = *(v2 + 40);
  if (*(v2 + 8) != 1)
  {
    v51 = *(v2 + 40);
    v52 = v17;

    sub_192227FA0();
    v21 = sub_192226D00();
    v53 = v10;
    v22 = v16;
    v23 = v11;
    v24 = v4;
    v25 = v8;
    v26 = v7;
    v27 = v12;
    v28 = v21;
    sub_1922257A0();

    v12 = v27;
    v7 = v26;
    v8 = v25;
    v4 = v24;
    v11 = v23;
    v16 = v22;
    v10 = v53;
    _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
    swift_getAtKeyPath();
    v29 = sub_192049898(v15, 0);
    (*(v12 + 8))(v14, v11, v29);
    v19 = v51;
    v17 = v52;
    if (v62 != 7)
    {
      goto LABEL_3;
    }

LABEL_7:
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1850, &qword_19223D498);
    v31 = sub_19203F1D8();
    v32 = sub_19203F180();
    v33 = MEMORY[0x1E69817E8];
    sub_1922270A0();
    v34 = v58;
    (*(v8 + 16))(v7, v10, v58);
    swift_storeEnumTagMultiPayload();
    v62 = v30;
    v63 = v33;
    v64 = v31;
    v65 = v32;
    swift_getOpaqueTypeConformance2();
    v35 = sub_19203F6FC();
    v62 = v30;
    v63 = v59;
    v64 = v31;
    v65 = v35;
    swift_getOpaqueTypeConformance2();
    sub_1922266E0();
    return (*(v8 + 8))(v10, v34);
  }

  if (*v2 == 7)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (v19)
  {
    if (v17)
    {
      v20 = v16;
    }

    else
    {

      sub_192227FA0();
      v37 = sub_192226D00();
      sub_1922257A0();

      _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
      swift_getAtKeyPath();
      v38 = sub_19209561C(v16, 0);
      (*(v12 + 8))(v14, v11, v38);
      v20 = v62;
    }

    [v20 cornerRadius];
    v18 = v39;
  }

  v40 = v59;
  v41 = *(v59 + 20);
  v42 = *MEMORY[0x1E697F468];
  v43 = sub_192226560();
  (*(*(v43 - 8) + 104))(v4 + v41, v42, v43);
  *v4 = v18;
  v4[1] = v18;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1850, &qword_19223D498);
  v45 = sub_19203F1D8();
  v46 = sub_19203F6FC();
  v47 = v54;
  sub_1922270A0();
  sub_192051814(v4);
  v48 = v55;
  v49 = v60;
  (*(v55 + 16))(v7, v47, v60);
  swift_storeEnumTagMultiPayload();
  v50 = sub_19203F180();
  v62 = v44;
  v63 = MEMORY[0x1E69817E8];
  v64 = v45;
  v65 = v50;
  swift_getOpaqueTypeConformance2();
  v62 = v44;
  v63 = v40;
  v64 = v45;
  v65 = v46;
  swift_getOpaqueTypeConformance2();
  sub_1922266E0();
  return (*(v48 + 8))(v47, v49);
}

uint64_t sub_192051814(uint64_t a1)
{
  v2 = sub_192225D60();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_192051870(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE10, &unk_19222B630);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t WidgetRenderScheme.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1070, &qword_192239108);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  v8 = *v1;
  v11 = *(v1 + 1);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1920476EC();
  sub_192228B90();
  v14 = v8;
  v13 = 0;
  sub_192051AA0();
  sub_1922288C0();
  if (v2)
  {
    return (*(v5 + 8))(v7, v4);
  }

  result = v11;
  if (HIDWORD(v11))
  {
    __break(1u);
  }

  else
  {
    v12 = 1;
    sub_1922288E0();
    return (*(v5 + 8))(v7, v4);
  }

  return result;
}

unint64_t sub_192051AA0()
{
  result = qword_1ED74A538;
  if (!qword_1ED74A538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74A538);
  }

  return result;
}

uint64_t WidgetRenderingMode.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1B50, &qword_19223FBF0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1920475A8();
  sub_192228B90();
  v10 = v7;
  sub_192051C40();
  sub_1922288C0();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_192051C40()
{
  result = qword_1ED74A540;
  if (!qword_1ED74A540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74A540);
  }

  return result;
}

uint64_t WidgetEnvironment.apply(environmentValues:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEECD0, &qword_1922363D0);
  v61 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v61 - v1;
  v64 = sub_192224EA0();
  v3 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v62 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF270, &qword_19222C940);
  inited = swift_initStackObject();
  v65 = xmmword_19222B480;
  *(inited + 16) = xmmword_19222B480;
  *(inited + 32) = sub_192226090() & 1;
  sub_1920537A8();
  sub_19204C8C0(inited, KeyPath);

  v7 = swift_getKeyPath();
  v8 = swift_initStackObject();
  *(v8 + 16) = v65;
  *(v8 + 32) = sub_192226000() & 1;
  sub_1920537A8();
  sub_19204C8C0(v8, v7);

  v9 = swift_getKeyPath();
  v10 = swift_initStackObject();
  *(v10 + 16) = v65;
  *(v10 + 32) = sub_192226010() & 1;
  sub_1920537A8();
  sub_19204C8C0(v10, v9);

  v11 = swift_getKeyPath();
  v12 = swift_initStackObject();
  *(v12 + 16) = v65;
  *(v12 + 32) = sub_192226060() & 1;
  sub_1920537A8();
  sub_19204C8C0(v12, v11);

  v13 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF278, &qword_19222CA08);
  sub_192226580();
  v14 = swift_allocObject();
  *(v14 + 16) = v65;
  sub_192225FD0();
  sub_1920537A8();
  sub_1920C68FC(v14, v13);

  v15 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF280, &qword_19222CA40);
  sub_1922259F0();
  v16 = swift_allocObject();
  *(v16 + 16) = v65;
  sub_192225E50();
  sub_1920537A8();
  sub_1920C6DFC(v16, v15);

  v17 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF288, &qword_19222CA78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF290, &qword_19222CA80);
  v18 = swift_allocObject();
  *(v18 + 16) = v65;
  sub_192225F40();
  sub_1920537A8();
  sub_1920541E8(v18, v17);

  v19 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF298, &qword_19222CAB8);
  sub_1922265A0();
  v20 = swift_allocObject();
  *(v20 + 16) = v65;
  sub_192225EC0();
  sub_1920537A8();
  sub_1920C72FC(v20, v19);

  v21 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEF2A0, &qword_19222B810);
  sub_192225D50();
  v22 = swift_allocObject();
  *(v22 + 16) = v65;
  sub_192225F60();
  sub_1920537A8();
  sub_1920C77FC(v22, v21);

  v23 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEBA8, &qword_19222AF90);
  v24 = swift_initStackObject();
  *(v24 + 16) = v65;
  sub_19203B36C();
  sub_1922261E0();
  sub_1920537A8();
  sub_1920C5E74(v24, v23);

  v25 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEBD8, &qword_19222CAF0);
  v26 = swift_initStackObject();
  v63 = xmmword_19222C680;
  *(v26 + 16) = xmmword_19222C680;
  sub_19203B3CC();
  sub_1922261E0();
  *(v26 + 32) = v66;
  sub_1920537A8();
  sub_1920C61CC(v26, v25);

  v27 = swift_getKeyPath();
  v28 = swift_initStackObject();
  *(v28 + 16) = v65;
  sub_192056F6C();
  sub_1922261E0();
  *(v28 + 32) = v66;
  sub_1920537A8();
  sub_19204C8C0(v28, v27);

  v29 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEF2B0, &qword_19222CB20);
  v30 = swift_initStackObject();
  *(v30 + 16) = v65;
  sub_192056FC0();
  sub_1922261E0();
  *(v30 + 32) = v66;
  sub_1920537A8();
  sub_192057014(v30, v29);

  v31 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF2C0, &qword_19222CB50);
  v32 = swift_initStackObject();
  *(v32 + 16) = v65;
  sub_1920573F0();
  sub_1922261E0();
  *(v32 + 32) = v66;
  sub_1920537A8();
  sub_192057444(v32, v31);

  v33 = swift_getKeyPath();
  v34 = swift_initStackObject();
  *(v34 + 16) = v65;
  *(v34 + 32) = sub_192225FB0() & 1;
  sub_1920537A8();
  sub_19204C8C0(v34, v33);

  v35 = swift_getKeyPath();
  v36 = swift_initStackObject();
  *(v36 + 16) = v65;
  sub_192041180();
  sub_1922261E0();
  *(v36 + 32) = v66;
  sub_1920537A8();
  sub_19204C8C0(v36, v35);

  v37 = swift_getKeyPath();
  v38 = swift_initStackObject();
  *(v38 + 16) = v65;
  sub_192041074();
  sub_1922261E0();
  *(v38 + 32) = v66;
  sub_1920537A8();
  sub_19204C8C0(v38, v37);

  v39 = swift_getKeyPath();
  v40 = swift_initStackObject();
  *(v40 + 16) = v65;
  sub_1920577E0();
  sub_1922261E0();
  *(v40 + 32) = v66;
  sub_1920537A8();
  sub_19204C8C0(v40, v39);

  v41 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEF2C8, &qword_19222CBB0);
  v42 = swift_initStackObject();
  *(v42 + 16) = v65;
  sub_192057834();
  sub_1922261E0();
  sub_1920537A8();
  sub_1920C7CFC(v42, v41);

  v43 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEF2D8, &qword_19222CBB8);
  v44 = swift_initStackObject();
  *(v44 + 16) = v65;
  sub_192041274();
  sub_1922261E0();
  sub_1920537A8();
  sub_1920583A4(v44, v43);

  v45 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEF2E8, &qword_19222CBC0);
  v46 = swift_initStackObject();
  *(v46 + 16) = v65;
  sub_1920405C0();
  sub_1922261E0();
  sub_1920537A8();
  sub_1920C5B1C(v46, v45);

  v47 = swift_getKeyPath();
  v48 = swift_initStackObject();
  *(v48 + 16) = v63;
  sub_192040FB0();
  sub_1922261E0();
  *(v48 + 32) = v66;
  sub_1920537A8();
  sub_1920C5214(v48, v47);

  v49 = swift_getKeyPath();
  v50 = swift_initStackObject();
  *(v50 + 16) = v65;
  sub_192057970();
  sub_1922261E0();
  *(v50 + 32) = v66;
  sub_1920537A8();
  sub_19204C8C0(v50, v49);

  v51 = swift_getKeyPath();
  v52 = swift_initStackObject();
  *(v52 + 16) = v65;
  sub_1920579C4();
  sub_1922261E0();
  *(v52 + 32) = v66;
  sub_1920537A8();
  sub_19204C8C0(v52, v51);

  v53 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF2F8, &qword_19222CBC8);
  v54 = swift_initStackObject();
  *(v54 + 16) = v65;
  sub_19205337C();
  sub_1922261E0();
  sub_1920537A8();
  sub_1920C65A4(v54, v53);

  sub_1920C8054();
  v55 = v64;
  sub_1922261E0();
  if ((*(v3 + 48))(v2, 1, v55) == 1)
  {
    return sub_192033970(v2, &qword_1EADEECD0, &qword_1922363D0);
  }

  v57 = v62;
  (*(v3 + 32))(v62, v2, v55);
  v58 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF300, &qword_19222CBD0);
  v59 = (*(v61 + 80) + 32) & ~*(v61 + 80);
  v60 = swift_allocObject();
  *(v60 + 16) = v65;
  (*(v3 + 16))(v60 + v59, v57, v55);
  (*(v3 + 56))(v60 + v59, 0, 1, v55);
  sub_1920537A8();
  sub_1920C5654(v60, v58);

  return (*(v3 + 8))(v57, v55);
}

void *sub_192052CF0@<X0>(_BYTE *a1@<X8>)
{
  sub_19203B36C();
  result = sub_1922261E0();
  *a1 = v3;
  return result;
}

void *sub_192052D9C@<X0>(_BYTE *a1@<X8>)
{
  sub_19205337C();
  result = sub_1922261E0();
  *a1 = v3;
  return result;
}

uint64_t sub_192052F00@<X0>(_BYTE *a1@<X8>)
{
  result = sub_192226090();
  *a1 = result & 1;
  return result;
}

uint64_t sub_192052F58@<X0>(_BYTE *a1@<X8>)
{
  result = sub_192226000();
  *a1 = result & 1;
  return result;
}

uint64_t sub_192052FB0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_192226010();
  *a1 = result & 1;
  return result;
}

uint64_t sub_192053008@<X0>(_BYTE *a1@<X8>)
{
  result = sub_192226070();
  *a1 = result & 1;
  return result;
}

double sub_192053220@<D0>(_OWORD *a1@<X8>)
{
  sub_1920573F0();
  sub_1922261E0();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_192053274@<X0>(_BYTE *a1@<X8>)
{
  result = sub_192225FB0();
  *a1 = result & 1;
  return result;
}

void *sub_1920532CC@<X0>(_BYTE *a1@<X8>)
{
  sub_192057834();
  result = sub_1922261E0();
  *a1 = v3;
  return result;
}

unint64_t sub_19205337C()
{
  result = qword_1ED74A4C0;
  if (!qword_1ED74A4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74A4C0);
  }

  return result;
}

uint64_t sub_1920533D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_19203B234();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t sub_19205346C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1920534D0();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

unint64_t sub_1920534D0()
{
  result = qword_1EADED270;
  if (!qword_1EADED270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADED270);
  }

  return result;
}

uint64_t sub_192053538(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_192225150();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE60, &unk_192246DC0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t WidgetEnvironment.init(from:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = [objc_allocWithZone(type metadata accessor for WidgetEnvironment.Storage()) init];
  WidgetEnvironment.apply(environmentValues:)();
  v3 = sub_1922261D0();
  v4 = *(*(v3 - 8) + 8);

  return v4(a1, v3);
}

void sub_1920537A8()
{
  if ((swift_isUniquelyReferenced_nonNull() & 1) == 0)
  {
    v1 = *v0;
    v2 = type metadata accessor for WidgetEnvironment.Storage();
    v3 = objc_allocWithZone(v2);
    v4 = OBJC_IVAR___CHKWidgetEnvironment_tuples;
    *&v3[v4] = sub_192043788(MEMORY[0x1E69E7CC0]);
    v5 = OBJC_IVAR___CHKWidgetEnvironment_tuples;
    swift_beginAccess();
    v6 = *&v1[v5];
    swift_beginAccess();
    *&v3[v4] = v6;

    v8.receiver = v3;
    v8.super_class = v2;
    v7 = objc_msgSendSuper2(&v8, sel_init);

    *v0 = v7;
  }
}

uint64_t sub_192053888(uint64_t a1)
{
  v3 = *(*v1 + 152);
  v4 = *(*v1 + 144);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v24 = *(AssociatedTypeWitness - 8);
  v25 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v28 = &v23 - v6;
  v7 = swift_getAssociatedTypeWitness();
  v8 = sub_192228240();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v23 - v10;
  v12 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v23 - v14;
  sub_19202A98C(a1, v27);
  v16 = swift_dynamicCast();
  v17 = *(v12 + 56);
  if (v16)
  {
    v17(v11, 0, 1, v7);
    (*(v12 + 32))(v15, v11, v7);
    v18 = v26;
    (*(v3 + 64))(v15, v4, v3);
    if (!v18)
    {
      type metadata accessor for WidgetEnvironment.AnyValue();
      v20 = v25;
      swift_getAssociatedConformanceWitness();
      swift_getAssociatedConformanceWitness();
      swift_allocObject();
      v21 = v28;
      v4 = sub_19204343C(v28, v20);
      (*(v24 + 8))(v21, v20);
    }

    (*(v12 + 8))(v15, v7);
  }

  else
  {
    v17(v11, 1, 1, v7);
    (*(v9 + 8))(v11, v8);
    sub_1922284A0();
    swift_allocError();
    sub_1920BD250(v7, v19);
    swift_willThrow();
  }

  return v4;
}

uint64_t sub_192053C98@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>)
{
  result = sub_192053CC8(a2);
  if (!v2)
  {
    *a1 = result & 1;
  }

  return result;
}

uint64_t sub_192053CC8(uint64_t a1)
{
  v2 = sub_192226580();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v3 + 16);
  v7(v6, a1, v2, v4);
  v8 = (*(v3 + 88))(v6, v2);
  if (v8 == *MEMORY[0x1E697F600] || v8 == *MEMORY[0x1E697F608])
  {
    return v8 == *MEMORY[0x1E697F600];
  }

  v18[3] = v2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v18);
  (v7)(boxed_opaque_existential_1, a1, v2);
  v11 = sub_1922284C0();
  swift_allocError();
  v13 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFCC0, &qword_192243910);
  sub_19202A98C(v18, v13);
  v17[0] = sub_192228430();
  v17[1] = v14;
  MEMORY[0x193B0A990](58, 0xE100000000000000);
  v18[5] = 36;
  v15 = sub_192228910();
  MEMORY[0x193B0A990](v15);

  sub_192228480();
  (*(*(v11 - 8) + 104))(v13, *MEMORY[0x1E69E6B30], v11);
  __swift_destroy_boxed_opaque_existential_1(v18);
  swift_willThrow();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_192053F40(uint64_t a1)
{
  v2 = sub_1922259F0();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v3 + 16);
  v7(v6, a1, v2, v4);
  v8 = (*(v3 + 88))(v6, v2);
  if (v8 == *MEMORY[0x1E697DBB8] || v8 == *MEMORY[0x1E697DBA8])
  {
    return v8 != *MEMORY[0x1E697DBB8];
  }

  v18[3] = v2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v18);
  (v7)(boxed_opaque_existential_1, a1, v2);
  v11 = sub_1922284C0();
  swift_allocError();
  v13 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFCC0, &qword_192243910);
  sub_19202A98C(v18, v13);
  v17[0] = sub_192228430();
  v17[1] = v14;
  MEMORY[0x193B0A990](58, 0xE100000000000000);
  v18[5] = 36;
  v15 = sub_192228910();
  MEMORY[0x193B0A990](v15);

  sub_192228480();
  (*(*(v11 - 8) + 104))(v13, *MEMORY[0x1E69E6B30], v11);
  __swift_destroy_boxed_opaque_existential_1(v18);
  swift_willThrow();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1920541B8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_192053F40(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

void sub_1920541E8(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF290, &qword_19222CA80);
  v6 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v29 - v10;
  if (qword_1ED74BCA0 != -1)
  {
    goto LABEL_16;
  }

  while (1)
  {
    swift_beginAccess();
    v12 = sub_192046E20(a2, off_1ED74BF08);
    v13 = swift_endAccess();
    if (!v12)
    {
      break;
    }

    v14 = (*(**(v12 + 16) + 80))(v13);
    v18 = v14;
    v19 = v15;
    v20 = v16;
    if (!a1)
    {
      v28 = 0;
LABEL_14:
      sub_192047008(v28, v18, v19, v20, v17);

      return;
    }

    v34 = v16;
    v35 = v15;
    v36 = v14;
    v37 = v3;
    v42 = MEMORY[0x1E69E7CC0];
    v21 = *(a1 + 16);
    if (!v21)
    {
      v38 = MEMORY[0x1E69E7CC0];
LABEL_13:

      v18 = v36;
      v20 = v34;
      v19 = v35;
      v28 = v38;
      goto LABEL_14;
    }

    v32 = v8;
    v33 = a2;
    v22 = 0;
    v3 = 0;
    v39 = v21;
    v31 = (v21 - 1);
    v38 = MEMORY[0x1E69E7CC0];
    a2 = &qword_19222CA80;
    while (1)
    {
      v8 = v22;
      if (v22 >= *(a1 + 16))
      {
        break;
      }

      sub_19202CFFC(a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v22++, v11, &qword_1EADEF290, &qword_19222CA80);
      v41[3] = v40;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v41);
      sub_19202CFFC(v11, boxed_opaque_existential_1, &qword_1EADEF290, &qword_19222CA80);
      v30 = (*(**(v12 + 16) + 128))(v41);
      __swift_destroy_boxed_opaque_existential_1(v41);
      sub_19202CFFC(v11, v32, &qword_1EADEF290, &qword_19222CA80);
      type metadata accessor for WidgetEnvironment.AnyKeyValueTuple();
      v38 = swift_allocObject();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF558, &unk_19222D950);
      v24 = swift_allocObject();
      v24[2] = v33;
      sub_19204E300(v32, v24 + *(*v24 + 160), &qword_1EADEF290, &qword_19222CA80);
      *(v24 + *(*v24 + 168)) = v12;
      v25 = v38;
      v26 = v30;
      *(v38 + 16) = v24;
      *(v25 + 24) = v26;

      v27 = sub_192033970(v11, &qword_1EADEF290, &qword_19222CA80);
      MEMORY[0x193B0AB00](v27);
      if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v30 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_192227BB0();
      }

      sub_192227C00();
      v38 = v42;
      if (v31 == v8)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_16:
    swift_once();
  }

  v41[0] = 0;
  v41[1] = 0xE000000000000000;
  sub_192228400();
  MEMORY[0x193B0A990](0xD000000000000028, 0x80000001922489A0);
  v42 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEC70, &qword_19222B060);
  sub_1922285A0();
  sub_192228620();
  __break(1u);
}

uint64_t sub_1920546B0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF290, &qword_19222CA80);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v22 - v3;
  v5 = sub_192225D00();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v22 - v10;
  sub_192054A78(a1, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_19205B1B4(v4);
    return 2;
  }

  else
  {
    (*(v6 + 32))(v11, v4, v5);
    v13 = *(v6 + 16);
    v13(v8, v11, v5);
    v14 = (*(v6 + 88))(v8, v5);
    if (v14 == *MEMORY[0x1E697E9F8])
    {
      (*(v6 + 8))(v11, v5);
      return 0;
    }

    else if (v14 == *MEMORY[0x1E697E9F0])
    {
      (*(v6 + 8))(v11, v5);
      return 1;
    }

    else
    {
      v23[3] = v5;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v23);
      v13(boxed_opaque_existential_1, v11, v5);
      v16 = sub_1922284C0();
      swift_allocError();
      v18 = v17;
      v22[1] = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFCC0, &qword_192243910) + 48);
      sub_19202A98C(v23, v18);
      v22[2] = sub_192228430();
      v22[3] = v19;
      MEMORY[0x193B0A990](58, 0xE100000000000000);
      v23[5] = 39;
      v20 = sub_192228910();
      MEMORY[0x193B0A990](v20);

      sub_192228480();
      (*(*(v16 - 8) + 104))(v18, *MEMORY[0x1E69E6B30], v16);
      __swift_destroy_boxed_opaque_existential_1(v23);
      swift_willThrow();
      v21 = *(v6 + 8);
      v21(v11, v5);
      return (v21)(v8, v5);
    }
  }
}

uint64_t sub_192054A4C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1920546B0(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_192054A78(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF290, &qword_19222CA80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_192054B14(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF1360, &qword_19223A630);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_192042C00();
  sub_192228B90();
  sub_192228870();
  return (*(v3 + 8))(v5, v2);
}

char *sub_192054C4C()
{
  v1 = *v0;

  (*(*(*(v1 + 144) - 8) + 8))(v0 + *(*v0 + 160));

  return v0;
}

uint64_t sub_192054CE8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE10, &unk_19222B630);
  __swift_allocate_value_buffer(v0, qword_1ED748A78);
  v1 = __swift_project_value_buffer(v0, qword_1ED748A78);
  v2 = sub_192225020();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 1, 1, v2);
}

uint64_t sub_192054D88()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEED10, &unk_19222B0F0);
  __swift_allocate_value_buffer(v0, qword_1EADED2F0);
  v1 = __swift_project_value_buffer(v0, qword_1EADED2F0);
  v2 = sub_192225150();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 1, 1, v2);
}

uint64_t sub_192054E28(uint64_t a1)
{
  v2 = type metadata accessor for TimelineReloadPolicy(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_192054E84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TimelineReloadPolicy(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t TimelineReloadPolicy.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEED10, &unk_19222B0F0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v16 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF2B08, &qword_192247270);
  v16 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16 - v7;
  v9 = type metadata accessor for TimelineReloadPolicy(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_192225150();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_192055230();
  v13 = v18;
  sub_192228B70();
  if (!v13)
  {
    v14 = v17;
    sub_1920551EC(qword_1ED748810, MEMORY[0x1E6969558]);
    sub_192228750();
    (*(v16 + 8))(v8, v6);
    sub_192055164(v5, v11);
    sub_192054E84(v11, v14);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_192054E28(v11);
}

uint64_t sub_192055164(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEED10, &unk_19222B0F0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1920551EC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_192225150();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_192055230()
{
  result = qword_1ED74A520;
  if (!qword_1ED74A520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74A520);
  }

  return result;
}

uint64_t sub_192055294()
{
  if (qword_1ED74AAE0 != -1)
  {
    swift_once();
  }

  v0 = qword_1ED74C970;

  return v0;
}

uint64_t sub_192055314()
{
  if (qword_1ED74A920 != -1)
  {
    swift_once();
  }

  v0 = qword_1ED74C898;

  return v0;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_1920553F8()
{
  (*(*(*(*v0 + 128) - 8) + 8))(v0 + *(*v0 + 152));

  return swift_deallocClassInstance();
}

uint64_t sub_1920554A4()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1920554DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_192055544(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1920555AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_192055614(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_192055674(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1920556D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_19205573C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1920557A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WidgetArchivableMetadata(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_192055808()
{
  v1 = sub_192227710();
  v23 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_192227790();
  v21 = *(v4 - 8);
  v22 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1922277B0();
  v20 = v7;
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v17 - v12;
  v18 = *(v0 + 16);
  sub_1922277A0();
  sub_192227800();
  v19 = *(v8 + 8);
  v19(v10, v7);
  aBlock[4] = sub_192059CB4;
  v26 = v0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_19202AB80;
  aBlock[3] = &block_descriptor_4;
  v14 = _Block_copy(aBlock);

  sub_192227740();
  v24 = MEMORY[0x1E69E7CC0];
  sub_19202A7F0(&qword_1ED74C620, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEDE8, &unk_19222B5A0);
  sub_19202A880(&qword_1ED74C610, &qword_1EADEEDE8, &unk_19222B5A0);
  sub_1922282F0();
  v15 = v18;
  MEMORY[0x193B0B010](v13, v6, v3, v14);
  _Block_release(v14);

  (*(v23 + 8))(v3, v1);
  (*(v21 + 8))(v6, v22);
  v19(v13, v20);

  return result;
}

uint64_t sub_192055BBC(char *a1)
{
  v2 = *a1;
  result = swift_beginAccess();
  *(v1 + 16) = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for WidgetViewMetadata.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_192055C8C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_192225150();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_192055D08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v48 = a3;
  v6 = sub_192224E00();
  v43 = *(v6 - 8);
  v44 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v41 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEED10, &unk_19222B0F0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v41 - v9;
  v11 = type metadata accessor for TimelineReloadPolicy(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_192225150();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v42 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v41 - v18;
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v41 - v22;
  v24 = a1;
  v25 = a1;
  v26 = a2;
  (*(a2 + 64))(v25, a2, v21);
  sub_19204E300(v13, v10, &qword_1EADEED10, &unk_19222B0F0);
  v27 = *(v15 + 48);
  v28 = v27(v10, 1, v14);
  v46 = v3;
  v47 = v26;
  v45 = v24;
  if (v28 == 1)
  {
    v29 = v26;
    v30 = *(v26 + 48);
    v31 = v41;
    v30(v24, v29);
    sub_192224DC0();
    (*(v43 + 8))(v31, v44);
    if (v27(v10, 1, v14) != 1)
    {
      sub_1920418D4(v10);
    }
  }

  else
  {
    (*(v15 + 32))(v23, v10, v14);
  }

  sub_1922250D0();
  v32 = sub_192225120();
  v33 = *(v15 + 8);
  v33(v19, v14);
  if (v32)
  {
    v33(v23, v14);
    v34 = 1;
    v35 = v48;
  }

  else
  {
    v36 = v42;
    (*(v47 + 40))(v45);
    sub_19204E368();
    v37 = sub_1922278C0();
    v38 = (v37 & 1) == 0;
    if (v37)
    {
      v39 = v23;
    }

    else
    {
      v39 = v36;
    }

    if (!v38)
    {
      v23 = v36;
    }

    v33(v39, v14);
    v35 = v48;
    (*(v15 + 32))(v48, v23, v14);
    v34 = 0;
  }

  return (*(v15 + 56))(v35, v34, 1, v14);
}

uint64_t sub_19205611C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1 + OBJC_IVAR____TtC9WidgetKit31_TimelineArchivedViewCollection_metadata;
  v4 = type metadata accessor for WidgetArchivableMetadata(0);
  return sub_1920555AC(v3 + *(v4 + 44), a1, type metadata accessor for TimelineReloadPolicy);
}

uint64_t sub_192056178@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1 + OBJC_IVAR____TtC9WidgetKit31_TimelineArchivedViewCollection_metadata;
  v4 = *(type metadata accessor for WidgetArchivableMetadata(0) + 20);
  v5 = sub_192225150();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_192056208(unint64_t a1, __n128 a2)
{
  v3 = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_19:
    v4 = sub_192228340();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = sub_1922282D0();
  result = MEMORY[0x193B0AD20](v4, v5, MEMORY[0x1E69E6930]);
  v12 = result;
  if (!v3)
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      return result;
    }

LABEL_7:
    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x193B0B410](i, a1);
        v10 = i + 1;
        if (__OFADD__(i, 1))
        {
LABEL_15:
          __break(1u);
          return v12;
        }
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_19;
        }

        v9 = *(a1 + 8 * i + 32);

        v10 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_15;
        }
      }

      sub_19205E55C(&v11, v9);

      if (v10 == v3)
      {
        return v12;
      }
    }
  }

  v7 = result;
  v3 = sub_192228340();
  result = v7;
  if (v3)
  {
    goto LABEL_7;
  }

  return result;
}

void sub_192056340(void **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = MEMORY[0x1E69E7CC0];
  sub_192057A18();
  v6 = v5;

  v7 = a2 & 0xC000000000000001;
  if ((a2 & 0xC000000000000001) != 0)
  {
    if (sub_192228340())
    {
LABEL_3:
      v8 = *(v6 + 16);
      if (v8)
      {
        v9 = 0;
        v32 = v6 + 32;
        v30 = v6;
        v31 = MEMORY[0x1E69E7CC0];
        v10 = a2 + 56;
        v29 = *(v6 + 16);
        while (1)
        {
          while (1)
          {
            if (v9 >= *(v6 + 16))
            {
              goto LABEL_52;
            }

            v11 = *(v32 + 8 * v9);
            if (v11 >> 62)
            {
              ++v9;
              if (!sub_192228340())
              {
LABEL_30:

                goto LABEL_22;
              }
            }

            else
            {
              ++v9;
              if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_30;
              }
            }

            if ((v11 & 0xC000000000000001) != 0)
            {

              v13 = MEMORY[0x193B0B410](0, v11);
              v12 = v13;
            }

            else
            {
              if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_53;
              }

              v12 = *(v11 + 32);
            }

            (*(**(v12 + 16) + 104))(v13);

            if (v7)
            {
              break;
            }

            if (*(a2 + 16))
            {
              sub_1922282D0();
              v15 = sub_192227880();
              v16 = -1 << *(a2 + 32);
              v17 = v15 & ~v16;
              if ((*(v10 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
              {
                v18 = ~v16;
                while ((sub_192227910() & 1) == 0)
                {
                  v17 = (v17 + 1) & v18;
                  if (((*(v10 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
                  {
                    goto LABEL_21;
                  }
                }

                v7 = 0;
                v8 = v29;
                v6 = v30;
                goto LABEL_6;
              }

LABEL_21:

              v7 = 0;
              v8 = v29;
            }

            else
            {
            }

LABEL_22:
            v19 = v31;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_19205E798(0, *(v31 + 16) + 1, 1);
              v19 = v31;
            }

            v21 = *(v19 + 16);
            v20 = *(v19 + 24);
            if (v21 >= v20 >> 1)
            {
              sub_19205E798((v20 > 1), v21 + 1, 1);
              v19 = v31;
            }

            *(v19 + 16) = v21 + 1;
            v31 = v19;
            *(v19 + 8 * v21 + 32) = v11;
            v6 = v30;
            if (v9 == v8)
            {
              goto LABEL_35;
            }
          }

          v14 = sub_192228370();

          if ((v14 & 1) == 0)
          {
            goto LABEL_22;
          }

LABEL_6:
          if (v9 == v8)
          {
            goto LABEL_35;
          }
        }
      }

      v31 = MEMORY[0x1E69E7CC0];
LABEL_35:

      v6 = v31;
      v4 = MEMORY[0x1E69E7CC0];
      goto LABEL_36;
    }
  }

  else if (*(a2 + 16))
  {
    goto LABEL_3;
  }

LABEL_36:
  v22 = v6;
  v23 = *(v6 + 16);
  if (!v23)
  {
    sub_19205E7D8(0);
    v28 = MEMORY[0x1E69E7CC0];
LABEL_49:
    sub_19205F0B4(v28, v27);
    return;
  }

  v24 = sub_192227BE0();
  *(v24 + 16) = v23;
  bzero((v24 + 32), 8 * v23);
  sub_19205E7D8(v23);
  sub_192228520();
  v25 = (v22 + 32);
  while (1)
  {
    v26 = *v25;
    if (*v25 >> 62)
    {
      break;
    }

    if (!*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_50;
    }

LABEL_40:
    if ((v26 & 0xC000000000000001) != 0)
    {

      MEMORY[0x193B0B410](0, v26);
    }

    else
    {
      if (!*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_51;
      }
    }

    sub_1922284F0();
    sub_192228530();
    sub_192228540();
    sub_192228500();
    ++v25;
    if (!--v23)
    {
      v28 = v4;
      goto LABEL_49;
    }
  }

  if (sub_192228340())
  {
    goto LABEL_40;
  }

LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
}

uint64_t sub_1920567E4(uint64_t a1)
{
  v2 = sub_1922265A0();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v3 + 16);
  v7(v6, a1, v2, v4);
  v8 = (*(v3 + 88))(v6, v2);
  if (v8 == *MEMORY[0x1E697F658])
  {
    return 0;
  }

  if (v8 == *MEMORY[0x1E697F690])
  {
    return 1;
  }

  if (v8 == *MEMORY[0x1E697F698])
  {
    return 2;
  }

  if (v8 == *MEMORY[0x1E697F680])
  {
    return 3;
  }

  if (v8 == *MEMORY[0x1E697F650])
  {
    return 4;
  }

  if (v8 == *MEMORY[0x1E697F660])
  {
    return 5;
  }

  if (v8 == *MEMORY[0x1E697F630])
  {
    return 6;
  }

  if (v8 == *MEMORY[0x1E697F670])
  {
    return 7;
  }

  if (v8 == *MEMORY[0x1E697F668])
  {
    return 8;
  }

  if (v8 == *MEMORY[0x1E697F678])
  {
    return 9;
  }

  if (v8 == *MEMORY[0x1E697F640])
  {
    return 10;
  }

  if (v8 == *MEMORY[0x1E697F648])
  {
    return 11;
  }

  v17[3] = v2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v17);
  (v7)(boxed_opaque_existential_1, a1, v2);
  v11 = sub_1922284C0();
  swift_allocError();
  v13 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFCC0, &qword_192243910);
  sub_19202A98C(v17, v13);
  v16[0] = sub_192228430();
  v16[1] = v14;
  MEMORY[0x193B0A990](58, 0xE100000000000000);
  v17[5] = 66;
  v15 = sub_192228910();
  MEMORY[0x193B0A990](v15);

  sub_192228480();
  (*(*(v11 - 8) + 104))(v13, *MEMORY[0x1E69E6B30], v11);
  __swift_destroy_boxed_opaque_existential_1(v17);
  swift_willThrow();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_192056B7C@<X0>(uint64_t *a1@<X8>, unsigned __int8 *a2@<X0>)
{
  result = sub_192056BA8(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_192056BA8(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 <= 0xC)
  {
    return qword_1922313F8[v1];
  }

  result = sub_192228990();
  __break(1u);
  return result;
}

id sub_192056BE4(void *a1)
{
  [a1 size];
  v3 = v2;
  v5 = v4;
  [a1 cornerRadius];
  v7 = v6;
  [a1 scaleFactor];
  v9 = v8;
  v10 = [a1 fontStyle];
  v11 = [a1 margins];
  v12 = [a1 dynamicTextSupport];
  v13 = [a1 widgetGroupMargins];
  v14 = [a1 nestedContentMetrics];
  if (v14)
  {
    sub_19202A7A8(0, &qword_1EADEEEB8, 0x1E696AD98);
    sub_19202A7A8(0, &qword_1ED74BD10, 0x1E69943F0);
    sub_19205DDC0(&qword_1EADF1A90, &qword_1EADEEEB8, 0x1E696AD98, MEMORY[0x1E69E81B8]);
    sub_192227840();

    v14 = sub_192227830();
  }

  v15 = [objc_allocWithZone(type metadata accessor for CHSWidgetMetricsCodable()) initWithSize:v10 cornerRadius:v11 scaleFactor:v12 fontStyle:v13 margins:v14 supportsDynamicText:v3 widgetGroupMargins:v5 nestedContentMetrics:{v7, v9}];

  return v15;
}

unint64_t sub_192056F6C()
{
  result = qword_1ED74A588;
  if (!qword_1ED74A588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74A588);
  }

  return result;
}

unint64_t sub_192056FC0()
{
  result = qword_1ED74BC78;
  if (!qword_1ED74BC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74BC78);
  }

  return result;
}

void sub_192057014(uint64_t a1, uint64_t a2)
{
  if (qword_1ED74BCA0 != -1)
  {
    goto LABEL_16;
  }

  while (1)
  {
    swift_beginAccess();
    v4 = sub_192046E20(a2, off_1ED74BF08);
    v5 = swift_endAccess();
    if (!v4)
    {
      break;
    }

    v6 = (*(**(v4 + 16) + 80))(v5);
    v10 = v6;
    v11 = v7;
    v12 = v8;
    if (!a1)
    {
      v22 = 0;
LABEL_14:
      sub_192047008(v22, v10, v11, v12, v9);

      return;
    }

    v24 = v8;
    v25 = v7;
    v26 = v6;
    v30 = MEMORY[0x1E69E7CC0];
    v13 = *(a1 + 16);
    if (!v13)
    {
      v27 = MEMORY[0x1E69E7CC0];
LABEL_13:

      v10 = v26;
      v12 = v24;
      v11 = v25;
      v22 = v27;
      goto LABEL_14;
    }

    v14 = 0;
    v28 = a1 + 32;
    v23 = a2;
    while (1)
    {
      v15 = v14;
      if (v14 >= *(a1 + 16))
      {
        break;
      }

      a2 = a1;
      v16 = *(v28 + 8 * v14++);
      v29[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEECE8, &unk_19222B0D0);
      v29[0] = v16;
      v17 = *(**(v4 + 16) + 128);
      swift_retain_n();
      v18 = v17(v29);
      __swift_destroy_boxed_opaque_existential_1(v29);
      type metadata accessor for WidgetEnvironment.AnyKeyValueTuple();
      v19 = swift_allocObject();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF528, &unk_19222D920);
      v20 = swift_allocObject();
      v20[2] = v23;
      v20[3] = v16;
      v20[4] = v4;
      *(v19 + 16) = v20;
      *(v19 + 24) = v18;

      MEMORY[0x193B0AB00](v21);
      if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_192227BB0();
      }

      sub_192227C00();
      v27 = v30;
      a1 = a2;
      if (v13 - 1 == v15)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_16:
    swift_once();
  }

  v29[0] = 0;
  v29[1] = 0xE000000000000000;
  sub_192228400();
  MEMORY[0x193B0A990](0xD000000000000028, 0x80000001922489A0);
  v30 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEECE0, &qword_19222B0C8);
  sub_1922285A0();
  sub_192228620();
  __break(1u);
}

uint64_t sub_19205739C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  type metadata accessor for OptionalLocalizationsWrapper();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *a2 = v4;
}

unint64_t sub_1920573F0()
{
  result = qword_1ED74BC58;
  if (!qword_1ED74BC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74BC58);
  }

  return result;
}

void sub_192057444(uint64_t a1, unint64_t a2)
{
  if (qword_1ED74BCA0 != -1)
  {
    goto LABEL_16;
  }

  while (1)
  {
    swift_beginAccess();
    v4 = sub_192046E20(a2, off_1ED74BF08);
    v5 = swift_endAccess();
    if (!v4)
    {
      break;
    }

    v6 = (*(**(v4 + 16) + 80))(v5);
    v10 = v6;
    v11 = v7;
    v12 = v8;
    if (!a1)
    {
      v24 = 0;
LABEL_14:
      sub_192047008(v24, v10, v11, v12, v9);

      return;
    }

    v27 = v8;
    v28 = v7;
    v29 = v6;
    v33 = MEMORY[0x1E69E7CC0];
    v13 = *(a1 + 16);
    if (!v13)
    {
      v30 = MEMORY[0x1E69E7CC0];
LABEL_13:

      v10 = v29;
      v12 = v27;
      v11 = v28;
      v24 = v30;
      goto LABEL_14;
    }

    v26 = a2;
    a2 = 0;
    v25 = v13 - 1;
    while (1)
    {
      v14 = a2;
      if (a2 >= *(a1 + 16))
      {
        break;
      }

      ++a2;
      v15 = *(a1 + 32 + 16 * v14);
      v32 = MEMORY[0x1E6969080];
      v31 = v15;
      v16 = v4;
      v17 = *(**(v4 + 16) + 128);
      v18 = *(&v15 + 1);
      v19 = v15;
      sub_1920367C8(v15, *(&v15 + 1));
      sub_1920367C8(v19, v18);
      v20 = v17(&v31);
      __swift_destroy_boxed_opaque_existential_1(&v31);
      type metadata accessor for WidgetEnvironment.AnyKeyValueTuple();
      v21 = swift_allocObject();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEF518, &unk_19222D910);
      v22 = swift_allocObject();
      v22[2] = v26;
      v22[3] = v19;
      v22[4] = v18;
      v22[5] = v16;
      v4 = v16;
      *(v21 + 16) = v22;
      *(v21 + 24) = v20;

      MEMORY[0x193B0AB00](v23);
      if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_192227BB0();
      }

      sub_192227C00();
      v30 = v33;
      if (v25 == v14)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_16:
    swift_once();
  }

  *&v31 = 0;
  *(&v31 + 1) = 0xE000000000000000;
  sub_192228400();
  MEMORY[0x193B0A990](0xD000000000000028, 0x80000001922489A0);
  v33 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF510, &qword_19222B018);
  sub_1922285A0();
  sub_192228620();
  __break(1u);
}

unint64_t sub_1920577E0()
{
  result = qword_1ED748C70;
  if (!qword_1ED748C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED748C70);
  }

  return result;
}

unint64_t sub_192057834()
{
  result = qword_1ED74A7B0;
  if (!qword_1ED74A7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74A7B0);
  }

  return result;
}

id sub_192057894@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  [*a1 scale];
  result = [objc_allocWithZone(type metadata accessor for CHSWidgetDisplayPropertiesCodable()) initWithScale:objc_msgSend(v3 colorGamut:{sel_colorGamut), v4}];
  *a2 = result;
  return result;
}

unint64_t sub_192057970()
{
  result = qword_1ED74A768;
  if (!qword_1ED74A768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74A768);
  }

  return result;
}

unint64_t sub_1920579C4()
{
  result = qword_1ED74A770;
  if (!qword_1ED74A770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74A770);
  }

  return result;
}

void sub_192057A18()
{
  v1 = sub_192224FC0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR___CHKWidgetEnvironment_tuples;
  swift_beginAccess();
  v32 = sub_192057EE0(0, *(*(v0 + v5) + 16), 0, MEMORY[0x1E69E7CC0]);
  v29 = v5;
  v36 = v0;

  v7 = 0;
  v8 = sub_192058014(v6);

  *&v40 = v8;

  sub_192058734(&v40);

  v9 = v40;
  v35 = *(v40 + 16);
  if (!v35)
  {
LABEL_19:

    return;
  }

  v10 = 0;
  v34 = v40 + 32;
  v28 = (v2 + 8);
  v11 = MEMORY[0x1E69E7CA0];
  v12 = v29;
  v33 = v40;
  while (1)
  {
    if (v10 >= *(v9 + 16))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    v13 = v11;
    v14 = (v34 + 24 * v10);
    v15 = *v14;
    v7 = v14[1];
    v16 = v14[2];
    v17 = v36;
    swift_beginAccess();
    v18 = *(v17 + v12);
    v19 = *(v18 + 16);
    v37 = v15;

    if (v19)
    {
      v20 = sub_19204437C(v7, v16);
      if (v21)
      {
        break;
      }
    }

    swift_endAccess();

    v11 = v13;
LABEL_4:
    ++v10;
    v9 = v33;
    if (v10 == v35)
    {
      goto LABEL_19;
    }
  }

  v31 = v16;
  v22 = *(*(v18 + 56) + 8 * v20);
  swift_endAccess();
  v23 = v22;
  v7 = [v23 count];
  v42 = MEMORY[0x1E69E7CC0];
  sub_192228520();
  sub_192227F60();
  if ((v7 & 0x8000000000000000) != 0)
  {
    goto LABEL_21;
  }

  v11 = v13;
  v30 = v23;
  if (!v7)
  {
LABEL_13:
    sub_1920C80A8(&qword_1ED74BFF8, 255, MEMORY[0x1E6968EB0], MEMORY[0x1E6968EB8]);
    while (1)
    {
      sub_192228270();
      if (!v39)
      {
        break;
      }

      sub_19203BEDC(&v38, &v40);
      sub_19203BEDC(&v40, &v38);
      swift_dynamicCast();
      sub_1922284F0();
      sub_192228530();
      sub_192228540();
      sub_192228500();
    }

    (*v28)(v4, v1);
    sub_192033970(&v38, &unk_1EADEF330, &unk_19222CD40);
    v24 = v42;
    v7 = v32[2];
    v25 = v32[3];
    if (v7 >= v25 >> 1)
    {
      v32 = sub_192057EE0((v25 > 1), v7 + 1, 1, v32);
    }

    v12 = v29;

    v26 = v32;
    v32[2] = v7 + 1;
    v26[v7 + 4] = v24;
    goto LABEL_4;
  }

  sub_1920C80A8(&qword_1ED74BFF8, 255, MEMORY[0x1E6968EB0], MEMORY[0x1E6968EB8]);
  while (1)
  {
    sub_192228270();
    if (!v41)
    {
      break;
    }

    sub_19202A98C(&v40, &v38);
    swift_dynamicCast();
    __swift_destroy_boxed_opaque_existential_1(&v40);
    sub_1922284F0();
    sub_192228530();
    sub_192228540();
    sub_192228500();
    if (!--v7)
    {
      goto LABEL_13;
    }
  }

LABEL_22:
  __break(1u);

  __break(1u);
}

void *sub_192057EE0(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEF600, &qword_19222AF58);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEECB0, &unk_19222B0A0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_192058014(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v31 = MEMORY[0x1E69E7CC0];
  sub_192058700(0, v1, 0);
  v2 = v31;
  v4 = v3 + 64;
  result = sub_192228300();
  v6 = result;
  v7 = 0;
  v8 = *(v3 + 36);
  v25 = v3 + 72;
  v26 = v1;
  v27 = v8;
  v28 = v3 + 64;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v3 + 32))
  {
    v10 = v6 >> 6;
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_22;
    }

    if (v8 != *(v3 + 36))
    {
      goto LABEL_23;
    }

    v29 = v7;
    v11 = (*(v3 + 48) + 24 * v6);
    v12 = *v11;
    v30 = v11[1];
    v13 = v3;
    v14 = v11[2];
    v15 = *(v31 + 16);
    v16 = *(v31 + 24);

    if (v15 >= v16 >> 1)
    {
      result = sub_192058700((v16 > 1), v15 + 1, 1);
    }

    *(v31 + 16) = v15 + 1;
    v17 = (v31 + 24 * v15);
    v17[4] = v12;
    v17[5] = v30;
    v17[6] = v14;
    v9 = 1 << *(v13 + 32);
    if (v6 >= v9)
    {
      goto LABEL_24;
    }

    v3 = v13;
    v4 = v28;
    v18 = *(v28 + 8 * v10);
    if ((v18 & (1 << v6)) == 0)
    {
      goto LABEL_25;
    }

    v8 = v27;
    if (v27 != *(v3 + 36))
    {
      goto LABEL_26;
    }

    v19 = v18 & (-2 << (v6 & 0x3F));
    if (v19)
    {
      v9 = __clz(__rbit64(v19)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v20 = v10 << 6;
      v21 = v10 + 1;
      v22 = (v25 + 8 * v10);
      while (v21 < (v9 + 63) >> 6)
      {
        v24 = *v22++;
        v23 = v24;
        v20 += 64;
        ++v21;
        if (v24)
        {
          result = sub_192059898(v6, v27, 0);
          v9 = __clz(__rbit64(v23)) + v20;
          goto LABEL_4;
        }
      }

      result = sub_192059898(v6, v27, 0);
    }

LABEL_4:
    v7 = v29 + 1;
    v6 = v9;
    if (v29 + 1 == v26)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_22:
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

char *sub_192058284(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEF4E0, &qword_19222D8C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1920583A4(uint64_t a1, unint64_t a2)
{
  if (qword_1ED74BCA0 != -1)
  {
    goto LABEL_15;
  }

  while (1)
  {
    swift_beginAccess();
    v4 = sub_192046E20(a2, off_1ED74BF08);
    v5 = swift_endAccess();
    if (!v4)
    {
      break;
    }

    v6 = (*(**(v4 + 16) + 80))(v5);
    v10 = v6;
    v11 = v7;
    v12 = v8;
    if (!a1)
    {
      v13 = 0;
LABEL_13:
      sub_192047008(v13, v10, v11, v12, v9);

      return;
    }

    v25 = v8;
    v26 = v7;
    v27 = v6;
    v13 = MEMORY[0x1E69E7CC0];
    v31 = MEMORY[0x1E69E7CC0];
    v14 = *(a1 + 16);
    if (!v14)
    {
LABEL_12:

      v10 = v27;
      v12 = v25;
      v11 = v26;
      goto LABEL_13;
    }

    v24 = a2;
    a2 = 0;
    v15 = a1 + 40;
    while (1)
    {
      v16 = (v15 + 16 * a2);
      v17 = a2;
      if (a2 >= *(a1 + 16))
      {
        break;
      }

      v19 = *v16;
      ++a2;
      LOBYTE(v28) = *(v16 - 8);
      v18 = v28;
      v30 = &type metadata for WidgetRenderScheme;
      v29 = v19;
      v20 = (*(**(v4 + 16) + 128))(&v28);
      __swift_destroy_boxed_opaque_existential_1(&v28);
      type metadata accessor for WidgetEnvironment.AnyKeyValueTuple();
      v21 = swift_allocObject();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEF5B0, &qword_19222D9B8);
      v22 = swift_allocObject();
      *(v22 + 16) = v24;
      *(v22 + 24) = v18;
      *(v22 + 32) = v19;
      *(v22 + 40) = v4;
      *(v21 + 16) = v22;
      *(v21 + 24) = v20;

      MEMORY[0x193B0AB00](v23);
      if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_192227BB0();
      }

      sub_192227C00();
      v13 = v31;
      v15 = a1 + 40;
      if (v14 - 1 == v17)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_15:
    swift_once();
  }

  v28 = 0;
  v29 = 0xE000000000000000;
  sub_192228400();
  MEMORY[0x193B0A990](0xD000000000000028, 0x80000001922489A0);
  v31 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EADEEC20, &qword_19222B010);
  sub_1922285A0();
  sub_192228620();
  __break(1u);
}

char *sub_192058700(char *a1, int64_t a2, char a3)
{
  result = sub_192058284(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_192058734(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_192058720(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1920587A0(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1920587A0(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_192228900();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = sub_192227BE0();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1920C3C14(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_192058898(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_192058898(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 24 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = v6 + 24 * v4;
    result = *(v9 + 8);
    v10 = *(v9 + 16);
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_1922289A0(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 24;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v14 = *v12;
      result = v12[1];
      v10 = v12[2];
      *v12 = *(v12 - 3);
      v12[2] = *(v12 - 1);
      *(v12 - 2) = result;
      *(v12 - 1) = v10;
      *(v12 - 3) = v14;
      v12 -= 3;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}