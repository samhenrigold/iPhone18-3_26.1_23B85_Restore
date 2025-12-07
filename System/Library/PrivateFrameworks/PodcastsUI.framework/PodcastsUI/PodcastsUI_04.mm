uint64_t sub_21B407AB4()
{
  v2 = *v1;
  *(*v1 + 368) = v0;

  if (v0)
  {
    (*(v2[20] + 8))(v2[21], v2[19]);
    v3 = sub_21B407DE8;
  }

  else
  {
    v3 = sub_21B407BE0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_21B407BE0()
{
  v1 = *(v0 + 376);
  if (v1 == 2)
  {
    v2 = *(v0 + 200);
    v3 = *(v0 + 184);
    v4 = *(v0 + 176);
    (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));
    (*(v3 + 8))(v2, v4);

    v5 = *(v0 + 8);
    v6 = *(v0 + 377);

    return v5(v6);
  }

  else
  {
    *(v0 + 377) &= v1 & 1;
    v8 = sub_21B3F1314(&qword_27CD86E10, &qword_27CD86D88, &qword_21B4D3108, MEMORY[0x277CBCE50]);
    v9 = swift_task_alloc();
    *(v0 + 360) = v9;
    *v9 = v0;
    v9[1] = sub_21B407AB4;
    v10 = *(v0 + 152);

    return MEMORY[0x282200308](v0 + 376, v10, v8);
  }
}

uint64_t sub_21B407DE8()
{
  (*(v0[23] + 8))(v0[25], v0[22]);

  v1 = v0[1];

  return v1(0);
}

void sub_21B407EF4(char *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86D70, &qword_21B4D30D0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v24 - v7;
  v9 = sub_21B4C5E78();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [objc_allocWithZone(MEMORY[0x277CBE428]) initWithEntityName_];
  sub_21B3F12CC(0, &qword_2811FCA90, 0x277D3DB38);
  v14 = sub_21B4C9FA8();
  v26 = v1;
  if (v1)
  {

    return;
  }

  v15 = v14;
  v32 = v9;
  if (v14 >> 62)
  {
    goto LABEL_21;
  }

  v16 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v24 = v13;
  v25 = a1;
  if (v16)
  {
LABEL_5:
    v29 = v12;
    v12 = 0;
    v30 = v15 & 0xFFFFFFFFFFFFFF8;
    v31 = v15 & 0xC000000000000001;
    v27 = v10;
    v28 = (v10 + 48);
    v13 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v31)
      {
        v18 = MEMORY[0x21CEF3AB0](v12, v15);
        a1 = (v12 + 1);
        if (__OFADD__(v12, 1))
        {
          goto LABEL_19;
        }
      }

      else
      {
        if (v12 >= *(v30 + 16))
        {
          goto LABEL_20;
        }

        v18 = *(v15 + 8 * v12 + 32);
        a1 = (v12 + 1);
        if (__OFADD__(v12, 1))
        {
LABEL_19:
          __break(1u);
LABEL_20:
          __break(1u);
LABEL_21:
          v16 = sub_21B4CA4B8();
          v24 = v13;
          v25 = a1;
          if (!v16)
          {
            break;
          }

          goto LABEL_5;
        }
      }

      v19 = v15;
      v20 = v16;
      v21 = v18;
      sub_21B4CA108();
      v10 = v5;
      sub_21B40AA00(v5, v8);

      if ((*v28)(v8, 1, v32) == 1)
      {
        sub_21B3F2D94(v8, &qword_27CD86D70, &qword_21B4D30D0);
      }

      else
      {
        sub_21B40AAF0(v8, v29, MEMORY[0x277D3D488]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_21B3F21A0(0, v13[2] + 1, 1, v13);
        }

        v23 = v13[2];
        v22 = v13[3];
        if (v23 >= v22 >> 1)
        {
          v13 = sub_21B3F21A0((v22 > 1), v23 + 1, 1, v13);
        }

        v13[2] = v23 + 1;
        sub_21B40AAF0(v29, v13 + ((v27[80] + 32) & ~v27[80]) + *(v27 + 9) * v23, MEMORY[0x277D3D488]);
      }

      v16 = v20;
      ++v12;
      v17 = a1 == v20;
      v15 = v19;
      v5 = v10;
      if (v17)
      {
        goto LABEL_23;
      }
    }
  }

  v13 = MEMORY[0x277D84F90];
LABEL_23:

  *v25 = v13;
}

uint64_t sub_21B4082A8(uint64_t *a1)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD869B0, &qword_21B4D3150);
  sub_21B3F1314(&qword_2811FCE28, &qword_27CD869B0, &qword_21B4D3150, MEMORY[0x277D83970]);
  return sub_21B4C7658();
}

uint64_t sub_21B408350(void *a1)
{
  sub_21B3F12CC(0, &qword_2811FCA90, 0x277D3DB38);

  sub_21B4CA118();
  sub_21B381210();
  sub_21B381264();
  v1 = sub_21B4C9668();

  return v1 & 1;
}

uint64_t sub_21B408400(uint64_t a1, void *a2)
{
  v3 = a2[3];
  v4 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v3);
  (*(v4 + 8))(a1, v3, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD86E20, &qword_21B4D2A30);
  sub_21B3F1314(&qword_281200598, &unk_27CD86E20, &qword_21B4D2A30, MEMORY[0x277CBCD90]);
  sub_21B4C7828();
}

uint64_t sub_21B40867C(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_21B408724;

  return sub_21B406F38();
}

uint64_t sub_21B408724(char a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *(*v2 + 16);
  v8 = *v2;

  v9 = *(v5 + 24);
  if (v3)
  {
    v10 = sub_21B4C55C8();

    (*(v9 + 16))(v9, 0, v10);
  }

  else
  {
    (*(v9 + 16))(v9, a1 & 1, 0);
  }

  _Block_release(*(v6 + 24));
  v11 = *(v8 + 8);

  return v11();
}

uint64_t ObjCArtworkProvider.ArtworkBridgingError.hashValue.getter()
{
  v1 = *v0;
  sub_21B4CA6E8();
  MEMORY[0x21CEF3E40](v1);
  return sub_21B4CA738();
}

id ObjCArtworkProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ObjCArtworkProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ObjCArtworkProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_21B408A70@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = ObjCArtworkProvider.__allocating_init(asPartOf:)(a1);
  *a2 = result;
  return result;
}

id sub_21B408A98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = a4;
  v7 = type metadata accessor for LibraryImageProvider(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21B4C6E18();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ObjCArtworkProvider();
  v15 = objc_allocWithZone(v14);
  (*(v11 + 16))(v13, a1, v10);
  sub_21B3944F0(a3, v9, type metadata accessor for LibraryImageProvider);
  v24[3] = v10;
  v24[4] = MEMORY[0x277D3D870];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v24);
  (*(v11 + 32))(boxed_opaque_existential_1, v13, v10);
  v23[3] = v7;
  v23[4] = &protocol witness table for LibraryImageProvider;
  v17 = __swift_allocate_boxed_opaque_existential_1(v23);
  sub_21B40AAF0(v9, v17, type metadata accessor for LibraryImageProvider);
  *&v15[OBJC_IVAR___PUIObjCArtworkProvider_backingCache] = a2;
  sub_21B3F821C(v24, &v15[OBJC_IVAR___PUIObjCArtworkProvider_bucketingStrategy]);
  sub_21B3F821C(v23, &v15[OBJC_IVAR___PUIObjCArtworkProvider_backingProvider]);
  *&v15[OBJC_IVAR___PUIObjCArtworkProvider_managedObjectContext] = v21;
  v22.receiver = v15;
  v22.super_class = v14;
  v18 = objc_msgSendSuper2(&v22, sel_init);
  sub_21B36F060(a3, type metadata accessor for LibraryImageProvider);
  (*(v11 + 8))(a1, v10);
  __swift_destroy_boxed_opaque_existential_1(v23);
  __swift_destroy_boxed_opaque_existential_1(v24);
  return v18;
}

id sub_21B408D08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v22[3] = a6;
  v22[4] = a8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v22);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_1, a1, a6);
  v21[3] = a7;
  v21[4] = a9;
  v17 = __swift_allocate_boxed_opaque_existential_1(v21);
  (*(*(a7 - 8) + 32))(v17, a3, a7);
  *&a5[OBJC_IVAR___PUIObjCArtworkProvider_backingCache] = a2;
  sub_21B3F821C(v22, &a5[OBJC_IVAR___PUIObjCArtworkProvider_bucketingStrategy]);
  sub_21B3F821C(v21, &a5[OBJC_IVAR___PUIObjCArtworkProvider_backingProvider]);
  *&a5[OBJC_IVAR___PUIObjCArtworkProvider_managedObjectContext] = a4;
  v20.receiver = a5;
  v20.super_class = type metadata accessor for ObjCArtworkProvider();
  v18 = objc_msgSendSuper2(&v20, sel_init);
  __swift_destroy_boxed_opaque_existential_1(v21);
  __swift_destroy_boxed_opaque_existential_1(v22);
  return v18;
}

id sub_21B408E4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v25 = a4;
  v26 = a8;
  v24 = a2;
  v13 = *(a7 - 8);
  MEMORY[0x28223BE20](a1);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v23 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = objc_allocWithZone(type metadata accessor for ObjCArtworkProvider());
  (*(v17 + 16))(v20, a1, a6);
  (*(v13 + 16))(v15, a3, a7);
  return sub_21B408D08(v20, v24, v15, v25, v21, a6, a7, v26, a9);
}

unint64_t sub_21B408FF0()
{
  result = qword_2812006A0;
  if (!qword_2812006A0)
  {
    type metadata accessor for PreparedArtworkRequest(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812006A0);
  }

  return result;
}

unint64_t sub_21B409094()
{
  result = qword_27CD86E18;
  if (!qword_27CD86E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD86E18);
  }

  return result;
}

uint64_t dispatch thunk of ObjCArtworkProvider.artwork(for:size:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  v14 = *((*MEMORY[0x277D85000] & *v6) + 0x90);
  v19 = (v14 + *v14);
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_21B40AB5C;
  v16.n128_f64[0] = a5;
  v17.n128_f64[0] = a6;

  return v19(a1, a2, a3, a4, v16, v17);
}

uint64_t dispatch thunk of ObjCArtworkProvider.artwork(for:size:)(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v10 = *((*MEMORY[0x277D85000] & *v4) + 0x98);
  v15 = (v10 + *v10);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_21B40AB5C;
  v12.n128_f64[0] = a3;
  v13.n128_f64[0] = a4;

  return v15(a1, a2, v12, v13);
}

uint64_t dispatch thunk of ObjCArtworkProvider.keyedArtwork(for:size:)(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v10 = *((*MEMORY[0x277D85000] & *v4) + 0xA0);
  v15 = (v10 + *v10);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_21B409598;
  v12.n128_f64[0] = a3;
  v13.n128_f64[0] = a4;

  return v15(a1, a2, v12, v13);
}

uint64_t sub_21B409598(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *v3;

  v7 = *(v9 + 8);

  return v7(a1, a2, a3);
}

uint64_t dispatch thunk of ObjCArtworkProvider.artworkPath(for:size:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7)
{
  v16 = *((*MEMORY[0x277D85000] & *v7) + 0xA8);
  v21 = (v16 + *v16);
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_21B40AB58;
  v18.n128_f64[0] = a6;
  v19.n128_f64[0] = a7;

  return v21(a1, a2, a3, a4, a5, v18, v19);
}

uint64_t dispatch thunk of ObjCArtworkProvider.artworkPath(for:size:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v12 = *((*MEMORY[0x277D85000] & *v5) + 0xB0);
  v17 = (v12 + *v12);
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_21B40998C;
  v14.n128_f64[0] = a4;
  v15.n128_f64[0] = a5;

  return v17(a1, a2, a3, v14, v15);
}

uint64_t sub_21B40998C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t dispatch thunk of ObjCArtworkProvider.artwork(forPodcast:size:)(uint64_t a1, double a2, double a3)
{
  v8 = *((*MEMORY[0x277D85000] & *v3) + 0xC8);
  v13 = (v8 + *v8);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_21B40AB5C;
  v10.n128_f64[0] = a2;
  v11.n128_f64[0] = a3;

  return v13(a1, v10, v11);
}

uint64_t dispatch thunk of ObjCArtworkProvider.artwork(forURL:size:)(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v10 = *((*MEMORY[0x277D85000] & *v4) + 0xD0);
  v15 = (v10 + *v10);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_21B40AB5C;
  v12.n128_f64[0] = a3;
  v13.n128_f64[0] = a4;

  return v15(a1, a2, v12, v13);
}

uint64_t dispatch thunk of ObjCArtworkProvider.placeholder(with:)(double a1, double a2)
{
  v6 = *((*MEMORY[0x277D85000] & *v2) + 0xD8);
  v11 = (v6 + *v6);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21B409EB8;
  v8.n128_f64[0] = a1;
  v9.n128_f64[0] = a2;

  return v11(v8, v9);
}

uint64_t sub_21B409EB8(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t dispatch thunk of ObjCArtworkProvider.migrateLibraryArtworkFromImageStore()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0xF8);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_21B409EB8;

  return v5();
}

uint64_t getEnumTagSinglePayload for ObjCArtworkProvider.ArtworkBridgingError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ObjCArtworkProvider.ArtworkBridgingError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_21B40A224()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_21B40AB58;

  return sub_21B40867C(v2, v3);
}

uint64_t sub_21B40A2D0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = *(v0 + 4);
  v5 = *(v0 + 5);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_21B40AB58;

  return sub_21B4060C0(v4, v5, v2, v3);
}

uint64_t sub_21B40A390()
{
  v2 = *(v0 + 2);
  v3 = v0[3];
  v4 = v0[4];
  v6 = *(v0 + 5);
  v5 = *(v0 + 6);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_21B40AB58;

  return sub_21B405C30(v2, v6, v5, v3, v4);
}

uint64_t sub_21B40A458()
{
  v2 = *(v0 + 2);
  v3 = v0[3];
  v4 = v0[4];
  v6 = *(v0 + 5);
  v5 = *(v0 + 6);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_21B40AB58;

  return sub_21B404CBC(v2, v6, v5, v3, v4);
}

uint64_t sub_21B40A520()
{
  v2 = *(v0 + 2);
  v3 = v0[3];
  v4 = v0[4];
  v6 = *(v0 + 5);
  v5 = *(v0 + 6);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_21B40998C;

  return sub_21B40389C(v2, v6, v5, v3, v4);
}

uint64_t sub_21B40A5E8()
{
  v2 = *(v0 + 2);
  v3 = v0[3];
  v4 = v0[4];
  v5 = *(v0 + 5);
  v6 = *(v0 + 6);
  v7 = *(v0 + 7);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_21B40AB58;

  return sub_21B402C58(v2, v5, v6, v7, v3, v4);
}

uint64_t sub_21B40A6C0()
{
  v2 = *(v0 + 2);
  v3 = v0[3];
  v4 = v0[4];
  v6 = *(v0 + 5);
  v5 = *(v0 + 6);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_21B40AB58;

  return sub_21B401EEC(v2, v6, v5, v3, v4);
}

uint64_t objectdestroy_69Tm()
{
  _Block_release(*(v0 + 40));

  return swift_deallocObject();
}

uint64_t sub_21B40A7D0()
{
  v2 = *(v0 + 2);
  v3 = v0[3];
  v4 = v0[4];
  v6 = *(v0 + 5);
  v5 = *(v0 + 6);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_21B40AB58;

  return sub_21B401820(v2, v6, v5, v3, v4);
}

uint64_t objectdestroy_114Tm()
{
  _Block_release(*(v0 + 48));

  return swift_deallocObject();
}

uint64_t sub_21B40A8E8()
{
  v2 = *(v0 + 2);
  v3 = v0[3];
  v4 = v0[4];
  v5 = *(v0 + 5);
  v6 = *(v0 + 6);
  v7 = *(v0 + 7);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_21B40AB58;

  return sub_21B400D14(v2, v5, v6, v7, v3, v4);
}

uint64_t objectdestroy_45Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_21B40AA00(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86D70, &qword_21B4D30D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_21B40AA7C()
{
  result = qword_27CD86E30;
  if (!qword_27CD86E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD86E30);
  }

  return result;
}

uint64_t sub_21B40AAF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

id ObjCArtworkProvider.existingRepresentation(for:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86E60, &unk_21B4D39D0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v27 - v3;
  v5 = sub_21B4C5748();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21B40C0F8(a1);
  if (!v10)
  {
    return 0;
  }

  v11 = v9;
  v12 = v10;
  [a1 scaledFittingSize];
  if (v14 == *MEMORY[0x277CD5650] && v13 == *(MEMORY[0x277CD5650] + 8))
  {
    v17 = *MEMORY[0x277D3DD40];
    v19 = *MEMORY[0x277D3DD40];
  }

  else
  {
    [a1 scaledFittingSize];
    v17 = v16;
    v19 = v18;
  }

  sub_21B4C5718();
  if ((*(v6 + 48))(v4, 1, v5) != 1)
  {
    (*(v6 + 32))(v8, v4, v5);
    v20 = sub_21B4C5608();
    (*(v6 + 8))(v8, v5);
    if ((v20 & 1) == 0)
    {
      goto LABEL_13;
    }

    return 0;
  }

  sub_21B40C1F4(v4);
LABEL_13:
  v22 = sub_21B403BB8(v11, v12, v17);
  v23 = objc_allocWithZone(MEMORY[0x277D3DB70]);
  v24 = sub_21B4C96C8();

  v25 = [v23 initWithArtworkIdentifier_];

  v26 = [objc_opt_self() representationForVisualIdentity:v25 withSize:v22 image:{v17, v19}];
  return v26;
}

uint64_t ObjCArtworkProvider.loadRepresentation(for:)(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = sub_21B4C64F8();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86E60, &unk_21B4D39D0);
  v2[13] = swift_task_alloc();
  v4 = sub_21B4C5748();
  v2[14] = v4;
  v2[15] = *(v4 - 8);
  v2[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21B40AFE8, 0, 0);
}

uint64_t sub_21B40AFE8()
{
  v1 = sub_21B40C0F8(*(v0 + 64));
  *(v0 + 136) = v1;
  *(v0 + 144) = v2;
  if (v2)
  {
    v3 = v1;
    v4 = v2;
    [*(v0 + 64) scaledFittingSize];
    if (v6 == *MEMORY[0x277CD5650] && v5 == *(MEMORY[0x277CD5650] + 8))
    {
      v9 = *MEMORY[0x277D3DD40];
      v11 = *MEMORY[0x277D3DD40];
    }

    else
    {
      [*(v0 + 64) scaledFittingSize];
      v9 = v8;
      v11 = v10;
    }

    *(v0 + 152) = v9;
    *(v0 + 160) = v11;
    v15 = *(v0 + 112);
    v16 = *(v0 + 120);
    v17 = *(v0 + 104);
    sub_21B4C5718();
    if ((*(v16 + 48))(v17, 1, v15) == 1)
    {
      sub_21B40C1F4(*(v0 + 104));
LABEL_18:
      v24 = swift_task_alloc();
      *(v0 + 184) = v24;
      *v24 = v0;
      v24[1] = sub_21B40B580;

      return sub_21B40100C(v3, v4, v9, v11);
    }

    (*(*(v0 + 120) + 32))(*(v0 + 128), *(v0 + 104), *(v0 + 112));
    if ((sub_21B4C5608() & 1) == 0)
    {
      (*(*(v0 + 120) + 8))(*(v0 + 128), *(v0 + 112));
      goto LABEL_18;
    }

    v18 = *(v0 + 72);
    sub_21B40B8F0(v9, v11);
    v19 = (v18 + OBJC_IVAR___PUIObjCArtworkProvider_backingProvider);
    v21 = *(v18 + OBJC_IVAR___PUIObjCArtworkProvider_backingProvider + 24);
    v20 = v19[4];
    __swift_project_boxed_opaque_existential_1(v19, v21);
    v22 = swift_task_alloc();
    *(v0 + 168) = v22;
    *v22 = v0;
    v22[1] = sub_21B40B2D4;
    v23 = *(v0 + 96);

    return ImageProvider.load(request:)(v23, v21, v20);
  }

  else
  {
    sub_21B40C25C();
    swift_allocError();
    *v12 = 0;
    swift_willThrow();

    v13 = *(v0 + 8);

    return v13();
  }
}

uint64_t sub_21B40B2D4(uint64_t a1)
{
  v3 = *v2;
  v3[2] = v2;
  v3[3] = a1;
  v3[4] = v1;
  v3[22] = v1;

  if (v1)
  {

    v4 = sub_21B40B838;
  }

  else
  {
    v4 = sub_21B40B3F8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_21B40B3F8()
{
  v2 = *(v0 + 15);
  v1 = *(v0 + 16);
  v3 = *(v0 + 14);
  (*(*(v0 + 11) + 8))(*(v0 + 12), *(v0 + 10));
  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 3);
  v6 = v0[19];
  v5 = v0[20];
  v7 = objc_allocWithZone(MEMORY[0x277D3DB70]);
  v8 = v4;
  v9 = sub_21B4C96C8();

  v10 = [v7 initWithArtworkIdentifier_];

  v11 = objc_opt_self();
  v12 = v10;
  v13 = [v11 representationForVisualIdentity:v12 withSize:v8 image:{v6, v5}];

  v14 = *(v0 + 1);

  return v14(v13);
}

uint64_t sub_21B40B580(uint64_t a1)
{
  v3 = *v2;
  v3[5] = v2;
  v3[6] = a1;
  v3[7] = v1;
  v4 = *v2;

  if (v1)
  {

    v5 = v4[1];

    return v5();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_21B40B6E8, 0, 0);
  }
}

uint64_t sub_21B40B6E8()
{
  v1 = *(v0 + 6);
  v3 = v0[19];
  v2 = v0[20];
  v4 = objc_allocWithZone(MEMORY[0x277D3DB70]);
  v5 = v1;
  v6 = sub_21B4C96C8();

  v7 = [v4 initWithArtworkIdentifier_];

  v8 = objc_opt_self();
  v9 = v7;
  v10 = [v8 representationForVisualIdentity:v9 withSize:v5 image:{v3, v2}];

  v11 = *(v0 + 1);

  return v11(v10);
}

uint64_t sub_21B40B838()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];
  (*(v0[11] + 8))(v0[12], v0[10]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_21B40B8F0(double a1, double a2)
{
  v2 = sub_21B4C6A48();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86B98, &qword_21B4D3090);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v10 - v4;
  v6 = sub_21B4C5D78();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_21B4C5E78();
  MEMORY[0x28223BE20](v7 - 8);
  sub_21B4C5658();
  v12 = xmmword_21B4D1CE0;
  v13 = 0u;
  memset(v14, 0, sizeof(v14));
  sub_21B4C5D48();
  sub_21B4C61C8();
  sub_21B4C5E68();
  v8 = sub_21B4C72A8();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  sub_21B4C6A28();
  return sub_21B4C6478();
}

uint64_t sub_21B40BD14(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_21B404D98;

  return ObjCArtworkProvider.loadRepresentation(for:)(v6);
}

id ObjCArtworkProvider.visualIdenticalityIdentifier(for:)(void *a1)
{
  sub_21B40C0F8(a1);
  v2 = v1;
  if (v1)
  {
    v3 = objc_allocWithZone(MEMORY[0x277D3DB70]);
    v4 = sub_21B4C96C8();

    v2 = [v3 initWithArtworkIdentifier_];
  }

  return v2;
}

double ObjCArtworkProvider.existingArtworkEffectResult(for:catalog:options:)@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  if (a1 == 1 && (v4 = sub_21B40C2B0(a2)) != 0)
  {
    v5 = v4;
    v6 = [objc_allocWithZone(MEMORY[0x277CD5FC8]) init];
    [v6 setBackgroundColor_];
    a3[3] = sub_21B40C3D0();

    *a3 = v6;
  }

  else
  {
    a3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86E70, &qword_21B4D8470);
    v8 = swift_allocObject();
    *a3 = v8;
    result = 0.0;
    *(v8 + 16) = 0u;
    *(v8 + 32) = 0u;
  }

  return result;
}

void *sub_21B40C0F8(void *a1)
{
  v2 = [a1 token];
  sub_21B4CA278();
  swift_unknownObjectRelease();
  if (swift_dynamicCast())
  {
    return v6;
  }

  v4 = [a1 token];
  sub_21B4CA278();
  swift_unknownObjectRelease();
  sub_21B4C5C88();
  if (!swift_dynamicCast())
  {
    return 0;
  }

  v5 = sub_21B4C5C78();

  return v5;
}

uint64_t sub_21B40C1F4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86E60, &unk_21B4D39D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21B40C25C()
{
  result = qword_27CD86E68;
  if (!qword_27CD86E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD86E68);
  }

  return result;
}

id sub_21B40C2B0(void *a1)
{
  v2 = [a1 token];
  sub_21B4CA278();
  swift_unknownObjectRelease();
  if (swift_dynamicCast())
  {
  }

  else
  {
    v3 = [a1 token];
    sub_21B4CA278();
    swift_unknownObjectRelease();
    sub_21B4C5C88();
    if (swift_dynamicCast())
    {
      v4 = sub_21B4C5C68();
      if (v4)
      {
        v5 = v4;
        v6 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithCGColor_];

        return v6;
      }
    }
  }

  return 0;
}

unint64_t sub_21B40C3D0()
{
  result = qword_27CD86E78;
  if (!qword_27CD86E78)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CD86E78);
  }

  return result;
}

uint64_t sub_21B40C41C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_21B40998C;

  return sub_21B40BD14(v2, v3, v4);
}

uint64_t LibraryImageProvider.init(caches:taskImageSource:imageStore:resizer:workQueue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  sub_21B3715D8(a1, a6, type metadata accessor for AssetCaches);
  v11 = type metadata accessor for LibraryImageProvider(0);
  v12 = v11[5];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86E48, &unk_21B4D34A0);
  v14 = *(v13 - 8);
  (*(v14 + 16))(a6 + v12, a2, v13);
  *(a6 + v11[7]) = a3;
  sub_21B3F821C(a4, a6 + v11[6]);
  *(a6 + v11[8]) = a5;
  v15 = a3;
  v16 = a5;
  v17 = MEMORY[0x277D84F90];
  v18 = sub_21B3719E0(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86E50, &qword_21B4D3460);
  v19 = swift_allocObject();
  *(v19 + 24) = 0;
  *(v19 + 16) = v18;
  *(a6 + v11[9]) = v19;
  v20 = sub_21B36EE90(v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86E58, &qword_21B4D34B0);
  v21 = swift_allocObject();
  *(v21 + 24) = 0;

  __swift_destroy_boxed_opaque_existential_1(a4);
  (*(v14 + 8))(a2, v13);
  sub_21B36F0C0(a1, type metadata accessor for AssetCaches);
  *(v21 + 16) = v20;

  *(a6 + v11[10]) = v21;
  return result;
}

uint64_t LibraryImageProvider.taskImageSource.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LibraryImageProvider(0) + 20);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86E48, &unk_21B4D34A0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t LibraryImageProvider.resizer.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for LibraryImageProvider(0) + 24);

  return sub_21B3F821C(v3, a1);
}

id LibraryImageProvider.imageStore.getter()
{
  v1 = *(v0 + *(type metadata accessor for LibraryImageProvider(0) + 28));

  return v1;
}

id LibraryImageProvider.workQueue.getter()
{
  v1 = *(v0 + *(type metadata accessor for LibraryImageProvider(0) + 32));

  return v1;
}

void sub_21B40C828(os_unfair_lock_s *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  os_unfair_lock_lock(a1 + 10);
  sub_21B40C898(&a1[4], a2, a3, v4);

  os_unfair_lock_unlock(a1 + 10);
}

void sub_21B40C898(uint64_t *a1, const char *a2, uint64_t a3, int a4)
{
  LODWORD(v39) = a4;
  v40 = a2;
  v6 = sub_21B4C7408();
  v38 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21B4C7388();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21B4C73F8();
  MEMORY[0x28223BE20](v13);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1)
  {
    v33 = v6;
    v34 = v15;
    v35 = v14;
    v36 = v10;
    v37 = v9;
    v18 = a1[2];
    v32 = a1[1];
    sub_21B4C73A8();

    v19 = sub_21B4C73C8();
    sub_21B4C7438();
    v31 = sub_21B4C9E48();
    if ((sub_21B4CA148() & 1) == 0)
    {
LABEL_6:
      swift_bridgeObjectRelease_n();

      (*(v36 + 8))(v12, v37);
      (*(v34 + 8))(v17, v35);
LABEL_15:
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
      return;
    }

    v30 = v19;
    if ((v39 & 1) == 0)
    {

      v20 = v33;
      if (!v40)
      {
        __break(1u);
        goto LABEL_6;
      }

LABEL_11:
      v39 = v4;

      sub_21B4C7468();

      v21 = v38;
      if ((*(v38 + 11))(v8, v20) == *MEMORY[0x277D85B00])
      {
        v22 = 0;
        v23 = 0;
        v38 = "[Error] Interval already ended";
      }

      else
      {
        (*(v21 + 1))(v8, v20);
        v38 = "[identifier=%{name=identifier}s] CANCEL";
        v23 = 2;
        v22 = 1;
      }

      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v41 = v25;
      *v24 = v23;
      *(v24 + 1) = v22;
      *(v24 + 2) = 2080;

      v26 = sub_21B36CF74(v32, v18, &v41);

      *(v24 + 4) = v26;
      v27 = sub_21B4C7368();
      v28 = v30;
      _os_signpost_emit_with_name_impl(&dword_21B365000, v30, v31, v27, v40, v38, v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v25);
      MEMORY[0x21CEF5710](v25, -1, -1);
      MEMORY[0x21CEF5710](v24, -1, -1);

      (*(v36 + 8))(v12, v37);
      (*(v34 + 8))(v17, v35);
      goto LABEL_15;
    }

    v20 = v33;
    if (v40 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v40 & 0xFFFFF800) == 0xD800)
      {
LABEL_19:
        __break(1u);
        return;
      }

      if (v40 >> 16 <= 0x10)
      {

        v40 = &v41;
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_19;
  }
}

uint64_t LibraryImageProviderError.hashValue.getter()
{
  v1 = *v0;
  sub_21B4CA6E8();
  MEMORY[0x21CEF3E40](v1);
  return sub_21B4CA738();
}

unint64_t sub_21B40CDC4()
{
  result = qword_27CD86F08;
  if (!qword_27CD86F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD86F08);
  }

  return result;
}

unint64_t sub_21B40CE28(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87018, &qword_21B4D3760);
    v3 = sub_21B4CA4E8();
    v4 = a1 + 32;

    while (1)
    {
      sub_21B36C7AC(v4, &v11, &qword_27CD87020, &unk_21B4D4290);
      v5 = v11;
      result = sub_21B3FABEC(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_21B36EE80(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_21B40CF50(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87010, &qword_21B4D3758);
    v3 = sub_21B4CA4E8();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_21B3FABEC(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + result) = v5;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_21B40D040(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87000, &qword_21B4D3748);
    v3 = sub_21B4CA4E8();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      sub_21B40D9F4(v7, v8);
      result = sub_21B36CEF8(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_21B40D158(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87680, &qword_21B4D3718);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86FD8, &qword_21B4D3720);
    v7 = sub_21B4CA4E8();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_21B36C7AC(v9, v5, &qword_27CD87680, &qword_21B4D3718);
      result = sub_21B3FACA0(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_21B4C6A48();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86E48, &unk_21B4D34A0);
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v13, &v5[v8], v17);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_21B40D384(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86F98, &qword_21B4D36D0);
    v3 = sub_21B4CA4E8();
    v4 = a1 + 32;

    while (1)
    {
      sub_21B36C7AC(v4, &v13, &qword_27CD86FA0, &qword_21B4D36D8);
      v5 = v13;
      v6 = v14;
      result = sub_21B36CEF8(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_21B36EE80(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_21B40D4B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86F20, &unk_21B4D6860);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86F28, &qword_21B4D3660);
    v7 = sub_21B4CA4E8();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_21B36C7AC(v9, v5, &qword_27CD86F20, &unk_21B4D6860);
      result = sub_21B3FAD74(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_21B4C5EC8();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_21B40D69C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86FC8, &qword_21B4D3708);
    v3 = sub_21B4CA4E8();

    for (i = (a1 + 48); ; i += 2)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v13 = *i;

      result = sub_21B36CEF8(v5, v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      *(v3[7] + 16 * result) = v13;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_21B40D7B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86F38, &qword_21B4D3670);
    v3 = sub_21B4CA4E8();

    for (i = (a1 + 56); ; i += 32)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      result = sub_21B36CEF8(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = v3[7] + 16 * result;
      *v12 = v7;
      *(v12 + 8) = v8;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_21B40D8CC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86F40, &qword_21B4D3678);
    v3 = sub_21B4CA4E8();
    v4 = a1 + 32;

    while (1)
    {
      sub_21B36C7AC(v4, &v11, &qword_27CD86F48, &qword_21B4D3680);
      v5 = v11;
      result = sub_21B391BE4(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_21B36EE80(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_21B40D9F4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_21B40DA08(a1, a2);
  }

  return a1;
}

uint64_t sub_21B40DA08(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_21B40DA5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PreparedArtworkRequest(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t StoreImageContentProvider.domain.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD87610, &unk_21B4D37E0);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t StoreImageContentProvider.init(asPartOf:)@<X0>(void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86E48, &unk_21B4D34A0);
  v3 = type metadata accessor for StoreImageContentProvider(0);
  sub_21B4C8808();
  type metadata accessor for AssetCaches(0);
  sub_21B4C8808();
  sub_21B375E2C();
  v4 = sub_21B4C9D98();

  *(a2 + *(v3 + 24)) = v4;
  return result;
}

uint64_t StoreImageContentProvider.init(source:assetCaches:workQueue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for StoreImageContentProvider(0);
  v9 = *(v8 + 20);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86E48, &unk_21B4D34A0);
  (*(*(v10 - 8) + 32))(a4 + v9, a1, v10);
  result = sub_21B40E990(a2, a4, type metadata accessor for AssetCaches);
  *(a4 + *(v8 + 24)) = a3;
  return result;
}

uint64_t type metadata accessor for StoreImageContentProvider(uint64_t a1)
{
  result = qword_27CD87120;
  if (!qword_27CD87120)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t StoreImageContentProvider.content(for:)(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD870E0, &qword_21B4D3838);
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87030, &qword_21B4D3770);
  v3[10] = v5;
  v3[11] = *(v5 - 8);
  v3[12] = swift_task_alloc();
  v6 = sub_21B4C64F8();
  v3[13] = v6;
  v3[14] = *(v6 - 8);
  v3[15] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87038, &qword_21B4D3778);
  v3[16] = v7;
  v3[17] = *(v7 - 8);
  v3[18] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD870E8, &qword_21B4D3840);
  v3[19] = v8;
  v3[20] = *(v8 - 8);
  v3[21] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD870F0, &qword_21B4D3848);
  v3[22] = v9;
  v3[23] = *(v9 - 8);
  v3[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD870F8, &unk_21B4D3850);
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21B40DFF8, 0, 0);
}

uint64_t sub_21B40DFF8(uint64_t a1)
{
  v22 = *(v1 + 192);
  v24 = *(v1 + 176);
  v25 = *(v1 + 184);
  v23 = *(v1 + 160);
  v21 = *(v1 + 152);
  v19 = *(v1 + 168);
  v20 = *(v1 + 136);
  v2 = *(v1 + 120);
  v18 = *(v1 + 128);
  v3 = *(v1 + 112);
  v15 = *(v1 + 104);
  v5 = *(v1 + 88);
  v4 = *(v1 + 96);
  v16 = *(v1 + 80);
  v17 = *(v1 + 144);
  sub_21B4C61C8();
  _s10PodcastsUI22PreparedArtworkRequestV4with6formatAC0A10Foundation0D6FormatO_tF_0();
  type metadata accessor for StoreImageContentProvider(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86E48, &unk_21B4D34A0);
  sub_21B3F1314(&qword_2811FD588, &qword_27CD86E48, &unk_21B4D34A0, MEMORY[0x277D3D5C0]);
  sub_21B4C6218();
  (*(v3 + 8))(v2, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD87610, &unk_21B4D37E0);
  sub_21B4C5DD8();
  v6 = sub_21B4C5DB8();
  (*(v5 + 8))(v4, v16);
  *(v1 + 16) = v6;
  *(v1 + 232) = 4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD870A0, &qword_21B4D49F0);
  sub_21B3F1314(&qword_2811FD548, &qword_27CD87038, &qword_21B4D3778, MEMORY[0x277D3D650]);
  sub_21B384178();
  sub_21B4C68F8();

  (*(v20 + 8))(v17, v18);
  sub_21B3F1314(&qword_27CD87100, &qword_27CD870E8, &qword_21B4D3840, MEMORY[0x277D3D838]);
  sub_21B4C6918();
  (*(v23 + 8))(v19, v21);
  v7 = sub_21B4C7178();
  (*(v25 + 8))(v22, v24);
  *(v1 + 24) = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87108, qword_21B4D3860);
  v9 = sub_21B3F1314(&qword_2811FD2A0, &qword_27CD87108, qword_21B4D3860, MEMORY[0x277CBCD90]);
  MEMORY[0x21CEF0FE0](v8, v9);

  v10 = swift_task_alloc();
  *(v1 + 216) = v10;
  v11 = sub_21B3F1314(&qword_27CD87110, &qword_27CD870E0, &qword_21B4D3838, MEMORY[0x277CBCE58]);
  *v10 = v1;
  v10[1] = sub_21B40E418;
  v12 = *(v1 + 208);
  v13 = *(v1 + 56);

  return MEMORY[0x28219E218](v12, v13, v11);
}

uint64_t sub_21B40E418()
{
  v2 = *v1;
  *(*v1 + 224) = v0;

  (*(v2[8] + 8))(v2[9], v2[7]);
  if (v0)
  {
    v3 = sub_21B40E794;
  }

  else
  {
    v3 = sub_21B40E55C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_21B40E55C()
{
  v1 = v0[25];
  sub_21B40E860(v0[26], v1);
  v2 = sub_21B4C6368();
  v3 = (*(*(v2 - 8) + 48))(v1, 1, v2);
  v4 = v0[25];
  v5 = v0[26];
  if (v3 == 1)
  {
    sub_21B40E8D0(v0[25]);
    v6 = sub_21B4C6808();
    sub_21B40E938(v6, v7);
    swift_allocError();
    (*(*(v6 - 8) + 104))(v8, *MEMORY[0x277D3D700], v6);
    swift_willThrow();
    sub_21B40E8D0(v5);
  }

  else
  {
    v10 = v0[4];
    sub_21B40E8D0(v0[26]);
    sub_21B40E990(v4, v10, MEMORY[0x277D3D5D0]);
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_21B40E794()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21B40E860(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD870F8, &unk_21B4D3850);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21B40E8D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD870F8, &unk_21B4D3850);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21B40E938(uint64_t a1, uint64_t a2)
{
  result = qword_27CD87118;
  if (!qword_27CD87118)
  {
    sub_21B4C6808();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD87118);
  }

  return result;
}

uint64_t sub_21B40E990(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21B40E9F8@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD87610, &unk_21B4D37E0);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_21B40EA6C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21B40AB58;

  return StoreImageContentProvider.content(for:)(a1, a2);
}

uint64_t sub_21B40EB14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_21B40998C;

  return MEMORY[0x28219DD20](a1, a2, a3, a4);
}

void sub_21B40EC00(uint64_t a1)
{
  type metadata accessor for AssetCaches(319);
  if (v1 <= 0x3F)
  {
    sub_21B36C12C(319);
    if (v2 <= 0x3F)
    {
      sub_21B375E2C();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t StoreLibraryMultiplexingImageProvider.init(storeProvider:libraryProvider:artworkLoaderProvider:compositeProvider:sizeBucketingStrategy:caches:)(void *a1, void *a2, void *a3, void *a4, void *a5, uint64_t a6)
{
  v13 = sub_21B4C73F8();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v18 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21B3F821C(a1, v6 + 16);
  sub_21B3F821C(a2, v6 + 56);
  sub_21B3F821C(a3, v6 + 96);
  sub_21B3F821C(a4, v6 + 136);
  sub_21B3F821C(a5, v6 + 176);
  sub_21B36ED6C(a6, v6 + OBJC_IVAR____TtC10PodcastsUI37StoreLibraryMultiplexingImageProvider_assetCaches);
  sub_21B4C73A8();
  sub_21B36F0C0(a6, type metadata accessor for AssetCaches);
  __swift_destroy_boxed_opaque_existential_1(a5);
  __swift_destroy_boxed_opaque_existential_1(a4);
  __swift_destroy_boxed_opaque_existential_1(a3);
  __swift_destroy_boxed_opaque_existential_1(a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  (*(v14 + 32))(v6 + OBJC_IVAR____TtC10PodcastsUI37StoreLibraryMultiplexingImageProvider_signposter, v16, v13);
  return v6;
}

void sub_21B40EEE4(os_unfair_lock_s *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  os_unfair_lock_lock(a1 + 10);
  sub_21B40EF54(&a1[4], a2, a3, v4);

  os_unfair_lock_unlock(a1 + 10);
}

void sub_21B40EF54(uint64_t *a1, const char *a2, uint64_t a3, int a4)
{
  LODWORD(v39) = a4;
  v40 = a2;
  v6 = sub_21B4C7408();
  v38 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21B4C7388();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21B4C73F8();
  MEMORY[0x28223BE20](v13);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1)
  {
    v33 = v6;
    v34 = v15;
    v35 = v14;
    v36 = v10;
    v37 = v9;
    v18 = a1[2];
    v32 = a1[1];
    sub_21B4C73A8();

    v19 = sub_21B4C73C8();
    sub_21B4C7438();
    v31 = sub_21B4C9E48();
    if ((sub_21B4CA148() & 1) == 0)
    {
LABEL_6:
      swift_bridgeObjectRelease_n();

      (*(v36 + 8))(v12, v37);
      (*(v34 + 8))(v17, v35);
LABEL_15:
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
      return;
    }

    v30 = v19;
    if ((v39 & 1) == 0)
    {

      v20 = v33;
      if (!v40)
      {
        __break(1u);
        goto LABEL_6;
      }

LABEL_11:
      v39 = v4;

      sub_21B4C7468();

      v21 = v38;
      if ((*(v38 + 11))(v8, v20) == *MEMORY[0x277D85B00])
      {
        v22 = 0;
        v23 = 0;
        v38 = "[Error] Interval already ended";
      }

      else
      {
        (*(v21 + 1))(v8, v20);
        v38 = "[identifier=%{name=identifier}s] CANCEL";
        v23 = 2;
        v22 = 1;
      }

      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v41 = v25;
      *v24 = v23;
      *(v24 + 1) = v22;
      *(v24 + 2) = 2080;

      v26 = sub_21B36CF74(v32, v18, &v41);

      *(v24 + 4) = v26;
      v27 = sub_21B4C7368();
      v28 = v30;
      _os_signpost_emit_with_name_impl(&dword_21B365000, v30, v31, v27, v40, v38, v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v25);
      MEMORY[0x21CEF5710](v25, -1, -1);
      MEMORY[0x21CEF5710](v24, -1, -1);

      (*(v36 + 8))(v12, v37);
      (*(v34 + 8))(v17, v35);
      goto LABEL_15;
    }

    v20 = v33;
    if (v40 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v40 & 0xFFFFF800) == 0xD800)
      {
LABEL_19:
        __break(1u);
        return;
      }

      if (v40 >> 16 <= 0x10)
      {

        v40 = &v41;
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_19;
  }
}

char *StoreLibraryMultiplexingImageProvider.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  __swift_destroy_boxed_opaque_existential_1(v0 + 17);
  __swift_destroy_boxed_opaque_existential_1(v0 + 22);
  sub_21B36F0C0(&v0[OBJC_IVAR____TtC10PodcastsUI37StoreLibraryMultiplexingImageProvider_assetCaches], type metadata accessor for AssetCaches);
  v1 = OBJC_IVAR____TtC10PodcastsUI37StoreLibraryMultiplexingImageProvider_signposter;
  v2 = sub_21B4C73F8();
  (*(*(v2 - 8) + 8))(&v0[v1], v2);
  return v0;
}

uint64_t StoreLibraryMultiplexingImageProvider.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  __swift_destroy_boxed_opaque_existential_1(v0 + 17);
  __swift_destroy_boxed_opaque_existential_1(v0 + 22);
  sub_21B36F0C0(&v0[OBJC_IVAR____TtC10PodcastsUI37StoreLibraryMultiplexingImageProvider_assetCaches], type metadata accessor for AssetCaches);
  v1 = OBJC_IVAR____TtC10PodcastsUI37StoreLibraryMultiplexingImageProvider_signposter;
  v2 = sub_21B4C73F8();
  (*(*(v2 - 8) + 8))(&v0[v1], v2);

  return swift_deallocClassInstance();
}

uint64_t sub_21B40F570@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (result)
  {
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_21B40F5C0()
{
  result = qword_281200348;
  if (!qword_281200348)
  {
    sub_21B4C5748();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281200348);
  }

  return result;
}

__n128 AnalyzedColor.init(color:)@<Q0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v6 = Color.color.getter(a1, a2);
  AnalyzedColor.init(color:)(&v9, v6);
  sub_21B40F788(a1, v3);
  v7 = *&v9.referenceX;
  *(a3 + 32) = *&v9.coordinates.y;
  *(a3 + 48) = v7;
  *(a3 + 64) = v9.referenceZ;
  result = *&v9.RGB.blue;
  *a3 = *&v9.RGB.red;
  *(a3 + 16) = result;
  return result;
}

void __swiftcall AnalyzedColor.init(color:)(PodcastsUI::AnalyzedColor *__return_ptr retstr, UIColor color)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v13 = 0.0;
  v14[0] = 0.0;
  v12 = 0.0;
  [(objc_class *)color.super.isa getRed:v14 green:&v13 blue:&v12 alpha:0];
  v5 = v13;
  v4 = v14[0];
  v6 = v12;
  v7 = sub_21B40F8A4(v14[0], v13, v12);
  v9 = v8;
  v11 = v10;

  retstr->RGB.red = v4;
  retstr->RGB.green = v5;
  retstr->RGB.blue = v6;
  retstr->coordinates.x = v7;
  retstr->coordinates.y = v9;
  retstr->coordinates.z = v11;
  *&retstr->referenceX = xmmword_21B4D39E0;
  retstr->referenceZ = 108.883;
}

void sub_21B40F788(id a1, char a2)
{
  if (a2 == 1)
  {
  }
}

BOOL AnalyzedColor.isDark.getter()
{
  v1 = *(v0 + 32) / *(v0 + 56);
  if (v1 <= 0.008856)
  {
    v2 = v1 * 7.78703704 + 0.137931034;
  }

  else
  {
    v2 = pow(v1, 0.333333333);
  }

  return v2 * 116.0 + -16.0 < 50.0;
}

uint64_t AnalyzedColor.suggestedInterfaceStyle.getter()
{
  v1 = *(v0 + 32) / *(v0 + 56);
  if (v1 <= 0.008856)
  {
    v2 = v1 * 7.78703704 + 0.137931034;
  }

  else
  {
    v2 = pow(v1, 0.333333333);
  }

  if (v2 * 116.0 + -16.0 >= 65.0)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

double sub_21B40F8A4(double a1, double a2, double a3)
{
  if (a1 > 0.04045)
  {
    v5 = pow((a1 + 0.055) / 1.055, 2.4);
    if (a2 <= 0.04045)
    {
      goto LABEL_3;
    }

LABEL_6:
    v6 = pow((a2 + 0.055) / 1.055, 2.4);
    if (a3 <= 0.04045)
    {
      goto LABEL_4;
    }

LABEL_7:
    v7 = pow((a3 + 0.055) / 1.055, 2.4);
    return v5 * 100.0 * 0.412453 + v6 * 100.0 * 0.35758 + v7 * 100.0 * 0.180423;
  }

  v5 = a1 / 12.95;
  if (a2 > 0.04045)
  {
    goto LABEL_6;
  }

LABEL_3:
  v6 = a2 / 12.95;
  if (a3 > 0.04045)
  {
    goto LABEL_7;
  }

LABEL_4:
  v7 = a3 / 12.95;
  return v5 * 100.0 * 0.412453 + v6 * 100.0 * 0.35758 + v7 * 100.0 * 0.180423;
}

uint64_t sub_21B40FA38(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 72))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21B40FA58(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
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

  *(result + 72) = v3;
  return result;
}

uint64_t ArtworkContent.imageData()()
{
  v1 = v0;
  v2 = sub_21B4C5748();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21B4C6368();
  MEMORY[0x28223BE20](v6);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21B388318(v1, v8);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return *v8;
  }

  (*(v3 + 32))(v5, v8, v2);
  v9 = [objc_opt_self() defaultManager];
  sub_21B4C5708();
  v10 = sub_21B4C96C8();

  v11 = [v9 contentsAtPath_];

  if (v11)
  {
    v12 = sub_21B4C5788();
  }

  else
  {
    v12 = 0;
  }

  (*(v3 + 8))(v5, v2);
  return v12;
}

uint64_t ArtworkModel.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v98 = a3;
  v104 = a2;
  v4 = 0x6574616C706D6574;
  v96 = sub_21B4C5D78();
  v95 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v97 = v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_21B4C72A8();
  v92 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v85 = v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86B98, &qword_21B4D3090);
  MEMORY[0x28223BE20](v7 - 8);
  v89 = v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v90 = v79 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87148, &unk_21B4D3AB0);
  MEMORY[0x28223BE20](v11 - 8);
  v94 = v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v101 = v79 - v14;
  v15 = sub_21B4C85C8();
  v102 = *(v15 - 8);
  v103 = v15;
  MEMORY[0x28223BE20](v15);
  v87 = v79 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_21B4C8518();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v88 = v79 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v86 = v79 - v21;
  MEMORY[0x28223BE20](v22);
  v100 = v79 - v23;
  MEMORY[0x28223BE20](v24);
  v26 = v79 - v25;
  MEMORY[0x28223BE20](v27);
  v29 = v79 - v28;
  MEMORY[0x28223BE20](v30);
  v32 = v79 - v31;
  v33 = 0xE800000000000000;
  sub_21B4C8528();
  v91 = sub_21B4C8508();
  v35 = v34;
  v37 = *(v18 + 8);
  v36 = (v18 + 8);
  v38 = v32;
  v39 = v17;
  v40 = v37;
  v37(v38, v39);
  v108 = v37;
  if (!v35)
  {
    goto LABEL_5;
  }

  v99 = v35;
  v4 = 0x6874646977;
  v33 = 0xE500000000000000;
  sub_21B4C8528();
  v84 = sub_21B4C84F8();
  v42 = v41;
  v40(v29, v39);
  if (v42 & 1) != 0 || (v4 = 0x746867696568, v33 = 0xE600000000000000, sub_21B4C8528(), v43 = sub_21B4C84F8(), v45 = v44, v40(v26, v39), (v45))
  {

LABEL_5:
    v46 = sub_21B4C94E8();
    sub_21B4107C0();
    swift_allocError();
    v48 = v47;
    v49 = sub_21B4C5E78();
    *v48 = v4;
    v48[1] = v33;
    v48[2] = v49;
    (*(*(v46 - 8) + 104))(v48, *MEMORY[0x277D22530], v46);
    swift_willThrow();
    (*(v102 + 8))(v104, v103);
    return v108(a1, v39);
  }

  v79[1] = v43;
  v51 = v100;
  sub_21B4C8528();
  v83 = a1;
  v52 = v36;
  v53 = v39;
  v54 = *(v102 + 16);
  v55 = v87;
  v57 = v103;
  v56 = v104;
  v54(v87, v104, v103);
  sub_21B410818();
  sub_21B4C8A88();
  v82 = v105;
  v81 = v106;
  sub_21B4C8528();
  v54(v55, v56, v57);
  ArtworkTextColors.init(tryDeserializing:using:)(v51, v55, v107);
  v58 = v86;
  sub_21B4C8528();
  v59 = sub_21B4C8508();
  v61 = v60;
  v86 = v53;
  v87 = v52;
  v108(v58, v53);
  v62 = v108;
  if (v61)
  {
    v80 = MEMORY[0x21CEEF5D0](v59, v61);
  }

  else
  {
    v80 = 4;
  }

  v63 = v95;
  v64 = v92;
  v65 = v90;
  v66 = v89;
  v67 = v88;
  sub_21B4C8528();
  sub_21B4C8508();
  v69 = v68;
  v62(v67, v86);
  if (v69)
  {
    sub_21B4C7288();
    v70 = v96;
    v71 = v101;
    v72 = v93;
  }

  else
  {
    v72 = v93;
    (*(v64 + 56))(v65, 1, 1, v93);
    v70 = v96;
    v71 = v101;
  }

  sub_21B36C7AC(v65, v66, &qword_27CD86B98, &qword_21B4D3090);
  if ((*(v64 + 48))(v66, 1, v72) == 1)
  {
    sub_21B3F2D94(v65, &qword_27CD86B98, &qword_21B4D3090);
    (*(v63 + 56))(v71, 1, 1, v70);
  }

  else
  {
    v73 = v66;
    v74 = v65;
    v75 = v85;
    (*(v64 + 32))(v85, v73, v72);
    sub_21B4C5D58();
    (*(v63 + 56))(v71, 0, 1, v70);
    (*(v64 + 8))(v75, v72);
    sub_21B3F2D94(v74, &qword_27CD86B98, &qword_21B4D3090);
  }

  v76 = v100;
  sub_21B4C8528();
  sub_21B4C8508();
  v108(v76, v86);
  v77 = v94;
  sub_21B36C7AC(v71, v94, &qword_27CD87148, &unk_21B4D3AB0);
  v78 = *(v63 + 48);
  if (v78(v77, 1, v70) == 1)
  {
    sub_21B4C5D48();
    if (v78(v77, 1, v70) != 1)
    {
      sub_21B3F2D94(v77, &qword_27CD87148, &unk_21B4D3AB0);
    }
  }

  else
  {
    (*(v63 + 32))(v97, v77, v70);
  }

  sub_21B4C61C8();
  sub_21B4C5E68();
  (*(v102 + 8))(v104, v103);
  v108(v83, v86);
  return sub_21B3F2D94(v101, &qword_27CD87148, &unk_21B4D3AB0);
}

unint64_t sub_21B4107C0()
{
  result = qword_2811FCE98;
  if (!qword_2811FCE98)
  {
    sub_21B4C94E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811FCE98);
  }

  return result;
}

unint64_t sub_21B410818()
{
  result = qword_2811FD480;
  if (!qword_2811FD480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811FD480);
  }

  return result;
}

uint64_t ArtworkModel.init(composite:width:height:backgroundColor:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v49 = a3;
  v48 = a2;
  v50 = a4;
  v7 = sub_21B4C5D78();
  MEMORY[0x28223BE20](v7 - 8);
  v42[1] = v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86E60, &unk_21B4D39D0);
  MEMORY[0x28223BE20](v9 - 8);
  v44 = v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v43 = v42 - v12;
  MEMORY[0x28223BE20](v13);
  v45 = v42 - v14;
  v15 = sub_21B4C5E78();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_21B4C64F8();
  v19 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v21 = v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = a1;
  v22 = *(a1 + 16);
  v46 = v16;
  v47 = v15;
  if (v22)
  {
    *&v54 = MEMORY[0x277D84F90];
    sub_21B3F2BE0(0, v22, 0);
    v23 = v54;
    v24 = v51 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
    v52 = *(v16 + 72);
    do
    {
      sub_21B38F550(v24, v18);
      ArtworkModel.preferredRequest.getter(v21);
      sub_21B38F79C(v18);
      *&v54 = v23;
      v26 = *(v23 + 16);
      v25 = *(v23 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_21B3F2BE0((v25 > 1), v26 + 1, 1);
        v23 = v54;
      }

      *(v23 + 16) = v26 + 1;
      (*(v19 + 32))(v23 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v26, v21, v53);
      v24 += v52;
      --v22;
    }

    while (v22);
  }

  else
  {

    v23 = MEMORY[0x277D84F90];
  }

  sub_21B4C53B8();
  swift_allocObject();
  sub_21B4C53A8();
  *&v54 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86A58, &qword_21B4D2840);
  sub_21B3F2C24();
  v27 = sub_21B4C5398();
  v29 = v28;

  sub_21B4C5E28();
  v30 = v43;
  sub_21B4C5718();

  v31 = sub_21B4C5748();
  v32 = *(v31 - 8);
  v33 = *(v32 + 48);
  v34 = v33(v30, 1, v31);
  v52 = v27;
  v53 = v29;
  if (v34 == 1)
  {
    sub_21B3F2D94(v30, &qword_27CD86E60, &unk_21B4D39D0);
    v35 = 1;
    v36 = v45;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86A68, &qword_21B4D2848);
    sub_21B4C5468();
    *(swift_allocObject() + 16) = xmmword_21B4D2830;
    sub_21B4C5E38();
    sub_21B4C5778();
    sub_21B4C5448();

    v36 = v45;
    sub_21B4C5738();

    (*(v32 + 8))(v30, v31);
    v35 = 0;
  }

  v37 = v44;
  (*(v32 + 56))(v36, v35, 1, v31);
  sub_21B36C7AC(v36, v37, &qword_27CD86E60, &unk_21B4D39D0);
  if (v33(v37, 1, v31) == 1)
  {
    sub_21B3F2D94(v36, &qword_27CD86E60, &unk_21B4D39D0);
    sub_21B36D4F4(v52, v53);
    sub_21B4118E0(v48, v49);
    sub_21B3F2D94(v37, &qword_27CD86E60, &unk_21B4D39D0);
    v38 = 1;
    v39 = v50;
  }

  else
  {
    sub_21B4C5658();
    (*(v32 + 8))(v37, v31);
    v54 = xmmword_21B4D1CE0;
    v55 = 0u;
    memset(v56, 0, sizeof(v56));
    sub_21B4C5D48();
    sub_21B4C61C8();
    v40 = v50;
    sub_21B4C5E68();
    sub_21B36D4F4(v52, v53);
    sub_21B4118E0(v48, v49);
    sub_21B3F2D94(v36, &qword_27CD86E60, &unk_21B4D39D0);
    v39 = v40;
    v38 = 0;
  }

  return (*(v46 + 56))(v39, v38, 1, v47);
}

uint64_t ArtworkModel.config(_:mode:format:crop:retainAspectRatio:)(uint64_t a1, int a2, _BYTE *a3, char a4, double a5, double a6)
{
  v37 = a3;
  v38 = a2;
  v36 = a2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86B98, &qword_21B4D3090);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v35[-v12];
  v14 = sub_21B4C72A8();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v35[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = sub_21B4C66C8();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v35[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_21B4C5E58();
  (*(v19 + 104))(v21, *MEMORY[0x277D3D6C8], v18);
  CGSize.fitting(_:mode:aspectRule:)(a1, v21, a5, a6);
  v23 = v22;
  v25 = v24;
  (*(v19 + 8))(v21, v18);
  v26 = [objc_opt_self() mainScreen];
  [v26 scale];
  v28 = v27;

  if (v36 == 4)
  {
    v38 = *(v6 + *(sub_21B4C5E78() + 52));
  }

  v29 = *v6;
  v30 = v6[1];
  sub_21B36C7AC(v37, v13, &qword_27CD86B98, &qword_21B4D3090);
  v31 = *(v15 + 48);
  if (v31(v13, 1, v14) == 1)
  {
    sub_21B4C5E78();
    v37 = v13;

    v32 = v37;
    sub_21B4C5D68();
    if (v31(v32, 1, v14) != 1)
    {
      sub_21B3F2D94(v32, &qword_27CD86B98, &qword_21B4D3090);
    }
  }

  else
  {
    (*(v15 + 32))(v17, v13, v14);
  }

  type metadata accessor for LegacyArtworkLoaderConfig(0);
  v33 = swift_allocObject();
  *(v33 + 16) = v29;
  *(v33 + 24) = v30;
  *(v33 + 32) = floor(v23);
  *(v33 + 40) = floor(v25);
  *(v33 + 48) = v38;
  (*(v15 + 32))(v33 + OBJC_IVAR____TtC10PodcastsUI25LegacyArtworkLoaderConfig_crop, v17, v14);
  *(v33 + OBJC_IVAR____TtC10PodcastsUI25LegacyArtworkLoaderConfig_scale) = v28;
  *(v33 + OBJC_IVAR____TtC10PodcastsUI25LegacyArtworkLoaderConfig_retainAspectRatio) = a4 & 1;
  return v33;
}

uint64_t ArtworkModel.joeColors(where:)(uint64_t (*a1)(void), uint64_t a2)
{
  v6 = *(v2 + 64);
  v34 = a2;
  if (v6 == 255)
  {
    v36 = a1;
  }

  else
  {
    v7 = v2;
    v8 = Color.color.getter(*(v2 + 56), v6);
    v9 = a2;
    v10 = a1();
    if (v3)
    {

      return v9;
    }

    if (v10)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87158, &qword_21B4DC310);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_21B4D3B00;
      *(v9 + 32) = v8;
      return v9;
    }

    v36 = a1;

    v2 = v7;
  }

  v37 = *(v2 + 72);
  v38[0] = *(v2 + 80);
  v39 = *(v2 + 88);
  v40 = *(v2 + 96);
  v41 = *(v2 + 104);
  v42 = *(v2 + 112);
  v43 = *(v2 + 120);
  v44 = *(v2 + 128);
  v11 = MEMORY[0x277D84F90];
  v45 = MEMORY[0x277D84F90];
  sub_21B4118F4(v37, v38[0]);
  sub_21B4118F4(v39, v40);
  sub_21B4118F4(v41, v42);
  sub_21B4118F4(v43, v44);
  v12 = 0;
  v13 = v11;
LABEL_9:
  if (v12 <= 4)
  {
    v14 = 4;
  }

  else
  {
    v14 = v12;
  }

  v15 = v14 + 1;
  v16 = &v38[16 * v12];
  while (1)
  {
    if (v12 == 4)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87150, &qword_21B4D3B10);
      swift_arrayDestroy();
      v45 = v11;
      if (v13 >> 62)
      {
        goto LABEL_48;
      }

      v24 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v25 = a2;
      if (v24)
      {
        goto LABEL_32;
      }

      goto LABEL_49;
    }

    if (v15 == ++v12)
    {
      break;
    }

    v17 = v16 + 16;
    v18 = *v16;
    v16 += 16;
    if (v18 != 255)
    {
      if (v18)
      {
        if (v18 == 1)
        {
          [objc_allocWithZone(MEMORY[0x277D75348]) initWithCGColor_];
        }

        else
        {
          v19 = *(v17 - 3);
          if (v19 <= 1)
          {
            if (v19)
            {
              v23 = [objc_opt_self() secondarySystemBackgroundColor];
            }

            else
            {
              v21 = [objc_opt_self() systemBackgroundColor];
            }
          }

          else if (v19 == 2)
          {
            v22 = [objc_opt_self() tertiarySystemBackgroundColor];
          }

          else
          {
            v20 = [objc_opt_self() clearColor];
          }
        }
      }

      else
      {
        [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:*(v17 - 3) / 255.0 green:BYTE1(*(v17 - 3)) / 255.0 blue:BYTE2(*(v17 - 3)) / 255.0 alpha:BYTE3(*(v17 - 3)) / 255.0];
      }

      MEMORY[0x21CEF3050]();
      if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21B4C9948();
        v11 = MEMORY[0x277D84F90];
      }

      sub_21B4C9988();
      v13 = v45;
      goto LABEL_9;
    }
  }

  __break(1u);
  while (1)
  {
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    v24 = sub_21B4CA4B8();
    v25 = v34;
    if (!v24)
    {
      break;
    }

LABEL_32:
    v26 = 0;
    v35 = v13 & 0xC000000000000001;
    v27 = v13 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v35)
      {
        v29 = v13;
        v30 = MEMORY[0x21CEF3AB0](v26, v13);
      }

      else
      {
        if (v26 >= *(v27 + 16))
        {
          goto LABEL_47;
        }

        v29 = v13;
        v30 = *(v13 + 8 * v26 + 32);
      }

      v31 = v30;
      v13 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      v9 = v25;
      v32 = (v36)(v30);
      if (v3)
      {

        return v9;
      }

      if (v32)
      {
        sub_21B4CA3E8();
        sub_21B4CA428();
        v25 = v34;
        sub_21B4CA438();
        sub_21B4CA3F8();
      }

      else
      {
      }

      ++v26;
      v28 = v13 == v24;
      v13 = v29;
      if (v28)
      {
        v9 = v45;
        goto LABEL_50;
      }
    }
  }

LABEL_49:
  v9 = MEMORY[0x277D84F90];
LABEL_50:

  return v9;
}

unint64_t sub_21B411888()
{
  result = qword_2811FD578;
  if (!qword_2811FD578)
  {
    sub_21B4C64F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811FD578);
  }

  return result;
}

void sub_21B4118E0(id a1, char a2)
{
  if (a2 != -1)
  {
    sub_21B40F788(a1, a2);
  }
}

id sub_21B4118F4(id a1, char a2)
{
  if (a2 != -1)
  {
    return sub_21B411908(a1, a2);
  }

  return a1;
}

id sub_21B411908(id result, char a2)
{
  if (a2 == 1)
  {
    return result;
  }

  return result;
}

uint64_t ArtworkRequest.init(model:targetSize:contentMode:displayScale:retainAspectRatio:cropCodeOverride:destination:effects:trace:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>, double a9@<D0>, double a10@<D1>)
{
  v55 = a4;
  v56 = a7;
  v53 = a6;
  v52 = a5;
  v50 = a3;
  v46 = a2;
  v51 = a8;
  v14 = sub_21B4C6A48();
  MEMORY[0x28223BE20](v14 - 8);
  v49 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_21B4C72A8();
  v45 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v47 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86B98, &qword_21B4D3090);
  MEMORY[0x28223BE20](v18 - 8);
  v48 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v44 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v44 - v24;
  v26 = sub_21B4C66C8();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v44 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_21B4C5E78();
  MEMORY[0x28223BE20](v30);
  v32 = &v44 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v35 = &v44 - v34;
  sub_21B38F550(a1, &v44 - v34);
  v54 = a1;
  sub_21B4C5E58();
  (*(v27 + 104))(v29, *MEMORY[0x277D3D6C8], v26);
  CGSize.fitting(_:mode:aspectRule:)(v46, v29, a9, a10);
  v36 = v26;
  v37 = v45;
  (*(v27 + 8))(v29, v36);
  sub_21B36C7AC(v55, v25, &qword_27CD86B98, &qword_21B4D3090);
  sub_21B36C7AC(v56, v58, &qword_27CD86D80, qword_21B4D2BF0);
  sub_21B36C7AC(v25, v22, &qword_27CD86B98, &qword_21B4D3090);
  v38 = *(v37 + 48);
  v39 = v38(v22, 1, v16);
  v44 = v16;
  if (v39 == 1)
  {
    v40 = v47;
    sub_21B4C5D68();
    v41 = v37;
    v42 = v40;
    if (v38(v22, 1, v16) != 1)
    {
      sub_21B3F2D94(v22, &qword_27CD86B98, &qword_21B4D3090);
    }
  }

  else
  {
    v42 = v47;
    (*(v37 + 32))(v47, v22, v16);
    v41 = v37;
  }

  sub_21B4C7278();
  sub_21B38F550(v35, v32);
  sub_21B36C7AC(v25, v48, &qword_27CD86B98, &qword_21B4D3090);
  sub_21B4C6A28();
  sub_21B36C7AC(v58, v57, &qword_27CD86D80, qword_21B4D2BF0);
  sub_21B4C6478();
  sub_21B3F2D94(v56, &qword_27CD86D80, qword_21B4D2BF0);
  sub_21B3F2D94(v55, &qword_27CD86B98, &qword_21B4D3090);
  sub_21B38F79C(v54);
  (*(v41 + 8))(v42, v44);
  sub_21B3F2D94(v58, &qword_27CD86D80, qword_21B4D2BF0);
  sub_21B3F2D94(v25, &qword_27CD86B98, &qword_21B4D3090);
  return sub_21B38F79C(v35);
}

uint64_t ArtworkRequest.artworkLoaderConfig.getter()
{
  v37 = sub_21B4C5D78();
  v0 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v36 = &v35 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86B98, &qword_21B4D3090);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v35 - v3;
  v5 = sub_21B4C72A8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v41 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21B4C5E78();
  MEMORY[0x28223BE20](v8);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v35 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = (&v35 - v15);
  sub_21B4C6488();
  v17 = v16[1];
  v39 = *v16;
  v40 = v17;

  sub_21B38F79C(v16);
  sub_21B4C6388();
  v19 = v18;
  v21 = v20;
  sub_21B4C63A8();
  v23 = v22;
  sub_21B4C6488();
  v38 = v13[*(v8 + 52)];
  sub_21B38F79C(v13);
  sub_21B4C63D8();
  v42 = v6;
  v24 = *(v6 + 48);
  if (v24(v4, 1, v5) == 1)
  {
    sub_21B4C6488();
    v25 = &v10[*(v8 + 44)];
    v26 = v36;
    v27 = v37;
    (*(v0 + 16))(v36, v25, v37);
    sub_21B38F79C(v10);
    v28 = v41;
    sub_21B4C5D68();
    (*(v0 + 8))(v26, v27);
    v29 = v24(v4, 1, v5);
    v30 = v42;
    if (v29 != 1)
    {
      sub_21B3F2D94(v4, &qword_27CD86B98, &qword_21B4D3090);
    }
  }

  else
  {
    v28 = v41;
    v30 = v42;
    (*(v42 + 32))(v41, v4, v5);
  }

  v31 = sub_21B4C6418();
  type metadata accessor for LegacyArtworkLoaderConfig(0);
  v32 = swift_allocObject();
  v33 = v40;
  *(v32 + 16) = v39;
  *(v32 + 24) = v33;
  *(v32 + 32) = v19;
  *(v32 + 40) = v21;
  *(v32 + 48) = v38;
  (*(v30 + 32))(v32 + OBJC_IVAR____TtC10PodcastsUI25LegacyArtworkLoaderConfig_crop, v28, v5);
  *(v32 + OBJC_IVAR____TtC10PodcastsUI25LegacyArtworkLoaderConfig_scale) = v23;
  *(v32 + OBJC_IVAR____TtC10PodcastsUI25LegacyArtworkLoaderConfig_retainAspectRatio) = v31 & 1;
  return v32;
}

double ArtworkTextColors.init(tryDeserializing:using:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v23 = a3;
  v5 = sub_21B4C85C8();
  v20 = *(v5 - 8);
  v6 = v20;
  MEMORY[0x28223BE20](v5);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21B4C8518();
  v21 = *(v9 - 8);
  v22 = v9;
  MEMORY[0x28223BE20](v9);
  sub_21B4C8528();
  v10 = *(v6 + 16);
  v10(v8, a2, v5);
  sub_21B410818();
  sub_21B4C8A88();
  v19 = v28;
  v18 = v29;
  sub_21B4C8528();
  v10(v8, a2, v5);
  sub_21B4C8A88();
  v17 = v26;
  v16 = v27;
  sub_21B4C8528();
  v10(v8, a2, v5);
  sub_21B4C8A88();
  v15 = v24;
  v14[3] = v25;
  sub_21B4C8528();
  v10(v8, a2, v5);
  sub_21B4C8A88();
  sub_21B4C66D8();
  (*(v20 + 8))(a2, v5);
  (*(v21 + 8))(a1, v22);
  v11 = v31;
  v12 = v23;
  *v23 = v30;
  v12[1] = v11;
  v12[2] = v32[0];
  result = *(v32 + 9);
  *(v12 + 41) = *(v32 + 9);
  return result;
}

double sub_21B412654@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  ArtworkTextColors.init(tryDeserializing:using:)(a1, a2, v6);
  v4 = v6[1];
  *a3 = v6[0];
  a3[1] = v4;
  a3[2] = v7[0];
  result = *(v7 + 9);
  *(a3 + 41) = *(v7 + 9);
  return result;
}

id IMImageBlur.init(_:)(uint64_t a1)
{
  if (*(a1 + 9))
  {
    return 0;
  }

  v13 = v5;
  v14 = v1;
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  if (v9)
  {
    v11 = 0.0;
    v12 = 0;
  }

  else
  {
    v12 = 1;
    v11 = v8;
  }

  return [v10 initWithStyle:v12 radius:{v11, v6, v13, v2, v14, v3, v4}];
}

uint64_t ImageProvider.load(request:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87160, &qword_21B4D3B70);
  v4[9] = v5;
  v4[10] = *(v5 - 8);
  v4[11] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87168, &qword_21B4D3B78);
  v4[12] = v6;
  v4[13] = *(v6 - 8);
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87170, &qword_21B4D3B80);
  v4[16] = v7;
  v4[17] = *(v7 - 8);
  v4[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21B4128B8, 0, 0);
}

uint64_t sub_21B4128B8()
{
  v1 = v0[17];
  v2 = v0[18];
  v3 = v0[16];
  v4 = v0[13];
  v11 = v0[15];
  v12 = v0[12];
  v13 = v0[14];
  v0[2] = (*(v0[7] + 8))(v0[5], v0[6]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD86E20, &qword_21B4D2A30);
  sub_21B3F1314(&qword_281200598, &unk_27CD86E20, &qword_21B4D2A30, MEMORY[0x277CBCD90]);
  sub_21B4C7848();

  v5 = sub_21B3F1314(&qword_2812005A0, &qword_27CD87170, &qword_21B4D3B80, MEMORY[0x277CBCC20]);
  MEMORY[0x21CEF0FE0](v3, v5);
  (*(v1 + 8))(v2, v3);
  v6 = MEMORY[0x277D84F90];
  v0[3] = MEMORY[0x277D84F90];
  (*(v4 + 16))(v13, v11, v12);
  sub_21B3F1314(&qword_281200588, &qword_27CD87168, &qword_21B4D3B78, MEMORY[0x277CBCE58]);
  sub_21B4C9AE8();
  v0[19] = v6;
  v7 = sub_21B3F1314(&qword_281200590, &qword_27CD87160, &qword_21B4D3B70, MEMORY[0x277CBCE50]);
  v8 = swift_task_alloc();
  v0[20] = v8;
  *v8 = v0;
  v8[1] = sub_21B412B24;
  v9 = v0[9];

  return MEMORY[0x282200308](v0 + 4, v9, v7);
}

uint64_t sub_21B412B24()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    (*(v2[10] + 8))(v2[11], v2[9]);

    v3 = sub_21B41301C;
  }

  else
  {
    v3 = sub_21B412C5C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_21B412C5C()
{
  v1 = v0[4];
  if (v1)
  {
    v2 = v1;
    MEMORY[0x21CEF3050]();
    if (*((v0[3] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[3] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_21B4C9948();
    }

    sub_21B4C9988();

    v0[19] = v0[3];
    v3 = sub_21B3F1314(&qword_281200590, &qword_27CD87160, &qword_21B4D3B70, MEMORY[0x277CBCE50]);
    v4 = swift_task_alloc();
    v0[20] = v4;
    *v4 = v0;
    v4[1] = sub_21B412B24;
    v5 = v0[9];
    v6 = (v0 + 4);
    v7 = v3;

    return MEMORY[0x282200308](v6, v5, v7);
  }

  v8 = v0[21];
  v9 = v0[15];
  v10 = v0[12];
  v11 = v0[13];
  (*(v0[10] + 8))(v0[11], v0[9]);
  (*(v11 + 8))(v9, v10);
  sub_21B4C9AB8();
  v6 = v0[19];
  if (v8)
  {

LABEL_9:

    v12 = v0[1];

    return v12();
  }

  if (!(v6 >> 62))
  {
    v14 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v14)
    {
      goto LABEL_14;
    }

LABEL_23:

    v20 = sub_21B4C6808();
    sub_21B393594(&qword_27CD87118, MEMORY[0x277D3D718], MEMORY[0x277D3D720]);
    swift_allocError();
    (*(*(v20 - 8) + 104))(v21, *MEMORY[0x277D3D700], v20);
    swift_willThrow();
    goto LABEL_9;
  }

  v19 = v0[19];
  v14 = sub_21B4CA4B8();
  v6 = v19;
  if (!v14)
  {
    goto LABEL_23;
  }

LABEL_14:
  v15 = __OFSUB__(v14, 1);
  v16 = v14 - 1;
  if (v15)
  {
    __break(1u);
    goto LABEL_25;
  }

  if ((v6 & 0xC000000000000001) != 0)
  {
LABEL_25:
    v17 = MEMORY[0x21CEF3AB0](v16, v0[19]);
    goto LABEL_19;
  }

  if ((v16 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_27;
  }

  if (v16 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_27:
    __break(1u);
    return MEMORY[0x282200308](v6, v5, v7);
  }

  v17 = *(v0[19] + 8 * v16 + 32);
LABEL_19:

  v18 = v0[1];

  return v18(v17);
}

uint64_t sub_21B41301C()
{
  (*(v0[13] + 8))(v0[15], v0[12]);

  v1 = v0[1];

  return v1();
}

uint64_t ImageProvider.placeholder(with:)(uint64_t a1, uint64_t a2, double a3, double a4)
{
  *(v5 + 64) = a2;
  *(v5 + 72) = v4;
  *(v5 + 56) = a1;
  *(v5 + 40) = a3;
  *(v5 + 48) = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87160, &qword_21B4D3B70);
  *(v5 + 80) = v6;
  *(v5 + 88) = *(v6 - 8);
  *(v5 + 96) = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87168, &qword_21B4D3B78);
  *(v5 + 104) = v7;
  *(v5 + 112) = *(v7 - 8);
  *(v5 + 120) = swift_task_alloc();
  *(v5 + 128) = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87170, &qword_21B4D3B80);
  *(v5 + 136) = v8;
  *(v5 + 144) = *(v8 - 8);
  *(v5 + 152) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21B413270, 0, 0);
}

uint64_t sub_21B413270()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  v3 = *(v0 + 136);
  v4 = *(v0 + 112);
  v11 = *(v0 + 128);
  v12 = *(v0 + 104);
  v13 = *(v0 + 120);
  *(v0 + 16) = (*(*(v0 + 64) + 24))(*(v0 + 56), *(v0 + 40), *(v0 + 48));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD86E20, &qword_21B4D2A30);
  sub_21B3F1314(&qword_281200598, &unk_27CD86E20, &qword_21B4D2A30, MEMORY[0x277CBCD90]);
  sub_21B4C7848();

  v5 = sub_21B3F1314(&qword_2812005A0, &qword_27CD87170, &qword_21B4D3B80, MEMORY[0x277CBCC20]);
  MEMORY[0x21CEF0FE0](v3, v5);
  (*(v1 + 8))(v2, v3);
  v6 = MEMORY[0x277D84F90];
  *(v0 + 24) = MEMORY[0x277D84F90];
  (*(v4 + 16))(v13, v11, v12);
  sub_21B3F1314(&qword_281200588, &qword_27CD87168, &qword_21B4D3B78, MEMORY[0x277CBCE58]);
  sub_21B4C9AE8();
  *(v0 + 160) = v6;
  v7 = sub_21B3F1314(&qword_281200590, &qword_27CD87160, &qword_21B4D3B70, MEMORY[0x277CBCE50]);
  v8 = swift_task_alloc();
  *(v0 + 168) = v8;
  *v8 = v0;
  v8[1] = sub_21B4134E0;
  v9 = *(v0 + 80);

  return MEMORY[0x282200308](v0 + 32, v9, v7);
}

uint64_t sub_21B4134E0()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    (*(v2[11] + 8))(v2[12], v2[10]);

    v3 = sub_21B4139D8;
  }

  else
  {
    v3 = sub_21B413618;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_21B413618()
{
  v1 = v0[4];
  if (v1)
  {
    v2 = v1;
    MEMORY[0x21CEF3050]();
    if (*((v0[3] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[3] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_21B4C9948();
    }

    sub_21B4C9988();

    v0[20] = v0[3];
    v3 = sub_21B3F1314(&qword_281200590, &qword_27CD87160, &qword_21B4D3B70, MEMORY[0x277CBCE50]);
    v4 = swift_task_alloc();
    v0[21] = v4;
    *v4 = v0;
    v4[1] = sub_21B4134E0;
    v5 = v0[10];
    v6 = (v0 + 4);
    v7 = v3;

    return MEMORY[0x282200308](v6, v5, v7);
  }

  v8 = v0[22];
  v9 = v0[16];
  v10 = v0[13];
  v11 = v0[14];
  (*(v0[11] + 8))(v0[12], v0[10]);
  (*(v11 + 8))(v9, v10);
  sub_21B4C9AB8();
  v6 = v0[20];
  if (v8)
  {

LABEL_9:

    v12 = v0[1];

    return v12();
  }

  if (!(v6 >> 62))
  {
    v14 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v14)
    {
      goto LABEL_14;
    }

LABEL_23:

    v20 = sub_21B4C6808();
    sub_21B393594(&qword_27CD87118, MEMORY[0x277D3D718], MEMORY[0x277D3D720]);
    swift_allocError();
    (*(*(v20 - 8) + 104))(v21, *MEMORY[0x277D3D700], v20);
    swift_willThrow();
    goto LABEL_9;
  }

  v19 = v0[20];
  v14 = sub_21B4CA4B8();
  v6 = v19;
  if (!v14)
  {
    goto LABEL_23;
  }

LABEL_14:
  v15 = __OFSUB__(v14, 1);
  v16 = v14 - 1;
  if (v15)
  {
    __break(1u);
    goto LABEL_25;
  }

  if ((v6 & 0xC000000000000001) != 0)
  {
LABEL_25:
    v17 = MEMORY[0x21CEF3AB0](v16, v0[20]);
    goto LABEL_19;
  }

  if ((v16 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_27;
  }

  if (v16 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_27:
    __break(1u);
    return MEMORY[0x282200308](v6, v5, v7);
  }

  v17 = *(v0[20] + 8 * v16 + 32);
LABEL_19:

  v18 = v0[1];

  return v18(v17);
}

uint64_t sub_21B4139D8()
{
  (*(v0[14] + 8))(v0[16], v0[13]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_21B413A7C(uint64_t a1)
{
  v3 = sub_21B4C5888();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_21B4C5878();
  if (qword_2811FE798 != -1)
  {
    v7 = swift_once();
  }

  v8 = qword_2811FE7A0;
  MEMORY[0x28223BE20](v7);
  *&v10[-48] = v6;
  *&v10[-40] = v1;
  *&v10[-24] = 0;
  *&v10[-16] = 0;
  *&v10[-32] = a1;
  os_unfair_lock_lock((v8 + 24));
  sub_21B415F74((v8 + 16));
  os_unfair_lock_unlock((v8 + 24));
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_21B413BF4(double a1, double a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86B40, &unk_21B4D2AC0);
  swift_allocObject();
  sub_21B4C7718();
  sub_21B3F1314(&qword_281200580, &qword_27CD86B40, &unk_21B4D2AC0, MEMORY[0x277CBCEB0]);
  v5 = sub_21B4C77D8();

  return v5;
}

uint64_t sub_21B413D20(double a1, double a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86B40, &unk_21B4D2AC0);
  swift_allocObject();
  sub_21B4C7718();
  sub_21B3F1314(&qword_281200580, &qword_27CD86B40, &unk_21B4D2AC0, MEMORY[0x277CBCEB0]);
  v5 = sub_21B4C77D8();

  return v5;
}

uint64_t ImageProvider.load(artwork:receiveImage:receiveCompletion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v24 = a5;
  v22 = a4;
  v25 = a3;
  v11 = sub_21B4C5888();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_21B4C5878();
  if (qword_2811FE798 != -1)
  {
    v15 = swift_once();
  }

  v16 = qword_2811FE7A0;
  MEMORY[0x28223BE20](v15);
  *(&v21 - 10) = a6;
  *(&v21 - 9) = a7;
  v17 = v22;
  v18 = v23;
  *(&v21 - 8) = v14;
  *(&v21 - 7) = v18;
  *(&v21 - 6) = a1;
  *(&v21 - 5) = v17;
  v19 = v25;
  *(&v21 - 4) = v24;
  *(&v21 - 3) = a2;
  *(&v21 - 2) = v19;
  os_unfair_lock_lock((v16 + 24));
  sub_21B415EEC((v16 + 16));
  os_unfair_lock_unlock((v16 + 24));
  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_21B413FB4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v51 = a2;
  v48 = a7;
  v49 = a8;
  v45 = a5;
  v46 = a6;
  v50 = a1;
  v43 = sub_21B4C5888();
  v11 = *(v43 - 8);
  v42 = *(v11 + 64);
  MEMORY[0x28223BE20](v43);
  v41 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD867B0, &qword_21B4D1CF0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v36 - v14;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87178, &qword_21B4D3BC8);
  v47 = *(v44 - 8);
  v16 = MEMORY[0x28223BE20](v44);
  v40 = &v36 - v17;
  v39 = (*(a10 + 8))(a4, a9, a10, v16);
  v52 = v39;
  v38 = sub_21B375E2C();
  v18 = sub_21B4C9D98();
  v56 = v18;
  v19 = sub_21B4C9DE8();
  (*(*(v19 - 8) + 56))(v15, 1, 1, v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD86E20, &qword_21B4D2A30);
  v37 = sub_21B3F1314(&qword_281200598, &unk_27CD86E20, &qword_21B4D2A30, MEMORY[0x277CBCD90]);
  v21 = sub_21B393594(&qword_2811FCCF0, sub_21B375E2C, MEMORY[0x277D85228]);
  sub_21B4C77B8();
  sub_21B36CA3C(v15);

  v22 = v41;
  v23 = v43;
  (*(v11 + 16))(v41, v51, v43);
  v24 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v25 = swift_allocObject();
  v26 = v45;
  v27 = v46;
  *(v25 + 16) = v45;
  *(v25 + 24) = v27;
  (*(v11 + 32))(v25 + v24, v22, v23);
  v28 = swift_allocObject();
  v29 = v49;
  *(v28 + 16) = v48;
  *(v28 + 24) = v29;
  sub_21B371F28(v26, v27);

  v52 = v20;
  v53 = v38;
  v54 = v37;
  v55 = v21;
  swift_getOpaqueTypeConformance2();
  v30 = v44;
  v31 = v40;
  v32 = sub_21B4C7858();

  (*(v47 + 8))(v31, v30);
  v33 = v50;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v52 = *v33;
  result = sub_21B385858(v32, v51, isUniquelyReferenced_nonNull_native);
  *v33 = v52;
  return result;
}

void sub_21B414428(uint64_t a1, void (*a2)())
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87188, &qword_21B4D3BD8);
    sub_21B4C7668();
    a2();
  }

  if (qword_2811FE798 != -1)
  {
    a1 = swift_once();
  }

  v3 = qword_2811FE7A0;
  MEMORY[0x28223BE20](a1);
  os_unfair_lock_lock((v3 + 24));
  sub_21B38B8C0((v3 + 16));
  os_unfair_lock_unlock((v3 + 24));
}

uint64_t ImageProvider.data(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21B4145D4;

  return ImageProvider.load(request:)(a1, a2, a3);
}

uint64_t sub_21B4145D4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 24) = a1;

  if (v1)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_21B416038, 0, 0);
  }
}

uint64_t ImageProvider.placeholderData(with:)(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_21B4147C4;

  return ImageProvider.placeholder(with:)(a1, a2, a3, a4);
}

uint64_t sub_21B4147C4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 24) = a1;

  if (v1)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_21B4148F8, 0, 0);
  }
}

uint64_t sub_21B4148F8()
{
  if (sub_21B4C61E8())
  {
    v1 = UIImage.heicData(compressionQuality:)(1.0);
    if (v2 >> 60 != 15)
    {
      v6 = v1;
      v8 = v2;

      goto LABEL_9;
    }
  }

  v3 = UIImagePNGRepresentation(*(v0 + 24));
  v4 = *(v0 + 24);
  if (v3)
  {
    v5 = v3;
    v6 = sub_21B4C5788();
    v8 = v7;

LABEL_9:
    v13 = *(v0 + 8);

    return v13(v6, v8);
  }

  v9 = sub_21B4C6808();
  sub_21B393594(&qword_27CD87118, MEMORY[0x277D3D718], MEMORY[0x277D3D720]);
  swift_allocError();
  (*(*(v9 - 8) + 104))(v10, *MEMORY[0x277D3D708], v9);
  swift_willThrow();

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_21B414AA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_21B4C5888();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v3;
  v11 = sub_21B4C5878();
  if (qword_2811FE798 != -1)
  {
    v11 = swift_once();
  }

  v12 = qword_2811FE7A0;
  MEMORY[0x28223BE20](v11);
  *(&v14 - 6) = v10;
  *(&v14 - 5) = &v15;
  *(&v14 - 4) = a1;
  *(&v14 - 3) = a2;
  *(&v14 - 2) = a3;
  os_unfair_lock_lock((v12 + 24));
  sub_21B415F4C((v12 + 16));
  os_unfair_lock_unlock((v12 + 24));
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_21B414C20(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v46 = a2;
  v43 = a5;
  v44 = a6;
  v45 = a1;
  v40 = sub_21B4C5888();
  v7 = *(v40 - 8);
  v39 = *(v7 + 64);
  MEMORY[0x28223BE20](v40);
  v38 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD867B0, &qword_21B4D1CF0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v34 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87178, &qword_21B4D3BC8);
  v13 = *(v12 - 8);
  v41 = v12;
  v42 = v13;
  MEMORY[0x28223BE20](v12);
  v36 = &v34 - v14;
  v37 = LibraryImageProvider.load(artwork:)(a4);
  v47 = v37;
  v15 = sub_21B375E2C();
  v16 = sub_21B4C9DB8();
  v51 = v16;
  v17 = sub_21B4C9DE8();
  (*(*(v17 - 8) + 56))(v11, 1, 1, v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD86E20, &qword_21B4D2A30);
  v35 = sub_21B3F1314(&qword_281200598, &unk_27CD86E20, &qword_21B4D2A30, MEMORY[0x277CBCD90]);
  v19 = sub_21B393594(&qword_2811FCCF0, sub_21B375E2C, MEMORY[0x277D85228]);
  sub_21B4C77B8();
  sub_21B36CA3C(v11);

  v20 = v38;
  v21 = v40;
  (*(v7 + 16))(v38, v46, v40);
  v22 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v23 = (v39 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  (*(v7 + 32))(v24 + v22, v20, v21);
  v25 = (v24 + v23);
  v26 = v43;
  v27 = v44;
  *v25 = v43;
  v25[1] = v27;
  sub_21B371F28(v26, v27);
  v47 = v18;
  v48 = v15;
  v49 = v35;
  v50 = v19;
  swift_getOpaqueTypeConformance2();
  v28 = v41;
  v29 = v36;
  v30 = sub_21B4C7858();

  (*(v42 + 8))(v29, v28);
  v31 = v45;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v47 = *v31;
  result = sub_21B385858(v30, v46, isUniquelyReferenced_nonNull_native);
  *v31 = v47;
  return result;
}

uint64_t sub_21B415044(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v46 = a2;
  v43 = a5;
  v44 = a6;
  v45 = a1;
  v40 = sub_21B4C5888();
  v7 = *(v40 - 8);
  v39 = *(v7 + 64);
  MEMORY[0x28223BE20](v40);
  v38 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD867B0, &qword_21B4D1CF0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v34 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87178, &qword_21B4D3BC8);
  v13 = *(v12 - 8);
  v41 = v12;
  v42 = v13;
  MEMORY[0x28223BE20](v12);
  v36 = &v34 - v14;
  v37 = StoreLibraryMultiplexingImageProvider.load(artwork:)(a4);
  v47 = v37;
  v15 = sub_21B375E2C();
  v16 = sub_21B4C9DB8();
  v51 = v16;
  v17 = sub_21B4C9DE8();
  (*(*(v17 - 8) + 56))(v11, 1, 1, v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD86E20, &qword_21B4D2A30);
  v35 = sub_21B3F1314(&qword_281200598, &unk_27CD86E20, &qword_21B4D2A30, MEMORY[0x277CBCD90]);
  v19 = sub_21B393594(&qword_2811FCCF0, sub_21B375E2C, MEMORY[0x277D85228]);
  sub_21B4C77B8();
  sub_21B36CA3C(v11);

  v20 = v38;
  v21 = v40;
  (*(v7 + 16))(v38, v46, v40);
  v22 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v23 = (v39 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  (*(v7 + 32))(v24 + v22, v20, v21);
  v25 = (v24 + v23);
  v26 = v43;
  v27 = v44;
  *v25 = v43;
  v25[1] = v27;
  sub_21B371F28(v26, v27);
  v47 = v18;
  v48 = v15;
  v49 = v35;
  v50 = v19;
  swift_getOpaqueTypeConformance2();
  v28 = v41;
  v29 = v36;
  v30 = sub_21B4C7858();

  (*(v42 + 8))(v29, v28);
  v31 = v45;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v47 = *v31;
  result = sub_21B385858(v30, v46, isUniquelyReferenced_nonNull_native);
  *v31 = v47;
  return result;
}

void sub_21B415468(void (*a1)(id *), double a2)
{
  v3 = [objc_opt_self() defaultPodcastArtworkWithWidth_];
  if (v3)
  {
    v8 = v3;
    v9 = 0;
    v4 = v3;
    a1(&v8);
  }

  else
  {
    v5 = sub_21B4C6808();
    sub_21B393594(&qword_27CD87118, MEMORY[0x277D3D718], MEMORY[0x277D3D720]);
    v6 = swift_allocError();
    (*(*(v5 - 8) + 104))(v7, *MEMORY[0x277D3D710], v5);
    v8 = v6;
    v9 = 1;
    a1(&v8);
  }
}

uint64_t sub_21B4155A8(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_21B4CA2B8() + 1) & ~v5;
    do
    {
      sub_21B3FB4AC(*(a2 + 48) + 40 * v6, v25);
      v10 = sub_21B4CA2C8();
      result = sub_21B3F135C(v25);
      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = *(a2 + 48);
          v15 = v14 + 40 * v3;
          v16 = (v14 + 40 * v6);
          if (v3 != v6 || v15 >= v16 + 40)
          {
            v17 = *v16;
            v18 = v16[1];
            *(v15 + 32) = *(v16 + 4);
            *v15 = v17;
            *(v15 + 16) = v18;
          }

          v19 = *(a2 + 56);
          v20 = (v19 + 32 * v3);
          v21 = (v19 + 32 * v6);
          if (v3 != v6 || v20 >= v21 + 2)
          {
            v9 = v21[1];
            *v20 = *v21;
            v20[1] = v9;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_21B41574C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_21B4CA2B8() + 1) & ~v5;
    do
    {
      sub_21B4CA6E8();

      sub_21B4C9658();
      v12 = sub_21B4CA738();

      v13 = v12 & v7;
      if (v3 >= v8)
      {
        if (v13 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v13 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v13)
      {
LABEL_10:
        v14 = *(a2 + 48);
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
        }

        v17 = *(a2 + 56);
        v18 = (v17 + (v3 << 6));
        v19 = (v17 + (v6 << 6));
        if (v3 != v6 || v18 >= v19 + 4)
        {
          v9 = *v19;
          v10 = v19[1];
          v11 = v19[3];
          v18[2] = v19[2];
          v18[3] = v11;
          *v18 = v9;
          v18[1] = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_21B415904(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_21B4CA2B8() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 16 * v6 + 8);
      sub_21B4CA6E8();
      if (v9)
      {
        MEMORY[0x21CEF3E40](1);

        sub_21B4C9658();
      }

      else
      {
        MEMORY[0x21CEF3E40](0);
      }

      v10 = sub_21B4CA738();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_13;
      }

      if (v3 >= v11)
      {
LABEL_13:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 8 * v3);
        v17 = (v15 + 8 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

void sub_21B415AD0(int64_t a1, uint64_t a2)
{
  v38 = sub_21B4C8B08();
  v4 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v37 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2 + 64;
  v8 = -1 << *(a2 + 32);
  v9 = (a1 + 1) & ~v8;
  if ((*(a2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v39 = v5;
    v11 = sub_21B4CA2B8();
    v12 = v38;
    v5 = v39;
    v13 = v10;
    v36 = (v11 + 1) & v10;
    v15 = *(v4 + 16);
    v14 = v4 + 16;
    v34 = a2 + 64;
    v35 = v15;
    v16 = *(v14 + 56);
    v33 = (v14 - 8);
    do
    {
      v17 = v16;
      v18 = v16 * v9;
      v19 = v37;
      v20 = v13;
      v21 = v14;
      v35(v37, *(v5 + 48) + v16 * v9, v12);
      sub_21B393594(&qword_2811FD190, MEMORY[0x277D21F50], MEMORY[0x277D21F58]);
      v22 = sub_21B4C9628();
      (*v33)(v19, v12);
      v13 = v20;
      v23 = v22 & v20;
      if (a1 >= v36)
      {
        if (v23 >= v36 && a1 >= v23)
        {
LABEL_15:
          v5 = v39;
          v14 = v21;
          if (v17 * a1 < v18 || (v16 = v17, *(v39 + 48) + v17 * a1 >= (*(v39 + 48) + v18 + v17)))
          {
            swift_arrayInitWithTakeFrontToBack();
            v5 = v39;
            v16 = v17;
            v13 = v20;
            v7 = v34;
          }

          else
          {
            v7 = v34;
            if (v17 * a1 != v18)
            {
              swift_arrayInitWithTakeBackToFront();
              v5 = v39;
              v16 = v17;
              v13 = v20;
            }
          }

          v26 = *(v5 + 56);
          v27 = (v26 + 8 * a1);
          v28 = (v26 + 8 * v9);
          if (a1 != v9 || v27 >= v28 + 1)
          {
            *v27 = *v28;
            a1 = v9;
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v36 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v14 = v21;
      v7 = v34;
      v16 = v17;
      v5 = v39;
LABEL_4:
      v9 = (v9 + 1) & v13;
    }

    while (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v29 = *(v5 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v5 + 16) = v31;
    ++*(v5 + 36);
  }
}

uint64_t _s10PodcastsUI13ImageProviderPAAE11placeholder3for7Combine12AnyPublisherVySo7UIImageCs5Error_pGSo6CGSizeV_tF_0(double a1, double a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86B40, &unk_21B4D2AC0);
  swift_allocObject();
  sub_21B4C7718();
  sub_21B3F1314(&qword_281200580, &qword_27CD86B40, &unk_21B4D2AC0, MEMORY[0x277CBCEB0]);
  v5 = sub_21B4C77D8();

  return v5;
}

void sub_21B415F98(uint64_t a1)
{
  sub_21B4C5888();
  v3 = *(v1 + 16);

  sub_21B414428(a1, v3);
}

uint64_t ImageResizer.resize(image:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_21B4C6388();
  v8 = v7;
  v10 = v9;
  sub_21B4C63A8();
  v11.n128_u64[0] = v13.n128_u64[0];
  v12 = *(a4 + 8);
  v13.n128_u64[0] = v8;
  v14.n128_u64[0] = v10;

  return v12(a1, a3, a4, v13, v14, v11);
}

void ImageStore.asyncLocallyDiskCachedImage(forKey:size:completionHandler:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a5 - 8);
  v14 = *(v13 + 64);
  v16 = MEMORY[0x28223BE20](a1);
  v18 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v16 >= 1.0)
  {
    v19 = v16;
  }

  else
  {
    v19 = 1.0;
  }

  if (v17 >= 1.0)
  {
    v20 = v17;
  }

  else
  {
    v20 = 1.0;
  }

  v29 = 0;
  v30 = 256;
  v21 = (*(v15 + 24))(v19, v20);
  if (v21)
  {
    v28 = v21;
    a3(v21, a1, a2);
    v22 = v28;
  }

  else if ((*(a6 + 48))(a1, a2, a5, a6))
  {
    v29 = 0;
    v30 = 256;
    (*(v13 + 16))(&v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v6, a5);
    v28 = (*(v13 + 80) + 48) & ~*(v13 + 80);
    v27 = (v14 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
    v23 = swift_allocObject();
    *(v23 + 2) = a5;
    *(v23 + 3) = a6;
    *(v23 + 4) = a3;
    *(v23 + 5) = a4;
    (*(v13 + 32))(&v23[v28], v18, a5);
    v24 = &v23[v27];
    *v24 = v19;
    v24[1] = v20;
    v25 = *(a6 + 32);

    v25(a1, a2, &v29, sub_21B416710, v23, a5, a6, v19, v20);
  }

  else
  {
    v26 = swift_allocObject();
    v26[2] = a3;
    v26[3] = a4;
    v26[4] = a1;
    v26[5] = a2;

    sub_21B416414(sub_21B4168C4, v26, a5, a6, v19, v20);
  }
}

void sub_21B416414(void (*a1)(void *), uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  if (a5 >= 1.0)
  {
    v10 = a5;
  }

  else
  {
    v10 = 1.0;
  }

  if (a6 >= 1.0)
  {
    v11 = a6;
  }

  else
  {
    v11 = 1.0;
  }

  v12 = sub_21B4C9708();
  v20 = 0;
  v21 = 256;
  v13 = (*(a4 + 24))(v12, v10, v11);

  if (v13)
  {
    v19 = v13;
    a1(v13);
  }

  else
  {
    v14 = sub_21B4C9708();
    v16 = v15;
    v20 = 0;
    v21 = 256;
    v17 = swift_allocObject();
    *(v17 + 16) = a1;
    *(v17 + 24) = a2;
    v18 = *(a4 + 32);

    v18(v14, v16, &v20, sub_21B41689C, v17, a3, a4, v10, v11);
  }
}

void sub_21B4165D8(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void *, uint64_t, uint64_t), uint64_t a5, double a6, double a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a1)
  {
    v20 = a1;
    a4(a1, a2, a3);
  }

  else
  {
    v19 = swift_allocObject();
    v19[2] = a4;
    v19[3] = a5;
    v19[4] = a2;
    v19[5] = a3;

    sub_21B416414(sub_21B41686C, v19, a9, a10, a6, a7);
  }
}

void sub_21B416710(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = (*(*(*(v3 + 16) - 8) + 80) + 48) & ~*(*(*(v3 + 16) - 8) + 80);
  v5 = (v3 + ((*(*(*(v3 + 16) - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  sub_21B4165D8(a1, a2, a3, *(v3 + 32), *(v3 + 40), *v5, v5[1], v3 + v4, *(v3 + 16), *(v3 + 24));
}

uint64_t getEnumTagSinglePayload for ImageBlur(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ImageBlur(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t LegacyArtworkLoaderConfig.__allocating_init(template:size:scale:format:crop:retainAspectRatio:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, double a6, double a7, double a8)
{
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  *(v16 + 32) = a6;
  *(v16 + 40) = a7;
  *(v16 + 48) = a3;
  v17 = OBJC_IVAR____TtC10PodcastsUI25LegacyArtworkLoaderConfig_crop;
  v18 = sub_21B4C72A8();
  (*(*(v18 - 8) + 32))(v16 + v17, a4, v18);
  *(v16 + OBJC_IVAR____TtC10PodcastsUI25LegacyArtworkLoaderConfig_scale) = a8;
  *(v16 + OBJC_IVAR____TtC10PodcastsUI25LegacyArtworkLoaderConfig_retainAspectRatio) = a5;
  return v16;
}

uint64_t LegacyArtworkLoaderConfig.template.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t LegacyArtworkLoaderConfig.crop.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC10PodcastsUI25LegacyArtworkLoaderConfig_crop;
  v4 = sub_21B4C72A8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t LegacyArtworkLoaderConfig.init(template:size:scale:format:crop:retainAspectRatio:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5, double a6, double a7, double a8)
{
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *(v8 + 32) = a6;
  *(v8 + 40) = a7;
  *(v8 + 48) = a3;
  v12 = OBJC_IVAR____TtC10PodcastsUI25LegacyArtworkLoaderConfig_crop;
  v13 = sub_21B4C72A8();
  (*(*(v13 - 8) + 32))(v8 + v12, a4, v13);
  *(v8 + OBJC_IVAR____TtC10PodcastsUI25LegacyArtworkLoaderConfig_scale) = a8;
  *(v8 + OBJC_IVAR____TtC10PodcastsUI25LegacyArtworkLoaderConfig_retainAspectRatio) = a5;
  return v8;
}

uint64_t sub_21B416B20()
{
  sub_21B416D28();
  sub_21B4C5718();
}

uint64_t sub_21B416B64(double (*a1)(uint64_t, double, double), uint64_t a2)
{
  v3 = v2;
  v6 = sub_21B4C72A8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v11 = *(v3 + 16);
    v10 = *(v3 + 24);
    v12 = *(v3 + 32);
    v13 = *(v3 + 40);
    sub_21B371F28(a1, a2);

    v15 = a1(v14, v12, v13);
    v17 = v16;
    sub_21B36F6F4(a1, a2);
    v18 = *(v3 + OBJC_IVAR____TtC10PodcastsUI25LegacyArtworkLoaderConfig_scale);
    v19 = *(v3 + 48);
    (*(v7 + 16))(v9, v3 + OBJC_IVAR____TtC10PodcastsUI25LegacyArtworkLoaderConfig_crop, v6);
    v20 = *(v3 + OBJC_IVAR____TtC10PodcastsUI25LegacyArtworkLoaderConfig_retainAspectRatio);
    type metadata accessor for LegacyArtworkLoaderConfig(0);
    v3 = swift_allocObject();
    *(v3 + 16) = v11;
    *(v3 + 24) = v10;
    *(v3 + 32) = v15;
    *(v3 + 40) = v17;
    *(v3 + 48) = v19;
    (*(v7 + 32))(v3 + OBJC_IVAR____TtC10PodcastsUI25LegacyArtworkLoaderConfig_crop, v9, v6);
    *(v3 + OBJC_IVAR____TtC10PodcastsUI25LegacyArtworkLoaderConfig_scale) = v18;
    *(v3 + OBJC_IVAR____TtC10PodcastsUI25LegacyArtworkLoaderConfig_retainAspectRatio) = v20;
  }

  else
  {
  }

  return v3;
}

uint64_t sub_21B416D28()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86E60, &unk_21B4D39D0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v7 - v1;
  sub_21B4C65F8();
  sub_21B4C9FE8();
  sub_21B4C7298();
  sub_21B4C61D8();
  sub_21B4C65E8();

  v3 = sub_21B4C5748();
  v4 = *(v3 - 8);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_21B40C1F4(v2);
    return 0;
  }

  else
  {
    v6 = sub_21B4C5658();
    (*(v4 + 8))(v2, v3);
    return v6;
  }
}

uint64_t type metadata accessor for LegacyArtworkLoaderConfig(uint64_t a1)
{
  result = qword_2811FEAA8;
  if (!qword_2811FEAA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21B416F34()
{
  v1 = *(v0 + 32);
  if ((*&v1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v1 <= -9.22337204e18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v1 >= 9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v2 = *(v0 + 40);
  if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v2 <= -9.22337204e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v2 >= 9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v3 = v2;
  v4 = v1 + v2;
  if (__OFADD__(v1, v2))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v5 = v4 + 1;
  if (__OFADD__(v4, 1))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v6 = v4 * v5;
  if ((v4 * v5) >> 64 != (v4 * v5) >> 63)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  result = v3 + v6 / 2;
  if (__OFADD__(v3, v6 / 2))
  {
LABEL_21:
    __break(1u);
  }

  return result;
}

uint64_t sub_21B417034()
{
  v4 = sub_21B4C9B08();
  MEMORY[0x21CEF2F30](120, 0xE100000000000000);
  v1 = sub_21B4C9B08();
  MEMORY[0x21CEF2F30](v1);

  MEMORY[0x21CEF2F30](64, 0xE100000000000000);
  v2 = sub_21B4C9B08();
  MEMORY[0x21CEF2F30](v2);

  MEMORY[0x21CEF2F30](14968, 0xE200000000000000);
  MEMORY[0x21CEF2F30](*(v0 + 16), *(v0 + 24));
  return v4;
}

unint64_t sub_21B4170F0()
{
  MEMORY[0x21CEF2F30](*(v0 + 16), *(v0 + 24));
  MEMORY[0x21CEF2F30](8236, 0xE200000000000000);
  MEMORY[0x21CEF2F30](0x6574616C706D6574, 0xEA0000000000203ALL);

  v1 = sub_21B4C9FD8();
  MEMORY[0x21CEF2F30](v1);

  MEMORY[0x21CEF2F30](8236, 0xE200000000000000);

  MEMORY[0x21CEF2F30](0x203A657A6973, 0xE600000000000000);

  v2 = sub_21B4C9B08();
  MEMORY[0x21CEF2F30](v2);

  MEMORY[0x21CEF2F30](8236, 0xE200000000000000);

  MEMORY[0x21CEF2F30](0x203A656C616373, 0xE700000000000000);

  BYTE8(v4) = 0;
  MEMORY[0x21CEF2F30](0x203A74616D726F66, 0xE800000000000000);
  *&v4 = *(v0 + 48);
  sub_21B4CA478();
  MEMORY[0x21CEF2F30](8236, 0xE200000000000000);

  MEMORY[0x21CEF2F30](*(&v4 + 1), 0xE000000000000000);

  MEMORY[0x21CEF2F30](0x203A706F7263, 0xE600000000000000);
  sub_21B4C72A8();
  sub_21B4CA478();

  MEMORY[0x21CEF2F30](0, 0xE000000000000000);

  MEMORY[0x21CEF2F30](41, 0xE100000000000000);

  return 0xD000000000000014;
}

uint64_t LegacyArtworkLoaderConfig.deinit()
{

  v1 = OBJC_IVAR____TtC10PodcastsUI25LegacyArtworkLoaderConfig_crop;
  v2 = sub_21B4C72A8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t LegacyArtworkLoaderConfig.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC10PodcastsUI25LegacyArtworkLoaderConfig_crop;
  v2 = sub_21B4C72A8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_21B4174E4()
{
  sub_21B4CA6E8();
  v0 = sub_21B416F34();
  MEMORY[0x21CEF3E40](v0);
  return sub_21B4CA738();
}

uint64_t sub_21B417534()
{
  sub_21B4CA6E8();
  v0 = sub_21B416F34();
  MEMORY[0x21CEF3E40](v0);
  return sub_21B4CA738();
}

uint64_t sub_21B4175AC(uint64_t a1)
{
  sub_21B4CA6E8();
  v1 = sub_21B416F34();
  MEMORY[0x21CEF3E40](v1);
  return sub_21B4CA738();
}

uint64_t _s10PodcastsUI25LegacyArtworkLoaderConfigC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40))
  {
    return 0;
  }

  if ((sub_21B4C61F8() & 1) == 0)
  {
    goto LABEL_16;
  }

  sub_21B4C72A8();
  sub_21B417A0C(&qword_27CD871A0, MEMORY[0x277D3D928], MEMORY[0x277D3D930]);
  sub_21B4C98C8();
  sub_21B4C98C8();
  if (v10 == v8 && v11 == v9)
  {
  }

  else
  {
    v6 = sub_21B4CA608();

    if ((v6 & 1) == 0)
    {
LABEL_16:
      v7 = 0;
      return v7 & 1;
    }
  }

  if (*(a1 + OBJC_IVAR____TtC10PodcastsUI25LegacyArtworkLoaderConfig_scale) != *(a2 + OBJC_IVAR____TtC10PodcastsUI25LegacyArtworkLoaderConfig_scale) || (*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24)) && (sub_21B4CA608() & 1) == 0)
  {
    goto LABEL_16;
  }

  v7 = *(a1 + OBJC_IVAR____TtC10PodcastsUI25LegacyArtworkLoaderConfig_retainAspectRatio) ^ *(a2 + OBJC_IVAR____TtC10PodcastsUI25LegacyArtworkLoaderConfig_retainAspectRatio) ^ 1;
  return v7 & 1;
}

uint64_t sub_21B41781C(uint64_t a1)
{
  result = sub_21B4C72A8();
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

uint64_t sub_21B417A0C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_21B417A54()
{
  result = sub_21B417A74();
  qword_2811FEB58 = result;
  return result;
}

id sub_21B417A74()
{
  v0 = sub_21B4C73F8();
  v22 = *(v0 - 8);
  v23 = v0;
  MEMORY[0x28223BE20](v0);
  v2 = &v20 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for AssetCaches(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2811FF300 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for LibraryImageProvider(0);
  v21 = __swift_project_value_buffer(v6, qword_2811FF308);
  v7 = sub_21B3F12CC(0, &qword_2811FCD88, off_2782BB9E8);
  v8 = [swift_getObjCClassFromMetadata() defaultStore];
  sub_21B3F12CC(0, &qword_2811FCD00, off_2782BB9E0);
  v9 = [swift_getObjCClassFromMetadata() sharedInstance];
  v10 = [objc_opt_self() defaultManager];
  if (qword_2812006B0 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v3, qword_281200258);
  sub_21B3944F0(v11, v5, type metadata accessor for AssetCaches);
  v12 = type metadata accessor for FeedManagerArtworkBridge(0);
  v13 = objc_allocWithZone(v12);
  v27[3] = v6;
  v27[4] = &protocol witness table for LibraryImageProvider;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v27);
  sub_21B3944F0(v21, boxed_opaque_existential_1, type metadata accessor for LibraryImageProvider);
  v26[3] = v7;
  v26[4] = &protocol witness table for MTImageStore;
  v26[0] = v8;
  v25[3] = sub_21B3F12CC(0, &unk_2811FCD68, 0x277CCAA00);
  v25[4] = MEMORY[0x277D3D9C8];
  v25[0] = v10;
  sub_21B3F821C(v27, &v13[OBJC_IVAR___PUIFeedManagerArtworkBridge_imageProvider]);
  sub_21B3F821C(v26, &v13[OBJC_IVAR___PUIFeedManagerArtworkBridge_imageStore]);
  *&v13[OBJC_IVAR___PUIFeedManagerArtworkBridge_imageDownloader] = v9;
  sub_21B3F821C(v25, &v13[OBJC_IVAR___PUIFeedManagerArtworkBridge_fileManager]);
  sub_21B3944F0(v5, &v13[OBJC_IVAR___PUIFeedManagerArtworkBridge_caches], type metadata accessor for AssetCaches);
  v15 = v8;
  v16 = v10;
  v17 = v9;
  sub_21B4C73A8();
  (*(v22 + 32))(&v13[OBJC_IVAR___PUIFeedManagerArtworkBridge_signposter], v2, v23);
  v24.receiver = v13;
  v24.super_class = v12;
  v18 = objc_msgSendSuper2(&v24, sel_init);

  sub_21B3873C8(v5, type metadata accessor for AssetCaches);
  __swift_destroy_boxed_opaque_existential_1(v25);
  __swift_destroy_boxed_opaque_existential_1(v26);
  __swift_destroy_boxed_opaque_existential_1(v27);
  return v18;
}

id FeedManagerArtworkBridge.__allocating_init(imageProvider:imageStore:imageDownloader:fileManager:caches:)(void *a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v9 = a1[3];
  v20 = a1[4];
  v19 = __swift_mutable_project_boxed_opaque_existential_1(a1, v9);
  v11 = a2[3];
  v10 = a2[4];
  v12 = __swift_mutable_project_boxed_opaque_existential_1(a2, v11);
  v13 = a4[3];
  v14 = a4[4];
  v15 = __swift_mutable_project_boxed_opaque_existential_1(a4, v13);
  *(&v18 + 1) = v10;
  *&v18 = v20;
  v16 = sub_21B41A3C0(v19, v12, a3, v15, a5, v22, v9, v11, v13, v18, v14);

  __swift_destroy_boxed_opaque_existential_1(a4);
  __swift_destroy_boxed_opaque_existential_1(a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v16;
}

id static FeedManagerArtworkBridge.shared.getter()
{
  if (qword_2811FEB50 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = qword_2811FEB58;

  return v0;
}

void static FeedManagerArtworkBridge.shared.setter(uint64_t a1)
{
  if (qword_2811FEB50 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_2811FEB58;
  qword_2811FEB58 = a1;
}

uint64_t (*static FeedManagerArtworkBridge.shared.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_2811FEB50 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

id sub_21B41819C@<X0>(void *a1@<X8>)
{
  if (qword_2811FEB50 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_2811FEB58;
  *a1 = qword_2811FEB58;

  return v2;
}

void sub_21B418228(id *a1)
{
  v1 = qword_2811FEB50;
  v2 = *a1;
  if (v1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = qword_2811FEB58;
  qword_2811FEB58 = v2;
}

id FeedManagerArtworkBridge.init(imageProvider:imageStore:imageDownloader:fileManager:caches:)(void *a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v35 = a5;
  v8 = a1[3];
  v33 = a1[4];
  v34 = a3;
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a1, v8);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, v10);
  v14 = a2[3];
  v32 = a2[4];
  v15 = __swift_mutable_project_boxed_opaque_existential_1(a2, v14);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18, v16);
  v21 = a4[3];
  v20 = a4[4];
  v22 = __swift_mutable_project_boxed_opaque_existential_1(a4, v21);
  v23 = MEMORY[0x28223BE20](v22);
  v25 = &v31 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v26 + 16))(v25, v23);
  v30 = v20;
  v27 = v34;
  v28 = sub_21B41A118(v12, v18, v34, v25, v35, v36, v8, v14, v21, v33, v32, v30);

  __swift_destroy_boxed_opaque_existential_1(a4);
  __swift_destroy_boxed_opaque_existential_1(a2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v28;
}

uint64_t sub_21B4185F8(uint64_t a1)
{
  v114 = a1;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87030, &qword_21B4D3770);
  v89 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v96 = &v88 - v2;
  v108 = sub_21B4C7558();
  v88 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v98 = &v88 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v93 = &v88 - v5;
  MEMORY[0x28223BE20](v6);
  v107 = &v88 - v7;
  v8 = sub_21B4C64F8();
  v109 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v95 = &v88 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v94 = &v88 - v11;
  MEMORY[0x28223BE20](v12);
  v105 = &v88 - v13;
  MEMORY[0x28223BE20](v14);
  v104 = &v88 - v15;
  MEMORY[0x28223BE20](v16);
  v103 = (&v88 - v17);
  MEMORY[0x28223BE20](v18);
  v102 = &v88 - v19;
  MEMORY[0x28223BE20](v20);
  v111 = &v88 - v21;
  *&v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86D70, &qword_21B4D30D0);
  v113 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v23 = &v88 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v106 = (&v88 - v25);
  v26 = sub_21B4C7388();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v88 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v32 = &v88 - v31;
  sub_21B4C73C8();
  sub_21B4C7358();
  v99 = v1;
  v33 = sub_21B4C73C8();
  v34 = sub_21B4C9E58();
  if (sub_21B4CA148())
  {
    v35 = v26;
    v36 = swift_slowAlloc();
    *v36 = 0;
    v37 = sub_21B4C7368();
    _os_signpost_emit_with_name_impl(&dword_21B365000, v33, v34, v37, "InvalidateShowArtwork", "", v36, 2u);
    v38 = v36;
    v26 = v35;
    MEMORY[0x21CEF5710](v38, -1, -1);
  }

  (*(v27 + 16))(v29, v32, v26);
  sub_21B4C7458();
  swift_allocObject();
  v91 = sub_21B4C7448();
  (*(v27 + 8))(v32, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD871B0, &unk_21B4D3DC0);
  v39 = v113[9];
  v40 = (*(v113 + 80) + 32) & ~*(v113 + 80);
  v90 = swift_allocObject();
  v41 = (v90 + v40);
  sub_21B4CA108();
  v112 = v41;
  sub_21B4CA138();
  v42 = 0;
  v43 = 0;
  v113 = (v109 + 8);
  v110 = (v109 + 32);
  v44 = MEMORY[0x277D84F90];
  v114 = v8;
  v45 = v106;
  v100 = v39;
  *&v101 = v23;
  do
  {
    v46 = v42;
    sub_21B36C7AC(v112 + v43 * v39, v45, &qword_27CD86D70, &qword_21B4D30D0);
    sub_21B36C7AC(v45, v23, &qword_27CD86D70, &qword_21B4D30D0);
    v47 = sub_21B4C5E78();
    if ((*(*(v47 - 8) + 48))(v23, 1, v47) == 1)
    {
      sub_21B3F2D94(v45, &qword_27CD86D70, &qword_21B4D30D0);
      sub_21B3F2D94(v23, &qword_27CD86D70, &qword_21B4D30D0);
    }

    else
    {
      v48 = v8;
      v49 = v103;
      ArtworkModel.preferredRequest.getter(v103);
      sub_21B3873C8(v23, MEMORY[0x277D3D488]);
      v50 = v104;
      sub_21B4C6408();
      v51 = *v113;
      (*v113)(v49, v48);
      v52 = v102;
      sub_21B4C63B8();
      v53 = v50;
      v45 = v106;
      (v51)(v53, v48);
      sub_21B3F2D94(v45, &qword_27CD86D70, &qword_21B4D30D0);
      v54 = *v110;
      (*v110)(v111, v52, v48);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v44 = sub_21B3F21C8(0, *(v44 + 2) + 1, 1, v44);
      }

      v56 = *(v44 + 2);
      v55 = *(v44 + 3);
      if (v56 >= v55 >> 1)
      {
        v44 = sub_21B3F21C8((v55 > 1), v56 + 1, 1, v44);
      }

      *(v44 + 2) = v56 + 1;
      v8 = v114;
      v54(&v44[((*(v109 + 80) + 32) & ~*(v109 + 80)) + *(v109 + 72) * v56], v111, v114);
      v39 = v100;
      v23 = v101;
    }

    v42 = 1;
    v43 = 1;
  }

  while ((v46 & 1) == 0);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v115 = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86A58, &qword_21B4D2840);
  sub_21B41A610();
  if (sub_21B4C9BD8())
  {
    v58 = *(v44 + 2);
    if (!v58)
    {
      v87 = v99;

      v85 = v87;
      goto LABEL_24;
    }

    v106 = *(v109 + 16);
    v59 = (*(v109 + 80) + 32) & ~*(v109 + 80);
    v90 = v44;
    v60 = &v44[v59];
    v104 = OBJC_IVAR___PUIFeedManagerArtworkBridge_caches;
    v112 = (v88 + 8);
    v109 += 16;
    v102 = *(v109 + 56);
    v103 = (v89 + 8);
    *&v57 = 138412290;
    v101 = v57;
    *&v57 = 136315138;
    v92 = v57;
    v61 = v105;
    do
    {
      v62 = v114;
      v63 = v106;
      v106(v61, v60, v114);
      sub_21B4C74E8();
      v64 = v94;
      v63(v94, v61, v62);
      v65 = sub_21B4C7538();
      v66 = sub_21B4C9CC8();
      if (os_log_type_enabled(v65, v66))
      {
        v67 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        *v67 = v101;
        v69 = _s10PodcastsUI22PreparedArtworkRequestV3keySo8NSStringCvg_0();
        v111 = *v113;
        (v111)(v64, v62);
        *(v67 + 4) = v69;
        *v68 = v69;
        _os_log_impl(&dword_21B365000, v65, v66, "Attempting to invalidate request: %@", v67, 0xCu);
        sub_21B3F2D94(v68, &qword_27CD86B50, &qword_21B4D3DD0);
        MEMORY[0x21CEF5710](v68, -1, -1);
        MEMORY[0x21CEF5710](v67, -1, -1);
      }

      else
      {

        v111 = *v113;
        (v111)(v64, v62);
      }

      v70 = v95;
      v110 = *v112;
      (v110)(v107, v108);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD87610, &unk_21B4D37E0);
      v71 = v96;
      sub_21B4C5DD8();
      v72 = v105;
      v73 = v97;
      sub_21B4C5D98();
      (*v103)(v71, v73);
      v74 = v93;
      sub_21B4C74E8();
      v106(v70, v72, v114);
      v75 = sub_21B4C7538();
      v76 = sub_21B4C9CC8();
      if (os_log_type_enabled(v75, v76))
      {
        v77 = swift_slowAlloc();
        v78 = swift_slowAlloc();
        *v77 = v101;
        v79 = _s10PodcastsUI22PreparedArtworkRequestV3keySo8NSStringCvg_0();
        v100 = v58;
        v80 = v111;
        (v111)(v70, v114);
        *(v77 + 4) = v79;
        *v78 = v79;
        _os_log_impl(&dword_21B365000, v75, v76, "Invalidated request: %@", v77, 0xCu);
        sub_21B3F2D94(v78, &qword_27CD86B50, &qword_21B4D3DD0);
        v81 = v93;
        MEMORY[0x21CEF5710](v78, -1, -1);
        MEMORY[0x21CEF5710](v77, -1, -1);

        (v110)(v81, v108);
        (v80)(v72, v114);
        v58 = v100;
      }

      else
      {

        v82 = v70;
        v83 = v114;
        v84 = v111;
        (v111)(v82, v114);
        (v110)(v74, v108);
        (v84)(v72, v83);
      }

      v61 = v72;
      v60 = &v102[v60];
      --v58;
    }

    while (v58);
  }

  v85 = v99;
LABEL_24:
  sub_21B419434(v85, v91);
}

uint64_t sub_21B419434(uint64_t a1, uint64_t a2)
{
  v2 = sub_21B4C7408();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21B4C7388();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21B4C73C8();
  sub_21B4C7438();
  v11 = sub_21B4C9E48();
  if (sub_21B4CA148())
  {

    sub_21B4C7468();

    if ((*(v3 + 88))(v5, v2) == *MEMORY[0x277D85B00])
    {
      v12 = "[Error] Interval already ended";
    }

    else
    {
      (*(v3 + 8))(v5, v2);
      v12 = "";
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = sub_21B4C7368();
    _os_signpost_emit_with_name_impl(&dword_21B365000, v10, v11, v14, "InvalidateShowArtwork", v12, v13, 2u);
    MEMORY[0x21CEF5710](v13, -1, -1);
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_21B4196F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  v7 = sub_21B4C7408();
  v6[6] = v7;
  v6[7] = *(v7 - 8);
  v6[8] = swift_task_alloc();
  v8 = sub_21B4C7388();
  v6[9] = v8;
  v6[10] = *(v8 - 8);
  v6[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21B419814, 0, 0);
}

uint64_t sub_21B419814()
{
  v1 = v0[4];
  v2 = sub_21B4CA128();
  v0[12] = v2;
  v0[2] = v2;
  v3 = swift_allocObject();
  v0[13] = v3;
  *(v3 + 16) = v1;
  v4 = v1;
  v5 = swift_task_alloc();
  v0[14] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86A58, &qword_21B4D2840);
  v7 = sub_21B41A610();
  *v5 = v0;
  v5[1] = sub_21B419928;

  return MEMORY[0x28219E228](&unk_21B4D3E58, v3, v6, v7);
}

void sub_21B419928(uint64_t a1)
{

  if (v1)
  {
  }

  else
  {

    MEMORY[0x2822009F8](sub_21B419A7C, 0, 0);
  }
}

uint64_t sub_21B419A7C()
{
  v1 = v0[3];
  v2 = [objc_opt_self() defaultCenter];
  v3 = *MEMORY[0x277D3DA80];
  v4 = [v1 objectID];
  [v2 postNotificationName:v3 object:v4];

  v5 = sub_21B4C73C8();
  sub_21B4C7438();
  v6 = sub_21B4C9E48();
  if (sub_21B4CA148())
  {
    v8 = v0[7];
    v7 = v0[8];
    v9 = v0[6];

    sub_21B4C7468();

    if ((*(v8 + 88))(v7, v9) == *MEMORY[0x277D85B00])
    {
      v10 = "[Error] Interval already ended";
    }

    else
    {
      (*(v0[7] + 8))(v0[8], v0[6]);
      v10 = "";
    }

    v11 = swift_slowAlloc();
    *v11 = 0;
    v12 = sub_21B4C7368();
    _os_signpost_emit_with_name_impl(&dword_21B365000, v5, v6, v12, "PrefetchShowArtworkInterval", v10, v11, 2u);
    MEMORY[0x21CEF5710](v11, -1, -1);
  }

  v14 = v0[10];
  v13 = v0[11];
  v15 = v0[9];

  (*(v14 + 8))(v13, v15);

  v16 = v0[1];

  return v16();
}

uint64_t sub_21B419C94(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_21B419CB4, 0, 0);
}

uint64_t sub_21B419CB4()
{
  v1 = (v0[3] + OBJC_IVAR___PUIFeedManagerArtworkBridge_imageProvider);
  v3 = v1[3];
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_21B419D80;
  v5 = v0[2];

  return ImageProvider.prefetching(artwork:)(v5, v3, v2);
}

uint64_t sub_21B419D80()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

id FeedManagerArtworkBridge.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FeedManagerArtworkBridge.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FeedManagerArtworkBridge(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_21B41A0A4(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(a1, a2, a3);
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

id sub_21B41A118(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, char *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v32 = a3;
  v33 = a5;
  v31 = a4;
  v30 = a12;
  v34 = sub_21B4C73F8();
  v17 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38[3] = a7;
  v38[4] = a10;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v38);
  (*(*(a7 - 8) + 32))(boxed_opaque_existential_1, a1, a7);
  v37[3] = a8;
  v37[4] = a11;
  v21 = __swift_allocate_boxed_opaque_existential_1(v37);
  (*(*(a8 - 8) + 32))(v21, a2, a8);
  v36[3] = a9;
  v36[4] = v30;
  v22 = __swift_allocate_boxed_opaque_existential_1(v36);
  (*(*(a9 - 8) + 32))(v22, v31, a9);
  sub_21B3F821C(v38, &a6[OBJC_IVAR___PUIFeedManagerArtworkBridge_imageProvider]);
  sub_21B3F821C(v37, &a6[OBJC_IVAR___PUIFeedManagerArtworkBridge_imageStore]);
  v23 = v32;
  *&a6[OBJC_IVAR___PUIFeedManagerArtworkBridge_imageDownloader] = v32;
  sub_21B3F821C(v36, &a6[OBJC_IVAR___PUIFeedManagerArtworkBridge_fileManager]);
  v24 = v33;
  sub_21B3944F0(v33, &a6[OBJC_IVAR___PUIFeedManagerArtworkBridge_caches], type metadata accessor for AssetCaches);
  v25 = v23;
  sub_21B4C73A8();
  (*(v17 + 32))(&a6[OBJC_IVAR___PUIFeedManagerArtworkBridge_signposter], v19, v34);
  v26 = type metadata accessor for FeedManagerArtworkBridge(0);
  v35.receiver = a6;
  v35.super_class = v26;
  v27 = objc_msgSendSuper2(&v35, sel_init);
  sub_21B3873C8(v24, type metadata accessor for AssetCaches);
  __swift_destroy_boxed_opaque_existential_1(v36);
  __swift_destroy_boxed_opaque_existential_1(v37);
  __swift_destroy_boxed_opaque_existential_1(v38);
  return v27;
}

id sub_21B41A3C0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10, uint64_t a11)
{
  v33 = a3;
  v34 = a5;
  v30 = a2;
  v31 = a4;
  v28 = a1;
  v32 = a10;
  v13 = *(a9 - 8);
  v29 = a11;
  MEMORY[0x28223BE20](a1);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v23);
  v25 = &v28 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = objc_allocWithZone(type metadata accessor for FeedManagerArtworkBridge(0));
  (*(v22 + 16))(v25, v28, a7);
  (*(v17 + 16))(v20, v30, a8);
  (*(v13 + 16))(v15, v31, a9);
  return sub_21B41A118(v25, v20, v33, v15, v34, v26, a7, a8, a9, v32, *(&v32 + 1), v29);
}

unint64_t sub_21B41A610()
{
  result = qword_2811FCE18;
  if (!qword_2811FCE18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD86A58, &qword_21B4D2840);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811FCE18);
  }

  return result;
}

uint64_t sub_21B41A674(void *a1)
{
  v2 = v1;
  v40 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86EE0, &qword_21B4D5680);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v37 - v4;
  v6 = sub_21B4C7558();
  v38 = *(v6 - 8);
  v39 = v6;
  MEMORY[0x28223BE20](v6);
  v37 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21B4C7388();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v37 - v13;
  sub_21B4C73C8();
  sub_21B4C7358();
  v15 = sub_21B4C73C8();
  v16 = sub_21B4C9E58();
  if (sub_21B4CA148())
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    v18 = sub_21B4C7368();
    _os_signpost_emit_with_name_impl(&dword_21B365000, v15, v16, v18, "PrefetchShowArtworkInterval", "", v17, 2u);
    MEMORY[0x21CEF5710](v17, -1, -1);
  }

  (*(v9 + 16))(v11, v14, v8);
  sub_21B4C7458();
  swift_allocObject();
  v19 = sub_21B4C7448();
  (*(v9 + 8))(v14, v8);
  v20 = v40;
  v21 = [v40 uuid];
  if (v21)
  {
    v22 = v21;
    v23 = sub_21B4C9708();
    v25 = v24;

    v26 = *&v2[OBJC_IVAR___PUIFeedManagerArtworkBridge_imageStore + 24];
    v27 = *&v2[OBJC_IVAR___PUIFeedManagerArtworkBridge_imageStore + 32];
    __swift_project_boxed_opaque_existential_1(&v2[OBJC_IVAR___PUIFeedManagerArtworkBridge_imageStore], v26);
    (*(v27 + 56))(v23, v25, v26, v27);
  }

  else
  {
    v28 = v37;
    sub_21B4C74E8();
    v29 = sub_21B4C7538();
    v30 = sub_21B4C9CE8();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_21B365000, v29, v30, "Unable to invalidate existing artwork, no podcast UUID", v31, 2u);
      MEMORY[0x21CEF5710](v31, -1, -1);
    }

    (*(v38 + 8))(v28, v39);
  }

  sub_21B4C9A38();
  v32 = sub_21B4C9A58();
  (*(*(v32 - 8) + 56))(v5, 0, 1, v32);
  v33 = swift_allocObject();
  v33[2] = 0;
  v33[3] = 0;
  v33[4] = v20;
  v33[5] = v2;
  v33[6] = v19;
  v34 = v20;
  v35 = v2;
  sub_21B43614C(0, 0, v5, &unk_21B4D3E48, v33);
}

uint64_t type metadata accessor for FeedManagerArtworkBridge(uint64_t a1)
{
  result = qword_2811FEB40;
  if (!qword_2811FEB40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21B41AB1C(uint64_t a1)
{
  result = type metadata accessor for AssetCaches(319);
  if (v2 <= 0x3F)
  {
    result = sub_21B4C73F8();
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

uint64_t sub_21B41AC98(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_21B40998C;

  return sub_21B4196F4(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_21B41AD60(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21B40998C;

  return sub_21B419C94(a1, v4);
}

uint64_t MTImageStore.asyncImage(forKey:size:imageBlur:completionHandler:)(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = *a5;
  v13 = *(a5 + 8);
  v14 = *(a5 + 9);
  v15 = sub_21B4C96C8();
  if (v14)
  {
    v16 = 0;
  }

  else
  {
    v17 = objc_allocWithZone(IMImageBlur);
    if (v13)
    {
      v18 = 0.0;
      v19 = 0;
    }

    else
    {
      v19 = 1;
      v18 = v12;
    }

    v16 = [v17 initWithStyle:v19 radius:v18];
  }

  v22[4] = a6;
  v22[5] = a7;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 1107296256;
  v22[2] = sub_21B41AF50;
  v22[3] = &block_descriptor_1;
  v20 = _Block_copy(v22);

  [v7 asyncImageForKey:v15 size:v16 modifier:v20 completionHandler:{a2, a3}];
  _Block_release(v20);

  return swift_unknownObjectRelease();
}

void sub_21B41AF50(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = sub_21B4C9708();
  v7 = v6;

  v8 = a2;
  v4(a2, v5, v7);
}

id MTImageStore.hasItem(forKey:size:imageBlur:)(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5)
{
  v8 = *a5;
  v9 = *(a5 + 8);
  v10 = *(a5 + 9);
  v11 = sub_21B4C96C8();
  if (v10)
  {
    v12 = 0;
  }

  else
  {
    v13 = objc_allocWithZone(IMImageBlur);
    if (v9)
    {
      v14 = 0.0;
      v15 = 0;
    }

    else
    {
      v15 = 1;
      v14 = v8;
    }

    v12 = [v13 initWithStyle:v15 radius:v14];
  }

  v16 = [v5 hasItemForKey:v11 size:v12 modifier:{a2, a3}];

  swift_unknownObjectRelease();
  return v16;
}

id sub_21B41B0B4(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5, SEL *a6)
{
  v10 = *a5;
  v11 = *(a5 + 8);
  v12 = *(a5 + 9);
  v13 = sub_21B4C96C8();
  if (v12)
  {
    v14 = 0;
  }

  else
  {
    v15 = objc_allocWithZone(IMImageBlur);
    if (v11)
    {
      v16 = 0.0;
      v17 = 0;
    }

    else
    {
      v17 = 1;
      v16 = v10;
    }

    v14 = [v15 initWithStyle:v17 radius:v16];
  }

  v18 = [v6 *a6];

  swift_unknownObjectRelease();
  return v18;
}

Swift::Void __swiftcall MTImageStore.invalidate(for:)(Swift::String a1)
{
  v2 = sub_21B4C96C8();
  [v1 invalidateImageForKey_];
}

id sub_21B41B1D4(uint64_t a1)
{
  v2 = *v1;
  v3 = sub_21B4C96C8();
  v4 = [v2 imageForKey_];

  return v4;
}

id sub_21B41B2B8(uint64_t a1)
{
  v2 = *v1;
  v3 = sub_21B4C96C8();
  v4 = [v2 hasItemForKey_];

  return v4;
}

void sub_21B41B300(uint64_t a1)
{
  v2 = *v1;
  v3 = sub_21B4C96C8();
  [v2 invalidateImageForKey_];
}

uint64_t MTImageStore.publisher<A>(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_21B4C64F8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD86E60, &unk_21B4D39D0);
  sub_21B4C76F8();
  (*(v8 + 16))(v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;
  (*(v8 + 32))(v11 + v10, v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  *(v11 + ((v9 + v10 + 7) & 0xFFFFFFFFFFFFFFF8)) = v3;
  v12 = v3;
  v15[1] = sub_21B4C7708();
  swift_getWitnessTable();
  v13 = sub_21B4C77D8();

  return v13;
}

uint64_t sub_21B41B528(void (*a1)(char *), uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v29 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86E60, &unk_21B4D39D0);
  MEMORY[0x28223BE20](v7);
  v9 = &v28 - v8;
  v10 = sub_21B4CA748();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v28 - v15;
  v17 = sub_21B4C5E78();
  v18 = v17 - 8;
  MEMORY[0x28223BE20](v17);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21B4C6488();
  v21 = *&v20[*(v18 + 72) + 8];

  sub_21B38F79C(v20);
  if (v21)
  {
    v22 = sub_21B4C96C8();

    v23 = [a4 imageUrlForKey_];

    if (v23)
    {
      sub_21B4C56E8();

      v24 = 0;
    }

    else
    {
      v24 = 1;
    }

    v26 = sub_21B4C5748();
    (*(*(v26 - 8) + 56))(v9, v24, 1, v26);
    sub_21B41B8D4(v9, v13);
  }

  else
  {
    v25 = sub_21B4C5748();
    (*(*(v25 - 8) + 56))(v16, 1, 1, v25);
    v13 = v16;
  }

  swift_storeEnumTagMultiPayload();
  v29(v13);
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_21B41B814(void (*a1)(char *), uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(sub_21B4C64F8() - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = *(v2 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_21B41B528(a1, a2, v2 + v8, v9, v5, v6);
}

uint64_t sub_21B41B8D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86E60, &unk_21B4D39D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t ContentMode.init(contentMode:)(unint64_t result)
{
  if (result >= 0xD)
  {
    return 13;
  }

  return result;
}

uint64_t PreparedArtworkRequest.init(request:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21B4C64F8();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t PreparedArtworkRequest.request.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21B4C64F8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_21B41BA34()
{
  sub_21B4CA6E8();
  MEMORY[0x21CEF3E40](0);
  return sub_21B4CA738();
}

uint64_t sub_21B41BAA0(uint64_t a1)
{
  sub_21B4CA6E8();
  MEMORY[0x21CEF3E40](0);
  return sub_21B4CA738();
}

void sub_21B41BAF8(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x74736575716572 && a2 == 0xE700000000000000)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_21B4CA608();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_21B41BB8C(uint64_t a1)
{
  v2 = sub_21B41BD7C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21B41BBC8(uint64_t a1)
{
  v2 = sub_21B41BD7C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PreparedArtworkRequest.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD871B8, &qword_21B4D3E90);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21B41BD7C();
  sub_21B4CA798();
  sub_21B4C64F8();
  sub_21B36C24C(&qword_2811FD578, MEMORY[0x277D3D610], MEMORY[0x277D3D618]);
  sub_21B4CA558();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_21B41BD7C()
{
  result = qword_27CD871C0;
  if (!qword_27CD871C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD871C0);
  }

  return result;
}

uint64_t PreparedArtworkRequest.hash(into:)(uint64_t a1)
{
  sub_21B4C64F8();
  sub_21B36C24C(&qword_2811FD570, MEMORY[0x277D3D610], MEMORY[0x277D3D620]);

  return sub_21B4C9638();
}

uint64_t PreparedArtworkRequest.hashValue.getter()
{
  sub_21B4CA6E8();
  sub_21B4C64F8();
  sub_21B36C24C(&qword_2811FD570, MEMORY[0x277D3D610], MEMORY[0x277D3D620]);
  sub_21B4C9638();
  return sub_21B4CA738();
}

uint64_t PreparedArtworkRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = sub_21B4C64F8();
  v16 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v19 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD871C8, &qword_21B4D3E98);
  v17 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for PreparedArtworkRequest(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21B41BD7C();
  sub_21B4CA778();
  if (!v2)
  {
    v12 = v16;
    v13 = v18;
    sub_21B36C24C(&qword_2811FD568, MEMORY[0x277D3D610], MEMORY[0x277D3D630]);
    sub_21B4CA538();
    (*(v17 + 8))(v8, v6);
    (*(v12 + 32))(v11, v19, v4);
    sub_21B40DA5C(v11, v13);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21B41C17C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD871B8, &qword_21B4D3E90);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21B41BD7C();
  sub_21B4CA798();
  sub_21B4C64F8();
  sub_21B36C24C(&qword_2811FD578, MEMORY[0x277D3D610], MEMORY[0x277D3D618]);
  sub_21B4CA558();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_21B41C2F4()
{
  sub_21B4CA6E8();
  sub_21B4C64F8();
  sub_21B36C24C(&qword_2811FD570, MEMORY[0x277D3D610], MEMORY[0x277D3D620]);
  sub_21B4C9638();
  return sub_21B4CA738();
}

uint64_t sub_21B41C37C(uint64_t a1)
{
  sub_21B4C64F8();
  sub_21B36C24C(&qword_2811FD570, MEMORY[0x277D3D610], MEMORY[0x277D3D620]);

  return sub_21B4C9638();
}

uint64_t PreparedArtworkRequest.encode(_:)(UIImage *a1)
{
  v2 = sub_21B4C5E78();
  v3 = v2 - 8;
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21B4C6488();
  v6 = v5[*(v3 + 60)];
  sub_21B38F79C(v5);
  if ((v6 - 1) < 2)
  {
    v7 = UIImageJPEGRepresentation(a1, 1.0);
    if (!v7)
    {
      sub_21B41C5A8();
      swift_allocError();
      v9 = 1;
LABEL_9:
      *v8 = v9;
LABEL_12:
      swift_willThrow();
      return v6;
    }

    goto LABEL_6;
  }

  if (!v6)
  {
    v7 = UIImagePNGRepresentation(a1);
    if (!v7)
    {
      sub_21B41C5A8();
      swift_allocError();
      *v13 = 0;
      goto LABEL_12;
    }

LABEL_6:
    v10 = v7;
    v6 = sub_21B4C5788();

    return v6;
  }

  v6 = a1;
  v11 = UIImage.heicData(compressionQuality:)(1.0);
  if (v12 >> 60 == 15)
  {
    sub_21B41C5A8();
    swift_allocError();
    v9 = 2;
    goto LABEL_9;
  }

  return v11;
}

unint64_t sub_21B41C5A8()
{
  result = qword_27CD871D0;
  if (!qword_27CD871D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD871D0);
  }

  return result;
}

id PreparedArtworkRequest.decode(_:)(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(MEMORY[0x277D755B8]);
  v3 = sub_21B4C5768();
  v4 = [v2 initWithData_];

  if (!v4)
  {
    sub_21B41C5A8();
    swift_allocError();
    *v5 = 3;
    swift_willThrow();
  }

  return v4;
}

uint64_t PreparedArtworkRequest.CodingError.hashValue.getter()
{
  v1 = *v0;
  sub_21B4CA6E8();
  MEMORY[0x21CEF3E40](v1);
  return sub_21B4CA738();
}

void sub_21B41C750(void *a3@<X8>)
{
  v4 = objc_allocWithZone(MEMORY[0x277D755B8]);
  v5 = sub_21B4C5768();
  v6 = [v4 initWithData_];

  if (v6)
  {
    *a3 = v6;
  }

  else
  {
    sub_21B41C5A8();
    swift_allocError();
    *v7 = 3;
    swift_willThrow();
  }
}

unint64_t sub_21B41C810()
{
  result = qword_27CD871D8;
  if (!qword_27CD871D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD871D8);
  }

  return result;
}

unint64_t sub_21B41C890()
{
  result = qword_27CD871E0;
  if (!qword_27CD871E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD871E0);
  }

  return result;
}

unint64_t sub_21B41C8E8()
{
  result = qword_27CD871E8;
  if (!qword_27CD871E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD871E8);
  }

  return result;
}

unint64_t sub_21B41C940()
{
  result = qword_27CD871F0;
  if (!qword_27CD871F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD871F0);
  }

  return result;
}

UIImage *ThumbnailImageResizer.resize(image:to:displayScale:)(UIImage *a1, double a2, double a3, double a4)
{
  v4 = _s10PodcastsUI21ThumbnailImageResizerV13resizeOptions4size12displayScaleSo15CFDictionaryRefaSo6CGSizeV_12CoreGraphics7CGFloatVtFZ_0(a2, a3, a4);
  v5 = sub_21B41CA60(a1);
  if (!v5)
  {
    goto LABEL_6;
  }

  v6 = v5;
  ThumbnailAtIndex = CGImageSourceCreateThumbnailAtIndex(v5, 0, v4);
  if (!ThumbnailAtIndex)
  {

    v4 = v6;
LABEL_6:

    goto LABEL_7;
  }

  v8 = ThumbnailAtIndex;
  v9 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage_];

  if (v9)
  {
    return v9;
  }

LABEL_7:

  return a1;
}

CGImageSourceRef sub_21B41CA60(UIImage *a1)
{
  v2 = sub_21B4C7558();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v43 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD871F8, &qword_21B4D4278);
  inited = swift_initStackObject();
  v10 = MEMORY[0x277CD3618];
  *(inited + 16) = xmmword_21B4D2830;
  v11 = *v10;
  *(inited + 32) = v11;
  *(inited + 40) = 0;
  v12 = v11;
  sub_21B40CF50(inited);
  swift_setDeallocating();
  sub_21B41D1D0(inited + 32);
  type metadata accessor for CFString(0);
  sub_21B41D238();
  v13 = sub_21B4C9578();

  v14 = [(UIImage *)a1 CGImage];
  if (v14)
  {
    v15 = v14;
    v16 = CGImageGetDataProvider(v14);

    if (v16)
    {
      v17 = CGImageSourceCreateWithDataProvider(v16, v13);
      if (v17)
      {
        v18 = v17;
        if ((CGImageSourceGetStatus(v17) + 5) >= 3)
        {
          sub_21B4C74E8();
          v40 = sub_21B4C7538();
          v41 = sub_21B4C9CD8();
          if (os_log_type_enabled(v40, v41))
          {
            v42 = swift_slowAlloc();
            *v42 = 0;
            _os_log_impl(&dword_21B365000, v40, v41, "Resized using dataProvider", v42, 2u);
            MEMORY[0x21CEF5710](v42, -1, -1);
          }

          else
          {
          }

          (*(v3 + 8))(v8, v2);
          return v18;
        }
      }

      else
      {
        v18 = v16;
      }
    }
  }

  if ((sub_21B4C61E8() & 1) == 0)
  {
    v23 = UIImagePNGRepresentation(a1);
    if (v23)
    {
      v24 = v23;
      v21 = sub_21B4C5788();
      v22 = v25;

      goto LABEL_13;
    }

LABEL_21:

    return 0;
  }

  v19 = UIImage.heicData(compressionQuality:)(1.0);
  if (v20 >> 60 == 15)
  {
    goto LABEL_21;
  }

  v21 = v19;
  v22 = v20;
LABEL_13:
  sub_21B4C74E8();
  v26 = sub_21B4C7538();
  v27 = sub_21B4C9CD8();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v45 = v13;
    v46 = v29;
    v30 = v3;
    v31 = v29;
    *v28 = 136315138;
    v32 = sub_21B4C61E8();
    v33 = (v32 & 1) == 0;
    if (v32)
    {
      v34 = 1128875336;
    }

    else
    {
      v34 = 4673104;
    }

    if (v33)
    {
      v35 = 0xE300000000000000;
    }

    else
    {
      v35 = 0xE400000000000000;
    }

    v36 = sub_21B36CF74(v34, v35, &v46);
    v44 = v2;
    v37 = v36;

    *(v28 + 4) = v37;
    _os_log_impl(&dword_21B365000, v26, v27, "Resized using image data: (%s)", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v31);
    MEMORY[0x21CEF5710](v31, -1, -1);
    MEMORY[0x21CEF5710](v28, -1, -1);

    (*(v30 + 8))(v5, v44);
    v13 = v45;
  }

  else
  {

    (*(v3 + 8))(v5, v2);
  }

  v38 = sub_21B4C5768();
  v18 = CGImageSourceCreateWithData(v38, v13);

  sub_21B36D4F4(v21, v22);
  return v18;
}

UIImage_optional __swiftcall ThumbnailImageResizer.resizedImage(from:options:)(CGImageSourceRef from, CFDictionaryRef options)
{
  ThumbnailAtIndex = CGImageSourceCreateThumbnailAtIndex(from, 0, options);
  if (ThumbnailAtIndex)
  {
    v4 = ThumbnailAtIndex;
    v5 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage_];
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  result.value.super.isa = v6;
  result.is_nil = v3;
  return result;
}

id ThumbnailImageResizer.resizedImage(at:to:displayScale:)(double a1, double a2, double a3)
{
  v3 = _s10PodcastsUI21ThumbnailImageResizerV13resizeOptions4size12displayScaleSo15CFDictionaryRefaSo6CGSizeV_12CoreGraphics7CGFloatVtFZ_0(a1, a2, a3);
  sub_21B4C5708();
  v4 = sub_21B4C96C8();

  v5 = CGImageSourceCreateWithFile();

  if (v5)
  {
    ThumbnailAtIndex = CGImageSourceCreateThumbnailAtIndex(v5, 0, v3);
    if (ThumbnailAtIndex)
    {
      v7 = ThumbnailAtIndex;
      v8 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage_];

      result = v8;
      if (v8)
      {
        return result;
      }

      return 0;
    }
  }

  return 0;
}

uint64_t _s10PodcastsUI21ThumbnailImageResizerV13resizeOptions4size12displayScaleSo15CFDictionaryRefaSo6CGSizeV_12CoreGraphics7CGFloatVtFZ_0(double a1, double a2, double a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87208, &qword_21B4D4288);
  inited = swift_initStackObject();
  v7 = inited;
  *(inited + 16) = xmmword_21B4D1CD0;
  v8 = *MEMORY[0x277CD3610];
  *(inited + 32) = *MEMORY[0x277CD3610];
  v9 = MEMORY[0x277D839B0];
  *(inited + 40) = 1;
  v10 = *MEMORY[0x277CD3568];
  *(inited + 64) = v9;
  *(inited + 72) = v10;
  *(inited + 80) = 1;
  v11 = *MEMORY[0x277CD3578];
  *(inited + 104) = v9;
  *(inited + 112) = v11;
  *(inited + 120) = 1;
  v12 = *MEMORY[0x277CD3660];
  *(inited + 144) = v9;
  *(inited + 152) = v12;
  if (a1 > a2)
  {
    v13 = a1;
  }

  else
  {
    v13 = a2;
  }

  v14 = MEMORY[0x277D85048];
  v15 = MEMORY[0x277CD3678];
  *(inited + 160) = v13 * a3;
  v16 = *v15;
  *(inited + 184) = v14;
  *(inited + 192) = v16;
  *(inited + 224) = v9;
  *(inited + 200) = 1;
  v17 = v8;
  v18 = v10;
  v19 = v11;
  v20 = v12;
  v21 = v16;
  sub_21B40CE28(v7);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87020, &unk_21B4D4290);
  swift_arrayDestroy();
  type metadata accessor for CFString(0);
  sub_21B41D238();
  v22 = sub_21B4C9578();

  return v22;
}

uint64_t sub_21B41D1D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87200, &qword_21B4D4280);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21B41D238()
{
  result = qword_281200550;
  if (!qword_281200550)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281200550);
  }

  return result;
}

uint64_t UIImage.heicData(compressionQuality:)(double a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD87210, &unk_21B4D42B0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21B4D42A0;
  v5 = *MEMORY[0x277CD2D48];
  type metadata accessor for CFString(0);
  v7 = v6;
  *(v4 + 56) = v6;
  *(v4 + 32) = v5;
  v8 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  v9 = v5;
  v10 = [v8 initWithDouble_];
  v11 = sub_21B3F12CC(0, qword_2812003E0, 0x277CCABB0);
  v12 = MEMORY[0x277CD2D78];
  *(v4 + 64) = v10;
  v13 = *v12;
  *(v4 + 120) = v7;
  *(v4 + 88) = v11;
  *(v4 + 96) = v13;
  v14 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  v15 = v13;
  v16 = [v14 initWithBool_];
  v17 = MEMORY[0x277CD3678];
  *(v4 + 128) = v16;
  v18 = *v17;
  *(v4 + 184) = v7;
  *(v4 + 152) = v11;
  *(v4 + 160) = v18;
  v19 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  v20 = v18;
  v21 = [v19 initWithBool_];
  *(v4 + 216) = v11;
  *(v4 + 192) = v21;
  sub_21B3F12CC(0, &unk_281200528, 0x277CBEAC0);
  v22 = sub_21B4C9C88();
  v23 = [(UIImage *)v2 CGImage];
  if (v23)
  {
    v24 = v23;
    Mutable = CFDataCreateMutable(0, 0);
    if (Mutable)
    {
      v26 = Mutable;
      v27 = v22;
      v28 = sub_21B4C96C8();
      v29 = CGImageDestinationCreateWithData(v26, v28, 1uLL, v27);

      if (v29)
      {
        CGImageDestinationAddImage(v29, v24, 0);
        if (CGImageDestinationFinalize(v29))
        {
          v30 = v26;
          v31 = sub_21B4C5788();

          return v31;
        }

        return 0;
      }
    }

    else
    {
      v26 = v24;
    }
  }

  v33 = UIImageHEICRepresentation(v2);
  if (v33)
  {
    v34 = v33;
    v35 = sub_21B4C5788();

    return v35;
  }

  return 0;
}

uint64_t sub_21B41D554(uint64_t a1, char a2, uint64_t (*a3)(uint64_t *))
{
  v4 = a1;
  v5 = a2 & 1;
  return a3(&v4);
}

uint64_t AssetProcessingStep<>.applyingEffects(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = MEMORY[0x28223BE20](a1);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10, v4, a2, v8);

  return sub_21B41D678(v12, v10, a2, a3, a4);
}

uint64_t sub_21B41D678@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v19 = a1;
  v9 = sub_21B4C64F8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for EffectsArtworkProcessingStep(0, a3, a4, v13);
  v15 = *(a3 - 8);
  (*(v15 + 16))(a5 + *(v14 + 36), a2, a3);
  sub_21B4C68C8();
  v16 = v19;
  sub_21B4C63E8();
  (*(v15 + 8))(a2, a3);
  result = (*(v10 + 8))(v12, v9);
  *(a5 + *(v14 + 40)) = v16;
  return result;
}

unint64_t sub_21B41D808@<X0>(unint64_t *a1@<X8>)
{
  result = ArtworkContent.image()();
  *a1 = result;
  return result;
}

uint64_t sub_21B41D834@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v30 = a4;
  v31 = a5;
  v29 = a2;
  v32 = a6;
  v10 = sub_21B4C64F8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = type metadata accessor for EffectsArtworkProcessingStep(0, a4, a5, v13);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v27 - v18;
  v28 = *a1;
  (*(v15 + 16))(&v27 - v18, v29, v14, v17);
  (*(v11 + 16))(&v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v10);
  v20 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v21 = (v16 + *(v11 + 80) + v20) & ~*(v11 + 80);
  v22 = swift_allocObject();
  v23 = v31;
  *(v22 + 16) = v30;
  *(v22 + 24) = v23;
  (*(v15 + 32))(v22 + v20, v19, v14);
  (*(v11 + 32))(v22 + v21, &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  v24 = v28;
  *(v22 + ((v12 + v21 + 7) & 0xFFFFFFFFFFFFFFF8)) = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86B40, &unk_21B4D2AC0);
  swift_allocObject();
  v25 = v24;
  result = sub_21B4C7718();
  *v32 = result;
  return result;
}

uint64_t sub_21B41DAAC@<X0>(void **a1@<X0>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(type metadata accessor for EffectsArtworkProcessingStep(0, v6, v7, a2) - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(sub_21B4C64F8() - 8);
  v12 = v3 + ((v9 + v10 + *(v11 + 80)) & ~*(v11 + 80));

  return sub_21B41D834(a1, v3 + v9, v12, v6, v7, a3);
}

uint64_t sub_21B41DBAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  type metadata accessor for EffectsArtworkProcessingStep(0, a6, a7, v14);

  swift_getWitnessTable();
  sub_21B4C6908();
  if (*(&v19 + 1))
  {
    __swift_project_boxed_opaque_existential_1(&v18, *(&v19 + 1));
    sub_21B4C64A8();
    sub_21B4C71E8();

    __swift_destroy_boxed_opaque_existential_1(&v18);
  }

  else
  {
    sub_21B3F2D94(&v18, &qword_27CD86D80, qword_21B4D2BF0);
    memset(v21, 0, sizeof(v21));
    v22 = 0;
  }

  sub_21B388FC8(v21, &v18);
  v15 = swift_allocObject();
  v16 = v19;
  *(v15 + 16) = v18;
  *(v15 + 32) = v16;
  *(v15 + 48) = v20;
  *(v15 + 56) = sub_21B36CB80;
  *(v15 + 64) = v13;
  sub_21B41DE40(a4, a5, sub_21B41F140, v15);

  return sub_21B3F2D94(v21, &qword_27CD872B0, &unk_21B4D4450);
}

uint64_t sub_21B41DD8C(uint64_t a1, char a2, uint64_t a3, uint64_t (*a4)(uint64_t, void))
{
  sub_21B388FC8(a3, v8);
  if (v9)
  {
    __swift_project_boxed_opaque_existential_1(v8, v9);
    sub_21B4C6348();
    __swift_destroy_boxed_opaque_existential_1(v8);
  }

  else
  {
    sub_21B3F2D94(v8, &qword_27CD872B0, &unk_21B4D4450);
  }

  return a4(a1, a2 & 1);
}

double sub_21B41DE40(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_21B4C64F8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86EE0, &qword_21B4D5680);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v20 - v12;
  v14 = sub_21B4C9A58();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  (*(v9 + 16))(&v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8);
  v15 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = 0;
  *(v16 + 3) = 0;
  *(v16 + 4) = a2;
  (*(v9 + 32))(&v16[v15], &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  v17 = &v16[(v10 + v15 + 7) & 0xFFFFFFFFFFFFFFF8];
  *v17 = a3;
  *(v17 + 1) = a4;
  v18 = a2;

  sub_21B43614C(0, 0, v13, &unk_21B4D4468, v16);

  return result;
}

uint64_t sub_21B41E048@<X0>(UIImage **a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v20 = a4;
  v7 = sub_21B4C5E78();
  MEMORY[0x28223BE20](v7);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_21B4C5748();
  v10 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21B41E330(*a1);
  if (v14 >> 60 == 15)
  {
    type metadata accessor for EffectsArtworkProcessingStep.EffectError(0, a2, a3, v15);
    swift_getWitnessTable();
    swift_allocError();
    return swift_willThrow();
  }

  else
  {
    v17 = v13;
    v18 = v14;
    sub_21B4C6488();
    sub_21B38F79C(v9);
    sub_21B41E3CC(v12);
    v19 = v22;
    sub_21B4C5798();
    if (v19)
    {
      (*(v10 + 8))(v12, v21);
      return sub_21B36D4E0(v17, v18);
    }

    else
    {
      sub_21B36D4E0(v17, v18);
      (*(v10 + 32))(v20, v12, v21);
      sub_21B4C6368();
      return swift_storeEnumTagMultiPayload();
    }
  }
}

uint64_t sub_21B41E298@<X0>(UIImage **a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  type metadata accessor for EffectsArtworkProcessingStep(0, v6, v7, a2);
  return sub_21B41E048(a1, v6, v7, a3);
}

NSData *sub_21B41E330(UIImage *a1)
{
  v2 = sub_21B4C61C8();
  if ((v2 - 1) >= 2)
  {
    if (v2)
    {
      return UIImage.heicData(compressionQuality:)(1.0);
    }

    else
    {
      result = UIImagePNGRepresentation(a1);
      if (result)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
    result = UIImageJPEGRepresentation(a1, 1.0);
    if (result)
    {
LABEL_3:
      v4 = result;
      v5 = sub_21B4C5788();

      return v5;
    }
  }

  return result;
}

uint64_t sub_21B41E3CC@<X0>(uint64_t a2@<X8>)
{
  v18[1] = a2;
  v2 = sub_21B4C5888();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21B4C5748();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v18 - v11;
  v13 = [objc_opt_self() defaultManager];
  v14 = [v13 temporaryDirectory];

  sub_21B4C56E8();
  sub_21B4C5878();
  sub_21B4C5868();
  (*(v3 + 8))(v5, v2);
  sub_21B4C56A8();

  v15 = *(v7 + 8);
  v15(v9, v6);
  v18[2] = 0x656666652E706D74;
  v18[3] = 0xEB000000002E7463;
  v16 = sub_21B4C61D8();
  MEMORY[0x21CEF2F30](v16);

  sub_21B4C56B8();

  return (v15)(v12, v6);
}

uint64_t sub_21B41E644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = sub_21B4C59D8();
  v7[6] = v8;
  v7[7] = *(v8 - 8);
  v7[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21B41E708, 0, 0);
}

uint64_t sub_21B41E708(uint64_t a1)
{
  v2 = v1[2];
  sub_21B4C6388();
  sub_21B4C63A8();
  v3 = [objc_opt_self() traitCollectionWithUserInterfaceStyle_];
  v4 = v2;
  sub_21B4C59C8();
  sub_21B4C59B8();
  v5 = swift_task_alloc();
  v1[9] = v5;
  *v5 = v1;
  v5[1] = sub_21B41E824;
  v6 = v1[8];

  return MEMORY[0x2821851E8](v6);
}

uint64_t sub_21B41E824(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v5 = sub_21B41EA0C;
  }

  else
  {
    *(v4 + 88) = a1;
    v5 = sub_21B41E94C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_21B41E94C()
{
  v1 = v0[11];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[6];
  v5 = v0[4];
  v6 = v1;
  v5(v1, 0);

  (*(v3 + 8))(v2, v4);

  v7 = v0[1];

  return v7();
}

uint64_t sub_21B41EA0C()
{
  v1 = v0[10];
  v2 = v0[4];
  (*(v0[7] + 8))(v0[8], v0[6]);
  v3 = v1;
  v2(v1, 1);

  v4 = v0[1];

  return v4();
}

uint64_t EffectsArtworkProcessingStep.EffectError.hashValue.getter()
{
  sub_21B4CA6E8();
  MEMORY[0x21CEF3E40](0);
  return sub_21B4CA738();
}

uint64_t sub_21B41EB4C(int *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_21B4C64F8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(*(a3 + 16) - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= v8)
  {
    v12 = *(v7 + 84);
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(*(v6 - 8) + 64) + v11;
  v14 = *(v9 + 64) + 7;
  if (v12 >= a2)
  {
    goto LABEL_29;
  }

  v15 = ((v14 + (v13 & ~v11)) & 0xFFFFFFFFFFFFFFF8) + 8;
  v16 = v15 & 0xFFFFFFF8;
  if ((v15 & 0xFFFFFFF8) != 0)
  {
    v17 = 2;
  }

  else
  {
    v17 = a2 - v12 + 1;
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

  if (v19 > 1)
  {
    if (v19 == 2)
    {
      v20 = *(a1 + v15);
      if (!v20)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v20 = *(a1 + v15);
      if (!v20)
      {
        goto LABEL_29;
      }
    }

LABEL_26:
    v22 = v20 - 1;
    if (v16)
    {
      v22 = 0;
      v23 = *a1;
    }

    else
    {
      v23 = 0;
    }

    return v12 + (v23 | v22) + 1;
  }

  if (v19)
  {
    v20 = *(a1 + v15);
    if (v20)
    {
      goto LABEL_26;
    }
  }

LABEL_29:
  if (v8 == v12)
  {
    v24 = *(v7 + 48);

    return v24(a1);
  }

  else
  {
    v25 = (a1 + v13) & ~v11;
    if (v10 == v12)
    {
      v26 = *(v9 + 48);

      return v26(v25, v10);
    }

    else
    {
      v27 = *((v14 + v25) & 0xFFFFFFFFFFFFFFF8);
      if (v27 >= 0xFFFFFFFF)
      {
        LODWORD(v27) = -1;
      }

      return (v27 + 1);
    }
  }
}

void sub_21B41ED80(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = sub_21B4C64F8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(*(a4 + 16) - 8);
  v12 = *(v11 + 84);
  v13 = *(v9 + 64);
  v14 = *(v11 + 80);
  v15 = *(v11 + 64);
  if (v12 <= v10)
  {
    v16 = *(v9 + 84);
  }

  else
  {
    v16 = *(v11 + 84);
  }

  if (v16 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  v17 = v13 + v14;
  v18 = (v13 + v14) & ~v14;
  v19 = v15 + 7;
  v20 = ((v15 + 7 + v18) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v15 + 7 + v18) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v21 = a3 - v16 + 1;
  }

  else
  {
    v21 = 2;
  }

  if (v21 >= 0x10000)
  {
    v22 = 4;
  }

  else
  {
    v22 = 2;
  }

  if (v21 < 0x100)
  {
    v22 = 1;
  }

  if (v21 >= 2)
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  if (v16 < a3)
  {
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  if (a2 > v16)
  {
    if (v20)
    {
      v25 = 1;
    }

    else
    {
      v25 = a2 - v16;
    }

    if (v20)
    {
      v26 = ~v16 + a2;
      bzero(a1, v20);
      *a1 = v26;
    }

    if (v24 > 1)
    {
      if (v24 == 2)
      {
        *(a1 + v20) = v25;
      }

      else
      {
        *(a1 + v20) = v25;
      }
    }

    else if (v24)
    {
      *(a1 + v20) = v25;
    }

    return;
  }

  if (v24 > 1)
  {
    if (v24 != 2)
    {
      *(a1 + v20) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_38;
    }

    *(a1 + v20) = 0;
  }

  else if (v24)
  {
    *(a1 + v20) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_38;
  }

  if (!a2)
  {
    return;
  }

LABEL_38:
  if (v10 == v16)
  {
    v27 = *(v9 + 56);

    v27(a1, a2, v10, v8);
  }

  else
  {
    v28 = (a1 + v17) & ~v14;
    if (v12 == v16)
    {
      v29 = *(v11 + 56);

      v29(v28, a2);
    }

    else
    {
      if ((a2 & 0x80000000) != 0)
      {
        v30 = a2 & 0x7FFFFFFF;
      }

      else
      {
        v30 = (a2 - 1);
      }

      *((v19 + v28) & 0xFFFFFFFFFFFFFFF8) = v30;
    }
  }
}

uint64_t sub_21B41F014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = *(type metadata accessor for EffectsArtworkProcessingStep(0, v7, v8, a4) - 8);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = *(v9 + 64);
  v12 = *(sub_21B4C64F8() - 8);
  v13 = (v10 + v11 + *(v12 + 80)) & ~*(v12 + 80);
  v14 = *(v4 + ((*(v12 + 64) + v13 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_21B41DBAC(a1, a2, v4 + v10, v4 + v13, v14, v7, v8);
}

uint64_t sub_21B41F150(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_21B4C64F8() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_21B40998C;

  return sub_21B41E644(a1, v7, v8, v9, v1 + v6, v11, v12);
}

double ImageStoreArtworkSource.fetch(asset:)(uint64_t a1)
{
  v3 = sub_21B4C64F8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v7 = *v1;
  (*(v4 + 16))(v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3, v6);
  v8 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v9 = swift_allocObject();
  (*(v4 + 32))(v9 + v8, v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  *(v9 + ((v5 + v8 + 7) & 0xFFFFFFFFFFFFFFF8)) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD872B8, &qword_21B4D4470);
  swift_allocObject();
  v10 = v7;
  v12[1] = sub_21B4C7718();
  sub_21B4C6368();
  sub_21B3F1314(&qword_27CD872C0, &qword_27CD872B8, &qword_21B4D4470, MEMORY[0x277CBCEB0]);
  sub_21B4C7888();

  return result;
}

uint64_t sub_21B41F498(void (*a1)(char *), uint64_t a2, uint64_t a3, void *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86E60, &unk_21B4D39D0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v26 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CD872E0, &qword_21B4D45F0);
  MEMORY[0x28223BE20](v9);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v26 - v13;
  v15 = sub_21B4C5E78();
  v16 = v15 - 8;
  MEMORY[0x28223BE20](v15);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21B4C6488();
  v19 = *&v18[*(v16 + 72) + 8];

  sub_21B38F79C(v18);
  if (v19)
  {
    v20 = sub_21B4C96C8();

    v21 = [a4 imageUrlForKey_];

    if (v21)
    {
      sub_21B4C56E8();

      v22 = 0;
    }

    else
    {
      v22 = 1;
    }

    v24 = sub_21B4C5748();
    (*(*(v24 - 8) + 56))(v8, v22, 1, v24);
    sub_21B41B8D4(v8, v11);
  }

  else
  {
    v23 = sub_21B4C5748();
    (*(*(v23 - 8) + 56))(v14, 1, 1, v23);
    v11 = v14;
  }

  swift_storeEnumTagMultiPayload();
  a1(v11);
  return sub_21B3F2D94(v11, qword_27CD872E0, &qword_21B4D45F0);
}

uint64_t sub_21B41F748@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD86E60, &unk_21B4D39D0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v10 - v5;
  sub_21B3F2CD8(a1, v10 - v5);
  v7 = sub_21B4C5748();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_21B3F2D94(v6, &qword_27CD86E60, &unk_21B4D39D0);
    sub_21B41FCC4();
    swift_allocError();
    return swift_willThrow();
  }

  else
  {
    (*(v8 + 32))(a2, v6, v7);
    sub_21B4C6368();
    return swift_storeEnumTagMultiPayload();
  }
}

double sub_21B41F8B4(uint64_t a1)
{
  v3 = sub_21B4C64F8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v7 = *v1;
  (*(v4 + 16))(v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3, v6);
  v8 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v9 = swift_allocObject();
  (*(v4 + 32))(v9 + v8, v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  *(v9 + ((v5 + v8 + 7) & 0xFFFFFFFFFFFFFFF8)) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD872B8, &qword_21B4D4470);
  swift_allocObject();
  v10 = v7;
  v12[1] = sub_21B4C7718();
  sub_21B4C6368();
  sub_21B3F1314(&qword_27CD872C0, &qword_27CD872B8, &qword_21B4D4470, MEMORY[0x277CBCEB0]);
  sub_21B4C7888();

  return result;
}

uint64_t ImageStoreAssetError.hashValue.getter()
{
  sub_21B4CA6E8();
  MEMORY[0x21CEF3E40](0);
  return sub_21B4CA738();
}

unint64_t sub_21B41FB24()
{
  result = qword_27CD872C8;
  if (!qword_27CD872C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD872C8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UserSettings(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for UserSettings(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21B41FC18(void (*a1)(char *), uint64_t a2)
{
  v5 = *(sub_21B4C64F8() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_21B41F498(a1, a2, v2 + v6, v7);
}

unint64_t sub_21B41FCC4()
{
  result = qword_27CD872D8;
  if (!qword_27CD872D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD872D8);
  }

  return result;
}

uint64_t AssetProcessingStep<>.invalidate(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = MEMORY[0x28223BE20](a1);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11, v4, a2, v9);
  sub_21B3F821C(a1, v15);
  return InvalidateImageStoreValueProcessingStep.init(upstream:imageStore:)(v11, v15, a2, a3, a4);
}

uint64_t InvalidateImageStoreValueProcessingStep.init(upstream:imageStore:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 32))(a5, a1);
  v10 = a5 + *(type metadata accessor for InvalidateImageStoreValueProcessingStep(0, a3, a4, v9) + 36);

  return sub_21B36D484(a2, v10);
}

double sub_21B41FEE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_21B4C5E78();
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21B4C64F8();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for InvalidateImageStoreValueProcessingStep(0, a3, a4, v15);
  sub_21B4C68C8();
  sub_21B4C6488();
  (*(v12 + 8))(v14, v11);
  v17 = &v10[*(v8 + 72)];
  v18 = *v17;
  v19 = *(v17 + 1);

  sub_21B38F79C(v10);
  if (v19)
  {
    v21 = (a2 + *(v16 + 36));
    v22 = v21[3];
    v23 = v21[4];
    __swift_project_boxed_opaque_existential_1(v21, v22);
    (*(v23 + 56))(v18, v19, v22, v23);
  }

  return result;
}

double sub_21B420098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(type metadata accessor for InvalidateImageStoreValueProcessingStep(0, v6, v7, a4) - 8);
  v9 = v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_21B41FEE0(a1, v9, v6, v7);
}

uint64_t sub_21B42012C(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 40;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *(((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 24);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

double sub_21B420268(_DWORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 40;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFD8)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFD8)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFD8)
    {
      v15 = ~v7 + a2;
      v16 = a1;
      bzero(a1, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 40);
      a1 = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(a1 + v9) = v14;
      }

      else
      {
        *(a1 + v9) = v14;
      }
    }

    else if (v13)
    {
      *(a1 + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(a1 + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(a1 + v9) = 0;
  }

  else if (v13)
  {
    *(a1 + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v19 = (a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
    if ((a2 & 0x80000000) != 0)
    {
      result = 0.0;
      *(v19 + 8) = 0u;
      *(v19 + 24) = 0u;
      *v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      *(v19 + 24) = a2 - 1;
    }
  }

  else
  {
    v18 = *(v5 + 56);

    v18();
  }

  return result;
}

double AssetProcessingStep.mapMetadata<A>(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v15 = *(a3 - 8);
  v16 = MEMORY[0x28223BE20](a1);
  v18 = v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v18, v7, v16);
  (*(v15 + 32))(a7, v18, a3);
  v21[0] = a3;
  v21[1] = a4;
  v21[2] = a5;
  v21[3] = a6;
  v19 = (a7 + *(type metadata accessor for MapMetadataProcessingStep(0, v21) + 52));
  *v19 = a1;
  v19[1] = a2;

  return result;
}

uint64_t MapMetadataProcessingStep.init(upstream:transform:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  (*(*(a4 - 8) + 32))(a8, a1, a4);
  v17[0] = a4;
  v17[1] = a5;
  v17[2] = a6;
  v17[3] = a7;
  result = type metadata accessor for MapMetadataProcessingStep(0, v17);
  v16 = (a8 + *(result + 52));
  *v16 = a2;
  v16[1] = a3;
  return result;
}

uint64_t MapMetadataProcessingStep.metadata.getter(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v6 = &v9 - v5;
  v7 = *(v1 + *(a1 + 52));
  sub_21B4C68C8();
  v7(v6);
  return (*(v4 + 8))(v6, AssociatedTypeWitness);
}

uint64_t MapMetadataProcessingStep.transform.getter(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 52));

  return v2;
}

uint64_t sub_21B4207EC(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_21B420B68();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_21B420874(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_DWORD *sub_21B4209B0(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      *v18 = a2 & 0x7FFFFFFF;
      v18[1] = 0;
    }

    else
    {
      *v18 = a2 - 1;
    }
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

unint64_t sub_21B420B68()
{
  result = qword_27CD87368[0];
  if (!qword_27CD87368[0])
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, qword_27CD87368);
  }

  return result;
}

uint64_t AssetProcessingStep<>.prepareImageForDestination()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PreparedArtworkRequest(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21B4C64F8();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v18 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21B4C68C8();
  (*(v14 + 32))(v12, v16, v13);
  (*(v7 + 16))(v9, v3, a1);
  return sub_21B420DEC(v12, v9, a1, a2, a3);
}

uint64_t sub_21B420DEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_21B40DA5C(a1, a5);
  v10 = type metadata accessor for PrepareUIImageProcessingStep(0, a3, a4, v9);
  v11 = *(*(a3 - 8) + 32);
  v12 = a5 + *(v10 + 36);

  return v11(v12, a2, a3);
}

uint64_t sub_21B420E7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PreparedArtworkRequest(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_21B420EE0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_21B4C64F8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(*(a3 + 16) - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= v8)
  {
    v12 = *(v7 + 84);
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(*(v6 - 8) + 64) + v11;
  if (a2 <= v12)
  {
    goto LABEL_28;
  }

  v14 = (v13 & ~v11) + *(v9 + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((a2 - v12 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_27:
      if (v12)
      {
LABEL_28:
        if (v8 >= v10)
        {
          v23 = *(v7 + 48);

          return v23(a1);
        }

        else
        {
          v21 = *(v9 + 48);

          return v21((a1 + v13) & ~v11, v10);
        }
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_27;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = (v13 & ~v11) + *(v9 + 64);
    }

    else
    {
      v19 = 4;
    }

    if (v19 > 2)
    {
      if (v19 == 3)
      {
        v20 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v20 = *a1;
      }
    }

    else if (v19 == 1)
    {
      v20 = *a1;
    }

    else
    {
      v20 = *a1;
    }
  }

  else
  {
    v20 = 0;
  }

  return v12 + (v20 | v18) + 1;
}

void sub_21B421120(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_21B4C64F8() - 8);
  v9 = *(v8 + 84);
  v10 = *(*(a4 + 16) - 8);
  v11 = *(v10 + 84);
  v12 = *(v8 + 64);
  v13 = *(v10 + 80);
  if (v11 <= v9)
  {
    v14 = *(v8 + 84);
  }

  else
  {
    v14 = *(v10 + 84);
  }

  v15 = ((v12 + v13) & ~v13) + *(v10 + 64);
  if (a3 <= v14)
  {
    v16 = 0;
  }

  else if (v15 <= 3)
  {
    v19 = ((a3 - v14 + ~(-1 << (8 * v15))) >> (8 * v15)) + 1;
    if (HIWORD(v19))
    {
      v16 = 4;
    }

    else
    {
      if (v19 < 0x100)
      {
        v20 = 1;
      }

      else
      {
        v20 = 2;
      }

      if (v19 >= 2)
      {
        v16 = v20;
      }

      else
      {
        v16 = 0;
      }
    }
  }

  else
  {
    v16 = 1;
  }

  if (v14 < a2)
  {
    v17 = ~v14 + a2;
    if (v15 < 4)
    {
      v18 = (v17 >> (8 * v15)) + 1;
      if (v15)
      {
        v21 = v17 & ~(-1 << (8 * v15));
        bzero(a1, v15);
        if (v15 != 3)
        {
          if (v15 == 2)
          {
            *a1 = v21;
            if (v16 > 1)
            {
LABEL_57:
              if (v16 == 2)
              {
                *&a1[v15] = v18;
              }

              else
              {
                *&a1[v15] = v18;
              }

              return;
            }
          }

          else
          {
            *a1 = v17;
            if (v16 > 1)
            {
              goto LABEL_57;
            }
          }

          goto LABEL_54;
        }

        *a1 = v21;
        a1[2] = BYTE2(v21);
      }

      if (v16 > 1)
      {
        goto LABEL_57;
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v17;
      v18 = 1;
      if (v16 > 1)
      {
        goto LABEL_57;
      }
    }

LABEL_54:
    if (v16)
    {
      a1[v15] = v18;
    }

    return;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v15] = 0;
LABEL_30:
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!v16)
  {
    goto LABEL_30;
  }

  a1[v15] = 0;
  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v9 >= v11)
  {
    if (v9 >= a2)
    {
      v26 = *(v8 + 56);

      v26(a1, a2);
    }

    else
    {
      if (v12 <= 3)
      {
        v23 = ~(-1 << (8 * v12));
      }

      else
      {
        v23 = -1;
      }

      if (v12)
      {
        v24 = v23 & (~v9 + a2);
        if (v12 <= 3)
        {
          v25 = v12;
        }

        else
        {
          v25 = 4;
        }

        bzero(a1, v12);
        if (v25 > 2)
        {
          if (v25 == 3)
          {
            *a1 = v24;
            a1[2] = BYTE2(v24);
          }

          else
          {
            *a1 = v24;
          }
        }

        else if (v25 == 1)
        {
          *a1 = v24;
        }

        else
        {
          *a1 = v24;
        }
      }
    }
  }

  else
  {
    v22 = *(v10 + 56);

    v22(&a1[v12 + v13] & ~v13, a2, v11);
  }
}

uint64_t AssetProcessingStep<>.resize(for:using:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t x8_0@<X8>)
{
  sub_21B4C6388();
  v10 = v9;
  v12 = v11;
  sub_21B4C63A8();

  return AssetProcessingStep<>.resize(to:scale:using:)(a2, a3, a4, v10, v12, v13, x8_0);
}

uint64_t AssetProcessingStep<>.resize(to:scale:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, double a4@<D0>, double a5@<D1>, double a6@<D2>, uint64_t a7@<X8>)
{
  v14 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21B3F821C(v17, v20);
  (*(v14 + 16))(v16, v7, a2);
  return sub_21B421604(v20, v16, a2, a3, a7, a4, a5, a6);
}

uint64_t sub_21B421604@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>, double a8@<D2>)
{
  v25 = a1;
  v15 = sub_21B4C64F8();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for ResizeArtworkProcessingStep(0, a3, a4, v19);
  v21 = *(a3 - 8);
  (*(v21 + 16))(a5 + v20[9], a2, a3);
  sub_21B4C68C8();
  sub_21B4C64C8();
  (*(v21 + 8))(a2, a3);
  (*(v16 + 8))(v18, v15);
  v22 = (a5 + v20[10]);
  *v22 = a6;
  v22[1] = a7;
  *(a5 + v20[11]) = a8;
  return sub_21B36D484(v25, a5 + v20[12]);
}

uint64_t sub_21B4217D4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, UIImage *a5@<X4>, uint64_t a6@<X8>, double a7@<D0>, double a8@<D1>, double a9@<D2>)
{
  v111 = a4;
  v112 = a5;
  v104 = a3;
  v102 = a1;
  v91 = a6;
  v90 = sub_21B4C7408();
  v89 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v88 = &v88 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_21B4C5E78();
  MEMORY[0x28223BE20](v95);
  v94 = &v88 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_21B4C64F8();
  v100 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v99 = &v88 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_21B4C5748();
  v97 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v96 = &v88 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v106 = &v88 - v18;
  v108 = sub_21B4C7388();
  v110 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v92 = &v88 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v105 = &v88 - v21;
  MEMORY[0x28223BE20](v22);
  v24 = &v88 - v23;
  v25 = sub_21B4C73F8();
  v113 = *(v25 - 8);
  v114 = v25;
  MEMORY[0x28223BE20](v25);
  v93 = &v88 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v29 = &v88 - v28;
  MEMORY[0x28223BE20](v30);
  v32 = &v88 - v31;
  v33 = sub_21B4C5888();
  v34 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v36 = &v88 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = a2;
  sub_21B4C6498();
  if (*(&v118 + 1))
  {
    __swift_project_boxed_opaque_existential_1(&v117, *(&v118 + 1));
    v37 = sub_21B4C71D8();
    v39 = v38;
    __swift_destroy_boxed_opaque_existential_1(&v117);
  }

  else
  {
    sub_21B3F2D94(&v117, &qword_27CD86D80, qword_21B4D2BF0);
    sub_21B4C5878();
    v37 = sub_21B4C5868();
    v39 = v40;
    (*(v34 + 8))(v36, v33);
  }

  sub_21B4C73A8();
  sub_21B4C73A8();
  sub_21B4C73C8();
  sub_21B4C7358();
  v41 = v113 + 8;
  v107 = *(v113 + 8);
  v107(v29, v114);

  v42 = sub_21B4C73C8();
  v43 = sub_21B4C9E58();

  if (sub_21B4CA148())
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v46 = v37;
    v47 = v45;
    *&v117 = v45;
    *v44 = 136315138;
    v48 = sub_21B36CF74(v46, v39, &v117);

    *(v44 + 4) = v48;
    v49 = sub_21B4C7368();
    _os_signpost_emit_with_name_impl(&dword_21B365000, v42, v43, v49, "ResizeImage", "[identifier=%{name=identifier}s] Resize", v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v47);
    MEMORY[0x21CEF5710](v47, -1, -1);
    MEMORY[0x21CEF5710](v44, -1, -1);
  }

  else
  {
  }

  v50 = v112;
  v51 = v110;
  v52 = v108;
  (*(v110 + 16))(v105, v24, v108);
  sub_21B4C7458();
  swift_allocObject();
  v105 = sub_21B4C7448();
  v55 = *(v51 + 8);
  v53 = v51 + 8;
  v54 = v55;
  v55(v24, v52);
  v113 = v41;
  v107(v32, v114);
  type metadata accessor for ResizeArtworkProcessingStep(0, v111, v50, v56);
  swift_getWitnessTable();
  sub_21B4C6908();
  if (v116)
  {
    __swift_project_boxed_opaque_existential_1(v115, v116);
    __swift_project_boxed_opaque_existential_1(v104, v104[3]);
    swift_getDynamicType();
    sub_21B4CA7C8();
    sub_21B4C71E8();

    __swift_destroy_boxed_opaque_existential_1(v115);
  }

  else
  {
    sub_21B3F2D94(v115, &qword_27CD86D80, qword_21B4D2BF0);
    v117 = 0u;
    v118 = 0u;
    v119 = 0;
  }

  v57 = v106;
  v58 = v99;
  sub_21B4C68C8();
  v59 = v103;
  sub_21B4225F4(v102, v57);
  if (v59)
  {

    (*(v100 + 8))(v58, v101);
    return sub_21B3F2D94(&v117, &qword_27CD872B0, &unk_21B4D4450);
  }

  v110 = v53;
  (*(v100 + 8))(v58, v101);
  v60 = v104[3];
  v61 = v104[4];
  __swift_project_boxed_opaque_existential_1(v104, v60);
  v63 = (*(v61 + 16))(v57, v60, v61, a7, a8, a9);
  if (!v63)
  {
    goto LABEL_20;
  }

  v64 = sub_21B4C61C8();
  if ((v64 - 1) < 2)
  {
    v65 = UIImageJPEGRepresentation(v63, 1.0);
    if (!v65)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  if (v64)
  {
    v70 = UIImage.heicData(compressionQuality:)(1.0);
    if (v71 >> 60 != 15)
    {
      v112 = v63;
      v67 = v70;
      v69 = v71;
      goto LABEL_23;
    }

LABEL_20:
    type metadata accessor for ResizeArtworkProcessingStep.ResizeError(0, v111, v112, v62);
    swift_getWitnessTable();
    swift_allocError();
    *v72 = 0;
    swift_willThrow();

    (*(v97 + 8))(v57, v98);
    return sub_21B3F2D94(&v117, &qword_27CD872B0, &unk_21B4D4450);
  }

  v65 = UIImagePNGRepresentation(v63);
  if (!v65)
  {
    goto LABEL_20;
  }

LABEL_18:
  v112 = v63;
  v66 = v65;
  v67 = sub_21B4C5788();
  v69 = v68;

LABEL_23:
  v74 = v94;
  sub_21B4C6488();
  v75 = *(v74 + *(v95 + 52));
  sub_21B38F79C(v74);
  v76 = v96;
  sub_21B4227B4(v75, v96);
  sub_21B4C5798();
  v109 = v69;
  v111 = v67;
  sub_21B388FC8(&v117, v115);
  if (v116)
  {
    __swift_project_boxed_opaque_existential_1(v115, v116);
    sub_21B4C6348();
    __swift_destroy_boxed_opaque_existential_1(v115);
  }

  else
  {
    sub_21B3F2D94(v115, &qword_27CD872B0, &unk_21B4D4450);
  }

  v77 = v112;
  sub_21B4C73A8();
  v78 = sub_21B4C73C8();
  v79 = v92;
  sub_21B4C7438();
  LODWORD(v112) = sub_21B4C9E48();
  if (sub_21B4CA148())
  {

    v80 = v88;
    sub_21B4C7468();

    v81 = v89;
    v82 = v90;
    if ((*(v89 + 88))(v80, v90) == *MEMORY[0x277D85B00])
    {
      v83 = "[Error] Interval already ended";
    }

    else
    {
      (*(v81 + 8))(v80, v82);
      v83 = "";
    }

    v84 = swift_slowAlloc();
    *v84 = 0;
    v79 = v92;
    v85 = sub_21B4C7368();
    _os_signpost_emit_with_name_impl(&dword_21B365000, v78, v112, v85, "ResizeImage", v83, v84, 2u);
    MEMORY[0x21CEF5710](v84, -1, -1);
    v57 = v106;
    v76 = v96;
  }

  sub_21B36D4E0(v111, v109);

  v54(v79, v108);
  v107(v93, v114);
  v86 = v97;
  v87 = v98;
  (*(v97 + 8))(v57, v98);
  sub_21B3F2D94(&v117, &qword_27CD872B0, &unk_21B4D4450);
  (*(v86 + 32))(v91, v76, v87);
  sub_21B4C6368();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_21B422514@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(type metadata accessor for ResizeArtworkProcessingStep(0, v6, v7, a2) - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_21B4217D4(a1, v3 + v9, (v3 + v10), v6, v7, a3, *(v3 + ((v10 + 47) & 0xFFFFFFFFFFFFFFF8)), *(v3 + ((v10 + 47) & 0xFFFFFFFFFFFFFFF8) + 8), *(v3 + ((((v10 + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_21B4225F4@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v16 = a3;
  v5 = sub_21B4C5748();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21B4C6368();
  MEMORY[0x28223BE20](v9);
  v11 = (&v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21B388318(a1, v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = v11;
  }

  else
  {
    v12 = *v11;
    v13 = v11[1];
    sub_21B4227B4(4, v8);
    sub_21B4C5798();
    if (v3)
    {
      (*(v6 + 8))(v8, v5);
      return sub_21B36D4F4(v12, v13);
    }

    sub_21B36D4F4(v12, v13);
  }

  return (*(v6 + 32))(v16, v8, v5);
}

uint64_t sub_21B4227B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v21 = a1;
  v2 = sub_21B4C5888();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v20[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_21B4C5748();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v12 = &v20[-v11];
  v13 = [objc_opt_self() defaultManager];
  v14 = [v13 temporaryDirectory];

  sub_21B4C56E8();
  sub_21B4C5878();
  sub_21B4C5868();
  (*(v3 + 8))(v5, v2);
  sub_21B4C56A8();

  v15 = *(v7 + 8);
  v15(v9, v6);
  v23 = 0x697365722E706D74;
  v24 = 0xEB000000002E657ALL;
  if (v21 == 4)
  {
    v16 = 0xE300000000000000;
    v17 = 6778217;
  }

  else
  {
    v17 = sub_21B4C61D8();
    v16 = v18;
  }

  MEMORY[0x21CEF2F30](v17, v16);

  sub_21B4C56B8();

  return (v15)(v12, v6);
}

uint64_t ResizeArtworkProcessingStep.ResizeError.hashValue.getter()
{
  v1 = *v0;
  sub_21B4CA6E8();
  MEMORY[0x21CEF3E40](v1);
  return sub_21B4CA738();
}

uint64_t sub_21B422AEC(uint64_t a1)
{
  sub_21B4CA6E8();
  ResizeArtworkProcessingStep.ResizeError.hash(into:)();
  return sub_21B4CA738();
}

uint64_t sub_21B422B44(int *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_21B4C64F8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(*(a3 + 16) - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= v8)
  {
    v12 = *(v7 + 84);
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(*(v6 - 8) + 64) + v11;
  v14 = *(v9 + 64) + 7;
  if (v12 >= a2)
  {
    goto LABEL_29;
  }

  v15 = ((((((v14 + (v13 & ~v11)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 40;
  v16 = v15 & 0xFFFFFFF8;
  if ((v15 & 0xFFFFFFF8) != 0)
  {
    v17 = 2;
  }

  else
  {
    v17 = a2 - v12 + 1;
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

  if (v19 > 1)
  {
    if (v19 == 2)
    {
      v20 = *(a1 + v15);
      if (!v20)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v20 = *(a1 + v15);
      if (!v20)
      {
        goto LABEL_29;
      }
    }

LABEL_26:
    v22 = v20 - 1;
    if (v16)
    {
      v22 = 0;
      v23 = *a1;
    }

    else
    {
      v23 = 0;
    }

    return v12 + (v23 | v22) + 1;
  }

  if (v19)
  {
    v20 = *(a1 + v15);
    if (v20)
    {
      goto LABEL_26;
    }
  }

LABEL_29:
  if (v8 == v12)
  {
    v24 = *(v7 + 48);

    return v24(a1);
  }

  else
  {
    v25 = (a1 + v13) & ~v11;
    if (v10 == v12)
    {
      v26 = *(v9 + 48);

      return v26(v25, v10);
    }

    else
    {
      v27 = *(((((((v14 + v25) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 24);
      if (v27 >= 0xFFFFFFFF)
      {
        LODWORD(v27) = -1;
      }

      return (v27 + 1);
    }
  }
}