uint64_t Uber.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  Uber.init(deserializing:using:)(a1, a2);
  return v4;
}

void Uber.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v76 = sub_1E1AEFCCC();
  v75 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v77 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E1AF39DC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v73 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E1AF380C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E1AF381C();
  sub_1E147A76C();
  sub_1E1AF369C();
  v12 = *(v9 + 8);
  v82 = v8;
  v81 = v9 + 8;
  v80 = v12;
  v12(v11, v8);
  v13 = a2;
  v88 = a2;
  v85 = v90;
  v14 = type metadata accessor for Artwork(0);
  sub_1E1AF381C();
  v71 = v6;
  v15 = *(v6 + 16);
  v16 = v73;
  v15(v73, v13, v5);
  v17 = sub_1E1480E68(&qword_1EE1E4BB8, 255, type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
  sub_1E1AF464C();
  v87 = v90;
  v84 = a1;
  sub_1E1AF381C();
  v18 = v88;
  v89 = v15;
  (v15)();
  v74 = v17;
  v78 = v14;
  sub_1E1AF464C();
  v19 = v90;
  if (!v90)
  {
  }

  v79 = v19;
  type metadata accessor for Video(0);
  sub_1E1AF381C();
  v89(v16, v18, v5);
  sub_1E1480E68(&qword_1EE1E52D0, 255, type metadata accessor for Video, &protocol conformance descriptor for Video);
  sub_1E1AF464C();
  v86 = v90;
  sub_1E1AF381C();
  v83 = v5;
  v89(v16, v18, v5);
  sub_1E1AF464C();
  v20 = v90;
  if (!v90)
  {
  }

  sub_1E1AF381C();
  v89(v16, v88, v83);
  sub_1E1AF464C();
  v21 = v90;
  sub_1E1AF381C();
  v89 = sub_1E1AF37CC();
  v78 = v22;
  v80(v11, v82);
  if (v87)
  {
    v23 = *(v87 + 16);
  }

  else
  {
    v23 = 0;
    v24 = 0;
  }

  v25 = v86;
  v26 = v76;
  v27 = v75;
  v94 = v23;
  v95 = v24;
  v28 = v21;
  if (v79)
  {
    v29 = *(v79 + 16);
  }

  else
  {
    v29 = 0;
    v30 = 0;
  }

  v96 = v29;
  v97 = v30;
  v31 = *&aBackgrou[8 * v85 + 8];
  v98 = *&aAbove_3[8 * v85];
  v99 = v31;
  if (!v25)
  {
    v100 = 0;
    v101 = 0;
    if (v20)
    {
      goto LABEL_13;
    }

LABEL_15:
    v38 = 0;
    v40 = 0;
    goto LABEL_16;
  }

  v32 = v25 + OBJC_IVAR____TtC11AppStoreKit5Video_videoUrl;
  v33 = v77;
  (*(v27 + 16))(v77, v32, v26);
  v34 = sub_1E1AEFBDC();
  v36 = v35;
  (*(v27 + 8))(v33, v26);
  v100 = v34;
  v101 = v36;
  if (!v20)
  {
    goto LABEL_15;
  }

LABEL_13:
  v37 = v77;
  (*(v27 + 16))(v77, v20 + OBJC_IVAR____TtC11AppStoreKit5Video_videoUrl, v26);
  v38 = sub_1E1AEFBDC();
  v40 = v39;
  (*(v27 + 8))(v37, v26);
LABEL_16:
  v41 = v85;
  v102 = v38;
  v103 = v40;
  if (v21)
  {
    v42 = *(v21 + 16);
  }

  else
  {
    v42 = 0;
    v43 = 0;
  }

  v104 = v42;
  v105 = v43;
  v106 = v89;
  v107 = v78;

  v44 = 0;
  v45 = MEMORY[0x1E69E7CC0];
  v46 = 7;
LABEL_20:
  if (v44 > 7)
  {
    v46 = v44;
  }

  v47 = v46 + 1;
  v48 = 16 * v44 + 40;
  while (v44 != 7)
  {
    if (v47 == ++v44)
    {
      __break(1u);
      return;
    }

    v49 = v48 + 16;
    v50 = *&v93[v48];
    v48 += 16;
    if (v50)
    {
      v85 = v20;
      v51 = v28;
      v52 = *(&v91 + v49);

      v53 = v41;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v45 = sub_1E130C06C(0, *(v45 + 2) + 1, 1, v45);
      }

      v55 = *(v45 + 2);
      v54 = *(v45 + 3);
      if (v55 >= v54 >> 1)
      {
        v45 = sub_1E130C06C((v54 > 1), v55 + 1, 1, v45);
      }

      *(v45 + 2) = v55 + 1;
      v56 = &v45[16 * v55];
      *(v56 + 4) = v52;
      *(v56 + 5) = v50;
      v41 = v53;
      v28 = v51;
      v20 = v85;
      v46 = 7;
      goto LABEL_20;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB5D40, &unk_1E1B02B90);
  swift_arrayDestroy();
  v57 = sub_1E1AF637C();

  v108 = v57;
  sub_1E1AF6F6C();
  v58 = v91;
  v59 = v72;
  *(v72 + 80) = v90;
  *(v59 + 96) = v58;
  *(v59 + 112) = v92;
  *(v59 + 16) = v41;
  v60 = v87;
  *(v59 + 24) = v87;
  v61 = v79;
  if (!v79)
  {

    v61 = v60;
  }

  *(v59 + 32) = v61;
  v62 = v86;
  *(v59 + 40) = v86;
  v63 = v88;
  if (!v20)
  {

    v20 = v62;
  }

  *(v59 + 48) = v20;
  *(v59 + 56) = v28;
  v64 = v78;
  *(v59 + 64) = v89;
  *(v59 + 72) = v64;
  if (v62 | v60 | v28)
  {
    if (v62 | v60)
    {
      v65 = v62 != 0;
    }

    else
    {
      v65 = 2;
    }

    (*(v71 + 8))(v63, v83);
    v80(v84, v82);
    *(v59 + 17) = v65;
  }

  else
  {
    v66 = sub_1E1AF5A7C();
    sub_1E1480E68(&qword_1EE1E3580, 255, MEMORY[0x1E69AB6A8], MEMORY[0x1E69AB6B0]);
    swift_allocError();
    v68 = v67;
    v69 = type metadata accessor for Uber();
    *v68 = 0x7079547465737361;
    v68[1] = 0xE900000000000065;
    v68[2] = v69;
    v68[3] = MEMORY[0x1E69E7CC0];
    (*(*(v66 - 8) + 104))(v68, *MEMORY[0x1E69AB6A0], v66);
    swift_willThrow();
    (*(v71 + 8))(v63, v83);
    v80(v84, v82);

    sub_1E134B88C(v59 + 80);
    swift_deallocPartialClassInstance();
  }
}

uint64_t Uber.title.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

void *Uber.deinit()
{

  sub_1E134B88C(v0 + 80);
  return v0;
}

uint64_t Uber.__deallocating_deinit()
{

  sub_1E134B88C(v0 + 80);

  return swift_deallocClassInstance();
}

void sub_1E14808DC(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for Uber();
  v7 = swift_allocObject();
  Uber.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }
}

uint64_t _s11AppStoreKit4UberC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((MEMORY[0x1E68FFC60](a1 + 80, a2 + 80) & 1) == 0)
  {
    return 0;
  }

  v4 = 0xE600000000000000;
  v5 = 0x656E696C6E69;
  if (*(a1 + 16) != 1)
  {
    v5 = 0x756F72676B636162;
    v4 = 0xEA0000000000646ELL;
  }

  if (*(a1 + 16))
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x65766F6261;
  }

  if (*(a1 + 16))
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  v8 = 0xE600000000000000;
  v9 = 0x656E696C6E69;
  if (*(a2 + 16) != 1)
  {
    v9 = 0x756F72676B636162;
    v8 = 0xEA0000000000646ELL;
  }

  if (*(a2 + 16))
  {
    v10 = v9;
  }

  else
  {
    v10 = 0x65766F6261;
  }

  if (*(a2 + 16))
  {
    v11 = v8;
  }

  else
  {
    v11 = 0xE500000000000000;
  }

  if (v6 == v10 && v7 == v11)
  {
  }

  else
  {
    v12 = sub_1E1AF74AC();

    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  v13 = 0xE500000000000000;
  v14 = 0x6F65646976;
  if (*(a1 + 17) != 1)
  {
    v14 = 1852793705;
    v13 = 0xE400000000000000;
  }

  if (*(a1 + 17))
  {
    v15 = v14;
  }

  else
  {
    v15 = 0x6B726F77747261;
  }

  if (*(a1 + 17))
  {
    v16 = v13;
  }

  else
  {
    v16 = 0xE700000000000000;
  }

  v17 = 0xE500000000000000;
  v18 = 0x6F65646976;
  if (*(a2 + 17) != 1)
  {
    v18 = 1852793705;
    v17 = 0xE400000000000000;
  }

  if (*(a2 + 17))
  {
    v19 = v18;
  }

  else
  {
    v19 = 0x6B726F77747261;
  }

  if (*(a2 + 17))
  {
    v20 = v17;
  }

  else
  {
    v20 = 0xE700000000000000;
  }

  if (v15 == v19 && v16 == v20)
  {
  }

  else
  {
    v21 = sub_1E1AF74AC();

    if ((v21 & 1) == 0)
    {
      return 0;
    }
  }

  v22 = *(a1 + 24);
  v23 = *(a2 + 24);
  if (v22)
  {
    if (!v23)
    {
      return 0;
    }

    v25 = _s11AppStoreKit7ArtworkC2eeoiySbAC_ACtFZ_0(v22, v23, v24);

    if ((v25 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v23)
  {
    return 0;
  }

  v26 = *(a1 + 32);
  v27 = *(a2 + 32);
  if (v26)
  {
    if (!v27)
    {
      return 0;
    }

    v29 = _s11AppStoreKit7ArtworkC2eeoiySbAC_ACtFZ_0(v26, v27, v28);

    if ((v29 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v27)
  {
    return 0;
  }

  v30 = *(a1 + 40);
  v31 = *(a2 + 40);
  if (v30)
  {
    if (!v31)
    {
      return 0;
    }

    if ((sub_1E1AEFC4C() & 1) == 0)
    {
      goto LABEL_63;
    }

    v33 = _s11AppStoreKit7ArtworkC2eeoiySbAC_ACtFZ_0(*(v30 + OBJC_IVAR____TtC11AppStoreKit5Video_preview), *(v31 + OBJC_IVAR____TtC11AppStoreKit5Video_preview), v32);

    if ((v33 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v31)
  {
    return 0;
  }

  v34 = *(a1 + 48);
  v35 = *(a2 + 48);
  if (!v34)
  {
    if (v35)
    {
      return 0;
    }

    goto LABEL_67;
  }

  if (!v35)
  {
    return 0;
  }

  if ((sub_1E1AEFC4C() & 1) == 0)
  {
LABEL_63:

    return 0;
  }

  v37 = _s11AppStoreKit7ArtworkC2eeoiySbAC_ACtFZ_0(*(v34 + OBJC_IVAR____TtC11AppStoreKit5Video_preview), *(v35 + OBJC_IVAR____TtC11AppStoreKit5Video_preview), v36);

  if ((v37 & 1) == 0)
  {
    return 0;
  }

LABEL_67:
  v39 = *(a1 + 56);
  v40 = *(a2 + 56);
  if (!v39)
  {
    if (!v40)
    {
      goto LABEL_72;
    }

    return 0;
  }

  if (!v40)
  {
    return 0;
  }

  v42 = _s11AppStoreKit7ArtworkC2eeoiySbAC_ACtFZ_0(v39, v40, v41);

  if ((v42 & 1) == 0)
  {
    return 0;
  }

LABEL_72:
  v43 = *(a1 + 72);
  v44 = *(a2 + 72);
  result = (v43 | v44) == 0;
  if (v43 && v44)
  {
    if (*(a1 + 64) == *(a2 + 64) && v43 == v44)
    {
      return 1;
    }

    else
    {

      return sub_1E1AF74AC();
    }
  }

  return result;
}

unint64_t sub_1E1480D74()
{
  result = qword_1ECEB4430;
  if (!qword_1ECEB4430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB4430);
  }

  return result;
}

unint64_t sub_1E1480DCC()
{
  result = qword_1ECEB4438;
  if (!qword_1ECEB4438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB4438);
  }

  return result;
}

uint64_t sub_1E1480E68(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t get_enum_tag_for_layout_string_11AppStoreKit32ActionImplementationPerformErrorO(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1E1480F4C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E1480F9C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

double sub_1E1480FF8(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 24) = (a2 - 1);
  }

  return result;
}

unint64_t sub_1E1481038()
{
  result = qword_1ECEB4440;
  if (!qword_1ECEB4440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB4440);
  }

  return result;
}

id sub_1E1481090(void *a1)
{
  v1 = a1;
  v2 = [v1 presentedViewController];
  v3 = v1;
  if (v2)
  {
    v4 = v1;
    do
    {
      v3 = v2;

      v2 = [v3 presentedViewController];
      v4 = v3;
    }

    while (v2);
  }

  return v3;
}

id UIViewController.frontmostViewController.getter()
{
  v1 = v0;
  v2 = [v1 presentedViewController];
  if (!v2)
  {
    return v1;
  }

  do
  {
    v3 = v2;

    v2 = [v3 presentedViewController];
    v1 = v3;
  }

  while (v2);
  return v3;
}

uint64_t static ActionDispatcherFactory.mainActionDispatcher<A>(following:windowScene:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4448, &qword_1E1B0D750);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v17 - v14;
  sub_1E1481314(a1, a2, a3, a4, a5, &v17 - v14);
  (*(v13 + 16))(a6, v15, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4450, qword_1E1B0D758);
  sub_1E1302CD4(&qword_1ECEB4458, &qword_1ECEB4450, qword_1E1B0D758, &unk_1E1B33FF0);
  sub_1E1AF43DC();
  return (*(v13 + 8))(v15, v12);
}

uint64_t sub_1E1481314@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v32 = a6;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4448, &qword_1E1B0D750);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v30 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = v30 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v33 = v30 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v31 = v30 - v24;
  sub_1E14817A4(a1, a3, a4, a5, v14);
  v34 = a2;
  v30[0] = *(v12 + 16);
  v30[1] = a2;
  (v30[0])(v17, v14, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4460, "<\n\b");
  sub_1E1302CD4(&qword_1ECEB4468, &qword_1ECEB4460, "<\n\b", &unk_1E1B32100);
  sub_1E1AF43DC();
  v25 = *(v12 + 8);
  v25(v14, v11);
  v34 = a2;
  v26 = v30[0];
  (v30[0])(v20, v17, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4470, &qword_1E1B0D790);
  sub_1E1302CD4(&qword_1ECEB4478, &qword_1ECEB4470, &qword_1E1B0D790, &unk_1E1B0C2E8);
  sub_1E1AF43DC();
  v25(v17, v11);
  v27 = v33;
  v26(v33, v20, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4480, &qword_1E1B0D798);
  sub_1E1302CD4(&qword_1ECEB4488, &qword_1ECEB4480, &qword_1E1B0D798, &unk_1E1B09FA8);
  sub_1E1AF43DC();
  v25(v20, v11);
  v28 = v31;
  v26(v31, v27, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4490, &qword_1E1B0D7A0);
  sub_1E1302CD4(&qword_1ECEB4498, &qword_1ECEB4490, &qword_1E1B0D7A0, &unk_1E1B37690);
  sub_1E1AF43DC();
  v25(v33, v11);
  swift_unknownObjectUnownedInit();
  v26(v32, v28, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB44A0, &qword_1E1B0D7A8);
  sub_1E1302CD4(&qword_1ECEB44A8, &qword_1ECEB44A0, &qword_1E1B0D7A8, &unk_1E1B0C578);
  sub_1E1AF43DC();
  sub_1E1308058(&v34, &qword_1ECEB44A0, &qword_1E1B0D7A8);
  return (v25)(v28, v11);
}

uint64_t sub_1E14817A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v206 = a1;
  v173 = a5;
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB44B0, &unk_1E1B0D7B0);
  v172 = *(v171 - 8);
  MEMORY[0x1EEE9AC00](v171);
  v170 = &v155 - v8;
  v168 = type metadata accessor for FlowBackActionImplementation(0);
  MEMORY[0x1EEE9AC00](v168);
  v167 = &v155 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v210 = sub_1E1AF421C();
  v212 = a2;
  v213 = v210;
  v183 = a2;
  v214 = a3;
  v215 = a4;
  v165 = sub_1E1AF0CFC();
  v166 = *(v165 - 8);
  MEMORY[0x1EEE9AC00](v165);
  v164 = &v155 - v10;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB44B8, &qword_1E1B50480);
  v163 = *(v162 - 8);
  MEMORY[0x1EEE9AC00](v162);
  v161 = &v155 - v11;
  v160 = type metadata accessor for CompoundActionImplementation(0);
  MEMORY[0x1EEE9AC00](v160);
  v159 = &v155 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB44C0, &qword_1E1B0D7C0);
  v158 = *(v157 - 8);
  MEMORY[0x1EEE9AC00](v157);
  v156 = &v155 - v13;
  sub_1E1AF0C9C();
  v14 = sub_1E1AF2C9C();
  v205 = v14;
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v155 - v16;
  v211 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB44C8, &qword_1E1B0D7C8);
  MEMORY[0x1EEE9AC00](v211);
  v155 = &v155 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4448, &qword_1E1B0D750);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v169 = &v155 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v178 = &v155 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v177 = &v155 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v176 = &v155 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v195 = &v155 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v193 = &v155 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v192 = &v155 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v189 = &v155 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v187 = &v155 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v186 = &v155 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v185 = &v155 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v184 = &v155 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v188 = &v155 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v190 = &v155 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v191 = &v155 - v49;
  MEMORY[0x1EEE9AC00](v50);
  v194 = &v155 - v51;
  MEMORY[0x1EEE9AC00](v52);
  v197 = &v155 - v53;
  MEMORY[0x1EEE9AC00](v54);
  v196 = &v155 - v55;
  MEMORY[0x1EEE9AC00](v56);
  v199 = &v155 - v57;
  MEMORY[0x1EEE9AC00](v58);
  v198 = &v155 - v59;
  MEMORY[0x1EEE9AC00](v60);
  v201 = &v155 - v61;
  MEMORY[0x1EEE9AC00](v62);
  v200 = &v155 - v63;
  MEMORY[0x1EEE9AC00](v64);
  v203 = &v155 - v65;
  MEMORY[0x1EEE9AC00](v66);
  v202 = &v155 - v67;
  MEMORY[0x1EEE9AC00](v68);
  v70 = &v155 - v69;
  v72 = MEMORY[0x1EEE9AC00](v71);
  v74 = &v155 - v73;
  v75 = *(v15 + 16);
  v182 = v15 + 16;
  v181 = v75;
  v204 = v17;
  (v75)(v17, v206, v14, v72);
  v174 = a3;
  v175 = a4;
  sub_1E1461CDC(v17, v210, v183, a3, a4);
  sub_1E1AF440C();
  v207 = *(v20 + 16);
  v208 = v20 + 16;
  v179 = v74;
  v207(v74, v70, v19);
  sub_1E1302CD4(&qword_1ECEB44D0, &qword_1ECEB44C8, &qword_1E1B0D7C8, &unk_1E1B0BFE0);
  v76 = v155;
  sub_1E1AF43DC();
  v209 = *(v20 + 8);
  v211 = v20 + 8;
  v209(v70, v19);
  sub_1E1308058(v76, &qword_1ECEB44C8, &qword_1E1B0D7C8);
  v181(v204, v206, v205);
  v77 = v156;
  sub_1E1AF0D0C();
  v78 = v202;
  sub_1E1AF440C();
  v180 = v70;
  v79 = v207;
  v207(v70, v78, v19);
  sub_1E1302CD4(&qword_1ECEB44D8, &qword_1ECEB44C0, &qword_1E1B0D7C0, MEMORY[0x1E69E3AA0]);
  v80 = v157;
  sub_1E1AF43DC();
  v209(v78, v19);
  (*(v158 + 8))(v77, v80);
  v81 = v203;
  sub_1E1AF440C();
  v82 = v81;
  v79(v78, v81, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB44E0, &qword_1E1B0D7D0);
  sub_1E1302CD4(&qword_1ECEB44E8, &qword_1ECEB44E0, &qword_1E1B0D7D0, &protocol conformance descriptor for ArcadeActionImplementation<A>);
  sub_1E1AF43DC();
  v83 = v209;
  v209(v81, v19);
  v84 = v200;
  sub_1E1AF440C();
  v85 = v84;
  v207(v82, v84, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB44F0, &qword_1E1B0D7D8);
  sub_1E1302CD4(&qword_1ECEB44F8, &qword_1ECEB44F0, &qword_1E1B0D7D8, &protocol conformance descriptor for ArcadeLaunchAttributionActionImplementation<A>);
  sub_1E1AF43DC();
  v83(v84, v19);
  v86 = v201;
  sub_1E1AF440C();
  v87 = v86;
  v88 = v207;
  v207(v85, v86, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4500, &qword_1E1B0D7E0);
  sub_1E1302CD4(&qword_1ECEB4508, &qword_1ECEB4500, &qword_1E1B0D7E0, &protocol conformance descriptor for ArcadeSubscriptionStateActionImplementation<A>);
  sub_1E1AF43DC();
  v83(v86, v19);
  v89 = v198;
  sub_1E1AF440C();
  v90 = v89;
  v88(v87, v89, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4510, &qword_1E1B0D7E8);
  sub_1E1302CD4(&qword_1ECEB4518, &qword_1ECEB4510, &qword_1E1B0D7E8, &protocol conformance descriptor for CancelPreorderActionImplementation<A>);
  sub_1E1AF43DC();
  v83(v89, v19);
  v91 = v159;
  sub_1E1AF518C();
  v92 = v199;
  sub_1E1AF440C();
  v93 = v90;
  v94 = v92;
  v95 = v207;
  v207(v93, v92, v19);
  sub_1E1483A10(&qword_1ECEB4520, type metadata accessor for CompoundActionImplementation, &protocol conformance descriptor for CompoundActionImplementation);
  sub_1E1AF43DC();
  v83(v92, v19);
  sub_1E1483A58(v91, type metadata accessor for CompoundActionImplementation);
  v96 = v161;
  sub_1E1AF518C();
  v97 = v196;
  sub_1E1AF440C();
  v95(v94, v97, v19);
  sub_1E1302CD4(&qword_1ECEB4528, &qword_1ECEB44B8, &qword_1E1B50480, MEMORY[0x1E69AB480]);
  v98 = v162;
  sub_1E1AF43DC();
  v99 = v97;
  v209(v97, v19);
  (*(v163 + 8))(v96, v98);
  v100 = v197;
  sub_1E1AF440C();
  v101 = v100;
  v95(v99, v100, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4530, &qword_1E1B0D7F0);
  sub_1E1302CD4(&qword_1ECEB4538, &qword_1ECEB4530, &qword_1E1B0D7F0, &unk_1E1B3FF20);
  sub_1E1AF43DC();
  v102 = v209;
  v209(v100, v19);
  v103 = v194;
  sub_1E1AF440C();
  v95(v101, v103, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4540, &qword_1E1B0D7F8);
  sub_1E1302CD4(&qword_1ECEB4548, &qword_1ECEB4540, &qword_1E1B0D7F8, &protocol conformance descriptor for ExternalUrlActionImplementation<A>);
  sub_1E1AF43DC();
  v102(v103, v19);
  v104 = v181;
  v181(v204, v206, v205);
  v105 = v164;
  v106 = v183;
  v107 = v174;
  v108 = v175;
  sub_1E1AF0CEC();
  v109 = v165;
  swift_getWitnessTable();
  sub_1E1AF43EC();
  (*(v166 + 8))(v105, v109);
  v110 = v204;
  v104(v204, v206, v205);
  v111 = v167;
  sub_1E195B468(v110, v106, v107, v108);
  v112 = v190;
  sub_1E1AF440C();
  v113 = v112;
  v114 = v207;
  v207(v191, v112, v19);
  sub_1E1483A10(&qword_1ECEB4550, type metadata accessor for FlowBackActionImplementation, "QX4\r");
  sub_1E1AF43DC();
  v115 = v209;
  v209(v112, v19);
  sub_1E1483A58(v111, type metadata accessor for FlowBackActionImplementation);
  v116 = v188;
  sub_1E1AF440C();
  v117 = v116;
  v114(v113, v116, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4558, &qword_1E1B0D800);
  sub_1E1302CD4(&qword_1ECEB4560, &qword_1ECEB4558, &qword_1E1B0D800, &protocol conformance descriptor for HttpActionImplementation<A>);
  sub_1E1AF43DC();
  v115(v116, v19);
  v118 = v184;
  sub_1E1AF440C();
  v114(v117, v118, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4568, &qword_1E1B0D808);
  sub_1E1302CD4(&qword_1ECEB4570, &qword_1ECEB4568, &qword_1E1B0D808, &protocol conformance descriptor for LocalActionImplementation<A>);
  sub_1E1AF43DC();
  v119 = v118;
  v120 = v209;
  v209(v118, v19);
  v121 = v185;
  sub_1E1AF440C();
  v122 = v114;
  v114(v119, v121, v19);
  sub_1E1483AB8();
  sub_1E1AF43DC();
  v120(v121, v19);
  v123 = v186;
  sub_1E1AF440C();
  v114(v121, v123, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4580, &qword_1E1B0D810);
  sub_1E1302CD4(&qword_1ECEB4588, &qword_1ECEB4580, &qword_1E1B0D810, &unk_1E1B418A0);
  sub_1E1AF43DC();
  v120(v123, v19);
  v124 = v187;
  sub_1E1AF440C();
  v125 = v124;
  v122(v123, v124, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4590, &qword_1E1B0D818);
  sub_1E1302CD4(&qword_1ECEB4598, &qword_1ECEB4590, &qword_1E1B0D818, &unk_1E1B10C00);
  sub_1E1AF43DC();
  v120(v124, v19);
  v126 = v189;
  sub_1E1AF440C();
  v127 = v126;
  v122(v125, v126, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB45A0, &qword_1E1B0D820);
  sub_1E1302CD4(&qword_1ECEB45A8, &qword_1ECEB45A0, &qword_1E1B0D820, &unk_1E1B222F0);
  sub_1E1AF43DC();
  v120(v126, v19);
  v128 = v192;
  sub_1E1AF440C();
  v129 = v128;
  v122(v127, v128, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB45B0, &qword_1E1B0D828);
  sub_1E1302CD4(&qword_1ECEB45B8, &qword_1ECEB45B0, &qword_1E1B0D828, &protocol conformance descriptor for RateActionImplementation<A>);
  sub_1E1AF43DC();
  v120(v128, v19);
  v130 = v193;
  sub_1E1AF440C();
  v131 = v130;
  v122(v129, v130, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB45C0, &qword_1E1B0D830);
  sub_1E1302CD4(&qword_1ECEB45C8, &qword_1ECEB45C0, &qword_1E1B0D830, &protocol conformance descriptor for RateLimitedActionImplementation<A>);
  sub_1E1AF43DC();
  v120(v130, v19);
  v132 = v195;
  sub_1E1AF440C();
  v133 = v132;
  v122(v131, v132, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB45D0, &qword_1E1B0D838);
  sub_1E1302CD4(&qword_1ECEB45D8, &qword_1ECEB45D0, &qword_1E1B0D838, &unk_1E1B20230);
  sub_1E1AF43DC();
  v209(v132, v19);
  v134 = v176;
  sub_1E1AF440C();
  v135 = v134;
  v122(v133, v134, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB45E0, &qword_1E1B0D840);
  sub_1E1302CD4(&qword_1ECEB45E8, &qword_1ECEB45E0, &qword_1E1B0D840, &protocol conformance descriptor for SearchAdActionImplementation<A>);
  sub_1E1AF43DC();
  v136 = v209;
  v209(v134, v19);
  v137 = v177;
  sub_1E1AF440C();
  v122(v135, v137, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB45F0, &qword_1E1B0D848);
  sub_1E1302CD4(&qword_1ECEB45F8, &qword_1ECEB45F0, &qword_1E1B0D848, &unk_1E1B50540);
  sub_1E1AF43DC();
  v136(v137, v19);
  v181(v204, v206, v205);
  v138 = v170;
  sub_1E1AF0D3C();
  v139 = v178;
  sub_1E1AF440C();
  v140 = v207;
  v207(v137, v139, v19);
  sub_1E1302CD4(&qword_1ECEB4600, &qword_1ECEB44B0, &unk_1E1B0D7B0, MEMORY[0x1E69E3AA8]);
  v141 = v138;
  v142 = v171;
  sub_1E1AF43DC();
  v143 = v211;
  v136(v139, v19);
  (*(v172 + 8))(v141, v142);
  v144 = v169;
  sub_1E1AF440C();
  v140(v139, v144, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4608, &qword_1E1B0D850);
  sub_1E1302CD4(&qword_1ECEB4610, &qword_1ECEB4608, &qword_1E1B0D850, &unk_1E1B08A30);
  sub_1E1AF43DC();
  v136(v144, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4618, &qword_1E1B0D858);
  v145 = *(v143 + 64);
  v146 = (*(v143 + 72) + 32) & ~*(v143 + 72);
  v206 = swift_allocObject();
  v147 = v206 + v146;
  v148 = v206 + v146;
  v149 = v207;
  v207(v148, v179, v19);
  (v149)(v147 + v145, v180, v19);
  v183 = 2 * v145;
  (v149)(v147 + 2 * v145, v202, v19);
  v205 = 3 * v145;
  (v149)(v147 + 3 * v145, v203, v19);
  v181 = (4 * v145);
  (v149)(v147 + 4 * v145, v200, v19);
  v204 = 5 * v145;
  (v149)(v147 + 5 * v145, v201, v19);
  v182 = v147 + 6 * v145;
  v149();
  v175 = 7 * v145;
  (v149)(v147 + 7 * v145, v199, v19);
  (v149)(v147 + 8 * v145, v196, v19);
  v174 = 9 * v145;
  (v149)(v147 + 9 * v145, v197, v19);
  v172 = v147 + 10 * v145;
  v149();
  v171 = v147 + 11 * v145;
  v149();
  v170 = (v147 + 12 * v145);
  v149();
  v169 = (v147 + 13 * v145);
  v149();
  v168 = v147 + 14 * v145;
  v149();
  v167 = 15 * v145;
  (v149)(v147 + 15 * v145, v185, v19);
  (v149)(v147 + 16 * v145, v186, v19);
  v166 = 17 * v145;
  (v149)(v147 + 17 * v145, v187, v19);
  v165 = v147 + 18 * v145;
  v149();
  v164 = (v147 + 19 * v145);
  v149();
  v163 = v147 + 20 * v145;
  v149();
  v162 = v147 + 21 * v145;
  v149();
  v161 = (v147 + 22 * v145);
  v150 = v176;
  v149();
  v160 = v147 + 23 * v145;
  v151 = v177;
  v149();
  v159 = (v147 + 24 * v145);
  v152 = v178;
  v149();
  sub_1E1AF440C();
  sub_1E1AF43CC();
  sub_1E1AF43CC();
  sub_1E1AF43CC();
  sub_1E1AF43CC();
  sub_1E1AF43CC();
  sub_1E1AF43CC();
  sub_1E1AF43CC();
  sub_1E1AF43CC();
  sub_1E1AF43CC();
  sub_1E1AF43CC();
  sub_1E1AF43CC();
  sub_1E1AF43CC();
  sub_1E1AF43CC();
  sub_1E1AF43CC();
  sub_1E1AF43CC();
  sub_1E1AF43CC();
  sub_1E1AF43CC();
  sub_1E1AF43CC();
  sub_1E1AF43CC();
  sub_1E1AF43CC();
  sub_1E1AF43CC();
  sub_1E1AF43CC();
  sub_1E1AF43CC();
  sub_1E1AF43CC();
  sub_1E1AF43CC();
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v153 = v209;
  v209(v152, v19);
  v153(v151, v19);
  v153(v150, v19);
  v153(v195, v19);
  v153(v193, v19);
  v153(v192, v19);
  v153(v189, v19);
  v153(v187, v19);
  v153(v186, v19);
  v153(v185, v19);
  v153(v184, v19);
  v153(v188, v19);
  v153(v190, v19);
  v153(v191, v19);
  v153(v194, v19);
  v153(v197, v19);
  v153(v196, v19);
  v153(v199, v19);
  v153(v198, v19);
  v153(v201, v19);
  v153(v200, v19);
  v153(v203, v19);
  v153(v202, v19);
  v153(v180, v19);
  return (v153)(v179, v19);
}

uint64_t sub_1E1483A10(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E1483A58(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1E1483AB8()
{
  result = qword_1ECEB4578;
  if (!qword_1ECEB4578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB4578);
  }

  return result;
}

void *SearchResultsMessage.__allocating_init(primaryText:secondaryText:messageClickAction:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  return result;
}

void *SearchResultsMessage.init(primaryText:secondaryText:messageClickAction:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  return v3;
}

void *SearchResultsMessage.deinit()
{

  return v0;
}

uint64_t SearchResultsMessage.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void *sub_1E1483C0C@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E1483C38(a2, a3);
  if (!v3)
  {
    *a1 = result;
  }

  return result;
}

void *sub_1E1483C38(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E1AF39DC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v31 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v26 - v8;
  v10 = sub_1E1AF380C();
  v33 = *(v10 - 8);
  v34 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v30 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v26 - v13;
  sub_1E1AF381C();
  v35 = v5;
  v15 = a2;
  v16 = v4;
  v17 = v4;
  v18 = *(v5 + 16);
  v18(v9, a2, v17);
  type metadata accessor for LinkableText();
  swift_allocObject();
  v19 = v32;
  v20 = LinkableText.init(deserializing:using:)(v14, v9);
  if (v19)
  {
    (*(v35 + 8))(a2, v16);
    return (*(v33 + 8))(a1, v34);
  }

  else
  {
    v32 = v20;
    v27 = a1;
    sub_1E1AF381C();
    v22 = v31;
    v18(v31, a2, v16);
    sub_1E14840A0(&qword_1EE1F5FA0, type metadata accessor for LinkableText, &protocol conformance descriptor for LinkableText);
    sub_1E1AF464C();
    v28 = v36;
    type metadata accessor for SearchAction(0);
    v29 = 0;
    v23 = v27;
    sub_1E1AF381C();
    v18(v22, v15, v16);
    sub_1E14840A0(&qword_1EE1F5AB8, type metadata accessor for SearchAction, &protocol conformance descriptor for Action);
    sub_1E1AF464C();
    (*(v35 + 8))(v15, v16);
    (*(v33 + 8))(v23, v34);
    v24 = v36;
    type metadata accessor for SearchResultsMessage();
    result = swift_allocObject();
    v25 = v28;
    result[2] = v32;
    result[3] = v25;
    result[4] = v24;
  }

  return result;
}

uint64_t sub_1E14840A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t BootstrapPendingClosuresHandler.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = sub_1E12FFEB8(MEMORY[0x1E69E7CC0]);
  return v0;
}

Swift::Void __swiftcall BootstrapPendingClosuresHandler.didComplete(bootstrapPhase:)(AppStoreKit::BootstrapPhase bootstrapPhase)
{
  v2 = v1;
  v3 = *bootstrapPhase;
  swift_beginAccess();
  v4 = *(v1 + 16);
  if (*(v4 + 16) && (v5 = sub_1E130A768(v3), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + 8 * v5);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    v7 = MEMORY[0x1E69E7CC0];
  }

  v17[0] = v7;

  sub_1E14843D0(v17);

  v8 = *(v17[0] + 16);
  if (v8)
  {
    v9 = (v17[0] + 72);
    do
    {
      v10 = *(v9 - 5);
      v11 = *(v9 - 4);
      v12 = *(v9 - 2);
      v13 = *(v9 - 1);
      v14 = *v9;
      v9 += 48;

      sub_1E14851C8(v12, v13, v14, v10, v11);

      --v8;
    }

    while (v8);
  }

  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(v2 + 16);
  *(v2 + 16) = 0x8000000000000000;
  sub_1E130A07C(MEMORY[0x1E69E7CC0], v3, isUniquelyReferenced_nonNull_native);
  *(v2 + 16) = v16;
  swift_endAccess();
}

Swift::Bool __swiftcall BootstrapPendingClosuresHandler.hasClosures(pending:)(AppStoreKit::BootstrapPhase pending)
{
  v2 = *pending;
  swift_beginAccess();
  if (*(*(v1 + 16) + 16) && (sub_1E130A768(v2), (v3 & 1) != 0))
  {
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    v4 = MEMORY[0x1E69E7CC0];
  }

  v5 = *(v4 + 16);

  return v5 != 0;
}

uint64_t BootstrapPendingClosuresHandler.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void sub_1E14843D0(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1E1969054(v2);
  }

  v3 = v2[2];
  v21[0] = (v2 + 4);
  v21[1] = v3;
  v4 = sub_1E1AF741C();
  if (v4 >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 9;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          v13 = v12[3];
          if (*(v12 - 3) >= v13)
          {
            break;
          }

          v14 = *(v12 + 48);
          v15 = *(v12 + 1);
          v16 = *(v12 - 3);
          *(v12 + 1) = *(v12 - 5);
          v17 = *(v12 + 2);
          *(v12 + 3) = v16;
          *(v12 + 5) = *(v12 - 1);
          *(v12 - 5) = v15;
          *(v12 - 3) = v13;
          *(v12 - 1) = v17;
          *v12 = v14;
          v12 -= 6;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 6;
        --v9;
      }
    }
  }

  else
  {
    v5 = v4;
    v6 = (v3 >> 1);
    if (v3 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2778, &qword_1E1B0D950);
      v7 = sub_1E1AF628C();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v19[0] = (v7 + 32);
    v19[1] = v6;
    sub_1E1484544(v19, v20, v21, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
}

void sub_1E1484544(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v98 = *a1;
    if (!*a1)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_122:
      v7 = sub_1E1968F00(v7);
    }

    v89 = v7 + 16;
    v90 = *(v7 + 2);
    if (v90 >= 2)
    {
      while (*a3)
      {
        v91 = &v7[16 * v90];
        v92 = *v91;
        v93 = &v89[2 * v90];
        v94 = v93[1];
        sub_1E1484B0C((*a3 + 48 * *v91), (*a3 + 48 * *v93), (*a3 + 48 * v94), v98);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v94 < v92)
        {
          goto LABEL_114;
        }

        if (v90 - 2 >= *v89)
        {
          goto LABEL_115;
        }

        *v91 = v92;
        *(v91 + 1) = v94;
        v95 = *v89 - v90;
        if (*v89 < v90)
        {
          goto LABEL_116;
        }

        v90 = *v89 - 1;
        memmove(v93, v93 + 2, 16 * v95);
        *v89 = v90;
        if (v90 <= 1)
        {
          goto LABEL_97;
        }
      }

      goto LABEL_126;
    }

LABEL_97:

    return;
  }

  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  v96 = a4;
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*a3 + 48 * v6 + 16);
      v10 = 48 * v8;
      v11 = *a3 + 48 * v8;
      v12 = *(v11 + 16);
      v13 = v8 + 2;
      v14 = (v11 + 64);
      while (v5 != v13)
      {
        v15 = *v14;
        v16 = v14[6];
        v14 += 6;
        ++v13;
        if (v12 < v9 == v15 >= v16)
        {
          v6 = v13 - 1;
          if (v12 >= v9)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v12 >= v9)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_119;
      }

      if (v8 < v6)
      {
        v17 = 48 * v6 - 48;
        v18 = v6;
        v19 = v8;
        do
        {
          if (v19 != --v18)
          {
            v28 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v20 = (v28 + v10);
            v21 = *(v28 + v10 + 32);
            v22 = (v28 + v17);
            v23 = *(v20 + 40);
            v25 = *v20;
            v24 = v20[1];
            v27 = v22[1];
            v26 = v22[2];
            *v20 = *v22;
            v20[1] = v27;
            v20[2] = v26;
            *v22 = v25;
            v22[1] = v24;
            *(v22 + 4) = v21;
            *(v22 + 40) = v23;
          }

          ++v19;
          v17 -= 48;
          v10 += 48;
        }

        while (v19 < v18);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_118;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_120;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v6 < v8)
    {
      goto LABEL_117;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_1E172D878(0, *(v7 + 2) + 1, 1, v7);
    }

    v42 = *(v7 + 2);
    v41 = *(v7 + 3);
    v43 = v42 + 1;
    if (v42 >= v41 >> 1)
    {
      v7 = sub_1E172D878((v41 > 1), v42 + 1, 1, v7);
    }

    *(v7 + 2) = v43;
    v44 = v7 + 32;
    v45 = &v7[16 * v42 + 32];
    *v45 = v8;
    *(v45 + 1) = v6;
    v98 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if (v42)
    {
      while (1)
      {
        v46 = v43 - 1;
        if (v43 >= 4)
        {
          break;
        }

        if (v43 == 3)
        {
          v47 = *(v7 + 4);
          v48 = *(v7 + 5);
          v57 = __OFSUB__(v48, v47);
          v49 = v48 - v47;
          v50 = v57;
LABEL_57:
          if (v50)
          {
            goto LABEL_104;
          }

          v63 = &v7[16 * v43];
          v65 = *v63;
          v64 = *(v63 + 1);
          v66 = __OFSUB__(v64, v65);
          v67 = v64 - v65;
          v68 = v66;
          if (v66)
          {
            goto LABEL_106;
          }

          v69 = &v44[16 * v46];
          v71 = *v69;
          v70 = *(v69 + 1);
          v57 = __OFSUB__(v70, v71);
          v72 = v70 - v71;
          if (v57)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v67, v72))
          {
            goto LABEL_111;
          }

          if (v67 + v72 >= v49)
          {
            if (v49 < v72)
            {
              v46 = v43 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v43 < 2)
        {
          goto LABEL_112;
        }

        v73 = &v7[16 * v43];
        v75 = *v73;
        v74 = *(v73 + 1);
        v57 = __OFSUB__(v74, v75);
        v67 = v74 - v75;
        v68 = v57;
LABEL_72:
        if (v68)
        {
          goto LABEL_108;
        }

        v76 = &v44[16 * v46];
        v78 = *v76;
        v77 = *(v76 + 1);
        v57 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v57)
        {
          goto LABEL_110;
        }

        if (v79 < v67)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v46 - 1 >= v43)
        {
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v84 = &v44[16 * v46 - 16];
        v85 = *v84;
        v86 = &v44[16 * v46];
        v87 = *(v86 + 1);
        sub_1E1484B0C((*a3 + 48 * *v84), (*a3 + 48 * *v86), (*a3 + 48 * v87), v98);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v87 < v85)
        {
          goto LABEL_99;
        }

        if (v46 > *(v7 + 2))
        {
          goto LABEL_100;
        }

        *v84 = v85;
        *(v84 + 1) = v87;
        v88 = *(v7 + 2);
        if (v46 >= v88)
        {
          goto LABEL_101;
        }

        v43 = v88 - 1;
        memmove(&v44[16 * v46], v86 + 16, 16 * (v88 - 1 - v46));
        *(v7 + 2) = v88 - 1;
        if (v88 <= 2)
        {
          goto LABEL_3;
        }
      }

      v51 = &v44[16 * v43];
      v52 = *(v51 - 8);
      v53 = *(v51 - 7);
      v57 = __OFSUB__(v53, v52);
      v54 = v53 - v52;
      if (v57)
      {
        goto LABEL_102;
      }

      v56 = *(v51 - 6);
      v55 = *(v51 - 5);
      v57 = __OFSUB__(v55, v56);
      v49 = v55 - v56;
      v50 = v57;
      if (v57)
      {
        goto LABEL_103;
      }

      v58 = &v7[16 * v43];
      v60 = *v58;
      v59 = *(v58 + 1);
      v57 = __OFSUB__(v59, v60);
      v61 = v59 - v60;
      if (v57)
      {
        goto LABEL_105;
      }

      v57 = __OFADD__(v49, v61);
      v62 = v49 + v61;
      if (v57)
      {
        goto LABEL_107;
      }

      if (v62 >= v54)
      {
        v80 = &v44[16 * v46];
        v82 = *v80;
        v81 = *(v80 + 1);
        v57 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v57)
        {
          goto LABEL_113;
        }

        if (v49 < v83)
        {
          v46 = v43 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    a4 = v96;
    if (v6 >= v5)
    {
      goto LABEL_88;
    }
  }

  v29 = *a3;
  v30 = *a3 + 48 * v6 - 48;
  v31 = v8 - v6;
LABEL_30:
  v32 = v31;
  v33 = v30;
  while (1)
  {
    v34 = *(v33 + 64);
    if (*(v33 + 16) >= v34)
    {
LABEL_29:
      ++v6;
      v30 += 48;
      --v31;
      if (v6 != v5)
      {
        goto LABEL_30;
      }

      v6 = v5;
      goto LABEL_37;
    }

    if (!v29)
    {
      break;
    }

    v35 = *(v33 + 72);
    v36 = *(v33 + 16);
    v38 = *(v33 + 32);
    v37 = *(v33 + 48);
    *(v33 + 48) = *v33;
    *(v33 + 64) = v36;
    v39 = *(v33 + 88);
    *(v33 + 80) = v38;
    *v33 = v37;
    *(v33 + 16) = v34;
    *(v33 + 24) = v35;
    *(v33 + 40) = v39;
    v33 -= 48;
    if (__CFADD__(v32++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
}

uint64_t sub_1E1484B0C(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 48;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 48;
  if (v9 < v11)
  {
    v12 = 48 * v9;
    if (a4 != __dst || &__dst[v12] <= a4)
    {
      memmove(a4, __dst, v12);
    }

    v13 = &v4[v12];
    if (v8 < 48)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (*(v4 + 2) < *(v6 + 2))
      {
        break;
      }

      v14 = v4;
      v15 = v7 == v4;
      v4 += 48;
      if (!v15)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 48;
      if (v4 >= v13)
      {
        goto LABEL_6;
      }
    }

    v14 = v6;
    v15 = v7 == v6;
    v6 += 48;
    if (v15)
    {
      goto LABEL_9;
    }

LABEL_8:
    v16 = *v14;
    v17 = *(v14 + 2);
    *(v7 + 1) = *(v14 + 1);
    *(v7 + 2) = v17;
    *v7 = v16;
    goto LABEL_9;
  }

  v18 = 48 * v11;
  if (a4 != __src || &__src[v18] <= a4)
  {
    memmove(a4, __src, 48 * v11);
  }

  v13 = &v4[v18];
  if (v10 >= 48 && v6 > v7)
  {
LABEL_20:
    v5 -= 48;
    do
    {
      v19 = v5 + 48;
      if (*(v6 - 4) < *(v13 - 4))
      {
        v23 = v6 - 48;
        if (v19 != v6)
        {
          v24 = *v23;
          v25 = *(v6 - 1);
          *(v5 + 1) = *(v6 - 2);
          *(v5 + 2) = v25;
          *v5 = v24;
        }

        if (v13 <= v4 || (v6 -= 48, v23 <= v7))
        {
          v6 = v23;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      v20 = v13 - 48;
      if (v19 != v13)
      {
        v21 = *v20;
        v22 = *(v13 - 1);
        *(v5 + 1) = *(v13 - 2);
        *(v5 + 2) = v22;
        *v5 = v21;
      }

      v5 -= 48;
      v13 -= 48;
    }

    while (v20 > v4);
    v13 = v20;
  }

LABEL_31:
  v26 = 48 * ((v13 - v4) / 48);
  if (v6 != v4 || v6 >= &v4[v26])
  {
    memmove(v6, v4, v26);
  }

  return 1;
}

uint64_t sub_1E1484D38(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(__n128), uint64_t a5)
{
  v52 = a5;
  v53 = a4;
  v51 = a1;
  v7 = sub_1E1AF0FBC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v45[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_1E1AF0F7C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v45[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v45[-v16];
  v19.n128_f64[0] = MEMORY[0x1EEE9AC00](v18);
  v21 = &v45[-v20];
  if (!a2 || (a3 & 1) == 0)
  {
    return v53(v19);
  }

  v48 = v7;
  if (qword_1EE1F7BE0 != -1)
  {
    swift_once();
  }

  v22 = sub_1E1AF0FAC();
  v23 = __swift_project_value_buffer(v22, qword_1EE1F7BE8);
  sub_1E1AF0F8C();
  sub_1E1AF0F4C();

  v49 = v23;
  v24 = sub_1E1AF0F8C();
  v46 = sub_1E1AF6A1C();

  v25 = sub_1E1AF6D6C();
  v47 = v8;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v50 = v12;
    v28 = v27;
    v54 = v27;
    *v26 = 136315138;
    *(v26 + 4) = sub_1E1972EA0(v51, a2, &v54);
    v29 = sub_1E1AF0F5C();
    _os_signpost_emit_with_name_impl(&dword_1E12FC000, v24, v46, v29, "PendingBootstrap", "%s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v28);
    v30 = v28;
    v12 = v50;
    MEMORY[0x1E6901640](v30, -1, -1);
    MEMORY[0x1E6901640](v26, -1, -1);
  }

  (*(v12 + 16))(v17, v21, v11);
  sub_1E1AF0FEC();
  swift_allocObject();
  sub_1E1AF0FDC();
  v33 = *(v12 + 8);
  v31 = v12 + 8;
  v32 = v33;
  v34 = v33(v21, v11);
  (v53)(v34);
  v35 = sub_1E1AF0F8C();
  sub_1E1AF0FCC();
  v36 = sub_1E1AF6A0C();
  if (sub_1E1AF6D6C())
  {

    sub_1E1AF0FFC();

    v38 = v47;
    v37 = v48;
    v39 = (*(v47 + 88))(v10, v48);
    v40 = *MEMORY[0x1E69E93E8];
    v50 = v31;
    if (v39 == v40)
    {
      v41 = "[Error] Interval already ended";
    }

    else
    {
      (*(v38 + 8))(v10, v37);
      v41 = "";
    }

    v43 = swift_slowAlloc();
    *v43 = 0;
    v44 = sub_1E1AF0F5C();
    _os_signpost_emit_with_name_impl(&dword_1E12FC000, v35, v36, v44, "PendingBootstrap", v41, v43, 2u);
    MEMORY[0x1E6901640](v43, -1, -1);

    return v32(v14, v11);
  }

  else
  {

    return v32(v14, v11);
  }
}

uint64_t sub_1E14851C8(uint64_t a1, unint64_t a2, char a3, uint64_t (*a4)(__n128), uint64_t a5)
{
  v52 = a5;
  v53 = a4;
  v51 = a1;
  v7 = sub_1E1AF0FBC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v45[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_1E1AF0F7C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v45[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v45[-v16];
  v19.n128_f64[0] = MEMORY[0x1EEE9AC00](v18);
  v21 = &v45[-v20];
  if (!a2 || (a3 & 1) == 0)
  {
    return v53(v19);
  }

  v48 = v7;
  if (qword_1EE1F7BE0 != -1)
  {
    swift_once();
  }

  v22 = sub_1E1AF0FAC();
  v23 = __swift_project_value_buffer(v22, qword_1EE1F7BE8);
  sub_1E1AF0F8C();
  sub_1E1AF0F4C();

  v49 = v23;
  v24 = sub_1E1AF0F8C();
  v46 = sub_1E1AF6A1C();

  v25 = sub_1E1AF6D6C();
  v47 = v8;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v50 = v12;
    v28 = v27;
    v54 = v27;
    *v26 = 136315138;
    *(v26 + 4) = sub_1E1972EA0(v51, a2, &v54);
    v29 = sub_1E1AF0F5C();
    _os_signpost_emit_with_name_impl(&dword_1E12FC000, v24, v46, v29, "PendingBootstrap", "%s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v28);
    v30 = v28;
    v12 = v50;
    MEMORY[0x1E6901640](v30, -1, -1);
    MEMORY[0x1E6901640](v26, -1, -1);
  }

  (*(v12 + 16))(v17, v21, v11);
  sub_1E1AF0FEC();
  swift_allocObject();
  sub_1E1AF0FDC();
  v33 = *(v12 + 8);
  v31 = v12 + 8;
  v32 = v33;
  v34 = v33(v21, v11);
  (v53)(v34);
  v35 = sub_1E1AF0F8C();
  sub_1E1AF0FCC();
  v36 = sub_1E1AF6A0C();
  if (sub_1E1AF6D6C())
  {

    sub_1E1AF0FFC();

    v38 = v47;
    v37 = v48;
    v39 = (*(v47 + 88))(v10, v48);
    v40 = *MEMORY[0x1E69E93E8];
    v50 = v31;
    if (v39 == v40)
    {
      v41 = "[Error] Interval already ended";
    }

    else
    {
      (*(v38 + 8))(v10, v37);
      v41 = "";
    }

    v43 = swift_slowAlloc();
    *v43 = 0;
    v44 = sub_1E1AF0F5C();
    _os_signpost_emit_with_name_impl(&dword_1E12FC000, v35, v36, v44, "PendingBootstrap", v41, v43, 2u);
    MEMORY[0x1E6901640](v43, -1, -1);

    return v32(v14, v11);
  }

  else
  {

    return v32(v14, v11);
  }
}

uint64_t OfferItem.badge.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit9OfferItem_badge);

  return v1;
}

uint64_t OfferItem.subtitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit9OfferItem_subtitle);

  return v1;
}

uint64_t OfferItem.description.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit9OfferItem_description);

  return v1;
}

uint64_t OfferItem.formattedEndDateString.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit9OfferItem_formattedEndDateString);

  return v1;
}

uint64_t OfferItem.endDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit9OfferItem_endDate;
  v4 = sub_1E1AEFE6C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t OfferItem.children.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2530, &qword_1E1B2D580);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1E1B02CC0;
  v2 = *(v0 + OBJC_IVAR____TtC11AppStoreKit9OfferItem_offerLockup);
  *(v1 + 56) = type metadata accessor for Lockup(0);
  *(v1 + 64) = sub_1E14876CC(qword_1EE1E4F68, type metadata accessor for Lockup, &protocol conformance descriptor for Lockup);
  *(v1 + 32) = v2;

  return v1;
}

uint64_t OfferItem.__allocating_init(id:moduleArtwork:moduleVideo:iapArtwork:mediaOverlayStyle:title:subtitle:description:formattedEndDateString:badge:offerLockup:supportsStreamlinedBuy:endDate:clickAction:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unsigned __int8 a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v52 = a8;
  v53 = a1;
  v56 = a18;
  v55 = a16;
  v54 = a15;
  v50 = a7;
  v51 = a14;
  v48 = a17;
  v49 = a13;
  v47 = a12;
  v46 = sub_1E1AEFEAC();
  v45 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v44 = &v44 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = swift_allocObject();
  v26 = *a5;
  *(v25 + OBJC_IVAR____TtC11AppStoreKit9OfferItem_moduleArtwork) = a2;
  *(v25 + OBJC_IVAR____TtC11AppStoreKit9OfferItem_moduleVideo) = a3;
  *(v25 + OBJC_IVAR____TtC11AppStoreKit9OfferItem_iapArtwork) = a4;
  *(v25 + OBJC_IVAR____TtC11AppStoreKit9OfferItem_mediaOverlayStyle) = v26;
  *(v25 + OBJC_IVAR____TtC11AppStoreKit9OfferItem_title) = a6;
  v27 = (v25 + OBJC_IVAR____TtC11AppStoreKit9OfferItem_subtitle);
  v28 = v52;
  *v27 = v50;
  v27[1] = v28;
  v29 = (v25 + OBJC_IVAR____TtC11AppStoreKit9OfferItem_description);
  *v29 = a9;
  v29[1] = a10;
  v30 = (v25 + OBJC_IVAR____TtC11AppStoreKit9OfferItem_formattedEndDateString);
  *v30 = a11;
  v30[1] = v47;
  v31 = (v25 + OBJC_IVAR____TtC11AppStoreKit9OfferItem_badge);
  v32 = v48;
  v33 = v51;
  *v31 = v49;
  v31[1] = v33;
  v34 = v53;
  *(v25 + OBJC_IVAR____TtC11AppStoreKit9OfferItem_offerLockup) = v54;
  *(v25 + OBJC_IVAR____TtC11AppStoreKit9OfferItem_supportsStreamlinedBuy) = v55;
  v35 = OBJC_IVAR____TtC11AppStoreKit9OfferItem_endDate;
  v36 = sub_1E1AEFE6C();
  v37 = *(v36 - 8);
  (*(v37 + 16))(v25 + v35, v32, v36);
  sub_1E134FD1C(v34, v62, &unk_1ECEB5670, qword_1E1B03EC0);
  sub_1E134FD1C(a19, v25 + OBJC_IVAR____TtC11AppStoreKit12AppPromotion_impressionMetrics, &unk_1ECEB1770, &unk_1E1AFED20);
  sub_1E134FD1C(v62, &v59, &unk_1ECEB5670, qword_1E1B03EC0);
  if (*(&v60 + 1))
  {
    v38 = v60;
    *(v25 + 24) = v59;
    *(v25 + 40) = v38;
    *(v25 + 56) = v61;
  }

  else
  {
    v39 = v44;
    sub_1E1AEFE9C();
    v40 = sub_1E1AEFE7C();
    v42 = v41;
    (*(v45 + 8))(v39, v46);
    v57 = v40;
    v58 = v42;
    sub_1E1AF6F6C();
    sub_1E1308058(&v59, &unk_1ECEB5670, qword_1E1B03EC0);
  }

  sub_1E1308058(a19, &unk_1ECEB1770, &unk_1E1AFED20);
  (*(v37 + 8))(v32, v36);
  sub_1E1308058(v34, &unk_1ECEB5670, qword_1E1B03EC0);
  sub_1E1308058(v62, &unk_1ECEB5670, qword_1E1B03EC0);
  *(v25 + 16) = 2;
  *(v25 + OBJC_IVAR____TtC11AppStoreKit12AppPromotion_clickAction) = v56;
  return v25;
}

uint64_t OfferItem.init(id:moduleArtwork:moduleVideo:iapArtwork:mediaOverlayStyle:title:subtitle:description:formattedEndDateString:badge:offerLockup:supportsStreamlinedBuy:endDate:clickAction:impressionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, unsigned __int8 a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v20 = v19;
  v55 = a8;
  v53 = a7;
  v51 = a6;
  v56 = a1;
  v59 = a18;
  v58 = a16;
  v57 = a15;
  v54 = a14;
  v52 = a13;
  v50 = a12;
  v49 = a11;
  v48 = sub_1E1AEFEAC();
  v47 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v26 = &v47 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770, &unk_1E1AFED20);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v29 = &v47 - v28;
  LOBYTE(v28) = *a5;
  *(v20 + OBJC_IVAR____TtC11AppStoreKit9OfferItem_moduleArtwork) = a2;
  *(v20 + OBJC_IVAR____TtC11AppStoreKit9OfferItem_moduleVideo) = a3;
  *(v20 + OBJC_IVAR____TtC11AppStoreKit9OfferItem_iapArtwork) = a4;
  v30 = v29;
  *(v20 + OBJC_IVAR____TtC11AppStoreKit9OfferItem_mediaOverlayStyle) = v28;
  *(v20 + OBJC_IVAR____TtC11AppStoreKit9OfferItem_title) = v51;
  v31 = (v20 + OBJC_IVAR____TtC11AppStoreKit9OfferItem_subtitle);
  v32 = v55;
  *v31 = v53;
  v31[1] = v32;
  v33 = (v20 + OBJC_IVAR____TtC11AppStoreKit9OfferItem_description);
  *v33 = a9;
  v33[1] = a10;
  v34 = (v20 + OBJC_IVAR____TtC11AppStoreKit9OfferItem_formattedEndDateString);
  v35 = v56;
  v36 = v50;
  *v34 = v49;
  v34[1] = v36;
  v37 = (v20 + OBJC_IVAR____TtC11AppStoreKit9OfferItem_badge);
  v38 = v54;
  *v37 = v52;
  v37[1] = v38;
  *(v20 + OBJC_IVAR____TtC11AppStoreKit9OfferItem_offerLockup) = v57;
  *(v20 + OBJC_IVAR____TtC11AppStoreKit9OfferItem_supportsStreamlinedBuy) = v58;
  v39 = OBJC_IVAR____TtC11AppStoreKit9OfferItem_endDate;
  v40 = sub_1E1AEFE6C();
  v41 = *(v40 - 8);
  (*(v41 + 16))(v20 + v39, a17, v40);
  sub_1E134FD1C(v35, v68, &unk_1ECEB5670, qword_1E1B03EC0);
  sub_1E134FD1C(a19, v30, &unk_1ECEB1770, &unk_1E1AFED20);
  sub_1E134FD1C(v68, &v62, &unk_1ECEB5670, qword_1E1B03EC0);
  if (*(&v63 + 1))
  {
    v65 = v62;
    v66 = v63;
    v67 = v64;
  }

  else
  {
    sub_1E1AEFE9C();
    v42 = sub_1E1AEFE7C();
    v44 = v43;
    (*(v47 + 8))(v26, v48);
    v60 = v42;
    v61 = v44;
    sub_1E1AF6F6C();
    sub_1E1308058(&v62, &unk_1ECEB5670, qword_1E1B03EC0);
  }

  sub_1E1308058(a19, &unk_1ECEB1770, &unk_1E1AFED20);
  (*(v41 + 8))(a17, v40);
  sub_1E1308058(v35, &unk_1ECEB5670, qword_1E1B03EC0);
  sub_1E1308058(v68, &unk_1ECEB5670, qword_1E1B03EC0);
  v45 = v66;
  *(v20 + 24) = v65;
  *(v20 + 40) = v45;
  *(v20 + 56) = v67;
  *(v20 + 16) = 2;
  *(v20 + OBJC_IVAR____TtC11AppStoreKit12AppPromotion_clickAction) = v59;
  sub_1E134B7C8(v30, v20 + OBJC_IVAR____TtC11AppStoreKit12AppPromotion_impressionMetrics);
  return v20;
}

uint64_t OfferItem.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v134 = a2;
  v130 = v3;
  v129 = *v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBB780, &unk_1E1B029A0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v120 = &v101 - v6;
  v7 = sub_1E1AEFE6C();
  v122 = *(v7 - 8);
  v123 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v121 = &v101 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = sub_1E1AF39DC();
  v133 = *(v135 - 8);
  MEMORY[0x1EEE9AC00](v135);
  v118 = &v101 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v125 = &v101 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v101 - v13;
  v15 = sub_1E1AF380C();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v117 = &v101 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v119 = &v101 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v124 = &v101 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v128 = &v101 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v101 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v101 - v28;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v101 - v31;
  v33 = a1;
  sub_1E1AF381C();
  v115 = sub_1E1AF37CC();
  v116 = v16;
  v35 = v34;
  v38 = *(v16 + 8);
  v36 = v16 + 8;
  v37 = v38;
  v38(v32, v15);
  v131 = v36;
  v132 = v15;
  if (v35)
  {
    v127 = v35;
    sub_1E1AF381C();
    v111 = sub_1E1AF37CC();
    v40 = v39;
    v37(v29, v15);
    if (v40)
    {
      v113 = v40;
      v36 = 0x636F4C726566666FLL;
      sub_1E1AF381C();
      v41 = sub_1E1AF370C();
      v114 = v37;
      v37(v26, v15);
      v42 = (v133 + 16);
      v105 = v41;
      if (v41)
      {
        type metadata accessor for InAppPurchaseLockup(0);
        v43 = v33;
        sub_1E1AF381C();
        v44 = *v42;
        v45 = v135;
        (*v42)(v14, v134, v135);
        v46 = &qword_1EE1FAB00;
        v47 = type metadata accessor for InAppPurchaseLockup;
      }

      else
      {
        type metadata accessor for Lockup(0);
        v43 = v33;
        sub_1E1AF381C();
        v44 = *v42;
        v45 = v135;
        (*v42)(v14, v134, v135);
        v46 = &qword_1EE1E4F60;
        v47 = type metadata accessor for Lockup;
      }

      sub_1E14876CC(v46, v47, &protocol conformance descriptor for Lockup);
      sub_1E1AF464C();
      if (v136)
      {
        v110 = v44;
        v108 = v136;

        v54 = type metadata accessor for Artwork(0);
        sub_1E1AF381C();
        v55 = v134;
        v56 = v110;
        v110(v14, v134, v135);
        v57 = v42 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
        v58 = v43;
        v107 = sub_1E14876CC(&qword_1EE1E4BB8, type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
        v106 = v54;
        sub_1E1AF464C();
        v112 = v136;
        type metadata accessor for Video(0);
        sub_1E1AF381C();
        v59 = v135;
        v56(v14, v55, v135);
        sub_1E14876CC(&qword_1EE1E52D0, type metadata accessor for Video, &protocol conformance descriptor for Video);
        sub_1E1AF464C();
        v60 = v136;
        v109 = v58;
        sub_1E1AF381C();
        v61 = v55;
        v62 = v55;
        v45 = v59;
        v104 = v57;
        v56(v14, v62, v59);
        sub_1E1AF464C();
        v63 = v136;
        if (!v112 && !v60 && !v136)
        {

          v36 = sub_1E1AF5A7C();
          sub_1E14876CC(&qword_1EE1E3580, MEMORY[0x1E69AB6A8], MEMORY[0x1E69AB6B0]);
          swift_allocError();
          v64 = MEMORY[0x1E69E7CC0];
          *v65 = *v130;
          v65[1] = v64;
          (*(*(v36 - 8) + 104))(v65, *MEMORY[0x1E69AB698], v36);
          swift_willThrow();

          v43 = v109;
          v53 = v61;
LABEL_18:
          v37 = v114;
          goto LABEL_19;
        }

        v107 = v60;
        v68 = v124;
        v43 = v109;
        sub_1E1AF381C();
        v36 = v125;
        v110(v125, v61, v45);
        v69 = v126;
        v70 = sub_1E165AA74(v68, v36);
        if (v69)
        {

          v53 = v61;
          goto LABEL_18;
        }

        v126 = v70;
        v106 = v63;
        v72 = v128;
        sub_1E1AF381C();
        sub_1E14056C8();
        sub_1E1AF369C();
        v73 = v132;
        v74 = v114;
        v114(v72, v132);
        v103 = v136;
        sub_1E1AF381C();
        v124 = sub_1E1AF37CC();
        v125 = v75;
        v74(v72, v73);
        sub_1E1AF381C();
        v102 = sub_1E1AF37CC();
        v77 = v76;
        v74(v72, v73);
        v78 = v119;
        sub_1E1AF381C();
        v79 = v120;
        sub_1E1AF371C();
        v80 = v79;
        v74(v78, v73);
        v81 = v122;
        v82 = v123;
        if ((*(v122 + 48))(v79, 1, v123) != 1)
        {
          v85 = *(v81 + 32);
          v86 = v81;
          v87 = v121;
          v85(v121, v80, v82);
          v88 = v130;
          *(v130 + OBJC_IVAR____TtC11AppStoreKit9OfferItem_moduleArtwork) = v112;
          *(v88 + OBJC_IVAR____TtC11AppStoreKit9OfferItem_moduleVideo) = v107;
          *(v88 + OBJC_IVAR____TtC11AppStoreKit9OfferItem_iapArtwork) = v106;
          *(v88 + OBJC_IVAR____TtC11AppStoreKit9OfferItem_mediaOverlayStyle) = v103;
          *(v88 + OBJC_IVAR____TtC11AppStoreKit9OfferItem_title) = v126;
          v89 = (v88 + OBJC_IVAR____TtC11AppStoreKit9OfferItem_subtitle);
          *v89 = v102;
          v89[1] = v77;
          v90 = (v88 + OBJC_IVAR____TtC11AppStoreKit9OfferItem_description);
          v91 = v113;
          *v90 = v111;
          v90[1] = v91;
          v92 = (v88 + OBJC_IVAR____TtC11AppStoreKit9OfferItem_formattedEndDateString);
          v93 = v125;
          *v92 = v124;
          v92[1] = v93;
          v94 = (v88 + OBJC_IVAR____TtC11AppStoreKit9OfferItem_badge);
          v95 = v127;
          *v94 = v115;
          v94[1] = v95;
          *(v88 + OBJC_IVAR____TtC11AppStoreKit9OfferItem_offerLockup) = v108;
          *(v88 + OBJC_IVAR____TtC11AppStoreKit9OfferItem_supportsStreamlinedBuy) = v105 & 1;
          (*(v86 + 16))(v88 + OBJC_IVAR____TtC11AppStoreKit9OfferItem_endDate, v87, v82);
          v96 = v117;
          v97 = v109;
          (*(v116 + 16))(v117, v109, v132);
          v98 = v118;
          v110(v118, v134, v45);

          v99 = AppPromotion.init(deserializing:using:)(v96, v98);
          v100 = v122;
          v36 = v99;

          (*(v133 + 8))(v134, v45);
          v114(v97, v132);
          (*(v100 + 8))(v121, v123);
          return v36;
        }

        sub_1E1308058(v79, &unk_1ECEBB780, &unk_1E1B029A0);
        v36 = sub_1E1AF5A7C();
        sub_1E14876CC(&qword_1EE1E3580, MEMORY[0x1E69AB6A8], MEMORY[0x1E69AB6B0]);
        swift_allocError();
        *v83 = 0x65746144646E65;
        v84 = v129;
        v83[1] = 0xE700000000000000;
        v83[2] = v84;
        (*(*(v36 - 8) + 104))(v83, *MEMORY[0x1E69AB690], v36);
        swift_willThrow();

        v43 = v109;
      }

      else
      {

        v66 = sub_1E1AF5A7C();
        sub_1E14876CC(&qword_1EE1E3580, MEMORY[0x1E69AB6A8], MEMORY[0x1E69AB6B0]);
        swift_allocError();
        *v67 = 0x636F4C726566666FLL;
        v67[1] = 0xEB0000000070756BLL;
        v67[2] = v129;
        (*(*(v66 - 8) + 104))(v67, *MEMORY[0x1E69AB690], v66);
        swift_willThrow();
      }

      v53 = v134;
      goto LABEL_18;
    }

    v48 = sub_1E1AF5A7C();
    sub_1E14876CC(&qword_1EE1E3580, MEMORY[0x1E69AB6A8], MEMORY[0x1E69AB6B0]);
    swift_allocError();
    v50 = v49;
    *v49 = 0x7470697263736564;
    v51 = 0xEB000000006E6F69;
  }

  else
  {
    v48 = sub_1E1AF5A7C();
    sub_1E14876CC(&qword_1EE1E3580, MEMORY[0x1E69AB6A8], MEMORY[0x1E69AB6B0]);
    swift_allocError();
    v50 = v49;
    *v49 = 0x6567646162;
    v51 = 0xE500000000000000;
  }

  v52 = v129;
  v49[1] = v51;
  v49[2] = v52;
  (*(*(v48 - 8) + 104))(v50, *MEMORY[0x1E69AB690], v48);
  swift_willThrow();
  v43 = v33;
  v53 = v134;
  v45 = v135;
LABEL_19:
  (*(v133 + 8))(v53, v45);
  v37(v43, v132);
  swift_deallocPartialClassInstance();
  return v36;
}

uint64_t sub_1E1487324()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit9OfferItem_endDate;
  v2 = sub_1E1AEFE6C();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t OfferItem.deinit()
{
  sub_1E134B88C(v0 + 24);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit12AppPromotion_impressionMetrics, &unk_1ECEB1770, &unk_1E1AFED20);

  v1 = OBJC_IVAR____TtC11AppStoreKit9OfferItem_endDate;
  v2 = sub_1E1AEFE6C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t OfferItem.__deallocating_deinit()
{
  OfferItem.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1E14875C4()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2530, &qword_1E1B2D580);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1E1B02CC0;
  v3 = *(v1 + OBJC_IVAR____TtC11AppStoreKit9OfferItem_offerLockup);
  *(v2 + 56) = type metadata accessor for Lockup(0);
  *(v2 + 64) = sub_1E14876CC(qword_1EE1E4F68, type metadata accessor for Lockup, &protocol conformance descriptor for Lockup);
  *(v2 + 32) = v3;

  return v2;
}

uint64_t sub_1E1487674(uint64_t a1)
{
  result = sub_1E14876CC(&qword_1ECEB4620, type metadata accessor for OfferItem, &protocol conformance descriptor for AppPromotion);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1E14876CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for OfferItem(uint64_t a1)
{
  result = qword_1ECEB4628;
  if (!qword_1ECEB4628)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E1487768(uint64_t a1)
{
  result = sub_1E1AEFE6C();
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

uint64_t sub_1E1487954(unint64_t a1, uint64_t (*a2)(uint64_t))
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = a2(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = v5 + 16 * a1;
    v10 = *(v9 + 32);
    memmove((v9 + 32), (v9 + 48), 16 * (v7 - 1 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
    return v10;
  }

  return result;
}

uint64_t sub_1E14879E8(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1E14E69A4(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_1E1487A74@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1E14E6A30(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v5 + 136 * a1;
    v9 = *(v8 + 144);
    v10 = v7 - 1;
    *(a2 + 96) = *(v8 + 128);
    *(a2 + 112) = v9;
    *(a2 + 128) = *(v8 + 160);
    v11 = *(v8 + 80);
    *(a2 + 32) = *(v8 + 64);
    *(a2 + 48) = v11;
    v12 = *(v8 + 112);
    *(a2 + 64) = *(v8 + 96);
    *(a2 + 80) = v12;
    v13 = *(v8 + 48);
    *a2 = *(v8 + 32);
    *(a2 + 16) = v13;
    result = memmove((v8 + 32), (v8 + 168), 136 * (v7 - 1 - a1));
    *(v5 + 16) = v10;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1E1487B2C(unint64_t a1, uint64_t (*a2)(uint64_t))
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v5 < 0 || (v5 & 0x4000000000000000) != 0)
  {
    result = a2(v5);
    v5 = result;
  }

  v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v5 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v5 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v7 - 1 - a1));
    *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) = v8;
    *v2 = v5;
    return v9;
  }

  return result;
}

uint64_t sub_1E1487BF0@<X0>(unint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, void (*a3)(uint64_t, uint64_t)@<X2>, uint64_t a4@<X8>)
{
  v9 = *v4;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = a2(v9);
    v9 = result;
  }

  v11 = *(v9 + 16);
  if (v11 <= a1)
  {
    __break(1u);
  }

  else
  {
    v12 = v11 - 1;
    v13 = v9 + 40 * a1;
    a3(v13 + 32, a4);
    result = memmove((v13 + 32), (v13 + 72), 40 * (v12 - a1));
    *(v9 + 16) = v12;
    *v4 = v9;
  }

  return result;
}

uint64_t CompoundItemSupplementaryProvider.__allocating_init(children:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

double CompoundItemSupplementaryProvider.children.getter()
{
  swift_beginAccess();

  return result;
}

uint64_t CompoundItemSupplementaryProvider.addChild(_:)(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v4 = result;
    swift_beginAccess();
    v5 = *(v2 + 16);
    swift_unknownObjectRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + 16) = v5;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v5 = sub_1E172E278(0, v5[2] + 1, 1, v5);
      *(v2 + 16) = v5;
    }

    v8 = v5[2];
    v7 = v5[3];
    if (v8 >= v7 >> 1)
    {
      v5 = sub_1E172E278((v7 > 1), v8 + 1, 1, v5);
    }

    v5[2] = v8 + 1;
    v9 = &v5[2 * v8];
    v9[4] = v4;
    v9[5] = a2;
    *(v2 + 16) = v5;
    return swift_endAccess();
  }

  return result;
}

void CompoundItemSupplementaryProvider.removeChild(_:)(uint64_t a1)
{
  if (a1)
  {
    swift_beginAccess();
    v3 = *(v1 + 16);
    v4 = *(v3 + 16);
    if (v4)
    {
      v5 = 0;
      for (i = (v3 + 32); *i != a1; i += 2)
      {
        if (v4 == ++v5)
        {
          return;
        }
      }

      swift_beginAccess();
      swift_unknownObjectRetain();
      sub_1E1487954(v5, sub_1E14E6968);
      swift_endAccess();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }
  }
}

Swift::Void __swiftcall CompoundItemSupplementaryProvider.removeAllChildren()()
{
  swift_beginAccess();
  *(v0 + 16) = MEMORY[0x1E69E7CC0];
}

uint64_t CompoundItemSupplementaryProvider.supplementaryItems(for:asPartOf:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  v9[2] = a1;
  v9[3] = a2;

  sub_1E1487F9C(sub_1E1488CDC, v9, v5);
  v7 = v6;

  return v7;
}

void sub_1E1487F9C(void (*a1)(uint64_t *__return_ptr, __int128 *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v31 = *(a3 + 16);
  if (!v31)
  {
    return;
  }

  v5 = 0;
  v6 = MEMORY[0x1E69E7CC0];
  v30 = a3 + 32;
  while (1)
  {
    v36 = *(v30 + 16 * v5);
    swift_unknownObjectRetain();
    v7 = v4;
    a1(&v37, &v36);
    if (v4)
    {

      swift_unknownObjectRelease();
      return;
    }

    swift_unknownObjectRelease();
    v8 = v37;
    v9 = v37 >> 62;
    if (v37 >> 62)
    {
      v10 = sub_1E1AF71CC();
    }

    else
    {
      v10 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v11 = v6 >> 62;
    if (v6 >> 62)
    {
      v28 = sub_1E1AF71CC();
      v13 = v28 + v10;
      if (__OFADD__(v28, v10))
      {
LABEL_33:
        __break(1u);
        return;
      }
    }

    else
    {
      v12 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v13 = v12 + v10;
      if (__OFADD__(v12, v10))
      {
        goto LABEL_33;
      }
    }

    v34 = v10;
    if (swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (!v11)
      {
        v14 = v6 & 0xFFFFFFFFFFFFFF8;
        if (v13 <= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_17;
        }

        goto LABEL_16;
      }

LABEL_15:
      sub_1E1AF71CC();
      goto LABEL_16;
    }

    if (v11)
    {
      goto LABEL_15;
    }

LABEL_16:
    v6 = sub_1E1AF706C();
    v14 = v6 & 0xFFFFFFFFFFFFFF8;
LABEL_17:
    v15 = *(v14 + 16);
    v16 = *(v14 + 24);
    if (v9)
    {
      break;
    }

    v17 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v17)
    {
      goto LABEL_3;
    }

LABEL_21:
    if (((v16 >> 1) - v15) < v34)
    {
      goto LABEL_38;
    }

    v33 = v6;
    v20 = v14 + 8 * v15 + 32;
    v29 = v14;
    if (v9)
    {
      if (v17 < 1)
      {
        goto LABEL_40;
      }

      sub_1E1488E20(&qword_1ECEB4670, &qword_1ECEB4668, qword_1E1B0DAB0);
      for (i = 0; i != v17; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4668, qword_1E1B0DAB0);
        v22 = sub_1E1545F34(v35, i, v8);
        v24 = *v23;
        (v22)(v35, 0);
        *(v20 + 8 * i) = v24;
      }
    }

    else
    {
      sub_1E13006E4(0, &unk_1EE1E32D8, 0x1E6995598);
      swift_arrayInitWithCopy();
    }

    v4 = v7;
    v6 = v33;
    if (v34 > 0)
    {
      v25 = *(v29 + 16);
      v26 = __OFADD__(v25, v34);
      v27 = v25 + v34;
      if (v26)
      {
        goto LABEL_39;
      }

      *(v29 + 16) = v27;
    }

LABEL_4:
    if (++v5 == v31)
    {
      return;
    }
  }

  v18 = v14;
  v19 = sub_1E1AF71CC();
  v14 = v18;
  v17 = v19;
  if (v19)
  {
    goto LABEL_21;
  }

LABEL_3:

  if (v34 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
}

void sub_1E14882C8(void (*a1)(uint64_t *__return_ptr, __int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return;
  }

  v5 = (a3 + 32);
  v6 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v17 = *v5;
    swift_unknownObjectRetain();
    a1(&v18, &v17);
    if (v3)
    {

      swift_unknownObjectRelease();
      return;
    }

    swift_unknownObjectRelease();
    v7 = v18;
    v8 = *(v18 + 16);
    v9 = v6[2];
    v10 = v9 + v8;
    if (__OFADD__(v9, v8))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v10 <= v6[3] >> 1)
    {
      if (*(v7 + 16))
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v9 <= v10)
      {
        v12 = v9 + v8;
      }

      else
      {
        v12 = v9;
      }

      v6 = sub_1E172E3C4(isUniquelyReferenced_nonNull_native, v12, 1, v6);
      if (*(v7 + 16))
      {
LABEL_15:
        if ((v6[3] >> 1) - v6[2] < v8)
        {
          goto LABEL_24;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4660, &unk_1E1B2D5C0);
        swift_arrayInitWithCopy();

        if (v8)
        {
          v13 = v6[2];
          v14 = __OFADD__(v13, v8);
          v15 = v13 + v8;
          if (v14)
          {
            goto LABEL_25;
          }

          v6[2] = v15;
        }

        goto LABEL_4;
      }
    }

    if (v8)
    {
      goto LABEL_23;
    }

LABEL_4:
    ++v5;
    if (!--v4)
    {
      return;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
}

void sub_1E1488470(void (*a1)(uint64_t *__return_ptr, __int128 *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v31 = *(a3 + 16);
  if (!v31)
  {
    return;
  }

  v5 = 0;
  v6 = MEMORY[0x1E69E7CC0];
  v30 = a3 + 32;
  while (1)
  {
    v36 = *(v30 + 16 * v5);
    swift_unknownObjectRetain();
    v7 = v4;
    a1(&v37, &v36);
    if (v4)
    {

      swift_unknownObjectRelease();
      return;
    }

    swift_unknownObjectRelease();
    v8 = v37;
    v9 = v37 >> 62;
    if (v37 >> 62)
    {
      v10 = sub_1E1AF71CC();
    }

    else
    {
      v10 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v11 = v6 >> 62;
    if (v6 >> 62)
    {
      v28 = sub_1E1AF71CC();
      v13 = v28 + v10;
      if (__OFADD__(v28, v10))
      {
LABEL_33:
        __break(1u);
        return;
      }
    }

    else
    {
      v12 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v13 = v12 + v10;
      if (__OFADD__(v12, v10))
      {
        goto LABEL_33;
      }
    }

    v34 = v10;
    if (swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (!v11)
      {
        v14 = v6 & 0xFFFFFFFFFFFFFF8;
        if (v13 <= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_17;
        }

        goto LABEL_16;
      }

LABEL_15:
      sub_1E1AF71CC();
      goto LABEL_16;
    }

    if (v11)
    {
      goto LABEL_15;
    }

LABEL_16:
    v6 = sub_1E1AF706C();
    v14 = v6 & 0xFFFFFFFFFFFFFF8;
LABEL_17:
    v15 = *(v14 + 16);
    v16 = *(v14 + 24);
    if (v9)
    {
      break;
    }

    v17 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v17)
    {
      goto LABEL_3;
    }

LABEL_21:
    if (((v16 >> 1) - v15) < v34)
    {
      goto LABEL_38;
    }

    v33 = v6;
    v20 = v14 + 8 * v15 + 32;
    v29 = v14;
    if (v9)
    {
      if (v17 < 1)
      {
        goto LABEL_40;
      }

      sub_1E1488E20(&qword_1ECEB4658, &qword_1ECEB4650, &unk_1E1B0DAA0);
      for (i = 0; i != v17; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4650, &unk_1E1B0DAA0);
        v22 = sub_1E1545F34(v35, i, v8);
        v24 = *v23;
        (v22)(v35, 0);
        *(v20 + 8 * i) = v24;
      }
    }

    else
    {
      sub_1E13006E4(0, &qword_1EE1E32D0, 0x1E6995548);
      swift_arrayInitWithCopy();
    }

    v4 = v7;
    v6 = v33;
    if (v34 > 0)
    {
      v25 = *(v29 + 16);
      v26 = __OFADD__(v25, v34);
      v27 = v25 + v34;
      if (v26)
      {
        goto LABEL_39;
      }

      *(v29 + 16) = v27;
    }

LABEL_4:
    if (++v5 == v31)
    {
      return;
    }
  }

  v18 = v14;
  v19 = sub_1E1AF71CC();
  v14 = v18;
  v17 = v19;
  if (v19)
  {
    goto LABEL_21;
  }

LABEL_3:

  if (v34 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
}

void sub_1E148879C(void (*a1)(uint64_t *__return_ptr, __int128 *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v31 = *(a3 + 16);
  if (!v31)
  {
    return;
  }

  v5 = 0;
  v6 = MEMORY[0x1E69E7CC0];
  v30 = a3 + 32;
  while (1)
  {
    v36 = *(v30 + 16 * v5);
    swift_unknownObjectRetain();
    v7 = v4;
    a1(&v37, &v36);
    if (v4)
    {

      swift_unknownObjectRelease();
      return;
    }

    swift_unknownObjectRelease();
    v8 = v37;
    v9 = v37 >> 62;
    if (v37 >> 62)
    {
      v10 = sub_1E1AF71CC();
    }

    else
    {
      v10 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v11 = v6 >> 62;
    if (v6 >> 62)
    {
      v28 = sub_1E1AF71CC();
      v13 = v28 + v10;
      if (__OFADD__(v28, v10))
      {
LABEL_33:
        __break(1u);
        return;
      }
    }

    else
    {
      v12 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v13 = v12 + v10;
      if (__OFADD__(v12, v10))
      {
        goto LABEL_33;
      }
    }

    v34 = v10;
    if (swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (!v11)
      {
        v14 = v6 & 0xFFFFFFFFFFFFFF8;
        if (v13 <= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_17;
        }

        goto LABEL_16;
      }

LABEL_15:
      sub_1E1AF71CC();
      goto LABEL_16;
    }

    if (v11)
    {
      goto LABEL_15;
    }

LABEL_16:
    v6 = sub_1E1AF706C();
    v14 = v6 & 0xFFFFFFFFFFFFFF8;
LABEL_17:
    v15 = *(v14 + 16);
    v16 = *(v14 + 24);
    if (v9)
    {
      break;
    }

    v17 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v17)
    {
      goto LABEL_3;
    }

LABEL_21:
    if (((v16 >> 1) - v15) < v34)
    {
      goto LABEL_38;
    }

    v33 = v6;
    v20 = v14 + 8 * v15 + 32;
    v29 = v14;
    if (v9)
    {
      if (v17 < 1)
      {
        goto LABEL_40;
      }

      sub_1E1488E20(&qword_1ECEB4648, &qword_1ECEB4640, &qword_1E1B0DA98);
      for (i = 0; i != v17; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4640, &qword_1E1B0DA98);
        v22 = sub_1E1545F34(v35, i, v8);
        v24 = *v23;
        (v22)(v35, 0);
        *(v20 + 8 * i) = v24;
      }
    }

    else
    {
      sub_1E13006E4(0, &unk_1EE1E3310, 0x1E6995550);
      swift_arrayInitWithCopy();
    }

    v4 = v7;
    v6 = v33;
    if (v34 > 0)
    {
      v25 = *(v29 + 16);
      v26 = __OFADD__(v25, v34);
      v27 = v25 + v34;
      if (v26)
      {
        goto LABEL_39;
      }

      *(v29 + 16) = v27;
    }

LABEL_4:
    if (++v5 == v31)
    {
      return;
    }
  }

  v18 = v14;
  v19 = sub_1E1AF71CC();
  v14 = v18;
  v17 = v19;
  if (v19)
  {
    goto LABEL_21;
  }

LABEL_3:

  if (v34 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
}

void CompoundItemSupplementaryProvider.supplementaryRegistration(for:in:asPartOf:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  swift_beginAccess();
  v7 = *(v5 + 16);
  v8 = *(v7 + 16);

  if (v8)
  {
    v9 = 0;
    v10 = (v7 + 40);
    while (v9 < *(v7 + 16))
    {
      v11 = *v10;
      ObjectType = swift_getObjectType();
      v13 = *(v11 + 16);
      swift_unknownObjectRetain();
      v13(&v18, a1, a2, a3, a4, ObjectType, v11);
      swift_unknownObjectRelease();
      if (v19)
      {

        sub_1E1308EC0(&v18, a5);
        return;
      }

      ++v9;
      sub_1E1488CF4(&v18);
      v10 += 2;
      if (v8 == v9)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:

    *(a5 + 32) = 0;
    *a5 = 0u;
    *(a5 + 16) = 0u;
  }
}

uint64_t CompoundItemSupplementaryProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1E1488C4C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  v9[2] = a1;
  v9[3] = a2;

  sub_1E1487F9C(sub_1E1488E74, v9, v5);
  v7 = v6;

  return v7;
}

uint64_t sub_1E1488CF4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4638, &qword_1E1B0DA20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E1488DAC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6 = *(a1 + 8);
  ObjectType = swift_getObjectType();
  result = (*(v6 + 8))(v5, v4, ObjectType, v6);
  *a2 = result;
  return result;
}

uint64_t sub_1E1488E20(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_1E1488E8C(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    if (a2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2E18, &unk_1E1B05240);
      v4 = sub_1E1AF628C();
      *(v4 + 16) = a2;
      v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2E18, &unk_1E1B05240) - 8);
      v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      sub_1E134FD1C(v3, v4 + v6, &qword_1ECEB2E18, &unk_1E1B05240);
      v7 = a2 - 1;
      if (a2 != 1)
      {
        v8 = *(v5 + 72);
        v9 = v4 + v8 + v6;
        do
        {
          sub_1E134FD1C(v3, v9, &qword_1ECEB2E18, &unk_1E1B05240);
          v9 += v8;
          --v7;
        }

        while (v7);
      }
    }

    else
    {
      v4 = MEMORY[0x1E69E7CC0];
    }

    sub_1E148BA54(v3);
    return v4;
  }

  return result;
}

id static ComponentLayoutBuilder.columnGroup(separatedBy:itemHeight:groupWidth:rowCount:)(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v8 = objc_opt_self();
  v9 = [v8 fractionalWidthDimension_];
  v10 = &selRef_remoteDownloadIdentifiersDidChange_;
  v11 = [v8 absoluteDimension_];
  v12 = objc_opt_self();
  v13 = [v12 sizeWithWidthDimension:v9 heightDimension:v11];

  v14 = objc_opt_self();
  v15 = [v14 itemWithLayoutSize_];
  v16 = a3 + a4;
  if (a3 <= COERCE_DOUBLE(1) || a2 < 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6170, &qword_1E1B06D90);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_1E1B06D70;
    *(v27 + 32) = v15;
    v28 = v15;
  }

  else
  {
    v35 = a1;
    v17 = [v8 fractionalWidthDimension_];
    v18 = [v8 absoluteDimension_];
    v19 = [v12 &selRef_displayGamut + 6];

    v10 = &selRef_remoteDownloadIdentifiersDidChange_;
    v20 = [v14 itemWithLayoutSize_];
    v21 = a2 * a4;
    v22 = a2 - 1;
    v16 = v21 + v22 * a3;
    v23 = v20;
    sub_1E1489B90(v23, v22);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB6170, &qword_1E1B06D90);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1E1B06D70;
    *(inited + 32) = v15;
    v25 = v15;
    v26 = inited;
    a1 = v35;
    sub_1E17284E0(v26);
  }

  v29 = [v8 v10[244]];
  v30 = [v12 &selRef_displayGamut + 6];

  v31 = objc_opt_self();
  sub_1E13006E4(0, &qword_1EE1E3398, 0x1E6995578);
  v32 = sub_1E1AF620C();

  v33 = [v31 verticalGroupWithLayoutSize:v30 subitems:v32];

  return v33;
}

void static ComponentLayoutBuilder.verticalLayoutHorizontalSubgroups(for:withItemHeights:useEstimatedHeights:in:itemSupplementaryProvider:asPartOf:)(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = (a4 + *(type metadata accessor for ShelfLayoutContext(0) + 28));
  v10 = v9[35];
  if ((*&v10 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_48;
  }

  if (v10 <= -9.22337204e18)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  if (v10 >= 9.22337204e18)
  {
LABEL_50:
    __break(1u);
    return;
  }

  v11 = v9[36];
  v12 = v9[3];
  v13 = v9[42];
  v14 = v9[44];
  v15 = v10;
  v16 = MEMORY[0x1E69E7CC0];
  if (!v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2750, &qword_1E1B02BC0);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1E1B02CC0;
    *(v19 + 32) = a2;

    v60 = 0;
    v74 = v16;
    v66 = 1;
    goto LABEL_8;
  }

  v17 = a2[2];

  sub_1E148A2E8(0, v17, v15, v15, a2);
  v19 = v18;

  v74 = v16;
  v66 = *(v19 + 16);
  if (v66)
  {
    v60 = 0;
LABEL_8:
    v20 = v12 - (v13 + v14);
    v72 = objc_opt_self();
    v71 = objc_opt_self();
    v63 = objc_opt_self();
    v61 = a7;
    v62 = objc_opt_self();
    v21 = 0;
    v22 = 0;
    v23 = v9[39];
    v64 = v19;
    v65 = v19 + 32;
    while (1)
    {
      if (v22 >= *(v19 + 16))
      {
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

      v67 = v22;
      v24 = *(v65 + 8 * v22);
      v73 = v16;
      v25 = *(v24 + 16);
      if (v25)
      {
        break;
      }

      v27 = 0.0;
      v40 = v16;
      if (!(v16 >> 62))
      {
        goto LABEL_25;
      }

LABEL_36:
      v41 = sub_1E1AF71CC();
      if (!v41)
      {
LABEL_37:

        goto LABEL_38;
      }

LABEL_26:
      sub_1E1AF70EC();
      if (v41 < 0)
      {
        goto LABEL_47;
      }

      v42 = objc_opt_self();
      v43 = 0;
      do
      {
        if ((v40 & 0xC000000000000001) != 0)
        {
          v45 = MEMORY[0x1E68FFD80](v43, v40);
        }

        else
        {
          v45 = *(v40 + 8 * v43 + 32);
        }

        v46 = v45;
        v47 = [v45 layoutSize];
        v48 = [v47 widthDimension];

        v49 = [v72 absoluteDimension_];
        v50 = [v71 sizeWithWidthDimension:v48 heightDimension:v49];

        v51 = [v46 supplementaryItems];
        if (!v51)
        {
          sub_1E13006E4(0, &unk_1EE1E32D8, 0x1E6995598);
          sub_1E1AF621C();
          v51 = sub_1E1AF620C();
        }

        ++v43;
        v44 = [v42 itemWithLayoutSize:v50 supplementaryItems:v51];

        sub_1E1AF70BC();
        sub_1E1AF70FC();
        sub_1E1AF710C();
        sub_1E1AF70CC();
      }

      while (v41 != v43);

      a7 = v61;
      v16 = MEMORY[0x1E69E7CC0];
LABEL_38:
      v52 = [v72 absoluteDimension_];
      v53 = &selRef_estimatedDimension_;
      if ((a3 & 1) == 0)
      {
        v53 = &selRef_absoluteDimension_;
      }

      v54 = [v72 *v53];
      v55 = [v71 sizeWithWidthDimension:v52 heightDimension:v54];

      sub_1E13006E4(0, &qword_1EE1E3398, 0x1E6995578);
      v56 = sub_1E1AF620C();

      v57 = [v63 horizontalGroupWithLayoutSize:v55 subitems:v56];

      v58 = [v62 fixedSpacing_];
      [v57 setInterItemSpacing_];

      v59 = v57;
      MEMORY[0x1E68FEF20]();
      v19 = v64;
      if (*((v74 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v74 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1E1AF625C();
      }

      v22 = v67 + 1;
      sub_1E1AF62AC();

      if (v67 + 1 == v66)
      {
        goto LABEL_43;
      }
    }

    v26 = *(a1 + 16);

    v27 = 0.0;
    v28 = 32;
    do
    {
      v29 = *(v24 + v28);
      v30 = [v72 absoluteDimension_];
      v31 = &selRef_estimatedDimension_;
      if ((a3 & 1) == 0)
      {
        v31 = &selRef_absoluteDimension_;
      }

      v32 = [v72 *v31];
      v33 = [v71 sizeWithWidthDimension:v30 heightDimension:v32];

      if (v21 < 0 || v21 >= v26)
      {
        v38 = [objc_opt_self() itemWithLayoutSize_];
      }

      else
      {
        ObjectType = swift_getObjectType();
        v35 = *(type metadata accessor for ItemLayoutContext(0) - 8);
        (*(a6 + 8))(a1 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v21, a7, ObjectType);
        sub_1E13006E4(0, &unk_1EE1E32D8, 0x1E6995598);
        v36 = v33;
        v37 = sub_1E1AF620C();

        v38 = [objc_opt_self() itemWithLayoutSize:v36 supplementaryItems:v37];
      }

      v39 = v38;
      MEMORY[0x1E68FEF20]();
      if (*((v73 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v73 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1E1AF625C();
      }

      sub_1E1AF62AC();

      if (v21 == 0x7FFFFFFFFFFFFFFFLL)
      {
        __break(1u);
        goto LABEL_46;
      }

      ++v21;
      if (v27 <= v29)
      {
        v27 = v29;
      }

      v28 += 8;
      --v25;
    }

    while (v25);
    v40 = v73;

    v16 = MEMORY[0x1E69E7CC0];
    if (v73 >> 62)
    {
      goto LABEL_36;
    }

LABEL_25:
    v41 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v41)
    {
      goto LABEL_37;
    }

    goto LABEL_26;
  }

LABEL_43:
}

void *sub_1E1489B90(void *result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v3 = result;
    sub_1E13006E4(0, &qword_1EE1E3398, 0x1E6995578);
    v4 = sub_1E1AF628C();
    v5 = v4 & 0xFFFFFFFFFFFFFF8;
    *(v5 + 16) = a2;
    *(v5 + 32) = v3;
    v6 = a2 - 1;
    if (v6)
    {
      v7 = (v5 + 40);
      do
      {
        *v7++ = v3;
        v8 = v3;
        --v6;
      }

      while (v6);
    }

    v9 = v3;
    return v4;
  }

  return result;
}

void *sub_1E1489C2C(void *result, uint64_t a2, uint64_t a3)
{
  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a3)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v4 = result;
    v6 = sub_1E1AF628C();
    v7 = v6;
    v6[2] = a3;
    v6[4] = v4;
    v6[5] = a2;
    v8 = a3 - 1;
    if (v8)
    {
      v9 = v6 + 7;
      do
      {
        *(v9 - 1) = v4;
        *v9 = a2;

        v9 += 2;
        --v8;
      }

      while (v8);
    }

    return v7;
  }

  return result;
}

uint64_t sub_1E1489CC8(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v3 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4678, "n\t\b");
    v4 = sub_1E1AF628C();
    v5 = v4;
    *(v4 + 16) = a2;
    v7 = *(v3 + 16);
    v6 = *(v3 + 32);
    v8 = *v3;
    *(v4 + 80) = *(v3 + 48);
    *(v4 + 48) = v7;
    *(v4 + 64) = v6;
    *(v4 + 32) = v8;
    v9 = a2 - 1;
    if (a2 != 1)
    {
      v10 = v4 + 88;
      do
      {
        sub_1E134FD1C(v3, v14, &qword_1ECEB4678, "n\t\b");
        v11 = *v3;
        v12 = *(v3 + 16);
        v13 = *(v3 + 32);
        *(v10 + 48) = *(v3 + 48);
        *(v10 + 16) = v12;
        *(v10 + 32) = v13;
        *v10 = v11;
        v10 += 56;
        --v9;
      }

      while (v9);
    }

    sub_1E134FD1C(v3, v14, &qword_1ECEB4678, "n\t\b");
    return v5;
  }

  return result;
}

void sub_1E1489DCC(int64_t a1, int64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a2;
  v8 = a1;
  v9 = 0;
  v10 = a1;
  while (1)
  {
    v11 = v10 <= a2;
    if (a3 > 0)
    {
      v11 = v10 >= a2;
    }

    if (v11)
    {
      break;
    }

    v12 = __OFADD__(v10, a3);
    v10 += a3;
    if (v12)
    {
      v10 = (v10 >> 63) ^ 0x8000000000000000;
    }

    v12 = __OFADD__(v9++, 1);
    if (v12)
    {
      __break(1u);
      break;
    }
  }

  v44 = MEMORY[0x1E69E7CC0];
  sub_1E135C5C0(0, v9, 0);
  v43 = v7;
  if (v9)
  {
    v13 = a5[2];
    v14 = a4;
    while (1)
    {
      v15 = v8 <= v7;
      if (a3 > 0)
      {
        v15 = v8 >= v7;
      }

      if (v15)
      {
        break;
      }

      if (__OFADD__(v8, a3))
      {
        v16 = ((v8 + a3) >> 63) ^ 0x8000000000000000;
      }

      else
      {
        v16 = v8 + a3;
      }

      v17 = v8 + v14;
      if (__OFADD__(v8, v14))
      {
        goto LABEL_70;
      }

      if (v13 < v17)
      {
        v17 = v13;
      }

      v18 = v17 - v8;
      if (v17 < v8)
      {
        goto LABEL_71;
      }

      if (v8 < 0)
      {
        goto LABEL_72;
      }

      if (v13 == v18)
      {

        v19 = a5;
      }

      else
      {
        v19 = MEMORY[0x1E69E7CC0];
        if (v17 != v8)
        {
          if (v18 >= 1)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2710, qword_1E1B0DB20);
            v22 = *(type metadata accessor for ItemLayoutContext(0) - 8);
            v38 = (*(v22 + 80) + 32) & ~*(v22 + 80);
            v40 = *(v22 + 72);
            v19 = swift_allocObject();
            v23 = _swift_stdlib_malloc_size(v19);
            if (!v40)
            {
              goto LABEL_76;
            }

            if (v23 - v38 == 0x8000000000000000 && v40 == -1)
            {
              goto LABEL_78;
            }

            v19[2] = v18;
            v19[3] = 2 * ((v23 - v38) / v40);
          }

          type metadata accessor for ItemLayoutContext(0);
          swift_arrayInitWithCopy();
          v14 = a4;
        }
      }

      v21 = *(v44 + 16);
      v20 = *(v44 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_1E135C5C0((v20 > 1), v21 + 1, 1);
        v14 = a4;
      }

      *(v44 + 16) = v21 + 1;
      *(v44 + 8 * v21 + 32) = v19;
      v8 = v16;
      --v9;
      v7 = v43;
      if (!v9)
      {
        goto LABEL_39;
      }
    }

    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
  }

  else
  {
    v16 = v8;
    v14 = a4;
LABEL_39:
    v25 = v16 <= v7;
    if (a3 > 0)
    {
      v25 = v16 >= v7;
    }

    if (v25)
    {
      return;
    }

    v26 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v27 = __OFADD__(v16, a3) ? ((v16 + a3) >> 63) ^ 0x8000000000000000 : v16 + a3;
      v28 = v16 + v14;
      if (__OFADD__(v16, v14))
      {
        break;
      }

      v29 = a5[2];
      if (v29 < v28)
      {
        v28 = a5[2];
      }

      v30 = v28 - v16;
      if (v28 < v16)
      {
        goto LABEL_74;
      }

      if (v16 < 0)
      {
        goto LABEL_75;
      }

      if (v29 == v30)
      {

        v31 = a5;
      }

      else
      {
        v31 = v26;
        if (v28 != v16)
        {
          if (v30 < 1)
          {
            v31 = v26;
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2710, qword_1E1B0DB20);
            v35 = *(type metadata accessor for ItemLayoutContext(0) - 8);
            v39 = (*(v35 + 80) + 32) & ~*(v35 + 80);
            v41 = *(v35 + 72);
            v31 = swift_allocObject();
            v36 = _swift_stdlib_malloc_size(v31);
            if (!v41)
            {
              goto LABEL_77;
            }

            if (v36 - v39 == 0x8000000000000000 && v41 == -1)
            {
              goto LABEL_79;
            }

            v31[2] = v30;
            v31[3] = 2 * ((v36 - v39) / v41);
          }

          type metadata accessor for ItemLayoutContext(0);
          swift_arrayInitWithCopy();
          v14 = a4;
        }
      }

      v33 = *(v44 + 16);
      v32 = *(v44 + 24);
      if (v33 >= v32 >> 1)
      {
        sub_1E135C5C0((v32 > 1), v33 + 1, 1);
        v14 = a4;
      }

      *(v44 + 16) = v33 + 1;
      *(v44 + 8 * v33 + 32) = v31;
      v34 = v27 <= v43;
      if (a3 > 0)
      {
        v34 = v27 >= v43;
      }

      v16 = v27;
      if (v34)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
}

void sub_1E148A2E8(int64_t a1, int64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a2;
  v8 = a1;
  v9 = 0;
  v10 = a1;
  while (1)
  {
    v11 = v10 <= a2;
    if (a3 > 0)
    {
      v11 = v10 >= a2;
    }

    if (v11)
    {
      break;
    }

    v12 = __OFADD__(v10, a3);
    v10 += a3;
    if (v12)
    {
      v10 = (v10 >> 63) ^ 0x8000000000000000;
    }

    v12 = __OFADD__(v9++, 1);
    if (v12)
    {
      __break(1u);
      break;
    }
  }

  v38 = MEMORY[0x1E69E7CC0];
  sub_1E135C600(0, v9, 0);
  __n = v7;
  if (v9)
  {
    v13 = a5[2];
    v14 = a4;
    while (1)
    {
      v15 = v8 <= v7;
      if (a3 > 0)
      {
        v15 = v8 >= v7;
      }

      if (v15)
      {
        break;
      }

      if (__OFADD__(v8, a3))
      {
        v16 = ((v8 + a3) >> 63) ^ 0x8000000000000000;
      }

      else
      {
        v16 = v8 + a3;
      }

      v17 = v8 + v14;
      if (__OFADD__(v8, v14))
      {
        goto LABEL_63;
      }

      if (v13 < v17)
      {
        v17 = v13;
      }

      v18 = v17 - v8;
      if (v17 < v8)
      {
        goto LABEL_64;
      }

      if (v8 < 0)
      {
        goto LABEL_65;
      }

      if (v13 == v18)
      {

        v19 = a5;
      }

      else
      {
        v19 = MEMORY[0x1E69E7CC0];
        if (v17 != v8)
        {
          if (v18 < 1)
          {
            v23 = 8 * v18;
            v19 = MEMORY[0x1E69E7CC0];
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2690, &qword_1E1B02AE8);
            v19 = swift_allocObject();
            v22 = _swift_stdlib_malloc_size(v19);
            v23 = 8 * v18;
            v24 = v22 - 32;
            if (v22 < 32)
            {
              v24 = v22 - 25;
            }

            v19[2] = v18;
            v19[3] = 2 * (v24 >> 3);
          }

          memcpy(v19 + 4, &a5[v8 + 4], v23);
          v14 = a4;
        }
      }

      v21 = *(v38 + 16);
      v20 = *(v38 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_1E135C600((v20 > 1), v21 + 1, 1);
        v14 = a4;
      }

      *(v38 + 16) = v21 + 1;
      *(v38 + 8 * v21 + 32) = v19;
      v8 = v16;
      --v9;
      v7 = __n;
      if (!v9)
      {
        goto LABEL_37;
      }
    }

    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v16 = v8;
  v14 = a4;
LABEL_37:
  v25 = v16 <= v7;
  if (a3 > 0)
  {
    v25 = v16 >= v7;
  }

  if (!v25)
  {
    while (1)
    {
      v26 = __OFADD__(v16, a3) ? ((v16 + a3) >> 63) ^ 0x8000000000000000 : v16 + a3;
      v27 = v16 + v14;
      if (__OFADD__(v16, v14))
      {
        break;
      }

      v28 = a5[2];
      if (v28 < v27)
      {
        v27 = a5[2];
      }

      v29 = v27 - v16;
      if (v27 < v16)
      {
        goto LABEL_67;
      }

      if (v16 < 0)
      {
        goto LABEL_68;
      }

      if (v28 == v29)
      {

        v30 = a5;
      }

      else
      {
        v30 = MEMORY[0x1E69E7CC0];
        if (v27 != v16)
        {
          if (v29 >= 1)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2690, &qword_1E1B02AE8);
            v30 = swift_allocObject();
            v34 = _swift_stdlib_malloc_size(v30);
            v35 = v34 - 32;
            if (v34 < 32)
            {
              v35 = v34 - 25;
            }

            v30[2] = v29;
            v30[3] = 2 * (v35 >> 3);
          }

          memcpy(v30 + 4, &a5[v16 + 4], 8 * v29);
          v14 = a4;
        }
      }

      v32 = *(v38 + 16);
      v31 = *(v38 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_1E135C600((v31 > 1), v32 + 1, 1);
        v14 = a4;
      }

      *(v38 + 16) = v32 + 1;
      *(v38 + 8 * v32 + 32) = v30;
      v33 = v26 <= __n;
      if (a3 > 0)
      {
        v33 = v26 >= __n;
      }

      v16 = v26;
      if (v33)
      {
        return;
      }
    }

LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
  }
}

id sub_1E148A668(void *a1, char **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7)
{
  v85 = a6;
  v86 = a5;
  v89 = a4;
  v13 = type metadata accessor for ItemLayoutContext(0);
  v75 = *(v13 - 8);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[2];
  swift_getKeyPath(byte_1E1B0DB00, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB48C0, &qword_1E1B02690);
  sub_1E1AF3DAC();

  v18 = v91;
  if (v91 >= v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = v91;
  }

  v20 = a3 + *(type metadata accessor for ShelfLayoutContext(0) + 28);
  v21 = *(v20 + 288);
  v22 = objc_opt_self();
  v23 = [v22 fractionalWidthDimension_];
  v24 = &selRef_estimatedDimension_;
  v82 = a2;
  if ((a2 & 1) == 0)
  {
    v24 = &selRef_absoluteDimension_;
  }

  v25 = *v24;
  v81 = v22;
  v26 = [v22 v25];
  v80 = objc_opt_self();
  v87 = [v80 sizeWithWidthDimension:v23 heightDimension:v26];

  if (__OFSUB__(v19, 1))
  {
LABEL_34:
    __break(1u);
LABEL_35:
    sub_1E1AF625C();
LABEL_14:
    sub_1E1AF62AC();

    goto LABEL_30;
  }

  v27 = v19 * a7;
  a7 = *(v20 + 320);
  v8 = v27 + a7 * (v19 - 1);
  v91 = MEMORY[0x1E69E7CC0];
  v7 = &selRef_remoteDownloadIdentifiersDidChange_;
  a2 = &selRef_remoteDownloadIdentifiersDidChange_;
  if (!v17)
  {
    v30 = [objc_opt_self() itemWithLayoutSize_];
    sub_1E1489B90(v30, v19);

    v31 = v81;
    v32 = [v81 absoluteDimension_];
    v33 = &selRef_estimatedDimension_;
    if ((v82 & 1) == 0)
    {
      v33 = &selRef_absoluteDimension_;
    }

    v34 = [v31 *v33];
    v16 = [v80 sizeWithWidthDimension:v32 heightDimension:v34];

    v35 = objc_opt_self();
    sub_1E13006E4(0, &qword_1EE1E3398, 0x1E6995578);
    v36 = sub_1E1AF620C();

    v37 = [v35 verticalGroupWithLayoutSize:v16 subitems:v36];

    v38 = [objc_opt_self() fixedSpacing_];
    [v37 setInterItemSpacing_];

    v17 = v37;
    MEMORY[0x1E68FEF20]();
    if (*((v91 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v91 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_14;
    }

    goto LABEL_35;
  }

  if (!v18)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2760, &qword_1E1B02BD0);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_1E1B02CC0;
    *(v29 + 32) = a1;

    v73 = 0;
    v79 = 1;
LABEL_16:
    v78 = objc_opt_self();
    v39 = objc_opt_self();
    v17 = 0;
    v76 = v29 + 32;
    v77 = v39;
    v88 = (v86 + 8);
    v40 = MEMORY[0x1E69E7CC0];
    v74 = v29;
    while (v17 < *(v29 + 16))
    {
      v84 = v17;
      v41 = *(v76 + 8 * v17);
      v90 = v40;
      v42 = *(v41 + 16);
      if (v42)
      {
        v43 = objc_opt_self();
        ObjectType = swift_getObjectType();
        v45 = *v88;
        v46 = v75;
        v47 = v41 + ((*(v75 + 80) + 32) & ~*(v75 + 80));
        v83 = v41;

        v48 = *(v46 + 72);
        do
        {
          sub_1E148BABC(v47, v16);
          v45(v16, v85, ObjectType, v86);
          sub_1E148BB20(v16);
          sub_1E13006E4(0, &unk_1EE1E32D8, 0x1E6995598);
          v49 = v87;
          v50 = sub_1E1AF620C();

          v51 = [v43 itemWithLayoutSize:v49 supplementaryItems:v50];

          v52 = v51;
          MEMORY[0x1E68FEF20]();
          if (*((v90 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v90 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1E1AF625C();
          }

          sub_1E1AF62AC();

          v47 += v48;
          --v42;
        }

        while (v42);

        a2 = &selRef_remoteDownloadIdentifiersDidChange_;
        v7 = &selRef_remoteDownloadIdentifiersDidChange_;
        v40 = MEMORY[0x1E69E7CC0];
        v29 = v74;
      }

      v53 = v81;
      v54 = [v81 absoluteDimension_];
      v55 = &selRef_estimatedDimension_;
      if ((v82 & 1) == 0)
      {
        v55 = &selRef_absoluteDimension_;
      }

      v56 = [v53 *v55];
      v57 = [v80 sizeWithWidthDimension:v54 heightDimension:v56];

      sub_1E13006E4(0, &qword_1EE1E3398, 0x1E6995578);
      v58 = sub_1E1AF620C();

      v59 = [v78 verticalGroupWithLayoutSize:v57 subitems:v58];

      v60 = [v77 v7[253]];
      [v59 a2[254]];

      v61 = v59;
      MEMORY[0x1E68FEF20]();
      if (*((v91 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v91 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1E1AF625C();
      }

      v17 = v84 + 1;
      sub_1E1AF62AC();

      if (v17 == v79)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
    goto LABEL_34;
  }

  sub_1E1489DCC(0, v17, v19, v19, a1);
  v29 = v28;
  v73 = 0;

  v79 = *(v29 + 16);
  if (v79)
  {
    goto LABEL_16;
  }

LABEL_29:

LABEL_30:
  v62 = v81;
  v63 = [v81 absoluteDimension_];
  v64 = &selRef_estimatedDimension_;
  if ((v82 & 1) == 0)
  {
    v64 = &selRef_absoluteDimension_;
  }

  v65 = [v62 *v64];
  v66 = [v80 sizeWithWidthDimension:v63 heightDimension:v65];

  v67 = objc_opt_self();
  sub_1E13006E4(0, &qword_1EE1E3398, 0x1E6995578);
  v68 = sub_1E1AF620C();

  v69 = [v67 horizontalGroupWithLayoutSize:v66 subitems:v68];

  v70 = [objc_opt_self() v7[253]];
  [v69 a2[254]];

  return v69;
}

id sub_1E148AF90(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = a3;
  v11 = (a4 + *(type metadata accessor for ShelfLayoutContext(0) + 28));
  v12 = v11[35];
  if ((*&v12 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_60;
  }

  if (v12 <= -9.22337204e18)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  if (v12 >= 9.22337204e18)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v7 = v11[36];
  v13 = v11[3];
  v14 = v11[42];
  v15 = v12;
  v16 = v11[44];
  v17 = MEMORY[0x1E69E7CC0];
  if (!v12)
  {
    v81 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2750, &qword_1E1B02BC0);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1E1B02CC0;
    *(v20 + 32) = a2;

    v80 = 0;
    v96 = v17;
    v86 = 1;
    goto LABEL_8;
  }

  v18 = a2[2];

  sub_1E148A2E8(0, v18, v15, v15, a2);
  v20 = v19;
  v80 = 0;

  v96 = v17;
  v86 = *(v20 + 16);
  if (v86)
  {
    v81 = v11;
LABEL_8:
    v21 = v13 - (v14 + v16);
    v94 = objc_opt_self();
    v93 = objc_opt_self();
    v83 = objc_opt_self();
    v82 = objc_opt_self();
    v22 = 0;
    v23 = 0;
    v24 = v81[39];
    v85 = v20 + 32;
    v8 = 0.0;
    v25 = &selRef_remoteDownloadIdentifiersDidChange_;
    v26 = MEMORY[0x1E69E7CC0];
    v84 = v20;
    while (1)
    {
      if (v23 >= *(v20 + 16))
      {
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
        goto LABEL_61;
      }

      v87 = v23;
      v27 = *(v85 + 8 * v23);
      v95 = v26;
      v28 = *(v27 + 16);
      if (v28)
      {
        break;
      }

      v30 = 0.0;
      v42 = v26;
      if (!(v26 >> 62))
      {
        goto LABEL_25;
      }

LABEL_38:
      v58 = v42;
      v43 = sub_1E1AF71CC();
      v42 = v58;
      if (!v43)
      {
LABEL_39:

        goto LABEL_40;
      }

LABEL_26:
      v44 = v42;
      sub_1E1AF70EC();
      if (v43 < 0)
      {
        goto LABEL_59;
      }

      v45 = objc_opt_self();
      v46 = 0;
      v47 = v44;
      v91 = v44 & 0xC000000000000001;
      v92 = v45;
      v48 = v44;
      do
      {
        if (v91)
        {
          v50 = MEMORY[0x1E68FFD80](v46, v47);
        }

        else
        {
          v50 = *(v47 + 8 * v46 + 32);
        }

        v51 = v50;
        v52 = [v50 v25[248]];
        v53 = [v52 widthDimension];

        v54 = &selRef_absoluteDimension_;
        if (v9)
        {
          v54 = &selRef_estimatedDimension_;
        }

        v55 = [v94 *v54];
        v56 = [v93 sizeWithWidthDimension:v53 heightDimension:v55];

        v57 = [v51 supplementaryItems];
        if (!v57)
        {
          sub_1E13006E4(0, &unk_1EE1E32D8, 0x1E6995598);
          sub_1E1AF621C();
          v57 = sub_1E1AF620C();
          v25 = &selRef_remoteDownloadIdentifiersDidChange_;
        }

        ++v46;
        v49 = [v92 itemWithLayoutSize:v56 supplementaryItems:v57];

        sub_1E1AF70BC();
        sub_1E1AF70FC();
        sub_1E1AF710C();
        sub_1E1AF70CC();
        v47 = v48;
      }

      while (v43 != v46);

      v26 = MEMORY[0x1E69E7CC0];
LABEL_40:
      v59 = [v94 absoluteDimension_];
      v60 = &selRef_estimatedDimension_;
      if ((v9 & 1) == 0)
      {
        v60 = &selRef_absoluteDimension_;
      }

      v11 = [v94 *v60];
      v61 = [v93 sizeWithWidthDimension:v59 heightDimension:v11];

      sub_1E13006E4(0, &qword_1EE1E3398, 0x1E6995578);
      v62 = sub_1E1AF620C();

      v63 = [v83 horizontalGroupWithLayoutSize:v61 subitems:v62];

      v64 = [v82 fixedSpacing_];
      [v63 setInterItemSpacing_];

      v65 = v63;
      MEMORY[0x1E68FEF20]();
      if (*((v96 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v96 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1E1AF625C();
      }

      v23 = v87 + 1;
      sub_1E1AF62AC();

      v8 = v8 + v30;
      v20 = v84;
      v25 = &selRef_remoteDownloadIdentifiersDidChange_;
      if (v87 + 1 == v86)
      {
        v66 = v96;

        v11 = v81;
        goto LABEL_47;
      }
    }

    v29 = *(a1 + 16);

    v30 = 0.0;
    v31 = 32;
    do
    {
      v32 = *(v27 + v31);
      v33 = [v94 absoluteDimension_];
      v34 = &selRef_estimatedDimension_;
      if ((v9 & 1) == 0)
      {
        v34 = &selRef_absoluteDimension_;
      }

      v35 = [v94 *v34];
      v36 = [v93 sizeWithWidthDimension:v33 heightDimension:v35];

      if (v22 < 0 || v22 >= v29)
      {
        v40 = [objc_opt_self() itemWithLayoutSize_];
      }

      else
      {
        ObjectType = swift_getObjectType();
        v38 = *(type metadata accessor for ItemLayoutContext(0) - 8);
        (*(a6 + 8))(a1 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v22, a7, ObjectType);
        sub_1E13006E4(0, &unk_1EE1E32D8, 0x1E6995598);
        v11 = v36;
        v39 = sub_1E1AF620C();

        v40 = [objc_opt_self() itemWithLayoutSize:v11 supplementaryItems:v39];
      }

      v41 = v40;
      MEMORY[0x1E68FEF20]();
      if (*((v95 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v95 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v11 = *((v95 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1E1AF625C();
      }

      sub_1E1AF62AC();

      if (v22 == 0x7FFFFFFFFFFFFFFFLL)
      {
        __break(1u);
        goto LABEL_58;
      }

      ++v22;
      if (v30 <= v32)
      {
        v30 = v32;
      }

      v31 += 8;
      --v28;
    }

    while (v28);

    v42 = v95;
    v26 = MEMORY[0x1E69E7CC0];
    v25 = &selRef_remoteDownloadIdentifiersDidChange_;
    if (v95 >> 62)
    {
      goto LABEL_38;
    }

LABEL_25:
    v43 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v43)
    {
      goto LABEL_39;
    }

    goto LABEL_26;
  }

  v66 = MEMORY[0x1E69E7CC0];
  v8 = 0.0;
LABEL_47:
  v7 = v11[40];
  v11 = (v66 >> 62);
  if (!(v66 >> 62))
  {
    v67 = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_49;
  }

LABEL_63:
  v67 = sub_1E1AF71CC();
LABEL_49:
  v68 = v67 + -1.0;
  if (v68 < 0.0)
  {
    v68 = 0.0;
  }

  v69 = v8 + v7 * v68;
  v70 = objc_opt_self();
  v71 = [v70 fractionalWidthDimension_];
  v72 = &selRef_absoluteDimension_;
  if (v9)
  {
    v72 = &selRef_estimatedDimension_;
  }

  v73 = [v70 *v72];
  v74 = [objc_opt_self() sizeWithWidthDimension:v71 heightDimension:v73];

  if (v11)
  {
    sub_1E13006E4(0, &qword_1EE1E3398, 0x1E6995578);

    sub_1E1AF720C();
  }

  else
  {

    sub_1E1AF74DC();
    sub_1E13006E4(0, &qword_1EE1E3398, 0x1E6995578);
  }

  v75 = objc_opt_self();
  sub_1E13006E4(0, &qword_1EE1E3398, 0x1E6995578);
  v76 = sub_1E1AF620C();

  v77 = [v75 verticalGroupWithLayoutSize:v74 subitems:v76];

  v78 = [objc_opt_self() fixedSpacing_];
  [v77 setInterItemSpacing_];

  return v77;
}

uint64_t sub_1E148BA54(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2E18, &unk_1E1B05240);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E148BABC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ItemLayoutContext(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E148BB20(uint64_t a1)
{
  v2 = type metadata accessor for ItemLayoutContext(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E148BBAC@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, uint8x8_t a3@<D0>)
{
  v3 = *(result + 4);
  v4 = *(result + 5);
  if (v3 == 2)
  {
    v5 = 2;
  }

  else
  {
    v5 = v3 == 3;
  }

  a3.i32[0] = *result;
  v6 = vmovl_u8(a3).u64[0];
  v7 = vceq_s16(v6, 0x3000300030003);
  v8 = vceq_s16(v6, 0x2000200020002);
  v9 = vsub_s16(vand_s8(v8, 0x2000200020002), vbic_s8(v7, v8));
  *a2 = vuzp1_s8(v9, v9).u32[0];
  if (v4 == 2)
  {
    v10 = 2;
  }

  else
  {
    v10 = v4 == 3;
  }

  *(a2 + 4) = v5;
  *(a2 + 5) = v10;
  return result;
}

int8x16_t OfferButtonPresenterViewTheme.init(style:environment:tint:)@<Q0>(unsigned __int8 *a1@<X0>, unsigned __int8 *a2@<X1>, int8x16_t *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  if (v4 == 7)
  {
    LOBYTE(v4) = 0;
  }

  if (v5 == 16)
  {
    LOBYTE(v5) = 0;
  }

  *a4 = v4;
  v6 = *a3;
  v7 = vdup_n_s32(a3->i64[0] == 3);
  *(a4 + 1) = v5;
  v8.i64[0] = v7.u32[0];
  v8.i64[1] = v7.u32[1];
  result = vandq_s8(v6, vcgezq_s64(vshlq_n_s64(v8, 0x3FuLL)));
  *(a4 + 8) = result;
  return result;
}

void sub_1E148BC58()
{
  word_1ECEB4680 = 5;
  qword_1ECEB4688 = 0;
  qword_1ECEB4690 = 0;
}

id static OfferButtonPresenterViewTheme.disabled.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECEB0DE8 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v2 = qword_1ECEB4688;
  v3 = qword_1ECEB4690;
  *a1 = word_1ECEB4680;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;

  return sub_1E139D580(v2, v3);
}

void sub_1E148BCEC()
{
  word_1EE1E8778 = 2;
  qword_1EE1E8780 = 0;
  unk_1EE1E8788 = 0;
}

id static OfferButtonPresenterViewTheme.blueColored.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EE1E8770 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v2 = qword_1EE1E8780;
  v3 = unk_1EE1E8788;
  *a1 = word_1EE1E8778;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;

  return sub_1E139D580(v2, v3);
}

id OfferButtonPresenterViewTheme.tint.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = v2;
  a1[1] = v3;
  return sub_1E139D580(v2, v3);
}

id OfferButtonPresenterViewTheme.replacing(style:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(v2 + 1);
  v5 = *(v2 + 8);
  v6 = *(v2 + 16);
  *a2 = v3;
  *(a2 + 1) = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  return sub_1E139D580(v5, v6);
}

uint64_t static OfferButtonSubtitlePosition.positionWithLayoutDirection(_:whenUsing:)@<X0>(uint64_t result@<X0>, char *a2@<X1>, _BYTE *a3@<X8>)
{
  v3 = *a2;
  if (v3 == 3)
  {
    v4 = 2;
  }

  else
  {
    v4 = *a2;
  }

  if (v3 == 2)
  {
    v5 = 3;
  }

  else
  {
    v5 = v4;
  }

  if (result == 1)
  {
    LOBYTE(v3) = v5;
  }

  *a3 = v3;
  return result;
}

uint64_t static OfferButtonSubtitlePosition.alignment(whenUsing:in:)(char *a1, void *a2)
{
  swift_getObjectType();

  return sub_1E148BE74(a1, a2);
}

AppStoreKit::OfferButtonSubtitlePosition_optional __swiftcall OfferButtonSubtitlePosition.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

AppStoreKit::OfferButtonPresenterViewAlignment_optional __swiftcall OfferButtonPresenterViewAlignment.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_1E148BE74(char *a1, id a2)
{
  v2 = *a1;
  v3 = [a2 traitCollection];
  v4 = [v3 layoutDirection];

  v5 = &unk_1E1B0DDE8;
  if (v4 == 1)
  {
    v5 = &unk_1E1B0DDC8;
  }

  return v5[v2];
}

unint64_t sub_1E148BEF0()
{
  result = qword_1EE1D7478[0];
  if (!qword_1EE1D7478[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE1D7478);
  }

  return result;
}

unint64_t sub_1E148BF48()
{
  result = qword_1EE1D5CB8[0];
  if (!qword_1EE1D5CB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE1D5CB8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_11AppStoreKit9OfferTintO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1E148BFB4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 24))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 3;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1E148C014(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_1E148C278()
{
  v0 = sub_1E1AF58EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E1AF591C();
  __swift_allocate_value_buffer(v4, qword_1ECEF43D0);
  __swift_project_value_buffer(v4, qword_1ECEF43D0);
  if (qword_1EE1E3588 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_1EE2160F8);
  (*(v1 + 16))(v3, v5, v0);
  return sub_1E1AF590C();
}

uint64_t sub_1E148C3CC()
{
  v1 = *(*(v0 + qword_1ECEB46A0) + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = sub_1E154713C();
  v3 = sub_1E1547130();

  sub_1E1337ECC(v5);
  if (v3 != v1)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v2;
}

uint64_t sub_1E148C490@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB46B8, &qword_1E1B0DE50);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v64 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v63 = &v54 - v7;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB62E0, qword_1E1B1ADF0);
  MEMORY[0x1EEE9AC00](v62);
  v61 = &v54 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60, &unk_1E1B02620);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v76 = &v54 - v10;
  v73 = sub_1E1AEF88C();
  v70 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v12 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_1E1AEF86C();
  v13 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v74 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v72 = &v54 - v16;
  v65 = sub_1E1AEF89C();
  v17 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v19 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB46C0, &qword_1E1B0DE58);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v54 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3B50, "~9\b");
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = &v54 - v24;
  v26 = sub_1E1AEF91C();
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v66 = &v54 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 1) == 0)
  {
    return sub_1E134FD1C(v71 + qword_1ECEB4698, a2, &qword_1ECEB3B50, "~9\b");
  }

  v30 = v19;
  v31 = a2;
  v32 = v28;
  sub_1E134FD1C(v71 + qword_1ECEB4698, v25, &qword_1ECEB3B50, "~9\b");
  if ((*(v27 + 48))(v25, 1, v32) == 1)
  {
    sub_1E1308058(v25, &qword_1ECEB3B50, "~9\b");
    return (*(v27 + 56))(v31, 1, 1, v32);
  }

  else
  {
    v59 = v31;
    v57 = v27;
    v34 = *(v27 + 32);
    v58 = v32;
    v56 = v27 + 32;
    v55 = v34;
    v34(v66, v25, v32);
    sub_1E1AEF8AC();
    v35 = v65;
    (*(v17 + 16))(v22, v30, v65);
    v36 = sub_1E148D328(&qword_1ECEB46C8, MEMORY[0x1E69687C8], MEMORY[0x1E69687E0]);
    sub_1E1AF665C();
    (*(v17 + 8))(v30, v35);
    v37 = (v70 + 1);
    v70 = (v13 + 16);
    v71 = v37;
    v68 = (v13 + 8);
    v69 = (v13 + 32);
    v67 = v36;
    v60 = v12;
    while (1)
    {
      sub_1E1AF668C();
      sub_1E148D328(&qword_1ECEB46D0, MEMORY[0x1E69687B0], MEMORY[0x1E69687C0]);
      v45 = v73;
      v46 = sub_1E1AF5DAC();
      (*v71)(v12, v45);
      if (v46)
      {
        break;
      }

      v47 = sub_1E1AF66FC();
      v48 = v72;
      v49 = v75;
      (*v70)(v72);
      v47(v77, 0);
      sub_1E1AF669C();
      (*v69)(v74, v48, v49);
      sub_1E148D370();
      v50 = v76;
      sub_1E1AEF87C();
      v51 = sub_1E1AEFCCC();
      if ((*(*(v51 - 8) + 48))(v50, 1, v51) == 1)
      {
        (*v68)(v74, v75);
        sub_1E1308058(v76, &unk_1ECEB4B60, &unk_1E1B02620);
      }

      else
      {
        sub_1E1308058(v76, &unk_1ECEB4B60, &unk_1E1B02620);
        v38 = v61;
        v39 = v74;
        sub_1E1AEF85C();
        v40 = v63;
        sub_1E1AF28FC();
        v41 = sub_1E1AF290C();
        (*(*(v41 - 8) + 56))(v40, 0, 1, v41);
        sub_1E148D3C4();
        v42 = sub_1E1AEF94C();
        sub_1E134FD1C(v40, v64, &qword_1ECEB46B8, &qword_1E1B0DE50);
        sub_1E148D428();
        v43 = v75;
        sub_1E1AEF9CC();
        v44 = v40;
        v12 = v60;
        sub_1E1308058(v44, &qword_1ECEB46B8, &qword_1E1B0DE50);
        v42(v77, 0);
        sub_1E1308058(v38, &qword_1ECEB62E0, qword_1E1B1ADF0);
        (*v68)(v39, v43);
      }
    }

    sub_1E1308058(v22, &qword_1ECEB46C0, &qword_1E1B0DE58);
    v52 = v59;
    v53 = v58;
    v55(v59, v66, v58);
    return (*(v57 + 56))(v52, 0, 1, v53);
  }
}

uint64_t sub_1E148CDF0()
{
  v1 = sub_1E1AF591C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E1AEFC6C();
  if (v6)
  {
    v7 = *(v0 + qword_1ECEB46A0);
    v16[1] = v5;
    v16[2] = v6;
    sub_1E1AF6F6C();
    if (*(v7 + 16))
    {
      v8 = sub_1E135FCF4(v17);
      if (v9)
      {
        v10 = *(*(v7 + 56) + 8 * v8);

        sub_1E134B88C(v17);
        return v10;
      }
    }

    sub_1E134B88C(v17);
  }

  if (qword_1ECEB0DF8 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v1, qword_1ECEF43D0);
  (*(v2 + 16))(v4, v12, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
  sub_1E1AF382C();
  v13 = sub_1E1AEFC6C();
  if (v14)
  {
    v15 = MEMORY[0x1E69E6158];
  }

  else
  {
    v13 = 0;
    v15 = 0;
    v17[2] = 0;
  }

  v17[0] = v13;
  v17[1] = v14;
  v17[3] = v15;
  sub_1E1AF38DC();
  sub_1E1308058(v17, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  sub_1E1AF54AC();

  (*(v2 + 8))(v4, v1);
  return 0;
}

double sub_1E148D0BC()
{

  sub_1E1308058(v0 + qword_1ECEB4698, &qword_1ECEB3B50, "~9\b");

  return result;
}

uint64_t sub_1E148D11C()
{

  sub_1E1308058(v0 + qword_1ECEB4698, &qword_1ECEB3B50, "~9\b");

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for LinkableTextViewModel(uint64_t a1)
{
  result = qword_1ECEB46A8;
  if (!qword_1ECEB46A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E148D224(uint64_t a1)
{
  sub_1E148D2D0(319);
  if (v1 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

void sub_1E148D2D0(uint64_t a1)
{
  if (!qword_1EE1FADD8)
  {
    sub_1E1AEF91C();
    v1 = sub_1E1AF6D9C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE1FADD8);
    }
  }
}

uint64_t sub_1E148D328(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1E148D370()
{
  result = qword_1ECEB46D8;
  if (!qword_1ECEB46D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB46D8);
  }

  return result;
}

unint64_t sub_1E148D3C4()
{
  result = qword_1ECEB62F0;
  if (!qword_1ECEB62F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB62E0, qword_1E1B1ADF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB62F0);
  }

  return result;
}

unint64_t sub_1E148D428()
{
  result = qword_1ECEB46E0;
  if (!qword_1ECEB46E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB46E0);
  }

  return result;
}

unint64_t sub_1E148D4DC()
{
  result = qword_1ECEB46E8;
  if (!qword_1ECEB46E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB46E8);
  }

  return result;
}

unint64_t sub_1E148D534()
{
  result = qword_1ECEB46F0;
  if (!qword_1ECEB46F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB46F0);
  }

  return result;
}

unint64_t sub_1E148D58C()
{
  result = qword_1ECEB46F8;
  if (!qword_1ECEB46F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB46F8);
  }

  return result;
}

unint64_t sub_1E148D5E4()
{
  result = qword_1ECEB4700;
  if (!qword_1ECEB4700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB4700);
  }

  return result;
}

uint64_t sub_1E148D65C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *MEMORY[0x1E69E7D40] & *v4;
  v7 = *(v6 + class metadata base offset for ModelMappedDiffableDataSource);
  v8 = *(v6 + class metadata base offset for ModelMappedDiffableDataSource + 8);
  v9 = type metadata accessor for ModelMappedDiffableDataSourceContentSnapshot(0, v7, v8, a4);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v20 - v11;
  v14 = type metadata accessor for ModelMappedDiffableDataSource.FallbackContentSnapshot(255, v7, v8, v13);
  v15 = sub_1E1AF6D9C();
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v20 - v17;
  (*(v10 + 16))(v12, a1, v9, v16);
  (*(v10 + 32))(v18, v12, v9);
  (*(*(v14 - 8) + 56))(v18, 0, 1, v14);
  return sub_1E148D9F0(v18);
}

uint64_t sub_1E148D82C@<X0>(uint64_t a1@<X8>)
{
  v3 = *MEMORY[0x1E69E7D40] & *v1;
  v4 = *(v3 + class metadata base offset for ModelMappedDiffableDataSource + 16);
  swift_beginAccess();
  v6 = type metadata accessor for ModelMappedDiffableDataSourceContentSnapshot(0, *(v3 + class metadata base offset for ModelMappedDiffableDataSource), *(v3 + class metadata base offset for ModelMappedDiffableDataSource + 8), v5);
  return (*(*(v6 - 8) + 16))(a1, &v1[v4], v6);
}

uint64_t sub_1E148D908@<X0>(uint64_t a1@<X8>)
{
  v3 = *MEMORY[0x1E69E7D40] & *v1;
  v4 = *(v3 + class metadata base offset for ModelMappedDiffableDataSource + 24);
  swift_beginAccess();
  type metadata accessor for ModelMappedDiffableDataSource.FallbackContentSnapshot(255, *(v3 + class metadata base offset for ModelMappedDiffableDataSource), *(v3 + class metadata base offset for ModelMappedDiffableDataSource + 8), v5);
  v6 = sub_1E1AF6D9C();
  return (*(*(v6 - 8) + 16))(a1, &v1[v4], v6);
}

uint64_t sub_1E148D9F0(uint64_t a1)
{
  v3 = *MEMORY[0x1E69E7D40] & *v1;
  v4 = *(v3 + class metadata base offset for ModelMappedDiffableDataSource + 24);
  swift_beginAccess();
  type metadata accessor for ModelMappedDiffableDataSource.FallbackContentSnapshot(255, *(v3 + class metadata base offset for ModelMappedDiffableDataSource), *(v3 + class metadata base offset for ModelMappedDiffableDataSource + 8), v5);
  v6 = sub_1E1AF6D9C();
  (*(*(v6 - 8) + 40))(&v1[v4], a1, v6);
  return swift_endAccess();
}

uint64_t sub_1E148DB3C(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v41 = a3;
  v42 = a4;
  v35 = a2;
  v6 = *MEMORY[0x1E69E7D40] & *v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4708, &qword_1E1B0E070);
  v39 = *(v7 - 8);
  v40 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v38 = &v34[-v8];
  v10 = type metadata accessor for ModelMappedDiffableDataSourceContentSnapshot(0, *(v6 + class metadata base offset for ModelMappedDiffableDataSource), *(v6 + class metadata base offset for ModelMappedDiffableDataSource + 8), v9);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v34[-v12];
  sub_1E1491B34(a1, v14, v15, v16);
  if (qword_1EE1E35E8 != -1)
  {
    swift_once();
  }

  v37 = sub_1E1AF591C();
  v36 = __swift_project_value_buffer(v37, qword_1EE216188);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
  v45 = MEMORY[0x1E69E6158];
  v43 = 0xD00000000000002DLL;
  v44 = 0x80000001E1B606F0;
  sub_1E1AF38BC();
  sub_1E1308058(&v43, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  sub_1E148D82C(v13);
  v17 = &v13[*(v10 + 52)];
  v19 = *v17;
  v18 = v17[1];
  v20 = *(v11 + 8);

  v20(v13, v10);
  v45 = MEMORY[0x1E69E6158];
  v43 = v19;
  v44 = v18;
  sub_1E1AF38BC();
  sub_1E1308058(&v43, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  sub_1E1AF548C();

  sub_1E148D82C(v13);
  v21 = v38;
  v22 = v39;
  v23 = v40;
  (*(v39 + 16))(v38, v13, v40);
  v20(v13, v10);
  v24 = *(sub_1E1AF1F6C() + 16);

  if (v24 || (v25 = *(sub_1E1AF1F3C() + 16), , v25))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4710, &qword_1E1B0E078);
    v26 = sub_1E1AF1FCC();
    v26(v21, v35 & 1, v41, v42);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4710, &qword_1E1B0E078);
    v33 = sub_1E1AF1FCC();
    v33(v21, v41, v42);
  }

  v27 = (*(v22 + 8))(v21, v23);
  return sub_1E148E39C(v31, v27, v28, v29, v30);
}

uint64_t sub_1E148DFB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v37 = a3;
  v38 = a4;
  v7 = *MEMORY[0x1E69E7D40] & *v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4708, &qword_1E1B0E070);
  v35 = *(v8 - 8);
  v36 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v34 = v32 - v9;
  v11 = type metadata accessor for ModelMappedDiffableDataSourceContentSnapshot(0, *(v7 + class metadata base offset for ModelMappedDiffableDataSource), *(v7 + class metadata base offset for ModelMappedDiffableDataSource + 8), v10);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v32 - v13;
  sub_1E1491B34(a1, v15, v16, v17);
  if (qword_1EE1E35E8 != -1)
  {
    swift_once();
  }

  v33 = sub_1E1AF591C();
  v32[1] = __swift_project_value_buffer(v33, qword_1EE216188);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
  v41 = MEMORY[0x1E69E6158];
  v39 = 0xD00000000000002DLL;
  v40 = 0x80000001E1B606F0;
  sub_1E1AF38BC();
  sub_1E1308058(&v39, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  sub_1E148D82C(v14);
  v18 = &v14[*(v11 + 52)];
  v20 = *v18;
  v19 = v18[1];
  v21 = *(v12 + 8);

  v21(v14, v11);
  v41 = MEMORY[0x1E69E6158];
  v39 = v20;
  v40 = v19;
  sub_1E1AF38BC();
  sub_1E1308058(&v39, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  sub_1E1AF548C();

  sub_1E148D82C(v14);
  v23 = v34;
  v22 = v35;
  v24 = v36;
  (*(v35 + 16))(v34, v14, v36);
  v21(v14, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4710, &qword_1E1B0E078);
  v25 = sub_1E1AF1FCC();
  v25(v23, v37, v38);
  v26 = (*(v22 + 8))(v23, v24);
  return sub_1E148E39C(v30, v26, v27, v28, v29);
}

uint64_t sub_1E148E39C(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = type metadata accessor for ModelMappedDiffableDataSource.FallbackContentSnapshot(255, *((*MEMORY[0x1E69E7D40] & *v5) + class metadata base offset for ModelMappedDiffableDataSource), *((*MEMORY[0x1E69E7D40] & *v5) + class metadata base offset for ModelMappedDiffableDataSource + 8), a5);
  v7 = sub_1E1AF6D9C();
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v12 - v9;
  (*(*(v6 - 8) + 56))(&v12 - v9, 1, 1, v6, v8);
  return sub_1E148D9F0(v10);
}

uint64_t sub_1E148E498@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t x3_0@<X3>)
{
  v5 = v4;
  v49 = a2;
  v7 = *MEMORY[0x1E69E7D40] & *v4;
  v9 = *(v7 + class metadata base offset for ModelMappedDiffableDataSource);
  v8 = *(v7 + class metadata base offset for ModelMappedDiffableDataSource + 8);
  v10 = type metadata accessor for ModelMappedDiffableDataSource.FallbackContentSnapshot(0, v9, v8, x3_0);
  v46 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v41 = &v36 - v11;
  v47 = v12;
  v13 = sub_1E1AF6D9C();
  v44 = *(v13 - 8);
  v45 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v43 = &v36 - v14;
  v16 = type metadata accessor for ModelMappedDiffableDataSourceContentSnapshot(0, v9, v8, v15);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v36 - v18;
  v20 = sub_1E1AF3DCC();
  v21 = sub_1E1AF6D9C();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v36 - v23;
  v42 = v5;
  sub_1E148D82C(v19);
  v48 = a1;
  ModelMappedDiffableDataSourceContentSnapshot.sectionModel(at:)(a1, v16, v24);
  v25 = *(v17 + 8);
  v25(v19, v16);
  v26 = *(v20 - 8);
  if ((*(v26 + 48))(v24, 1, v20) == 1)
  {
    v40 = v25;
    v37 = v20;
    (*(v22 + 8))(v24, v21);
    if (qword_1EE1E35E8 != -1)
    {
      swift_once();
    }

    v39 = sub_1E1AF591C();
    v38 = __swift_project_value_buffer(v39, qword_1EE216188);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B05090;
    v52 = MEMORY[0x1E69E6158];
    v50 = 0xD00000000000002ELL;
    v51 = 0x80000001E1B60720;
    sub_1E1AF38BC();
    sub_1E1308058(&v50, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    v52 = MEMORY[0x1E69E6530];
    v50 = v48;
    sub_1E1AF38BC();
    sub_1E1308058(&v50, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    v52 = MEMORY[0x1E69E6158];
    v50 = 0xD000000000000033;
    v51 = 0x80000001E1B60750;
    sub_1E1AF38BC();
    sub_1E1308058(&v50, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    sub_1E148D82C(v19);
    v27 = &v19[*(v16 + 52)];
    v29 = *v27;
    v28 = v27[1];

    v40(v19, v16);
    v52 = MEMORY[0x1E69E6158];
    v50 = v29;
    v51 = v28;
    sub_1E1AF38BC();
    sub_1E1308058(&v50, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    sub_1E1AF54BC();

    v30 = v43;
    sub_1E148D908(v43);
    v32 = v46;
    v31 = v47;
    if ((*(v46 + 48))(v30, 1, v47))
    {
      (*(v44 + 8))(v30, v45);
      return (*(v26 + 56))(v49, 1, 1, v37);
    }

    else
    {
      v35 = v41;
      (*(v32 + 16))(v41, v30, v31);
      (*(v44 + 8))(v30, v45);
      sub_1E148EB24(v48, v31, v49);
      return (*(v32 + 8))(v35, v31);
    }
  }

  else
  {
    v34 = v49;
    (*(v26 + 32))(v49, v24, v20);
    return (*(v26 + 56))(v34, 0, 1, v20);
  }
}

uint64_t sub_1E148EB24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(a2 + 16);
  v8 = sub_1E1AF3DCC();
  v9 = sub_1E1AF6D9C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v22 - v11;
  v14 = type metadata accessor for ModelMappedDiffableDataSourceContentSnapshot(0, v7, *(a2 + 24), v13);
  ModelMappedDiffableDataSourceContentSnapshot.sectionModel(at:)(a1, v14, v12);
  v15 = *(v8 - 8);
  if ((*(v15 + 48))(v12, 1, v8) == 1)
  {
    v24 = a1;
    v25 = a3;
    (*(v10 + 8))(v12, v9);
    if (qword_1EE1E35E8 != -1)
    {
      swift_once();
    }

    v23 = sub_1E1AF591C();
    v22[2] = __swift_project_value_buffer(v23, qword_1EE216188);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
    v22[1] = 4 * *(*(sub_1E1AF38EC() - 8) + 72);
    *(swift_allocObject() + 16) = xmmword_1E1B04930;
    v16 = MEMORY[0x1E69E6158];
    v28 = MEMORY[0x1E69E6158];
    v26 = 0xD000000000000019;
    v27 = 0x80000001E1B60970;
    sub_1E1AF38BC();
    sub_1E1308058(&v26, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    v17 = (v3 + *(v14 + 52));
    v19 = *v17;
    v18 = v17[1];
    v28 = v16;
    v26 = v19;
    v27 = v18;

    sub_1E1AF38BC();
    sub_1E1308058(&v26, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    v28 = v16;
    v26 = 0xD00000000000002FLL;
    v27 = 0x80000001E1B60A80;
    sub_1E1AF38BC();
    sub_1E1308058(&v26, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    v28 = MEMORY[0x1E69E6530];
    v26 = v24;
    sub_1E1AF38BC();
    sub_1E1308058(&v26, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    v28 = v16;
    v26 = 0xD00000000000001CLL;
    v27 = 0x80000001E1B60A60;
    sub_1E1AF38BC();
    sub_1E1308058(&v26, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    sub_1E1AF54BC();

    v20 = 1;
    a3 = v25;
  }

  else
  {
    (*(v15 + 32))(a3, v12, v8);
    v20 = 0;
  }

  return (*(v15 + 56))(a3, v20, 1, v8);
}

uint64_t sub_1E148EF24(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v8 = *MEMORY[0x1E69E7D40] & *v5;
  v9 = *(v8 + class metadata base offset for ModelMappedDiffableDataSource);
  v10 = *(v8 + class metadata base offset for ModelMappedDiffableDataSource + 8);
  v11 = type metadata accessor for ModelMappedDiffableDataSource.FallbackContentSnapshot(0, v9, v10, a5);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v42 = &v34 - v13;
  v14 = sub_1E1AF6D9C();
  v44 = *(v14 - 8);
  v45 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v43 = &v34 - v15;
  v17 = type metadata accessor for ModelMappedDiffableDataSourceContentSnapshot(0, v9, v10, v16);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v34 - v19;
  sub_1E148D82C(&v34 - v19);
  v21 = ModelMappedDiffableDataSourceContentSnapshot.sectionIndex(for:)(a1, v17);
  LOBYTE(v10) = v22;
  v23 = *(v18 + 8);
  v23(v20, v17);
  if (v10)
  {
    v36 = v6;
    v37 = v23;
    v40 = v12;
    v41 = v11;
    if (qword_1EE1E35E8 != -1)
    {
      swift_once();
    }

    v39 = sub_1E1AF591C();
    v38 = __swift_project_value_buffer(v39, qword_1EE216188);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B05090;
    v48 = MEMORY[0x1E69E6158];
    v46 = 0xD00000000000003ALL;
    v47 = 0x80000001E1B60790;
    sub_1E1AF38BC();
    sub_1E1308058(&v46, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    v48 = &type metadata for DiffablePageContentIdentifier;
    v46 = swift_allocObject();
    sub_1E141CF00(a1, v46 + 16);
    sub_1E1AF38BC();
    sub_1E1308058(&v46, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    v35 = a1;
    v48 = MEMORY[0x1E69E6158];
    v46 = 0xD00000000000002DLL;
    v47 = 0x80000001E1B607D0;
    sub_1E1AF38BC();
    sub_1E1308058(&v46, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    sub_1E148D82C(v20);
    v24 = &v20[*(v17 + 52)];
    v26 = *v24;
    v25 = v24[1];

    v37(v20, v17);
    v48 = MEMORY[0x1E69E6158];
    v46 = v26;
    v47 = v25;
    sub_1E1AF38BC();
    sub_1E1308058(&v46, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    sub_1E1AF54BC();

    v27 = v43;
    sub_1E148D908(v43);
    v29 = v40;
    v28 = v41;
    if ((*(v40 + 48))(v27, 1, v41))
    {
      (*(v44 + 8))(v27, v45);
      return 0;
    }

    else
    {
      v30 = v42;
      (*(v29 + 16))(v42, v27, v28);
      (*(v44 + 8))(v27, v45);
      v21 = sub_1E148F4A8(v35, v28, v31, v32);
      (*(v29 + 8))(v30, v28);
    }
  }

  return v21;
}

uint64_t sub_1E148F4A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for ModelMappedDiffableDataSourceContentSnapshot(0, *(a2 + 16), *(a2 + 24), a4);
  result = ModelMappedDiffableDataSourceContentSnapshot.sectionIndex(for:)(a1, v6);
  if (v8)
  {
    v14 = result;
    if (qword_1EE1E35E8 != -1)
    {
      swift_once();
    }

    v13 = sub_1E1AF591C();
    __swift_project_value_buffer(v13, qword_1EE216188);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B04930;
    v9 = MEMORY[0x1E69E6158];
    v17 = MEMORY[0x1E69E6158];
    v15 = 0xD000000000000019;
    v16 = 0x80000001E1B60970;
    sub_1E1AF38BC();
    sub_1E1308058(&v15, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    v10 = (v4 + *(v6 + 52));
    v12 = *v10;
    v11 = v10[1];
    v17 = v9;
    v15 = v12;
    v16 = v11;

    sub_1E1AF38BC();
    sub_1E1308058(&v15, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    v17 = v9;
    v15 = 0xD00000000000003BLL;
    v16 = 0x80000001E1B60A20;
    sub_1E1AF38BC();
    sub_1E1308058(&v15, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    v17 = &type metadata for DiffablePageContentIdentifier;
    v15 = swift_allocObject();
    sub_1E141CF00(a1, v15 + 16);
    sub_1E1AF38BC();
    sub_1E1308058(&v15, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    v17 = v9;
    v15 = 0xD00000000000001CLL;
    v16 = 0x80000001E1B60A60;
    sub_1E1AF38BC();
    sub_1E1308058(&v15, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    sub_1E1AF54BC();

    return v14;
  }

  return result;
}

uint64_t sub_1E148F78C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t x3_0@<X3>)
{
  v7 = *MEMORY[0x1E69E7D40] & *v4;
  v8 = *(v7 + class metadata base offset for ModelMappedDiffableDataSource);
  v9 = *(v7 + class metadata base offset for ModelMappedDiffableDataSource + 8);
  v10 = type metadata accessor for ModelMappedDiffableDataSource.FallbackContentSnapshot(0, v8, v9, x3_0);
  v54 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v40 - v11;
  v13 = sub_1E1AF6D9C();
  v52 = *(v13 - 8);
  v53 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v51 = &v40 - v14;
  v16 = type metadata accessor for ModelMappedDiffableDataSourceContentSnapshot(0, v8, v9, v15);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v40 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4718, &qword_1E1B0E080);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v40 - v21;
  v50 = a1;
  sub_1E1AF1FAC();
  if (*(&v56 + 1))
  {
    v49 = v12;
    v58[0] = v55;
    v58[1] = v56;
    v59 = v57;
    sub_1E148D82C(v19);
    ModelMappedDiffableDataSourceContentSnapshot.itemModel(for:)(v16, v22, v23);
    v24 = *(v17 + 8);
    v24(v19, v16);
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7E80, &unk_1E1B042D0);
    v26 = *(v25 - 8);
    if ((*(v26 + 48))(v22, 1, v25) == 1)
    {
      v41 = v26;
      v46 = v24;
      v42 = v25;
      v47 = v10;
      v48 = a2;
      sub_1E1308058(v22, &qword_1ECEB4718, &qword_1E1B0E080);
      if (qword_1EE1E35E8 != -1)
      {
        swift_once();
      }

      v45 = sub_1E1AF591C();
      v44 = __swift_project_value_buffer(v45, qword_1EE216188);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
      sub_1E1AF38EC();
      v43 = swift_allocObject();
      *(v43 + 16) = xmmword_1E1B070F0;
      *(&v56 + 1) = MEMORY[0x1E69E6158];
      v27 = MEMORY[0x1E69E6158];
      *&v55 = 0xD000000000000034;
      *(&v55 + 1) = 0x80000001E1B60800;
      sub_1E1AF38BC();
      sub_1E1308058(&v55, &qword_1ECEB2DF0, &unk_1E1B02CE0);
      *(&v56 + 1) = &type metadata for DiffablePageContentIdentifier;
      *&v55 = swift_allocObject();
      sub_1E141CF00(v58, v55 + 16);
      sub_1E1AF38BC();
      sub_1E1308058(&v55, &qword_1ECEB2DF0, &unk_1E1B02CE0);
      *(&v56 + 1) = v27;
      strcpy(&v55, "at indexPath:");
      HIWORD(v55) = -4864;
      sub_1E1AF38BC();
      sub_1E1308058(&v55, &qword_1ECEB2DF0, &unk_1E1B02CE0);
      v28 = sub_1E1AF01FC();
      *(&v56 + 1) = v28;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v55);
      (*(*(v28 - 8) + 16))(boxed_opaque_existential_0, v50, v28);
      sub_1E1AF38BC();
      sub_1E1308058(&v55, &qword_1ECEB2DF0, &unk_1E1B02CE0);
      v30 = MEMORY[0x1E69E6158];
      *(&v56 + 1) = MEMORY[0x1E69E6158];
      *&v55 = 0xD00000000000002BLL;
      *(&v55 + 1) = 0x80000001E1B60840;
      sub_1E1AF38BC();
      sub_1E1308058(&v55, &qword_1ECEB2DF0, &unk_1E1B02CE0);
      sub_1E148D82C(v19);
      v31 = &v19[*(v16 + 52)];
      v33 = *v31;
      v32 = *(v31 + 1);

      v46(v19, v16);
      *(&v56 + 1) = v30;
      *&v55 = v33;
      *(&v55 + 1) = v32;
      sub_1E1AF38BC();
      sub_1E1308058(&v55, &qword_1ECEB2DF0, &unk_1E1B02CE0);
      sub_1E1AF54BC();

      v34 = v51;
      sub_1E148D908(v51);
      v35 = v54;
      v36 = v47;
      if ((*(v54 + 48))(v34, 1, v47))
      {
        sub_1E138867C(v58);
        (*(v52 + 8))(v34, v53);
        return (*(v41 + 56))(v48, 1, 1, v42);
      }

      else
      {
        v39 = v49;
        (*(v35 + 16))(v49, v34, v36);
        (*(v52 + 8))(v34, v53);
        sub_1E148FF9C(v58, v36, v48);
        (*(v35 + 8))(v39, v36);
        return sub_1E138867C(v58);
      }
    }

    else
    {
      sub_1E138867C(v58);
      (*(v26 + 32))(a2, v22, v25);
      return (*(v26 + 56))(a2, 0, 1, v25);
    }
  }

  else
  {
    sub_1E1308058(&v55, &qword_1ECEB4720, &unk_1E1B257D0);
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7E80, &unk_1E1B042D0);
    return (*(*(v38 - 8) + 56))(a2, 1, 1, v38);
  }
}

uint64_t sub_1E148FF9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4718, &qword_1E1B0E080);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v21 - v8;
  v11 = type metadata accessor for ModelMappedDiffableDataSourceContentSnapshot(0, *(a2 + 16), *(a2 + 24), v10);
  ModelMappedDiffableDataSourceContentSnapshot.itemModel(for:)(v11, v9, v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7E80, &unk_1E1B042D0);
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v9, 1, v13) == 1)
  {
    v23 = a1;
    v24 = a3;
    sub_1E1308058(v9, &qword_1ECEB4718, &qword_1E1B0E080);
    if (qword_1EE1E35E8 != -1)
    {
      swift_once();
    }

    v22 = sub_1E1AF591C();
    v21[2] = __swift_project_value_buffer(v22, qword_1EE216188);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
    v21[1] = 4 * *(*(sub_1E1AF38EC() - 8) + 72);
    *(swift_allocObject() + 16) = xmmword_1E1B04930;
    v15 = MEMORY[0x1E69E6158];
    v27 = MEMORY[0x1E69E6158];
    v25 = 0xD000000000000019;
    v26 = 0x80000001E1B60970;
    sub_1E1AF38BC();
    sub_1E1308058(&v25, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    v16 = (v3 + *(v11 + 52));
    v18 = *v16;
    v17 = v16[1];
    v27 = v15;
    v25 = v18;
    v26 = v17;

    sub_1E1AF38BC();
    sub_1E1308058(&v25, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    v27 = v15;
    v25 = 0xD000000000000031;
    v26 = 0x80000001E1B609C0;
    sub_1E1AF38BC();
    sub_1E1308058(&v25, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    v27 = &type metadata for DiffablePageContentIdentifier;
    v25 = swift_allocObject();
    sub_1E141CF00(v23, v25 + 16);
    sub_1E1AF38BC();
    sub_1E1308058(&v25, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    v27 = v15;
    v25 = 0xD000000000000019;
    v26 = 0x80000001E1B60A00;
    sub_1E1AF38BC();
    sub_1E1308058(&v25, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    sub_1E1AF54BC();

    v19 = 1;
    a3 = v24;
  }

  else
  {
    (*(v14 + 32))(a3, v9, v13);
    v19 = 0;
  }

  return (*(v14 + 56))(a3, v19, 1, v13);
}

uint64_t sub_1E1490388@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t x3_0@<X3>)
{
  v7 = *MEMORY[0x1E69E7D40] & *v4;
  v8 = *(v7 + class metadata base offset for ModelMappedDiffableDataSource);
  v9 = *(v7 + class metadata base offset for ModelMappedDiffableDataSource + 8);
  v10 = type metadata accessor for ModelMappedDiffableDataSource.FallbackContentSnapshot(0, v8, v9, x3_0);
  v46 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v39 = &v33 - v11;
  v12 = sub_1E1AF6D9C();
  v44 = *(v12 - 8);
  v45 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v43 = &v33 - v13;
  v15 = type metadata accessor for ModelMappedDiffableDataSourceContentSnapshot(0, v8, v9, v14);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v33 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4718, &qword_1E1B0E080);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v33 - v20;
  v41 = v4;
  sub_1E148D82C(v18);
  ModelMappedDiffableDataSourceContentSnapshot.itemModel(for:)(v15, v21, v22);
  v42 = *(v16 + 8);
  v42(v18, v15);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7E80, &unk_1E1B042D0);
  v24 = *(v23 - 8);
  if ((*(v24 + 48))(v21, 1, v23) == 1)
  {
    v34 = v23;
    v37 = v10;
    v38 = a2;
    v40 = a1;
    sub_1E1308058(v21, &qword_1ECEB4718, &qword_1E1B0E080);
    if (qword_1EE1E35E8 != -1)
    {
      swift_once();
    }

    v36 = sub_1E1AF591C();
    v35 = __swift_project_value_buffer(v36, qword_1EE216188);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B05090;
    v49 = MEMORY[0x1E69E6158];
    v47 = 0xD00000000000001BLL;
    v48 = 0x80000001E1B60870;
    sub_1E1AF38BC();
    sub_1E1308058(&v47, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    v49 = &type metadata for DiffablePageContentIdentifier;
    v47 = swift_allocObject();
    sub_1E141CF00(v40, v47 + 16);
    sub_1E1AF38BC();
    sub_1E1308058(&v47, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    v49 = MEMORY[0x1E69E6158];
    v47 = 0xD000000000000027;
    v48 = 0x80000001E1B60890;
    sub_1E1AF38BC();
    sub_1E1308058(&v47, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    sub_1E148D82C(v18);
    v25 = &v18[*(v15 + 52)];
    v27 = *v25;
    v26 = v25[1];

    v42(v18, v15);
    v49 = MEMORY[0x1E69E6158];
    v47 = v27;
    v48 = v26;
    sub_1E1AF38BC();
    sub_1E1308058(&v47, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    sub_1E1AF54BC();

    v28 = v43;
    sub_1E148D908(v43);
    v29 = v46;
    v30 = v37;
    if ((*(v46 + 48))(v28, 1, v37))
    {
      (*(v44 + 8))(v28, v45);
      return (*(v24 + 56))(v38, 1, 1, v34);
    }

    else
    {
      v32 = v39;
      (*(v29 + 16))(v39, v28, v30);
      (*(v44 + 8))(v28, v45);
      sub_1E148FF9C(v40, v30, v38);
      return (*(v29 + 8))(v32, v30);
    }
  }

  else
  {
    (*(v24 + 32))(a2, v21, v23);
    return (*(v24 + 56))(a2, 0, 1, v23);
  }
}

char *sub_1E1490A0C(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *MEMORY[0x1E69E7D40] & *v5;
  v9 = *(v7 + class metadata base offset for ModelMappedDiffableDataSource);
  v8 = *(v7 + class metadata base offset for ModelMappedDiffableDataSource + 8);
  v10 = type metadata accessor for ModelMappedDiffableDataSource.FallbackContentSnapshot(0, v9, v8, a5);
  v51 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v42 = v39 - v11;
  v52 = v12;
  v13 = sub_1E1AF6D9C();
  v49 = *(v13 - 8);
  v50 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v48 = v39 - v14;
  v15 = sub_1E1AF3DCC();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v39 - v17;
  v20 = type metadata accessor for ModelMappedDiffableDataSourceContentSnapshot(0, v9, v8, v19);
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = v39 - v22;
  v53 = v5;
  sub_1E148D82C(v39 - v22);
  v24 = *(v16 + 16);
  v46 = v15;
  v44 = v24;
  v24(v18, a1, v15);
  v45 = v18;
  v47 = v8;
  DiffablePageContentIdentifier.init<A>(_:)(v18, v9, v8);
  v25 = ModelMappedDiffableDataSourceContentSnapshot.doesSectionExist(for:)(&v54, v20);
  sub_1E138867C(&v54);
  v26 = *(v21 + 8);
  v26(v23, v20);
  if (v25)
  {
    sub_1E148D82C(v23);
    v27 = ModelMappedDiffableDataSourceContentSnapshot.itemModels(in:)(a1, v20);
    v28 = v26;
    v29 = v27;
    v28(v23, v20);
  }

  else
  {
    v41 = v26;
    v43 = a1;
    if (qword_1EE1E35E8 != -1)
    {
      swift_once();
    }

    v40 = sub_1E1AF591C();
    v39[1] = __swift_project_value_buffer(v40, qword_1EE216188);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B05090;
    v56 = MEMORY[0x1E69E6158];
    v54 = 0xD00000000000003BLL;
    v55 = 0x80000001E1B608C0;
    sub_1E1AF38BC();
    sub_1E1308058(&v54, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    v30 = v45;
    v44(v45, v43, v46);
    v56 = &type metadata for DiffablePageContentIdentifier;
    v54 = swift_allocObject();
    DiffablePageContentIdentifier.init<A>(_:)(v30, v9, v47);
    sub_1E1AF38BC();
    sub_1E1308058(&v54, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    v56 = MEMORY[0x1E69E6158];
    v54 = 0xD000000000000044;
    v55 = 0x80000001E1B60900;
    sub_1E1AF38BC();
    sub_1E1308058(&v54, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    sub_1E148D82C(v23);
    v31 = &v23[*(v20 + 52)];
    v33 = *v31;
    v32 = v31[1];

    v41(v23, v20);
    v56 = MEMORY[0x1E69E6158];
    v54 = v33;
    v55 = v32;
    sub_1E1AF38BC();
    sub_1E1308058(&v54, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    sub_1E1AF54BC();

    v34 = v48;
    sub_1E148D908(v48);
    v36 = v51;
    v35 = v52;
    if ((*(v51 + 48))(v34, 1, v52))
    {
      (*(v49 + 8))(v34, v50);
      return 0;
    }

    else
    {
      v37 = v42;
      (*(v36 + 16))(v42, v34, v35);
      (*(v49 + 8))(v34, v50);
      v29 = sub_1E1491084(v43, v35);
      (*(v36 + 8))(v37, v35);
    }
  }

  return v29;
}

char *sub_1E1491084(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v6 = sub_1E1AF3DCC();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v21 - v9;
  v11 = *(v7 + 16);
  v11(&v21 - v9, a1, v6, v8);
  v12 = *(a2 + 24);
  DiffablePageContentIdentifier.init<A>(_:)(v10, v5, v12);
  v14 = type metadata accessor for ModelMappedDiffableDataSourceContentSnapshot(0, v5, v12, v13);
  v15 = ModelMappedDiffableDataSourceContentSnapshot.doesSectionExist(for:)(&v30, v14);
  sub_1E138867C(&v30);
  if (v15)
  {
    return ModelMappedDiffableDataSourceContentSnapshot.itemModels(in:)(a1, v14);
  }

  v22 = v12;
  v23 = v6;
  v28 = v11;
  v29 = a1;
  if (qword_1EE1E35E8 != -1)
  {
    swift_once();
  }

  v27 = sub_1E1AF591C();
  v26 = __swift_project_value_buffer(v27, qword_1EE216188);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50, &qword_1E1B05580);
  v25 = 4 * *(*(sub_1E1AF38EC() - 8) + 72);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1E1B04930;
  v17 = MEMORY[0x1E69E6158];
  v32 = MEMORY[0x1E69E6158];
  v30 = 0xD000000000000019;
  v31 = 0x80000001E1B60970;
  sub_1E1AF38BC();
  sub_1E1308058(&v30, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  v18 = (v2 + *(v14 + 52));
  v20 = *v18;
  v19 = v18[1];
  v32 = v17;
  v30 = v20;
  v31 = v19;

  sub_1E1AF38BC();
  sub_1E1308058(&v30, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  v32 = v17;
  v30 = 0xD00000000000003BLL;
  v31 = 0x80000001E1B608C0;
  sub_1E1AF38BC();
  sub_1E1308058(&v30, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  v28(v10, v29, v23);
  v32 = &type metadata for DiffablePageContentIdentifier;
  v30 = swift_allocObject();
  DiffablePageContentIdentifier.init<A>(_:)(v10, v5, v22);
  sub_1E1AF38BC();
  sub_1E1308058(&v30, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  v32 = v17;
  v30 = 0xD00000000000002DLL;
  v31 = 0x80000001E1B60990;
  sub_1E1AF38BC();
  sub_1E1308058(&v30, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  sub_1E1AF54BC();

  return 0;
}

uint64_t sub_1E1491460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for ModelMappedDiffableDataSourceContentSnapshot(0, *((*MEMORY[0x1E69E7D40] & *v4) + class metadata base offset for ModelMappedDiffableDataSource), *((*MEMORY[0x1E69E7D40] & *v4) + class metadata base offset for ModelMappedDiffableDataSource + 8), a4);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  sub_1E148D82C(&v12 - v7);
  v9 = *&v8[*(v5 + 52)];
  v10 = *(v6 + 8);

  v10(v8, v5);
  return v9;
}

uint64_t sub_1E1491584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for ModelMappedDiffableDataSourceContentSnapshot(0, *((*MEMORY[0x1E69E7D40] & *v4) + class metadata base offset for ModelMappedDiffableDataSource), *((*MEMORY[0x1E69E7D40] & *v4) + class metadata base offset for ModelMappedDiffableDataSource + 8), a4);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  sub_1E148D82C(&v11 - v7);
  v9 = ModelMappedDiffableDataSourceContentSnapshot.debugModelDescription.getter(v5);
  (*(v6 + 8))(v8, v5);
  return v9;
}

uint64_t ModelMappedDiffableDataSource.init(collectionView:cellProvider:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = MEMORY[0x1E69E7D40];
  v8 = *MEMORY[0x1E69E7D40] & *v3;
  v9 = *(v8 + class metadata base offset for ModelMappedDiffableDataSource + 8);
  v10 = *(v8 + class metadata base offset for ModelMappedDiffableDataSource);
  ModelMappedDiffableDataSourceContentSnapshot.init()(v10, v9, &v3[*(v8 + class metadata base offset for ModelMappedDiffableDataSource + 16)]);
  v11 = *((*v7 & *v3) + class metadata base offset for ModelMappedDiffableDataSource + 24);
  v13 = type metadata accessor for ModelMappedDiffableDataSource.FallbackContentSnapshot(0, v10, v9, v12);
  (*(*(v13 - 8) + 56))(&v3[v11], 1, 1, v13);

  return MEMORY[0x1EEE4CE40](a1, a2, a3);
}

uint64_t sub_1E1491828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = MEMORY[0x1E69E7D40];
  v6 = *MEMORY[0x1E69E7D40] & *v4;
  v7 = *(v6 + class metadata base offset for ModelMappedDiffableDataSource + 8);
  v8 = *(v6 + class metadata base offset for ModelMappedDiffableDataSource + 16);
  v9 = *(v6 + class metadata base offset for ModelMappedDiffableDataSource);
  v10 = type metadata accessor for ModelMappedDiffableDataSourceContentSnapshot(0, v9, v7, a4);
  (*(*(v10 - 8) + 8))(&v4[v8], v10);
  v11 = *((*v5 & *v4) + class metadata base offset for ModelMappedDiffableDataSource + 24);
  type metadata accessor for ModelMappedDiffableDataSource.FallbackContentSnapshot(255, v9, v7, v12);
  v13 = sub_1E1AF6D9C();
  v14 = *(*(v13 - 8) + 8);

  return v14(&v4[v11], v13);
}

id ModelMappedDiffableDataSource.__deallocating_deinit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for ModelMappedDiffableDataSource(0, *((*MEMORY[0x1E69E7D40] & *v4) + class metadata base offset for ModelMappedDiffableDataSource), *((*MEMORY[0x1E69E7D40] & *v4) + class metadata base offset for ModelMappedDiffableDataSource + 8), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

uint64_t sub_1E14919E8(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = MEMORY[0x1E69E7D40];
  v6 = *MEMORY[0x1E69E7D40] & *a1;
  v7 = *(v6 + class metadata base offset for ModelMappedDiffableDataSource + 8);
  v8 = *(v6 + class metadata base offset for ModelMappedDiffableDataSource + 16);
  v9 = *(v6 + class metadata base offset for ModelMappedDiffableDataSource);
  v10 = type metadata accessor for ModelMappedDiffableDataSourceContentSnapshot(0, v9, v7, a4);
  (*(*(v10 - 8) + 8))(&a1[v8], v10);
  v11 = *((*v5 & *a1) + class metadata base offset for ModelMappedDiffableDataSource + 24);
  type metadata accessor for ModelMappedDiffableDataSource.FallbackContentSnapshot(255, v9, v7, v12);
  v13 = sub_1E1AF6D9C();
  v14 = *(*(v13 - 8) + 8);

  return v14(&a1[v11], v13);
}

uint64_t sub_1E1491B34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = ((*MEMORY[0x1E69E7D40] & *v4) + class metadata base offset for ModelMappedDiffableDataSource);
  v7 = type metadata accessor for ModelMappedDiffableDataSourceContentSnapshot(0, *v6, v6[1], a4);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16[-v9];
  v11 = v6[2];
  swift_beginAccess();
  (*(v8 + 16))(v10, &v4[v11], v7);
  swift_beginAccess();
  (*(v8 + 24))(&v4[v11], a1, v7);
  swift_endAccess();
  sub_1E148D65C(v10, v12, v13, v14);
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1E1491CE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + class metadata base offset for ModelMappedDiffableDataSource);
  v5 = *(a1 + class metadata base offset for ModelMappedDiffableDataSource + 8);
  result = type metadata accessor for ModelMappedDiffableDataSourceContentSnapshot(319, v4, v5, a4);
  if (v8 <= 0x3F)
  {
    type metadata accessor for ModelMappedDiffableDataSource.FallbackContentSnapshot(255, v4, v5, v7);
    result = sub_1E1AF6D9C();
    if (v9 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t dispatch thunk of ModelMappedDiffableDataSource.itemModel(for:)()
{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + class metadata base offset for ModelMappedDiffableDataSource + 128))();
}

{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + class metadata base offset for ModelMappedDiffableDataSource + 136))();
}

uint64_t sub_1E14920F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for ModelMappedDiffableDataSourceContentSnapshot(319, *(a1 + 16), *(a1 + 24), a4);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t JSNetworkPerformanceMetrics.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v65 = a2;
  v64 = a3;
  v72 = sub_1E1AF3D0C();
  v73 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v5 = &v47[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_1E1AF380C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v57 = &v47[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v47[-v10];
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v47[-v13];
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v47[-v16];
  sub_1E1AF381C();
  v18 = sub_1E1AF37CC();
  v62 = v19;
  v63 = v18;
  v20 = *(v7 + 8);
  v20(v17, v6);
  v49 = a1;
  sub_1E1AF381C();
  v21 = sub_1E1AF37CC();
  v60 = v22;
  v61 = v21;
  v69 = v6;
  v20(v14, v6);
  v68 = v7 + 8;
  sub_1E1AF381C();
  v48 = *MEMORY[0x1E69AAFB8];
  v23 = v73;
  v24 = v73 + 104;
  v71 = *(v73 + 104);
  v25 = v72;
  v71(v5);
  v67 = v24;
  v59 = sub_1E1AF36BC();
  v58 = v26;
  v27 = *(v23 + 8);
  v73 = v23 + 8;
  v70 = v27;
  v27(v5, v25);
  v66 = v20;
  v20(v11, v6);
  v28 = v49;
  sub_1E1AF381C();
  v29 = v48;
  v30 = v71;
  (v71)(v5, v48, v25);
  v56 = sub_1E1AF36BC();
  v55 = v31;
  v32 = v70;
  v70(v5, v25);
  v20(v11, v69);
  sub_1E1AF381C();
  v33 = v29;
  v34 = v29;
  v35 = v72;
  v30(v5, v33, v72);
  v54 = sub_1E1AF36BC();
  v52 = v36;
  v32(v5, v35);
  v37 = v69;
  v38 = v66;
  v66(v11, v69);
  sub_1E1AF381C();
  v53 = sub_1E1AF370C();
  v38(v11, v37);
  v39 = v57;
  v40 = v28;
  sub_1E1AF381C();
  v41 = v72;
  (v71)(v5, v34, v72);
  v51 = sub_1E1AF36BC();
  v50 = v42;
  v70(v5, v41);
  v43 = v66;
  v66(v39, v37);
  sub_1E1AF381C();
  (v71)(v5, v34, v41);
  sub_1E1AF36BC();
  v70(v5, v41);
  v44 = v69;
  v43(v39, v69);
  sub_1E1AF513C();
  v45 = sub_1E1AF39DC();
  (*(*(v45 - 8) + 8))(v65, v45);
  return v43(v40, v44);
}

uint64_t JSNetworkPerformanceMetrics.metricsData.getter()
{
  v0 = MEMORY[0x1E69E7CC8];
  v50 = MEMORY[0x1E69E7CC8];
  v1 = sub_1E1AF514C();
  v3 = MEMORY[0x1E69E6158];
  if (v2)
  {
    v49 = MEMORY[0x1E69E6158];
    *&v48 = v1;
    *(&v48 + 1) = v2;
    sub_1E1301CF0(&v48, v47);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1E159827C(v47, 0xD000000000000014, 0x80000001E1B60AB0, isUniquelyReferenced_nonNull_native);
    v50 = v0;
  }

  else
  {
    sub_1E1496610(0xD000000000000014, 0x80000001E1B60AB0, &v48);
    sub_1E1308058(&v48, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  }

  v5 = sub_1E1AF515C();
  if (v6)
  {
    v49 = v3;
    *&v48 = v5;
    *(&v48 + 1) = v6;
    sub_1E1301CF0(&v48, v47);
    v7 = v50;
    v8 = swift_isUniquelyReferenced_nonNull_native();
    sub_1E159827C(v47, 0x4C525565676170, 0xE700000000000000, v8);
    v50 = v7;
  }

  else
  {
    sub_1E1496610(0x4C525565676170, 0xE700000000000000, &v48);
    sub_1E1308058(&v48, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  }

  v9 = sub_1E1AF510C();
  v11 = sub_1E1563338(v9, v10 & 1);
  if (v11)
  {
    v12 = v11;
    v49 = sub_1E1380D6C();
    *&v48 = v12;
    sub_1E1301CF0(&v48, v47);
    v13 = v50;
    v14 = swift_isUniquelyReferenced_nonNull_native();
    sub_1E159827C(v47, 0xD000000000000010, 0x80000001E1B60AD0, v14);
    v50 = v13;
  }

  else
  {
    sub_1E1496610(0xD000000000000010, 0x80000001E1B60AD0, &v48);
    sub_1E1308058(&v48, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  }

  v15 = sub_1E1AF511C();
  v17 = sub_1E1563338(v15, v16 & 1);
  if (v17)
  {
    v18 = v17;
    v49 = sub_1E1380D6C();
    *&v48 = v18;
    sub_1E1301CF0(&v48, v47);
    v19 = v50;
    v20 = swift_isUniquelyReferenced_nonNull_native();
    sub_1E159827C(v47, 0xD000000000000011, 0x80000001E1B60AF0, v20);
    v50 = v19;
  }

  else
  {
    sub_1E1496610(0xD000000000000011, 0x80000001E1B60AF0, &v48);
    sub_1E1308058(&v48, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  }

  v21 = sub_1E1AF50FC();
  v23 = sub_1E1563338(v21, v22 & 1);
  if (v23)
  {
    v24 = v23;
    v49 = sub_1E1380D6C();
    *&v48 = v24;
    sub_1E1301CF0(&v48, v47);
    v25 = v50;
    v26 = swift_isUniquelyReferenced_nonNull_native();
    sub_1E159827C(v47, 0x65736E6F70736572, 0xEF656D6954646E45, v26);
    v50 = v25;
  }

  else
  {
    sub_1E1496610(0x65736E6F70736572, 0xEF656D6954646E45, &v48);
    sub_1E1308058(&v48, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  }

  v27 = sub_1E1AF512C();
  if (v27 != 2)
  {
    v28 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
    v49 = sub_1E1380D6C();
    *&v48 = v28;
    sub_1E1301CF0(&v48, v47);
    v29 = v50;
    v30 = swift_isUniquelyReferenced_nonNull_native();
    sub_1E159827C(v47, 0xD000000000000011, 0x80000001E1B60B10, v30);
    v50 = v29;
  }

  v31 = sub_1E1AF50EC();
  v33 = sub_1E1563338(v31, v32 & 1);
  if (v33)
  {
    v34 = v33;
    v49 = sub_1E1380D6C();
    *&v48 = v34;
    sub_1E1301CF0(&v48, v47);
    v35 = v50;
    v36 = swift_isUniquelyReferenced_nonNull_native();
    sub_1E159827C(v47, 0x6174536573726170, 0xEE00656D69547472, v36);
    v50 = v35;
  }

  else
  {
    sub_1E1496610(0x6174536573726170, 0xEE00656D69547472, &v48);
    sub_1E1308058(&v48, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  }

  v37 = sub_1E1AF50DC();
  v39 = sub_1E1563338(v37, v38 & 1);
  if (v39)
  {
    v40 = v39;
    v49 = sub_1E1380D6C();
    *&v48 = v40;
    sub_1E1301CF0(&v48, v47);
    v41 = v50;
    v42 = swift_isUniquelyReferenced_nonNull_native();
    sub_1E159827C(v47, 0x646E456573726170, 0xEC000000656D6954, v42);
    if (!*(v41 + 16))
    {
      return sub_1E1AF3A7C();
    }
  }

  else
  {
    sub_1E1496610(0x646E456573726170, 0xEC000000656D6954, &v48);
    sub_1E1308058(&v48, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    v41 = v50;
    if (!*(v50 + 16))
    {
      return sub_1E1AF3A7C();
    }
  }

  v43 = sub_1E13018F8(0x6369706F74, 0xE500000000000000);
  if (v44)
  {
    sub_1E137A5C4(*(v41 + 56) + 32 * v43, &v48);
    if (swift_dynamicCast())
    {
      v45 = HIBYTE(*(&v47[0] + 1)) & 0xFLL;
      if ((*(&v47[0] + 1) & 0x2000000000000000) == 0)
      {
        v45 = *&v47[0] & 0xFFFFFFFFFFFFLL;
      }

      if (!v45)
      {
      }
    }
  }

  return sub_1E1AF3A7C();
}

uint64_t PageRenderMetricsEvent.DOMChange.metricsData.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  v7 = *(v0 + 48);
  v8 = *(v0 + 56);
  v9 = MEMORY[0x1E69E7CC8];
  v33 = MEMORY[0x1E69E7CC8];
  v10 = sub_1E1563338(v1, v2);
  if (v10)
  {
    v11 = v10;
    v32 = sub_1E1380D6C();
    *&v31 = v11;
    sub_1E1301CF0(&v31, v30);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1E159827C(v30, 0x617453646C697562, 0xEE00656D69547472, isUniquelyReferenced_nonNull_native);
    v33 = v9;
  }

  else
  {
    sub_1E1496610(0x617453646C697562, 0xEE00656D69547472, &v31);
    sub_1E1308058(&v31, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  }

  v13 = sub_1E1563338(v3, v4);
  if (v13)
  {
    v14 = v13;
    v32 = sub_1E1380D6C();
    *&v31 = v14;
    sub_1E1301CF0(&v31, v30);
    v15 = v33;
    v16 = swift_isUniquelyReferenced_nonNull_native();
    sub_1E159827C(v30, 0x646E45646C697562, 0xEC000000656D6954, v16);
    v33 = v15;
  }

  else
  {
    sub_1E1496610(0x646E45646C697562, 0xEC000000656D6954, &v31);
    sub_1E1308058(&v31, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  }

  v17 = sub_1E1563338(v5, v6);
  if (v17)
  {
    v18 = v17;
    v32 = sub_1E1380D6C();
    *&v31 = v18;
    sub_1E1301CF0(&v31, v30);
    v19 = v33;
    v20 = swift_isUniquelyReferenced_nonNull_native();
    sub_1E159827C(v30, 0x74537265646E6572, 0xEF656D6954747261, v20);
    v33 = v19;
  }

  else
  {
    sub_1E1496610(0x74537265646E6572, 0xEF656D6954747261, &v31);
    sub_1E1308058(&v31, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  }

  v21 = sub_1E1563338(v7, v8);
  if (v21)
  {
    v22 = v21;
    v32 = sub_1E1380D6C();
    *&v31 = v22;
    sub_1E1301CF0(&v31, v30);
    v23 = v33;
    v24 = swift_isUniquelyReferenced_nonNull_native();
    sub_1E159827C(v30, 0x6E457265646E6572, 0xED0000656D695464, v24);
    v25 = v23;
    if (!*(v23 + 16))
    {
      return sub_1E1AF3A7C();
    }
  }

  else
  {
    sub_1E1496610(0x6E457265646E6572, 0xED0000656D695464, &v31);
    sub_1E1308058(&v31, &qword_1ECEB2DF0, &unk_1E1B02CE0);
    v25 = v33;
    if (!*(v33 + 16))
    {
      return sub_1E1AF3A7C();
    }
  }

  v26 = sub_1E13018F8(0x6369706F74, 0xE500000000000000);
  if (v27)
  {
    sub_1E137A5C4(*(v25 + 56) + 32 * v26, &v31);
    if (swift_dynamicCast())
    {
      v28 = HIBYTE(*(&v30[0] + 1)) & 0xFLL;
      if ((*(&v30[0] + 1) & 0x2000000000000000) == 0)
      {
        v28 = *&v30[0] & 0xFFFFFFFFFFFFLL;
      }

      if (!v28)
      {
      }
    }
  }

  return sub_1E1AF3A7C();
}

uint64_t PageRenderMetricsEvent.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  PageRenderMetricsEvent.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t *PageRenderMetricsEvent.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v21 = a2;
  v5 = *v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2B28, qword_1E1B03BE0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v20 - v7;
  v2[3] = 0;
  v2[4] = 0;
  v2[5] = 0;
  *(v2 + 48) = 1;
  v2[7] = 0;
  *(v2 + 64) = 1;
  v2[9] = 0;
  *(v2 + 80) = 1;
  v9 = MEMORY[0x1E69E7CC0];
  v2[11] = MEMORY[0x1E69E7CC0];
  v2[12] = v9;
  v2[13] = 0;
  *(v2 + 112) = 1;
  v2[15] = 0;
  *(v2 + 128) = 1;
  v2[17] = 0;
  *(v2 + 144) = 1;
  v2[19] = 0;
  *(v2 + 160) = 1;
  v2[21] = 0;
  v2[22] = 0;
  v2[23] = 0;
  *(v2 + 192) = 1;
  v2[25] = 0;
  *(v2 + 208) = 1;
  v2[27] = 0;
  *(v2 + 224) = 1;
  v2[29] = 0;
  *(v2 + 240) = 1;
  v2[31] = 0;
  *(v2 + 128) = 513;
  v2[33] = 0;
  *(v2 + 136) = 513;
  v2[35] = 0;
  *(v2 + 288) = 1;
  sub_1E1AF368C();
  v10 = sub_1E1AF40DC();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) == 1)
  {
    sub_1E1308058(v8, &qword_1ECEB2B28, qword_1E1B03BE0);
LABEL_5:
    v15 = sub_1E1AF5A7C();
    sub_1E1498AA4(&qword_1EE1E3580, MEMORY[0x1E69AB6A8], MEMORY[0x1E69AB6B0]);
    swift_allocError();
    *v16 = 0xD000000000000011;
    v16[1] = 0x80000001E1B5ABF0;
    v16[2] = v5;
    v16[3] = v9;
    (*(*(v15 - 8) + 104))(v16, *MEMORY[0x1E69AB6A0], v15);
    swift_willThrow();
    v17 = sub_1E1AF39DC();
    (*(*(v17 - 8) + 8))(v21, v17);
    v18 = sub_1E1AF380C();
    (*(*(v18 - 8) + 8))(a1, v18);

    swift_deallocPartialClassInstance();
    return v3;
  }

  v12 = sub_1E1AF40BC();
  (*(v11 + 8))(v8, v10);
  if (!v12)
  {
    goto LABEL_5;
  }

  v13 = sub_1E1AF39DC();
  (*(*(v13 - 8) + 8))(v21, v13);
  v14 = sub_1E1AF380C();
  (*(*(v14 - 8) + 8))(a1, v14);
  v3[2] = v12;
  return v3;
}

uint64_t sub_1E14936C0()
{
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 48) = 1;
  *(v0 + 56) = 0;
  *(v0 + 64) = 1;
  *(v0 + 72) = 0;
  *(v0 + 80) = 1;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 88) = MEMORY[0x1E69E7CC0];
  *(v0 + 96) = v1;
  *(v0 + 104) = 0;
  *(v0 + 112) = 1;
  *(v0 + 120) = 0;
  *(v0 + 128) = 1;
  *(v0 + 136) = 0;
  *(v0 + 144) = 1;
  *(v0 + 152) = 0;
  *(v0 + 160) = 1;
  *(v0 + 168) = 0;
  *(v0 + 176) = 0;
  *(v0 + 184) = 0;
  *(v0 + 192) = 1;
  *(v0 + 200) = 0;
  *(v0 + 208) = 1;
  *(v0 + 216) = 0;
  *(v0 + 224) = 1;
  *(v0 + 232) = 0;
  *(v0 + 240) = 1;
  *(v0 + 248) = 0;
  *(v0 + 256) = 513;
  *(v0 + 264) = 0;
  *(v0 + 272) = 513;
  *(v0 + 280) = 0;
  *(v0 + 288) = 1;
  *(v0 + 16) = sub_1E1303A74(v1);
  return v0;
}

void sub_1E149376C()
{
  v0 = [objc_opt_self() processInfo];
  [v0 ask_launchTime];
  v2 = v1;

  qword_1EE1EC298[0] = v2;
}

double static PageRenderMetricsEvent.lastInteractionTime.getter()
{
  if (qword_1EE1EC290 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return qword_1EE1EC298[0];
}

void static PageRenderMetricsEvent.lastInteractionTime.setter(double a1)
{
  if (qword_1EE1EC290 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_1EE1EC298[0] = a1;
}

uint64_t (*static PageRenderMetricsEvent.lastInteractionTime.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_1EE1EC290 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

double sub_1E149394C@<D0>(double *a1@<X8>)
{
  if (qword_1EE1EC290 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  result = qword_1EE1EC298[0];
  *a1 = qword_1EE1EC298[0];
  return result;
}

void sub_1E14939C8(double *a1)
{
  v1 = *a1;
  if (qword_1EE1EC290 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_1EE1EC298[0] = v1;
}

uint64_t PageRenderMetricsEvent.topic.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 24);

  return v1;
}

double PageRenderMetricsEvent.topic.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;

  return result;
}

void PageRenderMetricsEvent.pageRequestedTime.setter(uint64_t a1, char a2)
{
  swift_beginAccess();
  *(v2 + 40) = a1;
  *(v2 + 48) = a2 & 1;
}

void PageRenderMetricsEvent.pageAppearTime.setter(uint64_t a1, char a2)
{
  swift_beginAccess();
  *(v2 + 56) = a1;
  *(v2 + 64) = a2 & 1;
}

void PageRenderMetricsEvent.pageDisappearTime.setter(uint64_t a1, char a2)
{
  swift_beginAccess();
  *(v2 + 72) = a1;
  *(v2 + 80) = a2 & 1;
}

double PageRenderMetricsEvent.domChanges.setter(uint64_t a1)
{
  *(v1 + 88) = a1;

  return result;
}

double (*PageRenderMetricsEvent.domChanges.modify(void *a1))(uint64_t *a1)
{
  *a1 = *(v1 + 88);
  a1[1] = v1;

  return sub_1E1493E38;
}

double sub_1E1493E38(uint64_t *a1)
{
  *(a1[1] + 88) = *a1;

  return result;
}

double PageRenderMetricsEvent.requests.getter()
{
  swift_beginAccess();

  return result;
}

double PageRenderMetricsEvent.requests.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 96) = a1;

  return result;
}

void PageRenderMetricsEvent.resourceRequestStartTime.setter(uint64_t a1, char a2)
{
  swift_beginAccess();
  *(v2 + 104) = a1;
  *(v2 + 112) = a2 & 1;
}

void PageRenderMetricsEvent.resourceRequestOnScreenEndTime.setter(uint64_t a1, char a2)
{
  swift_beginAccess();
  *(v2 + 120) = a1;
  *(v2 + 128) = a2 & 1;
}

void PageRenderMetricsEvent.resourceRequestEndTime.setter(uint64_t a1, char a2)
{
  swift_beginAccess();
  *(v2 + 136) = a1;
  *(v2 + 144) = a2 & 1;
}

void PageRenderMetricsEvent.pageUserReadyTime.setter(uint64_t a1, char a2)
{
  swift_beginAccess();
  *(v2 + 152) = a1;
  *(v2 + 160) = a2 & 1;
}

double PageRenderMetricsEvent.networkQualityReports.getter()
{
  swift_beginAccess();

  return result;
}

double PageRenderMetricsEvent.networkQualityReports.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 168) = a1;

  return result;
}

double PageRenderMetricsEvent.errors.getter()
{
  swift_beginAccess();

  return result;
}

double PageRenderMetricsEvent.errors.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 176) = a1;

  return result;
}

void PageRenderMetricsEvent.rootViewModelParseStartTime.setter(uint64_t a1, char a2)
{
  swift_beginAccess();
  *(v2 + 184) = a1;
  *(v2 + 192) = a2 & 1;
}

void PageRenderMetricsEvent.rootViewModelParseEndTime.setter(uint64_t a1, char a2)
{
  swift_beginAccess();
  *(v2 + 200) = a1;
  *(v2 + 208) = a2 & 1;
}

void PageRenderMetricsEvent.rootViewModelPresentTime.setter(uint64_t a1, char a2)
{
  swift_beginAccess();
  *(v2 + 216) = a1;
  *(v2 + 224) = a2 & 1;
}

void PageRenderMetricsEvent.jsCallStartTime.setter(uint64_t a1, char a2)
{
  swift_beginAccess();
  *(v2 + 232) = a1;
  *(v2 + 240) = a2 & 1;
}

void PageRenderMetricsEvent.jsCallEndTime.setter(uint64_t a1, char a2)
{
  swift_beginAccess();
  *(v2 + 248) = a1;
  *(v2 + 256) = a2 & 1;
}

void PageRenderMetricsEvent.xpSessionDuration.setter(uint64_t a1, char a2)
{
  swift_beginAccess();
  *(v2 + 264) = a1;
  *(v2 + 272) = a2 & 1;
}

void PageRenderMetricsEvent.xpSamplingPercentageUsers.setter(uint64_t a1, char a2)
{
  swift_beginAccess();
  *(v2 + 280) = a1;
  *(v2 + 288) = a2 & 1;
}

unint64_t PageRenderMetricsEvent.description.getter(double a1)
{
  v1 = sub_1E1AF3ABC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  PageRenderMetricsEvent.metricsData.getter(v4);
  v5 = sub_1E1AF3AAC();
  (*(v2 + 8))(v4, v1);
  v11 = v5;
  v12 = sub_1E1496118;
  v13 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4728, &unk_1E1B0E100);
  sub_1E14970F0();
  sub_1E13B8AA4();
  v6 = sub_1E1AF618C();
  v8 = v7;

  v11 = 0;
  v12 = 0xE000000000000000;
  sub_1E1AF6FEC();

  v11 = 0xD000000000000017;
  v12 = 0x80000001E1B60B30;
  MEMORY[0x1E68FECA0](v6, v8);

  MEMORY[0x1E68FECA0](41, 0xE100000000000000);
  return v11;
}

uint64_t PageRenderMetricsEvent.metricsData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v116[2] = a1;
  v3 = 0xD000000000000011;
  v4 = sub_1E1AF516C();
  v5 = *(v4 - 8);
  v123 = v4;
  v124 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v122 = v116 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = sub_1E1AF3ABC();
  v7 = *(v126 - 8);
  MEMORY[0x1EEE9AC00](v126);
  v125 = v116 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + 16);
  v151 = v9;
  v10 = MEMORY[0x1E69E6158];
  *(&v144 + 1) = MEMORY[0x1E69E6158];
  *&v143 = 0x646E655265676170;
  *(&v143 + 1) = 0xEA00000000007265;
  sub_1E1301CF0(&v143, v150);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v149 = v9;
  sub_1E159827C(v150, 0x707954746E657665, 0xE900000000000065, isUniquelyReferenced_nonNull_native);
  v12 = v149;
  swift_beginAccess();
  v13 = *(v2 + 24);
  v14 = *(v2 + 32);
  *(&v144 + 1) = v10;
  v15 = 0x80000001E1B5AD20;
  if (v14)
  {
    v15 = v14;
  }

  else
  {
    v13 = 0xD000000000000011;
  }

  *&v143 = v13;
  *(&v143 + 1) = v15;
  sub_1E1301CF0(&v143, v150);

  v16 = swift_isUniquelyReferenced_nonNull_native();
  v148 = v12;
  sub_1E159827C(v150, 0x6369706F74, 0xE500000000000000, v16);
  v17 = v148;
  v18 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  v19 = sub_1E1380D6C();
  *(&v144 + 1) = v19;
  *&v143 = v18;
  sub_1E1301CF0(&v143, v150);
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v148 = v17;
  sub_1E159827C(v150, 0x726556746E657665, 0xEC0000006E6F6973, v20);
  v21 = v148;
  v151 = v148;
  if ((byte_1EE1DA4D8 & 1) == 0)
  {
    if (qword_1EE1F9088 != -1)
    {
      swift_once();
    }

    *(&v144 + 1) = v10;
    v143 = xmmword_1EE1F9090;
    sub_1E1301CF0(&v143, v150);

    v22 = swift_isUniquelyReferenced_nonNull_native();
    v148 = v21;
    sub_1E159827C(v150, 0xD000000000000014, 0x80000001E1B60B50, v22);
    v21 = v148;
    v151 = v148;
    byte_1EE1DA4D8 = 1;
  }

  swift_beginAccess();
  v23 = sub_1E1563338(*(v2 + 40), *(v2 + 48));
  if (v23)
  {
    *(&v144 + 1) = v19;
    *&v143 = v23;
    sub_1E1301CF0(&v143, v150);
    v24 = swift_isUniquelyReferenced_nonNull_native();
    v147 = v21;
    sub_1E159827C(v150, 0xD000000000000011, 0x80000001E1B60B70, v24);
    v151 = v147;
  }

  else
  {
    sub_1E1496610(0xD000000000000011, 0x80000001E1B60B70, &v143);
    sub_1E1308058(&v143, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  }

  swift_beginAccess();
  v25 = sub_1E1563338(*(v2 + 56), *(v2 + 64));
  if (v25)
  {
    *(&v144 + 1) = v19;
    *&v143 = v25;
    sub_1E1301CF0(&v143, v150);
    v26 = v151;
    v27 = swift_isUniquelyReferenced_nonNull_native();
    v146 = v26;
    sub_1E159827C(v150, 0x6570704165676170, 0xEE00656D69547261, v27);
    v151 = v146;
  }

  else
  {
    sub_1E1496610(0x6570704165676170, 0xEE00656D69547261, &v143);
    sub_1E1308058(&v143, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  }

  swift_beginAccess();
  v28 = sub_1E1563338(*(v2 + 72), *(v2 + 80));
  if (v28)
  {
    *(&v144 + 1) = v19;
    *&v143 = v28;
    sub_1E1301CF0(&v143, v150);
    v29 = v151;
    v30 = swift_isUniquelyReferenced_nonNull_native();
    v142 = v29;
    sub_1E159827C(v150, 0xD000000000000011, 0x80000001E1B60B90, v30);
    v151 = v142;
  }

  else
  {
    sub_1E1496610(0xD000000000000011, 0x80000001E1B60B90, &v143);
    sub_1E1308058(&v143, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  }

  v31 = *(v2 + 88);
  v32 = *(v31 + 16);
  v33 = MEMORY[0x1E69E7CC0];
  v117 = v2;
  v118 = v19;
  if (v32)
  {
    v142 = MEMORY[0x1E69E7CC0];

    sub_1E135C048(0, v32, 0);
    v34 = v142;
    v121 = v7;
    v35 = (v7 + 8);
    v36 = 32;
    do
    {
      v37 = v31;
      v143 = *(v31 + v36);
      v144 = *(v31 + v36 + 16);
      v145[0] = *(v31 + v36 + 32);
      *(v145 + 9) = *(v31 + v36 + 41);
      v38 = v125;
      PageRenderMetricsEvent.DOMChange.metricsData.getter();
      v3 = sub_1E1AF3AAC();
      (*v35)(v38, v126);
      v142 = v34;
      v40 = v34[2];
      v39 = v34[3];
      if (v40 >= v39 >> 1)
      {
        sub_1E135C048((v39 > 1), v40 + 1, 1);
        v34 = v142;
      }

      v34[2] = v40 + 1;
      v34[v40 + 4] = v3;
      v36 += 64;
      --v32;
      v31 = v37;
    }

    while (v32);

    *(&v144 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4738, &unk_1E1B17220);
    *&v143 = v34;
    sub_1E1301CF0(&v143, v150);
    v41 = v151;
    v42 = swift_isUniquelyReferenced_nonNull_native();
    v141 = v41;
    sub_1E159827C(v150, 0x676E6168436D6F64, 0xEA00000000007365, v42);
    v151 = v141;
    v2 = v117;
    v19 = v118;
    v33 = MEMORY[0x1E69E7CC0];
    v7 = v121;
  }

  swift_beginAccess();
  v43 = *(v2 + 96);
  v44 = *(v43 + 16);
  if (v44)
  {
    *&v143 = v33;

    sub_1E135C048(0, v44, 0);
    v45 = v143;
    v46 = v125;
    v47 = *(v124 + 16);
    v48 = *(v124 + 80);
    v116[1] = v43;
    v3 = v43 + ((v48 + 32) & ~v48);
    v120 = *(v124 + 72);
    v121 = v47;
    v119 = (v7 + 8);
    v124 += 16;
    v49 = (v124 - 8);
    do
    {
      v51 = v122;
      v50 = v123;
      (v121)(v122, v3, v123);
      JSNetworkPerformanceMetrics.metricsData.getter();
      v52 = sub_1E1AF3AAC();
      (*v119)(v46, v126);
      (*v49)(v51, v50);
      *&v143 = v45;
      v54 = *(v45 + 16);
      v53 = *(v45 + 24);
      if (v54 >= v53 >> 1)
      {
        sub_1E135C048((v53 > 1), v54 + 1, 1);
        v45 = v143;
      }

      *(v45 + 16) = v54 + 1;
      *(v45 + 8 * v54 + 32) = v52;
      v3 += v120;
      --v44;
    }

    while (v44);

    *(&v144 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4738, &unk_1E1B17220);
    *&v143 = v45;
    sub_1E1301CF0(&v143, v150);
    v55 = v151;
    v56 = swift_isUniquelyReferenced_nonNull_native();
    v141 = v55;
    sub_1E159827C(v150, 0x7374736575716572, 0xE800000000000000, v56);
    v151 = v141;
    v2 = v117;
    v19 = v118;
    v33 = MEMORY[0x1E69E7CC0];
  }

  swift_beginAccess();
  v57 = sub_1E1563338(*(v2 + 104), *(v2 + 112));
  if (v57)
  {
    *(&v144 + 1) = v19;
    *&v143 = v57;
    sub_1E1301CF0(&v143, v150);
    v58 = v151;
    v59 = swift_isUniquelyReferenced_nonNull_native();
    v140 = v58;
    sub_1E159827C(v150, 0xD000000000000018, 0x80000001E1B60BB0, v59);
    v151 = v140;
  }

  else
  {
    sub_1E1496610(0xD000000000000018, 0x80000001E1B60BB0, &v143);
    sub_1E1308058(&v143, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  }

  swift_beginAccess();
  v60 = sub_1E1563338(*(v2 + 120), *(v2 + 128));
  if (v60)
  {
    *(&v144 + 1) = v19;
    *&v143 = v60;
    sub_1E1301CF0(&v143, v150);
    v61 = v151;
    v62 = swift_isUniquelyReferenced_nonNull_native();
    v139 = v61;
    sub_1E159827C(v150, 0xD00000000000001ELL, 0x80000001E1B60BD0, v62);
    v151 = v139;
  }

  else
  {
    sub_1E1496610(0xD00000000000001ELL, 0x80000001E1B60BD0, &v143);
    sub_1E1308058(&v143, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  }

  swift_beginAccess();
  v63 = sub_1E1563338(*(v2 + 136), *(v2 + 144));
  if (v63)
  {
    *(&v144 + 1) = v19;
    *&v143 = v63;
    sub_1E1301CF0(&v143, v150);
    v64 = v151;
    v65 = swift_isUniquelyReferenced_nonNull_native();
    v138 = v64;
    sub_1E159827C(v150, 0xD000000000000016, 0x80000001E1B60BF0, v65);
    v151 = v138;
  }

  else
  {
    sub_1E1496610(0xD000000000000016, 0x80000001E1B60BF0, &v143);
    sub_1E1308058(&v143, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  }

  swift_beginAccess();
  v66 = sub_1E1563338(*(v2 + 152), *(v2 + 160));
  if (v66)
  {
    *(&v144 + 1) = v19;
    *&v143 = v66;
    sub_1E1301CF0(&v143, v150);
    v67 = v151;
    v68 = swift_isUniquelyReferenced_nonNull_native();
    v137 = v67;
    sub_1E159827C(v150, 0xD000000000000011, 0x80000001E1B60C10, v68);
    v151 = v137;
  }

  else
  {
    sub_1E1496610(0xD000000000000011, 0x80000001E1B60C10, &v143);
    sub_1E1308058(&v143, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  }

  swift_beginAccess();
  v69 = *(v2 + 168);
  if (v69 && *(v69 + 16))
  {
    *(&v144 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4748, &qword_1E1B0E120);
    *&v143 = v69;
    sub_1E1301CF0(&v143, v150);

    v70 = v151;
    v71 = swift_isUniquelyReferenced_nonNull_native();
    v136 = v70;
    sub_1E159827C(v150, 0xD000000000000015, 0x80000001E1B60CF0, v71);
    v151 = v136;
  }

  swift_beginAccess();
  v72 = *(v2 + 176);
  if (v72)
  {
    v73 = *(v72 + 16);
    if (v73)
    {
      *&v143 = v33;

      v74 = &v143;
      sub_1E1AF70EC();
      v75 = 0;
      while (v75 < *(v72 + 16))
      {
        v76 = *(v72 + 8 * v75 + 32);
        v135 = v76;
        v77 = v76;
        sub_1E14961A4(&v135, v150);

        ++v75;
        v33 = *&v150[0];
        sub_1E1AF70BC();
        v3 = *(v143 + 16);
        sub_1E1AF70FC();
        sub_1E1AF710C();
        v74 = &v143;
        sub_1E1AF70CC();
        if (v73 == v75)
        {

          v78 = v143;
          *(&v144 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4740, &qword_1E1B0E118);
          *&v143 = v78;
          sub_1E1301CF0(&v143, v150);
          v79 = v151;
          v80 = swift_isUniquelyReferenced_nonNull_native();
          v135 = v79;
          sub_1E159827C(v150, 0x73726F727265, 0xE600000000000000, v80);
          v151 = v135;
          v19 = v118;
          goto LABEL_50;
        }
      }

      __break(1u);
      goto LABEL_84;
    }
  }

LABEL_50:
  swift_beginAccess();
  v81 = sub_1E1563338(*(v2 + 184), *(v2 + 192));
  if (v81)
  {
    *(&v144 + 1) = v19;
    *&v143 = v81;
    sub_1E1301CF0(&v143, v150);
    v82 = v151;
    v83 = swift_isUniquelyReferenced_nonNull_native();
    v134 = v82;
    sub_1E159827C(v150, 0xD00000000000001BLL, 0x80000001E1B60C30, v83);
    v151 = v134;
  }

  else
  {
    sub_1E1496610(0xD00000000000001BLL, 0x80000001E1B60C30, &v143);
    sub_1E1308058(&v143, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  }

  swift_beginAccess();
  v84 = sub_1E1563338(*(v2 + 200), *(v2 + 208));
  if (v84)
  {
    *(&v144 + 1) = v19;
    *&v143 = v84;
    sub_1E1301CF0(&v143, v150);
    v85 = v151;
    v86 = swift_isUniquelyReferenced_nonNull_native();
    v133 = v85;
    sub_1E159827C(v150, 0xD000000000000019, 0x80000001E1B60C50, v86);
    v151 = v133;
  }

  else
  {
    sub_1E1496610(0xD000000000000019, 0x80000001E1B60C50, &v143);
    sub_1E1308058(&v143, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  }

  swift_beginAccess();
  v87 = sub_1E1563338(*(v2 + 216), *(v2 + 224));
  if (v87)
  {
    *(&v144 + 1) = v19;
    *&v143 = v87;
    sub_1E1301CF0(&v143, v150);
    v88 = v151;
    v89 = swift_isUniquelyReferenced_nonNull_native();
    v132 = v88;
    sub_1E159827C(v150, 0xD000000000000018, 0x80000001E1B60C70, v89);
    v151 = v132;
  }

  else
  {
    sub_1E1496610(0xD000000000000018, 0x80000001E1B60C70, &v143);
    sub_1E1308058(&v143, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  }

  swift_beginAccess();
  v90 = sub_1E1563338(*(v2 + 232), *(v2 + 240));
  if (v90)
  {
    *(&v144 + 1) = v19;
    *&v143 = v90;
    sub_1E1301CF0(&v143, v150);
    v91 = v151;
    v92 = swift_isUniquelyReferenced_nonNull_native();
    v131 = v91;
    sub_1E159827C(v150, 0x74536C6C6143736ALL, 0xEF656D6954747261, v92);
    v151 = v131;
  }

  else
  {
    sub_1E1496610(0x74536C6C6143736ALL, 0xEF656D6954747261, &v143);
    sub_1E1308058(&v143, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  }

  swift_beginAccess();
  v93 = sub_1E1563338(*(v2 + 248), *(v2 + 256));
  if (v93)
  {
    *(&v144 + 1) = v19;
    *&v143 = v93;
    sub_1E1301CF0(&v143, v150);
    v94 = v151;
    v95 = swift_isUniquelyReferenced_nonNull_native();
    v130 = v94;
    sub_1E159827C(v150, 0x6E456C6C6143736ALL, 0xED0000656D695464, v95);
    v151 = v130;
  }

  else
  {
    sub_1E1496610(0x6E456C6C6143736ALL, 0xED0000656D695464, &v143);
    sub_1E1308058(&v143, &qword_1ECEB2DF0, &unk_1E1B02CE0);
  }

  v96 = *(v2 + 257);
  if (v96 != 2)
  {
    v97 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
    *(&v144 + 1) = v19;
    *&v143 = v97;
    sub_1E1301CF0(&v143, v150);
    v98 = v151;
    v99 = swift_isUniquelyReferenced_nonNull_native();
    v130 = v98;
    sub_1E159827C(v150, 0x746144776F4C7369, 0xED000065646F4D61, v99);
    v151 = v130;
  }

  swift_beginAccess();
  if ((*(v2 + 272) & 1) == 0)
  {
    v100 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    *(&v144 + 1) = v19;
    *&v143 = v100;
    sub_1E1301CF0(&v143, v150);
    v101 = v151;
    v102 = swift_isUniquelyReferenced_nonNull_native();
    v129 = v101;
    sub_1E159827C(v150, 0xD000000000000011, 0x80000001E1B60CD0, v102);
    v151 = v129;
  }

  swift_beginAccess();
  v103 = *(v2 + 273);
  if (v103 != 2)
  {
    v104 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
    *(&v144 + 1) = v19;
    *&v143 = v104;
    sub_1E1301CF0(&v143, v150);
    v105 = v151;
    v106 = swift_isUniquelyReferenced_nonNull_native();
    v128 = v105;
    sub_1E159827C(v150, 0xD000000000000010, 0x80000001E1B60CB0, v106);
    v151 = v128;
  }

  swift_beginAccess();
  if (*(v2 + 288) == 1)
  {
    v74 = v151;
  }

  else
  {
    v107 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    *(&v144 + 1) = v19;
    *&v143 = v107;
    sub_1E1301CF0(&v143, v150);
    v108 = v151;
    v109 = swift_isUniquelyReferenced_nonNull_native();
    v127 = v108;
    sub_1E159827C(v150, 0xD000000000000019, 0x80000001E1B60C90, v109);
    v74 = v127;
    v151 = v127;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7220, &qword_1E1B0E110);
  v72 = sub_1E1AF523C();
  v3 = *(v72 - 8);
  v75 = *(v3 + 72);
  v110 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v73 = swift_allocObject();
  *(v73 + 16) = xmmword_1E1B02CD0;
  v33 = v73 + v110;
  sub_1E1AF51FC();
  if (qword_1EE1E3828 != -1)
  {
LABEL_84:
    swift_once();
  }

  v111 = __swift_project_value_buffer(v72, qword_1EE1E3830);
  (*(v3 + 16))(v33 + v75, v111, v72);
  sub_1E1313958(v73);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  if (*(v74 + 2))
  {
    v112 = sub_1E13018F8(0x6369706F74, 0xE500000000000000);
    if (v113)
    {
      sub_1E137A5C4(*(v74 + 7) + 32 * v112, &v143);
      if (swift_dynamicCast())
      {
        v114 = HIBYTE(*(&v150[0] + 1)) & 0xFLL;
        if ((*(&v150[0] + 1) & 0x2000000000000000) == 0)
        {
          v114 = *&v150[0] & 0xFFFFFFFFFFFFLL;
        }

        if (!v114)
        {
        }
      }
    }
  }

  return sub_1E1AF3A7C();
}

uint64_t sub_1E1496118@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  MEMORY[0x1E68FECA0](*a1, a1[1]);
  MEMORY[0x1E68FECA0](8250, 0xE200000000000000);
  result = sub_1E1AF714C();
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  return result;
}

uint64_t sub_1E14961A4@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = [objc_allocWithZone(MEMORY[0x1E695DF90]) init];
  v16 = v3;
  v5 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB57A0, qword_1E1B05740);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB47B8, &qword_1E1B0E378);
  if (swift_dynamicCast())
  {
    sub_1E1308EC0(v14, v17);
    v6 = v18;
    v7 = v19;
    __swift_project_boxed_opaque_existential_1Tm(v17, v18);
    (*(v7 + 16))(v6, v7);
    v8 = sub_1E1AF5DBC();

    *&v14[0] = 0xD000000000000010;
    *(&v14[0] + 1) = 0x80000001E1B60D90;
    [v4 __swift_setObject_forKeyedSubscript_];

    swift_unknownObjectRelease();
    v9 = v19;
    v10 = __swift_project_boxed_opaque_existential_1Tm(v17, v18);
    v11 = MEMORY[0x1EEE9AC00](v10);
    (*(v9 + 24))(sub_1E1498AEC, v11);
    result = __swift_destroy_boxed_opaque_existential_1(v17);
  }

  else
  {
    v15 = 0;
    memset(v14, 0, sizeof(v14));
    sub_1E1308058(v14, &qword_1ECEB47C0, &unk_1E1B0E380);
    swift_getErrorValue();
    sub_1E1AF75AC();
    v13 = sub_1E1AF5DBC();

    v17[0] = 0xD000000000000010;
    v17[1] = 0x80000001E1B60D90;
    [v4 __swift_setObject_forKeyedSubscript_];

    result = swift_unknownObjectRelease();
  }

  *a2 = v4;
  return result;
}

uint64_t sub_1E1496424(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_1E137A5C4(a3, v9);
  sub_1E1AF5E8C();
  v7 = sub_1E1AF5DBC();

  v9[0] = a1;
  v9[1] = a2;

  [a4 __swift_setObject_forKeyedSubscript_];

  return swift_unknownObjectRelease();
}

void *PageRenderMetricsEvent.deinit()
{

  return v0;
}

uint64_t PageRenderMetricsEvent.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t *sub_1E14965A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = swift_allocObject();
  result = PageRenderMetricsEvent.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

double sub_1E1496610@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_1E13018F8(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1E14154D8();
      v10 = v12;
    }

    sub_1E1301CF0((*(v10 + 56) + 32 * v8), a3);
    sub_1E1412DF0(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

double sub_1E14966E0@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = sub_1E135FCF4(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v11 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1E1415CB0();
      v9 = v11;
    }

    sub_1E134B88C(*(v9 + 48) + 40 * v7);
    sub_1E1301CF0((*(v9 + 56) + 32 * v7), a2);
    sub_1E1412FA0(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_1E149683C@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X2>, void (*a3)(uint64_t, uint64_t)@<X3>, void (*a4)(void)@<X4>, uint64_t a5@<X8>, uint64_t a6@<X0>)
{
  v11 = v6;
  v13 = sub_1E159562C(a6);
  if (v14)
  {
    v15 = v13;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v6;
    v30 = *v11;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a4();
      v17 = v30;
    }

    v18 = *(v17 + 48);
    v19 = sub_1E1AEFEAC();
    v20 = v15;
    (*(*(v19 - 8) + 8))(v18 + *(*(v19 - 8) + 72) * v15, v19);
    v21 = *(v17 + 56);
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
    v29 = *(v22 - 8);
    (*(v29 + 32))(a5, v21 + *(v29 + 72) * v20, v22);
    a3(v20, v17);
    *v11 = v17;
    v23 = *(v29 + 56);
    v24 = a5;
    v25 = 0;
    v26 = v22;
  }

  else
  {
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
    v23 = *(*(v27 - 8) + 56);
    v26 = v27;
    v24 = a5;
    v25 = 1;
  }

  return v23(v24, v25, 1, v26);
}

uint64_t sub_1E1496A10(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_1E13018F8(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v2;
  v11 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1E1416B58();
    v8 = v11;
  }

  v9 = *(*(v8 + 56) + 8 * v6);
  sub_1E1413144(v6, v8);
  *v3 = v8;
  return v9;
}

double sub_1E1496ABC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_1E13018F8(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v14 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1E1416E60();
      v10 = v14;
    }

    v11 = *(v10 + 56) + 40 * v8;
    v12 = *(v11 + 16);
    *a3 = *v11;
    *(a3 + 16) = v12;
    *(a3 + 32) = *(v11 + 32);
    sub_1E1413810(v8, v10);
    *v4 = v10;
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

double sub_1E1496BB0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t, uint64_t)@<X2>, void (*a4)(uint64_t, uint64_t)@<X3>, void (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  v10 = v6;
  v12 = sub_1E13018F8(a1, a2);
  if (v13)
  {
    v14 = v12;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v6;
    v18 = *v10;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a5();
      v16 = v18;
    }

    a3(*(v16 + 56) + 40 * v14, a6);
    a4(v14, v16);
    *v10 = v16;
  }

  else
  {
    *(a6 + 32) = 0;
    result = 0.0;
    *a6 = 0u;
    *(a6 + 16) = 0u;
  }

  return result;
}

double sub_1E1496C84@<D0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1E15A47D8();
  if (v5)
  {
    v6 = v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v1;
    v13 = *v2;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1E1417D08();
      v8 = v13;
    }

    v9 = (*(v8 + 56) + (v6 << 6));
    v10 = v9[1];
    *a1 = *v9;
    a1[1] = v10;
    v11 = v9[3];
    a1[2] = v9[2];
    a1[3] = v11;
    sub_1E1413F60(v6, v8);
    *v2 = v8;
  }

  else
  {
    result = 0.0;
    *a1 = 0u;
    a1[1] = 0u;
    a1[2] = 0u;
    a1[3] = xmmword_1E1B0E0F0;
  }

  return result;
}

double sub_1E1496D3C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_1E13018F8(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v14 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1E1418C10();
      v10 = v14;
    }

    v11 = (*(v10 + 56) + 32 * v8);
    v12 = v11[1];
    *a3 = *v11;
    a3[1] = v12;
    sub_1E1412DF0(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_1E1496DE0()
{
  v1 = v0;
  v2 = sub_1E15A47D8();
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v4 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *v0;
  v9 = *v1;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1E141A338();
    v6 = v9;
  }

  v7 = *(*(v6 + 56) + 24 * v4);
  sub_1E1414BE0(v4, v6);
  *v1 = v6;
  return v7;
}

uint64_t sub_1E1496E9C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_1E13018F8(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v2;
  v11 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1E141A628();
    v8 = v11;
  }

  v9 = *(*(v8 + 56) + 8 * v6);
  sub_1E141D25C();
  *v3 = v8;
  return v9;
}

double sub_1E1496F60@<D0>(void (*a1)(uint64_t, uint64_t)@<X1>, void (*a2)(void)@<X2>, uint64_t a3@<X8>, uint64_t a4@<X0>)
{
  v7 = v4;
  v9 = sub_1E15952E8(a4);
  if (v10)
  {
    v11 = v9;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v4;
    v18 = *v7;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a2();
      v13 = v18;
    }

    sub_1E138867C(*(v13 + 48) + 40 * v11);
    v14 = *(v13 + 56) + 88 * v11;
    v15 = *(v14 + 48);
    *(a3 + 32) = *(v14 + 32);
    *(a3 + 48) = v15;
    *(a3 + 64) = *(v14 + 64);
    *(a3 + 80) = *(v14 + 80);
    v16 = *(v14 + 16);
    *a3 = *v14;
    *(a3 + 16) = v16;
    a1(v11, v13);
    *v7 = v13;
  }

  else
  {
    *(a3 + 80) = 0;
    result = 0.0;
    *(a3 + 48) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
  }

  return result;
}

uint64_t sub_1E1497044@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  v3 = v2;
  result = sub_1E1595E40(a2);
  if (v6)
  {
    v7 = result;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1E141BBB4();
      v9 = v13;
    }

    swift_unknownObjectRelease();
    v10 = *(v9 + 56) + 24 * v7;
    v11 = *v10;
    v12 = *(v10 + 16);
    *a1 = v11;
    *(a1 + 16) = v12;
    result = sub_1E1415168(v7, v9);
    *v3 = v9;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  return result;
}

unint64_t sub_1E14970F0()
{
  result = qword_1ECEB4730;
  if (!qword_1ECEB4730)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB4728, &unk_1E1B0E100);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB4730);
  }

  return result;
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

uint64_t sub_1E14971D4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 57))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E14971F4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
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

  *(result + 57) = v3;
  return result;
}

uint64_t sub_1E1497240(uint64_t a1)
{
  v2 = sub_1E1AF31DC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4750, &qword_1E1B0E310);
    v9 = sub_1E1AF6F9C();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_1E1498AA4(&qword_1EE1E3C90, MEMORY[0x1E698B288], MEMORY[0x1E698B290]);
      v16 = sub_1E1AF5D0C();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          sub_1E1498AA4(&qword_1EE1E3C88, MEMORY[0x1E698B288], MEMORY[0x1E698B298]);
          v23 = sub_1E1AF5DAC();
          v24 = *v15;
          (*v15)(v5, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1E1497560(uint64_t a1)
{
  v2 = sub_1E1AF004C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB4780, &qword_1E1B0E338);
    v9 = sub_1E1AF6F9C();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_1E1498AA4(&qword_1EE1FAD98, MEMORY[0x1E6969AD0], MEMORY[0x1E6969AD8]);
      v16 = sub_1E1AF5D0C();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          sub_1E1498AA4(&qword_1EE1FAD90, MEMORY[0x1E6969AD0], MEMORY[0x1E6969AE0]);
          v23 = sub_1E1AF5DAC();
          v24 = *v15;
          (*v15)(v5, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1E1497880(uint64_t a1)
{
  v2 = sub_1E1AF3C1C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB47A8, &qword_1E1B0E360);
    v9 = sub_1E1AF6F9C();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_1E1498AA4(&qword_1EE1E3B28, MEMORY[0x1E69AAF70], MEMORY[0x1E69AAF78]);
      v16 = sub_1E1AF5D0C();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          sub_1E1498AA4(&qword_1EE1E3B20, MEMORY[0x1E69AAF70], MEMORY[0x1E69AAF80]);
          v23 = sub_1E1AF5DAC();
          v24 = *v15;
          (*v15)(v5, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1E1497BA0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB47B0, &unk_1E1B0E368);
    v3 = sub_1E1AF6F9C();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_1E1AF762C();

      sub_1E1AF5F0C();
      result = sub_1E1AF767C();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = sub_1E1AF74AC();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}