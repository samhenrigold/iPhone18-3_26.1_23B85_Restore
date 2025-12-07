void sub_1974DE89C(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t *a4@<X3>, void *a5@<X8>)
{
  v56 = a4;
  v52 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AF98, &qword_19752C708);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v50 - v11;
  v13 = sub_19752177C();
  v14 = *(v13 - 8);
  v16 = MEMORY[0x1EEE9AC00](v13, v15);
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v16, v19);
  v22 = &v50 - v21;
  MEMORY[0x1EEE9AC00](v20, v23);
  v53 = &v50 - v24;
  v54 = sub_197520C4C();
  v55 = a1;
  v25 = sub_197520C3C();
  if (v25)
  {
    v26 = v25;
    sub_1974084E0(v25, a2, a3);
    if (v5)
    {

      *v56 = v5;
      return;
    }

    v34 = HIBYTE(v28) & 0xF;
    if ((v28 & 0x2000000000000000) == 0)
    {
      v34 = v27 & 0xFFFFFFFFFFFFLL;
    }

    v51 = v26;
    if (v34)
    {
      v50 = v27;
    }

    else
    {

      v50 = 0x44497463656A626FLL;
    }

    sub_197520C0C();
    if ((*(v14 + 48))(v12, 1, v13) == 1)
    {
      sub_19740797C(v12, &qword_1EAF2AF98, &qword_19752C708);
      v35 = 0;
LABEL_20:
      sub_197520C1C();
      v40 = sub_1975213BC();
      v41 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
      v42 = sub_19752178C();

      v43 = [v41 initWithKey:v42 ascending:v40 & 1 selector:{v35, v50, v51}];

      *v52 = v43;
      return;
    }

    v36 = v53;
    (*(v14 + 32))(v53, v12, v13);
    (*(v14 + 16))(v22, v36, v13);
    sub_19752175C();
    sub_1974EDDB0();
    LOBYTE(v36) = sub_19752173C();
    v37 = *(v14 + 8);
    v37(v18, v13);
    if (v36)
    {
      v38 = &selRef_compare_;
LABEL_18:
      v37(v22, v13);
LABEL_19:
      v35 = *v38;
      v37(v53, v13);
      goto LABEL_20;
    }

    sub_19752176C();
    v39 = sub_19752173C();
    v37(v18, v13);
    if (v39)
    {
      v38 = &selRef_localizedCompare_;
      goto LABEL_18;
    }

    sub_19752174C();
    v44 = sub_19752173C();
    v37(v18, v13);
    v37(v22, v13);
    if (v44)
    {
      v38 = &selRef_localizedStandardCompare_;
      goto LABEL_19;
    }

    if (qword_1EAF2AD38 != -1)
    {
      swift_once();
    }

    v45 = byte_1EAF2B728;
    v47 = qword_1EAF2B730;
    v46 = unk_1EAF2B738;
    sub_19744BE3C();
    v48 = swift_allocError();
    *v49 = v45;
    *(v49 + 8) = v47;
    *(v49 + 16) = v46;
    swift_willThrow();

    v37(v53, v13);
    *v56 = v48;
  }

  else
  {
    if (qword_1EAF2AD38 != -1)
    {
      swift_once();
    }

    v29 = byte_1EAF2B728;
    v31 = qword_1EAF2B730;
    v30 = unk_1EAF2B738;
    sub_19744BE3C();
    v32 = swift_allocError();
    *v33 = v29;
    *(v33 + 8) = v31;
    *(v33 + 16) = v30;
    swift_willThrow();
    *v56 = v32;
  }
}

uint64_t sub_1974DEDF8(uint64_t a1)
{
  v3 = sub_197520DAC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = 0x5F6C61636F6C5F24;
  *&v16 = 0xE800000000000000;
  v20 = *v1;
  v8 = v20;
  v9 = sub_1975227DC();
  MEMORY[0x19A8DFF80](v9);

  if (v8 == -1)
  {
    __break(1u);
  }

  else
  {
    v11 = v15;
    *v1 = v8 + 1;
    (*(v4 + 16))(v7, a1, v3);
    v12 = sub_19752178C();
    v13 = [objc_opt_self() expressionForVariable_];

    v19 = 0;
    v17 = 0u;
    v18 = 0u;
    v16 = 0u;
    v15 = v13;
    sub_19742A1A4(&v15, v7);
    return v11;
  }

  return result;
}

id sub_1974DEF98()
{
  v1 = sub_1975229AC();
  v2 = objc_opt_self();
  v3 = [v2 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v4 = [v2 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v5 = [v2 expressionForConditional:v0 trueExpression:v3 falseExpression:v4];

  return v5;
}

void sub_1974DF08C(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if ([a1 expressionType] == 1)
  {
    v8 = sub_19752178C();
    v9 = [objc_opt_self() expressionForKeyPath_];
LABEL_3:
    v10 = v9;

LABEL_10:
    *a4 = v10;
    return;
  }

  if ([a1 expressionType] == 3)
  {
    v11 = [a1 keyPath];
    v12 = sub_1975217BC();
    v14 = v13;

    v30 = v12;
    v31 = v14;
    v26 = 64;
    v27 = 0xE100000000000000;
    sub_197416D54();
    LOBYTE(v11) = sub_197521FCC();

    if ((v11 & 1) == 0)
    {
      v22 = [a1 keyPath];
      v23 = sub_1975217BC();
      v25 = v24;

      v30 = v23;
      v31 = v25;
      MEMORY[0x19A8DFF80](46, 0xE100000000000000);
      MEMORY[0x19A8DFF80](a2, a3);
      v8 = sub_19752178C();

      v9 = [objc_opt_self() expressionForKeyPath_];
      goto LABEL_3;
    }
  }

  v15 = sub_197408568(0, &qword_1EAF2AA78, 0x1E696ABC8);
  v32 = v15;
  v30 = a1;
  v16 = objc_opt_self();
  v17 = a1;
  v18 = sub_19752178C();
  v19 = [v16 _newKeyPathExpressionForString_];

  if (!v19)
  {
    v15 = 0;
    v27 = 0;
    v28 = 0;
  }

  v26 = v19;
  v29 = v15;
  v20 = objc_allocWithZone(MEMORY[0x1E696ACB8]);
  v21 = sub_1974ECFA8(&v30, &v26);
  if (v21)
  {
    v10 = v21;
    goto LABEL_10;
  }

  __break(1u);
}

void sub_1974DF2EC(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t *a6@<X8>)
{
  v74 = a5;
  v75 = a2;
  v70 = a6;
  v78 = sub_197520C7C();
  v9 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78, v10);
  v12 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v73 = sub_197521F5C();
  v72 = *(v73 - 8);
  v15 = MEMORY[0x1EEE9AC00](v73, v14);
  v17 = &v67 - v16;
  v18 = *(AssociatedTypeWitness - 8);
  v20 = MEMORY[0x1EEE9AC00](v15, v19);
  v71 = &v67 - v21;
  MEMORY[0x1EEE9AC00](v20, v22);
  v24 = &v67 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(v25 + 16);
  v76 = a1;
  v26(v24, a1, a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2BBA8, &qword_197531970);
  if (swift_dynamicCast())
  {
    v68 = AssociatedTypeWitness;
    v27 = v75;
    v69 = v18;
    sub_19745E6C8(&v82, &v85);
    v29 = v86;
    v28 = v87;
    __swift_project_boxed_opaque_existential_0Tm(&v85, v86);
    v30 = v79;
    v31 = (*(v28 + 16))(v27, v29, v28);
    v33 = v30;
    if (!v30)
    {
      v49 = v70;
      *v70 = v31;
      *(v49 + 8) = v32 & 1;
      __swift_destroy_boxed_opaque_existential_0Tm_0(&v85);
      return;
    }

    __swift_destroy_boxed_opaque_existential_0Tm_0(&v85);
    v34 = 0;
    v18 = v69;
    AssociatedTypeWitness = v68;
  }

  else
  {
    v84 = 0;
    v82 = 0u;
    v83 = 0u;
    sub_19740797C(&v82, &qword_1EAF2BBB0, &qword_197531978);
    v33 = 0;
    v34 = v79;
  }

  sub_197520C8C();
  sub_197520C9C();
  if (!v34)
  {
    v79 = v33;
    (*(v9 + 8))(v12, v78);
    (*(v18 + 56))(v17, 0, 1, AssociatedTypeWitness);
    v35 = v71;
    (*(v18 + 32))(v71, v17, AssociatedTypeWitness);
    v81[3] = AssociatedTypeWitness;
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v81);
    (*(v18 + 16))(boxed_opaque_existential_0Tm, v35, AssociatedTypeWitness);
    v37 = v18;
    v39 = *v75;
    v38 = v75[1];
    v40 = v75[2];

    v42 = MEMORY[0x19A8E1370](v41);
    sub_1974DFBAC(v81, v39, v38, v40, &v80, &v82);
    objc_autoreleasePoolPop(v42);

    __swift_destroy_boxed_opaque_existential_0Tm_0(v81);
    if (*(&v83 + 1))
    {
      sub_1974028B8(&v82, &v85);
      __swift_project_boxed_opaque_existential_0Tm(&v85, v86);
      v50 = sub_19752281C();
      v51 = [objc_opt_self() expressionForConstantValue_];
      swift_unknownObjectRelease();

      __swift_destroy_boxed_opaque_existential_0Tm_0(&v85);
      (*(v37 + 8))(v35, AssociatedTypeWitness);
      v52 = v70;
      *v70 = v51;
      *(v52 + 8) = 0;
      return;
    }

    (*(v37 + 8))(v35, AssociatedTypeWitness);
    v33 = v79;
    sub_19740797C(&v82, &qword_1EAF2AF20, &unk_19752F320);
    if (v33)
    {
      goto LABEL_7;
    }

LABEL_10:
    v43 = sub_197522B8C();
    v45 = HIBYTE(v44) & 0xF;
    if ((v44 & 0x2000000000000000) == 0)
    {
      v45 = v43 & 0xFFFFFFFFFFFFLL;
    }

    if (v45)
    {
      v46 = 4 * v45;
      while (sub_1975218BC() != 60 || v47 != 0xE100000000000000)
      {
        v48 = sub_19752282C();

        if ((v48 & 1) != 0 || v46 == sub_19752182C() >> 14)
        {
          goto LABEL_24;
        }
      }
    }

LABEL_24:
    v53 = sub_1975218DC();
    v55 = v54;
    v57 = v56;
    v59 = v58;

    *&v85 = 0;
    *(&v85 + 1) = 0xE000000000000000;
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD00000000000001CLL, 0x8000000197528F60);
    v60 = MEMORY[0x19A8DFF20](v53, v55, v57, v59);
    v62 = v61;

    MEMORY[0x19A8DFF80](v60, v62);

    MEMORY[0x19A8DFF80](0xD00000000000001BLL, 0x8000000197528F80);
    v64 = *(&v85 + 1);
    v63 = v85;
    sub_19744BE3C();
    v65 = swift_allocError();
    *v66 = 1;
    *(v66 + 8) = __PAIR128__(v64, v63);
    v33 = v65;
    swift_willThrow();

    goto LABEL_25;
  }

  (*(v9 + 8))(v12, v78);
  (*(v18 + 56))(v17, 1, 1, AssociatedTypeWitness);
  (*(v72 + 8))(v17, v73);
  if (!v33)
  {
    goto LABEL_10;
  }

LABEL_7:
  swift_willThrow();
LABEL_25:
  *v74 = v33;
}

uint64_t sub_1974DFAF4(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = *(a3 + 24);
  a1[3] = v6;
  a1[4] = v7;
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(a1);
  v12 = *(*(v6 - 8) + 16);
  v12(boxed_opaque_existential_0Tm, v3, v6);
  v9 = *(a3 + 36);
  a2[3] = v6;
  a2[4] = v7;
  v10 = __swift_allocate_boxed_opaque_existential_0Tm(a2);

  return (v12)(v10, v3 + v9, v6);
}

void sub_1974DFBAC(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, __int128 *a6@<X8>)
{
  v89 = a5;
  v84 = a4;
  v83 = a3;
  v82 = a2;
  v8 = sub_1975212CC();
  v85 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_19752132C();
  v86 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_19752135C();
  v87 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v82 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_197404860(a1, &v103);
  sub_197404860(&v103, &v97);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AF20, &unk_19752F320);
  swift_dynamicCast();
  if (!*(&v102 + 1))
  {
    *a6 = 0u;
    a6[1] = 0u;
LABEL_21:
    __swift_destroy_boxed_opaque_existential_0Tm_0(&v103);
    return;
  }

  v88 = a6;
  sub_19740797C(&v101, &qword_1EAF2AF20, &unk_19752F320);
  type metadata accessor for ComparisonResult(0);
  if (swift_dynamicCast())
  {
    goto LABEL_26;
  }

  if (swift_dynamicCast())
  {
    goto LABEL_26;
  }

  if (swift_dynamicCast())
  {
    goto LABEL_26;
  }

  if (swift_dynamicCast())
  {
    goto LABEL_26;
  }

  if (swift_dynamicCast())
  {
    goto LABEL_26;
  }

  if (swift_dynamicCast())
  {
    goto LABEL_26;
  }

  if (swift_dynamicCast())
  {
    goto LABEL_26;
  }

  if (swift_dynamicCast())
  {
    goto LABEL_26;
  }

  if (swift_dynamicCast())
  {
    goto LABEL_26;
  }

  if (swift_dynamicCast())
  {
    goto LABEL_26;
  }

  if (swift_dynamicCast())
  {
    goto LABEL_26;
  }

  if (swift_dynamicCast())
  {
    goto LABEL_26;
  }

  if (swift_dynamicCast())
  {
    goto LABEL_26;
  }

  type metadata accessor for Decimal(0);
  if (swift_dynamicCast() & 1) != 0 || (swift_dynamicCast() & 1) != 0 || (swift_dynamicCast())
  {
    goto LABEL_26;
  }

  v21 = MEMORY[0x1E69E6158];
  if (!swift_dynamicCast())
  {
    if (swift_dynamicCast())
    {
      (*(v87 + 8))(v19, v16);
      goto LABEL_26;
    }

    if (swift_dynamicCast())
    {
      (*(v86 + 8))(v15, v12);
      goto LABEL_26;
    }

    if (swift_dynamicCast())
    {
      sub_19744D0E0(v101, *(&v101 + 1));
      goto LABEL_26;
    }

    if (swift_dynamicCast())
    {
      (*(v85 + 8))(v11, v8);
      goto LABEL_26;
    }

    if (swift_dynamicCast())
    {
      v26 = v101;
      v27 = v88;
      *(v88 + 3) = v21;
      *v27 = v26;
      goto LABEL_21;
    }

    v28 = swift_dynamicCast();
    if (v28)
    {
      v30 = v97;
      v31 = v98;
      if (!v98)
      {
        sub_1974028EC(v97, 0);
        v52 = v30;
LABEL_57:
        *(&v102 + 1) = sub_197408568(0, qword_1ED7C7910, 0x1E695D630);
        *&v101 = v52;
        sub_1974028C8(v30, v31);
        sub_1974028B8(&v101, v88);
        goto LABEL_21;
      }

      if (v98 != 1)
      {
        v101 = 0u;
        v102 = 0u;
        v53 = sub_19750A29C(v28, v29);
        goto LABEL_60;
      }

      if (*(v97 + 32) && *(v97 + 32) == 1)
      {
        sub_1974028EC(v97, 1);
      }

      else
      {
        v65 = sub_19752282C();
        sub_1974028EC(v30, 1);

        if ((v65 & 1) == 0)
        {
          sub_1974028C8(v30, 1);
LABEL_59:
          v101 = 0u;
          v102 = 0u;
          v53 = sub_19750ACDC(v68, v69);
LABEL_60:
          v70 = v53;
          v71 = v54;
          v72 = v88;
          *(v88 + 3) = v21;
          sub_1974028C8(v30, v31);
          *v72 = v70;
          v72[1] = v71;
          if (*(&v102 + 1))
          {
            sub_19740797C(&v101, &qword_1EAF2AF20, &unk_19752F320);
          }

          goto LABEL_21;
        }
      }

      v66 = [*(v84 + OBJC_IVAR____TtC9SwiftData12DefaultStore_container) persistentStoreCoordinator];
      sub_19750ACDC(v66, v67);
      v52 = sub_197521EDC();
      sub_1974028C8(v30, 1);

      if (v52)
      {
        goto LABEL_57;
      }

      goto LABEL_59;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B5D8, &qword_19752EA20);
    if (swift_dynamicCast())
    {
      sub_19745E6C8(&v101, &v97);
      v33 = v99;
      v32 = v100;
      v34 = __swift_project_boxed_opaque_existential_0Tm(&v97, v99);
      v36 = MEMORY[0x1EEE9AC00](v34, v35);
      v37 = v83;
      *(&v82 - 4) = v82;
      *(&v82 - 3) = v37;
      *(&v82 - 2) = v84;
      MEMORY[0x1EEE9AC00](v36, v38);
      *(&v82 - 4) = v33;
      *(&v82 - 3) = v32;
      *(&v82 - 2) = sub_1974EDBD0;
      *(&v82 - 1) = v39;
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AE98, &unk_19752E9E0);
      v41 = v90;
      v42 = sub_19742A5D8(sub_19742ADFC, (&v82 - 6), v33, v20, v40, v32, MEMORY[0x1E69E7288], v95);
      if (v41)
      {
        *v89 = v95[0];
        __swift_destroy_boxed_opaque_existential_0Tm_0(&v97);
        __swift_destroy_boxed_opaque_existential_0Tm_0(&v103);
        return;
      }

      v59 = v42;
      v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2BBC0, &unk_197531990);
      v61 = v88;
      *(v88 + 3) = v60;
      *v61 = v59;
      goto LABEL_53;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2BBB8, &unk_197531980);
    if (swift_dynamicCast())
    {
      sub_19745E6C8(&v101, &v97);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B340, &qword_19752D4E8);
      v43 = swift_allocObject();
      v43[1] = xmmword_19752F3D0;
      v44 = v99;
      v45 = v100;
      __swift_project_boxed_opaque_existential_0Tm(&v97, v99);
      (*(v45 + 8))(v95, v93, v44, v45);
      __swift_destroy_boxed_opaque_existential_0Tm_0(v93);
      v46 = v96;
      v47 = __swift_project_boxed_opaque_existential_0Tm(v95, v96);
      v92 = v46;
      boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v91);
      v49 = (*(*(v46 - 8) + 16))(boxed_opaque_existential_0Tm, v47, v46);
      v50 = MEMORY[0x19A8E1370](v49);
      v51 = v90;
      sub_1974DFBAC(v91, v82, v83, v84, &v104, v43 + 2);
      if (!v51)
      {
        objc_autoreleasePoolPop(v50);
        __swift_destroy_boxed_opaque_existential_0Tm_0(v91);
        __swift_destroy_boxed_opaque_existential_0Tm_0(v95);
        v73 = v99;
        v74 = v100;
        __swift_project_boxed_opaque_existential_0Tm(&v97, v99);
        (*(v74 + 8))(v95, v93, v73, v74);
        __swift_destroy_boxed_opaque_existential_0Tm_0(v95);
        v75 = v94;
        v76 = __swift_project_boxed_opaque_existential_0Tm(v93, v94);
        v92 = v75;
        v77 = __swift_allocate_boxed_opaque_existential_0Tm(v91);
        v78 = (*(*(v75 - 8) + 16))(v77, v76, v75);
        v79 = MEMORY[0x19A8E1370](v78);
        sub_1974DFBAC(v91, v82, v83, v84, &v104, v43 + 4);
        objc_autoreleasePoolPop(v79);
        __swift_destroy_boxed_opaque_existential_0Tm_0(v91);
        __swift_destroy_boxed_opaque_existential_0Tm_0(v93);
        v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2BBC0, &unk_197531990);
        v81 = v88;
        *(v88 + 3) = v80;
        *v81 = v43;
LABEL_53:
        __swift_destroy_boxed_opaque_existential_0Tm_0(&v97);
        __swift_destroy_boxed_opaque_existential_0Tm_0(&v103);
        return;
      }

      v25 = v104;
      objc_autoreleasePoolPop(v50);
      __swift_destroy_boxed_opaque_existential_0Tm_0(v91);
      __swift_destroy_boxed_opaque_existential_0Tm_0(v95);
      *(v43 + 2) = 0;

      __swift_destroy_boxed_opaque_existential_0Tm_0(&v97);
    }

    else
    {
      if (swift_dynamicCast())
      {
        v55 = v101;
        v56 = sub_197408568(0, &qword_1ED7C7C78, 0x1E695D6A8);
        v97 = v55;
        v57 = sub_19746A47C(&v97);
        v58 = v88;
        *(v88 + 3) = v56;
        *v58 = v57;
        goto LABEL_21;
      }

      *&v101 = 0;
      *(&v101 + 1) = 0xE000000000000000;
      sub_1975221EC();
      MEMORY[0x19A8DFF80](0xD000000000000039, 0x8000000197528FA0);
      __swift_project_boxed_opaque_existential_0Tm(a1, a1[3]);
      swift_getDynamicType();
      v62 = sub_197522B8C();
      MEMORY[0x19A8DFF80](v62);

      MEMORY[0x19A8DFF80](0xD000000000000013, 0x8000000197528FE0);
      v63 = v101;
      sub_19744BE3C();
      v25 = swift_allocError();
      *v64 = 1;
      *(v64 + 8) = v63;
      swift_willThrow();
    }

    __swift_destroy_boxed_opaque_existential_0Tm_0(&v103);
    goto LABEL_28;
  }

LABEL_26:
  v22 = __swift_destroy_boxed_opaque_existential_0Tm_0(&v103);
  v23 = MEMORY[0x19A8E1370](v22);
  v24 = v90;
  sub_1974E0A44(a1, &v101, v88);
  if (v24)
  {
    v25 = v101;
    objc_autoreleasePoolPop(v23);
LABEL_28:
    *v89 = v25;
    return;
  }

  objc_autoreleasePoolPop(v23);
}

void sub_1974E09B4(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, __int128 *a5@<X8>)
{
  v10 = MEMORY[0x19A8E1370]();
  sub_1974DFBAC(a1, a2, a3, a4, &v11, a5);
  objc_autoreleasePoolPop(v10);
}

uint64_t sub_1974E0A44@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v28 = a2;
  v5 = sub_1975212CC();
  v29 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_19752132C();
  v30 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_19752135C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = a1;
  sub_197404860(a1, v36);
  sub_197404860(v36, v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AF20, &unk_19752F320);
  swift_dynamicCast();
  if (!v35)
  {
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return __swift_destroy_boxed_opaque_existential_0Tm_0(v36);
  }

  sub_19740797C(&v33, &qword_1EAF2AF20, &unk_19752F320);
  if (!swift_dynamicCast())
  {
    if (swift_dynamicCast())
    {
      (*(v14 + 8))(v17, v13);
      goto LABEL_13;
    }

    if (swift_dynamicCast())
    {
      (*(v30 + 8))(v12, v9);
      goto LABEL_13;
    }

    if (swift_dynamicCast())
    {
      sub_19744D0E0(v33, v34);
      goto LABEL_13;
    }

    if (swift_dynamicCast())
    {
      (*(v29 + 8))(v8, v5);
      goto LABEL_13;
    }

    v19 = MEMORY[0x1E69E6530];
    if (swift_dynamicCast())
    {
      goto LABEL_13;
    }

    if (swift_dynamicCast())
    {
      goto LABEL_13;
    }

    if (swift_dynamicCast())
    {
      goto LABEL_13;
    }

    if (swift_dynamicCast())
    {
      goto LABEL_13;
    }

    if (swift_dynamicCast())
    {
      goto LABEL_13;
    }

    if (swift_dynamicCast())
    {
      goto LABEL_13;
    }

    if (swift_dynamicCast())
    {
      goto LABEL_13;
    }

    if (swift_dynamicCast())
    {
      goto LABEL_13;
    }

    if (swift_dynamicCast())
    {
      goto LABEL_13;
    }

    if (swift_dynamicCast())
    {
      goto LABEL_13;
    }

    if (swift_dynamicCast())
    {
      goto LABEL_13;
    }

    if (swift_dynamicCast())
    {
      goto LABEL_13;
    }

    if (swift_dynamicCast())
    {
      goto LABEL_13;
    }

    if (swift_dynamicCast())
    {
      goto LABEL_13;
    }

    type metadata accessor for Decimal(0);
    if ((swift_dynamicCast() & 1) != 0 || (swift_dynamicCast() & 1) != 0 || swift_dynamicCast())
    {
      goto LABEL_13;
    }

    type metadata accessor for ComparisonResult(0);
    if (swift_dynamicCast())
    {
      v20 = v33;
      *(a3 + 24) = v19;
      *a3 = v20;
    }

    else
    {
      if (!swift_dynamicCast())
      {
        v33 = 0;
        v34 = 0xE000000000000000;
        sub_1975221EC();
        MEMORY[0x19A8DFF80](0xD000000000000039, 0x8000000197528FA0);
        __swift_project_boxed_opaque_existential_0Tm(v31, v31[3]);
        swift_getDynamicType();
        v23 = sub_197522B8C();
        MEMORY[0x19A8DFF80](v23);

        MEMORY[0x19A8DFF80](0xD000000000000013, 0x8000000197528FE0);
        v24 = v33;
        v25 = v34;
        sub_19744BE3C();
        v26 = swift_allocError();
        *v27 = 1;
        *(v27 + 8) = v24;
        *(v27 + 16) = v25;
        swift_willThrow();
        result = __swift_destroy_boxed_opaque_existential_0Tm_0(v36);
        *v28 = v26;
        return result;
      }

      v21 = v33;
      v22 = v34;
      *(a3 + 24) = MEMORY[0x1E69E6158];
      *a3 = v21;
      *(a3 + 8) = v22;
    }

    return __swift_destroy_boxed_opaque_existential_0Tm_0(v36);
  }

LABEL_13:
  __swift_destroy_boxed_opaque_existential_0Tm_0(v36);
  return sub_197404860(v31, a3);
}

uint64_t sub_1974E11C0@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X3>, uint64_t a4@<X8>)
{
  v23[3] = a2;
  __swift_allocate_boxed_opaque_existential_0Tm(v23);
  v8 = sub_1975210CC();
  MEMORY[0x19A8DF7E0](v8);
  v10 = *a1;
  v9 = a1[1];
  v11 = a1[2];

  v13 = MEMORY[0x19A8E1370](v12);
  sub_1974DFBAC(v23, v10, v9, v11, &v26, &v24);
  if (v4)
  {
    v14 = v26;
    objc_autoreleasePoolPop(v13);

    result = __swift_destroy_boxed_opaque_existential_0Tm_0(v23);
    *a3 = v14;
  }

  else
  {
    objc_autoreleasePoolPop(v13);

    __swift_destroy_boxed_opaque_existential_0Tm_0(v23);
    v16 = v25;
    if (v25)
    {
      v17 = __swift_project_boxed_opaque_existential_0Tm(&v24, v25);
      v18 = *(v16 - 8);
      MEMORY[0x1EEE9AC00](v17, v17);
      v20 = v23 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v18 + 16))(v20);
      v21 = sub_19752281C();
      (*(v18 + 8))(v20, v16);
      __swift_destroy_boxed_opaque_existential_0Tm_0(&v24);
    }

    else
    {
      v21 = 0;
    }

    v22 = [objc_opt_self() expressionForConstantValue_];
    result = swift_unknownObjectRelease();
    *a4 = v22;
    *(a4 + 8) = 0;
  }

  return result;
}

uint64_t sub_1974E1428@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>)
{
  v100 = a8;
  v96 = a4;
  v95 = a3;
  v94 = a2;
  v97 = a9;
  MEMORY[0x1EEE9AC00](a1, a2);
  v98 = &v89 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19752112C();
  v101 = sub_197521F5C();
  v14 = *(v101 - 8);
  MEMORY[0x1EEE9AC00](v101, v15);
  v17 = &v89 - v16;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v19 = AssociatedTypeWitness;
  if (AssociatedTypeWitness == MEMORY[0x1E69E67B0] || AssociatedTypeWitness == MEMORY[0x1E69E6158])
  {
    v21 = 0x6874676E656CLL;
  }

  else
  {
    v21 = 0x746E756F6340;
  }

  v22 = sub_19752115C();
  v99 = a1;
  sub_19752113C();
  v23 = v113;
  v24 = sub_1974E1F70(v17, v21, 0xE600000000000000, a5, a6, a7);
  v27 = v23;
  if (v23)
  {
    (*(v14 + 8))(v17, v101);

LABEL_9:
    *v100 = v27;
    return result;
  }

  v29 = v26;
  v93 = a5;
  v113 = 0;
  v90 = v19;
  v91 = v24;
  v92 = v25;
  (*(v14 + 8))(v17, v101);
  v30 = MEMORY[0x1E69E7CC0];
  LODWORD(v101) = v29;
  v31 = v22;
  if (v29 == 0xFF)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2BAC0, &unk_197531960);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_1975313B0;
    *(v30 + 32) = sub_19752111C();
  }

  MEMORY[0x19A8DF870](v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2BBC8, &qword_1975319A0);
  v32 = v93;
  if ((swift_dynamicCast() & 1) == 0)
  {

    *&v108 = 0;
    v106 = 0u;
    v107 = 0u;
    sub_19740797C(&v106, &qword_1EAF2BBD0, &qword_1975319A8);
    v37 = v101;
LABEL_16:
    *(&v107 + 1) = v32;
    *&v108 = a7;
    __swift_allocate_boxed_opaque_existential_0Tm(&v106);
    MEMORY[0x19A8DF870](v31);
    if (v37 == 0xFF)
    {
      v38 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B328, &unk_19752D4D0);
      v38 = swift_allocObject();
      *(v38 + 16) = xmmword_19752C280;
      v39 = v92;
      *(v38 + 32) = v91;
      *(v38 + 40) = v39;
      *(v38 + 48) = v37;
    }

    v40 = v97;
    result = sub_19745E6C8(&v106, v97);
    *(v40 + 40) = v30;
    *(v40 + 48) = v38;
    return result;
  }

  v98 = v22;
  v33 = v101;
  sub_19745E6C8(&v106, &v110);
  v34 = v111;
  v35 = v112;
  __swift_project_boxed_opaque_existential_0Tm(&v110, v111);
  v36 = v113;
  (*(v35 + 8))(&v102, v94, v95, v96, v34, v35);
  v27 = v36;
  if (v36)
  {

    sub_1974EDD48(v91, v92, v33);

LABEL_44:
    result = __swift_destroy_boxed_opaque_existential_0Tm_0(&v110);
    goto LABEL_9;
  }

  v37 = v33;
  v113 = 0;
  if (!*(&v103 + 1))
  {

    sub_19740797C(&v102, &qword_1EAF2BBD8, &qword_1975319B0);
    __swift_destroy_boxed_opaque_existential_0Tm_0(&v110);
    v31 = v98;
    v32 = v93;
    goto LABEL_16;
  }

  v106 = v102;
  v107 = v103;
  v108 = v104;
  v109 = v105;
  v41 = *(&v104 + 1);
  if (*(&v104 + 1) >> 62)
  {
    v42 = sub_1975220EC();
  }

  else
  {
    v42 = *((*(&v104 + 1) & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v43 = MEMORY[0x1E69E7CC0];
  v44 = v30;
  if (v42)
  {
    v45 = __OFSUB__(v42, 1);
    v46 = v42 - 1;
    if (v45)
    {
      __break(1u);
    }

    else if ((v41 & 0xC000000000000001) == 0)
    {
      if ((v46 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v46 < *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v30 = *(v41 + 8 * v46 + 32);

        if (v44 >> 62)
        {
          goto LABEL_73;
        }

LABEL_32:
        v47 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_33;
      }

      __break(1u);
      goto LABEL_76;
    }

    v30 = MEMORY[0x19A8E0960](v46, v41);
    if (!(v44 >> 62))
    {
      goto LABEL_32;
    }
  }

  else
  {
    v30 = 0;
    if (!(v44 >> 62))
    {
      goto LABEL_32;
    }
  }

LABEL_73:
  v47 = sub_1975220EC();
LABEL_33:
  v48 = v109;
  v49 = *(v109 + 16);
  if (!v47)
  {

    if (v49)
    {
      if (v37 != 0xFF)
      {
        v55 = v97;
        sub_19742A2E0(&v106, v97);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B328, &unk_19752D4D0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_19752C280;
        v57 = v37;
        v58 = v91;
        v59 = v92;
        *(inited + 32) = v91;
        *(inited + 40) = v59;
        *(inited + 48) = v57;
        *&v102 = v48;

        sub_1974EDD5C(v58, v59, v57);

        sub_1974EE818(inited);

        sub_1974EDD48(v58, v59, v57);
        v60 = v102;
        *(v55 + 40) = v41;
        *(v55 + 48) = v60;
LABEL_67:
        sub_197407F34(&v106);
        return __swift_destroy_boxed_opaque_existential_0Tm_0(&v110);
      }
    }

    else
    {
      if (!v30)
      {
        goto LABEL_39;
      }

      if (v37 != 0xFF)
      {
        v61 = v97;
        sub_19742A2E0(&v106, v97);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B328, &unk_19752D4D0);
        v62 = swift_allocObject();
        *(v62 + 16) = xmmword_19752C280;
        v63 = v92;
        *(v62 + 32) = v91;
        *(v62 + 40) = v63;
        *(v62 + 48) = v37;

        *(v61 + 40) = v41;
        *(v61 + 48) = v62;
        goto LABEL_67;
      }
    }

    goto LABEL_40;
  }

  if (!v30)
  {
LABEL_38:

LABEL_39:
    sub_1974EDD48(v91, v92, v37);
LABEL_40:
    if (qword_1EAF2AD28 != -1)
    {
      swift_once();
    }

    v50 = byte_1EAF2B6F8;
    v52 = qword_1EAF2B700;
    v51 = unk_1EAF2B708;
    sub_19744BE3C();
    v53 = swift_allocError();
    *v54 = v50;
    *(v54 + 8) = v52;
    *(v54 + 16) = v51;
    swift_willThrow();
    v27 = v53;

    goto LABEL_43;
  }

  if (v49 || v37 != 0xFF)
  {

    goto LABEL_38;
  }

  v64 = v90;
  if (swift_conformsToProtocol2() && v64)
  {

    v65 = v97;
    sub_19742A2E0(&v106, v97);
    *&v102 = v41;

    sub_19742A2C8(v44);
    v66 = v102;

    *(v65 + 40) = v66;
    *(v65 + 48) = v43;
    goto LABEL_67;
  }

  sub_197521FFC();
  v68 = v67;
  v69 = swift_conformsToProtocol2();
  if (!v69 || !v68)
  {

LABEL_60:
    if ((v44 & 0xC000000000000001) == 0)
    {
      if (!*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_78;
      }

LABEL_63:

      sub_19752202C();
      v70 = sub_1975224AC();

      if (!v70)
      {
        if (qword_1EAF2AD28 == -1)
        {
LABEL_69:
          v84 = byte_1EAF2B6F8;
          v86 = qword_1EAF2B700;
          v85 = unk_1EAF2B708;
          sub_19744BE3C();
          v87 = swift_allocError();
          *v88 = v84;
          *(v88 + 8) = v86;
          *(v88 + 16) = v85;
          swift_willThrow();
          v27 = v87;

LABEL_43:
          sub_197407F34(&v106);
          goto LABEL_44;
        }

LABEL_80:
        swift_once();
        goto LABEL_69;
      }

      v101 = v30;
      sub_19742A2E0(&v106, v97);

      sub_1974ED7D8(1, v41);
      v72 = v71;
      v74 = v73;
      v76 = v75;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2BAC0, &unk_197531960);
      v77 = swift_initStackObject();
      *(v77 + 16) = xmmword_1975313B0;
      *(v77 + 32) = v70;
      *&v102 = v43;
      v78 = (v76 >> 1) - v74;
      if (!__OFSUB__(v76 >> 1, v74))
      {
        v79 = v78 + 1;
        if (!__OFADD__(v78, 1))
        {
          v80 = v77;

          sub_1974ED73C(v79);
          v81 = swift_unknownObjectRetain();
          sub_1974F92D4(v81, v72, v74, v76);
          swift_unknownObjectRelease();
          sub_19742A2C8(v80);
          swift_unknownObjectRelease();
          v82 = v102;

          v83 = v97;
          *(v97 + 40) = v82;
          *(v83 + 48) = v43;
          goto LABEL_67;
        }

        goto LABEL_79;
      }

LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
      goto LABEL_80;
    }

LABEL_76:
    MEMORY[0x19A8E0960](0, v44);
    goto LABEL_63;
  }

  (*(v69 + 8))(v68, v69);
  sub_19752202C();
  result = sub_1975224AC();
  if (result)
  {

    goto LABEL_60;
  }

  __break(1u);
  return result;
}

uint64_t sub_1974E1F70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v30 = a2;
  v7 = sub_19752112C();
  v8 = sub_197521F5C();
  v9 = *(v8 - 8);
  v11 = MEMORY[0x1EEE9AC00](v8, v10);
  v13 = &v29 - v12;
  v14 = *(v7 - 8);
  v16 = MEMORY[0x1EEE9AC00](v11, v15);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v19);
  v21 = &v29 - v20;
  (*(v9 + 16))(v13, a1, v8);
  if ((*(v14 + 48))(v13, 1, v7) == 1)
  {
    (*(v9 + 8))(v13, v8);
    return 0;
  }

  (*(v14 + 32))(v21, v13, v7);
  (*(v14 + 16))(v18, v21, v7);
  v23 = (*(v14 + 88))(v18, v7);
  if (v23 == *MEMORY[0x1E6968D30] || v23 == *MEMORY[0x1E6968D40])
  {
    (*(v14 + 8))(v21, v7);

    return v30;
  }

  else
  {
    v24 = 0xD000000000000045;
    if (v23 == *MEMORY[0x1E6968D38])
    {
      v25 = " is not supported";
    }

    else
    {
      if (v23 != *MEMORY[0x1E6968D48])
      {
        v28 = *(v14 + 8);
        v28(v21, v7);
        v28(v18, v7);
        return 0;
      }

      v25 = "transactionNumber";
      v24 = 0xD000000000000051;
    }

    v26 = v25 | 0x8000000000000000;
    sub_19744BE3C();
    swift_allocError();
    *v27 = 2;
    *(v27 + 8) = v24;
    *(v27 + 16) = v26;
    swift_willThrow();
    return (*(v14 + 8))(v21, v7);
  }
}

void sub_1974E2304(void *a1@<X0>, uint64_t *a2@<X1>, void *a6@<X5>, _BYTE *a7@<X8>)
{
  v9 = v7;
  v14 = *a2;
  v13 = a2[1];
  v15 = a2[2];
  v16 = sub_19752115C();

  sub_197407E40(v14, v13, v15, v16, &v85);
  if (!v9)
  {
    v79 = a7;

    if (!*(&v86 + 1))
    {
      __break(1u);
      objc_autoreleasePoolPop(a1);
      __break(1u);
      objc_autoreleasePoolPop(a7);
      __break(1u);
      objc_autoreleasePoolPop(a6);
      __break(1u);
      return;
    }

    v89[1] = v86;
    v90 = v87;
    v89[0] = v85;
    v91 = v88;
    v17 = *(&v86 + 1);
    v18 = v87;
    __swift_project_boxed_opaque_existential_0Tm(v89, *(&v86 + 1));
    sub_197407EE0(a2, v17, v18);
    v20 = *(&v90 + 1);
    *&v85 = 0;
    *(&v85 + 1) = 0xE000000000000000;
    if (*(&v90 + 1) >> 62)
    {
      goto LABEL_72;
    }

    v21 = *((*(&v90 + 1) & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_6:
    v75 = a6;
    v80 = v19;
    if (v21)
    {
      v22 = 0;
      a6 = (v20 & 0xC000000000000001);
      while (1)
      {
        if (a6)
        {
          v19 = MEMORY[0x19A8E0960](v22, v20);
          v23 = v19;
          v24 = v22 + 1;
          if (__OFADD__(v22, 1))
          {
LABEL_15:
            __break(1u);
            break;
          }
        }

        else
        {
          if (v22 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_71:
            __break(1u);
LABEL_72:
            v74 = v19;
            v21 = sub_1975220EC();
            v19 = v74;
            goto LABEL_6;
          }

          v23 = *(v20 + 8 * v22 + 32);

          v24 = v22 + 1;
          if (__OFADD__(v22, 1))
          {
            goto LABEL_15;
          }
        }

        v92 = v23;
        sub_1974E30B0(&v85, &v92, &v84);

        v25 = *(&v84 + 1);
        v26 = v84;
        v85 = v84;
        ++v22;
        if (v24 == v21)
        {
          v19 = v80;
          goto LABEL_17;
        }
      }
    }

    v26 = 0;
    v25 = 0xE000000000000000;
LABEL_17:
    v27 = v91;
    v28 = HIBYTE(v25) & 0xF;
    v82 = *(v91 + 16);
    if (!v82)
    {
      v52 = v19;
      if ((v25 & 0x2000000000000000) == 0)
      {
        v28 = v26 & 0xFFFFFFFFFFFFLL;
      }

      v51 = v79;
      if (v28)
      {
        v53 = MEMORY[0x19A8E1370]();
        sub_1974E2EC4(v52, v26, v25, &v85);

        objc_autoreleasePoolPop(v53);

        a6 = v85;
      }

      else
      {

        a6 = [objc_opt_self() expressionForEvaluatedObject];
      }

      sub_197407F34(v89);
      v83 = 0;
LABEL_57:
      *v51 = a6;
      v51[8] = v83;
      return;
    }

    a6 = 0;
    v29 = 0;
    v76 = v26;
    if ((v25 & 0x2000000000000000) == 0)
    {
      v28 = v26 & 0xFFFFFFFFFFFFLL;
    }

    v78 = v28;
    v30 = (v91 + 48);
    v83 = -1;
    v81 = v91;
    v77 = v25;
    while (1)
    {
      if (v29 >= *(v27 + 16))
      {
        goto LABEL_71;
      }

      v35 = *(v30 - 2);
      v34 = *(v30 - 1);
      if (*v30)
      {
        if (*v30 != 1)
        {
          if (v35 | v34)
          {
            if (v83 != -1)
            {
              if (v83)
              {
                goto LABEL_61;
              }

              v31 = a6;
              goto LABEL_22;
            }
          }

          else if (v83 != -1)
          {
            if (v83)
            {
LABEL_61:
              v63 = a6;

              if (qword_1EAF2AD28 != -1)
              {
                swift_once();
              }

              v64 = byte_1EAF2B6F8;
              v66 = qword_1EAF2B700;
              v65 = unk_1EAF2B708;
              sub_19744BE3C();
              v9 = swift_allocError();
              *v67 = v64;
              *(v67 + 8) = v66;
              *(v67 + 16) = v65;
              swift_willThrow();

              sub_1974EDCBC(v63, v83);

              goto LABEL_68;
            }

            v31 = a6;
            goto LABEL_22;
          }

          v31 = v80;
LABEL_22:
          v32 = a6;
          v20 = sub_197408568(0, &qword_1EAF2AA78, 0x1E696ABC8);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2BB90, &unk_197534070);
          v33 = swift_allocObject();
          *(v33 + 16) = xmmword_19752C280;
          *(v33 + 56) = v20;
          *(v33 + 64) = sub_1974EDC58(&qword_1EAF2BC08, &qword_1EAF2AA78, 0x1E696ABC8);
          *(v33 + 32) = v31;
          sub_1974EDCA8(v32, v83);
          sub_1974EDCA8(v32, v83);
          a6 = sub_197521DAC();
          sub_1974EDCBC(v32, v83);

          v83 = 0;
LABEL_23:
          v27 = v81;
          goto LABEL_24;
        }

        if (v83 == -1)
        {
          if (v78)
          {
            *&v85 = v76;
            *(&v85 + 1) = v25;
            sub_1974EDCD0(v35, v34, 1u);
            sub_1974EDCD0(v35, v34, 1u);

            MEMORY[0x19A8DFF80](46, 0xE100000000000000);
            MEMORY[0x19A8DFF80](v35, v34);
            v42 = sub_1974EDCE8(v35, v34, 1u);
            v44 = *(&v85 + 1);
            v43 = v85;
          }

          else
          {
            sub_1974EDCD0(v35, v34, 1u);

            v43 = v35;
            v44 = v34;
          }

          v47 = MEMORY[0x19A8E1370](v42);
          sub_1974E2EC4(v80, v43, v44, &v85);

          objc_autoreleasePoolPop(v47);
          v20 = v85;
          *&v85 = 0;
          v48 = sub_1975229AC();
          v49 = [objc_opt_self() expressionForConstantValue_];
          swift_unknownObjectRelease();
          a6 = [objc_allocWithZone(MEMORY[0x1E696AB18]) initWithLeftExpression:v20 rightExpression:v49 modifier:0 type:4 options:0];

          v83 = 1;
          v19 = sub_1974EDCE8(v35, v34, 1u);
          goto LABEL_23;
        }

        if (v83)
        {
          v68 = *(v30 - 2);
          v69 = a6;

          if (qword_1EAF2AD28 != -1)
          {
            swift_once();
          }

          v70 = byte_1EAF2B6F8;
          v72 = qword_1EAF2B700;
          v71 = unk_1EAF2B708;
          sub_19744BE3C();
          v9 = swift_allocError();
          *v73 = v70;
          *(v73 + 8) = v72;
          *(v73 + 16) = v71;
          swift_willThrow();

          sub_1974EDCBC(v69, v83);

          v60 = v68;
          v61 = v34;
          v62 = 1;
LABEL_67:
          sub_1974EDCE8(v60, v61, v62);
LABEL_68:
          sub_197407F34(v89);
          a6 = v75;
          goto LABEL_69;
        }

        sub_1974EDCD0(*(v30 - 2), *(v30 - 1), 1u);

        v37 = MEMORY[0x19A8E1370](v36);
        sub_1974E2EC4(a6, v35, v34, &v85);
        v38 = a6;
        sub_1974EDCE8(v35, v34, 1u);
        objc_autoreleasePoolPop(v37);
        v20 = v85;
        *&v85 = 0;
        v39 = sub_1975229AC();
        v40 = [objc_opt_self() expressionForConstantValue_];
        swift_unknownObjectRelease();
        a6 = [objc_allocWithZone(MEMORY[0x1E696AB18]) initWithLeftExpression:v20 rightExpression:v40 modifier:0 type:4 options:0];

        sub_1974EDCBC(v38, v83);
        v19 = sub_1974EDCE8(v35, v34, 1u);
        v83 = 1;
        v27 = v81;
        v25 = v77;
      }

      else
      {
        if (v83 == -1)
        {
          if (v78)
          {
            *&v85 = v76;
            *(&v85 + 1) = v25;
            sub_1974EDCD0(v35, v34, 0);
            sub_1974EDCD0(v35, v34, 0);

            MEMORY[0x19A8DFF80](46, 0xE100000000000000);
            MEMORY[0x19A8DFF80](v35, v34);
            v45 = sub_1974EDCE8(v35, v34, 0);
            v20 = *(&v85 + 1);
            v46 = v85;
          }

          else
          {
            sub_1974EDCD0(v35, v34, 0);

            v46 = v35;
            v20 = v34;
          }

          v50 = MEMORY[0x19A8E1370](v45);
          sub_1974E2EC4(v80, v46, v20, &v85);

          objc_autoreleasePoolPop(v50);
          v19 = sub_1974EDCE8(v35, v34, 0);
          v83 = 0;
          a6 = v85;
          goto LABEL_23;
        }

        if (v83)
        {
          v54 = *(v30 - 2);
          v55 = a6;

          if (qword_1EAF2AD28 != -1)
          {
            swift_once();
          }

          v56 = byte_1EAF2B6F8;
          v58 = qword_1EAF2B700;
          v57 = unk_1EAF2B708;
          sub_19744BE3C();
          v9 = swift_allocError();
          *v59 = v56;
          *(v59 + 8) = v58;
          *(v59 + 16) = v57;
          swift_willThrow();

          sub_1974EDCBC(v55, v83);

          v60 = v54;
          v61 = v34;
          v62 = 0;
          goto LABEL_67;
        }

        sub_1974EDCD0(*(v30 - 2), *(v30 - 1), 0);

        v20 = MEMORY[0x19A8E1370](v41);
        sub_1974E2EC4(a6, v35, v34, &v85);
        sub_1974EDCE8(v35, v34, 0);
        objc_autoreleasePoolPop(v20);
        sub_1974EDCBC(a6, v83);
        v19 = sub_1974EDCE8(v35, v34, 0);
        v83 = 0;
        a6 = v85;
      }

LABEL_24:
      ++v29;
      v30 += 24;
      if (v82 == v29)
      {

        sub_197407F34(v89);
        v51 = v79;
        goto LABEL_57;
      }
    }
  }

LABEL_69:
  *a6 = v9;
}

void sub_1974E2EC4(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if ([a1 expressionType] == 1)
  {
    v8 = sub_19752178C();
    v9 = [objc_opt_self() expressionForKeyPath_];
LABEL_5:
    v14 = v9;

LABEL_10:
    *a4 = v14;
    return;
  }

  if ([a1 expressionType] == 3)
  {
    v10 = [a1 keyPath];
    v11 = sub_1975217BC();
    v13 = v12;

    v23[0] = v11;
    v23[1] = v13;
    MEMORY[0x19A8DFF80](46, 0xE100000000000000);
    MEMORY[0x19A8DFF80](a2, a3);
    v8 = sub_19752178C();

    v9 = [objc_opt_self() expressionForKeyPath_];
    goto LABEL_5;
  }

  v15 = sub_197408568(0, &qword_1EAF2AA78, 0x1E696ABC8);
  v23[3] = v15;
  v23[0] = a1;
  v16 = objc_opt_self();
  v17 = a1;
  v18 = sub_19752178C();
  v19 = [v16 _newKeyPathExpressionForString_];

  if (!v19)
  {
    v15 = 0;
    v22[1] = 0;
    v22[2] = 0;
  }

  v22[0] = v19;
  v22[3] = v15;
  v20 = objc_allocWithZone(MEMORY[0x1E696ACB8]);
  v21 = sub_1974ECFA8(v23, v22);
  if (v21)
  {
    v14 = v21;
    goto LABEL_10;
  }

  __break(1u);
}

void sub_1974E30B0(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = *a2;
  v8 = sub_197521FFC();
  if (v8 == type metadata accessor for DefaultHistoryTransaction(0))
  {
    sub_19752202C();
    KeyPath = swift_getKeyPath();
    v16 = MEMORY[0x19A8E0730](v7, KeyPath);

    if (v16)
    {
      v17 = 0x6E656B6F74;
      v18 = 0xE500000000000000;
LABEL_37:
      *a3 = v17;
      a3[1] = v18;
      return;
    }

    v27 = swift_getKeyPath();
    v28 = MEMORY[0x19A8E0730](v7, v27);

    if (v28)
    {
      *a3 = 0xD000000000000011;
      a3[1] = 0x8000000197529300;
      return;
    }

    v29 = swift_getKeyPath();
    v30 = MEMORY[0x19A8E0730](v7, v29);

    if (v30)
    {
      v17 = 0x6D617473656D6974;
      v18 = 0xE900000000000070;
      goto LABEL_37;
    }

    v31 = swift_getKeyPath();
    v32 = MEMORY[0x19A8E0730](v7, v31);

    if (v32)
    {
      v17 = 0x726F68747561;
      v18 = 0xE600000000000000;
      goto LABEL_37;
    }

    v33 = swift_getKeyPath();
    v34 = MEMORY[0x19A8E0730](v7, v33);

    if (v34)
    {
      v17 = 0x4449656C646E7562;
      v18 = 0xE800000000000000;
      goto LABEL_37;
    }

    v35 = swift_getKeyPath();
    v36 = MEMORY[0x19A8E0730](v7, v35);

    if (v36)
    {
      v17 = 0x49737365636F7270;
      v18 = 0xE900000000000044;
      goto LABEL_37;
    }

    v37 = swift_getKeyPath();
    v38 = MEMORY[0x19A8E0730](v7, v37);

    if (v38)
    {
      if (qword_1EAF2ADA8 != -1)
      {
        swift_once();
      }

      if (dyld_program_sdk_at_least())
      {
        v17 = 0x7365676E616863;
        v18 = 0xE700000000000000;
        goto LABEL_37;
      }
    }

LABEL_43:
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD000000000000017, 0x8000000197528F20);
    v39 = sub_197521FEC();
    MEMORY[0x19A8DFF80](v39);

    v13 = " root is not a PersistentModel)";
    v14 = 0xD00000000000001BLL;
    goto LABEL_44;
  }

  if (sub_197521FFC() == &type metadata for HistoryChange)
  {
    sub_19752202C();
    v19 = swift_getKeyPath();
    v20 = MEMORY[0x19A8E0730](v7, v19);

    if (v20)
    {
      if (qword_1EAF2ADA8 != -1)
      {
        swift_once();
      }

      if (dyld_program_sdk_at_least())
      {
        v17 = 0x456465676E616863;
        v18 = 0xED0000797469746ELL;
        goto LABEL_37;
      }
    }

    goto LABEL_43;
  }

  v9 = sub_197521FFC();
  v10 = swift_conformsToProtocol2();
  if (v10)
  {
    v11 = v9 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD000000000000017, 0x8000000197528F20);
    v12 = sub_197521FEC();
    MEMORY[0x19A8DFF80](v12);

    v13 = "ed Predicate values)";
    v14 = 0xD00000000000003FLL;
LABEL_44:
    MEMORY[0x19A8DFF80](v14, v13 | 0x8000000000000000);
    sub_19744BE3C();
    swift_allocError();
    *v40 = 2;
    *(v40 + 8) = 0;
    *(v40 + 16) = 0xE000000000000000;
    swift_willThrow();
    return;
  }

  sub_1974084E0(v7, v9, v10);
  if (!v3)
  {
    v23 = v6 & 0xFFFFFFFFFFFFLL;
    if ((v5 & 0x2000000000000000) != 0)
    {
      v23 = HIBYTE(v5) & 0xF;
    }

    v24 = HIBYTE(v22) & 0xF;
    if ((v22 & 0x2000000000000000) == 0)
    {
      v24 = v21 & 0xFFFFFFFFFFFFLL;
    }

    if (v23)
    {
      if (v24)
      {
        v41 = v5;
        v25 = v21;
        v26 = v22;

        MEMORY[0x19A8DFF80](46, 0xE100000000000000);

        MEMORY[0x19A8DFF80](v25, v26);

        v17 = v6;
        v18 = v41;
        goto LABEL_37;
      }
    }

    else if (v24)
    {
      *a3 = v21;
      a3[1] = v22;
      return;
    }

    *a3 = v6;
    a3[1] = v5;
  }
}

void sub_1974E3650(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  if (*(a1 + 8))
  {
    if (*(a1 + 8) == 1)
    {
      v5 = v4[9];
      v6 = v4[10];
    }

    else
    {
      v5 = sub_19750A588();
      v6 = v9;
    }
  }

  else
  {
    v7 = [v4 entityName];
    v5 = sub_1975217BC();
    v6 = v8;
  }

  *a2 = v5;
  a2[1] = v6;
}

uint64_t sub_1974E36E0@<X0>(void (**a1)(uint64_t, char *, uint64_t)@<X0>, uint64_t *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, uint64_t *a8@<X7>, void *a9@<X8>)
{
  v165 = a9;
  v198 = sub_197520DAC();
  v186 = *(v198 - 8);
  v18 = MEMORY[0x1EEE9AC00](v198, v17);
  v199 = &v164 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v18, v20);
  v185 = &v164 - v23;
  v24 = 8 * a3;
  v171 = a8;
  if (a3 == 1)
  {
    TupleTypeMetadata = *(a5 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v21, v22);
    v26 = &v164 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a3)
    {
      v27 = 0;
      v28 = a5 & 0xFFFFFFFFFFFFFFFELL;
      if (a3 < 4)
      {
        goto LABEL_9;
      }

      if (&v26[-v28] < 0x20)
      {
        goto LABEL_9;
      }

      v27 = a3 & 0xFFFFFFFFFFFFFFFCLL;
      v29 = (v28 + 16);
      v30 = v26 + 16;
      v31 = a3 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v32 = *v29;
        *(v30 - 1) = *(v29 - 1);
        *v30 = v32;
        v29 += 2;
        v30 += 2;
        v31 -= 4;
      }

      while (v31);
      if (v27 != a3)
      {
LABEL_9:
        v33 = a3 - v27;
        v34 = 8 * v27;
        v35 = &v26[8 * v27];
        v36 = (v28 + v34);
        do
        {
          v37 = *v36++;
          *v35 = v37;
          v35 += 8;
          --v33;
        }

        while (v33);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  v190 = a2;
  v177 = &v164;
  v187 = TupleTypeMetadata;
  v167 = *(TupleTypeMetadata - 8);
  v38 = MEMORY[0x1EEE9AC00](TupleTypeMetadata, v22);
  v192 = &v164 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v200 = a3;
  v194 = (8 * a3);
  v193 = a1;
  v195 = a7;
  *(&v196 + 1) = a5;
  v197 = a6;
  if (a3 == 1)
  {
    swift_getAssociatedTypeWitness();
    v41 = sub_19752119C();
  }

  else
  {
    v43 = a4;
    MEMORY[0x1EEE9AC00](v38, v39);
    if (a3)
    {
      v44 = *(&v196 + 1) & 0xFFFFFFFFFFFFFFFELL;
      v45 = v195 & 0xFFFFFFFFFFFFFFFELL;
      v46 = (&v164 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
      v47 = v200;
      do
      {
        v44 += 8;
        v45 += 8;
        swift_getAssociatedTypeWitness();
        *v46++ = sub_19752119C();
        --v47;
      }

      while (v47);
    }

    a3 = v200;
    v41 = swift_getTupleTypeMetadata();
    v24 = v194;
    a4 = v43;
  }

  v176 = &v164;
  v188 = v41;
  v166 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41, v42);
  v191 = &v164 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_197520C7C();
  v175 = &v164;
  v182 = v49;
  v181 = *(v49 - 8);
  v51 = MEMORY[0x1EEE9AC00](v49, v50);
  v179 = &v164 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v174 = &v164;
  *&v196 = a4;
  v180 = *(a4 - 8);
  v54 = MEMORY[0x1EEE9AC00](v51, v53);
  v56 = &v164 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = &v164;
  MEMORY[0x1EEE9AC00](v54, v57);
  v58 = (&v164 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a3)
  {
    v59 = *(&v196 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v60 = v195 & 0xFFFFFFFFFFFFFFFELL;
    v61 = v58;
    v62 = v200;
    do
    {
      v59 += 8;
      v60 += 8;
      *v61++ = swift_getAssociatedTypeWitness();
      --v62;
    }

    while (v62);
  }

  v63 = v200;
  v64 = sub_19752139C();
  v169 = sub_197521F5C();
  v168 = *(v169 - 8);
  v66 = MEMORY[0x1EEE9AC00](v169, v65);
  v68 = &v164 - v67;
  v172 = &v164;
  v184 = v64;
  v183 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v66, v69);
  v170 = &v164 - v70;
  v203 = v63;
  v204 = v196;
  *&v205 = v197;
  v71 = v195;
  *(&v205 + 1) = v195;
  v72 = sub_197520CFC();
  sub_197520CEC();
  v73 = v179;
  sub_197520C8C();
  v178 = v68;
  v74 = v196;
  v75 = v189;
  sub_197520C9C();
  if (v75)
  {

    (*(v181 + 8))(v73, v182);
    (*(v180 + 8))(v56, v74);
    v76 = v178;
    (*(v183 + 56))(v178, 1, 1, v184);
    (*(v168 + 8))(v76, v169);
    sub_19744BE3C();
    v77 = swift_allocError();
    *v78 = 1;
    *(v78 + 8) = 0xD0000000000000A4;
    *(v78 + 16) = 0x80000001975291F0;
    result = swift_willThrow();
    *v171 = v77;
    return result;
  }

  v189 = v72;
  v197 = 0;
  v80 = v74;
  v81 = v71;
  (*(v181 + 8))(v73, v182);
  (*(v180 + 8))(v56, v80);
  v82 = v183;
  v83 = v178;
  v84 = v184;
  (*(v183 + 56))(v178, 0, 1, v184);
  v85 = (*(v82 + 32))(v170, v83, v84);
  v182 = &v164;
  MEMORY[0x1EEE9AC00](v85, v86);
  v88 = &v164 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!v63)
  {
    sub_19752138C();
    sub_197520CDC();
    v126 = v190;
    v92 = v187;
LABEL_52:
    v155 = v184;
    v156 = v170;
    sub_19752136C();
    v157 = v205;
    __swift_project_boxed_opaque_existential_0Tm(&v203, v205);
    v158 = v197;
    sub_197407AB0(v126, v157, *(*(&v157 + 1) + 8));
    if (v158)
    {
      (*(v183 + 8))(v156, v155);
      __swift_destroy_boxed_opaque_existential_0Tm_0(&v203);
      (*(v167 + 8))(v192, v92);
      result = (*(v166 + 8))(v191, v188);
      *v171 = v158;
    }

    else
    {
      v161 = v159;
      v162 = v160;
      (*(v183 + 8))(v156, v155);
      v163 = v165;
      *v165 = v161;
      *(v163 + 8) = v162 & 1;
      __swift_destroy_boxed_opaque_existential_0Tm_0(&v203);
      (*(v167 + 8))(v192, v92);
      return (*(v166 + 8))(v191, v188);
    }

    return result;
  }

  v89 = 0;
  v90 = 32;
  v91 = v185;
  v92 = v187;
  v93 = v188;
  v94 = v191;
  do
  {
    if (v63 == 1)
    {
      v95 = 0;
    }

    else
    {
      v95 = *(v93 + v90);
    }

    *&v88[8 * v89++] = &v94[v95];
    v90 += 16;
  }

  while (v63 != v89);
  v96 = sub_19752138C();
  MEMORY[0x1EEE9AC00](v96, v97);
  v99 = &v164 - ((v98 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = 0;
  v101 = 32;
  v102 = v192;
  v103 = *(&v196 + 1);
  do
  {
    if (v63 == 1)
    {
      v104 = 0;
    }

    else
    {
      v104 = *(v92 + v101);
    }

    *&v99[8 * v100++] = &v102[v104];
    v101 += 16;
  }

  while (v63 != v100);
  sub_197520CDC();
  v105 = (v103 & 0xFFFFFFFFFFFFFFFELL);
  v106 = (v81 & 0xFFFFFFFFFFFFFFFELL);
  v193 = (v186 + 16);
  v189 = (v186 + 8);
  v107 = 32;
  v108 = v63;
  while (1)
  {
    v195 = v108;
    if (v63 == 1)
    {
      v112 = 0;
    }

    else
    {
      v112 = *(v188 + v107);
    }

    *(&v196 + 1) = v105;
    v113 = *v105;
    *&v196 = v106;
    v114 = *v106;
    swift_getAssociatedTypeWitness();
    v115 = sub_19752119C();
    v194 = &v164;
    v116 = *(v115 - 8);
    MEMORY[0x1EEE9AC00](v115, v117);
    v119 = &v164 - v118;
    (*(v116 + 16))(&v164 - v118, &v191[v112], v115);
    sub_19752118C();
    v120 = (*(v116 + 8))(v119, v115);
    v121 = *(v113 - 8);
    MEMORY[0x1EEE9AC00](v120, v122);
    v124 = &v164 - ((v123 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v121 + 16))(v124, &v192[v125], v113);
    v126 = v190;
    v127 = v197;
    sub_197407EE0(v190, v113, v114);
    v197 = v127;
    if (v127)
    {
      (*(v121 + 8))(v124, v113);
      (*v189)(v91, v198);
      (*(v183 + 8))(v170, v184);
      (*(v167 + 8))(v192, v92);
      result = (*(v166 + 8))(v191, v188);
      *v171 = v197;
      return result;
    }

    v129 = v128;
    (*(v121 + 8))(v124, v113);
    v207 = 0;
    v206 = 0u;
    v205 = 0u;
    v204 = 0u;
    v203 = v129;
    v130 = *v193;
    v131 = v199;
    (*v193)(v199, v91, v198);
    sub_197408378(&v203, v202);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v201 = v126[1];
    v133 = v201;
    v126[1] = 0x8000000000000000;
    v134 = sub_1974079DC(v131);
    v136 = v133[2];
    v137 = (v135 & 1) == 0;
    v138 = __OFADD__(v136, v137);
    v139 = v136 + v137;
    if (v138)
    {
      break;
    }

    v140 = v135;
    if (v133[3] < v139)
    {
      sub_197448648(v139, isUniquelyReferenced_nonNull_native);
      v134 = sub_1974079DC(v199);
      v63 = v200;
      if ((v140 & 1) != (v141 & 1))
      {
        goto LABEL_58;
      }

LABEL_46:
      v142 = v201;
      if (v140)
      {
        goto LABEL_35;
      }

      goto LABEL_47;
    }

    v63 = v200;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_46;
    }

    v154 = v134;
    sub_19747C0E8();
    v134 = v154;
    v142 = v201;
    if (v140)
    {
LABEL_35:
      sub_19744BDE0(v202, v142[7] + (v134 << 6));
      v109 = *v189;
      v110 = v198;
      (*v189)(v199, v198);
      sub_197407F9C(&v203);
      v109(v91, v110);
      goto LABEL_36;
    }

LABEL_47:
    v142[(v134 >> 6) + 8] |= 1 << v134;
    v143 = v186;
    v144 = v134;
    v145 = v198;
    v146 = v199;
    v130(v142[6] + *(v186 + 72) * v134, v199, v198);
    v147 = (v142[7] + (v144 << 6));
    v148 = v202[3];
    v149 = v202[2];
    v150 = v202[1];
    *v147 = v202[0];
    v147[1] = v150;
    v147[2] = v149;
    v147[3] = v148;
    v151 = *(v143 + 8);
    v91 = v185;
    v151(v146, v145);
    sub_197407F9C(&v203);
    v151(v91, v145);
    v152 = v142[2];
    v138 = __OFADD__(v152, 1);
    v153 = v152 + 1;
    if (v138)
    {
      goto LABEL_57;
    }

    v142[2] = v153;
    v92 = v187;
LABEL_36:
    v111 = v195;
    v126[1] = v142;

    v107 += 16;
    v106 = (v196 + 8);
    v105 = (*(&v196 + 1) + 8);
    v108 = v111 - 1;
    if (!v108)
    {
      goto LABEL_52;
    }
  }

  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  result = sub_1975229CC();
  __break(1u);
  return result;
}

void sub_1974E4924(uint64_t *a1, void *a2)
{
  v5 = MEMORY[0x19A8E1370]();
  sub_1974E49C0(v2, a1, a2[2], a2[3], a2[4], a2[5], a2[6], a2[7], &v6, &v7);
  objc_autoreleasePoolPop(v5);
}

uint64_t sub_1974E49C0@<X0>(void **a1@<X0>, uint64_t *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void **a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, void *a9@<X8>, uint64_t *a10)
{
  v196 = a7;
  v181 = a6;
  *&v195 = a4;
  v197 = sub_197520DAC();
  v184 = *(v197 - 8);
  v18 = MEMORY[0x1EEE9AC00](v197, v17);
  v198 = &v163 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v18, v20);
  v24 = &v163 - v23;
  v25 = 8 * a3;
  v163 = a9;
  v189 = v10;
  if (a3 == 1)
  {
    TupleTypeMetadata = *(a5 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v21, v22);
    v27 = &v163 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a3)
    {
      v28 = 0;
      v29 = a5 & 0xFFFFFFFFFFFFFFFELL;
      if (a3 < 4)
      {
        goto LABEL_9;
      }

      if (&v27[-v29] < 0x20)
      {
        goto LABEL_9;
      }

      v28 = a3 & 0xFFFFFFFFFFFFFFFCLL;
      v30 = (v29 + 16);
      v31 = v27 + 16;
      v32 = a3 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v33 = *v30;
        *(v31 - 1) = *(v30 - 1);
        *v31 = v33;
        v30 += 2;
        v31 += 2;
        v32 -= 4;
      }

      while (v32);
      if (v28 != a3)
      {
LABEL_9:
        v34 = a3 - v28;
        v35 = 8 * v28;
        v36 = &v27[8 * v28];
        v37 = (v29 + v35);
        do
        {
          v38 = *v37++;
          *v36 = v38;
          v36 += 8;
          --v34;
        }

        while (v34);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  v185 = v24;
  v190 = a2;
  v188 = TupleTypeMetadata;
  v165 = *(TupleTypeMetadata - 8);
  v39 = MEMORY[0x1EEE9AC00](TupleTypeMetadata, v22);
  v186 = &v163 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v199 = a3;
  v192 = (8 * a3);
  v171 = &v163;
  v194 = a8;
  v193 = a1;
  *(&v195 + 1) = a5;
  if (a3 == 1)
  {
    swift_getAssociatedTypeWitness();
    v42 = sub_19752119C();
  }

  else
  {
    MEMORY[0x1EEE9AC00](v39, v40);
    if (a3)
    {
      v44 = *(&v195 + 1) & 0xFFFFFFFFFFFFFFFELL;
      v45 = v194 & 0xFFFFFFFFFFFFFFFELL;
      v46 = (&v163 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
      v47 = v199;
      do
      {
        v44 += 8;
        v45 += 8;
        swift_getAssociatedTypeWitness();
        *v46++ = sub_19752119C();
        --v47;
      }

      while (v47);
    }

    a3 = v199;
    v42 = swift_getTupleTypeMetadata();
    v25 = v192;
  }

  v48 = v195;
  v175 = &v163;
  v168 = a10;
  v187 = v42;
  v164 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42, v43);
  v191 = &v163 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_197520C7C();
  v174 = &v163;
  v180 = v50;
  v179 = *(v50 - 8);
  v52 = MEMORY[0x1EEE9AC00](v50, v51);
  v177 = &v163 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = &v163;
  v178 = *(v48 - 8);
  v55 = MEMORY[0x1EEE9AC00](v52, v54);
  v176 = &v163 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v172 = &v163;
  MEMORY[0x1EEE9AC00](v55, v57);
  v58 = (&v163 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a3)
  {
    v59 = *(&v195 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v60 = v194 & 0xFFFFFFFFFFFFFFFELL;
    v61 = v58;
    v62 = v199;
    do
    {
      v59 += 8;
      v60 += 8;
      *v61++ = swift_getAssociatedTypeWitness();
      --v62;
    }

    while (v62);
  }

  v63 = v199;
  v64 = v181;
  v65 = sub_197520B3C();
  v167 = sub_197521F5C();
  v166 = *(v167 - 8);
  v67 = MEMORY[0x1EEE9AC00](v167, v66);
  v69 = &v163 - v68;
  v170 = &v163;
  v183 = v65;
  v182 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v67, v70);
  v169 = &v163 - v71;
  v72 = v195;
  v202 = v63;
  v203 = v195;
  *&v204 = v64;
  v73 = v194;
  *(&v204 + 1) = v196;
  *&v205 = v194;
  sub_197520F7C();
  v74 = v176;
  sub_197520F5C();
  v75 = v177;
  sub_197520C8C();
  v181 = v69;
  v76 = v189;
  sub_197520C9C();
  if (v76)
  {

    (*(v179 + 8))(v75, v180);
    (*(v178 + 8))(v74, v72);
    v77 = v181;
    (*(v182 + 56))(v181, 1, 1, v183);
    (*(v166 + 8))(v77, v167);
    sub_19744BE3C();
    v78 = swift_allocError();
    *v79 = 1;
    *(v79 + 8) = 0xD0000000000000A6;
    *(v79 + 16) = 0x8000000197529140;
    result = swift_willThrow();
    *v168 = v78;
    return result;
  }

  v196 = 0;
  v81 = *(&v195 + 1);
  (*(v179 + 8))(v75, v180);
  (*(v178 + 8))(v74, v72);
  v82 = v182;
  v83 = v181;
  v84 = v183;
  (*(v182 + 56))(v181, 0, 1, v183);
  v85 = (*(v82 + 32))(v169, v83, v84);
  v181 = &v163;
  MEMORY[0x1EEE9AC00](v85, v86);
  v88 = &v163 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = v185;
  if (!v63)
  {
    sub_197520B2C();
    sub_197520F6C();
    v125 = v190;
LABEL_52:
    v154 = v183;
    v155 = v169;
    sub_197520B1C();
    v156 = v204;
    __swift_project_boxed_opaque_existential_0Tm(&v202, v204);
    v157 = v196;
    sub_197407AB0(v125, v156, *(*(&v156 + 1) + 8));
    if (v157)
    {
      (*(v182 + 8))(v155, v154);
      __swift_destroy_boxed_opaque_existential_0Tm_0(&v202);
      (*(v165 + 8))(v186, v188);
      result = (*(v164 + 8))(v191, v187);
      *v168 = v157;
    }

    else
    {
      v160 = v158;
      v161 = v159;
      (*(v182 + 8))(v155, v154);
      v162 = v163;
      *v163 = v160;
      *(v162 + 8) = v161 & 1;
      __swift_destroy_boxed_opaque_existential_0Tm_0(&v202);
      (*(v165 + 8))(v186, v188);
      return (*(v164 + 8))(v191, v187);
    }

    return result;
  }

  v90 = 0;
  v91 = 32;
  v92 = v186;
  v93 = v187;
  v94 = v191;
  do
  {
    if (v63 == 1)
    {
      v95 = 0;
    }

    else
    {
      v95 = *(v93 + v91);
    }

    *&v88[8 * v90++] = &v94[v95];
    v91 += 16;
  }

  while (v63 != v90);
  v96 = sub_197520B2C();
  MEMORY[0x1EEE9AC00](v96, v97);
  v99 = &v163 - ((v98 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = 0;
  v101 = 32;
  v102 = v188;
  do
  {
    if (v63 == 1)
    {
      v103 = 0;
    }

    else
    {
      v103 = *(v102 + v101);
    }

    *&v99[8 * v100++] = &v92[v103];
    v101 += 16;
  }

  while (v63 != v100);
  sub_197520F6C();
  v104 = (v81 & 0xFFFFFFFFFFFFFFFELL);
  v105 = (v73 & 0xFFFFFFFFFFFFFFFELL);
  v192 = (v184 + 16);
  v189 = (v184 + 8);
  v106 = 32;
  v107 = v63;
  while (1)
  {
    v194 = v107;
    if (v63 == 1)
    {
      v111 = 0;
    }

    else
    {
      v111 = *(v187 + v106);
    }

    *(&v195 + 1) = v104;
    v112 = *v104;
    *&v195 = v105;
    v113 = *v105;
    swift_getAssociatedTypeWitness();
    v114 = sub_19752119C();
    v193 = &v163;
    v115 = *(v114 - 8);
    MEMORY[0x1EEE9AC00](v114, v116);
    v118 = &v163 - v117;
    (*(v115 + 16))(&v163 - v117, &v191[v111], v114);
    sub_19752118C();
    v119 = (*(v115 + 8))(v118, v114);
    v120 = *(v112 - 8);
    MEMORY[0x1EEE9AC00](v119, v121);
    v123 = &v163 - ((v122 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v120 + 16))(v123, &v92[v124], v112);
    v125 = v190;
    v126 = v196;
    sub_197407EE0(v190, v112, v113);
    v196 = v126;
    if (v126)
    {
      (*(v120 + 8))(v123, v112);
      (*v189)(v89, v197);
      (*(v182 + 8))(v169, v183);
      (*(v165 + 8))(v92, v188);
      result = (*(v164 + 8))(v191, v187);
      *v168 = v196;
      return result;
    }

    v128 = v127;
    (*(v120 + 8))(v123, v112);
    v206 = 0;
    v205 = 0u;
    v204 = 0u;
    v203 = 0u;
    v202 = v128;
    v129 = *v192;
    v130 = v198;
    (*v192)(v198, v89, v197);
    sub_197408378(&v202, v201);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v200 = v125[1];
    v132 = v200;
    v125[1] = 0x8000000000000000;
    v133 = sub_1974079DC(v130);
    v135 = v132[2];
    v136 = (v134 & 1) == 0;
    v137 = __OFADD__(v135, v136);
    v138 = v135 + v136;
    if (v137)
    {
      break;
    }

    v139 = v134;
    if (v132[3] < v138)
    {
      sub_197448648(v138, isUniquelyReferenced_nonNull_native);
      v133 = sub_1974079DC(v198);
      v63 = v199;
      if ((v139 & 1) != (v140 & 1))
      {
        goto LABEL_58;
      }

LABEL_46:
      v141 = v200;
      if (v139)
      {
        goto LABEL_35;
      }

      goto LABEL_47;
    }

    v63 = v199;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_46;
    }

    v153 = v133;
    sub_19747C0E8();
    v133 = v153;
    v141 = v200;
    if (v139)
    {
LABEL_35:
      sub_19744BDE0(v201, v141[7] + (v133 << 6));
      v108 = *v189;
      v109 = v197;
      (*v189)(v198, v197);
      sub_197407F9C(&v202);
      v108(v89, v109);
      goto LABEL_36;
    }

LABEL_47:
    v141[(v133 >> 6) + 8] |= 1 << v133;
    v142 = v184;
    v143 = v133;
    v145 = v197;
    v144 = v198;
    v129(v141[6] + *(v184 + 72) * v133, v198, v197);
    v146 = (v141[7] + (v143 << 6));
    v147 = v201[3];
    v148 = v201[2];
    v149 = v201[1];
    *v146 = v201[0];
    v146[1] = v149;
    v146[2] = v148;
    v146[3] = v147;
    v150 = *(v142 + 8);
    v89 = v185;
    v150(v144, v145);
    sub_197407F9C(&v202);
    v150(v89, v145);
    v151 = v141[2];
    v137 = __OFADD__(v151, 1);
    v152 = v151 + 1;
    if (v137)
    {
      goto LABEL_57;
    }

    v141[2] = v152;
    v92 = v186;
LABEL_36:
    v110 = v194;
    v125[1] = v141;

    v106 += 16;
    v105 = (v195 + 8);
    v104 = (*(&v195 + 1) + 8);
    v107 = v110 - 1;
    if (!v107)
    {
      goto LABEL_52;
    }
  }

  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  result = sub_1975229CC();
  __break(1u);
  return result;
}

void sub_1974E5C40(uint64_t (*a1)(void, void *)@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X6>, uint64_t (*a8)(void, void *)@<X7>, uint64_t a9@<X8>, void (*a10)(void), void (*a11)(uint64_t), SEL *a12)
{
  v45 = a8;
  v43 = a7;
  v39 = a9;
  v38 = *(a4 - 8);
  v44 = a10;
  v18 = MEMORY[0x1EEE9AC00](a1, a2);
  v41 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v18, v22);
  v24 = &v38 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2BAC0, &unk_197531960);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_197530980;
  v46[0] = a3;
  v46[1] = a4;
  v40 = a4;
  v46[2] = a5;
  v46[3] = a6;
  v42 = a6;
  v26 = v45(0, v46);
  v45 = a1;
  v44();
  v27 = v46[5];
  sub_197407C0C(a2, a3, a5);
  v29 = v28;
  (*(v21 + 8))(v24, a3);
  if (v27)
  {
    *(v25 + 16) = 0;

    *v43 = v27;
  }

  else
  {
    v31 = v38;
    v30 = v39;
    *(v25 + 32) = v29;
    v32 = v41;
    a11(v26);
    v33 = v40;
    sub_197407C0C(a2, v40, v42);
    v35 = v34;
    (*(v31 + 8))(v32, v33);
    *(v25 + 40) = v35;
    sub_197408568(0, &qword_1ED7C7C90, 0x1E696AE18);
    v36 = sub_1975219BC();

    v37 = [objc_opt_self() *a12];

    *v30 = v37;
    *(v30 + 8) = 1;
  }
}

void sub_1974E5F50(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X7>, uint64_t a7@<X8>, uint64_t a8, void (*a9)(void), void (*a10)(uint64_t), uint64_t a11)
{
  v45 = a6;
  v40 = a7;
  v43 = *(a4 - 8);
  v15 = MEMORY[0x1EEE9AC00](a1, a2);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v15, v20);
  v22 = &v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46[0] = v23;
  v46[1] = v24;
  v42 = v24;
  v46[2] = v25;
  v46[3] = v26;
  v44 = v26;
  v46[4] = v27;
  v29 = v28(0, v46);
  v41 = a1;
  a9();
  v30 = a2;
  v31 = v46[6];
  sub_197407EE0(a2, a3, a5);
  v33 = v32;
  (*(v19 + 8))(v22, a3);
  if (v31)
  {
    *v45 = v31;
  }

  else
  {
    v34 = v40;
    a10(v29);
    v35 = v42;
    sub_197407EE0(v30, v42, v44);
    v37 = v36;
    (*(v43 + 8))(v17, v35);
    v38 = [objc_allocWithZone(MEMORY[0x1E696AB18]) initWithLeftExpression:v33 rightExpression:v37 modifier:0 type:a11 options:0];

    *v34 = v38;
    *(v34 + 8) = 1;
  }
}

void sub_1974E61C0(uint64_t a1, void *a2, void (*a3)(uint64_t *__return_ptr, uint64_t, uint64_t, void, void, void, void, void, uint64_t *))
{
  v7 = MEMORY[0x19A8E1370]();
  a3(&v9, v3, a1, a2[2], a2[3], a2[4], a2[5], a2[6], &v8);
  objc_autoreleasePoolPop(v7);
}

void sub_1974E6260(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, void *a8@<X7>, void *a9@<X8>)
{
  v53 = a8;
  v54 = a7;
  v62 = a2;
  v48 = a9;
  v51 = *(a4 - 8);
  v13 = MEMORY[0x1EEE9AC00](a1, a2);
  v49 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v13, v17);
  v19 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_197520F3C();
  v22 = MEMORY[0x1EEE9AC00](v20, v21);
  v47 = &v46 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v24);
  v26 = &v46 - v25;
  v57 = a3;
  v58 = a4;
  v52 = a4;
  v55 = a5;
  v59 = a5;
  v60 = a6;
  v50 = a6;
  v28 = v27;
  v61 = v54;
  sub_197520D3C();
  sub_197520D0C();
  v29 = (*(v28 + 88))(v26, v20);
  if (v29 == *MEMORY[0x1E6968C10])
  {
    v54 = 0xE700000000000000;
    v30 = 0x3A6F743A646461;
LABEL_5:
    v47 = v30;
    goto LABEL_8;
  }

  if (v29 == *MEMORY[0x1E6968C20])
  {
    v54 = 0xEE003A7463617274;
    v30 = 0x6275733A6D6F7266;
    goto LABEL_5;
  }

  if (v29 != *MEMORY[0x1E6968C18])
  {
    v57 = 0;
    v58 = 0xE000000000000000;
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD000000000000029, 0x8000000197529110);
    v45 = v47;
    sub_197520D0C();
    sub_19752235C();
    (*(v28 + 8))(v45, v20);
    sub_1975223EC();
    __break(1u);
    return;
  }

  v54 = 0xEC0000003A79623ALL;
  v47 = 0x796C7069746C756DLL;
LABEL_8:
  v31 = v62;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AF58, &qword_1975319E0);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_19752F3D0;
  sub_197520D1C();
  v33 = v56;
  sub_197407EE0(v31, a3, v55);
  v35 = v34;
  (*(v16 + 8))(v19, a3);
  if (v33)
  {

    *(v32 + 16) = 0;

    *v53 = v33;
  }

  else
  {
    v36 = sub_197408568(0, &qword_1EAF2AA78, 0x1E696ABC8);
    *(v32 + 56) = v36;
    *(v32 + 32) = v35;
    v37 = v49;
    sub_197520D2C();
    v38 = v52;
    sub_197407EE0(v31, v52, v50);
    v40 = v39;
    (*(v51 + 8))(v37, v38);
    *(v32 + 88) = v36;
    *(v32 + 64) = v40;
    v41 = sub_19752178C();

    v42 = sub_1975219BC();

    v43 = [objc_opt_self() expressionForFunction:v41 arguments:v42];

    v44 = v48;
    *v48 = v43;
    *(v44 + 8) = 0;
  }
}

void sub_1974E6818(uint64_t a1, void *a2, void (*a3)(uint64_t *__return_ptr, uint64_t, uint64_t, void, void, void, uint64_t *))
{
  v7 = MEMORY[0x19A8E1370]();
  a3(&v9, v3, a1, a2[2], a2[3], a2[4], &v8);
  objc_autoreleasePoolPop(v7);
}

void sub_1974E68B4(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a6@<X5>, void *a7@<X8>)
{
  v25 = a7;
  v26 = a6;
  v11 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AF58, &qword_1975319E0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_19752F3D0;
  sub_197520D9C();
  sub_197520D8C();
  sub_197407EE0(a2, a3, a4);
  if (v7)
  {
    (*(v11 + 8))(v13, a3);
    *(v14 + 16) = 0;

    *v26 = v7;
  }

  else
  {
    v16 = v15;
    (*(v11 + 8))(v13, a3);
    v17 = sub_197408568(0, &qword_1EAF2AA78, 0x1E696ABC8);
    *(v14 + 56) = v17;
    *(v14 + 32) = v16;
    v27 = -1;
    v18 = sub_1975229AC();
    v19 = objc_opt_self();
    v20 = [v19 expressionForConstantValue_];
    swift_unknownObjectRelease();
    *(v14 + 88) = v17;
    *(v14 + 64) = v20;
    v21 = sub_19752178C();
    v22 = sub_1975219BC();

    v23 = [v19 expressionForFunction:v21 arguments:v22];

    v24 = v25;
    *v25 = v23;
    *(v24 + 8) = 0;
  }
}

void sub_1974E6B74(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X7>, void *a9@<X8>)
{
  v52 = a8;
  v53 = a7;
  v61 = a2;
  v47 = a9;
  v51 = *(a4 - 8);
  v13 = MEMORY[0x1EEE9AC00](a1, a2);
  v49 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v13, v17);
  v19 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_197520F4C();
  v22 = MEMORY[0x1EEE9AC00](v20, v21);
  v46 = &v45 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v24);
  v26 = &v45 - v25;
  v56 = a3;
  v57 = a4;
  v48 = a4;
  v54 = a5;
  v58 = a5;
  v59 = a6;
  v28 = v27;
  v50 = a6;
  v60 = v53;
  sub_197520D7C();
  sub_197520D4C();
  v29 = (*(v28 + 88))(v26, v20);
  v30 = 0;
  if (v29 != *MEMORY[0x1E6968C40])
  {
    if (v29 == *MEMORY[0x1E6968C30])
    {
      v30 = 1;
    }

    else if (v29 == *MEMORY[0x1E6968C28])
    {
      v30 = 2;
    }

    else
    {
      if (v29 != *MEMORY[0x1E6968C38])
      {
        v56 = 0;
        v57 = 0xE000000000000000;
        sub_1975221EC();
        MEMORY[0x19A8DFF80](0xD000000000000029, 0x8000000197529110);
        v44 = v46;
        sub_197520D4C();
        sub_19752235C();
        (*(v28 + 8))(v44, v20);
        sub_1975223EC();
        __break(1u);
        return;
      }

      v30 = 3;
    }
  }

  v31 = v30;
  sub_197520D5C();
  v32 = v61;
  v33 = v55;
  sub_197407EE0(v61, a3, v54);
  v35 = v34;
  (*(v16 + 8))(v19, a3);
  if (v33)
  {
    *v52 = v33;
  }

  else
  {
    v36 = v35;
    v37 = v49;
    sub_197520D6C();
    v38 = v32;
    v39 = v48;
    sub_197407EE0(v38, v48, v50);
    v41 = v40;
    (*(v51 + 8))(v37, v39);
    v42 = [objc_allocWithZone(MEMORY[0x1E696AB18]) initWithLeftExpression:v36 rightExpression:v41 modifier:0 type:v31 options:0];

    v43 = v47;
    *v47 = v42;
    *(v43 + 8) = 1;
  }
}

void sub_1974E6FEC(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v6 = MEMORY[0x19A8E1370]();
  sub_1974E7080(v3, a1, *(a2 + 16), *(a2 + 24), &v8, &v7);
  objc_autoreleasePoolPop(v6);
}

void sub_1974E7080(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v12 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_19752117C();
  sub_19752116C();
  sub_197407C0C(a2, a3, a4);
  v16 = v15;
  (*(v12 + 8))(v14, a3);
  if (v6)
  {
    *a5 = v6;
  }

  else
  {
    v17 = [objc_opt_self() notPredicateWithSubpredicate_];

    *a6 = v17;
    *(a6 + 8) = 1;
  }
}

void sub_1974E7208(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X7>, void *a9@<X8>)
{
  v47 = a8;
  v60 = a6;
  v51 = a2;
  v52 = a1;
  v43 = a9;
  v44 = *(a4 - 8);
  v13 = MEMORY[0x1EEE9AC00](a1, a2);
  v45 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v13, v16);
  v49 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_197520DAC();
  v18 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50, v19);
  v21 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = a5;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  v22 = sub_19752119C();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22, v24);
  v26 = &v42 - v25;
  v55 = a3;
  v56 = a4;
  v46 = a4;
  v57 = a5;
  v58 = v60;
  v59 = a7;
  sub_19752110C();
  sub_1975210FC();
  sub_19752118C();
  (*(v23 + 8))(v26, v22);
  v27 = v52;
  v28 = sub_1974DEDF8(v21);
  (*(v18 + 8))(v21, v50);
  v29 = a3;
  v30 = v49;
  sub_1975210EC();
  v31 = v54;
  sub_197407EE0(v27, v29, v48);
  if (v31)
  {
    (*(v53 + 8))(v30, v29);

    *v47 = v31;
  }

  else
  {
    v54 = v32;
    v50 = v28;
    (*(v53 + 8))(v30, v29);
    v33 = v45;
    sub_1975210DC();
    v34 = v46;
    sub_197407C0C(v27, v46, v60);
    v36 = v35;
    (*(v44 + 8))(v33, v34);
    v37 = sub_19752178C();

    v38 = objc_opt_self();
    v39 = v54;
    v40 = [v38 expressionForSubquery:v54 usingIteratorVariable:v37 predicate:v36];

    v41 = v43;
    *v43 = v40;
    *(v41 + 8) = 0;
  }
}

void sub_1974E76CC(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X6>, void *a8@<X7>, uint64_t a9@<X8>)
{
  v41 = a8;
  v42 = a7;
  v37 = a9;
  v36 = *(a4 - 8);
  v15 = MEMORY[0x1EEE9AC00](a1, a2);
  v39 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v15, v19);
  v21 = &v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AF58, &qword_1975319E0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_19752F3D0;
  v43 = a3;
  v44 = a4;
  v45 = a5;
  v46 = a6;
  v40 = a6;
  v47 = v42;
  v23 = sub_197520E9C();
  v38 = a1;
  MEMORY[0x19A8DF5A0]();
  v42 = a2;
  v24 = v48;
  sub_197407EE0(a2, a3, a5);
  v26 = v25;
  (*(v18 + 8))(v21, a3);
  if (v24)
  {
    *(v22 + 16) = 0;

    *v41 = v24;
  }

  else
  {
    v28 = v36;
    v27 = v37;
    v29 = sub_197408568(0, &qword_1EAF2AA78, 0x1E696ABC8);
    *(v22 + 56) = v29;
    *(v22 + 32) = v26;
    v30 = v39;
    MEMORY[0x19A8DF5B0](v23);
    sub_197407EE0(v42, a4, v40);
    v32 = v31;
    (*(v28 + 8))(v30, a4);
    *(v22 + 88) = v29;
    *(v22 + 64) = v32;
    v33 = sub_19752178C();
    v34 = sub_1975219BC();

    v35 = [objc_opt_self() expressionForFunction:v33 arguments:v34];

    *v27 = v35;
    *(v27 + 8) = 0;
  }
}

id sub_1974E7A20(uint64_t *a1, void *a2)
{
  v30 = a2[3];
  v27 = *(v30 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1, a2);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 + 16);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v6, v9);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AF58, &qword_1975319E0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_19752F3D0;
  v28 = v2;
  MEMORY[0x19A8DF580](a2);
  v15 = a2[4];
  v29 = a1;
  sub_197407EE0(a1, v10, v15);
  v17 = v16;
  (*(v11 + 8))(v13, v10);
  if (v3)
  {
    *(v14 + 16) = 0;
  }

  else
  {
    v18 = v27;
    v19 = sub_197408568(0, &qword_1EAF2AA78, 0x1E696ABC8);
    *(v14 + 56) = v19;
    *(v14 + 32) = v17;
    MEMORY[0x19A8DF590](a2);
    v20 = v30;
    sub_197407EE0(v29, v30, a2[5]);
    v23 = v22;
    (*(v18 + 8))(v8, v20);
    *(v14 + 88) = v19;
    *(v14 + 64) = v23;
    v24 = sub_19752178C();
    v25 = sub_1975219BC();

    v17 = [objc_opt_self() expressionForFunction:v24 arguments:v25];
  }

  return v17;
}

id sub_1974E7D04(uint64_t *a1, void *a2)
{
  result = sub_1974E7A20(a1, a2);
  if (v2)
  {
    return v4;
  }

  return result;
}

void sub_1974E7D28(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X7>, uint64_t a9@<X8>)
{
  v40 = a8;
  v41 = a7;
  v36 = a9;
  v35 = *(a4 - 8);
  v15 = MEMORY[0x1EEE9AC00](a1, a2);
  v38 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v15, v19);
  v21 = &v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2BAC0, &unk_197531960);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_197530980;
  v42 = a3;
  v43 = a4;
  v37 = a4;
  v44 = a5;
  v45 = a6;
  v39 = a6;
  v46 = v41;
  v23 = sub_197520DDC();
  v41 = a1;
  MEMORY[0x19A8DF4E0]();
  v24 = v47;
  sub_197407EE0(a2, a3, a5);
  v26 = v25;
  (*(v18 + 8))(v21, a3);
  if (v24)
  {
    *(v22 + 16) = 0;

    *v40 = v24;
  }

  else
  {
    v28 = v35;
    v27 = v36;
    *(v22 + 32) = v26;
    v29 = v38;
    MEMORY[0x19A8DF4F0](v23);
    v30 = v37;
    sub_197407EE0(a2, v37, v39);
    v32 = v31;
    (*(v28 + 8))(v29, v30);
    *(v22 + 40) = v32;
    sub_197408568(0, &qword_1EAF2AA78, 0x1E696ABC8);
    v33 = sub_1975219BC();

    v34 = [objc_opt_self() expressionForAggregate_];

    *v27 = v34;
    *(v27 + 8) = 0;
  }
}

void sub_1974E804C(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X8>, void *a7)
{
  v39 = a6;
  v42 = *(a3 - 8);
  v12 = MEMORY[0x1EEE9AC00](a1, a2);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v12, v17);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = v20;
  v45 = v21;
  v43 = v22;
  v46 = v22;
  v47 = v23;
  v48 = v24;
  v49 = v25;
  v26 = sub_197520F2C();
  v40 = a1;
  sub_197520F0C();
  v41 = a2;
  v27 = v50;
  sub_197407EE0(a2, a4, a5);
  v29 = v28;
  (*(v16 + 8))(v19, a4);
  if (v27)
  {
    *a7 = v27;
  }

  else
  {
    v30 = v39;
    MEMORY[0x19A8DF640](v26);
    sub_197407EE0(v41, a3, v43);
    v32 = v31;
    (*(v42 + 8))(v14, a3);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v34 = swift_conformsToProtocol2();
    if (AssociatedTypeWitness)
    {
      v35 = v34 == 0;
    }

    else
    {
      v35 = 1;
    }

    if (v35)
    {
      v36 = 10;
    }

    else
    {
      v36 = 100;
    }

    v37 = [objc_allocWithZone(MEMORY[0x1E696AB18]) initWithLeftExpression:v29 rightExpression:v32 modifier:0 type:v36 options:0];

    *v30 = v37;
    *(v30 + 8) = 1;
  }
}

uint64_t sub_1974E82F0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 32);
  a2[3] = *(a1 + 16);
  a2[4] = v3;
  __swift_allocate_boxed_opaque_existential_0Tm(a2);
  return MEMORY[0x19A8DF7C0](a1);
}

uint64_t sub_1974E8330@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 40);
  a2[3] = *(a1 + 24);
  a2[4] = v3;
  __swift_allocate_boxed_opaque_existential_0Tm(a2);
  return MEMORY[0x19A8DF7D0](a1);
}

uint64_t sub_1974E8378@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v84 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v74 = sub_19752237C();
  v69 = *(v74 - 8);
  v7 = MEMORY[0x1EEE9AC00](v74, v6);
  v70 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v9);
  v73 = &v68 - v10;
  v78 = sub_19752247C();
  v71 = *(v78 - 8);
  v12 = MEMORY[0x1EEE9AC00](v78, v11);
  v72 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v14);
  v77 = &v68 - v15;
  v82 = sub_19752236C();
  v75 = *(v82 - 8);
  v17 = MEMORY[0x1EEE9AC00](v82, v16);
  v76 = &v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v19);
  v81 = &v68 - v20;
  v21 = sub_19752172C();
  v79 = *(v21 - 8);
  v23 = MEMORY[0x1EEE9AC00](v21, v22);
  v80 = &v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v25);
  v27 = &v68 - v26;
  v28 = sub_197521D4C();
  v29 = *(v28 - 8);
  v31 = MEMORY[0x1EEE9AC00](v28, v30);
  v33 = &v68 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x1EEE9AC00](v31, v34);
  v37 = &v68 - v36;
  MEMORY[0x1EEE9AC00](v35, v38);
  v40 = &v68 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = v41;
  (*(v41 + 16))(v40, v83, a1);
  if (swift_dynamicCast())
  {
    (*(v29 + 32))(v33, v37, v28);
    v42 = v84;
    *(v84 + 24) = AssociatedTypeWitness;
    *(v42 + 32) = AssociatedConformanceWitness;
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v42);
    v44 = *(*(AssociatedTypeWitness - 8) + 32);
    v44(boxed_opaque_existential_0Tm, v33, AssociatedTypeWitness);
    v45 = *(v28 + 36);
    *(v42 + 64) = AssociatedTypeWitness;
    *(v42 + 72) = AssociatedConformanceWitness;
    v46 = __swift_allocate_boxed_opaque_existential_0Tm((v42 + 40));
    v44(v46, &v33[v45], AssociatedTypeWitness);
    *(v42 + 80) = 0;
  }

  else
  {
    v47 = v84;
    if (swift_dynamicCast())
    {
      v48 = v80;
      (*(v79 + 32))(v80, v27, v21);
      v49 = v47;
      *(v47 + 24) = AssociatedTypeWitness;
      *(v47 + 32) = AssociatedConformanceWitness;
      v50 = __swift_allocate_boxed_opaque_existential_0Tm(v47);
      v51 = *(*(AssociatedTypeWitness - 8) + 32);
      v51(v50, v48, AssociatedTypeWitness);
      v52 = *(v21 + 36);
      *(v49 + 64) = AssociatedTypeWitness;
      *(v49 + 72) = AssociatedConformanceWitness;
      v53 = __swift_allocate_boxed_opaque_existential_0Tm((v49 + 40));
      v51(v53, &v48[v52], AssociatedTypeWitness);
      *(v49 + 80) = 1;
    }

    else
    {
      v55 = v81;
      v54 = v82;
      if (swift_dynamicCast())
      {
        v56 = v76;
        (*(v75 + 32))(v76, v55, v54);
        *(v47 + 24) = AssociatedTypeWitness;
        *(v47 + 32) = AssociatedConformanceWitness;
        v57 = __swift_allocate_boxed_opaque_existential_0Tm(v47);
        (*(*(AssociatedTypeWitness - 8) + 32))(v57, v56, AssociatedTypeWitness);
        v58 = 2;
      }

      else
      {
        v60 = v77;
        v59 = v78;
        if (swift_dynamicCast())
        {
          v61 = v72;
          (*(v71 + 32))(v72, v60, v59);
          *(v47 + 24) = AssociatedTypeWitness;
          *(v47 + 32) = AssociatedConformanceWitness;
          v62 = __swift_allocate_boxed_opaque_existential_0Tm(v47);
          (*(*(AssociatedTypeWitness - 8) + 32))(v62, v61, AssociatedTypeWitness);
          v58 = 3;
        }

        else
        {
          v64 = v73;
          v63 = v74;
          if (swift_dynamicCast())
          {
            v65 = v70;
            (*(v69 + 32))(v70, v64, v63);
            *(v47 + 24) = AssociatedTypeWitness;
            *(v47 + 32) = AssociatedConformanceWitness;
            v66 = __swift_allocate_boxed_opaque_existential_0Tm(v47);
            (*(*(AssociatedTypeWitness - 8) + 32))(v66, v65, AssociatedTypeWitness);
            v58 = 4;
          }

          else
          {
            *(v47 + 48) = 0u;
            *(v47 + 64) = 0u;
            *(v47 + 16) = 0u;
            *(v47 + 32) = 0u;
            *v47 = 0u;
            v58 = -1;
          }
        }
      }

      *(v47 + 80) = v58;
    }
  }

  return (*(v85 + 8))(v40, a1);
}

uint64_t sub_1974E8AEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1, a2);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x19A8DF7E0](v6);
  sub_1974E8378(v4, a3);
  return (*(v5 + 8))(v8, v4);
}

void sub_1974E8BD0(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, void *a6@<X7>, void *a7@<X8>)
{
  v48 = a6;
  v39 = a7;
  v43 = *(a3 - 8);
  v11 = MEMORY[0x1EEE9AC00](a1, a2);
  v13 = v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v11, v14);
  v17 = MEMORY[0x1EEE9AC00](v15, v16);
  v41 = v38 - v18;
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v17, v21);
  v23 = v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = v24;
  v50 = v24;
  v51 = v25;
  v44 = v26;
  v52 = v26;
  v53 = v27;
  v40 = v28;
  *&v54 = v28;
  v45 = sub_19752105C();
  v46 = a1;
  MEMORY[0x19A8DF770]();
  v42 = a2;
  v29 = v49;
  sub_197407EE0(a2, a4, a5);
  if (v29)
  {
    (*(v20 + 8))(v23, a4);
    *v48 = v29;
  }

  else
  {
    v38[0] = a5;
    v38[1] = v13;
    v49 = v30;
    (*(v20 + 8))(v23, a4);
    v31 = v41;
    MEMORY[0x19A8DF760](v45);
    sub_197407EE0(v42, v47, v44);
    v33 = v32;
    (*(v43 + 8))(v31, v47);
    v34 = objc_allocWithZone(MEMORY[0x1E696AB18]);
    v35 = v49;
    v36 = [v34 initWithLeftExpression:v49 rightExpression:v33 modifier:0 type:100 options:0];

    v37 = v39;
    *v39 = v36;
    *(v37 + 8) = 1;
  }
}

void sub_1974E9B74(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X7>, void *a9@<X8>)
{
  v52 = a8;
  v61 = a6;
  v56 = a2;
  v57 = a1;
  v48 = a9;
  v49 = *(a4 - 8);
  v13 = MEMORY[0x1EEE9AC00](a1, a2);
  v50 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v13, v16);
  v54 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_197520DAC();
  v18 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55, v19);
  v21 = &v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = a5;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  v22 = sub_19752119C();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22, v24);
  v26 = &v47 - v25;
  v60[0] = a3;
  v60[1] = a4;
  v51 = a4;
  v60[2] = a5;
  v60[3] = v61;
  v60[4] = a7;
  v27 = sub_19752102C();
  sub_197520FAC();
  sub_19752118C();
  (*(v23 + 8))(v26, v22);
  v28 = v57;
  v29 = sub_1974DEDF8(v21);
  (*(v18 + 8))(v21, v55);
  v30 = a3;
  v31 = v54;
  MEMORY[0x19A8DF730](v27);
  v32 = v59;
  sub_197407EE0(v28, v30, v53);
  if (v32)
  {
    (*(v58 + 8))(v31, v30);

    *v52 = v32;
  }

  else
  {
    v59 = v33;
    v55 = v29;
    (*(v58 + 8))(v31, v30);
    v34 = v50;
    MEMORY[0x19A8DF720](v27);
    v35 = v51;
    sub_197407C0C(v28, v51, v61);
    v37 = v36;
    (*(v49 + 8))(v34, v35);
    v38 = sub_19752178C();

    v39 = objc_opt_self();
    v40 = v59;
    v41 = [v39 expressionForSubquery:v59 usingIteratorVariable:v38 predicate:v37];

    v42 = MEMORY[0x19A8E1370]();
    sub_1974DF08C(v41, 0x746E756F6340, 0xE600000000000000, v60);
    objc_autoreleasePoolPop(v42);
    v43 = v60[0];
    v60[0] = 0;
    v44 = [v39 expressionForConstantValue_];
    swift_unknownObjectRelease();
    v45 = [objc_allocWithZone(MEMORY[0x1E696AB18]) initWithLeftExpression:v43 rightExpression:v44 modifier:0 type:5 options:0];

    v46 = v48;
    *v48 = v45;
    *(v46 + 8) = 1;
  }
}

void sub_1974EA104(uint64_t a1, void *a2, void (*a3)(uint64_t *__return_ptr, uint64_t, uint64_t, void, void, void, void, void, uint64_t *))
{
  v7 = MEMORY[0x19A8E1370]();
  a3(&v9, a1, v3, a2[2], a2[3], a2[4], a2[5], a2[6], &v8);
  objc_autoreleasePoolPop(v7);
}

void sub_1974EA1A4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X7>, void *a9@<X8>)
{
  v54 = a8;
  v57 = a6;
  v59 = a2;
  v60 = a1;
  v49 = a9;
  v50 = *(a3 - 8);
  v13 = MEMORY[0x1EEE9AC00](a1, a2);
  v52 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v13, v16);
  v58 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_197520DAC();
  v55 = *(v18 - 8);
  v56 = v18;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  v22 = sub_19752119C();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22, v24);
  v26 = &v49 - v25;
  v53 = a3;
  v62[0] = a3;
  v62[1] = a4;
  v51 = a5;
  v27 = v57;
  v62[2] = a5;
  v62[3] = v57;
  v62[4] = a7;
  v28 = sub_197520FBC();
  sub_197520FAC();
  sub_19752118C();
  (*(v23 + 8))(v26, v22);
  v29 = v60;
  sub_1974DEDF8(v21);
  (*(v55 + 8))(v21, v56);
  v56 = v28;
  v30 = v58;
  MEMORY[0x19A8DF6B0](v28);
  v31 = v62[6];
  sub_197407C0C(v29, a4, v27);
  if (v31)
  {
    (*(v61 + 8))(v30, a4);

    *v54 = v31;
  }

  else
  {
    v33 = v32;
    (*(v61 + 8))(v30, a4);
    v34 = [objc_opt_self() notPredicateWithSubpredicate_];

    v35 = v52;
    MEMORY[0x19A8DF6C0](v56);
    v36 = v29;
    v37 = v53;
    sub_197407EE0(v36, v53, v51);
    v39 = v38;
    (*(v50 + 8))(v35, v37);
    v40 = v34;
    v41 = sub_19752178C();

    v42 = objc_opt_self();
    v43 = [v42 expressionForSubquery:v39 usingIteratorVariable:v41 predicate:v40];

    v44 = MEMORY[0x19A8E1370]();
    sub_1974DF08C(v43, 0x746E756F6340, 0xE600000000000000, v62);
    objc_autoreleasePoolPop(v44);
    v45 = v62[0];
    v62[0] = 0;
    v46 = [v42 expressionForConstantValue_];
    swift_unknownObjectRelease();
    v47 = [objc_allocWithZone(MEMORY[0x1E696AB18]) initWithLeftExpression:v45 rightExpression:v46 modifier:0 type:4 options:0];

    v48 = v49;
    *v49 = v47;
    *(v48 + 8) = 1;
  }
}

void sub_1974EA764(uint64_t *a1, void *a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5)
{
  v10 = MEMORY[0x19A8E1370]();
  sub_1974EA870(v5, a1, a2[2], a2[3], &v11, &v12, a4, a5);
  objc_autoreleasePoolPop(v10);
}

void sub_1974EA870(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X6>, uint64_t a6@<X8>, void (*a7)(uint64_t), uint64_t a8)
{
  v28 = a6;
  v13 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v15 = v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27[0] = v16;
  v27[1] = v17;
  v27[2] = v18;
  v27[3] = v19;
  v21 = v20(0, v27);
  a7(v21);
  sub_197407EE0(a2, a3, a4);
  v23 = v22;
  v24 = (*(v13 + 8))(v15, a3);
  if (v8)
  {
    *a5 = v8;
  }

  else
  {
    v25 = v28;
    v26 = MEMORY[0x19A8E1370](v24);
    sub_1974DF08C(v23, a8, 0xE900000000000066, v27);
    objc_autoreleasePoolPop(v26);

    *v25 = v27[0];
    *(v25 + 8) = 0;
  }
}

void sub_1974EAA64(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, void *a6@<X8>, void *a7)
{
  v47 = a6;
  v48 = *(a4 - 8);
  v12 = MEMORY[0x1EEE9AC00](a1, a2);
  v49 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v12, v15);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v16, v21);
  v23 = &v46 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = v24;
  v57 = v25;
  v52 = v26;
  v53 = v25;
  v58 = v27;
  v59 = v28;
  v60 = v26;
  v61 = v29;
  v51 = v29;
  sub_197520E1C();
  v55 = a1;
  sub_197520E0C();
  v54 = a2;
  v30 = v62;
  sub_197407C0C(a2, a3, a5);
  v32 = v31;
  (*(v20 + 8))(v23, a3);
  if (v30)
  {
    *a7 = v30;
  }

  else
  {
    v62 = v32;
    v33 = v49;
    v34 = v51;
    sub_197520DEC();
    v36 = v53;
    v35 = v54;
    sub_197407EE0(v54, v53, v52);
    v38 = v37;
    (*(v50 + 8))(v18, v36);
    v53 = v38;
    sub_197520DFC();
    sub_197407EE0(v35, a4, v34);
    v40 = v39;
    (*(v48 + 8))(v33, a4);
    v41 = objc_opt_self();
    v42 = v62;
    v43 = v53;
    v44 = [v41 expressionForConditional:v62 trueExpression:v53 falseExpression:v40];

    v45 = v47;
    *v47 = v44;
    *(v45 + 8) = 0;
  }
}

void sub_1974EADDC(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X6>, uint64_t a7@<X8>)
{
  v37[0] = a7;
  v40 = *(a4 - 8);
  v41 = a6;
  v12 = MEMORY[0x1EEE9AC00](a1, a2);
  v14 = v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v12, v17);
  v19 = v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = v20;
  v43 = v21;
  v44 = v22;
  v45 = v23;
  v39 = v23;
  sub_197520E4C();
  v37[1] = a1;
  MEMORY[0x19A8DF550]();
  v38 = a2;
  v24 = v46;
  sub_197407EE0(a2, a3, a5);
  v26 = v25;
  (*(v16 + 8))(v19, a3);
  if (v24)
  {
    *v41 = v24;
  }

  else
  {
    v27 = v37[0];
    sub_197520E3C();
    sub_197407EE0(v38, a4, v39);
    v29 = v28;
    (*(v40 + 8))(v14, a4);
    v30 = objc_opt_self();
    v31 = [v30 expressionForConstantValue_];
    v32 = objc_allocWithZone(MEMORY[0x1E696AB18]);
    v33 = v26;
    v34 = [v32 initWithLeftExpression:v33 rightExpression:v31 modifier:0 type:5 options:0];

    v35 = v34;
    v36 = [v30 expressionForConditional:v35 trueExpression:v33 falseExpression:v29];

    *v27 = v36;
    *(v27 + 8) = 0;
  }
}

void sub_1974EB09C(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, void *a10)
{
  v82 = a6;
  v84 = a2;
  v92 = a1;
  v72 = a9;
  v81 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v80 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_197520DAC();
  v77 = *(v78 - 8);
  v17 = MEMORY[0x1EEE9AC00](v78, v16);
  v75 = &v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v19);
  v76 = &v69 - v20;
  v74 = sub_19752119C();
  v73 = *(v74 - 8);
  v22 = MEMORY[0x1EEE9AC00](v74, v21);
  v24 = &v69 - v23;
  v25 = *(a3 - 8);
  v27 = MEMORY[0x1EEE9AC00](v22, v26);
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v69 - v29;
  *&v86 = a3;
  *(&v86 + 1) = a4;
  v79 = a5;
  *&v87 = a5;
  *(&v87 + 1) = v82;
  v88 = a7;
  v89 = a8;
  v82 = a8;
  v31 = sub_197520EFC();
  MEMORY[0x19A8DF5F0]();
  v32 = v83;
  sub_197407EE0(v84, a3, a7);
  v34 = v32;
  if (!v32)
  {
    v71 = v33;
    v70 = v24;
    v83 = 0;
    (*(v25 + 8))(v30, a3);
    MEMORY[0x19A8DF5F0](v31);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2BBC8, &qword_1975319A0);
    if (swift_dynamicCast())
    {
      v35 = *(&v87 + 1);
      v36 = v88;
      __swift_project_boxed_opaque_existential_0Tm(&v86, *(&v87 + 1));
      v37 = v84;
      v38 = *v84;
      v39 = v84[1];
      v40 = v84[2];
      v69 = *(v36 + 8);

      v41 = v83;
      v69(v90, v38, v39, v40, v35, v36);
      v34 = v41;

      if (v41)
      {

        __swift_destroy_boxed_opaque_existential_0Tm_0(&v86);
        goto LABEL_10;
      }

      v83 = 0;
      __swift_destroy_boxed_opaque_existential_0Tm_0(&v86);
    }

    else
    {
      v88 = 0;
      v86 = 0u;
      v87 = 0u;
      sub_19740797C(&v86, &qword_1EAF2BBD0, &qword_1975319A8);
      memset(v90, 0, sizeof(v90));
      v91 = 0;
      v37 = v84;
    }

    v42 = v70;
    sub_197520EDC();
    v43 = v76;
    v44 = v74;
    sub_19752118C();
    (*(v73 + 8))(v42, v44);
    sub_197408478(v90, &v86 + 8, &qword_1EAF2BBD8, &qword_1975319B0);
    v45 = v71;
    *&v86 = v71;
    v46 = v77;
    v47 = v75;
    v48 = v78;
    (*(v77 + 16))(v75, v43, v78);
    sub_197408378(&v86, v85);
    v49 = v45;
    sub_19742A1A4(v85, v47);
    sub_197407F9C(&v86);
    (*(v46 + 8))(v43, v48);
    v50 = v80;
    sub_197520EEC();
    v51 = v37;
    v52 = v79;
    v53 = v83;
    sub_197407EE0(v51, v79, v82);
    v55 = v81;
    if (v53)
    {

      (*(v55 + 8))(v50, v52);
      sub_19740797C(v90, &qword_1EAF2BBD8, &qword_1975319B0);
      v34 = v53;
      goto LABEL_10;
    }

    v56 = v49;
    v57 = v54;
    (*(v81 + 8))(v50, v52);
    sub_197408478(v90, &v86, &qword_1EAF2BBD8, &qword_1975319B0);
    if (!*(&v87 + 1))
    {
      sub_19740797C(&v86, &qword_1EAF2BBD8, &qword_1975319B0);
      v59 = v72;
      goto LABEL_23;
    }

    v58 = v89;

    sub_197407F34(&v86);
    v59 = v72;
    if (v58 >> 62)
    {
      if (sub_1975220EC())
      {
LABEL_15:
        if ((v58 & 0xC000000000000001) != 0)
        {
          MEMORY[0x19A8E0960](0, v58);
        }

        else
        {
          if (!*((v58 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return;
          }
        }

        sub_197521FFC();
        v61 = sub_1974138C4(v60);

        if (v61)
        {
          sub_19740797C(v90, &qword_1EAF2BBD8, &qword_1975319B0);

          v62 = v57;
LABEL_24:
          *v59 = v62;
          *(v59 + 8) = 0;
          return;
        }

LABEL_23:
        v63 = objc_opt_self();
        v64 = [v63 expressionForConstantValue_];
        v65 = objc_allocWithZone(MEMORY[0x1E696AB18]);
        v66 = v56;
        v67 = [v65 initWithLeftExpression:v66 rightExpression:v64 modifier:0 type:5 options:0];

        v68 = [v63 expressionForConstantValue_];
        v62 = [v63 expressionForConditional:v67 trueExpression:v57 falseExpression:v68];

        sub_19740797C(v90, &qword_1EAF2BBD8, &qword_1975319B0);
        goto LABEL_24;
      }
    }

    else if (*((v58 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_15;
    }

    goto LABEL_23;
  }

  (*(v25 + 8))(v30, a3);
LABEL_10:
  *a10 = v34;
}

void sub_1974EB924(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, void *a7)
{
  v35[0] = a6;
  v38 = *(a4 - 8);
  v12 = MEMORY[0x1EEE9AC00](a1, a2);
  v14 = v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v12, v17);
  v19 = v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(*(v20 + 8) + 8);
  v23 = *(*(v22 + 8) + 8);
  v39 = v24;
  v40 = v25;
  v41 = v26;
  v42 = v27;
  v37 = v27;
  v43 = v21;
  v44 = v23;
  v45 = MEMORY[0x1E69E5EF8];
  sub_197520CCC();
  v35[1] = a1;
  MEMORY[0x19A8DF3D0]();
  v36 = a2;
  v28 = v46;
  sub_197407EE0(a2, a3, a5);
  v30 = v29;
  (*(v16 + 8))(v19, a3);
  if (v28)
  {
    *a7 = v28;
  }

  else
  {
    v31 = v35[0];
    sub_197520CBC();
    sub_197407EE0(v36, a4, v37);
    v33 = v32;
    (*(v38 + 8))(v14, a4);
    v34 = [objc_allocWithZone(MEMORY[0x1E696AB18]) initWithLeftExpression:v30 rightExpression:v33 modifier:0 type:99 options:0];

    *v31 = v34;
    *(v31 + 8) = 1;
  }
}

void sub_1974EBBB8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t, void, void, void, void, uint64_t, uint64_t, uint64_t *))
{
  v7 = v5;
  v12 = MEMORY[0x19A8E1370]();
  a5(&v14, v7, a1, a2[2], a2[3], a2[4], a2[5], a3, a4, &v13);
  objc_autoreleasePoolPop(v12);
}

void sub_1974EBC74(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, void *a7)
{
  v35[0] = a6;
  v38 = *(a4 - 8);
  v12 = MEMORY[0x1EEE9AC00](a1, a2);
  v14 = v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v12, v17);
  v19 = v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(*(*(v20 + 8) + 8) + 8);
  v23 = *(*(*(v22 + 8) + 8) + 8);
  v39 = v24;
  v40 = v25;
  v41 = v26;
  v42 = v27;
  v37 = v27;
  v43 = v21;
  v44 = v23;
  v45 = MEMORY[0x1E69E5EF8];
  sub_197520FEC();
  v35[1] = a1;
  MEMORY[0x19A8DF6F0]();
  v36 = a2;
  v28 = v46;
  sub_197407EE0(a2, a3, a5);
  v30 = v29;
  (*(v16 + 8))(v19, a3);
  if (v28)
  {
    *a7 = v28;
  }

  else
  {
    v31 = v35[0];
    sub_197520FDC();
    sub_197407EE0(v36, a4, v37);
    v33 = v32;
    (*(v38 + 8))(v14, a4);
    v34 = [objc_allocWithZone(MEMORY[0x1E696AB18]) initWithLeftExpression:v30 rightExpression:v33 modifier:0 type:8 options:0];

    *v31 = v34;
    *(v31 + 8) = 1;
  }
}

id sub_1974EBF40(uint64_t a1)
{
  type metadata accessor for ComparisonResult(0);
  v15[3] = v3;
  v15[0] = a1;
  v4 = MEMORY[0x19A8E1370]();
  sub_1974E0A44(v15, &v14, v16);
  if (v1)
  {
    objc_autoreleasePoolPop(v4);
    return __swift_destroy_boxed_opaque_existential_0Tm_0(v15);
  }

  else
  {
    objc_autoreleasePoolPop(v4);
    __swift_destroy_boxed_opaque_existential_0Tm_0(v15);
    v6 = v17;
    if (v17)
    {
      v7 = __swift_project_boxed_opaque_existential_0Tm(v16, v17);
      v8 = *(v6 - 8);
      MEMORY[0x1EEE9AC00](v7, v7);
      v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v8 + 16))(v10);
      v11 = sub_19752281C();
      (*(v8 + 8))(v10, v6);
      __swift_destroy_boxed_opaque_existential_0Tm_0(v16);
    }

    else
    {
      v11 = 0;
    }

    v12 = [objc_opt_self() expressionForConstantValue_];
    swift_unknownObjectRelease();
    return v12;
  }
}

void sub_1974EC0F0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = MEMORY[0x19A8E1370]();
  sub_1974EC1BC(a3, a4, a5, a6, a7, a8, &v15, &v16);
  objc_autoreleasePoolPop(v14);
}

void sub_1974EC1BC(uint64_t *a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>, void *a8)
{
  sub_197407EE0(a1, a3, a5);
  if (v8)
  {
    *a8 = v8;
  }

  else
  {
    v34 = v16;
    v33 = a7;
    sub_197407EE0(a1, a4, a6);
    v18 = v17;
    v19 = [objc_allocWithZone(MEMORY[0x1E696AB18]) initWithLeftExpression:v34 rightExpression:v17 modifier:0 type:4 options:a2];

    sub_197407EE0(a1, a3, a5);
    v21 = v20;
    sub_197407EE0(a1, a4, a6);
    v23 = v22;
    v24 = [objc_allocWithZone(MEMORY[0x1E696AB18]) initWithLeftExpression:v21 rightExpression:v22 modifier:0 type:0 options:a2];

    v25 = sub_1974EBF40(-1);
    v26 = sub_1974EBF40(1);
    v27 = objc_opt_self();
    v28 = v24;
    v29 = [v27 expressionForConditional:v28 trueExpression:v25 falseExpression:v26];

    v30 = sub_1974EBF40(0);
    v31 = v19;
    v32 = [v27 expressionForConditional:v31 trueExpression:v30 falseExpression:v29];

    *v33 = v32;
    *(v33 + 8) = 0;
  }
}

uint64_t sub_1974EC46C(uint64_t *a1, void *a2)
{
  result = sub_1974EC4BC(a1, a2, MEMORY[0x1E6968CC0], MEMORY[0x1E6968CC8], 1);
  if (v2)
  {
    return v4;
  }

  return result;
}

uint64_t sub_1974EC4BC(uint64_t *a1, void *a2, uint64_t a3, void (*a4)(void *), uint64_t a5)
{
  v23 = a1;
  v24 = a5;
  v7 = a2[3];
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](a1, a2);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v12 + 16);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v9, v12);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18(v17);
  a4(a2);
  v19 = v25;
  sub_1974EC0F0(v16, v11, v23, v24, v13, v7, a2[4], a2[5]);
  if (v19)
  {
    (*(v8 + 8))(v11, v7);
    return (*(v14 + 8))(v16, v13);
  }

  else
  {
    v22 = v20;
    (*(v8 + 8))(v11, v7);
    (*(v14 + 8))(v16, v13);
    return v22;
  }
}

uint64_t sub_1974EC6B0(uint64_t *a1, void *a2)
{
  result = sub_1974EC4BC(a1, a2, MEMORY[0x1E6968C98], MEMORY[0x1E6968CA0], 8);
  if (v2)
  {
    return v4;
  }

  return result;
}

void sub_1974EC700(uint64_t a1, void *a2, void (*a3)(uint64_t *__return_ptr, uint64_t, uint64_t, void, void, void, void, void, void, uint64_t *))
{
  v7 = MEMORY[0x19A8E1370]();
  a3(&v9, v3, a1, a2[2], a2[3], a2[4], a2[5], a2[6], a2[7], &v8);
  objc_autoreleasePoolPop(v7);
}

void sub_1974EC7A4(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, void *a7)
{
  v35 = a6;
  v39 = *(a4 - 8);
  v12 = MEMORY[0x1EEE9AC00](a1, a2);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v12, v17);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = v20;
  v41 = v21;
  v42 = v22;
  v43 = v23;
  v38 = v23;
  v44 = v24;
  v45 = v25;
  v26 = sub_19752108C();
  v36 = a1;
  MEMORY[0x19A8DF790]();
  v37 = a2;
  v27 = v46;
  sub_197407EE0(a2, a3, a5);
  v29 = v28;
  (*(v16 + 8))(v19, a3);
  if (v27)
  {
    *a7 = v27;
  }

  else
  {
    v30 = v35;
    MEMORY[0x19A8DF7A0](v26);
    sub_197407EE0(v37, a4, v38);
    v32 = v31;
    (*(v39 + 8))(v14, a4);
    v33 = [objc_allocWithZone(MEMORY[0x1E696AB18]) initWithLeftExpression:v29 rightExpression:v32 modifier:0 type:99 options:11];

    *v30 = v33;
    *(v30 + 8) = 1;
  }
}

void sub_1974ECA28(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X5>, uint64_t a4@<X8>)
{
  v6 = *(*(a1 + 16) + OBJC_IVAR____TtC9SwiftData12DefaultStore_model);
  if (!v6)
  {
    if (qword_1ED7C9848 != -1)
    {
      swift_once();
    }

    v27 = sub_19752157C();
    __swift_project_value_buffer(v27, qword_1ED7CE648);
    v28 = sub_19752155C();
    v29 = sub_197521DDC();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v38 = v31;
      *v30 = 136315138;
      *(v30 + 4) = sub_197462310(0xD000000000000039, 0x8000000197528E80, &v38);
      _os_log_impl(&dword_1973F2000, v28, v29, "%s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm_0(v31);
      MEMORY[0x19A8E1B50](v31, -1, -1);
      MEMORY[0x19A8E1B50](v30, -1, -1);
    }

    sub_19744BE3C();
    v32 = swift_allocError();
    *v33 = 1;
    *(v33 + 8) = 0xD000000000000050;
    *(v33 + 16) = 0x8000000197528EC0;
    swift_willThrow();
    goto LABEL_15;
  }

  v8 = v6;
  v9 = [v8 entitiesByName];
  v10 = sub_197408568(0, &qword_1ED7C9BA0, 0x1E695D5B8);
  v11 = sub_1975215FC();

  v12 = sub_1973F7AAC(a2);
  if (!*(v11 + 16))
  {

    goto LABEL_14;
  }

  v37 = a4;
  v14 = sub_1973F4028(v12, v13);
  v16 = v15;

  if ((v16 & 1) == 0)
  {
LABEL_14:

    sub_1975221EC();

    v34 = sub_1973F7AAC(a2);
    MEMORY[0x19A8DFF80](v34);

    MEMORY[0x19A8DFF80](0xD000000000000016, 0x8000000197528F40);
    sub_19744BE3C();
    v32 = swift_allocError();
    *v35 = 1;
    *(v35 + 8) = 0xD000000000000017;
    *(v35 + 16) = 0x8000000197528F20;
    swift_willThrow();

LABEL_15:
    *a3 = v32;
    return;
  }

  v17 = *(*(v11 + 56) + 8 * v14);

  v18 = [v17 subentities];
  v19 = sub_1975219CC();

  if (v19 >> 62)
  {
    v20 = sub_1975220EC();
  }

  else
  {
    v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_197408568(0, &qword_1ED7C7C90, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2BB90, &unk_197534070);
  v21 = swift_allocObject();
  v22 = v21;
  *(v21 + 16) = xmmword_19752C280;
  if (v20)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2BAC0, &unk_197531960);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1975313B0;
    *(v23 + 32) = v17;
    v24 = v17;
    v25 = sub_1974A9C38(v24);
    sub_1974EE6B8(v25);
    v22[7] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B6B8, &qword_19752F3A0);
    v22[8] = sub_1974EDD00(&qword_1EAF2BB98, &qword_1EAF2B6B8, &qword_19752F3A0, MEMORY[0x1E6969E28]);
    v22[4] = v23;
    v26 = sub_197521D5C();
  }

  else
  {
    *(v21 + 56) = v10;
    *(v21 + 64) = sub_1974EDC58(&qword_1EAF2BBA0, &qword_1ED7C9BA0, 0x1E695D5B8);
    v22[4] = v17;
    v36 = v17;
    v26 = sub_197521D5C();
  }

  *v37 = v26;
  *(v37 + 8) = 1;
}

id sub_1974ECFA8(void *a1, void *a2)
{
  v4 = a1[3];
  if (!v4)
  {
    v10 = 0;
    v11 = a2[3];
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_5:
    v16 = 0;
    goto LABEL_6;
  }

  v6 = __swift_project_boxed_opaque_existential_0Tm(a1, a1[3]);
  v7 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v6, v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9);
  v10 = sub_19752281C();
  (*(v7 + 8))(v9, v4);
  __swift_destroy_boxed_opaque_existential_0Tm_0(a1);
  v11 = a2[3];
  if (!v11)
  {
    goto LABEL_5;
  }

LABEL_3:
  v12 = __swift_project_boxed_opaque_existential_0Tm(a2, v11);
  v13 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v12, v12);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v15);
  v16 = sub_19752281C();
  (*(v13 + 8))(v15, v11);
  __swift_destroy_boxed_opaque_existential_0Tm_0(a2);
LABEL_6:
  v17 = [v2 initWithOperand:v10 andKeyPath:v16];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v17;
}

uint64_t sub_1974ED1D8(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1974ED214(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1974ED250(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1974ED28C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1974ED2C8(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1974ED304(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1974ED340(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1974ED37C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1974ED3B8(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1974ED3F4(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1974ED430(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1974ED46C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1974ED4A8(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1974ED4E4(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1974ED520(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1974ED55C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1974ED598(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1974ED5D4(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1974ED610(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1974ED64C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1974ED688(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1974ED6C4(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1974ED700(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1974ED73C(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
LABEL_8:
    sub_1975220EC();
LABEL_9:
    result = sub_19752224C();
    v3 = result;
    goto LABEL_10;
  }

  if (a1 > *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_9;
  }

LABEL_10:
  *v1 = v3;
  return result;
}

uint64_t sub_1974ED7D8(uint64_t result, unint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v3 = a2;
  v4 = a2 >> 62;
  if (a2 >> 62)
  {
LABEL_13:
    v9 = result;
    result = sub_1975220EC();
    v10 = result - v9;
    if (__OFSUB__(result, v9))
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v11 = sub_1975220EC();
    result = sub_1975220EC();
    if (result < 0)
    {
LABEL_27:
      __break(1u);
      return result;
    }

    if (v10 <= v11)
    {
      v12 = v10 & ~(v10 >> 63);
    }

    else
    {
      v12 = v11;
    }

    if (v11 < 0 || v10 < 1)
    {
      v6 = v10 & ~(v10 >> 63);
    }

    else
    {
      v6 = v12;
    }

    result = sub_1975220EC();
    if (result >= v6)
    {
      goto LABEL_4;
    }

LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v5 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v6 = (v5 - result) & ~((v5 - result) >> 63);
  if (v5 < v6)
  {
    goto LABEL_25;
  }

LABEL_4:
  if ((v3 & 0xC000000000000001) != 0 && v6)
  {
    sub_19752202C();

    v7 = 0;
    do
    {
      v8 = v7 + 1;
      sub_19752221C();
      v7 = v8;
    }

    while (v6 != v8);
    if (!v4)
    {
      return v3 & 0xFFFFFFFFFFFFFF8;
    }
  }

  else
  {

    if (!v4)
    {
      return v3 & 0xFFFFFFFFFFFFFF8;
    }
  }

  return sub_19752241C();
}

id sub_1974ED924(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a1[3];
  v9 = __swift_project_boxed_opaque_existential_0Tm(a1, v8);
  v23[3] = v8;
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v23);
  v11 = (*(*(v8 - 8) + 16))(boxed_opaque_existential_0Tm, v9, v8);
  v12 = MEMORY[0x19A8E1370](v11);
  sub_1974DFBAC(v23, a2, a3, a4, &v22, &v24);
  if (v4)
  {
    objc_autoreleasePoolPop(v12);
    return __swift_destroy_boxed_opaque_existential_0Tm_0(v23);
  }

  else
  {
    objc_autoreleasePoolPop(v12);
    __swift_destroy_boxed_opaque_existential_0Tm_0(v23);
    v14 = v25;
    if (v25)
    {
      v15 = __swift_project_boxed_opaque_existential_0Tm(&v24, v25);
      v16 = *(v14 - 8);
      MEMORY[0x1EEE9AC00](v15, v15);
      v18 = &v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v16 + 16))(v18);
      v19 = sub_19752281C();
      (*(v16 + 8))(v18, v14);
      __swift_destroy_boxed_opaque_existential_0Tm_0(&v24);
    }

    else
    {
      v19 = 0;
    }

    v20 = [objc_opt_self() expressionForConstantValue_];
    swift_unknownObjectRelease();
    return v20;
  }
}

void sub_1974EDB24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = MEMORY[0x19A8E1370]();
  sub_1974ECA28(a1, a3, &v7, &v6);
  objc_autoreleasePoolPop(v5);
}

uint64_t sub_1974EDC58(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_197408568(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_1974EDCA8(id result, char a2)
{
  if (a2 != -1)
  {
    return result;
  }

  return result;
}

void sub_1974EDCBC(id a1, char a2)
{
  if (a2 != -1)
  {
  }
}

double sub_1974EDCD0(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_1974EDCE8(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_1974EDD00(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_1974EDD48(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_1974EDCE8(a1, a2, a3);
  }

  return a1;
}

double sub_1974EDD5C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_1974EDCD0(a1, a2, a3);
  }

  return result;
}

unint64_t sub_1974EDDB0()
{
  result = qword_1EAF2AA80[0];
  if (!qword_1EAF2AA80[0])
  {
    sub_19752177C();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EAF2AA80);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_9SwiftData15SuffixOperationO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_1974EDE24(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1974EDE6C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1974EDEB4(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
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

uint64_t sub_1974EDF0C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 81))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 80);
  if (v3 >= 5)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1974EDF48(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 80) = 0;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 80) = -a2;
    }
  }

  return result;
}

uint64_t sub_1974EDFA0(uint64_t result, unsigned int a2)
{
  if (a2 > 4)
  {
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 5;
    LOBYTE(a2) = 5;
  }

  *(result + 80) = a2;
  return result;
}

uint64_t sub_1974EDFDC(uint64_t *a1, int a2)
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

uint64_t sub_1974EE024(uint64_t result, int a2, int a3)
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

uint64_t sub_1974EE0A8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E6F697463416F6ELL;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x65646163736163;
    }

    else
    {
      v4 = 2037278052;
    }

    if (v3 == 2)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x7966696C6C756ELL;
    }

    else
    {
      v4 = 0x6E6F697463416F6ELL;
    }

    if (v3)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xE800000000000000;
    }
  }

  v6 = 0xE800000000000000;
  v7 = 0xE700000000000000;
  v8 = 0x65646163736163;
  if (a2 != 2)
  {
    v8 = 2037278052;
    v7 = 0xE400000000000000;
  }

  if (a2)
  {
    v2 = 0x7966696C6C756ELL;
    v6 = 0xE700000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_19752282C();
  }

  return v11 & 1;
}

uint64_t sub_1974EE1DC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x6164696C61766E69;
    }

    else
    {
      v3 = 0xD000000000000012;
    }

    if (v2)
    {
      v4 = 0xEE006C6C41646574;
    }

    else
    {
      v4 = 0x8000000197523740;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xE800000000000000;
    v3 = 0x6465747265736E69;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0x64657461647075;
    }

    else
    {
      v3 = 0x646574656C6564;
    }

    v4 = 0xE700000000000000;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v7 = 0x6164696C61766E69;
    }

    else
    {
      v7 = 0xD000000000000012;
    }

    if (a2)
    {
      v5 = 0xEE006C6C41646574;
    }

    else
    {
      v5 = 0x8000000197523740;
    }

    if (v3 != v7)
    {
      goto LABEL_32;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0xE800000000000000;
    if (v3 != 0x6465747265736E69)
    {
      goto LABEL_32;
    }
  }

  else
  {
    v5 = 0xE700000000000000;
    if (a2 == 3)
    {
      v6 = 1633972341;
    }

    else
    {
      v6 = 1701602660;
    }

    if (v3 != (v6 | 0x64657400000000))
    {
      goto LABEL_32;
    }
  }

  if (v4 != v5)
  {
LABEL_32:
    v8 = sub_19752282C();
    goto LABEL_33;
  }

  v8 = 1;
LABEL_33:

  return v8 & 1;
}

uint64_t sub_1974EE374(uint64_t a1)
{
  result = MEMORY[0x19A8E0310](*(a1 + 16), MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v3 = 0;
  v14 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = )
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
    v11 = *v10;
    v12 = v10[1];

    sub_197414EA0(&v13, v11, v12);
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

      return v14;
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

uint64_t Schema.Entity.properties.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 64);
  swift_beginAccess();
  v4 = v1;

  sub_1974EE6F8(v2, sub_1973FA494, &qword_1EAF2B1C8, &unk_19752EA30);

  sub_1974EEA08(&v4);

  return v4;
}

char *sub_1974EE598(char *result)
{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1973FB6DC(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 2);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 2) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1974EE6F8(uint64_t result, uint64_t (*a2)(void), uint64_t *a3, uint64_t *a4)
{
  v5 = *(result + 16);
  v6 = *v4;
  v7 = *(*v4 + 16);
  if (__OFADD__(v7, v5))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v11 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v7 + v5 <= *(v6 + 24) >> 1)
  {
    if (*(v11 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  result = a2();
  v6 = result;
  if (!*(v11 + 16))
  {
LABEL_10:

    if (!v5)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  swift_arrayInitWithCopy();

  if (!v5)
  {
LABEL_11:
    *v4 = v6;
    return result;
  }

  v12 = *(v6 + 16);
  v13 = __OFADD__(v12, v5);
  v14 = v12 + v5;
  if (!v13)
  {
    *(v6 + 16) = v14;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1974EE818(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_197477A88(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1974EE910(unint64_t a1, uint64_t (*a2)(uint64_t, void, uint64_t))
{
  if (a1 >> 62)
  {
    v5 = sub_1975220EC();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v2 >> 62))
  {
    v6 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = __OFADD__(v6, v5);
    result = v6 + v5;
    if (!v7)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = sub_1975220EC();
  v7 = __OFADD__(v15, v5);
  result = v15 + v5;
  if (v7)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_1974F6AA0(result, 1);
  v9 = *v2;
  v10 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v10 + 8 * *(v10 + 0x10) + 32, (*(v10 + 0x18) >> 1) - *(v10 + 0x10), a1);
  v12 = v11;

  if (v12 < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12 < 1)
  {
LABEL_9:
    *v2 = v9;
    return result;
  }

  v13 = *(v10 + 16);
  v7 = __OFADD__(v13, v12);
  v14 = v13 + v12;
  if (!v7)
  {
    *(v10 + 16) = v14;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1974EEA08(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1974DB0B8(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_1974F6B40(v5);
  *a1 = v2;
  return result;
}

uint64_t Schema.Entity.superentity.setter(void *a1)
{
  v2 = v1;
  if (a1)
  {
    swift_beginAccess();
    v4 = a1[8];
    swift_beginAccess();

    sub_1974EE6F8(v5, sub_1973FA494, &qword_1EAF2B1C8, &unk_19752EA30);
    swift_beginAccess();
    v2[9] = v4;

    sub_1974EF18C();

    swift_weakAssign();
    swift_beginAccess();
    v7 = a1[2];
    v6 = a1[3];
  }

  else
  {
    swift_beginAccess();
    v1[9] = MEMORY[0x1E69E7CC0];

    sub_1974EF18C();
    swift_weakAssign();
    v7 = 0;
    v6 = 0;
  }

  swift_beginAccess();
  v2[5] = v7;
  v2[6] = v6;
}

uint64_t Schema.Entity.name.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

uint64_t Schema.Entity.name.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

double Schema.Entity.subentities.getter()
{
  swift_beginAccess();

  return result;
}

uint64_t Schema.Entity.subentities.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 32) = a1;
}

uint64_t Schema.Entity.superentityName.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 40);

  return v1;
}

uint64_t Schema.Entity.superentityName.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
}

uint64_t Schema.Entity.inheritedProperties.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 72) = a1;

  return sub_1974EF18C();
}

uint64_t (*Schema.Entity.superentity.modify(uint64_t *a1))()
{
  a1[1] = v1;
  *a1 = swift_weakLoadStrong();
  return sub_1974EEF44;
}

uint64_t sub_1974EEF44(void *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return Schema.Entity.superentity.setter(*a1);
  }

  Schema.Entity.superentity.setter(v2);
}

double Schema.Entity.storedProperties.getter()
{
  swift_beginAccess();

  return result;
}

void *sub_1974EEFD4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 64) = v2;

  return sub_1974184F4();
}

void *Schema.Entity.storedProperties.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 64) = a1;

  return sub_1974184F4();
}

uint64_t (*Schema.Entity.storedProperties.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1974EF0D8;
}

double Schema.Entity.inheritedProperties.getter()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_1974EF128(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 72) = v2;

  return sub_1974EF18C();
}

uint64_t sub_1974EF18C()
{
  v1 = v0;
  swift_beginAccess();
  v2 = v0[9];
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v2 + 32;

    v5 = 0;
    while (1)
    {
      if (v5 >= *(v2 + 16))
      {
        goto LABEL_58;
      }

      sub_1973FA430(v4, v79);
      sub_1973FA430(v79, v78);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B1C8, &unk_19752EA30);
      type metadata accessor for Schema.Attribute();
      if (swift_dynamicCast())
      {
        v8 = v75;
        swift_beginAccess();
        v10 = v8[2];
        v9 = v8[3];
        swift_beginAccess();
        if (!*(v1[12] + 16) || (, sub_1973F4028(v10, v9), v12 = v11, , (v12 & 1) == 0))
        {
          swift_endAccess();
          swift_beginAccess();

          sub_197417B28(v74, v8);
          swift_endAccess();

          v13 = v8[2];
          v14 = v8[3];
          swift_beginAccess();

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v74[0] = v1[12];
          v1[12] = 0x8000000000000000;
          sub_1974184C4(v8, v13, v14, isUniquelyReferenced_nonNull_native);

          v1[12] = v74[0];
        }
      }

      else
      {
        type metadata accessor for Schema.Relationship();
        if (!swift_dynamicCast())
        {
          goto LABEL_65;
        }

        v16 = v75;
        swift_beginAccess();
        v18 = *(v16 + 16);
        v17 = *(v16 + 24);
        swift_beginAccess();
        if (!*(v1[13] + 16) || (, sub_1973F4028(v18, v17), v20 = v19, , (v20 & 1) == 0))
        {
          swift_endAccess();
          swift_beginAccess();

          sub_19741DE84(v74, v16);
          swift_endAccess();

          v21 = *(v16 + 16);
          v22 = *(v16 + 24);
          swift_beginAccess();

          v23 = swift_isUniquelyReferenced_nonNull_native();
          v74[0] = v1[13];
          v1[13] = 0x8000000000000000;
          sub_19741E9CC(v16, v21, v22, v23);

          v1[13] = v74[0];
        }
      }

      swift_endAccess();

      __swift_destroy_boxed_opaque_existential_1Tm_5(v78);
      v24 = v80;
      v25 = v81;
      __swift_project_boxed_opaque_existential_1(v79, v80);
      v26 = (*(v25 + 32))(v24, v25);
      v28 = v27;
      swift_beginAccess();
      sub_1973FA430(v79, v78);
      v29 = swift_isUniquelyReferenced_nonNull_native();
      v75 = v1[15];
      v30 = v75;
      v1[15] = 0x8000000000000000;
      v31 = sub_1973F4028(v26, v28);
      v33 = v30[2];
      v34 = (v32 & 1) == 0;
      v35 = __OFADD__(v33, v34);
      v36 = v33 + v34;
      if (v35)
      {
        goto LABEL_59;
      }

      v37 = v32;
      if (v30[3] < v36)
      {
        break;
      }

      if (v29)
      {
        goto LABEL_19;
      }

      v42 = v31;
      sub_1974798E0();
      v31 = v42;
      if ((v37 & 1) == 0)
      {
LABEL_20:
        v7 = v75;
        v75[(v31 >> 6) + 8] |= 1 << v31;
        v39 = (v7[6] + 16 * v31);
        *v39 = v26;
        v39[1] = v28;
        sub_1973FA670();
        v40 = v7[2];
        v35 = __OFADD__(v40, 1);
        v41 = v40 + 1;
        if (v35)
        {
          goto LABEL_60;
        }

        v7[2] = v41;
        goto LABEL_4;
      }

LABEL_3:
      v6 = v31;

      v7 = v75;
      __swift_destroy_boxed_opaque_existential_1Tm_5((v75[7] + 40 * v6));
      sub_1973FA670();
LABEL_4:
      ++v5;
      v1[15] = v7;

      swift_endAccess();
      __swift_destroy_boxed_opaque_existential_1Tm_5(v79);
      v4 += 40;
      if (v3 == v5)
      {

        goto LABEL_25;
      }
    }

    sub_1973FA674(v36, v29);
    v31 = sub_1973F4028(v26, v28);
    if ((v37 & 1) != (v38 & 1))
    {
      goto LABEL_66;
    }

LABEL_19:
    if ((v37 & 1) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_3;
  }

LABEL_25:
  swift_beginAccess();
  v43 = v1[4];
  if ((v43 & 0xC000000000000001) != 0)
  {

    sub_1975220AC();
    sub_1973FA628(&qword_1EAF2B670, v44, type metadata accessor for Schema.Entity, &protocol conformance descriptor for Schema.Entity);
    sub_197521C1C();
    v43 = v79[0];
    v45 = v79[1];
    v46 = v79[2];
    v47 = v80;
    v48 = v81;
  }

  else
  {
    v49 = -1 << *(v43 + 32);
    v45 = v43 + 56;
    v46 = ~v49;
    v50 = -v49;
    if (v50 < 64)
    {
      v51 = ~(-1 << v50);
    }

    else
    {
      v51 = -1;
    }

    v48 = v51 & *(v43 + 56);

    v47 = 0;
  }

  v52 = (v46 + 64) >> 6;
  v71 = v45;
  v72 = v52;
  while (v43 < 0)
  {
    if (!sub_19752212C())
    {
      return sub_197416DA8();
    }

    swift_dynamicCast();
    v59 = v73;
    v57 = v47;
    v58 = v48;
    if (!v73)
    {
      return sub_197416DA8();
    }

LABEL_43:
    v60 = v43;
    swift_beginAccess();
    v62 = v1[8];
    v61 = v1[9];
    v63 = *(v61 + 16);
    v64 = v62[2];
    v65 = v64 + v63;
    if (__OFADD__(v64, v63))
    {
      goto LABEL_61;
    }

    v66 = swift_isUniquelyReferenced_nonNull_native();
    if (v66 && v65 <= v62[3] >> 1)
    {
      if (!*(v61 + 16))
      {
        goto LABEL_32;
      }
    }

    else
    {
      if (v64 <= v65)
      {
        v67 = v64 + v63;
      }

      else
      {
        v67 = v64;
      }

      v62 = sub_1973FA494(v66, v67, 1, v62);
      if (!*(v61 + 16))
      {
LABEL_32:

        if (v63)
        {
          goto LABEL_62;
        }

        goto LABEL_33;
      }
    }

    if ((v62[3] >> 1) - v62[2] < v63)
    {
      goto LABEL_63;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B1C8, &unk_19752EA30);
    swift_arrayInitWithCopy();

    if (v63)
    {
      v68 = v62[2];
      v35 = __OFADD__(v68, v63);
      v69 = v68 + v63;
      if (v35)
      {
        goto LABEL_64;
      }

      v62[2] = v69;
    }

LABEL_33:
    swift_beginAccess();
    v59[9] = v62;

    sub_1974EF18C();

    swift_weakAssign();
    swift_beginAccess();
    v54 = v1[2];
    v53 = v1[3];
    swift_beginAccess();
    v59[5] = v54;
    v59[6] = v53;

    v47 = v57;
    v48 = v58;
    v43 = v60;
    v45 = v71;
    v52 = v72;
  }

  v55 = v47;
  v56 = v48;
  v57 = v47;
  if (v48)
  {
LABEL_39:
    v58 = (v56 - 1) & v56;
    v59 = *(*(v43 + 48) + ((v57 << 9) | (8 * __clz(__rbit64(v56)))));

    if (!v59)
    {
      return sub_197416DA8();
    }

    goto LABEL_43;
  }

  while (1)
  {
    v57 = v55 + 1;
    if (__OFADD__(v55, 1))
    {
      break;
    }

    if (v57 >= v52)
    {
      return sub_197416DA8();
    }

    v56 = *(v45 + 8 * v57);
    ++v55;
    if (v56)
    {
      goto LABEL_39;
    }
  }

  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  v76 = 0;
  v77 = 0xE000000000000000;
  sub_1975221EC();
  MEMORY[0x19A8DFF80](0xD000000000000019, 0x8000000197529810);
  sub_19752235C();
  sub_1975223EC();
  __break(1u);
LABEL_66:
  result = sub_1975229CC();
  __break(1u);
  return result;
}

uint64_t (*Schema.Entity.inheritedProperties.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1974EFADC;
}

uint64_t sub_1974EFAF4(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return a3(result);
  }

  return result;
}

double Schema.Entity.attributes.getter()
{
  swift_beginAccess();

  return result;
}

uint64_t Schema.Entity.attributes.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 80) = a1;
}

double Schema.Entity.relationships.getter()
{
  swift_beginAccess();

  return result;
}

uint64_t Schema.Entity.relationships.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 88) = a1;
}

double Schema.Entity.attributesByName.getter()
{
  swift_beginAccess();

  return result;
}

uint64_t Schema.Entity.attributesByName.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 96) = a1;
}

double Schema.Entity.relationshipsByName.getter()
{
  swift_beginAccess();

  return result;
}

uint64_t Schema.Entity.relationshipsByName.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 104) = a1;
}

double Schema.Entity.storedPropertiesByName.getter()
{
  swift_beginAccess();

  return result;
}

uint64_t Schema.Entity.storedPropertiesByName.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 112) = a1;
}

double Schema.Entity.inheritedPropertiesByName.getter()
{
  swift_beginAccess();

  return result;
}

uint64_t Schema.Entity.inheritedPropertiesByName.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 120) = a1;
}

double Schema.Entity.uniquenessConstraints.getter()
{
  swift_beginAccess();

  return result;
}

uint64_t Schema.Entity.uniquenessConstraints.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 160) = a1;
}

double Schema.Entity.indices.getter()
{
  swift_beginAccess();

  return result;
}

uint64_t Schema.Entity.indices.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 168) = a1;
}

uint64_t sub_1974F01D0()
{
  v1 = *v0;
  sub_197522A5C();
  MEMORY[0x19A8E1190](v1);
  return sub_197522A9C();
}

uint64_t sub_1974F0244(uint64_t a1)
{
  v2 = *v1;
  sub_197522A5C();
  MEMORY[0x19A8E1190](v2);
  return sub_197522A9C();
}

unint64_t sub_1974F0288()
{
  v1 = *v0;
  v2 = 1701667182;
  v3 = 0xD000000000000010;
  if (v1 != 5)
  {
    v3 = 0xD000000000000013;
  }

  v4 = 0x7475626972747461;
  if (v1 != 3)
  {
    v4 = 0x6E6F6974616C6572;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x7469746E65627573;
  if (v1 != 1)
  {
    v5 = 0x746E657265707573;
  }

  if (*v0)
  {
    v2 = v5;
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

uint64_t sub_1974F0384@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1974F93D8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1974F03C4(uint64_t a1)
{
  v2 = sub_1974F98E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1974F0400(uint64_t a1)
{
  v2 = sub_1974F98E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Schema.Entity.__allocating_init(_:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  Schema.Entity.init(_:)(a1, a2);
  return v4;
}

uint64_t Schema.Entity.__allocating_init(_:subentities:properties:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  Schema.Entity.init(_:subentities:properties:)(a1, a2, a3, a4);
  return v8;
}

void *Schema.Entity.init(_:subentities:properties:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = 0;
  v4[6] = 0;
  swift_weakInit();
  v4[22] = 0;
  *(v4 + 8) = 0u;
  *(v4 + 9) = 0u;
  v4[2] = a1;
  v4[3] = a2;

  v9 = sub_1974F9780(v8);

  v4[4] = v9;
  v10 = MEMORY[0x1E69E7CD0];
  v4[8] = a4;
  v122 = v10;
  v123 = v10;
  v11 = *(a4 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  v114 = v4;
  if (!v11)
  {

    v4[10] = v10;
    v4[11] = v10;
    v4[20] = v12;
    swift_bridgeObjectRetain_n();

    v29 = MEMORY[0x1E69E7CC8];
    v49 = v10;
LABEL_37:
    v111 = v10;

    v4[14] = v29;
    if ((v49 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      sub_1975220AC();
      type metadata accessor for Schema.Attribute();
      sub_1973FA628(&qword_1ED7CA320, 255, type metadata accessor for Schema.Attribute, &protocol conformance descriptor for Schema.Attribute);
      sub_197521C1C();
      v49 = v124[0];
      v50 = v124[1];
      v52 = v124[2];
      v51 = v124[3];
      v53 = v124[4];
    }

    else
    {
      v54 = -1 << *(v49 + 32);
      v50 = v49 + 56;
      v52 = ~v54;
      v55 = -v54;
      if (v55 < 64)
      {
        v56 = ~(-1 << v55);
      }

      else
      {
        v56 = -1;
      }

      v53 = v56 & *(v49 + 56);

      v51 = 0;
    }

    v57 = (v52 + 64) >> 6;
    v58 = MEMORY[0x1E69E7CC8];
    v117 = v49;
    v112 = v50;
    while (1)
    {
      if (v49 < 0)
      {
        if (!sub_19752212C())
        {
          goto LABEL_66;
        }

        type metadata accessor for Schema.Attribute();
        swift_dynamicCast();
        v63 = v125[0];
        v61 = v51;
        v62 = v53;
        if (!v125[0])
        {
          goto LABEL_66;
        }
      }

      else
      {
        v59 = v51;
        v60 = v53;
        v61 = v51;
        if (!v53)
        {
          while (1)
          {
            v61 = v59 + 1;
            if (__OFADD__(v59, 1))
            {
              __break(1u);
              goto LABEL_96;
            }

            if (v61 >= v57)
            {
              break;
            }

            v60 = *(v50 + 8 * v61);
            ++v59;
            if (v60)
            {
              goto LABEL_51;
            }
          }

LABEL_66:
          sub_197416DA8();
          v78 = v114;
          v114[12] = v58;
          if ((v111 & 0xC000000000000001) != 0)
          {
            swift_unknownObjectRetain();
            sub_1975220AC();
            type metadata accessor for Schema.Relationship();
            sub_1973FA628(&qword_1ED7C91A8, 255, type metadata accessor for Schema.Relationship, &protocol conformance descriptor for Schema.Relationship);
            sub_197521C1C();
            v79 = v125[0];
            v80 = v125[1];
            v82 = v125[2];
            v81 = v126;
            v83 = v127;
          }

          else
          {
            v84 = -1 << *(v111 + 32);
            v80 = v111 + 56;
            v82 = ~v84;
            v85 = -v84;
            if (v85 < 64)
            {
              v86 = ~(-1 << v85);
            }

            else
            {
              v86 = -1;
            }

            v83 = v86 & *(v111 + 56);

            v81 = 0;
          }

          v87 = MEMORY[0x1E69E7CC0];
          v88 = (v82 + 64) >> 6;
          v89 = MEMORY[0x1E69E7CC8];
          v118 = v79;
          v113 = v80;
          while (2)
          {
            if (v79 < 0)
            {
              if (!sub_19752212C() || (type metadata accessor for Schema.Relationship(), swift_dynamicCast(), v95 = v119, v93 = v81, v94 = v83, !v119))
              {
LABEL_94:
                sub_197416DA8();

                v78[13] = v89;
                v78[9] = v87;
                v78[15] = sub_1973FAE70(v87);
                v78[21] = v87;
                return v78;
              }
            }

            else
            {
              v91 = v81;
              v92 = v83;
              v93 = v81;
              if (!v83)
              {
                while (1)
                {
                  v93 = v91 + 1;
                  if (__OFADD__(v91, 1))
                  {
                    break;
                  }

                  if (v93 >= v88)
                  {
                    goto LABEL_94;
                  }

                  v92 = *(v80 + 8 * v93);
                  ++v91;
                  if (v92)
                  {
                    goto LABEL_80;
                  }
                }

LABEL_96:
                __break(1u);
LABEL_97:
                __break(1u);
LABEL_98:
                __break(1u);
                goto LABEL_99;
              }

LABEL_80:
              v94 = (v92 - 1) & v92;
              v95 = *(*(v79 + 48) + ((v93 << 9) | (8 * __clz(__rbit64(v92)))));

              if (!v95)
              {
                goto LABEL_94;
              }
            }

            swift_beginAccess();
            v97 = v95[2];
            v96 = v95[3];

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v119 = v89;
            v99 = sub_1973F4028(v97, v96);
            v101 = v89[2];
            v102 = (v100 & 1) == 0;
            v41 = __OFADD__(v101, v102);
            v103 = v101 + v102;
            if (v41)
            {
              goto LABEL_102;
            }

            v104 = v100;
            if (v89[3] >= v103)
            {
              if (isUniquelyReferenced_nonNull_native)
              {
                goto LABEL_89;
              }

              v109 = v99;
              sub_197479A88();
              v99 = v109;
              if (v104)
              {
                goto LABEL_73;
              }

LABEL_90:
              v89[(v99 >> 6) + 8] |= 1 << v99;
              v106 = (v89[6] + 16 * v99);
              *v106 = v97;
              v106[1] = v96;
              *(v89[7] + 8 * v99) = v95;

              v107 = v89[2];
              v41 = __OFADD__(v107, 1);
              v108 = v107 + 1;
              if (v41)
              {
                goto LABEL_104;
              }

              v89[2] = v108;
            }

            else
            {
              sub_197478114(v103, isUniquelyReferenced_nonNull_native);
              v99 = sub_1973F4028(v97, v96);
              if ((v104 & 1) != (v105 & 1))
              {
                goto LABEL_105;
              }

LABEL_89:
              if ((v104 & 1) == 0)
              {
                goto LABEL_90;
              }

LABEL_73:
              v90 = v99;

              *(v89[7] + 8 * v90) = v95;
            }

            v81 = v93;
            v83 = v94;
            v78 = v114;
            v87 = MEMORY[0x1E69E7CC0];
            v79 = v118;
            v80 = v113;
            continue;
          }
        }

LABEL_51:
        v62 = (v60 - 1) & v60;
        v63 = *(*(v49 + 48) + ((v61 << 9) | (8 * __clz(__rbit64(v60)))));

        if (!v63)
        {
          goto LABEL_66;
        }
      }

      swift_beginAccess();
      v65 = *(v63 + 16);
      v64 = *(v63 + 24);

      v66 = swift_isUniquelyReferenced_nonNull_native();
      v125[0] = v58;
      v68 = sub_1973F4028(v65, v64);
      v69 = v58[2];
      v70 = (v67 & 1) == 0;
      v71 = v69 + v70;
      if (__OFADD__(v69, v70))
      {
        goto LABEL_101;
      }

      v72 = v67;
      if (v58[3] >= v71)
      {
        if (v66)
        {
          if (v67)
          {
            goto LABEL_44;
          }
        }

        else
        {
          sub_197479A9C();
          if (v72)
          {
            goto LABEL_44;
          }
        }
      }

      else
      {
        sub_197478128(v71, v66);
        v73 = sub_1973F4028(v65, v64);
        if ((v72 & 1) != (v74 & 1))
        {
          goto LABEL_105;
        }

        v68 = v73;
        if (v72)
        {
LABEL_44:

          v58 = v125[0];
          *(*(v125[0] + 56) + 8 * v68) = v63;

          goto LABEL_45;
        }
      }

      v58 = v125[0];
      *(v125[0] + 8 * (v68 >> 6) + 64) |= 1 << v68;
      v75 = (v58[6] + 16 * v68);
      *v75 = v65;
      v75[1] = v64;
      *(v58[7] + 8 * v68) = v63;

      v76 = v58[2];
      v41 = __OFADD__(v76, 1);
      v77 = v76 + 1;
      if (v41)
      {
        goto LABEL_103;
      }

      v58[2] = v77;
LABEL_45:
      v51 = v61;
      v53 = v62;
      v50 = v112;
      v57 = (v52 + 64) >> 6;
      v49 = v117;
    }
  }

  v13 = a4 + 32;

  v14 = 0;
  v115 = MEMORY[0x1E69E7CC0];
  v116 = a4;
  do
  {
    if (v14 >= *(a4 + 16))
    {
      goto LABEL_97;
    }

    sub_1973FA430(v13 + 40 * v14, v125);
    sub_1973FA430(v125, v124);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B1C8, &unk_19752EA30);
    type metadata accessor for Schema.Attribute();
    if (swift_dynamicCast())
    {
      v15 = v120;

      sub_197417B28(v124, v120);

      swift_beginAccess();
      v16 = *(v120 + 48);
      v17 = (v16 + 64);
      v18 = *(v16 + 16) + 1;
      while (--v18)
      {
        v19 = *v17;
        v17 += 40;
        if (v19)
        {
          goto LABEL_16;
        }
      }
    }

    else
    {
      sub_1973FA430(v125, v124);
      type metadata accessor for Schema.Relationship();
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_106;
      }

      v15 = v120;

      sub_19741DE84(v124, v120);

      swift_beginAccess();
      v20 = *(v120 + 56);
      v21 = *(v20 + 16);
      v22 = (v20 + 32);
      while (v21)
      {
        v23 = *v22++;
        --v21;
        if (v23 == 1)
        {
          if ((*(v120 + 168) & 1) == 0)
          {
            break;
          }

LABEL_16:
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AE50, &qword_19752D530);
          v24 = swift_allocObject();
          *(v24 + 16) = xmmword_19752C280;
          swift_beginAccess();
          v25 = *(v15 + 24);
          *(v24 + 32) = *(v15 + 16);
          *(v24 + 40) = v25;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v115 = sub_19741E43C(0, v115[2] + 1, 1, v115);
          }

          v27 = v115[2];
          v26 = v115[3];
          if (v27 >= v26 >> 1)
          {
            v115 = sub_19741E43C((v26 > 1), v27 + 1, 1, v115);
          }

          __swift_destroy_boxed_opaque_existential_1Tm_5(v125);
          v115[2] = v27 + 1;
          v115[v27 + 4] = v24;
          a4 = v116;
          goto LABEL_4;
        }
      }
    }

    __swift_destroy_boxed_opaque_existential_1Tm_5(v125);
LABEL_4:
    ++v14;
  }

  while (v14 != v11);

  v114[10] = v10;
  v114[11] = v10;
  v114[20] = v115;

  v28 = 0;
  v29 = MEMORY[0x1E69E7CC8];
  while (1)
  {
    if (v28 >= *(v116 + 16))
    {
      goto LABEL_98;
    }

    sub_1973FA430(v13, v125);
    v31 = v126;
    v32 = v127;
    __swift_project_boxed_opaque_existential_1(v125, v126);
    v33 = (*(v32 + 32))(v31, v32);
    v35 = v34;
    sub_1973FA430(v125, v124);
    v36 = swift_isUniquelyReferenced_nonNull_native();
    v121 = v29;
    v37 = sub_1973F4028(v33, v35);
    v39 = v29[2];
    v40 = (v38 & 1) == 0;
    v41 = __OFADD__(v39, v40);
    v42 = v39 + v40;
    if (v41)
    {
      break;
    }

    v43 = v38;
    if (v29[3] < v42)
    {
      sub_1973FA674(v42, v36);
      v37 = sub_1973F4028(v33, v35);
      if ((v43 & 1) != (v44 & 1))
      {
        goto LABEL_105;
      }

LABEL_30:
      if ((v43 & 1) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_22;
    }

    if (v36)
    {
      goto LABEL_30;
    }

    v48 = v37;
    sub_1974798E0();
    v37 = v48;
    if ((v43 & 1) == 0)
    {
LABEL_31:
      v29 = v121;
      v121[(v37 >> 6) + 8] |= 1 << v37;
      v45 = (v121[6] + 16 * v37);
      *v45 = v33;
      v45[1] = v35;
      sub_1973FA670();
      v46 = v121[2];
      v41 = __OFADD__(v46, 1);
      v47 = v46 + 1;
      if (v41)
      {
        goto LABEL_100;
      }

      v121[2] = v47;
      goto LABEL_23;
    }

LABEL_22:
    v30 = v37;

    v29 = v121;
    __swift_destroy_boxed_opaque_existential_1Tm_5((v121[7] + 40 * v30));
    sub_1973FA670();
LABEL_23:
    ++v28;
    __swift_destroy_boxed_opaque_existential_1Tm_5(v125);
    v13 += 40;
    if (v11 == v28)
    {
      v4 = v114;
      v49 = v123;
      v10 = v122;
      goto LABEL_37;
    }
  }

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
  sub_1975229CC();
  __break(1u);
LABEL_106:
  result = sub_1975223EC();
  __break(1u);
  return result;
}

uint64_t Schema.Entity.__allocating_init(_:properties:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  Schema.Entity.init(_:properties:)(a1, a2, a3);
  return v6;
}

void *Schema.Entity.init(_:properties:)(uint64_t a1, uint64_t a2, void *a3)
{
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
  swift_weakInit();
  *(v3 + 176) = 0;
  *(v3 + 128) = 0u;
  *(v3 + 144) = 0u;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  if (MEMORY[0x1E69E7CC0] >> 62)
  {
    goto LABEL_107;
  }

LABEL_2:

  v7 = MEMORY[0x1E69E7CD0];
LABEL_3:
  *(v3 + 32) = v7;
  *(v3 + 64) = a3;
  v8 = MEMORY[0x1E69E7CD0];
  v116 = MEMORY[0x1E69E7CD0];
  v117 = MEMORY[0x1E69E7CD0];
  v9 = a3[2];
  v109 = v3;
  if (!v9)
  {

    *(v3 + 80) = v8;
    *(v3 + 88) = v8;
    *(v3 + 160) = MEMORY[0x1E69E7CC0];
    swift_bridgeObjectRetain_n();

    v25 = MEMORY[0x1E69E7CC8];
    v104 = v8;
LABEL_39:

    *(v3 + 112) = v25;
    if ((v8 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      sub_1975220AC();
      type metadata accessor for Schema.Attribute();
      sub_1973FA628(&qword_1ED7CA320, 255, type metadata accessor for Schema.Attribute, &protocol conformance descriptor for Schema.Attribute);
      sub_197521C1C();
      v8 = v118[0];
      v45 = v118[1];
      v3 = v118[2];
      v46 = v118[3];
      v47 = v118[4];
    }

    else
    {
      v48 = -1 << *(v8 + 32);
      v45 = v8 + 56;
      v3 = ~v48;
      v49 = -v48;
      if (v49 < 64)
      {
        v50 = ~(-1 << v49);
      }

      else
      {
        v50 = -1;
      }

      v47 = v50 & *(v8 + 56);

      v46 = 0;
    }

    v51 = (v3 + 64) >> 6;
    v52 = MEMORY[0x1E69E7CC8];
    v112 = v8;
    v106 = v45;
    v107 = v51;
    while (1)
    {
      if (v8 < 0)
      {
        v57 = sub_19752212C();
        if (!v57)
        {
          goto LABEL_68;
        }

        v115 = v57;
        type metadata accessor for Schema.Attribute();
        swift_dynamicCast();
        a3 = v119[0];
        v55 = v46;
        v56 = v47;
        if (!v119[0])
        {
          goto LABEL_68;
        }
      }

      else
      {
        v53 = v46;
        v54 = v47;
        v55 = v46;
        if (!v47)
        {
          while (1)
          {
            v55 = v53 + 1;
            if (__OFADD__(v53, 1))
            {
              __break(1u);
              goto LABEL_98;
            }

            if (v55 >= v51)
            {
              break;
            }

            v54 = *(v45 + 8 * v55);
            ++v53;
            if (v54)
            {
              goto LABEL_53;
            }
          }

LABEL_68:
          sub_197416DA8();
          v72 = v109;
          v109[12] = v52;
          v73 = v104;
          if ((v104 & 0xC000000000000001) != 0)
          {
            swift_unknownObjectRetain();
            sub_1975220AC();
            type metadata accessor for Schema.Relationship();
            sub_1973FA628(&qword_1ED7C91A8, 255, type metadata accessor for Schema.Relationship, &protocol conformance descriptor for Schema.Relationship);
            sub_197521C1C();
            v73 = v119[0];
            v74 = v119[1];
            v3 = v119[2];
            v75 = v120;
            v76 = v121;
          }

          else
          {
            v77 = -1 << *(v104 + 32);
            v74 = v104 + 56;
            v3 = ~v77;
            v78 = -v77;
            if (v78 < 64)
            {
              v79 = ~(-1 << v78);
            }

            else
            {
              v79 = -1;
            }

            v76 = v79 & *(v104 + 56);

            v75 = 0;
          }

          v80 = (v3 + 64) >> 6;
          v81 = MEMORY[0x1E69E7CC8];
          v108 = v80;
          while (2)
          {
            if (v73 < 0)
            {
              if (!sub_19752212C() || (type metadata accessor for Schema.Relationship(), swift_dynamicCast(), a3 = v114, v84 = v75, v85 = v76, !v114))
              {
LABEL_96:
                sub_197416DA8();

                v72[13] = v81;
                v102 = MEMORY[0x1E69E7CC0];
                v72[9] = MEMORY[0x1E69E7CC0];
                v72[15] = sub_1973FAE70(v102);
                v72[21] = v102;
                return v72;
              }
            }

            else
            {
              v82 = v75;
              v83 = v76;
              v84 = v75;
              if (!v76)
              {
                while (1)
                {
                  v84 = v82 + 1;
                  if (__OFADD__(v82, 1))
                  {
                    break;
                  }

                  if (v84 >= v80)
                  {
                    goto LABEL_96;
                  }

                  v83 = *(v74 + 8 * v84);
                  ++v82;
                  if (v83)
                  {
                    goto LABEL_82;
                  }
                }

LABEL_98:
                __break(1u);
LABEL_99:
                __break(1u);
LABEL_100:
                __break(1u);
                goto LABEL_101;
              }

LABEL_82:
              v85 = (v83 - 1) & v83;
              a3 = *(*(v73 + 48) + ((v84 << 9) | (8 * __clz(__rbit64(v83)))));

              if (!a3)
              {
                goto LABEL_96;
              }
            }

            v113 = v85;
            v86 = v74;
            v87 = v73;
            swift_beginAccess();
            v89 = a3[2];
            v88 = a3[3];

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v114 = v81;
            v3 = v81;
            v91 = sub_1973F4028(v89, v88);
            v93 = v81[2];
            v94 = (v92 & 1) == 0;
            v37 = __OFADD__(v93, v94);
            v95 = v93 + v94;
            if (v37)
            {
              goto LABEL_104;
            }

            v96 = v92;
            if (v81[3] >= v95)
            {
              if (isUniquelyReferenced_nonNull_native)
              {
                goto LABEL_91;
              }

              v3 = &v114;
              v101 = v91;
              sub_197479A88();
              v91 = v101;
              if (v96)
              {
                goto LABEL_75;
              }

LABEL_92:
              v81 = v114;
              v114[(v91 >> 6) + 8] |= 1 << v91;
              v98 = (v81[6] + 16 * v91);
              *v98 = v89;
              v98[1] = v88;
              *(v81[7] + 8 * v91) = a3;

              v99 = v81[2];
              v37 = __OFADD__(v99, 1);
              v100 = v99 + 1;
              if (v37)
              {
                goto LABEL_106;
              }

              v81[2] = v100;
            }

            else
            {
              sub_197478114(v95, isUniquelyReferenced_nonNull_native);
              v3 = v114;
              v91 = sub_1973F4028(v89, v88);
              if ((v96 & 1) != (v97 & 1))
              {
                goto LABEL_109;
              }

LABEL_91:
              if ((v96 & 1) == 0)
              {
                goto LABEL_92;
              }

LABEL_75:
              v3 = v91;

              v81 = v114;
              *(v114[7] + 8 * v3) = a3;
            }

            v75 = v84;
            v76 = v113;
            v72 = v109;
            v73 = v87;
            v74 = v86;
            v80 = v108;
            continue;
          }
        }

LABEL_53:
        v56 = (v54 - 1) & v54;
        a3 = *(*(v8 + 48) + ((v55 << 9) | (8 * __clz(__rbit64(v54)))));

        if (!a3)
        {
          goto LABEL_68;
        }
      }

      swift_beginAccess();
      v59 = a3[2];
      v58 = a3[3];

      v60 = swift_isUniquelyReferenced_nonNull_native();
      v119[0] = v52;
      v3 = v52;
      v62 = sub_1973F4028(v59, v58);
      v63 = v52[2];
      v64 = (v61 & 1) == 0;
      v65 = v63 + v64;
      if (__OFADD__(v63, v64))
      {
        goto LABEL_103;
      }

      v66 = v61;
      if (v52[3] >= v65)
      {
        if (v60)
        {
          if (v61)
          {
            goto LABEL_46;
          }
        }

        else
        {
          v3 = v119;
          sub_197479A9C();
          if (v66)
          {
            goto LABEL_46;
          }
        }
      }

      else
      {
        sub_197478128(v65, v60);
        v3 = v119[0];
        v67 = sub_1973F4028(v59, v58);
        if ((v66 & 1) != (v68 & 1))
        {
          goto LABEL_109;
        }

        v62 = v67;
        if (v66)
        {
LABEL_46:

          v52 = v119[0];
          *(*(v119[0] + 56) + 8 * v62) = a3;

          goto LABEL_47;
        }
      }

      v52 = v119[0];
      *(v119[0] + 8 * (v62 >> 6) + 64) |= 1 << v62;
      v69 = (v52[6] + 16 * v62);
      *v69 = v59;
      v69[1] = v58;
      *(v52[7] + 8 * v62) = a3;

      v70 = v52[2];
      v37 = __OFADD__(v70, 1);
      v71 = v70 + 1;
      if (v37)
      {
        goto LABEL_105;
      }

      v52[2] = v71;
LABEL_47:
      v46 = v55;
      v47 = v56;
      v45 = v106;
      v51 = v107;
      v8 = v112;
    }
  }

  v10 = a3 + 4;

  v11 = 0;
  v110 = MEMORY[0x1E69E7CC0];
  v111 = a3;
  while (1)
  {
    if (v11 >= a3[2])
    {
      goto LABEL_99;
    }

    sub_1973FA430(&v10[5 * v11], v119);
    sub_1973FA430(v119, v118);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B1C8, &unk_19752EA30);
    type metadata accessor for Schema.Attribute();
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    v12 = v115;

    v3 = &v117;
    sub_197417B28(v118, v12);

    swift_beginAccess();
    v13 = *(v12 + 48);
    v14 = (v13 + 64);
    v15 = *(v13 + 16) + 1;
    while (--v15)
    {
      v16 = *v14;
      v14 += 40;
      if (v16)
      {
        goto LABEL_18;
      }
    }

LABEL_5:

    __swift_destroy_boxed_opaque_existential_1Tm_5(v119);
LABEL_6:
    if (++v11 == v9)
    {

      v3 = v116;
      v24 = v117;
      v109[10] = v117;
      v109[11] = v3;
      v109[20] = v110;
      v105 = v24;

      v104 = v3;

      a3 = 0;
      v25 = MEMORY[0x1E69E7CC8];
      while (1)
      {
        if (a3 >= v111[2])
        {
          goto LABEL_100;
        }

        sub_1973FA430(v10, v119);
        v27 = v120;
        v28 = v121;
        __swift_project_boxed_opaque_existential_1(v119, v120);
        v29 = (*(v28 + 32))(v27, v28);
        v31 = v30;
        sub_1973FA430(v119, v118);
        v32 = swift_isUniquelyReferenced_nonNull_native();
        v115 = v25;
        v3 = v25;
        v33 = sub_1973F4028(v29, v31);
        v35 = v25[2];
        v36 = (v34 & 1) == 0;
        v37 = __OFADD__(v35, v36);
        v38 = v35 + v36;
        if (v37)
        {
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
          if (!sub_1975220EC())
          {
            goto LABEL_2;
          }

          v7 = sub_1974F7E80(MEMORY[0x1E69E7CC0]);
          goto LABEL_3;
        }

        v39 = v34;
        if (v25[3] < v38)
        {
          break;
        }

        if (v32)
        {
          goto LABEL_32;
        }

        v3 = &v115;
        v44 = v33;
        sub_1974798E0();
        v33 = v44;
        if ((v39 & 1) == 0)
        {
LABEL_33:
          v25 = v115;
          v115[(v33 >> 6) + 8] |= 1 << v33;
          v41 = (v25[6] + 16 * v33);
          *v41 = v29;
          v41[1] = v31;
          sub_1973FA670();
          v42 = v25[2];
          v37 = __OFADD__(v42, 1);
          v43 = v42 + 1;
          if (v37)
          {
            goto LABEL_102;
          }

          v25[2] = v43;
          goto LABEL_25;
        }

LABEL_24:
        v26 = v33;

        v25 = v115;
        __swift_destroy_boxed_opaque_existential_1Tm_5((v115[7] + 40 * v26));
        sub_1973FA670();
LABEL_25:
        a3 = (a3 + 1);
        __swift_destroy_boxed_opaque_existential_1Tm_5(v119);
        v10 += 5;
        if (v9 == a3)
        {
          v3 = v109;
          v8 = v105;
          a3 = v111;
          goto LABEL_39;
        }
      }

      sub_1973FA674(v38, v32);
      v3 = v115;
      v33 = sub_1973F4028(v29, v31);
      if ((v39 & 1) != (v40 & 1))
      {
LABEL_109:
        sub_1975229CC();
        __break(1u);
        goto LABEL_110;
      }

LABEL_32:
      if ((v39 & 1) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_24;
    }
  }

  sub_1973FA430(v119, v118);
  type metadata accessor for Schema.Relationship();
  if (swift_dynamicCast())
  {
    v12 = v115;

    v3 = &v116;
    sub_19741DE84(v118, v12);

    swift_beginAccess();
    v17 = *(v12 + 56);
    v18 = *(v17 + 16);
    v19 = (v17 + 32);
    while (v18)
    {
      v20 = *v19++;
      --v18;
      if (v20 == 1)
      {
        if ((*(v12 + 168) & 1) == 0)
        {
          goto LABEL_5;
        }

LABEL_18:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AE50, &qword_19752D530);
        v3 = swift_allocObject();
        *(v3 + 16) = xmmword_19752C280;
        swift_beginAccess();
        v21 = *(v12 + 24);
        *(v3 + 32) = *(v12 + 16);
        *(v3 + 40) = v21;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v110 = sub_19741E43C(0, v110[2] + 1, 1, v110);
        }

        v23 = v110[2];
        v22 = v110[3];
        if (v23 >= v22 >> 1)
        {
          v110 = sub_19741E43C((v22 > 1), v23 + 1, 1, v110);
        }

        __swift_destroy_boxed_opaque_existential_1Tm_5(v119);
        v110[2] = v23 + 1;
        v110[v23 + 4] = v3;
        a3 = v111;
        goto LABEL_6;
      }
    }

    goto LABEL_5;
  }

LABEL_110:
  result = sub_1975223EC();
  __break(1u);
  return result;
}

uint64_t Schema.Entity.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  Schema.Entity.init(from:)(a1);
  return v2;
}

void *Schema.Entity.init(from:)(void *a1)
{
  v165 = *v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2BC10, &qword_197531D38);
  v164 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v153 - v6;
  v1[5] = 0;
  v1[6] = 0;
  swift_weakInit();
  v1[22] = 0;
  *(v1 + 8) = 0u;
  *(v1 + 9) = 0u;
  v166 = a1;
  v167 = v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1974F98E8();
  sub_197522AFC();
  if (v2)
  {
    v9 = 0;
    v10 = 0;
    v11 = v166;
    v12 = v167;
LABEL_4:

    swift_weakDestroy();
    if (v9)
    {

      if (!v10)
      {
LABEL_6:
        if ((v9 & 1) == 0)
        {
LABEL_10:

          swift_deallocPartialClassInstance();
          v13 = v11;
          goto LABEL_11;
        }

LABEL_7:

        goto LABEL_10;
      }
    }

    else if (!v10)
    {
      goto LABEL_6;
    }

    if ((v9 & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  v162 = v1 + 5;
  LOBYTE(v171[0]) = 0;
  v8 = sub_1975225EC();
  v15 = v167;
  v167[2] = v8;
  v15[3] = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2BC20, &qword_197531D40);
  LOBYTE(v170) = 5;
  sub_1974F993C();
  sub_19752255C();
  *&v163 = v171[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2BC30, &qword_197531D48);
  LOBYTE(v170) = 6;
  sub_1974F99F4();
  sub_19752255C();
  v156 = v7;
  v17 = v171[0];
  v158 = v4;
  v18 = v163;
  if (v163 && v171[0])
  {
    v19 = v167;
    v167[10] = v163;
    v19[11] = v17;
    v20 = v18;

    v21 = sub_1974F6438(v20, sub_1974D4C0C, sub_1974D34C4);

    v22 = sub_1974AE644(v21);

    v23 = sub_1974F6438(v17, sub_1974D4C08, sub_1974D347C);

    v24 = sub_1974AE68C(v23);

    v171[0] = v22;
  }

  else
  {

    LOBYTE(v170) = 3;
    sub_19752261C();
    v19 = v167;
    v167[10] = v171[0];
    LOBYTE(v170) = 4;
    sub_19752261C();
    v19[11] = v171[0];
    swift_beginAccess();

    v149 = sub_1974F6438(v148, sub_1974D4C0C, sub_1974D34C4);

    v150 = sub_1974AE644(v149);

    swift_beginAccess();

    v152 = sub_1974F6438(v151, sub_1974D4C08, sub_1974D347C);

    v24 = sub_1974AE68C(v152);

    v171[0] = v150;
  }

  sub_1974EE6F8(v24, sub_1973FA494, &qword_1EAF2B1C8, &unk_19752EA30);
  v25 = v171[0];
  v26 = v164;
  v19[8] = v171[0];
  v27 = v19 + 8;
  v28 = *(v25 + 16);
  v29 = MEMORY[0x1E69E7CC0];
  v30 = 0;
  if (v28)
  {
    v160 = v25;
    v161 = v27;
    v31 = v25 + 32;

    v163 = xmmword_19752C280;
    do
    {
      v32 = v30;
      sub_1973FA430(v31, v171);
      v33 = v172;
      v34 = v173;
      __swift_project_boxed_opaque_existential_1(v171, v172);
      if ((*(v34 + 136))(v33, v34))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AE50, &qword_19752D530);
        v35 = swift_allocObject();
        *(v35 + 16) = v163;
        v36 = v172;
        v37 = v173;
        __swift_project_boxed_opaque_existential_1(v171, v172);
        *(v35 + 32) = (*(v37 + 32))(v36, v37);
        *(v35 + 40) = v38;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = sub_19741E43C(0, v29[2] + 1, 1, v29);
        }

        v30 = v32;
        v39 = v29;
        v41 = v29[2];
        v40 = v29[3];
        if (v41 >= v40 >> 1)
        {
          v39 = sub_19741E43C((v40 > 1), v41 + 1, 1, v29);
        }

        v39[2] = v41 + 1;
        v29 = v39;
        v39[v41 + 4] = v35;
        v26 = v164;
      }

      else
      {
        v30 = v32;
      }

      __swift_destroy_boxed_opaque_existential_1Tm_5(v171);
      v31 += 40;
      --v28;
    }

    while (v28);
  }

  v42 = v167;
  v167[20] = v29;
  swift_beginAccess();
  v43 = v42[8];
  v159 = *(v43 + 16);
  v155 = v29;
  if (v159)
  {
    v44 = v43 + 32;

    v45 = 0;
    v46 = MEMORY[0x1E69E7CC8];
    v160 = v43;
    while (1)
    {
      *&v163 = v30;
      v48 = *(v160 + 16);
      v161 = v45;
      if (v45 >= v48)
      {
        goto LABEL_113;
      }

      v49 = v44;
      sub_1973FA430(v44, v171);
      v50 = v172;
      v51 = v173;
      __swift_project_boxed_opaque_existential_1(v171, v172);
      v52 = (*(v51 + 32))(v50, v51);
      v54 = v53;
      sub_1973FA430(v171, &v170);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v169 = v46;
      v57 = sub_1973F4028(v52, v54);
      v58 = v46[2];
      v59 = (v56 & 1) == 0;
      v60 = v58 + v59;
      if (__OFADD__(v58, v59))
      {
        goto LABEL_114;
      }

      v61 = v56;
      if (v46[3] >= v60)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if ((v56 & 1) == 0)
          {
            goto LABEL_39;
          }
        }

        else
        {
          sub_1974798E0();
          if ((v61 & 1) == 0)
          {
            goto LABEL_39;
          }
        }
      }

      else
      {
        sub_1973FA674(v60, isUniquelyReferenced_nonNull_native);
        v62 = sub_1973F4028(v52, v54);
        if ((v61 & 1) != (v63 & 1))
        {
          goto LABEL_120;
        }

        v57 = v62;
        if ((v61 & 1) == 0)
        {
LABEL_39:
          v46 = v169;
          v169[(v57 >> 6) + 8] |= 1 << v57;
          v64 = (v46[6] + 16 * v57);
          *v64 = v52;
          v64[1] = v54;
          sub_1973FA670();
          v65 = v46[2];
          v66 = __OFADD__(v65, 1);
          v67 = v65 + 1;
          if (v66)
          {
            goto LABEL_115;
          }

          v46[2] = v67;
          goto LABEL_30;
        }
      }

      v46 = v169;
      __swift_destroy_boxed_opaque_existential_1Tm_5((v169[7] + 40 * v57));
      sub_1973FA670();
LABEL_30:
      v30 = v163;
      v26 = v164;
      v47 = v49;
      v45 = (v161 + 1);
      __swift_destroy_boxed_opaque_existential_1Tm_5(v171);
      v44 = v47 + 40;
      if (v159 == v45)
      {

        goto LABEL_46;
      }
    }
  }

  v46 = MEMORY[0x1E69E7CC8];
LABEL_46:
  v68 = v167;
  v167[14] = v46;
  swift_beginAccess();
  v154 = v68[10];
  if ((v154 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    sub_1975220AC();
    type metadata accessor for Schema.Attribute();
    sub_1973FA628(&qword_1ED7CA320, 255, type metadata accessor for Schema.Attribute, &protocol conformance descriptor for Schema.Attribute);
    sub_197521C1C();
    v69 = v174;
    v70 = v175;
    v72 = v176;
    v71 = v177;
    v73 = v178;
  }

  else
  {
    v74 = -1 << *(v154 + 32);
    v70 = v154 + 56;
    v75 = ~v74;
    v76 = -v74;
    if (v76 < 64)
    {
      v77 = ~(-1 << v76);
    }

    else
    {
      v77 = -1;
    }

    v73 = v77 & *(v154 + 56);
    v78 = v154;
    swift_bridgeObjectRetain_n();
    v72 = v75;
    v71 = 0;
    v69 = v78;
  }

  v11 = v166;
  v153 = v72;
  v79 = (v72 + 64) >> 6;
  v161 = MEMORY[0x1E69E7CC8];
  v157 = v79;
  v159 = v69;
  while (1)
  {
    if (v69 < 0)
    {
      *&v163 = v71;
      v86 = sub_19752212C();
      if (!v86)
      {
        goto LABEL_75;
      }

      v169 = v86;
      type metadata accessor for Schema.Attribute();
      swift_dynamicCast();
      v85 = v170;
      v83 = v163;
      v84 = v73;
    }

    else
    {
      v81 = v71;
      v82 = v73;
      v83 = v71;
      if (!v73)
      {
        while (1)
        {
          v83 = v81 + 1;
          if (__OFADD__(v81, 1))
          {
            break;
          }

          if (v83 >= v79)
          {
            v26 = v164;
            goto LABEL_75;
          }

          v82 = *(v70 + 8 * v83);
          ++v81;
          if (v82)
          {
            goto LABEL_60;
          }
        }

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
        result = sub_1975229CC();
        __break(1u);
        return result;
      }

LABEL_60:
      *&v163 = v71;
      v84 = (v82 - 1) & v82;
      v85 = *(*(v69 + 48) + ((v83 << 9) | (8 * __clz(__rbit64(v82)))));
    }

    if (!v85)
    {
      break;
    }

    v160 = v84;
    v87 = v70;
    *&v163 = v30;
    swift_beginAccess();
    v88 = v85[2];
    v89 = v85[3];

    v90 = v161;
    v91 = swift_isUniquelyReferenced_nonNull_native();
    v170 = v90;
    v92 = sub_1973F4028(v88, v89);
    v94 = v90[2];
    v95 = (v93 & 1) == 0;
    v66 = __OFADD__(v94, v95);
    v96 = v94 + v95;
    if (v66)
    {
      goto LABEL_116;
    }

    v97 = v93;
    if (v90[3] < v96)
    {
      sub_197478128(v96, v91);
      v92 = sub_1973F4028(v88, v89);
      if ((v97 & 1) != (v98 & 1))
      {
        goto LABEL_120;
      }

LABEL_69:
      if (v97)
      {
        goto LABEL_53;
      }

      goto LABEL_70;
    }

    if (v91)
    {
      goto LABEL_69;
    }

    v103 = v92;
    sub_197479A9C();
    v92 = v103;
    if (v97)
    {
LABEL_53:
      v80 = v92;

      v161 = v170;
      *(v170[7] + 8 * v80) = v85;

      goto LABEL_54;
    }

LABEL_70:
    v99 = v170;
    v170[(v92 >> 6) + 8] |= 1 << v92;
    v100 = (v99[6] + 16 * v92);
    *v100 = v88;
    v100[1] = v89;
    *(v99[7] + 8 * v92) = v85;

    v101 = v99[2];
    v66 = __OFADD__(v101, 1);
    v102 = v101 + 1;
    if (v66)
    {
      goto LABEL_118;
    }

    v161 = v99;
    v99[2] = v102;
LABEL_54:
    v71 = v83;
    v11 = v166;
    v30 = v163;
    v26 = v164;
    v70 = v87;
    v69 = v159;
    v73 = v160;
    v79 = v157;
  }

  v11 = v166;
  v26 = v164;
LABEL_75:
  sub_197416DA8();

  v104 = v167;
  v167[12] = v161;
  swift_beginAccess();
  v154 = v104[11];
  if ((v154 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    sub_1975220AC();
    type metadata accessor for Schema.Relationship();
    sub_1973FA628(&qword_1ED7C91A8, 255, type metadata accessor for Schema.Relationship, &protocol conformance descriptor for Schema.Relationship);
    sub_197521C1C();
    v105 = v179;
    v106 = v180;
    v107 = v181;
    v108 = v182;
    v109 = v183;
  }

  else
  {
    v110 = -1 << *(v154 + 32);
    v106 = (v154 + 56);
    v111 = ~v110;
    v112 = -v110;
    if (v112 < 64)
    {
      v113 = ~(-1 << v112);
    }

    else
    {
      v113 = -1;
    }

    v114 = v113 & *(v154 + 56);
    v115 = v154;
    swift_bridgeObjectRetain_n();
    v109 = v114;
    v107 = v111;
    v108 = 0;
    v105 = v115;
  }

  v116 = v158;
  v153 = v107;
  v117 = (v107 + 64) >> 6;
  v160 = v105;
  v161 = MEMORY[0x1E69E7CC8];
  v157 = v117;
  v159 = v106;
  while (2)
  {
    if (v105 < 0)
    {
      v124 = sub_19752212C();
      if (!v124)
      {
        goto LABEL_104;
      }

      *&v163 = v30;
      v184 = v124;
      type metadata accessor for Schema.Relationship();
      swift_dynamicCast();
      v123 = v169;
      i = v108;
      v122 = v109;
    }

    else
    {
      v119 = v108;
      v120 = v109;
      for (i = v108; !v120; ++v119)
      {
        i = v119 + 1;
        if (__OFADD__(v119, 1))
        {
          goto LABEL_112;
        }

        if (i >= v117)
        {
          v26 = v164;
          goto LABEL_104;
        }

        v120 = v106[i];
      }

      *&v163 = v30;
      v122 = (v120 - 1) & v120;
      v123 = *(*(v105 + 48) + ((i << 9) | (8 * __clz(__rbit64(v120)))));
    }

    if (v123)
    {
      swift_beginAccess();
      v125 = v123[2];
      v126 = v123[3];

      v127 = v161;
      v128 = swift_isUniquelyReferenced_nonNull_native();
      v169 = v127;
      v129 = sub_1973F4028(v125, v126);
      v131 = v127[2];
      v132 = (v130 & 1) == 0;
      v66 = __OFADD__(v131, v132);
      v133 = v131 + v132;
      if (v66)
      {
        goto LABEL_117;
      }

      v134 = v130;
      if (v127[3] >= v133)
      {
        if (v128)
        {
          goto LABEL_98;
        }

        v140 = v129;
        sub_197479A88();
        v129 = v140;
        if (v134)
        {
          goto LABEL_82;
        }

LABEL_99:
        v136 = v169;
        v169[(v129 >> 6) + 8] |= 1 << v129;
        v137 = (v136[6] + 16 * v129);
        *v137 = v125;
        v137[1] = v126;
        *(v136[7] + 8 * v129) = v123;

        v138 = v136[2];
        v66 = __OFADD__(v138, 1);
        v139 = v138 + 1;
        if (v66)
        {
          goto LABEL_119;
        }

        v161 = v136;
        v136[2] = v139;
      }

      else
      {
        sub_197478114(v133, v128);
        v129 = sub_1973F4028(v125, v126);
        if ((v134 & 1) != (v135 & 1))
        {
          goto LABEL_120;
        }

LABEL_98:
        if ((v134 & 1) == 0)
        {
          goto LABEL_99;
        }

LABEL_82:
        v118 = v129;

        v161 = v169;
        *(v169[7] + 8 * v118) = v123;
      }

      v108 = i;
      v109 = v122;
      v11 = v166;
      v30 = v163;
      v26 = v164;
      v117 = v157;
      v116 = v158;
      v106 = v159;
      v105 = v160;
      continue;
    }

    break;
  }

  v11 = v166;
  v30 = v163;
  v26 = v164;
LABEL_104:
  sub_197416DA8();

  v12 = v167;
  v167[13] = v161;
  v141 = MEMORY[0x1E69E7CC0];
  v12[9] = MEMORY[0x1E69E7CC0];
  v12[15] = sub_1973FAE70(v141);
  v12[21] = v141;
  LOBYTE(v169) = 2;
  v142 = v156;
  v143 = sub_1975224FC();
  if (v30)
  {
    (*(v26 + 8))(v142, v116);
    v9 = 1;
    v10 = 1;

    goto LABEL_4;
  }

  v145 = v144;
  v146 = v143;
  swift_beginAccess();
  v12[5] = v146;
  v12[6] = v145;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2BC40, &qword_197531D50);
  v168 = 1;
  v147 = v158;
  sub_1974F9AAC();
  sub_19752261C();
  (*(v26 + 8))(v142, v147);
  v12[4] = v184;
  v13 = v166;
LABEL_11:
  __swift_destroy_boxed_opaque_existential_1Tm_5(v13);
  return v12;
}

uint64_t Schema.Entity.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2BC50, &qword_197531D58);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = v18 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1974F98E8();
  sub_197522B0C();
  swift_beginAccess();
  LOBYTE(v22[0]) = 0;

  sub_19752268C();
  if (v2)
  {
    (*(v6 + 8))(v9, v5);
  }

  else
  {

    swift_beginAccess();
    v22[0] = v3[4];
    LOBYTE(v21[0]) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2BC40, &qword_197531D50);
    sub_1974F9B60();
    sub_1975226EC();
    if (swift_weakLoadStrong())
    {
      swift_beginAccess();
    }

    LOBYTE(v22[0]) = 2;
    sub_19752267C();

    v11 = MEMORY[0x1E69E7CD0];
    v24 = MEMORY[0x1E69E7CD0];
    v23 = MEMORY[0x1E69E7CD0];
    swift_beginAccess();
    v12 = v3[8];
    v13 = *(v12 + 16);
    if (v13)
    {
      v19 = v6;
      v14 = v12 + 32;

      v15 = 0;
      while (v15 < *(v12 + 16))
      {
        sub_1973FA430(v14, v22);
        sub_1973FA430(v22, v21);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B1C8, &unk_19752EA30);
        type metadata accessor for Schema.Attribute();
        if (swift_dynamicCast())
        {
          sub_197417B28(v21, v20);
        }

        else
        {
          sub_1973FA430(v22, v21);
          type metadata accessor for Schema.Relationship();
          if (!swift_dynamicCast())
          {
            goto LABEL_16;
          }

          sub_19741DE84(v21, v20);
        }

        __swift_destroy_boxed_opaque_existential_1Tm_5(v22);
        ++v15;
        v14 += 40;
        if (v13 == v15)
        {

          v11 = v24;
          v6 = v19;
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_16:
      result = sub_1975223EC();
      __break(1u);
    }

    else
    {
LABEL_14:
      v22[0] = v11;
      LOBYTE(v21[0]) = 5;
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2BC20, &qword_197531D40);
      sub_1974F9C14();
      sub_1975226EC();
      v19 = v16;

      v22[0] = v23;
      LOBYTE(v21[0]) = 6;
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2BC30, &qword_197531D48);
      sub_1974F9CCC();
      v18[1] = v17;
      sub_1975226EC();

      swift_beginAccess();
      v21[0] = v3[10];
      LOBYTE(v24) = 3;
      sub_1975226EC();
      swift_beginAccess();
      v24 = v3[11];
      LOBYTE(v23) = 4;
      sub_1975226EC();
      return (*(v6 + 8))(v9, v5);
    }
  }

  return result;
}

uint64_t Schema.Entity.hash(into:)(uint64_t a1)
{
  swift_beginAccess();

  sub_19752180C();
}

char *static Schema.Entity.cachedEntityNamesChain(for:)(unint64_t a1, uint64_t a2)
{
  v2 = sub_1973F69F8(a1, a2);
  v3 = v2;
  if (!(v2 >> 62))
  {
    v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_13:

    return MEMORY[0x1E69E7CC0];
  }

  v4 = sub_1975220EC();
  if (!v4)
  {
    goto LABEL_13;
  }

LABEL_3:
  v14 = MEMORY[0x1E69E7CC0];
  result = sub_19741E264(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v6 = 0;
    v7 = v14;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x19A8E0960](v6, v3);
      }

      else
      {
        v8 = *(v3 + 8 * v6 + 32);
      }

      swift_beginAccess();
      v10 = *(v8 + 16);
      v9 = *(v8 + 24);

      v12 = *(v14 + 16);
      v11 = *(v14 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_19741E264((v11 > 1), v12 + 1, 1);
      }

      ++v6;
      *(v14 + 16) = v12 + 1;
      v13 = v14 + 16 * v12;
      *(v13 + 32) = v10;
      *(v13 + 40) = v9;
    }

    while (v4 != v6);

    return v7;
  }

  __break(1u);
  return result;
}

uint64_t sub_1974F3888(uint64_t *a1, unint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v98 = a6;
  v11 = a1[1];
  v90 = *a1;
  v12 = a1[2];
  sub_1973FA578((a1 + 3), v97, &qword_1EAF2AF20, &unk_19752F320);
  sub_1973FA578((a1 + 7), v96, &qword_1EAF2BB80, &qword_197531238);
  v91 = v11;

  sub_197521FFC();
  v14 = v13;
  v93[0] = v13;
  v15 = swift_conformsToProtocol2();
  v16 = v15;
  if (v15)
  {
    v17 = v14 == 0;
  }

  else
  {
    v17 = 1;
  }

  v18 = v14;
  if (!v17)
  {
    v19 = v15;
    v18 = v14;
    do
    {
      sub_1973F732C(v18, v93, v18, v19);
      v18 = v93[0];
      v19 = swift_conformsToProtocol2();
      if (v19)
      {
        v20 = v18 == 0;
      }

      else
      {
        v20 = 1;
      }
    }

    while (!v20);
  }

  v78 = v16;
  sub_1973FA578(v96, v93, &qword_1EAF2BB80, &qword_197531238);
  if (!v94)
  {
    sub_1973FA518(v93, &qword_1EAF2BB80, &qword_197531238);
    goto LABEL_25;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B1C8, &unk_19752EA30);
  v21 = type metadata accessor for Schema.Attribute();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_25:
    v31 = swift_conformsToProtocol2();
    if (v31 && v18)
    {
      v32 = v31;
      sub_1973FA578(v96, v93, &qword_1EAF2BB80, &qword_197531238);
      if (v94)
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B1C8, &unk_19752EA30);
        type metadata accessor for Schema.Relationship();
        if (swift_dynamicCast())
        {
          v33 = v92[0];
        }

        else
        {
          v33 = 0;
        }
      }

      else
      {

        sub_1973FA518(v93, &qword_1EAF2BB80, &qword_197531238);
        v33 = 0;
      }

      v39 = type metadata accessor for Schema.Relationship();
      swift_allocObject();
      v40 = sub_1973FB21C(v90, v91, v14, v12, v33);
      v94 = v39;
      v95 = sub_1973FA628(&qword_1ED7C9190, 255, type metadata accessor for Schema.Relationship, &protocol conformance descriptor for Schema.Relationship);
      v93[0] = v40;
      sub_1973F548C(v18, a2, a3, a4, a5, v18, v32);
      goto LABEL_84;
    }

    v34 = swift_conformsToProtocol2();
    if (v34 && v18)
    {
      sub_1974F4538(v90, v11, v14, v12, v96, a2, a3, v93, a4, a5, v97, a7, v18, a8, v34);

      goto LABEL_84;
    }

    sub_1973FA578(v96, v93, &qword_1EAF2BB80, &qword_197531238);
    if (v94)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B1C8, &unk_19752EA30);
      type metadata accessor for Schema.Attribute();
      if (swift_dynamicCast())
      {
        v35 = v92[0];
      }

      else
      {
        v35 = 0;
      }

      if (sub_1973F6EEC(v18))
      {
        if (v35)
        {
          swift_beginAccess();
          v36 = v35[5];
          v88 = v35[4];
          swift_beginAccess();
          v37 = v35[6];

          sub_1973FA578(v97, v92, &qword_1EAF2AF20, &unk_19752F320);
          swift_beginAccess();
          v38 = v35[14];
          v84 = v35[13];

LABEL_45:
          v41 = type metadata accessor for Schema.Attribute();
          v42 = swift_allocObject();
          v43 = v42;
          *(v42 + 80) = 0u;
          *(v42 + 64) = 0u;
          v44 = v42 + 64;
          *(v42 + 112) = 0;
          *(v42 + 120) = 0;
          *(v42 + 104) = 0;
          v45 = (v42 + 104);
          *(v42 + 16) = v90;
          *(v42 + 24) = v91;
          v46 = v88;
          if (!v36)
          {
            v46 = 0;
          }

          v47 = 0xE000000000000000;
          if (v36)
          {
            v47 = v36;
          }

          *(v42 + 32) = v46;
          *(v42 + 40) = v47;
          *(v42 + 48) = v37;
          *(v42 + 56) = v14;
          swift_beginAccess();
          sub_1973F7958(v92, v44);
          swift_endAccess();
          swift_beginAccess();
          *v45 = v84;
          *(v43 + 112) = v38;

          if (v78)
          {
            v48 = v14 == 0;
          }

          else
          {
            v48 = 1;
          }

          v49 = !v48;
          *(v43 + 96) = v49;
          sub_1973F710C();
          sub_1973FA518(v92, &qword_1EAF2AF20, &unk_19752F320);
          v94 = v41;
          v95 = sub_1973FA628(&qword_1ED7CA308, 255, type metadata accessor for Schema.Attribute, &protocol conformance descriptor for Schema.Attribute);

          v93[0] = v43;
          goto LABEL_82;
        }

LABEL_44:
        sub_1973FA578(v97, v92, &qword_1EAF2AF20, &unk_19752F320);
        v36 = 0;
        v84 = 0;
        v88 = 0;
        v38 = 0;
        v37 = MEMORY[0x1E69E7CC0];
        goto LABEL_45;
      }
    }

    else
    {
      sub_1973FA518(v93, &qword_1EAF2BB80, &qword_197531238);
      if (sub_1973F6EEC(v18))
      {
        goto LABEL_44;
      }

      v35 = 0;
    }

    v93[0] = v18;
    v50 = swift_conformsToProtocol2();
    if (v50 && v18)
    {
      v51 = v50;
      do
      {
        sub_1973F732C(v18, v93, v18, v51);
        v18 = v93[0];
        v51 = swift_conformsToProtocol2();
        if (v51)
        {
          v52 = v18 == 0;
        }

        else
        {
          v52 = 1;
        }
      }

      while (!v52);
    }

    sub_197520C6C();
    if (!swift_dynamicCastMetatype())
    {
      if (v35)
      {
        swift_beginAccess();
        v57 = v35[4];
        v56 = v35[5];
        swift_beginAccess();
        v58 = v35[6];

        sub_1973FA578(v97, v93, &qword_1EAF2AF20, &unk_19752F320);
        swift_beginAccess();
        v59 = v35[13];
        v60 = v35[14];
      }

      else
      {
        sub_1973FA578(v97, v93, &qword_1EAF2AF20, &unk_19752F320);
        v56 = 0;
        v57 = 0;
        v59 = 0;
        v60 = 0;
        v58 = MEMORY[0x1E69E7CC0];
      }

      v76 = type metadata accessor for Schema.CompositeAttribute();
      swift_allocObject();
      v77 = Schema.CompositeAttribute.init(name:originalName:options:valueType:defaultValue:hashModifier:)(v90, v91, v57, v56, v58, v14, v93, v59, v60);
      v94 = v76;
      v95 = sub_1973FA628(qword_1ED7C6FB0, 255, type metadata accessor for Schema.CompositeAttribute, &protocol conformance descriptor for Schema.Attribute);

      v93[0] = v77;
      sub_1973FA670();
      goto LABEL_83;
    }

    if (v35)
    {
      swift_beginAccess();
      v53 = v35[5];
      v89 = v35[4];
      swift_beginAccess();
      v54 = v35[6];

      sub_1973FA578(v97, v93, &qword_1EAF2AF20, &unk_19752F320);
      swift_beginAccess();
      v81 = v35[14];
      v85 = v35[13];
      v55 = v53 == 0;
    }

    else
    {
      sub_1973FA578(v97, v93, &qword_1EAF2AF20, &unk_19752F320);
      v53 = 0;
      v85 = 0;
      v89 = 0;
      v81 = 0;
      v55 = 1;
      v54 = MEMORY[0x1E69E7CC0];
    }

    v61 = type metadata accessor for Schema.Attribute();
    v62 = swift_allocObject();
    v63 = v62;
    *(v62 + 80) = 0u;
    *(v62 + 64) = 0u;
    v64 = v62 + 64;
    *(v62 + 112) = 0;
    *(v62 + 120) = 0;
    *(v62 + 104) = 0;
    v65 = (v62 + 104);
    *(v62 + 16) = v90;
    *(v62 + 24) = v91;
    v66 = v89;
    if (v55)
    {
      v66 = 0;
    }

    v67 = 0xE000000000000000;
    if (!v55)
    {
      v67 = v53;
    }

    *(v62 + 32) = v66;
    *(v62 + 40) = v67;
    *(v62 + 48) = v54;
    *(v62 + 56) = v14;
    swift_beginAccess();
    sub_1973F7958(v93, v64);
    swift_endAccess();
    swift_beginAccess();
    *v65 = v85;
    *(v63 + 112) = v81;

    if (v78)
    {
      v68 = v14 == 0;
    }

    else
    {
      v68 = 1;
    }

    v69 = !v68;
    *(v63 + 96) = v69;
    sub_1973F710C();
    sub_1973FA518(v93, &qword_1EAF2AF20, &unk_19752F320);
    v94 = v61;
    v95 = sub_1973FA628(&qword_1ED7CA308, 255, type metadata accessor for Schema.Attribute, &protocol conformance descriptor for Schema.Attribute);

    v93[0] = v63;
LABEL_82:
    sub_1973FA670();
LABEL_83:
    sub_1973FA670();
    goto LABEL_84;
  }

  swift_beginAccess();
  v22 = *(v92[0] + 48);
  v23 = *(v22 + 16) + 1;
  v24 = 32;
  do
  {
    if (!--v23)
    {

      goto LABEL_25;
    }

    v25 = *(v22 + v24);
    v24 += 40;
  }

  while (v25 != 1);
  swift_beginAccess();
  v26 = *(v92[0] + 40);
  v83 = *(v92[0] + 32);
  sub_1973FA578(v97, v93, &qword_1EAF2AF20, &unk_19752F320);
  swift_beginAccess();
  v27 = *(v92[0] + 112);
  v87 = *(v92[0] + 104);
  v28 = swift_allocObject();
  *(v28 + 64) = 0u;
  *(v28 + 80) = 0u;
  *(v28 + 112) = 0;
  *(v28 + 120) = 0;
  *(v28 + 104) = 0;
  *(v28 + 16) = v90;
  *(v28 + 24) = v11;
  *(v28 + 32) = v83;
  *(v28 + 40) = v26;
  *(v28 + 48) = v22;
  *(v28 + 56) = v14;
  swift_beginAccess();

  sub_1973F7958(v93, v28 + 64);
  swift_endAccess();
  swift_beginAccess();
  *(v28 + 104) = v87;
  *(v28 + 112) = v27;

  if (v78)
  {
    v29 = v14 == 0;
  }

  else
  {
    v29 = 1;
  }

  v30 = !v29;
  *(v28 + 96) = v30;
  sub_1973F710C();
  sub_1973FA518(v93, &qword_1EAF2AF20, &unk_19752F320);
  v94 = v21;
  v95 = sub_1973FA628(&qword_1ED7CA308, 255, type metadata accessor for Schema.Attribute, &protocol conformance descriptor for Schema.Attribute);

  v93[0] = v28;
LABEL_84:
  v70 = v98;
  sub_1973FA430(v93, v92);
  v71 = *v70;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v70 = v71;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v71 = sub_1973FA494(0, v71[2] + 1, 1, v71);
    *v70 = v71;
  }

  v74 = v71[2];
  v73 = v71[3];
  if (v74 >= v73 >> 1)
  {
    *v70 = sub_1973FA494((v73 > 1), v74 + 1, 1, v71);
  }

  sub_1973FA518(v96, &qword_1EAF2BB80, &qword_197531238);
  sub_1973FA518(v97, &qword_1EAF2AF20, &unk_19752F320);
  *(*v70 + 16) = v74 + 1;
  sub_1973FA670();
  return __swift_destroy_boxed_opaque_existential_1Tm_5(v93);
}