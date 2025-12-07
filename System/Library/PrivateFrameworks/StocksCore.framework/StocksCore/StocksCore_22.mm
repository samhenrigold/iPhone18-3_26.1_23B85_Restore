uint64_t sub_1DAC46EC4@<X0>(uint64_t *a1@<X8>)
{
  v39 = a1;
  v1 = sub_1DACB7274();
  v37 = *(v1 - 8);
  v38 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v36 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = MEMORY[0x1E69E6720];
  sub_1DAA6AB50(0, &qword_1EE123AA0, MEMORY[0x1E6959F70], MEMORY[0x1E69E6720]);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v35 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v30 - v7;
  sub_1DAA6AB50(0, qword_1EE11EF28, type metadata accessor for SymbolEntity, v3);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v33 = &v30 - v9;
  sub_1DAA6AB50(0, &qword_1EE123A80, MEMORY[0x1E6968E10], v3);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v31 = &v30 - v11;
  v12 = sub_1DACB78E4();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1DACB7E44();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v17 = sub_1DACB92E4();
  MEMORY[0x1EEE9AC00](v17 - 8);
  v18 = sub_1DACB7904();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  sub_1DAB2AF6C(0);
  v32 = v20;
  sub_1DACB9284();
  sub_1DACB7DF4();
  v21 = *MEMORY[0x1E6968DF0];
  v22 = *(v13 + 104);
  v22(v15, v21, v12);
  sub_1DACB7914();
  sub_1DACB9284();
  sub_1DACB7DF4();
  v22(v15, v21, v12);
  v23 = v31;
  sub_1DACB7914();
  (*(v19 + 56))(v23, 0, 1, v18);
  v24 = type metadata accessor for SymbolEntity(0);
  (*(*(v24 - 8) + 56))(v33, 1, 1, v24);
  v25 = sub_1DACB6E84();
  v26 = *(*(v25 - 8) + 56);
  v26(v34, 1, 1, v25);
  v26(v35, 1, 1, v25);
  (*(v37 + 104))(v36, *MEMORY[0x1E695A500], v38);
  sub_1DAAA1620(&unk_1EE11EF70, type metadata accessor for SymbolEntity, &protocol conformance descriptor for SymbolEntity);
  v27 = sub_1DACB7014();
  v28 = v39;
  *v39 = v27;
  sub_1DAA6AB50(0, &unk_1EE123AC0, sub_1DAAEBAC4, MEMORY[0x1E6959D18]);
  sub_1DACB6D94();
  v40 = 0u;
  v41 = 0u;
  v42 = 0;
  sub_1DACB6D84();
  result = sub_1DACB6D54();
  v28[1] = result;
  return result;
}

uint64_t sub_1DAC47514(uint64_t a1)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1DAC4753C, 0, 0);
}

uint64_t sub_1DAC4753C(uint64_t a1)
{
  v3 = v1[11];
  v2 = v1[12];
  sub_1DACB6D24();
  v4 = v1[5];
  v5 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v4);
  v1[7] = v3;
  v1[8] = v2;
  v1[9] = 0x4000000000000000;
  v6 = *(v5 + 8);
  sub_1DACB71F4();
  sub_1DACB71F4();
  v9 = (v6 + *v6);
  v7 = swift_task_alloc();
  v1[13] = v7;
  *v7 = v1;
  v7[1] = sub_1DAC476A8;

  return (v9)(v1 + 7, v4, v5);
}

uint64_t sub_1DAC476A8()
{
  v2 = *v1;
  v2[14] = v0;

  sub_1DAAF5A24(v2[7], v2[8], v2[9]);
  if (v0)
  {
    v3 = sub_1DAC477C8;
  }

  else
  {
    v3 = sub_1DAAEBDAC;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DAC477C8()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_1DAC47830()
{
  result = qword_1ECBE94E0;
  if (!qword_1ECBE94E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE94E0);
  }

  return result;
}

uint64_t sub_1DAC478CC(uint64_t a1)
{
  v2 = type metadata accessor for SymbolEntity(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1DAAA2C80(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1DACB6FC4();
  return sub_1DAAD5434(a1);
}

uint64_t (*sub_1DAC4795C(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1DACB6FA4();
  return sub_1DAADD2B0;
}

unint64_t sub_1DAC479D8()
{
  result = qword_1EE122A70;
  if (!qword_1EE122A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE122A70);
  }

  return result;
}

unint64_t sub_1DAC47A30()
{
  result = qword_1EE122A80;
  if (!qword_1EE122A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE122A80);
  }

  return result;
}

uint64_t sub_1DAC47ABC@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECBE5BA0 != -1)
  {
    swift_once();
  }

  v2 = sub_1DACB7904();
  v3 = __swift_project_value_buffer(v2, qword_1ECBE9498);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1DAC47B64(uint64_t a1, uint64_t a2)
{
  sub_1DAC47E64(0, &qword_1ECBE94C8, MEMORY[0x1E695A4A8]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1DAC47E64(0, &qword_1ECBE94D0, MEMORY[0x1E695A4A0]);
  MEMORY[0x1EEE9AC00](v3);
  sub_1DACB7254();
  sub_1DACB7244();
  swift_getKeyPath();
  sub_1DAC46CF0(0);
  sub_1DACB7234();

  sub_1DACB7244();
  sub_1DACB7264();
  return sub_1DACB7204();
}

uint64_t sub_1DAC47D08(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DAA94754;

  return sub_1DAC47514(a1);
}

uint64_t sub_1DAC47DA4(uint64_t a1)
{
  v2 = sub_1DAB951C8();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

unint64_t sub_1DAC47DF0()
{
  result = qword_1ECBE94E8;
  if (!qword_1ECBE94E8)
  {
    sub_1DAC47E64(255, &qword_1ECBE94F0, MEMORY[0x1E695A488]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE94E8);
  }

  return result;
}

void sub_1DAC47E64(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1DAB951C8();
    v7 = a3(a1, &type metadata for OpenSymbolIntent, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1DAC47EC8(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = &v27 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v27 - v17;
  v19 = sub_1DACB9884();
  if (!v19)
  {
    return sub_1DACB96B4();
  }

  v41 = v19;
  v45 = sub_1DACB9DA4();
  v32 = sub_1DACB9DB4();
  sub_1DACB9D54();
  result = sub_1DACB9854();
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
      v22 = sub_1DACB98B4();
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
      sub_1DACB9D94();
      result = sub_1DACB9894();
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

uint64_t ArticleScorer.init(subscribedTags:config:currentDate:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = a1;
  sub_1DAA4D460(a2, (a4 + 8));
  v6 = *(type metadata accessor for ArticleScorer(0) + 24);
  v7 = sub_1DACB7CC4();
  v8 = *(*(v7 - 8) + 32);

  return v8(&a4[v6], a3, v7);
}

uint64_t type metadata accessor for ArticleScorer(uint64_t a1)
{
  result = qword_1EE1234A0;
  if (!qword_1EE1234A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void ArticleScorer.score<A>(article:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v29 = a4;
  v27 = sub_1DACB7CC4();
  v8 = *(v27 - 8);
  v9 = MEMORY[0x1EEE9AC00](v27);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v28 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))();
  v14 = (*(a3 + 56))(a2, a3);
  v15 = (*(a3 + 40))(a2, a3);
  v16 = (*(a3 + 48))(a2, a3);
  v17 = sub_1DAC496DC(a1, v4, a2, a3);
  v18 = (*(a3 + 32))(a2, a3);
  v31 = v4;
  v19 = sub_1DAB6AA74(0, sub_1DAC49A88, &v30, v18);

  v20 = (*(a3 + 64))(a2, a3);
  v21 = (*(a3 + 72))(a2, a3);
  v22 = (*(a3 + 96))(a2, a3);
  (*(a3 + 80))(a2, a3);
  type metadata accessor for ArticleScorer(0);
  sub_1DACB7B84();
  v24 = v23;
  (*(v8 + 8))(v11, v27);
  v25 = (*(a3 + 88))(a2, a3);
  *v33 = v14;
  *&v33[1] = v15;
  *&v33[2] = v16;
  *&v33[3] = v17;
  v33[4] = v19;
  *&v33[5] = v20;
  *&v33[6] = v21;
  v34 = v22 & 1;
  v35 = v24 * 1000.0;
  v36 = v25;
  v37 = 0u;
  v38 = 0u;
  v39 = 0;
  sub_1DAC487C8(v33, v4 + 1, v32);
  sub_1DAAD8D70(v28, v32, a2, a3, v29);
}

uint64_t sub_1DAC48758(void *a1, void *a2, uint64_t *a3)
{
  v4 = a2[1];
  v5 = *a3;
  v8[0] = *a2;
  v8[1] = v4;
  v7[2] = v8;
  result = sub_1DAC78448(sub_1DAA88710, v7, v5);
  if (__OFADD__(*a1, result & 1))
  {
    __break(1u);
  }

  else
  {
    *a1 += result & 1;
  }

  return result;
}

double sub_1DAC487C8@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v93 = *a1;
  v96 = *(a1 + 16);
  v97 = *(a1 + 24);
  v5 = *(a1 + 32);
  v98 = *(a1 + 40);
  v99 = *(a1 + 8);
  v100 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  v8 = *(a1 + 72);
  v9 = *(a1 + 80);
  v10 = *(a1 + 88);
  v11 = a2[3];
  v12 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v11);
  (*(v12 + 136))(v11, v12);
  v14 = v8 > 0.0 && v7 > 0.0;
  v15 = 1.0;
  v94 = v8;
  v95 = v7;
  v16 = v7 / v8;
  v17 = 1.0;
  if (v14)
  {
    v17 = exp2(-(v13 * v16));
  }

  v92 = v17;
  v18 = a2[3];
  v19 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v18);
  (*(v19 + 48))(v18, v19);
  if (v14)
  {
    v15 = exp2(-(v20 * v16));
  }

  v90 = v15;
  v21 = a2[3];
  v22 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v21);
  v23 = (*(v22 + 40))(v21, v22);
  v24 = a2[3];
  v25 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v24);
  v89 = (*(v25 + 24))(v24, v25);
  v26 = a2[3];
  v27 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v26);
  v87 = (*(v27 + 32))(v26, v27);
  sub_1DAC49D90(v5, a2);
  v88 = v28;
  v29 = a2[3];
  v30 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v29);
  v86 = (*(v30 + 104))(v29, v30);
  v31 = a2[3];
  v32 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v31);
  v33 = (*(v32 + 112))(v31, v32);
  v34 = a2[3];
  v35 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v34);
  v36 = (*(v35 + 16))(v34, v35);
  v37 = a2[3];
  v38 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v37);
  v39 = (*(v38 + 8))(v37, v38);
  v40 = a2[3];
  v41 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v40);
  v42 = (*(v41 + 56))(v40, v41);
  v43 = a2[3];
  v44 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v43);
  v45 = (*(v44 + 96))(v43, v44);
  v46 = a2[3];
  v47 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v46);
  v48 = (*(v47 + 120))(v46, v47);
  v49 = a2[3];
  v50 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v49);
  v51 = (*(v50 + 152))(v49, v50);
  v52 = 1.0;
  if (v6)
  {
    v53 = a2[3];
    v54 = a2[4];
    v55 = v51;
    __swift_project_boxed_opaque_existential_1(a2, v53);
    v56 = (*(v54 + 144))(v53, v54);
    v51 = v55;
    v52 = 1.0 - v56;
  }

  v57 = v36;
  v58 = v39;
  v59 = v36 + v39 + v42 + v45 + v48;
  if (v59 <= 0.0)
  {
    v59 = 1.0;
  }

  v60 = v98 * v86 + v33;
  if (v60 <= 1.0)
  {
    v61 = v98 * v86 + v33;
  }

  else
  {
    v61 = 1.0;
  }

  v62 = v60 > 0.0;
  v63 = 0.0;
  if (!v62)
  {
    v61 = 0.0;
  }

  v64 = v96 * v89 + v87;
  if (v64 <= 1.0)
  {
    v65 = v96 * v89 + v87;
  }

  else
  {
    v65 = 1.0;
  }

  if (v64 > 0.0)
  {
    v63 = v65;
  }

  v66 = (1.0 - v23) * v63;
  v91 = v90 * (v97 * v23) + v92 * v66;
  v67 = v52 / v59;
  v68 = v99 * v58;
  v69 = v88 * v42;
  v70 = v61 * v45;
  v71 = v100 * v48;
  v72 = ((v97 * v23 + v66) * v36 + v99 * v58 + v69 + v70 + v71) * (v52 / v59);
  v73 = pow(1.0 - v51, v10);
  v74 = v73 * v72;
  v75 = v73 * ((v91 * v57 + v92 * (v68 + v69 + v70 + v71)) * v67);
  sub_1DAC495FC(a2);
  v77 = v93 * v76;
  v78 = 1.0 - v76;
  v79 = v93 * v76 + (1.0 - v76) * v74;
  v80 = v93 * v76 + (1.0 - v76) * v75;
  v81 = a2[3];
  v82 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v81);
  v83 = (*(v82 + 128))(v81, v82);
  v84 = pow(1.0 - v83, v9);
  *a3 = v93;
  *(a3 + 8) = v99;
  result = v77 + v78 * (v75 * v84);
  *(a3 + 16) = v96;
  *(a3 + 24) = v97;
  *(a3 + 32) = v5;
  *(a3 + 40) = v98;
  *(a3 + 48) = v100;
  *(a3 + 56) = v6;
  *(a3 + 64) = v95;
  *(a3 + 72) = v94;
  *(a3 + 80) = v9;
  *(a3 + 88) = v10;
  *(a3 + 96) = v79;
  *(a3 + 104) = v80;
  *(a3 + 112) = result;
  return result;
}

void ArticleScorer.score<A>(articles:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = a1;
  v12 = a2;
  v13 = a3;
  v5 = sub_1DACB9724();
  v7 = type metadata accessor for ScoredArticle(0, a2, a3, v6);
  WitnessTable = swift_getWitnessTable();
  v15 = sub_1DAC47EC8(sub_1DAC49AA4, v11, v5, v7, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v9);
  sub_1DACB9724();
  v14 = sub_1DACB90F4();
  sub_1DACB91A4();
  swift_getWitnessTable();
  sub_1DACB9534();

  v10 = sub_1DACB9194();

  v15 = v10;
  v14 = sub_1DACB9104();
  swift_getWitnessTable();
  sub_1DACB9534();
}

uint64_t sub_1DAC48F94(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(a4 + 24))(a3, a4);
  v8 = type metadata accessor for ScoredArticle(255, a3, a4, v7);
  sub_1DACB9724();
  sub_1DACB71E4();
  sub_1DACB91B4();

  if (!v13)
  {
    sub_1DACB96B4();
  }

  sub_1DACBA124();
  v9 = *(v8 - 8);
  swift_allocObject();
  v10 = sub_1DACB9684();
  (*(v9 + 16))(v11, a2, v8);
  sub_1DAC8FF44(v10, v8);
  sub_1DACB96A4();

  sub_1DACB91A4();
  return sub_1DACB91C4();
}

uint64_t sub_1DAC4918C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v30 = *a1;
  v26 = a3;
  v27 = a4;
  v8 = type metadata accessor for ScoredArticle(255, a3, a4, a4);
  v9 = sub_1DACB9724();
  WitnessTable = swift_getWitnessTable();
  sub_1DACB9544();
  MEMORY[0x1E1276FF0](&v30, v9, WitnessTable);

  v29 = v30;
  v23 = a3;
  v24 = a4;
  v25 = a2;
  v18 = a3;
  v19 = a4;
  v20 = sub_1DAC49CFC;
  v21 = &v22;
  v11 = sub_1DACB9E54();
  v28 = swift_getWitnessTable();
  v12 = swift_getWitnessTable();
  v14 = sub_1DAC47EC8(sub_1DAC49D08, v17, v11, v8, MEMORY[0x1E69E73E0], v12, MEMORY[0x1E69E7410], v13);

  *a5 = v14;
  return result;
}

void sub_1DAC49360(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v34 = a5;
  v35 = a6;
  v10 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = (a2 + *(type metadata accessor for ScoredArticle(0, v13, v14, v13) + 36));
  v16 = *(v15 + 4);
  v17 = *(v15 + 6);
  v32 = *(v15 + 5);
  v31 = *(v15 + 56);
  v18 = *(v15 + 8);
  v19 = *(v15 + 9);
  v20 = *(v15 + 13);
  v33 = *(v15 + 12);
  v21 = a3[4];
  v22 = a3[5];
  v23 = *v15;
  v30 = v15[1];
  v36 = v23;
  __swift_project_boxed_opaque_existential_1(a3 + 1, v21);
  v24 = (*(v22 + 160))(v21, v22);
  (*(v10 + 16))(v12, a2, a4);
  v25 = v24 * *&v36;
  v26 = a3[4];
  v27 = a3[5];
  __swift_project_boxed_opaque_existential_1(a3 + 1, v26);
  v28 = (*(v27 + 128))(v26, v27);
  v29 = pow(1.0 - v28, a1);
  v37[1] = v30;
  v37[0] = v36;
  v38 = v16;
  v39 = v32;
  v40 = v17;
  v41 = v31;
  v42 = v18;
  v43 = v19;
  v44 = a1;
  v45 = 0;
  v46 = v33;
  v47 = v20;
  v48 = v25 + (1.0 - v24) * (v20 * v29);
  sub_1DAAD8D70(v12, v37, a4, v34, v35);
}

uint64_t sub_1DAC495FC(void *a1)
{
  sub_1DACB81F4();
  if ((sub_1DACB81E4() & 1) == 0)
  {
    goto LABEL_5;
  }

  sub_1DACB8014();
  sub_1DACB7FF4();
  if (qword_1EE1200C8 != -1)
  {
    swift_once();
  }

  sub_1DACB7FE4();

  if ((v5 & 1) == 0)
  {
LABEL_5:
    v3 = a1[3];
    v4 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v3);
    return (*(v4 + 160))(v3, v4);
  }

  return result;
}

double sub_1DAC496DC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v7 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9);
  v10 = (*(a4 + 16))(v5, a4);
  v11 = *(v10 + 16);
  if (v11)
  {
    v36 = v7;
    v37 = v5;
    v12 = *a2;
    v38 = v10;
    v13 = v10 + 32;
    v14 = 0.0;
    v15 = 0.0;
    do
    {
      sub_1DAA4D678(v13, v40);
      v16 = v41;
      v17 = v42;
      __swift_project_boxed_opaque_existential_1(v40, v41);
      v39[0] = (*(v17 + 8))(v16, v17);
      v39[1] = v18;
      MEMORY[0x1EEE9AC00](v39[0]);
      *(&v35 - 2) = v39;
      LOBYTE(v16) = sub_1DAC78448(sub_1DAC49E88, (&v35 - 4), v12);

      if (v16)
      {
        v19 = v41;
        v20 = v42;
        __swift_project_boxed_opaque_existential_1(v40, v41);
        if ((*(v20 + 24))(v19, v20) > 0.0)
        {
          v21 = v41;
          v22 = v42;
          __swift_project_boxed_opaque_existential_1(v40, v41);
          v23 = (*(v22 + 16))(v21, v22);
          v24 = v41;
          v25 = v42;
          __swift_project_boxed_opaque_existential_1(v40, v41);
          v14 = v14 + v23 / (*(v25 + 24))(v24, v25);
          v15 = v15 + 1.0;
        }
      }

      __swift_destroy_boxed_opaque_existential_1(v40);
      v13 += 40;
      --v11;
    }

    while (v11);

    v7 = v36;
    v5 = v37;
    if (v15 != 0.0)
    {
      v26 = v14 / v15;
      goto LABEL_13;
    }
  }

  else
  {
  }

  (*(a4 + 8))(v40, v5, a4);
  v27 = v41;
  v28 = v42;
  __swift_project_boxed_opaque_existential_1(v40, v41);
  if ((*(v28 + 24))(v27, v28) <= 0.0)
  {
    __swift_destroy_boxed_opaque_existential_1(v40);
    v26 = 0.0;
  }

  else
  {
    v29 = v41;
    v30 = v42;
    __swift_project_boxed_opaque_existential_1(v40, v41);
    v31 = (*(v30 + 16))(v29, v30);
    v32 = v41;
    v33 = v42;
    __swift_project_boxed_opaque_existential_1(v40, v41);
    v26 = v31 / (*(v33 + 24))(v32, v33);
    __swift_destroy_boxed_opaque_existential_1(v40);
  }

LABEL_13:
  (*(v7 + 8))(v9, v5);
  return v26;
}

void sub_1DAC49BA0(uint64_t a1)
{
  sub_1DAA613E8();
  if (v1 <= 0x3F)
  {
    sub_1DAC49C3C();
    if (v2 <= 0x3F)
    {
      sub_1DACB7CC4();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1DAC49C3C()
{
  result = qword_1EE121200;
  if (!qword_1EE121200)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE121200);
  }

  return result;
}

uint64_t sub_1DAC49D08(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4[4];
  v7 = *a1;
  type metadata accessor for ScoredArticle(255, v4[2], v4[3], a4);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return v6(v7, &a1[*(TupleTypeMetadata2 + 48)]);
}

uint64_t sub_1DAC49D90(uint64_t a1, void *a2)
{
  if (a1 == 2)
  {
    v5 = a2[3];
    v6 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v5);
    return (*(v6 + 80))(v5, v6);
  }

  else if (a1 == 1)
  {
    v2 = a2[3];
    v3 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v2);
    return (*(v3 + 72))(v2, v3);
  }

  else
  {
    v7 = a2[3];
    v8 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v7);
    if (a1 >= 3)
    {
      return (*(v8 + 88))(v7, v8);
    }

    else
    {
      return (*(v8 + 64))(v7, v8);
    }
  }
}

uint64_t sub_1DAC49EA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_1DACB8FB4();
  v22 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1DACB9004();
  v12 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  v16 = swift_allocObject();
  v16[2] = a6;
  v16[3] = sub_1DAA73914;
  v16[4] = v15;
  aBlock[4] = sub_1DAC4A714;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DAA5796C;
  aBlock[3] = &block_descriptor_33;
  v17 = _Block_copy(aBlock);
  sub_1DACB71F4();
  sub_1DACB71E4();
  sub_1DACB8FD4();
  v23 = MEMORY[0x1E69E7CC0];
  sub_1DAA572FC(&qword_1EE124040, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  v18 = MEMORY[0x1E69E7F60];
  sub_1DAA58090(0, &qword_1EE123EC0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1DAA57D6C(&qword_1EE123EB0, &qword_1EE123EC0, v18);
  sub_1DACB9BB4();
  MEMORY[0x1E1277440](0, v14, v11, v17);
  _Block_release(v17);
  (*(v22 + 8))(v11, v9);
  (*(v12 + 8))(v14, v21);
}

uint64_t sub_1DAC4A1C8(uint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  v79 = a3;
  v80 = a2;
  v4 = type metadata accessor for QuoteDetail(0);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = (&v79 - v8);
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = MEMORY[0x1E69E7CC8];
    v12 = (a1 + 40);
    v81 = xmmword_1DACDA150;
    do
    {
      v13 = *(v12 - 1);
      v84 = *v12;
      v85 = v13;
      sub_1DACB71E4();
      v14 = arc4random_uniform(0x64u);
      if (v14 <= 1)
      {
        v15 = 1;
      }

      else
      {
        v15 = v14;
      }

      v16 = v15;
      v17 = arc4random_uniform(0x64u);
      if (v17 <= 1)
      {
        v18 = 1;
      }

      else
      {
        v18 = v17;
      }

      v19 = v16 / v18;
      v20 = arc4random_uniform(0x64u);
      if (v20 <= 1)
      {
        v21 = 1;
      }

      else
      {
        v21 = v20;
      }

      v22 = v21;
      v23 = arc4random_uniform(0x64u);
      if (v23 <= 1)
      {
        v24 = 1;
      }

      else
      {
        v24 = v23;
      }

      v25 = v22 / v24;
      v26 = arc4random_uniform(0x64u);
      if (v26 <= 1)
      {
        v27 = 1;
      }

      else
      {
        v27 = v26;
      }

      v28 = v27;
      v29 = arc4random_uniform(0x64u);
      if (v29 <= 1)
      {
        v30 = 1;
      }

      else
      {
        v30 = v29;
      }

      v31 = v28 / v30;
      v32 = arc4random_uniform(0x64u);
      if (v32 <= 1)
      {
        v33 = 1;
      }

      else
      {
        v33 = v32;
      }

      v34 = v33;
      v35 = arc4random_uniform(0x64u);
      if (v35 <= 1)
      {
        v36 = 1;
      }

      else
      {
        v36 = v35;
      }

      v37 = v34 / v36;
      v38 = arc4random_uniform(0x64u);
      if (v38 <= 1)
      {
        v39 = 1;
      }

      else
      {
        v39 = v38;
      }

      v40 = v39;
      v41 = arc4random_uniform(0x64u);
      if (v41 <= 1)
      {
        v42 = 1;
      }

      else
      {
        v42 = v41;
      }

      v43 = v40 / v42;
      v44 = arc4random_uniform(0x64u);
      if (v44 <= 1)
      {
        v45 = 1;
      }

      else
      {
        v45 = v44;
      }

      v46 = v45;
      v47 = arc4random_uniform(0x64u);
      if (v47 <= 1)
      {
        v48 = 1;
      }

      else
      {
        v48 = v47;
      }

      v49 = v46 / v48;
      v50 = arc4random_uniform(0x64u);
      if (v50 <= 1)
      {
        v51 = 1;
      }

      else
      {
        v51 = v50;
      }

      v83 = v51;
      v52 = arc4random_uniform(0x64u);
      if (v52 <= 1)
      {
        v53 = 1;
      }

      else
      {
        v53 = v52;
      }

      v82 = v53;
      v54 = arc4random_uniform(0x64u);
      if (v54 <= 1)
      {
        v55 = 1;
      }

      else
      {
        v55 = v54;
      }

      v56 = v55;
      v57 = arc4random_uniform(0x64u);
      if (v57 <= 1)
      {
        v58 = 1;
      }

      else
      {
        v58 = v57;
      }

      v59 = v56 / v58;
      v60 = v4[15];
      v61 = sub_1DACB7CC4();
      v62 = *(*(v61 - 8) + 56);
      v63 = v7;
      v62(v9 + v60, 1, 1, v61);
      v62(v9 + v4[16], 1, 1, v61);
      v64 = v4[18];
      v65 = sub_1DACB7AB4();
      v66 = *(*(v65 - 8) + 56);
      v67 = v9 + v64;
      v7 = v63;
      v66(v67, 1, 1, v65);
      v66(v9 + v4[19], 1, 1, v65);
      v68 = v4[20];
      v69 = sub_1DACB7F54();
      (*(*(v69 - 8) + 56))(v9 + v68, 1, 1, v69);
      sub_1DACB7CB4();
      *v9 = v19;
      *(v9 + 8) = 0;
      v9[2] = v25;
      *(v9 + 24) = 0;
      v9[4] = v31;
      *(v9 + 40) = 0;
      v9[6] = v37;
      *(v9 + 56) = 0;
      v9[8] = v43;
      *(v9 + 72) = 0;
      v9[10] = v49;
      *(v9 + 88) = 0;
      v70 = v82;
      *(v9 + 12) = v83;
      *(v9 + 104) = 0;
      *(v9 + 14) = v70;
      *(v9 + 120) = 0;
      v9[16] = v59;
      *(v9 + 136) = 0;
      v9[18] = 0.0;
      *(v9 + 152) = 1;
      v9[20] = 0.0;
      *(v9 + 168) = 1;
      *(v9 + v4[17]) = v81;
      v71 = v9 + v4[21];
      *v71 = 0;
      *(v71 + 1) = 0;
      v72 = v9 + v4[22];
      *v72 = 0;
      *(v72 + 1) = 0;
      v73 = v9 + v4[23];
      *v73 = 0;
      *(v73 + 1) = 0;
      v74 = v9 + v4[24];
      *v74 = 0;
      *(v74 + 1) = 0;
      v75 = v9 + v4[25];
      *v75 = 0;
      *(v75 + 1) = 0;
      v76 = MEMORY[0x1E69E7CC0];
      *(v9 + v4[26]) = MEMORY[0x1E69E7CC0];
      *(v9 + v4[27]) = v76;
      sub_1DAC2FF24(v9, v63);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v86 = v11;
      sub_1DACA5564(v63, v85, v84, isUniquelyReferenced_nonNull_native);

      v11 = v86;
      v12 += 2;
      --v10;
    }

    while (v10);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC8];
  }

  v80(v11);
}

uint64_t sub_1DAC4A67C(uint64_t a1)
{
  sub_1DAA58090(0, &qword_1EE11FE78, sub_1DAAE8134, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1DACB8B44();
}

void *sub_1DAC4A720()
{
  result = sub_1DAA99408(0xD000000000000017, 0x80000001DACF0300);
  off_1ECBE94F8 = result;
  return result;
}

uint64_t sub_1DAC4A758(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1DACB8954();
    sub_1DACB8954();
  }

  return result;
}

uint64_t sub_1DAC4A7C0(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  swift_unknownObjectRetain();
  sub_1DACB99F4();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1DAC4A894@<X0>(char *a3@<X8>)
{
  v5 = sub_1DACB93A4();
  v6 = v4;
  if (v5 == 0x79636E6572727563 && v4 == 0xE800000000000000 || (sub_1DACBA174() & 1) != 0)
  {

    v8 = 1;
  }

  else if (v5 == 0x75636F7470797263 && v6 == 0xEE0079636E657272 || (sub_1DACBA174() & 1) != 0)
  {

    v8 = 2;
  }

  else if (v5 == 0x6B636F7473 && v6 == 0xE500000000000000 || (sub_1DACBA174() & 1) != 0 || v5 == 0x797469757165 && v6 == 0xE600000000000000 || (sub_1DACBA174() & 1) != 0)
  {

    v8 = 3;
  }

  else if (v5 == 6714469 && v6 == 0xE300000000000000 || (sub_1DACBA174() & 1) != 0 || v5 == 0x74652D6B636F7473 && v6 == 0xE900000000000066 || (sub_1DACBA174() & 1) != 0)
  {

    v8 = 4;
  }

  else if (v5 == 0x7865646E69 && v6 == 0xE500000000000000 || (sub_1DACBA174() & 1) != 0)
  {

    v8 = 6;
  }

  else if (v5 == 0x75666C617574756DLL && v6 == 0xEA0000000000646ELL || (sub_1DACBA174() & 1) != 0)
  {

    v8 = 7;
  }

  else if (v5 == 0x73657275747566 && v6 == 0xE700000000000000)
  {

    v8 = 5;
  }

  else
  {
    v9 = sub_1DACBA174();

    if (v9)
    {
      v8 = 5;
    }

    else
    {
      v8 = 0;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1DAC4AB7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DACB8FB4();
  v17 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1DACB9004();
  v7 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1DAC4AF1C;
  *(v11 + 24) = v10;
  aBlock[4] = sub_1DAC4AF7C;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DAA5796C;
  aBlock[3] = &block_descriptor_36;
  v12 = _Block_copy(aBlock);
  sub_1DACB71F4();
  sub_1DACB8FD4();
  v18 = MEMORY[0x1E69E7CC0];
  sub_1DAA572FC(&qword_1EE124040, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  v13 = MEMORY[0x1E69E7F60];
  sub_1DAA58158(0, &qword_1EE123EC0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1DAA57E34(&qword_1EE123EB0, &qword_1EE123EC0, v13);
  sub_1DACB9BB4();
  MEMORY[0x1E1277440](0, v9, v6, v12);
  _Block_release(v12);
  (*(v17 + 8))(v6, v4);
  (*(v7 + 8))(v9, v16);
}

uint64_t sub_1DAC4AE90()
{
  sub_1DAA58158(0, &qword_1EE11FE40, sub_1DAAD4E00, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1DACB8B44();
}

uint64_t sub_1DAC4AF1C(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v5 = a1;
  v6 = a2;
  sub_1DACB71E4();
  v3(&v5);
}

uint64_t sub_1DAC4AF7C()
{
  v1 = *(v0 + 16);
  v2 = sub_1DAAA4DD0(50);
  v1(v2, 0);
}

uint64_t sub_1DAC4AFF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DACB8204();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v22[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DACB82E4();
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  sub_1DAA4D678(a2 + 16, v22);
  v12 = *(a2 + 56);
  (*(v7 + 16))(v9, a3, v6);
  v13 = __swift_mutable_project_boxed_opaque_existential_1(v22, v22[3]);
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v22[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15);
  v17 = *v15;
  sub_1DACB71E4();
  sub_1DACB71E4();
  v18 = sub_1DAC4B300(v10, v11, v17, v12, v9);
  __swift_destroy_boxed_opaque_existential_1(v22);
  v19 = sub_1DACB82B4();

  return v19;
}

uint64_t sub_1DAC4B1E4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = *a1;
  *(a2 + 8) = 0;
  return sub_1DACB71E4();
}

uint64_t sub_1DAC4B208(uint64_t a1, uint64_t a2)
{
  sub_1DAB7B4A0();
  sub_1DACB8BB4();
  v2 = sub_1DACB89D4();
  sub_1DAAD4E00(0);
  v3 = sub_1DACB8A64();

  return v3;
}

id sub_1DAC4B300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for SDSBaseOperationFactory();
  v26[3] = v10;
  v26[4] = &off_1F5690858;
  v26[0] = a3;
  v11 = type metadata accessor for SDSNewsOperation(0);
  v12 = objc_allocWithZone(v11);
  v13 = __swift_mutable_project_boxed_opaque_existential_1(v26, v10);
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15);
  v17 = *v15;
  v25[3] = v10;
  v25[4] = &off_1F5690858;
  v25[0] = v17;
  v18 = &v12[qword_1ECBE92D8];
  *v18 = a1;
  *(v18 + 1) = a2;
  sub_1DAA4D678(v25, &v12[qword_1ECBE92E0]);
  *&v12[qword_1ECBE92E8] = a4;
  v19 = qword_1ECBE92F0;
  v20 = sub_1DACB8204();
  v21 = *(v20 - 8);
  (*(v21 + 16))(&v12[v19], a5, v20);
  v24.receiver = v12;
  v24.super_class = v11;
  v22 = objc_msgSendSuper2(&v24, sel_init);
  (*(v21 + 8))(a5, v20);
  __swift_destroy_boxed_opaque_existential_1(v25);
  __swift_destroy_boxed_opaque_existential_1(v26);
  return v22;
}

uint64_t sub_1DAC4B4F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  sub_1DAC4E5A4(0, &qword_1EE125280, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v22 - v11;
  if (a3)
  {
    if (a4)
    {
      v13 = sub_1DACB92F4();
      v14 = [a4 dateFromString_];

      if (v14)
      {
        sub_1DACB7C74();

        v15 = sub_1DACB7CC4();
        (*(*(v15 - 8) + 56))(v12, 0, 1, v15);
      }

      else
      {
        v21 = sub_1DACB7CC4();
        (*(*(v21 - 8) + 56))(v12, 1, 1, v21);
      }

      return sub_1DABD4334(v12, a5);
    }

    else
    {
      v19 = sub_1DACB7CC4();
      v20 = *(*(v19 - 8) + 56);

      return v20(a5, 1, 1, v19);
    }
  }

  else
  {
    v23 = 0;
    if (sub_1DAC2E880(a1, a2, &v23))
    {
      sub_1DACB7C44();
      v16 = sub_1DACB7CC4();
      return (*(*(v16 - 8) + 56))(a5, 0, 1, v16);
    }

    else
    {
      v18 = sub_1DACB7CC4();
      return (*(*(v18 - 8) + 56))(a5, 1, 1, v18);
    }
  }
}

uint64_t sub_1DAC4B770@<X0>(uint64_t a1@<X0>, int a2@<W3>, uint64_t a3@<X4>, void *a4@<X5>, uint64_t *a5@<X8>)
{
  v70 = a4;
  v78 = a3;
  v69 = a2;
  sub_1DAA82998(0);
  v8 = v7;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v67 - v12;
  sub_1DAC4E5A4(0, &qword_1EE125280, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v68 = (&v67 - v15);
  v16 = sub_1DACB7CC4();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v67 = &v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v67 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v26 = &v67 - v25;
  v27 = *(a1 + 16);
  if (!v27)
  {
    if (qword_1EE11FD88 == -1)
    {
LABEL_7:
      v40 = sub_1DACB8C94();
      __swift_project_value_buffer(v40, qword_1EE13E2B8);
      v41 = sub_1DACB8C74();
      v42 = sub_1DACB9904();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&dword_1DAA3F000, v41, v42, "failed to create date range: no values", v43, 2u);
        MEMORY[0x1E1278C00](v43, -1, -1);
      }

      sub_1DAA49610(0);
      v45 = *(*(v44 - 8) + 56);

      return v45(a5, 1, 1, v44);
    }

LABEL_20:
    swift_once();
    goto LABEL_7;
  }

  v73 = v13;
  v74 = v8;
  v71 = v11;
  v72 = a5;
  v75 = v24;
  a5 = (type metadata accessor for Chart.Entry(0) - 8);
  v28 = *a5;
  v29 = a1 + ((*(*a5 + 80) + 32) & ~*(*a5 + 80));
  v30 = *(v17 + 16);
  v30(v23, v29, v16);
  v77 = v17;
  v76 = *(v17 + 32);
  v76(v26, v23, v16);
  v31 = v29 + *(v28 + 72) * (v27 - 1);
  v32 = v75;
  v30(v75, v31, v16);
  sub_1DAB56348(0xD000000000000013, 0x80000001DACF03E0, v78);
  v35 = v26;
  if (!v36 || (v37 = v33, v38 = v34, , !v38))
  {
LABEL_16:
    sub_1DAA49674();
    if (sub_1DACB9244())
    {
      v59 = v73;
      v60 = v76;
      v76(v73, v35, v16);
      v61 = v74;
      v60(v59 + *(v74 + 48), v32, v16);
      v62 = v71;
      sub_1DAA948B0(v59, v71, sub_1DAA82998);
      v63 = *(v61 + 48);
      v55 = v72;
      v60(v72, v62, v16);
      v64 = *(v77 + 8);
      v64(v62 + v63, v16);
      sub_1DAC4E5F8(v59, v62, sub_1DAA82998);
      v65 = *(v61 + 48);
      sub_1DAA49610(0);
      v58 = v66;
      v60(v55 + *(v66 + 36), v62 + v65, v16);
      v64(v62, v16);
      return (*(*(v58 - 8) + 56))(v55, 0, 1, v58);
    }

    __break(1u);
    goto LABEL_20;
  }

  a5 = v68;
  sub_1DAC4B4F8(v37, v38, v69 & 1, v70, v68);

  v39 = v77;
  if ((*(v77 + 48))(a5, 1, v16) == 1)
  {
    sub_1DAA89E50(a5, &qword_1EE125280, MEMORY[0x1E6969530]);
    goto LABEL_16;
  }

  v47 = v67;
  v76(v67, a5, v16);
  if ((sub_1DACB7C14() & 1) == 0)
  {
    (*(v39 + 8))(v47, v16);
    goto LABEL_16;
  }

  sub_1DAA49674();
  v48 = sub_1DACB9244();
  v49 = *(v39 + 8);
  result = v49(v32, v16);
  v51 = v73;
  v50 = v74;
  if (v48)
  {
    v52 = v76;
    v76(v73, v35, v16);
    v52(v51 + *(v50 + 48), v47, v16);
    v53 = v71;
    sub_1DAA948B0(v51, v71, sub_1DAA82998);
    v54 = *(v50 + 48);
    v55 = v72;
    v52(v72, v53, v16);
    v49(v53 + v54, v16);
    sub_1DAC4E5F8(v51, v53, sub_1DAA82998);
    v56 = *(v50 + 48);
    sub_1DAA49610(0);
    v58 = v57;
    v52(v55 + *(v57 + 36), (v53 + v56), v16);
    v49(v53, v16);
    return (*(*(v58 - 8) + 56))(v55, 0, 1, v58);
  }

  __break(1u);
  return result;
}

unsigned __int8 *sub_1DAC4BEF0@<X0>(uint64_t a1@<X3>, char *a2@<X8>)
{
  v58 = a2;
  sub_1DAC4E5A4(0, &qword_1EE1239E8, MEMORY[0x1E6969BC0]);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v59[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v59[-1] - v7;
  v9 = sub_1DACB7F54();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v59[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v59[-1] - v14;
  sub_1DAB56348(0x657366666F746D67, 0xE900000000000074, a1);
  if (v18)
  {
    v19 = v16;
    v20 = v17;

    if (v20)
    {
      v22 = HIBYTE(v20) & 0xF;
      v23 = v19 & 0xFFFFFFFFFFFFLL;
      if ((v20 & 0x2000000000000000) != 0)
      {
        v24 = HIBYTE(v20) & 0xF;
      }

      else
      {
        v24 = v19 & 0xFFFFFFFFFFFFLL;
      }

      if (v24)
      {
        if ((v20 & 0x1000000000000000) != 0)
        {
          sub_1DABBDB84(v19, v20, 10);
          v49 = v57;
LABEL_65:

          if ((v49 & 1) == 0)
          {
            sub_1DACB7F24();
            if ((*(v10 + 48))(v8, 1, v9) != 1)
            {
              v55 = *(v10 + 32);
              v55(v15, v8, v9);
              v56 = v58;
              v55(v58, v15, v9);
              return (*(v10 + 56))(v56, 0, 1, v9);
            }

            sub_1DAA89E50(v8, &qword_1EE1239E8, MEMORY[0x1E6969BC0]);
          }

          goto LABEL_68;
        }

        if ((v20 & 0x2000000000000000) != 0)
        {
          v59[0] = v19;
          v59[1] = v20 & 0xFFFFFFFFFFFFFFLL;
          if (v19 == 43)
          {
            if (v22)
            {
              if (--v22)
              {
                v38 = 0;
                v39 = v59 + 1;
                while (1)
                {
                  v40 = *v39 - 48;
                  if (v40 > 9)
                  {
                    break;
                  }

                  v41 = 10 * v38;
                  if ((v38 * 10) >> 64 != (10 * v38) >> 63)
                  {
                    break;
                  }

                  v38 = v41 + v40;
                  if (__OFADD__(v41, v40))
                  {
                    break;
                  }

                  ++v39;
                  if (!--v22)
                  {
                    goto LABEL_64;
                  }
                }
              }

              goto LABEL_63;
            }

LABEL_81:
            __break(1u);
            return result;
          }

          if (v19 != 45)
          {
            if (v22)
            {
              v45 = 0;
              v46 = v59;
              while (1)
              {
                v47 = *v46 - 48;
                if (v47 > 9)
                {
                  break;
                }

                v48 = 10 * v45;
                if ((v45 * 10) >> 64 != (10 * v45) >> 63)
                {
                  break;
                }

                v45 = v48 + v47;
                if (__OFADD__(v48, v47))
                {
                  break;
                }

                ++v46;
                if (!--v22)
                {
                  goto LABEL_64;
                }
              }
            }

            goto LABEL_63;
          }

          if (v22)
          {
            if (--v22)
            {
              v30 = 0;
              v31 = v59 + 1;
              while (1)
              {
                v32 = *v31 - 48;
                if (v32 > 9)
                {
                  break;
                }

                v33 = 10 * v30;
                if ((v30 * 10) >> 64 != (10 * v30) >> 63)
                {
                  break;
                }

                v30 = v33 - v32;
                if (__OFSUB__(v33, v32))
                {
                  break;
                }

                ++v31;
                if (!--v22)
                {
                  goto LABEL_64;
                }
              }
            }

            goto LABEL_63;
          }
        }

        else
        {
          if ((v19 & 0x1000000000000000) != 0)
          {
            result = ((v20 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            result = sub_1DACB9D24();
          }

          v25 = *result;
          if (v25 == 43)
          {
            if (v23 >= 1)
            {
              v22 = v23 - 1;
              if (v23 != 1)
              {
                v34 = 0;
                if (result)
                {
                  v35 = result + 1;
                  while (1)
                  {
                    v36 = *v35 - 48;
                    if (v36 > 9)
                    {
                      goto LABEL_63;
                    }

                    v37 = 10 * v34;
                    if ((v34 * 10) >> 64 != (10 * v34) >> 63)
                    {
                      goto LABEL_63;
                    }

                    v34 = v37 + v36;
                    if (__OFADD__(v37, v36))
                    {
                      goto LABEL_63;
                    }

                    ++v35;
                    if (!--v22)
                    {
                      goto LABEL_64;
                    }
                  }
                }

                goto LABEL_55;
              }

              goto LABEL_63;
            }

            goto LABEL_80;
          }

          if (v25 != 45)
          {
            if (v23)
            {
              v42 = 0;
              if (result)
              {
                while (1)
                {
                  v43 = *result - 48;
                  if (v43 > 9)
                  {
                    goto LABEL_63;
                  }

                  v44 = 10 * v42;
                  if ((v42 * 10) >> 64 != (10 * v42) >> 63)
                  {
                    goto LABEL_63;
                  }

                  v42 = v44 + v43;
                  if (__OFADD__(v44, v43))
                  {
                    goto LABEL_63;
                  }

                  ++result;
                  if (!--v23)
                  {
                    goto LABEL_55;
                  }
                }
              }

              goto LABEL_55;
            }

LABEL_63:
            LOBYTE(v22) = 1;
            goto LABEL_64;
          }

          if (v23 >= 1)
          {
            v22 = v23 - 1;
            if (v23 != 1)
            {
              v26 = 0;
              if (result)
              {
                v27 = result + 1;
                while (1)
                {
                  v28 = *v27 - 48;
                  if (v28 > 9)
                  {
                    goto LABEL_63;
                  }

                  v29 = 10 * v26;
                  if ((v26 * 10) >> 64 != (10 * v26) >> 63)
                  {
                    goto LABEL_63;
                  }

                  v26 = v29 - v28;
                  if (__OFSUB__(v29, v28))
                  {
                    goto LABEL_63;
                  }

                  ++v27;
                  if (!--v22)
                  {
                    goto LABEL_64;
                  }
                }
              }

LABEL_55:
              LOBYTE(v22) = 0;
LABEL_64:
              v60 = v22;
              v49 = v22;
              goto LABEL_65;
            }

            goto LABEL_63;
          }

          __break(1u);
        }

        __break(1u);
LABEL_80:
        __break(1u);
        goto LABEL_81;
      }
    }
  }

LABEL_68:
  sub_1DAB56348(0x656E6F7A656D6974, 0xE800000000000000, a1);
  if (!v51)
  {
    return sub_1DACB7F14();
  }

  v52 = v50;

  if (!v52)
  {
    return sub_1DACB7F14();
  }

  sub_1DACB7F14();

  if ((*(v10 + 48))(v6, 1, v9) == 1)
  {
    sub_1DAA89E50(v6, &qword_1EE1239E8, MEMORY[0x1E6969BC0]);
    return sub_1DACB7F14();
  }

  v53 = *(v10 + 32);
  v53(v13, v6, v9);
  v54 = v58;
  v53(v58, v13, v9);
  return (*(v10 + 56))(v54, 0, 1, v9);
}

uint64_t sub_1DAC4C51C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 16);
  if (v2)
  {
    v27 = a2;
    v3 = 0;
    v4 = result + 32;
    while (1)
    {
      v5 = *(v4 + v3);
      if (v5 <= 2 && v5 != 1 && v5 != 2)
      {
        break;
      }

      v6 = sub_1DACBA174();

      if (v6)
      {
        goto LABEL_9;
      }

      if (v2 == ++v3)
      {
        v3 = 0;
LABEL_9:
        v26 = v6 ^ 1;
        goto LABEL_10;
      }
    }

    v26 = 0;
LABEL_10:
    v7 = 0;
    while (v2 != v7)
    {
      if (*(v4 + v7) <= 2u && *(v4 + v7) && *(v4 + v7) != 2)
      {

        v9 = 0;
        goto LABEL_19;
      }

      v8 = sub_1DACBA174();

      if (v8)
      {
        goto LABEL_18;
      }

      if (v2 == ++v7)
      {
        v7 = 0;
LABEL_18:
        v9 = v8 ^ 1;
LABEL_19:
        v10 = 0;
        while (1)
        {
          if (v2 == v10)
          {
            goto LABEL_52;
          }

          v11 = *(v4 + v10);
          if (v11 > 1 && v11 != 3 && v11 != 4)
          {
            break;
          }

          v12 = sub_1DACBA174();

          if (v12)
          {
            goto LABEL_27;
          }

          if (v2 == ++v10)
          {
            v10 = 0;
LABEL_27:
            v25 = v12 ^ 1;
LABEL_28:
            v13 = 0;
            while (1)
            {
              if (v2 == v13)
              {
                goto LABEL_53;
              }

              v14 = *(v4 + v13);
              if (v14 > 2 && v14 != 4)
              {
                break;
              }

              v15 = sub_1DACBA174();

              if (v15)
              {
                goto LABEL_35;
              }

              if (v2 == ++v13)
              {
                v13 = 0;
LABEL_35:
                v24 = v15 ^ 1;
LABEL_36:
                v16 = 0;
                while (1)
                {
                  if (v2 == v16)
                  {
                    goto LABEL_54;
                  }

                  v17 = *(v4 + v16);
                  if (v17 >= 4)
                  {
                    break;
                  }

                  v18 = sub_1DACBA174();

                  if (v18)
                  {
                    goto LABEL_42;
                  }

                  if (v2 == ++v16)
                  {
                    v16 = 0;
LABEL_42:
                    v19 = v18 ^ 1;
LABEL_43:
                    a2 = v27;
                    v21 = v9;
                    v20 = v26;
                    v23 = v24;
                    v22 = v25;
                    goto LABEL_45;
                  }
                }

                v19 = 0;
                goto LABEL_43;
              }
            }

            v24 = 0;
            goto LABEL_36;
          }
        }

        v25 = 0;
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
  }

  else
  {
    v16 = 0;
    v13 = 0;
    v10 = 0;
    v7 = 0;
    v3 = 0;
    v19 = 1;
    v23 = 1;
    v22 = 1;
    v21 = 1;
    v20 = 1;
LABEL_45:
    *a2 = v3;
    *(a2 + 8) = v20 & 1;
    *(a2 + 16) = v7;
    *(a2 + 24) = v21 & 1;
    *(a2 + 32) = v10;
    *(a2 + 40) = v22 & 1;
    *(a2 + 48) = v13;
    *(a2 + 56) = v23 & 1;
    *(a2 + 64) = v16;
    *(a2 + 72) = v19 & 1;
  }

  return result;
}

uint64_t sub_1DAC4C9C4(char a1, uint64_t a2)
{
  if (a1)
  {
    return 0;
  }

  v11[5] = v2;
  v11[6] = v3;
  sub_1DAB56348(0x73756F6976657270, 0xEE0065736F6C635FLL, a2);
  if (!v7)
  {
    return 0;
  }

  v8 = v5;
  v9 = v6;

  if (!v9)
  {
    return 0;
  }

  v11[0] = 0;
  v10 = sub_1DAC2E880(v8, v9, v11);

  if (v10)
  {
    return v11[0];
  }

  else
  {
    return 0;
  }
}

void sub_1DAC4CA90(uint64_t a1, int a2, uint64_t a3)
{
  v4 = v3;
  v205 = a2;
  v7 = type metadata accessor for Chart(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v188 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAC4E5A4(0, qword_1EE120360, type metadata accessor for Chart);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v188 - v12;
  sub_1DAC4E5A4(0, &qword_1EE1239E8, MEMORY[0x1E6969BC0]);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v204 = &v188 - v15;
  v211 = sub_1DACB7F54();
  v219 = *(v211 - 8);
  v16 = MEMORY[0x1EEE9AC00](v211);
  v206 = &v188 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v203 = &v188 - v18;
  sub_1DAC4E5A4(0, &qword_1EE11FC30, sub_1DAA49610);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v209 = (&v188 - v20);
  sub_1DAA49610(0);
  v208 = v21;
  v207 = *(v21 - 8);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v202 = &v188 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v188 - v24;
  sub_1DAC4E5A4(0, &qword_1EE125280, MEMORY[0x1E6969530]);
  v27 = MEMORY[0x1EEE9AC00](v26 - 8);
  v220 = &v188 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v231 = &v188 - v29;
  v237 = sub_1DACB7CC4();
  v210 = *(v237 - 8);
  v30 = MEMORY[0x1EEE9AC00](v237);
  v201 = &v188 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v224 = &v188 - v32;
  sub_1DAC4E5A4(0, qword_1EE120438, type metadata accessor for Chart.Entry);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v236 = &v188 - v34;
  v232 = type metadata accessor for Chart.Entry(0);
  v225 = *(v232 - 8);
  v35 = MEMORY[0x1EEE9AC00](v232);
  v217 = &v188 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x1EEE9AC00](v35);
  v212 = &v188 - v38;
  v39 = MEMORY[0x1EEE9AC00](v37);
  v230 = &v188 - v40;
  MEMORY[0x1EEE9AC00](v39);
  v223 = &v188 - v41;
  v42 = *(a1 + 8);
  v213 = *a1;
  v234 = v42;
  v233 = *(a1 + 16);
  v43 = *(a1 + 24);
  sub_1DAB56348(0x72656B636974, 0xE600000000000000, v43);
  v222 = v46;
  if (!v44)
  {
LABEL_73:
    if (qword_1EE11FD88 == -1)
    {
LABEL_74:
      v133 = sub_1DACB8C94();
      __swift_project_value_buffer(v133, qword_1EE13E2B8);
      v134 = sub_1DACB8C74();
      v135 = sub_1DACB9904();
      if (!os_log_type_enabled(v134, v135))
      {
LABEL_77:

        return;
      }

      v136 = swift_slowAlloc();
      *v136 = 0;
      _os_log_impl(&dword_1DAA3F000, v134, v135, "failed to created chart model: no ticker found", v136, 2u);
LABEL_76:
      MEMORY[0x1E1278C00](v136, -1, -1);
      goto LABEL_77;
    }

LABEL_114:
    swift_once();
    goto LABEL_74;
  }

  v47 = v45;
  if (!v45)
  {

    goto LABEL_73;
  }

  v48 = v213;
  if (!*(v213 + 16))
  {

    if (qword_1EE11FD88 != -1)
    {
LABEL_116:
      swift_once();
    }

    v137 = sub_1DACB8C94();
    __swift_project_value_buffer(v137, qword_1EE13E2B8);
    sub_1DACB71E4();
    v134 = sub_1DACB8C74();
    v138 = sub_1DACB9904();

    if (!os_log_type_enabled(v134, v138))
    {

      goto LABEL_77;
    }

    v136 = swift_slowAlloc();
    v139 = swift_slowAlloc();
    v242 = v139;
    *v136 = 136446210;
    v140 = sub_1DAA7ABE4(v222, v47, &v242);

    *(v136 + 4) = v140;
    _os_log_impl(&dword_1DAA3F000, v134, v138, "failed to created chart model for %{public}s: no entries", v136, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v139);
    MEMORY[0x1E1278C00](v139, -1, -1);
    goto LABEL_76;
  }

  v195 = v44;
  v239 = v43;
  v189 = v13;
  v192 = v10;
  v190 = v8;
  v193 = v7;
  v191 = a3;
  v194 = v25;
  v238 = v4;
  sub_1DACB71E4();
  sub_1DAC4C51C(v48, &v242);
  v49 = sub_1DACB92F4();
  v221 = [objc_opt_self() dateFormatterWithFormat:v49 forReuse:1];

  v51 = v234;
  v52 = *(v234 + 16);
  v235 = v47;
  v229 = v52;
  if (!v52)
  {
    v55 = MEMORY[0x1E69E7CC0];
    v83 = v239;
LABEL_82:

    v141 = v209;
    v142 = v221;
    sub_1DAC4B770(v55, v233, v83, v221, v209);
    if ((*(v207 + 48))(v141, 1, v208) == 1)
    {

      sub_1DAA89E50(v141, &qword_1EE11FC30, sub_1DAA49610);
      if (qword_1EE11FD88 != -1)
      {
        swift_once();
      }

      v143 = sub_1DACB8C94();
      __swift_project_value_buffer(v143, qword_1EE13E2B8);
      sub_1DACB71E4();
      v144 = sub_1DACB8C74();
      v145 = sub_1DACB9904();

      if (os_log_type_enabled(v144, v145))
      {
        v146 = swift_slowAlloc();
        v147 = swift_slowAlloc();
        v252 = v147;
        *v146 = 136446210;
        v148 = sub_1DAA7ABE4(v222, v47, &v252);

        *(v146 + 4) = v148;
        _os_log_impl(&dword_1DAA3F000, v144, v145, "failed to create chart model for %{public}s: unable to determine date range", v146, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v147);
        MEMORY[0x1E1278C00](v147, -1, -1);
        MEMORY[0x1E1278C00](v146, -1, -1);
      }

      else
      {
      }

      return;
    }

    v56 = v194;
    sub_1DAC4E5F8(v141, v194, sub_1DAA49610);
    v241 = sub_1DAC4C9C4(v205, v83);
    LODWORD(v240) = v149;
    v150 = v83;
    v151 = v204;
    sub_1DAC4BEF0(v150, v204);
    v152 = v219;
    v153 = v211;
    if ((*(v219 + 48))(v151, 1, v211) == 1)
    {

      sub_1DAA89E50(v151, &qword_1EE1239E8, MEMORY[0x1E6969BC0]);
      if (qword_1EE11FD88 != -1)
      {
        goto LABEL_121;
      }

      goto LABEL_89;
    }

    v160 = v203;
    (*(v152 + 32))(v203, v151, v153);
    v161 = v202;
    sub_1DAA948B0(v56, v202, sub_1DAA49610);
    v239 = *(v152 + 16);
    v239(v206, v160, v153);
    v162 = v55;
    v163 = v201;
    sub_1DACB7CB4();
    v164 = v192;
    *v192 = v162;
    v165 = v193;
    sub_1DAA948B0(v161, &v164[v193[5]], sub_1DAA49610);
    v166 = &v164[v165[6]];
    *v166 = v241;
    v166[8] = v240 & 1;
    v239(&v164[v165[7]], v206, v153);
    (*(v210 + 16))(&v164[v165[8]], v163, v237);
    v167 = v162[2];
    v168 = v162;
    sub_1DACB71E4();
    v169 = v153;
    if (!v167)
    {
      v171 = MEMORY[0x1E69E7CC0];
      v174 = v219;
LABEL_109:

      v181 = v169;
      v182 = *(v171 + 16);

      (*(v210 + 8))(v201, v237);
      v183 = *(v174 + 8);
      v183(v206, v181);
      sub_1DAA85464(v202, sub_1DAA49610);
      v184 = v193;
      v185 = &unk_1F567C2B0;
      if (!v182)
      {
        v185 = MEMORY[0x1E69E7CC0];
      }

      v186 = v192;
      *&v192[v193[9]] = v185;
      v187 = v189;
      sub_1DAC4E5F8(v186, v189, type metadata accessor for Chart);
      (*(v190 + 56))(v187, 0, 1, v184);
      sub_1DAB59950(v187, v222, v47);

      v183(v203, v181);
      sub_1DAA85464(v194, sub_1DAA49610);
      return;
    }

    v170 = 0;
    v171 = MEMORY[0x1E69E7CC0];
    v172 = v232;
    v173 = v212;
    while (v170 < v168[2])
    {
      v175 = (*(v225 + 80) + 32) & ~*(v225 + 80);
      v176 = *(v225 + 72);
      sub_1DAA948B0(v168 + v175 + v176 * v170, v173, type metadata accessor for Chart.Entry);
      v177 = v173 + *(v172 + 36);
      if ((*(v177 + 8) & 1) != 0 || *v177 <= 0.0)
      {
        sub_1DAA85464(v173, type metadata accessor for Chart.Entry);
        v47 = v235;
      }

      else
      {
        sub_1DAC4E5F8(v173, v217, type metadata accessor for Chart.Entry);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v252 = v171;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1DAA83020(0, *(v171 + 16) + 1, 1);
          v169 = v211;
          v171 = v252;
        }

        v180 = *(v171 + 16);
        v179 = *(v171 + 24);
        if (v180 >= v179 >> 1)
        {
          sub_1DAA83020((v179 > 1), v180 + 1, 1);
          v169 = v211;
          v171 = v252;
        }

        *(v171 + 16) = v180 + 1;
        sub_1DAC4E5F8(v217, v171 + v175 + v180 * v176, type metadata accessor for Chart.Entry);
        v47 = v235;
        v172 = v232;
        v173 = v212;
      }

      ++v170;
      v174 = v219;
      if (v167 == v170)
      {
        goto LABEL_109;
      }
    }

LABEL_113:
    __break(1u);
    goto LABEL_114;
  }

  v53 = 0;
  v228 = (v210 + 56);
  v214 = (v210 + 48);
  v216 = (v210 + 32);
  v196 = (v210 + 16);
  v215 = (v210 + 8);
  v227 = (v225 + 56);
  v226 = (v225 + 48);
  v54 = (v234 + 48);
  v55 = MEMORY[0x1E69E7CC0];
  *&v50 = 136446722;
  v218 = v50;
  v56 = v237;
  v57 = v232;
  while (1)
  {
    if (v53 >= *(v51 + 16))
    {
      __break(1u);
      goto LABEL_113;
    }

    v240 = v55;
    v58 = *(v54 - 2);
    v59 = *(v54 - 1);
    v241 = *v54;
    if ((v233 & 1) == 0)
    {
      v252 = 0;
      sub_1DACB71E4();
      sub_1DACB71E4();
      v65 = v238;
      v66 = sub_1DAC2E880(v58, v59, &v252);
      v238 = v65;
      v67 = v231;
      if (v66)
      {
        sub_1DACB7C44();
        (*v228)(v67, 0, 1, v56);
        goto LABEL_20;
      }

      (*v228)(v231, 1, 1, v56);
LABEL_19:
      sub_1DAA89E50(v67, &qword_1EE125280, MEMORY[0x1E6969530]);
LABEL_22:
      if (qword_1EE11FD88 != -1)
      {
        swift_once();
      }

      v72 = sub_1DACB8C94();
      __swift_project_value_buffer(v72, qword_1EE13E2B8);
      sub_1DACB71E4();
      sub_1DACB71E4();
      sub_1DACB71E4();
      v73 = sub_1DACB8C74();
      v74 = sub_1DACB9904();

      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        v76 = swift_slowAlloc();
        v252 = v76;
        *v75 = v218;
        *(v75 + 4) = sub_1DAA7ABE4(v222, v235, &v252);
        *(v75 + 12) = 2082;
        *(v75 + 14) = sub_1DAA7ABE4(v58, v59, &v252);
        *(v75 + 22) = 2082;
        v77 = MEMORY[0x1E1277130](v241, MEMORY[0x1E69E6158]);
        v79 = sub_1DAA7ABE4(v77, v78, &v252);

        *(v75 + 24) = v79;
        _os_log_impl(&dword_1DAA3F000, v73, v74, "failed to create entry for %{public}s. ref: %{public}s, values: %{public}s", v75, 0x20u);
        swift_arrayDestroy();
        v80 = v76;
        v57 = v232;
        MEMORY[0x1E1278C00](v80, -1, -1);
        v81 = v75;
        v47 = v235;
        MEMORY[0x1E1278C00](v81, -1, -1);
      }

      v51 = v234;
      v82 = v236;
      (*v227)(v236, 1, 1, v57);

      goto LABEL_27;
    }

    v60 = v221;
    if (!v221)
    {
      v67 = v231;
      (*v228)(v231, 1, 1, v56);
      sub_1DACB71E4();
      sub_1DACB71E4();
      goto LABEL_19;
    }

    sub_1DACB71E4();
    sub_1DACB71E4();
    v61 = sub_1DACB92F4();
    v62 = [v60 dateFromString_];

    if (v62)
    {
      v63 = v220;
      sub_1DACB7C74();

      v64 = 0;
    }

    else
    {
      v64 = 1;
      v63 = v220;
    }

    (*v228)(v63, v64, 1, v56);
    v68 = v63;
    v67 = v231;
    sub_1DABD4334(v68, v231);
    v69 = (*v214)(v67, 1, v56);
    v57 = v232;
    if (v69 == 1)
    {
      goto LABEL_19;
    }

LABEL_20:
    v70 = v224;
    (*v216)(v224, v67, v56);
    sub_1DACB7C54();
    if (v71 == 0.0)
    {
      (*v215)(v70, v56);
      goto LABEL_22;
    }

    v88 = *(v241 + 16);
    if (!v88)
    {
      (*v215)(v224, v56);
      goto LABEL_22;
    }

    (*v196)(v236, v224, v56);
    v89 = 0;
    v90 = 1;
    if ((v243 & 1) == 0 && v242 < v88)
    {
      if (v242 < 0)
      {
        __break(1u);
        goto LABEL_116;
      }

      v91 = v241 + 16 * v242;
      v93 = *(v91 + 32);
      v92 = *(v91 + 40);
      v252 = 0;
      sub_1DACB71E4();
      v94 = v93;
      v95 = v238;
      v96 = sub_1DAC2E880(v94, v92, &v252);
      v238 = v95;

      if (v96)
      {
        v90 = 0;
        v89 = v252;
      }

      else
      {
        v89 = 0;
      }
    }

    v97 = v241;
    if ((v245 & 1) != 0 || v244 >= *(v241 + 16))
    {
      v56 = 0;
      v47 = 1;
      if (v247)
      {
        goto LABEL_54;
      }

      goto LABEL_50;
    }

    if (v244 < 0)
    {
      break;
    }

    v98 = v241 + 16 * v244;
    v100 = *(v98 + 32);
    v99 = *(v98 + 40);
    v252 = 0;
    sub_1DACB71E4();
    v101 = v100;
    v102 = v238;
    v103 = sub_1DAC2E880(v101, v99, &v252);
    v238 = v102;

    if (v103)
    {
      v47 = 0;
      v56 = v252;
    }

    else
    {
      v56 = 0;
      v47 = 1;
    }

    v97 = v241;
    if (v247)
    {
LABEL_54:
      v198 = 0;
      v197 = 1;
      goto LABEL_57;
    }

LABEL_50:
    if (v246 >= *(v97 + 16))
    {
      goto LABEL_54;
    }

    if (v246 < 0)
    {
      goto LABEL_118;
    }

    v104 = v97 + 16 * v246;
    v106 = *(v104 + 32);
    v105 = *(v104 + 40);
    v252 = 0;
    sub_1DACB71E4();
    v107 = v106;
    v108 = v238;
    v109 = sub_1DAC2E880(v107, v105, &v252);
    v238 = v108;

    if (v109)
    {
      v197 = 0;
      v198 = v252;
    }

    else
    {
      v198 = 0;
      v197 = 1;
    }

    v97 = v241;
LABEL_57:
    v200 = v56;
    v199 = v47;
    if ((v249 & 1) != 0 || v248 >= *(v97 + 16))
    {
      v56 = v90;
      v110 = v89;
      v117 = 0;
      v47 = 1;
      if (v251)
      {
        goto LABEL_70;
      }
    }

    else
    {
      if (v248 < 0)
      {
        goto LABEL_119;
      }

      v56 = v90;
      v110 = v89;
      v111 = v97 + 16 * v248;
      v113 = *(v111 + 32);
      v112 = *(v111 + 40);
      v252 = 0;
      sub_1DACB71E4();
      v114 = v113;
      v115 = v238;
      v116 = sub_1DAC2E880(v114, v112, &v252);
      v238 = v115;

      if (v116)
      {
        v47 = 0;
        v117 = v252;
      }

      else
      {
        v117 = 0;
        v47 = 1;
      }

      v97 = v241;
      if (v251)
      {
LABEL_70:
        v125 = 0;
        v124 = 1;
        goto LABEL_71;
      }
    }

    if (v250 >= *(v97 + 16))
    {
      goto LABEL_70;
    }

    if (v250 < 0)
    {
      goto LABEL_120;
    }

    v118 = v97 + 16 * v250;
    v120 = *(v118 + 32);
    v119 = *(v118 + 40);
    v252 = 0;
    sub_1DACB71E4();
    v121 = v120;
    v122 = v238;
    v123 = sub_1DAC2E880(v121, v119, &v252);
    v238 = v122;

    if (!v123)
    {
      goto LABEL_70;
    }

    v124 = 0;
    v125 = v252;
LABEL_71:
    (*v215)(v224, v237);
    v126 = v232;
    v127 = v236;
    v128 = &v236[*(v232 + 20)];
    *v128 = v110;
    v128[8] = v56;
    v129 = &v127[v126[6]];
    *v129 = v200;
    v129[8] = v199;
    v130 = &v127[v126[7]];
    *v130 = v198;
    v57 = v126;
    v130[8] = v197;
    v82 = v127;
    v131 = &v127[v126[8]];
    *v131 = v117;
    v131[8] = v47;
    v132 = &v127[v126[9]];
    *v132 = v125;
    v132[8] = v124;
    (*v227)(v127, 0, 1, v126);

    v51 = v234;
    v47 = v235;
LABEL_27:
    v83 = v239;

    if ((*v226)(v82, 1, v57) == 1)
    {
      sub_1DAA89E50(v82, qword_1EE120438, type metadata accessor for Chart.Entry);
      v56 = v237;
      v55 = v240;
    }

    else
    {
      v84 = v223;
      sub_1DAC4E5F8(v82, v223, type metadata accessor for Chart.Entry);
      sub_1DAC4E5F8(v84, v230, type metadata accessor for Chart.Entry);
      v55 = v240;
      v85 = swift_isUniquelyReferenced_nonNull_native();
      v56 = v237;
      if ((v85 & 1) == 0)
      {
        v55 = sub_1DAADC780(0, v55[2] + 1, 1, v55);
      }

      v87 = v55[2];
      v86 = v55[3];
      if (v87 >= v86 >> 1)
      {
        v55 = sub_1DAADC780((v86 > 1), v87 + 1, 1, v55);
      }

      v55[2] = v87 + 1;
      sub_1DAC4E5F8(v230, v55 + ((*(v225 + 80) + 32) & ~*(v225 + 80)) + *(v225 + 72) * v87, type metadata accessor for Chart.Entry);
      v83 = v239;
    }

    ++v53;
    v54 += 3;
    if (v229 == v53)
    {
      goto LABEL_82;
    }
  }

  __break(1u);
LABEL_118:
  __break(1u);
LABEL_119:
  __break(1u);
LABEL_120:
  __break(1u);
LABEL_121:
  swift_once();
LABEL_89:
  v154 = sub_1DACB8C94();
  __swift_project_value_buffer(v154, qword_1EE13E2B8);
  sub_1DACB71E4();
  v155 = sub_1DACB8C74();
  v156 = sub_1DACB9904();

  if (os_log_type_enabled(v155, v156))
  {
    v157 = swift_slowAlloc();
    v158 = swift_slowAlloc();
    v252 = v158;
    *v157 = 136446210;
    v159 = sub_1DAA7ABE4(v222, v47, &v252);

    *(v157 + 4) = v159;
    _os_log_impl(&dword_1DAA3F000, v155, v156, "failed to create chart time zone in %{public}s", v157, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v158);
    MEMORY[0x1E1278C00](v158, -1, -1);
    MEMORY[0x1E1278C00](v157, -1, -1);
  }

  else
  {
  }

  sub_1DAA85464(v56, sub_1DAA49610);
}

void sub_1DAC4E5A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1DACB9AF4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1DAC4E5F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1DAC4E6C8(uint64_t a1)
{
  type metadata accessor for ForYouConfigRecord.Configuration(319);
  if (v1 <= 0x3F)
  {
    sub_1DAA61680(319, &qword_1EE123EA0, MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1DAC4E7C8(uint64_t a1)
{
  result = type metadata accessor for ForYouConfigRecord.Configuration.TopStories(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1DAC4E85C(uint64_t a1)
{
  sub_1DAC4E944(319, &qword_1EE11FB28, type metadata accessor for ForYouConfigRecord.Configuration.TopStories.Article, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1DACB7CC4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1DAC4E944(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1DAC4E9BC(uint64_t a1)
{
  sub_1DAC4E944(319, &qword_1EE125280, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1DAA61680(319, &qword_1EE123FD0, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1DAC4EAA8()
{
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DAC4EBA8(uint64_t a1)
{
  sub_1DACB9404();
}

uint64_t sub_1DAC4EC94(uint64_t a1)
{
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

unint64_t sub_1DAC4ED90@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DAC524A0(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1DAC4EDC0(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000656D61;
  v4 = 0x4E64726F6365725FLL;
  v5 = 0xD000000000000014;
  v6 = 0x80000001DACE2AB0;
  v7 = 0x80000001DACE2AD0;
  v8 = 0xD000000000000016;
  if (v2 != 3)
  {
    v8 = 0xD00000000000001DLL;
    v7 = 0x80000001DACE2AF0;
  }

  if (v2 != 2)
  {
    v5 = v8;
    v6 = v7;
  }

  if (*v1)
  {
    v4 = 0x72756769666E6F63;
    v3 = 0xED00006E6F697461;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v5;
  }

  if (*v1 > 1u)
  {
    v3 = v6;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_1DAC4EE7C()
{
  v1 = *v0;
  v2 = 0x4E64726F6365725FLL;
  v3 = 0xD000000000000014;
  v4 = 0xD000000000000016;
  if (v1 != 3)
  {
    v4 = 0xD00000000000001DLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x72756769666E6F63;
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

unint64_t sub_1DAC4EF34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DAC524A0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DAC4EF5C(uint64_t a1)
{
  v2 = sub_1DAC51BDC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAC4EF98(uint64_t a1)
{
  v2 = sub_1DAC51BDC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DAC4EFD4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v53 = type metadata accessor for ForYouConfigRecord.Configuration(0);
  MEMORY[0x1EEE9AC00](v53);
  v54 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1DACB7504();
  v51 = *(v4 - 8);
  v52 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v50 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1DACB9364();
  v48 = *(v6 - 8);
  v49 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v47 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAC51FD8(0, &qword_1EE11CFA0, sub_1DAC51BDC, &type metadata for ForYouConfigRecord.CodingKeys, MEMORY[0x1E69E6F48]);
  v9 = v8;
  v56 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v43 - v10;
  v12 = type metadata accessor for ForYouConfigRecord(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAC51BDC();
  v57 = v11;
  v15 = v58;
  sub_1DACBA2F4();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17 = v56;
  v58 = a1;
  v18 = v14;
  v61 = 0;
  sub_1DACB9F84();
  v19 = v9;
  v20 = v59;
  v21 = v60;
  if (!v60)
  {
    v20 = 0x676E697373696DLL;
    v21 = 0xE700000000000000;
  }

  *v18 = v20;
  v18[1] = v21;
  v46 = v21;
  v61 = 2;
  sub_1DAA61680(0, &qword_1EE123EA0, MEMORY[0x1E69E62F8]);
  sub_1DAA9642C(&qword_1EE123E88, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
  sub_1DACB9F84();
  v22 = v17;
  v23 = v19;
  if (v59)
  {
    v24 = v59;
  }

  else
  {
    v24 = MEMORY[0x1E69E7CC0];
  }

  *(v18 + v12[6]) = v24;
  v61 = 3;
  v45 = 0;
  sub_1DACB9F84();
  v25 = v59;
  v26 = v60;
  if (!v60)
  {
    v25 = 0;
    v26 = 0xE000000000000000;
  }

  v27 = (v18 + v12[7]);
  *v27 = v25;
  v27[1] = v26;
  v61 = 4;
  sub_1DACB71E4();
  sub_1DACB9F84();
  v44 = v23;
  v28 = v59;
  if (v59)
  {
  }

  else
  {
    v28 = v24;
  }

  v29 = MEMORY[0x1E69E7CC0];
  *(v18 + v12[8]) = v28;
  LOBYTE(v59) = 1;
  v30 = v57;
  v31 = sub_1DACB9F34();
  v33 = v30;
  if (!v32)
  {
    goto LABEL_20;
  }

  v34 = HIBYTE(v32) & 0xF;
  if ((v32 & 0x2000000000000000) == 0)
  {
    v34 = v31 & 0xFFFFFFFFFFFFLL;
  }

  if (!v34)
  {

LABEL_20:
    v41 = (v18 + v12[5]);
    type metadata accessor for ForYouConfigRecord.Configuration.TopStories(0);
    sub_1DACB7CB4();
    (*(v22 + 8))(v33, v44);
    *v41 = v29;
    v42 = v55;
    goto LABEL_21;
  }

  v35 = v47;
  sub_1DACB9354();
  v43 = sub_1DACB9334();
  v36 = v35;
  v38 = v37;
  result = (*(v48 + 8))(v36, v49);
  if (v38 >> 60 != 15)
  {

    sub_1DACB7554();
    swift_allocObject();
    sub_1DACB7544();
    (*(v51 + 104))(v50, *MEMORY[0x1E6967F30], v52);
    sub_1DACB7514();
    sub_1DAC51C30(&qword_1EE11E840, type metadata accessor for ForYouConfigRecord.Configuration, &unk_1DACDA43C);
    v39 = v54;
    sub_1DACB7524();
    v40 = v55;
    (*(v22 + 8))(v57, v44);

    sub_1DAB4D534(v43, v38);
    sub_1DAC51CCC(v39, v18 + v12[5], type metadata accessor for ForYouConfigRecord.Configuration);
    v42 = v40;
LABEL_21:
    sub_1DAC51DF8(v18, v42, type metadata accessor for ForYouConfigRecord);
    __swift_destroy_boxed_opaque_existential_1(v58);
    return sub_1DAC51F78(v18, type metadata accessor for ForYouConfigRecord);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DAC4F80C(void *a1)
{
  v2 = v1;
  v4 = sub_1DACB9364();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v21[1] = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1DACB7564();
  v22 = *(v6 - 8);
  v23 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAC51FD8(0, &qword_1ECBE9560, sub_1DAC51BDC, &type metadata for ForYouConfigRecord.CodingKeys, MEMORY[0x1E69E6F58]);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v21 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAC51BDC();
  sub_1DACBA304();
  LOBYTE(v26) = 0;
  v14 = v24;
  sub_1DACBA094();
  if (v14)
  {
    return (*(v11 + 8))(v13, v10);
  }

  v24 = v8;
  v15 = type metadata accessor for ForYouConfigRecord(0);
  v26 = *(v2 + *(v15 + 24));
  v25 = 2;
  sub_1DAA61680(0, &qword_1EE123EA0, MEMORY[0x1E69E62F8]);
  sub_1DAA9642C(&qword_1EE123E98, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
  sub_1DACBA0E4();
  LOBYTE(v26) = 3;
  sub_1DACBA094();
  v26 = *(v2 + *(v15 + 32));
  v25 = 4;
  sub_1DACBA0E4();
  sub_1DACB75A4();
  swift_allocObject();
  sub_1DACB7594();
  (*(v22 + 104))(v24, *MEMORY[0x1E6967FC8], v23);
  sub_1DACB7574();
  type metadata accessor for ForYouConfigRecord.Configuration(0);
  sub_1DAC51C30(&qword_1ECBE9568, type metadata accessor for ForYouConfigRecord.Configuration, &unk_1DACDA414);
  v17 = sub_1DACB7584();
  v19 = v18;
  sub_1DACB9354();
  result = sub_1DACB9344();
  if (v20)
  {
    LOBYTE(v26) = 1;
    sub_1DACBA094();
    (*(v11 + 8))(v13, v10);
    sub_1DAA563C0(v17, v19);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DAC4FCAC()
{
  sub_1DACBA284();
  sub_1DACB9404();
  return sub_1DACBA2C4();
}

uint64_t sub_1DAC4FD20(uint64_t a1)
{
  sub_1DACBA284();
  sub_1DACB9404();
  return sub_1DACBA2C4();
}

uint64_t sub_1DAC4FD74@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_1DACB9F04();

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_1DAC4FE04@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_1DACB9F04();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_1DAC4FE5C(uint64_t a1)
{
  v2 = sub_1DAC51C78();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAC4FE98(uint64_t a1)
{
  v2 = sub_1DAC51C78();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DAC4FED4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  sub_1DAC4E944(0, &qword_1EE11E848, type metadata accessor for ForYouConfigRecord.Configuration.TopStories, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v31 = &v25 - v4;
  v32 = type metadata accessor for ForYouConfigRecord.Configuration.TopStories(0);
  v27 = *(v32 - 8);
  v5 = MEMORY[0x1EEE9AC00](v32);
  v7 = (&v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v25 - v8;
  sub_1DAC51FD8(0, &qword_1EE11CF98, sub_1DAC51C78, &type metadata for ForYouConfigRecord.Configuration.CodingKeys, MEMORY[0x1E69E6F48]);
  v29 = *(v10 - 8);
  v30 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v25 - v11;
  v13 = type metadata accessor for ForYouConfigRecord.Configuration(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAC51C78();
  v16 = v33;
  sub_1DACBA2F4();
  if (!v16)
  {
    v17 = v29;
    v26 = v15;
    v33 = v9;
    v18 = v32;
    sub_1DACB7CB4();
    *v7 = MEMORY[0x1E69E7CC0];
    sub_1DAC51C30(&qword_1EE11E850, type metadata accessor for ForYouConfigRecord.Configuration.TopStories, &unk_1DACDA3EC);
    v19 = v30;
    v20 = v31;
    sub_1DACB9F84();
    (*(v17 + 8))(v12, v19);
    if ((*(v27 + 48))(v20, 1, v18) == 1)
    {
      sub_1DAC51D88(v20, &qword_1EE11E848, type metadata accessor for ForYouConfigRecord.Configuration.TopStories);
      v20 = v7;
    }

    else
    {
      sub_1DAC51F78(v7, type metadata accessor for ForYouConfigRecord.Configuration.TopStories);
    }

    v21 = v28;
    v22 = v33;
    v23 = v26;
    sub_1DAC51CCC(v20, v33, type metadata accessor for ForYouConfigRecord.Configuration.TopStories);
    sub_1DAC51CCC(v22, v23, type metadata accessor for ForYouConfigRecord.Configuration.TopStories);
    sub_1DAC51CCC(v23, v21, type metadata accessor for ForYouConfigRecord.Configuration);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1DAC50314(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000011;
  }

  else
  {
    v3 = 0x446873696C627570;
  }

  if (v2)
  {
    v4 = 0xEB00000000657461;
  }

  else
  {
    v4 = 0x80000001DACE2B20;
  }

  if (*a2)
  {
    v5 = 0xD000000000000011;
  }

  else
  {
    v5 = 0x446873696C627570;
  }

  if (*a2)
  {
    v6 = 0x80000001DACE2B20;
  }

  else
  {
    v6 = 0xEB00000000657461;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1DACBA174();
  }

  return v8 & 1;
}

uint64_t sub_1DAC503C8()
{
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DAC50458(uint64_t a1)
{
  sub_1DACB9404();
}

uint64_t sub_1DAC504D4(uint64_t a1)
{
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DAC50560@<X0>(char *a2@<X8>)
{
  v3 = sub_1DACB9F04();

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

void sub_1DAC505C0(unint64_t *a1@<X8>)
{
  v2 = 0x80000001DACE2B20;
  v3 = 0x446873696C627570;
  if (*v1)
  {
    v3 = 0xD000000000000011;
  }

  else
  {
    v2 = 0xEB00000000657461;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_1DAC5060C()
{
  if (*v0)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0x446873696C627570;
  }
}

uint64_t sub_1DAC50654@<X0>(char *a3@<X8>)
{
  v4 = sub_1DACB9F04();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_1DAC506B8(uint64_t a1)
{
  v2 = sub_1DAC51D34();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAC506F4(uint64_t a1)
{
  v2 = sub_1DAC51D34();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DAC50730@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  sub_1DAC4E944(0, &qword_1EE125280, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v41 = &v33 - v4;
  v5 = sub_1DACB7CC4();
  v39 = *(v5 - 8);
  v40 = v5;
  v6 = MEMORY[0x1EEE9AC00](v5);
  v38 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v33 - v8;
  sub_1DAC51FD8(0, &qword_1EE11CF90, sub_1DAC51D34, &type metadata for ForYouConfigRecord.Configuration.TopStories.CodingKeys, MEMORY[0x1E69E6F48]);
  v42 = *(v10 - 8);
  v43 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v33 - v11;
  v13 = type metadata accessor for ForYouConfigRecord.Configuration.TopStories(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAC51D34();
  v44 = v12;
  v16 = v45;
  sub_1DACBA2F4();
  if (v16)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v34 = v13;
  v35 = v9;
  v36 = v15;
  v17 = v38;
  v18 = v39;
  v45 = a1;
  v20 = v40;
  v19 = v41;
  v48 = 1;
  sub_1DAC4E944(0, &qword_1EE11FB28, type metadata accessor for ForYouConfigRecord.Configuration.TopStories.Article, MEMORY[0x1E69E62F8]);
  sub_1DAC51E60(&qword_1EE11D168, &qword_1EE11E858, &unk_1DACDA39C, MEMORY[0x1E69E6330]);
  v21 = v43;
  sub_1DACB9F84();
  v23 = MEMORY[0x1E69E7CC0];
  if (v46)
  {
    v23 = v46;
  }

  v33 = v23;
  *v36 = v23;
  v24 = v17;
  sub_1DACB7CB4();
  v47 = 0;
  sub_1DAC51C30(&qword_1EE123A38, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
  v25 = v20;
  sub_1DACB9F84();
  (*(v42 + 8))(v44, v21);
  v26 = v18;
  v27 = (*(v18 + 48))(v19, 1, v20);
  v28 = v45;
  if (v27 == 1)
  {
    sub_1DAC51D88(v19, &qword_1EE125280, MEMORY[0x1E6969530]);
    v19 = v24;
  }

  else
  {
    (*(v18 + 8))(v24, v20);
  }

  v30 = v36;
  v29 = v37;
  v31 = v35;
  v32 = *(v26 + 32);
  v32(v35, v19, v25);
  v32((v30 + *(v34 + 20)), v31, v25);
  sub_1DAC51DF8(v30, v29, type metadata accessor for ForYouConfigRecord.Configuration.TopStories);
  __swift_destroy_boxed_opaque_existential_1(v28);
  return sub_1DAC51F78(v30, type metadata accessor for ForYouConfigRecord.Configuration.TopStories);
}

uint64_t sub_1DAC50CB4(void *a1)
{
  sub_1DAC51FD8(0, &qword_1ECBE9598, sub_1DAC51F24, &type metadata for ForYouConfigRecord.Configuration.TopStories.Article.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAC51F24();
  sub_1DACBA304();
  type metadata accessor for ForYouConfigRecord.Configuration.TopStories.Article(0);
  v12 = 0;
  sub_1DACB7CC4();
  sub_1DAC51C30(&qword_1EE125288, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
  sub_1DACBA074();
  if (!v1)
  {
    v11 = 1;
    sub_1DACBA024();
    v10 = 2;
    sub_1DACBA094();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1DAC50EC0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  sub_1DAC4E944(0, &qword_1EE125280, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v28 = &v24 - v5;
  sub_1DAC51FD8(0, &qword_1EE11CF88, sub_1DAC51F24, &type metadata for ForYouConfigRecord.Configuration.TopStories.Article.CodingKeys, MEMORY[0x1E69E6F48]);
  v29 = v6;
  v27 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - v7;
  v9 = type metadata accessor for ForYouConfigRecord.Configuration.TopStories.Article(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAC51F24();
  sub_1DACBA2F4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v25 = v9;
  v12 = v27;
  v13 = v11;
  sub_1DACB7CC4();
  v32 = 0;
  sub_1DAC51C30(&qword_1EE123A38, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
  v15 = v28;
  v14 = v29;
  sub_1DACB9F84();
  v16 = v25;
  sub_1DABD4334(v15, v13 + *(v25 + 20));
  v31 = 1;
  v17 = sub_1DACB9F34();
  v18 = (v13 + *(v16 + 24));
  *v18 = v17;
  v18[1] = v19;
  v30 = 2;
  v20 = sub_1DACB9FA4();
  v22 = v21;
  (*(v12 + 8))(v8, v14);
  *v13 = v20;
  v13[1] = v22;
  sub_1DAC51DF8(v13, v26, type metadata accessor for ForYouConfigRecord.Configuration.TopStories.Article);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1DAC51F78(v13, type metadata accessor for ForYouConfigRecord.Configuration.TopStories.Article);
}

uint64_t sub_1DAC512BC(void *a1)
{
  v3 = v1;
  sub_1DAC51FD8(0, &qword_1ECBE9580, sub_1DAC51D34, &type metadata for ForYouConfigRecord.Configuration.TopStories.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAC51D34();
  sub_1DACBA304();
  type metadata accessor for ForYouConfigRecord.Configuration.TopStories(0);
  v13 = 0;
  sub_1DACB7CC4();
  sub_1DAC51C30(&qword_1EE125288, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
  sub_1DACBA0E4();
  if (!v2)
  {
    v11[1] = *v3;
    v12 = 1;
    sub_1DAC4E944(0, &qword_1EE11FB28, type metadata accessor for ForYouConfigRecord.Configuration.TopStories.Article, MEMORY[0x1E69E62F8]);
    sub_1DAC51E60(&qword_1ECBE9588, &qword_1ECBE9590, &unk_1DACDA374, MEMORY[0x1E69E6300]);
    sub_1DACBA0E4();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1DAC51530(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x70795479726F7473;
  v4 = 0xE900000000000065;
  if (v2 != 1)
  {
    v3 = 25705;
    v4 = 0xE200000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x4479616C70736964;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xEB00000000657461;
  }

  v7 = 0x70795479726F7473;
  v8 = 0xE900000000000065;
  if (*a2 != 1)
  {
    v7 = 25705;
    v8 = 0xE200000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x4479616C70736964;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xEB00000000657461;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1DACBA174();
  }

  return v11 & 1;
}

uint64_t sub_1DAC51628()
{
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DAC516CC(uint64_t a1)
{
  sub_1DACB9404();
}

uint64_t sub_1DAC5175C(uint64_t a1)
{
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

unint64_t sub_1DAC517FC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DAC524EC(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1DAC5182C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000657461;
  v4 = 0xE900000000000065;
  v5 = 0x70795479726F7473;
  if (v2 != 1)
  {
    v5 = 25705;
    v4 = 0xE200000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x4479616C70736964;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1DAC5188C()
{
  v1 = 0x70795479726F7473;
  if (*v0 != 1)
  {
    v1 = 25705;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x4479616C70736964;
  }
}

unint64_t sub_1DAC518E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DAC524EC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DAC51910(uint64_t a1)
{
  v2 = sub_1DAC51F24();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAC5194C(uint64_t a1)
{
  v2 = sub_1DAC51F24();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DAC51A00(void *a1)
{
  sub_1DAC51FD8(0, &qword_1ECBE9570, sub_1DAC51C78, &type metadata for ForYouConfigRecord.Configuration.CodingKeys, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAC51C78();
  sub_1DACBA304();
  type metadata accessor for ForYouConfigRecord.Configuration.TopStories(0);
  sub_1DAC51C30(&qword_1ECBE9578, type metadata accessor for ForYouConfigRecord.Configuration.TopStories, &unk_1DACDA3C4);
  sub_1DACBA0E4();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1DAC51BDC()
{
  result = qword_1EE11E8B8;
  if (!qword_1EE11E8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E8B8);
  }

  return result;
}

uint64_t sub_1DAC51C30(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1DAC51C78()
{
  result = qword_1EE11E8A0;
  if (!qword_1EE11E8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E8A0);
  }

  return result;
}

uint64_t sub_1DAC51CCC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1DAC51D34()
{
  result = qword_1EE11E888;
  if (!qword_1EE11E888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E888);
  }

  return result;
}

uint64_t sub_1DAC51D88(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1DAC4E944(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1DAC51DF8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DAC51E60(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1DAC4E944(255, &qword_1EE11FB28, type metadata accessor for ForYouConfigRecord.Configuration.TopStories.Article, MEMORY[0x1E69E62F8]);
    sub_1DAC51C30(a2, type metadata accessor for ForYouConfigRecord.Configuration.TopStories.Article, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DAC51F24()
{
  result = qword_1EE11E870;
  if (!qword_1EE11E870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E870);
  }

  return result;
}

uint64_t sub_1DAC51F78(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1DAC51FD8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1DAC52084()
{
  result = qword_1ECBE95A0;
  if (!qword_1ECBE95A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE95A0);
  }

  return result;
}

unint64_t sub_1DAC520DC()
{
  result = qword_1ECBE95A8;
  if (!qword_1ECBE95A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE95A8);
  }

  return result;
}

unint64_t sub_1DAC52134()
{
  result = qword_1ECBE95B0;
  if (!qword_1ECBE95B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE95B0);
  }

  return result;
}

unint64_t sub_1DAC5218C()
{
  result = qword_1ECBE95B8;
  if (!qword_1ECBE95B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE95B8);
  }

  return result;
}

unint64_t sub_1DAC521E4()
{
  result = qword_1EE11E860;
  if (!qword_1EE11E860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E860);
  }

  return result;
}

unint64_t sub_1DAC5223C()
{
  result = qword_1EE11E868;
  if (!qword_1EE11E868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E868);
  }

  return result;
}

unint64_t sub_1DAC52294()
{
  result = qword_1EE11E878;
  if (!qword_1EE11E878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E878);
  }

  return result;
}

unint64_t sub_1DAC522EC()
{
  result = qword_1EE11E880;
  if (!qword_1EE11E880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E880);
  }

  return result;
}

unint64_t sub_1DAC52344()
{
  result = qword_1EE11E890;
  if (!qword_1EE11E890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E890);
  }

  return result;
}

unint64_t sub_1DAC5239C()
{
  result = qword_1EE11E898;
  if (!qword_1EE11E898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E898);
  }

  return result;
}

unint64_t sub_1DAC523F4()
{
  result = qword_1EE11E8A8;
  if (!qword_1EE11E8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E8A8);
  }

  return result;
}

unint64_t sub_1DAC5244C()
{
  result = qword_1EE11E8B0;
  if (!qword_1EE11E8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11E8B0);
  }

  return result;
}

unint64_t sub_1DAC524A0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DACB9F04();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1DAC524EC(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DACB9F04();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1DAC52558(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000018;
  }

  else
  {
    v3 = 0xD000000000000014;
  }

  if (v2)
  {
    v4 = "s";
  }

  else
  {
    v4 = "defaultScoringConfig";
  }

  v5 = v4 | 0x8000000000000000;
  if (*a2)
  {
    v6 = 0xD000000000000018;
  }

  else
  {
    v6 = 0xD000000000000014;
  }

  if (*a2)
  {
    v7 = "defaultScoringConfig";
  }

  else
  {
    v7 = "s";
  }

  if (v3 == v6 && v5 == (v7 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1DACBA174();
  }

  return v9 & 1;
}

uint64_t sub_1DAC52604()
{
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DAC52684(uint64_t a1)
{
  sub_1DACB9404();
}

uint64_t sub_1DAC526F0(uint64_t a1)
{
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DAC5276C@<X0>(char *a2@<X8>)
{
  v3 = sub_1DACB9F04();

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

void sub_1DAC527CC(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000018;
  }

  else
  {
    v2 = 0xD000000000000014;
  }

  if (*v1)
  {
    v3 = "defaultScoringConfig";
  }

  else
  {
    v3 = "s";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

unint64_t sub_1DAC5280C()
{
  if (*v0)
  {
    return 0xD000000000000018;
  }

  else
  {
    return 0xD000000000000014;
  }
}

uint64_t sub_1DAC52848@<X0>(char *a3@<X8>)
{
  v4 = sub_1DACB9F04();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_1DAC528AC(uint64_t a1)
{
  v2 = sub_1DAA55C18();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAC528E8(uint64_t a1)
{
  v2 = sub_1DAA55C18();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1DAC52924@<X0>(void *__src@<X0>, const void *a2@<X1>, void *a3@<X8>)
{
  memcpy(v6, __src, 0x46BuLL);
  memcpy(&v6[1136], a2, 0x46BuLL);
  return memcpy(a3, v6, 0x8DBuLL);
}

uint64_t sub_1DAC5298C(uint64_t a1)
{
  v2 = MEMORY[0x1EEE9AC00](a1);
  v12 = v3;
  sub_1DAA55BB4(0, &qword_1EE123C68, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v13[-v7 - 8];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1DAA55C18();
  sub_1DACBA2F4();
  if (!v1)
  {
    v9 = v6;
    v10 = v12;
    v16[1159] = 0;
    sub_1DAC52BF4();
    sub_1DACB9F84();
    memcpy(v15, v16, sizeof(v15));
    v16[1158] = 1;
    sub_1DACB9F84();
    (*(v9 + 8))(v8, v5);
    memcpy(&v13[1136], v14, 0x46BuLL);
    memcpy(v13, v15, 0x46BuLL);
    memcpy(v10, v13, 0x8DBuLL);
  }

  return __swift_destroy_boxed_opaque_existential_1(v2);
}

unint64_t sub_1DAC52BF4()
{
  result = qword_1EE124FB0;
  if (!qword_1EE124FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124FB0);
  }

  return result;
}

uint64_t sub_1DAC52C4C(uint64_t a1)
{
  memcpy(__dst, v1, 0x46BuLL);
  if (sub_1DAA53C08(__dst) == 1)
  {
    sub_1DACBA2A4();
  }

  else
  {
    memcpy(v5, v1, 0x46AuLL);
    sub_1DACBA2A4();
    ScoringConfig.hash(into:)(a1);
  }

  memcpy(v5, (v1 + 1136), 0x46BuLL);
  if (sub_1DAA53C08(v5) == 1)
  {
    return sub_1DACBA2A4();
  }

  memcpy(v4, (v1 + 1136), sizeof(v4));
  sub_1DACBA2A4();
  return ScoringConfig.hash(into:)(a1);
}

uint64_t sub_1DAC52D30()
{
  sub_1DACBA284();
  memcpy(__dst, v0, 0x46BuLL);
  if (sub_1DAA53C08(__dst) == 1)
  {
    sub_1DACBA2A4();
  }

  else
  {
    memcpy(v3, v0, 0x46AuLL);
    sub_1DACBA2A4();
    ScoringConfig.hash(into:)(v4);
  }

  memcpy(v3, (v0 + 1136), 0x46BuLL);
  if (sub_1DAA53C08(v3) == 1)
  {
    sub_1DACBA2A4();
  }

  else
  {
    memcpy(v2, (v0 + 1136), sizeof(v2));
    sub_1DACBA2A4();
    ScoringConfig.hash(into:)(v4);
  }

  return sub_1DACBA2C4();
}

uint64_t sub_1DAC52E48(uint64_t a1)
{
  sub_1DACBA284();
  memcpy(__dst, v1, 0x46BuLL);
  if (sub_1DAA53C08(__dst) == 1)
  {
    sub_1DACBA2A4();
  }

  else
  {
    memcpy(v4, v1, 0x46AuLL);
    sub_1DACBA2A4();
    ScoringConfig.hash(into:)(v5);
  }

  memcpy(v4, (v1 + 1136), 0x46BuLL);
  if (sub_1DAA53C08(v4) == 1)
  {
    sub_1DACBA2A4();
  }

  else
  {
    memcpy(v3, (v1 + 1136), sizeof(v3));
    sub_1DACBA2A4();
    ScoringConfig.hash(into:)(v5);
  }

  return sub_1DACBA2C4();
}

unint64_t sub_1DAC52F3C()
{
  result = qword_1ECBE95C0;
  if (!qword_1ECBE95C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE95C0);
  }

  return result;
}

uint64_t sub_1DAC52F90(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 2267))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DAC52FB0(uint64_t result, int a2, int a3)
{
  if (a2)
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
    *(result + 2266) = 0;
    *(result + 2264) = 0;
    *(result + 2248) = 0u;
    *(result + 2232) = 0u;
    *(result + 2216) = 0u;
    *(result + 2200) = 0u;
    *(result + 2184) = 0u;
    *(result + 2168) = 0u;
    *(result + 2152) = 0u;
    *(result + 2136) = 0u;
    *(result + 2120) = 0u;
    *(result + 2104) = 0u;
    *(result + 2088) = 0u;
    *(result + 2072) = 0u;
    *(result + 2056) = 0u;
    *(result + 2040) = 0u;
    *(result + 2024) = 0u;
    *(result + 2008) = 0u;
    *(result + 1992) = 0u;
    *(result + 1976) = 0u;
    *(result + 1960) = 0u;
    *(result + 1944) = 0u;
    *(result + 1928) = 0u;
    *(result + 1912) = 0u;
    *(result + 1896) = 0u;
    *(result + 1880) = 0u;
    *(result + 1864) = 0u;
    *(result + 1848) = 0u;
    *(result + 1832) = 0u;
    *(result + 1816) = 0u;
    *(result + 1800) = 0u;
    *(result + 1784) = 0u;
    *(result + 1768) = 0u;
    *(result + 1752) = 0u;
    *(result + 1736) = 0u;
    *(result + 1720) = 0u;
    *(result + 1704) = 0u;
    *(result + 1688) = 0u;
    *(result + 1672) = 0u;
    *(result + 1656) = 0u;
    *(result + 1640) = 0u;
    *(result + 1624) = 0u;
    *(result + 1608) = 0u;
    *(result + 1592) = 0u;
    *(result + 1576) = 0u;
    *(result + 1560) = 0u;
    *(result + 1544) = 0u;
    *(result + 1528) = 0u;
    *(result + 1512) = 0u;
    *(result + 1496) = 0u;
    *(result + 1480) = 0u;
    *(result + 1464) = 0u;
    *(result + 1448) = 0u;
    *(result + 1432) = 0u;
    *(result + 1416) = 0u;
    *(result + 1400) = 0u;
    *(result + 1384) = 0u;
    *(result + 1368) = 0u;
    *(result + 1352) = 0u;
    *(result + 1336) = 0u;
    *(result + 1320) = 0u;
    *(result + 1304) = 0u;
    *(result + 1288) = 0u;
    *(result + 1272) = 0u;
    *(result + 1256) = 0u;
    *(result + 1240) = 0u;
    *(result + 1224) = 0u;
    *(result + 1208) = 0u;
    *(result + 1192) = 0u;
    *(result + 1176) = 0u;
    *(result + 1160) = 0u;
    *(result + 1144) = 0u;
    *(result + 1128) = 0u;
    *(result + 1112) = 0u;
    *(result + 1096) = 0u;
    *(result + 1080) = 0u;
    *(result + 1064) = 0u;
    *(result + 1048) = 0u;
    *(result + 1032) = 0u;
    *(result + 1016) = 0u;
    *(result + 1000) = 0u;
    *(result + 984) = 0u;
    *(result + 968) = 0u;
    *(result + 952) = 0u;
    *(result + 936) = 0u;
    *(result + 920) = 0u;
    *(result + 904) = 0u;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
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

  *(result + 2267) = v3;
  return result;
}

unint64_t sub_1DAC5325C()
{
  result = qword_1ECBE95C8;
  if (!qword_1ECBE95C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE95C8);
  }

  return result;
}

id sub_1DAC532B0()
{
  if (qword_1EE125750 != -1)
  {
    swift_once();
  }

  v0 = *(qword_1EE125758 + OBJC_IVAR____TtC10StocksCore8AppGroup_userDefaults);
  qword_1EE11F900 = v0;

  return v0;
}

uint64_t (*sub_1DAC5336C(uint64_t a1))(uint64_t a1)
{
  if (qword_1EE11F8F8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t (*sub_1DAC5343C(uint64_t a1))(uint64_t a1)
{
  if (qword_1EE123E10 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

id sub_1DAC534E8(void *a1, void **a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = *a2;

  return v4;
}

void sub_1DAC53574(void *a1, void *a2, void **a3, uint64_t a4)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = *a3;
  *a3 = a1;
}

uint64_t (*sub_1DAC535DC(uint64_t a1))(uint64_t a1)
{
  if (qword_1EE11F8E8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

void sub_1DAC53664()
{
  v0 = objc_opt_self();
  v1 = sub_1DACB92F4();
  v2 = [v0 sc:v1 userDefaultsWithSuiteName:1 backupDisabled:?];

  qword_1EE13E478 = v2;
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1DAC5370C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_1DAC53754(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DAC537D4(uint64_t a1)
{
  sub_1DACB9404();
}

unint64_t sub_1DAC53920@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DAC544D0(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1DAC53950(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x6C6F626D7973;
  v5 = 0xEC00000064657461;
  v6 = 0x6365727065447369;
  if (v2 != 5)
  {
    v6 = 0x6D6563616C706572;
    v5 = 0xED00004449746E65;
  }

  v7 = 0xED00006C6F626D79;
  v8 = 0x5379616C70736964;
  if (v2 != 3)
  {
    v8 = 0x746E456B636F7473;
    v7 = 0xED00004449797469;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x80000001DACE2B90;
  v10 = 0xD000000000000011;
  if (v2 != 1)
  {
    v10 = 0x4E79616C70736964;
    v9 = 0xEB00000000656D61;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_1DAC53A64()
{
  v1 = *v0;
  v2 = 0x6C6F626D7973;
  v3 = 0x6365727065447369;
  if (v1 != 5)
  {
    v3 = 0x6D6563616C706572;
  }

  v4 = 0x5379616C70736964;
  if (v1 != 3)
  {
    v4 = 0x746E456B636F7473;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000011;
  if (v1 != 1)
  {
    v5 = 0x4E79616C70736964;
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

unint64_t sub_1DAC53B74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DAC544D0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DAC53B9C(uint64_t a1)
{
  v2 = sub_1DAC54CAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAC53BD8(uint64_t a1)
{
  v2 = sub_1DAC54CAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DAC53C14(void *a1)
{
  v2 = v1;
  v4 = sub_1DACB9364();
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_1DAC54FE0(0, &qword_1ECBE95D0, sub_1DAC54CAC, &type metadata for StockRecord.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAC54CAC();
  sub_1DACBA304();
  LOBYTE(v19) = 0;
  v10 = v18;
  sub_1DACBA094();
  if (v10)
  {
    return (*(v7 + 8))(v9, v6);
  }

  v18 = v7;
  v19 = *(v2 + 32);
  v21 = 2;
  sub_1DAAA12F0(0, &qword_1EE123FD0, MEMORY[0x1E69E6720]);
  sub_1DAC54D54();
  sub_1DACBA0E4();
  v12 = v6;
  v19 = MEMORY[0x30];
  v21 = 3;
  sub_1DACBA0E4();
  v19 = MEMORY[0x40];
  v21 = 4;
  sub_1DACBA0E4();
  LOBYTE(v19) = 5;
  sub_1DACBA0A4();
  v19 = MEMORY[0x58];
  v21 = 6;
  sub_1DACBA0E4();
  sub_1DACB75A4();
  swift_allocObject();
  sub_1DACB7594();
  v19 = MEMORY[0x10];
  v20 = MEMORY[0x10];
  sub_1DAC54DE0();
  sub_1DACB71E4();
  v13 = sub_1DACB7584();
  v15 = v14;
  sub_1DAC54E34(&v20);

  sub_1DACB9354();
  result = sub_1DACB9344();
  if (v16)
  {
    LOBYTE(v19) = 1;
    sub_1DACBA094();
    (*(v18 + 8))(v9, v12);
    sub_1DAA563C0(v13, v15);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DAC54044@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x444964656566 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1DACBA174();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1DAC540C8(uint64_t a1)
{
  v2 = sub_1DAC54F8C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAC54104(uint64_t a1)
{
  v2 = sub_1DAC54F8C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DAC54140@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v15 = a2;
  sub_1DAC54FE0(0, &qword_1EE11F668, sub_1DAC54F8C, &type metadata for StockRecord.FeedConfiguration.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAC54F8C();
  sub_1DACBA2F4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = v15;
  v10 = sub_1DACB9FA4();
  v12 = v11;
  (*(v6 + 8))(v8, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *v9 = v10;
  v9[1] = v12;
  return result;
}

uint64_t sub_1DAC542F0(void *a1)
{
  sub_1DAC54FE0(0, &qword_1ECBE95E8, sub_1DAC54F8C, &type metadata for StockRecord.FeedConfiguration.CodingKeys, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAC54F8C();
  sub_1DACBA304();
  sub_1DACBA094();
  return (*(v4 + 8))(v6, v3);
}

__n128 sub_1DAC54458@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1DAC5451C(a2, v7);
  if (!v2)
  {
    v5 = v7[5];
    *(a1 + 64) = v7[4];
    *(a1 + 80) = v5;
    *(a1 + 96) = v8;
    v6 = v7[1];
    *a1 = v7[0];
    *(a1 + 16) = v6;
    result = v7[3];
    *(a1 + 32) = v7[2];
    *(a1 + 48) = result;
  }

  return result;
}

unint64_t sub_1DAC544D0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DACB9F04();

  if (v2 >= 7)
  {
    return 7;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1DAC5451C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v3 = sub_1DACB9364();
  v56 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAC54FE0(0, &qword_1EE11F670, sub_1DAC54CAC, &type metadata for StockRecord.CodingKeys, MEMORY[0x1E69E6F48]);
  v7 = v6;
  v57 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v42 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAC54CAC();
  v10 = v72;
  sub_1DACBA2F4();
  if (v10)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v72 = v5;
  v11 = v3;
  v12 = v57;
  LOBYTE(v65[0]) = 0;
  v52 = sub_1DACB9FA4();
  v54 = v14;
  LOBYTE(v65[0]) = 2;
  v15 = sub_1DACB9F34();
  v53 = v16;
  v17 = v7;
  v18 = v12;
  v19 = v15;
  LOBYTE(v65[0]) = 3;
  v20 = sub_1DACB9F34();
  v51 = v21;
  LOBYTE(v65[0]) = 4;
  v47 = sub_1DACB9F34();
  v50 = v22;
  LOBYTE(v65[0]) = 6;
  v44 = sub_1DACB9F34();
  v43 = v20;
  v24 = v23;
  LOBYTE(v65[0]) = 5;
  v49 = v17;
  v48 = v9;
  v25 = sub_1DACB9F64();
  v46 = a1;
  if (v26)
  {
    LOBYTE(v65[0]) = 5;
    v27 = sub_1DACB9F44() & 1;
  }

  else
  {
    v27 = v25 != 0;
  }

  v45 = v27;
  LOBYTE(v65[0]) = 1;
  sub_1DACB9FA4();
  v28 = v72;
  sub_1DACB9354();
  v42 = sub_1DACB9334();
  v30 = v29;
  result = (*(v56 + 8))(v28, v11);
  if (v30 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {

    sub_1DACB7554();
    swift_allocObject();
    sub_1DACB7544();
    sub_1DAC54D00();
    v31 = v42;
    sub_1DACB7524();
    (*(v18 + 8))(v48, v49);

    sub_1DAB4D534(v31, v30);
    v72 = *(&v70 + 1);
    v57 = v70;
    v32 = v52;
    *&v58 = v52;
    v33 = v54;
    *(&v58 + 1) = v54;
    v59 = v70;
    *&v60 = v19;
    *(&v60 + 1) = v53;
    v34 = v43;
    *&v61 = v43;
    v35 = v51;
    *(&v61 + 1) = v51;
    v36 = v47;
    v37 = v50;
    *&v62 = v47;
    *(&v62 + 1) = v50;
    LOBYTE(v63) = v45;
    *(&v63 + 1) = *v71;
    DWORD1(v63) = *&v71[3];
    *(&v63 + 1) = v44;
    v64 = v24;
    sub_1DAB69868(&v58, v65);
    __swift_destroy_boxed_opaque_existential_1(v46);
    v65[0] = v32;
    v65[1] = v33;
    v65[2] = v57;
    v65[3] = v72;
    v65[4] = v19;
    v65[5] = v53;
    v65[6] = v34;
    v65[7] = v35;
    v65[8] = v36;
    v65[9] = v37;
    v66 = v45;
    *v67 = *v71;
    *&v67[3] = *&v71[3];
    v68 = v44;
    v69 = v24;
    result = sub_1DABAF400(v65);
    v38 = v63;
    v39 = v55;
    *(v55 + 64) = v62;
    *(v39 + 80) = v38;
    *(v39 + 96) = v64;
    v40 = v59;
    *v39 = v58;
    *(v39 + 16) = v40;
    v41 = v61;
    *(v39 + 32) = v60;
    *(v39 + 48) = v41;
  }

  return result;
}

unint64_t sub_1DAC54CAC()
{
  result = qword_1EE123790;
  if (!qword_1EE123790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE123790);
  }

  return result;
}

unint64_t sub_1DAC54D00()
{
  result = qword_1EE123760;
  if (!qword_1EE123760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE123760);
  }

  return result;
}

unint64_t sub_1DAC54D54()
{
  result = qword_1ECBE8330;
  if (!qword_1ECBE8330)
  {
    sub_1DAAA12F0(255, &qword_1EE123FD0, MEMORY[0x1E69E6720]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE8330);
  }

  return result;
}

unint64_t sub_1DAC54DE0()
{
  result = qword_1ECBE95D8;
  if (!qword_1ECBE95D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE95D8);
  }

  return result;
}

unint64_t sub_1DAC54E88()
{
  result = qword_1ECBE95E0;
  if (!qword_1ECBE95E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE95E0);
  }

  return result;
}

unint64_t sub_1DAC54EE0()
{
  result = qword_1EE123780;
  if (!qword_1EE123780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE123780);
  }

  return result;
}

unint64_t sub_1DAC54F38()
{
  result = qword_1EE123788;
  if (!qword_1EE123788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE123788);
  }

  return result;
}

unint64_t sub_1DAC54F8C()
{
  result = qword_1EE123778;
  if (!qword_1EE123778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE123778);
  }

  return result;
}

void sub_1DAC54FE0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1DAC5505C()
{
  result = qword_1ECBE95F0;
  if (!qword_1ECBE95F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE95F0);
  }

  return result;
}

unint64_t sub_1DAC550B4()
{
  result = qword_1EE123768;
  if (!qword_1EE123768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE123768);
  }

  return result;
}

unint64_t sub_1DAC5510C()
{
  result = qword_1EE123770;
  if (!qword_1EE123770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE123770);
  }

  return result;
}

uint64_t type metadata accessor for SDSSearchOperation(uint64_t a1)
{
  result = qword_1ECBE9610;
  if (!qword_1ECBE9610)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DAC551AC(uint64_t a1)
{
  result = sub_1DACB8204();
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

uint64_t sub_1DAC55258(uint64_t a1, char a2, uint64_t (*a3)(uint64_t *))
{
  v4 = a1;
  v5 = a2 & 1;
  return a3(&v4);
}

void sub_1DAC55298(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_1DACB7CC4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v2 + qword_1ECBE9600), *(v2 + qword_1ECBE9600 + 24));
  sub_1DAC55EC8(0, &qword_1EE123B40, sub_1DAA4BD7C, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DACC1D20;
  *(inited + 32) = 0x7972657571;
  *(inited + 40) = 0xE500000000000000;
  v9 = *(v2 + qword_1ECBE95F8 + 8);
  *(inited + 48) = *(v2 + qword_1ECBE95F8);
  *(inited + 56) = v9;
  sub_1DACB71E4();
  v10 = sub_1DAA4BDD8(inited);
  swift_setDeallocating();
  sub_1DAC56074(inited + 32, sub_1DAA4BD7C);
  v11 = qword_1ECBE9608;
  sub_1DACB7CB4();
  v12 = sub_1DABF426C(3, v10, v7, (v2 + v11));

  (*(v5 + 8))(v7, v4);
  v13 = (v12 + *((*MEMORY[0x1E69E7D40] & *v12) + qword_1EE13E480 + 16));
  v14 = *v13;
  v15 = v13[1];
  *v13 = sub_1DAC55538;
  v13[1] = 0;
  sub_1DAA4F910(v14, v15);
  v16 = swift_allocObject();
  *(v16 + 16) = v19;
  *(v16 + 24) = a2;
  v17 = v12;
  sub_1DACB71F4();
  sub_1DACB8304();

  [v17 start];
}

uint64_t sub_1DAC55584@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1DAC55E6C(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAC55EC8(0, &qword_1ECBE9628, sub_1DAC55E6C, MEMORY[0x1E69D6AF8]);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v21 - v10;
  sub_1DAC55F2C(a2, v21 - v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1DAC560F4(v11);
    sub_1DAA8C2EC(0);
    v13 = *(v12 + 48);
    v14 = sub_1DACB8754();
    (*(*(v14 - 8) + 16))(a3, a1, v14);
    v15 = 0;
  }

  else
  {
    sub_1DAC55FC0(v11, v8);
    sub_1DAA8C2EC(0);
    v13 = *(v16 + 48);
    v17 = sub_1DACB8754();
    (*(*(v17 - 8) + 16))(a3, a1, v17);
    sub_1DAC56024();
    sub_1DACB8794();
    v15 = *(v21[1] + 16);

    sub_1DAC56074(v8, sub_1DAC55E6C);
  }

  v18 = (a3 + v13);
  *v18 = 1;
  v18[1] = v15;
  v19 = MEMORY[0x1E69E7CC0];
  v18[2] = MEMORY[0x1E69E7CC0];
  v18[3] = v19;
  type metadata accessor for NetworkEvent(0);
  v18[4] = 0;
  v18[5] = 0;
  return swift_storeEnumTagMultiPayload();
}

void sub_1DAC557C8(uint64_t a1, void (*a2)(void *, uint64_t), uint64_t a3)
{
  sub_1DAC55E6C(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAC55EC8(0, &qword_1ECBE9628, sub_1DAC55E6C, MEMORY[0x1E69D6AF8]);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v47 - v10);
  sub_1DAC55F2C(a1, &v47 - v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = *v11;
    v13 = v12;
    a2(v12, 1);

    return;
  }

  sub_1DAC55FC0(v11, v8);
  sub_1DAC56024();
  sub_1DACB8794();
  v14 = v62;
  v15 = *(v62 + 16);
  if (v15)
  {
    v48 = v8;
    v49 = a3;
    v50 = a2;
    v64 = MEMORY[0x1E69E7CC0];
    sub_1DAA57914(0, v15, 0);
    v16 = 0;
    v56 = v64;
    v60 = v15 - 1;
    v51 = v14;
    while (1)
    {
      v52 = v16;
      v17 = v14 + v16;
      v18 = *(v17 + 32);
      v19 = *(v17 + 40);
      v20 = *(v17 + 56);
      v58 = *(v17 + 48);
      v59 = v18;
      v22 = *(v17 + 64);
      v21 = *(v17 + 72);
      v23 = *(v17 + 80);
      v24 = *(v17 + 88);
      v26 = *(v17 + 96);
      v25 = *(v17 + 104);
      v57 = *(v17 + 112);
      v62 = v18;
      v63 = v19;
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      v61 = v20;
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      MEMORY[0x1E1276F20](58, 0xE100000000000000);
      MEMORY[0x1E1276F20](v22, v21);
      v54 = v63;
      v55 = v62;
      v27 = qword_1EE122610;
      sub_1DACB71E4();
      if (v27 != -1)
      {
        swift_once();
      }

      v28 = qword_1EE13E388;
      if (*(qword_1EE13E388 + 16))
      {
        v29 = sub_1DAA4BF3C(v22, v21);
        if (v30)
        {
          break;
        }
      }

      v34 = v21;
      v33 = v22;
      if (!v25)
      {
        goto LABEL_12;
      }

      v53 = v26;
      v34 = v25;
LABEL_13:
      v35 = qword_1EE13E390;
      if (*(qword_1EE13E390 + 16) && (v36 = sub_1DAA4BF3C(v22, v21), (v37 & 1) != 0))
      {
        v38 = v36;

        v39 = (*(v35 + 56) + 16 * v38);
        v23 = *v39;
        v40 = v39[1];
        sub_1DACB71E4();
      }

      else
      {

        if (v24)
        {
          v40 = v24;
        }

        else
        {
          v23 = v22;
          v40 = v21;
        }
      }

      v41 = v56;
      v64 = v56;
      v43 = v56[2];
      v42 = v56[3];
      if (v43 >= v42 >> 1)
      {
        sub_1DAA57914((v42 > 1), v43 + 1, 1);
        v41 = v64;
      }

      v41[2] = v43 + 1;
      v44 = &v41[17 * v43];
      v45 = v54;
      v44[4] = v55;
      v44[5] = v45;
      v44[6] = v22;
      v44[7] = v21;
      v46 = v61;
      v44[8] = v58;
      v44[9] = v46;
      v44[10] = v59;
      v44[11] = v19;
      *(v44 + 96) = v57;
      LODWORD(v46) = *(&v62 + 3);
      *(v44 + 97) = v62;
      *(v44 + 25) = v46;
      v44[13] = v53;
      v44[14] = v34;
      v44[15] = v23;
      v44[16] = v40;
      *(v44 + 19) = 0u;
      *(v44 + 17) = 0u;
      v14 = v51;
      if (!v60)
      {

        v8 = v48;
        v50(v41, 0);
        goto LABEL_25;
      }

      v56 = v41;
      --v60;
      v16 = v52 + 88;
    }

    v31 = v29;

    v32 = (*(v28 + 56) + 16 * v31);
    v33 = *v32;
    v34 = v32[1];
LABEL_12:
    v53 = v33;
    sub_1DACB71E4();
    goto LABEL_13;
  }

  a2(MEMORY[0x1E69E7CC0], 0);
LABEL_25:

  sub_1DAC56074(v8, sub_1DAC55E6C);
}

uint64_t sub_1DAC55CC0()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + qword_1ECBE9600));
  v1 = qword_1ECBE9608;
  v2 = sub_1DACB8204();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t sub_1DAC55D4C(uint64_t a1)
{

  __swift_destroy_boxed_opaque_existential_1((a1 + qword_1ECBE9600));
  v2 = qword_1ECBE9608;
  v3 = sub_1DACB8204();
  v4 = *(*(v3 - 8) + 8);

  return v4(a1 + v2, v3);
}

uint64_t sub_1DAC55DDC(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  sub_1DACB71F4();
  sub_1DAC55298(sub_1DAADF554, v4);
}

void sub_1DAC55E6C(uint64_t a1)
{
  if (!qword_1ECBE9620)
  {
    v2 = sub_1DABF475C();
    v4 = type metadata accessor for SDSBaseOperationResponse(a1, &type metadata for SDSSearchResponse, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &qword_1ECBE9620);
    }
  }
}

void sub_1DAC55EC8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1DAC55F2C(uint64_t a1, uint64_t a2)
{
  sub_1DAC55EC8(0, &qword_1ECBE9628, sub_1DAC55E6C, MEMORY[0x1E69D6AF8]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAC55FC0(uint64_t a1, uint64_t a2)
{
  sub_1DAC55E6C(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1DAC56024()
{
  if (!qword_1ECBE9630)
  {
    v0 = sub_1DACB87B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECBE9630);
    }
  }
}

uint64_t sub_1DAC56074(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1DAC560F4(uint64_t a1)
{
  sub_1DAC55EC8(0, &qword_1ECBE9628, sub_1DAC55E6C, MEMORY[0x1E69D6AF8]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SymbolQuery.init()@<X0>(uint64_t *a1@<X8>)
{
  sub_1DAAF41C0(0, &qword_1EE123AB8, qword_1EE125F28, &protocol descriptor for SearchServiceType);
  sub_1DACB6D94();
  sub_1DACB6D84();
  *a1 = sub_1DACB6D54();
  sub_1DAAF41C0(0, &qword_1EE123AA8, &unk_1EE125A10, &protocol descriptor for StockMetadataManagerType);
  sub_1DACB6D84();
  a1[1] = sub_1DACB6D54();
  sub_1DAAF41C0(0, &qword_1EE123AB0, &qword_1EE125E40, &protocol descriptor for WatchlistManagerType);
  sub_1DACB6D84();
  result = sub_1DACB6D54();
  a1[2] = result;
  return result;
}

uint64_t sub_1DAC562A0()
{
  v0 = sub_1DACB78E4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1DACB7E44();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1DACB92E4();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1DACB7904();
  __swift_allocate_value_buffer(v6, qword_1ECBE9638);
  __swift_project_value_buffer(v6, qword_1ECBE9638);
  sub_1DACB9284();
  sub_1DACB7DF4();
  (*(v1 + 104))(v3, *MEMORY[0x1E6968DF0], v0);
  return sub_1DACB7914();
}

uint64_t sub_1DAC56480()
{
  v0 = sub_1DACB78E4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1DACB7E44();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1DACB92E4();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1DACB7904();
  __swift_allocate_value_buffer(v6, qword_1ECBE9650);
  __swift_project_value_buffer(v6, qword_1ECBE9650);
  sub_1DACB9284();
  sub_1DACB7DF4();
  (*(v1 + 104))(v3, *MEMORY[0x1E6968DF0], v0);
  return sub_1DACB7914();
}

uint64_t SymbolQuery.entities(for:)(uint64_t a1)
{
  v2[45] = a1;
  v2[46] = *(type metadata accessor for SymbolEntity(0) - 8);
  v2[47] = swift_task_alloc();
  v3 = sub_1DACB8204();
  v2[48] = v3;
  v2[49] = *(v3 - 8);
  v2[50] = swift_task_alloc();
  v4 = sub_1DACB7CC4();
  v2[51] = v4;
  v2[52] = *(v4 - 8);
  v2[53] = swift_task_alloc();
  v5 = sub_1DACB8344();
  v2[54] = v5;
  v2[55] = *(v5 - 8);
  v2[56] = swift_task_alloc();
  v6 = sub_1DACB81B4();
  v2[57] = v6;
  v2[58] = *(v6 - 8);
  v7 = swift_task_alloc();
  v8 = *(v1 + 8);
  v2[59] = v7;
  v2[60] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1DAC5688C, 0, 0);
}

uint64_t sub_1DAC5688C()
{
  v28 = v0;
  if (qword_1EE11D388 != -1)
  {
    swift_once();
  }

  v1 = sub_1DACB8C94();
  v0[61] = __swift_project_value_buffer(v1, qword_1EE11D390);
  sub_1DACB71E4();
  v2 = sub_1DACB8C74();
  v3 = sub_1DACB98E4();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[45];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v27 = v6;
    *v5 = 136315138;
    v0[44] = v4;
    sub_1DAA61540(0, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1DAA587CC();
    v7 = sub_1DACB9214();
    v9 = sub_1DAA7ABE4(v7, v8, &v27);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_1DAA3F000, v2, v3, "Fetching stocks for symbol query with identifiers=[%s]", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x1E1278C00](v6, -1, -1);
    MEMORY[0x1E1278C00](v5, -1, -1);
  }

  v10 = v0[57];
  v11 = v0[58];
  v20 = v0[56];
  v12 = v0[53];
  v25 = v0[54];
  v26 = v0[59];
  v22 = v0[52];
  v23 = v0[51];
  v24 = v0[55];
  v13 = v0[49];
  v14 = v0[50];
  v15 = v0[48];
  v21 = v0[45];
  sub_1DACB6D24();
  v17 = v0[39];
  v16 = v0[40];
  __swift_project_boxed_opaque_existential_1(v0 + 36, v17);
  (*(v11 + 104))(v26, *MEMORY[0x1E69D63C8], v10);
  sub_1DACB8334();
  sub_1DACB7CB4();
  (*(v13 + 104))(v14, *MEMORY[0x1E69D6490], v15);
  v0[62] = (*(v16 + 8))(v21, v26, v20, v12, v14, v17, v16);
  (*(v13 + 8))(v14, v15);
  (*(v22 + 8))(v12, v23);
  (*(v24 + 8))(v20, v25);
  (*(v11 + 8))(v26, v10);
  v18 = swift_task_alloc();
  v0[63] = v18;
  *v18 = v0;
  v18[1] = sub_1DAC56C04;

  return MEMORY[0x1EEE44EE0](v0 + 41);
}

uint64_t sub_1DAC56C04()
{
  v2 = *v1;
  *(*v1 + 512) = v0;

  if (v0)
  {
    v3 = sub_1DAC5711C;
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1((v2 + 288));
    v3 = sub_1DAC56D28;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DAC56D28()
{
  v44 = v0;
  v1 = *(v0 + 328);
  sub_1DACB71E4();
  sub_1DACB71E4();
  v2 = sub_1DACB8C74();
  v3 = sub_1DACB98E4();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 360);
    v5 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *&v42[0] = v41;
    *v5 = 136315394;
    *(v0 + 336) = v4;
    sub_1DAA61540(0, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1DAA587CC();
    v6 = sub_1DACB9214();
    v8 = sub_1DAA7ABE4(v6, v7, v42);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2080;
    v9 = sub_1DACB71E4();
    v10 = sub_1DAB1C3A0(v9);

    *(v0 + 344) = v10;
    v11 = sub_1DACB9214();
    v13 = v12;

    v14 = sub_1DAA7ABE4(v11, v13, v42);

    *(v5 + 14) = v14;
    _os_log_impl(&dword_1DAA3F000, v2, v3, "Fetched stocks for symbol query with identifiers=[%s], stocks=[%s]", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E1278C00](v41, -1, -1);
    MEMORY[0x1E1278C00](v5, -1, -1);
  }

  v15 = *(v0 + 360);
  v16 = *(v15 + 16);
  if (v16)
  {
    v17 = *(v0 + 368);
    v18 = (v15 + 40);
    v19 = MEMORY[0x1E69E7CC0];
    do
    {
      if (*(v1 + 16))
      {
        v20 = *(v18 - 1);
        v21 = *v18;
        sub_1DACB71E4();
        v22 = sub_1DAA4BF3C(v20, v21);
        if (v23)
        {
          v24 = *(v0 + 376);
          v25 = *(v1 + 56) + 136 * v22;
          *(v0 + 16) = *v25;
          v26 = *(v25 + 64);
          v28 = *(v25 + 16);
          v27 = *(v25 + 32);
          *(v0 + 64) = *(v25 + 48);
          *(v0 + 80) = v26;
          *(v0 + 32) = v28;
          *(v0 + 48) = v27;
          v30 = *(v25 + 96);
          v29 = *(v25 + 112);
          v31 = *(v25 + 80);
          *(v0 + 144) = *(v25 + 128);
          *(v0 + 112) = v30;
          *(v0 + 128) = v29;
          *(v0 + 96) = v31;
          v32 = *(v25 + 112);
          v42[6] = *(v25 + 96);
          v42[7] = v32;
          v43 = *(v25 + 128);
          v33 = *(v25 + 48);
          v42[2] = *(v25 + 32);
          v42[3] = v33;
          v34 = *(v25 + 80);
          v42[4] = *(v25 + 64);
          v42[5] = v34;
          v35 = *(v25 + 16);
          v42[0] = *v25;
          v42[1] = v35;
          sub_1DAA806E4(v0 + 16, v0 + 152);
          SymbolEntity.init(from:)(v42, v24);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v19 = sub_1DAADBEA8(0, v19[2] + 1, 1, v19);
          }

          v37 = v19[2];
          v36 = v19[3];
          if (v37 >= v36 >> 1)
          {
            v19 = sub_1DAADBEA8((v36 > 1), v37 + 1, 1, v19);
          }

          v38 = *(v0 + 376);
          v19[2] = v37 + 1;
          sub_1DAAF5AA4(v38, v19 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v37);
        }

        else
        {
        }
      }

      v18 += 2;
      --v16;
    }

    while (v16);
  }

  else
  {
    v19 = MEMORY[0x1E69E7CC0];
  }

  v39 = *(v0 + 8);

  return v39(v19);
}

uint64_t sub_1DAC5711C()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 288));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t SymbolQuery.suggestedEntities()(uint64_t a1)
{
  *(v2 + 72) = a1;
  *(v2 + 80) = *v1;
  *(v2 + 96) = *(v1 + 16);
  return MEMORY[0x1EEE6DFA0](sub_1DAC57204, 0, 0);
}

uint64_t sub_1DAC57204()
{
  if (qword_1EE11D388 != -1)
  {
    swift_once();
  }

  v1 = sub_1DACB8C94();
  v0[13] = __swift_project_value_buffer(v1, qword_1EE11D390);
  v2 = sub_1DACB8C74();
  v3 = sub_1DACB98E4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1DAA3F000, v2, v3, "Fetching watched stocks for suggested symbol entities.", v4, 2u);
    MEMORY[0x1E1278C00](v4, -1, -1);
  }

  sub_1DACB6D24();
  v5 = v0[5];
  v6 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v5);
  v0[14] = (*(v6 + 120))(v5, v6);
  v7 = swift_task_alloc();
  v0[15] = v7;
  *v7 = v0;
  v7[1] = sub_1DAC573A0;

  return MEMORY[0x1EEE44EE0](v0 + 7);
}

uint64_t sub_1DAC573A0()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = sub_1DAC57760;
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1((v2 + 16));
    v3 = sub_1DAC574C4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DAC574C4()
{
  v30 = v0;
  v1 = v0[7];
  sub_1DACB71E4();
  v2 = sub_1DACB8C74();
  v3 = sub_1DACB98E4();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = v5;
    v29 = v5;
    *v4 = 136315138;
    v7 = *(v1 + 16);
    v8 = MEMORY[0x1E69E7CC0];
    if (v7)
    {
      v23 = v5;
      v24 = v4;
      v25 = v3;
      v26 = v2;
      v28 = MEMORY[0x1E69E7CC0];
      sub_1DAA5859C(0, v7, 0);
      v8 = v28;
      v9 = *(v28 + 16);
      v10 = 16 * v9;
      v27 = v1;
      v11 = (v1 + 40);
      do
      {
        v12 = *(v11 - 1);
        v13 = *v11;
        v14 = v9 + 1;
        v15 = *(v28 + 24);
        sub_1DACB71E4();
        if (v9 >= v15 >> 1)
        {
          sub_1DAA5859C((v15 > 1), v14, 1);
        }

        *(v28 + 16) = v14;
        v16 = v28 + v10;
        *(v16 + 32) = v12;
        *(v16 + 40) = v13;
        v10 += 16;
        v11 += 17;
        ++v9;
        --v7;
      }

      while (v7);
      v2 = v26;
      v1 = v27;
      v3 = v25;
      v6 = v23;
      v4 = v24;
    }

    v0[8] = v8;
    sub_1DAA61540(0, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1DAA587CC();
    v17 = sub_1DACB9214();
    v19 = v18;

    v20 = sub_1DAA7ABE4(v17, v19, &v29);

    *(v4 + 4) = v20;
    _os_log_impl(&dword_1DAA3F000, v2, v3, "Fetched watched stocks for suggested symbol entities, stocks=[%s]", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x1E1278C00](v6, -1, -1);
    MEMORY[0x1E1278C00](v4, -1, -1);
  }

  sub_1DAC57A10(v1, MEMORY[0x1E69E7CC0], v0[9]);

  v21 = v0[1];

  return v21();
}

uint64_t sub_1DAC57760()
{
  v28 = v0;
  v1 = v0[16];

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v2 = MEMORY[0x1E69E7CC0];
  sub_1DACB71E4();
  v3 = sub_1DACB8C74();
  v4 = sub_1DACB98E4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = v6;
    v27 = v6;
    *v5 = 136315138;
    v8 = v2[2];
    if (v8)
    {
      v23 = v6;
      v24 = v5;
      v25 = v4;
      v26 = v3;
      sub_1DAA5859C(0, v8, 0);
      v9 = v2 + 5;
      v10 = v2[2];
      v11 = 2 * v10;
      do
      {
        v12 = *(v9 - 1);
        v13 = *v9;
        v14 = v10 + 1;
        v15 = v2[3];
        sub_1DACB71E4();
        if (v10 >= v15 >> 1)
        {
          sub_1DAA5859C((v15 > 1), v14, 1);
        }

        v2[2] = v14;
        v16 = &v2[v11];
        v16[4] = v12;
        v16[5] = v13;
        v11 += 2;
        v9 += 17;
        ++v10;
        --v8;
      }

      while (v8);
      v3 = v26;
      v4 = v25;
      v7 = v23;
      v5 = v24;
    }

    v0[8] = v2;
    sub_1DAA61540(0, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1DAA587CC();
    v17 = sub_1DACB9214();
    v19 = v18;

    v20 = sub_1DAA7ABE4(v17, v19, &v27);

    *(v5 + 4) = v20;
    _os_log_impl(&dword_1DAA3F000, v3, v4, "Fetched watched stocks for suggested symbol entities, stocks=[%s]", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1E1278C00](v7, -1, -1);
    MEMORY[0x1E1278C00](v5, -1, -1);
  }

  sub_1DAC57A10(MEMORY[0x1E69E7CC0], MEMORY[0x1E69E7CC0], v0[9]);

  v21 = v0[1];

  return v21();
}

uint64_t sub_1DAC57A10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v70 = a3;
  sub_1DAC5F4F0(0, &qword_1EE123A80, MEMORY[0x1E6968E10], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v69 = &v63 - v6;
  v7 = sub_1DACB7904();
  v67 = *(v7 - 8);
  v68 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v72 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAC5F3FC(0, &qword_1ECBE6A38, &qword_1EE123548, &protocol conformance descriptor for SymbolEntity, MEMORY[0x1E695A208]);
  v65 = *(v9 - 8);
  v66 = v9;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v73 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v71 = &v63 - v12;
  v77 = type metadata accessor for SymbolEntity(0);
  MEMORY[0x1EEE9AC00](v77);
  v76 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAC5F3FC(0, &qword_1ECBE70F8, &qword_1EE123548, &protocol conformance descriptor for SymbolEntity, MEMORY[0x1E6959EE0]);
  v75 = v14;
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v63 - v19;
  v21 = *(a1 + 16);
  v22 = MEMORY[0x1E69E7CC0];
  if (v21)
  {
    v63 = a2;
    v64 = v18;
    v97 = MEMORY[0x1E69E7CC0];
    sub_1DAB25EB8(0, v21, 0);
    v22 = v97;
    v23 = a1 + 32;
    v74 = v15 + 32;
    do
    {
      v24 = *(v23 + 80);
      v25 = *(v23 + 112);
      v94 = *(v23 + 96);
      v95 = v25;
      v26 = *(v23 + 16);
      v27 = *(v23 + 48);
      v90 = *(v23 + 32);
      v91 = v27;
      v28 = *(v23 + 48);
      v29 = *(v23 + 80);
      v92 = *(v23 + 64);
      v93 = v29;
      v30 = *(v23 + 16);
      v88 = *v23;
      v89 = v30;
      v31 = *(v23 + 112);
      v85 = v94;
      v86 = v31;
      v81 = v90;
      v82 = v28;
      v83 = v92;
      v84 = v24;
      v96 = *(v23 + 128);
      v87 = *(v23 + 128);
      v79 = v88;
      v80 = v26;
      sub_1DAA806E4(&v88, v78);
      sub_1DAA806E4(&v88, v78);
      SymbolEntity.init(from:)(&v79, v76);
      sub_1DAC5F378(&qword_1EE123548, type metadata accessor for SymbolEntity, &protocol conformance descriptor for SymbolEntity);
      sub_1DACB6E44();
      sub_1DAA9B1C8(&v88);
      v97 = v22;
      v33 = *(v22 + 16);
      v32 = *(v22 + 24);
      if (v33 >= v32 >> 1)
      {
        sub_1DAB25EB8((v32 > 1), v33 + 1, 1);
        v22 = v97;
      }

      *(v22 + 16) = v33 + 1;
      (*(v15 + 32))(v22 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v33, v20, v75);
      v23 += 136;
      --v21;
    }

    while (v21);
    a2 = v63;
    v18 = v64;
  }

  v34 = *(a2 + 16);
  v35 = MEMORY[0x1E69E7CC0];
  if (v34)
  {
    v97 = MEMORY[0x1E69E7CC0];
    sub_1DAB25EB8(0, v34, 0);
    v35 = v97;
    v36 = a2 + 32;
    v74 = v15 + 32;
    do
    {
      v37 = *(v36 + 80);
      v38 = *(v36 + 112);
      v94 = *(v36 + 96);
      v95 = v38;
      v39 = *(v36 + 16);
      v40 = *(v36 + 48);
      v90 = *(v36 + 32);
      v91 = v40;
      v41 = *(v36 + 48);
      v42 = *(v36 + 80);
      v92 = *(v36 + 64);
      v93 = v42;
      v43 = *(v36 + 16);
      v88 = *v36;
      v89 = v43;
      v44 = *(v36 + 112);
      v85 = v94;
      v86 = v44;
      v81 = v90;
      v82 = v41;
      v83 = v92;
      v84 = v37;
      v96 = *(v36 + 128);
      v87 = *(v36 + 128);
      v79 = v88;
      v80 = v39;
      sub_1DAA806E4(&v88, v78);
      sub_1DAA806E4(&v88, v78);
      SymbolEntity.init(from:)(&v79, v76);
      sub_1DAC5F378(&qword_1EE123548, type metadata accessor for SymbolEntity, &protocol conformance descriptor for SymbolEntity);
      sub_1DACB6E44();
      sub_1DAA9B1C8(&v88);
      v97 = v35;
      v46 = *(v35 + 16);
      v45 = *(v35 + 24);
      if (v46 >= v45 >> 1)
      {
        sub_1DAB25EB8((v45 > 1), v46 + 1, 1);
        v35 = v97;
      }

      *(v35 + 16) = v46 + 1;
      (*(v15 + 32))(v35 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v46, v18, v75);
      v36 += 136;
      --v34;
    }

    while (v34);
  }

  v48 = v67;
  v47 = v68;
  v49 = v65;
  if (*(v22 + 16))
  {
    if (qword_1ECBE5BC0 != -1)
    {
      swift_once();
    }

    v50 = __swift_project_value_buffer(v47, qword_1ECBE9638);
    v51 = v72;
    (*(v48 + 16))(v72, v50, v47);
    v52 = sub_1DAC5F378(&qword_1EE123548, type metadata accessor for SymbolEntity, &protocol conformance descriptor for SymbolEntity);
    MEMORY[0x1E1274B90](v51, v22, v77, v52);
    v53 = sub_1DAADC7B4(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v55 = v53[2];
    v54 = v53[3];
    if (v55 >= v54 >> 1)
    {
      v53 = sub_1DAADC7B4((v54 > 1), v55 + 1, 1, v53);
    }

    v56 = v66;
    v53[2] = v55 + 1;
    (*(v49 + 32))(v53 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v55, v71, v56);
    if (*(v35 + 16))
    {
      goto LABEL_18;
    }

LABEL_26:

    goto LABEL_27;
  }

  v53 = MEMORY[0x1E69E7CC0];
  v56 = v66;
  if (!*(v35 + 16))
  {
    goto LABEL_26;
  }

LABEL_18:
  if (qword_1ECBE5BC8 != -1)
  {
    swift_once();
  }

  v57 = __swift_project_value_buffer(v47, qword_1ECBE9650);
  v58 = v72;
  (*(v48 + 16))(v72, v57, v47);
  v59 = sub_1DAC5F378(&qword_1EE123548, type metadata accessor for SymbolEntity, &protocol conformance descriptor for SymbolEntity);
  MEMORY[0x1E1274B90](v58, v35, v77, v59);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v53 = sub_1DAADC7B4(0, v53[2] + 1, 1, v53);
  }

  v61 = v53[2];
  v60 = v53[3];
  if (v61 >= v60 >> 1)
  {
    v53 = sub_1DAADC7B4((v60 > 1), v61 + 1, 1, v53);
  }

  v53[2] = v61 + 1;
  (*(v49 + 32))(v53 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v61, v73, v56);
LABEL_27:
  (*(v48 + 56))(v69, 1, 1, v47);
  sub_1DAC5F378(&qword_1EE123548, type metadata accessor for SymbolEntity, &protocol conformance descriptor for SymbolEntity);
  return sub_1DACB7144();
}

uint64_t SymbolQuery.defaultResult()(uint64_t a1)
{
  v3 = *(v1 + 16);
  *(v2 + 472) = a1;
  *(v2 + 480) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1DAC5838C, 0, 0);
}

uint64_t sub_1DAC5838C()
{
  if (qword_1EE11D388 != -1)
  {
    swift_once();
  }

  v1 = sub_1DACB8C94();
  v0[61] = __swift_project_value_buffer(v1, qword_1EE11D390);
  v2 = sub_1DACB8C74();
  v3 = sub_1DACB98E4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1DAA3F000, v2, v3, "Default symbol entity requested", v4, 2u);
    MEMORY[0x1E1278C00](v4, -1, -1);
  }

  sub_1DACB6D24();
  v5 = v0[56];
  v6 = v0[57];
  __swift_project_boxed_opaque_existential_1(v0 + 53, v5);
  v0[62] = (*(v6 + 120))(v5, v6);
  v7 = swift_task_alloc();
  v0[63] = v7;
  *v7 = v0;
  v7[1] = sub_1DAC58528;

  return MEMORY[0x1EEE44EE0](v0 + 58);
}

uint64_t sub_1DAC58528()
{
  v2 = *v1;
  *(*v1 + 512) = v0;

  if (v0)
  {
    v3 = sub_1DAC58B0C;
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1((v2 + 424));
    v3 = sub_1DAC5864C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DAC5864C()
{
  v71 = v0;
  v1 = *(v0 + 464);
  if (*(v1 + 16))
  {
    *(v0 + 16) = *(v1 + 32);
    v2 = *(v1 + 96);
    v4 = *(v1 + 48);
    v3 = *(v1 + 64);
    *(v0 + 64) = *(v1 + 80);
    *(v0 + 80) = v2;
    *(v0 + 32) = v4;
    *(v0 + 48) = v3;
    v6 = *(v1 + 128);
    v5 = *(v1 + 144);
    v7 = *(v1 + 112);
    *(v0 + 144) = *(v1 + 160);
    *(v0 + 112) = v6;
    *(v0 + 128) = v5;
    *(v0 + 96) = v7;
    sub_1DAA806E4(v0 + 16, v0 + 152);

    v49 = *(v0 + 136);
    v56 = *(v0 + 120);
    v9 = *(v0 + 88);
    v8 = *(v0 + 96);
    v10 = *(v0 + 80);
    v53 = *(v0 + 104);
    v54 = *(v0 + 64);
    v55 = *(v0 + 72);
    v11 = *(v0 + 56);
    v51 = *(v0 + 112);
    v52 = *(v0 + 48);
    v12 = *(v0 + 32);
    v50 = *(v0 + 40);
    v14 = *(v0 + 16);
    v13 = *(v0 + 24);
    sub_1DAA806E4(v0 + 16, v0 + 288);
    v15 = sub_1DACB8C74();
    v16 = sub_1DACB98E4();
    sub_1DAA9B1C8(v0 + 16);
    if (os_log_type_enabled(v15, v16))
    {
      v48 = v12;
      v17 = swift_slowAlloc();
      v47 = v10;
      v18 = swift_slowAlloc();
      *&v57 = v18;
      *v17 = 136315138;
      sub_1DACB71E4();
      log = v15;
      v19 = v8;
      v20 = v14;
      v21 = sub_1DAA7ABE4(v14, v13, &v57);

      *(v17 + 4) = v21;
      v14 = v20;
      v8 = v19;
      v15 = log;
      _os_log_impl(&dword_1DAA3F000, log, v16, "Returning first watched stock for default symbol entity, stock=%s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v18);
      v22 = v18;
      v10 = v47;
      MEMORY[0x1E1278C00](v22, -1, -1);
      v23 = v17;
      v12 = v48;
      MEMORY[0x1E1278C00](v23, -1, -1);
    }

    v24 = v56;
    v26 = v54;
    v25 = v55;
    v27 = v52;
    v28 = v53;
    v30 = v50;
    v29 = v51;
    v31 = v49;
  }

  else
  {

    v36 = sub_1DACB8C74();
    v37 = sub_1DACB9904();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_1DAA3F000, v36, v37, "No watched symbols to return as default symbol entity, falling back to AAPL", v38, 2u);
      MEMORY[0x1E1278C00](v38, -1, -1);
    }

    v12 = 1280328001;

    *&v57 = 0x51414453414ELL;
    *(&v57 + 1) = 0xE600000000000000;
    MEMORY[0x1E1276F20](58, 0xE100000000000000);
    MEMORY[0x1E1276F20](1280328001, 0xE400000000000000);
    v14 = 0x51414453414ELL;
    v13 = 0xE600000000000000;
    if (qword_1EE122610 != -1)
    {
      swift_once();
    }

    v39 = qword_1EE13E388;
    if (*(qword_1EE13E388 + 16))
    {
      v8 = 0xE400000000000000;
      v40 = sub_1DAA4BF3C(1280328001, 0xE400000000000000);
      v9 = 1280328001;
      if (v41)
      {
        v42 = (*(v39 + 56) + 16 * v40);
        v9 = *v42;
        v8 = v42[1];
        sub_1DACB71E4();
      }
    }

    else
    {
      v8 = 0xE400000000000000;
      v9 = 1280328001;
    }

    v11 = 0xEA00000000002E63;
    v43 = qword_1EE13E390;
    v24 = 0uLL;
    if (*(qword_1EE13E390 + 16))
    {
      v44 = sub_1DAA4BF3C(1280328001, 0xE400000000000000);
      if (v45)
      {
        v28 = *(*(v43 + 56) + 16 * v44);
        v29 = sub_1DACB71E4();
        v10 = 3;
        v25 = 0xE600000000000000;
        v26 = 0x51414453414ELL;
        v27 = 0x6E4920656C707041;
        v31 = 0uLL;
        v30 = 0xE400000000000000;
        v24 = 0uLL;
      }

      else
      {
        v10 = 3;
        v25 = 0xE600000000000000;
        v26 = 0x51414453414ELL;
        v27 = 0x6E4920656C707041;
        v28 = 1280328001;
        v31 = 0uLL;
        v29 = 0xE400000000000000;
        v24 = 0uLL;
        v30 = 0xE400000000000000;
      }
    }

    else
    {
      v10 = 3;
      v25 = 0xE600000000000000;
      v26 = 0x51414453414ELL;
      v27 = 0x6E4920656C707041;
      v30 = 0xE400000000000000;
      v28 = 1280328001;
      v31 = 0uLL;
      v29 = 0xE400000000000000;
    }
  }

  v32 = *(v0 + 472);
  *&v57 = v14;
  *(&v57 + 1) = v13;
  v58 = v12;
  v59 = v30;
  v60 = v27;
  v61 = v11;
  v62 = v26;
  v63 = v25;
  v64 = v10;
  v65 = v9;
  v66 = v8;
  v67 = v28;
  v68 = v29;
  v69 = v24;
  v70 = v31;
  SymbolEntity.init(from:)(&v57, v32);
  v33 = type metadata accessor for SymbolEntity(0);
  (*(*(v33 - 8) + 56))(v32, 0, 1, v33);
  v34 = *(v0 + 8);

  return v34();
}

uint64_t sub_1DAC58B0C()
{
  v35 = v0;
  v1 = v0[64];

  __swift_destroy_boxed_opaque_existential_1(v0 + 53);

  v2 = sub_1DACB8C74();
  v3 = sub_1DACB9904();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1DAA3F000, v2, v3, "No watched symbols to return as default symbol entity, falling back to AAPL", v4, 2u);
    MEMORY[0x1E1278C00](v4, -1, -1);
  }

  *&v21 = 0x51414453414ELL;
  *(&v21 + 1) = 0xE600000000000000;
  MEMORY[0x1E1276F20](58, 0xE100000000000000);
  MEMORY[0x1E1276F20](1280328001, 0xE400000000000000);
  if (qword_1EE122610 != -1)
  {
    swift_once();
  }

  v5 = qword_1EE13E388;
  if (*(qword_1EE13E388 + 16))
  {
    v6 = 0xE400000000000000;
    v7 = sub_1DAA4BF3C(1280328001, 0xE400000000000000);
    v8 = 1280328001;
    if (v9)
    {
      v10 = (*(v5 + 56) + 16 * v7);
      v8 = *v10;
      v6 = v10[1];
      sub_1DACB71E4();
    }
  }

  else
  {
    v6 = 0xE400000000000000;
    v8 = 1280328001;
  }

  v11 = qword_1EE13E390;
  if (*(qword_1EE13E390 + 16))
  {
    v12 = 0xE400000000000000;
    v13 = sub_1DAA4BF3C(1280328001, 0xE400000000000000);
    v14 = 1280328001;
    if (v15)
    {
      v16 = (*(v11 + 56) + 16 * v13);
      v14 = *v16;
      v12 = v16[1];
      sub_1DACB71E4();
    }
  }

  else
  {
    v14 = 1280328001;
    v12 = 0xE400000000000000;
  }

  v17 = v0[59];
  *&v21 = 0x51414453414ELL;
  *(&v21 + 1) = 0xE600000000000000;
  v22 = 1280328001;
  v23 = 0xE400000000000000;
  v24 = 0x6E4920656C707041;
  v25 = 0xEA00000000002E63;
  v26 = 0x51414453414ELL;
  v27 = 0xE600000000000000;
  v28 = 3;
  v29 = v8;
  v30 = v6;
  v31 = v14;
  v32 = v12;
  v33 = 0u;
  v34 = 0u;
  SymbolEntity.init(from:)(&v21, v17);
  v18 = type metadata accessor for SymbolEntity(0);
  (*(*(v18 - 8) + 56))(v17, 0, 1, v18);
  v19 = v0[1];

  return v19();
}

uint64_t sub_1DAC58DCC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DAB07898;

  return SymbolQuery.entities(for:)(a1);
}

uint64_t sub_1DAC58E60(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DAA9A3AC;

  return SymbolQuery.suggestedEntities()(a1);
}

uint64_t sub_1DAC58EF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DAA94754;

  return SymbolQuery.entities(matching:)(a1, a2, a3);
}

uint64_t SymbolQuery.entities(matching:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 104) = a2;
  *(v4 + 112) = a3;
  *(v4 + 96) = a1;
  *(v4 + 120) = *v3;
  *(v4 + 136) = *(v3 + 16);
  return MEMORY[0x1EEE6DFA0](sub_1DAC58FDC, 0, 0);
}

uint64_t sub_1DAC58FDC()
{
  v15 = v0;
  if (qword_1EE11D388 != -1)
  {
    swift_once();
  }

  v1 = sub_1DACB8C94();
  v0[18] = __swift_project_value_buffer(v1, qword_1EE11D390);
  sub_1DACB71E4();
  v2 = sub_1DACB8C74();
  v3 = sub_1DACB9914();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[13];
    v4 = v0[14];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_1DAA7ABE4(v5, v4, &v14);
    _os_log_impl(&dword_1DAA3F000, v2, v3, "Fetching stocks for symbol entities matching string='%s'", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1E1278C00](v7, -1, -1);
    MEMORY[0x1E1278C00](v6, -1, -1);
  }

  v8 = v0[14];
  v9 = v0[13];
  sub_1DACB6D24();
  v10 = v0[5];
  v11 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v10);
  v0[19] = sub_1DAAEA918(v9, v8, v10, v11);
  v12 = swift_task_alloc();
  v0[20] = v12;
  *v12 = v0;
  v12[1] = sub_1DAC591E8;

  return MEMORY[0x1EEE44EE0](v0 + 10);
}

uint64_t sub_1DAC591E8()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v3 = sub_1DAAFCED0;
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1((v2 + 16));
    v3 = sub_1DAC5930C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DAC5930C()
{
  v33 = v0;
  v1 = *(v0 + 80);
  *(v0 + 176) = v1;
  sub_1DACB71E4();
  sub_1DACB71E4();
  v2 = sub_1DACB8C74();
  v3 = sub_1DACB9914();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = *(v0 + 104);
    v4 = *(v0 + 112);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v31 = v7;
    *v6 = 136315394;
    *(v6 + 4) = sub_1DAA7ABE4(v5, v4, &v31);
    *(v6 + 12) = 2080;
    v8 = *(v1 + 16);
    v9 = MEMORY[0x1E69E7CC0];
    if (v8)
    {
      v26 = v7;
      v27 = v6;
      v28 = v3;
      v29 = v2;
      v32 = MEMORY[0x1E69E7CC0];
      sub_1DAA5859C(0, v8, 0);
      v9 = v32;
      v10 = *(v32 + 16);
      v11 = 16 * v10;
      v30 = v1;
      v12 = (v1 + 40);
      do
      {
        v13 = *(v12 - 1);
        v14 = *v12;
        v32 = v9;
        v15 = v10 + 1;
        v16 = *(v9 + 24);
        sub_1DACB71E4();
        if (v10 >= v16 >> 1)
        {
          sub_1DAA5859C((v16 > 1), v15, 1);
          v9 = v32;
        }

        *(v9 + 16) = v15;
        v17 = v9 + v11;
        *(v17 + 32) = v13;
        *(v17 + 40) = v14;
        v11 += 16;
        v12 += 17;
        ++v10;
        --v8;
      }

      while (v8);
      v2 = v29;
      v1 = v30;
      v3 = v28;
      v7 = v26;
      v6 = v27;
    }

    *(v0 + 88) = v9;
    sub_1DAA61540(0, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1DAA587CC();
    v18 = sub_1DACB9214();
    v20 = v19;

    v21 = sub_1DAA7ABE4(v18, v20, &v31);

    *(v6 + 14) = v21;
    _os_log_impl(&dword_1DAA3F000, v2, v3, "Fetched stocks for symbol entities matching string='%s', stocks=[%s]", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E1278C00](v7, -1, -1);
    MEMORY[0x1E1278C00](v6, -1, -1);
  }

  v22 = *(v0 + 136);
  *(v0 + 56) = *(v0 + 120);
  *(v0 + 72) = v22;
  v23 = swift_task_alloc();
  *(v0 + 184) = v23;
  *v23 = v0;
  v23[1] = sub_1DAB7E91C;
  v24 = *(v0 + 96);

  return sub_1DAC5975C(v24, v1);
}

uint64_t sub_1DAC59610(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1DAB7A5A0();
  *v5 = v2;
  v5[1] = sub_1DAA9A3AC;

  return MEMORY[0x1EEDB2ED8](a1, a2, v6);
}

uint64_t sub_1DAC596C4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DAA94754;

  return SymbolQuery.defaultResult()(a1);
}

uint64_t sub_1DAC5975C(uint64_t a1, uint64_t a2)
{
  *(v3 + 480) = a1;
  *(v3 + 488) = a2;
  *(v3 + 496) = *v2;
  *(v3 + 512) = *(v2 + 16);
  return MEMORY[0x1EEE6DFA0](sub_1DAC5978C, 0, 0);
}

uint64_t sub_1DAC5978C(uint64_t a1)
{
  sub_1DACB6D24();
  v2 = v1[56];
  v3 = v1[57];
  __swift_project_boxed_opaque_existential_1(v1 + 53, v2);
  v1[65] = (*(v3 + 120))(v2, v3);
  v4 = swift_task_alloc();
  v1[66] = v4;
  *v4 = v1;
  v4[1] = sub_1DAC59870;

  return MEMORY[0x1EEE44EE0](v1 + 58);
}

uint64_t sub_1DAC59870()
{
  v2 = *v1;
  *(*v1 + 536) = v0;

  if (v0)
  {
    v3 = sub_1DAC59F2C;
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1((v2 + 424));
    v3 = sub_1DAC59994;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DAC59994()
{
  v73 = v0;
  v1 = *(v0 + 464);
  v2 = *(v0 + 488);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = (v0 + 152);
    v5 = v2 + 32;
    v6 = v3 - 1;
    v7 = MEMORY[0x1E69E7CC0];
    v70 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      *(v0 + 16) = *v5;
      v8 = *(v5 + 16);
      v9 = *(v5 + 32);
      v10 = *(v5 + 64);
      *(v0 + 64) = *(v5 + 48);
      *(v0 + 80) = v10;
      *(v0 + 32) = v8;
      *(v0 + 48) = v9;
      v11 = *(v5 + 80);
      v12 = *(v5 + 96);
      v13 = *(v5 + 112);
      *(v0 + 144) = *(v5 + 128);
      *(v0 + 112) = v12;
      *(v0 + 128) = v13;
      *(v0 + 96) = v11;
      *v4 = *v5;
      v14 = *(v5 + 16);
      v15 = *(v5 + 32);
      v16 = *(v5 + 64);
      *(v0 + 200) = *(v5 + 48);
      *(v0 + 216) = v16;
      *(v0 + 168) = v14;
      *(v0 + 184) = v15;
      v17 = *(v5 + 80);
      v18 = *(v5 + 96);
      v19 = *(v5 + 112);
      *(v0 + 280) = *(v5 + 128);
      *(v0 + 248) = v18;
      *(v0 + 264) = v19;
      *(v0 + 232) = v17;
      v20 = swift_task_alloc();
      *(v20 + 16) = v4;
      sub_1DAA806E4(v0 + 16, v0 + 288);
      v21 = sub_1DAC784F4(sub_1DAB84A28, v20, v1);

      if (v21)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_1DAA5A0A8(0, *(v7 + 2) + 1, 1, v7);
        }

        v23 = *(v7 + 2);
        v22 = *(v7 + 3);
        v24 = v23 + 1;
        if (v23 >= v22 >> 1)
        {
          v25 = sub_1DAA5A0A8((v22 > 1), v23 + 1, 1, v7);
          v7 = v25;
        }

        else
        {
          v25 = v7;
        }
      }

      else
      {
        v26 = v70;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v26 = sub_1DAA5A0A8(0, *(v70 + 16) + 1, 1, v70);
        }

        v23 = *(v26 + 2);
        v27 = *(v26 + 3);
        v28 = v26;
        v24 = v23 + 1;
        if (v23 >= v27 >> 1)
        {
          v25 = sub_1DAA5A0A8((v27 > 1), v23 + 1, 1, v28);
          v70 = v25;
        }

        else
        {
          v70 = v28;
          v25 = v28;
        }
      }

      *(v25 + 2) = v24;
      v29 = &v25[136 * v23];
      *(v29 + 2) = *(v0 + 16);
      v30 = *(v0 + 32);
      v31 = *(v0 + 48);
      v32 = *(v0 + 80);
      *(v29 + 5) = *(v0 + 64);
      *(v29 + 6) = v32;
      *(v29 + 3) = v30;
      *(v29 + 4) = v31;
      v33 = *(v0 + 96);
      v34 = *(v0 + 112);
      v35 = *(v0 + 128);
      *(v29 + 20) = *(v0 + 144);
      *(v29 + 8) = v34;
      *(v29 + 9) = v35;
      *(v29 + 7) = v33;
      if (!v6)
      {
        break;
      }

      --v6;
      v5 += 136;
    }
  }

  else
  {

    v7 = MEMORY[0x1E69E7CC0];
    v70 = MEMORY[0x1E69E7CC0];
  }

  if (qword_1EE11D388 != -1)
  {
    swift_once();
  }

  v36 = sub_1DACB8C94();
  __swift_project_value_buffer(v36, qword_1EE11D390);
  sub_1DACB71E4();
  v37 = v70;
  sub_1DACB71E4();
  sub_1DACB71E4();
  v38 = sub_1DACB8C74();
  v39 = sub_1DACB9914();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v42 = v41;
    v72[0] = v41;
    *v40 = 136315650;
    v43 = MEMORY[0x1E69E7CC0];
    if (v3)
    {
      v65 = v41;
      v66 = v39;
      v67 = v40;
      v68 = v38;
      v69 = v7;
      v44 = *(v0 + 488);
      v71 = MEMORY[0x1E69E7CC0];
      sub_1DAA5859C(0, v3, 0);
      v43 = v71;
      v45 = *(v71 + 16);
      v46 = 16 * v45;
      v47 = (v44 + 40);
      do
      {
        v48 = *(v47 - 1);
        v49 = *v47;
        v50 = v45 + 1;
        v51 = *(v71 + 24);
        sub_1DACB71E4();
        if (v45 >= v51 >> 1)
        {
          sub_1DAA5859C((v51 > 1), v50, 1);
        }

        *(v71 + 16) = v50;
        v52 = v71 + v46;
        *(v52 + 32) = v48;
        *(v52 + 40) = v49;
        v46 += 16;
        v47 += 17;
        ++v45;
        --v3;
      }

      while (v3);
      v38 = v68;
      v7 = v69;
      v40 = v67;
      v39 = v66;
      v42 = v65;
    }

    *(v0 + 472) = v43;
    sub_1DAA61540(0, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1DAA587CC();
    v53 = sub_1DACB9214();
    v55 = v54;

    v56 = sub_1DAA7ABE4(v53, v55, v72);

    *(v40 + 4) = v56;
    *(v40 + 12) = 2080;
    v57 = sub_1DAB81DD8(v7);
    v59 = sub_1DAA7ABE4(v57, v58, v72);

    *(v40 + 14) = v59;
    *(v40 + 22) = 2080;
    v37 = v70;
    v60 = sub_1DAB81DD8(v70);
    v62 = sub_1DAA7ABE4(v60, v61, v72);

    *(v40 + 24) = v62;

    _os_log_impl(&dword_1DAA3F000, v38, v39, "Sectioned stocks=[%s] into watched=[%s], notWatched=[%s]", v40, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E1278C00](v42, -1, -1);
    MEMORY[0x1E1278C00](v40, -1, -1);
  }

  else
  {
  }

  sub_1DAC57A10(v7, v37, *(v0 + 480));

  v63 = *(v0 + 8);

  return v63();
}

uint64_t sub_1DAC59F2C()
{
  v71 = v0;
  v1 = *(v0 + 536);

  __swift_destroy_boxed_opaque_existential_1((v0 + 424));

  v2 = *(v0 + 488);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = (v0 + 152);
    v5 = v2 + 32;
    v6 = v3 - 1;
    v7 = MEMORY[0x1E69E7CC0];
    v8 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      *(v0 + 16) = *v5;
      v9 = *(v5 + 16);
      v10 = *(v5 + 32);
      v11 = *(v5 + 64);
      *(v0 + 64) = *(v5 + 48);
      *(v0 + 80) = v11;
      *(v0 + 32) = v9;
      *(v0 + 48) = v10;
      v12 = *(v5 + 80);
      v13 = *(v5 + 96);
      v14 = *(v5 + 112);
      *(v0 + 144) = *(v5 + 128);
      *(v0 + 112) = v13;
      *(v0 + 128) = v14;
      *(v0 + 96) = v12;
      *v4 = *v5;
      v15 = *(v5 + 16);
      v16 = *(v5 + 32);
      v17 = *(v5 + 64);
      *(v0 + 200) = *(v5 + 48);
      *(v0 + 216) = v17;
      *(v0 + 168) = v15;
      *(v0 + 184) = v16;
      v18 = *(v5 + 80);
      v19 = *(v5 + 96);
      v20 = *(v5 + 112);
      *(v0 + 280) = *(v5 + 128);
      *(v0 + 248) = v19;
      *(v0 + 264) = v20;
      *(v0 + 232) = v18;
      v21 = swift_task_alloc();
      *(v21 + 16) = v4;
      sub_1DAA806E4(v0 + 16, v0 + 288);
      v22 = sub_1DAC784F4(sub_1DAB84A28, v21, MEMORY[0x1E69E7CC0]);

      if (v22)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1DAA5A0A8(0, *(v8 + 2) + 1, 1, v8);
        }

        v24 = *(v8 + 2);
        v23 = *(v8 + 3);
        v25 = v24 + 1;
        if (v24 >= v23 >> 1)
        {
          v26 = sub_1DAA5A0A8((v23 > 1), v24 + 1, 1, v8);
          v8 = v26;
        }

        else
        {
          v26 = v8;
        }
      }

      else
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_1DAA5A0A8(0, *(v7 + 2) + 1, 1, v7);
        }

        v24 = *(v7 + 2);
        v27 = *(v7 + 3);
        v25 = v24 + 1;
        if (v24 >= v27 >> 1)
        {
          v26 = sub_1DAA5A0A8((v27 > 1), v24 + 1, 1, v7);
          v7 = v26;
        }

        else
        {
          v26 = v7;
        }
      }

      *(v26 + 2) = v25;
      v28 = &v26[136 * v24];
      *(v28 + 2) = *(v0 + 16);
      v29 = *(v0 + 32);
      v30 = *(v0 + 48);
      v31 = *(v0 + 80);
      *(v28 + 5) = *(v0 + 64);
      *(v28 + 6) = v31;
      *(v28 + 3) = v29;
      *(v28 + 4) = v30;
      v32 = *(v0 + 96);
      v33 = *(v0 + 112);
      v34 = *(v0 + 128);
      *(v28 + 20) = *(v0 + 144);
      *(v28 + 8) = v33;
      *(v28 + 9) = v34;
      *(v28 + 7) = v32;
      if (!v6)
      {
        break;
      }

      --v6;
      v5 += 136;
    }
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];

    v7 = v8;
  }

  if (qword_1EE11D388 != -1)
  {
    swift_once();
  }

  v35 = sub_1DACB8C94();
  __swift_project_value_buffer(v35, qword_1EE11D390);
  sub_1DACB71E4();
  sub_1DACB71E4();
  sub_1DACB71E4();
  v36 = sub_1DACB8C74();
  v37 = sub_1DACB9914();

  if (os_log_type_enabled(v36, v37))
  {
    v68 = v7;
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v40 = v39;
    v70[0] = v39;
    *v38 = 136315650;
    v41 = MEMORY[0x1E69E7CC0];
    if (v3)
    {
      v63 = v39;
      v64 = v37;
      v65 = v38;
      v66 = v36;
      v67 = v8;
      v42 = *(v0 + 488);
      v69 = MEMORY[0x1E69E7CC0];
      sub_1DAA5859C(0, v3, 0);
      v41 = v69;
      v43 = *(v69 + 16);
      v44 = 16 * v43;
      v45 = (v42 + 40);
      do
      {
        v46 = *(v45 - 1);
        v47 = *v45;
        v48 = v43 + 1;
        v49 = *(v69 + 24);
        sub_1DACB71E4();
        if (v43 >= v49 >> 1)
        {
          sub_1DAA5859C((v49 > 1), v48, 1);
        }

        *(v69 + 16) = v48;
        v50 = v69 + v44;
        *(v50 + 32) = v46;
        *(v50 + 40) = v47;
        v44 += 16;
        v45 += 17;
        ++v43;
        --v3;
      }

      while (v3);
      v36 = v66;
      v8 = v67;
      v38 = v65;
      v37 = v64;
      v40 = v63;
    }

    *(v0 + 472) = v41;
    sub_1DAA61540(0, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1DAA587CC();
    v51 = sub_1DACB9214();
    v53 = v52;

    v54 = sub_1DAA7ABE4(v51, v53, v70);

    *(v38 + 4) = v54;
    *(v38 + 12) = 2080;
    v55 = sub_1DAB81DD8(v8);
    v57 = sub_1DAA7ABE4(v55, v56, v70);

    *(v38 + 14) = v57;
    *(v38 + 22) = 2080;
    v7 = v68;
    v58 = sub_1DAB81DD8(v68);
    v60 = sub_1DAA7ABE4(v58, v59, v70);

    *(v38 + 24) = v60;

    _os_log_impl(&dword_1DAA3F000, v36, v37, "Sectioned stocks=[%s] into watched=[%s], notWatched=[%s]", v38, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E1278C00](v40, -1, -1);
    MEMORY[0x1E1278C00](v38, -1, -1);
  }

  else
  {
  }

  sub_1DAC57A10(v8, v7, *(v0 + 480));

  v61 = *(v0 + 8);

  return v61();
}

uint64_t static SymbolQuery.findIntentDescription.getter@<X0>(uint64_t a1@<X8>)
{
  v20 = a1;
  v18 = MEMORY[0x1E6968E10];
  sub_1DAC5F4F0(0, &qword_1EE123A80, MEMORY[0x1E6968E10], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v21 = &v17 - v2;
  v3 = sub_1DACB78E4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1DACB7E44();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_1DACB92E4();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = sub_1DACB7904();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v19 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DACB9284();
  sub_1DACB7DF4();
  v12 = *MEMORY[0x1E6968DF0];
  v13 = *(v4 + 104);
  v13(v6, v12, v3);
  sub_1DACB7914();
  (*(v10 + 56))(v21, 1, 1, v9);
  sub_1DAC5F4F0(0, &qword_1ECBE6D78, v18, MEMORY[0x1E69E6F90]);
  v18 = swift_allocObject();
  *(v18 + 1) = xmmword_1DACD6260;
  sub_1DACB9284();
  sub_1DACB7DF4();
  v13(v6, v12, v3);
  sub_1DACB7914();
  sub_1DACB9284();
  sub_1DACB7DF4();
  v13(v6, v12, v3);
  sub_1DACB7914();
  sub_1DACB9284();
  sub_1DACB7DF4();
  v13(v6, v12, v3);
  sub_1DACB7914();
  sub_1DACB9284();
  sub_1DACB7DF4();
  v13(v6, v12, v3);
  sub_1DACB7914();
  sub_1DACB9284();
  sub_1DACB7DF4();
  v13(v6, v12, v3);
  sub_1DACB7914();
  sub_1DACB9284();
  sub_1DACB7DF4();
  v13(v6, v12, v3);
  sub_1DACB7914();
  sub_1DACB9284();
  sub_1DACB7DF4();
  v13(v6, v12, v3);
  sub_1DACB7914();
  v14 = v20;
  sub_1DACB7094();
  v15 = sub_1DACB7084();
  return (*(*(v15 - 8) + 56))(v14, 0, 1, v15);
}

uint64_t sub_1DAC5AB50()
{
  sub_1DAC5D7B0(0);
  v1 = v0;
  __swift_allocate_value_buffer(v0, qword_1ECBE9668);
  __swift_project_value_buffer(v1, qword_1ECBE9668);
  type metadata accessor for SymbolEntity(0);
  sub_1DAC5F378(&unk_1EE11EF70, type metadata accessor for SymbolEntity, &protocol conformance descriptor for SymbolEntity);
  return sub_1DACB7194();
}

uint64_t sub_1DAC5AC08()
{
  sub_1DAC5F554(0);
  swift_getKeyPath();
  sub_1DACB7114();
  sub_1DAC5F378(&unk_1EE11EF70, type metadata accessor for SymbolEntity, &protocol conformance descriptor for SymbolEntity);
  v0 = sub_1DACB71F4();

  swift_getKeyPath();
  sub_1DACB71F4();
  sub_1DACB7114();
  v1 = sub_1DACB71F4();

  sub_1DAA61540(0, &qword_1EE11F490, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1DACCB1F0;
  *(v2 + 32) = v0;
  *(v2 + 40) = v1;
  type metadata accessor for SymbolEntity(0);
  sub_1DACB71F4();
  v3 = sub_1DACB7394();

  return v3;
}

uint64_t sub_1DAC5AE50(uint64_t a1, uint64_t a2)
{
  sub_1DAC5F628(0);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = v4;
  v6 = MEMORY[0x1EEE9AC00](v2);
  v21 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - v8;
  sub_1DAC5F6C0(0);
  swift_allocObject();
  sub_1DACB70C4();
  type metadata accessor for SymbolEntity(0);
  sub_1DAC5F378(&unk_1EE11EF70, type metadata accessor for SymbolEntity, &protocol conformance descriptor for SymbolEntity);
  sub_1DACB73E4();

  sub_1DAC5F744(0);
  swift_allocObject();
  sub_1DACB7064();
  sub_1DACB73E4();

  sub_1DAC5F4F0(0, &qword_1ECBE96F0, sub_1DAC5F628, MEMORY[0x1E69E6F90]);
  v10 = *(v4 + 72);
  v11 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1DACC1D40;
  v13 = v12 + v11;
  v14 = *(v5 + 16);
  v14(v13, v9, v3);
  v15 = v13 + v10;
  v16 = v21;
  v14(v15, v21, v3);
  sub_1DAA9A574(0);
  sub_1DAA8D9E8();
  v17 = sub_1DACB73D4();

  v18 = *(v5 + 8);
  v18(v16, v3);
  v18(v9, v3);
  return v17;
}

uint64_t sub_1DAC5B170@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a5@<X4>, void *a6@<X8>)
{
  KeyPath = swift_getKeyPath();
  v11 = swift_allocObject();
  v11[2] = KeyPath;
  v11[3] = a1;
  v11[4] = a2;
  *a6 = a1;
  a6[1] = a2;
  a6[2] = a5;
  a6[3] = v11;
  return swift_bridgeObjectRetain_n();
}

uint64_t sub_1DAC5B210@<X0>(uint64_t *a1@<X0>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v8 = *a1;
  v7 = a1[1];
  KeyPath = swift_getKeyPath();
  v10 = swift_allocObject();
  v10[2] = KeyPath;
  v10[3] = v8;
  v10[4] = v7;
  *a5 = v8;
  a5[1] = v7;
  a5[2] = a4;
  a5[3] = v10;
  return swift_bridgeObjectRetain_n();
}

uint64_t sub_1DAC5B2BC()
{
  sub_1DAC5D84C(0);
  v1 = v0;
  __swift_allocate_value_buffer(v0, qword_1ECBE9680);
  __swift_project_value_buffer(v1, qword_1ECBE9680);
  type metadata accessor for SymbolEntity(0);
  sub_1DAC5F378(&unk_1EE11EF70, type metadata accessor for SymbolEntity, &protocol conformance descriptor for SymbolEntity);
  return sub_1DACB72F4();
}

uint64_t sub_1DAC5B36C()
{
  sub_1DAC5F4B4(0);
  v1 = v0;
  v35 = *(v0 - 8);
  v2 = v35;
  v32 = v35;
  v3 = MEMORY[0x1EEE9AC00](v0);
  v5 = v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v36 = v30 - v7;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = v30 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v34 = v30 - v11;
  swift_getKeyPath();
  sub_1DAC5F378(&unk_1EE11EF70, type metadata accessor for SymbolEntity, &protocol conformance descriptor for SymbolEntity);
  sub_1DAC5F378(&qword_1ECBE6E00, sub_1DAA9A574, MEMORY[0x1E695A090]);
  sub_1DACB73F4();
  v12 = type metadata accessor for SymbolEntity(0);
  sub_1DACB7444();
  v13 = *(v2 + 8);
  v33 = v10;
  v13(v10, v1);
  swift_getKeyPath();
  v14 = v36;
  sub_1DACB73F4();
  v30[1] = v12;
  sub_1DACB7444();
  v31 = v13;
  v13(v14, v1);
  swift_getKeyPath();
  sub_1DACB73F4();
  sub_1DACB7444();
  v13(v5, v1);
  sub_1DAC5F4F0(0, &qword_1ECBE96C8, sub_1DAC5F4B4, MEMORY[0x1E69E6F90]);
  v15 = *(v35 + 72);
  v16 = v32;
  v17 = (*(v32 + 80) + 32) & ~*(v32 + 80);
  v18 = 2 * v15;
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1DACC2610;
  v20 = v19 + v17;
  v21 = *(v16 + 16);
  v22 = v34;
  v21(v20, v34, v1);
  v23 = v20 + v15;
  v24 = v33;
  v21(v23, v33, v1);
  v25 = v20 + v18;
  v26 = v36;
  v21(v25, v36, v1);
  v27 = sub_1DACB7434();

  v28 = v31;
  v31(v26, v1);
  v28(v24, v1);
  v28(v22, v1);
  return v27;
}

uint64_t sub_1DAC5B774@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  if (*a1 == -1)
  {
    v7 = a2(0);
  }

  else
  {
    swift_once();
    v7 = a2(0);
  }

  v8 = v7;
  v9 = __swift_project_value_buffer(v7, a3);
  v10 = *(*(v8 - 8) + 16);

  return v10(a5, v9, v8);
}

uint64_t SymbolQuery.entities(matching:mode:sortedBy:limit:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v7 + 289) = a6;
  *(v7 + 144) = a4;
  *(v7 + 152) = a5;
  *(v7 + 288) = a3;
  *(v7 + 128) = a1;
  *(v7 + 136) = a2;
  *(v7 + 160) = *v6;
  *(v7 + 176) = *(v6 + 16);
  return MEMORY[0x1EEE6DFA0](sub_1DAC5B854, 0, 0);
}

uint64_t sub_1DAC5B854()
{
  v32 = v0;
  if (qword_1EE11D388 != -1)
  {
    swift_once();
  }

  v1 = sub_1DACB8C94();
  *(v0 + 184) = __swift_project_value_buffer(v1, qword_1EE11D390);
  swift_bridgeObjectRetain_n();
  sub_1DACB71E4();
  v2 = sub_1DACB8C74();
  v3 = sub_1DACB9914();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 289);
    v5 = *(v0 + 144);
    v6 = *(v0 + 152);
    v7 = *(v0 + 136);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v31 = v9;
    *v8 = 134218754;
    *(v8 + 4) = *(v7 + 16);

    *(v8 + 12) = 2080;
    v10 = sub_1DACB72E4();
    v11 = (v10 & 1) == 0;
    if (v10)
    {
      v12 = 6581857;
    }

    else
    {
      v12 = 29295;
    }

    if (v11)
    {
      v13 = 0xE200000000000000;
    }

    else
    {
      v13 = 0xE300000000000000;
    }

    v14 = sub_1DAA7ABE4(v12, v13, &v31);

    *(v8 + 14) = v14;
    *(v8 + 22) = 2048;
    v15 = *(v5 + 16);

    *(v8 + 24) = v15;

    *(v8 + 32) = 2048;
    if (v4)
    {
      v16 = 0;
    }

    else
    {
      v16 = v6;
    }

    *(v8 + 34) = v16;
    _os_log_impl(&dword_1DAA3F000, v2, v3, "Querying stocks for symbol entities matching property queryCount=%ld, comparatorMode=%s, sortCount=%ld, limit=%ld", v8, 0x2Au);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x1E1278C00](v9, -1, -1);
    MEMORY[0x1E1278C00](v8, -1, -1);
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  v17 = *(v0 + 136);
  v18 = v17[2];
  *(v0 + 192) = v18;
  if (v18)
  {
    *(v0 + 200) = 0;
    *(v0 + 208) = 0;
    v19 = v17[4];
    *(v0 + 216) = v19;
    v20 = v17[5];
    *(v0 + 224) = v20;
    *(v0 + 232) = v17[6];
    *(v0 + 240) = v17[7];
    swift_bridgeObjectRetain_n();
    swift_retain_n();
    v21 = sub_1DACB8C74();
    v22 = sub_1DACB98F4();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v31 = v24;
      *v23 = 136315138;
      sub_1DACB71E4();
      v25 = sub_1DAA7ABE4(v19, v20, &v31);

      *(v23 + 4) = v25;
      _os_log_impl(&dword_1DAA3F000, v21, v22, "Querying stocks for symbol entities matching property query=%s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x1E1278C00](v24, -1, -1);
      MEMORY[0x1E1278C00](v23, -1, -1);
    }

    sub_1DACB6D24();
    v26 = *(v0 + 40);
    v27 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v26);
    *(v0 + 248) = sub_1DAAEA918(v19, v20, v26, v27);
    v28 = swift_task_alloc();
    *(v0 + 256) = v28;
    *v28 = v0;
    v28[1] = sub_1DAC5BCCC;

    return MEMORY[0x1EEE44EE0](v0 + 80);
  }

  else
  {
    type metadata accessor for SymbolEntity(0);
    sub_1DAC5F378(&qword_1EE123548, type metadata accessor for SymbolEntity, &protocol conformance descriptor for SymbolEntity);
    sub_1DACB7154();
    v29 = *(v0 + 8);

    return v29();
  }
}

uint64_t sub_1DAC5BCCC()
{
  v2 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {

    v3 = sub_1DAB81AFC;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1((v2 + 16));
    v3 = sub_1DAC5BE04;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DAC5BE04()
{
  v116 = v0;
  v1 = sub_1DAB072D8(*(v0 + 80));

  sub_1DACB71E4();
  sub_1DACB71F4();
  sub_1DACB71E4();
  v2 = sub_1DACB8C74();
  v3 = sub_1DACB98F4();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 264);
    v6 = *(v0 + 216);
    v5 = *(v0 + 224);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v114[0] = v8;
    *v7 = 136315394;
    sub_1DACB71E4();
    v9 = sub_1DAA7ABE4(v6, v5, v114);

    *(v7 + 4) = v9;
    *(v7 + 12) = 2080;
    *(v0 + 120) = sub_1DAB7B61C(v1);
    sub_1DAA61540(0, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1DAA587CC();
    v10 = sub_1DACB9214();
    v12 = v11;

    v13 = sub_1DAA7ABE4(v10, v12, v114);

    *(v7 + 14) = v13;
    _os_log_impl(&dword_1DAA3F000, v2, v3, "Successfully found stocks for symbol entities matching property query=%s, results=[%s]", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E1278C00](v8, -1, -1);
    MEMORY[0x1E1278C00](v7, -1, -1);
  }

  else
  {

    v4 = *(v0 + 264);
  }

  v15 = *(v0 + 232);
  v14 = *(v0 + 240);
  sub_1DACB71F4();
  v16 = sub_1DAB82B40(v15, v14, v1);
  sub_1DACB71E4();

  sub_1DACB71E4();
  sub_1DACB71F4();
  sub_1DACB71F4();
  v17 = sub_1DACB8C74();
  v18 = sub_1DACB98F4();

  if (os_log_type_enabled(v17, v18))
  {
    v20 = *(v0 + 216);
    v19 = *(v0 + 224);
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v114[0] = v22;
    *v21 = 136315394;
    sub_1DACB71E4();
    v23 = sub_1DAA7ABE4(v20, v19, v114);

    *(v21 + 4) = v23;
    *(v21 + 12) = 2080;
    *(v0 + 112) = sub_1DAB7B61C(v16);
    sub_1DAA61540(0, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1DAA587CC();
    v24 = sub_1DACB9214();
    v26 = v25;

    v27 = sub_1DAA7ABE4(v24, v26, v114);

    *(v21 + 14) = v27;
    _os_log_impl(&dword_1DAA3F000, v17, v18, "Filtered stocks for symbol entities matching property query=%s, filtered=[%s]", v21, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E1278C00](v22, -1, -1);
    MEMORY[0x1E1278C00](v21, -1, -1);
  }

  v28 = *(v0 + 200);

  if (!v28)
  {
    v30 = sub_1DACB8C74();
    v31 = sub_1DACB98F4();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_1DAA3F000, v30, v31, "No existing result for symbol property queries, so storing first results", v32, 2u);
      MEMORY[0x1E1278C00](v32, -1, -1);
    }

    goto LABEL_21;
  }

  v29 = *(v0 + 200);
  if (*(v0 + 288))
  {
    v16 = sub_1DAB01D3C(v16, v29);
    sub_1DACB71E4();
  }

  else
  {
    v33 = sub_1DAB0387C(v16, v29);

    sub_1DACB71F4();
    v16 = v33;
  }

  sub_1DACB71E4();
  v34 = sub_1DACB8C74();
  v35 = sub_1DACB98F4();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v114[0] = v37;
    *v36 = 136315394;
    v38 = sub_1DAB7B61C(v16);

    *(v0 + 104) = v38;
    sub_1DAA61540(0, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
    sub_1DAA587CC();
    v39 = sub_1DACB9214();
    v41 = v40;

    v42 = sub_1DAA7ABE4(v39, v41, v114);

    *(v36 + 4) = v42;
    *(v36 + 12) = 2080;
    v43 = sub_1DACB72E4();
    v44 = (v43 & 1) == 0;
    if (v43)
    {
      v45 = 6581857;
    }

    else
    {
      v45 = 29295;
    }

    if (v44)
    {
      v46 = 0xE200000000000000;
    }

    else
    {
      v46 = 0xE300000000000000;
    }

    v47 = sub_1DAA7ABE4(v45, v46, v114);

    *(v36 + 14) = v47;
    _os_log_impl(&dword_1DAA3F000, v34, v35, "Combined stock query results into accumulated results=[%s], comparatorMode=%s", v36, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E1278C00](v37, -1, -1);
    MEMORY[0x1E1278C00](v36, -1, -1);

LABEL_21:

    goto LABEL_23;
  }

LABEL_23:
  v48 = *(v0 + 208) + 1;
  if (v48 == *(v0 + 192))
  {
    sub_1DACB71E4();
    v49 = sub_1DACB8C74();
    v50 = sub_1DACB9914();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v114[0] = v52;
      *v51 = 136315138;
      *(v0 + 96) = sub_1DAB7B61C(v16);
      sub_1DAA61540(0, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
      sub_1DAA587CC();
      v53 = sub_1DACB9214();
      v55 = v54;

      v56 = sub_1DAA7ABE4(v53, v55, v114);

      *(v51 + 4) = v56;
      _os_log_impl(&dword_1DAA3F000, v49, v50, "Successfully applied all queries, found stocks=[%s]", v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v52);
      MEMORY[0x1E1278C00](v52, -1, -1);
      MEMORY[0x1E1278C00](v51, -1, -1);
    }

    v57 = *(v16 + 16);
    if (v57)
    {
      v111 = v4;
      v58 = sub_1DAB02C90(v57, 0);
      v59 = sub_1DAB05AA0(v114, v58 + 32, v57, v16);
      v60 = v114[0];
      v61 = v114[4];
      sub_1DACB71E4();
      sub_1DAA54B38(v60);
      if (v59 != v57)
      {
        __break(1u);
        goto LABEL_64;
      }

      v4 = v111;
    }

    else
    {
      v58 = MEMORY[0x1E69E7CC0];
    }

    v73 = *(v0 + 144);
    v114[0] = v58;
    sub_1DACB71E4();
    sub_1DACB71F4();
    sub_1DAC5F0F4(v114, v73);
    if (v4)
    {
    }

    v74 = v114[0];
    sub_1DACB71F4();
    v75 = sub_1DACB8C74();
    v76 = sub_1DACB9914();

    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v79 = v78;
      v115 = v78;
      *v77 = 136315138;
      v80 = *(v74 + 2);
      v81 = MEMORY[0x1E69E7CC0];
      if (v80)
      {
        v108 = v78;
        v109 = v77;
        v110 = v76;
        v112 = v75;
        v114[0] = MEMORY[0x1E69E7CC0];
        sub_1DAA5859C(0, v80, 0);
        v81 = v114[0];
        v82 = *(v114[0] + 2);
        v83 = 16 * v82;
        v113 = v74;
        v84 = (v74 + 40);
        do
        {
          v85 = *(v84 - 1);
          v86 = *v84;
          v114[0] = v81;
          v87 = v82 + 1;
          v88 = *(v81 + 3);
          sub_1DACB71E4();
          if (v82 >= v88 >> 1)
          {
            sub_1DAA5859C((v88 > 1), v87, 1);
            v81 = v114[0];
          }

          *(v81 + 2) = v87;
          v89 = &v81[v83];
          *(v89 + 4) = v85;
          *(v89 + 5) = v86;
          v83 += 16;
          v84 += 17;
          ++v82;
          --v80;
        }

        while (v80);
        v75 = v112;
        v74 = v113;
        v76 = v110;
        v79 = v108;
        v77 = v109;
      }

      *(v0 + 88) = v81;
      sub_1DAA61540(0, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
      sub_1DAA587CC();
      v90 = sub_1DACB9214();
      v92 = v91;

      v93 = sub_1DAA7ABE4(v90, v92, &v115);

      *(v77 + 4) = v93;
      _os_log_impl(&dword_1DAA3F000, v75, v76, "Applied sorts to sortedStocks=[%s]", v77, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v79);
      MEMORY[0x1E1278C00](v79, -1, -1);
      MEMORY[0x1E1278C00](v77, -1, -1);
    }

    if (*(v0 + 289))
    {
      goto LABEL_60;
    }

    v58 = sub_1DAB01EB0(*(v0 + 152), v74);
    if ((v96 & 1) == 0)
    {
      goto LABEL_49;
    }

    v61 = v96;
    v16 = v95;
    v59 = v94;
    sub_1DACBA194();
    swift_unknownObjectRetain_n();
    v98 = swift_dynamicCastClass();
    if (!v98)
    {
      swift_unknownObjectRelease();
      v98 = MEMORY[0x1E69E7CC0];
    }

    v99 = *(v98 + 16);

    if (!__OFSUB__(v61 >> 1, v16))
    {
      if (v99 == (v61 >> 1) - v16)
      {
        v74 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        if (v74)
        {
LABEL_57:
          v100 = sub_1DACB8C74();
          v101 = sub_1DACB9914();
          if (os_log_type_enabled(v100, v101))
          {
            v102 = *(v0 + 152);
            v103 = swift_slowAlloc();
            *v103 = 134217984;
            *(v103 + 4) = v102;
            _os_log_impl(&dword_1DAA3F000, v100, v101, "Limited results down to limit=%ld", v103, 0xCu);
            MEMORY[0x1E1278C00](v103, -1, -1);
          }

LABEL_60:
          *(v0 + 272) = v74;
          v104 = *(v0 + 176);
          *(v0 + 56) = *(v0 + 160);
          *(v0 + 72) = v104;
          v105 = swift_task_alloc();
          *(v0 + 280) = v105;
          *v105 = v0;
          v105[1] = sub_1DAB819E8;
          v106 = *(v0 + 128);

          return sub_1DAC5975C(v106, v74);
        }

        v74 = MEMORY[0x1E69E7CC0];
LABEL_56:
        swift_unknownObjectRelease();
        goto LABEL_57;
      }

      goto LABEL_65;
    }

LABEL_64:
    __break(1u);
LABEL_65:
    swift_unknownObjectRelease();
    v96 = v61;
    v95 = v16;
    v94 = v59;
LABEL_49:
    sub_1DAB03214(v58, v94, v95, v96);
    v74 = v97;
    goto LABEL_56;
  }

  *(v0 + 200) = v16;
  *(v0 + 208) = v48;
  v62 = (*(v0 + 136) + 32 * v48);
  v63 = v62[4];
  *(v0 + 216) = v63;
  v64 = v62[5];
  *(v0 + 224) = v64;
  *(v0 + 232) = v62[6];
  *(v0 + 240) = v62[7];
  swift_bridgeObjectRetain_n();
  swift_retain_n();
  v65 = sub_1DACB8C74();
  v66 = sub_1DACB98F4();

  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v114[0] = v68;
    *v67 = 136315138;
    sub_1DACB71E4();
    v69 = sub_1DAA7ABE4(v63, v64, v114);

    *(v67 + 4) = v69;
    _os_log_impl(&dword_1DAA3F000, v65, v66, "Querying stocks for symbol entities matching property query=%s", v67, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v68);
    MEMORY[0x1E1278C00](v68, -1, -1);
    MEMORY[0x1E1278C00](v67, -1, -1);
  }

  sub_1DACB6D24();
  v71 = *(v0 + 40);
  v70 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v71);
  *(v0 + 248) = sub_1DAAEA918(v63, v64, v71, v70);
  v72 = swift_task_alloc();
  *(v0 + 256) = v72;
  *v72 = v0;
  v72[1] = sub_1DAC5BCCC;

  return MEMORY[0x1EEE44EE0](v0 + 80);
}

uint64_t sub_1DAC5CD48@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a5@<X8>)
{
  if (*a1 == -1)
  {
    v7 = a2(0);
  }

  else
  {
    swift_once();
    v7 = a2(0);
  }

  v8 = v7;
  v9 = __swift_project_value_buffer(v7, a3);
  v10 = *(*(v8 - 8) + 16);

  return v10(a5, v9, v8);
}

uint64_t sub_1DAC5CDF4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1DAA9A3AC;

  return SymbolQuery.entities(matching:mode:sortedBy:limit:)(a1, a2, a3 & 1, a4, a5, a6 & 1);
}

uint64_t sub_1DAC5CECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 80);
  v5 = *(a1 + 112);
  v27 = *(a1 + 96);
  v28 = v5;
  v6 = *(a1 + 16);
  v7 = *(a1 + 48);
  v23 = *(a1 + 32);
  v24 = v7;
  v8 = *(a1 + 48);
  v9 = *(a1 + 80);
  v25 = *(a1 + 64);
  v26 = v9;
  v10 = *(a1 + 16);
  v22[0] = *a1;
  v22[1] = v10;
  v19 = v27;
  v20 = *(a1 + 112);
  v15 = v23;
  v16 = v8;
  v17 = v25;
  v18 = v4;
  v29 = *(a1 + 128);
  v21 = *(a1 + 128);
  v13 = v22[0];
  v14 = v6;
  sub_1DAA806E4(v22, v30);
  swift_getAtKeyPath();
  v30[6] = v19;
  v30[7] = v20;
  v31 = v21;
  v30[2] = v15;
  v30[3] = v16;
  v30[4] = v17;
  v30[5] = v18;
  v30[0] = v13;
  v30[1] = v14;
  sub_1DAA9B1C8(v30);
  sub_1DACB93A4();

  sub_1DACB93A4();
  sub_1DAA642D8();
  v11 = sub_1DACB9B64();

  return v11 & 1;
}

uint64_t sub_1DAC5D01C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 80);
  v3 = *(a1 + 112);
  v29 = *(a1 + 96);
  v30 = v3;
  v4 = *(a1 + 16);
  v5 = *(a1 + 48);
  v25 = *(a1 + 32);
  v26 = v5;
  v6 = *(a1 + 48);
  v7 = *(a1 + 80);
  v27 = *(a1 + 64);
  v28 = v7;
  v8 = *(a1 + 16);
  v24[0] = *a1;
  v24[1] = v8;
  v21 = v29;
  v22 = *(a1 + 112);
  v17 = v25;
  v18 = v6;
  v19 = v27;
  v20 = v2;
  v31 = *(a1 + 128);
  v23 = *(a1 + 128);
  v15 = v24[0];
  v16 = v4;
  sub_1DAA806E4(v24, v32);
  swift_getAtKeyPath();
  v32[6] = v21;
  v32[7] = v22;
  v33 = v23;
  v32[2] = v17;
  v32[3] = v18;
  v32[4] = v19;
  v32[5] = v20;
  v32[0] = v15;
  v32[1] = v16;
  sub_1DAA9B1C8(v32);
  v9 = sub_1DACB93A4();
  v11 = v10;

  if (v9 == sub_1DACB93A4() && v11 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_1DACBA174();
  }

  return v13 & 1;
}

uint64_t sub_1DAC5D170(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SymbolEntity(0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v55 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v56 = &v48 - v9;
  sub_1DAC5F3FC(0, &qword_1ECBE96B8, &unk_1EE11EF70, &protocol conformance descriptor for SymbolEntity, MEMORY[0x1E695A128]);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v48 - v13;
  v15 = *(a1 + 112);
  v76 = *(a1 + 96);
  v77 = v15;
  v78 = *(a1 + 128);
  v16 = *(a1 + 48);
  v72 = *(a1 + 32);
  v73 = v16;
  v17 = *(a1 + 80);
  v74 = *(a1 + 64);
  v75 = v17;
  v18 = *(a1 + 16);
  v70 = *a1;
  v71 = v18;
  v19 = *(a2 + 112);
  v85 = *(a2 + 96);
  v86 = v19;
  v87 = *(a2 + 128);
  v20 = *(a2 + 48);
  v81 = *(a2 + 32);
  v82 = v20;
  v21 = *(a2 + 80);
  v83 = *(a2 + 64);
  v84 = v21;
  v22 = *(a2 + 16);
  v79 = *a2;
  v80 = v22;
  v49 = a3;
  v23 = *(a3 + 16);
  if (!v23)
  {
    return 1;
  }

  v25 = *(v12 + 16);
  v24 = v12 + 16;
  v52 = (v24 - 8);
  v53 = v25;
  v26 = v49 + ((*(v24 + 64) + 32) & ~*(v24 + 64));
  v54 = v24;
  v50 = *(v24 + 56);
  v51 = v11;
  v27 = 1 - v23;
  v25(v14, v26, v11);
  while (1)
  {
    v67 = v76;
    v68 = v77;
    v69 = v78;
    v63 = v72;
    v64 = v73;
    v65 = v74;
    v66 = v75;
    v61 = v70;
    v62 = v71;
    sub_1DAA806E4(&v70, v60);
    v29 = v56;
    SymbolEntity.init(from:)(&v61, v56);
    sub_1DACB6F74();
    swift_getAtPartialKeyPath();

    sub_1DAAD5434(v29);
    sub_1DAA9A574(0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    v30 = v11;
    v31 = v60[0];
    v67 = v85;
    v68 = v86;
    v69 = v87;
    v63 = v81;
    v64 = v82;
    v65 = v83;
    v66 = v84;
    v61 = v79;
    v62 = v80;
    sub_1DAA806E4(&v79, v60);
    v32 = v55;
    SymbolEntity.init(from:)(&v61, v55);
    sub_1DACB6F74();
    swift_getAtPartialKeyPath();

    sub_1DAAD5434(v32);
    if ((swift_dynamicCast() & 1) == 0)
    {

      v11 = v30;
      break;
    }

    v88 = v27;
    v57 = v26;
    v33 = v60[0];
    v59 = v31;
    sub_1DACB6ED4();
    v34 = v61;
    v58 = v33;
    sub_1DACB6ED4();
    v35 = v61;
    if (sub_1DACB6F84())
    {
      if (v34 == v35)
      {
        goto LABEL_3;
      }
    }

    else if (v35 == v34)
    {
LABEL_3:

      v11 = v51;
      (*v52)(v14, v51);
      v28 = v88;
      if (!v88)
      {
        return 1;
      }

      goto LABEL_4;
    }

    v36 = sub_1DACBA174();

    v11 = v51;
    (*v52)(v14, v51);
    v28 = v88;
    if ((v36 & 1) != 0 || !v88)
    {
      return 1;
    }

LABEL_4:
    v26 = v57 + v50;
    v27 = v28 + 1;
    if (v27 == 1)
    {
      __break(1u);
      goto LABEL_22;
    }

    v53(v14, v26, v11);
  }

  v26 = v49;
  if (qword_1EE11D388 == -1)
  {
    goto LABEL_17;
  }

LABEL_22:
  swift_once();
LABEL_17:
  v37 = sub_1DACB8C94();
  __swift_project_value_buffer(v37, qword_1EE11D390);
  sub_1DACB71E4();
  v38 = sub_1DACB8C74();
  v39 = sub_1DACB9904();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = v14;
    v42 = swift_slowAlloc();
    *&v61 = v42;
    *v40 = 136315138;
    v43 = MEMORY[0x1E1277130](v26, v11);
    v45 = sub_1DAA7ABE4(v43, v44, &v61);

    *(v40 + 4) = v45;
    _os_log_impl(&dword_1DAA3F000, v38, v39, "Symbol sorts unexpectedly contained a parameter which is not a String. sorts=%s", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v42);
    v46 = v42;
    v14 = v41;
    MEMORY[0x1E1278C00](v46, -1, -1);
    MEMORY[0x1E1278C00](v40, -1, -1);
  }

  MEMORY[0x1E1275DD0]("Encountered a SymbolEntity value in WatchlistQuery which is not a String. We need to add explicit support for this in the property queries.", 139, 2, MEMORY[0x1E69E7CC0]);
  (*v52)(v14, v11);
  return 1;
}

void sub_1DAC5D7B0(uint64_t a1)
{
  if (!qword_1ECBE9698)
  {
    type metadata accessor for SymbolEntity(255);
    sub_1DAC5F378(&unk_1EE11EF70, type metadata accessor for SymbolEntity, &protocol conformance descriptor for SymbolEntity);
    v1 = sub_1DACB71A4();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECBE9698);
    }
  }
}

uint64_t sub_1DAC5D888(char *__dst, char *__src, char *a3, char *a4, uint64_t a5)
{
  v6 = v5;
  v8 = a4;
  v9 = a3;
  v10 = __src;
  v11 = __src - __dst;
  v12 = (__src - __dst) / 136;
  v13 = a3 - __src;
  v14 = (a3 - __src) / 136;
  if (v12 < v14)
  {
    v15 = __dst;
    if (a4 != __dst || &__dst[136 * v12] <= a4)
    {
      memmove(a4, __dst, 136 * v12);
    }

    v16 = (v8 + 136 * v12);
    if (v11 < 136)
    {
LABEL_6:
      v10 = v15;
      goto LABEL_50;
    }

    while (1)
    {
      if (v10 >= v9)
      {
        goto LABEL_6;
      }

      v98 = *v10;
      v19 = *(v10 + 1);
      v20 = *(v10 + 2);
      v21 = *(v10 + 4);
      v101 = *(v10 + 3);
      v102 = v21;
      v99 = v19;
      v100 = v20;
      v22 = *(v10 + 5);
      v23 = *(v10 + 6);
      v24 = *(v10 + 7);
      v106 = *(v10 + 16);
      v104 = v23;
      v105 = v24;
      v103 = v22;
      memmove(&__dsta, v10, 0x88uLL);
      v107 = *v8;
      v25 = *(v8 + 16);
      v26 = *(v8 + 32);
      v27 = *(v8 + 64);
      v110 = *(v8 + 48);
      v111 = v27;
      v108 = v25;
      v109 = v26;
      v28 = *(v8 + 80);
      v29 = *(v8 + 96);
      v30 = *(v8 + 112);
      v115 = *(v8 + 128);
      v113 = v29;
      v114 = v30;
      v112 = v28;
      memmove(&v80, v8, 0x88uLL);
      sub_1DAA806E4(&v98, &v71);
      sub_1DAA806E4(&v107, &v71);
      v31 = sub_1DAC5D170(&__dsta, &v80, a5);
      if (v5)
      {
        v68 = v86;
        v69 = v87;
        v70 = v88;
        v64 = v82;
        v65 = v83;
        v66 = v84;
        v67 = v85;
        v62 = v80;
        v63 = v81;
        sub_1DAA9B1C8(&v62);
        v77 = v95;
        v78 = v96;
        v79 = v97;
        v73 = v91;
        v74 = v92;
        v75 = v93;
        v76 = v94;
        v71 = __dsta;
        v72 = v90;
        sub_1DAA9B1C8(&v71);
        v56 = &v16[-v8] / 136;
        if (v15 < v8 || v15 >= v8 + 136 * v56 || v15 != v8)
        {
          v57 = 136 * v56;
          v58 = v15;
          goto LABEL_54;
        }

        goto LABEL_55;
      }

      v32 = v31;
      v68 = v86;
      v69 = v87;
      v70 = v88;
      v64 = v82;
      v65 = v83;
      v66 = v84;
      v67 = v85;
      v62 = v80;
      v63 = v81;
      sub_1DAA9B1C8(&v62);
      v77 = v95;
      v78 = v96;
      v79 = v97;
      v73 = v91;
      v74 = v92;
      v75 = v93;
      v76 = v94;
      v71 = __dsta;
      v72 = v90;
      sub_1DAA9B1C8(&v71);
      if (v32)
      {
        break;
      }

      v17 = v8;
      v18 = v15 == v8;
      v8 += 136;
      if (!v18)
      {
        goto LABEL_8;
      }

LABEL_9:
      v15 += 136;
      if (v8 >= v16)
      {
        goto LABEL_6;
      }
    }

    v17 = v10;
    v18 = v15 == v10;
    v10 += 136;
    if (v18)
    {
      goto LABEL_9;
    }

LABEL_8:
    memmove(v15, v17, 0x88uLL);
    goto LABEL_9;
  }

  if (a4 != __src || &__src[136 * v14] <= a4)
  {
    memmove(a4, __src, 136 * v14);
  }

  v16 = (v8 + 136 * v14);
  if (v13 < 136 || v10 <= __dst)
  {
LABEL_50:
    v59 = &v16[-v8] / 136;
    if (v10 < v8 || v10 >= v8 + 136 * v59 || v10 != v8)
    {
      v57 = 136 * v59;
      v58 = v10;
LABEL_54:
      memmove(v58, v8, v57);
    }

    goto LABEL_55;
  }

  v33 = -v8;
  v116 = a5;
LABEL_22:
  v34 = v10 - 136;
  v35 = &v16[v33];
  v9 -= 136;
  v36 = v16;
  while (1)
  {
    v16 = v36;
    v36 -= 136;
    v98 = *(v16 - 136);
    v37 = *(v16 - 120);
    v38 = *(v16 - 104);
    v39 = *(v16 - 72);
    v101 = *(v16 - 88);
    v102 = v39;
    v99 = v37;
    v100 = v38;
    v40 = *(v16 - 56);
    v41 = *(v16 - 40);
    v42 = *(v16 - 24);
    v106 = *(v16 - 1);
    v104 = v41;
    v105 = v42;
    v103 = v40;
    memmove(&__dsta, v36, 0x88uLL);
    v43 = *(v10 - 56);
    v44 = *(v10 - 24);
    v113 = *(v10 - 40);
    v114 = v44;
    v45 = *(v10 - 120);
    v46 = *(v10 - 88);
    v109 = *(v10 - 104);
    v110 = v46;
    v47 = *(v10 - 88);
    v48 = *(v10 - 56);
    v111 = *(v10 - 72);
    v112 = v48;
    v49 = *(v10 - 120);
    v107 = *v34;
    v108 = v49;
    v50 = *(v10 - 24);
    v86 = v113;
    v87 = v50;
    v82 = v109;
    v83 = v47;
    v84 = v111;
    v85 = v43;
    v115 = *(v10 - 1);
    v88 = *(v10 - 1);
    v80 = v107;
    v81 = v45;
    sub_1DAA806E4(&v98, &v71);
    sub_1DAA806E4(&v107, &v71);
    v51 = sub_1DAC5D170(&__dsta, &v80, a5);
    if (v6)
    {
      break;
    }

    v52 = v51;
    v68 = v86;
    v69 = v87;
    v70 = v88;
    v64 = v82;
    v65 = v83;
    v66 = v84;
    v67 = v85;
    v62 = v80;
    v63 = v81;
    sub_1DAA9B1C8(&v62);
    v77 = v95;
    v78 = v96;
    v79 = v97;
    v73 = v91;
    v74 = v92;
    v75 = v93;
    v76 = v94;
    v71 = __dsta;
    v72 = v90;
    sub_1DAA9B1C8(&v71);
    v53 = v9 + 136;
    if (v52)
    {
      if (v53 < v10 || v9 >= v10)
      {
        memmove(v9, v10 - 136, 0x88uLL);
        v6 = 0;
        v54 = __dst;
      }

      else
      {
        v54 = __dst;
        if (v53 != v10)
        {
          memmove(v9, v10 - 136, 0x88uLL);
        }

        v6 = 0;
      }

      a5 = v116;
      if (v16 <= v8 || (v10 -= 136, v33 = -v8, v34 <= v54))
      {
        v10 = v34;
        goto LABEL_50;
      }

      goto LABEL_22;
    }

    if (v53 < v16 || v9 >= v16)
    {
      memmove(v9, v36, 0x88uLL);
      v6 = 0;
    }

    else
    {
      v6 = 0;
      if (v53 != v16)
      {
        memmove(v9, v36, 0x88uLL);
      }
    }

    a5 = v116;
    v35 -= 136;
    v9 -= 136;
    if (v36 <= v8)
    {
      v16 = v36;
      goto LABEL_50;
    }
  }

  v68 = v86;
  v69 = v87;
  v70 = v88;
  v64 = v82;
  v65 = v83;
  v66 = v84;
  v67 = v85;
  v62 = v80;
  v63 = v81;
  sub_1DAA9B1C8(&v62);
  v77 = v95;
  v78 = v96;
  v79 = v97;
  v73 = v91;
  v74 = v92;
  v75 = v93;
  v76 = v94;
  v71 = __dsta;
  v72 = v90;
  sub_1DAA9B1C8(&v71);
  v55 = v35 / 136;
  if (v10 < v8 || v10 >= v8 + 136 * v55)
  {
    memmove(v10, v8, 136 * v55);

    return 1;
  }

  if (v10 != v8)
  {
    memmove(v10, v8, 136 * v55);
  }

LABEL_55:

  return 1;
}

uint64_t sub_1DAC5DF2C(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v8 = a3[1];
  swift_bridgeObjectRetain_n();
  if (v8 < 1)
  {
    v10 = MEMORY[0x1E69E7CC0];
LABEL_94:
    v169 = *a1;
    if (*a1)
    {
      swift_bridgeObjectRetain_n();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_125;
      }

      goto LABEL_96;
    }

    goto LABEL_134;
  }

  v9 = 0;
  v10 = MEMORY[0x1E69E7CC0];
  v164 = a4;
  while (1)
  {
    v11 = v9;
    v12 = (v9 + 1);
    if ((v9 + 1) >= v8)
    {
      v62 = (v9 + 1);
    }

    else
    {
      v13 = *a3;
      v14 = *a3 + 136 * v12;
      v241 = *v14;
      v15 = *(v14 + 16);
      v16 = *(v14 + 32);
      v17 = *(v14 + 48);
      v245 = *(v14 + 64);
      v244 = v17;
      v243 = v16;
      v242 = v15;
      v18 = *(v14 + 80);
      v19 = *(v14 + 96);
      v20 = *(v14 + 112);
      v249 = *(v14 + 128);
      v248 = v20;
      v247 = v19;
      v246 = v18;
      v21 = *(v14 + 112);
      v238 = *(v14 + 96);
      v239 = v21;
      v240 = *(v14 + 128);
      v22 = *(v14 + 48);
      v234 = *(v14 + 32);
      v235 = v22;
      v23 = *(v14 + 64);
      v237 = *(v14 + 80);
      v236 = v23;
      v24 = *v14;
      v233 = *(v14 + 16);
      v232 = v24;
      v25 = (v13 + 136 * v11);
      v250 = *v25;
      v26 = v25[1];
      v27 = v25[2];
      v28 = v25[4];
      v253 = v25[3];
      v254 = v28;
      v251 = v26;
      v252 = v27;
      v29 = v25[5];
      v30 = v25[6];
      v31 = v25[7];
      v258 = *(v25 + 16);
      v256 = v30;
      v257 = v31;
      v255 = v29;
      v32 = v25[7];
      v229 = v25[6];
      v230 = v32;
      v231 = *(v25 + 16);
      v33 = v25[3];
      v225 = v25[2];
      v226 = v33;
      v34 = v25[4];
      v228 = v25[5];
      v227 = v34;
      v35 = *v25;
      v224 = v25[1];
      v223 = v35;
      sub_1DAA806E4(&v241, &v214);
      sub_1DAA806E4(&v250, &v214);
      v36 = sub_1DAC5D170(&v232, &v223, a5);
      if (v6)
      {
LABEL_105:
        v211 = v229;
        v212 = v230;
        v213 = v231;
        v207 = v225;
        v208 = v226;
        v209 = v227;
        v210 = v228;
        v205 = v223;
        v206 = v224;
        sub_1DAA9B1C8(&v205);
        v220 = v238;
        v221 = v239;
        v222 = v240;
        v216 = v234;
        v217 = v235;
        v219 = v237;
        v218 = v236;
        v215 = v233;
        v214 = v232;
        sub_1DAA9B1C8(&v214);
LABEL_106:
        swift_bridgeObjectRelease_n();
      }

      v37 = v36;
      v211 = v229;
      v212 = v230;
      v213 = v231;
      v207 = v225;
      v208 = v226;
      v209 = v227;
      v210 = v228;
      v205 = v223;
      v206 = v224;
      sub_1DAA9B1C8(&v205);
      v220 = v238;
      v221 = v239;
      v222 = v240;
      v216 = v234;
      v217 = v235;
      v219 = v237;
      v218 = v236;
      v215 = v233;
      v214 = v232;
      sub_1DAA9B1C8(&v214);
      v38 = v11 + 2;
      if ((v11 + 2) >= v8)
      {
        v62 = (v11 + 2);
        if (v37)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v169 = v11;
        v39 = v13 + 136 * v11 + 272;
        while (1)
        {
          v40 = v38;
          v194[0] = *v39;
          v41 = *(v39 + 16);
          v42 = *(v39 + 32);
          v43 = *(v39 + 64);
          v194[3] = *(v39 + 48);
          v194[4] = v43;
          v194[1] = v41;
          v194[2] = v42;
          v44 = *(v39 + 80);
          v45 = *(v39 + 96);
          v46 = *(v39 + 112);
          v195 = *(v39 + 128);
          v194[6] = v45;
          v194[7] = v46;
          v194[5] = v44;
          v47 = *(v39 + 112);
          v191 = *(v39 + 96);
          v192 = v47;
          v193 = *(v39 + 128);
          v48 = *(v39 + 48);
          v187 = *(v39 + 32);
          v188 = v48;
          v49 = *(v39 + 80);
          v189 = *(v39 + 64);
          v190 = v49;
          v50 = *(v39 + 16);
          v185 = *v39;
          v186 = v50;
          v196 = *(v39 - 136);
          v51 = *(v39 - 120);
          v52 = *(v39 - 104);
          v53 = *(v39 - 72);
          v199 = *(v39 - 88);
          v200 = v53;
          v197 = v51;
          v198 = v52;
          v54 = *(v39 - 56);
          v55 = *(v39 - 40);
          v56 = *(v39 - 24);
          v204 = *(v39 - 8);
          v202 = v55;
          v203 = v56;
          v201 = v54;
          v57 = *(v39 - 56);
          v58 = *(v39 - 24);
          v182 = *(v39 - 40);
          v183 = v58;
          v184 = *(v39 - 8);
          v59 = *(v39 - 120);
          v60 = *(v39 - 88);
          v178 = *(v39 - 104);
          v179 = v60;
          v180 = *(v39 - 72);
          v181 = v57;
          v176 = *(v39 - 136);
          v177 = v59;
          sub_1DAA806E4(v194, v174);
          sub_1DAA806E4(&v196, v174);
          v61 = sub_1DAC5D170(&v185, &v176, a5);
          v172[6] = v182;
          v172[7] = v183;
          v173 = v184;
          v172[2] = v178;
          v172[3] = v179;
          v172[4] = v180;
          v172[5] = v181;
          v172[0] = v176;
          v172[1] = v177;
          sub_1DAA9B1C8(v172);
          v174[6] = v191;
          v174[7] = v192;
          v175 = v193;
          v174[2] = v187;
          v174[3] = v188;
          v174[4] = v189;
          v174[5] = v190;
          v174[0] = v185;
          v174[1] = v186;
          sub_1DAA9B1C8(v174);
          if ((v37 ^ v61))
          {
            break;
          }

          v38 = (v40 + 1);
          v39 += 136;
          if (v8 == v40 + 1)
          {
            v12 = v40;
            v62 = v8;
            goto LABEL_15;
          }
        }

        v62 = v40;
        v12 = v40 - 1;
LABEL_15:
        v11 = v169;
        if (v37)
        {
LABEL_16:
          if (v62 < v11)
          {
            goto LABEL_128;
          }

          if (v11 <= v12)
          {
            v63 = v11;
            v64 = 136 * v62 - 136;
            v65 = 136 * v63;
            v166 = v62;
            v66 = v63;
            do
            {
              if (v63 != --v62)
              {
                v67 = *a3;
                if (!*a3)
                {
                  goto LABEL_132;
                }

                v68 = v67 + v64;
                v201 = *(v67 + v65 + 80);
                v202 = *(v67 + v65 + 96);
                v203 = *(v67 + v65 + 112);
                v204 = *(v67 + v65 + 128);
                v197 = *(v67 + v65 + 16);
                v198 = *(v67 + v65 + 32);
                v199 = *(v67 + v65 + 48);
                v200 = *(v67 + v65 + 64);
                v196 = *(v67 + v65);
                memmove((v67 + v65), (v67 + v64), 0x88uLL);
                *(v68 + 80) = v201;
                *(v68 + 96) = v202;
                *(v68 + 112) = v203;
                *(v68 + 128) = v204;
                *(v68 + 16) = v197;
                *(v68 + 32) = v198;
                *(v68 + 48) = v199;
                *(v68 + 64) = v200;
                *v68 = v196;
              }

              ++v63;
              v64 -= 136;
              v65 += 136;
            }

            while (v63 < v62);
            v62 = v166;
            v11 = v66;
          }
        }
      }
    }

    v69 = a3[1];
    if (v62 >= v69)
    {
      goto LABEL_137;
    }

    if (__OFSUB__(v62, v11))
    {
      goto LABEL_124;
    }

    if (v62 - v11 >= a4)
    {
      goto LABEL_137;
    }

    if (__OFADD__(v11, a4))
    {
      __break(1u);
LABEL_127:
      __break(1u);
LABEL_128:
      __break(1u);
LABEL_129:
      swift_bridgeObjectRelease_n();
      __break(1u);
LABEL_130:
      swift_bridgeObjectRelease_n();
      __break(1u);
      goto LABEL_131;
    }

    if (&v11[a4] >= v69)
    {
      v70 = a3[1];
    }

    else
    {
      v70 = &v11[a4];
    }

    if (v70 < v11)
    {
      goto LABEL_127;
    }

    if (v62 == v70)
    {
LABEL_137:
      if (v62 < v11)
      {
        goto LABEL_123;
      }
    }

    else
    {
      v121 = *a3;
      v122 = *a3 + 136 * v62;
      v123 = &v11[-v62 + 1];
      do
      {
        v168 = v62;
        v169 = v123;
        v124 = v123;
        v125 = v122;
        while (1)
        {
          v241 = *v122;
          v126 = *(v122 + 16);
          v127 = *(v122 + 32);
          v128 = *(v122 + 48);
          v245 = *(v122 + 64);
          v244 = v128;
          v243 = v127;
          v242 = v126;
          v129 = *(v122 + 80);
          v130 = *(v122 + 96);
          v131 = *(v122 + 112);
          v249 = *(v122 + 128);
          v248 = v131;
          v247 = v130;
          v246 = v129;
          v132 = *(v122 + 112);
          v238 = *(v122 + 96);
          v239 = v132;
          v240 = *(v122 + 128);
          v133 = *(v122 + 48);
          v234 = *(v122 + 32);
          v235 = v133;
          v134 = *(v122 + 64);
          v237 = *(v122 + 80);
          v236 = v134;
          v135 = *v122;
          v233 = *(v122 + 16);
          v232 = v135;
          v250 = *(v122 - 136);
          v136 = *(v122 - 120);
          v137 = *(v122 - 104);
          v138 = *(v122 - 72);
          v253 = *(v122 - 88);
          v254 = v138;
          v251 = v136;
          v252 = v137;
          v139 = *(v122 - 56);
          v140 = *(v122 - 40);
          v141 = *(v122 - 24);
          v258 = *(v122 - 8);
          v256 = v140;
          v257 = v141;
          v255 = v139;
          v142 = *(v122 - 56);
          v143 = *(v122 - 24);
          v229 = *(v122 - 40);
          v230 = v143;
          v231 = *(v122 - 8);
          v144 = *(v122 - 120);
          v145 = *(v122 - 88);
          v225 = *(v122 - 104);
          v226 = v145;
          v146 = *(v122 - 72);
          v228 = v142;
          v227 = v146;
          v147 = *(v122 - 136);
          v224 = v144;
          v223 = v147;
          sub_1DAA806E4(&v241, &v214);
          sub_1DAA806E4(&v250, &v214);
          v148 = sub_1DAC5D170(&v232, &v223, a5);
          if (v6)
          {
            goto LABEL_105;
          }

          v149 = v148;
          v211 = v229;
          v212 = v230;
          v213 = v231;
          v207 = v225;
          v208 = v226;
          v209 = v227;
          v210 = v228;
          v205 = v223;
          v206 = v224;
          sub_1DAA9B1C8(&v205);
          v220 = v238;
          v221 = v239;
          v222 = v240;
          v216 = v234;
          v217 = v235;
          v219 = v237;
          v218 = v236;
          v215 = v233;
          v214 = v232;
          sub_1DAA9B1C8(&v214);
          if ((v149 & 1) == 0)
          {
            break;
          }

          if (!v121)
          {
            goto LABEL_130;
          }

          v150 = v122 - 136;
          v201 = *(v122 + 80);
          v202 = *(v122 + 96);
          v203 = *(v122 + 112);
          v204 = *(v122 + 128);
          v197 = *(v122 + 16);
          v198 = *(v122 + 32);
          v199 = *(v122 + 48);
          v200 = *(v122 + 64);
          v196 = *v122;
          v151 = *(v122 - 56);
          *(v122 + 64) = *(v122 - 72);
          *(v122 + 80) = v151;
          v152 = *(v122 - 24);
          *(v122 + 96) = *(v122 - 40);
          *(v122 + 112) = v152;
          *(v122 + 128) = *(v122 - 8);
          v153 = *(v122 - 88);
          *(v122 + 32) = *(v122 - 104);
          *(v122 + 48) = v153;
          v154 = *(v122 - 120);
          *v122 = *(v122 - 136);
          *(v122 + 16) = v154;
          *(v150 + 64) = v200;
          *(v150 + 80) = v201;
          *(v150 + 96) = v202;
          *(v150 + 112) = v203;
          *(v150 + 128) = v204;
          *(v150 + 16) = v197;
          *(v150 + 32) = v198;
          *(v150 + 48) = v199;
          *v150 = v196;
          if (!v124)
          {
            break;
          }

          ++v124;
          v122 -= 136;
        }

        v62 = v168 + 1;
        v122 = v125 + 136;
        v123 = (v169 - 1);
      }

      while (v168 + 1 != v70);
      v62 = v70;
      if (v70 < v11)
      {
        goto LABEL_123;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_1DAADB818(0, *(v10 + 2) + 1, 1, v10);
    }

    v72 = *(v10 + 2);
    v71 = *(v10 + 3);
    v73 = v72 + 1;
    if (v72 >= v71 >> 1)
    {
      v10 = sub_1DAADB818((v71 > 1), v72 + 1, 1, v10);
    }

    *(v10 + 2) = v73;
    v74 = &v10[16 * v72];
    *(v74 + 4) = v11;
    *(v74 + 5) = v62;
    v167 = v62;
    v169 = *a1;
    if (!*a1)
    {
      goto LABEL_133;
    }

    if (v72)
    {
      break;
    }

LABEL_3:
    v8 = a3[1];
    v9 = v167;
    a4 = v164;
    if (v167 >= v8)
    {
      goto LABEL_94;
    }
  }

  while (1)
  {
    v75 = v73 - 1;
    if (v73 >= 4)
    {
      v80 = &v10[16 * v73 + 32];
      v81 = *(v80 - 64);
      v82 = *(v80 - 56);
      v86 = __OFSUB__(v82, v81);
      v83 = v82 - v81;
      if (v86)
      {
        goto LABEL_110;
      }

      v85 = *(v80 - 48);
      v84 = *(v80 - 40);
      v86 = __OFSUB__(v84, v85);
      v78 = v84 - v85;
      v79 = v86;
      if (v86)
      {
        goto LABEL_111;
      }

      v87 = &v10[16 * v73];
      v89 = *v87;
      v88 = *(v87 + 1);
      v86 = __OFSUB__(v88, v89);
      v90 = v88 - v89;
      if (v86)
      {
        goto LABEL_113;
      }

      v86 = __OFADD__(v78, v90);
      v91 = v78 + v90;
      if (v86)
      {
        goto LABEL_116;
      }

      if (v91 >= v83)
      {
        v109 = &v10[16 * v75 + 32];
        v111 = *v109;
        v110 = *(v109 + 1);
        v86 = __OFSUB__(v110, v111);
        v112 = v110 - v111;
        if (v86)
        {
          goto LABEL_122;
        }

        if (v78 < v112)
        {
          v75 = v73 - 2;
        }

        goto LABEL_74;
      }

      goto LABEL_53;
    }

    if (v73 == 3)
    {
      v76 = *(v10 + 4);
      v77 = *(v10 + 5);
      v86 = __OFSUB__(v77, v76);
      v78 = v77 - v76;
      v79 = v86;
LABEL_53:
      if (v79)
      {
        goto LABEL_112;
      }

      v92 = &v10[16 * v73];
      v94 = *v92;
      v93 = *(v92 + 1);
      v95 = __OFSUB__(v93, v94);
      v96 = v93 - v94;
      v97 = v95;
      if (v95)
      {
        goto LABEL_115;
      }

      v98 = &v10[16 * v75 + 32];
      v100 = *v98;
      v99 = *(v98 + 1);
      v86 = __OFSUB__(v99, v100);
      v101 = v99 - v100;
      if (v86)
      {
        goto LABEL_118;
      }

      if (__OFADD__(v96, v101))
      {
        goto LABEL_119;
      }

      if (v96 + v101 >= v78)
      {
        if (v78 < v101)
        {
          v75 = v73 - 2;
        }

        goto LABEL_74;
      }

      goto LABEL_67;
    }

    v102 = &v10[16 * v73];
    v104 = *v102;
    v103 = *(v102 + 1);
    v86 = __OFSUB__(v103, v104);
    v96 = v103 - v104;
    v97 = v86;
LABEL_67:
    if (v97)
    {
      goto LABEL_114;
    }

    v105 = &v10[16 * v75];
    v107 = *(v105 + 4);
    v106 = *(v105 + 5);
    v86 = __OFSUB__(v106, v107);
    v108 = v106 - v107;
    if (v86)
    {
      goto LABEL_117;
    }

    if (v108 < v96)
    {
      goto LABEL_3;
    }

LABEL_74:
    v113 = v75 - 1;
    if (v75 - 1 >= v73)
    {
      break;
    }

    v114 = *a3;
    if (!*a3)
    {
      goto LABEL_129;
    }

    v115 = *&v10[16 * v113 + 32];
    v116 = *&v10[16 * v75 + 40];
    v117 = (v114 + 136 * v115);
    v118 = (v114 + 136 * *&v10[16 * v75 + 32]);
    v119 = (v114 + 136 * v116);
    sub_1DACB71E4();
    sub_1DAC5D888(v117, v118, v119, v169, a5);
    if (v6)
    {
      goto LABEL_106;
    }

    if (v116 < v115)
    {
      goto LABEL_108;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_1DAC0694C(v10);
    }

    if (v113 >= *(v10 + 2))
    {
      goto LABEL_109;
    }

    v120 = &v10[16 * v113];
    *(v120 + 4) = v115;
    *(v120 + 5) = v116;
    v259 = v10;
    sub_1DAC068C0(v75);
    v10 = v259;
    v73 = *(v259 + 2);
    if (v73 <= 1)
    {
      goto LABEL_3;
    }
  }

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
LABEL_124:
  __break(1u);
LABEL_125:
  v10 = sub_1DAC0694C(v10);
LABEL_96:
  v259 = v10;
  v155 = *(v10 + 2);
  if (v155 < 2)
  {
LABEL_104:

    return swift_bridgeObjectRelease_n();
  }

  else
  {
    while (1)
    {
      v156 = *a3;
      if (!*a3)
      {
        break;
      }

      v157 = *&v10[16 * v155];
      v158 = *&v10[16 * v155 + 24];
      v159 = (v156 + 136 * v157);
      v160 = (v156 + 136 * *&v10[16 * v155 + 16]);
      v161 = (v156 + 136 * v158);
      sub_1DACB71E4();
      sub_1DAC5D888(v159, v160, v161, v169, a5);
      if (v6)
      {
        goto LABEL_104;
      }

      if (v158 < v157)
      {
        goto LABEL_120;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_1DAC0694C(v10);
      }

      if (v155 - 2 >= *(v10 + 2))
      {
        goto LABEL_121;
      }

      v162 = &v10[16 * v155];
      *v162 = v157;
      *(v162 + 1) = v158;
      v259 = v10;
      sub_1DAC068C0(v155 - 1);
      v10 = v259;
      v155 = *(v259 + 2);
      if (v155 <= 1)
      {
        goto LABEL_104;
      }
    }

LABEL_131:

    __break(1u);
LABEL_132:
    swift_bridgeObjectRelease_n();
    __break(1u);
LABEL_133:
    swift_bridgeObjectRelease_n();
    __break(1u);
LABEL_134:
    result = swift_bridgeObjectRelease_n();
    __break(1u);
  }

  return result;
}