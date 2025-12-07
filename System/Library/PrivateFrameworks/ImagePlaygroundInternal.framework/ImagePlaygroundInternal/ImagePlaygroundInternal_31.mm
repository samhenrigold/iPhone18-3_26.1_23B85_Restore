double sub_1D25E0918(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEDD0, &qword_1D2897688);
  sub_1D2877308();
  sub_1D25E3F68();

  return result;
}

id sub_1D25E0974(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEDD0, &qword_1D2897688);
  sub_1D2877308();
  v1 = sub_1D25E492C();

  return v1;
}

uint64_t sub_1D25E09D8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v34 = a4;
  v35 = a5;
  v32 = a2;
  v33 = a3;
  v36 = a1;
  v38 = a6;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEE20, &qword_1D28976F8);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v37 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v31 - v10;
  v12 = sub_1D28771B8();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEE28, &qword_1D2897700);
  v17 = v16 - 8;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v31 - v21;
  sub_1D262D4E8();
  sub_1D2877188();
  (*(v13 + 104))(v15, *MEMORY[0x1E6981630], v12);
  v23 = sub_1D2877228();

  (*(v13 + 8))(v15, v12);
  v24 = &v22[*(v17 + 44)];
  v39[0] = v32;
  v39[1] = v33;
  v39[2] = v34;
  v39[3] = v35;
  type metadata accessor for PhotoGridElementView(0, v39);
  sub_1D25DDD14(v24);
  *(v24->n128_u16 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC410, &qword_1D288CC00) + 36)) = 256;
  *v22 = v23;
  *(v22 + 8) = xmmword_1D2897540;
  v22[24] = 0;
  sub_1D2874738();
  v25 = sub_1D2876338();
  v26 = &v11[*(v7 + 44)];
  *v26 = v25;
  *(v26 + 8) = 0u;
  *(v26 + 24) = 0u;
  v26[40] = 1;
  sub_1D22BD1D0(v22, v19, &qword_1EC6DEE28, &qword_1D2897700);
  v27 = v37;
  sub_1D22BD1D0(v11, v37, &qword_1EC6DEE20, &qword_1D28976F8);
  v28 = v38;
  sub_1D22BD1D0(v19, v38, &qword_1EC6DEE28, &qword_1D2897700);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEE30, &qword_1D2897708);
  sub_1D22BD1D0(v27, v28 + *(v29 + 48), &qword_1EC6DEE20, &qword_1D28976F8);
  sub_1D22BD238(v11, &qword_1EC6DEE20, &qword_1D28976F8);
  sub_1D22BD238(v22, &qword_1EC6DEE28, &qword_1D2897700);
  sub_1D22BD238(v27, &qword_1EC6DEE20, &qword_1D28976F8);
  return sub_1D22BD238(v19, &qword_1EC6DEE28, &qword_1D2897700);
}

unint64_t sub_1D25E0D6C()
{
  result = qword_1EC6DED98;
  if (!qword_1EC6DED98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DED90, &qword_1D2897660);
    sub_1D25E0E24();
    sub_1D22BB9D8(&qword_1EC6DEDB8, &qword_1EC6DEDC0, &unk_1D2897670, MEMORY[0x1E697EC18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DED98);
  }

  return result;
}

unint64_t sub_1D25E0E24()
{
  result = qword_1EC6DEDA0;
  if (!qword_1EC6DEDA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DEDA8, &qword_1D2897668);
    sub_1D25E1DA4(&qword_1EC6DEDB0, type metadata accessor for PhotoAssetView, &protocol conformance descriptor for PhotoAssetView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DEDA0);
  }

  return result;
}

double sub_1D25E0EF8()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  v7[0] = v0[2];
  v7[1] = v1;
  v7[2] = v2;
  v7[3] = v3;
  v4 = *(type metadata accessor for PhotoGridElementView(0, v7) - 8);
  v5 = v0 + ((*(v4 + 80) + 48) & ~*(v4 + 80));

  return sub_1D25E0918(v5);
}

id sub_1D25E0F9C()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  v7[0] = v0[2];
  v7[1] = v1;
  v7[2] = v2;
  v7[3] = v3;
  v4 = *(type metadata accessor for PhotoGridElementView(0, v7) - 8);
  v5 = v0 + ((*(v4 + 80) + 48) & ~*(v4 + 80));

  return sub_1D25E0974(v5);
}

void sub_1D25E1040(double a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v77 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9D40, &qword_1D28804D0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v74 - v10;
  v12 = objc_allocWithZone(MEMORY[0x1E696AD98]);
  v78 = a2;
  v13 = [v12 initWithInteger_];
  v79 = a3;
  v14 = [a3 stringFromNumber_];

  if (v14)
  {
    v15 = COERCE_DOUBLE(sub_1D28780A8());
    v17 = v16;
  }

  else
  {
    v15 = 0.0;
    *&v17 = -2.68156159e154;
  }

  v93 = v15;
  v94 = *&v17;
  sub_1D22BD06C();
  v18 = sub_1D2876698();
  v20 = v19;
  v22 = v21;
  sub_1D2876408();
  v23 = sub_1D28763F8();
  (*(*(v23 - 8) + 56))(v11, 1, 1, v23);
  sub_1D2876448();
  sub_1D22BD238(v11, &qword_1EC6D9D40, &qword_1D28804D0);
  v24 = sub_1D2876658();
  v26 = v25;
  v28 = v27;
  v76 = v29;

  sub_1D22ED6E0(v18, v20, v22 & 1);

  sub_1D28770A8();
  v30 = sub_1D2876638();
  v81 = v31;
  v82 = v30;
  v33 = v32;
  v80 = v34;

  sub_1D22ED6E0(v24, v26, v28 & 1);

  v35 = swift_allocObject();
  *(v35 + 16) = a5;
  v37 = v77;
  v36 = v78;
  *(v35 + 24) = v77;
  *(v35 + 32) = v36;
  v38 = v79;
  *(v35 + 40) = v79;
  sub_1D2870F78();
  v39 = v38;
  v40 = sub_1D2877848();
  v78 = v41;
  v79 = v40;
  v84 = v33 & 1;
  v93 = a5;
  v94 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA708, &qword_1D2883E40);
  sub_1D2877308();
  LODWORD(v77) = sub_1D2876338();
  sub_1D2874298();
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v50 = v84;
  v108 = 0;
  v76 = sub_1D2877068();
  v75 = sub_1D2876338();
  v51 = sub_1D28770A8();
  sub_1D28745B8();
  v52 = v110;
  LODWORD(v26) = v111;
  v53 = v112;
  v54 = v113;
  v55 = v114;
  v56 = v115;
  v57 = sub_1D2877848();
  v59 = v58;
  v60 = sub_1D2877848();
  *&v87 = v52 * 0.5;
  *(&v87 + 1) = v52;
  *&v88 = __PAIR64__(v53, v26);
  *(&v88 + 1) = v54;
  *&v89 = v55;
  *(&v89 + 1) = v56;
  *&v90 = v51;
  HIWORD(v90) = v86;
  *(&v90 + 10) = v85;
  WORD4(v90) = 256;
  *&v91 = v57;
  *(&v91 + 1) = v59;
  *&v92 = v60;
  *(&v92 + 1) = v61;
  *&v109[5] = v87;
  *&v109[85] = v92;
  *&v109[69] = v91;
  *&v109[37] = v89;
  *&v109[21] = v88;
  *&v109[53] = v90;
  v93 = v52 * 0.5;
  v94 = v52;
  v95 = v26;
  v96 = v53;
  v97 = v54;
  v98 = v55;
  v99 = v56;
  v100 = v51;
  v101 = 256;
  v103 = v86;
  v102 = v85;
  v104 = v57;
  v105 = v59;
  v106 = v60;
  v107 = v61;
  sub_1D22BD1D0(&v87, &v83, &qword_1EC6DC468, &qword_1D28916D0);
  sub_1D22BD238(&v93, &qword_1EC6DC468, &qword_1D28916D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD498, &qword_1D2894E50);
  v62 = swift_allocObject();
  *(v62 + 16) = xmmword_1D287F550;
  LOBYTE(v26) = sub_1D2876358();
  *(v62 + 32) = v26;
  v63 = sub_1D2876388();
  *(v62 + 33) = v63;
  v64 = sub_1D2876378();
  sub_1D2876378();
  if (sub_1D2876378() != v26)
  {
    v64 = sub_1D2876378();
  }

  sub_1D2876378();
  if (sub_1D2876378() != v63)
  {
    v64 = sub_1D2876378();
  }

  sub_1D2874298();
  v65 = v81;
  *a4 = v82;
  *(a4 + 8) = v65;
  *(a4 + 16) = v50;
  v66 = v79;
  *(a4 + 24) = v80;
  *(a4 + 32) = sub_1D25E1D44;
  *(a4 + 40) = v35;
  *(a4 + 48) = v66;
  *(a4 + 56) = v78;
  *(a4 + 64) = LOBYTE(v77);
  *(a4 + 72) = v43;
  *(a4 + 80) = v45;
  *(a4 + 88) = v47;
  *(a4 + 96) = v49;
  *(a4 + 104) = 0;
  *(a4 + 112) = v76;
  *(a4 + 120) = v75;
  *(a4 + 121) = 256;
  v67 = *&v109[48];
  *(a4 + 155) = *&v109[32];
  v68 = *v109;
  *(a4 + 139) = *&v109[16];
  *(a4 + 123) = v68;
  *(a4 + 216) = *&v109[93];
  v69 = *&v109[64];
  *(a4 + 203) = *&v109[80];
  *(a4 + 187) = v69;
  *(a4 + 171) = v67;
  *(a4 + 224) = v64;
  *(a4 + 232) = v70;
  *(a4 + 240) = v71;
  *(a4 + 248) = v72;
  *(a4 + 256) = v73;
  *(a4 + 264) = 0;
}

void sub_1D25E15FC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, double a5)
{
  sub_1D2877098();
  sub_1D28749D8();
  v9 = swift_allocObject();
  *(v9 + 16) = a5;
  *(v9 + 24) = a2;
  *(v9 + 32) = a3;
  *(v9 + 40) = a4;
  type metadata accessor for CGSize(0);
  sub_1D25E1DA4(&unk_1ED89CCD0, type metadata accessor for CGSize, MEMORY[0x1E695EF98]);
  sub_1D2870F78();
  v10 = a4;
  sub_1D2876F48();
}

double sub_1D25E1734(double a1, uint64_t a2, double *a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA708, &qword_1D2883E40);
  sub_1D2877318();
  return result;
}

unint64_t sub_1D25E17F4()
{
  result = qword_1EC6DEDF0;
  if (!qword_1EC6DEDF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DEDE8, &qword_1D28976E0);
    sub_1D22BB9D8(&qword_1EC6DEDF8, &qword_1EC6DEE00, &qword_1D28976E8, MEMORY[0x1E6981F48]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DEDF0);
  }

  return result;
}

unint64_t sub_1D25E18A4()
{
  result = qword_1EC6DEE08;
  if (!qword_1EC6DEE08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DED88, &unk_1D2897650);
    sub_1D22BB9D8(&qword_1EC6DEE10, &qword_1EC6DEDD8, &unk_1D2897690, MEMORY[0x1E6981880]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DEE08);
  }

  return result;
}

void sub_1D25E1954(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a4)
  {
    sub_1D2870F78();

    v4 = a4;
  }
}

double sub_1D25E1998(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a4)
  {
  }

  return result;
}

uint64_t sub_1D25E19E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroyTm_23()
{
  v1 = *(v0 + 32);
  v6[0] = *(v0 + 16);
  v5 = *&v6[0];
  v6[1] = v1;
  v2 = (type metadata accessor for PhotoGridElementView(0, v6) - 8);
  v3 = v0 + ((*(*v2 + 80) + 48) & ~*(*v2 + 80));

  sub_1D22EE66C(*(v3 + 40), *(v3 + 48));
  (*(*(v5 - 8) + 8))(v3 + v2[18]);

  return swift_deallocObject();
}

uint64_t sub_1D25E1BE4@<X0>(void *a1@<X8>)
{
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v9[0] = v1[2];
  v9[1] = v3;
  v9[2] = v4;
  v9[3] = v5;
  v6 = *(type metadata accessor for PhotoGridElementView(0, v9) - 8);
  v7 = v1 + ((*(v6 + 80) + 48) & ~*(v6 + 80));

  return sub_1D25E035C(v7, a1);
}

uint64_t sub_1D25E1C90(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D25E1CD8(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t objectdestroy_54Tm()
{

  return swift_deallocObject();
}

uint64_t sub_1D25E1DA4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D25E1DEC(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D25E1E70()
{
  result = qword_1EC6DEE78;
  if (!qword_1EC6DEE78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DEE80, &qword_1D2897920);
    sub_1D25E1F28();
    sub_1D22BB9D8(&qword_1EC6DD870, &qword_1EC6DC468, &qword_1D28916D0, MEMORY[0x1E697EC18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DEE78);
  }

  return result;
}

unint64_t sub_1D25E1F28()
{
  result = qword_1EC6DEE88;
  if (!qword_1EC6DEE88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DEE90, &qword_1D2897928);
    sub_1D25E1FE0();
    sub_1D22BB9D8(&qword_1ED89DF70, &qword_1EC6DD698, &unk_1D28910A0, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DEE88);
  }

  return result;
}

unint64_t sub_1D25E1FE0()
{
  result = qword_1EC6DEE98;
  if (!qword_1EC6DEE98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DEEA0, &qword_1D2897930);
    sub_1D25E1DEC(&qword_1EC6DEEA8, &qword_1EC6DEEB0, &qword_1D2897938, sub_1D25E20C4);
    sub_1D22BB9D8(&qword_1EC6D77C0, &qword_1EC6DE738, &unk_1D2896AD0, MEMORY[0x1E6980468]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DEE98);
  }

  return result;
}

unint64_t sub_1D25E20C4()
{
  result = qword_1EC6DEEB8;
  if (!qword_1EC6DEEB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DEEC0, &qword_1D2897940);
    sub_1D22BB9D8(&qword_1EC6DEEC8, &qword_1EC6DEED0, &qword_1D2897948, MEMORY[0x1E697F940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DEEB8);
  }

  return result;
}

uint64_t sub_1D25E217C()
{
  swift_getKeyPath();
  sub_1D25E263C(&qword_1EC6DDFA0, type metadata accessor for PhotoGridElementContextualMenuViewModel, &unk_1D28979E0);
  sub_1D28719E8();

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_1D25E2244()
{
  swift_getKeyPath();
  sub_1D25E263C(&qword_1EC6DDFA0, type metadata accessor for PhotoGridElementContextualMenuViewModel, &unk_1D28979E0);
  sub_1D28719E8();

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    swift_getKeyPath();
    sub_1D25E263C(&qword_1EC6DDF98, type metadata accessor for PhotoGridElementViewModel, &unk_1D2897C98);
    sub_1D28719E8();

    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1D257C458(*(v1 + 16));
      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D25E2388()
{

  sub_1D22729C0(v0 + 24);
  sub_1D25E25D4(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal39PhotoGridElementContextualMenuViewModel____lazy_storage___shareableItem);
  v1 = OBJC_IVAR____TtC23ImagePlaygroundInternal39PhotoGridElementContextualMenuViewModel___observationRegistrar;
  v2 = sub_1D2871A28();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PhotoGridElementContextualMenuViewModel(uint64_t a1)
{
  result = qword_1EC6DEEE8;
  if (!qword_1EC6DEEE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D25E2498(uint64_t a1)
{
  sub_1D25E257C(319);
  if (v1 <= 0x3F)
  {
    sub_1D2871A28();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1D25E257C(uint64_t a1)
{
  if (!qword_1EC6DEEF8)
  {
    type metadata accessor for DisplayableImage(255);
    v1 = sub_1D2878F18();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC6DEEF8);
    }
  }
}

uint64_t sub_1D25E25D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEF00, &qword_1D2897A00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D25E263C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D25E2684()
{
  swift_getKeyPath();
  sub_1D25E3968(&qword_1ED89FD50, type metadata accessor for HomeAnimationCoordinator, &unk_1D2897B40);
  sub_1D28719E8();

  return *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal24HomeAnimationCoordinator__transitionFlow);
}

unint64_t sub_1D25E272C(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F70, &qword_1D2881410);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v15 - v5;
  v7 = sub_1D2871818();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v18 = v1;
  sub_1D25E3968(&qword_1ED89FD50, type metadata accessor for HomeAnimationCoordinator, &unk_1D2897B40);
  sub_1D28719E8();

  v11 = OBJC_IVAR____TtC23ImagePlaygroundInternal24HomeAnimationCoordinator__animatedAssetID;
  swift_beginAccess();
  sub_1D25E3608(v2 + v11, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1D22BD238(v6, &qword_1EC6D8F70, &qword_1D2881410);
    v12 = *(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal24HomeAnimationCoordinator_upscalingMatchedTransitionID);
    sub_1D2870F68();
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    v13 = sub_1D28717B8();
    if (a1)
    {
      v16 = 0xD000000000000012;
      v17 = 0x80000001D28BBCC0;
    }

    else
    {
      v16 = 0x6E61725464697247;
      v17 = 0xEF2D6E6F69746973;
    }

    MEMORY[0x1D38A0C50](v13);

    v12 = v16;
    (*(v8 + 8))(v10, v7);
  }

  return v12;
}

unint64_t sub_1D25E29D8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F70, &qword_1D2881410);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v13 - v3;
  v5 = sub_1D2871818();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v16 = v0;
  sub_1D25E3968(&qword_1ED89FD50, type metadata accessor for HomeAnimationCoordinator, &unk_1D2897B40);
  sub_1D28719E8();

  v9 = OBJC_IVAR____TtC23ImagePlaygroundInternal24HomeAnimationCoordinator__animatedAssetID;
  swift_beginAccess();
  sub_1D25E3608(v1 + v9, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1D22BD238(v4, &qword_1EC6D8F70, &qword_1D2881410);
    v10 = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal24HomeAnimationCoordinator_upscalingMatchedTransitionID);
    sub_1D2870F68();
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    swift_getKeyPath();
    v14 = v1;
    sub_1D28719E8();

    if (*(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal24HomeAnimationCoordinator__transitionFlow))
    {
      v11 = sub_1D28717B8();
      v14 = 0xD000000000000012;
      v15 = 0x80000001D28BBCC0;
    }

    else
    {
      v11 = sub_1D28717B8();
      v14 = 0x6E61725464697247;
      v15 = 0xEF2D6E6F69746973;
    }

    MEMORY[0x1D38A0C50](v11);

    v10 = v14;
    (*(v6 + 8))(v8, v5);
  }

  return v10;
}

uint64_t sub_1D25E2CC8@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1D25E3968(&qword_1ED89FD50, type metadata accessor for HomeAnimationCoordinator, &unk_1D2897B40);
  sub_1D28719E8();

  v3 = OBJC_IVAR____TtC23ImagePlaygroundInternal24HomeAnimationCoordinator__animatedAssetID;
  swift_beginAccess();
  return sub_1D25E3608(v5 + v3, a1);
}

uint64_t sub_1D25E2D90@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D25E3968(&qword_1ED89FD50, type metadata accessor for HomeAnimationCoordinator, &unk_1D2897B40);
  sub_1D28719E8();

  v4 = OBJC_IVAR____TtC23ImagePlaygroundInternal24HomeAnimationCoordinator__animatedAssetID;
  swift_beginAccess();
  return sub_1D25E3608(v3 + v4, a2);
}

uint64_t sub_1D25E2E58(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F70, &qword_1D2881410);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - v3;
  sub_1D25E3608(a1, &v6 - v3);
  return sub_1D25E2EEC(v4);
}

uint64_t sub_1D25E2EEC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F70, &qword_1D2881410);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtC23ImagePlaygroundInternal24HomeAnimationCoordinator__animatedAssetID;
  swift_beginAccess();
  sub_1D25E3608(v1 + v6, v5);
  v7 = sub_1D25E3678(v5, a1);
  sub_1D22BD238(v5, &qword_1EC6D8F70, &qword_1D2881410);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_1D25E3968(&qword_1ED89FD50, type metadata accessor for HomeAnimationCoordinator, &unk_1D2897B40);
    sub_1D28719D8();
  }

  else
  {
    swift_beginAccess();
    sub_1D25187F4(a1, v1 + v6);
    swift_endAccess();
  }

  return sub_1D22BD238(a1, &qword_1EC6D8F70, &qword_1D2881410);
}

uint64_t sub_1D25E30D0(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC23ImagePlaygroundInternal24HomeAnimationCoordinator__animatedAssetID;
  swift_beginAccess();
  sub_1D25187F4(a2, a1 + v4);
  return swift_endAccess();
}

void sub_1D25E313C(char a1)
{
  if (*(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal24HomeAnimationCoordinator__transitionFlow) == (a1 & 1))
  {
    *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal24HomeAnimationCoordinator__transitionFlow) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D25E3968(&qword_1ED89FD50, type metadata accessor for HomeAnimationCoordinator, &unk_1D2897B40);
    sub_1D28719D8();
  }
}

uint64_t sub_1D25E3268()
{
  swift_getKeyPath();
  sub_1D25E3968(&qword_1ED89FD50, type metadata accessor for HomeAnimationCoordinator, &unk_1D2897B40);
  sub_1D28719E8();

  v1 = *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal24HomeAnimationCoordinator__detailViewDidAppear);
  sub_1D23415B4(v1, *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal24HomeAnimationCoordinator__detailViewDidAppear + 8));
  return v1;
}

uint64_t sub_1D25E3328(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal24HomeAnimationCoordinator__detailViewDidAppear);
  v4 = *(a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal24HomeAnimationCoordinator__detailViewDidAppear);
  v5 = *(a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal24HomeAnimationCoordinator__detailViewDidAppear + 8);
  *v3 = a2;
  v3[1] = a3;
  sub_1D23415B4(a2, a3);
  return sub_1D22D7900(v4, v5);
}

uint64_t sub_1D25E3380()
{
  sub_1D22BD238(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal24HomeAnimationCoordinator__animatedAssetID, &qword_1EC6D8F70, &qword_1D2881410);
  sub_1D22D7900(*(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal24HomeAnimationCoordinator__detailViewDidAppear), *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal24HomeAnimationCoordinator__detailViewDidAppear + 8));

  v1 = OBJC_IVAR____TtC23ImagePlaygroundInternal24HomeAnimationCoordinator___observationRegistrar;
  v2 = sub_1D2871A28();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for HomeAnimationCoordinator(uint64_t a1)
{
  result = qword_1ED89FD38;
  if (!qword_1ED89FD38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D25E34B8(uint64_t a1)
{
  sub_1D24FEC8C(319);
  if (v1 <= 0x3F)
  {
    sub_1D2871A28();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

unint64_t sub_1D25E35B4()
{
  result = qword_1EC6DEF08;
  if (!qword_1EC6DEF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DEF08);
  }

  return result;
}

uint64_t sub_1D25E3608(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F70, &qword_1D2881410);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D25E3678(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D2871818();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F70, &qword_1D2881410);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94F0, &qword_1D2882EB0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v21 - v12;
  v15 = *(v14 + 56);
  sub_1D25E3608(a1, &v21 - v12);
  sub_1D25E3608(a2, &v13[v15]);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_1D25E3608(v13, v10);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      sub_1D25E3968(&unk_1ED8A6CA0, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
      v18 = sub_1D2877F98();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_1D22BD238(v13, &qword_1EC6D8F70, &qword_1D2881410);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_1D22BD238(v13, &qword_1EC6D94F0, &qword_1D2882EB0);
    v17 = 1;
    return v17 & 1;
  }

  sub_1D22BD238(v13, &qword_1EC6D8F70, &qword_1D2881410);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_1D25E3968(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1D25E39C8(char a1)
{
  v2 = a1 & 1;
  if (*(v1 + 64) == (a1 & 1))
  {
    sub_1D25E513C(a1 & 1);
    *(v1 + 64) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D25E6D10(&qword_1EC6DDF98, type metadata accessor for PhotoGridElementViewModel, &unk_1D2897C98);
    sub_1D28719D8();
  }
}

void sub_1D25E3AE0(char a1)
{
  if (*(v1 + 48) == (a1 & 1))
  {
    *(v1 + 48) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D25E6D10(&qword_1EC6DDF98, type metadata accessor for PhotoGridElementViewModel, &unk_1D2897C98);
    sub_1D28719D8();
  }
}

double sub_1D25E3BF0(uint64_t a1)
{
  if (*(v1 + 56) != a1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D25E6D10(&qword_1EC6DDF98, type metadata accessor for PhotoGridElementViewModel, &unk_1D2897C98);
    sub_1D28719D8();
  }

  return result;
}

uint64_t sub_1D25E3CF4()
{
  swift_getKeyPath();
  sub_1D25E6D10(&qword_1EC6DDF98, type metadata accessor for PhotoGridElementViewModel, &unk_1D2897C98);
  sub_1D28719E8();

  return *(v0 + 49);
}

uint64_t sub_1D25E3D94()
{
  swift_getKeyPath();
  sub_1D25E6D10(&qword_1EC6DDF98, type metadata accessor for PhotoGridElementViewModel, &unk_1D2897C98);
  sub_1D28719E8();

  return *(v0 + 56);
}

void sub_1D25E3E34(char a1, __n128 a2)
{
  v3 = a1 & 1;
  v4 = *(v2 + 49);
  if (v4 == v3)
  {
    *(v2 + 49) = v3;

    sub_1D25E4D94(v4);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D25E6D10(&qword_1EC6DDF98, type metadata accessor for PhotoGridElementViewModel, &unk_1D2897C98);
    sub_1D28719D8();
  }
}

void sub_1D25E3F68()
{
  swift_getKeyPath();
  sub_1D25E6D10(&qword_1EC6DDF98, type metadata accessor for PhotoGridElementViewModel, &unk_1D2897C98);
  sub_1D28719E8();

  if (*(v0 + 48) == 1)
  {
    swift_getKeyPath();
    sub_1D28719E8();

    swift_getKeyPath();
    sub_1D2871A08();

    v1 = *(v0 + 49);
    *(v0 + 49) = v1 ^ 1;
    sub_1D25E4D94(v1);
    swift_getKeyPath();
    sub_1D28719F8();
  }

  else
  {
    swift_getKeyPath();
    sub_1D28719E8();

    if (swift_unknownObjectWeakLoadStrong())
    {
      v2 = *(v0 + 16);
      sub_1D2577070(v0);
      sub_1D257AC10(v2);
      swift_unknownObjectRelease();
    }
  }
}

void sub_1D25E411C(char a1)
{
  if (*(v1 + 50) == (a1 & 1))
  {
    *(v1 + 50) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D25E6D10(&qword_1EC6DDF98, type metadata accessor for PhotoGridElementViewModel, &unk_1D2897C98);
    sub_1D28719D8();
  }
}

double sub_1D25E422C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60, &qword_1D28811F0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v11 - v3;
  swift_getKeyPath();
  v12 = v0;
  sub_1D25E6D10(&qword_1EC6DDF98, type metadata accessor for PhotoGridElementViewModel, &unk_1D2897C98);
  sub_1D28719E8();

  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1D2583904(*(v0 + 16));
    swift_unknownObjectRelease();
  }

  v5 = *(v0 + 16);
  sub_1D2878578();
  v6 = sub_1D28785F8();
  (*(*(v6 - 8) + 56))(v4, 0, 1, v6);
  sub_1D2878568();
  sub_1D2870F78();
  sub_1D2870F78();
  v7 = sub_1D2878558();
  v8 = swift_allocObject();
  v9 = MEMORY[0x1E69E85E0];
  *(v8 + 16) = v7;
  *(v8 + 24) = v9;
  *(v8 + 32) = v5;
  *(v8 + 40) = 2;
  *(v8 + 48) = v1;
  sub_1D22AE01C(0, 0, v4, &unk_1D2897E40, v8);

  return result;
}

double sub_1D25E4400()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60, &qword_1D28811F0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v13 - v3;
  swift_getKeyPath();
  v14 = v0;
  sub_1D25E6D10(&qword_1EC6DDF98, type metadata accessor for PhotoGridElementViewModel, &unk_1D2897C98);
  sub_1D28719E8();

  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v0 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E3A10, &qword_1D2881580);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1D28809B0;
    *(v6 + 32) = v5;
    sub_1D2870F78();
    sub_1D257BF28(v6);
    swift_unknownObjectRelease();
  }

  v7 = *(v0 + 16);
  sub_1D2878578();
  v8 = sub_1D28785F8();
  (*(*(v8 - 8) + 56))(v4, 0, 1, v8);
  sub_1D2878568();
  sub_1D2870F78();
  sub_1D2870F78();
  v9 = sub_1D2878558();
  v10 = swift_allocObject();
  v11 = MEMORY[0x1E69E85E0];
  *(v10 + 16) = v9;
  *(v10 + 24) = v11;
  *(v10 + 32) = v7;
  *(v10 + 40) = 1;
  *(v10 + 48) = v1;
  sub_1D22AE01C(0, 0, v4, &unk_1D2897DB0, v10);

  return result;
}

uint64_t sub_1D25E4624()
{
  swift_getKeyPath();
  sub_1D25E6D10(&qword_1EC6DDF98, type metadata accessor for PhotoGridElementViewModel, &unk_1D2897C98);
  sub_1D28719E8();

  return *(v0 + 64);
}

uint64_t sub_1D25E46C4()
{
  if (*(v0 + 80))
  {
    v1 = *(v0 + 80);
  }

  else
  {
    v2 = *(v0 + 16);
    type metadata accessor for PhotoGridElementContextualMenuViewModel(0);
    v1 = swift_allocObject();
    *(v1 + 32) = 0;
    swift_unknownObjectWeakInit();
    v3 = OBJC_IVAR____TtC23ImagePlaygroundInternal39PhotoGridElementContextualMenuViewModel____lazy_storage___shareableItem;
    v4 = type metadata accessor for DisplayableImage(0);
    (*(*(v4 - 8) + 56))(v1 + v3, 1, 1, v4);
    sub_1D2870F78();
    sub_1D2871A18();
    *(v1 + 16) = v2;
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D25E6D10(&qword_1EC6DDFA0, type metadata accessor for PhotoGridElementContextualMenuViewModel, &unk_1D28979E0);
    sub_1D28719D8();

    *(v0 + 80) = v1;
    sub_1D2870F78();
  }

  sub_1D2870F78();
  return v1;
}

uint64_t sub_1D25E488C()
{
  swift_getKeyPath();
  sub_1D25E6D10(&qword_1EC6DDF98, type metadata accessor for PhotoGridElementViewModel, &unk_1D2897C98);
  sub_1D28719E8();

  return *(v0 + 50);
}

id sub_1D25E492C()
{
  v1 = *(v0 + 72);
  if (v1)
  {
    v2 = *(v0 + 72);
  }

  else
  {
    v3 = *(v0 + 16);
    v4 = type metadata accessor for PhotoAssetItemProviderWriting();
    v5 = objc_allocWithZone(v4);
    *&v5[OBJC_IVAR____TtC23ImagePlaygroundInternal29PhotoAssetItemProviderWriting_asset] = v3;
    v12.receiver = v5;
    v12.super_class = v4;
    sub_1D2870F78();
    v6 = objc_msgSendSuper2(&v12, sel_init);
    v7 = objc_allocWithZone(MEMORY[0x1E696ACA0]);
    v8 = [v7 initWithObject_];

    v9 = *(v0 + 72);
    *(v0 + 72) = v8;
    v2 = v8;

    v1 = 0;
  }

  v10 = v1;
  return v2;
}

uint64_t sub_1D25E49F4()
{
  swift_getKeyPath();
  sub_1D25E6D10(&qword_1EC6DDF98, type metadata accessor for PhotoGridElementViewModel, &unk_1D2897C98);
  sub_1D28719E8();

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_1D25E4A9C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D25E6D10(&qword_1EC6DDF98, type metadata accessor for PhotoGridElementViewModel, &unk_1D2897C98);
  sub_1D28719E8();

  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 32);
  *a2 = result;
  a2[1] = v5;
  return result;
}

double sub_1D25E4B4C(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_1D25E6D10(&qword_1EC6DDF98, type metadata accessor for PhotoGridElementViewModel, &unk_1D2897C98);
  sub_1D28719D8();

  return result;
}

uint64_t sub_1D25E4C1C()
{
  swift_getKeyPath();
  sub_1D25E6D10(&qword_1EC6DDF98, type metadata accessor for PhotoGridElementViewModel, &unk_1D2897C98);
  sub_1D28719E8();

  return *(v0 + 48);
}

void sub_1D25E4CBC(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D25E6D10(&qword_1EC6DDF98, type metadata accessor for PhotoGridElementViewModel, &unk_1D2897C98);
  sub_1D28719E8();

  *a2 = *(v3 + 48);
}

void sub_1D25E4D94(char a1)
{
  v2 = v1;
  v3 = a1 & 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60, &qword_1D28811F0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v15 - v5;
  swift_getKeyPath();
  v16 = v1;
  sub_1D25E6D10(&qword_1EC6DDF98, type metadata accessor for PhotoGridElementViewModel, &unk_1D2897C98);
  sub_1D28719E8();

  if (*(v1 + 49) != v3)
  {
    swift_getKeyPath();
    v16 = v1;
    sub_1D28719E8();

    v7 = *(v1 + 49);
    swift_getKeyPath();
    if (v7 == 1)
    {
      v16 = v2;
      sub_1D28719E8();

      if (!swift_unknownObjectWeakLoadStrong())
      {
        return;
      }

      v8 = *(v2 + 16);
      sub_1D2577070(v2);
      sub_1D257AC10(v8);
    }

    else
    {
      v16 = v2;
      sub_1D28719E8();

      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong)
      {
        return;
      }

      v10 = Strong;
      sub_1D25789F0(v2);
      if (*(v10 + 96))
      {
        v11 = sub_1D28785F8();
        (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
        sub_1D2878568();
        swift_unknownObjectRetain();
        v12 = sub_1D2878558();
        v13 = swift_allocObject();
        v14 = MEMORY[0x1E69E85E0];
        v13[2] = v12;
        v13[3] = v14;
        v13[4] = v10;
        sub_1D22AE01C(0, 0, v6, &unk_1D2897D70, v13);
      }
    }

    swift_unknownObjectRelease();
  }
}

void sub_1D25E5030(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D25E6D10(&qword_1EC6DDF98, type metadata accessor for PhotoGridElementViewModel, &unk_1D2897C98);
  sub_1D28719E8();

  *a2 = *(v3 + 49);
}

void sub_1D25E5100(uint64_t a1, char a2)
{
  v3 = *(a1 + 49);
  *(a1 + 49) = a2;
  sub_1D25E4D94(v3);
}

uint64_t sub_1D25E513C(char a1)
{
  sub_1D25E46C4();
  if (a1)
  {
    sub_1D2870F78();
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_1D25E6D10(&qword_1EC6DDFA0, type metadata accessor for PhotoGridElementContextualMenuViewModel, &unk_1D28979E0);
  sub_1D28719D8();

  return swift_unknownObjectRelease();
}

uint64_t sub_1D25E5268(uint64_t a1, char a2)
{
  result = sub_1D25E513C(a2);
  *(a1 + 64) = a2;
  return result;
}

uint64_t sub_1D25E52A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 64) = a5;
  *(v5 + 16) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE5A0, &unk_1D287F0E0);
  *(v5 + 24) = swift_task_alloc();
  sub_1D2878568();
  *(v5 + 32) = sub_1D2878558();
  v7 = sub_1D28784F8();
  *(v5 + 40) = v7;
  *(v5 + 48) = v6;

  return MEMORY[0x1EEE6DFA0](sub_1D25E537C, v7, v6);
}

uint64_t sub_1D25E537C()
{
  v1 = *(v0 + 64);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  v2[1] = sub_1D25E543C;
  v3 = *(v0 + 24);

  return sub_1D270BEC8(v3, v1 & 1, 0);
}

uint64_t sub_1D25E543C()
{
  v1 = *v0;
  v2 = *(*v0 + 24);

  sub_1D25042E8(v2);
  v3 = *(v1 + 48);
  v4 = *(v1 + 40);

  return MEMORY[0x1EEE6DFA0](sub_1D25E5580, v4, v3);
}

uint64_t sub_1D25E5580()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D25E55E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 304) = a5;
  *(v6 + 72) = a4;
  *(v6 + 80) = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A30, &qword_1D287EFC0);
  *(v6 + 88) = swift_task_alloc();
  v7 = sub_1D2872428();
  *(v6 + 96) = v7;
  *(v6 + 104) = *(v7 - 8);
  *(v6 + 112) = swift_task_alloc();
  v8 = sub_1D2872278();
  *(v6 + 120) = v8;
  *(v6 + 128) = *(v8 - 8);
  *(v6 + 136) = swift_task_alloc();
  v9 = sub_1D2873CB8();
  *(v6 + 144) = v9;
  *(v6 + 152) = *(v9 - 8);
  *(v6 + 160) = swift_task_alloc();
  v10 = sub_1D2872438();
  *(v6 + 168) = v10;
  *(v6 + 176) = *(v10 - 8);
  *(v6 + 184) = swift_task_alloc();
  *(v6 + 192) = swift_task_alloc();
  *(v6 + 200) = sub_1D2878568();
  *(v6 + 208) = sub_1D2878558();
  *(v6 + 216) = sub_1D2878558();
  v12 = sub_1D28784F8();
  *(v6 + 224) = v12;
  *(v6 + 232) = v11;

  return MEMORY[0x1EEE6DFA0](sub_1D25E5848, v12, v11);
}

uint64_t sub_1D25E5848()
{
  v1 = v0[9];
  swift_beginAccess();
  v2 = *(v1 + 80);
  v0[30] = v2;
  if (v2)
  {
    __swift_project_boxed_opaque_existential_1((v0[9] + 16), *(v0[9] + 40));
    v3 = v2;
    v4 = swift_task_alloc();
    v0[31] = v4;
    *v4 = v0;
    v4[1] = sub_1D25E59B8;
    v5 = v0[24];

    return sub_1D23E4308(v5, v3);
  }

  else
  {

    sub_1D233F184();
    v7 = swift_allocError();
    *v8 = 0;
    swift_willThrow();
    v0[37] = v7;
    v10 = sub_1D28784F8();

    return MEMORY[0x1EEE6DFA0](sub_1D25E6298, v10, v9);
  }
}

uint64_t sub_1D25E59B8()
{
  v2 = *v1;
  *(*v1 + 256) = v0;

  v3 = *(v2 + 232);
  v4 = *(v2 + 224);
  if (v0)
  {
    v5 = sub_1D25E6208;
  }

  else
  {
    v5 = sub_1D25E5AF4;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D25E5AF4()
{
  v1 = v0[30];

  v3 = sub_1D28784F8();
  v0[33] = v3;
  v0[34] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1D25E5B88, v3, v2);
}

uint64_t sub_1D25E5B88()
{
  (*(*(v0 + 176) + 16))(*(v0 + 184), *(v0 + 192), *(v0 + 168));
  v1 = sub_1D23C6DDC();
  *(v0 + 305) = sub_1D2730C54(v1) & 1;

  v2 = sub_1D23C6DDC();
  *(v0 + 280) = v2;
  v3 = swift_task_alloc();
  *(v0 + 288) = v3;
  *v3 = v0;
  v3[1] = sub_1D25E5C84;
  v4 = *(v0 + 192);

  return sub_1D273113C(v2, v4);
}

uint64_t sub_1D25E5C84(char a1)
{
  v2 = *v1;
  v3 = *(*v1 + 280);
  *(*v1 + 306) = a1;

  v4 = *(v2 + 272);
  v5 = *(v2 + 264);

  return MEMORY[0x1EEE6DFA0](sub_1D25E5DCC, v5, v4);
}

uint64_t sub_1D25E5DCC()
{

  v1 = sub_1D28722E8();
  v2 = *(v1 + 16);
  if (v2)
  {
    v39 = 0;
    v37 = 0;
    v3 = 0;
    v4 = 0;
    v5 = *(v0 + 128);
    v6 = *(v0 + 104);
    v7 = *(v5 + 16);
    v5 += 16;
    v45 = v7;
    v8 = v1 + ((*(v5 + 64) + 32) & ~*(v5 + 64));
    v42 = *(v5 + 56);
    v9 = (v5 + 72);
    v43 = *MEMORY[0x1E696E450];
    v41 = *MEMORY[0x1E696E468];
    v40 = *MEMORY[0x1E696E448];
    v38 = *MEMORY[0x1E696E460];
    v10 = (v5 - 8);
    v36 = *MEMORY[0x1E696E458];
    v34 = (v6 + 32);
    v35 = (v5 + 80);
    v33 = (v6 + 8);
    v11 = 6;
    do
    {
      v14 = *(v0 + 136);
      v15 = *(v0 + 120);
      v45(v14, v8, v15);
      result = (*v9)(v14, v15);
      if (result == v43)
      {
        result = (*v10)(*(v0 + 136), *(v0 + 120));
        v13 = __OFADD__(v3++, 1);
        if (v13)
        {
          __break(1u);
LABEL_29:
          __break(1u);
          return result;
        }
      }

      else if (result == v41)
      {
        v13 = __OFADD__(v4++, 1);
        if (v13)
        {
          goto LABEL_29;
        }

        (*v10)(*(v0 + 136), *(v0 + 120));
      }

      else if (result == v40)
      {
        (*v10)(*(v0 + 136), *(v0 + 120));
        v39 = 1;
      }

      else if (result == v38)
      {
        (*v10)(*(v0 + 136), *(v0 + 120));
        v37 = 1;
      }

      else
      {
        v16 = *(v0 + 136);
        v17 = *(v0 + 120);
        if (result == v36)
        {
          v18 = *(v0 + 112);
          v19 = *(v0 + 88);
          v31 = *(v0 + 96);
          v32 = v18;
          (*v35)(v16, v17);
          (*v34)(v18, v16, v31);
          sub_1D2872418();
          sub_1D2871EA8();
          v20 = sub_1D2872008();
          (*(*(v20 - 8) + 56))(v19, 0, 1, v20);
          v11 = sub_1D24198DC(v19);
          (*v33)(v32, v31);
        }

        else
        {
          (*v10)(*(v0 + 136), v17);
        }
      }

      v8 += v42;
      --v2;
    }

    while (v2);
    v21 = 0x100000000;
    if ((v37 & 1) == 0)
    {
      v21 = 0;
    }

    v47 = v21;
    v22 = 512;
    if (v39)
    {
      v22 = 16777728;
    }

    v44 = v22;
    v46 = v11;
  }

  else
  {
    v47 = 0;
    v3 = 0;
    v4 = 0;
    v46 = 6;
    v44 = 512;
  }

  v23 = *(v0 + 306);
  v24 = *(v0 + 305);
  v25 = *(v0 + 192);
  v26 = *(v0 + 168);
  v27 = *(v0 + 304);
  v28 = *(*(v0 + 176) + 8);
  v28(*(v0 + 184), v26);

  v29 = 0x10000;
  if (!v24)
  {
    v29 = 0;
  }

  sub_1D279C458(v44 | v47 | (v23 << 40) | v29 | v27, v3, v4, v46);
  v28(v25, v26);

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_1D25E6208()
{
  v1 = v0[30];

  v0[37] = v0[32];
  v3 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D25E6298, v3, v2);
}

uint64_t sub_1D25E6298()
{
  v20 = v0;
  v1 = *(v0 + 296);

  sub_1D28726F8();
  v2 = v1;
  v3 = sub_1D2873CA8();
  v4 = sub_1D2878A18();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 296);
    v6 = *(v0 + 152);
    v18 = *(v0 + 160);
    v7 = *(v0 + 144);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = sub_1D2879748();
    v12 = sub_1D23D7C84(v10, v11, &v19);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_1D226E000, v3, v4, "Failed to get recipe for asset with error: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x1D38A3520](v9, -1, -1);
    MEMORY[0x1D38A3520](v8, -1, -1);

    (*(v6 + 8))(v18, v7);
  }

  else
  {
    v14 = *(v0 + 152);
    v13 = *(v0 + 160);
    v15 = *(v0 + 144);

    (*(v14 + 8))(v13, v15);
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_1D25E64B0()
{

  sub_1D22729C0(v0 + 24);

  v1 = OBJC_IVAR____TtC23ImagePlaygroundInternal25PhotoGridElementViewModel___observationRegistrar;
  v2 = sub_1D2871A28();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PhotoGridElementViewModel(uint64_t a1)
{
  result = qword_1EC6D8328;
  if (!qword_1EC6D8328)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D25E65C8(uint64_t a1)
{
  result = sub_1D2871A28();
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

uint64_t sub_1D25E669C(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1D2871818();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  v12 = *a2;
  v13 = *(v5 + 16);
  v13(&v16 - v10, *(*a1 + 16) + *(**(*a1 + 16) + 160), v4, v9);
  (v13)(v7, *(v12 + 16) + *(**(v12 + 16) + 160), v4);
  LOBYTE(v12) = _s23ImagePlaygroundInternal0A10GenerationV07PreviewA0V2eeoiySbAE_AEtFZ_0();
  v14 = *(v5 + 8);
  v14(v7, v4);
  v14(v11, v4);
  return v12 & 1;
}

uint64_t sub_1D25E6824(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D22BC8FC;

  return sub_1D257B1FC(a1, v4, v5, v6);
}

void sub_1D25E68D8()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 49);
  *(v1 + 49) = *(v0 + 24);
  sub_1D25E4D94(v2);
}

uint64_t sub_1D25E6958(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 48);
  v8 = *(v1 + 40);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D22BDFF8;

  return sub_1D25E55E8(a1, v4, v5, v6, v8, v7);
}

double sub_1D25E6A24()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60, &qword_1D28811F0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v17 - v3;
  sub_1D23C7CA8();
  v5 = sub_1D2878068();
  v6 = sub_1D2878068();
  v7 = sub_1D25D7060(MEMORY[0x1E69E7CC0]);
  v8 = sub_1D2878068();
  v9 = sub_1D2418030(v7);

  if (v9)
  {
    type metadata accessor for IAPayloadKey(0);
    sub_1D22ED23C();
    sub_1D25E6D10(&qword_1ED89CDD0, type metadata accessor for IAPayloadKey, &unk_1D287E68C);
    v10 = sub_1D2877E78();
  }

  else
  {
    v10 = 0;
  }

  [objc_opt_self() asyncSendSignal:v6 toChannel:v5 withNullableUniqueStringID:v8 withPayload:v10];

  v11 = *(v1 + 16);
  sub_1D2878578();
  v12 = sub_1D28785F8();
  (*(*(v12 - 8) + 56))(v4, 0, 1, v12);
  sub_1D2878568();
  sub_1D2870F78();
  sub_1D2870F78();
  v13 = sub_1D2878558();
  v14 = swift_allocObject();
  v15 = MEMORY[0x1E69E85E0];
  *(v14 + 16) = v13;
  *(v14 + 24) = v15;
  *(v14 + 32) = v11;
  *(v14 + 40) = 3;
  *(v14 + 48) = v1;
  sub_1D22AE01C(0, 0, v4, &unk_1D2897E38, v14);

  return result;
}

uint64_t sub_1D25E6CBC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = sub_1D25E513C(v2);
  *(v1 + 64) = v2;
  return result;
}

uint64_t sub_1D25E6D10(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D25E6D58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15)
{
  *a9 = a1;
  v21 = type metadata accessor for PhotoGridElementContextualMenu(0, a14, a15, a4);
  (*(*(a14 - 8) + 32))(&a9[v21[9]], a2, a14);
  a9[v21[10]] = a3;
  v22 = &a9[v21[11]];
  *v22 = a4;
  *(v22 + 1) = a5;
  v23 = &a9[v21[12]];
  *v23 = a6;
  *(v23 + 1) = a7;
  v24 = &a9[v21[13]];
  *v24 = a8;
  *(v24 + 1) = a10;
  v25 = &a9[v21[14]];
  *v25 = a11;
  *(v25 + 1) = a12;
  v25[16] = a13;
  v26 = &a9[v21[15]];
  result = swift_getKeyPath();
  *v26 = result;
  v26[8] = 0;
  return result;
}

void sub_1D25E6EA0(uint64_t a1)
{
  type metadata accessor for PhotoGridElementContextualMenuViewModel(319);
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      sub_1D22BFAB4();
      if (v3 <= 0x3F)
      {
        sub_1D25A273C();
        if (v4 <= 0x3F)
        {
          sub_1D24F98C4(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1D25E6F80(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
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

  v8 = ((((((((((v6 + 8) & ~v6) + *(*(*(a3 + 16) - 8) + 64)) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 9;
  v9 = (a2 - v7 + 255) >> 8;
  if (v8 <= 3)
  {
    v10 = v9 + 1;
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

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = *&a1[v8];
      if (!*&a1[v8])
      {
        goto LABEL_28;
      }
    }

    else
    {
      v13 = *&a1[v8];
      if (!v13)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v12 || (v13 = a1[v8]) == 0)
  {
LABEL_28:
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))(&a1[v6 + 8] & ~v6);
    }

    v17 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v15 = (v13 - 1) << (8 * v8);
  if (v8 <= 3)
  {
    v16 = *a1;
  }

  else
  {
    v15 = 0;
    v16 = *a1;
  }

  return v7 + (v16 | v15) + 1;
}

void sub_1D25E70F4(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((((((((((v9 + 8) & ~v9) + *(*(*(a4 + 16) - 8) + 64)) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v8 >= a3)
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
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

    if (v8 >= a2)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&a1[v10] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_32;
        }

        *&a1[v10] = 0;
      }

      else if (v14)
      {
        a1[v10] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return;
      }

LABEL_32:
      if ((v7 & 0x80000000) != 0)
      {
        v18 = *(v6 + 56);
        v19 = &a1[v9 + 8] & ~v9;

        v18(v19);
      }

      else
      {
        if ((a2 & 0x80000000) != 0)
        {
          v17 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v17 = a2 - 1;
        }

        *a1 = v17;
      }

      return;
    }
  }

  v15 = ~v8 + a2;
  bzero(a1, v10);
  if (v10 <= 3)
  {
    v16 = (v15 >> 8) + 1;
  }

  else
  {
    v16 = 1;
  }

  if (v10 <= 3)
  {
    *a1 = v15;
    if (v14 > 1)
    {
LABEL_27:
      if (v14 == 2)
      {
        *&a1[v10] = v16;
      }

      else
      {
        *&a1[v10] = v16;
      }

      return;
    }
  }

  else
  {
    *a1 = v15;
    if (v14 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v14)
  {
    a1[v10] = v16;
  }
}

uint64_t sub_1D25E7334(uint64_t a1)
{
  v2 = (v1 + *(a1 + 56));
  v3 = *v2;
  v4 = v2[1];
  LOBYTE(v2) = *(v2 + 16);
  v8 = v3;
  v9 = v4;
  v10 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA318, &qword_1D288AA90);
  MEMORY[0x1D389FF60](&v7, v5);
  return v7;
}

uint64_t sub_1D25E7394(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA318, &qword_1D288AA90);
  sub_1D2877518();
  return v2;
}

uint64_t sub_1D25E73F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v50 = a2;
  v5 = *(a1 + 16);
  v49 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v51 = v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v53 = v45 - v8;
  v10 = v9 - 8;
  v11 = *(v9 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC998, &unk_1D288E3E0);
  v52 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v48 = v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v45 - v16;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE810, &qword_1D28A1730);
  MEMORY[0x1EEE9AC00](v46);
  v47 = v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v55 = v45 - v21;
  if (*(v3 + *(v10 + 48)) == 1)
  {
    (*(v11 + 16))(v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v3, a1, v20);
    v22 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v23 = swift_allocObject();
    v45[0] = v3;
    v45[1] = v12;
    v24 = *(a1 + 24);
    *(v23 + 16) = v5;
    *(v23 + 24) = v24;
    v25 = v24;
    (*(v11 + 32))(v23 + v22, v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D99E8, &unk_1D288C480);
    sub_1D22BB9D8(&qword_1ED89D200, &qword_1EC6D99E8, &unk_1D288C480, MEMORY[0x1E697D658]);
    sub_1D2877368();
    v26 = v52;
    v27 = v54;
    v28 = v55;
    (*(v52 + 32))(v55, v17, v54);
    v29 = v28;
    v3 = v45[0];
    (*(v26 + 56))(v29, 0, 1, v27);
  }

  else
  {
    (*(v52 + 56))(v55, 1, 1, v54, v20);
    v25 = *(a1 + 24);
  }

  v30 = v53;
  sub_1D245980C();
  (*(v11 + 16))(v13, v3, a1);
  v31 = v5;
  v32 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = v31;
  *(v33 + 24) = v25;
  (*(v11 + 32))(v33 + v32, v13, a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D99E8, &unk_1D288C480);
  sub_1D22BB9D8(&qword_1ED89D200, &qword_1EC6D99E8, &unk_1D288C480, MEMORY[0x1E697D658]);
  sub_1D2877368();
  v34 = v47;
  sub_1D25E9EE4(v55, v47);
  v60[0] = v34;
  v35 = v49;
  v36 = v51;
  (*(v49 + 16))(v51, v30, v31);
  v60[1] = v36;
  v37 = v48;
  v38 = v17;
  v39 = v17;
  v40 = v52;
  v41 = v54;
  (*(v52 + 16))(v48, v38, v54);
  v60[2] = v37;
  v59[0] = v46;
  v59[1] = v31;
  v59[2] = v41;
  v56 = sub_1D25E9F54();
  v57 = v25;
  v58 = sub_1D22BB9D8(&qword_1ED89D130, &qword_1EC6DC998, &unk_1D288E3E0, MEMORY[0x1E697D680]);
  sub_1D24C289C(v60, 3uLL, v59);
  v42 = *(v40 + 8);
  v42(v39, v41);
  v43 = *(v35 + 8);
  v43(v53, v31);
  sub_1D25EA004(v55);
  v42(v37, v41);
  v43(v36, v31);
  return sub_1D25EA004(v34);
}

double sub_1D25E7A4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D2877938();
  sub_1D2874BE8();

  return result;
}

uint64_t sub_1D25E7ABC(uint64_t *a1)
{
  swift_getKeyPath();
  sub_1D25EA3C4(&qword_1EC6DDFA0, type metadata accessor for PhotoGridElementContextualMenuViewModel, &unk_1D28979E0);
  sub_1D28719E8();

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1D23C7CA8();
    v2 = sub_1D2878068();
    v3 = sub_1D2878068();
    v4 = sub_1D25D7060(MEMORY[0x1E69E7CC0]);
    v5 = sub_1D2878068();
    v6 = sub_1D2418030(v4);

    if (v6)
    {
      type metadata accessor for IAPayloadKey(0);
      sub_1D22BCFD0(0, &qword_1ED89CC48, 0x1E69E58C0);
      sub_1D25EA3C4(&qword_1ED89CDD0, type metadata accessor for IAPayloadKey, &unk_1D287E68C);
      v7 = sub_1D2877E78();
    }

    else
    {
      v7 = 0;
    }

    [objc_opt_self() asyncSendSignal:v3 toChannel:v2 withNullableUniqueStringID:v5 withPayload:v7];

    sub_1D25E422C();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D25E7D4C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D2877198();
  *a1 = result;
  return result;
}

uint64_t sub_1D25E7DF4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D2877198();
  *a1 = result;
  return result;
}

uint64_t sub_1D25E7E34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v132 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB0C8, &qword_1D2888DB0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v130 = &v114[-v4];
  v148 = sub_1D2877568();
  v133 = *(v148 - 8);
  MEMORY[0x1EEE9AC00](v148);
  v147 = &v114[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v156 = &v114[-v7];
  v8 = sub_1D28718F8();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v126 = &v114[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v124 = sub_1D28714D8();
  v123 = *(v124 - 8);
  MEMORY[0x1EEE9AC00](v124);
  v125 = &v114[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_1D2878048();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v122 = &v114[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_1D28714E8();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v121 = &v114[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEF10, &qword_1D2897F08);
  v146 = *(v131 - 8);
  MEMORY[0x1EEE9AC00](v131);
  v145 = &v114[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v16);
  v155 = &v114[-v17];
  v150 = a1;
  v18 = *(a1 - 8);
  a1 -= 8;
  v153 = v18;
  MEMORY[0x1EEE9AC00](v19);
  v135 = v20;
  v136 = &v114[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC998, &unk_1D288E3E0);
  v151 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v142 = &v114[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v23);
  v143 = &v114[-v24];
  MEMORY[0x1EEE9AC00](v25);
  v140 = &v114[-v26];
  MEMORY[0x1EEE9AC00](v27);
  v158 = &v114[-v28];
  v152 = sub_1D2875628();
  v29 = *(v152 - 1);
  MEMORY[0x1EEE9AC00](v152);
  v31 = &v114[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE810, &qword_1D28A1730);
  MEMORY[0x1EEE9AC00](v32);
  v141 = &v114[-((v33 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v34);
  v154 = &v114[-v35];
  v36 = *(a1 + 24);
  v127 = v37;
  v144 = v21;
  swift_getTupleTypeMetadata3();
  sub_1D2877A58();
  swift_getWitnessTable();
  v38 = sub_1D2874678();
  v39 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v41 = &v114[-((v40 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v114[-v43];
  v45 = *(a1 + 32);
  v159 = v36;
  v160 = v36;
  v149 = v45;
  v161 = v45;
  v46 = v157;
  v162 = v157;
  sub_1D2874668();
  WitnessTable = swift_getWitnessTable();
  v137 = v44;
  v120 = WitnessTable;
  sub_1D245980C();
  v119 = v39;
  v48 = *(v39 + 8);
  v138 = v41;
  v139 = v38;
  v129 = v39 + 8;
  v128 = v48;
  v48(v41, v38);
  v49 = v46 + *(a1 + 68);
  if (*(v49 + 8) == 1)
  {
    v174 = *v49;
    sub_1D2870F78();
  }

  else
  {
    sub_1D2870F78();
    sub_1D2878A28();
    v50 = sub_1D28762E8();
    sub_1D2873BE8();

    sub_1D2875618();
    swift_getAtKeyPath();

    (*(v29 + 8))(v31, v152);
  }

  swift_getKeyPath();
  v51 = v153;
  v52 = v159;
  v53 = v151;
  if (qword_1ED8A4928 != -1)
  {
    swift_once();
  }

  v174 = off_1ED8A4930;
  sub_1D25EA3C4(&qword_1ED8A4920, type metadata accessor for DebugSettings, &protocol conformance descriptor for DebugSettings);
  sub_1D28719E8();
  sub_1D2870F78();
  if (os_variant_has_internal_ui())
  {
    sub_1D22BCFD0(0, &qword_1ED89CDA0, 0x1E695E000);
    v54 = sub_1D2878A58();
    v55 = sub_1D2878068();
    v56 = [v54 BOOLForKey_];

    if (v56)
    {
      v152 = *(v51 + 16);
      v57 = (v51 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v58 = v136;
      v59 = v150;
      (v152)(v136, v157, v150);
      v60 = (*(v51 + 80) + 32) & ~*(v51 + 80);
      v61 = swift_allocObject();
      v62 = v149;
      *(v61 + 16) = v52;
      *(v61 + 24) = v62;
      v63 = (*(v51 + 32))(v61 + v60, v58, v59);
      MEMORY[0x1EEE9AC00](v63);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D99E8, &unk_1D288C480);
      sub_1D22BB9D8(&qword_1ED89D200, &qword_1EC6D99E8, &unk_1D288C480, MEMORY[0x1E697D658]);
      v64 = v158;
      v65 = v151;
      sub_1D2877368();
      v66 = v154;
      v67 = v144;
      (*(v65 + 32))(v154, v64, v144);
      (*(v65 + 56))(v66, 0, 1, v67);
      v68 = v152;
      goto LABEL_11;
    }
  }

  else
  {
  }

  (*(v53 + 56))(v154, 1, 1, v144);
  v68 = *(v51 + 16);
  v57 = (v51 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v58 = v136;
LABEL_11:
  v69 = v157;
  v70 = v150;
  v152 = v68;
  (v68)(v58, v157, v150);
  v71 = *(v51 + 80);
  v72 = (v71 + 32) & ~v71;
  v118 = v72 + v135;
  v73 = swift_allocObject();
  v74 = v149;
  *(v73 + 16) = v159;
  *(v73 + 24) = v74;
  v75 = *(v51 + 32);
  v153 = v51 + 32;
  v135 = v72;
  v134 = v75;
  v75(v73 + v72, v58, v70);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D99E8, &unk_1D288C480);
  v77 = sub_1D22BB9D8(&qword_1ED89D200, &qword_1EC6D99E8, &unk_1D288C480, MEMORY[0x1E697D658]);
  v117 = v76;
  v116 = v77;
  sub_1D2877368();
  v78 = sub_1D25E7394(v70);
  v80 = v79;
  v115 = v81;
  sub_1D2877FE8();
  if (qword_1ED89E0F0 != -1)
  {
    swift_once();
  }

  v82 = v124;
  v83 = __swift_project_value_buffer(v124, qword_1ED8B0060);
  (*(v123 + 16))(v125, v83, v82);
  sub_1D28718C8();
  sub_1D28714F8();
  v84 = sub_1D28780F8();
  v174 = v78;
  v175 = v80;
  LOBYTE(v176) = v115 & 1;
  v177 = v84;
  v178 = v85;
  v86 = v150;
  LOBYTE(v173[0]) = sub_1D25E7334(v150) & 1;
  v87 = v136;
  (v152)(v136, v69, v86);
  v124 = v57;
  v88 = swift_allocObject();
  v125 = v71;
  v89 = v149;
  *(v88 + 16) = v159;
  *(v88 + 24) = v89;
  v134(v88 + v135, v87, v86);
  v126 = sub_1D25E9E20();
  sub_1D2876F48();

  sub_1D2877558();
  v90 = v130;
  sub_1D2874258();
  v91 = sub_1D2874288();
  (*(*(v91 - 8) + 56))(v90, 0, 1, v91);
  (v152)(v87, v157, v86);
  v92 = swift_allocObject();
  *(v92 + 16) = v159;
  *(v92 + 24) = v89;
  v134(v92 + v135, v87, v86);
  sub_1D2877358();
  v93 = v138;
  v94 = v139;
  (*(v119 + 16))(v138, v137, v139);
  v174 = v93;
  v95 = v141;
  sub_1D25E9EE4(v154, v141);
  v175 = v95;
  v96 = v151;
  v97 = *(v151 + 16);
  v98 = v143;
  v99 = v144;
  v97(v143, v158, v144);
  v176 = v98;
  v100 = v145;
  v101 = v131;
  (*(v146 + 16))(v145, v155, v131);
  v177 = v100;
  v102 = v133;
  v103 = v147;
  v104 = v148;
  (*(v133 + 16))(v147, v156, v148);
  v178 = v103;
  v105 = v142;
  v106 = v140;
  v97(v142, v140, v99);
  v179 = v105;
  v173[0] = v94;
  v173[1] = v127;
  v173[2] = v99;
  v173[3] = v101;
  v173[4] = v104;
  v173[5] = v99;
  v167 = v120;
  v168 = sub_1D25E9F54();
  v107 = sub_1D22BB9D8(&qword_1ED89D130, &qword_1EC6DC998, &unk_1D288E3E0, MEMORY[0x1E697D680]);
  v169 = v107;
  v163 = &type metadata for AddCaptionButton;
  v164 = MEMORY[0x1E69E6370];
  v165 = v126;
  v166 = MEMORY[0x1E69E6388];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v171 = sub_1D25EA3C4(&qword_1EC6D7620, MEMORY[0x1E697D6D0], MEMORY[0x1E697D6C8]);
  v172 = v107;
  sub_1D24C289C(&v174, 6uLL, v173);
  v108 = *(v96 + 8);
  v108(v106, v99);
  v109 = *(v102 + 8);
  v109(v156, v104);
  v110 = *(v146 + 8);
  v110(v155, v101);
  v108(v158, v99);
  sub_1D25EA004(v154);
  v111 = v94;
  v112 = v128;
  v128(v137, v111);
  v108(v142, v99);
  v109(v147, v148);
  v110(v145, v101);
  v108(v143, v99);
  sub_1D25EA004(v141);
  return v112(v138, v139);
}

uint64_t sub_1D25E9290(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DE810, &qword_1D28A1730);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DC998, &unk_1D288E3E0);
  swift_getTupleTypeMetadata3();
  v5 = sub_1D2877A58();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v16 - v10;
  v13 = type metadata accessor for PhotoGridElementContextualMenu(0, a2, a3, v12);
  sub_1D25E73F8(v13, v8);
  swift_getWitnessTable();
  sub_1D245980C();
  v14 = *(v6 + 8);
  v14(v8, v5);
  sub_1D245980C();
  return (v14)(v11, v5);
}

uint64_t sub_1D25E9448@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(*a1 + 16);
  sub_1D22BCFD0(0, &qword_1EC6D74E0, 0x1E6978630);
  swift_getKeyPath();
  sub_1D22BB9D8(&qword_1EC6DAE20, &unk_1EC6DE550, &qword_1D2895E10, &protocol conformance descriptor for _PhotoAsset<A>);
  sub_1D28719E8();

  if (*(v3 + *(*v3 + 208)) == 1)
  {
    sub_1D2875798();
    if (qword_1ED89E0E8 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_6;
  }

  sub_1D2875798();
  if (qword_1ED89E0E8 != -1)
  {
LABEL_6:
    swift_once();
  }

LABEL_5:
  v4 = qword_1ED8B0058;
  result = sub_1D2876668();
  *a2 = result;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7 & 1;
  *(a2 + 24) = v8;
  return result;
}

uint64_t sub_1D25E9674@<X0>(uint64_t *a2@<X8>)
{
  sub_1D22BCFD0(0, &qword_1EC6D74E0, 0x1E6978630);
  swift_getKeyPath();
  sub_1D22BB9D8(&qword_1EC6DAE20, &unk_1EC6DE550, &qword_1D2895E10, &protocol conformance descriptor for _PhotoAsset<A>);
  sub_1D28719E8();

  result = sub_1D2877198();
  *a2 = result;
  return result;
}

uint64_t sub_1D25E9818@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D2877198();
  *a1 = result;
  return result;
}

void sub_1D25E9858(uint64_t a1, _BYTE *a2, uint64_t *a3)
{
  if (*a2 == 1)
  {
    swift_getKeyPath();
    sub_1D25EA3C4(&qword_1EC6DDFA0, type metadata accessor for PhotoGridElementContextualMenuViewModel, &unk_1D28979E0);
    sub_1D28719E8();

    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1D25E6A24();
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_1D25E9974@<X0>(uint64_t *a1@<X8>)
{
  v24 = a1;
  v23 = sub_1D28714E8();
  v21 = *(v23 - 8);
  v2 = v21;
  v1 = v21;
  MEMORY[0x1EEE9AC00](v23);
  v22 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D28714D8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D28718F8();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = sub_1D2878048();
  MEMORY[0x1EEE9AC00](v9 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEF20, &qword_1D2897F80);
  v10 = *(v1 + 72);
  v11 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v12 = swift_allocObject() + v11;
  sub_1D2877FE8();
  sub_1D28718C8();
  v13 = *MEMORY[0x1E6968DF0];
  v14 = *(v5 + 104);
  v14(v7, v13, v4);
  sub_1D2871508();
  sub_1D2877FE8();
  sub_1D28718C8();
  v14(v7, v13, v4);
  sub_1D2871508();
  (*(v21 + 16))(v22, v12 + v10, v23);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  result = sub_1D2876688();
  v16 = v24;
  *v24 = result;
  v16[1] = v17;
  *(v16 + 16) = v18 & 1;
  v16[3] = v19;
  return result;
}

uint64_t sub_1D25E9CCC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D2877198();
  *a1 = result;
  return result;
}

void sub_1D25E9D84(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(type metadata accessor for PhotoGridElementContextualMenu(0, *(v4 + 16), *(v4 + 24), a4) - 8);
  v8 = (v4 + ((*(v7 + 80) + 32) & ~*(v7 + 80)));

  sub_1D25E9858(a1, a2, v8);
}

unint64_t sub_1D25E9E20()
{
  result = qword_1EC6DEF18;
  if (!qword_1EC6DEF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DEF18);
  }

  return result;
}

uint64_t sub_1D25E9EE4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE810, &qword_1D28A1730);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D25E9F54()
{
  result = qword_1EC6E0E60;
  if (!qword_1EC6E0E60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DE810, &qword_1D28A1730);
    sub_1D22BB9D8(&qword_1ED89D130, &qword_1EC6DC998, &unk_1D288E3E0, MEMORY[0x1E697D680]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6E0E60);
  }

  return result;
}

uint64_t sub_1D25EA004(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE810, &qword_1D28A1730);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroyTm_24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = (type metadata accessor for PhotoGridElementContextualMenu(0, v5, *(v4 + 24), a4) - 8);
  v7 = v4 + ((*(*v6 + 80) + 32) & ~*(*v6 + 80));

  (*(*(v5 - 8) + 8))(v7 + v6[11], v5);

  return swift_deallocObject();
}

double sub_1D25EA320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(type metadata accessor for PhotoGridElementContextualMenu(0, v5, v6, a4) - 8);
  v8 = v4 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return sub_1D25E7A4C(v8, v5, v6);
}

uint64_t sub_1D25EA3C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D25EA40C(char a1)
{
  v1 = sub_1D28718F8();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = sub_1D2878048();
  MEMORY[0x1EEE9AC00](v2 - 8);
  if ((sub_1D27D8E2C() & 1) == 0 && (sub_1D27D8EFC() & 1) == 0)
  {
    sub_1D27D8FCC();
  }

  sub_1D2877FE8();
  if (qword_1ED89E0E8 != -1)
  {
    swift_once();
  }

  v3 = qword_1ED8B0058;
  sub_1D28718C8();
  return sub_1D28780E8();
}

uint64_t sub_1D25EA5B8()
{
  v0 = sub_1D28718F8();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1D2878048();
  MEMORY[0x1EEE9AC00](v1 - 8);
  if ((sub_1D27D8E2C() & 1) == 0 && (sub_1D27D8EFC() & 1) == 0 && (sub_1D27D8FCC() & 1) == 0)
  {
    sub_1D2877FE8();
    if (qword_1ED89E0E8 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_8;
  }

  sub_1D2877FE8();
  if (qword_1ED89E0E8 != -1)
  {
LABEL_8:
    swift_once();
  }

LABEL_5:
  v2 = qword_1ED8B0058;
  sub_1D28718C8();
  return sub_1D28780E8();
}

id sub_1D25EA79C(char a1)
{
  v2 = sub_1D28712E8();
  MEMORY[0x1EEE9AC00](v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1D90, &qword_1D2882510);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v23 - v4;
  v6 = sub_1D2878048();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = sub_1D28720D8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1D27D8E2C() & 1) != 0 || (sub_1D27D8EFC())
  {
    if (a1)
    {
      v11 = 1;
      goto LABEL_7;
    }
  }

  else
  {
    v12 = sub_1D27D8FCC();
    if (a1)
    {
      v11 = v12;
LABEL_7:
      sub_1D28720C8();
      v13 = (*(v8 + 88))(v10, v7);
      if (v13 == *MEMORY[0x1E696E3E8])
      {
        if (v11)
        {
          goto LABEL_16;
        }

LABEL_32:
        sub_1D2877FE8();
        if (qword_1ED89E0E8 == -1)
        {
LABEL_33:
          v17 = qword_1ED8B0058;
          v18 = sub_1D28718F8();
          (*(*(v18 - 8) + 56))(v5, 1, 1, v18);
          v24 = MEMORY[0x1E69E7CC0];
          sub_1D2344864();
          v19 = v17;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA298, &qword_1D2882518);
          sub_1D23448BC();
          sub_1D2879088();
          return sub_1D2871308();
        }

LABEL_40:
        swift_once();
        goto LABEL_33;
      }

      if (v13 == *MEMORY[0x1E696E3D8])
      {
        if (v11)
        {
          goto LABEL_16;
        }

        goto LABEL_32;
      }

      if (v13 == *MEMORY[0x1E696E3D0])
      {
        if ((v11 & 1) == 0)
        {
          goto LABEL_32;
        }

        goto LABEL_16;
      }

      if (v13 == *MEMORY[0x1E696E3F0])
      {
        if ((v11 & 1) == 0)
        {
          goto LABEL_32;
        }

        goto LABEL_16;
      }

      if (v13 == *MEMORY[0x1E696E3E0])
      {
        if ((v11 & 1) == 0)
        {
          goto LABEL_32;
        }

LABEL_16:
        sub_1D2877FE8();
        if (qword_1ED89E0E8 == -1)
        {
          goto LABEL_33;
        }

        goto LABEL_40;
      }

      if (v11)
      {
        sub_1D2877FE8();
        if (qword_1ED89E0E8 == -1)
        {
          goto LABEL_39;
        }
      }

      else
      {
        sub_1D2877FE8();
        if (qword_1ED89E0E8 == -1)
        {
LABEL_39:
          v20 = qword_1ED8B0058;
          v23[0] = qword_1ED8B0058;
          v21 = sub_1D28718F8();
          (*(*(v21 - 8) + 56))(v5, 1, 1, v21);
          v24 = MEMORY[0x1E69E7CC0];
          sub_1D2344864();
          v22 = v20;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA298, &qword_1D2882518);
          sub_1D23448BC();
          sub_1D2879088();
          sub_1D2871308();
          return (*(v8 + 8))(v10, v7);
        }
      }

      swift_once();
      goto LABEL_39;
    }
  }

  result = MobileGestalt_get_current_device();
  if (result)
  {
    v15 = result;
    wapiCapability = MobileGestalt_get_wapiCapability();

    if (wapiCapability)
    {
      sub_1D2877FE8();
      if (qword_1ED89E0E8 == -1)
      {
        goto LABEL_33;
      }
    }

    else
    {
      sub_1D2877FE8();
      if (qword_1ED89E0E8 == -1)
      {
        goto LABEL_33;
      }
    }

    goto LABEL_40;
  }

  __break(1u);
  return result;
}

id sub_1D25EB184(char a1)
{
  v2 = sub_1D28712E8();
  MEMORY[0x1EEE9AC00](v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1D90, &qword_1D2882510);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v18 - v4;
  v6 = sub_1D2878048();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = sub_1D28720D8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1D27D8E2C() & 1) != 0 || (sub_1D27D8EFC())
  {
    if (a1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    sub_1D27D8FCC();
    if (a1)
    {
LABEL_6:
      sub_1D28720C8();
      v11 = (*(v8 + 88))(v10, v7);
      if (v11 != *MEMORY[0x1E696E3E8] && v11 != *MEMORY[0x1E696E3D8] && v11 != *MEMORY[0x1E696E3D0] && v11 != *MEMORY[0x1E696E3F0] && v11 != *MEMORY[0x1E696E3E0])
      {
        (*(v8 + 8))(v10, v7);
      }

      sub_1D2877FE8();
      if (qword_1ED89E0E8 == -1)
      {
        goto LABEL_21;
      }

      goto LABEL_22;
    }
  }

  result = MobileGestalt_get_current_device();
  if (result)
  {
    v13 = result;
    wapiCapability = MobileGestalt_get_wapiCapability();

    if (wapiCapability)
    {
      sub_1D2877FE8();
      if (qword_1ED89E0E8 == -1)
      {
        goto LABEL_21;
      }
    }

    else
    {
      sub_1D2877FE8();
      if (qword_1ED89E0E8 == -1)
      {
        goto LABEL_21;
      }
    }

LABEL_22:
    swift_once();
LABEL_21:
    v15 = qword_1ED8B0058;
    v16 = sub_1D28718F8();
    (*(*(v16 - 8) + 56))(v5, 1, 1, v16);
    v18[3] = MEMORY[0x1E69E7CC0];
    sub_1D2344864();
    v17 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA298, &qword_1D2882518);
    sub_1D23448BC();
    sub_1D2879088();
    return sub_1D2871308();
  }

  __break(1u);
  return result;
}

uint64_t sub_1D25EB83C()
{
  v0 = sub_1D28718F8();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1D2878048();
  MEMORY[0x1EEE9AC00](v1 - 8);
  if ((sub_1D27D8E2C() & 1) == 0 && (sub_1D27D8EFC() & 1) == 0 && (sub_1D27D8FCC() & 1) == 0)
  {
    sub_1D2877FE8();
    if (qword_1ED89E0E8 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_8;
  }

  sub_1D2877FE8();
  if (qword_1ED89E0E8 != -1)
  {
LABEL_8:
    swift_once();
  }

LABEL_5:
  v2 = qword_1ED8B0058;
  sub_1D28718C8();
  return sub_1D28780E8();
}

uint64_t sub_1D25EBA20()
{
  v0 = sub_1D28712E8();
  MEMORY[0x1EEE9AC00](v0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1D90, &qword_1D2882510);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v9 - v2;
  v4 = sub_1D2878048();
  MEMORY[0x1EEE9AC00](v4 - 8);
  if ((sub_1D27D8E2C() & 1) == 0 && (sub_1D27D8EFC() & 1) == 0 && (sub_1D27D8FCC() & 1) == 0)
  {
    sub_1D2877FE8();
    if (qword_1ED89E0E8 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_8;
  }

  sub_1D2877FE8();
  if (qword_1ED89E0E8 != -1)
  {
LABEL_8:
    swift_once();
  }

LABEL_5:
  v5 = qword_1ED8B0058;
  v6 = sub_1D28718F8();
  (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
  v9[1] = MEMORY[0x1E69E7CC0];
  sub_1D2344864();
  v7 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA298, &qword_1D2882518);
  sub_1D23448BC();
  sub_1D2879088();
  return sub_1D2871308();
}

uint64_t sub_1D25EBD94()
{
  v0 = sub_1D28712E8();
  MEMORY[0x1EEE9AC00](v0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1D90, &qword_1D2882510);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v14 - v2;
  v4 = sub_1D2878048();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1D28720D8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_1D27D8E2C() & 1) == 0 && (sub_1D27D8EFC() & 1) == 0)
  {
    sub_1D27D8FCC();
  }

  sub_1D28720C8();
  v9 = (*(v6 + 88))(v8, v5);
  if (v9 != *MEMORY[0x1E696E3E8] && v9 != *MEMORY[0x1E696E3D8] && v9 != *MEMORY[0x1E696E3D0] && v9 != *MEMORY[0x1E696E3F0] && v9 != *MEMORY[0x1E696E3E0])
  {
    (*(v6 + 8))(v8, v5);
  }

  sub_1D2877FE8();
  if (qword_1ED89E0E8 != -1)
  {
    swift_once();
  }

  v10 = qword_1ED8B0058;
  v11 = sub_1D28718F8();
  (*(*(v11 - 8) + 56))(v3, 1, 1, v11);
  v14[3] = MEMORY[0x1E69E7CC0];
  sub_1D2344864();
  v12 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA298, &qword_1D2882518);
  sub_1D23448BC();
  sub_1D2879088();
  return sub_1D2871308();
}

uint64_t sub_1D25EC1D8(int a1)
{
  v71 = a1;
  v2 = sub_1D28718F8();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v73 = &v57[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1D2878048();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v57[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_1D2872818();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v82 = &v57[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v57[-v11];
  MEMORY[0x1EEE9AC00](v13);
  v95 = &v57[-v14];
  MEMORY[0x1EEE9AC00](v15);
  v96 = &v57[-v16];
  MEMORY[0x1EEE9AC00](v17);
  v103 = &v57[-v18];
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v57[-v20];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEF30, &qword_1D2898010);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v84 = &v57[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v57[-v25];
  v83 = v1;
  v27 = sub_1D2872848();
  v28 = v27 + 56;
  v29 = 1 << *(v27 + 32);
  v30 = -1;
  if (v29 < 64)
  {
    v30 = ~(-1 << v29);
  }

  v31 = v30 & *(v27 + 56);
  if (v31)
  {
    v77 = v6;
    v78 = v12;
    v79 = v26;
    v32 = 0;
    v33 = __clz(__rbit64(v31));
    v26 = (v31 - 1) & v31;
    v34 = (v29 + 63) >> 6;
LABEL_9:
    v37 = *(v27 + 48);
    v80 = v8;
    v12 = v27;
    v38 = *(v8 + 16);
    v92 = *(v8 + 72);
    v101 = v38;
    v38(v21, (v37 + v92 * v33), v7);
    v100 = (v8 + 88);
    v99 = *MEMORY[0x1E69A0FE8];
    v97 = *MEMORY[0x1E69A0FF0];
    v91 = *MEMORY[0x1E69A1078];
    v87 = *MEMORY[0x1E69A0FF8];
    v86 = *MEMORY[0x1E69A1090];
    v85 = *MEMORY[0x1E69A1088];
    v81 = *MEMORY[0x1E69A1100];
    v76 = *MEMORY[0x1E69A10A0];
    v75 = *MEMORY[0x1E69A1018];
    v74 = *MEMORY[0x1E69A10E8];
    v72 = *MEMORY[0x1E69A1008];
    v70 = *MEMORY[0x1E69A1068];
    v69 = *MEMORY[0x1E69A0FD8];
    v68 = *MEMORY[0x1E69A1010];
    v67 = *MEMORY[0x1E69A1058];
    v66 = *MEMORY[0x1E69A10C8];
    v65 = *MEMORY[0x1E69A1040];
    v64 = *MEMORY[0x1E69A1060];
    v63 = *MEMORY[0x1E69A10A8];
    v62 = *MEMORY[0x1E69A1038];
    v61 = *MEMORY[0x1E69A1110];
    v60 = *MEMORY[0x1E69A0FE0];
    v59 = *MEMORY[0x1E69A10F0];
    v102 = (v8 + 8);
    v88 = (v8 + 32);
    v58 = *MEMORY[0x1E69A1160];
    v94 = v12;
    v39 = sub_1D2870F68();
    v93 = v21;
    if (v26)
    {
      goto LABEL_14;
    }

LABEL_10:
    while (1)
    {
      v40 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        break;
      }

      if (v40 >= v34)
      {

        v8 = v80;
        v26 = v79;
        (*(v80 + 32))(v79, v21, v7);
        (*(v8 + 56))(v26, 0, 1, v7);
        v12 = v78;
        goto LABEL_92;
      }

      v26 = *(v28 + 8 * v40);
      ++v32;
      if (v26)
      {
        v32 = v40;
        while (1)
        {
LABEL_14:
          v41 = v101;
          v101(v103, (*(v94 + 48) + (__clz(__rbit64(v26)) | (v32 << 6)) * v92), v7);
          v42 = v96;
          v41(v96, v21, v7);
          v98 = *v100;
          v43 = v98(v42, v7);
          v44 = v43 == v99 || v43 == v97;
          v45 = !v44;
          if (v44)
          {
LABEL_52:
            (*v102)(v96, v7);
            v46 = v45;
            v47 = v45;
            v8 = v45;
            v12 = v45;
            goto LABEL_53;
          }

          if (v43 == v91)
          {
            v46 = 0;
            v47 = 0;
            v8 = 0;
            v12 = 1;
          }

          else
          {
            v46 = 0;
            if (v43 == v87 || v43 == v86)
            {
              v47 = 0;
              v8 = 0;
              v12 = 0;
            }

            else
            {
              v47 = 0;
              v8 = 0;
              v12 = 0;
              if (v43 != v85)
              {
                v46 = 0;
                v12 = 1;
                if (v43 == v81 || v43 == v76)
                {
LABEL_36:
                  v47 = 0;
                  v8 = 0;
                  goto LABEL_53;
                }

                v47 = 0;
                v8 = 0;
                if (v43 != v75)
                {
                  if (v43 == v74)
                  {
                    v47 = 0;
                    v46 = 1;
                    v8 = 1;
                  }

                  else
                  {
                    v46 = 0;
                    if (v43 == v72)
                    {
                      goto LABEL_36;
                    }

                    v47 = 0;
                    v8 = 0;
                    if (v43 != v70)
                    {
                      if (v43 == v69)
                      {
                        v46 = 1;
                        v47 = 1;
                        v8 = 1;
                      }

                      else
                      {
                        if (v43 == v68)
                        {
                          goto LABEL_38;
                        }

                        v46 = 0;
                        v8 = 1;
                        if (v43 == v67)
                        {
                          v47 = 0;
                          goto LABEL_53;
                        }

                        v47 = 0;
                        if (v43 != v66 && v43 != v65)
                        {
                          if (v43 == v64)
                          {
                            v47 = 0;
                            v46 = 1;
                            goto LABEL_53;
                          }

                          if (v43 == v63)
                          {
LABEL_38:
                            v46 = 0;
                            v47 = 0;
                            v8 = 0;
                            goto LABEL_53;
                          }

                          if (v43 == v62)
                          {
                            v46 = 0;
                            v47 = 0;
                          }

                          else
                          {
                            v46 = 1;
                            if (v43 == v61 || v43 == v60)
                            {
                              v47 = 1;
                              goto LABEL_53;
                            }

                            v47 = 1;
                            if (v43 != v59 && v43 != v58)
                            {
                              goto LABEL_52;
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

LABEL_53:
          v89 = v46;
          v90 = v47;
          v26 &= v26 - 1;
          v48 = v95;
          v101(v95, v103, v7);
          v49 = v98(v48, v7);
          if (v49 == v99 || v49 == v97)
          {
            (*v102)(v95, v7);
            v21 = v93;
            goto LABEL_59;
          }

          v21 = v93;
          if (v49 == v91)
          {
            goto LABEL_56;
          }

          if (v49 == v87 || v49 == v86 || v49 == v85)
          {
LABEL_59:
            if ((v12 & 1) == 0)
            {
              goto LABEL_74;
            }

LABEL_60:
            (*v102)(v21, v7);
            v39 = (*v88)(v21, v103, v7);
            if (!v26)
            {
              goto LABEL_10;
            }
          }

          else
          {
            if (v49 != v81 && v49 != v76 && v49 != v75)
            {
              if (v49 == v74)
              {
                goto LABEL_69;
              }

              if (v49 != v72 && v49 != v70)
              {
                if (v49 == v69)
                {
                  goto LABEL_74;
                }

                if (v49 != v68)
                {
                  if (v49 == v67 || v49 == v66 || v49 == v65)
                  {
                    goto LABEL_83;
                  }

                  if (v49 == v64)
                  {
LABEL_69:
                    if (v90)
                    {
                      goto LABEL_60;
                    }

                    goto LABEL_74;
                  }

                  if (v49 != v63)
                  {
                    if (v49 != v62)
                    {
                      if (v49 != v61 && v49 != v60 && v49 != v59 && v49 != v58)
                      {
                        (*v102)(v95, v7);
                      }

                      goto LABEL_74;
                    }

LABEL_83:
                    if (v89)
                    {
                      goto LABEL_60;
                    }

                    goto LABEL_74;
                  }
                }
              }
            }

LABEL_56:
            if (v8)
            {
              goto LABEL_60;
            }

LABEL_74:
            v39 = (*v102)(v103, v7);
            if (!v26)
            {
              goto LABEL_10;
            }
          }
        }
      }
    }

    __break(1u);
    goto LABEL_122;
  }

  v35 = 0;
  v34 = (v29 + 63) >> 6;
  while (v34 - 1 != v31)
  {
    v32 = v31 + 1;
    v36 = *(v27 + 64 + 8 * v31);
    v35 -= 64;
    ++v31;
    if (v36)
    {
      v77 = v6;
      v78 = v12;
      v79 = v26;
      v26 = (v36 - 1) & v36;
      v33 = __clz(__rbit64(v36)) - v35;
      goto LABEL_9;
    }
  }

  (*(v8 + 56))(v26, 1, 1, v7);
LABEL_92:

  v50 = v84;
  sub_1D22BD1D0(v26, v84, &qword_1EC6DEF30, &qword_1D2898010);
  if ((*(v8 + 48))(v50, 1, v7) == 1)
  {
    sub_1D22BD238(v50, &qword_1EC6DEF30, &qword_1D2898010);
    v51 = sub_1D25EB83C();
LABEL_131:
    sub_1D22BD238(v26, &qword_1EC6DEF30, &qword_1D2898010);
    return v51;
  }

  (*(v8 + 32))(v12, v50, v7);
  v52 = v82;
  (*(v8 + 16))(v82, v12, v7);
  v39 = (*(v8 + 88))(v52, v7);
  if (v39 == *MEMORY[0x1E69A0FE8] || v39 == *MEMORY[0x1E69A0FF0])
  {
LABEL_99:
    (*(v8 + 8))(v82, v7);
LABEL_100:
    v54 = sub_1D25EB83C();
LABEL_130:
    v51 = v54;
    (*(v8 + 8))(v12, v7);
    goto LABEL_131;
  }

  if (v39 != *MEMORY[0x1E69A1078])
  {
    if (v39 == *MEMORY[0x1E69A0FF8] || v39 == *MEMORY[0x1E69A1090] || v39 == *MEMORY[0x1E69A1088] || v39 == *MEMORY[0x1E69A1100] || v39 == *MEMORY[0x1E69A10A0] || v39 == *MEMORY[0x1E69A1018] || v39 == *MEMORY[0x1E69A10E8])
    {
      goto LABEL_100;
    }

    if (v39 == *MEMORY[0x1E69A1128])
    {
      sub_1D2877FE8();
      if (qword_1ED89E0E8 == -1)
      {
        goto LABEL_129;
      }

      goto LABEL_137;
    }

    if (v39 == *MEMORY[0x1E69A1008] || v39 == *MEMORY[0x1E69A1068] || v39 == *MEMORY[0x1E69A0FD8] || v39 == *MEMORY[0x1E69A1010])
    {
      goto LABEL_128;
    }

    if (v39 == *MEMORY[0x1E69A1058])
    {
      goto LABEL_118;
    }

    if (v39 == *MEMORY[0x1E69A10B0])
    {
      v54 = sub_1D25EA5B8();
      goto LABEL_130;
    }

LABEL_122:
    if (v39 != *MEMORY[0x1E69A10C8])
    {
      if (v39 == *MEMORY[0x1E69A1040])
      {
        sub_1D2877FE8();
        if (qword_1ED89E0E8 == -1)
        {
          goto LABEL_129;
        }

        goto LABEL_137;
      }

      if (v39 == *MEMORY[0x1E69A1060])
      {
        goto LABEL_100;
      }

      if (v39 == *MEMORY[0x1E69A10A8])
      {
LABEL_128:
        sub_1D2877FE8();
        if (qword_1ED89E0E8 == -1)
        {
LABEL_129:
          v55 = qword_1ED8B0058;
          sub_1D28718C8();
          v54 = sub_1D28780E8();
          goto LABEL_130;
        }

LABEL_137:
        swift_once();
        goto LABEL_129;
      }

      if (v39 == *MEMORY[0x1E69A1110] || v39 == *MEMORY[0x1E69A0FE0] || v39 == *MEMORY[0x1E69A10F0] || v39 == *MEMORY[0x1E69A1160])
      {
        goto LABEL_100;
      }

      goto LABEL_99;
    }

LABEL_118:
    v54 = sub_1D25EA40C(v71 & 1);
    goto LABEL_130;
  }

  result = sub_1D2879398();
  __break(1u);
  return result;
}

uint64_t sub_1D25ED2D0@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v190 = a1;
  v5 = sub_1D28713A8();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v210 = &v177 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v220 = sub_1D28718F8();
  v228 = *(v220 - 8);
  MEMORY[0x1EEE9AC00](v220);
  v214 = &v177 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D2878028();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v206 = &v177 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v194 = &v177 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v193 = &v177 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v192 = &v177 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v191 = &v177 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v196 = &v177 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v195 = &v177 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v198 = &v177 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v197 = &v177 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v201 = &v177 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v200 = &v177 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v203 = &v177 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v202 = &v177 - v33;
  v213 = sub_1D28720D8();
  v212 = *(v213 - 8);
  MEMORY[0x1EEE9AC00](v213);
  v205 = &v177 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v211 = &v177 - v36;
  v225 = sub_1D28718E8();
  v226 = *(v225 - 8);
  MEMORY[0x1EEE9AC00](v225);
  v233 = &v177 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v224 = &v177 - v39;
  v216 = sub_1D28712E8();
  MEMORY[0x1EEE9AC00](v216);
  v217 = &v177 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1D90, &qword_1D2882510);
  MEMORY[0x1EEE9AC00](v41 - 8);
  v218 = &v177 - v42;
  v43 = sub_1D2878048();
  MEMORY[0x1EEE9AC00](v43 - 8);
  v222 = &v177 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_1D2871318();
  v46 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v209 = &v177 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v48);
  v204 = &v177 - v49;
  MEMORY[0x1EEE9AC00](v50);
  v208 = &v177 - v51;
  MEMORY[0x1EEE9AC00](v52);
  v54 = &v177 - v53;
  MEMORY[0x1EEE9AC00](v55);
  v57 = &v177 - v56;
  v247 = sub_1D2872818();
  v240 = *(v247 - 8);
  MEMORY[0x1EEE9AC00](v247);
  v231 = &v177 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v59);
  v238 = &v177 - v60;
  MEMORY[0x1EEE9AC00](v61);
  v248 = &v177 - v62;
  MEMORY[0x1EEE9AC00](v63);
  v249 = &v177 - v64;
  MEMORY[0x1EEE9AC00](v65);
  v257 = &v177 - v66;
  MEMORY[0x1EEE9AC00](v67);
  v256 = &v177 - v68;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEF30, &qword_1D2898010);
  MEMORY[0x1EEE9AC00](v69 - 8);
  v71 = &v177 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v72);
  v237 = &v177 - v73;
  v221 = v3;
  v74 = sub_1D2872848();
  v75 = v74 + 56;
  v76 = 1 << *(v74 + 32);
  v77 = -1;
  if (v76 < 64)
  {
    v77 = ~(-1 << v76);
  }

  v78 = v77 & *(v74 + 56);
  v246 = v74;
  v235 = a2;
  v230 = v45;
  v234 = v46;
  v229 = v57;
  v219 = v54;
  if (v78)
  {
    v79 = 0;
    v80 = __clz(__rbit64(v78));
    v81 = (v78 - 1) & v78;
    v82 = ((v76 + 63) >> 6);
LABEL_9:
    v85 = v246;
    v86 = *(v246 + 48);
    v88 = v240 + 16;
    v87 = *(v240 + 16);
    v244 = *(v240 + 72);
    v89 = v247;
    v254 = v87;
    v87(v256, (v86 + v244 * v80), v247);
    v253 = (v88 + 72);
    v252 = *MEMORY[0x1E69A0FE8];
    v250 = *MEMORY[0x1E69A0FF0];
    v243 = *MEMORY[0x1E69A1078];
    v239 = *MEMORY[0x1E69A0FF8];
    v236 = *MEMORY[0x1E69A1090];
    v232 = *MEMORY[0x1E69A1088];
    v227 = *MEMORY[0x1E69A1100];
    v223 = *MEMORY[0x1E69A10A0];
    v215 = *MEMORY[0x1E69A1018];
    v207 = *MEMORY[0x1E69A10E8];
    v199 = *MEMORY[0x1E69A1008];
    v189 = *MEMORY[0x1E69A1068];
    v188 = *MEMORY[0x1E69A0FD8];
    v187 = *MEMORY[0x1E69A1010];
    v186 = *MEMORY[0x1E69A1058];
    v185 = *MEMORY[0x1E69A10C8];
    v184 = *MEMORY[0x1E69A1040];
    v183 = *MEMORY[0x1E69A1060];
    v182 = *MEMORY[0x1E69A10A8];
    v181 = *MEMORY[0x1E69A1038];
    v180 = *MEMORY[0x1E69A1110];
    v179 = *MEMORY[0x1E69A0FE0];
    v178 = *MEMORY[0x1E69A10F0];
    v255 = (v88 - 8);
    v251 = v88;
    v241 = (v88 + 16);
    v177 = *MEMORY[0x1E69A1160];
    sub_1D2870F68();
    v245 = v71;
    if (v81)
    {
      goto LABEL_14;
    }

LABEL_10:
    while (1)
    {
      v90 = v79 + 1;
      if (__OFADD__(v79, 1))
      {
        break;
      }

      if (v90 >= v82)
      {

        v79 = v240;
        v103 = v237;
        (*(v240 + 32))(v237, v256, v89);
        (*(v79 + 56))(v103, 0, 1, v89);
        a2 = v235;
        v45 = v230;
        v104 = v89;
        v46 = v234;
        v57 = v229;
        goto LABEL_93;
      }

      v81 = *(v75 + 8 * v90);
      ++v79;
      if (v81)
      {
        v79 = v90;
        while (1)
        {
LABEL_14:
          v91 = *(v85 + 48) + (__clz(__rbit64(v81)) | (v79 << 6)) * v244;
          v92 = v254;
          v254(v257, v91, v89);
          v93 = v249;
          v92(v249, v256, v89);
          v94 = *v253;
          v95 = (*v253)(v93, v89);
          v96 = v95 == v252 || v95 == v250;
          v97 = !v96;
          if (v96)
          {
LABEL_53:
            (*v255)(v249, v89);
            v98 = v97;
            v57 = v97;
            v45 = v97;
            v99 = v97;
            goto LABEL_54;
          }

          if (v95 == v243)
          {
            v98 = 0;
            v57 = 0;
            v45 = 0;
            v99 = 1;
            v89 = v247;
          }

          else
          {
            v98 = 0;
            if (v95 == v239 || v95 == v236)
            {
              v57 = 0;
              v45 = 0;
              v99 = 0;
              v89 = v247;
              goto LABEL_54;
            }

            v57 = 0;
            v45 = 0;
            v99 = 0;
            v89 = v247;
            if (v95 != v232)
            {
              v98 = 0;
              v99 = 1;
              if (v95 == v227 || v95 == v223)
              {
LABEL_37:
                v57 = 0;
                v45 = 0;
                v89 = v247;
                goto LABEL_54;
              }

              v57 = 0;
              v45 = 0;
              v89 = v247;
              if (v95 != v215)
              {
                if (v95 == v207)
                {
                  v57 = 0;
                  v98 = 1;
LABEL_31:
                  v45 = 1;
                  v89 = v247;
                  goto LABEL_54;
                }

                v98 = 0;
                if (v95 == v199)
                {
                  goto LABEL_37;
                }

                v57 = 0;
                v45 = 0;
                v89 = v247;
                if (v95 != v189)
                {
                  if (v95 == v188)
                  {
                    v98 = 1;
                    v57 = 1;
                    goto LABEL_31;
                  }

                  if (v95 == v187)
                  {
                    goto LABEL_39;
                  }

                  v98 = 0;
                  v45 = 1;
                  if (v95 == v186 || v95 == v185)
                  {
                    v57 = 0;
                    v89 = v247;
                    goto LABEL_54;
                  }

                  v57 = 0;
                  v89 = v247;
                  if (v95 != v184)
                  {
                    if (v95 == v183)
                    {
                      v57 = 0;
                      v98 = 1;
                      v89 = v247;
                      goto LABEL_54;
                    }

                    if (v95 == v182)
                    {
LABEL_39:
                      v98 = 0;
                      v57 = 0;
                      v45 = 0;
                      v89 = v247;
                      goto LABEL_54;
                    }

                    if (v95 == v181)
                    {
                      v98 = 0;
                      v57 = 0;
                      v89 = v247;
                    }

                    else
                    {
                      v98 = 1;
                      if (v95 == v180 || v95 == v179 || v95 == v178)
                      {
                        v57 = 1;
                        v89 = v247;
                        goto LABEL_54;
                      }

                      v57 = 1;
                      v89 = v247;
                      if (v95 != v177)
                      {
                        goto LABEL_53;
                      }
                    }
                  }
                }
              }
            }
          }

LABEL_54:
          v242 = v98;
          v81 &= v81 - 1;
          v100 = v248;
          v254(v248, v257, v89);
          v101 = v94(v100, v89);
          if (v101 == v252 || v101 == v250)
          {
            (*v255)(v248, v89);
            v71 = v245;
            goto LABEL_60;
          }

          v71 = v245;
          if (v101 == v243)
          {
            goto LABEL_57;
          }

          if (v101 == v239 || v101 == v236 || v101 == v232)
          {
LABEL_60:
            if ((v99 & 1) == 0)
            {
              goto LABEL_75;
            }

LABEL_61:
            v102 = v256;
            (*v255)(v256, v89);
            (*v241)(v102, v257, v89);
            v85 = v246;
            if (!v81)
            {
              goto LABEL_10;
            }
          }

          else
          {
            if (v101 != v227 && v101 != v223 && v101 != v215)
            {
              if (v101 == v207)
              {
                goto LABEL_70;
              }

              if (v101 != v199 && v101 != v189)
              {
                if (v101 == v188)
                {
                  goto LABEL_75;
                }

                if (v101 != v187)
                {
                  if (v101 == v186 || v101 == v185 || v101 == v184)
                  {
                    goto LABEL_84;
                  }

                  if (v101 == v183)
                  {
LABEL_70:
                    if (v57)
                    {
                      goto LABEL_61;
                    }

                    goto LABEL_75;
                  }

                  if (v101 != v182)
                  {
                    if (v101 != v181)
                    {
                      if (v101 != v180 && v101 != v179 && v101 != v178 && v101 != v177)
                      {
                        (*v255)(v248, v89);
                      }

                      goto LABEL_75;
                    }

LABEL_84:
                    if (v242)
                    {
                      goto LABEL_61;
                    }

                    goto LABEL_75;
                  }
                }
              }
            }

LABEL_57:
            if (v45)
            {
              goto LABEL_61;
            }

LABEL_75:
            (*v255)(v257, v89);
            v85 = v246;
            if (!v81)
            {
              goto LABEL_10;
            }
          }
        }
      }
    }

    __break(1u);
LABEL_150:
    sub_1D2878018();
    sub_1D2878008();
    v144 = v214;
    sub_1D28718C8();
    sub_1D28718D8();
    sub_1D2871878();

    v140 = v220;
    (*v82)(v144, v220);
    sub_1D2877FF8();

    sub_1D2878008();
    sub_1D2878038();
    if (qword_1ED89E0E8 == -1)
    {
      goto LABEL_163;
    }

LABEL_204:
    swift_once();
LABEL_163:
    v145 = qword_1ED8B0058;
    (*(v228 + 56))(v218, 1, 1, v140);
    v258[0] = MEMORY[0x1E69E7CC0];
    sub_1D2344864();
    v146 = v145;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA298, &qword_1D2882518);
    sub_1D23448BC();
    sub_1D2879088();
    v120 = v208;
    sub_1D2871308();
    (*(v226 + 8))(v224, v225);
    v121 = v219;
    a2 = v235;
    v46 = v234;
LABEL_178:
    (*(v46 + 32))(v121, v120, v45);
LABEL_179:
    v130 = v121;
    goto LABEL_180;
  }

  v83 = 0;
  v82 = ((v76 + 63) >> 6);
  while ((v82 - 1) != v78)
  {
    v79 = v78 + 1;
    v84 = *(v74 + 64 + 8 * v78);
    v83 -= 64;
    ++v78;
    if (v84)
    {
      v81 = (v84 - 1) & v84;
      v80 = __clz(__rbit64(v84)) - v83;
      goto LABEL_9;
    }
  }

  v79 = v240;
  v103 = v237;
  v104 = v247;
  (*(v240 + 56))(v237, 1, 1, v247);
LABEL_93:

  sub_1D22BD1D0(v103, v71, &qword_1EC6DEF30, &qword_1D2898010);
  v105 = (*(v79 + 48))(v71, 1, v104);
  v106 = v233;
  v107 = v231;
  if (v105 == 1)
  {
    sub_1D22BD238(v71, &qword_1EC6DEF30, &qword_1D2898010);
    sub_1D25EBA20();
    v108 = v103;
    return sub_1D22BD238(v108, &qword_1EC6DEF30, &qword_1D2898010);
  }

  (*(v79 + 32))(v238, v71, v104);
  if (sub_1D27D8E2C() & 1) != 0 || (sub_1D27D8EFC())
  {
    v109 = 1;
  }

  else
  {
    v109 = sub_1D27D8FCC();
  }

  v110 = v247;
  (*(v79 + 16))(v107, v238, v247);
  v111 = (*(v79 + 88))(v107, v110);
  if (v111 == *MEMORY[0x1E69A0FE8])
  {
    (*(v79 + 96))(v107, v110);
    (*(v226 + 32))(v224, v107, v225);
    v112 = v211;
    sub_1D28720C8();
    v113 = (*(v212 + 88))(v112, v213);
    if (v113 == *MEMORY[0x1E696E3E8])
    {
      v114 = (v228 + 8);
      if (v109)
      {
        sub_1D2878018();
        sub_1D2878008();
        v115 = v214;
        sub_1D28718C8();
        v116 = v224;
        sub_1D28718D8();
        sub_1D2871878();

        v117 = v220;
        (*v114)(v115, v220);
        sub_1D2877FF8();

        sub_1D2878008();
        sub_1D2878038();
        if (qword_1ED89E0E8 != -1)
        {
          swift_once();
        }

        v118 = qword_1ED8B0058;
        (*(v228 + 56))(v218, 1, 1, v117);
        v258[0] = MEMORY[0x1E69E7CC0];
        sub_1D2344864();
        v119 = v118;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA298, &qword_1D2882518);
        sub_1D23448BC();
        sub_1D2879088();
        v120 = v208;
        sub_1D2871308();
        (*(v226 + 8))(v116, v225);
        v121 = v219;
        a2 = v235;
        v46 = v234;
        v45 = v230;
      }

      else
      {
        sub_1D2878018();
        sub_1D2878008();
        v134 = v214;
        sub_1D28718C8();
        v135 = v224;
        sub_1D28718D8();
        sub_1D2871878();

        v136 = v220;
        (*v114)(v134, v220);
        sub_1D2877FF8();

        sub_1D2878008();
        sub_1D2878038();
        if (qword_1ED89E0E8 != -1)
        {
          swift_once();
        }

        v137 = qword_1ED8B0058;
        (*(v228 + 56))(v218, 1, 1, v136);
        v258[0] = MEMORY[0x1E69E7CC0];
        sub_1D2344864();
        v138 = v137;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA298, &qword_1D2882518);
        sub_1D23448BC();
        sub_1D2879088();
        v120 = v208;
        sub_1D2871308();
        (*(v226 + 8))(v135, v225);
        v121 = v219;
        a2 = v235;
        v46 = v234;
        v57 = v229;
      }

      goto LABEL_178;
    }

    if (v113 == *MEMORY[0x1E696E3D8])
    {
      v82 = (v228 + 8);
      if ((v109 & 1) == 0)
      {
        goto LABEL_150;
      }

      goto LABEL_133;
    }

    if (v113 == *MEMORY[0x1E696E3D0])
    {
      v82 = (v228 + 8);
      if ((v109 & 1) == 0)
      {
        goto LABEL_150;
      }

      goto LABEL_133;
    }

    if (v113 == *MEMORY[0x1E696E3F0])
    {
      v82 = (v228 + 8);
      if ((v109 & 1) == 0)
      {
        goto LABEL_150;
      }

LABEL_133:
      sub_1D2878018();
      sub_1D2878008();
      v139 = v214;
      sub_1D28718C8();
      sub_1D28718D8();
      sub_1D2871878();

      v140 = v220;
      (*v82)(v139, v220);
      sub_1D2877FF8();

      sub_1D2878008();
      sub_1D2878038();
      if (qword_1ED89E0E8 == -1)
      {
        goto LABEL_163;
      }

      goto LABEL_204;
    }

    v82 = (v228 + 8);
    if (v113 == *MEMORY[0x1E696E3E0])
    {
      goto LABEL_150;
    }

    if (v109)
    {
      sub_1D2878018();
      sub_1D2878008();
      v141 = v214;
      sub_1D28718C8();
      sub_1D28718D8();
      sub_1D2871878();

      v142 = v141;
      v143 = v220;
      (*v82)(v142, v220);
      sub_1D2877FF8();

      sub_1D2878008();
      sub_1D2878038();
      if (qword_1ED89E0E8 == -1)
      {
        goto LABEL_165;
      }
    }

    else
    {
      sub_1D2878018();
      sub_1D2878008();
      v147 = v214;
      sub_1D28718C8();
      sub_1D28718D8();
      sub_1D2871878();

      v148 = v147;
      v143 = v220;
      (*v82)(v148, v220);
      sub_1D2877FF8();

      sub_1D2878008();
      sub_1D2878038();
      if (qword_1ED89E0E8 == -1)
      {
LABEL_165:
        v149 = qword_1ED8B0058;
        (*(v228 + 56))(v218, 1, 1, v143);
        v258[0] = MEMORY[0x1E69E7CC0];
        sub_1D2344864();
        v150 = v149;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA298, &qword_1D2882518);
        sub_1D23448BC();
        sub_1D2879088();
        v120 = v208;
        sub_1D2871308();
        (*(v226 + 8))(v224, v225);
        (*(v212 + 8))(v211, v213);
LABEL_177:
        v121 = v219;
        a2 = v235;
        goto LABEL_178;
      }
    }

    swift_once();
    goto LABEL_165;
  }

  if (v111 == *MEMORY[0x1E69A0FF0])
  {
    (*(v79 + 96))(v107, v247);
    v122 = v226;
    v123 = v225;
    (*(v226 + 32))(v106, v107, v225);
    sub_1D2878018();
    sub_1D2878008();
    v124 = v214;
    sub_1D28718C8();
    sub_1D28718D8();
    sub_1D2871878();

    v125 = v228;
    v126 = v220;
    (*(v228 + 8))(v124, v220);
    sub_1D2877FF8();

    sub_1D2878008();
    sub_1D2878038();
    if (qword_1ED89E0E8 != -1)
    {
      swift_once();
    }

    v127 = qword_1ED8B0058;
    (*(v125 + 56))(v218, 1, 1, v126);
    v258[0] = MEMORY[0x1E69E7CC0];
    sub_1D2344864();
    v128 = v127;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA298, &qword_1D2882518);
    sub_1D23448BC();
    sub_1D2879088();
    v129 = v219;
    sub_1D2871308();
    (*(v122 + 8))(v233, v123);
    v130 = v129;
    a2 = v235;
    v46 = v234;
    v57 = v229;
    v45 = v230;
    goto LABEL_110;
  }

  if (v111 == *MEMORY[0x1E69A1078])
  {
    result = sub_1D2879398();
    __break(1u);
    return result;
  }

  v131 = v220;
  if (v111 == *MEMORY[0x1E69A0FF8])
  {
    v132 = v205;
    sub_1D28720C8();
    v133 = (*(v212 + 88))(v132, v213);
    if (v133 == *MEMORY[0x1E696E3E8] || v133 == *MEMORY[0x1E696E3D8] || v133 == *MEMORY[0x1E696E3D0] || v133 == *MEMORY[0x1E696E3F0] || v133 == *MEMORY[0x1E696E3E0])
    {
      sub_1D2877FE8();
      if (qword_1ED89E0E8 != -1)
      {
        swift_once();
      }

      v157 = qword_1ED8B0058;
      (*(v228 + 56))(v218, 1, 1, v131);
      v258[0] = MEMORY[0x1E69E7CC0];
      sub_1D2344864();
      v158 = v157;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA298, &qword_1D2882518);
      sub_1D23448BC();
      sub_1D2879088();
      v120 = v204;
      sub_1D2871308();
    }

    else
    {
      sub_1D2877FE8();
      if (qword_1ED89E0E8 != -1)
      {
        swift_once();
      }

      v165 = qword_1ED8B0058;
      (*(v228 + 56))(v218, 1, 1, v131);
      v258[0] = MEMORY[0x1E69E7CC0];
      sub_1D2344864();
      v166 = v165;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA298, &qword_1D2882518);
      sub_1D23448BC();
      sub_1D2879088();
      v120 = v204;
      sub_1D2871308();
      (*(v212 + 8))(v205, v213);
    }

    goto LABEL_177;
  }

  if (v111 == *MEMORY[0x1E69A1090] || v111 == *MEMORY[0x1E69A1088])
  {
    if (v109)
    {
      sub_1D2877FE8();
      if (qword_1ED89E0E8 == -1)
      {
        goto LABEL_169;
      }
    }

    else
    {
      sub_1D2877FE8();
      if (qword_1ED89E0E8 == -1)
      {
        goto LABEL_169;
      }
    }

    goto LABEL_217;
  }

  if (v111 == *MEMORY[0x1E69A1100])
  {
    if (v109)
    {
      sub_1D2877FE8();
      if (qword_1ED89E0E8 == -1)
      {
        goto LABEL_169;
      }
    }

    else
    {
      sub_1D2877FE8();
      if (qword_1ED89E0E8 == -1)
      {
        goto LABEL_169;
      }
    }

LABEL_217:
    swift_once();
LABEL_169:
    v151 = qword_1ED8B0058;
    (*(v228 + 56))(v218, 1, 1, v131);
    v258[0] = MEMORY[0x1E69E7CC0];
    sub_1D2344864();
    v152 = v151;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA298, &qword_1D2882518);
    sub_1D23448BC();
    sub_1D2879088();
    v153 = v219;
    sub_1D2871308();
    v130 = v153;
    a2 = v235;
    goto LABEL_180;
  }

  if (v111 == *MEMORY[0x1E69A10A0])
  {
    sub_1D2877FE8();
    if (qword_1ED89E0E8 == -1)
    {
      goto LABEL_169;
    }

    goto LABEL_217;
  }

  if (v111 == *MEMORY[0x1E69A1018])
  {
    if (v109)
    {
      sub_1D2877FE8();
      if (qword_1ED89E0E8 == -1)
      {
        goto LABEL_169;
      }
    }

    else
    {
      sub_1D2877FE8();
      if (qword_1ED89E0E8 == -1)
      {
        goto LABEL_169;
      }
    }

    goto LABEL_217;
  }

  if (v111 == *MEMORY[0x1E69A10E8])
  {
LABEL_171:
    sub_1D2877FE8();
    if (qword_1ED89E0E8 != -1)
    {
      swift_once();
    }

    v154 = qword_1ED8B0058;
    (*(v228 + 56))(v218, 1, 1, v131);
    v258[0] = MEMORY[0x1E69E7CC0];
    sub_1D2344864();
    v155 = v154;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA298, &qword_1D2882518);
    sub_1D23448BC();
    sub_1D2879088();
    v156 = v219;
    sub_1D2871308();
    v130 = v156;
    v45 = v230;
    goto LABEL_180;
  }

  if (v111 == *MEMORY[0x1E69A1128])
  {
    v121 = v219;
    sub_1D25EB184(v190 & 1);
    goto LABEL_179;
  }

  if (v111 == *MEMORY[0x1E69A1008] || v111 == *MEMORY[0x1E69A1068] || v111 == *MEMORY[0x1E69A0FD8] || v111 == *MEMORY[0x1E69A1010])
  {
    goto LABEL_212;
  }

  if (v111 != *MEMORY[0x1E69A1058] && v111 != *MEMORY[0x1E69A10C8])
  {
    v79 = v240;
    if (v111 == *MEMORY[0x1E69A1040])
    {
      v121 = v219;
      sub_1D25EBD94();
      goto LABEL_179;
    }

    if (v111 == *MEMORY[0x1E69A1060])
    {
      goto LABEL_171;
    }

    if (v111 == *MEMORY[0x1E69A10A8])
    {
      sub_1D2877FE8();
      if (qword_1ED89E0E8 == -1)
      {
        goto LABEL_216;
      }

      goto LABEL_227;
    }

    v168 = v111;
    v57 = v229;
    v131 = v220;
    if (v111 != *MEMORY[0x1E69A1110] && v111 != *MEMORY[0x1E69A0FE0])
    {
      v169 = *MEMORY[0x1E69A10F0];
      sub_1D2877FE8();
      if (v168 != v169 && v168 != *MEMORY[0x1E69A1160])
      {
        if (qword_1ED89E0E8 != -1)
        {
          swift_once();
        }

        v170 = qword_1ED8B0058;
        (*(v228 + 56))(v218, 1, 1, v220);
        v258[0] = MEMORY[0x1E69E7CC0];
        sub_1D2344864();
        v171 = v170;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA298, &qword_1D2882518);
        sub_1D23448BC();
        sub_1D2879088();
        v172 = v219;
        sub_1D2871308();
        v173 = v240;
        (*(v240 + 8))(v231, v247);
        v130 = v172;
        v79 = v173;
        v57 = v229;
        goto LABEL_180;
      }

      if (qword_1ED89E0E8 == -1)
      {
        goto LABEL_216;
      }

LABEL_227:
      swift_once();
LABEL_216:
      v174 = qword_1ED8B0058;
      (*(v228 + 56))(v218, 1, 1, v220);
      v258[0] = MEMORY[0x1E69E7CC0];
      sub_1D2344864();
      v175 = v174;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA298, &qword_1D2882518);
      sub_1D23448BC();
      sub_1D2879088();
      v176 = v219;
      sub_1D2871308();
      v130 = v176;
      v57 = v229;
      goto LABEL_110;
    }

LABEL_212:
    sub_1D2877FE8();
    v79 = v240;
    if (qword_1ED89E0E8 == -1)
    {
      goto LABEL_169;
    }

    goto LABEL_217;
  }

  v167 = v219;
  sub_1D25EA79C(v190 & 1);
  v130 = v167;
LABEL_110:
  v79 = v240;
LABEL_180:
  v159 = *(v46 + 32);
  v159(v57, v130, v45);
  if (os_variant_has_internal_ui())
  {
    strcpy(v258, "\n[Internal] ");
    BYTE5(v258[1]) = 0;
    HIWORD(v258[1]) = -5120;
    v160 = v238;
    v161 = sub_1D2872808();
    MEMORY[0x1D38A0C50](v161);

    sub_1D2871398();
    v162 = v209;
    sub_1D2871328();
    sub_1D28712F8();
    v163 = *(v46 + 8);
    v163(v162, v45);
    v163(v57, v45);
    (*(v79 + 8))(v160, v247);
    v108 = v237;
    return sub_1D22BD238(v108, &qword_1EC6DEF30, &qword_1D2898010);
  }

  (*(v79 + 8))(v238, v247);
  sub_1D22BD238(v237, &qword_1EC6DEF30, &qword_1D2898010);
  return (v159)(a2, v57, v45);
}

uint64_t sub_1D25F0EF0@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v90 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA1B8, &qword_1D2884470);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v89 = &v74[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v88 = &v74[-v6];
  v7 = sub_1D2872818();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v101 = &v74[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v74[-v11];
  MEMORY[0x1EEE9AC00](v13);
  v113 = &v74[-v14];
  MEMORY[0x1EEE9AC00](v15);
  v114 = &v74[-v16];
  MEMORY[0x1EEE9AC00](v17);
  v120 = &v74[-v18];
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v74[-v20];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEF30, &qword_1D2898010);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v100 = &v74[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v74[-v25];
  v27 = sub_1D2872848();
  v28 = v27;
  v29 = v27 + 56;
  v30 = 1 << *(v27 + 32);
  v31 = -1;
  if (v30 < 64)
  {
    v31 = ~(-1 << v30);
  }

  v32 = v31 & *(v27 + 56);
  if (v32)
  {
    v95 = v12;
    v96 = v26;
    v98 = a2;
    v33 = 0;
    v34 = __clz(__rbit64(v32));
    v12 = (v32 - 1) & v32;
    v35 = (v30 + 63) >> 6;
LABEL_9:
    v38 = *(v27 + 48);
    v97 = v8;
    v40 = *(v8 + 16);
    v39 = v8 + 16;
    v109 = *(v39 + 56);
    v118 = v40;
    v40(v21, (v38 + v109 * v34), v7);
    v117 = (v39 + 72);
    v116 = *MEMORY[0x1E69A0FE8];
    v115 = *MEMORY[0x1E69A0FF0];
    v108 = *MEMORY[0x1E69A1078];
    v104 = *MEMORY[0x1E69A0FF8];
    v103 = *MEMORY[0x1E69A1090];
    v102 = *MEMORY[0x1E69A1088];
    v99 = *MEMORY[0x1E69A1100];
    v94 = *MEMORY[0x1E69A10A0];
    v93 = *MEMORY[0x1E69A1018];
    v92 = *MEMORY[0x1E69A10E8];
    v91 = *MEMORY[0x1E69A1008];
    v87 = *MEMORY[0x1E69A1068];
    v86 = *MEMORY[0x1E69A0FD8];
    v85 = *MEMORY[0x1E69A1010];
    v84 = *MEMORY[0x1E69A1058];
    v83 = *MEMORY[0x1E69A10C8];
    v82 = *MEMORY[0x1E69A1040];
    v81 = *MEMORY[0x1E69A1060];
    v80 = *MEMORY[0x1E69A10A8];
    v79 = *MEMORY[0x1E69A1038];
    v78 = *MEMORY[0x1E69A1110];
    v77 = *MEMORY[0x1E69A0FE0];
    v76 = *MEMORY[0x1E69A10F0];
    v119 = (v39 - 8);
    v105 = (v39 + 16);
    v75 = *MEMORY[0x1E69A1160];
    v41 = sub_1D2870F68();
    v110 = v28;
    v111 = v21;
    if (v12)
    {
      goto LABEL_14;
    }

LABEL_10:
    while (1)
    {
      v42 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        break;
      }

      if (v42 >= v35)
      {

        v8 = v97;
        v26 = v96;
        (*(v97 + 32))(v96, v21, v7);
        (*(v8 + 56))(v26, 0, 1, v7);
        a2 = v98;
        v12 = v95;
        goto LABEL_92;
      }

      v12 = *(v29 + 8 * v42);
      ++v33;
      if (v12)
      {
        v33 = v42;
        while (1)
        {
LABEL_14:
          v43 = *(v28 + 48) + (__clz(__rbit64(v12)) | (v33 << 6)) * v109;
          v44 = v118;
          v118(v120, v43, v7);
          v45 = v114;
          v44(v114, v21, v7);
          v46 = *v117;
          v47 = (*v117)(v45, v7);
          v48 = v47 == v116 || v47 == v115;
          v49 = !v48;
          if (v48)
          {
LABEL_52:
            (*v119)(v114, v7);
            v50 = v49;
            v51 = v49;
            v52 = v49;
            v26 = v49;
            goto LABEL_53;
          }

          if (v47 == v108)
          {
            v50 = 0;
            v51 = 0;
            v52 = 0;
            v26 = 1;
          }

          else
          {
            v50 = 0;
            if (v47 == v104 || v47 == v103)
            {
              v51 = 0;
              v52 = 0;
              v26 = 0;
            }

            else
            {
              v51 = 0;
              v52 = 0;
              v26 = 0;
              if (v47 != v102)
              {
                v50 = 0;
                v26 = 1;
                if (v47 == v99 || v47 == v94)
                {
LABEL_36:
                  v51 = 0;
                  v52 = 0;
                  goto LABEL_53;
                }

                v51 = 0;
                v52 = 0;
                if (v47 != v93)
                {
                  if (v47 == v92)
                  {
                    v51 = 0;
                    v50 = 1;
                    v52 = 1;
                  }

                  else
                  {
                    v50 = 0;
                    if (v47 == v91)
                    {
                      goto LABEL_36;
                    }

                    v51 = 0;
                    v52 = 0;
                    if (v47 != v87)
                    {
                      if (v47 == v86)
                      {
                        v50 = 1;
                        v51 = 1;
                        v52 = 1;
                      }

                      else
                      {
                        if (v47 == v85)
                        {
                          goto LABEL_38;
                        }

                        v50 = 0;
                        v52 = 1;
                        if (v47 == v84)
                        {
                          v51 = 0;
                          goto LABEL_53;
                        }

                        v51 = 0;
                        if (v47 != v83 && v47 != v82)
                        {
                          if (v47 == v81)
                          {
                            v51 = 0;
                            v50 = 1;
                            goto LABEL_53;
                          }

                          if (v47 == v80)
                          {
LABEL_38:
                            v50 = 0;
                            v51 = 0;
                            v52 = 0;
                            goto LABEL_53;
                          }

                          if (v47 == v79)
                          {
                            v50 = 0;
                            v51 = 0;
                          }

                          else
                          {
                            v50 = 1;
                            if (v47 == v78 || v47 == v77)
                            {
                              v51 = 1;
                              goto LABEL_53;
                            }

                            v51 = 1;
                            if (v47 != v76 && v47 != v75)
                            {
                              goto LABEL_52;
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

LABEL_53:
          v112 = v52;
          v106 = v50;
          v107 = v51;
          v12 &= v12 - 1;
          v53 = v113;
          a2 = v39;
          v118(v113, v120, v7);
          v54 = v46(v53, v7);
          if (v54 == v116 || v54 == v115)
          {
            (*v119)(v113, v7);
            v28 = v110;
            v21 = v111;
            goto LABEL_59;
          }

          v28 = v110;
          v21 = v111;
          if (v54 == v108)
          {
            goto LABEL_56;
          }

          if (v54 == v104 || v54 == v103 || v54 == v102)
          {
LABEL_59:
            if ((v26 & 1) == 0)
            {
              goto LABEL_74;
            }

LABEL_60:
            (*v119)(v21, v7);
            v41 = (*v105)(v21, v120, v7);
            if (!v12)
            {
              goto LABEL_10;
            }
          }

          else
          {
            if (v54 != v99 && v54 != v94 && v54 != v93)
            {
              if (v54 == v92)
              {
                goto LABEL_69;
              }

              if (v54 != v91 && v54 != v87)
              {
                if (v54 == v86)
                {
                  goto LABEL_74;
                }

                if (v54 != v85)
                {
                  if (v54 == v84 || v54 == v83 || v54 == v82)
                  {
                    goto LABEL_83;
                  }

                  if (v54 == v81)
                  {
LABEL_69:
                    if (v107)
                    {
                      goto LABEL_60;
                    }

                    goto LABEL_74;
                  }

                  if (v54 != v80)
                  {
                    if (v54 != v79)
                    {
                      if (v54 != v78 && v54 != v77 && v54 != v76 && v54 != v75)
                      {
                        (*v119)(v113, v7);
                      }

                      goto LABEL_74;
                    }

LABEL_83:
                    if (v106)
                    {
                      goto LABEL_60;
                    }

                    goto LABEL_74;
                  }
                }
              }
            }

LABEL_56:
            if (v112)
            {
              goto LABEL_60;
            }

LABEL_74:
            v41 = (*v119)(v120, v7);
            if (!v12)
            {
              goto LABEL_10;
            }
          }
        }
      }
    }

    __break(1u);
    goto LABEL_117;
  }

  v36 = 0;
  v35 = (v30 + 63) >> 6;
  while (v35 - 1 != v32)
  {
    v33 = v32 + 1;
    v37 = *(v27 + 64 + 8 * v32);
    v36 -= 64;
    ++v32;
    if (v37)
    {
      v95 = v12;
      v96 = v26;
      v98 = a2;
      v12 = (v37 - 1) & v37;
      v34 = __clz(__rbit64(v37)) - v36;
      goto LABEL_9;
    }
  }

  (*(v8 + 56))(v26, 1, 1, v7);
LABEL_92:

  v55 = v100;
  sub_1D22BD1D0(v26, v100, &qword_1EC6DEF30, &qword_1D2898010);
  v56 = (*(v8 + 48))(v55, 1, v7);
  v57 = v101;
  if (v56 == 1)
  {
    sub_1D22BD238(v26, &qword_1EC6DEF30, &qword_1D2898010);
    v58 = v55;
LABEL_94:
    sub_1D22BD238(v58, &qword_1EC6DEF30, &qword_1D2898010);
    goto LABEL_97;
  }

  (*(v8 + 32))(v12, v55, v7);
  (*(v8 + 16))(v57, v12, v7);
  v41 = (*(v8 + 88))(v57, v7);
  if (v41 == *MEMORY[0x1E69A0FE8])
  {
    v59 = *(v8 + 8);
    v59(v12, v7);
    sub_1D22BD238(v26, &qword_1EC6DEF30, &qword_1D2898010);
    v59(v57, v7);
    goto LABEL_97;
  }

  if (v41 == *MEMORY[0x1E69A0FF0])
  {
    v21 = v8;
    (*(v8 + 8))(v57, v7);
LABEL_100:
    if (qword_1EC6D8D20 != -1)
    {
      swift_once();
    }

    v62 = sub_1D28716B8();
    v63 = __swift_project_value_buffer(v62, qword_1EC6E3F10);
    v64 = *(v62 - 8);
    (*(v64 + 16))(a2, v63, v62);
    v21[1](v12, v7);
    sub_1D22BD238(v26, &qword_1EC6DEF30, &qword_1D2898010);
    return (*(v64 + 56))(a2, 0, 1, v62);
  }

  if (v41 == *MEMORY[0x1E69A1078])
  {
    goto LABEL_114;
  }

  v21 = v8;
  if (v41 == *MEMORY[0x1E69A0FF8])
  {
    goto LABEL_100;
  }

  if (v41 == *MEMORY[0x1E69A1090])
  {
LABEL_108:
    v21[1](v12, v7);
LABEL_115:
    v58 = v26;
    goto LABEL_94;
  }

  if (v41 == *MEMORY[0x1E69A1088] || v41 == *MEMORY[0x1E69A1100] || v41 == *MEMORY[0x1E69A10A0] || v41 == *MEMORY[0x1E69A1018] || v41 == *MEMORY[0x1E69A10E8])
  {
LABEL_114:
    (*(v8 + 8))(v12, v7);
    goto LABEL_115;
  }

LABEL_117:
  if (v41 == *MEMORY[0x1E69A1008] || v41 == *MEMORY[0x1E69A1068] || v41 == *MEMORY[0x1E69A0FD8] || v41 == *MEMORY[0x1E69A1010])
  {
    goto LABEL_100;
  }

  if (v41 != *MEMORY[0x1E69A1058] && v41 != *MEMORY[0x1E69A10C8])
  {
    v98 = a2;
    if (v41 == *MEMORY[0x1E69A1040])
    {
      v65 = v88;
      sub_1D2871678();
      v66 = sub_1D28716B8();
      v67 = *(v66 - 8);
      result = (*(v67 + 48))(v65, 1, v66);
      if (result != 1)
      {
        v21[1](v12, v7);
        sub_1D22BD238(v26, &qword_1EC6DEF30, &qword_1D2898010);
        v68 = v98;
        (*(v67 + 32))(v98, v88, v66);
        return (*(v67 + 56))(v68, 0, 1, v66);
      }

      __break(1u);
      goto LABEL_138;
    }

    if (v41 == *MEMORY[0x1E69A1060])
    {
      goto LABEL_130;
    }

    v70 = v41;
    a2 = v98;
    if (v41 != *MEMORY[0x1E69A10A8] && v41 != *MEMORY[0x1E69A1110] && v41 != *MEMORY[0x1E69A0FE0])
    {
      if (v41 == *MEMORY[0x1E69A10F0])
      {
LABEL_130:
        v21[1](v12, v7);
        sub_1D22BD238(v26, &qword_1EC6DEF30, &qword_1D2898010);
        a2 = v98;
        goto LABEL_97;
      }

      v71 = *MEMORY[0x1E69A1160];
      v72 = v21[1];
      v72(v12, v7);
      sub_1D22BD238(v26, &qword_1EC6DEF30, &qword_1D2898010);
      v48 = v70 == v71;
      a2 = v98;
      if (!v48)
      {
        v73 = sub_1D28716B8();
        (*(*(v73 - 8) + 56))(a2, 1, 1, v73);
        return (v72)(v101, v7);
      }

LABEL_97:
      v60 = sub_1D28716B8();
      return (*(*(v60 - 8) + 56))(a2, 1, 1, v60);
    }

    goto LABEL_100;
  }

  if (v90)
  {
    goto LABEL_108;
  }

  v69 = v89;
  sub_1D2871678();
  v62 = sub_1D28716B8();
  v64 = *(v62 - 8);
  result = (*(v64 + 48))(v69, 1, v62);
  if (result != 1)
  {
    v21[1](v12, v7);
    sub_1D22BD238(v26, &qword_1EC6DEF30, &qword_1D2898010);
    (*(v64 + 32))(a2, v89, v62);
    return (*(v64 + 56))(a2, 0, 1, v62);
  }

LABEL_138:
  __break(1u);
  return result;
}

uint64_t sub_1D25F21C0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA1B8, &qword_1D2884470);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_1D28716B8();
  __swift_allocate_value_buffer(v3, qword_1EC6E3F10);
  v4 = __swift_project_value_buffer(v3, qword_1EC6E3F10);
  sub_1D2871678();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D25F22F0(int a1)
{
  v67 = a1;
  v2 = sub_1D28718F8();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v64 = &v62[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1D2878048();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v65 = &v62[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_1D28727B8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v68 = &v62[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v62[-v10];
  MEMORY[0x1EEE9AC00](v12);
  v86 = &v62[-v13];
  MEMORY[0x1EEE9AC00](v14);
  v85 = &v62[-v15];
  MEMORY[0x1EEE9AC00](v16);
  v91 = &v62[-v17];
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v62[-v19];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEF28, &unk_1D2898000);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = &v62[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v62[-v25];
  v69 = v1;
  v27 = sub_1D28727E8();
  v28 = v27;
  v29 = v27 + 56;
  v30 = 1 << *(v27 + 32);
  v31 = -1;
  if (v30 < 64)
  {
    v31 = ~(-1 << v30);
  }

  v32 = v31 & *(v27 + 56);
  v90 = v6;
  if (v32)
  {
    v70 = v23;
    v71 = v26;
    v72 = v11;
    v33 = 0;
    v34 = __clz(__rbit64(v32));
    v26 = (v32 - 1) & v32;
    v35 = (v30 + 63) >> 6;
LABEL_9:
    v38 = *(v27 + 48);
    v73 = v7;
    v39 = *(v7 + 16);
    v7 += 16;
    v81 = *(v7 + 56);
    v89 = v39;
    v39(v20, (v38 + v81 * v34), v6);
    v88 = (v7 + 72);
    v87 = *MEMORY[0x1E69A0F38];
    v80 = *MEMORY[0x1E69A0F58];
    v77 = *MEMORY[0x1E69A0F60];
    v76 = *MEMORY[0x1E69A0F28];
    v75 = *MEMORY[0x1E69A0F78];
    v74 = *MEMORY[0x1E69A0F40];
    v66 = *MEMORY[0x1E69A0F50];
    v84 = (v7 - 8);
    v78 = (v7 + 16);
    v63 = *MEMORY[0x1E69A0F20];
    sub_1D2870F68();
    v82 = v28;
    v83 = v20;
    if (v26)
    {
      goto LABEL_18;
    }

LABEL_14:
    while (1)
    {
      v40 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        break;
      }

      if (v40 >= v35)
      {

        v7 = v73;
        v26 = v71;
        (*(v73 + 32))(v71, v20, v6);
        (*(v7 + 56))(v26, 0, 1, v6);
        v11 = v72;
        v23 = v70;
        goto LABEL_53;
      }

      v26 = *(v29 + 8 * v40);
      ++v33;
      if (v26)
      {
        v33 = v40;
        while (1)
        {
LABEL_18:
          v41 = v89;
          v89(v91, (*(v28 + 48) + (__clz(__rbit64(v26)) | (v33 << 6)) * v81), v6);
          v42 = v85;
          v41(v85, v20, v6);
          v11 = *v88;
          v43 = (*v88)(v42, v6);
          if (v43 != v87)
          {
            if (v43 == v80)
            {
              v79 = 0;
              v44 = 0;
              goto LABEL_32;
            }

            if (v43 != v77 && v43 != v76 && v43 != v75)
            {
              if (v43 == v74)
              {
                goto LABEL_30;
              }

              if (v43 != v66)
              {
                if (v43 == v63)
                {
LABEL_30:
                  v79 = 0;
                }

                else
                {
                  (*v84)(v85, v6);
                  v79 = 1;
                }

                v44 = 1;
LABEL_32:
                v45 = 1;
                goto LABEL_33;
              }
            }
          }

          v79 = 0;
          v44 = 0;
          v45 = 0;
LABEL_33:
          v26 &= v26 - 1;
          v48 = v86;
          v49 = v90;
          v89(v86, v91, v90);
          v50 = (v11)(v48, v49);
          v28 = v82;
          if (v50 == v87)
          {
            goto LABEL_34;
          }

          if (v50 == v80)
          {
            if (v44)
            {
              goto LABEL_44;
            }

            goto LABEL_13;
          }

          if (v50 == v77 || v50 == v76 || v50 == v75)
          {
            goto LABEL_34;
          }

          if (v50 == v74)
          {
            goto LABEL_43;
          }

          if (v50 == v66)
          {
LABEL_34:
            if (v45)
            {
              goto LABEL_44;
            }

LABEL_13:
            v6 = v90;
            (*v84)(v91, v90);
            v20 = v83;
            if (!v26)
            {
              goto LABEL_14;
            }
          }

          else
          {
            if (v50 != v63)
            {
              (*v84)(v86, v90);
              goto LABEL_13;
            }

LABEL_43:
            if (!v79)
            {
              goto LABEL_13;
            }

LABEL_44:
            v20 = v83;
            v6 = v90;
            (*v84)(v83, v90);
            (*v78)(v20, v91, v6);
            if (!v26)
            {
              goto LABEL_14;
            }
          }
        }
      }
    }

    __break(1u);
    goto LABEL_74;
  }

  v36 = 0;
  v35 = (v30 + 63) >> 6;
  while (v35 - 1 != v32)
  {
    v33 = v32 + 1;
    v37 = *(v27 + 64 + 8 * v32);
    v36 -= 64;
    ++v32;
    if (v37)
    {
      v70 = v23;
      v71 = v26;
      v72 = v11;
      v26 = (v37 - 1) & v37;
      v34 = __clz(__rbit64(v37)) - v36;
      goto LABEL_9;
    }
  }

  (*(v7 + 56))(v26, 1, 1, v6);
LABEL_53:

  sub_1D22BD1D0(v26, v23, &qword_1EC6DEF28, &unk_1D2898000);
  if ((*(v7 + 48))(v23, 1, v6) == 1)
  {
    sub_1D22BD238(v23, &qword_1EC6DEF28, &unk_1D2898000);
    v51 = sub_1D25EB83C();
    v52 = v26;
LABEL_67:
    sub_1D22BD238(v52, &qword_1EC6DEF28, &unk_1D2898000);
    return v51;
  }

  (*(v7 + 32))(v11, v23, v6);
  v53 = v68;
  (*(v7 + 16))(v68, v11, v6);
  v54 = (*(v7 + 88))(v53, v6);
  if (v54 == *MEMORY[0x1E69A0F38])
  {
    goto LABEL_56;
  }

  if (v54 == *MEMORY[0x1E69A0F58])
  {
    v55 = sub_1D25EA5B8();
    goto LABEL_66;
  }

  if (v54 == *MEMORY[0x1E69A0F60])
  {
LABEL_56:
    v55 = sub_1D25EA40C(v67 & 1);
LABEL_66:
    v51 = v55;
    (*(v7 + 8))(v11, v6);
    v52 = v26;
    goto LABEL_67;
  }

  if (v54 == *MEMORY[0x1E69A0F28])
  {
    sub_1D2877FE8();
    if (qword_1ED89E0E8 == -1)
    {
      goto LABEL_65;
    }

    goto LABEL_74;
  }

  if (v54 == *MEMORY[0x1E69A0F78])
  {
    sub_1D2877FE8();
    if (qword_1ED89E0E8 == -1)
    {
LABEL_65:
      v56 = qword_1ED8B0058;
      sub_1D28718C8();
      v55 = sub_1D28780E8();
      goto LABEL_66;
    }

LABEL_74:
    swift_once();
    goto LABEL_65;
  }

  v58 = *MEMORY[0x1E69A0F40];
  v59 = v54;
  v51 = sub_1D25EB83C();
  v60 = v6;
  v61 = *(v7 + 8);
  v61(v11, v60);
  sub_1D22BD238(v26, &qword_1EC6DEF28, &unk_1D2898000);
  if (v59 != v58 && v59 != *MEMORY[0x1E69A0F50] && v59 != *MEMORY[0x1E69A0F20])
  {
    v61(v68, v90);
  }

  return v51;
}

uint64_t sub_1D25F2D90@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v76 = a1;
  v71 = sub_1D28712E8();
  MEMORY[0x1EEE9AC00](v71);
  v73 = &v69[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E1D90, &qword_1D2882510);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v72 = &v69[-v6];
  v7 = sub_1D2878048();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v74 = &v69[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_1D28727B8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v77 = &v69[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12);
  v84 = &v69[-v13];
  MEMORY[0x1EEE9AC00](v14);
  v97 = &v69[-v15];
  MEMORY[0x1EEE9AC00](v16);
  v96 = &v69[-v17];
  MEMORY[0x1EEE9AC00](v18);
  v101 = &v69[-v19];
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v69[-v21];
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEF28, &unk_1D2898000);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v83 = &v69[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v69[-v26];
  v81 = v2;
  v28 = sub_1D28727E8();
  v29 = v28;
  v30 = v28 + 56;
  v31 = 1 << *(v28 + 32);
  v32 = -1;
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  v33 = v32 & *(v28 + 56);
  if (v33)
  {
    v78 = a2;
    v79 = v27;
    v34 = 0;
    v35 = __clz(__rbit64(v33));
    v36 = (v33 - 1) & v33;
    v37 = (v31 + 63) >> 6;
LABEL_9:
    v40 = *(v28 + 48);
    v80 = v10;
    v41 = *(v10 + 16);
    v10 += 16;
    v91 = *(v10 + 56);
    v99 = v41;
    v41(v22, (v40 + v91 * v35), v9);
    v27 = (v10 + 72);
    v98 = *MEMORY[0x1E69A0F38];
    v90 = *MEMORY[0x1E69A0F58];
    v87 = *MEMORY[0x1E69A0F60];
    v86 = *MEMORY[0x1E69A0F28];
    v85 = *MEMORY[0x1E69A0F78];
    v82 = *MEMORY[0x1E69A0F40];
    v75 = *MEMORY[0x1E69A0F50];
    v70 = *MEMORY[0x1E69A0F20];
    v95 = (v10 - 8);
    v88 = (v10 + 16);
    sub_1D2870F68();
    v100 = v9;
    v92 = v22;
    v93 = v29;
    if (v36)
    {
      goto LABEL_14;
    }

    while (1)
    {
      v43 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v43 >= v37)
      {

        v10 = v80;
        v27 = v79;
        (*(v80 + 32))(v79, v22, v9);
        (*(v10 + 56))(v27, 0, 1, v9);
        goto LABEL_54;
      }

      v36 = *(v30 + 8 * v43);
      ++v34;
      if (v36)
      {
        v42 = v27;
        v34 = v43;
LABEL_19:
        v44 = v9;
        v45 = v9;
        v46 = v99;
        v99(v101, (*(v29 + 48) + (__clz(__rbit64(v36)) | (v34 << 6)) * v91), v44);
        v47 = v96;
        v46(v96, v22, v45);
        v48 = v45;
        v27 = v42;
        v49 = *v42;
        v50 = (*v42)(v47, v48);
        if (v50 == v98)
        {
LABEL_20:
          v89 = 0;
          v94 = 0;
          v51 = 0;
        }

        else
        {
          if (v50 == v90)
          {
            v89 = 0;
            v94 = 0;
          }

          else
          {
            if (v50 == v87 || v50 == v86 || v50 == v85)
            {
              goto LABEL_20;
            }

            if (v50 == v82)
            {
              goto LABEL_31;
            }

            if (v50 == v75)
            {
              goto LABEL_20;
            }

            if (v50 == v70)
            {
LABEL_31:
              v89 = 0;
            }

            else
            {
              (*v95)(v96, v48);
              v89 = 1;
            }

            v94 = 1;
          }

          v51 = 1;
        }

        v36 &= v36 - 1;
        v54 = v97;
        v55 = v100;
        v99(v97, v101, v100);
        v56 = v49(v54, v55);
        v22 = v92;
        if (v56 == v98)
        {
LABEL_35:
          if (v51)
          {
            goto LABEL_45;
          }

LABEL_13:
          v9 = v100;
          (*v95)(v101, v100);
          v29 = v93;
          if (!v36)
          {
            continue;
          }
        }

        else
        {
          if (v56 == v90)
          {
            if (v94)
            {
              goto LABEL_45;
            }

            goto LABEL_13;
          }

          if (v56 == v87 || v56 == v86 || v56 == v85)
          {
            goto LABEL_35;
          }

          if (v56 != v82)
          {
            if (v56 == v75)
            {
              goto LABEL_35;
            }

            if (v56 != v70)
            {
              (*v95)(v97, v100);
              goto LABEL_13;
            }
          }

          if (!v89)
          {
            goto LABEL_13;
          }

LABEL_45:
          v9 = v100;
          (*v95)(v92, v100);
          (*v88)(v22, v101, v9);
          v29 = v93;
          if (!v36)
          {
            continue;
          }
        }

LABEL_14:
        v42 = v27;
        goto LABEL_19;
      }
    }

    __break(1u);
    goto LABEL_80;
  }

  v38 = 0;
  v37 = (v31 + 63) >> 6;
  while (v37 - 1 != v33)
  {
    v34 = v33 + 1;
    v39 = *(v28 + 64 + 8 * v33);
    v38 -= 64;
    ++v33;
    if (v39)
    {
      v78 = a2;
      v79 = v27;
      v36 = (v39 - 1) & v39;
      v35 = __clz(__rbit64(v39)) - v38;
      goto LABEL_9;
    }
  }

  (*(v10 + 56))(v27, 1, 1, v9);
LABEL_54:

  v57 = v83;
  sub_1D22BD1D0(v27, v83, &qword_1EC6DEF28, &unk_1D2898000);
  v58 = (*(v10 + 48))(v57, 1, v9);
  v37 = v84;
  if (v58 != 1)
  {
    (*(v10 + 32))(v84, v57, v9);
    if ((sub_1D27D8E2C() & 1) == 0 && (sub_1D27D8EFC() & 1) == 0)
    {
      sub_1D27D8FCC();
    }

    v60 = v77;
    (*(v10 + 16))(v77, v37, v9);
    v61 = (*(v10 + 88))(v60, v9);
    if (v61 == *MEMORY[0x1E69A0F38] || v61 == *MEMORY[0x1E69A0F58] || v61 == *MEMORY[0x1E69A0F60])
    {
      sub_1D25EA79C(v76 & 1);
    }

    else if (v61 == *MEMORY[0x1E69A0F28])
    {
      sub_1D25EBD94();
    }

    else
    {
      if (v61 != *MEMORY[0x1E69A0F78])
      {
        if (v61 == *MEMORY[0x1E69A0F40])
        {
          sub_1D2877FE8();
          if (qword_1ED89E0E8 == -1)
          {
            goto LABEL_84;
          }

          goto LABEL_87;
        }

        if (v61 != *MEMORY[0x1E69A0F50])
        {
          if (v61 != *MEMORY[0x1E69A0F20])
          {
            sub_1D25EBA20();
            v64 = *(v10 + 8);
            v64(v37, v9);
            sub_1D22BD238(v27, &qword_1EC6DEF28, &unk_1D2898000);
            return (v64)(v77, v9);
          }

          sub_1D2877FE8();
          if (qword_1ED89E0E8 == -1)
          {
            goto LABEL_84;
          }

LABEL_87:
          swift_once();
LABEL_84:
          v66 = qword_1ED8B0058;
          v67 = sub_1D28718F8();
          (*(*(v67 - 8) + 56))(v72, 1, 1, v67);
          v102 = MEMORY[0x1E69E7CC0];
          sub_1D2344864();
          v68 = v66;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA298, &qword_1D2882518);
          sub_1D23448BC();
          sub_1D2879088();
          sub_1D2871308();
          goto LABEL_85;
        }

LABEL_80:
        sub_1D2877FE8();
        if (qword_1ED89E0E8 == -1)
        {
          goto LABEL_84;
        }

        goto LABEL_87;
      }

      sub_1D25EB184(v76 & 1);
    }

LABEL_85:
    (*(v10 + 8))(v37, v9);
    v59 = v27;
    return sub_1D22BD238(v59, &qword_1EC6DEF28, &unk_1D2898000);
  }

  sub_1D22BD238(v57, &qword_1EC6DEF28, &unk_1D2898000);
  sub_1D25EBA20();
  v59 = v27;
  return sub_1D22BD238(v59, &qword_1EC6DEF28, &unk_1D2898000);
}

uint64_t sub_1D25F3BB4@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v71 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA1B8, &qword_1D2884470);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v67[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v69 = &v67[-v7];
  v8 = sub_1D28727B8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v72 = &v67[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v67[-v12];
  MEMORY[0x1EEE9AC00](v14);
  v89 = &v67[-v15];
  MEMORY[0x1EEE9AC00](v16);
  v88 = &v67[-v17];
  MEMORY[0x1EEE9AC00](v18);
  v90 = &v67[-v19];
  MEMORY[0x1EEE9AC00](v20);
  v96 = &v67[-v21];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEF28, &unk_1D2898000);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v79 = &v67[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v67[-v25];
  v27 = sub_1D28727E8();
  v28 = v27;
  v29 = v27 + 56;
  v30 = 1 << *(v27 + 32);
  v31 = -1;
  if (v30 < 64)
  {
    v31 = ~(-1 << v30);
  }

  v32 = v31 & *(v27 + 56);
  if (v32)
  {
    v73 = v5;
    v74 = v26;
    v75 = v13;
    v77 = a2;
    v33 = 0;
    v34 = __clz(__rbit64(v32));
    v35 = (v32 - 1) & v32;
    v36 = (v30 + 63) >> 6;
LABEL_9:
    v39 = *(v27 + 48);
    v76 = v9;
    v40 = *(v9 + 16);
    v9 += 16;
    v86 = *(v9 + 56);
    v94 = v40;
    v40(v96, (v39 + v86 * v34), v8);
    v93 = (v9 + 72);
    v92 = *MEMORY[0x1E69A0F38];
    v85 = *MEMORY[0x1E69A0F58];
    v82 = *MEMORY[0x1E69A0F60];
    v81 = *MEMORY[0x1E69A0F28];
    v80 = *MEMORY[0x1E69A0F78];
    v78 = *MEMORY[0x1E69A0F40];
    v70 = *MEMORY[0x1E69A0F50];
    v87 = (v9 - 8);
    v83 = (v9 + 16);
    v68 = *MEMORY[0x1E69A0F20];
    sub_1D2870F68();
    v95 = v8;
    v26 = v90;
    v91 = v28;
    if (v35)
    {
      goto LABEL_18;
    }

LABEL_14:
    while (1)
    {
      v41 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        break;
      }

      if (v41 >= v36)
      {

        v9 = v76;
        v26 = v74;
        (*(v76 + 32))(v74, v96, v8);
        (*(v9 + 56))(v26, 0, 1, v8);
        a2 = v77;
        v13 = v75;
        v5 = v73;
        goto LABEL_53;
      }

      v35 = *(v29 + 8 * v41);
      ++v33;
      if (v35)
      {
        v33 = v41;
        while (1)
        {
LABEL_18:
          v42 = v94;
          v94(v26, (*(v28 + 48) + (__clz(__rbit64(v35)) | (v33 << 6)) * v86), v8);
          v43 = v88;
          v42(v88, v96, v8);
          v13 = *v93;
          v44 = (*v93)(v43, v8);
          if (v44 != v92)
          {
            if (v44 == v85)
            {
              v84 = 0;
              a2 = 0;
              goto LABEL_32;
            }

            if (v44 != v82 && v44 != v81 && v44 != v80)
            {
              if (v44 == v78)
              {
                goto LABEL_30;
              }

              if (v44 != v70)
              {
                if (v44 == v68)
                {
LABEL_30:
                  v84 = 0;
                }

                else
                {
                  (*v87)(v88, v8);
                  v84 = 1;
                }

                a2 = 1;
LABEL_32:
                v45 = 1;
                goto LABEL_33;
              }
            }
          }

          v84 = 0;
          a2 = 0;
          v45 = 0;
LABEL_33:
          v35 &= v35 - 1;
          v48 = v89;
          v49 = v26;
          v50 = v95;
          v94(v89, v49, v95);
          v51 = (v13)(v48, v50);
          v28 = v91;
          if (v51 == v92)
          {
            goto LABEL_34;
          }

          if (v51 == v85)
          {
            if (a2)
            {
              goto LABEL_44;
            }

            goto LABEL_13;
          }

          if (v51 == v82 || v51 == v81 || v51 == v80)
          {
            goto LABEL_34;
          }

          if (v51 == v78)
          {
            goto LABEL_43;
          }

          if (v51 == v70)
          {
LABEL_34:
            if (v45)
            {
              goto LABEL_44;
            }

LABEL_13:
            v26 = v90;
            v8 = v95;
            (*v87)(v90, v95);
            if (!v35)
            {
              goto LABEL_14;
            }
          }

          else
          {
            if (v51 != v68)
            {
              (*v87)(v89, v95);
              goto LABEL_13;
            }

LABEL_43:
            if (!v84)
            {
              goto LABEL_13;
            }

LABEL_44:
            v8 = v95;
            v52 = v96;
            (*v87)(v96, v95);
            v53 = v52;
            v26 = v90;
            v28 = v91;
            (*v83)(v53, v90, v8);
            if (!v35)
            {
              goto LABEL_14;
            }
          }
        }
      }
    }

    __break(1u);
    goto LABEL_76;
  }

  v37 = 0;
  v36 = (v30 + 63) >> 6;
  while (v36 - 1 != v32)
  {
    v33 = v32 + 1;
    v38 = *(v27 + 64 + 8 * v32);
    v37 -= 64;
    ++v32;
    if (v38)
    {
      v73 = v5;
      v74 = v26;
      v75 = v13;
      v77 = a2;
      v35 = (v38 - 1) & v38;
      v34 = __clz(__rbit64(v38)) - v37;
      goto LABEL_9;
    }
  }

  (*(v9 + 56))(v26, 1, 1, v8);
LABEL_53:

  v54 = v79;
  sub_1D22BD1D0(v26, v79, &qword_1EC6DEF28, &unk_1D2898000);
  if ((*(v9 + 48))(v54, 1, v8) == 1)
  {
    sub_1D22BD238(v26, &qword_1EC6DEF28, &unk_1D2898000);
    v55 = v54;
LABEL_69:
    sub_1D22BD238(v55, &qword_1EC6DEF28, &unk_1D2898000);
    v63 = sub_1D28716B8();
    return (*(*(v63 - 8) + 56))(a2, 1, 1, v63);
  }

  (*(v9 + 32))(v13, v54, v8);
  v56 = v72;
  (*(v9 + 16))(v72, v13, v8);
  v57 = (*(v9 + 88))(v56, v8);
  if (v57 == *MEMORY[0x1E69A0F38] || v57 == *MEMORY[0x1E69A0F60])
  {
    if ((v71 & 1) == 0)
    {
      sub_1D2871678();
      v59 = sub_1D28716B8();
      v60 = *(v59 - 8);
      result = (*(v60 + 48))(v5, 1, v59);
      if (result != 1)
      {
        (*(v9 + 8))(v13, v8);
        sub_1D22BD238(v26, &qword_1EC6DEF28, &unk_1D2898000);
        (*(v60 + 32))(a2, v5, v59);
        return (*(v60 + 56))(a2, 0, 1, v59);
      }

      __break(1u);
      goto LABEL_78;
    }

LABEL_68:
    (*(v9 + 8))(v13, v8);
    v55 = v26;
    goto LABEL_69;
  }

  if (v57 != *MEMORY[0x1E69A0F28])
  {
    if (v57 != *MEMORY[0x1E69A0F40])
    {
      if (v57 == *MEMORY[0x1E69A0F50])
      {
        if (qword_1EC6D8D20 == -1)
        {
LABEL_72:
          v59 = sub_1D28716B8();
          v64 = __swift_project_value_buffer(v59, qword_1EC6E3F10);
          v60 = *(v59 - 8);
          (*(v60 + 16))(a2, v64, v59);
          (*(v9 + 8))(v13, v8);
          sub_1D22BD238(v26, &qword_1EC6DEF28, &unk_1D2898000);
          return (*(v60 + 56))(a2, 0, 1, v59);
        }

LABEL_76:
        swift_once();
        goto LABEL_72;
      }

      if (v57 != *MEMORY[0x1E69A0F20])
      {
        v65 = *(v9 + 8);
        v65(v13, v8);
        sub_1D22BD238(v26, &qword_1EC6DEF28, &unk_1D2898000);
        v66 = sub_1D28716B8();
        (*(*(v66 - 8) + 56))(a2, 1, 1, v66);
        return (v65)(v72, v8);
      }
    }

    goto LABEL_68;
  }

  v62 = v69;
  sub_1D2871678();
  v59 = sub_1D28716B8();
  v60 = *(v59 - 8);
  result = (*(v60 + 48))(v62, 1, v59);
  if (result != 1)
  {
    (*(v9 + 8))(v13, v8);
    sub_1D22BD238(v26, &qword_1EC6DEF28, &unk_1D2898000);
    (*(v60 + 32))(a2, v62, v59);
    return (*(v60 + 56))(a2, 0, 1, v59);
  }

LABEL_78:
  __break(1u);
  return result;
}

void sub_1D25F47D4(__n128 a1)
{
  v1 = sub_1D28727B8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v50 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v69 = &v50 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v68 = &v50 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v73 = &v50 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v50 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEF28, &unk_1D2898000);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v57 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v50 - v20;
  v22 = sub_1D28727E8();
  v23 = v22;
  v24 = v22 + 56;
  v25 = 1 << *(v22 + 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & *(v22 + 56);
  if (v27)
  {
    v52 = v21;
    v53 = v7;
    v54 = v4;
    v28 = 0;
    v29 = __clz(__rbit64(v27));
    v30 = (v27 - 1) & v27;
    v31 = (v25 + 63) >> 6;
LABEL_9:
    v34 = *(v22 + 48);
    v55 = v2;
    v36 = *(v2 + 16);
    v35 = v2 + 16;
    v64 = *(v35 + 56);
    v72 = v36;
    v36(v16, (v34 + v64 * v29), v1);
    v71 = (v35 + 72);
    v70 = *MEMORY[0x1E69A0F38];
    v63 = *MEMORY[0x1E69A0F58];
    v60 = *MEMORY[0x1E69A0F60];
    v59 = *MEMORY[0x1E69A0F28];
    v58 = *MEMORY[0x1E69A0F78];
    v56 = *MEMORY[0x1E69A0F40];
    v51 = *MEMORY[0x1E69A0F50];
    v67 = (v35 - 8);
    v61 = (v35 + 16);
    v50 = *MEMORY[0x1E69A0F20];
    sub_1D2870F68();
    v65 = v23;
    v66 = v16;
    if (v30)
    {
      goto LABEL_18;
    }

LABEL_14:
    while (1)
    {
      v37 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v37 >= v31)
      {

        v2 = v55;
        v21 = v52;
        (*(v55 + 32))(v52, v16, v1);
        (*(v2 + 56))(v21, 0, 1, v1);
        v7 = v53;
        v4 = v54;
        goto LABEL_53;
      }

      v30 = *(v24 + 8 * v37);
      ++v28;
      if (v30)
      {
        v28 = v37;
        while (1)
        {
LABEL_18:
          v38 = v72;
          v72(v73, (*(v23 + 48) + (__clz(__rbit64(v30)) | (v28 << 6)) * v64), v1);
          v39 = v68;
          v38(v68, v16, v1);
          v40 = *v71;
          v41 = (*v71)(v39, v1);
          if (v41 != v70)
          {
            if (v41 == v63)
            {
              v62 = 0;
              v42 = 0;
              goto LABEL_32;
            }

            if (v41 != v60 && v41 != v59 && v41 != v58)
            {
              if (v41 == v56)
              {
                goto LABEL_30;
              }

              if (v41 != v51)
              {
                if (v41 == v50)
                {
LABEL_30:
                  v62 = 0;
                }

                else
                {
                  (*v67)(v68, v1);
                  v62 = 1;
                }

                v42 = 1;
LABEL_32:
                v43 = 1;
                goto LABEL_33;
              }
            }
          }

          v62 = 0;
          v42 = 0;
          v43 = 0;
LABEL_33:
          v30 &= v30 - 1;
          v46 = v69;
          v72(v69, v73, v1);
          v47 = v40(v46, v1);
          v23 = v65;
          if (v47 == v70)
          {
            goto LABEL_34;
          }

          if (v47 == v63)
          {
            if (v42)
            {
              goto LABEL_44;
            }

            goto LABEL_13;
          }

          if (v47 == v60 || v47 == v59 || v47 == v58)
          {
            goto LABEL_34;
          }

          if (v47 == v56)
          {
            goto LABEL_43;
          }

          if (v47 == v51)
          {
LABEL_34:
            if (v43)
            {
              goto LABEL_44;
            }

LABEL_13:
            (*v67)(v73, v1);
            v16 = v66;
            if (!v30)
            {
              goto LABEL_14;
            }
          }

          else
          {
            if (v47 != v50)
            {
              (*v67)(v69, v1);
              goto LABEL_13;
            }

LABEL_43:
            if (!v62)
            {
              goto LABEL_13;
            }

LABEL_44:
            v16 = v66;
            (*v67)(v66, v1);
            (*v61)(v16, v73, v1);
            if (!v30)
            {
              goto LABEL_14;
            }
          }
        }
      }
    }

    __break(1u);
  }

  else
  {
    v32 = 0;
    v31 = (v25 + 63) >> 6;
    while (v31 - 1 != v27)
    {
      v28 = v27 + 1;
      v33 = *(v22 + 64 + 8 * v27);
      v32 -= 64;
      ++v27;
      if (v33)
      {
        v52 = v21;
        v53 = v7;
        v54 = v4;
        v30 = (v33 - 1) & v33;
        v29 = __clz(__rbit64(v33)) - v32;
        goto LABEL_9;
      }
    }

    (*(v2 + 56))(v21, 1, 1, v1);
LABEL_53:

    v48 = v57;
    sub_1D22BD1D0(v21, v57, &qword_1EC6DEF28, &unk_1D2898000);
    if ((*(v2 + 48))(v48, 1, v1) == 1)
    {
      sub_1D22BD238(v21, &qword_1EC6DEF28, &unk_1D2898000);
      sub_1D22BD238(v48, &qword_1EC6DEF28, &unk_1D2898000);
    }

    else
    {
      (*(v2 + 32))(v7, v48, v1);
      (*(v2 + 16))(v4, v7, v1);
      if ((*(v2 + 88))(v4, v1) == *MEMORY[0x1E69A0F20])
      {
        (*(v2 + 8))(v7, v1);
        sub_1D22BD238(v21, &qword_1EC6DEF28, &unk_1D2898000);
      }

      else
      {
        v49 = *(v2 + 8);
        v49(v7, v1);
        sub_1D22BD238(v21, &qword_1EC6DEF28, &unk_1D2898000);
        v49(v4, v1);
      }
    }
  }
}

uint64_t _s15PrewarmingStateVMa(uint64_t a1)
{
  result = qword_1ED8A61B0;
  if (!qword_1ED8A61B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D25F5020(uint64_t a1)
{
  sub_1D25F5114(319);
  if (v1 <= 0x3F)
  {
    sub_1D25F5178(319, &qword_1ED89E0D0, MEMORY[0x1E69E93B8]);
    if (v2 <= 0x3F)
    {
      sub_1D25F5178(319, &qword_1ED89E0C8, MEMORY[0x1E69E9400]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D25F5114(uint64_t a1)
{
  if (!qword_1ED89CE28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DEF40, &qword_1D2898030);
    v1 = sub_1D2878F18();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED89CE28);
    }
  }
}

void sub_1D25F5178(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D2878F18();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D25F51CC()
{
  v1 = v0;
  v2 = sub_1D2873CB8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 8))
  {
    sub_1D2870F78();
    sub_1D28725B8();
    v6 = sub_1D2873CA8();
    v7 = sub_1D2878A08();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1D226E000, v6, v7, "Cancelling pre-warming task.", v8, 2u);
      MEMORY[0x1D38A3520](v8, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94B0, &unk_1D287D430);
    sub_1D28786B8();

    *(v1 + 8) = 0;
    *v1 = 0;
  }
}

uint64_t sub_1D25F5364()
{
  v1[2] = v0;
  v2 = sub_1D2873CB8();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  sub_1D2878568();
  v1[6] = sub_1D2878558();
  v4 = sub_1D28784F8();
  v1[7] = v4;
  v1[8] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1D25F5458, v4, v3);
}

uint64_t sub_1D25F5458()
{
  v1 = *(v0[2] + 8);
  v0[9] = v1;
  if (v1)
  {
    sub_1D2870F78();
    v2 = swift_task_alloc();
    v0[10] = v2;
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94B0, &unk_1D287D430);
    *v2 = v0;
    v2[1] = sub_1D25F5578;
    v4 = MEMORY[0x1E69E7288];
    v5 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DA10](v3, v1, v5, v3, v4);
  }

  else
  {

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_1D25F5578()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  v3 = *(v2 + 64);
  v4 = *(v2 + 56);
  if (v0)
  {
    v5 = sub_1D25F5728;
  }

  else
  {
    v5 = sub_1D25F56B4;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D25F56B4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D25F5728()
{
  v1 = v0[11];

  sub_1D28725B8();
  v2 = v1;
  v3 = sub_1D2873CA8();
  v4 = sub_1D2878A18();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[11];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_1D226E000, v3, v4, "Prewarming task failed with error: %@", v7, 0xCu);
    sub_1D22BD238(v8, qword_1EC6DA930, &qword_1D287E870);
    MEMORY[0x1D38A3520](v8, -1, -1);
    MEMORY[0x1D38A3520](v7, -1, -1);
  }

  else
  {
  }

  (*(v0[4] + 8))(v0[5], v0[3]);

  v11 = v0[1];

  return v11();
}

void sub_1D25F58C8()
{
  v1 = v0;
  v26 = sub_1D2873C28();
  v2 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v24 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v23 - v5;
  v25 = sub_1D2873C48();
  v23 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D2873CB8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D28725B8();
  v13 = sub_1D2873CA8();
  v14 = sub_1D2878A08();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_1D226E000, v13, v14, "Starting pre-warming KeyboardEmojiGenerator operations.", v15, 2u);
    MEMORY[0x1D38A3520](v15, -1, -1);
  }

  (*(v10 + 8))(v12, v9);
  *v1 = 1;
  sub_1D28720E8();
  sub_1D25F60B0(v6);
  v16 = sub_1D2873C38();
  v17 = sub_1D2878BB8();
  if (sub_1D2878EE8())
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    v19 = sub_1D2873C08();
    _os_signpost_emit_with_name_impl(&dword_1D226E000, v16, v17, v19, "genmojiOnDeviceGeneratorPrewarming", "", v18, 2u);
    MEMORY[0x1D38A3520](v18, -1, -1);
  }

  v20 = v26;
  (*(v2 + 16))(v24, v6, v26);
  sub_1D2873C88();
  swift_allocObject();
  v21 = sub_1D2873C78();
  (*(v2 + 8))(v6, v20);
  (*(v23 + 8))(v8, v25);
  v22 = *(_s15PrewarmingStateVMa(0) + 40);

  *&v1[v22] = v21;
}

uint64_t sub_1D25F5C60()
{
  v1 = v0;
  v2 = sub_1D2873C58();
  v33 = *(v2 - 8);
  v34 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v32 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D2873C28();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D2873C48();
  v35 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v36 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D2873CB8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D28725B8();
  v14 = sub_1D2873CA8();
  v15 = sub_1D2878A08();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v31 = v7;
    v17 = v8;
    v18 = v5;
    v19 = v4;
    v20 = v16;
    *v16 = 0;
    _os_log_impl(&dword_1D226E000, v14, v15, "KeyboardEmojiGenerator pre-warming done.", v16, 2u);
    v21 = v20;
    v4 = v19;
    v5 = v18;
    v8 = v17;
    v7 = v31;
    MEMORY[0x1D38A3520](v21, -1, -1);
  }

  (*(v11 + 8))(v13, v10);

  *(v1 + 8) = 0;
  *(v1 + 2) = 1;
  *v1 = 0;
  result = _s15PrewarmingStateVMa(0);
  if (*(v1 + *(result + 40)))
  {
    sub_1D2870F78();
    sub_1D28720E8();
    v23 = sub_1D2873C38();
    sub_1D2873C68();
    v24 = sub_1D2878BA8();
    if (sub_1D2878EE8())
    {
      sub_1D2870F78();
      v25 = v32;
      sub_1D2873C98();

      v27 = v33;
      v26 = v34;
      if ((*(v33 + 88))(v25, v34) == *MEMORY[0x1E69E93E8])
      {
        v28 = "[Error] Interval already ended";
      }

      else
      {
        (*(v27 + 8))(v25, v26);
        v28 = "";
      }

      v29 = swift_slowAlloc();
      *v29 = 0;
      v30 = sub_1D2873C08();
      _os_signpost_emit_with_name_impl(&dword_1D226E000, v23, v24, v30, "genmojiOnDeviceGeneratorPrewarming", v28, v29, 2u);
      MEMORY[0x1D38A3520](v29, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
    return (*(v35 + 8))(v36, v8);
  }

  return result;
}

uint64_t sub_1D25F60B0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1D2873C48();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEF38, &qword_1D2898018);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v15 - v9;
  v11 = *(_s15PrewarmingStateVMa(0) + 36);
  sub_1D25F62EC(v2 + v11, v10);
  v12 = sub_1D2873C28();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v10, 1, v12) != 1)
  {
    return (*(v13 + 32))(a1, v10, v12);
  }

  sub_1D22BD238(v10, &qword_1EC6DEF38, &qword_1D2898018);
  sub_1D28720E8();
  sub_1D2873C38();
  sub_1D2873BF8();
  (*(v5 + 8))(v7, v4);
  sub_1D22BD238(v2 + v11, &qword_1EC6DEF38, &qword_1D2898018);
  (*(v13 + 16))(v2 + v11, a1, v12);
  return (*(v13 + 56))(v2 + v11, 0, 1, v12);
}

uint64_t sub_1D25F62EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEF38, &qword_1D2898018);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

Swift::Void __swiftcall ImageKeyFaceLoader.startPrewarm()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60, &qword_1D28811F0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v24 - v2;
  v4 = sub_1D2872008();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v24 - v9;
  sub_1D24DE0C4();
  if (*(v0 + 64) & 1) != 0 || *(v0 + 56) || (v11 = sub_1D28785F8(), v12 = *(v11 - 8), v13 = *(v12 + 56), v24 = v12 + 56, v25 = v13, v13(v3, 1, 1, v11), v14 = sub_1D2878568(), sub_1D2870F78(), v15 = v0, v26 = v14, v16 = sub_1D2878558(), v17 = swift_allocObject(), v18 = MEMORY[0x1E69E85E0], v17[2] = v16, v17[3] = v18, v27 = v15, v17[4] = v15, sub_1D22AE01C(0, 0, v3, &unk_1D2898060, v17), , (sub_1D2871F78()))
  {
    (*(v5 + 8))(v10, v4);
  }

  else
  {
    sub_1D28785B8();
    v25(v3, 0, 1, v11);
    (*(v5 + 16))(v7, v10, v4);
    v19 = v27;
    sub_1D2870F78();
    v20 = sub_1D2878558();
    v21 = (*(v5 + 80) + 40) & ~*(v5 + 80);
    v22 = swift_allocObject();
    *(v22 + 2) = v20;
    *(v22 + 3) = v18;
    *(v22 + 4) = v19;
    (*(v5 + 32))(&v22[v21], v7, v4);
    v23 = sub_1D22AE01C(0, 0, v3, &unk_1D2898070, v22);
    (*(v5 + 8))(v10, v4);
    *(v19 + 56) = v23;
  }
}

Swift::Void __swiftcall ImageKeyFaceLoader.cancelPrewarm()()
{
  v1 = sub_1D2873CB8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 56))
  {
    sub_1D2870F78();
    sub_1D2872568();
    v5 = sub_1D2873CA8();
    v6 = sub_1D28789F8();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1D226E000, v5, v6, "Cancel prewarming of faces.", v7, 2u);
      MEMORY[0x1D38A3520](v7, -1, -1);
    }

    (*(v2 + 8))(v4, v1);
    sub_1D28786B8();
  }
}

uint64_t sub_1D25F6800@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1D25DB1BC();
  if (v5)
  {
    v6 = v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v1;
    v18 = *v2;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1D24EC8E0();
      v8 = v18;
    }

    v9 = *(v8 + 56);
    v10 = sub_1D2879308();
    v17 = *(v10 - 8);
    (*(v17 + 32))(a1, v9 + *(v17 + 72) * v6, v10);
    sub_1D25D42B0(v6, v8);
    *v2 = v8;
    v11 = *(v17 + 56);
    v12 = a1;
    v13 = 0;
    v14 = v10;
  }

  else
  {
    v15 = sub_1D2879308();
    v11 = *(*(v15 - 8) + 56);
    v14 = v15;
    v12 = a1;
    v13 = 1;
  }

  return v11(v12, v13, 1, v14);
}

uint64_t sub_1D25F69A8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void (*a4)(uint64_t, uint64_t)@<X3>, void (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  v11 = v6;
  v13 = sub_1D25D064C(a1);
  if (v14)
  {
    v15 = v13;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v6;
    v30 = *v11;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a5();
      v17 = v30;
    }

    v18 = *(v17 + 48);
    v19 = sub_1D2871818();
    v20 = v15;
    (*(*(v19 - 8) + 8))(v18 + *(*(v19 - 8) + 72) * v15, v19);
    v21 = *(v17 + 56);
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v29 = *(v22 - 8);
    (*(v29 + 32))(a6, v21 + *(v29 + 72) * v20, v22);
    a4(v20, v17);
    *v11 = v17;
    v23 = *(v29 + 56);
    v24 = a6;
    v25 = 0;
    v26 = v22;
  }

  else
  {
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v23 = *(*(v27 - 8) + 56);
    v26 = v27;
    v24 = a6;
    v25 = 1;
  }

  return v23(v24, v25, 1, v26);
}

uint64_t ImageKeyFaceLoader.deletePreviewArchives()()
{
  v1[2] = v0;
  sub_1D2878568();
  v1[3] = sub_1D2878558();
  v3 = sub_1D28784F8();
  v1[4] = v3;
  v1[5] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1D25F6C14, v3, v2);
}

uint64_t sub_1D25F6C14()
{
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_1D25F6CA8;

  return sub_1D2495E44();
}

uint64_t sub_1D25F6CA8()
{
  v2 = *v1;
  *(*v1 + 56) = v0;

  v3 = *(v2 + 40);
  v4 = *(v2 + 32);
  if (v0)
  {
    v5 = sub_1D25F6E48;
  }

  else
  {
    v5 = sub_1D25F6DE4;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D25F6DE4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D25F6E48()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D25F6EAC(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 40) = a2;
  *(v4 + 48) = v3;
  *(v4 + 32) = a1;
  v7 = sub_1D2871818();
  *(v4 + 56) = v7;
  *(v4 + 64) = *(v7 - 8);
  *(v4 + 72) = swift_task_alloc();
  *(v4 + 128) = a3;
  if (a1)
  {
    swift_getObjectType();
    v8 = sub_1D28784F8();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  *(v4 + 80) = v8;
  *(v4 + 88) = v10;

  return MEMORY[0x1EEE6DFA0](sub_1D25F6FB4, v8, v10);
}

uint64_t sub_1D25F6FB4()
{
  v20 = v0;
  v1 = v0 + 129;
  v2 = *(v0 + 48);
  swift_getAtKeyPath();
  os_unfair_lock_lock((v2 + 40));
  v3 = *(v2 + 72);
  if (v3)
  {
    v19 = *(v0 + 129);
    v3(&v17, &v19);
    v4 = v17;
    v5 = v18;
    os_unfair_lock_unlock((v2 + 40));
    if (v5 != 255)
    {
      if (v5)
      {
        *(v0 + 24) = v4;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94B0, &unk_1D287D430);
        swift_willThrowTypedImpl();

        v6 = *(v0 + 8);

        return v6();
      }

      else
      {

        v16 = *(v0 + 8);

        return v16(v4);
      }
    }
  }

  else
  {
    os_unfair_lock_unlock((v2 + 40));
  }

  v8 = *(v0 + 72);
  v9 = *(v0 + 48);
  sub_1D2871808();
  v10 = swift_task_alloc();
  *(v0 + 96) = v10;
  v10[2] = v9;
  v10[3] = v1;
  v10[4] = v8;
  v10[5] = v0 + 128;
  v11 = swift_task_alloc();
  *(v0 + 104) = v11;
  v11[2] = v9;
  v11[3] = v1;
  v11[4] = v8;
  v12 = swift_task_alloc();
  *(v0 + 112) = v12;
  v13 = sub_1D28731D8();
  *v12 = v0;
  v12[1] = sub_1D25F7200;
  v14 = *(v0 + 32);
  v15 = *(v0 + 40);

  return MEMORY[0x1EEE6DE18](v0 + 16, &unk_1D2898370, v10, sub_1D260F2FC, v11, v14, v15, v13);
}

uint64_t sub_1D25F7200()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = *(v2 + 80);
    v4 = *(v2 + 88);
    v5 = sub_1D25F73A8;
  }

  else
  {

    v3 = *(v2 + 80);
    v4 = *(v2 + 88);
    v5 = sub_1D25F7324;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1D25F7324()
{
  (*(v0[8] + 8))(v0[9], v0[7]);
  v1 = v0[2];

  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_1D25F73A8()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D25F7444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v7 = sub_1D2871818();
  v5[8] = v7;
  v5[9] = *(v7 - 8);
  v5[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEFB0, &qword_1D2898300);
  v5[11] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEFB8, &qword_1D2898308);
  v5[12] = v8;
  v5[13] = *(v8 - 8);
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  type metadata accessor for GeneratedPreviewOptions(0);
  v5[16] = swift_task_alloc();
  if (a2)
  {
    swift_getObjectType();
    v9 = sub_1D28784F8();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v5[17] = v9;
  v5[18] = v11;

  return MEMORY[0x1EEE6DFA0](sub_1D25F7620, v9, v11);
}

uint64_t sub_1D25F7620()
{
  v1 = v0[7];
  swift_getAtKeyPath();
  os_unfair_lock_lock((v1 + 40));
  v2 = *(v1 + 72);
  if (v2)
  {
    v2(v0[16]);
  }

  else
  {
    (*(v0[13] + 56))(v0[11], 1, 1, v0[12]);
  }

  v3 = v0[12];
  v4 = v0[13];
  v5 = v0[11];
  os_unfair_lock_unlock((v1 + 40));
  if ((*(v4 + 48))(v5, 1, v3) == 1)
  {
    v6 = v0[16];
    v7 = v0[10];
    v8 = v0[6];
    v9 = v0[7];
    sub_1D22BD238(v0[11], &qword_1EC6DEFB0, &qword_1D2898300);
    sub_1D2871808();
    v10 = swift_task_alloc();
    v0[19] = v10;
    v10[2] = v9;
    v10[3] = v6;
    v10[4] = v7;
    v10[5] = v8;
    v11 = swift_task_alloc();
    v0[20] = v11;
    v11[2] = v9;
    v11[3] = v6;
    v11[4] = v7;
    v12 = swift_task_alloc();
    v0[21] = v12;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC0F0, &qword_1D288B3A0);
    *v12 = v0;
    v12[1] = sub_1D25F79B8;
    v14 = v0[4];
    v15 = v0[5];
    v16 = v0[3];

    return MEMORY[0x1EEE6DE18](v16, &unk_1D2898318, v10, sub_1D260EEA0, v11, v14, v15, v13);
  }

  else
  {
    v17 = v0[14];
    v18 = v0[15];
    sub_1D22EC9BC(v0[11], v18, &qword_1EC6DEFB8, &qword_1D2898308);
    sub_1D22BD1D0(v18, v17, &qword_1EC6DEFB8, &qword_1D2898308);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v21 = v0[14];
    v20 = v0[15];
    if (EnumCaseMultiPayload == 1)
    {
      v0[2] = *v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94B0, &unk_1D287D430);
      swift_willThrowTypedImpl();
      sub_1D22BD238(v20, &qword_1EC6DEFB8, &qword_1D2898308);
    }

    else
    {
      v23 = v0[3];
      sub_1D22BD238(v0[15], &qword_1EC6DEFB8, &qword_1D2898308);
      sub_1D22EC9BC(v21, v23, &qword_1EC6DC0F0, &qword_1D288B3A0);
    }

    sub_1D260E160(v0[16], type metadata accessor for GeneratedPreviewOptions);

    v22 = v0[1];

    return v22();
  }
}

uint64_t sub_1D25F79B8()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v3 = *(v2 + 136);
    v4 = *(v2 + 144);
    v5 = sub_1D25F7BB0;
  }

  else
  {

    v3 = *(v2 + 136);
    v4 = *(v2 + 144);
    v5 = sub_1D25F7ADC;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1D25F7ADC()
{
  (*(v0[9] + 8))(v0[10], v0[8]);
  sub_1D260E160(v0[16], type metadata accessor for GeneratedPreviewOptions);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1D25F7BB0()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];

  (*(v2 + 8))(v1, v3);
  sub_1D260E160(v0[16], type metadata accessor for GeneratedPreviewOptions);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D25F7C9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[24] = a4;
  v5[25] = v4;
  v5[22] = a2;
  v5[23] = a3;
  v5[21] = a1;
  v7 = sub_1D2871818();
  v5[26] = v7;
  v5[27] = *(v7 - 8);
  v5[28] = swift_task_alloc();
  type metadata accessor for ImageKeyFaceLoader.Context.ID(0);
  v5[29] = swift_task_alloc();
  if (a2)
  {
    swift_getObjectType();
    v8 = sub_1D28784F8();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v5[30] = v8;
  v5[31] = v10;

  return MEMORY[0x1EEE6DFA0](sub_1D25F7DCC, v8, v10);
}

uint64_t sub_1D25F7DCC()
{
  v1 = *(v0 + 200);
  swift_getAtKeyPath();
  os_unfair_lock_lock((v1 + 40));
  v2 = *(v1 + 72);
  if (v2)
  {
    v2(*(v0 + 232));
    v3 = *(v0 + 104);
    os_unfair_lock_unlock((v1 + 40));
    if (v3 != 255)
    {
      v4 = *(v0 + 80);
      *(v0 + 16) = *(v0 + 64);
      *(v0 + 32) = v4;
      *(v0 + 41) = *(v0 + 89);
      sub_1D22BD1D0(v0 + 16, v0 + 112, &qword_1EC6DEF80, &unk_1D2898200);
      if (*(v0 + 152))
      {
        *(v0 + 160) = *(v0 + 112);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94B0, &unk_1D287D430);
        swift_willThrowTypedImpl();
        sub_1D22BD238(v0 + 16, &qword_1EC6DEF80, &unk_1D2898200);
      }

      else
      {
        v17 = *(v0 + 168);
        sub_1D22BD238(v0 + 16, &qword_1EC6DEF80, &unk_1D2898200);
        sub_1D22D79FC((v0 + 112), v17);
      }

      sub_1D260E160(*(v0 + 232), type metadata accessor for ImageKeyFaceLoader.Context.ID);

      v5 = *(v0 + 8);

      return v5();
    }
  }

  else
  {
    *(v0 + 96) = 0;
    *(v0 + 64) = 0u;
    *(v0 + 80) = 0u;
    *(v0 + 104) = -1;
    os_unfair_lock_unlock((v1 + 40));
  }

  v6 = *(v0 + 224);
  v7 = *(v0 + 232);
  v8 = *(v0 + 192);
  v9 = *(v0 + 200);
  sub_1D22BD238(v0 + 64, &qword_1EC6DEF78, &qword_1D28981E0);
  sub_1D2871808();
  v10 = swift_task_alloc();
  *(v0 + 256) = v10;
  v10[2] = v9;
  v10[3] = v7;
  v10[4] = v6;
  v10[5] = v8;
  v11 = swift_task_alloc();
  *(v0 + 264) = v11;
  v11[2] = v9;
  v11[3] = v7;
  v11[4] = v6;
  v12 = swift_task_alloc();
  *(v0 + 272) = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA468, &qword_1D2883628);
  *v12 = v0;
  v12[1] = sub_1D25F80CC;
  v14 = *(v0 + 176);
  v15 = *(v0 + 184);
  v16 = *(v0 + 168);

  return MEMORY[0x1EEE6DE18](v16, &unk_1D28981F0, v10, sub_1D260E280, v11, v14, v15, v13);
}

uint64_t sub_1D25F80CC()
{
  v2 = *v1;
  *(*v1 + 280) = v0;

  if (v0)
  {
    v3 = *(v2 + 240);
    v4 = *(v2 + 248);
    v5 = sub_1D25F8294;
  }

  else
  {

    v3 = *(v2 + 240);
    v4 = *(v2 + 248);
    v5 = sub_1D25F81F0;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1D25F81F0()
{
  (*(v0[27] + 8))(v0[28], v0[26]);
  sub_1D260E160(v0[29], type metadata accessor for ImageKeyFaceLoader.Context.ID);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1D25F8294()
{
  v2 = v0[27];
  v1 = v0[28];
  v3 = v0[26];

  (*(v2 + 8))(v1, v3);
  sub_1D260E160(v0[29], type metadata accessor for ImageKeyFaceLoader.Context.ID);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D25F8358(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = type metadata accessor for ImageKeyFaceLoader.Context(0);
  v4[7] = swift_task_alloc();
  v4[8] = type metadata accessor for PhotosPersonAsset(0);
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();
  v5 = sub_1D2873CB8();
  v4[11] = v5;
  v4[12] = *(v5 - 8);
  v4[13] = swift_task_alloc();
  sub_1D2878568();
  v4[14] = sub_1D2878558();
  v7 = sub_1D28784F8();
  v4[15] = v7;
  v4[16] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1D25F84BC, v7, v6);
}

void sub_1D25F84BC(uint64_t a1)
{
  v41 = v1;
  v3 = v1[9];
  v2 = v1[10];
  v4 = v1[3];
  sub_1D2872568();
  sub_1D260E0F8(v4, v2, type metadata accessor for PhotosPersonAsset);
  sub_1D260E0F8(v4, v3, type metadata accessor for PhotosPersonAsset);
  v5 = sub_1D2873CA8();
  v6 = sub_1D28789F8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = v1[10];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v40 = v9;
    *v8 = 136315394;
    v10 = *(v7 + 8);
    v11 = v1[10];
    if (v10)
    {
      v12 = *v11;
      v13 = v10;
    }

    else
    {
      v12 = 0;
      v13 = 0xE000000000000000;
    }

    sub_1D2870F68();
    sub_1D260E160(v11, type metadata accessor for PhotosPersonAsset);
    v19 = sub_1D23D7C84(v12, v13, &v40);

    *(v8 + 4) = v19;
    *(v8 + 12) = 2080;
    v20 = objc_opt_self();
    v21 = sub_1D2878068();
    v22 = [v20 uuidFromLocalIdentifier_];

    if (!v22)
    {
      __break(1u);
      return;
    }

    v23 = v1[12];
    v38 = v1[11];
    v39 = v1[13];
    v24 = v1[9];
    v25 = sub_1D28780A8();
    v27 = v26;

    sub_1D260E160(v24, type metadata accessor for PhotosPersonAsset);
    v28 = sub_1D23D7C84(v25, v27, &v40);

    *(v8 + 14) = v28;
    _os_log_impl(&dword_1D226E000, v5, v6, "Request face generation %s-%s.", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D38A3520](v9, -1, -1);
    MEMORY[0x1D38A3520](v8, -1, -1);

    (*(v23 + 8))(v39, v38);
  }

  else
  {
    v15 = v1[12];
    v14 = v1[13];
    v17 = v1[10];
    v16 = v1[11];
    v18 = v1[9];

    sub_1D260E160(v17, type metadata accessor for PhotosPersonAsset);
    (*(v15 + 8))(v14, v16);
    sub_1D260E160(v18, type metadata accessor for PhotosPersonAsset);
  }

  v29 = v1[14];
  v31 = v1[6];
  v30 = v1[7];
  v32 = v1[4];
  v33 = v1[3];
  v1[17] = sub_1D25F8B58();
  sub_1D260E0F8(v33, v30, type metadata accessor for PhotosPersonAsset);
  sub_1D260E0F8(v32, v30 + *(v31 + 20), type metadata accessor for GeneratedPreviewOptions);
  sub_1D2870F78();
  v34 = swift_task_alloc();
  v1[18] = v34;
  *v34 = v1;
  v34[1] = sub_1D25F8884;
  v35 = v1[7];
  v36 = v1[2];
  v37 = MEMORY[0x1E69E85E0];

  sub_1D25F7C9C(v36, v29, v37, v35);
}

uint64_t sub_1D25F8884()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  *(*v1 + 152) = v0;

  sub_1D260E160(v3, type metadata accessor for ImageKeyFaceLoader.Context);

  v4 = *(v2 + 128);
  v5 = *(v2 + 120);
  if (v0)
  {
    v6 = sub_1D25F8AC4;
  }

  else
  {
    v6 = sub_1D25F8A30;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, v4);
}

uint64_t sub_1D25F8A30()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D25F8AC4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D25F8B58()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    MEMORY[0x1EEE9AC00](0);
    type metadata accessor for ImageKeyFaceLoader.Context(v2);
    type metadata accessor for ImageKeyFaceLoader.Context.ID(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA468, &qword_1D2883628);
    sub_1D260E0B0(&qword_1EC6DEF98, type metadata accessor for ImageKeyFaceLoader.Context, &unk_1D2898130);
    KeyPath = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEFA0, &qword_1D2898290);
    v1 = swift_allocObject();
    *(v1 + 16) = &unk_1D2898258;
    *(v1 + 24) = v0;
    *(v1 + 32) = 1;
    sub_1D2870F78();
    v4 = MEMORY[0x1E69E7CC0];
    v5 = sub_1D25D9D8C(MEMORY[0x1E69E7CC0]);
    *(v1 + 40) = 0;
    *(v1 + 48) = v5;
    *(v1 + 56) = v4;
    *(v1 + 64) = 0u;
    *(v1 + 80) = 0u;
    *(v1 + 96) = 0u;
    *(v1 + 112) = 0;
    *(v1 + 120) = KeyPath;
    *(v0 + 16) = v1;
    sub_1D2870F78();
  }

  sub_1D2870F78();
  return v1;
}

uint64_t sub_1D25F8CC4(uint64_t a1, uint64_t a2)
{
  v2[2] = sub_1D2878568();
  v2[3] = sub_1D2878558();
  v5 = swift_task_alloc();
  v2[4] = v5;
  *v5 = v2;
  v5[1] = sub_1D25F8D8C;

  return sub_1D25F8F4C(a1, a2);
}

uint64_t sub_1D25F8D8C()
{
  *(*v1 + 40) = v0;

  v3 = sub_1D28784F8();
  if (v0)
  {
    v4 = sub_1D25F8EE8;
  }

  else
  {
    v4 = sub_1D260F5F8;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, v2);
}

uint64_t sub_1D25F8EE8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D25F8F4C(uint64_t a1, uint64_t a2)
{
  v3[18] = a2;
  v3[19] = v2;
  v3[17] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDA40, &unk_1D28982A0);
  v3[20] = v4;
  v3[21] = *(v4 - 8);
  v3[22] = swift_task_alloc();
  v5 = type metadata accessor for FacePickerPersistentStorage.GeneratedPreviewArchive(0);
  v3[23] = v5;
  v3[24] = *(v5 - 8);
  v3[25] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC0F0, &qword_1D288B3A0);
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v6 = type metadata accessor for ImageKeyFaceLoader.Context(0);
  v3[28] = v6;
  v7 = *(v6 - 8);
  v3[29] = v7;
  v3[30] = *(v7 + 64);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v8 = sub_1D2873CB8();
  v3[36] = v8;
  v3[37] = *(v8 - 8);
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();
  v9 = sub_1D2871798();
  v3[40] = v9;
  v3[41] = *(v9 - 8);
  v3[42] = swift_task_alloc();
  v3[43] = sub_1D2878568();
  v3[44] = sub_1D2878558();
  v11 = sub_1D28784F8();
  v3[45] = v11;
  v3[46] = v10;

  return MEMORY[0x1EEE6DFA0](sub_1D25F924C, v11, v10);
}

uint64_t sub_1D25F924C(uint64_t a1)
{
  v38 = v1;
  v3 = *(v1 + 272);
  v2 = *(v1 + 280);
  v4 = *(v1 + 144);
  sub_1D2871788();
  sub_1D2872568();
  sub_1D260E0F8(v4, v2, type metadata accessor for ImageKeyFaceLoader.Context);
  sub_1D260E0F8(v4, v3, type metadata accessor for ImageKeyFaceLoader.Context);
  v5 = sub_1D2873CA8();
  v6 = sub_1D28789F8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v1 + 280);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v37 = v9;
    *v8 = 136315394;
    v10 = *(v7 + 8);
    v11 = *(v1 + 280);
    if (v10)
    {
      v12 = *v11;
      v13 = v10;
    }

    else
    {
      v12 = 0;
      v13 = 0xE000000000000000;
    }

    sub_1D2870F68();
    sub_1D260E160(v11, type metadata accessor for ImageKeyFaceLoader.Context);
    v19 = sub_1D23D7C84(v12, v13, &v37);

    *(v8 + 4) = v19;
    *(v8 + 12) = 2080;
    type metadata accessor for PhotosPersonAsset(0);
    v20 = objc_opt_self();
    v21 = sub_1D2878068();
    v22 = [v20 uuidFromLocalIdentifier_];

    if (!v22)
    {
      __break(1u);
      return MEMORY[0x1EEE6DFA0](v23, v24, v25);
    }

    v26 = *(v1 + 296);
    v35 = *(v1 + 288);
    v36 = *(v1 + 312);
    v27 = *(v1 + 272);
    v28 = sub_1D28780A8();
    v30 = v29;

    sub_1D260E160(v27, type metadata accessor for ImageKeyFaceLoader.Context);
    v31 = sub_1D23D7C84(v28, v30, &v37);

    *(v8 + 14) = v31;
    _os_log_impl(&dword_1D226E000, v5, v6, "Start generating face %s-%s.", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D38A3520](v9, -1, -1);
    MEMORY[0x1D38A3520](v8, -1, -1);

    (*(v26 + 8))(v36, v35);
  }

  else
  {
    v14 = *(v1 + 312);
    v15 = *(v1 + 288);
    v16 = *(v1 + 296);
    v18 = *(v1 + 272);
    v17 = *(v1 + 280);

    sub_1D260E160(v17, type metadata accessor for ImageKeyFaceLoader.Context);
    (*(v16 + 8))(v14, v15);
    sub_1D260E160(v18, type metadata accessor for ImageKeyFaceLoader.Context);
  }

  *(v1 + 464) = *(*(v1 + 224) + 20);
  *(v1 + 376) = sub_1D2878558();
  v32 = sub_1D28784F8();
  v25 = v33;
  *(v1 + 384) = v32;
  *(v1 + 392) = v33;
  v23 = sub_1D25F9598;
  v24 = v32;

  return MEMORY[0x1EEE6DFA0](v23, v24, v25);
}

uint64_t sub_1D25F9598()
{
  v1 = *(v0 + 464);
  v2 = *(v0 + 144);
  *(v0 + 400) = *(*(v0 + 152) + 32);
  v3 = swift_task_alloc();
  *(v0 + 408) = v3;
  *v3 = v0;
  v3[1] = sub_1D25F9648;
  v4 = *(v0 + 216);

  return sub_1D24958FC(v4, v2 + v1);
}

uint64_t sub_1D25F9648()
{
  v1 = *v0;

  v2 = *(v1 + 392);
  v3 = *(v1 + 384);

  return MEMORY[0x1EEE6DFA0](sub_1D25F9768, v3, v2);
}

uint64_t sub_1D25F9768()
{

  v1 = *(v0 + 360);
  v2 = *(v0 + 368);

  return MEMORY[0x1EEE6DFA0](sub_1D25F97CC, v1, v2);
}

uint64_t sub_1D25F97CC()
{
  v28 = v0;
  v1 = v0[26];
  v2 = v0[23];
  v3 = v0[24];
  sub_1D22BD1D0(v0[27], v1, &qword_1EC6DC0F0, &qword_1D288B3A0);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_1D22BD238(v0[26], &qword_1EC6DC0F0, &qword_1D288B3A0);
    if (sub_1D28786D8())
    {
      v4 = v0[27];

      sub_1D2878538();
      sub_1D260E0B0(&unk_1ED89CFC0, MEMORY[0x1E69E8550], MEMORY[0x1E69E8558]);
      swift_allocError();
      sub_1D2877E68();
      swift_willThrow();
      sub_1D22BD238(v4, &qword_1EC6DC0F0, &qword_1D288B3A0);
      (*(v0[41] + 8))(v0[42], v0[40]);

      v5 = v0[1];

      return v5();
    }

    else
    {
      v9 = v0[42];
      v10 = v0[33];
      v11 = v0[29];
      v12 = v0[22];
      v14 = v0[18];
      v13 = v0[19];
      sub_1D25FAC8C();
      sub_1D23B3A78();

      [*(*(*(v13 + 48) + 48) + 16) removeAllObjects];
      v15 = *(v13 + 48);
      sub_1D260E0F8(v14, v10, type metadata accessor for ImageKeyFaceLoader.Context);
      v16 = (*(v11 + 80) + 16) & ~*(v11 + 80);
      v17 = swift_allocObject();
      sub_1D260E2B8(v10, v17 + v16, type metadata accessor for ImageKeyFaceLoader.Context);
      v18 = *(v15 + 32);
      v19 = *(v15 + 40);
      *(v15 + 32) = &unk_1D28982B8;
      *(v15 + 40) = v17;
      sub_1D2870F78();
      sub_1D22A576C(v18, v19);

      v26 = xmmword_1D2883070;
      v27 = MEMORY[0x1E69E7CC0];
      sub_1D2870F78();
      sub_1D23B272C(&v26, v12);

      v20 = swift_task_alloc();
      v0[54] = v20;
      v20[2] = v12;
      v20[3] = v13;
      v20[4] = v14;
      v20[5] = v9;
      v21 = sub_1D2878558();
      v0[55] = v21;
      v22 = swift_task_alloc();
      v0[56] = v22;
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA470, &unk_1D2884A40);
      *v22 = v0;
      v22[1] = sub_1D25FA368;
      v24 = v0[19];
      v25 = MEMORY[0x1E69E85E0];

      return MEMORY[0x1EEE6DE18](v0 + 2, &unk_1D28982C8, v20, sub_1D260EAFC, v24, v21, v25, v23);
    }
  }

  else
  {
    sub_1D260E2B8(v0[26], v0[25], type metadata accessor for FacePickerPersistentStorage.GeneratedPreviewArchive);
    v0[52] = sub_1D2878558();
    v7 = swift_task_alloc();
    v0[53] = v7;
    *v7 = v0;
    v7[1] = sub_1D25F9C9C;
    v8 = v0[50];

    return sub_1D2496DB0(v8);
  }
}

uint64_t sub_1D25F9C9C(char a1)
{
  *(*v1 + 468) = a1;

  v3 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D25F9DE0, v3, v2);
}

uint64_t sub_1D25F9DE0()
{

  v1 = *(v0 + 360);
  v2 = *(v0 + 368);

  return MEMORY[0x1EEE6DFA0](sub_1D25F9E44, v1, v2);
}

uint64_t sub_1D25F9E44()
{
  v28 = v0;
  if ((*(v0 + 468) & 1) == 0)
  {
    v3 = *(v0 + 200);
    v4 = *(v0 + 184);
    v5 = *(v0 + 136);
    sub_1D22BD238(*(v0 + 216), &qword_1EC6DC0F0, &qword_1D288B3A0);

    v6 = type metadata accessor for ArchivedGeneratedImage(0);
    v5[3] = v6;
    v5[4] = &off_1F4DC1D08;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v5);
    sub_1D260E2B8(v3, boxed_opaque_existential_1, type metadata accessor for PlaygroundImage);
    *(boxed_opaque_existential_1 + *(v6 + 20)) = *(v3 + *(v4 + 20));
    (*(*(v0 + 328) + 8))(*(v0 + 336), *(v0 + 320));

    v2 = *(v0 + 8);
    goto LABEL_5;
  }

  sub_1D260E160(*(v0 + 200), type metadata accessor for FacePickerPersistentStorage.GeneratedPreviewArchive);
  if (sub_1D28786D8())
  {
    v1 = *(v0 + 216);

    sub_1D2878538();
    sub_1D260E0B0(&unk_1ED89CFC0, MEMORY[0x1E69E8550], MEMORY[0x1E69E8558]);
    swift_allocError();
    sub_1D2877E68();
    swift_willThrow();
    sub_1D22BD238(v1, &qword_1EC6DC0F0, &qword_1D288B3A0);
    (*(*(v0 + 328) + 8))(*(v0 + 336), *(v0 + 320));

    v2 = *(v0 + 8);
LABEL_5:

    return v2();
  }

  v9 = *(v0 + 336);
  v10 = *(v0 + 264);
  v11 = *(v0 + 232);
  v12 = *(v0 + 176);
  v14 = *(v0 + 144);
  v13 = *(v0 + 152);
  sub_1D25FAC8C();
  sub_1D23B3A78();

  [*(*(*(v13 + 48) + 48) + 16) removeAllObjects];
  v15 = *(v13 + 48);
  sub_1D260E0F8(v14, v10, type metadata accessor for ImageKeyFaceLoader.Context);
  v16 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v17 = swift_allocObject();
  sub_1D260E2B8(v10, v17 + v16, type metadata accessor for ImageKeyFaceLoader.Context);
  v18 = *(v15 + 32);
  v19 = *(v15 + 40);
  *(v15 + 32) = &unk_1D28982B8;
  *(v15 + 40) = v17;
  sub_1D2870F78();
  sub_1D22A576C(v18, v19);

  v26 = xmmword_1D2883070;
  v27 = MEMORY[0x1E69E7CC0];
  sub_1D2870F78();
  sub_1D23B272C(&v26, v12);

  v20 = swift_task_alloc();
  *(v0 + 432) = v20;
  v20[2] = v12;
  v20[3] = v13;
  v20[4] = v14;
  v20[5] = v9;
  v21 = sub_1D2878558();
  *(v0 + 440) = v21;
  v22 = swift_task_alloc();
  *(v0 + 448) = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA470, &unk_1D2884A40);
  *v22 = v0;
  v22[1] = sub_1D25FA368;
  v24 = *(v0 + 152);
  v25 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6DE18](v0 + 16, &unk_1D28982C8, v20, sub_1D260EAFC, v24, v21, v25, v23);
}

uint64_t sub_1D25FA368()
{
  v2 = *v1;
  *(*v1 + 456) = v0;

  v3 = *(v2 + 368);
  v4 = *(v2 + 360);
  if (v0)
  {
    v5 = sub_1D25FAB28;
  }

  else
  {
    v5 = sub_1D25FA4D8;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

void sub_1D25FA4D8()
{
  v45 = v0;

  sub_1D22BD1D0(v0 + 16, v0 + 96, &qword_1EC6DA470, &unk_1D2884A40);
  if (*(v0 + 120))
  {
    v1 = *(v0 + 216);
    v3 = *(v0 + 168);
    v2 = *(v0 + 176);
    v4 = *(v0 + 160);
    v5 = *(v0 + 136);
    sub_1D22BD238(v0 + 16, &qword_1EC6DA470, &unk_1D2884A40);
    sub_1D22BD238(v1, &qword_1EC6DC0F0, &qword_1D288B3A0);
    sub_1D22D79FC((v0 + 96), v0 + 56);
    sub_1D22D79FC((v0 + 56), v5);
    (*(v3 + 8))(v2, v4);
    (*(*(v0 + 328) + 8))(*(v0 + 336), *(v0 + 320));

    v6 = *(v0 + 8);
  }

  else
  {
    sub_1D22BD238(v0 + 96, &qword_1EC6DA470, &unk_1D2884A40);
    if (sub_1D28786D8())
    {
      v7 = *(v0 + 216);
      v9 = *(v0 + 168);
      v8 = *(v0 + 176);
      v10 = *(v0 + 160);
      sub_1D2878538();
      sub_1D260E0B0(&unk_1ED89CFC0, MEMORY[0x1E69E8550], MEMORY[0x1E69E8558]);
      swift_allocError();
      sub_1D2877E68();
      swift_willThrow();
      sub_1D22BD238(v0 + 16, &qword_1EC6DA470, &unk_1D2884A40);
      sub_1D22BD238(v7, &qword_1EC6DC0F0, &qword_1D288B3A0);
      (*(v9 + 8))(v8, v10);
    }

    else
    {
      v12 = *(v0 + 248);
      v11 = *(v0 + 256);
      v13 = *(v0 + 144);
      sub_1D2872568();
      sub_1D260E0F8(v13, v11, type metadata accessor for ImageKeyFaceLoader.Context);
      sub_1D260E0F8(v13, v12, type metadata accessor for ImageKeyFaceLoader.Context);
      v14 = sub_1D2873CA8();
      v15 = sub_1D2878A18();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = *(v0 + 256);
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v44[0] = v18;
        *v17 = 136315394;
        v19 = *(v16 + 8);
        v20 = *(v0 + 256);
        if (v19)
        {
          v21 = *v20;
          v22 = v19;
        }

        else
        {
          v21 = 0;
          v22 = 0xE000000000000000;
        }

        sub_1D2870F68();
        sub_1D260E160(v20, type metadata accessor for ImageKeyFaceLoader.Context);
        v28 = sub_1D23D7C84(v21, v22, v44);

        *(v17 + 4) = v28;
        *(v17 + 12) = 2080;
        type metadata accessor for PhotosPersonAsset(0);
        v29 = objc_opt_self();
        v30 = sub_1D2878068();
        v31 = [v29 uuidFromLocalIdentifier_];

        if (!v31)
        {
          __break(1u);
          return;
        }

        v32 = *(v0 + 296);
        v42 = *(v0 + 288);
        v43 = *(v0 + 304);
        v33 = *(v0 + 248);
        v34 = sub_1D28780A8();
        v36 = v35;

        sub_1D260E160(v33, type metadata accessor for ImageKeyFaceLoader.Context);
        v37 = sub_1D23D7C84(v34, v36, v44);

        *(v17 + 14) = v37;
        _os_log_impl(&dword_1D226E000, v14, v15, "Failed to generate face or throw error %s-%s.", v17, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1D38A3520](v18, -1, -1);
        MEMORY[0x1D38A3520](v17, -1, -1);

        (*(v32 + 8))(v43, v42);
      }

      else
      {
        v24 = *(v0 + 296);
        v23 = *(v0 + 304);
        v25 = *(v0 + 288);
        v27 = *(v0 + 248);
        v26 = *(v0 + 256);

        sub_1D260E160(v26, type metadata accessor for ImageKeyFaceLoader.Context);
        (*(v24 + 8))(v23, v25);
        sub_1D260E160(v27, type metadata accessor for ImageKeyFaceLoader.Context);
      }

      v38 = *(v0 + 216);
      v39 = *(v0 + 168);
      v40 = *(v0 + 176);
      v41 = *(v0 + 160);
      sub_1D260EB04();
      swift_allocError();
      swift_willThrow();
      sub_1D22BD238(v0 + 16, &qword_1EC6DA470, &unk_1D2884A40);
      sub_1D22BD238(v38, &qword_1EC6DC0F0, &qword_1D288B3A0);
      (*(v39 + 8))(v40, v41);
    }

    (*(*(v0 + 328) + 8))(*(v0 + 336), *(v0 + 320));

    v6 = *(v0 + 8);
  }

  v6();
}

uint64_t sub_1D25FAB28()
{
  v1 = v0[27];
  v3 = v0[21];
  v2 = v0[22];
  v4 = v0[20];

  sub_1D22BD238(v1, &qword_1EC6DC0F0, &qword_1D288B3A0);
  (*(v3 + 8))(v2, v4);
  (*(v0[41] + 8))(v0[42], v0[40]);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1D25FAC8C()
{
  if (*(v0 + 48))
  {
    v1 = *(v0 + 48);
  }

  else
  {
    v2 = v0;
    if (*(v0 + 24))
    {
      v3 = *(v0 + 24);
    }

    else
    {
      type metadata accessor for ServicesFetcher();
      v3 = swift_allocObject();
      *(v3 + 16) = sub_1D25D6570(MEMORY[0x1E69E7CC0]);
    }

    _s7ManagerCMa(0);
    swift_allocObject();
    sub_1D2870F78();
    v1 = sub_1D239E2B0(v3, 2);
    *(v2 + 48) = v1;
    sub_1D2870F78();
  }

  sub_1D2870F78();
  return v1;
}

uint64_t ImageKeyFaceLoader.__allocating_init()()
{
  v0 = swift_allocObject();
  ImageKeyFaceLoader.init()();
  return v0;
}

uint64_t ImageKeyFaceLoader.init()()
{
  v1 = v0;
  *(v0 + 16) = 0;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0;
  *(v0 + 72) = xmmword_1D2898040;
  *(v0 + 88) = 10;
  type metadata accessor for ServicesFetcher();
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1D25D6570(MEMORY[0x1E69E7CC0]);
  *(v0 + 24) = v2;
  sub_1D2870F78();
  *(v0 + 40) = sub_1D23C6DDC();
  sub_1D23C6CA0();
  v3 = _SystemPhotoLibrary.photoLibrary.getter();

  type metadata accessor for FacePickerPersistentStorage();
  swift_allocObject();
  v4 = sub_1D2494120(v3);

  *(v1 + 32) = v4;
  return v1;
}

uint64_t sub_1D25FAE5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_1D2873CB8();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  sub_1D2878568();
  v4[6] = sub_1D2878558();
  v7 = sub_1D28784F8();
  v4[7] = v7;
  v4[8] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1D25FAF50, v7, v6);
}

uint64_t sub_1D25FAF50(uint64_t a1)
{
  sub_1D2872568();
  v2 = sub_1D2873CA8();
  v3 = sub_1D28789F8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D226E000, v2, v3, "Trying to reset face selection if diffusion model set changed.", v4, 2u);
    MEMORY[0x1D38A3520](v4, -1, -1);
  }

  v6 = v1[4];
  v5 = v1[5];
  v7 = v1[3];

  (*(v6 + 8))(v5, v7);
  v8 = swift_task_alloc();
  v1[9] = v8;
  *v8 = v1;
  v8[1] = sub_1D25FB088;

  return sub_1D2494390();
}

uint64_t sub_1D25FB088()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return MEMORY[0x1EEE6DFA0](sub_1D25FB1A8, v3, v2);
}

uint64_t sub_1D25FB1A8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D25FB210(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D22BDFF8;

  return sub_1D25FAE5C(a1, v4, v5, v6);
}

uint64_t sub_1D25FB2C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[41] = a4;
  v5[42] = a5;
  v6 = sub_1D2878538();
  v5[43] = v6;
  v5[44] = *(v6 - 8);
  v5[45] = swift_task_alloc();
  v7 = sub_1D2879328();
  v5[46] = v7;
  v5[47] = *(v7 - 8);
  v5[48] = swift_task_alloc();
  v8 = type metadata accessor for FacePickerPersistentStorage.GeneratedPreviewArchive(0);
  v5[49] = v8;
  v5[50] = *(v8 - 8);
  v5[51] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC0F0, &qword_1D288B3A0);
  v5[52] = swift_task_alloc();
  v5[53] = swift_task_alloc();
  v9 = sub_1D2872008();
  v5[54] = v9;
  v5[55] = *(v9 - 8);
  v5[56] = swift_task_alloc();
  v5[57] = type metadata accessor for GeneratedPreviewOptions(0);
  v5[58] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDDC0, &unk_1D2881BE0);
  v5[59] = swift_task_alloc();
  v5[60] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC0E8, &qword_1D288C6A0);
  v5[61] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEFE0, &qword_1D28983D0);
  v5[62] = v10;
  v5[63] = *(v10 - 8);
  v5[64] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEFE8, &qword_1D28983D8);
  v5[65] = v11;
  v5[66] = *(v11 - 8);
  v5[67] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC0E0, &unk_1D288B250);
  v5[68] = v12;
  v5[69] = *(v12 - 8);
  v5[70] = swift_task_alloc();
  v5[71] = swift_task_alloc();
  v13 = type metadata accessor for PhotosPersonAsset(0);
  v5[72] = v13;
  v5[73] = *(v13 - 8);
  v5[74] = swift_task_alloc();
  v5[75] = swift_task_alloc();
  v5[76] = swift_task_alloc();
  v5[77] = swift_task_alloc();
  v5[78] = swift_task_alloc();
  v5[79] = swift_task_alloc();
  v14 = sub_1D2873CB8();
  v5[80] = v14;
  v5[81] = *(v14 - 8);
  v5[82] = swift_task_alloc();
  v5[83] = swift_task_alloc();
  v5[84] = swift_task_alloc();
  v5[85] = swift_task_alloc();
  v5[86] = swift_task_alloc();
  v5[87] = swift_task_alloc();
  v15 = sub_1D2871798();
  v5[88] = v15;
  v5[89] = *(v15 - 8);
  v5[90] = swift_task_alloc();
  v5[91] = swift_task_alloc();
  v5[92] = swift_task_alloc();
  v5[93] = sub_1D2878568();
  v5[94] = sub_1D2878558();
  v17 = sub_1D28784F8();
  v5[95] = v17;
  v5[96] = v16;

  return MEMORY[0x1EEE6DFA0](sub_1D25FB8A4, v17, v16);
}

uint64_t sub_1D25FB8A4(uint64_t a1)
{
  sub_1D2871788();
  sub_1D2872568();
  v2 = sub_1D2873CA8();
  v3 = sub_1D28789F8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D226E000, v2, v3, "Start prewarming of faces.", v4, 2u);
    MEMORY[0x1D38A3520](v4, -1, -1);
  }

  v5 = v1[87];
  v6 = v1[81];
  v7 = v1[80];
  v8 = v1[41];

  v9 = *(v6 + 8);
  v1[97] = v9;
  v9(v5, v7);
  v1[98] = *(v8 + 40);
  v1[99] = sub_1D2878558();
  v11 = sub_1D28784F8();
  v1[100] = v11;
  v1[101] = v10;

  return MEMORY[0x1EEE6DFA0](sub_1D25FB9F8, v11, v10);
}

uint64_t sub_1D25FB9F8(uint64_t a1)
{
  v2 = v1[98];
  v3 = sub_1D2878558();
  v1[102] = v3;
  v4 = swift_task_alloc();
  v1[103] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = 0;
  *(v4 + 32) = 0xD000000000000021;
  *(v4 + 40) = 0x80000001D28BE4B0;
  v5 = swift_task_alloc();
  v1[104] = v5;
  *v5 = v1;
  v5[1] = sub_1D25FBB24;
  v6 = MEMORY[0x1E69E85E0];
  v7 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DDE0](v5, v3, v6, 0xD000000000000022, 0x80000001D28BAA50, sub_1D2564EB0, v4, v7);
}

uint64_t sub_1D25FBB24()
{
  v1 = *v0;

  v2 = *(v1 + 808);
  v3 = *(v1 + 800);

  return MEMORY[0x1EEE6DFA0](sub_1D25FBC84, v3, v2);
}

uint64_t sub_1D25FBC84()
{

  v1 = *(v0 + 768);
  v2 = *(v0 + 760);

  return MEMORY[0x1EEE6DFA0](sub_1D25FBCEC, v2, v1);
}

uint64_t sub_1D25FBCEC()
{
  v62 = v0;
  v1 = sub_1D2554D28();
  *(v0 + 840) = v1;
  v2 = v1[2];
  v3 = 5;
  if (v2 < 5)
  {
    v3 = v1[2];
  }

  *(v0 + 848) = v3;
  if (v2)
  {
    v4 = *(v0 + 584);
    v5 = *(v0 + 552);
    v59 = *(v0 + 504);
    v6 = *(v4 + 80);
    *(v0 + 1024) = v6;
    v7 = (v6 + 32) & ~v6;
    *(v0 + 856) = *(v4 + 72);
    v8 = sub_1D2870F68();
    *(v0 + 864) = 0;
    v9 = *(v0 + 632);
    v10 = *(v0 + 568);
    v11 = *(v0 + 560);
    v12 = *(v0 + 544);
    v13 = *(v0 + 512);
    v14 = *(v0 + 496);
    sub_1D260E0F8(v8 + v7, v9, type metadata accessor for PhotosPersonAsset);
    v15 = v9[3];
    v17 = *v9;
    v16 = v9[1];
    *(v0 + 48) = v9[2];
    *(v0 + 64) = v15;
    *(v0 + 16) = v17;
    *(v0 + 32) = v16;
    sub_1D22D63B0(v0 + 16, v0 + 80);
    sub_1D260E160(v9, type metadata accessor for PhotosPersonAsset);
    v18 = *(v0 + 32);
    v61[0] = *(v0 + 16);
    v61[1] = v18;
    v19 = *(v0 + 64);
    v61[2] = *(v0 + 48);
    v61[3] = v19;
    sub_1D255AA0C(v61, 1);
    sub_1D22D640C(v0 + 16);
    (*(v5 + 16))(v11, v10, v12);
    sub_1D22BB9D8(&qword_1EC6DEFF0, &qword_1EC6DC0E0, &unk_1D288B250, MEMORY[0x1E69E86A0]);
    sub_1D2879468();
    MEMORY[0x1D38A1E80](v14);
    sub_1D2878718();
    sub_1D2879418();
    (*(v59 + 8))(v13, v14);
    sub_1D2879458();
    v20 = sub_1D2878558();
    *(v0 + 872) = v20;
    if (v20)
    {
      swift_getObjectType();
      v21 = sub_1D28784F8();
      v23 = v22;
    }

    else
    {
      v21 = 0;
      v23 = 0;
    }

    *(v0 + 888) = v23;
    *(v0 + 880) = v21;

    return MEMORY[0x1EEE6DFA0](sub_1D25FC3E8, v21, v23);
  }

  else
  {

    if (sub_1D28786D8())
    {
      sub_1D2872568();
      v24 = sub_1D2873CA8();
      v25 = sub_1D28789F8();
      v26 = os_log_type_enabled(v24, v25);
      v27 = *(v0 + 776);
      v28 = *(v0 + 712);
      v29 = *(v0 + 680);
      v30 = *(v0 + 640);
      if (v26)
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_1D226E000, v24, v25, "Cancelled prewarming of faces.", v31, 2u);
        MEMORY[0x1D38A3520](v31, -1, -1);
      }

      v27(v29, v30);
      v32 = *(v28 + 8);
    }

    else
    {
      v33 = *(v0 + 736);
      v34 = *(v0 + 728);
      v35 = *(v0 + 712);
      v36 = *(v0 + 704);
      *(*(v0 + 328) + 64) = 1;
      sub_1D2872568();
      (*(v35 + 16))(v34, v33, v36);
      v37 = sub_1D2873CA8();
      v38 = sub_1D28789F8();
      v39 = os_log_type_enabled(v37, v38);
      v40 = *(v0 + 776);
      v41 = *(v0 + 728);
      if (v39)
      {
        v42 = *(v0 + 720);
        v43 = *(v0 + 712);
        v44 = *(v0 + 704);
        v58 = *(v0 + 640);
        v60 = *(v0 + 672);
        v57 = *(v0 + 776);
        v45 = swift_slowAlloc();
        *v45 = 134217984;
        sub_1D2871788();
        sub_1D2871718();
        v47 = v46;
        v48 = *(v43 + 8);
        v48(v42, v44);
        v48(v41, v44);
        *(v45 + 4) = v47;
        _os_log_impl(&dword_1D226E000, v37, v38, "Finished prewarming of faces (%f seconds).", v45, 0xCu);
        MEMORY[0x1D38A3520](v45, -1, -1);

        v57(v60, v58);
        v32 = v48;
      }

      else
      {
        v49 = *(v0 + 712);
        v50 = *(v0 + 704);
        v51 = *(v0 + 672);
        v52 = *(v0 + 640);

        v53 = *(v49 + 8);
        v53(v41, v50);
        v40(v51, v52);
        v32 = v53;
      }
    }

    v54 = *(v0 + 328);
    v32(*(v0 + 736), *(v0 + 704));
    *(v54 + 56) = 0;

    v55 = *(v0 + 8);

    return v55();
  }
}

uint64_t sub_1D25FC3E8()
{
  if (sub_1D2879418())
  {
    v1 = v0[109];
    v2 = sub_1D2879438();
    --*v3;
    v2(v0 + 23, 0);
    v0[112] = sub_1D2879428();
    sub_1D22BB9D8(&qword_1EC6DEFF8, &qword_1EC6DC0E8, &qword_1D288C6A0, MEMORY[0x1E69E8690]);
    v4 = swift_task_alloc();
    v0[113] = v4;
    *v4 = v0;
    v4[1] = sub_1D25FC5A0;
    v5 = v0[59];
    v6 = MEMORY[0x1E69E85E0];

    return MEMORY[0x1EEE6D8D0](v5, v1, v6);
  }

  else
  {
    v7 = v0[73];
    v8 = v0[72];
    v9 = v0[59];

    (*(v7 + 56))(v9, 1, 1, v8);
    v10 = v0[96];
    v11 = v0[95];

    return MEMORY[0x1EEE6DFA0](sub_1D25FC6D0, v11, v10);
  }
}

uint64_t sub_1D25FC5A0()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 888);
    v4 = *(v2 + 880);
    v5 = sub_1D25FD058;
  }

  else
  {
    (*(v2 + 896))();
    v3 = *(v2 + 888);
    v4 = *(v2 + 880);
    v5 = sub_1D25FCFF0;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D25FC6D0()
{
  v89 = v0;
  v1 = *(v0 + 472);
  if ((*(*(v0 + 584) + 48))(v1, 1, *(v0 + 576)) == 1)
  {
    (*(*(v0 + 528) + 8))(*(v0 + 536), *(v0 + 520));
  }

  else
  {
    sub_1D260E2B8(v1, *(v0 + 624), type metadata accessor for PhotosPersonAsset);
    v2 = sub_1D28786D8();
    v3 = *(v0 + 624);
    if ((v2 & 1) == 0)
    {
      v34 = objc_opt_self();
      *(v0 + 912) = v34;
      v35 = sub_1D2878068();
      v36 = [v34 uuidFromLocalIdentifier_];

      if (!v36)
      {
        __break(1u);
        return MEMORY[0x1EEE6DFA0](v37, v38, v39);
      }

      v40 = *(v0 + 624);
      v42 = *(v0 + 440);
      v41 = *(v0 + 448);
      v43 = *(v0 + 432);
      v44 = *(v0 + 336);
      v45 = sub_1D28780A8();
      v47 = v46;

      (*(v42 + 16))(v41, v44, v43);
      v48 = *(v40 + 32);
      if (v48)
      {
        v50 = *(*(v0 + 624) + 40);
        v49 = *(*(v0 + 624) + 48);
        *(v0 + 272) = v48;
        *(v0 + 280) = v50;
        *(v0 + 288) = v49;
        sub_1D2870F68();
        sub_1D2870F68();
        v48 = sub_1D24FBD9C();
        v52 = v51;
      }

      else
      {
        v52 = 0;
      }

      v78 = *(v0 + 456);
      v77 = *(v0 + 464);
      v80 = *(v0 + 440);
      v79 = *(v0 + 448);
      v81 = *(v0 + 432);
      *v77 = v45;
      v77[1] = v47;
      (*(v80 + 32))(v77 + *(v78 + 20), v79, v81);
      v82 = (v77 + *(v78 + 24));
      *v82 = v48;
      v82[1] = v52;
      *(v0 + 920) = sub_1D2878558();
      v67 = sub_1D28784F8();
      v39 = v83;
      *(v0 + 928) = v67;
      *(v0 + 936) = v83;
      v84 = sub_1D25FD070;
LABEL_26:
      v37 = v84;
      v38 = v67;

      return MEMORY[0x1EEE6DFA0](v37, v38, v39);
    }

    (*(*(v0 + 528) + 8))(*(v0 + 536), *(v0 + 520));
    sub_1D260E160(v3, type metadata accessor for PhotosPersonAsset);
  }

  v4 = *(v0 + 568);
  v5 = *(v0 + 552);
  v6 = *(v0 + 544);
  v7 = sub_1D28786D8();
  (*(v5 + 8))(v4, v6);
  if ((v7 & 1) == 0)
  {
    v8 = *(v0 + 864) + 1;
    if (v8 != *(v0 + 848))
    {
      *(v0 + 864) = v8;
      v53 = *(v0 + 632);
      v54 = *(v0 + 568);
      v55 = *(v0 + 560);
      v56 = *(v0 + 552);
      v57 = *(v0 + 544);
      v58 = *(v0 + 504);
      v59 = *(v0 + 512);
      v60 = *(v0 + 496);
      sub_1D260E0F8(*(v0 + 840) + ((*(v0 + 1024) + 32) & ~*(v0 + 1024)) + *(v0 + 856) * v8, v53, type metadata accessor for PhotosPersonAsset);
      v61 = v53[3];
      v63 = *v53;
      v62 = v53[1];
      *(v0 + 48) = v53[2];
      *(v0 + 64) = v61;
      *(v0 + 16) = v63;
      *(v0 + 32) = v62;
      sub_1D22D63B0(v0 + 16, v0 + 80);
      sub_1D260E160(v53, type metadata accessor for PhotosPersonAsset);
      v64 = *(v0 + 32);
      v88[0] = *(v0 + 16);
      v88[1] = v64;
      v65 = *(v0 + 64);
      v88[2] = *(v0 + 48);
      v88[3] = v65;
      sub_1D255AA0C(v88, 1);
      sub_1D22D640C(v0 + 16);
      (*(v56 + 16))(v55, v54, v57);
      sub_1D22BB9D8(&qword_1EC6DEFF0, &qword_1EC6DC0E0, &unk_1D288B250, MEMORY[0x1E69E86A0]);
      sub_1D2879468();
      MEMORY[0x1D38A1E80](v60);
      sub_1D2878718();
      sub_1D2879418();
      (*(v58 + 8))(v59, v60);
      sub_1D2879458();
      v66 = sub_1D2878558();
      *(v0 + 872) = v66;
      if (v66)
      {
        swift_getObjectType();
        v67 = sub_1D28784F8();
        v39 = v68;
      }

      else
      {
        v67 = 0;
        v39 = 0;
      }

      *(v0 + 888) = v39;
      *(v0 + 880) = v67;
      v84 = sub_1D25FC3E8;
      goto LABEL_26;
    }
  }

  if (sub_1D28786D8())
  {
    sub_1D2872568();
    v9 = sub_1D2873CA8();
    v10 = sub_1D28789F8();
    v11 = os_log_type_enabled(v9, v10);
    v12 = *(v0 + 776);
    v13 = *(v0 + 712);
    v14 = *(v0 + 680);
    v15 = *(v0 + 640);
    if (v11)
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1D226E000, v9, v10, "Cancelled prewarming of faces.", v16, 2u);
      MEMORY[0x1D38A3520](v16, -1, -1);
    }

    v12(v14, v15);
    v17 = *(v13 + 8);
  }

  else
  {
    v18 = *(v0 + 736);
    v19 = *(v0 + 728);
    v20 = *(v0 + 712);
    v21 = *(v0 + 704);
    *(*(v0 + 328) + 64) = 1;
    sub_1D2872568();
    (*(v20 + 16))(v19, v18, v21);
    v22 = sub_1D2873CA8();
    v23 = sub_1D28789F8();
    v24 = os_log_type_enabled(v22, v23);
    v25 = *(v0 + 776);
    v26 = *(v0 + 728);
    if (v24)
    {
      v27 = *(v0 + 720);
      v28 = *(v0 + 712);
      v29 = *(v0 + 704);
      v86 = *(v0 + 640);
      v87 = *(v0 + 672);
      v85 = *(v0 + 776);
      v30 = swift_slowAlloc();
      *v30 = 134217984;
      sub_1D2871788();
      sub_1D2871718();
      v32 = v31;
      v33 = *(v28 + 8);
      v33(v27, v29);
      v33(v26, v29);
      *(v30 + 4) = v32;
      _os_log_impl(&dword_1D226E000, v22, v23, "Finished prewarming of faces (%f seconds).", v30, 0xCu);
      MEMORY[0x1D38A3520](v30, -1, -1);

      v85(v87, v86);
      v17 = v33;
    }

    else
    {
      v69 = *(v0 + 712);
      v70 = *(v0 + 704);
      v71 = *(v0 + 672);
      v72 = *(v0 + 640);

      v73 = *(v69 + 8);
      v73(v26, v70);
      v25(v71, v72);
      v17 = v73;
    }
  }

  v74 = *(v0 + 328);
  v17(*(v0 + 736), *(v0 + 704));
  *(v74 + 56) = 0;

  v75 = *(v0 + 8);

  return v75();
}

uint64_t sub_1D25FCFF0()
{

  v1 = *(v0 + 768);
  v2 = *(v0 + 760);

  return MEMORY[0x1EEE6DFA0](sub_1D25FC6D0, v2, v1);
}

uint64_t sub_1D25FD070()
{
  v0[118] = *(v0[41] + 32);
  v1 = swift_task_alloc();
  v0[119] = v1;
  *v1 = v0;
  v1[1] = sub_1D25FD114;
  v2 = v0[58];
  v3 = v0[53];

  return sub_1D24958FC(v3, v2);
}

uint64_t sub_1D25FD114()
{
  v1 = *v0;

  v2 = *(v1 + 936);
  v3 = *(v1 + 928);

  return MEMORY[0x1EEE6DFA0](sub_1D25FD234, v3, v2);
}

uint64_t sub_1D25FD234()
{

  v1 = *(v0 + 768);
  v2 = *(v0 + 760);

  return MEMORY[0x1EEE6DFA0](sub_1D25FD29C, v2, v1);
}

uint64_t sub_1D25FD29C()
{
  v72 = v0;
  v1 = *(v0 + 416);
  v2 = *(v0 + 392);
  v3 = *(v0 + 400);
  sub_1D22BD1D0(*(v0 + 424), v1, &qword_1EC6DC0F0, &qword_1D288B3A0);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_1D22BD238(*(v0 + 416), &qword_1EC6DC0F0, &qword_1D288B3A0);
    if (sub_1D28786D8())
    {
      v4 = *(v0 + 624);
      v5 = *(v0 + 536);
      v6 = *(v0 + 528);
      v7 = *(v0 + 520);
      v8 = *(v0 + 464);
      sub_1D22BD238(*(v0 + 424), &qword_1EC6DC0F0, &qword_1D288B3A0);
      sub_1D260E160(v8, type metadata accessor for GeneratedPreviewOptions);
      (*(v6 + 8))(v5, v7);
      sub_1D260E160(v4, type metadata accessor for PhotosPersonAsset);
      v9 = *(v0 + 568);
      v10 = *(v0 + 552);
      v11 = *(v0 + 544);
      LOBYTE(v7) = sub_1D28786D8();
      (*(v10 + 8))(v9, v11);
      if ((v7 & 1) != 0 || (v12 = *(v0 + 864) + 1, v12 == *(v0 + 848)))
      {

        if (sub_1D28786D8())
        {
          sub_1D2872568();
          v13 = sub_1D2873CA8();
          v14 = sub_1D28789F8();
          v15 = os_log_type_enabled(v13, v14);
          v16 = *(v0 + 776);
          v17 = *(v0 + 712);
          v18 = *(v0 + 680);
          v19 = *(v0 + 640);
          if (v15)
          {
            v20 = swift_slowAlloc();
            *v20 = 0;
            _os_log_impl(&dword_1D226E000, v13, v14, "Cancelled prewarming of faces.", v20, 2u);
            MEMORY[0x1D38A3520](v20, -1, -1);
          }

          v16(v18, v19);
          v21 = *(v17 + 8);
        }

        else
        {
          v28 = *(v0 + 736);
          v29 = *(v0 + 728);
          v30 = *(v0 + 712);
          v31 = *(v0 + 704);
          *(*(v0 + 328) + 64) = 1;
          sub_1D2872568();
          (*(v30 + 16))(v29, v28, v31);
          v32 = sub_1D2873CA8();
          v33 = sub_1D28789F8();
          v34 = os_log_type_enabled(v32, v33);
          v35 = *(v0 + 776);
          v36 = *(v0 + 728);
          if (v34)
          {
            v37 = *(v0 + 720);
            v38 = *(v0 + 712);
            v39 = *(v0 + 704);
            v69 = *(v0 + 640);
            v70 = *(v0 + 672);
            v68 = *(v0 + 776);
            v40 = swift_slowAlloc();
            *v40 = 134217984;
            sub_1D2871788();
            sub_1D2871718();
            v42 = v41;
            v43 = *(v38 + 8);
            v43(v37, v39);
            v43(v36, v39);
            *(v40 + 4) = v42;
            _os_log_impl(&dword_1D226E000, v32, v33, "Finished prewarming of faces (%f seconds).", v40, 0xCu);
            MEMORY[0x1D38A3520](v40, -1, -1);

            v68(v70, v69);
            v21 = v43;
          }

          else
          {
            v61 = *(v0 + 712);
            v62 = *(v0 + 704);
            v63 = *(v0 + 672);
            v64 = *(v0 + 640);

            v65 = *(v61 + 8);
            v65(v36, v62);
            v35(v63, v64);
            v21 = v65;
          }
        }

        v66 = *(v0 + 328);
        v21(*(v0 + 736), *(v0 + 704));
        *(v66 + 56) = 0;

        v67 = *(v0 + 8);

        return v67();
      }

      else
      {
        *(v0 + 864) = v12;
        v44 = *(v0 + 632);
        v45 = *(v0 + 568);
        v46 = *(v0 + 560);
        v47 = *(v0 + 552);
        v48 = *(v0 + 544);
        v49 = *(v0 + 504);
        v50 = *(v0 + 512);
        v51 = *(v0 + 496);
        sub_1D260E0F8(*(v0 + 840) + ((*(v0 + 1024) + 32) & ~*(v0 + 1024)) + *(v0 + 856) * v12, v44, type metadata accessor for PhotosPersonAsset);
        v52 = v44[3];
        v54 = *v44;
        v53 = v44[1];
        *(v0 + 48) = v44[2];
        *(v0 + 64) = v52;
        *(v0 + 16) = v54;
        *(v0 + 32) = v53;
        sub_1D22D63B0(v0 + 16, v0 + 80);
        sub_1D260E160(v44, type metadata accessor for PhotosPersonAsset);
        v55 = *(v0 + 32);
        v71[0] = *(v0 + 16);
        v71[1] = v55;
        v56 = *(v0 + 64);
        v71[2] = *(v0 + 48);
        v71[3] = v56;
        sub_1D255AA0C(v71, 1);
        sub_1D22D640C(v0 + 16);
        (*(v47 + 16))(v46, v45, v48);
        sub_1D22BB9D8(&qword_1EC6DEFF0, &qword_1EC6DC0E0, &unk_1D288B250, MEMORY[0x1E69E86A0]);
        sub_1D2879468();
        MEMORY[0x1D38A1E80](v51);
        sub_1D2878718();
        sub_1D2879418();
        (*(v49 + 8))(v50, v51);
        sub_1D2879458();
        v57 = sub_1D2878558();
        *(v0 + 872) = v57;
        if (v57)
        {
          swift_getObjectType();
          v58 = sub_1D28784F8();
          v60 = v59;
        }

        else
        {
          v58 = 0;
          v60 = 0;
        }

        *(v0 + 888) = v60;
        *(v0 + 880) = v58;

        return MEMORY[0x1EEE6DFA0](sub_1D25FC3E8, v58, v60);
      }
    }

    else
    {
      v25 = swift_task_alloc();
      *(v0 + 1000) = v25;
      *v25 = v0;
      v25[1] = sub_1D25FF340;
      v26 = *(v0 + 624);
      v27 = *(v0 + 464);

      return sub_1D25F8358(v0 + 144, v26, v27);
    }
  }

  else
  {
    sub_1D260E2B8(*(v0 + 416), *(v0 + 408), type metadata accessor for FacePickerPersistentStorage.GeneratedPreviewArchive);
    *(v0 + 960) = sub_1D2878558();
    v22 = swift_task_alloc();
    *(v0 + 968) = v22;
    *v22 = v0;
    v22[1] = sub_1D25FDBC4;
    v23 = *(v0 + 944);

    return sub_1D2496DB0(v23);
  }
}