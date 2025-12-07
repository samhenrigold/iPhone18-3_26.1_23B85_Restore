uint64_t sub_21C909088(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a2;
  v4 = a3 + 56;
  v5 = 1 << *(a3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a3 + 56);
  result = swift_beginAccess();
  v30 = 0;
  v9 = 0;
  v10 = (v5 + 63) >> 6;
  while (v7)
  {
    v11 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_11:
    v32 = v11 | (v9 << 6);
    v14 = (*(a3 + 48) + 16 * v32);
    v16 = *v14;
    v15 = v14[1];
    sub_21C909928(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel, &unk_21CBAFC20);

    sub_21CB810D4();

    v17 = *(a4 + 64);
    if (*(v17 + 16))
    {

      v18 = sub_21CB10A3C(v16, v15);
      if (v19)
      {
        v20 = *(v17 + 56) + 32 * v18;
        v22 = *v20;
        v21 = *(v20 + 8);
        v31 = *(v20 + 16);
        v23 = *(v20 + 24);

        v24 = v23;

        v25 = v31;
        v26 = v31;
        goto LABEL_16;
      }
    }

    v25 = 0;
    v26 = 0;
    v23 = 0;
    v21 = 0;
    v22 = 0;
LABEL_16:
    sub_21C7D33F0(v22, v21, v25, v23);

    if (v21)
    {
      if ((v26 & 1) == 0)
      {
        *(a1 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v32;
        if (__OFADD__(v30++, 1))
        {
          __break(1u);
LABEL_21:

          return sub_21CAA1B00(a1, v28, v30, a3);
        }
      }
    }
  }

  v12 = v9;
  while (1)
  {
    v9 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v9 >= v10)
    {
      goto LABEL_21;
    }

    v13 = *(v4 + 8 * v9);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v7 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21C9092FC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = a1;
  v46 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = ((1 << v6) + 63) >> 6;
  v9 = 8 * v8;

  if (v7 > 0xD)
  {
    goto LABEL_25;
  }

  while (2)
  {
    v36 = v8;
    v37 = v3;
    v35[1] = v35;
    MEMORY[0x28223BE20](v10);
    v38 = v35 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v38, v9);
    v8 = v5 + 56;
    v9 = 1 << *(v5 + 32);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v3 = v11 & *(v5 + 56);
    v42 = OBJC_IVAR____TtC17PasswordManagerUI33PMAppSecurityRecommendationsModel___observationRegistrar;
    swift_beginAccess();
    v39 = 0;
    v12 = 0;
    v13 = (v9 + 63) >> 6;
    v43 = v5;
    v44 = a2;
    while (v3)
    {
      v14 = __clz(__rbit64(v3));
      v3 &= v3 - 1;
LABEL_12:
      v17 = v14 | (v12 << 6);
      v18 = *(v5 + 48);
      v41 = v17;
      v19 = (v18 + 16 * v17);
      v20 = *v19;
      v9 = v19[1];
      v45 = a2;
      sub_21C909928(&qword_27CDEEFE0, type metadata accessor for PMAppSecurityRecommendationsModel, &unk_21CBAFC20);

      sub_21CB810D4();

      v21 = *(a2 + 64);
      if (*(v21 + 16))
      {

        v22 = sub_21CB10A3C(v20, v9);
        if (v23)
        {
          v24 = *(v21 + 56) + 32 * v22;
          v26 = *v24;
          v25 = *(v24 + 8);
          v40 = *(v24 + 16);
          v27 = *(v24 + 24);

          v28 = v27;

          v29 = v40;
          v30 = v40;
          goto LABEL_17;
        }
      }

      v29 = 0;
      v30 = 0;
      v27 = 0;
      v25 = 0;
      v26 = 0;
LABEL_17:
      sub_21C7D33F0(v26, v25, v29, v27);

      v5 = v43;
      a2 = v44;
      if (v25)
      {
        if ((v30 & 1) == 0)
        {
          *&v38[(v41 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v41;
          if (__OFADD__(v39++, 1))
          {
            __break(1u);
LABEL_22:
            v32 = sub_21CAA1B00(v38, v36, v39, v5);

            return v32;
          }
        }
      }
    }

    v15 = v12;
    while (1)
    {
      v12 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v12 >= v13)
      {
        goto LABEL_22;
      }

      v16 = *(v8 + 8 * v12);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v3 = (v16 - 1) & v16;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_25:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v34 = swift_slowAlloc();

  v32 = sub_21C908494(v34, v8, v5, a2);

  MEMORY[0x21CF16D90](v34, -1, -1);

  return v32;
}

uint64_t sub_21C9096B4()
{
  *(*(v0 + 16) + 56) = *(v0 + 24);
}

uint64_t sub_21C9096F0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21C702EFC;

  return sub_21C9070C4(a1, v4, v5, v7, v6);
}

uint64_t sub_21C9097B0()
{
  *(*(v0 + 16) + 32) = *(v0 + 24);
}

uint64_t sub_21C9097EC()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return sub_21C9051D0(v1, v2);
}

uint64_t sub_21C909838()
{
  *(*(v0 + 16) + 48) = *(v0 + 24);
}

uint64_t sub_21C909874()
{
  *(*(v0 + 16) + 40) = *(v0 + 24);
}

uint64_t sub_21C909928(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21C909970(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C9099F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C909A74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_21CB83484();
  v8 = MEMORY[0x28223BE20](v7);
  (*(*(a2 - 8) + 16))(&v11 - v9, a1, a2, v8);
  swift_storeEnumTagMultiPayload();
  return sub_21CB83494();
}

uint64_t PMImageBadgeModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v70 = a1;
  v74 = a3;
  swift_getWitnessTable();
  v5 = sub_21CB83744();
  v65 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v69 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v58 - v8;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0CD8, &qword_21CBB0020);
  v10 = sub_21CB828F4();
  v67 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v66 = &v58 - v11;
  v64 = *(a2 + 16);
  sub_21CB828F4();
  sub_21CB828F4();
  sub_21CB828F4();
  v68 = *(a2 + 24);
  v95 = v68;
  v96 = MEMORY[0x277CDF678];
  WitnessTable = swift_getWitnessTable();
  v94 = MEMORY[0x277CDF748];
  v91 = swift_getWitnessTable();
  v92 = MEMORY[0x277CDFC60];
  swift_getWitnessTable();
  v12 = sub_21CB825B4();
  v63 = swift_getWitnessTable();
  v75 = sub_21CB82AD4();
  v13 = sub_21CB828F4();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v58 - v18;
  v76 = v5;
  v73 = sub_21CB834A4();
  v72 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v71 = &v58 - v21;
  if (*v3 == 1)
  {
    v60 = &v58;
    MEMORY[0x28223BE20](v20);
    v22 = v64;
    v62 = v12;
    v23 = v68;
    *(&v58 - 4) = v64;
    *(&v58 - 3) = v23;
    *(&v58 - 2) = v3;
    v59 = sub_21CB85214();
    v58 = v24;
    v65 = v19;
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0CE8, &qword_21CBB0028);
    v69 = v10;
    v26 = v25;
    v27 = v76;
    v28 = swift_getWitnessTable();
    v29 = sub_21C6EADEC(qword_27CDF0CF0, &qword_27CDF0CE8, &qword_21CBB0028, MEMORY[0x277CDF7D8]);
    v30 = v66;
    v61 = v28;
    v31 = sub_21CB74800(v59, v58, sub_21C90A524, (&v58 - 6), v27, v26, v28, v29);
    MEMORY[0x28223BE20](v31);
    v32 = v68;
    *(&v58 - 4) = v22;
    *(&v58 - 3) = v32;
    *(&v58 - 2) = v3;
    sub_21CB85214();
    v33 = sub_21C6EADEC(&qword_27CDF0CE0, &qword_27CDF0CD8, &qword_21CBB0020, MEMORY[0x277CE03E8]);
    v79 = v28;
    v80 = v33;
    v34 = swift_getWitnessTable();
    sub_21CB84864();
    (*(v67 + 8))(v30, v69);
    v35 = swift_getWitnessTable();
    v77 = v34;
    v78 = v35;
    v36 = swift_getWitnessTable();
    v37 = *(v14 + 16);
    v38 = v65;
    v37(v65, v16, v13);
    v39 = *(v14 + 8);
    v39(v16, v13);
    v37(v16, v38, v13);
    v40 = v71;
    sub_21C909A74(v16, v13, v76, v36, v61);
    v39(v16, v13);
    v39(v38, v13);
  }

  else
  {
    v41 = v76;
    v42 = swift_getWitnessTable();
    v43 = v65;
    v44 = *(v65 + 2);
    v44(v9, v70, v41);
    v45 = v69;
    v44(v69, v9, v41);
    v46 = sub_21C6EADEC(&qword_27CDF0CE0, &qword_27CDF0CD8, &qword_21CBB0020, MEMORY[0x277CE03E8]);
    v89 = v42;
    v90 = v46;
    v47 = swift_getWitnessTable();
    v48 = swift_getWitnessTable();
    v87 = v47;
    v88 = v48;
    v49 = swift_getWitnessTable();
    v40 = v71;
    sub_21C72BE68(v45, v13, v41, v49, v42);
    v50 = *(v43 + 1);
    v50(v45, v41);
    v50(v9, v41);
  }

  v51 = swift_getWitnessTable();
  v52 = sub_21C6EADEC(&qword_27CDF0CE0, &qword_27CDF0CD8, &qword_21CBB0020, MEMORY[0x277CE03E8]);
  v85 = v51;
  v86 = v52;
  v53 = swift_getWitnessTable();
  v54 = swift_getWitnessTable();
  v83 = v53;
  v84 = v54;
  v81 = swift_getWitnessTable();
  v82 = v51;
  v55 = v73;
  swift_getWitnessTable();
  v56 = v72;
  (*(v72 + 16))(v74, v40, v55);
  return (*(v56 + 8))(v40, v55);
}

double sub_21C90A524@<D0>(_OWORD *a1@<X8>, uint64_t a2@<X3>)
{
  v4 = type metadata accessor for PMImageBadgeModifier(0, *(v2 + 16), *(v2 + 24), a2);
  sub_21C90A56C(v4, &v6);
  result = *&v6;
  *a1 = v6;
  return result;
}

uint64_t sub_21C90A56C@<X0>(uint64_t a1@<X0>, uint64_t (**a2)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](a1);
  v7 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, v6);
  v8 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = *(a1 + 16);
  result = (*(v4 + 32))(v9 + v8, v7, a1);
  *a2 = sub_21C90B7F0;
  a2[1] = v9;
  return result;
}

uint64_t sub_21C90A68C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>, uint64_t a4@<X3>)
{
  v5 = type metadata accessor for PMImageBadgeModifier(0, a1, a2, a4);
  sub_21C90A87C(v5, &v10);
  v9[0] = v10;
  v9[1] = v11;
  sub_21CB828F4();
  sub_21CB828F4();
  sub_21CB828F4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  v6 = sub_21CB825B4();
  swift_getWitnessTable();
  v7 = *(*(v6 - 8) + 16);
  v7(v12, v9, v6);

  v10 = v12[0];
  v11 = v12[1];
  v7(a3, &v10, v6);
}

uint64_t sub_21C90A87C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](a1);
  (*(v4 + 16))(v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  v7 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v8 = swift_allocObject();
  v9 = *(a1 + 24);
  *(v8 + 16) = *(a1 + 16);
  *(v8 + 24) = v9;
  (*(v4 + 32))(v8 + v7, v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  sub_21CB828F4();
  sub_21CB828F4();
  sub_21CB828F4();
  v12[4] = v9;
  v12[5] = MEMORY[0x277CDF678];
  v12[2] = swift_getWitnessTable();
  v12[3] = MEMORY[0x277CDF748];
  v12[0] = swift_getWitnessTable();
  v12[1] = MEMORY[0x277CDFC60];
  swift_getWitnessTable();
  result = sub_21CB825A4();
  *a2 = result;
  a2[1] = v11;
  return result;
}

uint64_t sub_21C90AA6C@<X0>(uint64_t a2@<X2>, uint64_t a3@<X3>, char *a4@<X8>)
{
  v30 = a4;
  v6 = sub_21CB828F4();
  v27 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v25 - v7;
  v9 = sub_21CB828F4();
  v29 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v25 = &v25 - v10;
  v11 = sub_21CB828F4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v26 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v28 = &v25 - v15;
  sub_21CB823E4();
  type metadata accessor for PMImageBadgeModifier(0, a2, a3, v16);
  sub_21CB85214();
  sub_21CB84794();
  v35 = a3;
  v36 = MEMORY[0x277CDF678];
  WitnessTable = swift_getWitnessTable();
  v18 = v25;
  sub_21CB84804();
  (*(v27 + 8))(v8, v6);
  sub_21CB851F4();
  v33 = WitnessTable;
  v34 = MEMORY[0x277CDF748];
  v24 = swift_getWitnessTable();
  v19 = v26;
  sub_21CB847A4();
  (*(v29 + 8))(v18, v9);
  v31 = v24;
  v32 = MEMORY[0x277CDFC60];
  swift_getWitnessTable();
  v20 = *(v12 + 16);
  v21 = v28;
  v20(v28, v19, v11);
  v22 = *(v12 + 8);
  v22(v19, v11);
  v20(v30, v21, v11);
  return (v22)(v21, v11);
}

__n128 sub_21C90AE88@<Q0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0D78, &qword_21CBB00C8);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - v10;
  sub_21CB823E4();
  v13 = v12;
  v15 = v14;
  type metadata accessor for PMImageBadgeModifier(0, a2, a3, v16);
  if (v15 >= v13)
  {
    *&v17 = v13;
  }

  else
  {
    *&v17 = v15;
  }

  v18 = *(a1 + 32);
  *&v17 = floor(*(a1 + 24) * *&v17);
  v25 = v17;
  *&v17 = (v18 * *&v17 - *&v17) * 0.5;
  v26 = v17;
  sub_21C90B098();
  sub_21CB85214();
  sub_21CB82374();
  v19 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0D80, &qword_21CBB00D0) + 36)];
  v20 = v28;
  *v19 = v27;
  *(v19 + 1) = v20;
  *(v19 + 2) = v29;
  *&v11[*(v9 + 44)] = vaddq_f64(vdupq_lane_s64(v26, 0), vmulq_n_f64(*(a1 + 8), *&v25));
  sub_21CB851F4();
  sub_21CB82AC4();
  sub_21C90B8B8(v11, a4);
  v21 = a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0D88, &qword_21CBB00D8) + 36);
  v22 = v35;
  *(v21 + 64) = v34;
  *(v21 + 80) = v22;
  *(v21 + 96) = v36;
  v23 = v31;
  *v21 = v30;
  *(v21 + 16) = v23;
  result = v33;
  *(v21 + 32) = v32;
  *(v21 + 48) = result;
  return result;
}

uint64_t sub_21C90B098()
{
  v1 = sub_21CB82A84();
  MEMORY[0x28223BE20](v1);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0D90, &unk_21CBB00E0);
  MEMORY[0x28223BE20](v4);
  v6 = &v13 - v5;
  if (*(v0 + 56))
  {
    swift_storeEnumTagMultiPayload();
    sub_21C74A100();
    sub_21C90B98C();
    return sub_21CB83494();
  }

  else
  {
    v9 = *(v0 + 40);
    v8 = *(v0 + 48);
    v10 = *(v1 + 20);
    v11 = *MEMORY[0x277CE0118];
    v12 = sub_21CB831A4();
    (*(*(v12 - 8) + 104))(&v3[v10], v11, v12);
    *v3 = v9;
    *(v3 + 1) = v8;
    sub_21C90B928(v3, v6);
    swift_storeEnumTagMultiPayload();
    sub_21C74A100();
    sub_21C90B98C();
    sub_21CB83494();
    return sub_21C74B294(v3);
  }
}

uint64_t getEnumTagSinglePayload for PMImageBadgeMaskShape(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PMImageBadgeMaskShape(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 17) = v3;
  return result;
}

uint64_t sub_21C90B2BC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21C90B2D8(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 16) = 1;
  }

  else
  {
    *(result + 16) = 0;
  }

  return result;
}

void sub_21C90B308(uint64_t a1)
{
  type metadata accessor for CGVector(319);
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_21C90B3B4(unint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 57) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if (v5 > 0xFE)
      {
        return (*(v4 + 48))(((((((((a1 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v6 + 17) & ~v6);
      }

      v15 = *a1;
      v16 = v15 >= 2;
      v17 = (v15 + 2147483646) & 0x7FFFFFFF;
      if (v16)
      {
        return (v17 + 1);
      }

      else
      {
        return 0;
      }
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_21C90B55C(unint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 57) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_44:
              if (v13 == 2)
              {
                *(a1 + v10) = v15;
              }

              else
              {
                *(a1 + v10) = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_44;
            }
          }

          goto LABEL_41;
        }

        *a1 = v18;
        *(a1 + 2) = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_44;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_44;
      }
    }

LABEL_41:
    if (v13)
    {
      *(a1 + v10) = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(a1 + v10) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *(a1 + v10) = 0;
  }

  else if (v13)
  {
    *(a1 + v10) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v7 > 0xFE)
  {
    v19 = *(v6 + 56);
    v20 = ((((((((a1 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v9 + 17) & ~v9;

    v19(v20);
  }

  else
  {
    *a1 = a2 + 1;
  }
}

uint64_t sub_21C90B808(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(type metadata accessor for PMImageBadgeModifier(0, v6, v7, a4) - 8);
  v9 = v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return a2(a1, v9, v6, v7);
}

uint64_t sub_21C90B8B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0D78, &qword_21CBB00C8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C90B928(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CB82A84();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_21C90B98C()
{
  result = qword_27CDF0BE8;
  if (!qword_27CDF0BE8)
  {
    sub_21CB82A84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF0BE8);
  }

  return result;
}

uint64_t sub_21C90B9E4@<X0>(uint64_t a1@<X8>)
{
  v100 = a1;
  v1 = type metadata accessor for PMAppSourceList(0);
  v99 = *(v1 - 8);
  v98 = *(v99 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v97 = &v79 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = type metadata accessor for PMMoveAccountToGroupPicker.PresentationState(0);
  MEMORY[0x28223BE20](v95);
  v96 = &v79 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v94 = &v79 - v5;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
  MEMORY[0x28223BE20](v93);
  v91 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v90 = &v79 - v8;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0DA0, &qword_21CBB01F8);
  *&v105 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  *&v104 = &v79 - v9;
  v86 = sub_21CB826C4();
  v87 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v85 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF10B0, &qword_21CBB0790);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v79 - v16;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0E68, &qword_21CBB0388);
  v82 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v19 = &v79 - v18;
  *&v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0E60, &qword_21CBB0380);
  *&v84 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v80 = &v79 - v20;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0E58, &qword_21CBB0378) - 8;
  MEMORY[0x28223BE20](v89);
  v103 = &v79 - v21;
  v22 = swift_allocBox();
  v92 = v22;
  v24 = v23;
  sub_21CB85084();
  v25 = v111;
  swift_getKeyPath(byte_21CBB02A8);
  *&v111 = v25;
  v88 = sub_21C72A284(&qword_27CDED320, type metadata accessor for PMAppSourceListModel, &unk_21CBB0DB8);
  sub_21CB810D4();

  type metadata accessor for PMAppAccountsSearchListModel(0);
  sub_21C72A284(&qword_27CDF10B8, type metadata accessor for PMAppAccountsSearchListModel, &unk_21CBAB3D0);
  sub_21CB850A4();
  (*(v12 + 16))(v14, v24, v11);
  sub_21CB85094();
  v26 = *(v12 + 8);
  v26(v14, v11);
  swift_getKeyPath(byte_21CBB0798);
  sub_21CB850B4();

  v26(v17, v11);
  v122 = v111;
  v123 = v112;
  v108 = v22;
  v109 = v101;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF10C0, &qword_21CBB07C0);
  sub_21C6EADEC(&qword_27CDF10C8, &qword_27CDF10C0, &qword_21CBB07C0, MEMORY[0x277CE14C0]);
  sub_21CB83F24();
  v27 = v85;
  sub_21CB826B4();
  v28 = sub_21C6EADEC(&qword_27CDF0E70, &qword_27CDF0E68, &qword_21CBB0388, MEMORY[0x277CDE5A0]);
  v29 = MEMORY[0x277CDD980];
  v30 = v80;
  v31 = v81;
  v32 = v86;
  sub_21CB849F4();
  v87[1](v27, v32);
  (*(v82 + 8))(v19, v31);
  *&v111 = v31;
  *(&v111 + 1) = v32;
  *&v112 = v28;
  *(&v112 + 1) = v29;
  swift_getOpaqueTypeConformance2();
  v33 = v103;
  v34 = v83;
  sub_21CB845F4();
  (*(v84 + 8))(v30, v34);
  v35 = v104;
  v36 = v102;
  sub_21CB85094();
  swift_getKeyPath(byte_21CBB02A8);
  sub_21CB850B4();

  v37 = *(v105 + 8);
  *&v105 = v105 + 8;
  v87 = v37;
  (v37)(v35, v36);
  v38 = v122;
  v39 = v123;
  v120 = v38;
  v121 = v39;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0DF8, &qword_21CBB02F8);
  sub_21CB84F44();

  v40 = v117;
  v41 = v118;
  v42 = v119;

  v107[0] = 0;
  swift_getKeyPath(byte_21CBB07F0, v107);
  v114 = v40;
  v115 = v41;
  v116 = v42;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEBB0, &qword_21CBAAC70);
  sub_21CB84F44();

  v84 = v111;
  v83 = v112;
  v82 = v113;

  sub_21CB85084();
  v43 = v110;
  swift_getKeyPath(byte_21CBB02A8);
  v110 = v43;
  sub_21CB810D4();

  v88 = *(v43 + OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel__searchModel);

  v44 = v33 + *(v89 + 44);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDCD8, &unk_21CBB0390);
  v46 = type metadata accessor for PMAccount(0);
  v47 = *(*(v46 - 8) + 56);
  v48 = v90;
  v47(v90, 1, 1, v46);
  sub_21C6EDBAC(v48, v91, &unk_27CDEBE60, &unk_21CB9FF40);
  sub_21CB84D44();
  sub_21C6EA794(v48, &unk_27CDEBE60, &unk_21CB9FF40);
  v49 = type metadata accessor for PMMoveAccountToGroupAlert.Configuration(0);
  v50 = v94;
  (*(*(v49 - 8) + 56))(v94, 1, 1, v49);
  v47((v50 + *(v95 + 20)), 1, 1, v46);
  sub_21C733540(v50, v96, type metadata accessor for PMMoveAccountToGroupPicker.PresentationState);
  sub_21CB84D44();
  sub_21C9173A0(v50, type metadata accessor for PMMoveAccountToGroupPicker.PresentationState);
  v51 = v45[13];
  v52 = (v44 + v45[12]);
  *(v44 + v51) = swift_getKeyPath(byte_21CBB0840);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC0D0, &qword_21CBA3BF0);
  swift_storeEnumTagMultiPayload();
  v53 = v44 + v45[14];
  *v53 = swift_getKeyPath(byte_21CBB0878);
  *(v53 + 8) = 0;
  v54 = v83;
  *v44 = v84;
  *(v44 + 16) = v54;
  *(v44 + 32) = v82;
  v55 = (v44 + v45[11]);
  v56 = v88;
  *v55 = sub_21C87D2B4;
  v55[1] = v56;
  *v52 = 0;
  v52[1] = 0;
  v57 = v104;
  v58 = v102;
  v59 = v101;
  sub_21CB85094();
  swift_getKeyPath(byte_21CBB02A8);
  sub_21CB850B4();

  (v87)(v57, v58);
  v60 = v122;
  v61 = v123;
  v120 = v60;
  v121 = v61;
  sub_21CB84F44();

  v62 = v117;
  v63 = v118;
  v64 = v119;

  v106[0] = 0;
  swift_getKeyPath(byte_21CBB07F0, v106);
  v114 = v62;
  v115 = v63;
  v116 = v64;
  sub_21CB84F44();

  v105 = v111;
  v104 = v112;
  v65 = v113;

  v66 = v97;
  sub_21C733540(v59, v97, type metadata accessor for PMAppSourceList);
  v67 = (*(v99 + 80) + 16) & ~*(v99 + 80);
  v68 = swift_allocObject();
  sub_21C72EBD4(v66, v68 + v67, type metadata accessor for PMAppSourceList);
  v69 = v103;
  v70 = v100;
  sub_21C6EDBAC(v103, v100, &qword_27CDF0E58, &qword_21CBB0378);
  v71 = v70 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0E48, &qword_21CBB0370) + 36);
  v72 = v104;
  *v71 = v105;
  *(v71 + 16) = v72;
  *(v71 + 32) = v65;
  *(v71 + 40) = &unk_21CBB08B0;
  *(v71 + 48) = v68;
  sub_21C6EA794(v69, &qword_27CDF0E58, &qword_21CBB0378);
  v73 = sub_21CB85214();
  v75 = v74;
  v76 = v70 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0E38, &qword_21CBB0368) + 36);
  sub_21C910EBC(v76);

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBF70, &qword_21CBA3990);
  v78 = (v76 + *(result + 36));
  *v78 = v73;
  v78[1] = v75;
  return result;
}

uint64_t sub_21C90C988@<X0>(const char *a1@<X3>, uint64_t *a2@<X0>, void *a3@<X4>, _BYTE *a4@<X8>, ...)
{
  v6 = *a2;
  swift_getKeyPath(a1);
  sub_21C72A284(&qword_27CDED320, type metadata accessor for PMAppSourceListModel, &unk_21CBB0DB8);
  sub_21CB810D4();

  *a4 = *(v6 + *a3);
  return result;
}

uint64_t sub_21C90CA64@<X0>(uint64_t a1@<X8>)
{
  v90 = a1;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1070, &qword_21CBB0750);
  MEMORY[0x28223BE20](v89);
  v88 = &v67 - v2;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1078, &qword_21CBB0758);
  v85 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v76 = &v67 - v3;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0F48, &qword_21CBB05A8);
  v75 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v74 = &v67 - v4;
  v5 = sub_21CB83834();
  v6 = *(v5 - 8);
  v78 = v5;
  v79 = v6;
  MEMORY[0x28223BE20](v5);
  v69 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE530, &unk_21CBA9D80);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = &v67 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC390, &qword_21CBA40E0);
  MEMORY[0x28223BE20](v12 - 8);
  v77 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v67 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v67 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1080, &qword_21CBB0760);
  MEMORY[0x28223BE20](v20 - 8);
  v81 = &v67 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v84 = &v67 - v23;
  v72 = sub_21CB83604();
  v71 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v25 = &v67 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1088, &qword_21CBB0768);
  v82 = *(v26 - 8);
  v83 = v26;
  MEMORY[0x28223BE20](v26);
  v28 = &v67 - v27;
  sub_21CB835F4();
  v91 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1090, &qword_21CBB0770);
  v29 = v19;
  v30 = v78;
  sub_21C6EADEC(&qword_27CDF1098, &qword_27CDF1090, &qword_21CBB0770, MEMORY[0x277CE14C0]);
  v80 = v28;
  v70 = v25;
  sub_21CB82AA4();
  type metadata accessor for PMAppSourceList(0);
  v73 = v1;
  sub_21C728D50(v29);
  v31 = v79;
  (*(v79 + 104))(v16, *MEMORY[0x277CE0558], v30);
  (*(v31 + 56))(v16, 0, 1, v30);
  v32 = *(v9 + 56);
  sub_21C6EDBAC(v29, v11, &qword_27CDEC390, &qword_21CBA40E0);
  sub_21C6EDBAC(v16, &v11[v32], &qword_27CDEC390, &qword_21CBA40E0);
  v33 = *(v31 + 48);
  if (v33(v11, 1, v30) == 1)
  {
    sub_21C6EA794(v16, &qword_27CDEC390, &qword_21CBA40E0);
    sub_21C6EA794(v29, &qword_27CDEC390, &qword_21CBA40E0);
    if (v33(&v11[v32], 1, v30) == 1)
    {
      sub_21C6EA794(v11, &qword_27CDEC390, &qword_21CBA40E0);
      v34 = v84;
LABEL_9:
      v48 = v70;
      sub_21CB835F4();
      v49 = v74;
      sub_21C90ECB0(v48, v74);
      (*(v71 + 8))(v48, v72);
      v50 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF1008, &qword_21CBB0628);
      v51 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF1000, &qword_21CBB0620);
      v52 = sub_21C6EADEC(&qword_27CDF1020, &qword_27CDF1000, &qword_21CBB0620, MEMORY[0x277CDD7A8]);
      v92 = v51;
      v93 = MEMORY[0x277D837D0];
      v94 = v52;
      v95 = MEMORY[0x277D837E0];
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v92 = v50;
      v93 = OpaqueTypeConformance2;
      v54 = swift_getOpaqueTypeConformance2();
      v55 = v76;
      v56 = v86;
      MEMORY[0x21CF131E0](v49, v86, v54);
      v57 = v85;
      v58 = v81;
      v59 = v87;
      (*(v85 + 16))(v81, v55, v87);
      (*(v57 + 56))(v58, 0, 1, v59);
      v92 = v56;
      v93 = v54;
      v60 = swift_getOpaqueTypeConformance2();
      MEMORY[0x21CF13220](v58, v59, v60);
      sub_21C6EA794(v58, &qword_27CDF1080, &qword_21CBB0760);
      (*(v57 + 8))(v55, v59);
      (*(v75 + 8))(v49, v56);
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  v68 = v29;
  v35 = v77;
  sub_21C6EDBAC(v11, v77, &qword_27CDEC390, &qword_21CBA40E0);
  if (v33(&v11[v32], 1, v30) == 1)
  {
    sub_21C6EA794(v16, &qword_27CDEC390, &qword_21CBA40E0);
    sub_21C6EA794(v68, &qword_27CDEC390, &qword_21CBA40E0);
    (*(v31 + 8))(v35, v30);
LABEL_6:
    sub_21C6EA794(v11, &qword_27CDEE530, &unk_21CBA9D80);
    v34 = v84;
    goto LABEL_7;
  }

  v44 = &v11[v32];
  v45 = v69;
  (*(v31 + 32))(v69, v44, v30);
  sub_21C72A284(&qword_27CDEE538, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
  v46 = sub_21CB85574();
  v47 = *(v31 + 8);
  v47(v45, v30);
  sub_21C6EA794(v16, &qword_27CDEC390, &qword_21CBA40E0);
  sub_21C6EA794(v68, &qword_27CDEC390, &qword_21CBA40E0);
  v47(v35, v30);
  sub_21C6EA794(v11, &qword_27CDEC390, &qword_21CBA40E0);
  v34 = v84;
  if (v46)
  {
    goto LABEL_9;
  }

LABEL_7:
  v36 = v81;
  v37 = v87;
  (*(v85 + 56))(v81, 1, 1, v87);
  v38 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF1008, &qword_21CBB0628);
  v39 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF1000, &qword_21CBB0620);
  v40 = sub_21C6EADEC(&qword_27CDF1020, &qword_27CDF1000, &qword_21CBB0620, MEMORY[0x277CDD7A8]);
  v92 = v39;
  v93 = MEMORY[0x277D837D0];
  v94 = v40;
  v95 = MEMORY[0x277D837E0];
  v41 = swift_getOpaqueTypeConformance2();
  v92 = v38;
  v93 = v41;
  v42 = swift_getOpaqueTypeConformance2();
  v92 = v86;
  v93 = v42;
  v43 = swift_getOpaqueTypeConformance2();
  MEMORY[0x21CF13220](v36, v37, v43);
  sub_21C6EA794(v36, &qword_27CDF1080, &qword_21CBB0760);
LABEL_10:
  v61 = v88;
  v62 = *(v89 + 48);
  v64 = v82;
  v63 = v83;
  v65 = v80;
  (*(v82 + 16))(v88, v80, v83);
  sub_21C6EDBAC(v34, &v61[v62], &qword_27CDF1080, &qword_21CBB0760);
  sub_21CB83394();
  sub_21C6EA794(v34, &qword_27CDF1080, &qword_21CBB0760);
  return (*(v64 + 8))(v65, v63);
}

uint64_t sub_21C90D650(uint64_t a1)
{
  v1 = sub_21CB83994();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PMDebugSettingsView(0);
  *&v6 = MEMORY[0x28223BE20](v5).n128_u64[0];
  v8 = (v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  swift_storeEnumTagMultiPayload();
  v10[0] = 0x6974704F65726F6DLL;
  v10[1] = 0xEB00000000736E6FLL;
  type metadata accessor for PMAppSourceList(0);
  sub_21CB852C4();
  sub_21CB834F4();
  sub_21C72A284(&qword_27CDF0EF0, type metadata accessor for PMDebugSettingsView, &unk_21CBC4F04);
  sub_21CB84524();
  (*(v2 + 8))(v4, v1);
  return sub_21C9173A0(v8, type metadata accessor for PMDebugSettingsView);
}

uint64_t sub_21C90D86C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v51 = a2;
  v53 = a3;
  v4 = sub_21CB83994();
  v54 = *(v4 - 8);
  v55 = v4;
  MEMORY[0x28223BE20](v4);
  v52 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECBD8, &unk_21CBA5300);
  MEMORY[0x28223BE20](v50);
  v49 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v48 = &v47 - v8;
  v9 = sub_21CB82644();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v47 - v14;
  v16 = type metadata accessor for PMNewGroupFlow(0);
  MEMORY[0x28223BE20](v16);
  v18 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a1;
  v20 = type metadata accessor for PMAccount(0);
  (*(*(v20 - 8) + 56))(v18, 1, 1, v20);
  v21 = &v18[v16[6]];
  *(v21 + 3) = &type metadata for PMIMessageAvailabilityProviderMain;
  *(v21 + 4) = &off_282E572E8;
  *&v18[v16[5]] = v19;
  v47 = v16[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECBE0, &unk_21CBAE540);
  type metadata accessor for PMNewGroupFlow.Step(0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_21CBA0690;
  swift_storeEnumTagMultiPayload();
  v57 = v22;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECBE8, &qword_21CBA5310);
  sub_21C6EADEC(&qword_27CDECBF0, &qword_27CDECBE8, &qword_21CBA5310, MEMORY[0x277D83970]);
  sub_21C72A284(&qword_27CDECBF8, type metadata accessor for PMNewGroupFlow.Step, &unk_21CBC307C);
  sub_21CB82654();
  (*(v10 + 16))(v12, v15, v9);
  sub_21CB84D44();
  (*(v10 + 8))(v15, v9);
  v23 = &v18[v16[8]];
  v56 = 0;
  sub_21CB84D44();
  v24 = v58;
  *v23 = v57;
  *(v23 + 1) = v24;
  v25 = type metadata accessor for MoveAccountFailureAlertData(0);
  v26 = v48;
  (*(*(v25 - 8) + 56))(v48, 1, 1, v25);
  sub_21C6EDBAC(v26, v49, &qword_27CDECBD8, &unk_21CBA5300);
  sub_21CB84D44();
  sub_21C6EA794(v26, &qword_27CDECBD8, &unk_21CBA5300);
  v27 = v16[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  swift_storeEnumTagMultiPayload();
  v28 = v16[11];
  KeyPath = swift_getKeyPath(byte_21CBB00F0);
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  v30 = &v18[v28];
  sub_21CB86544();
  sub_21C7072A8(KeyPath, v57);

  type metadata accessor for PMAccountsState(0);
  sub_21C72A284(&qword_27CDEAE08, type metadata accessor for PMAccountsState, &protocol conformance descriptor for PMAccountsState);
  v31 = sub_21CB82674();
  v33 = v32;

  *v30 = v31;
  v30[1] = v33;
  v34 = &v18[v16[12]];
  type metadata accessor for PMPasswordManagerState(0);
  sub_21C72A284(&qword_27CDED2D0, type metadata accessor for PMPasswordManagerState, &protocol conformance descriptor for PMPasswordManagerState);
  *v34 = sub_21CB82B84();
  v34[1] = v35;
  v36 = &v18[v16[13]];
  v37 = swift_getKeyPath(byte_21CBB0118);
  sub_21CB86544();
  sub_21C7073E8(v37, v57);

  type metadata accessor for PMGroupsStore(0);
  sub_21C72A284(&qword_27CDEB7C8, type metadata accessor for PMGroupsStore, &protocol conformance descriptor for PMGroupsStore);
  v38 = sub_21CB82674();
  v40 = v39;

  *v36 = v38;
  v36[1] = v40;
  v41 = &v18[v16[14]];
  *v41 = swift_getKeyPath(byte_21CBB0530);
  v41[8] = 0;
  v42 = v16[15];
  v43 = v16[16];
  *&v18[v43] = swift_getKeyPath(byte_21CBB0558);
  v57 = 0x70756F724777656ELL;
  v58 = 0xE800000000000000;
  type metadata accessor for PMAppSourceList(0);
  sub_21CB852C4();
  v44 = v52;
  sub_21CB834F4();
  sub_21C72A284(&qword_27CDEB770, type metadata accessor for PMNewGroupFlow, &unk_21CBC30BC);
  v45 = v55;
  sub_21CB84524();
  (*(v54 + 8))(v44, v45);
  return sub_21C9173A0(v18, type metadata accessor for PMNewGroupFlow);
}

uint64_t sub_21C90E0B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25[2] = a2;
  v26 = sub_21CB83994();
  v3 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PMGeneratedPasswordsLogView(0);
  MEMORY[0x28223BE20](v6);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0DA0, &qword_21CBB01F8);
  v25[1] = a1;
  sub_21CB85084();
  v9 = v29;
  swift_getKeyPath(byte_21CBB02A8);
  *&v29 = v9;
  sub_21C72A284(&qword_27CDED320, type metadata accessor for PMAppSourceListModel, &unk_21CBB0DB8);
  sub_21CB810D4();

  v10 = *(v9 + OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel__searchModel);

  swift_getKeyPath(byte_21CBB0500);
  *&v29 = v10;
  sub_21C72A284(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel, &unk_21CBAB3D0);
  sub_21CB810D4();

  v11 = *(v10 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__searchText + 8);
  v25[0] = *(v10 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__searchText);

  swift_unknownObjectWeakInit();
  v12 = v6[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  swift_storeEnumTagMultiPayload();
  v13 = v6[6];
  KeyPath = swift_getKeyPath(byte_21CBB0138);
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  v15 = &v8[v13];
  sub_21CB86544();
  sub_21C7073D0(KeyPath, v29);

  type metadata accessor for PMGeneratedPasswordStore(0);
  sub_21C72A284(&qword_27CDEBEA0, type metadata accessor for PMGeneratedPasswordStore, &unk_21CBB83F8);
  v16 = sub_21CB82674();
  v18 = v17;

  *v15 = v16;
  v15[1] = v18;
  v19 = &v8[v6[8]];
  v27 = 0;
  v28 = 0xE000000000000000;
  sub_21CB84D44();
  v20 = &v8[v6[9]];
  v27 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBEA8, &unk_21CBA38A0);
  sub_21CB84D44();
  v21 = *(&v29 + 1);
  *v20 = v29;
  *(v20 + 1) = v21;
  v22 = v6[10];
  v27 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBEB0, &unk_21CBA5440);
  sub_21CB84D44();
  *&v8[v22] = v29;
  swift_unknownObjectWeakAssign();

  v8[v6[7]] = 1;
  *v19 = v25[0];
  *(v19 + 1) = v11;
  *(v19 + 2) = 0;
  *&v29 = 0xD000000000000012;
  *(&v29 + 1) = 0x800000021CB8F740;
  type metadata accessor for PMAppSourceList(0);
  sub_21CB852C4();
  sub_21CB834F4();
  sub_21C72A284(&qword_27CDEBDD8, type metadata accessor for PMGeneratedPasswordsLogView, &unk_21CBB7C80);
  v23 = v26;
  sub_21CB84524();
  (*(v3 + 8))(v5, v23);
  return sub_21C9173A0(v8, type metadata accessor for PMGeneratedPasswordsLogView);
}

uint64_t sub_21C90E5D0(uint64_t *a1, uint64_t *a2)
{
  sub_21C72A284(&qword_27CDED320, type metadata accessor for PMAppSourceListModel, &unk_21CBB0DB8);
  sub_21CB810C4();
}

uint64_t sub_21C90E69C(uint64_t *a1, uint64_t a2)
{
  v2 = sub_21CB83994();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PMExportAccountSelectionView(0);
  MEMORY[0x28223BE20](v6);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PMAppAccountsListModel(0);
  sub_21C72A284(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel, &unk_21CBAB3D0);

  sub_21CB850A4();
  v9 = v6[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  swift_storeEnumTagMultiPayload();
  v10 = &v8[v6[6]];
  v10[8] = 0;
  v11 = v6[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  swift_storeEnumTagMultiPayload();
  v13[0] = 0x6974704F65726F6DLL;
  v13[1] = 0xEB00000000736E6FLL;
  type metadata accessor for PMAppSourceList(0);
  sub_21CB852C4();
  sub_21CB834F4();
  sub_21C72A284(&qword_27CDF0F10, type metadata accessor for PMExportAccountSelectionView, &unk_21CBC5040);
  sub_21CB84524();
  (*(v3 + 8))(v5, v2);
  return sub_21C9173A0(v8, type metadata accessor for PMExportAccountSelectionView);
}

uint64_t sub_21C90E97C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0F88, &qword_21CBB05F0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v18 - v11;
  v13 = sub_21C73365C();
  if ((v13 & 1) != 0 || (v13 = type metadata accessor for PMAppSourceList(0), *(a1 + *(v13 + 56)) == 1))
  {
    v18 = &v18;
    MEMORY[0x28223BE20](v13);
    v19 = a2;
    *(&v18 - 2) = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4E8, &unk_21CBA28F0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1058, &qword_21CBB06A0);
    sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0, MEMORY[0x277CDEFF0]);
    sub_21C6EADEC(&qword_27CDF1060, &qword_27CDF1058, &qword_21CBB06A0, MEMORY[0x277CE14C0]);
    a2 = v19;
    sub_21CB83F54();
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0FA0, &qword_21CBB05F8);
    (*(*(v14 - 8) + 56))(v9, 0, 1, v14);
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0FA0, &qword_21CBB05F8);
    (*(*(v15 - 8) + 56))(v9, 1, 1, v15);
  }

  sub_21C716934(v9, v12, &qword_27CDF0F88, &qword_21CBB05F0);
  sub_21C6EDBAC(v12, v6, &qword_27CDF0F88, &qword_21CBB05F0);
  sub_21C6EDBAC(v6, a2, &qword_27CDF0F88, &qword_21CBB05F0);
  v16 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF10A0, &qword_21CBB0778) + 48);
  *v16 = 0;
  *(v16 + 8) = 1;
  sub_21C6EA794(v12, &qword_27CDF0F88, &qword_21CBB05F0);
  return sub_21C6EA794(v6, &qword_27CDF0F88, &qword_21CBB05F0);
}

uint64_t sub_21C90ECB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v4 = sub_21CB82F84();
  v28 = *(v4 - 8);
  v29 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21CB83604();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1000, &qword_21CBB0620);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v27 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1008, &qword_21CBB0628);
  v30 = *(v15 - 8);
  v31 = v15;
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v27 - v17;
  (*(v8 + 16))(v10, a1, v7, v16);
  v33 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1010, &unk_21CBB0630);
  sub_21C916690();
  sub_21CB82194();
  v34 = 0x756F636341646461;
  v35 = 0xEA0000000000746ELL;
  v19 = *(v2 + *(type metadata accessor for PMAppSourceList(0) + 48) + 8);

  if ((v19 & 1) == 0)
  {
    sub_21CB85B04();
    v20 = sub_21CB83C94();
    sub_21CB81C14();

    sub_21CB82F74();
    swift_getAtKeyPath();

    (*(v28 + 8))(v6, v29);
  }

  v21 = sub_21C6EADEC(&qword_27CDF1020, &qword_27CDF1000, &qword_21CBB0620, MEMORY[0x277CDD7A8]);
  v22 = MEMORY[0x277D837D0];
  v23 = MEMORY[0x277D837E0];
  sub_21CB82774();
  (*(v12 + 8))(v14, v11);
  v34 = v11;
  v35 = v22;
  v36 = v21;
  v37 = v23;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v25 = v31;
  MEMORY[0x21CF131E0](v18, v31, OpaqueTypeConformance2);
  return (*(v30 + 8))(v18, v25);
}

uint64_t sub_21C90F0EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21C73365C();
  if ((v4 & 1) != 0 || (v4 = type metadata accessor for PMAppSourceList(0), *(a1 + *(v4 + 56)) == 1))
  {
    MEMORY[0x28223BE20](v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4E8, &unk_21CBA28F0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1058, &qword_21CBB06A0);
    sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0, MEMORY[0x277CDEFF0]);
    sub_21C6EADEC(&qword_27CDF1060, &qword_27CDF1058, &qword_21CBB06A0, MEMORY[0x277CE14C0]);
    sub_21CB83F54();
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0FA0, &qword_21CBB05F8);
    return (*(*(v5 - 8) + 56))(a2, 0, 1, v5);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0FA0, &qword_21CBB05F8);
    v8 = *(*(v7 - 8) + 56);

    return v8(a2, 1, 1, v7);
  }
}

uint64_t sub_21C90F320@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB831C4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v8 = &v16[-v7];
  sub_21CB831B4();
  v17 = 1;
  v9 = *(v3 + 16);
  v9(v5, v8, v2);
  v16[0] = 1;
  v10 = v17;
  *a1 = 0;
  *(a1 + 8) = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1028, &qword_21CBB0640);
  v9((a1 + *(v11 + 48)), v5, v2);
  v12 = a1 + *(v11 + 64);
  v13 = v16[0];
  *v12 = 0;
  *(v12 + 8) = v13;
  v14 = *(v3 + 8);
  v14(v8, v2);
  return (v14)(v5, v2);
}

uint64_t sub_21C90F4AC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0DA0, &qword_21CBB01F8);
  sub_21CB85084();
  if (*(v2 + 18) == 1)
  {
    *(v2 + 18) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath(byte_21CBB03D8);
    MEMORY[0x28223BE20](KeyPath);
    sub_21C72A284(&qword_27CDED320, type metadata accessor for PMAppSourceListModel, &unk_21CBB0DB8);
    sub_21CB810C4();
  }
}

uint64_t sub_21C90F5F0()
{
  sub_21CB83134();

  return sub_21CB84CA4();
}

uint64_t sub_21C90F658(uint64_t a1)
{
  v2 = type metadata accessor for PMAppSourceList(0);
  v18 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v19 = v3;
  v20 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for PMAppAccountsListModel.Configuration(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0DA0, &qword_21CBB01F8);
  sub_21CB85084();
  v7 = v23;
  v8 = sub_21CB85C44();
  (*(*(v8 - 8) + 56))(v6, 4, 4, v8);
  type metadata accessor for PMAppAccountsListModel(0);
  swift_allocObject();
  v9 = sub_21C70FDD0(v6);
  v21 = v7;
  v22 = v9;
  v23 = v7;
  sub_21C72A284(&qword_27CDED320, type metadata accessor for PMAppSourceListModel, &unk_21CBB0DB8);
  sub_21CB810C4();

  sub_21CB85084();
  v10 = v23;
  v23 = v10;
  sub_21CB810D4();

  v11 = *(v10 + OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel__exportAccountSelectionModel);

  if (v11)
  {
    v13 = v20;
    sub_21C733540(a1, v20, type metadata accessor for PMAppSourceList);
    v14 = (*(v18 + 80) + 16) & ~*(v18 + 80);
    v15 = swift_allocObject();
    sub_21C72EBD4(v13, v15 + v14, type metadata accessor for PMAppSourceList);
    MEMORY[0x28223BE20](KeyPath);
    *(&v17 - 4) = v11;
    *(&v17 - 3) = sub_21C9169F0;
    *(&v17 - 2) = v15;
    v23 = v11;
    sub_21C72A284(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel, &unk_21CBAB3D0);
    sub_21CB810C4();
  }

  return result;
}

uint64_t sub_21C90FA48()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0DA0, &qword_21CBB01F8);
  sub_21CB85084();
  if (*(v2 + OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel__showExportError) == 1)
  {
    *(v2 + OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel__showExportError) = 1;
  }

  else
  {
    MEMORY[0x28223BE20](KeyPath);
    sub_21C72A284(&qword_27CDED320, type metadata accessor for PMAppSourceListModel, &unk_21CBB0DB8);
    sub_21CB810C4();
  }
}

uint64_t sub_21C90FB94@<X0>(uint64_t *a2@<X8>)
{
  sub_21C72A284(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel, &unk_21CBAB3D0);
  sub_21CB810D4();

  v4 = sub_21C713194(v3);
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
  return result;
}

uint64_t sub_21C90FC60(uint64_t *a1)
{
  v1 = a1[1];
  if (v1)
  {
    v2 = *a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAFA8, &unk_21CBA0C70);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21CBA0690;
    *(inited + 32) = v2;
    *(inited + 40) = v1;

    v4 = sub_21C8D7470(inited);
    swift_setDeallocating();
    sub_21C81A534(inited + 32);
    v5 = v4;
  }

  else
  {
    v5 = MEMORY[0x277D84FA0];
  }

  return sub_21C880484(v5);
}

uint64_t sub_21C90FD14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v75 = a2;
  v82 = a1;
  v90 = a3;
  v72 = type metadata accessor for PMAppSourceList(0);
  v68 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v69 = v3;
  v70 = &v67 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for PMGeneratedPasswordsSearchResultsRow(0);
  MEMORY[0x28223BE20](v74);
  v73 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEED88, &qword_21CBAAFC0);
  v87 = *(v5 - 8);
  v88 = v5;
  MEMORY[0x28223BE20](v5);
  v71 = &v67 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEED90, &qword_21CBAAFC8);
  MEMORY[0x28223BE20](v7 - 8);
  v89 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v85 = &v67 - v10;
  v83 = sub_21CB81024();
  v81 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v12 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF10B0, &qword_21CBB0790);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v67 - v15;
  v84 = (type metadata accessor for PMAppAccountsCollectionView(0) - 8);
  MEMORY[0x28223BE20](v84);
  v86 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = (&v67 - v19);
  v93 = swift_projectBox();
  v91 = *(v14 + 16);
  v91(v16, v93, v13);
  sub_21CB85084();
  v21 = *(v14 + 8);
  v21(v16, v13);
  v22 = v94;
  swift_getKeyPath(byte_21CBB08C0);
  v94 = v22;
  v92 = sub_21C72A284(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel, &unk_21CBAB3D0);
  sub_21CB810D4();

  v80 = *(v22 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__listedAccounts);

  v23 = v93;
  v24 = v91;
  v91(v16, v93, v13);
  sub_21CB85084();
  v78 = v21;
  v21(v16, v13);
  v79 = sub_21C882110();

  sub_21CB81014();
  v25 = sub_21CB81004();
  v76 = v26;
  v77 = v25;
  (*(v81 + 8))(v12, v83);
  v24(v16, v23, v13);
  sub_21CB85084();
  v21(v16, v13);
  v27 = v94;
  swift_getKeyPath(byte_21CBB0500);
  v94 = v27;
  sub_21CB810D4();

  v29 = *(v27 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__searchText);
  v28 = *(v27 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__searchText + 8);

  v30 = v79;
  *v20 = v80;
  v20[1] = v30;
  v31 = v76;
  v20[2] = v77;
  v20[3] = v31;
  v20[4] = v29;
  v20[5] = v28;
  v32 = v24;
  v33 = v93;
  v34 = v82;
  v20[6] = sub_21C916B48;
  v20[7] = v34;
  v35 = *(v84 + 11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  v84 = v20;
  v36 = v78;
  swift_storeEnumTagMultiPayload();
  v83 = v14 + 16;
  v32(v16, v33, v13);

  sub_21CB85084();
  v36(v16, v13);
  v37 = v94;
  swift_getKeyPath(byte_21CBB0500);
  v94 = v37;
  sub_21CB810D4();

  v38 = *(v37 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__searchText);
  v39 = *(v37 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__searchText + 8);

  v40 = HIBYTE(v39) & 0xF;
  if ((v39 & 0x2000000000000000) == 0)
  {
    v40 = v38 & 0xFFFFFFFFFFFFLL;
  }

  if (v40)
  {
    v91(v16, v33, v13);
    sub_21CB85084();
    v36(v16, v13);
    v41 = v94;
    swift_getKeyPath(byte_21CBB0500);
    v94 = v41;
    sub_21CB810D4();

    v42 = *(v41 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__searchText);
    v43 = *(v41 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__searchText + 8);

    v44 = v70;
    sub_21C733540(v75, v70, type metadata accessor for PMAppSourceList);
    v45 = (*(v68 + 80) + 16) & ~*(v68 + 80);
    v46 = swift_allocObject();
    sub_21C72EBD4(v44, v46 + v45, type metadata accessor for PMAppSourceList);
    KeyPath = swift_getKeyPath(byte_21CBB0530);
    v48 = v73;
    *(v73 + 2) = KeyPath;
    *(v48 + 24) = 0;
    v49 = v74;
    v50 = *(v74 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB998, &qword_21CBA2700);
    swift_storeEnumTagMultiPayload();
    v51 = (v48 + *(v49 + 28));
    *v51 = v42;
    v51[1] = v43;
    type metadata accessor for PMGeneratedPasswordsSearchResultsModel();
    swift_allocObject();

    sub_21C7D56B0(v42, v43);
    sub_21C72A284(&qword_27CDEDC18, type metadata accessor for PMGeneratedPasswordsSearchResultsModel, &unk_21CBA2038);
    *v48 = sub_21CB82674();
    *(v48 + 8) = v52;
    v53 = (v48 + *(v49 + 32));
    *v53 = sub_21C916B50;
    v53[1] = v46;
    v94 = 0xD000000000000012;
    v95 = 0x800000021CB8F740;
    sub_21CB852C4();
    sub_21C72A284(&qword_27CDEDB30, type metadata accessor for PMGeneratedPasswordsSearchResultsRow, &unk_21CBB8038);
    v54 = v71;
    sub_21CB845E4();
    sub_21C9173A0(v48, type metadata accessor for PMGeneratedPasswordsSearchResultsRow);
    v56 = v87;
    v55 = v88;
    v57 = v85;
    (*(v87 + 32))(v85, v54, v88);
    v58 = 0;
    v59 = v55;
    v60 = v56;
  }

  else
  {
    v58 = 1;
    v60 = v87;
    v59 = v88;
    v57 = v85;
  }

  (*(v60 + 56))(v57, v58, 1, v59);
  v61 = v84;
  v62 = v86;
  sub_21C733540(v84, v86, type metadata accessor for PMAppAccountsCollectionView);
  v63 = v89;
  sub_21C6EDBAC(v57, v89, &qword_27CDEED90, &qword_21CBAAFC8);
  v64 = v90;
  sub_21C733540(v62, v90, type metadata accessor for PMAppAccountsCollectionView);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF10D0, &qword_21CBB0948);
  sub_21C6EDBAC(v63, v64 + *(v65 + 48), &qword_27CDEED90, &qword_21CBAAFC8);
  sub_21C6EA794(v57, &qword_27CDEED90, &qword_21CBAAFC8);
  sub_21C9173A0(v61, type metadata accessor for PMAppAccountsCollectionView);
  sub_21C6EA794(v63, &qword_27CDEED90, &qword_21CBAAFC8);
  return sub_21C9173A0(v62, type metadata accessor for PMAppAccountsCollectionView);
}

uint64_t sub_21C910818(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF10B0, &qword_21CBB0790);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - v5;
  v7 = swift_projectBox();
  (*(v4 + 16))(v6, v7, v3);
  sub_21CB85084();
  (*(v4 + 8))(v6, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC2B0, &unk_21CBA0D70);
  v8 = *(type metadata accessor for PMAccount(0) - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_21CBA0690;
  sub_21C733540(a1, v10 + v9, type metadata accessor for PMAccount);
  sub_21C884B98(v10, 0);
}

uint64_t sub_21C9109F0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0DA0, &qword_21CBB01F8);
  sub_21CB85084();
  swift_getKeyPath(byte_21CBB0438);
  sub_21C72A284(&qword_27CDED320, type metadata accessor for PMAppSourceListModel, &unk_21CBB0DB8);
  sub_21CB810D4();

  swift_getKeyPath(byte_21CBB0438);
  sub_21CB810F4();

  *(v1 + 16) = (*(v1 + 16) & 1) == 0;
  swift_getKeyPath(byte_21CBB0438);
  sub_21CB810E4();
}

uint64_t sub_21C910B2C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  sub_21C72A284(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel, &unk_21CBAB3D0);
  sub_21CB810D4();

  v4 = OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__deleteAccountsAlertConfiguration;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_21C910BF4(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  sub_21CB858B4();
  v2[5] = sub_21CB858A4();
  v4 = sub_21CB85874();

  return MEMORY[0x2822009F8](sub_21C910C8C, v4, v3);
}

uint64_t sub_21C910C8C()
{
  v1 = v0[3];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0DA0, &qword_21CBB01F8);
  sub_21CB85084();
  v2 = v0[2];
  swift_getKeyPath(byte_21CBB02A8);
  v0[2] = v2;
  sub_21C72A284(&qword_27CDED320, type metadata accessor for PMAppSourceListModel, &unk_21CBB0DB8);
  sub_21CB810D4();

  v3 = *(v2 + OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel__searchModel);

  v4 = swift_task_alloc();
  *(v4 + 16) = v3;
  *(v4 + 24) = v1;
  sub_21CB85254();
  sub_21CB82524();

  sub_21CB85084();
  v5 = v0[2];
  swift_getKeyPath(byte_21CBB02A8);
  v0[2] = v5;
  sub_21CB810D4();

  sub_21CB85254();
  sub_21CB82524();

  v6 = v0[1];

  return v6();
}

uint64_t sub_21C910EBC@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC0D8, &qword_21CBA3C70);
  v9 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v9 - v3;
  if (sub_21C911158())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0DA0, &qword_21CBB01F8);
    sub_21CB85084();
    v5 = v10;
    swift_getKeyPath(byte_21CBB02A8);
    v10 = v5;
    sub_21C72A284(&qword_27CDED320, type metadata accessor for PMAppSourceListModel, &unk_21CBB0DB8);
    sub_21CB810D4();

    v6 = *(v5 + OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel__searchModel);

    swift_getKeyPath(byte_21CBB0500);
    v10 = v6;
    sub_21C72A284(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel, &unk_21CBAB3D0);
    sub_21CB810D4();

    sub_21CB83784();

    (*(v9 + 32))(a1, v4, v2);
    return (*(v9 + 56))(a1, 0, 1, v2);
  }

  else
  {
    v8 = *(v9 + 56);

    return v8(a1, 1, 1, v2);
  }
}

BOOL sub_21C911158()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0DA0, &qword_21CBB01F8);
  sub_21CB85084();
  swift_getKeyPath(byte_21CBB02A8);
  sub_21C72A284(&qword_27CDED320, type metadata accessor for PMAppSourceListModel, &unk_21CBB0DB8);
  sub_21CB810D4();

  v0 = *(v5 + OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel__searchModel);

  swift_getKeyPath(byte_21CBB08C0);
  sub_21C72A284(&qword_27CDEAC30, type metadata accessor for PMAppAccountsListModel, &unk_21CBAB3D0);
  sub_21CB810D4();

  v1 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI22PMAppAccountsListModel__listedAccounts);

  v2 = *(v1 + 16);

  return !v2 && sub_21C730A84();
}

uint64_t sub_21C9112DC()
{
  result = [objc_opt_self() isOngoingCredentialSharingEnabled];
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0DA0, &qword_21CBB01F8);
    sub_21CB85084();
    v1 = sub_21C917CF4();

    if ((v1 & 1) == 0)
    {
      type metadata accessor for PMAppSourceList(0);
      sub_21CB81DB4();

      v2 = *(*&v10[0] + 16);

      if (!v2)
      {
        swift_getKeyPath(byte_21CBB0AD0);
        swift_getKeyPath(byte_21CBB0AF8);
        sub_21CB81DB4();

        v10[3] = v7;
        v10[4] = v8;
        v11 = v9;
        v10[0] = v4;
        v10[1] = v5;
        v10[2] = v6;
        if (!*(&v4 + 1))
        {
          return 0;
        }

        v3 = *&v10[0];
        sub_21C6EA794(v10, &unk_27CDED230, &unk_21CBA6460);
        if (v3 != 2)
        {
          return v3 == 3;
        }
      }
    }

    return 1;
  }

  return result;
}

uint64_t sub_21C911494@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v74 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1100, &qword_21CBB0A20);
  v72 = *(v3 - 8);
  v73 = v3;
  MEMORY[0x28223BE20](v3);
  v65 = v55 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0DA0, &qword_21CBB01F8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v55 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1108, &qword_21CBB0A28);
  v59 = *(v9 - 8);
  v60 = v9;
  MEMORY[0x28223BE20](v9);
  v58 = v55 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1110, &qword_21CBB0A30);
  v63 = *(v11 - 8);
  v64 = v11;
  MEMORY[0x28223BE20](v11);
  v62 = v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v61 = v55 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1118, &qword_21CBB0A38);
  MEMORY[0x28223BE20](v15 - 8);
  v71 = v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v70 = v55 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1120, &qword_21CBB0A40);
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = v55 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1128, &qword_21CBB0A48);
  v68 = *(v23 - 8);
  v69 = v23;
  MEMORY[0x28223BE20](v23);
  v66 = v55 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = v55 - v26;
  v75 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1130, &qword_21CBB0A50);
  sub_21C916B78();
  sub_21CB85054();
  sub_21C916DA4();
  v67 = v27;
  sub_21CB845D4();
  (*(v20 + 8))(v22, v19);
  if (sub_21C9112DC())
  {
    sub_21CB85094();
    swift_getKeyPath(byte_21CBB0A80);
    sub_21CB850B4();

    v28 = (*(v6 + 8))(v8, v5);
    v56 = *(&v83 + 1);
    v57 = v83;
    v55[1] = v84;
    MEMORY[0x28223BE20](v28);
    MEMORY[0x28223BE20](v29);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0B80, &qword_21CBAFAA0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1198, &qword_21CBB0AB0);
    sub_21C74AA20();
    sub_21C6EADEC(&qword_27CDF11A0, &qword_27CDF1198, &qword_21CBB0AB0, MEMORY[0x277CE14C0]);
    v30 = v58;
    v31 = sub_21CB85024();
    MEMORY[0x28223BE20](v31);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF11A8, &qword_21CBB0AB8);
    sub_21C916E4C();
    sub_21C916F10();
    v32 = v60;
    v33 = v61;
    sub_21CB842A4();
    (*(v59 + 8))(v30, v32);
    sub_21C9136F0(v79);
    v35 = v62;
    v34 = v63;
    v36 = *(v63 + 16);
    v37 = v64;
    v36(v62, v33, v64);
    v76 = v79[0];
    v77 = v79[1];
    v78[0] = v80[0];
    *(v78 + 9) = *(v80 + 9);
    v38 = v65;
    v36(v65, v35, v37);
    v39 = (v38 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF11C0, &qword_21CBB0AC0) + 48));
    v40 = *(v78 + 9);
    *(v82 + 9) = *(v78 + 9);
    v41 = v77;
    v81[0] = v76;
    v81[1] = v77;
    v42 = v78[0];
    v82[0] = v78[0];
    *v39 = v76;
    v39[1] = v41;
    v39[2] = v42;
    *(v39 + 41) = v40;
    sub_21C6EDBAC(v81, &v83, &qword_27CDF11C8, &qword_21CBB0AC8);
    v43 = *(v34 + 8);
    v43(v33, v37);
    v83 = v76;
    v84 = v77;
    v85[0] = v78[0];
    *(v85 + 9) = *(v78 + 9);
    sub_21C6EA794(&v83, &qword_27CDF11C8, &qword_21CBB0AC8);
    v43(v35, v37);
    v44 = v70;
    sub_21C767AB0(v38, v70);
    (*(v72 + 56))(v44, 0, 1, v73);
  }

  else
  {
    v44 = v70;
    (*(v72 + 56))(v70, 1, 1, v73);
  }

  v46 = v67;
  v45 = v68;
  v47 = *(v68 + 16);
  v48 = v66;
  v49 = v69;
  v47(v66, v67, v69);
  v50 = v71;
  sub_21C6EDBAC(v44, v71, &qword_27CDF1118, &qword_21CBB0A38);
  v51 = v74;
  v47(v74, v48, v49);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1190, &qword_21CBB0A78);
  sub_21C6EDBAC(v50, &v51[*(v52 + 48)], &qword_27CDF1118, &qword_21CBB0A38);
  sub_21C6EA794(v44, &qword_27CDF1118, &qword_21CBB0A38);
  v53 = *(v45 + 8);
  v53(v46, v49);
  sub_21C6EA794(v50, &qword_27CDF1118, &qword_21CBB0A38);
  return (v53)(v48, v49);
}

uint64_t sub_21C911DB0@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0DA0, &qword_21CBB01F8);
  sub_21CB85084();
  sub_21C731450(v5, a1);
  *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1158, &qword_21CBB0A60) + 36)) = 256;
  v2 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1148, &qword_21CBB0A58) + 36);
  v2[32] = 0;
  *v2 = 0u;
  *(v2 + 1) = 0u;
  v3 = sub_21CB84F14();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1130, &qword_21CBB0A50);
  *(a1 + *(result + 36)) = v3;
  return result;
}

uint64_t sub_21C911EBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v47 = type metadata accessor for PMAppSourceList(0);
  v49 = *(v47 - 8);
  v3 = *(v49 + 64);
  MEMORY[0x28223BE20](v47);
  v46 = v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF11D8, &qword_21CBB0B28);
  v53 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v52 = v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v51 = v40 - v7;
  v8 = type metadata accessor for PMAppSourceListModel.Source(0);
  MEMORY[0x28223BE20](v8);
  v44 = v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA568, &qword_21CBB0B30);
  MEMORY[0x28223BE20](v10 - 8);
  v43 = v40 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF11E0, &qword_21CBB0B38);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v42 = v40 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF11E8, &qword_21CBB0B40);
  MEMORY[0x28223BE20](v15 - 8);
  v50 = v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = v40 - v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0DA0, &qword_21CBB01F8);
  sub_21CB85084();
  v20 = sub_21C917CF4();

  v21 = 1;
  if (v20)
  {
    v22 = sub_21CB85184();
    v40[1] = v40;
    MEMORY[0x28223BE20](v22);
    v40[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1238, &qword_21CBB0BC0);
    sub_21C91733C();
    v41 = v12;
    sub_21C6EADEC(&qword_27CDF1248, &qword_27CDF1238, &qword_21CBB0BC0, MEMORY[0x277CE1138]);
    v23 = v43;
    sub_21CB85194();
    v24 = v44;
    swift_storeEnumTagMultiPayload();
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA558, &qword_21CB9E668);
    v26 = v42;
    v27 = &v42[*(v25 + 36)];
    sub_21C72EBD4(v24, v27, type metadata accessor for PMAppSourceListModel.Source);
    *(v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA560, &unk_21CB9E670) + 36)) = 1;
    v12 = v41;
    sub_21C716934(v23, v26, &qword_27CDEA568, &qword_21CBB0B30);
    (*(v13 + 32))(v19, v26, v12);
    v21 = 0;
  }

  (*(v13 + 56))(v19, v21, 1, v12);
  v45 = v19;
  sub_21CB81DB4();

  v28 = v46;
  sub_21C733540(a1, v46, type metadata accessor for PMAppSourceList);
  v29 = (*(v49 + 80) + 16) & ~*(v49 + 80);
  v30 = swift_allocObject();
  sub_21C72EBD4(v28, v30 + v29, type metadata accessor for PMAppSourceList);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDBA8, &qword_21CBA9380);
  sub_21CB85C44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF11F0, &qword_21CBB0B98);
  sub_21C6EADEC(&qword_27CDEDBB8, &qword_27CDEDBA8, &qword_21CBA9380, MEMORY[0x277D83980]);
  sub_21C9170AC();
  sub_21C72A284(&qword_27CDEDBC8, type metadata accessor for PMSharingGroup, &unk_21CBCAC0C);
  v31 = v51;
  sub_21CB84FF4();
  v32 = v50;
  sub_21C6EDBAC(v19, v50, &qword_27CDF11E8, &qword_21CBB0B40);
  v34 = v52;
  v33 = v53;
  v35 = *(v53 + 16);
  v35(v52, v31, v4);
  v36 = v48;
  sub_21C6EDBAC(v32, v48, &qword_27CDF11E8, &qword_21CBB0B40);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1230, &qword_21CBB0BB8);
  v35((v36 + *(v37 + 48)), v34, v4);
  v38 = *(v33 + 8);
  v38(v31, v4);
  sub_21C6EA794(v45, &qword_27CDF11E8, &qword_21CBB0B40);
  v38(v34, v4);
  return sub_21C6EA794(v32, &qword_27CDF11E8, &qword_21CBB0B40);
}

uint64_t sub_21C912674@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath(byte_21CBB0118);
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C7073E8(KeyPath, v7);

  type metadata accessor for PMGroupsStore(0);
  sub_21C72A284(&qword_27CDEB7C8, type metadata accessor for PMGroupsStore, &protocol conformance descriptor for PMGroupsStore);
  v3 = sub_21CB82674();
  v5 = v4;

  result = swift_getKeyPath(byte_21CBB09E8);
  *a1 = v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = result;
  *(a1 + 24) = 0;
  return result;
}

uint64_t sub_21C912788@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_21CB83074();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1250, &qword_21CBB0BC8);
  return sub_21C914244(a1, (a2 + *(v4 + 44)));
}

uint64_t sub_21C9127E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v45 = a1;
  v53 = a3;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1280, &qword_21CBB0BF8);
  MEMORY[0x28223BE20](v47);
  v52 = v44 - v4;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA578, &qword_21CBB0BA0);
  MEMORY[0x28223BE20](v48);
  v46 = v44 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1288, &unk_21CBB0C00);
  v50 = *(v6 - 8);
  v51 = v6;
  MEMORY[0x28223BE20](v6);
  v49 = v44 - v7;
  v8 = type metadata accessor for PMAppSourceListModel.Source(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v54 = v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDED310, &unk_21CBA0150);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v14 = v44 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC20, &qword_21CBAD710);
  MEMORY[0x28223BE20](v15 - 8);
  v44[0] = v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = v44 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = v44 - v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0DA0, &qword_21CBB01F8);
  v44[1] = a2;
  sub_21CB85084();
  v23 = v55;
  swift_getKeyPath(byte_21CBB0988);
  v55 = v23;
  sub_21C72A284(&qword_27CDED320, type metadata accessor for PMAppSourceListModel, &unk_21CBB0DB8);
  sub_21CB810D4();

  v24 = OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel__selectedSource;
  swift_beginAccess();
  sub_21C6EDBAC(v23 + v24, v22, &qword_27CDEAC20, &qword_21CBAD710);

  swift_storeEnumTagMultiPayload();
  (*(v9 + 56))(v19, 0, 1, v8);
  v25 = *(v12 + 56);
  v26 = v8;
  sub_21C6EDBAC(v22, v14, &qword_27CDEAC20, &qword_21CBAD710);
  sub_21C6EDBAC(v19, &v14[v25], &qword_27CDEAC20, &qword_21CBAD710);
  v27 = *(v9 + 48);
  if (v27(v14, 1, v26) != 1)
  {
    v28 = v44[0];
    sub_21C6EDBAC(v14, v44[0], &qword_27CDEAC20, &qword_21CBAD710);
    if (v27(&v14[v25], 1, v26) != 1)
    {
      v29 = v54;
      sub_21C72EBD4(&v14[v25], v54, type metadata accessor for PMAppSourceListModel.Source);
      sub_21C918FE4(v28, v29);
      sub_21C9173A0(v29, type metadata accessor for PMAppSourceListModel.Source);
      sub_21C6EA794(v19, &qword_27CDEAC20, &qword_21CBAD710);
      sub_21C6EA794(v22, &qword_27CDEAC20, &qword_21CBAD710);
      sub_21C9173A0(v28, type metadata accessor for PMAppSourceListModel.Source);
      sub_21C6EA794(v14, &qword_27CDEAC20, &qword_21CBAD710);
      goto LABEL_8;
    }

    sub_21C6EA794(v19, &qword_27CDEAC20, &qword_21CBAD710);
    sub_21C6EA794(v22, &qword_27CDEAC20, &qword_21CBAD710);
    sub_21C9173A0(v28, type metadata accessor for PMAppSourceListModel.Source);
    goto LABEL_6;
  }

  sub_21C6EA794(v19, &qword_27CDEAC20, &qword_21CBAD710);
  sub_21C6EA794(v22, &qword_27CDEAC20, &qword_21CBAD710);
  if (v27(&v14[v25], 1, v26) != 1)
  {
LABEL_6:
    sub_21C6EA794(v14, &unk_27CDED310, &unk_21CBA0150);
    goto LABEL_8;
  }

  sub_21C6EA794(v14, &qword_27CDEAC20, &qword_21CBAD710);
LABEL_8:
  v30 = sub_21CB85184();
  MEMORY[0x28223BE20](v30);
  v31 = v45;
  MEMORY[0x28223BE20](v32);
  type metadata accessor for PMGroupRow(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1228, &qword_21CBB0BB0);
  sub_21C72A284(&qword_27CDF1218, type metadata accessor for PMGroupRow, &unk_21CBBD4D0);
  sub_21C6EADEC(&qword_27CDF1220, &qword_27CDF1228, &qword_21CBB0BB0, MEMORY[0x277CE1138]);
  v33 = v46;
  sub_21CB85194();
  v34 = sub_21CB85C44();
  v35 = v54;
  (*(*(v34 - 8) + 16))(v54, v31, v34);
  swift_storeEnumTagMultiPayload();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA570, &unk_21CB9E680);
  v37 = v49;
  v38 = &v49[*(v36 + 36)];
  sub_21C72EBD4(v35, v38, type metadata accessor for PMAppSourceListModel.Source);
  *(v38 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA560, &unk_21CB9E670) + 36)) = 1;
  sub_21C716934(v33, v37, &qword_27CDEA578, &qword_21CBB0BA0);
  v40 = v50;
  v39 = v51;
  (*(v50 + 16))(v52, v37, v51);
  swift_storeEnumTagMultiPayload();
  v41 = sub_21C9171BC();
  v42 = sub_21C72A284(&qword_27CDF10F0, type metadata accessor for PMAppSourceListModel.Source, &unk_21CBB0D10);
  v55 = v48;
  v56 = v26;
  v57 = v41;
  v58 = v42;
  swift_getOpaqueTypeConformance2();
  sub_21CB83494();
  return (*(v40 + 8))(v37, v39);
}

void sub_21C913310(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21CB82F84();
  v31 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21CB81024();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v11 = sub_21CB81004();
  v13 = v12;
  (*(v8 + 8))(v10, v7);
  v32 = v11;
  v33 = v13;
  sub_21C71F3FC();
  v14 = sub_21CB84054();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = sub_21CB83D14();
  v22 = a1 + *(type metadata accessor for PMAppSourceList(0) + 36);
  v23 = *v22;
  if (*(v22 + 8) != 1)
  {

    sub_21CB85B04();
    v30 = v4;
    v24 = sub_21CB83C94();
    sub_21CB81C14();

    sub_21CB82F74();
    swift_getAtKeyPath();
    sub_21C7025C4(v23, 0);
    (*(v31 + 8))(v6, v30);
  }

  sub_21CB81F24();
  *a2 = v14;
  *(a2 + 8) = v16;
  *(a2 + 16) = v18 & 1;
  *(a2 + 24) = v20;
  *(a2 + 32) = v21;
  *(a2 + 40) = v25;
  *(a2 + 48) = v26;
  *(a2 + 56) = v27;
  *(a2 + 64) = v28;
  *(a2 + 72) = 0;
}

uint64_t sub_21C9135C0(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF11D0, &qword_21CBB0B20);
  MEMORY[0x28223BE20](v1);
  sub_21CB85184();
  sub_21CB831D4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0FB0, &qword_21CBB0600);
  swift_getOpaqueTypeConformance2();
  sub_21C91651C();
  return sub_21CB851A4();
}

uint64_t sub_21C9136F0@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for PMAppSourceList(0);
  swift_getKeyPath(byte_21CBB0AD0);
  swift_getKeyPath(byte_21CBB0AF8);
  sub_21CB81DB4();

  v30 = v19;
  v31 = v20;
  v32 = v21;
  v33 = v22;
  v28 = v17;
  v29 = v18;
  v2 = *(&v17 + 1);
  if (!*(&v17 + 1))
  {
    goto LABEL_6;
  }

  v25 = v31;
  v26 = v32;
  v3 = v28;
  v27 = v33;
  v23 = v29;
  v24 = v30;
  swift_getKeyPath(byte_21CBB0AD0);
  swift_getKeyPath(byte_21CBB0AF8);
  sub_21CB81DB4();

  v19 = v13;
  v20 = v14;
  v21 = v15;
  v22 = v16;
  v17 = v11;
  v18 = v12;
  if (!*(&v11 + 1) || (v4 = v17, sub_21C6EA794(&v17, &unk_27CDED230, &unk_21CBA6460), (v4 & 0xFFFFFFFFFFFFFFFELL) != 2))
  {
    sub_21C6EA794(&v28, &unk_27CDED230, &unk_21CBA6460);
LABEL_6:
    v10 = 0;
    v5 = 0;
    result = 0;
    v9 = 0;
    goto LABEL_7;
  }

  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v2;
  v6 = v26;
  *(v5 + 64) = v25;
  *(v5 + 80) = v6;
  *(v5 + 96) = v27;
  v7 = v24;
  *(v5 + 32) = v23;
  *(v5 + 48) = v7;
  v9 = 256;
  v10 = sub_21C916FD8;
LABEL_7:
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = v9;
  *(a1 + 32) = v10;
  *(a1 + 40) = v5;
  *(a1 + 48) = result;
  *(a1 + 56) = 0;
  return result;
}

uint64_t sub_21C913918@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_21C733540(a1, a2, type metadata accessor for PMSharingGroup);
  v3 = type metadata accessor for PMGroupRow(0);
  v4 = v3[5];
  KeyPath = swift_getKeyPath(byte_21CBB00F0);
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  v6 = (a2 + v4);
  sub_21CB86544();
  sub_21C7072A8(KeyPath, v13);

  type metadata accessor for PMAccountsState(0);
  sub_21C72A284(&qword_27CDEAE08, type metadata accessor for PMAccountsState, &protocol conformance descriptor for PMAccountsState);
  v7 = sub_21CB82674();
  v9 = v8;

  *v6 = v7;
  v6[1] = v9;
  v10 = a2 + v3[6];
  *v10 = swift_getKeyPath(byte_21CBB09E8);
  *(v10 + 8) = 0;
  v11 = a2 + v3[7];
  *v11 = result;
  *(v11 + 8) = 0;
  return result;
}

uint64_t sub_21C913A88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = sub_21CB83074();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1290, &qword_21CBB0C10);
  return sub_21C913AF0(a2, a1, a3 + *(v6 + 44));
}

uint64_t sub_21C913AF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v72 = a2;
  v80 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1258, &qword_21CBB0BD0);
  v76 = *(v4 - 8);
  v77 = v4;
  MEMORY[0x28223BE20](v4);
  v71 = &v71 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1260, &qword_21CBB0BD8);
  MEMORY[0x28223BE20](v6 - 8);
  v79 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v78 = &v71 - v9;
  v10 = sub_21CB82F84();
  v73 = *(v10 - 8);
  v74 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PMGroupRow(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1298, &qword_21CBB0C18);
  MEMORY[0x28223BE20](v16);
  v75 = &v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v71 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v71 - v22;
  sub_21C733540(a1, v15, type metadata accessor for PMSharingGroup);
  v24 = &v15[v13[5]];
  KeyPath = swift_getKeyPath(byte_21CBB00F0);
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C7072A8(KeyPath, v82);

  type metadata accessor for PMAccountsState(0);
  sub_21C72A284(&qword_27CDEAE08, type metadata accessor for PMAccountsState, &protocol conformance descriptor for PMAccountsState);
  v26 = sub_21CB82674();
  v28 = v27;

  *v24 = v26;
  v24[1] = v28;
  v29 = &v15[v13[6]];
  *v29 = swift_getKeyPath(byte_21CBB09E8);
  v29[8] = 0;
  v30 = &v15[v13[7]];
  v30[8] = 0;
  v31 = sub_21CB83D14();
  v32 = v72 + *(type metadata accessor for PMAppSourceList(0) + 36);
  v33 = *v32;
  v34 = *(v32 + 8);
  if (v34 != 1)
  {

    sub_21CB85B04();
    v35 = sub_21CB83C94();
    sub_21CB81C14();

    sub_21CB82F74();
    swift_getAtKeyPath();
    sub_21C7025C4(v33, 0);
    (*(v73 + 8))(v12, v74);
  }

  sub_21CB81F24();
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;
  sub_21C72EBD4(v15, v20, type metadata accessor for PMGroupRow);
  v44 = &v20[*(v16 + 36)];
  *v44 = v31;
  *(v44 + 1) = v37;
  *(v44 + 2) = v39;
  *(v44 + 3) = v41;
  *(v44 + 4) = v43;
  v44[40] = 0;
  sub_21C716934(v20, v23, &qword_27CDF1298, &qword_21CBB0C18);
  v45 = v78;
  if (!v34)
  {

    sub_21CB85B04();
    v48 = sub_21CB83C94();
    sub_21CB81C14();

    sub_21CB82F74();
    swift_getAtKeyPath();
    sub_21C7025C4(v33, 0);
    (*(v73 + 8))(v12, v74);
    if (v81)
    {
      goto LABEL_7;
    }

LABEL_9:
    v49 = v71;
    sub_21CB83614();
    v50 = sub_21CB83D34();
    sub_21CB81F24();
    v52 = v51;
    v54 = v53;
    v56 = v55;
    v58 = v57;
    v59 = v49 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1268, &qword_21CBB0BE0) + 36);
    *v59 = v50;
    *(v59 + 8) = v52;
    *(v59 + 16) = v54;
    *(v59 + 24) = v56;
    *(v59 + 32) = v58;
    *(v59 + 40) = 0;
    v60 = sub_21CB83D14();
    sub_21CB81F24();
    v47 = v77;
    v61 = v49 + *(v77 + 36);
    *v61 = v60;
    *(v61 + 8) = v62;
    *(v61 + 16) = v63;
    *(v61 + 24) = v64;
    *(v61 + 32) = v65;
    *(v61 + 40) = 0;
    sub_21C716934(v49, v45, &qword_27CDF1258, &qword_21CBB0BD0);
    v46 = 0;
    goto LABEL_10;
  }

  if ((v33 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_7:
  v46 = 1;
  v47 = v77;
LABEL_10:
  (*(v76 + 56))(v45, v46, 1, v47);
  v66 = v75;
  sub_21C6EDBAC(v23, v75, &qword_27CDF1298, &qword_21CBB0C18);
  v67 = v79;
  sub_21C6EDBAC(v45, v79, &qword_27CDF1260, &qword_21CBB0BD8);
  v68 = v80;
  sub_21C6EDBAC(v66, v80, &qword_27CDF1298, &qword_21CBB0C18);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF12A0, &unk_21CBB0C20);
  sub_21C6EDBAC(v67, v68 + *(v69 + 48), &qword_27CDF1260, &qword_21CBB0BD8);
  sub_21C6EA794(v45, &qword_27CDF1260, &qword_21CBB0BD8);
  sub_21C6EA794(v23, &qword_27CDF1298, &qword_21CBB0C18);
  sub_21C6EA794(v67, &qword_27CDF1260, &qword_21CBB0BD8);
  return sub_21C6EA794(v66, &qword_27CDF1298, &qword_21CBB0C18);
}

uint64_t sub_21C914244@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v61 = a2;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1258, &qword_21CBB0BD0);
  v67 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v60 = &v59 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1260, &qword_21CBB0BD8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v59 - v8;
  v62 = sub_21CB82F84();
  v10 = *(v62 - 8);
  *&v11 = MEMORY[0x28223BE20](v62).n128_u64[0];
  v13 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath(byte_21CBB0118, v11);
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C7073E8(KeyPath, v73[0]);

  type metadata accessor for PMGroupsStore(0);
  sub_21C72A284(&qword_27CDEB7C8, type metadata accessor for PMGroupsStore, &protocol conformance descriptor for PMGroupsStore);
  v66 = sub_21CB82674();
  v65 = v15;

  v64 = sub_21CB83D14();
  v16 = a1 + *(type metadata accessor for PMAppSourceList(0) + 36);
  v17 = *v16;
  v18 = *(v16 + 8);
  if (v18 != 1)
  {

    sub_21CB85B04();
    v19 = sub_21CB83C94();
    sub_21CB81C14();

    sub_21CB82F74();
    swift_getAtKeyPath();
    sub_21C7025C4(v17, 0);
    (*(v10 + 8))(v13, v62);
  }

  sub_21CB81F24();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v86 = 0;
  v83 = 0;
  if (!v18)
  {

    sub_21CB85B04();
    v30 = sub_21CB83C94();
    sub_21CB81C14();

    sub_21CB82F74();
    swift_getAtKeyPath();
    sub_21C7025C4(v17, 0);
    (*(v10 + 8))(v13, v62);
    if (v73[0])
    {
      goto LABEL_7;
    }

LABEL_9:
    v31 = v60;
    sub_21CB83614();
    v32 = sub_21CB83D34();
    sub_21CB81F24();
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v40 = v39;
    v41 = v31 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1268, &qword_21CBB0BE0) + 36);
    *v41 = v32;
    *(v41 + 8) = v34;
    *(v41 + 16) = v36;
    *(v41 + 24) = v38;
    *(v41 + 32) = v40;
    *(v41 + 40) = 0;
    v42 = sub_21CB83D14();
    sub_21CB81F24();
    v29 = v68;
    v43 = v31 + *(v68 + 36);
    *v43 = v42;
    *(v43 + 8) = v44;
    *(v43 + 16) = v45;
    *(v43 + 24) = v46;
    *(v43 + 32) = v47;
    *(v43 + 40) = 0;
    sub_21C716934(v31, v9, &qword_27CDF1258, &qword_21CBB0BD0);
    v28 = 0;
    goto LABEL_10;
  }

  if ((v17 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_7:
  v28 = 1;
  v29 = v68;
LABEL_10:
  (*(v67 + 56))(v9, v28, 1, v29);
  sub_21C6EDBAC(v9, v6, &qword_27CDF1260, &qword_21CBB0BD8);
  v48 = v66;
  *&v69 = v66;
  v49 = v65;
  *(&v69 + 1) = v65;
  v50 = v9;
  v51 = v63;
  *&v70 = v63;
  BYTE8(v70) = 0;
  HIDWORD(v70) = *&v85[3];
  *(&v70 + 9) = *v85;
  v52 = v64;
  LOBYTE(v71) = v64;
  *(&v71 + 1) = *v84;
  DWORD1(v71) = *&v84[3];
  *(&v71 + 1) = v21;
  *&v72[0] = v23;
  *(&v72[0] + 1) = v25;
  *&v72[1] = v27;
  BYTE8(v72[1]) = 0;
  v53 = v69;
  v54 = v70;
  v55 = v61;
  *(v61 + 57) = *(v72 + 9);
  v56 = v72[0];
  v55[2] = v71;
  v55[3] = v56;
  *v55 = v53;
  v55[1] = v54;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1270, &qword_21CBB0BE8);
  sub_21C6EDBAC(v6, v55 + *(v57 + 48), &qword_27CDF1260, &qword_21CBB0BD8);
  sub_21C6EDBAC(&v69, v73, &qword_27CDF1278, &qword_21CBB0BF0);
  sub_21C6EA794(v50, &qword_27CDF1260, &qword_21CBB0BD8);
  sub_21C6EA794(v6, &qword_27CDF1260, &qword_21CBB0BD8);
  v73[0] = v48;
  v73[1] = v49;
  v73[2] = v51;
  v74 = 0;
  *v75 = *v85;
  *&v75[3] = *&v85[3];
  v76 = v52;
  *v77 = *v84;
  *&v77[3] = *&v84[3];
  v78 = v21;
  v79 = v23;
  v80 = v25;
  v81 = v27;
  v82 = 0;
  return sub_21C6EA794(v73, &qword_27CDF1278, &qword_21CBB0BF0);
}

uint64_t sub_21C914944@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v4;
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = *(a1 + 80);
  v5 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v5;
  *(a2 + 88) = xmmword_21CBA7B60;
  *(a2 + 104) = 2;
  KeyPath = swift_getKeyPath(byte_21CBB0158);
  sub_21C844C40(a1, v13);
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C704000(KeyPath, v13[0]);

  type metadata accessor for PMTipsStore(0);
  sub_21C72A284(&qword_27CDED870, type metadata accessor for PMTipsStore, &unk_21CBCD9D8);
  v7 = sub_21CB82674();
  v9 = v8;

  *(a2 + 112) = v7;
  *(a2 + 120) = v9;
  type metadata accessor for PMPasswordManagerState(0);
  sub_21C72A284(&qword_27CDED2D0, type metadata accessor for PMPasswordManagerState, &protocol conformance descriptor for PMPasswordManagerState);
  *(a2 + 128) = sub_21CB82B84();
  *(a2 + 136) = v10;
  sub_21CB84D44();
  v11 = v13[1];
  *(a2 + 144) = v13[0];
  *(a2 + 152) = v11;
  type metadata accessor for PMTipView(0);
  type metadata accessor for PMAppRootNavigationModel(0);
  sub_21C72A284(&qword_27CDEABF0, type metadata accessor for PMAppRootNavigationModel, &unk_21CBAD698);
  return sub_21CB821F4();
}

uint64_t sub_21C914B60()
{
  v0 = type metadata accessor for PMAppSourceListModel.Action(0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0DA0, &qword_21CBB01F8);
  sub_21CB85084();
  v3 = *(v6[1] + OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel_performAction);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFEA0, &qword_21CBADCC8);
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);

  v3(v2);

  return sub_21C9173A0(v2, type metadata accessor for PMAppSourceListModel.Action);
}

id sub_21C914C94@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for PMAppSourceList(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  result = [objc_opt_self() shouldAllowAddingNewPasswords];
  if (result)
  {
    sub_21C733540(a1, &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMAppSourceList);
    v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v9 = swift_allocObject();
    result = sub_21C72EBD4(&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for PMAppSourceList);
    v10 = sub_21C916714;
  }

  else
  {
    v9 = 0;
    v10 = 1;
  }

  *a2 = v10;
  a2[1] = v9;
  return result;
}

uint64_t sub_21C914DDC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0DA0, &qword_21CBB01F8);
  sub_21CB85084();
  sub_21C9175A4(0);
}

uint64_t sub_21C914E34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a1;
  v40 = a2;
  v2 = sub_21CB82F84();
  v36 = *(v2 - 8);
  v37 = v2;
  MEMORY[0x28223BE20](v2);
  v35 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for PMAppSourceListRowLabelStyle(0);
  MEMORY[0x28223BE20](v4);
  v6 = (&v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA4E8, &unk_21CBA28F0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v34 - v9;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1050, &qword_21CBB0660);
  v11 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v13 = &v34 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1048, &qword_21CBB0658);
  MEMORY[0x28223BE20](v14);
  v16 = &v34 - v15;
  sub_21CB84C84();
  *v6 = swift_getKeyPath(byte_21CBB0668);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBC90, &qword_21CBA5D20);
  swift_storeEnumTagMultiPayload();
  v17 = v6 + *(v4 + 20);
  v17[8] = 0;
  *(v6 + *(v4 + 24)) = 0;
  sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0, MEMORY[0x277CDEFF0]);
  sub_21C72A284(&qword_27CDECF90, type metadata accessor for PMAppSourceListRowLabelStyle, &unk_21CBB2930);
  sub_21CB840E4();
  sub_21C9173A0(v6, type metadata accessor for PMAppSourceListRowLabelStyle);
  (*(v8 + 8))(v10, v7);
  v18 = sub_21CB83D14();
  v19 = v38 + *(type metadata accessor for PMAppSourceList(0) + 36);
  v20 = *v19;
  if (*(v19 + 8) != 1)
  {

    sub_21CB85B04();
    v21 = sub_21CB83C94();
    sub_21CB81C14();

    v22 = v35;
    sub_21CB82F74();
    swift_getAtKeyPath();
    sub_21C7025C4(v20, 0);
    (*(v36 + 8))(v22, v37);
  }

  sub_21CB81F24();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  (*(v11 + 32))(v16, v13, v39);
  v31 = &v16[*(v14 + 36)];
  *v31 = v18;
  *(v31 + 1) = v24;
  *(v31 + 2) = v26;
  *(v31 + 3) = v28;
  *(v31 + 4) = v30;
  v31[40] = 0;
  v32 = sub_21CB85184();
  MEMORY[0x28223BE20](v32);
  sub_21C916810();
  sub_21CB85194();
  return sub_21C6EA794(v16, &qword_27CDF1048, &qword_21CBB0658);
}

uint64_t sub_21C9153CC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v17 - v7;
  sub_21CB81014();
  sub_21CB81014();
  v9 = sub_21CB80FF4();
  v11 = v10;
  v12 = *(v3 + 8);
  v12(v5, v2);
  v12(v8, v2);
  v17[0] = v9;
  v17[1] = v11;
  sub_21C71F3FC();
  result = sub_21CB84054();
  *a1 = result;
  *(a1 + 8) = v14;
  *(a1 + 16) = v15 & 1;
  *(a1 + 24) = v16;
  return result;
}

uint64_t sub_21C91555C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21CB84BB4();
  *a1 = result;
  return result;
}

uint64_t sub_21C9155A4()
{
  v0 = sub_21CB81024();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = v12 - v5;
  sub_21CB81014();
  sub_21CB81014();
  v7 = sub_21CB80FF4();
  v9 = v8;
  v10 = *(v1 + 8);
  v10(v3, v0);
  v10(v6, v0);
  v12[0] = v7;
  v12[1] = v9;
  sub_21C71F3FC();
  return sub_21CB84CB4();
}

uint64_t sub_21C915744@<X0>(uint64_t a1@<X0>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v21[1] = a4;
  v7 = type metadata accessor for PMAppSourceList(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0FD8, &qword_21CBB0610);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v21 - v12;
  if ([objc_opt_self() isOngoingCredentialSharingEnabled])
  {
    sub_21C733540(a1, v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMAppSourceList);
    v14 = (*(v8 + 80) + 16) & ~*(v8 + 80);
    v15 = swift_allocObject();
    v16 = sub_21C72EBD4(v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for PMAppSourceList);
    MEMORY[0x28223BE20](v16);
    v21[-2] = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1030, &unk_21CBB0648);
    sub_21C91674C();
    sub_21CB84DA4();
    sub_21C6EADEC(&qword_27CDF0FD0, &qword_27CDF0FD8, &qword_21CBB0610, MEMORY[0x277CDF028]);
    sub_21CB845C4();
    (*(v11 + 8))(v13, v10);
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0FC8, &qword_21CBB0608);
    return (*(*(v17 - 8) + 56))(a5, 0, 1, v17);
  }

  else
  {
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0FC8, &qword_21CBB0608);
    v20 = *(*(v19 - 8) + 56);

    return v20(a5, 1, 1, v19);
  }
}

unint64_t sub_21C915AEC()
{
  result = qword_27CDF0E08;
  if (!qword_27CDF0E08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0DC0, &qword_21CBB0270);
    sub_21C915BA8();
    sub_21C72A284(&qword_27CDEBF90, type metadata accessor for PMSearchable, &unk_21CBA9C70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF0E08);
  }

  return result;
}

unint64_t sub_21C915BA8()
{
  result = qword_27CDF0E10;
  if (!qword_27CDF0E10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0E18, &qword_21CBB0358);
    sub_21C915C2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF0E10);
  }

  return result;
}

unint64_t sub_21C915C2C()
{
  result = qword_27CDF0E20;
  if (!qword_27CDF0E20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0E28, &qword_21CBB0360);
    sub_21C915CB8();
    sub_21C915F80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF0E20);
  }

  return result;
}

unint64_t sub_21C915CB8()
{
  result = qword_27CDF0E30;
  if (!qword_27CDF0E30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0E38, &qword_21CBB0368);
    sub_21C915D70();
    sub_21C6EADEC(&qword_27CDEBF68, &qword_27CDEBF70, &qword_21CBA3990, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF0E30);
  }

  return result;
}

unint64_t sub_21C915D70()
{
  result = qword_27CDF0E40;
  if (!qword_27CDF0E40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0E48, &qword_21CBB0370);
    sub_21C915DFC();
    sub_21C72EC3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF0E40);
  }

  return result;
}

unint64_t sub_21C915DFC()
{
  result = qword_27CDF0E50;
  if (!qword_27CDF0E50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0E58, &qword_21CBB0378);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0E60, &qword_21CBB0380);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0E68, &qword_21CBB0388);
    sub_21CB826C4();
    sub_21C6EADEC(&qword_27CDF0E70, &qword_27CDF0E68, &qword_21CBB0388, MEMORY[0x277CDE5A0]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_21C6EADEC(&qword_27CDEDCE0, &qword_27CDEDCD8, &unk_21CBB0390, &unk_21CBA4A50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF0E50);
  }

  return result;
}

unint64_t sub_21C915F80()
{
  result = qword_27CDF0E78;
  if (!qword_27CDF0E78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0E80, &qword_21CBB03A0);
    sub_21C91603C();
    sub_21C72A284(&qword_27CDEB908, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF0E78);
  }

  return result;
}

unint64_t sub_21C91603C()
{
  result = qword_27CDF0E88;
  if (!qword_27CDF0E88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0E90, &qword_21CBB03A8);
    sub_21C9160F4();
    sub_21C6EADEC(&qword_27CDEE898, &qword_27CDEE8A0, &unk_21CBAA718, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF0E88);
  }

  return result;
}

unint64_t sub_21C9160F4()
{
  result = qword_27CDF0E98;
  if (!qword_27CDF0E98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0EA0, &qword_21CBB03B0);
    sub_21C6EADEC(&qword_27CDF0EA8, &qword_27CDF0EB0, &qword_21CBB03B8, MEMORY[0x277CDE5A0]);
    sub_21C6EADEC(&qword_27CDED960, &qword_27CDED968, &unk_21CBAEC20, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF0E98);
  }

  return result;
}

unint64_t sub_21C9161D8()
{
  result = qword_27CDF0EC0;
  if (!qword_27CDF0EC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0EB8, &qword_21CBB03C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0EC8, &qword_21CBB03C8);
    v1 = MEMORY[0x277CDDF68];
    sub_21C6EADEC(&qword_27CDF0ED0, &qword_27CDF0EC8, &qword_21CBB03C8, MEMORY[0x277CDDF68]);
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0ED8, &qword_21CBB03D0);
    sub_21C6EADEC(&qword_27CDF0EE0, &qword_27CDF0ED8, &qword_21CBB03D0, v1);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF0EC0);
  }

  return result;
}

uint64_t sub_21C91637C(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for PMAppSourceList(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_21C916418(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for PMAppSourceList(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

unint64_t sub_21C91651C()
{
  result = qword_27CDF0FB8;
  if (!qword_27CDF0FB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0FB0, &qword_21CBB0600);
    sub_21C9165A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF0FB8);
  }

  return result;
}

unint64_t sub_21C9165A0()
{
  result = qword_27CDF0FC0;
  if (!qword_27CDF0FC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF0FC8, &qword_21CBB0608);
    sub_21C6EADEC(&qword_27CDF0FD0, &qword_27CDF0FD8, &qword_21CBB0610, MEMORY[0x277CDF028]);
    sub_21C72A284(&qword_27CDEB908, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF0FC0);
  }

  return result;
}

unint64_t sub_21C916690()
{
  result = qword_27CDF1018;
  if (!qword_27CDF1018)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF1010, &unk_21CBB0630);
    sub_21C87C30C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF1018);
  }

  return result;
}

unint64_t sub_21C91674C()
{
  result = qword_27CDF1038;
  if (!qword_27CDF1038)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF1030, &unk_21CBB0648);
    sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0, MEMORY[0x277CDEFF0]);
    sub_21C916810();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF1038);
  }

  return result;
}

unint64_t sub_21C916810()
{
  result = qword_27CDF1040;
  if (!qword_27CDF1040)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF1048, &qword_21CBB0658);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEA4E8, &unk_21CBA28F0);
    type metadata accessor for PMAppSourceListRowLabelStyle(255);
    sub_21C6EADEC(&qword_27CDEC0A0, &qword_27CDEA4E8, &unk_21CBA28F0, MEMORY[0x277CDEFF0]);
    sub_21C72A284(&qword_27CDECF90, type metadata accessor for PMAppSourceListRowLabelStyle, &unk_21CBB2930);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF1040);
  }

  return result;
}

uint64_t sub_21C916A70(uint64_t a1)
{
  v4 = *(type metadata accessor for PMAppSourceList(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_21C702EFC;

  return sub_21C910BF4(a1, v1 + v5);
}

unint64_t sub_21C916B78()
{
  result = qword_27CDF1138;
  if (!qword_27CDF1138)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF1130, &qword_21CBB0A50);
    sub_21C916C30();
    sub_21C6EADEC(&qword_27CDF1178, &qword_27CDF1180, &qword_21CBB0A70, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF1138);
  }

  return result;
}

unint64_t sub_21C916C30()
{
  result = qword_27CDF1140;
  if (!qword_27CDF1140)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF1148, &qword_21CBB0A58);
    sub_21C916CE8();
    sub_21C6EADEC(&qword_27CDF1168, &qword_27CDF1170, &qword_21CBB0A68, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF1140);
  }

  return result;
}

unint64_t sub_21C916CE8()
{
  result = qword_27CDF1150;
  if (!qword_27CDF1150)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF1158, &qword_21CBB0A60);
    sub_21C72A284(&qword_27CDF1160, type metadata accessor for PMSourceGrid, &unk_21CBCC1D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF1150);
  }

  return result;
}

unint64_t sub_21C916DA4()
{
  result = qword_27CDF1188;
  if (!qword_27CDF1188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF1120, &qword_21CBB0A40);
    sub_21C916B78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF1188);
  }

  return result;
}

unint64_t sub_21C916E4C()
{
  result = qword_27CDF11B0;
  if (!qword_27CDF11B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF1108, &qword_21CBB0A28);
    sub_21C74AA20();
    sub_21C6EADEC(&qword_27CDF11A0, &qword_27CDF1198, &qword_21CBB0AB0, MEMORY[0x277CE14C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF11B0);
  }

  return result;
}

unint64_t sub_21C916F10()
{
  result = qword_27CDF11B8;
  if (!qword_27CDF11B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF11A8, &qword_21CBB0AB8);
    swift_getOpaqueTypeConformance2();
    sub_21C91651C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF11B8);
  }

  return result;
}

uint64_t sub_21C91702C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for PMAppSourceList(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_21C9127E0(a1, v6, a2);
}

unint64_t sub_21C9170AC()
{
  result = qword_27CDF11F8;
  if (!qword_27CDF11F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF11F0, &qword_21CBB0B98);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEA578, &qword_21CBB0BA0);
    type metadata accessor for PMAppSourceListModel.Source(255);
    sub_21C9171BC();
    sub_21C72A284(&qword_27CDF10F0, type metadata accessor for PMAppSourceListModel.Source, &unk_21CBB0D10);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF11F8);
  }

  return result;
}

unint64_t sub_21C9171BC()
{
  result = qword_27CDF1200;
  if (!qword_27CDF1200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEA578, &qword_21CBB0BA0);
    sub_21C917240();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF1200);
  }

  return result;
}

unint64_t sub_21C917240()
{
  result = qword_27CDF1208;
  if (!qword_27CDF1208)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF1210, &qword_21CBB0BA8);
    sub_21C72A284(&qword_27CDF1218, type metadata accessor for PMGroupRow, &unk_21CBBD4D0);
    sub_21C6EADEC(&qword_27CDF1220, &qword_27CDF1228, &qword_21CBB0BB0, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF1208);
  }

  return result;
}

unint64_t sub_21C91733C()
{
  result = qword_27CDF1240;
  if (!qword_27CDF1240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF1240);
  }

  return result;
}

uint64_t sub_21C9173A0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21C917430@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath(byte_21CBB0E10);
  v5 = v1;
  sub_21C712D24(&qword_27CDED320, type metadata accessor for PMAppSourceListModel, &unk_21CBB0DB8);
  sub_21CB810D4();

  v3 = OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel__selectedSource;
  swift_beginAccess();
  return sub_21C742C18(v5 + v3, a1);
}

uint64_t sub_21C9174F8()
{
  swift_getKeyPath(byte_21CBB0E38);
  sub_21C712D24(&qword_27CDED320, type metadata accessor for PMAppSourceListModel, &unk_21CBB0DB8);
  sub_21CB810D4();
}

uint64_t sub_21C9175A4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel__contextForPresentedNewGroupFlow;
  v4 = *(v1 + OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel__contextForPresentedNewGroupFlow);
  if (v4 != 1)
  {
    if (a1 != 1)
    {
      if (v4)
      {
        if (a1)
        {

          v9 = sub_21C967680(v8, a1);
          sub_21C72A584(v4);
          if (v9)
          {
            v5 = *(v1 + v3);
            goto LABEL_4;
          }
        }
      }

      else if (!a1)
      {
        v5 = 0;
        goto LABEL_4;
      }
    }

LABEL_8:
    MEMORY[0x28223BE20](KeyPath);
    sub_21C712D24(&qword_27CDED320, type metadata accessor for PMAppSourceListModel, &unk_21CBB0DB8);
    sub_21CB810C4();
    sub_21C72A584(a1);
  }

  if (a1 != 1)
  {
    goto LABEL_8;
  }

  v5 = 1;
LABEL_4:
  *(v1 + v3) = a1;

  return sub_21C72A584(v5);
}

uint64_t sub_21C9177D8()
{
  swift_getKeyPath(byte_21CBB0F50);
  sub_21C712D24(&qword_27CDED320, type metadata accessor for PMAppSourceListModel, &unk_21CBB0DB8);
  sub_21CB810D4();

  return *(v0 + 18);
}

uint64_t sub_21C917878(uint64_t result)
{
  if (*(v1 + 18) == (result & 1))
  {
    *(v1 + 18) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath(byte_21CBB0F50);
    MEMORY[0x28223BE20](KeyPath);
    sub_21C712D24(&qword_27CDED320, type metadata accessor for PMAppSourceListModel, &unk_21CBB0DB8);
    sub_21CB810C4();
  }

  return result;
}

uint64_t sub_21C917988()
{
  sub_21C712D24(&qword_27CDED320, type metadata accessor for PMAppSourceListModel, &unk_21CBB0DB8);
  sub_21CB810D4();

  v1 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel__contextForPresentedNewGroupFlow);
  sub_21C72A574(v1);
  return v1;
}

uint64_t sub_21C917A3C(uint64_t *a1)
{
  v1 = *a1;
  sub_21C72A574(*a1);
  return sub_21C9175A4(v1);
}

uint64_t sub_21C917A70()
{
  sub_21C712D24(&qword_27CDED320, type metadata accessor for PMAppSourceListModel, &unk_21CBB0DB8);
  sub_21CB810D4();

  return *(v0 + 16);
}

uint64_t sub_21C917B10(uint64_t result)
{
  if (*(v1 + 16) == (result & 1))
  {
    *(v1 + 16) = result & 1;
  }

  else
  {
    MEMORY[0x28223BE20](KeyPath);
    sub_21C712D24(&qword_27CDED320, type metadata accessor for PMAppSourceListModel, &unk_21CBB0DB8);
    sub_21CB810C4();
  }

  return result;
}

uint64_t sub_21C917C20()
{
  sub_21C712D24(&qword_27CDED320, type metadata accessor for PMAppSourceListModel, &unk_21CBB0DB8);
  sub_21CB810D4();
}

uint64_t sub_21C917CF4()
{
  v1 = v0;
  v2 = type metadata accessor for PMAppSourceListModel.Source(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v23 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDED310, &unk_21CBA0150);
  MEMORY[0x28223BE20](v5);
  v7 = &v23 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC20, &qword_21CBAD710);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v23 - v12;
  v14 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel__groupsStore);
  v15 = qword_27CDEA4C0;

  if (v15 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C7073E8(v14, v24);

  swift_getKeyPath(byte_21CBB0FF0);
  sub_21CB81DB4();

  v16 = *(v24 + 16);

  if (v16)
  {
    goto LABEL_4;
  }

  swift_getKeyPath(byte_21CBB0E10);
  v24 = v1;
  sub_21C712D24(&qword_27CDED320, type metadata accessor for PMAppSourceListModel, &unk_21CBB0DB8);
  sub_21CB810D4();

  v18 = OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel__selectedSource;
  swift_beginAccess();
  swift_storeEnumTagMultiPayload();
  (*(v3 + 56))(v13, 0, 1, v2);
  v19 = *(v5 + 48);
  sub_21C742C18(v1 + v18, v7);
  sub_21C742C18(v13, &v7[v19]);
  v20 = *(v3 + 48);
  if (v20(v7, 1, v2) != 1)
  {
    sub_21C742C18(v7, v10);
    if (v20(&v7[v19], 1, v2) != 1)
    {
      v21 = v23;
      sub_21C919658(&v7[v19], v23);
      v17 = sub_21C918FE4(v10, v21);
      sub_21C919E5C(v21, type metadata accessor for PMAppSourceListModel.Source);
      sub_21C6EA794(v13, &qword_27CDEAC20, &qword_21CBAD710);
      sub_21C919E5C(v10, type metadata accessor for PMAppSourceListModel.Source);
      sub_21C6EA794(v7, &qword_27CDEAC20, &qword_21CBAD710);
      return v17 & 1;
    }

    sub_21C6EA794(v13, &qword_27CDEAC20, &qword_21CBAD710);
    sub_21C919E5C(v10, type metadata accessor for PMAppSourceListModel.Source);
    goto LABEL_10;
  }

  sub_21C6EA794(v13, &qword_27CDEAC20, &qword_21CBAD710);
  if (v20(&v7[v19], 1, v2) != 1)
  {
LABEL_10:
    sub_21C6EA794(v7, &unk_27CDED310, &unk_21CBA0150);
    v17 = 0;
    return v17 & 1;
  }

  sub_21C6EA794(v7, &qword_27CDEAC20, &qword_21CBAD710);
LABEL_4:
  v17 = 1;
  return v17 & 1;
}

uint64_t sub_21C9181E4(uint64_t result, void *a2, const char *a3, uint64_t a4)
{
  if (*(v4 + *a2) == (result & 1))
  {
    *(v4 + *a2) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath(a3);
    MEMORY[0x28223BE20](KeyPath);
    sub_21C712D24(&qword_27CDED320, type metadata accessor for PMAppSourceListModel, &unk_21CBB0DB8);
    sub_21CB810C4();
  }

  return result;
}

uint64_t sub_21C9182E8(uint64_t a1)
{
  v2 = sub_21CB85C44();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PMAppSourceListModel.Source(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21C919ECC(v1, v8, type metadata accessor for PMAppSourceListModel.Source);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload <= 5)
    {
      if (EnumCaseMultiPayload == 4)
      {
        v10 = 2;
      }

      else
      {
        v10 = 5;
      }
    }

    else if (EnumCaseMultiPayload == 6)
    {
      v10 = 6;
    }

    else if (EnumCaseMultiPayload == 7)
    {
      v10 = 7;
    }

    else
    {
      v10 = 8;
    }

    return MEMORY[0x21CF15F90](v10);
  }

  if (EnumCaseMultiPayload > 1)
  {
    v10 = EnumCaseMultiPayload != 2;
    return MEMORY[0x21CF15F90](v10);
  }

  if (EnumCaseMultiPayload)
  {
    (*(v3 + 32))(v5, v8, v2);
    v11 = 4;
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    v11 = 3;
  }

  MEMORY[0x21CF15F90](v11);
  sub_21C712D24(&qword_27CDF8950, MEMORY[0x277D49978], MEMORY[0x277D49988]);
  sub_21CB85494();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_21C91853C(uint64_t a1)
{
  v3 = type metadata accessor for PMAppSourceListModel.Source(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC20, &qword_21CBAD710);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v26 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v26 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v26 - v17;
  v19 = type metadata accessor for PMAppSourceListModel.Action(0);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v26 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21C919ECC(v1, v21, type metadata accessor for PMAppSourceListModel.Action);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFEA0, &qword_21CBADCC8);
  if ((*(*(v22 - 8) + 48))(v21, 1, v22) == 1)
  {
    return MEMORY[0x21CF15F90](1);
  }

  v24 = *(v22 + 48);
  sub_21C919F34(v21, v18);
  sub_21C919F34(&v21[v24], v15);
  MEMORY[0x21CF15F90](0);
  sub_21C742C18(v18, v12);
  v25 = *(v4 + 48);
  if (v25(v12, 1, v3) == 1)
  {
    sub_21CB864A4();
  }

  else
  {
    sub_21C919658(v12, v6);
    sub_21CB864A4();
    sub_21C9182E8(a1);
    sub_21C919E5C(v6, type metadata accessor for PMAppSourceListModel.Source);
  }

  sub_21C742C18(v15, v9);
  if (v25(v9, 1, v3) == 1)
  {
    sub_21CB864A4();
  }

  else
  {
    sub_21C919658(v9, v6);
    sub_21CB864A4();
    sub_21C9182E8(a1);
    sub_21C919E5C(v6, type metadata accessor for PMAppSourceListModel.Source);
  }

  sub_21C6EA794(v15, &qword_27CDEAC20, &qword_21CBAD710);
  return sub_21C6EA794(v18, &qword_27CDEAC20, &qword_21CBAD710);
}

uint64_t sub_21C918914(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  sub_21CB86484();
  a3(v5);
  return sub_21CB864D4();
}

uint64_t sub_21C918978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  sub_21CB86484();
  a4(v6);
  return sub_21CB864D4();
}

unint64_t sub_21C9189C0(unint64_t result, uint64_t a2, uint64_t a3)
{
  if (result >= 3)
  {
    result = sub_21C713194(a2);
    if (v3)
    {
      v4 = v3;
      v5 = result;
      swift_beginAccess();
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        v7 = *(Strong + OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel_searchedAccountSelected);

        v7(v5, v4);
      }

      else
      {
      }
    }
  }

  return result;
}

uint64_t sub_21C918A8C()
{
  sub_21C712D24(&qword_27CDED320, type metadata accessor for PMAppSourceListModel, &unk_21CBB0DB8);
  sub_21CB810D4();

  return *(v0 + 17);
}

uint64_t sub_21C918B34(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC20, &qword_21CBAD710);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v9 = &v12[-v8];
  sub_21C742C18(a2, &v12[-v8]);
  v10 = OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel__selectedSource;
  swift_beginAccess();
  sub_21C742C18(a1 + v10, v6);
  swift_beginAccess();
  sub_21C743188(v9, a1 + v10);
  swift_endAccess();
  sub_21C7431F8(v6);
  sub_21C6EA794(v6, &qword_27CDEAC20, &qword_21CBAD710);
  return sub_21C6EA794(v9, &qword_27CDEAC20, &qword_21CBAD710);
}

unint64_t sub_21C918C7C(unint64_t result, uint64_t a2, uint64_t a3)
{
  if (result >= 3)
  {
    result = sub_21C713194(a2);
    if (v4)
    {
      v5 = result;
      v6 = v4;
      v7 = *(a3 + OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel_searchedAccountSelected);

      v7(v5, v6);
    }
  }

  return result;
}

uint64_t sub_21C918D14(uint64_t a1, uint64_t a2)
{
  *(a1 + OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel__exportAccountSelectionModel) = a2;
}

uint64_t sub_21C918D6C(const char *a1, void *a2, ...)
{
  swift_getKeyPath(a1);
  sub_21C712D24(&qword_27CDED320, type metadata accessor for PMAppSourceListModel, &unk_21CBB0DB8);
  sub_21CB810D4();

  return *(v2 + *a2);
}

uint64_t sub_21C918E1C()
{
  sub_21C6EA794(v0 + OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel__selectedSource, &qword_27CDEAC20, &qword_21CBAD710);

  sub_21C72A584(*(v0 + OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel__contextForPresentedNewGroupFlow));

  v1 = OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel___observationRegistrar;
  v2 = sub_21CB81114();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_21C918F14()
{
  sub_21C918E1C();

  return swift_deallocClassInstance();
}

uint64_t sub_21C918FE4(uint64_t a1, uint64_t a2)
{
  v35 = a2;
  v3 = sub_21CB85C44();
  v34 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v34 - v7;
  v9 = type metadata accessor for PMAppSourceListModel.Source(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v34 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1350, &qword_21CBB0DD8);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v34 - v16;
  v19 = *(v18 + 56);
  sub_21C919ECC(a1, &v34 - v16, type metadata accessor for PMAppSourceListModel.Source);
  sub_21C919ECC(v35, &v17[v19], type metadata accessor for PMAppSourceListModel.Source);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    v21 = v34;
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        if (swift_getEnumCaseMultiPayload() != 2)
        {
          goto LABEL_30;
        }
      }

      else if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_30;
      }

      goto LABEL_27;
    }

    if (EnumCaseMultiPayload)
    {
      v22 = v11;
      sub_21C919ECC(v17, v11, type metadata accessor for PMAppSourceListModel.Source);
      v23 = v17;
      v24 = v3;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v26 = v23;
        (*(v21 + 32))(v5, v23 + v19, v3);
        sub_21C712D24(&qword_27CDECD58, MEMORY[0x277D49978], MEMORY[0x277D49998]);
        sub_21CB857F4();
        sub_21CB857F4();
        if (v38 == v36 && v39 == v37)
        {
          v27 = *(v21 + 8);
          v27(v5, v3);

          v27(v11, v3);
        }

        else
        {
          v30 = sub_21CB86344();
          v31 = *(v21 + 8);
          v31(v5, v3);

          v31(v11, v3);
          if ((v30 & 1) == 0)
          {
            sub_21C919E5C(v26, type metadata accessor for PMAppSourceListModel.Source);
            return 0;
          }
        }

        v28 = v26;
LABEL_28:
        sub_21C919E5C(v28, type metadata accessor for PMAppSourceListModel.Source);
        return 1;
      }
    }

    else
    {
      v22 = v14;
      sub_21C919ECC(v17, v14, type metadata accessor for PMAppSourceListModel.Source);
      v23 = v17;
      v24 = v3;
      if (!swift_getEnumCaseMultiPayload())
      {
        (*(v21 + 32))(v8, v23 + v19, v3);
        sub_21C712D24(&qword_27CDECD58, MEMORY[0x277D49978], MEMORY[0x277D49998]);
        sub_21CB857F4();
        sub_21CB857F4();
        if (v38 == v36 && v39 == v37)
        {
          v25 = *(v21 + 8);
          v25(v8, v3);

          v25(v22, v3);
        }

        else
        {
          v32 = sub_21CB86344();
          v33 = *(v21 + 8);
          v33(v8, v24);

          v33(v22, v24);
          if ((v32 & 1) == 0)
          {
            sub_21C919E5C(v23, type metadata accessor for PMAppSourceListModel.Source);
            return 0;
          }
        }

        v28 = v23;
        goto LABEL_28;
      }
    }

    (*(v21 + 8))(v22, v24);
    v17 = v23;
    goto LABEL_30;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload == 4)
    {
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        goto LABEL_30;
      }
    }

    else if (swift_getEnumCaseMultiPayload() != 5)
    {
      goto LABEL_30;
    }

    goto LABEL_27;
  }

  if (EnumCaseMultiPayload == 6)
  {
    if (swift_getEnumCaseMultiPayload() != 6)
    {
      goto LABEL_30;
    }

    goto LABEL_27;
  }

  if (EnumCaseMultiPayload == 7)
  {
    if (swift_getEnumCaseMultiPayload() != 7)
    {
      goto LABEL_30;
    }

    goto LABEL_27;
  }

  if (swift_getEnumCaseMultiPayload() == 8)
  {
LABEL_27:
    v28 = v17;
    goto LABEL_28;
  }

LABEL_30:
  sub_21C6EA794(v17, &qword_27CDF1350, &qword_21CBB0DD8);
  return 0;
}

uint64_t sub_21C919658(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMAppSourceListModel.Source(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C9196BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMAppSourceListModel.Source(0);
  v55 = *(v4 - 8);
  v56 = v4;
  MEMORY[0x28223BE20](v4);
  v54 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDED310, &unk_21CBA0150);
  MEMORY[0x28223BE20](v6);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v51 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC20, &qword_21CBAD710);
  MEMORY[0x28223BE20](v12 - 8);
  v53 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v51 - v15;
  MEMORY[0x28223BE20](v17);
  v58 = &v51 - v18;
  MEMORY[0x28223BE20](v19);
  v57 = &v51 - v20;
  v21 = type metadata accessor for PMAppSourceListModel.Action(0);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v51 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1358, &qword_21CBB0ED0);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v51 - v25;
  v28 = &v51 + *(v27 + 56) - v25;
  sub_21C919ECC(a1, &v51 - v25, type metadata accessor for PMAppSourceListModel.Action);
  sub_21C919ECC(a2, v28, type metadata accessor for PMAppSourceListModel.Action);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFEA0, &qword_21CBADCC8);
  v30 = *(*(v29 - 8) + 48);
  if (v30(v26, 1, v29) == 1)
  {
    if (v30(v28, 1, v29) == 1)
    {
LABEL_3:
      sub_21C919E5C(v26, type metadata accessor for PMAppSourceListModel.Action);
      return 1;
    }

    goto LABEL_6;
  }

  v52 = v8;
  sub_21C919ECC(v26, v23, type metadata accessor for PMAppSourceListModel.Action);
  v32 = *(v29 + 48);
  if (v30(v28, 1, v29) != 1)
  {
    v33 = v57;
    sub_21C919F34(&v23[v32], v57);
    sub_21C919F34(&v28[v32], v58);
    v34 = *(v6 + 48);
    sub_21C919F34(v23, v11);
    sub_21C919F34(v28, &v11[v34]);
    v35 = v56;
    v36 = *(v55 + 48);
    if (v36(v11, 1, v56) == 1)
    {
      v37 = v36(&v11[v34], 1, v35);
      v38 = v52;
      if (v37 == 1)
      {
        sub_21C6EA794(v11, &qword_27CDEAC20, &qword_21CBAD710);
        v39 = v58;
LABEL_15:
        v46 = v33;
        v47 = *(v6 + 48);
        sub_21C742C18(v46, v38);
        sub_21C742C18(v39, v38 + v47);
        if (v36(v38, 1, v35) == 1)
        {
          sub_21C6EA794(v39, &qword_27CDEAC20, &qword_21CBAD710);
          sub_21C6EA794(v46, &qword_27CDEAC20, &qword_21CBAD710);
          if (v36((v38 + v47), 1, v35) == 1)
          {
            sub_21C6EA794(v38, &qword_27CDEAC20, &qword_21CBAD710);
            goto LABEL_3;
          }
        }

        else
        {
          v48 = v53;
          sub_21C742C18(v38, v53);
          if (v36((v38 + v47), 1, v35) != 1)
          {
            v49 = v54;
            sub_21C919658(v38 + v47, v54);
            v50 = sub_21C918FE4(v48, v49);
            sub_21C919E5C(v49, type metadata accessor for PMAppSourceListModel.Source);
            sub_21C6EA794(v39, &qword_27CDEAC20, &qword_21CBAD710);
            sub_21C6EA794(v57, &qword_27CDEAC20, &qword_21CBAD710);
            sub_21C919E5C(v48, type metadata accessor for PMAppSourceListModel.Source);
            sub_21C6EA794(v38, &qword_27CDEAC20, &qword_21CBAD710);
            if (v50)
            {
              goto LABEL_3;
            }

            goto LABEL_22;
          }

          sub_21C6EA794(v39, &qword_27CDEAC20, &qword_21CBAD710);
          sub_21C6EA794(v57, &qword_27CDEAC20, &qword_21CBAD710);
          sub_21C919E5C(v48, type metadata accessor for PMAppSourceListModel.Source);
        }

        v42 = &unk_27CDED310;
        v43 = &unk_21CBA0150;
        v41 = v38;
LABEL_21:
        sub_21C6EA794(v41, v42, v43);
LABEL_22:
        sub_21C919E5C(v26, type metadata accessor for PMAppSourceListModel.Action);
        return 0;
      }
    }

    else
    {
      sub_21C742C18(v11, v16);
      v40 = v36(&v11[v34], 1, v35);
      v38 = v52;
      if (v40 != 1)
      {
        v44 = &v11[v34];
        v45 = v54;
        sub_21C919658(v44, v54);
        LODWORD(v55) = sub_21C918FE4(v16, v45);
        sub_21C919E5C(v45, type metadata accessor for PMAppSourceListModel.Source);
        v33 = v57;
        sub_21C919E5C(v16, type metadata accessor for PMAppSourceListModel.Source);
        sub_21C6EA794(v11, &qword_27CDEAC20, &qword_21CBAD710);
        v39 = v58;
        if (v55)
        {
          goto LABEL_15;
        }

LABEL_13:
        sub_21C6EA794(v39, &qword_27CDEAC20, &qword_21CBAD710);
        v41 = v33;
        v42 = &qword_27CDEAC20;
        v43 = &qword_21CBAD710;
        goto LABEL_21;
      }

      sub_21C919E5C(v16, type metadata accessor for PMAppSourceListModel.Source);
    }

    sub_21C6EA794(v11, &unk_27CDED310, &unk_21CBA0150);
    v39 = v58;
    goto LABEL_13;
  }

  sub_21C6EA794(&v23[v32], &qword_27CDEAC20, &qword_21CBAD710);
  sub_21C6EA794(v23, &qword_27CDEAC20, &qword_21CBAD710);
LABEL_6:
  sub_21C6EA794(v26, &qword_27CDF1358, &qword_21CBB0ED0);
  return 0;
}

uint64_t sub_21C919E5C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21C919ECC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C919F34(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC20, &qword_21CBAD710);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21C919FA4()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v2 + OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel__contextForPresentedNewGroupFlow);
  *(v2 + OBJC_IVAR____TtC17PasswordManagerUI20PMAppSourceListModel__contextForPresentedNewGroupFlow) = v1;
  sub_21C72A574(v1);
  return sub_21C72A584(v3);
}

uint64_t sub_21C91A068(uint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) == 0)
  {
    return a2;
  }

  __break(1u);
  return result;
}

uint64_t sub_21C91A0A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t a1), void *a5)
{
  v10 = sub_21CB853D4();
  v25 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21CB85404();
  v23 = *(v13 - 8);
  v24 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  aBlock = a2;
  v27 = a3;
  v28 = a4;
  v29 = a5;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4D70, &qword_21CBA9D30);
  MEMORY[0x21CF14A20](&v32, v16);
  v17 = sub_21CB85694();

  if (v17 > a1)
  {
    sub_21C8582C0();
    v22 = sub_21CB85CF4();
    v18 = swift_allocObject();
    v18[2] = a2;
    v18[3] = a3;
    v18[4] = a4;
    v18[5] = a5;
    v18[6] = a1;
    v30 = sub_21C91A4D4;
    v31 = v18;
    aBlock = MEMORY[0x277D85DD0];
    v27 = 1107296256;
    v28 = sub_21C6ECBD4;
    v29 = &block_descriptor_11;
    v19 = _Block_copy(&aBlock);

    sub_21CB853E4();
    aBlock = MEMORY[0x277D84F90];
    sub_21C91A4E4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE80, &qword_21CBA37F0);
    sub_21C91A53C();
    sub_21CB85F14();
    v20 = v22;
    MEMORY[0x21CF15800](0, v15, v12, v19);
    _Block_release(v19);

    (*(v25 + 8))(v12, v10);
    (*(v23 + 8))(v15, v24);
  }

  return a2;
}

uint64_t sub_21C91A3C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22 = a1;
  v23 = a2;
  v24 = a3;
  v25 = a4;
  v18 = a1;
  v19 = a2;
  v20 = a3;
  v21 = a4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF4D70, &qword_21CBA9D30);
  MEMORY[0x21CF14A20](v17);
  v6 = sub_21C91A5A0(a5, v17[0], v17[1]);
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = MEMORY[0x21CF15150](v6, v8, v10, v12);
  v15 = v14;

  v18 = v13;
  v19 = v15;
  sub_21CB84F34();
}

unint64_t sub_21C91A4E4()
{
  result = qword_27CDEAF48;
  if (!qword_27CDEAF48)
  {
    sub_21CB853D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEAF48);
  }

  return result;
}

unint64_t sub_21C91A53C()
{
  result = qword_27CDEAF50;
  if (!qword_27CDEAF50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CDEBE80, &qword_21CBA37F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEAF50);
  }

  return result;
}

uint64_t sub_21C91A5A0(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_21CB856B4();

    return sub_21CB857B4();
  }

  return result;
}

uint64_t type metadata accessor for PMChangePasswordOnWebsiteLink(uint64_t a1)
{
  result = qword_27CDF1360;
  if (!qword_27CDF1360)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21C91A6B0(uint64_t a1)
{
  sub_21C72DDD4(319, &unk_27CDEA9D0, &type metadata for PMOpenURLInSafariViewControllerAction, MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for PMAccount(319);
    if (v2 <= 0x3F)
    {
      sub_21C72DDD4(319, &qword_27CDEB308, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_21C91A7B4(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_21C91A7B4(uint64_t a1)
{
  if (!qword_27CDEC850)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEC858, &qword_21CBB1080);
    v1 = sub_21CB85E54();
    if (!v2)
    {
      atomic_store(v1, &qword_27CDEC850);
    }
  }
}

uint64_t sub_21C91A834@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v40 = a1;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1370, &qword_21CBB10D8);
  v36 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v35 = &v32 - v3;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1378, &unk_21CBB10E0);
  MEMORY[0x28223BE20](v38);
  v39 = &v32 - v4;
  v5 = sub_21CB83AB4();
  v33 = *(v5 - 8);
  v34 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PMChangePasswordOnWebsiteLink(0);
  v9 = v8 - 8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
  v32 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v32 - v13;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1380, &unk_21CBB10F0);
  MEMORY[0x28223BE20](v37);
  v16 = &v32 - v15;
  v17 = *(v2 + *(v9 + 40));
  sub_21C91BC70(v2, &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMChangePasswordOnWebsiteLink);
  v18 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v19 = swift_allocObject();
  v20 = sub_21C91BCD8(&v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18, type metadata accessor for PMChangePasswordOnWebsiteLink);
  MEMORY[0x28223BE20](v20);
  *(&v32 - 2) = v2;
  if (v17 == 1)
  {
    sub_21CB84DA4();
    sub_21CB83AA4();
    v21 = MEMORY[0x277CDF028];
    sub_21C6EADEC(&qword_27CDEBE50, &qword_27CDEBE40, &unk_21CBA8200, MEMORY[0x277CDF028]);
    sub_21C91BBC4(v22);
    v23 = v34;
    sub_21CB84124();
    (*(v33 + 8))(v7, v23);
    (*(v32 + 8))(v14, v12);
    v24 = &v16[*(v37 + 36)];
    v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF13A0, &qword_21CBB1100) + 28);
    v26 = *MEMORY[0x277CDF420];
    v27 = sub_21CB82064();
    (*(*(v27 - 8) + 104))(&v24[v25], v26, v27);
    *v24 = swift_getKeyPath(byte_21CBB1108);
    sub_21C767ED0(v16, v39);
    swift_storeEnumTagMultiPayload();
    sub_21C91BA7C();
    sub_21C6EADEC(&qword_27CDF13A8, &qword_27CDF1370, &qword_21CBB10D8, v21);
    sub_21CB83494();
    return sub_21C767F40(v16);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEA548, qword_21CBAC540);
    sub_21C6EADEC(&qword_27CDEF5D8, &qword_27CDEA548, qword_21CBAC540, MEMORY[0x277CDEFF0]);
    v29 = v35;
    sub_21CB84DA4();
    v30 = v36;
    v31 = v41;
    (*(v36 + 16))(v39, v29, v41);
    swift_storeEnumTagMultiPayload();
    sub_21C91BA7C();
    sub_21C6EADEC(&qword_27CDF13A8, &qword_27CDF1370, &qword_21CBB10D8, MEMORY[0x277CDF028]);
    sub_21CB83494();
    return (*(v30 + 8))(v29, v31);
  }
}

uint64_t sub_21C91AF18()
{
  v1 = sub_21CB82F84();
  v20 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC300, &qword_21CBA3ED0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v19 - v8;
  v10 = sub_21CB80BE4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21C91B590(v6);
  v14 = *(v11 + 48);
  if (v14(v6, 1, v10) == 1)
  {
    sub_21C91B79C(v9);
    if (v14(v6, 1, v10) != 1)
    {
      sub_21C79C324(v6);
    }
  }

  else
  {
    (*(v11 + 32))(v9, v6, v10);
    (*(v11 + 56))(v9, 0, 1, v10);
  }

  if (v14(v9, 1, v10) == 1)
  {
    return sub_21C79C324(v9);
  }

  (*(v11 + 32))(v13, v9, v10);
  v17 = *v0;
  v16 = *(v0 + 8);
  if (*(v0 + 16) == 1)
  {
  }

  else
  {

    sub_21CB85B04();
    v18 = sub_21CB83C94();
    sub_21CB81C14();

    sub_21CB82F74();
    swift_getAtKeyPath();
    sub_21C79C1F4(v17, v16, 0);
    (*(v20 + 8))(v3, v1);
    v17 = v21;
  }

  v17(v13);

  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_21C91B28C(uint64_t a1)
{
  sub_21C91AF18();
  result = type metadata accessor for PMChangePasswordOnWebsiteLink(0);
  v3 = (a1 + *(result + 36));
  if (*v3)
  {
    return (*v3)();
  }

  return result;
}

uint64_t sub_21C91B2D4(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEF600, &qword_21CBAC580);
  sub_21C8AF06C();
  return sub_21CB84C84();
}

uint64_t sub_21C91B370@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21CB81024();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PMChangePasswordOnWebsiteLink(0);
  v9 = (a1 + *(v8 + 28));
  if (v9[1])
  {
    v10 = *v9;
    v11 = v9[1];
  }

  else
  {
    v12 = a1 + *(v8 + 20);
    v13 = v12 + *(type metadata accessor for PMAccount(0) + 28);
    if (*(v13 + 8))
    {
      [*(v13 + 24) issueTypes];
    }

    sub_21CB81014();
    v10 = sub_21CB81004();
    v11 = v14;
    (*(v5 + 8))(v7, v4);
  }

  v19[0] = v10;
  v19[1] = v11;
  sub_21C71F3FC();

  result = sub_21CB84054();
  *a2 = result;
  *(a2 + 8) = v16;
  *(a2 + 16) = v17 & 1;
  *(a2 + 24) = v18;
  return result;
}

uint64_t sub_21C91B534@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for PMChangePasswordOnWebsiteLink(0);
  result = 0;
  if (*(a1 + *(v4 + 24)) == 1)
  {
    result = sub_21CB84BB4();
  }

  *a2 = result;
  return result;
}

uint64_t sub_21C91B590@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC300, &qword_21CBA3ED0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v17 - v4;
  v6 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v6);
  v8 = (&v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = v1 + *(type metadata accessor for PMChangePasswordOnWebsiteLink(0) + 20);
  v10 = type metadata accessor for PMAccount(0);
  sub_21C91BC70(v9 + *(v10 + 24), v8, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C866D44(v8, type metadata accessor for PMAccount.Storage);
    v11 = sub_21CB80BE4();
    return (*(*(v11 - 8) + 56))(a1, 1, 1, v11);
  }

  else
  {
    v13 = *v8;
    v14 = [*v8 wellKnownChangePasswordURL];

    if (v14)
    {
      sub_21CB80B94();

      v15 = 0;
    }

    else
    {
      v15 = 1;
    }

    v16 = sub_21CB80BE4();
    (*(*(v16 - 8) + 56))(v5, v15, 1, v16);
    return sub_21C79C3F4(v5, a1);
  }
}

uint64_t sub_21C91B79C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC300, &qword_21CBA3ED0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v23 - v4;
  v6 = type metadata accessor for PMAccount.MockData(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v9);
  v11 = (&v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = v1 + *(type metadata accessor for PMChangePasswordOnWebsiteLink(0) + 20);
  v13 = type metadata accessor for PMAccount(0);
  sub_21C91BC70(v12 + *(v13 + 24), v11, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C91BCD8(v11, v8, type metadata accessor for PMAccount.MockData);

    sub_21C866D44(v8, type metadata accessor for PMAccount.MockData);
  }

  else
  {
    v14 = *v11;
    v15 = [*v11 highLevelDomain];
    if (!v15)
    {

      v22 = sub_21CB80BE4();
      return (*(*(v22 - 8) + 56))(a1, 1, 1, v22);
    }

    v16 = v15;
    sub_21CB855C4();
  }

  v17 = sub_21CB85584();

  v18 = [v17 safari_bestURLForUserTypedString];

  if (v18)
  {
    sub_21CB80B94();

    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  v20 = sub_21CB80BE4();
  (*(*(v20 - 8) + 56))(v5, v19, 1, v20);
  return sub_21C79C3F4(v5, a1);
}

unint64_t sub_21C91BA7C()
{
  result = qword_27CDF1388;
  if (!qword_27CDF1388)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF1380, &unk_21CBB10F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEBE40, &unk_21CBA8200);
    sub_21CB83AB4();
    sub_21C6EADEC(&qword_27CDEBE50, &qword_27CDEBE40, &unk_21CBA8200, MEMORY[0x277CDF028]);
    sub_21C91BBC4(v1);
    swift_getOpaqueTypeConformance2();
    sub_21C6EADEC(&qword_27CDF1398, &qword_27CDF13A0, &qword_21CBB1100, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF1388);
  }

  return result;
}

unint64_t sub_21C91BBC4(__n128 a1)
{
  result = qword_27CDF1390;
  if (!qword_27CDF1390)
  {
    sub_21CB83AB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF1390);
  }

  return result;
}

uint64_t sub_21C91BC70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21C91BCD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_21C91BD64()
{
  result = qword_27CDF13B0;
  if (!qword_27CDF13B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF13B8, &qword_21CBB1138);
    sub_21C91BA7C();
    sub_21C6EADEC(&qword_27CDF13A8, &qword_27CDF1370, &qword_21CBB10D8, MEMORY[0x277CDF028]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF13B0);
  }

  return result;
}

uint64_t sub_21C91BE24@<X0>(void *a2@<X8>)
{
  swift_getKeyPath(byte_21CBB1140);
  swift_getKeyPath(byte_21CBB1168);
  sub_21CB81DB4();

  *a2 = v4;
  return result;
}

uint64_t sub_21C91BEA4(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath(byte_21CBB1140);
  swift_getKeyPath(byte_21CBB1168);

  return sub_21CB81DC4();
}

void sub_21C91BF20(void *a1, void *a2, uint64_t a3)
{
  if (a1)
  {
    oslog = a1;
    if ([oslog BOOLValue])
    {
      sub_21C91CA0C();
      v4 = *(a3 + 16);
      [v4 didAttemptPromptReview];
    }
  }

  else
  {
    if (qword_27CDEA470 != -1)
    {
      swift_once();
    }

    v6 = sub_21CB81C84();
    __swift_project_value_buffer(v6, qword_27CE186E0);
    v7 = a2;
    oslog = sub_21CB81C64();
    v8 = sub_21CB85AF4();

    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      if (a2)
      {
        v11 = a2;
        v12 = _swift_stdlib_bridgeErrorToNSError();
        v13 = v12;
      }

      else
      {
        v12 = 0;
        v13 = 0;
      }

      *(v9 + 4) = v12;
      *v10 = v13;
      _os_log_impl(&dword_21C6E5000, oslog, v8, "AMS failed to check if should prompt: %@.", v9, 0xCu);
      sub_21C91C9A4(v10);
      MEMORY[0x21CF16D90](v10, -1, -1);
      MEMORY[0x21CF16D90](v9, -1, -1);
    }
  }
}

void sub_21C91C0C4(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

void sub_21C91C1B0(const char *a1, uint64_t a2, uint64_t a3)
{
  v7 = v3;
  if (qword_27CDEA470 != -1)
  {
    swift_once();
  }

  v8 = sub_21CB81C84();
  __swift_project_value_buffer(v8, qword_27CE186E0);
  v9 = sub_21CB81C64();
  v10 = sub_21CB85B14();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_21C6E5000, v9, v10, a1, v11, 2u);
    MEMORY[0x21CF16D90](v11, -1, -1);
  }

  v12 = *(v7 + 40);
  v13 = qword_27CDEA4C0;

  if (v13 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C7072A8(v12, v19[0]);

  swift_getKeyPath(byte_21CBB1140);
  swift_getKeyPath(byte_21CBB1168);
  sub_21CB81DB4();

  v14 = *(v19[0] + 16);

  if (v14 < 0x15)
  {
    v15 = sub_21CB81C64();
    v17 = sub_21CB85B14();
    if (os_log_type_enabled(v15, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_21C6E5000, v15, v17, "Criteria wasn't met to prompt for App Store rating.", v18, 2u);
      MEMORY[0x21CF16D90](v18, -1, -1);
    }
  }

  else
  {
    v15 = [*(v7 + 16) shouldAttemptReview];
    v19[4] = a2;
    v19[5] = v7;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 1107296256;
    v19[2] = sub_21C91C0C4;
    v19[3] = a3;
    v16 = _Block_copy(v19);

    [v15 addFinishBlock:v16];
    _Block_release(v16);
  }
}

void sub_21C91C48C()
{
  v1 = v0;
  if (qword_27CDEA470 != -1)
  {
    swift_once();
  }

  v2 = sub_21CB81C84();
  __swift_project_value_buffer(v2, qword_27CE186E0);
  v3 = sub_21CB81C64();
  v4 = sub_21CB85B14();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_21C6E5000, v3, v4, "User viewed security recommendation, trying to prompt for App Store rating.", v5, 2u);
    MEMORY[0x21CF16D90](v5, -1, -1);
  }

  v6 = objc_opt_self();
  v7 = [v6 pm_defaults];

  v8 = sub_21CB85584();

  [v7 safari:v8 incrementNumberForKey:?];

  v9 = [v6 pm_defaults];

  v10 = sub_21CB85584();

  v11 = [v9 safari:v10 numberForKey:?];

  if (v11)
  {
    v12 = [v11 integerValue];

    v13 = v12 > 3;
  }

  else
  {
    v13 = 0;
  }

  v14 = *(v1 + 40);
  v15 = qword_27CDEA4C0;

  if (v15 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C7072A8(v14, v21[0]);

  swift_getKeyPath(byte_21CBB1140);
  swift_getKeyPath(byte_21CBB1168);
  sub_21CB81DB4();

  v16 = *(v21[0] + 16);

  if (v16 > 0x14 && v13)
  {
    v17 = [*(v1 + 16) shouldAttemptReview];
    v21[4] = sub_21C91CC70;
    v21[5] = v1;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 1107296256;
    v21[2] = sub_21C91C0C4;
    v21[3] = &block_descriptor_10;
    v18 = _Block_copy(v21);

    [v17 addFinishBlock:v18];
    _Block_release(v18);
  }

  else
  {
    v17 = sub_21CB81C64();
    v19 = sub_21CB85B14();
    if (os_log_type_enabled(v17, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_21C6E5000, v17, v19, "Criteria wasn't met to prompt for App Store rating.", v20, 2u);
      MEMORY[0x21CF16D90](v20, -1, -1);
    }
  }
}

uint64_t PMAppStoreReviewController.deinit()
{

  return v0;
}

uint64_t PMAppStoreReviewController.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_21C91C9A4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF76B0, &qword_21CBA2BE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_21C91CA0C()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = [v0 windows];

  sub_21C91CC14();
  v2 = sub_21CB85824();

  if (!(v2 >> 62))
  {
    if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_9:

    goto LABEL_10;
  }

  if (!sub_21CB85FA4())
  {
    goto LABEL_9;
  }

LABEL_3:
  if ((v2 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x21CF15BD0](0, v2);
LABEL_6:
    v4 = v3;

    v5 = [v4 windowScene];

    if (v5)
    {
      oslog = [objc_allocWithZone(PMAppStoreReviewHelper) init];
      [oslog attemptToRequestReview:v5];

      goto LABEL_13;
    }

LABEL_10:
    if (qword_27CDEA470 == -1)
    {
      goto LABEL_11;
    }

    goto LABEL_18;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v3 = *(v2 + 32);
    goto LABEL_6;
  }

  __break(1u);
LABEL_18:
  swift_once();
LABEL_11:
  v6 = sub_21CB81C84();
  __swift_project_value_buffer(v6, qword_27CE186E0);
  oslog = sub_21CB81C64();
  v7 = sub_21CB85AF4();
  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_21C6E5000, oslog, v7, "Failed to get window scene to request review.", v8, 2u);
    MEMORY[0x21CF16D90](v8, -1, -1);
  }

LABEL_13:
}

unint64_t sub_21C91CC14()
{
  result = qword_27CDFAE20;
  if (!qword_27CDFAE20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CDFAE20);
  }

  return result;
}

uint64_t sub_21C91CC74(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_21C91CCBC(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_21C91CD28@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>, double a6@<D2>)
{
  v41 = a2;
  v43 = a3;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF13C8, &qword_21CBB1298);
  MEMORY[0x28223BE20](v40);
  v42 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v39 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF13D0, &qword_21CBB12A0);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v14 = (&v39 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF13D8, &qword_21CBB12A8);
  MEMORY[0x28223BE20](v15);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v39 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v39 - v22;
  v24 = *(sub_21CB82A84() + 20);
  v25 = *MEMORY[0x277CE0118];
  v26 = sub_21CB831A4();
  (*(*(v26 - 8) + 104))(v14 + v24, v25, v26);
  *v14 = a6;
  v14[1] = a6;
  *(v14 + *(v12 + 60)) = sub_21CB84B24();
  *(v14 + *(v12 + 64)) = 256;
  sub_21CB85214();
  sub_21CB82AC4();
  sub_21C716934(v14, v20, &qword_27CDF13D0, &qword_21CBB12A0);
  v27 = &v20[*(v15 + 36)];
  v28 = v49;
  *(v27 + 4) = v48;
  *(v27 + 5) = v28;
  *(v27 + 6) = v50;
  v29 = v45;
  *v27 = v44;
  *(v27 + 1) = v29;
  v30 = v47;
  *(v27 + 2) = v46;
  *(v27 + 3) = v30;
  sub_21C716934(v20, v23, &qword_27CDF13D8, &qword_21CBB12A8);
  v31 = sub_21CB84AD4();
  KeyPath = swift_getKeyPath(byte_21CBB12B0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF13E0, &qword_21CBB12E0);
  (*(*(v33 - 8) + 16))(v10, v41, v33);
  v34 = &v10[*(v40 + 36)];
  *v34 = KeyPath;
  v34[1] = v31;
  sub_21C6EDBAC(v23, v17, &qword_27CDF13D8, &qword_21CBB12A8);
  v35 = v42;
  sub_21C6EDBAC(v10, v42, &qword_27CDF13C8, &qword_21CBB1298);
  v36 = v43;
  sub_21C6EDBAC(v17, v43, &qword_27CDF13D8, &qword_21CBB12A8);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF13E8, &qword_21CBB12E8);
  sub_21C6EDBAC(v35, v36 + *(v37 + 48), &qword_27CDF13C8, &qword_21CBB1298);
  sub_21C6EA794(v10, &qword_27CDF13C8, &qword_21CBB1298);
  sub_21C6EA794(v23, &qword_27CDF13D8, &qword_21CBB12A8);
  sub_21C6EA794(v35, &qword_27CDF13C8, &qword_21CBB1298);
  return sub_21C6EA794(v17, &qword_27CDF13D8, &qword_21CBB12A8);
}

uint64_t sub_21C91D1BC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(v2 + 24);
  *a2 = sub_21CB85214();
  a2[1] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF13C0, &qword_21CBB1290);
  return sub_21C91CD28(a1, a2 + *(v7 + 44), v5);
}

unint64_t sub_21C91D240()
{
  result = qword_27CDF13F0;
  if (!qword_27CDF13F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF13F8, &qword_21CBB12F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF13F0);
  }

  return result;
}

uint64_t sub_21C91D2A4@<X0>(void *a1@<X8>)
{
  sub_21C7D37FC();
  result = sub_21CB82F94();
  *a1 = v3;
  return result;
}

uint64_t sub_21C91D2F4(unint64_t *a1)
{
  sub_21C940A00(*a1);
  sub_21C7D37FC();
  return sub_21CB82FA4();
}

uint64_t sub_21C91D344@<X0>(_BYTE *a1@<X8>)
{
  sub_21C7D38A8();
  result = sub_21CB82F94();
  *a1 = v3;
  return result;
}

uint64_t sub_21C91D3E0@<X0>(uint64_t a2@<X8>)
{
  KeyPath = swift_getKeyPath(byte_21CBB1300);
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C7072A8(KeyPath, v19);

  type metadata accessor for PMAccountsState(0);
  sub_21C705F40(&qword_27CDEAE08, type metadata accessor for PMAccountsState, &protocol conformance descriptor for PMAccountsState);
  v4 = sub_21CB82674();
  v6 = v5;

  *(a2 + 16) = v4;
  *(a2 + 24) = v6;
  v7 = swift_getKeyPath(byte_21CBB1328);
  sub_21CB86544();
  sub_21C7073E8(v7, v19);

  type metadata accessor for PMGroupsStore(0);
  sub_21C705F40(&qword_27CDEB7C8, type metadata accessor for PMGroupsStore, &protocol conformance descriptor for PMGroupsStore);
  v8 = sub_21CB82674();
  v10 = v9;

  *(a2 + 32) = v8;
  *(a2 + 40) = v10;
  *(a2 + 48) = swift_getKeyPath(byte_21CBB1348);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 80) = 0;
  *(a2 + 96) = 0;
  v11 = type metadata accessor for PMCombinedAccountDetailsView(0);
  v12 = v11[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB998, &qword_21CBA2700);
  swift_storeEnumTagMultiPayload();
  v13 = a2 + v11[11];
  *(v13 + 8) = 0;
  v14 = v11[12];
  *(a2 + v14) = swift_getKeyPath(byte_21CBB1420);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  swift_storeEnumTagMultiPayload();
  v15 = a2 + v11[13];
  *v15 = swift_getKeyPath(byte_21CBB1458);
  *(v15 + 8) = 0;
  *(a2 + v11[14]) = 0;
  v16 = a2 + v11[15];
  sub_21C9409AC();
  sub_21CB81FA4();
  *v16 = v19;
  *(v16 + 8) = v20;
  *(v16 + 16) = v21;
  type metadata accessor for PMCombinedAccountDetailsModel(0);
  sub_21C705F40(&qword_27CDEB520, type metadata accessor for PMCombinedAccountDetailsModel, &unk_21CBC08FC);
  result = sub_21CB82674();
  *a2 = result;
  *(a2 + 8) = v18;
  return result;
}

id sub_21C91D708@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21C95C78C();
  *a1 = result;
  return result;
}

void sub_21C91D734(void **a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(*a2 + 16);
  *(*a2 + 16) = *a1;
  v4 = v2;

  sub_21C942960(v3);
}

uint64_t sub_21C91D778@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21C95C884();
  *a1 = result;
  return result;
}

uint64_t sub_21C91D7A4(uint64_t *a1, uint64_t a2)
{
  *(*a2 + 24) = *a1;
}

uint64_t sub_21C91D7E8@<X0>(uint64_t a1@<X8>)
{
  v75 = a1;
  v2 = type metadata accessor for PMSetUpVerificationCodeAlertPurpose(0);
  MEMORY[0x28223BE20](v2 - 8);
  *&v70 = &v64 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for PMCombinedAccountDetailsView(0);
  v80 = *(v4 - 8);
  v5 = *(v80 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v81 = v5;
  v76 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1450, &qword_21CBB1578);
  MEMORY[0x28223BE20](v72);
  v7 = &v64 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1458, &qword_21CBB1580);
  v9 = *(v8 - 8);
  v73 = v8;
  v74 = v9;
  MEMORY[0x28223BE20](v8);
  v71 = &v64 - v10;
  v64 = v7;
  sub_21C91E1B0(v7);
  v67 = sub_21C91F82C();
  v66 = v11;
  v12 = *v1;
  v77 = v1[1];
  v79 = v1;
  v13 = type metadata accessor for PMCombinedAccountDetailsModel(0);
  sub_21C705F40(&qword_27CDEB520, type metadata accessor for PMCombinedAccountDetailsModel, &unk_21CBC08FC);
  v69 = v12;
  v68 = v13;
  sub_21CB82684();
  swift_getKeyPath(byte_21CBB1588);
  sub_21CB82694();

  v65 = *(&v85 + 1);
  v14 = v85;
  v15 = v86;
  v82 = type metadata accessor for PMCombinedAccountDetailsView;
  v16 = v76;
  sub_21C942ED4(v1, v76, type metadata accessor for PMCombinedAccountDetailsView);
  v80 = *(v80 + 80);
  v17 = (v80 + 16) & ~v80;
  v18 = swift_allocObject();
  v78 = type metadata accessor for PMCombinedAccountDetailsView;
  sub_21C943454(v16, v18 + v17, type metadata accessor for PMCombinedAccountDetailsView);
  v19 = swift_allocObject();
  *(v19 + 16) = sub_21C940E10;
  *(v19 + 24) = v18;
  KeyPath = swift_getKeyPath(byte_21CBB15B0);
  v21 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1460, &qword_21CBB15D8) + 36)];
  *v21 = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  swift_storeEnumTagMultiPayload();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1468, &qword_21CBB15E0);
  *(v21 + v22[18]) = 0;
  v23 = (v21 + v22[15]);
  v24 = v66;
  *v23 = v67;
  v23[1] = v24;
  v25 = v21 + v22[16];
  v26 = v65;
  *v25 = v14;
  *(v25 + 1) = v26;
  v25[16] = v15;
  *(v21 + v22[17]) = 0;
  *(v21 + v22[19]) = 2;
  v27 = (v21 + v22[20]);
  *v27 = sub_21C9440B4;
  v27[1] = v19;
  v28 = (v21 + v22[21]);
  *v28 = nullsub_1;
  v28[1] = 0;
  sub_21CB82684();
  swift_getKeyPath(byte_21CBB15E8);
  sub_21CB82694();

  v67 = v87;
  v66 = v88;
  LODWORD(v65) = v89;
  swift_getKeyPath(byte_21CBB1610);
  swift_getKeyPath(byte_21CBB1638);
  v29 = v70;
  sub_21CB81DB4();

  v30 = type metadata accessor for PMAccount(0);
  (*(*(v30 - 8) + 56))(v29, 0, 1, v30);
  v31 = v76;
  sub_21C942ED4(v79, v76, v82);
  v32 = swift_allocObject();
  v33 = v17;
  sub_21C943454(v31, v32 + v17, v78);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1470, &qword_21CBB1658);
  v35 = v64;
  v36 = &v64[*(v34 + 36)];
  v37 = type metadata accessor for PMSetUpVerificationCodeAlertViewModifier(0);
  sub_21C942ED4(v29, &v36[v37[5]], type metadata accessor for PMSetUpVerificationCodeAlertPurpose);
  v38 = &v36[v37[7]];
  v83 = 0;
  v84 = 0xE000000000000000;
  sub_21CB84D44();
  v39 = v86;
  *v38 = v85;
  *(v38 + 2) = v39;
  v40 = &v36[v37[8]];
  LOBYTE(v83) = 0;
  sub_21CB84D44();
  v41 = *(&v85 + 1);
  *v40 = v85;
  *(v40 + 1) = v41;
  v42 = v37[9];
  v83 = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1478, &qword_21CBB1660);
  sub_21CB84D44();
  *&v36[v42] = v85;
  v43 = &v36[v37[10]];
  LOBYTE(v83) = 0;
  sub_21CB84D44();
  v44 = *(&v85 + 1);
  *v43 = v85;
  *(v43 + 1) = v44;
  v45 = &v36[v37[11]];
  LOBYTE(v83) = 0;
  sub_21CB84D44();
  v46 = *(&v85 + 1);
  *v45 = v85;
  *(v45 + 1) = v46;
  v47 = &v36[v37[12]];
  LOBYTE(v83) = 0;
  sub_21CB84D44();
  sub_21C943938(v29, type metadata accessor for PMSetUpVerificationCodeAlertPurpose);
  v48 = *(&v85 + 1);
  *v47 = v85;
  *(v47 + 1) = v48;
  v49 = v37[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBDA0, &qword_21CBA0550);
  swift_storeEnumTagMultiPayload();
  v50 = v66;
  *v36 = v67;
  *(v36 + 1) = v50;
  v36[16] = v65;
  v51 = &v36[v37[6]];
  *v51 = sub_21C940E28;
  v51[1] = v32;
  v52 = v77;
  v53 = v68;
  sub_21CB82684();
  sub_21CB82694();

  v70 = v85;
  v54 = v86;
  v55 = v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1480, &qword_21CBB16C8) + 36);
  *v55 = v70;
  *(v55 + 16) = v54;
  sub_21CB82684();
  sub_21CB82694();

  v70 = v85;
  v56 = v86;
  sub_21C942ED4(v79, v31, v82);
  v57 = swift_allocObject();
  sub_21C943454(v31, v57 + v33, v78);
  v58 = v72;
  v59 = v35 + *(v72 + 36);
  *v59 = v70;
  *(v59 + 16) = v56;
  *(v59 + 24) = sub_21C940E98;
  *(v59 + 32) = v57;
  sub_21CB81CD4();
  *&v85 = v52;
  v60 = sub_21C940F08();
  v61 = v71;
  sub_21CB843A4();

  sub_21C6EA794(v35, &qword_27CDF1450, &qword_21CBB1578);
  *&v85 = v58;
  *(&v85 + 1) = v53;
  v86 = v60;
  swift_getOpaqueTypeConformance2();
  v62 = v73;
  sub_21CB845C4();
  return (*(v74 + 8))(v61, v62);
}

uint64_t sub_21C91E1B0@<X0>(uint64_t a1@<X8>)
{
  v119 = a1;
  v112 = sub_21CB829A4();
  v111 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v110 = &v105 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1630, &qword_21CBB1978);
  Description = v128[-1].Description;
  MEMORY[0x28223BE20](v128);
  v113 = &v105 - v3;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1638, &qword_21CBB1980);
  v121 = *(v122 - 8);
  MEMORY[0x28223BE20](v122);
  v114 = &v105 - v4;
  v131 = sub_21CB830D4();
  v106 = *(v131 - 8);
  MEMORY[0x28223BE20](v131);
  v6 = &v105 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = type metadata accessor for PMCombinedAccountDetailsView(0);
  v123 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v135 = v7;
  v127 = &v105 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v105 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for PMAccount(0);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v14 = &v105 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1520, &qword_21CBB1750);
  MEMORY[0x28223BE20](v107);
  v16 = &v105 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1510, &qword_21CBB1740);
  v129 = *(v17 - 8);
  v130 = v17;
  MEMORY[0x28223BE20](v17);
  v108 = &v105 - v18;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF14C8, &qword_21CBB1718);
  MEMORY[0x28223BE20](v124);
  v132 = &v105 - v19;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF14B8, &qword_21CBB1708);
  v115 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v125 = &v105 - v20;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF14A8, &qword_21CBB16F8);
  v117 = *(v118 - 8);
  *&v21 = MEMORY[0x28223BE20](v118).n128_u64[0];
  v126 = &v105 - v22;
  v23 = *(v1 + 8);
  swift_getKeyPath(byte_21CBB1610, v21);
  swift_getKeyPath(byte_21CBB1638);
  v134 = v23;
  sub_21CB81DB4();

  sub_21C942ED4(&v14[*(v12 + 32)], v10, type metadata accessor for PMAccount.Storage);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v133 = v1;
  if (EnumCaseMultiPayload == 1)
  {
    sub_21C943938(v14, type metadata accessor for PMAccount);
    sub_21C943938(v10, type metadata accessor for PMAccount.Storage);
  }

  else
  {
    v25 = *v10;
    v26 = [v25 credentialTypes];

    sub_21C943938(v14, type metadata accessor for PMAccount);
    if ((v26 & 8) != 0)
    {
      v30 = v127;
      sub_21C942ED4(v1, v127, type metadata accessor for PMCombinedAccountDetailsView);
      v31 = (*(v123 + 80) + 16) & ~*(v123 + 80);
      v32 = swift_allocObject();
      sub_21C943454(v30, v32 + v31, type metadata accessor for PMCombinedAccountDetailsView);
      v141 = sub_21C941E40;
      v142 = v32;
      v143 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1558, &qword_21CBB1768);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1568, &qword_21CBB1770);
      sub_21C6EADEC(&qword_27CDF1550, &qword_27CDF1558, &qword_21CBB1768, &unk_21CBA2240);
      goto LABEL_6;
    }
  }

  v27 = v127;
  sub_21C942ED4(v1, v127, type metadata accessor for PMCombinedAccountDetailsView);
  v28 = (*(v123 + 80) + 16) & ~*(v123 + 80);
  v29 = swift_allocObject();
  sub_21C943454(v27, v29 + v28, type metadata accessor for PMCombinedAccountDetailsView);
  v141 = sub_21C941D64;
  v142 = v29;
  v143 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1558, &qword_21CBB1768);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1568, &qword_21CBB1770);
  sub_21C6EADEC(&qword_27CDF1550, &qword_27CDF1558, &qword_21CBB1768, &unk_21CBA2240);
LABEL_6:
  sub_21C6EADEC(&qword_27CDF1560, &qword_27CDF1568, &qword_21CBB1770, &unk_21CBA2240);
  sub_21CB83494();
  v33 = v136;
  v34 = v137;
  v35 = v138;
  sub_21CB830B4();
  v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1538, &qword_21CBB1758) + 36);
  v37 = v106;
  v38 = v131;
  (*(v106 + 16))(&v16[v36], v6, v131);
  v39 = *(v37 + 56);
  v39(&v16[v36], 0, 1, v38);
  *v16 = v33;
  *(v16 + 1) = v34;
  v16[16] = v35;
  KeyPath = swift_getKeyPath(byte_21CBB1988);
  v41 = v107;
  v42 = &v16[*(v107 + 36)];
  v43 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB238, &qword_21CBA1570) + 28);
  (*(v37 + 32))(v42 + v43, v6, v38);
  v39(v42 + v43, 0, 1, v38);
  *v42 = KeyPath;
  v44 = v134;
  sub_21CB81DB4();

  v45 = sub_21C9417A8();
  v46 = v108;
  sub_21CB84674();
  v47 = sub_21C6EA794(v16, &qword_27CDF1520, &qword_21CBB1750);
  MEMORY[0x28223BE20](v47);
  v48 = v133;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1518, &qword_21CBB1748);
  v136 = v41;
  v137 = v45;
  swift_getOpaqueTypeConformance2();
  v49 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF1570, &qword_21CBB1778);
  v50 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF1578, &qword_21CBB1780);
  v51 = sub_21C9419F8();
  v136 = v50;
  v137 = v51;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v136 = v49;
  v137 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v53 = v132;
  v54 = v130;
  sub_21CB84894();
  (*(v129 + 8))(v46, v54);
  v55 = swift_getKeyPath(byte_21CBB19B8);
  v56 = &v53[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1508, &qword_21CBB1738) + 36)];
  v57 = v53;
  v58 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED938, &qword_21CBA7D60) + 28);
  v131 = *v48;
  v59 = v48;
  v130 = type metadata accessor for PMCombinedAccountDetailsModel(0);
  v129 = sub_21C705F40(&qword_27CDEB520, type metadata accessor for PMCombinedAccountDetailsModel, &unk_21CBC08FC);
  sub_21CB82684();
  sub_21CB82694();

  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED038, &unk_21CBA6000);
  (*(*(v60 - 8) + 56))(v56 + v58, 0, 1, v60);
  *v56 = v55;
  swift_getKeyPath(byte_21CBB1610);
  swift_getKeyPath(byte_21CBB1638);
  v61 = &v57[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF14F8, &qword_21CBB1730) + 36)];
  sub_21CB81DB4();

  v62 = &v61[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF15B0, &qword_21CBB17A0) + 36)];
  *v62 = sub_21C941D84;
  *(v62 + 1) = v44;

  v136 = sub_21CB84AB4();
  swift_getKeyPath(byte_21CBB1A40);
  sub_21CB81DB4();

  v63 = v110;
  sub_21CB82994();
  v64 = MEMORY[0x277CE0F78];
  v65 = MEMORY[0x277CE0F70];
  v66 = v113;
  sub_21CB849B4();
  v111[1](v63, v112);

  v67 = v59 + *(v109 + 60);
  LODWORD(v112) = *v67;
  v111 = *(v67 + 1);
  LODWORD(v110) = v67[16];
  LOBYTE(v136) = v112;
  v137 = v111;
  LOBYTE(v138) = v110;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1640, &qword_21CBB1A60);
  sub_21CB81F74();
  v136 = v141;
  v137 = v142;
  LOBYTE(v138) = v143;
  v140 = 4;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1438, &qword_21CBB14B8);
  v141 = v64;
  v142 = v65;
  v69 = swift_getOpaqueTypeConformance2();
  v70 = sub_21C940D0C();
  v71 = v114;
  v72 = v128;
  sub_21CB84824();

  (*(Description + 1))(v66, v72);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF14E8, &qword_21CBB1728);
  v74 = v132;
  v75 = &v132[*(v73 + 36)];
  v136 = v72;
  v137 = v68;
  v138 = v69;
  v139 = v70;
  swift_getOpaqueTypeConformance2();
  v76 = v122;
  sub_21CB84494();
  (*(v121 + 8))(v71, v76);
  v77 = sub_21CB85214();
  v79 = v78;
  v80 = &v75[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF15C0, &qword_21CBB17A8) + 36)];
  *v80 = v77;
  v80[1] = v79;
  LOBYTE(v136) = v112;
  v137 = v111;
  LOBYTE(v138) = v110;
  sub_21CB81F54();
  LOBYTE(v79) = v141;
  v128 = type metadata accessor for PMCombinedAccountDetailsView;
  v81 = v133;
  v82 = v127;
  sub_21C942ED4(v133, v127, type metadata accessor for PMCombinedAccountDetailsView);
  v83 = (*(v123 + 80) + 16) & ~*(v123 + 80);
  v121 = *(v123 + 80);
  v84 = swift_allocObject();
  Description = type metadata accessor for PMCombinedAccountDetailsView;
  sub_21C943454(v82, v84 + v83, type metadata accessor for PMCombinedAccountDetailsView);
  v85 = &v74[*(v124 + 36)];
  *v85 = v79;
  *(v85 + 1) = sub_21C941D88;
  *(v85 + 2) = v84;
  sub_21CB82684();
  swift_getKeyPath(byte_21CBB1A68);
  sub_21CB82694();

  sub_21C942ED4(v81, v82, v128);
  v86 = swift_allocObject();
  sub_21C943454(v82, v86 + v83, type metadata accessor for PMCombinedAccountDetailsView);
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF14D0, &qword_21CBB1720);
  v114 = sub_21C9413B0();
  v87 = sub_21CB83994();
  v123 = v87;
  v88 = sub_21C941AD8();
  v136 = &type metadata for PMPasskeysLearnMoreView;
  v137 = v87;
  v138 = v88;
  v139 = MEMORY[0x277CDE2B8];
  v122 = MEMORY[0x277CDEB40];
  v89 = swift_getOpaqueTypeConformance2();
  v90 = v124;
  v91 = v132;
  sub_21CB847B4();

  sub_21C6EA794(v91, &qword_27CDF14C8, &qword_21CBB1718);
  sub_21CB82684();
  swift_getKeyPath(byte_21CBB1A90);
  sub_21CB82694();

  sub_21C942ED4(v133, v82, v128);
  v92 = swift_allocObject();
  sub_21C943454(v82, v92 + v83, Description);
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF14C0, &qword_21CBB1710);
  v136 = v90;
  v137 = v113;
  v138 = v114;
  v139 = v89;
  v132 = MEMORY[0x277CDEE28];
  v93 = swift_getOpaqueTypeConformance2();
  v94 = type metadata accessor for PMEditAccountWebsitesView(255);
  v95 = sub_21C705F40(&qword_27CDF15E0, type metadata accessor for PMEditAccountWebsitesView, &unk_21CBA95C8);
  v136 = v94;
  v137 = v123;
  v138 = v95;
  v139 = MEMORY[0x277CDE2B8];
  v96 = swift_getOpaqueTypeConformance2();
  v97 = v116;
  v98 = v125;
  sub_21CB847B4();

  (*(v115 + 8))(v98, v97);
  sub_21CB82684();
  swift_getKeyPath(byte_21CBB1AB8);
  sub_21CB82694();

  sub_21C942ED4(v133, v82, v128);
  v99 = swift_allocObject();
  sub_21C943454(v82, v99 + v83, Description);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF14B0, &qword_21CBB1700);
  v136 = v97;
  v137 = v112;
  v138 = v93;
  v139 = v96;
  swift_getOpaqueTypeConformance2();
  v100 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF15E8, &unk_21CBB17B8);
  v101 = sub_21C943C6C(&qword_27CDF15F0, &qword_27CDF15E8, &unk_21CBB17B8, sub_21C941B2C);
  v136 = v100;
  v137 = v123;
  v138 = v101;
  v139 = MEMORY[0x277CDE2B8];
  swift_getOpaqueTypeConformance2();
  v102 = v118;
  v103 = v126;
  sub_21CB847B4();

  return (*(v117 + 8))(v103, v102);
}

uint64_t sub_21C91F82C()
{
  v0 = type metadata accessor for PMAccount(0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v13 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_21CB81024();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  sub_21CB81004();
  (*(v4 + 8))(v6, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_21CBA0690;
  swift_getKeyPath(byte_21CBB1610);
  swift_getKeyPath(byte_21CBB1638);
  sub_21CB81DB4();

  v8 = PMAccount.effectiveTitle.getter();
  v10 = v9;
  sub_21C943938(v2, type metadata accessor for PMAccount);
  *(v7 + 56) = MEMORY[0x277D837D0];
  *(v7 + 64) = sub_21C7C0050();
  *(v7 + 32) = v8;
  *(v7 + 40) = v10;
  v11 = sub_21CB85594();

  return v11;
}

uint64_t sub_21C91FA5C@<X0>(uint64_t a1@<X8>)
{
  v85 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE38, &unk_21CBA3770);
  MEMORY[0x28223BE20](v1 - 8);
  v82 = v70 - v2;
  v3 = sub_21CB82A04();
  v79 = *(v3 - 8);
  v80 = v3;
  MEMORY[0x28223BE20](v3);
  v78 = v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PMCombinedAccountDetailsView(0);
  v74 = *(v5 - 8);
  v6 = *(v74 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v75 = v6;
  v88 = v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21CB81024();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v70 - v12;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
  v92 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v84 = v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v83 = v70 - v16;
  MEMORY[0x28223BE20](v17);
  v91 = v70 - v18;
  MEMORY[0x28223BE20](v19);
  v93 = v70 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1620, &qword_21CBB1930);
  v22 = v21 - 8;
  MEMORY[0x28223BE20](v21);
  v81 = v70 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = v70 - v25;
  sub_21CB81014();
  sub_21CB81014();
  v27 = sub_21CB80FF4();
  v29 = v28;
  v30 = *(v8 + 8);
  v86 = v7;
  v87 = v30;
  v30(v10, v7);
  v30(v13, v7);
  v94 = v27;
  v95 = v29;
  v76 = type metadata accessor for PMCombinedAccountDetailsView;
  v31 = v77;
  v32 = v88;
  sub_21C942ED4(v77, v88, type metadata accessor for PMCombinedAccountDetailsView);
  v74 = *(v74 + 80);
  v33 = (v74 + 16) & ~v74;
  v71 = v33;
  v34 = swift_allocObject();
  v73 = type metadata accessor for PMCombinedAccountDetailsView;
  sub_21C943454(v32, v34 + v33, type metadata accessor for PMCombinedAccountDetailsView);
  v72 = sub_21C71F3FC();
  v35 = v93;
  sub_21CB84DE4();
  v36 = v78;
  sub_21CB829F4();
  sub_21C6EADEC(&qword_27CDEBE50, &qword_27CDEBE40, &unk_21CBA8200, MEMORY[0x277CDF028]);
  v37 = v26;
  v90 = v26;
  v38 = v89;
  sub_21CB84334();
  (*(v79 + 8))(v36, v80);
  v79 = *(v92 + 8);
  v80 = v92 + 8;
  (v79)(v35, v38);
  v39 = v31;
  v40 = sub_21CA4A55C();
  KeyPath = swift_getKeyPath(byte_21CBB1938);
  v42 = swift_allocObject();
  *(v42 + 16) = (v40 & 1) == 0;
  v43 = &v37[*(v22 + 44)];
  *v43 = KeyPath;
  v43[1] = sub_21C735744;
  v43[2] = v42;
  sub_21CB81014();
  sub_21CB81014();
  v44 = sub_21CB80FF4();
  v46 = v45;
  v47 = v86;
  v70[1] = v8 + 8;
  v48 = v87;
  v87(v10, v86);
  v48(v13, v47);
  v94 = v44;
  v95 = v46;
  v49 = v82;
  sub_21CB81ED4();
  v50 = sub_21CB81F14();
  v51 = *(*(v50 - 8) + 56);
  v51(v49, 0, 1, v50);
  v52 = v88;
  sub_21C942ED4(v39, v88, v76);
  v53 = v71;
  v54 = swift_allocObject();
  sub_21C943454(v52, v54 + v53, v73);
  v55 = v93;
  sub_21CB84DC4();
  sub_21CB81014();
  v56 = sub_21CB81004();
  v58 = v57;
  v87(v13, v86);
  v94 = v56;
  v95 = v58;
  sub_21CB81EF4();
  v51(v49, 0, 1, v50);
  v59 = v91;
  sub_21CB84DC4();
  v60 = v81;
  sub_21C6EDBAC(v90, v81, &qword_27CDF1620, &qword_21CBB1930);
  v61 = *(v92 + 16);
  v62 = v83;
  v63 = v55;
  v64 = v89;
  v61(v83, v63, v89);
  v65 = v84;
  v61(v84, v59, v64);
  v66 = v85;
  sub_21C6EDBAC(v60, v85, &qword_27CDF1620, &qword_21CBB1930);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1628, &unk_21CBB1968);
  v61((v66 + *(v67 + 48)), v62, v64);
  v61((v66 + *(v67 + 64)), v65, v64);
  v68 = v79;
  (v79)(v91, v64);
  v68(v93, v64);
  sub_21C6EA794(v90, &qword_27CDF1620, &qword_21CBB1930);
  v68(v65, v64);
  v68(v62, v64);
  return sub_21C6EA794(v60, &qword_27CDF1620, &qword_21CBB1930);
}

uint64_t sub_21C9203E8(uint64_t a1, uint64_t a2)
{
  v54 = a2;
  v3 = type metadata accessor for PMCombinedAccountDetailsView(0);
  v48 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v49 = v4;
  v50 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  MEMORY[0x28223BE20](v5 - 8);
  v53 = &v48 - v6;
  v52 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v52);
  v8 = (&v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v51 = type metadata accessor for PMAccount(0);
  MEMORY[0x28223BE20](v51);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PMSetUpVerificationCodeAlertError(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v48 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1610, &unk_21CBB1810);
  MEMORY[0x28223BE20](v17);
  v19 = (&v48 - v18);
  sub_21C6EDBAC(a1, &v48 - v18, &qword_27CDF1610, &unk_21CBB1810);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C943454(v19, v16, type metadata accessor for PMSetUpVerificationCodeAlertError);
    sub_21C705F40(&qword_27CDF1618, type metadata accessor for PMSetUpVerificationCodeAlertError, &unk_21CBCA878);
    swift_willThrowTypedImpl();
    v20 = swift_allocError();
    sub_21C943454(v16, v21, type metadata accessor for PMSetUpVerificationCodeAlertError);
    v55 = v20;
    v22 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED298, &qword_21CBA6570);
    if (swift_dynamicCast())
    {
      v23 = sub_21CB80BE4();
      if ((*(*(v23 - 8) + 48))(v13, 3, v23) == 1)
      {
        v24 = v55;
        goto LABEL_15;
      }

      sub_21C943938(v13, type metadata accessor for PMSetUpVerificationCodeAlertError);
    }

    v29 = v20;
    if (qword_27CDEA470 != -1)
    {
      swift_once();
    }

    v30 = sub_21CB81C84();
    __swift_project_value_buffer(v30, qword_27CE186E0);
    v31 = v20;
    v32 = sub_21CB81C64();
    v33 = sub_21CB85AF4();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v34 = 138543362;
      v36 = v20;
      v37 = _swift_stdlib_bridgeErrorToNSError();
      *(v34 + 4) = v37;
      *v35 = v37;
      _os_log_impl(&dword_21C6E5000, v32, v33, "Cannot create verification code generator. %{public}@", v34, 0xCu);
      sub_21C6EA794(v35, &unk_27CDF76B0, &qword_21CBA2BE0);
      MEMORY[0x21CF16D90](v35, -1, -1);
      MEMORY[0x21CF16D90](v34, -1, -1);

LABEL_16:
      goto LABEL_17;
    }

    v24 = v20;
LABEL_15:

    goto LABEL_16;
  }

  v25 = *v19;
  v26 = v54;
  swift_getKeyPath(byte_21CBB1848);
  swift_getKeyPath(byte_21CBB1870);
  LOBYTE(v55) = 1;
  swift_retain_n();
  sub_21CB81DC4();
  v55 = v25;
  v27 = v25;
  sub_21CB81DC4();
  sub_21CB81DB4();

  if (v55)
  {
  }

  else
  {
    swift_getKeyPath(byte_21CBB1610);
    swift_getKeyPath(byte_21CBB1638);
    sub_21CB81DB4();

    sub_21C942ED4(&v10[*(v51 + 24)], v8, type metadata accessor for PMAccount.Storage);
    sub_21C943938(v10, type metadata accessor for PMAccount);
    if (swift_getEnumCaseMultiPayload() == 1)
    {

      return sub_21C943938(v8, type metadata accessor for PMAccount.Storage);
    }

    v38 = *v8;
    v39 = sub_21CB858E4();
    (*(*(v39 - 8) + 56))(v53, 1, 1, v39);
    v40 = v50;
    sub_21C942ED4(v26, v50, type metadata accessor for PMCombinedAccountDetailsView);
    sub_21CB858B4();
    v41 = v27;
    v42 = v38;
    v43 = sub_21CB858A4();
    v44 = (*(v48 + 80) + 32) & ~*(v48 + 80);
    v45 = (v49 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
    v46 = swift_allocObject();
    v47 = MEMORY[0x277D85700];
    *(v46 + 16) = v43;
    *(v46 + 24) = v47;
    sub_21C943454(v40, v46 + v44, type metadata accessor for PMCombinedAccountDetailsView);
    *(v46 + v45) = v41;
    *(v46 + ((v45 + 15) & 0xFFFFFFFFFFFFFFF8)) = v42;
    sub_21C98B308(0, 0, v53, &unk_21CBB1928, v46);
  }

LABEL_17:
  swift_getKeyPath(byte_21CBB15E8, v48);
  swift_getKeyPath(byte_21CBB1820);
  LOBYTE(v55) = 0;

  return sub_21CB81DC4();
}

uint64_t sub_21C920C28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v6[5] = sub_21CB858B4();
  v6[6] = sub_21CB858A4();
  v8 = sub_21CB85874();
  v6[7] = v8;
  v6[8] = v7;

  return MEMORY[0x2822009F8](sub_21C920CC8, v8, v7);
}

uint64_t sub_21C920CC8(uint64_t a1)
{
  v1[9] = *(v1[2] + 24);
  v1[10] = sub_21CB858A4();
  v3 = sub_21CB85874();
  v1[11] = v3;
  v1[12] = v2;

  return MEMORY[0x2822009F8](sub_21C920D60, v3, v2);
}

uint64_t sub_21C920D60()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[13] = Strong;
  if (Strong)
  {
    v2 = *(v0[9] + 24);
    ObjectType = swift_getObjectType();
    v10 = (*(v2 + 80) + **(v2 + 80));
    v4 = swift_task_alloc();
    v0[14] = v4;
    *v4 = v0;
    v4[1] = sub_21C920EE0;
    v6 = v0[3];
    v5 = v0[4];

    return v10(v6, v5, ObjectType, v2);
  }

  else
  {

    v8 = v0[7];
    v9 = v0[8];

    return MEMORY[0x2822009F8](sub_21C7B6B44, v8, v9);
  }
}

uint64_t sub_21C920EE0()
{
  v1 = *v0;

  swift_unknownObjectRelease();
  v2 = *(v1 + 96);
  v3 = *(v1 + 88);

  return MEMORY[0x2822009F8](sub_21C921024, v3, v2);
}

uint64_t sub_21C921024()
{

  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return MEMORY[0x2822009F8](sub_21C7B6B44, v1, v2);
}

uint64_t sub_21C9210D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(v2 + 16);
  v4 = qword_27CDEA4C0;

  if (v4 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C7072A8(v3, v7);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC2B0, &unk_21CBA0D70);
  type metadata accessor for PMAccount(0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_21CBA0690;
  swift_getKeyPath(byte_21CBB1610);
  swift_getKeyPath(byte_21CBB1638);
  sub_21CB81DB4();

  sub_21C833310(v5, sub_21C941B80, v2);
}

uint64_t sub_21C921290()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1570, &qword_21CBB1778);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v8 - v2;
  sub_21C9213C0(v8 - v2);
  v4 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF1578, &qword_21CBB1780);
  v5 = sub_21C9419F8();
  v8[0] = v4;
  v8[1] = v5;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x21CF131E0](v3, v0, OpaqueTypeConformance2);
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_21C9213C0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v123 = a1;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1868, &unk_21CBB21D0);
  MEMORY[0x28223BE20](v112);
  v111 = &v90 - v3;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF15A0, &unk_21CBB1790);
  v114 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v113 = &v90 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0560, &qword_21CBAEF20);
  v108 = *(v5 - 8);
  v109 = v5;
  MEMORY[0x28223BE20](v5);
  v96 = &v90 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1870, &qword_21CBB21E0);
  MEMORY[0x28223BE20](v7 - 8);
  v106 = &v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v110 = &v90 - v10;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1878, &qword_21CBB21E8);
  v104 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v94 = &v90 - v11;
  v12 = sub_21CB822D4();
  MEMORY[0x28223BE20](v12 - 8);
  v92 = &v90 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_21CB824D4();
  v93 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v95 = &v90 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1880, &qword_21CBB21F0);
  MEMORY[0x28223BE20](v15 - 8);
  v102 = &v90 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v120 = &v90 - v18;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1888, &qword_21CBB21F8);
  v107 = *(v119 - 8);
  MEMORY[0x28223BE20](v119);
  v124 = &v90 - v19;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1890, &qword_21CBB2200);
  MEMORY[0x28223BE20](v99);
  v21 = &v90 - v20;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1590, &qword_21CBB1788);
  v101 = *(v122 - 8);
  MEMORY[0x28223BE20](v122);
  v100 = &v90 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1898, &qword_21CBB2208);
  v115 = *(v23 - 8);
  v116 = v23;
  MEMORY[0x28223BE20](v23);
  v118 = &v90 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v98 = &v90 - v26;
  v27 = sub_21CB83604();
  MEMORY[0x28223BE20](v27 - 8);
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF18A0, &qword_21CBB2210);
  v28 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v30 = &v90 - v29;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1578, &qword_21CBB1780);
  *&v31 = MEMORY[0x28223BE20](v121).n128_u64[0];
  v33 = (&v90 - v32);
  sub_21CB81DB4();

  if (v125 == 1)
  {
    v34 = sub_21CB835C4();
    MEMORY[0x28223BE20](v34);
    *(&v90 - 2) = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1900, &qword_21CBB2248);
    sub_21C942CB8();
    v91 = v30;
    sub_21CB82194();
    v35 = sub_21CB835D4();
    MEMORY[0x28223BE20](v35);
    *(&v90 - 2) = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF18C0, &qword_21CBB2220);
    sub_21C942A48();
    v36 = v98;
    sub_21CB82194();
    v37 = *(v99 + 48);
    v38 = v30;
    v39 = v97;
    (*(v28 + 16))(v21, v38, v97);
    v41 = v115;
    v40 = v116;
    (*(v115 + 16))(&v21[v37], v36, v116);
    v42 = v100;
    sub_21CB83394();
    v43 = MEMORY[0x277CDDF68];
    v44 = sub_21C6EADEC(&qword_27CDF1588, &qword_27CDF1590, &qword_21CBB1788, MEMORY[0x277CDDF68]);
    v45 = sub_21C6EADEC(&qword_27CDF1598, &qword_27CDF15A0, &unk_21CBB1790, v43);
    v46 = v122;
    MEMORY[0x21CF131F0](v42, v122, v117, v44, v45);
    v101[1](v42, v46);
    (*(v41 + 8))(v36, v40);
    (*(v28 + 8))(v91, v39);
  }

  else
  {
    v101 = v33;
    v47 = v115;
    v48 = v116;
    v49 = sub_21CB835A4();
    MEMORY[0x28223BE20](v49);
    *(&v90 - 2) = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF18A8, &qword_21CBB2218);
    sub_21C942994();
    sub_21CB82194();
    v50 = v2;
    if (sub_21CB85174() & 1) != 0 && (sub_21C934730() & 1) != 0 && (sub_21C92D6D0())
    {
      sub_21CB822B4();
      sub_21CB835A4();
      v51 = v95;
      sub_21CB824E4();
      v52 = v94;
      v53 = v103;
      MEMORY[0x21CF131D0](v51, v103, MEMORY[0x277CDD880]);
      v54 = v104;
      v55 = v102;
      v56 = v105;
      (*(v104 + 16))(v102, v52, v105);
      (*(v54 + 56))(v55, 0, 1, v56);
      v125 = v53;
      v126 = MEMORY[0x277CDD880];
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      MEMORY[0x21CF13210](v55, v56, OpaqueTypeConformance2);
      sub_21C6EA794(v55, &qword_27CDF1880, &qword_21CBB21F0);
      (*(v54 + 8))(v52, v56);
      (*(v93 + 8))(v95, v53);
    }

    else
    {
      v58 = v102;
      v59 = v105;
      (*(v104 + 56))(v102, 1, 1, v105);
      v125 = v103;
      v126 = MEMORY[0x277CDD880];
      v60 = swift_getOpaqueTypeConformance2();
      MEMORY[0x21CF13210](v58, v59, v60);
      sub_21C6EA794(v58, &qword_27CDF1880, &qword_21CBB21F0);
    }

    v61 = v110;
    v62 = sub_21CB835A4();
    MEMORY[0x28223BE20](v62);
    *(&v90 - 2) = v50;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF18C0, &qword_21CBB2220);
    sub_21C942A48();
    sub_21CB82194();
    v63 = v47;
    if (sub_21C934730() & 1) != 0 || (sub_21C92D6D0())
    {
      v64 = v109;
      v65 = v106;
      (*(v108 + 56))(v106, 1, 1, v109);
      v66 = sub_21C8F0690();
      v125 = &type metadata for PMAppSeamlessToolbarItemPlaceholder;
      v126 = v66;
      v67 = swift_getOpaqueTypeConformance2();
      MEMORY[0x21CF13220](v65, v64, v67);
      sub_21C6EA794(v65, &qword_27CDF1870, &qword_21CBB21E0);
    }

    else
    {
      v68 = sub_21C8F0690();
      v69 = v96;
      MEMORY[0x21CF131E0](v68, &type metadata for PMAppSeamlessToolbarItemPlaceholder, v68);
      v71 = v108;
      v70 = v109;
      v72 = v106;
      (*(v108 + 16))(v106, v69, v109);
      (*(v71 + 56))(v72, 0, 1, v70);
      v125 = &type metadata for PMAppSeamlessToolbarItemPlaceholder;
      v126 = v68;
      v73 = swift_getOpaqueTypeConformance2();
      MEMORY[0x21CF13220](v72, v70, v73);
      sub_21C6EA794(v72, &qword_27CDF1870, &qword_21CBB21E0);
      (*(v71 + 8))(v69, v70);
    }

    v74 = v61;
    v75 = v111;
    v76 = v112[12];
    v77 = v112[16];
    v78 = v112[20];
    v79 = v107;
    (*(v107 + 16))(v111, v124, v119);
    v80 = v120;
    sub_21C6EDBAC(v120, &v75[v76], &qword_27CDF1880, &qword_21CBB21F0);
    v81 = v118;
    (*(v63 + 16))(&v75[v77], v118, v48);
    sub_21C6EDBAC(v74, &v75[v78], &qword_27CDF1870, &qword_21CBB21E0);
    v82 = v48;
    v83 = v113;
    sub_21CB83394();
    v84 = MEMORY[0x277CDDF68];
    v85 = sub_21C6EADEC(&qword_27CDF1588, &qword_27CDF1590, &qword_21CBB1788, MEMORY[0x277CDDF68]);
    v86 = sub_21C6EADEC(&qword_27CDF1598, &qword_27CDF15A0, &unk_21CBB1790, v84);
    v33 = v101;
    v87 = v117;
    MEMORY[0x21CF13200](v83, v122, v117, v85, v86);
    (*(v114 + 8))(v83, v87);
    sub_21C6EA794(v74, &qword_27CDF1870, &qword_21CBB21E0);
    (*(v63 + 8))(v81, v82);
    sub_21C6EA794(v80, &qword_27CDF1880, &qword_21CBB21F0);
    (*(v79 + 8))(v124, v119);
  }

  v88 = sub_21C9419F8();
  MEMORY[0x21CF131E0](v33, v121, v88);
  return sub_21C6EA794(v33, &qword_27CDF1578, &qword_21CBB1780);
}

uint64_t sub_21C9223F8@<X0>(uint64_t a2@<X8>)
{
  sub_21CB81DB4();

  v3 = sub_21CB85114();
  v4 = MEMORY[0x277CDF0D0];
  if (!v6)
  {
    v4 = MEMORY[0x277CDF0D8];
  }

  return (*(*(v3 - 8) + 104))(a2, *v4, v3);
}

uint64_t sub_21C9224C8(uint64_t a1)
{
  v2 = sub_21CB85114();
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  return sub_21CA49928(v5);
}

uint64_t sub_21C922594(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath(byte_21CBB1A40);

  return sub_21CB81DC4();
}

uint64_t sub_21C92262C(uint64_t a1)
{
  v1 = sub_21CB83994();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6[0] = 0xD000000000000011;
  v6[1] = 0x800000021CB934F0;
  type metadata accessor for PMCombinedAccountDetailsView(0);
  sub_21CB852C4();
  sub_21CB834F4();
  sub_21C941AD8();
  sub_21CB84524();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_21C922798@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = sub_21CB83994();
  v4 = *(v3 - 8);
  v23 = v3;
  v24 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PMEditAccountWebsitesView(0);
  *&v8 = MEMORY[0x28223BE20](v7).n128_u64[0];
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a1;
  swift_getKeyPath(byte_21CBB1610, v8);
  swift_getKeyPath(byte_21CBB1638);
  sub_21CB81DB4();

  type metadata accessor for PMCombinedAccountDetailsModel(0);
  sub_21C705F40(&qword_27CDEB520, type metadata accessor for PMCombinedAccountDetailsModel, &unk_21CBC08FC);
  sub_21CB82684();
  sub_21CB82694();

  v11 = *v31;
  v21 = *&v31[8];
  sub_21CB82684();
  swift_getKeyPath(byte_21CBB2128);
  sub_21CB82694();

  v12 = v29;
  v13 = &v10[v7[5]];
  *v13 = v11;
  *(v13 + 8) = v21;
  v14 = &v10[v7[6]];
  *v14 = v12;
  *(v14 + 8) = v30;
  v15 = &v10[v7[7]];
  v26 = MEMORY[0x277D84FA0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE110, &qword_21CBB2150);
  sub_21CB84D44();
  v16 = v28;
  *v15 = v27;
  *(v15 + 1) = v16;
  v17 = v7[8];
  *&v10[v17] = swift_getKeyPath(byte_21CBB2158);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  swift_storeEnumTagMultiPayload();
  v18 = v7[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBDA0, &qword_21CBA0550);
  swift_storeEnumTagMultiPayload();
  sub_21CB80E34();
  sub_21C705F40(&qword_27CDEE130, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_21CB81FA4();
  strcpy(v31, "editWebsites");
  v31[13] = 0;
  *&v31[14] = -5120;
  type metadata accessor for PMCombinedAccountDetailsView(0);
  sub_21CB852C4();
  sub_21CB834F4();
  sub_21C705F40(&qword_27CDF15E0, type metadata accessor for PMEditAccountWebsitesView, &unk_21CBA95C8);
  v19 = v23;
  sub_21CB84524();
  (*(v24 + 8))(v6, v19);
  return sub_21C943938(v10, type metadata accessor for PMEditAccountWebsitesView);
}

uint64_t sub_21C922C18(uint64_t a1)
{
  v1 = sub_21CB83994();
  v2 = *(v1 - 8);
  *&v3 = MEMORY[0x28223BE20](v1).n128_u64[0];
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath(byte_21CBB2098, v3);
  sub_21CB81DB4();

  v6 = *&v17[0];
  sub_21CB85214();
  sub_21CB82AC4();
  *&v9 = v6;
  *&v17[0] = 0x79726F74736968;
  *(&v17[0] + 1) = 0xE700000000000000;
  type metadata accessor for PMCombinedAccountDetailsView(0);
  sub_21CB852C4();
  sub_21CB834F4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF15E8, &unk_21CBB17B8);
  sub_21C943C6C(&qword_27CDF15F0, &qword_27CDF15E8, &unk_21CBB17B8, sub_21C941B2C);
  sub_21CB84524();
  (*(v2 + 8))(v5, v1);
  v17[5] = v14;
  v17[6] = v15;
  v17[0] = v9;
  v17[1] = v10;
  v17[2] = v11;
  v18 = v16;
  v17[3] = v12;
  v17[4] = v13;
  return sub_21C6EA794(v17, &qword_27CDF15E8, &unk_21CBB17B8);
}

uint64_t sub_21C922EBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v156 = a2;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1930, &qword_21CBB2298);
  MEMORY[0x28223BE20](v155);
  v144 = &v120 - v3;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1938, &qword_21CBB22A0);
  v138 = *(v139 - 8);
  MEMORY[0x28223BE20](v139);
  v120 = &v120 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1940, &qword_21CBB22A8);
  MEMORY[0x28223BE20](v5 - 8);
  v141 = &v120 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v157 = (&v120 - v8);
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1948, &qword_21CBB22B0);
  v151 = *(v143 - 8);
  MEMORY[0x28223BE20](v143);
  v140 = &v120 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v166 = (&v120 - v11);
  v132 = type metadata accessor for PMSecurityRecommendationPlatter(0);
  v12 = *(v132 - 8);
  MEMORY[0x28223BE20](v132);
  v121 = (&v120 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v126 = sub_21CB82F84();
  v14 = *(v126 - 8);
  MEMORY[0x28223BE20](v126);
  v125 = &v120 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1950, &qword_21CBB22B8);
  MEMORY[0x28223BE20](v16 - 8);
  v137 = &v120 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v150 = &v120 - v19;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1958, &qword_21CBB22C0);
  MEMORY[0x28223BE20](v152);
  v21 = &v120 - v20;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1960, &qword_21CBB22C8);
  MEMORY[0x28223BE20](v153);
  v142 = &v120 - v22;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1860, &qword_21CBB2090);
  v134 = *(v135 - 8);
  MEMORY[0x28223BE20](v135);
  v127 = &v120 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1968, &qword_21CBB22D0);
  MEMORY[0x28223BE20](v24 - 8);
  v133 = &v120 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v167 = (&v120 - v27);
  MEMORY[0x28223BE20](v28);
  v149 = &v120 - v29;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1970, &qword_21CBB22D8);
  v171 = *(v165 - 8);
  MEMORY[0x28223BE20](v165);
  v136 = &v120 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v164 = &v120 - v32;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1978, &qword_21CBB22E0);
  v170 = *(v163 - 8);
  MEMORY[0x28223BE20](v163);
  v148 = &v120 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v162 = &v120 - v35;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1980, &qword_21CBB22E8);
  v169 = *(v161 - 8);
  MEMORY[0x28223BE20](v161);
  v147 = &v120 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v160 = &v120 - v38;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1988, &qword_21CBB22F0);
  v130 = *(v131 - 8);
  MEMORY[0x28223BE20](v131);
  v124 = &v120 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDED250, &qword_21CBA64C0);
  MEMORY[0x28223BE20](v40 - 8);
  v42 = &v120 - v41;
  v43 = type metadata accessor for PMAccount(0);
  MEMORY[0x28223BE20](v43 - 8);
  v45 = &v120 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = sub_21CB80DD4();
  v128 = *(v129 - 8);
  MEMORY[0x28223BE20](v129);
  v122 = &v120 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1990, &qword_21CBB22F8);
  MEMORY[0x28223BE20](v47 - 8);
  v158 = &v120 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v49);
  v159 = &v120 - v50;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1998, &qword_21CBB2300);
  v168 = *(v146 - 8);
  MEMORY[0x28223BE20](v146);
  v145 = &v120 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v53 = MEMORY[0x28223BE20](v52).n128_u64[0];
  v55 = &v120 - v54;
  v56 = a1;
  sub_21CB81DB4();

  v154 = v21;
  if (v173 == 1)
  {
    MEMORY[0x28223BE20](v57);
    *(&v120 - 2) = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF19C8, &qword_21CBB2318);
    sub_21C6EADEC(&qword_27CDF19D0, &qword_27CDF19C8, &qword_21CBB2318, MEMORY[0x277CE14C0]);
    sub_21CB85054();
    swift_getKeyPath(byte_21CBB1610);
    swift_getKeyPath(byte_21CBB1638);
    sub_21CB81DB4();

    PMAccount.creationDateForPasskey.getter(v42);
    sub_21C943938(v45, type metadata accessor for PMAccount);
    v58 = v128;
    v59 = v129;
    v60 = (*(v128 + 48))(v42, 1, v129);
    v123 = v55;
    if (v60 == 1)
    {
      v61 = v55;
      sub_21C6EA794(v42, &unk_27CDED250, &qword_21CBA64C0);
      v62 = (*(v130 + 56))(v159, 1, 1, v131);
      v63 = a1;
    }

    else
    {
      v66 = v122;
      v67 = (*(v58 + 32))(v122, v42, v59);
      MEMORY[0x28223BE20](v67);
      *(&v120 - 2) = a1;
      *(&v120 - 1) = v66;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1A40, &qword_21CBB2358);
      sub_21C6EADEC(&qword_27CDF1A48, &qword_27CDF1A40, &qword_21CBB2358, MEMORY[0x277CE14C0]);
      v68 = v124;
      sub_21CB85054();
      v69 = v130;
      v70 = v159;
      v71 = v68;
      v72 = v131;
      (*(v130 + 32))(v159, v71, v131);
      (*(v69 + 56))(v70, 0, 1, v72);
      v62 = (*(v58 + 8))(v66, v59);
      v63 = v56;
      v61 = v123;
    }

    MEMORY[0x28223BE20](v62);
    *(&v120 - 2) = v63;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF19D8, &qword_21CBB2320);
    v73 = MEMORY[0x277CE14C0];
    sub_21C6EADEC(&qword_27CDF19E0, &qword_27CDF19D8, &qword_21CBB2320, MEMORY[0x277CE14C0]);
    v74 = sub_21CB85054();
    MEMORY[0x28223BE20](v74);
    *(&v120 - 2) = v63;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF19E8, &qword_21CBB2328);
    sub_21C942F5C();
    v75 = sub_21CB85054();
    MEMORY[0x28223BE20](v75);
    *(&v120 - 2) = v63;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1A28, &qword_21CBB2348);
    sub_21C6EADEC(&qword_27CDF1A30, &qword_27CDF1A28, &qword_21CBB2348, v73);
    sub_21CB85054();
    if (sub_21C92FD78())
    {
      v76 = v127;
      sub_21C92FF5C(v127);
      v77 = v149;
      sub_21C716934(v76, v149, &qword_27CDF1860, &qword_21CBB2090);
      v78 = 0;
    }

    else
    {
      v78 = 1;
      v77 = v149;
    }

    (*(v134 + 56))(v77, v78, 1, v135);
    v82 = *(v168 + 16);
    v83 = v145;
    v84 = v146;
    v82(v145, v61, v146);
    sub_21C6EDBAC(v159, v158, &qword_27CDF1990, &qword_21CBB22F8);
    v166 = *(v169 + 16);
    v166(v147, v160, v161);
    v157 = *(v170 + 16);
    (v157)(v148, v162, v163);
    v151 = *(v171 + 16);
    v85 = v136;
    (v151)(v136, v164, v165);
    v86 = v77;
    v87 = v167;
    sub_21C6EDBAC(v86, v167, &qword_27CDF1968, &qword_21CBB22D0);
    v88 = v142;
    v82(v142, v83, v84);
    v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1A38, &qword_21CBB2350);
    sub_21C6EDBAC(v158, v88 + v89[12], &qword_27CDF1990, &qword_21CBB22F8);
    v90 = v147;
    v91 = v161;
    v166((v88 + v89[16]), v147, v161);
    v92 = v148;
    v93 = v163;
    (v157)(v88 + v89[20], v148, v163);
    v94 = v165;
    (v151)(v88 + v89[24], v85, v165);
    sub_21C6EDBAC(v87, v88 + v89[28], &qword_27CDF1968, &qword_21CBB22D0);
    sub_21C6EA794(v87, &qword_27CDF1968, &qword_21CBB22D0);
    v95 = *(v171 + 8);
    v171 += 8;
    v167 = v95;
    (v95)(v85, v94);
    v96 = *(v170 + 8);
    v170 += 8;
    v166 = v96;
    (v96)(v92, v93);
    v97 = *(v169 + 8);
    v169 += 8;
    v97(v90, v91);
    sub_21C6EA794(v158, &qword_27CDF1990, &qword_21CBB22F8);
    v98 = *(v168 + 8);
    v168 += 8;
    v99 = v146;
    v98(v145, v146);
    sub_21C6EDBAC(v88, v154, &qword_27CDF1960, &qword_21CBB22C8);
    swift_storeEnumTagMultiPayload();
    v100 = MEMORY[0x277CE14C0];
    sub_21C6EADEC(&qword_27CDF19B8, &qword_27CDF1960, &qword_21CBB22C8, MEMORY[0x277CE14C0]);
    sub_21C6EADEC(&qword_27CDF19C0, &qword_27CDF1930, &qword_21CBB2298, v100);
    sub_21CB83494();
    sub_21C6EA794(v88, &qword_27CDF1960, &qword_21CBB22C8);
    sub_21C6EA794(v149, &qword_27CDF1968, &qword_21CBB22D0);
    (v167)(v164, v165);
    (v166)(v162, v163);
    v97(v160, v161);
    sub_21C6EA794(v159, &qword_27CDF1990, &qword_21CBB22F8);
    return (v98)(v123, v99);
  }

  v64 = a1 + *(type metadata accessor for PMCombinedAccountDetailsView(0) + 44);
  v65 = *v64;
  if (*(v64 + 8) == 1)
  {
    v172 = *v64;
  }

  else
  {

    sub_21CB85B04();
    v79 = sub_21CB83C94();
    sub_21CB81C14();

    v80 = v125;
    sub_21CB82F74();
    swift_getAtKeyPath();
    sub_21C7025C4(v65, 0);
    (*(v14 + 8))(v80, v126);
    LOBYTE(v65) = v172;
  }

  v81 = v150;
  if (v65 == 1)
  {

    if (sub_21C930630())
    {
LABEL_16:

      v103 = v121;
      sub_21CB7A264(v121);
      sub_21C943454(v103, v81, type metadata accessor for PMSecurityRecommendationPlatter);
      v104 = 0;
      goto LABEL_19;
    }
  }

  else
  {
    v102 = sub_21CB86344();

    if ((v102 & 1) != 0 && sub_21C930630())
    {
      goto LABEL_16;
    }
  }

  v104 = 1;
LABEL_19:
  v105 = 1;
  v106 = (*(v12 + 56))(v81, v104, 1, v132);
  MEMORY[0x28223BE20](v106);
  *(&v120 - 2) = v56;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF19A0, &qword_21CBB2308);
  sub_21C6EADEC(&qword_27CDF19A8, &qword_27CDF19A0, &qword_21CBB2308, MEMORY[0x277CE14C0]);
  sub_21CB85054();
  if ((sub_21C92D6D0() & 1) != 0 && !sub_21C930630())
  {
    v107 = v120;
    sub_21C93291C(v120);
    sub_21C716934(v107, v157, &qword_27CDF1938, &qword_21CBB22A0);
    v105 = 0;
  }

  v108 = v157;
  (*(v138 + 56))(v157, v105, 1, v139);
  v109 = v167;
  sub_21C932F7C(v167);
  v110 = v137;
  sub_21C6EDBAC(v81, v137, &qword_27CDF1950, &qword_21CBB22B8);
  v111 = *(v151 + 16);
  v112 = v140;
  v113 = v143;
  v111(v140, v166, v143);
  v114 = v141;
  sub_21C6EDBAC(v108, v141, &qword_27CDF1940, &qword_21CBB22A8);
  v115 = v133;
  sub_21C6EDBAC(v109, v133, &qword_27CDF1968, &qword_21CBB22D0);
  v116 = v144;
  sub_21C6EDBAC(v110, v144, &qword_27CDF1950, &qword_21CBB22B8);
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF19B0, &qword_21CBB2310);
  v111((v116 + v117[12]), v112, v113);
  sub_21C6EDBAC(v114, v116 + v117[16], &qword_27CDF1940, &qword_21CBB22A8);
  sub_21C6EDBAC(v115, v116 + v117[20], &qword_27CDF1968, &qword_21CBB22D0);
  sub_21C6EA794(v115, &qword_27CDF1968, &qword_21CBB22D0);
  sub_21C6EA794(v114, &qword_27CDF1940, &qword_21CBB22A8);
  v118 = *(v151 + 8);
  v118(v112, v113);
  sub_21C6EA794(v110, &qword_27CDF1950, &qword_21CBB22B8);
  sub_21C6EDBAC(v116, v154, &qword_27CDF1930, &qword_21CBB2298);
  swift_storeEnumTagMultiPayload();
  v119 = MEMORY[0x277CE14C0];
  sub_21C6EADEC(&qword_27CDF19B8, &qword_27CDF1960, &qword_21CBB22C8, MEMORY[0x277CE14C0]);
  sub_21C6EADEC(&qword_27CDF19C0, &qword_27CDF1930, &qword_21CBB2298, v119);
  sub_21CB83494();
  sub_21C6EA794(v116, &qword_27CDF1930, &qword_21CBB2298);
  sub_21C6EA794(v167, &qword_27CDF1968, &qword_21CBB22D0);
  sub_21C6EA794(v157, &qword_27CDF1940, &qword_21CBB22A8);
  v118(v166, v113);
  return sub_21C6EA794(v150, &qword_27CDF1950, &qword_21CBB22B8);
}

uint64_t sub_21C924858@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1BF0, &qword_21CBB2600);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1858, &qword_21CBB1FA8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v16 - v12;
  sub_21C924A48(&v16 - v12);
  sub_21C924F88(v7);
  sub_21C6EDBAC(v13, v10, &qword_27CDF1858, &qword_21CBB1FA8);
  sub_21C6EDBAC(v7, v4, &qword_27CDF1BF0, &qword_21CBB2600);
  sub_21C6EDBAC(v10, a1, &qword_27CDF1858, &qword_21CBB1FA8);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1BF8, &qword_21CBB2608);
  sub_21C6EDBAC(v4, a1 + *(v14 + 48), &qword_27CDF1BF0, &qword_21CBB2600);
  sub_21C6EA794(v7, &qword_27CDF1BF0, &qword_21CBB2600);
  sub_21C6EA794(v13, &qword_27CDF1858, &qword_21CBB1FA8);
  sub_21C6EA794(v4, &qword_27CDF1BF0, &qword_21CBB2600);
  return sub_21C6EA794(v10, &qword_27CDF1858, &qword_21CBB1FA8);
}

uint64_t sub_21C924A48@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v4);
  v6 = (&v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for PMAccount(0);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v12 = MEMORY[0x28223BE20](v11).n128_u64[0];
  v14 = &v50 - v13;
  swift_getKeyPath(byte_21CBB1610, v12);
  swift_getKeyPath(byte_21CBB1638);
  sub_21CB81DB4();

  sub_21C942ED4(&v14[*(v8 + 32)], v6, type metadata accessor for PMAccount.Storage);
  sub_21C943938(v14, type metadata accessor for PMAccount);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C943938(v6, type metadata accessor for PMAccount.Storage);
    goto LABEL_5;
  }

  v15 = *v6;
  v16 = [v15 serviceName];

  if (!v16)
  {
LABEL_5:
    swift_getKeyPath(byte_21CBB1610);
    swift_getKeyPath(byte_21CBB1638);
    sub_21CB81DB4();

    v19 = PMAccount.userVisibleDomain.getter();
    v21 = v20;
    sub_21C943938(v10, type metadata accessor for PMAccount);
    if (v21)
    {
      v53 = v21;
      v54 = v19;
    }

    else
    {
      v53 = 0xE000000000000000;
      v54 = 0;
    }

    goto LABEL_8;
  }

  v17 = sub_21CB855C4();
  v53 = v18;
  v54 = v17;

LABEL_8:
  swift_getKeyPath(byte_21CBB1F38);
  swift_getKeyPath(byte_21CBB1F60);
  sub_21CB81DB4();

  v51 = v59;
  v52 = v58;
  type metadata accessor for PMCombinedAccountDetailsModel(0);
  sub_21C705F40(&qword_27CDEB520, type metadata accessor for PMCombinedAccountDetailsModel, &unk_21CBC08FC);
  sub_21CB82684();
  sub_21CB82694();

  v23 = v58;
  v22 = v59;
  v25 = v60;
  v24 = v61;
  v26 = *MEMORY[0x277D49D48];
  swift_getKeyPath(byte_21CBB1F38);
  swift_getKeyPath(byte_21CBB1F60);
  sub_21CB81DB4();

  v27 = sub_21CB85694();

  if (v27 <= v26)
  {
    v28 = v26;
  }

  else
  {
    v28 = v27;
  }

  v29 = sub_21C91A0A0(v28, v23, v22, v25, v24);
  v31 = v30;
  v33 = v32;
  v50 = v34;

  v35 = sub_21C93C30C();
  v37 = v36;
  sub_21CB81DB4();

  v38 = v58;
  v39 = (v2 + *(type metadata accessor for PMCombinedAccountDetailsView(0) + 60));
  v40 = *v39;
  v41 = *(v39 + 1);
  LOBYTE(v39) = v39[16];
  LOBYTE(v58) = v40;
  v59 = v41;
  LOBYTE(v60) = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1640, &qword_21CBB1A60);
  sub_21CB81F74();
  v42 = v56;
  v43 = v57;
  *(a1 + 88) = v55;
  *(a1 + 96) = v42;
  *(a1 + 104) = v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1858, &qword_21CBB1FA8);
  v45 = *(v44 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB998, &qword_21CBA2700);
  swift_storeEnumTagMultiPayload();
  v46 = v51;
  *a1 = v52;
  *(a1 + 8) = v46;
  v47 = v53;
  *(a1 + 16) = v54;
  *(a1 + 24) = v47;
  *(a1 + 32) = v29;
  *(a1 + 40) = v31;
  v48 = v50;
  *(a1 + 48) = v33;
  *(a1 + 56) = v48;
  *(a1 + 64) = v35;
  *(a1 + 72) = v37;
  *(a1 + 80) = v38;
  return sub_21C93C674(a1 + *(v44 + 76));
}

uint64_t sub_21C924F88@<X0>(uint64_t a1@<X8>)
{
  v125 = a1;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1B78, &qword_21CBBE2D0);
  MEMORY[0x28223BE20](v104);
  v3 = &v98 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1B80, &qword_21CBB2550);
  MEMORY[0x28223BE20](v4 - 8);
  v106 = &v98 - v5;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1C00, &qword_21CBB2610);
  MEMORY[0x28223BE20](v122);
  v105 = &v98 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v107 = &v98 - v8;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1C08, &qword_21CBB2618);
  MEMORY[0x28223BE20](v120);
  v121 = &v98 - v9;
  v111 = type metadata accessor for PMCombinedAccountDetailsView(0);
  v108 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v109 = v10;
  v110 = &v98 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1C10, &qword_21CBB2620);
  v113 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v112 = &v98 - v11;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1C18, &qword_21CBB2628);
  MEMORY[0x28223BE20](v119);
  v114 = &v98 - v12;
  *&v118 = sub_21CB81024();
  v117 = *(v118 - 8);
  MEMORY[0x28223BE20](v118);
  v100 = &v98 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v98 - v15;
  v124 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v124);
  v18 = (&v98 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v19);
  v102 = (&v98 - v20);
  MEMORY[0x28223BE20](v21);
  v23 = (&v98 - v22);
  v123 = type metadata accessor for PMAccount(0);
  MEMORY[0x28223BE20](v123);
  v103 = &v98 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v101 = &v98 - v26;
  MEMORY[0x28223BE20](v27);
  v29 = &v98 - v28;
  *&v31 = MEMORY[0x28223BE20](v30).n128_u64[0];
  v33 = &v98 - v32;
  v115 = v1;
  sub_21CB81DB4();

  if (v134 != 1)
  {
    goto LABEL_5;
  }

  v99 = v18;
  swift_getKeyPath(byte_21CBB1610);
  swift_getKeyPath(byte_21CBB1638);
  sub_21CB81DB4();

  sub_21C942ED4(&v33[*(v123 + 24)], v23, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v34 = *v23;
    v35 = [*v23 userIsNeverSaveMarker];

    sub_21C943938(v33, type metadata accessor for PMAccount);
    v18 = v99;
    if ((v35 & 1) == 0)
    {
      goto LABEL_12;
    }

LABEL_5:
    swift_getKeyPath(byte_21CBB1610);
    swift_getKeyPath(byte_21CBB1638);
    sub_21CB81DB4();

    v36 = PMAccount.userName.getter();
    v38 = v37;
    sub_21C943938(v29, type metadata accessor for PMAccount);
    if (!v38)
    {
      goto LABEL_11;
    }

    v39 = HIBYTE(v38) & 0xF;
    if ((v38 & 0x2000000000000000) == 0)
    {
      v39 = v36 & 0xFFFFFFFFFFFFLL;
    }

    if (!v39)
    {
LABEL_11:
      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1C20, &qword_21CBB2630);
      return (*(*(v50 - 8) + 56))(v125, 1, 1, v50);
    }

    v99 = v18;
    sub_21CB81014();
    v116 = sub_21CB81004();
    v41 = v40;
    v42 = *(v117 + 8);
    v43 = v118;
    v42(v16, v118);
    sub_21CB81014();
    v44 = v100;
    sub_21CB81014();
    v45 = sub_21CB80FF4();
    v47 = v46;
    v42(v44, v43);
    v42(v16, v43);
    swift_getKeyPath(byte_21CBB1610);
    swift_getKeyPath(byte_21CBB1638);
    v48 = v101;
    sub_21CB81DB4();

    v49 = v102;
    sub_21C942ED4(v48 + *(v123 + 24), v102, type metadata accessor for PMAccount.Storage);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_21C943938(v48, type metadata accessor for PMAccount);
      sub_21C943938(v49, type metadata accessor for PMAccount.Storage);
    }

    else
    {
      v74 = *v49;
      v75 = [*v49 userIsNeverSaveMarker];

      sub_21C943938(v48, type metadata accessor for PMAccount);
      if (v75)
      {
        v76 = 0xA300000000000000;
        v77 = 9732322;
LABEL_16:
        LOBYTE(v127) = 0;
        sub_21CB84D44();
        v78 = *(&v134 + 1);
        v3[88] = v134;
        *(v3 + 12) = v78;
        LOBYTE(v127) = 0;
        sub_21CB84D44();
        v79 = *(&v134 + 1);
        v3[104] = v134;
        *(v3 + 14) = v79;
        LOBYTE(v127) = 0;
        sub_21CB84D44();
        v80 = *(&v134 + 1);
        v3[120] = v134;
        *(v3 + 16) = v80;
        LOBYTE(v127) = 0;
        sub_21CB84D44();
        v81 = *(&v134 + 1);
        v3[136] = v134;
        *(v3 + 18) = v81;
        *(v3 + 20) = 0;
        v3[168] = 0;
        v3[184] = 0;
        v82 = v104;
        v83 = *(v104 + 116);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB998, &qword_21CBA2700);
        swift_storeEnumTagMultiPayload();
        v84 = &v3[v82[30]];
        type metadata accessor for PMCombinedAccountDetailsModel(0);
        sub_21C705F40(&qword_27CDEB520, type metadata accessor for PMCombinedAccountDetailsModel, &unk_21CBC08FC);
        *v84 = sub_21CB823C4();
        v84[1] = v85;
        type metadata accessor for PMWiFiDetailsModel(0);
        sub_21C705F40(&qword_27CDEB9B0, type metadata accessor for PMWiFiDetailsModel, &unk_21CBB4D48);
        sub_21CB821F4();
        *&v3[v82[32]] = 0;
        v86 = &v3[v82[33]];
        *v86 = 0x707954656772616CLL;
        *(v86 + 1) = 0xE900000000000065;
        *v3 = v116;
        *(v3 + 1) = v41;
        *(v3 + 2) = v45;
        *(v3 + 3) = v47;
        *(v3 + 4) = v77;
        *(v3 + 5) = v76;
        *(v3 + 6) = 0;
        v3[56] = 1;
        *(v3 + 57) = 0;
        *(v3 + 8) = 0;
        *(v3 + 9) = 0;
        *(v3 + 20) = 257;
        *(v3 + 42) = 256;
        v3[86] = 0;
        sub_21C6EADEC(&qword_27CDF1BD0, &qword_27CDF1B78, &qword_21CBBE2D0, &unk_21CBA2640);
        v87 = v106;
        sub_21CB845C4();
        sub_21C6EA794(v3, &qword_27CDF1B78, &qword_21CBBE2D0);
        swift_getKeyPath(byte_21CBB1610);
        swift_getKeyPath(byte_21CBB1638);
        v88 = v103;
        sub_21CB81DB4();

        v89 = v99;
        sub_21C942ED4(v88 + *(v123 + 24), v99, type metadata accessor for PMAccount.Storage);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_21C943938(v88, type metadata accessor for PMAccount);
          sub_21C943938(v89, type metadata accessor for PMAccount.Storage);
          v90 = 0;
        }

        else
        {
          v91 = *v89;
          v90 = [*v89 userIsNeverSaveMarker];

          sub_21C943938(v88, type metadata accessor for PMAccount);
        }

        KeyPath = swift_getKeyPath(byte_21CBB1938);
        v93 = swift_allocObject();
        *(v93 + 16) = v90;
        v94 = v105;
        sub_21C716934(v87, v105, &qword_27CDF1B80, &qword_21CBB2550);
        v95 = (v94 + *(v122 + 36));
        *v95 = KeyPath;
        v95[1] = sub_21C87E800;
        v95[2] = v93;
        v96 = v107;
        sub_21C716934(v94, v107, &qword_27CDF1C00, &qword_21CBB2610);
        sub_21C6EDBAC(v96, v121, &qword_27CDF1C00, &qword_21CBB2610);
        swift_storeEnumTagMultiPayload();
        sub_21C943998();
        sub_21C943AAC();
        v73 = v125;
        sub_21CB83494();
        sub_21C6EA794(v96, &qword_27CDF1C00, &qword_21CBB2610);
        goto LABEL_20;
      }
    }

    sub_21CB81DB4();

    v76 = *(&v134 + 1);
    v77 = v134;
    goto LABEL_16;
  }

  sub_21C943938(v33, type metadata accessor for PMAccount);
  sub_21C943938(v23, type metadata accessor for PMAccount.Storage);
LABEL_12:
  sub_21CB81014();
  v124 = sub_21CB81004();
  v123 = v52;
  v53 = *(v117 + 8);
  v54 = v118;
  v53(v16, v118);
  sub_21CB81014();
  v55 = sub_21CB81004();
  v57 = v56;
  v53(v16, v54);
  v58 = v115;
  type metadata accessor for PMCombinedAccountDetailsModel(0);
  sub_21C705F40(&qword_27CDEB520, type metadata accessor for PMCombinedAccountDetailsModel, &unk_21CBC08FC);
  sub_21CB82684();
  sub_21CB82694();

  v118 = v134;
  v59 = v135;
  v60 = v110;
  sub_21C942ED4(v58, v110, type metadata accessor for PMCombinedAccountDetailsView);
  v61 = (*(v108 + 80) + 16) & ~*(v108 + 80);
  v62 = swift_allocObject();
  sub_21C943454(v60, v62 + v61, type metadata accessor for PMCombinedAccountDetailsView);
  sub_21CB81DB4();

  v63 = v127;
  v127 = v118;
  v128 = v59;
  *&v129 = v55;
  *(&v129 + 1) = v57;
  *&v130 = v124;
  *(&v130 + 1) = v123;
  v131 = 0uLL;
  *&v132 = sub_21C9440BC;
  *(&v132 + 1) = v62;
  v133 = v63;
  v64 = v58 + *(v111 + 60);
  v65 = *v64;
  v66 = *(v64 + 8);
  LOBYTE(v64) = *(v64 + 16);
  LOBYTE(v134) = v65;
  *(&v134 + 1) = v66;
  LOBYTE(v135) = v64;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1640, &qword_21CBB1A60);
  sub_21CB81F74();
  v126 = 1;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1438, &qword_21CBB14B8);
  v68 = sub_21C853458();
  v69 = sub_21C940D0C();
  v70 = v112;
  sub_21CB84824();

  v138 = v131;
  v139 = v132;
  v140 = v133;
  v134 = v127;
  v135 = v128;
  v136 = v129;
  v137 = v130;
  sub_21C8534AC(&v134);
  *&v127 = &type metadata for PMTextFieldWithSuggestions;
  *(&v127 + 1) = v67;
  *&v128 = v68;
  *(&v128 + 1) = v69;
  swift_getOpaqueTypeConformance2();
  v71 = v114;
  v72 = v116;
  sub_21CB845C4();
  (*(v113 + 8))(v70, v72);
  sub_21C6EDBAC(v71, v121, &qword_27CDF1C18, &qword_21CBB2628);
  swift_storeEnumTagMultiPayload();
  sub_21C943998();
  sub_21C943AAC();
  v73 = v125;
  sub_21CB83494();
  sub_21C6EA794(v71, &qword_27CDF1C18, &qword_21CBB2628);
LABEL_20:
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1C20, &qword_21CBB2630);
  return (*(*(v97 - 8) + 56))(v73, 0, 1, v97);
}

uint64_t sub_21C9263C0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v57 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1A50, &qword_21CBB2360);
  v55 = *(v5 - 8);
  v56 = v5;
  MEMORY[0x28223BE20](v5);
  v44 = &v44 - v6;
  v50 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v50);
  v46 = (&v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v48 = type metadata accessor for PMAccount(0) - 8;
  MEMORY[0x28223BE20](v48);
  v47 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1A58, &qword_21CBB2368);
  MEMORY[0x28223BE20](v9 - 8);
  v54 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v53 = &v44 - v12;
  v45 = sub_21CB83A34();
  v13 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF17F8, &qword_21CBB1EA0);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v44 - v18;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1A60, &qword_21CBB2370);
  v49 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v51 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v44 - v22;
  v59 = a2;
  v58 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1838, &unk_21CBB1F20);
  v24 = sub_21CB839C4();
  v60 = MEMORY[0x277CE0BD8];
  v61 = v24;
  v62 = MEMORY[0x277CE0BC8];
  v63 = MEMORY[0x277CE0758];
  swift_getOpaqueTypeConformance2();
  sub_21CB825D4();
  sub_21CB83A24();
  sub_21C942698();
  v25 = v23;
  sub_21CB844F4();
  (*(v13 + 8))(v15, v45);
  v26 = v46;
  (*(v17 + 8))(v19, v16);
  swift_getKeyPath(byte_21CBB1610);
  swift_getKeyPath(byte_21CBB1638);
  v27 = v47;
  sub_21CB81DB4();

  sub_21C942ED4(v27 + *(v48 + 32), v26, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C943938(v26, type metadata accessor for PMAccount.Storage);
    sub_21C943938(v27, type metadata accessor for PMAccount);
LABEL_5:
    v32 = 1;
    v31 = v53;
    goto LABEL_6;
  }

  v28 = *v26;
  v29 = [v28 credentialTypes];

  sub_21C943938(v27, type metadata accessor for PMAccount);
  if (v29 != 3)
  {
    goto LABEL_5;
  }

  v30 = v44;
  sub_21C926ABC(a1, v44);
  v31 = v53;
  sub_21C716934(v30, v53, &qword_27CDF1A50, &qword_21CBB2360);
  v32 = 0;
LABEL_6:
  (*(v55 + 56))(v31, v32, 1, v56);
  v33 = v49;
  v34 = *(v49 + 16);
  v35 = v51;
  v36 = v25;
  v37 = v25;
  v38 = v52;
  v34(v51, v37, v52);
  v39 = v54;
  sub_21C6EDBAC(v31, v54, &qword_27CDF1A58, &qword_21CBB2368);
  v40 = v57;
  v34(v57, v35, v38);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1A68, &qword_21CBB2378);
  sub_21C6EDBAC(v39, &v40[*(v41 + 48)], &qword_27CDF1A58, &qword_21CBB2368);
  sub_21C6EA794(v31, &qword_27CDF1A58, &qword_21CBB2368);
  v42 = *(v33 + 8);
  v42(v36, v38);
  sub_21C6EA794(v39, &qword_27CDF1A58, &qword_21CBB2368);
  return (v42)(v35, v38);
}

uint64_t sub_21C926ABC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a2;
  v3 = type metadata accessor for PMCombinedAccountDetailsView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE38, &unk_21CBA3770);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v53 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
  v60 = *(v10 - 8);
  v61 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v53 - v11;
  sub_21CB81ED4();
  v13 = sub_21CB81F14();
  (*(*(v13 - 8) + 56))(v9, 0, 1, v13);
  sub_21C942ED4(a1, v6, type metadata accessor for PMCombinedAccountDetailsView);
  v14 = *(v4 + 80);
  v15 = (v14 + 16) & ~v14;
  v57 = v5;
  v56 = v14;
  v16 = swift_allocObject();
  sub_21C943454(v6, v16 + v15, type metadata accessor for PMCombinedAccountDetailsView);
  v59 = v12;
  sub_21CB84D94();
  v55 = sub_21C92765C();
  v54 = v17;
  v58 = a1;
  type metadata accessor for PMCombinedAccountDetailsModel(0);
  sub_21C705F40(&qword_27CDEB520, type metadata accessor for PMCombinedAccountDetailsModel, &unk_21CBC08FC);
  sub_21CB82684();
  swift_getKeyPath(byte_21CBB1BC0);
  sub_21CB82694();

  v19 = v74;
  v18 = v75;
  v20 = v76;
  swift_getKeyPath(byte_21CBB1BE8);
  swift_getKeyPath(byte_21CBB1C10);
  sub_21CB81DB4();

  v63[0] = v71;
  swift_getKeyPath(byte_21CBB1C30, v63);
  v71 = v19;
  v72 = v18;
  v73 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF16F0, &qword_21CBB1C78);
  sub_21CB84F44();

  v21 = v68;
  v22 = v69;
  v23 = v70;

  swift_getKeyPath(byte_21CBB1BC0);
  swift_getKeyPath(byte_21CBB1C80);
  sub_21CB81DB4();

  v24 = v65;
  if (*(v65 + 16) && (v25 = sub_21CB10C54(2), (v26 & 1) != 0))
  {
    v27 = *(*(v24 + 56) + 8 * v25);
    v28 = v27;
  }

  else
  {
    v27 = 0;
  }

  v30 = v54;
  v31 = 0xE100000000000000;
  if (v54)
  {
    v31 = v54;
  }

  v54 = v31;
  v32 = 63;
  if (v30)
  {
    v32 = v55;
  }

  v55 = v32;
  *&v33 = MEMORY[0x28223BE20](v29).n128_u64[0];
  *(&v53 - 2) = v27;
  swift_getKeyPath(byte_21CBB1CA8, v33);
  v65 = v21;
  v66 = v22;
  v67 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1700, &qword_21CBB1CE0);
  sub_21CB84F44();

  v34 = v63[2];
  v53 = v63[3];
  v35 = v64;

  v36 = v58;
  sub_21C942ED4(v58, v6, type metadata accessor for PMCombinedAccountDetailsView);
  v37 = swift_allocObject();
  sub_21C943454(v6, v37 + v15, type metadata accessor for PMCombinedAccountDetailsView);
  sub_21C942ED4(v36, v6, type metadata accessor for PMCombinedAccountDetailsView);
  v38 = swift_allocObject();
  sub_21C943454(v6, v38 + v15, type metadata accessor for PMCombinedAccountDetailsView);
  v39 = swift_allocObject();
  *(v39 + 16) = sub_21C943110;
  *(v39 + 24) = v37;
  v40 = swift_allocObject();
  *(v40 + 16) = sub_21C943128;
  *(v40 + 24) = v38;
  KeyPath = swift_getKeyPath(byte_21CBB15B0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1A70, &qword_21CBB2380);
  v43 = v62;
  v44 = (v62 + *(v42 + 36));
  *v44 = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  swift_storeEnumTagMultiPayload();
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1708, &unk_21CBB1CE8);
  *(v44 + v45[18]) = 0;
  v46 = (v44 + v45[15]);
  v47 = v54;
  *v46 = v55;
  v46[1] = v47;
  v48 = v44 + v45[16];
  v49 = v53;
  *v48 = v34;
  *(v48 + 1) = v49;
  v48[16] = v35;
  *(v44 + v45[17]) = 2;
  *(v44 + v45[19]) = 2;
  v50 = (v44 + v45[20]);
  *v50 = sub_21C9440B4;
  v50[1] = v39;
  v51 = (v44 + v45[21]);
  *v51 = sub_21C9440CC;
  v51[1] = v40;
  return (*(v60 + 32))(v43, v59, v61);
}

uint64_t sub_21C927220(uint64_t a1)
{
  v2 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v2);
  v4 = (&v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v7 = (&v25 - v6);
  v8 = type metadata accessor for PMAccount(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v12 = MEMORY[0x28223BE20](v11).n128_u64[0];
  v14 = &v25 - v13;
  swift_getKeyPath(byte_21CBB1610, v12);
  swift_getKeyPath(byte_21CBB1638);
  v26 = a1;
  if (a1 == 1)
  {
    sub_21CB81DB4();

    sub_21C942ED4(&v14[*(v8 + 24)], v7, type metadata accessor for PMAccount.Storage);
    sub_21C943938(v14, type metadata accessor for PMAccount);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v15 = objc_opt_self();
      v16 = *v7;
      v17 = [v15 configurationForDeleting:1 fromSavedAccount:*v7 isUndoable:1];

      swift_getKeyPath(byte_21CBB1BC0);
      swift_getKeyPath(byte_21CBB1C80);
      v18 = sub_21CB81DA4();
      sub_21C87ED30(v17, 1);
      v18(v27, 0);
      v19 = v26;
LABEL_6:

      swift_getKeyPath(byte_21CBB1BE8);
      swift_getKeyPath(byte_21CBB1C10);
      v27[0] = v19;

      return sub_21CB81DC4();
    }

    sub_21C943938(v7, type metadata accessor for PMAccount.Storage);
    __break(1u);
  }

  else
  {
    sub_21CB81DB4();

    sub_21C942ED4(&v10[*(v8 + 24)], v4, type metadata accessor for PMAccount.Storage);
    sub_21C943938(v10, type metadata accessor for PMAccount);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v20 = objc_opt_self();
      v21 = *v4;
      v19 = v26;
      v22 = [v20 configurationForDeleting:v26 fromSavedAccount:*v4];

      swift_getKeyPath(byte_21CBB1BC0);
      swift_getKeyPath(byte_21CBB1C80);
      v23 = sub_21CB81DA4();
      sub_21C87ED30(v22, v19);
      v23(v27, 0);
      goto LABEL_6;
    }
  }

  result = sub_21C943938(v4, type metadata accessor for PMAccount.Storage);
  __break(1u);
  return result;
}

uint64_t sub_21C92765C()
{
  swift_getKeyPath(byte_21CBB1BE8);
  swift_getKeyPath(byte_21CBB1C10);
  sub_21CB81DB4();

  swift_getKeyPath(byte_21CBB1BC0);
  swift_getKeyPath(byte_21CBB1C80);
  sub_21CB81DB4();

  if (*(v6 + 16) && (v0 = sub_21CB10C54(v6), (v1 & 1) != 0))
  {
    v2 = *(*(v6 + 56) + 8 * v0);

    v3 = [v2 title];

    if (v3)
    {
      v4 = sub_21CB855C4();

      return v4;
    }
  }

  else
  {
  }

  return 0;
}

uint64_t sub_21C92779C@<X0>(void *a2@<X8>)
{
  swift_getKeyPath(byte_21CBB1BC0);
  swift_getKeyPath(byte_21CBB1C80);
  sub_21CB81DB4();

  *a2 = v4;
  return result;
}

uint64_t sub_21C92781C(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath(byte_21CBB1BC0);
  swift_getKeyPath(byte_21CBB1C80);

  return sub_21CB81DC4();
}

uint64_t sub_21C927898(uint64_t *a1)
{
  v1 = *a1;
  sub_21CB86484();
  MEMORY[0x21CF15F90](v1);
  return sub_21CB864D4();
}

unint64_t sub_21C9278E0@<X0>(unint64_t result@<X0>, void *a2@<X8>, uint64_t *a3@<X1>)
{
  v4 = *result;
  if (*(*result + 16) && (result = sub_21CB10C54(*a3), (v5 & 1) != 0))
  {
    v6 = *(*(v4 + 56) + 8 * result);
    result = v6;
  }

  else
  {
    v6 = 0;
  }

  *a2 = v6;
  return result;
}

uint64_t sub_21C927930(void **a1, void **a2)
{
  v2 = *a2;
  v3 = *a1;
  if (*a2)
  {
    if (v3)
    {
      sub_21C6E8F4C(0, &qword_27CDF1720, 0x277CBAA48);
      v4 = v2;
      v5 = v3;
      v6 = sub_21CB85DD4();

      if (v6)
      {
        return 1;
      }
    }
  }

  else if (!v3)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_21C9279BC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF16F8, &qword_21CBB1CA0);
  sub_21C94246C();
  return sub_21CB85E64();
}

void sub_21C927A14(void **a1@<X0>, void **a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  if (*a2)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v9 = 0;
  }

  else
  {
    sub_21C6E8F4C(0, &qword_27CDF1720, 0x277CBAA48);
    v7 = v4;
    v8 = v5;
    v9 = sub_21CB85DD4();
  }

  *a3 = v9 & 1;
}

void sub_21C927AA4(char *a1, void **a2, id *a3)
{
  v4 = *a3;
  v5 = *a1;
  v6 = *a2;
  v7 = *a3;

  if ((v5 & 1) == 0)
  {

    v4 = 0;
  }

  *a2 = v4;
}

uint64_t sub_21C927AFC@<X0>(char *a1@<X8>)
{
  v92 = a1;
  v80 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v80);
  v81 = (&v77 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v78 = type metadata accessor for PMAccount(0);
  MEMORY[0x28223BE20](v78);
  v79 = &v77 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC2B8, &qword_21CBA3EB0);
  MEMORY[0x28223BE20](v3 - 8);
  v91 = &v77 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v97 = &v77 - v6;
  v7 = type metadata accessor for PMCombinedAccountDetailsView(0);
  v86 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8);
  v95 = v8;
  v88 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC948, &qword_21CBA4E30);
  MEMORY[0x28223BE20](v9 - 8);
  v90 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v98 = &v77 - v12;
  v13 = sub_21CB81F14();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE38, &unk_21CBA3770);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v77 - v18;
  v20 = sub_21CB81024();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v77 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
  v94 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v96 = &v77 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v85 = &v77 - v26;
  MEMORY[0x28223BE20](v27);
  v29 = &v77 - v28;
  sub_21CB81014();
  v30 = sub_21CB81004();
  v32 = v31;
  v33 = *(v21 + 8);
  v83 = v21 + 8;
  v84 = v20;
  v82 = v33;
  v33(v23, v20);
  v102 = v30;
  v103 = v32;
  sub_21CB81EF4();
  v100 = v14;
  v101 = v13;
  v34 = *(v14 + 56);
  v34(v19, 0, 1, v13);
  v35 = sub_21C71F3FC();
  v87 = v29;
  sub_21CB84DC4();
  v99 = v16;
  sub_21CB81ED4();
  v36 = v93;
  swift_getKeyPath(byte_21CBB1BE8);
  swift_getKeyPath(byte_21CBB1C10);
  sub_21CB81DB4();

  v37 = v102;
  swift_getKeyPath(byte_21CBB1BC0);
  swift_getKeyPath(byte_21CBB1C80);
  sub_21CB81DB4();

  v38 = v102;
  if (*(v102 + 16) && (v39 = sub_21CB10C54(v37), (v40 & 1) != 0))
  {
    v41 = *(*(v38 + 56) + 8 * v39);

    v42 = [v41 buttonTitle];

    if (v42)
    {
      v43 = sub_21CB855C4();
      v45 = v44;

      goto LABEL_7;
    }
  }

  else
  {
  }

  sub_21CB81014();
  v43 = sub_21CB81004();
  v45 = v46;
  v82(v23, v84);
LABEL_7:
  v102 = v43;
  v103 = v45;
  v47 = v101;
  (*(v100 + 16))(v19, v99, v101);
  v48 = 1;
  v34(v19, 0, 1, v47);
  v49 = v36;
  v50 = v88;
  sub_21C942ED4(v49, v88, type metadata accessor for PMCombinedAccountDetailsView);
  v51 = *(v86 + 80);
  v52 = swift_allocObject();
  sub_21C943454(v50, v52 + ((v51 + 16) & ~v51), type metadata accessor for PMCombinedAccountDetailsView);
  v53 = v85;
  v77 = v35;
  sub_21CB84DC4();
  sub_21C6EADEC(&qword_27CDEBE50, &qword_27CDEBE40, &unk_21CBA8200, MEMORY[0x277CDF028]);
  v54 = v89;
  sub_21CB845C4();
  v55 = v94;
  v85 = *(v94 + 8);
  v86 = v94 + 8;
  (v85)(v53, v54);
  swift_getKeyPath(byte_21CBB1BE8);
  swift_getKeyPath(byte_21CBB1C10);
  sub_21CB81DB4();

  if (v102 == 1)
  {
    swift_getKeyPath(byte_21CBB1610);
    swift_getKeyPath(byte_21CBB1638);
    v56 = v79;
    sub_21CB81DB4();

    v57 = v81;
    sub_21C942ED4(v56 + *(v78 + 24), v81, type metadata accessor for PMAccount.Storage);
    sub_21C943938(v56, type metadata accessor for PMAccount);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_21C943938(v57, type metadata accessor for PMAccount.Storage);
LABEL_13:
      v48 = 1;
      goto LABEL_14;
    }

    v58 = *v57;
    if (![v58 hasValidWebsite])
    {

      goto LABEL_13;
    }

    sub_21CB81014();
    v59 = sub_21CB81004();
    v61 = v60;
    v82(v23, v84);
    v102 = v59;
    v103 = v61;
    sub_21C942ED4(v93, v50, type metadata accessor for PMCombinedAccountDetailsView);
    v55 = v94;
    v62 = swift_allocObject();
    *(v62 + 16) = v58;
    sub_21C943454(v50, v62 + ((v51 + 24) & ~v51), type metadata accessor for PMCombinedAccountDetailsView);
    v63 = v96;
    sub_21CB84DE4();
    (*(v55 + 32))(v97, v63, v54);
    v48 = 0;
  }

LABEL_14:
  v64 = v97;
  (*(v55 + 56))(v97, v48, 1, v54);
  v65 = *(v55 + 16);
  v66 = v96;
  v67 = v87;
  v65(v96, v87, v54);
  v68 = v54;
  v69 = v98;
  v70 = v90;
  sub_21C6EDBAC(v98, v90, &qword_27CDEC948, &qword_21CBA4E30);
  v71 = v91;
  sub_21C6EDBAC(v64, v91, &qword_27CDEC2B8, &qword_21CBA3EB0);
  v72 = v92;
  v65(v92, v66, v68);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1710, &qword_21CBB1CF8);
  sub_21C6EDBAC(v70, &v72[*(v73 + 48)], &qword_27CDEC948, &qword_21CBA4E30);
  sub_21C6EDBAC(v71, &v72[*(v73 + 64)], &qword_27CDEC2B8, &qword_21CBA3EB0);
  sub_21C6EA794(v64, &qword_27CDEC2B8, &qword_21CBA3EB0);
  sub_21C6EA794(v69, &qword_27CDEC948, &qword_21CBA4E30);
  (*(v100 + 8))(v99, v101);
  v74 = v67;
  v75 = v85;
  (v85)(v74, v68);
  sub_21C6EA794(v71, &qword_27CDEC2B8, &qword_21CBA3EB0);
  sub_21C6EA794(v70, &qword_27CDEC948, &qword_21CBA4E30);
  return v75(v66, v68);
}

uint64_t sub_21C928724@<X0>(uint64_t a2@<X8>)
{
  v77 = a2;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1B38, &qword_21CBB2508);
  v66 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v62 = &v60 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1B40, &unk_21CBB2510);
  MEMORY[0x28223BE20](v3 - 8);
  v70 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v69 = &v60 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0638, &qword_21CBAF088);
  MEMORY[0x28223BE20](v7 - 8);
  v67 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v72 = &v60 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1B48, &qword_21CBB2520);
  v75 = *(v11 - 8);
  v76 = v11;
  MEMORY[0x28223BE20](v11);
  v65 = &v60 - v12;
  v71 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v71);
  v64 = (&v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v16 = (&v60 - v15);
  v17 = type metadata accessor for PMAccount(0);
  MEMORY[0x28223BE20](v17);
  v63 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v60 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v60 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1B50, &qword_21CBB2528);
  MEMORY[0x28223BE20](v25 - 8);
  v74 = &v60 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v29 = &v60 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1B58, &qword_21CBB2530);
  MEMORY[0x28223BE20](v30 - 8);
  v73 = &v60 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v34 = &v60 - v33;
  sub_21C929058(&v60 - v33);
  swift_getKeyPath(byte_21CBB1610);
  swift_getKeyPath(byte_21CBB1638);
  sub_21CB81DB4();

  PMAccount.password.getter();
  v36 = v35;
  sub_21C943938(v24, type metadata accessor for PMAccount);
  if (!v36)
  {
    goto LABEL_10;
  }

  if ((sub_21C92D6D0() & 1) == 0)
  {
    goto LABEL_6;
  }

  swift_getKeyPath(byte_21CBB1610);
  swift_getKeyPath(byte_21CBB1638);
  sub_21CB81DB4();

  sub_21C942ED4(&v21[*(v17 + 24)], v16, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C943938(v21, type metadata accessor for PMAccount);
    sub_21C943938(v16, type metadata accessor for PMAccount.Storage);
    goto LABEL_6;
  }

  v37 = *v16;
  v38 = [*v16 credentialTypes];

  sub_21C943938(v21, type metadata accessor for PMAccount);
  if ((v38 & 2) == 0)
  {
LABEL_6:
    if (sub_21C92AB18())
    {
      goto LABEL_7;
    }

LABEL_10:
    v45 = 1;
    goto LABEL_13;
  }

LABEL_7:
  sub_21C92AE28(v72);
  v39 = sub_21C92D6D0();
  v61 = v34;
  if (v39)
  {
    swift_getKeyPath(byte_21CBB1610);
    swift_getKeyPath(byte_21CBB1638);
    v40 = v63;
    sub_21CB81DB4();

    v41 = v64;
    sub_21C942ED4(v40 + *(v17 + 24), v64, type metadata accessor for PMAccount.Storage);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v43 = v69;
    if (EnumCaseMultiPayload == 1)
    {
      sub_21C943938(v40, type metadata accessor for PMAccount);
      sub_21C943938(v41, type metadata accessor for PMAccount.Storage);
      v44 = 1;
    }

    else
    {
      v57 = *v41;
      v58 = [v57 credentialTypes];

      sub_21C943938(v40, type metadata accessor for PMAccount);
      if ((v58 & 2) != 0)
      {
        v59 = v62;
        sub_21C92AFF0(v62);
        sub_21C716934(v59, v43, &qword_27CDF1B38, &qword_21CBB2508);
        v44 = 0;
      }

      else
      {
        v44 = 1;
      }
    }
  }

  else
  {
    v44 = 1;
    v43 = v69;
  }

  (*(v66 + 56))(v43, v44, 1, v68);
  v46 = v72;
  v47 = v67;
  sub_21C6EDBAC(v72, v67, &qword_27CDF0638, &qword_21CBAF088);
  v48 = v70;
  sub_21C6EDBAC(v43, v70, &qword_27CDF1B40, &unk_21CBB2510);
  v49 = v43;
  v50 = v65;
  sub_21C6EDBAC(v47, v65, &qword_27CDF0638, &qword_21CBAF088);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1B68, &unk_21CBB2540);
  sub_21C6EDBAC(v48, v50 + *(v51 + 48), &qword_27CDF1B40, &unk_21CBB2510);
  sub_21C6EA794(v49, &qword_27CDF1B40, &unk_21CBB2510);
  sub_21C6EA794(v46, &qword_27CDF0638, &qword_21CBAF088);
  sub_21C6EA794(v48, &qword_27CDF1B40, &unk_21CBB2510);
  sub_21C6EA794(v47, &qword_27CDF0638, &qword_21CBAF088);
  sub_21C716934(v50, v29, &qword_27CDF1B48, &qword_21CBB2520);
  v45 = 0;
  v34 = v61;
LABEL_13:
  (*(v75 + 56))(v29, v45, 1, v76);
  v52 = v73;
  sub_21C6EDBAC(v34, v73, &qword_27CDF1B58, &qword_21CBB2530);
  v53 = v74;
  sub_21C6EDBAC(v29, v74, &qword_27CDF1B50, &qword_21CBB2528);
  v54 = v77;
  sub_21C6EDBAC(v52, v77, &qword_27CDF1B58, &qword_21CBB2530);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1B60, &qword_21CBB2538);
  sub_21C6EDBAC(v53, v54 + *(v55 + 48), &qword_27CDF1B50, &qword_21CBB2528);
  sub_21C6EA794(v29, &qword_27CDF1B50, &qword_21CBB2528);
  sub_21C6EA794(v34, &qword_27CDF1B58, &qword_21CBB2530);
  sub_21C6EA794(v53, &qword_27CDF1B50, &qword_21CBB2528);
  return sub_21C6EA794(v52, &qword_27CDF1B58, &qword_21CBB2530);
}

uint64_t sub_21C929058@<X0>(uint64_t a1@<X8>)
{
  v174 = a1;
  *&v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1B78, &qword_21CBBE2D0);
  MEMORY[0x28223BE20](v164);
  v140 = &v138 - v2;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1B80, &qword_21CBB2550);
  v153 = *(v155 - 8);
  MEMORY[0x28223BE20](v155);
  v139 = &v138 - v3;
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1B88, &qword_21CBB2558);
  MEMORY[0x28223BE20](v173);
  v154 = &v138 - v4;
  v145 = type metadata accessor for PMCombinedAccountDetailsView(0);
  v142 = *(v145 - 8);
  MEMORY[0x28223BE20](v145);
  v143 = v5;
  v144 = &v138 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = type metadata accessor for PMPasswordField(0);
  MEMORY[0x28223BE20](v148);
  v146 = &v138 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1B90, &qword_21CBB2560);
  v149 = *(v150 - 8);
  MEMORY[0x28223BE20](v150);
  v147 = &v138 - v7;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1B98, &qword_21CBB2568);
  MEMORY[0x28223BE20](v169);
  v152 = &v138 - v8;
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1BA0, &qword_21CBB2570);
  MEMORY[0x28223BE20](v171);
  v172 = &v138 - v9;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1BA8, &qword_21CBB2578);
  MEMORY[0x28223BE20](v166);
  v167 = &v138 - v10;
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1BB0, &unk_21CBB2580);
  MEMORY[0x28223BE20](v170);
  v168 = &v138 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBB58, &qword_21CBAF8A0);
  MEMORY[0x28223BE20](v12 - 8);
  v161 = &v138 - v13;
  v163 = sub_21CB83ED4();
  v162 = *(v163 - 8);
  MEMORY[0x28223BE20](v163);
  v160 = &v138 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = sub_21CB81024();
  v158 = *(v159 - 8);
  MEMORY[0x28223BE20](v159);
  v156 = &v138 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v157 = &v138 - v17;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1BB8, &qword_21CBBE2B0);
  MEMORY[0x28223BE20](v165);
  v19 = &v138 - v18;
  v20 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v20);
  v22 = (&v138 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = type metadata accessor for PMAccount(0);
  v24 = v23 - 8;
  MEMORY[0x28223BE20](v23);
  v26 = &v138 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v141 = &v138 - v28;
  *&v30 = MEMORY[0x28223BE20](v29).n128_u64[0];
  v32 = &v138 - v31;
  v151 = v1;
  swift_getKeyPath(byte_21CBB1610, v30);
  swift_getKeyPath(byte_21CBB1638);
  sub_21CB81DB4();

  sub_21C942ED4(&v32[*(v24 + 32)], v22, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C943938(v32, type metadata accessor for PMAccount);
    sub_21C943938(v22, type metadata accessor for PMAccount.Storage);
  }

  else
  {
    v33 = *v22;
    v34 = [*v22 userIsNeverSaveMarker];

    sub_21C943938(v32, type metadata accessor for PMAccount);
    if (v34)
    {
      v35 = v157;
      sub_21CB81014();
      v155 = sub_21CB81004();
      v154 = v36;
      v37 = *(v158 + 8);
      v38 = v159;
      v37(v35, v159);
      sub_21CB81014();
      v39 = v156;
      sub_21CB81014();
      v158 = sub_21CB80FF4();
      v153 = v40;
      v37(v39, v38);
      v37(v35, v38);
      sub_21CB81014();
      v41 = sub_21CB81004();
      v43 = v42;
      v37(v35, v38);
      v44 = v162;
      v45 = v160;
      v46 = v163;
      (*(v162 + 104))(v160, *MEMORY[0x277CE0A68], v163);
      v47 = *MEMORY[0x277CE0980];
      v48 = sub_21CB83DC4();
      v49 = *(v48 - 8);
      v50 = v161;
      (*(v49 + 104))(v161, v47, v48);
      (*(v49 + 56))(v50, 0, 1, v48);
      v51 = sub_21CB83E24();
      sub_21C6EA794(v50, &qword_27CDEBB58, &qword_21CBAF8A0);
      (*(v44 + 8))(v45, v46);
      LOBYTE(v177) = 0;
      sub_21CB84D44();
      v52 = *(&v179 + 1);
      v19[88] = v179;
      *(v19 + 12) = v52;
      LOBYTE(v177) = 0;
      sub_21CB84D44();
      v53 = *(&v179 + 1);
      v19[104] = v179;
      *(v19 + 14) = v53;
      LOBYTE(v177) = 0;
      sub_21CB84D44();
      v54 = *(&v179 + 1);
      v19[120] = v179;
      *(v19 + 16) = v54;
      LOBYTE(v177) = 0;
      sub_21CB84D44();
      v55 = *(&v179 + 1);
      v19[136] = v179;
      *(v19 + 18) = v55;
      *(v19 + 20) = 0;
      v19[168] = 0;
      v19[184] = 0;
      v56 = v164;
      v57 = *(v164 + 116);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB998, &qword_21CBA2700);
      swift_storeEnumTagMultiPayload();
      v58 = &v19[v56[30]];
      type metadata accessor for PMCombinedAccountDetailsModel(0);
      sub_21C705F40(&qword_27CDEB520, type metadata accessor for PMCombinedAccountDetailsModel, &unk_21CBC08FC);
      *v58 = sub_21CB823C4();
      v58[1] = v59;
      type metadata accessor for PMWiFiDetailsModel(0);
      sub_21C705F40(&qword_27CDEB9B0, type metadata accessor for PMWiFiDetailsModel, &unk_21CBB4D48);
      sub_21CB821F4();
      *&v19[v56[32]] = 0;
      v60 = &v19[v56[33]];
      *v60 = 0x707954656772616CLL;
      *(v60 + 1) = 0xE900000000000065;
      v61 = v154;
      *v19 = v155;
      *(v19 + 1) = v61;
      v62 = v153;
      *(v19 + 2) = v158;
      *(v19 + 3) = v62;
      *(v19 + 4) = v41;
      *(v19 + 5) = v43;
      *(v19 + 6) = v51;
      v19[56] = 1;
      *(v19 + 57) = 0;
      *(v19 + 8) = 0;
      *(v19 + 9) = 0;
      *(v19 + 20) = 257;
      *(v19 + 42) = 256;
      v19[86] = 0;
      KeyPath = swift_getKeyPath(byte_21CBB1938);
      v64 = swift_allocObject();
      *(v64 + 16) = 1;
      v65 = &v19[*(v165 + 36)];
      *v65 = KeyPath;
      v65[1] = sub_21C87E800;
      v65[2] = v64;
      sub_21C6EDBAC(v19, v167, &qword_27CDF1BB8, &qword_21CBBE2B0);
      swift_storeEnumTagMultiPayload();
      sub_21C943548();
      sub_21C94362C();
      v66 = v168;
      sub_21CB83494();
      sub_21C6EDBAC(v66, v172, &qword_27CDF1BB0, &unk_21CBB2580);
      swift_storeEnumTagMultiPayload();
      sub_21C9434BC();
      sub_21C943774();
      sub_21CB83494();
      sub_21C6EA794(v66, &qword_27CDF1BB0, &unk_21CBB2580);
      v67 = v19;
      v68 = &qword_27CDF1BB8;
      v69 = &qword_21CBBE2B0;
      return sub_21C6EA794(v67, v68, v69);
    }
  }

  sub_21CB81DB4();

  if (v179 != 1)
  {
    swift_getKeyPath(byte_21CBB1610);
    swift_getKeyPath(byte_21CBB1638);
    sub_21CB81DB4();

    PMAccount.password.getter();
    v105 = v104;
    sub_21C943938(v26, type metadata accessor for PMAccount);
    if (v105)
    {

      swift_getKeyPath(byte_21CBB1E18);
      swift_getKeyPath(byte_21CBB1E40);
      sub_21CB81DB4();

      LODWORD(v169) = v179;
      v106 = v157;
      sub_21CB81014();
      v107 = sub_21CB81004();
      v167 = v108;
      v168 = v107;
      v109 = *(v158 + 8);
      v110 = v159;
      v109(v106, v159);
      sub_21CB81014();
      v111 = v156;
      sub_21CB81014();
      v112 = sub_21CB80FF4();
      v166 = v113;
      v109(v111, v110);
      v109(v106, v110);
      swift_getKeyPath(byte_21CBB2590);
      swift_getKeyPath(byte_21CBB25B8);
      sub_21CB81DB4();

      v114 = v179;
      v115 = v162;
      v116 = v160;
      v117 = v163;
      (*(v162 + 104))(v160, *MEMORY[0x277CE0A68], v163);
      v118 = *MEMORY[0x277CE0980];
      v119 = sub_21CB83DC4();
      v120 = *(v119 - 8);
      v121 = v161;
      (*(v120 + 104))(v161, v118, v119);
      (*(v120 + 56))(v121, 0, 1, v119);
      v122 = sub_21CB83E24();
      sub_21C6EA794(v121, &qword_27CDEBB58, &qword_21CBAF8A0);
      (*(v115 + 8))(v116, v117);
      LOBYTE(v177) = 0;
      sub_21CB84D44();
      v123 = *(&v179 + 1);
      v124 = v140;
      v140[88] = v179;
      *(v124 + 96) = v123;
      LOBYTE(v177) = 0;
      sub_21CB84D44();
      v125 = *(&v179 + 1);
      *(v124 + 104) = v179;
      *(v124 + 112) = v125;
      LOBYTE(v177) = 0;
      sub_21CB84D44();
      v126 = *(&v179 + 1);
      *(v124 + 120) = v179;
      *(v124 + 128) = v126;
      LOBYTE(v177) = 0;
      sub_21CB84D44();
      v127 = *(&v179 + 1);
      *(v124 + 136) = v179;
      *(v124 + 144) = v127;
      *(v124 + 160) = 0;
      *(v124 + 168) = 0;
      *(v124 + 184) = 0;
      v128 = v164;
      v129 = *(v164 + 116);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB998, &qword_21CBA2700);
      swift_storeEnumTagMultiPayload();
      v130 = (v124 + v128[30]);
      type metadata accessor for PMCombinedAccountDetailsModel(0);
      sub_21C705F40(&qword_27CDEB520, type metadata accessor for PMCombinedAccountDetailsModel, &unk_21CBC08FC);
      *v130 = sub_21CB823C4();
      v130[1] = v131;
      type metadata accessor for PMWiFiDetailsModel(0);
      sub_21C705F40(&qword_27CDEB9B0, type metadata accessor for PMWiFiDetailsModel, &unk_21CBB4D48);
      sub_21CB821F4();
      *(v124 + v128[32]) = 0;
      v132 = (v124 + v128[33]);
      *v132 = 0x707954656772616CLL;
      v132[1] = 0xE900000000000065;
      v133 = v167;
      *v124 = v168;
      *(v124 + 8) = v133;
      v134 = v166;
      *(v124 + 16) = v112;
      *(v124 + 24) = v134;
      *(v124 + 32) = v114;
      *(v124 + 48) = v122;
      *(v124 + 56) = 257;
      *(v124 + 58) = v169;
      *(v124 + 64) = 0;
      *(v124 + 72) = 0;
      *(v124 + 80) = 257;
      *(v124 + 84) = 256;
      *(v124 + 86) = 0;
      sub_21C6EADEC(&qword_27CDF1BD0, &qword_27CDF1B78, &qword_21CBBE2D0, &unk_21CBA2640);
      v135 = v139;
      sub_21CB845C4();
      sub_21C6EA794(v124, &qword_27CDF1B78, &qword_21CBBE2D0);
      v136 = v154;
      sub_21C716934(v135, v154, &qword_27CDF1B80, &qword_21CBB2550);
      v137 = 0;
    }

    else
    {
      v137 = 1;
      v136 = v154;
    }

    (*(v153 + 56))(v136, v137, 1, v155);
    sub_21C6EDBAC(v136, v172, &qword_27CDF1B88, &qword_21CBB2558);
    swift_storeEnumTagMultiPayload();
    sub_21C9434BC();
    sub_21C943774();
    sub_21CB83494();
    v67 = v136;
    v68 = &qword_27CDF1B88;
    v69 = &qword_21CBB2558;
    return sub_21C6EA794(v67, v68, v69);
  }

  v70 = v151;
  type metadata accessor for PMCombinedAccountDetailsModel(0);
  sub_21C705F40(&qword_27CDEB520, type metadata accessor for PMCombinedAccountDetailsModel, &unk_21CBC08FC);
  sub_21CB82684();
  swift_getKeyPath(byte_21CBB25D8);
  sub_21CB82694();

  v164 = v179;
  v163 = v180;
  v162 = v181;
  sub_21CB81DB4();

  LODWORD(v161) = v177;
  sub_21CB81DB4();

  v71 = v177;
  swift_getKeyPath(byte_21CBB1610);
  swift_getKeyPath(byte_21CBB1638);
  v72 = v141;
  sub_21CB81DB4();

  v73 = PMAccount.userVisibleDomain.getter();
  v75 = v74;
  sub_21C943938(v72, type metadata accessor for PMAccount);
  if (v75)
  {
    v76 = v73;
  }

  else
  {
    v76 = 0;
  }

  if (v75)
  {
    v77 = v75;
  }

  else
  {
    v77 = 0xE000000000000000;
  }

  v78 = v144;
  sub_21C942ED4(v70, v144, type metadata accessor for PMCombinedAccountDetailsView);
  v79 = (*(v142 + 80) + 16) & ~*(v142 + 80);
  v80 = swift_allocObject();
  sub_21C943454(v78, v80 + v79, type metadata accessor for PMCombinedAccountDetailsView);
  v81 = v148;
  v82 = *(v148 + 44);
  v84 = v146;
  *&v146[v82] = v83;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB998, &qword_21CBA2700);
  swift_storeEnumTagMultiPayload();
  v85 = v81[12];
  *(v84 + v85) = swift_getKeyPath(byte_21CBB1FF0);
  v86 = v84 + v81[13];
  LOBYTE(v175) = 0;
  sub_21CB84D44();
  v87 = *(&v177 + 1);
  *v86 = v177;
  *(v86 + 8) = v87;
  v88 = v84 + v81[14];
  v175 = 0;
  v176 = 0xE000000000000000;
  sub_21CB84D44();
  v89 = v178;
  *v88 = v177;
  *(v88 + 16) = v89;
  v90 = v84 + v81[15];
  v175 = 0;
  v176 = 0xE000000000000000;
  sub_21CB84D44();
  v91 = v178;
  *v90 = v177;
  *(v90 + 16) = v91;
  *v84 = v164;
  v92 = v162;
  *(v84 + 16) = v163;
  *(v84 + 24) = v92;
  *(v84 + 32) = v161;
  *(v84 + 33) = 0;
  *(v84 + 34) = v71;
  *(v84 + 35) = 0;
  *(v84 + 40) = v76;
  *(v84 + 48) = v77;
  *(v84 + 56) = sub_21C9438E0;
  *(v84 + 64) = v80;
  v93 = v70 + *(v145 + 60);
  v94 = *v93;
  v95 = *(v93 + 8);
  LOBYTE(v93) = *(v93 + 16);
  LOBYTE(v179) = v94;
  *(&v179 + 1) = v95;
  LOBYTE(v180) = v93;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1640, &qword_21CBB1A60);
  sub_21CB81F74();
  v179 = v177;
  LOBYTE(v180) = v178;
  LOBYTE(v177) = 2;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1438, &qword_21CBB14B8);
  v97 = sub_21C705F40(&qword_27CDEDFB8, type metadata accessor for PMPasswordField, &unk_21CBC49E8);
  v98 = sub_21C940D0C();
  v99 = v147;
  sub_21CB84824();

  sub_21C943938(v84, type metadata accessor for PMPasswordField);
  *&v179 = v81;
  *(&v179 + 1) = v96;
  v180 = v97;
  v181 = v98;
  swift_getOpaqueTypeConformance2();
  v100 = v152;
  v101 = v150;
  sub_21CB845C4();
  (*(v149 + 8))(v99, v101);
  sub_21C6EDBAC(v100, v167, &qword_27CDF1B98, &qword_21CBB2568);
  swift_storeEnumTagMultiPayload();
  sub_21C943548();
  sub_21C94362C();
  v102 = v168;
  sub_21CB83494();
  sub_21C6EDBAC(v102, v172, &qword_27CDF1BB0, &unk_21CBB2580);
  swift_storeEnumTagMultiPayload();
  sub_21C9434BC();
  sub_21C943774();
  sub_21CB83494();
  sub_21C6EA794(v102, &qword_27CDF1BB0, &unk_21CBB2580);
  return sub_21C6EA794(v100, &qword_27CDF1B98, &qword_21CBB2568);
}

id sub_21C92AB18()
{
  v0 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v0);
  v2 = (&v18 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v3);
  v5 = (&v18 - v4);
  v6 = type metadata accessor for PMAccount(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v10 = MEMORY[0x28223BE20](v9).n128_u64[0];
  v12 = &v18 - v11;
  swift_getKeyPath(byte_21CBB1610, v10);
  swift_getKeyPath(byte_21CBB1638);
  sub_21CB81DB4();

  sub_21C942ED4(&v12[*(v6 + 24)], v5, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C943938(v12, type metadata accessor for PMAccount);
    sub_21C943938(v5, type metadata accessor for PMAccount.Storage);
  }

  else
  {
    v13 = *v5;
    v14 = [*v5 userIsNeverSaveMarker];

    sub_21C943938(v12, type metadata accessor for PMAccount);
    if (v14)
    {
      return 0;
    }
  }

  swift_getKeyPath(byte_21CBB1610);
  swift_getKeyPath(byte_21CBB1638);
  sub_21CB81DB4();

  sub_21C942ED4(&v8[*(v6 + 24)], v2, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21C943938(v8, type metadata accessor for PMAccount);
    sub_21C943938(v2, type metadata accessor for PMAccount.Storage);
    return 0;
  }

  else
  {
    v16 = *v2;
    v17 = [v16 hasValidWebsite];

    sub_21C943938(v8, type metadata accessor for PMAccount);
    return v17;
  }
}

uint64_t sub_21C92AE28@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for PMChangePasswordOnWebsiteLink(0);
  v10 = *(v2 - 1);
  MEMORY[0x28223BE20](v2);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_21C92AB18())
  {
    swift_getKeyPath(byte_21CBB1610);
    swift_getKeyPath(byte_21CBB1638);
    sub_21CB81DB4();

    *v4 = swift_getKeyPath(byte_21CBB1348);
    *(v4 + 1) = 0;
    v4[16] = 0;
    v5 = &v4[v2[7]];
    v6 = &v4[v2[9]];
    v4[v2[6]] = 0;
    *v5 = 0;
    *(v5 + 1) = 0;
    v4[v2[8]] = 0;
    *v6 = 0;
    *(v6 + 1) = 0;
    sub_21C943454(v4, a1, type metadata accessor for PMChangePasswordOnWebsiteLink);
    return (*(v10 + 56))(a1, 0, 1, v2);
  }

  else
  {
    v8 = *(v10 + 56);

    return v8(a1, 1, 1, v2);
  }
}

uint64_t sub_21C92AFF0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v57 = a1;
  v3 = type metadata accessor for PMCombinedAccountDetailsView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1B70, &unk_21CBC2090);
  v55 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v8 = &v48 - v7;
  sub_21C942ED4(v2, v6, type metadata accessor for PMCombinedAccountDetailsView);
  v9 = *(v4 + 80);
  v10 = (v9 + 16) & ~v9;
  v53 = v5;
  v51 = v9;
  v11 = swift_allocObject();
  v52 = v10;
  sub_21C943454(v6, v11 + v10, type metadata accessor for PMCombinedAccountDetailsView);
  v59 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC150, &unk_21CBA4F60);
  sub_21C943E28(&qword_27CDEC148, &qword_27CDEC150, &unk_21CBA4F60, MEMORY[0x277CE0340]);
  v54 = v8;
  sub_21CB84DA4();
  v50 = sub_21C92765C();
  v49 = v12;
  type metadata accessor for PMCombinedAccountDetailsModel(0);
  sub_21C705F40(&qword_27CDEB520, type metadata accessor for PMCombinedAccountDetailsModel, &unk_21CBC08FC);
  sub_21CB82684();
  swift_getKeyPath(byte_21CBB1BC0);
  sub_21CB82694();

  v14 = v72;
  v13 = v73;
  v15 = v74;
  swift_getKeyPath(byte_21CBB1BE8);
  swift_getKeyPath(byte_21CBB1C10);
  sub_21CB81DB4();

  v58 = v69;
  swift_getKeyPath(byte_21CBB1C30, &v58);
  v69 = v14;
  v70 = v13;
  v71 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF16F0, &qword_21CBB1C78);
  sub_21CB84F44();

  v16 = v66;
  v17 = v67;
  v18 = v68;

  swift_getKeyPath(byte_21CBB1BC0);
  swift_getKeyPath(byte_21CBB1C80);
  sub_21CB81DB4();

  v19 = v63;
  if (*(v63 + 16) && (v20 = sub_21CB10C54(0), (v21 & 1) != 0))
  {
    v22 = *(*(v19 + 56) + 8 * v20);
    v23 = v22;
  }

  else
  {
    v22 = 0;
  }

  v25 = v49;
  v26 = 0xE100000000000000;
  if (v49)
  {
    v26 = v49;
  }

  v49 = v26;
  v27 = 63;
  if (v25)
  {
    v27 = v50;
  }

  v50 = v27;
  *&v28 = MEMORY[0x28223BE20](v24).n128_u64[0];
  *(&v48 - 2) = v22;
  swift_getKeyPath(byte_21CBB1CA8, v28);
  v63 = v16;
  v64 = v17;
  v65 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1700, &qword_21CBB1CE0);
  sub_21CB84F44();

  v29 = v60;
  v48 = v61;
  v30 = v62;

  sub_21C942ED4(v2, v6, type metadata accessor for PMCombinedAccountDetailsView);
  v31 = v52;
  v32 = swift_allocObject();
  sub_21C943454(v6, v32 + v31, type metadata accessor for PMCombinedAccountDetailsView);
  sub_21C942ED4(v2, v6, type metadata accessor for PMCombinedAccountDetailsView);
  v33 = swift_allocObject();
  sub_21C943454(v6, v33 + v31, type metadata accessor for PMCombinedAccountDetailsView);
  v34 = swift_allocObject();
  *(v34 + 16) = sub_21C9440C4;
  *(v34 + 24) = v32;
  v35 = swift_allocObject();
  *(v35 + 16) = sub_21C9440C8;
  *(v35 + 24) = v33;
  KeyPath = swift_getKeyPath(byte_21CBB15B0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1B38, &qword_21CBB2508);
  v38 = v57;
  v39 = (v57 + *(v37 + 36));
  *v39 = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  swift_storeEnumTagMultiPayload();
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1708, &unk_21CBB1CE8);
  *(v39 + v40[18]) = 0;
  v41 = (v39 + v40[15]);
  v42 = v49;
  *v41 = v50;
  v41[1] = v42;
  v43 = v39 + v40[16];
  v44 = v48;
  *v43 = v29;
  *(v43 + 1) = v44;
  v43[16] = v30;
  *(v39 + v40[17]) = 2;
  *(v39 + v40[19]) = 2;
  v45 = (v39 + v40[20]);
  *v45 = sub_21C9440B4;
  v45[1] = v34;
  v46 = (v39 + v40[21]);
  *v46 = sub_21C9440CC;
  v46[1] = v35;
  return (*(v55 + 32))(v38, v54, v56);
}

uint64_t sub_21C92B728@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1A20, &qword_21CBB2340);
  MEMORY[0x28223BE20](v58);
  v48 = &v47 - v3;
  v50 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v50);
  v49 = (&v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1AB0, &qword_21CBB23B8);
  MEMORY[0x28223BE20](v55);
  v57 = &v47 - v5;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1A10, &qword_21CBB2338);
  MEMORY[0x28223BE20](v56);
  v52 = (&v47 - v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1AB8, &qword_21CBB23C0);
  MEMORY[0x28223BE20](v7 - 8);
  v53 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v54 = &v47 - v10;
  v11 = type metadata accessor for PMCombinedAccountDetailsView(0);
  v51 = *(v11 - 8);
  v12 = *(v51 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = type metadata accessor for PMAccount(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v47 - v17;
  *&v20 = MEMORY[0x28223BE20](v19).n128_u64[0];
  v22 = &v47 - v21;
  sub_21CB81DB4();

  v23 = v60;
  if (!v60)
  {
    v37 = v49;
    v54 = a1;
    v36 = v59;
    swift_getKeyPath(byte_21CBB1610);
    swift_getKeyPath(byte_21CBB1638);
    sub_21CB81DB4();

    PMAccount.password.getter();
    v39 = v38;
    sub_21C943938(v22, type metadata accessor for PMAccount);
    if (v39)
    {

      swift_getKeyPath(byte_21CBB1610);
      swift_getKeyPath(byte_21CBB1638);
      sub_21CB81DB4();

      sub_21C942ED4(&v15[*(v13 + 24)], v37, type metadata accessor for PMAccount.Storage);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_21C943938(v15, type metadata accessor for PMAccount);
        sub_21C943938(v37, type metadata accessor for PMAccount.Storage);
        v40 = v57;
        v41 = v48;
LABEL_8:
        sub_21C92C9A0(v41);
        sub_21C6EDBAC(v41, v40, &qword_27CDF1A20, &qword_21CBB2340);
        swift_storeEnumTagMultiPayload();
        v44 = MEMORY[0x277CE14C0];
        sub_21C6EADEC(&qword_27CDF1A08, &qword_27CDF1A10, &qword_21CBB2338, MEMORY[0x277CE14C0]);
        sub_21C6EADEC(&qword_27CDF1A18, &qword_27CDF1A20, &qword_21CBB2340, v44);
        sub_21CB83494();
        sub_21C6EA794(v41, &qword_27CDF1A20, &qword_21CBB2340);
        v35 = 0;
        goto LABEL_9;
      }

      v42 = *v37;
      v43 = [*v37 userIsNeverSaveMarker];

      sub_21C943938(v15, type metadata accessor for PMAccount);
      v40 = v57;
      v41 = v48;
      if ((v43 & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    v35 = 1;
    goto LABEL_9;
  }

  swift_getKeyPath(byte_21CBB1610);
  swift_getKeyPath(byte_21CBB1638);
  sub_21CB81DB4();

  sub_21C943938(v18, type metadata accessor for PMAccount);
  sub_21C942ED4(a1, &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMCombinedAccountDetailsView);
  v24 = (*(v51 + 80) + 16) & ~*(v51 + 80);
  v25 = swift_allocObject();
  sub_21C943454(&v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v24, type metadata accessor for PMCombinedAccountDetailsView);
  v26 = v23;
  v27 = v54;
  sub_21C92BFAC(v26, v54);
  v28 = v53;
  sub_21C6EDBAC(v27, v53, &qword_27CDF1AB8, &qword_21CBB23C0);
  v29 = v52;
  *v52 = v26;
  *(v29 + 8) = sub_21C9431E4;
  *(v29 + 16) = v25;
  *(v29 + 24) = 0;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1AC0, &qword_21CBB23C8);
  sub_21C6EDBAC(v28, v29 + *(v30 + 48), &qword_27CDF1AB8, &qword_21CBB23C0);
  v31 = v26;
  swift_retain_n();
  v32 = v31;
  sub_21C6EA794(v28, &qword_27CDF1AB8, &qword_21CBB23C0);

  sub_21C6EDBAC(v29, v57, &qword_27CDF1A10, &qword_21CBB2338);
  swift_storeEnumTagMultiPayload();
  v33 = MEMORY[0x277CE14C0];
  sub_21C6EADEC(&qword_27CDF1A08, &qword_27CDF1A10, &qword_21CBB2338, MEMORY[0x277CE14C0]);
  sub_21C6EADEC(&qword_27CDF1A18, &qword_27CDF1A20, &qword_21CBB2340, v33);
  v34 = v59;
  sub_21CB83494();

  sub_21C6EA794(v29, &qword_27CDF1A10, &qword_21CBB2338);
  sub_21C6EA794(v27, &qword_27CDF1AB8, &qword_21CBB23C0);
  v35 = 0;
  v36 = v34;
LABEL_9:
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1A00, &qword_21CBB2330);
  return (*(*(v45 - 8) + 56))(v36, v35, 1, v45);
}

uint64_t sub_21C92BFAC@<X0>(_BYTE *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = v2;
  v82 = a1;
  v89 = a2;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1AC8, &qword_21CBB23D0) - 8;
  MEMORY[0x28223BE20](v80);
  v90 = &v73[-v4];
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1AD0, &qword_21CBB23D8);
  MEMORY[0x28223BE20](v81);
  v88 = &v73[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v83 = &v73[-v7];
  MEMORY[0x28223BE20](v8);
  v87 = &v73[-v9];
  v10 = type metadata accessor for PMCombinedAccountDetailsView(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v73[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
  v85 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v84 = &v73[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  v17 = &v73[-v16];
  sub_21C942ED4(v3, v13, type metadata accessor for PMCombinedAccountDetailsView);
  v18 = *(v11 + 80);
  v19 = (v18 + 16) & ~v18;
  v20 = v19 + v12;
  v21 = (v19 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  sub_21C943454(v13, v22 + v19, type metadata accessor for PMCombinedAccountDetailsView);
  v23 = v82;
  *(v22 + v21) = v82;
  v24 = v23;
  v82 = v17;
  sub_21CB84DA4();
  sub_21C942ED4(v3, v13, type metadata accessor for PMCombinedAccountDetailsView);
  v78 = v18;
  v25 = v13;
  v77 = v20;
  v26 = swift_allocObject();
  v79 = v19;
  sub_21C943454(v13, v26 + v19, type metadata accessor for PMCombinedAccountDetailsView);
  v27 = v90;
  sub_21CB84DA4();
  *&v27[*(v80 + 44)] = sub_21CB84A64();
  v76 = sub_21C92765C();
  v75 = v28;
  v80 = v3;
  type metadata accessor for PMCombinedAccountDetailsModel(0);
  sub_21C705F40(&qword_27CDEB520, type metadata accessor for PMCombinedAccountDetailsModel, &unk_21CBC08FC);
  sub_21CB82684();
  swift_getKeyPath(byte_21CBB1BC0);
  sub_21CB82694();

  v30 = v102;
  v29 = v103;
  v31 = v104;
  swift_getKeyPath(byte_21CBB1BE8);
  swift_getKeyPath(byte_21CBB1C10);
  sub_21CB81DB4();

  v91[0] = v99;
  swift_getKeyPath(byte_21CBB1C30, v91);
  v99 = v30;
  v100 = v29;
  v101 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF16F0, &qword_21CBB1C78);
  sub_21CB84F44();

  v32 = v96;
  v33 = v97;
  v34 = v98;

  swift_getKeyPath(byte_21CBB1BC0);
  swift_getKeyPath(byte_21CBB1C80);
  sub_21CB81DB4();

  v35 = v93;
  if (*(v93 + 16) && (v36 = sub_21CB10C54(1), (v37 & 1) != 0))
  {
    v38 = *(*(v35 + 56) + 8 * v36);
    v39 = v38;
  }

  else
  {
    v38 = 0;
  }

  v41 = v75;
  v42 = 0xE100000000000000;
  if (v75)
  {
    v42 = v75;
  }

  v75 = v42;
  v43 = 63;
  if (v41)
  {
    v43 = v76;
  }

  v76 = v43;
  *&v44 = MEMORY[0x28223BE20](v40).n128_u64[0];
  *&v73[-16] = v38;
  swift_getKeyPath(byte_21CBB1CA8, v44);
  v93 = v32;
  v94 = v33;
  v95 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1700, &qword_21CBB1CE0);
  sub_21CB84F44();

  v45 = v91[2];
  v46 = v91[3];
  v74 = v92;

  v47 = v80;
  sub_21C942ED4(v80, v25, type metadata accessor for PMCombinedAccountDetailsView);
  v48 = swift_allocObject();
  v49 = v79;
  sub_21C943454(v25, v48 + v79, type metadata accessor for PMCombinedAccountDetailsView);
  sub_21C942ED4(v47, v25, type metadata accessor for PMCombinedAccountDetailsView);
  v50 = swift_allocObject();
  sub_21C943454(v25, v50 + v49, type metadata accessor for PMCombinedAccountDetailsView);
  v51 = swift_allocObject();
  *(v51 + 16) = sub_21C9440C4;
  *(v51 + 24) = v48;
  v52 = swift_allocObject();
  *(v52 + 16) = sub_21C9440C8;
  *(v52 + 24) = v50;
  KeyPath = swift_getKeyPath(byte_21CBB15B0);
  v54 = v83;
  v55 = &v83[*(v81 + 36)];
  *v55 = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  swift_storeEnumTagMultiPayload();
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1708, &unk_21CBB1CE8);
  *(v55 + v56[18]) = 0;
  v57 = (v55 + v56[15]);
  v58 = v75;
  *v57 = v76;
  v57[1] = v58;
  v59 = v55 + v56[16];
  *v59 = v45;
  *(v59 + 1) = v46;
  v59[16] = v74;
  *(v55 + v56[17]) = 2;
  *(v55 + v56[19]) = 2;
  v60 = (v55 + v56[20]);
  *v60 = sub_21C8E1174;
  v60[1] = v51;
  v61 = (v55 + v56[21]);
  *v61 = sub_21C943278;
  v61[1] = v52;
  sub_21C716934(v90, v54, &qword_27CDF1AC8, &qword_21CBB23D0);
  v62 = v87;
  sub_21C716934(v54, v87, &qword_27CDF1AD0, &qword_21CBB23D8);
  v63 = v85;
  v64 = *(v85 + 16);
  v65 = v84;
  v66 = v82;
  v67 = v86;
  v64(v84, v82, v86);
  v68 = v88;
  sub_21C6EDBAC(v62, v88, &qword_27CDF1AD0, &qword_21CBB23D8);
  v69 = v89;
  v64(v89, v65, v67);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1AD8, &unk_21CBB23E0);
  sub_21C6EDBAC(v68, &v69[*(v70 + 48)], &qword_27CDF1AD0, &qword_21CBB23D8);
  sub_21C6EA794(v62, &qword_27CDF1AD0, &qword_21CBB23D8);
  v71 = *(v63 + 8);
  v71(v66, v67);
  sub_21C6EA794(v68, &qword_27CDF1AD0, &qword_21CBB23D8);
  return (v71)(v65, v67);
}