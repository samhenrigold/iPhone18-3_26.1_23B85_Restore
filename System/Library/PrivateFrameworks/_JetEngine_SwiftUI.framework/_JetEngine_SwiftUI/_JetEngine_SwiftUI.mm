uint64_t sub_1B7955B78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy81_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1B7955C44(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA465D0, &qword_1B7A9D3C0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B7955CDC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B7955D14(uint64_t a1)
{
  sub_1B7955DD8(319, &qword_1EDC10A88, MEMORY[0x1E695C070]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1B7955DD8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1B7A97040();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1B7955E38(void *a1)
{
  v2 = v1;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47B48, &qword_1B7AA0A80);
  v98 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v100 = (&v70 - v4);
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47B40, &qword_1B7AA0A48);
  v5 = *(v99 - 1);
  MEMORY[0x1EEE9AC00](v99);
  v7 = &v70 - v6;
  v8 = sub_1B7A97040();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v78 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v70 - v12;
  v87 = v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v70 - v16;
  swift_unknownObjectWeakInit();
  *(v2 + 24) = MEMORY[0x1E69E7CC0];
  v18 = OBJC_IVAR____TtC18_JetEngine_SwiftUI15JetSceneSession__scenePhase;
  v20 = v9 + 13;
  v19 = v9[13];
  v79 = *MEMORY[0x1E697BE30];
  v80 = v19;
  v19(v17);
  v91 = v9[2];
  v92 = v9 + 2;
  v91(v13, v17, v8);
  sub_1B7A96EE0();
  v90 = v9;
  v22 = v9[1];
  v21 = v9 + 1;
  v93 = v17;
  v77 = v22;
  v22(v17, v8);
  (*(v5 + 32))(v2 + v18, v7, v99);
  swift_unknownObjectWeakAssign();
  v95 = a1;
  if (a1)
  {
    v75 = v21;
    v76 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47B50, &unk_1B7AA0A88);
    v23 = swift_allocObject();
    swift_weakInit();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA468D8, &qword_1B7A9D9D0);
    v24 = swift_allocObject();
    *(v24 + 16) = 0;
    v88 = v23;
    *(v23 + 24) = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47B58, &qword_1B7AA0A98);
    v25 = *(v98 + 72);
    v26 = (*(v98 + 80) + 32) & ~*(v98 + 80);
    v73 = swift_allocObject();
    v27 = (v73 + v26);
    v28 = v94;
    v29 = *(v94 + 48);
    v99 = *MEMORY[0x1E69DE338];
    *v27 = v99;
    v71 = *MEMORY[0x1E697BE38];
    v30 = v80;
    (v80)(&v27[v29]);
    v31 = *(v28 + 48);
    v32 = *MEMORY[0x1E69DE358];
    *&v27[v25] = *MEMORY[0x1E69DE358];
    v33 = *MEMORY[0x1E697BE40];
    v30(&v27[v25 + v31], v33, v8);
    v34 = &v27[2 * v25];
    v35 = *(v28 + 48);
    v36 = *MEMORY[0x1E69DE360];
    *v34 = *MEMORY[0x1E69DE360];
    v70 = v33;
    v30(&v34[v35], v33, v8);
    v86 = v25;
    v37 = &v27[3 * v25];
    v38 = *(v28 + 48);
    v39 = *MEMORY[0x1E69DE348];
    *v37 = *MEMORY[0x1E69DE348];
    v89 = v8;
    v74 = v20;
    v30(&v37[v38], v79, v8);
    v106 = MEMORY[0x1E69E7CC0];
    v40 = v99;
    v41 = v32;
    v42 = v36;
    v43 = v39;
    v44 = 4;
    sub_1B7957CC0(0, 4, 0);
    v45 = v106;
    v85 = sub_1B7A9A760();
    v84 = objc_opt_self();
    v83 = objc_opt_self();
    v46 = v90;
    v82 = v90 + 4;
    v81 = &v102;
    v72 = v27;
    v47 = v27;
    v48 = v28;
    v49 = v100;
    v50 = v88;
    do
    {
      v98 = v45;
      v99 = v44;
      v51 = v100;
      sub_1B7957CE0(v47, v100);
      v96 = *v51;
      v52 = *(v48 + 48);
      v97 = sub_1B7A9A750();
      sub_1B7A9A710();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v53 = [v84 defaultCenter];
      v54 = [v83 mainQueue];
      v55 = v93;
      v56 = v89;
      v91(v93, (v49 + v52), v89);
      v57 = (*(v46 + 80) + 24) & ~*(v46 + 80);
      v58 = swift_allocObject();
      *(v58 + 16) = v50;
      (v46[4])(v58 + v57, v55, v56);
      v104 = sub_1B795AF1C;
      v105 = v58;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      v102 = sub_1B795AE28;
      ObjectType = &block_descriptor_0;
      v59 = _Block_copy(aBlock);

      v60 = [v53 addObserverForName:v96 object:v95 queue:v54 usingBlock:v59];
      _Block_release(v59);

      ObjectType = swift_getObjectType();

      aBlock[0] = v60;
      sub_1B79577B8(v49);
      v45 = v98;
      v61 = v99;
      v106 = v98;
      v63 = *(v98 + 16);
      v62 = *(v98 + 24);
      if (v63 >= v62 >> 1)
      {
        sub_1B7957CC0((v62 > 1), v63 + 1, 1);
        v45 = v106;
      }

      *(v45 + 16) = v63 + 1;
      sub_1B7957D50(aBlock, v45 + 32 * v63 + 32);
      v47 += v86;
      v44 = v61 - 1;
      v48 = v94;
      v46 = v90;
    }

    while (v61 != 1);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v2 = v76;
    *(v76 + 24) = v45;

    v64 = [v95 activationState];
    if (v64 == 1)
    {
      v67 = v70;
      v65 = v89;
      v66 = v80;
    }

    else
    {
      v65 = v89;
      v66 = v80;
      v67 = v79;
      if (!v64)
      {
        v67 = v71;
      }
    }

    v68 = v78;
    v66(v78, v67, v65);
    swift_getKeyPath();
    swift_getKeyPath();
    v91(v93, v68, v65);

    sub_1B7A96F30();

    v77(v68, v65);
  }

  return v2;
}

uint64_t sub_1B7956778()
{
  v1 = sub_1B7A97040();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t View.jetSceneSession(_:)(void *a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  type metadata accessor for JetSceneSession(0);
  swift_allocObject();
  v4 = a1;
  sub_1B7955E38(a1);
  sub_1B7A98150();
}

{
  swift_getKeyPath();
  v4 = [a1 scene];
  type metadata accessor for JetSceneSession(0);
  swift_allocObject();
  sub_1B7955E38(v4);
  sub_1B7A98150();
}

void sub_1B7956918(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t type metadata accessor for ClickLocationViewModifier(uint64_t a1)
{
  result = qword_1EDC103E0;
  if (!qword_1EDC103E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B7956A1C(uint64_t a1)
{
  sub_1B7956B60(319, &qword_1EDC10148, MEMORY[0x1E69AB2B8], MEMORY[0x1E697DCC0]);
  if (v1 <= 0x3F)
  {
    sub_1B7956C28(319);
    if (v2 <= 0x3F)
    {
      sub_1B7956B60(319, &qword_1EDC10100, MEMORY[0x1E69AB1B8], MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1B7956B60(319, &qword_1EDC10128, MEMORY[0x1E69695A8], MEMORY[0x1E6981790]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1B7956B60(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B7956BC4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B7956C28(uint64_t a1)
{
  if (!qword_1EDC10150)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA45D18, &qword_1B7A9C320);
    v1 = sub_1B7A970E0();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC10150);
    }
  }
}

void sub_1B7956CAC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B7956D10(uint64_t a1)
{
  sub_1B7956CAC(319, &qword_1EDC0FCA0, MEMORY[0x1E69AAF88], MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1B7A99360();
    if (v2 <= 0x3F)
    {
      sub_1B7956E94(319, &qword_1EDC0FC90, &qword_1EBA45D88, &qword_1B7A9C4F8, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1B7956CAC(319, &qword_1EDC0FEF8, type metadata accessor for ClickLocationConfiguration, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          sub_1B7956E94(319, &qword_1EDC0FD78, &qword_1EBA465D8, &qword_1B7A9D430, MEMORY[0x1E697DCC0]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1B7956E94(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1B7956F18(uint64_t a1)
{
  sub_1B7956CAC(319, &qword_1EDC10100, MEMORY[0x1E69AB1B8], MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1B7956FC8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA465D0, &qword_1B7A9D3C0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t View.pageMetrics(_:pipeline:tracker:clickLocationConfiguration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v44 = a1;
  v50 = a3;
  v51 = a7;
  v49 = a4;
  v46 = a2;
  v52 = a8;
  v10 = type metadata accessor for PageMetricsViewModifier(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA465C8, &qword_1B7A9D3B8);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v42 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA465D0, &qword_1B7A9D3C0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v42 - v17;
  type metadata accessor for ClickLocationViewModifier(255);
  v43 = a6;
  v19 = sub_1B7A97590();
  v45 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v42 - v20;
  v22 = sub_1B7A97590();
  v48 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v42 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v42 - v26;
  v47 = a5;
  sub_1B7957820(a5, v15, &qword_1EBA465C8, &qword_1B7A9D3B8);
  v28 = type metadata accessor for ClickLocationConfiguration(0);
  if ((*(*(v28 - 8) + 48))(v15, 1, v28) == 1)
  {
    sub_1B7957888(v15, &qword_1EBA465C8, &qword_1B7A9D3B8);
    v29 = sub_1B7A995F0();
    (*(*(v29 - 8) + 56))(v18, 1, 1, v29);
  }

  else
  {
    sub_1B7957820(v15, v18, &qword_1EBA465D0, &qword_1B7A9D3C0);
    sub_1B7957C4C(v15, type metadata accessor for ClickLocationConfiguration);
  }

  v30 = v51;
  View.impressionableClickLocation(data:)(v18, v43, v51);
  sub_1B7957888(v18, &qword_1EBA465D0, &qword_1B7A9D3C0);
  sub_1B7957820(v44, v12, &qword_1EBA465C0, &qword_1B7A9D3B0);
  v31 = v10[5];
  v32 = sub_1B7A99360();
  (*(*(v32 - 8) + 16))(&v12[v31], v46, v32);
  sub_1B7957820(v47, &v12[v10[7]], &qword_1EBA465C8, &qword_1B7A9D3B8);
  v33 = &v12[v10[8]];
  *v33 = swift_getKeyPath();
  v33[8] = 0;
  v34 = &v12[v10[6]];
  v35 = v49;
  *v34 = v50;
  v34[1] = v35;
  v36 = sub_1B7957B74(&qword_1EDC0FF40, type metadata accessor for ClickLocationViewModifier, &unk_1B7A9EEA8);
  v55 = v30;
  v56 = v36;
  swift_unknownObjectRetain();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x1B8CA96D0](v12, v19, v10, WitnessTable);
  sub_1B7957C4C(v12, type metadata accessor for PageMetricsViewModifier);
  (*(v45 + 8))(v21, v19);
  v38 = sub_1B7957B74(&qword_1EDC0FFE0, type metadata accessor for PageMetricsViewModifier, &unk_1B7A9D438);
  v53 = WitnessTable;
  v54 = v38;
  v39 = swift_getWitnessTable();
  sub_1B7957EE0(v24, v22, v39);
  v40 = *(v48 + 8);
  v40(v24, v22);
  sub_1B7957EE0(v27, v22, v39);
  return (v40)(v27, v22);
}

void *sub_1B79575E0@<X0>(void *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  sub_1B7995018(a2, a3, a4);
  result = sub_1B7A97890();
  *a1 = v6;
  return result;
}

char *sub_1B7957634(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47590, &qword_1B7A9FC58);
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

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1B79577B8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47B48, &qword_1B7AA0A80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B7957820(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1B7957888(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t View.impressionableClickLocation(data:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA465D0, &qword_1B7A9D3C0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v15 - v7;
  v9 = type metadata accessor for ClickLocationViewModifier(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B7957820(a1, v8, &qword_1EBA465D0, &qword_1B7A9D3C0);
  *v11 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45C98, &unk_1B7AA0460);
  swift_storeEnumTagMultiPayload();
  v12 = v9[5];
  *(v11 + v12) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45CA0, &unk_1B7A9C240);
  swift_storeEnumTagMultiPayload();
  sub_1B7957820(v8, v11 + v9[6], &qword_1EBA465D0, &qword_1B7A9D3C0);
  v13 = v11 + v9[7];
  sub_1B7A96C10();
  sub_1B7957888(v8, &qword_1EBA465D0, &qword_1B7A9D3C0);
  *&v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45CF8, &unk_1B7A9C2E0) + 28)] = 0;
  MEMORY[0x1B8CA96D0](v11, a2, v9, a3);
  return sub_1B7957B18(v11);
}

uint64_t sub_1B7957B18(uint64_t a1)
{
  v2 = type metadata accessor for ClickLocationViewModifier(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B7957B74(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B7957BBC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B7957C04(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B7957C4C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

char *sub_1B7957CC0(char *a1, int64_t a2, char a3)
{
  result = sub_1B7957634(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1B7957CE0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47B48, &qword_1B7AA0A80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_1B7957D54(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void sub_1B7957D84(uint64_t a1)
{
  sub_1B7957E58(319, &qword_1EDC10160, 255, MEMORY[0x1E697BDB0], MEMORY[0x1E69E6720]);
  if (v3 <= 0x3F)
  {
    type metadata accessor for ContentUnavailableButton.Action(319, *(a1 + 16), *(a1 + 24), v2);
    if (v4 <= 0x3F)
    {
      sub_1B7958DD8();
      if (v5 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B7957E58(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = a4(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1B7957F20(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1B7957F8C()
{
  result = qword_1EDC10A60;
  if (!qword_1EDC10A60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA49260, &qword_1B7AA64E8);
    sub_1B7958010();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC10A60);
  }

  return result;
}

unint64_t sub_1B7958010()
{
  result = qword_1EDC10A68;
  if (!qword_1EDC10A68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA49268, &qword_1B7AA64F0);
    sub_1B795809C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC10A68);
  }

  return result;
}

unint64_t sub_1B795809C()
{
  result = qword_1EDC10A80;
  if (!qword_1EDC10A80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA49270, &qword_1B7AA64F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC10A80);
  }

  return result;
}

void sub_1B7958118(_OWORD *a1)
{
  v1 = a1[2];
  v21 = a1[1];
  v22 = v1;
  v23 = a1[3];
  v2 = type metadata accessor for ContentUnavailableView.Implementation(319, &v21);
  if (v3 <= 0x3F)
  {
    *&v21 = v2;
    sub_1B79583D4(319, &qword_1EDC100E0, &qword_1EBA46448, &unk_1B7A9D0E0, MEMORY[0x1E69E6720]);
    if (v5 <= 0x3F)
    {
      *(&v21 + 1) = v4;
      sub_1B7958EAC();
      if (v8 <= 0x3F)
      {
        *&v22 = v6;
        sub_1B7957E58(319, qword_1EDC10170, v7, type metadata accessor for ContentUnavailableTextLogBuilder, MEMORY[0x1E69E6720]);
        if (v10 <= 0x3F)
        {
          *(&v22 + 1) = v9;
          sub_1B79583D4(319, &qword_1EDC10158, &qword_1EBA48FD8, &qword_1B7AA4D60, MEMORY[0x1E697DCC0]);
          if (v12 <= 0x3F)
          {
            *&v23 = v11;
            sub_1B79583D4(319, &qword_1EBA46B30, &qword_1EBA46B38, &qword_1B7AA4460, MEMORY[0x1E697DCC0]);
            if (v14 <= 0x3F)
            {
              *(&v23 + 1) = v13;
              sub_1B7957E58(319, &qword_1EDC108B8, 255, MEMORY[0x1E697BE48], MEMORY[0x1E697DCC0]);
              if (v16 <= 0x3F)
              {
                v24 = v15;
                sub_1B79583D4(319, &qword_1EDC10A78, &qword_1EBA45D10, &unk_1B7AA0B40, MEMORY[0x1E697DCC0]);
                if (v18 <= 0x3F)
                {
                  v25 = v17;
                  sub_1B79583D4(319, &qword_1EDC10138, &qword_1EBA48FE0, qword_1B7AA4D68, MEMORY[0x1E697DCC0]);
                  if (v20 <= 0x3F)
                  {
                    v26 = v19;
                    swift_cvw_initStructMetadataWithLayoutString();
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

uint64_t sub_1B7958398(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_1B79583D4(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1B7958438(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B795848C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for ImpressionableLayoutStyle(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ImpressionableLayoutStyle(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1B7958684(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA49218, &qword_1B7AA5DE8);
  type metadata accessor for _CompatibilityLoadingViewContent(255, v1, v2, v3);
  sub_1B7A97B40();
  sub_1B7A97590();
  swift_getTupleTypeMetadata();
  sub_1B7A98AC0();
  swift_getWitnessTable();
  sub_1B7A987E0();
  sub_1B7A97590();
  sub_1B7A97590();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA48FD0, &qword_1B7AA5DF0);
  sub_1B7A97590();
  sub_1B7A97E00();
  sub_1B7A97590();
  sub_1B7A97590();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1B797EC34(&qword_1EDC10A50, &qword_1EBA48FD0, &qword_1B7AA5DF0, MEMORY[0x1E697F940]);
  swift_getWitnessTable();
  sub_1B7957F20(&qword_1EDC10A40, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_1B7A973E0();
  return swift_getWitnessTable();
}

uint64_t LoadingView.init<>()@<X0>(uint64_t a1@<X8>)
{
  sub_1B7A986C0();
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  *(a1 + 40) = swift_getKeyPath();
  *(a1 + 48) = 0;
  *(a1 + 56) = swift_getKeyPath();
  *(a1 + 64) = 0;
  result = swift_getKeyPath();
  *(a1 + 72) = result;
  *(a1 + 80) = 0;
  *a1 = sub_1B795AAEC;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  return result;
}

{
  sub_1B7A986C0();
  KeyPath = swift_getKeyPath();
  v3 = swift_getKeyPath();
  result = swift_getKeyPath();
  *a1 = nullsub_1;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = KeyPath;
  *(a1 + 48) = 0;
  *(a1 + 56) = v3;
  *(a1 + 64) = 0;
  *(a1 + 72) = result;
  *(a1 + 80) = 0;
  return result;
}

void *sub_1B7958A34@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  sub_1B7958B80(a2, a3, a4);
  result = sub_1B7A97890();
  *a1 = v6;
  return result;
}

void *sub_1B7958AD0@<X0>(void *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  sub_1B7958BE0(a2, a3, a4);
  result = sub_1B7A97890();
  *a1 = v6;
  return result;
}

uint64_t sub_1B7958B24@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B7A97780();
  *a1 = result;
  return result;
}

unint64_t sub_1B7958B80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDC10A98[0];
  if (!qword_1EDC10A98[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDC10A98);
  }

  return result;
}

unint64_t sub_1B7958BE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDC10B20;
  if (!qword_1EDC10B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC10B20);
  }

  return result;
}

uint64_t sub_1B7958C44(uint64_t *a1, uint64_t a2)
{
  sub_1B7A9A160();

  *a1 = a2;
  return result;
}

uint64_t sub_1B7958CF0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  sub_1B7958BE0(a1, a2, a3);

  return sub_1B7A978A0();
}

uint64_t sub_1B7958D50(uint64_t a1)
{
  result = sub_1B7958DD8();
  if (v2 <= 0x3F)
  {
    result = sub_1B7958E28();
    if (v3 <= 0x3F)
    {
      result = sub_1B7A96B90();
      if (v4 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_1B7958DD8()
{
  result = qword_1EDC10898;
  if (!qword_1EDC10898)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1EDC10898);
  }

  return result;
}

unint64_t sub_1B7958E28()
{
  result = qword_1EDC10108;
  if (!qword_1EDC10108)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDC10108);
  }

  return result;
}

void sub_1B7958EAC()
{
  if (!qword_1EDC100F8)
  {
    v0 = sub_1B7A9AB60();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC100F8);
    }
  }
}

uint64_t LoadingView.body.getter(uint64_t a1)
{
  v3 = v1[3];
  v38 = v1[2];
  v39 = v3;
  v40 = v1[4];
  v41 = *(v1 + 80);
  v4 = v1[1];
  v36 = *v1;
  v37 = v4;
  sub_1B7A46FC4(&v32);
  if (v32 == 3)
  {
    v5 = 0;
  }

  else
  {
    v5 = v32;
  }

  v6 = swift_allocObject();
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  *(v6 + 16) = v7;
  *(v6 + 24) = v8;
  v9 = v39;
  *(v6 + 64) = v38;
  *(v6 + 80) = v9;
  *(v6 + 96) = v40;
  *(v6 + 112) = v41;
  v10 = v37;
  *(v6 + 32) = v36;
  *(v6 + 48) = v10;
  *(v6 + 113) = v5;
  (*(*(a1 - 8) + 16))(&v32, &v36, a1);
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA49218, &qword_1B7AA5DE8);
  v12 = MEMORY[0x1E6981840];
  v32 = v11;
  v33 = MEMORY[0x1E6981840];
  type metadata accessor for _CompatibilityLoadingViewContent(255, v7, v8, v13);
  sub_1B7A97B40();
  v34 = sub_1B7A97590();
  v35 = v12;
  swift_getTupleTypeMetadata();
  sub_1B7A98AC0();
  swift_getWitnessTable();
  sub_1B7A987E0();
  sub_1B7A97590();
  sub_1B7A97590();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA48FD0, &qword_1B7AA5DF0);
  sub_1B7A97590();
  sub_1B7A97E00();
  sub_1B7A97590();
  v14 = sub_1B7A97590();
  WitnessTable = swift_getWitnessTable();
  v31 = MEMORY[0x1E697EBF8];
  v28 = swift_getWitnessTable();
  v29 = MEMORY[0x1E6980A30];
  v26 = swift_getWitnessTable();
  v27 = sub_1B797EC34(&qword_1EDC10A50, &qword_1EBA48FD0, &qword_1B7AA5DF0, MEMORY[0x1E697F940]);
  v24 = swift_getWitnessTable();
  v25 = sub_1B7957F20(&qword_1EDC10A40, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
  v22 = swift_getWitnessTable();
  v23 = v25;
  v15 = swift_getWitnessTable();
  v32 = v14;
  v33 = v15;
  swift_getOpaqueTypeMetadata2();
  v32 = v14;
  v33 = v15;
  swift_getOpaqueTypeConformance2();
  v20 = sub_1B7A973D0();
  v21 = v16;
  v17 = sub_1B7A973E0();
  v18 = swift_getWitnessTable();
  sub_1B7957EE0(&v20, v17, v18);

  v20 = v32;
  v21 = v33;
  sub_1B7957EE0(&v20, v17, v18);
}

uint64_t sub_1B7959374()
{
  sub_1B79599CC(*(v0 + 32), *(v0 + 40));

  sub_1B795AE10(*(v0 + 72), *(v0 + 80));
  j__swift_release(*(v0 + 88));
  sub_1B795AE1C(*(v0 + 104), *(v0 + 112));

  return swift_deallocObject();
}

double sub_1B79593DC()
{
  v1 = *(v0 + 48);
  v30[2] = *(v0 + 32);
  v30[3] = v1;
  v30[4] = *(v0 + 64);
  v31 = *(v0 + 80);
  v2 = *(v0 + 16);
  v30[0] = *v0;
  v30[1] = v2;
  v3 = sub_1B7A47380();
  if (!v3)
  {
    return 0.0;
  }

  v4 = v3;
  v5 = [v3 scene];

  Height = 0.0;
  if (v5)
  {
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (v7)
    {
      v8 = [v7 windows];

      sub_1B79596F8(0, &qword_1EDC10A20, 0x1E69DD2E8);
      v9 = sub_1B7A9A640();

      if (v9 >> 62)
      {
        goto LABEL_30;
      }

      for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1B7A9AD90())
      {
        sub_1B7A9A760();
        v29 = v9 + 32;
        while (!__OFSUB__(i--, 1))
        {
          if ((v9 & 0xC000000000000001) != 0)
          {
            v12 = MEMORY[0x1B8CABED0](i, v9);
          }

          else
          {
            if ((i & 0x8000000000000000) != 0)
            {
              goto LABEL_28;
            }

            if (i >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_29;
            }

            v12 = *(v29 + 8 * i);
          }

          v13 = v12;
          sub_1B7A9A750();
          sub_1B7A9A710();
          if ((swift_task_isCurrentExecutor() & 1) == 0)
          {
            swift_task_reportUnexpectedExecutor();
          }

          v14 = [v13 isKeyWindow];

          if (v14)
          {
            MEMORY[0x1EEE9AC00](v15);
            v32 = i;
            sub_1B7959740(&v32, v30);
            v16 = *&v30[0];
            goto LABEL_21;
          }

          if (!i)
          {
            goto LABEL_17;
          }
        }

        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        ;
      }

LABEL_17:
      v16 = 0;
LABEL_21:

      if (v16)
      {
        v17 = [v16 windowScene];
        if (v17)
        {
          v18 = v17;
          v19 = [v17 statusBarManager];

          if (v19)
          {
            [v19 statusBarFrame];
            v21 = v20;
            v23 = v22;
            v25 = v24;
            v27 = v26;

            v33.origin.x = v21;
            v33.origin.y = v23;
            v33.size.width = v25;
            v33.size.height = v27;
            Height = CGRectGetHeight(v33);
          }
        }
      }
    }

    else
    {
    }
  }

  return Height;
}

uint64_t sub_1B79596F8(uint64_t a1, unint64_t *a2, void *a3)
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

unint64_t sub_1B7959760@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X1>, unint64_t *a3@<X8>)
{
  result = *a1;
  v5 = *a2;
  if ((v5 & 0xC000000000000001) != 0)
  {
    result = MEMORY[0x1B8CABED0](result);
    goto LABEL_5;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    result = *(v5 + 8 * result + 32);
LABEL_5:
    *a3 = result;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B79597CC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    *&v28 = a1;
    *(&v28 + 1) = a2;
    v7 = type metadata accessor for _CompatibilityLoadingViewContent(0, a4, a5, a4);
    WitnessTable = swift_getWitnessTable();
    v11 = sub_1B79599D4(WitnessTable, v9, v10);
    sub_1B7959A28(&v28, v7, &type metadata for _PlatformLoadingViewContent, WitnessTable, v11);
  }

  else
  {
    *&v29 = a1;
    *(&v29 + 1) = a2;
    v13 = type metadata accessor for _CompatibilityLoadingViewContent(0, a4, a5, a4);
    v14 = swift_getWitnessTable();
    sub_1B7957EE0(&v29, v13, v14);
    v29 = v28;
    v15 = sub_1B7957EE0(&v29, v13, v14);
    v27[0] = v27[2];
    v27[1] = v27[3];
    v18 = sub_1B79599D4(v15, v16, v17);
    sub_1B79B5878(v27, v13, &type metadata for _PlatformLoadingViewContent, v14, v18);
  }

  v26 = v29;
  type metadata accessor for _CompatibilityLoadingViewContent(255, a4, a5, v12);
  v19 = sub_1B7A97B40();
  v20 = swift_getWitnessTable();
  v23 = sub_1B79599D4(v20, v21, v22);
  v27[4] = v20;
  v27[5] = v23;
  v24 = swift_getWitnessTable();
  sub_1B7957EE0(&v29, v19, v24);
  return sub_1B79599CC(v26, *(&v26 + 1));
}

unint64_t sub_1B79599D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDC10B30;
  if (!qword_1EDC10B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC10B30);
  }

  return result;
}

uint64_t sub_1B7959A28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1B7A97B10();
  v8 = MEMORY[0x1EEE9AC00](v7);
  (*(*(a3 - 8) + 16))(&v11 - v9, a1, a3, v8);
  swift_storeEnumTagMultiPayload();
  return sub_1B7A97B30();
}

unint64_t sub_1B7959B20()
{
  result = qword_1EDC10A58;
  if (!qword_1EDC10A58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA49218, &qword_1B7AA5DE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC10A58);
  }

  return result;
}

uint64_t sub_1B7959BAC(uint64_t *TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](TupleTypeMetadata);
    v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v22 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v23 = (v6 + 32);
    v24 = a2;
    do
    {
      if (a2 == 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = *v23;
      }

      v27 = *v22++;
      v26 = v27;
      v28 = *v5++;
      (*(*(v26 - 8) + 16))(&v21[v25], v28);
      v23 += 4;
      --v24;
    }

    while (v24);
  }

  return sub_1B7A98AD0();
}

unint64_t sub_1B7959D7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDC10A90;
  if (!qword_1EDC10A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC10A90);
  }

  return result;
}

uint64_t LoadingView.pageRenderMetrics(_:)(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  *(swift_allocObject() + 16) = a1;

  swift_getWitnessTable();
  sub_1B7A98320();
}

uint64_t sub_1B7959EC0(uint64_t *a1)
{
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    sub_1B7A97500();
  }

  else
  {
    sub_1B7A97360();
  }

  return sub_1B7A97590();
}

uint64_t sub_1B7959F28(uint64_t *a1)
{
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    sub_1B7A97500();
    sub_1B7A97590();
    sub_1B7974C70();
  }

  else
  {
    sub_1B7A97360();
    sub_1B7A97590();
    sub_1B7975E58(&qword_1EDC10A70, MEMORY[0x1E697C028], MEMORY[0x1E697C010]);
  }

  return swift_getWitnessTable();
}

uint64_t sub_1B795A01C()
{

  return swift_deallocObject();
}

uint64_t sub_1B795A058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_1B7A9AD10();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x1EEE6DFA0](sub_1B795AC78, 0, 0);
}

void *sub_1B795A158@<X0>(void *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  sub_1B795A1B4(a2, a3, a4);
  result = sub_1B7A97890();
  *a1 = v6;
  return result;
}

unint64_t sub_1B795A1B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDC10980;
  if (!qword_1EDC10980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC10980);
  }

  return result;
}

uint64_t View.automationSemantics(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_1B7A99110();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B7A997A0();
  View._automationIdentifier(_:)();
  return (*(v4 + 8))(v6, v3);
}

uint64_t View._automationIdentifier(_:)()
{
  sub_1B7A990D0();
  sub_1B7A98350();
}

uint64_t sub_1B795A374(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  sub_1B795A1B4(a1, a2, a3);

  return sub_1B7A978A0();
}

id sub_1B795A3D4()
{
  type metadata accessor for ThisFramework();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_1EDC10A30 = result;
  return result;
}

uint64_t sub_1B795A450(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1B795A460@<X0>(uint64_t a1@<X8>)
{
  if (*v1 == 1)
  {
    v3 = sub_1B7A975C0();
    v4 = 256;
    result = sub_1B7A97ED0();
  }

  else
  {
    v3 = 0;
    result = 0;
    v4 = 2;
  }

  *a1 = v4;
  *(a1 + 8) = v3;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1B795A4BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B795A520(a1, a2, a3);

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

unint64_t sub_1B795A520(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDC10B28;
  if (!qword_1EDC10B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC10B28);
  }

  return result;
}

uint64_t sub_1B795A578(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B795A520(a1, a2, a3);

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

id sub_1B795A5E8()
{
  if (qword_1EDC10B38 != -1)
  {
    swift_once();
  }

  v0 = byte_1EDC108D8;
  v1 = [objc_opt_self() emptyConfiguration];
  if (v0 == 1)
  {
    v2 = type metadata accessor for _PlatformLoadingViewContent._JEContentUnavailableView();
  }

  else
  {
    v2 = MEMORY[0x1E69DC8D0];
  }

  v3 = [objc_allocWithZone(v2) initWithConfiguration_];

  [v3 setScrollEnabled_];
  LODWORD(v4) = 1132068864;
  [v3 setContentCompressionResistancePriority:0 forAxis:v4];
  return v3;
}

void sub_1B795A6CC()
{
  v0 = objc_opt_self();
  v1 = [v0 mainBundle];
  v2 = [v1 bundleIdentifier];

  if (!v2)
  {
    goto LABEL_8;
  }

  v3 = sub_1B7A9A4B0();
  v5 = v4;

  if (v3 == 0xD000000000000017 && 0x80000001B7AC7940 == v5)
  {
    goto LABEL_14;
  }

  v7 = sub_1B7A9AE80();

  if ((v7 & 1) == 0)
  {
LABEL_8:
    v9 = [v0 mainBundle];
    v8 = [v9 bundleIdentifier];

    if (!v8)
    {
      goto LABEL_16;
    }

    v10 = sub_1B7A9A4B0();
    v12 = v11;

    if (v10 != 0xD00000000000001FLL || 0x80000001B7AC7920 != v12)
    {
      LOBYTE(v8) = sub_1B7A9AE80();
LABEL_15:

      goto LABEL_16;
    }

LABEL_14:
    LOBYTE(v8) = 1;
    goto LABEL_15;
  }

  LOBYTE(v8) = 1;
LABEL_16:
  byte_1EDC108D8 = v8 & 1;
}

uint64_t sub_1B795A854(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v23 = a1;
  v4 = sub_1B7A97880();
  v21 = *(v4 - 8);
  v22 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B7A96E10();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_1B7A96EA0();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B7A96E90();
  sub_1B7A96E00();
  v12 = sub_1B7A96E20();
  v13 = a3(v12);
  v15 = v14;
  v17 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA49220, &qword_1B7AA6350);
  sub_1B7A97DA0();
  sub_1B7A98050();
  sub_1B795A450(v13, v15, v17 & 1);

  (*(v21 + 8))(v6, v22);
  sub_1B7A96E60();
  v24[3] = v8;
  v24[4] = MEMORY[0x1E69DC1D0];
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v24);
  (*(v9 + 16))(boxed_opaque_existential_1Tm, v11, v8);
  sub_1B7A9AAC0();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1B795AAEC()
{
  sub_1B7A97960();
  if (qword_1EDC10A28 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDC10A30;
  return sub_1B7A98070();
}

uint64_t *__swift_allocate_boxed_opaque_existential_1Tm(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_1B795AC28(uint64_t a1, char a2, uint64_t a3, uint64_t a4, id a5)
{
  if (a2)
  {
    return 0;
  }

  [a5 intrinsicContentSize];
  return a1;
}

uint64_t sub_1B795AC78()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_1B7A9AD20();
  v5 = sub_1B7957F20(&qword_1EDC10A10, MEMORY[0x1E69E8820], MEMORY[0x1E69E8828]);
  sub_1B7A9AED0();
  sub_1B7957F20(&qword_1EDC10A18, MEMORY[0x1E69E87E8], MEMORY[0x1E69E8818]);
  sub_1B7A9AD30();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_1B7A4A884;
  v8 = v0[11];

  return MEMORY[0x1EEE6DE58](v8, v0 + 2, v4, v5);
}

uint64_t sub_1B795AE10(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

void sub_1B795AE1C(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_1B795AE28(uint64_t a1, uint64_t a2)
{
  v3 = sub_1B7A96A20();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  sub_1B7A96A10();

  v7(v6);

  return (*(v4 + 8))(v6, v3);
}

void sub_1B795AF1C(uint64_t a1)
{
  v3 = *(sub_1B7A97040() - 8);
  v4 = *(v1 + 16);
  v5 = (v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80)));

  sub_1B795AF90(a1, v4, v5);
}

void sub_1B795AF90(uint64_t a1, uint64_t a2, char *a3)
{
  v5 = sub_1B7A97040();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v17 - v10;
  v12 = *(a2 + 24);
  os_unfair_lock_lock(v12 + 4);
  Strong = swift_weakLoadStrong();
  os_unfair_lock_unlock(v12 + 4);
  if (Strong)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1B7A96F20();

    sub_1B79E92F0(&qword_1EDC108C0, MEMORY[0x1E697BE48], MEMORY[0x1E697BE50]);
    v14 = sub_1B7A9A470();
    v15 = *(v6 + 8);
    v15(v11, v5);
    if (v14)
    {
    }

    else
    {
      v16 = *(v6 + 16);
      v16(v11, a3, v5);
      swift_getKeyPath();
      swift_getKeyPath();
      v16(v8, v11, v5);
      sub_1B7A96F30();
      v15(v11, v5);
    }
  }
}

uint64_t sub_1B795B318(uint64_t *a1)
{
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    sub_1B7A97D10();

    return sub_1B7A97590();
  }

  else
  {
    sub_1B7A976C0();
    swift_getWitnessTable();
    sub_1B7A97C20();
    sub_1B7A97590();
    sub_1B7A9AB60();
    swift_getWitnessTable();
    sub_1B7A976C0();
    swift_getWitnessTable();
    sub_1B7A97C20();
    return sub_1B7A97590();
  }
}

uint64_t sub_1B795B47C(uint64_t *a1)
{
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    sub_1B7A97D10();
    sub_1B7A97590();
  }

  else
  {
    sub_1B7A976C0();
    swift_getWitnessTable();
    sub_1B7A97C20();
    sub_1B7A97590();
    sub_1B7A9AB60();
    swift_getWitnessTable();
    sub_1B7A976C0();
    swift_getWitnessTable();
    sub_1B7A97C20();
    sub_1B7A97590();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1B795B67C(uint64_t a1, int a2)
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

uint64_t sub_1B795B69C(uint64_t result, int a2, int a3)
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

double sub_1B795B6C4@<D0>(uint64_t a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  sub_1B797E898(a2, a3, a4);
  sub_1B7A97890();
  result = *&v6;
  *a1 = v6;
  *(a1 + 16) = v7;
  return result;
}

void *sub_1B795B764@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  sub_1B795A1B4(a1, a2, a3);
  result = sub_1B7A97890();
  *a4 = v6;
  return result;
}

uint64_t sub_1B795B820(uint64_t *a1)
{
  type metadata accessor for ImpressionableViewModifier(255);
  sub_1B7A97590();
  type metadata accessor for ClickLocationViewModifier(255);
  sub_1B7A97590();
  sub_1B797C7FC(qword_1EDC0F568, type metadata accessor for ImpressionableViewModifier, &unk_1B7A9C43C);
  swift_getWitnessTable();
  sub_1B797C7FC(&qword_1EDC0FF40, type metadata accessor for ClickLocationViewModifier, &unk_1B7A9EEA8);
  return swift_getWitnessTable();
}

uint64_t sub_1B795B930(uint64_t *a1)
{
  type metadata accessor for ImpressionableViewModifier(255);
  sub_1B7A97590();
  sub_1B797C7FC(qword_1EDC0F568, type metadata accessor for ImpressionableViewModifier, &unk_1B7A9C43C);
  return swift_getWitnessTable();
}

uint64_t sub_1B795B9CC(uint64_t *a1)
{
  type metadata accessor for ImpressionableViewModifier(255);
  sub_1B7A97590();
  type metadata accessor for ClickLocationViewModifier(255);
  sub_1B7A97590();
  sub_1B797C7FC(qword_1EDC0F568, type metadata accessor for ImpressionableViewModifier, &unk_1B7A9C43C);
  swift_getWitnessTable();
  sub_1B797C7FC(&qword_1EDC0FF40, type metadata accessor for ClickLocationViewModifier, &unk_1B7A9EEA8);
  return swift_getWitnessTable();
}

uint64_t sub_1B795BAE0(_OWORD *a1)
{
  sub_1B7A98030();
  type metadata accessor for ListContainerGeometryModifier(255);
  sub_1B7A97590();
  swift_getWitnessTable();
  sub_1B797C7FC(&qword_1EBA45CC8, type metadata accessor for ListContainerGeometryModifier, &unk_1B7A9C3D0);
  return swift_getWitnessTable();
}

uint64_t sub_1B795BBB0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45CD0, &unk_1B7A9C2A0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B795BC28(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45CD0, &unk_1B7A9C2A0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B795BCA4(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_1B7A99A20();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(&a1[v11], a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45CF0, &qword_1B7A9D560);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[9];
    goto LABEL_11;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45CF8, &unk_1B7A9C2E0);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[12];
    goto LABEL_11;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45D00, &unk_1B7A9EE70);
  v16 = *(*(v15 - 8) + 48);
  v17 = &a1[a3[14]];

  return v16(v17, a2, v15);
}

char *sub_1B795BE7C(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = sub_1B7A99A20();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(&v5[v11], a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45CF0, &qword_1B7A9D560);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[9];
    goto LABEL_9;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45CF8, &unk_1B7A9C2E0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[12];
    goto LABEL_9;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45D00, &unk_1B7A9EE70);
  v16 = *(*(v15 - 8) + 56);
  v17 = &v5[a4[14]];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_1B795C054()
{

  return swift_deallocObject();
}

uint64_t sub_1B795C09C()
{
  v1 = *(type metadata accessor for ListContainerGeometryModifier(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45EC8, &qword_1B7A9C630);
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45ED0, &qword_1B7A9C638);

  return swift_deallocObject();
}

uint64_t sub_1B795C1A4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3[0] = *a1;
  v3[1] = v1;
  v4 = *(a1 + 32);
  return sub_1B797B5EC(v3);
}

uint64_t sub_1B795C1E4(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1B795C200()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA45EC0, &qword_1B7A9C628);
  type metadata accessor for ListContainerGeometry(255);
  sub_1B797E68C();
  sub_1B797C7FC(&qword_1EBA45DD8, type metadata accessor for ListContainerGeometry, &unk_1B7A9C420);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1B795C2B4()
{

  j__swift_release(*(v0 + 56));

  return swift_deallocObject();
}

uint64_t sub_1B795C318()
{

  return swift_deallocObject();
}

uint64_t sub_1B795C350()
{

  return swift_deallocObject();
}

uint64_t sub_1B795C3EC()
{

  return swift_deallocObject();
}

uint64_t sub_1B795C424()
{
  v1 = v0[2];
  v2 = *(type metadata accessor for ShelfPage(0, v1, v0[3], v0[4]) - 8);
  (*(*(v1 - 8) + 8))(v0 + ((*(v2 + 80) + 40) & ~*(v2 + 80)), v1);

  return swift_deallocObject();
}

__n128 sub_1B795C550(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(a2 + 32) = *(a1 + 32);
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

uint64_t sub_1B795C564()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 32);
  v6[0] = *(v0 + 16);
  v5 = *&v6[0];
  v6[1] = v2;
  v7 = v1;
  v3 = *(type metadata accessor for _ShelfPageStaticContent(0, v6) - 8);
  (*(*(v5 - 8) + 8))(v0 + ((*(v3 + 80) + 56) & ~*(v3 + 80)));

  return swift_deallocObject();
}

uint64_t sub_1B795C660()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 32);
  v9[0] = *(v0 + 16);
  v8 = *&v9[0];
  v3 = *(v0 + 48);
  v4 = *(v0 + 64);
  v9[1] = v2;
  v9[2] = v3;
  v5 = *(v0 + 80);
  v9[3] = v4;
  v9[4] = v5;
  v10 = v1;
  v6 = *(type metadata accessor for _ShelfPageContinuousContent(0, v9) - 8);
  (*(*(v8 - 8) + 8))(v0 + ((*(v6 + 80) + 104) & ~*(v6 + 80)));

  return swift_deallocObject();
}

uint64_t sub_1B795C7AC()
{

  return swift_deallocObject();
}

void *sub_1B795C83C@<X0>(uint64_t a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  sub_1B79888A8(a2, a3, a4);
  result = sub_1B7A97890();
  *a1 = v6;
  *(a1 + 8) = v7;
  return result;
}

void *sub_1B795C8E8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  sub_1B79888FC(a2, a3, a4);
  result = sub_1B7A97890();
  *a1 = v6;
  return result;
}

void *sub_1B795C958@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  sub_1B798A858(a2, a3, a4);
  result = sub_1B7A97890();
  *a1 = v6;
  return result;
}

void *sub_1B795C9F4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  sub_1B798A804(a2, a3, a4);
  result = sub_1B7A97890();
  *a1 = v6;
  return result;
}

uint64_t sub_1B795CA6C(uint64_t a1)
{
  sub_1B7A97020();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA45F98, &unk_1B7A9C790);
  sub_1B7A97590();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA45EF8, &qword_1B7A9C648);
  sub_1B7A97590();
  sub_1B7A97B40();
  swift_getWitnessTable();
  sub_1B797EC34(&qword_1EBA45FA0, &qword_1EBA45F98, &unk_1B7A9C790, MEMORY[0x1E697C968]);
  swift_getWitnessTable();
  sub_1B797EC34(&qword_1EBA45EF0, &qword_1EBA45EF8, &qword_1B7A9C648, MEMORY[0x1E69802E0]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1B7A97050();
  sub_1B7A97590();
  type metadata accessor for ShelfContainerEnvironmentValues(255);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1B798B0CC(&qword_1EBA45FA8, type metadata accessor for ShelfContainerEnvironmentValues, &unk_1B7A9D038);
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_1B7A973E0();
  return swift_getWitnessTable();
}

uint64_t sub_1B795CD28(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for IndexedRandomAccessCollection(255, *a1, a1[2], a4);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getWitnessTable();
  swift_getAssociatedConformanceWitness();
  sub_1B7A988E0();
  return swift_getWitnessTable();
}

uint64_t sub_1B795CE50(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a1[3];
  v7 = a1[7];
  v6 = a1[8];
  v8 = a1[10];
  v25 = a1[9];
  v24 = type metadata accessor for IndexedRandomAccessCollection(255, *a1, a1[4], a4);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  v11 = swift_getAssociatedTypeWitness();
  v26 = v11;
  v27 = vextq_s8(*(a1 + 1), *(a1 + 1), 8uLL);
  v28 = v5;
  v29 = vextq_s8(*(a1 + 5), *(a1 + 5), 8uLL);
  v30 = v7;
  type metadata accessor for IntentResultView(255, &v26);
  v12 = type metadata accessor for _ContinuousIntentDispatchWorker(255, v10, v6, v8);
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for _IntentDispatchViewModifier(255, v12, WitnessTable, v14);
  sub_1B7A97590();
  type metadata accessor for PageResourceMetricsViewModifier(255, v10, v6, v15);
  v16 = sub_1B7A97590();
  v17 = swift_getWitnessTable();
  v26 = v24;
  v27.i64[0] = AssociatedTypeWitness;
  v27.i64[1] = v16;
  v28 = v17;
  v29.i64[0] = v25;
  sub_1B7A988E0();
  v20 = type metadata accessor for _PrefetchMediaArtworkAdapter(255, v11, v18, v19);
  v21 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA45FB0, &qword_1B7A9C7E0);
  v22 = sub_1B79886C8();
  v26 = v20;
  v27.i64[0] = v21;
  v27.i64[1] = &off_1F2F95408;
  v28 = v22;
  type metadata accessor for _PrefetchMediaArtworkViewModifier(255, &v26);
  sub_1B7A97590();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1B795D19C(void *a1)
{
  swift_getTupleTypeMetadata2();
  sub_1B7A98AC0();

  return swift_getWitnessTable();
}

uint64_t sub_1B795D230(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA45FE8, &qword_1B7AA33D0);
  sub_1B7A97590();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA462F0, &unk_1B7A9CEA0);
  sub_1B7A97590();
  v1 = MEMORY[0x1E6980A18];
  sub_1B797EC34(&qword_1EBA45FF0, &qword_1EBA45FE8, &qword_1B7AA33D0, MEMORY[0x1E6980A18]);
  swift_getWitnessTable();
  sub_1B797EC34(qword_1EBA462F8, &qword_1EBA462F0, &unk_1B7A9CEA0, v1);
  return swift_getWitnessTable();
}

uint64_t sub_1B795D368()
{
  v1 = v0[2];
  v2 = *(type metadata accessor for ShelfPage(0, v1, v0[3], v0[4]) - 8);
  (*(*(v1 - 8) + 8))(v0 + ((*(v2 + 80) + 88) & ~*(v2 + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1B795D494()
{

  return swift_deallocObject();
}

uint64_t sub_1B795D4D4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA464A8, &qword_1B7A9D228);
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA464B0, &qword_1B7A9D230);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1B795D610(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA464A8, &qword_1B7A9D228);
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA464B0, &qword_1B7A9D230);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1B795D750()
{
  v1 = sub_1B7A99B70();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1B795D81C()
{
  v1 = sub_1B7A99A50();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = sub_1B7A99B70();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);

  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_1B795D978()
{
  v1 = sub_1B7A99B70();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1B795DA44()
{
  v1 = sub_1B7A99A50();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = sub_1B7A99B70();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);

  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_1B795DB9C()
{
  v1 = sub_1B7A96BF0();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = sub_1B7A99570();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);

  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_1B795DCEC()
{
  v1 = sub_1B7A96BF0();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1B795DDC8()
{

  return swift_deallocObject();
}

uint64_t sub_1B795DE00()
{
  v1 = sub_1B7A96BF0();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = sub_1B7A99B70();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  (*(v2 + 8))(v0 + v3, v1);
  (*(v6 + 8))(v0 + v7, v5);

  return swift_deallocObject();
}

uint64_t sub_1B795DF60(uint64_t *a1)
{
  type metadata accessor for ClickLocationViewModifier(255);
  sub_1B7A97590();
  type metadata accessor for PageMetricsViewModifier(255);
  sub_1B7A97590();
  sub_1B7957B74(&qword_1EDC0FF40, type metadata accessor for ClickLocationViewModifier, &unk_1B7A9EEA8);
  swift_getWitnessTable();
  sub_1B7957B74(&qword_1EDC0FFE0, type metadata accessor for PageMetricsViewModifier, &unk_1B7A9D438);
  return swift_getWitnessTable();
}

uint64_t sub_1B795E070(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA465C0, &qword_1B7A9D3B0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1B7A99360();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 2147483646)
  {
    v14 = *(a1 + a3[6]);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    v15 = v14 - 1;
    if (v15 < 0)
    {
      v15 = -1;
    }

    return (v15 + 1);
  }

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA465C8, &qword_1B7A9D3B8);
    v17 = *(*(v16 - 8) + 48);
    v18 = a1 + a3[7];

    return v17(v18, a2, v16);
  }
}

uint64_t sub_1B795E208(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA465C0, &qword_1B7A9D3B0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = sub_1B7A99360();
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[6]) = a2;
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA465C8, &qword_1B7A9D3B8);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[7];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t sub_1B795E3B4()
{
  v1 = sub_1B7A99360();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1B795E47C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA465C8, &qword_1B7A9D3B8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_14:

    return v9(v10, a2, v8);
  }

  if (a2 == 2147483646)
  {
    v11 = *(a1 + a3[6]);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    v12 = v11 - 1;
    if (v12 < 0)
    {
      v12 = -1;
    }

    return (v12 + 1);
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45CF0, &qword_1B7A9D560);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v15 = *(v14 - 8);
    v16 = a3[7];
LABEL_13:
    v9 = *(v15 + 48);
    v10 = a1 + v16;
    goto LABEL_14;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA465C0, &qword_1B7A9D3B0);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v15 = *(v17 - 8);
    v16 = a3[8];
    goto LABEL_13;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46610, &qword_1B7A9D568);
  v19 = *(*(v18 - 8) + 48);
  v20 = a1 + a3[11];

  return v19(v20, a2, v18);
}

uint64_t sub_1B795E674(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA465C8, &qword_1B7A9D3B8);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[6]) = a2;
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45CF0, &qword_1B7A9D560);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[7];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA465C0, &qword_1B7A9D3B0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[8];
    goto LABEL_9;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46610, &qword_1B7A9D568);
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[11];

  return v18(v19, a2, a2, v17);
}

uint64_t sub_1B795E870()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA46628, &qword_1B7A9D5E0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA46620, &qword_1B7A9D5D8);
  sub_1B7995B64();
  sub_1B797EC34(&qword_1EDC0FC98, &qword_1EBA46620, &qword_1B7A9D5D8, MEMORY[0x1E69AAFF0]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1B795E938()
{

  return swift_deallocObject();
}

uint64_t sub_1B795E984()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1B795E9BC()
{

  return swift_deallocObject();
}

__n128 sub_1B795EA50(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_1B795EA5C()
{

  return swift_deallocObject();
}

uint64_t sub_1B795EA94()
{

  return swift_deallocObject();
}

uint64_t sub_1B795EB24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 40);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1B7A991E0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1B795EBD0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 40) = (a2 - 1);
  }

  else
  {
    v7 = sub_1B7A991E0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void *sub_1B795EC78@<X0>(void *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  sub_1B79A16FC(a2, a3, a4);
  result = sub_1B7A97890();
  *a1 = v6;
  return result;
}

uint64_t sub_1B795ECCC()
{

  return swift_deallocObject();
}

uint64_t sub_1B795ED0C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PlayableViewModifier(255, *a1, a1[1], a4);
  swift_getWitnessTable();
  sub_1B7A97C30();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA45EB8, &qword_1B7A9C620);
  sub_1B7A97590();
  sub_1B7A97590();
  swift_getWitnessTable();
  sub_1B797EC34(&qword_1EDC0FCE8, &qword_1EBA45EB8, &qword_1B7A9C620, MEMORY[0x1E69802E0]);
  WitnessTable = swift_getWitnessTable();
  sub_1B797D3EC(WitnessTable, v4, v5);
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1B795EE8C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for OnPlayableViewChangeModifier(255, *a1, a1[1], a4);
  swift_getWitnessTable();
  sub_1B7A97C30();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA46A70, &qword_1B7A9DC78);
  sub_1B7A97590();
  swift_getWitnessTable();
  sub_1B797EC34(&qword_1EBA46A78, &qword_1EBA46A70, &qword_1B7A9DC78, MEMORY[0x1E6980A18]);
  return swift_getWitnessTable();
}

uint64_t sub_1B795EF9C(uint64_t *a1)
{
  v1 = *(a1 + 2);
  v3[0] = *(a1 + 1);
  v3[1] = v1;
  type metadata accessor for _PrefetchMediaArtworkViewModifier(255, v3);
  sub_1B7A97590();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1B795F040()
{
  v1 = *(v0 + 32);
  v8[0] = *(v0 + 16);
  v7 = *&v8[0];
  v8[1] = v1;
  v2 = type metadata accessor for _PrefetchMediaArtworkViewModifier(0, v8);
  v3 = v0 + ((*(*(v2 - 1) + 80) + 48) & ~*(*(v2 - 1) + 80));
  (*(*(v7 - 8) + 8))(v3);

  sub_1B795AE10(*(v3 + v2[14]), *(v3 + v2[14] + 8));
  v4 = v2[15];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45E00, &unk_1B7A9C590);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_1B7A97580();
    (*(*(v5 - 8) + 8))(v3 + v4, v5);
  }

  else
  {
  }

  sub_1B79A5B8C(*(v3 + v2[16]), *(v3 + v2[16] + 8));
  sub_1B79A5B8C(*(v3 + v2[17]), *(v3 + v2[17] + 8));
  j__swift_release(*(v3 + v2[18]));
  return swift_deallocObject();
}

uint64_t sub_1B795F1FC()
{
  v1 = *(v0 + 48);
  v9[0] = *(v0 + 32);
  v8 = *&v9[0];
  v9[1] = v1;
  v2 = type metadata accessor for _PrefetchMediaArtworkViewModifier(0, v9);
  v3 = (*(*(v2 - 1) + 80) + 64) & ~*(*(v2 - 1) + 80);
  swift_unknownObjectRelease();
  v4 = v0 + v3;
  (*(*(v8 - 8) + 8))(v0 + v3);

  sub_1B795AE10(*(v4 + v2[14]), *(v4 + v2[14] + 8));
  v5 = v2[15];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45E00, &unk_1B7A9C590);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1B7A97580();
    (*(*(v6 - 8) + 8))(v4 + v5, v6);
  }

  else
  {
  }

  sub_1B79A5B8C(*(v4 + v2[16]), *(v4 + v2[16] + 8));
  sub_1B79A5B8C(*(v4 + v2[17]), *(v4 + v2[17] + 8));
  j__swift_release(*(v4 + v2[18]));

  return swift_deallocObject();
}

uint64_t sub_1B795F3EC()
{

  return swift_deallocObject();
}

__n128 sub_1B795F48C(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(a2 + 32) = *(a1 + 32);
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

uint64_t sub_1B795F4A0(uint64_t *a1)
{
  v1 = a1[3];
  v3 = *a1;
  v4 = *(a1 + 1);
  v5 = v1;
  type metadata accessor for _PrefetchMediaArtworkViewModifier(255, &v3);
  swift_getWitnessTable();
  sub_1B7A97C30();
  sub_1B7A97980();
  sub_1B7A97590();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

void *sub_1B795F5B4@<X0>(void *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  sub_1B79AF264(a2, a3, a4);
  result = sub_1B7A97890();
  *a1 = v6;
  return result;
}

uint64_t sub_1B795F608()
{
  if (*(v0 + 16) >= 2uLL)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1B795F67C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

void *sub_1B795F6B4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  sub_1B79AED6C(a2, a3, a4);
  result = sub_1B7A97890();
  *a1 = v6;
  return result;
}

uint64_t sub_1B795F750@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B79E9404();
  *a1 = result & 1;
  return result;
}

void *sub_1B795F79C@<X0>(void *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  sub_1B79AACCC(a2, a3, a4);
  result = sub_1B7A97890();
  *a1 = v6;
  return result;
}

uint64_t sub_1B795F7F0(uint64_t a1)
{
  v2 = *(a1 + 24);
  v14 = sub_1B7A99300();
  *&v18 = v2;
  *(&v18 + 1) = MEMORY[0x1E69E5FE8];
  sub_1B7A987A0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA46B78, &qword_1B7A9DF28);
  sub_1B7A97590();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA46B80, &unk_1B7A9DF30);
  sub_1B7A97590();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA46B88, &qword_1B7AA9E50);
  sub_1B7A97590();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA46B90, &qword_1B7A9DF40);
  sub_1B7A97590();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA46B98, &qword_1B7A9DF48);
  sub_1B7A97590();
  type metadata accessor for AppMetricsViewModifier(255);
  sub_1B7A97590();
  v3 = sub_1B7A97B40();
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E6980A18];
  v33 = WitnessTable;
  v34 = sub_1B797EC34(&qword_1EBA46BA0, &qword_1EBA46B78, &qword_1B7A9DF28, MEMORY[0x1E6980A18]);
  v31 = swift_getWitnessTable();
  v32 = sub_1B797EC34(&qword_1EBA46BA8, &qword_1EBA46B80, &unk_1B7A9DF30, &unk_1B7AA7138);
  v6 = swift_getWitnessTable();
  v7 = MEMORY[0x1E6980B30];
  v29 = v6;
  v30 = sub_1B797EC34(&qword_1EBA46BB0, &qword_1EBA46B88, &qword_1B7AA9E50, MEMORY[0x1E6980B30]);
  v27 = swift_getWitnessTable();
  v28 = sub_1B797EC34(&qword_1EBA46BB8, &qword_1EBA46B90, &qword_1B7A9DF40, v5);
  v25 = swift_getWitnessTable();
  v26 = sub_1B797EC34(&qword_1EBA46BC0, &qword_1EBA46B98, &qword_1B7A9DF48, v7);
  v23 = swift_getWitnessTable();
  v24 = sub_1B79AECBC(&qword_1EBA46BC8, type metadata accessor for AppMetricsViewModifier, &unk_1B7AA2F08);
  v21 = swift_getWitnessTable();
  v22 = v23;
  v8 = swift_getWitnessTable();
  v16 = v14;
  v17 = v3;
  v18 = *(a1 + 8);
  v19 = v8;
  v20 = *(a1 + 32);
  v9 = type metadata accessor for _ResultView(255, &v16);
  v10 = swift_getWitnessTable();
  v16 = v9;
  v17 = v10;
  swift_getOpaqueTypeMetadata2();
  sub_1B7A97590();
  v16 = v9;
  v17 = v10;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1B79AAC78(OpaqueTypeConformance2, v11, v12);
  return swift_getWitnessTable();
}

uint64_t sub_1B795FC64(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA46CF8, &qword_1B7A9E538);
  sub_1B7A97590();
  sub_1B797EC34(qword_1EBA46D00, &qword_1EBA46CF8, &qword_1B7A9E538, MEMORY[0x1E6980A18]);
  return swift_getWitnessTable();
}

uint64_t sub_1B795FD10@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B7A97850();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1B795FD98()
{

  return swift_deallocObject();
}

uint64_t sub_1B795FDD4(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA46D88, &qword_1B7A9E728);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA46D90, &qword_1B7A9E730);
  sub_1B7A976B0();
  sub_1B797EC34(&qword_1EBA46D98, &qword_1EBA46D90, &qword_1B7A9E730, MEMORY[0x1E697CD20]);
  swift_getOpaqueTypeConformance2();
  sub_1B7A979C0();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_1B7A98980();
  sub_1B7A97B40();
  sub_1B7A97B40();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1B7960074()
{

  return swift_deallocObject();
}

uint64_t sub_1B79600C4()
{
  (*(*(*(v0 + 16) - 8) + 8))(v0 + ((*(*(*(v0 + 16) - 8) + 80) + 80) & ~*(*(*(v0 + 16) - 8) + 80)));

  return swift_deallocObject();
}

__n128 sub_1B79601AC(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v4;
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

uint64_t sub_1B79601E4(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 56);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(a1 + 8);
  v7 = v2;
  v8 = *(a1 + 40);
  v9 = v3;
  type metadata accessor for _ResultView(255, &AssociatedTypeWitness);
  return swift_getWitnessTable();
}

uint64_t sub_1B7960284()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1B79602BC()
{
  v1 = *(v0 + 32);
  v2 = *(sub_1B7A99D80() - 8);
  v3 = (*(v2 + 80) + 96) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(*(v1 - 8) + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1B79603BC()
{
  swift_unknownObjectRelease();
  sub_1B79599CC(*(v0 + 96), *(v0 + 104));

  return swift_deallocObject();
}

uint64_t sub_1B7960424()
{

  return swift_deallocObject();
}

uint64_t sub_1B796046C()
{
  v1 = sub_1B7A9A000();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1B7960530()
{

  return swift_deallocObject();
}

uint64_t sub_1B7960568()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1B79605B0(uint64_t *a1)
{
  type metadata accessor for ClickLocationViewModifier(255);
  sub_1B7A97590();
  sub_1B7957BBC(&qword_1EDC0FF40, type metadata accessor for ClickLocationViewModifier, &unk_1B7A9EEA8);
  return swift_getWitnessTable();
}

uint64_t sub_1B796064C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45CF0, &qword_1B7A9D560);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45D00, &unk_1B7A9EE70);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA465D0, &qword_1B7A9D3C0);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45CF8, &unk_1B7A9C2E0);
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[7];

  return v17(v18, a2, v16);
}

uint64_t sub_1B7960804(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45CF0, &qword_1B7A9D560);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45D00, &unk_1B7A9EE70);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA465D0, &qword_1B7A9D3C0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45CF8, &unk_1B7A9C2E0);
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[7];

  return v19(v20, a2, a2, v18);
}

uint64_t sub_1B79609C8()
{
  v1 = type metadata accessor for ClickLocationViewModifier(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = v0 + v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45C98, &unk_1B7AA0460);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1B7A99900();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  else
  {
  }

  v5 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45CA0, &unk_1B7A9C240);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1B7A96C20();
    v7 = *(v6 - 8);
    if (!(*(v7 + 48))(v3 + v5, 1, v6))
    {
      (*(v7 + 8))(v3 + v5, v6);
    }
  }

  else
  {
  }

  v8 = v1[6];
  v9 = sub_1B7A995F0();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v3 + v8, 1, v9))
  {
    (*(v10 + 8))(v3 + v8, v9);
  }

  v11 = v3 + v1[7];
  v12 = sub_1B7A96C20();
  (*(*(v12 - 8) + 8))(v11, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45CF8, &unk_1B7A9C2E0);

  return swift_deallocObject();
}

uint64_t sub_1B7960CA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(type metadata accessor for _ComponentBody(0, v5, *(v4 + 24), a4) - 8);
  (*(*(v5 - 8) + 8))(v4 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), v5);

  return swift_deallocObject();
}

uint64_t sub_1B7960D94(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _ComponentBody(255, *a1, a1[1], a4);

  return swift_getWitnessTable();
}

uint64_t sub_1B7960DDC(void *a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for DataObjectBox(255, AssociatedTypeWitness, v2, v3);
  sub_1B7A9AB60();
  sub_1B7A97DF0();
  sub_1B7A97590();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1B7960EAC(void *a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for ActionButton(255, AssociatedTypeWitness, AssociatedConformanceWitness, v3);
  swift_getAssociatedTypeWitness();
  swift_getWitnessTable();
  swift_getAssociatedConformanceWitness();
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for ComponentMenuContent(255);
  swift_getOpaqueTypeConformance2();
  sub_1B79B77FC(&qword_1EBA47010, type metadata accessor for ComponentMenuContent, &unk_1B7AA36F8);
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeMetadata2();
  sub_1B7A97B40();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getWitnessTable();
}

uint64_t sub_1B7961100()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47028, &qword_1B7A9EFB0);
  v3 = sub_1B79B70C0();
  sub_1B79B7124(v3, v0, v1);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1B79611D0()
{

  return swift_deallocObject();
}

uint64_t sub_1B7961208()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

uint64_t sub_1B7961260()
{
  sub_1B79C39AC();

  return swift_deallocClassInstance();
}

uint64_t sub_1B7961290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for _OneShotIntentDispatchWorker(255, *(a1 + 8), *(a1 + 24), a4);
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for _IntentDispatchViewModifier(255, v4, WitnessTable, v6);

  return swift_getWitnessTable();
}

uint64_t sub_1B7961314(void *a1)
{
  v1 = type metadata accessor for _ContinuousIntentDispatchWorker(255, a1[1], a1[3], a1[4]);
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for _IntentDispatchViewModifier(255, v1, WitnessTable, v3);

  return swift_getWitnessTable();
}

uint64_t sub_1B7961398(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[2];
  v5 = type metadata accessor for _OneShotIntentDispatchWorker(255, a1[1], a1[4], a4);
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for _IntentDispatchViewModifierFollowing(255, v5, v4, WitnessTable);

  return swift_getWitnessTable();
}

uint64_t sub_1B7961420(void *a1)
{
  v1 = a1[2];
  v2 = type metadata accessor for _ContinuousIntentDispatchWorker(255, a1[1], a1[4], a1[5]);
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for _IntentDispatchViewModifierFollowing(255, v2, v1, WitnessTable);

  return swift_getWitnessTable();
}

uint64_t sub_1B79614B0()
{
  v1 = *(v0 + 32);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);
  v20 = v3;
  v4 = *(v2 + 64);
  v5 = sub_1B7A999B0();
  v6 = *(v5 - 8);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = v7 + *(v6 + 64);
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for IntentResult(255, AssociatedTypeWitness, v10, v11);
  v12 = (sub_1B7A98870() - 8);
  v13 = (v8 + *(*v12 + 80)) & ~*(*v12 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v20, v1);
  (*(v6 + 8))(v0 + v7, v5);
  v14 = v0 + v13;

  v15 = v12[10];
  type metadata accessor for IntentResult._State(0, AssociatedTypeWitness, v16, v17);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
  }

  else if (EnumCaseMultiPayload <= 1)
  {
    (*(*(AssociatedTypeWitness - 8) + 8))(v14 + v15, AssociatedTypeWitness);
  }

  return swift_deallocObject();
}

uint64_t sub_1B796175C()
{
  v1 = *(v0 + 32);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for IntentResult(255, AssociatedTypeWitness, v6, v7);
  v8 = (sub_1B7A98870() - 8);
  v9 = (v4 + *(*v8 + 80)) & ~*(*v8 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);
  v10 = v0 + v9;

  v11 = v8[10];
  type metadata accessor for IntentResult._State(0, AssociatedTypeWitness, v12, v13);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
  }

  else if (EnumCaseMultiPayload <= 1)
  {
    (*(*(AssociatedTypeWitness - 8) + 8))(v10 + v11, AssociatedTypeWitness);
  }

  return swift_deallocObject();
}

uint64_t sub_1B7961968()
{
  v1 = *(v0 + 32);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 72) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = sub_1B7A999B0();
  v6 = *(v5 - 8);
  v20 = v3;
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = v7 + *(v6 + 64);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for IntentResult(255, AssociatedTypeWitness, v10, v11);
  v12 = sub_1B7A98870();
  v13 = (v8 + *(*(v12 - 8) + 80)) & ~*(*(v12 - 8) + 80);
  swift_unknownObjectRelease();
  if (*(v0 + 48))
  {
  }

  (*(v2 + 8))(v0 + v20, v1);
  (*(v6 + 8))(v0 + v7, v5);
  v14 = v0 + v13;

  v15 = *(v12 + 32);
  type metadata accessor for IntentResult._State(0, AssociatedTypeWitness, v16, v17);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
  }

  else if (EnumCaseMultiPayload <= 1)
  {
    (*(*(AssociatedTypeWitness - 8) + 8))(v14 + v15, AssociatedTypeWitness);
  }

  return swift_deallocObject();
}

uint64_t sub_1B7961C04()
{
  v1 = *(v0 + 32);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 72) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for IntentResult(255, AssociatedTypeWitness, v6, v7);
  v8 = sub_1B7A98870();
  v9 = (v4 + *(*(v8 - 8) + 80)) & ~*(*(v8 - 8) + 80);
  swift_unknownObjectRelease();
  if (*(v0 + 48))
  {
  }

  (*(v2 + 8))(v0 + v3, v1);
  v10 = v0 + v9;

  v11 = *(v8 + 32);
  type metadata accessor for IntentResult._State(0, AssociatedTypeWitness, v12, v13);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
  }

  else if (EnumCaseMultiPayload <= 1)
  {
    (*(*(AssociatedTypeWitness - 8) + 8))(v10 + v11, AssociatedTypeWitness);
  }

  return swift_deallocObject();
}

uint64_t sub_1B7961E04()
{

  return swift_deallocObject();
}

uint64_t sub_1B7961E44()
{

  return swift_deallocObject();
}

uint64_t sub_1B7961E7C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _IntentDispatchViewModifier(255, *a1, a1[1], a4);
  swift_getWitnessTable();
  sub_1B7A97C30();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for _DispatchID(255, AssociatedTypeWitness, AssociatedConformanceWitness, v6);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1B7A97590();
  type metadata accessor for _IntentProgress(255, AssociatedTypeWitness, AssociatedConformanceWitness, v7);
  swift_getFunctionTypeMetadata1();
  sub_1B7A9AB60();
  sub_1B7A97DF0();
  sub_1B7A97590();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1B79620BC(uint64_t *a1)
{
  type metadata accessor for _IntentDispatchViewModifierFollowing(255, *a1, a1[1], a1[2]);
  swift_getWitnessTable();
  sub_1B7A97C30();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for _DispatchID(255, AssociatedTypeWitness, AssociatedConformanceWitness, v3);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1B7A97590();
  type metadata accessor for _IntentProgress(255, AssociatedTypeWitness, AssociatedConformanceWitness, v4);
  swift_getFunctionTypeMetadata1();
  sub_1B7A9AB60();
  sub_1B7A97DF0();
  sub_1B7A97590();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1B7962360()
{
  sub_1B7A98A40();

  return sub_1B7A97180();
}

uint64_t sub_1B79623A8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B7A977A0();
  *a1 = result;
  return result;
}

uint64_t sub_1B7962444(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B7A98F40();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1B7A97530();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1B7962550(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1B7A98F40();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_1B7A97530();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1B7962658(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_1B7A97970();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1B79626D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_1B7A97970();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_1B7962750(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47488, &qword_1B7A9F728);
  sub_1B7A97590();
  sub_1B797EC34(&qword_1EBA47490, &qword_1EBA47488, &qword_1B7A9F728, MEMORY[0x1E6980A18]);
  return swift_getWitnessTable();
}

void *sub_1B7962800@<X0>(void *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  sub_1B79CB218(a2, a3, a4);
  result = sub_1B7A97890();
  *a1 = v6;
  return result;
}

uint64_t sub_1B7962854()
{
  (*(*(*(v0 + 24) - 8) + 8))(v0 + ((*(*(*(v0 + 24) - 8) + 80) + 48) & ~*(*(*(v0 + 24) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t sub_1B79628D4(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA474A8, &qword_1B7A9F780);
  sub_1B7A97590();
  sub_1B79CAE84();
  return swift_getWitnessTable();
}

uint64_t sub_1B7962950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(type metadata accessor for _OnChangeOfBindingViewModifier(0, v5, *(v4 + 24), a4) - 8);
  v7 = v4 + ((*(v6 + 80) + 32) & ~*(v6 + 80));

  v8 = sub_1B7A98870();
  (*(*(v5 - 8) + 8))(v7 + *(v8 + 32), v5);

  return swift_deallocObject();
}

uint64_t sub_1B7962A64(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _OnChangeOfBindingViewModifier(255, *a1, a1[1], a4);
  swift_getWitnessTable();
  sub_1B7A97C30();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1B7962B1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();

  return sub_1B7A9A420();
}

uint64_t sub_1B7962B98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getWitnessTable();

  return sub_1B7A9A910();
}

uint64_t sub_1B7962C24@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 2);
  v5 = *(a1 + 3);
  KeyPath = swift_getKeyPath();
  *a2 = *a1;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  *(a2 + 32) = KeyPath;

  return swift_unknownObjectRetain();
}

uint64_t sub_1B7962CD4()
{

  sub_1B795AE10(*(v0 + 120), *(v0 + 128));
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1B7962D28()
{

  return swift_deallocObject();
}

uint64_t sub_1B7962D60()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1B7962DA0()
{

  return swift_deallocObject();
}

uint64_t sub_1B7962DE0(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47558, &qword_1B7A9FB90);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47560, &qword_1B7A9FB98);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47568, &unk_1B7A9FBA0);
  sub_1B7A97590();
  sub_1B7A97B40();
  sub_1B7A97B40();
  sub_1B797EC34(&qword_1EBA47570, &qword_1EBA47568, &unk_1B7A9FBA0, &protocol conformance descriptor for IndexedRandomAccessCollection<A>);
  v1 = sub_1B7A988E0();
  sub_1B79CFFA8(v1, v2, v3);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1B7A98900();
  sub_1B797EC34(&qword_1EBA47580, &qword_1EBA47558, &qword_1B7A9FB90, MEMORY[0x1E69E6338]);
  sub_1B797EC34(&qword_1EBA47588, &qword_1EBA47560, &qword_1B7A9FB98, &unk_1B7AA1F10);
  sub_1B7A988E0();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1B7A97FD0();
  sub_1B7A97590();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47548, &qword_1B7A9FB88);
  sub_1B797EC34(&qword_1EBA47550, &qword_1EBA47548, &qword_1B7A9FB88, &protocol conformance descriptor for IndexedRandomAccessCollection<A>);
  sub_1B7A988E0();
  swift_getWitnessTable();
  sub_1B7A98AB0();
  sub_1B7A97B40();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1B79631B8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA475C8, &qword_1B7A9FCC8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1B7963274(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA475C8, &qword_1B7A9FCC8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void *sub_1B7963334@<X0>(void *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  sub_1B79DC584(a2, a3, a4);
  result = sub_1B7A97890();
  *a1 = v6;
  return result;
}

__n128 sub_1B79633E0(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v4;
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

uint64_t sub_1B7963400(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  v7 = a1[6];
  v8 = a1[7];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v20 = v1;
  v21 = v2;
  v22 = v3;
  v23 = v4;
  v24 = v5;
  v25 = v6;
  v26 = v7;
  v27 = v8;
  type metadata accessor for IntentView(255, &v20);
  v10 = sub_1B7A98E50();
  WitnessTable = swift_getWitnessTable();
  v20 = v2;
  v21 = v10;
  v22 = v6;
  v23 = WitnessTable;
  v12 = sub_1B7A987A0();
  v13 = swift_getWitnessTable();
  v20 = AssociatedTypeWitness;
  v21 = v12;
  v22 = v3;
  v23 = v4;
  v24 = v13;
  v25 = v7;
  v26 = v8;
  v14 = type metadata accessor for _ResultView(255, &v20);
  v20 = v1;
  v21 = v2;
  v22 = v3;
  v23 = v4;
  v24 = v5;
  v25 = v6;
  v26 = v7;
  v27 = v8;
  v15 = type metadata accessor for IntentView.RequestID(255, &v20);
  v16 = swift_getWitnessTable();
  v17 = swift_getWitnessTable();
  v20 = v14;
  v21 = v15;
  v22 = v16;
  v23 = v17;
  swift_getOpaqueTypeMetadata2();
  sub_1B7A97590();
  type metadata accessor for _IntentProgress(255, v1, v5, v18);
  swift_getFunctionTypeMetadata1();
  sub_1B7A9AB60();
  sub_1B7A97DF0();
  sub_1B7A97590();
  v20 = v14;
  v21 = v15;
  v22 = v16;
  v23 = v17;
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1B79636C4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1B79636FC()
{
  v1 = *(v0 + 32);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  swift_unknownObjectRelease();

  if (*(v0 + 104))
  {
  }

  (*(v2 + 8))(v0 + ((v3 + 128) & ~v3), v1);

  return swift_deallocObject();
}

uint64_t sub_1B79637EC()
{

  return swift_deallocObject();
}

uint64_t sub_1B796382C()
{
  v1 = v0[3];
  v9[0] = v0[2];
  v8 = *&v9[0];
  v2 = v0[4];
  v3 = v0[5];
  v9[1] = v1;
  v9[2] = v2;
  v9[3] = v3;
  v4 = (type metadata accessor for IntentView(0, v9) - 8);
  v5 = (*(*v4 + 80) + 96) & ~*(*v4 + 80);
  swift_unknownObjectRelease();
  v6 = v0 + v5;
  sub_1B79D7310(*(v0 + v5), *(v0 + v5 + 8), *(v0 + v5 + 16), *(v0 + v5 + 24));
  sub_1B79599CC(*(v6 + 4), *(v6 + 5));
  (*(*(v8 - 8) + 8))(v0 + v5 + v4[24]);

  j__swift_release(*(v0 + v5 + v4[30]));
  sub_1B79D7360(*&v6[v4[31]], *&v6[v4[31] + 8], v6[v4[31] + 16]);
  return swift_deallocObject();
}

uint64_t sub_1B79639E8(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA45FE8, &qword_1B7AA33D0);
  sub_1B7A97590();
  sub_1B79DC6AC();
  return swift_getWitnessTable();
}

uint64_t sub_1B7963A60()
{
  (*(*(*(v0 + 16) - 8) + 8))(v0 + ((*(*(*(v0 + 16) - 8) + 80) + 48) & ~*(*(*(v0 + 16) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t sub_1B7963AF4()
{

  return swift_deallocObject();
}

uint64_t sub_1B7963B2C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1B7963B7C()
{

  return swift_deallocObject();
}

uint64_t sub_1B7963BB4()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1B7963BF8()
{
  (*(*(*(v0 + 24) - 8) + 8))(v0 + ((*(*(*(v0 + 24) - 8) + 80) + 48) & ~*(*(*(v0 + 24) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t sub_1B7963C78()
{

  return swift_deallocObject();
}

uint64_t sub_1B7963CB0()
{
  v1 = sub_1B7A99080();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1B7963D74()
{
  v1 = sub_1B7A99080();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1B7963E38(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA474A8, &qword_1B7A9F780);
  sub_1B7A97590();
  sub_1B797EC34(&qword_1EBA474B0, &qword_1EBA474A8, &qword_1B7A9F780, MEMORY[0x1E6980B30]);
  return swift_getWitnessTable();
}

uint64_t sub_1B7963EE8(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA474A8, &qword_1B7A9F780);
  sub_1B7A97590();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA46788, &unk_1B7A9D6E0);
  sub_1B7A97B40();
  sub_1B797EC34(&qword_1EBA474B0, &qword_1EBA474A8, &qword_1B7A9F780, MEMORY[0x1E6980B30]);
  swift_getWitnessTable();
  sub_1B797EC34(&qword_1EBA46790, &qword_1EBA46788, &unk_1B7A9D6E0, &protocol conformance descriptor for _RequirementFailureView<A, B>);
  return swift_getWitnessTable();
}

uint64_t sub_1B7964024(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA474A8, &qword_1B7A9F780);
  sub_1B7A97590();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA46788, &unk_1B7A9D6E0);
  sub_1B7A97B40();
  sub_1B797EC34(&qword_1EBA474B0, &qword_1EBA474A8, &qword_1B7A9F780, MEMORY[0x1E6980B30]);
  swift_getWitnessTable();
  sub_1B797EC34(&qword_1EBA46790, &qword_1EBA46788, &unk_1B7A9D6E0, &protocol conformance descriptor for _RequirementFailureView<A, B>);
  return swift_getWitnessTable();
}

uint64_t sub_1B7964168(uint64_t a1)
{
  v1 = *(a1 + 64);
  v2 = *(a1 + 16);
  v7[0] = *a1;
  v6 = *&v7[0];
  v7[1] = v2;
  v3 = *(a1 + 48);
  v8 = *(a1 + 32);
  v5 = v8;
  v9 = v3;
  type metadata accessor for IntentView(255, v7);
  type metadata accessor for PageRenderMetricsViewModifier(255, v6, v5, v1);
  sub_1B7A97590();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1B7964254(void *a1)
{
  v1 = a1[4];
  sub_1B7A97590();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for PageRenderMetricsViewModifier(255, AssociatedTypeWitness, AssociatedConformanceWitness, v1);
  sub_1B7A97590();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1B796437C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46610, &qword_1B7A9D568);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[12];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45CF0, &qword_1B7A9D560);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[14];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[15] + 16);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  v14 = v13 - 1;
  if (v14 < 0)
  {
    v14 = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1B79644AC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46610, &qword_1B7A9D568);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[12];
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45CF0, &qword_1B7A9D560);
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[15] + 16) = a2;
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[14];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

uint64_t sub_1B79645DC()
{

  return swift_deallocObject();
}

uint64_t sub_1B7964614()
{
  v1 = type metadata accessor for PageRenderMetricsViewModifier(0, v0[2], v0[3], v0[4]);
  v2 = (v0 + ((*(*(v1 - 1) + 80) + 40) & ~*(*(v1 - 1) + 80)));
  sub_1B79599CC(*v2, v2[1]);
  j__swift_release(v2[3]);
  v3 = v2 + v1[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45F00, &qword_1B7A9D510);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA46648, &qword_1B7A9D600);
    if (!(*(*(v4 - 8) + 48))(v3, 1, v4))
    {

      v5 = *(v4 + 32);
      v6 = sub_1B7A97480();
      (*(*(v6 - 8) + 8))(&v3[v5], v6);
    }
  }

  else
  {
  }

  sub_1B797D5A0(*(v2 + v1[13]), *(v2 + v1[13] + 8), *(v2 + v1[13] + 16), *(v2 + v1[13] + 17));
  v7 = v1[14];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45C98, &unk_1B7AA0460);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1B7A99900();
    (*(*(v8 - 8) + 8))(v2 + v7, v8);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1B796486C()
{
  v1 = sub_1B7A99360();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1B7964938(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for PageRenderMetricsViewModifier(255, *a1, v2, a1[2]);
  swift_getWitnessTable();
  sub_1B7A97C30();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47910, &qword_1B7AA03F0);
  sub_1B7A97590();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47918, &qword_1B7AA03F8);
  sub_1B7A97590();
  type metadata accessor for _IntentProgress(255, v1, v2, v3);
  swift_getFunctionTypeMetadata1();
  sub_1B7A9AB60();
  sub_1B7A97DF0();
  sub_1B7A97590();
  sub_1B7A97590();
  swift_getWitnessTable();
  sub_1B79E3274(&qword_1EBA47920, &qword_1EBA47910, &qword_1B7AA03F0);
  swift_getWitnessTable();
  sub_1B79E3274(qword_1EBA47928, &qword_1EBA47918, &qword_1B7AA03F8);
  swift_getWitnessTable();
  swift_getWitnessTable();
  WitnessTable = swift_getWitnessTable();
  sub_1B797D3EC(WitnessTable, v4, v5);
  return swift_getWitnessTable();
}

uint64_t sub_1B7964B74()
{

  return swift_deallocObject();
}

uint64_t sub_1B7964BAC(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1B7A99080();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1B7964C58(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1B7A99080();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B7964CFC()
{
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47AB0, &unk_1B7AA07A0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47AA8, &qword_1B7AA0798);
  v5 = *(v4 - 8);
  v6 = (v2 + v3 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = v0 + v2;

  v8 = v1[9];
  v9 = sub_1B7A99050();
  (*(*(v9 - 8) + 8))(v7 + v8, v9);
  v10 = v1[12];
  v11 = sub_1B7A97580();
  (*(*(v11 - 8) + 8))(v7 + v10, v11);

  (*(v5 + 8))(v0 + v6, v4);

  return swift_deallocObject();
}

uint64_t sub_1B7964EE4()
{
  MEMORY[0x1B8CACC70](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1B7964F1C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47AA0, &qword_1B7AA0790);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1B7964FF4(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47B08, &unk_1B7AA08B0);
  sub_1B7A97590();
  sub_1B797EC34(&qword_1EDC0FCE0, &qword_1EBA47B08, &unk_1B7AA08B0, MEMORY[0x1E6980A18]);
  return swift_getWitnessTable();
}

uint64_t sub_1B79650A0(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47B10, &unk_1B7AA2EE0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1B796515C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47B10, &unk_1B7AA2EE0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B7965210()
{
  v1 = (type metadata accessor for _OnScenePhaseChange(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45DE8, &qword_1B7AA2E80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1B7A97040();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1B7965378()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47B38, &qword_1B7AA0A40);
  sub_1B7A97040();
  sub_1B797EC34(&qword_1EDC0FCF0, &qword_1EBA47B38, &qword_1B7AA0A40, MEMORY[0x1E697FDF8]);
  sub_1B79E92F0(&qword_1EDC108C0, MEMORY[0x1E697BE48], MEMORY[0x1E697BE50]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1B7965468()
{
  (*(*(*(v0 + 24) - 8) + 8))(v0 + ((*(*(*(v0 + 24) - 8) + 80) + 80) & ~*(*(*(v0 + 24) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t sub_1B79654E8()
{

  return swift_deallocObject();
}

uint64_t sub_1B7965528(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47B60, &qword_1B7AA0B88);
  sub_1B7A97590();
  sub_1B79E9EB8();
  return swift_getWitnessTable();
}

uint64_t sub_1B79655A4(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47B60, &qword_1B7AA0B88);
  sub_1B7A97590();
  sub_1B79E9EB8();
  return swift_getWitnessTable();
}

uint64_t sub_1B7965620()
{

  return swift_deallocObject();
}

uint64_t sub_1B796566C(void *a1)
{
  v1 = sub_1B7A97590();
  sub_1B79AAC78(v1, v2, v3);
  return swift_getWitnessTable();
}

uint64_t sub_1B79656D0(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47BD0, &qword_1B7AA0D88);
  sub_1B7A97590();
  sub_1B797EC34(&qword_1EBA47BD8, &qword_1EBA47BD0, &qword_1B7AA0D88, MEMORY[0x1E6980A18]);
  return swift_getWitnessTable();
}

uint64_t sub_1B7965780(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47BE8, &qword_1B7AA0E88);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B79657F0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47BE8, &qword_1B7AA0E88);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B7965868()
{

  return swift_deallocObject();
}

uint64_t sub_1B79658A0()
{
  v1 = sub_1B7A9A000();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1B7965964()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

void sub_1B79659B0(uint64_t a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  *a1 = EnvironmentValues.shelfContentPadding.getter(a2, a3, a4);
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
}

uint64_t sub_1B79659E0(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47CC0, &unk_1B7AA7590);
  sub_1B7A97590();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47CC8, &unk_1B7AA0FE0);
  sub_1B7A97590();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47450, &unk_1B7AA52F0);
  sub_1B7A97590();
  sub_1B7A97590();
  sub_1B7A97590();
  sub_1B7A97590();
  swift_getTupleTypeMetadata2();
  sub_1B7A98AC0();
  swift_getWitnessTable();
  sub_1B7A987E0();
  sub_1B7A97BD0();
  sub_1B79ED4A4();
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata3();
  sub_1B7A98AC0();
  swift_getWitnessTable();
  sub_1B7A98790();
  sub_1B7A97590();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

void *sub_1B7965C24@<X0>(void *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  sub_1B79EF300(a2, a3, a4);
  result = sub_1B7A97890();
  *a1 = v6;
  return result;
}

uint64_t sub_1B7965C78()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + ((*(*(AssociatedTypeWitness - 8) + 80) + 56) & ~*(*(AssociatedTypeWitness - 8) + 80)), AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t sub_1B7965D14(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47D68, &unk_1B7AA1160);
  sub_1B7A97590();
  sub_1B79EEFF8();
  return swift_getWitnessTable();
}

void *sub_1B7965D90@<X0>(void *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  sub_1B79F01AC(a2, a3, a4);
  result = sub_1B7A97890();
  *a1 = v6;
  return result;
}

uint64_t sub_1B7965DE4()
{

  return swift_deallocObject();
}

uint64_t sub_1B7965E3C(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47D90, &qword_1B7AA1298);
  sub_1B7A97590();
  sub_1B79EFAE0();
  return swift_getWitnessTable();
}

uint64_t sub_1B7965EB8(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47D90, &qword_1B7AA1298);
  sub_1B7A97590();
  sub_1B79EFAE0();
  return swift_getWitnessTable();
}

uint64_t sub_1B7965F34()
{

  return swift_deallocObject();
}

uint64_t sub_1B7965F84()
{

  return swift_deallocObject();
}

void *sub_1B7965FBC@<X0>(void *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  sub_1B79F2984(a2, a3, a4);
  result = sub_1B7A97890();
  *a1 = v6;
  return result;
}

uint64_t sub_1B7966010()
{

  return swift_deallocObject();
}

uint64_t sub_1B7966048()
{
  (*(*(*(v0 + 24) - 8) + 8))(v0 + ((*(*(*(v0 + 24) - 8) + 80) + 48) & ~*(*(*(v0 + 24) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t sub_1B79660D4()
{

  return swift_deallocObject();
}

uint64_t sub_1B7966114()
{
  sub_1B795A450(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_1B7966158(void *a1)
{
  v1 = sub_1B7A97590();
  sub_1B79F2524(v1, v2, v3);
  return swift_getWitnessTable();
}

uint64_t sub_1B79661BC(void *a1)
{
  v1 = sub_1B7A97590();
  sub_1B79F2524(v1, v2, v3);
  return swift_getWitnessTable();
}

uint64_t sub_1B7966224()
{

  return swift_deallocObject();
}

uint64_t sub_1B7966268()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47DE0, &unk_1B7AA14C0);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1B79662FC()
{

  return swift_deallocObject();
}

uint64_t sub_1B796639C(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA46B90, &qword_1B7A9DF40);
  sub_1B7A97590();
  sub_1B797EC34(&qword_1EBA46BB8, &qword_1EBA46B90, &qword_1B7A9DF40, MEMORY[0x1E6980A18]);
  return swift_getWitnessTable();
}

uint64_t sub_1B7966480()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1B79664B8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

void *sub_1B7966504@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  sub_1B79F9BFC(a2, a3, a4);
  result = sub_1B7A97890();
  *a1 = v6;
  return result;
}

uint64_t sub_1B79665A0(void *a1)
{
  v1 = sub_1B7A97590();
  sub_1B79F8F4C(v1, v2, v3);
  return swift_getWitnessTable();
}

uint64_t sub_1B7966604(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for UnifiedImpressionableLayoutViewModifier(255, a1[1], a1[3], a4);
  sub_1B7A97590();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1B7966698(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47ED8, &qword_1B7AA1B28);
  sub_1B7A97590();
  sub_1B797EC34(qword_1EBA47EE0, &qword_1EBA47ED8, &qword_1B7AA1B28, MEMORY[0x1E6980A18]);
  return swift_getWitnessTable();
}

uint64_t sub_1B796676C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for UnifiedImpressionableLayoutViewModifier(255, *a1, a1[1], a4);
  swift_getWitnessTable();
  sub_1B7A97C30();
  type metadata accessor for ImpressionableViewModifier(255);
  sub_1B7A97590();
  type metadata accessor for ClickLocationViewModifier(255);
  sub_1B7A97590();
  sub_1B7A97B40();
  sub_1B7A97B40();
  type metadata accessor for Impressionable_ViewModifier(255);
  sub_1B7A97590();
  sub_1B7A97590();
  sub_1B7A97B40();
  swift_getWitnessTable();
  sub_1B79F9B44(qword_1EDC0F568, type metadata accessor for ImpressionableViewModifier, &unk_1B7A9C43C);
  swift_getWitnessTable();
  sub_1B79F9B44(&qword_1EDC0FF40, type metadata accessor for ClickLocationViewModifier, &unk_1B7A9EEA8);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1B79F9B44(qword_1EDC0F358, type metadata accessor for Impressionable_ViewModifier, &unk_1B7AA2190);
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1B7966A2C()
{
  v1 = *(v0 + 32);
  v5[0] = *(v0 + 16);
  v4 = *&v5[0];
  v5[1] = v1;
  v2 = *(type metadata accessor for JoinedID(0, v5) - 8);
  (*(*(v4 - 8) + 8))(v0 + ((*(v2 + 80) + 48) & ~*(v2 + 80)));

  return swift_deallocObject();
}

uint64_t sub_1B7966B3C(uint64_t *a1)
{
  type metadata accessor for Impressionable_ViewModifier(255);
  sub_1B7A97590();
  type metadata accessor for ClickLocationViewModifier(255);
  sub_1B7A97590();
  sub_1B79FC0D0(qword_1EDC0F358, type metadata accessor for Impressionable_ViewModifier, &unk_1B7AA2190);
  swift_getWitnessTable();
  sub_1B79FC0D0(&qword_1EDC0FF40, type metadata accessor for ClickLocationViewModifier, &unk_1B7A9EEA8);
  return swift_getWitnessTable();
}

uint64_t sub_1B7966C4C(uint64_t *a1)
{
  type metadata accessor for Impressionable_ViewModifier(255);
  sub_1B7A97590();
  type metadata accessor for ClickLocationViewModifier(255);
  sub_1B7A97590();
  sub_1B79FC0D0(qword_1EDC0F358, type metadata accessor for Impressionable_ViewModifier, &unk_1B7AA2190);
  swift_getWitnessTable();
  sub_1B79FC0D0(&qword_1EDC0FF40, type metadata accessor for ClickLocationViewModifier, &unk_1B7A9EEA8);
  return swift_getWitnessTable();
}

uint64_t sub_1B7966D60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 16);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45CF0, &qword_1B7A9D560);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45D00, &unk_1B7A9EE70);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1B7966E94(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 16) = -a2;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45CF0, &qword_1B7A9D560);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45D00, &unk_1B7A9EE70);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1B7966FCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 17);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for Impressionable_ViewModifier.EnvironmentImpressionState(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1B7967070(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 17) = -a2;
  }

  else
  {
    v7 = type metadata accessor for Impressionable_ViewModifier.EnvironmentImpressionState(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B7967110()
{

  return swift_deallocObject();
}

uint64_t sub_1B7967164(uint64_t *a1)
{
  type metadata accessor for FlowPopoverOriginViewModifier(255, a1[1], a1[3], a1[4]);
  sub_1B7A97590();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

__n128 sub_1B796721C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_1B796723C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  sub_1B79599CC(*(v0 + 40), *(v0 + 48));

  if (*(v0 + 120))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 80));
    if ((*(v0 + 168) & 1) == 0)
    {
LABEL_3:

      goto LABEL_7;
    }
  }

  else
  {

    if ((*(v0 + 168) & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  if (*(v0 + 152))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 128));
  }

LABEL_7:
  (*(v2 + 8))(v0 + ((v3 + 169) & ~v3), v1);

  return swift_deallocObject();
}

uint64_t sub_1B7967350()
{

  return swift_deallocObject();
}

uint64_t sub_1B79673A0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  type metadata accessor for FlowPopoverOriginViewModifier(255, *a1, v2, v3);
  swift_getWitnessTable();
  v4 = sub_1B7A97C30();
  v9 = v1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA481A0, &qword_1B7AA24E8);
  v11 = v10;
  v12 = v2;
  v13 = v3;
  v14 = sub_1B7A02270();
  v15 = v14;
  type metadata accessor for FlowStack(255, &v9);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA481B8, &qword_1B7AA24F0);
  v5 = sub_1B7A97590();
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1B79E3274(&qword_1EBA481B0, &qword_1EBA481B8, &qword_1B7AA24F0);
  v7 = swift_getWitnessTable();
  v9 = v4;
  v10 = v1;
  v11 = v5;
  v12 = WitnessTable;
  v13 = v3;
  v14 = v7;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA481C0, &unk_1B7AA24F8);
  sub_1B7A97590();
  v9 = v4;
  v10 = MEMORY[0x1E6981148];
  v11 = WitnessTable;
  v12 = MEMORY[0x1E6981138];
  type metadata accessor for _RequirementFailureView(255, &v9);
  sub_1B7A97B40();
  v9 = v4;
  v10 = v1;
  v11 = v5;
  v12 = WitnessTable;
  v13 = v3;
  v14 = v7;
  swift_getOpaqueTypeConformance2();
  sub_1B79E3274(qword_1EBA481C8, &qword_1EBA481C0, &unk_1B7AA24F8);
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1B796765C()
{
  (*(*(*(v0 + 16) - 8) + 8))(v0 + ((*(*(*(v0 + 16) - 8) + 80) + 48) & ~*(*(*(v0 + 16) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t sub_1B79676F0()
{

  return swift_deallocObject();
}

uint64_t sub_1B7967728()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1B7967770(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1B7A99080();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

void *sub_1B796781C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1B7A99080();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B79678C0(uint64_t *a1)
{
  sub_1B7A97E00();
  sub_1B7A97590();
  sub_1B7A048FC();
  return swift_getWitnessTable();
}

id sub_1B796793C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 path];
  *a2 = result;
  return result;
}

uint64_t sub_1B7967978()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1B79679D8()
{
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = (sub_1B7A98870() - 8);
  v3 = (*(*v2 + 80) + 88) & ~*(*v2 + 80);
  swift_unknownObjectRelease();

  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v3 + v2[10], AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t sub_1B7967B2C()
{
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = (sub_1B7A98870() - 8);
  v3 = (*(*v2 + 80) + 88) & ~*(*v2 + 80);
  swift_unknownObjectRelease();

  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v3 + v2[10], AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t sub_1B7967CA0(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[5];
  v22 = a1[4];
  v6 = a1[6];
  type metadata accessor for FlowStackTabsAuthority.Tab(255, *a1, v4, v22);
  v25 = sub_1B7A9A6E0();
  sub_1B7A97E00();
  v7 = sub_1B7A97590();
  v33 = v5;
  v34 = sub_1B7A048FC();
  WitnessTable = swift_getWitnessTable();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA481B8, &qword_1B7AA24F0);
  v8 = sub_1B7A97590();
  v26 = v2;
  v27 = v1;
  v28 = v3;
  v29 = v4;
  v30 = v22;
  v31 = v5;
  v32 = v6;
  type metadata accessor for FlowStackTabView(255, &v26);
  v9 = sub_1B7A98E50();
  sub_1B797EC34(&qword_1EBA481B0, &qword_1EBA481B8, &qword_1B7AA24F0, MEMORY[0x1E6980A18]);
  v10 = swift_getWitnessTable();
  v11 = swift_getWitnessTable();
  v26 = v8;
  v27 = v9;
  v28 = v10;
  v29 = v11;
  v12 = sub_1B7A987A0();
  v13 = swift_getWitnessTable();
  v26 = v7;
  v27 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v15 = swift_getWitnessTable();
  v16 = swift_getWitnessTable();
  v26 = v25;
  v27 = OpaqueTypeMetadata2;
  v28 = v12;
  v29 = v13;
  v30 = OpaqueTypeConformance2;
  v31 = v15;
  v32 = v16;
  type metadata accessor for _FlowStackTabViewBody(255, &v26);
  v17 = sub_1B7A97590();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getWitnessTable();
  v19 = swift_getWitnessTable();
  v20 = *(swift_getAssociatedConformanceWitness() + 8);
  v26 = v17;
  v27 = AssociatedTypeWitness;
  v28 = v19;
  v29 = v20;
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1B7967FEC()
{

  return swift_deallocObject();
}

uint64_t sub_1B7968028(uint64_t *a1)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getOpaqueTypeMetadata2();
  sub_1B7A988E0();
  swift_getTupleTypeMetadata3();
  sub_1B7A98AC0();
  swift_getWitnessTable();
  sub_1B7A98030();
  sub_1B7A976B0();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA46788, &unk_1B7A9D6E0);
  sub_1B7A97B40();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_1B797EC34(&qword_1EBA46790, &qword_1EBA46788, &unk_1B7A9D6E0, &protocol conformance descriptor for _RequirementFailureView<A, B>);
  swift_getWitnessTable();
  sub_1B7A979C0();
  sub_1B7A97B40();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_1B7A988E0();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_1B7A98980();
  sub_1B7A97B40();
  sub_1B7A97B40();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1B7968544(uint64_t *a1)
{
  type metadata accessor for AppMetricsViewModifier(255);
  sub_1B7A97590();
  sub_1B7A14574(&qword_1EBA46BC8, type metadata accessor for AppMetricsViewModifier, &unk_1B7AA2F08);
  return swift_getWitnessTable();
}

uint64_t sub_1B79685E0(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA45E60, &unk_1B7A9C5D0);
  sub_1B7A97590();
  sub_1B797EC34(&qword_1EDC0EB48, &qword_1EBA45E60, &unk_1B7A9C5D0, MEMORY[0x1E6980A18]);
  return swift_getWitnessTable();
}

uint64_t sub_1B796868C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 24);
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47B10, &unk_1B7AA2EE0);
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 24);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45CF0, &qword_1B7A9D560);
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 28);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_1B79687D4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 24) = a2;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47B10, &unk_1B7AA2EE0);
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45CF0, &qword_1B7A9D560);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1B7968974@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.shelfContentPrefersCompactLayouts.getter();
  *a1 = result & 1;
  return result;
}

void *sub_1B7968A34@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  sub_1B7A1D08C(a2, a3, a4);
  result = sub_1B7A97890();
  *a1 = v6;
  return result;
}

uint64_t sub_1B7968AD0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1B7968B0C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[3];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA48650, &qword_1B7AA33B8);
  type metadata accessor for UnifiedImpressionableLayoutViewModifier(255, v1, v2, v3);
  sub_1B7A97590();
  sub_1B7A1D0E0();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1B7A97690();
  swift_getTupleTypeMetadata2();
  sub_1B7A98AC0();
  swift_getWitnessTable();
  sub_1B7A987E0();
  sub_1B7A97B40();
  sub_1B7A985B0();
  swift_getWitnessTable();
  swift_getWitnessTable();
  WitnessTable = swift_getWitnessTable();
  sub_1B7A1D2A8(WitnessTable, v4, v5);
  sub_1B7A987A0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA45FE8, &qword_1B7AA33D0);
  sub_1B7A97590();
  sub_1B7A97590();
  sub_1B7A97E00();
  v6 = sub_1B7A97590();
  swift_getWitnessTable();
  sub_1B79E3274(&qword_1EBA45FF0, &qword_1EBA45FE8, &qword_1B7AA33D0);
  v12 = swift_getWitnessTable();
  sub_1B79F8F4C(v12, v7, v8);
  swift_getWitnessTable();
  sub_1B7A1D2FC(&qword_1EDC10A40, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
  v9 = swift_getWitnessTable();
  type metadata accessor for _ResolvedVerticalShelfLayout(255, v6, v9, v10);
  sub_1B7A97590();
  sub_1B7A97590();
  sub_1B7A97590();
  sub_1B7A97590();
  sub_1B7A97B40();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1B7A987E0();
  sub_1B7A97590();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1B7968FA8(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA45FE8, &qword_1B7AA33D0);
  sub_1B7A97590();
  sub_1B79E3274(&qword_1EBA45FF0, &qword_1EBA45FE8, &qword_1B7AA33D0);
  return swift_getWitnessTable();
}

uint64_t sub_1B7969040(_OWORD *a1)
{
  v1 = a1[1];
  v3[0] = *a1;
  v3[1] = v1;
  v3[2] = a1[2];
  type metadata accessor for ShelfGrid(255, v3);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA48738, &unk_1B7AA3520);
  sub_1B7A97590();
  swift_getWitnessTable();
  sub_1B79E3274(&qword_1EBA48740, &qword_1EBA48738, &unk_1B7AA3520);
  return swift_getWitnessTable();
}

uint64_t sub_1B7969114()
{
  v1 = *(v0 + 2);
  v12[0] = *(v0 + 1);
  v11 = *&v12[0];
  v2 = *(v0 + 3);
  v12[1] = v1;
  v12[2] = v2;
  v3 = type metadata accessor for ShelfGrid(0, v12);
  v4 = *(*(v3 - 1) + 64);
  v5 = (*(*(v3 - 1) + 80) + 64) & ~*(*(v3 - 1) + 80);
  v6 = &v0[v5];
  (*(*(v11 - 8) + 8))(&v0[v5]);
  v7 = &v0[v5 + v3[17]];
  sub_1B7A16CD4(*v7, *(v7 + 1), *(v7 + 2), *(v7 + 3), *(v7 + 4), *(v7 + 5), v7[48]);

  sub_1B795AE10(*&v6[v3[23]], v6[v3[23] + 8]);
  sub_1B7A1F1D0(*&v6[v3[24]], v6[v3[24] + 8], v6[v3[24] + 9]);
  sub_1B795AE10(*&v6[v3[25]], v6[v3[25] + 8]);
  v8 = &v0[v5 + v3[26]];
  if (v8[32])
  {
    __swift_destroy_boxed_opaque_existential_1(v8);
  }

  else
  {
  }

  v9 = (v4 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1B7A1F1D0(*&v6[v3[27]], *&v6[v3[27] + 8], v6[v3[27] + 16]);
  sub_1B7A16CD4(*&v0[v9], *&v0[v9 + 8], *&v0[v9 + 16], *&v0[v9 + 24], *&v0[v9 + 32], *&v0[v9 + 40], v0[v9 + 48]);
  return swift_deallocObject();
}

uint64_t sub_1B79692D4()
{
  v1 = *(v0 + 2);
  v12[0] = *(v0 + 1);
  v11 = *&v12[0];
  v2 = *(v0 + 3);
  v12[1] = v1;
  v12[2] = v2;
  v3 = type metadata accessor for ShelfGrid(0, v12);
  v4 = *(*(v3 - 1) + 64);
  v5 = (*(*(v3 - 1) + 80) + 64) & ~*(*(v3 - 1) + 80);
  v6 = &v0[v5];
  (*(*(v11 - 8) + 8))(&v0[v5]);
  v7 = &v0[v5 + v3[17]];
  sub_1B7A16CD4(*v7, *(v7 + 1), *(v7 + 2), *(v7 + 3), *(v7 + 4), *(v7 + 5), v7[48]);

  sub_1B795AE10(*&v6[v3[23]], v6[v3[23] + 8]);
  sub_1B7A1F1D0(*&v6[v3[24]], v6[v3[24] + 8], v6[v3[24] + 9]);
  sub_1B795AE10(*&v6[v3[25]], v6[v3[25] + 8]);
  v8 = &v0[v5 + v3[26]];
  if (v8[32])
  {
    __swift_destroy_boxed_opaque_existential_1(v8);
  }

  else
  {
  }

  v9 = (((v4 + v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  sub_1B7A1F1D0(*&v6[v3[27]], *&v6[v3[27] + 8], v6[v3[27] + 16]);
  sub_1B7A16CD4(*&v0[v9], *&v0[v9 + 8], *&v0[v9 + 16], *&v0[v9 + 24], *&v0[v9 + 32], *&v0[v9 + 40], v0[v9 + 48]);

  return swift_deallocObject();
}

uint64_t sub_1B79694AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA48650, &qword_1B7AA33B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B7969514()
{

  return swift_deallocObject();
}

uint64_t sub_1B796954C()
{
  v1 = *(v0 + 2);
  v12[0] = *(v0 + 1);
  v11 = *&v12[0];
  v2 = *(v0 + 3);
  v12[1] = v1;
  v12[2] = v2;
  v3 = type metadata accessor for ShelfGrid(0, v12);
  v4 = *(*(v3 - 1) + 64);
  v5 = (*(*(v3 - 1) + 80) + 64) & ~*(*(v3 - 1) + 80);
  v6 = &v0[v5];
  (*(*(v11 - 8) + 8))(&v0[v5]);
  v7 = &v0[v5 + v3[17]];
  sub_1B7A16CD4(*v7, *(v7 + 1), *(v7 + 2), *(v7 + 3), *(v7 + 4), *(v7 + 5), v7[48]);

  sub_1B795AE10(*&v6[v3[23]], v6[v3[23] + 8]);
  sub_1B7A1F1D0(*&v6[v3[24]], v6[v3[24] + 8], v6[v3[24] + 9]);
  sub_1B795AE10(*&v6[v3[25]], v6[v3[25] + 8]);
  v8 = &v0[v5 + v3[26]];
  if (v8[32])
  {
    __swift_destroy_boxed_opaque_existential_1(v8);
  }

  else
  {
  }

  v9 = (v5 + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1B7A1F1D0(*&v6[v3[27]], *&v6[v3[27] + 8], v6[v3[27] + 16]);
  sub_1B7A16CD4(*&v0[v9], *&v0[v9 + 8], *&v0[v9 + 16], *&v0[v9 + 24], *&v0[v9 + 32], *&v0[v9 + 40], v0[v9 + 48]);

  return swift_deallocObject();
}

uint64_t sub_1B796971C()
{
  v1 = sub_1B7A991B0();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1B79697EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA48798, &unk_1B7AA36C0);
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

uint64_t sub_1B79698B8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA48798, &unk_1B7AA36C0);
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

uint64_t sub_1B7969980()
{
  v1 = type metadata accessor for ComponentMenuContent(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = v0 + v2;
  v4 = sub_1B7A9A0D0();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  __swift_destroy_boxed_opaque_existential_1((v3 + v1[5]));
  v6 = v3 + v1[6];
  if (*(v6 + 40))
  {
    if (*(v6 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1(v6);
    }
  }

  else
  {
  }

  sub_1B79A5B8C(*(v3 + v1[7]), *(v3 + v1[7] + 8));

  return swift_deallocObject();
}

uint64_t sub_1B7969AE8()
{

  return swift_deallocObject();
}

uint64_t sub_1B7969B20()
{
  v1 = sub_1B7A9A090();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1B7969BC8()
{

  return swift_deallocObject();
}

uint64_t sub_1B7969C10()
{
  v1 = sub_1B7A99F80();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1B7969CD4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1B7969D24()
{

  return swift_deallocObject();
}

uint64_t sub_1B7969D5C(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA489E0, &qword_1B7AA3A98);
  sub_1B7A97590();
  sub_1B797EC34(&qword_1EBA489E8, &qword_1EBA489E0, &qword_1B7AA3A98, MEMORY[0x1E6980A18]);
  return swift_getWitnessTable();
}

uint64_t sub_1B7969E0C(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA489E0, &qword_1B7AA3A98);
  sub_1B7A97590();
  sub_1B797EC34(&qword_1EBA489E8, &qword_1EBA489E0, &qword_1B7AA3A98, MEMORY[0x1E6980A18]);
  return swift_getWitnessTable();
}

uint64_t sub_1B7969EBC()
{

  return swift_deallocObject();
}

uint64_t sub_1B7969EFC()
{
  v1 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47AF8, &unk_1B7AA07E0) - 8) + 80);
  if (*(v0 + 56))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  }

  v2 = (v1 + 168) & ~v1;

  sub_1B79A5B8C(*(v0 + 104), *(v0 + 112));
  sub_1B79A5B8C(*(v0 + 120), *(v0 + 128));
  j__swift_release(*(v0 + 136));
  v3 = *(v0 + 152);
  if (v3 >= 4)
  {
  }

  v4 = sub_1B7A96B90();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v0 + v2, 1, v4))
  {
    (*(v5 + 8))(v0 + v2, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_1B796A090(void *a1)
{
  sub_1B7A97590();
  sub_1B7A97590();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA48A88, &qword_1B7AA3E48);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1B7A28450(&qword_1EBA48A90, &qword_1EBA48A88, &qword_1B7AA3E48, sub_1B7A283FC);
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA48AA0, &unk_1B7AA3E50);
  swift_getOpaqueTypeConformance2();
  sub_1B7A28450(&qword_1EBA48AA8, &qword_1EBA48AA0, &unk_1B7AA3E50, sub_1B7A284CC);
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_1B7A96F80();
  return swift_getWitnessTable();
}

__n128 sub_1B796A2F4(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_1B796A308@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B7A29804();
  *a1 = result;
  return result;
}

uint64_t sub_1B796A378()
{

  return swift_deallocObject();
}

uint64_t sub_1B796A3B0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B7A99C70();
  *a1 = result & 1;
  return result;
}

__n128 sub_1B796A3EC(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 32);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 32) = v3;
  *a2 = result;
  return result;
}

__n128 sub_1B796A40C(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(a2 + 32) = *(a1 + 32);
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

uint64_t sub_1B796A42C()
{

  return swift_deallocObject();
}

void *sub_1B796A464@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  sub_1B7A3428C(a2, a3, a4);
  result = sub_1B7A97890();
  *a1 = v6;
  return result;
}

uint64_t sub_1B796A55C(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA46DE0, &qword_1B7A9E760);
  sub_1B7A97590();
  sub_1B797EC34(&qword_1EBA46DD8, &qword_1EBA46DE0, &qword_1B7A9E760, MEMORY[0x1E6980B30]);
  return swift_getWitnessTable();
}

uint64_t sub_1B796A608(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B7A98F40();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = type metadata accessor for MediaArtworkLoaderImage(0);
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 24) + 8);
      if (v14 > 1)
      {
        return (v14 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_1B796A714(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1B7A98F40();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for MediaArtworkLoaderImage(0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = -a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1B796A820(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B7A98F40();
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
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA48E58, &qword_1B7AA4468);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 32);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1B796A950(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1B7A98F40();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA48E58, &qword_1B7AA4468);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 32);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1B796AAAC()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1B796AAE4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1B796AB1C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA464A0, &qword_1B7AA4600);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (((((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  __swift_destroy_boxed_opaque_existential_1((v0 + v4));

  return swift_deallocObject();
}

uint64_t sub_1B796AC28()
{

  return swift_deallocObject();
}

uint64_t sub_1B796AC60()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1B796AD00()
{

  return swift_deallocObject();
}

uint64_t sub_1B796AD38(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B7A99900();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B796ADA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B7A99900();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B796AEC8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA48F10, &qword_1B7AA4840);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA48F18, &qword_1B7AA4848);
  sub_1B7A36FD0();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1B796AF88(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA48F40, &qword_1B7AA4A20);
  sub_1B7A97590();
  sub_1B797EC34(&qword_1EBA48F48, &qword_1EBA48F40, &qword_1B7AA4A20, MEMORY[0x1E6980A18]);
  return swift_getWitnessTable();
}

uint64_t sub_1B796B038(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA48F18, &qword_1B7AA4848);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B796B0A0()
{

  return swift_deallocObject();
}

void *sub_1B796B0E0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  sub_1B7A43288(a2, a3, a4);
  result = sub_1B7A97890();
  *a1 = v6;
  return result;
}

uint64_t sub_1B796B1C4()
{
  v1 = v0[3];
  v8[0] = v0[2];
  v8[1] = v1;
  v8[2] = v0[4];
  v2 = type metadata accessor for ContentUnavailableView(0, v8);
  v3 = (*(*(v2 - 1) + 80) + 80) & ~*(*(v2 - 1) + 80);
  swift_unknownObjectRelease();
  v4 = v0 + v3;
  sub_1B7A41F20(*(v0 + v3), *(v0 + v3 + 8), *(v0 + v3 + 16), *(v0 + v3 + 24), *(v0 + v3 + 32), *(v0 + v3 + 40), *(v0 + v3 + 48));
  if (*(v0 + v3 + 56))
  {
  }

  sub_1B795AE10(*(v4 + 12), v4[104]);
  j__swift_release(*(v4 + 14));
  v5 = v2[22];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45DE8, &qword_1B7AA2E80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1B7A97040();
    (*(*(v6 - 8) + 8))(&v4[v5], v6);
  }

  else
  {
  }

  j__swift_release(*&v4[v2[23]]);
  sub_1B795AE1C(*&v4[v2[24]], v4[v2[24] + 8]);
  return swift_deallocObject();
}

uint64_t sub_1B796B370()
{

  return swift_deallocObject();
}

uint64_t sub_1B796B3A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 56);
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47B10, &unk_1B7AA2EE0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 88);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1B796B470(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 56) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47B10, &unk_1B7AA2EE0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 88);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B796B520(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47018, &qword_1B7A9EFA0);
  v8 = *(v6 - 8);
  if (*(v8 + 84) == a2)
  {
    v9 = v6;
    v10 = *(v8 + 48);
    v11 = a1;
LABEL_5:

    return v10(v11, a2, v9);
  }

  v12 = type metadata accessor for ContentUnavailableButton.Action(0, *(a3 + 16), *(a3 + 24), v7);
  v13 = *(v12 - 8);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v10 = *(v13 + 48);
    v11 = a1 + *(a3 + 36);
    goto LABEL_5;
  }

  v15 = *(a1 + *(a3 + 40));
  if (v15 >= 0xFFFFFFFF)
  {
    LODWORD(v15) = -1;
  }

  return (v15 + 1);
}

uint64_t sub_1B796B63C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47018, &qword_1B7A9EFA0);
  v10 = *(v8 - 8);
  if (*(v10 + 84) == a3)
  {
    v11 = v8;
    v12 = *(v10 + 56);
    v13 = a1;
  }

  else
  {
    result = type metadata accessor for ContentUnavailableButton.Action(0, *(a4 + 16), *(a4 + 24), v9);
    v15 = *(result - 8);
    if (*(v15 + 84) != a3)
    {
      *(a1 + *(a4 + 40)) = (a2 - 1);
      return result;
    }

    v11 = result;
    v12 = *(v15 + 56);
    v13 = a1 + *(a4 + 36);
  }

  return v12(v13, a2, a2, v11);
}

uint64_t sub_1B796B754(__int128 *a1)
{
  v1 = a1[1];
  v17 = *a1;
  v18 = v1;
  v19 = a1[2];
  v2 = type metadata accessor for _CompatibilityContentUnavailableViewContent(255, &v17);
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for _ContentUnavailableScrollView(255, v2, WitnessTable, v4);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA48FB8, &qword_1B7AA4BC8);
  sub_1B7A97B40();
  sub_1B7A97590();
  type metadata accessor for _OnScenePhaseChange(255);
  sub_1B7A97590();
  v5 = sub_1B7A97B40();
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA48FC0, &qword_1B7AA4BD0);
  swift_getWitnessTable();
  sub_1B797EC34(qword_1EDC10228, &qword_1EBA48FB8, &qword_1B7AA4BC8, &unk_1B7AA5234);
  v16 = swift_getWitnessTable();
  sub_1B797D440(v16, v7, v8);
  swift_getWitnessTable();
  sub_1B7A42C8C(&qword_1EDC10978, type metadata accessor for _OnScenePhaseChange, &unk_1B7AA0978);
  swift_getWitnessTable();
  v9 = swift_getWitnessTable();
  v10 = sub_1B7A41DD8();
  *&v17 = v5;
  *(&v17 + 1) = v6;
  *&v18 = v9;
  *(&v18 + 1) = v10;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA48FD0, &qword_1B7AA5DF0);
  v11 = sub_1B7A97590();
  *&v17 = v5;
  *(&v17 + 1) = v6;
  *&v18 = v9;
  *(&v18 + 1) = v10;
  swift_getOpaqueTypeConformance2();
  sub_1B797EC34(&qword_1EDC10A50, &qword_1EBA48FD0, &qword_1B7AA5DF0, MEMORY[0x1E697F940]);
  v12 = swift_getWitnessTable();
  *&v17 = v11;
  *(&v17 + 1) = v12;
  swift_getOpaqueTypeMetadata2();
  sub_1B7A97E00();
  v13 = sub_1B7A97590();
  *&v17 = v11;
  *(&v17 + 1) = v12;
  swift_getOpaqueTypeConformance2();
  sub_1B7A42C8C(&qword_1EDC10A40, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
  v14 = swift_getWitnessTable();
  *&v17 = v13;
  *(&v17 + 1) = v14;
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1B796BB08(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA46F58, &unk_1B7AA84F0);
  sub_1B7A97590();
  sub_1B797EC34(&qword_1EDC0FCD8, &qword_1EBA46F58, &unk_1B7AA84F0, MEMORY[0x1E6980A18]);
  return swift_getWitnessTable();
}

uint64_t sub_1B796BBB4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_1B7A98770();
  type metadata accessor for ActionButton(255, v1, v2, v3);
  sub_1B7A97B40();
  sub_1B7A98000();
  sub_1B7A97B40();
  sub_1B7A97B40();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1B796BD18(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA48FE8, &qword_1B7AA4F88);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

void *sub_1B796BDD4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA48FE8, &qword_1B7AA4F88);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B796BE84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (type metadata accessor for _ContentUnavailableScrollView(0, *(v4 + 16), *(v4 + 24), a4) - 8);
  v6 = (*(*v5 + 80) + 32) & ~*(*v5 + 80);

  v7 = v5[11];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA48FE8, &qword_1B7AA4F88);
  (*(*(v8 - 8) + 8))(v4 + v6 + v7, v8);

  return swift_deallocObject();
}

uint64_t sub_1B796BF7C()
{

  return swift_deallocObject();
}

uint64_t sub_1B796BFB8()
{
  v1 = sub_1B7A99900();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  if (v0[5])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  }

  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  (*(v2 + 8))(v0 + ((v3 + 96) & ~v3), v1);

  return swift_deallocObject();
}

uint64_t sub_1B796C090()
{

  if (*(v0 + 48))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1B796C0E0()
{

  return swift_deallocObject();
}

uint64_t sub_1B796C128()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1B796C160(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47CC0, &unk_1B7AA7590);
  sub_1B7A97590();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA49000, &qword_1B7AA52E0);
  sub_1B7A97590();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA49008, &qword_1B7AA52E8);
  sub_1B7A97590();
  sub_1B7A97590();
  sub_1B7A97590();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47450, &unk_1B7AA52F0);
  sub_1B7A97590();
  sub_1B7A97590();
  sub_1B7A97930();
  sub_1B7A42C8C(&qword_1EBA49010, MEMORY[0x1E697C4D0], MEMORY[0x1E697C4C8]);
  swift_getOpaqueTypeMetadata2();
  sub_1B7A97590();
  swift_getTupleTypeMetadata3();
  sub_1B7A98AC0();
  swift_getWitnessTable();
  sub_1B7A987E0();
  sub_1B7A97590();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1B796C3C0(void *a1)
{
  sub_1B7A97590();
  sub_1B7A97590();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1B7A987E0();
  sub_1B7A97590();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1B7A97050();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_1B7A973E0();
  return swift_getWitnessTable();
}

void *sub_1B796C5F0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  sub_1B7A434D4(a2, a3, a4);
  result = sub_1B7A97890();
  *a1 = v6;
  return result;
}

uint64_t sub_1B796C68C(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA481B8, &qword_1B7AA24F0);
  sub_1B7A97590();
  sub_1B7A43728();
  return swift_getWitnessTable();
}

uint64_t sub_1B796C704()
{

  return swift_deallocObject();
}

void sub_1B796C764(uint64_t a1@<X8>)
{
  v1 = MEMORY[0x1E6981E60];
  *(a1 + 24) = MEMORY[0x1E6981E70];
  *(a1 + 32) = v1;
}

uint64_t sub_1B796C77C()
{

  return swift_deallocObject();
}

void *sub_1B796C7DC@<X0>(void *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  sub_1B7A458C0(a2, a3, a4);
  result = sub_1B7A97890();
  *a1 = v6;
  return result;
}

uint64_t sub_1B796C878(__int128 *a1)
{
  v1 = *(a1 + 3);
  v2 = *(a1 + 6);
  *(&v11 + 1) = *(a1 + 2);
  v12 = *(&v11 + 1);
  v13 = v1;
  *(&v14 + 1) = v2;
  v15 = v2;
  v10 = *a1;
  *&v11 = *a1;
  v9 = a1[2];
  *&v14 = *(a1 + 4);
  v3 = type metadata accessor for FlowStack(255, &v11);
  WitnessTable = swift_getWitnessTable();
  v11 = v10;
  v12 = v3;
  v13 = v1;
  v14 = v9;
  v15 = WitnessTable;
  type metadata accessor for FlowStackTabView(255, &v11);
  swift_getAssociatedTypeWitness();
  FunctionTypeMetadata1 = swift_getFunctionTypeMetadata1();
  type metadata accessor for DataObjectBox(255, FunctionTypeMetadata1, v6, v7);
  sub_1B7A9AB60();
  sub_1B7A97DF0();
  sub_1B7A97590();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1B796C9F8()
{

  return swift_deallocObject();
}

uint64_t sub_1B796CA30()
{
  (*(*(*(v0 + 16) - 8) + 8))(v0 + ((*(*(*(v0 + 16) - 8) + 80) + 32) & ~*(*(*(v0 + 16) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t sub_1B796CAD4()
{
  j__swift_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1B796CB20(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for LoadingView(255, *a1, a1[1], a4);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA48DA8, &unk_1B7AA4400);
  sub_1B7A97590();
  swift_getWitnessTable();
  sub_1B797EC34(&qword_1EDC10A38, &qword_1EBA48DA8, &unk_1B7AA4400, MEMORY[0x1E6980B30]);
  return swift_getWitnessTable();
}

uint64_t sub_1B796CC88()
{
  swift_unknownObjectRelease();
  sub_1B79599CC(*(v0 + 48), *(v0 + 56));

  sub_1B795AE10(*(v0 + 88), *(v0 + 96));
  j__swift_release(*(v0 + 104));
  sub_1B795AE1C(*(v0 + 120), *(v0 + 128));

  return swift_deallocObject();
}

uint64_t sub_1B796CCF8(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA49230, &qword_1B7AA6360);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47CC0, &unk_1B7AA7590);
  sub_1B7A97590();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47450, &unk_1B7AA52F0);
  sub_1B7A97590();
  sub_1B7A97590();
  swift_getTupleTypeMetadata2();
  sub_1B7A98AC0();

  return swift_getWitnessTable();
}

void *sub_1B796CDE0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  sub_1B7A4C558(a2, a3, a4);
  result = sub_1B7A97890();
  *a1 = v6;
  return result;
}

__n128 sub_1B796CE90(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 32);
  *(a2 + 48) = *(a1 + 48);
  *(a2 + 16) = v3;
  *(a2 + 32) = v4;
  *a2 = result;
  return result;
}

uint64_t sub_1B796CEC0()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  v3 = (*(v2 + 80) + 72) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t sub_1B796CF9C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[3];
  v3 = a1[4];
  v12 = *a1;
  v10 = a1[2];
  v11 = a1[6];
  sub_1B7A97480();
  sub_1B7A987A0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA45FE8, &qword_1B7AA33D0);
  sub_1B7A97590();
  type metadata accessor for FlowStackAuthority.PathComponent(255, v1, v2, v3);
  swift_getWitnessTable();
  sub_1B7A987A0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA481B8, &qword_1B7AA24F0);
  sub_1B7A97590();
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E6980A18];
  v13 = MEMORY[0x1E6980A18];
  v15[8] = WitnessTable;
  v15[9] = sub_1B797EC34(&qword_1EBA45FF0, &qword_1EBA45FE8, &qword_1B7AA33D0, MEMORY[0x1E6980A18]);
  swift_getWitnessTable();
  v15[6] = swift_getWitnessTable();
  v15[7] = sub_1B797EC34(&qword_1EBA481B0, &qword_1EBA481B8, &qword_1B7AA24F0, v5);
  v6 = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  v15[5] = v6;
  swift_getOpaqueTypeConformance2();
  sub_1B7A975B0();
  sub_1B7A97590();
  v15[0] = v12;
  v15[1] = v10;
  v15[2] = v2;
  v15[3] = v3;
  v15[4] = v11;
  type metadata accessor for FlowStackSheetViewModifier(255, v15);
  sub_1B7A97590();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA49300, &qword_1B7AA65F8);
  sub_1B7A97590();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA49308, &qword_1B7AA6600);
  sub_1B7A97590();
  v14 = swift_getWitnessTable();
  sub_1B7A4CCB4(v14, v7, v8);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1B797EC34(&qword_1EBA49318, &qword_1EBA49300, &qword_1B7AA65F8, MEMORY[0x1E6980B30]);
  swift_getWitnessTable();
  sub_1B797EC34(&qword_1EBA49320, &qword_1EBA49308, &qword_1B7AA6600, v13);
  return swift_getWitnessTable();
}

void *sub_1B796D3A4@<X0>(void *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  sub_1B7A4DD68(a2, a3, a4);
  result = sub_1B7A97890();
  *a1 = v6;
  return result;
}

uint64_t sub_1B796D3F8()
{
  (*(*(*(v0 + 24) - 8) + 8))(v0 + ((*(*(*(v0 + 24) - 8) + 80) + 48) & ~*(*(*(v0 + 24) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t sub_1B796D498(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA49340, &qword_1B7AA6710);
  sub_1B7A97590();
  sub_1B7A4DC90();
  return swift_getWitnessTable();
}

uint64_t sub_1B796D524()
{

  return swift_deallocObject();
}

uint64_t sub_1B796D564()
{
  j__swift_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1B796D5CC()
{

  return swift_deallocObject();
}

uint64_t sub_1B796D60C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[1];
  type metadata accessor for PageResourceMetricsViewModifier(255, *a1, v5, a4);
  swift_getWitnessTable();
  v6 = sub_1B7A97C30();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47910, &qword_1B7AA03F0);
  sub_1B7A97590();
  type metadata accessor for _IntentProgress(255, v4, v5, v7);
  swift_getFunctionTypeMetadata1();
  sub_1B7A9AB60();
  sub_1B7A97DF0();
  sub_1B7A97590();
  sub_1B7A97B40();
  WitnessTable = swift_getWitnessTable();
  v10[0] = v6;
  v10[1] = MEMORY[0x1E6981148];
  v10[2] = WitnessTable;
  v10[3] = MEMORY[0x1E6981138];
  type metadata accessor for _RequirementFailureView(255, v10);
  sub_1B7A97B40();
  sub_1B7A504E0();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

__n128 sub_1B796D944(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a1 + a3 - 24) - 8) + 16;
  (*v5)(a2, a1);
  v6 = (*(v5 + 48) + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = a1 + v6;
  v8 = a2 + v6;
  result = *(v7 + 16);
  *v8 = *v7;
  *(v8 + 16) = result;
  return result;
}

__n128 sub_1B796DA44(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a1 + 8) - 8);
  v5 = *(v4 + 64);
  (*(v4 + 32))(a2, a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80)));
  v6 = a2 + ((v5 + 7) & 0xFFFFFFFFFFFFFFF8);
  result = *(a1 + 16);
  *v6 = *a1;
  *(v6 + 16) = result;
  return result;
}

__n128 sub_1B796DBB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a1 + a3 - 16) - 8) + 16;
  (*v5)(a2, a1);
  v6 = (*(v5 + 48) + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (a1 + v6);
  v8 = (a2 + v6);
  v9 = v7[1].n128_u64[0];
  result = *v7;
  *v8 = *v7;
  v8[1].n128_u64[0] = v9;
  return result;
}

__n128 sub_1B796DCB8(__n128 *a1, uint64_t a2)
{
  v4 = *(a1->n128_u64[1] - 8);
  v5 = *(v4 + 64);
  (*(v4 + 32))(a2, a1 + ((*(v4 + 80) + 24) & ~*(v4 + 80)));
  v6 = (a2 + ((v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = a1[1].n128_u64[0];
  result = *a1;
  *v6 = *a1;
  v6[1].n128_u64[0] = v7;
  return result;
}

uint64_t sub_1B796DD44()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 32);
  v14[0] = *(v0 + 16);
  v13 = *&v14[0];
  v3 = *(v0 + 48);
  v14[1] = v2;
  v14[2] = v3;
  v15 = v1;
  v4 = *(type metadata accessor for IntentResultView(0, v14) - 8);
  v5 = v0 + ((*(v4 + 80) + 72) & ~*(v4 + 80));

  type metadata accessor for IntentResult(255, v13, v6, v7);
  v8 = *(sub_1B7A98870() + 32);
  type metadata accessor for IntentResult._State(0, v13, v9, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
  }

  else if (EnumCaseMultiPayload <= 1)
  {
    (*(*(v13 - 8) + 8))(v5 + v8, v13);
  }

  return swift_deallocObject();
}

uint64_t sub_1B796DEF8(uint64_t a1)
{
  sub_1B7A97B40();
  sub_1B7A97B40();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1B796DF98()
{

  return swift_deallocObject();
}

uint64_t sub_1B796DFD0()
{

  return swift_deallocObject();
}

uint64_t sub_1B796E06C(uint64_t *a1)
{
  type metadata accessor for ShelfPage(255, *a1, a1[1], a1[3]);

  return swift_getWitnessTable();
}

uint64_t sub_1B796E0B8(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA495F8, &qword_1B7AA6F98);
  sub_1B7A97590();
  sub_1B7A54CB8();
  return swift_getWitnessTable();
}

__n128 sub_1B796E140(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(a2 + 32) = *(a1 + 32);
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

uint64_t sub_1B796E154()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 72) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1B796E214(uint64_t a1)
{
  sub_1B7A97B40();
  sub_1B7A97B40();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1B796E2AC()
{
  v1 = sub_1B7A994D0();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 40) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1B796E354(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for DispatcherPerformActionViewModifier(255, a1[1], a3, a4);
  sub_1B7A97590();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1B796E3E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for DispatcherPerformActionViewModifier.DispatcherStorage(0, *(a3 + 16), a3, a4);
  v8 = *(v7 - 8);
  if (*(v8 + 84) == a2)
  {
    v9 = *(v8 + 48);

    return v9(a1, a2, v7);
  }

  else
  {
    v11 = *(a1 + *(a3 + 28) + 40);
    if (v11 > 1)
    {
      return (v11 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1B796E4A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  result = type metadata accessor for DispatcherPerformActionViewModifier.DispatcherStorage(0, *(a4 + 16), a3, a4);
  v9 = *(result - 8);
  if (*(v9 + 84) == v5)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28) + 40) = -a2;
  }

  return result;
}

uint64_t sub_1B796E568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for DispatcherPerformAction(255, *(v4 + 16), a3, a4);
  v6 = *(sub_1B7A9AB60() - 8);
  v7 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  if (!(*(*(v5 - 8) + 48))(v4 + v7, 1, v5))
  {
    v8 = sub_1B7A994D0();
    (*(*(v8 - 8) + 8))(v4 + v7, v8);
  }

  return swift_deallocObject();
}

uint64_t sub_1B796E6A8()
{

  return swift_deallocObject();
}

uint64_t sub_1B796E6E0()
{

  return swift_deallocObject();
}

uint64_t sub_1B796E718(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B7A994D0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1B796E7D8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1B7A994D0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1B796E894(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for DispatcherPerformActionViewModifier(255, *a1, a3, a4);
  swift_getWitnessTable();
  sub_1B7A97C30();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA49688, &qword_1B7AA95E0);
  sub_1B7A97590();
  sub_1B7A97B40();
  swift_getWitnessTable();
  sub_1B7A590CC();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1B796E9A8()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1B796E9EC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1B7A99B00();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1B796EA98(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1B7A99B00();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B796EB3C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA496F8, &qword_1B7AA7278);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1B796EBF8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA496F8, &qword_1B7AA7278);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B796ECB8(uint64_t a1, uint64_t a2)
{
  v4 = _s13PopupHUDModelC8RowModelVMa(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B796ED24(uint64_t a1, uint64_t a2)
{
  v4 = _s13PopupHUDModelC8RowModelVMa(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B796ED98@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B7A97800();
  *a1 = result;
  return result;
}

double sub_1B796EDF4@<D0>(uint64_t a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  sub_1B7A5DCCC(a2, a3, a4);
  sub_1B7A97890();
  result = *&v6;
  *a1 = v6;
  *(a1 + 16) = v7;
  return result;
}

__n128 sub_1B796EEAC(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(a2 + 32) = *(a1 + 32);
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

uint64_t sub_1B796EEC4()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);

  if (*(v0 + 160))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 120));
  }

  else
  {
  }

  (*(v2 + 8))(v0 + ((v3 + 161) & ~v3), v1);

  return swift_deallocObject();
}

uint64_t sub_1B796EFBC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1B796F004(__int128 *a1)
{
  v6 = *a1;
  v9 = *(a1 + 2);
  v7 = *(a1 + 24);
  v8 = v6;
  v10 = v7;
  type metadata accessor for FlowStackSheetViewModifier(255, &v8);
  swift_getWitnessTable();
  v1 = sub_1B7A97C30();
  v2 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA498B8, &qword_1B7AA7758);
  WitnessTable = swift_getWitnessTable();
  v4 = sub_1B7A60274();
  *&v8 = v1;
  *(&v8 + 1) = v6;
  v9 = v2;
  *&v10 = WitnessTable;
  *(&v10 + 1) = v7;
  v11 = v4;
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1B796F164()
{

  return swift_deallocObject();
}

uint64_t sub_1B796F208()
{
  v1 = sub_1B7A9A030();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1B796F2A4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1B796F2EC()
{

  return swift_deallocObject();
}

uint64_t sub_1B796F338(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for DataObjectBox(255, a1[1], a3, a4);
  sub_1B7A9AB60();
  sub_1B7A97DF0();
  sub_1B7A97590();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1B796F3EC()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1B796F42C(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA46B88, &qword_1B7AA9E50);
  sub_1B7A97590();
  sub_1B7A660E8();
  return swift_getWitnessTable();
}

uint64_t sub_1B796F4A8()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1B796F4F8(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA498C8, &qword_1B7AA7760);
  sub_1B7A97590();
  sub_1B797EC34(&qword_1EDC0EB38, &qword_1EBA498C8, &qword_1B7AA7760, MEMORY[0x1E6980A18]);
  return swift_getWitnessTable();
}

uint64_t sub_1B796F5A4(void *a1)
{
  v1 = sub_1B7A97590();
  sub_1B797D3EC(v1, v2, v3);
  return swift_getWitnessTable();
}

uint64_t sub_1B796F60C()
{

  sub_1B797D5A0(*(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 73));

  return swift_deallocObject();
}

uint64_t sub_1B796F674()
{

  return swift_deallocObject();
}

uint64_t sub_1B796F6B4()
{

  return swift_deallocObject();
}

uint64_t sub_1B796F6EC(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47548, &qword_1B7A9FB88);
  sub_1B7A68DE0();
  sub_1B7A988E0();
  swift_getWitnessTable();
  sub_1B7A98A90();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1B796F7DC()
{
  v1 = *(v0 + 16);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v3 = sub_1B7A9A100();
  sub_1B7A9AB60();
  v4 = (sub_1B7A98870() - 8);
  v5 = (*(*v4 + 80) + 80) & ~*(*v4 + 80);

  v6 = (v0 + v5 + v4[10]);
  if (!(*(*(v3 - 8) + 48))(v6, 1, v3))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
    }

    else
    {
      (*(*(v1 - 8) + 8))(v6 + *(TupleTypeMetadata2 + 48), v1);
    }
  }

  return swift_deallocObject();
}

uint64_t sub_1B796F9B0()
{
  v1 = *(v0 + 16);
  v2 = *(sub_1B7A9AB60() - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v1 - 8);
  if (!(*(v4 + 48))(v0 + v3, 1, v1))
  {
    (*(v4 + 8))(v0 + v3, v1);
  }

  return swift_deallocObject();
}

uint64_t sub_1B796FAE8()
{

  return swift_deallocObject();
}

uint64_t sub_1B796FB20(uint64_t *a1)
{
  v1 = a1[1];
  v3 = a1[2];
  v2 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v10 = *a1;
  v11 = v1;
  v12 = v3;
  v13 = v2;
  v14 = v4;
  v15 = v5;
  v16 = v6;
  type metadata accessor for TaskView(255, &v10);
  v7 = sub_1B7A98E50();
  WitnessTable = swift_getWitnessTable();
  v10 = v1;
  v11 = v7;
  v12 = v4;
  v13 = WitnessTable;
  sub_1B7A987A0();
  sub_1B7A97B40();
  sub_1B7A97B40();
  sub_1B7A985B0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA49C48, &qword_1B7AA81D0);
  sub_1B7A97590();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1B797EC34(&qword_1EBA49C58, &qword_1EBA49C48, &qword_1B7AA81D0, MEMORY[0x1E697C520]);
  return swift_getWitnessTable();
}

uint64_t sub_1B796FD24(uint64_t a1)
{
  v1 = sub_1B7A97B40();
  sub_1B7A6BAF0(v1, v2, v3);
  return swift_getWitnessTable();
}

uint64_t sub_1B796FD8C()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 32);
  v11[0] = *(v0 + 16);
  v10 = *&v11[0];
  v3 = *(v0 + 48);
  v11[1] = v2;
  v11[2] = v3;
  v12 = v1;
  v4 = type metadata accessor for TaskView(0, v11);
  v5 = v0 + ((*(*(v4 - 8) + 80) + 72) & ~*(*(v4 - 8) + 80));

  v6 = (v5 + *(v4 + 76));
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8 = sub_1B7A9A100();
  if (!(*(*(v8 - 8) + 48))(v6, 1, v8))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
    }

    else
    {
      (*(*(v10 - 8) + 8))(v6 + *(TupleTypeMetadata2 + 48), v10);
    }
  }

  sub_1B7A9AB60();
  sub_1B7A98700();

  return swift_deallocObject();
}

uint64_t sub_1B796FFA8()
{

  return swift_deallocObject();
}

uint64_t sub_1B796FFF0(uint64_t *a1)
{
  v2 = a1[3];
  v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47EA8, &qword_1B7AA17A8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47E78, &qword_1B7AA16A0);
  v4 = sub_1B7A97590();
  v11 = v2;
  v12 = sub_1B797EC34(&qword_1EBA47E80, &qword_1EBA47E78, &qword_1B7AA16A0, MEMORY[0x1E6980A18]);
  WitnessTable = swift_getWitnessTable();
  v7[0] = v3;
  v7[1] = v4;
  v8 = *(a1 + 1);
  v9 = WitnessTable;
  v10 = *(a1 + 2);
  type metadata accessor for _ResultView(255, v7);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA46788, &unk_1B7A9D6E0);
  sub_1B7A97B40();
  swift_getWitnessTable();
  sub_1B797EC34(&qword_1EBA46790, &qword_1EBA46788, &unk_1B7A9D6E0, &protocol conformance descriptor for _RequirementFailureView<A, B>);
  return swift_getWitnessTable();
}

uint64_t sub_1B79701D8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA49D80, &qword_1B7AA8558);
  sub_1B7A97BD0();
  sub_1B797EC34(qword_1EBA49D90, &qword_1EBA49D80, &qword_1B7AA8558, MEMORY[0x1E697D680]);
  sub_1B7A6FFB8(qword_1EBA47CD0, MEMORY[0x1E697C720], MEMORY[0x1E697C718]);
  return swift_getOpaqueTypeConformance2();
}

double sub_1B7970334@<D0>(_OWORD *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  sub_1B7A7282C(a2, a3, a4);
  sub_1B7A97890();
  result = *&v6;
  *a1 = v6;
  return result;
}

uint64_t sub_1B7970388()
{
  (*(*(*(v0 + 16) - 8) + 8))(v0 + ((*(*(*(v0 + 16) - 8) + 80) + 32) & ~*(*(*(v0 + 16) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t sub_1B7970408()
{

  return swift_deallocObject();
}

uint64_t sub_1B7970448()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 40));

  return swift_deallocObject();
}

uint64_t sub_1B7970490()
{

  return swift_deallocObject();
}

uint64_t sub_1B79704CC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45CF0, &qword_1B7A9D560);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1B7970588(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45CF0, &qword_1B7A9D560);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B7970638(void *a1)
{
  sub_1B7A98770();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA46DE0, &qword_1B7A9E760);
  sub_1B7A97590();
  swift_getWitnessTable();
  sub_1B797EC34(&qword_1EBA46DD8, &qword_1EBA46DE0, &qword_1B7A9E760, MEMORY[0x1E6980B30]);
  return swift_getWitnessTable();
}

uint64_t sub_1B7970710(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA49EF8, &unk_1B7AA8960);
  sub_1B7A97590();
  sub_1B797EC34(&qword_1EBA49F00, &qword_1EBA49EF8, &unk_1B7AA8960, MEMORY[0x1E6980A18]);
  return swift_getWitnessTable();
}

uint64_t sub_1B79707BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B7A96FC0();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B7970828(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B7A96FC0();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B7970898(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47018, &qword_1B7A9EFA0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 36));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1B7970960(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47018, &qword_1B7A9EFA0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1B7970A24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for ActionButton(0, *(v4 + 16), *(v4 + 24), a4);
  v6 = v4 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80));
  __swift_destroy_boxed_opaque_existential_1(v6);
  if (*(v6 + 64))
  {
    __swift_destroy_boxed_opaque_existential_1((v6 + 40));
  }

  if (*(v6 + 120))
  {
    if (*(v6 + 104))
    {
      __swift_destroy_boxed_opaque_existential_1((v6 + 80));
    }
  }

  else
  {
  }

  v7 = *(v5 + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45C98, &unk_1B7AA0460);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1B7A99900();
    (*(*(v8 - 8) + 8))(v6 + v7, v8);
  }

  else
  {
  }

  sub_1B79D7360(*(v6 + *(v5 + 48)), *(v6 + *(v5 + 48) + 8), *(v6 + *(v5 + 48) + 16));

  return swift_deallocObject();
}

uint64_t sub_1B7970BBC(void *a1)
{
  v1 = sub_1B7A97590();
  sub_1B7A72938(v1, v2, v3);
  return swift_getWitnessTable();
}

uint64_t sub_1B7970C20()
{

  return swift_deallocObject();
}

uint64_t sub_1B7970C58()
{

  j__swift_release(*(v0 + 40));

  return swift_deallocObject();
}

uint64_t sub_1B7970CA8()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 32);
  v10[0] = *(v0 + 16);
  v9 = *&v10[0];
  v3 = *(v0 + 48);
  v10[1] = v2;
  v10[2] = v3;
  v11 = v1;
  v4 = type metadata accessor for _FlowToastView(0, v10);
  v5 = v0 + ((*(*(v4 - 8) + 80) + 72) & ~*(*(v4 - 8) + 80));

  v6 = *(v4 + 76);
  v7 = *(v9 - 8);
  if (!(*(v7 + 48))(v5 + v6, 1, v9))
  {
    (*(v7 + 8))(v5 + v6, v9);
  }

  return swift_deallocObject();
}

uint64_t sub_1B7970E2C(uint64_t a1)
{
  v1 = *(a1 + 24);
  v7 = *(a1 + 8);
  v8 = v1;
  v9 = *(a1 + 40);
  type metadata accessor for _FlowToastContentView(255, &v7);
  sub_1B7A97590();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA4A0A0, &unk_1B7AA8C88);
  sub_1B7A97590();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA46CE0, &unk_1B7AA6E40);
  sub_1B7A97590();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1B797EC34(&qword_1EBA4A0A8, &qword_1EBA4A0A0, &unk_1B7AA8C88, MEMORY[0x1E697F940]);
  swift_getWitnessTable();
  sub_1B797EC34(&qword_1EBA46CD8, &qword_1EBA46CE0, &unk_1B7AA6E40, MEMORY[0x1E697FDC0]);
  swift_getWitnessTable();
  v2 = sub_1B7A98770();
  v3 = sub_1B7A97640();
  WitnessTable = swift_getWitnessTable();
  v5 = sub_1B7A76AC4(&qword_1EBA4A0B0, MEMORY[0x1E697C248], MEMORY[0x1E697C240]);
  *&v7 = v2;
  *(&v7 + 1) = v3;
  *&v8 = WitnessTable;
  *(&v8 + 1) = v5;
  swift_getOpaqueTypeMetadata2();
  sub_1B7A9AB60();
  sub_1B7A985B0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA4A0B8, &unk_1B7AA8C98);
  sub_1B7A97590();
  *&v7 = v2;
  *(&v7 + 1) = v3;
  *&v8 = WitnessTable;
  *(&v8 + 1) = v5;
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1B797EC34(&qword_1EBA4A0C0, &qword_1EBA4A0B8, &unk_1B7AA8C98, MEMORY[0x1E697F548]);
  return swift_getWitnessTable();
}

uint64_t sub_1B7971170(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA4A168, &unk_1B7AA8D80);
  sub_1B7A97590();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47CC0, &unk_1B7AA7590);
  sub_1B7A97590();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47438, &unk_1B7A9F630);
  sub_1B7A97590();
  sub_1B7A97590();
  sub_1B7A97590();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA49000, &qword_1B7AA52E0);
  sub_1B7A97590();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47CC8, &unk_1B7AA0FE0);
  sub_1B7A97590();
  sub_1B7A97590();
  sub_1B7A97590();
  sub_1B7A97590();
  sub_1B7A97590();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47450, &unk_1B7AA52F0);
  sub_1B7A97590();
  sub_1B7A97590();
  sub_1B7A97590();
  swift_getTupleTypeMetadata3();
  sub_1B7A98AC0();
  swift_getWitnessTable();
  sub_1B7A987E0();
  sub_1B7A97590();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1B7971400(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ImpressionableLayoutItemViewModifier(255, a1[1], a1[3], a4);
  sub_1B7A97590();
  type metadata accessor for ClickLocationViewModifier(255);
  sub_1B7A97590();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1B7957C04(&qword_1EDC0FF40, type metadata accessor for ClickLocationViewModifier, &unk_1B7A9EEA8);
  return swift_getWitnessTable();
}

uint64_t sub_1B7971500(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA48018, &qword_1B7AA1D18);
  sub_1B7A97590();
  type metadata accessor for ClickLocationViewModifier(255);
  sub_1B7A97590();
  sub_1B797EC34(&qword_1EBA48030, &qword_1EBA48018, &qword_1B7AA1D18, &unk_1B7AA8F50);
  swift_getWitnessTable();
  sub_1B7957C04(&qword_1EDC0FF40, type metadata accessor for ClickLocationViewModifier, &unk_1B7A9EEA8);
  return swift_getWitnessTable();
}

uint64_t sub_1B7971620(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ImpressionableLayoutViewModifier(255, a1[1], a1[3], a4);
  sub_1B7A97590();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1B79716B4(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47F70, &qword_1B7AA1CB0);
  sub_1B7A97590();
  sub_1B797EC34(&qword_1EBA47F78, &qword_1EBA47F70, &qword_1B7AA1CB0, &unk_1B7AA8F00);
  return swift_getWitnessTable();
}

uint64_t sub_1B7971764(char *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45C90, &qword_1B7A9C190);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[9];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(&a1[v11], a2, v9);
  }

  v12 = sub_1B7A99A20();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[10];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45CF0, &qword_1B7A9D560);
  v15 = *(*(v14 - 8) + 48);
  v16 = &a1[a3[14]];

  return v15(v16, a2, v14);
}

char *sub_1B79718E8(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45C90, &qword_1B7A9C190);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[9];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = sub_1B7A99A20();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[10];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45CF0, &qword_1B7A9D560);
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[14]];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_1B7971A74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = type metadata accessor for ImpressionableLayoutItemViewModifier(0, v5, *(v4 + 24), a4);
  v7 = v4 + ((*(*(v6 - 1) + 80) + 32) & ~*(*(v6 - 1) + 80));
  (*(*(v5 - 8) + 8))(v7, v5);
  v8 = v6[9];
  v9 = sub_1B7A99670();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v7 + v8, 1, v9))
  {
    (*(v10 + 8))(v7 + v8, v9);
  }

  v11 = v7 + v6[11];
  v12 = sub_1B7A96C20();
  v13 = *(v12 - 8);
  v14 = *(v13 + 8);
  v14(v11, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45CF8, &unk_1B7A9C2E0);

  v15 = v6[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45CA0, &unk_1B7A9C240);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    if (!(*(v13 + 48))(v7 + v15, 1, v12))
    {
      v14(v7 + v15, v12);
    }
  }

  else
  {
  }

  v16 = v6[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45C98, &unk_1B7AA0460);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = sub_1B7A99900();
    (*(*(v17 - 8) + 8))(v7 + v16, v17);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1B7971D64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B7A99670();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_1B7A996F0();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1B7971E54(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1B7A99670();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_1B7A996F0();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1B7971F50(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45C90, &qword_1B7A9C190);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_1B7A99A20();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[9];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45D38, &unk_1B7AA4740);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[14];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[16]);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

uint64_t sub_1B79720BC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45C90, &qword_1B7A9C190);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_1B7A99A20();
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[9];
    }

    else
    {
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45D38, &unk_1B7AA4740);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[16]) = (a2 - 1);
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[14];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1B7972224(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[1];
  type metadata accessor for ImpressionableLayoutItemViewModifier(255, *a1, v5, a4);
  swift_getWitnessTable();
  sub_1B7A97C30();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA45DB8, &qword_1B7AA8FA0);
  sub_1B7A97590();
  type metadata accessor for _ImpressionableLayoutItemViewModifier(255, v4, v5, v6);
  sub_1B7A97590();
  swift_getWitnessTable();
  sub_1B797EC34(&qword_1EDC0EB28, &qword_1EBA45DB8, &qword_1B7AA8FA0, MEMORY[0x1E6980B30]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1B797239C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[1];
  type metadata accessor for ImpressionableLayoutViewModifier(255, *a1, v5, a4);
  swift_getWitnessTable();
  sub_1B7A97C30();
  type metadata accessor for _ImpressionableLayoutViewModifier(255, v4, v5, v6);
  sub_1B7A97590();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1B7972498()
{

  return swift_deallocObject();
}

uint64_t sub_1B79724D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for _ImpressionableLayoutViewModifier(0, *(v4 + 16), *(v4 + 24), a4);
  v6 = *(*(v5 - 1) + 80);
  v20 = *(*(v5 - 1) + 64);
  v21 = sub_1B7A96BF0();
  v8 = *(v21 - 8);
  v9 = *(v8 + 80);

  v7 = (v6 + 40) & ~v6;
  v10 = v4 + v7;
  v11 = sub_1B7A99670();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v4 + v7, 1, v11))
  {
    (*(v12 + 8))(v4 + v7, v11);
  }

  v13 = v5[9];
  v14 = sub_1B7A99A20();
  v15 = *(*(v14 - 8) + 8);
  v15(v10 + v13, v14);
  v15(v10 + v5[11], v14);
  swift_unknownObjectRelease();
  v16 = v5[14];
  v17 = sub_1B7A99DB0();
  v18 = *(v17 - 8);
  if (!(*(v18 + 48))(v10 + v16, 1, v17))
  {
    (*(v18 + 8))(v10 + v16, v17);
  }

  j_j__swift_release(*(v10 + v5[15]));

  swift_unknownObjectRelease();
  (*(v8 + 8))(v4 + ((((v20 + ((v6 + 40) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + v9 + 16) & ~v9), v21);

  return swift_deallocObject();
}

uint64_t sub_1B79727E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for _ImpressionableLayoutViewModifier(0, *(v4 + 16), *(v4 + 24), a4);
  v6 = (*(*(v5 - 1) + 80) + 32) & ~*(*(v5 - 1) + 80);
  v7 = v4 + v6;
  v8 = sub_1B7A99670();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v4 + v6, 1, v8))
  {
    (*(v9 + 8))(v4 + v6, v8);
  }

  v10 = v5[9];
  v11 = sub_1B7A99A20();
  v12 = *(*(v11 - 8) + 8);
  v12(v7 + v10, v11);
  v12(v7 + v5[11], v11);
  swift_unknownObjectRelease();
  v13 = v5[14];
  v14 = sub_1B7A99DB0();
  v15 = *(v14 - 8);
  if (!(*(v15 + 48))(v7 + v13, 1, v14))
  {
    (*(v15 + 8))(v7 + v13, v14);
  }

  j_j__swift_release(*(v7 + v5[15]));

  return swift_deallocObject();
}

uint64_t sub_1B7972A40(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[1];
  type metadata accessor for _ImpressionableLayoutItemViewModifier(255, *a1, v5, a4);
  swift_getWitnessTable();
  sub_1B7A97C30();
  type metadata accessor for ImpressionPreferenceKey(255, v4, v5, v6);
  swift_getWitnessTable();
  sub_1B7A97DB0();
  sub_1B7A97590();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1B7972B6C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  v4 = a1[1];
  type metadata accessor for _ImpressionableLayoutViewModifier(255, *a1, v4, a4);
  swift_getWitnessTable();
  v6 = sub_1B7A97C30();
  type metadata accessor for ImpressionableViewModifier(255);
  sub_1B7A97590();
  type metadata accessor for ClickLocationViewModifier(255);
  sub_1B7A97590();
  sub_1B7A97590();
  type metadata accessor for _OnScenePhaseChange(255);
  sub_1B7A97590();
  sub_1B7A97B40();
  type metadata accessor for ImpressionPreferenceKey(255, v5, v4, v7);
  swift_getWitnessTable();
  type metadata accessor for LayoutItemImpressionInformation(255);
  sub_1B7A9A3C0();
  v30 = sub_1B7957C04(&qword_1EBA4A3A0, type metadata accessor for LayoutItemImpressionInformation, &unk_1B7AA90F0);
  swift_getWitnessTable();
  sub_1B7A97D70();
  v8 = sub_1B7A97590();
  WitnessTable = swift_getWitnessTable();
  v29 = sub_1B7957C04(qword_1EDC0F568, type metadata accessor for ImpressionableViewModifier, &unk_1B7A9C43C);
  v26 = swift_getWitnessTable();
  v27 = sub_1B7957C04(&qword_1EDC0FF40, type metadata accessor for ClickLocationViewModifier, &unk_1B7A9EEA8);
  v24 = swift_getWitnessTable();
  v25 = sub_1B797D440(v24, v9, v10);
  v11 = swift_getWitnessTable();
  v22 = v24;
  v23 = sub_1B7957C04(&qword_1EDC10978, type metadata accessor for _OnScenePhaseChange, &unk_1B7AA0978);
  v20 = v11;
  v21 = swift_getWitnessTable();
  v18 = swift_getWitnessTable();
  v19 = swift_getWitnessTable();
  v12 = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  v14 = v6;
  v15 = MEMORY[0x1E6981148];
  v16 = WitnessTable;
  v17 = MEMORY[0x1E6981138];
  type metadata accessor for _RequirementFailureView(255, &v14);
  sub_1B7A97B40();
  sub_1B7A97B40();
  v14 = v8;
  v15 = v5;
  v16 = v12;
  v17 = v4;
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1B7972FE0()
{

  return swift_deallocObject();
}

uint64_t sub_1B797301C()
{

  return swift_deallocObject();
}

uint64_t sub_1B797305C(uint64_t *a1)
{
  sub_1B7A986B0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA47438, &unk_1B7A9F630);
  sub_1B7A97590();
  sub_1B7A97590();
  sub_1B7A97C80();
  swift_getWitnessTable();
  sub_1B7A817E4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1B7A81848();
  swift_getOpaqueTypeMetadata2();
  sub_1B7A97D00();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_1B7A97B40();
  swift_getOpaqueTypeConformance2();
  return swift_getWitnessTable();
}

void *sub_1B7973274@<X0>(void *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  sub_1B7A82210(a2, a3, a4);
  result = sub_1B7A97890();
  *a1 = v6;
  return result;
}

uint64_t sub_1B79732C8(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA4A448, &qword_1B7AA9318);
  sub_1B7A97590();
  sub_1B797EC34(&qword_1EBA4A450, &qword_1EBA4A448, &qword_1B7AA9318, MEMORY[0x1E6980A18]);
  return swift_getWitnessTable();
}

uint64_t sub_1B7973434()
{

  return swift_deallocObject();
}

uint64_t sub_1B797346C()
{

  return swift_deallocObject();
}

uint64_t sub_1B79734C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B7A98F40();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1B7973530(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B7A98F40();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1B79735A0(_OWORD *a1)
{
  v1 = a1[1];
  v3[0] = *a1;
  v3[1] = v1;
  _s22_CacheProtocolModifierVMa(255, v3);
  return swift_getWitnessTable();
}

uint64_t sub_1B79735EC()
{
  v12 = *(v0 + 32);
  v14[0] = *(v0 + 16);
  v13 = *&v14[0];
  v14[1] = v12;
  v1 = *(_s22_CacheProtocolModifierVMa(0, v14) - 8);
  v2 = (*(v1 + 80) + 56) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = (type metadata accessor for MediaArtwork.ProtocolRequest(0, AssociatedTypeWitness, v5, v6) - 8);
  v8 = (v3 + *(*v7 + 80)) & ~*(*v7 + 80);

  (*(*(v13 - 8) + 8))(v0 + v2, v13);
  swift_unknownObjectRelease();

  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v8 + v7[9], AssociatedTypeWitness);
  v9 = v7[12];
  v10 = sub_1B7A97580();
  (*(*(v10 - 8) + 8))(v0 + v8 + v9, v10);

  return swift_deallocObject();
}

uint64_t sub_1B797380C()
{
  v12 = *(v0 + 32);
  v14[0] = *(v0 + 16);
  v13 = *&v14[0];
  v14[1] = v12;
  v1 = *(_s22_CacheProtocolModifierVMa(0, v14) - 8);
  v2 = (*(v1 + 80) + 48) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = (type metadata accessor for MediaArtwork.ProtocolRequest(0, AssociatedTypeWitness, v5, v6) - 8);
  v8 = (v3 + *(*v7 + 80)) & ~*(*v7 + 80);
  (*(*(v13 - 8) + 8))(v0 + v2, v13);
  swift_unknownObjectRelease();

  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v8 + v7[9], AssociatedTypeWitness);
  v9 = v7[12];
  v10 = sub_1B7A97580();
  (*(*(v10 - 8) + 8))(v0 + v8 + v9, v10);

  return swift_deallocObject();
}

uint64_t sub_1B7973A24(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1B7A99080();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1B7973AD0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1B7A99080();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B7973B74()
{
  v1 = (_s22_OneShotActionProtocolVMa(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = v2 + *(*v1 + 64);
  v4 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA47AB0, &unk_1B7AA07A0) - 8);
  v5 = (v3 + *(*v4 + 80)) & ~*(*v4 + 80);

  v6 = v1[7];
  v7 = sub_1B7A99080();
  (*(*(v7 - 8) + 8))(v0 + v2 + v6, v7);

  v8 = v4[9];
  v9 = sub_1B7A99050();
  (*(*(v9 - 8) + 8))(v0 + v5 + v8, v9);
  v10 = v4[12];
  v11 = sub_1B7A97580();
  (*(*(v11 - 8) + 8))(v0 + v5 + v10, v11);

  return swift_deallocObject();
}

uint64_t sub_1B7973D60()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1B7973DA0()
{

  return swift_deallocObject();
}

uint64_t sub_1B7973DEC()
{
  v12 = *(v0 + 16);
  v1 = *(v12 - 8);
  v11 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v2 = (*(v1 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v3 = sub_1B7A97580();
  v4 = *(v3 - 8);
  v5 = (v2 + *(v4 + 80) + 9) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = sub_1B7A9A7E0();
  v8 = *(v7 - 8);
  v9 = (v5 + v6 + *(v8 + 80)) & ~*(v8 + 80);

  (*(v1 + 8))(v0 + v11, v12);
  (*(v4 + 8))(v0 + v5, v3);
  (*(v8 + 8))(v0 + v9, v7);

  return swift_deallocObject();
}

uint64_t sub_1B7973FD0()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = (type metadata accessor for MediaArtwork.ProtocolRequest(0, AssociatedTypeWitness, v6, v7) - 8);
  v9 = (v4 + *(*v8 + 80)) & ~*(*v8 + 80);
  (*(v2 + 8))(v0 + v3, v1);

  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v9 + v8[9], AssociatedTypeWitness);
  v10 = v8[12];
  v11 = sub_1B7A97580();
  (*(*(v11 - 8) + 8))(v0 + v9 + v10, v11);

  return swift_deallocObject();
}

uint64_t sub_1B79741A0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for IntentImplementationViewModifier(255, a1[1], a1[3], a4);
  sub_1B7A97590();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1B797423C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for IntentImplementationViewModifier(255, *a1, a1[1], a4);
  swift_getWitnessTable();
  v4 = sub_1B7A97C30();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA46B88, &qword_1B7AA9E50);
  sub_1B7A97590();
  WitnessTable = swift_getWitnessTable();
  v7[0] = v4;
  v7[1] = MEMORY[0x1E6981148];
  v7[2] = WitnessTable;
  v7[3] = MEMORY[0x1E6981138];
  type metadata accessor for _RequirementFailureView(255, v7);
  sub_1B7A97B40();
  sub_1B7A660E8();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1B7974398@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B7A8FC14();
  *a1 = result;
  return result;
}

__n128 sub_1B79743FC(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_1B7974454(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for OnDeepLinkViewModifier(255, a1[1], a1[3], a4);
  sub_1B7A97590();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1B79744E8(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA4AA28, &qword_1B7AAA288);
  sub_1B7A97590();
  sub_1B797EC34(qword_1EBA4AA30, &qword_1EBA4AA28, &qword_1B7AAA288, &unk_1B7AAA2C0);
  return swift_getWitnessTable();
}

uint64_t sub_1B7974594(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45CF0, &qword_1B7A9D560);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 52);

    return v9(v10, a2, v8);
  }
}

void *sub_1B7974650(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45CF0, &qword_1B7A9D560);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 52);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B7974700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for OnDeepLinkViewModifier(0, *(v4 + 16), *(v4 + 24), a4);
  v6 = (*(*(v5 - 8) + 80) + 56) & ~*(*(v5 - 8) + 80);
  v7 = *(*(v5 - 8) + 64);

  v8 = v4 + v6;

  j__swift_release(*(v4 + v6 + 32));
  j__swift_release(*(v4 + v6 + 48));
  if (*(v4 + v6 + 104))
  {
    if (*(v8 + 88))
    {
      __swift_destroy_boxed_opaque_existential_1((v8 + 64));
    }
  }

  else
  {
  }

  v9 = *(v5 + 52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA45C98, &unk_1B7AA0460);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_1B7A99900();
    (*(*(v10 - 8) + 8))(v8 + v9, v10);
  }

  else
  {
  }

  __swift_destroy_boxed_opaque_existential_1((v4 + ((((v7 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));

  return swift_deallocObject();
}

uint64_t sub_1B797489C()
{
  v1 = sub_1B7A9A1C0();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1B7974980(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for OnDeepLinkViewModifier(255, *a1, a1[1], a4);
  swift_getWitnessTable();
  v4 = sub_1B7A97C30();
  sub_1B7A97360();
  sub_1B7A97590();
  WitnessTable = swift_getWitnessTable();
  v7[0] = v4;
  v7[1] = MEMORY[0x1E6981148];
  v7[2] = WitnessTable;
  v7[3] = MEMORY[0x1E6981138];
  type metadata accessor for _RequirementFailureView(255, v7);
  sub_1B7A97B40();
  sub_1B7A97B40();
  sub_1B7A73928();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1B7974B08(void *a1)
{
  swift_getAssociatedTypeWitness();

  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_1B7974B84(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1B7974BC0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B7A96EC0();
  *a1 = result;
  return result;
}

uint64_t sub_1B7974C44(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_1B7974C70()
{
  result = qword_1EBA45BB0;
  if (!qword_1EBA45BB0)
  {
    sub_1B7A97500();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA45BB0);
  }

  return result;
}

uint64_t sub_1B7974CBC@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v35 = a5;
  v36 = a6;
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v37 = a8;
    v38 = a3;
    v39 = a7;
    v40 = a9;
    v41 = a10;
    v42 = a11;
    v18 = sub_1B7A97500();
    v19 = *(v18 - 8);
    MEMORY[0x1EEE9AC00](v18);
    v21 = &v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (!a2)
    {
      v44[0] = 0;
      v44[1] = 0xE000000000000000;
      v34 = v11;
      sub_1B7A9AC50();

      strcpy(v44, "View.task @ ");
      BYTE5(v44[1]) = 0;
      HIWORD(v44[1]) = -5120;
      MEMORY[0x1B8CAB750](a4, v35);
      MEMORY[0x1B8CAB750](58, 0xE100000000000000);
      v43 = v36;
      v29 = sub_1B7A9AE20();
      MEMORY[0x1B8CAB750](v29);
    }

    v30 = sub_1B7A9A7E0();
    v31 = MEMORY[0x1EEE9AC00](v30);
    (*(v33 + 16))(&v34 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0), v38, v31);

    sub_1B7A974F0();
    MEMORY[0x1B8CA96D0](v21, v41, v18, v42);

    return (*(v19 + 8))(v21, v18);
  }

  else
  {
    v22 = sub_1B7A97360();
    MEMORY[0x1EEE9AC00](v22);
    v24 = &v34 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
    v26 = *(v25 + 20);
    v27 = sub_1B7A9A7E0();
    (*(*(v27 - 8) + 16))(&v24[v26], a3, v27);
    *v24 = a7;
    *(v24 + 1) = a8;
    MEMORY[0x1B8CA96D0](v24, a10, v22, a11);
    return sub_1B7975024(v24);
  }
}

uint64_t sub_1B7975024(uint64_t a1)
{
  v2 = sub_1B7A97360();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B7975080@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_1B7A98710();
  v2 = *MEMORY[0x1E697C8C0];
  v3 = sub_1B7A97CD0();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1B79750FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  if (a3 == 4)
  {
    v4 = 0;
  }

  else
  {
    v8 = a1;
    v5 = a2;
    v6 = MEMORY[0x1B8CA9180](a3);
    a2 = v5;
    v4 = v6;
    a1 = v8;
  }

  return MEMORY[0x1EEDDBC40](a1, a2, v4 | ((v3 == 4) << 8));
}

uint64_t sub_1B79751D0(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18 = a5;
  v9 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1B7A97D10();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v18 - v15;
  (*(v9 + 16))(v11, a1, a4, v14);
  (*(v9 + 32))(v16, v11, a4);
  v16[*(v12 + 36)] = a2;
  MEMORY[0x1B8CA96D0](v16, a3, v12, v18);
  return (*(v13 + 8))(v16, v12);
}

uint64_t sub_1B797542C(uint64_t a1, uint64_t a2)
{
  sub_1B7A9AF80();
  swift_getWitnessTable();
  sub_1B7A96D10();
  return sub_1B7A9AFA0();
}

uint64_t sub_1B797549C(uint64_t a1, id *a2)
{
  result = sub_1B7A9A490();
  *a2 = 0;
  return result;
}

uint64_t sub_1B7975514(uint64_t a1, id *a2)
{
  v3 = sub_1B7A9A4A0();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1B7975594@<X0>(uint64_t *a2@<X8>)
{
  sub_1B7A9A4B0();
  v3 = sub_1B7A9A480();

  *a2 = v3;
  return result;
}

uint64_t sub_1B79755D8(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6C290](v4, v5, a3, WitnessTable);
}

uint64_t sub_1B7975644@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_1B7A9A480();

  *a2 = v3;
  return result;
}

uint64_t sub_1B797568C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B7A9A4B0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1B79756B8(uint64_t a1)
{
  v2 = sub_1B7975E58(&qword_1EBA45C80, type metadata accessor for Name, &unk_1B7A9C040);
  v3 = sub_1B7975E58(&qword_1EBA45C88, type metadata accessor for Name, &unk_1B7A9BFE0);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1B7975774()
{
  v0 = sub_1B7A9A4B0();
  v1 = MEMORY[0x1B8CAB770](v0);

  return v1;
}

uint64_t sub_1B79757B0(uint64_t a1)
{
  sub_1B7A9A4B0();
  sub_1B7A9A500();
}

uint64_t sub_1B7975804()
{
  sub_1B7A9A4B0();
  sub_1B7A9AF80();
  sub_1B7A9A500();
  v0 = sub_1B7A9AFA0();

  return v0;
}

uint64_t sub_1B7975878(void *a1, uint64_t *a2)
{
  v2 = sub_1B7A9A4B0();
  v4 = v3;
  if (v2 == sub_1B7A9A4B0() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1B7A9AE80();
  }

  return v7 & 1;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1B7975920(uint64_t a1)
{
  result = sub_1B7A98700();
  if (v2 <= 0x3F)
  {
    result = sub_1B7A98870();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B79759A0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = *(v3 + 64);
  v5 = ((v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v6 = ((*(v3 + 80) + 16) & ~*(v3 + 80)) + v4;
  if (v6 <= v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_26;
  }

  v8 = v7 + 1;
  v9 = 8 * (v7 + 1);
  if ((v7 + 1) <= 3)
  {
    v12 = ((a2 + ~(-1 << v9) - 254) >> v9) + 1;
    if (HIWORD(v12))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v12 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v12 < 2)
    {
LABEL_26:
      v14 = *(a1 + v7);
      if (v14 >= 2)
      {
        return (v14 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_26;
  }

LABEL_15:
  v13 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v13 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return (v8 | v13) + 255;
}

void sub_1B7975AFC(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 64);
  v7 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v8 = ((*(v5 + 80) + 16) & ~*(v5 + 80)) + v6;
  if (v8 <= v7)
  {
    v8 = v7;
  }

  v9 = v8 + 1;
  if (a3 < 0xFF)
  {
    v10 = 0;
  }

  else if (v9 <= 3)
  {
    v13 = ((a3 + ~(-1 << (8 * v9)) - 254) >> (8 * v9)) + 1;
    if (HIWORD(v13))
    {
      v10 = 4;
    }

    else
    {
      if (v13 < 0x100)
      {
        v14 = 1;
      }

      else
      {
        v14 = 2;
      }

      if (v13 >= 2)
      {
        v10 = v14;
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

  if (a2 > 0xFE)
  {
    v11 = a2 - 255;
    if (v9 >= 4)
    {
      bzero(a1, v8 + 1);
      *a1 = v11;
      v12 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v12 = (v11 >> (8 * v9)) + 1;
    if (v8 != -1)
    {
      v15 = v11 & ~(-1 << (8 * v9));
      bzero(a1, v9);
      if (v9 != 3)
      {
        if (v9 == 2)
        {
          *a1 = v15;
          if (v10 > 1)
          {
LABEL_39:
            if (v10 == 2)
            {
              *&a1[v9] = v12;
            }

            else
            {
              *&a1[v9] = v12;
            }

            return;
          }
        }

        else
        {
          *a1 = v11;
          if (v10 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v10)
        {
          a1[v9] = v12;
        }

        return;
      }

      *a1 = v15;
      a1[2] = BYTE2(v15);
    }

    if (v10 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v10 <= 1)
  {
    if (v10)
    {
      a1[v9] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v8] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v10 == 2)
  {
    *&a1[v9] = 0;
    goto LABEL_24;
  }

  *&a1[v9] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t sub_1B7975D48(uint64_t a1, int a2)
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

uint64_t sub_1B7975D68(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1B7975D9C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B7975DBC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 32) = v3;
  return result;
}