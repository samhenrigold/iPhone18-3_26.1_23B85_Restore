unint64_t sub_1D7E9F44C()
{
  result = qword_1EDBB2F68;
  if (!qword_1EDBB2F68)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDBB2F68);
  }

  return result;
}

uint64_t sub_1D7E9F490(void *a1, uint64_t a2)
{
  v2 = a1;
  v34 = *a1;
  v35 = a2;
  v3 = v34[11];
  v4 = v34[10];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8 = swift_getAssociatedConformanceWitness();
  v36 = AssociatedTypeWitness;
  v37 = v6;
  v38 = AssociatedConformanceWitness;
  v39 = v8;
  v9 = type metadata accessor for BlueprintSection(0, &v36);
  v32 = *(v9 - 8);
  v33 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v31 = &v30 - v10;
  v36 = AssociatedTypeWitness;
  v37 = v6;
  v38 = AssociatedConformanceWitness;
  v39 = v8;
  v11 = type metadata accessor for Blueprint(255, &v36);
  swift_getWitnessTable();
  v12 = sub_1D8190E64();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v30 - v14;
  v16 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v30 - v18;
  v20 = v34[15];
  v34 = v2;
  v30 = v20;
  BlueprintProviderType.blueprint.getter(v4, v3);
  sub_1D81918B4();
  v21 = *(v16 + 8);
  v21(v19, v11);
  v36 = sub_1D818E974();
  swift_getWitnessTable();
  LOBYTE(v2) = sub_1D8191254();
  (*(v13 + 8))(v15, v12);
  if ((v2 & 1) == 0)
  {
    return 0;
  }

  v22 = sub_1D818E964();
  BlueprintProviderType.blueprint.getter(v4, v3);
  sub_1D818E974();
  v23 = v31;
  Blueprint.subscript.getter();
  v21(v19, v11);
  v24 = v33;
  v28 = BlueprintSection.endIndex.getter(v33, v25, v26, v27);
  result = (*(v32 + 8))(v23, v24);
  if (!__OFSUB__(v28, 1))
  {
    return v22 == v28 - 1;
  }

  __break(1u);
  return result;
}

double sub_1D7E9F894()
{
  v0 = type metadata accessor for BlueprintCompositionalListItemSeparatorOptions(0);
  __swift_allocate_value_buffer(v0, qword_1EDBAEA50);
  v1 = __swift_project_value_buffer(v0, qword_1EDBAEA50);
  if (sub_1D8190B24())
  {
    v2 = 16.0;
  }

  else
  {
    v2 = 0.0;
  }

  v3 = *(v0 + 24);
  v4 = sub_1D8190044();
  __swift_storeEnumTagSinglePayload(v1 + v3, 1, 1, v4);
  *(v1 + 32) = 0;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  result = 16.0;
  *(v1 + 40) = xmmword_1D81A1C50;
  *(v1 + 56) = v2;
  return result;
}

uint64_t BlueprintCompositionalListItemSeparatorOptions.init(topSeparatorInsets:bottomSeparatorInsets:bottomSeparatorVisibility:)@<X0>(uint64_t a1@<X0>, double *a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>, double a7@<D4>, double a8@<D5>, double a9@<D6>, double a10@<D7>)
{
  *a2 = a3;
  a2[1] = a4;
  a2[2] = a5;
  a2[3] = a6;
  a2[4] = a7;
  a2[5] = a8;
  a2[6] = a9;
  a2[7] = a10;
  v11 = a2 + *(type metadata accessor for BlueprintCompositionalListItemSeparatorOptions(0) + 24);

  return sub_1D7E9F98C(a1, v11, v12);
}

uint64_t sub_1D7E9F98C(uint64_t a1, uint64_t a2, double a3)
{
  sub_1D7E9F1D8(0, a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D7E9F9F0(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void (*a6)(id, id, uint64_t))
{
  v10 = sub_1D818E994();
  OUTLINED_FUNCTION_9();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_15();
  v16 = v15 - v14;
  sub_1D818E924();
  v17 = a3;
  v18 = a4;
  v19 = a1;
  a6(v17, v18, v16);

  return (*(v12 + 8))(v16, v10);
}

void sub_1D7E9FB60(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  if ([a1 respondsToSelector_])
  {
    swift_unknownObjectRetain();
    v9 = sub_1D818E8E4();
    [a1 *a5];
    swift_unknownObjectRelease();
  }
}

uint64_t sub_1D7E9FC30(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void (*a6)(uint64_t))
{
  v10 = sub_1D818E994();
  OUTLINED_FUNCTION_9();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_15();
  v16 = v15 - v14;
  sub_1D818E924();
  v17 = a3;
  v18 = a4;
  v19 = a1;
  v20 = OUTLINED_FUNCTION_4_8();
  a6(v20);

  return (*(v12 + 8))(v16, v10);
}

uint64_t BlueprintLayoutCollectionLayoutAttributes.copy(with:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v45 = a2;
  ObjectType = swift_getObjectType();
  v42 = ObjectType;
  OUTLINED_FUNCTION_9_30();
  v44 = v6;
  sub_1D7E5951C(0, v7, v8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v43 = &v42 - v10;
  sub_1D7E5951C(0, qword_1EDBB5AF8, type metadata accessor for CollectionViewSupplementaryKind.Source);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - v13;
  v63.receiver = v3;
  v63.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v63, sel_copyWithZone_, a1, v12);
  v16 = &v3[OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_pinTrait];
  OUTLINED_FUNCTION_8_4(&v3[OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_pinTrait], v62);
  v17 = *v16;
  v18 = v16[8];
  v19 = &v15[OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_pinTrait];
  OUTLINED_FUNCTION_56(&v15[OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_pinTrait], v61);
  *v19 = v17;
  v19[8] = v18;
  v20 = OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_rubberbandTrait;
  OUTLINED_FUNCTION_8_4(&v3[OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_rubberbandTrait], v60);
  LOBYTE(v20) = v3[v20];
  v21 = OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_rubberbandTrait;
  OUTLINED_FUNCTION_56(&v15[OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_rubberbandTrait], v59);
  v15[v21] = v20;
  v22 = OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_rubberbandEdge;
  OUTLINED_FUNCTION_8_4(&v3[OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_rubberbandEdge], v58);
  LOBYTE(v22) = v3[v22];
  v23 = OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_rubberbandEdge;
  OUTLINED_FUNCTION_56(&v15[OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_rubberbandEdge], v57);
  v15[v23] = v22;
  v24 = OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_source;
  OUTLINED_FUNCTION_8_4(&v3[OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_source], &v56);
  sub_1D7EA2620(&v3[v24], v14, qword_1EDBB5AF8, type metadata accessor for CollectionViewSupplementaryKind.Source);
  v25 = OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_source;
  OUTLINED_FUNCTION_15_2(&v15[OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_source], v54);
  sub_1D7EA2670(v14, &v15[v25], qword_1EDBB5AF8, type metadata accessor for CollectionViewSupplementaryKind.Source);
  swift_endAccess();
  v26 = OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_model;
  OUTLINED_FUNCTION_8_4(&v3[OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_model], &v55);
  sub_1D7EA2620(&v3[v26], v54, &qword_1EDBB44D0, sub_1D7FDADC0);
  v27 = OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_model;
  OUTLINED_FUNCTION_15_2(&v15[OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_model], v53);
  sub_1D7EA2670(v54, &v15[v27], &qword_1EDBB44D0, sub_1D7FDADC0);
  swift_endAccess();
  v28 = OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_layoutData;
  OUTLINED_FUNCTION_8_4(&v3[OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_layoutData], v53);
  sub_1D7E7B91C(&v3[v28], v54);
  v29 = OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_layoutData;
  OUTLINED_FUNCTION_15_2(&v15[OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_layoutData], v52);
  sub_1D7E5C8DC(v54, &v15[v29]);
  swift_endAccess();
  v30 = OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_isEditing;
  OUTLINED_FUNCTION_8_4(&v3[OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_isEditing], v54);
  LOBYTE(v30) = v3[v30];
  v31 = OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_isEditing;
  OUTLINED_FUNCTION_56(&v15[OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_isEditing], v52);
  v15[v31] = v30;
  v32 = OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_isSelected;
  OUTLINED_FUNCTION_8_4(&v3[OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_isSelected], &v51);
  LOBYTE(v32) = v3[v32];
  v33 = OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_isSelected;
  OUTLINED_FUNCTION_56(&v15[OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_isSelected], &v50);
  v15[v33] = v32;
  v34 = OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_isPlugin;
  OUTLINED_FUNCTION_8_4(&v3[OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_isPlugin], &v49);
  LOBYTE(v34) = v3[v34];
  v35 = OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_isPlugin;
  OUTLINED_FUNCTION_56(&v15[OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_isPlugin], &v48);
  v15[v35] = v34;
  OUTLINED_FUNCTION_12_36(OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_originalFrame);
  OUTLINED_FUNCTION_12_36(OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_previousFrame);
  OUTLINED_FUNCTION_16_31(OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_resizingIdentifier);

  OUTLINED_FUNCTION_16_31(OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_resizingGroupIdentifier);

  v36 = OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_compositionalIndexPath;
  OUTLINED_FUNCTION_8_4(&v3[OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_compositionalIndexPath], &v47);
  v38 = v43;
  v37 = v44;
  sub_1D7EA2620(&v3[v36], v43, &qword_1EDBBC690, v44);
  v39 = OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_compositionalIndexPath;
  OUTLINED_FUNCTION_15_2(&v15[OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_compositionalIndexPath], &v46);
  sub_1D7EA2670(v38, &v15[v39], &qword_1EDBBC690, v37);
  result = swift_endAccess();
  v41 = v45;
  v45[3] = v42;
  *v41 = v15;
  return result;
}

void BlueprintCollectionViewDelegate.collectionView(_:willDisplay:forItemAt:)()
{
  OUTLINED_FUNCTION_120();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_97_1();
  v7 = sub_1D818E994();
  OUTLINED_FUNCTION_9();
  v73 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_13_2();
  v11 = OUTLINED_FUNCTION_38_0(v10);
  sub_1D7EA0824(v11);
  v71 = v12;
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_15();
  v16 = v15 - v14;
  sub_1D7E3D564(0);
  v18 = OUTLINED_FUNCTION_50(v17);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_48();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v69 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v69 - v23;
  OUTLINED_FUNCTION_3_7();
  v26 = *(v0 + *(v25 + 152));
  LOBYTE(v78[0]) = 3;
  v74 = v4;
  BlueprintImpressionManager.startImpression(at:view:triggerSource:)(v4, v6, v78);
  v70 = v1;
  if ([v1 allowsMultipleSelection])
  {
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_0_20();
  v28 = v2 + *(v27 + 192);
  OUTLINED_FUNCTION_8_4(v28, &v81);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v26 = Strong;
    v30 = *(v28 + 8);
    ObjectType = swift_getObjectType();
    (*(v30 + 8))(ObjectType, v30);
    swift_unknownObjectRelease();
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v24, 1, 1, v7);
  }

  v32 = v73;
  v33 = v72;
  (*(v73 + 16))(v21, v74, v7);
  OUTLINED_FUNCTION_102();
  __swift_storeEnumTagSinglePayload(v34, v35, v36, v7);
  v37 = *(v71 + 48);
  sub_1D7E54838(v24, v16);
  sub_1D7E54838(v21, v16 + v37);
  OUTLINED_FUNCTION_43_0(v16, 1, v7);
  if (!v40)
  {
    sub_1D7E54838(v16, v33);
    OUTLINED_FUNCTION_43_0(v16 + v37, 1, v7);
    if (!v40)
    {
      v45 = v16 + v37;
      v46 = v69;
      (*(v32 + 32))(v69, v45, v7);
      sub_1D8008590();
      OUTLINED_FUNCTION_4_8();
      LODWORD(v73) = sub_1D8190ED4();
      v47 = *(v32 + 8);
      v47(v46, v7);
      OUTLINED_FUNCTION_43_8();
      sub_1D7E54AA4(v21, v48);
      v49 = OUTLINED_FUNCTION_73();
      sub_1D7E54AA4(v49, v50);
      v47(v33, v7);
      sub_1D7E54AA4(v16, v46);
      if ((v73 & 1) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_15;
    }

    OUTLINED_FUNCTION_6_49();
    sub_1D7E54AA4(v21, v41);
    sub_1D7E54AA4(v24, v26);
    v42 = OUTLINED_FUNCTION_111();
    v43(v42);
LABEL_13:
    OUTLINED_FUNCTION_12_26();
    sub_1D7E54AA4(v16, v44);
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_6_49();
  sub_1D7E54AA4(v21, v38);
  sub_1D7E54AA4(v24, v26);
  OUTLINED_FUNCTION_43_0(v16 + v37, 1, v7);
  if (!v40)
  {
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_0_114();
  sub_1D7E54AA4(v16, v39);
LABEL_15:
  if (([v6 isSelected] & 1) == 0)
  {
    [v6 setSelected_];
    v51 = sub_1D818E8E4();
    [v70 selectItemAtIndexPath:v51 animated:0 scrollPosition:0];
  }

LABEL_17:
  OUTLINED_FUNCTION_0_20();
  OUTLINED_FUNCTION_8_4(v2 + *(v52 + 208), &v80);
  OUTLINED_FUNCTION_0_20();
  OUTLINED_FUNCTION_8_4(v2 + *(v53 + 200), &v79);
  swift_unknownObjectWeakLoadStrong();
  OUTLINED_FUNCTION_0_20();
  v55 = *(v2 + *(v54 + 264));
  type metadata accessor for BlueprintViewportTransitionManager();
  OUTLINED_FUNCTION_1_63();
  swift_allocObject();
  v56 = OUTLINED_FUNCTION_158();
  v58 = sub_1D7EA2E4C(v56, v57, v55);
  v77 = v6;
  sub_1D7E0A1A8(0, &qword_1EDBB3110, 0x1E69DC7F8);
  sub_1D7E0631C(0, qword_1EDBB8580, &protocol descriptor for ViewControllerBackable);

  v59 = v6;
  if (swift_dynamicCast())
  {
    sub_1D7E05450(v75, v78);
    sub_1D7F357DC(v78, v59);
    __swift_destroy_boxed_opaque_existential_1Tm(v78);
  }

  else
  {
    v76 = 0;
    memset(v75, 0, sizeof(v75));
    sub_1D7E25DBC(v75, &qword_1EDBB8578, qword_1EDBB8580, &protocol descriptor for ViewControllerBackable);
  }

  OUTLINED_FUNCTION_0_20();
  v61 = *(v60 + 224);
  OUTLINED_FUNCTION_8_4(v2 + v61, v78);
  v62 = *(v2 + v61);
  if (v62)
  {
    v63 = swift_getObjectType();
    if (dynamic_cast_existential_1_conditional(v59, v63, &protocol descriptor for BlueprintViewportMonitorObserver))
    {
      v65 = v64;
      v66 = v59;
      v67 = v62;
      OUTLINED_FUNCTION_54_1();
      BlueprintViewportMonitor.add(observer:scrollView:)();
      v68 = swift_getObjectType();
      (*(v65 + 48))(v67, v58, v68, v65);
    }
  }

  OUTLINED_FUNCTION_100();
}

void sub_1D7EA0824(uint64_t a1)
{
  if (!qword_1EDBBC680)
  {
    sub_1D7E54930(255, &qword_1EDBBC690, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDBBC680);
    }
  }
}

id BlueprintLayoutCollectionLayoutAttributes.init()()
{
  ObjectType = swift_getObjectType();
  v2 = &v0[OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_pinTrait];
  *v2 = 1;
  v2[8] = 3;
  v0[OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_rubberbandTrait] = 2;
  v0[OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_rubberbandEdge] = 3;
  v3 = &v0[OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_model];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  v4 = OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_source;
  v5 = type metadata accessor for CollectionViewSupplementaryKind.Source(0);
  __swift_storeEnumTagSinglePayload(&v0[v4], 1, 1, v5);
  v0[OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_isPlugin] = 0;
  v6 = &v0[OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_layoutData];
  *v6 = 0u;
  v6[1] = 0u;
  v0[OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_isEditing] = 0;
  v0[OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_isSelected] = 0;
  v7 = &v0[OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_dedupIdentifier];
  *v7 = 0;
  v7[1] = 0;
  v8 = &v0[OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_originalFrame];
  *v8 = 0u;
  *(v8 + 1) = 0u;
  v8[32] = 1;
  v9 = &v0[OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_previousFrame];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  v9[32] = 1;
  v10 = &v0[OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_resizingIdentifier];
  *v10 = 0;
  v10[1] = 0;
  v11 = &v0[OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_resizingGroupIdentifier];
  *v11 = 0;
  v11[1] = 0;
  v12 = OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_compositionalIndexPath;
  v13 = sub_1D818E994();
  __swift_storeEnumTagSinglePayload(&v0[v12], 1, 1, v13);
  v15.receiver = v0;
  v15.super_class = ObjectType;
  return objc_msgSendSuper2(&v15, sel_init);
}

void BlueprintImpressionManager.startImpression(at:view:triggerSource:)(uint64_t a1, void *a2, char *a3)
{
  v343 = a3;
  v330 = a2;
  v341 = a1;
  v4 = *v3;
  v5 = *(*v3 + 88);
  v6 = *(*v3 + 80);
  OUTLINED_FUNCTION_36_6();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_36_6();
  v8 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1_47();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_1_47();
  v10 = swift_getAssociatedConformanceWitness();
  v350 = AssociatedTypeWitness;
  v351 = v8;
  v352 = AssociatedConformanceWitness;
  v353 = v10;
  active = type metadata accessor for BlueprintActiveImpressionSection(0, &v350);
  OUTLINED_FUNCTION_1_65(active, &v334);
  v305 = v12;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_14_1(v14);
  v309 = type metadata accessor for BlueprintImpressionManager.SectionContext(255, v6, v5, v15);
  v16 = sub_1D8191E84();
  v17 = OUTLINED_FUNCTION_1_65(v16, &v337);
  v307 = v18;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_48();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_21_12();
  OUTLINED_FUNCTION_14_1(v20);
  v350 = AssociatedTypeWitness;
  v351 = v8;
  v352 = AssociatedConformanceWitness;
  v353 = v10;
  v21 = type metadata accessor for BlueprintSection(255, &v350);
  OUTLINED_FUNCTION_107();
  v22 = sub_1D8191E84();
  OUTLINED_FUNCTION_1_65(v22, &v341);
  v311 = v23;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_14_1(v25);
  v321 = v21;
  OUTLINED_FUNCTION_32_5();
  v314 = v26;
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_48();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_21_12();
  OUTLINED_FUNCTION_14_1(v29);
  v350 = AssociatedTypeWitness;
  v351 = v8;
  v352 = AssociatedConformanceWitness;
  v353 = v10;
  v30 = type metadata accessor for BlueprintActiveImpression(0, &v350);
  OUTLINED_FUNCTION_1_65(v30, &v346);
  v319 = v31;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_14_1(v33);
  v34 = sub_1D818E754();
  v35 = OUTLINED_FUNCTION_1_65(v34, v349);
  v323 = v36;
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_48();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_48();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_48();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_21_12();
  OUTLINED_FUNCTION_14_1(v40);
  v337 = v6;
  v336 = v5;
  v42 = type metadata accessor for BlueprintImpressionManager.Session(0, v6, v5, v41);
  OUTLINED_FUNCTION_1_65(v42, &v352);
  v325 = v43;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_14_1(v45);
  v46 = sub_1D818E994();
  v47 = OUTLINED_FUNCTION_1_65(v46, &v355);
  v327[1] = v48;
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_14_1(v49);
  v51 = type metadata accessor for BlueprintItem(255, v8, v10, v50);
  OUTLINED_FUNCTION_56_0();
  v52 = sub_1D8191E84();
  OUTLINED_FUNCTION_9();
  v54 = v53;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v55);
  v57 = &v292 - v56;
  v339 = v51;
  v333 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_48();
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_48();
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_48();
  MEMORY[0x1EEE9AC00](v61);
  v63 = &v292 - v62;
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_21_12();
  OUTLINED_FUNCTION_14_1(v65);
  v329 = AssociatedTypeWitness;
  v350 = AssociatedTypeWitness;
  v351 = v8;
  v331 = v8;
  v66 = AssociatedConformanceWitness;
  v67 = v10;
  v352 = v66;
  v353 = v10;
  v68 = type metadata accessor for Blueprint(0, &v350);
  v69 = OUTLINED_FUNCTION_1_65(v68, &v356);
  v335 = v70;
  MEMORY[0x1EEE9AC00](v69);
  OUTLINED_FUNCTION_28_0();
  v73 = (v71 - v72);
  MEMORY[0x1EEE9AC00](v74);
  v76 = &v292 - v75;
  MEMORY[0x1EEE9AC00](v77);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_48();
  MEMORY[0x1EEE9AC00](v78);
  OUTLINED_FUNCTION_21_12();
  OUTLINED_FUNCTION_14_1(v79);
  v80 = v4;
  v81 = *v343;
  if (v81 >= 0 != *(v3 + *(v80 + 152)))
  {
    v342 = v3;
    if (sub_1D7E481B0())
    {
      LODWORD(v343) = v81;
      v300 = v73;
      v299 = v76;
      v82 = v340;
      v83 = v336;
      BlueprintProviderType.blueprint.getter(v337, v336);
      v84 = v338;
      Blueprint.item(indexPath:)();
      v85 = v339;
      OUTLINED_FUNCTION_43_0(v57, 1, v339);
      if (v107)
      {
        OUTLINED_FUNCTION_10_26();
        v86(v82, v84);
        (*(v54 + 8))(v57, v52);
        return;
      }

      OUTLINED_FUNCTION_48_5();
      v88 = v332;
      (*(v87 + 32))(v332, v57, v85);
      v89 = BlueprintItem.isImpressionable.getter(v85);
      if ((v89 & 1) == 0)
      {
        (*(v84 + 8))(v88, v85);
LABEL_15:
        OUTLINED_FUNCTION_10_26();
        v119 = v340;
LABEL_26:
        v137 = v338;
LABEL_27:
        v118(v119, v137);
        return;
      }

      OUTLINED_FUNCTION_59(v342 + 40, &v354);
      v90 = v329;
      v350 = v337;
      v351 = v329;
      v91 = OUTLINED_FUNCTION_50_4();
      v93 = type metadata accessor for BlueprintImpressionManager.Context(v91, v92);
      OUTLINED_FUNCTION_0_87();
      sub_1D7E2491C(v94, v95, MEMORY[0x1E6969C38]);
      OUTLINED_FUNCTION_54_2();
      v297 = v93;
      v298 = v96;
      sub_1D8190E24();
      v97 = v348;
      if (v348)
      {
        swift_endAccess();
        OUTLINED_FUNCTION_41_4();
        v99 = *(v98 + 136);
        OUTLINED_FUNCTION_8_4(v97 + v99, v344);
        v100 = v339;
        (*(v84 + 16))(v63, v97 + v99, v339);
        v101 = v88;
        v102 = BlueprintItem.identifier.getter(v100);
        v104 = v103;
        v296 = *(v84 + 8);
        (v296)(v63, v100);
        v105 = BlueprintItem.identifier.getter(v100);
        v107 = v102 == v105 && v104 == v106;
        if (v107)
        {
        }

        else
        {
          v108 = OUTLINED_FUNCTION_76_3(v105);

          if ((v108 & 1) == 0)
          {
            OUTLINED_FUNCTION_41_4();
            Strong = swift_unknownObjectWeakLoadStrong();
            OUTLINED_FUNCTION_72_3();
            LOBYTE(v350) = v110;
            v111 = OUTLINED_FUNCTION_40_5();
            BlueprintImpressionManager.endImpression(at:view:triggerSource:)(v111, Strong, v112, v113, v114, v115, v116, v117, v292, v293, v294, v295, v296, v297, v298, v299, v300, v301, v302, v303);

            v90 = v329;
            v88 = v101;
            v83 = v336;
            goto LABEL_17;
          }
        }

        OUTLINED_FUNCTION_41_4();
        swift_unknownObjectWeakAssign();
        v135 = v340;
        sub_1D7EA261C(v340, v101);
        OUTLINED_FUNCTION_34_6();
        OUTLINED_FUNCTION_61_3();
        v136();
        v354 = v97;
        OUTLINED_FUNCTION_35_8(v342 + 40);
        OUTLINED_FUNCTION_56_0();
        OUTLINED_FUNCTION_74_4();

        OUTLINED_FUNCTION_78_1();
        sub_1D8190E34();
        swift_endAccess();

        OUTLINED_FUNCTION_70_3();
        v296();
        OUTLINED_FUNCTION_10_26();
        v119 = v135;
        goto LABEL_26;
      }

      swift_endAccess();
LABEL_17:
      v120 = v342;
      OUTLINED_FUNCTION_59(v342 + 56, &v354);
      v121 = *(v120 + 56);
      v350 = v337;
      v351 = v90;
      v122 = OUTLINED_FUNCTION_50_4();
      type metadata accessor for BlueprintImpressionManager.StagedContext(v122, v123);
      OUTLINED_FUNCTION_54_2();
      v296 = v124;
      sub_1D8190E24();
      v125 = v348;
      v295 = v67;
      if (v348)
      {
        swift_endAccess();
        OUTLINED_FUNCTION_8_4(v125 + *(*v125 + 136), v345);
        v126 = OUTLINED_FUNCTION_28_8();
        v127 = v339;
        v128(v126);
        v129 = BlueprintItem.identifier.getter(v127);
        v131 = v130;
        v324 = *(v84 + 8);
        v324(v121, v127);
        if (v129 == BlueprintItem.identifier.getter(v127) && v131 == v132)
        {
        }

        else
        {
          v134 = sub_1D8192634();

          if ((v134 & 1) == 0)
          {
            OUTLINED_FUNCTION_35_8(v342 + 56);
            OUTLINED_FUNCTION_74_4();
            sub_1D8190D74();
            swift_endAccess();

            OUTLINED_FUNCTION_70_3();
            (v324)();
            goto LABEL_15;
          }
        }

        swift_unknownObjectWeakAssign();
        sub_1D7EA261C(v340, v88);
        OUTLINED_FUNCTION_38_6();
        OUTLINED_FUNCTION_61_3();
        v139();
        v354 = v125;
        v138 = v342;
        OUTLINED_FUNCTION_35_8(v342 + 56);
        OUTLINED_FUNCTION_84_2();
        OUTLINED_FUNCTION_74_4();

        sub_1D8190E34();
        swift_endAccess();
      }

      else
      {
        swift_endAccess();
        v138 = v342;
      }

      OUTLINED_FUNCTION_53_4();
      v141 = *(v140 + 136);
      OUTLINED_FUNCTION_8_4(v138 + v141, &v354);
      OUTLINED_FUNCTION_46_7();
      v142 = v138 + v141;
      v143 = v327[0];
      v144(v327[0], v142, v326);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        (*(v84 + 8))(v88, v339);
        goto LABEL_15;
      }

      v145 = v143[1];
      v325 = *v143;
      v326 = v145;
      v146 = OUTLINED_FUNCTION_51_4(&v357);
      v147 = v138;
      v148 = BlueprintItem.impressionTraits.getter(v146);
      sub_1D7EA3DD8(v330, v148, v149);
      v151 = v150;

      BlueprintItem.impressionManagerOptions.getter(v125);
      if (v352 == 255)
      {
        OUTLINED_FUNCTION_3_52();
        v153 = (v138 + *(v152 + 168));
        v293 = v153[1];
        v294 = *(v153 + 16);
      }

      else
      {
        v294 = v352;
        v293 = v351;
        v153 = &v350;
      }

      v154 = *v153;
      sub_1D7E0D158(0);
      v324 = *(v155 + 48);
      if (v154 > v151)
      {
        if (qword_1EDBBB328 != -1)
        {
          OUTLINED_FUNCTION_4_36(&qword_1EDBBB328);
        }

        v156 = qword_1EDBC6080;
        v157 = sub_1D81919B4();
        OUTLINED_FUNCTION_10_17(v157, &qword_1EDBBE100, &qword_1EDBBE130, MEMORY[0x1E69E7740]);
        v158 = swift_allocObject();
        *(v158 + 16) = xmmword_1D81A1B70;
        OUTLINED_FUNCTION_3_52();
        v160 = (v147 + *(v159 + 160));
        v161 = *v160;
        v162 = v160[1];
        v163 = MEMORY[0x1E69E6158];
        *(v164 + 56) = MEMORY[0x1E69E6158];
        v165 = sub_1D7E13BF4();
        *(v158 + 64) = v165;
        *(v158 + 32) = v161;
        *(v158 + 40) = v162;
        sub_1D8190DB4();
        v166 = v339;
        v167 = v332;
        v168 = BlueprintItem.visualDescription.getter(v339);
        *(v158 + 96) = v163;
        *(v158 + 104) = v165;
        *(v158 + 72) = v168;
        *(v158 + 80) = v169;
        *(v158 + 136) = MEMORY[0x1E69E7DE0];
        *(v158 + 144) = sub_1D7EA41AC();
        *(v158 + 112) = v151;
        sub_1D818FD44("%{public}@, staging impression for item=%@, visibility=%f", 57, 2, &dword_1D7DFF000, v156, v157, v158);

        OUTLINED_FUNCTION_34_6();
        OUTLINED_FUNCTION_61_3();
        v170();
        v171 = v335;
        v172 = v300;
        v173 = v340;
        (*(v335 + 16))(v300, v340, v338);
        v174 = v333;
        v175 = v316;
        (*(v333 + 16))(v316, v167, v166);
        OUTLINED_FUNCTION_26_7();
        v177 = *(v176 - 256);
        v178 = v177;
        v348 = sub_1D7EA4D60(v172, v175, v325, v326, v177, &v350);
        OUTLINED_FUNCTION_35_8(v342 + 56);
        sub_1D8190E14();
        sub_1D8190E34();
        swift_endAccess();
        (*(v174 + 8))(v167, v166);
        (*(v171 + 8))(v173, v338);
        v179 = v322;
        goto LABEL_41;
      }

      if (qword_1EDBBB328 != -1)
      {
        OUTLINED_FUNCTION_4_36(&qword_1EDBBB328);
      }

      v181 = qword_1EDBC6080;
      v182 = sub_1D81919B4();
      LODWORD(v316) = v182;
      OUTLINED_FUNCTION_10_17(v182, &qword_1EDBBE100, &qword_1EDBBE130, MEMORY[0x1E69E7740]);
      v183 = swift_allocObject();
      *(v183 + 16) = xmmword_1D81A1B70;
      OUTLINED_FUNCTION_3_52();
      v185 = (v147 + *(v184 + 160));
      v186 = *v185;
      v187 = v185[1];
      v188 = MEMORY[0x1E69E6158];
      *(v189 + 56) = MEMORY[0x1E69E6158];
      v190 = sub_1D7E13BF4();
      *(v183 + 64) = v190;
      *(v183 + 32) = v186;
      *(v183 + 40) = v187;
      sub_1D8190DB4();
      v191 = v339;
      v192 = BlueprintItem.visualDescription.getter(v339);
      *(v183 + 96) = v188;
      *(v183 + 104) = v190;
      *(v183 + 72) = v192;
      *(v183 + 80) = v193;
      *(v183 + 136) = MEMORY[0x1E69E7DE0];
      *(v183 + 144) = sub_1D7EA41AC();
      *(v183 + 112) = v151;
      sub_1D818FD44("%{public}@, starting impression for item=%@, visibility=%f", 58, 2, &dword_1D7DFF000, v181, v316, v183);

      OUTLINED_FUNCTION_38_6();
      v194 = OUTLINED_FUNCTION_83_1();
      v316 = v195;
      v300 = v196;
      v196(v194);
      OUTLINED_FUNCTION_38_6();
      v197 = v315;
      v198(v315, v88, v191);
      v199 = v317;
      sub_1D818E744();
      OUTLINED_FUNCTION_72_3();
      LODWORD(v343) = v200 & 0x7F;
      LOBYTE(v348) = v200 & 0x7F;
      OUTLINED_FUNCTION_26_7();
      v202 = *(v201 - 256);
      v203 = v202;
      v204 = v326;
      sub_1D8190DB4();
      v205 = sub_1D7EA4200(v183, v197, v199, &v348, v325, v204, v202, &v350);
      OUTLINED_FUNCTION_34_6();
      v207(*(v206 - 256), v341, v334);
      v348 = v205;
      OUTLINED_FUNCTION_35_8(v147 + 40);
      OUTLINED_FUNCTION_56_0();
      v208 = v298;
      sub_1D8190E14();

      sub_1D8190E34();
      swift_endAccess();
      OUTLINED_FUNCTION_35_8(v147 + 56);
      OUTLINED_FUNCTION_56_0();
      sub_1D8190E14();
      sub_1D8190D74();
      swift_endAccess();

      sub_1D7EA3F14(v330);
      OUTLINED_FUNCTION_72_3();
      LOBYTE(v350) = v209;
      OUTLINED_FUNCTION_65_5();
      v341 = v205;
      sub_1D7EA44EC(v210, v211, v212, v213, v214, v215);
      v216 = swift_unknownObjectWeakLoadStrong();
      v217 = v337;
      if (v216)
      {
        v218 = *(v147 + 32);
        ObjectType = swift_getObjectType();
        (*(v218 + 56))(v147, v208, v217, v329, v331, v83, v66, v295, ObjectType, v218);
        swift_unknownObjectRelease();
      }

      OUTLINED_FUNCTION_3_52();
      OUTLINED_FUNCTION_8_4(v147 + *(v220 + 192), &v350);
      v221 = OUTLINED_FUNCTION_56_0();
      type metadata accessor for BlueprintImpressionManagerProcessor(v221, v222, v83, v223);
      sub_1D8190DB4();
      v224 = sub_1D8191324();
      v348 = v224;
      OUTLINED_FUNCTION_87_0();
      v225 = sub_1D8191414();
      v226 = v339;
      if (v224 != v225)
      {
        do
        {
          OUTLINED_FUNCTION_87_0();
          v238 = sub_1D81913E4();
          sub_1D81913A4();
          if (v238)
          {
          }

          else
          {
            sub_1D8192204();
          }

          sub_1D8191454();
          sub_1D81251C0();

          OUTLINED_FUNCTION_87_0();
        }

        while (v348 != sub_1D8191414());
      }

      v227 = v332;
      v228 = BlueprintItem.identifier.getter(v226);
      v229 = v318;
      v230 = v338;
      v231 = v340;
      v232 = v340;
      Blueprint.section(forItem:)(v228);

      v233 = v321;
      OUTLINED_FUNCTION_43_0(v229, 1, v321);
      if (v107)
      {

        OUTLINED_FUNCTION_40_5();

        OUTLINED_FUNCTION_14_15();
        v234(v208, v320);
        OUTLINED_FUNCTION_14_15();
        v235(v227, v226);
        OUTLINED_FUNCTION_10_26();
        v236(v231, v230);
        OUTLINED_FUNCTION_14_15();
        v237(v229, v312);
        v179 = v322;
      }

      else
      {
        OUTLINED_FUNCTION_65_5();
        v239 = OUTLINED_FUNCTION_28_8();
        v240(v239, v229, v233);
        v241 = BlueprintSection.isImpressionable.getter(v233);
        v179 = v322;
        if (v241)
        {
          v242 = BlueprintSection.identifier.getter(v233);
          v244 = v243;
          v245 = v342;
          OUTLINED_FUNCTION_59(v342 + 48, &v348);
          v346 = v242;
          v347 = v244;
          OUTLINED_FUNCTION_48_5();
          v246 = v309;
          sub_1D8190E24();
          v247 = v246;

          swift_endAccess();
          OUTLINED_FUNCTION_43_0(v226, 1, v246);
          if (v107)
          {
            v248 = OUTLINED_FUNCTION_11_23();
            v249(v248, v308);
            OUTLINED_FUNCTION_48_5();
            sub_1D818E744();
            v250 = BlueprintSection.identifier.getter(v321);
            v252 = v251;
            v253 = *(v323 + 16);
            v254 = OUTLINED_FUNCTION_51_4(&v328);
            v253(v254, v226, v179);
            v255 = v253;
            OUTLINED_FUNCTION_72_3();
            LOBYTE(v348) = v256;
            v257 = v304;
            sub_1D7EB82CC(v245, &v348, v337, v83, v304);
            __swift_storeEnumTagSinglePayload(v257, 0, 1, v247);
            v346 = v250;
            v347 = v252;
            OUTLINED_FUNCTION_15_2(v342 + 48, &v348);
            sub_1D8190E14();
            sub_1D8190E34();
            swift_endAccess();
            v258 = OUTLINED_FUNCTION_51_4(v327);
            v300(v258, v340, v338);
            OUTLINED_FUNCTION_38_6();
            v259 = OUTLINED_FUNCTION_28_8();
            v260(v259, v313, v321);
            v255(v302, v310, v179);
            OUTLINED_FUNCTION_72_3();
            LOBYTE(v348) = v261;
            v262 = v295;
            OUTLINED_FUNCTION_65_5();
            v263 = v342;
            OUTLINED_FUNCTION_78();
            v264 = v329;
            v265 = v331;
            sub_1D7EB83A4(v266, v267, v268, v269, v325, v326, v270);
            if (swift_unknownObjectWeakLoadStrong())
            {
              v271 = *(v263 + 32);
              v272 = swift_getObjectType();
              (*(v271 + 64))(v263, v252, v337, v264, v265, v83, v66, v262, v272, v271);
              OUTLINED_FUNCTION_40_5();

              swift_unknownObjectRelease();
            }

            else
            {
              OUTLINED_FUNCTION_40_5();
            }

            v180 = v327[0];
            OUTLINED_FUNCTION_14_15();
            v285(v252, v306);
            (*(v323 + 8))(v310, v179);
            OUTLINED_FUNCTION_14_15();
            v286(v313, v321);
            v287 = OUTLINED_FUNCTION_12_20();
            v288(v287);
            OUTLINED_FUNCTION_14_15();
            v289 = OUTLINED_FUNCTION_62_3();
            v290(v289);
            OUTLINED_FUNCTION_10_26();
            v291(v340, v338);
            goto LABEL_42;
          }

          OUTLINED_FUNCTION_40_5();

          OUTLINED_FUNCTION_14_15();
          v277(v232, v321);
          v278 = OUTLINED_FUNCTION_12_20();
          v279(v278);
          OUTLINED_FUNCTION_14_15();
          v280 = OUTLINED_FUNCTION_62_3();
          v281(v280);
          OUTLINED_FUNCTION_10_26();
          v282(v231, v230);
          v283 = OUTLINED_FUNCTION_11_23();
          v284(v283, v308);
LABEL_41:
          v180 = v327[0];
LABEL_42:
          OUTLINED_FUNCTION_14_15();
          v119 = v324 + v180;
LABEL_63:
          v137 = v179;
          goto LABEL_27;
        }

        OUTLINED_FUNCTION_40_5();

        (*(v208 + 8))(v232, v233);
        v273 = OUTLINED_FUNCTION_12_20();
        v274(v273);
        OUTLINED_FUNCTION_14_15();
        v275(v332, v226);
        OUTLINED_FUNCTION_10_26();
        v276(v231, v230);
      }

      OUTLINED_FUNCTION_14_15();
      v119 = v324 + v327[0];
      goto LABEL_63;
    }
  }
}

uint64_t sub_1D7EA2620(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  OUTLINED_FUNCTION_17_24(a1, a2, a3, a4);
  OUTLINED_FUNCTION_8();
  (*(v6 + 16))(v4, v5);
  return v4;
}

uint64_t sub_1D7EA2670(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  OUTLINED_FUNCTION_17_24(a1, a2, a3, a4);
  OUTLINED_FUNCTION_8();
  (*(v6 + 40))(v4, v5);
  return v4;
}

uint64_t sub_1D7EA26DC(void *a1)
{
  v1 = a1[2];
  v2 = a1[3];
  v3 = a1[4];
  v4 = a1[5];
  v14 = v1;
  v15 = v2;
  v16 = v3;
  v17 = v4;
  result = type metadata accessor for Blueprint(319, &v14);
  if (v6 <= 0x3F)
  {
    v10 = 0;
    v14 = result;
    v9[0] = v1;
    v9[1] = v2;
    v9[2] = v3;
    v9[3] = v4;
    result = type metadata accessor for BlueprintSection(319, v9);
    if (v7 <= 0x3F)
    {
      v11 = 0;
      v15 = result;
      result = sub_1D818E754();
      if (v8 <= 0x3F)
      {
        v12 = 0;
        v16 = result;
        v17 = &type metadata for BlueprintImpressionTrigger;
        v13 = 0;
        v18 = MEMORY[0x1E69E6158];
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void sub_1D7EA27C0(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v7 = a1;
  sub_1D7EA2840(v4, v7, v5, v6);
}

void sub_1D7EA2840(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = *((*MEMORY[0x1E69E7D40] & *v5) + 0x50);
  v8 = *((*MEMORY[0x1E69E7D40] & *v5) + 0x58);
  v23.receiver = v5;
  v23.super_class = type metadata accessor for CollectionViewCell(0, v7, v8, a4);
  objc_msgSendSuper2(&v23, sel_applyLayoutAttributes_, a1);
  type metadata accessor for BlueprintLayoutCollectionLayoutAttributes(0);
  v9 = swift_dynamicCastClass();
  if (v9)
  {
    v10 = v9;
    v11 = OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_isEditing;
    swift_beginAccess();
    v12 = *(v10 + v11);
    v13 = OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_isSelected;
    OUTLINED_FUNCTION_10(v10 + OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_isSelected, v14);
    v15 = *(v10 + v13);
    v16 = *(v8 + 8);
    v17 = *(v16 + 16);
    v18 = a1;
    v17(v12, v15, v7, v16);
    v19 = sub_1D7EA29BC();
    if (v19)
    {
      v21 = v19;
      v22 = v20;
      v19(v5, v10);
      sub_1D7E0E10C(v21, v22);
    }
  }
}

uint64_t sub_1D7EA29BC()
{
  v0 = OUTLINED_FUNCTION_109();
  sub_1D7E19F24(v0, v1);
  return OUTLINED_FUNCTION_109();
}

void sub_1D7EA29F4(uint64_t a1)
{
  v1 = *(a1 + 40);
  v12 = *(a1 + 16);
  v11 = *(a1 + 24);
  v13 = v11;
  v14 = v1;
  v2 = type metadata accessor for Blueprint(319, &v12);
  if (v4 <= 0x3F)
  {
    v12 = v2;
    v5 = type metadata accessor for BlueprintItem(319, v11, v1, v3);
    if (v6 <= 0x3F)
    {
      *&v13 = v5;
      v7 = sub_1D818E754();
      if (v8 <= 0x3F)
      {
        *(&v13 + 1) = v7;
        v14 = &type metadata for BlueprintImpressionTrigger;
        v15 = MEMORY[0x1E69E6158];
        type metadata accessor for CGRect();
        if (v10 <= 0x3F)
        {
          v16 = v9;
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

id sub_1D7EA2AEC(uint64_t *a1)
{
  v2 = *a1;
  v3 = qword_1EDBBA008;
  OUTLINED_FUNCTION_5_0(a1);
  v4 = *(v1 + v3);
  *(v1 + v3) = v2;
  sub_1D7E9B848(v4);
  return sub_1D7EA2B74();
}

id sub_1D7EA2B74()
{
  v1 = v0;
  v2 = qword_1EDBBA008;
  swift_beginAccess();
  v16 = *&v0[v2];
  SelectionBehavior.style.getter(v13);
  v3 = v14;
  v4 = v15;
  __swift_project_boxed_opaque_existential_1(v13, v14);
  v5 = *&v0[qword_1EDBBA040];
  (*(v4 + 8))(v1, &protocol witness table for CollectionViewCell<A>, *&v1[qword_1EDBBA040], v3, v4);
  __swift_destroy_boxed_opaque_existential_1Tm(v13);
  result = [v0 isSelected];
  if (result)
  {
    v16 = *&v0[v2];
    SelectionBehavior.style.getter(v13);
    v7 = v14;
    v8 = v15;
    __swift_project_boxed_opaque_existential_1(v13, v14);
    v9 = [v0 isHighlighted];
    v11 = sub_1D8121904(v9, v10);
    v12 = [v1 contentView];
    (*(v8 + 16))(1, v9, v11 & 1, v12, v5, v7, v8);

    return __swift_destroy_boxed_opaque_existential_1Tm(v13);
  }

  return result;
}

uint64_t NoneSelectionStyle.setup(cell:selectedBackgroundView:)(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  v6 = *(a2 + 16);
  v7 = a3;
  return v6(a3, ObjectType, a2);
}

uint64_t sub_1D7EA2D74(void *a1)
{
  v1 = a1;
  v2 = sub_1D7EA2DB0(&selRef_isSelected);

  return v2 & 1;
}

id sub_1D7EA2DB0(SEL *a1)
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_7_73(v5, *(v2 + 80), *((v3 & v4) + 0x58), v6);
  return objc_msgSendSuper2(&v8, *a1);
}

void *sub_1D7EA2E4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  return v3;
}

uint64_t BlueprintViewportTransitionManager.__deallocating_deinit()
{
  BlueprintViewportTransitionManager.deinit();

  return swift_deallocClassInstance();
}

void static Accessibility.Strings.delimitedString(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22[1] = a1;
  v22[2] = a2;
  OUTLINED_FUNCTION_0_170();
  sub_1D7E54994(0, v4, v5, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v22 - v7;
  v9 = 0;
  v10 = *(a3 + 16);
  v11 = a3 + 40;
  v12 = MEMORY[0x1E69E7CC0];
LABEL_2:
  for (i = (v11 + 16 * v9); ; i += 2)
  {
    if (v10 == v9)
    {
      v22[3] = v12;
      sub_1D7EA30C0();
      sub_1D7E28814(&qword_1EDBB3328, sub_1D7EA30C0, MEMORY[0x1E69E6310]);
      sub_1D8190E94();

      return;
    }

    if (v9 >= v10)
    {
      break;
    }

    if (__OFADD__(v9, 1))
    {
      goto LABEL_17;
    }

    v15 = *(i - 1);
    v14 = *i;
    sub_1D8190DB4();
    sub_1D818E3E4();
    v16 = sub_1D818E3F4();
    __swift_storeEnumTagSinglePayload(v8, 0, 1, v16);
    v17 = sub_1D818F004();
    sub_1D7E9A7A8(v8);
    if (v17)
    {
    }

    else if (v14)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1D7E2D320();
        v12 = v20;
      }

      v18 = *(v12 + 16);
      if (v18 >= *(v12 + 24) >> 1)
      {
        sub_1D7E2D320();
        v12 = v21;
      }

      *(v12 + 16) = v18 + 1;
      v19 = v12 + 16 * v18;
      *(v19 + 32) = v15;
      *(v19 + 40) = v14;
      ++v9;
      goto LABEL_2;
    }

    ++v9;
  }

  __break(1u);
LABEL_17:
  __break(1u);
}

void sub_1D7EA30C0()
{
  if (!qword_1EDBB3330)
  {
    v0 = sub_1D8191484();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBB3330);
    }
  }
}

uint64_t BlueprintViewportTransitionManager.deinit()
{

  return v0;
}

uint64_t sub_1D7EA3140(uint64_t a1)
{
  v2 = a1;
  v3 = qword_1EDBBA018;
  result = OUTLINED_FUNCTION_5_0(a1);
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_1D7EA31A8(uint64_t a1, uint64_t a2)
{

  return sub_1D7EA31F4(a1, a2);
}

uint64_t sub_1D7EA3200(void *a1)
{
  v1 = a1;
  v2 = sub_1D7EA2DB0(&selRef_isHighlighted);

  return v2 & 1;
}

id BlueprintLayoutCollectionLayoutAttributes.isEqual(_:)(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = type metadata accessor for CollectionViewSupplementaryKind.Source(0);
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v6);
  v103 = &v97 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7EA3C40(0, &unk_1EDBB5AE8, qword_1EDBB5AF8, type metadata accessor for CollectionViewSupplementaryKind.Source);
  v9 = v8;
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v97 - v11;
  sub_1D7E5951C(0, qword_1EDBB5AF8, type metadata accessor for CollectionViewSupplementaryKind.Source);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v97 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v97 - v17;
  sub_1D7E7B91C(a1, &v120);
  if (!*(&v121 + 1))
  {
    OUTLINED_FUNCTION_8_41();
    sub_1D7E70EA0(&v120, v29);
    return 0;
  }

  v102 = v5;
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v99 = v15;
  v100 = v12;
  v97 = a1;
  v98 = ObjectType;
  v19 = *&v126[0];
  v20 = OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_model;
  OUTLINED_FUNCTION_8_4(&v2[OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_model], v128);
  v101 = v2;
  sub_1D7EA2620(&v2[v20], v126, &qword_1EDBB44D0, sub_1D7FDADC0);
  v21 = OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_model;
  OUTLINED_FUNCTION_8_4(&v19[OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_model], v125);
  v120 = v126[0];
  v121 = v126[1];
  v122 = v127;
  sub_1D7EA2620(&v19[v21], &v123, &qword_1EDBB44D0, sub_1D7FDADC0);
  if (!*(&v121 + 1))
  {
    if (!v124)
    {
      OUTLINED_FUNCTION_2_106();
      sub_1D7EA3CA4(&v120, v35, v36, v37);
      goto LABEL_15;
    }

    OUTLINED_FUNCTION_3_92();
    sub_1D7E54B6C(&v123, v30, v31);
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_2_106();
  sub_1D7EA2620(&v120, v108, v22, v23);
  if (!v124)
  {

    v32 = v108;
LABEL_12:
    __swift_destroy_boxed_opaque_existential_1Tm(v32);
LABEL_13:
    OUTLINED_FUNCTION_3_92();
    sub_1D7E54B6C(&v120, v33, v34);
    return 0;
  }

  sub_1D7E05450(v108, v105);
  sub_1D7E05450(&v123, v104);
  v25 = v106;
  v24 = v107;
  __swift_project_boxed_opaque_existential_1(v105, v106);
  v26 = (*(v24 + 16))(v104, v25, v24);
  __swift_destroy_boxed_opaque_existential_1Tm(v104);
  if ((v26 & 1) == 0)
  {

    v32 = v105;
    goto LABEL_12;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v105);
  OUTLINED_FUNCTION_3_92();
  sub_1D7E54B6C(&v120, v27, v28);
LABEL_15:
  v38 = &v19[OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_pinTrait];
  OUTLINED_FUNCTION_8_4(&v19[OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_pinTrait], v126);
  v39 = *v38;
  v40 = *(v38 + 8);
  v41 = &v101[OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_pinTrait];
  OUTLINED_FUNCTION_8_4(&v101[OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_pinTrait], v108);
  v42 = *v41;
  v43 = *(v41 + 8);
  v44 = v100;
  switch(v40)
  {
    case 1:
      if (v43 != 1)
      {
        goto LABEL_55;
      }

      goto LABEL_28;
    case 2:
      if (v43 != 2)
      {
        goto LABEL_55;
      }

LABEL_28:
      if (v39 != v42)
      {
        goto LABEL_55;
      }

      goto LABEL_32;
    case 3:
      if (v39 == 0.0)
      {
        if (v43 != 3 || v42 != 0.0)
        {
          goto LABEL_55;
        }
      }

      else
      {
        v45 = v43 == 3 && *&v42 == 1;
        if (!v45)
        {
          goto LABEL_55;
        }
      }

LABEL_32:
      v46 = OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_rubberbandTrait;
      OUTLINED_FUNCTION_8_4(&v19[OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_rubberbandTrait], v105);
      v47 = v19[v46];
      v48 = OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_rubberbandTrait;
      v49 = v101;
      OUTLINED_FUNCTION_8_4(&v101[OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_rubberbandTrait], v104);
      v50 = v49[v48];
      if (v47 == 2)
      {
        if (v50 != 2)
        {
          goto LABEL_55;
        }
      }

      else if (v47 == 3)
      {
        if (v50 != 3)
        {
          goto LABEL_55;
        }
      }

      else if (v50 & 0xFE) == 2 || ((v50 ^ v47))
      {
        goto LABEL_55;
      }

      OUTLINED_FUNCTION_8_4(&v19[OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_rubberbandEdge], &v119);
      OUTLINED_FUNCTION_8_4(&v49[OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_rubberbandEdge], &v118);
      OUTLINED_FUNCTION_19_24();
      if (!v45)
      {
        goto LABEL_55;
      }

      v51 = OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_source;
      OUTLINED_FUNCTION_8_4(&v19[OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_source], &v117);
      sub_1D7EA2620(&v19[v51], v18, qword_1EDBB5AF8, type metadata accessor for CollectionViewSupplementaryKind.Source);
      v52 = OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_source;
      OUTLINED_FUNCTION_8_4(&v101[OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_source], &v116);
      v53 = *(v9 + 48);
      sub_1D7EA2620(v18, v44, qword_1EDBB5AF8, type metadata accessor for CollectionViewSupplementaryKind.Source);
      v54 = &v101[v52];
      v55 = v101;
      sub_1D7EA2620(v54, v44 + v53, qword_1EDBB5AF8, type metadata accessor for CollectionViewSupplementaryKind.Source);
      v56 = v102;
      if (__swift_getEnumTagSinglePayload(v44, 1, v102) == 1)
      {
        OUTLINED_FUNCTION_1_116();
        sub_1D7E54B6C(v18, v57, v58);
        if (__swift_getEnumTagSinglePayload(v44 + v53, 1, v56) == 1)
        {
          OUTLINED_FUNCTION_1_116();
          sub_1D7E54B6C(v44, v59, v60);
          goto LABEL_50;
        }

LABEL_48:
        OUTLINED_FUNCTION_0_160();
        sub_1D7EA3CA4(v44, v66, v67, v68);
        return 0;
      }

      OUTLINED_FUNCTION_0_160();
      v61 = v99;
      sub_1D7EA2620(v44, v99, v62, v63);
      if (__swift_getEnumTagSinglePayload(v44 + v53, 1, v56) == 1)
      {

        OUTLINED_FUNCTION_1_116();
        sub_1D7E54B6C(v18, v64, v65);
        sub_1D7E70EA0(v61, type metadata accessor for CollectionViewSupplementaryKind.Source);
        goto LABEL_48;
      }

      v69 = v44 + v53;
      v70 = v103;
      sub_1D7EA896C(v69, v103);
      v71 = static CollectionViewSupplementaryKind.Source.== infix(_:_:)(v61, v70);
      sub_1D7E70EA0(v70, type metadata accessor for CollectionViewSupplementaryKind.Source);
      sub_1D7E54B6C(v18, qword_1EDBB5AF8, type metadata accessor for CollectionViewSupplementaryKind.Source);
      sub_1D7E70EA0(v61, type metadata accessor for CollectionViewSupplementaryKind.Source);
      v55 = v101;
      sub_1D7E54B6C(v44, qword_1EDBB5AF8, type metadata accessor for CollectionViewSupplementaryKind.Source);
      if ((v71 & 1) == 0)
      {
        goto LABEL_55;
      }

LABEL_50:
      OUTLINED_FUNCTION_8_4(&v19[OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_isEditing], &v115);
      OUTLINED_FUNCTION_8_4(&v55[OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_isEditing], &v114);
      OUTLINED_FUNCTION_19_24();
      if (!v45)
      {
        goto LABEL_55;
      }

      OUTLINED_FUNCTION_8_4(&v19[OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_isSelected], &v113);
      OUTLINED_FUNCTION_8_4(&v55[OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_isSelected], &v112);
      OUTLINED_FUNCTION_19_24();
      if (!v45)
      {
        goto LABEL_55;
      }

      OUTLINED_FUNCTION_8_4(&v19[OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_isPlugin], &v111);
      OUTLINED_FUNCTION_8_4(&v55[OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_isPlugin], &v110);
      OUTLINED_FUNCTION_19_24();
      if (!v45)
      {
        goto LABEL_55;
      }

      OUTLINED_FUNCTION_18_27();
      if (v76)
      {
        if ((v75 & 1) == 0)
        {
          goto LABEL_55;
        }
      }

      else if ((v75 & 1) != 0 || !OUTLINED_FUNCTION_21_25(v74))
      {
        goto LABEL_55;
      }

      OUTLINED_FUNCTION_18_27();
      if (v79)
      {
        if (v78)
        {
          goto LABEL_68;
        }

LABEL_55:

        return 0;
      }

      if ((v78 & 1) != 0 || !OUTLINED_FUNCTION_21_25(v77))
      {
        goto LABEL_55;
      }

LABEL_68:
      OUTLINED_FUNCTION_20_26();
      if (v80)
      {
        if (!v81)
        {
          goto LABEL_55;
        }

        v84 = *v82 == *v83 && v80 == v81;
        if (!v84 && (sub_1D8192634() & 1) == 0)
        {
          goto LABEL_55;
        }
      }

      else if (v81)
      {
        goto LABEL_55;
      }

      OUTLINED_FUNCTION_20_26();
      if (v85)
      {
        if (!v86)
        {
          goto LABEL_55;
        }

        v89 = *v87 == *v88 && v85 == v86;
        if (!v89 && (sub_1D8192634() & 1) == 0)
        {
          goto LABEL_55;
        }
      }

      else if (v86)
      {
        goto LABEL_55;
      }

      sub_1D7E7B91C(v97, &v120);
      v90 = *(&v121 + 1);
      if (*(&v121 + 1))
      {
        v91 = __swift_project_boxed_opaque_existential_1(&v120, *(&v121 + 1));
        v92 = *(v90 - 8);
        v93 = MEMORY[0x1EEE9AC00](v91);
        v95 = &v97 - ((v94 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v92 + 16))(v95, v93);
        v96 = sub_1D8192614();
        (*(v92 + 8))(v95, v90);
        __swift_destroy_boxed_opaque_existential_1Tm(&v120);
      }

      else
      {
        v96 = 0;
      }

      v109.receiver = v101;
      v109.super_class = v98;
      v72 = objc_msgSendSuper2(&v109, sel_isEqual_, v96);
      swift_unknownObjectRelease();

      return v72;
    default:
      if (*(v41 + 8) || (sub_1D7EE2AA4(LOBYTE(v39) & 1) & 1) == 0)
      {
        goto LABEL_55;
      }

      goto LABEL_32;
  }
}

void sub_1D7EA3C40(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_1D7E5951C(255, a3, a4);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1D7EA3CA4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1D7EA3C40(0, a2, a3, a4);
  OUTLINED_FUNCTION_8();
  (*(v5 + 8))(a1);
  return a1;
}

void sub_1D7EA3DD8(void *a1, uint64_t a2, __n128 a3)
{
  v17.origin.x = sub_1D7EA3F14(a1);
  x = v17.origin.x;
  y = v17.origin.y;
  width = v17.size.width;
  height = v17.size.height;
  if (CGRectGetHeight(v17) == 0.0 && *(a2 + 16))
  {
    v16.x = x;
    v16.y = y;
    CGRectContainsPoint(*(v3 + *(*v3 + 184) + 8), v16);
  }

  else
  {
    v9 = v3 + *(*v3 + 184);
    v20.origin.x = x;
    v20.origin.y = y;
    v20.size.width = width;
    v20.size.height = height;
    v18 = CGRectIntersection(*(v9 + 8), v20);
    v10 = v18.origin.x;
    v11 = v18.origin.y;
    v12 = v18.size.width;
    v13 = v18.size.height;
    v18.origin.x = x;
    v18.origin.y = y;
    v18.size.width = width;
    v18.size.height = height;
    v14 = CGRectGetHeight(v18);
    v15 = CGRectGetHeight(*(v9 + 8));
    if (v15 < v14)
    {
      v14 = v15;
    }

    if (v14 > 0.0)
    {
      v19.origin.x = v10;
      v19.origin.y = v11;
      v19.size.width = v12;
      v19.size.height = v13;
      CGRectGetHeight(v19);
    }
  }
}

double sub_1D7EA3F14(void *a1)
{
  if (!a1)
  {
    return 0.0;
  }

  v2 = a1;
  [v2 bounds];
  [v2 convertRect:*(v1 + *(*v1 + 184)) toCoordinateSpace:?];
  v4 = v3;

  return v4;
}

uint64_t BlueprintItem.visualDescription.getter(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = MEMORY[0x1EEE9AC00](a1);
  (*(v6 + 16))(v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v1, v3, v4);
  sub_1D7E0631C(0, &unk_1EDBBAEE8, &protocol descriptor for VisualPrintable);
  if (swift_dynamicCast())
  {
    sub_1D7E05450(v13, v15);
    *&v13[0] = 0x286D657449;
    *(&v13[0] + 1) = 0xE500000000000000;
    __swift_project_boxed_opaque_existential_1(v15, v15[3]);
    v7 = OUTLINED_FUNCTION_3_1();
    v9 = v8(v7);
    MEMORY[0x1DA713260](v9);

    MEMORY[0x1DA713260](41, 0xE100000000000000);
    v10 = *&v13[0];
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
  }

  else
  {
    v14 = 0;
    memset(v13, 0, sizeof(v13));
    sub_1D7E9DD24(v13, &qword_1EDBBAEE0, &unk_1EDBBAEE8, &protocol descriptor for VisualPrintable);
    v15[0] = 0x286D657449;
    v15[1] = 0xE500000000000000;
    v11 = BlueprintItem.identifier.getter(a1);
    MEMORY[0x1DA713260](v11);

    MEMORY[0x1DA713260](41, 0xE100000000000000);
    return v15[0];
  }

  return v10;
}

unint64_t sub_1D7EA41AC()
{
  result = qword_1EDBBC568;
  if (!qword_1EDBBC568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBBC568);
  }

  return result;
}

uint64_t *sub_1D7EA4294(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t *a8)
{
  v14 = *v8;
  v15 = *a4;
  v16 = *a8;
  v32 = a8[1];
  v31 = *(a8 + 16);
  v17 = a8[3];
  swift_unknownObjectWeakInit();
  v18 = *(*v8 + 128);
  v29 = *(v14 + 112);
  v33[0] = *(v14 + 88);
  v28 = *(&v33[0] + 1);
  v33[1] = v29;
  v19 = type metadata accessor for Blueprint(0, v33);
  (*(*(v19 - 8) + 32))(v8 + v18, a1, v19);
  v20 = *(*v8 + 136);
  v22 = type metadata accessor for BlueprintItem(0, v28, *(&v29 + 1), v21);
  (*(*(v22 - 8) + 32))(v8 + v20, a2, v22);
  v23 = *(*v8 + 144);
  v24 = sub_1D818E754();
  (*(*(v24 - 8) + 32))(v8 + v23, a3, v24);
  *(v8 + *(*v8 + 152)) = v15;
  v25 = (v8 + *(*v8 + 160));
  *v25 = a5;
  v25[1] = a6;
  swift_unknownObjectWeakAssign();

  v26 = v8 + *(*v8 + 168);
  *v26 = v16;
  *(v26 + 8) = v32;
  *(v26 + 16) = v31;
  *(v26 + 24) = v17;
  return v8;
}

void sub_1D7EA44EC(_BYTE *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  v32 = a1;
  v37 = a2;
  v11 = *v6;
  v36 = sub_1D818E754();
  v12 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v11[15];
  v15 = v11[12];
  v33 = v15;
  v31 = type metadata accessor for BlueprintItem(0, v15, v14, v16);
  v17 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v19 = &v29 - v18;
  v34 = v11[11];
  *&v20 = v34;
  *(&v20 + 1) = v15;
  v30 = v11[14];
  *&v21 = v30;
  *(&v21 + 1) = v14;
  v39[1] = v21;
  v39[0] = v20;
  v22 = type metadata accessor for Blueprint(0, v39);
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v29 - v24;
  LOBYTE(v15) = *v32;
  v26 = v11[16];
  swift_beginAccess();
  (*(v23 + 16))(v25, v6 + v26, v22);
  v27 = *(*v6 + 136);
  swift_beginAccess();
  (*(v17 + 16))(v19, v6 + v27, v31);
  v28 = v35;
  (*(v12 + 16))(v35, v6 + *(*v6 + 144), v36);
  v38 = v15;
  sub_1D7EA486C(v25, v19, v28, &v38, *(v6 + *(*v6 + 160)), *(v6 + *(*v6 + 160) + 8), v33, v37, a3, a4, a5, a6, v30, v14);
  sub_1D8190DB4();
}

uint64_t sub_1D7EA486C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>, double a9@<D0>, double a10@<D1>, double a11@<D2>, double a12@<D3>, uint64_t a13, uint64_t a14)
{
  v24 = *a4;
  v25 = OUTLINED_FUNCTION_3_66();
  type metadata accessor for Blueprint(v25, v26);
  OUTLINED_FUNCTION_0_13();
  (*(v27 + 32))(a8, a1);
  v28 = OUTLINED_FUNCTION_3_66();
  active = type metadata accessor for BlueprintActiveImpression(v28, v29);
  v31 = active[13];
  type metadata accessor for BlueprintItem(0, a7, a14, v32);
  OUTLINED_FUNCTION_0_13();
  (*(v33 + 32))(a8 + v31, a2);
  v34 = active[14];
  sub_1D818E754();
  OUTLINED_FUNCTION_0_13();
  result = (*(v35 + 32))(a8 + v34, a3);
  *(a8 + active[15]) = v24;
  v37 = (a8 + active[16]);
  *v37 = a5;
  v37[1] = a6;
  v38 = (a8 + active[17]);
  *v38 = a9;
  v38[1] = a10;
  v38[2] = a11;
  v38[3] = a12;
  return result;
}

void sub_1D7EA49DC()
{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_13_42(v0, v1, v2, v3, v4, v5);
  OUTLINED_FUNCTION_9_43();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_9_43();
  swift_getAssociatedTypeWitness();
  v6 = OUTLINED_FUNCTION_15_5();
  OUTLINED_FUNCTION_81_4(v6, v7, v8, v9, v10);
  OUTLINED_FUNCTION_23_22();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = OUTLINED_FUNCTION_12_45(AssociatedConformanceWitness);
  type metadata accessor for BlueprintActiveImpression(v12, v13);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v14);
  v16 = OUTLINED_FUNCTION_1_144(v15, v30);
  type metadata accessor for BlueprintActiveImpression(v16, v17);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_16_42();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_10_54();
  v21 = *(v20 + 280);
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    OUTLINED_FUNCTION_69_5();
    OUTLINED_FUNCTION_3_7();
    OUTLINED_FUNCTION_30_23();
    v22 = OUTLINED_FUNCTION_11_46();
    v23(v22);
    OUTLINED_FUNCTION_15_41();
    OUTLINED_FUNCTION_32_18();
    v24 = OUTLINED_FUNCTION_20_36();
    v25(v24);

    v26 = OUTLINED_FUNCTION_31_18();
    v27(v26);
    v28 = OUTLINED_FUNCTION_19_32();
    v29(v28);
  }

  OUTLINED_FUNCTION_100();
}

uint64_t *sub_1D7EA4DDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t *a6)
{
  v12 = *a6;
  v26 = a6[1];
  v13 = *(a6 + 16);
  v14 = a6[3];
  v15 = *v6;
  swift_unknownObjectWeakInit();
  v16 = *(*v6 + 128);
  v25 = *(v15 + 112);
  v27[0] = *(v15 + 88);
  v24 = *(&v27[0] + 1);
  v27[1] = v25;
  v17 = type metadata accessor for Blueprint(0, v27);
  (*(*(v17 - 8) + 32))(v6 + v16, a1, v17);
  v18 = *(*v6 + 136);
  v20 = type metadata accessor for BlueprintItem(0, v24, *(&v25 + 1), v19);
  (*(*(v20 - 8) + 32))(v6 + v18, a2, v20);
  v21 = (v6 + *(*v6 + 144));
  *v21 = a3;
  v21[1] = a4;
  swift_unknownObjectWeakAssign();

  v22 = v6 + *(*v6 + 152);
  *v22 = v12;
  *(v22 + 8) = v26;
  *(v22 + 16) = v13;
  *(v22 + 24) = v14;
  return v6;
}

unint64_t sub_1D7EA4FB8()
{
  result = qword_1EDBBB468[0];
  if (!qword_1EDBBB468[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_1EDBBB468);
  }

  return result;
}

uint64_t sub_1D7EA5014(uint64_t a1)
{
  sub_1D7EA5070(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D7EA5070(uint64_t a1)
{
  if (!qword_1EDBBB460)
  {
    sub_1D7EA4FB8();
    v1 = sub_1D8191E84();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDBBB460);
    }
  }
}

void sub_1D7EA50C8(void *a1)
{
  v1 = a1;
  sub_1D7EA5110();
}

uint64_t sub_1D7EA5110()
{
  OUTLINED_FUNCTION_2_0();
  v1 = v0;
  sub_1D7EA51C4(&v6);
  if (v7)
  {
  }

  else
  {
    sub_1D7EA522C();
  }

  OUTLINED_FUNCTION_10_14(v2, *(v1 + 80), *(v1 + 88), v3);
  objc_msgSendSuper2(&v5, sel_prepareForReuse);
  sub_1D7EA55A4(0, 0);
  sub_1D7EA51C4(&v6);
  if (v7)
  {
  }

  else
  {
    return sub_1D7EA55C4();
  }
}

double sub_1D7EA51C4@<D0>(uint64_t a1@<X8>)
{
  v3 = v1 + qword_1EDBB8C78;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *a1 = *v3;
  *(a1 + 8) = *(v3 + 8);
  *(a1 + 24) = v4;
  sub_1D8190DB4();
  return result;
}

void sub_1D7EA522C()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69E58C0]) init];

  sub_1D7EA5268(v0);
}

void sub_1D7EA5268(uint64_t a1)
{
  v3 = qword_1EDBB8C80;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

char *CollectionViewCell.init(frame:)()
{
  OUTLINED_FUNCTION_155();
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  v3 = v0 + qword_1EDBB9FD8;
  *(v3 + 1) = 0;
  *(v3 + 2) = 0;
  *v3 = 0;
  v3[24] = 0;
  v4 = qword_1EDBBA040;
  v5 = objc_allocWithZone(type metadata accessor for SelectedBackgroundView());
  *(v0 + v4) = OUTLINED_FUNCTION_4(v5, sel_initWithFrame_);
  v6 = qword_1EDBB9FE0;
  sub_1D7E40308(0, v7, v8, v9);
  v11 = v10;
  *(v0 + v6) = [objc_allocWithZone(v10) init];
  v12 = qword_1EDBBA030;
  *(v0 + v12) = [objc_allocWithZone(v11) init];
  v13 = qword_1EDBBA010;
  *(v0 + v13) = [objc_allocWithZone(v11) init];
  *(v0 + qword_1EDBBA018) = 0;
  *(v0 + qword_1EDBBA008) = 0x8000000000000008;
  v14 = qword_1EDBB9FE8;
  *(v0 + v14) = [objc_allocWithZone(MEMORY[0x1E69E58C0]) init];
  v15 = (v0 + qword_1EDBB9FF8);
  *v15 = 0;
  v15[1] = 0;
  v16 = (v0 + qword_1EDBBA000);
  *v16 = 0;
  v16[1] = 0;
  *(v0 + qword_1EDBBA020) = 0;
  *(v0 + qword_1EDBBA028) = 0;
  *(v0 + qword_1EDBBA038) = 0;
  v17 = *((v2 & v1) + 0x50);
  v18 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  *(v0 + qword_1EDBB9FF0) = OUTLINED_FUNCTION_4(v18, sel_initWithFrame_);
  v35 = type metadata accessor for CollectionViewCell(0, v17, *((v2 & v1) + 0x58), v19);
  v20 = OUTLINED_FUNCTION_80();
  v23 = objc_msgSendSuper2(v21, v22, v20, v0, v35);
  v24 = [v23 contentView];
  v25 = qword_1EDBB9FF0;
  [v24 addSubview_];

  v26 = *&v23[v25];
  v27 = v23;
  v28 = v26;
  v29 = [v27 contentView];
  [v29 bounds];
  OUTLINED_FUNCTION_9_0();

  v30 = OUTLINED_FUNCTION_8_0();
  [v31 v32];

  v33 = [objc_opt_self() clearColor];
  [v27 setBackgroundColor_];

  [v27 setSelectedBackgroundView_];
  return v27;
}

uint64_t sub_1D7EA55A4(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + qword_1EDBB8C90);
  v4 = *(v2 + qword_1EDBB8C90);
  v5 = *(v2 + qword_1EDBB8C90 + 8);
  *v3 = a1;
  v3[1] = a2;
  return sub_1D7E0E10C(v4, v5);
}

void sub_1D7EA566C(void *a1)
{
  v1 = a1;
  CollectionViewListCell.layoutSubviews()();
}

Swift::Void __swiftcall CollectionViewListCell.layoutSubviews()()
{
  ObjectType = swift_getObjectType();
  v6 = sub_1D818E7D4();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15.receiver = v0;
  v15.super_class = ObjectType;
  objc_msgSendSuper2(&v15, sel_layoutSubviews, v8);
  v11 = [v0 contentView];
  [v11 bounds];
  OUTLINED_FUNCTION_9_0();

  sub_1D818E7C4();
  type metadata accessor for RTLAdjuster();
  inited = swift_initStackObject();
  inited[5] = v6;
  inited[6] = sub_1D7E4E9A0();
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(inited + 2);
  (*(v7 + 16))(boxed_opaque_existential_0, v10, v6);
  inited[7] = v1;
  inited[8] = v2;
  inited[9] = v3;
  inited[10] = v4;
  (*(v7 + 8))(v10, v6);
  sub_1D7EA5848(inited, v0);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1Tm(inited + 2);
}

id sub_1D7EA5848(uint64_t a1, char *a2)
{
  v3 = sub_1D818FED4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (RTLAdjuster.layoutDirection.getter() == 1 && (v7 = [a2 _bridgedConfigurationState], sub_1D818FEA4(), v7, LOBYTE(v7) = sub_1D818FEC4(), (*(v4 + 8))(v6, v3), (v7 & 1) != 0))
  {
    v8 = *&a2[qword_1EDBB8BA8];
    v9 = [a2 contentView];
    v10 = [v9 readableContentGuide];

    [v10 layoutFrame];
    v12 = v11;

    [a2 layoutMargins];
    v14 = v12 + v13;
    v15 = [a2 readableContentGuide];
    [v15 layoutFrame];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;

    v46.origin.x = v17;
    v46.origin.y = v19;
    v46.size.width = v21;
    v46.size.height = v23;
    Width = CGRectGetWidth(v46);
    v25 = [a2 contentView];
    [v25 frame];
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v33 = v32;

    v47.origin.x = v27;
    v47.origin.y = v29;
    v47.size.width = v31;
    v47.size.height = v33;
    v48.size.height = CGRectGetHeight(v47);
    v45 = 0;
    v48.origin.y = 0.0;
    v48.origin.x = v14;
    v48.size.width = Width;
    v49 = RTLAdjuster.frame(_:alignment:)(v48, &v45);
    x = v49.origin.x;
    y = v49.origin.y;
    v36 = v49.size.width;
    height = v49.size.height;
  }

  else
  {
    v8 = *&a2[qword_1EDBB8BA8];
    v38 = [a2 contentView];
    [v38 bounds];
    x = v39;
    y = v40;
    v36 = v41;
    height = v42;
  }

  return [v8 setFrame_];
}

Swift::Void __swiftcall SelectedBackgroundView.layoutSubviews()()
{
  v1.receiver = v0;
  v1.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v1, sel_layoutSubviews);
  sub_1D7E9B700();
}

void sub_1D7EA5BD0(void *a1)
{
  v1 = a1;
  sub_1D7EA5C18();
}

id sub_1D7EA5C18()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  v3 = OUTLINED_FUNCTION_20_40();
  [v3 center];
  v5 = v4;
  v7 = v6;

  OUTLINED_FUNCTION_7_73(v8, *((v2 & v1) + 0x50), *((v2 & v1) + 0x58), v9);
  objc_msgSendSuper2(&v33, sel_layoutSubviews);
  if ((*(v0 + qword_1EDBBA020) & 1) == 0 && (*(v0 + qword_1EDBBA028) & 1) == 0)
  {
    v10 = OUTLINED_FUNCTION_20_40();
    [v10 center];
    if (v12 != v5 || v11 != v7)
    {
      [v10 setCenter_];
    }
  }

  v14 = *(v0 + qword_1EDBB9FF0);
  v15 = OUTLINED_FUNCTION_20_40();
  [v15 bounds];
  OUTLINED_FUNCTION_9_0();

  [v14 frame];
  if (!OUTLINED_FUNCTION_19_8(v16, v17, v18, v19))
  {
    v20 = OUTLINED_FUNCTION_8_0();
    [v21 v22];
  }

  v23 = *(v0 + qword_1EDBBA040);
  v24 = OUTLINED_FUNCTION_20_40();
  [v24 bounds];
  OUTLINED_FUNCTION_9_0();

  v34.origin.x = OUTLINED_FUNCTION_8_0();
  SelectedBackgroundView.makeFrame(in:)(v34);
  OUTLINED_FUNCTION_9_0();
  [v23 frame];
  result = OUTLINED_FUNCTION_19_8(v25, v26, v27, v28);
  if ((result & 1) == 0)
  {
    v30 = OUTLINED_FUNCTION_8_0();
    return [v31 v32];
  }

  return result;
}

__C::CGRect __swiftcall SelectedBackgroundView.makeFrame(in:)(__C::CGRect in)
{
  OUTLINED_FUNCTION_155();
  v2 = OBJC_IVAR____TtC5TeaUI22SelectedBackgroundView_styling;
  OUTLINED_FUNCTION_8_4(&v1[OBJC_IVAR____TtC5TeaUI22SelectedBackgroundView_styling], v16);
  if (v1[v2] == 1 || (v3 = [v1 traitCollection], v4 = objc_msgSend(v3, sel_horizontalSizeClass), v3, (v4 | 2) == 2))
  {
    OUTLINED_FUNCTION_8_4(&v1[OBJC_IVAR____TtC5TeaUI22SelectedBackgroundView_insets], &v15);
    v5 = OUTLINED_FUNCTION_80();
    UIEdgeInsetsInsetRect(v5, v6, v7, v8, v9, v10);
  }

  v11 = OUTLINED_FUNCTION_80();
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

uint64_t sub_1D7EA5EC8(uint64_t result, unsigned int a2)
{
  if (a2 < 3)
  {
    v2 = *(result + 8) & 3 | (a2 << 6);
  }

  else
  {
    *result = a2 - 3;
    v2 = -64;
  }

  *(result + 8) = v2;
  return result;
}

double BlueprintLayoutSection<>.init(descriptor:framePosition:items:)@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, unint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v14 = *a2;
  v15 = *(a2 + 8);
  OUTLINED_FUNCTION_2();
  v17 = v16;
  (*(v18 + 16))(a8, a1, v19);
  v20 = *(a6 + 8);
  v21 = *(a7 + 8);
  v25.n128_u64[0] = a4;
  v25.n128_u64[1] = a5;
  v26 = v20;
  v27 = v21;
  v22 = type metadata accessor for BlueprintLayoutSection(0, &v25);
  OUTLINED_FUNCTION_2_89(v22);
  *v23 = v14;
  *(v23 + 8) = v15;
  sub_1D8190DB4();
  BlueprintLayoutSectionViewState.init<A>(items:)();
  (*(v17 + 8))(a1, a4);
  *&result = OUTLINED_FUNCTION_1_96(v26, v25).n128_u64[0];
  return result;
}

BOOL sub_1D7EA6108()
{
  v0 = OUTLINED_FUNCTION_4_11();
  v1(v0);
  return v3 > 0.0 && v2 > 0.0;
}

uint64_t sub_1D7EA614C@<X0>(BOOL *a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_4_11();
  result = v3(v2);
  v6 = v5 > 0.0;
  if (v7 <= 0.0)
  {
    v6 = 0;
  }

  *a1 = v6;
  return result;
}

id sub_1D7EA61A0(char a1, SEL *a2, SEL *a3)
{
  v8.receiver = v3;
  v8.super_class = type metadata accessor for ImageView();
  objc_msgSendSuper2(&v8, *a2, a1 & 1);
  return sub_1D7EA6264(a3, a2);
}

id sub_1D7EA6264(SEL *a1, const char **a2)
{
  v4 = *&v2[OBJC_IVAR____TtC5TeaUI9ImageView_imageView];
  v5 = [v2 *a1];
  v6 = *a2;

  return [v4 v6];
}

void sub_1D7EA62D4(void *a1, SEL *a2, const char **a3)
{
  v5 = v3;
  v7 = [v3 *a2];
  if (v7)
  {
    v8 = v7;
    if (a1)
    {
      sub_1D7E0A1A8(0, &qword_1EDBB2F68, 0x1E69DC888);
      v9 = a1;
      v10 = sub_1D8191CC4();

      if (v10)
      {
        return;
      }
    }

    else
    {
    }
  }

  else if (!a1)
  {
    return;
  }

  v11 = *a3;

  [v5 v11];
}

unint64_t get_enum_tag_for_layout_string_5TeaUI17SelectionBehaviorO(unint64_t *a1)
{
  if ((*a1 & 0x8000000000000000) == 0)
  {
    return *a1 >> 61;
  }

  else
  {
    return (*a1 >> 3) + 4;
  }
}

uint64_t KeyboardSelectionStyle.setup(cell:selectedBackgroundView:)()
{
  sub_1D818EEE4();
  v0 = sub_1D818EED4();
  v1 = 64;
  if (v0)
  {
    v1 = 24;
  }

  OUTLINED_FUNCTION_1_168(v1);
  OUTLINED_FUNCTION_0_234();
  return v2();
}

uint64_t BackgroundSelectionStyle.setup(cell:selectedBackgroundView:)(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  v6 = *(a2 + 16);
  v7 = a3;
  return v6(a3, ObjectType, a2);
}

uint64_t PinningBlueprintCollectionViewLayout.init(blueprintLayoutCollectionProvider:)(uint64_t a1)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x1B0);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1);
  (*(v4 + 16))(&v10 - v6, a1, v3, v5);
  BlueprintCollectionViewLayout.init(blueprintLayoutCollectionProvider:)();
  v8 = v7;
  (*(v4 + 8))(a1, v3);
  return v8;
}

uint64_t SharedImageCache.init()()
{
  v1 = v0;
  v2 = type metadata accessor for MemoryCacheAccessQueue();
  swift_allocObject();
  v3 = MemoryCacheAccessQueue.init()();
  type metadata accessor for MemoryImageCache();
  v4 = swift_allocObject();
  v4[6] = v2;
  v4[7] = &protocol witness table for MemoryCacheAccessQueue;
  v4[3] = v3;
  sub_1D7E1D0A0(0);
  swift_allocObject();
  v4[2] = sub_1D818FC84();
  *(v1 + 16) = v4;
  return v1;
}

uint64_t MemoryCacheAccessQueue.init()()
{
  v0 = sub_1D8191AA4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_15();
  v4 = v3 - v2;
  v5 = sub_1D8191A84();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_15();
  v6 = sub_1D8190C34();
  MEMORY[0x1EEE9AC00](v6 - 8);
  OUTLINED_FUNCTION_15();
  sub_1D7E0A1A8(0, &qword_1EDBBC7C0, 0x1E69E9610);
  sub_1D8190C24();
  sub_1D7E102D8(&unk_1EDBB3180, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  sub_1D7E2798C(0);
  sub_1D7E102D8(&qword_1EDBB3300, sub_1D7E2798C, MEMORY[0x1E69E6328]);
  sub_1D8192004();
  (*(v1 + 104))(v4, *MEMORY[0x1E69E8090], v0);
  *(v8 + 16) = sub_1D8191AE4();
  return v8;
}

void sub_1D7EA6964(double a1)
{
  v3.receiver = v1;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, sel_setCornerRadius_, a1);
  sub_1D7EA69B0();
}

void sub_1D7EA69B0()
{
  v1 = *&v0[OBJC_IVAR____TtC5TeaUIP33_01AB305DE961FE9633E4B4930A1B15A714ImageViewLayer_coordinateWithLayer];
  if (v1)
  {
    v3.receiver = v0;
    v3.super_class = swift_getObjectType();
    v2 = v1;
    objc_msgSendSuper2(&v3, sel_cornerRadius);
    [v2 setCornerRadius_];
  }
}

uint64_t sub_1D7EA6A28(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D7EA6A68(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 17))
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

unint64_t sub_1D7EA6AA8(void *a1)
{
  v2 = *v1;
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_project_boxed_opaque_existential_1(a1, v3);

  return sub_1D7EA6B0C(v5, v2, v3, v4);
}

unint64_t sub_1D7EA6B0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, v7);
  v10._countAndFlagsBits = (*(a4 + 16))(a3, a4);
  v11 = MemoryImageCache.image(for:)(v10);

  (*(v6 + 8))(v9, a3);
  return v11;
}

UIImage_optional __swiftcall MemoryImageCache.image(for:)(Swift::String a1)
{
  v2 = v1;
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v5 = v1[6];
  v6 = v1[7];
  __swift_project_boxed_opaque_existential_1(v1 + 3, v5);
  OUTLINED_FUNCTION_0_8();
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = countAndFlagsBits;
  v8[4] = object;
  v9 = *(v6 + 16);

  sub_1D8190DB4();
  v10 = v9(sub_1D7EA6E38, v8, v5, v6);

  sub_1D7EA7358(v13, v14, v2, countAndFlagsBits, object, v11, v12);
  v16 = v10;
  result.value.super.isa = v16;
  result.is_nil = v15;
  return result;
}

uint64_t sub_1D7EA6D30()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_0_8();

  return swift_deallocObject();
}

uint64_t MemoryCacheAccessMainWriter.accessValue(block:)(uint64_t (*a1)(uint64_t))
{
  v2 = [objc_opt_self() currentThread];
  v3 = [v2 isMainThread];

  if (v3)
  {
    return (a1)();
  }

  v5 = sub_1D818EDB4();
  v6 = a1(v5);
  sub_1D818EDC4();
  return v6;
}

uint64_t sub_1D7EA6E44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    sub_1D818FC74();

    return v4;
  }

  return result;
}

void *BlueprintTraversalCollectionProvider.init()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for BlueprintTraversalCollectionItem(0, *(*v4 + 80), a3, a4);
  v5 = sub_1D81913C4();
  sub_1D7EA76FC(v5, v4 + 2);
  return v4;
}

uint64_t objectdestroy_2Tm()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_2Tm_0()
{
  if (*(v0 + 32))
  {
  }

  return swift_deallocObject();
}

uint64_t objectdestroy_2Tm_1()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_2Tm_2(uint64_t a1)
{

  return swift_deallocObject();
}

uint64_t objectdestroy_2Tm_3()
{
  OUTLINED_FUNCTION_2();

  v0 = OUTLINED_FUNCTION_2_11();
  v1(v0);
  OUTLINED_FUNCTION_4_44();

  return swift_deallocObject();
}

uint64_t objectdestroy_2Tm_4()
{
  type metadata accessor for JSONSchemaView(0);
  OUTLINED_FUNCTION_4_20();
  v4 = v0 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  OUTLINED_FUNCTION_42_10();
  type metadata accessor for JSONSchema(0);
  OUTLINED_FUNCTION_29_13();
  OUTLINED_FUNCTION_4_3();
  (*(v5 + 8))(v4 + v2);
  OUTLINED_FUNCTION_41_9();
  OUTLINED_FUNCTION_4_3();
  (*(v6 + 8))(v4 + v2);
  OUTLINED_FUNCTION_40_9();
  OUTLINED_FUNCTION_4_3();
  (*(v7 + 8))(v4 + v1);
  OUTLINED_FUNCTION_24_15();
  OUTLINED_FUNCTION_24_15();
  OUTLINED_FUNCTION_24_15();
  OUTLINED_FUNCTION_24_15();
  OUTLINED_FUNCTION_28_14();

  OUTLINED_FUNCTION_36_9();
  OUTLINED_FUNCTION_0_150();
  sub_1D7E1898C(0, v8, v9, MEMORY[0x1E697DCB8]);
  OUTLINED_FUNCTION_17_7();
  swift_getEnumCaseMultiPayload();
  OUTLINED_FUNCTION_39_11();
  if (v2 == 1)
  {

    OUTLINED_FUNCTION_27_17();
    OUTLINED_FUNCTION_4_3();
    (*(v10 + 8))(v1 + v2);
  }

  OUTLINED_FUNCTION_19_21();

  OUTLINED_FUNCTION_9_28();
  if (!v12)
  {
    OUTLINED_FUNCTION_26_14(v11);
  }

  OUTLINED_FUNCTION_21_21();
  if (v13)
  {
  }

  OUTLINED_FUNCTION_35_12();

  return swift_deallocObject();
}

uint64_t objectdestroy_2Tm_5(void (*a1)(void))
{
  a1(*(v1 + 16));

  OUTLINED_FUNCTION_0_32();

  return swift_deallocObject();
}

uint64_t sub_1D7EA7358(__n128 a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = sub_1D8190BD4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1D8190C34();
  v13 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7E0A1A8(0, &qword_1EDBBC7C0, 0x1E69E9610);
  v16 = sub_1D8191AB4();
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  v18[2] = v17;
  v18[3] = a4;
  v18[4] = a5;
  aBlock[4] = sub_1D7EB2B2C;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D7E64940;
  aBlock[3] = &block_descriptor_0;
  v19 = _Block_copy(aBlock);
  sub_1D8190DB4();

  sub_1D8190BF4();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1D7E28784(&qword_1EDBB34B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1D7E2885C(0, v20, v21, v22, v23, v24, v25);
  sub_1D7E28784(&qword_1EDBB3340, sub_1D7E2885C, MEMORY[0x1E69E6328]);
  sub_1D8192004();
  MEMORY[0x1DA713CE0](0, v15, v12, v19);
  _Block_release(v19);

  (*(v10 + 8))(v12, v9);
  return (*(v13 + 8))(v15, v28);
}

uint64_t sub_1D7EA7674(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_1D818E994();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

double ImageView.loadImage(from:with:interestToken:completion:)(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = a2[3];
  v11 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v10);
  v12 = (*(v11 + 16))(v10, v11);
  sub_1D7E73B8C(v12, v13);
  v14 = a1[3];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v14);
  OUTLINED_FUNCTION_0_8();
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1D7E0E768(a2, v20);
  v17 = swift_allocObject();
  v17[2] = v16;
  sub_1D7E05450(v20, (v17 + 3));
  v17[8] = a4;
  v17[9] = a5;
  v18 = *(v15 + 16);

  v18(a2, 1, a3, sub_1D7EBC9F4, v17, v14, v15);

  return result;
}

uint64_t sub_1D7EA7864()
{
  MEMORY[0x1DA715E30](v0 + 16);
  OUTLINED_FUNCTION_0_8();

  return swift_deallocObject();
}

uint64_t sub_1D7EA7898()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_1D7EA78F0(uint64_t a1, char a2, uint64_t a3, void (*a4)(void *, void), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29[3] = a7;
  v29[4] = a8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v29);
  (*(*(a7 - 8) + 16))(boxed_opaque_existential_0, a1, a7);
  v14 = *(a8 + 16);
  v15._countAndFlagsBits = v14(a7, a8);
  v16 = MemoryImageCache.image(for:)(v15);

  if (v16)
  {
    v17 = v16;
    a4(v16, 0);
  }

  else
  {
    v18 = v14(a7, a8);
    v20 = v19;
    if (a3)
    {
      v21 = a5;
    }

    else
    {
      v21 = a5;
      if (qword_1EDBB8158 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
    }

    v22 = swift_allocObject();
    *(v22 + 16) = a4;
    *(v22 + 24) = v21;
    sub_1D7E0E768(v29, v28);
    v23 = swift_allocObject();
    *(v23 + 16) = a6;
    sub_1D7E05450(v28, v23 + 24);
    *(v23 + 64) = a2 & 1;
    *(v23 + 72) = v18;
    *(v23 + 80) = v20;

    sub_1D8190DB4();
    sub_1D7EA7C54();
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v29);
}

uint64_t sub_1D7EA7B78()
{

  return swift_deallocObject();
}

uint64_t sub_1D7EA7BB0()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_1D7EA7BF8()
{
  OUTLINED_FUNCTION_8_3();
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  OUTLINED_FUNCTION_4_26();

  return sub_1D7EA78F0(v1, v2, v3, v4, v5, v6, v7, v8);
}

void sub_1D7EA7C54()
{
  OUTLINED_FUNCTION_120();
  v1 = v0;
  v27 = v3;
  v28 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = sub_1D8190BD4();
  OUTLINED_FUNCTION_2();
  v31 = v13;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_15();
  v17 = v16 - v15;
  sub_1D8190C34();
  OUTLINED_FUNCTION_2();
  v29 = v19;
  v30 = v18;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_15();
  v22 = v21 - v20;
  OUTLINED_FUNCTION_0_8();
  v23 = swift_allocObject();
  swift_weakInit();
  v24 = swift_allocObject();
  v24[2] = v23;
  v24[3] = v11;
  v24[4] = v9;
  v24[5] = v27;
  v24[6] = v1;
  v24[7] = v28;
  v24[8] = v5;
  v24[9] = v7;
  v32[4] = sub_1D7F587AC;
  v32[5] = v24;
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 1107296256;
  v32[2] = sub_1D7E64940;
  v32[3] = &block_descriptor_12;
  v25 = _Block_copy(v32);

  sub_1D8190DB4();

  sub_1D8190BF4();
  sub_1D7E1CF48(&qword_1EDBB34B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  v26 = MEMORY[0x1E69E7F60];
  sub_1D7E1A888(0, &qword_1EDBB3348, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1D7E1CF90(&qword_1EDBB3340, &qword_1EDBB3348, v26);
  sub_1D8192004();
  MEMORY[0x1DA713CE0](0, v22, v17, v25);
  _Block_release(v25);
  (*(v31 + 8))(v17, v12);
  (*(v29 + 8))(v22, v30);

  OUTLINED_FUNCTION_100();
}

uint64_t sub_1D7EA7F74()
{

  return swift_deallocObject();
}

id CardViewScrollViewCoordinator.init(scrollView:isEnabled:)(uint64_t a1, char a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC5TeaUI29CardViewScrollViewCoordinator_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v6 = OBJC_IVAR____TtC5TeaUI29CardViewScrollViewCoordinator_isEnabled;
  v2[OBJC_IVAR____TtC5TeaUI29CardViewScrollViewCoordinator_isEnabled] = 1;
  v2[OBJC_IVAR____TtC5TeaUI29CardViewScrollViewCoordinator_isTransitioning] = 0;
  *&v2[OBJC_IVAR____TtC5TeaUI29CardViewScrollViewCoordinator_trackingPollTimer] = 0;
  OUTLINED_FUNCTION_1_91(OBJC_IVAR____TtC5TeaUI29CardViewScrollViewCoordinator_scrollLock);
  *&v2[OBJC_IVAR____TtC5TeaUI29CardViewScrollViewCoordinator_scrollView] = a1;
  swift_beginAccess();
  v2[v6] = a2;
  v8.receiver = v2;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t BlueprintLayoutOptionsProvider.margins.setter(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  result = OUTLINED_FUNCTION_0_25(v2 + 16, a2);
  *(v2 + 16) = v3;
  *(v2 + 24) = v4;
  return result;
}

uint64_t CollectionViewCell.registerForChanges(block:)(uint64_t a1, uint64_t a2)
{

  return sub_1D7EA8098(a1, a2);
}

id _s5TeaUI18CollectionViewCellC22traversedDisposerTokenSo8NSObjectCvg_0(uint64_t a1, uint64_t a2)
{
  v3 = qword_1EDBB9FE8;
  OUTLINED_FUNCTION_10(v2 + qword_1EDBB9FE8, a2);
  v4 = *(v2 + v3);

  return v4;
}

id sub_1D7EA81BC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  v7 = sub_1D818E994();
  OUTLINED_FUNCTION_9();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_15();
  v13 = v12 - v11;
  v14 = sub_1D8190F14();
  v16 = v15;
  sub_1D818E924();
  v17 = a1;
  v18 = a5(v14, v16, v13);

  (*(v9 + 8))(v13, v7);

  return v18;
}

void sub_1D7EA82F4()
{
  OUTLINED_FUNCTION_31_9();
  OUTLINED_FUNCTION_47_9();
  sub_1D7E67328(v11);
  v1 = v12;
  if (*(v12 + 16) && (OUTLINED_FUNCTION_23_14(), v2 = OUTLINED_FUNCTION_85(), v4 = sub_1D7E11428(v2, v3), (v5 & 1) != 0) && (v6 = *(*(v1 + 56) + 8 * v4), sub_1D8190DB4(), sub_1D7EA83F4(v0, v6), OUTLINED_FUNCTION_16_1(), , v0) && (v7 = BlueprintLayoutCollectionLayoutAttributes.requiresPinning.getter()))
  {
    OUTLINED_FUNCTION_26_13(v7, v8);
    sub_1D7EAF9D8(v0 + 608, __dst);
    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_7_47();
    BlueprintLayoutCollectionPinAdjuster.adjusted(layoutAttributes:offset:insets:contentSize:)();

    memcpy(__dst, __src, 0x260uLL);
    sub_1D7EAFC0C(__dst);
    sub_1D7E598FC(v11);
  }

  else
  {
    sub_1D7E598FC(v11);
  }

  OUTLINED_FUNCTION_32_9();
}

void *sub_1D7EA83F4(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_1D7E7DB08();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(a2 + 56) + 8 * v3);
  v6 = v5;
  return v5;
}

BOOL BlueprintLayoutCollectionLayoutAttributes.requiresPinning.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_pinTrait);
  OUTLINED_FUNCTION_8_4(v0 + OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_pinTrait, v9);
  v2 = *v1;
  LODWORD(v1) = *(v1 + 8);
  v3 = OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_rubberbandEdge;
  OUTLINED_FUNCTION_8_4(v0 + OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_rubberbandEdge, &v8);
  v4 = *(v0 + v3);
  sub_1D7EA84BC();
  return v1 < 3 || v2 == 0 || v4 != 3;
}

void sub_1D7EA84BC()
{
  if (!qword_1EDBB53D0[0])
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, qword_1EDBB53D0);
    }
  }
}

uint64_t sub_1D7EA851C(uint64_t a1, uint64_t a2)
{
  sub_1D7E1ADB0(0, qword_1EDBB5AF8, type metadata accessor for CollectionViewSupplementaryKind.Source);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7EA859C(__n128 *a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, __n128 a11, __n128 a12, __n128 a13, __n128 a14)
{
  v16 = *(v14 + 600);
  v17 = OUTLINED_FUNCTION_1_152(a1[1], a1[2], a1, a2, a3, a4, a5, a6, a7, a8, a11, a12, a13, a14);
  return a2(v16, v17);
}

uint64_t BlueprintViewSupplementaryData.indexPath.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BlueprintViewSupplementaryData(0) + 20);
  v4 = sub_1D818E994();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t BlueprintInfiniteScrollManager.__allocating_init(infiniteScroll:)(uint64_t a1)
{
  v2 = type metadata accessor for BlueprintInfiniteScroll(0);
  v3 = OUTLINED_FUNCTION_50(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_15();
  v6 = v5 - v4;
  sub_1D7E33AB4(a1, v5 - v4);
  if (qword_1EDBB1B60 != -1)
  {
    OUTLINED_FUNCTION_2_122(&qword_1EDBB1B60);
  }

  v7 = qword_1EDBC6040;
  v8 = OUTLINED_FUNCTION_4_80();
  BlueprintInfiniteScrollManager.init(infiniteScroll:maxInflightRequests:log:)(v6, 0x7FFFFFFFFFFFFFFFLL, v7);
  sub_1D7E306A8(a1);
  return v8;
}

uint64_t UICollectionView.dequeue<A>(supplementaryView:kind:at:name:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v7 = v6;
  v12 = sub_1D8190EE4();

  sub_1D7E3ED28(a1, a4, a5);
  v13 = sub_1D8190EE4();

  v14 = sub_1D818E8E4();
  v15 = [v7 dequeueReusableSupplementaryViewOfKind:v12 withReuseIdentifier:v13 forIndexPath:v14];

  return MEMORY[0x1EEE6BE48](v15, a6, 0, 0, 0);
}

uint64_t sub_1D7EA8884()
{
  v1 = *(v0 + qword_1EDBB8C90);
  sub_1D7E19F24(v1, *(v0 + qword_1EDBB8C90 + 8));
  return v1;
}

uint64_t sub_1D7EA88C4()
{
  sub_1D7E13588();
  OUTLINED_FUNCTION_0_79();
  result = sub_1D8191E54();
  qword_1EDBC6040 = result;
  return result;
}

uint64_t sub_1D7EA8910(uint64_t a1)
{
  v2 = type metadata accessor for BlueprintViewSupplementaryData(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D7EA896C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CollectionViewSupplementaryKind.Source(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static CollectionViewSupplementaryKind.Source.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D818E994();
  v35 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v32 - v8;
  v10 = type metadata accessor for CollectionViewSupplementaryKind.Source(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v32 - v14);
  sub_1D7EA8D28(0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = &v18[*(v19 + 56)];
  sub_1D7EA8D8C(a1, v18);
  sub_1D7EA8D8C(a2, v20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D7EA8D8C(v18, v12);
    sub_1D7E58AEC(0);
    v22 = *(v21 + 48);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v23 = *v12;
      v33 = *v20;
      v34 = v23;
      v24 = v35;
      v25 = *(v35 + 32);
      v25(v9, &v12[v22], v4);
      v25(v6, &v20[v22], v4);
      if (v34 == v33)
      {
        v26 = sub_1D818E914();
        v27 = *(v24 + 8);
        v27(v6, v4);
        v27(v9, v4);
      }

      else
      {
        v30 = *(v24 + 8);
        v30(v6, v4);
        v30(v9, v4);
        v26 = 0;
      }

      goto LABEL_10;
    }

    (*(v35 + 8))(&v12[v22], v4);
    v26 = 0;
    v29 = sub_1D7EA8D28;
  }

  else
  {
    sub_1D7EA8D8C(v18, v15);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v29 = sub_1D7EA8D28;
    if (EnumCaseMultiPayload != 1)
    {
      v26 = *v15 == *v20;
LABEL_10:
      v29 = type metadata accessor for CollectionViewSupplementaryKind.Source;
      goto LABEL_11;
    }

    v26 = 0;
  }

LABEL_11:
  sub_1D7EA8DF0(v18, v29);
  return v26 & 1;
}

void sub_1D7EA8D28(uint64_t a1)
{
  if (!qword_1EDBB5A70[0])
  {
    type metadata accessor for CollectionViewSupplementaryKind.Source(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, qword_1EDBB5A70);
    }
  }
}

uint64_t sub_1D7EA8D8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CollectionViewSupplementaryKind.Source(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D7EA8DF0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D7EA8EFC()
{
  swift_beginAccess();
  v1 = sub_1D8190DB4();
  sub_1D7EA8F6C(v1);
  v3 = v2;

  *(v0 + 16) = v3;
}

void sub_1D7EA8F6C(uint64_t a1)
{
  v26 = MEMORY[0x1E69E7CC8];
  v33 = MEMORY[0x1E69E7CC8];
  v1 = a1 + 64;
  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  sub_1D8190DB4();
  v6 = 0;
  v28 = v5;
  v29 = v1;
  while (1)
  {
    v7 = v6;
    if (!v4)
    {
      goto LABEL_7;
    }

    while (2)
    {
      v6 = v7;
LABEL_10:
      v31 = (v4 - 1) & v4;
      v8 = __clz(__rbit64(v4)) | (v6 << 6);
      v9 = (*(a1 + 48) + 16 * v8);
      v10 = v9[1];
      v27 = *v9;
      v11 = *(*(a1 + 56) + 8 * v8);
      v32 = MEMORY[0x1E69E7CC0];
      v12 = sub_1D7E36AB8(v11);
      sub_1D8190DB4();
      sub_1D8190DB4();
      for (i = 0; v12 != i; ++i)
      {
        if ((v11 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1DA714420](i, v11);
        }

        else
        {
          if (i >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_38;
          }
        }

        if (__OFADD__(i, 1))
        {
          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
          goto LABEL_40;
        }

        if (swift_unknownObjectWeakLoadStrong())
        {
          swift_unknownObjectRelease();
          sub_1D8192274();
          sub_1D81922B4();
          sub_1D81922C4();
          sub_1D8192284();
        }

        else
        {
        }
      }

      if (!sub_1D7E36AB8(v32))
      {

        v7 = v6;
        v5 = v28;
        v1 = v29;
        v4 &= v4 - 1;
        if (v31)
        {
          continue;
        }

LABEL_7:
        while (1)
        {
          v6 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
            goto LABEL_39;
          }

          if (v6 >= v5)
          {

            return;
          }

          v4 = *(v1 + 8 * v6);
          ++v7;
          if (v4)
          {
            goto LABEL_10;
          }
        }
      }

      break;
    }

    v14 = v26;
    if (*(v26 + 24) <= *(v26 + 16))
    {
      sub_1D7F01914();
      v14 = v33;
    }

    v26 = v14;
    sub_1D81927E4();
    sub_1D8190FF4();
    v15 = sub_1D8192824();
    v16 = v26 + 64;
    v17 = -1 << *(v26 + 32);
    v18 = v15 & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v26 + 64 + 8 * (v18 >> 6))) == 0)
    {
      break;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v26 + 64 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_35:
    *(v16 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    v25 = (*(v26 + 48) + 16 * v20);
    *v25 = v27;
    v25[1] = v10;
    *(*(v26 + 56) + 8 * v20) = v32;
    ++*(v26 + 16);
    v5 = v28;
    v1 = v29;
    v4 &= v4 - 1;
  }

  v21 = 0;
  v22 = (63 - v17) >> 6;
  while (++v19 != v22 || (v21 & 1) == 0)
  {
    v23 = v19 == v22;
    if (v19 == v22)
    {
      v19 = 0;
    }

    v21 |= v23;
    v24 = *(v16 + 8 * v19);
    if (v24 != -1)
    {
      v20 = __clz(__rbit64(~v24)) + (v19 << 6);
      goto LABEL_35;
    }
  }

LABEL_40:
  __break(1u);
}

uint64_t sub_1D7EA92BC(void *a1, void (*a2)(double), uint64_t a3, void *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v73 = a6;
  v74 = a5;
  sub_1D7E98BE0(0);
  v10 = *(v9 - 8);
  v71 = v9;
  v72 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D818E8B4();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  a2(v15);
  v18 = a4[3];
  v19 = a4[4];
  v20 = __swift_project_boxed_opaque_existential_1(a4, v18);
  v21 = *(v19 + 32);
  v69 = v20;
  v70 = v21;
  v21(v18, v19);
  v22 = sub_1D818E874();
  v75 = *(v14 + 8);
  v76 = v13;
  v75(v17, v13);
  if ((v22 & 1) == 0)
  {
    v70(v18, v19);
    v23 = sub_1D818E814();
    v75(v17, v76);
    [a1 reloadSections_];
  }

  v24 = a4[3];
  v25 = a4[4];
  __swift_project_boxed_opaque_existential_1(a4, v24);
  v26 = *((*(v25 + 72))(v24, v25) + 16);

  if (v26)
  {
    v27 = a4[3];
    v28 = a4[4];
    __swift_project_boxed_opaque_existential_1(a4, v27);
    (*(v28 + 72))(v27, v28);
    sub_1D818E994();
    v29 = sub_1D8191304();

    [a1 reloadItemsAtIndexPaths_];
  }

  v30 = a4[3];
  v31 = a4[4];
  __swift_project_boxed_opaque_existential_1(a4, v30);
  (*(v31 + 16))(v30, v31);
  LOBYTE(v30) = sub_1D818E874();
  v33 = v75;
  v32 = v76;
  v75(v17, v76);
  if ((v30 & 1) == 0)
  {
    v34 = a4[3];
    v35 = a4[4];
    __swift_project_boxed_opaque_existential_1(a4, v34);
    (*(v35 + 16))(v34, v35);
    v36 = sub_1D818E814();
    v33(v17, v32);
    [a1 deleteSections_];
  }

  v37 = a4[3];
  v38 = a4[4];
  __swift_project_boxed_opaque_existential_1(a4, v37);
  (*(v38 + 24))(v37, v38);
  LOBYTE(v37) = sub_1D818E874();
  v33(v17, v32);
  if ((v37 & 1) == 0)
  {
    v39 = a4[3];
    v40 = a4[4];
    __swift_project_boxed_opaque_existential_1(a4, v39);
    (*(v40 + 24))(v39, v40);
    v41 = sub_1D818E814();
    v33(v17, v32);
    [a1 insertSections_];
  }

  v42 = a4[3];
  v43 = a4[4];
  __swift_project_boxed_opaque_existential_1(a4, v42);
  v44 = *((*(v43 + 56))(v42, v43) + 16);

  if (v44)
  {
    v45 = a4[3];
    v46 = a4[4];
    __swift_project_boxed_opaque_existential_1(a4, v45);
    (*(v46 + 56))(v45, v46);
    sub_1D818E994();
    v47 = sub_1D8191304();

    [a1 deleteItemsAtIndexPaths_];
  }

  v48 = a4[3];
  v49 = a4[4];
  __swift_project_boxed_opaque_existential_1(a4, v48);
  v50 = *((*(v49 + 64))(v48, v49) + 16);

  if (v50)
  {
    v51 = a4[3];
    v52 = a4[4];
    __swift_project_boxed_opaque_existential_1(a4, v51);
    (*(v52 + 64))(v51, v52);
    sub_1D818E994();
    v53 = sub_1D8191304();

    [a1 insertItemsAtIndexPaths_];
  }

  v54 = a4[3];
  v55 = a4[4];
  __swift_project_boxed_opaque_existential_1(a4, v54);
  v56 = (*(v55 + 48))(v54, v55);
  v57 = *(v56 + 16);
  if (v57)
  {
    v58 = (v56 + 40);
    do
    {
      [a1 moveSection:*(v58 - 1) toSection:*v58];
      v58 += 2;
      --v57;
    }

    while (v57);
  }

  v59 = a4[3];
  v60 = a4[4];
  __swift_project_boxed_opaque_existential_1(a4, v59);
  v61 = (*(v60 + 80))(v59, v60);
  v62 = *(v61 + 16);
  if (v62)
  {
    v63 = v61 + ((*(v72 + 80) + 32) & ~*(v72 + 80));
    v64 = *(v72 + 72);
    do
    {
      sub_1D7E9A440(v63, v12, sub_1D7E98BE0);
      v65 = sub_1D818E8E4();
      v66 = sub_1D818E8E4();
      sub_1D7FE84DC(v12);
      [a1 moveItemAtIndexPath:v65 toIndexPath:v66];

      v63 += v64;
      --v62;
    }

    while (v62);
  }

  return v74(v67);
}

uint64_t sub_1D7EA9984()
{
  swift_beginAccess();
  v1 = sub_1D8190DB4();
  sub_1D7EA9A04(v1);
  v3 = v2;

  *(v0 + 16) = v3;
}

void sub_1D7EA9A04(uint64_t a1)
{
  v27 = MEMORY[0x1E69E7CC8];
  v34 = MEMORY[0x1E69E7CC8];
  v1 = a1 + 64;
  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  sub_1D8190DB4();
  v6 = 0;
  v29 = v5;
  v30 = v1;
  while (1)
  {
    v7 = v6;
    if (!v4)
    {
      goto LABEL_7;
    }

    while (2)
    {
      v6 = v7;
LABEL_10:
      v32 = (v4 - 1) & v4;
      v8 = __clz(__rbit64(v4)) | (v6 << 6);
      v9 = (*(a1 + 48) + 16 * v8);
      v10 = v9[1];
      v28 = *v9;
      v11 = *(*(a1 + 56) + 8 * v8);
      v33 = MEMORY[0x1E69E7CC0];
      v12 = sub_1D7E36AB8(v11);
      sub_1D8190DB4();
      sub_1D8190DB4();
      for (i = 0; v12 != i; ++i)
      {
        if ((v11 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1DA714420](i, v11);
        }

        else
        {
          if (i >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_38;
          }
        }

        if (__OFADD__(i, 1))
        {
          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
          goto LABEL_40;
        }

        if (swift_unknownObjectWeakLoadStrong())
        {
          swift_unknownObjectRelease();
          sub_1D8192274();
          sub_1D81922B4();
          sub_1D81922C4();
          sub_1D8192284();
        }

        else
        {
        }
      }

      if (!sub_1D7E36AB8(v33))
      {

        v7 = v6;
        v5 = v29;
        v1 = v30;
        v4 &= v4 - 1;
        if (v32)
        {
          continue;
        }

LABEL_7:
        while (1)
        {
          v6 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
            goto LABEL_39;
          }

          if (v6 >= v5)
          {

            return;
          }

          v4 = *(v1 + 8 * v6);
          ++v7;
          if (v4)
          {
            goto LABEL_10;
          }
        }
      }

      break;
    }

    v14 = v27;
    v15 = *(v27 + 16);
    if (*(v27 + 24) <= v15)
    {
      sub_1D7EA9D88(v15 + 1, 1);
      v14 = v34;
    }

    v27 = v14;
    sub_1D81927E4();
    sub_1D8190FF4();
    v16 = sub_1D8192824();
    v17 = v27 + 64;
    v18 = -1 << *(v27 + 32);
    v19 = v16 & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v27 + 64 + 8 * (v19 >> 6))) == 0)
    {
      break;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v27 + 64 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_35:
    *(v17 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    v26 = (*(v27 + 48) + 16 * v21);
    *v26 = v28;
    v26[1] = v10;
    *(*(v27 + 56) + 8 * v21) = v33;
    ++*(v27 + 16);
    v5 = v29;
    v1 = v30;
    v4 &= v4 - 1;
  }

  v22 = 0;
  v23 = (63 - v18) >> 6;
  while (++v20 != v23 || (v22 & 1) == 0)
  {
    v24 = v20 == v23;
    if (v20 == v23)
    {
      v20 = 0;
    }

    v22 |= v24;
    v25 = *(v17 + 8 * v20);
    if (v25 != -1)
    {
      v21 = __clz(__rbit64(~v25)) + (v20 << 6);
      goto LABEL_35;
    }
  }

LABEL_40:
  __break(1u);
}

uint64_t sub_1D7EA9D54()
{
  sub_1D7EA9DB0();

  return swift_deallocClassInstance();
}

uint64_t *sub_1D7EA9DB0()
{
  v1 = *v0;

  v2 = *(v1 + 96);
  v5[0] = *(v1 + 80);
  v5[1] = v2;
  v3 = type metadata accessor for BlueprintLayout(0, v5);
  (*(*(v3 - 8) + 8))(v0 + 4, v3);
  memcpy(v5, v0 + 80, 0x4E8uLL);
  sub_1D7E598FC(v5);
  memcpy(__dst, v0 + 237, 0x235uLL);
  sub_1D7E4C1A0(__dst);

  swift_weakDestroy();

  return v0;
}

void sub_1D7EA9E9C()
{
  v7 = OUTLINED_FUNCTION_16_9();
  sub_1D7EAAFC4(v7, v8, v9, v10);
  v11 = OUTLINED_FUNCTION_24_3();
  if (!*(v3 + 16))
  {
LABEL_26:

LABEL_27:
    *v0 = v11;
    return;
  }

  OUTLINED_FUNCTION_6_7();
  if (!v1)
  {
LABEL_4:
    v12 = v6;
    while (1)
    {
      v6 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v0)
      {
        break;
      }

      ++v12;
      if (*(v2 + 8 * v6))
      {
        OUTLINED_FUNCTION_21_3();
        v1 = v14 & v13;
        goto LABEL_9;
      }
    }

    if ((v31 & 1) == 0)
    {

      v0 = v30;
      goto LABEL_27;
    }

    OUTLINED_FUNCTION_31_3();
    v0 = v30;
    if (v28 != v29)
    {
      OUTLINED_FUNCTION_51_1(v27);
    }

    else
    {
      OUTLINED_FUNCTION_44_0(v27);
    }

    *(v3 + 16) = 0;
    goto LABEL_26;
  }

  while (1)
  {
    OUTLINED_FUNCTION_36_2();
LABEL_9:
    OUTLINED_FUNCTION_47_1();
    if ((v15 & 1) == 0)
    {
      sub_1D8190DB4();
      sub_1D8190DB4();
    }

    v16 = sub_1D81927E4();
    OUTLINED_FUNCTION_58_0(v16, v17, v18);
    sub_1D8192824();
    OUTLINED_FUNCTION_14_8();
    if (v19)
    {
      break;
    }

    OUTLINED_FUNCTION_34();
LABEL_18:
    OUTLINED_FUNCTION_12_7(v20);
    v26 = (v25 + 16 * v24);
    *v26 = v4;
    v26[1] = v5;
    OUTLINED_FUNCTION_18_4(v24);
    if (!v1)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_33();
  while (v21 + 1 != v23 || (v22 & 1) == 0)
  {
    OUTLINED_FUNCTION_53_1();
    if (!v19)
    {
      OUTLINED_FUNCTION_32();
      goto LABEL_18;
    }
  }

LABEL_29:
  __break(1u);
}

void BlueprintInfiniteScrollBuilder.build<A, B, C, D>(blueprint:layoutBlueprint:layoutCollection:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  OUTLINED_FUNCTION_70();
  a27 = v30;
  a28 = v33;
  v237 = v29;
  v241 = v34;
  v227 = v35;
  v242 = v36;
  v37 = a29;
  v236 = sub_1D818E994();
  OUTLINED_FUNCTION_9();
  v240 = v38;
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_15();
  v40 = OUTLINED_FUNCTION_48_3();
  type metadata accessor for BlueprintItem(v40, v41, v37, v42);
  OUTLINED_FUNCTION_9();
  v239 = v43;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v209 - v45;
  v238 = v47;
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_52();
  v245 = v48;
  v244 = sub_1D8191E84();
  OUTLINED_FUNCTION_9();
  v231 = v49;
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_23();
  v243 = v51;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v52);
  v54 = &v209 - v53;
  v55 = OUTLINED_FUNCTION_61_2();
  v57 = type metadata accessor for BlueprintSection(v55, v56);
  OUTLINED_FUNCTION_21_8();
  WitnessTable = swift_getWitnessTable();
  v59 = sub_1D81923F4();
  OUTLINED_FUNCTION_25_6(v59, &v245);
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_38_0(v61);
  v214 = WitnessTable;
  v246 = sub_1D81923E4();
  OUTLINED_FUNCTION_9();
  v229 = v62;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_94();
  v247 = v64;
  v228 = *(v57 - 8);
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_14_1(v66);
  v224 = v57;
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_52();
  v219 = v67;
  v218 = sub_1D8191E84();
  OUTLINED_FUNCTION_9();
  v226 = v68;
  MEMORY[0x1EEE9AC00](v69);
  OUTLINED_FUNCTION_23();
  v217 = v70;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_14_1(&v209 - v72);
  v73 = OUTLINED_FUNCTION_61_2();
  v75 = COERCE_DOUBLE(type metadata accessor for Blueprint(v73, v74));
  OUTLINED_FUNCTION_18_10();
  v76 = swift_getWitnessTable();
  v77 = sub_1D81923F4();
  OUTLINED_FUNCTION_25_6(v77, &v247);
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v78);
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_38_0(v79);
  v225 = v75;
  v222 = v76;
  v220 = sub_1D81923E4();
  OUTLINED_FUNCTION_9();
  v209 = v80;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v81);
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_14_1(v82);
  v241 = *(v241 + 1216);
  v83 = type metadata accessor for BlueprintInfiniteScroll(0);
  v84 = swift_allocBox();
  v86 = v85;
  v87 = v227;
  LODWORD(v75) = *(v227 + 565);
  OUTLINED_FUNCTION_40_3();
  v89 = *(v88 + 80);
  LOBYTE(v57) = *(v88 + 88);
  v233 = v83[5];
  sub_1D818E8A4();
  v232 = v83[6];
  *&v86[v232] = MEMORY[0x1E69E7CC0];
  v230 = v83[7];
  *&v86[v230] = MEMORY[0x1E69E7CD0];
  v235 = LODWORD(v75);
  *v86 = LOBYTE(v75);
  v90 = v83[8];
  v234 = v86;
  v91 = &v86[v90];
  *v91 = v89;
  v91[8] = v57;
  v92 = *(v87 + 1);
  v210 = v84;
  if (v92)
  {
    if (v92 == 1)
    {
      v93 = v87 + 8;
      v94 = v87 + 7;
    }

    else
    {
      v93 = v87 + 12;
      v94 = v87 + 11;
    }
  }

  else
  {
    v94 = v87 + 1;
    v93 = v87 + 2;
  }

  v95 = v236;
  v96 = v219;
  v98 = v239;
  v97 = v240;
  v99 = v231;
  v100 = v225;
  v225 = *v93;
  v101 = *v94;
  MEMORY[0x1DA7133A0](*&v100, v222);
  sub_1D81923C4();
  v215 = v226 + 32;
  v213 = (v228 + 32);
  v102 = (v99 + 32);
  v103 = (v98 + 4);
  v239 = v98 + 1;
  v240 = v97 + 8;
  v212 = v229 + 8;
  v211 = v228 + 8;
  v104 = v238;
  v231 = v46;
  v229 = v103;
LABEL_7:
  v105 = v217;
  sub_1D81923D4();
  OUTLINED_FUNCTION_22();
  v106 = v216;
  v107(v216, v105, v218);
  if (__swift_getEnumTagSinglePayload(v106, 1, v96) == 1)
  {
    (*(v209 + 8))(v221, v220);
    v206 = v237;
    swift_unownedRetainStrong();
    swift_unownedRetain();

    v207 = swift_allocObject();
    v208 = v210;
    *(v207 + 16) = v206;
    *(v207 + 24) = v208;
    OUTLINED_FUNCTION_17_11();
    OUTLINED_FUNCTION_72();
    return;
  }

  v242 = *v106;
  v108 = v224;
  (*v213)(v223, &v106[*(v96 + 48)], v224);
  MEMORY[0x1DA7133A0](v108, v214);
  sub_1D81923C4();
  while (1)
  {
    while (1)
    {
      v109 = v243;
      sub_1D81923D4();
      (*v102)(v54, v109, v244);
      v110 = v245;
      if (__swift_getEnumTagSinglePayload(v54, 1, v245) == 1)
      {
        OUTLINED_FUNCTION_22();
        v204(v247, v246);
        OUTLINED_FUNCTION_22();
        v205(v223, v224);
        v96 = v219;
        goto LABEL_7;
      }

      v111 = *v54;
      (*v103)(v46, &v54[*(v110 + 48)], v104);
      MEMORY[0x1DA710B60](v111, v242);
      v112 = v241;
      if (*(v241 + 16))
      {
        v113 = sub_1D7E7DB08();
        if (v114)
        {
          break;
        }
      }

LABEL_27:
      v129 = OUTLINED_FUNCTION_42_4();
      v130(v129, v95);
      (*v239)(v46, v104);
    }

    v115 = *(*(v112 + 56) + 8 * v113);
    if ((BlueprintItem.isExpandable.getter() & 1) == 0)
    {

      goto LABEL_27;
    }

    OUTLINED_FUNCTION_40_3();
    v103 = *(v116 + 56);
    v117 = *(v116 + 72);
    if (v117)
    {
      if (v117 == 1)
      {
        OUTLINED_FUNCTION_40_3();

        v103();
        v118 = v115;
        [v118 frame];
        v227 = v118;
        v226 = v103;
        if (v235)
        {
          MinY = CGRectGetMinY(*&v119);
          OUTLINED_FUNCTION_32_2(MinY);
          OUTLINED_FUNCTION_75_1();
          CGRectGetMaxY(v250);
          OUTLINED_FUNCTION_75_1();
          OUTLINED_FUNCTION_38_3();

          OUTLINED_FUNCTION_30_6();
          OUTLINED_FUNCTION_65_3();
          if (v32 <= -9.22337204e18)
          {
            goto LABEL_90;
          }

          OUTLINED_FUNCTION_8_16();
          if (!v124)
          {
            goto LABEL_96;
          }

          OUTLINED_FUNCTION_2_42();
          if (v126)
          {
            goto LABEL_104;
          }

          if (v125 <= -9.22337204e18)
          {
            goto LABEL_106;
          }

          OUTLINED_FUNCTION_36_5();
          if (!v124)
          {
            goto LABEL_114;
          }

          OUTLINED_FUNCTION_44_3();
          if (v124 != v128)
          {
            goto LABEL_121;
          }
        }

        else
        {
          MinX = CGRectGetMinX(*&v119);
          OUTLINED_FUNCTION_32_2(MinX);
          OUTLINED_FUNCTION_75_1();
          CGRectGetMaxX(v254);
          OUTLINED_FUNCTION_75_1();
          OUTLINED_FUNCTION_38_3();

          OUTLINED_FUNCTION_30_6();
          OUTLINED_FUNCTION_65_3();
          if (v32 <= -9.22337204e18)
          {
            goto LABEL_92;
          }

          OUTLINED_FUNCTION_8_16();
          if (!v124)
          {
            goto LABEL_94;
          }

          OUTLINED_FUNCTION_2_42();
          if (v175)
          {
            goto LABEL_101;
          }

          if (v174 <= -9.22337204e18)
          {
            goto LABEL_108;
          }

          OUTLINED_FUNCTION_36_5();
          if (!v124)
          {
            goto LABEL_113;
          }

          OUTLINED_FUNCTION_44_3();
          if (v124 != v128)
          {
            goto LABEL_123;
          }
        }

        v176 = v127;
        v248 = v118;
        v249 = &selRef_attemptTransitionToState_animated_;
        OUTLINED_FUNCTION_0_53();
        v222 = v177;
        sub_1D7EAF54C(0, &qword_1EDBB3438, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], v178);
        v46 = v179;
        sub_1D7EB88FC();
        sub_1D8190DB4();
        OUTLINED_FUNCTION_6_21();
        sub_1D818E834();
        OUTLINED_FUNCTION_39_3();
        OUTLINED_FUNCTION_37_4();
        OUTLINED_FUNCTION_10_20();
        OUTLINED_FUNCTION_41_3(v180);
        *(v181 + 64) = v118;
        *(v181 + 72) = &selRef_attemptTransitionToState_animated_;
        v182 = OUTLINED_FUNCTION_4_27();
        sub_1D7E91548(v182, v183, v176, v184);
        sub_1D7EB8B0C(v226, v228, 1);
        v185 = &a15;
        goto LABEL_84;
      }

      v103 = v115;
      [v103 frame];
      v228 = v103;
      if (v235)
      {
        v159 = CGRectGetMinY(*&v155);
        OUTLINED_FUNCTION_50_2();
        v160 = v159 - (v225 - CGRectGetHeight(v252));
        if (v160 < 0.0)
        {
          v32 = 0.0;
        }

        else
        {
          v32 = v160;
        }

        OUTLINED_FUNCTION_50_2();
        MaxY = CGRectGetMaxY(v253);
        OUTLINED_FUNCTION_50_2();
        OUTLINED_FUNCTION_38_3();

        OUTLINED_FUNCTION_30_6();
        OUTLINED_FUNCTION_3_38();
        if (v32 <= -9.22337204e18)
        {
          goto LABEL_93;
        }

        OUTLINED_FUNCTION_8_16();
        if (!v124)
        {
          goto LABEL_99;
        }

        OUTLINED_FUNCTION_57_2();
        if (v164)
        {
          goto LABEL_102;
        }

        if (MaxY <= -9.22337204e18)
        {
          goto LABEL_109;
        }

        if (MaxY >= v163)
        {
          goto LABEL_112;
        }

        v131 = MaxY;
        if (MaxY < v32)
        {
          goto LABEL_119;
        }

        v165 = v162;
        v248 = v32;
        v249 = MaxY;
        OUTLINED_FUNCTION_0_53();
        v167 = OUTLINED_FUNCTION_43_5(v166);
        sub_1D7EAF54C(v167, &qword_1EDBB3438, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], v168);
        v46 = v169;
        sub_1D7EB88FC();
        sub_1D8190DB4();
        OUTLINED_FUNCTION_6_21();
        sub_1D818E834();
        OUTLINED_FUNCTION_39_3();
        v170 = *(*&v46[v103] + 16);
        sub_1D7EB8AF4();
        v171 = *&v46[v103];
        *(v171 + 16) = v170 + 1;
        OUTLINED_FUNCTION_41_3((v171 + 48 * v170));
        *(v172 + 64) = v32;
        goto LABEL_83;
      }

      v191 = CGRectGetMinX(*&v155);
      OUTLINED_FUNCTION_50_2();
      v192 = v191 - (v101 - CGRectGetWidth(v256));
      if (v192 < 0.0)
      {
        v32 = 0.0;
      }

      else
      {
        v32 = v192;
      }

      OUTLINED_FUNCTION_50_2();
      MaxX = CGRectGetMaxX(v257);
      OUTLINED_FUNCTION_50_2();
      OUTLINED_FUNCTION_38_3();

      OUTLINED_FUNCTION_30_6();
      OUTLINED_FUNCTION_3_38();
      if (v32 <= -9.22337204e18)
      {
        goto LABEL_91;
      }

      OUTLINED_FUNCTION_8_16();
      if (!v124)
      {
        goto LABEL_95;
      }

      OUTLINED_FUNCTION_57_2();
      if (v195)
      {
        goto LABEL_105;
      }

      if (MaxX <= -9.22337204e18)
      {
        goto LABEL_107;
      }

      if (MaxX >= v194)
      {
        goto LABEL_115;
      }

      v187 = v32;
      v131 = MaxX;
      if (MaxX < v32)
      {
        goto LABEL_120;
      }

LABEL_82:
      v165 = v190;
      v248 = v187;
      v249 = v131;
      OUTLINED_FUNCTION_0_53();
      v197 = OUTLINED_FUNCTION_43_5(v196);
      sub_1D7EAF54C(v197, &qword_1EDBB3438, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], v198);
      v46 = v199;
      sub_1D7EB88FC();
      sub_1D8190DB4();
      OUTLINED_FUNCTION_6_21();
      sub_1D818E834();
      OUTLINED_FUNCTION_39_3();
      OUTLINED_FUNCTION_37_4();
      OUTLINED_FUNCTION_10_20();
      OUTLINED_FUNCTION_41_3(v200);
      *(v172 + 64) = v187;
LABEL_83:
      *(v172 + 72) = v131;
      v201 = OUTLINED_FUNCTION_4_27();
      sub_1D7E91548(v201, v202, v165, v203);
      v185 = &a16;
LABEL_84:

      v153 = OUTLINED_FUNCTION_42_4();
      v95 = v236;
      goto LABEL_85;
    }

    v131 = v115;
    [v131 frame];
    v228 = v131;
    if (!v235)
    {
      v186 = CGRectGetMinX(*&v132);
      OUTLINED_FUNCTION_32_2(v186);
      v187 = v124 == v128;
      OUTLINED_FUNCTION_74_3();
      CGRectGetMaxX(v255);
      OUTLINED_FUNCTION_74_3();
      OUTLINED_FUNCTION_38_3();

      OUTLINED_FUNCTION_30_6();
      OUTLINED_FUNCTION_3_38();
      if (v32 <= -9.22337204e18)
      {
        goto LABEL_89;
      }

      OUTLINED_FUNCTION_8_16();
      if (!v124)
      {
        goto LABEL_97;
      }

      OUTLINED_FUNCTION_2_42();
      if (v189)
      {
        goto LABEL_100;
      }

      if (v188 <= -9.22337204e18)
      {
        goto LABEL_111;
      }

      OUTLINED_FUNCTION_36_5();
      if (!v124)
      {
        goto LABEL_116;
      }

      OUTLINED_FUNCTION_44_3();
      if (v124 != v128)
      {
        goto LABEL_122;
      }

      goto LABEL_82;
    }

    v136 = CGRectGetMinY(*&v132);
    OUTLINED_FUNCTION_32_2(v136);
    OUTLINED_FUNCTION_74_3();
    CGRectGetMaxY(v251);
    OUTLINED_FUNCTION_74_3();
    OUTLINED_FUNCTION_38_3();

    OUTLINED_FUNCTION_30_6();
    OUTLINED_FUNCTION_3_38();
    if (v32 <= -9.22337204e18)
    {
      break;
    }

    OUTLINED_FUNCTION_8_16();
    if (!v124)
    {
      goto LABEL_98;
    }

    OUTLINED_FUNCTION_2_42();
    if (v138)
    {
      goto LABEL_103;
    }

    if (v137 <= -9.22337204e18)
    {
      goto LABEL_110;
    }

    OUTLINED_FUNCTION_36_5();
    if (!v124)
    {
      goto LABEL_117;
    }

    v141 = v140;
    if (v140 < v32)
    {
      goto LABEL_118;
    }

    v142 = v139;
    v248 = v32;
    v249 = v140;
    OUTLINED_FUNCTION_0_53();
    v144 = OUTLINED_FUNCTION_43_5(v143);
    sub_1D7EAF54C(v144, &qword_1EDBB3438, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], v145);
    sub_1D7EB88FC();
    sub_1D8190DB4();
    OUTLINED_FUNCTION_6_21();
    v226 = v142;
    v95 = v236;
    sub_1D818E834();
    OUTLINED_FUNCTION_39_3();
    OUTLINED_FUNCTION_37_4();
    OUTLINED_FUNCTION_10_20();
    v146 = v226;
    *(v147 + 32) = v227;
    *(v147 + 40) = v146;
    *(v147 + 48) = v103;
    *(v147 + 56) = v31;
    *(v147 + 64) = v32;
    *(v147 + 72) = v141;
    v148 = OUTLINED_FUNCTION_4_27();
    sub_1D7E91548(v148, v149, v150, v151);
    OUTLINED_FUNCTION_58_2();

    v153 = OUTLINED_FUNCTION_42_4();
LABEL_85:
    v154(v153, v95);
    v104 = v238;
    (*v239)(v46, v238);
  }

  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
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
  __break(1u);
LABEL_120:
  __break(1u);
LABEL_121:
  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  __break(1u);
}

void sub_1D7EAAFC4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_1D7EAB040(255, a3, a4, MEMORY[0x1E69E62F8]);
    v5 = sub_1D8192454();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1D7EAB040(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t objectdestroyTm()
{
  swift_unownedRelease();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_0(void (*a1)(void))
{
  a1(*(v1 + 16));

  return swift_deallocObject();
}

uint64_t objectdestroyTm_1()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t objectdestroyTm_2()
{
  (*(*(*(v0 + 24) - 8) + 8))(v0 + ((*(*(*(v0 + 24) - 8) + 80) + 40) & ~*(*(*(v0 + 24) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t objectdestroyTm_3()
{
  (*(*(*(v0 + 32) - 8) + 8))(v0 + ((*(*(*(v0 + 32) - 8) + 80) + 48) & ~*(*(*(v0 + 32) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t objectdestroyTm_4()
{
  v0 = OUTLINED_FUNCTION_11_55();
  OUTLINED_FUNCTION_15_15(v0);

  if (!OUTLINED_FUNCTION_10_59())
  {
    OUTLINED_FUNCTION_5_85();
    v1 = OUTLINED_FUNCTION_26_25();
    v2(v1);
  }

  OUTLINED_FUNCTION_54_5();

  return swift_deallocObject();
}

uint64_t objectdestroyTm_5()
{
  v1 = *(type metadata accessor for JSONView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  sub_1D818F824();
  OUTLINED_FUNCTION_8();
  (*(v3 + 8))(v0 + v2);

  return swift_deallocObject();
}

uint64_t objectdestroyTm_6()
{

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 40));

  return swift_deallocObject();
}

uint64_t (*BlueprintLayoutVisualRankBuilder.build<A, B, C, D>(blueprint:layoutBlueprint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10))()
{
  v189 = a5;
  v187 = a2;
  v157 = a1;
  v192 = a9;
  v207 = a3;
  v208 = a4;
  v209 = a7;
  v210 = a8;
  v15 = type metadata accessor for Blueprint(0, &v207);
  OUTLINED_FUNCTION_9();
  v154 = v16;
  OUTLINED_FUNCTION_44();
  v152 = v17;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_14_1(v19);
  v194 = a10;
  type metadata accessor for BlueprintLayoutItem(0, a6, a10, v20);
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_14_1(v22);
  v203 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_23();
  v185 = v24;
  MEMORY[0x1EEE9AC00](v25);
  *&v204 = &v151 - v26;
  v180 = sub_1D818E994();
  OUTLINED_FUNCTION_9();
  v202 = v27;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v151 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for BlueprintItem(0, a4, a8, v31);
  OUTLINED_FUNCTION_9();
  v195 = v33;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_14_1(v35);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v199 = sub_1D8191E84();
  OUTLINED_FUNCTION_9();
  v196 = v37;
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_23();
  v198 = v39;
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_14_1(&v151 - v41);
  v191 = a3;
  v207 = a3;
  v208 = a4;
  v193 = a4;
  v188 = a7;
  v209 = a7;
  v210 = a8;
  v190 = a8;
  v42 = type metadata accessor for BlueprintSection(255, &v207);
  WitnessTable = swift_getWitnessTable();
  v162 = sub_1D81923F4();
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_14_1(v45);
  v163 = WitnessTable;
  v200 = sub_1D81923E4();
  OUTLINED_FUNCTION_9();
  v176 = v46;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_94();
  v201 = v48;
  v175 = *(v42 - 8);
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_14_1(v50);
  v168 = swift_getTupleTypeMetadata2();
  v167 = sub_1D8191E84();
  OUTLINED_FUNCTION_9();
  v184 = v51;
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_23();
  v166 = v53;
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_14_1(&v151 - v55);
  v56 = OUTLINED_FUNCTION_13_19();
  sub_1D81923F4();
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v57);
  v170 = sub_1D81923E4();
  OUTLINED_FUNCTION_9();
  v151 = v58;
  OUTLINED_FUNCTION_44();
  v60 = MEMORY[0x1EEE9AC00](v59);
  v62 = &v151 - v61;
  *&v212 = MEMORY[0x1E69E7CC8];
  *(&v212 + 1) = MEMORY[0x1E69E7CC8];
  v213 = -1;
  v155 = v15;
  MEMORY[0x1DA7133A0](v15, v56, v60);
  v169 = v62;
  v63 = v156;
  sub_1D81923C4();
  v172 = 0;
  v164 = (v184 + 4);
  v161 = (v175 + 32);
  v196 += 32;
  v184 = (v195 + 32);
  v183 = v203 + 32;
  v182 = v203 + 16;
  v179 = v203 + 8;
  v178 = v202 + 8;
  v177 = v195 + 8;
  v159 = v176 + 8;
  v158 = v175 + 8;
  v174 = v30;
  v173 = a6;
  v181 = TupleTypeMetadata2;
  v160 = v42;
  while (2)
  {
    v64 = v166;
    sub_1D81923D4();
    OUTLINED_FUNCTION_22();
    v65 = v165;
    v66(v165, v64, v167);
    v67 = v168;
    if (__swift_getEnumTagSinglePayload(v65, 1, v168) == 1)
    {
      goto LABEL_29;
    }

    v195 = *v65;
    (*v161)(v171, &v65[*(v67 + 48)], v42);
    MEMORY[0x1DA7133A0](v42, v163);
    sub_1D81923C4();
    v175 = 0;
    v176 = 0;
    while (1)
    {
      v68 = v198;
      sub_1D81923D4();
      OUTLINED_FUNCTION_22();
      v69 = v197;
      v70(v197, v68, v199);
      if (__swift_getEnumTagSinglePayload(v69, 1, TupleTypeMetadata2) == 1)
      {
        break;
      }

      v71 = *v69;
      (*v184)(v63, &v69[*(TupleTypeMetadata2 + 48)], v32);
      v202 = v71;
      MEMORY[0x1DA710B60](v71, v195);
      v72 = v32;
      v73 = v189;
      v207 = v189;
      v208 = a6;
      v74 = v63;
      v75 = v192;
      v76 = v194;
      v209 = v192;
      v210 = v194;
      v77 = type metadata accessor for BlueprintLayout(0, &v207);
      v78 = v186;
      BlueprintLayout.subscript.getter(v30, v77);
      OUTLINED_FUNCTION_22();
      v79 = v30;
      v80 = v204;
      v81(v204, v78, a6);
      LODWORD(v203) = sub_1D7EB8BB0(v80, v191, v193, v73, a6, v188, v190, v75, v76);
      OUTLINED_FUNCTION_22();
      v82(v185, v80, a6);
      sub_1D7E0631C(0, &qword_1EDBBB330, &protocol descriptor for VisualRankable);
      if (swift_dynamicCast())
      {
        a6 = v74;
        sub_1D7E05450(v205, &v207);
        v83 = v210;
        v84 = v211;
        __swift_project_boxed_opaque_existential_1(&v207, v210);
        result = (*(v84 + 8))(v205, v83, v84);
        if (!BYTE8(v205[0]))
        {
          v32 = v72;
          if (((*&v205[0] >= 0) & v203) == 1)
          {
            TupleTypeMetadata2 = v181;
            if (__OFADD__(v175, 1))
            {
              goto LABEL_34;
            }

            if (__OFADD__(v172, *&v205[0]))
            {
              goto LABEL_36;
            }

            ++v175;
            OUTLINED_FUNCTION_1_1();
            swift_getWitnessTable();
            OUTLINED_FUNCTION_12_21();
            sub_1D7EB8D68(v105, v106, v107, v108);
            OUTLINED_FUNCTION_12_21();
            v63 = v74;
          }

          else
          {
LABEL_22:
            TupleTypeMetadata2 = v181;
            if (__OFSUB__(v176, 1))
            {
              goto LABEL_31;
            }

            v63 = v74;
            --v176;
            OUTLINED_FUNCTION_1_1();
            swift_getWitnessTable();
            v127 = OUTLINED_FUNCTION_4_37();
            sub_1D7EB8D68(v127, v128, v129, v130);
            v109 = OUTLINED_FUNCTION_4_37();
          }

          sub_1D7E6383C(v109, v110, v111, v112);
          v131 = OUTLINED_FUNCTION_3_55();
          v132(v131);
          OUTLINED_FUNCTION_22();
          v133 = OUTLINED_FUNCTION_11_24();
          v134(v133);
          OUTLINED_FUNCTION_22();
          v135(v63, v32);
          v30 = &v212;
          goto LABEL_25;
        }

        v32 = v72;
        if (BYTE8(v205[0]) == 1)
        {
          if (__OFADD__(v175, *&v205[0]))
          {
            __break(1u);
LABEL_31:
            __break(1u);
LABEL_32:
            __break(1u);
LABEL_33:
            __break(1u);
LABEL_34:
            __break(1u);
LABEL_35:
            __break(1u);
LABEL_36:
            __break(1u);
LABEL_37:
            __break(1u);
LABEL_38:
            __break(1u);
            return result;
          }

          if (__OFADD__(v176, *&v205[0]))
          {
            goto LABEL_32;
          }

          v176 += *&v205[0];
          v175 += *&v205[0];
          OUTLINED_FUNCTION_1_1();
          swift_getWitnessTable();
          v63 = v74;
          v86 = OUTLINED_FUNCTION_4_37();
          sub_1D7EB8D68(v86, v87, v88, v89);
          v90 = OUTLINED_FUNCTION_4_37();
          sub_1D7E6383C(v90, v91, v92, v93);
          v94 = OUTLINED_FUNCTION_3_55();
          v95(v94);
          OUTLINED_FUNCTION_22();
          v30 = v174;
          v96(v174, v180);
          OUTLINED_FUNCTION_22();
          v97(v74, v72);
          TupleTypeMetadata2 = v181;
        }

        else
        {
          if (((*&v205[0] == 0) & v203) == 0)
          {
            goto LABEL_22;
          }

          TupleTypeMetadata2 = v181;
          if (__OFADD__(v175, 1))
          {
            goto LABEL_33;
          }

          if (__OFADD__(v172, v202))
          {
            goto LABEL_35;
          }

          v113 = v176;
          if (__OFADD__(v172 + v202, v176))
          {
            goto LABEL_37;
          }

          ++v175;
          OUTLINED_FUNCTION_1_1();
          swift_getWitnessTable();
          OUTLINED_FUNCTION_12_21();
          result = sub_1D7EB8D68(v114, v115, v116, v117);
          if (__OFADD__(v202, v113))
          {
            goto LABEL_38;
          }

          OUTLINED_FUNCTION_12_21();
          sub_1D7E6383C(v118, v119, v120, v121);
          v122 = OUTLINED_FUNCTION_3_55();
          v123(v122);
          OUTLINED_FUNCTION_22();
          v124 = OUTLINED_FUNCTION_11_24();
          v125(v124);
          OUTLINED_FUNCTION_22();
          v126(a6, v72);
          v30 = &v212;
          v63 = a6;
        }

LABEL_25:
        __swift_destroy_boxed_opaque_existential_1Tm(&v207);
      }

      else
      {
        OUTLINED_FUNCTION_22();
        v98(v80, a6);
        OUTLINED_FUNCTION_22();
        v99(v79, v180);
        OUTLINED_FUNCTION_22();
        v100(v74, v72);
        v206 = 0;
        memset(v205, 0, sizeof(v205));
        OUTLINED_FUNCTION_12_21();
        sub_1D7FBDB74(v101, v102, v103, v104);
        v30 = v79;
        v32 = v72;
        v63 = v74;
        TupleTypeMetadata2 = v181;
      }
    }

    OUTLINED_FUNCTION_22();
    v136(v201, v200);
    OUTLINED_FUNCTION_22();
    v42 = v160;
    v137(v171, v160);
    v138 = __OFADD__(v172, v175);
    v172 += v175;
    if (!v138)
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_29:
  (*(v151 + 8))(v169, v170);
  v139 = v154;
  v140 = v153;
  v141 = v155;
  (*(v154 + 16))(v153, v157, v155);
  v142 = v213;
  v143 = (*(v139 + 80) + 80) & ~*(v139 + 80);
  v144 = (v152 + v143 + 7) & 0xFFFFFFFFFFFFFFF8;
  v145 = swift_allocObject();
  v146 = v193;
  *(v145 + 2) = v191;
  *(v145 + 3) = v146;
  *(v145 + 4) = v189;
  *(v145 + 5) = a6;
  v147 = v190;
  *(v145 + 6) = v188;
  *(v145 + 7) = v147;
  v148 = v194;
  *(v145 + 8) = v192;
  *(v145 + 9) = v148;
  v149 = *(v139 + 32);
  v150 = &v145[v144];
  v204 = v212;
  v149(&v145[v143], v140, v141);
  *v150 = v204;
  *(v150 + 2) = v142;
  return OUTLINED_FUNCTION_2_60();
}

uint64_t sub_1D7EAC408()
{
  v1 = *(v0 + 48);
  v19 = *(v0 + 16);
  v20 = v19;
  v18 = v1;
  v21 = v1;
  v2 = type metadata accessor for Blueprint(0, &v20);
  v17 = *(*(v2 - 8) + 80);
  v3 = v0 + ((v17 + 80) & ~v17);

  if (*(v3 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v3 + 16));
  }

  v4 = *(v2 + 56);
  v20 = v19;
  v21 = v18;
  v5 = type metadata accessor for BlueprintSection(255, &v20);
  v6 = OUTLINED_FUNCTION_13_19();
  v7 = OUTLINED_FUNCTION_13_19();
  sub_1D818F394();
  OUTLINED_FUNCTION_8();
  (*(v8 + 8))(v3 + v4);
  v9 = *(v2 + 60);
  v11 = type metadata accessor for BlueprintItem(255, *(&v19 + 1), *(&v18 + 1), v10);
  v12 = OUTLINED_FUNCTION_13_19();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_1_1();
  v14 = swift_getWitnessTable();
  *&v20 = v5;
  *(&v20 + 1) = v11;
  *&v21 = v12;
  *(&v21 + 1) = v6;
  v22 = v7;
  v23 = WitnessTable;
  v24 = v14;
  sub_1D818F784();
  OUTLINED_FUNCTION_8();
  (*(v15 + 8))(v3 + v9);

  return swift_deallocObject();
}

uint64_t (*BlueprintTraversalCollectionBuilder.build<A, B, C, D>(blueprint:layoutBlueprint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10))()
{
  v120 = a2;
  v16 = *v10;
  v129 = a1;
  v130 = v16;
  v142 = a3;
  v143 = a4;
  v144 = a7;
  v145 = a8;
  v18 = type metadata accessor for BlueprintSection(255, &v142);
  WitnessTable = swift_getWitnessTable();
  v118 = sub_1D81923F4();
  OUTLINED_FUNCTION_9();
  v128 = v19;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v20);
  v117 = &v106 - v21;
  v136 = a5;
  v137 = a6;
  v142 = a5;
  v143 = a6;
  v135 = a9;
  v144 = a9;
  v145 = a10;
  v140 = a10;
  v116 = type metadata accessor for BlueprintLayoutSection(0, &v142);
  OUTLINED_FUNCTION_9();
  v127 = v22;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v23);
  v132 = &v106 - v24;
  v25 = *(v18 - 8);
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v26);
  v131 = &v106 - v27;
  v133 = v18;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v123 = sub_1D8191E84();
  OUTLINED_FUNCTION_9();
  v121 = v29;
  MEMORY[0x1EEE9AC00](v30);
  v122 = &v106 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v34 = (&v106 - v33);
  v134 = a3;
  v142 = a3;
  v143 = a4;
  v124 = a4;
  v138 = a7;
  v139 = a8;
  v144 = a7;
  v145 = a8;
  v35 = type metadata accessor for Blueprint(255, &v142);
  v36 = swift_getWitnessTable();
  sub_1D81923F4();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v37);
  v126 = sub_1D81923E4();
  OUTLINED_FUNCTION_9();
  v107 = v38;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v106 - v40;
  v130 = *(v130 + 80);
  v113 = type metadata accessor for BlueprintTraversalCollectionItem(0, v130, v42, v43);
  v141 = sub_1D81913C4();
  MEMORY[0x1DA7133A0](v35, v36);
  v125 = v41;
  sub_1D81923C4();
  v44 = 0;
  v121 += 32;
  v112 = (v25 + 32);
  v111 = v128 + 1;
  v110 = v25 + 8;
  v109 = v127 + 1;
  v115 = TupleTypeMetadata2;
  v114 = v34;
  while (1)
  {
    v45 = v122;
    sub_1D81923D4();
    OUTLINED_FUNCTION_22();
    v46(v34, v45, v123);
    if (__swift_getEnumTagSinglePayload(v34, 1, TupleTypeMetadata2) == 1)
    {
      break;
    }

    v129 = *v34;
    v47 = v129;
    v48 = v133;
    (*v112)(v131, v34 + *(TupleTypeMetadata2 + 48), v133);
    v49 = v136;
    v142 = v136;
    v143 = v137;
    v50 = v137;
    v144 = v135;
    v128 = v44;
    v51 = v135;
    v145 = v140;
    v52 = type metadata accessor for BlueprintLayout(0, &v142);
    v53 = v132;
    BlueprintLayout.subscript.getter(v47, v52, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65);
    v66 = v117;
    v67 = MEMORY[0x1DA7133A0](v48, WitnessTable);
    v127 = &v106;
    MEMORY[0x1EEE9AC00](v67);
    *(&v106 - 10) = v130;
    *(&v106 - 9) = v134;
    v68 = v124;
    *(&v106 - 8) = v124;
    *(&v106 - 7) = v49;
    v69 = v138;
    *(&v106 - 6) = v50;
    *(&v106 - 5) = v69;
    v70 = v140;
    *(&v106 - 4) = v139;
    *(&v106 - 3) = v51;
    *(&v106 - 2) = v70;
    *(&v106 - 1) = v53;
    MEMORY[0x1EEE9AC00](v71);
    *(&v106 - 12) = v72;
    *(&v106 - 11) = v73;
    v74 = v73;
    *(&v106 - 10) = v68;
    *(&v106 - 9) = v49;
    *(&v106 - 8) = v50;
    *(&v106 - 7) = v75;
    *(&v106 - 6) = v76;
    *(&v106 - 5) = v51;
    *(&v106 - 4) = v77;
    *(&v106 - 3) = sub_1D7EB90B0;
    *(&v106 - 2) = v78;
    swift_getTupleTypeMetadata3();
    v79 = v118;
    swift_getWitnessTable();
    v44 = v128;
    v80 = sub_1D8191184();
    OUTLINED_FUNCTION_22();
    v82 = v81(v66, v79);
    v128 = &v106;
    v142 = v80;
    MEMORY[0x1EEE9AC00](v82);
    v83 = v130;
    *(&v106 - 10) = v130;
    *(&v106 - 9) = v74;
    v84 = v135;
    v85 = v136;
    *(&v106 - 8) = v68;
    *(&v106 - 7) = v85;
    *(&v106 - 6) = v50;
    v87 = v138;
    v86 = v139;
    *(&v106 - 5) = v138;
    *(&v106 - 4) = v86;
    v88 = v140;
    *(&v106 - 3) = v84;
    *(&v106 - 2) = v88;
    v89 = sub_1D8191484();
    swift_getWitnessTable();
    v90 = sub_1D8191204();

    v128 = &v106;
    v142 = v90;
    MEMORY[0x1EEE9AC00](v91);
    v92 = v134;
    *(&v106 - 10) = v83;
    *(&v106 - 9) = v92;
    *(&v106 - 8) = v68;
    *(&v106 - 7) = v85;
    *(&v106 - 6) = v137;
    *(&v106 - 5) = v87;
    TupleTypeMetadata2 = v115;
    v34 = v114;
    v93 = v140;
    *(&v106 - 4) = v139;
    *(&v106 - 3) = v84;
    v94 = v129;
    *(&v106 - 2) = v93;
    *(&v106 - 1) = v94;
    v95 = swift_getWitnessTable();
    sub_1D7E6CDC0(sub_1D7EB95E4, (&v106 - 12), v89, v113, MEMORY[0x1E69E73E0], v95, MEMORY[0x1E69E7410], v96);

    sub_1D81913F4();

    OUTLINED_FUNCTION_22();
    v97(v131, v133);
    OUTLINED_FUNCTION_22();
    v98(v132, v116);
  }

  (*(v107 + 8))(v125, v126);
  v99 = v141;
  v100 = swift_allocObject();
  v101 = v124;
  v100[2] = v134;
  v100[3] = v101;
  v102 = v137;
  v100[4] = v136;
  v100[5] = v102;
  v103 = v139;
  v100[6] = v138;
  v100[7] = v103;
  v104 = v140;
  v100[8] = v135;
  v100[9] = v104;
  v100[10] = v108;
  v100[11] = v99;

  return OUTLINED_FUNCTION_0_90();
}

uint64_t sub_1D7EACFC0()
{

  return swift_deallocObject();
}

double sub_1D7EAD000(uint64_t a1, const void *a2, uint64_t a3)
{
  memcpy(__dst, a2, sizeof(__dst));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    memcpy(v9, __dst, sizeof(v9));
    sub_1D7E6755C(__dst, &v8);
    sub_1D7EAD1EC();
  }

  swift_beginAccess();
  v5 = swift_unknownObjectWeakLoadStrong();
  if (v5)
  {
    v7 = v5;
    sub_1D7E6E120();

    memcpy(v9, __dst, sizeof(v9));
    sub_1D7EAD254();
  }

  return result;
}

uint64_t sub_1D7EAD1EC()
{
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_51_7(v3);
  v0 = OUTLINED_FUNCTION_29_12();
  memcpy(v0, v1, 0x4E8uLL);
  return sub_1D7E598FC(v3);
}

void sub_1D7EAD254()
{
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_113();
  v1 = sub_1D8190BD4();
  OUTLINED_FUNCTION_9();
  v21 = v2;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_15();
  v6 = v5 - v4;
  v7 = sub_1D8190C34();
  OUTLINED_FUNCTION_9();
  v20 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_15();
  v12 = v11 - v10;
  memcpy(v25, v0, 0x4E8uLL);
  OUTLINED_FUNCTION_8_4((v0 + 2), &v24);
  if (*(v0[2] + 16))
  {
    type metadata accessor for BlueprintCollectionViewLayoutCache.Token();
    v13 = swift_allocObject();
    v0[3] = v13;
    v14 = v13;

    v15 = v0[2];
    OUTLINED_FUNCTION_15_2((v0 + 2), v22);
    sub_1D7EAD894(0, &qword_1EDBB3478, MEMORY[0x1E69E5E18]);
    sub_1D8190DB4();
    sub_1D8190DE4();
    swift_endAccess();
    OUTLINED_FUNCTION_0_8();
    v16 = swift_allocObject();
    swift_weakInit();
    v17 = swift_allocObject();
    v17[2] = v16;
    v17[3] = v15;
    memcpy(v17 + 4, v25, 0x4E8uLL);
    v17[161] = v14;
    v23[4] = sub_1D8042038;
    v23[5] = v17;
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 1107296256;
    v23[2] = sub_1D7E64940;
    v23[3] = &block_descriptor_85;
    v18 = _Block_copy(v23);

    sub_1D7E6755C(v25, v22);
    sub_1D8190BF4();
    v22[0] = MEMORY[0x1E69E7CC0];
    sub_1D7E2DB48(&qword_1EDBB34B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    v19 = MEMORY[0x1E69E7F60];
    sub_1D7E1AE04(0, &qword_1EDBB3348, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    sub_1D7E1CFF4(&qword_1EDBB3340, &qword_1EDBB3348, v19);
    sub_1D8192004();
    MEMORY[0x1DA713CE0](0, v12, v6, v18);
    _Block_release(v18);

    (*(v21 + 8))(v6, v1);
    (*(v20 + 8))(v12, v7);
  }

  OUTLINED_FUNCTION_100();
}

uint64_t sub_1D7EAD630()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_19();

  return swift_deallocObject();
}

uint64_t sub_1D7EAD660()
{

  sub_1D7E57C40(*(v0 + 312), *(v0 + 320), *(v0 + 328));
  sub_1D7E57C40(*(v0 + 336), *(v0 + 344), *(v0 + 352));
  sub_1D7E57C40(*(v0 + 360), *(v0 + 368), *(v0 + 376));

  sub_1D7E57C40(*(v0 + 880), *(v0 + 888), *(v0 + 896));
  sub_1D7E57C40(*(v0 + 904), *(v0 + 912), *(v0 + 920));
  sub_1D7E57C40(*(v0 + 928), *(v0 + 936), *(v0 + 944));

  return swift_deallocObject();
}

void sub_1D7EAD894(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    type metadata accessor for CGRect();
    v7 = v6;
    v8 = type metadata accessor for BlueprintLayoutCollectionRectResult();
    v9 = sub_1D7E2DB48(&qword_1EDBB3008, type metadata accessor for CGRect, MEMORY[0x1E695EF70]);
    v10 = a3(a1, v7, v8, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void Diff.build(in:oldIndex:newIndex:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v170 = a3;
  v168 = a2;
  v175 = a1;
  sub_1D7E98BE0(0);
  OUTLINED_FUNCTION_9();
  v172 = v5;
  v173 = v4;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_23();
  v179 = v6;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v7);
  v169 = &v150 - v8;
  v9 = sub_1D818E994();
  OUTLINED_FUNCTION_9();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_23();
  v150 = v13;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_24_1();
  v167 = v15;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_24_1();
  v178 = v17;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_24_1();
  v164 = v19;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_24_1();
  v162 = v21;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_24_1();
  v177 = v23;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v24);
  v176 = &v150 - v25;
  v161 = sub_1D818E7F4();
  OUTLINED_FUNCTION_9();
  v27 = v26;
  MEMORY[0x1EEE9AC00](v28);
  v160 = &v150 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7EAE9D0(0);
  v31 = v30;
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_23();
  v165 = v33;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_24_1();
  v166 = v35;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v150 - v37;
  v156 = v3;
  sub_1D818E804();
  v151 = v31;
  v174 = *(v31 + 36);
  v155 = 0;
  v159 = sub_1D818E8B4();
  v39 = sub_1D7E98CF4(&qword_1EDBBC6E0, MEMORY[0x1E6969B50], MEMORY[0x1E6969B88]);
  v158 = (v27 + 8);
  v157 = v11 + 32;
  v163 = v39;
  while (1)
  {
    v40 = v160;
    OUTLINED_FUNCTION_34_12();
    v41 = sub_1D7E98CF4(&qword_1EDBBC6F0, MEMORY[0x1E6969B18], MEMORY[0x1E6969B28]);
    OUTLINED_FUNCTION_32_12();
    v42 = sub_1D8190ED4();
    v43 = *v158;
    (*v158)(v40, v38);
    if (v42)
    {
      break;
    }

    sub_1D81918F4();
    v44 = OUTLINED_FUNCTION_16_30();
    v45(v44);
    sub_1D81917C4();
    MEMORY[0x1DA710B60](v42, v168);
    v46 = *(type metadata accessor for Diff(0) + 36);
    v47 = *(v175 + v46);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v51 = OUTLINED_FUNCTION_4_65();
      sub_1D7EAEB70(v51, v52, v53, v54);
      v47 = v55;
    }

    v49 = *(v47 + 16);
    v48 = *(v47 + 24);
    if (v49 >= v48 >> 1)
    {
      OUTLINED_FUNCTION_13_32(v48);
      v47 = v56;
    }

    *(v47 + 16) = v49 + 1;
    OUTLINED_FUNCTION_5_51();
    OUTLINED_FUNCTION_24_17();
    v50();
    *(v175 + v46) = v47;
  }

  v152 = v43;
  v153 = v41;
  OUTLINED_FUNCTION_3_90();
  sub_1D7E9A8A0();
  v174 = type metadata accessor for Diff(0);
  sub_1D818E804();
  while (1)
  {
    OUTLINED_FUNCTION_34_12();
    OUTLINED_FUNCTION_32_12();
    v57 = sub_1D8190ED4();
    OUTLINED_FUNCTION_31_12();
    v58();
    if (v57)
    {
      break;
    }

    sub_1D81918F4();
    v59 = OUTLINED_FUNCTION_16_30();
    v60(v59);
    sub_1D81917C4();
    MEMORY[0x1DA710B60](v57, v170);
    v61 = *(v174 + 40);
    v62 = *(v175 + v61);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v66 = OUTLINED_FUNCTION_4_65();
      sub_1D7EAEB70(v66, v67, v68, v69);
      v62 = v70;
    }

    v64 = *(v62 + 16);
    v63 = *(v62 + 24);
    if (v64 >= v63 >> 1)
    {
      OUTLINED_FUNCTION_13_32(v63);
      v62 = v71;
    }

    *(v62 + 16) = v64 + 1;
    OUTLINED_FUNCTION_5_51();
    OUTLINED_FUNCTION_24_17();
    v65();
    *(v175 + v61) = v62;
  }

  OUTLINED_FUNCTION_3_90();
  sub_1D7E9A8A0();
  v72 = *(v156 + *(v174 + 32));
  v73 = *(v72 + 16);
  v74 = v178;
  v75 = v164;
  v76 = v162;
  if (v73)
  {
    v154 = (v11 + 16);
    v177 = (v11 + 8);
    v77 = v72 + 40;
    do
    {
      MEMORY[0x1DA710B60](*(v77 - 8), v170);
      v78 = OUTLINED_FUNCTION_109();
      MEMORY[0x1DA710B60](v78);
      OUTLINED_FUNCTION_1_114();
      sub_1D7E98CF4(&qword_1EDBBC6B0, v79, MEMORY[0x1E6969C50]);
      if (sub_1D8190ED4())
      {
        v80 = *v177;
        (*v177)(v75, v9);
        v80(v76, v9);
      }

      else
      {
        v81 = *v154;
        v82 = v169;
        (*v154)(v169, v76, v9);
        v81(&v82[*(v173 + 36)], v75, v9);
        v176 = *(v174 + 52);
        v83 = *&v176[v175];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v87 = OUTLINED_FUNCTION_4_65();
          sub_1D7EE5484(v87, v88, v89, v90);
          v83 = v91;
        }

        v85 = *(v83 + 16);
        v84 = *(v83 + 24);
        v166 = (v85 + 1);
        if (v85 >= v84 >> 1)
        {
          sub_1D7EE5484(v84 > 1, v85 + 1, 1, v83);
          v83 = v92;
        }

        v86 = *v177;
        v75 = v164;
        (*v177)(v164, v9);
        v76 = v162;
        v86(v162, v9);
        *(v83 + 16) = v166;
        sub_1D7E9A834();
        *&v176[v175] = v83;
        v74 = v178;
      }

      v77 += 16;
      --v73;
    }

    while (v73);
  }

  v154 = *(v174 + 24);
  sub_1D818E804();
  v151 = *(v151 + 36);
  v162 = (v11 + 16);
  v166 = (v11 + 8);
  v93 = v179;
  v171 = v9;
  while (1)
  {
    sub_1D81917B4();
    v94 = sub_1D8190ED4();
    OUTLINED_FUNCTION_31_12();
    v95();
    if (v94)
    {
      OUTLINED_FUNCTION_3_90();
      sub_1D7E9A8A0();
      sub_1D818E894();
      return;
    }

    sub_1D81918F4();
    v96 = OUTLINED_FUNCTION_16_30();
    v97(v96);
    sub_1D81917C4();
    MEMORY[0x1DA710B60](v94, v168);
    v98 = v175;
    v99 = *(v175 + *(v174 + 52));
    v100 = *(v99 + 16);
    if (v100)
    {
      break;
    }

LABEL_67:
    (*v162)(v150, v74, v9);
    v139 = *(v174 + 44);
    v140 = *(v98 + v139);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v144 = OUTLINED_FUNCTION_4_65();
      sub_1D7EAEB70(v144, v145, v146, v147);
      v140 = v148;
    }

    v142 = *(v140 + 16);
    v141 = *(v140 + 24);
    if (v142 >= v141 >> 1)
    {
      OUTLINED_FUNCTION_13_32(v141);
      v140 = v149;
    }

    *(v140 + 16) = v142 + 1;
    OUTLINED_FUNCTION_5_51();
    OUTLINED_FUNCTION_24_17();
    v143();
    *(v98 + v139) = v140;
    v93 = v179;
LABEL_72:
    (*v166)(v74, v9);
  }

  v101 = 0;
  v102 = v172;
  v177 = (v99 + ((*(v172 + 80) + 32) & ~*(v172 + 80)));
  v103 = 1;
  v104 = v100;
  v169 = v100;
  v164 = v99;
  while (v101 < v104)
  {
    v105 = v101 + 1;
    sub_1D7E9A4A8();
    if ((v103 & 1) == 0)
    {
      OUTLINED_FUNCTION_0_158();
      sub_1D7E9A8A0();
      if (v105 == v100)
      {
        goto LABEL_72;
      }

      v101 = v105;
LABEL_65:
      v103 = 0;
      goto LABEL_66;
    }

    v176 = v105;
    if (sub_1D818E914())
    {
      v106 = 0;
      v170 = *(v174 + 48);
      v107 = *(v98 + v170);
      v108 = *(v173 + 36);
      v109 = *(v107 + 16);
      while (v109 != v106)
      {
        v110 = v106 + 1;
        v111 = *(v11 + 80);
        v112 = *(v11 + 72);
        v103 = v107 + ((v111 + 32) & ~v111) + v112 * v106;
        OUTLINED_FUNCTION_1_114();
        sub_1D7E98CF4(&qword_1EDBBC6B0, v113, MEMORY[0x1E6969C50]);
        v114 = sub_1D8190ED4();
        v106 = v110;
        if (v114)
        {
          v98 = v175;
          v93 = v179;
          goto LABEL_55;
        }
      }

      v98 = v175;
      v127 = v170;
      sub_1D7EE4434();
      OUTLINED_FUNCTION_33_10();
      v107 = *(v98 + v127);
      *(v107 + 16) = v103 + 1;
      v111 = *(v11 + 80);
      v112 = *(v11 + 72);
      v93 = v179;
      (*(v11 + 16))(v107 + ((v111 + 32) & ~v111) + v112 * v103, v179 + v108, v171);
      *(v98 + v127) = v107;
LABEL_55:
      v100 = (v93 + v108);
      v128 = sub_1D818E964();
      v129 = v167;
      MEMORY[0x1DA710B60](v128, v168);
      if (sub_1D818E914() & 1) != 0 && (sub_1D818E964(), v100 = v154 + v156, v130 = sub_1D818E884(), (v130))
      {
        MEMORY[0x1EEE9AC00](v130);
        *(&v150 - 2) = v93;
        v131 = v107;
        v132 = v155;
        v133 = sub_1D7EB0860(sub_1D7EB0ED8, (&v150 - 4), v131);
        v155 = v132;
        v102 = v172;
        v99 = v164;
        if (v133)
        {
          v9 = v171;
          (*v166)(v167, v171);
        }

        else
        {
          v137 = v170;
          sub_1D7EE4434();
          OUTLINED_FUNCTION_33_10();
          (*v166)(v167, v171);
          v100 = *(v98 + v137);
          *(v100 + 2) = &v150 + 1;
          v138 = v171;
          (*v162)(&v100[((v111 + 32) & ~v111) + v112 * &v150], v93, v171);
          *(v98 + v137) = v100;
          v9 = v138;
        }
      }

      else
      {
        v9 = v171;
        (*v166)(v129, v171);
        v102 = v172;
        v99 = v164;
      }

      OUTLINED_FUNCTION_0_158();
      sub_1D7E9A8A0();
      OUTLINED_FUNCTION_15_30();
      v74 = v178;
      if (v121)
      {
        goto LABEL_72;
      }

      goto LABEL_65;
    }

    v115 = *(v173 + 36);
    if (sub_1D818E904() & 1) != 0 && (MEMORY[0x1DA710B00](v74, v93))
    {
      OUTLINED_FUNCTION_26_16();
      while (v74 != v116)
      {
        v117 = v116 + 1;
        OUTLINED_FUNCTION_1_114();
        v119 = sub_1D7E98CF4(&qword_1EDBBC6B0, v118, MEMORY[0x1E6969C50]);
        v120 = OUTLINED_FUNCTION_28_15(v119);
        v116 = v117;
        if (v120)
        {
          OUTLINED_FUNCTION_0_158();
          v93 = v179;
          sub_1D7E9A8A0();
          OUTLINED_FUNCTION_15_30();
          v102 = v172;
          if (v121)
          {
            goto LABEL_73;
          }

          v103 = 0;
          v74 = v178;
          goto LABEL_66;
        }
      }
    }

    else
    {
      if ((MEMORY[0x1DA710B00](v74, v93 + v115) & 1) == 0 || (sub_1D818E904() & 1) == 0)
      {
        OUTLINED_FUNCTION_0_158();
        sub_1D7E9A8A0();
        v101 = v176;
        if (v176 == v100)
        {
          goto LABEL_67;
        }

        v103 = 1;
        goto LABEL_66;
      }

      OUTLINED_FUNCTION_26_16();
      while (v74 != v122)
      {
        v123 = v122 + 1;
        OUTLINED_FUNCTION_1_114();
        v125 = sub_1D7E98CF4(&qword_1EDBBC6B0, v124, MEMORY[0x1E6969C50]);
        v126 = OUTLINED_FUNCTION_28_15(v125);
        v122 = v123;
        if (v126)
        {
          OUTLINED_FUNCTION_0_158();
          v93 = v179;
          sub_1D7E9A8A0();
          OUTLINED_FUNCTION_15_30();
          if (!v121)
          {
            v103 = 0;
            v74 = v178;
            goto LABEL_62;
          }

LABEL_73:
          v74 = v178;
          goto LABEL_72;
        }
      }
    }

    sub_1D7EE4434();
    v134 = *(*(v98 + v102) + 16);
    sub_1D7EE4660();
    v100 = *(v98 + v102);
    *(v100 + 2) = v134 + 1;
    OUTLINED_FUNCTION_5_51();
    v74 = v178;
    (*(v11 + 16))(v135 + v136 * v134, v178, v9);
    *(v98 + v102) = v100;
    OUTLINED_FUNCTION_0_158();
    v93 = v179;
    sub_1D7E9A8A0();
    OUTLINED_FUNCTION_15_30();
    if (v121)
    {
      goto LABEL_72;
    }

    v103 = 0;
LABEL_62:
    v102 = v172;
LABEL_66:
    v104 = *(v99 + 16);
  }

  __break(1u);
}

double sub_1D7EAE8DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v15 = (Strong + *(*Strong + 152));
    *v15 = 0u;
    v15[1] = 0u;
  }

  swift_beginAccess();
  v16 = swift_weakLoadStrong();
  if (v16)
  {
    v18[5] = a8;
    v18[6] = v16;
    v18[0] = a3;
    v18[1] = a4;
    v18[2] = a5;
    v18[3] = a6;
    v18[4] = a7;
    type metadata accessor for BlueprintPrefetcher(0, v18);
    BlueprintPrefetcherType.prefetch()();
  }

  return result;
}

void sub_1D7EAE9D0(uint64_t a1)
{
  if (!qword_1EDBB2EA8)
  {
    sub_1D818E8B4();
    sub_1D7E98CF4(&qword_1EDBBC6E0, MEMORY[0x1E6969B50], MEMORY[0x1E6969B88]);
    v1 = sub_1D8192344();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDBB2EA8);
    }
  }
}

void sub_1D7EAEA7C(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t), uint64_t (*a6)(void), void (*a7)(unint64_t, uint64_t, unint64_t))
{
  if (a3)
  {
    OUTLINED_FUNCTION_2_16();
    if (v12 != v13)
    {
      OUTLINED_FUNCTION_12_4();
      if (v12)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_10();
    }
  }

  else
  {
    v11 = a2;
  }

  v14 = *(a4 + 16);
  v15 = a5(v14, v11);
  v16 = *(a6(0) - 8);
  if (a1)
  {
    v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    a7(a4 + v17, v14, v15 + v17);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

size_t sub_1D7EAEBF4(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t), uint64_t (*a5)(void))
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

  sub_1D7E73450(0, a3, a4, MEMORY[0x1E69E6F90]);
  v7 = *(a5(0) - 8);
  v8 = *(v7 + 72);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v10);
  if (v8)
  {
    if (result - v9 != 0x8000000000000000 || v8 != -1)
    {
      OUTLINED_FUNCTION_21_4((result - v9) / v8);
      return v10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1D7EAED38(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6, double a7, double a8, CGFloat a9, CGFloat a10, CGFloat a11, CGFloat a12)
{
  v64 = a9;
  v65 = a10;
  v74 = sub_1D818E994();
  OUTLINED_FUNCTION_9();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_28_0();
  v69 = (v20 - v21);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v22);
  v71 = &v62 - v23;
  v63 = *v12;
  v62 = v12[1];
  OUTLINED_FUNCTION_14_48(v83);
  v72 = 0;
  v24 = v12[156];
  v70 = MEMORY[0x1E69E7CC0];
  v82 = MEMORY[0x1E69E7CC0];
  v81 = MEMORY[0x1E69E7CD0];
  v73 = (v18 + 8);
  v66 = v24;
  v67 = a2;
  while (1)
  {
    if (*(v24 + 16))
    {
      v25 = sub_1D7E7E198(a1);
      if (v26)
      {
        v27 = *(*(v24 + 56) + 8 * v25);
        if (v27 >> 62)
        {
          v28 = sub_1D81920A4();
          if (v28)
          {
LABEL_6:
            v68 = a1;
            v29 = v27 & 0xC000000000000001;
            v75 = v27 + 32;
            v76 = v27 & 0xFFFFFFFFFFFFFF8;
            sub_1D8190DB4();
            v30 = 0;
            v77 = v27 & 0xC000000000000001;
            v78 = v28;
            while (1)
            {
              if (v29)
              {
                v31 = MEMORY[0x1DA714420](v30, v27);
              }

              else
              {
                if (v30 >= *(v76 + 16))
                {
                  goto LABEL_51;
                }

                v31 = *(v75 + 8 * v30);
              }

              v32 = v31;
              v33 = __OFADD__(v30++, 1);
              if (v33)
              {
                break;
              }

              if (BlueprintLayoutCollectionLayoutAttributes.requiresPinning.getter())
              {
              }

              else
              {
                v34 = v27;
                if (*&v32[OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_dedupIdentifier + 8])
                {
                  v35 = *&v32[OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_dedupIdentifier];
                  v36 = *&v32[OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_dedupIdentifier + 8];
                }

                else
                {
                  v79[0] = [v32 representedElementCategory];
                  v80[0] = sub_1D81925B4();
                  v80[1] = v37;
                  MEMORY[0x1DA713260](14906, 0xE200000000000000);
                  v38 = [v32 indexPath];
                  v39 = v71;
                  sub_1D818E924();

                  sub_1D7E24964(&unk_1EDBBC6A0, MEMORY[0x1E6969C70]);
                  v40 = v74;
                  v41 = sub_1D81925B4();
                  MEMORY[0x1DA713260](v41);

                  (*v73)(v39, v40);
                  v35 = v80[0];
                  v36 = v80[1];
                }

                v42 = v81;
                if (*(v81 + 16))
                {
                  sub_1D81927E4();
                  sub_1D8190DB4();
                  sub_1D8190FF4();
                  v43 = sub_1D8192824();
                  v44 = ~(-1 << *(v42 + 32));
                  while (1)
                  {
                    v45 = v43 & v44;
                    if (((*(v42 + 56 + (((v43 & v44) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v43 & v44)) & 1) == 0)
                    {
                      break;
                    }

                    v46 = (*(v42 + 48) + 16 * v45);
                    if (*v46 != v35 || v46[1] != v36)
                    {
                      v48 = sub_1D8192634();
                      v43 = v45 + 1;
                      if ((v48 & 1) == 0)
                      {
                        continue;
                      }
                    }

                    goto LABEL_33;
                  }
                }

                else
                {
                  sub_1D8190DB4();
                }

                if (sub_1D7EAF358())
                {
                  v49 = v32;
                  MEMORY[0x1DA713500]();
                  if (*((v82 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v82 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                  {
                    sub_1D81913B4();
                  }

                  sub_1D8191404();
                  v70 = v82;
                  v50 = [v49 indexPath];
                  v51 = v69;
                  sub_1D818E924();

                  v52 = sub_1D818E974();
                  (*v73)(v51, v74);
                  v54 = v72;
                  if (v52 > v72)
                  {
                    v54 = v52;
                  }

                  v72 = v54;
                  sub_1D7E91548(v80, v35, v36, v53);
                }

                else
                {
LABEL_33:
                }

                v27 = v34;
                v29 = v77;
                v28 = v78;
              }

              if (v30 == v28)
              {

                a2 = v67;
                a1 = v68;
                v24 = v66;
                goto LABEL_37;
              }
            }

            __break(1u);
LABEL_51:
            __break(1u);
LABEL_52:
            __break(1u);
LABEL_53:
            __break(1u);
LABEL_54:
            __break(1u);
            return;
          }
        }

        else
        {
          v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v28)
          {
            goto LABEL_6;
          }
        }
      }
    }

LABEL_37:
    if (a1 == a2)
    {
      break;
    }

    v33 = __OFADD__(a1++, 1);
    if (v33)
    {
      goto LABEL_52;
    }
  }

  if (!sub_1D7E36AB8(v70))
  {

    return;
  }

  v55 = v72 + 1;
  if (__OFADD__(v72, 1))
  {
    goto LABEL_53;
  }

  if (v55 < 0)
  {
    goto LABEL_54;
  }

  v56 = sub_1D7EAF814(0, v55);
  memcpy(v79, v83, sizeof(v79));
  sub_1D7EAF9D8(v83, v80);
  v58 = v64;
  v57 = v65;
  v84.top = v64;
  v84.left = v65;
  v84.bottom = a11;
  v84.right = a12;
  v59 = BlueprintLayoutCollectionPinAdjuster.pinnedLayoutAttributes(for:offset:insets:contentSize:)(v56, __PAIR128__(*&a8, *&a7), v84, __PAIR128__(v62, v63));

  memcpy(v80, v79, sizeof(v80));
  sub_1D7EAFC0C(v80);
  if (v59)
  {
    sub_1D7F0A764(v59);
  }

  v60 = v59 == 0;
  v61 = v82;
  type metadata accessor for BlueprintLayoutCollectionRectResult();
  swift_allocObject();
  sub_1D7EAFC84(v61, v60, a7, a8, v58, v57, a11, a12);
}

void sub_1D7EAF3D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_5_21(v34, &qword_1EDBB2EC0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  OUTLINED_FUNCTION_159();
  v35 = sub_1D8192144();
  if (*(v31 + 16))
  {
    v36 = 0;
    OUTLINED_FUNCTION_23_6();
    if (v33)
    {
      while (1)
      {
        OUTLINED_FUNCTION_64_3();
LABEL_9:
        v41 = (*(v31 + 48) + 16 * (v37 | (v36 << 6)));
        v42 = *v41;
        v43 = v41[1];
        sub_1D81927E4();
        sub_1D8190DB4();
        sub_1D8190FF4();
        sub_1D8192824();
        OUTLINED_FUNCTION_35_5();
        if (v44)
        {
          break;
        }

        OUTLINED_FUNCTION_34();
LABEL_18:
        OUTLINED_FUNCTION_29_5(v45);
        *v50 = v42;
        v50[1] = v43;
        ++*(v35 + 16);
        if (!v33)
        {
          goto LABEL_4;
        }
      }

      OUTLINED_FUNCTION_33();
      while (++v46 != v48 || (v47 & 1) == 0)
      {
        v49 = v46 == v48;
        if (v46 == v48)
        {
          v46 = 0;
        }

        v47 |= v49;
        if (v30[v46] != -1)
        {
          OUTLINED_FUNCTION_32();
          goto LABEL_18;
        }
      }
    }

    else
    {
LABEL_4:
      v38 = v36;
      while (1)
      {
        v36 = v38 + 1;
        if (__OFADD__(v38, 1))
        {
          break;
        }

        if (v36 >= v32)
        {
          goto LABEL_20;
        }

        ++v38;
        if (*(v31 + 56 + 8 * v36))
        {
          OUTLINED_FUNCTION_21_3();
          v33 = v40 & v39;
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_20:

    *v30 = v35;
    OUTLINED_FUNCTION_80_0();
  }
}

void sub_1D7EAF54C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t CoverViewManager.styleCoverView(with:)(uint64_t a1)
{
  CoverViewManager.cover.getter();
  if (v15 != 2)
  {
    return sub_1D7E298F0(v12);
  }

  v2 = v14;
  v6 = v12[0];
  v7 = v12[1];
  sub_1D7E0E768(a1, v8);
  LOBYTE(v9) = v2;
  OUTLINED_FUNCTION_2_88(2, v4, v5, SWORD2(v5), SBYTE6(v5), SHIBYTE(v5), v6, *(&v6 + 1), v7, *(&v7 + 1), v8[0], v8[1], v8[2], v8[3], v8[4], v9, v10, v11);
  sub_1D7E298F0(&v6);
  return __swift_destroy_boxed_opaque_existential_1Tm(v13);
}

{
  CoverViewManager.cover.getter();
  if (v21 == 4)
  {
    v3 = v20[5];
    v4 = v20[6];
    sub_1D7E0E768(a1, v8);
    v13 = v3;
    v14 = v4;
    v2 = 4;
    goto LABEL_5;
  }

  if (v21 == 3)
  {
    sub_1D7E0E768(a1, v8);
    v2 = 3;
LABEL_5:
    OUTLINED_FUNCTION_2_88(v2, v6, v7, SWORD2(v7), SBYTE6(v7), SHIBYTE(v7), *v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19);
    sub_1D7E298F0(v8);
    return __swift_destroy_boxed_opaque_existential_1Tm(v20);
  }

  return sub_1D7E298F0(v20);
}

void sub_1D7EAF62C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_5_21(v34, &qword_1EDBB2EC0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  OUTLINED_FUNCTION_159();
  v35 = sub_1D8192144();
  if (!*(v31 + 16))
  {
LABEL_24:

    *v30 = v35;
    OUTLINED_FUNCTION_80_0();
    return;
  }

  v36 = 0;
  v37 = (v31 + 56);
  OUTLINED_FUNCTION_23_6();
  if (!v33)
  {
LABEL_4:
    v39 = v36;
    while (1)
    {
      v36 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
        __break(1u);
        goto LABEL_26;
      }

      if (v36 >= v32)
      {
        break;
      }

      ++v39;
      if (v37[v36])
      {
        OUTLINED_FUNCTION_21_3();
        v33 = v41 & v40;
        goto LABEL_9;
      }
    }

    v52 = 1 << *(v31 + 32);
    if (v52 >= 64)
    {
      sub_1D7E2CB98(0, (v52 + 63) >> 6, v31 + 56);
    }

    else
    {
      OUTLINED_FUNCTION_59_3();
      *v37 = v53;
    }

    *(v31 + 16) = 0;
    goto LABEL_24;
  }

  while (1)
  {
    OUTLINED_FUNCTION_64_3();
LABEL_9:
    v42 = (*(v31 + 48) + 16 * (v38 | (v36 << 6)));
    v43 = *v42;
    v44 = v42[1];
    sub_1D81927E4();
    sub_1D8190FF4();
    sub_1D8192824();
    OUTLINED_FUNCTION_35_5();
    if (v45)
    {
      break;
    }

    OUTLINED_FUNCTION_34();
LABEL_18:
    OUTLINED_FUNCTION_29_5(v46);
    *v51 = v43;
    v51[1] = v44;
    ++*(v35 + 16);
    if (!v33)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_33();
  while (++v47 != v49 || (v48 & 1) == 0)
  {
    v50 = v47 == v49;
    if (v47 == v49)
    {
      v47 = 0;
    }

    v48 |= v50;
    if (v30[v47] != -1)
    {
      OUTLINED_FUNCTION_32();
      goto LABEL_18;
    }
  }

LABEL_26:
  __break(1u);
}

double CoverViewManager.cover.getter()
{

  sub_1D818F534();

  return result;
}

uint64_t sub_1D7EAF814(uint64_t result, uint64_t a2)
{
  v2 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
  }

  else
  {
    v3 = v2 + 1;
    if (!__OFADD__(v2, 1))
    {
      if (v2 != -1)
      {
        v5 = result;
        v6 = sub_1D7EAF8B8();
        if (sub_1D7EAF93C(&v7, v6 + 32, v3, v5, a2) == v3)
        {
          return v6;
        }

        __break(1u);
      }

      return MEMORY[0x1E69E7CC0];
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D7EAF8B8()
{
  OUTLINED_FUNCTION_15_3();
  if (!v0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1D7E71F64(0, &unk_1EDBB2C40, MEMORY[0x1E69E6530]);
  v1 = swift_allocObject();
  OUTLINED_FUNCTION_22_5(v1);
  OUTLINED_FUNCTION_21_4(v2 / 8);
  return v0;
}

uint64_t sub_1D7EAF93C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    v6 = 0;
    a3 = 0;
    goto LABEL_14;
  }

  if (!a3)
  {
    v6 = 0;
LABEL_14:
    v7 = a4;
LABEL_16:
    *result = a4;
    *(result + 8) = a5;
    *(result + 16) = v7;
    *(result + 24) = v6;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v6 = 0;
    v7 = a4;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v6)
      {
        v6 = 1;
        a3 = v5;
        goto LABEL_16;
      }

      v6 = v7 == a5;
      if (v7 == a5)
      {
        v9 = 0;
      }

      else
      {
        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_18;
        }
      }

      *(a2 + 8 * v5++) = v7;
      v7 = v9;
      if (v8 == a3)
      {
        v7 = v9;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
  }

  __break(1u);
  return result;
}

Swift::OpaquePointer_optional __swiftcall BlueprintLayoutCollectionPinAdjuster.pinnedLayoutAttributes(for:offset:insets:contentSize:)(Swift::OpaquePointer a1, CGPoint offset, UIEdgeInsets insets, CGSize contentSize)
{
  OUTLINED_FUNCTION_70();
  v6 = *(v4 + 568);
  if (*(v6 + 16))
  {
    v29 = MEMORY[0x1E69E7CC0];
    v7 = *(v5 + 16);
    if (v7)
    {
      OUTLINED_FUNCTION_5_46();
      v8 = 0;
      v10 = v9 + 32;
      v22 = v9 + 32;
      v23 = v7;
      do
      {
        if (!*(v6 + 16))
        {
          goto LABEL_17;
        }

        v11 = sub_1D7E7E198(*(v10 + 8 * v8));
        if (!v12)
        {
          goto LABEL_17;
        }

        v13 = *(*(v6 + 56) + 8 * v11);
        if (v13 >> 62)
        {
          v11 = sub_1D81920A4();
          v14 = v11;
          if (!v11)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v14)
          {
            goto LABEL_17;
          }
        }

        if (v14 < 1)
        {
          __break(1u);
          goto LABEL_23;
        }

        v24 = v8;
        sub_1D8190DB4();
        v15 = 0;
        do
        {
          if ((v13 & 0xC000000000000001) != 0)
          {
            v16 = MEMORY[0x1DA714420](v15, v13);
          }

          else
          {
            v16 = *(v13 + 8 * v15 + 32);
          }

          v17 = v16;
          memcpy(__dst, v4, sizeof(__dst));
          v26 = v6;
          v18 = *(v4 + 592);
          v27 = *(v4 + 576);
          v28 = v18;
          OUTLINED_FUNCTION_4_5();
          BlueprintLayoutCollectionPinAdjuster.adjusted(layoutAttributes:offset:insets:contentSize:)();
          v20 = v19;
          MEMORY[0x1DA713500]();
          v21 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x18);
          if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v21 >> 1)
          {
            OUTLINED_FUNCTION_2_10(v21);
            sub_1D81913B4();
          }

          ++v15;
          sub_1D8191404();
        }

        while (v14 != v15);

        v7 = v23;
        v8 = v24;
        v10 = v22;
LABEL_17:
        ++v8;
      }

      while (v8 != v7);
    }
  }

  OUTLINED_FUNCTION_72();
LABEL_23:
  result.value._rawValue = v11;
  result.is_nil = v12;
  return result;
}

uint64_t sub_1D7EAFC84(uint64_t a1, char a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  *(v8 + 16) = a1;
  *(v8 + 24) = a3;
  *(v8 + 32) = a4;
  *(v8 + 40) = a5;
  *(v8 + 48) = a6;
  *(v8 + 56) = a7;
  *(v8 + 64) = a8;
  *(v8 + 72) = a2;
  return v8;
}

double sub_1D7EAFCA0(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 72) == 1)
    {
      v2 = OUTLINED_FUNCTION_19_20();
      OUTLINED_FUNCTION_15_2(v2, v3);

      swift_isUniquelyReferenced_nonNull_native();
      v5 = *(v1 + 16);
      OUTLINED_FUNCTION_80();
      sub_1D7EAFD70();
      *(v1 + 16) = v5;
      swift_endAccess();
    }

    else
    {
    }
  }

  return result;
}

void sub_1D7EAFD70()
{
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_155();
  v4 = v3;
  sub_1D7EAFE50();
  OUTLINED_FUNCTION_4_10();
  if (v5)
  {
    __break(1u);
LABEL_14:
    type metadata accessor for CGRect();
    sub_1D8192714();
    __break(1u);
    return;
  }

  v6 = OUTLINED_FUNCTION_128_0();
  sub_1D7EAFF48(v6);
  if (OUTLINED_FUNCTION_70_0(v7))
  {
    OUTLINED_FUNCTION_80();
    sub_1D7EAFE50();
    OUTLINED_FUNCTION_74_0();
    if (!v9)
    {
      goto LABEL_14;
    }

    v2 = v8;
  }

  if (v1)
  {
    *(*(*v0 + 56) + 8 * v2) = v4;
    OUTLINED_FUNCTION_170();
  }

  else
  {
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_170();

    sub_1D7EB00B4(v11, v12, v13);
  }
}

unint64_t sub_1D7EAFE50()
{
  OUTLINED_FUNCTION_10_13();
  v0 = OUTLINED_FUNCTION_80();
  sub_1D7EAFEC4(v0, v1, v2, v3);
  sub_1D8192824();
  v5 = OUTLINED_FUNCTION_80();

  return sub_1D7EAFFF4(v4, v5, v6, v7, v8);
}

uint64_t sub_1D7EAFEC4(double a1, double a2, double a3, double a4)
{
  v11 = CGRectStandardize(*&a1);
  y = v11.origin.y;
  width = v11.size.width;
  height = v11.size.height;
  if (v11.origin.x == 0.0)
  {
    v11.origin.x = 0.0;
  }

  MEMORY[0x1DA714A20](*&v11.origin.x);
  if (y == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = y;
  }

  MEMORY[0x1DA714A20](*&v7);
  if (width == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = width;
  }

  MEMORY[0x1DA714A20](*&v8);
  if (height == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = height;
  }

  return MEMORY[0x1DA714A20](*&v9);
}

void sub_1D7EAFF48(uint64_t a1)
{
  if (!qword_1EDBB2D70)
  {
    type metadata accessor for CGRect();
    type metadata accessor for BlueprintLayoutCollectionRectResult();
    sub_1D7E2B754(&qword_1EDBB3008, type metadata accessor for CGRect, MEMORY[0x1E695EF70]);
    v1 = sub_1D8192394();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDBB2D70);
    }
  }
}

unint64_t sub_1D7EAFFF4(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v10 = ~(-1 << *(v5 + 32));
  for (i = a1 & v10; ((1 << i) & *(v5 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v10)
  {
    v13.origin.x = a2;
    v13.origin.y = a3;
    v13.size.width = a4;
    v13.size.height = a5;
    if (CGRectEqualToRect(*(*(v5 + 48) + 32 * i), v13))
    {
      break;
    }
  }

  return i;
}

void sub_1D7EB00B4(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = OUTLINED_FUNCTION_3_37(a1, a3 + 8 * (a1 >> 6));
  v5 = (v4[6] + 32 * v3);
  *v5 = v6;
  v5[1] = v7;
  v5[2] = v8;
  v5[3] = v9;
  *(v4[7] + 8 * v3) = v10;
  v11 = v4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_8_15(v4, v13);
  }
}

void sub_1D7EB0164(uint64_t a1, void *a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = OUTLINED_FUNCTION_35();
    v9 = v8(v7);
    v10 = a4(a1, v9);
    if (!v11)
    {
      atomic_store(v10, v4);
    }
  }
}

uint64_t (*sub_1D7EB01C4(uint64_t (*result)(unint64_t), uint64_t a2, uint64_t a3))(unint64_t)
{
  v5 = result;
  v6 = 0;
  v7 = *(a3 + 16);
  do
  {
    if (v7 == v6)
    {
      break;
    }

    v8 = *(sub_1D818E994() - 8);
    result = v5(a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v6++);
  }

  while (!v3);
  return result;
}

uint64_t sub_1D7EB02B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v40 = a3;
  v42 = a1;
  v35 = *a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = type metadata accessor for BlueprintLayoutItem(0, AssociatedTypeWitness, AssociatedConformanceWitness, v6);
  v37 = *(v7 - 8);
  v38 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v36 = &v31 - v8;
  v9 = v35[13];
  v10 = v35[11];
  swift_getAssociatedTypeWitness();
  v33 = v9;
  v32 = v10;
  v11 = swift_getAssociatedConformanceWitness();
  v12 = *(v11 + 40);
  v13 = swift_checkMetadataState();
  v34 = a2;
  v14 = v12(v13, v11);
  v15 = v42;
  v44 = v42;
  v16 = sub_1D7EB0860(sub_1D7EB0ED8, v43, v14);

  if (!v16)
  {
    v18 = swift_getAssociatedTypeWitness();
    v19 = swift_getAssociatedConformanceWitness();
    v46[0] = v18;
    v46[1] = AssociatedTypeWitness;
    v46[2] = v19;
    v46[3] = AssociatedConformanceWitness;
    v20 = type metadata accessor for BlueprintLayout(0, v46);
    result = BlueprintLayout.contains(indexPath:)(v15, v20);
    if (result)
    {
      v21 = v36;
      BlueprintLayout.subscript.getter(v15, v20);
      if ((*(v35[15] + 8))(AssociatedTypeWitness))
      {
        v22 = *(*a4 + 160);
        swift_beginAccess();
        v23 = *(a4 + v22);
        sub_1D8190DB4();
        v24 = sub_1D818EF94();
        v26 = sub_1D7F28578(v24, v25, v23);

        if (!v26)
        {
          (*(v33 + 40))(v21, v34, v15, v32);
          v27 = sub_1D818EF94();
          v29 = v28;
          swift_beginAccess();
          sub_1D7E91548(v45, v27, v29, v30);
          swift_endAccess();
        }
      }

      return (*(v37 + 8))(v21, v38);
    }
  }

  return result;
}

uint64_t CardViewAppearanceProviding<>.updateCardViewAppearance()(uint64_t a1, uint64_t a2)
{
  sub_1D7EB0890(v7);
  v4 = v8;
  if (!v8)
  {
    return sub_1D7F35C78(v7);
  }

  v5 = v9;
  __swift_project_boxed_opaque_existential_1(v7, v8);
  (*(v5 + 8))(v2, a2, v4, v5);
  return __swift_destroy_boxed_opaque_existential_1Tm(v7);
}

BOOL sub_1D7EB0784(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v8 = 0;
  v9 = *(a3 + 16);
  do
  {
    v10 = v8;
    if (v9 == v8)
    {
      break;
    }

    v11 = (a4)(0, a2);
    OUTLINED_FUNCTION_15_15(v11);
    v14 = a1(a3 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v13 + 72) * v10);
    if (v4)
    {
      break;
    }

    v8 = v10 + 1;
  }

  while ((v14 & 1) == 0);
  return v9 != v10;
}

double sub_1D7EB0890@<D0>(void *a2@<X8>)
{
  if (sub_1D8190B24())
  {
    if (OUTLINED_FUNCTION_11_39() && (sub_1D7E0A1A8(0, &qword_1EDBB31B0, 0x1E69DD258), sub_1D7E0631C(0, qword_1EDBAF780, &protocol descriptor for CardContainerAppearanceDelegate), (swift_dynamicCast() & 1) != 0))
    {
      if (*(&v13 + 1))
      {
        sub_1D7E05450(&v12, &v15);
LABEL_9:
        sub_1D7E05450(&v15, a2);
        return result;
      }
    }

    else
    {
      v14 = 0;
      v12 = 0u;
      v13 = 0u;
    }

    sub_1D8096970(&v12, sub_1D7F35CD4);
    v6 = [v2 presentingViewController];
    if (v6)
    {
      v7 = v6;
      sub_1D7EB0890(v6, a2);
    }

    else
    {
      v10 = OUTLINED_FUNCTION_11_39();
      if (v10)
      {
        v11 = v10;
        sub_1D7EB0890(v10, a2);
      }

      else
      {
        return OUTLINED_FUNCTION_3_100();
      }
    }
  }

  else
  {
    v4 = OUTLINED_FUNCTION_11_39();
    if (v4 && (*&v12 = v4, sub_1D7E0A1A8(0, &qword_1EDBB31B0, 0x1E69DD258), sub_1D7E0631C(0, qword_1EDBAF780, &protocol descriptor for CardContainerAppearanceDelegate), (swift_dynamicCast() & 1) != 0))
    {
      if (*(&v16 + 1))
      {
        goto LABEL_9;
      }
    }

    else
    {
      v17 = 0;
      v15 = 0u;
      v16 = 0u;
    }

    v8 = OUTLINED_FUNCTION_11_39();
    if (v8)
    {
      v9 = v8;
      sub_1D7EB0890(v8, a2);
    }

    else
    {
      result = OUTLINED_FUNCTION_3_100();
    }

    if (*(&v16 + 1))
    {
      sub_1D8096970(&v15, sub_1D7F35CD4);
    }
  }

  return result;
}

uint64_t sub_1D7EB0B18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_104_0();
  sub_1D7E2DA70(v3, v4, v5);
  OUTLINED_FUNCTION_74();
  return sub_1D8190ED4() & 1;
}

void sub_1D7EB0B9C(void *a1, uint64_t a2)
{
  swift_getObjectType();
  v4 = sub_1D7EB0D58(a1);
  if (v4)
  {
    v5 = v4;
    v21 = a1;
    v6 = OUTLINED_FUNCTION_47_11();
    v7(v6, a2);
    v19 = *v20;
    sub_1D7EB13A4(&v19);

    v8 = *(&v19 + 1);
  }

  else
  {
    if (qword_1EDBB1F78 != -1)
    {
      OUTLINED_FUNCTION_0_157(&qword_1EDBB1F78);
    }

    v9 = sub_1D818FE34();
    OUTLINED_FUNCTION_26_17(v9, qword_1EDBC6048);
    v10 = a1;
    oslog = sub_1D818FE14();
    v11 = sub_1D81919C4();

    if (os_log_type_enabled(oslog, v11))
    {
      v12 = OUTLINED_FUNCTION_55_1();
      v13 = OUTLINED_FUNCTION_61();
      v20[0] = v13;
      *v12 = 136315138;
      *&v19 = v10;
      v14 = v10;
      OUTLINED_FUNCTION_14_32();
      v15 = sub_1D8190F94();
      v17 = sub_1D7E1C3D8(v15, v16, v20);

      *(v12 + 4) = v17;
      _os_log_impl(&dword_1D7DFF000, oslog, v11, "Unable to update CardViewAppearance for view controller %s, no matching card item found", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      OUTLINED_FUNCTION_10_45();
      OUTLINED_FUNCTION_38();
    }

    else
    {
    }
  }
}

uint64_t sub_1D7EB0D58(uint64_t a1)
{
  OUTLINED_FUNCTION_0_161();
  sub_1D7E35D40(0, v3, v4, MEMORY[0x1E69D6AD8]);
  v6 = v5;
  OUTLINED_FUNCTION_9();
  v8 = v7;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_26();
  sub_1D7EB0EF8();
  result = 0;
  if ((v11 & 1) == 0)
  {
    v12 = OBJC_IVAR____TtC5TeaUI28UIKitCardContainerController_cardItemStack;
    OUTLINED_FUNCTION_7();
    swift_beginAccess();
    (*(v8 + 16))(v2, v1 + v12, v6);
    sub_1D818F9F4();
    v13 = OUTLINED_FUNCTION_14_0();
    v14(v13);
    return v15;
  }

  return result;
}

void sub_1D7EB0EF8()
{
  OUTLINED_FUNCTION_120();
  v1 = v0;
  OUTLINED_FUNCTION_0_161();
  sub_1D7E35D40(0, v2, v3, MEMORY[0x1E69D6AD8]);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_15_10();
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  v5 = OUTLINED_FUNCTION_45_11();
  v6(v5);
  OUTLINED_FUNCTION_3_93(&qword_1EDBB1FF0);
  OUTLINED_FUNCTION_18_28();
  sub_1D8191724();
  while (1)
  {
    OUTLINED_FUNCTION_18_28();
    sub_1D81917B4();
    if (v21[4] == v21[0])
    {
      break;
    }

    v7 = sub_1D81918F4();
    v9 = *v8;
    (v7)(v21, 0);
    LOBYTE(v7) = sub_1D7EB1310(v1);

    if (v7)
    {
      v19 = OUTLINED_FUNCTION_85();
      v20(v19);
      goto LABEL_11;
    }

    sub_1D81917C4();
  }

  v10 = OUTLINED_FUNCTION_85();
  v11(v10);
  if (qword_1EDBB1F78 != -1)
  {
    OUTLINED_FUNCTION_0_157(&qword_1EDBB1F78);
  }

  v12 = sub_1D818FE34();
  OUTLINED_FUNCTION_26_17(v12, qword_1EDBC6048);
  v13 = v1;
  v14 = sub_1D818FE14();
  v15 = sub_1D81919E4();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = OUTLINED_FUNCTION_55_1();
    v17 = OUTLINED_FUNCTION_10_43();
    *v16 = 138412290;
    *(v16 + 4) = v13;
    *v17 = v13;
    v18 = v13;
    _os_log_impl(&dword_1D7DFF000, v14, v15, "Unable to find card for view controller: %@", v16, 0xCu);
    sub_1D7E39F80(v17);
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_10_45();
  }

LABEL_11:
  OUTLINED_FUNCTION_100();
}

uint64_t BlueprintLayout.contains(indexPath:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32);
  v12[0] = *(a2 + 16);
  v12[1] = v2;
  type metadata accessor for BlueprintLayoutSection(0, v12);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v3);
  if ((sub_1D818E974() & 0x8000000000000000) == 0)
  {
    v4 = sub_1D818E974();
    if (v4 < sub_1D8191414())
    {
      sub_1D818E974();
      sub_1D81914C4();
      if (sub_1D818E964() < 0)
      {
        v10 = OUTLINED_FUNCTION_14_0();
        v11(v10);
      }

      else
      {
        v5 = sub_1D818E964();
        swift_getWitnessTable();
        v6 = sub_1D8191834();
        v7 = OUTLINED_FUNCTION_14_0();
        v8(v7);
        if (v5 < v6)
        {
          return 1;
        }
      }
    }
  }

  return 0;
}

uint64_t sub_1D7EB12E8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  result = BlueprintLayoutSection.startIndex.getter(a1, a3, a4, a5);
  *a2 = result;
  return result;
}

BOOL sub_1D7EB1310(id a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC5TeaUI13UIKitCardItem_viewController);
  if (sub_1D7E3A084(a1, v3))
  {
    return 1;
  }

  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5 && (v6 = [v5 visibleViewController]) != 0 && (v7 = v6, v6, v7 == a1))
  {
    return 1;
  }

  else
  {
    return v3 == a1;
  }
}

void sub_1D7EB13A4(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = [*(v1 + OBJC_IVAR____TtC5TeaUI13UIKitCardItem_presentedWrapper) sheetPresentationController];
  if (v3)
  {
    if (v2)
    {
      v4 = v3;
      [v3 _setLargeBackground_];
      v3 = v4;
    }
  }
}

Swift::Int __swiftcall BlueprintLayoutSection.index(after:)(Swift::Int after)
{
  type metadata accessor for BlueprintLayoutItem(0, *(v1 + 24), *(v1 + 40), v2);

  return sub_1D8191424();
}

uint64_t sub_1D7EB1484(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for BlueprintInfiniteScroll(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  OUTLINED_FUNCTION_15();
  v6 = v5 - v4;
  v7 = swift_projectBox();
  swift_unownedRetainStrong();
  sub_1D7E0E768(a1 + 16, v11);

  v8 = v12;
  v9 = v13;
  __swift_project_boxed_opaque_existential_1(v11, v12);
  (*(v9 + 8))(v8, v9);
  swift_beginAccess();
  sub_1D7E33AB4(v7, v6);
  sub_1D818F124();

  sub_1D7E306A8(v6);
  return __swift_destroy_boxed_opaque_existential_1Tm(v11);
}

Swift::Void __swiftcall CardViewScrollViewCoordinator.didMove(toParent:)(UIViewController_optional *toParent)
{
  if (toParent && (toParent = UIViewController.cardContainerController.getter(toParent)) != 0)
  {

    OUTLINED_FUNCTION_2_81(v8, v9, v10, v11, v12, v13, v14, v15, 0, 0, 0, 0, 0, 0, v16);

    sub_1D7EB1A54(0);
  }

  else
  {
    OUTLINED_FUNCTION_2_81(toParent, v1, v2, v3, v4, v5, v6, v7, 1, 0, 0, 0, 0, 0, v16);
  }
}

double sub_1D7EB1678(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(type metadata accessor for BlueprintInfiniteScroll(0) + 20);
    v7 = OBJC_IVAR____TtC5TeaUI30BlueprintInfiniteScrollManager_rangeCache;
    swift_beginAccess();
    v8 = sub_1D818E8B4();
    (*(*(v8 - 8) + 24))(v5 + v7, a1 + v6, v8);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_1D7EB1744(uint64_t a1)
{
  sub_1D7EB19A8(a1);
  v3 = v1 + OBJC_IVAR____TtC5TeaUI29CardViewScrollViewCoordinator_scrollLock;
  v4 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v4;
  *(v3 + 32) = *(a1 + 32);
  *(v3 + 48) = *(a1 + 48);

  return sub_1D7EB179C();
}

uint64_t sub_1D7EB179C()
{
  v1 = v0 + OBJC_IVAR____TtC5TeaUI29CardViewScrollViewCoordinator_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    v4 = *(v0 + OBJC_IVAR____TtC5TeaUI29CardViewScrollViewCoordinator_scrollLock + 48) > 1u;
    ObjectType = swift_getObjectType();
    v6 = v4;
    (*(v3 + 16))(v0, &v6, ObjectType, v3);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D7EB1850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11[0] = a5;
  v11[1] = a6;
  v11[2] = a9;
  v11[3] = a10;
  type metadata accessor for Blueprint(0, v11);
  return sub_1D7E2197C();
}

uint64_t sub_1D7EB18C4()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v8 = *(v0 + 48);
  v9[0] = *(v0 + 16);
  v7 = v9[0];
  v9[1] = v8;
  v3 = *(type metadata accessor for Blueprint(0, v9) - 8);
  v4 = (*(v3 + 80) + 80) & ~*(v3 + 80);
  v5 = (v0 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  return sub_1D7EB1850(v0 + v4, *v5, v5[1], v5[2], v7, *(&v7 + 1), v1, v2, v8, *(&v8 + 1));
}

uint64_t sub_1D7EB19A8(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC5TeaUI29CardViewScrollViewCoordinator_delegate;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(v3 + 8);
    v6 = *(a1 + 48) > 1u;
    ObjectType = swift_getObjectType();
    v8 = v6;
    (*(v5 + 8))(v1, &v8, ObjectType, v5);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1D7EB1A54(char a1)
{
  v3 = OBJC_IVAR____TtC5TeaUI29CardViewScrollViewCoordinator_isEnabled;
  swift_beginAccess();
  if (*(v1 + v3) == 1)
  {
    if (!*(v1 + OBJC_IVAR____TtC5TeaUI29CardViewScrollViewCoordinator_scrollLock + 48))
    {
      if ((a1 & 1) == 0)
      {
        return;
      }

      v4 = 1;
      goto LABEL_8;
    }

    LOBYTE(v12[0]) = 0;
    if (sub_1D801B24C(v12) & 1) != 0 || (a1)
    {
      v4 = a1 & 1;
LABEL_8:
      v5 = sub_1D801B1AC(v4);
      v7 = v6;
      [*(v1 + OBJC_IVAR____TtC5TeaUI29CardViewScrollViewCoordinator_scrollView) adjustedContentInset];
      v12[0] = v5;
      v12[1] = v7;
      v12[2] = v8;
      v12[3] = v9;
      v12[4] = v10;
      v12[5] = v11;
      v13 = 0;
      sub_1D7EB1744(v12);
    }
  }
}

uint64_t sub_1D7EB1B2C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  sub_1D7EA76FC(a2, &v5);
  v3 = v5;
  swift_beginAccess();
  *(v2 + 16) = v3;
  sub_1D8190DB4();
}

uint64_t CardViewPresentationStateProviding<>.updateCardViewPresentation()(uint64_t a1, uint64_t a2)
{
  sub_1D7EB0890(v7);
  v4 = v8;
  if (!v8)
  {
    return sub_1D7F35C78(v7);
  }

  v5 = v9;
  __swift_project_boxed_opaque_existential_1(v7, v8);
  (*(v5 + 16))(v2, a2, v4, v5);
  return __swift_destroy_boxed_opaque_existential_1Tm(v7);
}

uint64_t Diff.updatedIndices.getter()
{
  v0 = OUTLINED_FUNCTION_30_16();
  type metadata accessor for Diff(v0);
  sub_1D818E8B4();
  OUTLINED_FUNCTION_8();
  v1 = OUTLINED_FUNCTION_1_99();

  return v2(v1);
}

double Diff.updatedIndexPaths.getter()
{
  type metadata accessor for Diff(0);

  sub_1D8190DB4();
  return result;
}

double Diff.deletedIndexPaths.getter()
{
  type metadata accessor for Diff(0);

  sub_1D8190DB4();
  return result;
}

double Diff.insertedIndexPaths.getter()
{
  type metadata accessor for Diff(0);

  sub_1D8190DB4();
  return result;
}

double Diff.movedIndices.getter()
{
  type metadata accessor for Diff(0);

  sub_1D8190DB4();
  return result;
}

double Diff.movedIndexPaths.getter()
{
  type metadata accessor for Diff(0);

  sub_1D8190DB4();
  return result;
}

uint64_t sub_1D7EB1E2C()
{
  v1 = *(v0 + 32);
  v7 = *(v0 + 40);
  v8[0] = *(v0 + 16);
  v6 = v8[0];
  v8[1] = v7;
  v2 = type metadata accessor for BlueprintPipelineUpdate(0, v8);
  OUTLINED_FUNCTION_15_15(v2);
  OUTLINED_FUNCTION_25_14();
  return sub_1D7EB1EFC(*(v0 + 64), v0 + v3, v0 + v4, v6, *(&v6 + 1), v1, v7, *(&v7 + 1));
}

uint64_t sub_1D7EB1EFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_7();
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1D7E2657C(result + 40, v19, &qword_1EDBB65A8, &qword_1EDBB65B0, &protocol descriptor for BlueprintBookmarkManagerType);

    v15 = v20;
    if (v20)
    {
      v16 = v21;
      __swift_project_boxed_opaque_existential_1(v19, v20);
      v18[0] = a4;
      v18[1] = a5;
      v18[2] = a7;
      v18[3] = a8;
      v17 = type metadata accessor for BlueprintPipelineUpdate(0, v18);
      (*(v16 + 32))(a2 + *(v17 + 60), a3, v15, v16);
      return __swift_destroy_boxed_opaque_existential_1Tm(v19);
    }

    else
    {
      return sub_1D7E2739C(v19, &qword_1EDBB65A8, &qword_1EDBB65B0, &protocol descriptor for BlueprintBookmarkManagerType);
    }
  }

  return result;
}

double sub_1D7EB2030()
{
  OUTLINED_FUNCTION_10_9();
  if (v1 && (v2 = sub_1D7E2AEC0(), (v3 & 1) != 0))
  {
    OUTLINED_FUNCTION_19_1(v2);
  }

  else
  {
    *(v0 + 32) = 0;
    return OUTLINED_FUNCTION_6_3();
  }

  return result;
}

uint64_t sub_1D7EB2070(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_8();
  (*(v5 + 16))(a2, a1);
  return a2;
}

void sub_1D7EB20D0(uint64_t a1)
{
  if (!qword_1EDBB5C40)
  {
    sub_1D807B398();
    v1 = sub_1D8191E84();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDBB5C40);
    }
  }
}

uint64_t sub_1D7EB2128(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
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
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t RestoreViewportBlueprintBookmarkApplicator.apply(bookmark:context:preparedContext:)(uint64_t a1, const void *a2, uint64_t a3)
{
  v4 = v3;
  v88 = a3;
  v6 = *v3;
  OUTLINED_FUNCTION_5_28();
  v8 = *(v7 + 80);
  OUTLINED_FUNCTION_5_28();
  OUTLINED_FUNCTION_5_28();
  v10 = *(v9 + 96);
  v11 = *(v6 + 104);
  v92[0] = v8;
  v92[1] = v12;
  v86 = v11;
  v87 = v12;
  v92[2] = v10;
  v93 = v11;
  v13 = type metadata accessor for RestoreViewportBlueprintBookmarkApplicator.RestoreContext(255, v92);
  sub_1D8191E84();
  OUTLINED_FUNCTION_9();
  v85 = v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = v80 - v16;
  v90 = v13;
  v84 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v89 = v80 - v19;
  memcpy(v97, a2, sizeof(v97));
  OUTLINED_FUNCTION_5_28();
  v83 = *(v20 + 112);
  BlueprintLayoutProviderType.layoutBlueprint.getter(v8, v10);
  v21 = OUTLINED_FUNCTION_9_16();
  v22 = OUTLINED_FUNCTION_9_16();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v24 = swift_getAssociatedConformanceWitness();
  *&v91[0] = v21;
  *&v91[1] = v22;
  *&v91[2] = AssociatedConformanceWitness;
  *&v91[3] = v24;
  type metadata accessor for BlueprintLayout(0, v91);
  OUTLINED_FUNCTION_1_54();
  swift_getWitnessTable();
  LOBYTE(v6) = sub_1D8191874();
  OUTLINED_FUNCTION_3_0();
  v26 = *(v25 + 8);
  v27 = v25 + 8;
  v28 = OUTLINED_FUNCTION_6_30();
  result = v26(v28);
  if ((v6 & 1) == 0)
  {
    sub_1D7EB2914(v88, v92, sub_1D7E2CEC0);
    if (v93)
    {
      v30 = v90;
      v31 = swift_dynamicCast();
      __swift_storeEnumTagSinglePayload(v17, v31 ^ 1u, 1, v30);
      if (__swift_getEnumTagSinglePayload(v17, 1, v30) != 1)
      {
        v80[1] = v27;
        v82 = v26;
        (*(v84 + 32))(v89, v17, v30);
        v88 = *(v4 + *(*v4 + 120));
        v33 = v86;
        v32 = v87;
        v35 = v86 + 56;
        v34 = *(v86 + 56);
        v36 = v34(v87, v86);
        [v36 contentOffset];
        v38 = v37;
        v40 = v39;

        v85 = v35;
        v81 = v34;
        v41 = v34(v32, v33);
        swift_getAssociatedTypeWitness();
        v42 = swift_getAssociatedConformanceWitness();
        v43 = *(v42 + 88);
        v44 = swift_checkMetadataState();
        v43(v95, v89, v44, v42);

        if (v96)
        {
          v45 = v42;
          v46 = v81;
          v80[0] = (v81)(v87, v86);
          OUTLINED_FUNCTION_2_54();
          v47 = v94;
          v48 = OUTLINED_FUNCTION_6_30();
          v82(v48);
          LOBYTE(v91[0]) = v47;
          v49 = v80[0];
          (*(v45 + 208))(v89, v91, 0, v44, v45);

          v50 = OUTLINED_FUNCTION_4_8();
          v51 = v46(v50);
          [v51 contentOffset];
          v38 = v52;
          v40 = v53;
        }

        else
        {
          v57 = *v95;
          v58 = *&v95[1];
          OUTLINED_FUNCTION_2_54();
          v59 = v94;
          v60 = OUTLINED_FUNCTION_6_30();
          v82(v60);
          v61 = (v81)(v87, v86);
          [v61 adjustedContentInset];
          v63 = v62;
          v65 = v64;

          if (v59)
          {
            v40 = v58 - v63;
          }

          else
          {
            v38 = v57 - v65;
          }
        }

        v66 = v89;
        OUTLINED_FUNCTION_2_54();
        v67 = v94;
        v68 = OUTLINED_FUNCTION_6_30();
        v82(v68);
        v69 = v90;
        if (v67)
        {
          memcpy(v91, v97, sizeof(v91));
          if (sub_1D7FA0BEC(v91) != 1)
          {
            v75 = v91[1] == v91[3] && v91[0] == v91[2];
            if (!v75 && v91[7] < 0.0)
            {
              v76 = OUTLINED_FUNCTION_4_8();
              v74 = v77(v76);
              v78 = -v91[12];
              [v74 contentOffset];
              [v74 setContentOffset_];
              goto LABEL_16;
            }
          }

          v40 = v40 - *&v66[*(v69 + 52)];
          v70 = OUTLINED_FUNCTION_4_8();
          v72 = v71(v70);
        }

        else
        {
          v38 = v38 - *&v66[*(v90 + 52)];
          v73 = OUTLINED_FUNCTION_4_8();
          v72 = v81(v73);
        }

        v74 = v72;
        [v72 setContentOffset_];
LABEL_16:

        v56 = *(v84 + 8);
        v54 = v66;
        v55 = v69;
        return v56(v54, v55);
      }
    }

    else
    {
      sub_1D7E7BAAC(v92);
      __swift_storeEnumTagSinglePayload(v17, 1, 1, v90);
    }

    v54 = OUTLINED_FUNCTION_4_8();
    return v56(v54, v55);
  }

  return result;
}

uint64_t sub_1D7EB289C(uint64_t a1)
{
  result = sub_1D818E994();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D7EB2914(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_3_0();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1D7EB29A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D818E994();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_1D7EB2A00(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D818E994();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

void *BlueprintLayout<>.init(layoutOptions:layoutDirection:sections:)@<X0>(char *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = OUTLINED_FUNCTION_5_78(a3);
  result = memcpy(v6, v7, 0x235uLL);
  *(a3 + 600) = a2;
  *(a3 + 565) = v5;
  return result;
}

void sub_1D7EB2A94()
{
  v0 = [objc_opt_self() defaultCenter];
  v1 = sub_1D8190EE4();
  [v0 postNotificationName:v1 object:0];
}

uint64_t sub_1D7EB2B38(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1D7E0E768(result + 24, v5);

    v2 = v5[4];
    __swift_project_boxed_opaque_existential_1(v5, v5[3]);
    swift_allocObject();
    swift_beginAccess();
    swift_weakLoadStrong();
    swift_weakInit();

    v4 = MEMORY[0x1EEE9AC00](v3);
    (*(v2 + 8))(sub_1D7EB2CFC, v4);

    return __swift_destroy_boxed_opaque_existential_1Tm(v5);
  }

  return result;
}

uint64_t MemoryCacheAccessMainWriter.access(block:)(uint64_t (*a1)(uint64_t))
{
  v2 = sub_1D818EDB4();
  a1(v2);
  return sub_1D818EDC4();
}

double sub_1D7EB2D08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    sub_1D818FC44();
  }

  return result;
}

void MemoryCacheAccessQueue.access(block:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1D7E74D44;
  *(v7 + 24) = v6;
  v9[4] = sub_1D7E74D6C;
  v9[5] = v7;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1D7E74D74;
  v9[3] = &block_descriptor_85;
  v8 = _Block_copy(v9);

  dispatch_sync(v5, v8);
  _Block_release(v8);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }
}

void sub_1D7EB2F24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = *(Strong + 24);
    if (v6)
    {
      v7 = v6 == a2;
    }

    else
    {
      v7 = 0;
    }

    if (v7)
    {
      v8 = 1 << *(a3 + 32);
      v9 = -1;
      if (v8 < 64)
      {
        v9 = ~(-1 << v8);
      }

      v10 = v9 & *(a3 + 64);
      v11 = (v8 + 63) >> 6;
      sub_1D8190DB4();
      v12 = 0;
      if (v10)
      {
        goto LABEL_15;
      }

      while (1)
      {
        v13 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v13 >= v11)
        {

          goto LABEL_18;
        }

        v10 = *(a3 + 64 + 8 * v13);
        ++v12;
        if (v10)
        {
          v12 = v13;
          do
          {
LABEL_15:
            v10 &= v10 - 1;
            v14 = swift_retain_n();
            sub_1D7EAFCA0(v14);
          }

          while (v10);
          continue;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_18:
    }
  }
}

uint64_t BlueprintLayoutCollectionRectResult.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

double sub_1D7EB30D4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);

  return result;
}

void sub_1D7EB3128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, int a7)
{
  v12 = sub_1D818E8B4();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v42[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    v43 = a7;
    v44 = a5;
    v18 = a4;
    v20 = a6[3];
    v19 = a6[4];
    __swift_project_boxed_opaque_existential_1(a6, v20);
    (*(v19 + 40))(v20, v19);
    v21 = sub_1D818E874();
    (*(v13 + 8))(v15, v12);
    if (v21)
    {
      v22 = 0;
      v23 = 0;
    }

    else
    {
      v27 = objc_opt_self();
      sub_1D7E0E768(a6, v45);
      v23 = swift_allocObject();
      *(v23 + 16) = v17;
      sub_1D7E05450(v45, v23 + 24);
      v28 = swift_allocObject();
      v22 = sub_1D7FE8468;
      *(v28 + 16) = sub_1D7FE8468;
      *(v28 + 24) = v23;
      v50 = sub_1D7EA8F68;
      v51 = v28;
      aBlock = MEMORY[0x1E69E9820];
      v47 = 1107296256;
      v48 = sub_1D7E74D74;
      v49 = &block_descriptor_68_0;
      v29 = _Block_copy(&aBlock);
      v30 = v17;

      [v27 performWithoutAnimation_];
      _Block_release(v29);
      LOBYTE(v27) = swift_isEscapingClosureAtFileLocation();

      if (v27)
      {
        __break(1u);
        return;
      }
    }

    v31 = a6[3];
    v32 = a6[4];
    __swift_project_boxed_opaque_existential_1(a6, v31);
    v33 = *((*(v32 + 88))(v31, v32) + 16);

    if (v33)
    {
      v34 = [v17 dataSource];
      if (v34)
      {
        MEMORY[0x1EEE9AC00](v34);
        *&v42[-48] = v17;
        *&v42[-40] = a6;
        *&v42[-32] = a3;
        *&v42[-24] = v18;
        *&v42[-16] = v44;
        *&v42[-8] = v35;
        sub_1D817062C(v43 & 1, sub_1D7FE8474, &v42[-64]);
        swift_unknownObjectRelease();

        sub_1D7E0E10C(v22, v23);
        return;
      }

      v36 = v22;
      if (a3)
      {
        LOBYTE(aBlock) = 2;
        BlueprintViewActionResponse.complete(apply:)(&aBlock);
      }

      v37 = [objc_opt_self() sharedApplication];
      v40 = swift_allocObject();
      *(v40 + 16) = v18;
      *(v40 + 24) = v44;
      v50 = sub_1D7EB38AC;
      v51 = v40;
      aBlock = MEMORY[0x1E69E9820];
      v47 = 1107296256;
      v48 = sub_1D7E64940;
      v49 = &block_descriptor_74_0;
      v41 = _Block_copy(&aBlock);

      [v37 ts:v41 installCACommitCompletionBlock:?];
      _Block_release(v41);
    }

    else
    {
      v36 = v22;
      if (a3)
      {
        LOBYTE(aBlock) = 2;
        BlueprintViewActionResponse.complete(apply:)(&aBlock);
      }

      v37 = [objc_opt_self() sharedApplication];
      v38 = swift_allocObject();
      *(v38 + 16) = v18;
      *(v38 + 24) = v44;
      v50 = sub_1D7EB38AC;
      v51 = v38;
      aBlock = MEMORY[0x1E69E9820];
      v47 = 1107296256;
      v48 = sub_1D7E64940;
      v49 = &block_descriptor_80;
      v39 = _Block_copy(&aBlock);

      [v37 ts:v39 installCACommitCompletionBlock:?];

      _Block_release(v39);
    }

    sub_1D7E0E10C(v36, v23);
  }

  else
  {
    if (a3)
    {
      LOBYTE(aBlock) = 2;
      BlueprintViewActionResponse.complete(apply:)(&aBlock);
    }

    v24 = [objc_opt_self() sharedApplication];
    v25 = swift_allocObject();
    *(v25 + 16) = a4;
    *(v25 + 24) = a5;
    v50 = sub_1D7EB38AC;
    v51 = v25;
    aBlock = MEMORY[0x1E69E9820];
    v47 = 1107296256;
    v48 = sub_1D7E64940;
    v49 = &block_descriptor_58_0;
    v26 = _Block_copy(&aBlock);

    [v24 ts:v26 installCACommitCompletionBlock:?];
    _Block_release(v26);
  }
}

uint64_t sub_1D7EB37BC()
{

  OUTLINED_FUNCTION_0_32();

  return swift_deallocObject();
}

uint64_t Diff.updatedSectionDescriptorIndices.getter()
{
  v0 = OUTLINED_FUNCTION_30_16();
  type metadata accessor for Diff(v0);
  sub_1D818E8B4();
  OUTLINED_FUNCTION_8();
  v1 = OUTLINED_FUNCTION_1_99();

  return v2(v1);
}

double Diff.deferredUpdatedIndexPaths.getter()
{
  type metadata accessor for Diff(0);

  sub_1D8190DB4();
  return result;
}

double sub_1D7EB395C(_BYTE *a1, uint64_t a2, double a3, uint64_t a4, uint64_t a5)
{
  if (*a1)
  {
    return *(a5 + 16);
  }

  else
  {
    return *(a2 + 16) + a3;
  }
}

uint64_t sub_1D7EB39AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D7E25380(a1, v8);
  sub_1D7E0631C(0, &qword_1EDBB50A0, &protocol descriptor for BlueprintLayoutFrameAttributesType);
  sub_1D7E0631C(0, qword_1EDBB41F8, &protocol descriptor for BlueprintLayoutSupplementaryAttributesPinning);
  if (swift_dynamicCast())
  {
    sub_1D7E05450(v6, v9);
    v3 = v10;
    v4 = v11;
    __swift_project_boxed_opaque_existential_1(v9, v10);
    (*(v4 + 8))(v3, v4);
    return __swift_destroy_boxed_opaque_existential_1Tm(v9);
  }

  else
  {
    v7 = 0;
    memset(v6, 0, sizeof(v6));
    result = sub_1D7E7AD0C(v6, &qword_1EDBB41F0, qword_1EDBB41F8, &protocol descriptor for BlueprintLayoutSupplementaryAttributesPinning);
    *a2 = 1;
    *(a2 + 8) = 3;
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_1D7EB3AD0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  sub_1D7E25380(a1, v8);
  sub_1D7E0631C(0, &qword_1EDBB50A0, &protocol descriptor for BlueprintLayoutFrameAttributesType);
  sub_1D7E0631C(0, qword_1EDBB41F8, &protocol descriptor for BlueprintLayoutSupplementaryAttributesPinning);
  if (swift_dynamicCast())
  {
    sub_1D7E05450(v6, v9);
    v3 = v10;
    v4 = v11;
    __swift_project_boxed_opaque_existential_1(v9, v10);
    (*(v4 + 16))(v3, v4);
    return __swift_destroy_boxed_opaque_existential_1Tm(v9);
  }

  else
  {
    v7 = 0;
    memset(v6, 0, sizeof(v6));
    result = sub_1D7E7AD0C(v6, &qword_1EDBB41F0, qword_1EDBB41F8, &protocol descriptor for BlueprintLayoutSupplementaryAttributesPinning);
    *a2 = 2;
  }

  return result;
}

void sub_1D7EB3BFC()
{
  if (*(v0 + 65) == 1)
  {
    v1.origin.x = OUTLINED_FUNCTION_2_6();
    CGRectGetWidth(v1);
    v2.origin.x = OUTLINED_FUNCTION_2_6();
    CGRectGetHeight(v2);
  }

  OUTLINED_FUNCTION_2_6();
}

id sub_1D7EB3C70(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v6 = sub_1D8190EE4();

  v7 = sub_1D818E8E4();
  v8 = [swift_getObjCClassFromMetadata() *a4];

  sub_1D818E994();
  OUTLINED_FUNCTION_3_0();
  (*(v9 + 8))(a3);
  return v8;
}

uint64_t sub_1D7EB3D28(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1D7E79920(0, a3, a4);
  OUTLINED_FUNCTION_3_0();
  (*(v6 + 40))(a2, a1);
  return a2;
}

_BYTE *sub_1D7EB3D90@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, char *a8@<X8>, uint64_t a9)
{
  if (*result == 2)
  {
    goto LABEL_2;
  }

  v14 = *(a7 + 8);
  v15 = *(a9 + 8);
  if (a4 | a2)
  {
    v16 = a5;
    v17 = a6;
    v18 = v14;
    v19 = v15;
    type metadata accessor for BlueprintLayout(0, &v16);
    swift_getWitnessTable();
    result = sub_1D8191834();
    if (!__OFSUB__(result, 1))
    {
      if (result - 1 != a4)
      {
LABEL_2:
        v10 = 3;
LABEL_15:
        *a8 = v10;
        return result;
      }

      if (!__OFSUB__(a3, 1))
      {
        if (a3 - 1 == a2)
        {
          v10 = 1;
          goto LABEL_15;
        }

        goto LABEL_2;
      }

      goto LABEL_18;
    }

LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v16 = a5;
  v17 = a6;
  v18 = v14;
  v19 = v15;
  type metadata accessor for BlueprintLayout(0, &v16);
  swift_getWitnessTable();
  result = sub_1D8191834();
  if (__OFSUB__(result, 1))
  {
    __break(1u);
    goto LABEL_17;
  }

  if (result != 1)
  {
LABEL_8:
    v10 = 0;
    goto LABEL_15;
  }

  if (!__OFSUB__(a3, 1))
  {
    if (a3 == 1)
    {
      v10 = 2;
      goto LABEL_15;
    }

    goto LABEL_8;
  }

LABEL_19:
  __break(1u);
  return result;
}

void sub_1D7EB3EE0(char a1, double a2, double a3, double a4, double a5, double a6, double a7)
{
  v15 = type metadata accessor for BlueprintInfiniteScroll(0);
  v16 = *v7;
  if (v7[*(v15 + 32) + 8] & 1) == 0 && (a1)
  {
    v17 = a4;
    v18 = a5;
    v19 = a6;
    v20 = a7;
    if ((*v7 & 1) == 0)
    {
      goto LABEL_21;
    }

    CGRectGetHeight(*&v17);
    OUTLINED_FUNCTION_0_60();
    if (v22 >= 0.0)
    {
      if (v21)
      {
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }
    }

    else
    {
      v22 = 0.0;
    }

    if (v22 <= -9.22337204e18)
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    OUTLINED_FUNCTION_1_48();
    if (v23)
    {
      return;
    }

    __break(1u);
  }

  if (v16)
  {
    OUTLINED_FUNCTION_0_60();
    v25 = 0.0;
    if (a3 >= 0.0)
    {
      v25 = a3;
      if (v24)
      {
        __break(1u);
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }
    }

    if (v25 <= -9.22337204e18)
    {
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    OUTLINED_FUNCTION_1_48();
    if (v23)
    {
      return;
    }

    __break(1u);
  }

  OUTLINED_FUNCTION_0_60();
  v27 = 0.0;
  if (a2 >= 0.0)
  {
    v27 = a2;
    if (v26)
    {
      goto LABEL_29;
    }
  }

  if (v27 <= -9.22337204e18)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  OUTLINED_FUNCTION_1_48();
  if (v23)
  {
    return;
  }

  __break(1u);
LABEL_21:
  CGRectGetWidth(*&v17);
  OUTLINED_FUNCTION_0_60();
  if (v29 < 0.0)
  {
    v29 = 0.0;
    goto LABEL_24;
  }

  if (v28)
  {
    goto LABEL_31;
  }

LABEL_24:
  if (v29 <= -9.22337204e18)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_1_48();
  if (!v23)
  {
    goto LABEL_36;
  }
}

uint64_t OUTLINED_FUNCTION_37_1@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  v1 = a1 - 1;
  if (v1 < 0)
  {
    v1 = -1;
  }

  return (v1 + 1);
}

void OUTLINED_FUNCTION_37_4()
{

  sub_1D7EB8AF4();
}

uint64_t OUTLINED_FUNCTION_37_5(__n128 *a1, __n128 a2)
{
  a1[1] = a2;

  return sub_1D818F5E4();
}

id OUTLINED_FUNCTION_37_9()
{

  return [v0 (v1 + 2808)];
}

uint64_t OUTLINED_FUNCTION_37_11(uint64_t a1)
{

  return StateCommandValue.value(for:)(v1, a1, v2 - 88);
}

void OUTLINED_FUNCTION_37_14(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{

  sub_1D80CC4AC(0, a2, a3, a4, v4);
}

unint64_t OUTLINED_FUNCTION_37_17()
{
  v2 = *(v0 - 168);
  v3 = *(v0 - 160);

  return sub_1D7E1C3D8(v2, v3, (v0 - 112));
}

void sub_1D7EB4228(uint64_t a1)
{
  v3 = 0;
  v4 = *(v1 + *(type metadata accessor for BlueprintInfiniteScroll(0) + 24));
  v5 = *(v4 + 16);
  v6 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v7 = (v4 + 48 * v3);
  while (v5 != v3)
  {
    if (v3 >= *(v4 + 16))
    {
      __break(1u);
      return;
    }

    ++v3;
    v8 = v7 + 6;
    v9 = v7[8];
    v10 = v7[9];
    v11 = v9 > a1 || v10 < a1;
    v7 += 6;
    if (!v11)
    {
      v13 = *(v8 - 2);
      v12 = *(v8 - 1);
      v14 = *v8;
      v15 = v8[1];
      sub_1D8190DB4();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1D7EB4894();
      }

      v16 = *(v6 + 16);
      if (v16 >= *(v6 + 24) >> 1)
      {
        sub_1D7EB4894();
      }

      *(v6 + 16) = v16 + 1;
      v17 = (v6 + 48 * v16);
      v17[4] = v13;
      v17[5] = v12;
      v17[6] = v14;
      v17[7] = v15;
      v17[8] = v9;
      v17[9] = v10;
      goto LABEL_2;
    }
  }
}

uint64_t BlueprintLayoutCollection.add(supplementaryLayoutAttributes:for:)(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_1D7E1AF20(0, &qword_1EDBBC690, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v41 - v9;
  v41 = sub_1D818E994();
  OUTLINED_FUNCTION_9();
  v43 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_28_0();
  v44 = (v13 - v14);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v41 - v16;
  OUTLINED_FUNCTION_15_45(v48);
  v18 = v48[153];
  OUTLINED_FUNCTION_15_45(v47);
  sub_1D7E6755C(v48, v49);
  v19 = sub_1D7E7D31C(a1);
  v21 = v20;
  memcpy(v49, v47, 0x4E8uLL);
  sub_1D7E598FC(v49);
  v22 = &a1[OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_dedupIdentifier];
  *v22 = v19;
  *(v22 + 1) = v21;

  v23 = a1;
  MEMORY[0x1DA713500]();
  sub_1D7E2893C(*((v4[3] & 0xFFFFFFFFFFFFFF8) + 0x10));
  sub_1D8191404();
  v24 = *(v18 + 16);
  v45 = a2;
  v42 = a3;
  if (v24 && (v25 = sub_1D7E11428(a2, a3), (v26 & 1) != 0))
  {
    v27 = *(*(v18 + 56) + 8 * v25);
    sub_1D8190DB4();
    v28 = v41;
  }

  else
  {
    type metadata accessor for BlueprintLayoutCollectionLayoutAttributes(0);
    OUTLINED_FUNCTION_2_147(&qword_1EDBBC6C0);
    v28 = v41;
    v27 = sub_1D8190D94();
  }

  v29 = [v23 indexPath];
  sub_1D818E924();

  v30 = v23;
  swift_isUniquelyReferenced_nonNull_native();
  v47[0] = v27;
  sub_1D7E7D494();
  v31 = v43;
  v41 = *(v43 + 8);
  v41(v17, v28);
  swift_isUniquelyReferenced_nonNull_native();
  v47[0] = v4[153];
  v32 = v45;
  v33 = v42;
  sub_1D7EB49B0();
  v4[153] = v47[0];
  v34 = OBJC_IVAR____TtC5TeaUI41BlueprintLayoutCollectionLayoutAttributes_compositionalIndexPath;
  swift_beginAccess();
  sub_1D7E54838(&v30[v34], v10);
  if (__swift_getEnumTagSinglePayload(v10, 1, v28) == 1)
  {
    sub_1D7E73334(v10);
  }

  else
  {
    v35 = v48[154];
    (*(v31 + 32))(v44, v10, v28);
    if (*(v35 + 16) && (v36 = sub_1D7E11428(v32, v33), (v37 & 1) != 0))
    {
      OUTLINED_FUNCTION_10_57(v36);
    }

    else
    {
      type metadata accessor for BlueprintLayoutCollectionLayoutAttributes(0);
      OUTLINED_FUNCTION_2_147(&qword_1EDBBC6C0);
      v35 = sub_1D8190D94();
    }

    v38 = v30;
    swift_isUniquelyReferenced_nonNull_native();
    v46 = v35;
    v39 = v44;
    sub_1D7E7D494();
    swift_isUniquelyReferenced_nonNull_native();
    v46 = v4[154];
    sub_1D7EB49B0();
    v4[154] = v46;
    v41(v39, v28);
  }

  sub_1D7E7D6B8(v30);
  result = BlueprintLayoutCollectionLayoutAttributes.requiresPinning.getter();
  if (result)
  {
    return BlueprintLayoutCollectionPinAdjuster.track(layoutAttributes:)(v30);
  }

  return result;
}

void sub_1D7EB47D4()
{
  OUTLINED_FUNCTION_14_5();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_2_16(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_4_4();
    if (v2)
    {
      OUTLINED_FUNCTION_0_220();
      sub_1D7E98510(0, v6, v7, v8);
      v10 = OUTLINED_FUNCTION_22_0(v9);
      OUTLINED_FUNCTION_3_127(v10);
      if (v1)
      {
LABEL_8:
        v11 = OUTLINED_FUNCTION_3_13();
        sub_1D80E5DDC(v11, v12, v13);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_7_9();
    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_12_4();
  if (!v4)
  {
    OUTLINED_FUNCTION_1_10();
    goto LABEL_6;
  }

  __break(1u);
}

unint64_t sub_1D7EB48B4(char a1)
{
  result = 0x6E69727065756C62;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      v3 = 9;
      goto LABEL_7;
    case 4:
      result = 0x6C6C695777656976;
      break;
    case 5:
      v3 = 10;
LABEL_7:
      result = v3 | 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1D7EB49E0(uint64_t a1)
{
  if (!qword_1EDBB2DF8)
  {
    sub_1D7E7D610(255, &unk_1EDBB3470);
    v1 = sub_1D8192394();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDBB2DF8);
    }
  }
}

id UICollectionView.cell(at:)(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1D818E8E4();
  v4 = [v2 cellForItemAtIndexPath_];

  return v4;
}

void BlueprintImpressionManager.updateImpression(at:view:triggerSource:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_120();
  a19 = v21;
  a20 = v22;
  v23 = v20;
  v126 = v24;
  v111[4] = v25;
  v125 = v26;
  v27 = *v20;
  v28 = sub_1D818E994();
  v29 = OUTLINED_FUNCTION_1_65(v28, &a16);
  v113 = v30;
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_14_1(v31);
  v32 = v27[11];
  v33 = v27[10];
  OUTLINED_FUNCTION_63_2();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_78();
  v40 = type metadata accessor for BlueprintItem(v36, v37, v38, v39);
  v41 = sub_1D8191E84();
  OUTLINED_FUNCTION_9();
  v112 = v42;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v43);
  v45 = v111 - v44;
  v124 = v40;
  v121 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_48();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_48();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_21_12();
  v122 = v49;
  OUTLINED_FUNCTION_63_2();
  v50 = swift_getAssociatedTypeWitness();
  v51 = swift_getAssociatedConformanceWitness();
  v118 = v50;
  v129 = v50;
  v130 = AssociatedTypeWitness;
  v115 = AssociatedTypeWitness;
  v117 = v51;
  v131 = v51;
  v132 = AssociatedConformanceWitness;
  v119 = AssociatedConformanceWitness;
  v52 = OUTLINED_FUNCTION_22_10();
  v54 = type metadata accessor for Blueprint(v52, v53);
  OUTLINED_FUNCTION_9();
  v120 = v55;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_94();
  v123 = v57;
  if (*v126 >= 0 == *(v23 + v27[19]) || (sub_1D7E481B0() & 1) == 0)
  {
    goto LABEL_29;
  }

  OUTLINED_FUNCTION_39_5();
  v58 = v123;
  v59 = OUTLINED_FUNCTION_82_1();
  BlueprintProviderType.blueprint.getter(v59, v60);
  Blueprint.item(indexPath:)();
  v61 = v54;
  v62 = v124;
  OUTLINED_FUNCTION_43_0(v45, 1, v124);
  if (v86)
  {
    (*(v120 + 8))(v58, v61);
    v63 = OUTLINED_FUNCTION_11_23();
    v65 = v41;
LABEL_28:
    v64(v63, v65);
    goto LABEL_29;
  }

  v126 = v61;
  v66 = v121;
  OUTLINED_FUNCTION_30_8();
  v67();
  OUTLINED_FUNCTION_49_3((v23 + 5));
  v129 = v33;
  v130 = v118;
  v68 = v115;
  v131 = v115;
  v132 = v32;
  v133 = v117;
  v134 = v119;
  v69 = OUTLINED_FUNCTION_22_10();
  v71 = type metadata accessor for BlueprintImpressionManager.Context(v69, v70);
  OUTLINED_FUNCTION_0_87();
  v74 = sub_1D7E2491C(v72, v73, MEMORY[0x1E6969C38]);
  v75 = v116;
  v112 = v74;
  sub_1D8190E24();
  v76 = v127;
  if (v127)
  {
    v111[1] = v71;
    swift_endAccess();
    OUTLINED_FUNCTION_3_52();
    v78 = *(v77 + 136);
    OUTLINED_FUNCTION_8_4(v76 + v78, &v127);
    OUTLINED_FUNCTION_67_2();
    v79 = OUTLINED_FUNCTION_28_8();
    v80(v79);
    v81 = BlueprintItem.identifier.getter(v62);
    v83 = v82;
    (*(v66 + 8))(v78, v62);
    v84 = v122;
    v86 = v81 == BlueprintItem.identifier.getter(v62) && v83 == v85;
    if (v86)
    {
    }

    else
    {
      v87 = sub_1D8192634();

      if ((v87 & 1) == 0)
      {
        OUTLINED_FUNCTION_3_52();
LABEL_16:
        swift_unknownObjectWeakAssign();
        v89 = v116;
        OUTLINED_FUNCTION_38_6();
        v90(v114, v125, v89);
        v135 = v76;
        OUTLINED_FUNCTION_25_7((v23 + 5));
        OUTLINED_FUNCTION_107();
        sub_1D8190E14();

        sub_1D8190E34();
        swift_endAccess();

        v88 = v126;
        v75 = v89;
        v68 = v115;
        goto LABEL_17;
      }
    }

    sub_1D7EA261C(v123, v84);
    OUTLINED_FUNCTION_3_52();
    OUTLINED_FUNCTION_70_3();
    goto LABEL_16;
  }

  swift_endAccess();
  v88 = v126;
LABEL_17:
  OUTLINED_FUNCTION_49_3((v23 + 7));
  v129 = v33;
  v130 = v118;
  v131 = v68;
  v132 = v32;
  v133 = v117;
  v134 = v119;
  v91 = OUTLINED_FUNCTION_22_10();
  type metadata accessor for BlueprintImpressionManager.StagedContext(v91, v92);
  sub_1D8190E24();
  v93 = v128;
  if (v128)
  {
    swift_endAccess();
    OUTLINED_FUNCTION_41_4();
    v95 = *(v94 + 136);
    OUTLINED_FUNCTION_8_4(v93 + v95, &v129);
    v96 = v121;
    v97 = OUTLINED_FUNCTION_28_8();
    v98 = v124;
    v99(v97);
    v100 = BlueprintItem.identifier.getter(v98);
    v102 = v101;
    v121 = *(v96 + 8);
    (v121)(v95, v98);
    v103 = v122;
    if (v100 == BlueprintItem.identifier.getter(v98) && v102 == v104)
    {
    }

    else
    {
      OUTLINED_FUNCTION_110();
      v106 = sub_1D8192634();

      if ((v106 & 1) == 0)
      {
        OUTLINED_FUNCTION_41_4();
        swift_unknownObjectWeakAssign();
        v107 = v123;
LABEL_27:
        OUTLINED_FUNCTION_46_7();
        v110(v114, v125, v75);
        v128 = v93;
        OUTLINED_FUNCTION_15_2((v23 + 7), &v135);
        sub_1D8190E14();

        OUTLINED_FUNCTION_78_1();
        sub_1D8190E34();
        swift_endAccess();

        (v121)(v103, v124);
        v64 = *(v120 + 8);
        v63 = v107;
        v65 = v126;
        goto LABEL_28;
      }
    }

    v107 = v123;
    v108 = OUTLINED_FUNCTION_82_1();
    sub_1D7EA261C(v108, v109);
    OUTLINED_FUNCTION_41_4();
    OUTLINED_FUNCTION_70_3();
    swift_unknownObjectWeakAssign();
    goto LABEL_27;
  }

  swift_endAccess();
  (*(v121 + 8))(v122, v124);
  (*(v120 + 8))(v123, v88);
LABEL_29:
  OUTLINED_FUNCTION_100();
}