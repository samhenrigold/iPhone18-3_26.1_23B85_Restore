uint64_t sub_27527A618@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v20 = a2;
  v21 = a3;
  v24 = a4;
  v25 = a1;
  v7 = sub_2752881B4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v23 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v20 - v11;
  v22 = *(v8 + 16);
  v22(&v20 - v11, a1, v7);
  v13 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  v15 = *(v8 + 32);
  v15(v14 + v13, v12, v7);
  v16 = v23;
  v22(v23, v25, v7);
  v17 = swift_allocObject();
  v18 = v21;
  *(v17 + 16) = v20;
  *(v17 + 24) = v18;
  v15(v17 + v13, v16, v7);
  sub_275288274();
  return (*(v8 + 8))(v25, v7);
}

uint64_t sub_27527A820@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v4 = *(a2 + 8);
  a3[3] = a1;
  a3[4] = v4;
  __swift_allocate_boxed_opaque_existential_1(a3);
  v5 = sub_2752881B4();
  return MEMORY[0x277C71C30](v5);
}

uint64_t sub_27527A878@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  sub_2752881B4();

  return sub_27527A820(v3, v4, a1);
}

uint64_t sub_27527A900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_275288534();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v21[-v9 - 8];
  v11 = *(a3 - 8);
  v12 = MEMORY[0x28223BE20](v8);
  v14 = &v21[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x28223BE20](v12);
  v16 = &v21[-v15 - 8];
  sub_27527AD14(a1, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B9F20, &qword_275288BB8);
  v17 = swift_dynamicCast();
  v18 = *(v11 + 56);
  if (v17)
  {
    v18(v10, 0, 1, a3);
    (*(v11 + 32))(v16, v10, a3);
    (*(v11 + 16))(v14, v16, a3);
    sub_2752881B4();
    sub_2752881A4();
    return (*(v11 + 8))(v16, a3);
  }

  else
  {
    v18(v10, 1, 1, a3);
    (*(v7 + 8))(v10, v6);
    sub_275288324();
    sub_2752881B4();
    return sub_2752881A4();
  }
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 16);
  v2 = (sub_2752881B4() - 8);
  v3 = v0 + ((*(*v2 + 80) + 32) & ~*(*v2 + 80));

  (*(*(v1 - 8) + 8))(v3 + v2[10], v1);

  return swift_deallocObject();
}

uint64_t sub_27527AC8C(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(sub_2752881B4() - 8);
  v6 = v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return sub_27527A900(a1, v6, v3, v4);
}

uint64_t sub_27527AD14(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
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

uint64_t JUComponentView.init(presenting:for:with:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 32))(a5, a1, AssociatedTypeWitness);
  v12 = *(type metadata accessor for JUComponentView(0, a3, a4, v11) + 36);
  swift_getAssociatedTypeWitness();
  v13 = sub_2752881B4();
  v14 = *(*(v13 - 8) + 32);

  return v14(a5 + v12, a2, v13);
}

uint64_t sub_27527AF54(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  swift_getAssociatedTypeWitness();
  v3 = sub_2752881B4();
  return a2(v3);
}

uint64_t sub_27527AFBC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v3;
  v7 = *(*v3 + 112);
  swift_beginAccess();

  result = sub_27527B2D8(v8);
  v36 = result;
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = a1 + 32;
    do
    {
      sub_27527AD14(v11, v33);
      __swift_project_boxed_opaque_existential_1(v33, v34);
      v16 = sub_275287E54();
      swift_unknownObjectRelease();
      swift_beginAccess();
      if (!*(*(v3 + v7) + 16) || (sub_27527D858(v16), (v17 & 1) == 0))
      {
        swift_endAccess();
        v12 = v34;
        v13 = v35;
        __swift_project_boxed_opaque_existential_1(v33, v34);
        v14 = sub_27527B3D0(a2, v12, *(v6 + 80), v13, *(v6 + 88));
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v32 = *(v3 + v7);
        *(v3 + v7) = 0x8000000000000000;
        sub_27527E6E8(v14, v16, isUniquelyReferenced_nonNull_native);
        *(v3 + v7) = v32;
      }

      swift_endAccess();
      sub_27527D9EC(v16);
      result = __swift_destroy_boxed_opaque_existential_1(v33);
      v11 += 40;
      --v10;
    }

    while (v10);
    v18 = v36;
  }

  else
  {
    v18 = result;
  }

  v19 = 0;
  v20 = 1 << *(v18 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & *(v18 + 56);
  for (i = (v20 + 63) >> 6; v22; result = )
  {
LABEL_19:
    while (1)
    {
      v25 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
      v26 = *(*(v18 + 48) + ((v19 << 9) | (8 * v25)));
      swift_beginAccess();
      v27 = sub_27527D858(v26);
      if (v28)
      {
        break;
      }

      result = swift_endAccess();
      if (!v22)
      {
        goto LABEL_15;
      }
    }

    v29 = v27;
    v30 = swift_isUniquelyReferenced_nonNull_native();
    v31 = *(v3 + v7);
    *(v3 + v7) = 0x8000000000000000;
    if (!v30)
    {
      sub_27527DEB4();
    }

    sub_27527DD44(v29, v31);
    *(v3 + v7) = v31;
    swift_endAccess();
    sub_275288444();
  }

LABEL_15:
  while (1)
  {
    v24 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v24 >= i)
    {
    }

    v22 = *(v18 + 56 + 8 * v24);
    ++v19;
    if (v22)
    {
      v19 = v24;
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_27527B2D8(uint64_t a1)
{
  result = MEMORY[0x277C71EF0](*(a1 + 16), MEMORY[0x277D83690], MEMORY[0x277D83698]);
  v3 = 0;
  v11 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = sub_27527D908(&v10, *(*(a1 + 48) + ((v8 << 9) | (8 * v9)))))
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v11;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_27527B3D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v25 = a3;
  v26 = a5;
  v24 = a1;
  v7 = type metadata accessor for JUComponentReloader(0, a3, a5, a4);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v23 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BA0C8, &qword_275288D80);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v23 - v12;
  v14 = sub_2752883C4();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  v15 = sub_275287E54();
  (*(v8 + 16))(v10, v24, v7);
  sub_275288394();
  v16 = sub_275288384();
  v17 = (*(v8 + 80) + 72) & ~*(v8 + 80);
  v18 = swift_allocObject();
  v19 = MEMORY[0x277D85700];
  *(v18 + 2) = v16;
  *(v18 + 3) = v19;
  v21 = v25;
  v20 = v26;
  *(v18 + 4) = a2;
  *(v18 + 5) = v21;
  *(v18 + 6) = a4;
  *(v18 + 7) = v20;
  *(v18 + 8) = v15;
  (*(v8 + 32))(&v18[v17], v10, v7);
  return sub_27527D368(0, 0, v13, &unk_275288D90, v18);
}

uint64_t *JUComponentView.Coordinator.deinit()
{
  sub_2752808D0(v0 + 16, &qword_2809B9F28, &qword_275288BC0);
  v1 = *(*v0 + 104);
  swift_getAssociatedTypeWitness();
  v2 = sub_275288534();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t JUComponentView.Coordinator.__deallocating_deinit()
{
  JUComponentView.Coordinator.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_27527B740()
{
  v0 = swift_allocObject();
  sub_27527B778();
  return v0;
}

uint64_t *sub_27527B778()
{
  v1 = *v0;
  *(v0 + 1) = 0u;
  *(v0 + 2) = 0u;
  v0[6] = 0;
  v2 = *(v1 + 104);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 56))(v0 + v2, 1, 1, AssociatedTypeWitness);
  v4 = *(*v0 + 112);
  *(v0 + v4) = sub_27527F198(MEMORY[0x277D84F90]);
  return v0;
}

uint64_t JUComponentView.updateView(_:context:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v119 = a2;
  v110 = a1;
  v6 = *(a3 + 16);
  v7 = *(a3 + 24);
  v8 = type metadata accessor for JUComponentReloader(0, v6, v7, a4);
  v94 = *(v8 - 8);
  v95 = v8;
  MEMORY[0x28223BE20](v8);
  v93 = &v84 - v9;
  v10 = sub_275287F94();
  v107 = *(v10 - 8);
  v108 = v10;
  MEMORY[0x28223BE20](v10);
  v105 = &v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = sub_2752881B4();
  MEMORY[0x28223BE20](v13 - 8);
  v101 = &v84 - v14;
  v15 = sub_275288284();
  MEMORY[0x28223BE20](v15 - 8);
  v102 = &v84 - v16;
  v17 = swift_getAssociatedTypeWitness();
  v98 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v100 = &v84 - v18;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v109 = v7;
  v103 = v6;
  v20 = swift_getAssociatedConformanceWitness();
  v123[0] = v17;
  v123[1] = AssociatedTypeWitness;
  v123[2] = AssociatedConformanceWitness;
  v124 = v20;
  v111 = v20;
  v106 = sub_275287E44();
  v104 = *(v106 - 8);
  v21 = MEMORY[0x28223BE20](v106);
  v92 = &v84 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v99 = &v84 - v24;
  v116 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v23);
  v87 = &v84 - v25;
  v114 = AssociatedTypeWitness;
  v26 = sub_275288534();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v89 = *(TupleTypeMetadata2 - 8);
  v28 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v30 = &v84 - v29;
  v115 = *(v26 - 8);
  v31 = MEMORY[0x28223BE20](v28);
  v97 = &v84 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v31);
  v88 = &v84 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v90 = &v84 - v36;
  MEMORY[0x28223BE20](v35);
  v91 = &v84 - v37;
  v113 = v4;
  v117 = v17;
  v118 = AssociatedConformanceWitness;
  sub_275288234();
  swift_getWitnessTable();
  v112 = a3;
  v38 = sub_275288094();
  sub_275288074();
  v39 = v129;
  swift_beginAccess();
  sub_275280664(v39 + 16, v128, &qword_2809B9F28, &qword_275288BC0);

  sub_275280664(v130, v123, &qword_2809B9F28, &qword_275288BC0);
  sub_275280664(v128, &v125, &qword_2809B9F28, &qword_275288BC0);
  v96 = v38;
  if (v124)
  {
    sub_275280664(v123, v122, &qword_2809B9F28, &qword_275288BC0);
    if (*(&v126 + 1))
    {
      v120[0] = v125;
      v120[1] = v126;
      v121 = v127;
      v40 = MEMORY[0x277C72020](v122, v120);
      sub_27527F3E4(v120);
      sub_2752808D0(v128, &qword_2809B9F28, &qword_275288BC0);
      sub_2752808D0(v130, &qword_2809B9F28, &qword_275288BC0);
      sub_27527F3E4(v122);
      sub_2752808D0(v123, &qword_2809B9F28, &qword_275288BC0);
      if ((v40 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_7;
    }

    sub_2752808D0(v128, &qword_2809B9F28, &qword_275288BC0);
    sub_2752808D0(v130, &qword_2809B9F28, &qword_275288BC0);
    sub_27527F3E4(v122);
LABEL_11:
    sub_2752808D0(v123, &qword_2809B9F30, &qword_275288BC8);
    goto LABEL_15;
  }

  sub_2752808D0(v128, &qword_2809B9F28, &qword_275288BC0);
  sub_2752808D0(v130, &qword_2809B9F28, &qword_275288BC0);
  if (*(&v126 + 1))
  {
    goto LABEL_11;
  }

  sub_2752808D0(v123, &qword_2809B9F28, &qword_275288BC0);
LABEL_7:
  v86 = v26;
  v41 = v91;
  sub_27527AF54(v112, MEMORY[0x277CE11D8]);
  v42 = v114;
  (*(v116 + 56))(v41, 0, 1, v114);
  sub_275288074();
  v43 = v123[0];
  v44 = *(*v123[0] + 104);
  swift_beginAccess();
  v45 = *(v115 + 16);
  v46 = v90;
  v45(v90, v43 + v44, v86);

  v84 = TupleTypeMetadata2;
  v47 = *(TupleTypeMetadata2 + 48);
  v48 = v41;
  v26 = v86;
  v45(v30, v48, v86);
  v85 = v47;
  v45(&v30[v47], v46, v26);
  v49 = *(v116 + 48);
  if (v49(v30, 1, v42) == 1)
  {
    v50 = *(v115 + 8);
    v50(v46, v26);
    v50(v48, v26);
    if (v49(&v30[v85], 1, v114) == 1)
    {
      return (v50)(v30, v26);
    }
  }

  else
  {
    v52 = v88;
    v45(v88, v30, v26);
    v53 = v85;
    v54 = v114;
    if (v49(&v30[v85], 1, v114) != 1)
    {
      v78 = v116;
      v79 = &v30[v53];
      v80 = v87;
      (*(v116 + 32))(v87, v79, v54);
      v81 = sub_275288334();
      v82 = *(v78 + 8);
      v82(v80, v54);
      v83 = *(v115 + 8);
      v83(v90, v26);
      v83(v91, v26);
      v82(v52, v54);
      result = (v83)(v30, v26);
      if (v81)
      {
        return result;
      }

      goto LABEL_15;
    }

    v55 = *(v115 + 8);
    v55(v90, v26);
    v55(v91, v26);
    (*(v116 + 8))(v52, v54);
  }

  (*(v89 + 8))(v30, v84);
LABEL_15:
  sub_275288074();
  v56 = v122[0];
  v57 = v113;
  sub_275288234();
  swift_beginAccess();
  sub_27527F374(v123, v56 + 16);
  swift_endAccess();

  sub_275288074();
  v58 = v130[0];
  v59 = v97;
  v60 = v112;
  sub_27527AF54(v112, MEMORY[0x277CE11D8]);
  v61 = v114;
  (*(v116 + 56))(v59, 0, 1, v114);
  v62 = *(*v58 + 104);
  swift_beginAccess();
  (*(v115 + 40))(v58 + v62, v59, v26);
  swift_endAccess();

  (*(v98 + 16))(v100, v57, v117);
  v63 = v101;
  sub_27527AF54(v60, MEMORY[0x277CE11E8]);
  sub_27527A618(v63, v61, v111, v102);
  v64 = v105;
  sub_275288084();
  sub_27527C620();
  (*(v107 + 8))(v64, v108);
  v65 = v99;
  sub_275287E34();
  v67 = v109;
  v66 = v110;
  v68 = v103;
  sub_275287DF4();
  v69 = *(sub_275287DE4() + 16);

  if (!v69)
  {
    return (*(v104 + 8))(v65, v106);
  }

  v70 = v106;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_2809B9F38, &qword_275288BD0);
  v71 = v68;
  v72 = sub_275288244();
  v73 = v104;
  v74 = v92;
  (*(v104 + 16))(v92, v65, v70);
  v75 = v65;
  v76 = v93;
  sub_27527C6E4(v74, v66, v71, v67, v93);
  v77 = v66;
  sub_275288074();
  sub_27527AFBC(v72, v76);

  (*(v94 + 8))(v76, v95);
  return (*(v73 + 8))(v75, v70);
}

uint64_t sub_27527C620()
{
  sub_275287F34();
  if (v3)
  {
    sub_275280930(&v2, v4);
    __swift_project_boxed_opaque_existential_1(v4, v4[3]);
    v0 = sub_275287D54();
    __swift_destroy_boxed_opaque_existential_1(v4);
    return v0;
  }

  else
  {
    sub_2752808D0(&v2, qword_2809BA0E0, &unk_275288DC0);
    sub_275288264();
    return sub_275288254();
  }
}

uint64_t sub_27527C6E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v10 = sub_275287E44();
  (*(*(v10 - 8) + 32))(a5, a1, v10);
  result = type metadata accessor for JUComponentReloader(0, a3, a4, v11);
  *(a5 + *(result + 36)) = a2;
  return result;
}

uint64_t sub_27527C828(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return JetViewRepresentable.makeUIView(context:)(a1, a2, WitnessTable);
}

uint64_t sub_27527C888(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return JetViewRepresentable.updateUIView(_:context:)(a1, a2, a3, WitnessTable);
}

uint64_t sub_27527C8F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return static JetViewRepresentable.dismantleUIView(_:coordinator:)(a1, a2, a3, WitnessTable);
}

uint64_t sub_27527C964@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, uint64_t a3@<X2>, uint64_t a4@<X3>)
{
  result = sub_27527F2A8(*(a1 + 16), *(a1 + 24), a3, a4);
  *a2 = result;
  return result;
}

uint64_t sub_27527C9DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212E3C8](a1, a2, a3, WitnessTable);
}

uint64_t sub_27527CA58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212E358](a1, a2, a3, WitnessTable);
}

void sub_27527CAF0(uint64_t a1)
{
  swift_getWitnessTable();
  sub_275288024();
  __break(1u);
}

uint64_t sub_27527CB30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a8;
  v8[7] = v16;
  v8[4] = a6;
  v8[5] = a7;
  v8[2] = a4;
  v8[3] = a5;
  v8[8] = swift_getAssociatedTypeWitness();
  v8[9] = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[10] = AssociatedTypeWitness;
  v8[11] = *(AssociatedTypeWitness - 8);
  v8[12] = swift_task_alloc();
  sub_275288534();
  v8[13] = swift_task_alloc();
  v10 = sub_275288424();
  v8[14] = v10;
  v8[15] = *(v10 - 8);
  v8[16] = swift_task_alloc();
  v11 = sub_275288414();
  v8[17] = v11;
  v8[18] = *(v11 - 8);
  v8[19] = swift_task_alloc();
  v8[20] = sub_275288394();
  v8[21] = sub_275288384();
  v13 = sub_275288374();
  v8[22] = v13;
  v8[23] = v12;

  return MEMORY[0x2822009F8](sub_27527CDA4, v13, v12);
}

uint64_t sub_27527CDA4()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];
  swift_checkMetadataState();
  sub_275288224();
  sub_2752883F4();
  (*(v2 + 8))(v1, v3);
  v4 = sub_275288384();
  v0[24] = v4;
  v5 = swift_task_alloc();
  v0[25] = v5;
  *v5 = v0;
  v5[1] = sub_27527CEC0;
  v6 = v0[17];
  v7 = v0[13];
  v8 = MEMORY[0x277D85700];

  return MEMORY[0x2822003E8](v7, v4, v8, v6);
}

uint64_t sub_27527CEC0()
{
  v1 = *v0;

  v2 = *(v1 + 184);
  v3 = *(v1 + 176);

  return MEMORY[0x2822009F8](sub_27527D004, v3, v2);
}

uint64_t sub_27527D004()
{
  v1 = v0[13];
  v3 = v0[10];
  v2 = v0[11];
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    (*(v0[18] + 8))(v0[19], v0[17]);

    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = v0[7];
    v7 = v0[5];
    (*(v2 + 32))(v0[12], v1, v3);
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    sub_275288464();
    v8 = sub_275288564();

    v10 = type metadata accessor for JUComponentReloader(0, v7, v6, v9);
    sub_27527D2A4(v8, v10);

    v11 = sub_275288384();
    v0[24] = v11;
    v12 = swift_task_alloc();
    v0[25] = v12;
    *v12 = v0;
    v12[1] = sub_27527CEC0;
    v13 = v0[17];
    v14 = v0[13];
    v15 = MEMORY[0x277D85700];

    return MEMORY[0x2822003E8](v14, v11, v15, v13);
  }
}

uint64_t sub_27527D2A4(uint64_t a1, uint64_t a2)
{
  v3 = sub_275287DE4();
  if (sub_27527E954(a1, v3)[2])
  {
    v4 = sub_275287DD4();

    if ((v4 & 1) == 0)
    {
      return sub_275287DF4();
    }
  }

  else
  {
  }

  return result;
}

uint64_t sub_27527D368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BA0C8, &qword_275288D80);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_275280664(a3, v25 - v10, &qword_2809BA0C8, &qword_275288D80);
  v12 = sub_2752883C4();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_2752808D0(v11, &qword_2809BA0C8, &qword_275288D80);
  }

  else
  {
    sub_2752883B4();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_275288374();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_275288344() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_2752808D0(a3, &qword_2809BA0C8, &qword_275288D80);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2752808D0(a3, &qword_2809BA0C8, &qword_275288D80);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_27527D668(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_27527D760;

  return v6(a1);
}

uint64_t sub_27527D760()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_27527D858(uint64_t a1)
{
  v2 = sub_275288674();

  return sub_27527D89C(a1, v2);
}

unint64_t sub_27527D89C(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_27527D908(void *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = sub_275288674();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (1)
    {
      v10 = *(v5 + 48);
      if (*(v10 + 8 * v8) == a2)
      {
        break;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    a2 = *(v10 + 8 * v8);
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    sub_27527E834(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v13;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_27527D9EC(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_275288674();
  v5 = -1 << *(v3 + 32);
  v6 = v4 & ~v5;
  if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  while (*(*(v3 + 48) + 8 * v6) != a1)
  {
    v6 = (v6 + 1) & v7;
    if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v1;
  v12 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_27527E010();
    v10 = v12;
  }

  v11 = *(*(v10 + 48) + 8 * v6);
  sub_27527E564(v6);
  result = v11;
  *v1 = v12;
  return result;
}

uint64_t sub_27527DAD4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BA0C0, &qword_275288D78);
  result = sub_275288614();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
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
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
      }

      result = sub_275288674();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
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

    if ((v4 & 1) == 0)
    {

      v3 = v30;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v30;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_27527DD44(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_275288554() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_275288674();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 8 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
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

void *sub_27527DEB4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BA0C0, &qword_275288D78);
  v2 = *v0;
  v3 = sub_275288604();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_27527E010()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BA0D8, &qword_275288DB8);
  v2 = *v0;
  v3 = sub_275288594();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_27527E150(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BA0D8, &qword_275288DB8);
  result = sub_2752885A4();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      result = sub_275288674();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_24;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v2 = v5;
  }

  return result;
}

uint64_t sub_27527E340(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BA0D8, &qword_275288DB8);
  result = sub_2752885A4();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    v25 = v2;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      result = sub_275288674();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    if (v8 >= 64)
    {
      bzero((v3 + 56), 8 * v11);
    }

    else
    {
      *v7 = -1 << v8;
    }

    v2 = v25;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_27527E564(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(v3 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_275288554();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 48);
        v11 = (v10 + 8 * v6);
        v12 = sub_275288674() & v7;
        if (v2 >= v9)
        {
          if (v12 >= v9 && v2 >= v12)
          {
LABEL_16:
            v15 = (v10 + 8 * v2);
            if (v2 != v6 || v15 >= v11 + 1)
            {
              *v15 = *v11;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v9 || v2 >= v12)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v16 = *(v3 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v18;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_27527E6E8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_27527D858(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_27527DAD4(v14, a3 & 1);
      result = sub_27527D858(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = sub_275288664();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_27527DEB4();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * result) = a1;
}

uint64_t sub_27527E834(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_27527E340(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_27527E010();
      a2 = v7;
      goto LABEL_12;
    }

    sub_27527E150(v5 + 1);
  }

  v8 = *v3;
  result = sub_275288674();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_275288654();
  __break(1u);
  return result;
}

unint64_t *sub_27527E954(uint64_t a1, uint64_t a2)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    bzero(v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v7);
    v9 = sub_27527EBA8((v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0)), v6, a2, a1);
  }

  else
  {
    v11 = swift_slowAlloc();

    v9 = sub_27527EB18(v11, v6, a2, a1);

    MEMORY[0x277C72460](v11, -1, -1);
  }

  return v9;
}

unint64_t *sub_27527EB18(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = sub_27527EBA8(result, a2, a3, a4);

    return v8;
  }

  return result;
}

unint64_t *sub_27527EBA8(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v41 = result;
  v6 = *(a3 + 16);
  v7 = *(a4 + 16);
  v52 = a3;
  if (v7 >= v6)
  {
LABEL_23:
    v44 = 0;
    v25 = 0;
    v26 = v5 + 56;
    v27 = 1 << *(v5 + 32);
    if (v27 < 64)
    {
      v28 = ~(-1 << v27);
    }

    else
    {
      v28 = -1;
    }

    v29 = v28 & *(v5 + 56);
    v30 = (v27 + 63) >> 6;
    v31 = a4 + 56;
    while (v29)
    {
      v32 = __clz(__rbit64(v29));
      v46 = (v29 - 1) & v29;
LABEL_35:
      v43 = v32 | (v25 << 6);
      sub_275280874(*(v5 + 48) + 40 * v43, v50);
      v35 = sub_275288574();
      v36 = -1 << *(a4 + 32);
      v37 = v35 & ~v36;
      if ((*(v31 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v37))
      {
        v38 = ~v36;
        while (1)
        {
          sub_275280874(*(a4 + 48) + 40 * v37, v48);
          v39 = MEMORY[0x277C72020](v48, v50);
          sub_27527F3E4(v48);
          if (v39)
          {
            break;
          }

          v37 = (v37 + 1) & v38;
          if (((*(v31 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v37) & 1) == 0)
          {
            goto LABEL_27;
          }
        }

        result = sub_27527F3E4(v50);
        *(v41 + ((v43 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v43;
        v29 = v46;
        v24 = __OFADD__(v44++, 1);
        v5 = v52;
        if (v24)
        {
          __break(1u);
          goto LABEL_43;
        }
      }

      else
      {
LABEL_27:
        result = sub_27527F3E4(v50);
        v5 = v52;
        v29 = v46;
      }
    }

    v33 = v25;
    while (1)
    {
      v25 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        break;
      }

      if (v25 >= v30)
      {
        goto LABEL_43;
      }

      v34 = *(v26 + 8 * v25);
      ++v33;
      if (v34)
      {
        v32 = __clz(__rbit64(v34));
        v46 = (v34 - 1) & v34;
        goto LABEL_35;
      }
    }

    __break(1u);
    goto LABEL_45;
  }

  v8 = 0;
  v9 = 1 << *(a4 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(a4 + 56);
  v12 = (v9 + 63) >> 6;
  v44 = 0;
  v45 = a3 + 56;
  while (v11)
  {
    v13 = __clz(__rbit64(v11));
    v42 = (v11 - 1) & v11;
LABEL_15:
    sub_275280874(*(a4 + 48) + 40 * (v13 | (v8 << 6)), v50);
    v48[0] = v50[0];
    v48[1] = v50[1];
    v49 = v51;
    v16 = sub_275288574();
    v17 = -1 << *(v5 + 32);
    v18 = v16 & ~v17;
    v19 = v18 >> 6;
    v20 = 1 << v18;
    if (((1 << v18) & *(v45 + 8 * (v18 >> 6))) == 0)
    {
      goto LABEL_6;
    }

    sub_275280874(*(v52 + 48) + 40 * v18, v47);
    v21 = MEMORY[0x277C72020](v47, v48);
    sub_27527F3E4(v47);
    if ((v21 & 1) == 0)
    {
      v22 = ~v17;
      while (1)
      {
        v18 = (v18 + 1) & v22;
        v19 = v18 >> 6;
        v20 = 1 << v18;
        if (((1 << v18) & *(v45 + 8 * (v18 >> 6))) == 0)
        {
          break;
        }

        sub_275280874(*(v52 + 48) + 40 * v18, v47);
        v23 = MEMORY[0x277C72020](v47, v48);
        sub_27527F3E4(v47);
        if (v23)
        {
          goto LABEL_20;
        }
      }

LABEL_6:
      result = sub_27527F3E4(v48);
      v5 = v52;
      goto LABEL_7;
    }

LABEL_20:
    result = sub_27527F3E4(v48);
    v41[v19] |= v20;
    v24 = __OFADD__(v44++, 1);
    v5 = v52;
    if (v24)
    {
      __break(1u);
      goto LABEL_23;
    }

LABEL_7:
    v11 = v42;
  }

  v14 = v8;
  while (1)
  {
    v8 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v8 >= v12)
    {
LABEL_43:

      return sub_27527EF74(v41, a2, v44, v5);
    }

    v15 = *(a4 + 56 + 8 * v8);
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v42 = (v15 - 1) & v15;
      goto LABEL_15;
    }
  }

LABEL_45:
  __break(1u);
  return result;
}

uint64_t sub_27527EF74(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BA0D0, &qword_275288DB0);
  result = sub_2752885B4();
  v6 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    sub_275280874(*(a4 + 48) + 40 * (v13 | (v11 << 6)), v28);
    result = sub_275288574();
    v16 = -1 << *(v6 + 32);
    v17 = result & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v12 + 8 * (v17 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v16) >> 6;
      while (++v18 != v21 || (v20 & 1) == 0)
      {
        v22 = v18 == v21;
        if (v18 == v21)
        {
          v18 = 0;
        }

        v20 |= v22;
        v23 = *(v12 + 8 * v18);
        if (v23 != -1)
        {
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v19 = __clz(__rbit64((-1 << v17) & ~*(v12 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    v24 = *(v6 + 48) + 40 * v19;
    v25 = v28[0];
    v26 = v28[1];
    *(v24 + 32) = v29;
    *v24 = v25;
    *(v24 + 16) = v26;
    ++*(v6 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
LABEL_28:

      return v6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_28;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

unint64_t sub_27527F198(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BA0C0, &qword_275288D78);
  v3 = sub_275288624();
  v13 = *(a1 + 32);
  result = sub_27527D858(*(a1 + 32));
  if (v5)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v6 = (a1 + 48);
  v7 = v1 - 1;
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v13;
    *(v3[7] + 8 * result) = *(&v13 + 1);
    v8 = v3[2];
    v9 = __OFADD__(v8, 1);
    v10 = v8 + 1;
    if (v9)
    {
      break;
    }

    v3[2] = v10;
    if (!v7)
    {
      goto LABEL_8;
    }

    v11 = *v6++;
    v13 = v11;

    result = sub_27527D858(v11);
    --v7;
    if (v12)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_27527F2A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for JUComponentView.Coordinator(0, a1, a2, a4);
  v4 = swift_allocObject();
  sub_27527B778();
  return v4;
}

id sub_27527F2EC()
{
  v0 = sub_275287E04();
  LODWORD(v1) = 1132068864;
  [v0 setContentCompressionResistancePriority:0 forAxis:v1];
  LODWORD(v2) = 1132068864;
  [v0 setContentHuggingPriority:0 forAxis:v2];

  return v0;
}

uint64_t sub_27527F374(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809B9F28, &qword_275288BC0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_27527F438(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_27527F4A4(uint64_t a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    result = sub_2752881B4();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_27527F570(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 84);
  v8 = swift_getAssociatedTypeWitness();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (v12 <= v7)
  {
    v13 = v7;
  }

  else
  {
    v13 = v12;
  }

  if (!a2)
  {
    return 0;
  }

  v14 = v11 | 7;
  v15 = (v11 | 7) + *(v6 + 64);
  if (a2 <= v13)
  {
    goto LABEL_31;
  }

  v16 = ((v11 + 16) & ~v11) + *(*(v8 - 8) + 64) + (v15 & ~v14);
  v17 = 8 * v16;
  if (v16 <= 3)
  {
    v20 = ((a2 - v13 + ~(-1 << v17)) >> v17) + 1;
    if (HIWORD(v20))
    {
      v18 = *(a1 + v16);
      if (!v18)
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v20 > 0xFF)
    {
      v18 = *(a1 + v16);
      if (!*(a1 + v16))
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v20 < 2)
    {
LABEL_31:
      if (v7 >= v12)
      {
        v26 = *(v6 + 48);

        return v26(a1, v7, AssociatedTypeWitness);
      }

      else
      {
        v24 = ((((a1 + v15) & ~v14) + 15) & 0xFFFFFFFFFFFFFFF8);
        if ((v10 & 0x80000000) != 0)
        {
          v27 = *(v9 + 48);

          return v27((v24 + v11 + 8) & ~v11);
        }

        else
        {
          v25 = *v24;
          if (v25 >= 0xFFFFFFFF)
          {
            LODWORD(v25) = -1;
          }

          return (v25 + 1);
        }
      }
    }
  }

  v18 = *(a1 + v16);
  if (!*(a1 + v16))
  {
    goto LABEL_31;
  }

LABEL_18:
  v21 = (v18 - 1) << v17;
  if (v16 > 3)
  {
    v21 = 0;
  }

  if (v16)
  {
    if (v16 <= 3)
    {
      v22 = v16;
    }

    else
    {
      v22 = 4;
    }

    if (v22 > 2)
    {
      if (v22 == 3)
      {
        v23 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v23 = *a1;
      }
    }

    else if (v22 == 1)
    {
      v23 = *a1;
    }

    else
    {
      v23 = *a1;
    }
  }

  else
  {
    v23 = 0;
  }

  return v13 + (v23 | v21) + 1;
}

void sub_27527F87C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 84);
  v10 = *(swift_getAssociatedTypeWitness() - 8);
  v11 = *(v10 + 84);
  v12 = *(v10 + 80);
  if (v11 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = *(v10 + 84);
  }

  if (v13 <= v9)
  {
    v14 = v9;
  }

  else
  {
    v14 = v13;
  }

  v15 = (v12 | 7) + *(v8 + 64);
  v16 = ((v12 + 16) & ~v12) + *(v10 + 64);
  v17 = (v15 & ~(v12 | 7)) + v16;
  if (a3 <= v14)
  {
    v18 = 0;
  }

  else if (v17 <= 3)
  {
    v21 = ((a3 - v14 + ~(-1 << (8 * v17))) >> (8 * v17)) + 1;
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

  if (v14 < a2)
  {
    v19 = ~v14 + a2;
    if (v17 < 4)
    {
      v20 = (v19 >> (8 * v17)) + 1;
      if (v17)
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
LABEL_61:
              if (v18 == 2)
              {
                *&a1[v17] = v20;
              }

              else
              {
                *&a1[v17] = v20;
              }

              return;
            }
          }

          else
          {
            *a1 = v19;
            if (v18 > 1)
            {
              goto LABEL_61;
            }
          }

          goto LABEL_58;
        }

        *a1 = v23;
        a1[2] = BYTE2(v23);
      }

      if (v18 > 1)
      {
        goto LABEL_61;
      }
    }

    else
    {
      bzero(a1, (v15 & ~(v12 | 7)) + v16);
      *a1 = v19;
      v20 = 1;
      if (v18 > 1)
      {
        goto LABEL_61;
      }
    }

LABEL_58:
    if (v18)
    {
      a1[v17] = v20;
    }

    return;
  }

  if (v18 > 1)
  {
    if (v18 != 2)
    {
      *&a1[v17] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    }

    *&a1[v17] = 0;
LABEL_33:
    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (!v18)
  {
    goto LABEL_33;
  }

  a1[v17] = 0;
  if (!a2)
  {
    return;
  }

LABEL_34:
  if (v9 >= v13)
  {
    v28 = *(v8 + 56);

    v28(a1, a2, v9, AssociatedTypeWitness);
  }

  else
  {
    v24 = (&a1[v15] & ~(v12 | 7));
    if (v13 >= a2)
    {
      v29 = ((v24 + 15) & 0xFFFFFFFFFFFFFFF8);
      if ((v11 & 0x80000000) != 0)
      {
        v31 = *(v10 + 56);

        v31((v29 + v12 + 8) & ~v12, a2);
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

        *v29 = v30;
      }
    }

    else
    {
      if (v16 <= 3)
      {
        v25 = ~(-1 << (8 * v16));
      }

      else
      {
        v25 = -1;
      }

      if (v16)
      {
        v26 = v25 & (~v13 + a2);
        if (v16 <= 3)
        {
          v27 = v16;
        }

        else
        {
          v27 = 4;
        }

        bzero(v24, v16);
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
  }
}

uint64_t sub_27527FC90(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  result = sub_275288534();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_27527FD88(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  result = sub_275287E44();
  if (v2 <= 0x3F)
  {
    result = swift_getAssociatedTypeWitness();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_27527FEE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v6 = sub_275287E44();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    return (*(v7 + 48))(a1, a2, v6);
  }

  v9 = *(a1 + *(a3 + 36));
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

uint64_t sub_275280050(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  result = sub_275287E44();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    return (*(v9 + 56))(a1, a2, a2, result);
  }

  *(a1 + *(a4 + 36)) = (a2 - 1);
  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_275280234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (type metadata accessor for JUComponentReloader(0, *(v4 + 40), *(v4 + 56), a4) - 8);
  v10 = (*(*v5 + 80) + 72) & ~*(*v5 + 80);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v6 = sub_275287E44();
  (*(*(AssociatedTypeWitness - 8) + 8))(v4 + v10 + *(v6 + 52), AssociatedTypeWitness);
  v7 = *(v6 + 56);
  v8 = sub_275288284();
  (*(*(v8 - 8) + 8))(v4 + v10 + v7, v8);

  return swift_deallocObject();
}

uint64_t sub_275280440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = v4[4];
  v7 = v4[5];
  v17 = v4[6];
  v9 = *(type metadata accessor for JUComponentReloader(0, v7, v4[7], a4) - 8);
  v10 = (*(v9 + 80) + 72) & ~*(v9 + 80);
  v11 = v4[2];
  v12 = v4[3];
  v13 = v4[8];
  v14 = swift_task_alloc();
  *(v5 + 16) = v14;
  *v14 = v5;
  v14[1] = sub_275280570;

  return sub_27527CB30(a1, v11, v12, v13, v4 + v10, v8, v7, v17);
}

uint64_t sub_275280570()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_275280664(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2752806CC()
{

  return swift_deallocObject();
}

uint64_t sub_275280704(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_27528097C;

  return sub_27527D668(a1, v4);
}

uint64_t sub_2752807BC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_275280570;

  return sub_27527D668(a1, v4);
}

uint64_t sub_2752808D0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_275280930(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t JUDiffableDataReader.init(observing:content:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t JUDiffableDataReader.body.getter@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v30 = a2;
  v4 = a1[4];
  v5 = a1[2];
  swift_getAssociatedTypeWitness();
  v6 = sub_275288214();
  swift_getAssociatedTypeWitness();
  v35 = v6;
  v36 = sub_275288214();
  WitnessTable = swift_getWitnessTable();
  v38 = swift_getWitnessTable();
  sub_275287E84();
  v7 = sub_2752881F4();
  v29 = a1[3];
  sub_275287F04();
  v8 = sub_275288064();
  v27 = v7;
  v26 = swift_getWitnessTable();
  v33 = a1[5];
  v34 = MEMORY[0x277CE0790];
  v24 = v33;
  v31 = v33;
  v32 = swift_getWitnessTable();
  v28 = v8;
  v25 = swift_getWitnessTable();
  v35 = v7;
  v36 = v8;
  WitnessTable = v26;
  v38 = v25;
  v9 = sub_275287D84();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v23 - v14;
  v16 = *(v2 + 2);
  v23 = *v2;
  sub_275287E14();
  v17 = swift_allocObject();
  *&v18 = v5;
  *(&v18 + 1) = v29;
  *&v19 = v4;
  *(&v19 + 1) = v24;
  *(v17 + 16) = v18;
  *(v17 + 32) = v19;
  *(v17 + 48) = v23;
  *(v17 + 64) = v16;
  swift_unknownObjectRetain();

  sub_275287D94();
  swift_getWitnessTable();
  v20 = *(v10 + 16);
  v20(v15, v13, v9);
  v21 = *(v10 + 8);
  v21(v13, v9);
  v20(v30, v15, v9);
  return (v21)(v15, v9);
}

uint64_t sub_275280D18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(void)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v80 = a8;
  v75 = a4;
  v73 = a3;
  v67 = a2;
  v72 = a1;
  v81 = a9;
  v79 = *(a6 - 8);
  v12 = MEMORY[0x28223BE20](a1);
  v64 = v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v78 = v63 - v14;
  v15 = sub_275287F04();
  v70 = *(v15 - 8);
  v16 = MEMORY[0x28223BE20](v15);
  v69 = v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v68 = v63 - v18;
  swift_getAssociatedTypeWitness();
  v19 = sub_275288214();
  v66 = a7;
  v65 = a5;
  swift_getAssociatedTypeWitness();
  v20 = sub_275288214();
  WitnessTable = swift_getWitnessTable();
  v22 = swift_getWitnessTable();
  v63[3] = v19;
  v91 = v19;
  v92 = v20;
  v63[2] = WitnessTable;
  v93 = WitnessTable;
  v94 = v22;
  v63[1] = v22;
  v23 = sub_275287E84();
  v24 = sub_275288534();
  v25 = *(v24 - 8);
  v26 = MEMORY[0x28223BE20](v24);
  v28 = v63 - v27;
  v29 = *(v23 - 8);
  v30 = MEMORY[0x28223BE20](v26);
  v32 = v63 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v34 = v63 - v33;
  v71 = a6;
  v77 = v15;
  v76 = sub_275288064();
  v74 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v82 = v63 - v35;
  (*(v25 + 16))(v28, v72, v24);
  if ((*(v29 + 48))(v28, 1, v23) == 1)
  {
    (*(v25 + 8))(v28, v24);
    sub_275287E74();
    v36 = v78;
    v37 = v75;
    v38 = v73;
    v73(v32);
    (*(v29 + 8))(v32, v23);
    v39 = swift_allocObject();
    v40 = v71;
    v39[2] = v65;
    v39[3] = v40;
    v41 = v80;
    v39[4] = v66;
    v39[5] = v41;
    v39[6] = v67;
    v39[7] = v38;
    v39[8] = v37;
    swift_unknownObjectRetain();

    v42 = v69;
    sub_275288114();

    (*(v79 + 8))(v36, v40);
    v89 = v41;
    v90 = MEMORY[0x277CE0790];
    v43 = v77;
    v44 = swift_getWitnessTable();
    v45 = v70;
    v46 = *(v70 + 16);
    v47 = v68;
    v46(v68, v42, v43);
    v48 = *(v45 + 8);
    v48(v42, v43);
    v46(v42, v47, v43);
    sub_2752816F8(v42, v40, v43, v41, v44);
    v48(v42, v43);
    v48(v47, v43);
  }

  else
  {
    v49 = *(v29 + 32);
    v63[0] = v34;
    v49(v34, v28, v23);
    v50 = v64;
    v73(v34);
    v51 = v78;
    v52 = v79;
    v53 = *(v79 + 16);
    v54 = v71;
    v53(v78, v50, v71);
    v55 = *(v52 + 8);
    v55(v50, v54);
    v53(v50, v51, v54);
    v41 = v80;
    v83 = v80;
    v84 = MEMORY[0x277CE0790];
    v56 = v77;
    v57 = swift_getWitnessTable();
    sub_275281600(v50, v54, v56, v41, v57);
    v55(v50, v54);
    v55(v51, v54);
    (*(v29 + 8))(v63[0], v23);
  }

  v87 = v41;
  v88 = MEMORY[0x277CE0790];
  v58 = swift_getWitnessTable();
  v85 = v41;
  v86 = v58;
  v59 = v76;
  swift_getWitnessTable();
  v60 = v74;
  v61 = v82;
  (*(v74 + 16))(v81, v82, v59);
  return (*(v60 + 8))(v61, v59);
}

uint64_t sub_275281600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_275288044();
  MEMORY[0x28223BE20](v7);
  (*(*(a2 - 8) + 16))(&v10 - v8, a1, a2);
  swift_storeEnumTagMultiPayload();
  return sub_275288054();
}

uint64_t sub_2752816F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_275288044();
  MEMORY[0x28223BE20](v7);
  (*(*(a3 - 8) + 16))(&v10 - v8, a1, a3);
  swift_storeEnumTagMultiPayload();
  return sub_275288054();
}

uint64_t sub_2752817FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_275281858(uint64_t *a1, int a2)
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

uint64_t sub_2752818A0(uint64_t result, int a2, int a3)
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

uint64_t sub_2752818F8(void *a1)
{
  swift_getAssociatedTypeWitness();
  sub_275288214();
  swift_getAssociatedTypeWitness();
  sub_275288214();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_275287E84();
  sub_2752881F4();
  sub_275287F04();
  sub_275288064();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_275287D84();
  return swift_getWitnessTable();
}

uint64_t objectdestroyTm_0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t JUPresenterView.init(presenter:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v29 = a5;
  v30 = a6;
  v31 = a7;
  v32 = a8;
  v33 = a10;
  v17 = type metadata accessor for JUPresenterView(0, &v29);
  v18 = v17[16];
  *(a9 + v18) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BA170, &qword_275288F00);
  swift_storeEnumTagMultiPayload();
  v19 = a9 + v17[17];
  *v19 = swift_getKeyPath();
  *(v19 + 8) = 0;
  *(v19 + 16) = 0;
  v20 = a9 + v17[18];
  v34 = 0;
  v35 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_2809BA240, qword_2752890C0);
  sub_275288124();
  v21 = v30;
  v22 = v31;
  *v20 = v29;
  *(v20 + 8) = v21 & 1;
  *(v20 + 16) = v22;
  v23 = swift_allocObject();
  v23[2] = a5;
  v23[3] = a6;
  v23[4] = a7;
  v23[5] = a8;
  v23[6] = a10;
  v23[7] = a1;
  v23[8] = a2;
  result = sub_275287EA4();
  *a9 = result;
  *(a9 + 8) = v25;
  *(a9 + 16) = v26 & 1;
  *(a9 + 24) = a3;
  *(a9 + 32) = a4;
  return result;
}

uint64_t sub_275281CC8(uint64_t a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_2809BA240, qword_2752890C0);
  sub_275288124();
  return v3;
}

uint64_t sub_275281D20(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = MEMORY[0x277C72160]();
  v7 = a1();
  objc_autoreleasePoolPop(v5);
  sub_275288314();
  swift_unknownObjectRetain();
  sub_275288294();
  swift_unknownObjectRelease();
  return v7;
}

uint64_t JUPresenterView.init<A>(presenter:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v18 = swift_allocObject();
  v18[2] = a5;
  v18[3] = a6;
  v18[4] = a7;
  v18[5] = a8;
  v18[6] = a1;
  v18[7] = a2;
  v19 = swift_allocObject();
  v19[2] = a5;
  v19[3] = a7;
  v19[4] = a8;
  v19[5] = a3;
  v19[6] = a4;
  v21 = type metadata accessor for _JUObservedPresenter(0, a6, *(a8 + 8), v20);
  WitnessTable = swift_getWitnessTable();
  v23 = swift_getWitnessTable();
  return JUPresenterView.init(presenter:content:)(sub_27528262C, v18, sub_2752826C4, v19, v21, a5, WitnessTable, v23, a9, a7);
}

uint64_t _JUObservedPresenter.__allocating_init(_:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t sub_275281F88(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  v6 = *(a4 - 8);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = swift_unknownObjectRetain();
  a2(v12);
  swift_unknownObjectRelease();
  sub_275281B20();
  v13 = *(v6 + 8);
  v13(v9, a4);
  sub_275281B20();
  return (v13)(v11, a4);
}

uint64_t _JUObservedPresenter.base.getter()
{
  sub_27528462C();

  return swift_unknownObjectRetain();
}

uint64_t sub_275282104@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_275287F94();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BA170, &qword_275288F00);
  MEMORY[0x28223BE20](v9);
  v11 = &v14 - v10;
  sub_275280664(v2 + *(a1 + 64), &v14 - v10, &qword_2809BA170, &qword_275288F00);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_2752853E8(v11, a2);
  }

  sub_2752884B4();
  v13 = sub_2752880A4();
  sub_275287DC4();

  sub_275287F84();
  swift_getAtKeyPath();

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_2752822FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BA220, &qword_2752890B0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_275280664(a1, &v5 - v3, &qword_2809BA220, &qword_2752890B0);
  return sub_275287F74();
}

uint64_t sub_2752823A8(uint64_t a1)
{
  v3 = sub_275287F94();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1 + *(a1 + 68);
  v8 = *v7;
  v9 = *(v7 + 8);
  v10 = *(v7 + 16);
  if (*(v7 + 17) == 1)
  {
    sub_2752853A8(*v7, v9);
  }

  else
  {

    sub_2752884B4();
    v11 = sub_2752880A4();
    sub_275287DC4();

    sub_275287F84();
    swift_getAtKeyPath();
    sub_275284648(v8, v9, v10, 0);
    (*(v4 + 8))(v6, v3);
    return v13[1];
  }

  return v8;
}

uint64_t sub_27528252C@<X0>(uint64_t a1@<X8>)
{
  result = sub_275287F44();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  return result;
}

uint64_t sub_2752825AC()
{

  return swift_deallocObject();
}

uint64_t sub_2752825F4()
{

  return swift_deallocObject();
}

uint64_t sub_27528262C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[6];
  type metadata accessor for _JUObservedPresenter(0, v4[3], *(v4[5] + 8), a4);
  v6 = v5();
  result = swift_allocObject();
  *(result + 16) = v6;
  return result;
}

uint64_t sub_27528268C()
{

  return swift_deallocObject();
}

uint64_t sub_2752826EC(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809BA390, &qword_275289168);
  sub_275288134();
  return v2;
}

uint64_t JUPresenterView.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v60 = sub_2752883C4();
  v59 = *(v60 - 8);
  v4 = MEMORY[0x28223BE20](v60);
  v58 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = *(a1 - 1);
  v68 = *(v71 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v65 = a1 + 5;
  v48 = a1[3];
  v49 = *(v48 - 8);
  MEMORY[0x28223BE20](v6);
  v47 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_275287F04();
  v53 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v69 = &v46 - v10;
  v52 = sub_275287F04();
  v55 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v70 = &v46 - v11;
  sub_275287ED4();
  v56 = sub_275287F04();
  v57 = *(v56 - 8);
  v12 = MEMORY[0x28223BE20](v56);
  v51 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v54 = &v46 - v14;
  v15 = *(v2 + 24);
  v67 = v2;
  v16 = a1[2];
  v17 = a1[4];
  sub_275287EB4();
  v15();
  swift_unknownObjectRelease();
  v18 = v71;
  v19 = *(v71 + 16);
  v63 = v71 + 16;
  v66 = v19;
  v19(v8, v2, a1);
  v62 = *(v18 + 80);
  v20 = (v62 + 56) & ~v62;
  v21 = swift_allocObject();
  *&v22 = v17;
  *(&v22 + 1) = *v65;
  v64 = v22;
  *&v23 = v16;
  v24 = v48;
  *(&v23 + 1) = v48;
  v65 = v23;
  *(v21 + 16) = v23;
  *(v21 + 32) = v22;
  v25 = a1[6];
  *(v21 + 48) = v25;
  v26 = *(v18 + 32);
  v26(v21 + v20, v8, a1);
  v71 = v18 + 32;
  v27 = v47;
  sub_275288114();

  (*(v49 + 8))(v27, v24);
  v28 = v8;
  v66(v8, v67, a1);
  v29 = swift_allocObject();
  v30 = v64;
  *(v29 + 16) = v65;
  *(v29 + 32) = v30;
  *(v29 + 48) = v25;
  v26(v29 + v20, v8, a1);
  v76 = v25;
  v77 = MEMORY[0x277CE0790];
  v49 = MEMORY[0x277CDFAD8];
  v31 = v50;
  WitnessTable = swift_getWitnessTable();
  v33 = v69;
  sub_2752880E4();

  (*(v53 + 8))(v33, v31);
  v66(v28, v67, a1);
  v34 = swift_allocObject();
  v35 = v64;
  *(v34 + 16) = v65;
  *(v34 + 32) = v35;
  *(v34 + 48) = v25;
  v26(v34 + v20, v28, a1);
  v74 = WitnessTable;
  v75 = MEMORY[0x277CE0790];
  v36 = v52;
  v37 = swift_getWitnessTable();
  v38 = v58;
  sub_2752883A4();
  v39 = v51;
  v40 = v70;
  sub_275288104();

  (*(v59 + 8))(v38, v60);
  (*(v55 + 8))(v40, v36);
  v41 = sub_27528530C(&qword_2809BA180, MEMORY[0x277CDD8B0], MEMORY[0x277CDD8A0]);
  v72 = v37;
  v73 = v41;
  v42 = v56;
  swift_getWitnessTable();
  v43 = v54;
  sub_275281B20();
  v44 = *(v57 + 8);
  v44(v39, v42);
  sub_275281B20();
  return (v44)(v43, v42);
}

uint64_t sub_275282F88(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_275287EF4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v26[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BA220, &qword_2752890B0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v26[-1] - v16;
  v26[0] = a2;
  v26[1] = a3;
  v26[2] = a4;
  v26[3] = a5;
  v26[4] = a6;
  v18 = type metadata accessor for JUPresenterView(0, v26);
  sub_2752826EC(v18);
  if (v19)
  {
    sub_275282104(v18, v17);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BA178, &qword_275288F38);
    v21 = (*(*(v20 - 8) + 48))(v17, 1, v20);
    if (v21 == 1)
    {
      sub_2752808D0(v17, &qword_2809BA220, &qword_2752890B0);
      v22 = 0;
    }

    else
    {
      MEMORY[0x277C71C30](v20);
      sub_2752808D0(v17, &qword_2809BA178, &qword_275288F38);
      v23 = sub_275287EE4();
      (*(v12 + 8))(v14, v11);
      v22 = v23;
    }

    sub_275282758(v22, v21 == 1, v18);
  }

  sub_275287EB4();
  sub_2752882B4();
  swift_unknownObjectRelease();
  sub_275287EB4();
  sub_2752882A4();
  return swift_unknownObjectRelease();
}

uint64_t sub_27528321C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BA220, &qword_2752890B0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v20[-1] - v12;
  v19 = sub_275288304();
  v14 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v16 = &v20[-1] - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[0] = a2;
  v20[1] = a3;
  v20[2] = a4;
  v20[3] = a5;
  v20[4] = a6;
  v17 = type metadata accessor for JUPresenterView(0, v20);
  sub_2752826EC(v17);
  sub_275282104(v17, v13);
  sub_2752823A8(v17);
  sub_2752882F4();
  sub_275287EB4();
  sub_2752882D4();
  swift_unknownObjectRelease();
  sub_275287EB4();
  sub_2752882C4();
  swift_unknownObjectRelease();
  return (*(v14 + 8))(v16, v19);
}

uint64_t sub_275283418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BA2C8, &qword_275289120);
  v6[8] = v7;
  v6[9] = *(v7 - 8);
  v6[10] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BA2D0, &qword_275289128);
  v6[11] = v8;
  v6[12] = *(v8 - 8);
  v6[13] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BA2D8, &qword_275289130);
  v6[14] = v9;
  v6[15] = *(v9 - 8);
  v6[16] = swift_task_alloc();
  v6[17] = sub_275288394();
  v6[18] = sub_275288384();
  v11 = sub_275288374();
  v6[19] = v11;
  v6[20] = v10;

  return MEMORY[0x2822009F8](sub_2752835F4, v11, v10);
}

uint64_t sub_2752835F4()
{
  (*(v0[12] + 104))(v0[13], *MEMORY[0x277D85778], v0[11]);
  sub_275288434();
  sub_2752883F4();
  v0[21] = 0;
  v1 = sub_275288384();
  v0[22] = v1;
  v2 = swift_task_alloc();
  v0[23] = v2;
  *v2 = v0;
  v2[1] = sub_27528372C;
  v3 = v0[8];
  v4 = MEMORY[0x277D85700];

  return MEMORY[0x2822003E8](v0 + 26, v1, v4, v3);
}

uint64_t sub_27528372C()
{
  v1 = *v0;

  v2 = *(v1 + 160);
  v3 = *(v1 + 152);

  return MEMORY[0x2822009F8](sub_275283870, v3, v2);
}

uint64_t sub_275283870()
{
  if (*(v0 + 208) == 1)
  {
    v2 = *(v0 + 120);
    v1 = *(v0 + 128);
    v3 = *(v0 + 112);
    v5 = *(v0 + 72);
    v4 = *(v0 + 80);
    v6 = *(v0 + 64);

    (*(v5 + 8))(v4, v6);
    (*(v2 + 8))(v1, v3);

    v7 = *(v0 + 8);

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x2822009F8](sub_275283990, 0, 0);
}

uint64_t sub_275283990(uint64_t a1)
{
  *(v1 + 192) = sub_275288384();
  v3 = sub_275288374();

  return MEMORY[0x2822009F8](sub_275283A1C, v3, v2);
}

uint64_t sub_275283A1C()
{
  v1 = v0[21];
  v2 = v0[6];
  v3 = v0[7];
  v5 = v0[4];
  v4 = v0[5];
  v7 = v0[2];
  v6 = v0[3];

  sub_2752842B4(v7, v6, v5, v4, v2, v3);
  v0[25] = v1;
  if (v1)
  {

    JUMPOUT(0x277C722F0);
  }

  v8 = v0[19];
  v9 = v0[20];

  return MEMORY[0x2822009F8](sub_275283AFC, v8, v9);
}

uint64_t sub_275283AFC(uint64_t a1)
{
  v1[21] = v1[25];
  v2 = sub_275288384();
  v1[22] = v2;
  v3 = swift_task_alloc();
  v1[23] = v3;
  *v3 = v1;
  v3[1] = sub_27528372C;
  v4 = v1[8];
  v5 = MEMORY[0x277D85700];

  return MEMORY[0x2822003E8](v1 + 26, v2, v5, v4);
}

uint64_t sub_275283BC0(uint64_t a1)
{
  v25 = a1;
  v1 = sub_2752881C4();
  v30 = *(v1 - 8);
  v31 = v1;
  MEMORY[0x28223BE20](v1);
  v27 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_2752881E4();
  v28 = *(v3 - 8);
  v29 = v3;
  MEMORY[0x28223BE20](v3);
  v26 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BA2E0, &qword_275289138);
  v6 = *(v5 - 8);
  v24 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v23 = &v22 - v7;
  v8 = sub_2752884E4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_275285144();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BA2F0, &qword_275289140);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_275288EB0;
  sub_2752884C4();
  sub_2752884D4();
  aBlock[0] = v12;
  sub_27528530C(&qword_2809BA2F8, MEMORY[0x277D85298], MEMORY[0x277D852A8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BA300, &unk_275289148);
  sub_275285354(&qword_2809BA308, &qword_2809BA300, &unk_275289148);
  sub_275288544();
  v13 = sub_2752884F4();
  (*(v9 + 8))(v11, v8);
  *(swift_allocObject() + 16) = v13;
  swift_unknownObjectRetain();
  v14 = v25;
  sub_2752883D4();
  swift_getObjectType();
  v15 = v23;
  (*(v6 + 16))(v23, v14, v5);
  v16 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v17 = swift_allocObject();
  (*(v6 + 32))(v17 + v16, v15, v5);
  aBlock[4] = sub_275285288;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_275284198;
  aBlock[3] = &block_descriptor;
  v18 = _Block_copy(aBlock);
  v19 = v26;
  sub_2752881D4();
  v20 = v27;
  sub_2752841DC();
  sub_275288504();
  _Block_release(v18);
  (*(v30 + 8))(v20, v31);
  (*(v28 + 8))(v19, v29);

  sub_275288524();
  return swift_unknownObjectRelease();
}

uint64_t sub_2752840CC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BA388, &qword_275289160);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - v2;
  sub_2752883E4();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_275284198(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_2752841DC()
{
  sub_2752881C4();
  sub_27528530C(&qword_2809BA370, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BA378, &qword_275289158);
  sub_275285354(&qword_2809BA380, &qword_2809BA378, &qword_275289158);
  return sub_275288544();
}

uint64_t sub_2752842B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[0] = a2;
  v7[1] = a3;
  v7[2] = a4;
  v7[3] = a5;
  v7[4] = a6;
  type metadata accessor for JUPresenterView(0, v7);
  sub_275287EB4();
  sub_2752882E4();
  return swift_unknownObjectRelease();
}

uint64_t _JUObservedPresenter.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_2752843A4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_275287E94();
  *a1 = result;
  return result;
}

uint64_t _JUObservedPresenter<>.viewWillDisappear(forReason:)(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectRetain();
  sub_2752882D4();

  return swift_unknownObjectRelease();
}

uint64_t sub_2752844E8(uint64_t a1, void (*a2)(uint64_t, uint64_t))
{
  v5 = *(*v2 + 80);
  swift_unknownObjectRetain();
  a2(v5, a1);

  return swift_unknownObjectRelease();
}

uint64_t sub_275284638(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t sub_275284648(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    return sub_275284654(a1, a2);
  }

  else
  {
  }
}

uint64_t sub_275284654(uint64_t result, uint64_t a2)
{
  if (a2)
  {
  }

  return v2;
}

uint64_t sub_2752846C8(uint64_t (*a1)(char *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v11[0] = v1[2];
  v2 = v11[0];
  v11[1] = v3;
  v11[2] = v4;
  v11[3] = v5;
  v11[4] = v6;
  v7 = *(type metadata accessor for JUPresenterView(0, v11) - 8);
  v8 = v1 + ((*(v7 + 80) + 56) & ~*(v7 + 80));

  return a1(v8, v2, v3, v4, v5, v6);
}

uint64_t objectdestroy_12Tm()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 32);
  v10[0] = *(v0 + 16);
  v10[1] = v2;
  v11 = v1;
  v3 = type metadata accessor for JUPresenterView(0, v10);
  v4 = v0 + ((*(*(v3 - 8) + 80) + 56) & ~*(*(v3 - 8) + 80));
  sub_275284638(*v4, *(v4 + 8), *(v4 + 16));

  v5 = v4 + *(v3 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BA170, &qword_275288F00);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BA178, &qword_275288F38);
    if (!(*(*(v6 - 8) + 48))(v5, 1, v6))
    {

      v7 = *(v6 + 32);
      v8 = sub_275287EF4();
      (*(*(v8 - 8) + 8))(v5 + v7, v8);
    }
  }

  else
  {
  }

  sub_275284648(*(v4 + *(v3 + 68)), *(v4 + *(v3 + 68) + 8), *(v4 + *(v3 + 68) + 16), *(v4 + *(v3 + 68) + 17));

  return swift_deallocObject();
}

uint64_t sub_275284954()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v1[2] = v2;
  v1[3] = v3;
  v1[4] = v4;
  v1[5] = v5;
  v1[6] = v6;
  v7 = *(type metadata accessor for JUPresenterView(0, (v1 + 2)) - 8);
  v8 = (*(v7 + 80) + 56) & ~*(v7 + 80);
  v9 = swift_task_alloc();
  v1[7] = v9;
  *v9 = v1;
  v9[1] = sub_275284A68;

  return sub_275283418(v0 + v8, v2, v3, v4, v5, v6);
}

uint64_t sub_275284A68()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_275284BD8(uint64_t a1)
{
  sub_275287EC4();
  if (v1 <= 0x3F)
  {
    sub_275284EC4();
    if (v2 <= 0x3F)
    {
      sub_275284F5C(319, &qword_2809BA218, &qword_2809BA220, &qword_2752890B0, MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        sub_275284F5C(319, &qword_2809BA228, &qword_2809BA230, &qword_2752890B8, MEMORY[0x277CDF468]);
        if (v4 <= 0x3F)
        {
          sub_275284F5C(319, &qword_2809BA238, qword_2809BA240, qword_2752890C0, MEMORY[0x277CE10B8]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_275284D44(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_2809BA188, &unk_275289088);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 64);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_275284E14(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_2809BA188, &unk_275289088);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 64);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

unint64_t sub_275284EC4()
{
  result = qword_2809BA210;
  if (!qword_2809BA210)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_2809BA210);
  }

  return result;
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

void sub_275284F5C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

uint64_t sub_275285030(uint64_t a1)
{
  sub_275287F04();
  sub_275287F04();
  sub_275287ED4();
  sub_275287F04();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_27528530C(&qword_2809BA180, MEMORY[0x277CDD8B0], MEMORY[0x277CDD8A0]);
  return swift_getWitnessTable();
}

unint64_t sub_275285144()
{
  result = qword_2809BA2E8;
  if (!qword_2809BA2E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2809BA2E8);
  }

  return result;
}

uint64_t sub_275285190()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2752851F4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BA2E0, &qword_275289138);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_275285288()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BA2E0, &qword_275289138);

  return sub_2752840CC();
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_27528530C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_275285354(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_2752853A8(uint64_t result, uint64_t a2)
{
  if (a2)
  {
  }

  return v2;
}

uint64_t sub_2752853E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809BA220, &qword_2752890B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_275285470(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v4 = &v6 - v3;
  swift_getAssociatedConformanceWitness();
  sub_275288324();
  return sub_27528602C(v4);
}

uint64_t static JUComponent.component(onSelectPerform:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{

  return sub_2752855BC(a1, a2, a3, a4, a5);
}

uint64_t sub_2752855BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v13 = &v17 - v12;
  *a5 = a1;
  a5[1] = a2;
  swift_getAssociatedConformanceWitness();
  sub_275288324();
  v15 = a5 + *(type metadata accessor for JUSelectableComponentWrapper(0, a3, a4, v14) + 36);
  *&v15[*(sub_275288164() + 28)] = 0;
  return (*(v11 + 32))(v15, v13, AssociatedTypeWitness);
}

unint64_t sub_27528579C(uint64_t a1)
{
  result = sub_275284EC4();
  if (v2 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    result = sub_275288164();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_275285840(unint64_t *a1, unsigned int a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v9 = *(v6 + 80) & 0xF8;
  v10 = v9 | 7;
  if (v8 >= a2)
  {
    goto LABEL_28;
  }

  v11 = ((*(*(AssociatedTypeWitness - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + ((v9 + 23) & ~v10) + 8;
  v12 = v11 & 0xFFFFFFF8;
  if ((v11 & 0xFFFFFFF8) != 0)
  {
    v13 = 2;
  }

  else
  {
    v13 = a2 - v8 + 1;
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

  if (v15 > 1)
  {
    if (v15 == 2)
    {
      v16 = *(a1 + v11);
      if (!v16)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v16 = *(a1 + v11);
      if (!v16)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v15 || (v16 = *(a1 + v11)) == 0)
  {
LABEL_28:
    if ((v7 & 0x80000000) != 0)
    {
      v20 = *(v6 + 48);

      return v20((a1 + v10 + 16) & ~v10);
    }

    else
    {
      v19 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      return (v19 + 1);
    }
  }

  v18 = v16 - 1;
  if (v12)
  {
    v18 = 0;
    LODWORD(v12) = *a1;
  }

  return v8 + (v12 | v18) + 1;
}

void sub_2752859DC(uint64_t *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFE)
  {
    v9 = 2147483646;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  if (v8 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v7 + 84);
  }

  v11 = *(v7 + 80) & 0xF8;
  v12 = v11 | 7;
  v13 = ((*(v7 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v14 = ((v11 + 23) & ~(v11 | 7)) + v13;
  if (v10 >= a3)
  {
    v17 = 0;
    v18 = a2 - v10;
    if (a2 <= v10)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (v14)
    {
      v15 = 2;
    }

    else
    {
      v15 = a3 - v10 + 1;
    }

    if (v15 >= 0x10000)
    {
      v16 = 4;
    }

    else
    {
      v16 = 2;
    }

    if (v15 < 0x100)
    {
      v16 = 1;
    }

    if (v15 >= 2)
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    v18 = a2 - v10;
    if (a2 <= v10)
    {
LABEL_20:
      if (v17 > 1)
      {
        if (v17 != 2)
        {
          *(a1 + v14) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_36;
        }

        *(a1 + v14) = 0;
      }

      else if (v17)
      {
        *(a1 + v14) = 0;
        if (!a2)
        {
          return;
        }

LABEL_36:
        if ((v8 & 0x80000000) != 0)
        {
          v21 = ((a1 + v12 + 16) & ~v12);
          if (v9 >= a2)
          {
            v24 = *(v7 + 56);

            v24(v21, a2);
          }

          else if (v13)
          {
            v22 = ~v9 + a2;
            v23 = ((a1 + v12 + 16) & ~v12);
            bzero(v21, v13);
            *v23 = v22;
          }
        }

        else if ((a2 & 0x80000000) != 0)
        {
          *a1 = a2 & 0x7FFFFFFF;
          a1[1] = 0;
        }

        else
        {
          *a1 = (a2 - 1);
        }

        return;
      }

      if (!a2)
      {
        return;
      }

      goto LABEL_36;
    }
  }

  if (v14)
  {
    v19 = 1;
  }

  else
  {
    v19 = v18;
  }

  if (v14)
  {
    v20 = ~v10 + a2;
    bzero(a1, v14);
    *a1 = v20;
  }

  if (v17 > 1)
  {
    if (v17 == 2)
    {
      *(a1 + v14) = v19;
    }

    else
    {
      *(a1 + v14) = v19;
    }
  }

  else if (v17)
  {
    *(a1 + v14) = v19;
  }
}

uint64_t sub_275285C04(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  result = sub_275288164();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_275285C90(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(AssociatedTypeWitness - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
    goto LABEL_28;
  }

  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v11 = v10 & 0xFFFFFFF8;
  if ((v10 & 0xFFFFFFF8) != 0)
  {
    v12 = 2;
  }

  else
  {
    v12 = a2 - v8 + 1;
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

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v15 = *(a1 + v10);
      if (!v15)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v15 = *(a1 + v10);
      if (!v15)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v14 || (v15 = *(a1 + v10)) == 0)
  {
LABEL_28:
    if (v7 < 0x7FFFFFFE)
    {
      v19 = *((a1 + v9 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v19 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      if ((v19 + 1) >= 2)
      {
        return v19;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v18 = *(v6 + 48);

      return v18(a1);
    }
  }

  v17 = v15 - 1;
  if (v11)
  {
    v17 = 0;
    LODWORD(v11) = *a1;
  }

  return v8 + (v11 | v17) + 1;
}

void sub_275285E28(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 64);
  if (v8 <= 0x7FFFFFFE)
  {
    v10 = 2147483646;
  }

  else
  {
    v10 = *(v7 + 84);
  }

  v11 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v12 = a3 - v10 + 1;
  }

  else
  {
    v12 = 2;
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

  if (v10 < a3)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (a2 > v10)
  {
    if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v16 = a2 - v10;
    }

    else
    {
      v16 = 1;
    }

    if (((v9 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v17 = ~v10 + a2;
      bzero(a1, v11);
      *a1 = v17;
    }

    if (v15 > 1)
    {
      if (v15 == 2)
      {
        *(a1 + v11) = v16;
      }

      else
      {
        *(a1 + v11) = v16;
      }
    }

    else if (v15)
    {
      *(a1 + v11) = v16;
    }

    return;
  }

  if (v15 > 1)
  {
    if (v15 != 2)
    {
      *(a1 + v11) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_36;
    }

    *(a1 + v11) = 0;
  }

  else if (v15)
  {
    *(a1 + v11) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return;
  }

LABEL_36:
  if (v8 < 0x7FFFFFFE)
  {
    v19 = ((a1 + v9 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (a2 > 0x7FFFFFFE)
    {
      *v19 = 0;
      *v19 = a2 - 0x7FFFFFFF;
    }

    else
    {
      *v19 = a2;
    }
  }

  else
  {
    v18 = *(v7 + 56);

    v18(a1, a2);
  }
}

uint64_t sub_27528602C(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  (*(v6 + 16))(&v9 - v7, a1, AssociatedTypeWitness);
  sub_275288124();
  return (*(v6 + 8))(a1, AssociatedTypeWitness);
}

uint64_t sub_27528613C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23 = a1;
  v24 = a3;
  v4 = *(a2 + 16);
  v3 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_2752881B4();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &AssociatedTypeWitness - v6;
  v8 = swift_getAssociatedTypeWitness();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &AssociatedTypeWitness - v10;
  v13 = type metadata accessor for JUComponentView(0, v4, v3, v12);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &AssociatedTypeWitness - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &AssociatedTypeWitness - v18;
  (*(v9 + 16))(v11, v23, v8);
  sub_275288164();
  sub_275288154();
  JUComponentView.init(presenting:for:with:)(v11, v7, v4, v3, v17);
  swift_getWitnessTable();
  sub_275281B20();
  v20 = *(v14 + 8);
  v20(v17, v13);
  sub_275281B20();
  return (v20)(v19, v13);
}

uint64_t sub_2752863EC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821E7CE8](a1, WitnessTable);
}

uint64_t sub_2752864BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v50 = a1;
  v52 = a3;
  v5 = sub_275287F24();
  v41 = v5;
  v51 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  v49 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a2 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = *(a2 + 16);
  v11 = *(a2 + 24);
  v12 = a2;
  v47 = type metadata accessor for JUComponentView(255, v10, v11, v13);
  WitnessTable = swift_getWitnessTable();
  v14 = sub_275288184();
  v48 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v42 = &v37 - v15;
  v16 = swift_getWitnessTable();
  v40 = v16;
  v39 = sub_275286EE8(&qword_2809BA568, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
  v57 = v14;
  v58 = v5;
  v59 = v16;
  v60 = v39;
  v43 = MEMORY[0x277CDE668];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v18 = *(OpaqueTypeMetadata2 - 8);
  v44 = OpaqueTypeMetadata2;
  v45 = v18;
  v19 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v38 = &v37 - v22;
  v23 = v8;
  v24 = *(v8 + 16);
  v25 = v12;
  v24(&v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v3, v12);
  v26 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = v10;
  *(v27 + 24) = v11;
  (*(v23 + 32))(v27 + v26, &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v25);
  v53 = v10;
  v54 = v11;
  v55 = v50;
  v56 = v3;
  v28 = v42;
  sub_275288174();
  v29 = v49;
  sub_275287F14();
  v30 = v41;
  v31 = v40;
  v32 = v39;
  sub_2752880D4();
  (*(v51 + 8))(v29, v30);
  (*(v48 + 8))(v28, v14);
  v57 = v14;
  v58 = v30;
  v59 = v31;
  v60 = v32;
  swift_getOpaqueTypeConformance2();
  v33 = v38;
  v34 = v44;
  sub_275281B20();
  v35 = *(v45 + 8);
  v35(v21, v34);
  sub_275281B20();
  return (v35)(v33, v34);
}

uint64_t sub_2752869A4(void (**a1)(char *), uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v8 = &v12 - v7;
  v9 = *a1;
  type metadata accessor for JUSelectableComponentWrapper(0, a2, a3, v10);
  sub_275288164();
  sub_275288134();
  v9(v8);
  return sub_275288144();
}

uint64_t sub_275286A9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v26 = a1;
  v27 = a2;
  v28 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_2752881B4();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &AssociatedTypeWitness - v8;
  v10 = swift_getAssociatedTypeWitness();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &AssociatedTypeWitness - v12;
  v15 = type metadata accessor for JUComponentView(0, a3, a4, v14);
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &AssociatedTypeWitness - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &AssociatedTypeWitness - v20;
  (*(v11 + 16))(v13, v26, v10);
  type metadata accessor for JUSelectableComponentWrapper(0, a3, a4, v22);
  sub_275288164();
  sub_275288154();
  JUComponentView.init(presenting:for:with:)(v13, v9, a3, a4, v19);
  swift_getWitnessTable();
  sub_275281B20();
  v23 = *(v16 + 8);
  v23(v19, v15);
  sub_275281B20();
  return (v23)(v21, v15);
}

uint64_t sub_275286D60(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821E7CE8](a1, WitnessTable);
}

uint64_t sub_275286EE8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_275286F30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (type metadata accessor for JUSelectableComponentWrapper(0, *(v4 + 16), *(v4 + 24), a4) - 8);
  v6 = (*(*v5 + 80) + 32) & ~*(*v5 + 80);

  v7 = v4 + v6 + v5[11];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v7, AssociatedTypeWitness);
  sub_275288164();

  return swift_deallocObject();
}

uint64_t sub_275287064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(type metadata accessor for JUSelectableComponentWrapper(0, v5, v6, a4) - 8);
  v8 = (v4 + ((*(v7 + 80) + 32) & ~*(v7 + 80)));

  return sub_2752869A4(v8, v5, v6);
}

uint64_t get_witness_table_5JetUI11JUComponentRzl01_ab6_SwiftB00C7Wrapper33_149180D85663AE4EE2CA26AC2F643FEFLLVyxG01_a7Engine_dB09ComponentHPyHCTm(void *a1, uint64_t (*a2)(uint64_t, void, void), uint64_t a3)
{
  a2(255, *a1, a1[1]);

  return swift_getWitnessTable();
}

uint64_t sub_27528716C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for JUComponentView(255, *a1, a1[1], a4);
  swift_getWitnessTable();
  sub_275288184();
  sub_275287F24();
  swift_getWitnessTable();
  sub_275286EE8(&qword_2809BA568, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t ShelfCollection.init<A>(shelvesOf:spacing:content:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_275288214();
  v32 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809BA570, &qword_275289390);
  WitnessTable = swift_getWitnessTable();
  v34 = sub_275287540();
  v13 = sub_275287E84();
  v31 = sub_275287E64();
  v27 = a6;
  v28 = a7;
  v29 = a8;
  v30 = a9;
  v23 = a6;
  v24 = a8;
  v25 = a9;
  KeyPath = swift_getKeyPath();
  v14 = sub_275288364();
  v15 = swift_getWitnessTable();
  v17 = sub_2752875F8(sub_275287CFC, v22, v14, a7, MEMORY[0x277D84A98], v15, MEMORY[0x277D84AC0], v16);

  v31 = v17;
  v18 = swift_allocObject();
  v18[2] = a6;
  v18[3] = a7;
  v18[4] = a8;
  v18[5] = a9;
  v18[6] = a4;
  v18[7] = a5;
  sub_275288364();
  swift_getWitnessTable();
  sub_275287D74();
  return (*(*(v13 - 8) + 8))(a1, v13);
}

unint64_t sub_275287540()
{
  result = qword_2809BA578;
  if (!qword_2809BA578)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809BA570, &qword_275289390);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809BA578);
  }

  return result;
}

__n128 sub_2752875EC(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_2752875F8(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v14 = &v27 - v13;
  MEMORY[0x28223BE20](v12);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v27 - v17;
  v19 = sub_275288484();
  if (!v19)
  {
    return sub_275288354();
  }

  v41 = v19;
  v45 = sub_2752885E4();
  v32 = sub_2752885F4();
  sub_2752885C4();
  result = sub_275288474();
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
      v22 = sub_2752884A4();
      v23 = v14;
      v24 = v14;
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
      sub_2752885D4();
      result = sub_275288494();
      ++v21;
      v14 = v24;
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

uint64_t sub_275287A18()
{

  return swift_deallocObject();
}

uint64_t ShelfCollection.init<A, B>(shelvesOf:spacing:shelfContent:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_275288214();
  v29 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809BA570, &qword_275289390);
  WitnessTable = swift_getWitnessTable();
  v31 = sub_275287540();
  v13 = sub_275287E84();
  v28 = sub_275287E64();
  v24 = a6;
  v25 = a7;
  v26 = a8;
  v27 = a9;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  KeyPath = swift_getKeyPath();
  v14 = sub_275288364();
  v15 = swift_getWitnessTable();
  v17 = sub_2752875F8(sub_275287CD0, v19, v14, a6, MEMORY[0x277D84A98], v15, MEMORY[0x277D84AC0], v16);

  v28 = v17;
  sub_275288364();
  swift_getWitnessTable();
  sub_275287D64();
  return (*(*(v13 - 8) + 8))(a1, v13);
}