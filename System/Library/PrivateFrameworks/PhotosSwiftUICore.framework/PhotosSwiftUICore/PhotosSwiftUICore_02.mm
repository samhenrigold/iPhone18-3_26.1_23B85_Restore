_DWORD *sub_1C0FD1274@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_1C0FD1290(uint64_t a1)
{
  sub_1C0FD1868(&qword_1EBE90100, type metadata accessor for CIFormat, &unk_1C12A29E8);
  sub_1C0FD1868(&unk_1EBE90108, type metadata accessor for CIFormat, &unk_1C12A2988);
  return sub_1C1266BE0();
}

uint64_t sub_1C0FD134C@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_1C1265E70();

  *a2 = v3;
  return result;
}

uint64_t sub_1C0FD1394(uint64_t a1)
{
  sub_1C0FD1868(&qword_1EDE769F8, type metadata accessor for Key, &unk_1C12A2624);
  sub_1C0FD1868(&qword_1EBE90060, type metadata accessor for Key, &unk_1C12A2294);

  return sub_1C1266BE0();
}

uint64_t sub_1C0FD1474@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 32))(a5, a1);
  result = sub_1C1264130();
  *(a5 + *(result + 36)) = a2;
  return result;
}

unint64_t sub_1C0FD1500()
{
  result = qword_1EDE7F660;
  if (!qword_1EDE7F660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7F660);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_17PhotosSwiftUICore0A41DetailsNavigationRepresentedItemTransformVSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 __swift_memcpy24_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for PhotosColumns(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PhotosColumns(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

uint64_t sub_1C0FD1728(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C0FD1768(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1C0FD17CC()
{
  result = qword_1EBE8FFE8;
  if (!qword_1EBE8FFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE8FFE8);
  }

  return result;
}

uint64_t sub_1C0FD1868(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C0FD19D0(uint64_t a1)
{
  sub_1C1265EA0();
  v1 = sub_1C1265E70();

  return v1;
}

uint64_t sub_1C0FD1A5C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_3();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_1C0FD1B20(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C0FD1B40(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

void sub_1C0FD1E1C(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t PhotosPrefetchable.UserDefaultsPersistence.__allocating_init(key:)()
{
  v0 = swift_allocObject();
  v1 = OUTLINED_FUNCTION_2();
  PhotosPrefetchable.UserDefaultsPersistence.init(key:)(v1, v2);
  return v0;
}

uint64_t PhotosPrefetchable.UserDefaultsPersistence.init(key:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE902A0, &qword_1C12A2B80);
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  swift_defaultActor_initialize();
  *(v2 + 112) = a1;
  *(v2 + 120) = a2;
  v14 = xmmword_1C12A2B60;
  v11 = objc_opt_self();

  v12 = [v11 standardUserDefaults];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE902A8, &qword_1C12A2B88);
  sub_1C12623D0();
  (*(v7 + 32))(v2 + qword_1EDE831C0, v10, v5);
  return v2;
}

uint64_t sub_1C0FD2050(uint64_t a1)
{
  v3 = v1;
  v19[1] = *MEMORY[0x1E69E9840];
  if (qword_1EDE83080 != -1)
  {
    OUTLINED_FUNCTION_0_3(&qword_1EDE83080);
  }

  v4 = sub_1C1262720();
  __swift_project_value_buffer(v4, qword_1EDE9B6F0);

  v5 = sub_1C12626F0();
  v6 = sub_1C1266400();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19[0] = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_1C0FA0E80(*(v3 + 112), *(v3 + 120), v19);
    _os_log_impl(&dword_1C0F96000, v5, v6, "UserDefaultsPersistence saving to default:%s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    OUTLINED_FUNCTION_4_8();
    OUTLINED_FUNCTION_4_8();
  }

  sub_1C1261950();
  swift_allocObject();
  sub_1C1261940();
  v9 = sub_1C1261930();
  v11 = v10;

  if (!v2)
  {
    v13 = sub_1C1261C90();
    v19[0] = 0;
    v14 = [v13 compressedDataUsingAlgorithm:0 error:v19];

    if (v14)
    {
      v15 = v19[0];
      v16 = MEMORY[0x1C68EB5C0](v14);
      sub_1C0FD22AC(v16, v17);
    }

    else
    {
      v18 = v19[0];
      sub_1C1261BD0();

      swift_willThrow();
    }

    return sub_1C0FD24EC(v9, v11);
  }

  return result;
}

uint64_t sub_1C0FD22AC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v2 = OUTLINED_FUNCTION_2();
  sub_1C0FD2A70(v2, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE902A0, &qword_1C12A2B80);
  sub_1C12623C0();
  swift_endAccess();
  v4 = OUTLINED_FUNCTION_2();
  return sub_1C0FD24D8(v4, v5);
}

uint64_t PhotosPrefetchable.UserDefaultsPersistence.deinit()
{

  v1 = qword_1EDE831C0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE902A0, &qword_1C12A2B80);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t PhotosPrefetchable.UserDefaultsPersistence.__deallocating_deinit()
{
  PhotosPrefetchable.UserDefaultsPersistence.deinit();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1C0FD2414@<X0>(uint64_t *a1@<X8>)
{
  result = PhotosPrefetchable.UserDefaultsPersistence.__allocating_init(key:)();
  *a1 = result;
  return result;
}

uint64_t sub_1C0FD243C(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1C0FD245C);
}

uint64_t sub_1C0FD245C()
{
  sub_1C0FD2050(*(v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C0FD24D8(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1C0FD24EC(result, a2);
  }

  return result;
}

uint64_t sub_1C0FD24EC(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

char *sub_1C0FD2544(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE902B0, &qword_1C12A2C78);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t dispatch thunk of PhotosPrefetchable.Persistence.load()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (OUTLINED_FUNCTION_3_9(a1, a2, a3) + 40);
  v10 = (*v9 + **v9);
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_1C0FD277C;

  return v10(v6, v4, v3);
}

uint64_t sub_1C0FD277C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t dispatch thunk of PhotosPrefetchable.Persistence.save(state:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (OUTLINED_FUNCTION_3_9(a1, a2, a3) + 48);
  v10 = (*v9 + **v9);
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_1C0FD2ADC;

  return v10(v6, v4, v3);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1C0FD2A70(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1C0FD2A84(a1, a2);
  }

  return a1;
}

uint64_t sub_1C0FD2A84(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t PhotosModelFactory.init(itemListManager:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = a5;
  v12[5] = a6;
  v12[6] = a1;
  v12[7] = a2;
  v14[0] = a3;
  v14[1] = a4;
  v14[2] = a5;
  v14[3] = a6;
  type metadata accessor for PhotosItemBackedModelFactory(0, v14);
  return sub_1C12628D0();
}

uint64_t sub_1C0FD2B94@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C0FD2BC8(*(v1 + 48), *(v1 + 56), *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40));
  *a1 = result;
  return result;
}

uint64_t sub_1C0FD2BC8(void (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8[0] = a3;
  v8[1] = a4;
  v8[2] = a5;
  v8[3] = a6;
  type metadata accessor for PhotosItemBackedModelFactory(0, v8);
  a1();
  return PhotosItemBackedModelFactory.__allocating_init(itemListManager:)();
}

uint64_t _s17PhotosSwiftUICore0A12ModelFactoryV12wrappedValueAA0a10ItemBackeddE0Cyxq_Gvg_0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = *(a1 + 16);
  v3[1] = v1;
  type metadata accessor for PhotosItemBackedModelFactory(255, v3);
  sub_1C1262900();
  sub_1C12628E0();
  return *&v3[0];
}

void sub_1C0FD2C80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  (*(v8 + 16))(&v9 - v7, a1, v6);
  sub_1C0FA7254();
}

uint64_t sub_1C0FD2D80@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C0FA7D84(&v3);
  *a1 = v3;
  return result;
}

void sub_1C0FD2DF4()
{
  OUTLINED_FUNCTION_23();
  v55 = v1;
  v2 = *v0;
  OUTLINED_FUNCTION_10_8();
  v4 = *(v3 + 104);
  OUTLINED_FUNCTION_10_8();
  v6 = *(v5 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0();
  v54 = v8;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v9);
  v46 = &v38 - v10;
  OUTLINED_FUNCTION_10_8();
  v12 = *(v11 + 96);
  v49 = *(v2 + 80);
  v50 = v12;
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0();
  v51 = v14;
  v52 = v13;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v15);
  v47 = &v38 - v16;
  v17 = swift_getAssociatedTypeWitness();
  v18 = sub_1C1266790();
  OUTLINED_FUNCTION_0();
  v45 = v19;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v20);
  v48 = &v38 - v21;
  v53 = v17;
  v44 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v38 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v38 - v26;
  sub_1C0FA80F4();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_1C1265D00();

  if (!v57[0])
  {
    v39 = v24;
    v40 = AssociatedConformanceWitness;
    v41 = v18;
    v42 = v27;
    v43 = v4;
    v29 = v47;
    sub_1C12620A0();
    v57[3] = AssociatedTypeWitness;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v57);
    v54 = *(v54 + 16);
    (v54)(boxed_opaque_existential_1, v55, AssociatedTypeWitness);
    v31 = v52;
    swift_getAssociatedConformanceWitness();
    v32 = v48;
    sub_1C1262340();
    (*(v51 + 8))(v29, v31);
    __swift_destroy_boxed_opaque_existential_0Tm(v57);
    v33 = v53;
    if (__swift_getEnumTagSinglePayload(v32, 1, v53) == 1)
    {
      (*(v45 + 8))(v32, v41);
    }

    else
    {
      v34 = v44;
      v35 = v42;
      (*(v44 + 32))(v42, v32, v33);
      v36 = v39;
      (*(v34 + 16))(v39, v35, v33);
      v37 = (*(v43 + 40))(v36, v6);
      (v54)(v46, v55, AssociatedTypeWitness);
      v56 = v37;
      swift_beginAccess();
      sub_1C1265CF0();
      swift_unknownObjectRetain_n();
      OUTLINED_FUNCTION_15_7();
      sub_1C1265D10();
      swift_endAccess();
      swift_unknownObjectRelease();
      (*(v34 + 8))(v35, v33);
    }
  }

  OUTLINED_FUNCTION_22_0();
}

char *PhotosItemBackedModelFactory.deinit()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v1 = *(*v0 + 152);
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_3();
  (*(v2 + 8))(v0 + v1);
  v3 = *(*v0 + 160);
  sub_1C1261F70();
  OUTLINED_FUNCTION_3();
  (*(v4 + 8))(v0 + v3);
  return v0;
}

uint64_t PhotosItemBackedModelFactory.__deallocating_deinit()
{
  PhotosItemBackedModelFactory.deinit();
  OUTLINED_FUNCTION_16_4();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v2, v3);
}

uint64_t sub_1C0FD3454(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4[0] = *(a1 + 16);
  v4[1] = v1;
  type metadata accessor for PhotosItemBackedModelFactory(255, v4);
  result = sub_1C1262900();
  if (v3 <= 0x3F)
  {
    v5 = 0;
    *&v4[0] = result;
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t PhotosCollectionTitleOverlay.init(model:configuration:playButton:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(uint64_t, __n128)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v19[0] = a4;
  v11 = *a2;
  v10 = a2[1];
  v13 = a2[2];
  v12 = a2[3];
  v14 = a2[4];
  v19[1] = a5;
  v19[2] = a6;
  v19[3] = a7;
  type metadata accessor for PhotosCollectionTitleOverlay(0, v19);
  if (qword_1EDE79640 != -1)
  {
    OUTLINED_FUNCTION_7_6(&qword_1EDE79640);
  }

  v16.n128_f64[0] = OUTLINED_FUNCTION_13_4(&xmmword_1EDE79648);
  *a8 = a1;
  if (!v11)
  {
    if (qword_1EBE8FBF8 != -1)
    {
      OUTLINED_FUNCTION_6_6(&qword_1EBE8FBF8);
    }

    v11 = qword_1EBE902C0;
    v10 = *algn_1EBE902C8;
    LOBYTE(v13) = byte_1EBE902D0;
    v12 = qword_1EBE902D8;
    v14 = unk_1EBE902E0;

    v15 = sub_1C0FCF1B4(v12, v14);
  }

  *(a8 + 8) = v11;
  *(a8 + 16) = v10;
  *(a8 + 24) = v13 & 1;
  *(a8 + 32) = v12;
  *(a8 + 40) = v14;
  return a3(v15, v16);
}

uint64_t PhotosCollectionTitleOverlay.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v50 = a2;
  v44 = *(a1 + 16);
  v4 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v45 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = *(v6 + 24);
  v46 = *(v6 + 32);
  *&v8 = v7;
  *(&v8 + 1) = v48;
  v57 = v8;
  v58 = v46;
  v9 = type metadata accessor for TitleText(0, &v57);
  OUTLINED_FUNCTION_0();
  v49 = v10;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v42 - v12;
  v14 = sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  v43 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v47 = &v42 - v20;
  v21 = *(a1 + 56);
  v22 = (v2 + *(a1 + 60));
  v23 = *(v22 + 4);
  v24 = v22[1];
  v57 = *v22;
  v58 = v24;
  v59 = v23;
  v25 = *v2;
  v26 = *(v2 + 16);
  v27 = *(v2 + 24);
  v28 = *(v2 + 32);
  v29 = *(v2 + 40);
  v53[0] = *(v2 + 8);
  v53[1] = v26;
  v54 = v27;
  v55 = v28;
  v56 = v29;
  v30 = *(v4 + 16);
  v31 = v2 + v21;
  v32 = v45;
  v33 = v44;
  v30(v45, v31, v44);
  swift_unknownObjectRetain();

  sub_1C0FCF1B4(v28, v29);
  v34 = *(&v46 + 1);
  v35 = v48;
  sub_1C0FD3ABC(v25, &v57, v53, v32, v33, v48, v46, *(&v46 + 1), v13);
  (*(v34 + 16))(v35, v34);
  OUTLINED_FUNCTION_3_10();
  WitnessTable = swift_getWitnessTable();
  v37 = v43;
  sub_1C1264F50();
  (*(v49 + 8))(v13, v9);
  v51 = WitnessTable;
  v52 = MEMORY[0x1E697E5C0];
  OUTLINED_FUNCTION_4_0();
  swift_getWitnessTable();
  v38 = *(v16 + 16);
  v39 = v47;
  v38(v47, v37, v14);
  v40 = *(v16 + 8);
  v40(v37, v14);
  v38(v50, v39, v14);
  return (v40)(v39, v14);
}

uint64_t sub_1C0FD3ABC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v12 = *(a2 + 16);
  *(a9 + 8) = *a2;
  v13 = *(a2 + 32);
  v14 = *(a3 + 16);
  *a9 = a1;
  *(a9 + 24) = v12;
  *(a9 + 40) = v13;
  *(a9 + 48) = *a3;
  *(a9 + 64) = v14;
  *(a9 + 72) = *(a3 + 24);
  v30[0] = a5;
  v30[1] = a6;
  v30[2] = a7;
  v30[3] = a8;
  v15 = type metadata accessor for TitleText(0, v30);
  (*(*(a5 - 8) + 32))(a9 + v15[15], a4, a5);
  v16 = a9 + v15[16];
  *v16 = swift_getKeyPath();
  *(v16 + 8) = 0;
  v17 = v15[17];
  *(a9 + v17) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90428, &qword_1C12A3220);
  swift_storeEnumTagMultiPayload();
  v18 = (a9 + v15[18]);
  v19 = sub_1C0FD7B5C(0.0, 0.0);
  *v18 = v20;
  v18[1] = v21;
  v18[2] = v19;
  v22 = (a9 + v15[19]);
  v23 = sub_1C0FD7B5C(0.0, 0.0);
  *v22 = v24;
  v22[1] = v25;
  v22[2] = v23;
  v26 = (a9 + v15[20]);
  result = sub_1C0FD7B5C(0.0, 0.0);
  *v26 = v28;
  v26[1] = v29;
  v26[2] = result;
  return result;
}

uint64_t PhotosCollectionTitleOverlayPosition.description.getter()
{
  if (*v0)
  {
    return 0x706F546C6C616D53;
  }

  else
  {
    return 0xD000000000000019;
  }
}

uint64_t PhotosCollectionTitleOverlayPosition.hashValue.getter()
{
  v1 = *v0;
  sub_1C1266E90();
  MEMORY[0x1C68F07E0](v1);
  return sub_1C1266EE0();
}

double sub_1C0FD3DB0()
{
  result = 0.0;
  xmmword_1EDE79648 = xmmword_1C12A2E10;
  *&qword_1EDE79658 = xmmword_1C12A2E20;
  qword_1EDE79668 = 0x4024000000000000;
  return result;
}

double static PhotosCollectionTitleOverlaySpec.defaultSpec.getter()
{
  if (qword_1EDE79640 != -1)
  {
    OUTLINED_FUNCTION_7_6(&qword_1EDE79640);
  }

  return OUTLINED_FUNCTION_13_4(&xmmword_1EDE79648);
}

double static PhotosCollectionTitleOverlaySpec.bottomFadingDistance(verticalSizeClass:)(uint64_t a1)
{
  v3 = sub_1C1263EB0();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1_4();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE902E8, &unk_1C12A2E90) - 8;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE902F0, &qword_1C12B38C0);
  v12 = OUTLINED_FUNCTION_15(v11);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v24 - v17;
  (*(v5 + 104))(&v24 - v17, *MEMORY[0x1E697FF38], v3, v16);
  __swift_storeEnumTagSinglePayload(v18, 0, 1, v3);
  v19 = *(v7 + 56);
  sub_1C0FDB800(a1, v10, &qword_1EBE902F0, &qword_1C12B38C0);
  sub_1C0FDB800(v18, &v10[v19], &qword_1EBE902F0, &qword_1C12B38C0);
  OUTLINED_FUNCTION_17_1(v10);
  if (v21)
  {
    sub_1C0FD1A5C(v18, &qword_1EBE902F0, &qword_1C12B38C0);
    OUTLINED_FUNCTION_17_1(&v10[v19]);
    if (v21)
    {
      sub_1C0FD1A5C(v10, &qword_1EBE902F0, &qword_1C12B38C0);
      return 20.0;
    }

    goto LABEL_9;
  }

  sub_1C0FDB800(v10, v14, &qword_1EBE902F0, &qword_1C12B38C0);
  OUTLINED_FUNCTION_17_1(&v10[v19]);
  if (v21)
  {
    sub_1C0FD1A5C(v18, &qword_1EBE902F0, &qword_1C12B38C0);
    (*(v5 + 8))(v14, v3);
LABEL_9:
    sub_1C0FD1A5C(v10, &qword_1EBE902E8, &unk_1C12A2E90);
    return 200.0;
  }

  (*(v5 + 32))(v1, &v10[v19], v3);
  sub_1C0FDBA00(&qword_1EDE7BAB0, MEMORY[0x1E697FF50], MEMORY[0x1E697FF60]);
  v22 = sub_1C1265DE0();
  v23 = *(v5 + 8);
  v23(v1, v3);
  sub_1C0FD1A5C(v18, &qword_1EBE902F0, &qword_1C12B38C0);
  v23(v14, v3);
  sub_1C0FD1A5C(v10, &qword_1EBE902F0, &qword_1C12B38C0);
  result = 20.0;
  if ((v22 & 1) == 0)
  {
    return 200.0;
  }

  return result;
}

uint64_t sub_1C0FD4188@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](a1);
  (*(v4 + 16))(&v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  v7 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v8 = swift_allocObject();
  v9 = *(a1 + 32);
  v18 = *(a1 + 16);
  v19 = v9;
  *(v8 + 16) = v18;
  *(v8 + 32) = v9;
  (*(v4 + 32))(v8 + v7, &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90430, &qword_1C12A3228);
  sub_1C1263190();
  sub_1C1263190();
  v28 = v19;
  v29 = MEMORY[0x1E697E5D8];
  WitnessTable = swift_getWitnessTable();
  v27 = MEMORY[0x1E697E270];
  swift_getWitnessTable();
  sub_1C12633A0();
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90438, &qword_1C12A3230);
  sub_1C1263C30();
  v10 = sub_1C0FDAC84();
  v11 = swift_getWitnessTable();
  v24 = v10;
  v25 = v11;
  v12 = swift_getWitnessTable();
  v13 = sub_1C0FDADF4();
  v22 = v12;
  v23 = v13;
  swift_getWitnessTable();
  v20 = sub_1C1262F10();
  v21 = v14;
  v15 = sub_1C1262F20();
  swift_getWitnessTable();
  v16 = *(*(v15 - 8) + 16);
  v16(v30, &v20, v15);

  v20 = v30[0];
  v21 = v30[1];
  v16(a2, &v20, v15);
}

uint64_t sub_1C0FD44BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v127 = a5;
  v128 = a3;
  v126 = a1;
  v124 = a7;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90478, &qword_1C12A3250);
  MEMORY[0x1EEE9AC00](v105);
  v107 = (&v104 - v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90438, &qword_1C12A3230);
  MEMORY[0x1EEE9AC00](v12);
  v106 = &v104 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v110 = &v104 - v15;
  v111 = sub_1C1262130();
  v109 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111);
  v108 = &v104 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90430, &qword_1C12A3228);
  sub_1C1263190();
  v18 = sub_1C1263190();
  v151[7] = a5;
  v151[8] = MEMORY[0x1E697E5D8];
  v151[5] = swift_getWitnessTable();
  v151[6] = MEMORY[0x1E697E270];
  WitnessTable = swift_getWitnessTable();
  v113 = v18;
  v19 = sub_1C12633A0();
  v114 = v17;
  v119 = v19;
  v20 = sub_1C1263190();
  v117 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v116 = &v104 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v115 = &v104 - v23;
  v121 = v24;
  v123 = v12;
  v122 = sub_1C1263C30();
  v120 = *(v122 - 8);
  MEMORY[0x1EEE9AC00](v122);
  v118 = &v104 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE902F0, &qword_1C12B38C0);
  v27 = MEMORY[0x1EEE9AC00](v26 - 8);
  v29 = &v104 - v28;
  (*(a6 + 64))(v151, a4, a6, v27);
  v125 = a2;
  v30 = sub_1C0FD5194(v151, v126, a2, v128, a4, v127, a6);
  if (qword_1EDE7C260 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v32 = qword_1EDE7C280;
  v31 = unk_1EDE7C288;
  v33 = __swift_project_boxed_opaque_existential_1(&qword_1EDE7C268, qword_1EDE7C280);
  v34 = *(v32 - 8);
  v35 = MEMORY[0x1EEE9AC00](v33);
  v37 = &v104 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v34 + 16))(v37, v35);
  (*(v31 + 16))(v32, v31);
  (*(v34 + 8))(v37, v32);
  v38 = *(a6 + 40);
  v39 = v38(a4, a6);
  (*(a6 + 8))(v150 + 1, a4, a6);
  v40 = v38(a4, a6);
  v41 = v127;
  v42 = v128;
  *&v143[0] = v128;
  *(&v143[0] + 1) = a4;
  *&v143[1] = v127;
  *(&v143[1] + 1) = a6;
  type metadata accessor for TitleText(0, v143);
  v43 = v125;
  sub_1C0FD72CC(v29);
  v44 = static PhotosCollectionTitleOverlaySpec.bottomFadingDistance(verticalSizeClass:)(v29);
  sub_1C0FD1A5C(v29, &qword_1EBE902F0, &qword_1C12B38C0);
  v141[0] = v40 / v44;
  v143[0] = xmmword_1C12A2E30;
  sub_1C0FDAF38();
  sub_1C1265D80();
  v45 = *v131;
  v46 = v126;
  sub_1C1262D40();
  v48 = v47;
  (*(a6 + 32))(v150, a4, a6);
  v49 = a4;
  if (v150[0])
  {
    v50 = v108;
    (*(a6 + 56))(v49, a6);
    v51 = sub_1C1265170();
    v52 = sub_1C1265980();
    v53 = v49;
    v54 = v52;
    v56 = v55;
    v57 = v42;
    v58 = v107;
    v59 = v107 + *(v105 + 36);
    sub_1C0FD6CB0(v43, v150 + 1, v50, v57, v53, v41, a6, v59);
    v60 = &v59[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90480, &qword_1C12A3258) + 36)];
    *v60 = v54;
    v60[1] = v56;
    *v58 = v51;
    sub_1C1262120();
    v62 = v61;
    v63 = COERCE_DOUBLE(sub_1C12620E0());
    if (v64)
    {
      v63 = 0.0;
    }

    v65 = v63 - v62;
    sub_1C0FDAE80();
    v66 = v106;
    sub_1C0FDB71C(v58, v106, &qword_1EBE90478, &qword_1C12A3250);
    v67 = v66 + *(v123 + 36);
    *v67 = 0;
    *(v67 + 8) = v65;
    v68 = v110;
    sub_1C0FDB71C(v66, v110, &qword_1EBE90438, &qword_1C12A3230);
    v69 = sub_1C0FDAC84();
    v70 = swift_getWitnessTable();
    v148 = v69;
    v149 = v70;
    swift_getWitnessTable();
    sub_1C0FDADF4();
    v71 = v118;
    sub_1C1112E18();
    sub_1C0FD1A5C(v68, &qword_1EBE90438, &qword_1C12A3230);
    (*(v109 + 8))(v50, v111);
  }

  else
  {
    v72 = v48 * 0.7;
    v73 = v45 * (1.0 - (*(a6 + 48))(a4, a6));
    v111 = sub_1C1265170();
    v74 = sub_1C1265960();
    v75 = a4;
    v76 = v74;
    v78 = v77;
    v79 = v43;
    v80 = v43;
    v81 = v75;
    sub_1C0FD5260(v150 + 1, v80, v46, v151, v42, v75, v41, a6, v132, v72, v39, v73);
    memcpy(v131, v132, 0x49uLL);
    memcpy(v133, v131, 0x50uLL);
    v133[10] = v76;
    v133[11] = v78;
    memcpy(v142, v133, sizeof(v142));
    memcpy(v134, v131, sizeof(v134));
    v135 = v76;
    v136 = v78;
    v82 = v46;
    sub_1C0FDB800(v133, v143, &qword_1EBE90460, &qword_1C12A3240);
    sub_1C0FD1A5C(v134, &qword_1EBE90460, &qword_1C12A3240);
    v83 = sub_1C1265990();
    v85 = v84;
    v86 = v79;
    v87 = v128;
    sub_1C0FD5C60(v151, v86, v82, v128, v81, v41, a6, v131, v30, v73);
    memcpy(v137, v131, 0x98uLL);
    v137[19] = v83;
    v137[20] = v85;
    memcpy(v141, v137, sizeof(v141));
    memcpy(v138, v131, sizeof(v138));
    v139 = v83;
    v140 = v85;
    sub_1C0FDB800(v137, v143, &qword_1EBE90470, &qword_1C12A3248);
    sub_1C0FD1A5C(v138, &qword_1EBE90470, &qword_1C12A3248);
    v131[0] = v111;
    memcpy(&v131[1], v142, 0x60uLL);
    memcpy(&v131[13], v141, 0xA8uLL);
    v88 = sub_1C1265970();
    MEMORY[0x1EEE9AC00](v88);
    *(&v104 - 8) = v87;
    *(&v104 - 7) = v81;
    *(&v104 - 6) = v41;
    *(&v104 - 5) = a6;
    *(&v104 - 4) = v151;
    *(&v104 - 3) = v125;
    *(&v104 - 2) = v39;
    *(&v104 - 1) = v82;
    v89 = sub_1C0FDAC84();
    v90 = v116;
    sub_1C1264F60();
    memcpy(v143, v131, sizeof(v143));
    sub_1C0FD1A5C(v143, &qword_1EBE90430, &qword_1C12A3228);
    v91 = swift_getWitnessTable();
    v129 = v89;
    v130 = v91;
    v92 = v121;
    v128 = swift_getWitnessTable();
    v93 = v117;
    v94 = *(v117 + 16);
    v95 = v115;
    v94(v115, v90, v92);
    v96 = *(v93 + 8);
    v96(v90, v92);
    v94(v90, v95, v92);
    sub_1C0FDADF4();
    v71 = v118;
    sub_1C1112D68();
    v96(v90, v92);
    v96(v95, v92);
  }

  v97 = sub_1C0FDAC84();
  v98 = swift_getWitnessTable();
  v146 = v97;
  v147 = v98;
  v99 = swift_getWitnessTable();
  v100 = sub_1C0FDADF4();
  v144 = v99;
  v145 = v100;
  v101 = v122;
  swift_getWitnessTable();
  v102 = v120;
  (*(v120 + 16))(v124, v71, v101);
  (*(v102 + 8))(v71, v101);
  __swift_destroy_boxed_opaque_existential_0Tm((v150 + 1));
  return sub_1C0FD1A5C(v151, &qword_1EBE90488, &qword_1C12A3260);
}

double sub_1C0FD5194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (!*(a1 + 24))
  {
    return 0.0;
  }

  sub_1C1262D40();
  (*(a7 + 40))(a5, a7);
  sub_1C0FDAF38();
  sub_1C1265D80();
  return v10;
}

double sub_1C0FD5260@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>)
{
  v49 = a7;
  v50 = a8;
  v47 = a5;
  v48 = a6;
  *&v51 = a4;
  v45 = a3;
  v46 = a2;
  v44 = a1;
  v21 = sub_1C1262D60();
  v42 = v21;
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v43 = &v41 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v55 = a5;
  *(&v55 + 1) = a6;
  v56 = a7;
  v57 = a8;
  v24 = type metadata accessor for TitleText(0, &v55);
  v41 = v24;
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v41 - v27;
  v52 = sub_1C1263AB0();
  sub_1C0FDB0A8(v44, &v55);
  (*(v25 + 16))(v28, a2, v24);
  (*(v22 + 16))(&v41 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), v45, v21);
  sub_1C0FDB800(v51, v53, &qword_1EBE90488, &qword_1C12A3260);
  v29 = (*(v25 + 80) + 96) & ~*(v25 + 80);
  v30 = (v26 + *(v22 + 80) + v29) & ~*(v22 + 80);
  v31 = (v23 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = (v31 + 15) & 0xFFFFFFFFFFFFFFF8;
  v33 = swift_allocObject();
  v34 = v48;
  *(v33 + 16) = v47;
  *(v33 + 24) = v34;
  v35 = v50;
  *(v33 + 32) = v49;
  *(v33 + 40) = v35;
  sub_1C0F9DDE4(&v55, v33 + 48);
  *(v33 + 88) = a10;
  (*(v25 + 32))(v33 + v29, v28, v41);
  (*(v22 + 32))(v33 + v30, v43, v42);
  *(v33 + v31) = a11;
  v36 = v33 + v32;
  *(v36 + 32) = v54;
  v37 = v53[1];
  *v36 = v53[0];
  *(v36 + 16) = v37;
  *(v33 + ((v32 + 47) & 0xFFFFFFFFFFFFFFF8)) = a12;
  v51 = *(v46 + 16);
  v38 = *(v46 + 32);
  v39 = sub_1C1264470();
  *a9 = a10;
  *(a9 + 8) = v52;
  *(a9 + 16) = sub_1C0FDB10C;
  *(a9 + 24) = v33;
  *(a9 + 32) = v39;
  *(a9 + 40) = 0;
  result = *&v51;
  *(a9 + 48) = v51;
  *(a9 + 64) = v38;
  *(a9 + 72) = 0;
  return result;
}

uint64_t sub_1C0FD55B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>)
{
  v34 = a3;
  v35 = a4;
  v39[0] = a5;
  v39[1] = a6;
  v39[2] = a7;
  v39[3] = a8;
  v36 = type metadata accessor for TitleText(0, v39);
  v22 = *(v36 - 8);
  v33 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v24 = &v31 - v23;
  sub_1C0FDB0A8(a1, v38);
  v25 = sub_1C1263AB0();
  sub_1C0FDB0A8(v38, a9);
  *(a9 + 40) = v25;
  if (qword_1EDE7A398 != -1)
  {
    swift_once();
  }

  memcpy(v39, &qword_1EDE9B5D8, 0x70uLL);
  sub_1C0FDB260(v39, &v37);
  __swift_destroy_boxed_opaque_existential_0Tm(v38);
  memcpy((a9 + 48), v39, 0x70uLL);
  *(a9 + 160) = a10;
  *(a9 + 168) = 0;
  *(a9 + 176) = sub_1C0FD5830(a6, a8);
  v32 = a5;
  sub_1C0FD589C(a2, a11, v34, v35, a5, a6, a7, a8);
  *(a9 + 184) = 0;
  *(a9 + 192) = v26;
  *(a9 + 200) = a12;
  v27 = v36;
  (*(v22 + 16))(v24, a2, v36);
  v28 = (*(v22 + 80) + 48) & ~*(v22 + 80);
  v29 = swift_allocObject();
  *(v29 + 2) = v32;
  *(v29 + 3) = a6;
  *(v29 + 4) = a7;
  *(v29 + 5) = a8;
  result = (*(v22 + 32))(&v29[v28], v24, v27);
  *(a9 + 208) = sub_1C0FDBA5C;
  *(a9 + 216) = 0;
  *(a9 + 224) = sub_1C0FDB478;
  *(a9 + 232) = v29;
  return result;
}

uint64_t sub_1C0FD5830(uint64_t a1, uint64_t a2)
{
  (*(a2 + 24))(&var1, a1);
  if (var1 == 1)
  {

    return sub_1C12651F0();
  }

  else
  {

    return sub_1C1265190();
  }
}

void *sub_1C0FD589C(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = sub_1C12637E0();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v32 = a5;
  *(&v32 + 1) = a6;
  v33 = a7;
  v34 = a8;
  v18 = type metadata accessor for TitleText(0, &v32);
  v19 = (a1 + v18[18]);
  v20 = *v19;
  v21 = v19[1];
  v22 = v19[2];
  *&v32 = *v19;
  *(&v32 + 1) = v21;
  v33 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90490, &qword_1C12A3268);
  sub_1C1265420();
  sub_1C1262D40();
  if (PXFloatApproximatelyEqualToFloat())
  {
    sub_1C1262D40();
    *&v32 = v20;
    *(&v32 + 1) = v21;
    v33 = v22;
    return sub_1C1265420();
  }

  else
  {
    v24 = a1 + v18[16];
    v25 = *v24;
    if (*(v24 + 8) != 1)
    {

      sub_1C1266420();
      v26 = sub_1C1264410();
      sub_1C1262620();

      sub_1C12637D0();
      swift_getAtKeyPath();
      sub_1C0FA03F4(v25, 0);
      (*(v15 + 8))(v17, v14);
    }

    sub_1C0FDB800(a4, &v32, &qword_1EBE90488, &qword_1C12A3260);
    v27 = v34;
    if (v34)
    {
      v28 = v35;
      __swift_project_boxed_opaque_existential_1(&v32, v34);
      v29 = sub_1C121059C(v27, v28);
      result = __swift_destroy_boxed_opaque_existential_0Tm(&v32);
      if (v29)
      {
        v30 = (a1 + v18[19]);
        v31 = *(v30 + 2);
        v32 = *v30;
        v33 = v31;
        return sub_1C1265420();
      }
    }

    else
    {
      return sub_1C0FD1A5C(&v32, &qword_1EBE90488, &qword_1C12A3260);
    }
  }

  return result;
}

void *sub_1C0FD5B94(uint64_t a1, double a2, double a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90490, &qword_1C12A3268);
  sub_1C1265420();
  sub_1C1265430();
  return sub_1C0FD7918(a1, v5, v6);
}

void *sub_1C0FD5C60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>, double a9@<D0>, double a10@<D1>)
{
  v54 = a3;
  v19 = sub_1C12637E0();
  v53 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0FDB800(a1, v59, &qword_1EBE90488, &qword_1C12A3260);
  if (*&v59[24])
  {
    sub_1C0F9DDE4(v59, v61);
    v22 = *(a2 + 8);
    v23 = *(a2 + 16);
    v25 = *(a2 + 24);
    v24 = *(a2 + 32);
    v26 = *(a2 + 40);
    v49 = a4;
    v50 = a5;
    v65[0] = a4;
    v65[1] = a5;
    v51 = a6;
    v65[2] = a6;
    v65[3] = a7;
    v27 = a2 + *(type metadata accessor for TitleText(0, v65) + 64);
    v28 = *v27;
    v29 = *(v27 + 8);
    v30 = a7;
    v52 = a8;
    if (v29 == 1)
    {
      v31 = v28;
      LOBYTE(v65[0]) = v28;
    }

    else
    {

      sub_1C1266420();
      v32 = sub_1C1264410();
      sub_1C1262620();

      sub_1C12637D0();
      swift_getAtKeyPath();
      sub_1C0FA03F4(v28, 0);
      (*(v53 + 8))(v21, v19);
      v31 = LOBYTE(v65[0]);
    }

    v33 = v62;
    v34 = v63;
    __swift_project_boxed_opaque_existential_1(v61, v62);
    v35 = sub_1C121059C(v33, v34);
    v36 = 4.0;
    if (v35)
    {
      v36 = v23;
    }

    v37 = 24.0;
    if (v35)
    {
      v38 = v25;
    }

    else
    {
      v38 = 24.0;
    }

    if (v31 != 1)
    {
      v37 = v38;
    }

    v64[0] = v22;
    *&v64[1] = v36;
    *&v64[2] = v37;
    v64[3] = v24;
    v64[4] = v26;
    v39 = *v27;
    if (*(v27 + 8) == 1)
    {
      v40 = *v27;
      v60 = *v27;
    }

    else
    {

      sub_1C1266420();
      v41 = sub_1C1264410();
      sub_1C1262620();

      sub_1C12637D0();
      swift_getAtKeyPath();
      sub_1C0FA03F4(v39, 0);
      (*(v53 + 8))(v21, v19);
      v40 = v60;
    }

    v43 = v50;
    v42 = v51;
    v44 = v49;
    v45 = v40 == 1;
    v46 = sub_1C12638E0();
    v56 = 1;
    sub_1C0FD60B8(v61, a2, v54, v45, v64, v44, v43, v42, v65, a9, a10, v30);
    memcpy(v57, v65, 0x7AuLL);
    memcpy(v58, v65, 0x7AuLL);
    sub_1C0FDB800(v57, v59, &qword_1EBE90498, &qword_1C12A3270);
    sub_1C0FD1A5C(v58, &qword_1EBE90498, &qword_1C12A3270);
    memcpy(&v55[7], v57, 0x7AuLL);
    *v59 = v46;
    *&v59[8] = 0;
    v59[16] = v56;
    memcpy(&v59[17], v55, 0x81uLL);
    nullsub_1();
    __swift_destroy_boxed_opaque_existential_0Tm(v61);
    memcpy(v65, v59, 0x92uLL);
    a8 = v52;
  }

  else
  {
    sub_1C0FD1A5C(v59, &qword_1EBE90488, &qword_1C12A3260);
    sub_1C0FDAFA4(v65);
  }

  return memcpy(a8, v65, 0x92uLL);
}

uint64_t sub_1C0FD60B8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, double a10@<D0>, double a11@<D1>, uint64_t a12)
{
  v54 = a6;
  v55 = a8;
  v53 = a7;
  v62 = a5;
  v63 = a9;
  v61 = a4;
  v60 = a3;
  v56 = a2;
  v19 = sub_1C1262130();
  v58 = *(v19 - 8);
  v59 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v57 = &v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66[0] = a6;
  v66[1] = a7;
  v66[2] = a8;
  v66[3] = a12;
  v21 = type metadata accessor for TitleText(0, v66);
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v52 - v23;
  v26 = a1[3];
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v26);
  (*(v25 + 8))(v66, v26, v25);
  v27 = __swift_project_boxed_opaque_existential_1(v66, v66[3]);
  v28 = MEMORY[0x1EEE9AC00](v27);
  (*(v30 + 16))(&v52 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0), v28);
  v52 = sub_1C12655D0();
  (*(v22 + 16))(v24, v56, v21);
  v31 = (*(v22 + 80) + 48) & ~*(v22 + 80);
  v32 = swift_allocObject();
  v33 = v53;
  *(v32 + 2) = v54;
  *(v32 + 3) = v33;
  *(v32 + 4) = v55;
  *(v32 + 5) = a12;
  (*(v22 + 32))(&v32[v31], v24, v21);
  __swift_destroy_boxed_opaque_existential_0Tm(v66);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v34 = OUTLINED_FUNCTION_15_6();
  v35 = (*(a12 + 40))(v33, a12);
  sub_1C1262D40();
  v37 = v36;
  v38 = v57;
  (*(a12 + 56))(v33, a12);
  sub_1C1262120();
  v40 = v39;
  (*(v58 + 8))(v38, v59);
  v41 = v37 - v40;
  v42 = v61;
  if (v61)
  {
    v41 = v37 - v40 + -5.0;
  }

  if (v41 >= v35)
  {
    v41 = v35;
  }

  if (v34)
  {
    v43 = a10 * a11;
  }

  else
  {
    v43 = 1.0;
  }

  v44 = -v41;
  v45 = v62[1];
  v59 = v62[2];
  v46 = v59;
  v60 = v45;
  v47 = v62[3];
  v48 = sub_1C1264470();
  v75 = 0;
  v49 = v52;
  v65[0] = v52;
  v65[1] = sub_1C0FDBA5C;
  v65[2] = 0;
  v65[3] = sub_1C0FDAFAC;
  v65[4] = v32;
  *&v65[5] = v43;
  v65[6] = 0;
  *&v65[7] = v44;
  LOBYTE(v65[8]) = v48;
  *(&v65[8] + 1) = v76[0];
  HIDWORD(v65[8]) = *(v76 + 3);
  v65[9] = 0;
  v65[10] = v45;
  v65[11] = v46;
  v65[12] = v47;
  LOBYTE(v65[13]) = 0;
  memcpy(v66, v65, 0x69uLL);
  v64[111] = (v42 & 1) == 0;
  v50 = v63;
  memcpy(v63, v66, 0x70uLL);
  v50[14] = 0;
  *(v50 + 120) = v42;
  *(v50 + 121) = (v42 & 1) == 0;
  v67[0] = v49;
  v67[1] = sub_1C0FDBA5C;
  v67[2] = 0;
  v67[3] = sub_1C0FDAFAC;
  v67[4] = v32;
  *&v67[5] = v43;
  v67[6] = 0;
  *&v67[7] = v44;
  v68 = v48;
  *v69 = v76[0];
  *&v69[3] = *(v76 + 3);
  v70 = 0;
  v71 = v60;
  v72 = v59;
  v73 = v47;
  v74 = 0;
  sub_1C0FDB800(v65, v64, &qword_1EBE904A0, &qword_1C12A3278);
  return sub_1C0FD1A5C(v67, &qword_1EBE904A0, &qword_1C12A3278);
}

uint64_t sub_1C0FD65B8(double *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, double, double), uint64_t a8)
{
  v9 = *a1;
  v10 = a1[1];
  v11 = OUTLINED_FUNCTION_11_6(a1, a2, a3, a4, a5, a6, a7, a8, a3);
  return a7(v11, v9, v10);
}

void *sub_1C0FD660C(uint64_t a1, double a2, double a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90490, &qword_1C12A3268);
  sub_1C1265420();
  sub_1C1265430();
  return sub_1C0FD7AC4(a1, v5, v6);
}

uint64_t sub_1C0FD66D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  v60 = a7;
  v61 = a6;
  v56 = a3;
  v59 = a8;
  v13 = sub_1C1262130();
  v57 = *(v13 - 8);
  v58 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v54 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1C1263190();
  v55 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v50 = &v48 - v20;
  v49 = v21;
  v22 = sub_1C1263190();
  v52 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v51 = &v48 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v53 = &v48 - v25;
  sub_1C0FDB800(a1, &v67, &qword_1EBE90488, &qword_1C12A3260);
  v26 = v70;
  if (v70)
  {
    v27 = v71;
    __swift_project_boxed_opaque_existential_1(&v67, v70);
    v28 = sub_1C121059C(v26, v27);
    __swift_destroy_boxed_opaque_existential_0Tm(&v67);
    if (v28)
    {
      v67 = a4;
      v68 = a5;
      v69 = v61;
      v70 = v60;
      v29 = a2;
      v30 = (a2 + *(type metadata accessor for TitleText(0, &v67) + 76));
      v31 = *v30;
      v32 = v30[1];
      v33 = v30[2];
      v67 = *v30;
      v68 = v32;
      v69 = v33;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90490, &qword_1C12A3268);
      sub_1C1265420();
      if (v62 <= 370.0)
      {
        v67 = v31;
        v68 = v32;
        v69 = v33;
        sub_1C1265420();
      }
    }

    else
    {
      v29 = a2;
    }
  }

  else
  {
    v29 = a2;
    sub_1C0FD1A5C(&v67, &qword_1EBE90488, &qword_1C12A3260);
  }

  v67 = a4;
  v68 = a5;
  v34 = v61;
  v35 = a5;
  v36 = v60;
  v69 = v61;
  v70 = v60;
  v37 = type metadata accessor for TitleText(0, &v67);
  (*(v15 + 16))(v18, v29 + *(v37 + 60), a4);
  v38 = v50;
  sub_1C1264FA0();
  (*(v15 + 8))(v18, a4);
  sub_1C1262D40();
  v39 = v54;
  (*(v36 + 56))(v35, v36);
  sub_1C1262120();
  (*(v57 + 8))(v39, v58);
  v65 = v34;
  v66 = MEMORY[0x1E697E5D8];
  v40 = v49;
  WitnessTable = swift_getWitnessTable();
  v42 = v51;
  sub_1C1264ED0();
  (*(v55 + 8))(v38, v40);
  v63 = WitnessTable;
  v64 = MEMORY[0x1E697E270];
  swift_getWitnessTable();
  v43 = v52;
  v44 = *(v52 + 16);
  v45 = v53;
  v44(v53, v42, v22);
  v46 = *(v43 + 8);
  v46(v42, v22);
  v44(v59, v45, v22);
  return (v46)(v45, v22);
}

uint64_t sub_1C0FD6CB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void (*a8)(void)@<X8>)
{
  v12[2] = a4;
  v12[3] = a5;
  v12[4] = a6;
  v12[5] = a7;
  v12[6] = a2;
  v12[7] = a1;
  v12[8] = a3;
  v13[0] = a4;
  v13[1] = a5;
  v13[2] = a6;
  v13[3] = a7;
  type metadata accessor for TitleText(0, v13);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE904A8, &qword_1C12A3288);
  v10 = sub_1C0FDB53C();
  return sub_1C0FD6E6C(sub_1C0FDB528, v12, v9, v10, a8);
}

uint64_t sub_1C0FD6D54@<X0>(uint64_t a1@<X0>, double *a2@<X1>, uint64_t a4@<X8>)
{
  sub_1C0FDB0A8(a1, a4);
  *(a4 + 40) = sub_1C1263AA0();
  *(a4 + 48) = sub_1C1265190();
  v6 = sub_1C0FD6DE0(a2[1]);
  v8 = v7;
  v10 = v9;
  v12 = v11;
  result = sub_1C1264470();
  *(a4 + 56) = result;
  *(a4 + 64) = v6;
  *(a4 + 72) = v8;
  *(a4 + 80) = v10;
  *(a4 + 88) = v12;
  *(a4 + 96) = 0;
  return result;
}

double sub_1C0FD6DE0(double a1)
{
  sub_1C1262100();
  sub_1C1262110();
  return a1;
}

uint64_t sub_1C0FD6E6C@<X0>(void (*a1)(void)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, void (*a5)(void)@<X8>)
{
  v40 = a1;
  v41 = a2;
  WitnessTable = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v37 - v12;
  v14 = sub_1C12654A0();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v39 = &v37 - v19;
  v20 = sub_1C1263C30();
  v43 = *(v20 - 8);
  v44 = v20;
  v21 = MEMORY[0x1EEE9AC00](v20);
  v42 = &v37 - v22;
  v23 = *(v5 + 72);
  if (v23)
  {
    v24 = *(v5 + 80);
    sub_1C0FCF1B4(*(v5 + 72), v24);

    sub_1C1265480();
    WitnessTable = swift_getWitnessTable();
    v40 = a5;
    v25 = *(v15 + 16);
    v26 = v39;
    v25(v39, v17, v14);
    v41 = a4;
    v27 = *(v15 + 8);
    v27(v17, v14);
    v25(v17, v26, v14);
    a5 = v40;
    v28 = v42;
    sub_1C1112D68();
    sub_1C0FCF004(v23, v24);
    v27(v17, v14);
    v27(v26, v14);
    a4 = v41;
  }

  else
  {
    v29 = WitnessTable;
    (v40)(v21);
    v30 = *(v29 + 16);
    v30(v13, v10, a3);
    v31 = *(v29 + 8);
    v31(v10, a3);
    v30(v10, v13, a3);
    swift_getWitnessTable();
    v32 = v42;
    sub_1C1112E18();
    v31(v10, a3);
    v33 = v13;
    v28 = v32;
    v31(v33, a3);
  }

  v45 = swift_getWitnessTable();
  v46 = a4;
  v34 = v44;
  swift_getWitnessTable();
  v35 = v43;
  (*(v43 + 16))(a5, v28, v34);
  return (*(v35 + 8))(v28, v34);
}

uint64_t sub_1C0FD72CC@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v5 = sub_1C12637E0();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90428, &qword_1C12A3220);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v15 - v10;
  sub_1C0FDB800(v3, &v15 - v10, &qword_1EBE90428, &qword_1C12A3220);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1C0FDB71C(v11, a1, &qword_1EBE902F0, &qword_1C12B38C0);
  }

  sub_1C1266420();
  v13 = sub_1C1264410();
  OUTLINED_FUNCTION_5_10(v13, &dword_1C0F96000, v14, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.");

  sub_1C12637D0();
  OUTLINED_FUNCTION_18_3();

  return (*(v7 + 8))(v2, v5);
}

uint64_t sub_1C0FD74BC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v9 = v4;
  v11 = sub_1C12637E0();
  OUTLINED_FUNCTION_0();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_1_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v22 - v16;
  sub_1C0FDB800(v9, &v22 - v16, a1, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    a3(0);
    OUTLINED_FUNCTION_3();
    return (*(v18 + 32))(a4, v17);
  }

  else
  {
    sub_1C1266420();
    v20 = sub_1C1264410();
    OUTLINED_FUNCTION_5_10(v20, &dword_1C0F96000, v21, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.");

    sub_1C12637D0();
    OUTLINED_FUNCTION_18_3();

    return (*(v13 + 8))(v5, v11);
  }
}

uint64_t sub_1C0FD769C@<X0>(_OWORD *a1@<X8>)
{
  v3 = v1;
  v5 = sub_1C12637E0();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1_4();
  result = sub_1C0FDB800(v3, v13, &qword_1EBE904C8, &unk_1C12A32B0);
  if (v14 == 1)
  {
    v10 = v13[1];
    *a1 = v13[0];
    a1[1] = v10;
  }

  else
  {
    sub_1C1266420();
    v11 = sub_1C1264410();
    OUTLINED_FUNCTION_5_10(v11, &dword_1C0F96000, v12, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.");

    sub_1C12637D0();
    OUTLINED_FUNCTION_18_3();

    return (*(v7 + 8))(v2, v5);
  }

  return result;
}

uint64_t sub_1C0FD77D8@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v5 = sub_1C12637E0();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1_4();
  result = sub_1C0FDB800(v3, v13, &qword_1EBE904C0, &unk_1C12A32A0);
  if (v15 == 1)
  {
    v10 = v13[1];
    *a1 = v13[0];
    *(a1 + 16) = v10;
    *(a1 + 32) = v14;
  }

  else
  {
    sub_1C1266420();
    v11 = sub_1C1264410();
    OUTLINED_FUNCTION_5_10(v11, &dword_1C0F96000, v12, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.");

    sub_1C12637D0();
    OUTLINED_FUNCTION_18_3();

    return (*(v7 + 8))(v2, v5);
  }

  return result;
}

void *sub_1C0FD7918(uint64_t a1, double a2, double a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90490, &qword_1C12A3268);
  result = sub_1C1265420();
  if (v8 != a2 || v9 != a3)
  {
    return sub_1C0FD79B0(a1);
  }

  return result;
}

uint64_t sub_1C0FD79B0(uint64_t a1)
{
  v2 = v1;
  v4 = (v1 + *(a1 + 72));
  v5 = *(v4 + 2);
  v12 = *v4;
  v13 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90490, &qword_1C12A3268);
  sub_1C1265420();
  v6 = v15;
  v7 = v16 + *(v2 + 8) + *(v2 + 24);
  (*(*(a1 + 40) + 64))(&v12, *(a1 + 24));
  v8 = v14;
  sub_1C0FD1A5C(&v12, &qword_1EBE90488, &qword_1C12A3260);
  if (v8)
  {
    v9 = (v2 + *(a1 + 76));
    v10 = *(v9 + 2);
    v12 = *v9;
    v13 = v10;
    sub_1C1265420();
    v7 = v7 + v16;
  }

  return sub_1C0FD8008(a1, v6, v7);
}

void *sub_1C0FD7AC4(uint64_t a1, double a2, double a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90490, &qword_1C12A3268);
  result = sub_1C1265420();
  if (v8 != a2 || v9 != a3)
  {
    return sub_1C0FD79B0(a1);
  }

  return result;
}

uint64_t sub_1C0FD7B5C(double a1, double a2)
{
  type metadata accessor for CGSize(0);
  sub_1C1265410();
  return v3;
}

uint64_t sub_1C0FD7B9C(uint64_t a1)
{
  v3 = sub_1C1265C10();
  v21 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C1265C30();
  v19 = *(v6 - 8);
  v20 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1C0FDAFC4();
  v12 = sub_1C12664C0();
  (*(v9 + 16))(&v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v1, a1);
  v13 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v14 = swift_allocObject();
  v15 = *(a1 + 32);
  *(v14 + 16) = *(a1 + 16);
  *(v14 + 32) = v15;
  (*(v9 + 32))(v14 + v13, &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  aBlock[4] = sub_1C0FDB008;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C0FD7FC4;
  aBlock[3] = &block_descriptor;
  v16 = _Block_copy(aBlock);

  sub_1C1265C20();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1C0FDBA00(&qword_1EDE7B768, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE95B00, &qword_1C12A3280);
  sub_1C0FDB6D4(&qword_1EDE7B708, &unk_1EBE95B00, &qword_1C12A3280, MEMORY[0x1E69E6328]);
  sub_1C1266870();
  MEMORY[0x1C68EFE10](0, v8, v5, v16);
  _Block_release(v16);

  (*(v21 + 8))(v5, v3);
  return (*(v19 + 8))(v8, v20);
}

uint64_t sub_1C0FD7F34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 48);
  *&v10 = a2;
  *(&v10 + 1) = a3;
  v11 = a4;
  v12 = a5;
  v6 = (a1 + *(type metadata accessor for TitleText(0, &v10) + 80));
  v7 = *(v6 + 2);
  v10 = *v6;
  v11 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90490, &qword_1C12A3268);
  v8 = sub_1C1265420();
  return v5(v8);
}

uint64_t sub_1C0FD7FC4(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_1C0FD8008(uint64_t a1, double a2, double a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90490, &qword_1C12A3268);
  sub_1C1265430();
  return sub_1C0FD7B9C(a1);
}

uint64_t PhotosCollectionTitleOverlayConfiguration.init(enableLayoutDebugging:actionHandler:effectiveContentSizeHandler:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *(a6 + 16) = result;
  *(a6 + 24) = a2;
  *(a6 + 32) = a3;
  *a6 = a4;
  *(a6 + 8) = a5;
  return result;
}

void sub_1C0FD809C()
{
  byte_1EBE902D0 = 0;
  qword_1EBE902D8 = 0;
  unk_1EBE902E0 = 0;
  qword_1EBE902C0 = nullsub_1;
  *algn_1EBE902C8 = 0;
}

uint64_t static PhotosCollectionTitleOverlayConfiguration.default.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBE8FBF8 != -1)
  {
    OUTLINED_FUNCTION_6_6(&qword_1EBE8FBF8);
  }

  v2 = *algn_1EBE902C8;
  v3 = byte_1EBE902D0;
  v4 = qword_1EBE902D8;
  v5 = unk_1EBE902E0;
  *a1 = qword_1EBE902C0;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_1C0FCF1B4(v4, v5);
}

uint64_t PhotosCollectionTitleOverlayPreview.init(title:subtitle:subtitleSymbolName:position:topLeadingChromeWidth:topTrailingChromeWidth:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, uint64_t a11, char a12)
{
  v18 = *a7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE932D0, &qword_1C12A2EA0);
  sub_1C1265410();
  v19 = v25;
  v20 = v26;
  *(a9 + 16) = v24;
  *(a9 + 32) = v19;
  *(a9 + 40) = v20;
  type metadata accessor for PhotosMockCollectionTitleOverlayModel(0);
  LOBYTE(v24) = v18;
  result = PhotosMockCollectionTitleOverlayModel.__allocating_init(title:subtitle:subtitleSymbolName:position:topLeadingChromeWidth:topTrailingChromeWidth:)(a1, a2, a3, a4, a5, a6, &v24, a8, a10 & 1, a11, a12 & 1);
  *a9 = result;
  *(a9 + 8) = 0;
  return result;
}

uint64_t PhotosCollectionTitleOverlayPreview.body.getter@<X0>(uint64_t *a7@<X8>)
{
  v9 = v7[1];
  v13[0] = *v7;
  v13[1] = v9;
  v13[2] = v7[2];
  *a7 = sub_1C12659A0();
  a7[1] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE902F8, &qword_1C12A2EA8);
  return sub_1C0FD82C8(v13, a7 + *(v11 + 44));
}

uint64_t sub_1C0FD82C8@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v3 = sub_1C1262130();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE904E0, &qword_1C12A32C8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v29 - v11);
  *v12 = sub_1C12659A0();
  v12[1] = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE904E8, &qword_1C12A32D0);
  sub_1C0FD87D0(a1, v12 + *(v14 + 44));
  sub_1C1264480();
  v47[0] = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE904F0, &qword_1C12A32D8);
  sub_1C1265420();
  sub_1C119D808(v6);

  sub_1C1262120();
  (*(v4 + 8))(v6, v3);
  sub_1C12628A0();
  v33 = v15;
  v34 = v16;
  v35 = v17;
  v36 = v18;
  v37 = 0;
  sub_1C1263FB0();
  *&v47[0] = sub_1C1265170();
  sub_1C0FDB76C();
  v19 = sub_1C1265270();
  v20 = sub_1C1265940();
  v22 = v21;
  sub_1C0FD98C0(a1, v46);
  memcpy(v38, v46, 0x68uLL);
  v38[13] = v20;
  v38[14] = v22;
  memcpy(v32, v38, sizeof(v32));
  memcpy(v39, v46, sizeof(v39));
  v40 = v20;
  v41 = v22;
  sub_1C0FDB800(v38, v47, &qword_1EBE904F8, &qword_1C12A32E0);
  sub_1C0FD1A5C(v39, &qword_1EBE904F8, &qword_1C12A32E0);
  v23 = sub_1C1265950();
  v25 = v24;
  sub_1C0FD9B34(a1, v46);
  memcpy(v42, v46, 0x68uLL);
  v42[13] = v23;
  v42[14] = v25;
  memcpy(v31, v42, sizeof(v31));
  memcpy(v43, v46, sizeof(v43));
  v44 = v23;
  v45 = v25;
  sub_1C0FDB800(v42, v47, &qword_1EBE904F8, &qword_1C12A32E0);
  sub_1C0FD1A5C(v43, &qword_1EBE904F8, &qword_1C12A32E0);
  sub_1C0FDB800(v12, v9, &qword_1EBE904E0, &qword_1C12A32C8);
  v26 = v30;
  sub_1C0FDB800(v9, v30, &qword_1EBE904E0, &qword_1C12A32C8);
  v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90500, &qword_1C12A32E8) + 48);
  v46[0] = v19;
  memcpy(&v46[1], v32, 0x78uLL);
  memcpy(&v46[16], v31, 0x78uLL);
  memcpy((v26 + v27), v46, 0xF8uLL);
  sub_1C0FDB800(v46, v47, &qword_1EBE90508, &qword_1C12A32F0);
  sub_1C0FD1A5C(v12, &qword_1EBE904E0, &qword_1C12A32C8);
  *&v47[0] = v19;
  memcpy(v47 + 8, v32, 0x78uLL);
  memcpy(v48, v31, sizeof(v48));
  sub_1C0FD1A5C(v47, &qword_1EBE90508, &qword_1C12A32F0);
  return sub_1C0FD1A5C(v9, &qword_1EBE904E0, &qword_1C12A32C8);
}

unint64_t sub_1C0FD871C()
{
  result = qword_1EBE90300;
  if (!qword_1EBE90300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE90300);
  }

  return result;
}

uint64_t sub_1C0FD87D0@<X0>(_OWORD *a1@<X0>, _BYTE *a2@<X8>)
{
  v66 = a2;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90510, &qword_1C12A32F8);
  MEMORY[0x1EEE9AC00](v60);
  v67 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v46 - v5;
  v63 = sub_1C12631E0();
  v62 = sub_1C1264470();
  v84 = *a1;
  v105[0] = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE904F0, &qword_1C12A32D8);
  sub_1C1265420();
  v65 = v92;
  v7 = swift_allocObject();
  v8 = a1[1];
  v7[1] = *a1;
  v7[2] = v8;
  v9 = a1[2];
  v64 = v7;
  v7[3] = v9;
  v61 = a1;
  sub_1C0FDB7C8(a1, v105);
  if (qword_1EDE79640 != -1)
  {
    swift_once();
  }

  v10 = xmmword_1EDE79648;
  v11 = qword_1EDE79658;
  v12 = unk_1EDE79660;
  v13 = qword_1EDE79668;
  v92 = v84;
  sub_1C1265440();
  v14 = v105[0];
  v15 = *&v105[1];
  swift_getKeyPath();
  v105[0] = v14;
  *&v105[1] = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90518, &qword_1C12A3328);
  sub_1C1265600();

  v58 = *(&v92 + 1);
  v59 = v92;
  v16 = v93;

  v68 = v84;
  sub_1C1265440();
  v17 = v91[0];
  v18 = v91[1];
  v19 = v91[2];
  swift_getKeyPath();
  v91[0] = v17;
  v91[1] = v18;
  v91[2] = v19;
  sub_1C1265600();

  v56 = *(&v68 + 1);
  v57 = v68;
  v20 = v69;

  v78 = 0;
  v79 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE93690, &qword_1C12B32F0);
  sub_1C1265410();
  v53 = BYTE8(__src[0]);
  v54 = *&__src[1];
  v55 = *&__src[0];
  LOBYTE(__src[0]) = BYTE8(__src[0]);
  v51 = sub_1C1265990();
  v52 = v21;
  v22 = [objc_opt_self() yellowColor];
  v23 = [v22 colorWithAlphaComponent_];

  v24 = _s7SwiftUI5ColorV06PhotosA6UICoreE08platformC0ACSo7UIColorC_tcfC_0();
  v49 = v24;
  v105[0] = v84;
  sub_1C1265420();
  sub_1C119D364();

  sub_1C12659A0();
  sub_1C1262C80();
  v25 = v78;
  v26 = v80;
  v27 = v82;
  v28 = v83;
  v47 = v83;
  v48 = v82;
  v89 = v79;
  v87 = v81;
  v29 = sub_1C12631E0();
  v50 = sub_1C1264470();
  v91[0] = v24;
  v91[1] = v25;
  LOBYTE(v91[2]) = v89;
  *(&v91[2] + 1) = *v88;
  HIDWORD(v91[2]) = *&v88[3];
  v91[3] = v26;
  LOBYTE(v91[4]) = v87;
  *(&v91[4] + 1) = *v86;
  HIDWORD(v91[4]) = *&v86[3];
  v91[5] = v27;
  v91[6] = v28;
  LOBYTE(v91[7]) = 0;
  HIDWORD(v91[7]) = *&v90[3];
  *(&v91[7] + 1) = *v90;
  v91[8] = v29;
  LOBYTE(v91[9]) = v50;
  v91[10] = v51;
  v91[11] = v52;
  memcpy(v105, v91, sizeof(v105));
  *&v92 = v49;
  *(&v92 + 1) = v25;
  LOBYTE(v93) = v89;
  *(&v93 + 1) = *v88;
  HIDWORD(v93) = *&v88[3];
  v94 = v26;
  v95 = v87;
  *v96 = *v86;
  *&v96[3] = *&v86[3];
  v97 = v48;
  v98 = v47;
  v99 = 0;
  *&v100[3] = *&v90[3];
  *v100 = *v90;
  v101 = v29;
  v102 = v50;
  v103 = v51;
  v104 = v52;
  sub_1C0FDB800(v91, &v68, &qword_1EBE90520, &qword_1C12A3360);
  sub_1C0FD1A5C(&v92, &qword_1EBE90520, &qword_1C12A3360);
  v30 = sub_1C12631E0();
  v31 = sub_1C1264470();
  v32 = sub_1C1265990();
  v34 = v33;
  v35 = &v6[*(v60 + 36)];
  *v35 = sub_1C1263AA0();
  *(v35 + 1) = 0;
  v35[16] = 1;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90528, &qword_1C12A3368);
  sub_1C0FD8F30(v61, &v35[*(v36 + 44)]);
  v37 = &v35[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90530, &qword_1C12A3370) + 36)];
  *v37 = v32;
  v37[1] = v34;
  v38 = v58;
  *v6 = v59;
  *(v6 + 1) = v38;
  *(v6 + 2) = v16;
  v39 = v56;
  *(v6 + 3) = v57;
  *(v6 + 4) = v39;
  *(v6 + 5) = v20;
  *(v6 + 7) = 0u;
  *(v6 + 8) = 0u;
  *(v6 + 5) = 0u;
  *(v6 + 6) = 0u;
  *(v6 + 3) = 0u;
  *(v6 + 4) = 0u;
  *(v6 + 18) = v55;
  v6[152] = v53;
  *(v6 + 20) = v54;
  memcpy(v6 + 168, v105, 0x60uLL);
  *(v6 + 33) = v30;
  v6[272] = v31;
  v40 = v67;
  sub_1C0FDB800(v6, v67, &qword_1EBE90510, &qword_1C12A32F8);
  v41 = v66;
  *v66 = 1;
  v42 = v64;
  *(v41 + 1) = v63;
  v41[16] = v62;
  v43 = v65;
  *&__src[0] = v65;
  *(&__src[0] + 1) = sub_1C0FDB7C0;
  *&__src[1] = v42;
  BYTE8(__src[1]) = 0;
  *(&__src[1] + 9) = *v85;
  HIDWORD(__src[1]) = *&v85[3];
  __src[2] = 0uLL;
  __src[3] = v10;
  *&__src[4] = v11;
  *(&__src[4] + 1) = v12;
  *&__src[5] = v13;
  memcpy(v41 + 24, __src, 0x58uLL);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90538, &qword_1C12A3378);
  sub_1C0FDB800(v40, &v41[*(v44 + 64)], &qword_1EBE90510, &qword_1C12A32F8);
  sub_1C0FDB800(__src, &v68, &qword_1EBE90540, &qword_1C12A3380);
  sub_1C0FD1A5C(v6, &qword_1EBE90510, &qword_1C12A32F8);
  sub_1C0FD1A5C(v40, &qword_1EBE90510, &qword_1C12A32F8);
  *&v68 = v43;
  *(&v68 + 1) = sub_1C0FDB7C0;
  v69 = v42;
  v70 = 0;
  *v71 = *v85;
  *&v71[3] = *&v85[3];
  v72 = 0;
  v73 = 0;
  v74 = v10;
  v75 = v11;
  v76 = v12;
  v77 = v13;
  return sub_1C0FD1A5C(&v68, &qword_1EBE90540, &qword_1C12A3380);
}

double sub_1C0FD8ED8(uint64_t a1, double a2, double a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE933B0, &unk_1C12B3000);
  sub_1C1265430();
  return result;
}

uint64_t sub_1C0FD8F30@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90548, &qword_1C12A3388);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v21 - v8;
  *v9 = sub_1C12638E0();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90550, &unk_1C12A3390);
  sub_1C0FD91D8(a1, &v9[*(v10 + 44)]);
  v11 = a1[2];
  v23 = a1[1];
  v24 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE933B0, &unk_1C12B3000);
  sub_1C1265420();
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = MEMORY[0x1E69E7CC0];
  if ((v22 & 1) == 0)
  {
    *&v23 = 0x203A657A6953;
    *(&v23 + 1) = 0xE600000000000000;
    type metadata accessor for CGSize(0);
    v16 = sub_1C1265ED0();
    MEMORY[0x1C68EF850](v16);

    v13 = *(&v23 + 1);
    v12 = v23;

    v14 = MEMORY[0x1E69E7CC0];
  }

  sub_1C0FDB800(v9, v6, &qword_1EBE90548, &qword_1C12A3388);
  sub_1C0FDB800(v6, a2, &qword_1EBE90548, &qword_1C12A3388);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90558, &unk_1C12A33A0);
  v18 = a2 + *(v17 + 48);
  *v18 = 0xD00000000000001BLL;
  *(v18 + 8) = 0x80000001C12694B0;
  *(v18 + 16) = 0;
  *(v18 + 24) = v15;
  v19 = (a2 + *(v17 + 64));
  sub_1C0FDB850(0xD00000000000001BLL, 0x80000001C12694B0, 0);

  sub_1C0FDB860(v12, v13, 0, v14);
  sub_1C0FDB8A4(v12, v13, 0, v14);
  *v19 = v12;
  v19[1] = v13;
  v19[2] = 0;
  v19[3] = v14;
  sub_1C0FD1A5C(v9, &qword_1EBE90548, &qword_1C12A3388);
  sub_1C0FDB8A4(v12, v13, 0, v14);
  sub_1C0FDB8E8(0xD00000000000001BLL, 0x80000001C12694B0, 0);

  return sub_1C0FD1A5C(v6, &qword_1EBE90548, &qword_1C12A3388);
}

uint64_t sub_1C0FD91D8@<X0>(_OWORD *a1@<X0>, char *a2@<X8>)
{
  v26 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90560, &qword_1C12A5E00);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v25 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v25 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v25 - v14;
  v16 = swift_allocObject();
  v17 = a1[1];
  v16[1] = *a1;
  v16[2] = v17;
  v16[3] = a1[2];
  v27 = a1;
  sub_1C0FDB7C8(a1, v28);
  sub_1C1265480();
  v18 = swift_allocObject();
  v19 = a1[1];
  v18[1] = *a1;
  v18[2] = v19;
  v18[3] = a1[2];
  sub_1C0FDB7C8(a1, v28);
  sub_1C1265480();
  v20 = *(v4 + 16);
  v20(v9, v15, v3);
  v20(v6, v12, v3);
  v21 = v26;
  v20(v26, v9, v3);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90568, &qword_1C12A33B0);
  v20(&v21[*(v22 + 48)], v6, v3);
  v23 = *(v4 + 8);
  v23(v12, v3);
  v23(v15, v3);
  v23(v6, v3);
  return (v23)(v9, v3);
}

uint64_t sub_1C0FD94DC(__int128 *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE904F0, &qword_1C12A32D8);
  sub_1C1265420();
  swift_getKeyPath();
  sub_1C0FDBA00(&qword_1EBE90578, type metadata accessor for PhotosMockCollectionTitleOverlayModel, &protocol conformance descriptor for PhotosMockCollectionTitleOverlayModel);
  sub_1C1261F30();

  swift_getKeyPath();
  sub_1C1261F50();

  swift_beginAccess();
  sub_1C0FD9630(1);
  swift_getKeyPath();
  sub_1C1261F40();
}

uint64_t sub_1C0FD9630(uint64_t result)
{
  v2 = -2;
  for (i = &byte_1F406CDD8; ; ++i)
  {
    if (v2 == -4)
    {
      __break(1u);
      goto LABEL_9;
    }

    if (*v1 == *i)
    {
      break;
    }

    --v2;
  }

  v4 = -v2;
  v5 = __OFADD__(v4, result);
  v6 = v4 + result;
  if (v5)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v7 = v6 % 2;
  if (v7 >= 0)
  {
    *v1 = *(&unk_1F406CDB8 + v7 + 32);
    return result;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_1C0FD96A0@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v10 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE904F0, &qword_1C12A32D8);
  sub_1C1265420();
  sub_1C119D1A8(&v9);

  v3 = 0x80000001C1269400;
  v4 = 0xD000000000000019;
  if (v9)
  {
    v4 = 0x706F546C6C616D53;
    v3 = 0xE800000000000000;
  }

  *&v10 = v4;
  *(&v10 + 1) = v3;
  sub_1C0FDB9AC();
  result = sub_1C12648F0();
  *a2 = result;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7 & 1;
  *(a2 + 24) = v8;
  return result;
}

uint64_t sub_1C0FD976C(__int128 *a1)
{
  v5 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE904F0, &qword_1C12A32D8);
  sub_1C1265420();
  sub_1C119DB88(&v5);

  v2 = *(&v6 + 1);
  sub_1C0FD1A5C(&v5, &qword_1EBE90488, &qword_1C12A3260);
  v5 = *a1;
  sub_1C1265420();
  if (v2)
  {
    v7 = 0;
    v5 = 0u;
    v6 = 0u;
  }

  else
  {
    *(&v6 + 1) = &type metadata for PhotosMockOverlayBanner;
    v7 = &protocol witness table for PhotosMockOverlayBanner;
    v3 = swift_allocObject();
    *&v5 = v3;
    *(v3 + 40) = &type metadata for PhotosMockBanner;
    *(v3 + 48) = sub_1C0FDB958();
    *(v3 + 56) = 1;
  }

  sub_1C119DC3C(&v5);
}

double sub_1C0FD98A0@<D0>(uint64_t a1@<X8>)
{
  *&result = 0x72656E6E6142;
  *a1 = xmmword_1C12A2E40;
  *(a1 + 16) = 0;
  *(a1 + 24) = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t sub_1C0FD98C0@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1C1262130();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v25 - v9;
  v30 = *a1;
  v27 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE904F0, &qword_1C12A32D8);
  sub_1C1265420();
  sub_1C119D808(v10);

  v11 = sub_1C1262100();
  LOBYTE(a1) = v12;
  v13 = *(v5 + 8);
  result = v13(v10, v4);
  if (a1)
  {
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0uLL;
    v20 = 0uLL;
    v21 = 0uLL;
    v22 = 0uLL;
  }

  else
  {
    *&v27 = sub_1C1265120();
    sub_1C0FDB76C();
    v15 = sub_1C1265270();
    v23 = sub_1C12659A0();
    v25 = v11;
    v17 = v23;
    v18 = v24;
    v27 = v30;
    sub_1C1265420();
    sub_1C119D808(v7);

    sub_1C1262120();
    v13(v7, v4);
    sub_1C12659A0();
    result = sub_1C1262C80();
    LOBYTE(v26) = 0;
    v20 = v27;
    v21 = v28;
    v22 = v29;
    v19 = xmmword_1C12A2E50;
    v16 = MEMORY[0x1E69E7CC0];
  }

  *a2 = v15;
  *(a2 + 8) = v19;
  *(a2 + 24) = 0;
  *(a2 + 32) = v16;
  *(a2 + 40) = v17;
  *(a2 + 48) = v18;
  *(a2 + 56) = v20;
  *(a2 + 72) = v21;
  *(a2 + 88) = v22;
  return result;
}

uint64_t sub_1C0FD9B34@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1C1262130();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v25 - v9;
  v30 = *a1;
  v27 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE904F0, &qword_1C12A32D8);
  sub_1C1265420();
  sub_1C119D808(v10);

  v11 = sub_1C1262110();
  LOBYTE(a1) = v12;
  v13 = *(v5 + 8);
  result = v13(v10, v4);
  if (a1)
  {
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0uLL;
    v20 = 0uLL;
    v21 = 0uLL;
    v22 = 0uLL;
  }

  else
  {
    *&v27 = sub_1C1265120();
    sub_1C0FDB76C();
    v15 = sub_1C1265270();
    v23 = sub_1C12659A0();
    v25 = v11;
    v17 = v23;
    v18 = v24;
    v27 = v30;
    sub_1C1265420();
    sub_1C119D808(v7);

    sub_1C1262120();
    v13(v7, v4);
    sub_1C12659A0();
    result = sub_1C1262C80();
    LOBYTE(v26) = 0;
    v20 = v27;
    v21 = v28;
    v22 = v29;
    v19 = xmmword_1C12A2E60;
    v16 = MEMORY[0x1E69E7CC0];
  }

  *a2 = v15;
  *(a2 + 8) = v19;
  *(a2 + 24) = 0;
  *(a2 + 32) = v16;
  *(a2 + 40) = v17;
  *(a2 + 48) = v18;
  *(a2 + 56) = v20;
  *(a2 + 72) = v21;
  *(a2 + 88) = v22;
  return result;
}

uint64_t sub_1C0FD9DAC(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C0FD9E48(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
LABEL_26:
    if ((v6 & 0x80000000) != 0)
    {
      return __swift_getEnumTagSinglePayload((((result + 15) & 0xFFFFFFFFFFFFFFF8) + v7 + 40) & ~v7, v6, v4);
    }

    else
    {
      v17 = *result;
      if (*result >= 0xFFFFFFFFuLL)
      {
        LODWORD(v17) = -1;
      }

      return (v17 + 1);
    }
  }

  else
  {
    v9 = ((*(*(v4 - 8) + 64) + ((v7 + 48) & ~v7) + 7) & 0xFFFFFFFFFFFFFFF8) + 40;
    v10 = a2 - v8;
    v11 = v9 & 0xFFFFFFF8;
    if ((v9 & 0xFFFFFFF8) != 0)
    {
      v12 = 2;
    }

    else
    {
      v12 = v10 + 1;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    switch(v14)
    {
      case 1:
        v15 = *(result + v9);
        if (!v15)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v15 = *(result + v9);
        if (!v15)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v15 = *(result + v9);
        if (!v15)
        {
          goto LABEL_26;
        }

LABEL_22:
        v16 = v15 - 1;
        if (v11)
        {
          v16 = 0;
          LODWORD(v11) = *result;
        }

        result = v8 + (v11 | v16) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1C0FD9F98(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = ((*(*(v6 - 8) + 64) + ((v10 + 48) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 40;
  if (v9 >= a3)
  {
    v15 = 0;
  }

  else
  {
    v12 = a3 - v9;
    if (((*(*(v6 - 8) + 64) + ((v10 + 48) & ~v10) + 7) & 0xFFFFFFF8) == 0xFFFFFFD8)
    {
      v13 = v12 + 1;
    }

    else
    {
      v13 = 2;
    }

    if (v13 >= 0x10000)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v13 < 0x100)
    {
      v14 = 1;
    }

    if (v13 >= 2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }
  }

  if (a2 <= v9)
  {
    switch(v15)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          if ((v8 & 0x80000000) != 0)
          {
            v19 = (((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v10 + 40) & ~v10;

            __swift_storeEnumTagSinglePayload(v19, a2, v8, v6);
          }

          else
          {
            if ((a2 & 0x80000000) != 0)
            {
              v18 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v18 = (a2 - 1);
            }

            *a1 = v18;
          }
        }

        break;
    }
  }

  else
  {
    if (((*(*(v6 - 8) + 64) + ((v10 + 48) & ~v10) + 7) & 0xFFFFFFF8) == 0xFFFFFFD8)
    {
      v16 = a2 - v9;
    }

    else
    {
      v16 = 1;
    }

    if (((*(*(v6 - 8) + 64) + ((v10 + 48) & ~v10) + 7) & 0xFFFFFFF8) != 0xFFFFFFD8)
    {
      v17 = ~v9 + a2;
      bzero(a1, v11);
      *a1 = v17;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v16;
        break;
      case 2:
        *&a1[v11] = v16;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v11] = v16;
        break;
      default:
        return;
    }
  }
}

uint64_t getEnumTagSinglePayload for PhotosDetailsNavigationTransitionKind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PhotosCollectionTitleOverlayPosition(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1C0FDA2F0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C0FDA310(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
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

  *(result + 40) = v3;
  return result;
}

uint64_t get_enum_tag_for_layout_string_Ieg_Sg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1C0FDA368(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C0FDA3A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C0FDA3FC(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C0FDA43C(uint64_t result, int a2, int a3)
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

void sub_1C0FDA49C(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      sub_1C0FDAA88();
      if (v3 <= 0x3F)
      {
        sub_1C0FDAAD8(319);
        if (v4 <= 0x3F)
        {
          sub_1C0FDAB3C(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1C0FDA590(unint64_t *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = sub_1C1263EB0();
  v11 = *(v9 - 8);
  result = v9 - 8;
  v12 = v11;
  v13 = *(v11 + 64);
  v14 = *(v6 + 80);
  if (!*(v11 + 84))
  {
    ++v13;
  }

  if (v13 <= 8)
  {
    v13 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
LABEL_30:
    if ((v7 & 0x80000000) != 0)
    {

      return __swift_getEnumTagSinglePayload((((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + v14 + 40) & ~v14, v7, v5);
    }

    else
    {
      v23 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v23) = -1;
      }

      return (v23 + 1);
    }
  }

  else
  {
    v15 = *(v12 + 80) & 0xF8 | 7;
    v16 = ((((((v13 + ((v15 + ((*(v6 + 64) + ((v14 + 88) & ~v14) + 7) & 0xFFFFFFFFFFFFFFF8) + 9) & ~v15) + 8) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 24;
    v17 = v16 & 0xFFFFFFF8;
    if ((v16 & 0xFFFFFFF8) != 0)
    {
      v18 = 2;
    }

    else
    {
      v18 = a2 - v8 + 1;
    }

    if (v18 >= 0x10000)
    {
      v19 = 4;
    }

    else
    {
      v19 = 2;
    }

    if (v18 < 0x100)
    {
      v19 = 1;
    }

    if (v18 >= 2)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    switch(v20)
    {
      case 1:
        v21 = *(a1 + v16);
        if (!v21)
        {
          goto LABEL_30;
        }

        goto LABEL_26;
      case 2:
        v21 = *(a1 + v16);
        if (!v21)
        {
          goto LABEL_30;
        }

        goto LABEL_26;
      case 3:
        __break(1u);
        return result;
      case 4:
        v21 = *(a1 + v16);
        if (!v21)
        {
          goto LABEL_30;
        }

LABEL_26:
        v22 = v21 - 1;
        if (v17)
        {
          v22 = 0;
          LODWORD(v17) = *a1;
        }

        result = v8 + (v17 | v22) + 1;
        break;
      default:
        goto LABEL_30;
    }
  }

  return result;
}

void sub_1C0FDA7E0(uint64_t *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(sub_1C1263EB0() - 8);
  v12 = *(v11 + 64);
  v13 = *(v8 + 80);
  v14 = *(v11 + 80) & 0xF8 | 7;
  v15 = (v14 + ((*(v8 + 64) + ((v13 + 88) & ~v13) + 7) & 0xFFFFFFFFFFFFFFF8) + 9) & ~v14;
  if (!*(v11 + 84))
  {
    ++v12;
  }

  if (v12 <= 8)
  {
    v12 = 8;
  }

  v16 = ((((((v12 + v15 + 8) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 24;
  if (v10 >= a3)
  {
    v19 = 0;
  }

  else
  {
    if (((((((v12 + v15 + 8) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) == 0xFFFFFFE8)
    {
      v17 = a3 - v10 + 1;
    }

    else
    {
      v17 = 2;
    }

    if (v17 >= 0x10000)
    {
      v18 = 4;
    }

    else
    {
      v18 = 2;
    }

    if (v17 < 0x100)
    {
      v18 = 1;
    }

    if (v17 >= 2)
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }
  }

  if (a2 <= v10)
  {
    switch(v19)
    {
      case 1:
        *(a1 + v16) = 0;
        if (a2)
        {
          goto LABEL_36;
        }

        break;
      case 2:
        *(a1 + v16) = 0;
        if (a2)
        {
          goto LABEL_36;
        }

        break;
      case 3:
LABEL_47:
        __break(1u);
        break;
      case 4:
        *(a1 + v16) = 0;
        goto LABEL_35;
      default:
LABEL_35:
        if (a2)
        {
LABEL_36:
          if ((v9 & 0x80000000) != 0)
          {

            __swift_storeEnumTagSinglePayload((((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + v13 + 40) & ~v13, a2, v9, v7);
          }

          else
          {
            if ((a2 & 0x80000000) != 0)
            {
              v21 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v21 = (a2 - 1);
            }

            *a1 = v21;
          }
        }

        break;
    }
  }

  else
  {
    if (v16)
    {
      v20 = 1;
    }

    else
    {
      v20 = a2 - v10;
    }

    if (v16)
    {
      bzero(a1, v16);
      *a1 = ~v10 + a2;
    }

    switch(v19)
    {
      case 1:
        *(a1 + v16) = v20;
        break;
      case 2:
        *(a1 + v16) = v20;
        break;
      case 3:
        goto LABEL_47;
      case 4:
        *(a1 + v16) = v20;
        break;
      default:
        return;
    }
  }
}

void sub_1C0FDAA88()
{
  if (!qword_1EDE77640)
  {
    v0 = sub_1C1262A70();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDE77640);
    }
  }
}

void sub_1C0FDAAD8(uint64_t a1)
{
  if (!qword_1EDE77560)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE902F0, &qword_1C12B38C0);
    v1 = sub_1C1262A70();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDE77560);
    }
  }
}

void sub_1C0FDAB3C(uint64_t a1)
{
  if (!qword_1EDE76C80)
  {
    type metadata accessor for CGSize(255);
    v1 = sub_1C1265450();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDE76C80);
    }
  }
}

uint64_t sub_1C0FDABE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = OUTLINED_FUNCTION_11_6(a1, a2, a3, a4, a5, a6, a7, a8, *(v8 + 16));
  OUTLINED_FUNCTION_15(v9);
  OUTLINED_FUNCTION_14_9();

  return sub_1C0FD44BC(v10, v11, v12, v13, v14, v15, v16);
}

unint64_t sub_1C0FDAC84()
{
  result = qword_1EBE90440;
  if (!qword_1EBE90440)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90430, &qword_1C12A3228);
    sub_1C0FDAD3C();
    sub_1C0FDB6D4(&qword_1EBE90468, &qword_1EBE90470, &qword_1C12A3248, MEMORY[0x1E697EC18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE90440);
  }

  return result;
}

unint64_t sub_1C0FDAD3C()
{
  result = qword_1EBE90448;
  if (!qword_1EBE90448)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90450, &qword_1C12A3238);
    sub_1C0FDB6D4(&qword_1EBE90458, &qword_1EBE90460, &qword_1C12A3240, MEMORY[0x1E697EC18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE90448);
  }

  return result;
}

unint64_t sub_1C0FDADF4()
{
  result = qword_1EDE771D8;
  if (!qword_1EDE771D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90438, &qword_1C12A3230);
    sub_1C0FDAE80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE771D8);
  }

  return result;
}

unint64_t sub_1C0FDAE80()
{
  result = qword_1EDE7BE40;
  if (!qword_1EDE7BE40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90478, &qword_1C12A3250);
    sub_1C0FDB6D4(&qword_1EDE7BCB0, &qword_1EBE90480, &qword_1C12A3258, MEMORY[0x1E697EC18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BE40);
  }

  return result;
}

unint64_t sub_1C0FDAF38()
{
  result = qword_1EDE82EF8;
  if (!qword_1EDE82EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE82EF8);
  }

  return result;
}

unint64_t sub_1C0FDAFC4()
{
  result = qword_1EDE83410;
  if (!qword_1EDE83410)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDE83410);
  }

  return result;
}

uint64_t sub_1C0FDB008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8[2];
  v10 = v8[3];
  v11 = v8[4];
  v12 = v8[5];
  v13 = OUTLINED_FUNCTION_11_6(a1, a2, a3, a4, a5, a6, a7, a8, v9);
  OUTLINED_FUNCTION_15(v13);
  v15 = v8 + ((*(v14 + 80) + 48) & ~*(v14 + 80));

  return sub_1C0FD7F34(v15, v9, v10, v11, v12);
}

uint64_t sub_1C0FDB0A8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1C0FDB10C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, uint64_t a6@<X4>, uint64_t a7@<X5>, uint64_t a8@<X6>, uint64_t a9@<X7>)
{
  v12 = *(v9 + 2);
  v11 = *(v9 + 3);
  v13 = *(v9 + 4);
  v14 = *(v9 + 5);
  v15 = *(OUTLINED_FUNCTION_11_6(a1, a2, a3, a4, a6, a7, a8, a9, v12) - 8);
  v16 = (*(v15 + 80) + 96) & ~*(v15 + 80);
  v17 = *(v15 + 64);
  v18 = *(sub_1C1262D60() - 8);
  v19 = (v16 + v17 + *(v18 + 80)) & ~*(v18 + 80);
  v20 = (*(v18 + 64) + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v20 + 15) & 0xFFFFFFFFFFFFFFF8;
  v22 = v9[11];
  v23 = *(v9 + v20);
  v24 = *(v9 + ((v21 + 47) & 0xFFFFFFFFFFFFFFF8));

  return sub_1C0FD55B4((v9 + 6), v9 + v16, v9 + v19, v9 + v21, v12, v11, v13, v14, a5, v22, v23, v24);
}

uint64_t objectdestroyTm()
{
  v2 = *(v1 + 32);
  v19 = *(v1 + 16);
  v20[0] = v19;
  v20[1] = v2;
  type metadata accessor for TitleText(0, v20);
  OUTLINED_FUNCTION_10_4();
  v4 = v1 + ((*(v3 + 80) + 48) & ~*(v3 + 80));
  swift_unknownObjectRelease();

  if (*(v4 + 72))
  {
  }

  v13 = OUTLINED_FUNCTION_8_5(v5, v6, v7, v8, v9, v10, v11, v12, v19);
  (*(v14 + 8))(v4 + v15, v13);
  sub_1C0FA03F4(*(v4 + *(v0 + 64)), *(v4 + *(v0 + 64) + 8));
  v16 = *(v0 + 68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90428, &qword_1C12A3220);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = sub_1C1263EB0();
    if (!__swift_getEnumTagSinglePayload(v4 + v16, 1, v17))
    {
      (*(*(v17 - 8) + 8))(v4 + v16, v17);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1C0FDB490(uint64_t a1, uint64_t (*a2)(uint64_t, double, double), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = OUTLINED_FUNCTION_11_6(a1, a2, a3, a4, a5, a6, a7, a8, *(v8 + 16));
  OUTLINED_FUNCTION_15(v10);
  OUTLINED_FUNCTION_14_9();
  return sub_1C0FD65B8(v11, v12, v13, v14, v15, v16, a2, v17);
}

unint64_t sub_1C0FDB53C()
{
  result = qword_1EDE77298;
  if (!qword_1EDE77298)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE904A8, &qword_1C12A3288);
    sub_1C0FDB5C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77298);
  }

  return result;
}

unint64_t sub_1C0FDB5C8()
{
  result = qword_1EDE7BF70;
  if (!qword_1EDE7BF70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE904B0, &unk_1C12A3290);
    sub_1C0FDB680();
    sub_1C0FDB6D4(&qword_1EDE7BA50, &qword_1EBE904B8, &unk_1C12A3E30, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BF70);
  }

  return result;
}

unint64_t sub_1C0FDB680()
{
  result = qword_1EDE80678;
  if (!qword_1EDE80678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE80678);
  }

  return result;
}

uint64_t sub_1C0FDB6D4(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_1C0FDB71C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_16(a1, a2, a3, a4);
  OUTLINED_FUNCTION_3();
  (*(v6 + 32))(v4, v5);
  return v4;
}

unint64_t sub_1C0FDB76C()
{
  result = qword_1EDE7B808;
  if (!qword_1EDE7B808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7B808);
  }

  return result;
}

uint64_t sub_1C0FDB800(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_16(a1, a2, a3, a4);
  OUTLINED_FUNCTION_3();
  (*(v6 + 16))(v4, v5);
  return v4;
}

double sub_1C0FDB850(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }

  return result;
}

double sub_1C0FDB860(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1C0FDB850(a1, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1C0FDB8A4(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1C0FDB8E8(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1C0FDB8E8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t objectdestroy_42Tm()
{

  return swift_deallocObject();
}

unint64_t sub_1C0FDB958()
{
  result = qword_1EBE90570;
  if (!qword_1EBE90570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE90570);
  }

  return result;
}

unint64_t sub_1C0FDB9AC()
{
  result = qword_1EDE7B760;
  if (!qword_1EDE7B760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7B760);
  }

  return result;
}

uint64_t sub_1C0FDBA00(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_11_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return type metadata accessor for TitleText(0, &a9);
}

uint64_t PhotosMultiAssetView.init(_:maxItems:backgroundColor:placeholderBackgroundColor:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *(a4 + 16);
  v9 = *(a4 + 17);
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = *a4;
  *(a5 + 40) = v8;
  *(a5 + 41) = v9;

  v10 = sub_1C0FDBAFC(a1, a2);

  *(a5 + 48) = v10;
  return result;
}

unint64_t sub_1C0FDBAFC(unint64_t result, uint64_t a2)
{
  v3 = result;
  if (!result)
  {
    v4 = 0;
    if (a2 < 0)
    {
      goto LABEL_24;
    }

    while (1)
    {
LABEL_6:
      if (!a2)
      {
        return MEMORY[0x1E69E7CC0];
      }

      v5 = 0;
      v6 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        v7 = 0;
        if (!v3 || v5 >= v4)
        {
          goto LABEL_13;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x1C68F02D0](v5, v3);
          goto LABEL_13;
        }

        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          break;
        }

        v7 = *(v3 + 8 * v5 + 32);
        swift_unknownObjectRetain();
LABEL_13:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C0FE397C();
          v6 = v10;
        }

        v8 = *(v6 + 16);
        if (v8 >= *(v6 + 24) >> 1)
        {
          sub_1C0FE397C();
          v6 = v11;
        }

        *(v6 + 16) = v8 + 1;
        v9 = v6 + 16 * v8;
        *(v9 + 32) = v5;
        *(v9 + 40) = v7;
        if (a2 == ++v5)
        {
          return v6;
        }
      }

      __break(1u);
LABEL_23:
      result = sub_1C1266BB0();
      v4 = result;
      if (a2 < 0)
      {
        goto LABEL_24;
      }
    }
  }

  if (result >> 62)
  {
    goto LABEL_23;
  }

  v4 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if ((a2 & 0x8000000000000000) == 0)
  {
    goto LABEL_6;
  }

LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1C0FDBC64(uint64_t a1, void *a2)
{
  v3 = 7104878;
  v9 = sub_1C1266CE0();
  MEMORY[0x1C68EF850](45, 0xE100000000000000);
  if (a2 && (v4 = [a2 uuid]) != 0)
  {
    v5 = v4;
    v3 = sub_1C1265EA0();
    v7 = v6;
  }

  else
  {
    v7 = 0xE300000000000000;
  }

  MEMORY[0x1C68EF850](v3, v7);

  return v9;
}

uint64_t sub_1C0FDBD24@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C0FDBC64(*v1, *(v1 + 8));
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1C0FDBD50@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 24);
  v6 = *(v2 + 32);
  v7 = *(v2 + 40);
  v8 = *(v2 + 41);
  swift_unknownObjectRetain();
  v9 = sub_1C1200D04();
  [v9 setNetworkAccessAllowed_];
  *(a2 + 152) = swift_getKeyPath();
  *(a2 + 160) = 0;
  v10 = type metadata accessor for PhotosAssetView(0);
  v11 = v10[12];
  *(a2 + v11) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930, &qword_1C12A3650);
  swift_storeEnumTagMultiPayload();
  v12 = a2 + v10[13];
  *v12 = swift_getKeyPath();
  *(v12 + 8) = 0;
  v13 = a2 + v10[14];
  *v13 = swift_getKeyPath();
  *(v13 + 8) = 0;
  *a2 = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 1;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 52) = v5;
  *(a2 + 60) = v6;
  *(a2 + 68) = v7;
  *(a2 + 69) = v8;
  *(a2 + 72) = 0;
  *(a2 + 80) = 1;
  *(a2 + 88) = a1;
  *(a2 + 96) = 0;
  *(a2 + 104) = v9;
  *(a2 + 112) = 0u;
  *(a2 + 128) = 0u;
  *(a2 + 144) = 2;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE905E0, &qword_1C12A35E0);
  v15 = a2 + *(result + 36);
  *v15 = 0;
  *(v15 + 8) = 257;
  return result;
}

uint64_t PhotosMultiAssetView.body.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v12[0] = *v1;
  v12[1] = v3;
  v12[2] = *(v1 + 32);
  v13 = *(v1 + 48);
  v4 = v3;
  KeyPath = swift_getKeyPath();

  v6 = sub_1C12659A0();
  v8 = v7;
  v9 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90580, &qword_1C12A3490) + 36);
  sub_1C0FDBF84(v12, v9);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90588, &qword_1C12A3498);
  v11 = &v9[*(result + 36)];
  *v11 = v6;
  v11[1] = v8;
  *a1 = KeyPath;
  a1[1] = v4;
  return result;
}

uint64_t sub_1C0FDBF84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v11 = a1;
  v12 = a2;
  v2 = sub_1C1263DC0();
  MEMORY[0x1EEE9AC00](v2);
  v3 = sub_1C1265810();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE905B8, &qword_1C12A35D0);
  sub_1C1265820();
  *(swift_allocObject() + 16) = xmmword_1C12A3440;
  v10 = xmmword_1C12A3450;
  *v6 = xmmword_1C12A3450;
  v7 = *MEMORY[0x1E697D748];
  v8 = *(v4 + 104);
  v8(v6, v7, v3);
  sub_1C1265830();
  *v6 = v10;
  v8(v6, v7, v3);
  sub_1C1265830();
  sub_1C1263AB0();
  v13 = v11;
  v14 = 0;
  sub_1C0FDC8F0(&qword_1EDE7BBA0, MEMORY[0x1E697FCB0], MEMORY[0x1E697FCC8]);
  sub_1C1266FE0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE905C8, &qword_1C12A35D8);
  sub_1C0FDC7B0();
  return sub_1C1265AE0();
}

uint64_t sub_1C0FDC270(uint64_t a1)
{
  v7 = *(a1 + 48);
  v6 = v7;
  v2 = swift_allocObject();
  v3 = *(a1 + 16);
  *(v2 + 16) = *a1;
  *(v2 + 32) = v3;
  *(v2 + 48) = *(a1 + 32);
  *(v2 + 64) = *(a1 + 48);
  sub_1C0FDC940(&v7, v5);
  sub_1C0FDC9B0(a1, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE905F0, &unk_1C12A35E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE905E0, &qword_1C12A35E0);
  sub_1C0FDB6D4(&qword_1EBE905F8, &qword_1EBE905F0, &unk_1C12A35E8, MEMORY[0x1E69E6338]);
  sub_1C0FDC834();
  sub_1C0FDC9E8();
  return sub_1C1265690();
}

uint64_t sub_1C0FDC404@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C1263590();
  *a1 = result;
  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1C0FDC494(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C0FDC4D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1C0FDC530()
{
  result = qword_1EBE90590;
  if (!qword_1EBE90590)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90580, &qword_1C12A3490);
    sub_1C0FDC5E8();
    sub_1C0FDB6D4(&qword_1EBE905B0, &qword_1EBE90588, &qword_1C12A3498, MEMORY[0x1E697EC18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE90590);
  }

  return result;
}

unint64_t sub_1C0FDC5E8()
{
  result = qword_1EBE90598;
  if (!qword_1EBE90598)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE905A0, &unk_1C12A3550);
    sub_1C0FDC6A0();
    sub_1C0FDB6D4(&qword_1EDE7B910, &qword_1EBE93670, &qword_1C12A7770, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE90598);
  }

  return result;
}

unint64_t sub_1C0FDC6A0()
{
  result = qword_1EDE7B788;
  if (!qword_1EDE7B788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7B788);
  }

  return result;
}

uint64_t sub_1C0FDC6F4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C0FDC748(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_1C0FDC7B0()
{
  result = qword_1EBE905D0;
  if (!qword_1EBE905D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE905C8, &qword_1C12A35D8);
    sub_1C0FDC834();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE905D0);
  }

  return result;
}

unint64_t sub_1C0FDC834()
{
  result = qword_1EDE77498;
  if (!qword_1EDE77498)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE905E0, &qword_1C12A35E0);
    sub_1C0FDC8F0(qword_1EDE7E9C0, type metadata accessor for PhotosAssetView, &protocol conformance descriptor for PhotosAssetView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77498);
  }

  return result;
}

uint64_t sub_1C0FDC8F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C0FDC940(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE905F0, &unk_1C12A35E8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C0FDC9E8()
{
  result = qword_1EBE90600;
  if (!qword_1EBE90600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE90600);
  }

  return result;
}

__n128 PhotosAsyncAssetImageConfiguration.init(asset:imageProvider:requestOptions:cropKind:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *(a4 + 32);
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  result = *a4;
  v7 = *(a4 + 16);
  *(a5 + 24) = *a4;
  *(a5 + 40) = v7;
  *(a5 + 56) = v5;
  return result;
}

BOOL static PhotosAsyncAssetImageConfiguration.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v48 = *(a1 + 32);
  v49 = *(a1 + 24);
  v46 = *(a1 + 48);
  v47 = *(a1 + 40);
  v45 = *(a1 + 56);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  v43 = *(a2 + 32);
  v44 = *(a2 + 24);
  v42 = *(a2 + 40);
  v8 = *(a2 + 48);
  v41 = *(a2 + 56);
  v9 = *a1;
  v10 = v6;
  if (v3 == v6)
  {
  }

  else
  {
    v11 = [v9 isEqual:v10];

    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  v12 = v9;
  v13 = v10;
  if (v3 == v6)
  {

    if (v5 != v2)
    {
      return 0;
    }
  }

  else
  {
    if (!v3 || !v6)
    {

      return 0;
    }

    v14 = [v12 isContentEqualTo:v13];
    if (!v14)
    {
      v14 = [v13 isContentEqualTo:v12];
    }

    if (v14 != 2 || v5 != v2)
    {
      return 0;
    }
  }

  v16 = v4;
  v17 = v7;
  v18 = static PhotosAsyncAssetImageConfiguration.requestOptionsAreEquivelant(_:_:)(v4, v7);

  if ((v18 & 1) == 0)
  {
    return 0;
  }

  v52[0] = v49;
  v52[1] = v48;
  v52[2] = v47;
  v52[3] = v46;
  v53 = v45;
  v50[0] = v44;
  v50[1] = v43;
  v50[2] = v42;
  v50[3] = v8;
  v51 = v41;
  OUTLINED_FUNCTION_9_7();
  sub_1C0FDCF60(v19, v20, v21, v22, v23);
  v24 = OUTLINED_FUNCTION_7_7();
  sub_1C0FDCF60(v24, v25, v26, v27, v28);
  v29 = static PhotosAsyncAssetImageConfiguration.CropKind.== infix(_:_:)(v52, v50);
  v30 = OUTLINED_FUNCTION_7_7();
  sub_1C0FDCFAC(v30, v31, v32, v33, v34);
  OUTLINED_FUNCTION_9_7();
  sub_1C0FDCFAC(v35, v36, v37, v38, v39);
  return v29;
}

uint64_t static PhotosAsyncAssetImageConfiguration.requestOptionsAreEquivelant(_:_:)(void *a1, void *a2)
{
  if (a1)
  {
    if (a1 != a2)
    {
      if (a2)
      {
        v3 = a1;
        v4 = a2;
        v5 = [v3 deliveryMode];
        if (v5 == [v4 deliveryMode])
        {
          v6 = [v3 resizeMode];
          if (v6 == [v4 resizeMode])
          {
            [v3 normalizedCropRect];
            [v4 normalizedCropRect];
            v10.origin.x = OUTLINED_FUNCTION_8_0();
            if (CGRectEqualToRect(v10, v11))
            {
              v7 = [v3 isNetworkAccessAllowed];
              v8 = [v4 isNetworkAccessAllowed];

              return v7 ^ v8 ^ 1;
            }
          }
        }
      }

      return 0;
    }

    return 1;
  }

  return !a2;
}

BOOL static PhotosAsyncAssetImageConfiguration.CropKind.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 32);
  v5 = *a2;
  v6 = a2[1];
  v8 = a2[2];
  v7 = a2[3];
  v9 = *(a2 + 32);
  if (*(a1 + 32))
  {
    if (v4 == 1)
    {
      if (v9 == 1)
      {
        if (v2 != v5 || v3 != v6)
        {
          OUTLINED_FUNCTION_4_4();
          v11 = sub_1C1266D50();
          v12 = OUTLINED_FUNCTION_1_5();
          sub_1C0FDCF60(v12, v13, v14, v15, 1);
          v16 = OUTLINED_FUNCTION_0_4();
          sub_1C0FDCF60(v16, v17, v18, v19, 1);
          v20 = OUTLINED_FUNCTION_0_4();
          sub_1C0FDCFAC(v20, v21, v22, v23, 1);
          v24 = OUTLINED_FUNCTION_1_5();
          sub_1C0FDCFAC(v24, v25, v26, v27, 1);
          return v11 & 1;
        }

        v37 = 1;
        v63 = OUTLINED_FUNCTION_4_4();
        sub_1C0FDCF60(v63, v64, v8, v7, 1);
        v65 = OUTLINED_FUNCTION_0_4();
        sub_1C0FDCF60(v65, v66, v67, v68, 1);
        v69 = OUTLINED_FUNCTION_0_4();
        sub_1C0FDCFAC(v69, v70, v71, v72, 1);
        v45 = OUTLINED_FUNCTION_4_4();
        v47 = v8;
        v48 = v7;
        v49 = 1;
        goto LABEL_29;
      }
    }

    else if (a1[2] | v3 | v2 | a1[3])
    {
      if (v9 == 2 && v5 == 1 && (v8 | v6 | v7) == 0)
      {
        v37 = 1;
        OUTLINED_FUNCTION_2_2();
        sub_1C0FDCFAC(v40, v41, v42, v43, v44);
        OUTLINED_FUNCTION_2_2();
LABEL_29:
        sub_1C0FDCFAC(v45, v46, v47, v48, v49);
        return v37;
      }
    }

    else if (v9 == 2 && (v8 | v6 | v5 | v7) == 0)
    {
      OUTLINED_FUNCTION_2_2();
      sub_1C0FDCFAC(v73, v74, v75, v76, v77);
      OUTLINED_FUNCTION_2_2();
      sub_1C0FDCFAC(v78, v79, v80, v81, v82);
      return 1;
    }

    goto LABEL_26;
  }

  if (*(a2 + 32))
  {
LABEL_26:
    v51 = OUTLINED_FUNCTION_1_5();
    sub_1C0FDCF60(v51, v52, v53, v54, v9);
    v55 = OUTLINED_FUNCTION_0_4();
    sub_1C0FDCFAC(v55, v56, v57, v58, v4);
    v59 = OUTLINED_FUNCTION_1_5();
    sub_1C0FDCFAC(v59, v60, v61, v62, v9);
    return 0;
  }

  v29 = OUTLINED_FUNCTION_0_4();
  sub_1C0FDCFAC(v29, v30, v31, v32, 0);
  v33 = OUTLINED_FUNCTION_1_5();
  sub_1C0FDCFAC(v33, v34, v35, v36, 0);
  return v2 == v5;
}

void sub_1C0FDCF60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 == 1)
  {
  }
}

void sub_1C0FDCFAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 == 1)
  {
  }
}

void PhotosAsyncAssetImageConfiguration.cropKind.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v6 = *(v1 + 56);
  *(a1 + 32) = v6;
  sub_1C0FDCF60(v2, v3, v4, v5, v6);
}

uint64_t PhotosAsyncAssetImageConfiguration.sourceDebugIdentifier.getter()
{
  v1 = 0x6E776F6E6B6E75;
  if (*v0)
  {
    v2 = [*v0 uuid];
    if (v2)
    {
      v3 = v2;
      v1 = sub_1C1265EA0();
    }
  }

  return v1;
}

uint64_t PhotosAsyncAssetImageConfiguration.media.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v10[0] = *v1;
  v10[1] = v3;
  v5 = *v1;
  v4 = v1[1];
  v11[0] = v1[2];
  *(v11 + 9) = *(v1 + 41);
  v8[0] = v5;
  v8[1] = v4;
  v9[0] = v1[2];
  *(v9 + 9) = *(v1 + 41);
  sub_1C0FDE0F8(v10, &v7);
  return sub_1C0FDD130(v8, a1);
}

uint64_t sub_1C0FDD130@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  if (*a1)
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1C1266460();
    v11 = v10;
    v13 = v12;
    v32 = 0;
    v14 = [v3 uuid];
    if (v14)
    {
      v15 = v14;
      v31 = sub_1C1265EA0();
      v17 = v16;
    }

    else
    {
      v31 = 0;
      v17 = 0;
    }
  }

  else
  {
    v31 = 0;
    v17 = 0;
    v32 = 1;
    v11 = 0;
    v13 = 0;
  }

  v18 = OUTLINED_FUNCTION_4_4();
  sub_1C0FDCF60(v18, v19, v7, v8, v9);
  [v5 normalizedCropRect];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v28 = OUTLINED_FUNCTION_4_4();
  sub_1C0FDCFAC(v28, v29, v7, v8, v9);
  result = swift_unknownObjectRelease();
  *a2 = v11;
  *(a2 + 8) = v13;
  *(a2 + 16) = v32;
  *(a2 + 24) = v4;
  *(a2 + 32) = v6;
  *(a2 + 40) = v7;
  *(a2 + 48) = v8;
  *(a2 + 56) = v9;
  *(a2 + 64) = v21;
  *(a2 + 72) = v23;
  *(a2 + 80) = v25;
  *(a2 + 88) = v27;
  *(a2 + 96) = v31;
  *(a2 + 104) = v17;
  return result;
}

void sub_1C0FDD2C4(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v9 = *(v4 + 24);
  v8 = *(v4 + 32);
  v10 = *(v4 + 40);
  v11 = *(v4 + 48);
  v12 = *(v4 + 56);
  v13 = *(v4 + 64);
  v14 = *(v4 + 72);
  v15 = *(v4 + 80);
  v16 = *(v4 + 88);
  sub_1C0FDE89C(a1 + 16, &v25);
  sub_1C0FD09FC(&v25, v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92300, &unk_1C12A3A90);
  if (swift_dynamicCast())
  {
    v17 = v25;
    *&v25 = v9;
    *(&v25 + 1) = v8;
    v26 = v10;
    v27 = v11;
    v28 = v12;
    sub_1C0FDCF60(v9, v8, v10, v11, v12);
    v18.n128_u64[0] = v15;
    v19.n128_u64[0] = v16;
    sub_1C0FDD41C(v29, v17, &v25, v13, a3, a4, v14, v18, v19);
    v23 = v29[0];
    v24 = v29[1];
    v20 = v30;
    swift_unknownObjectRelease();
    sub_1C0FDCFAC(v25, *(&v25 + 1), v26, v27, v28);
    v21 = v23;
    v22 = v24;
  }

  else
  {
    v21 = 0uLL;
    v20 = 1;
    v22 = 0uLL;
  }

  *a2 = v21;
  *(a2 + 16) = v22;
  *(a2 + 32) = v20;
}

uint64_t *sub_1C0FDD41C@<X0>(uint64_t *__return_ptr a1@<X8>, id a2@<X1>, uint64_t *result@<X0>, double a4@<D0>, double a5@<D4>, double a6@<D5>, double a7@<D1>, __n128 a8@<Q2>, __n128 a9@<Q3>)
{
  v11 = *result;
  if (!*(result + 32))
  {
    result = [a2 respondsToSelector_];
    if (result)
    {
      sub_1C12665B0();
      result = [a2 bestCropRectForAspectRatioV2:0 verticalContentMode:v11 cropMode:?];
LABEL_10:
      *&v14 = v16;
      v15 = 0;
      *(&v14 + 1) = v17;
      *(&v13 + 1) = v18;
      goto LABEL_16;
    }

    v14 = 0uLL;
LABEL_12:
    v15 = 1;
    v13 = 0uLL;
    goto LABEL_16;
  }

  v12 = result[2];
  if (*(result + 32) != 1)
  {
    v14 = 0uLL;
    if (result[3] | v12 | v11 | result[1])
    {
      result = CGRectIsEmpty(*&a4);
      if (result)
      {
        if ([a2 respondsToSelector_])
        {
          sub_1C12665B0();
          result = [a2 bestCropRectForAspectRatioV2:0 verticalContentMode:3 cropMode:?];
          goto LABEL_10;
        }

        result = [a2 respondsToSelector_];
        if (result)
        {
          sub_1C12665B0();
          result = [a2 bestCropRectForAspectRatio_];
          goto LABEL_10;
        }
      }

      v15 = 1;
      v13 = 0uLL;
      v14 = 0uLL;
      goto LABEL_16;
    }

    goto LABEL_12;
  }

  result = (v12)(v19, a2, a5, a6, a8, a9, a5, a6);
  v14 = v19[0];
  v13 = v19[1];
  v15 = v20;
LABEL_16:
  *a1 = v14;
  *(a1 + 1) = v13;
  *(a1 + 32) = v15;
  return result;
}

BOOL sub_1C0FDD5A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v7 = *(a2 + 24);
  v6 = *(a2 + 32);
  v9 = *(a2 + 40);
  v8 = *(a2 + 48);
  v10 = *(a2 + 56);
  v11 = *(a2 + 64);
  v12 = *(a2 + 72);
  v13 = *(a2 + 80);
  v14 = *(a2 + 88);
  if (*(a1 + 16))
  {
    if ((*(a2 + 16) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a2 + 16))
    {
      return 0;
    }

    if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
    {
      return 0;
    }
  }

  v38 = *(a2 + 96);
  v39 = *(a1 + 96);
  v40 = *(a2 + 104);
  v41 = *(a1 + 104);
  v45[0] = *(a1 + 24);
  v45[1] = v2;
  v45[2] = v3;
  v45[3] = v4;
  v46 = v5;
  v43[0] = v7;
  v43[1] = v6;
  v43[2] = v9;
  v43[3] = v8;
  v44 = v10;
  v16 = OUTLINED_FUNCTION_5_11();
  sub_1C0FDCF60(v16, v17, v18, v19, v20);
  v21 = OUTLINED_FUNCTION_6_7();
  sub_1C0FDCF60(v21, v22, v23, v24, v25);
  v42 = static PhotosAsyncAssetImageConfiguration.CropKind.== infix(_:_:)(v45, v43);
  v26 = OUTLINED_FUNCTION_6_7();
  sub_1C0FDCFAC(v26, v27, v28, v29, v30);
  v31 = OUTLINED_FUNCTION_5_11();
  sub_1C0FDCFAC(v31, v32, v33, v34, v35);
  if (v42)
  {
    v47.origin.x = OUTLINED_FUNCTION_8_0();
    v48.origin.x = v11;
    v48.origin.y = v12;
    v48.size.width = v13;
    v48.size.height = v14;
    result = CGRectEqualToRect(v47, v48);
    if (!result)
    {
      return result;
    }

    if (v41)
    {
      if (!v40)
      {
        return 0;
      }

      v37 = v39 == v38 && v41 == v40;
      return v37 || (sub_1C1266D50() & 1) != 0;
    }

    if (!v40)
    {
      return 1;
    }
  }

  return 0;
}

double sub_1C0FDD720@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  sub_1C0FDD2C4(a1, v7, a3, a4);
  result = *v7;
  v6 = v7[1];
  *a2 = v7[0];
  *(a2 + 16) = v6;
  *(a2 + 32) = v8;
  return result;
}

uint64_t PhotosAsyncAssetImageProvider.Error.hashValue.getter()
{
  sub_1C1266E90();
  MEMORY[0x1C68F07E0](0);
  return sub_1C1266EE0();
}

uint64_t sub_1C0FDD80C(uint64_t a1)
{
  sub_1C1266E90();
  MEMORY[0x1C68F07E0](0);
  return sub_1C1266EE0();
}

uint64_t static PhotosAsyncAssetImageProvider.forAsset(_:)@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (result)
  {
    v3 = result;
    v4 = objc_opt_self();
    swift_unknownObjectRetain();
    v5 = [v4 defaultManager];
    v6 = [v5 imageProviderForAsset_];

    result = swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0;
  }

  *a2 = v6;
  return result;
}

id PhotosAsyncAssetImageProvider.requestImage(configuration:targetPixelSize:resultHandler:)(uint64_t a1, void (*a2)(_BYTE *), uint64_t a3, double a4, double a5)
{
  v8 = *v5;
  if (!*v5)
  {
    sub_1C0FDE130();
    v20 = swift_allocError();
    LOBYTE(v31) = 1;
    *aBlock = v20;
    v38 = 1;
    a2(aBlock);

    return 0;
  }

  v9 = *a1;
  if (!*a1)
  {
    sub_1C0FDE184();
    v21 = swift_allocError();
    *v22 = 0;
    *&aBlock[8] = v31;
    *&aBlock[24] = v32;
    v36 = v33;
    *aBlock = v21;
    v37 = v34;
    v38 = 1;
    swift_unknownObjectRetain();
    a2(aBlock);

    swift_unknownObjectRelease();
    return 0;
  }

  v12 = *(a1 + 16);
  v13 = *(a1 + 40);
  v14 = *(a1 + 56);
  *aBlock = *(a1 + 24);
  *&aBlock[16] = v13;
  aBlock[32] = v14;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  [v12 normalizedCropRect];
  sub_1C0FDD41C(&v31, v9, aBlock, v15, a4, a5, v16, v17, v18);
  if (v33)
  {
    v19 = v12;
  }

  else
  {
    v24 = v32;
    v25 = v31;
    [v12 copy];
    sub_1C12667F0();
    swift_unknownObjectRelease();
    sub_1C0FDE8F8(0, &qword_1EDE7B640, 0x1E69C4518);
    swift_dynamicCast();
    v19 = v30;
    [v30 setNormalizedCropRect_];
    [v30 setResizeMode_];
  }

  v26 = swift_allocObject();
  *(v26 + 16) = a2;
  *(v26 + 24) = a3;
  *&aBlock[32] = sub_1C0FDE1D8;
  *&v36 = v26;
  *aBlock = MEMORY[0x1E69E9820];
  *&aBlock[8] = 1107296256;
  *&aBlock[16] = sub_1C0FDDFE8;
  *&aBlock[24] = &block_descriptor_0;
  v27 = _Block_copy(aBlock);
  v28 = v19;

  v23 = [v8 requestImageForAsset:v9 targetSize:0 contentMode:v28 options:v27 resultHandler:{a4, a5}];
  _Block_release(v27);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v23;
}

void sub_1C0FDDC24(void *a1, uint64_t a2, void (*a3)(id *))
{
  if (!a1)
  {
    if (a2)
    {
      v30 = sub_1C1265EA0();
      v31 = v10;
      sub_1C12668E0();
      sub_1C104018C(__dst, a2, v29);
      sub_1C0FD1A08(__dst);
      if (*(&v29[1] + 1))
      {
        if (swift_dynamicCast())
        {
          sub_1C0FDE130();
          v11 = swift_allocError();
LABEL_20:
          LOBYTE(v29[0]) = 1;
          __dst[0] = v11;
          v33 = 1;
          a3(__dst);

          return;
        }

LABEL_19:
        sub_1C0FDE184();
        v11 = swift_allocError();
        *v26 = 1;
        goto LABEL_20;
      }
    }

    else
    {
      memset(v29, 0, 32);
    }

    sub_1C0F9E21C(v29, &qword_1EBE90620, &qword_1C12A8B00);
    goto LABEL_19;
  }

  if (!a2)
  {
    memset(v29, 0, 32);
    v12 = a1;
    goto LABEL_12;
  }

  v30 = sub_1C1265EA0();
  v31 = v6;
  v7 = a1;
  sub_1C12668E0();
  sub_1C104018C(__dst, a2, v29);
  sub_1C0FD1A08(__dst);
  if (!*(&v29[1] + 1))
  {
LABEL_12:
    sub_1C0F9E21C(v29, &qword_1EBE90620, &qword_1C12A8B00);
    goto LABEL_13;
  }

  sub_1C0FDE8F8(0, &unk_1EDE7B5D0, 0x1E696AD98);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_13:
    v9 = 2;
    goto LABEL_14;
  }

  v8 = __dst[0];
  if (![__dst[0] BOOLValue])
  {
    v30 = sub_1C1265EA0();
    v31 = v27;
    sub_1C12668E0();
    sub_1C104018C(__dst, a2, v29);
    sub_1C0FD1A08(__dst);
    if (*(&v29[1] + 1))
    {
      if (swift_dynamicCast())
      {
        v28 = __dst[0];
        v9 = [__dst[0] BOOLValue];

        goto LABEL_14;
      }
    }

    else
    {

      sub_1C0F9E21C(v29, &qword_1EBE90620, &qword_1C12A8B00);
    }

    v9 = 0;
    goto LABEL_14;
  }

  v9 = 1;
LABEL_14:
  [a1 px_pixelSize];
  v14 = v13;
  v16 = v15;
  sub_1C1266560();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = a2;
  if (!a2)
  {
    v25 = sub_1C1265CE0();
  }

  *&v29[0] = a1;
  *(&v29[0] + 1) = v14;
  *&v29[1] = v16;
  *(&v29[1] + 1) = v18;
  *&v29[2] = v20;
  *(&v29[2] + 1) = v22;
  *&v29[3] = v24;
  BYTE8(v29[3]) = v9;
  *&v29[4] = v25;
  memcpy(__dst, v29, sizeof(__dst));
  LOBYTE(v30) = 0;
  v33 = 0;

  a3(__dst);
  sub_1C0F9E21C(v29, &qword_1EBE90628, &unk_1C12A3AA0);
}

uint64_t sub_1C0FDDFE8(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (a3)
  {
    v5 = sub_1C1265CD0();
  }

  else
  {
    v5 = 0;
  }

  v6 = a2;
  v4(a2, v5);
}

Swift::Void __swiftcall PhotosAsyncAssetImageProvider.cancelImageRequest(_:)(Swift::Int a1)
{
  if (*v1)
  {
    [*v1 cancelImageRequest_];
  }
}

id sub_1C0FDE0C4@<X0>(uint64_t a1@<X0>, void (*a2)(_BYTE *)@<X1>, uint64_t a3@<X2>, void *a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  result = PhotosAsyncAssetImageProvider.requestImage(configuration:targetPixelSize:resultHandler:)(a1, a2, a3, a5, a6);
  *a4 = result;
  return result;
}

unint64_t sub_1C0FDE130()
{
  result = qword_1EDE79D10;
  if (!qword_1EDE79D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE79D10);
  }

  return result;
}

unint64_t sub_1C0FDE184()
{
  result = qword_1EDE82358;
  if (!qword_1EDE82358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE82358);
  }

  return result;
}

unint64_t sub_1C0FDE1E8(uint64_t a1)
{
  result = sub_1C0FDE210();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C0FDE210()
{
  result = qword_1EDE7FE08;
  if (!qword_1EDE7FE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7FE08);
  }

  return result;
}

unint64_t sub_1C0FDE268()
{
  result = qword_1EBE90610;
  if (!qword_1EBE90610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE90610);
  }

  return result;
}

unint64_t sub_1C0FDE2C0()
{
  result = qword_1EDE7FDF8;
  if (!qword_1EDE7FDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7FDF8);
  }

  return result;
}

unint64_t sub_1C0FDE314(uint64_t a1)
{
  result = sub_1C0FDE33C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C0FDE33C()
{
  result = qword_1EDE80900;
  if (!qword_1EDE80900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE80900);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_17PhotosSwiftUICore0A28AsyncAssetImageConfigurationV8CropKindO(uint64_t a1)
{
  if ((*(a1 + 32) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 32) & 3;
  }
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

uint64_t sub_1C0FDE3C8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 57))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C0FDE408(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1C0FDE47C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 33))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C0FDE4BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_1C0FDE504(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

uint64_t sub_1C0FDE53C(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 8))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C0FDE590(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PhotosAsyncAssetImageProvider.Error(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for PhotosAsyncAssetImageProvider.Error(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1C0FDE6F0()
{
  result = qword_1EDE81100;
  if (!qword_1EDE81100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE81100);
  }

  return result;
}

uint64_t sub_1C0FDE74C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 112))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 104);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C0FDE7A0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 112) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 112) = 0;
    }

    if (a2)
    {
      *(result + 104) = a2;
    }
  }

  return result;
}

unint64_t sub_1C0FDE820(uint64_t a1)
{
  result = sub_1C0FDE848();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C0FDE848()
{
  result = qword_1EDE81110[0];
  if (!qword_1EDE81110[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDE81110);
  }

  return result;
}

uint64_t sub_1C0FDE8F8(uint64_t a1, unint64_t *a2, void *a3)
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

void PhotosMockSocialGroup.__allocating_init(title:selectionIdentifier:keyAsset:isContentPrivacyEnabled:)()
{
  OUTLINED_FUNCTION_19_4();
  OUTLINED_FUNCTION_11_7();
  swift_allocObject();
  PhotosMockSocialGroup.init(title:selectionIdentifier:keyAsset:isContentPrivacyEnabled:)();
  OUTLINED_FUNCTION_18_4();
}

void PhotosMockSocialGroup.init(title:selectionIdentifier:keyAsset:isContentPrivacyEnabled:)()
{
  OUTLINED_FUNCTION_19_4();
  OUTLINED_FUNCTION_11_7();
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 32) = 0u;
  *(v1 + 80) = 1;
  sub_1C1261F60();

  *(v1 + 32) = v6;
  *(v1 + 40) = v5;
  *(v1 + 16) = v4;
  *(v1 + 24) = v3;
  v7 = *(v1 + 48);
  v8 = v2;

  *(v1 + 48) = v2;

  *(v1 + 56) = 0xD000000000000016;
  *(v1 + 64) = 0x80000001C1269500;
  *(v1 + 72) = 0;
  *(v1 + 80) = 1;
  *(v1 + 81) = v0;
  OUTLINED_FUNCTION_18_4();
}

uint64_t sub_1C0FDEA4C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_9_5(v2 + 32);
  OUTLINED_FUNCTION_15_3();
  if (sub_1C0FDFDE0(v5, v6, v7, v8))
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_14_1();
    MEMORY[0x1EEE9AC00](v9);
    OUTLINED_FUNCTION_5_6();
    *(v10 - 16) = a2;
    OUTLINED_FUNCTION_16_6(v11, v12, v13);
  }

  else
  {
    *(v2 + 32) = a1;
    *(v2 + 40) = a2;
  }
}

uint64_t sub_1C0FDEB00(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_9_5(v2 + 16);
  v5 = *(v2 + 16) == a1 && *(v2 + 24) == a2;
  if (v5 || (OUTLINED_FUNCTION_15_3(), (sub_1C1266D50() & 1) != 0))
  {
    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
  }

  else
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_14_1();
    MEMORY[0x1EEE9AC00](v7);
    OUTLINED_FUNCTION_5_6();
    *(v8 - 16) = a2;
    OUTLINED_FUNCTION_16_6(v9, v10, v11);
  }
}

void sub_1C0FDEBC4(void *a1)
{
  OUTLINED_FUNCTION_9_5(v1 + 48);
  v3 = *(v1 + 48);
  v4 = v3;
  LOBYTE(v3) = sub_1C0FDFE74(v3, a1);

  if (v3)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v9[2] = v1;
    v9[3] = a1;
    OUTLINED_FUNCTION_16_6(v6, v7, v9);
  }

  else
  {
    v8 = *(v1 + 48);
    *(v1 + 48) = a1;
  }
}

uint64_t sub_1C0FDEC94(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_9_5(v2 + 56);
  OUTLINED_FUNCTION_15_3();
  if (sub_1C0FDFDE0(v5, v6, v7, v8))
  {
    swift_getKeyPath();
    OUTLINED_FUNCTION_14_1();
    MEMORY[0x1EEE9AC00](v9);
    OUTLINED_FUNCTION_5_6();
    *(v10 - 16) = a2;
    OUTLINED_FUNCTION_16_6(v11, v12, v13);
  }

  else
  {
    *(v2 + 56) = a1;
    *(v2 + 64) = a2;
  }
}

double sub_1C0FDED48(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_9_5(v2 + 72);
  if ((*(v2 + 80) & 1) == 0)
  {
    if ((a2 & 1) != 0 || *(v2 + 72) != a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    *(v2 + 72) = a1;
    *(v2 + 80) = a2 & 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  OUTLINED_FUNCTION_5_6();
  *(v7 - 16) = a2 & 1;
  OUTLINED_FUNCTION_16_6(v8, v9, v10);

  return result;
}

void sub_1C0FDEE10(char a1)
{
  v2 = a1 & 1;
  swift_beginAccess();
  if (*(v1 + 81) == v2)
  {
    *(v1 + 81) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v6[2] = v1;
    v7 = v2;
    OUTLINED_FUNCTION_16_6(v4, v5, v6);
  }
}

uint64_t sub_1C0FDEF0C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C0FDEF78();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C0FDEF38(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_1C0FDEB00(v1, v2);
}

uint64_t sub_1C0FDEF78()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_5();
  v3 = sub_1C0FE01A0(v1, v2);
  OUTLINED_FUNCTION_6(v3, v4);

  OUTLINED_FUNCTION_7_4(v0 + 16, v5);
  v6 = *(v0 + 16);

  return v6;
}

uint64_t sub_1C0FDEFFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  *(a1 + 16) = a2;
  *(a1 + 24) = a3;
}

void sub_1C0FDF068()
{
  OUTLINED_FUNCTION_19_4();
  v1 = OUTLINED_FUNCTION_4_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_4(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_0_5();
  v5 = sub_1C0FE01A0(v3, v4);
  OUTLINED_FUNCTION_1_6(v5);

  v6 = OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_2_3(v6);

  OUTLINED_FUNCTION_12_1();
  *(v0 + 56) = sub_1C0FDEEC4();
  OUTLINED_FUNCTION_18_4();
}

uint64_t sub_1C0FDF164@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C0FDF1A8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C0FDF1A8()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_5();
  v3 = sub_1C0FE01A0(v1, v2);
  OUTLINED_FUNCTION_6(v3, v4);

  OUTLINED_FUNCTION_7_4(v0 + 32, v5);
  v6 = *(v0 + 32);

  return v6;
}

uint64_t sub_1C0FDF22C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  *(a1 + 32) = a2;
  *(a1 + 40) = a3;
}

void sub_1C0FDF298()
{
  OUTLINED_FUNCTION_19_4();
  v1 = OUTLINED_FUNCTION_4_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_4(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_0_5();
  v5 = sub_1C0FE01A0(v3, v4);
  OUTLINED_FUNCTION_1_6(v5);

  v6 = OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_2_3(v6);

  OUTLINED_FUNCTION_12_1();
  *(v0 + 56) = sub_1C0FDF120();
  OUTLINED_FUNCTION_18_4();
}

void *sub_1C0FDF394@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C0FDF3F0();
  *a1 = result;
  return result;
}

void sub_1C0FDF3C0(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1C0FDEBC4(v1);
}

void *sub_1C0FDF3F0()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_5();
  v3 = sub_1C0FE01A0(v1, v2);
  OUTLINED_FUNCTION_6(v3, v4);

  OUTLINED_FUNCTION_7_4(v0 + 48, v5);
  v6 = *(v0 + 48);
  v7 = v6;
  return v6;
}

void sub_1C0FDF46C(uint64_t a1, void *a2)
{
  swift_beginAccess();
  v4 = *(a1 + 48);
  *(a1 + 48) = a2;
  v5 = a2;
}

void sub_1C0FDF4CC()
{
  OUTLINED_FUNCTION_19_4();
  v1 = OUTLINED_FUNCTION_4_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_4(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_0_5();
  v5 = sub_1C0FE01A0(v3, v4);
  OUTLINED_FUNCTION_1_6(v5);

  v6 = OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_2_3(v6);

  OUTLINED_FUNCTION_12_1();
  *(v0 + 56) = sub_1C0FDF350();
  OUTLINED_FUNCTION_18_4();
}

uint64_t sub_1C0FDF584()
{
  v0 = sub_1C0FDF3F0();
  if (!v0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92360, &qword_1C12A3BB0);
  result = swift_allocObject();
  *(result + 16) = xmmword_1C12A3AB0;
  *(result + 32) = v1;
  return result;
}

uint64_t sub_1C0FDF62C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C0FDF6B8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C0FDF670(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

uint64_t sub_1C0FDF6B8()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_5();
  v3 = sub_1C0FE01A0(v1, v2);
  OUTLINED_FUNCTION_6(v3, v4);

  OUTLINED_FUNCTION_7_4(v0 + 56, v5);
  v6 = *(v0 + 56);

  return v6;
}

uint64_t sub_1C0FDF73C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  *(a1 + 56) = a2;
  *(a1 + 64) = a3;
}

void sub_1C0FDF7A8()
{
  OUTLINED_FUNCTION_19_4();
  v1 = OUTLINED_FUNCTION_4_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_4(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_0_5();
  v5 = sub_1C0FE01A0(v3, v4);
  OUTLINED_FUNCTION_1_6(v5);

  v6 = OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_2_3(v6);

  OUTLINED_FUNCTION_12_1();
  *(v0 + 56) = sub_1C0FDF5E8();
  OUTLINED_FUNCTION_18_4();
}

uint64_t sub_1C0FDF8A4@<X0>(uint64_t a1@<X8>)
{
  result = sub_1C0FDF90C();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1C0FDF90C()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_5();
  v3 = sub_1C0FE01A0(v1, v2);
  OUTLINED_FUNCTION_6(v3, v4);

  OUTLINED_FUNCTION_7_4(v0 + 72, v5);
  return *(v0 + 72);
}

uint64_t sub_1C0FDF984(uint64_t a1, uint64_t a2, char a3)
{
  result = swift_beginAccess();
  *(a1 + 72) = a2;
  *(a1 + 80) = a3 & 1;
  return result;
}

void sub_1C0FDF9E4()
{
  OUTLINED_FUNCTION_19_4();
  v1 = OUTLINED_FUNCTION_4_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_4(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_0_5();
  v5 = sub_1C0FE01A0(v3, v4);
  OUTLINED_FUNCTION_1_6(v5);

  v6 = OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_2_3(v6);

  OUTLINED_FUNCTION_12_1();
  *(v0 + 56) = sub_1C0FDF860();
  OUTLINED_FUNCTION_18_4();
}

uint64_t sub_1C0FDFAE0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C0FDFB38();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C0FDFB38()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_5();
  v3 = sub_1C0FE01A0(v1, v2);
  OUTLINED_FUNCTION_6(v3, v4);

  OUTLINED_FUNCTION_7_4(v0 + 81, v5);
  return *(v0 + 81);
}

uint64_t sub_1C0FDFBAC(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(a1 + 81) = a2;
  return result;
}

void sub_1C0FDFC00()
{
  OUTLINED_FUNCTION_19_4();
  v1 = OUTLINED_FUNCTION_4_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_4(v2);
  swift_getKeyPath();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_0_5();
  v5 = sub_1C0FE01A0(v3, v4);
  OUTLINED_FUNCTION_1_6(v5);

  v6 = OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_2_3(v6);

  OUTLINED_FUNCTION_12_1();
  *(v0 + 56) = sub_1C0FDFA9C();
  OUTLINED_FUNCTION_18_4();
}

void sub_1C0FDFCB8(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v3 = v3[4];
  swift_getKeyPath();
  sub_1C1261F40();

  free(v3);
}

uint64_t sub_1C0FDFD4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_5();
  sub_1C0FE01A0(v3, v4);
  return sub_1C1261F20();
}

BOOL sub_1C0FDFDE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (a2 | a4) == 0;
  if (a2 && a4)
  {
    if (a1 == a3 && a2 == a4)
    {
      v5 = 1;
    }

    else
    {
      v5 = sub_1C1266D50();
    }
  }

  return (v5 & 1) == 0;
}

BOOL sub_1C0FDFE74(unint64_t a1, unint64_t a2)
{
  v2 = (a1 | a2) == 0;
  if (a1 && a2)
  {
    sub_1C0FE0644();
    v5 = a1;
    v6 = a2;
    v2 = sub_1C12666B0();
  }

  return (v2 & 1) == 0;
}

uint64_t type metadata accessor for PhotosMockSocialGroup(uint64_t a1)
{
  result = qword_1EBE90658;
  if (!qword_1EBE90658)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PhotosMockSocialGroup.deinit()
{

  v1 = OBJC_IVAR____TtC17PhotosSwiftUICore21PhotosMockSocialGroup___observationRegistrar;
  v2 = sub_1C1261F70();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t PhotosMockSocialGroup.__deallocating_deinit()
{
  PhotosMockSocialGroup.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1C0FE0090(uint64_t a1)
{
  result = sub_1C0FE01A0(&qword_1EBE90640, &protocol conformance descriptor for PhotosMockSocialGroup);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C0FE01A0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PhotosMockSocialGroup(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C0FE01F8(uint64_t a1)
{
  result = sub_1C1261F70();
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

unint64_t sub_1C0FE0644()
{
  result = qword_1EBE90668;
  if (!qword_1EBE90668)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBE90668);
  }

  return result;
}

uint64_t PhotosMockErrorLabel.body.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1C0FDB9AC();

  sub_1C1265390();
  v2 = sub_1C1265120();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90670, &qword_1C12A3D90);
  *(a1 + *(result + 36)) = v2;
  return result;
}

uint64_t sub_1C0FE0774(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

unint64_t sub_1C0FE07C4()
{
  result = qword_1EBE90678;
  if (!qword_1EBE90678)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90670, &qword_1C12A3D90);
    sub_1C0FDB6D4(&qword_1EDE7B7F8, &qword_1EBE90680, &qword_1C12A8540, MEMORY[0x1E697D658]);
    sub_1C0FDB6D4(&qword_1EDE7BA50, &qword_1EBE904B8, &unk_1C12A3E30, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE90678);
  }

  return result;
}

uint64_t PhotosCollectionTitleText.init(model:alignment:spec:containerWidth:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v23 = a3[3];
  v24 = *a3;
  v25 = a3[2];
  v26 = a3[1];
  v11 = *(a3 + 8);
  v12 = *(a3 + 72);
  v13 = *(a3 + 10);
  v14 = *(a3 + 11);
  v15 = *(a3 + 96);
  v16 = *(a3 + 13);
  sub_1C0FDB0A8(a1, a6);
  *(a6 + 40) = a2;
  if (v26 >> 1 != 0xFFFFFFFF || *(&v25 + 1) >= 2uLL)
  {
    result = __swift_destroy_boxed_opaque_existential_0Tm(a1);
    v20 = v25;
    v19 = v26;
    v22 = v23;
    v21 = v24;
  }

  else
  {
    if (qword_1EDE7A398 != -1)
    {
      swift_once();
    }

    memcpy(__dst, &qword_1EDE9B5D8, sizeof(__dst));
    sub_1C0FDB260(__dst, v27);
    result = __swift_destroy_boxed_opaque_existential_0Tm(a1);
    v11 = *&__dst[4];
    v12 = BYTE8(__dst[4]);
    v14 = *(&__dst[5] + 1);
    v13 = *&__dst[5];
    v15 = __dst[6];
    v16 = *(&__dst[6] + 1);
    v19 = __dst[1];
    v21 = __dst[0];
    v22 = __dst[3];
    v20 = __dst[2];
  }

  *(a6 + 48) = v21;
  *(a6 + 64) = v19;
  *(a6 + 80) = v20;
  *(a6 + 96) = v22;
  *(a6 + 112) = v11;
  *(a6 + 120) = v12 & 1;
  *(a6 + 128) = v13;
  *(a6 + 136) = v14;
  *(a6 + 144) = v15 & 1;
  *(a6 + 152) = v16;
  *(a6 + 160) = a4;
  *(a6 + 168) = a5 & 1;
  return result;
}

uint64_t static PhotosCollectionTitleText.textualRepresentation(model:)(void *a1)
{
  v2 = sub_1C1265E50();
  v32 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C1265E30();
  MEMORY[0x1EEE9AC00](v5 - 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v31 = sub_1C12621B0();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v6 = sub_1C12621C0();
  if (v7)
  {
    v8 = v6;
    v9 = v7;
    OUTLINED_FUNCTION_0_6();
    sub_1C0FA2700();
    v11 = v10;
    v12 = *(v10 + 16);
    if (v12 >= *(v10 + 24) >> 1)
    {
      OUTLINED_FUNCTION_0_6();
      sub_1C0FA2700();
      v11 = v27;
    }

    *(v11 + 16) = v12 + 1;
    v13 = v11 + 16 * v12;
    *(v13 + 32) = v8;
    *(v13 + 40) = v9;
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v14 = sub_1C1262180();
  if ((v15 & 1) == 0)
  {
    v16 = v14;
    v17 = (v32 + 8);
    sub_1C1265E20();
    OUTLINED_FUNCTION_28_0();
    v33 = v16;
    OUTLINED_FUNCTION_27();
    sub_1C1265E10();
    sub_1C1265E40();
    v18 = static String.photosSwiftUICoreLocalized(_:)(v4);
    v20 = v19;
    (*v17)(v4, v2);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_0_6();
      sub_1C0FA2700();
      v11 = v28;
    }

    v21 = *(v11 + 16);
    if (v21 >= *(v11 + 24) >> 1)
    {
      OUTLINED_FUNCTION_0_6();
      sub_1C0FA2700();
      v11 = v29;
    }

    *(v11 + 16) = v21 + 1;
    v22 = v11 + 16 * v21;
    *(v22 + 32) = v18;
    *(v22 + 40) = v20;
    goto LABEL_14;
  }

  if (*(v11 + 16))
  {
LABEL_14:
    v33 = 32;
    v34 = 0xE100000000000000;
    v35 = v11;
    sub_1C1265DF0();
    v23 = static String.photosSwiftUICoreLocalized(_:)(v4);
    v25 = v24;
    (*(v32 + 8))(v4, v2);
    MEMORY[0x1C68EF850](v23, v25);

    MEMORY[0x1C68EF850](32, 0xE100000000000000);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE906A0, &qword_1C12A3E60);
    sub_1C0FDB6D4(&qword_1EDE7B700, &qword_1EBE906A0, &qword_1C12A3E60, MEMORY[0x1E69E6310]);
    sub_1C1265D70();

    return v31;
  }

  return v31;
}

uint64_t PhotosCollectionTitleText.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE906A8, &qword_1C12A3E68);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v18 - v4;
  *v5 = *(v1 + 40);
  *(v5 + 1) = 0;
  v5[16] = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE906B0, &qword_1C12A3E70);
  sub_1C0FE100C(v1, &v5[*(v6 + 44)]);
  v7 = sub_1C1264480();
  MEMORY[0x1C68F0CE0]();
  sub_1C12628A0();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  sub_1C0FE4040(v5, a1, &qword_1EBE906A8, &qword_1C12A3E68);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE906B8, &qword_1C12A3E78);
  v17 = a1 + *(result + 36);
  *v17 = v7;
  *(v17 + 8) = v9;
  *(v17 + 16) = v11;
  *(v17 + 24) = v13;
  *(v17 + 32) = v15;
  *(v17 + 40) = 0;
  return result;
}

uint64_t sub_1C0FE100C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90828, &qword_1C12A45D8);
  MEMORY[0x1EEE9AC00](v30);
  v31 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90830, &unk_1C12A45E0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v29 - v11;
  __swift_project_boxed_opaque_existential_1(a1, *(a1 + 24));
  v13 = sub_1C12621B0();
  v15 = v13;
  if (v14)
  {
    v15 = sub_1C0FE2768(v13, v14);
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  memcpy(v34, (a1 + 48), sizeof(v34));
  v18 = *(a1 + 40);
  v19 = *(a1 + 160);
  v20 = *(a1 + 168);
  memcpy(&v33[2], (a1 + 48), 0x70uLL);
  __dst[152] = v20;
  v33[0] = v15;
  v33[1] = v17;
  v33[16] = v18;
  v33[17] = v19;
  LOBYTE(v33[18]) = v20;
  sub_1C0FDB260(v34, __dst);
  sub_1C0FE56A0();
  sub_1C1264DF0();
  memcpy(__dst, v33, 0x91uLL);
  sub_1C0FE56F4(__dst);
  *v6 = sub_1C12638E0();
  *(v6 + 1) = 0;
  v6[16] = 1;
  sub_1C0FE139C(a1, (v6 + 24));
  v21 = &v6[*(v30 + 36)];
  v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE933A0, &unk_1C12A7760) + 28);
  v23 = *MEMORY[0x1E69816C8];
  v24 = sub_1C1265340();
  (*(*(v24 - 8) + 104))(v21 + v22, v23, v24);
  *v21 = swift_getKeyPath();
  sub_1C0FE5654(v12, v9, &qword_1EBE90830, &unk_1C12A45E0);
  v25 = v31;
  sub_1C0FE5654(v6, v31, &qword_1EBE90828, &qword_1C12A45D8);
  v26 = v32;
  sub_1C0FE5654(v9, v32, &qword_1EBE90830, &unk_1C12A45E0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90838, &qword_1C12A4620);
  sub_1C0FE5654(v25, v26 + *(v27 + 48), &qword_1EBE90828, &qword_1C12A45D8);
  sub_1C0FD1A5C(v6, &qword_1EBE90828, &qword_1C12A45D8);
  sub_1C0FD1A5C(v12, &qword_1EBE90830, &unk_1C12A45E0);
  sub_1C0FD1A5C(v25, &qword_1EBE90828, &qword_1C12A45D8);
  return sub_1C0FD1A5C(v9, &qword_1EBE90830, &unk_1C12A45E0);
}

uint64_t sub_1C0FE139C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C0FDB0A8(a1, v20);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v4 = sub_1C12621B0();
  v6 = v4;
  if (v5)
  {
    v6 = sub_1C0FE2768(v4, v5);
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v9 = sub_1C12621C0();
  v11 = v9;
  if (v10)
  {
    v11 = sub_1C0FE2768(v9, v10);
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  memcpy(__dst, a1 + 6, sizeof(__dst));
  sub_1C0FDBA58(v20, __src);
  __src[5] = v6;
  __src[6] = v8;
  __src[7] = v11;
  __src[8] = v13;
  memcpy(&__src[9], __dst, 0x70uLL);
  memcpy(v22, __src, sizeof(v22));
  sub_1C0FDB0A8(a1, v18);
  sub_1C0FE5724(v22, v17);
  sub_1C0FE575C(v18, v16);
  sub_1C0FE5724(v17, a2);
  sub_1C0FE575C(v16, a2 + 184);
  sub_1C0FDB260(__dst, &v15);
  sub_1C0FE5794(v18);
  sub_1C0FE57C4(v22);
  sub_1C0FE5794(v16);
  return sub_1C0FE57C4(v17);
}

uint64_t sub_1C0FE1538@<X0>(uint64_t a1@<X8>)
{
  v88 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90720, &qword_1C12A4480);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v68 - v3;
  v5 = type metadata accessor for PhotosDynamicText(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90728, &qword_1C12A4488);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v68 - v9;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90730, &qword_1C12A4490);
  MEMORY[0x1EEE9AC00](v86);
  v87 = &v68 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90738, &qword_1C12A4498);
  v82 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v68 - v13;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90740, &qword_1C12A44A0);
  MEMORY[0x1EEE9AC00](v84);
  v83 = &v68 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90748, &qword_1C12A44A8);
  MEMORY[0x1EEE9AC00](v16);
  v85 = &v68 - v18;
  v19 = *(v1 + 8);
  if (v19)
  {
    v75 = v12;
    v71 = v4;
    v72 = v2;
    v73 = v5;
    v74 = v10;
    v80 = v17;
    v81 = v8;
    v20 = *v1;
    v22 = *(v1 + 16);
    v21 = *(v1 + 24);
    v23 = *(v1 + 32);
    v24 = *(v1 + 40);
    v25 = *(v1 + 48);
    v26 = *(v1 + 56);
    v27 = *(v1 + 64);
    v28 = *(v1 + 128);
    v78 = v26;
    v79 = v27;
    v76 = v28;
    v77 = v25;
    if (v26 < 0)
    {
      v83 = v20;
      v49 = *(v1 + 136);
      v50 = *(v1 + 144);
      sub_1C0FE4F88(v22, v21, v23, v24, v25, v26);
      v69 = v23;
      v68 = v24;
      if (v50)
      {
        if (qword_1EBE8FC00 != -1)
        {
          swift_once();
        }

        v51 = sub_1C1262720();
        __swift_project_value_buffer(v51, qword_1EBE90688);
        v52 = sub_1C12626F0();
        v53 = sub_1C1266410();
        v54 = os_log_type_enabled(v52, v53);
        v55 = v74;
        if (v54)
        {
          v56 = swift_slowAlloc();
          v57 = swift_slowAlloc();
          v89 = v57;
          *v56 = 136315138;
          *(v56 + 4) = sub_1C0FA0E80(0xD00000000000003CLL, 0x80000001C1269660, &v89);
          _os_log_impl(&dword_1C0F96000, v52, v53, "%s", v56, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v57);
          MEMORY[0x1C68F1630](v57, -1, -1);
          MEMORY[0x1C68F1630](v56, -1, -1);
        }

        swift_storeEnumTagMultiPayload();
        sub_1C0FE4FCC();
        sub_1C1263C20();
        v58 = v21;
      }

      else
      {
        v62 = v24;

        v58 = v21;
        sub_1C0FE4F88(v22, v21, v23, v62, v25, v26);
        sub_1C1263AB0();
        if (sub_1C1263A90())
        {
          v63 = 0;
          v55 = v74;
          v64 = v71;
        }

        else
        {
          sub_1C1263AA0();
          v65 = sub_1C1263A90();
          v63 = 1;
          v55 = v74;
          v64 = v71;
          if ((v65 & 1) == 0)
          {
            sub_1C1263AC0();
            if (sub_1C1263A90())
            {
              v63 = 2;
            }

            else
            {
              v63 = 1;
            }
          }
        }

        v66 = *(v73 + 32);
        *&v7[v66] = swift_getKeyPath();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE904D8, &qword_1C12A32C0);
        swift_storeEnumTagMultiPayload();
        *v7 = v83;
        *(v7 + 1) = v19;
        *(v7 + 2) = v49;
        *(v7 + 3) = v22;
        *(v7 + 4) = v58;
        v7[40] = v63;
        sub_1C0FE5594(v7, v64);
        swift_storeEnumTagMultiPayload();
        sub_1C0FE4FCC();
        sub_1C1263C20();
        sub_1C0FE55F8(v7);
      }

      sub_1C0FE5654(v55, v87, &qword_1EBE90728, &qword_1C12A4488);
      swift_storeEnumTagMultiPayload();
      sub_1C0FE5024();
      sub_1C0FE54C8();
      v46 = v85;
      sub_1C1263C20();
      sub_1C0FE5554(v22, v58, v69, v68, v77, v78);
      sub_1C0FD1A5C(v55, &qword_1EBE90728, &qword_1C12A4488);
    }

    else
    {
      v89 = v20;
      v90 = v19;
      v70 = v21;

      sub_1C0FE4F88(v22, v21, v23, v24, v25, v26);
      sub_1C0FDB9AC();
      v29 = sub_1C12648F0();
      v31 = v30;
      v33 = v32;
      v35 = v34;
      v73 = v34;
      KeyPath = swift_getKeyPath();
      v89 = v29;
      v90 = v31;
      v91 = v33 & 1;
      v92 = v35;
      v93 = KeyPath;
      v94 = v22;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90770, &unk_1C12A44D0);
      sub_1C0FE5410();
      sub_1C1264990();
      v74 = v22;

      v37 = v83;
      sub_1C0FE2B68(v24);
      sub_1C0FDB8E8(v29, v31, v33 & 1);

      (*(v82 + 8))(v14, v75);
      v38 = swift_getKeyPath();
      v39 = v37 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90758, &qword_1C12A44B8) + 36);
      v41 = v77;
      v40 = v78;
      *v39 = v38;
      *(v39 + 8) = v41;
      *(v39 + 16) = v40 & 1;
      v42 = swift_getKeyPath();
      v43 = (v37 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90750, &qword_1C12A44B0) + 36));
      v44 = v79;
      *v43 = v42;
      v43[1] = v44;
      sub_1C1263AB0();
      if (sub_1C1263A90())
      {
        v45 = 0;
        v46 = v85;
      }

      else
      {
        sub_1C1263AA0();
        v59 = sub_1C1263A90();
        v45 = 1;
        v46 = v85;
        if ((v59 & 1) == 0)
        {
          sub_1C1263AC0();
          if (sub_1C1263A90())
          {
            v45 = 2;
          }

          else
          {
            v45 = 1;
          }
        }
      }

      v60 = swift_getKeyPath();
      v61 = v37 + *(v84 + 36);
      *v61 = v60;
      *(v61 + 8) = v45;
      sub_1C0FE5654(v37, v87, &qword_1EBE90740, &qword_1C12A44A0);
      swift_storeEnumTagMultiPayload();
      sub_1C0FE5024();
      sub_1C0FE54C8();
      sub_1C1263C20();

      sub_1C0FD1A5C(v37, &qword_1EBE90740, &qword_1C12A44A0);
    }

    v67 = v88;
    sub_1C0FA8E08(v46, v88);
    return __swift_storeEnumTagSinglePayload(v67, 0, 1, v80);
  }

  else
  {
    v47 = v88;

    return __swift_storeEnumTagSinglePayload(v47, 1, 1, v17);
  }
}

uint64_t sub_1C0FE1EEC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v54 = a1;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE906D0, &qword_1C12A4360);
  MEMORY[0x1EEE9AC00](v53);
  v4 = &v46[-v3];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE906D8, &qword_1C12A4368);
  v51 = *(v5 - 8);
  v52 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v50 = &v46[-v6];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE906E0, &qword_1C12A4370);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v46[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE906E8, &qword_1C12A4378);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v46[-v11];
  v13 = sub_1C0FE2344();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = sub_1C0FE23E8(v13, v14);
  v21 = v20;
  v48 = v23;
  v49 = v22;
  v47 = v24;
  if (v15 == 1)
  {
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE906F0, &qword_1C12A4380);
    v26 = v9;
    v27 = 1;
  }

  else
  {
    v55 = v13;
    v56 = v15;
    v57 = v17;
    v58 = v19;
    v28 = v20;
    sub_1C0FE4E40();
    sub_1C1264DF0();
    v21 = v28;

    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE906F0, &qword_1C12A4380);
    v26 = v9;
    v27 = 0;
  }

  __swift_storeEnumTagSinglePayload(v26, v27, 1, v25);
  v29 = &v12[*(v10 + 52)];
  v30 = v48;
  v31 = v49;
  *v29 = v21;
  *(v29 + 1) = v31;
  *(v29 + 2) = v30;
  v29[24] = v47;
  v32 = *(v10 + 56);
  *&v12[v32] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE904D8, &qword_1C12A32C0);
  swift_storeEnumTagMultiPayload();
  sub_1C0FE4040(v9, v12, &qword_1EBE906E0, &qword_1C12A4370);
  v33 = *(v2 + 128);
  v34 = *(v2 + 152);
  v49 = *(v2 + 160);
  LODWORD(v48) = *(v2 + 168);
  v35 = *(v2 + 176);
  KeyPath = swift_getKeyPath();
  sub_1C0FE5654(v12, v4, &qword_1EBE906E8, &qword_1C12A4378);
  v37 = &v4[*(v53 + 36)];
  *v37 = KeyPath;
  v37[1] = v33;
  sub_1C0FE4D5C();

  v38 = v50;
  sub_1C1264990();
  sub_1C0FD1A5C(v4, &qword_1EBE906D0, &qword_1C12A4360);
  v39 = v54;
  sub_1C0FE2E1C(v34);
  (*(v51 + 8))(v38, v52);
  sub_1C0FD1A5C(v12, &qword_1EBE906E8, &qword_1C12A4378);
  v40 = swift_getKeyPath();
  v41 = v39 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE906F8, &qword_1C12A4428) + 36);
  v42 = v49;
  *v41 = v40;
  *(v41 + 8) = v42;
  *(v41 + 16) = v48;
  v43 = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90700, &qword_1C12A4460);
  v45 = (v39 + *(result + 36));
  *v45 = v43;
  v45[1] = v35;
  return result;
}

uint64_t sub_1C0FE2344()
{
  v1 = v0[7];
  v2 = v0[8];
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);

  sub_1C1262190();
  if (!v2 && (sub_1C0FE24A4() & 1) == 0)
  {

    return 0;
  }

  return v1;
}

uint64_t sub_1C0FE23E8(uint64_t a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  v4 = sub_1C1262180();
  if (v5)
  {
    return 0;
  }

  v6 = v4;
  if (a2 == 1)
  {
    __swift_project_boxed_opaque_existential_1(v2, v2[3]);
    sub_1C1262190();
  }

  return v6;
}

uint64_t sub_1C0FE24A4()
{
  if (v0[6] || v0[8])
  {
    LOBYTE(v1) = 0;
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v0, v0[3]);
    sub_1C1262190();
    if (v1)
    {

      __swift_project_boxed_opaque_existential_1(v0, v0[3]);
      sub_1C1262180();
    }
  }

  return v1 & 1;
}

uint64_t sub_1C0FE2538@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE906C0, &unk_1C12A4350);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v17 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE906C8, &qword_1C12BF800);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v17 - v7;
  v9 = sub_1C1262260();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  sub_1C12621A0();
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_1C0FD1A5C(v8, &qword_1EBE906C8, &qword_1C12BF800);
    v13 = 1;
  }

  else
  {
    v14 = *(v10 + 32);
    v14(v12, v8, v9);
    v14(v5, v12, v9);
    v15 = &v5[*(v3 + 36)];
    *v15 = 0;
    *(v15 + 1) = 0;
    sub_1C0FE4040(v5, a1, &qword_1EBE906C0, &unk_1C12A4350);
    v13 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a1, v13, 1, v3);
}

uint64_t sub_1C0FE2768(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C1261970();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1 == 41154 && a2 == 0xA200000000000000;
  if (v8 || (sub_1C1266D50() & 1) != 0)
  {
  }

  else
  {
    v13[0] = a1;
    v13[1] = a2;
    sub_1C1261960();
    sub_1C0FDB9AC();
    v9 = sub_1C12667B0();
    v11 = v10;
    (*(v5 + 8))(v7, v4);
    a1 = sub_1C0FE3760(v9, v11);
  }

  return a1;
}

uint64_t sub_1C0FE28C8()
{
  v0 = sub_1C1262720();
  __swift_allocate_value_buffer(v0, qword_1EBE90688);
  __swift_project_value_buffer(v0, qword_1EBE90688);
  return sub_1C12626E0();
}

double sub_1C0FE292C()
{
  v0 = sub_1C1264510();
  sub_1C1264620();
  qword_1EDE9B5D8 = sub_1C12595B8;
  unk_1EDE9B5E0 = 0u;
  unk_1EDE9B5F0 = 0u;
  unk_1EDE9B600 = xmmword_1C12A3E40;
  qword_1EDE9B610 = v0;
  qword_1EDE9B618 = v1;
  byte_1EDE9B620 = 0;
  result = 0.0;
  xmmword_1EDE9B628 = xmmword_1C12A3E50;
  byte_1EDE9B638 = 0;
  qword_1EDE9B640 = 0x3FF0000000000000;
  return result;
}

__n128 sub_1C0FE29AC@<Q0>(uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = sub_1C12638E0();
  sub_1C0FE2A38(a2, a4, v12);
  v9 = v13;
  result = v12[0];
  v11 = v12[1];
  *a5 = v8;
  *(a5 + 8) = 0x4010000000000000;
  *(a5 + 16) = 0;
  *(a5 + 24) = result;
  *(a5 + 40) = v11;
  *(a5 + 56) = v9;
  return result;
}

double sub_1C0FE2A38@<D0>(uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v5 = a4;
  if (a4)
  {

    v5 = sub_1C12652F0();
  }

  if (a2)
  {
    sub_1C0FDB9AC();

    a2 = sub_1C12648F0();
    v9 = v8;
    v11 = v10;
    v13 = v12 & 1;
    sub_1C0FDB850(a2, v8, v12 & 1);
  }

  else
  {
    v9 = 0;
    v13 = 0;
    v11 = 0;
  }

  sub_1C0FDB860(a2, v9, v13, v11);

  sub_1C0FDB8A4(a2, v9, v13, v11);
  *a5 = v5;
  a5[1] = a2;
  a5[2] = v9;
  a5[3] = v13;
  a5[4] = v11;
  sub_1C0FDB8A4(a2, v9, v13, v11);

  return result;
}

uint64_t sub_1C0FE2B68(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90780, &qword_1C12A4520);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v16 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90768, &qword_1C12A44C8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v16 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90738, &qword_1C12A4498);
  if (a1)
  {
    (*(*(v10 - 8) + 16))(v9, v2, v10);
    *&v9[*(v7 + 36)] = a1;
    sub_1C0FE5654(v9, v6, &qword_1EBE90768, &qword_1C12A44C8);
    swift_storeEnumTagMultiPayload();
    sub_1C0FE531C();

    v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90770, &unk_1C12A44D0);
    v12 = sub_1C0FE5410();
    v16 = v11;
    v17 = v12;
    swift_getOpaqueTypeConformance2();
    sub_1C1263C20();
    return sub_1C0FD1A5C(v9, &qword_1EBE90768, &qword_1C12A44C8);
  }

  else
  {
    (*(*(v10 - 8) + 16))(v6, v2, v10);
    swift_storeEnumTagMultiPayload();
    sub_1C0FE531C();
    v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90770, &unk_1C12A44D0);
    v15 = sub_1C0FE5410();
    v16 = v14;
    v17 = v15;
    swift_getOpaqueTypeConformance2();
    return sub_1C1263C20();
  }
}

uint64_t sub_1C0FE2E1C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90710, &qword_1C12A4468);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v16 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90718, &unk_1C12A4470);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v16 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE906D8, &qword_1C12A4368);
  if (a1)
  {
    (*(*(v10 - 8) + 16))(v9, v2, v10);
    *&v9[*(v7 + 36)] = a1;
    sub_1C0FE5654(v9, v6, &qword_1EBE90718, &unk_1C12A4470);
    swift_storeEnumTagMultiPayload();
    sub_1C0FE4E94();

    v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE906D0, &qword_1C12A4360);
    v12 = sub_1C0FE4D5C();
    v16 = v11;
    v17 = v12;
    swift_getOpaqueTypeConformance2();
    sub_1C1263C20();
    return sub_1C0FD1A5C(v9, &qword_1EBE90718, &unk_1C12A4470);
  }

  else
  {
    (*(*(v10 - 8) + 16))(v6, v2, v10);
    swift_storeEnumTagMultiPayload();
    sub_1C0FE4E94();
    v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE906D0, &qword_1C12A4360);
    v15 = sub_1C0FE4D5C();
    v16 = v14;
    v17 = v15;
    swift_getOpaqueTypeConformance2();
    return sub_1C1263C20();
  }
}

uint64_t sub_1C0FE3124(char a1)
{
  sub_1C1266E90();
  MEMORY[0x1C68F07E0](a1 & 1);
  return sub_1C1266EE0();
}

uint64_t sub_1C0FE3174(uint64_t a1)
{
  v2 = *v1;
  sub_1C1266E90();
  sub_1C0FCF0B8(v4, v2);
  return sub_1C1266EE0();
}

uint64_t sub_1C0FE31B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  *a5 = sub_1C12638E0();
  *(a5 + 8) = 0x4010000000000000;
  *(a5 + 16) = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90870, &qword_1C12A4760);
  return sub_1C0FE3238(a1, a2, a3, a4 & 1, a5 + *(v10 + 44));
}

uint64_t sub_1C0FE3238@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v30 = a4;
  v31 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90878, &qword_1C12A4768);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v29[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v29[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90880, &qword_1C12A4770);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v29[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v29[-v18];

  v32 = sub_1C1265320();
  sub_1C1264DF0();

  v32 = sub_1C0FE3558(a1, a2, a3, v30 & 1);
  v33 = v20;
  sub_1C0FDB9AC();
  v21 = sub_1C12648F0();
  v23 = v22;
  v32 = v21;
  v33 = v22;
  LOBYTE(a1) = v24 & 1;
  v34 = v24 & 1;
  v35 = v25;
  sub_1C1264DF0();
  sub_1C0FDB8E8(v21, v23, a1);

  sub_1C0FE5654(v19, v16, &qword_1EBE90880, &qword_1C12A4770);
  sub_1C0FE5654(v13, v10, &qword_1EBE90878, &qword_1C12A4768);
  v26 = v31;
  sub_1C0FE5654(v16, v31, &qword_1EBE90880, &qword_1C12A4770);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90888, &qword_1C12A4778);
  sub_1C0FE5654(v10, v26 + *(v27 + 48), &qword_1EBE90878, &qword_1C12A4768);
  sub_1C0FD1A5C(v13, &qword_1EBE90878, &qword_1C12A4768);
  sub_1C0FD1A5C(v19, &qword_1EBE90880, &qword_1C12A4770);
  sub_1C0FD1A5C(v10, &qword_1EBE90878, &qword_1C12A4768);
  return sub_1C0FD1A5C(v16, &qword_1EBE90880, &qword_1C12A4770);
}

uint64_t sub_1C0FE3558(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = sub_1C1265E50();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C1265E30();
  MEMORY[0x1EEE9AC00](v9 - 8);
  sub_1C1265E20();
  sub_1C1265E10();
  v12[1] = a1;
  sub_1C1265E00();
  sub_1C1265E10();
  sub_1C1265E40();
  v10 = static String.photosSwiftUICoreLocalized(_:)(v8);
  (*(v6 + 8))(v8, v5);
  return v10;
}

uint64_t sub_1C0FE3760(uint64_t a1, unint64_t a2)
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

  v3 = a1;

  return v3;
}

void sub_1C0FE37B4()
{
  v2 = OUTLINED_FUNCTION_30_1();
  *v1 = v0;
  if (!v2)
  {
    OUTLINED_FUNCTION_15_8();
    sub_1C0FE4404();
    *v1 = v3;
  }
}

void sub_1C0FE37F0()
{
  v2 = OUTLINED_FUNCTION_30_1();
  *v1 = v0;
  if (!v2)
  {
    OUTLINED_FUNCTION_9_8();
    OUTLINED_FUNCTION_15_8();
    sub_1C0FE48B0();
    *v1 = v3;
  }
}

void sub_1C0FE3848()
{
  v2 = OUTLINED_FUNCTION_30_1();
  *v1 = v0;
  if (!v2)
  {
    OUTLINED_FUNCTION_4_9();
    OUTLINED_FUNCTION_15_8();
    sub_1C0FE49B0(v3, v4, v5, v6, v7, v8, v9);
    *v1 = v10;
  }
}

void sub_1C0FE3898()
{
  OUTLINED_FUNCTION_8_7();
  if (!(v2 ^ v3 | v1))
  {
    sub_1C0FE4404();
    *v0 = v4;
  }
}

void sub_1C0FE38CC()
{
  OUTLINED_FUNCTION_8_7();
  if (!(v2 ^ v3 | v1))
  {
    OUTLINED_FUNCTION_9_8();
    sub_1C0FE48B0();
    *v0 = v4;
  }
}

void sub_1C0FE391C()
{
  OUTLINED_FUNCTION_8_7();
  if (!(v2 ^ v3 | v1))
  {
    OUTLINED_FUNCTION_4_9();
    sub_1C0FE49B0(v4, v5, 1, v6, v7, v8, v9);
    *v0 = v10;
  }
}

uint64_t sub_1C0FE3964(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  *(v4 + 16) = result + 1;
  v5 = v4 + 16 * result;
  *(v5 + 32) = a2;
  *(v5 + 40) = a3;
  return result;
}

uint64_t sub_1C0FE39DC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 169))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C0FE3A1C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 168) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 169) = 1;
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

    *(result + 169) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C0FE3A94(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 112))
    {
      v3 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16) >> 1;
      if (v2 > 0x80000000)
      {
        v3 = ~v2;
      }

      else
      {
        v3 = -1;
      }
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_1C0FE3ADC(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 104) = 0;
    result = 0.0;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 112) = 1;
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
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 2 * -a2;
      result = 0.0;
      *(a1 + 24) = 0u;
      *(a1 + 40) = 0u;
      return result;
    }

    *(a1 + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1C0FE3B58()
{
  result = qword_1EDE772F8;
  if (!qword_1EDE772F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE906B8, &qword_1C12A3E78);
    sub_1C0FDB6D4(&qword_1EDE76BF8, &qword_1EBE906A8, &qword_1C12A3E68, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE772F8);
  }

  return result;
}

uint64_t sub_1C0FE3C10(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 56))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C0FE3C64(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1C0FE3CD0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      v3 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16) >> 1;
      if (v2 > 0x80000000)
      {
        v3 = ~v2;
      }

      else
      {
        v3 = -1;
      }
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_1C0FE3D18(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 56) = 1;
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
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 2 * -a2;
      result = 0.0;
      *(a1 + 24) = 0u;
      *(a1 + 40) = 0u;
      return result;
    }

    *(a1 + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C0FE3D88(uint64_t result, uint64_t a2)
{
  v2 = *(result + 40) & 1 | (a2 << 63);
  *(result + 16) &= 1uLL;
  *(result + 40) = v2;
  return result;
}

uint64_t sub_1C0FE3DB4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C0FE3DF4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C0FE3E54(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 184))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C0FE3E94(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 184) = 1;
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

    *(result + 184) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C0FE3F18(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 145))
    {
      v3 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32) >> 1;
      if (v2 > 0x80000000)
      {
        v3 = ~v2;
      }

      else
      {
        v3 = -1;
      }
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_1C0FE3F60(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 136) = 0;
    result = 0.0;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 144) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 145) = 1;
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
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
      *(a1 + 32) = 2 * -a2;
      result = 0.0;
      *(a1 + 40) = 0u;
      *(a1 + 56) = 0u;
      return result;
    }

    *(a1 + 145) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C0FE4040(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_16(a1, a2, a3, a4);
  OUTLINED_FUNCTION_3();
  v5 = OUTLINED_FUNCTION_18();
  v6(v5);
  return v4;
}

void sub_1C0FE40BC()
{
  OUTLINED_FUNCTION_18_5();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_2_4(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_6_8();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE907B8, &unk_1C12A4560);
      v7 = OUTLINED_FUNCTION_12_6(v6);
      OUTLINED_FUNCTION_1_7(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_7_8();
        sub_1C1109EC4(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE907C0, &unk_1C12A8C60);
    OUTLINED_FUNCTION_11_8(v11);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_10_9();
  if (!v4)
  {
    OUTLINED_FUNCTION_3_12();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1C0FE41A4()
{
  OUTLINED_FUNCTION_18_5();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_2_4(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_6_8();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE907F0, &unk_1C12A45A0);
      v7 = OUTLINED_FUNCTION_12_6(v6);
      OUTLINED_FUNCTION_1_7(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_7_8();
        sub_1C110215C(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_10_9();
  if (!v4)
  {
    OUTLINED_FUNCTION_3_12();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1C0FE4264()
{
  OUTLINED_FUNCTION_22_3();
  if (v3)
  {
    OUTLINED_FUNCTION_21_0();
    if (v5 != v6)
    {
      if (v4 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_20_6();
    }
  }

  else
  {
    v4 = v2;
  }

  sub_1C0FE4C60(*(v0 + 16), v4, &qword_1EBE907C8, &qword_1C12A4570, MEMORY[0x1E69E8450]);
  v7 = *(sub_1C1262610() - 8);
  if (v1)
  {
    v8 = OUTLINED_FUNCTION_23_0((*(v7 + 80) + 32) & ~*(v7 + 80));
    sub_1C1102184(v8, v9, v10);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_16_7();
  }
}

void sub_1C0FE4344()
{
  OUTLINED_FUNCTION_18_5();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_2_4(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_6_8();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90808, &qword_1C12BC2A0);
      v7 = OUTLINED_FUNCTION_12_6(v6);
      OUTLINED_FUNCTION_1_7(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_7_8();
        sub_1C1109EC4(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90810, &qword_1C12A45C0);
    OUTLINED_FUNCTION_11_8(v11);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_10_9();
  if (!v4)
  {
    OUTLINED_FUNCTION_3_12();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1C0FE4404()
{
  OUTLINED_FUNCTION_18_5();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_2_4(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_6_8();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE907E8, &unk_1C12A4590);
      v7 = OUTLINED_FUNCTION_12_6(v6);
      OUTLINED_FUNCTION_1_7(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_7_8();
        sub_1C1109EC4(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE90078, &qword_1C12A26B0);
    OUTLINED_FUNCTION_11_8(v11);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_10_9();
  if (!v4)
  {
    OUTLINED_FUNCTION_3_12();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1C0FE44C4()
{
  OUTLINED_FUNCTION_22_3();
  if (v3)
  {
    OUTLINED_FUNCTION_21_0();
    if (v5 != v6)
    {
      if (v4 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_20_6();
    }
  }

  else
  {
    v4 = v2;
  }

  sub_1C0FE4C60(*(v0 + 16), v4, &qword_1EBE90790, &qword_1C12A4530, type metadata accessor for PhotosInlinePlaybackCoordinator.DebugItem);
  v7 = *(type metadata accessor for PhotosInlinePlaybackCoordinator.DebugItem(0) - 8);
  if (v1)
  {
    v8 = OUTLINED_FUNCTION_23_0((*(v7 + 80) + 32) & ~*(v7 + 80));
    sub_1C110219C(v8, v9, v10);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_16_7();
  }
}

void sub_1C0FE45D4()
{
  OUTLINED_FUNCTION_18_5();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_2_4(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_6_8();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE907A0, &unk_1C12A4540);
      v7 = OUTLINED_FUNCTION_12_6(v6);
      OUTLINED_FUNCTION_1_7(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_7_8();
        sub_1C11021B4(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE907A8, &qword_1C12BC710);
    OUTLINED_FUNCTION_11_8(v11);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_10_9();
  if (!v4)
  {
    OUTLINED_FUNCTION_3_12();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1C0FE46E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(uint64_t, uint64_t, void *))
{
  v9 = a1;
  if ((a3 & 1) == 0)
  {
    v10 = a2;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_2_4();
  if (v11 == v12)
  {
LABEL_7:
    v13 = *(a4 + 16);
    if (v10 <= v13)
    {
      v14 = *(a4 + 16);
    }

    else
    {
      v14 = v10;
    }

    if (v14)
    {
      OUTLINED_FUNCTION_31_1(a1, a2, a3, a4, a5, a6);
      v15 = OUTLINED_FUNCTION_24_2();
      v16 = _swift_stdlib_malloc_size(v15);
      v15[2] = v13;
      v15[3] = 2 * ((v16 - 32) / 8);
      if (v9)
      {
LABEL_12:
        a7(a4 + 32, v13, v15 + 4);
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v15 = MEMORY[0x1E69E7CC0];
      if (v9)
      {
        goto LABEL_12;
      }
    }

    memcpy(v15 + 4, (a4 + 32), 8 * v13);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_10_9();
  if (!v11)
  {
    OUTLINED_FUNCTION_3_12();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1C0FE47C0()
{
  OUTLINED_FUNCTION_18_5();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_2_4(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_6_8();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90868, &qword_1C12B7480);
      v7 = OUTLINED_FUNCTION_12_6(v6);
      OUTLINED_FUNCTION_1_7(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_7_8();
        sub_1C11021DC(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_10_9();
  if (!v4)
  {
    OUTLINED_FUNCTION_3_12();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1C0FE48B0()
{
  OUTLINED_FUNCTION_25();
  if ((v5 & 1) == 0)
  {
    v9 = v4;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_2_4();
  if (v10 == v11)
  {
LABEL_7:
    v12 = *(v0 + 16);
    if (v9 <= v12)
    {
      v13 = *(v0 + 16);
    }

    else
    {
      v13 = v9;
    }

    if (v13)
    {
      OUTLINED_FUNCTION_31_1(v3, v4, v5, v6, v7, v8);
      v14 = swift_allocObject();
      v15 = _swift_stdlib_malloc_size(v14);
      v14[2] = v12;
      v14[3] = 2 * ((v15 - 32) / 40);
      if (v2)
      {
LABEL_12:
        v1(v0 + 32, v12, v14 + 4);
        *(v0 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v14 = MEMORY[0x1E69E7CC0];
      if (v2)
      {
        goto LABEL_12;
      }
    }

    OUTLINED_FUNCTION_29();
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_10_9();
  if (!v10)
  {
    OUTLINED_FUNCTION_3_12();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1C0FE49B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(uint64_t, uint64_t, void *))
{
  v9 = a1;
  if ((a3 & 1) == 0)
  {
    v10 = a2;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_2_4();
  if (v11 == v12)
  {
LABEL_7:
    v13 = *(a4 + 16);
    if (v10 <= v13)
    {
      v14 = *(a4 + 16);
    }

    else
    {
      v14 = v10;
    }

    if (v14)
    {
      OUTLINED_FUNCTION_31_1(a1, a2, a3, a4, a5, a6);
      v15 = OUTLINED_FUNCTION_24_2();
      _swift_stdlib_malloc_size(v15);
      OUTLINED_FUNCTION_14_10();
      v15[2] = v13;
      v15[3] = v16;
      if (v9)
      {
LABEL_12:
        a7(a4 + 32, v13, v15 + 4);
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v15 = MEMORY[0x1E69E7CC0];
      if (v9)
      {
        goto LABEL_12;
      }
    }

    memcpy(v15 + 4, (a4 + 32), 16 * v13);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_10_9();
  if (!v11)
  {
    OUTLINED_FUNCTION_3_12();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1C0FE4A80()
{
  OUTLINED_FUNCTION_22_3();
  if (v3)
  {
    OUTLINED_FUNCTION_21_0();
    if (v5 != v6)
    {
      if (v4 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_20_6();
    }
  }

  else
  {
    v4 = v2;
  }

  sub_1C0FE4C60(*(v0 + 16), v4, &qword_1EBE907D8, &qword_1C12A4580, MEMORY[0x1E6980908]);
  v7 = *(sub_1C12642B0() - 8);
  if (v1)
  {
    v8 = OUTLINED_FUNCTION_23_0((*(v7 + 80) + 32) & ~*(v7 + 80));
    sub_1C1102224(v8, v9, v10);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_16_7();
  }
}

void *sub_1C0FE4B88(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v6 = OUTLINED_FUNCTION_24_2();
  _swift_stdlib_malloc_size(v6);
  OUTLINED_FUNCTION_14_10();
  v6[2] = a1;
  v6[3] = v7;
  return v6;
}

void *sub_1C0FE4BE8(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92360, &qword_1C12A3BB0);
  v4 = OUTLINED_FUNCTION_24_2();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = (2 * ((v5 - 32) / 8)) | 1;
  return v4;
}

void *sub_1C0FE4C60(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v11);
  if (v9)
  {
    if ((result - v10) != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1C0FE4D5C()
{
  result = qword_1EDE774A0;
  if (!qword_1EDE774A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE906D0, &qword_1C12A4360);
    sub_1C0FDB6D4(qword_1EDE79BF8, &qword_1EBE906E8, &qword_1C12A4378, &unk_1C12C9510);
    sub_1C0FDB6D4(&qword_1EDE7B930, &qword_1EBE933F0, &qword_1C12A43F0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE774A0);
  }

  return result;
}

unint64_t sub_1C0FE4E40()
{
  result = qword_1EBE90708;
  if (!qword_1EBE90708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE90708);
  }

  return result;
}

unint64_t sub_1C0FE4E94()
{
  result = qword_1EDE773A8;
  if (!qword_1EDE773A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90718, &unk_1C12A4470);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE906D0, &qword_1C12A4360);
    sub_1C0FE4D5C();
    swift_getOpaqueTypeConformance2();
    sub_1C0FDB6D4(&qword_1EDE7BA50, &qword_1EBE904B8, &unk_1C12A3E30, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE773A8);
  }

  return result;
}

uint64_t sub_1C0FE4F88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((a6 & 0x8000000000000000) == 0)
  {

    v6 = vars8;
  }
}

unint64_t sub_1C0FE4FCC()
{
  result = qword_1EDE7B2D0[0];
  if (!qword_1EDE7B2D0[0])
  {
    type metadata accessor for PhotosDynamicText(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDE7B2D0);
  }

  return result;
}

unint64_t sub_1C0FE5024()
{
  result = qword_1EDE77150;
  if (!qword_1EDE77150)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90740, &qword_1C12A44A0);
    sub_1C0FE50DC();
    sub_1C0FDB6D4(&qword_1EDE7B950, &unk_1EBE91DD0, &unk_1C12AC500, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77150);
  }

  return result;
}

unint64_t sub_1C0FE50DC()
{
  result = qword_1EDE77268;
  if (!qword_1EDE77268)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90750, &qword_1C12A44B0);
    sub_1C0FE5194();
    sub_1C0FDB6D4(&qword_1EDE7B968, &qword_1EBE90778, &unk_1C12A44E0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77268);
  }

  return result;
}

unint64_t sub_1C0FE5194()
{
  result = qword_1EDE77450;
  if (!qword_1EDE77450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90758, &qword_1C12A44B8);
    sub_1C0FE524C();
    sub_1C0FDB6D4(&unk_1EDE7B8F0, &unk_1EBE91DC0, &qword_1C12AA0A0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77450);
  }

  return result;
}

unint64_t sub_1C0FE524C()
{
  result = qword_1EDE76EC0;
  if (!qword_1EDE76EC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90760, &qword_1C12A44C0);
    sub_1C0FE531C();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90770, &unk_1C12A44D0);
    sub_1C0FE5410();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE76EC0);
  }

  return result;
}

unint64_t sub_1C0FE531C()
{
  result = qword_1EDE773A0;
  if (!qword_1EDE773A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90768, &qword_1C12A44C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90770, &unk_1C12A44D0);
    sub_1C0FE5410();
    swift_getOpaqueTypeConformance2();
    sub_1C0FDB6D4(&qword_1EDE7BA50, &qword_1EBE904B8, &unk_1C12A3E30, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE773A0);
  }

  return result;
}

unint64_t sub_1C0FE5410()
{
  result = qword_1EDE773B8;
  if (!qword_1EDE773B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90770, &unk_1C12A44D0);
    sub_1C0FDB6D4(&qword_1EDE7B930, &qword_1EBE933F0, &qword_1C12A43F0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE773B8);
  }

  return result;
}

unint64_t sub_1C0FE54C8()
{
  result = qword_1EDE76F10;
  if (!qword_1EDE76F10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90728, &qword_1C12A4488);
    sub_1C0FE4FCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE76F10);
  }

  return result;
}

double sub_1C0FE5554(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((a6 & 0x8000000000000000) == 0)
  {

    v6 = vars8;
  }

  return result;
}

uint64_t sub_1C0FE5594(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotosDynamicText(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C0FE55F8(uint64_t a1)
{
  v2 = type metadata accessor for PhotosDynamicText(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C0FE5654(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_16(a1, a2, a3, a4);
  OUTLINED_FUNCTION_3();
  v5 = OUTLINED_FUNCTION_18();
  v6(v5);
  return v4;
}

unint64_t sub_1C0FE56A0()
{
  result = qword_1EDE7A3A0[0];
  if (!qword_1EDE7A3A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDE7A3A0);
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1C0FE5808(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 25))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C0FE585C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_1C0FE58C4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 32))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C0FE5918(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_1C0FE597C()
{
  result = qword_1EDE79248;
  if (!qword_1EDE79248)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90848, &qword_1C12A4698);
    sub_1C0FDB6D4(qword_1EDE79250, &qword_1EBE906C0, &unk_1C12A4350, &protocol conformance descriptor for PhotosCollectionAdditionalInfoButton<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE79248);
  }

  return result;
}

unint64_t sub_1C0FE5A2C()
{
  result = qword_1EDE77270;
  if (!qword_1EDE77270)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90700, &qword_1C12A4460);
    sub_1C0FE5AE4();
    sub_1C0FDB6D4(&qword_1EDE7B968, &qword_1EBE90778, &unk_1C12A44E0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77270);
  }

  return result;
}

unint64_t sub_1C0FE5AE4()
{
  result = qword_1EDE77458;
  if (!qword_1EDE77458)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE906F8, &qword_1C12A4428);
    sub_1C0FE5B9C();
    sub_1C0FDB6D4(&unk_1EDE7B8F0, &unk_1EBE91DC0, &qword_1C12AA0A0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77458);
  }

  return result;
}