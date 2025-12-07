uint64_t sub_24F27124C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__n128 MarketingIntent.init(id:requestInfo:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = *a1;
  v4 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v4;
  *(a3 + 32) = *(a1 + 32);
  *(a3 + 40) = a2;
  return result;
}

JSValue __swiftcall MarketingIntent.makeValue(in:)(JSContext in)
{
  v2 = v1;
  v4 = objc_opt_self();
  result.super.isa = [v4 valueWithNewObjectInContext_];
  if (!result.super.isa)
  {
    __break(1u);
    goto LABEL_6;
  }

  isa = result.super.isa;
  sub_24E65864C(v2, v8);
  v7 = [v4 valueWithObject:sub_24F92CF68() inContext:in.super.isa];
  result.super.isa = swift_unknownObjectRelease();
  if (!v7)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_24F92C328();
  result.super.isa = [v4 valueWithObject:*(v2 + 40) inContext:in.super.isa];
  if (result.super.isa)
  {
    sub_24F92C328();
    return isa;
  }

LABEL_7:
  __break(1u);
  return result;
}

unint64_t sub_24F271448()
{
  result = qword_27F23D3C0;
  if (!qword_27F23D3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23D3C0);
  }

  return result;
}

uint64_t ProductMediaItem.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v47 = a1;
  v3 = sub_24F91F6B8();
  v36 = *(v3 - 8);
  v37 = v3;
  MEMORY[0x28223BE20](v3);
  v35 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24F9285B8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F928388();
  v41 = *(v9 - 8);
  v42 = v9;
  MEMORY[0x28223BE20](v9);
  v39 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  type metadata accessor for Artwork(0);
  sub_24F928398();
  v43 = v6;
  v12 = *(v6 + 16);
  v12(v8, a2, v5);
  sub_24F27213C(&qword_27F219660, 255, type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
  sub_24F929548();
  v13 = v46[0];
  type metadata accessor for Video(0);
  sub_24F928398();
  v12(v8, a2, v5);
  sub_24F27213C(&qword_27F221590, 255, type metadata accessor for Video, &protocol conformance descriptor for Video);
  sub_24F929548();
  v14 = v46[0];
  v38 = v13;
  if (v13 | v46[0])
  {
    v18 = v41;
    v17 = v42;
    v40 = v5;
    v19 = a2;
    v20 = v39;
    v21 = v47;
    sub_24F928398();
    v22 = sub_24F928348();
    if (v23)
    {
      v44 = v22;
      v45 = v23;
    }

    else
    {
      v24 = v21;
      v25 = v35;
      sub_24F91F6A8();
      v26 = sub_24F91F668();
      v28 = v27;
      v29 = v25;
      v21 = v24;
      (*(v36 + 8))(v29, v37);
      v44 = v26;
      v45 = v28;
    }

    sub_24F92C7F8();
    v30 = *(v18 + 8);
    v31 = v17;
    v30(v20, v17);
    v32 = v40;
    type metadata accessor for ProductMediaItem();
    v15 = swift_allocObject();
    ProductMediaItem.init(id:screenshot:video:)(v46, v38, v14);
    (*(v43 + 8))(v19, v32);
    v30(v21, v31);
  }

  else
  {
    v15 = sub_24F92AC38();
    sub_24F27213C(&qword_27F2213B8, 255, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    *v16 = 0x68736E6565726373;
    v16[1] = 0xEA0000000000746FLL;
    v16[2] = v40;
    (*(*(v15 - 8) + 104))(v16, *MEMORY[0x277D22530], v15);
    swift_willThrow();
    (*(v43 + 8))(a2, v5);
    (*(v41 + 8))(v47, v42);
  }

  return v15;
}

uint64_t sub_24F271A54()
{
  v1 = *(v0 + 16);
  if (!v1)
  {
    v2 = *(v0 + 24);
    if (v2)
    {
      v1 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Video_preview);
    }

    else
    {
      v1 = 0;
    }
  }

  return v1;
}

uint64_t ProductMediaItem.__allocating_init(id:screenshot:video:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F91F6B8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  sub_24E65E064(a1, &v17);
  if (*(&v18 + 1))
  {
    sub_24E9BBAA8(a1);
    v20 = v17;
    v21 = v18;
    v22 = v19;
  }

  else
  {
    sub_24F91F6A8();
    v11 = sub_24F91F668();
    v13 = v12;
    (*(v7 + 8))(v9, v6);
    v16[1] = v11;
    v16[2] = v13;
    sub_24F92C7F8();
    sub_24E9BBAA8(a1);
    sub_24E9BBAA8(&v17);
  }

  v14 = v21;
  *(v10 + 32) = v20;
  *(v10 + 48) = v14;
  *(v10 + 64) = v22;
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  return v10;
}

uint64_t ProductMediaItem.init(id:screenshot:video:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_24F91F6B8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E65E064(a1, &v18);
  if (*(&v19 + 1))
  {
    sub_24E9BBAA8(a1);
    v21 = v18;
    v22 = v19;
    v23 = v20;
  }

  else
  {
    sub_24F91F6A8();
    v12 = sub_24F91F668();
    v14 = v13;
    (*(v9 + 8))(v11, v8);
    v17[1] = v12;
    v17[2] = v14;
    sub_24F92C7F8();
    sub_24E9BBAA8(a1);
    sub_24E9BBAA8(&v18);
  }

  v15 = v22;
  *(v4 + 32) = v21;
  *(v4 + 48) = v15;
  *(v4 + 64) = v23;
  *(v4 + 16) = a2;
  *(v4 + 24) = a3;
  return v4;
}

uint64_t ProductMediaItem.deinit()
{

  sub_24E6585F8(v0 + 32);
  return v0;
}

uint64_t ProductMediaItem.__deallocating_deinit()
{

  sub_24E6585F8(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_24F271E6C@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = ProductMediaItem.__allocating_init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_24F271E98()
{
  v1 = *(*v0 + 16);
  if (!v1)
  {
    v2 = *(*v0 + 24);
    if (v2)
    {
      v1 = *(v2 + OBJC_IVAR____TtC12GameStoreKit5Video_preview);
    }

    else
    {
      v1 = 0;
    }
  }

  return v1;
}

uint64_t sub_24F271EFC()
{
  sub_24F92D068();
  _s12GameStoreKit29DiffablePageContentIdentifierV4hash4intoys6HasherVz_tF_0();
  return sub_24F92D0B8();
}

uint64_t sub_24F271F6C()
{
  sub_24F92D068();
  _s12GameStoreKit29DiffablePageContentIdentifierV4hash4intoys6HasherVz_tF_0();
  return sub_24F92D0B8();
}

uint64_t _s12GameStoreKit16ProductMediaItemC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v4)
  {
    if (v5)
    {

      v6 = _s12GameStoreKit7ArtworkC2eeoiySbAC_ACtFZ_0(v4, v5);

      if (v6)
      {
        goto LABEL_4;
      }
    }

LABEL_11:
    v9 = 0;
    return v9 & 1;
  }

  if (v5)
  {
    goto LABEL_11;
  }

LABEL_4:
  v7 = *(a1 + 24);
  v8 = *(a2 + 24);
  v9 = (v7 | v8) == 0;
  if (v7)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {

    if (sub_24F91F418())
    {
      v9 = _s12GameStoreKit7ArtworkC2eeoiySbAC_ACtFZ_0(*(v7 + OBJC_IVAR____TtC12GameStoreKit5Video_preview), *(v8 + OBJC_IVAR____TtC12GameStoreKit5Video_preview));
    }

    else
    {
      v9 = 0;
    }
  }

  return v9 & 1;
}

uint64_t sub_24F27213C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

double Unactionable<>.segue.getter@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

Swift::Void __swiftcall TriggerPersistantStore.markTriggerIdsSeen(_:)(Swift::OpaquePointer a1)
{
  v4 = v2;
  v5 = v1;
  v7 = sub_24F91F648();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v11 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F91F638();
  (*(v4 + 32))(v5, v4);
  sub_24F272380(a1._rawValue, v3, v10, v5, v4);
  (*(v4 + 40))(v5, v4);
  (*(v8 + 8))(v10, v7);
}

void sub_24F272380(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = v19 - v10;
  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = *(a5 + 16);
    v14 = (a1 + 32);
    v19[1] = a5 + 8;
    do
    {
      v16 = *v14++;
      v15 = v16;
      v22 = v16;
      v13(&v22, a4, a5, v9);
      v17 = sub_24F91F648();
      v18 = (*(*(v17 - 8) + 48))(v11, 1, v17);
      sub_24E728998(v11);
      if (v18 == 1)
      {
        v21 = v15;
        (*(a5 + 8))(&v21, v20, a4, a5);
      }

      --v12;
    }

    while (v12);
  }
}

Swift::Void __swiftcall TriggerPersistantStore.markTriggersSeen(_:)(Swift::OpaquePointer a1)
{
  v1 = *(a1._rawValue + 2);
  v2._rawValue = MEMORY[0x277D84F90];
  if (v1)
  {
    rawValue = MEMORY[0x277D84F90];
    sub_24F458DC8(0, v1, 0);
    v2._rawValue = rawValue;
    v4 = a1._rawValue + 32;
    do
    {
      sub_24E615E00(v4, v10);
      v5 = v11;
      v6 = v12;
      __swift_project_boxed_opaque_existential_1(v10, v11);
      (*(v6 + 8))(&v13, v5, v6);
      __swift_destroy_boxed_opaque_existential_1(v10);
      v7 = v13;
      rawValue = v2._rawValue;
      v9 = *(v2._rawValue + 2);
      v8 = *(v2._rawValue + 3);
      if (v9 >= v8 >> 1)
      {
        sub_24F458DC8((v8 > 1), v9 + 1, 1);
        v2._rawValue = rawValue;
      }

      *(v2._rawValue + 2) = v9 + 1;
      *(v2._rawValue + v9 + 32) = v7;
      v4 += 40;
      --v1;
    }

    while (v1);
  }

  TriggerPersistantStore.markTriggerIdsSeen(_:)(v2);
}

Swift::Void __swiftcall TriggerPersistantStore.removeAllTriggers()()
{
  v3 = v1;
  v4 = v0;
  (*(v1 + 32))();
  sub_24F27269C(v2, v4, v3);
  v5 = *(v3 + 40);

  v5(v4, v3);
}

uint64_t sub_24F27269C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v10 = 0;
  (v5)(&v10);
  v9 = 1;
  v5(&v9, a2, a3);
  v8 = 2;
  v5(&v8, a2, a3);
  v7 = 3;
  return (v5)(&v7, a2, a3);
}

uint64_t TriggerPersistantStore.migrate(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_24F272864(a2, a3);
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  (*(v9 + 32))(v8, v9);
  sub_24F272C24(v7, a1);
  (*(v9 + 40))(v8, v9);

  (*(a3 + 32))(a2, a3);
  sub_24F27269C(v3, a2, a3);
  v10 = *(a3 + 40);

  return v10(a2, a3);
}

void *sub_24F272864(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v38 - v6;
  v8 = sub_24F91F648();
  MEMORY[0x28223BE20](v8);
  v10 = v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v11);
  v47 = v38 - v13;
  v14 = 0;
  v15 = *(a2 + 16);
  v48 = (v16 + 48);
  v49 = v15;
  v45 = (v16 + 16);
  v46 = (v16 + 32);
  v42 = v16 + 8;
  v44 = v16;
  v38[1] = v16 + 40;
  v17 = MEMORY[0x277D84F98];
  v40 = a2;
  v41 = a1;
  v38[2] = a2 + 16;
  v39 = v2;
  v43 = v10;
  while (1)
  {
    v18 = byte_2861C1FB8[v14 + 32];
    v51 = byte_2861C1FB8[v14 + 32];
    v49(&v51, a1, a2, v12);
    if ((*v48)(v7, 1, v8) == 1)
    {
      sub_24E728998(v7);
      goto LABEL_3;
    }

    v19 = v47;
    v20 = *v46;
    v21 = v8;
    v22 = v7;
    (*v46)(v47, v7, v21);
    (*v45)(v10, v19, v21);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v50 = v17;
    v25 = sub_24E76EAD8(v18);
    v26 = v17[2];
    v27 = (v24 & 1) == 0;
    v28 = v26 + v27;
    if (__OFADD__(v26, v27))
    {
      break;
    }

    v29 = v24;
    if (v17[3] >= v28)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_24E8B6648();
      }
    }

    else
    {
      sub_24E8A8AFC(v28, isUniquelyReferenced_nonNull_native);
      v30 = sub_24E76EAD8(v18);
      if ((v29 & 1) != (v31 & 1))
      {
        goto LABEL_19;
      }

      v25 = v30;
    }

    v7 = v22;
    v17 = v50;
    v8 = v21;
    if (v29)
    {
      v10 = v43;
      v32 = v44;
      (*(v44 + 40))(v50[7] + *(v44 + 72) * v25, v43, v21);
      (*(v32 + 8))(v47, v21);
    }

    else
    {
      v50[(v25 >> 6) + 8] |= 1 << v25;
      *(v17[6] + v25) = v18;
      v10 = v43;
      v33 = v44;
      v20((v17[7] + *(v44 + 72) * v25), v43, v21);
      (*(v33 + 8))(v47, v21);
      v34 = v17[2];
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
        goto LABEL_18;
      }

      v17[2] = v36;
    }

    a2 = v40;
    a1 = v41;
LABEL_3:
    if (++v14 == 4)
    {
      return v17;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_24F92CF88();
  __break(1u);
  return result;
}

void sub_24F272C24(uint64_t a1, void *a2)
{
  v42 = a2;
  v46 = sub_24F91F648();
  v3 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v44 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23D3D8, &qword_24F9DB4B8);
  MEMORY[0x28223BE20](v5 - 8);
  v43 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v36 - v8;
  v10 = *(a1 + 64);
  v36 = a1 + 64;
  v11 = 1 << *(a1 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v10;
  v14 = (v11 + 63) >> 6;
  v38 = v3 + 16;
  v39 = v3;
  v45 = (v3 + 32);
  v40 = a1;
  v41 = (v3 + 8);

  v15 = 0;
  v37 = v9;
  if (v13)
  {
    while (1)
    {
      v16 = v15;
LABEL_12:
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v21 = v20 | (v16 << 6);
      v22 = v39;
      v23 = *(*(v40 + 48) + v21);
      v24 = v44;
      v25 = v46;
      (*(v39 + 16))(v44, *(v40 + 56) + *(v39 + 72) * v21, v46);
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F23D3E0, &qword_24F9DB4C0);
      v27 = *(v26 + 48);
      v28 = v43;
      *v43 = v23;
      v19 = v28;
      (*(v22 + 32))(&v28[v27], v24, v25);
      (*(*(v26 - 8) + 56))(v19, 0, 1, v26);
      v18 = v16;
      v9 = v37;
LABEL_13:
      sub_24F273098(v19, v9);
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F23D3E0, &qword_24F9DB4C0);
      if ((*(*(v29 - 8) + 48))(v9, 1, v29) == 1)
      {
        break;
      }

      v30 = *v9;
      v31 = v44;
      v32 = v46;
      (*v45)(v44, &v9[*(v29 + 48)], v46);
      v33 = v42[3];
      v34 = v42[4];
      __swift_project_boxed_opaque_existential_1(v42, v33);
      v47 = v30;
      (*(v34 + 8))(&v47, v31, v33, v34);
      (*v41)(v31, v32);
      v15 = v18;
      if (!v13)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    if (v14 <= v15 + 1)
    {
      v17 = v15 + 1;
    }

    else
    {
      v17 = v14;
    }

    v18 = v17 - 1;
    v19 = v43;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v16 >= v14)
      {
        v35 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F23D3E0, &qword_24F9DB4C0);
        (*(*(v35 - 8) + 56))(v19, 1, 1, v35);
        v13 = 0;
        goto LABEL_13;
      }

      v13 = *(v36 + 8 * v16);
      ++v15;
      if (v13)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t sub_24F273098(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23D3D8, &qword_24F9DB4B8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double OrderedSet.init(arrayLiteral:)@<D0>(_OWORD *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  OrderedSet.init(_:)(a2, a3, a4, &v6);
  result = *&v6;
  *a1 = v6;
  return result;
}

Swift::Void __swiftcall OrderedSet.removeAll(keepingCapacity:)(Swift::Bool keepingCapacity)
{
  sub_24F92B6E8();
  sub_24F92B6D8();
  sub_24F92AEA8();
  sub_24F92AE98();
}

uint64_t OrderedSet.append(_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_24F92AEC8();
  v7 = v11;

  if (v7 == 1)
  {
    v8 = *(v4 + 16);
    v8(v6, a1, v3);
    v10 = sub_24F92B648();
    v11 = 0;
    sub_24F92AEA8();
    sub_24F92AED8();
    v8(v6, a1, v3);
    sub_24F92B6E8();
    sub_24F92B658();
  }

  return v7;
}

uint64_t OrderedSet.subscript.getter(uint64_t a1, uint64_t a2)
{

  sub_24F92B758();
}

uint64_t OrderedSet.init()@<X0>(uint64_t *a3@<X8>)
{
  *a3 = sub_24F92B608();
  result = sub_24F92AE08();
  a3[1] = result;
  return result;
}

uint64_t OrderedSet.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = *(a2 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24F92B608();
  v12 = sub_24F92AE08();
  v23 = v11;
  v24 = v12;
  if (sub_24F92B648())
  {
    v20 = v9;
    v21 = a4;
    v13 = 0;
    while (1)
    {
      v14 = sub_24F92B628();
      sub_24F92B5D8();
      if (v14)
      {
        (*(v8 + 16))(v10, a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v13, a2);
        v16 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          goto LABEL_10;
        }
      }

      else
      {
        result = sub_24F92C8D8();
        if (v20 != 8)
        {
          __break(1u);
          return result;
        }

        v22 = result;
        (*(v8 + 16))(v10, &v22, a2);
        swift_unknownObjectRelease();
        v16 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
LABEL_10:
          __break(1u);
LABEL_11:

          v11 = v23;
          v12 = v24;
          a4 = v21;
          goto LABEL_13;
        }
      }

      v17 = type metadata accessor for OrderedSet(0, a2, a3, v15);
      OrderedSet.append(_:)(v10, v17);
      (*(v8 + 8))(v10, a2);
      ++v13;
      if (v16 == sub_24F92B648())
      {
        goto LABEL_11;
      }
    }
  }

LABEL_13:
  *a4 = v11;
  a4[1] = v12;
  return result;
}

uint64_t OrderedSet.isEmpty.getter(uint64_t a1)
{
  sub_24F92B6E8();
  swift_getWitnessTable();
  return sub_24F92BC58() & 1;
}

double OrderedSet.contents.getter()
{
  sub_24F274564();

  return result;
}

void OrderedSet.removeFirst()(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v45 = sub_24F92C4A8();
  v43 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v9 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v35 - v11;
  sub_24F92B6E8();
  swift_getWitnessTable();
  sub_24F92BCC8();
  v47 = v3;
  v41 = sub_24F92AEA8();
  sub_24F92AE58();
  v42 = v2;
  v13 = *(v2 + 8);
  v14 = v13 + 64;
  v15 = 1 << *(v13 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(v13 + 64);
  v18 = (v15 + 63) >> 6;
  v35[1] = v4 + 16;
  v39 = v4;
  v40 = v13;
  v46 = (v4 + 32);
  v43 += 4;
  v44 = TupleTypeMetadata2 - 8;

  v19 = 0;
  v37 = v9;
  v38 = v6;
  v36 = v12;
  if (v17)
  {
    while (1)
    {
      v20 = v19;
LABEL_12:
      v23 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v24 = v23 | (v20 << 6);
      v26 = v39;
      v25 = v40;
      v27 = v38;
      v28 = v47;
      (*(v39 + 16))(v38, *(v40 + 48) + *(v39 + 72) * v24, v47);
      v29 = *(*(v25 + 56) + 8 * v24);
      v30 = *(TupleTypeMetadata2 + 48);
      v31 = *(v26 + 32);
      v6 = v27;
      v9 = v37;
      v31(v37, v6, v28);
      v32 = 0;
      *&v9[v30] = v29;
      v22 = v20;
      v12 = v36;
LABEL_13:
      v33 = *(TupleTypeMetadata2 - 8);
      (*(v33 + 56))(v9, v32, 1, TupleTypeMetadata2);
      (*v43)(v12, v9, v45);
      if ((*(v33 + 48))(v12, 1, TupleTypeMetadata2) == 1)
      {
        break;
      }

      v34 = *&v12[*(TupleTypeMetadata2 + 48)];
      (*v46)(v6, v12, v47);
      if (__OFSUB__(v34, 1))
      {
        goto LABEL_20;
      }

      v48 = v34 - 1;
      v49 = 0;
      sub_24F92AED8();
      v19 = v22;
      if (!v17)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    if (v18 <= v19 + 1)
    {
      v21 = v19 + 1;
    }

    else
    {
      v21 = v18;
    }

    v22 = v21 - 1;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v20 >= v18)
      {
        v17 = 0;
        v32 = 1;
        goto LABEL_13;
      }

      v17 = *(v14 + 8 * v20);
      ++v19;
      if (v17)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }
}

void *OrderedSet.removeLast()()
{
  sub_24F92B6E8();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24F92BCD8();
  sub_24F92AEA8();
  return sub_24F92AE58();
}

uint64_t == infix<A>(_:_:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{

  v4 = sub_24F92B718();

  return v4 & 1;
}

uint64_t sub_24F273D00@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = OrderedSet.endIndex.getter(a2);
  *a1 = result;
  return result;
}

uint64_t OrderedSet.endIndex.getter(uint64_t a1)
{

  v1 = sub_24F92B648();

  return v1;
}

uint64_t (*sub_24F273D6C(void *a1, uint64_t *a2, uint64_t a3))()
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
  v6[4] = sub_24F273E3C(v6, *a2, a3);
  return sub_24F273DF4;
}

void sub_24F273DF4(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t (*sub_24F273E3C(void *a1, uint64_t a2, uint64_t a3))()
{
  v6 = *(a3 + 16);
  *a1 = v6;
  v7 = *(v6 - 8);
  a1[1] = v7;
  v8 = *(v7 + 64);
  if (MEMORY[0x277D84FD8])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(v8);
  }

  a1[2] = v9;
  OrderedSet.subscript.getter(a2, a3);
  return sub_24F273F0C;
}

void sub_24F273F0C(void *a1)
{
  v1 = a1[2];
  (*(a1[1] + 8))(v1, *a1);

  free(v1);
}

uint64_t sub_24F273F5C(uint64_t a1)
{
  swift_getWitnessTable();

  return sub_24F92BB68();
}

uint64_t sub_24F274054(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC6F8](a1, a2, WitnessTable, v5);
}

__n128 sub_24F2740DC@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u64[0] = 0;
  return result;
}

uint64_t sub_24F2740EC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC7A8](a1, WitnessTable);
}

uint64_t sub_24F274140(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();
  v4 = sub_24F2748E0(v1, a1, WitnessTable);

  return v4;
}

uint64_t sub_24F2741D8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC700](a1, a2, WitnessTable, v5);
}

uint64_t sub_24F274260(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t, uint64_t, void))
{
  v8 = *a1;
  WitnessTable = swift_getWitnessTable();
  return a4(&v8, a2, WitnessTable, MEMORY[0x277D83BC8]);
}

uint64_t sub_24F2742D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC708](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_24F27435C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getWitnessTable();

  return sub_24F92BB28();
}

uint64_t sub_24F2743E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D83BC8];

  return MEMORY[0x2821FC718](a1, a2, a3, WitnessTable, v7);
}

uint64_t OrderedSet.hash(into:)(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  sub_24F92B6F8();
  v7 = MEMORY[0x277D83B88];
  v8 = MEMORY[0x277D83B98];

  return MEMORY[0x2821FB920](a1, v4, v5, v7, v6, v8);
}

uint64_t OrderedSet.hashValue.getter(uint64_t a1)
{
  v5 = *v1;
  sub_24F92D068();
  OrderedSet.hash(into:)(v4, a1);
  return sub_24F92D0B8();
}

uint64_t sub_24F274520(uint64_t a1, uint64_t a2)
{
  sub_24F92D068();
  OrderedSet.hash(into:)(v4, a2);
  return sub_24F92D0B8();
}

uint64_t sub_24F2746F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_24F274730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = sub_24F92AF98();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  sub_24F92BCF8();
  result = sub_24F92AF98();
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_24F2747FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t), uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  result = sub_24F92AF98();
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

uint64_t PersonalizationTransparencyPageIntent.kind.getter()
{
  v1 = *v0;

  return v1;
}

JSValue __swiftcall PersonalizationTransparencyPageIntent.makeValue(in:)(JSContext in)
{
  result.super.isa = [objc_opt_self() valueWithNewObjectInContext_];
  if (!result.super.isa)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_24F274970()
{
  result = qword_27F23D468;
  if (!qword_27F23D468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23D468);
  }

  return result;
}

unint64_t sub_24F2749C8()
{
  result = qword_27F23D470;
  if (!qword_27F23D470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23D470);
  }

  return result;
}

unint64_t sub_24F274A20()
{
  result = qword_27F23D478;
  if (!qword_27F23D478)
  {
    type metadata accessor for PersonalizationTransparencyPage(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23D478);
  }

  return result;
}

double SearchResults.facets.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR____TtC12GameStoreKit13SearchResults_facets;
  v3 = *(v1 + OBJC_IVAR____TtC12GameStoreKit13SearchResults_facets);
  v4 = *(v1 + OBJC_IVAR____TtC12GameStoreKit13SearchResults_facets + 8);
  v5 = *(v1 + OBJC_IVAR____TtC12GameStoreKit13SearchResults_facets + 16);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = *(v2 + 24);
  return sub_24E903680(v3, v4, v5);
}

uint64_t SearchResults.__allocating_init(results:message:facets:selectedFacetOptions:nextPage:isAutoPlayEnabled:isCondensedSearchLockupsEnabled:transparencyLink:guidedSearchTokens:guidedSearchQueries:pageMetrics:pageRenderEvent:resultsParentImpressionMetrics:guidedSearchTokensParentImpressionMetrics:pageRefreshPolicy:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, uint64_t a8, uint64_t a9, char *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  LODWORD(v73) = a7;
  LODWORD(v72) = a6;
  v69 = a1;
  v70 = a4;
  v77 = a14;
  v78 = a13;
  v74 = a12;
  v75 = a15;
  v79 = a11;
  v71 = a10;
  v67 = a9;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218B0, &unk_24F975980);
  MEMORY[0x28223BE20](v20 - 8);
  v66 = &v62 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v76 = &v62 - v23;
  MEMORY[0x28223BE20](v24);
  v26 = &v62 - v25;
  v27 = sub_24F928818();
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v30 = &v62 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = swift_allocObject();
  v32 = *(a3 + 16);
  *(v31 + OBJC_IVAR____TtC12GameStoreKit13SearchResults_results) = v69;
  v33 = *(a3 + 24);
  v68 = a5;
  v69 = a2;
  *(v31 + OBJC_IVAR____TtC12GameStoreKit13SearchResults_message) = a2;
  v34 = v31 + OBJC_IVAR____TtC12GameStoreKit13SearchResults_facets;
  *v34 = *a3;
  *(v34 + 16) = v32;
  *(v34 + 24) = v33;
  *(v31 + OBJC_IVAR____TtC12GameStoreKit13SearchResults_selectedFacetOptions) = v70;
  sub_24E60169C(a5, v31 + OBJC_IVAR____TtC12GameStoreKit13SearchResults_nextPage, &qword_27F2129B0, &unk_24F945320);
  *(v31 + OBJC_IVAR____TtC12GameStoreKit13SearchResults_isAutoPlayEnabled) = v72;
  *(v31 + OBJC_IVAR____TtC12GameStoreKit13SearchResults_isCondensedSearchLockupsEnabled) = v73;
  v70 = a8;
  *(v31 + OBJC_IVAR____TtC12GameStoreKit13SearchResults_transparencyLink) = a8;
  *(v31 + OBJC_IVAR____TtC12GameStoreKit13SearchResults_guidedSearchTokens) = v67;
  *(v31 + OBJC_IVAR____TtC12GameStoreKit13SearchResults_guidedSearchQueries) = v71;
  sub_24E60169C(v78, v31 + OBJC_IVAR____TtC12GameStoreKit13SearchResults_resultsParentImpressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  v35 = v75;
  sub_24E60169C(v77, v31 + OBJC_IVAR____TtC12GameStoreKit13SearchResults_guidedSearchTokensParentImpressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  v36 = *(v28 + 16);
  v36(v30, v79, v27);
  v72 = a16;
  sub_24E60169C(a16, v26, &qword_27F2218B0, &unk_24F975980);
  *(v31 + 16) = v35;
  v73 = v30;
  v36((v31 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics), v30, v27);
  *(v31 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageRenderEvent) = v74;
  v71 = v26;
  v37 = v76;
  sub_24E60169C(v26, v76, &qword_27F2218B0, &unk_24F975980);
  v38 = sub_24F9285B8();
  v67 = *(v38 - 8);
  v39 = *(v67 + 48);
  if (v39(v37, 1, v38) == 1)
  {
    sub_24E601704(v72, &qword_27F2218B0, &unk_24F975980);
    sub_24E601704(v77, &qword_27F213E68, &unk_24F93BC80);
    sub_24E601704(v78, &qword_27F213E68, &unk_24F93BC80);
    v40 = *(v28 + 8);
    v40(v79, v27);
    sub_24E601704(v68, &qword_27F2129B0, &unk_24F945320);
    sub_24E601704(v71, &qword_27F2218B0, &unk_24F975980);
    v40(v73, v27);
    v41 = v37;
  }

  else
  {
    v63 = v39;
    v65 = v28;
    v42 = v68;
    v43 = qword_27F2105F0;

    if (v43 != -1)
    {
      swift_once();
    }

    v64 = v27;
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221578, &qword_24F97ADF0);
    __swift_project_value_buffer(v44, qword_27F22D8D8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221570, &unk_24F966930);
    sub_24F9285C8();
    v45 = v80;
    v46 = v42;
    v47 = v67;
    if (v80)
    {
    }

    v48 = *(v47 + 8);
    v48(v76, v38);
    v49 = v79;
    if (!v45)
    {

      sub_24E601704(v72, &qword_27F2218B0, &unk_24F975980);
      sub_24E601704(v77, &qword_27F213E68, &unk_24F93BC80);
      sub_24E601704(v78, &qword_27F213E68, &unk_24F93BC80);
      v55 = *(v65 + 8);
      v56 = v49;
      v57 = v64;
      v55(v56, v64);
      sub_24E601704(v46, &qword_27F2129B0, &unk_24F945320);
      sub_24E601704(v71, &qword_27F2218B0, &unk_24F975980);
      v55(v73, v57);
      return v31;
    }

    v50 = v71;
    v51 = v66;
    sub_24E60169C(v71, v66, &qword_27F2218B0, &unk_24F975980);
    if (v63(v51, 1, v38) != 1)
    {
      sub_24ECDF110();

      sub_24E601704(v72, &qword_27F2218B0, &unk_24F975980);
      sub_24E601704(v77, &qword_27F213E68, &unk_24F93BC80);
      sub_24E601704(v78, &qword_27F213E68, &unk_24F93BC80);
      v58 = *(v65 + 8);
      v59 = v49;
      v60 = v64;
      v58(v59, v64);
      sub_24E601704(v46, &qword_27F2129B0, &unk_24F945320);
      sub_24E601704(v50, &qword_27F2218B0, &unk_24F975980);
      v58(v73, v60);
      v48(v51, v38);
      return v31;
    }

    sub_24E601704(v72, &qword_27F2218B0, &unk_24F975980);
    sub_24E601704(v77, &qword_27F213E68, &unk_24F93BC80);
    sub_24E601704(v78, &qword_27F213E68, &unk_24F93BC80);
    v52 = *(v65 + 8);
    v53 = v49;
    v54 = v64;
    v52(v53, v64);
    sub_24E601704(v46, &qword_27F2129B0, &unk_24F945320);
    sub_24E601704(v50, &qword_27F2218B0, &unk_24F975980);
    v52(v73, v54);
    v41 = v51;
  }

  sub_24E601704(v41, &qword_27F2218B0, &unk_24F975980);
  return v31;
}

uint64_t SearchResults.init(results:message:facets:selectedFacetOptions:nextPage:isAutoPlayEnabled:isCondensedSearchLockupsEnabled:transparencyLink:guidedSearchTokens:guidedSearchQueries:pageMetrics:pageRenderEvent:resultsParentImpressionMetrics:guidedSearchTokensParentImpressionMetrics:pageRefreshPolicy:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, char *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v17 = v16;
  LODWORD(v74) = a7;
  LODWORD(v73) = a6;
  v72 = a4;
  v77 = a5;
  v78 = a14;
  v75 = a15;
  v76 = a12;
  v79 = a11;
  v69 = a9;
  v70 = a10;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2218B0, &unk_24F975980);
  MEMORY[0x28223BE20](v22 - 8);
  v67 = &v62 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v71 = &v62 - v25;
  MEMORY[0x28223BE20](v26);
  v28 = &v62 - v27;
  v29 = sub_24F928818();
  v30 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v32 = &v62 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *(a3 + 16);
  *(v16 + OBJC_IVAR____TtC12GameStoreKit13SearchResults_results) = a1;
  v34 = *(a3 + 24);
  v68 = a2;
  *(v16 + OBJC_IVAR____TtC12GameStoreKit13SearchResults_message) = a2;
  v35 = v16 + OBJC_IVAR____TtC12GameStoreKit13SearchResults_facets;
  *v35 = *a3;
  *(v35 + 16) = v33;
  *(v35 + 24) = v34;
  *(v16 + OBJC_IVAR____TtC12GameStoreKit13SearchResults_selectedFacetOptions) = v72;
  v37 = v36;
  sub_24E60169C(v77, v16 + OBJC_IVAR____TtC12GameStoreKit13SearchResults_nextPage, &qword_27F2129B0, &unk_24F945320);
  *(v16 + OBJC_IVAR____TtC12GameStoreKit13SearchResults_isAutoPlayEnabled) = v73;
  *(v16 + OBJC_IVAR____TtC12GameStoreKit13SearchResults_isCondensedSearchLockupsEnabled) = v74;
  v72 = a8;
  v73 = a13;
  *(v16 + OBJC_IVAR____TtC12GameStoreKit13SearchResults_transparencyLink) = a8;
  v38 = v70;
  *(v16 + OBJC_IVAR____TtC12GameStoreKit13SearchResults_guidedSearchTokens) = v69;
  *(v16 + OBJC_IVAR____TtC12GameStoreKit13SearchResults_guidedSearchQueries) = v38;
  sub_24E60169C(a13, v16 + OBJC_IVAR____TtC12GameStoreKit13SearchResults_resultsParentImpressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  sub_24E60169C(v78, v16 + OBJC_IVAR____TtC12GameStoreKit13SearchResults_guidedSearchTokensParentImpressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  v39 = *(v30 + 16);
  v39(v32, v79, v37);
  sub_24E60169C(a16, v28, &qword_27F2218B0, &unk_24F975980);
  *(v16 + 16) = v75;
  v74 = v37;
  v39((v16 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics), v32, v37);
  *(v16 + OBJC_IVAR____TtC12GameStoreKit8BasePage_pageRenderEvent) = v76;
  v40 = v28;
  v41 = v28;
  v42 = v71;
  sub_24E60169C(v41, v71, &qword_27F2218B0, &unk_24F975980);
  v43 = sub_24F9285B8();
  v70 = *(v43 - 8);
  v44 = *(v70 + 48);
  if (v44(v42, 1, v43) == 1)
  {
    sub_24E601704(a16, &qword_27F2218B0, &unk_24F975980);
    sub_24E601704(v78, &qword_27F213E68, &unk_24F93BC80);
    sub_24E601704(v73, &qword_27F213E68, &unk_24F93BC80);
    v45 = *(v30 + 8);
    v46 = v74;
    v45(v79, v74);
    sub_24E601704(v77, &qword_27F2129B0, &unk_24F945320);
    sub_24E601704(v40, &qword_27F2218B0, &unk_24F975980);
    v45(v32, v46);
    v47 = v42;
  }

  else
  {
    v63 = v44;
    v64 = a16;
    v65 = v32;
    v66 = v30;
    v69 = v40;
    v48 = qword_27F2105F0;

    if (v48 != -1)
    {
      swift_once();
    }

    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221578, &qword_24F97ADF0);
    __swift_project_value_buffer(v49, qword_27F22D8D8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221570, &unk_24F966930);
    sub_24F9285C8();
    v50 = v80;
    v51 = v70;
    if (v80)
    {
    }

    v52 = *(v51 + 8);
    v52(v42, v43);
    if (!v50)
    {

      sub_24E601704(v64, &qword_27F2218B0, &unk_24F975980);
      sub_24E601704(v78, &qword_27F213E68, &unk_24F93BC80);
      sub_24E601704(v73, &qword_27F213E68, &unk_24F93BC80);
      v57 = *(v66 + 8);
      v58 = v74;
      v57(v79, v74);
      sub_24E601704(v77, &qword_27F2129B0, &unk_24F945320);
      sub_24E601704(v69, &qword_27F2218B0, &unk_24F975980);
      v57(v65, v58);
      return v17;
    }

    v53 = v67;
    sub_24E60169C(v69, v67, &qword_27F2218B0, &unk_24F975980);
    if (v63(v53, 1, v43) != 1)
    {
      sub_24ECDF110();

      sub_24E601704(v64, &qword_27F2218B0, &unk_24F975980);
      sub_24E601704(v78, &qword_27F213E68, &unk_24F93BC80);
      sub_24E601704(v73, &qword_27F213E68, &unk_24F93BC80);
      v59 = *(v66 + 8);
      v60 = v74;
      v59(v79, v74);
      sub_24E601704(v77, &qword_27F2129B0, &unk_24F945320);
      sub_24E601704(v69, &qword_27F2218B0, &unk_24F975980);
      v59(v65, v60);
      v52(v53, v43);
      return v17;
    }

    v54 = v53;
    sub_24E601704(v64, &qword_27F2218B0, &unk_24F975980);
    sub_24E601704(v78, &qword_27F213E68, &unk_24F93BC80);
    sub_24E601704(v73, &qword_27F213E68, &unk_24F93BC80);
    v55 = *(v66 + 8);
    v56 = v74;
    v55(v79, v74);
    sub_24E601704(v77, &qword_27F2129B0, &unk_24F945320);
    sub_24E601704(v69, &qword_27F2218B0, &unk_24F975980);
    v55(v65, v56);
    v47 = v54;
  }

  sub_24E601704(v47, &qword_27F2218B0, &unk_24F975980);
  return v17;
}

void (*SearchResults.init(deserializing:using:)(void (*a1)(void, void), uint64_t a2))(void, void)
{
  v3 = v2;
  v114 = v2;
  v115 = a2;
  v109 = *v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v5 - 8);
  v105 = &v95 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F48, &unk_24F93A2D0);
  MEMORY[0x28223BE20](v7 - 8);
  v99 = &v95 - v8;
  v116 = sub_24F9285B8();
  v113 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v104 = &v95 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v112 = &v95 - v11;
  MEMORY[0x28223BE20](v12);
  v119 = &v95 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0, &qword_24F965EC0);
  MEMORY[0x28223BE20](v14 - 8);
  v96 = &v95 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v95 - v17;
  v19 = sub_24F928388();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v101 = &v95 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v98 = &v95 - v23;
  MEMORY[0x28223BE20](v24);
  v97 = &v95 - v25;
  MEMORY[0x28223BE20](v26);
  v28 = &v95 - v27;
  MEMORY[0x28223BE20](v29);
  v31 = &v95 - v30;
  v32 = sub_24F92AC28();
  v33 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v111 = &v95 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = a1;
  sub_24F928398();
  sub_24F9282B8();
  v36 = v33;
  v110 = v20;
  v37 = v20 + 8;
  v38 = *(v20 + 8);
  v38(v31, v19);
  if ((*(v36 + 48))(v18, 1, v32) == 1)
  {
    sub_24E601704(v18, &qword_27F2213B0, &qword_24F965EC0);
    v39 = sub_24F92AC38();
    sub_24F276E70(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    *v40 = 0x73746C75736572;
    v41 = v109;
    v40[1] = 0xE700000000000000;
    v40[2] = v41;
    (*(*(v39 - 8) + 104))(v40, *MEMORY[0x277D22530], v39);
    swift_willThrow();
    (*(v113 + 8))(v115, v116);
    v38(v35, v19);
    type metadata accessor for SearchResults(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v102 = v38;
    v103 = v37;
    v42 = v114;
    v106 = v19;
    v108 = v35;
    (*(v36 + 32))(v111, v18, v32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221570, &unk_24F966930);
    v100 = v36;
    v43 = swift_allocObject();
    v44 = MEMORY[0x277D84F90];
    *(v43 + 16) = MEMORY[0x277D84F90];
    *&v117 = v43;
    if (qword_27F2105F0 != -1)
    {
      swift_once();
    }

    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221578, &qword_24F97ADF0);
    __swift_project_value_buffer(v45, qword_27F22D8D8);
    v46 = v119;
    sub_24F928528();

    v47 = v100;
    v48 = v96;
    (*(v100 + 16))(v96, v111, v32);
    (*(v47 + 56))(v48, 0, 1, v32);
    Instances15byDeserializing5usingSayACGSg9JetEngine9JSONArrayVSg_AI11JSONContextVtFZ_0 = _s12GameStoreKit12SearchResultC18tryToMakeInstances15byDeserializing5usingSayACGSg9JetEngine9JSONArrayVSg_AI11JSONContextVtFZ_0(v48, v46);
    sub_24E601704(v48, &qword_27F2213B0, &qword_24F965EC0);
    if (Instances15byDeserializing5usingSayACGSg9JetEngine9JSONArrayVSg_AI11JSONContextVtFZ_0)
    {
      v50 = Instances15byDeserializing5usingSayACGSg9JetEngine9JSONArrayVSg_AI11JSONContextVtFZ_0;
    }

    else
    {
      v50 = v44;
    }

    *(v42 + OBJC_IVAR____TtC12GameStoreKit13SearchResults_results) = v50;
    type metadata accessor for SearchResultsMessage();
    v51 = v28;
    sub_24F928398();
    v52 = v113 + 16;
    v53 = *(v113 + 16);
    v95 = v32;
    v54 = v112;
    v55 = v116;
    (v53)(v112, v46, v116);
    v96 = v53;
    v109 = v52;
    sub_24F276E70(&qword_27F2230F8, type metadata accessor for SearchResultsMessage, &protocol conformance descriptor for SearchResultsMessage);
    sub_24F929548();
    v56 = v114;
    *(v114 + OBJC_IVAR____TtC12GameStoreKit13SearchResults_message) = v117;
    sub_24F928398();
    (v53)(v54, v46, v55);
    sub_24E90362C();
    sub_24F929548();
    v57 = v118;
    v58 = BYTE8(v118);
    v59 = v56;
    v60 = v56 + OBJC_IVAR____TtC12GameStoreKit13SearchResults_facets;
    *v60 = v117;
    *(v60 + 16) = v57;
    *(v60 + 24) = v58;
    v61 = v99;
    sub_24F928398();
    v62 = v106;
    (*(v110 + 56))(v61, 0, 1, v106);
    v63 = *(v60 + 8);
    v64 = *(v60 + 16);
    v65 = *(v60 + 24);
    *&v117 = *v60;
    *(&v117 + 1) = v63;
    *&v118 = v64;
    BYTE8(v118) = v65;
    sub_24E903680(v117, v63, v64);
    v66 = _s12GameStoreKit10PageFacetsV26deserializeSelectedOptions4from3for5usingSDyAC5FacetVShyAI6OptionVGG9JetEngine10JSONObjectVSg_ACSgAN11JSONContextVtFZ_0(v61, &v117, v115);
    sub_24E9036C4(v117);
    sub_24E601704(v61, &qword_27F212F48, &unk_24F93A2D0);
    *(v59 + OBJC_IVAR____TtC12GameStoreKit13SearchResults_selectedFacetOptions) = v66;
    sub_24F928398();
    sub_24F928368();
    v67 = v102;
    v102(v51, v62);
    v68 = (v59 + OBJC_IVAR____TtC12GameStoreKit13SearchResults_nextPage);
    v69 = v118;
    *v68 = v117;
    v68[1] = v69;
    v70 = v97;
    sub_24F928398();
    LOBYTE(v66) = sub_24F928278();
    v67(v70, v62);
    *(v59 + OBJC_IVAR____TtC12GameStoreKit13SearchResults_isAutoPlayEnabled) = v66 & 1;
    v71 = v98;
    sub_24F928398();
    LOBYTE(v66) = sub_24F928278();
    v67(v71, v62);
    *(v59 + OBJC_IVAR____TtC12GameStoreKit13SearchResults_isCondensedSearchLockupsEnabled) = v66 & 1;
    type metadata accessor for LinkableText();
    sub_24F928398();
    v72 = v119;
    v73 = v116;
    v74 = v96;
    (v96)(v112, v119, v116);
    sub_24F276E70(&qword_27F21C360, type metadata accessor for LinkableText, &protocol conformance descriptor for LinkableText);
    sub_24F929548();
    *(v59 + OBJC_IVAR____TtC12GameStoreKit13SearchResults_transparencyLink) = v117;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225120, &qword_24F974D58);
    sub_24F928398();
    v75 = v112;
    (v74)(v112, v72, v73);
    v76 = v74;
    sub_24ECDE448();
    sub_24F929548();
    v77 = v59;
    *(v59 + OBJC_IVAR____TtC12GameStoreKit13SearchResults_guidedSearchTokens) = v117;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D828, &qword_24F995620);
    v78 = v108;
    sub_24F928398();
    (v76)(v75, v119, v73);
    sub_24ECDE544();
    v79 = v75;
    sub_24F929548();
    *(v77 + OBJC_IVAR____TtC12GameStoreKit13SearchResults_guidedSearchQueries) = v117;
    sub_24F929608();
    v80 = v78;
    sub_24F928398();
    v81 = v79;
    v82 = v79;
    v83 = v115;
    v84 = v96;
    (v96)(v82, v115, v73);
    v85 = v105;
    sub_24F929548();
    v86 = v114;
    sub_24E65E0D4(v85, v114 + OBJC_IVAR____TtC12GameStoreKit13SearchResults_resultsParentImpressionMetrics);
    sub_24F928398();
    v87 = v116;
    (v84)(v81, v83, v116);
    v88 = v106;
    sub_24F929548();
    sub_24E65E0D4(v85, v86 + OBJC_IVAR____TtC12GameStoreKit13SearchResults_guidedSearchTokensParentImpressionMetrics);
    v89 = v101;
    (*(v110 + 16))(v101, v80, v88);
    v90 = v104;
    (v84)(v104, v83, v87);
    v91 = v107;
    v92 = BasePage.init(deserializing:using:)(v89, v90);
    if (v91)
    {
      v35 = *(v113 + 8);
      v35(v83, v87);
      v102(v80, v88);
      v35(v119, v87);
    }

    else
    {
      v35 = v92;
      v93 = *(v113 + 8);
      v93(v83, v87);
      v102(v80, v88);
      v93(v119, v87);
    }

    (*(v100 + 8))(v111, v95);
  }

  return v35;
}

uint64_t type metadata accessor for SearchResults(uint64_t a1)
{
  result = qword_27F23D480;
  if (!qword_27F23D480)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F276BB4()
{

  sub_24E9036C4(*(v0 + OBJC_IVAR____TtC12GameStoreKit13SearchResults_facets));

  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit13SearchResults_nextPage, &qword_27F2129B0, &unk_24F945320);

  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit13SearchResults_resultsParentImpressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  return sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit13SearchResults_guidedSearchTokensParentImpressionMetrics, &qword_27F213E68, &unk_24F93BC80);
}

uint64_t SearchResults.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit8BasePage_pageMetrics;
  v2 = sub_24F928818();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_24E9036C4(*(v0 + OBJC_IVAR____TtC12GameStoreKit13SearchResults_facets));

  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit13SearchResults_nextPage, &qword_27F2129B0, &unk_24F945320);

  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit13SearchResults_resultsParentImpressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit13SearchResults_guidedSearchTokensParentImpressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  return v0;
}

uint64_t SearchResults.__deallocating_deinit()
{
  SearchResults.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_24F276E70(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_24F276EC0(uint64_t a1)
{
  sub_24E61C938(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t ImpressionsFieldsProvider.addMetricsFields(into:using:)(uint64_t a1)
{
  v20 = a1;
  v2 = sub_24F91F648();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24F92A008();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F210660 != -1)
  {
    swift_once();
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225038, &unk_24F974C10);
  __swift_project_value_buffer(v10, qword_27F22E3D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225040, &qword_24F975FC0);
  sub_24F929AC8();
  if (v18)
  {
    v17 = v1;
    swift_getObjectType();
    v16 = v2;
    (*(v7 + 104))(v9, *MEMORY[0x277D22230], v6);
    sub_24F91F638();
    v11 = sub_24F9296A8();
    (*(v3 + 8))(v5, v16);
    (*(v7 + 8))(v9, v6);
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220AC8, &unk_24F9BC390);
    v18 = v11;
    v12 = v20;
    __swift_mutable_project_boxed_opaque_existential_1(v20, *(v20 + 24));
    v13 = v17;
    sub_24F929A28();
    if (!v13)
    {
      __swift_destroy_boxed_opaque_existential_1(&v18);
      v19 = MEMORY[0x277D83B88];
      v18 = 4;
      __swift_mutable_project_boxed_opaque_existential_1(v12, *(v12 + 24));
      sub_24F929A28();
    }

    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(&v18);
  }

  else
  {
    if (qword_27F210580 != -1)
    {
      swift_once();
    }

    v15 = sub_24F92AAE8();
    __swift_project_value_buffer(v15, qword_27F39C3E0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F9283A8();
    sub_24F92A5A8();
  }
}

uint64_t FastImpressionsFieldsProvider.addMetricsFields(into:using:)(void *a1)
{
  v2 = sub_24F91F648();
  v26 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23D490, &qword_24F9DB960);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v24 - v6;
  v8 = sub_24F92A008();
  v27 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F210660 != -1)
  {
    swift_once();
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225038, &unk_24F974C10);
  __swift_project_value_buffer(v11, qword_27F22E3D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225040, &qword_24F975FC0);
  sub_24F929AC8();
  if (v28 && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23D4A0, &unk_24F9DB970), (swift_dynamicCast() & 1) != 0))
  {
    if (*(&v30 + 1))
    {
      sub_24E612C80(&v29, v32);
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      v12 = sub_24F929A18();
      if (*(v12 + 16))
      {
        v13 = sub_24E76D644(0x726556746E657665, 0xEC0000006E6F6973);
        v14 = v27;
        if (v15)
        {
          sub_24E643A9C(*(v12 + 56) + 32 * v13, &v29);

          if (swift_dynamicCast())
          {
            v16 = v28;
LABEL_17:
            v25 = v16;
            sub_24F277AC4(v16, v7);
            v19 = *(v14 + 48);
            if (v19(v7, 1, v8) == 1)
            {
              (*(v14 + 104))(v10, *MEMORY[0x277D22230], v8);
              if (v19(v7, 1, v8) != 1)
              {
                sub_24E601704(v7, &qword_27F23D490, &qword_24F9DB960);
              }
            }

            else
            {
              (*(v14 + 32))(v10, v7, v8);
            }

            v20 = v33;
            v21 = v34;
            __swift_project_boxed_opaque_existential_1(v32, v33);
            sub_24F91F638();
            v22 = (*(v21 + 8))(v10, v4, v20, v21);
            (*(v26 + 8))(v4, v2);
            *(&v30 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220AC8, &unk_24F9BC390);
            *&v29 = v22;
            __swift_mutable_project_boxed_opaque_existential_1(a1, a1[3]);
            v23 = v35;
            sub_24F929A28();
            if (!v23)
            {
              __swift_destroy_boxed_opaque_existential_1(&v29);
              *(&v30 + 1) = MEMORY[0x277D83B88];
              *&v29 = v25;
              __swift_mutable_project_boxed_opaque_existential_1(a1, a1[3]);
              sub_24F929A28();
            }

            (*(v27 + 8))(v10, v8);
            __swift_destroy_boxed_opaque_existential_1(&v29);
            return __swift_destroy_boxed_opaque_existential_1(v32);
          }
        }

        else
        {
        }

        v16 = 4;
        goto LABEL_17;
      }

      v16 = 4;
      v14 = v27;
      goto LABEL_17;
    }
  }

  else
  {
    v31 = 0;
    v29 = 0u;
    v30 = 0u;
  }

  sub_24E601704(&v29, &qword_27F23D498, &qword_24F9DB968);
  if (qword_27F210580 != -1)
  {
    swift_once();
  }

  v17 = sub_24F92AAE8();
  __swift_project_value_buffer(v17, qword_27F39C3E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93DE60;
  sub_24F9283A8();
  sub_24F92A5A8();
}

uint64_t sub_24F277AC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_24F92A008();
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 - 3) >= 3)
  {
    v13 = *(v6 + 56);

    return v13(a2, 1, 1, v5, v7);
  }

  else
  {
    v10 = **(&unk_27968F390 + a1 - 3);
    v11 = *(v6 + 104);
    v15 = v6;
    v11(v9, v10, v5, v7);
    (*(v15 + 32))(a2, v9, v5);
    return (*(v15 + 56))(a2, 0, 1, v5);
  }
}

uint64_t SnapshotImpressionsFieldsProvider.addMetricsFields(into:using:)(uint64_t a1)
{
  v20 = a1;
  v2 = sub_24F91F648();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24F92A008();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F210660 != -1)
  {
    swift_once();
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225038, &unk_24F974C10);
  __swift_project_value_buffer(v10, qword_27F22E3D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225040, &qword_24F975FC0);
  sub_24F929AC8();
  if (v18)
  {
    v17 = v1;
    swift_getObjectType();
    v16 = v2;
    (*(v7 + 104))(v9, *MEMORY[0x277D22230], v6);
    sub_24F91F638();
    v11 = sub_24F929698();
    (*(v3 + 8))(v5, v16);
    (*(v7 + 8))(v9, v6);
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220AC8, &unk_24F9BC390);
    v18 = v11;
    v12 = v20;
    __swift_mutable_project_boxed_opaque_existential_1(v20, *(v20 + 24));
    v13 = v17;
    sub_24F929A28();
    if (!v13)
    {
      __swift_destroy_boxed_opaque_existential_1(&v18);
      v19 = MEMORY[0x277D83B88];
      v18 = 4;
      __swift_mutable_project_boxed_opaque_existential_1(v12, *(v12 + 24));
      sub_24F929A28();
    }

    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(&v18);
  }

  else
  {
    if (qword_27F210580 != -1)
    {
      swift_once();
    }

    v15 = sub_24F92AAE8();
    __swift_project_value_buffer(v15, qword_27F39C3E0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F9283A8();
    sub_24F92A5A8();
  }
}

uint64_t Lockup.numberOfPurchasedChildren(using:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 304);
  if (!v3)
  {
    return 0;
  }

  v26 = MEMORY[0x277D84F90];
  if (v3 >> 62)
  {
LABEL_27:
    v5 = sub_24F92C738();
    if (v5)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_4:
      v6 = 0;
      while (1)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x253052270](v6, v3);
          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_22;
          }
        }

        else
        {
          if (v6 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_27;
          }

          v7 = *(v3 + 8 * v6 + 32);

          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
LABEL_22:
            __break(1u);
LABEL_23:
            v17 = v26;
            if ((v26 & 0x8000000000000000) == 0)
            {
              goto LABEL_29;
            }

            goto LABEL_33;
          }
        }

        ObjectType = swift_getObjectType();
        v10 = *(v7 + 24);
        *&v20[0] = *(v7 + 16);
        *(&v20[0] + 1) = v10;
        v11 = *(a2 + 56);

        v11(v20, ObjectType, a2);
        v13 = v12;

        v14 = swift_getObjectType();
        (*(v13 + 16))(v20, v14, v13);
        swift_unknownObjectRelease();
        v22 = v20[0];
        v23 = v20[1];
        v24 = v20[2];
        v25 = v21;
        if (v21 >> 60)
        {
          if (v21 >> 60 != 8 || ((v15 = *(&v24 + 1) | *(&v25 + 1), v16 = *(&v23 + 1) | v23 | *(&v22 + 1), v21 != 0x8000000000000000) || v15 | *&v20[0] | v24 | v16) && (v21 != 0x8000000000000000 || *&v20[0] != 4 || v15 | v24 | v16))
          {
            sub_24E88D2AC(&v22);
LABEL_19:
            sub_24F92C948();
            sub_24F92C988();
            sub_24F92C998();
            sub_24F92C958();
            goto LABEL_6;
          }
        }

        else if (LOBYTE(v20[0]) != 1)
        {
          goto LABEL_19;
        }

LABEL_6:
        ++v6;
        if (v8 == v5)
        {
          goto LABEL_23;
        }
      }
    }
  }

  v17 = MEMORY[0x277D84F90];
  if ((MEMORY[0x277D84F90] & 0x8000000000000000) != 0)
  {
    goto LABEL_33;
  }

LABEL_29:
  if ((v17 & 0x4000000000000000) != 0)
  {
LABEL_33:
    v18 = sub_24F92C738();
  }

  else
  {
    v18 = *(v17 + 16);
  }

  return v18;
}

uint64_t PrivacyTypeLayout.Metrics.HorizontalAlignment.hashValue.getter()
{
  v1 = *v0;
  sub_24F92D068();
  MEMORY[0x253052A00](v1);
  return sub_24F92D0B8();
}

uint64_t PrivacyTypeLayout.Metrics.iconTopSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 8));

  return sub_24E612C80(a1, v1 + 8);
}

uint64_t PrivacyTypeLayout.Metrics.titleTopSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 72));

  return sub_24E612C80(a1, v1 + 72);
}

uint64_t PrivacyTypeLayout.Metrics.detailTopSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 112));

  return sub_24E612C80(a1, v1 + 112);
}

uint64_t PrivacyTypeLayout.Metrics.minimumCategoriesColumnWidth.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 192));

  return sub_24E612C80(a1, v1 + 192);
}

uint64_t PrivacyTypeLayout.Metrics.categoriesTopSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 232));

  return sub_24E612C80(a1, v1 + 232);
}

uint64_t PrivacyTypeLayout.Metrics.categoriesHorizontalPadding.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 272));

  return sub_24E612C80(a1, v1 + 272);
}

uint64_t PrivacyTypeLayout.Metrics.categoriesBottomSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 312));

  return sub_24E612C80(a1, v1 + 312);
}

uint64_t PrivacyTypeLayout.Metrics.horizontalMargin.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 352));

  return sub_24E612C80(a1, v1 + 352);
}

uint64_t PrivacyTypeLayout.Metrics.compactBottomMargin.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 392));

  return sub_24E612C80(a1, v1 + 392);
}

uint64_t PrivacyTypeLayout.Metrics.regularBottomMargin.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 432));

  return sub_24E612C80(a1, v1 + 432);
}

uint64_t PrivacyTypeLayout.Metrics.init(horizontalAlignment:iconTopSpace:iconSize:iconBaseline:titleTopSpace:detailTopSpace:maxTextWidth:minimumCategoriesColumnWidth:categoriesTopSpace:categoriesHorizontalPadding:categoriesBottomSpace:horizontalMargin:compactBottomMargin:regularBottomMargin:)@<X0>(char *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X4>, __int128 *a6@<X5>, __int128 *a7@<X6>, __int128 *a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, __int128 *a13, __int128 *a14, __int128 *a15, __int128 *a16)
{
  v26 = *a1;
  *(a9 + 168) = 0u;
  *(a9 + 184) = 0;
  *(a9 + 152) = 0u;
  *a9 = v26;
  sub_24E612C80(a2, a9 + 8);
  *(a9 + 48) = a10;
  *(a9 + 56) = a11;
  *(a9 + 64) = a12;
  sub_24E612C80(a3, a9 + 72);
  sub_24E612C80(a4, a9 + 112);
  sub_24EA63A70(a5, a9 + 152);
  sub_24E612C80(a6, a9 + 192);
  sub_24E612C80(a7, a9 + 232);
  sub_24E612C80(a8, a9 + 272);
  sub_24E612C80(a13, a9 + 312);
  sub_24E612C80(a14, a9 + 352);
  sub_24E612C80(a15, a9 + 392);

  return sub_24E612C80(a16, a9 + 432);
}

uint64_t PrivacyTypeLayout.init(metrics:shadowView:roundedCornerView:contentContainerView:separatorView:iconView:titleLabel:detailLabel:categoryViews:style:)@<X0>(void *__src@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, __int128 *a6@<X5>, __int128 *a7@<X6>, __int128 *a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char *a11)
{
  v19 = *a11;
  memcpy(a9, __src, 0x1D8uLL);
  v20 = *(a2 + 16);
  *(a9 + 472) = *a2;
  *(a9 + 488) = v20;
  *(a9 + 504) = *(a2 + 32);
  v21 = *(a3 + 16);
  *(a9 + 512) = *a3;
  *(a9 + 528) = v21;
  *(a9 + 544) = *(a3 + 32);
  *(a9 + 584) = *(a4 + 32);
  v22 = *(a4 + 16);
  *(a9 + 552) = *a4;
  *(a9 + 568) = v22;
  v23 = *(a5 + 16);
  *(a9 + 592) = *a5;
  *(a9 + 608) = v23;
  *(a9 + 624) = *(a5 + 32);
  sub_24E612C80(a6, a9 + 632);
  sub_24E612C80(a7, a9 + 672);
  result = sub_24E612C80(a8, a9 + 712);
  *(a9 + 752) = a10;
  *(a9 + 760) = v19;
  return result;
}

double static PrivacyTypeLayout.estimatedMeasurements(fitting:using:in:)(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v5 = sub_24F9225E8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v9 = sub_24F922618();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v21[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  (*(v6 + 104))(v8, *MEMORY[0x277D22788], v5, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B3F0, &unk_24F93B6B0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_24F942000;
  sub_24E615E00(a1 + 72, v21);
  v15 = sub_24F9229A8();
  v16 = MEMORY[0x277D228E0];
  *(v14 + 56) = v15;
  *(v14 + 64) = v16;
  __swift_allocate_boxed_opaque_existential_1((v14 + 32));
  sub_24F9229B8();
  sub_24E615E00(a1 + 112, v21);
  *(v14 + 96) = v15;
  *(v14 + 104) = v16;
  __swift_allocate_boxed_opaque_existential_1((v14 + 72));
  sub_24F9229B8();
  sub_24E615E00(a1 + 232, v21);
  *(v14 + 136) = v15;
  *(v14 + 144) = v16;
  __swift_allocate_boxed_opaque_existential_1((v14 + 112));
  sub_24F9229B8();
  sub_24E615E00(a1 + 312, v21);
  *(v14 + 176) = v15;
  *(v14 + 184) = v16;
  __swift_allocate_boxed_opaque_existential_1((v14 + 152));
  sub_24F9229B8();
  sub_24E615E00(a1 + 432, v21);
  *(v14 + 216) = v15;
  *(v14 + 224) = v16;
  __swift_allocate_boxed_opaque_existential_1((v14 + 192));
  sub_24F9229B8();
  sub_24F9225F8();
  sub_24F9225D8();
  v18 = v17;
  (*(v10 + 8))(v13, v9);
  return v18;
}

void PrivacyTypeLayout.measurements(fitting:in:)(void *a1, double a2, double a3)
{
  v4 = v3;
  v7 = sub_24F92CDB8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v3 + 760))
  {
    v11 = sub_24F92CE08();

    if ((v11 & 1) == 0)
    {
      v49 = 0;
      goto LABEL_6;
    }
  }

  else
  {
  }

  v12 = *(v3 + 376);
  __swift_project_boxed_opaque_existential_1(v4 + 44, v4[47]);
  sub_24E8ED7D8(v12);
  sub_24F9223A8();
  (*(v8 + 8))(v10, v7);
  v49 = 1;
LABEL_6:
  sub_24F92C228();
  sub_24E60169C((v4 + 19), &v58, &qword_27F22F780, &qword_24F968620);
  v13 = *(&v59 + 1);
  if (*(&v59 + 1))
  {
    __swift_project_boxed_opaque_existential_1(&v58, *(&v59 + 1));
    sub_24E8ED7D8(v13);
    sub_24F9223A8();
    v14 = v8;
    v15 = *(v8 + 8);
    v16 = v7;
    v15(v10, v7);
    __swift_destroy_boxed_opaque_existential_1(&v58);
  }

  else
  {
    v14 = v8;
    v16 = v7;
    sub_24E601704(&v58, &qword_27F22F780, &qword_24F968620);
  }

  sub_24E60169C((v4 + 74), &v58, &qword_27F229780, &unk_24F965BB0);
  v50 = a2;
  if (*(&v59 + 1))
  {
    __swift_project_boxed_opaque_existential_1(&v58, *(&v59 + 1));
    v17 = sub_24F922238();
    __swift_destroy_boxed_opaque_existential_1(&v58);
    if ((v17 & 1) == 0)
    {
      v18 = [a1 traitCollection];
      sub_24F922D08();
    }
  }

  else
  {
    sub_24E601704(&v58, &qword_27F229780, &unk_24F965BB0);
  }

  v19 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4 + 1, v19);
  sub_24E8ED7D8(v19);
  sub_24F9223A8();
  v20 = *(v14 + 8);
  v51 = v14 + 8;
  v20(v10, v16);
  v21 = v10;
  __swift_project_boxed_opaque_existential_1(v4 + 84, v4[87]);
  sub_24F922288();
  v23 = v22;
  __swift_project_boxed_opaque_existential_1(v4 + 9, v4[12]);
  sub_24F9223C8();
  *&v58 = v23;
  sub_24F922398();
  __swift_project_boxed_opaque_existential_1(v4 + 89, v4[92]);
  sub_24F922288();
  v25 = v24;
  __swift_project_boxed_opaque_existential_1(v4 + 14, v4[17]);
  sub_24F9223C8();
  *&v58 = v25;
  sub_24F922398();
  v53 = v4[94];
  if (!*(v53 + 16))
  {
    if (!v49)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  v26 = v4[32];
  __swift_project_boxed_opaque_existential_1(v4 + 29, v26);
  sub_24E8ED7D8(v26);
  sub_24F9223A8();
  v20(v10, v16);
  v27 = _s12GameStoreKit17PrivacyTypeLayoutV23numberOfCategoryColumns7fitting7metrics2inSiSo6CGSizeV_AC7MetricsVSo18UITraitEnvironment_ptFZ_0(v4, a1, v50);
  v28 = v4[37];
  __swift_project_boxed_opaque_existential_1(v4 + 34, v28);
  sub_24E8ED7D8(v28);
  sub_24F9223A8();
  v20(v10, v16);
  if (__OFSUB__(v27, 1))
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (v27 < 0)
  {
LABEL_42:
    __break(1u);
    return;
  }

  v48 = v16;
  v47 = v4;
  v46 = v10;
  v45 = v20;
  if (v27)
  {
    v29 = sub_24F92B618();
    *(v29 + 16) = v27;
    bzero((v29 + 32), 8 * v27);
  }

  else
  {
    v29 = MEMORY[0x277D84F90];
  }

  v30 = 0;
  v52 = v53 + 32;
  v31 = *(v53 + 16);
  while (1)
  {
    v32 = 0uLL;
    v33 = v31;
    v34 = 0uLL;
    v35 = 0uLL;
    if (v30 != v31)
    {
      if (v30 >= *(v53 + 16))
      {
        goto LABEL_40;
      }

      v33 = v30 + 1;
      *&v55 = v30;
      sub_24E615E00(v52 + 40 * v30, &v55 + 8);
      v32 = v55;
      v34 = v56;
      v35 = v57;
    }

    v58 = v32;
    v59 = v34;
    v60 = v35;
    if (!v35)
    {
      break;
    }

    v54 = v32;
    sub_24E612C80((&v58 + 8), &v55);
    if (!v27)
    {
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v36 = v54 % v27;
    __swift_project_boxed_opaque_existential_1(&v55, *(&v56 + 1));
    sub_24F922288();
    if ((v36 & 0x8000000000000000) != 0)
    {
      goto LABEL_38;
    }

    if (v36 >= *(v29 + 16))
    {
      goto LABEL_39;
    }

    *(v29 + 32 + 8 * v36) = v37 + *(v29 + 32 + 8 * v36);
    __swift_destroy_boxed_opaque_existential_1(&v55);
    v30 = v33;
  }

  sub_24ED6EC84(v29);

  v16 = v48;
  v4 = v47;
  v21 = v46;
  v20 = v45;
  if (!v49)
  {
    goto LABEL_32;
  }

LABEL_31:
  v38 = v4[42];
  __swift_project_boxed_opaque_existential_1(v4 + 39, v38);
  sub_24E8ED7D8(v38);
  sub_24F9223A8();
  v20(v21, v16);
LABEL_32:
  v39 = [a1 traitCollection];
  v40 = sub_24F92BF78();

  v41 = 49;
  if (v40)
  {
    v41 = 54;
  }

  v42 = 52;
  if (v40)
  {
    v42 = 57;
  }

  v43 = v4[v42];
  __swift_project_boxed_opaque_existential_1(&v4[v41], v43);
  sub_24E8ED7D8(v43);
  sub_24F9223A8();
  v20(v21, v16);
}

void PrivacyTypeLayout.placeChildren(relativeTo:in:)(void *a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v7 = v6;
  v133 = a6;
  v132 = a4;
  v131 = a3;
  v120[1] = a2;
  v125 = sub_24F922CE8();
  v124 = *(v125 - 8);
  MEMORY[0x28223BE20](v125);
  *&v126 = v120 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = COERCE_DOUBLE(sub_24F922D18());
  v130 = *(*&v134 - 8);
  MEMORY[0x28223BE20](*&v134);
  v12 = v120 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24F92CDB8();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v120 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(v15) = v6[760];
  v129 = a1;
  if (v15)
  {
    v17 = sub_24F92CE08();

    if ((v17 & 1) == 0)
    {
      v18 = 0;
      goto LABEL_6;
    }
  }

  else
  {
  }

  v19 = *(v7 + 47);
  __swift_project_boxed_opaque_existential_1(v7 + 44, v19);
  sub_24E8ED7D8(v19);
  sub_24F9223A8();
  (*(v14 + 8))(v16, v13);
  v18 = 1;
LABEL_6:
  sub_24F92C1C8();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  sub_24E60169C((v7 + 152), &v139, &qword_27F22F780, &qword_24F968620);
  v28 = *(&v140 + 1);
  v123 = v27;
  v128 = v21;
  v122 = v23;
  v127 = v25;
  if (*(&v140 + 1))
  {
    __swift_project_boxed_opaque_existential_1(&v139, *(&v140 + 1));
    sub_24E8ED7D8(v28);
    v29 = v129;
    v30 = sub_24F9223A8();
    (*(v14 + 8))(v16, v13);
    __swift_destroy_boxed_opaque_existential_1(&v139);
    v142.origin.x = v21;
    v142.origin.y = v23;
    v142.size.width = v25;
    v142.size.height = v27;
    Width = CGRectGetWidth(v142);
    if (v30 < Width)
    {
      Width = v30;
    }

    *&v135 = Width;
  }

  else
  {
    sub_24E601704(&v139, &qword_27F22F780, &qword_24F968620);
    *&v135 = v25;
    v29 = v129;
  }

  v32 = [v29 traitCollection];
  v33 = sub_24F92BF78();

  v34 = 392;
  if (v33)
  {
    v34 = 432;
  }

  v35 = 416;
  if (v33)
  {
    v35 = 456;
  }

  v36 = *&v7[v35];
  __swift_project_boxed_opaque_existential_1(&v7[v34], v36);
  sub_24E8ED7D8(v36);
  sub_24F9223A8();
  v37 = *(v14 + 8);
  v37(v16, v13);
  v38 = v131;
  v143.origin.x = v131;
  v39 = v132;
  v143.origin.y = v132;
  v143.size.width = a5;
  v40 = v133;
  v143.size.height = v133;
  CGRectGetMinX(v143);
  v144.origin.x = v38;
  v144.origin.y = v39;
  v144.size.width = a5;
  v144.size.height = v40;
  CGRectGetMinY(v144);
  v145.origin.x = v38;
  v145.origin.y = v39;
  v145.size.width = a5;
  v145.size.height = v40;
  CGRectGetWidth(v145);
  v146.origin.x = v38;
  v146.origin.y = v39;
  v146.size.width = a5;
  v146.size.height = v40;
  CGRectGetHeight(v146);
  sub_24E60169C((v7 + 472), &v139, &qword_27F229780, &unk_24F965BB0);
  if (*(&v140 + 1))
  {
    __swift_project_boxed_opaque_existential_1(&v139, *(&v140 + 1));
    sub_24F922228();
    __swift_destroy_boxed_opaque_existential_1(&v139);
  }

  else
  {
    sub_24E601704(&v139, &qword_27F229780, &unk_24F965BB0);
  }

  sub_24E60169C((v7 + 512), &v139, &qword_27F229780, &unk_24F965BB0);
  v41 = v127;
  if (*(&v140 + 1))
  {
    __swift_project_boxed_opaque_existential_1(&v139, *(&v140 + 1));
    sub_24F922228();
    __swift_destroy_boxed_opaque_existential_1(&v139);
  }

  else
  {
    sub_24E601704(&v139, &qword_27F229780, &unk_24F965BB0);
  }

  v42 = v128;
  sub_24E60169C((v7 + 552), &v139, &qword_27F229780, &unk_24F965BB0);
  if (*(&v140 + 1))
  {
    __swift_project_boxed_opaque_existential_1(&v139, *(&v140 + 1));
    sub_24F922228();
    __swift_destroy_boxed_opaque_existential_1(&v139);
    if (v18)
    {
      goto LABEL_28;
    }
  }

  else
  {
    sub_24E601704(&v139, &qword_27F229780, &unk_24F965BB0);
    if (v18)
    {
      goto LABEL_28;
    }
  }

  sub_24E60169C((v7 + 592), &v136, &qword_27F229780, &unk_24F965BB0);
  if (*(&v137 + 1))
  {
    sub_24E612C80(&v136, &v139);
    (*(*&v124 + 104))(COERCE_DOUBLE(*&v126), *MEMORY[0x277D22A08], v125);
    *(&v137 + 1) = sub_24F922418();
    *&v138 = MEMORY[0x277D226F0];
    __swift_allocate_boxed_opaque_existential_1(&v136);
    sub_24F922408();
    sub_24F922CF8();
    __swift_project_boxed_opaque_existential_1(&v139, *(&v140 + 1));
    sub_24F922CD8();
    sub_24F922228();
    (*(*&v130 + 8))(v12, COERCE_DOUBLE(*&v134));
    __swift_destroy_boxed_opaque_existential_1(&v139);
  }

  else
  {
    sub_24E601704(&v136, &qword_27F229780, &unk_24F965BB0);
  }

LABEL_28:
  v130 = a5;
  v147.origin.x = v42;
  v43 = v122;
  v147.origin.y = v122;
  v147.size.width = v41;
  v44 = v123;
  v147.size.height = v123;
  MinY = CGRectGetMinY(v147);
  v46 = *(v7 + 4);
  __swift_project_boxed_opaque_existential_1(v7 + 1, v46);
  sub_24E8ED7D8(v46);
  v47 = v129;
  v48 = sub_24F9223A8();
  v37(v16, v13);
  v49 = *(v7 + 6);
  v50 = *(v7 + 7);
  v134 = *(v7 + 8);
  v51 = MinY + v48 - v50 + v134;
  LODWORD(v46) = *v7;
  v148.origin.x = v42;
  v148.origin.y = v43;
  v148.size.width = v41;
  v148.size.height = v44;
  MinX = CGRectGetMinX(v148);
  if (v46 == 1)
  {
    v149.origin.x = v42;
    v149.origin.y = v43;
    v149.size.width = v41;
    v149.size.height = v123;
    MinX = MinX + (CGRectGetWidth(v149) - v49) * 0.5;
  }

  __swift_project_boxed_opaque_existential_1(v7 + 79, *(v7 + 82));
  v53 = v42;
  sub_24F92C1D8();
  sub_24F922228();
  v150.origin.x = MinX;
  v150.origin.y = v51;
  v150.size.width = v49;
  v150.size.height = v50;
  v126 = CGRectGetMaxY(v150) - v134;
  v54 = *(v7 + 87);
  v134 = *&v7;
  __swift_project_boxed_opaque_existential_1(v7 + 84, v54);
  v55 = *&v135;
  v56 = v123;
  sub_24F922288();
  v58 = v57;
  v60 = v59;
  __swift_project_boxed_opaque_existential_1((*&v134 + 72), *(*&v134 + 96));
  sub_24F9223C8();
  v62 = v61;
  v63 = v53;
  v151.origin.x = v53;
  v64 = v43;
  v151.origin.y = v43;
  v151.size.width = v55;
  v151.size.height = v56;
  v65 = CGRectGetMinX(v151);
  v66 = v126 + v62;
  v152.origin.x = v63;
  v152.origin.y = v64;
  v152.size.width = v55;
  v152.size.height = v56;
  v67 = CGRectGetWidth(v152);
  __swift_project_boxed_opaque_existential_1((*&v134 + 672), *(*&v134 + 696));
  v68 = v130;
  sub_24F92C1D8();
  sub_24F922228();
  v153.origin.x = v65;
  v153.origin.y = v66;
  v153.size.width = v67;
  v153.size.height = v58;
  v126 = CGRectGetMaxY(v153) - v60;
  __swift_project_boxed_opaque_existential_1((*&v134 + 712), *(*&v134 + 736));
  sub_24F922288();
  v70 = v69;
  v72 = v71;
  __swift_project_boxed_opaque_existential_1((*&v134 + 112), *(*&v134 + 136));
  v125 = v72;
  v73 = v68;
  sub_24F9223C8();
  v75 = v74;
  v76 = v128;
  v154.origin.x = v128;
  v77 = v122;
  v154.origin.y = v122;
  v154.size.width = v55;
  v154.size.height = v56;
  v78 = CGRectGetMinX(v154);
  v79 = v126 + v75;
  v155.origin.x = v76;
  v155.origin.y = v77;
  v155.size.width = v55;
  v155.size.height = v56;
  v80 = CGRectGetWidth(v155);
  __swift_project_boxed_opaque_existential_1((*&v134 + 712), *(*&v134 + 736));
  sub_24F92C1D8();
  v81 = v134;
  sub_24F922228();
  v156.origin.x = v78;
  v156.origin.y = v79;
  v156.size.width = v80;
  v156.size.height = v70;
  MaxY = CGRectGetMaxY(v156);
  if (!*(*(*&v81 + 752) + 16))
  {
LABEL_65:
    sub_24F922128();
    return;
  }

  v83 = MaxY;
  v126 = *(*&v81 + 752);
  v84 = *(*&v81 + 256);
  __swift_project_boxed_opaque_existential_1((*&v81 + 232), v84);
  sub_24E8ED7D8(v84);
  v85 = sub_24F9223A8();
  v37(v16, v13);
  v86 = _s12GameStoreKit17PrivacyTypeLayoutV23numberOfCategoryColumns7fitting7metrics2inSiSo6CGSizeV_AC7MetricsVSo18UITraitEnvironment_ptFZ_0(*&v81, v47, v73);
  v87 = *(*&v81 + 296);
  __swift_project_boxed_opaque_existential_1((*&v81 + 272), v87);
  sub_24E8ED7D8(v87);
  v88 = sub_24F9223A8();
  v37(v16, v13);
  if (!__OFSUB__(v86, 1))
  {
    v124 = v85;
    *&v135 = v83;
    v121 = v88;
    v89 = floor((v127 - v88 * (v86 - 1)) / v86);
    v90 = v126;
    v91 = *(*&v126 + 16);
    if (v91)
    {
      v92 = *&v126 + 32;
      v93 = MEMORY[0x277D84F90];
      v94 = 0.0;
      v95 = v122;
      do
      {
        sub_24E615E00(v92, &v139);
        __swift_project_boxed_opaque_existential_1(&v139, *(&v140 + 1));
        sub_24F922288();
        v97 = v96;
        v99 = v98;
        v101 = v100;
        v103 = v102;
        __swift_destroy_boxed_opaque_existential_1(&v139);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v93 = sub_24E617C90(0, *(v93 + 2) + 1, 1, v93);
        }

        v105 = *(v93 + 2);
        v104 = *(v93 + 3);
        if (v105 >= v104 >> 1)
        {
          v93 = sub_24E617C90((v104 > 1), v105 + 1, 1, v93);
        }

        *(v93 + 2) = v105 + 1;
        v106 = &v93[32 * v105];
        *(v106 + 4) = v97;
        *(v106 + 5) = v99;
        *(v106 + 6) = v101;
        *(v106 + 7) = v103;
        if (v94 <= v97)
        {
          v94 = v97;
        }

        v92 += 40;
        --v91;
      }

      while (v91);
    }

    else
    {
      v93 = MEMORY[0x277D84F90];
      v95 = v122;
    }

    if (v86 < 0)
    {
      goto LABEL_74;
    }

    if (v86)
    {
      v107 = sub_24F92B618();
      *(v107 + 16) = v86;
      bzero((v107 + 32), 8 * v86);
    }

    else
    {
      v107 = MEMORY[0x277D84F90];
    }

    v108 = v123;
    v109 = v121;
    v110 = 0;
    v111 = *(*&v90 + 16);
    *&v121 = *&v90 + 32;
    v125 = (v93 + 32);
    v124 = v109 + v89;
    while (1)
    {
      v112 = 0uLL;
      v113 = v111;
      v114 = 0uLL;
      v115 = 0uLL;
      if (v110 != v111)
      {
        if (v110 >= *(*&v90 + 16))
        {
          goto LABEL_72;
        }

        v113 = v110 + 1;
        *&v136 = v110;
        sub_24E615E00(*&v121 + 40 * v110, &v136 + 8);
        v112 = v136;
        v114 = v137;
        v115 = v138;
      }

      v139 = v112;
      v140 = v114;
      v141 = v115;
      if (!v115)
      {

        goto LABEL_65;
      }

      v135 = v112;
      sub_24E612C80((&v139 + 8), &v136);
      if (!v86)
      {
        break;
      }

      v116 = v135 % v86;
      if (v135 % v86 < 0)
      {
        goto LABEL_67;
      }

      if (v116 >= *(v107 + 16))
      {
        goto LABEL_68;
      }

      if ((v135 & 0x8000000000000000) != 0)
      {
        goto LABEL_69;
      }

      if (v135 >= *(v93 + 2))
      {
        goto LABEL_70;
      }

      v117 = *(v125 + 32 * v135 + 8);
      if ((*(*&v90 + 16) == 1 || v86 == 1) && **&v134 == 1)
      {
        v118 = v128;
        v157.origin.x = v128;
        v157.origin.y = v122;
        v119 = v127;
        v157.size.width = v127;
        v157.size.height = v123;
        CGRectGetMinX(v157);
        v158.origin.x = v118;
        v95 = v122;
        v158.origin.y = v122;
        v158.size.width = v119;
        v108 = v123;
        v158.size.height = v123;
        CGRectGetWidth(v158);
      }

      else
      {
        v159.origin.x = v128;
        v159.origin.y = v95;
        v159.size.width = v127;
        v159.size.height = v108;
        CGRectGetMinX(v159);
      }

      __swift_project_boxed_opaque_existential_1(&v136, *(&v137 + 1));
      sub_24F92C1D8();
      sub_24F922228();
      if (v116 >= *(v107 + 16))
      {
        goto LABEL_71;
      }

      *(v107 + 32 + 8 * v116) = v117 + *(v107 + 32 + 8 * v116);
      __swift_destroy_boxed_opaque_existential_1(&v136);
      v110 = v113;
      v90 = v126;
    }

    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
  }

  __break(1u);
LABEL_74:
  __break(1u);
}

uint64_t _s12GameStoreKit17PrivacyTypeLayoutV23numberOfCategoryColumns7fitting7metrics2inSiSo6CGSizeV_AC7MetricsVSo18UITraitEnvironment_ptFZ_0(uint64_t a1, uint64_t a2, double a3)
{
  v5 = sub_24F92CDB8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 != 1)
  {
    return 1;
  }

  v9 = *(a1 + 216);
  __swift_project_boxed_opaque_existential_1((a1 + 192), v9);
  sub_24E8ED7D8(v9);
  v10 = sub_24F9223A8();
  v11 = *(v6 + 8);
  v11(v8, v5);
  v12 = *(a1 + 296);
  __swift_project_boxed_opaque_existential_1((a1 + 272), v12);
  sub_24E8ED7D8(v12);
  v13 = sub_24F9223A8();
  v11(v8, v5);
  v14 = *(a1 + 376);
  __swift_project_boxed_opaque_existential_1((a1 + 352), v14);
  sub_24E8ED7D8(v14);
  v15 = sub_24F9223A8();
  result = (v11)(v8, v5);
  v17 = floor((v13 + a3 - (v15 + v15)) / (v10 + v13));
  v18 = fmax(v17, 1.0);
  if (v17 >= 3.0)
  {
    v19 = 3.0;
  }

  else
  {
    v19 = v18;
  }

  if (v19 == INFINITY)
  {
    __break(1u);
  }

  else if (v19 > -9.22337204e18)
  {
    if (v19 < 9.22337204e18)
    {
      return v19;
    }

    goto LABEL_12;
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

unint64_t sub_24F27AF88()
{
  result = qword_27F23D4D8;
  if (!qword_27F23D4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23D4D8);
  }

  return result;
}

uint64_t sub_24F27AFE4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 761))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24F27B02C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
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
    *(result + 760) = 0;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 761) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 761) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24F27B14C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 472))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24F27B194(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
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
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 472) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 472) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24F27B290@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x44496D616461 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24F92CE08();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24F27B314(uint64_t a1)
{
  v2 = sub_24F27B528();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F27B350(uint64_t a1)
{
  v2 = sub_24F27B528();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F27B3AC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23D4E0, &qword_24F9DBF10);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F27B528();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = sub_24F92CC28();
  v11 = v10;
  (*(v6 + 8))(v8, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v9;
  a2[1] = v11;
  return result;
}

unint64_t sub_24F27B528()
{
  result = qword_27F23D4E8;
  if (!qword_27F23D4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23D4E8);
  }

  return result;
}

unint64_t sub_24F27B590()
{
  result = qword_27F23D4F0;
  if (!qword_27F23D4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23D4F0);
  }

  return result;
}

unint64_t sub_24F27B5E8()
{
  result = qword_27F23D4F8;
  if (!qword_27F23D4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23D4F8);
  }

  return result;
}

unint64_t sub_24F27B640()
{
  result = qword_27F23D500;
  if (!qword_27F23D500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23D500);
  }

  return result;
}

id URLProtocolDelegate.__allocating_init(dialogStyle:)(uint64_t *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = *a1;
  v5 = OBJC_IVAR____TtC12GameStoreKit19URLProtocolDelegate_dialogStyle;
  *&v3[OBJC_IVAR____TtC12GameStoreKit19URLProtocolDelegate_dialogStyle] = 1;
  swift_beginAccess();
  v6 = *&v3[v5];
  *&v3[v5] = v4;
  sub_24ED8F464(v6);
  v8.receiver = v3;
  v8.super_class = v1;
  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t sub_24F27B71C()
{
  v0 = sub_24F92AAB8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24F92AAE8();
  __swift_allocate_value_buffer(v4, qword_27F23D510);
  __swift_project_value_buffer(v4, qword_27F23D510);
  if (qword_27F210560 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_27F39C380);
  (*(v1 + 16))(v3, v5, v0);
  return sub_24F92AAD8();
}

id URLProtocolDelegate.init(dialogStyle:)(uint64_t *a1)
{
  ObjectType = swift_getObjectType();
  v4 = *a1;
  v5 = OBJC_IVAR____TtC12GameStoreKit19URLProtocolDelegate_dialogStyle;
  *&v1[OBJC_IVAR____TtC12GameStoreKit19URLProtocolDelegate_dialogStyle] = 1;
  swift_beginAccess();
  v6 = *&v1[v5];
  *&v1[v5] = v4;
  sub_24ED8F464(v6);
  v8.receiver = v1;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_init);
}

id URLProtocolDelegate.dialogStyle.getter@<X0>(void *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit19URLProtocolDelegate_dialogStyle;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *a1 = v4;
  return sub_24ED8F454(v4);
}

void URLProtocolDelegate.dialogStyle.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC12GameStoreKit19URLProtocolDelegate_dialogStyle;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = v2;
  sub_24ED8F464(v4);
}

id URLProtocolDelegate.presentDialog(for:)(void *a1)
{
  v38 = a1;
  v2 = sub_24F92AAE8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24F927D88();
  v37 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F927DC8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC12GameStoreKit19URLProtocolDelegate_dialogStyle;
  swift_beginAccess();
  v14 = *(v1 + v13);
  if (v14)
  {
    if (v14 == 1)
    {
      if (qword_27F211038 != -1)
      {
        swift_once();
      }

      v15 = __swift_project_value_buffer(v2, qword_27F23D510);
      (*(v3 + 16))(v5, v15, v2);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
      sub_24F928468();
      *(swift_allocObject() + 16) = xmmword_24F93A400;
      sub_24F9283A8();
      v16 = [v38 logKey];
      if (v16)
      {
        v17 = v16;
        v18 = sub_24F92B0D8();
        v20 = v19;

        v21 = MEMORY[0x277D837D0];
      }

      else
      {
        v18 = 0;
        v20 = 0;
        v21 = 0;
        v41 = 0;
      }

      aBlock = v18;
      v40 = v20;
      v42 = v21;
      sub_24F928438();
      sub_24E857CC8(&aBlock);
      sub_24F92A5A8();

      (*(v3 + 8))(v5, v2);
      sub_24F27BFF8();
      v33 = swift_allocError();
      v34 = sub_24F91F268();
      v24 = [objc_opt_self() promiseWithError_];
    }

    else
    {
      v25 = objc_allocWithZone(MEMORY[0x277CEE600]);
      v26 = v14;
      v27 = [v25 init];
      sub_24E74EC40();
      v36 = sub_24F92BEF8();
      v28 = swift_allocObject();
      v29 = v38;
      v28[2] = v26;
      v28[3] = v29;
      v28[4] = v27;
      v43 = sub_24F27C050;
      v44 = v28;
      aBlock = MEMORY[0x277D85DD0];
      v40 = 1107296256;
      v41 = sub_24EAF8248;
      v42 = &block_descriptor_133;
      v30 = _Block_copy(&aBlock);
      sub_24ED8F454(v14);
      v31 = v29;
      v24 = v27;

      sub_24F927DA8();
      aBlock = MEMORY[0x277D84F90];
      sub_24E858250();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310, &unk_24F951080);
      sub_24E8582A8();
      sub_24F92C6A8();
      v32 = v36;
      MEMORY[0x2530518B0](0, v12, v8, v30);
      _Block_release(v30);

      sub_24ED8F464(v14);
      (*(v37 + 8))(v8, v6);
      (*(v10 + 8))(v12, v9);
    }
  }

  else
  {
    sub_24F27BFF8();
    v22 = swift_allocError();
    v23 = sub_24F91F268();
    v24 = [objc_opt_self() promiseWithError_];

    sub_24ED8F464(0);
  }

  return v24;
}

unint64_t sub_24F27BFF8()
{
  result = qword_27F23D530;
  if (!qword_27F23D530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23D530);
  }

  return result;
}

uint64_t block_copy_helper_133(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id URLProtocolDelegate.performAuthentication(for:)(void *a1)
{
  v39 = a1;
  v2 = sub_24F92AAE8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24F927D88();
  v38 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F927DC8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC12GameStoreKit19URLProtocolDelegate_dialogStyle;
  swift_beginAccess();
  v14 = *(v1 + v13);
  if (v14)
  {
    if (v14 != 1)
    {
      v26 = objc_allocWithZone(MEMORY[0x277CEE600]);
      v27 = v14;
      v28 = [v26 init];
      sub_24E74EC40();
      v37 = sub_24F92BEF8();
      v29 = swift_allocObject();
      v30 = v39;
      v29[2] = v27;
      v29[3] = v30;
      v29[4] = v28;
      v44 = sub_24F27C714;
      v45 = v29;
      aBlock = MEMORY[0x277D85DD0];
      v41 = 1107296256;
      v42 = sub_24EAF8248;
      v43 = &block_descriptor_6_6;
      v31 = _Block_copy(&aBlock);
      sub_24ED8F454(v14);
      v32 = v30;
      v33 = v28;

      sub_24F927DA8();
      aBlock = MEMORY[0x277D84F90];
      sub_24E858250();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310, &unk_24F951080);
      sub_24E8582A8();
      sub_24F92C6A8();
      v34 = v37;
      MEMORY[0x2530518B0](0, v12, v8, v31);
      _Block_release(v31);

      sub_24ED8F464(v14);
      (*(v38 + 8))(v8, v6);
      (*(v10 + 8))(v12, v9);
      return v33;
    }

    if (qword_27F211038 != -1)
    {
      swift_once();
    }

    v15 = __swift_project_value_buffer(v2, qword_27F23D510);
    (*(v3 + 16))(v5, v15, v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93A400;
    sub_24F9283A8();
    v16 = v39;
    v17 = [v39 logKey];
    if (v17)
    {
      v18 = v17;
      v19 = sub_24F92B0D8();
      v21 = v20;

      v22 = MEMORY[0x277D837D0];
    }

    else
    {
      v19 = 0;
      v21 = 0;
      v22 = 0;
      v42 = 0;
    }

    aBlock = v19;
    v41 = v21;
    v43 = v22;
    sub_24F928438();
    sub_24E857CC8(&aBlock);
    sub_24F92A5A8();

    (*(v3 + 8))(v5, v2);
    v36 = [objc_allocWithZone(MEMORY[0x277CEE3E8]) initWithRequest_];
    v25 = [v36 performAuthentication];
  }

  else
  {
    v23 = objc_allocWithZone(MEMORY[0x277CEE3E8]);
    v24 = [v23 initWithRequest_];
    v25 = [v24 performAuthentication];

    sub_24ED8F464(0);
  }

  return v25;
}

void sub_24F27C654(void *a1, uint64_t a2, void *a3, Class *a4, SEL *a5)
{
  v9 = [a1 frontmostViewController];
  v10 = [objc_allocWithZone(*a4) initWithRequest:a2 presentingViewController:v9];
  v11 = [v10 *a5];

  [a3 finishWithPromise_];
}

void URLProtocolDelegate.amsurlSession(_:task:handle:completion:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  v9 = URLProtocolDelegate.presentDialog(for:)(a3);
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = a5;
  v10[5] = ObjectType;
  v13[4] = sub_24F27CD40;
  v13[5] = v10;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_24F13C6AC;
  v13[3] = &block_descriptor_12_6;
  v11 = _Block_copy(v13);
  v12 = a3;

  [v9 addFinishBlock_];
  _Block_release(v11);
}

{
  ObjectType = swift_getObjectType();
  v9 = URLProtocolDelegate.performAuthentication(for:)(a3);
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = a5;
  v10[5] = ObjectType;
  v13[4] = sub_24F27D4B8;
  v13[5] = v10;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_24F13C6AC;
  v13[3] = &block_descriptor_18_0;
  v11 = _Block_copy(v13);
  v12 = a3;

  [v9 addFinishBlock_];
  _Block_release(v11);
}

uint64_t sub_24F27C854(uint64_t a1, void *a2, void *a3, uint64_t (*a4)(uint64_t, void *), uint64_t a5)
{
  v35 = a5;
  v36 = a4;
  v34 = a1;
  v7 = sub_24F92AAE8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v33 - v12;
  if (a2)
  {
    v14 = a2;
    if (qword_27F211038 != -1)
    {
      swift_once();
    }

    v15 = __swift_project_value_buffer(v7, qword_27F23D510);
    (*(v8 + 16))(v10, v15, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93FC20;
    sub_24F9283A8();
    swift_getErrorValue();
    v16 = v37;
    v17 = v38;
    v42 = v38;
    v18 = __swift_allocate_boxed_opaque_existential_1(&v39);
    (*(*(v17 - 8) + 16))(v18, v16, v17);
    sub_24F928438();
    sub_24E857CC8(&v39);
    sub_24F9283A8();
    v19 = [a3 logKey];
    if (v19)
    {
      v20 = v19;
      v21 = sub_24F92B0D8();
      v23 = v22;

      v24 = MEMORY[0x277D837D0];
    }

    else
    {
      v21 = 0;
      v23 = 0;
      v24 = 0;
      v41 = 0;
    }

    v39 = v21;
    v40 = v23;
    v42 = v24;
    sub_24F928438();
    sub_24E857CC8(&v39);
    sub_24F92A5A8();
  }

  else
  {
    if (qword_27F211038 != -1)
    {
      swift_once();
    }

    v25 = __swift_project_value_buffer(v7, qword_27F23D510);
    (*(v8 + 16))(v13, v25, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93A400;
    sub_24F9283A8();
    v26 = [a3 logKey];
    if (v26)
    {
      v27 = v26;
      v28 = sub_24F92B0D8();
      v30 = v29;

      v31 = MEMORY[0x277D837D0];
    }

    else
    {
      v28 = 0;
      v30 = 0;
      v31 = 0;
      v41 = 0;
    }

    v39 = v28;
    v40 = v30;
    v42 = v31;
    sub_24F928438();
    sub_24E857CC8(&v39);
    sub_24F92A598();

    v10 = v13;
  }

  (*(v8 + 8))(v10, v7);
  return v36(v34, a2);
}

uint64_t sub_24F27CFC8(uint64_t a1, void *a2, void *a3, uint64_t (*a4)(uint64_t, void *), uint64_t a5)
{
  v35 = a5;
  v36 = a4;
  v34 = a1;
  v7 = sub_24F92AAE8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v33 - v12;
  if (a2)
  {
    v14 = a2;
    if (qword_27F211038 != -1)
    {
      swift_once();
    }

    v15 = __swift_project_value_buffer(v7, qword_27F23D510);
    (*(v8 + 16))(v10, v15, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93FC20;
    sub_24F9283A8();
    swift_getErrorValue();
    v16 = v37;
    v17 = v38;
    v42 = v38;
    v18 = __swift_allocate_boxed_opaque_existential_1(&v39);
    (*(*(v17 - 8) + 16))(v18, v16, v17);
    sub_24F928438();
    sub_24E857CC8(&v39);
    sub_24F9283A8();
    v19 = [a3 logKey];
    if (v19)
    {
      v20 = v19;
      v21 = sub_24F92B0D8();
      v23 = v22;

      v24 = MEMORY[0x277D837D0];
    }

    else
    {
      v21 = 0;
      v23 = 0;
      v24 = 0;
      v41 = 0;
    }

    v39 = v21;
    v40 = v23;
    v42 = v24;
    sub_24F928438();
    sub_24E857CC8(&v39);
    sub_24F92A5A8();
  }

  else
  {
    if (qword_27F211038 != -1)
    {
      swift_once();
    }

    v25 = __swift_project_value_buffer(v7, qword_27F23D510);
    (*(v8 + 16))(v13, v25, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93A400;
    sub_24F9283A8();
    v26 = [a3 logKey];
    if (v26)
    {
      v27 = v26;
      v28 = sub_24F92B0D8();
      v30 = v29;

      v31 = MEMORY[0x277D837D0];
    }

    else
    {
      v28 = 0;
      v30 = 0;
      v31 = 0;
      v41 = 0;
    }

    v39 = v28;
    v40 = v30;
    v42 = v31;
    sub_24F928438();
    sub_24E857CC8(&v39);
    sub_24F92A598();

    v10 = v13;
  }

  (*(v8 + 8))(v10, v7);
  return v36(v34, a2);
}

id URLProtocolDelegate.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id URLProtocolDelegate.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_24F27D780()
{
  result = qword_27F23D600;
  if (!qword_27F23D600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23D600);
  }

  return result;
}

uint64_t sub_24F27D7D4()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t objectdestroy_8Tm_0()
{

  return swift_deallocObject();
}

void __swiftcall ChallengeDefinitionDataIntent.init(bundleID:definitionID:playerID:requireRefresh:)(GameStoreKit::ChallengeDefinitionDataIntent *__return_ptr retstr, Swift::String bundleID, Swift::String definitionID, Swift::String playerID, Swift::Bool requireRefresh)
{
  retstr->bundleID = bundleID;
  retstr->definitionID = definitionID;
  retstr->playerID = playerID;
  retstr->requireRefresh = requireRefresh;
}

uint64_t sub_24F27D8E4()
{
  v1 = 0x4449656C646E7562;
  v2 = 0x4449726579616C70;
  if (*v0 != 2)
  {
    v2 = 0x5265726975716572;
  }

  if (*v0)
  {
    v1 = 0x6974696E69666564;
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

uint64_t sub_24F27D974@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24F27DEA4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24F27D99C(uint64_t a1)
{
  v2 = sub_24F27DCF0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F27D9D8(uint64_t a1)
{
  v2 = sub_24F27DCF0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ChallengeDefinitionDataIntent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23D610, &qword_24F9DC160);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F27DCF0();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v30 = 0;
  v9 = sub_24F92CC28();
  v26 = v10;
  v29 = 1;
  v11 = sub_24F92CC28();
  v25 = v12;
  v23 = v11;
  v28 = 2;
  v22 = sub_24F92CC28();
  v24 = v13;
  v27 = 3;
  v15 = sub_24F92CC38();
  (*(v6 + 8))(v8, v5);
  v16 = v15 & 1;
  v18 = v25;
  v17 = v26;
  *a2 = v9;
  *(a2 + 8) = v17;
  v19 = v22;
  *(a2 + 16) = v23;
  *(a2 + 24) = v18;
  v20 = v24;
  *(a2 + 32) = v19;
  *(a2 + 40) = v20;
  *(a2 + 48) = v16;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_24F27DCF0()
{
  result = qword_27F23D618;
  if (!qword_27F23D618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23D618);
  }

  return result;
}

unint64_t sub_24F27DDA0()
{
  result = qword_27F23D620;
  if (!qword_27F23D620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23D620);
  }

  return result;
}

unint64_t sub_24F27DDF8()
{
  result = qword_27F23D628;
  if (!qword_27F23D628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23D628);
  }

  return result;
}

unint64_t sub_24F27DE50()
{
  result = qword_27F23D630;
  if (!qword_27F23D630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23D630);
  }

  return result;
}

uint64_t sub_24F27DEA4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6974696E69666564 && a2 == 0xEC00000044496E6FLL || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4449726579616C70 && a2 == 0xE800000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x5265726975716572 && a2 == 0xEE00687365726665)
  {

    return 3;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_24F27E088()
{
  result = sub_24F92CD88();
  qword_27F23D638 = result;
  unk_27F23D640 = v1;
  return result;
}

uint64_t sub_24F27E0D8()
{
  result = sub_24F92CD88();
  qword_27F23D648 = result;
  unk_27F23D650 = v1;
  return result;
}

char *WritingDirectionsCounts.init(natural:leftToRight:rightToLeft:)(char *result, uint64_t a2, unint64_t a3)
{
  *&v3[OBJC_IVAR___AMPWritingDirectionsCounts_natural] = result;
  *&v3[OBJC_IVAR___AMPWritingDirectionsCounts_leftToRight] = a2;
  *&v3[OBJC_IVAR___AMPWritingDirectionsCounts_rightToLeft] = a3;
  v4 = &result[a2];
  if (__CFADD__(result, a2))
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = __CFADD__(v4, a3);
  v6 = &v4[a3];
  if (v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  *&v3[OBJC_IVAR___AMPWritingDirectionsCounts_total] = v6;
  v7 = result != 0;
  if (!a3)
  {
    if (a2)
    {
      ++v7;
    }

    *&v3[OBJC_IVAR___AMPWritingDirectionsCounts_significantValues] = v7;
    v3[OBJC_IVAR___AMPWritingDirectionsCounts_hasStronglyTypedCounts] = a2 != 0;
    v3[OBJC_IVAR___AMPWritingDirectionsCounts_isRTLEnough] = 0;
    v3[OBJC_IVAR___AMPWritingDirectionsCounts_isRTLMinimal] = 0;
    goto LABEL_12;
  }

  if (a2)
  {
    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

  *&v3[OBJC_IVAR___AMPWritingDirectionsCounts_significantValues] = v8 + v7;
  v3[OBJC_IVAR___AMPWritingDirectionsCounts_hasStronglyTypedCounts] = 1;
  if (!__CFADD__(a3, a2))
  {
    v9 = a3 / (a3 + a2);
    v3[OBJC_IVAR___AMPWritingDirectionsCounts_isRTLEnough] = v9 >= 0.4;
    v3[OBJC_IVAR___AMPWritingDirectionsCounts_isRTLMinimal] = v9 >= 0.15;
LABEL_12:
    v10.receiver = v3;
    v10.super_class = type metadata accessor for WritingDirectionsCounts();
    return objc_msgSendSuper2(&v10, sel_init);
  }

LABEL_15:
  __break(1u);
  return result;
}

char *WritingDirectionsCounts.__allocating_init(summing:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = 0;
  v3 = 0;
  v4 = 0;
  if (!v1)
  {
LABEL_10:

    v13 = objc_allocWithZone(type metadata accessor for WritingDirectionsCounts());
    return WritingDirectionsCounts.init(natural:leftToRight:rightToLeft:)(v4, v3, v2);
  }

  v5 = (a1 + 32);
  while (1)
  {
    v7 = *v5++;
    v6 = v7;
    if (!v7)
    {
      goto LABEL_3;
    }

    result = [v6 writingDirectionsQuantities];
    v9 = *&result[OBJC_IVAR___AMPWritingDirectionsCounts_natural];
    v10 = __CFADD__(v4, v9);
    v4 += v9;
    if (v10)
    {
      break;
    }

    v11 = *&result[OBJC_IVAR___AMPWritingDirectionsCounts_leftToRight];
    v10 = __CFADD__(v3, v11);
    v3 += v11;
    if (v10)
    {
      goto LABEL_12;
    }

    v12 = *&result[OBJC_IVAR___AMPWritingDirectionsCounts_rightToLeft];

    v10 = __CFADD__(v2, v12);
    v2 += v12;
    if (v10)
    {
      __break(1u);
      goto LABEL_10;
    }

LABEL_3:
    if (!--v1)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

void WritingDirectionsCounts.__allocating_init(counting:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
LABEL_14:
    v4 = 0;
    v3 = 0;
    v2 = 0;
LABEL_15:

    v11 = objc_allocWithZone(type metadata accessor for WritingDirectionsCounts());
    WritingDirectionsCounts.init(natural:leftToRight:rightToLeft:)(v2, v3, v4);
    return;
  }

  v2 = 0;
  v3 = 0;
  v4 = 0;
  v5 = (a1 + 32);
  while (1)
  {
    v8 = *v5++;
    v7 = v8;
    if (!v8)
    {
      goto LABEL_4;
    }

    v9 = [v7 writingDirectionsQuantities];
    if (v9[OBJC_IVAR___AMPWritingDirectionsCounts_isRTLEnough])
    {
      break;
    }

    v10 = v9[OBJC_IVAR___AMPWritingDirectionsCounts_hasStronglyTypedCounts];

    if (v10 == 1)
    {
      v6 = __CFADD__(v3++, 1);
      if (v6)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v6 = __CFADD__(v2++, 1);
      if (v6)
      {
        __break(1u);
        goto LABEL_14;
      }
    }

LABEL_4:
    if (!--v1)
    {
      goto LABEL_15;
    }
  }

  v6 = __CFADD__(v4++, 1);
  if (!v6)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_17:
  __break(1u);
}

BOOL sub_24F27E5C0(uint64_t a1)
{
  sub_24E94E17C(a1, v6);
  if (v7)
  {
    type metadata accessor for WritingDirectionsCounts();
    if (swift_dynamicCast())
    {
      if (*(v1 + OBJC_IVAR___AMPWritingDirectionsCounts_natural) == *&v5[OBJC_IVAR___AMPWritingDirectionsCounts_natural] && *(v1 + OBJC_IVAR___AMPWritingDirectionsCounts_leftToRight) == *&v5[OBJC_IVAR___AMPWritingDirectionsCounts_leftToRight])
      {
        v2 = *(v1 + OBJC_IVAR___AMPWritingDirectionsCounts_rightToLeft);
        v3 = *&v5[OBJC_IVAR___AMPWritingDirectionsCounts_rightToLeft];

        return v2 == v3;
      }
    }
  }

  else
  {
    sub_24E857CC8(v6);
  }

  return 0;
}

char *+ infix(_:_:)(char *result, uint64_t a2)
{
  v2 = *&result[OBJC_IVAR___AMPWritingDirectionsCounts_natural];
  v3 = *(a2 + OBJC_IVAR___AMPWritingDirectionsCounts_natural);
  v4 = (v2 + v3);
  if (__CFADD__(v2, v3))
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = *&result[OBJC_IVAR___AMPWritingDirectionsCounts_leftToRight];
  v6 = *(a2 + OBJC_IVAR___AMPWritingDirectionsCounts_leftToRight);
  v7 = v5 + v6;
  if (__CFADD__(v5, v6))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v8 = *&result[OBJC_IVAR___AMPWritingDirectionsCounts_rightToLeft];
  v9 = *(a2 + OBJC_IVAR___AMPWritingDirectionsCounts_rightToLeft);
  v10 = v8 + v9;
  if (!__CFADD__(v8, v9))
  {
    v11 = objc_allocWithZone(type metadata accessor for WritingDirectionsCounts());
    return WritingDirectionsCounts.init(natural:leftToRight:rightToLeft:)(v4, v7, v10);
  }

LABEL_7:
  __break(1u);
  return result;
}

char *sub_24F27E850()
{
  v0 = objc_allocWithZone(type metadata accessor for WritingDirectionsCounts());
  result = WritingDirectionsCounts.init(natural:leftToRight:rightToLeft:)(0, 0, 0);
  qword_27F23D658 = result;
  return result;
}

id static WritingDirectionsCounts.zero.getter()
{
  if (qword_27F211050 != -1)
  {
    swift_once();
  }

  v1 = qword_27F23D658;

  return v1;
}

uint64_t sub_24F27E9B0()
{
  strcpy(v16, "Natural: ");
  WORD1(v16[1]) = 0;
  HIDWORD(v16[1]) = -385875968;
  v1 = sub_24F92CD88();
  MEMORY[0x253050C20](v1);

  MEMORY[0x253050C20](8236, 0xE200000000000000);
  v2 = v16[0];
  v3 = v16[1];
  strcpy(v16, "{ Counts: { ");
  MEMORY[0x253050C20](v2, v3);

  sub_24F92C888();

  v4 = sub_24F92CD88();
  MEMORY[0x253050C20](v4);

  MEMORY[0x253050C20](8236, 0xE200000000000000);

  MEMORY[0x253050C20](0x2D6F742D7466654CLL, 0xEF203A7468676972);

  v5 = v16[0];
  sub_24F92C888();

  v6 = sub_24F92CD88();
  MEMORY[0x253050C20](v6);

  MEMORY[0x253050C20](32, 0xE100000000000000);

  MEMORY[0x253050C20](0x6F742D7468676952, 0xEF203A7466656C2DLL);

  MEMORY[0x253050C20](2108541, 0xE300000000000000);

  sub_24F92C888();

  v16[0] = 0x45204C5452207349;
  v16[1] = 0xEF28206867756F6ELL;
  if (qword_27F211040 != -1)
  {
    swift_once();
  }

  v7 = qword_27F23D638;
  v8 = unk_27F23D640;

  MEMORY[0x253050C20](v7, v8);

  MEMORY[0x253050C20](540682533, 0xE400000000000000);
  if (*(v0 + OBJC_IVAR___AMPWritingDirectionsCounts_isRTLEnough))
  {
    v9 = 1702195828;
  }

  else
  {
    v9 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR___AMPWritingDirectionsCounts_isRTLEnough))
  {
    v10 = 0xE400000000000000;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  MEMORY[0x253050C20](v9, v10);

  MEMORY[0x253050C20](8236, 0xE200000000000000);

  MEMORY[0x253050C20](v16[0], v16[1]);

  sub_24F92C888();

  v16[0] = 0xD000000000000010;
  v16[1] = 0x800000024FA71480;
  if (qword_27F211048 != -1)
  {
    swift_once();
  }

  v11 = qword_27F23D648;
  v12 = unk_27F23D650;

  MEMORY[0x253050C20](v11, v12);

  MEMORY[0x253050C20](540682533, 0xE400000000000000);
  if (*(v0 + OBJC_IVAR___AMPWritingDirectionsCounts_isRTLMinimal))
  {
    v13 = 1702195828;
  }

  else
  {
    v13 = 0x65736C6166;
  }

  if (*(v0 + OBJC_IVAR___AMPWritingDirectionsCounts_isRTLMinimal))
  {
    v14 = 0xE400000000000000;
  }

  else
  {
    v14 = 0xE500000000000000;
  }

  MEMORY[0x253050C20](v13, v14);

  MEMORY[0x253050C20](32, 0xE100000000000000);

  MEMORY[0x253050C20](v16[0], v16[1]);

  MEMORY[0x253050C20](125, 0xE100000000000000);

  return v5;
}

id WritingDirectionsCounts.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WritingDirectionsCounts.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WritingDirectionsCounts();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void += infix(_:_:)(char **a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *&(*a1)[OBJC_IVAR___AMPWritingDirectionsCounts_natural];
  v4 = *(a2 + OBJC_IVAR___AMPWritingDirectionsCounts_natural);
  v5 = (v3 + v4);
  if (__CFADD__(v3, v4))
  {
    __break(1u);
    goto LABEL_6;
  }

  v7 = *&v2[OBJC_IVAR___AMPWritingDirectionsCounts_leftToRight];
  v8 = *(a2 + OBJC_IVAR___AMPWritingDirectionsCounts_leftToRight);
  v9 = v7 + v8;
  if (__CFADD__(v7, v8))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v11 = *&v2[OBJC_IVAR___AMPWritingDirectionsCounts_rightToLeft];

  v12 = *(a2 + OBJC_IVAR___AMPWritingDirectionsCounts_rightToLeft);
  v13 = v11 + v12;
  if (!__CFADD__(v11, v12))
  {
    v14 = objc_allocWithZone(type metadata accessor for WritingDirectionsCounts());
    *a1 = WritingDirectionsCounts.init(natural:leftToRight:rightToLeft:)(v5, v9, v13);
    return;
  }

LABEL_7:
  __break(1u);
}

char *sub_24F27F038(char *result, uint64_t a2)
{
  v2 = *&result[OBJC_IVAR___AMPWritingDirectionsCounts_natural];
  v3 = *(a2 + OBJC_IVAR___AMPWritingDirectionsCounts_natural);
  v4 = (v2 + v3);
  if (__CFADD__(v2, v3))
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = *&result[OBJC_IVAR___AMPWritingDirectionsCounts_leftToRight];
  v6 = *(a2 + OBJC_IVAR___AMPWritingDirectionsCounts_leftToRight);
  v7 = v5 + v6;
  if (__CFADD__(v5, v6))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v8 = *&result[OBJC_IVAR___AMPWritingDirectionsCounts_rightToLeft];
  v9 = *(a2 + OBJC_IVAR___AMPWritingDirectionsCounts_rightToLeft);
  v10 = v8 + v9;
  if (!__CFADD__(v8, v9))
  {
    v11 = objc_allocWithZone(type metadata accessor for WritingDirectionsCounts());
    return WritingDirectionsCounts.init(natural:leftToRight:rightToLeft:)(v4, v7, v10);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_24F27F124(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v18 - v7;
  v9 = type metadata accessor for LaunchChallengeDefinitionAction(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  sub_24F281A48(a1, &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LaunchChallengeDefinitionAction);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a2;
  sub_24F281AB0(&v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for LaunchChallengeDefinitionAction);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510, &unk_24F93C690);

  v14 = sub_24F92A9E8();
  v15 = sub_24F92B858();
  (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_24F9DC440;
  v16[5] = v13;
  v16[6] = v14;

  sub_24E6959D8(0, 0, v8, &unk_24F94D7B0, v16);

  return v14;
}

uint64_t sub_24F27F37C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[26] = a3;
  v4[27] = a4;
  v4[24] = a1;
  v4[25] = a2;
  v4[28] = type metadata accessor for Leaderboard(0);
  v4[29] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212A00, &qword_24F9A23B0);
  v4[30] = swift_task_alloc();
  v5 = type metadata accessor for ChallengeDefinitionDetail.Trackable(0);
  v4[31] = v5;
  v4[32] = *(v5 - 8);
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  v4[35] = type metadata accessor for ChallengeDefinitionDetail(0);
  v4[36] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F27F4E4, 0, 0);
}

uint64_t sub_24F27F4E4()
{
  *(v0 + 296) = sub_24F92B7F8();
  *(v0 + 304) = sub_24F92B7E8();
  v2 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24F27F57C, v2, v1);
}

uint64_t sub_24F27F57C()
{

  type metadata accessor for LocalPlayerProvider(0);
  sub_24F928F28();
  *(v0 + 312) = *(v0 + 176);

  return MEMORY[0x2822009F8](sub_24F27F604, 0, 0);
}

uint64_t sub_24F27F604(uint64_t a1)
{
  *(v1 + 320) = sub_24F92B7E8();
  v3 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24F27F690, v3, v2);
}

uint64_t sub_24F27F690()
{
  v1 = v0[39];

  swift_getKeyPath();
  v0[23] = v1;
  sub_24F281B78(&qword_27F247200, type metadata accessor for LocalPlayerProvider, &protocol conformance descriptor for LocalPlayerProvider);
  sub_24F91FD88();

  v2 = (v1 + OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider__playerID);
  swift_beginAccess();
  v0[41] = *v2;
  v0[42] = v2[1];

  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255030, &qword_24F93B050);
  v4 = swift_task_alloc();
  v0[43] = v4;
  *v4 = v0;
  v4[1] = sub_24F27F808;

  return MEMORY[0x28217F228](v0 + 9, v3, v3);
}

uint64_t sub_24F27F808()
{
  v2 = *v1;
  v2[44] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24F2805A4, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v2[45] = v3;
    *v3 = v2;
    v3[1] = sub_24F27F984;
    v4 = v2[27];
    v5 = v2[25];
    v6 = v2[26];

    return sub_24F280BF0(v6, v5, v4);
  }
}

uint64_t sub_24F27F984(uint64_t a1, uint64_t a2)
{
  v5 = *v3;
  v5[46] = a2;
  v5[47] = v2;

  if (v2)
  {

    v6 = sub_24F27FD24;
  }

  else
  {
    v5[48] = a1;
    v6 = sub_24F27FAB4;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_24F27FAB4()
{
  v1 = *(v0 + 384);
  v2 = *(v0 + 368);
  v4 = *(v0 + 328);
  v3 = *(v0 + 336);
  v5 = *(v0 + 208);
  v6 = *(v5 + 16);
  *(v0 + 392) = v6;
  v7 = *(v5 + 24);
  *(v0 + 400) = v7;
  v8 = *(v0 + 96);
  v14 = *(v0 + 104);
  __swift_project_boxed_opaque_existential_1((v0 + 72), v8);
  *(v0 + 16) = v6;
  *(v0 + 24) = v7;
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  *(v0 + 48) = v4;
  *(v0 + 56) = v3;
  *(v0 + 64) = 1;

  v9 = swift_task_alloc();
  *(v0 + 408) = v9;
  v10 = sub_24E65404C();
  *v9 = v0;
  v9[1] = sub_24F27FBF0;
  v11 = *(v0 + 288);
  v12 = *(v0 + 200);

  return MEMORY[0x28217F4B0](v11, v0 + 16, v12, &type metadata for ChallengeDefinitionDataIntent, v10, v8, v14);
}

uint64_t sub_24F27FBF0()
{
  *(*v1 + 416) = v0;

  if (v0)
  {
    v2 = sub_24F280640;
  }

  else
  {

    v2 = sub_24F27FF54;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F27FD24()
{
  v1 = v0[47];
  if (qword_27F2113B8 != -1)
  {
    swift_once();
  }

  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E778);
  v3 = sub_24F9220B8();
  v4 = sub_24F92BDB8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_24E5DD000, v3, v4, "LaunchChallengeDefinitionActionImplementation unable to fetch definition data, default to launch game action", v5, 2u);
    MEMORY[0x2530542D0](v5, -1, -1);
  }

  v6 = v0[26];

  v8 = *v6;
  v7 = v6[1];
  v10 = v6[2];
  v9 = v6[3];
  v0[17] = type metadata accessor for LaunchGameAction(0);
  v0[18] = sub_24F281B78(&qword_27F2162D0, type metadata accessor for LaunchGameAction, &protocol conformance descriptor for LaunchGameAction);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 14);

  sub_24F928A98();

  *boxed_opaque_existential_1 = v8;
  boxed_opaque_existential_1[1] = v7;
  boxed_opaque_existential_1[2] = v10;
  boxed_opaque_existential_1[3] = v9;
  boxed_opaque_existential_1[4] = 0;
  boxed_opaque_existential_1[5] = 0;
  v12 = v0[27];
  v13 = swift_task_alloc();
  v0[53] = v13;
  v16 = type metadata accessor for LaunchChallengeDefinitionActionImplementation(0, v12, v14, v15);
  WitnessTable = swift_getWitnessTable();
  *v13 = v0;
  v13[1] = sub_24F2803E0;
  v18 = v0[24];
  v19 = v0[25];

  return sub_24F1487B0(v18, (v0 + 14), v19, v16, WitnessTable);
}

uint64_t sub_24F27FF54()
{
  v1 = v0[31];
  v2 = v0[32];
  v3 = v0[30];
  sub_24E60169C(v0[36] + *(v0[35] + 52), v3, &qword_27F212A00, &qword_24F9A23B0);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_24E601704(v0[30], &qword_27F212A00, &qword_24F9A23B0);
LABEL_10:
    v25 = v0[49];
    v24 = v0[50];
    v26 = v0[36];
    v27 = v0[26];
    v29 = *v27;
    v28 = v27[1];
    v0[17] = type metadata accessor for LaunchGameAction(0);
    v0[18] = sub_24F281B78(&qword_27F2162D0, type metadata accessor for LaunchGameAction, &protocol conformance descriptor for LaunchGameAction);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 14);

    sub_24F928A98();
    sub_24F281B18(v26, type metadata accessor for ChallengeDefinitionDetail);
    *boxed_opaque_existential_1 = v29;
    boxed_opaque_existential_1[1] = v28;
    boxed_opaque_existential_1[2] = v25;
    boxed_opaque_existential_1[3] = v24;
    boxed_opaque_existential_1[4] = 0;
    boxed_opaque_existential_1[5] = 0;
    goto LABEL_11;
  }

  v4 = v0[33];
  v5 = v0[34];
  v6 = v0[29];
  v7 = v0[28];
  sub_24F281AB0(v0[30], v5, type metadata accessor for ChallengeDefinitionDetail.Trackable);
  sub_24F281A48(v5, v4, type metadata accessor for ChallengeDefinitionDetail.Trackable);
  sub_24F281AB0(v4, v6, type metadata accessor for Leaderboard);
  v8 = (v6 + *(v7 + 64));
  v9 = v8[1];
  if (!v9)
  {
    v23 = v0[34];
    sub_24F281B18(v0[29], type metadata accessor for Leaderboard);
    sub_24F281B18(v23, type metadata accessor for ChallengeDefinitionDetail.Trackable);
    goto LABEL_10;
  }

  v42 = *v8;
  v10 = qword_27F2113B8;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = sub_24F9220D8();
  __swift_project_value_buffer(v11, qword_27F39E778);
  v12 = sub_24F9220B8();
  v13 = sub_24F92BD98();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_24E5DD000, v12, v13, "LaunchChallengeDefinitionActionImplementation activityIdentifier found, performing LaunchGameActivityAction", v14, 2u);
    MEMORY[0x2530542D0](v14, -1, -1);
  }

  v15 = v0[50];
  v41 = v0[49];
  v16 = v0[36];
  v17 = v0[34];
  v19 = v0[28];
  v18 = v0[29];

  v20 = *(v18 + 24);
  v40 = *(v18 + 16);
  v21 = *(v18 + *(v19 + 68));
  v0[17] = type metadata accessor for LaunchGameActivityAction(0);
  v0[18] = sub_24F281B78(&qword_27F2162D8, type metadata accessor for LaunchGameActivityAction, &unk_24F9D15B0);
  v22 = __swift_allocate_boxed_opaque_existential_1(v0 + 14);

  sub_24F928A98();
  sub_24F281B18(v18, type metadata accessor for Leaderboard);
  sub_24F281B18(v17, type metadata accessor for ChallengeDefinitionDetail.Trackable);
  sub_24F281B18(v16, type metadata accessor for ChallengeDefinitionDetail);
  *v22 = v41;
  v22[1] = v15;
  v22[2] = v42;
  v22[3] = v9;
  v22[4] = v40;
  v22[5] = v20;
  v22[6] = 0;
  v22[7] = 0;
  v22[8] = v21;
LABEL_11:
  v31 = v0[27];
  v32 = swift_task_alloc();
  v0[53] = v32;
  v35 = type metadata accessor for LaunchChallengeDefinitionActionImplementation(0, v31, v33, v34);
  WitnessTable = swift_getWitnessTable();
  *v32 = v0;
  v32[1] = sub_24F2803E0;
  v37 = v0[24];
  v38 = v0[25];

  return sub_24F1487B0(v37, (v0 + 14), v38, v35, WitnessTable);
}

uint64_t sub_24F2803E0()
{
  *(*v1 + 432) = v0;

  if (v0)
  {
    v2 = sub_24F280890;
  }

  else
  {
    v2 = sub_24F2804F4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F2804F4()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 14);
  __swift_destroy_boxed_opaque_existential_1(v0 + 9);

  v1 = v0[1];

  return v1();
}

uint64_t sub_24F2805A4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F280640()
{

  v1 = v0[52];
  if (qword_27F2113B8 != -1)
  {
    swift_once();
  }

  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E778);
  v3 = sub_24F9220B8();
  v4 = sub_24F92BDB8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_24E5DD000, v3, v4, "LaunchChallengeDefinitionActionImplementation unable to fetch definition data, default to launch game action", v5, 2u);
    MEMORY[0x2530542D0](v5, -1, -1);
  }

  v6 = v0[26];

  v8 = *v6;
  v7 = v6[1];
  v10 = v6[2];
  v9 = v6[3];
  v0[17] = type metadata accessor for LaunchGameAction(0);
  v0[18] = sub_24F281B78(&qword_27F2162D0, type metadata accessor for LaunchGameAction, &protocol conformance descriptor for LaunchGameAction);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 14);

  sub_24F928A98();

  *boxed_opaque_existential_1 = v8;
  boxed_opaque_existential_1[1] = v7;
  boxed_opaque_existential_1[2] = v10;
  boxed_opaque_existential_1[3] = v9;
  boxed_opaque_existential_1[4] = 0;
  boxed_opaque_existential_1[5] = 0;
  v12 = v0[27];
  v13 = swift_task_alloc();
  v0[53] = v13;
  v16 = type metadata accessor for LaunchChallengeDefinitionActionImplementation(0, v12, v14, v15);
  WitnessTable = swift_getWitnessTable();
  *v13 = v0;
  v13[1] = sub_24F2803E0;
  v18 = v0[24];
  v19 = v0[25];

  return sub_24F1487B0(v18, (v0 + 14), v19, v16, WitnessTable);
}

uint64_t sub_24F280890()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 14);
  __swift_destroy_boxed_opaque_existential_1(v0 + 9);

  v1 = v0[1];

  return v1();
}

uint64_t sub_24F2809A4()
{
  v1 = (type metadata accessor for LaunchChallengeDefinitionAction(0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);

  v3 = v1[10];
  v4 = sub_24F928AD8();
  (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_24F280AAC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(type metadata accessor for LaunchChallengeDefinitionAction(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24E614970;

  return sub_24F27F37C(a1, v7, v1 + v6, v4);
}

uint64_t sub_24F280BA0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24F280BF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a2;
  v3[14] = a3;
  v3[12] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213980, &qword_24F93B520);
  v3[15] = v4;
  v3[16] = *(v4 - 8);
  v3[17] = swift_task_alloc();
  v5 = sub_24F920C38();
  v3[18] = v5;
  v3[19] = *(v5 - 8);
  v3[20] = swift_task_alloc();
  v3[21] = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27F23D720, &unk_24F9DC490) - 8);
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219FA0, &unk_24F94D8A0);
  v3[25] = v6;
  v3[26] = *(v6 - 8);
  v3[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F280E00, 0, 0);
}

uint64_t sub_24F280E00()
{
  v1 = v0[12];
  v2 = *(v1 + 56);
  if (v2)
  {
    v3 = *(v1 + 48);
    v4 = qword_27F2113B8;

    if (v4 != -1)
    {
      swift_once();
    }

    v5 = sub_24F9220D8();
    __swift_project_value_buffer(v5, qword_27F39E778);
    v6 = sub_24F9220B8();
    v7 = sub_24F92BD98();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_24E5DD000, v6, v7, "LaunchChallengeDefinitionActionImplementation definitionID provided", v8, 2u);
      MEMORY[0x2530542D0](v8, -1, -1);
    }

    v9 = v0[1];

    return v9(v3, v2);
  }

  else
  {
    if (qword_27F2113B8 != -1)
    {
      swift_once();
    }

    v11 = sub_24F9220D8();
    v0[28] = __swift_project_value_buffer(v11, qword_27F39E778);
    v12 = sub_24F9220B8();
    v13 = sub_24F92BD98();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_24E5DD000, v12, v13, "LaunchChallengeDefinitionActionImplementation fetching definition ID", v14, 2u);
      MEMORY[0x2530542D0](v14, -1, -1);
    }

    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2142C0, &unk_24F93C710);
    v16 = swift_task_alloc();
    v0[29] = v16;
    *v16 = v0;
    v16[1] = sub_24F2810E0;

    return MEMORY[0x28217F228](v0 + 7, v15, v15);
  }
}

uint64_t sub_24F2810E0()
{
  *(*v1 + 240) = v0;

  if (v0)
  {
    v2 = sub_24F2814AC;
  }

  else
  {
    v2 = sub_24F2811F4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F2811F4()
{
  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[25];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
  sub_24F9204F8();
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);

  sub_24F920FF8();
  v4 = v0[5];
  v5 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E7C0, &qword_24F95D308);
  v6 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v7 = swift_allocObject();
  v0[31] = v7;
  *(v7 + 16) = xmmword_24F93DE60;
  (*(v2 + 16))(v7 + v6, v1, v3);
  v8 = swift_task_alloc();
  v0[32] = v8;
  *v8 = v0;
  v8[1] = sub_24F281370;

  return MEMORY[0x2821651A0](v7, v4, v5);
}

uint64_t sub_24F281370(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 264) = a1;
  *(v3 + 272) = v1;

  if (v1)
  {
    v4 = sub_24F28197C;
  }

  else
  {
    v4 = sub_24F281558;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24F2814AC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F281558()
{
  v1 = v0[33];
  if (!*(v1 + 16))
  {

    goto LABEL_5;
  }

  v2 = v0[23];
  v3 = v0[24];
  v4 = v0[22];
  v5 = v0[18];
  v6 = v0[19];
  v7 = *(v0[21] + 80);
  sub_24E60169C(v1 + ((v7 + 32) & ~v7), v2, qword_27F23D720, &unk_24F9DC490);

  sub_24F281BC0(v2, v3);
  sub_24E60169C(v3, v4, qword_27F23D720, &unk_24F9DC490);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    v8 = v0[22];
    sub_24E601704(v0[24], qword_27F23D720, &unk_24F9DC490);
    sub_24E601704(v8, qword_27F23D720, &unk_24F9DC490);
LABEL_5:
    v9 = sub_24F9220B8();
    v10 = sub_24F92BDB8();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_24E5DD000, v9, v10, "LaunchChallengeDefinitionActionImplementation unable to find challenge description", v11, 2u);
      MEMORY[0x2530542D0](v11, -1, -1);
    }

    v13 = v0[26];
    v12 = v0[27];
    v14 = v0[25];
    v15 = v0[14];

    type metadata accessor for LaunchChallengeDefinitionActionImplementation.FetchError(0, v15, v16, v17);
    swift_getWitnessTable();
    swift_allocError();
    swift_willThrow();
    (*(v13 + 8))(v12, v14);
    goto LABEL_10;
  }

  v18 = v0[34];
  (*(v0[19] + 32))(v0[20], v0[22], v0[18]);
  sub_24F920BD8();
  v19 = sub_24F920FB8();
  v21 = v18;
  v23 = v0[26];
  v22 = v0[27];
  v25 = v0[24];
  v24 = v0[25];
  v27 = v0[19];
  v26 = v0[20];
  v28 = v0[18];
  v29 = v0[16];
  if (v21)
  {
    (*(v29 + 8))(v0[17], v0[15]);
    (*(v27 + 8))(v26, v28);
    sub_24E601704(v25, qword_27F23D720, &unk_24F9DC490);
    (*(v23 + 8))(v22, v24);
LABEL_10:
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);

    v30 = v0[1];

    return v30();
  }

  v32 = v19;
  v33 = v20;
  (*(v29 + 8))(v0[17], v0[15]);
  (*(v27 + 8))(v26, v28);
  sub_24E601704(v25, qword_27F23D720, &unk_24F9DC490);
  (*(v23 + 8))(v22, v24);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v34 = v0[1];

  return v34(v32, v33);
}

uint64_t sub_24F28197C()
{
  (*(v0[26] + 8))(v0[27], v0[25]);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v1 = v0[1];

  return v1();
}

uint64_t sub_24F281A48(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F281AB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F281B18(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F281B78(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24F281BC0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F23D720, &unk_24F9DC490);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t CappedSizeStaticDimension.init(constant:source:maxSizeCategory:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  *a3 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23D7A8, &unk_24F9DC570);
  v7 = swift_allocObject();
  v8 = *(*v7 + 88);
  v9 = sub_24F922118();
  result = (*(*(v9 - 8) + 32))(v7 + v8, a1, v9);
  *(a3 + 8) = v7;
  *(a3 + 16) = a2;
  return result;
}

uint64_t CappedSizeStaticDimension.source.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  v4 = *(*v3 + 88);
  swift_beginAccess();
  v5 = sub_24F922118();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

void CappedSizeStaticDimension.value(compatibleWith:rounded:)(void *a1, uint64_t a2)
{
  v5 = sub_24F92CDB8();
  v6 = *(v5 - 8);
  *&v7 = MEMORY[0x28223BE20](v5).n128_u64[0];
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v2 + 8);
  v10 = *(v2 + 16);
  v12 = [a1 preferredContentSizeCategory];
  v13 = sub_24F92C148();

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F223440, &qword_24F941F10);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_24F9C29E0;
    *(v14 + 32) = a1;
    v15 = objc_opt_self();
    v16 = a1;
    *(v14 + 40) = [v15 traitCollectionWithPreferredContentSizeCategory_];
    sub_24F1E21D4();
    v17 = sub_24F92B588();

    v18 = [v15 traitCollectionWithTraitsFromCollections_];
  }

  else
  {
    v18 = a1;
  }

  v19 = *(*v11 + 88);
  swift_beginAccess();
  v20 = sub_24F922118();
  v25[3] = v20;
  v25[4] = MEMORY[0x277D22628];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v25);
  (*(*(v20 - 8) + 16))(boxed_opaque_existential_1, v11 + v19, v20);
  sub_24F91FE48();
  v23 = v22;
  __swift_destroy_boxed_opaque_existential_1(v25);
  v25[0] = v23;
  (*(v6 + 16))(v9, a2, v5);
  v24 = (*(v6 + 88))(v9, v5);
  if (v24 == *MEMORY[0x277D84678] || v24 == *MEMORY[0x277D84670] || v24 == *MEMORY[0x277D84680] || v24 == *MEMORY[0x277D84688] || v24 == *MEMORY[0x277D84660] || v24 == *MEMORY[0x277D84668])
  {
  }

  else
  {
    sub_24F92BA48();

    (*(v6 + 8))(v9, v5);
  }
}

double CappedSizeStaticDimension.rawValue(in:)(void *a1)
{
  v3 = *(v1 + 8);
  v2 = *(v1 + 16);
  v4 = [a1 traitCollection];
  v5 = [v4 preferredContentSizeCategory];
  v6 = sub_24F92C148();

  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F223440, &qword_24F941F10);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_24F9C29E0;
    *(v7 + 32) = v4;
    v8 = objc_opt_self();
    v9 = v4;
    *(v7 + 40) = [v8 traitCollectionWithPreferredContentSizeCategory_];
    sub_24F1E21D4();
    v10 = sub_24F92B588();

    v4 = [v8 traitCollectionWithTraitsFromCollections_];
  }

  v11 = *(*v3 + 88);
  swift_beginAccess();
  v12 = sub_24F922118();
  v17[3] = v12;
  v17[4] = MEMORY[0x277D22628];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v17);
  (*(*(v12 - 8) + 16))(boxed_opaque_existential_1, v3 + v11, v12);
  sub_24F91FE48();
  v15 = v14;

  __swift_destroy_boxed_opaque_existential_1(v17);
  return v15;
}

UIEdgeInsets __swiftcall CappedSizeStaticDimension.languageAwareOutsets(compatibleWith:)(UITraitCollection compatibleWith)
{
  v3 = sub_24F922118();
  v4 = *(v3 - 8);
  *&v5 = MEMORY[0x28223BE20](v3).n128_u64[0];
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + 8);
  v8 = *(v1 + 16);
  v10 = [(objc_class *)compatibleWith.super.isa preferredContentSizeCategory];
  v11 = sub_24F92C148();

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F223440, &qword_24F941F10);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_24F9C29E0;
    *(v12 + 32) = compatibleWith;
    v13 = objc_opt_self();
    v14 = compatibleWith.super.isa;
    *(v12 + 40) = [v13 traitCollectionWithPreferredContentSizeCategory_];
    sub_24F1E21D4();
    v15 = sub_24F92B588();

    v16 = [v13 traitCollectionWithTraitsFromCollections_];
  }

  else
  {
    v16 = compatibleWith.super.isa;
  }

  v17 = *(*v9 + 88);
  swift_beginAccess();
  (*(v4 + 16))(v7, v9 + v17, v3);
  v18 = sub_24F922108();
  (*(v4 + 8))(v7, v3);
  sub_24F92C278();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  v27 = v20;
  v28 = v22;
  v29 = v24;
  v30 = v26;
  result.right = v30;
  result.bottom = v29;
  result.left = v28;
  result.top = v27;
  return result;
}

uint64_t CappedSizeStaticDimension.description.getter()
{
  v1 = sub_24F922118();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 8);
  v6 = *(v0 + 16);
  v11 = 0;
  v12 = 0xE000000000000000;
  sub_24F92C888();
  v13 = v11;
  v14 = v12;
  MEMORY[0x253050C20](0xD000000000000014, 0x800000024FA716A0);
  v7 = sub_24F92BA38();
  MEMORY[0x253050C20](v7);

  MEMORY[0x253050C20](0x656372756F73202CLL, 0xEA0000000000203ALL);
  v8 = *(*v5 + 88);
  swift_beginAccess();
  (*(v2 + 16))(v4, v5 + v8, v1);
  sub_24F92CA38();
  (*(v2 + 8))(v4, v1);
  MEMORY[0x253050C20](0xD000000000000013, 0x800000024FA716C0);
  v10 = v6;
  type metadata accessor for UIContentSizeCategory(0);
  sub_24F92CA38();
  return v13;
}

uint64_t _s12GameStoreKit25CappedSizeStaticDimensionV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F922118();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v23 - v9;
  if (*a1 == *a2 && (v11 = *(a2 + 8), v23[1] = *(a2 + 16), v12 = *(a1 + 8), v13 = *(*v12 + 88), swift_beginAccess(), v14 = *(v5 + 16), v14(v10, v12 + v13, v4), v15 = *(*v11 + 88), swift_beginAccess(), v14(v7, v11 + v15, v4), LOBYTE(v15) = MEMORY[0x253047A80](v10, v7), v16 = *(v5 + 8), v16(v7, v4), v16(v10, v4), (v15 & 1) != 0))
  {
    v17 = sub_24F92B0D8();
    v19 = v18;
    if (v17 == sub_24F92B0D8() && v19 == v20)
    {
      v21 = 1;
    }

    else
    {
      v21 = sub_24F92CE08();
    }
  }

  else
  {
    v21 = 0;
  }

  return v21 & 1;
}

GameStoreKit::MetadataRibbonSecondaryViewPlacement_optional __swiftcall MetadataRibbonSecondaryViewPlacement.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

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

  *v2 = v5;
  return result;
}

uint64_t MetadataRibbonSecondaryViewPlacement.rawValue.getter()
{
  if (*v0)
  {
    return 0x676E696C69617274;
  }

  else
  {
    return 0x676E696461656CLL;
  }
}

uint64_t sub_24F282A64@<X0>(char *a2@<X8>)
{
  v3 = sub_24F92CB88();

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

GameStoreKit::MetadataRibbonItemType_optional __swiftcall MetadataRibbonItemType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 10;
  if (v3 < 0xA)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t MetadataRibbonItemType.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 4)
  {
    v6 = 6775156;
    v7 = 0x72656469766964;
    if (v1 != 8)
    {
      v7 = 0x6E776F6E6B6E75;
    }

    if (v1 != 7)
    {
      v6 = v7;
    }

    v8 = 0xD000000000000012;
    if (v1 != 5)
    {
      v8 = 0x65706F6C65766564;
    }

    if (*v0 <= 6u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v2 = 0x6974615272657375;
    v3 = 0xD000000000000010;
    v4 = 0xD000000000000015;
    if (v1 != 3)
    {
      v4 = 0xD00000000000001FLL;
    }

    if (v1 != 2)
    {
      v3 = v4;
    }

    if (*v0)
    {
      v2 = 0x736F507472616863;
    }

    if (*v0 <= 1u)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}

uint64_t sub_24F282C8C()
{
  v1 = *v0;
  sub_24F92D068();
  sub_24F203BAC(v3, v1);
  return sub_24F92D0B8();
}

uint64_t sub_24F282CDC()
{
  v1 = *v0;
  sub_24F92D068();
  sub_24F203BAC(v3, v1);
  return sub_24F92D0B8();
}

unint64_t sub_24F282D2C@<X0>(unint64_t *a1@<X8>)
{
  result = MetadataRibbonItemType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

GameStoreKit::MetadataRibbonItemViewType_optional __swiftcall MetadataRibbonItemViewType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t MetadataRibbonItemViewType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x4373726F74696465;
  v3 = 0x72656469766964;
  if (v1 != 5)
  {
    v3 = 0x6867696C68676968;
  }

  v4 = 0x6974615272617473;
  if (v1 != 3)
  {
    v4 = 0x6562614C74786574;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  if (v1 != 1)
  {
    v2 = 0x7469576567616D69;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000011;
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

uint64_t sub_24F282ED4(uint64_t a1)
{
  sub_24F92B218();
}

void sub_24F283028(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED00006563696F68;
  v4 = 0x4373726F74696465;
  v5 = 0xE700000000000000;
  v6 = 0x72656469766964;
  if (v2 != 5)
  {
    v6 = 0x6867696C68676968;
    v5 = 0xEF74786554646574;
  }

  v7 = 0xEA0000000000676ELL;
  v8 = 0x6974615272617473;
  if (v2 != 3)
  {
    v8 = 0x6562614C74786574;
    v7 = 0xE90000000000006CLL;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  if (v2 != 1)
  {
    v4 = 0x7469576567616D69;
    v3 = 0xEE006C6562614C68;
  }

  if (!*v1)
  {
    v4 = 0xD000000000000011;
    v3 = 0x800000024FA42DD0;
  }

  if (*v1 <= 2u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t MetadataRibbonItem.__allocating_init(id:itemType:viewContainerType:labelText:artwork:borderedText:highlightedText:starRating:borderTextViewPlacement:useAdsLocale:impressionMetrics:maxCharacterCount:truncationLegibilityCharacterCountThreshold:allowsTruncation:)(uint64_t a1, _BYTE *a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, float a9, uint64_t a10, uint64_t a11, char *a12, char a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, char a18, char a19)
{
  v23 = swift_allocObject();
  LOBYTE(a2) = *a2;
  LOBYTE(a3) = *a3;
  v24 = *a12;
  v25 = OBJC_IVAR____TtC12GameStoreKit18MetadataRibbonItem_impressionMetrics;
  v26 = sub_24F929608();
  (*(*(v26 - 8) + 56))(v23 + v25, 1, 1, v26);
  v27 = v23 + OBJC_IVAR____TtC12GameStoreKit18MetadataRibbonItem_maxCharacterCount;
  *v27 = 0;
  *(v27 + 8) = 1;
  v28 = v23 + OBJC_IVAR____TtC12GameStoreKit18MetadataRibbonItem_truncationLegibilityCharacterCountThreshold;
  *v28 = 0;
  *(v28 + 8) = 1;
  *(v23 + OBJC_IVAR____TtC12GameStoreKit18MetadataRibbonItem_allowsTruncation) = 2;
  v29 = *(a1 + 16);
  *(v23 + 16) = *a1;
  *(v23 + 32) = v29;
  *(v23 + 48) = *(a1 + 32);
  *(v23 + 56) = a2;
  *(v23 + 57) = a3;
  *(v23 + 64) = a4;
  *(v23 + 72) = a5;
  *(v23 + 80) = a6;
  *(v23 + 88) = a7;
  *(v23 + 96) = a8;
  *(v23 + 104) = a10;
  *(v23 + 112) = a11;
  *(v23 + 120) = a9;
  *(v23 + 124) = v24;
  *(v23 + 125) = a13;
  v30 = OBJC_IVAR____TtC12GameStoreKit18MetadataRibbonItem_impressionMetrics;
  swift_beginAccess();
  sub_24F2835A0(a14, v23 + v30);
  swift_endAccess();
  v31 = v23 + OBJC_IVAR____TtC12GameStoreKit18MetadataRibbonItem_maxCharacterCount;
  swift_beginAccess();
  *v31 = a15;
  *(v31 + 8) = a16 & 1;
  v32 = v23 + OBJC_IVAR____TtC12GameStoreKit18MetadataRibbonItem_truncationLegibilityCharacterCountThreshold;
  swift_beginAccess();
  *v32 = a17;
  *(v32 + 8) = a18 & 1;
  v33 = OBJC_IVAR____TtC12GameStoreKit18MetadataRibbonItem_allowsTruncation;
  swift_beginAccess();
  *(v23 + v33) = a19;
  return v23;
}

uint64_t MetadataRibbonItem.init(id:itemType:viewContainerType:labelText:artwork:borderedText:highlightedText:starRating:borderTextViewPlacement:useAdsLocale:impressionMetrics:maxCharacterCount:truncationLegibilityCharacterCountThreshold:allowsTruncation:)(uint64_t a1, char *a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, float a9, uint64_t a10, uint64_t a11, char *a12, char a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, char a18, char a19)
{
  v22 = *a2;
  v23 = *a3;
  v24 = *a12;
  v25 = OBJC_IVAR____TtC12GameStoreKit18MetadataRibbonItem_impressionMetrics;
  v26 = sub_24F929608();
  (*(*(v26 - 8) + 56))(v19 + v25, 1, 1, v26);
  v27 = v19 + OBJC_IVAR____TtC12GameStoreKit18MetadataRibbonItem_maxCharacterCount;
  *v27 = 0;
  *(v27 + 8) = 1;
  v28 = v19 + OBJC_IVAR____TtC12GameStoreKit18MetadataRibbonItem_truncationLegibilityCharacterCountThreshold;
  *v28 = 0;
  *(v28 + 8) = 1;
  *(v19 + OBJC_IVAR____TtC12GameStoreKit18MetadataRibbonItem_allowsTruncation) = 2;
  v29 = *(a1 + 16);
  *(v19 + 16) = *a1;
  *(v19 + 32) = v29;
  *(v19 + 48) = *(a1 + 32);
  *(v19 + 56) = v22;
  *(v19 + 57) = v23;
  *(v19 + 64) = a4;
  *(v19 + 72) = a5;
  *(v19 + 80) = a6;
  *(v19 + 88) = a7;
  *(v19 + 96) = a8;
  *(v19 + 104) = a10;
  *(v19 + 112) = a11;
  *(v19 + 120) = a9;
  *(v19 + 124) = v24;
  *(v19 + 125) = a13;
  v30 = OBJC_IVAR____TtC12GameStoreKit18MetadataRibbonItem_impressionMetrics;
  swift_beginAccess();
  sub_24F2835A0(a14, v19 + v30);
  swift_endAccess();
  v31 = v19 + OBJC_IVAR____TtC12GameStoreKit18MetadataRibbonItem_maxCharacterCount;
  swift_beginAccess();
  *v31 = a15;
  *(v31 + 8) = a16 & 1;
  v32 = v19 + OBJC_IVAR____TtC12GameStoreKit18MetadataRibbonItem_truncationLegibilityCharacterCountThreshold;
  swift_beginAccess();
  *v32 = a17;
  *(v32 + 8) = a18 & 1;
  v33 = OBJC_IVAR____TtC12GameStoreKit18MetadataRibbonItem_allowsTruncation;
  swift_beginAccess();
  *(v19 + v33) = a19;
  return v19;
}

uint64_t sub_24F2835A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t MetadataRibbonItem.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v90 = a2;
  v80 = sub_24F91F6B8();
  v79 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v78 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v5 - 8);
  v84 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v85 = &v64 - v8;
  MEMORY[0x28223BE20](v9);
  v87 = &v64 - v10;
  v11 = sub_24F9285B8();
  v88 = *(v11 - 8);
  v89 = v11;
  MEMORY[0x28223BE20](v11);
  v86 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24F928388();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v83 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v82 = &v64 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v64 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v64 - v22;
  sub_24F928398();
  sub_24F2842F4();
  sub_24F928248();
  v24 = *(v14 + 8);
  v24(v23, v13);
  if (v93 == 7)
  {
    v25 = sub_24F92AC38();
    sub_24F284BA4(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    *v26 = 0x6570795477656976;
    v26[1] = 0xE800000000000000;
    v26[2] = v81;
    (*(*(v25 - 8) + 104))(v26, *MEMORY[0x277D22530], v25);
    swift_willThrow();
    (*(v88 + 8))(v90, v89);
    return (v24)(a1, v13);
  }

  else
  {
    v77 = v93;
    v81 = v2;
    sub_24F928398();
    sub_24F284348();
    sub_24F928208();
    v24(v23, v13);
    v76 = v93;
    sub_24F928398();
    v75 = sub_24F928348();
    v74 = v28;
    v24(v23, v13);
    type metadata accessor for Artwork(0);
    sub_24F928398();
    v66 = *(v88 + 16);
    v66(v86, v90, v89);
    sub_24F284BA4(&qword_27F219660, type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
    sub_24F929548();
    v73 = v93;
    sub_24F928398();
    v72 = sub_24F928348();
    v71 = v29;
    v24(v23, v13);
    sub_24F928398();
    v70 = sub_24F928348();
    v69 = v30;
    v24(v23, v13);
    sub_24F928398();
    v31 = sub_24F9282C8();
    v24(v20, v13);
    if ((v31 & 0x100000000) != 0)
    {
      v32 = 0.0;
    }

    else
    {
      v32 = *&v31;
    }

    sub_24F928398();
    sub_24F28439C();
    sub_24F928208();
    v24(v23, v13);
    v68 = v93;
    v33 = v82;
    sub_24F928398();
    v67 = sub_24F928278();
    v24(v33, v13);
    v34 = sub_24F929608();
    sub_24F928398();
    v66(v86, v90, v89);
    sub_24F929548();
    sub_24F928398();
    v35 = sub_24F928258();
    LODWORD(v86) = v36;
    v24(v23, v13);
    sub_24F928398();
    v82 = sub_24F928258();
    LODWORD(v66) = v37;
    v24(v23, v13);
    sub_24F928398();
    v65 = sub_24F928278();
    v24(v23, v13);
    v38 = v83;
    sub_24F928398();
    v39 = sub_24F928348();
    if (v40)
    {
      v91 = v39;
      v92 = v40;
      sub_24F92C7F8();
      (*(v88 + 8))(v90, v89);
      v24(a1, v13);
      v41 = v38;
    }

    else
    {
      v42 = v78;
      sub_24F91F6A8();
      v43 = sub_24F91F668();
      v64 = v35;
      v44 = v38;
      v46 = v45;
      (*(v79 + 8))(v42, v80);
      v91 = v43;
      v92 = v46;
      sub_24F92C7F8();
      (*(v88 + 8))(v90, v89);
      v24(a1, v13);
      v41 = v44;
      v35 = v64;
    }

    v24(v41, v13);
    v47 = v84;
    sub_24E65E0D4(v87, v84);
    v48 = *(v34 - 8);
    v49 = *(v48 + 48);
    v50 = v49(v47, 1, v34);
    v51 = v85;
    if (v50 == 1)
    {
      v52 = *(v48 + 56);
      v52(v85, 1, 1, v34);
      if (v49(v47, 1, v34) != 1)
      {
        sub_24EB05BC8(v47);
      }
    }

    else
    {
      (*(v48 + 32))(v85, v47, v34);
      v52 = *(v48 + 56);
      v52(v51, 0, 1, v34);
    }

    type metadata accessor for MetadataRibbonItem(0);
    v53 = swift_allocObject();
    v52((v53 + OBJC_IVAR____TtC12GameStoreKit18MetadataRibbonItem_impressionMetrics), 1, 1, v34);
    v54 = v53 + OBJC_IVAR____TtC12GameStoreKit18MetadataRibbonItem_maxCharacterCount;
    *v54 = 0;
    *(v54 + 8) = 1;
    v55 = v53 + OBJC_IVAR____TtC12GameStoreKit18MetadataRibbonItem_truncationLegibilityCharacterCountThreshold;
    *v55 = 0;
    *(v55 + 8) = 1;
    *(v53 + OBJC_IVAR____TtC12GameStoreKit18MetadataRibbonItem_allowsTruncation) = 2;
    v56 = v94;
    *(v53 + 16) = v93;
    *(v53 + 32) = v56;
    *(v53 + 48) = v95;
    *(v53 + 56) = v76;
    *(v53 + 57) = v77;
    v57 = v74;
    *(v53 + 64) = v75;
    *(v53 + 72) = v57;
    v58 = v72;
    *(v53 + 80) = v73;
    *(v53 + 88) = v58;
    v59 = v70;
    *(v53 + 96) = v71;
    *(v53 + 104) = v59;
    *(v53 + 112) = v69;
    *(v53 + 120) = v32;
    *(v53 + 124) = v68;
    *(v53 + 125) = v67 & 1;
    v60 = OBJC_IVAR____TtC12GameStoreKit18MetadataRibbonItem_impressionMetrics;
    swift_beginAccess();
    sub_24F2835A0(v51, v53 + v60);
    swift_endAccess();
    v61 = v53 + OBJC_IVAR____TtC12GameStoreKit18MetadataRibbonItem_maxCharacterCount;
    swift_beginAccess();
    *v61 = v35;
    *(v61 + 8) = v86 & 1;
    v62 = v53 + OBJC_IVAR____TtC12GameStoreKit18MetadataRibbonItem_truncationLegibilityCharacterCountThreshold;
    swift_beginAccess();
    *v62 = v82;
    *(v62 + 8) = v66 & 1;
    v63 = OBJC_IVAR____TtC12GameStoreKit18MetadataRibbonItem_allowsTruncation;
    swift_beginAccess();
    result = v53;
    *(v53 + v63) = v65;
  }

  return result;
}

unint64_t sub_24F2842F4()
{
  result = qword_27F23D7B0;
  if (!qword_27F23D7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23D7B0);
  }

  return result;
}

unint64_t sub_24F284348()
{
  result = qword_27F23D7B8;
  if (!qword_27F23D7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23D7B8);
  }

  return result;
}

unint64_t sub_24F28439C()
{
  result = qword_27F23D7C0;
  if (!qword_27F23D7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23D7C0);
  }

  return result;
}

uint64_t type metadata accessor for MetadataRibbonItem(uint64_t a1)
{
  result = qword_27F23D7E8;
  if (!qword_27F23D7E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MetadataRibbonItem.labelText.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t MetadataRibbonItem.borderedText.getter()
{
  v1 = *(v0 + 88);

  return v1;
}

uint64_t MetadataRibbonItem.highlightedText.getter()
{
  v1 = *(v0 + 104);

  return v1;
}

uint64_t sub_24F284514(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - v5;
  sub_24E643844(a1, &v10 - v5);
  v7 = *a2;
  v8 = OBJC_IVAR____TtC12GameStoreKit18MetadataRibbonItem_impressionMetrics;
  swift_beginAccess();
  sub_24F2835A0(v6, v7 + v8);
  return swift_endAccess();
}

uint64_t sub_24F2845D4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit18MetadataRibbonItem_impressionMetrics;
  swift_beginAccess();
  return sub_24E643844(v1 + v3, a1);
}

uint64_t sub_24F28462C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit18MetadataRibbonItem_impressionMetrics;
  swift_beginAccess();
  sub_24F2835A0(a1, v1 + v3);
  return swift_endAccess();
}

void sub_24F2846F8(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC12GameStoreKit18MetadataRibbonItem_maxCharacterCount;
  swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
}

void sub_24F2847C4(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC12GameStoreKit18MetadataRibbonItem_truncationLegibilityCharacterCountThreshold;
  swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
}

uint64_t sub_24F284884()
{
  v1 = OBJC_IVAR____TtC12GameStoreKit18MetadataRibbonItem_allowsTruncation;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_24F2848C8(char a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit18MetadataRibbonItem_allowsTruncation;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t MetadataRibbonItem.deinit()
{
  sub_24E6585F8(v0 + 16);

  sub_24EB05BC8(v0 + OBJC_IVAR____TtC12GameStoreKit18MetadataRibbonItem_impressionMetrics);
  return v0;
}

uint64_t MetadataRibbonItem.__deallocating_deinit()
{
  sub_24E6585F8(v0 + 16);

  sub_24EB05BC8(v0 + OBJC_IVAR____TtC12GameStoreKit18MetadataRibbonItem_impressionMetrics);

  return swift_deallocClassInstance();
}

unint64_t sub_24F284A58()
{
  result = qword_27F23D7C8;
  if (!qword_27F23D7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23D7C8);
  }

  return result;
}

unint64_t sub_24F284AB0()
{
  result = qword_27F23D7D0;
  if (!qword_27F23D7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23D7D0);
  }

  return result;
}

unint64_t sub_24F284B08()
{
  result = qword_27F23D7D8;
  if (!qword_27F23D7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23D7D8);
  }

  return result;
}

uint64_t sub_24F284BA4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24F284BFC@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = MetadataRibbonItem.__allocating_init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_24F284C28@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC12GameStoreKit18MetadataRibbonItem_impressionMetrics;
  swift_beginAccess();
  return sub_24E643844(v3 + v4, a1);
}

uint64_t sub_24F284C84@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12GameStoreKit18MetadataRibbonItem_impressionMetrics;
  swift_beginAccess();
  return sub_24E643844(v3 + v4, a2);
}

void keypath_set_5Tm(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *a2 + *a5;
  swift_beginAccess();
  *v7 = v5;
  *(v7 + 8) = v6;
}

void sub_24F284D70(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12GameStoreKit18MetadataRibbonItem_allowsTruncation;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

void sub_24F284DC8(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC12GameStoreKit18MetadataRibbonItem_allowsTruncation;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

void sub_24F284E54(uint64_t a1)
{
  sub_24E61C938(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t GamesSignInAction.actionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for GamesSignInAction(0) + 28);
  v4 = sub_24F928AD8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for GamesSignInAction(uint64_t a1)
{
  result = qword_27F23D810;
  if (!qword_27F23D810)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24F2852EC()
{
  v1 = 0x4173736563637573;
  if (*v0 != 2)
  {
    v1 = 0x654D6E6F69746361;
  }

  v2 = 0xD000000000000010;
  if (*v0)
  {
    v2 = 0xD000000000000012;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_24F285384@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24F285F14(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24F2853AC(uint64_t a1)
{
  v2 = sub_24F2856B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F2853E8(uint64_t a1)
{
  v2 = sub_24F2856B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GamesSignInAction.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23D7F8, &qword_24F9DCB10);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F2856B0();
  sub_24F92D128();
  v8[15] = 0;
  sub_24F92CD18();
  if (!v1)
  {
    v8[14] = 1;
    sub_24F92CD18();
    v8[13] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90, &unk_24F93C1D0);
    sub_24E6419D0(&qword_27F214048, &qword_27F214050, MEMORY[0x277D21FD8], MEMORY[0x277D21D30]);
    sub_24F92CD48();
    type metadata accessor for GamesSignInAction(0);
    v8[12] = 3;
    sub_24F928AD8();
    sub_24E674184(&qword_27F216080, MEMORY[0x277D21C90]);
    sub_24F92CD48();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_24F2856B0()
{
  result = qword_27F23D800;
  if (!qword_27F23D800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23D800);
  }

  return result;
}

uint64_t GamesSignInAction.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v3 = sub_24F928AD8();
  v21 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23D808, &unk_24F9DCB18);
  v23 = *(v6 - 8);
  v24 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v20 - v7;
  v9 = type metadata accessor for GamesSignInAction(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v11 + 8) = 0u;
  v12 = (v11 + 8);
  v29 = 0;
  memset(v28, 0, sizeof(v28));
  *(v11 + 24) = 0u;
  *(v11 + 5) = 0;
  sub_24E61DA68(v28, (v11 + 8), qword_27F21B590, &unk_24F93BE30);
  v13 = a1[3];
  v27 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_24F2856B0();
  v25 = v8;
  v14 = v26;
  sub_24F92D108();
  if (v14)
  {
    __swift_destroy_boxed_opaque_existential_1(v27);
    return sub_24E641EA0(v12);
  }

  else
  {
    v15 = v5;
    LOBYTE(v28[0]) = 0;
    v17 = v23;
    v16 = v24;
    *v11 = sub_24F92CC38() & 1;
    LOBYTE(v28[0]) = 1;
    v11[1] = sub_24F92CC38() & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90, &unk_24F93C1D0);
    v30 = 2;
    sub_24E6419D0(&qword_27F213F38, &qword_27F213F40, MEMORY[0x277D21FD0], MEMORY[0x277D21D38]);
    sub_24F92CC68();
    sub_24E61DA68(v28, v12, qword_27F24EC90, &unk_24F93C1D0);
    LOBYTE(v28[0]) = 3;
    sub_24E674184(&qword_27F254CB0, MEMORY[0x277D21C98]);
    v18 = v25;
    sub_24F92CC68();
    (*(v17 + 8))(v18, v16);
    (*(v21 + 32))(&v11[*(v9 + 28)], v15, v3);
    sub_24F285AF4(v11, v22);
    __swift_destroy_boxed_opaque_existential_1(v27);
    return sub_24F285B58(v11);
  }
}

uint64_t sub_24F285AF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GamesSignInAction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F285B58(uint64_t a1)
{
  v2 = type metadata accessor for GamesSignInAction(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24F285BF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_24F928AD8();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 28);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_24F285CC4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 32) = a2;
  }

  else
  {
    v7 = sub_24F928AD8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24F285D68(uint64_t a1)
{
  sub_24E61C8D4(319);
  if (v1 <= 0x3F)
  {
    sub_24F928AD8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_24F285E10()
{
  result = qword_27F23D820;
  if (!qword_27F23D820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23D820);
  }

  return result;
}

unint64_t sub_24F285E68()
{
  result = qword_27F23D828;
  if (!qword_27F23D828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23D828);
  }

  return result;
}

unint64_t sub_24F285EC0()
{
  result = qword_27F23D830;
  if (!qword_27F23D830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23D830);
  }

  return result;
}

uint64_t sub_24F285F14(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x800000024FA71800 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024FA71820 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4173736563637573 && a2 == 0xED00006E6F697463 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x654D6E6F69746361 && a2 == 0xED00007363697274)
  {

    return 3;
  }

  else
  {
    v5 = sub_24F92CE08();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t AdvertsSearchResult.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  AdvertsSearchResult.init(deserializing:using:)(a1, a2);
  return v4;
}

void *AdvertsSearchResult.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v83 = a2;
  v73 = *v3;
  v77 = sub_24F9285B8();
  v76 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v72 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v6 - 8);
  v75 = &v66 - v7;
  v68 = sub_24F91F6B8();
  v67 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v66 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F928388();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v66 - v14;
  MEMORY[0x28223BE20](v16);
  v84 = &v66 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v66 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0, &qword_24F965EC0);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v66 - v22;
  v24 = OBJC_IVAR____TtC12GameStoreKit19AdvertsSearchResult_itemBackground;
  *(v3 + OBJC_IVAR____TtC12GameStoreKit19AdvertsSearchResult_itemBackground) = 4;
  v78 = a1;
  sub_24F928398();
  sub_24F9282B8();
  v25 = *(v10 + 8);
  v80 = v9;
  v82 = v10 + 8;
  v79 = v25;
  v25(v20, v9);
  v26 = sub_24F92AC28();
  v27 = *(v26 - 8);
  v28 = (*(v27 + 48))(v23, 1, v26);
  v74 = v12;
  if (v28 == 1)
  {
    sub_24E601704(v23, &qword_27F2213B0, &qword_24F965EC0);
    v29 = MEMORY[0x277D84F90];
  }

  else
  {
    MEMORY[0x28223BE20](v28);
    *(&v66 - 2) = v30;
    type metadata accessor for MixedMediaLockup(0);
    v31 = v81;
    v29 = sub_24F92ABB8();
    v81 = v31;
    (*(v27 + 8))(v23, v26);
  }

  *(v3 + OBJC_IVAR____TtC12GameStoreKit19AdvertsSearchResult_lockups) = v29;

  v32 = v84;
  sub_24F928398();
  sub_24EECEFD0();
  sub_24F928248();
  v33 = v32;
  v34 = v80;
  v35 = v3;
  v36 = v79;
  v79(v33, v80);
  LOBYTE(v87) = v90;
  sub_24F286E00(&v87, &v94);
  v37 = v94;
  swift_beginAccess();
  *(v35 + v24) = v37;
  sub_24F928398();
  v38 = sub_24F928278();
  v36(v15, v34);
  v73 = v35;
  *(v35 + OBJC_IVAR____TtC12GameStoreKit19AdvertsSearchResult_displaysScreenshots) = v38 & 1;
  v39 = v74;
  sub_24F928398();
  v40 = sub_24F928348();
  if (v41)
  {
    *&v90 = v40;
    *(&v90 + 1) = v41;
  }

  else
  {
    v42 = v66;
    sub_24F91F6A8();
    v43 = sub_24F91F668();
    v45 = v44;
    (*(v67 + 8))(v42, v68);
    *&v90 = v43;
    *(&v90 + 1) = v45;
  }

  sub_24F92C7F8();
  v36(v39, v34);
  v46 = v84;
  sub_24F928398();
  sub_24EABA874();
  sub_24F928208();
  v36(v46, v34);
  v47 = v95;
  if (v29 >> 62)
  {
    result = sub_24F92C738();
  }

  else
  {
    result = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  LODWORD(v74) = v47;
  if (!result)
  {

    goto LABEL_15;
  }

  if ((v29 & 0xC000000000000001) == 0)
  {
    if (!*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v49 = *(v29 + 32);

    v50 = *(v49 + 264);

    if (v50)
    {
      goto LABEL_13;
    }

LABEL_15:
    v71 = 0;
    v70 = 0;
    v69 = 0;
    goto LABEL_16;
  }

  v65 = MEMORY[0x253052270](0, v29);

  v50 = *(v65 + 264);

  swift_unknownObjectRelease();
  if (!v50)
  {
    goto LABEL_15;
  }

LABEL_13:
  v71 = v50;
  v70 = type metadata accessor for Action(0);
  v69 = sub_24F287648(&qword_27F216DE8, type metadata accessor for Action, &protocol conformance descriptor for Action);
LABEL_16:
  sub_24F929608();
  sub_24F928398();
  v51 = *(v76 + 16);
  v52 = v72;
  v53 = v83;
  v54 = v77;
  v51(v72, v83, v77);
  sub_24F929548();
  type metadata accessor for SearchAdOpportunity();
  sub_24F928398();
  v51(v52, v53, v54);
  sub_24F287648(&qword_27F227228, type metadata accessor for SearchAdOpportunity, &protocol conformance descriptor for SearchAdOpportunity);
  sub_24F929548();
  v55 = v93;
  v56 = v73;
  *(v73 + OBJC_IVAR____TtC12GameStoreKit12SearchResult_searchAdOpportunity) = 0;
  sub_24E65E064(&v94, &v87);
  if (*(&v88 + 1))
  {
    v90 = v87;
    v91 = v88;
    v92 = v89;
  }

  else
  {
    v57 = v66;
    sub_24F91F6A8();
    v58 = sub_24F91F668();
    v60 = v59;
    (*(v67 + 8))(v57, v68);
    v85 = v58;
    v86 = v60;
    sub_24F92C7F8();
    sub_24E601704(&v87, &qword_27F235830, &qword_24F93B8C0);
  }

  v79(v78, v80);
  sub_24E601704(&v94, &qword_27F235830, &qword_24F93B8C0);
  v61 = v91;
  *(v56 + 3) = v90;
  *(v56 + 5) = v61;
  v62 = v71;
  v56[7] = v92;
  v56[8] = v62;
  v56[9] = 0;
  v56[10] = 0;
  v63 = v69;
  v56[11] = v70;
  v56[12] = v63;
  sub_24E65E0D4(v75, v56 + OBJC_IVAR____TtC12GameStoreKit12SearchResult_impressionMetrics);
  *(v56 + 17) = 1;
  *(v56 + 16) = v74;
  v64 = OBJC_IVAR____TtC12GameStoreKit12SearchResult_searchAdOpportunity;
  swift_beginAccess();
  *(v56 + v64) = v55;

  (*(v76 + 8))(v83, v77);
  return v56;
}

uint64_t sub_24F286C24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v14[1] = a3;
  v5 = sub_24F9285B8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F928388();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MixedMediaLockup(0);
  (*(v10 + 16))(v12, a1, v9);
  (*(v6 + 16))(v8, a2, v5);
  sub_24F287648(&qword_27F22B2C0, type metadata accessor for MixedMediaLockup, &protocol conformance descriptor for Lockup);
  return sub_24F929548();
}

void sub_24F286E00(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  if (v3 != 4 && (sub_24F0D0260(*a1, 2u) & 1) != 0)
  {
    v4 = [objc_opt_self() currentDevice];
    v5 = [v4 userInterfaceIdiom];

    if (v5 == 1)
    {
      LOBYTE(v3) = 4;
    }
  }

  *a2 = v3;
}

void sub_24F286EC8(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit19AdvertsSearchResult_itemBackground;
  swift_beginAccess();
  *a1 = *(v1 + v3);
}

void sub_24F286F1C(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC12GameStoreKit19AdvertsSearchResult_itemBackground;
  swift_beginAccess();
  *(v1 + v3) = v2;
}

uint64_t sub_24F286FCC()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit19AdvertsSearchResult_lockups);
  if (!(v1 >> 62))
  {
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

    return 0;
  }

  result = sub_24F92C738();
  if (!result)
  {
    return 0;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = *(MEMORY[0x253052270](0, v1) + 264);

    swift_unknownObjectRelease();
    return v3;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v3 = *(*(v1 + 32) + 264);

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_24F287078@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC12GameStoreKit19AdvertsSearchResult_lockups);
  if (v3 >> 62)
  {
    result = sub_24F92C738();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:
    *a1 = 0u;
    *(a1 + 16) = 0u;
    return result;
  }

  result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x253052270](0, v3);
    goto LABEL_6;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v5 = *(v3 + 32);

LABEL_6:
    result = type metadata accessor for Lockup(0);
    *(a1 + 24) = result;
    *a1 = v5;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t AdvertsSearchResult.deinit()
{
  sub_24E6585F8(v0 + 24);
  sub_24E601704(v0 + 64, qword_27F21B590, &unk_24F93BE30);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit12SearchResult_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);

  return v0;
}

uint64_t AdvertsSearchResult.__deallocating_deinit()
{
  sub_24E6585F8(v0 + 24);
  sub_24E601704(v0 + 64, qword_27F21B590, &unk_24F93BE30);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit12SearchResult_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);

  return swift_deallocClassInstance();
}

uint64_t sub_24F28726C()
{
  v1 = *(*v0 + OBJC_IVAR____TtC12GameStoreKit19AdvertsSearchResult_lockups);
  if (!(v1 >> 62))
  {
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

    return 0;
  }

  result = sub_24F92C738();
  if (!result)
  {
    return 0;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = *(MEMORY[0x253052270](0, v1) + 264);

    swift_unknownObjectRelease();
    return v3;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v3 = *(*(v1 + 32) + 264);

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_24F28731C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + OBJC_IVAR____TtC12GameStoreKit19AdvertsSearchResult_lockups);
  if (v3 >> 62)
  {
    result = sub_24F92C738();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:
    *a1 = 0u;
    *(a1 + 16) = 0u;
    return result;
  }

  result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x253052270](0, v3);
    goto LABEL_6;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v5 = *(v3 + 32);

LABEL_6:
    result = type metadata accessor for Lockup(0);
    *(a1 + 24) = result;
    *a1 = v5;
    return result;
  }

  __break(1u);
  return result;
}

void sub_24F2873C8(_BYTE *a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC12GameStoreKit19AdvertsSearchResult_itemBackground;
  swift_beginAccess();
  *a1 = *(v3 + v4);
}

void sub_24F287420(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12GameStoreKit19AdvertsSearchResult_itemBackground;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

void sub_24F287478(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC12GameStoreKit19AdvertsSearchResult_itemBackground;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

uint64_t type metadata accessor for AdvertsSearchResult(uint64_t a1)
{
  result = qword_27F23D838;
  if (!qword_27F23D838)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F287648(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t SelectAppAction.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v32 = a2;
  v27 = *v3;
  v31 = sub_24F9285B8();
  v35 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v28 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24F928388();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v27 - v11;
  v33 = a1;
  sub_24F928398();
  v13 = sub_24F928348();
  v15 = v14;
  v16 = *(v7 + 8);
  v34 = v6;
  v16(v12, v6);
  if (v15)
  {
    v17 = (v30 + OBJC_IVAR____TtC12GameStoreKit15SelectAppAction_adamId);
    *v17 = v13;
    v17[1] = v15;
    v18 = v33;
    (*(v7 + 16))(v9, v33, v34);
    v6 = v28;
    v20 = v31;
    v19 = v32;
    (*(v35 + 16))(v28, v32, v31);
    v21 = v29;
    v22 = Action.init(deserializing:using:)(v9, v6);
    if (!v21)
    {
      v6 = v22;
    }

    (*(v35 + 8))(v19, v20);
    v16(v18, v34);
  }

  else
  {
    v23 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    *v24 = 0x64496D616461;
    v25 = v27;
    v24[1] = 0xE600000000000000;
    v24[2] = v25;
    (*(*(v23 - 8) + 104))(v24, *MEMORY[0x277D22530], v23);
    swift_willThrow();
    (*(v35 + 8))(v32, v31);
    v16(v33, v34);
    swift_deallocPartialClassInstance();
  }

  return v6;
}

double SelectAppAction.adamId.getter@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC12GameStoreKit15SelectAppAction_adamId + 8);
  *a1 = *(v1 + OBJC_IVAR____TtC12GameStoreKit15SelectAppAction_adamId);
  a1[1] = v2;

  return result;
}

uint64_t SelectAppAction.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0, &unk_24F945320);

  return v0;
}

uint64_t SelectAppAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0, &unk_24F945320);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SelectAppAction(uint64_t a1)
{
  result = qword_27F23D848;
  if (!qword_27F23D848)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F287DA8()
{
  if (*v0)
  {
    return 0x5265726975716572;
  }

  else
  {
    return 0x646E7542656D6167;
  }
}

uint64_t sub_24F287DF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x646E7542656D6167 && a2 == 0xEC0000004449656CLL;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x5265726975716572 && a2 == 0xEE00687365726665)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24F92CE08();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_24F287EE0(uint64_t a1)
{
  v2 = sub_24F288184();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F287F1C(uint64_t a1)
{
  v2 = sub_24F288184();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F287F78@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_24F287FAC(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6 & 1;
  }

  return result;
}

uint64_t sub_24F287FAC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23D858, &qword_24F9DCE98);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-v5];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F288184();
  sub_24F92D108();
  if (!v1)
  {
    v9[15] = 0;
    v7 = sub_24F92CC28();
    v9[14] = 1;
    sub_24F92CC38();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v7;
}

unint64_t sub_24F288184()
{
  result = qword_27F23D860;
  if (!qword_27F23D860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23D860);
  }

  return result;
}

unint64_t sub_24F2881EC()
{
  result = qword_27F23D868;
  if (!qword_27F23D868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23D868);
  }

  return result;
}

unint64_t sub_24F288244()
{
  result = qword_27F23D870;
  if (!qword_27F23D870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23D870);
  }

  return result;
}

unint64_t sub_24F28829C()
{
  result = qword_27F23D878;
  if (!qword_27F23D878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23D878);
  }

  return result;
}

uint64_t FlowAuthorityProvider.selectedTabId.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_24F2886D8(v3);
  sub_24F91FD88();

  swift_beginAccess();
  return sub_24E65864C(v1 + 16, a1);
}

double FlowAuthorityProvider.tabs.getter()
{
  swift_getKeyPath();
  sub_24F2886D8(v0);
  sub_24F91FD88();

  return result;
}

uint64_t FlowAuthorityProvider.__allocating_init(tabsInfoProvider:objectGraph:)(__int128 *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  FlowAuthorityProvider.init(tabsInfoProvider:objectGraph:)(a1, a2);
  return v4;
}

void sub_24F28844C(uint64_t a1)
{
  v2 = v1;
  swift_getKeyPath();
  *&v8[0] = v1;
  sub_24F2886D8(v4);
  sub_24F91FD88();

  swift_beginAccess();
  sub_24E65864C(v1 + 16, v8);
  v5 = MEMORY[0x253052150](a1, v8);
  sub_24E6585F8(v8);
  if ((v5 & 1) == 0)
  {
    v6 = [objc_opt_self() standardUserDefaults];
    swift_getKeyPath();
    *&v8[0] = v2;
    sub_24F91FD88();

    sub_24E65864C(v2 + 16, v7);
    if (swift_dynamicCast())
    {
      sub_24F92C7F8();
    }

    else
    {
      memset(v8, 0, sizeof(v8));
      v9 = 0;
    }

    sub_24ED0F474(v8);
  }
}

uint64_t sub_24F2885CC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24F2886D8(v4);
  sub_24F91FD88();

  swift_beginAccess();
  return sub_24E65864C(v3 + 16, a2);
}

unint64_t sub_24F2886D8(__n128 a1)
{
  result = qword_27F220FB8;
  if (!qword_27F220FB8)
  {
    type metadata accessor for FlowAuthorityProvider(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F220FB8);
  }

  return result;
}

uint64_t type metadata accessor for FlowAuthorityProvider(uint64_t a1)
{
  result = qword_27F23D8C0;
  if (!qword_27F23D8C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t FlowAuthorityProvider.selectedTabId.setter(uint64_t a1)
{
  swift_beginAccess();
  sub_24E65864C(v1 + 16, v8);
  v3 = MEMORY[0x253052150](v8, a1);
  sub_24E6585F8(v8);
  if (v3)
  {
    sub_24E65864C(a1, v8);
    sub_24E65864C(v1 + 16, v7);
    swift_beginAccess();
    sub_24E66B73C(v8, v1 + 16);
    swift_endAccess();
    sub_24F28844C(v7);
    sub_24E6585F8(v7);
    sub_24E6585F8(v8);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x28223BE20](KeyPath);
    v8[0] = v1;
    sub_24F2886D8(v5);
    sub_24F91FD78();
  }

  return sub_24E6585F8(a1);
}

uint64_t sub_24F2888E4(uint64_t a1, uint64_t a2)
{
  sub_24E65864C(a2, v5);
  swift_beginAccess();
  sub_24E65864C(a1 + 16, v4);
  swift_beginAccess();
  sub_24E66B73C(v5, a1 + 16);
  swift_endAccess();
  sub_24F28844C(v4);
  sub_24E6585F8(v4);
  return sub_24E6585F8(v5);
}

void (*FlowAuthorityProvider.selectedTabId.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xC0uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 168) = v1;
  swift_getKeyPath();
  v4[22] = OBJC_IVAR____TtC12GameStoreKit21FlowAuthorityProvider___observationRegistrar;
  *v4 = v1;
  v4[23] = sub_24F2886D8(v5);
  sub_24F91FD88();

  *v4 = v1;
  swift_getKeyPath();
  sub_24F91FDA8();

  swift_beginAccess();
  sub_24E65864C(v1 + 16, v4);
  return sub_24F288AA0;
}

void sub_24F288AA0(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 168);
  if (a2)
  {
    sub_24E65864C(*a1, (v2 + 5));
    sub_24E65864C(v3 + 16, (v2 + 10));
    swift_beginAccess();
    sub_24E66B73C((v2 + 5), v3 + 16);
    swift_endAccess();
    sub_24F28844C((v2 + 10));
    sub_24E6585F8((v2 + 10));
  }

  else
  {
    sub_24E65864C(v3 + 16, (v2 + 5));
    swift_beginAccess();
    sub_24E66B73C(v2, v3 + 16);
    swift_endAccess();
    sub_24F28844C((v2 + 5));
  }

  sub_24E6585F8((v2 + 5));
  sub_24E6585F8(v2);
  *v2 = v3;
  swift_getKeyPath();
  sub_24F91FD98();

  free(v2);
}

uint64_t FlowAuthorityProvider.flowAuthority.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v6 = v1;
  sub_24F2886D8(v3);
  sub_24F91FD88();

  v4 = OBJC_IVAR____TtC12GameStoreKit21FlowAuthorityProvider__flowAuthority;
  swift_beginAccess();
  return sub_24F289ABC(v6 + v4, a1);
}

uint64_t sub_24F288C60@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24F2886D8(v4);
  sub_24F91FD88();

  v5 = OBJC_IVAR____TtC12GameStoreKit21FlowAuthorityProvider__flowAuthority;
  swift_beginAccess();
  return sub_24F289ABC(v3 + v5, a2);
}

uint64_t sub_24F288CF8(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23D898, &unk_24F9DD038);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10[-v5];
  sub_24F289ABC(a1, &v10[-v5]);
  v7 = *a2;
  swift_getKeyPath();
  v11 = v7;
  v12 = v6;
  v13 = v7;
  sub_24F2886D8(v8);
  sub_24F91FD78();

  return sub_24E601704(v6, &qword_27F23D898, &unk_24F9DD038);
}

uint64_t FlowAuthorityProvider.flowAuthority.setter(uint64_t a1)
{
  swift_getKeyPath();
  sub_24F2886D8(v2);
  sub_24F91FD78();

  return sub_24E601704(a1, &qword_27F23D898, &unk_24F9DD038);
}

uint64_t sub_24F288EC0(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC12GameStoreKit21FlowAuthorityProvider__flowAuthority;
  swift_beginAccess();
  sub_24F28A890(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t (*FlowAuthorityProvider.flowAuthority.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC12GameStoreKit21FlowAuthorityProvider___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_24F2886D8(v5);
  sub_24F91FD88();

  *v4 = v1;
  swift_getKeyPath();
  sub_24F91FDA8();

  swift_beginAccess();
  return sub_24F289044;
}

void sub_24F289044(void *a1)
{
  v1 = *a1;
  swift_endAccess();
  *v1 = v1[3];
  swift_getKeyPath();
  sub_24F91FD98();

  free(v1);
}

double sub_24F2890C8@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24F2886D8(v4);
  sub_24F91FD88();

  *a2 = *(v3 + OBJC_IVAR____TtC12GameStoreKit21FlowAuthorityProvider__tabs);

  return result;
}

uint64_t sub_24F2891A8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit21FlowAuthorityProvider__tabs;

  v5 = sub_24EA18320(v4, a1);

  if (v5)
  {
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v8 = MEMORY[0x28223BE20](KeyPath);
    sub_24F2886D8(v8);
    sub_24F91FD78();
  }
}

uint64_t FlowAuthorityProvider.init(tabsInfoProvider:objectGraph:)(__int128 *a1, uint64_t a2)
{
  v3 = v2;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C290, &qword_24F966880);
  v49 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v48 = &v48 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23D898, &unk_24F9DD038);
  MEMORY[0x28223BE20](v7 - 8);
  v54 = &v48 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23D8A0, &qword_24F9DD048);
  v51 = v9;
  v52 = *(v9 - 8);
  v10 = v52;
  MEMORY[0x28223BE20](v9);
  v12 = &v48 - v11;
  v13 = a1[1];
  v63 = *a1;
  v64 = v13;
  v65 = a1[2];
  v66 = *(a1 + 6);
  v58[0] = 0;
  v58[1] = 0xE000000000000000;
  sub_24F92C7F8();
  v14 = v60;
  *(v3 + 16) = v59;
  *(v3 + 32) = v14;
  *(v3 + 48) = v61;
  v53 = *(v10 + 56);
  v53(v3 + OBJC_IVAR____TtC12GameStoreKit21FlowAuthorityProvider__flowAuthority, 1, 1, v9);
  *(v3 + OBJC_IVAR____TtC12GameStoreKit21FlowAuthorityProvider__tabs) = MEMORY[0x277D84F90];
  sub_24F91FDB8();
  v15 = v3 + OBJC_IVAR____TtC12GameStoreKit21FlowAuthorityProvider_tabsInfoProvider;
  v16 = v63;
  v17 = v64;
  *v15 = v63;
  *(v15 + 16) = v17;
  v18 = v65;
  *(v15 + 32) = v65;
  v19 = v66;
  *(v15 + 48) = v66;
  *(v3 + OBJC_IVAR____TtC12GameStoreKit21FlowAuthorityProvider_objectGraph) = a2;
  v59 = v16;
  v60 = v17;
  v61 = v18;
  v62 = v19;
  v20 = swift_allocObject();
  swift_weakInit();
  sub_24F92B7F8();
  sub_24E9D3E84(&v63, v58);

  v21 = sub_24F92B7E8();
  v22 = swift_allocObject();
  v23 = MEMORY[0x277D85700];
  v22[2] = v21;
  v22[3] = v23;
  v22[4] = v20;

  v24 = swift_allocObject();
  swift_weakInit();

  v25 = sub_24F92B7E8();
  v26 = swift_allocObject();
  v26[2] = v25;
  v26[3] = v23;
  v27 = a2;
  v28 = v51;
  v26[4] = v24;

  v29 = v52;
  sub_24F9271A8();
  v30 = TabsInfoProvider.setupFlowAuthority(asPartOf:selectedTabId:)(v12, v27, v58);
  sub_24E601704(v58, &qword_27F23D8B8, &qword_24F9DD050);
  v31 = *(v29 + 16);
  v32 = v54;
  v55 = v12;
  v31(v54, v12, v28);
  v53(v32, 0, 1, v28);
  swift_getKeyPath();
  v56 = v3;
  v57 = v32;
  *&v59 = v3;
  sub_24F2886D8(v33);
  sub_24F91FD78();

  sub_24E601704(v32, &qword_27F23D898, &unk_24F9DD038);
  sub_24F2891A8(v30);
  if (qword_27F210D28 != -1)
  {
    swift_once();
  }

  if (byte_27F39D1B1)
  {
    goto LABEL_7;
  }

  type metadata accessor for ASKBagContract(0);
  sub_24F928F28();
  if (qword_27F210A68 != -1)
  {
    swift_once();
  }

  v34 = v48;
  sub_24F92A3B8();
  v35 = v50;
  sub_24F92A408();

  (*(v49 + 8))(v34, v35);
  if (v58[0])
  {
LABEL_7:
    sub_24F28A530(&v63);

    (*(v29 + 8))(v55, v28);
  }

  else
  {
    v36 = v29;
    type metadata accessor for NetworkConnectionMonitor(0);
    sub_24F928F28();
    v37 = v58[0];
    v38 = swift_allocObject();
    swift_weakInit();

    v39 = swift_allocObject();
    *(v39 + 16) = v38;
    v40 = v64;
    *(v39 + 24) = v63;
    *(v39 + 40) = v40;
    *(v39 + 56) = v65;
    *(v39 + 72) = v66;
    *(v39 + 80) = v27;
    swift_beginAccess();
    v41 = *(v37 + 24);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v37 + 24) = v41;
    v43 = v28;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v41 = sub_24E618160(0, v41[2] + 1, 1, v41);
      *(v37 + 24) = v41;
    }

    v45 = v41[2];
    v44 = v41[3];
    if (v45 >= v44 >> 1)
    {
      v41 = sub_24E618160((v44 > 1), v45 + 1, 1, v41);
    }

    v41[2] = v45 + 1;
    v46 = &v41[2 * v45];
    v46[4] = sub_24F289EF8;
    v46[5] = v39;
    *(v37 + 24) = v41;
    swift_endAccess();

    (*(v36 + 8))(v55, v43);
  }

  return v3;
}

uint64_t sub_24F289ABC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23D898, &unk_24F9DD038);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F289B48()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

void sub_24F289B80(uint64_t a2@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    swift_getKeyPath();
    *&v7[0] = v4;
    sub_24F2886D8(v5);
    sub_24F91FD88();

    swift_beginAccess();
    sub_24E65864C(v4 + 16, v7);

    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
    *(a2 + 32) = v8;
  }

  else
  {
    sub_24F92C7F8();
  }
}

double sub_24F289CB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_24E65864C(a1, v6);
    FlowAuthorityProvider.selectedTabId.setter(v6);
  }

  return result;
}

double sub_24F289D28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v16[-v7 - 8];
  v9 = sub_24F92B858();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_24F92B7F8();

  sub_24E9D3E84(a2, v16);

  v10 = sub_24F92B7E8();
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D85700];
  *(v11 + 16) = v10;
  *(v11 + 24) = v12;
  *(v11 + 32) = a1;
  v13 = *(a2 + 16);
  *(v11 + 40) = *a2;
  *(v11 + 56) = v13;
  *(v11 + 72) = *(a2 + 32);
  *(v11 + 88) = *(a2 + 48);
  *(v11 + 96) = a3;
  sub_24EA998B8(0, 0, v8, &unk_24F9DD0E8, v11);

  return result;
}

uint64_t sub_24F289E90()
{

  return swift_deallocObject();
}

uint64_t sub_24F289F08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[19] = a5;
  v6[20] = a6;
  v6[18] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23D898, &unk_24F9DD038);
  v6[21] = swift_task_alloc();
  sub_24F92B7F8();
  v6[22] = sub_24F92B7E8();
  v8 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24F289FDC, v8, v7);
}

uint64_t sub_24F289FDC()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v4 = v0[19];
    v3 = v0[20];
    type metadata accessor for ASKBagContract(0);
    sub_24F928F28();
    v5 = ASKBagContract.tabs(withFallback:bagKey:)(*(v4 + 16), *v4);
    v6 = (*(v4 + 40))(v3, v5);

    (*(v4 + 24))(v3, v6);
    sub_24F2BA384(v6);
    v0[13] = v7;
    v0[14] = v8;
    sub_24F92C7F8();

    swift_getKeyPath();
    v0[16] = v2;
    sub_24F2886D8(v9);
    sub_24F91FD88();

    v11 = sub_24EA18320(v10, v6);

    if (v11)
    {
      sub_24E6585F8((v0 + 2));
    }

    else
    {
      v12 = v0[21];
      swift_getKeyPath();
      v0[17] = v2;
      sub_24F91FD88();

      v13 = OBJC_IVAR____TtC12GameStoreKit21FlowAuthorityProvider__flowAuthority;
      swift_beginAccess();
      sub_24F289ABC(v2 + v13, v12);
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23D8A0, &qword_24F9DD048);
      v15 = *(v14 - 8);
      result = (*(v15 + 48))(v12, 1, v14);
      if (result == 1)
      {
        __break(1u);
        return result;
      }

      v17 = v0[21];

      sub_24F921868();

      (*(v15 + 8))(v17, v14);
      sub_24F2891A8(v6);

      sub_24E6585F8((v0 + 2));
    }
  }

  else
  {
  }

  v18 = v0[1];

  return v18();
}

uint64_t FlowAuthorityProvider.deinit()
{
  sub_24E6585F8(v0 + 16);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit21FlowAuthorityProvider__flowAuthority, &qword_27F23D898, &unk_24F9DD038);

  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit21FlowAuthorityProvider_tabsInfoProvider);

  v2 = OBJC_IVAR____TtC12GameStoreKit21FlowAuthorityProvider___observationRegistrar;
  v3 = sub_24F91FDC8();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return v0;
}

uint64_t FlowAuthorityProvider.__deallocating_deinit()
{
  sub_24E6585F8(v0 + 16);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit21FlowAuthorityProvider__flowAuthority, &qword_27F23D898, &unk_24F9DD038);

  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit21FlowAuthorityProvider_tabsInfoProvider);

  v2 = OBJC_IVAR____TtC12GameStoreKit21FlowAuthorityProvider___observationRegistrar;
  v3 = sub_24F91FDC8();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocClassInstance();
}

void sub_24F28A58C(uint64_t a1)
{
  sub_24F28A6B0(319);
  if (v1 <= 0x3F)
  {
    sub_24F91FDC8();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_24F28A6B0(uint64_t a1)
{
  if (!qword_27F23D8D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23D8A0, &qword_24F9DD048);
    v1 = sub_24F92C4A8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F23D8D0);
    }
  }
}

uint64_t sub_24F28A714()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24F28A784(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[12];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24E614970;

  return sub_24F289F08(a1, v4, v5, v6, (v1 + 5), v7);
}

uint64_t sub_24F28A84C()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC12GameStoreKit21FlowAuthorityProvider__tabs) = *(v0 + 24);
}

uint64_t sub_24F28A890(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23D898, &unk_24F9DD038);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t SearchAdRotationFieldsProvider.category.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24F92A2D8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t SearchAdRotationFieldsProvider.category.setter(uint64_t a1)
{
  v3 = sub_24F92A2D8();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t SearchAdRotationFieldsProvider.addMetricsFields(into:using:)(uint64_t a1)
{
  if (qword_27F210690 != -1)
  {
    swift_once();
  }

  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225078, &unk_24F976000);
  __swift_project_value_buffer(v3, qword_27F22E460);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225080, &unk_24F974C50);
  sub_24F929AC8();
  if (v14)
  {
    sub_24E612E28(&v13, v15);
    v4 = v16;
    v5 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    v6 = (*(v5 + 8))(v4, v5);
    v7 = MEMORY[0x277D83B88];
    v14 = MEMORY[0x277D83B88];
    *&v13 = v6;
    __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
    sub_24F929A28();
    __swift_destroy_boxed_opaque_existential_1(&v13);
    if (!v1)
    {
      v8 = v16;
      v9 = v17;
      __swift_project_boxed_opaque_existential_1(v15, v16);
      v10 = (*(v9 + 16))(v8, v9);
      v14 = v7;
      *&v13 = v10;
      __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
      sub_24F929A28();
      __swift_destroy_boxed_opaque_existential_1(&v13);
    }

    return __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    sub_24F28AD24(&v13);
    if (qword_27F210580 != -1)
    {
      swift_once();
    }

    v12 = sub_24F92AAE8();
    __swift_project_value_buffer(v12, qword_27F39C3E0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F9283A8();
    sub_24F92A5A8();
  }
}

uint64_t sub_24F28AD24(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F224FA0, &qword_24F975FD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24F28ADE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F92A2D8();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24F28AE60(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F92A2D8();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for SearchAdRotationFieldsProvider(uint64_t a1)
{
  result = qword_27F23D8D8;
  if (!qword_27F23D8D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F28AF38()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F28B034(uint64_t a1)
{
  sub_24F92B218();
}

uint64_t sub_24F28B11C()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

unint64_t sub_24F28B214@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24F28B3E4(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_24F28B244(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x736572746C6F6DLL;
  v5 = 0x800000024FA43510;
  v6 = 0xD000000000000018;
  v7 = 0xD000000000000013;
  v8 = 0x800000024FA43530;
  if (v2 != 3)
  {
    v7 = 0xD00000000000001CLL;
    v8 = 0x800000024FA43550;
  }

  if (v2 != 2)
  {
    v6 = v7;
    v5 = v8;
  }

  if (*v1)
  {
    v4 = 0x7265764F656D6167;
    v3 = 0xED0000495579616CLL;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_24F28B300()
{
  result = qword_27F23D8E8;
  if (!qword_27F23D8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23D8E8);
  }

  return result;
}

const char *sub_24F28B354()
{
  if (*v0 == 3)
  {
    return "GameCenter";
  }

  else
  {
    return "gseui";
  }
}

const char *sub_24F28B384()
{
  v1 = *v0;
  v2 = "5pqn2upm";
  v3 = "ma1h52";
  if (v1 != 3)
  {
    v3 = "now_playing_feature_entry_points";
  }

  if (v1 < 2)
  {
    v2 = "de7bbd8e";
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

unint64_t sub_24F28B3E4(uint64_t a1, uint64_t a2)
{
  v2 = sub_24F92CB88();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

uint64_t SmallStoryCardLayout.init(contentView:headingLabel:descriptionLabel:metrics:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_24E612C80(a1, a5);
  sub_24E612C80(a2, a5 + 40);
  sub_24E612C80(a3, a5 + 80);
  v9 = a5 + *(type metadata accessor for SmallStoryCardLayout(0) + 28);

  return sub_24F28B528(a4, v9);
}

uint64_t sub_24F28B528(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SmallStoryCardLayout.Metrics(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t SmallStoryCardLayout.Metrics.contentAspectRatio.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24F922348();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t SmallStoryCardLayout.Metrics.init(contentAspectRatio:headingPrimarySpace:descriptionPrimarySpace:headingSecondarySpace:descriptionSecondarySpace:descriptionBottomSpace:descriptionNumberOfLines:headingNumberOfLines:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v18 = sub_24F922348();
  (*(*(v18 - 8) + 32))(a9, a1, v18);
  v19 = type metadata accessor for SmallStoryCardLayout.Metrics(0);
  sub_24E612C80(a2, a9 + v19[5]);
  sub_24E612C80(a3, a9 + v19[7]);
  sub_24E612C80(a4, a9 + v19[6]);
  sub_24E612C80(a5, a9 + v19[8]);
  result = sub_24E612C80(a6, a9 + v19[9]);
  *(a9 + v19[11]) = a7;
  *(a9 + v19[10]) = a8;
  return result;
}

uint64_t SmallStoryCardLayout.metrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SmallStoryCardLayout(0) + 28);

  return sub_24F28B8C0(v3, a1);
}

uint64_t sub_24F28B8C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SmallStoryCardLayout.Metrics(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double static SmallStoryCardLayout.estimatedMeasurements(fitting:using:in:)(uint64_t a1, id a2, double a3, double a4)
{
  v7 = [a2 traitCollection];
  _s12GameStoreKit20SmallStoryCardLayoutV21estimatedMeasurements7fitting5using4withSo14JUMeasurementsVSo6CGSizeV_AC7MetricsVSo17UITraitCollectionCtFZ_0(a1, v7, a3, a4);
  v9 = v8;

  return v9;
}

uint64_t SmallStoryCardLayout.placeChildren(relativeTo:in:)@<X0>(uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v7 = v6;
  v34 = a2;
  v12 = sub_24F9221D8();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38.origin.x = a3;
  v38.origin.y = a4;
  v38.size.width = a5;
  v38.size.height = a6;
  MinX = CGRectGetMinX(v38);
  v39.origin.x = a3;
  v39.origin.y = a4;
  v39.size.width = a5;
  v39.size.height = a6;
  MinY = CGRectGetMinY(v39);
  v40.origin.x = a3;
  v40.origin.y = a4;
  v40.size.width = a5;
  v40.size.height = a6;
  Width = CGRectGetWidth(v40);
  v19 = v6 + *(type metadata accessor for SmallStoryCardLayout(0) + 28);
  v41.origin.x = a3;
  v41.origin.y = a4;
  v41.size.width = a5;
  v41.size.height = a6;
  v33 = a6;
  CGRectGetWidth(v41);
  sub_24F922308();
  v21 = v20;
  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  sub_24F922228();
  v42.origin.x = a3;
  v42.origin.y = a4;
  v42.size.width = a5;
  v42.size.height = a6;
  v32 = CGRectGetMinX(v42);
  v43.origin.x = MinX;
  v43.origin.y = MinY;
  v43.size.width = Width;
  v43.size.height = v21;
  MaxY = CGRectGetMaxY(v43);
  v44.origin.x = a3;
  v44.origin.y = a4;
  v44.size.width = a5;
  v44.size.height = a6;
  v30 = CGRectGetWidth(v44);
  v45.origin.x = a3;
  v45.origin.y = a4;
  v45.size.width = a5;
  v45.size.height = a6;
  Height = CGRectGetHeight(v45);
  v46.origin.x = MinX;
  v46.origin.y = MinY;
  v46.size.width = Width;
  v46.size.height = v21;
  v23 = Height - CGRectGetHeight(v46);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213C50, &unk_24F9AFC90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A400;
  v25 = type metadata accessor for SmallStoryCardLayout.Metrics(0);
  v26 = *(v25 + 20);
  v37 = 0;
  v35 = 0u;
  v36 = 0u;
  sub_24E615E00((v7 + 5), inited + 32);
  sub_24E615E00(&v19[v26], inited + 80);
  sub_24E930DFC(&v35, inited + 120);
  *(inited + 72) = 1;
  *(inited + 160) = 2;
  sub_24E930E6C(&v35);
  v27 = *(v25 + 28);
  v37 = 0;
  v35 = 0u;
  v36 = 0u;
  sub_24E615E00((v7 + 10), inited + 168);
  sub_24E615E00(&v19[v27], inited + 216);
  sub_24E930DFC(&v35, inited + 256);
  *(inited + 208) = 1;
  *(inited + 296) = 8;
  sub_24E930E6C(&v35);
  LOBYTE(v35) = 0;
  *(&v35 + 1) = inited;
  _VerticalFlowLayout.placeChildren(relativeTo:in:)(v15, v32, MaxY, v30, v23);
  (*(v13 + 8))(v15, v12);

  return sub_24F922128();
}

uint64_t sub_24F28BD04(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v10 = sub_24F28C760(&qword_27F23D918, &protocol conformance descriptor for SmallStoryCardLayout);
  v11.n128_f64[0] = a4;
  v12.n128_f64[0] = a5;

  return MEMORY[0x282180FC8](a1, a2, v10, a3, v11, v12);
}

double sub_24F28BD8C(uint64_t a1, id a2, double a3, double a4)
{
  v7 = [a2 traitCollection];
  _s12GameStoreKit20SmallStoryCardLayoutV21estimatedMeasurements7fitting5using4withSo14JUMeasurementsVSo6CGSizeV_AC7MetricsVSo17UITraitCollectionCtFZ_0(a1, v7, a3, a4);
  v9 = v8;

  return v9;
}

uint64_t _s12GameStoreKit20SmallStoryCardLayoutV21estimatedMeasurements7fitting5using4withSo14JUMeasurementsVSo6CGSizeV_AC7MetricsVSo17UITraitCollectionCtFZ_0(uint64_t a1, void *a2, double a3, double a4)
{
  v27 = a2;
  v5 = sub_24F922348();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F9225E8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24F922618();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 104))(v12, *MEMORY[0x277D22788], v9, v15);
  sub_24F9225F8();
  (*(v6 + 16))(v8, a1, v5);
  v30 = sub_24F922768();
  v31 = MEMORY[0x277D22818];
  __swift_allocate_boxed_opaque_existential_1(v29);
  sub_24F922778();
  sub_24F922608();
  __swift_destroy_boxed_opaque_existential_1(v29);
  v18 = type metadata accessor for SmallStoryCardLayout.Metrics(0);
  sub_24E615E00(a1 + v18[5], v28);
  v19 = sub_24F9229A8();
  v20 = MEMORY[0x277D228E0];
  v30 = v19;
  v31 = MEMORY[0x277D228E0];
  __swift_allocate_boxed_opaque_existential_1(v29);
  sub_24F9229B8();
  sub_24F922608();
  __swift_destroy_boxed_opaque_existential_1(v29);
  result = sub_24E615E00(a1 + v18[6], v28);
  if (__OFSUB__(*(a1 + v18[10]), 1))
  {
    __break(1u);
  }

  else
  {
    v30 = v19;
    v31 = v20;
    __swift_allocate_boxed_opaque_existential_1(v29);
    sub_24F9229B8();
    sub_24F922608();
    __swift_destroy_boxed_opaque_existential_1(v29);
    sub_24E615E00(a1 + v18[7], v28);
    v30 = v19;
    v31 = v20;
    __swift_allocate_boxed_opaque_existential_1(v29);
    sub_24F9229B8();
    sub_24F922608();
    __swift_destroy_boxed_opaque_existential_1(v29);
    result = sub_24E615E00(a1 + v18[8], v28);
    if (!__OFSUB__(*(a1 + v18[11]), 1))
    {
      v30 = v19;
      v31 = v20;
      __swift_allocate_boxed_opaque_existential_1(v29);
      sub_24F9229B8();
      sub_24F922608();
      __swift_destroy_boxed_opaque_existential_1(v29);
      sub_24E615E00(a1 + v18[9], v28);
      v30 = v19;
      v31 = v20;
      __swift_allocate_boxed_opaque_existential_1(v29);
      sub_24F9229B8();
      sub_24F922608();
      __swift_destroy_boxed_opaque_existential_1(v29);
      sub_24F922A18();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F223440, &qword_24F941F10);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_24F941C80;
      v23 = v27;
      *(v22 + 32) = v27;
      v24 = v23;
      v25 = sub_24F922A28();
      sub_24F922288();

      return (*(v14 + 8))(v17, v13);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24F28C30C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for SmallStoryCardLayout.Metrics(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24F28C3CC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for SmallStoryCardLayout.Metrics(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24F28C470(uint64_t a1)
{
  result = sub_24E8EFB54(319, &qword_27F237A20, MEMORY[0x277D22640]);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for SmallStoryCardLayout.Metrics(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_24F28C520(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F922348();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_24F28C5F4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24F922348();
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

uint64_t sub_24F28C6B0(uint64_t a1)
{
  result = sub_24F922348();
  if (v2 <= 0x3F)
  {
    result = sub_24E8EFB54(319, &qword_27F237A40, MEMORY[0x277D226C0]);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_24F28C760(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SmallStoryCardLayout(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t SponsoredSearchSession.__allocating_init(term:requestData:advertPipeline:)(uint64_t a1, uint64_t a2, _OWORD *a3, __int128 *a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = a3[1];
  *(v8 + 32) = *a3;
  *(v8 + 48) = v9;
  v10 = a3[3];
  *(v8 + 64) = a3[2];
  *(v8 + 80) = v10;
  sub_24E612C80(a4, v8 + 96);
  return v8;
}

uint64_t SponsoredSearchSession.init(term:requestData:advertPipeline:)(uint64_t a1, uint64_t a2, _OWORD *a3, __int128 *a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v5 = a3[1];
  *(v4 + 32) = *a3;
  *(v4 + 48) = v5;
  v6 = a3[3];
  *(v4 + 64) = a3[2];
  *(v4 + 80) = v6;
  sub_24E612C80(a4, v4 + 96);
  return v4;
}

uint64_t SponsoredSearchSession.term.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t SponsoredSearchSession.requestData.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[3];
  v7[0] = v1[2];
  v7[1] = v2;
  v4 = v1[5];
  v8 = v1[4];
  v3 = v8;
  v9 = v4;
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  return sub_24F28C8C0(v7, &v6);
}

uint64_t SponsoredSearchSession.deinit()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 96));
  return v0;
}

uint64_t SponsoredSearchSession.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 96));

  return swift_deallocClassInstance();
}

uint64_t sub_24F28CA74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AchievementsPageIntent(0);
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

uint64_t sub_24F28CB44(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AchievementsPageIntent(0);
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

void sub_24F28CC1C(uint64_t a1)
{
  type metadata accessor for AchievementsPageIntent(319);
  if (v1 <= 0x3F)
  {
    sub_24F928FD8();
    if (v2 <= 0x3F)
    {
      sub_24F28CCB8(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24F28CCB8(uint64_t a1)
{
  if (!qword_27F23D930)
  {
    type metadata accessor for AchievementsByGameOptionProvider(255);
    v1 = sub_24F926F68();
    if (!v2)
    {
      atomic_store(v1, &qword_27F23D930);
    }
  }
}

uint64_t sub_24F28CD2C@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for AchievementsPageIntent(0);
  MEMORY[0x28223BE20](v4);
  v52 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216F48, &unk_24F944850);
  MEMORY[0x28223BE20](v51);
  v50 = &v41 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2156F0, &unk_24F969070);
  v48 = *(v7 - 8);
  v49 = v7;
  MEMORY[0x28223BE20](v7);
  v46 = &v41 - v8;
  v41 = sub_24F92A498();
  v45 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24F91F648();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v42 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v41 - v14;
  v16 = type metadata accessor for AchievementsByGameView(0);
  v17 = v16 - 8;
  v18 = *(v16 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  v53 = v4;
  v57[3] = v4;
  v47 = sub_24F293354(&qword_27F21D2F8, type metadata accessor for AchievementsPageIntent, &protocol conformance descriptor for AchievementsPageIntent);
  v57[4] = v47;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v57);
  sub_24F28EB28(v2, boxed_opaque_existential_1, type metadata accessor for AchievementsPageIntent);
  v20 = *(v2 + *(v17 + 28));
  sub_24F28EB28(v2, &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AchievementsByGameView);
  v21 = (*(v18 + 80) + 16) & ~*(v18 + 80);
  v22 = swift_allocObject();
  sub_24F28F9D8(&v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21, type metadata accessor for AchievementsByGameView);
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0, &qword_24F9407C0);
  swift_storeEnumTagMultiPayload();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23D938, &qword_24F9DD4A0);
  v24 = v23[13];
  *(a1 + v24) = swift_getKeyPath();
  v25 = v41;
  swift_storeEnumTagMultiPayload();
  v26 = a1 + v23[14];
  *v26 = swift_getKeyPath();
  v26[8] = 0;
  v27 = a1 + v23[15];
  *v27 = swift_getKeyPath();
  v27[8] = 0;
  v28 = v23[16];
  *(a1 + v28) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898, &unk_24F944150);
  swift_storeEnumTagMultiPayload();
  sub_24F91F618();
  (*(v11 + 16))(v42, v15, v10);
  sub_24F926F28();
  (*(v11 + 8))(v15, v10);
  v29 = a1 + v23[18];
  LOBYTE(v54) = 1;
  sub_24F926F28();
  v30 = v56;
  *v29 = v55;
  *(v29 + 1) = v30;
  v31 = (a1 + v23[30]);
  sub_24F929EB8();
  v54 = sub_24F929EA8();
  sub_24F926F28();
  v32 = v56;
  *v31 = v55;
  v31[1] = v32;
  v33 = v43;
  sub_24E615E00(v57, a1 + v23[19]);
  sub_24F928F28();
  if (qword_27F2108A8 != -1)
  {
    swift_once();
  }

  v34 = v46;
  sub_24F92A448();
  v35 = v49;
  sub_24F92A408();
  (*(v48 + 8))(v34, v35);
  (*(v45 + 8))(v33, v25);
  v36 = v56;
  v37 = (a1 + v23[23]);
  *v37 = v55;
  v37[1] = v36;
  sub_24F929158();
  sub_24F928F28();
  type metadata accessor for LocalPlayerProvider(0);
  sub_24F928EF8();
  *(a1 + v23[25]) = v55;
  v38 = (a1 + v23[27]);
  *v38 = CGSizeMake;
  v38[1] = 0;
  v39 = (a1 + v23[28]);
  *v39 = sub_24F28F67C;
  v39[1] = v22;
  *(a1 + v23[20]) = v20;
  *(a1 + v23[22]) = 1;
  *(a1 + v23[21]) = 2;
  type metadata accessor for FeedRefreshNotifier(0);

  sub_24F928F28();
  *(a1 + v23[26]) = v55;
  type metadata accessor for NetworkConnectionMonitor(0);
  sub_24F928F28();
  *(a1 + v23[31]) = v55;
  sub_24F28EB28(boxed_opaque_existential_1, v52, type metadata accessor for AchievementsPageIntent);
  type metadata accessor for Page(0);
  sub_24F9217D8();
  sub_24F926F28();

  return __swift_destroy_boxed_opaque_existential_1(v57);
}

uint64_t sub_24F28D4F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2156F0, &unk_24F969070);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v23 - v8;
  v10 = sub_24F92A498();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F28EB28(a1, a3, type metadata accessor for Page);
  v14 = type metadata accessor for AchievementsByGameView(0);
  sub_24F928F28();
  if (qword_27F211860 != -1)
  {
    swift_once();
  }

  sub_24F92A448();
  sub_24F92A408();
  (*(v7 + 8))(v9, v6);
  (*(v11 + 8))(v13, v10);
  v15 = v24;
  v16 = v25;
  v17 = (a2 + *(v14 + 24));
  v19 = *v17;
  v18 = v17[1];
  v24 = v19;
  v25 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23D940, &qword_24F9DD560);
  sub_24F926F38();
  v20 = v23[1];
  result = type metadata accessor for AchievementsByGameView.PageContent(0);
  v22 = (a3 + *(result + 20));
  *v22 = v15;
  v22[1] = v16;
  *(a3 + *(result + 24)) = v20;
  return result;
}

uint64_t sub_24F28D770@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  v2 = type metadata accessor for AchievementsByGameView.PageContent(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v36 = v4;
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21ED68, &unk_24F95E420);
  MEMORY[0x28223BE20](v41);
  v37 = &v28 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23D960, &unk_24F9DD5D0);
  v8 = *(v7 - 8);
  v42 = v7;
  v43 = v8;
  MEMORY[0x28223BE20](v7);
  v40 = &v28 - v9;
  v10 = *(v1 + *(type metadata accessor for Page(0) + 48));
  v39 = v1;
  v45 = v10;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21ED70, &qword_24F990C40);
  sub_24E602068(&qword_27F21ED78, &qword_27F21ED70, &qword_24F990C40, MEMORY[0x277D83980]);
  sub_24F921BA8();
  KeyPath = swift_getKeyPath();
  v38 = type metadata accessor for AchievementsByGameView.PageContent;
  v11 = v5;
  v33 = v5;
  sub_24F28EB28(v1, v5, type metadata accessor for AchievementsByGameView.PageContent);
  v12 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v13 = swift_allocObject();
  v35 = type metadata accessor for AchievementsByGameView.PageContent;
  sub_24F28F9D8(v11, v13 + v12, type metadata accessor for AchievementsByGameView.PageContent);
  v14 = swift_allocObject();
  *(v14 + 16) = sub_24F28FA40;
  *(v14 + 24) = v13;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23D968, &qword_24F9DD608);
  v31 = sub_24E602068(&qword_27F21ED88, &qword_27F21ED68, &unk_24F95E420, MEMORY[0x277D7EC38]);
  v30 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2315B8, &qword_24F9DD610);
  v29 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F23D970, &unk_24F9DD618);
  v15 = sub_24F921C98();
  v16 = sub_24F921C78();
  v17 = sub_24E602068(&qword_27F2315C8, &qword_27F2315B8, &qword_24F9DD610, MEMORY[0x277D21CF8]);
  v18 = sub_24E602068(&qword_27F23D978, &qword_27F23D970, &unk_24F9DD618, MEMORY[0x277D7EC28]);
  v19 = sub_24F293354(&qword_27F2315D0, MEMORY[0x277D7ECA0], MEMORY[0x277D7EC98]);
  v20 = sub_24F293354(&qword_27F2315D8, MEMORY[0x277D7EC90], MEMORY[0x277D7EC88]);
  v21 = sub_24E602068(&qword_27F21EDE0, &qword_27F213768, &unk_24F93F770, MEMORY[0x277D21AD8]);
  v22 = sub_24F293354(&qword_27F238838, type metadata accessor for GSKShelf, &protocol conformance descriptor for GSKShelf);
  v45 = v30;
  v46 = v29;
  v47 = v15;
  v48 = v16;
  v49 = v17;
  v50 = v18;
  v51 = v19;
  v52 = v20;
  v53 = v21;
  v54 = v22;
  swift_getOpaqueTypeConformance2();
  v23 = v40;
  sub_24F927228();
  type metadata accessor for AchievementsByGameShelfIntent(0);
  v24 = v33;
  sub_24F28EB28(v39, v33, v38);
  v25 = swift_allocObject();
  sub_24F28F9D8(v24, v25 + v12, v35);
  sub_24F2915D0();
  sub_24F293354(&qword_27F215158, type metadata accessor for AchievementsByGameShelfIntent, &protocol conformance descriptor for AchievementsByGameShelfIntent);
  v26 = v42;
  sub_24F925EF8();

  return (*(v43 + 8))(v23, v26);
}

uint64_t sub_24F28DD98@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v31 = a1;
  v35 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2315B8, &qword_24F9DD610);
  v28 = v6;
  v30 = *(v6 - 8);
  v7 = v30;
  MEMORY[0x28223BE20](v6);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v28 - v10;
  v12 = type metadata accessor for AchievementsByGameView.PageContent(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23D988, &qword_24F9DD638);
  v16 = *(v15 - 8);
  v33 = v15;
  v34 = v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v28 - v17;
  sub_24F28EB28(a3, &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AchievementsByGameView.PageContent);
  v19 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v20 = swift_allocObject();
  sub_24F28F9D8(&v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19, type metadata accessor for AchievementsByGameView.PageContent);
  *(v20 + ((v14 + v19 + 7) & 0xFFFFFFFFFFFFFFF8)) = v31;
  v21 = __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v22 = MEMORY[0x28223BE20](v21);
  (*(v24 + 16))(&v28 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213768, &unk_24F93F770);
  v29 = v11;
  sub_24F928D38();
  (*(v7 + 16))(v32, v11, v6);
  v31 = sub_24F921C98();
  sub_24F921C78();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23D990, &qword_24F9DD640);
  sub_24E602068(&qword_27F2315C8, &qword_27F2315B8, &qword_24F9DD610, MEMORY[0x277D21CF8]);
  sub_24F293354(&qword_27F2315D0, MEMORY[0x277D7ECA0], MEMORY[0x277D7EC98]);
  sub_24F293354(&qword_27F2315D8, MEMORY[0x277D7EC90], MEMORY[0x277D7EC88]);
  sub_24E602068(&qword_27F23D998, &qword_27F23D990, &qword_24F9DD640, &unk_24F9C4E78);
  sub_24E602068(&qword_27F21EDE0, &qword_27F213768, &unk_24F93F770, MEMORY[0x277D21AD8]);
  v25 = v28;
  sub_24F9216F8();
  (*(v30 + 8))(v29, v25);
  sub_24F293354(&qword_27F238838, type metadata accessor for GSKShelf, &protocol conformance descriptor for GSKShelf);
  v26 = v33;
  sub_24F921708();
  return (*(v34 + 8))(v18, v26);
}

uint64_t sub_24F28E330@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v8 = type metadata accessor for AchievementsByGameView.PageContent(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = type metadata accessor for GSKShelf(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v27[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = *(a2 + *(type metadata accessor for Page(0) + 84));
  sub_24F28EB28(a1, v13, type metadata accessor for GSKShelf);
  sub_24F28EB28(a2, &v27[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for AchievementsByGameView.PageContent);
  v15 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v16 = swift_allocObject();
  sub_24F28F9D8(&v27[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)], v16 + v15, type metadata accessor for AchievementsByGameView.PageContent);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23D990, &qword_24F9DD640);
  v18 = &a4[v17[14]];
  *v18 = swift_getKeyPath();
  v18[8] = 0;
  v19 = &a4[v17[15]];
  v27[15] = 0;
  sub_24F926F28();
  v20 = v28;
  *v19 = v27[16];
  *(v19 + 1) = v20;
  v21 = v17[16];
  *&a4[v21] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EE58, &unk_24F9C4F00);
  swift_storeEnumTagMultiPayload();
  *a4 = v14;
  sub_24E64346C(&a4[v17[9]]);
  result = sub_24F2933A4(v13, type metadata accessor for GSKShelf);
  v23 = &a4[v17[10]];
  *v23 = a3;
  v23[8] = 0;
  v24 = &a4[v17[11]];
  *v24 = sub_24F2932C0;
  v24[1] = v16;
  v25 = &a4[v17[12]];
  *v25 = 0;
  v25[1] = 0;
  v26 = &a4[v17[13]];
  *v26 = 0;
  v26[1] = 0;
  return result;
}

uint64_t sub_24F28E5D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23D9A0, &qword_24F9DD6A8);
  MEMORY[0x28223BE20](v5);
  v7 = v17 - v6;
  v8 = type metadata accessor for AchievementsByGameAccessoryView(0);
  MEMORY[0x28223BE20](v8);
  v10 = (v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_24E836C08(a1, v17);
  if (v20 == 2 && (v11 = vorrq_s8(v18, v19), !(*&vorr_s8(*v11.i8, *&vextq_s8(v11, v11, 8uLL)) | v17[2] | v17[1] | v17[0])))
  {
    v13 = (a3 + *(type metadata accessor for AchievementsByGameView.PageContent(0) + 20));
    v14 = v13[1];
    *v10 = *v13;
    v10[1] = v14;
    type metadata accessor for AchievementsByGameOptionProvider(0);
    sub_24F293354(&qword_27F215218, type metadata accessor for AchievementsByGameOptionProvider, &unk_24F98F2B8);

    sub_24F927378();
    v15 = v10 + *(v8 + 24);
    *v15 = swift_getKeyPath();
    v15[40] = 0;
    v16 = *(v8 + 28);
    *(v10 + v16) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212938, &qword_24F939770);
    swift_storeEnumTagMultiPayload();
    sub_24F28EB28(v10, v7, type metadata accessor for AchievementsByGameAccessoryView);
    swift_storeEnumTagMultiPayload();
    sub_24F293354(qword_27F23D9A8, type metadata accessor for AchievementsByGameAccessoryView, &unk_24F9B4D18);
    sub_24F924E28();
    return sub_24F2933A4(v10, type metadata accessor for AchievementsByGameAccessoryView);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_24F293354(qword_27F23D9A8, type metadata accessor for AchievementsByGameAccessoryView, &unk_24F9B4D18);
    sub_24F924E28();
    return sub_24E836C64(v17);
  }
}