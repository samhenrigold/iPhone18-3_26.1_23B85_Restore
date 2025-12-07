uint64_t dispatch thunk of RelevanceEntriesProvider.entry(configuration:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 48) + **(a5 + 48));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1920A59A8;

  return v13(a1, a2, a3, a4, a5);
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for RelevanceEntriesProviderContext(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for RelevanceEntriesProviderContext(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1920FB148(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_1920DA1D8();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1920FB1D0(_DWORD *a1, unsigned int a2, uint64_t a3)
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

_DWORD *sub_1920FB30C(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
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

uint64_t sub_1920FB4E0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v1[2] = v2;
  v1[3] = v3;
  v1[4] = v4;
  v1[5] = v5;
  v6 = *(type metadata accessor for RelevanceEntryProvider(0, (v1 + 2)) - 8);
  v7 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  v1[6] = v8;
  *v8 = v1;
  v8[1] = sub_1920FAA3C;

  return sub_1920FA948(v0 + v7, v2, v3, v4, v5);
}

uint64_t sub_1920FB5E4(uint64_t a1)
{
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v9 = v1[2];
  v3 = v9;
  v10 = v4;
  v11 = v5;
  v12 = v6;
  type metadata accessor for RelevanceEntryProvider(0, &v9);
  v9 = v3;
  v10 = v4;
  v11 = v5;
  v12 = v6;
  v7 = type metadata accessor for RelevanceEntryProvider(0, &v9);
  return sub_1920FA718(a1, v7);
}

uint64_t sub_1920FB69C(uint64_t a1)
{
  v2 = type metadata accessor for TimelineProviderContext(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroy_15Tm()
{
  v1 = *(v0 + 32);
  v5[0] = *(v0 + 16);
  v4 = *&v5[0];
  v5[1] = v1;
  v2 = *(type metadata accessor for RelevanceEntryProvider(0, v5) - 8);
  (*(*(v4 - 8) + 8))(v0 + ((*(v2 + 80) + 48) & ~*(v2 + 80)));

  return swift_deallocObject();
}

uint64_t sub_1920FB7EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[2];
  v9 = v3[3];
  v10 = v3[4];
  v11 = v3[5];
  v4[2] = v8;
  v4[3] = v9;
  v4[4] = v10;
  v4[5] = v11;
  v12 = *(type metadata accessor for RelevanceEntryProvider(0, (v4 + 2)) - 8);
  v13 = (*(v12 + 80) + 48) & ~*(v12 + 80);
  v14 = swift_task_alloc();
  v4[6] = v14;
  *v14 = v4;
  v14[1] = sub_1920F9F30;

  return sub_1920F9E38(a1, a2, a3, v3 + v13, v8, v9, v10, v11);
}

uint64_t sub_1920FB918(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEDF0, &qword_1922319C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1920FB980(uint64_t a1, uint64_t a2)
{
  v5 = v3;
  v8 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v10 = v2[5];
  v5[2] = v8;
  v5[3] = v7;
  v5[4] = v9;
  v5[5] = v10;
  v11 = *(type metadata accessor for RelevanceEntryProvider(0, (v5 + 2)) - 8);
  v12 = (*(v11 + 80) + 48) & ~*(v11 + 80);
  v13 = (v2 + ((*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8));
  v14 = *v13;
  v15 = v13[1];
  v16 = *(v13 + 16);
  v17 = swift_task_alloc();
  v5[6] = v17;
  *v17 = v5;
  v17[1] = sub_1920F9F30;

  return sub_1920F9410(a1, v14, v15, a2, v2 + v12, v16, v8, v7, v9);
}

uint64_t sub_1920FBAF0@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[5];
  v3 = v1[6];
  a1[3] = v1[3];
  a1[4] = v2;
  __swift_allocate_boxed_opaque_existential_1(a1);
  return v3();
}

uint64_t ModifiedContent<>.baseConfiguration.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(a1 + 16);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = *(v7 + 16);
  v10(v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v3, v6, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFE90, &qword_1922319E0);
  if (swift_dynamicCast())
  {
    sub_19203832C(v15, v17);
    v11 = v18;
    v12 = v19;
    __swift_project_boxed_opaque_existential_1(v17, v18);
    (*(v12 + 8))(v11, v12);
    return __swift_destroy_boxed_opaque_existential_1(v17);
  }

  else
  {
    v16 = 0;
    memset(v15, 0, sizeof(v15));
    sub_1920FBCB0(v15);
    a3[3] = v6;
    a3[4] = a2;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
    return (v10)(boxed_opaque_existential_1, v3, v6);
  }
}

uint64_t sub_1920FBCB0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFE98, &qword_1922319E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Widget.baseConfiguration.getter@<X0>(uint64_t *a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  sub_192227550();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFE90, &qword_1922319E0);
  if (swift_dynamicCast())
  {
    sub_19203832C(v8, v10);
    v5 = v11;
    v6 = v12;
    __swift_project_boxed_opaque_existential_1(v10, v11);
    (*(v6 + 8))(v5, v6);
    return __swift_destroy_boxed_opaque_existential_1(v10);
  }

  else
  {
    v9 = 0;
    memset(v8, 0, sizeof(v8));
    sub_1920FBCB0(v8);
    a3[3] = AssociatedTypeWitness;
    a3[4] = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1(a3);
    return sub_192227550();
  }
}

uint64_t JindoViewTag.description.getter(unsigned __int8 a1)
{
  v1 = 0x6465646E61707865;
  v2 = 0x54746361706D6F63;
  if (a1 != 2)
  {
    v2 = 0x4D746361706D6F63;
  }

  if (a1)
  {
    v1 = 0x4C746361706D6F63;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1920FBF68@<X0>(Swift::Int *a1@<X0>, WidgetKit::JindoViewTag_optional *a2@<X8>)
{
  result = _s9WidgetKit12JindoViewTagO8rawValueACSgSi_tcfC_0(*a1);
  a2->value = result;
  return result;
}

uint64_t sub_1920FC054()
{
  v1 = 0x6465646E61707865;
  v2 = 0x54746361706D6F63;
  if (*v0 != 2)
  {
    v2 = 0x4D746361706D6F63;
  }

  if (*v0)
  {
    v1 = 0x4C746361706D6F63;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t _s9WidgetKit12JindoViewTagO8rawValueACSgSi_tcfC_0(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

unint64_t sub_1920FC108()
{
  result = qword_1EADEFEA0;
  if (!qword_1EADEFEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEFEA0);
  }

  return result;
}

unint64_t sub_1920FC160()
{
  result = qword_1EADEFEA8;
  if (!qword_1EADEFEA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADEFEB0, &unk_19223C4E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEFEA8);
  }

  return result;
}

unint64_t sub_1920FC1D4()
{
  result = qword_1EADEFEB8;
  if (!qword_1EADEFEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEFEB8);
  }

  return result;
}

__n128 sub_1920FC228@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v2;
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = *(a1 + 80);
  result = *a1;
  v4 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v4;
  return result;
}

uint64_t sub_1920FC24C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 304) = a2;
  *(v4 + 312) = a3;
  *(v4 + 296) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE10, &unk_19222B630);
  *(v4 + 320) = swift_task_alloc();
  type metadata accessor for ControlTemplateButton.Option(0);
  *(v4 + 328) = swift_task_alloc();
  *(v4 + 336) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFEC0, &unk_192231BD0);
  *(v4 + 344) = swift_task_alloc();
  *(v4 + 352) = type metadata accessor for ExtractedControlValueMetadata(0);
  *(v4 + 360) = swift_task_alloc();
  v6 = *(a3 + 16);
  *(v4 + 368) = v6;
  *(v4 + 376) = *(v6 - 8);
  *(v4 + 384) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADEFD70, &qword_192231780);
  v7 = sub_192225C70();
  *(v4 + 392) = v7;
  *(v4 + 400) = *(v7 - 8);
  *(v4 + 408) = swift_task_alloc();
  v8 = sub_192225C70();
  *(v4 + 416) = v8;
  *(v4 + 424) = *(v8 - 8);
  *(v4 + 432) = swift_task_alloc();
  v9 = *(v3 + 48);
  *(v4 + 48) = *(v3 + 32);
  *(v4 + 64) = v9;
  *(v4 + 80) = *(v3 + 64);
  *(v4 + 96) = *(v3 + 80);
  v10 = *(v3 + 16);
  *(v4 + 16) = *v3;
  *(v4 + 32) = v10;
  sub_192227CC0();
  *(v4 + 440) = sub_192227CB0();
  v12 = sub_192227C70();

  return MEMORY[0x1EEE6DFA0](sub_1920FC530, v12, v11);
}

uint64_t sub_1920FC530()
{
  v55 = *(v0 + 432);
  v56 = *(v0 + 416);
  v50 = *(v0 + 408);
  v63 = *(v0 + 400);
  v53 = *(v0 + 392);
  v1 = *(v0 + 376);
  v2 = *(v0 + 384);
  v3 = *(v0 + 368);
  v59 = *(v0 + 360);
  v61 = *(v0 + 352);
  v4 = *(v0 + 312);
  v57 = *(v0 + 304);

  v68 = *(v0 + 16);
  v5 = *(v0 + 33);
  *(v0 + 448) = *(v0 + 34);
  *(v0 + 462) = *(v0 + 48);
  v74 = *(v0 + 56);
  v75 = v5;
  v6 = *(v0 + 72);
  v73 = *(v0 + 64);
  v7 = *(v0 + 32);
  v76 = swift_allocObject();
  *(v76 + 16) = 0;
  v72 = (v76 + 16);
  v6();
  swift_getKeyPath();
  *(v0 + 470) = 1;
  v8 = *(v4 + 32);
  sub_192227040();

  (*(v1 + 8))(v2, v3);
  v9 = sub_1920FCBC8();
  v70 = v8;
  *(v0 + 232) = v8;
  *(v0 + 240) = v9;
  WitnessTable = swift_getWitnessTable();
  v71 = v7;
  sub_1921E6550(v7 & 1, v53, WitnessTable);
  (*(v63 + 8))(v50, v53);
  v11 = *(v0 + 32);
  *(v0 + 136) = *(v0 + 48);
  v12 = *(v0 + 80);
  *(v0 + 152) = *(v0 + 64);
  *(v0 + 168) = v12;
  *(v0 + 184) = *(v0 + 96);
  v64 = (v0 + 16);
  *(v0 + 104) = *(v0 + 16);
  *(v0 + 120) = v11;
  swift_getWitnessTable();
  v13 = sub_1920FCC2C();
  *(v0 + 248) = WitnessTable;
  *(v0 + 256) = v13;
  swift_getWitnessTable();
  v14.n128_f64[0] = sub_1921E6584(v55, v57, v56, v59);
  if (*(v59 + *(v61 + 24)) == 1)
  {
    *v72 = 1;
  }

  v15 = *(v0 + 344);
  v16 = v68(*(v0 + 304), v14);
  v18 = v17;
  v20 = v19;
  sub_192226A40();
  v21 = sub_192226A90();
  v22 = *(v21 - 8);
  v23 = (*(v22 + 48))(v15, 1, v21);
  v24 = *(v0 + 344);
  if (v23 == 1)
  {
    sub_192033970(*(v0 + 344), &qword_1EADEFEC0, &unk_192231BD0);
    v25 = 0;
    v69 = 0;
  }

  else
  {
    v26 = sub_192226A80();
    (*(v22 + 8))(v24, v21);
    v27 = [v26 string];

    v25 = sub_192227960();
    v69 = v28;
  }

  v66 = *(v0 + 432);
  v60 = *(v0 + 424);
  v62 = *(v0 + 416);
  v58 = *(v0 + 328);
  v29 = *(v0 + 312);
  v52 = *(v0 + 304);
  v54 = *(v0 + 360);
  v30 = (v54 + *(*(v0 + 352) + 20));
  v51 = *v30;
  v48 = *(v0 + 368);
  v49 = v30[1];
  v31 = v30[3];
  v47 = v30[2];
  v32 = *(v29 + 24);
  v33 = *(v29 + 40);
  sub_1920FCC80(0, v64, v71 & 1, v52, v54, v76, v25, v69, *(v0 + 336), v16, v18, v20 & 1, *v30, v49, v47, v31, v48, v32, v70, v33);
  v46 = v33;
  v34 = 1;
  sub_1920FCC80(1, v64, v71 & 1, v52, v54, v76, v25, v69, v58, v16, v18, v20 & 1, v51, v49, v47, v31, v48, v32, v70, v46);

  (*(v60 + 8))(v66, v62);
  if ((v71 & 1) == 0)
  {
    swift_beginAccess();
    v34 = *v72;
  }

  v65 = v34;
  v67 = *(v0 + 360);
  v35 = *(v0 + 336);
  v36 = *(v0 + 320);
  v37 = *(v0 + 328);
  v38 = *(v0 + 296);
  *(v0 + 280) = v73;
  v39 = sub_192225020();
  v40 = *(*(v39 - 8) + 56);
  v40(v36, 1, 1, v39);
  *(v0 + 216) = *(v0 + 454);
  v41 = type metadata accessor for ControlTemplateButton(0);
  v42 = v41[7];
  v40(v38 + v42, 1, 1, v39);
  v43 = v41[10];
  sub_1920FD7AC(v35, v38);
  sub_1920FD7AC(v37, v38 + v41[5]);
  *(v38 + v41[6]) = *(v0 + 280);
  sub_1920FD810(v0 + 280, v0 + 288);
  sub_19202CFFC(v0 + 216, v0 + 264, qword_1EADEF800, &unk_192231C10);
  sub_19204193C(v36, v38 + v42, &qword_1EADEEE10, &unk_19222B630);
  *(v38 + v41[8]) = v65;
  *(v38 + v41[9]) = v75;
  *(v38 + v43) = *(v0 + 216);
  *(v38 + v41[11]) = v74;
  sub_1920FD86C(v67);

  v44 = *(v0 + 8);

  return v44();
}

unint64_t sub_1920FCBC8()
{
  result = qword_1ED74A558;
  if (!qword_1ED74A558)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADEFD70, &qword_192231780);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED74A558);
  }

  return result;
}

unint64_t sub_1920FCC2C()
{
  result = qword_1EADED790;
  if (!qword_1EADED790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADED790);
  }

  return result;
}

double sub_1920FCC80@<D0>(uint64_t a1@<X0>, void (**a2)(uint64_t)@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11, unsigned __int8 a12, char *a13, char *a14, char *a15, char *a16, uint64_t a17, uint64_t a18, char *a19, uint64_t a20)
{
  v104 = a8;
  v102 = a7;
  v85 = a6;
  v94 = a5;
  v92 = a4;
  LODWORD(v90) = a3;
  v103 = a9;
  v95 = a19;
  v91 = a17;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF720, &unk_19222E2F0);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v101 = &v84 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v99 = &v84 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v98 = &v84 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v100 = &v84 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFEC0, &unk_192231BD0);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v84 = &v84 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v89 = &v84 - v33;
  v96 = type metadata accessor for ExtractedControlValueMetadata(0);
  MEMORY[0x1EEE9AC00](v96);
  v88 = &v84 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = *(a18 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v84 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADEFD70, &qword_192231780);
  v39 = sub_192225C70();
  v87 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v84 - v40;
  v105 = sub_192225C70();
  v97 = *(v105 - 8);
  v42 = MEMORY[0x1EEE9AC00](v105);
  v44 = &v84 - v43;
  v93 = *(a2 + 40);
  (a2[9])(a1, v42);
  swift_getKeyPath();
  LOBYTE(v109) = 1;
  v86 = a18;
  sub_192227040();

  (*(v35 + 8))(v38, a18);
  v45 = sub_1920FCBC8();
  v115 = a20;
  v116 = v45;
  WitnessTable = swift_getWitnessTable();
  sub_1921E6550(v90, v39, WitnessTable);
  (*(v87 + 8))(v41, v39);
  v47 = *(a2 + 3);
  v111 = *(a2 + 2);
  v112 = v47;
  v113 = *(a2 + 4);
  v114 = a2[10];
  v48 = *a2;
  v49 = *(a2 + 1);
  v50 = v89;
  v109 = v48;
  v110 = v49;
  v108[0] = v91;
  v108[1] = v86;
  v51 = v88;
  v108[2] = v95;
  v108[3] = a20;
  type metadata accessor for ControlWidgetButtonParser(0, v108);
  swift_getWitnessTable();
  v52 = sub_1920FCC2C();
  v106 = WitnessTable;
  v107 = v52;
  v53 = v105;
  swift_getWitnessTable();
  v95 = v44;
  sub_1921E6584(v44, v92, v53, v51);
  sub_192226A40();
  v54 = sub_192226A90();
  v55 = *(v54 - 8);
  v56 = *(v55 + 48);
  if (v56(v50, 1, v54) == 1)
  {
    sub_192033970(v50, &qword_1EADEFEC0, &unk_192231BD0);
    v57 = v84;
    sub_192226A50();
    if (v56(v57, 1, v54) == 1)
    {
      sub_192033970(v57, &qword_1EADEFEC0, &unk_192231BD0);
      v92 = 0;
      v91 = 0;
    }

    else
    {
      v63 = sub_192226A80();
      (*(v55 + 8))(v57, v54);
      v64 = [v63 string];

      v92 = sub_192227960();
      v91 = v65;
    }

    v61 = v100;
    v62 = v99;
  }

  else
  {
    v58 = sub_192226A80();
    (*(v55 + 8))(v50, v54);
    v59 = [v58 string];

    v92 = sub_192227960();
    v91 = v60;

    v61 = v100;
    v62 = v99;
  }

  v66 = v98;
  sub_192226B80();
  v67 = sub_192226B70();
  v68 = *(v67 - 8);
  v69 = *(v68 + 48);
  if (v69(v66, 1, v67) == 1)
  {
    sub_192226B80();
    if (v69(v66, 1, v67) != 1)
    {
      sub_192033970(v66, &qword_1EADEF720, &unk_19222E2F0);
    }
  }

  else
  {
    (*(v68 + 32))(v61, v66, v67);
    (*(v68 + 56))(v61, 0, 1, v67);
  }

  if (*(v51 + *(v96 + 24)))
  {
    v70 = v85;
    swift_beginAccess();
    *(v70 + 16) = 1;
  }

  v99 = a15;
  v100 = a14;
  v98 = a13;
  LODWORD(v96) = a12;
  v94 = a11;
  v90 = a10;
  if ((v93 & 1) == 0)
  {
    sub_19202CFFC(v61, v62, &qword_1EADEF720, &unk_19222E2F0);
    if (v69(v62, 1, v67) == 1)
    {
      sub_1920FD86C(v51);
      (*(v97 + 8))(v95, v105);
      sub_192033970(v62, &qword_1EADEF720, &unk_19222E2F0);
      v71 = v101;
    }

    else
    {
      v72 = sub_192226B60();
      sub_1920FD86C(v51);
      (*(v97 + 8))(v95, v105);
      (*(v68 + 8))(v62, v67);
      v71 = v101;
      if (v72)
      {
        goto LABEL_15;
      }
    }

    sub_192033970(v61, &qword_1EADEF720, &unk_19222E2F0);
    (*(v68 + 56))(v71, 1, 1, v67);
    goto LABEL_20;
  }

  sub_1920FD86C(v51);
  (*(v97 + 8))(v95, v105);
  v71 = v101;
LABEL_15:
  sub_1920FD8E0(v61, v71);
LABEL_20:
  v73 = type metadata accessor for ControlTemplateButton.Option(0);
  v74 = v73[6];
  v75 = v103;
  (*(v68 + 56))(v103 + v74, 1, 1, v67);
  v76 = v75 + v73[7];
  v77 = (v75 + v73[8]);
  v78 = (v75 + v73[9]);
  v79 = v104;
  *v75 = v102;
  v75[1] = v79;
  v80 = v91;
  v75[2] = v92;
  v75[3] = v80;

  sub_19204193C(v71, v75 + v74, &qword_1EADEF720, &unk_19222E2F0);
  v81 = v94;
  *v76 = v90;
  *(v76 + 1) = v81;
  v76[16] = v96 & 1;
  v82 = v100;
  *v77 = v98;
  v77[1] = v82;
  *v78 = v99;
  v78[1] = a16;

  return result;
}

uint64_t sub_1920FD7AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ControlTemplateButton.Option(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1920FD86C(uint64_t a1)
{
  v2 = type metadata accessor for ExtractedControlValueMetadata(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1920FD8E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF720, &unk_19222E2F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1920FD950(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
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

uint64_t sub_1920FD9B0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_1920FD9F8(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_1920FDA50()
{
  result = qword_1EADEE598;
  if (!qword_1EADEE598)
  {
    type metadata accessor for ControlTemplateButton(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEE598);
  }

  return result;
}

uint64_t sub_1920FDAA8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1920FDAF0(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1920FDB30(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  sub_192228400();
  MEMORY[0x193B0A990](0xD000000000000027, 0x800000019224A6B0);
  MEMORY[0x193B0A990](a1, a2);
  MEMORY[0x193B0A990](0xD000000000000011, 0x800000019224A6E0);
  if (a4)
  {
    v8 = a4;
  }

  else
  {
    a3 = 7104878;
    v8 = 0xE300000000000000;
  }

  MEMORY[0x193B0A990](a3, v8);

  MEMORY[0x193B0A990](10506, 0xE200000000000000);
  return 0;
}

uint64_t sub_1920FDC8C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1922265A0();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_1920FDCF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1922265A0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

CTFontDescriptorRef sub_1920FDD90(uint64_t a1, uint64_t a2, char a3, double a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF290, &qword_19222CA80);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v15 - v9;
  sub_192226EA0();
  v11 = sub_192075A34(*&a4, 0, 0, 1, a1, a2, a3 & 1, v10);
  sub_192033970(v10, &qword_1EADEF290, &qword_19222CA80);
  v12 = CTFontDescriptorCreateWithAttributesAndOptions();
  v13 = sub_19207723C();

  return v13;
}

CTFontDescriptorRef sub_1920FDEB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v21[0] = a2;
  v21[1] = a3;
  v6 = sub_1922265A0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v21 - v11;
  v13 = sub_192226EC0();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v17, a4, v13, v15);
  sub_192226E80();
  sub_192074964(v9, v12);
  (*(v7 + 8))(v9, v6);
  sub_192226E90();
  sub_192226800();
  v18 = sub_192225BD0();
  v19 = sub_19207723C();

  (*(v14 + 8))(v17, v13);
  return v19;
}

CTFontDescriptorRef sub_1920FE0F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v42 = a1;
  v43 = a3;
  v41 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF290, &qword_19222CA80);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v38 - v5;
  v7 = sub_192226F10();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1922265A0();
  v39 = v11;
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v38 - v16;
  sub_192226E80();
  sub_192074964(v14, v17);
  v18 = *(v12 + 8);
  v38 = v12 + 8;
  v40 = v18;
  v18(v14, v11);
  v19 = v42;
  (*(v8 + 16))(v10, v42, v7);
  v20 = sub_19207583C(v10);
  v21 = (*(v3 + 152))(v20, v17);
  v23 = v22;
  v25 = v24;
  v26 = (*(v3 + 160))(v19, v17);
  v28 = v27;
  v29 = v25 & 0x100;
  if ((v25 & 0x100) != 0)
  {
    v23 = 0;
  }

  v30 = v29 >> 8;
  v31 = BYTE1(v29) | v25;
  if (v29)
  {
    v21 = 0;
  }

  sub_192226EA0();
  v32 = sub_192075A34(v21, v30, v23, v31 & 1, v41, v26, v28 & 1, v6);
  sub_192033970(v6, &qword_1EADEF290, &qword_19222CA80);
  v33 = sub_192076CDC();
  v34 = sub_192076F7C();
  v35 = CTFontDescriptorCreateWithTextStyleAndAttributes();

  v36 = sub_19207723C();
  v40(v17, v39);
  return v36;
}

const __CTFontDescriptor *sub_1920FE418(uint64_t a1, uint64_t a2, double a3, double a4)
{
  sub_192226800();
  result = sub_192225C00();
  if (qword_1ED74A010 != -1)
  {
    v11 = result;
    swift_once();
    result = v11;
  }

  if (byte_1ED74C7A8 != 2 && (byte_1ED74C7A8 & 1) != 0)
  {
    v5 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF188, &unk_192231E30);
    inited = swift_initStackObject();
    v7 = *MEMORY[0x1E69657E0];
    *(inited + 32) = *MEMORY[0x1E69657E0];
    *(inited + 16) = xmmword_19222B480;
    *(inited + 64) = MEMORY[0x1E69E63B0];
    *(inited + 40) = 0x3FD51EB851EB851FLL;
    v8 = v7;
    sub_19207614C(inited);
    swift_setDeallocating();
    sub_192033970(inited + 32, &qword_1EADEF190, &qword_19222C030);
    type metadata accessor for CFString(0);
    sub_192076C84();
    v9 = sub_192227830();

    CopyWithAttributes = CTFontDescriptorCreateCopyWithAttributes(v5, v9);

    return CopyWithAttributes;
  }

  return result;
}

const __CTFontDescriptor *sub_1920FE5C4(uint64_t a1)
{
  sub_192226800();
  result = sub_192225C20();
  if (qword_1ED74A010 != -1)
  {
    v8 = result;
    swift_once();
    result = v8;
  }

  if (byte_1ED74C7A8 != 2 && (byte_1ED74C7A8 & 1) != 0)
  {
    v2 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF188, &unk_192231E30);
    inited = swift_initStackObject();
    v4 = *MEMORY[0x1E69657E0];
    *(inited + 32) = *MEMORY[0x1E69657E0];
    *(inited + 16) = xmmword_19222B480;
    *(inited + 64) = MEMORY[0x1E69E63B0];
    *(inited + 40) = 0x3FD51EB851EB851FLL;
    v5 = v4;
    sub_19207614C(inited);
    swift_setDeallocating();
    sub_192033970(inited + 32, &qword_1EADEF190, &qword_19222C030);
    type metadata accessor for CFString(0);
    sub_192076C84();
    v6 = sub_192227830();

    CopyWithAttributes = CTFontDescriptorCreateCopyWithAttributes(v2, v6);

    return CopyWithAttributes;
  }

  return result;
}

__n128 AccessoryRectangularLabeledContentStyle.makeBody(configuration:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v3 = sub_192226CC0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = sub_192226C90();
  MEMORY[0x1EEE9AC00](v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFED8, &qword_192231E50);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - v8;
  *v9 = sub_192226340();
  *(v9 + 1) = 0;
  v9[16] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFEE0, &qword_192231E58);
  sub_192226CB0();
  (*(v4 + 16))(&v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  v10 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v11 = swift_allocObject();
  (*(v4 + 32))(v11 + v10, &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFEE8, &qword_192231E60);
  sub_1920FFB30(&qword_1EADEFEF0, MEMORY[0x1E697CC48], MEMORY[0x1E697CC40]);
  sub_1920FEC5C();
  sub_192227350();
  sub_192227600();
  sub_192225DA0();
  v12 = v18;
  sub_19208AF3C(v9, v18);
  v13 = v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFF20, &qword_192231E78) + 36);
  v14 = v24;
  *(v13 + 64) = v23;
  *(v13 + 80) = v14;
  *(v13 + 96) = v25;
  v15 = v20;
  *v13 = v19;
  *(v13 + 16) = v15;
  result = v22;
  *(v13 + 32) = v21;
  *(v13 + 48) = result;
  return result;
}

uint64_t sub_1920FEA64@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  sub_192226570();
  sub_1920FFB30(&qword_1EADEFF38, MEMORY[0x1E697F4E0], MEMORY[0x1E697F508]);
  sub_192227E00();
  sub_192227E60();
  sub_192227E50();
  *a3 = sub_1922265C0();
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFF40, &qword_192231F50);
  sub_1920FED5C(a1, (a3 + *(v5 + 44)));
  v6 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFEE8, &qword_192231E60) + 36));
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFF18, &qword_192231E70) + 28);
  v8 = *MEMORY[0x1E69816C8];
  v9 = sub_192227400();
  (*(*(v9 - 8) + 104))(&v6[v7], v8, v9);
  result = swift_getKeyPath();
  *v6 = result;
  return result;
}

uint64_t sub_1920FEBDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_192226CC0();

  return sub_1920FEA64(a1, a2);
}

unint64_t sub_1920FEC5C()
{
  result = qword_1EADEFEF8;
  if (!qword_1EADEFEF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADEFEE8, &qword_192231E60);
    sub_192031E74(&qword_1EADEFF00, &qword_1EADEFF08, &qword_192231E68, MEMORY[0x1E6981870]);
    sub_192031E74(&qword_1EADEFF10, &qword_1EADEFF18, &qword_192231E70, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEFEF8);
  }

  return result;
}

uint64_t sub_1920FED5C@<X0>(uint64_t a1@<X1>, char *a2@<X8>)
{
  v28 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFF48, &qword_192231F88);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v27 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFF50, &qword_192231F90);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v27 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFF58, &qword_192231F98);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v27 - v17;
  sub_192226CA0();
  v19 = sub_192226F00();
  KeyPath = swift_getKeyPath();
  v21 = &v11[*(v9 + 36)];
  *v21 = KeyPath;
  v21[1] = v19;
  sub_1920FF9F4();
  sub_1920FFADC();
  sub_192227020();
  sub_192033970(v11, &qword_1EADEFF50, &qword_192231F90);
  *v8 = sub_192226340();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFF88, &qword_192231FD8);
  sub_1920FF08C(v28, &v8[*(v22 + 44)]);
  v23 = *(v13 + 16);
  v23(v15, v18, v12);
  sub_19202CFFC(v8, v5, &qword_1EADEFF48, &qword_192231F88);
  v23(a2, v15, v12);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFF90, &qword_192231FE0);
  sub_19202CFFC(v5, &a2[*(v24 + 48)], &qword_1EADEFF48, &qword_192231F88);
  sub_192033970(v8, &qword_1EADEFF48, &qword_192231F88);
  v25 = *(v13 + 8);
  v25(v18, v12);
  sub_192033970(v5, &qword_1EADEFF48, &qword_192231F88);
  return (v25)(v15, v12);
}

uint64_t sub_1920FF08C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a2;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFF98, &qword_192231FE8);
  v66 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v62 = (&v59 - v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFFA0, &qword_192231FF0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v61 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v60 = (&v59 - v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFFA8, &qword_192231FF8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v71 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v70 = &v59 - v11;
  v12 = sub_192226570();
  v65 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v64 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_192226950();
  v69 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v73 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFFB0, &unk_192232000);
  v15 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v17 = &v59 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFFB8, &qword_192235270);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v59 - v19;
  v21 = sub_1922275A0();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v59 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFFC0, &qword_192232010);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v67 = &v59 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v59 - v28;
  sub_19217CA0C(v20);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    sub_192033970(v20, &qword_1EADEFFB8, &qword_192235270);
    v30 = 1;
    v31 = v63;
  }

  else
  {
    v59 = v12;
    v32 = v29;
    v33 = a1;
    v34 = *(v22 + 32);
    v34(v24, v20, v21);
    v35 = sub_192226D90();
    KeyPath = swift_getKeyPath();
    v34(v17, v24, v21);
    a1 = v33;
    v29 = v32;
    v12 = v59;
    v37 = v63;
    v38 = &v17[*(v63 + 36)];
    *v38 = KeyPath;
    v38[1] = v35;
    sub_19204E300(v17, v29, &qword_1EADEFFB0, &unk_192232000);
    v30 = 0;
    v31 = v37;
  }

  v39 = 1;
  (*(v15 + 56))(v29, v30, 1, v31);
  (*(v65 + 16))(v64, a1, v12);
  v40 = v73;
  sub_19217CBA4(1);
  sub_1920FFB30(&qword_1EADEFFC8, MEMORY[0x1E6980290], MEMORY[0x1E69802A0]);
  v41 = v74;
  sub_192227E00();
  sub_192227E60();
  v43 = v69;
  v42 = v70;
  if (v76 != v75)
  {
    v44 = sub_1922265D0();
    v45 = v60;
    *v60 = v44;
    *(v45 + 8) = 0xBFF8000000000000;
    *(v45 + 16) = 0;
    v46 = v45 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFFD0, &qword_192232018) + 44);
    v47 = sub_192226D80();
    v48 = swift_getKeyPath();
    (*(v43 + 16))(v46, v40, v41);
    v49 = (v46 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFFD8, &qword_192232020) + 36));
    *v49 = v48;
    v49[1] = v47;
    LODWORD(v47) = sub_192226880();
    *(v46 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFFE0, &qword_192232028) + 36)) = v47;
    v50 = v61;
    sub_19202CFFC(v45, v61, &qword_1EADEFFA0, &qword_192231FF0);
    v51 = v62;
    *v62 = 0;
    *(v51 + 8) = 0;
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFFE8, &qword_192232030);
    sub_19202CFFC(v50, v51 + *(v52 + 48), &qword_1EADEFFA0, &qword_192231FF0);
    sub_192033970(v45, &qword_1EADEFFA0, &qword_192231FF0);
    sub_192033970(v50, &qword_1EADEFFA0, &qword_192231FF0);
    sub_19204E300(v51, v42, &qword_1EADEFF98, &qword_192231FE8);
    v39 = 0;
  }

  (*(v66 + 56))(v42, v39, 1, v68);
  v53 = v67;
  sub_19202CFFC(v29, v67, &qword_1EADEFFC0, &qword_192232010);
  v54 = v29;
  v55 = v71;
  sub_19202CFFC(v42, v71, &qword_1EADEFFA8, &qword_192231FF8);
  v56 = v72;
  sub_19202CFFC(v53, v72, &qword_1EADEFFC0, &qword_192232010);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFFF0, &qword_192232038);
  sub_19202CFFC(v55, v56 + *(v57 + 48), &qword_1EADEFFA8, &qword_192231FF8);
  sub_192033970(v42, &qword_1EADEFFA8, &qword_192231FF8);
  sub_192033970(v54, &qword_1EADEFFC0, &qword_192232010);
  sub_192033970(v55, &qword_1EADEFFA8, &qword_192231FF8);
  sub_192033970(v53, &qword_1EADEFFC0, &qword_192232010);
  return (*(v43 + 8))(v73, v74);
}

unint64_t sub_1920FF92C()
{
  result = qword_1EADEFF28;
  if (!qword_1EADEFF28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADEFF20, &qword_192231E78);
    sub_192031E74(&qword_1EADEFF30, &qword_1EADEFED8, &qword_192231E50, MEMORY[0x1E69817F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEFF28);
  }

  return result;
}

unint64_t sub_1920FF9F4()
{
  result = qword_1EADEFF60;
  if (!qword_1EADEFF60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADEFF50, &qword_192231F90);
    sub_1920FFB30(&qword_1EADEFF68, MEMORY[0x1E697CC58], MEMORY[0x1E697CC50]);
    sub_192031E74(&qword_1EADEFF70, &qword_1EADEFF78, &qword_192231FD0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEFF60);
  }

  return result;
}

unint64_t sub_1920FFADC()
{
  result = qword_1EADEFF80;
  if (!qword_1EADEFF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEFF80);
  }

  return result;
}

uint64_t sub_1920FFB30(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t ActivityViewContext.activityID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ActivityViewContext.state.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(*(AssociatedTypeWitness - 8) + 16);

  return v6(a2, v2 + v4, AssociatedTypeWitness);
}

uint64_t sub_1920FFC74(uint64_t a1)
{
  AssociatedTypeWitness = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return AssociatedTypeWitness;
}

uint64_t sub_1920FFD34(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v6 + 80);
  v11 = *(v6 + 64);
  v12 = *(v9 + 80);
  if (v7 <= *(v9 + 84))
  {
    v13 = *(v9 + 84);
  }

  else
  {
    v13 = v7;
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = v13;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 <= v14)
  {
    goto LABEL_31;
  }

  v15 = *(*(AssociatedTypeWitness - 8) + 64) + ((v11 + v12 + ((v10 + 16) & ~v10)) & ~v12) + 1;
  v16 = 8 * v15;
  if (v15 <= 3)
  {
    v19 = ((a2 - v14 + ~(-1 << v16)) >> v16) + 1;
    if (HIWORD(v19))
    {
      v17 = *(a1 + v15);
      if (!v17)
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v19 > 0xFF)
    {
      v17 = *(a1 + v15);
      if (!*(a1 + v15))
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v19 < 2)
    {
LABEL_31:
      if ((v13 & 0x80000000) != 0)
      {
        v24 = (a1 + v10 + 16) & ~v10;
        if (v7 == v14)
        {
          v25 = *(v6 + 48);

          return v25(v24, v7, v5);
        }

        else
        {
          v26 = *(v9 + 48);
          v27 = (v24 + v11 + v12) & ~v12;

          return v26(v27);
        }
      }

      else
      {
        v23 = *(a1 + 1);
        if (v23 >= 0xFFFFFFFF)
        {
          LODWORD(v23) = -1;
        }

        return (v23 + 1);
      }
    }
  }

  v17 = *(a1 + v15);
  if (!*(a1 + v15))
  {
    goto LABEL_31;
  }

LABEL_18:
  v20 = (v17 - 1) << v16;
  if (v15 > 3)
  {
    v20 = 0;
  }

  if (v15)
  {
    if (v15 <= 3)
    {
      v21 = v15;
    }

    else
    {
      v21 = 4;
    }

    if (v21 > 2)
    {
      if (v21 == 3)
      {
        v22 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v22 = *a1;
      }
    }

    else if (v21 == 1)
    {
      v22 = *a1;
    }

    else
    {
      v22 = *a1;
    }
  }

  else
  {
    v22 = 0;
  }

  return v14 + (v22 | v20) + 1;
}

void sub_1920FFFF4(_WORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v28 = v8;
  v9 = *(v8 + 84);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = *(v8 + 80);
  v13 = *(v8 + 64);
  v14 = *(v11 + 80);
  if (v9 <= *(v11 + 84))
  {
    v15 = *(v11 + 84);
  }

  else
  {
    v15 = v9;
  }

  if (v15 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = v15;
  }

  v17 = *(*(AssociatedTypeWitness - 8) + 64) + ((v13 + v14 + ((v12 + 16) & ~v12)) & ~v14) + 1;
  if (a3 <= v16)
  {
    v18 = 0;
  }

  else if (v17 <= 3)
  {
    v21 = ((a3 - v16 + ~(-1 << (8 * v17))) >> (8 * v17)) + 1;
    if (HIWORD(v21))
    {
      v18 = 4;
    }

    else
    {
      if (v21 < 0x100)
      {
        v22 = 1;
      }

      else
      {
        v22 = 2;
      }

      if (v21 >= 2)
      {
        v18 = v22;
      }

      else
      {
        v18 = 0;
      }
    }
  }

  else
  {
    v18 = 1;
  }

  if (v16 < a2)
  {
    v19 = ~v16 + a2;
    if (v17 < 4)
    {
      v20 = (v19 >> (8 * v17)) + 1;
      if (*(*(AssociatedTypeWitness - 8) + 64) + ((v13 + v14 + ((v12 + 16) & ~v12)) & ~v14) != -1)
      {
        v23 = v19 & ~(-1 << (8 * v17));
        bzero(a1, v17);
        if (v17 != 3)
        {
          if (v17 == 2)
          {
            *a1 = v23;
            if (v18 > 1)
            {
LABEL_53:
              if (v18 == 2)
              {
                *(a1 + v17) = v20;
              }

              else
              {
                *(a1 + v17) = v20;
              }

              return;
            }
          }

          else
          {
            *a1 = v19;
            if (v18 > 1)
            {
              goto LABEL_53;
            }
          }

          goto LABEL_50;
        }

        *a1 = v23;
        *(a1 + 2) = BYTE2(v23);
      }

      if (v18 > 1)
      {
        goto LABEL_53;
      }
    }

    else
    {
      bzero(a1, v17);
      *a1 = v19;
      v20 = 1;
      if (v18 > 1)
      {
        goto LABEL_53;
      }
    }

LABEL_50:
    if (v18)
    {
      *(a1 + v17) = v20;
    }

    return;
  }

  if (v18 > 1)
  {
    if (v18 != 2)
    {
      *(a1 + v17) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    }

    *(a1 + v17) = 0;
  }

  else if (v18)
  {
    *(a1 + v17) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (!a2)
  {
    return;
  }

LABEL_34:
  if ((v15 & 0x80000000) != 0)
  {
    v24 = (a1 + v12 + 16) & ~v12;
    if (v9 == v16)
    {
      v25 = *(v28 + 56);

      v25(v24, a2, v9, v7);
    }

    else
    {
      v26 = *(v11 + 56);
      v27 = (v24 + v13 + v14) & ~v14;

      v26(v27, a2);
    }
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 1) = (a2 - 1);
  }
}

uint64_t sub_192100360@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  *a8 = a1;
  *(a8 + 1) = a2;
  v13 = type metadata accessor for ActivityViewContext(0, a6, a7, a4);
  (*(*(a6 - 8) + 32))(&a8[v13[9]], a3, a6);
  v14 = v13[10];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  result = (*(*(AssociatedTypeWitness - 8) + 32))(&a8[v14], a4, AssociatedTypeWitness);
  a8[v13[11]] = a5;
  return result;
}

double DynamicIsland.init<A, B, C, D>(expanded:compactLeading:compactTrailing:minimal:)@<D0>(void (*a1)(void)@<X0>, void (*a3)(void)@<X2>, uint64_t a4@<X3>, void (*a5)(void)@<X4>, uint64_t a6@<X5>, void (*a7)(void)@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v49 = a8;
  v50 = a7;
  v45 = a6;
  v46 = a5;
  v42 = a4;
  v43 = a3;
  v44 = a16;
  v41 = a15;
  v37[1] = a14;
  v38 = a1;
  v39 = a12;
  v47 = a13;
  v48 = a17;
  v37[2] = a11;
  MEMORY[0x1EEE9AC00](a1);
  v40 = v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v37[3] = v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v22 = *(a10 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v25 = v37 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for DynamicIslandExpandedContent(0, a10, v26, v27);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v30 = v37 - v29;
  v31 = sub_192225020();
  (*(*(v31 - 8) + 56))(a9, 1, 1, v31);
  v32 = type metadata accessor for DynamicIsland(0);
  *(a9 + v32[5]) = 0;
  v38();
  (*(v22 + 32))(v25, v30, a10);
  *(a9 + v32[8]) = sub_192227570();
  v43();
  *(a9 + v32[9]) = sub_192227570();
  v46();
  *(a9 + v32[10]) = sub_192227570();
  v50();
  v33 = sub_192227570();

  *(a9 + v32[11]) = v33;
  v54 = 1;
  v53 = 1;
  v52 = 1;
  v51 = 1;
  v34 = a9 + v32[6];
  *v34 = 0;
  *(v34 + 8) = 1;
  *(v34 + 16) = 0;
  *(v34 + 24) = 1;
  *(v34 + 32) = 0;
  *(v34 + 40) = 1;
  *(v34 + 48) = 0;
  *(v34 + 56) = 1;
  *(v34 + 64) = 0;
  *(v34 + 72) = 1;
  *(v34 + 80) = 0;
  *(v34 + 88) = 1;
  *(v34 + 96) = 0;
  *(v34 + 104) = 1;
  *(v34 + 112) = 0;
  *(v34 + 120) = 1;
  *(v34 + 128) = 0;
  *(v34 + 136) = 1;
  *(v34 + 144) = 0;
  *(v34 + 152) = 1;
  *(v34 + 160) = 0;
  *(v34 + 168) = 1;
  *(v34 + 176) = 0;
  *(v34 + 184) = 1;
  *(v34 + 192) = 0;
  *(v34 + 200) = 1;
  *(v34 + 208) = 0;
  *(v34 + 216) = 1;
  *(v34 + 224) = 0;
  *(v34 + 232) = 1;
  *(v34 + 240) = 0;
  *(v34 + 248) = 1;
  v35 = (a9 + v32[7]);
  result = 0.0;
  *v35 = xmmword_1922320A0;
  v35[1] = xmmword_1922320A0;
  v35[2] = xmmword_1922320A0;
  v35[3] = xmmword_1922320A0;
  return result;
}

uint64_t type metadata accessor for DynamicIsland(uint64_t a1)
{
  result = qword_1EADEDA50;
  if (!qword_1EADEDA50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DynamicIsland.widgetURL(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_192101AB4(v2, a2, type metadata accessor for DynamicIsland);

  return sub_192100974(a1, a2);
}

uint64_t sub_192100974(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE10, &unk_19222B630);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void DynamicIsland.keylineTint(_:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_192101AB4(v2, a2, type metadata accessor for DynamicIsland);
  v5 = *(type metadata accessor for DynamicIsland(0) + 20);

  *(a2 + v5) = a1;
}

uint64_t *sub_192100A58@<X0>(unsigned __int8 *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v7 = *a2;
  sub_192101AB4(v4, a3, type metadata accessor for DynamicIsland);
  sub_1921443BC(&v44, a4);
  v8 = a3 + *(type metadata accessor for DynamicIsland(0) + 24);
  v9 = (v8 + 88);
  v10 = (v8 + 120);
  v11 = (v8 + 136);
  v12 = (v8 + 152);
  v13 = (v8 + 168);
  v14 = (v8 + 184);
  if (v7 == 2)
  {
    v15 = (v8 + 128);
  }

  else
  {
    v14 = (v8 + 248);
    v13 = (v8 + 232);
    v12 = (v8 + 216);
    v11 = (v8 + 200);
    v15 = (v8 + 192);
  }

  if (v7 == 2)
  {
    v16 = (v8 + 144);
  }

  else
  {
    v16 = (v8 + 208);
  }

  if (v7 == 2)
  {
    v17 = (v8 + 160);
  }

  else
  {
    v17 = (v8 + 224);
  }

  if (v7 == 2)
  {
    v18 = (v8 + 176);
  }

  else
  {
    v18 = (v8 + 240);
  }

  if (v7)
  {
    v19 = (v8 + 104);
  }

  else
  {
    v10 = (v8 + 56);
    v19 = (v8 + 40);
  }

  if (v7)
  {
    v20 = (v8 + 72);
  }

  else
  {
    v9 = (v8 + 24);
    v20 = (v8 + 8);
  }

  if (v7)
  {
    result = (v8 + 64);
  }

  else
  {
    result = v8;
  }

  if (v7)
  {
    v22 = (v8 + 80);
  }

  else
  {
    v22 = (v8 + 16);
  }

  if (v7)
  {
    v23 = (v8 + 96);
  }

  else
  {
    v23 = (v8 + 32);
  }

  v24 = (v8 + 48);
  if (v7)
  {
    v24 = (v8 + 112);
  }

  if (v7 <= 1)
  {
    v12 = v9;
  }

  else
  {
    v10 = v14;
    v19 = v13;
  }

  if (v7 > 1)
  {
    v25 = v15;
  }

  else
  {
    v11 = v20;
    v25 = result;
  }

  if (v7 > 1)
  {
    v26 = v17;
  }

  else
  {
    v16 = v22;
    v26 = v23;
  }

  if (v7 <= 1)
  {
    v27 = v24;
  }

  else
  {
    v27 = v18;
  }

  v28 = *v10;
  v29 = *v12;
  v30 = *v11;
  if (v30)
  {
    v25 = &v44;
  }

  v31 = *v25;
  v32 = v30 & v45;
  v33 = v46;
  if ((v29 & 1) == 0)
  {
    v33 = v16;
  }

  v34 = *v33;
  v35 = v29 & v46[8];
  v36 = v47;
  if ((*v19 & 1) == 0)
  {
    v36 = v26;
  }

  v37 = *v36;
  v38 = *v19 & v47[8];
  if (v28)
  {
    v27 = v48;
  }

  v39 = *v27;
  v43 = v32 & 1;
  v42 = v35 & 1;
  v41 = v38 & 1;
  v40 = v28 & v48[8] & 1;
  if (v7 > 1)
  {
    if (v7 == 2)
    {
      *(v8 + 128) = v31;
      *(v8 + 136) = v43;
      *(v8 + 144) = v34;
      *(v8 + 152) = v42;
      *(v8 + 160) = v37;
      *(v8 + 168) = v41;
      *(v8 + 176) = v39;
      *(v8 + 184) = v40;
    }

    else
    {
      *(v8 + 192) = v31;
      *(v8 + 200) = v43;
      *(v8 + 208) = v34;
      *(v8 + 216) = v42;
      *(v8 + 224) = v37;
      *(v8 + 232) = v41;
      *(v8 + 240) = v39;
      *(v8 + 248) = v40;
    }
  }

  else if (v7)
  {
    *(v8 + 64) = v31;
    *(v8 + 72) = v43;
    *(v8 + 80) = v34;
    *(v8 + 88) = v42;
    *(v8 + 96) = v37;
    *(v8 + 104) = v41;
    *(v8 + 112) = v39;
    *(v8 + 120) = v40;
  }

  else
  {
    *v8 = v31;
    *(v8 + 8) = v43;
    *(v8 + 16) = v34;
    *(v8 + 24) = v42;
    *(v8 + 32) = v37;
    *(v8 + 40) = v41;
    *(v8 + 48) = v39;
    *(v8 + 56) = v40;
  }

  return result;
}

void DynamicIsland.contentBackground<A>(for:content:)(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = *a1;
  sub_192101AB4(v6, a6, type metadata accessor for DynamicIsland);
  v35 = sub_192221A98(a2, a3, a4, a5);
  v36 = v13;
  v14 = (a6 + *(type metadata accessor for DynamicIsland(0) + 28));
  v15 = *v14;
  v17 = (v14 + 1);
  v16 = v14[1];
  v32 = v14[2];
  v18 = (v14 + 3);
  v19 = v14[4];
  v21 = (v14 + 5);
  v20 = v14[5];
  v22 = (v14 + 7);
  v29 = v20;
  v30 = v19;
  v27 = v14[7];
  v28 = v14[6];
  if (v12 != 2)
  {
    v19 = v14[6];
    v20 = v14[7];
  }

  v33 = v14[1];
  v34 = *v14;
  if (v12)
  {
    v15 = v14[2];
  }

  v31 = v14[3];
  if (v12)
  {
    v16 = v14[3];
  }

  if (v12 <= 1)
  {
    v23 = v15;
  }

  else
  {
    v23 = v19;
  }

  if (v12 <= 1)
  {
    v24 = v16;
  }

  else
  {
    v24 = v20;
  }

  if (v24 >> 62 == 3 && v23 == 0 && v24 == 0xC000000000000000)
  {
    v23 = v35;
    v24 = v36;
    if (v12 <= 1)
    {
LABEL_21:
      if (v12)
      {
        sub_1921018A0(v32, v31);
        v14 += 2;
        v17 = v18;
      }

      else
      {
        sub_1921018A0(v34, v33);
      }

      goto LABEL_28;
    }
  }

  else
  {
    sub_192101850(v23, v24);
    sub_1921018A0(v35, v36);
    if (v12 <= 1)
    {
      goto LABEL_21;
    }
  }

  if (v12 == 2)
  {
    sub_1921018A0(v30, v29);
    v14 += 4;
    v17 = v21;
  }

  else
  {
    sub_1921018A0(v28, v27);
    v14 += 6;
    v17 = v22;
  }

LABEL_28:
  *v14 = v23;
  *v17 = v24;
}

void DynamicIsland.contentBackground<A>(_:for:)(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = *a2;
  sub_192101AB4(v5, a5, type metadata accessor for DynamicIsland);
  v33 = sub_192221B2C(a1, a3, a4);
  v34 = v11;
  v12 = (a5 + *(type metadata accessor for DynamicIsland(0) + 28));
  v13 = *v12;
  v15 = (v12 + 1);
  v14 = v12[1];
  v30 = v12[2];
  v16 = (v12 + 3);
  v17 = v12[4];
  v19 = (v12 + 5);
  v18 = v12[5];
  v20 = (v12 + 7);
  v27 = v18;
  v28 = v17;
  v25 = v12[7];
  v26 = v12[6];
  if (v10 != 2)
  {
    v17 = v12[6];
    v18 = v12[7];
  }

  v31 = v12[1];
  v32 = *v12;
  if (v10)
  {
    v13 = v12[2];
  }

  v29 = v12[3];
  if (v10)
  {
    v14 = v12[3];
  }

  if (v10 <= 1)
  {
    v21 = v13;
  }

  else
  {
    v21 = v17;
  }

  if (v10 <= 1)
  {
    v22 = v14;
  }

  else
  {
    v22 = v18;
  }

  if (v22 >> 62 == 3 && v21 == 0 && v22 == 0xC000000000000000)
  {
    v21 = v33;
    v22 = v34;
    if (v10 <= 1)
    {
LABEL_21:
      if (v10)
      {
        sub_1921018A0(v30, v29);
        v12 += 2;
        v15 = v16;
      }

      else
      {
        sub_1921018A0(v32, v31);
      }

      goto LABEL_28;
    }
  }

  else
  {
    sub_192101850(v21, v22);
    sub_1921018A0(v33, v34);
    if (v10 <= 1)
    {
      goto LABEL_21;
    }
  }

  if (v10 == 2)
  {
    sub_1921018A0(v28, v27);
    v12 += 4;
    v15 = v19;
  }

  else
  {
    sub_1921018A0(v26, v25);
    v12 += 6;
    v15 = v20;
  }

LABEL_28:
  *v12 = v21;
  *v15 = v22;
}

void DynamicIsland.contentBackground<A, B>(_:in:for:)(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v16 = *a3;
  sub_192101AB4(v8, a8, type metadata accessor for DynamicIsland);
  v39 = sub_192221BF8(a1, a2, a4, a5, a6, a7);
  v40 = v17;
  v18 = (a8 + *(type metadata accessor for DynamicIsland(0) + 28));
  v19 = *v18;
  v21 = (v18 + 1);
  v20 = v18[1];
  v36 = v18[2];
  v22 = (v18 + 3);
  v23 = v18[4];
  v25 = (v18 + 5);
  v24 = v18[5];
  v26 = (v18 + 7);
  v33 = v24;
  v34 = v23;
  v31 = v18[7];
  v32 = v18[6];
  if (v16 != 2)
  {
    v23 = v18[6];
    v24 = v18[7];
  }

  v37 = v18[1];
  v38 = *v18;
  if (v16)
  {
    v19 = v18[2];
  }

  v35 = v18[3];
  if (v16)
  {
    v20 = v18[3];
  }

  if (v16 <= 1)
  {
    v27 = v19;
  }

  else
  {
    v27 = v23;
  }

  if (v16 <= 1)
  {
    v28 = v20;
  }

  else
  {
    v28 = v24;
  }

  if (v28 >> 62 == 3 && v27 == 0 && v28 == 0xC000000000000000)
  {
    v27 = v39;
    v28 = v40;
    if (v16 <= 1)
    {
LABEL_21:
      if (v16)
      {
        sub_1921018A0(v36, v35);
        v18 += 2;
        v21 = v22;
      }

      else
      {
        sub_1921018A0(v38, v37);
      }

      goto LABEL_28;
    }
  }

  else
  {
    sub_192101850(v27, v28);
    sub_1921018A0(v39, v40);
    if (v16 <= 1)
    {
      goto LABEL_21;
    }
  }

  if (v16 == 2)
  {
    sub_1921018A0(v34, v33);
    v18 += 4;
    v21 = v25;
  }

  else
  {
    sub_1921018A0(v32, v31);
    v18 += 6;
    v21 = v26;
  }

LABEL_28:
  *v18 = v27;
  *v21 = v28;
}

uint64_t DynamicIsland.tintColor.getter()
{
  type metadata accessor for DynamicIsland(0);
}

uint64_t DynamicIsland.view(for:metrics:)(unsigned __int8 a1)
{
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      swift_getKeyPath();
      v4 = v1 + *(type metadata accessor for DynamicIsland(0) + 28);
      v5 = *(v4 + 32);
      v6 = *(v4 + 40);
    }

    else
    {
      swift_getKeyPath();
      v8 = v1 + *(type metadata accessor for DynamicIsland(0) + 28);
      v5 = *(v8 + 48);
      v6 = *(v8 + 56);
    }

    goto LABEL_8;
  }

  if (a1)
  {
    swift_getKeyPath();
    v7 = v1 + *(type metadata accessor for DynamicIsland(0) + 28);
    v5 = *(v7 + 16);
    v6 = *(v7 + 24);
LABEL_8:

    sub_192101850(v5, v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFFF8, &qword_1922320E0);
    sub_1921018F0();
    return sub_192227570();
  }

  swift_getKeyPath();
  v2 = *(type metadata accessor for DynamicIsland(0) + 28);
  v3 = *(v1 + v2 + 8);
  v10 = *(v1 + v2);

  sub_192101850(v10, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0008, &qword_1922320F0);
  sub_1921019FC();
  return sub_192227570();
}

uint64_t DynamicIsland.modifyEnvironment(_:for:metrics:)(uint64_t a1, char a2, uint64_t *a3)
{
  v6 = type metadata accessor for MetricsRequest(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = (v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for JindoMetricsDefinition(0);
  sub_192101AB4(a3 + *(v9 + *&asc_192232198[8 * a2]), v8, type metadata accessor for MetricsRequest);
  v10 = v8[7];
  v11 = v8[8];
  v12 = v8[9];
  v13 = v8[10];
  v14 = *(v8 + 88);
  sub_192101B1C(v8);
  if (v14)
  {
    v15 = 0.0;
  }

  else
  {
    v15 = v10;
  }

  if (v14)
  {
    v16 = 0.0;
  }

  else
  {
    v16 = v11;
  }

  if (v14)
  {
    v17 = 0.0;
  }

  else
  {
    v17 = v12;
  }

  if (v14)
  {
    v18 = 0.0;
  }

  else
  {
    v18 = v13;
  }

  v19 = (v3 + *(type metadata accessor for DynamicIsland(0) + 24));
  if (a2 > 1u)
  {
    v35 = v19 + 23;
    v34 = v19 + 22;
    v33 = v19 + 21;
    v23 = v19 + 20;
    v22 = v19 + 19;
    v21 = v19 + 18;
    v36 = v19 + 17;
    v37 = v19 + 31;
    v38 = v19 + 30;
    v39 = v19 + 29;
    v40 = v19 + 28;
    v41 = v19 + 27;
    v42 = v19 + 26;
    v43 = v19 + 25;
    if (a2 == 2)
    {
      v19 += 16;
    }

    else
    {
      v19 += 24;
    }

    if (a2 == 2)
    {
      v20 = v36;
    }

    else
    {
      v20 = v43;
    }

    if (a2 != 2)
    {
      v21 = v42;
      v22 = v41;
      v23 = v40;
      v33 = v39;
      v34 = v38;
      v35 = v37;
    }
  }

  else
  {
    v20 = v19 + 1;
    v21 = v19 + 2;
    v22 = v19 + 3;
    v23 = v19 + 4;
    v24 = v19 + 6;
    v25 = v19 + 7;
    v26 = v19 + 15;
    v27 = v19 + 14;
    v28 = v19 + 13;
    v29 = v19 + 12;
    v30 = v19 + 11;
    v31 = v19 + 10;
    v32 = v19 + 9;
    if (a2)
    {
      v19 += 8;
      v20 = v32;
      v21 = v31;
      v22 = v30;
      v23 = v29;
      v33 = v28;
    }

    else
    {
      v33 = v19 + 5;
    }

    if (a2)
    {
      v34 = v27;
    }

    else
    {
      v34 = v24;
    }

    if (a2)
    {
      v35 = v26;
    }

    else
    {
      v35 = v25;
    }
  }

  v44 = *v35;
  v45 = *v33;
  v46 = *v22;
  if (!*v20)
  {
    v15 = *v19;
  }

  if (!v46)
  {
    v16 = *v21;
  }

  if (!v45)
  {
    v17 = *v23;
  }

  if (!v44)
  {
    v18 = *v34;
  }

  v47 = *a3;
  v48 = a3[1];
  v49 = *(a3 + *(type metadata accessor for JindoMetricsDefinition(0) + 32) + 48);
  v53 = 0;
  v51[1] = v47;
  v51[2] = v48;
  v51[3] = v49;
  *&v51[4] = v15;
  *&v51[5] = v16;
  *&v51[6] = v17;
  *&v51[7] = v18;
  v52 = 0;
  sub_192101B78();
  return sub_1922261F0();
}

void *sub_192101780@<X0>(uint64_t a1@<X8>)
{
  sub_192101B78();
  result = sub_1922261E0();
  if (v7)
  {
    __break(1u);
  }

  else
  {
    *a1 = v3;
    *(a1 + 16) = v4;
    *(a1 + 32) = v5;
    *(a1 + 48) = v6;
  }

  return result;
}

uint64_t sub_192101850(uint64_t result, unint64_t a2)
{
  if ((a2 >> 62) >= 2)
  {
    if (a2 >> 62 == 3)
    {
      return v3;
    }
  }
}

double sub_1921018A0(uint64_t a1, unint64_t a2)
{
  if ((a2 >> 62) >= 2)
  {
    if (a2 >> 62 == 3)
    {
      return result;
    }
  }

  return result;
}

unint64_t sub_1921018F0()
{
  result = qword_1EADEDE58;
  if (!qword_1EADEDE58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADEFFF8, &qword_1922320E0);
    sub_192031E74(qword_1EADED798, &qword_1EADF0000, &qword_1922320E8, &unk_1922343B0);
    sub_1921019A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEDE58);
  }

  return result;
}

unint64_t sub_1921019A8()
{
  result = qword_1EADED410;
  if (!qword_1EADED410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADED410);
  }

  return result;
}

unint64_t sub_1921019FC()
{
  result = qword_1EADEDE50;
  if (!qword_1EADEDE50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0008, &qword_1922320F0);
    sub_192031E74(qword_1EADED418, &qword_1EADF0010, &qword_1922320F8, &unk_192234360);
    sub_1921019A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADEDE50);
  }

  return result;
}

uint64_t sub_192101AB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_192101B1C(uint64_t a1)
{
  v2 = type metadata accessor for MetricsRequest(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_192101B78()
{
  result = qword_1EADED890;
  if (!qword_1EADED890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADED890);
  }

  return result;
}

void sub_192101C04(uint64_t a1)
{
  sub_19203F7F4(319);
  if (v1 <= 0x3F)
  {
    sub_192101D38(319, &qword_1EADEE4A8, MEMORY[0x1E69815C0], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_192101D38(319, qword_1EADEDA70, &type metadata for OptionalMargins, _s14IndexedStorageVMa);
      if (v3 <= 0x3F)
      {
        sub_192101D38(319, &qword_1EADEDA68, &type metadata for DynamicIslandBackground, _s14IndexedStorageVMa);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_192101D38(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_192101D8C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_192225EE0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_192101E24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_192102490();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t EnvironmentValues.widgetDescriptor.getter()
{
  sub_192101EC4();
  sub_1922261E0();
  return v1;
}

unint64_t sub_192101EC4()
{
  result = qword_1ED749DC0;
  if (!qword_1ED749DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED749DC0);
  }

  return result;
}

void (*EnvironmentValues.widgetDescriptor.modify(void *a1))(uint64_t a1, char a2)
{
  a1[2] = v1;
  a1[3] = sub_192101EC4();
  sub_1922261E0();
  return sub_192101FB4;
}

void sub_192101FB4(uint64_t a1, char a2)
{
  v2 = *a1;
  *(a1 + 8) = *a1;
  if (a2)
  {
    v4 = v2;
    sub_1922261F0();
    v5 = *a1;
  }

  else
  {
    sub_1922261F0();
  }
}

void *sub_192102048()
{
  v1 = sub_1922261D0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  if (*(v0 + 8) == 1)
  {
    v6 = v5;
  }

  else
  {

    sub_192227FA0();
    v7 = sub_192226D00();
    sub_1922257A0();

    _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
    swift_getAtKeyPath();
    v8 = sub_19209561C(v5, 0);
    (*(v2 + 8))(v4, v1, v8);
    return v10[1];
  }

  return v5;
}

unint64_t sub_192102224()
{
  result = qword_1EADECDD0;
  if (!qword_1EADECDD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0028, &qword_192232200);
    sub_19206CE70();
    sub_192031E74(&qword_1EADECD18, &qword_1EADF0108, &qword_192232320, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADECDD0);
  }

  return result;
}

unint64_t sub_1921022DC()
{
  result = qword_1EADED308;
  if (!qword_1EADED308)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF00B0, &qword_1922322B8);
    sub_19206D710();
    sub_19206D880();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADED308);
  }

  return result;
}

void sub_192102390(uint64_t a1)
{
  if (!qword_1EADECE88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0110, &qword_1922326A0);
    v1 = sub_192225A00();
    if (!v2)
    {
      atomic_store(v1, &qword_1EADECE88);
    }
  }
}

unint64_t sub_1921023F4()
{
  result = qword_1EADECD58;
  if (!qword_1EADECD58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0118, &qword_1922326A8);
    sub_192102224();
    sub_19206D79C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADECD58);
  }

  return result;
}

unint64_t sub_192102490()
{
  result = qword_1EADF0120;
  if (!qword_1EADF0120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0110, &qword_1922326A0);
    sub_192102514();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF0120);
  }

  return result;
}

unint64_t sub_192102514()
{
  result = qword_1EADF0128;
  if (!qword_1EADF0128)
  {
    sub_19202A7A8(255, &qword_1ED74C500, 0x1E6994388);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF0128);
  }

  return result;
}

uint64_t CHSWidget.logDescription.getter()
{
  v1 = v0;
  v2 = [v0 extensionBundleIdentifier];
  v3 = sub_192227960();
  v5 = v4;

  MEMORY[0x193B0A990](v3, v5);

  MEMORY[0x193B0A990](58, 0xE100000000000000);
  v6 = [v1 kind];
  v7 = sub_192227960();
  v9 = v8;

  MEMORY[0x193B0A990](v7, v9);

  MEMORY[0x193B0A990](93, 0xE100000000000000);
  return 91;
}

uint64_t CHSWidgetPersonality.logDescription.getter()
{
  v1 = v0;
  v2 = [v0 extensionBundleIdentifier];
  v3 = sub_192227960();
  v5 = v4;

  MEMORY[0x193B0A990](v3, v5);

  MEMORY[0x193B0A990](58, 0xE100000000000000);
  v6 = [v1 kind];
  v7 = sub_192227960();
  v9 = v8;

  MEMORY[0x193B0A990](v7, v9);

  MEMORY[0x193B0A990](93, 0xE100000000000000);
  return 91;
}

uint64_t WidgetAccentedRenderingModeViewModifier.body(content:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v80 = a2;
  v81 = a1;
  v2 = sub_192226840();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v68 = &v62 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0130, &qword_192232780);
  MEMORY[0x1EEE9AC00](v84);
  v69 = &v62 - v4;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0138, &qword_192232788);
  MEMORY[0x1EEE9AC00](v65);
  v66 = &v62 - v5;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0140, &qword_192232790);
  MEMORY[0x1EEE9AC00](v64);
  v63 = &v62 - v6;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0148, &qword_192232798);
  MEMORY[0x1EEE9AC00](v75);
  v67 = &v62 - v7;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0150, &qword_1922327A0);
  MEMORY[0x1EEE9AC00](v73);
  v74 = &v62 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0158, &qword_1922327A8);
  MEMORY[0x1EEE9AC00](v9);
  v76 = &v62 - v10;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0160, &qword_1922327B0);
  MEMORY[0x1EEE9AC00](v72);
  v71 = &v62 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0168, &qword_1922327B8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v62 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0170, &qword_1922327C0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v62 - v16;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0178, &qword_1922327C8);
  MEMORY[0x1EEE9AC00](v70);
  v19 = &v62 - v18;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0180, &qword_1922327D0);
  MEMORY[0x1EEE9AC00](v82);
  v83 = &v62 - v20;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0188, &qword_1922327D8);
  MEMORY[0x1EEE9AC00](v77);
  v22 = &v62 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0190, &qword_1922327E0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v62 - v24;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0198, &qword_1922327E8);
  MEMORY[0x1EEE9AC00](v78);
  v27 = &v62 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF01A0, &qword_1922327F0);
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v62 - v30;
  v32 = *v79;
  if (v32 > 1)
  {
    if (v32 == 2)
    {
      v79 = v29;
      v68 = v31;
      KeyPath = swift_getKeyPath();
      v44 = swift_getKeyPath();
      v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF01A8, &qword_1922327F8);
      v46 = v71;
      (*(*(v45 - 8) + 16))(v71, v81, v45);
      v47 = v46 + *(v72 + 36);
      *v47 = KeyPath;
      *(v47 + 8) = 0;
      *(v47 + 16) = v44;
      *(v47 + 24) = 256;
      v48 = v63;
      sub_19202CFFC(v46, v63, &qword_1EADF0160, &qword_1922327B0);
      v69 = v9;
      sub_19202CFFC(v48, v66, &qword_1EADF0140, &qword_192232790);
      swift_storeEnumTagMultiPayload();
      sub_192103A64();
      sub_19210394C();
      v49 = v67;
      sub_1922266E0();
      sub_192033970(v48, &qword_1EADF0140, &qword_192232790);
      sub_192033970(v46, &qword_1EADF0160, &qword_1922327B0);
      v35 = &qword_1EADF0148;
      v36 = &qword_192232798;
      sub_19202CFFC(v49, v74, &qword_1EADF0148, &qword_192232798);
      swift_storeEnumTagMultiPayload();
      sub_1921039D8();
      v50 = v76;
      sub_1922266E0();
      sub_19202CFFC(v50, v22, &qword_1EADF0158, &qword_1922327A8);
      swift_storeEnumTagMultiPayload();
      sub_192103724();
      sub_1921038C0();
      v51 = v68;
      sub_1922266E0();
      sub_192033970(v50, &qword_1EADF0158, &qword_1922327A8);
      sub_19202CFFC(v51, v83, &qword_1EADF01A0, &qword_1922327F0);
      swift_storeEnumTagMultiPayload();
      sub_192103698();
      sub_192103AF0(&qword_1ED748C98, &qword_1EADF0130, &qword_192232780);
      sub_1922266E0();
      sub_192033970(v51, &qword_1EADF01A0, &qword_1922327F0);
      v40 = v49;
    }

    else
    {
      if (v32 == 3)
      {
        sub_192226830();
        v33 = v69;
        sub_192226CD0();
        v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF01A8, &qword_1922327F8);
        (*(*(v34 - 8) + 16))(v33, v81, v34);
        v35 = &qword_1EADF0130;
        v36 = &qword_192232780;
        sub_19202CFFC(v33, v83, &qword_1EADF0130, &qword_192232780);
        swift_storeEnumTagMultiPayload();
        sub_192103698();
        sub_192103AF0(&qword_1ED748C98, &qword_1EADF0130, &qword_192232780);
        sub_1922266E0();
LABEL_10:
        v40 = v33;
        goto LABEL_11;
      }

      v52 = v22;
      v53 = v31;
      v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF01A8, &qword_1922327F8);
      (*(*(v54 - 8) + 16))(v25, v81, v54);
      swift_storeEnumTagMultiPayload();
      sub_1921037B0();
      sub_192103814();
      sub_1922266E0();
      sub_19202CFFC(v27, v52, &qword_1EADF0198, &qword_1922327E8);
      swift_storeEnumTagMultiPayload();
      sub_192103724();
      sub_1921038C0();
      sub_1922266E0();
      sub_192033970(v27, &qword_1EADF0198, &qword_1922327E8);
      v35 = &qword_1EADF01A0;
      v36 = &qword_1922327F0;
      sub_19202CFFC(v53, v83, &qword_1EADF01A0, &qword_1922327F0);
      swift_storeEnumTagMultiPayload();
      sub_192103698();
      sub_192103AF0(&qword_1ED748C98, &qword_1EADF0130, &qword_192232780);
      sub_1922266E0();
      v40 = v53;
    }

LABEL_11:
    v41 = v35;
    v42 = v36;
    return sub_192033970(v40, v41, v42);
  }

  v67 = v19;
  v68 = v31;
  v69 = v9;
  v79 = v29;
  if (v32)
  {
    v55 = swift_getKeyPath();
    v56 = swift_getKeyPath();
    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF01A8, &qword_1922327F8);
    v33 = v71;
    (*(*(v57 - 8) + 16))(v71, v81, v57);
    v58 = v33 + *(v72 + 36);
    *v58 = v55;
    *(v58 + 8) = 0;
    *(v58 + 16) = v56;
    *(v58 + 24) = 0;
    v35 = &qword_1EADF0160;
    v36 = &qword_1922327B0;
    sub_19202CFFC(v33, v74, &qword_1EADF0160, &qword_1922327B0);
    swift_storeEnumTagMultiPayload();
    sub_19210394C();
    sub_1921039D8();
    v59 = v76;
    sub_1922266E0();
    sub_19202CFFC(v59, v22, &qword_1EADF0158, &qword_1922327A8);
    swift_storeEnumTagMultiPayload();
    sub_192103724();
    sub_1921038C0();
    v60 = v68;
    sub_1922266E0();
    sub_192033970(v59, &qword_1EADF0158, &qword_1922327A8);
    sub_19202CFFC(v60, v83, &qword_1EADF01A0, &qword_1922327F0);
    swift_storeEnumTagMultiPayload();
    sub_192103698();
    sub_192103AF0(&qword_1ED748C98, &qword_1EADF0130, &qword_192232780);
    sub_1922266E0();
    sub_192033970(v60, &qword_1EADF01A0, &qword_1922327F0);
    goto LABEL_10;
  }

  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF01A8, &qword_1922327F8);
  (*(*(v37 - 8) + 16))(v17, v81, v37);
  sub_19202CFFC(v17, v14, &qword_1EADF0170, &qword_1922327C0);
  swift_storeEnumTagMultiPayload();
  sub_192103AF0(qword_1ED748CA0, &qword_1EADF0170, &qword_1922327C0);
  sub_1921037B0();
  v81 = v22;
  v38 = v67;
  sub_1922266E0();
  sub_192033970(v17, &qword_1EADF0170, &qword_1922327C0);
  sub_19202CFFC(v38, v25, &qword_1EADF0178, &qword_1922327C8);
  swift_storeEnumTagMultiPayload();
  sub_192103814();
  sub_1922266E0();
  sub_19202CFFC(v27, v81, &qword_1EADF0198, &qword_1922327E8);
  swift_storeEnumTagMultiPayload();
  sub_192103724();
  sub_1921038C0();
  v39 = v68;
  sub_1922266E0();
  sub_192033970(v27, &qword_1EADF0198, &qword_1922327E8);
  sub_19202CFFC(v39, v83, &qword_1EADF01A0, &qword_1922327F0);
  swift_storeEnumTagMultiPayload();
  sub_192103698();
  sub_192103AF0(&qword_1ED748C98, &qword_1EADF0130, &qword_192232780);
  sub_1922266E0();
  sub_192033970(v39, &qword_1EADF01A0, &qword_1922327F0);
  v40 = v38;
  v41 = &qword_1EADF0178;
  v42 = &qword_1922327C8;
  return sub_192033970(v40, v41, v42);
}

unint64_t sub_192103698()
{
  result = qword_1ED748C48;
  if (!qword_1ED748C48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF01A0, &qword_1922327F0);
    sub_192103724();
    sub_1921038C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED748C48);
  }

  return result;
}

unint64_t sub_192103724()
{
  result = qword_1ED748C68;
  if (!qword_1ED748C68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0198, &qword_1922327E8);
    sub_1921037B0();
    sub_192103814();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED748C68);
  }

  return result;
}

unint64_t sub_1921037B0()
{
  result = qword_1ED748C38;
  if (!qword_1ED748C38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF01A8, &qword_1922327F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED748C38);
  }

  return result;
}

unint64_t sub_192103814()
{
  result = qword_1ED748C60;
  if (!qword_1ED748C60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0178, &qword_1922327C8);
    sub_192103AF0(qword_1ED748CA0, &qword_1EADF0170, &qword_1922327C0);
    sub_1921037B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED748C60);
  }

  return result;
}

unint64_t sub_1921038C0()
{
  result = qword_1ED748C58;
  if (!qword_1ED748C58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0158, &qword_1922327A8);
    sub_19210394C();
    sub_1921039D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED748C58);
  }

  return result;
}

unint64_t sub_19210394C()
{
  result = qword_1ED748C90;
  if (!qword_1ED748C90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0160, &qword_1922327B0);
    sub_1921037B0();
    sub_192040CD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED748C90);
  }

  return result;
}

unint64_t sub_1921039D8()
{
  result = qword_1ED748C50;
  if (!qword_1ED748C50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0148, &qword_192232798);
    sub_192103A64();
    sub_19210394C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED748C50);
  }

  return result;
}

unint64_t sub_192103A64()
{
  result = qword_1ED748C80;
  if (!qword_1ED748C80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0140, &qword_192232790);
    sub_19210394C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED748C80);
  }

  return result;
}

uint64_t sub_192103AF0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    sub_1921037B0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WidgetAccentedRenderingModeViewModifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 <= 4)
  {
    v7 = 4;
  }

  else
  {
    v7 = *a1;
  }

  v8 = v7 - 5;
  if (v6 < 4)
  {
    v9 = -1;
  }

  else
  {
    v9 = v8;
  }

  return (v9 + 1);
}

unint64_t sub_192103C38()
{
  result = qword_1ED748C40;
  if (!qword_1ED748C40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF01B0, &qword_1922328F8);
    sub_192103698();
    sub_192103AF0(&qword_1ED748C98, &qword_1EADF0130, &qword_192232780);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED748C40);
  }

  return result;
}

unint64_t sub_192103CF8()
{
  result = qword_1EADF01B8;
  if (!qword_1EADF01B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF01B8);
  }

  return result;
}

uint64_t WidgetRelevanceAttribute<A>.init(context:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_192224CC0();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF01C0, qword_1922329B0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t WidgetRelevanceAttribute<A>.init(group:)@<X0>(_OWORD *a1@<X0>, _OWORD *a2@<X8>)
{
  *a2 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF01C0, qword_1922329B0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t WidgetRelevanceAttribute<A>.init(configuration:context:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = type metadata accessor for WidgetRelevanceEntry.Attribute(0, a3, a3, a4);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v14 - v10;
  v12 = sub_192224CC0();
  (*(*(v12 - 8) + 32))(v11, a2, v12);
  swift_storeEnumTagMultiPayload();
  return sub_192203894(a1, v11, a3, a5);
}

{
  v9 = type metadata accessor for WidgetRelevanceEntry.Attribute(0, a3, a3, a4);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v14 - v10;
  v15 = a1;
  v12 = sub_192224CC0();
  (*(*(v12 - 8) + 32))(v11, a2, v12);
  swift_storeEnumTagMultiPayload();
  return sub_192203894(&v15, v11, a3, a5);
}

uint64_t sub_19210406C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for WidgetRelevanceEntry(319, *(a1 + 16), a3, a4);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1921040DC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(sub_192224CC0() - 8);
  v9 = 16;
  if (*(v8 + 64) > 0x10uLL)
  {
    v9 = *(v8 + 64);
  }

  if (v7 <= 0xFE)
  {
    v10 = 254;
  }

  else
  {
    v10 = v7;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = *(v8 + 80) & 0xF8 | 7;
  v12 = *(v6 + 64) + v11;
  if (a2 <= v10)
  {
    goto LABEL_30;
  }

  v13 = v9 + (v12 & ~v11) + 1;
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v17 = ((a2 - v10 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v17))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if (v17 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if (v17 < 2)
    {
LABEL_30:
      if (v7 < 0xFE)
      {
        v22 = *(((a1 + v12) & ~v11) + v9);
        if (v22 >= 2)
        {
          return (v22 ^ 0xFF) + 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v21 = *(v6 + 48);

        return v21(a1, v7, v5);
      }
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_30;
  }

LABEL_17:
  v18 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v18 = 0;
  }

  if (v13)
  {
    if (v13 <= 3)
    {
      v19 = v13;
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

  return v10 + (v20 | v18) + 1;
}

void sub_19210432C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v28 = v8;
  v9 = *(v8 + 84);
  v10 = *(sub_192224CC0() - 8);
  v11 = *(v10 + 64);
  if (v11 <= 0x10)
  {
    v11 = 16;
  }

  if (v9 <= 0xFE)
  {
    v12 = 254;
  }

  else
  {
    v12 = v9;
  }

  v13 = *(v10 + 80) & 0xF8 | 7;
  v14 = *(v8 + 64) + v13;
  v15 = v11 + 1;
  v16 = (v14 & ~v13) + v11 + 1;
  if (a3 <= v12)
  {
    v17 = 0;
  }

  else if (v16 <= 3)
  {
    v20 = ((a3 - v12 + ~(-1 << (8 * v16))) >> (8 * v16)) + 1;
    if (HIWORD(v20))
    {
      v17 = 4;
    }

    else
    {
      if (v20 < 0x100)
      {
        v21 = 1;
      }

      else
      {
        v21 = 2;
      }

      if (v20 >= 2)
      {
        v17 = v21;
      }

      else
      {
        v17 = 0;
      }
    }
  }

  else
  {
    v17 = 1;
  }

  if (v12 < a2)
  {
    v18 = ~v12 + a2;
    if (v16 < 4)
    {
      v19 = (v18 >> (8 * v16)) + 1;
      if (v16)
      {
        v22 = v18 & ~(-1 << (8 * v16));
        bzero(a1, v16);
        if (v16 != 3)
        {
          if (v16 == 2)
          {
            *a1 = v22;
            if (v17 > 1)
            {
LABEL_57:
              if (v17 == 2)
              {
                *&a1[v16] = v19;
              }

              else
              {
                *&a1[v16] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v17 > 1)
            {
              goto LABEL_57;
            }
          }

          goto LABEL_54;
        }

        *a1 = v22;
        a1[2] = BYTE2(v22);
      }

      if (v17 > 1)
      {
        goto LABEL_57;
      }
    }

    else
    {
      bzero(a1, v16);
      *a1 = v18;
      v19 = 1;
      if (v17 > 1)
      {
        goto LABEL_57;
      }
    }

LABEL_54:
    if (v17)
    {
      a1[v16] = v19;
    }

    return;
  }

  if (v17 > 1)
  {
    if (v17 != 2)
    {
      *&a1[v16] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    }

    *&a1[v16] = 0;
LABEL_32:
    if (!a2)
    {
      return;
    }

    goto LABEL_33;
  }

  if (!v17)
  {
    goto LABEL_32;
  }

  a1[v16] = 0;
  if (!a2)
  {
    return;
  }

LABEL_33:
  if (v9 < 0xFE)
  {
    v24 = (&a1[v14] & ~v13);
    if (a2 > 0xFE)
    {
      if (v15 <= 3)
      {
        v25 = ~(-1 << (8 * v15));
      }

      else
      {
        v25 = -1;
      }

      if (v15)
      {
        v26 = v25 & (a2 - 255);
        if (v15 <= 3)
        {
          v27 = v15;
        }

        else
        {
          v27 = 4;
        }

        bzero(v24, v15);
        if (v27 > 2)
        {
          if (v27 == 3)
          {
            *v24 = v26;
            v24[2] = BYTE2(v26);
          }

          else
          {
            *v24 = v26;
          }
        }

        else if (v27 == 1)
        {
          *v24 = v26;
        }

        else
        {
          *v24 = v26;
        }
      }
    }

    else
    {
      v24[v11] = -a2;
    }
  }

  else
  {
    v23 = *(v28 + 56);

    v23(a1, a2, v9, v7);
  }
}

uint64_t (*ActivityConfiguration.init<A>(for:content:dynamicIsland:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9))@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1922253A0();
  v17 = swift_allocObject();
  *(v17 + 2) = a5;
  *(v17 + 3) = a6;
  *(v17 + 4) = a7;
  *(v17 + 5) = a9;
  *(v17 + 6) = a1;
  *(v17 + 7) = a2;
  v19 = type metadata accessor for ActivityConfiguration(0, a5, a7, v18);
  v20 = (a8 + *(v19 + 36));
  *v20 = sub_192104820;
  v20[1] = v17;
  result = swift_allocObject();
  *(result + 2) = a5;
  *(result + 3) = a6;
  *(result + 4) = a7;
  *(result + 5) = a9;
  *(result + 6) = a3;
  *(result + 7) = a4;
  v22 = (a8 + *(v19 + 40));
  *v22 = sub_192104848;
  v22[1] = result;
  return result;
}

uint64_t sub_192104790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = MEMORY[0x1EEE9AC00](a1);
  v8(v7);
  return sub_192227570();
}

uint64_t sub_192104848@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(v2 + 48);
  a2[3] = type metadata accessor for DynamicIsland(0);
  a2[4] = &off_1F06ACEC0;
  __swift_allocate_boxed_opaque_existential_1(a2);
  return v5(a1);
}

uint64_t ActivityConfiguration.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v30 = type metadata accessor for ViewSource(0);
  MEMORY[0x1EEE9AC00](v30);
  v29 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v27 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - v10;
  v26 = *(v5 + 16);
  v26(&v25 - v10, v2, a1, v9);
  v12 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v13 = swift_allocObject();
  v28 = v13;
  v15 = *(a1 + 16);
  v14 = *(a1 + 24);
  *(v13 + 16) = v15;
  *(v13 + 24) = v14;
  v16 = *(v5 + 32);
  v16(v13 + v12, v11, a1);
  v17 = v27;
  (v26)(v27, v32, a1);
  v18 = swift_allocObject();
  *(v18 + 16) = v15;
  *(v18 + 24) = v14;
  v16(v18 + v12, v17, a1);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE28, &qword_19222B6A0);
  v20 = v29;
  v21 = &v29[*(v19 + 48)];
  v22 = sub_1922253B0();
  (*(*(v22 - 8) + 16))(v20, v32, v22);
  v23 = v28;
  *v21 = sub_192104C74;
  v21[1] = v23;
  v21[2] = sub_192104E3C;
  v21[3] = v18;
  swift_storeEnumTagMultiPayload();
  return sub_19207ED1C(v20, v31);
}

uint64_t sub_192104B30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for ActivityViewContext(0, a3, a4, a4);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v18 - v11;
  v14 = *(a2 + *(type metadata accessor for ActivityConfiguration(0, a3, a4, v13) + 36));
  v15 = a4;
  v16 = a1;
  sub_19215F080(a3, v15, v12);
  if (!v4)
  {
    v16 = v14(v12);
    (*(v10 + 8))(v12, v9);
  }

  return v16;
}

uint64_t sub_192104C74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(type metadata accessor for ActivityConfiguration(0, v6, v7, a4) - 8);
  return sub_192104B30(a1, v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v6, v7);
}

uint64_t sub_192104CFC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v15[1] = a4;
  v8 = type metadata accessor for ActivityViewContext(0, a2, a3, a3);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v15 - v10;
  v13 = *(a1 + *(type metadata accessor for ActivityConfiguration(0, a2, a3, v12) + 40));
  result = sub_19215F080(a2, a3, v11);
  if (!v4)
  {
    v13(v11);
    return (*(v9 + 8))(v11, v8);
  }

  return result;
}

uint64_t sub_192104E3C@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = *(type metadata accessor for ActivityConfiguration(0, v4, v5, a1) - 8);
  return sub_192104CFC(v2 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), v4, v5, a2);
}

uint64_t ActivityPreviewSourceStaleModifications.hashValue.getter()
{
  v1 = *v0;
  sub_192228AD0();
  MEMORY[0x193B0BA90](v1);
  return sub_192228B30();
}

uint64_t ActivityConfiguration.archivedViewCollections(for:metricsDefinition:environment:staleModifications:supportedFamilies:)(uint64_t a1, uint64_t a2, uint64_t *a3, _BYTE *a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 168) = a6;
  *(v7 + 176) = v6;
  *(v7 + 152) = a2;
  *(v7 + 160) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF1C0, &unk_192232A90);
  *(v7 + 184) = swift_task_alloc();
  *(v7 + 192) = swift_task_alloc();
  v11 = type metadata accessor for JindoViewCollection(0);
  *(v7 + 200) = v11;
  *(v7 + 208) = *(v11 - 8);
  *(v7 + 216) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFA58, &unk_19222F820);
  *(v7 + 224) = swift_task_alloc();
  v12 = type metadata accessor for ActivityViewCollection(0);
  *(v7 + 232) = v12;
  *(v7 + 240) = *(v12 - 8);
  *(v7 + 248) = swift_task_alloc();
  *(v7 + 256) = swift_task_alloc();
  *(v7 + 264) = swift_task_alloc();
  v13 = *(a6 + 16);
  *(v7 + 272) = v13;
  v14 = *(a6 + 24);
  *(v7 + 280) = v14;
  v16 = type metadata accessor for ActivityViewContext(255, v13, v14, v15);
  *(v7 + 288) = v16;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  *(v7 + 296) = TupleTypeMetadata2;
  v18 = *(TupleTypeMetadata2 - 8);
  *(v7 + 304) = v18;
  *(v7 + 312) = *(v18 + 64);
  *(v7 + 320) = swift_task_alloc();
  *(v7 + 328) = swift_task_alloc();
  *(v7 + 336) = *(v13 - 8);
  *(v7 + 344) = swift_task_alloc();
  *(v7 + 352) = *(v16 - 8);
  *(v7 + 360) = swift_task_alloc();
  *(v7 + 368) = swift_task_alloc();
  *(v7 + 376) = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v7 + 384) = AssociatedTypeWitness;
  *(v7 + 392) = *(AssociatedTypeWitness - 8);
  *(v7 + 400) = swift_task_alloc();
  *(v7 + 408) = swift_task_alloc();
  *(v7 + 416) = swift_getTupleTypeMetadata2();
  v20 = sub_192228240();
  *(v7 + 424) = v20;
  *(v7 + 432) = *(v20 - 8);
  *(v7 + 440) = swift_task_alloc();
  *(v7 + 448) = swift_task_alloc();
  v22 = type metadata accessor for ActivityPreviewSource.Content(0, v13, v14, v21);
  *(v7 + 456) = v22;
  *(v7 + 464) = *(v22 - 8);
  v23 = swift_task_alloc();
  v24 = *a3;
  *(v7 + 472) = v23;
  *(v7 + 480) = v24;
  *(v7 + 520) = *a4;
  *(v7 + 488) = sub_192227CC0();
  *(v7 + 496) = sub_192227CB0();
  v25 = swift_task_alloc();
  *(v7 + 504) = v25;
  *v25 = v7;
  v25[1] = sub_192105490;

  return ActivityPreviewSource.makeContent<A>(for:)(v23, v13, v13, v14);
}

uint64_t sub_192105490()
{
  *(*v1 + 512) = v0;

  v3 = sub_192227C70();
  if (v0)
  {
    v4 = sub_192106518;
  }

  else
  {
    v4 = sub_1921055E8;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, v2);
}

void sub_1921055E8()
{
  v136 = *(v0 + 520);
  v1 = *(v0 + 472);
  v2 = *(v0 + 456);
  v3 = *(v0 + 432);
  v4 = *(v0 + 416);
  v5 = *(v0 + 392);
  v6 = *(v0 + 352);
  v7 = *(v0 + 336);
  v8 = *(v0 + 296);

  v117 = v8;
  v141 = sub_192227820();
  *(v0 + 104) = *(v1 + *(v2 + 36));
  v9 = sub_192227C40();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x193B0AA50](v9, WitnessTable);
  *(v0 + 112) = *(v0 + 96);
  sub_192228660();
  sub_192228630();
  v108 = v4 - 8;
  v110 = (v3 + 32);
  v103 = (v5 + 32);
  v105 = v4;
  v11 = (v7 + 16);
  v113 = (v6 + 16);
  v119 = (v6 + 8);
  v102 = (v5 + 8);
  sub_192228650();
  v114 = (v7 + 16);
  v138 = (v5 + 16);
  while (1)
  {
    v13 = *(v0 + 440);
    v12 = *(v0 + 448);
    v15 = *(v0 + 416);
    v14 = *(v0 + 424);
    sub_192228640();
    (*v110)(v12, v13, v14);
    if ((*(*v108 + 48))(v12, 1, v15) == 1)
    {
      break;
    }

    v120 = *(v0 + 472);
    v16 = *(v0 + 448);
    v18 = *(v0 + 400);
    v17 = *(v0 + 408);
    v19 = *(v0 + 376);
    v20 = *(v0 + 384);
    v21 = *(v0 + 344);
    v22 = *(v0 + 328);
    v129 = *(v0 + 288);
    v23 = *(v0 + 272);
    v123 = *(v0 + 280);
    v24 = *v16;
    (*v103)(v17, &v16[*(v105 + 48)], v20);
    v25 = v120;
    v121 = *v11;
    (*v11)(v21, v25, v23);
    v26 = *v138;
    (*v138)(v18, v17, v20);
    sub_192100360(0xD000000000000016, 0x800000019224A760, v21, v18, v136 == 1, v23, v123, v19);
    v27 = *(v117 + 48);
    v126 = v24;
    *v22 = v24;
    v28 = *v113;
    (*v113)(&v22[v27], v19, v129);
    sub_192227C40();
    sub_192227C20();
    if (v136 == 2)
    {
      v29 = *(v0 + 400);
      v30 = *(v0 + 408);
      v100 = v26;
      v31 = *(v0 + 384);
      v130 = v28;
      v133 = *(v0 + 376);
      v32 = *(v0 + 368);
      v33 = *(v0 + 344);
      v34 = *(v0 + 328);
      v35 = *(v0 + 288);
      v124 = *(v0 + 280);
      v36 = *(v0 + 272);
      v121(v33, *(v0 + 472), v36);
      v100(v29, v30, v31);
      sub_192100360(0xD000000000000016, 0x800000019224A760, v33, v29, 1, v36, v124, v32);
      v37 = *(v117 + 48);
      *v34 = v126;
      v130(&v34[v37], v32, v35);
      sub_192227C20();
      v38 = *v119;
      (*v119)(v32, v35);
      v38(v133, v35);
    }

    else
    {
      (*v119)(*(v0 + 376), *(v0 + 288));
    }

    (*v102)(*(v0 + 408), *(v0 + 384));
    v11 = v114;
  }

  v39 = v141;
  if (sub_192227C10())
  {
    v40 = *(v0 + 352);
    v116 = *(v0 + 320);
    v97 = *(v0 + 312);
    v41 = *(v0 + 304);
    v111 = *(v0 + 240);
    v112 = *(v0 + 288);
    v42 = *(v0 + 208);
    v99 = *(v0 + 200);
    v101 = *(v0 + 216);
    v107 = *(v0 + 152);
    v109 = *(v0 + 232);
    v118 = *(v117 + 48);
    v98 = *(v0 + 168);
    v43 = (*(v0 + 176) + *(v98 + 36));
    v44 = 0;
    v106 = *(type metadata accessor for ActivityMetricsDefinition(0) + 20);
    v122 = v41;
    v125 = (v41 + 16);
    v115 = (v40 + 32);
    v127 = (v42 + 56);
    v45 = MEMORY[0x1E69E7CC0];
    v104 = *v43;
    while (1)
    {
      v46 = sub_192227BF0();
      sub_192227BA0();
      if (v46)
      {
        (*(v122 + 16))(*(v0 + 320), v39 + ((*(v122 + 80) + 32) & ~*(v122 + 80)) + *(v122 + 72) * v44, *(v0 + 296));
        v47 = v44 + 1;
        if (__OFADD__(v44, 1))
        {
          goto LABEL_48;
        }
      }

      else
      {
        v73 = sub_192228450();
        if (v97 != 8)
        {
          goto LABEL_51;
        }

        v74 = *(v0 + 320);
        v75 = *(v0 + 296);
        *(v0 + 120) = v73;
        (*v125)(v74, v0 + 120, v75);
        swift_unknownObjectRelease();
        v47 = v44 + 1;
        if (__OFADD__(v44, 1))
        {
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
          return;
        }
      }

      v48 = **(v0 + 320);
      (*v115)(*(v0 + 360), v116 + v118, *(v0 + 288));
      if (__OFADD__(v48, 1))
      {
        goto LABEL_49;
      }

      v134 = v47;
      v137 = v44;
      v139 = v45;
      v49 = *(v0 + 480);
      v50 = *(v0 + 360);
      v51 = *(v0 + 264);
      v52 = *(v0 + 224);
      v131 = *(v0 + 200);
      v54 = *(v0 + 152);
      v53 = *(v0 + 160);
      *(v0 + 128) = v48 + 1;
      v55 = sub_192228910();
      MEMORY[0x193B0A990](v55);

      MEMORY[0x193B0A990](45, 0xE100000000000000);
      if (*(v50 + *(v112 + 44)))
      {
        v56 = 0x656C617473;
      }

      else
      {
        v56 = 0x746E6572727563;
      }

      if (*(v50 + *(v112 + 44)))
      {
        v57 = 0xE500000000000000;
      }

      else
      {
        v57 = 0xE700000000000000;
      }

      MEMORY[0x193B0A990](v56, v57);

      v58 = v104(v50);
      sub_192106BE4(v54, v51 + v109[7], type metadata accessor for ActivityMetricsDefinition);
      v59 = *v127;
      (*v127)(v51, 1, 1, v131);
      *(v51 + v109[6]) = v58;
      *(v51 + v109[5]) = v49;
      v60 = v51 + v109[9];
      *v60 = 0x206574617453;
      *(v60 + 8) = 0xE600000000000000;
      *(v60 + 16) = 0;
      *(v60 + 18) = 0;
      *(v51 + v109[8]) = v53;
      sub_19202CFFC(v107 + v106, v52, &qword_1EADEFA58, &unk_19222F820);
      v61 = type metadata accessor for JindoMetricsDefinition(0);
      LODWORD(v58) = (*(*(v61 - 8) + 48))(v52, 1, v61);
      v62 = v49;

      sub_192033970(v52, &qword_1EADEFA58, &unk_19222F820);
      if (v58 != 1)
      {
        v63 = *(v0 + 480);
        v64 = *(v0 + 264);
        v65 = *(v0 + 216);
        v66 = *(v0 + 200);
        v67 = *(v0 + 152);
        (*(*(v0 + 176) + *(v98 + 40)))(*(v0 + 360));
        sub_192106BE4(v67, v65 + *(v99 + 24), type metadata accessor for ActivityMetricsDefinition);
        sub_19203832C((v0 + 16), v101 + 8);
        *v65 = v63;
        v68 = v63;
        sub_192033970(v64, &qword_1EADEF1B0, qword_19222C1D0);
        sub_192106D7C(v65, v64, type metadata accessor for JindoViewCollection);
        v59(v64, 0, 1, v66);
      }

      sub_192106BE4(*(v0 + 264), *(v0 + 256), type metadata accessor for ActivityViewCollection);
      v45 = v139;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v45 = sub_1920C33C4(0, v139[2] + 1, 1, v139);
      }

      v70 = v45[2];
      v69 = v45[3];
      if (v70 >= v69 >> 1)
      {
        v45 = sub_1920C33C4((v69 > 1), v70 + 1, 1, v45);
      }

      v72 = *(v0 + 256);
      v71 = *(v0 + 264);
      (*v119)(*(v0 + 360), *(v0 + 288));
      v45[2] = v70 + 1;
      sub_192106D7C(v72, v45 + ((*(v111 + 80) + 32) & ~*(v111 + 80)) + *(v111 + 72) * v70, type metadata accessor for ActivityViewCollection);
      sub_192106C4C(v71);
      v39 = v141;
      v44 = v137 + 1;
      if (v134 == sub_192227C10())
      {
        goto LABEL_31;
      }
    }
  }

  v45 = MEMORY[0x1E69E7CC0];
LABEL_31:

  v128 = v45[2];
  if (v128)
  {
    v76 = 0;
    v77 = MEMORY[0x1E69E7CC0];
    v132 = *(v0 + 240);
    v78 = *(v0 + 512);
    v140 = v45;
    while (v76 < v45[2])
    {
      v79 = *(v0 + 192);
      sub_192106BE4(v45 + ((*(v132 + 80) + 32) & ~*(v132 + 80)) + *(v132 + 72) * v76, *(v0 + 248), type metadata accessor for ActivityViewCollection);
      sub_1920B97C8(v79);
      if (v78)
      {
        v93 = *(v0 + 464);
        v92 = *(v0 + 472);
        v94 = *(v0 + 456);
        v95 = *(v0 + 248);

        sub_192106C4C(v95);
        (*(v93 + 8))(v92, v94);

        v96 = *(v0 + 8);

        v96();
        return;
      }

      v135 = *(v0 + 248);
      v80 = *(v0 + 184);
      v81 = *(v0 + 192);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF01D8, &qword_192232AA0);
      swift_allocObject();
      v82 = sub_192106A78();
      *(v0 + 136) = sub_192227570();
      *(v0 + 144) = v82;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF01E0, &qword_192232AA8);
      swift_allocObject();

      v83 = sub_1922264B0();
      sub_19202CFFC(v81, v80, &qword_1EADEF1C0, &unk_192232A90);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF01E8, &unk_192232AB0);
      v84 = swift_allocObject();
      sub_192106CA8(v80, v84 + *(*v84 + 96));
      *(v84 + *(*v84 + 104)) = v83;

      sub_192226490();
      sub_192226450();
      sub_192033970(v81, &qword_1EADEF1C0, &unk_192232A90);
      swift_weakAssign();

      sub_192106C4C(v135);
      *(v0 + 80) = v84;
      *(v0 + 88) = v83;
      sub_192106D18();
      v85 = sub_1922263C0();
      v87 = v86;
      v45 = v140;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v77 = sub_192072CD4(0, *(v77 + 2) + 1, 1, v77);
      }

      v89 = *(v77 + 2);
      v88 = *(v77 + 3);
      if (v89 >= v88 >> 1)
      {
        v77 = sub_192072CD4((v88 > 1), v89 + 1, 1, v77);
      }

      ++v76;
      *(v77 + 2) = v89 + 1;
      v90 = &v77[16 * v89];
      *(v90 + 4) = v85;
      *(v90 + 5) = v87;

      v78 = 0;
      if (v128 == v76)
      {
        goto LABEL_42;
      }
    }

    goto LABEL_50;
  }

  v77 = MEMORY[0x1E69E7CC0];
LABEL_42:
  (*(*(v0 + 464) + 8))(*(v0 + 472), *(v0 + 456));

  v91 = *(v0 + 8);

  v91(v77);
}

uint64_t sub_192106518()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_19210666C(uint64_t a1, uint64_t a2, uint64_t *a3, _BYTE *a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1920A5800;

  return ActivityConfiguration.archivedViewCollections(for:metricsDefinition:environment:staleModifications:supportedFamilies:)(a1, a2, a3, a4, a5, a6);
}

uint64_t static EnvironmentValues.ActivityFullScreenKey.defaultValue.setter(char a1)
{
  result = swift_beginAccess();
  byte_1EADF01D0 = a1;
  return result;
}

uint64_t sub_192106824@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EADF01D0;
  return result;
}

uint64_t sub_192106874()
{
  sub_1920F8CDC();
  sub_1922261E0();
  return v1;
}

void sub_1921068B0(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF1C0, &unk_192232A90);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v11 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF01D8, &qword_192232AA0);
  swift_allocObject();
  v7 = sub_192106A78();
  v8 = sub_192227570();
  v11[0] = v7;
  v11[1] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF01E0, &qword_192232AA8);
  swift_allocObject();

  v9 = sub_1922264B0();
  sub_19202CFFC(a1, v6, &qword_1EADEF1C0, &unk_192232A90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF01E8, &unk_192232AB0);
  v10 = swift_allocObject();
  sub_192106CA8(v6, v10 + *(*v10 + 96));
  *(v10 + *(*v10 + 104)) = v9;

  sub_192226490();
  sub_192226450();
  sub_192033970(a1, &qword_1EADEF1C0, &unk_192232A90);
  swift_weakAssign();

  *a2 = v10;
  a2[1] = v9;
}

uint64_t sub_192106A78()
{
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE68, &qword_19223B340);
  v1 = sub_192225790();
  v2 = *(v1 - 8);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_19222B4A0;
  sub_192225780();
  sub_192225750();
  sub_192225770();
  sub_192225760();
  v4 = sub_19216FF08(v3);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(v0 + 24) = v4;
  v5 = qword_1EADEDA08;
  sub_192225750();
  (*(v2 + 56))(v0 + v5, 0, 1, v1);
  return v0;
}

uint64_t sub_192106BE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_192106C4C(uint64_t a1)
{
  v2 = type metadata accessor for ActivityViewCollection(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_192106CA8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF1C0, &unk_192232A90);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_192106D18()
{
  result = qword_1EADEDB00[0];
  if (!qword_1EADEDB00[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF01E8, &unk_192232AB0);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EADEDB00);
  }

  return result;
}

uint64_t sub_192106D7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_192106E2C()
{
  result = qword_1EADF01F0;
  if (!qword_1EADF01F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF01F0);
  }

  return result;
}

unint64_t sub_192106E80(uint64_t a1, __n128 a2)
{
  result = sub_1922253B0();
  if (v3 <= 0x3F)
  {
    result = sub_1920DA1D8();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t dispatch thunk of ActivityPreviewSourceExpanding.archivedViewCollections(for:metricsDefinition:environment:staleModifications:supportedFamilies:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v17 = (*(a7 + 8) + **(a7 + 8));
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_1920EF2F4;

  return v17(a1, a2, a3, a4, a5, a6, a7);
}

WidgetKit::SchedulingPriority_optional __swiftcall SchedulingPriority.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue <= 30)
  {
    if (rawValue == 4)
    {
      *v1 = 0;
      return rawValue;
    }

    if (rawValue == 20)
    {
      *v1 = 1;
      return rawValue;
    }

LABEL_12:
    *v1 = 5;
    return rawValue;
  }

  if (rawValue == 47)
  {
    *v1 = 4;
    return rawValue;
  }

  if (rawValue == 37)
  {
    *v1 = 3;
    return rawValue;
  }

  if (rawValue != 31)
  {
    goto LABEL_12;
  }

  *v1 = 2;
  return rawValue;
}

uint64_t sub_192107154()
{
  v1 = *v0;
  sub_192228AD0();
  MEMORY[0x193B0BA90](qword_192232DC0[v1]);
  return sub_192228B30();
}

uint64_t sub_1921071DC()
{
  v1 = *v0;
  sub_192228AD0();
  MEMORY[0x193B0BA90](qword_192232DC0[v1]);
  return sub_192228B30();
}

unint64_t sub_19210726C()
{
  result = qword_1EADECB08;
  if (!qword_1EADECB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADECB08);
  }

  return result;
}

id sub_1921075A4(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for EmptyConfigurationINIntent();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t static EmptyConfiguration.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ED7494A0 != -1)
  {
    swift_once();
  }

  v2 = sub_192224FB0();
  v3 = __swift_project_value_buffer(v2, qword_1ED749180);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static EmptyConfiguration.title.setter(uint64_t a1)
{
  if (qword_1ED7494A0 != -1)
  {
    swift_once();
  }

  v2 = sub_192224FB0();
  v3 = __swift_project_value_buffer(v2, qword_1ED749180);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static EmptyConfiguration.title.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_1ED7494A0 != -1)
  {
    swift_once();
  }

  v1 = sub_192224FB0();
  __swift_project_value_buffer(v1, qword_1ED749180);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_192107820(uint64_t a1)
{
  if (qword_1ED7494A0 != -1)
  {
    swift_once();
  }

  v2 = sub_192224FB0();
  v3 = __swift_project_value_buffer(v2, qword_1ED749180);
  swift_beginAccess();
  (*(*(v2 - 8) + 24))(v3, a1, v2);
  return swift_endAccess();
}

uint64_t sub_192107904(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = sub_19210BAA0();
  *v4 = v2;
  v4[1] = sub_1921079B0;

  return MEMORY[0x1EEDB3E68](a2, v5);
}

uint64_t sub_1921079B0()
{
  v2 = *v1;

  if (v0)
  {
    v4 = *(v2 + 8);

    return v4();
  }

  return result;
}

void ControlToggle.init<A, B, C, D, E>(kind:updatableEntity:content:value:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_1920818CC();
  v26 = sub_192224BB0();
  v25 = v17;
  sub_192107CA8(a3, a12, v32);
  v18 = swift_allocObject();
  *(v18 + 16) = *(a8 + *MEMORY[0x1E69E77B0]);
  *(v18 + 32) = a8;
  *(v18 + 40) = a10;
  *(v18 + 48) = a11;
  *(v18 + 56) = a12;
  *(v18 + 64) = a13;
  *(v18 + 72) = a14;
  *(v18 + 80) = a4;
  *(v18 + 88) = a5;
  v19 = sub_192080D60();
  v31 = 0;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();

  v21 = sub_1921998B8(&type metadata for EmptyConfiguration, AssociatedConformanceWitness);
  sub_192080DB4(a1, a2, &type metadata for EmptyConfiguration, v26, v25, 0, 0, &v31, a9, v32, v21, v22, sub_19210C17C, v18, nullsub_1, 0, a6, a7, 0, 0, &type metadata for EmptyConfiguration, a10, MEMORY[0x1E6981E70], a11, &type metadata for KeyPathToggleBox, a13, MEMORY[0x1E6981E60], a14, v19);

  *(a9 + 192) = 1;
}

{
  sub_1920818CC();
  v17 = sub_192224BB0();
  v26 = v18;
  v27 = v17;
  sub_192107F78(a3, a12, v33);
  v19 = swift_allocObject();
  *(v19 + 16) = *(a8 + *MEMORY[0x1E69E77B0]);
  *(v19 + 32) = a8;
  *(v19 + 40) = a10;
  *(v19 + 48) = a11;
  *(v19 + 56) = a12;
  *(v19 + 64) = a13;
  *(v19 + 72) = a14;
  *(v19 + 80) = a4;
  *(v19 + 88) = a5;
  v20 = sub_192080D60();
  v32 = 0;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();

  v22 = sub_1921998B8(&type metadata for EmptyConfiguration, AssociatedConformanceWitness);
  sub_192199098(a1, a2, &type metadata for EmptyConfiguration, v27, v26, 0, 0, &v32, a9, v33, v22, v23, sub_192108164, v19, a6, a7, 0, 0, &type metadata for EmptyConfiguration, a10, a11, &type metadata for KeyPathToggleBox, a13, a14, v20);

  *(a9 + 192) = 1;
}

uint64_t sub_192107CA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a1;
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a1;
  *a3 = &unk_192233038;
  a3[1] = v6;
  a3[2] = sub_19210C038;
  a3[3] = v7;
  a3[4] = &unk_192233040;
  a3[5] = 0;
}

uint64_t sub_192107D5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();

  return sub_1921998B8(a1, AssociatedConformanceWitness);
}

uint64_t sub_192107F78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a1;
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a1;
  *a3 = &unk_192233010;
  a3[1] = v6;
  a3[2] = sub_19210BE4C;
  a3[3] = v7;
  a3[4] = &unk_192233018;
  a3[5] = 0;
}

uint64_t sub_19210802C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v18 - v13;
  v15(1, v12);
  sub_1921BB14C();
  v16 = *(v8 + 8);
  v16(v10, a7);
  sub_1921BB14C();
  return (v16)(v14, a7);
}

uint64_t sub_1921081A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();

  return sub_1921998B8(a1, AssociatedConformanceWitness);
}

uint64_t sub_1921082EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a8 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v19 - v14;
  v16(1, v13);
  sub_1921BB14C();
  v17 = *(v9 + 8);
  v17(v11, a8);
  sub_1921BB14C();
  return (v17)(v15, a8);
}

uint64_t sub_19210843C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = *(a9 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v19 - v14;
  v16(1, v13);
  sub_1921BB14C();
  v17 = *(v9 + 8);
  v17(v11, a9);
  sub_1921BB14C();
  return (v17)(v15, a9);
}

unint64_t sub_1921085E4()
{
  result = qword_1ED749A90;
  if (!qword_1ED749A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED749A90);
  }

  return result;
}

unint64_t sub_19210863C()
{
  result = qword_1ED749AA0[0];
  if (!qword_1ED749AA0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED749AA0);
  }

  return result;
}

unint64_t sub_192108694()
{
  result = qword_1EADF01F8;
  if (!qword_1EADF01F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF01F8);
  }

  return result;
}

uint64_t sub_19210877C@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = sub_192228240();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v14 - v8;
  v14[1] = a1;
  sub_192228BA0();

  v10 = swift_dynamicCast();
  v11 = *(*(a2 - 8) + 56);
  if (v10)
  {
    v12 = *(a2 - 8);
    v11(v9, 0, 1, a2);
    return (*(v12 + 32))(a3, v9, a2);
  }

  else
  {
    v11(v9, 1, 1, a2);
    (*(v7 + 8))(v9, v6);
    sub_19210BF4C();
    swift_allocError();
    return swift_willThrow();
  }
}

uint64_t sub_19210897C(uint64_t *a1, uint64_t a2)
{
  v2[7] = a1;
  v2[8] = a2;
  v3 = *a1;
  v4 = *(a2 + 8);
  v2[9] = v4;
  v5 = *(v4 + 8);
  v6 = MEMORY[0x1E69E77B0];
  v2[10] = v5;
  v7 = *(v3 + *v6);
  v2[11] = v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2[12] = AssociatedTypeWitness;
  v2[13] = *(AssociatedTypeWitness - 8);
  v2[14] = swift_task_alloc();
  v2[15] = *(v7 - 8);
  v2[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_192108AE8, 0, 0);
}

uint64_t sub_192108AE8()
{
  v1 = v0[11];
  v2 = v0[7];
  v3 = *(v0[8] + 16);
  v4 = sub_19210BD60();
  v0[2] = v1;
  v0[3] = MEMORY[0x1E69E6370];
  v0[4] = v3;
  v0[5] = v4;
  sub_192224D20();
  v5 = sub_192228BA0();
  sub_19210877C(v2, v5, (v0 + 6));
  v0[17] = v0[6];
  sub_192224B30();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = swift_task_alloc();
  v0[18] = v7;
  *v7 = v0;
  v7[1] = sub_192108C8C;
  v8 = v0[16];
  v9 = v0[12];

  return MEMORY[0x1EEDB3838](v8, v9, AssociatedConformanceWitness);
}

uint64_t sub_192108C8C()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  (*(v2[13] + 8))(v2[14], v2[12]);
  if (v0)
  {
    v3 = sub_192108EB0;
  }

  else
  {
    v3 = sub_192108DF4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_192108DF4()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 120);
  v3 = *(v0 + 88);
  sub_192224B60();

  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 160);

  v5 = *(v0 + 8);

  return v5(v4);
}

uint64_t sub_192108EB0()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_192108F2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, char a5, uint64_t a6)
{
  *(v6 + 161) = a5;
  *(v6 + 56) = a4;
  *(v6 + 64) = a6;
  v7 = *a4;
  v8 = *(a6 + 8);
  *(v6 + 72) = v8;
  v9 = *(v8 + 8);
  v10 = MEMORY[0x1E69E77B0];
  *(v6 + 80) = v9;
  v11 = *(v7 + *v10);
  *(v6 + 88) = v11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v6 + 96) = AssociatedTypeWitness;
  *(v6 + 104) = *(AssociatedTypeWitness - 8);
  *(v6 + 112) = swift_task_alloc();
  *(v6 + 120) = *(v11 - 8);
  *(v6 + 128) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19210909C, 0, 0);
}

uint64_t sub_19210909C()
{
  v1 = v0[11];
  v2 = v0[7];
  v3 = *(v0[8] + 16);
  v4 = sub_19210BD60();
  v0[2] = v1;
  v0[3] = MEMORY[0x1E69E6370];
  v0[4] = v3;
  v0[5] = v4;
  sub_192224D20();
  v5 = sub_192228BA0();
  sub_19210877C(v2, v5, (v0 + 6));
  v0[17] = v0[6];
  sub_192224B30();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = swift_task_alloc();
  v0[18] = v7;
  *v7 = v0;
  v7[1] = sub_19210923C;
  v8 = v0[16];
  v9 = v0[12];

  return MEMORY[0x1EEDB3838](v8, v9, AssociatedConformanceWitness);
}

uint64_t sub_19210923C()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  (*(v2[13] + 8))(v2[14], v2[12]);
  if (v0)
  {
    v3 = sub_192109460;
  }

  else
  {
    v3 = sub_1921093A4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1921093A4()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 120);
  v3 = *(v0 + 88);
  *(v0 + 160) = *(v0 + 161);
  sub_192224B80();

  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_192109460()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1921094F8(uint64_t *a1, uint64_t a2)
{
  v2[7] = a1;
  v2[8] = a2;
  v3 = *a1;
  v2[9] = *a1;
  v4 = *(a2 + 8);
  v2[10] = v4;
  v2[11] = *(v4 + 8);
  v5 = *(v3 + *MEMORY[0x1E69E77B0]);
  v2[12] = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2[13] = AssociatedTypeWitness;
  v2[14] = *(AssociatedTypeWitness - 8);
  v2[15] = swift_task_alloc();
  v2[16] = *(v5 - 8);
  v2[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_192109668, 0, 0);
}

uint64_t sub_192109668()
{
  v1 = v0[12];
  v2 = v0[8];
  v3 = v0[7];
  v4 = *(*(v0[9] + *MEMORY[0x1E69E77B0] + 8) + *MEMORY[0x1E695A528] + 8);
  v0[18] = v4;
  v5 = *(v2 + 16);
  WitnessTable = swift_getWitnessTable();
  v0[2] = v1;
  v0[3] = v4;
  v0[4] = v5;
  v0[5] = WitnessTable;
  sub_192224D20();
  v7 = sub_192228BA0();
  sub_19210877C(v3, v7, (v0 + 6));
  v0[19] = v0[6];
  sub_192224B30();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = swift_task_alloc();
  v0[20] = v9;
  *v9 = v0;
  v9[1] = sub_192109848;
  v10 = v0[17];
  v11 = v0[13];

  return MEMORY[0x1EEDB3838](v10, v11, AssociatedConformanceWitness);
}

uint64_t sub_192109848()
{
  v2 = *v1;
  v2[21] = v0;

  if (v0)
  {
    (*(v2[14] + 8))(v2[15], v2[13]);

    return MEMORY[0x1EEE6DFA0](sub_192109C18, 0, 0);
  }

  else
  {
    (*(v2[14] + 8))(v2[15], v2[13]);
    v3 = swift_task_alloc();
    v2[22] = v3;
    WitnessTable = swift_getWitnessTable();
    *v3 = v2;
    v3[1] = sub_192109A24;
    v5 = v2[19];

    return MEMORY[0x1EEDB2C60](v2 + 24, v5, WitnessTable);
  }
}

uint64_t sub_192109A24()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  (*(v2[16] + 8))(v2[17], v2[12]);
  if (v0)
  {
    v3 = sub_192109C94;
  }

  else
  {
    v3 = sub_192109B8C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_192109B8C()
{

  v1 = *(v0 + 192);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_192109C18()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_192109C94()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_192109D10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, char a5, uint64_t a6)
{
  *(v6 + 193) = a5;
  *(v6 + 56) = a4;
  *(v6 + 64) = a6;
  v7 = *a4;
  *(v6 + 72) = *a4;
  v8 = *(a6 + 8);
  *(v6 + 80) = v8;
  *(v6 + 88) = *(v8 + 8);
  v9 = *(v7 + *MEMORY[0x1E69E77B0]);
  *(v6 + 96) = v9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v6 + 104) = AssociatedTypeWitness;
  *(v6 + 112) = *(AssociatedTypeWitness - 8);
  *(v6 + 120) = swift_task_alloc();
  *(v6 + 128) = *(v9 - 8);
  *(v6 + 136) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_192109E84, 0, 0);
}

uint64_t sub_192109E84()
{
  v1 = v0[12];
  v2 = v0[8];
  v3 = v0[7];
  v4 = *(*(v0[9] + *MEMORY[0x1E69E77B0] + 8) + *MEMORY[0x1E695A528] + 8);
  v0[18] = v4;
  v5 = *(v2 + 16);
  WitnessTable = swift_getWitnessTable();
  v0[2] = v1;
  v0[3] = v4;
  v0[4] = v5;
  v0[5] = WitnessTable;
  sub_192224D20();
  v7 = sub_192228BA0();
  sub_19210877C(v3, v7, (v0 + 6));
  v0[19] = v0[6];
  sub_192224B30();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = swift_task_alloc();
  v0[20] = v9;
  *v9 = v0;
  v9[1] = sub_19210A060;
  v10 = v0[17];
  v11 = v0[13];

  return MEMORY[0x1EEDB3838](v10, v11, AssociatedConformanceWitness);
}

uint64_t sub_19210A060()
{
  v2 = *v1;
  *(v2 + 168) = v0;

  if (v0)
  {
    (*(*(v2 + 112) + 8))(*(v2 + 120), *(v2 + 104));

    return MEMORY[0x1EEE6DFA0](sub_19210A404, 0, 0);
  }

  else
  {
    v3 = *(v2 + 193);
    (*(*(v2 + 112) + 8))(*(v2 + 120), *(v2 + 104));
    *(v2 + 192) = v3;
    v4 = swift_task_alloc();
    *(v2 + 176) = v4;
    WitnessTable = swift_getWitnessTable();
    *v4 = v2;
    v4[1] = sub_19210A244;
    v6 = *(v2 + 152);

    return MEMORY[0x1EEDB2C78](v2 + 192, v6, WitnessTable);
  }
}

uint64_t sub_19210A244()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  (*(v2[16] + 8))(v2[17], v2[12]);
  if (v0)
  {
    v3 = sub_19210A47C;
  }

  else
  {
    v3 = sub_19210A388;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_19210A388()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_19210A404()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_19210A47C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_19210A514()
{
  v1 = *(v0 + 16);
  v2 = sub_192225020();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_19210A5B4(uint64_t *a1, uint64_t a2)
{
  v2[13] = a1;
  v2[14] = a2;
  v3 = *a1;
  v2[15] = *a1;
  v2[16] = *(a2 + 8);
  v4 = *(v3 + *MEMORY[0x1E69E77B0]);
  v2[17] = v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2[18] = AssociatedTypeWitness;
  v2[19] = *(AssociatedTypeWitness - 8);
  v2[20] = swift_task_alloc();
  v2[21] = *(v4 - 8);
  v2[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19210A71C, 0, 0);
}

uint64_t sub_19210A71C()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  v4 = v0[13];
  v5 = sub_19210BD60();
  v0[8] = v1;
  v0[9] = MEMORY[0x1E69E6370];
  v0[10] = v2;
  v0[11] = v5;
  v6 = sub_192224D40();
  v0[23] = v6;
  v7 = *(v3 + *MEMORY[0x1E69E77B0] + 8) + *MEMORY[0x1E695A680];
  v8 = *(v7 + 16);
  WitnessTable = swift_getWitnessTable();
  v0[2] = v1;
  v10 = *(v7 + 40);
  v0[3] = v6;
  v0[4] = v8;
  v0[5] = v2;
  v0[6] = WitnessTable;
  v0[7] = v10;
  sub_192224D50();
  v11 = sub_192228BA0();
  sub_192114D64(v4, v11, (v0 + 12));
  v0[24] = v0[12];
  sub_192224B30();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v13 = swift_task_alloc();
  v0[25] = v13;
  *v13 = v0;
  v13[1] = sub_19210A964;
  v14 = v0[22];
  v15 = v0[18];

  return MEMORY[0x1EEDB3838](v14, v15, AssociatedConformanceWitness);
}

uint64_t sub_19210A964()
{
  v2 = *v1;
  v2[26] = v0;

  if (v0)
  {
    (*(v2[19] + 8))(v2[20], v2[18]);

    return MEMORY[0x1EEE6DFA0](sub_19210AD34, 0, 0);
  }

  else
  {
    (*(v2[19] + 8))(v2[20], v2[18]);
    v3 = swift_task_alloc();
    v2[27] = v3;
    WitnessTable = swift_getWitnessTable();
    *v3 = v2;
    v3[1] = sub_19210AB40;
    v5 = v2[24];

    return MEMORY[0x1EEDB2C68](v2 + 29, v5, WitnessTable);
  }
}

uint64_t sub_19210AB40()
{
  v2 = *v1;
  *(*v1 + 224) = v0;

  (*(v2[21] + 8))(v2[22], v2[17]);
  if (v0)
  {
    v3 = sub_19210ADB0;
  }

  else
  {
    v3 = sub_19210ACA8;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_19210ACA8()
{

  v1 = *(v0 + 232);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_19210AD34()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_19210ADB0()
{

  v1 = *(v0 + 8);

  return v1(0);
}

double sub_19210AE2C(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEDF8, &qword_19222B5B0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v15 - v10;
  v12 = sub_192227CF0();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  *(v13 + 32) = a3;
  *(v13 + 40) = a2;
  *(v13 + 48) = a1;

  sub_1921998F0(0, 0, v11, a5, v13);

  return result;
}

uint64_t sub_19210AF40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, char a5, uint64_t a6)
{
  *(v6 + 233) = a5;
  *(v6 + 104) = a4;
  *(v6 + 112) = a6;
  v7 = *a4;
  *(v6 + 120) = *a4;
  *(v6 + 128) = *(a6 + 8);
  v8 = *(v7 + *MEMORY[0x1E69E77B0]);
  *(v6 + 136) = v8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v6 + 144) = AssociatedTypeWitness;
  *(v6 + 152) = *(AssociatedTypeWitness - 8);
  *(v6 + 160) = swift_task_alloc();
  *(v6 + 168) = *(v8 - 8);
  *(v6 + 176) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19210B0AC, 0, 0);
}

uint64_t sub_19210B0AC()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  v4 = v0[13];
  v5 = sub_19210BD60();
  v0[8] = v1;
  v0[9] = MEMORY[0x1E69E6370];
  v0[10] = v2;
  v0[11] = v5;
  v6 = sub_192224D40();
  v0[23] = v6;
  v7 = *(v3 + *MEMORY[0x1E69E77B0] + 8) + *MEMORY[0x1E695A680];
  v8 = *(v7 + 16);
  WitnessTable = swift_getWitnessTable();
  v0[2] = v1;
  v10 = *(v7 + 40);
  v0[3] = v6;
  v0[4] = v8;
  v0[5] = v2;
  v0[6] = WitnessTable;
  v0[7] = v10;
  sub_192224D50();
  v11 = sub_192228BA0();
  sub_192114D64(v4, v11, (v0 + 12));
  v0[24] = v0[12];
  sub_192224B30();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v13 = swift_task_alloc();
  v0[25] = v13;
  *v13 = v0;
  v13[1] = sub_19210B2F0;
  v14 = v0[22];
  v15 = v0[18];

  return MEMORY[0x1EEDB3838](v14, v15, AssociatedConformanceWitness);
}

uint64_t sub_19210B2F0()
{
  v2 = *v1;
  *(v2 + 208) = v0;

  if (v0)
  {
    (*(*(v2 + 152) + 8))(*(v2 + 160), *(v2 + 144));

    return MEMORY[0x1EEE6DFA0](sub_19210B69C, 0, 0);
  }

  else
  {
    v3 = *(v2 + 233);
    (*(*(v2 + 152) + 8))(*(v2 + 160), *(v2 + 144));
    *(v2 + 232) = v3;
    v4 = swift_task_alloc();
    *(v2 + 216) = v4;
    WitnessTable = swift_getWitnessTable();
    *v4 = v2;
    v4[1] = sub_19210B4DC;
    v6 = *(v2 + 192);
    v7 = MEMORY[0x1E69E6370];

    return MEMORY[0x1EEDB2C88](v2 + 232, v6, v7, WitnessTable);
  }
}

uint64_t sub_19210B4DC()
{
  v2 = *v1;
  *(*v1 + 224) = v0;

  (*(v2[21] + 8))(v2[22], v2[17]);
  if (v0)
  {
    v3 = sub_19210B714;
  }

  else
  {
    v3 = sub_19210B620;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_19210B620()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_19210B69C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_19210B714()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_19210B78C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = swift_task_alloc();
  *(v6 + 16) = v10;
  *v10 = v6;
  v10[1] = sub_1920A59A8;

  return sub_192114F64(a1, a2, &type metadata for KeyPathToggleBox, a2, &off_1F06AD550, a6);
}

uint64_t sub_19210B854()
{
  v4 = (*v0 + **v0);
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_19210B93C;

  return v4();
}

uint64_t sub_19210B93C(char a1)
{
  v7 = *v2;

  v4 = *(v7 + 8);
  if (v1)
  {
    v5 = 0;
  }

  else
  {
    v5 = a1 & 1;
  }

  return v4(v5);
}

uint64_t sub_19210BA70()
{
  v1 = *(v0 + 32);

  return v1;
}

unint64_t sub_19210BAA0()
{
  result = qword_1EADF0200;
  if (!qword_1EADF0200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF0200);
  }

  return result;
}

uint64_t sub_19210BAF4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1920EF2F4;

  return sub_19210A5B4(v3, v2);
}

uint64_t sub_19210BBC4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1920A59A8;

  return sub_19210B78C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_19210BC98(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1920B3B44;

  return sub_19210AF40(a1, v4, v5, v7, v8, v6);
}

unint64_t sub_19210BD60()
{
  result = qword_1EADF0208;
  if (!qword_1EADF0208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF0208);
  }

  return result;
}

uint64_t sub_19210BDB4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1920EF9CC;

  return sub_1921094F8(v3, v2);
}

uint64_t sub_19210BE84(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1920B3B44;

  return sub_192109D10(a1, v4, v5, v7, v8, v6);
}

unint64_t sub_19210BF4C()
{
  result = qword_1EADF0210;
  if (!qword_1EADF0210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF0210);
  }

  return result;
}

uint64_t sub_19210BFA0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1920EF9CC;

  return sub_19210897C(v3, v2);
}

uint64_t objectdestroy_33Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_19210C0B0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1920B3B44;

  return sub_192108F2C(a1, v4, v5, v7, v8, v6);
}

uint64_t EnvironmentValues._encodesPreciseTextLayout.getter()
{
  sub_1920579C4();
  sub_1922261E0();
  return v1;
}

uint64_t (*EnvironmentValues._encodesPreciseTextLayout.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_1920579C4();
  sub_1922261E0();
  *(a1 + 16) = *(a1 + 17);
  return sub_19210C260;
}

uint64_t sub_19210C35C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_19210C3CC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_19210C50C(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t type metadata accessor for ControlDescriptorConfiguration(uint64_t a1)
{
  result = qword_1ED748D00;
  if (!qword_1ED748D00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_19210C7CC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEB80, &qword_19222AF60);
  v1 = *(type metadata accessor for WidgetDescriptor(0) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_19222B480;
  sub_19207F348(v0, v3 + v2);
  sub_1920791AC();
  sub_1922269F0();
}

uint64_t EnvironmentValues._localizationToken.getter()
{
  sub_1920573F0();
  sub_1922261E0();
  return v1;
}

uint64_t sub_19210C94C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_19210CAE0();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

void (*EnvironmentValues._localizationToken.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  *(v3 + 40) = sub_1920573F0();
  sub_1922261E0();
  *v4 = v4[1];
  return sub_19210CA48;
}

void sub_19210CA48(uint64_t **a1, char a2)
{
  v3 = *a1;
  v4 = **a1;
  v5 = v3[1];
  v3[2] = v4;
  v3[3] = v5;
  if (a2)
  {
    sub_1920367C8(v4, v5);
    sub_1922261F0();
    sub_192039140(*v3, v3[1]);
  }

  else
  {
    sub_1922261F0();
  }

  free(v3);
}

unint64_t sub_19210CAE0()
{
  result = qword_1EADECF00;
  if (!qword_1EADECF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADECF00);
  }

  return result;
}

double ControlWidgetTemplate.tint(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;

  sub_19210CC9C(sub_19210CC40, v6, a2, a3);

  return result;
}

void sub_19210CBD0(unint64_t (**a1)(uint64_t a1), uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;

  *a1 = sub_19210D198;
  a1[1] = v4;
}

unint64_t sub_19210CC48(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  sub_192227270();
  return v2 | (v3 << 32);
}

double sub_19210CC9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  sub_1920C92D8();

  sub_1922267F0();

  return result;
}

double sub_19210CDA8(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  sub_19210CC9C(a5, v9, a2, a3);

  return result;
}

double ControlWidgetTemplate.accessibilityIdentifier(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;

  sub_19210CC9C(sub_19210CEE8, v8, a3, a4);

  return result;
}

uint64_t sub_19210CEE8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);

  *(a1 + 24) = v4;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_19210CF50(uint64_t a1)
{
  v2 = [objc_opt_self() mainBundle];
  v3 = [v2 bundleIdentifier];

  if (v3)
  {
    sub_192227960();
  }

  v4 = sub_192227A10();

  if (v4)
  {
    *(a1 + 40) = 1;
  }

  return result;
}

void *sub_19210D018(void *result, void (*a2)(__int128 *))
{
  v2 = result[3];
  if (v2)
  {
    v4 = result;
    v5 = result[4];
    __swift_project_boxed_opaque_existential_1(result, result[3]);
    (*(v5 + 24))(&v10, v2, v5);
    a2(&v10);
    v6 = v4[3];
    if (v6)
    {
      v12 = v10;
      v13[0] = *v11;
      *(v13 + 9) = *&v11[9];
      v14 = *&v11[8];
      v7 = v4[4];
      __swift_mutable_project_boxed_opaque_existential_1(v4, v6);
      v8 = *(v7 + 32);

      sub_19210D128(&v14, &v9);
      v8(&v12, v6, v7);
    }
  }

  return result;
}

uint64_t sub_19210D128(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EADEF800, &unk_192231C10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_19210D1B0(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
}

uint64_t sub_19210D1C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_19210D224();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

unint64_t sub_19210D224()
{
  result = qword_1EADF0228;
  if (!qword_1EADF0228)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0230, &qword_192233328);
    sub_19210D2A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF0228);
  }

  return result;
}

unint64_t sub_19210D2A8()
{
  result = qword_1EADF0238[0];
  if (!qword_1EADF0238[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EADF0238);
  }

  return result;
}

uint64_t _s9WidgetKit29AppIntentControlConfigurationV4bodyQrvg_0@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ViewSource(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_192081C60(v1, v5);
  swift_storeEnumTagMultiPayload();
  sub_19207ED1C(v5, a1);
  v6 = *(type metadata accessor for WidgetDescriptor(0) + 28);

  *(a1 + v6) = &unk_1F06A79B8;
  return result;
}

uint64_t AppIntentControlConfiguration.init<A>(kind:provider:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  swift_getAssociatedConformanceWitness();
  v15 = sub_192224BB0();
  v27 = v16;
  v28 = v15;
  v17 = sub_1920C8F78(a7, a10);
  v25 = v18;
  v26 = v17;
  v19 = *(a8 - 8);
  v20 = (*(v19 + 80) + 56) & ~*(v19 + 80);
  v21 = (*(v19 + 64) + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  *(v22 + 2) = a6;
  *(v22 + 3) = a7;
  *(v22 + 4) = a8;
  *(v22 + 5) = a10;
  *(v22 + 6) = a11;
  result = (*(v19 + 32))(&v22[v20], a3, a8);
  v24 = &v22[v21];
  *v24 = a4;
  *(v24 + 1) = a5;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = v28;
  *(a9 + 24) = v27;
  *(a9 + 32) = v26;
  *(a9 + 40) = v25;
  *(a9 + 48) = &unk_192233338;
  *(a9 + 56) = v22;
  *(a9 + 88) = 1;
  return result;
}

uint64_t sub_19210D550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[19] = v17;
  v8[20] = v18;
  v8[17] = a6;
  v8[18] = a8;
  v8[15] = a4;
  v8[16] = a5;
  v8[13] = a2;
  v8[14] = a3;
  v8[12] = a1;
  v8[21] = swift_task_alloc();
  v9 = *(v17 - 8);
  v8[22] = v9;
  v8[23] = v9;
  v8[24] = swift_task_alloc();
  v11 = type metadata accessor for ValueGenerator(0, v17, v19, v10);
  v8[25] = v11;
  v8[26] = *(v11 - 8);
  v8[27] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[28] = AssociatedTypeWitness;
  v8[29] = *(AssociatedTypeWitness - 8);
  v8[30] = swift_task_alloc();
  sub_192227CC0();
  v8[31] = sub_192227CB0();
  v14 = sub_192227C70();
  v8[32] = v14;
  v8[33] = v13;

  return MEMORY[0x1EEE6DFA0](sub_19210D754, v14, v13);
}

uint64_t sub_19210D754()
{
  v1 = v0[13];
  if (v1)
  {
    v2 = v0[27];
    v3 = v0[24];
    v4 = v0[22];
    v5 = v0[19];
    (*(v0[23] + 16))(v3, v0[15], v5);
    (*(v4 + 32))(v2, v3, v5);
    v6 = v1;
    v7 = swift_task_alloc();
    v0[34] = v7;
    *v7 = v0;
    v7[1] = sub_19210D968;
    v8 = v0[30];
    v9 = v0[25];
    v10 = v0[14];

    return sub_19210DEC8(v8, v6, v10, v9);
  }

  else
  {

    type metadata accessor for ControlError(0);
    sub_19210F4DC(&qword_1EADEFC38, type metadata accessor for ControlError, &protocol conformance descriptor for ControlError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_19210D968()
{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v4 = *(*v1 + 208);
  v5 = *(*v1 + 200);
  *(*v1 + 280) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 264);
  v7 = *(v2 + 256);
  if (v0)
  {
    v8 = sub_19210DCD0;
  }

  else
  {
    v8 = sub_19210DB00;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_19210DB00()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 128);

  sub_1922269C0();
  v2(v1);
  sub_1922269B0();
  sub_1920C92D8();
  sub_1922269A0();
  if (*(v0 + 80))
  {
    v4 = *(v0 + 232);
    v3 = *(v0 + 240);
    v5 = *(v0 + 224);
    v6 = *(v0 + 96);
    v7 = *(v0 + 104);

    (*(v4 + 8))(v3, v5);
    v8 = *(v0 + 72);
    *(v0 + 16) = *(v0 + 56);
    *(v0 + 32) = v8;
    *(v0 + 48) = *(v0 + 88);
    sub_19209CBAC((v0 + 16), v6);

    v9 = *(v0 + 8);

    return v9();
  }

  else
  {
    sub_19210F5E0(v0 + 56);
    return sub_192228620();
  }
}

uint64_t sub_19210DCD0()
{
  v1 = *(v0 + 104);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_19210DD70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v4;
  v14 = v3[3];
  v15 = v3[2];
  v8 = (*(*(v3[4] - 8) + 80) + 56) & ~*(*(v3[4] - 8) + 80);
  v9 = (v3 + ((*(*(v3[4] - 8) + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = sub_1920B3B44;

  return sub_19210D550(a1, a2, a3, v3 + v8, v10, v11, v15, v14);
}

uint64_t sub_19210DEC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[23] = a3;
  v5[24] = v4;
  v5[22] = a1;
  v5[25] = *(a4 + 24);
  v5[26] = *(a4 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[27] = AssociatedTypeWitness;
  v5[28] = *(AssociatedTypeWitness - 8);
  v5[29] = swift_task_alloc();
  v8 = swift_getAssociatedTypeWitness();
  v5[30] = v8;
  v5[31] = *(v8 - 8);
  v9 = swift_task_alloc();
  v5[32] = v9;
  v10 = swift_task_alloc();
  v5[33] = v10;
  v11 = *(swift_getAssociatedConformanceWitness() + 8);
  *v10 = v5;
  v10[1] = sub_19210E0B0;

  return sub_19213431C(v9, a2, v8, v11);
}

uint64_t sub_19210E0B0()
{
  *(*v1 + 272) = v0;

  if (v0)
  {
    v2 = sub_19210E750;
  }

  else
  {
    v2 = sub_19210E1C4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_19210E1C4()
{
  v1 = v0[23];
  if (v1 == 1)
  {
    if (qword_1EADEE4E8 != -1)
    {
      swift_once();
    }

    v12 = sub_1922258B0();
    __swift_project_value_buffer(v12, qword_1EAE00810);
    v13 = sub_192225890();
    v14 = sub_192227FB0();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_192028000, v13, v14, "Fetching preview value", v15, 2u);
      MEMORY[0x193B0C7F0](v15, -1, -1);
    }

    v17 = v0[31];
    v16 = v0[32];
    v18 = v0[30];
    v20 = v0[25];
    v19 = v0[26];

    (*(v20 + 32))(v16, v19, v20);
    (*(v17 + 8))(v16, v18);

    v21 = v0[1];

    return v21();
  }

  else if (v1)
  {
    return sub_192228620();
  }

  else
  {
    if (qword_1EADEE4E8 != -1)
    {
      swift_once();
    }

    v2 = sub_1922258B0();
    __swift_project_value_buffer(v2, qword_1EAE00810);
    v3 = sub_192225890();
    v4 = sub_192227FB0();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_192028000, v3, v4, "Fetching current value", v5, 2u);
      MEMORY[0x193B0C7F0](v5, -1, -1);
    }

    v23 = v0[25];

    v22 = (*(v23 + 40) + **(v23 + 40));
    v6 = swift_task_alloc();
    v0[35] = v6;
    *v6 = v0;
    v6[1] = sub_19210E588;
    v7 = v0[32];
    v8 = v0[29];
    v10 = v0[25];
    v9 = v0[26];

    return v22(v8, v7, v9, v10);
  }
}

uint64_t sub_19210E588()
{
  *(*v1 + 288) = v0;

  if (v0)
  {
    v2 = sub_19210E7C0;
  }

  else
  {
    v2 = sub_19210E69C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_19210E69C()
{
  v1 = v0[29];
  v2 = v0[27];
  v3 = v0[28];
  v4 = v0[22];
  (*(v0[31] + 8))(v0[32], v0[30]);
  (*(v3 + 32))(v4, v1, v2);

  v5 = v0[1];

  return v5();
}

uint64_t sub_19210E750()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_19210E7C0()
{
  v1 = *(v0 + 288);
  v2 = *(v0 + 248);
  v22 = *(v0 + 240);
  v23 = *(v0 + 256);
  v3 = *MEMORY[0x1E69941E8];
  v4 = v1;
  v5 = v3;
  sub_19214036C(MEMORY[0x1E69E7CC0]);
  v6 = sub_192227960();
  v8 = v7;
  *(v0 + 40) = MEMORY[0x1E69E6158];
  *(v0 + 16) = 0xD00000000000002ALL;
  *(v0 + 24) = 0x800000019224A900;
  sub_19203BEDC((v0 + 16), (v0 + 48));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_19213DB28((v0 + 48), v6, v8, isUniquelyReferenced_nonNull_native);

  v10 = sub_192227960();
  v12 = v11;
  swift_getErrorValue();
  v14 = *(v0 + 144);
  v13 = *(v0 + 152);
  *(v0 + 104) = v13;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 80));
  (*(*(v13 - 8) + 16))(boxed_opaque_existential_1, v14, v13);
  sub_19203BEDC((v0 + 80), (v0 + 112));
  v16 = v1;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  sub_19213DB28((v0 + 112), v10, v12, v17);

  v18 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v19 = sub_192227830();

  [v18 initWithDomain:v5 code:1106 userInfo:v19];

  swift_willThrow();
  (*(v2 + 8))(v23, v22);

  v20 = *(v0 + 8);

  return v20();
}

void *AppIntentControlConfiguration.init(kind:intent:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9)
{
  v14 = sub_192224BB0();
  v16 = v15;
  v17 = sub_1920C8F78(a6, a9);
  v19 = v18;
  result = swift_allocObject();
  result[2] = a5;
  result[3] = a6;
  result[4] = a7;
  result[5] = a9;
  result[6] = a3;
  result[7] = a4;
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = v14;
  *(a8 + 24) = v16;
  *(a8 + 32) = v17;
  *(a8 + 40) = v19;
  *(a8 + 48) = &unk_192233348;
  *(a8 + 56) = result;
  *(a8 + 88) = 1;
  return result;
}

uint64_t sub_19210EB30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[19] = a8;
  v8[20] = v14;
  v8[17] = a6;
  v8[18] = a7;
  v8[15] = a4;
  v8[16] = a5;
  v8[13] = a2;
  v8[14] = a3;
  v8[12] = a1;
  v8[21] = swift_task_alloc();
  v8[22] = *(a6 - 8);
  v8[23] = swift_task_alloc();
  sub_192227CC0();
  v8[24] = sub_192227CB0();
  v11 = sub_192227C70();
  v8[25] = v11;
  v8[26] = v10;

  return MEMORY[0x1EEE6DFA0](sub_19210EC58, v11, v10);
}

uint64_t sub_19210EC58()
{
  v1 = v0[13];
  if (v1)
  {
    v2 = v1;
    v3 = swift_task_alloc();
    v0[27] = v3;
    *v3 = v0;
    v3[1] = sub_19210EDDC;
    v4 = v0[23];
    v5 = v0[19];
    v6 = v0[17];
    v7 = v0[14];

    return sub_19210F524(v4, v2, v7, v6, v5);
  }

  else
  {

    type metadata accessor for ControlError(0);
    sub_19210F4DC(&qword_1EADEFC38, type metadata accessor for ControlError, &protocol conformance descriptor for ControlError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_19210EDDC()
{
  v2 = *v1;
  *(*v1 + 224) = v0;

  v3 = *(v2 + 208);
  v4 = *(v2 + 200);
  if (v0)
  {
    v5 = sub_19210F0C8;
  }

  else
  {
    v5 = sub_19210EF18;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_19210EF18()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 120);

  sub_1922269C0();
  v2(v1);
  sub_1922269B0();
  sub_1920C92D8();
  sub_1922269A0();
  if (*(v0 + 80))
  {
    v4 = *(v0 + 176);
    v3 = *(v0 + 184);
    v5 = *(v0 + 136);
    v6 = *(v0 + 96);
    v7 = *(v0 + 104);

    (*(v4 + 8))(v3, v5);
    v8 = *(v0 + 72);
    *(v0 + 16) = *(v0 + 56);
    *(v0 + 32) = v8;
    *(v0 + 48) = *(v0 + 88);
    sub_19209CBAC((v0 + 16), v6);

    v9 = *(v0 + 8);

    return v9();
  }

  else
  {
    sub_19210F5E0(v0 + 56);
    return sub_192228620();
  }
}

uint64_t sub_19210F0C8()
{
  v1 = *(v0 + 104);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_19210F148(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[2];
  v9 = v3[3];
  v10 = v3[4];
  v12 = v3[6];
  v11 = v3[7];
  v13 = swift_task_alloc();
  *(v4 + 16) = v13;
  *v13 = v4;
  v13[1] = sub_1920A59A8;

  return sub_19210EB30(a1, a2, a3, v12, v11, v8, v9, v10);
}

uint64_t dispatch thunk of AppIntentControlValueProvider.currentValue(configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 40) + **(a4 + 40));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1920B3B44;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_19210F3C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy89_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_19210F424(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 89))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_19210F46C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 89) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 89) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_19210F4DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_19210F524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = *(a5 + 8);
  *v10 = v5;
  v10[1] = sub_1920A59A8;

  return sub_19213431C(a1, a2, a4, v11);
}

uint64_t sub_19210F5E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF6C8, &qword_19222DD50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t WidgetPreviewContextKey.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WidgetPreviewContextKey(0) + 20);
  v4 = sub_192225150();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void *WidgetPreviewContextKey.configuration.getter()
{
  v1 = *(v0 + *(type metadata accessor for WidgetPreviewContextKey(0) + 24));
  v2 = v1;
  return v1;
}

uint64_t sub_19210F73C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF02D8, &qword_1922334E0);
  __swift_allocate_value_buffer(v0, qword_1EADF02C0);
  v1 = __swift_project_value_buffer(v0, qword_1EADF02C0);
  v2 = type metadata accessor for WidgetPreviewContextKey(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 1, 1, v2);
}

uint64_t static WidgetPreviewContextKey.defaultValue.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EADEE918 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF02D8, &qword_1922334E0);
  v3 = __swift_project_value_buffer(v2, qword_1EADF02C0);
  swift_beginAccess();
  return sub_19210F874(v3, a1);
}

uint64_t sub_19210F874(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF02D8, &qword_1922334E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static WidgetPreviewContextKey.defaultValue.setter(uint64_t a1)
{
  if (qword_1EADEE918 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF02D8, &qword_1922334E0);
  v3 = __swift_project_value_buffer(v2, qword_1EADF02C0);
  swift_beginAccess();
  sub_19210F98C(a1, v3);
  swift_endAccess();
  return sub_19210F9FC(a1);
}

uint64_t sub_19210F98C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF02D8, &qword_1922334E0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_19210F9FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF02D8, &qword_1922334E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t (*static WidgetPreviewContextKey.defaultValue.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_1EADEE918 != -1)
  {
    swift_once();
  }

  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF02D8, &qword_1922334E0);
  __swift_project_value_buffer(v1, qword_1EADF02C0);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_19210FB04@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EADEE918 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF02D8, &qword_1922334E0);
  v3 = __swift_project_value_buffer(v2, qword_1EADF02C0);
  swift_beginAccess();
  return sub_19210F874(v3, a1);
}

uint64_t sub_19210FB9C(uint64_t a1)
{
  if (qword_1EADEE918 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF02D8, &qword_1922334E0);
  v3 = __swift_project_value_buffer(v2, qword_1EADF02C0);
  swift_beginAccess();
  sub_19210F98C(a1, v3);
  return swift_endAccess();
}

uint64_t WidgetPreviewContentCategory.init(rawValue:)@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_192228700();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_19210FCCC()
{
  sub_192228AD0();
  sub_1922279B0();
  return sub_192228B30();
}

uint64_t sub_19210FD40()
{
  sub_192228AD0();
  sub_1922279B0();
  return sub_192228B30();
}

uint64_t sub_19210FD94@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_192228700();

  *a2 = v3 != 0;
  return result;
}

uint64_t WidgetPreviewContext.subscript.getter(uint64_t a1)
{
  v6 = type metadata accessor for WidgetPreviewContextKey(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v9 != a1)
  {
    return sub_192226320();
  }

  v11 = *v4;
  v12 = type metadata accessor for WidgetPreviewContext(0);
  v13 = *(v12 + 20);
  v14 = *(v6 + 20);
  v15 = sub_192225150();
  (*(*(v15 - 8) + 16))(&v8[v14], &v4[v13], v15);
  v16 = *&v4[*(v12 + 24)];
  *v8 = v11;
  *&v8[*(v6 + 24)] = v16;
  swift_getAssociatedTypeWitness();
  v17 = v16;
  return swift_dynamicCast();
}

uint64_t WidgetPreviewContext.init(family:date:configuration:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  *a4 = *a1;
  v7 = type metadata accessor for WidgetPreviewContext(0);
  v8 = *(v7 + 20);
  v9 = sub_192225150();
  result = (*(*(v9 - 8) + 32))(&a4[v8], a2, v9);
  *&a4[*(v7 + 24)] = a3;
  return result;
}

uint64_t WidgetPreviewContext.init(family:)@<X0>(char *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = type metadata accessor for WidgetPreviewContext(0);
  result = _s9WidgetKit18ControlArchiveMockC7control5state11environment8template4dateACSo18CHSControlIdentityC_14ChronoServices0K5StateCAA0A11EnvironmentVAA0C12TemplateTypeO10Foundation4DateVtcfcfA3__0();
  *a2 = v3;
  *&a2[*(v4 + 24)] = 0;
  return result;
}

unint64_t sub_192110074()
{
  result = qword_1EADF02E0;
  if (!qword_1EADF02E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF02E0);
  }

  return result;
}

void sub_1921100F4(uint64_t a1)
{
  if (!qword_1EADF02F8)
  {
    sub_19211014C();
    v1 = sub_192228240();
    if (!v2)
    {
      atomic_store(v1, &qword_1EADF02F8);
    }
  }
}

unint64_t sub_19211014C()
{
  result = qword_1EADF0300;
  if (!qword_1EADF0300)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EADF0300);
  }

  return result;
}

uint64_t __swift_store_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_192225150();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2;
  }

  return result;
}

void sub_19211028C(uint64_t a1)
{
  sub_192225150();
  if (v1 <= 0x3F)
  {
    sub_1921100F4(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1921103CC(uint64_t *a1, uint64_t a2)
{
  v3 = sub_1922261D0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for ControlWidgetStatusModifier(0);
  sub_192110E38(v6);
  v7 = sub_192226F60();
  v9 = v8;
  (*(v4 + 8))(v6, v3);

  *a1 = v7;
  a1[1] = v9;
  return result;
}

uint64_t sub_1921104F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  sub_192111360(v7, &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ControlWidgetStatusModifier);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_1921113C8(&v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for ControlWidgetStatusModifier);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0338, &qword_192233788);
  (*(*(v10 - 8) + 16))(a3, a1, v10);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0340, &qword_192233790);
  v12 = (a3 + *(result + 36));
  *v12 = sub_1921112C4;
  v12[1] = v9;
  return result;
}

uint64_t sub_1921106C0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void), uint64_t (*a8)(void))
{
  v20 = a8;
  v14 = a7(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v19 - v15);
  *v16 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0330, &qword_192233780);
  swift_storeEnumTagMultiPayload();
  v17 = v16 + *(v14 + 20);
  *v17 = a1;
  *(v17 + 1) = a2;
  v17[16] = a3 & 1;
  *(v17 + 3) = a4;
  sub_1921114E4(a1, a2, a3 & 1);

  MEMORY[0x193B0A190](v16, a5, v14, a6);
  return sub_1921114F4(v16, v20);
}

uint64_t sub_192110820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void), uint64_t (*a8)(void))
{

  v12 = sub_192226FC0();
  v14 = v13;
  v16 = v15;
  sub_1921106C0(v12, v13, v15 & 1, v17, a5, a6, a7, a8);
  sub_19207A338(v12, v14, v16 & 1);
}

uint64_t sub_192110944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  v11 = MEMORY[0x1EEE9AC00](a1);
  (*(v13 + 16))(&v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
  v14 = sub_192226FD0();
  v16 = v15;
  v18 = v17;
  sub_1921106C0(v14, v15, v17 & 1, v19, a2, a4, a6, a7);
  sub_19207A338(v14, v16, v18 & 1);
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyx9WidgetKit07ControlF14StatusModifier33_D65CF572C81694DAC92CF1F0D8AF24A2LLVGAaBHPxAaBHD1__AhA0cJ0HPyHCHCTm(uint64_t a1, void (*a2)(uint64_t), unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  a2(255);
  sub_192225C70();
  sub_192110B54(a3, a4, a5);
  return swift_getWitnessTable();
}

uint64_t sub_192110B54(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t get_witness_table_7SwiftUI4ViewRzSyRd__r__lAA15ModifiedContentVyx9WidgetKit07ControlF14StatusModifier33_D65CF572C81694DAC92CF1F0D8AF24A2LLVGAaBHPxAaBHD1__AhA0cJ0HPyHCHCTm(uint64_t a1, void (*a2)(uint64_t), unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  a2(255);
  sub_192225C70();
  sub_192110B54(a3, a4, a5);
  return swift_getWitnessTable();
}

void sub_192110C60(uint64_t a1)
{
  if (!qword_1EADEE8A0)
  {
    sub_1922261D0();
    v1 = sub_192225A00();
    if (!v2)
    {
      atomic_store(v1, &qword_1EADEE8A0);
    }
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm_1(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0328, &unk_192233690);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 24) = (a2 - 1);
  }

  return result;
}

void sub_192110DA8(uint64_t a1)
{
  sub_192110C60(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_192110E38@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1922261D0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0330, &qword_192233780);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13 - v9;
  sub_1921112F0(v2, &v13 - v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return (*(v5 + 32))(a1, v10, v4);
  }

  sub_192227FA0();
  v12 = sub_192226D00();
  sub_1922257A0();

  _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_192111000(uint64_t a1, uint64_t a2)
{
  v3 = sub_1922261D0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for ControlWidgetActionHintModifier(0);
  sub_192110E38(v6);
  v7 = sub_192226F60();
  v9 = v8;
  (*(v4 + 8))(v6, v3);

  *(a1 + 16) = v7;
  *(a1 + 24) = v9;
  return result;
}

uint64_t sub_19211112C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  sub_192111360(v7, &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ControlWidgetActionHintModifier);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_1921113C8(&v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for ControlWidgetActionHintModifier);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0348, &qword_192233798);
  (*(*(v10 - 8) + 16))(a3, a1, v10);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0350, &unk_1922337A0);
  v12 = (a3 + *(result + 36));
  *v12 = sub_192111430;
  v12[1] = v9;
  return result;
}

uint64_t sub_1921112F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0330, &qword_192233780);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_192111360(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1921113C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_19211145C(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = v3 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return a3(a1, v6);
}

double sub_1921114E4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }

  return result;
}

uint64_t sub_1921114F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_192111554()
{
  result = qword_1EADF0358;
  if (!qword_1EADF0358)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0340, &qword_192233790);
    sub_192031E74(&qword_1EADF0360, &qword_1EADF0338, &qword_192233788, MEMORY[0x1E697FDF8]);
    sub_192031E74(&qword_1EADF0368, &qword_1EADF0370, qword_1922337C8, MEMORY[0x1E6980918]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF0358);
  }

  return result;
}

unint64_t sub_192111638()
{
  result = qword_1EADF0378;
  if (!qword_1EADF0378)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EADF0350, &unk_1922337A0);
    sub_192031E74(&qword_1EADF0380, &qword_1EADF0348, &qword_192233798, MEMORY[0x1E697FDF8]);
    sub_192031E74(&qword_1EADF0368, &qword_1EADF0370, qword_1922337C8, MEMORY[0x1E6980918]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF0378);
  }

  return result;
}

unint64_t sub_192111750@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_192226590();
  result = sub_192074DF4(a1, v4);
  if (v6)
  {

    v7 = sub_1922265A0();
    v8 = *(*(v7 - 8) + 16);

    return v8(a2, a1, v7);
  }

  else
  {
    v9 = result - 1;
    if (result < 1)
    {
      v11 = sub_1922265A0();
      (*(*(v11 - 8) + 16))(a2, a1, v11);
    }

    else
    {
      if (result > *(v4 + 16))
      {
        __break(1u);
        return result;
      }

      v10 = sub_1922265A0();
      (*(*(v10 - 8) + 16))(a2, v4 + ((*(*(v10 - 8) + 80) + 32) & ~*(*(v10 - 8) + 80)) + *(*(v10 - 8) + 72) * v9, v10);
    }
  }
}

double sub_1921118C8(char a1, uint64_t a2)
{
  v4 = sub_1922265A0();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a2, v4, v6);
  v9 = (*(v5 + 88))(v8, v4);
  v10 = -3.0;
  if (v9 != *MEMORY[0x1E697F658])
  {
    v10 = -2.0;
    if (v9 != *MEMORY[0x1E697F690])
    {
      v10 = -1.0;
      if (v9 != *MEMORY[0x1E697F698])
      {
        v10 = 0.0;
        if (v9 != *MEMORY[0x1E697F680])
        {
          v10 = 2.0;
          if (v9 != *MEMORY[0x1E697F650])
          {
            v10 = 4.0;
            if (v9 != *MEMORY[0x1E697F660])
            {
              v10 = 6.0;
              if (v9 != *MEMORY[0x1E697F630])
              {
                v10 = 10.0;
                if (v9 != *MEMORY[0x1E697F670])
                {
                  v10 = 14.0;
                  if (v9 != *MEMORY[0x1E697F668])
                  {
                    v10 = 18.0;
                    if (v9 != *MEMORY[0x1E697F678])
                    {
                      v10 = 22.0;
                      if (v9 != *MEMORY[0x1E697F640])
                      {
                        v10 = 26.0;
                        if (v9 != *MEMORY[0x1E697F648])
                        {
                          (*(v5 + 8))(v8, v4, 26.0);
                          v10 = 0.0;
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return v10 + dbl_192233880[a1];
}

double sub_192111B14(uint64_t a1)
{
  v2 = sub_192226F10();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x1E6980EE8] || v7 == *MEMORY[0x1E6980F00] || v7 == *MEMORY[0x1E6980F08] || v7 == *MEMORY[0x1E6980F10])
  {
    goto LABEL_12;
  }

  if (v7 == *MEMORY[0x1E6980F38])
  {
    sub_192226E40();
    return result;
  }

  v12 = v7 == *MEMORY[0x1E6980EF0] || v7 == *MEMORY[0x1E6980EF8];
  v13 = v12 || v7 == *MEMORY[0x1E6980F18];
  v14 = v13 || v7 == *MEMORY[0x1E6980F30];
  v15 = v14 || v7 == *MEMORY[0x1E6980F20];
  if (v15 || v7 == *MEMORY[0x1E6980F28])
  {
LABEL_12:
    sub_192226E30();
    return result;
  }

  sub_192226E30();
  v18 = v17;
  (*(v3 + 8))(v6, v2);
  return v18;
}

uint64_t sub_192111D18@<X0>(_BYTE *a1@<X8>)
{
  result = sub_192226160();
  *a1 = result & 1;
  return result;
}

uint64_t sub_192111D70(uint64_t a1, uint64_t a2)
{
  *(v3 + 88) = a2;
  *(v3 + 96) = v2;
  *(v3 + 80) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEEE10, &unk_19222B630);
  *(v3 + 104) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF720, &unk_19222E2F0);
  *(v3 + 112) = swift_task_alloc();
  *(v3 + 120) = swift_task_alloc();
  *(v3 + 128) = sub_192227CC0();
  *(v3 + 136) = sub_192227CB0();
  *(v3 + 336) = *(v2 + 32);
  v4 = *(v2 + 88);
  v5 = *(v2 + 120);
  *(v3 + 144) = *(v2 + 104);
  *(v3 + 160) = v5;
  *(v3 + 337) = *(v2 + 136);
  v6 = *(v2 + 176);
  *(v3 + 176) = v6;
  v9 = (v4 + *v4);
  v7 = swift_task_alloc();
  *(v3 + 184) = v7;
  *v7 = v3;
  v7[1] = sub_192111F24;

  return v9(v6);
}

uint64_t sub_192111F24(uint64_t a1)
{
  v3 = *v2;
  v3[24] = a1;
  v3[25] = v1;

  if (v1)
  {
    v5 = sub_192227C70();

    return MEMORY[0x1EEE6DFA0](sub_192112A8C, v5, v4);
  }

  else
  {
    v9 = (v3[18] + *v3[18]);
    v6 = swift_task_alloc();
    v3[26] = v6;
    *v6 = v3;
    v6[1] = sub_192112114;
    v7 = v3[22];

    return v9(v7);
  }
}

uint64_t sub_192112114(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 216) = v1;

  if (v1)
  {
    v5 = sub_192227C70();
    v7 = v6;
    v8 = sub_192112B14;
    v9 = v5;
    v10 = v7;
  }

  else
  {
    v4[28] = a1;
    v11 = sub_192227C70();
    v10 = v12;
    v4[29] = v11;
    v4[30] = v12;
    v8 = sub_1921122A4;
    v9 = v11;
  }

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1921122A4()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 192);
  v3 = swift_task_alloc();
  v3[1] = vextq_s8(*(v0 + 88), *(v0 + 88), 8uLL);
  sub_1921145B0(v2, v1, sub_192113844, v3);
  *(v0 + 248) = v4;

  v5 = swift_task_alloc();
  *(v0 + 256) = v5;
  *v5 = v0;
  v5[1] = sub_1921123AC;
  v6 = *(v0 + 120);
  v8 = *(v0 + 88);
  v7 = *(v0 + 96);

  return sub_19211384C(v6, v7, v8);
}

uint64_t sub_1921123AC(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[2] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v4[5] = v2;
  v5 = *v3;
  v4[33] = a2;
  v4[34] = v2;

  if (v2)
  {

    v6 = v4[29];
    v7 = v4[30];

    return MEMORY[0x1EEE6DFA0](sub_192112BA8, v6, v7);
  }

  else
  {
    v8 = swift_task_alloc();
    v4[35] = v8;
    *v8 = v5;
    v8[1] = sub_192112528;
    v9 = v4[11];
    v10 = v4[12];

    return sub_192113E8C(v10, v9);
  }
}

uint64_t sub_192112528(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[6] = v3;
  v4[7] = a1;
  v4[8] = a2;
  v4[9] = v2;
  v5 = *v3;
  v4[36] = a2;
  v4[37] = v2;

  if (v2)
  {

    v6 = v4[29];
    v7 = v4[30];

    return MEMORY[0x1EEE6DFA0](sub_192112C30, v6, v7);
  }

  else
  {
    v8 = v4[20];
    sub_1920E1BAC(v4[15], v4[14]);
    v13 = (v8 + *v8);
    v9 = swift_task_alloc();
    v4[38] = v9;
    *v9 = v5;
    v9[1] = sub_192112720;
    v10 = v4[22];
    v11 = v4[13];

    return v13(v11, v10);
  }
}

uint64_t sub_192112720()
{
  v2 = *v1;
  *(*v1 + 312) = v0;

  if (v0)
  {
    sub_192033970(v2[14], &qword_1EADEF720, &unk_19222E2F0);

    v3 = v2[29];
    v4 = v2[30];
    v5 = sub_192112CD4;
  }

  else
  {
    v6 = v2[3];
    v2[40] = v2[7];
    v2[41] = v6;
    v3 = v2[29];
    v4 = v2[30];
    v5 = sub_192112884;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_192112884()
{
  v18 = *(v0 + 288);
  v19 = *(v0 + 320);
  v15 = *(v0 + 264);
  v16 = *(v0 + 328);
  v14 = *(v0 + 248);
  v17 = *(v0 + 337);
  v20 = *(v0 + 336);
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);
  v3 = *(v0 + 104);
  v4 = *(v0 + 80);

  sub_192033970(v2, &qword_1EADEF720, &unk_19222E2F0);
  v5 = type metadata accessor for ControlTemplatePicker(0);
  v6 = v5[6];
  v7 = sub_192226B70();
  (*(*(v7 - 8) + 56))(&v4[v6], 1, 1, v7);
  v8 = v5[8];
  v9 = &v4[v5[7]];
  v10 = sub_192225020();
  (*(*(v10 - 8) + 56))(&v4[v8], 1, 1, v10);
  v11 = &v4[v5[12]];
  *v4 = v14;
  *(v4 + 1) = v16;
  *(v4 + 2) = v15;
  sub_19204193C(v1, &v4[v6], &qword_1EADEF720, &unk_19222E2F0);
  *v9 = v19;
  *(v9 + 1) = v18;
  v4[v5[9]] = v17;
  sub_19204193C(v3, &v4[v8], &qword_1EADEEE10, &unk_19222B630);
  v4[v5[10]] = 0;
  v4[v5[11]] = v20;
  *v11 = 0;
  *(v11 + 1) = 0;
  v4[v5[13]] = 0;

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_192112A8C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_192112B14()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_192112BA8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_192112C30()
{
  v1 = *(v0 + 120);

  sub_192033970(v1, &qword_1EADEF720, &unk_19222E2F0);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_192112CD4()
{
  v1 = *(v0 + 120);

  sub_192033970(v1, &qword_1EADEF720, &unk_19222E2F0);

  v2 = *(v0 + 8);

  return v2();
}

double sub_192112D78@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v123 = a3;
  v115 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEF720, &unk_19222E2F0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v121 = &v89 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFEC0, &unk_192231BD0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v113 = &v89 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v109 = &v89 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v89 - v16;
  v18 = sub_1922261D0();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v89 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v89 - v23;
  v116 = sub_192226BA0();
  v112 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116);
  v110 = &v89 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v98 = &v89 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v89 - v29;
  v31 = a2[1];
  v92.i64[0] = *a2;
  v99 = v31;
  v32 = a2[3];
  v96 = a2[2];
  v95 = v32;
  v33 = a2[5];
  v94 = a2[4];
  v106 = v33;
  v34 = a2[7];
  v105 = a2[6];
  v104 = v34;
  v103 = a2[8];
  KeyPath = swift_getKeyPath();
  v124.i64[0] = a1;
  v124.i64[1] = KeyPath;
  LOBYTE(v125) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0398, &unk_192233950);
  swift_allocObject();
  v114 = a1;
  swift_retain_n();
  v111 = KeyPath;

  sub_192226760();
  v97 = v19;
  v36 = v19 + 16;
  v119 = *(v19 + 16);
  v120 = v18;
  v119(v24, v123, v18);
  v93 = v24;
  sub_192226700();
  sub_192226730();

  v122 = v30;
  sub_192226A40();
  v37 = sub_192226A90();
  v38 = *(v37 - 8);
  v117 = *(v38 + 48);
  v118 = v38 + 48;
  if (v117(v17, 1, v37) == 1)
  {
    sub_192033970(v17, &qword_1EADEFEC0, &unk_192231BD0);
    v108 = 0;
    v107 = 0;
  }

  else
  {
    v39 = sub_192226A80();
    (*(v38 + 8))(v17, v37);
    v40 = [v39 string];

    v108 = sub_192227960();
    v107 = v41;
  }

  sub_192226B80();
  v42 = sub_192226B70();
  v43 = *(v42 - 8);
  if ((*(v43 + 48))(v8, 1, v42) == 1)
  {
    sub_192033970(v8, &qword_1EADEF720, &unk_19222E2F0);
  }

  else
  {
    v44 = sub_192226B60();
    (*(v43 + 8))(v8, v42);
    if (v44)
    {
      sub_192226B80();
      goto LABEL_9;
    }
  }

  (*(v43 + 56))(v121, 1, 1, v42);
LABEL_9:
  _s9WidgetKit0A11EnvironmentV14makeEnumerator4withAC0c6ValuesE0V7SwiftUI0cG0V_tFfA__0();
  v102 = v38;
  v101 = v42;
  if (v92.i64[0])
  {
    sub_192227270();
    v90 = v45;
    v92 = v46;
    v89 = v47;
    v91 = v48;
    v49 = v21;
    v50 = v120;
    (*(v97 + 8))(v49, v120);
    LODWORD(v97) = 0;
    v51.i64[0] = v90;
    v51.i64[1] = v89;
    v92 = vorrq_s8(vshll_n_s32(__PAIR64__(v91, v92.u32[0]), 0x20uLL), v51);
  }

  else
  {
    sub_1920B3090();
    sub_1922261E0();
    v52 = v21;
    v50 = v120;
    (*(v97 + 8))(v52, v120);
    v92 = v124;
    LODWORD(v97) = v125;
  }

  v53 = v99;
  v54 = v96;
  v124.i64[0] = v99;
  v124.i64[1] = v96;
  v55 = v95;
  v56 = v94;
  v125 = v95;
  v126 = v94;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF03A0, &unk_192234FD0);
  swift_allocObject();
  sub_192114BA4(v53, v54, v55, v56);
  sub_192226760();
  v57 = v93;
  v99 = v36;
  v119(v93, v123, v50);
  sub_192226700();
  v58 = v98;
  sub_192226730();

  v59 = v109;
  sub_192226A40();
  v60 = v58;
  v61 = v116;
  v112 = *(v112 + 8);
  (v112)(v60, v116);
  v62 = v117(v59, 1, v37);
  v100 = v43;
  if (v62 == 1)
  {
    sub_192033970(v59, &qword_1EADEFEC0, &unk_192231BD0);
    v109 = 0;
    v98 = 0;
  }

  else
  {
    v63 = sub_192226A80();
    (*(v102 + 8))(v59, v37);
    v64 = [v63 string];

    v109 = sub_192227960();
    v98 = v65;

    v61 = v116;
  }

  v66 = v37;
  v67 = v106;
  v68 = v105;
  v124.i64[0] = v106;
  v124.i64[1] = v105;
  v69 = v104;
  v70 = v103;
  v125 = v104;
  v126 = v103;
  swift_allocObject();
  sub_192114BA4(v67, v68, v69, v70);
  sub_192226760();
  v119(v57, v123, v120);
  sub_192226700();
  v71 = v110;
  sub_192226730();

  v72 = v113;
  sub_192226A40();
  v73 = v112;
  (v112)(v71, v61);
  if (v117(v72, 1, v66) == 1)
  {

    v73(v122, v61);
    sub_192033970(v72, &qword_1EADEFEC0, &unk_192231BD0);
    v74 = 0;
    v75 = 0;
  }

  else
  {
    v76 = sub_192226A80();
    (*(v102 + 8))(v72, v66);
    v77 = [v76 string];

    v74 = sub_192227960();
    v75 = v78;

    v73(v122, v61);
  }

  v79 = v100;
  v80 = type metadata accessor for ControlTemplatePicker.Option(0);
  v81 = v80[5];
  v82 = v115;
  (*(v79 + 56))(v115 + v81, 1, 1, v101);
  v83 = (v82 + v80[6]);
  v84 = (v82 + v80[7]);
  v85 = (v82 + v80[8]);
  v86 = v107;
  *v82 = v108;
  v82[1] = v86;
  sub_19204193C(v121, v82 + v81, &qword_1EADEF720, &unk_19222E2F0);
  result = *v92.i64;
  *v83 = v92;
  v83[1].i8[0] = v97;
  v88 = v98;
  *v84 = v109;
  v84[1] = v88;
  *v85 = v74;
  v85[1] = v75;
  return result;
}

uint64_t sub_19211384C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a1;
  v3[4] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFEC0, &unk_192231BD0);
  v3[5] = swift_task_alloc();
  v5 = sub_1922261D0();
  v3[6] = v5;
  v3[7] = *(v5 - 8);
  v3[8] = swift_task_alloc();
  v6 = sub_192226BA0();
  v3[9] = v6;
  v3[10] = *(v6 - 8);
  v3[11] = swift_task_alloc();
  v3[12] = sub_192227CC0();
  v3[13] = sub_192227CB0();
  v7 = *(a2 + 56);
  v8 = *(a2 + 176);
  v11 = (v7 + *v7);
  v9 = swift_task_alloc();
  v3[14] = v9;
  *v9 = v3;
  v9[1] = sub_192113A50;

  return v11(v8);
}

uint64_t sub_192113A50(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 120) = a1;
  *(v3 + 128) = v1;

  v5 = sub_192227C70();
  if (v1)
  {
    v6 = sub_192113DFC;
  }

  else
  {
    v6 = sub_192113BB0;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, v4);
}

uint64_t sub_192113BB0()
{
  v1 = v0[15];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[4];

  v0[2] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0388, &qword_192233910);
  swift_allocObject();

  sub_192226760();
  (*(v3 + 16))(v2, v6, v5);
  sub_192226700();
  sub_192226730();

  sub_192226A40();
  v7 = sub_192226A90();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(v4, 1, v7);
  v10 = v0[5];
  if (v9 == 1)
  {
    sub_192033970(v0[5], &qword_1EADEFEC0, &unk_192231BD0);
    v11 = 0;
    v12 = 0;
  }

  else
  {
    v13 = sub_192226A80();
    (*(v8 + 8))(v10, v7);
    v14 = [v13 string];

    v11 = sub_192227960();
    v12 = v15;
  }

  v17 = v0[10];
  v16 = v0[11];
  v18 = v0[9];
  sub_192226B80();

  (*(v17 + 8))(v16, v18);

  v19 = v0[1];

  return v19(v11, v12);
}

uint64_t sub_192113DFC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_192113E8C(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADEFEC0, &unk_192231BD0);
  v2[5] = swift_task_alloc();
  v3 = sub_1922261D0();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v4 = sub_192226BA0();
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  sub_192227CC0();
  v2[12] = sub_192227CB0();
  v6 = sub_192227C70();
  v2[13] = v6;
  v2[14] = v5;

  return MEMORY[0x1EEE6DFA0](sub_192114014, v6, v5);
}

uint64_t sub_192114014()
{
  v1 = v0[3];
  v2 = *(v1 + 72);
  if (v2)
  {
    v3 = *(v1 + 176);
    v7 = (v2 + *v2);
    v4 = swift_task_alloc();
    v0[15] = v4;
    *v4 = v0;
    v4[1] = sub_19211417C;

    return v7(v3);
  }

  else
  {

    v6 = v0[1];

    return v6(0, 0);
  }
}

uint64_t sub_19211417C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 128) = a1;
  *(v4 + 136) = v1;

  v5 = *(v3 + 112);
  v6 = *(v3 + 104);
  if (v1)
  {
    v7 = sub_192114524;
  }

  else
  {
    v7 = sub_1921142C0;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1921142C0()
{
  v1 = v0[16];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[4];

  v0[2] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF0388, &qword_192233910);
  swift_allocObject();

  sub_192226760();
  (*(v3 + 16))(v2, v6, v5);
  sub_192226700();
  sub_192226730();

  sub_192226A40();
  v7 = sub_192226A90();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(v4, 1, v7);
  v10 = v0[11];
  v11 = v0[9];
  v12 = v0[10];
  v13 = v0[5];
  if (v9 == 1)
  {
    (*(v12 + 8))(v0[11], v11);

    sub_192033970(v13, &qword_1EADEFEC0, &unk_192231BD0);
    v14 = 0;
    v15 = 0;
  }

  else
  {
    v16 = sub_192226A80();
    (*(v8 + 8))(v13, v7);
    v17 = [v16 string];

    v14 = sub_192227960();
    v15 = v18;

    (*(v12 + 8))(v10, v11);
  }

  v19 = v0[1];

  return v19(v14, v15);
}

uint64_t sub_192114524()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1921145B0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, _BYTE *), uint64_t a4)
{
  v46 = a4;
  v45 = a3;
  v6 = type metadata accessor for ControlTemplatePicker.Option(0);
  v44 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v39 = &v38 - v10;
  v11 = *(a1 + 16);
  v57 = *(a2 + 16);
  if (v57 >= v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = v57;
  }

  v56 = MEMORY[0x1E69E7CC0];
  sub_19209ACE8(0, v12, 0);
  v13 = v56;
  v47 = v11;
  v43 = v12;
  v40 = a1;
  v41 = a2;
  if (!v12)
  {

    v18 = 0;
    v22 = 0;
    v28 = v39;
    if (!v11)
    {
LABEL_21:

      return;
    }

    goto LABEL_22;
  }

  v14 = v57;
  if (v11)
  {
    v15 = v8;
    v16 = 0;
    v42 = v40 + 32;
    v17 = v41 + 32;
    while (1)
    {
      if (v16 >= v11)
      {
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      v18 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_33;
      }

      if (v14 == v16)
      {
        goto LABEL_40;
      }

      if (v16 >= v14)
      {
        goto LABEL_34;
      }

      v19 = *(v42 + 8 * v16);
      v20 = *(v17 + 48);
      v50 = *(v17 + 32);
      v51 = v20;
      *&v52 = *(v17 + 64);
      v21 = *v17;
      v49 = *(v17 + 16);
      v48 = v21;
      v22 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_35;
      }

      *v55 = v19;
      v23 = *v17;
      *&v55[24] = *(v17 + 16);
      v24 = *(v17 + 48);
      *&v55[40] = *(v17 + 32);
      *&v55[56] = v24;
      *&v55[72] = *(v17 + 64);
      *&v55[8] = v23;

      sub_192114B48(&v48, v53);
      if (!v19)
      {
        goto LABEL_40;
      }

      v45(v19, &v55[8]);
      v50 = *&v55[32];
      v51 = *&v55[48];
      v52 = *&v55[64];
      v49 = *&v55[16];
      v48 = *v55;
      sub_192033970(&v48, &qword_1EADF0390, &qword_192233918);
      v56 = v13;
      v25 = v15;
      v27 = *(v13 + 16);
      v26 = *(v13 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_19209ACE8((v26 > 1), v27 + 1, 1);
        v13 = v56;
      }

      *(v13 + 16) = v27 + 1;
      sub_1920CF508(v25, v13 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v27);
      if (v43 == ++v16)
      {
        break;
      }

      v15 = v25;
      v17 += 72;
      v11 = v47;
      v14 = v57;
      if (v18 == v47)
      {
        goto LABEL_40;
      }
    }

    v28 = v39;
    v11 = v47;
    if (v18 == v47)
    {
      goto LABEL_21;
    }

LABEL_22:
    v42 = v40 + 32;
    v29 = 72 * v22 + 32;
    while (v18 < v11)
    {
      if (__OFADD__(v18, 1))
      {
        goto LABEL_37;
      }

      if (v57 == v22)
      {
        goto LABEL_21;
      }

      if (v22 >= v57)
      {
        goto LABEL_38;
      }

      v30 = *(v42 + 8 * v18);
      v31 = v41 + v29;
      v32 = *(v41 + v29 + 48);
      v53[2] = *(v41 + v29 + 32);
      v53[3] = v32;
      v54 = *(v41 + v29 + 64);
      v33 = *(v41 + v29 + 16);
      v53[0] = *(v41 + v29);
      v53[1] = v33;
      if (__OFADD__(v22, 1))
      {
        goto LABEL_39;
      }

      v43 = v18 + 1;
      v34 = *v31;
      *&v55[24] = *(v31 + 16);
      v35 = *(v31 + 48);
      *&v55[40] = *(v31 + 32);
      *&v55[56] = v35;
      *&v55[72] = *(v31 + 64);
      *&v55[8] = v34;
      *v55 = v30;

      sub_192114B48(v53, &v48);
      v45(v30, &v55[8]);
      v50 = *&v55[32];
      v51 = *&v55[48];
      v52 = *&v55[64];
      v49 = *&v55[16];
      v48 = *v55;
      sub_192033970(&v48, &qword_1EADF0390, &qword_192233918);
      v56 = v13;
      v37 = *(v13 + 16);
      v36 = *(v13 + 24);
      if (v37 >= v36 >> 1)
      {
        sub_19209ACE8((v36 > 1), v37 + 1, 1);
        v13 = v56;
      }

      *(v13 + 16) = v37 + 1;
      sub_1920CF508(v28, v13 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v37);
      ++v22;
      v29 += 72;
      ++v18;
      v11 = v47;
      if (v43 == v47)
      {
        goto LABEL_21;
      }
    }

LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
  }

LABEL_40:
  __break(1u);
}

double sub_192114BA4(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1921114E4(a1, a2, a3 & 1);
  }

  return result;
}

__n128 __swift_memcpy184_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[10];
  *(a1 + 176) = *(a2 + 22);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t sub_192114C24(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 184))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_192114C6C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_192114CF8()
{
  result = qword_1EADF03A8;
  if (!qword_1EADF03A8)
  {
    type metadata accessor for ControlTemplatePicker(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF03A8);
  }

  return result;
}

uint64_t sub_192114D64@<X0>(void *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = sub_192228240();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v14 - v8;
  v14[1] = a1;
  sub_192228BA0();

  v10 = swift_dynamicCast();
  v11 = *(*(a2 - 8) + 56);
  if (v10)
  {
    v12 = *(a2 - 8);
    v11(v9, 0, 1, a2);
    return (*(v12 + 32))(a3, v9, a2);
  }

  else
  {
    v11(v9, 1, 1, a2);
    (*(v7 + 8))(v9, v6);
    sub_19210BF4C();
    swift_allocError();
    return swift_willThrow();
  }
}

uint64_t sub_192114F64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[13] = a4;
  v6[14] = a6;
  v6[12] = a1;
  v6[15] = *(a6 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[16] = AssociatedTypeWitness;
  v6[17] = *(AssociatedTypeWitness - 8);
  v6[18] = swift_task_alloc();
  v6[19] = *(a4 - 8);
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1921150A4, 0, 0);
}

uint64_t sub_1921150A4()
{
  sub_192224B30();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v2 = swift_task_alloc();
  v0[22] = v2;
  *v2 = v0;
  v2[1] = sub_192115188;
  v3 = v0[21];
  v4 = v0[16];

  return MEMORY[0x1EEDB3838](v3, v4, AssociatedConformanceWitness);
}

uint64_t sub_192115188()
{
  v2 = *(*v1 + 144);
  v3 = *(*v1 + 136);
  v4 = *(*v1 + 128);
  *(*v1 + 184) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_192115678;
  }

  else
  {
    v5 = sub_1921152F8;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1921152F8()
{
  (*(*(v0 + 152) + 16))(*(v0 + 160), *(v0 + 168), *(v0 + 104));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF03B0, &qword_192233A70);
  if (swift_dynamicCast())
  {
    sub_19203832C((v0 + 56), v0 + 16);
    v2 = *(v0 + 40);
    v1 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v2);
    v3 = swift_task_alloc();
    *(v0 + 192) = v3;
    *v3 = v0;
    v3[1] = sub_1921154E0;
    v4 = *(v0 + 96);

    return MEMORY[0x1EEDB3D40](v4, v2, v1);
  }

  else
  {
    v5 = *(v0 + 168);
    v6 = *(v0 + 152);
    v8 = *(v0 + 96);
    v7 = *(v0 + 104);
    *(v0 + 56) = 0u;
    *(v0 + 72) = 0u;
    *(v0 + 88) = 0;
    (*(v6 + 8))(v5, v7);
    sub_192115BC4(v0 + 56);
    v9 = sub_192225020();
    (*(*(v9 - 8) + 56))(v8, 1, 1, v9);

    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_1921154E0()
{

  return MEMORY[0x1EEE6DFA0](sub_1921155DC, 0, 0);
}

uint64_t sub_1921155DC()
{
  (*(v0[19] + 8))(v0[21], v0[13]);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v1 = v0[1];

  return v1();
}

uint64_t sub_192115678()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1921156F0(uint64_t a1)
{
  v6 = (*(v1 + 32) + **(v1 + 32));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1920B3B44;

  return v6(a1);
}

uint64_t sub_1921157E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[4] = a4;
  v5[5] = v4;
  v5[2] = a1;
  v5[3] = a3;
  return MEMORY[0x1EEE6DFA0](sub_19211580C, 0, 0);
}

uint64_t sub_19211580C()
{
  v1 = (*(v0[4] + 8))(v0[3]);
  v0[6] = v2;
  v6 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_19211591C;
  v4 = v0[2];

  return v6(v4);
}

uint64_t sub_19211591C()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_192115A94;
  }

  else
  {
    v2 = sub_192115A30;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_192115A30()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_192115A94()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_192115B14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1920A59A8;

  return sub_1921157E8(a1, v6, a3, &off_1F06B3838);
}

uint64_t sub_192115BC4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EADF03B8, &qword_192233A78);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_192115C44()
{
  result = qword_1EADF03C0;
  if (!qword_1EADF03C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADF03C0);
  }

  return result;
}

id DescriptorFetchResult.init(widgetDescriptors:activityDescriptors:controlDescriptors:)(unint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v7 = sub_192036D98(a1, a4);

  *&v4[OBJC_IVAR____TtC9WidgetKit21DescriptorFetchResult_widgetDescriptors] = v7;
  *&v4[OBJC_IVAR____TtC9WidgetKit21DescriptorFetchResult_activityDescriptors] = a2;
  *&v4[OBJC_IVAR____TtC9WidgetKit21DescriptorFetchResult_controlDescriptors] = a3;
  v9.receiver = v4;
  v9.super_class = type metadata accessor for DescriptorFetchResult();
  return objc_msgSendSuper2(&v9, sel_init);
}

id DescriptorFetchResult.__allocating_init(widgetDescriptors:controlDescriptors:)(unint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v7 = sub_192036D98(a1, v6);

  *&v5[OBJC_IVAR____TtC9WidgetKit21DescriptorFetchResult_widgetDescriptors] = v7;
  *&v5[OBJC_IVAR____TtC9WidgetKit21DescriptorFetchResult_controlDescriptors] = a2;
  *&v5[OBJC_IVAR____TtC9WidgetKit21DescriptorFetchResult_activityDescriptors] = MEMORY[0x1E69E7CC0];
  v9.receiver = v5;
  v9.super_class = v2;
  return objc_msgSendSuper2(&v9, sel_init);
}

id DescriptorFetchResult.init(widgetDescriptors:controlDescriptors:)(unint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = sub_192036D98(a1, a3);

  *&v3[OBJC_IVAR____TtC9WidgetKit21DescriptorFetchResult_widgetDescriptors] = v5;
  *&v3[OBJC_IVAR____TtC9WidgetKit21DescriptorFetchResult_controlDescriptors] = a2;
  *&v3[OBJC_IVAR____TtC9WidgetKit21DescriptorFetchResult_activityDescriptors] = MEMORY[0x1E69E7CC0];
  v7.receiver = v3;
  v7.super_class = type metadata accessor for DescriptorFetchResult();
  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t sub_192115E78(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = "widgetDescriptors";
  v4 = 0xD000000000000013;
  if (v2 == 1)
  {
    v5 = 0xD000000000000012;
  }

  else
  {
    v5 = 0xD000000000000013;
  }

  if (v2 == 1)
  {
    v6 = "widgetDescriptors";
  }

  else
  {
    v6 = "controlDescriptors";
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000011;
  }

  if (v2)
  {
    v8 = v6;
  }

  else
  {
    v8 = "com.apple.widget.default";
  }

  if (*a2 == 1)
  {
    v4 = 0xD000000000000012;
  }

  else
  {
    v3 = "controlDescriptors";
  }

  if (*a2)
  {
    v9 = v4;
  }

  else
  {
    v9 = 0xD000000000000011;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = "com.apple.widget.default";
  }

  if (v7 == v9 && (v8 | 0x8000000000000000) == (v10 | 0x8000000000000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1922289A0();
  }

  return v11 & 1;
}