uint64_t MusicKitTesseractResponse.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB29C0, &qword_22F77C018);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F237244();
  sub_22F742200();
  if (!v2)
  {
    sub_22F237298();
    sub_22F741F10();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t MusicKitTesseractSong.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t MusicKitTesseractSong.attributes.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[12];
  v3 = v1[14];
  v35 = v1[13];
  v36 = v3;
  v4 = v1[14];
  v37 = v1[15];
  v5 = v1[8];
  v6 = v1[10];
  v31 = v1[9];
  v7 = v31;
  v32 = v6;
  v8 = v1[10];
  v9 = v1[12];
  v33 = v1[11];
  v10 = v33;
  v34 = v9;
  v11 = v1[4];
  v12 = v1[6];
  v27 = v1[5];
  v13 = v27;
  v28 = v12;
  v14 = v1[6];
  v15 = v1[8];
  v29 = v1[7];
  v16 = v29;
  v30 = v15;
  v17 = v1[2];
  v24[0] = v1[1];
  v24[1] = v17;
  v18 = v1[4];
  v20 = v1[1];
  v19 = v1[2];
  v25 = v1[3];
  v21 = v25;
  v26 = v18;
  a1[12] = v35;
  a1[13] = v4;
  a1[14] = v1[15];
  a1[8] = v7;
  a1[9] = v8;
  a1[10] = v10;
  a1[11] = v2;
  a1[4] = v13;
  a1[5] = v14;
  a1[6] = v16;
  a1[7] = v5;
  *a1 = v20;
  a1[1] = v19;
  a1[2] = v21;
  a1[3] = v11;
  return sub_22F2370A8(v24, &v23);
}

uint64_t MusicKitTesseractSong.relationships.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[32];
  v3 = v1[33];
  v4 = v1[34];
  v5 = v1[35];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_22F18C1D8(v2, v3, v4, v5);
}

uint64_t MusicKitTesseractSong.meta.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 288);
  *a1 = v2;
  return sub_22F1007AC(v2);
}

uint64_t sub_22F236B80(uint64_t a1)
{
  v2 = sub_22F2372EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F236BBC(uint64_t a1)
{
  v2 = sub_22F2372EC();

  return MEMORY[0x2821FE720](a1, v2);
}

void MusicKitTesseractSong.init(from:)(void *a1@<X0>, void *a2@<X8>)
{
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB29C8, &qword_22F77C020);
  MEMORY[0x28223BE20](v77);
  v6 = &v14 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F2372EC();
  sub_22F742200();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    v20 = a2;
    LOBYTE(v22) = 0;
    v7 = v77;
    v18 = sub_22F741EB0();
    v19 = v8;
    v46 = 1;
    sub_22F18C3F0();
    sub_22F741EA0();
    v74 = v59;
    v75 = v60;
    v76 = v61;
    v70 = v55;
    v71 = v56;
    v72 = v57;
    v73 = v58;
    v66 = v51;
    v67 = v52;
    v68 = v53;
    v69 = v54;
    v62 = v47;
    v63 = v48;
    v64 = v49;
    v65 = v50;
    v21[0] = 2;
    sub_22F18C444();
    sub_22F741EA0();
    v17 = v23;
    v15 = v22;
    v14 = *(&v24 + 1);
    v16 = v24;
    v44 = 3;
    sub_22F18C498();
    sub_22F741EA0();
    MEMORY[8](v6, v7);
    v77 = v45;
    v10 = v18;
    v9 = v19;
    *v21 = v18;
    *&v21[8] = v19;
    *&v21[208] = v74;
    *&v21[224] = v75;
    *&v21[240] = v76;
    *&v21[144] = v70;
    *&v21[160] = v71;
    *&v21[192] = v73;
    *&v21[176] = v72;
    *&v21[80] = v66;
    *&v21[96] = v67;
    *&v21[128] = v69;
    *&v21[112] = v68;
    *&v21[16] = v62;
    *&v21[32] = v63;
    *&v21[64] = v65;
    *&v21[48] = v64;
    v11 = v15;
    v12 = v16;
    *&v21[256] = v15;
    *&v21[264] = v17;
    v13 = v14;
    *&v21[272] = v16;
    *&v21[280] = v14;
    *&v21[288] = v45;
    memcpy(v20, v21, 0x128uLL);
    sub_22F236530(v21, &v22);
    __swift_destroy_boxed_opaque_existential_0(a1);
    v22 = v10;
    v23 = v9;
    v36 = v74;
    v37 = v75;
    v38 = v76;
    v32 = v70;
    v33 = v71;
    v34 = v72;
    v35 = v73;
    v28 = v66;
    v29 = v67;
    v30 = v68;
    v31 = v69;
    v24 = v62;
    v25 = v63;
    v26 = v64;
    v27 = v65;
    v39 = v11;
    v40 = v17;
    v41 = v12;
    v42 = v13;
    v43 = v77;
    sub_22F2373A8(&v22);
  }
}

uint64_t sub_22F2370A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1B88, &qword_22F77C000);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_22F237118()
{
  result = qword_2810AA230;
  if (!qword_2810AA230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AA230);
  }

  return result;
}

unint64_t sub_22F23716C()
{
  result = qword_2810A9318;
  if (!qword_2810A9318)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAB29B8, &qword_22F77C010);
    sub_22F2371F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810A9318);
  }

  return result;
}

unint64_t sub_22F2371F0()
{
  result = qword_2810AA758;
  if (!qword_2810AA758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AA758);
  }

  return result;
}

unint64_t sub_22F237244()
{
  result = qword_2810AA210;
  if (!qword_2810AA210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AA210);
  }

  return result;
}

unint64_t sub_22F237298()
{
  result = qword_2810AA218;
  if (!qword_2810AA218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AA218);
  }

  return result;
}

unint64_t sub_22F2372EC()
{
  result = qword_27DAB29D0;
  if (!qword_27DAB29D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB29D0);
  }

  return result;
}

uint64_t sub_22F237340(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1B88, &qword_22F77C000);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22F23743C()
{
  result = qword_27DAB29D8;
  if (!qword_27DAB29D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB29D8);
  }

  return result;
}

unint64_t sub_22F237494()
{
  result = qword_27DAB29E0;
  if (!qword_27DAB29E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB29E0);
  }

  return result;
}

unint64_t sub_22F2374EC()
{
  result = qword_27DAB29E8;
  if (!qword_27DAB29E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB29E8);
  }

  return result;
}

unint64_t sub_22F237544()
{
  result = qword_27DAB29F0;
  if (!qword_27DAB29F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB29F0);
  }

  return result;
}

unint64_t sub_22F23759C()
{
  result = qword_27DAB29F8;
  if (!qword_27DAB29F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB29F8);
  }

  return result;
}

unint64_t sub_22F2375F4()
{
  result = qword_2810AA200;
  if (!qword_2810AA200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AA200);
  }

  return result;
}

unint64_t sub_22F23764C()
{
  result = qword_2810AA208;
  if (!qword_2810AA208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AA208);
  }

  return result;
}

unint64_t sub_22F2376A4()
{
  result = qword_2810AA220;
  if (!qword_2810AA220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AA220);
  }

  return result;
}

unint64_t sub_22F2376FC()
{
  result = qword_2810AA228;
  if (!qword_2810AA228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AA228);
  }

  return result;
}

void *sub_22F237750(uint64_t a1)
{
  v10 = a1;
  v9 = sub_22F741640();
  v2 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22F741630();
  MEMORY[0x28223BE20](v5);
  v6 = sub_22F740C00();
  MEMORY[0x28223BE20](v6 - 8);
  swift_defaultActor_initialize();
  sub_22F120634(0, &qword_2810A90E8, 0x277D85C78);
  sub_22F740BE0();
  v11 = MEMORY[0x277D84F90];
  sub_22F23EC54(&unk_2810A90F0, 255, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB29A8, &unk_22F77BFD0);
  sub_22F23EC9C();
  sub_22F741970();
  (*(v2 + 104))(v4, *MEMORY[0x277D85260], v9);
  v1[16] = sub_22F741660();
  v1[17] = 0;
  v1[14] = 0x407F400000000000;
  v1[15] = v10;
  return v1;
}

uint64_t sub_22F2379C0()
{
  *(v1 + 24) = v0;
  *(v1 + 32) = *v0;
  return MEMORY[0x2822009F8](sub_22F237A08, v0, 0);
}

uint64_t sub_22F237A08()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2A08, &qword_22F77C690);
  v5 = sub_22F23EC54(&qword_27DAB2A00, v4, type metadata accessor for PublicEventGeoQuery, &unk_22F77C668);
  v6 = swift_task_alloc();
  v0[5] = v6;
  *(v6 + 16) = v1;
  *(v6 + 24) = v2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2A68, &unk_22F77C6D8);
  v8 = swift_task_alloc();
  v0[6] = v8;
  *v8 = v0;
  v8[1] = sub_22F237B64;

  return MEMORY[0x282200740](v0 + 2, v3, v7, v1, v5, &unk_22F77C6D0, v6, v3);
}

uint64_t sub_22F237B64()
{
  v2 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = *(v2 + 24);
    v4 = sub_22F237CA8;
  }

  else
  {
    v5 = *(v2 + 24);

    v4 = sub_22F237C8C;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22F237CA8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22F237D0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a2;
  v3[14] = a3;
  v3[12] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB07C0, &qword_22F77A4F0);
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2A70, &qword_22F77C6E8);
  v3[17] = v5;
  v3[18] = *(v5 - 8);
  v3[19] = swift_task_alloc();
  v3[20] = *(type metadata accessor for PublicEventTimeAndLocation(0) - 8);
  v3[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22F237E7C, a3, 0);
}

uint64_t sub_22F237E7C()
{
  v1 = *(v0 + 112);
  v2 = *(v1 + 120);
  v42 = v1;
  v43 = *(v2 + 16);
  if (*(v1 + 136) < v43)
  {
    v40 = *(v0 + 160);
    v41 = *(v1 + 120);
    do
    {
      v4 = [objc_opt_self() sharedService];
      if (!v4)
      {
LABEL_28:
        __break(1u);
        return MEMORY[0x2822004E8](v4, v5, v6, v7, v8);
      }

      v9 = v4;
      v10 = [v4 maxParametersCountForSpatialEventLookup];

      v11 = *(v42 + 136);
      if (v43 < v11)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v12 = *(v42 + 136);
      v13 = MEMORY[0x277D84F90];
      do
      {
        if (v43 == v12)
        {
          break;
        }

        if (v11 < 0)
        {
          __break(1u);
LABEL_26:
          __break(1u);
          goto LABEL_27;
        }

        if (v12 >= *(v2 + 16))
        {
          goto LABEL_26;
        }

        v14 = (*(v40 + 80) + 32) & ~*(v40 + 80);
        v15 = *(v40 + 72);
        sub_22F23E4B8(v2 + v14 + v15 * v12, *(v0 + 168), type metadata accessor for PublicEventTimeAndLocation);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_22F13ED90(0, v13[2] + 1, 1, v13);
        }

        v17 = v13[2];
        v16 = v13[3];
        v18 = v17 + 1;
        if (v17 >= v16 >> 1)
        {
          v13 = sub_22F13ED90((v16 > 1), v17 + 1, 1, v13);
        }

        v19 = *(v0 + 168);
        v13[2] = v18;
        v4 = sub_22F23E520(v19, v13 + v14 + v17 * v15, type metadata accessor for PublicEventTimeAndLocation);
        v2 = v41;
        *(v42 + 136) = ++v12;
      }

      while (v18 < v10);
      v21 = *(v0 + 120);
      v20 = *(v0 + 128);
      v22 = *(v0 + 112);
      v23 = sub_22F23E588(v13, 500.0);

      v24 = sub_22F741320();
      v25 = *(v24 - 8);
      (*(v25 + 56))(v20, 1, 1, v24);
      v26 = swift_allocObject();
      v26[2] = 0;
      v27 = v26 + 2;
      v26[3] = 0;
      v26[4] = v22;
      v26[5] = v23;
      sub_22F13BA9C(v20, v21, &qword_27DAB07C0, &qword_22F77A4F0);
      LODWORD(v20) = (*(v25 + 48))(v21, 1, v24);

      v28 = *(v0 + 120);
      if (v20 == 1)
      {
        sub_22F120ADC(*(v0 + 120), &qword_27DAB07C0, &qword_22F77A4F0);
        if (!*v27)
        {
          goto LABEL_19;
        }
      }

      else
      {
        sub_22F741310();
        (*(v25 + 8))(v28, v24);
        if (!*v27)
        {
LABEL_19:
          v29 = 0;
          v31 = 0;
          goto LABEL_20;
        }
      }

      swift_getObjectType();
      swift_unknownObjectRetain();
      v29 = sub_22F7412D0();
      v31 = v30;
      swift_unknownObjectRelease();
LABEL_20:
      v32 = **(v0 + 104);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2A08, &qword_22F77C690);
      v33 = v31 | v29;
      if (v31 | v29)
      {
        v33 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v29;
        *(v0 + 40) = v31;
      }

      v3 = *(v0 + 128);
      *(v0 + 48) = 1;
      *(v0 + 56) = v33;
      *(v0 + 64) = v32;
      swift_task_create();

      sub_22F120ADC(v3, &qword_27DAB07C0, &qword_22F77A4F0);
    }

    while (*(v42 + 136) < v43);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2A08, &qword_22F77C690);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1518, &qword_22F77A7E0);
  sub_22F741330();
  v35 = sub_22F23EC54(&qword_27DAB2A00, v34, type metadata accessor for PublicEventGeoQuery, &unk_22F77C668);
  v36 = MEMORY[0x277D84F98];
  *(v0 + 176) = v35;
  *(v0 + 184) = v36;
  v37 = *(v0 + 112);
  v38 = swift_task_alloc();
  *(v0 + 192) = v38;
  *v38 = v0;
  v38[1] = sub_22F2383B4;
  v7 = *(v0 + 136);
  v4 = (v0 + 72);
  v8 = v0 + 80;
  v5 = v37;
  v6 = v35;

  return MEMORY[0x2822004E8](v4, v5, v6, v7, v8);
}

uint64_t sub_22F2383B4()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 112);

    v4 = sub_22F238814;
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 112);
    v4 = sub_22F2384D8;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

uint64_t sub_22F2384D8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = (v5 + 9);
  v7 = v5[9];
  if (v7)
  {
    v33 = *(v7 + 16);
    if (v33)
    {
      v8 = 0;
      v9 = v5[23];
      v10 = (v7 + 48);
      while (1)
      {
        if (v8 >= *(v7 + 16))
        {
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
          return MEMORY[0x2822004E8](a1, a2, a3, a4, a5);
        }

        v12 = *(v10 - 2);
        v11 = *(v10 - 1);
        v13 = *v10;
        swift_bridgeObjectRetain_n();

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v6 + 16) = v9;
        a1 = sub_22F1229E8(v12, v11);
        v15 = v9[2];
        v16 = (a2 & 1) == 0;
        v17 = __OFADD__(v15, v16);
        v18 = v15 + v16;
        if (v17)
        {
          goto LABEL_29;
        }

        v19 = a2;
        if (v9[3] < v18)
        {
          break;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_12;
        }

        v24 = a1;
        sub_22F135FC0();
        a1 = v24;
        v9 = *(v6 + 16);
        if (v19)
        {
LABEL_4:
          *(v9[7] + 8 * a1) = v13;

          goto LABEL_5;
        }

LABEL_13:
        v9[(a1 >> 6) + 8] |= 1 << a1;
        v21 = (v9[6] + 16 * a1);
        *v21 = v12;
        v21[1] = v11;
        *(v9[7] + 8 * a1) = v13;

        v22 = v9[2];
        v17 = __OFADD__(v22, 1);
        v23 = v22 + 1;
        if (v17)
        {
          goto LABEL_30;
        }

        v9[2] = v23;
LABEL_5:
        ++v8;
        v10 += 3;
        if (v33 == v8)
        {

          v5 = v32;
          v32[23] = v9;
          goto LABEL_22;
        }
      }

      sub_22F1289EC(v18, isUniquelyReferenced_nonNull_native);
      a1 = sub_22F1229E8(v12, v11);
      if ((v19 & 1) != (v20 & 1))
      {

        return sub_22F7420C0();
      }

LABEL_12:
      v9 = *(v6 + 16);
      if (v19)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }

LABEL_22:
    v29 = v5[22];
    v30 = v5[14];
    v31 = swift_task_alloc();
    v5[24] = v31;
    *v31 = v5;
    v31[1] = sub_22F2383B4;
    a4 = v5[17];
    a5 = v5 + 10;
    a1 = v6;
    a2 = v30;
    a3 = v29;

    return MEMORY[0x2822004E8](a1, a2, a3, a4, a5);
  }

  else
  {
    v25 = v5[23];
    v26 = v5[12];
    (*(v5[18] + 8))(v5[19], v5[17], a3, a4, a5);
    *v26 = v25;

    v27 = v5[1];

    return v27();
  }
}

uint64_t sub_22F238814()
{
  (*(v0[18] + 8))(v0[19], v0[17]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_22F2388C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v7 = swift_task_alloc();
  *(v5 + 24) = v7;
  *v7 = v5;
  v7[1] = sub_22F238964;

  return sub_22F238AD4(a5);
}

uint64_t sub_22F238964(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 32) = a1;

    return MEMORY[0x2822009F8](sub_22F238AB0, 0, 0);
  }
}

uint64_t sub_22F238AD4(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v2[5] = *v1;
  return MEMORY[0x2822009F8](sub_22F238B1C, v1, 0);
}

uint64_t sub_22F238B1C(uint64_t a1, uint64_t a2)
{
  v3 = v2[4];
  v4 = v2[5];
  v5 = v2[3];
  v6 = sub_22F23EC54(&qword_27DAB2A00, a2, type metadata accessor for PublicEventGeoQuery, &unk_22F77C668);
  v7 = swift_task_alloc();
  v2[6] = v7;
  v7[2] = v5;
  v7[3] = v3;
  v7[4] = v4;
  v8 = swift_task_alloc();
  v2[7] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2A08, &qword_22F77C690);
  *v8 = v2;
  v8[1] = sub_22F238C6C;

  return MEMORY[0x2822008A0](v2 + 2, v3, v6, 0xD000000000000013, 0x800000022F7928B0, sub_22F23E1A8, v7, v9);
}

uint64_t sub_22F238C6C()
{
  v2 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = *(v2 + 32);
    v4 = sub_22F238D94;
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = sub_22F23ED78;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22F238D94()
{

  v1 = *(v0 + 8);

  return v1();
}

id sub_22F238DF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2A10, &unk_22F77C698);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v27 = &v23 - v10;
  v11 = *(a2 + 16);
  if (v11)
  {
    v23 = v9;
    v24 = a1;
    v25 = v7;
    v26 = a3;
    sub_22F120B48();
    v12 = sub_22F120B44();
    v13 = aBlock[0];

    result = sub_22F0FF590(v13);
    if (v12 != v11)
    {
      __break(1u);
      goto LABEL_9;
    }

    v7 = v25;
    a3 = v26;
    v9 = v23;
    a1 = v24;
  }

  result = [objc_opt_self() sharedService];
  if (!result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v15 = result;
  sub_22F120634(0, &qword_27DAB2A18, 0x277D0ED58);
  v16 = sub_22F741160();

  v17 = [v15 ticketForSpatialEventLookupParameters:v16 traits:0];

  if (v17)
  {
    v18 = v27;
    (*(v8 + 16))(v27, a1, v7);
    v19 = (*(v8 + 80) + 16) & ~*(v8 + 80);
    v20 = (v9 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
    v21 = swift_allocObject();
    (*(v8 + 32))(v21 + v19, v18, v7);
    *(v21 + v20) = a2;
    *(v21 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8)) = v28;
    aBlock[4] = sub_22F23E208;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22F16AC08;
    aBlock[3] = &block_descriptor_11;
    v22 = _Block_copy(aBlock);

    [v17 submitWithHandler:v22 queue:*(a3 + 128)];
    _Block_release(v22);
    return swift_unknownObjectRelease();
  }

  else
  {
    sub_22F23E1B4();
    aBlock[0] = swift_allocError();
    return sub_22F7412E0();
  }
}

void sub_22F23913C(void *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v23 = a2;
    v8 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1518, &qword_22F77A7E0);
    sub_22F120634(0, &qword_27DAB2A28, 0x277CCA9B8);
    if (swift_dynamicCast())
    {
      if ([v22 code] != -8)
      {
        v23 = v22;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2A10, &unk_22F77C698);
        sub_22F7412E0();
        return;
      }
    }
  }

  v23 = MEMORY[0x277D84F90];
  v9 = 1 << *(a4 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a4 + 64);
  v12 = (v9 + 63) >> 6;

  v13 = 0;
  while (v11)
  {
    v14 = v13;
LABEL_13:
    v15 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v16 = v15 | (v14 << 6);
    v17 = (*(a4 + 48) + 16 * v16);
    v18 = *v17;
    v19 = v17[1];
    v20 = *(*(a4 + 56) + 8 * v16);

    v21 = v20;
    sub_22F239348(v18, v19, v21, a1, &v23, a5);
  }

  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v14 >= v12)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2A10, &unk_22F77C698);
      sub_22F7412F0();
      return;
    }

    v11 = *(a4 + 64 + 8 * v14);
    ++v13;
    if (v11)
    {
      v13 = v14;
      goto LABEL_13;
    }
  }

  __break(1u);
}

double sub_22F239348(unint64_t a1, unint64_t a2, void *a3, id a4, char **a5, uint64_t a6)
{
  if (a4)
  {
    v10 = [a4 poiEventsForSpatialLookupParameters_];
    if (v10)
    {
      v12 = v10;
      v27 = a5;
      sub_22F120634(0, &qword_27DAB2A30, 0x277D0EC30);
      v13 = sub_22F741180();

      if (v13 >> 62)
      {
        goto LABEL_22;
      }

      v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v14)
      {
        v25 = a1;
        v26 = a2;
        v29 = MEMORY[0x277D84FA0];
        while (1)
        {
          v15 = 0;
          a1 = v13 & 0xC000000000000001;
          a2 = v13 & 0xFFFFFFFFFFFFFF8;
          while (1)
          {
            if (a1)
            {
              v16 = MEMORY[0x2319016F0](v15, v13);
            }

            else
            {
              if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_21;
              }

              v16 = *(v13 + 8 * v15 + 32);
            }

            v17 = v16;
            v18 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              break;
            }

            v28 = v16;
            sub_22F2395C0(&v29, &v28, a3);

            ++v15;
            if (v18 == v14)
            {
              v19 = v29;
              goto LABEL_14;
            }
          }

          __break(1u);
LABEL_21:
          __break(1u);
LABEL_22:
          if (sub_22F741A00() <= 0)
          {
            break;
          }

          v25 = a1;
          v26 = a2;
          v19 = MEMORY[0x277D84FA0];
          v29 = MEMORY[0x277D84FA0];
          v14 = sub_22F741A00();
          if (!v14)
          {
LABEL_14:

            v20 = *v27;

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *v27 = v20;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v20 = sub_22F13F3DC(0, *(v20 + 2) + 1, 1, v20);
              *v27 = v20;
            }

            v23 = *(v20 + 2);
            v22 = *(v20 + 3);
            if (v23 >= v22 >> 1)
            {
              v20 = sub_22F13F3DC((v22 > 1), v23 + 1, 1, v20);
              *v27 = v20;
            }

            *(v20 + 2) = v23 + 1;
            v24 = &v20[24 * v23];
            *(v24 + 4) = v25;
            *(v24 + 5) = v26;
            *(v24 + 6) = v19;
            return result;
          }
        }
      }
    }
  }

  return result;
}

double sub_22F2395C0(uint64_t a1, void **a2, void *a3)
{
  v5 = type metadata accessor for PublicEvent(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = (&v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v11 = &v17 - v10;
  v12 = sub_22F239738(*a2, a3);
  v13 = v12[2];
  if (v13)
  {
    v14 = v12 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v15 = *(v6 + 72);
    do
    {
      sub_22F23E4B8(v14, v8, type metadata accessor for PublicEvent);
      sub_22F10D2E4(v11, v8);
      sub_22F23EBF4(v11, type metadata accessor for PublicEvent);
      v14 += v15;
      --v13;
    }

    while (v13);
  }

  return result;
}

void *sub_22F239738(void *a1, void *a2)
{
  v460 = sub_22F73F7D0();
  v491 = *(v460 - 8);
  MEMORY[0x28223BE20](v460);
  v459 = &v434 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v458 = sub_22F73F9B0();
  v490 = *(v458 - 8);
  MEMORY[0x28223BE20](v458);
  v457 = &v434 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB24E8, &qword_22F77A2E0);
  MEMORY[0x28223BE20](v6 - 8);
  v456 = &v434 - v7;
  v455 = sub_22F73F270();
  v489 = *(v455 - 8);
  MEMORY[0x28223BE20](v455);
  v454 = &v434 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  MEMORY[0x28223BE20](v9 - 8);
  v444 = &v434 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v452 = &v434 - v12;
  MEMORY[0x28223BE20](v13);
  v449 = &v434 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v434 - v16;
  MEMORY[0x28223BE20](v18);
  v467 = &v434 - v19;
  MEMORY[0x28223BE20](v20);
  v495 = &v434 - v21;
  MEMORY[0x28223BE20](v22);
  v487 = &v434 - v23;
  MEMORY[0x28223BE20](v24);
  v510 = &v434 - v25;
  MEMORY[0x28223BE20](v26);
  v505 = &v434 - v27;
  MEMORY[0x28223BE20](v28);
  v511 = &v434 - v29;
  MEMORY[0x28223BE20](v30);
  v471 = &v434 - v31;
  MEMORY[0x28223BE20](v32);
  v540 = &v434 - v33;
  v509 = sub_22F73F690();
  v483 = *(v509 - 8);
  MEMORY[0x28223BE20](v509);
  v442 = &v434 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v448 = &v434 - v36;
  MEMORY[0x28223BE20](v37);
  v443 = &v434 - v38;
  MEMORY[0x28223BE20](v39);
  v468 = &v434 - v40;
  MEMORY[0x28223BE20](v41);
  v475 = &v434 - v42;
  MEMORY[0x28223BE20](v43);
  v474 = &v434 - v44;
  MEMORY[0x28223BE20](v45);
  v486 = &v434 - v46;
  MEMORY[0x28223BE20](v47);
  v481 = &v434 - v48;
  MEMORY[0x28223BE20](v49);
  v514 = &v434 - v50;
  MEMORY[0x28223BE20](v51);
  v516 = &v434 - v52;
  v536 = sub_22F73FA10();
  v497 = *(v536 - 8);
  MEMORY[0x28223BE20](v536);
  v464 = &v434 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v54);
  v507 = &v434 - v55;
  MEMORY[0x28223BE20](v56);
  v529 = &v434 - v57;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2A38, &qword_22F77C6A8);
  MEMORY[0x28223BE20](v58 - 8);
  v463 = &v434 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v60);
  v504 = &v434 - v61;
  v527 = type metadata accessor for PublicEvent(0);
  v503 = *(v527 - 8);
  MEMORY[0x28223BE20](v527);
  v462 = &v434 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v63);
  v461 = &v434 - v64;
  MEMORY[0x28223BE20](v65);
  v519 = &v434 - v66;
  MEMORY[0x28223BE20](v67);
  v518 = &v434 - v68;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB24E0, &unk_22F77C6B0);
  MEMORY[0x28223BE20](v69 - 8);
  v531 = &v434 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v71);
  v465 = &v434 - v72;
  MEMORY[0x28223BE20](v73);
  v453 = &v434 - v74;
  MEMORY[0x28223BE20](v75);
  v520 = &v434 - v76;
  MEMORY[0x28223BE20](v77);
  v539 = &v434 - v78;
  MEMORY[0x28223BE20](v79);
  v81 = &v434 - v80;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB40E0, &unk_22F779200);
  MEMORY[0x28223BE20](v82 - 8);
  v451 = &v434 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v84);
  v502 = &v434 - v85;
  MEMORY[0x28223BE20](v86);
  v88 = &v434 - v87;
  MEMORY[0x28223BE20](v89);
  v91 = &v434 - v90;
  v533 = sub_22F73F090();
  v470 = *(v533 - 8);
  MEMORY[0x28223BE20](v533);
  v450 = &v434 - ((v92 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v93);
  v469 = &v434 - v94;
  MEMORY[0x28223BE20](v95);
  v493 = &v434 - v96;
  MEMORY[0x28223BE20](v97);
  v541 = &v434 - v98;
  MEMORY[0x28223BE20](v99);
  v488 = &v434 - v100;
  *&v102 = MEMORY[0x28223BE20](v101).n128_u64[0];
  v482 = &v434 - v103;
  [a1 centerCoordinate];
  v105 = v104;
  [a1 centerCoordinate];
  v107 = v106;
  v108 = [a1 categories];
  if (!v108)
  {
    return MEMORY[0x277D84F90];
  }

  v109 = v108;
  sub_22F120634(0, &qword_27DAB2A40, 0x277D0EC38);
  v110 = sub_22F741180();

  v532 = a1;
  v111 = [a1 hours];
  if (!v111)
  {

    return MEMORY[0x277D84F90];
  }

  v112 = v111;
  v506 = v110;
  sub_22F120634(0, &qword_27DAB2A48, 0x277D0EC40);
  v480 = sub_22F741180();

  v113 = [a2 dateInterval];
  v494 = 0;
  if (v113)
  {
    v114 = v113;
    sub_22F73F020();

    v115 = *(v470 + 56);
    v116 = v88;
    v117 = 0;
  }

  else
  {
    v115 = *(v470 + 56);
    v116 = v88;
    v117 = 1;
  }

  v501 = v115;
  v115(v116, v117, 1, v533);
  v118 = [v532 timeZone];
  inited = v539;
  if (v118)
  {
    v120 = v118;
    sub_22F73FA00();

    v121 = 0;
  }

  else
  {
    v121 = 1;
  }

  v122 = *(v497 + 56);
  v522 = v497 + 56;
  v521 = v122;
  v122(v81, v121, 1, v536);
  sub_22F23D8F0(v88, v81, v91);
  sub_22F120ADC(v81, &qword_27DAB24E0, &unk_22F77C6B0);
  sub_22F120ADC(v88, &qword_27DAB40E0, &unk_22F779200);
  v123 = v470;
  v124 = *(v470 + 48);
  v125 = v533;
  v500 = v470 + 48;
  v499 = v124;
  if (v124(v91, 1, v533) == 1)
  {

    sub_22F120ADC(v91, &qword_27DAB40E0, &unk_22F779200);
    return MEMORY[0x277D84F90];
  }

  v127 = *(v123 + 32);
  v485 = v123 + 32;
  v484 = v127;
  v127(v482, v91, v125);
  v498 = *(sub_22F15CEA0() + 16);

  if (v506 >> 62)
  {
    goto LABEL_278;
  }

  v128 = *((v506 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (2)
  {
    v129 = v509;
    v130 = v531;
    v131 = v532;
    v526 = v17;
    if (!v128)
    {

      v445 = 0;
      v192 = v480;
      v479 = MEMORY[0x277D84F90];
      if (v480 < 0)
      {
        v542 = MEMORY[0x277D84F90];
        goto LABEL_280;
      }

      v542 = MEMORY[0x277D84F90];
      if ((v480 & 0x4000000000000000) != 0)
      {
        goto LABEL_280;
      }

LABEL_67:
      v193 = *((v192 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v193)
      {
        goto LABEL_281;
      }

      goto LABEL_68;
    }

    v445 = 0;
    v132 = 0;
    v525 = *MEMORY[0x277D0EA40];
    v524 = *MEMORY[0x277D0EA58];
    v523 = *MEMORY[0x277D0EA50];
    v517 = *MEMORY[0x277D0EA48];
    v534 = *MEMORY[0x277D0EA38];
    v515 = *MEMORY[0x277D0EA20];
    v528 = (v506 & 0xC000000000000001);
    v496 = (v506 & 0xFFFFFFFFFFFFFF8);
    v492 = v506 + 32;
    v513 = *MEMORY[0x277D0EA08];
    v530 = *MEMORY[0x277D0EA00];
    v512 = xmmword_22F771AD0;
    v479 = MEMORY[0x277D84F90];
    v542 = MEMORY[0x277D84F90];
    v508 = v128;
    while (1)
    {
      while (1)
      {
        if (v528)
        {
          v133 = MEMORY[0x2319016F0](v132, v506);
        }

        else
        {
          if (v132 >= *(v496 + 2))
          {
            goto LABEL_272;
          }

          v133 = *(v492 + 8 * v132);
        }

        v543 = v133;
        v134 = __OFADD__(v132, 1);
        v135 = (v132 + 1);
        if (v134)
        {
          __break(1u);
LABEL_271:
          __break(1u);
LABEL_272:
          __break(1u);
LABEL_273:
          __break(1u);
          goto LABEL_274;
        }

        v537 = v135;
        v136 = v543;
        v137 = [v543 localizedNames];
        v138 = sub_22F741180();
        v538 = v138;

        v535 = *(v138 + 16);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB14C0, &qword_22F77C6C0);
        inited = swift_initStackObject();
        *(inited + 16) = v512;
        v139 = v525;
        *(inited + 32) = v525;
        v140 = v524;
        v141 = v523;
        *(inited + 40) = v524;
        *(inited + 48) = v141;
        v142 = v517;
        v131 = v534;
        *(inited + 56) = v517;
        *(inited + 64) = v131;
        v143 = v515;
        v144 = v513;
        *(inited + 72) = v515;
        *(inited + 80) = v144;
        v145 = v530;
        *(inited + 88) = v530;
        v146 = v139;
        v147 = v140;
        v148 = v141;
        v149 = v142;
        v150 = v131;
        v151 = v143;
        v152 = v144;
        v153 = v145;
        v154 = [v136 category];
        v544 = v154;
        MEMORY[0x28223BE20](v154);
        v432 = &v544;
        v155 = v494;
        v17 = sub_22F1C10C8(sub_22F23E374, &v430, inited);
        v494 = v155;
        v156 = v538;
        swift_setDeallocating();
        type metadata accessor for GEOSpatialEventLookupCategory(0);
        swift_arrayDestroy();

        v157 = v156[2];
        if (v157)
        {
          if (((v498 != 0) & v17) == 1 && v535)
          {
            break;
          }
        }

        v131 = v532;
        v17 = v526;
        v130 = v531;
        inited = v539;
        v132 = v537;
        v129 = v509;
        if (v537 == v508)
        {
          goto LABEL_61;
        }
      }

      v159 = v156[4];
      v158 = v156[5];
      v130 = v531;
      if (v535 == 1)
      {

        v156 = MEMORY[0x277D84F90];
        v160 = v479;
      }

      else
      {
        v160 = v479;
        if (v157 < v535)
        {
          goto LABEL_277;
        }

        if (v157 == (v535 - 1))
        {
        }

        else
        {
          sub_22F10AB90(v156, (v156 + 4), 1, (2 * v535) | 1);
          v191 = v190;

          v156 = v191;
        }
      }

      v161 = [v543 category];
      v162 = sub_22F740E20();
      inited = v163;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v160 = sub_22F13F64C(0, *(v160 + 2) + 1, 1, v160);
      }

      v165 = *(v160 + 2);
      v164 = *(v160 + 3);
      v17 = v165 + 1;
      if (v165 >= v164 >> 1)
      {
        v160 = sub_22F13F64C((v164 > 1), v165 + 1, 1, v160);
      }

      *(v160 + 2) = v17;
      v479 = v160;
      v166 = &v160[40 * v165];
      *(v166 + 4) = 0;
      *(v166 + 5) = v162;
      *(v166 + 6) = inited;
      *(v166 + 7) = v159;
      *(v166 + 8) = v158;
      v167 = v156;
      v168 = v156[2];
      if (v168)
      {
        break;
      }

      v17 = v526;
LABEL_45:

      v178 = [v543 category];
      v179 = sub_22F740E20();
      v181 = v180;
      if (v179 == sub_22F740E20() && v181 == v182)
      {

        v131 = v532;
        v129 = v509;
LABEL_55:
        v445 = 1;
        v132 = v537;
        inited = v539;
        if (v537 == v508)
        {
          goto LABEL_269;
        }
      }

      else
      {
        v183 = sub_22F742040();

        v131 = v532;
        v129 = v509;
        if (v183)
        {

          goto LABEL_55;
        }

        v184 = [v543 category];
        v185 = sub_22F740E20();
        v187 = v186;
        if (v185 == sub_22F740E20() && v187 == v188)
        {

          goto LABEL_58;
        }

        v189 = sub_22F742040();

        if (v189)
        {
LABEL_58:
          v445 = 1;
          v132 = v537;
          inited = v539;
          if (v537 == v508)
          {
            goto LABEL_269;
          }
        }

        else
        {
          inited = v539;
          v132 = v537;
          if (v537 == v508)
          {
LABEL_61:

            goto LABEL_62;
          }
        }
      }
    }

    v169 = 0;
    v129 = v156 + 5;
    while (v169 < v167[2])
    {
      v131 = *(v129 - 1);
      v170 = *v129;

      v171 = [v543 category];
      v172 = sub_22F740E20();
      inited = v173;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v542 = sub_22F13F64C(0, *(v542 + 2) + 1, 1, v542);
      }

      v175 = *(v542 + 2);
      v174 = *(v542 + 3);
      if (v175 >= v174 >> 1)
      {
        v542 = sub_22F13F64C((v174 > 1), v175 + 1, 1, v542);
      }

      ++v169;
      v176 = v542;
      *(v542 + 2) = v175 + 1;
      v177 = &v176[40 * v175];
      *(v177 + 4) = v169;
      *(v177 + 5) = v172;
      *(v177 + 6) = inited;
      *(v177 + 7) = v131;
      *(v177 + 8) = v170;

      v129 += 2;
      v17 = v526;
      v130 = v531;
      v167 = v156;
      if (v168 == v169)
      {
        goto LABEL_45;
      }
    }

LABEL_267:
    __break(1u);
    while (2)
    {
      __break(1u);
LABEL_269:

      v445 = 1;
LABEL_62:
      v192 = v480;
      if ((v480 & 0x8000000000000000) == 0 && (v480 & 0x4000000000000000) == 0)
      {
        goto LABEL_67;
      }

LABEL_280:
      v193 = sub_22F741A00();
      v192 = v480;
      if (!v193)
      {
LABEL_281:
        v534 = MEMORY[0x277D84F90];
LABEL_282:

        v418 = v534;
        if (v534[2] < 2uLL)
        {
          (*(v470 + 8))(v482, v533);
        }

        else
        {
          v419 = sub_22F7415F0();
          sub_22F120634(0, &qword_2810A8D00, 0x277D86200);
          v420 = sub_22F741840();
          v421 = os_log_type_enabled(v420, v419);
          v422 = v470;
          if (v421)
          {
            v423 = swift_slowAlloc();
            v424 = swift_slowAlloc();
            v544 = v424;
            *v423 = 136315138;

            v425 = MEMORY[0x231900D40](v534, v527);
            v427 = v426;

            v428 = sub_22F145F20(v425, v427, &v544);

            *(v423 + 4) = v428;
            _os_log_impl(&dword_22F0FC000, v420, v419, "Created more than one public event for GeoEvent: %s", v423, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v424);
            v429 = v424;
            v418 = v534;
            MEMORY[0x2319033A0](v429, -1, -1);
            MEMORY[0x2319033A0](v423, -1, -1);
          }

          (*(v422 + 8))(v482, v533);
        }

        return v418;
      }

LABEL_68:
      v194 = 0;
      v473 = v192 & 0xC000000000000001;
      v447 = v192 & 0xFFFFFFFFFFFFFF8;
      v446 = v192 + 32;
      v528 = (v470 + 8);
      v525 = (v497 + 32);
      v524 = v497 + 48;
      v195 = v483;
      v196 = (v483 + 7);
      v538 = v483 + 1;
      v440 = (v490 + 56);
      v439 = *MEMORY[0x277CC9830];
      v438 = (v491 + 104);
      v437 = (v491 + 8);
      v436 = (v490 + 8);
      v435 = (v489 + 1);
      v508 = (v483 + 6);
      v489 = (v483 + 2);
      v483 += 4;
      v498 = v470 + 56;
      v466 = (v470 + 16);
      v497 += 8;
      v513 = (v503 + 56);
      *&v512 = v503 + 48;
      v534 = MEMORY[0x277D84F90];
      v472 = v193;
      v535 = (v195 + 7);
LABEL_72:
      if (v473)
      {
        v197 = v194;
        v198 = MEMORY[0x2319016F0](v194, v192);
      }

      else
      {
        if (v194 >= *(v447 + 16))
        {
          goto LABEL_273;
        }

        v197 = v194;
        v198 = *(v446 + 8 * v194);
      }

      v199 = v198;
      v134 = __OFADD__(v197, 1);
      v200 = v197 + 1;
      if (v134)
      {
        goto LABEL_271;
      }

      v490 = v200;
      v201 = [v198 dateInterval];
      v202 = v488;
      sub_22F73F020();

      if ((sub_22F73F000() & 1) == 0)
      {
        (*v528)(v202, v533);
LABEL_70:

        goto LABEL_71;
      }

      v203 = [v199 hours];
      v523 = v524 & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
      v530 = v199;
      if (!v203)
      {
        goto LABEL_182;
      }

      v204 = v203;
      sub_22F120634(0, &qword_27DAB2A60, 0x277D0EB60);
      v205 = sub_22F741180();

      v206 = v205;
      if (v205 >> 62)
      {
        if (sub_22F741A00() < 1)
        {
          goto LABEL_181;
        }

        v320 = sub_22F741A00();
        v206 = v205;
        v517 = v320;
        if (!v320)
        {

          (*v528)(v488, v533);
LABEL_177:
          v17 = v526;
          v130 = v531;
          goto LABEL_71;
        }

LABEL_81:
        v207 = 0;
        v515 = (v206 & 0xC000000000000001);
        v492 = v206 & 0xFFFFFFFFFFFFFF8;
        v506 = v206;
        v491 = v206 + 32;
        v17 = v504;
        v208 = v514;
LABEL_84:
        if (v515)
        {
          v543 = MEMORY[0x2319016F0](v207, v506);
          v209 = v536;
          v130 = v520;
          v134 = __OFADD__(v207, 1);
          v210 = (v207 + 1);
          if (v134)
          {
            goto LABEL_266;
          }
        }

        else
        {
          v209 = v536;
          v130 = v520;
          if (v207 >= *(v492 + 16))
          {
            continue;
          }

          v543 = *(v491 + 8 * v207);
          v134 = __OFADD__(v207, 1);
          v210 = (v207 + 1);
          if (v134)
          {
LABEL_266:
            __break(1u);
            goto LABEL_267;
          }
        }

        v537 = v210;
        v211 = [v199 dateInterval];
        sub_22F73F020();

        v212 = v543;
        [v543 startTime];
        v214 = v213;
        [v212 endTime];
        v216 = v215;
        v217 = [v131 timeZone];
        if (v217)
        {
          v218 = v507;
          v219 = v217;
          sub_22F73FA00();

          v220 = *v525;
          v221 = v218;
          inited = v539;
          (*v525)(v130, v221, v209);
          v222 = v521;
          v521(v130, 0, 1, v209);
          v220(inited, v130, v209);
          v222(inited, 0, 1, v209);
          v199 = v530;
          v196 = v535;
          v223 = *v524;
        }

        else
        {
          v521(v130, 1, 1, v209);
          sub_22F73F9D0();
          v223 = *v524;
          if ((*v524)(v130, 1, v209) != 1)
          {
            sub_22F120ADC(v130, &qword_27DAB24E0, &unk_22F77C6B0);
          }
        }

        v224 = v538;
        if (v223(inited, 1, v209) == 1)
        {
          v225 = *v528;
          (*v528)(v541, v533);
          sub_22F120ADC(inited, &qword_27DAB24E0, &unk_22F77C6B0);
          v226 = 1;
          v131 = v532;
          goto LABEL_169;
        }

        (*v525)(v529, inited, v209);
        v227 = v516;
        sub_22F73F060();
        v228 = *v196;
        (*v196)(v540, 1, 1, v129);
        if (v216 < v214 && (sub_22F73F030(), v229 = sub_22F73F660(), v230 = *v224, (*v224)(v208, v129), v229 == -1))
        {
          sub_22F73F550();
          v287 = sub_22F73F660();
          (v230)(v208, v129);
          if (v287 == 1)
          {
            sub_22F73F570();
            v288 = sub_22F73F660();
            (v230)(v208, v129);
            if (v288 == 1)
            {
              v289 = v458;
              (*v440)(v456, 1, 1, v458);
              v521(v453, 1, 1, v536);
              LOBYTE(v433) = 1;
              v432 = 0;
              LOBYTE(v431) = 1;
              v430 = 0;
              v290 = v454;
              sub_22F73F250();
              v291 = v459;
              v292 = v460;
              (*v438)(v459, v439, v460);
              v293 = v457;
              sub_22F73F7E0();
              (*v437)(v291, v292);
              v294 = v471;
              sub_22F73F930();
              v295 = v293;
              v235 = v511;
              (*v436)(v295, v289);
              v296 = v290;
              v227 = v516;
              (*v435)(v296, v455);
              v234 = v294;
              goto LABEL_100;
            }
          }

          v231 = v471;
          v232 = v471;
          v233 = 1;
        }

        else
        {
          v231 = v495;
          sub_22F73F030();
          v232 = v231;
          v233 = 0;
        }

        v228(v232, v233, 1, v129);
        v234 = v231;
        v235 = v511;
LABEL_100:
        sub_22F23E394(v234, v540);
        sub_22F73F550();
        v236 = sub_22F73F660();
        v237 = *v224;
        (*v224)(v208, v129);
        if (v236 == 1 && (sub_22F73F570(), v238 = sub_22F73F660(), (v237)(v208, v129), v238 == 1))
        {
          sub_22F73F9E0();
          sub_22F73F5A0();
          v239 = 0;
        }

        else
        {
          v239 = 1;
        }

        v240 = 1;
        v228(v235, v239, 1, v129);
        v241 = *v508;
        if (!(*v508)(v540, 1, v129))
        {
          v242 = v481;
          (*v489)(v481, v540, v129);
          v243 = v514;
          sub_22F73F550();
          v244 = sub_22F73F660();
          (v237)(v243, v129);
          if (v244 == 1 && (sub_22F73F570(), v245 = sub_22F73F660(), (v237)(v243, v129), v245 == 1))
          {
            sub_22F73F9E0();
            sub_22F73F5A0();
            v240 = 0;
          }

          else
          {
            v240 = 1;
          }

          v227 = v516;
          v129 = v509;
          (v237)(v242, v509);
          v235 = v511;
        }

        v246 = v505;
        v228(v505, v240, 1, v129);
        v247 = v510;
        sub_22F13BA9C(v235, v510, &qword_27DAB0920, &qword_22F770B20);
        if (v241(v247, 1, v129) != 1)
        {
          v496 = v237;
          v248 = *v483;
          v249 = v486;
          (*v483)(v486, v510, v129);
          v250 = v487;
          sub_22F13BA9C(v246, v487, &qword_27DAB0920, &qword_22F770B20);
          if (v241(v250, 1, v129) != 1)
          {
            v253 = v250;
            v254 = v474;
            v248(v474, v253, v129);
            v255 = *v489;
            (*v489)(v514, v249, v129);
            v255(v475, v254, v129);
            v252 = v502;
            v131 = v532;
            v256 = v516;
            sub_22F73F040();
            v257 = v496;
            (v496)(v254, v129);
            (v257)(v249, v129);
            sub_22F120ADC(v246, &qword_27DAB0920, &qword_22F770B20);
            sub_22F120ADC(v511, &qword_27DAB0920, &qword_22F770B20);
            (v257)(v256, v129);
            v251 = 0;
            goto LABEL_115;
          }

          v237 = v496;
          (v496)(v249, v129);
          v247 = v250;
          v235 = v511;
          v227 = v516;
        }

        sub_22F120ADC(v246, &qword_27DAB0920, &qword_22F770B20);
        sub_22F120ADC(v235, &qword_27DAB0920, &qword_22F770B20);
        (v237)(v227, v129);
        sub_22F120ADC(v247, &qword_27DAB0920, &qword_22F770B20);
        v251 = 1;
        v252 = v502;
        v131 = v532;
LABEL_115:
        v17 = v533;
        v501(v252, v251, 1, v533);
        sub_22F120ADC(v540, &qword_27DAB0920, &qword_22F770B20);
        v258 = v499(v252, 1, v17);
        v259 = v514;
        v260 = v536;
        inited = v539;
        v196 = v535;
        if (v258 == 1)
        {
          (*v497)(v529, v536);
          v225 = *v528;
          (*v528)(v541, v17);
          sub_22F120ADC(v252, &qword_27DAB40E0, &unk_22F779200);
          v226 = 1;
          v17 = v504;
          v208 = v259;
          goto LABEL_168;
        }

        v261 = v493;
        v484(v493, v252, v17);
        v129 = v131;
        v262 = [v131 localizedName];
        if (!v262)
        {
          v297 = v17;
          v225 = *v528;
          (*v528)(v261, v17);
LABEL_151:
          (*v497)(v529, v260);
          v225(v541, v297);
          v226 = 1;
          v17 = v504;
          v208 = v259;
          v199 = v530;
          v196 = v535;
          v131 = v129;
          v129 = v509;
          goto LABEL_169;
        }

        v263 = v262;
        v264 = sub_22F740E20();
        v266 = v265;

        v267 = HIBYTE(v266) & 0xF;
        if ((v266 & 0x2000000000000000) == 0)
        {
          v267 = v264 & 0xFFFFFFFFFFFFLL;
        }

        if (!v267)
        {

          v297 = v17;
          v225 = *v528;
          (*v528)(v493, v17);
          goto LABEL_151;
        }

        v477 = v264;
        v478 = v266;
        v268 = v129;
        v269 = [v129 performers];
        if (!v269)
        {
          v496 = MEMORY[0x277D84F90];
          goto LABEL_157;
        }

        v270 = v269;
        sub_22F120634(0, &qword_27DAB2A58, 0x277D0EC48);
        v131 = sub_22F741180();

        if (v131 >> 62)
        {
          v271 = v131 & 0xFFFFFFFFFFFFFF8;
          inited = sub_22F741A00();
          if (!inited)
          {
LABEL_155:
            v496 = MEMORY[0x277D84F90];
            goto LABEL_156;
          }
        }

        else
        {
          v271 = v131 & 0xFFFFFFFFFFFFFF8;
          inited = *((v131 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!inited)
          {
            goto LABEL_155;
          }
        }

        v272 = 0;
        v130 = v131 & 0xC000000000000001;
        v496 = MEMORY[0x277D84F90];
        while (1)
        {
          v17 = v272;
          while (1)
          {
            if (v130)
            {
              v273 = MEMORY[0x2319016F0](v17, v131);
            }

            else
            {
              if (v17 >= *(v271 + 16))
              {
                goto LABEL_265;
              }

              v273 = *(v131 + 8 * v17 + 32);
            }

            v274 = v273;
            v272 = v17 + 1;
            if (__OFADD__(v17, 1))
            {
              __break(1u);
LABEL_265:
              __break(1u);
              goto LABEL_266;
            }

            v275 = [v273 localizedName];
            if (v275)
            {
              break;
            }

LABEL_127:

            ++v17;
            if (v272 == inited)
            {
              v17 = v533;
              goto LABEL_156;
            }
          }

          v276 = v275;
          v129 = sub_22F740E20();
          v278 = v277;

          if (sub_22F740F10() <= 0)
          {
            break;
          }

          v279 = [v274 iTunesIdentifier];
          if (v279)
          {
            v280 = v279;
            v476 = sub_22F740E20();
            v441 = v281;
          }

          else
          {
            v476 = 0;
            v441 = 0;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v496 = sub_22F13F518(0, *(v496 + 2) + 1, 1, v496);
          }

          v283 = *(v496 + 2);
          v282 = *(v496 + 3);
          if (v283 >= v282 >> 1)
          {
            v496 = sub_22F13F518((v282 > 1), v283 + 1, 1, v496);
          }

          v284 = v496;
          *(v496 + 2) = v283 + 1;
          v285 = &v284[32 * v283];
          *(v285 + 4) = v129;
          *(v285 + 5) = v278;
          v286 = v441;
          *(v285 + 6) = v476;
          *(v285 + 7) = v286;
          v17 = v533;
          if (v272 == inited)
          {
LABEL_156:

            v268 = v532;
LABEL_157:
            v298 = v493;
            v299 = [v268 relatedPOIIdentifiers];
            if (!v299)
            {
              goto LABEL_166;
            }

            inited = v299;
            sub_22F120634(0, &qword_27DAB2A50, 0x277D0EBA8);
            v300 = sub_22F741180();

            if (!(v300 >> 62))
            {
              if (*((v300 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_160;
              }

LABEL_165:

LABEL_166:
              v476 = 0;
LABEL_167:
              v303 = [v268 identifier];
              v304 = [v303 muid];

              v305 = v527;
              v306 = v504;
              (*v466)(&v504[*(v527 + 24)], v298, v17);
              v307 = v479;

              v308 = v268;
              v309 = v542;

              v310 = [v308 expectedAttendance];
              v225 = *v528;
              (*v528)(v298, v17);
              (*v497)(v529, v536);
              v311 = v17;
              v17 = v306;
              v225(v541, v311);
              v226 = 0;
              v312 = v477;
              *v306 = v304;
              v306[1] = v312;
              v306[2] = v478;
              *(v306 + v305[7]) = v307;
              *(v306 + v305[8]) = v309;
              v131 = v308;
              *(v306 + v305[9]) = v496;
              *(v306 + v305[10]) = v310;
              *(v306 + v305[11]) = v476;
              v313 = (v306 + v305[12]);
              *v313 = v105;
              v313[1] = v107;
              v208 = v514;
              inited = v539;
              v129 = v509;
              v196 = v535;
LABEL_168:
              v199 = v530;
LABEL_169:
              v314 = v527;
              (*v513)(v17, v226, 1, v527);
              if ((*v512)(v17, 1, v314) == 1)
              {

                sub_22F120ADC(v17, &qword_27DAB2A38, &qword_22F77C6A8);
              }

              else
              {
                v315 = v518;
                sub_22F23E520(v17, v518, type metadata accessor for PublicEvent);
                sub_22F23E4B8(v315, v519, type metadata accessor for PublicEvent);
                v316 = v534;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v316 = sub_22F13F624(0, v316[2] + 1, 1, v316);
                }

                v534 = v316;
                v318 = v316[2];
                v317 = v316[3];
                if (v318 >= v317 >> 1)
                {
                  v534 = sub_22F13F624((v317 > 1), v318 + 1, 1, v534);
                }

                sub_22F23EBF4(v518, type metadata accessor for PublicEvent);
                v319 = v534;
                v534[2] = v318 + 1;
                sub_22F23E520(v519, v319 + ((*(v503 + 80) + 32) & ~*(v503 + 80)) + *(v503 + 72) * v318, type metadata accessor for PublicEvent);
                inited = v539;
              }

              v207 = v537;
              if (v537 == v517)
              {

                v225(v488, v533);
                goto LABEL_177;
              }

              goto LABEL_84;
            }

            if (!sub_22F741A00())
            {
              goto LABEL_165;
            }

LABEL_160:
            if ((v300 & 0xC000000000000001) != 0)
            {
              v301 = MEMORY[0x2319016F0](0, v300);
              goto LABEL_163;
            }

            if (*((v300 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v301 = *(v300 + 32);
LABEL_163:
              v302 = v301;

              v476 = [v302 muid];

              goto LABEL_167;
            }

LABEL_274:
            __break(1u);
LABEL_275:
            __break(1u);
            goto LABEL_276;
          }
        }

        goto LABEL_127;
      }

      break;
    }

    v517 = *((v205 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v517)
    {
      goto LABEL_81;
    }

LABEL_181:

LABEL_182:
    if ((v445 & 1) == 0)
    {
      (*v528)(v488, v533);
      goto LABEL_70;
    }

    v321 = [v199 dateInterval];
    sub_22F73F020();

    v322 = [v131 timeZone];
    if (v322)
    {
      v323 = v507;
      v324 = v322;
      sub_22F73FA00();

      v325 = *v525;
      v326 = v536;
      (*v525)(v130, v323, v536);
      v327 = v521;
      v521(v130, 0, 1, v326);
      v328 = v465;
      v325(v465, v130, v326);
      v196 = v535;
      v327(v328, 0, 1, v326);
      v329 = (*v524)(v328, 1, v326);
    }

    else
    {
      v330 = v536;
      v521(v130, 1, 1, v536);
      sub_22F73F9D0();
      v331 = *v524;
      if ((*v524)(v130, 1, v330) != 1)
      {
        sub_22F120ADC(v130, &qword_27DAB24E0, &unk_22F77C6B0);
      }

      v326 = v536;
      v328 = v465;
      v329 = v331(v465, 1, v536);
    }

    if (v329 == 1)
    {
      v332 = *v528;
      (*v528)(v469, v533);
      sub_22F120ADC(v328, &qword_27DAB24E0, &unk_22F77C6B0);
      v333 = 1;
      v334 = v463;
      inited = v539;
LABEL_239:
      v394 = v488;
      goto LABEL_240;
    }

    (*v525)(v464, v328, v326);
    sub_22F73F060();
    v335 = *v196;
    v336 = 1;
    v337 = v467;
    (*v196)(v467, 1, 1, v129);
    v338 = v495;
    sub_22F73F030();
    v335(v338, 0, 1, v129);
    sub_22F23E394(v338, v337);
    v339 = v514;
    sub_22F73F550();
    v340 = sub_22F73F660();
    v341 = v339;
    v342 = *v538;
    (*v538)(v341, v129);
    if (v340 == 1)
    {
      v343 = v514;
      sub_22F73F570();
      v344 = sub_22F73F660();
      v342(v343, v129);
      if (v344 == 1)
      {
        sub_22F73F9E0();
        sub_22F73F5A0();
        v336 = 0;
      }

      else
      {
        v336 = 1;
      }
    }

    v543 = v342;
    v345 = 1;
    v335(v17, v336, 1, v129);
    v346 = v17;
    v347 = *v508;
    if (!(*v508)(v467, 1, v129))
    {
      v348 = v443;
      (*v489)(v443, v467, v129);
      v349 = v514;
      sub_22F73F550();
      v350 = sub_22F73F660();
      v351 = v543;
      (v543)(v349, v129);
      if (v350 == 1 && (sub_22F73F570(), v352 = sub_22F73F660(), v351(v349, v129), v352 == 1))
      {
        sub_22F73F9E0();
        sub_22F73F5A0();
        v345 = 0;
      }

      else
      {
        v345 = 1;
      }

      v351(v348, v129);
      v346 = v526;
    }

    v353 = v449;
    v335(v449, v345, 1, v129);
    v354 = v452;
    sub_22F13BA9C(v346, v452, &qword_27DAB0920, &qword_22F770B20);
    v355 = v347(v354, 1, v129);
    v356 = v451;
    if (v355 == 1)
    {
LABEL_204:
      sub_22F120ADC(v353, &qword_27DAB0920, &qword_22F770B20);
      sub_22F120ADC(v346, &qword_27DAB0920, &qword_22F770B20);
      (v543)(v468, v129);
      sub_22F120ADC(v354, &qword_27DAB0920, &qword_22F770B20);
      v359 = 1;
      v17 = v346;
    }

    else
    {
      v357 = *v483;
      (*v483)(v448, v452, v129);
      v358 = v444;
      sub_22F13BA9C(v353, v444, &qword_27DAB0920, &qword_22F770B20);
      if (v347(v358, 1, v129) == 1)
      {
        (v543)(v448, v129);
        v354 = v358;
        v346 = v526;
        goto LABEL_204;
      }

      v360 = v442;
      v357(v442, v358, v129);
      v361 = *v489;
      v362 = v448;
      (*v489)(v514, v448, v129);
      v361(v475, v360, v129);
      sub_22F73F040();
      v363 = v360;
      v356 = v451;
      v364 = v543;
      (v543)(v363, v129);
      v364(v362, v129);
      sub_22F120ADC(v353, &qword_27DAB0920, &qword_22F770B20);
      v17 = v526;
      sub_22F120ADC(v526, &qword_27DAB0920, &qword_22F770B20);
      v364(v468, v129);
      v359 = 0;
    }

    v365 = v533;
    v501(v356, v359, 1, v533);
    sub_22F120ADC(v467, &qword_27DAB0920, &qword_22F770B20);
    v366 = v499(v356, 1, v365);
    inited = v539;
    v131 = v532;
    if (v366 == 1)
    {
      (*v497)(v464, v536);
      v332 = *v528;
      (*v528)(v469, v365);
      sub_22F120ADC(v356, &qword_27DAB40E0, &unk_22F779200);
LABEL_238:
      v333 = 1;
      v334 = v463;
      goto LABEL_239;
    }

    v367 = v450;
    v484(v450, v356, v365);
    v368 = [v131 localizedName];
    if (!v368)
    {
      v332 = *v528;
      (*v528)(v367, v365);
LABEL_237:
      (*v497)(v464, v536);
      v332(v469, v365);
      goto LABEL_238;
    }

    v369 = v368;
    v370 = sub_22F740E20();
    v372 = v371;

    v373 = (v372 >> 56) & 0xF;
    v523 = v370;
    if ((v372 & 0x2000000000000000) == 0)
    {
      v373 = v370 & 0xFFFFFFFFFFFFLL;
    }

    if (!v373)
    {

      v332 = *v528;
      v365 = v533;
      (*v528)(v450, v533);
      goto LABEL_237;
    }

    v374 = [v131 performers];
    v517 = v372;
    if (!v374)
    {
      v537 = MEMORY[0x277D84F90];
      v377 = v450;
      goto LABEL_252;
    }

    v375 = v374;
    sub_22F120634(0, &qword_27DAB2A58, 0x277D0EC48);
    v376 = sub_22F741180();

    v377 = v450;
    if (v376 >> 62)
    {
      v543 = (v376 & 0xFFFFFFFFFFFFFF8);
      inited = sub_22F741A00();
      if (!inited)
      {
LABEL_250:
        v537 = MEMORY[0x277D84F90];
        goto LABEL_251;
      }
    }

    else
    {
      v543 = (v376 & 0xFFFFFFFFFFFFFF8);
      inited = *((v376 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!inited)
      {
        goto LABEL_250;
      }
    }

    v378 = 0;
    v537 = MEMORY[0x277D84F90];
LABEL_216:
    v17 = v378;
LABEL_218:
    if ((v376 & 0xC000000000000001) != 0)
    {
      v379 = MEMORY[0x2319016F0](v17, v376);
    }

    else
    {
      if (v17 >= *(v543 + 2))
      {
        goto LABEL_275;
      }

      v379 = *(v376 + 8 * v17 + 32);
    }

    v380 = v379;
    v378 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
LABEL_276:
      __break(1u);
LABEL_277:
      __break(1u);
LABEL_278:
      v128 = sub_22F741A00();
      continue;
    }

    break;
  }

  v381 = [v379 localizedName];
  if (!v381)
  {
LABEL_217:

    ++v17;
    v130 = v531;
    if (v378 == inited)
    {
      v377 = v450;
      goto LABEL_251;
    }

    goto LABEL_218;
  }

  v382 = v381;
  v383 = sub_22F740E20();
  v385 = v384;

  if (sub_22F740F10() <= 0)
  {

    goto LABEL_217;
  }

  v386 = [v380 iTunesIdentifier];
  if (v386)
  {
    v387 = v386;
    v515 = sub_22F740E20();
    v389 = v388;
  }

  else
  {
    v515 = 0;
    v389 = 0;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v537 = sub_22F13F518(0, *(v537 + 2) + 1, 1, v537);
  }

  v391 = *(v537 + 2);
  v390 = *(v537 + 3);
  if (v391 >= v390 >> 1)
  {
    v537 = sub_22F13F518((v390 > 1), v391 + 1, 1, v537);
  }

  v392 = v537;
  *(v537 + 2) = v391 + 1;
  v393 = &v392[32 * v391];
  *(v393 + 4) = v383;
  *(v393 + 5) = v385;
  *(v393 + 6) = v515;
  *(v393 + 7) = v389;
  v130 = v531;
  v377 = v450;
  if (v378 != inited)
  {
    goto LABEL_216;
  }

LABEL_251:

  v131 = v532;
  v196 = v535;
LABEL_252:
  v404 = [v131 relatedPOIIdentifiers];
  if (!v404)
  {
    goto LABEL_261;
  }

  v405 = v404;
  sub_22F120634(0, &qword_27DAB2A50, 0x277D0EBA8);
  v406 = sub_22F741180();

  if (!(v406 >> 62))
  {
    result = *((v406 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_255;
    }

LABEL_260:

LABEL_261:
    v543 = 0;
LABEL_262:
    v409 = [v131 identifier];
    v515 = [v409 muid];

    v410 = v527;
    v334 = v463;
    v411 = v377;
    v412 = v533;
    (*v466)(&v463[*(v527 + 24)], v411, v533);
    v413 = v479;

    v414 = v131;
    v415 = v542;

    v506 = [v414 expectedAttendance];
    v332 = *v528;
    (*v528)(v450, v412);
    (*v497)(v464, v536);
    v332(v469, v412);
    v333 = 0;
    v416 = v523;
    *v334 = v515;
    v334[1] = v416;
    v334[2] = v517;
    *(v334 + v410[7]) = v413;
    *(v334 + v410[8]) = v415;
    v131 = v414;
    *(v334 + v410[9]) = v537;
    *(v334 + v410[10]) = v506;
    *(v334 + v410[11]) = v543;
    v417 = (v334 + v410[12]);
    *v417 = v105;
    v417[1] = v107;
    v17 = v526;
    inited = v539;
    v394 = v488;
    v129 = v509;
LABEL_240:
    v395 = v334;
    v396 = v334;
    v397 = v527;
    (*v513)(v396, v333, 1, v527);
    if ((*v512)(v395, 1, v397) == 1)
    {
      v332(v394, v533);

      sub_22F120ADC(v395, &qword_27DAB2A38, &qword_22F77C6A8);
    }

    else
    {
      v398 = v395;
      v399 = v461;
      sub_22F23E520(v398, v461, type metadata accessor for PublicEvent);
      sub_22F23E4B8(v399, v462, type metadata accessor for PublicEvent);
      v400 = v332;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v534 = sub_22F13F624(0, v534[2] + 1, 1, v534);
      }

      v402 = v534[2];
      v401 = v534[3];
      if (v402 >= v401 >> 1)
      {
        v534 = sub_22F13F624((v401 > 1), v402 + 1, 1, v534);
      }

      sub_22F23EBF4(v461, type metadata accessor for PublicEvent);
      v400(v394, v533);
      v403 = v534;
      v534[2] = v402 + 1;
      sub_22F23E520(v462, v403 + ((*(v503 + 80) + 32) & ~*(v503 + 80)) + *(v503 + 72) * v402, type metadata accessor for PublicEvent);
      inited = v539;
    }

LABEL_71:
    v194 = v490;
    v192 = v480;
    if (v490 == v472)
    {
      goto LABEL_282;
    }

    goto LABEL_72;
  }

  result = sub_22F741A00();
  if (!result)
  {
    goto LABEL_260;
  }

LABEL_255:
  if ((v406 & 0xC000000000000001) != 0)
  {
    v407 = MEMORY[0x2319016F0](0, v406);
    goto LABEL_258;
  }

  if (*((v406 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v407 = *(v406 + 32);
LABEL_258:
    v408 = v407;

    v543 = [v408 muid];

    goto LABEL_262;
  }

  __break(1u);
  return result;
}

uint64_t sub_22F23D8F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v70 = a2;
  v76 = a3;
  v4 = sub_22F73F690();
  v68 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v65 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v67 = &v63 - v7;
  MEMORY[0x28223BE20](v8);
  v75 = &v63 - v9;
  MEMORY[0x28223BE20](v10);
  v12 = &v63 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB40E0, &unk_22F779200);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v63 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  MEMORY[0x28223BE20](v19 - 8);
  v66 = &v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v72 = &v63 - v22;
  MEMORY[0x28223BE20](v23);
  v71 = &v63 - v24;
  MEMORY[0x28223BE20](v25);
  v74 = &v63 - v26;
  MEMORY[0x28223BE20](v27);
  v29 = &v63 - v28;
  MEMORY[0x28223BE20](v30);
  v77 = &v63 - v31;
  MEMORY[0x28223BE20](v32);
  v80 = &v63 - v33;
  MEMORY[0x28223BE20](v34);
  v36 = &v63 - v35;
  v69 = a1;
  sub_22F13BA9C(a1, v18, &qword_27DAB40E0, &unk_22F779200);
  v37 = sub_22F73F090();
  v38 = *(v37 - 8);
  v39 = *(v38 + 48);
  v40 = v39(v18, 1, v37);
  v78 = v38;
  v79 = v36;
  if (v40 == 1)
  {
    v41 = v12;
    sub_22F120ADC(v18, &qword_27DAB40E0, &unk_22F779200);
    v42 = v68;
    (*(v68 + 56))(v36, 1, 1, v4);
    v43 = v42;
  }

  else
  {
    sub_22F73F060();
    (*(v38 + 8))(v18, v37);
    sub_22F1F4550(v70, v36);
    v43 = v68;
    v41 = v12;
    (*(v68 + 8))(v12, v4);
  }

  sub_22F13BA9C(v69, v15, &qword_27DAB40E0, &unk_22F779200);
  v44 = v39(v15, 1, v37);
  v45 = v77;
  v73 = v37;
  v64 = v41;
  if (v44 == 1)
  {
    sub_22F120ADC(v15, &qword_27DAB40E0, &unk_22F779200);
    (*(v43 + 56))(v80, 1, 1, v4);
  }

  else
  {
    sub_22F73F030();
    (*(v78 + 8))(v15, v37);
    sub_22F1F4550(v70, v80);
    (*(v43 + 8))(v41, v4);
  }

  sub_22F13BA9C(v79, v29, &qword_27DAB0920, &qword_22F770B20);
  v46 = *(v43 + 48);
  v47 = v46(v29, 1, v4);
  v48 = v74;
  v49 = v71;
  if (v47 == 1)
  {
    sub_22F120ADC(v29, &qword_27DAB0920, &qword_22F770B20);
    (*(v43 + 56))(v45, 1, 1, v4);
  }

  else
  {
    sub_22F1F3EE8(v45);
    (*(v43 + 8))(v29, v4);
  }

  sub_22F13BA9C(v80, v49, &qword_27DAB0920, &qword_22F770B20);
  v50 = v46(v49, 1, v4);
  v51 = v75;
  v52 = v72;
  if (v50 == 1)
  {
    sub_22F120ADC(v49, &qword_27DAB0920, &qword_22F770B20);
    (*(v43 + 56))(v48, 1, 1, v4);
  }

  else
  {
    sub_22F1F41AC(v48);
    (*(v43 + 8))(v49, v4);
  }

  sub_22F13BA9C(v45, v52, &qword_27DAB0920, &qword_22F770B20);
  if (v46(v52, 1, v4) != 1)
  {
    v53 = *(v43 + 32);
    v53(v51, v52, v4);
    v52 = v66;
    sub_22F13BA9C(v48, v66, &qword_27DAB0920, &qword_22F770B20);
    if (v46(v52, 1, v4) != 1)
    {
      v58 = v64;
      v53(v67, v52, v4);
      v59 = *(v43 + 16);
      v59(v58, v51, v4);
      v60 = v67;
      v59(v65, v67, v4);
      v54 = v76;
      v57 = v77;
      sub_22F73F040();
      v61 = *(v43 + 8);
      v61(v60, v4);
      v61(v51, v4);
      v55 = 0;
      v52 = v79;
      v56 = v80;
      goto LABEL_18;
    }

    (*(v43 + 8))(v51, v4);
  }

  v54 = v76;
  sub_22F120ADC(v48, &qword_27DAB0920, &qword_22F770B20);
  v55 = 1;
  v48 = v45;
  v56 = v79;
  v57 = v80;
LABEL_18:
  sub_22F120ADC(v48, &qword_27DAB0920, &qword_22F770B20);
  sub_22F120ADC(v57, &qword_27DAB0920, &qword_22F770B20);
  sub_22F120ADC(v56, &qword_27DAB0920, &qword_22F770B20);
  sub_22F120ADC(v52, &qword_27DAB0920, &qword_22F770B20);
  return (*(v78 + 56))(v54, v55, 1, v73);
}

uint64_t sub_22F23E138()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

unint64_t sub_22F23E1B4()
{
  result = qword_27DAB2A20;
  if (!qword_27DAB2A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2A20);
  }

  return result;
}

void sub_22F23E208(void *a1, char *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2A10, &unk_22F77C698) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + v7);
  v9 = *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_22F23913C(a1, a2, v2 + v6, v8, v9);
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22F23E2E4(void *a1, uint64_t *a2)
{
  v2 = sub_22F740E20();
  v4 = v3;
  if (v2 == sub_22F740E20() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_22F742040();
  }

  return v7 & 1;
}

uint64_t sub_22F23E394(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_22F23E404(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22F20B7C0;

  return sub_22F237D0C(a1, a2, v6);
}

uint64_t sub_22F23E4B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22F23E520(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void *sub_22F23E588(uint64_t a1, double a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB40E0, &unk_22F779200);
  MEMORY[0x28223BE20](v4 - 8);
  v65 = &v52 - v5;
  v63 = sub_22F73F690();
  v6 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v62 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v61 = &v52 - v9;
  v10 = sub_22F73F090();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for PublicEventTimeAndLocation(0);
  v14 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v16 = (&v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = sub_22F14F6C4(MEMORY[0x277D84F90]);
  v18 = sub_22F15CEA0();
  v19 = *(a1 + 16);
  if (v19)
  {
    v20 = a1 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v58 = (v11 + 16);
    v59 = (v6 + 16);
    v56 = (v11 + 48);
    v57 = (v11 + 56);
    v64 = (v11 + 8);
    v53 = *(v14 + 72);
    v54 = v18;
    v55 = v13;
    while (1)
    {
      v66 = v20;
      v67 = v19;
      sub_22F23E4B8(v20, v16, type metadata accessor for PublicEventTimeAndLocation);
      v23 = *(v16 + 2);
      v24 = *(v16 + 3);
      v25 = v60;
      v26 = *v59;
      v27 = v63;
      (*v59)(v61, v16 + *(v60 + 32), v63);
      v26(v62, v16 + *(v25 + 36), v27);
      sub_22F73F040();
      v28 = v65;
      (*v58)(v65, v13, v10);
      (*v57)(v28, 0, 1, v10);
      type metadata accessor for GEOSpatialEventLookupCategory(0);
      v29 = sub_22F741160();
      v30 = (*v56)(v28, 1, v10);
      v31 = 0;
      if (v30 != 1)
      {
        v32 = v65;
        v31 = sub_22F73F010();
        (*v64)(v32, v10);
      }

      v33 = v10;
      v34 = [objc_allocWithZone(MEMORY[0x277D0ED58]) initWithCoordinate:v29 radius:v31 categories:v23 dateInterval:{v24, a2}];

      v36 = *v16;
      v35 = v16[1];
      v37 = v34;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v68 = v17;
      v40 = sub_22F1229E8(v36, v35);
      v41 = v17[2];
      v42 = (v39 & 1) == 0;
      v43 = v41 + v42;
      if (__OFADD__(v41, v42))
      {
        break;
      }

      v44 = v39;
      if (v17[3] >= v43)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_22F135FAC();
        }
      }

      else
      {
        sub_22F1289D8(v43, isUniquelyReferenced_nonNull_native);
        v45 = sub_22F1229E8(v36, v35);
        if ((v44 & 1) != (v46 & 1))
        {
          goto LABEL_19;
        }

        v40 = v45;
      }

      v10 = v33;
      v17 = v68;
      if (v44)
      {
        v21 = v68[7];
        v22 = *(v21 + 8 * v40);
        *(v21 + 8 * v40) = v37;

        v13 = v55;
        (*v64)(v55, v33);
      }

      else
      {
        v68[(v40 >> 6) + 8] |= 1 << v40;
        v47 = (v17[6] + 16 * v40);
        *v47 = v36;
        v47[1] = v35;
        *(v17[7] + 8 * v40) = v37;

        v13 = v55;
        (*v64)(v55, v33);
        v48 = v17[2];
        v49 = __OFADD__(v48, 1);
        v50 = v48 + 1;
        if (v49)
        {
          goto LABEL_18;
        }

        v17[2] = v50;
      }

      sub_22F23EBF4(v16, type metadata accessor for PublicEventTimeAndLocation);
      v20 = v66 + v53;
      v19 = v67 - 1;
      if (v67 == 1)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    result = sub_22F7420C0();
    __break(1u);
  }

  else
  {
LABEL_16:

    return v17;
  }

  return result;
}

uint64_t sub_22F23EB34(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_22F12094C;

  return sub_22F2388C4(a1, v4, v5, v7, v6);
}

uint64_t sub_22F23EBF4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22F23EC54(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

unint64_t sub_22F23EC9C()
{
  result = qword_2810A92A8;
  if (!qword_2810A92A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAB29A8, &unk_22F77BFD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810A92A8);
  }

  return result;
}

unint64_t sub_22F23ED24()
{
  result = qword_27DAB2A78;
  if (!qword_27DAB2A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2A78);
  }

  return result;
}

uint64_t sub_22F23ED7C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_22F1229E8(0xD000000000000010, 0x800000022F792110);
    if (v1)
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        swift_unknownObjectRetain();
        sub_22F740E10();
        swift_unknownObjectRelease();
      }
    }
  }

  sub_22F23EE68();
  swift_allocError();
  return swift_willThrow();
}

unint64_t sub_22F23EE68()
{
  result = qword_27DAB2A80;
  if (!qword_27DAB2A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2A80);
  }

  return result;
}

unint64_t sub_22F23EED0()
{
  result = qword_27DAB2A88;
  if (!qword_27DAB2A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2A88);
  }

  return result;
}

id FeatureExtractorAverageMomentScenes.__allocating_init(version:graph:)(uint64_t a1, void *a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = sub_22F23FAF0(a1, a2);

  return v6;
}

void *sub_22F23EF88@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result != 0;
  *a2 = 0;
  *(a2 + 8) = v2;
  return result;
}

id FeatureExtractorAverageMomentScenes.init(version:graph:)(uint64_t a1, void *a2)
{
  v3 = sub_22F23FAF0(a1, a2);

  return v3;
}

id FeatureExtractorAverageMomentScenes.floatVector(withEntity:)(void *a1)
{
  v3 = [objc_opt_self() vectorRepeatingFloat:*(*&v1[OBJC_IVAR___PGFeatureExtractorAverageMomentScenes_featureIndexByLowercasedScene] + 16) count:0.0];
  v4 = [a1 numberOfAssets];
  if (v4 < 1)
  {
    return v3;
  }

  v5 = v4;
  v6 = objc_opt_self();
  v7 = [a1 collection];
  v8 = [v6 edgesFromNodes:v7 toNodes:*&v1[OBJC_IVAR___PGFeatureExtractorAverageMomentScenes_sceneNodes]];

  v16 = 1;
  v9 = swift_allocObject();
  *(v9 + 16) = v1;
  *(v9 + 24) = &v16;
  *(v9 + 32) = v3;
  *(v9 + 40) = v5;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_22F23FD2C;
  *(v10 + 24) = v9;
  v15[4] = sub_22F1F68E8;
  v15[5] = v10;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 1107296256;
  v15[2] = sub_22F107E24;
  v15[3] = &block_descriptor_12;
  v11 = _Block_copy(v15);
  v12 = v1;
  v13 = v3;

  [v8 enumerateUsingBlock_];
  _Block_release(v11);
  LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

  if ((v11 & 1) == 0)
  {
    if (v16)
    {
    }

    else
    {
      sub_22F23FD54();
      swift_allocError();
      swift_willThrow();
    }

    return v3;
  }

  __break(1u);
  return result;
}

void sub_22F23F258(void *a1, _BYTE *a2, uint64_t a3, _BYTE *a4, void *a5, float a6)
{
  v12 = [a1 sceneNode];
  v13 = *(a3 + OBJC_IVAR___PGFeatureExtractorAverageMomentScenes_featureIndexByLowercasedScene);
  v23 = v12;
  v14 = [v12 sceneName];
  v15 = sub_22F740E20();
  v17 = v16;

  if (!*(v13 + 16))
  {

    goto LABEL_7;
  }

  v18 = sub_22F1229E8(v15, v17);
  v20 = v19;

  if ((v20 & 1) == 0)
  {
LABEL_7:
    *a2 = 1;

    *a4 = 0;
    return;
  }

  v21 = *(*(v13 + 56) + 8 * v18);
  *&v22 = [a1 numberOfAssets] / a6;
  [a5 setFloat:v21 atIndex:v22];
}

uint64_t FeatureExtractorAverageMomentScenes.featureNames.getter()
{
  if (*(v0 + OBJC_IVAR___PGFeatureExtractorAverageMomentScenes_version))
  {
    result = sub_22F7420A0();
    __break(1u);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
    v1 = 120;
    sub_22F146454(0, 120, 0);
    v2 = &unk_2843D88E0;
    do
    {
      v3 = *(v2 - 1);
      v4 = *v2;
      v10 = sub_22F740E20();
      v11 = v5;

      MEMORY[0x231900B10](95, 0xE100000000000000);
      MEMORY[0x231900B10](v3, v4);

      v7 = *(v12 + 16);
      v6 = *(v12 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_22F146454((v6 > 1), v7 + 1, 1);
      }

      *(v12 + 16) = v7 + 1;
      v8 = v12 + 16 * v7;
      *(v8 + 32) = v10;
      *(v8 + 40) = v11;
      v2 += 2;
      --v1;
    }

    while (v1);
    return v12;
  }

  return result;
}

id FeatureExtractorAverageMomentScenes.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FeatureExtractorAverageMomentScenes.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_22F23F774(void *a1, char a2, void *a3)
{
  v37 = a1[2];
  if (!v37)
  {
    goto LABEL_21;
  }

  LOBYTE(v5) = a2;
  v7 = a1[4];
  v6 = a1[5];
  v8 = a1[6];
  v9 = *a3;

  v10 = sub_22F1229E8(v7, v6);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_22F125704(v15, v5 & 1);
    v10 = sub_22F1229E8(v7, v6);
    if ((v16 & 1) == (v17 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v10 = sub_22F7420C0();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v20 = v10;
  sub_22F1341B0();
  v10 = v20;
  if (v16)
  {
LABEL_8:
    v18 = swift_allocError();
    swift_willThrow();
    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1518, &qword_22F77A7E0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v21 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v22 = (v21[6] + 16 * v10);
  *v22 = v7;
  v22[1] = v6;
  *(v21[7] + 8 * v10) = v8;
  v23 = v21[2];
  v14 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v14)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_22F741B00();
    MEMORY[0x231900B10](0xD00000000000001BLL, 0x800000022F78EFE0);
    sub_22F741C50();
    MEMORY[0x231900B10](39, 0xE100000000000000);
    sub_22F741D40();
    __break(1u);
    return;
  }

  v21[2] = v24;
  if (v37 != 1)
  {
    v5 = a1 + 9;
    v8 = 1;
    while (v8 < a1[2])
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v25 = *v5;
      v26 = *a3;

      v27 = sub_22F1229E8(v7, v6);
      v29 = v26[2];
      v30 = (v28 & 1) == 0;
      v14 = __OFADD__(v29, v30);
      v31 = v29 + v30;
      if (v14)
      {
        goto LABEL_23;
      }

      v16 = v28;
      if (v26[3] < v31)
      {
        sub_22F125704(v31, 1);
        v27 = sub_22F1229E8(v7, v6);
        if ((v16 & 1) != (v32 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v16)
      {
        goto LABEL_8;
      }

      v33 = *a3;
      *(*a3 + 8 * (v27 >> 6) + 64) |= 1 << v27;
      v34 = (v33[6] + 16 * v27);
      *v34 = v7;
      v34[1] = v6;
      *(v33[7] + 8 * v27) = v25;
      v35 = v33[2];
      v14 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v8;
      v33[2] = v36;
      v5 += 3;
      if (v37 == v8)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

id sub_22F23FAF0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  if (a1)
  {
    sub_22F7420A0();
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    v7 = ObjectType;
    *&v3[OBJC_IVAR___PGFeatureExtractorAverageMomentScenes_version] = 0;
    v8 = objc_opt_self();
    sub_22F1515F8(&unk_2843D88B8);
    v9 = sub_22F741410();

    v10 = [v8 sceneNodesForSceneNames:v9 inGraph:a2];

    *&v3[OBJC_IVAR___PGFeatureExtractorAverageMomentScenes_sceneNodes] = v10;
    v24 = MEMORY[0x277D84F90];
    sub_22F14663C(0, 120, 0);
    v11 = 0;
    v12 = &unk_2843D88E0;
    v13 = v24;
    do
    {
      v14 = sub_22F740EA0();
      v24 = v13;
      v17 = *(v13 + 16);
      v16 = *(v13 + 24);
      if (v17 >= v16 >> 1)
      {
        v19 = v14;
        v20 = v15;
        sub_22F14663C((v16 > 1), v17 + 1, 1);
        v15 = v20;
        v14 = v19;
        v13 = v24;
      }

      *(v13 + 16) = v17 + 1;
      v18 = (v13 + 24 * v17);
      v18[5] = v15;
      v18[6] = v11;
      v18[4] = v14;
      v12 += 16;
      ++v11;
    }

    while (v11 != 120);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0FE0, &qword_22F770AF0);
    v24 = sub_22F741DF0();

    sub_22F23F774(v21, 1, &v24);

    *&v3[OBJC_IVAR___PGFeatureExtractorAverageMomentScenes_featureIndexByLowercasedScene] = v24;
    v23.receiver = v3;
    v23.super_class = v7;
    return objc_msgSendSuper2(&v23, sel_init);
  }

  return result;
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_22F23FD54()
{
  result = qword_27DAB2AA0;
  if (!qword_27DAB2AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2AA0);
  }

  return result;
}

unint64_t sub_22F23FDAC()
{
  result = qword_27DAB2AB0;
  if (!qword_27DAB2AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2AB0);
  }

  return result;
}

unint64_t sub_22F23FE74()
{
  result = qword_27DAB2AB8;
  if (!qword_27DAB2AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2AB8);
  }

  return result;
}

void *static ImportantEntitiesChildrenProcessor.processUserChildren(inGraph:parameters:progressBlock:reportToCoreAnalytics:withProcessInferredChildNodeClosure:)(void *a1, _OWORD *a2, void (*a3)(double), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = a5;
  v13 = a2[1];
  v18[0] = *a2;
  v18[1] = v13;
  v18[2] = a2[2];
  type metadata accessor for ImportantEntitiesChildrenContainer(0);
  v14 = swift_allocObject();
  v15 = a1;

  sub_22F240428(v15, a3, a4, a6, a7);
  v16 = sub_22F246DE0(v14, v18, a3, a4, v9);

  return v16;
}

uint64_t type metadata accessor for ImportantEntitiesChildrenContainer(uint64_t a1)
{
  result = qword_27DAB2AC0;
  if (!qword_27DAB2AC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double static ImportantEntitiesChildrenProcessor.defaultParameters()@<D0>(uint64_t a1@<X8>)
{
  v2 = objc_opt_self();
  [v2 usersChildrenInferenceRecencyThresholdFromLatestMomentDateYears];
  v4 = v3 * 31557600.0;
  [v2 usersChildrenInferenceMinimumLifespanYears];
  *a1 = v4;
  *(a1 + 8) = v5 * 31557600.0;
  *(a1 + 16) = 15;
  result = 0.1;
  *(a1 + 24) = xmmword_22F77CAC0;
  *(a1 + 40) = 0;
  return result;
}

uint64_t sub_22F240090()
{

  return swift_deallocClassInstance();
}

uint64_t sub_22F2400D0()
{
  v1 = *(*v0 + 24);

  return v1;
}

uint64_t sub_22F240104()
{

  return swift_deallocClassInstance();
}

void sub_22F240144()
{
  v1 = [*(*v0 + 16) universalStartDate];
  sub_22F73F640();
}

uint64_t sub_22F2401A8()
{
  v1 = *(*v0 + 24);
  if (!v1)
  {
    return 0;
  }

  v2 = [v1 featureIdentifier];
  v3 = sub_22F740E20();

  return v3;
}

uint64_t sub_22F240214()
{
  v1 = *v0;
  sub_22F742170();
  v2 = [*(v1 + 16) localIdentifier];
  sub_22F740E20();

  sub_22F740D60();

  return sub_22F7421D0();
}

double sub_22F24029C(uint64_t a1)
{
  v2 = [*(*v1 + 16) localIdentifier];
  sub_22F740E20();

  sub_22F740D60();

  return result;
}

uint64_t sub_22F240318(uint64_t a1)
{
  sub_22F742170();
  v2 = [*(*v1 + 16) localIdentifier];
  sub_22F740E20();

  sub_22F740D60();

  return sub_22F7421D0();
}

uint64_t sub_22F2403A8()
{
  v0 = sub_22F740B90();
  __swift_allocate_value_buffer(v0, qword_27DAD0EA0);
  __swift_project_value_buffer(v0, qword_27DAD0EA0);
  return sub_22F740B80();
}

void *sub_22F240428(void *a1, void (*a2)(double), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v48 = a2;
  v49 = a3;
  v10 = sub_22F73F690();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x277D84F90];
  v6[2] = a1;
  v6[3] = v14;
  v15 = a1;
  v16 = sub_22F14E72C(v14);
  v6[5] = v14;
  v17 = v6 + 5;
  v6[4] = v16;
  v18 = (v6 + OBJC_IVAR____TtC11PhotosGraph34ImportantEntitiesChildrenContainer_processInferredChildNode);
  *v18 = a4;
  v18[1] = a5;
  v50 = a5;

  sub_22F73F650();
  v19 = OBJC_IVAR____TtC11PhotosGraph34ImportantEntitiesChildrenContainer_latestMomentDatetime;
  (*(v11 + 32))(v6 + OBJC_IVAR____TtC11PhotosGraph34ImportantEntitiesChildrenContainer_latestMomentDatetime, v13, v10);
  v20 = v15;
  v21 = [v15 momentNodesSortedByDate];
  sub_22F120634(0, &qword_2810A90E0, off_27887B100);
  v22 = sub_22F741180();

  if (!(v22 >> 62))
  {
    v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v23)
    {
      goto LABEL_3;
    }

LABEL_22:

    if (qword_27DAAFDF0 == -1)
    {
      goto LABEL_23;
    }

    goto LABEL_30;
  }

  v23 = sub_22F741A00();
  if (!v23)
  {
    goto LABEL_22;
  }

LABEL_3:
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
    goto LABEL_27;
  }

  if ((v22 & 0xC000000000000001) != 0)
  {
LABEL_27:
    v26 = MEMORY[0x2319016F0](v25, v22);
    goto LABEL_8;
  }

  if ((v25 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_29;
  }

  if (v25 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_29:
    __break(1u);
LABEL_30:
    swift_once();
LABEL_23:
    v45 = sub_22F740B90();
    __swift_project_value_buffer(v45, qword_27DAD0EA0);
    v27 = sub_22F740B70();
    v46 = sub_22F7415E0();
    if (os_log_type_enabled(v27, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_22F0FC000, v27, v46, "Couldn't find latest moment in the graph!", v47, 2u);
      MEMORY[0x2319033A0](v47, -1, -1);
    }

    goto LABEL_25;
  }

  v26 = *(v22 + 8 * v25 + 32);
LABEL_8:
  v27 = v26;

  v28 = [v27 universalEndDate];
  sub_22F73F640();

  swift_beginAccess();
  (*(v11 + 40))(v6 + v19, v13, v10);
  swift_endAccess();
  v29 = swift_slowAlloc();
  *v29 = 0;
  v30 = v48;
  v31 = v49;
  v48(0.0);
  if (*v29)
  {
    goto LABEL_25;
  }

  if (qword_2810AA120 != -1)
  {
    swift_once();
  }

  v32 = sub_22F740B90();
  v33 = __swift_project_value_buffer(v32, qword_2810B4EB0);
  sub_22F3489DC(v20, v30, v31, v33, sub_22F250824, v6);
  if (qword_27DAAFDF0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v32, qword_27DAD0EA0);

  v34 = sub_22F740B70();
  v35 = sub_22F7415D0();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 134217984;
    swift_beginAccess();
    v37 = *v17 >> 62 ? sub_22F741A00() : *((*v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v36 + 4) = v37;

    _os_log_impl(&dword_22F0FC000, v34, v35, "Found %ld moments at the me node's home address and frequent locations.", v36, 0xCu);
    MEMORY[0x2319033A0](v36, -1, -1);
  }

  else
  {
  }

  (v30)(v29, 0.5);
  if (*v29)
  {
    goto LABEL_25;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB13D0, &qword_22F7717F0);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_22F771350;
  *(v38 + 32) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInteger_];
  *(v38 + 40) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInteger_];
  v39 = objc_opt_self();
  sub_22F120634(0, &qword_2810A8ED0, 0x277CCABB0);
  v40 = sub_22F741160();

  v41 = [v39 personNodesInAgeCategories:v40 includingMe:0 inGraph:v6[2]];

  v42 = swift_allocObject();
  *(v42 + 16) = sub_22F25082C;
  *(v42 + 24) = v6;
  aBlock[4] = sub_22F1DAF34;
  aBlock[5] = v42;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22F322D74;
  aBlock[3] = &block_descriptor_13;
  v43 = _Block_copy(aBlock);

  [v41 enumerateUsingBlock:v43];
  _Block_release(v43);
  LOBYTE(v43) = swift_isEscapingClosureAtFileLocation();

  if ((v43 & 1) == 0)
  {
    (v48)(v29, 1.0);

    v27 = v41;
LABEL_25:

    return v6;
  }

  __break(1u);
  return result;
}

void sub_22F240B34(void *a1, uint64_t a2)
{
  v4 = [a1 bestAddressNode];
  if (v4)
  {
    v5 = v4;
    type metadata accessor for ImportantEntitiesGraphInferenceMoment();
    v6 = swift_allocObject();
    *(v6 + 16) = a1;
    *(v6 + 24) = v5;
    swift_beginAccess();
    v7 = v5;
    v8 = a1;

    MEMORY[0x231900D00](v9);
    if (*((*(a2 + 40) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + 40) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_22F7411C0();
    }

    sub_22F741220();
    swift_endAccess();
  }

  else
  {
    if (qword_27DAAFDF0 != -1)
    {
      swift_once();
    }

    v10 = sub_22F740B90();
    __swift_project_value_buffer(v10, qword_27DAD0EA0);
    oslog = sub_22F740B70();
    v11 = sub_22F7415E0();
    if (os_log_type_enabled(oslog, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_22F0FC000, oslog, v11, "Couldn't find best address node for moment node!", v12, 2u);
      MEMORY[0x2319033A0](v12, -1, -1);
    }
  }
}

void sub_22F240D0C(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = [a1 localIdentifier];
  if (v5)
  {
    v6 = v5;
    v7 = sub_22F740E20();
    v9 = v8;

    type metadata accessor for ImportantEntitiesChildrenProcessorEntity();
    v10 = swift_allocObject();
    v10[2] = a1;
    v10[3] = v7;
    v10[4] = v9;
    swift_beginAccess();
    v11 = a1;

    MEMORY[0x231900D00](v12);
    if (*((*(a3 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a3 + 24) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_22F7411C0();
    }

    sub_22F741220();
    swift_endAccess();
    v13 = [v11 collection];
    v14 = [v13 momentNodes];

    v45 = MEMORY[0x277D84F90];
    v15 = swift_allocObject();
    *(v15 + 16) = &v45;
    v16 = swift_allocObject();
    *(v16 + 16) = sub_22F25084C;
    *(v16 + 24) = v15;
    aBlock[4] = sub_22F250854;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22F107E24;
    aBlock[3] = &block_descriptor_60;
    v17 = _Block_copy(aBlock);

    [v14 enumerateUsingBlock_];
    _Block_release(v17);
    LOBYTE(v17) = swift_isEscapingClosureAtFileLocation();

    if (v17)
    {
      __break(1u);
    }

    else
    {
      v18 = v10[3];
      v19 = v10[4];

      v21 = sub_22F151C88(v20);

      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v43 = *(a3 + 32);
      *(a3 + 32) = 0x8000000000000000;
      sub_22F131768(v21, v18, v19, isUniquelyReferenced_nonNull_native);

      *(a3 + 32) = v43;
      swift_endAccess();
      if (qword_27DAAFDF0 == -1)
      {
LABEL_6:
        v23 = sub_22F740B90();
        __swift_project_value_buffer(v23, qword_27DAD0EA0);

        v24 = sub_22F740B70();
        v25 = sub_22F7415D0();

        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          v27 = swift_slowAlloc();
          v43 = v27;
          *v26 = 136315394;
          v28 = v10[3];
          v29 = v10[4];

          v30 = sub_22F145F20(v28, v29, &v43);

          *(v26 + 4) = v30;
          *(v26 + 12) = 2048;
          swift_beginAccess();
          if (v45 >> 62)
          {
            v31 = sub_22F741A00();
          }

          else
          {
            v31 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          *(v26 + 14) = v31;
          _os_log_impl(&dword_22F0FC000, v24, v25, "Child entity %s has %ld moments.", v26, 0x16u);
          __swift_destroy_boxed_opaque_existential_0(v27);
          MEMORY[0x2319033A0](v27, -1, -1);
          MEMORY[0x2319033A0](v26, -1, -1);
        }

        return;
      }
    }

    swift_once();
    goto LABEL_6;
  }

  if (qword_27DAAFDF0 != -1)
  {
    swift_once();
  }

  v32 = sub_22F740B90();
  __swift_project_value_buffer(v32, qword_27DAD0EA0);
  v33 = a1;
  oslog = sub_22F740B70();
  v34 = sub_22F7415E0();

  if (os_log_type_enabled(oslog, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    aBlock[0] = v36;
    *v35 = 136315138;
    v37 = [v33 stringDescription];
    v38 = sub_22F740E20();
    v40 = v39;

    v41 = sub_22F145F20(v38, v40, aBlock);

    *(v35 + 4) = v41;
    _os_log_impl(&dword_22F0FC000, oslog, v34, "Couldn't find localIdentifier in child node %s during ingest, skipping...", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v36);
    MEMORY[0x2319033A0](v36, -1, -1);
    MEMORY[0x2319033A0](v35, -1, -1);
  }

  else
  {
  }
}

void sub_22F241304(void *a1, uint64_t a2, void *a3)
{
  v5 = [a1 bestAddressNode];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for ImportantEntitiesGraphInferenceMoment();
    v7 = swift_allocObject();
    *(v7 + 16) = a1;
    *(v7 + 24) = v6;
    v8 = v6;
    MEMORY[0x231900D00](a1);
    if (*((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_22F7411C0();
    }

    sub_22F741220();
  }
}

void *sub_22F2413E4(uint64_t a1)
{
  v3 = *(a1 + 24);
  v2 = *(a1 + 32);
  swift_beginAccess();
  v4 = *(v1 + 32);
  if (*(v4 + 16))
  {

    v5 = sub_22F1229E8(v3, v2);
    v7 = v6;

    if (v7)
    {
      v8 = *(*(v4 + 56) + 8 * v5);

      v9 = sub_22F10AA70(v8);

      return v9;
    }
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_22F2414A8(unint64_t a1, uint64_t (*a2)(double))
{
  v3 = v2;
  v6 = swift_slowAlloc();
  *v6 = 0;
  v18 = a2;
  result = a2(0.0);
  if ((*v6 & 1) == 0)
  {
    if (a1 >> 62)
    {
LABEL_17:
      v17 = a1 & 0xFFFFFFFFFFFFFF8;
      v9 = sub_22F741A00();
      v8 = sub_22F741A00();
    }

    else
    {
      v17 = a1 & 0xFFFFFFFFFFFFFF8;
      v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v9 = v8;
    }

    v10 = 0;
    v11 = (v3 + OBJC_IVAR____TtC11PhotosGraph34ImportantEntitiesChildrenContainer_processInferredChildNode);
    v12 = 0.0;
    v13 = 1.0 / v9;
    while (v8 != v10)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v3 = MEMORY[0x2319016F0](v10, a1);
        if (__OFADD__(v10, 1))
        {
LABEL_13:
          __break(1u);
          return (v18)(v6, 1.0);
        }
      }

      else
      {
        if (v10 >= *(v17 + 16))
        {
          __break(1u);
          goto LABEL_17;
        }

        v3 = *(a1 + 8 * v10 + 32);

        if (__OFADD__(v10, 1))
        {
          goto LABEL_13;
        }
      }

      v14 = *v11;
      v15 = *(v3 + 16);
      v14();

      v12 = v13 + v12;
      (v18)(v6, v12);
      v16 = *v6;

      ++v10;
      if (v16)
      {
        return result;
      }
    }

    return (v18)(v6, 1.0);
  }

  return result;
}

uint64_t sub_22F241648()
{

  v1 = OBJC_IVAR____TtC11PhotosGraph34ImportantEntitiesChildrenContainer_latestMomentDatetime;
  v2 = sub_22F73F690();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_22F241718@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC11PhotosGraph34ImportantEntitiesChildrenContainer_latestMomentDatetime;
  swift_beginAccess();
  v5 = sub_22F73F690();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

id ImportantEntitiesChildrenProcessor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ImportantEntitiesChildrenProcessor.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ImportantEntitiesChildrenProcessor();
  return objc_msgSendSuper2(&v2, sel_init);
}

id ImportantEntitiesChildrenProcessor.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for ImportantEntitiesChildrenProcessor();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void *sub_22F24198C(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
LABEL_33:
    v2 = sub_22F741A00();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v3 = 0;
      v37 = v1 & 0xC000000000000001;
      v34 = v1 & 0xFFFFFFFFFFFFFF8;
      v4 = MEMORY[0x277D84F98];
      v35 = v2;
      v36 = v1;
      while (1)
      {
        if (v37)
        {
          v5 = MEMORY[0x2319016F0](v3, v1);
          v6 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            goto LABEL_29;
          }
        }

        else
        {
          if (v3 >= *(v34 + 16))
          {
            goto LABEL_31;
          }

          v5 = *(v1 + 8 * v3 + 32);

          v6 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
LABEL_29:
            __break(1u);
LABEL_30:
            __break(1u);
LABEL_31:
            __break(1u);
LABEL_32:
            __break(1u);
            goto LABEL_33;
          }
        }

        v7 = *(v5 + 24);
        if (v7)
        {
          break;
        }

LABEL_5:
        ++v3;
        if (v6 == v2)
        {
          return v4;
        }
      }

      v38 = v6;
      v8 = [v7 featureIdentifier];
      v9 = sub_22F740E20();
      v11 = v10;

      if (v4[2])
      {
        v12 = sub_22F1229E8(v9, v11);
        if (v13)
        {
          v14 = *(v4[7] + 8 * v12);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB13D0, &qword_22F7717F0);
          v15 = v9;
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_22F771EB0;
          *(inited + 32) = v5;

          sub_22F144904(v17, inited);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          sub_22F130444(v14, v15, v11, isUniquelyReferenced_nonNull_native);

LABEL_28:
          v6 = v38;
          goto LABEL_5;
        }
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB13D0, &qword_22F7717F0);
      v1 = swift_allocObject();
      *(v1 + 16) = xmmword_22F771EB0;
      *(v1 + 32) = v5;

      v19 = swift_isUniquelyReferenced_nonNull_native();
      v20 = v9;
      v22 = sub_22F1229E8(v9, v11);
      v23 = v4[2];
      v24 = (v21 & 1) == 0;
      v25 = v23 + v24;
      if (__OFADD__(v23, v24))
      {
        goto LABEL_30;
      }

      v26 = v21;
      if (v4[3] < v25)
      {
        sub_22F125C7C(v25, v19);
        v27 = sub_22F1229E8(v20, v11);
        if ((v26 & 1) != (v28 & 1))
        {
          result = sub_22F7420C0();
          __break(1u);
          return result;
        }

        v22 = v27;
        if ((v26 & 1) == 0)
        {
          goto LABEL_25;
        }

LABEL_23:

        *(v4[7] + 8 * v22) = v1;

LABEL_27:
        v2 = v35;
        v1 = v36;
        goto LABEL_28;
      }

      if (v19)
      {
        if (v21)
        {
          goto LABEL_23;
        }
      }

      else
      {
        sub_22F1344AC();
        if (v26)
        {
          goto LABEL_23;
        }
      }

LABEL_25:
      v4[(v22 >> 6) + 8] |= 1 << v22;
      v29 = (v4[6] + 16 * v22);
      *v29 = v20;
      v29[1] = v11;
      *(v4[7] + 8 * v22) = v1;

      v30 = v4[2];
      v31 = __OFADD__(v30, 1);
      v32 = v30 + 1;
      if (v31)
      {
        goto LABEL_32;
      }

      v4[2] = v32;
      goto LABEL_27;
    }
  }

  return MEMORY[0x277D84F98];
}

void sub_22F241D34(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t *))
{
  v73 = a5;
  v74 = a3;
  v78 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  MEMORY[0x28223BE20](v7 - 8);
  v76 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v79 = &v71 - v10;
  v11 = sub_22F73F690();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v77 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v71 - v15;
  MEMORY[0x28223BE20](v17);
  v80 = &v71 - v18;

  sub_22F3C3A9C(v19);
  v21 = v20;
  v81 = a2;

  if (v21 < 0 || (v21 & 0x4000000000000000) != 0)
  {
LABEL_54:
    v22 = sub_22F741A00();
  }

  else
  {
    v22 = *(v21 + 16);
  }

  v82 = v11;
  v75 = a1;
  if (v22)
  {
    v83 = MEMORY[0x277D84F90];
    sub_22F1466BC(0, v22 & ~(v22 >> 63), 0);
    if (v22 < 0)
    {
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
      return;
    }

    v23 = 0;
    v24 = v83;
    do
    {
      if ((v21 & 0xC000000000000001) != 0)
      {
        v25 = MEMORY[0x2319016F0](v23, v21);
      }

      else
      {
        v25 = *(v21 + 8 * v23 + 32);
      }

      v26 = [*(v25 + 16) universalStartDate];
      sub_22F73F640();

      v83 = v24;
      v28 = *(v24 + 16);
      v27 = *(v24 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_22F1466BC((v27 > 1), v28 + 1, 1);
        v24 = v83;
      }

      ++v23;
      *(v24 + 16) = v28 + 1;
      v11 = v82;
      (*(v12 + 32))(v24 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v28, v16, v82);
    }

    while (v22 != v23);
  }

  else
  {

    v24 = MEMORY[0x277D84F90];
  }

  v29 = v79;
  sub_22F1732E8(v24, v79);
  v30 = *(v12 + 48);
  if (v30(v29, 1, v11) == 1)
  {

    sub_22F15FCF0(v29);
    v31 = sub_22F740B70();
    v32 = sub_22F7415E0();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_22F0FC000, v31, v32, "Couldn't find the minimum of the datetime array!", v33, 2u);
      MEMORY[0x2319033A0](v33, -1, -1);
    }
  }

  else
  {
    v16 = *(v12 + 32);
    (v16)(v80, v29, v11);
    v34 = v76;
    sub_22F172094(v24, v76);

    if (v30(v34, 1, v11) == 1)
    {
      sub_22F15FCF0(v34);
      v35 = sub_22F740B70();
      v36 = sub_22F7415E0();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&dword_22F0FC000, v35, v36, "Couldn't find the minimum of the datetime array!", v37, 2u);
        MEMORY[0x2319033A0](v37, -1, -1);
      }

      (*(v12 + 8))(v80, v11);
    }

    else
    {
      (v16)(v77, v34, v11);
      v38 = v75;
      v11 = v75 + 64;
      v39 = 1 << *(v75 + 32);
      v40 = -1;
      if (v39 < 64)
      {
        v40 = ~(-1 << v39);
      }

      a1 = v40 & *(v75 + 64);
      v41 = (v39 + 63) >> 6;

      v76 = 0;
      v79 = 0;
      v21 = 0;
      v72 = 0;
      while (a1)
      {
        v42 = a1;
LABEL_33:
        a1 = (v42 - 1) & v42;
        if (*(v81 + 16))
        {
          v44 = __clz(__rbit64(v42)) | (v21 << 6);
          v45 = *(*(v38 + 56) + 8 * v44);
          v46 = (*(v38 + 48) + 16 * v44);
          v47 = *v46;
          v16 = v46[1];

          v48 = sub_22F1229E8(v47, v16);
          v50 = v49;

          if (v50)
          {
            v16 = *(*(v81 + 56) + 8 * v48);
            MEMORY[0x28223BE20](v51);
            v52 = v77;
            *(&v71 - 2) = v80;
            *(&v71 - 1) = v52;

            v53 = v72;
            v54 = sub_22F3A050C(v73, &v71 - 4, v45);
            v72 = v53;
            if (v16 >> 62)
            {
              v55 = sub_22F741A00();
            }

            else
            {
              v55 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v38 = v75;
            if (__OFADD__(v76, v55))
            {
              goto LABEL_56;
            }

            v76 += v55;
            if (v54 >> 62)
            {
              v56 = sub_22F741A00();
            }

            else
            {
              v56 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v57 = __OFADD__(v79, v56);
            v79 += v56;
            if (v57)
            {
              goto LABEL_57;
            }
          }

          else
          {
          }
        }
      }

      while (1)
      {
        v43 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          __break(1u);
          goto LABEL_54;
        }

        if (v43 >= v41)
        {
          break;
        }

        v42 = *(v11 + 8 * v43);
        ++v21;
        if (v42)
        {
          v21 = v43;
          goto LABEL_33;
        }
      }

      v58 = v74;
      v59 = v79;
      if (v79 >= v74)
      {
        v69 = *(v12 + 8);
        v70 = v82;
        v69(v77, v82);
        v69(v80, v70);
      }

      else
      {
        v60 = sub_22F740B70();
        v61 = sub_22F7415C0();
        v62 = os_log_type_enabled(v60, v61);
        v63 = v82;
        if (v62)
        {
          v64 = swift_slowAlloc();
          *v64 = 0;
          _os_log_impl(&dword_22F0FC000, v60, v61, "Not enough moments at important locations that the entity has been to in the entity's lifetime!", v64, 2u);
          MEMORY[0x2319033A0](v64, -1, -1);
        }

        v65 = sub_22F740B70();
        v66 = sub_22F7415C0();
        if (os_log_type_enabled(v65, v66))
        {
          v67 = swift_slowAlloc();
          *v67 = 134218240;
          *(v67 + 4) = v59;
          *(v67 + 12) = 2048;
          *(v67 + 14) = v58;
          _os_log_impl(&dword_22F0FC000, v65, v66, "Only had %ld moments, which is less than minimum threshold %ld", v67, 0x16u);
          MEMORY[0x2319033A0](v67, -1, -1);
        }

        v68 = *(v12 + 8);
        v68(v77, v63);
        v68(v80, v63);
      }
    }
  }
}

uint64_t sub_22F242558(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v53 = a2;
  v6 = sub_22F73F690();
  v52 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v51 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v50 = &v45 - v9;
  v10 = sub_22F73F090();
  v55 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v14);
  v16 = &v45 - v15;
  MEMORY[0x28223BE20](v17);
  v20 = &v45 - v19;
  v21 = *a3;
  if (*(*a3 + 16))
  {
    v48 = v18;
    v49 = v6;
    v54 = v3;
    v22 = *(a1 + 24);
    v23 = *(a1 + 32);

    v24 = sub_22F1229E8(v22, v23);
    v26 = v25;

    if (v26)
    {
      v27 = *(v21 + 56);
      v28 = v55;
      v45 = v55[9];
      v47 = v55[2];
      v47(v16, v27 + v45 * v24, v10);
      v46 = v28[4];
      v46(v20, v16, v10);
      v29 = *a3;
      if (*(*a3 + 16) && (v30 = *(v53 + 24), v31 = *(v53 + 32), , v32 = sub_22F1229E8(v30, v31), v34 = v33, , (v34 & 1) != 0))
      {
        v47(v12, *(v29 + 56) + v32 * v45, v10);
        v35 = v48;
        v46(v48, v12, v10);
        v36 = v50;
        sub_22F73F060();
        v37 = v51;
        v38 = v35;
        sub_22F73F060();
        v39 = sub_22F73F5D0();
        v40 = *(v52 + 8);
        v41 = v37;
        v42 = v49;
        v40(v41, v49);
        v40(v36, v42);
        v43 = v55[1];
        v43(v38, v10);
        v43(v20, v10);
      }

      else
      {
        (v55[1])(v20, v10);
        v39 = 1;
      }
    }

    else
    {
      v39 = 0;
    }
  }

  else
  {
    v39 = 0;
  }

  return v39 & 1;
}

void sub_22F242910(uint64_t a1)
{
  v1 = sub_22F14E718(MEMORY[0x277D84F90]);
  v2 = sub_22F740DF0();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_22F12FEE8(v2, 0x636E657265666E69, 0xED00006570795465, isUniquelyReferenced_nonNull_native);
  sub_22F120634(0, &qword_2810A8ED0, 0x277CCABB0);
  v4 = sub_22F7417F0();
  v5 = swift_isUniquelyReferenced_nonNull_native();
  v92 = v1;
  sub_22F12FEE8(v4, 0xD000000000000010, 0x800000022F792BD0, v5);
  v6 = 0;
  v7 = v1;
  do
  {
    v11 = &unk_2843D9058 + v6++;
    v12 = v11[32];
    v13 = 0xD000000000000020;
    v14 = 0xD00000000000001FLL;
    if (v12 == 8)
    {
      v14 = 0xD000000000000010;
    }

    v15 = 0x800000022F78E4D0;
    if (v12 == 8)
    {
      v15 = 0x800000022F78E4B0;
    }

    if (v12 != 7)
    {
      v13 = v14;
    }

    v16 = 0x800000022F78E480;
    if (v12 != 7)
    {
      v16 = v15;
    }

    v17 = 0xD000000000000022;
    if (v12 != 5)
    {
      v17 = 0x457265696C74756FLL;
    }

    v18 = 0xED0000797469746ELL;
    if (v12 == 5)
    {
      v18 = 0x800000022F78E440;
    }

    if (v12 <= 6)
    {
      v13 = v17;
      v16 = v18;
    }

    v19 = 0xD000000000000019;
    v20 = 0x746E656D6F4D6F6ELL;
    if (v12 != 3)
    {
      v20 = 0xD000000000000010;
    }

    v21 = 0x800000022F78E420;
    if (v12 == 3)
    {
      v21 = 0xE900000000000073;
    }

    if (v12 != 2)
    {
      v19 = v20;
    }

    v22 = 0x800000022F78E3F0;
    if (v12 != 2)
    {
      v22 = v21;
    }

    v23 = 0xD000000000000017;
    if (v12)
    {
      v23 = 0x6E65636552746F6ELL;
    }

    v24 = 0xEF6867756F6E4574;
    if (!v12)
    {
      v24 = 0x800000022F78E3C0;
    }

    if (v12 <= 1)
    {
      v19 = v23;
      v22 = v24;
    }

    v25 = v12 <= 4;
    if (v12 <= 4)
    {
      v26 = v19;
    }

    else
    {
      v26 = v13;
    }

    if (v25)
    {
      v27 = v22;
    }

    else
    {
      v27 = v16;
    }

    v92 = v26;
    v93 = v27;

    MEMORY[0x231900B10](0x746E756F43, 0xE500000000000000);

    v29 = v92;
    v28 = v27;
    v30 = sub_22F7417F0();
    v31 = swift_isUniquelyReferenced_nonNull_native();
    v92 = v7;
    v32 = sub_22F1229E8(v29, v28);
    v34 = v7[2];
    v35 = (v33 & 1) == 0;
    v36 = __OFADD__(v34, v35);
    v37 = v34 + v35;
    if (v36)
    {
      __break(1u);
      goto LABEL_98;
    }

    v38 = v33;
    if (v7[3] < v37)
    {
      sub_22F125718(v37, v31);
      v32 = sub_22F1229E8(v29, v28);
      if ((v38 & 1) != (v39 & 1))
      {
        goto LABEL_103;
      }

LABEL_43:
      if (v38)
      {
        goto LABEL_2;
      }

      goto LABEL_44;
    }

    if (v31)
    {
      goto LABEL_43;
    }

    v43 = v32;
    sub_22F1341C4();
    v32 = v43;
    if (v38)
    {
LABEL_2:
      v8 = v32;

      v7 = v92;
      v9 = v92[7];
      v10 = *(v9 + 8 * v8);
      *(v9 + 8 * v8) = v30;

      continue;
    }

LABEL_44:
    v7 = v92;
    v92[(v32 >> 6) + 8] |= 1 << v32;
    v40 = (v7[6] + 16 * v32);
    *v40 = v29;
    v40[1] = v28;
    *(v7[7] + 8 * v32) = v30;
    v41 = v7[2];
    v36 = __OFADD__(v41, 1);
    v42 = v41 + 1;
    if (v36)
    {
      goto LABEL_99;
    }

    v7[2] = v42;
  }

  while (v6 != 10);
  v44 = a1;
  v45 = a1 + 64;
  v46 = 1 << *(a1 + 32);
  v47 = -1;
  if (v46 < 64)
  {
    v47 = ~(-1 << v46);
  }

  v48 = v47 & *(a1 + 64);
  v49 = (v46 + 63) >> 6;

  v50 = 0;
  v90 = v49;
  while (2)
  {
    while (2)
    {
      v51 = v50;
      while (2)
      {
        if (!v48)
        {
          while (1)
          {
            v50 = v51 + 1;
            if (__OFADD__(v51, 1))
            {
              break;
            }

            if (v50 >= v49)
            {

              v85 = objc_opt_self();
              v86 = sub_22F740DF0();
              sub_22F120634(0, &qword_2810A8EC0, 0x277D82BB8);
              v91 = sub_22F740C80();
              [v85 sendEvent:v86 withPayload:v91];

              return;
            }

            v48 = *(v45 + 8 * v50);
            ++v51;
            if (v48)
            {
              goto LABEL_59;
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

        v50 = v51;
LABEL_59:
        v52 = *(*(v44 + 56) + (__clz(__rbit64(v48)) | (v50 << 6)));
        if (v52 > 4)
        {
          if (v52 <= 6)
          {
            if (v52 == 5)
            {
              v53 = 0xD000000000000022;
              v54 = 0x800000022F78E440;
            }

            else
            {
              v53 = 0x457265696C74756FLL;
              v54 = 0xED0000797469746ELL;
            }
          }

          else if (v52 == 7)
          {
            v53 = 0xD000000000000020;
            v54 = 0x800000022F78E480;
          }

          else if (v52 == 8)
          {
            v53 = 0xD000000000000010;
            v54 = 0x800000022F78E4B0;
          }

          else
          {
            v53 = 0xD00000000000001FLL;
            v54 = 0x800000022F78E4D0;
          }
        }

        else if (v52 <= 1)
        {
          v53 = 0x6E65636552746F6ELL;
          v54 = 0xEF6867756F6E4574;
          if (!v52)
          {
            v53 = 0xD000000000000017;
            v54 = 0x800000022F78E3C0;
          }
        }

        else if (v52 == 2)
        {
          v53 = 0xD000000000000019;
          v54 = 0x800000022F78E3F0;
        }

        else if (v52 == 3)
        {
          v53 = 0x746E656D6F4D6F6ELL;
          v54 = 0xE900000000000073;
        }

        else
        {
          v53 = 0xD000000000000010;
          v54 = 0x800000022F78E420;
        }

        v48 &= v48 - 1;
        v92 = v53;
        v93 = v54;

        MEMORY[0x231900B10](0x746E756F43, 0xE500000000000000);

        v56 = v92;
        v55 = v93;
        if (!v7[2] || (v57 = sub_22F1229E8(v92, v93), (v58 & 1) == 0) || (v59 = *(v7[7] + 8 * v57), objc_opt_self(), (v60 = swift_dynamicCastObjCClass()) == 0))
        {

          v61 = sub_22F740B70();
          v62 = sub_22F7415E0();

          if (os_log_type_enabled(v61, v62))
          {
            v63 = swift_slowAlloc();
            v64 = swift_slowAlloc();
            v92 = v64;
            *v63 = 136315138;
            v65 = sub_22F145F20(v56, v55, &v92);

            *(v63 + 4) = v65;
            _os_log_impl(&dword_22F0FC000, v61, v62, "Unable to parse result count for %s as a NSNumber!", v63, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v64);
            v66 = v64;
            v45 = a1 + 64;
            MEMORY[0x2319033A0](v66, -1, -1);
            v67 = v63;
            v44 = a1;
            MEMORY[0x2319033A0](v67, -1, -1);
          }

          else
          {
          }

          v51 = v50;
          v49 = v90;
          continue;
        }

        break;
      }

      v68 = v60;
      v88 = v59;
      if (__OFADD__([v68 integerValue], 1))
      {
        goto LABEL_100;
      }

      v87 = sub_22F7417F0();
      v69 = swift_isUniquelyReferenced_nonNull_native();
      v92 = v7;
      v71 = sub_22F1229E8(v56, v55);
      v72 = v7[2];
      v73 = (v70 & 1) == 0;
      v74 = v72 + v73;
      if (__OFADD__(v72, v73))
      {
LABEL_101:
        __break(1u);
        goto LABEL_102;
      }

      if (v7[3] >= v74)
      {
        if (v69)
        {
          v44 = a1;
          if ((v70 & 1) == 0)
          {
            goto LABEL_92;
          }
        }

        else
        {
          v80 = v70;
          sub_22F1341C4();
          v81 = v80;
          v44 = a1;
          if ((v81 & 1) == 0)
          {
            goto LABEL_92;
          }
        }

LABEL_90:

        v7 = v92;
        v78 = v92[7];
        v79 = *(v78 + 8 * v71);
        *(v78 + 8 * v71) = v87;

        v49 = v90;
        continue;
      }

      break;
    }

    v75 = v70;
    sub_22F125718(v74, v69);
    v76 = sub_22F1229E8(v56, v55);
    if ((v75 & 1) != (v77 & 1))
    {
      goto LABEL_103;
    }

    v71 = v76;
    v44 = a1;
    if (v75)
    {
      goto LABEL_90;
    }

LABEL_92:
    v7 = v92;
    v92[(v71 >> 6) + 8] |= 1 << v71;
    v82 = (v7[6] + 16 * v71);
    *v82 = v56;
    v82[1] = v55;
    *(v7[7] + 8 * v71) = v87;

    v83 = v7[2];
    v36 = __OFADD__(v83, 1);
    v84 = v83 + 1;
    if (!v36)
    {
      v7[2] = v84;
      v49 = v90;
      continue;
    }

    break;
  }

LABEL_102:
  __break(1u);
LABEL_103:
  sub_22F7420C0();
  __break(1u);
}

void sub_22F243228(uint64_t a1)
{
  v1 = sub_22F14E718(MEMORY[0x277D84F90]);
  v2 = sub_22F740DF0();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_22F12FEE8(v2, 0x636E657265666E69, 0xED00006570795465, isUniquelyReferenced_nonNull_native);
  sub_22F120634(0, &qword_2810A8ED0, 0x277CCABB0);
  v4 = sub_22F7417F0();
  v5 = swift_isUniquelyReferenced_nonNull_native();
  v92 = v1;
  sub_22F12FEE8(v4, 0xD000000000000010, 0x800000022F792BD0, v5);
  v6 = 0;
  v7 = v1;
  do
  {
    v11 = &unk_2843D9058 + v6++;
    v12 = v11[32];
    v13 = 0xD000000000000020;
    v14 = 0xD00000000000001FLL;
    if (v12 == 8)
    {
      v14 = 0xD000000000000010;
    }

    v15 = 0x800000022F78E4D0;
    if (v12 == 8)
    {
      v15 = 0x800000022F78E4B0;
    }

    if (v12 != 7)
    {
      v13 = v14;
    }

    v16 = 0x800000022F78E480;
    if (v12 != 7)
    {
      v16 = v15;
    }

    v17 = 0xD000000000000022;
    if (v12 != 5)
    {
      v17 = 0x457265696C74756FLL;
    }

    v18 = 0xED0000797469746ELL;
    if (v12 == 5)
    {
      v18 = 0x800000022F78E440;
    }

    if (v12 <= 6)
    {
      v13 = v17;
      v16 = v18;
    }

    v19 = 0xD000000000000019;
    v20 = 0x746E656D6F4D6F6ELL;
    if (v12 != 3)
    {
      v20 = 0xD000000000000010;
    }

    v21 = 0x800000022F78E420;
    if (v12 == 3)
    {
      v21 = 0xE900000000000073;
    }

    if (v12 != 2)
    {
      v19 = v20;
    }

    v22 = 0x800000022F78E3F0;
    if (v12 != 2)
    {
      v22 = v21;
    }

    v23 = 0xD000000000000017;
    if (v12)
    {
      v23 = 0x6E65636552746F6ELL;
    }

    v24 = 0xEF6867756F6E4574;
    if (!v12)
    {
      v24 = 0x800000022F78E3C0;
    }

    if (v12 <= 1)
    {
      v19 = v23;
      v22 = v24;
    }

    v25 = v12 <= 4;
    if (v12 <= 4)
    {
      v26 = v19;
    }

    else
    {
      v26 = v13;
    }

    if (v25)
    {
      v27 = v22;
    }

    else
    {
      v27 = v16;
    }

    v92 = v26;
    v93 = v27;

    MEMORY[0x231900B10](0x746E756F43, 0xE500000000000000);

    v29 = v92;
    v28 = v27;
    v30 = sub_22F7417F0();
    v31 = swift_isUniquelyReferenced_nonNull_native();
    v92 = v7;
    v32 = sub_22F1229E8(v29, v28);
    v34 = v7[2];
    v35 = (v33 & 1) == 0;
    v36 = __OFADD__(v34, v35);
    v37 = v34 + v35;
    if (v36)
    {
      __break(1u);
      goto LABEL_98;
    }

    v38 = v33;
    if (v7[3] < v37)
    {
      sub_22F125718(v37, v31);
      v32 = sub_22F1229E8(v29, v28);
      if ((v38 & 1) != (v39 & 1))
      {
        goto LABEL_103;
      }

LABEL_43:
      if (v38)
      {
        goto LABEL_2;
      }

      goto LABEL_44;
    }

    if (v31)
    {
      goto LABEL_43;
    }

    v43 = v32;
    sub_22F1341C4();
    v32 = v43;
    if (v38)
    {
LABEL_2:
      v8 = v32;

      v7 = v92;
      v9 = v92[7];
      v10 = *(v9 + 8 * v8);
      *(v9 + 8 * v8) = v30;

      continue;
    }

LABEL_44:
    v7 = v92;
    v92[(v32 >> 6) + 8] |= 1 << v32;
    v40 = (v7[6] + 16 * v32);
    *v40 = v29;
    v40[1] = v28;
    *(v7[7] + 8 * v32) = v30;
    v41 = v7[2];
    v36 = __OFADD__(v41, 1);
    v42 = v41 + 1;
    if (v36)
    {
      goto LABEL_99;
    }

    v7[2] = v42;
  }

  while (v6 != 10);
  v44 = a1;
  v45 = a1 + 64;
  v46 = 1 << *(a1 + 32);
  v47 = -1;
  if (v46 < 64)
  {
    v47 = ~(-1 << v46);
  }

  v48 = v47 & *(a1 + 64);
  v49 = (v46 + 63) >> 6;

  v50 = 0;
  v90 = v49;
  while (2)
  {
    while (2)
    {
      v51 = v50;
      while (2)
      {
        if (!v48)
        {
          while (1)
          {
            v50 = v51 + 1;
            if (__OFADD__(v51, 1))
            {
              break;
            }

            if (v50 >= v49)
            {

              v85 = objc_opt_self();
              v86 = sub_22F740DF0();
              sub_22F120634(0, &qword_2810A8EC0, 0x277D82BB8);
              v91 = sub_22F740C80();
              [v85 sendEvent:v86 withPayload:v91];

              return;
            }

            v48 = *(v45 + 8 * v50);
            ++v51;
            if (v48)
            {
              goto LABEL_59;
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

        v50 = v51;
LABEL_59:
        v52 = *(*(v44 + 56) + (__clz(__rbit64(v48)) | (v50 << 6)));
        if (v52 > 4)
        {
          if (v52 <= 6)
          {
            if (v52 == 5)
            {
              v53 = 0xD000000000000022;
              v54 = 0x800000022F78E440;
            }

            else
            {
              v53 = 0x457265696C74756FLL;
              v54 = 0xED0000797469746ELL;
            }
          }

          else if (v52 == 7)
          {
            v53 = 0xD000000000000020;
            v54 = 0x800000022F78E480;
          }

          else if (v52 == 8)
          {
            v53 = 0xD000000000000010;
            v54 = 0x800000022F78E4B0;
          }

          else
          {
            v53 = 0xD00000000000001FLL;
            v54 = 0x800000022F78E4D0;
          }
        }

        else if (v52 <= 1)
        {
          v53 = 0x6E65636552746F6ELL;
          v54 = 0xEF6867756F6E4574;
          if (!v52)
          {
            v53 = 0xD000000000000017;
            v54 = 0x800000022F78E3C0;
          }
        }

        else if (v52 == 2)
        {
          v53 = 0xD000000000000019;
          v54 = 0x800000022F78E3F0;
        }

        else if (v52 == 3)
        {
          v53 = 0x746E656D6F4D6F6ELL;
          v54 = 0xE900000000000073;
        }

        else
        {
          v53 = 0xD000000000000010;
          v54 = 0x800000022F78E420;
        }

        v48 &= v48 - 1;
        v92 = v53;
        v93 = v54;

        MEMORY[0x231900B10](0x746E756F43, 0xE500000000000000);

        v56 = v92;
        v55 = v93;
        if (!v7[2] || (v57 = sub_22F1229E8(v92, v93), (v58 & 1) == 0) || (v59 = *(v7[7] + 8 * v57), objc_opt_self(), (v60 = swift_dynamicCastObjCClass()) == 0))
        {

          v61 = sub_22F740B70();
          v62 = sub_22F7415E0();

          if (os_log_type_enabled(v61, v62))
          {
            v63 = swift_slowAlloc();
            v64 = swift_slowAlloc();
            v92 = v64;
            *v63 = 136315138;
            v65 = sub_22F145F20(v56, v55, &v92);

            *(v63 + 4) = v65;
            _os_log_impl(&dword_22F0FC000, v61, v62, "Unable to parse result count for %s as a NSNumber!", v63, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v64);
            v66 = v64;
            v45 = a1 + 64;
            MEMORY[0x2319033A0](v66, -1, -1);
            v67 = v63;
            v44 = a1;
            MEMORY[0x2319033A0](v67, -1, -1);
          }

          else
          {
          }

          v51 = v50;
          v49 = v90;
          continue;
        }

        break;
      }

      v68 = v60;
      v88 = v59;
      if (__OFADD__([v68 integerValue], 1))
      {
        goto LABEL_100;
      }

      v87 = sub_22F7417F0();
      v69 = swift_isUniquelyReferenced_nonNull_native();
      v92 = v7;
      v71 = sub_22F1229E8(v56, v55);
      v72 = v7[2];
      v73 = (v70 & 1) == 0;
      v74 = v72 + v73;
      if (__OFADD__(v72, v73))
      {
LABEL_101:
        __break(1u);
        goto LABEL_102;
      }

      if (v7[3] >= v74)
      {
        if (v69)
        {
          v44 = a1;
          if ((v70 & 1) == 0)
          {
            goto LABEL_92;
          }
        }

        else
        {
          v80 = v70;
          sub_22F1341C4();
          v81 = v80;
          v44 = a1;
          if ((v81 & 1) == 0)
          {
            goto LABEL_92;
          }
        }

LABEL_90:

        v7 = v92;
        v78 = v92[7];
        v79 = *(v78 + 8 * v71);
        *(v78 + 8 * v71) = v87;

        v49 = v90;
        continue;
      }

      break;
    }

    v75 = v70;
    sub_22F125718(v74, v69);
    v76 = sub_22F1229E8(v56, v55);
    if ((v75 & 1) != (v77 & 1))
    {
      goto LABEL_103;
    }

    v71 = v76;
    v44 = a1;
    if (v75)
    {
      goto LABEL_90;
    }

LABEL_92:
    v7 = v92;
    v92[(v71 >> 6) + 8] |= 1 << v71;
    v82 = (v7[6] + 16 * v71);
    *v82 = v56;
    v82[1] = v55;
    *(v7[7] + 8 * v71) = v87;

    v83 = v7[2];
    v36 = __OFADD__(v83, 1);
    v84 = v83 + 1;
    if (!v36)
    {
      v7[2] = v84;
      v49 = v90;
      continue;
    }

    break;
  }

LABEL_102:
  __break(1u);
LABEL_103:
  sub_22F7420C0();
  __break(1u);
}

uint64_t sub_22F243B48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_22F73F690();
  v5 = *(v4 - 8);
  *&v6 = MEMORY[0x28223BE20](v4).n128_u64[0];
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [*(a1 + 16) universalStartDate];
  sub_22F73F640();

  sub_22F2507B8(&qword_2810AC708, 255, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
  v10 = sub_22F740DB0();
  v11 = *(v5 + 8);
  v11(v8, v4);
  if (v10)
  {
    v12 = 0;
  }

  else
  {
    v13 = [*(a1 + 16) universalStartDate];
    sub_22F73F640();

    v14 = sub_22F740DB0();
    v11(v8, v4);
    v12 = v14 ^ 1;
  }

  return v12 & 1;
}

uint64_t sub_22F243D0C(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_22F3F6724(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_22F243EB8(v6);
  return sub_22F741BB0();
}

uint64_t sub_22F243E0C(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v10 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = a3(v10);
    *a1 = v10;
  }

  v12 = *(v10 + 16);
  v14[0] = v10 + 32;
  v14[1] = v12;
  sub_22F24417C(v14, a2, a4, a5);
  return sub_22F741BB0();
}

void sub_22F243EB8(void *a1)
{
  v36 = sub_22F73F690();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v30 - v6;
  v8 = a1[1];
  v9 = sub_22F742000();
  if (v9 < v8)
  {
    if (v8 >= -1)
    {
      v10 = v9;
      v11 = v8 / 2;
      if (v8 <= 1)
      {
        v12 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for ImportantEntitiesGraphInferenceMoment();
        v12 = sub_22F741200();
        *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) = v11;
      }

      v29 = v12 & 0xFFFFFFFFFFFFFF8;
      v38[0] = (v12 & 0xFFFFFFFFFFFFFF8) + 32;
      v38[1] = v11;
      sub_22F2446DC(v38, v39, a1, v10);
      *(v29 + 16) = 0;

      return;
    }

    __break(1u);
    goto LABEL_19;
  }

  if (v8 < 0)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    return;
  }

  if (v8 >= 2)
  {
    v30 = v1;
    v31 = v8;
    v13 = (v3 + 8);
    v14 = -1;
    v15 = 1;
    v37 = *a1;
    v16 = v37;
    do
    {
      v33 = v15;
      v34 = v14;
      v17 = v37[v15];
      v32 = v16;
      v18 = v16;
      do
      {
        v19 = *v18;
        v20 = *(v17 + 16);

        v21 = [v20 universalStartDate];
        sub_22F73F640();

        v22 = [*(v19 + 16) universalStartDate];
        v23 = v35;
        sub_22F73F640();

        LOBYTE(v22) = sub_22F73F5D0();
        v24 = *v13;
        v25 = v23;
        v26 = v36;
        (*v13)(v25, v36);
        v24(v7, v26);

        if ((v22 & 1) == 0)
        {
          break;
        }

        if (!v37)
        {
          goto LABEL_20;
        }

        v27 = *v18;
        v17 = v18[1];
        *v18 = v17;
        v18[1] = v27;
        --v18;
      }

      while (!__CFADD__(v14++, 1));
      v15 = v33 + 1;
      v16 = v32 + 1;
      v14 = v34 - 1;
    }

    while (v33 + 1 != v31);
  }
}

void sub_22F24417C(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v82 = a2;
  v72 = sub_22F73F690();
  v8 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v71 = v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v70 = v62 - v11;
  v81 = sub_22F73F090();
  v76 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v69 = v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v68 = v62 - v14;
  MEMORY[0x28223BE20](v15);
  v75 = v62 - v16;
  MEMORY[0x28223BE20](v17);
  v83 = v62 - v18;
  v19 = a1[1];
  v20 = sub_22F742000();
  if (v20 < v19)
  {
    if (v19 >= -1)
    {
      v21 = v20;
      v22 = v19 / 2;
      if (v19 <= 1)
      {
        v23 = MEMORY[0x277D84F90];
      }

      else
      {
        a4(a3);
        v23 = sub_22F741200();
        *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) = v22;
      }

      v61 = v23 & 0xFFFFFFFFFFFFFF8;
      v84[0] = (v23 & 0xFFFFFFFFFFFFFF8) + 32;
      v84[1] = v22;
      sub_22F244F70(v84, v85, a1, v21, v82);
      *(v61 + 16) = 0;

      return;
    }

    __break(1u);
    goto LABEL_26;
  }

  if (v19 < 0)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    return;
  }

  if (v19 >= 2)
  {
    v62[1] = v4;
    v78 = v76 + 32;
    v79 = v76 + 16;
    v24 = *a1;
    v67 = (v8 + 8);
    v74 = (v76 + 8);
    v25 = -1;
    v26 = 1;
    v77 = v24;
    v63 = v19;
    do
    {
      v65 = v26;
      v66 = v25;
      v27 = v77[v26];
      v28 = v25;
      v64 = v24;
      do
      {
        v29 = *v82;
        if (!*(*v82 + 16))
        {
          break;
        }

        v30 = *v24;
        v31 = *(v27 + 24);
        v32 = *(v27 + 32);

        v33 = sub_22F1229E8(v31, v32);
        v35 = v34;

        if ((v35 & 1) == 0)
        {

          break;
        }

        v80 = v28;
        v37 = v75;
        v36 = v76;
        v38 = *(v76 + 72);
        v39 = *(v29 + 56) + v38 * v33;
        v40 = *(v76 + 16);
        v41 = v81;
        v40(v75, v39, v81);
        v42 = *(v36 + 32);
        v42(v83, v37, v41);
        v43 = *v82;
        if (*(*v82 + 16) && (v44 = *(v30 + 24), v45 = *(v30 + 32), , v73 = sub_22F1229E8(v44, v45), v47 = v46, , (v47 & 1) != 0))
        {
          v48 = *(v43 + 56) + v73 * v38;
          v49 = v69;
          v50 = v81;
          v40(v69, v48, v81);
          v51 = v68;
          v42(v68, v49, v50);
          v52 = v70;
          sub_22F73F060();
          v53 = v71;
          sub_22F73F060();
          LODWORD(v73) = sub_22F73F5D0();
          v54 = *v67;
          v55 = v53;
          v56 = v72;
          (*v67)(v55, v72);
          v54(v52, v56);
          v57 = *v74;
          (*v74)(v51, v50);
          v57(v83, v50);

          v58 = v80;
          if ((v73 & 1) == 0)
          {
            break;
          }
        }

        else
        {
          (*v74)(v83, v81);

          v58 = v80;
        }

        if (!v77)
        {
          goto LABEL_27;
        }

        v59 = *v24;
        v27 = v24[1];
        *v24 = v27;
        v24[1] = v59;
        --v24;
        v60 = __CFADD__(v58, 1);
        v28 = v58 + 1;
      }

      while (!v60);
      v26 = v65 + 1;
      v24 = v64 + 1;
      v25 = v66 - 1;
    }

    while (v65 + 1 != v63);
  }
}

void sub_22F2446DC(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = v4;
  v113 = a1;
  v122 = sub_22F73F690();
  MEMORY[0x28223BE20](v122);
  v121 = &v107 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v120 = &v107 - v12;
  v13 = a3[1];
  if (v13 < 1)
  {
    v15 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *v113;
    if (!*v113)
    {
      goto LABEL_127;
    }

    a4 = v15;
    v16 = a3;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v102 = a4;
    }

    else
    {
LABEL_121:
      v102 = sub_22F3F5F98(a4);
    }

    v123 = v102;
    v103 = *(v102 + 2);
    if (v103 >= 2)
    {
      while (*v16)
      {
        a4 = *&v102[16 * v103];
        v104 = v102;
        v105 = *&v102[16 * v103 + 24];
        sub_22F245D24((*v16 + 8 * a4), (*v16 + 8 * *&v102[16 * v103 + 16]), (*v16 + 8 * v105), v5);
        if (v6)
        {
          goto LABEL_99;
        }

        if (v105 < a4)
        {
          goto LABEL_114;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v104 = sub_22F3F5F98(v104);
        }

        if (v103 - 2 >= *(v104 + 2))
        {
          goto LABEL_115;
        }

        v106 = &v104[16 * v103];
        *v106 = a4;
        v106[1] = v105;
        v123 = v104;
        sub_22F3F5F0C(v103 - 1);
        v102 = v123;
        v103 = *(v123 + 2);
        if (v103 <= 1)
        {
          goto LABEL_99;
        }
      }

      goto LABEL_125;
    }

LABEL_99:

    return;
  }

  v14 = 0;
  v119 = (v11 + 8);
  v15 = MEMORY[0x277D84F90];
  v112 = a4;
  v108 = a3;
  while (1)
  {
    v16 = v14++;
    if (v14 < v13)
    {
      v117 = v13;
      v110 = v15;
      v111 = v6;
      v17 = *a3;
      v18 = *(*a3 + 8 * v14);
      v116 = 8 * v16;
      v19 = (v17 + 8 * v16);
      v20 = *v19;
      v5 = (v19 + 2);
      v21 = *(v18 + 16);

      v22 = [v21 universalStartDate];
      v23 = v120;
      sub_22F73F640();

      v24 = [*(v20 + 16) universalStartDate];
      v25 = v121;
      sub_22F73F640();

      LODWORD(v118) = sub_22F73F5D0();
      v26 = *v119;
      v27 = v122;
      (*v119)(v25, v122);
      v26(v23, v27);

      v109 = v16;
      v28 = (v16 + 2);
      while (1)
      {
        v14 = v117;
        if (v117 == v28)
        {
          break;
        }

        v29 = *(v5 - 8);
        v30 = *(*v5 + 16);

        v31 = [v30 universalStartDate];
        v32 = v120;
        sub_22F73F640();

        v33 = [*(v29 + 16) universalStartDate];
        v34 = v121;
        sub_22F73F640();

        LODWORD(v33) = sub_22F73F5D0() & 1;
        v35 = v34;
        v36 = v122;
        v26(v35, v122);
        v26(v32, v36);

        ++v28;
        v5 += 8;
        if ((v118 & 1) != v33)
        {
          v14 = (v28 - 1);
          break;
        }
      }

      v15 = v110;
      v6 = v111;
      a4 = v112;
      v16 = v109;
      v37 = v116;
      if (v118)
      {
        if (v14 < v109)
        {
          goto LABEL_118;
        }

        a3 = v108;
        if (v109 < v14)
        {
          v38 = 8 * v14 - 8;
          v39 = v14;
          v40 = v109;
          do
          {
            if (v40 != --v39)
            {
              v42 = *a3;
              if (!*a3)
              {
                goto LABEL_124;
              }

              v41 = *(v42 + v37);
              *(v42 + v37) = *(v42 + v38);
              *(v42 + v38) = v41;
            }

            v40 = (v40 + 1);
            v38 -= 8;
            v37 += 8;
          }

          while (v40 < v39);
        }
      }

      else
      {
        a3 = v108;
      }
    }

    v43 = a3[1];
    if (v14 < v43)
    {
      if (__OFSUB__(v14, v16))
      {
        goto LABEL_117;
      }

      if (v14 - v16 < a4)
      {
        v44 = (v16 + a4);
        if (__OFADD__(v16, a4))
        {
          goto LABEL_119;
        }

        if (v44 >= v43)
        {
          v44 = a3[1];
        }

        if (v44 < v16)
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (v14 != v44)
        {
          break;
        }
      }
    }

LABEL_36:
    if (v14 < v16)
    {
      goto LABEL_116;
    }

    v58 = v15;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v15 = v58;
    }

    else
    {
      v15 = sub_22F13D970(0, *(v58 + 2) + 1, 1, v58);
    }

    a4 = *(v15 + 2);
    v59 = *(v15 + 3);
    v5 = a4 + 1;
    if (a4 >= v59 >> 1)
    {
      v15 = sub_22F13D970((v59 > 1), a4 + 1, 1, v15);
    }

    *(v15 + 2) = v5;
    v60 = &v15[16 * a4];
    *(v60 + 4) = v16;
    *(v60 + 5) = v14;
    v61 = *v113;
    if (!*v113)
    {
      goto LABEL_126;
    }

    if (a4)
    {
      while (1)
      {
        v62 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v63 = *(v15 + 4);
          v64 = *(v15 + 5);
          v73 = __OFSUB__(v64, v63);
          v65 = v64 - v63;
          v66 = v73;
LABEL_56:
          if (v66)
          {
            goto LABEL_105;
          }

          v79 = &v15[16 * v5];
          v81 = *v79;
          v80 = *(v79 + 1);
          v82 = __OFSUB__(v80, v81);
          v83 = v80 - v81;
          v84 = v82;
          if (v82)
          {
            goto LABEL_108;
          }

          v85 = &v15[16 * v62 + 32];
          v87 = *v85;
          v86 = *(v85 + 1);
          v73 = __OFSUB__(v86, v87);
          v88 = v86 - v87;
          if (v73)
          {
            goto LABEL_111;
          }

          if (__OFADD__(v83, v88))
          {
            goto LABEL_112;
          }

          if (v83 + v88 >= v65)
          {
            if (v65 < v88)
            {
              v62 = v5 - 2;
            }

            goto LABEL_77;
          }

          goto LABEL_70;
        }

        v89 = &v15[16 * v5];
        v91 = *v89;
        v90 = *(v89 + 1);
        v73 = __OFSUB__(v90, v91);
        v83 = v90 - v91;
        v84 = v73;
LABEL_70:
        if (v84)
        {
          goto LABEL_107;
        }

        v92 = &v15[16 * v62];
        v94 = *(v92 + 4);
        v93 = *(v92 + 5);
        v73 = __OFSUB__(v93, v94);
        v95 = v93 - v94;
        if (v73)
        {
          goto LABEL_110;
        }

        if (v95 < v83)
        {
          goto LABEL_3;
        }

LABEL_77:
        a4 = v62 - 1;
        if (v62 - 1 >= v5)
        {
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
          goto LABEL_120;
        }

        if (!*a3)
        {
          goto LABEL_123;
        }

        v100 = v15;
        v5 = *&v15[16 * a4 + 32];
        v16 = *&v15[16 * v62 + 40];
        sub_22F245D24((*a3 + 8 * v5), (*a3 + 8 * *&v15[16 * v62 + 32]), (*a3 + 8 * v16), v61);
        if (v6)
        {
          goto LABEL_99;
        }

        if (v16 < v5)
        {
          goto LABEL_101;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v100 = sub_22F3F5F98(v100);
        }

        if (a4 >= *(v100 + 2))
        {
          goto LABEL_102;
        }

        v101 = &v100[16 * a4];
        *(v101 + 4) = v5;
        *(v101 + 5) = v16;
        v123 = v100;
        a4 = &v123;
        sub_22F3F5F0C(v62);
        v15 = v123;
        v5 = *(v123 + 2);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v67 = &v15[16 * v5 + 32];
      v68 = *(v67 - 64);
      v69 = *(v67 - 56);
      v73 = __OFSUB__(v69, v68);
      v70 = v69 - v68;
      if (v73)
      {
        goto LABEL_103;
      }

      v72 = *(v67 - 48);
      v71 = *(v67 - 40);
      v73 = __OFSUB__(v71, v72);
      v65 = v71 - v72;
      v66 = v73;
      if (v73)
      {
        goto LABEL_104;
      }

      v74 = &v15[16 * v5];
      v76 = *v74;
      v75 = *(v74 + 1);
      v73 = __OFSUB__(v75, v76);
      v77 = v75 - v76;
      if (v73)
      {
        goto LABEL_106;
      }

      v73 = __OFADD__(v65, v77);
      v78 = v65 + v77;
      if (v73)
      {
        goto LABEL_109;
      }

      if (v78 >= v70)
      {
        v96 = &v15[16 * v62 + 32];
        v98 = *v96;
        v97 = *(v96 + 1);
        v73 = __OFSUB__(v97, v98);
        v99 = v97 - v98;
        if (v73)
        {
          goto LABEL_113;
        }

        if (v65 < v99)
        {
          v62 = v5 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_56;
    }

LABEL_3:
    v13 = a3[1];
    a4 = v112;
    if (v14 >= v13)
    {
      goto LABEL_88;
    }
  }

  v110 = v15;
  v111 = v6;
  v118 = *a3;
  v45 = v118 + 8 * v14 - 8;
  v109 = v16;
  a4 = v16 - v14;
  v114 = v44;
LABEL_29:
  v116 = v45;
  v117 = v14;
  v5 = *(v118 + 8 * v14);
  v115 = a4;
  v46 = v45;
  while (1)
  {
    v47 = *v46;
    v48 = *(v5 + 16);

    v49 = [v48 universalStartDate];
    v50 = v120;
    sub_22F73F640();

    v51 = [*(v47 + 16) universalStartDate];
    v52 = v121;
    sub_22F73F640();

    LOBYTE(v51) = sub_22F73F5D0();
    v53 = *v119;
    v54 = v52;
    v55 = v122;
    (*v119)(v54, v122);
    v53(v50, v55);

    if ((v51 & 1) == 0)
    {
LABEL_28:
      v14 = v117 + 1;
      v45 = v116 + 8;
      a4 = v115 - 1;
      if ((v117 + 1) != v114)
      {
        goto LABEL_29;
      }

      v14 = v114;
      v15 = v110;
      v6 = v111;
      a3 = v108;
      v16 = v109;
      goto LABEL_36;
    }

    if (!v118)
    {
      break;
    }

    v56 = *v46;
    v5 = v46[1];
    *v46 = v5;
    v46[1] = v56;
    --v46;
    if (__CFADD__(a4++, 1))
    {
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
}

void sub_22F244F70(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5)
{
  v6 = v5;
  v196 = a5;
  v168 = a4;
  v169 = a1;
  v181 = sub_22F73F690();
  v8 = *(v181 - 8);
  MEMORY[0x28223BE20](v181);
  v180 = &v166 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v179 = &v166 - v11;
  v195 = sub_22F73F090();
  MEMORY[0x28223BE20](v195);
  v177 = &v166 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v176 = &v166 - v14;
  MEMORY[0x28223BE20](v15);
  v186 = &v166 - v16;
  MEMORY[0x28223BE20](v17);
  v193 = &v166 - v18;
  MEMORY[0x28223BE20](v19);
  v167 = &v166 - v20;
  MEMORY[0x28223BE20](v21);
  v166 = &v166 - v22;
  MEMORY[0x28223BE20](v23);
  v170 = &v166 - v24;
  MEMORY[0x28223BE20](v25);
  v172 = &v166 - v27;
  v183 = a3;
  v28 = a3[1];
  if (v28 < 1)
  {
    v30 = MEMORY[0x277D84F90];
LABEL_111:
    v31 = *v169;
    if (!*v169)
    {
      goto LABEL_150;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_113:
      v162 = v6;
      v197 = v30;
      v163 = *(v30 + 2);
      if (v163 >= 2)
      {
        while (*v183)
        {
          v164 = *&v30[16 * v163];
          v6 = *&v30[16 * v163 + 24];
          sub_22F2461C4((*v183 + 8 * v164), (*v183 + 8 * *&v30[16 * v163 + 16]), (*v183 + 8 * v6), v31, v196);
          if (v162)
          {
            goto LABEL_121;
          }

          if (v6 < v164)
          {
            goto LABEL_137;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v30 = sub_22F3F5F98(v30);
          }

          if (v163 - 2 >= *(v30 + 2))
          {
            goto LABEL_138;
          }

          v165 = &v30[16 * v163];
          *v165 = v164;
          *(v165 + 1) = v6;
          v197 = v30;
          sub_22F3F5F0C(v163 - 1);
          v30 = v197;
          v163 = *(v197 + 2);
          if (v163 <= 1)
          {
            goto LABEL_121;
          }
        }

        goto LABEL_148;
      }

LABEL_121:

      return;
    }

LABEL_144:
    v30 = sub_22F3F5F98(v30);
    goto LABEL_113;
  }

  v29 = 0;
  v191 = v26 + 32;
  v192 = v26 + 16;
  v178 = (v8 + 8);
  v187 = (v26 + 8);
  v30 = MEMORY[0x277D84F90];
  v188 = v26;
  while (2)
  {
    v31 = v29 + 1;
    v189 = v30;
    v173 = v29;
    if (v29 + 1 >= v28)
    {
LABEL_18:
      v68 = v168;
      goto LABEL_33;
    }

    v32 = *v183;
    v33 = *(*v183 + 8 * v31);
    v34 = *(*v183 + 8 * v29);

    LODWORD(v185) = sub_22F242558(v33, v34, v196);
    if (v6)
    {

      return;
    }

    v31 = v29 + 2;
    if (v29 + 2 >= v28)
    {
      v68 = v168;
      if (v185)
      {
LABEL_20:
        if (v31 < v29)
        {
          goto LABEL_141;
        }

LABEL_26:
        if (v29 < v31)
        {
          v69 = 8 * v31 - 8;
          v70 = 8 * v29;
          v71 = v31;
          v72 = v29;
          do
          {
            if (v72 != --v71)
            {
              v74 = *v183;
              if (!*v183)
              {
                goto LABEL_147;
              }

              v73 = *(v74 + v70);
              *(v74 + v70) = *(v74 + v69);
              *(v74 + v69) = v73;
            }

            ++v72;
            v69 -= 8;
            v70 += 8;
          }

          while (v72 < v71);
        }
      }

      goto LABEL_33;
    }

    v35 = v32 + 8 * v29 + 16;
    v36 = v185;
    v171 = 0;
    v194 = v28;
    do
    {
      v37 = *v196;
      if (!*(*v196 + 16))
      {
        goto LABEL_9;
      }

      v182 = v31;
      v38 = *(v35 - 8);
      v39 = *v35;
      v41 = *(*v35 + 24);
      v40 = *(*v35 + 32);

      v42 = sub_22F1229E8(v41, v40);
      v44 = v43;

      if ((v44 & 1) == 0)
      {

        v31 = v182;
        v28 = v194;
        v6 = v171;
LABEL_9:
        if (v36)
        {
          v68 = v168;
          v29 = v173;
          if (v31 < v173)
          {
            goto LABEL_141;
          }

          goto LABEL_26;
        }

        goto LABEL_10;
      }

      v190 = v39;
      v45 = *(v37 + 56);
      v46 = v188;
      v47 = *(v188 + 72);
      v48 = *(v188 + 16);
      v49 = v170;
      v50 = v195;
      v48(v170, v45 + v47 * v42, v195);
      v51 = *(v46 + 32);
      v51(v172, v49, v50);
      v52 = *v196;
      if (*(*v196 + 16) && (v54 = *(v38 + 24), v53 = *(v38 + 32), , v55 = sub_22F1229E8(v54, v53), v57 = v56, , (v57 & 1) != 0))
      {
        v58 = v167;
        v59 = v195;
        v48(v167, *(v52 + 56) + v55 * v47, v195);
        v60 = v166;
        v51(v166, v58, v59);
        v61 = v179;
        v62 = v172;
        sub_22F73F060();
        v63 = v180;
        sub_22F73F060();
        LODWORD(v184) = sub_22F73F5D0();
        v64 = *v178;
        v65 = v63;
        v66 = v181;
        (*v178)(v65, v181);
        v64(v61, v66);
        v67 = *v187;
        (*v187)(v60, v59);
        v67(v62, v59);

        v36 = v185;
        v6 = v171;
        v30 = v189;
        v31 = v182;
        v28 = v194;
        if ((v185 ^ v184))
        {
          goto LABEL_23;
        }
      }

      else
      {
        (*v187)(v172, v195);

        v6 = v171;
        v30 = v189;
        v31 = v182;
        v36 = v185;
        v28 = v194;
        if ((v185 & 1) == 0)
        {
          goto LABEL_18;
        }
      }

LABEL_10:
      ++v31;
      v35 += 8;
    }

    while (v28 != v31);
    v31 = v28;
LABEL_23:
    v68 = v168;
    v29 = v173;
    if (v36)
    {
      goto LABEL_20;
    }

LABEL_33:
    v75 = v183[1];
    if (v31 >= v75)
    {
      goto LABEL_58;
    }

    if (__OFSUB__(v31, v173))
    {
      goto LABEL_140;
    }

    if (v31 - v173 >= v68)
    {
LABEL_58:
      v77 = v173;
LABEL_59:
      if (v31 < v77)
      {
        goto LABEL_139;
      }

      v29 = v31;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_22F13D970(0, *(v30 + 2) + 1, 1, v30);
      }

      v117 = *(v30 + 2);
      v116 = *(v30 + 3);
      v118 = v117 + 1;
      if (v117 >= v116 >> 1)
      {
        v30 = sub_22F13D970((v116 > 1), v117 + 1, 1, v30);
      }

      *(v30 + 2) = v118;
      v119 = &v30[16 * v117];
      *(v119 + 4) = v173;
      *(v119 + 5) = v29;
      v120 = *v169;
      if (!*v169)
      {
        goto LABEL_149;
      }

      if (!v117)
      {
LABEL_3:
        v28 = v183[1];
        if (v29 >= v28)
        {
          goto LABEL_111;
        }

        continue;
      }

      while (1)
      {
        v31 = v118 - 1;
        if (v118 >= 4)
        {
          break;
        }

        if (v118 == 3)
        {
          v121 = *(v30 + 4);
          v122 = *(v30 + 5);
          v131 = __OFSUB__(v122, v121);
          v123 = v122 - v121;
          v124 = v131;
LABEL_79:
          if (v124)
          {
            goto LABEL_128;
          }

          v137 = &v30[16 * v118];
          v139 = *v137;
          v138 = *(v137 + 1);
          v140 = __OFSUB__(v138, v139);
          v141 = v138 - v139;
          v142 = v140;
          if (v140)
          {
            goto LABEL_131;
          }

          v143 = &v30[16 * v31 + 32];
          v145 = *v143;
          v144 = *(v143 + 1);
          v131 = __OFSUB__(v144, v145);
          v146 = v144 - v145;
          if (v131)
          {
            goto LABEL_134;
          }

          if (__OFADD__(v141, v146))
          {
            goto LABEL_135;
          }

          if (v141 + v146 >= v123)
          {
            if (v123 < v146)
            {
              v31 = v118 - 2;
            }

            goto LABEL_100;
          }

          goto LABEL_93;
        }

        v147 = &v30[16 * v118];
        v149 = *v147;
        v148 = *(v147 + 1);
        v131 = __OFSUB__(v148, v149);
        v141 = v148 - v149;
        v142 = v131;
LABEL_93:
        if (v142)
        {
          goto LABEL_130;
        }

        v150 = &v30[16 * v31];
        v152 = *(v150 + 4);
        v151 = *(v150 + 5);
        v131 = __OFSUB__(v151, v152);
        v153 = v151 - v152;
        if (v131)
        {
          goto LABEL_133;
        }

        if (v153 < v141)
        {
          goto LABEL_3;
        }

LABEL_100:
        v158 = v31 - 1;
        if (v31 - 1 >= v118)
        {
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
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
          goto LABEL_143;
        }

        if (!*v183)
        {
          goto LABEL_146;
        }

        v159 = *&v30[16 * v158 + 32];
        v160 = *&v30[16 * v31 + 40];
        sub_22F2461C4((*v183 + 8 * v159), (*v183 + 8 * *&v30[16 * v31 + 32]), (*v183 + 8 * v160), v120, v196);
        if (v6)
        {
          goto LABEL_121;
        }

        if (v160 < v159)
        {
          goto LABEL_124;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v30 = sub_22F3F5F98(v30);
        }

        if (v158 >= *(v30 + 2))
        {
          goto LABEL_125;
        }

        v161 = &v30[16 * v158];
        *(v161 + 4) = v159;
        *(v161 + 5) = v160;
        v197 = v30;
        sub_22F3F5F0C(v31);
        v30 = v197;
        v118 = *(v197 + 2);
        if (v118 <= 1)
        {
          goto LABEL_3;
        }
      }

      v125 = &v30[16 * v118 + 32];
      v126 = *(v125 - 64);
      v127 = *(v125 - 56);
      v131 = __OFSUB__(v127, v126);
      v128 = v127 - v126;
      if (v131)
      {
        goto LABEL_126;
      }

      v130 = *(v125 - 48);
      v129 = *(v125 - 40);
      v131 = __OFSUB__(v129, v130);
      v123 = v129 - v130;
      v124 = v131;
      if (v131)
      {
        goto LABEL_127;
      }

      v132 = &v30[16 * v118];
      v134 = *v132;
      v133 = *(v132 + 1);
      v131 = __OFSUB__(v133, v134);
      v135 = v133 - v134;
      if (v131)
      {
        goto LABEL_129;
      }

      v131 = __OFADD__(v123, v135);
      v136 = v123 + v135;
      if (v131)
      {
        goto LABEL_132;
      }

      if (v136 >= v128)
      {
        v154 = &v30[16 * v31 + 32];
        v156 = *v154;
        v155 = *(v154 + 1);
        v131 = __OFSUB__(v155, v156);
        v157 = v155 - v156;
        if (v131)
        {
          goto LABEL_136;
        }

        if (v123 < v157)
        {
          v31 = v118 - 2;
        }

        goto LABEL_100;
      }

      goto LABEL_79;
    }

    break;
  }

  if (__OFADD__(v173, v68))
  {
    goto LABEL_142;
  }

  if (v173 + v68 >= v75)
  {
    v76 = v183[1];
  }

  else
  {
    v76 = v173 + v68;
  }

  if (v76 < v173)
  {
LABEL_143:
    __break(1u);
    goto LABEL_144;
  }

  v77 = v173;
  if (v31 == v76)
  {
    goto LABEL_59;
  }

  v171 = v6;
  v190 = *v183;
  v78 = (v190 + 8 * v31 - 8);
  v79 = v173 - v31;
  v185 = v76;
LABEL_45:
  v182 = v31;
  v80 = v79;
  v81 = *(v190 + 8 * v31);
  v174 = v79;
  v175 = v78;
  while (1)
  {
    v82 = *v196;
    if (!*(*v196 + 16))
    {
      goto LABEL_44;
    }

    v194 = v80;
    v83 = *v78;
    v84 = *(v81 + 24);
    v85 = *(v81 + 32);

    v86 = sub_22F1229E8(v84, v85);
    v88 = v87;

    if ((v88 & 1) == 0)
    {

LABEL_44:
      v31 = v182 + 1;
      v78 = v175 + 1;
      v79 = v174 - 1;
      if (v182 + 1 == v76)
      {
        v31 = v76;
        v6 = v171;
        goto LABEL_58;
      }

      goto LABEL_45;
    }

    v89 = v188;
    v90 = *(v188 + 72);
    v91 = *(v82 + 56) + v90 * v86;
    v92 = *(v188 + 16);
    v93 = v186;
    v94 = v195;
    v92(v186, v91, v195);
    v95 = *(v89 + 32);
    v95(v193, v93, v94);
    v96 = *v196;
    if (*(*v196 + 16) && (v97 = *(v83 + 24), v98 = *(v83 + 32), , v184 = sub_22F1229E8(v97, v98), v100 = v99, , (v100 & 1) != 0))
    {
      v101 = *(v96 + 56) + v184 * v90;
      v102 = v177;
      v103 = v195;
      v92(v177, v101, v195);
      v104 = v176;
      v95(v176, v102, v103);
      v105 = v179;
      v106 = v193;
      sub_22F73F060();
      v107 = v180;
      sub_22F73F060();
      LODWORD(v184) = sub_22F73F5D0();
      v108 = *v178;
      v109 = v107;
      v110 = v181;
      (*v178)(v109, v181);
      v108(v105, v110);
      v111 = *v187;
      v112 = v195;
      (*v187)(v104, v195);
      v111(v106, v112);

      v30 = v189;
      v76 = v185;
      if ((v184 & 1) == 0)
      {
        goto LABEL_44;
      }
    }

    else
    {
      (*v187)(v193, v195);

      v30 = v189;
      v76 = v185;
    }

    v113 = v194;
    if (!v190)
    {
      break;
    }

    v114 = *v78;
    v81 = v78[1];
    *v78 = v81;
    v78[1] = v114;
    --v78;
    v115 = __CFADD__(v113, 1);
    v80 = v113 + 1;
    if (v115)
    {
      goto LABEL_44;
    }
  }

  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
}

uint64_t sub_22F245D24(char *a1, char *a2, char *a3, char *a4)
{
  v52 = sub_22F73F690();
  v8 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v51 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v50 = &v46 - v11;
  v12 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v12 = a2 - a1;
  }

  v13 = v12 >> 3;
  v14 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v14 = a3 - a2;
  }

  v15 = v14 >> 3;
  if (v13 >= v14 >> 3)
  {
    v53 = a1;
    a1 = a2;
    if (a4 != a2 || &a2[8 * v15] <= a4)
    {
      memmove(a4, a2, 8 * v15);
    }

    v55 = &a4[8 * v15];
    if (a3 - a2 >= 8 && a2 > v53)
    {
      v47 = a4;
      v48 = (v8 + 8);
LABEL_27:
      v46 = a1;
      v29 = a1 - 8;
      v30 = a3 - 8;
      v31 = v55;
      v49 = a1 - 8;
      do
      {
        v54 = v30;
        v32 = v30 + 8;
        v33 = *(v31 - 1);
        v31 -= 8;
        v34 = *v29;
        v35 = *(v33 + 16);

        v36 = [v35 universalStartDate];
        v37 = v50;
        sub_22F73F640();

        v38 = [*(v34 + 16) universalStartDate];
        v39 = v51;
        sub_22F73F640();

        LOBYTE(v38) = sub_22F73F5D0();
        v40 = *v48;
        v41 = v39;
        v42 = v52;
        (*v48)(v41, v52);
        v40(v37, v42);

        if (v38)
        {
          a4 = v47;
          a3 = v54;
          v44 = v49;
          if (v32 != v46)
          {
            *v54 = *v49;
          }

          if (v55 <= a4 || (a1 = v44, v44 <= v53))
          {
            a1 = v44;
            goto LABEL_39;
          }

          goto LABEL_27;
        }

        a4 = v47;
        v43 = v54;
        if (v32 != v55)
        {
          *v54 = *v31;
        }

        v30 = v43 - 8;
        v55 = v31;
        v29 = v49;
      }

      while (v31 > a4);
      v55 = v31;
      a1 = v46;
    }
  }

  else
  {
    if (a4 != a1 || &a1[8 * v13] <= a4)
    {
      memmove(a4, a1, 8 * v13);
    }

    v55 = &a4[8 * v13];
    if (a2 - a1 >= 8 && a2 < a3)
    {
      v54 = a3;
      v16 = (v8 + 8);
      while (1)
      {
        v53 = a1;
        v17 = *a4;
        v18 = *(*a2 + 16);

        v19 = [v18 universalStartDate];
        v20 = v50;
        sub_22F73F640();

        v21 = [*(v17 + 16) universalStartDate];
        v22 = v51;
        sub_22F73F640();

        LOBYTE(v21) = sub_22F73F5D0();
        v23 = *v16;
        v24 = v22;
        v25 = v52;
        (*v16)(v24, v52);
        v23(v20, v25);

        if ((v21 & 1) == 0)
        {
          break;
        }

        v26 = a2;
        v27 = v53;
        v28 = v53 == a2;
        a2 += 8;
        if (!v28)
        {
          goto LABEL_17;
        }

LABEL_18:
        a1 = v27 + 8;
        if (a4 >= v55 || a2 >= v54)
        {
          goto LABEL_39;
        }
      }

      v26 = a4;
      v27 = v53;
      v28 = v53 == a4;
      a4 += 8;
      if (v28)
      {
        goto LABEL_18;
      }

LABEL_17:
      *v27 = *v26;
      goto LABEL_18;
    }
  }

LABEL_39:
  if (a1 != a4 || a1 >= &a4[(v55 - a4 + (v55 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(a1, a4, 8 * ((v55 - a4) / 8));
  }

  return 1;
}

uint64_t sub_22F2461C4(char *a1, char *a2, char *a3, char *a4, uint64_t *a5)
{
  v127 = a5;
  v114 = sub_22F73F690();
  v9 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v113 = &v105[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v112 = &v105[-v12];
  v124 = sub_22F73F090();
  v120 = *(v124 - 8);
  MEMORY[0x28223BE20](v124);
  v110 = &v105[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14);
  v109 = &v105[-v15];
  MEMORY[0x28223BE20](v16);
  v111 = &v105[-v17];
  MEMORY[0x28223BE20](v18);
  v119 = &v105[-v19];
  MEMORY[0x28223BE20](v20);
  v108 = &v105[-v21];
  MEMORY[0x28223BE20](v22);
  v107 = &v105[-v23];
  MEMORY[0x28223BE20](v24);
  v116 = &v105[-v25];
  MEMORY[0x28223BE20](v26);
  v125 = &v105[-v27];
  v28 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v28 = a2 - a1;
  }

  v29 = v28 >> 3;
  v30 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v30 = a3 - a2;
  }

  v31 = v30 >> 3;
  if (v29 < v30 >> 3)
  {
    v32 = a1;
    if (a4 != a1 || &a1[8 * v29] <= a4)
    {
      memmove(a4, a1, 8 * v29);
    }

    v33 = &a4[8 * v29];
    if (a2 - a1 < 8)
    {
      goto LABEL_50;
    }

    v34 = a2;
    if (a2 >= a3)
    {
      goto LABEL_50;
    }

    v119 = (v120 + 16);
    v117 = v120 + 32;
    v110 = (v9 + 8);
    v115 = (v120 + 8);
    v123 = a3;
    v126 = &a4[8 * v29];
    while (1)
    {
      v35 = *v127;
      if (!*(*v127 + 16))
      {
        goto LABEL_19;
      }

      v36 = *a4;
      v37 = *(*v34 + 24);
      v38 = *(*v34 + 32);

      v39 = sub_22F1229E8(v37, v38);
      v41 = v40;

      if ((v41 & 1) == 0)
      {
        break;
      }

      v121 = a4;
      v122 = v32;
      v118 = v34;
      v42 = v120;
      v43 = *(v120 + 72);
      v44 = *(v35 + 56) + v43 * v39;
      v45 = *(v120 + 16);
      v46 = v116;
      v47 = v124;
      v45(v116, v44, v124);
      v48 = *(v42 + 32);
      v48(v125, v46, v47);
      v49 = *v127;
      if (*(*v127 + 16) && (v50 = *(v36 + 24), v51 = *(v36 + 32), , v52 = sub_22F1229E8(v50, v51), v54 = v53, , (v54 & 1) != 0))
      {
        v55 = *(v49 + 56) + v52 * v43;
        v56 = v108;
        v57 = v124;
        v45(v108, v55, v124);
        v58 = v107;
        v48(v107, v56, v57);
        v59 = v112;
        v60 = v125;
        sub_22F73F060();
        v61 = v113;
        sub_22F73F060();
        LODWORD(v111) = sub_22F73F5D0();
        v62 = *v110;
        v63 = v61;
        v64 = v114;
        (*v110)(v63, v114);
        v62(v59, v64);
        v65 = *v115;
        (*v115)(v58, v57);
        v65(v60, v57);

        a4 = v121;
        v32 = v122;
        v34 = v118;
        a3 = v123;
        v33 = v126;
        if ((v111 & 1) == 0)
        {
          goto LABEL_19;
        }
      }

      else
      {
        (*v115)(v125, v124);

        a4 = v121;
        v32 = v122;
        v34 = v118;
        a3 = v123;
        v33 = v126;
      }

      v66 = v34;
      v67 = v32 == v34;
      v34 += 8;
      if (!v67)
      {
        goto LABEL_20;
      }

LABEL_21:
      v32 += 8;
      if (a4 >= v33 || v34 >= a3)
      {
        goto LABEL_50;
      }
    }

    a3 = v123;
    v33 = v126;
LABEL_19:
    v66 = a4;
    v67 = v32 == a4;
    a4 += 8;
    if (v67)
    {
      goto LABEL_21;
    }

LABEL_20:
    *v32 = *v66;
    goto LABEL_21;
  }

  v122 = a1;
  if (a4 != a2 || &a2[8 * v31] <= a4)
  {
    memmove(a4, a2, 8 * v31);
  }

  v33 = &a4[8 * v31];
  if (a3 - a2 < 8)
  {
    v68 = a2;
    goto LABEL_53;
  }

  v68 = a2;
  if (a2 > v122)
  {
    v116 = (v120 + 32);
    v117 = v120 + 16;
    v106 = (v9 + 8);
    v107 = (v120 + 8);
    v121 = a4;
    while (1)
    {
      v118 = v68;
      v32 = v68 - 8;
      a3 -= 8;
      v69 = v33;
      v108 = v68 - 8;
      while (1)
      {
        v71 = *(v69 - 1);
        v69 -= 8;
        v70 = v71;
        v72 = *v127;
        if (!*(*v127 + 16))
        {
          goto LABEL_43;
        }

        v126 = v33;
        v73 = *v32;
        v74 = *(v70 + 24);
        v75 = *(v70 + 32);

        v125 = v73;

        v76 = sub_22F1229E8(v74, v75);
        v78 = v77;

        if ((v78 & 1) == 0)
        {

          v33 = v126;
          goto LABEL_43;
        }

        v123 = a3;
        v79 = v120;
        v80 = *(v120 + 72);
        v81 = *(v72 + 56) + v80 * v76;
        v82 = *(v120 + 16);
        v83 = v111;
        v84 = v124;
        v82(v111, v81, v124);
        v85 = *(v79 + 32);
        v85(v119, v83, v84);
        v86 = *v127;
        if (!*(*v127 + 16))
        {
          break;
        }

        v87 = *(v125 + 3);
        v88 = *(v125 + 4);

        v89 = sub_22F1229E8(v87, v88);
        v91 = v90;

        if ((v91 & 1) == 0)
        {
          break;
        }

        v92 = *(v86 + 56) + v89 * v80;
        v93 = v110;
        v94 = v124;
        v82(v110, v92, v124);
        v95 = v109;
        v85(v109, v93, v94);
        v96 = v112;
        v97 = v119;
        sub_22F73F060();
        v98 = v113;
        sub_22F73F060();
        LODWORD(v115) = sub_22F73F5D0();
        v99 = *v106;
        v100 = v98;
        v101 = v114;
        (*v106)(v100, v114);
        v99(v96, v101);
        v102 = *v107;
        (*v107)(v95, v94);
        v102(v97, v94);

        a4 = v121;
        v103 = v122;
        a3 = v123;
        v33 = v126;
        v32 = v108;
        if (v115)
        {
          goto LABEL_46;
        }

LABEL_43:
        if (a3 + 8 != v33)
        {
          *a3 = *v69;
        }

        a3 -= 8;
        v33 = v69;
        if (v69 <= a4)
        {
          v33 = v69;
          v68 = v118;
          goto LABEL_53;
        }
      }

      (*v107)(v119, v124);

      a4 = v121;
      v103 = v122;
      a3 = v123;
      v33 = v126;
      v32 = v108;
LABEL_46:
      if (a3 + 8 != v118)
      {
        *a3 = *v32;
      }

      if (v33 > a4)
      {
        v68 = v32;
        if (v32 > v103)
        {
          continue;
        }
      }

LABEL_50:
      v68 = v32;
      break;
    }
  }

LABEL_53:
  if (v68 != a4 || v68 >= &a4[(v33 - a4 + (v33 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v68, a4, 8 * ((v33 - a4) / 8));
  }

  return 1;
}

uint64_t sub_22F246AE8(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 16) localIdentifier];
  v4 = sub_22F740E20();
  v6 = v5;

  v7 = [*(a2 + 16) localIdentifier];
  v8 = sub_22F740E20();
  v10 = v9;

  if (v4 == v8 && v6 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_22F742040();
  }

  return v12 & 1;
}

uint64_t sub_22F246BB0(unint64_t a1, uint64_t *a2)
{
  v22 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
LABEL_26:
    v16 = a1;
    v2 = sub_22F741A00();
    a1 = v16;
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v17 = a1;
      v3 = 0;
      v19 = a1 & 0xFFFFFFFFFFFFFF8;
      v20 = a1 & 0xC000000000000001;
      v18 = a1 + 32;
      while (1)
      {
        if (v20)
        {
          v4 = MEMORY[0x2319016F0](v3, v17);
          v5 = __OFADD__(v3++, 1);
          if (v5)
          {
LABEL_23:
            __break(1u);
            return v22;
          }
        }

        else
        {
          if (v3 >= *(v19 + 16))
          {
            __break(1u);
            goto LABEL_26;
          }

          v4 = *(v18 + 8 * v3);

          v5 = __OFADD__(v3++, 1);
          if (v5)
          {
            goto LABEL_23;
          }
        }

        v6 = *a2;
        if (*(*a2 + 16))
        {
          v7 = *(v4 + 24);
          v8 = *(v4 + 32);
          sub_22F742170();

          sub_22F740D60();
          v9 = sub_22F7421D0();
          v10 = -1 << *(v6 + 32);
          v11 = v9 & ~v10;
          if ((*(v6 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
          {
            v12 = ~v10;
            while (1)
            {
              v13 = (*(v6 + 48) + 16 * v11);
              v14 = *v13 == v7 && v13[1] == v8;
              if (v14 || (sub_22F742040() & 1) != 0)
              {
                break;
              }

              v11 = (v11 + 1) & v12;
              if (((*(v6 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
              {
                goto LABEL_4;
              }
            }

            goto LABEL_6;
          }

LABEL_4:
        }

        sub_22F741BA0();
        sub_22F741BE0();
        sub_22F741BF0();
        a1 = sub_22F741BB0();
LABEL_6:
        if (v3 == v2)
        {
          return v22;
        }
      }
    }
  }

  return MEMORY[0x277D84F90];
}

void *sub_22F246DE0(uint64_t a1, unint64_t a2, void (*a3)(double), uint64_t a4, int a5)
{
  LODWORD(v5) = a5;
  v562 = sub_22F73F690();
  v10 = *(v562 - 8);
  MEMORY[0x28223BE20](v562);
  *&v558 = &v512 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v512 - v13;
  MEMORY[0x28223BE20](v15);
  v536 = &v512 - v16;
  MEMORY[0x28223BE20](v17);
  v546 = &v512 - v18;
  MEMORY[0x28223BE20](v19);
  v545 = &v512 - v20;
  MEMORY[0x28223BE20](v21);
  v529 = &v512 - v22;
  MEMORY[0x28223BE20](v23);
  v528 = &v512 - v24;
  MEMORY[0x28223BE20](v25);
  v531 = &v512 - v26;
  MEMORY[0x28223BE20](v27);
  v530 = &v512 - v28;
  MEMORY[0x28223BE20](v29);
  v564 = &v512 - v30;
  MEMORY[0x28223BE20](v31);
  v572 = &v512 - v32;
  v565 = sub_22F73F090();
  v541 = *(v565 - 8);
  MEMORY[0x28223BE20](v565);
  v534 = (&v512 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v34);
  v543 = (&v512 - v35);
  MEMORY[0x28223BE20](v36);
  v542 = &v512 - v37;
  MEMORY[0x28223BE20](v38);
  v535 = &v512 - v39;
  MEMORY[0x28223BE20](v40);
  v42 = (&v512 - v41);
  MEMORY[0x28223BE20](v43);
  v547 = &v512 - v44;
  MEMORY[0x28223BE20](v45);
  v532 = &v512 - v46;
  MEMORY[0x28223BE20](v47);
  v552 = &v512 - v48;
  v537 = sub_22F740B90();
  v538 = *(v537 - 8);
  MEMORY[0x28223BE20](v537);
  v50 = (v512.n128_u64 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0));
  v51 = swift_slowAlloc();
  *v51 = 0;
  v555 = a4;
  v556 = a3;
  a3(0.0);
  v540 = v51;
  if (*v51 == 1)
  {
    v52 = MEMORY[0x277D84F90];

    return sub_22F14E740(v52);
  }

  v553 = v42;
  *&v522 = v10;
  v527 = v14;
  sub_22F740B80();
  swift_beginAccess();
  v54 = *(a1 + 24);
  v55 = v54 >> 62;
  if (!(v54 >> 62))
  {
    v56 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v56)
    {
      goto LABEL_7;
    }

LABEL_309:
    v475 = v50;
    v476 = sub_22F740B70();
    v477 = sub_22F7415D0();
    if (os_log_type_enabled(v476, v477))
    {
      v478 = swift_slowAlloc();
      *v478 = 0;
      _os_log_impl(&dword_22F0FC000, v476, v477, "No entities found in the container, returning...", v478, 2u);
      MEMORY[0x2319033A0](v478, -1, -1);
    }

    v50 = sub_22F14E740(MEMORY[0x277D84F90]);
    (*(v538 + 8))(v475, v537);
    return v50;
  }

LABEL_308:
  v56 = sub_22F741A00();
  if (!v56)
  {
    goto LABEL_309;
  }

LABEL_7:
  v513 = v5;
  swift_bridgeObjectRetain_n();
  v57 = sub_22F740B70();
  v58 = sub_22F7415D0();
  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    *v59 = 134217984;
    if (v55)
    {
      v60 = sub_22F741A00();
    }

    else
    {
      v60 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v59 + 4) = v60;

    _os_log_impl(&dword_22F0FC000, v57, v58, "There are %ld potential entities.", v59, 0xCu);
    MEMORY[0x2319033A0](v59, -1, -1);
  }

  else
  {
  }

  swift_beginAccess();

  v533 = sub_22F24198C(v520);
  v571 = *(a2 + 16);
  v61 = v571 / 2;
  if (v571 / 2 <= 1)
  {
    v61 = 1;
  }

  *&v524 = v61;
  v62 = MEMORY[0x277D84F90];
  v579 = MEMORY[0x277D84F90];
  v519 = sub_22F14E83C(MEMORY[0x277D84F90]);
  v578 = v519;
  v63 = sub_22F14E214(v62);
  if (v55)
  {
    v64 = sub_22F741A00();
  }

  else
  {
    v64 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v554 = v63;
  v573 = v50;
  v567 = a1;
  v561 = a2;
  v566 = v54;
  if (v64)
  {
    v65 = 0.3 / v56;
    v5 = OBJC_IVAR____TtC11PhotosGraph34ImportantEntitiesChildrenContainer_latestMomentDatetime;
    v569 = v54 & 0xC000000000000001;

    swift_beginAccess();
    v549 = v5;
    swift_beginAccess();
    a2 = 0;
    v570 = 0;
    v551 = v54 & 0xFFFFFFFFFFFFFF8;
    v548 = (v522 + 16);
    v559 = (v522 + 8);
    v523 = (v541 + 16);
    v539 = (v541 + 8);
    v66 = 0.0;
    v50 = MEMORY[0x277D84F98];
    v67.n128_u64[0] = 134218498;
    v550 = v67;
    v67.n128_u64[0] = 136315138;
    v521 = v67;
    v67.n128_u64[0] = 134219010;
    v514 = v67;
    v67.n128_u64[0] = 136315394;
    v512 = v67;
    v525 = MEMORY[0x277D84F90];
    v568 = v64;
    while (1)
    {
      if (v569)
      {
        v68 = MEMORY[0x2319016F0](a2, v54);
        v69 = (a2 + 1);
        if (__OFADD__(a2, 1))
        {
          goto LABEL_292;
        }
      }

      else
      {
        if (a2 >= *(v551 + 16))
        {
          goto LABEL_294;
        }

        v68 = *(v54 + 8 * a2 + 32);

        v69 = (a2 + 1);
        if (__OFADD__(a2, 1))
        {
LABEL_292:
          __break(1u);
LABEL_293:
          __break(1u);
LABEL_294:
          __break(1u);
LABEL_295:
          __break(1u);
LABEL_296:
          __break(1u);
LABEL_297:
          __break(1u);
LABEL_298:
          __break(1u);
LABEL_299:
          __break(1u);
LABEL_300:
          __break(1u);
LABEL_301:
          __break(1u);
LABEL_302:
          __break(1u);
LABEL_303:
          __break(1u);
LABEL_304:
          __break(1u);
LABEL_305:
          __break(1u);
LABEL_306:
          __break(1u);
LABEL_307:
          __break(1u);
          goto LABEL_308;
        }
      }

      v574 = v69;
      v70 = *(a1 + 32);
      v71 = *(v70 + 16);
      v575 = v50;
      if (!v71)
      {
        goto LABEL_38;
      }

      v72 = *(v68 + 24);
      v55 = *(v68 + 32);

      v73 = sub_22F1229E8(v72, v55);
      v75 = v74;

      if ((v75 & 1) == 0)
      {

        v77 = MEMORY[0x277D84F90];
        v50 = v575;
        goto LABEL_42;
      }

      v5 = *(*(v70 + 56) + 8 * v73);

      v76 = (v5 & 0xC000000000000001) != 0 ? sub_22F741A00() : *(v5 + 16);
      v50 = v575;
      if (!v76)
      {
        break;
      }

      if (v76 < 1)
      {
        v77 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB13D0, &qword_22F7717F0);
        v77 = swift_allocObject();
        v78 = _swift_stdlib_malloc_size(v77);
        v79 = v78 - 32;
        if (v78 < 32)
        {
          v79 = v78 - 25;
        }

        *(v77 + 16) = v76;
        *(v77 + 24) = (2 * (v79 >> 3)) | 1;
      }

      v55 = sub_22F11A590(&v576, (v77 + 32), v76, v5);
      sub_22F0FF590(v576);
      if (v55 != v76)
      {
        goto LABEL_301;
      }

LABEL_42:
      v80 = v572;
      if (v77 >> 62)
      {
        if (sub_22F741A00() < v571)
        {
LABEL_44:

          v82 = sub_22F740B70();
          v83 = sub_22F7415D0();
          if (os_log_type_enabled(v82, v83))
          {
            v84 = swift_slowAlloc();
            v85 = swift_slowAlloc();
            v576 = v85;
            *v84 = v550.n128_u32[0];
            *(v84 + 4) = v571;
            *(v84 + 12) = 2080;
            v87 = *(v68 + 24);
            v86 = *(v68 + 32);

            v88 = sub_22F145F20(v87, v86, &v576);

            *(v84 + 14) = v88;
            *(v84 + 22) = 2048;
            if (v77 >> 62)
            {
              v89 = sub_22F741A00();
            }

            else
            {
              v89 = *((v77 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            *(v84 + 24) = v89;

            _os_log_impl(&dword_22F0FC000, v82, v83, "After filtering for %ld minimum moments, entity %s has been cut, with only %ld moments.", v84, 0x20u);
            __swift_destroy_boxed_opaque_existential_0(v85);
            MEMORY[0x2319033A0](v85, -1, -1);
            MEMORY[0x2319033A0](v84, -1, -1);

            a1 = v567;
            v54 = v566;
            v50 = v575;
          }

          else
          {

            swift_bridgeObjectRelease_n();
          }

          v55 = *(v68 + 24);
          v5 = *(v68 + 32);

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v576 = v50;
          v157 = sub_22F1229E8(v55, v5);
          v159 = v50;
          v160 = v50[2];
          v161 = (v158 & 1) == 0;
          v162 = __OFADD__(v160, v161);
          v163 = v160 + v161;
          if (v162)
          {
            goto LABEL_293;
          }

          v164 = v158;
          if (v159[3] < v163)
          {
            sub_22F1259D0(v163, isUniquelyReferenced_nonNull_native);
            v157 = sub_22F1229E8(v55, v5);
            if ((v164 & 1) != (v165 & 1))
            {
              goto LABEL_381;
            }

            goto LABEL_71;
          }

          if (isUniquelyReferenced_nonNull_native)
          {
LABEL_71:
            if ((v164 & 1) == 0)
            {
              goto LABEL_111;
            }
          }

          else
          {
            v227 = v157;
            sub_22F134340();
            v157 = v227;
            if ((v164 & 1) == 0)
            {
LABEL_111:
              v50 = v576;
              *(v576 + 8 * (v157 >> 6) + 64) |= 1 << v157;
              v228 = (v50[6] + 16 * v157);
              *v228 = v55;
              v228[1] = v5;
              *(v50[7] + v157) = 4;

              v229 = v50[2];
              v162 = __OFADD__(v229, 1);
              v230 = v229 + 1;
              if (v162)
              {
                goto LABEL_298;
              }

LABEL_117:
              v50[2] = v230;
              goto LABEL_118;
            }
          }

          v166 = v157;

          v50 = v576;
          *(*(v576 + 56) + v166) = 4;
          goto LABEL_107;
        }

        v204 = sub_22F741A00();
        if (v204)
        {
          v205 = v204;
          v81 = sub_22F120B48();

          sub_22F3CC8CC(v81 + 32, v205, v77);
          v55 = v206;

          v284 = v55 == v205;
          v80 = v572;
          if (!v284)
          {
            goto LABEL_379;
          }
        }

        else
        {
          v81 = MEMORY[0x277D84F90];
        }
      }

      else
      {
        v81 = v77 & 0xFFFFFFFFFFFFFF8;
        if (*((v77 & 0xFFFFFFFFFFFFFF8) + 0x10) < v571)
        {
          goto LABEL_44;
        }
      }

      v576 = v81;
      v90 = v570;
      sub_22F243D0C(&v576);
      v91 = &v580;
      v570 = v90;
      if (v90)
      {
        goto LABEL_382;
      }

      v92 = v576;
      if ((v576 & 0x8000000000000000) != 0 || (v576 & 0x4000000000000000) != 0)
      {
        v207 = v576;
        v5 = sub_22F741A00();
        v92 = v207;
        v80 = v572;
        if (!v5)
        {
LABEL_97:

          v208 = sub_22F740B70();
          v209 = sub_22F7415E0();
          if (os_log_type_enabled(v208, v209))
          {
            v210 = swift_slowAlloc();
            v211 = swift_slowAlloc();
            v576 = v211;
            *v210 = v521.n128_u32[0];
            v212 = *(v68 + 24);
            v213 = *(v68 + 32);

            v214 = sub_22F145F20(v212, v213, &v576);
            v54 = v566;

            *(v210 + 4) = v214;
            _os_log_impl(&dword_22F0FC000, v208, v209, "Unable to find first moment for entity with uuid %s", v210, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v211);
            v215 = v211;
            v50 = v575;
            MEMORY[0x2319033A0](v215, -1, -1);
            MEMORY[0x2319033A0](v210, -1, -1);
          }

          else
          {
          }

          v55 = *(v68 + 24);
          v5 = *(v68 + 32);

          v216 = swift_isUniquelyReferenced_nonNull_native();
          v576 = v50;
          v217 = sub_22F1229E8(v55, v5);
          v219 = v50;
          v220 = v50[2];
          v221 = (v218 & 1) == 0;
          v162 = __OFADD__(v220, v221);
          v222 = v220 + v221;
          if (v162)
          {
            goto LABEL_302;
          }

          v223 = v218;
          if (v219[3] < v222)
          {
            sub_22F1259D0(v222, v216);
            v217 = sub_22F1229E8(v55, v5);
            if ((v223 & 1) != (v224 & 1))
            {
              goto LABEL_381;
            }

            goto LABEL_105;
          }

          if (v216)
          {
LABEL_105:
            if ((v223 & 1) == 0)
            {
              goto LABEL_116;
            }
          }

          else
          {
            v231 = v217;
            sub_22F134340();
            v217 = v231;
            if ((v223 & 1) == 0)
            {
LABEL_116:
              v50 = v576;
              *(v576 + 8 * (v217 >> 6) + 64) |= 1 << v217;
              v232 = (v50[6] + 16 * v217);
              *v232 = v55;
              v232[1] = v5;
              *(v50[7] + v217) = 3;

              v233 = v50[2];
              v162 = __OFADD__(v233, 1);
              v230 = v233 + 1;
              if (v162)
              {
                goto LABEL_306;
              }

              goto LABEL_117;
            }
          }

          v225 = v217;

          v50 = v576;
          *(*(v576 + 56) + v225) = 3;
LABEL_107:

          goto LABEL_118;
        }
      }

      else
      {
        v5 = *(v576 + 16);
        if (!v5)
        {
          goto LABEL_97;
        }
      }

      v560 = a2;
      if ((v92 & 0xC000000000000001) != 0)
      {
        v226 = v92;
        v563 = MEMORY[0x2319016F0](0);
        if (__OFSUB__(v5, 1))
        {
          goto LABEL_380;
        }

        v95 = MEMORY[0x2319016F0](v5 - 1, v226);

        v80 = v572;
      }

      else
      {
        v93 = *(v92 + 16);
        if (!v93)
        {
          goto LABEL_295;
        }

        v94 = v5 - 1;
        if (__OFSUB__(v5, 1))
        {
          goto LABEL_296;
        }

        if (v94 >= v93)
        {
          goto LABEL_297;
        }

        v95 = *(v92 + 32 + 8 * v94);
        v563 = *(v92 + 32);
      }

      v96 = [*(v95 + 16) universalStartDate];
      sub_22F73F640();

      v97 = v558;
      v98 = v80;
      v99 = v562;
      (*v548)(v558, a1 + v549, v562);
      v100 = v561;
      v101 = *v561;
      v102 = v564;
      sub_22F73F5E0();
      v103 = *v559;
      (*v559)(v97, v99);
      LOBYTE(v97) = sub_22F73F5D0();
      v103(v102, v99);
      v557 = v103;
      v103(v98, v99);
      if (v97)
      {

        swift_retain_n();

        v104 = sub_22F740B70();
        v105 = sub_22F7415D0();
        v106 = v95;
        if (os_log_type_enabled(v104, v105))
        {
          v107 = swift_slowAlloc();
          v108 = swift_slowAlloc();
          v576 = v108;
          *v107 = v550.n128_u32[0];
          *(v107 + 4) = v101 / 86400.0;
          *(v107 + 12) = 2080;
          v109 = *(v68 + 24);
          v110 = *(v68 + 32);

          v111 = sub_22F145F20(v109, v110, &v576);

          *(v107 + 14) = v111;
          *(v107 + 22) = 2080;
          v112 = [*(v106 + 16) universalStartDate];
          v113 = v572;
          sub_22F73F640();

          sub_22F2507B8(&qword_2810AC6F8, 255, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
          v114 = v562;
          v115 = sub_22F742010();
          v117 = v116;

          v557(v113, v114);
          v118 = sub_22F145F20(v115, v117, &v576);

          *(v107 + 24) = v118;
          _os_log_impl(&dword_22F0FC000, v104, v105, "After filtering for entities with a moment in the last %f days, entity %s has been cut, with a most recent moment at %s", v107, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x2319033A0](v108, -1, -1);
          MEMORY[0x2319033A0](v107, -1, -1);
        }

        else
        {
        }

        v54 = v566;
        a2 = v560;
        v5 = *(v68 + 24);
        v55 = *(v68 + 32);

        v167 = v575;
        v168 = swift_isUniquelyReferenced_nonNull_native();
        v576 = v167;
        sub_22F1302A0(1, v5, v55, v168);

LABEL_80:
        v50 = v576;
        a1 = v567;
        goto LABEL_118;
      }

      v119 = [*(v563 + 16) universalStartDate];
      sub_22F73F640();

      v544 = v95;
      v120 = [*(v95 + 16) universalStartDate];
      sub_22F73F640();

      v121 = v553;
      sub_22F73F040();
      sub_22F73F080();
      v122 = v100[1];
      if (v123 < v122)
      {

        v124 = *v523;
        v125 = v535;
        v126 = v565;
        (*v523)(v535, v121, v565);
        v127 = v542;
        v124(v542, v121, v126);
        v128 = v543;
        v124(v543, v121, v126);

        v129 = sub_22F740B70();
        v130 = sub_22F7415D0();

        v131 = os_log_type_enabled(v129, v130);
        v132 = v539;
        v526 = v539 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        if (v131)
        {
          v133 = swift_slowAlloc();
          v517 = v129;
          v134 = v133;
          v518 = swift_slowAlloc();
          v576 = v518;
          *v134 = v514.n128_u32[0];
          *(v134 + 4) = v122 / 86400.0;
          *(v134 + 12) = 2080;
          v135 = *(v68 + 24);
          v136 = *(v68 + 32);

          v137 = sub_22F145F20(v135, v136, &v576);

          *(v134 + 14) = v137;
          *(v134 + 22) = 2080;
          v138 = v572;
          sub_22F73F060();
          v515 = sub_22F2507B8(&qword_2810AC6F8, 255, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
          v139 = v562;
          v140 = sub_22F742010();
          v141 = v125;
          v143 = v142;
          v516 = v130;
          v557(v138, v139);
          v144 = *v539;
          (*v539)(v141, v126);
          v145 = sub_22F145F20(v140, v143, &v576);

          *(v134 + 24) = v145;
          *(v134 + 32) = 2080;
          v146 = v542;
          sub_22F73F030();
          v147 = sub_22F742010();
          v149 = v148;
          v557(v138, v139);
          v144(v146, v126);
          v150 = sub_22F145F20(v147, v149, &v576);

          *(v134 + 34) = v150;
          *(v134 + 42) = 2048;
          v151 = v543;
          sub_22F73F080();
          v153 = v152;
          v144(v151, v126);
          *(v134 + 44) = v153 / 86400.0;
          v154 = v517;
          _os_log_impl(&dword_22F0FC000, v517, v516, "After filtering for entities with a lifespan of at least %f days, entity %s has been cut, with a lifespan of [%s, %s] that covers %f seconds.", v134, 0x34u);
          v155 = v518;
          swift_arrayDestroy();
          MEMORY[0x2319033A0](v155, -1, -1);
          MEMORY[0x2319033A0](v134, -1, -1);
        }

        else
        {

          v144 = *v132;
          (*v132)(v128, v126);
          v144(v127, v126);
          v144(v125, v126);
        }

        v54 = v566;
        a2 = v560;
        v5 = *(v68 + 24);
        v55 = *(v68 + 32);

        v181 = v575;
        v182 = swift_isUniquelyReferenced_nonNull_native();
        v576 = v181;
        sub_22F1302A0(2, v5, v55, v182);

        v144(v553, v126);
        goto LABEL_80;
      }

      v169 = sub_22F24198C(v77);

      sub_22F241D34(v533, v169, v524, v573, sub_22F250880);
      v171 = v170;

      v54 = v566;
      if (v171 > 1.0)
      {

        v172 = sub_22F740B70();
        v173 = sub_22F7415E0();
        v174 = os_log_type_enabled(v172, v173);
        v175 = v575;
        a1 = v567;
        if (v174)
        {
          v176 = swift_slowAlloc();
          v177 = swift_slowAlloc();
          v576 = v177;
          *v176 = v512.n128_u32[0];
          v178 = *(v68 + 24);
          v179 = *(v68 + 32);

          v180 = sub_22F145F20(v178, v179, &v576);
          a1 = v567;

          *(v176 + 4) = v180;
          v54 = v566;
          *(v176 + 12) = 2048;
          *(v176 + 14) = v171;
          _os_log_impl(&dword_22F0FC000, v172, v173, "Entity %s has invalid location presence %f!", v176, 0x16u);
          __swift_destroy_boxed_opaque_existential_0(v177);
          MEMORY[0x2319033A0](v177, -1, -1);
          MEMORY[0x2319033A0](v176, -1, -1);
        }

        else
        {
        }

        v5 = *(v68 + 24);
        v55 = *(v68 + 32);

        v191 = swift_isUniquelyReferenced_nonNull_native();
        v576 = v175;
        sub_22F1302A0(7, v5, v55, v191);

        (*v539)(v553, v565);
        v50 = v576;
        v192 = v568;
        v193 = v574;
        a2 = v560;
        goto LABEL_119;
      }

      v183 = v561[3];
      v50 = v575;
      a1 = v567;
      a2 = v560;
      if (v171 >= v183)
      {
        v194 = *(v68 + 24);
        v195 = *(v68 + 32);
        v196 = v534;
        (*v523)(v534, v553, v565);

        v197 = v578;
        v198 = swift_isUniquelyReferenced_nonNull_native();
        v576 = v197;
        sub_22F130088(v196, v194, v195, v198);

        v519 = v576;
        v578 = v576;
        v199 = *(v68 + 24);
        v55 = *(v68 + 32);

        v200 = v554;
        v201 = swift_isUniquelyReferenced_nonNull_native();
        v576 = v200;
        sub_22F12FF10(v199, v55, v201, v171);

        v554 = v576;

        MEMORY[0x231900D00](v202);
        if (*((v579 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v579 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_22F7411C0();
        }

        sub_22F741220();
        v525 = v579;
        v66 = v65 + v66;
        v5 = v540;
        (v556)(v540, v66);
        if (*v5)
        {

          swift_bridgeObjectRelease_n();

          v50 = sub_22F14E740(MEMORY[0x277D84F90]);

          (*v539)(v553, v565);
          (*(v538 + 8))(v573, v537);

          return v50;
        }

        (*v539)(v553, v565);
      }

      else
      {

        v184 = sub_22F740B70();
        v185 = sub_22F7415D0();
        if (os_log_type_enabled(v184, v185))
        {
          v186 = swift_slowAlloc();
          v187 = swift_slowAlloc();
          v576 = v187;
          *v186 = v550.n128_u32[0];
          *(v186 + 4) = v183;
          *(v186 + 12) = 2080;
          v188 = *(v68 + 24);
          v189 = *(v68 + 32);

          v190 = sub_22F145F20(v188, v189, &v576);
          a1 = v567;

          *(v186 + 14) = v190;
          v54 = v566;
          *(v186 + 22) = 2048;
          *(v186 + 24) = v171;
          _os_log_impl(&dword_22F0FC000, v184, v185, "After filtering for entities with an important location presence ratio of at least %f, entity %s has been cut, with only a presence ratio of %f.", v186, 0x20u);
          __swift_destroy_boxed_opaque_existential_0(v187);
          MEMORY[0x2319033A0](v187, -1, -1);
          MEMORY[0x2319033A0](v186, -1, -1);
        }

        else
        {
        }

        v5 = *(v68 + 24);
        v55 = *(v68 + 32);

        v203 = swift_isUniquelyReferenced_nonNull_native();
        v576 = v50;
        sub_22F1302A0(5, v5, v55, v203);

        (*v539)(v553, v565);
        v50 = v576;
      }

LABEL_118:
      v192 = v568;
      v193 = v574;
LABEL_119:
      ++a2;
      if (v193 == v192)
      {

        v55 = v525;
        goto LABEL_122;
      }
    }

LABEL_38:
    v77 = MEMORY[0x277D84F90];
    goto LABEL_42;
  }

  v570 = 0;
  v55 = MEMORY[0x277D84F90];
  v50 = MEMORY[0x277D84F98];
LABEL_122:

  v234 = sub_22F740B70();
  LOBYTE(v235) = sub_22F7415D0();
  v236 = os_log_type_enabled(v234, v235);
  a2 = v565;
  if (v236)
  {
    v237 = swift_slowAlloc();
    *v237 = 134217984;
    if (!(v55 >> 62))
    {
      v238 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_125;
    }

    goto LABEL_317;
  }

  v239 = v55;

  while (1)
  {
    v240 = v540;
    (v556)(v540, 0.3);
    if (*v240 == 1)
    {

      v50 = sub_22F14E740(MEMORY[0x277D84F90]);
      (*(v538 + 8))(v573, v537);

LABEL_365:

      return v50;
    }

    v525 = v239;
    v576 = sub_22F36C3E4(v241);
    v242 = v570;
    sub_22F243E0C(&v576, &v578, sub_22F3F6724, v243, type metadata accessor for ImportantEntitiesChildrenProcessorEntity);
    v91 = &v556;
    v526 = v242;
    if (v242)
    {
      goto LABEL_382;
    }

    v244 = v576;
    v245 = 0.4;
    v246 = v540;
    (v556)(v540, 0.4);
    if (*v246)
    {

      v50 = sub_22F14E740(MEMORY[0x277D84F90]);
      (*(v538 + 8))(v573, v537);
LABEL_364:

      goto LABEL_365;
    }

    if ((v244 & 0x8000000000000000) == 0 && (v244 & 0x4000000000000000) == 0)
    {
      v249 = *(v244 + 16);
      v250 = v249;
      v577 = MEMORY[0x277D84FA0];
      v523 = v249;
      v251 = v249;
      if (v249)
      {
        goto LABEL_135;
      }

LABEL_321:

      v393 = sub_22F246BB0(v525, &v577);

      v479 = v540;
      v480 = v556;
      (v556)(v540, 0.9);
      if ((*v479 & 1) == 0)
      {
        v425 = swift_slowAlloc();
        *v425 = 0;
        v480(0.0);
        v481 = *v425;
        v572 = (v393 >> 62);
        v575 = v393;
        if ((v481 & 1) == 0)
        {
          if (v572)
          {
            goto LABEL_374;
          }

          v574 = (v393 & 0xFFFFFFFFFFFFFF8);
          v482 = *((v393 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v483 = v482;
          goto LABEL_326;
        }

        goto LABEL_337;
      }

      v50 = sub_22F14E740(MEMORY[0x277D84F90]);
      (*(v538 + 8))(v573, v537);
      goto LABEL_363;
    }

    while (1)
    {
      v523 = sub_22F741A00();
      v250 = v523;
      v577 = MEMORY[0x277D84FA0];
      v251 = sub_22F741A00();
      if (!v251)
      {
        goto LABEL_321;
      }

LABEL_135:
      v5 = 0;
      v570 = v244 & 0xC000000000000001;
      v563 = v244 + 32;
      v544 = v541 + 16;
      v553 = (v522 + 8);
      v534 = (v522 + 32);
      *&v248 = 136315138;
      v558 = v248;
      *&v248 = 136315394;
      v524 = v248;
      v543 = (v541 + 8);
      v252 = 0.5 / v250;
      *&v247 = 136315906;
      v522 = v247;
      v568 = v244;
      v559 = v251;
LABEL_139:
      if (v570)
      {
        v55 = MEMORY[0x2319016F0](v5, v244);
        v253 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_299;
        }
      }

      else
      {
        if (v5 >= *(v244 + 16))
        {
          goto LABEL_300;
        }

        v55 = *(v563 + 8 * v5);

        v253 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_299;
        }
      }

      v569 = v253;
      v254 = v578;
      v255 = *(v578 + 16);
      v574 = v55;
      if (!v255)
      {
        goto LABEL_200;
      }

      v256 = *(v55 + 24);
      v257 = *(v55 + 32);

      v557 = v256;
      v258 = sub_22F1229E8(v256, v257);
      if ((v259 & 1) == 0)
      {

LABEL_200:

        v337 = sub_22F740B70();
        v338 = sub_22F7415E0();
        if (os_log_type_enabled(v337, v338))
        {
          v339 = swift_slowAlloc();
          v340 = swift_slowAlloc();
          v576 = v340;
          *v339 = v558;
          v341 = v574[3];
          v342 = v50;
          v343 = v574[4];

          v344 = sub_22F145F20(v341, v343, &v576);
          v50 = v342;
          v244 = v568;

          *(v339 + 4) = v344;
          _os_log_impl(&dword_22F0FC000, v337, v338, "Unable to find lifespan for entity %s", v339, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v340);
          v345 = v340;
          v55 = v574;
          MEMORY[0x2319033A0](v345, -1, -1);
          MEMORY[0x2319033A0](v339, -1, -1);
        }

        else
        {
        }

        v346 = *(v55 + 24);
        v5 = *(v55 + 32);

        a2 = swift_isUniquelyReferenced_nonNull_native();
        v576 = v50;
        v347 = sub_22F1229E8(v346, v5);
        v349 = v50[2];
        v350 = (v348 & 1) == 0;
        v162 = __OFADD__(v349, v350);
        v351 = v349 + v350;
        if (v162)
        {
          goto LABEL_304;
        }

        v55 = v348;
        if (v50[3] >= v351)
        {
          if ((a2 & 1) == 0)
          {
            v457 = v347;
            sub_22F134340();
            v347 = v457;
          }
        }

        else
        {
          sub_22F1259D0(v351, a2);
          v347 = sub_22F1229E8(v346, v5);
          if ((v55 & 1) != (v352 & 1))
          {
            goto LABEL_381;
          }
        }

        a2 = v565;
        if (v55)
        {
          v353 = v347;

          v50 = v576;
          *(*(v576 + 56) + v353) = 8;
          goto LABEL_211;
        }

        v50 = v576;
        *(v576 + 8 * (v347 >> 6) + 64) |= 1 << v347;
        v354 = (v50[6] + 16 * v347);
        *v354 = v346;
        v354[1] = v5;
        *(v50[7] + v347) = 8;

        v355 = v50[2];
        v162 = __OFADD__(v355, 1);
        v356 = v355 + 1;
        if (!v162)
        {
          v50[2] = v356;
          goto LABEL_138;
        }

        __break(1u);
LABEL_313:
        __break(1u);
LABEL_314:
        __break(1u);
LABEL_315:

        v50 = sub_22F14E740(MEMORY[0x277D84F90]);

        (*v543)(v552, a2);
        (*(v538 + 8))(v573, v537);

        goto LABEL_365;
      }

      v551 = v257;
      v260 = *(v254 + 56);
      v542 = *(v541 + 72);
      v539 = *(v541 + 16);
      (v539)(v552, v260 + v542 * v258, a2);
      if (*(v554 + 16))
      {
        v560 = v254;
        v261 = *(v55 + 32);
        v262 = v574[3];

        v263 = v262;
        v55 = v574;
        v264 = sub_22F1229E8(v263, v261);
        a2 = v265;

        if (a2)
        {
          break;
        }
      }

      v357 = sub_22F740B70();
      v358 = sub_22F7415E0();
      if (os_log_type_enabled(v357, v358))
      {
        v359 = swift_slowAlloc();
        v360 = swift_slowAlloc();
        v576 = v360;
        *v359 = v558;
        v361 = v574[3];
        v362 = v50;
        v363 = v574[4];

        v364 = sub_22F145F20(v361, v363, &v576);
        v50 = v362;
        v244 = v568;

        *(v359 + 4) = v364;
        _os_log_impl(&dword_22F0FC000, v357, v358, "Unable to find important location presence for entity %s", v359, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v360);
        v365 = v360;
        v55 = v574;
        MEMORY[0x2319033A0](v365, -1, -1);
        MEMORY[0x2319033A0](v359, -1, -1);
      }

      else
      {
      }

      v367 = *(v55 + 24);
      v366 = *(v55 + 32);

      a2 = swift_isUniquelyReferenced_nonNull_native();
      v576 = v50;
      v368 = sub_22F1229E8(v367, v366);
      v370 = v50[2];
      v371 = (v369 & 1) == 0;
      v162 = __OFADD__(v370, v371);
      v372 = v370 + v371;
      if (v162)
      {
        goto LABEL_314;
      }

      v55 = v369;
      if (v50[3] >= v372)
      {
        if ((a2 & 1) == 0)
        {
          v469 = v368;
          sub_22F134340();
          v368 = v469;
        }
      }

      else
      {
        sub_22F1259D0(v372, a2);
        v368 = sub_22F1229E8(v367, v366);
        if ((v55 & 1) != (v373 & 1))
        {
          goto LABEL_381;
        }
      }

      a2 = v565;
      v50 = v576;
      if (v55)
      {
        *(*(v576 + 56) + v368) = 9;

LABEL_137:
        (*v543)(v552, a2);
        goto LABEL_138;
      }

      *(v576 + 8 * (v368 >> 6) + 64) |= 1 << v368;
      v374 = (v50[6] + 16 * v368);
      *v374 = v367;
      v374[1] = v366;
      *(v50[7] + v368) = 9;
      v375 = v50[2];
      v162 = __OFADD__(v375, 1);
      v376 = v375 + 1;
      if (!v162)
      {
        v50[2] = v376;

        goto LABEL_137;
      }

      __break(1u);
LABEL_319:
      __break(1u);
    }

    v266 = v5 - 1;
    if (__OFSUB__(v5, 1))
    {
      goto LABEL_319;
    }

    v267 = *(*(v554 + 56) + 8 * v264);
    v268 = v561;
    a2 = v564;
    if ((v266 & 0x8000000000000000) != 0)
    {
      goto LABEL_232;
    }

LABEL_152:
    v571 = v266;
    if (v570)
    {
      v270 = MEMORY[0x2319016F0]();
    }

    else
    {
      if (v266 >= *(v244 + 16))
      {
        goto LABEL_305;
      }

      v270 = *(v563 + 8 * v266);
    }

    v271 = v270[3];
    a1 = v270[4];
    v272 = v560;
    v273 = *(v560 + 16);

    if (!v273 || (v274 = sub_22F1229E8(v271, a1), (v275 & 1) == 0))
    {

      v301 = sub_22F740B70();
      v302 = sub_22F7415E0();

      if (os_log_type_enabled(v301, v302))
      {
        v303 = swift_slowAlloc();
        v304 = swift_slowAlloc();
        v576 = v304;
        *v303 = v558;
        v305 = sub_22F145F20(v271, a1, &v576);

        *(v303 + 4) = v305;
        _os_log_impl(&dword_22F0FC000, v301, v302, "Unable to find lifespan for entity %s", v303, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v304);
        v306 = v304;
        v55 = v574;
        MEMORY[0x2319033A0](v306, -1, -1);
        MEMORY[0x2319033A0](v303, -1, -1);
      }

      else
      {
      }

      v307 = *(v55 + 24);
      v5 = *(v55 + 32);

      a2 = swift_isUniquelyReferenced_nonNull_native();
      v576 = v50;
      v308 = sub_22F1229E8(v307, v5);
      v310 = v50[2];
      v311 = (v309 & 1) == 0;
      v162 = __OFADD__(v310, v311);
      v312 = v310 + v311;
      if (v162)
      {
        goto LABEL_303;
      }

      a1 = v309;
      if (v50[3] >= v312)
      {
        if ((a2 & 1) == 0)
        {
          v335 = v308;
          sub_22F134340();
          v308 = v335;
          v55 = v574;
        }
      }

      else
      {
        sub_22F1259D0(v312, a2);
        v308 = sub_22F1229E8(v307, v5);
        if ((a1 & 1) != (v313 & 1))
        {
          goto LABEL_381;
        }
      }

      v268 = v561;
      a2 = v564;
      if (a1)
      {
        v269 = v308;

        v50 = v576;
        *(*(v576 + 56) + v269) = 8;
      }

      else
      {
        v50 = v576;
        *(v576 + 8 * (v308 >> 6) + 64) |= 1 << v308;
        v314 = (v50[6] + 16 * v308);
        *v314 = v307;
        v314[1] = v5;
        *(v50[7] + v308) = 8;

        v315 = v50[2];
        v162 = __OFADD__(v315, 1);
        v316 = v315 + 1;
        if (v162)
        {
          goto LABEL_307;
        }

        v50[2] = v316;
      }

      a1 = v567;
      v244 = v568;
      goto LABEL_151;
    }

    v550.n128_u64[0] = v271;
    v549 = a1;
    v548 = v270;
    v575 = v50;
    v276 = v547;
    (v539)(v547, *(v272 + 56) + v274 * v542, v565);
    v277 = v572;
    sub_22F73F030();
    sub_22F73F060();
    sub_22F2507B8(&qword_2810AC708, 255, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
    v278 = v562;
    v279 = sub_22F740DB0();
    v280 = *v553;
    (*v553)(a2, v278);
    v280(v277, v278);
    if ((v279 & 1) == 0)
    {
      (*v543)(v276, v565);

      a1 = v567;
      v50 = v575;
      v244 = v568;
      v55 = v574;
      v268 = v561;
      goto LABEL_232;
    }

    sub_22F73F060();
    v281 = v536;
    sub_22F73F030();
    v282 = v527;
    sub_22F73F030();
    v283 = sub_22F740DB0();
    v284 = (v283 & 1) == 0;
    if (v283)
    {
      v285 = v281;
    }

    else
    {
      v285 = v282;
    }

    if (v284)
    {
      v286 = v281;
    }

    else
    {
      v286 = v282;
    }

    v280(v285, v278);
    (*v534)(v546, v286, v278);
    sub_22F73F590();
    v288 = v287;
    sub_22F73F080();
    v268 = v561;
    if (v289 * v561[4] >= v288)
    {

      v377 = v562;
      v280(v546, v562);
      v280(v545, v377);
      (*v543)(v547, v565);
      a1 = v567;
      a2 = v564;
      v54 = v566;
      v50 = v575;
      v244 = v568;
      v55 = v574;
      goto LABEL_232;
    }

    v290 = *(v554 + 16);
    v54 = v566;
    v244 = v568;
    v237 = v549;
    v535 = v280;
    if (v290)
    {
      v291 = sub_22F1229E8(v550.n128_i64[0], v549);
      if (v292)
      {
        break;
      }
    }

    v317 = sub_22F740B70();
    v318 = sub_22F7415E0();

    v319 = os_log_type_enabled(v317, v318);
    v320 = v575;
    if (v319)
    {
      v321 = swift_slowAlloc();
      v322 = swift_slowAlloc();
      v576 = v322;
      *v321 = v558;
      v323 = sub_22F145F20(v550.n128_i64[0], v237, &v576);

      *(v321 + 4) = v323;
      _os_log_impl(&dword_22F0FC000, v317, v318, "Unable to find important location presence for entity %s", v321, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v322);
      MEMORY[0x2319033A0](v322, -1, -1);
      MEMORY[0x2319033A0](v321, -1, -1);
    }

    else
    {
    }

    v55 = v574;
    v324 = v574[3];
    v234 = v574[4];

    a2 = swift_isUniquelyReferenced_nonNull_native();
    v576 = v320;
    LOBYTE(v235) = v320;
    v325 = sub_22F1229E8(v324, v234);
    v327 = *(v320 + 16);
    v328 = (v326 & 1) == 0;
    v162 = __OFADD__(v327, v328);
    v329 = v327 + v328;
    if (v162)
    {
      goto LABEL_313;
    }

    a1 = v326;
    if (*(v320 + 24) >= v329)
    {
      if ((a2 & 1) == 0)
      {
        v235 = &v576;
        v336 = v325;
        sub_22F134340();
        v325 = v336;
        v55 = v574;
      }
    }

    else
    {
      sub_22F1259D0(v329, a2);
      LOBYTE(v235) = v576;
      v325 = sub_22F1229E8(v324, v234);
      if ((a1 & 1) != (v330 & 1))
      {
        goto LABEL_381;
      }
    }

    v268 = v561;
    a2 = v564;
    v50 = v576;
    if (a1)
    {
      *(*(v576 + 56) + v325) = 9;

      goto LABEL_198;
    }

    *(v576 + 8 * (v325 >> 6) + 64) |= 1 << v325;
    v331 = (v50[6] + 16 * v325);
    *v331 = v324;
    v331[1] = v234;
    *(v50[7] + v325) = 9;
    v332 = v50[2];
    v162 = __OFADD__(v332, 1);
    v333 = v332 + 1;
    if (!v162)
    {
      v50[2] = v333;

LABEL_198:
      a1 = v567;
      v244 = v568;
      v5 = v562;
      v334 = v535;
      (v535)(v546, v562);
      v334(v545, v5);
      (*v543)(v547, v565);
LABEL_151:
      v266 = v571;
      if (v571 < 0)
      {
        goto LABEL_232;
      }

      goto LABEL_152;
    }

    __break(1u);
LABEL_317:
    v238 = sub_22F741A00();
LABEL_125:
    *(v237 + 4) = v238;
    v239 = v55;

    _os_log_impl(&dword_22F0FC000, v234, v235, "After filtering potential entities, there are %ld entities remaining.", v237, 0xCu);
    MEMORY[0x2319033A0](v237, -1, -1);
  }

  v293 = *(*(v554 + 56) + 8 * v291);
  v294 = v551;

  v295 = sub_22F740B70();
  v296 = sub_22F7415C0();

  v297 = v237;
  if (os_log_type_enabled(v295, v296))
  {
    v298 = swift_slowAlloc();
    v299 = swift_slowAlloc();
    v576 = v299;
    *v298 = v524;
    *(v298 + 4) = sub_22F145F20(v557, v294, &v576);
    *(v298 + 12) = 2080;
    *(v298 + 14) = sub_22F145F20(v550.n128_i64[0], v237, &v576);
    _os_log_impl(&dword_22F0FC000, v295, v296, "Entity %s's lifespan has significant overlap with %s's lifespan!", v298, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2319033A0](v299, -1, -1);
    v268 = v561;
    MEMORY[0x2319033A0](v298, -1, -1);
  }

  a2 = v564;
  v50 = v575;
  v55 = v574;
  if (v267 >= v293 * v268[5])
  {

    v5 = v562;
    v300 = v535;
    (v535)(v546, v562);
    v300(v545, v5);
    (*v543)(v547, v565);
    v266 = v571 - 1;
    a1 = v567;
    if (v571 - 1 < 0)
    {
      goto LABEL_232;
    }

    goto LABEL_152;
  }

  v378 = v551;

  v379 = v557;
  sub_22F10BBDC(&v576, v557, v378);

  v380 = sub_22F740B70();
  v381 = sub_22F7415D0();

  if (os_log_type_enabled(v380, v381))
  {
    v382 = swift_slowAlloc();
    v383 = swift_slowAlloc();
    v576 = v383;
    *v382 = v522;
    *(v382 + 4) = sub_22F145F20(v379, v378, &v576);
    *(v382 + 12) = 2048;
    *(v382 + 14) = v267;
    *(v382 + 22) = 2080;
    v384 = sub_22F145F20(v550.n128_i64[0], v297, &v576);

    *(v382 + 24) = v384;
    a2 = v564;
    v268 = v561;
    *(v382 + 32) = 2048;
    *(v382 + 34) = v293;
    _os_log_impl(&dword_22F0FC000, v380, v381, "Entity %s has been detected as an outlier! It only has an important location presence ratio of %f, compared to the significantly higher important location presence ratio of significantly overlapping entity %s, %f.", v382, 0x2Au);
    swift_arrayDestroy();
    v385 = v383;
    v55 = v574;
    MEMORY[0x2319033A0](v385, -1, -1);
    v386 = v382;
    v50 = v575;
    MEMORY[0x2319033A0](v386, -1, -1);
  }

  else
  {

    v268 = v561;
  }

  v387 = *(v55 + 24);
  v388 = v574[4];

  v389 = swift_isUniquelyReferenced_nonNull_native();
  v576 = v50;
  sub_22F1302A0(6, v387, v388, v389);

  v55 = v574;

  v390 = v562;
  v391 = v535;
  (v535)(v546, v562);
  v391(v545, v390);
  (*v543)(v547, v565);
  v50 = v576;
  a1 = v567;
LABEL_232:
  if (sub_22F15E910(v557, v551, v577))
  {
    a2 = v565;
    (*v543)(v552, v565);

    goto LABEL_138;
  }

  if (v569 >= v523)
  {
LABEL_278:

    a2 = v565;
    goto LABEL_279;
  }

  v392 = v569;
  while (2)
  {
    v550.n128_u64[0] = v392;
    if (v570)
    {
      v393 = MEMORY[0x2319016F0]();
      goto LABEL_241;
    }

    if ((v392 & 0x8000000000000000) == 0)
    {
      if (v392 >= *(v244 + 16))
      {
        goto LABEL_376;
      }

      v393 = *(v563 + 8 * v392);

LABEL_241:
      v394 = v560;
      v395 = *(v393 + 24);
      v396 = *(v393 + 32);
      v397 = *(v560 + 16);

      v571 = v393;
      if (v397)
      {
        v398 = sub_22F1229E8(v395, v396);
        if (v399)
        {
          v549 = v395;
          v548 = v396;
          v400 = v532;
          (v539)(v532, *(v394 + 56) + v398 * v542, v565);
          v401 = v572;
          sub_22F73F030();
          sub_22F73F060();
          sub_22F2507B8(&qword_2810AC708, 255, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
          v402 = v562;
          v403 = sub_22F740DB0();
          v404 = *v553;
          (*v553)(a2, v402);
          v404(v401, v402);
          if (v403)
          {
            v575 = v50;
            sub_22F73F060();
            v405 = v528;
            sub_22F73F030();
            v406 = v529;
            sub_22F73F030();
            v407 = sub_22F740DB0();
            v408 = (v407 & 1) == 0;
            if (v407)
            {
              v409 = v405;
            }

            else
            {
              v409 = v406;
            }

            if (v408)
            {
              v410 = v405;
            }

            else
            {
              v410 = v406;
            }

            v404(v409, v402);
            (*v534)(v531, v410, v402);
            sub_22F73F590();
            v412 = v411;
            sub_22F73F080();
            if (v413 * v268[4] < v412)
            {
              v54 = v566;
              v50 = v575;
              v55 = v574;
              v414 = v548;
              if (*(v554 + 16))
              {
                v415 = sub_22F1229E8(v549, v548);
                if (v416)
                {
                  v417 = *(*(v554 + 56) + 8 * v415);
                  v418 = v414;
                  v419 = v551;

                  v420 = sub_22F740B70();
                  v421 = sub_22F7415C0();

                  if (os_log_type_enabled(v420, v421))
                  {
                    v422 = swift_slowAlloc();
                    v423 = swift_slowAlloc();
                    v576 = v423;
                    *v422 = v524;
                    *(v422 + 4) = sub_22F145F20(v557, v419, &v576);
                    *(v422 + 12) = 2080;
                    *(v422 + 14) = sub_22F145F20(v549, v418, &v576);
                    _os_log_impl(&dword_22F0FC000, v420, v421, "Entity %s's lifespan has significant overlap with %s's lifespan!", v422, 0x16u);
                    swift_arrayDestroy();
                    MEMORY[0x2319033A0](v423, -1, -1);
                    v268 = v561;
                    MEMORY[0x2319033A0](v422, -1, -1);
                  }

                  a2 = v564;
                  v244 = v568;
                  if (v267 >= v417 * v268[5])
                  {

                    v424 = v562;
                    v404(v531, v562);
                    v404(v530, v424);
                    (*v543)(v532, v565);
                    v392 = v550.n128_u64[0] + 1;
                    if (__OFADD__(v550.n128_u64[0], 1))
                    {
                      goto LABEL_378;
                    }

                    a1 = v567;
LABEL_277:
                    if (v392 >= v523)
                    {
                      goto LABEL_278;
                    }

                    continue;
                  }

                  v458 = v404;
                  v459 = v551;
                  v460 = v418;

                  v461 = v557;
                  sub_22F10BBDC(&v576, v557, v459);

                  v462 = sub_22F740B70();
                  v463 = sub_22F7415D0();
                  v464 = v460;

                  if (os_log_type_enabled(v462, v463))
                  {
                    v465 = swift_slowAlloc();
                    v466 = swift_slowAlloc();
                    v576 = v466;
                    *v465 = v522;
                    v467 = sub_22F145F20(v461, v459, &v576);

                    *(v465 + 4) = v467;
                    *(v465 + 12) = 2048;
                    *(v465 + 14) = v267;
                    *(v465 + 22) = 2080;
                    v468 = sub_22F145F20(v549, v464, &v576);

                    *(v465 + 24) = v468;
                    *(v465 + 32) = 2048;
                    *(v465 + 34) = v417;
                    _os_log_impl(&dword_22F0FC000, v462, v463, "Entity %s has been detected as an outlier! It only has an important location presence ratio of %f, compared to the significantly higher important location presence ratio of significantly overlapping entity %s, %f.", v465, 0x2Au);
                    swift_arrayDestroy();
                    MEMORY[0x2319033A0](v466, -1, -1);
                    MEMORY[0x2319033A0](v465, -1, -1);
                  }

                  else
                  {
                  }

                  v55 = v574;
                  v470 = v574[3];
                  v471 = v574[4];

                  v472 = v575;
                  v473 = swift_isUniquelyReferenced_nonNull_native();
                  v576 = v472;
                  sub_22F1302A0(6, v470, v471, v473);

                  v474 = v562;
                  v458(v531, v562);
                  v458(v530, v474);
                  a2 = v565;
                  (*v543)(v532, v565);
                  v50 = v576;
                  a1 = v567;
                  v54 = v566;
                  v244 = v568;
LABEL_279:
                  v245 = v252 + v245;
                  v455 = v540;
                  (v556)(v540, v245);
                  if (*v455 == 1)
                  {
                    goto LABEL_315;
                  }

                  (*v543)(v552, a2);
LABEL_211:

LABEL_138:
                  v5 = v569;
                  if (v569 == v559)
                  {
                    goto LABEL_321;
                  }

                  goto LABEL_139;
                }
              }

              v445 = sub_22F740B70();
              v446 = sub_22F7415E0();

              if (os_log_type_enabled(v445, v446))
              {
                v447 = swift_slowAlloc();
                v448 = swift_slowAlloc();
                v576 = v448;
                *v447 = v558;
                v449 = sub_22F145F20(v549, v414, &v576);

                *(v447 + 4) = v449;
                v50 = v575;
                _os_log_impl(&dword_22F0FC000, v445, v446, "Unable to find important location presence for entity %s", v447, 0xCu);
                __swift_destroy_boxed_opaque_existential_0(v448);
                MEMORY[0x2319033A0](v448, -1, -1);
                MEMORY[0x2319033A0](v447, -1, -1);
              }

              else
              {
              }

              v244 = v568;
              v450 = *(v55 + 24);
              v451 = *(v55 + 32);

              v452 = swift_isUniquelyReferenced_nonNull_native();
              v576 = v50;
              sub_22F1302A0(9, v450, v451, v452);

              v453 = v562;
              v404(v531, v562);
              v404(v530, v453);
              (*v543)(v532, v565);
              v50 = v576;
              a1 = v567;
              v268 = v561;
              a2 = v564;
LABEL_276:
              v392 = v550.n128_u64[0];
              goto LABEL_277;
            }

            v456 = v562;
            v404(v531, v562);
            v404(v530, v456);
            a2 = v565;
            (*v543)(v532, v565);
            a1 = v567;
            v54 = v566;
            v50 = v575;
          }

          else
          {
            a2 = v565;
            (*v543)(v400, v565);

            a1 = v567;
            v54 = v566;
          }

          v244 = v568;
          v55 = v574;
          goto LABEL_279;
        }
      }

      v425 = v395;
      v426 = v50;

      v427 = sub_22F740B70();
      v428 = sub_22F7415E0();

      if (os_log_type_enabled(v427, v428))
      {
        v429 = swift_slowAlloc();
        v393 = swift_slowAlloc();
        v576 = v393;
        *v429 = v558;
        v430 = sub_22F145F20(v425, v396, &v576);

        *(v429 + 4) = v430;
        _os_log_impl(&dword_22F0FC000, v427, v428, "Unable to find lifespan for entity %s", v429, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v393);
        MEMORY[0x2319033A0](v393, -1, -1);
        MEMORY[0x2319033A0](v429, -1, -1);
      }

      else
      {
      }

      v50 = *(v55 + 24);
      v431 = *(v55 + 32);

      v432 = swift_isUniquelyReferenced_nonNull_native();
      v576 = v426;
      v433 = sub_22F1229E8(v50, v431);
      v435 = *(v426 + 16);
      v436 = (v434 & 1) == 0;
      v162 = __OFADD__(v435, v436);
      v437 = v435 + v436;
      a1 = v567;
      if (!v162)
      {
        v438 = v434;
        if (*(v426 + 24) >= v437)
        {
          if ((v432 & 1) == 0)
          {
            v454 = v433;
            sub_22F134340();
            v433 = v454;
            v55 = v574;
          }
        }

        else
        {
          sub_22F1259D0(v437, v432);
          v433 = sub_22F1229E8(v50, v431);
          if ((v438 & 1) != (v439 & 1))
          {
            goto LABEL_381;
          }
        }

        v268 = v561;
        a2 = v564;
        if (v438)
        {
          v440 = v433;

          v50 = v576;
          *(*(v576 + 56) + v440) = 8;
        }

        else
        {
          v441 = v576;
          *(v576 + 8 * (v433 >> 6) + 64) |= 1 << v433;
          v442 = (*(v441 + 48) + 16 * v433);
          *v442 = v50;
          v442[1] = v431;
          v50 = v441;
          *(*(v441 + 56) + v433) = 8;

          v443 = v50[2];
          v162 = __OFADD__(v443, 1);
          v444 = v443 + 1;
          if (v162)
          {
            goto LABEL_377;
          }

          v50[2] = v444;
        }

        v244 = v568;
        goto LABEL_276;
      }

      __break(1u);
LABEL_374:
      v574 = (v393 & 0xFFFFFFFFFFFFFF8);
      v483 = sub_22F741A00();
      v482 = sub_22F741A00();
LABEL_326:
      v484 = 0;
      v485 = (a1 + OBJC_IVAR____TtC11PhotosGraph34ImportantEntitiesChildrenContainer_processInferredChildNode);
      v486 = v393 & 0xC000000000000001;
      v487 = 0.0;
      v488 = 1.0 / v483;
      while (v482 != v484)
      {
        if (v486)
        {
          v489 = MEMORY[0x2319016F0](v484, v393);
          if (__OFADD__(v484, 1))
          {
            goto LABEL_335;
          }
        }

        else
        {
          if (v484 >= v574[2])
          {
            goto LABEL_370;
          }

          v489 = *(v393 + 8 * v484 + 32);

          if (__OFADD__(v484, 1))
          {
LABEL_335:
            __break(1u);
            break;
          }
        }

        v490 = v50;
        v491 = *v485;
        v492 = *(v489 + 16);
        v491();
        v50 = v490;
        v393 = v575;

        v487 = v488 + v487;
        (v556)(v425, v487);
        LOBYTE(v492) = *v425;

        ++v484;
        if (v492)
        {
          goto LABEL_337;
        }
      }

      (v556)(v425, 1.0);
LABEL_337:
      if (v572)
      {
        goto LABEL_372;
      }

      v493 = *((v393 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_339:
      v494 = v556;
      v495 = v573;
      if (!v493)
      {
LABEL_360:

        (v494)(v540, 1.0);
        if (v513)
        {
          sub_22F242910(v50);
        }

        (*(v538 + 8))(v495, v537);
LABEL_363:

        goto LABEL_364;
      }

      v496 = 0;
      v574 = (v393 & 0xC000000000000001);
      v572 = (v393 & 0xFFFFFFFFFFFFFF8);
      while (1)
      {
        if (v574)
        {
          v497 = v50;
          v50 = MEMORY[0x2319016F0](v496, v393);
          v498 = v496 + 1;
          if (__OFADD__(v496, 1))
          {
            goto LABEL_367;
          }
        }

        else
        {
          if (v496 >= *(v572 + 2))
          {
            goto LABEL_371;
          }

          v497 = v50;
          v50 = *(v393 + 8 * v496 + 32);

          v498 = v496 + 1;
          if (__OFADD__(v496, 1))
          {
LABEL_367:
            __break(1u);
LABEL_368:
            __break(1u);
LABEL_369:
            __break(1u);
LABEL_370:
            __break(1u);
LABEL_371:
            __break(1u);
LABEL_372:
            v493 = sub_22F741A00();
            goto LABEL_339;
          }
        }

        v500 = v50[3];
        v499 = v50[4];

        v501 = swift_isUniquelyReferenced_nonNull_native();
        v576 = v497;
        v393 = sub_22F1229E8(v500, v499);
        v503 = *(v497 + 16);
        v504 = (v502 & 1) == 0;
        v505 = v503 + v504;
        if (__OFADD__(v503, v504))
        {
          goto LABEL_368;
        }

        v506 = v502;
        if (*(v497 + 24) >= v505)
        {

          if (v501)
          {
            if (v506)
            {
              goto LABEL_341;
            }
          }

          else
          {
            sub_22F134340();
            if (v506)
            {
              goto LABEL_341;
            }
          }
        }

        else
        {
          sub_22F1259D0(v505, v501);
          v507 = sub_22F1229E8(v500, v499);
          if ((v506 & 1) != (v508 & 1))
          {
            goto LABEL_381;
          }

          v393 = v507;

          if (v506)
          {
LABEL_341:

            v50 = v576;
            *(*(v576 + 56) + v393) = 0;
            goto LABEL_342;
          }
        }

        v50 = v576;
        *(v576 + 8 * (v393 >> 6) + 64) |= 1 << v393;
        v509 = (v50[6] + 16 * v393);
        *v509 = v500;
        v509[1] = v499;
        *(v50[7] + v393) = 0;
        v510 = v50[2];
        v162 = __OFADD__(v510, 1);
        v511 = v510 + 1;
        if (v162)
        {
          goto LABEL_369;
        }

        v50[2] = v511;
LABEL_342:
        ++v496;
        v495 = v573;
        v494 = v556;
        v393 = v575;
        if (v498 == v493)
        {
          goto LABEL_360;
        }
      }
    }

    break;
  }

  __break(1u);
LABEL_376:
  __break(1u);
LABEL_377:
  __break(1u);
LABEL_378:
  __break(1u);
LABEL_379:
  __break(1u);
LABEL_380:
  __break(1u);
LABEL_381:
  sub_22F7420C0();
  __break(1u);
LABEL_382:

  __break(1u);
  return result;
}