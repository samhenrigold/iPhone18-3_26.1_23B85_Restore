void sub_1A438E904(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1A439027C(255, a3, a4, MEMORY[0x1E69E6720]);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1A438E9F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1A437DD40(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1A438EA68(uint64_t a1, uint64_t a2)
{
  sub_1A438E904(0, &unk_1EB124888, &qword_1EB126538, MEMORY[0x1E69E69B8], MEMORY[0x1E697DCB8]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A438EB04(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A438EB64(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  sub_1A437DD40(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_1A438EBD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A438EC3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t objectdestroy_74Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = type metadata accessor for LemonadeFeedContents(0, v5, *(v4 + 24), a4);
  v7 = v4 + ((*(*(v6 - 1) + 80) + 32) & ~*(*(v6 - 1) + 80));
  (*(*(v5 - 8) + 8))(v7, v5);

  v8 = v6[10];
  v9 = sub_1A52442E4();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v7 + v8, 1, v9))
  {
    (*(v10 + 8))(v7 + v8, v9);
  }

  if (*(v7 + v6[11]))
  {
  }

  v11 = v7 + v6[13];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1A5242854();
  v12 = sub_1A524BD74();
  (*(*(v12 - 8) + 8))(v11, v12);
  sub_1A524BD84();

  v13 = v7 + v6[14];
  v14 = MEMORY[0x1E69C24E0];
  sub_1A437DD40(0, &qword_1EB1272E0, MEMORY[0x1E69C24E0], MEMORY[0x1E6981E90]);
  (*(*(v15 - 8) + 8))(v13, v15);
  sub_1A437DD40(0, &qword_1EB127288, v14, MEMORY[0x1E6981E98]);

  v16 = v7 + v6[15];
  sub_1A43892B8(0, &qword_1EB121430, MEMORY[0x1E6981E90]);
  (*(*(v17 - 8) + 8))(v16, v17);
  sub_1A43892B8(0, &qword_1EB1213F0, MEMORY[0x1E6981E98]);

  swift_unknownObjectRelease();

  v18 = v6[22];
  sub_1A437DD40(0, &unk_1EB128A60, MEMORY[0x1E697BF90], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = sub_1A5248284();
    (*(*(v19 - 8) + 8))(v7 + v18, v19);
  }

  else
  {
  }

  v20 = v7 + v6[25];
  if (*(v20 + 40))
  {
    if (*(v20 + 24))
    {
      __swift_destroy_boxed_opaque_existential_0(v20);
    }
  }

  else
  {
  }

  sub_1A3C53AEC(*(v7 + v6[28]), *(v7 + v6[28] + 8));

  v21 = v6[30];
  sub_1A437DD40(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = sub_1A5242D14();
    (*(*(v22 - 8) + 8))(v7 + v21, v22);
  }

  else
  {
  }

  sub_1A3D35BAC(*(v7 + v6[32]), *(v7 + v6[32] + 8));
  sub_1A3C53AEC(*(v7 + v6[33]), *(v7 + v6[33] + 8));
  v23 = v6[34];
  sub_1A437DD40(0, &unk_1EB128A40, sub_1A3DC7D88, MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = sub_1A5249A94();
    v25 = *(v24 - 8);
    if (!(*(v25 + 48))(v7 + v23, 1, v24))
    {
      (*(v25 + 8))(v7 + v23, v24);
    }
  }

  else
  {
  }

  v26 = v6[35];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v27 = sub_1A5249A94();
    v28 = *(v27 - 8);
    if (!(*(v28 + 48))(v7 + v26, 1, v27))
    {
      (*(v28 + 8))(v7 + v26, v27);
    }
  }

  else
  {
  }

  sub_1A3C53AEC(*(v7 + v6[36]), *(v7 + v6[36] + 8));
  sub_1A3C53AEC(*(v7 + v6[37]), *(v7 + v6[37] + 8));
  sub_1A3F1B54C(*(v7 + v6[38]), *(v7 + v6[38] + 8));
  v29 = v7 + v6[39];
  sub_1A437DD40(0, &qword_1EB128A88, type metadata accessor for LemonadeItemsLayoutSpec, MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v30 = *(type metadata accessor for LemonadeItemsLayoutSpec(0) + 20);
    v31 = sub_1A5242D14();
    (*(*(v31 - 8) + 8))(v29 + v30, v31);
  }

  else
  {
  }

  v32 = v7 + v6[40];
  sub_1A3F1D444(*v32, *(v32 + 8), *(v32 + 16), *(v32 + 24), *(v32 + 32));
  sub_1A3F1B4C4(*(v7 + v6[41]), *(v7 + v6[41] + 8), *(v7 + v6[41] + 9));
  v33 = v6[42];
  sub_1A437DD40(0, &qword_1EB128A50, MEMORY[0x1E697E730], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v34 = sub_1A52486A4();
    (*(*(v34 - 8) + 8))(v7 + v33, v34);
  }

  else
  {
  }

  sub_1A3C53AEC(*(v7 + v6[43]), *(v7 + v6[43] + 8));
  sub_1A3D35BAC(*(v7 + v6[44]), *(v7 + v6[44] + 8));
  v35 = v6[45];
  sub_1A437DD40(0, &qword_1EB12F3F8, MEMORY[0x1E69C2998], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v36 = sub_1A52440D4();
    (*(*(v36 - 8) + 8))(v7 + v35, v36);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A438F6DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, char *a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  type metadata accessor for LemonadeFeedContents(0, v6, v7, a2);
  return sub_1A4387284(a1, v6, v7, a3);
}

uint64_t objectdestroy_162Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = type metadata accessor for LemonadeFeedContents(0, v5, *(v4 + 24), a4);
  v7 = v4 + ((*(*(v6 - 1) + 80) + 32) & ~*(*(v6 - 1) + 80));
  (*(*(v5 - 8) + 8))(v7, v5);

  v8 = v6[10];
  v9 = sub_1A52442E4();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v7 + v8, 1, v9))
  {
    (*(v10 + 8))(v7 + v8, v9);
  }

  if (*(v7 + v6[11]))
  {
  }

  v11 = v7 + v6[13];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1A5242854();
  v12 = sub_1A524BD74();
  (*(*(v12 - 8) + 8))(v11, v12);
  sub_1A524BD84();

  v13 = v7 + v6[14];
  v14 = MEMORY[0x1E69C24E0];
  sub_1A437DD40(0, &qword_1EB1272E0, MEMORY[0x1E69C24E0], MEMORY[0x1E6981E90]);
  (*(*(v15 - 8) + 8))(v13, v15);
  sub_1A437DD40(0, &qword_1EB127288, v14, MEMORY[0x1E6981E98]);

  v16 = v7 + v6[15];
  sub_1A43892B8(0, &qword_1EB121430, MEMORY[0x1E6981E90]);
  (*(*(v17 - 8) + 8))(v16, v17);
  sub_1A43892B8(0, &qword_1EB1213F0, MEMORY[0x1E6981E98]);

  swift_unknownObjectRelease();

  v18 = v6[22];
  sub_1A437DD40(0, &unk_1EB128A60, MEMORY[0x1E697BF90], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = sub_1A5248284();
    (*(*(v19 - 8) + 8))(v7 + v18, v19);
  }

  else
  {
  }

  v20 = v7 + v6[25];
  if (*(v20 + 40))
  {
    if (*(v20 + 24))
    {
      __swift_destroy_boxed_opaque_existential_0(v20);
    }
  }

  else
  {
  }

  sub_1A3C53AEC(*(v7 + v6[28]), *(v7 + v6[28] + 8));

  v21 = v6[30];
  sub_1A437DD40(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = sub_1A5242D14();
    (*(*(v22 - 8) + 8))(v7 + v21, v22);
  }

  else
  {
  }

  sub_1A3D35BAC(*(v7 + v6[32]), *(v7 + v6[32] + 8));
  sub_1A3C53AEC(*(v7 + v6[33]), *(v7 + v6[33] + 8));
  v23 = v6[34];
  sub_1A437DD40(0, &unk_1EB128A40, sub_1A3DC7D88, MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = sub_1A5249A94();
    v25 = *(v24 - 8);
    if (!(*(v25 + 48))(v7 + v23, 1, v24))
    {
      (*(v25 + 8))(v7 + v23, v24);
    }
  }

  else
  {
  }

  v26 = v6[35];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v27 = sub_1A5249A94();
    v28 = *(v27 - 8);
    if (!(*(v28 + 48))(v7 + v26, 1, v27))
    {
      (*(v28 + 8))(v7 + v26, v27);
    }
  }

  else
  {
  }

  sub_1A3C53AEC(*(v7 + v6[36]), *(v7 + v6[36] + 8));
  sub_1A3C53AEC(*(v7 + v6[37]), *(v7 + v6[37] + 8));
  sub_1A3F1B54C(*(v7 + v6[38]), *(v7 + v6[38] + 8));
  v29 = v7 + v6[39];
  sub_1A437DD40(0, &qword_1EB128A88, type metadata accessor for LemonadeItemsLayoutSpec, MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v30 = *(type metadata accessor for LemonadeItemsLayoutSpec(0) + 20);
    v31 = sub_1A5242D14();
    (*(*(v31 - 8) + 8))(v29 + v30, v31);
  }

  else
  {
  }

  v32 = v7 + v6[40];
  sub_1A3F1D444(*v32, *(v32 + 8), *(v32 + 16), *(v32 + 24), *(v32 + 32));
  sub_1A3F1B4C4(*(v7 + v6[41]), *(v7 + v6[41] + 8), *(v7 + v6[41] + 9));
  v33 = v6[42];
  sub_1A437DD40(0, &qword_1EB128A50, MEMORY[0x1E697E730], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v34 = sub_1A52486A4();
    (*(*(v34 - 8) + 8))(v7 + v33, v34);
  }

  else
  {
  }

  sub_1A3C53AEC(*(v7 + v6[43]), *(v7 + v6[43] + 8));
  sub_1A3D35BAC(*(v7 + v6[44]), *(v7 + v6[44] + 8));
  v35 = v6[45];
  sub_1A437DD40(0, &qword_1EB12F3F8, MEMORY[0x1E69C2998], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v36 = sub_1A52440D4();
    (*(*(v36 - 8) + 8))(v7 + v35, v36);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A4390188(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(type metadata accessor for LemonadeFeedContents(0, v6, v7, a4) - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = v4 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8);
  v11 = *v10;
  v12 = *(v10 + 8);

  return a2(a1, v4 + v9, v11, v12, v6, v7);
}

void sub_1A439027C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1A43902D0()
{
  v0 = sub_1A5240BA4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A5241284();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1A524C624();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1A5240BB4();
  __swift_allocate_value_buffer(v6, qword_1EB1BB6B8);
  __swift_project_value_buffer(v6, qword_1EB1BB6B8);
  sub_1A524C5B4();
  sub_1A5241244();
  (*(v1 + 104))(v3, *MEMORY[0x1E6968DF0], v0);
  return sub_1A5240BC4();
}

uint64_t (*static CreateAlbumIntent.title.modify(uint64_t a1, double a2))(uint64_t a1)
{
  if (qword_1EB1BB6B0 != -1)
  {
    swift_once();
  }

  v2 = sub_1A5240BB4();
  __swift_project_value_buffer(v2, qword_1EB1BB6B8);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1A4390630()
{
  sub_1A4391338(0, &qword_1EB12B008, MEMORY[0x1E6968E10]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_1A5240BA4();
  v3 = *(v12[0] - 8);
  MEMORY[0x1EEE9AC00](v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A5241284();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = sub_1A524C624();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_1A5240BB4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = sub_1A5240094();
  __swift_allocate_value_buffer(v10, qword_1EB1BB6D8);
  __swift_project_value_buffer(v10, qword_1EB1BB6D8);
  sub_1A524C5B4();
  sub_1A5241244();
  (*(v3 + 104))(v5, *MEMORY[0x1E6968DF0], v12[0]);
  sub_1A5240BC4();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_1A52400A4();
}

uint64_t (*static CreateAlbumIntent.description.modify(uint64_t a1, double a2))(uint64_t a1)
{
  if (qword_1EB1BB6D0 != -1)
  {
    swift_once();
  }

  v2 = sub_1A5240094();
  __swift_project_value_buffer(v2, qword_1EB1BB6D8);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t static CreateAlbumIntent.parameterSummary.getter()
{
  sub_1A4392EC4(0, &qword_1EB138CC0, sub_1A4390C8C, &type metadata for CreateAlbumIntent, MEMORY[0x1E695A4A8]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1A4392EC4(0, &qword_1EB138CD0, sub_1A4390C8C, &type metadata for CreateAlbumIntent, MEMORY[0x1E695A4A0]);
  MEMORY[0x1EEE9AC00](v1);
  sub_1A4390C8C();
  sub_1A5240314();
  sub_1A5240304();
  swift_getKeyPath();
  sub_1A4390D04(0);
  sub_1A52402F4();

  sub_1A5240304();
  sub_1A5240324();
  return sub_1A52402E4();
}

unint64_t sub_1A4390C8C()
{
  result = qword_1EB138CC8;
  if (!qword_1EB138CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB138CC8);
  }

  return result;
}

void sub_1A4390D04(uint64_t a1)
{
  if (!qword_1EB138CD8)
  {
    sub_1A4392EC4(255, &qword_1EB138CE0, sub_1A3DEB710, MEMORY[0x1E69E6158], MEMORY[0x1E695A1A0]);
    v1 = sub_1A524ED44();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB138CD8);
    }
  }
}

uint64_t CreateAlbumIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v30 = a1;
  v1 = sub_1A5240334();
  v28 = *(v1 - 8);
  v29 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v27 = v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4391338(0, &qword_1EB1260E8, MEMORY[0x1E6959F70]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v26 = v23 - v4;
  sub_1A4391338(0, &qword_1EB12C828, MEMORY[0x1E695A7D8]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v25 = v23 - v6;
  sub_1A4391338(0, &qword_1EB12B008, MEMORY[0x1E6968E10]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v24 = v23 - v8;
  v9 = sub_1A5240BA4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1A5241284();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v14 = sub_1A524C624();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v23[0] = sub_1A5240BB4();
  v15 = *(v23[0] - 8);
  MEMORY[0x1EEE9AC00](v23[0]);
  sub_1A4392EC4(0, &qword_1EB138CE0, sub_1A3DEB710, MEMORY[0x1E69E6158], MEMORY[0x1E695A1A0]);
  v23[1] = v16;
  sub_1A524C5B4();
  sub_1A5241244();
  v17 = *MEMORY[0x1E6968DF0];
  v18 = *(v10 + 104);
  v18(v12, v17, v9);
  sub_1A5240BC4();
  sub_1A524C5B4();
  sub_1A5241244();
  v18(v12, v17, v9);
  v19 = v24;
  sub_1A5240BC4();
  (*(v15 + 56))(v19, 0, 1, v23[0]);
  v20 = sub_1A524C5A4();
  v31 = 0;
  v32 = 0;
  (*(*(v20 - 8) + 56))(v25, 1, 1, v20);
  v21 = sub_1A523FDB4();
  (*(*(v21 - 8) + 56))(v26, 1, 1, v21);
  (*(v28 + 104))(v27, *MEMORY[0x1E695A500], v29);
  result = sub_1A5240004();
  *v30 = result;
  return result;
}

void sub_1A4391338(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A524DF24();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t CreateAlbumIntent.perform()(uint64_t a1)
{
  v3 = *v1;
  v2[3] = a1;
  v2[4] = v3;
  sub_1A524CC54();
  v2[5] = sub_1A524CC44();
  v5 = sub_1A524CBC4();
  v2[6] = v5;
  v2[7] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1A4391428, v5, v4);
}

uint64_t sub_1A4391428(__n128 a1)
{
  v2 = *(v1 + 32);
  *(v1 + 16) = v2;
  *(v1 + 96) = 0;
  v3 = AlbumEntity.CollectionType.rawValue.getter();
  v5 = v4;
  *(v1 + 64) = v4;
  v6 = swift_task_alloc();
  *(v1 + 72) = v6;
  *(v6 + 16) = 0;
  *(v6 + 24) = v2;
  v7 = swift_task_alloc();
  *(v1 + 80) = v7;
  sub_1A4390C8C();
  *v7 = v1;
  v7[1] = sub_1A4391558;
  v8 = *(v1 + 24);

  return AppIntent.px_performWithLoggingAndAnalytics(intentName:category:count:_:)(v8, 0, 0, v3, v5, 0, 1, &unk_1A53344C8);
}

uint64_t sub_1A4391558()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = *(v2 + 48);
    v4 = *(v2 + 56);
    v5 = sub_1A439167C;
  }

  else
  {

    v3 = *(v2 + 48);
    v4 = *(v2 + 56);
    v5 = sub_1A3DEB9FC;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1A439167C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A43916F4(uint64_t a1, char a2, uint64_t a3)
{
  *(v3 + 193) = a2;
  *(v3 + 120) = a1;
  *(v3 + 128) = a3;
  sub_1A524CC54();
  *(v3 + 136) = sub_1A524CC44();
  v5 = sub_1A524CBC4();
  *(v3 + 144) = v5;
  *(v3 + 152) = v4;

  return MEMORY[0x1EEE6DFA0](sub_1A4391790, v5, v4);
}

uint64_t sub_1A4391790()
{
  v1 = *(v0 + 128);
  *(v0 + 192) = *(v0 + 193) & 1;
  sub_1A523FF44();
  v2 = *(v0 + 80);
  v3 = *(v0 + 88);
  *(v0 + 160) = v3;
  *(v0 + 104) = v1;
  sub_1A4390C8C();
  v4 = AppIntent.px_intentName.getter(&type metadata for CreateAlbumIntent);
  v6 = v5;
  *(v0 + 168) = v5;
  v7 = swift_task_alloc();
  *(v0 + 176) = v7;
  *v7 = v0;
  v7[1] = sub_1A439189C;

  return sub_1A4391BB8(v0 + 16, v0 + 96, (v0 + 192), v2, v3, v4, v6);
}

uint64_t sub_1A439189C()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  v3 = *(v2 + 144);
  v4 = *(v2 + 152);
  if (v0)
  {
    v5 = sub_1A3F58C88;
  }

  else
  {
    v5 = sub_1A43919D0;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1A43919D0()
{

  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[12];
  v0[6] = v2;
  v0[7] = v1;
  v0[8] = v3;
  v0[9] = v4;
  v0[14] = v5;
  sub_1A3DB2FBC();
  sub_1A4392DB4();
  sub_1A523FDC4();

  v6 = v0[1];

  return v6();
}

uint64_t sub_1A4391AD4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1A3D60150;

  return sub_1A43916F4(a1, v4, v5);
}

uint64_t sub_1A4391BB8(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 48) = a6;
  *(v7 + 56) = a7;
  *(v7 + 32) = a4;
  *(v7 + 40) = a5;
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v9 = sub_1A5246F24();
  *(v7 + 64) = v9;
  *(v7 + 72) = *(v9 - 8);
  *(v7 + 80) = swift_task_alloc();
  *(v7 + 88) = swift_task_alloc();
  *(v7 + 216) = *a3;
  sub_1A524CC54();
  *(v7 + 96) = sub_1A524CC44();
  v11 = sub_1A524CBC4();
  *(v7 + 104) = v11;
  *(v7 + 112) = v10;

  return MEMORY[0x1EEE6DFA0](sub_1A4391CCC, v11, v10);
}

void sub_1A4391CCC()
{
  v6 = v0;
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_1A3CB648C();
  v0[15] = v4;
  v5 = *(v3 + 16);
  v0[16] = v5;
  v0[17] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A4391F10(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 160) = a1;
  *(v4 + 168) = v1;

  v5 = *(v3 + 112);
  v6 = *(v3 + 104);
  if (v1)
  {
    v7 = sub_1A4392650;
  }

  else
  {
    v7 = sub_1A4392054;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

void sub_1A4392054()
{
  v1 = [*(v0 + 160) librarySpecificFetchOptions];
  *(v0 + 176) = v1;
  v2 = [objc_opt_self() fetchRootAlbumCollectionListWithOptions_];
  v3 = [v2 firstObject];
  *(v0 + 184) = v3;

  if (v3)
  {
    if (*(v0 + 216))
    {
      sub_1A524E6E4();
    }

    else
    {
      v4 = objc_allocWithZone(PXCreateAssetCollectionAction);
      v5 = v3;
      v6 = sub_1A524C634();
      v7 = [v4 initWithTitle:v6 parentCollectionList:v5 selectedAssets:0 keyAsset:0];
      *(v0 + 192) = v7;

      v8 = v7;
      v9 = swift_task_alloc();
      *(v0 + 200) = v9;
      *v9 = v0;
      v9[1] = sub_1A4392228;
      v10 = *(v0 + 48);
      v11 = *(v0 + 56);

      sub_1A4899AD4(v7, v10, v11);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1A4392228()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v3 = *(v2 + 104);
    v4 = *(v2 + 112);
    v5 = sub_1A43926D0;
  }

  else
  {

    v3 = *(v2 + 104);
    v4 = *(v2 + 112);
    v5 = sub_1A4392344;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

id sub_1A4392344()
{
  v9 = v0;
  result = [*(v0 + 192) createdAssetCollection];
  if (result)
  {
    v2 = result;
    v3 = *(v0 + 128);
    v4 = *(v0 + 120);
    v5 = *(v0 + 80);
    v6 = *(v0 + 64);

    AlbumEntity.init(_:)(v2, v8);
    v8[0];

    PXAppIntentsDebugDescription(for:)(v8);
    v7 = sub_1A3DB7808(v8[0], v8[1], v8[2], v8[3]);
    v3(v5, v4, v6, v7);
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  __break(1u);
  return result;
}

uint64_t sub_1A4392650()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A43926D0()
{
  v1 = v0[23];
  v2 = v0[24];
  v3 = v0[22];
  v4 = v0[20];

  v5 = v0[1];

  return v5();
}

void *sub_1A4392770@<X0>(void *a1@<X8>)
{
  result = sub_1A523FF44();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

void (*CreateAlbumIntent.title.modify(uint64_t *a1))(void *a1)
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
  *(v2 + 32) = sub_1A523FF34();
  return sub_1A3DB3FF0;
}

uint64_t sub_1A43928A0@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB1BB6B0 != -1)
  {
    swift_once();
  }

  v3 = sub_1A5240BB4();
  v4 = __swift_project_value_buffer(v3, qword_1EB1BB6B8);
  swift_beginAccess();
  return (*(*(v3 - 8) + 16))(a1, v4, v3);
}

uint64_t sub_1A4392960(uint64_t a1, uint64_t a2)
{
  sub_1A4392EC4(0, &qword_1EB138CC0, sub_1A4390C8C, &type metadata for CreateAlbumIntent, MEMORY[0x1E695A4A8]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1A4392EC4(0, &qword_1EB138CD0, sub_1A4390C8C, &type metadata for CreateAlbumIntent, MEMORY[0x1E695A4A0]);
  MEMORY[0x1EEE9AC00](v3);
  sub_1A5240314();
  sub_1A5240304();
  swift_getKeyPath();
  sub_1A4390D04(0);
  sub_1A52402F4();

  sub_1A5240304();
  sub_1A5240324();
  return sub_1A52402E4();
}

uint64_t sub_1A4392B48(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3D60150;

  return CreateAlbumIntent.perform()(a1);
}

uint64_t sub_1A4392BE4(uint64_t a1)
{
  v2 = sub_1A4390C8C();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

unint64_t sub_1A4392C24()
{
  result = qword_1EB138CE8;
  if (!qword_1EB138CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB138CE8);
  }

  return result;
}

unint64_t sub_1A4392C7C()
{
  result = qword_1EB138CF0;
  if (!qword_1EB138CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB138CF0);
  }

  return result;
}

unint64_t sub_1A4392CD4()
{
  result = qword_1EB138CF8;
  if (!qword_1EB138CF8)
  {
    sub_1A4392D2C(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB138CF8);
  }

  return result;
}

void sub_1A4392D2C(uint64_t a1)
{
  if (!qword_1EB138D00)
  {
    sub_1A3DB2FBC();
    sub_1A4392DB4();
    v1 = sub_1A52402B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB138D00);
    }
  }
}

unint64_t sub_1A4392DB4()
{
  result = qword_1EB138D08;
  if (!qword_1EB138D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB138D08);
  }

  return result;
}

unint64_t sub_1A4392E34()
{
  result = qword_1EB138D10;
  if (!qword_1EB138D10)
  {
    sub_1A4392EC4(255, &qword_1EB138D18, sub_1A4390C8C, &type metadata for CreateAlbumIntent, MEMORY[0x1E695A488]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB138D10);
  }

  return result;
}

void sub_1A4392EC4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

id sub_1A4392F2C(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, double a7)
{
  v8 = v7;
  v16 = objc_allocWithZone(v8);
  v17 = sub_1A43939A8(a1, a2 & 1, a3, a4 & 1, a5, a6, a7);
  (*(*(*(v8 + 11) - 8) + 8))(a3);
  (*(*(*(v8 + 10) - 8) + 8))(a1);
  return v17;
}

id sub_1A43930BC()
{
  v1 = (*MEMORY[0x1E69E7D40] & *v0);
  v2 = v1[17];
  v3 = *(v0 + v2);
  if (v3)
  {
    v4 = *(v0 + v2);
  }

  else
  {
    v5 = objc_allocWithZone(off_1E7721940);
    type metadata accessor for HighlightsHeaderLayout(0, v1[10], v1[11], v1[12]);
    v6 = v0;
    v7 = [v5 initWithTarget:sub_1A524EA94() needsUpdateSelector:sel_setNeedsUpdate];

    swift_unknownObjectRelease();
    v8 = *(v0 + v2);
    *(v0 + v2) = v7;
    v4 = v7;

    v3 = 0;
  }

  v9 = v3;
  return v4;
}

void sub_1A43931DC()
{
  v0 = sub_1A43930BC();
  [v0 setNeedsUpdateOf_];
}

void sub_1A4393228()
{
  [v0 referenceSize];
  [v0 setContentSize_];
  [v0 contentSize];
  sub_1A4393020();
}

id sub_1A4393340()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  v3 = sub_1A43930BC();
  [v3 updateIfNeeded];

  v4 = type metadata accessor for HighlightsHeaderLayout(0, *((v2 & v1) + 0x50), *((v2 & v1) + 0x58), *((v2 & v1) + 0x60));
  v6.receiver = v0;
  v6.super_class = v4;
  return objc_msgSendSuper2(&v6, sel_updateIfNeeded);
}

void sub_1A43933F0(void *a1)
{
  v1 = a1;
  sub_1A4393340();
}

void sub_1A4393438()
{
  v1 = type metadata accessor for HighlightsHeaderLayout(0, *((*MEMORY[0x1E69E7D40] & *v0) + 0x50), *((*MEMORY[0x1E69E7D40] & *v0) + 0x58), *((*MEMORY[0x1E69E7D40] & *v0) + 0x60));
  v3.receiver = v0;
  v3.super_class = v1;
  objc_msgSendSuper2(&v3, sel_displayScaleDidChange);
  v2 = sub_1A43930BC();
  [v2 setNeedsUpdateOf_];
}

void sub_1A43934E4(void *a1)
{
  v1 = a1;
  sub_1A4393438();
}

uint64_t sub_1A439352C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  swift_unknownObjectRetain();
  v7 = a1;
  sub_1A524E0B4();
  swift_unknownObjectRelease();
  v8 = sub_1A4393C08(v10, a5);

  __swift_destroy_boxed_opaque_existential_0(v10);
  return v8;
}

id sub_1A43935B0(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v6 = a1;
  sub_1A43940A0();

  v7 = sub_1A524C634();

  return v7;
}

id sub_1A4393634(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v6 = a1;
  sub_1A43943A0();
  v8 = v7;

  return v8;
}

id sub_1A4393698(void *a1)
{
  v2 = sub_1A52414C4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = a1;
  sub_1A4393784(v6);

  v7 = sub_1A5241414();
  (*(v3 + 8))(v5, v2);

  return v7;
}

id sub_1A43937DC()
{
  v1 = type metadata accessor for HighlightsHeaderLayout(0, *((*MEMORY[0x1E69E7D40] & *v0) + 0x50), *((*MEMORY[0x1E69E7D40] & *v0) + 0x58), *((*MEMORY[0x1E69E7D40] & *v0) + 0x60));
  v3.receiver = v0;
  v3.super_class = v1;
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_1A4393860(char *a1)
{
  v2 = MEMORY[0x1E69E7D40];
  v3 = *a1;
  v4 = *MEMORY[0x1E69E7D40];
  (*(*(*((*MEMORY[0x1E69E7D40] & *a1) + 0x50) - 8) + 8))(&a1[*((*MEMORY[0x1E69E7D40] & *a1) + 0x68)]);
  (*(*(*((v4 & v3) + 0x58) - 8) + 8))(&a1[*((*v2 & *a1) + 0x78)]);

  v5 = *&a1[*((*v2 & *a1) + 0x88)];
}

id sub_1A43939A8(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, double a7)
{
  v14 = MEMORY[0x1E69E7D40];
  v15 = *v7;
  v16 = *MEMORY[0x1E69E7D40];
  *&v7[*((*MEMORY[0x1E69E7D40] & *v7) + 0x88)] = 0;
  v17 = *((v16 & v15) + 0x50);
  (*(*(v17 - 8) + 16))(&v7[*((*v14 & *v7) + 0x68)], a1, v17);
  v7[*((*v14 & *v7) + 0x70)] = a2 & 1;
  v18 = *((v16 & v15) + 0x58);
  (*(*(v18 - 8) + 16))(&v7[*((*v14 & *v7) + 0x78)], a3, v18);
  v19 = &v7[*((*v14 & *v7) + 0x80)];
  *v19 = a4 & 1;
  *(v19 + 1) = a5;
  *(v19 + 2) = a6;
  *(v19 + 3) = a7;
  v20 = type metadata accessor for HighlightsHeaderLayout(0, v17, v18, *((v16 & v15) + 0x60));
  v24.receiver = v7;
  v24.super_class = v20;
  v21 = objc_msgSendSuper2(&v24, sel_init);
  v22 = sub_1A43930BC();
  [v22 addUpdateSelector:sel_updateContent needsUpdate:1];

  [v21 setContentSource_];
  [v21 addSpriteCount:1 withInitialState:0];

  return v21;
}

uint64_t sub_1A4393C08(void *a1, void *a2)
{
  v3 = v2;
  v25 = a2;
  v5 = *v3;
  v6 = *MEMORY[0x1E69E7D40];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v7 = *((v6 & v5) + 0x50);
  v24[3] = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v24[4] = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v24[2] = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v24[1] = v24 - v11;
  v12 = sub_1A524DF24();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v24 - v14;
  v16 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v24 - v18;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v20 = sub_1A524EA94();
  *v25 = v20;
  sub_1A3C2F0BC(a1, v26);
  v21 = swift_dynamicCast();
  v22 = *(v16 + 56);
  if (v21)
  {
    v22(v15, 0, 1, v7);
    (*(v16 + 32))(v19, v15, v7);
    sub_1A5246224();
  }

  v22(v15, 1, 1, v7);
  (*(v13 + 8))(v15, v12);
  return 0xFFFFFFFFLL;
}

uint64_t sub_1A43940A0()
{
  v1 = v0;
  v2 = *v0;
  v3 = *MEMORY[0x1E69E7D40];
  v4 = *((*MEMORY[0x1E69E7D40] & v2) + 0x60);
  v5 = *((*MEMORY[0x1E69E7D40] & v2) + 0x58);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_1A524DF24();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v23 - v13;
  (*(v4 + 64))(&v1[*((v3 & v2) + 0x68)], v5, v4, v12);
  (*(v8 + 16))(v10, v14, v7);
  v15 = *(AssociatedTypeWitness - 8);
  if ((*(v15 + 48))(v10, 1, AssociatedTypeWitness) == 1)
  {
    v16 = *(v8 + 8);
    v16(v10, v7);
  }

  else
  {
    v17 = v1[*((*MEMORY[0x1E69E7D40] & *v1) + 0x70)];
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v19 = (*(AssociatedConformanceWitness + 16))(v17, AssociatedTypeWitness, AssociatedConformanceWitness);
    v21 = v20;
    (*(v15 + 8))(v10, AssociatedTypeWitness);
    if (v21)
    {
      (*(v8 + 8))(v14, v7);
      return v19;
    }

    v16 = *(v8 + 8);
  }

  v16(v14, v7);

  return 4271950;
}

void sub_1A43943A0()
{
  v1 = v0;
  v2 = *v0;
  v3 = *MEMORY[0x1E69E7D40];
  v4 = *((*MEMORY[0x1E69E7D40] & v2) + 0x60);
  v5 = *((*MEMORY[0x1E69E7D40] & v2) + 0x58);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v28 = sub_1A524DF24();
  v7 = *(v28 - 1);
  MEMORY[0x1EEE9AC00](v28);
  v9 = &v23 - v8;
  v10 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v23 - v13;
  (*(v4 + 64))(&v1[*((v3 & v2) + 0x68)], v5, v4, v12);
  if ((*(v10 + 48))(v9, 1, AssociatedTypeWitness) == 1)
  {
    (*(v7 + 8))(v9, v28);
  }

  else
  {
    (*(v10 + 32))(v14, v9, AssociatedTypeWitness);
    v15 = v1[*((*MEMORY[0x1E69E7D40] & *v1) + 0x70)];
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v17 = *(AssociatedConformanceWitness + 16);
    v27 = v15;
    v18 = v17(v15, AssociatedTypeWitness, AssociatedConformanceWitness);
    if (v19)
    {
      v24 = v14;
      v25 = v10;
      v26 = AssociatedTypeWitness;
      v29 = v18;
      v30 = v19;
      v31 = sub_1A524C674();
      v32 = v20;
      sub_1A3D5F9DC();
      v21 = sub_1A524DF84();

      v28 = [objc_allocWithZone(MEMORY[0x1E696AD40]) init];
      if (*(v21 + 16))
      {
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      v22 = v28;
      [v28 copy];
      sub_1A524E0B4();

      swift_unknownObjectRelease();
      (*(v25 + 8))(v24, v26);
      sub_1A43700E0();
      swift_dynamicCast();
    }

    else
    {
      (*(v10 + 8))(v14, AssociatedTypeWitness);
    }
  }
}

uint64_t sub_1A4394900(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
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

uint64_t sub_1A43949F0()
{
  Sprite.init(rect:mediaKind:)(3, &v11, v0[2], v0[3], v0[4], v0[5]);
  SpriteConfiguration.zPosition(_:)(&type metadata for Sprite, &protocol witness table for Sprite, 2.0);

  v1 = static SpriteBuilder.buildExpression(_:)(v12);
  __swift_destroy_boxed_opaque_existential_0(v12);
  sub_1A4394B00(0, &qword_1EB138D80, sub_1A42A59CC, MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1A52F8E10;
  *(v2 + 32) = v1;
  v9 = static SpriteBuilder.buildBlock(_:)(v2, v3, v4, v5, v6, v7, v8);

  return v9;
}

void sub_1A4394B00(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

double sub_1A4394B64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_opt_self();
  [v6 dynamicTextScaleFactorForCategory_];
  v7 = *(a3 + 24);
  v9 = v8 * v7(a2, a3);
  v7(a2, a3);
  return v9;
}

uint64_t PhotosAppTestLaunchConfiguration.init(launchArguments:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23[0] = a2;
  v24 = sub_1A524C6F4();
  v4 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v23[2] = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C4D23C(0, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v31 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v23 - v9;
  v11 = sub_1A5240E64();
  v12 = *(v11 - 8);
  v27 = *(v12 + 56);
  v28 = v11;
  v26 = v12 + 56;
  v27(v10, 1, 1);
  v13 = *(a1 + 16);
  if (v13)
  {
    v29 = 0;
    v30 = 0;
    v25 = 0;
    v23[1] = v4 + 8;
    v14 = a1 + 56;
    v15 = 1;
    while (1)
    {
      if (v15 - 1 >= *(a1 + 16))
      {
        __break(1u);
        goto LABEL_17;
      }

      v17 = a1;
      a1 = *(v14 - 24);
      v4 = *(v14 - 16);
      v18 = a1 == 0x6F5468636E75616CLL && v4 == 0xEB000000004C5255;
      if (!v18 && (sub_1A524EAB4() & 1) == 0)
      {
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      if (v15 < v13)
      {
        break;
      }

      sub_1A3C688C0(v10, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
      v4 = v31;
      (v27)(v31, 1, 1, v28);
      sub_1A408A03C(v4, v10);
      a1 = v17;
      v16 = v15 + 1;
      v15 += 2;
      v14 += 32;
      if (v16 >= v13)
      {
        goto LABEL_15;
      }
    }

    if (v15 < *(v17 + 16))
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

LABEL_17:
    __break(1u);
    __break(1u);
    __break(1u);
    v32 = 0;
    v33 = 0xE000000000000000;
    sub_1A524E404();

    v32 = 0xD000000000000019;
    v33 = 0x80000001A53D3BD0;
    MEMORY[0x1A5907B60](a1, v4);
    sub_1A524E6E4();
    __break(1u);

    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    v29 = 0;
    v30 = 0;
LABEL_15:

    v19 = v23[0];
    sub_1A408A03C(v10, v23[0]);
    result = type metadata accessor for PhotosAppTestLaunchConfiguration(0);
    v21 = v19 + *(result + 20);
    v22 = v29;
    *v21 = v30;
    *(v21 + 8) = v22;
    *(v21 + 16) = 0;
    *(v21 + 24) = -1;
  }

  return result;
}

id PhotosXCPTestUtilities.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PhotosXCPTestUtilities.init()(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for PhotosXCPTestUtilities(a1, a2);
  return objc_msgSendSuper2(&v4, sel_init);
}

id PhotosXCPTestUtilities.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for PhotosXCPTestUtilities(a1, a2);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t PhotosAppTestLaunchConfiguration.shelvesOverride.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for PhotosAppTestLaunchConfiguration(0) + 20);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  v7 = *(v3 + 24);
  *(a1 + 24) = v7;

  return sub_1A4396980(v4, v5, v6, v7);
}

__n128 PhotosAppTestLaunchConfiguration.init(url:shelvesOverride:)@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X1>, uint64_t a3@<X8>)
{
  v8 = *a2;
  v4 = a2[1].n128_u64[0];
  v5 = a2[1].n128_u8[8];
  sub_1A408A03C(a1, a3);
  v6 = (a3 + *(type metadata accessor for PhotosAppTestLaunchConfiguration(0) + 20));
  result = v8;
  *v6 = v8;
  v6[1].n128_u64[0] = v4;
  v6[1].n128_u8[8] = v5;
  return result;
}

uint64_t PhotosAppTestLaunchConfiguration.launchArguments.getter(double a1)
{
  v2 = v1;
  v3 = sub_1A524C6F4();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = MEMORY[0x1E6968FB0];
  sub_1A3C4D23C(0, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v26 - v6;
  v8 = sub_1A5240E64();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1E69E7CC0];
  sub_1A439768C(v2, v7, &unk_1EB12B250, v4);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1A3C688C0(v7, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
    sub_1A3C4D634(0, &qword_1EB12B260, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1A52FC9F0;
    *(inited + 32) = 0x6F5468636E75616CLL;
    *(inited + 40) = 0xEB000000004C5255;
    *(inited + 48) = sub_1A5240CD4();
    *(inited + 56) = v13;
    sub_1A3D3A048(inited);
    (*(v9 + 8))(v11, v8);
  }

  v14 = v2 + *(type metadata accessor for PhotosAppTestLaunchConfiguration(0) + 20);
  v15 = *(v14 + 24);
  if (v15 == 255)
  {
    return v28;
  }

  v16 = *(v14 + 16);
  *v26 = *v14;
  sub_1A3C4D634(0, &qword_1EB12B260, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v17 = swift_initStackObject();
  *(v17 + 16) = xmmword_1A52FC9F0;
  *(v17 + 32) = 0x4F7365766C656873;
  *(v17 + 40) = 0xEF65646972726576;
  *&v26[11] = *v26;
  v26[13] = v16;
  v27 = v15 & 1;
  sub_1A5240454();
  swift_allocObject();
  sub_1A5240444();
  sub_1A43969A0();
  v18 = sub_1A5240434();
  v20 = v19;
  sub_1A524C6D4();
  v21 = sub_1A524C694();
  if (v22)
  {
    v23 = v21;
    v24 = v22;
    sub_1A3C59280(v18, v20);

    *(v17 + 48) = v23;
    *(v17 + 56) = v24;
    sub_1A3D3A048(v17);
    return v28;
  }

  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1A43959C4()
{
  if (*v0)
  {
    return 0x6465746165706572;
  }

  else
  {
    return 0x6853656C676E6973;
  }
}

void sub_1A4395A14(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6853656C676E6973 && a2 == 0xEB00000000666C65;
  if (v6 || (sub_1A524EAB4() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x6465746165706572 && a2 == 0xED0000666C656853)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1A524EAB4();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_1A4395AFC(uint64_t a1)
{
  v2 = sub_1A43971B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A4395B38(uint64_t a1)
{
  v2 = sub_1A43971B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A4395B74()
{
  if (*v0)
  {
    return 12639;
  }

  else
  {
    return 12383;
  }
}

void sub_1A4395B90(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (sub_1A524EAB4() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 12639 && a2 == 0xE200000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1A524EAB4();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_1A4395C5C(uint64_t a1)
{
  v2 = sub_1A4397110();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A4395C98(uint64_t a1)
{
  v2 = sub_1A4397110();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A4395CD4(uint64_t a1)
{
  v2 = sub_1A4397164();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A4395D10(uint64_t a1)
{
  v2 = sub_1A4397164();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PhotosAppShelvesOverride.encode(to:)(void *a1)
{
  v3 = MEMORY[0x1E69E6F58];
  sub_1A439720C(0, &qword_1EB138DA8, sub_1A4397110, &type metadata for PhotosAppShelvesOverride.RepeatedShelfCodingKeys, MEMORY[0x1E69E6F58]);
  v24 = *(v4 - 8);
  v25 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v23 = &v20 - v5;
  sub_1A439720C(0, &qword_1EB138DB0, sub_1A4397164, &type metadata for PhotosAppShelvesOverride.SingleShelfCodingKeys, v3);
  v21 = *(v6 - 8);
  v22 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v20 - v7;
  sub_1A439720C(0, &qword_1EB138DB8, sub_1A43971B8, &type metadata for PhotosAppShelvesOverride.CodingKeys, v3);
  v10 = v9;
  v29 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v20 - v11;
  v13 = *v1;
  v26 = v1[1];
  v27 = v13;
  v20 = v1[2];
  v14 = *(v1 + 24);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A43971B8();
  sub_1A524ED34();
  if (v14)
  {
    v33 = 1;
    sub_1A4397110();
    v15 = v23;
    sub_1A524E944();
    v32 = 0;
    v16 = v25;
    v17 = v28;
    sub_1A524E994();
    if (!v17)
    {
      v31 = 1;
      sub_1A524E9C4();
    }

    (*(v24 + 8))(v15, v16);
  }

  else
  {
    v30 = 0;
    sub_1A4397164();
    sub_1A524E944();
    v18 = v22;
    sub_1A524E994();
    (*(v21 + 8))(v8, v18);
  }

  return (*(v29 + 8))(v12, v10);
}

uint64_t PhotosAppShelvesOverride.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v3 = MEMORY[0x1E69E6F48];
  sub_1A439720C(0, &qword_1EB138DC0, sub_1A4397110, &type metadata for PhotosAppShelvesOverride.RepeatedShelfCodingKeys, MEMORY[0x1E69E6F48]);
  v41 = v4;
  v39 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v40 = &v36 - v5;
  sub_1A439720C(0, &qword_1EB138DC8, sub_1A4397164, &type metadata for PhotosAppShelvesOverride.SingleShelfCodingKeys, v3);
  v7 = v6;
  v38 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v36 - v8;
  sub_1A439720C(0, &qword_1EB138DD0, sub_1A43971B8, &type metadata for PhotosAppShelvesOverride.CodingKeys, v3);
  v11 = v10;
  v43 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v36 - v12;
  v14 = a1[3];
  v45 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1A43971B8();
  v15 = v44;
  sub_1A524ED14();
  if (!v15)
  {
    v17 = v40;
    v16 = v41;
    v18 = v42;
    v19 = sub_1A524E924();
    if (*(v19 + 16) == 1)
    {
      v44 = v19;
      v46 = *(v19 + 32);
      if (v46)
      {
        v50 = 1;
        sub_1A4397110();
        v20 = v17;
        sub_1A524E844();
        v21 = v43;
        v49 = 0;
        v22 = sub_1A524E8A4();
        v37 = v23;
        v38 = v22;
        v48 = 1;
        v34 = sub_1A524E8D4();
        (*(v39 + 8))(v20, v16);
        (*(v21 + 8))(v13, v11);
        swift_unknownObjectRelease();
        v35 = v37;
      }

      else
      {
        v47 = 0;
        sub_1A4397164();
        v27 = v9;
        sub_1A524E844();
        v28 = v43;
        v30 = v7;
        v31 = sub_1A524E8A4();
        v32 = (v38 + 8);
        v35 = v33;
        v38 = v31;
        (*v32)(v27, v30);
        (*(v28 + 8))(v13, v11);
        swift_unknownObjectRelease();
        v34 = 0;
      }

      *v18 = v38;
      *(v18 + 8) = v35;
      *(v18 + 16) = v34;
      *(v18 + 24) = v46;
    }

    else
    {
      v24 = sub_1A524E4C4();
      swift_allocError();
      v26 = v25;
      sub_1A3FA0828(0);
      *v26 = &type metadata for PhotosAppShelvesOverride;
      sub_1A524E854();
      sub_1A524E4A4();
      (*(*(v24 - 8) + 104))(v26, *MEMORY[0x1E69E6AF8], v24);
      swift_willThrow();
      (*(v43 + 8))(v13, v11);
      swift_unknownObjectRelease();
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v45);
}

double sub_1A439690C(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 != -1)
  {
    return sub_1A4396924(result, a2);
  }

  return v4;
}

unint64_t sub_1A439692C()
{
  result = qword_1EB138D98;
  if (!qword_1EB138D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB138D98);
  }

  return result;
}

uint64_t sub_1A4396980(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 != -1)
  {
    sub_1A4396998(result, a2);
  }

  return result;
}

unint64_t sub_1A43969A0()
{
  result = qword_1EB138DA0;
  if (!qword_1EB138DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB138DA0);
  }

  return result;
}

void _s12PhotosUICore0A18AppShelvesOverrideO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v5 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 24))
  {
    if (*(a2 + 24))
    {
      v6 = *a1;
      if (v3 != v5 || v2 != v4)
      {
        sub_1A524EAB4();
        sub_1A4396998(v5, v4);
      }

      sub_1A4396998(v6, v2);
    }
  }

  else if ((*(a2 + 24) & 1) == 0)
  {
    v8 = *a1;
    if (v3 != v5 || v2 != v4)
    {
      sub_1A524EAB4();
      sub_1A4396998(v5, v4);
    }

    sub_1A4396998(v8, v2);
  }

  sub_1A4396998(*a2, *(a2 + 8));
}

uint64_t _s12PhotosUICore0A26AppTestLaunchConfigurationV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A5240E64();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1E6968FB0];
  sub_1A3C4D23C(0, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v32 - v10;
  sub_1A406C37C(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v15 + 56);
  sub_1A439768C(a1, v14, &unk_1EB12B250, v8);
  sub_1A439768C(a2, &v14[v16], &unk_1EB12B250, v8);
  v17 = *(v5 + 48);
  if (v17(v14, 1, v4) != 1)
  {
    sub_1A439768C(v14, v11, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
    if (v17(&v14[v16], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v16], v4);
      sub_1A4397634();
      v18 = sub_1A524C594();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v11, v4);
      sub_1A3C688C0(v14, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
      if ((v18 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_8;
    }

    (*(v5 + 8))(v11, v4);
LABEL_6:
    sub_1A43975D8(v14);
    return 0;
  }

  if (v17(&v14[v16], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_1A3C688C0(v14, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
LABEL_8:
  v20 = *(type metadata accessor for PhotosAppTestLaunchConfiguration(0) + 20);
  v21 = a1 + v20;
  v23 = *(a1 + v20);
  v22 = *(a1 + v20 + 8);
  v24 = *(v21 + 16);
  v25 = *(v21 + 24);
  v26 = a2 + v20;
  v28 = *v26;
  v27 = *(v26 + 8);
  v29 = *(v26 + 16);
  v30 = *(v26 + 24);
  if (v25 == 255)
  {
    sub_1A4396980(v23, v22, *(v21 + 16), 255);
    if (v30 == 255)
    {
      sub_1A4396980(v28, v27, v29, 255);
      sub_1A439690C(v23, v22, v24, 255);
      return 1;
    }

    sub_1A4396980(v28, v27, v29, v30);
  }

  else
  {
    v34[0] = v23;
    v34[1] = v22;
    v34[2] = v24;
    v35 = v25;
    if (v30 != 255)
    {
      v32[0] = v28;
      v32[1] = v27;
      v32[2] = v29;
      v33 = v30 & 1;
      sub_1A4396980(v23, v22, v24, v25);
      sub_1A4396980(v28, v27, v29, v30);
      sub_1A4396980(v23, v22, v24, v25);
      _s12PhotosUICore0A18AppShelvesOverrideO2eeoiySbAC_ACtFZ_0(v34, v32);
    }

    sub_1A4396980(v23, v22, v24, v25);
    sub_1A4396980(v28, v27, v29, 255);
    sub_1A4396980(v23, v22, v24, v25);
    sub_1A4396924(v23, v22);
  }

  sub_1A439690C(v23, v22, v24, v25);
  sub_1A439690C(v28, v27, v29, v30);
  return 0;
}

unint64_t sub_1A4397110()
{
  result = qword_1EB1BB900;
  if (!qword_1EB1BB900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1BB900);
  }

  return result;
}

unint64_t sub_1A4397164()
{
  result = qword_1EB1BB908;
  if (!qword_1EB1BB908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1BB908);
  }

  return result;
}

unint64_t sub_1A43971B8()
{
  result = qword_1EB1BB910[0];
  if (!qword_1EB1BB910[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1BB910);
  }

  return result;
}

void sub_1A439720C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_1A43972C4()
{
  result = qword_1EB1BBC20[0];
  if (!qword_1EB1BBC20[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1BBC20);
  }

  return result;
}

unint64_t sub_1A439731C()
{
  result = qword_1EB1BBE30[0];
  if (!qword_1EB1BBE30[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1BBE30);
  }

  return result;
}

unint64_t sub_1A4397374()
{
  result = qword_1EB1BC040[0];
  if (!qword_1EB1BC040[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1BC040);
  }

  return result;
}

unint64_t sub_1A43973CC()
{
  result = qword_1EB1BC150;
  if (!qword_1EB1BC150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1BC150);
  }

  return result;
}

unint64_t sub_1A4397424()
{
  result = qword_1EB1BC158[0];
  if (!qword_1EB1BC158[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1BC158);
  }

  return result;
}

unint64_t sub_1A439747C()
{
  result = qword_1EB1BC1E0;
  if (!qword_1EB1BC1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1BC1E0);
  }

  return result;
}

unint64_t sub_1A43974D4()
{
  result = qword_1EB1BC1E8[0];
  if (!qword_1EB1BC1E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1BC1E8);
  }

  return result;
}

unint64_t sub_1A439752C()
{
  result = qword_1EB1BC270;
  if (!qword_1EB1BC270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1BC270);
  }

  return result;
}

unint64_t sub_1A4397584()
{
  result = qword_1EB1BC278;
  if (!qword_1EB1BC278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1BC278);
  }

  return result;
}

uint64_t sub_1A43975D8(uint64_t a1)
{
  sub_1A406C37C(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1A4397634()
{
  result = qword_1EB126050;
  if (!qword_1EB126050)
  {
    sub_1A5240E64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB126050);
  }

  return result;
}

uint64_t sub_1A439768C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1A3C4D23C(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1A43976F8(uint64_t a1, uint64_t a2)
{
  sub_1A3C4D23C(0, &qword_1EB12AA68, type metadata accessor for PhotosAppTestLaunchConfiguration);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A439777C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](a1);
  (*(v8 + 16))(&v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v10);
  v11 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v12 = swift_allocObject();
  *(v12 + 2) = a3;
  *(v12 + 3) = a4;
  *(v12 + 4) = a2;
  (*(v8 + 32))(&v12[v11], &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a3);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  sub_1A5242104();
  return (*(v8 + 8))(a1, a3);
}

uint64_t sub_1A43979D0(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v1 = sub_1A5242114();
  return MEMORY[0x1A58FD460](v1);
}

uint64_t sub_1A4397AC4(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  result = sub_1A5242114();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1A4397C1C(void *a1)
{
  swift_allocObject();
  v2 = sub_1A4398ED4(a1);

  return v2;
}

void sub_1A4397C64(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1A524BFF4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A3C52C70(0, &qword_1EB12B180, 0x1E69E9610);
  *v6 = sub_1A524D474();
  (*(v4 + 104))(v6, *MEMORY[0x1E69E8018], v3);
  v7 = sub_1A524C024();
  (*(v4 + 8))(v6, v3);
  if (v7)
  {
    v8 = [*(v2 + 112) librarySpecificFetchOptions];
    sub_1A3C4D548(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1A52F9DE0;
    v10 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
    v11 = sub_1A524C634();
    v12 = [v10 initWithKey:v11 ascending:1];

    *(v9 + 32) = v12;
    v13 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
    v14 = sub_1A524C634();
    v15 = [v13 initWithKey:v14 ascending:1];

    *(v9 + 40) = v15;
    sub_1A3C52C70(0, &qword_1EB126B60, 0x1E696AEB0);
    v16 = sub_1A524CA14();

    [v8 setSortDescriptors_];

    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1A52F9790;
    sub_1A3C52C70(0, &qword_1EB126D20, 0x1E696AE18);
    sub_1A3E072BC(0);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1A52F8E10;
    *(v18 + 56) = MEMORY[0x1E69E6158];
    *(v18 + 64) = sub_1A3D710E8();
    *(v18 + 32) = 0xD00000000000001CLL;
    *(v18 + 40) = 0x80000001A53D3C30;
    *(v17 + 32) = sub_1A524D134();
    v19 = sub_1A524CA14();

    v20 = [objc_opt_self() andPredicateWithSubpredicates_];

    [v8 setInternalPredicate_];
    v21 = objc_opt_self();
    v22 = sub_1A524CA14();
    v23 = [v21 fetchAssetsWithUUIDs:v22 options:v8];

    if (v23)
    {

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1A4398034(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  sub_1A43991EC(0, &qword_1EB126090, MEMORY[0x1E6968278], MEMORY[0x1E69E6720]);
  v3[11] = v4;
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v5 = sub_1A5240664();
  v3[14] = v5;
  v3[15] = *(v5 - 8);
  v3[16] = swift_task_alloc();
  v6 = sub_1A524BFF4();
  v3[17] = v6;
  v3[18] = *(v6 - 8);
  v3[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A43981C0, v2, 0);
}

uint64_t sub_1A43981C0()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];
  sub_1A3C52C70(0, &qword_1EB12B180, 0x1E69E9610);
  *v1 = sub_1A524D474();
  (*(v2 + 104))(v1, *MEMORY[0x1E69E8018], v3);
  v4 = sub_1A524C024();
  v5 = (*(v2 + 8))(v1, v3);
  if (v4)
  {
    v8 = sub_1A52451B4();
    v9 = sub_1A52469D4();
    v10 = MEMORY[0x1E69C1888];
    v0[5] = v9;
    v0[6] = v10;
    v0[2] = v8;
    v11 = swift_task_alloc();
    v0[20] = v11;
    *v11 = v0;
    v11[1] = sub_1A4398324;
    v6 = v0[9];
    v5 = v0[8];
    v7 = v0 + 2;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE2A438](v5, v6, v7);
}

uint64_t sub_1A4398324(uint64_t a1)
{
  v3 = *v2;
  v3[21] = a1;
  v3[22] = v1;

  if (v1)
  {
    v4 = v3[10];
    v5 = sub_1A439869C;
  }

  else
  {
    v6 = v3[10];
    __swift_destroy_boxed_opaque_existential_0(v3 + 2);
    v5 = sub_1A439844C;
    v4 = v6;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

void sub_1A439844C()
{
  v7 = v0;
  v1 = *(v0 + 168);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = sub_1A3C51BF0(*(v1 + 16), 0);
    sub_1A3C423E8(&v6, v3 + 4, v2, v1);
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v4 = (*(**(v0 + 80) + 128))(MEMORY[0x1E69E7CC0]);

  v5 = v4;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A439869C()
{
  v26 = v0;
  v1 = v0[22];
  v3 = v0[15];
  v2 = v0[16];
  v5 = v0[13];
  v4 = v0[14];
  v6 = v0[9];
  v7 = v0[8];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  (*(v3 + 16))(v2, v7, v4);
  sub_1A4399250(v6, v5);
  v8 = v1;
  v9 = sub_1A5246F04();
  LOBYTE(v2) = sub_1A524D244();

  if (os_log_type_enabled(v9, v2))
  {
    v11 = v0[15];
    v10 = v0[16];
    v12 = v0[14];
    v13 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v13 = 136315650;
    sub_1A43994B4(&qword_1EB138DD8, MEMORY[0x1E6968278], MEMORY[0x1E69682A0]);
    v14 = sub_1A524EA44();
    v16 = v15;
    (*(v11 + 8))(v10, v12);
    sub_1A3C2EF94(v14, v16, &v25);
  }

  v18 = v0[15];
  v17 = v0[16];
  v20 = v0[13];
  v19 = v0[14];

  sub_1A43992E4(v20);
  (*(v18 + 8))(v17, v19);
  v21 = v0[22];
  v22 = [objc_allocWithZone(MEMORY[0x1E6978840]) init];

  v23 = v0[1];

  return v23(v22);
}

uint64_t sub_1A43989EC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_1A524BFF4();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A4398AB0, v2, 0);
}

uint64_t sub_1A4398AB0()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 40);
  sub_1A3C52C70(0, &qword_1EB12B180, 0x1E69E9610);
  *v1 = sub_1A524D474();
  (*(v2 + 104))(v1, *MEMORY[0x1E69E8018], v3);
  v4 = sub_1A524C024();
  result = (*(v2 + 8))(v1, v3);
  if (v4)
  {
    v9 = (*(**(v0 + 32) + 136) + **(**(v0 + 32) + 136));
    v6 = swift_task_alloc();
    *(v0 + 64) = v6;
    *v6 = v0;
    v6[1] = sub_1A4398C60;
    v7 = *(v0 + 24);
    v8 = *(v0 + 16);

    return v9(v8, v7);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A4398C60(uint64_t a1)
{
  v2 = *(*v1 + 32);
  *(*v1 + 72) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1A4398D78, v2, 0);
}

uint64_t sub_1A4398D78()
{
  v1 = *(v0 + 72);
  v2 = [v1 count];

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_1A4398E04()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore41GenerativeStoryEventAmbiguityAssetFetcher_queryDisambiguationAssetFetcher;
  v2 = sub_1A5245424();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC12PhotosUICore41GenerativeStoryEventAmbiguityAssetFetcher_logger;
  v4 = sub_1A5246F24();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1A4398ED4(void *a1)
{
  v3 = sub_1A52469C4();
  v16[1] = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v16[2] = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A5245424();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  v9 = OBJC_IVAR____TtC12PhotosUICore41GenerativeStoryEventAmbiguityAssetFetcher_logger;
  v10 = sub_1A3C4A780();
  v11 = sub_1A5246F24();
  (*(*(v11 - 8) + 16))(v1 + v9, v10, v11);
  *(v1 + 112) = a1;
  v12 = a1;
  sub_1A5245414();
  (*(v6 + 32))(v1 + OBJC_IVAR____TtC12PhotosUICore41GenerativeStoryEventAmbiguityAssetFetcher_queryDisambiguationAssetFetcher, v8, v5);
  v13 = MEMORY[0x1E69C1878];
  sub_1A43991EC(0, &qword_1EB1202E0, MEMORY[0x1E69C1878], MEMORY[0x1E69E6F90]);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1A52FC9F0;
  sub_1A52469B4();
  sub_1A52469A4();
  v16[3] = v14;
  sub_1A43994B4(&qword_1EB124A50, MEMORY[0x1E69C1878], MEMORY[0x1E69C1880]);
  sub_1A43991EC(0, &qword_1EB120C98, v13, MEMORY[0x1E69E62F8]);
  sub_1A4000BE0();
  sub_1A524E224();
  sub_1A5245214();
  swift_allocObject();
  *(v1 + OBJC_IVAR____TtC12PhotosUICore41GenerativeStoryEventAmbiguityAssetFetcher_storyGenerationEventRecorder) = sub_1A52451F4();
  return v1;
}

void sub_1A43991EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A4399250(uint64_t a1, uint64_t a2)
{
  sub_1A43991EC(0, &qword_1EB126090, MEMORY[0x1E6968278], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A43992E4(uint64_t a1)
{
  sub_1A43991EC(0, &qword_1EB126090, MEMORY[0x1E6968278], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for GenerativeStoryEventAmbiguityAssetFetcher(uint64_t a1)
{
  result = qword_1EB1BC3A0;
  if (!qword_1EB1BC3A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A43993C4(uint64_t a1)
{
  result = sub_1A5245424();
  if (v2 <= 0x3F)
  {
    result = sub_1A5246F24();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1A43994B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

BOOL sub_1A43994FC()
{
  v1 = sub_1A42C0D2C(*(v0 + 16));
  v2 = v1;
  if (v1)
  {
  }

  return v2 != 0;
}

uint64_t sub_1A439953C()
{
  sub_1A524CC54();
  *(v0 + 16) = sub_1A524CC44();
  v2 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A43995D0, v2, v1);
}

uint64_t sub_1A43995D0()
{

  v1 = *(v0 + 8);

  return v1(2);
}

void sub_1A4399638(void *a1, uint64_t a2)
{
  v6 = a2;
  v4 = type metadata accessor for LemonadePhotosPagingMemoryGridConfiguration(0);
  MEMORY[0x1EEE9AC00](v4);
  v5 = &v3 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A5245BA4();
}

uint64_t sub_1A439A150()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1A439A1AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1A3FBB594;

  return sub_1A4402AC0(a1, a2, a3, a4);
}

uint64_t sub_1A439A26C(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 104) + **(*v2 + 104));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1A3FBBB04;

  return v8(a1, a2);
}

uint64_t sub_1A439A3B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LemonadePhotosPagingMemoryGridConfiguration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A439A41C(uint64_t a1)
{
  v2 = type metadata accessor for LemonadePhotosPagingMemoryGridConfiguration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A439A478@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = type metadata accessor for PersonActionBanner(0);
  v8 = a4 + *(v7 + 20);
  sub_1A524B694();
  *v8 = v11;
  *(v8 + 8) = v12;
  type metadata accessor for PhotosViewPersonBannerModel(0);
  sub_1A439BDBC(&qword_1EB138888, type metadata accessor for PhotosViewPersonBannerModel, &unk_1A5332E44);
  result = sub_1A524BAC4();
  v10 = (a4 + *(v7 + 24));
  *v10 = a2;
  v10[1] = a3;
  return result;
}

uint64_t sub_1A439A578@<X0>(uint64_t a1@<X8>)
{
  v46 = a1;
  v2 = type metadata accessor for PersonActionBanner(0);
  v3 = v2 - 8;
  v44 = *(v2 - 8);
  v4 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v2);
  sub_1A439AB5C(0);
  v41 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A439AD7C(0);
  v9 = *(v8 - 1);
  v39 = v8;
  v40 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v36 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A439AE30(0);
  v45 = v11;
  v42 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v7 = sub_1A5249314();
  *(v7 + 1) = 0;
  v7[16] = 1;
  sub_1A439B51C(0);
  sub_1A439B0E8(v1, &v7[*(v14 + 44)]);
  v15 = sub_1A439BDBC(&qword_1EB138E18, sub_1A439AB5C, MEMORY[0x1E69817F8]);
  sub_1A524A754();
  sub_1A3CF6E04(v7);
  v16 = v1 + *(v3 + 28);
  v17 = v1;
  v18 = *v16;
  v19 = *(v16 + 8);
  v51[0] = v18;
  v52 = v19;
  sub_1A439B5B4(0, &qword_1EB1274B0, MEMORY[0x1E6981790]);
  sub_1A524B6C4();
  v35[1] = v49;
  sub_1A439C1B0(v1, v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PersonActionBanner);
  v20 = (*(v44 + 80) + 16) & ~*(v44 + 80);
  v43 = v4;
  v21 = swift_allocObject();
  v44 = v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A439B66C(v44, v21 + v20);
  sub_1A439BCB4(0, &qword_1EB143BC0, type metadata accessor for LemonadePeopleNamingView, sub_1A439AF64);
  v23 = v22;
  v47 = v41;
  v48 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v25 = sub_1A439AFD8();
  v37 = OpaqueTypeConformance2;
  v38 = v23;
  v41 = v13;
  v26 = v39;
  v27 = v36;
  sub_1A524AFF4();

  (*(v40 + 8))(v27, v26);
  sub_1A439B608(0, &qword_1EB138E38, type metadata accessor for PhotosViewPersonBannerModel, MEMORY[0x1E6981AA0]);
  sub_1A524BAA4();
  v28 = *(v47 + 7);

  if (v28)
  {
    v29 = sub_1A428825C();

    v51[0] = v29 & 1;
    v30 = v44;
    sub_1A439C1B0(v17, v44, type metadata accessor for PersonActionBanner);
    v31 = swift_allocObject();
    sub_1A439B66C(v30, v31 + v20);
    v47 = v26;
    v48 = v38;
    v49 = v37;
    v50 = v25;
    swift_getOpaqueTypeConformance2();
    v32 = v45;
    v33 = v41;
    sub_1A524B144();

    return (*(v42 + 8))(v33, v32);
  }

  else
  {
    result = sub_1A524E6E4();
    __break(1u);
  }

  return result;
}

void sub_1A439AB5C(uint64_t a1)
{
  if (!qword_1EB138DE0)
  {
    sub_1A439B608(255, &qword_1EB138DE8, sub_1A439AC10, MEMORY[0x1E6981F40]);
    sub_1A439C8F4(&qword_1EB138E08, &qword_1EB138DE8, sub_1A439AC10);
    v1 = sub_1A524B784();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB138DE0);
    }
  }
}

void sub_1A439AC10(uint64_t a1)
{
  if (!qword_1EB138DF0)
  {
    sub_1A439AC78(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB138DF0);
    }
  }
}

void sub_1A439AC78(uint64_t a1)
{
  if (!qword_1EB138DF8)
  {
    sub_1A3D93850();
    sub_1A5243C64();
    sub_1A439BDBC(&qword_1EB127490, sub_1A3D93850, MEMORY[0x1E697D680]);
    sub_1A439BDBC(&qword_1EB138E00, MEMORY[0x1E69C2868], MEMORY[0x1E69C2860]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB138DF8);
    }
  }
}

void sub_1A439AD7C(uint64_t a1)
{
  if (!qword_1EB138E10)
  {
    sub_1A439AB5C(255);
    sub_1A439BDBC(&qword_1EB138E18, sub_1A439AB5C, MEMORY[0x1E69817F8]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB138E10);
    }
  }
}

void sub_1A439AE30(uint64_t a1)
{
  if (!qword_1EB138E20)
  {
    sub_1A439AD7C(255);
    sub_1A439BCB4(255, &qword_1EB143BC0, type metadata accessor for LemonadePeopleNamingView, sub_1A439AF64);
    sub_1A439AB5C(255);
    sub_1A439BDBC(&qword_1EB138E18, sub_1A439AB5C, MEMORY[0x1E69817F8]);
    swift_getOpaqueTypeConformance2();
    sub_1A439AFD8();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB138E20);
    }
  }
}

void sub_1A439AF64(uint64_t a1)
{
  if (!qword_1EB141B50)
  {
    sub_1A439B5B4(255, &qword_1EB126DF0, MEMORY[0x1E69E6720]);
    v1 = sub_1A5249F44();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB141B50);
    }
  }
}

unint64_t sub_1A439AFD8()
{
  result = qword_1EB138E28;
  if (!qword_1EB138E28)
  {
    sub_1A439BCB4(255, &qword_1EB143BC0, type metadata accessor for LemonadePeopleNamingView, sub_1A439AF64);
    sub_1A439BDBC(&unk_1EB130C10, type metadata accessor for LemonadePeopleNamingView, &protocol conformance descriptor for LemonadePeopleNamingView);
    sub_1A439BDBC(&qword_1EB141B60, sub_1A439AF64, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB138E28);
  }

  return result;
}

uint64_t sub_1A439B0E8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v36 = a2;
  v3 = sub_1A5243C64();
  v4 = *(v3 - 8);
  v34 = v3;
  v35 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PersonActionBanner(0);
  v31 = *(v7 - 8);
  v8 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  sub_1A3D93850();
  v32 = *(v9 - 8);
  v33 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A439AC78(0);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v31 - v18;
  sub_1A439C1B0(a1, &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PersonActionBanner);
  v20 = (*(v31 + 80) + 16) & ~*(v31 + 80);
  v21 = swift_allocObject();
  sub_1A439B66C(&v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20);
  v37 = a1;
  sub_1A524B704();
  sub_1A5247DD4();
  sub_1A439BDBC(&qword_1EB127490, sub_1A3D93850, MEMORY[0x1E697D680]);
  sub_1A439BDBC(&qword_1EB138E00, MEMORY[0x1E69C2868], MEMORY[0x1E69C2860]);
  v23 = v33;
  v22 = v34;
  sub_1A524A944();
  (*(v35 + 8))(v6, v22);
  (*(v32 + 8))(v11, v23);
  v24 = *(v14 + 16);
  v24(v16, v19, v13);
  v38 = 1;
  v25 = v36;
  v24(v36, v16, v13);
  sub_1A439AC10(0);
  v27 = &v25[*(v26 + 48)];
  v28 = v38;
  *v27 = 0;
  v27[8] = v28;
  v29 = *(v14 + 8);
  v29(v19, v13);
  return (v29)(v16, v13);
}

void sub_1A439B51C(uint64_t a1)
{
  if (!qword_1EB138E30)
  {
    sub_1A439B608(255, &qword_1EB138DE8, sub_1A439AC10, MEMORY[0x1E6981F40]);
    v1 = sub_1A52483B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB138E30);
    }
  }
}

void sub_1A439B5B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6370]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1A439B608(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A439B66C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PersonActionBanner(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1A439B6D0(uint64_t a1@<X8>)
{
  type metadata accessor for PersonActionBanner(0);
  sub_1A439B608(0, &qword_1EB138E38, type metadata accessor for PhotosViewPersonBannerModel, MEMORY[0x1E6981AA0]);
  sub_1A524BAA4();
  v2 = *(v10 + 56);

  if (v2)
  {
    v3 = *(v2 + 24);

    v4 = [v3 person];

    type metadata accessor for PeopleNamingItem();
    v5 = v4;
    v6 = PeopleNamingItem.__allocating_init(person:searchString:)(v5, 0, 0xE000000000000000);
    sub_1A3D8D2BC();
    LemonadePeopleNamingView.init(person:initialResultItem:keyAssetOverride:initialString:namePickerBlock:)(v5, v6, 0, 0, 0, a1);
    KeyPath = swift_getKeyPath();
    sub_1A439BCB4(0, &qword_1EB143BC0, type metadata accessor for LemonadePeopleNamingView, sub_1A439AF64);
    v9 = a1 + *(v8 + 36);
    *v9 = KeyPath;
    *(v9 + 8) = 1;
  }

  else
  {
    sub_1A524E6E4();
    __break(1u);
  }
}

uint64_t sub_1A439B8C4@<X0>(_BYTE *a1@<X8>)
{
  result = EnvironmentValues.lemonadeSheetIsSwiftUI.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1A439B918(uint64_t a1, _BYTE *a2)
{
  result = type metadata accessor for PersonActionBanner(0);
  if (*a2 == 1)
  {
    v5 = *(v2 + *(result + 24) + ((*(*(result - 8) + 80) + 16) & ~*(*(result - 8) + 80)));
    v6 = 1;
    return v5(&v6);
  }

  return result;
}

void sub_1A439B9AC()
{
  sub_1A439BCB4(0, &qword_1EB138E40, type metadata accessor for PersonActionBanner, sub_1A4005524);
  MEMORY[0x1EEE9AC00](v1);
  MEMORY[0x1EEE9AC00](v2);
  sub_1A439BD28(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  MEMORY[0x1EEE9AC00](v4);
  type metadata accessor for PersonActionBanner(0);
  sub_1A439BDBC(&qword_1EB12F5A8, type metadata accessor for PersonActionBanner, &unk_1A5334D20);
  sub_1A3F96E7C();
}

void sub_1A439BCB4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_1A5248804();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1A439BD28(uint64_t a1)
{
  if (!qword_1EB138E48)
  {
    v2 = type metadata accessor for PersonActionBanner(255);
    v3 = sub_1A439BDBC(&qword_1EB12F5A8, type metadata accessor for PersonActionBanner, &unk_1A5334D20);
    v5 = type metadata accessor for PersonBannerPreview(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1EB138E48);
    }
  }
}

uint64_t sub_1A439BDBC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_1A439BE04@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for PersonActionBannerMockModel(0);
  swift_allocObject();
  sub_1A439BFD8(0x656D614E20646441, 0xE800000000000000);
  v6 = type metadata accessor for PersonActionBanner(0);
  v7 = a3 + *(v6 + 20);
  sub_1A524B694();
  *v7 = v10;
  *(v7 + 8) = v11;
  type metadata accessor for PhotosViewPersonBannerModel(0);
  sub_1A439BDBC(&qword_1EB138888, type metadata accessor for PhotosViewPersonBannerModel, &unk_1A5332E44);
  sub_1A524BAC4();
  v8 = (a3 + *(v6 + 24));
  *v8 = a1;
  v8[1] = a2;

  return result;
}

uint64_t sub_1A439BF40(uint64_t a1)
{
  v2 = sub_1A439C958();

  return MEMORY[0x1EEDD9FE8](a1, v2);
}

uint64_t sub_1A439BF8C(uint64_t a1)
{
  v2 = sub_1A439C958();

  return MEMORY[0x1EEDD9FE0](a1, v2);
}

void *sub_1A439BFD8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  *(v3 + OBJC_IVAR____TtC12PhotosUICoreP33_4D003409D0997DCBFFB2FCDAB8B2D88E27PersonActionBannerMockModel__viewControllerToPresent) = 0;
  *(v3 + OBJC_IVAR____TtC12PhotosUICoreP33_4D003409D0997DCBFFB2FCDAB8B2D88E27PersonActionBannerMockModel_completed) = 0;
  sub_1A5241604();
  v6 = (v3 + OBJC_IVAR____TtC12PhotosUICoreP33_4D003409D0997DCBFFB2FCDAB8B2D88E27PersonActionBannerMockModel_primaryButtonTitle);
  *v6 = a1;
  v6[1] = a2;
  v7 = [objc_allocWithZone(PXPeopleCandidateBannerView) init];
  type metadata accessor for LegacyPersonSuggestionBannerModel(0);
  if (qword_1EB1BC3B0 != -1)
  {
    swift_once();
  }

  v8 = qword_1EB1BC3B8;
  v9 = v7;
  v10 = sub_1A3F28848(v8, v9);
  sub_1A524CC54();

  v11 = sub_1A524CC44();
  v12 = swift_allocObject();
  v13 = MEMORY[0x1E69E85E0];
  v12[2] = v11;
  v12[3] = v13;
  v12[4] = v10;
  v14 = sub_1A524CC44();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = v13;
  sub_1A524B944();

  return sub_1A4368FA0(v17, v18, v19, PXDisplayCollectionDetailedCountsMake, 0);
}

uint64_t sub_1A439C1B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A439C218(uint64_t a1, uint64_t a2)
{
  sub_1A439BCB4(0, &qword_1EB138E40, type metadata accessor for PersonActionBanner, sub_1A4005524);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1A439C2AC(uint64_t a1)
{
  if (!qword_1EB138E50)
  {
    sub_1A439BD28(255);
    sub_1A439BCB4(255, &qword_1EB138E40, type metadata accessor for PersonActionBanner, sub_1A4005524);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB138E50);
    }
  }
}

uint64_t sub_1A439C34C(uint64_t a1)
{
  sub_1A439BCB4(0, &qword_1EB138E40, type metadata accessor for PersonActionBanner, sub_1A4005524);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A439C3D8(uint64_t a1)
{
  sub_1A439BD28(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1A439C454()
{
  result = qword_1EB138E58;
  if (!qword_1EB138E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB138E58);
  }

  return result;
}

void sub_1A439C4EC(uint64_t a1)
{
  sub_1A439B608(319, &qword_1EB138E38, type metadata accessor for PhotosViewPersonBannerModel, MEMORY[0x1E6981AA0]);
  if (v1 <= 0x3F)
  {
    sub_1A439B5B4(319, &qword_1EB1274B0, MEMORY[0x1E6981790]);
    if (v2 <= 0x3F)
    {
      sub_1A3C3637C();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1A439C5E4()
{
  v0 = [objc_allocWithZone(type metadata accessor for PersonActionBannerMockModel.MockActionPerson()) init];
  v1 = [objc_allocWithZone(PXPhotosGridPeopleBannerProvider) initWithPerson_];

  qword_1EB1BC3B8 = v1;
}

uint64_t sub_1A439C6B4()
{

  v1 = OBJC_IVAR____TtC12PhotosUICoreP33_4D003409D0997DCBFFB2FCDAB8B2D88E27PersonActionBannerMockModel___observationRegistrar;
  v2 = sub_1A5241614();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t sub_1A439C740()
{
  v0 = sub_1A43691B4();

  v1 = OBJC_IVAR____TtC12PhotosUICoreP33_4D003409D0997DCBFFB2FCDAB8B2D88E27PersonActionBannerMockModel___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(&v0[v1], v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1A439C820(uint64_t a1)
{
  result = sub_1A5241614();
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

uint64_t sub_1A439C8F4(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1A439B608(255, a2, a3, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A439C958()
{
  result = qword_1EB138E70;
  if (!qword_1EB138E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB138E70);
  }

  return result;
}

uint64_t objectdestroyTm_48()
{
  v1 = *(type metadata accessor for PersonActionBanner(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  sub_1A439B608(0, &qword_1EB138E38, type metadata accessor for PhotosViewPersonBannerModel, MEMORY[0x1E6981AA0]);
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocObject();
}

uint64_t sub_1A439CAD8()
{
  type metadata accessor for PersonActionBanner(0);
  sub_1A439B5B4(0, &qword_1EB1274B0, MEMORY[0x1E6981790]);
  return sub_1A524B6B4();
}

uint64_t sub_1A439CB8C()
{
  sub_1A439B608(0, &qword_1EB138E38, type metadata accessor for PhotosViewPersonBannerModel, MEMORY[0x1E6981AA0]);
  sub_1A524BAA4();
  v1 = *(v3 + 56);

  if (v1)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

uint64_t sub_1A439CCA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v3 = sub_1A5243834();
  MEMORY[0x1EEE9AC00](v3 - 8);
  sub_1A43A1788(0, &unk_1EB129180, MEMORY[0x1E69C2060], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v43 - v5;
  v45 = sub_1A5243EC4();
  v7 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A41EC744(0);
  v44 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A439D384(0);
  v43 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v47 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v43 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v43 - v19;
  v46 = a1;
  v21 = sub_1A5242704();
  v22 = v21;
  if (v21 >> 62)
  {
    result = sub_1A524E2B4();
    if (!result)
    {
      goto LABEL_7;
    }
  }

  else
  {
    result = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
LABEL_7:

      v58 = 0u;
      v59 = 0u;
      v60 = 1;
      v25 = sub_1A52429A4();
      (*(*(v25 - 8) + 56))(v6, 1, 1, v25);
      sub_1A5243824();
      sub_1A5243ED4();
      sub_1A524BC74();
      sub_1A52481F4();
      (*(v7 + 32))(v12, v9, v45);
      v26 = &v12[*(v44 + 36)];
      v27 = v56;
      *v26 = v55;
      *(v26 + 1) = v27;
      *(v26 + 2) = v57;
      v28 = &v17[*(v43 + 36)];
      v29 = *(sub_1A5248A14() + 20);
      v30 = *MEMORY[0x1E697F468];
      v31 = sub_1A52494A4();
      (*(*(v31 - 8) + 104))(&v28[v29], v30, v31);
      __asm { FMOV            V0.2D, #8.0 }

      *v28 = _Q0;
      sub_1A3E42C88(0);
      *&v28[*(v37 + 36)] = 256;
      sub_1A43A1720(v12, v17, sub_1A41EC744);
      sub_1A43A1720(v17, v20, sub_1A439D384);
      v38 = sub_1A5249584();
      v50 = 0;
      sub_1A439D804(v54);
      memcpy(v51, v54, sizeof(v51));
      memcpy(v52, v54, sizeof(v52));
      sub_1A43A13AC(v51, v53, sub_1A439D460);
      sub_1A43A18FC(v52, sub_1A439D460);
      memcpy(&v49[7], v51, 0x180uLL);
      LOBYTE(v29) = v50;
      v39 = v47;
      sub_1A43A13AC(v20, v47, sub_1A439D384);
      v40 = v48;
      sub_1A43A13AC(v39, v48, sub_1A439D384);
      sub_1A439F0C4(0, &qword_1EB138E88, sub_1A439D384, sub_1A439D3CC);
      v42 = *(v41 + 48);
      v53[0] = v38;
      v53[1] = 0x4000000000000000;
      LOBYTE(v53[2]) = v29;
      memcpy(&v53[2] + 1, v49, 0x187uLL);
      memcpy((v40 + v42), v53, 0x198uLL);
      sub_1A43A13AC(v53, v54, sub_1A439D3CC);
      sub_1A43A18FC(v20, sub_1A439D384);
      v54[0] = v38;
      v54[1] = 0x4000000000000000;
      LOBYTE(v54[2]) = v29;
      memcpy(&v54[2] + 1, v49, 0x187uLL);
      sub_1A43A18FC(v54, sub_1A439D3CC);
      return sub_1A43A18FC(v39, sub_1A439D384);
    }
  }

  if ((v22 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1A59097F0](0, v22);
    goto LABEL_7;
  }

  if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v24 = *(v22 + 32);
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

void sub_1A439D328(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    sub_1A439F0C4(255, a3, a4, a5);
    v6 = sub_1A524BE24();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1A439D3CC(uint64_t a1)
{
  if (!qword_1EB138E98)
  {
    sub_1A439D460(255);
    sub_1A43A1890(&qword_1EB138EE8, sub_1A439D460, MEMORY[0x1E6981F48]);
    v1 = sub_1A524B894();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB138E98);
    }
  }
}

void sub_1A439D4C4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_1A439D780(255, a3, a4);
    sub_1A439F1C4(255, &qword_1EB127AE0, MEMORY[0x1E697FE80], MEMORY[0x1E697FE70], MEMORY[0x1E6980480]);
    v5 = sub_1A5248804();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1A439D560(uint64_t a1)
{
  if (!qword_1EB138EC0)
  {
    sub_1A439D5EC(255);
    sub_1A439F8D0(255, &unk_1EB127840, MEMORY[0x1E697E1E0], MEMORY[0x1E6980A08]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB138EC0);
    }
  }
}

void sub_1A439D5EC(uint64_t a1)
{
  if (!qword_1EB138EC8)
  {
    sub_1A439F1C4(255, &unk_1EB124040, MEMORY[0x1E6981148], MEMORY[0x1E697EC00], MEMORY[0x1E697E830]);
    sub_1A439D698(255, &qword_1EB127820, &qword_1EB1276A0, MEMORY[0x1E6980F50]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB138EC8);
    }
  }
}

void sub_1A439D698(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1A439F8D0(255, a3, a4, MEMORY[0x1E69E6720]);
    v5 = sub_1A5249F44();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1A439D704(uint64_t a1)
{
  if (!qword_1EB138ED0)
  {
    sub_1A439D4C4(255, &qword_1EB138ED8, &qword_1EB138EE0, sub_1A439D5EC);
    v1 = sub_1A524DF24();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB138ED0);
    }
  }
}

void sub_1A439D780(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1A439D698(255, &qword_1EB127790, &qword_1EB126D60, MEMORY[0x1E69E6530]);
    v4 = sub_1A5248804();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1A439D804@<X0>(void *a1@<X8>)
{
  v77 = a1;
  v1 = sub_1A5249424();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v65 = &v54 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1A524A204();
  v4 = *(v3 - 8);
  v78 = v3;
  v79 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E75D84(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1A524A274();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1A52426E4();
  v71 = v15;
  v72 = v14;
  _s12PhotosUICore0A17SearchBarPositionO03TabD0C30initialSuggestionViewAlignment7SwiftUI0J0Vvg_0();
  sub_1A5248AD4();
  v142 = 0;
  v16 = *MEMORY[0x1E6980EF8];
  v63 = *(v11 + 104);
  v64 = v11 + 104;
  v63(v13, v16, v10);
  v17 = *MEMORY[0x1E6980E20];
  v18 = sub_1A524A154();
  v19 = *(v18 - 8);
  v20 = *(v19 + 104);
  v61 = v17;
  v58 = v20;
  v59 = v19 + 104;
  v20(v9, v17, v18);
  v57 = *(v19 + 56);
  v62 = v18;
  v60 = v19 + 56;
  v57(v9, 0, 1, v18);
  sub_1A524A194();
  sub_1A524A1C4();
  v66 = v9;
  sub_1A43A18FC(v9, sub_1A3E75D84);
  v21 = *(v11 + 8);
  v67 = v13;
  v68 = v11 + 8;
  v69 = v10;
  v21(v13, v10);
  v22 = *MEMORY[0x1E6980EA8];
  v24 = v78;
  v23 = v79;
  v25 = *(v79 + 104);
  v25(v6, v22, v78);
  *(&v76 + 1) = sub_1A524A234();

  v26 = v23 + 8;
  v27 = *(v23 + 8);
  v70 = v6;
  v79 = v26;
  v27(v6, v24);
  *&v76 = swift_getKeyPath();
  KeyPath = swift_getKeyPath();
  v73 = swift_getKeyPath();
  v143 = 0;
  v74 = sub_1A52499F4();
  sub_1A43A17EC(&qword_1EB12A810, sub_1A3FDAC34, sub_1A43A185C, &protocol conformance descriptor for <> PhotoKitItem<A>);
  v28 = sub_1A5242724();
  if (v29)
  {
    sub_1A43A18D8(&v122);
  }

  else
  {
    v30 = v28;
    sub_1A5249414();
    sub_1A5249404();
    *&v105 = v30;
    sub_1A52493B4();
    sub_1A5249404();
    sub_1A5249444();
    v65 = sub_1A524A444();
    v55 = v32;
    v56 = v31;
    LOBYTE(v30) = v33;
    _s12PhotosUICore0A17SearchBarPositionO03TabD0C30initialSuggestionViewAlignment7SwiftUI0J0Vvg_0();
    v54 = v21;
    sub_1A5248AD4();
    LOBYTE(v30) = v30 & 1;
    LOBYTE(v103[0]) = v30;
    v34 = v67;
    v35 = v27;
    v36 = v25;
    v37 = v69;
    v63(v67, *MEMORY[0x1E6980EF0], v69);
    v38 = v22;
    v39 = v66;
    v40 = v62;
    v58(v66, v61, v62);
    v57(v39, 0, 1, v40);
    sub_1A524A194();
    sub_1A524A1C4();
    sub_1A43A18FC(v39, sub_1A3E75D84);
    v54(v34, v37);
    v41 = v70;
    v42 = v78;
    v36(v70, v38, v78);
    v43 = sub_1A524A234();

    v35(v41, v42);
    v44 = swift_getKeyPath();
    v45 = swift_getKeyPath();
    LOBYTE(v88) = 0;
    v46 = sub_1A5249A14();
    *&v105 = v65;
    *(&v105 + 1) = v56;
    LOBYTE(v106) = v30;
    *(&v106 + 1) = v55;
    v111 = v84;
    v112 = v85;
    v113 = v86;
    v107 = v80;
    v108 = v81;
    v110 = v83;
    v109 = v82;
    *&v114 = v44;
    *(&v114 + 1) = v43;
    *&v115 = v45;
    *(&v115 + 1) = 1;
    LOBYTE(v116) = 0;
    HIDWORD(v116) = v46;
    PXDisplayCollectionDetailedCountsMake();
    v130 = v113;
    v131 = v114;
    v132 = v115;
    v133 = v116;
    v126 = v109;
    v127 = v110;
    v128 = v111;
    v129 = v112;
    v122 = v105;
    v123 = v106;
    v124 = v107;
    v125 = v108;
  }

  if (v71)
  {
    v47 = v71;
  }

  else
  {
    v47 = 0xE000000000000000;
  }

  if (v71)
  {
    v48 = v72;
  }

  else
  {
    v48 = 0;
  }

  v103[8] = v130;
  v103[9] = v131;
  v103[10] = v132;
  v103[4] = v126;
  v103[5] = v127;
  v103[6] = v128;
  v103[7] = v129;
  v103[0] = v122;
  v103[1] = v123;
  v103[2] = v124;
  v103[3] = v125;
  *&v88 = v48;
  *(&v88 + 1) = v47;
  LOBYTE(v89) = 0;
  *(&v89 + 1) = *v141;
  DWORD1(v89) = *&v141[3];
  *(&v89 + 1) = MEMORY[0x1E69E7CC0];
  v94 = v138;
  v95 = v139;
  v96 = v140;
  v90 = v134;
  v91 = v135;
  v93 = v137;
  v92 = v136;
  v49 = v76;
  v97 = v76;
  v87[0] = v88;
  v87[3] = v135;
  v87[4] = v136;
  v87[1] = v89;
  v87[2] = v134;
  v87[7] = v139;
  v87[8] = v140;
  v50 = KeyPath;
  *&v98 = KeyPath;
  BYTE8(v98) = 0;
  *(&v98 + 9) = *v144;
  HIDWORD(v98) = *&v144[3];
  v51 = v73;
  *&v99 = v73;
  *(&v99 + 1) = 2;
  v87[5] = v137;
  v87[6] = v138;
  v87[10] = v98;
  v87[11] = v99;
  v87[9] = v76;
  v101[8] = v130;
  v101[9] = v131;
  v101[10] = v132;
  v101[4] = v126;
  v101[5] = v127;
  v101[6] = v128;
  v101[7] = v129;
  v101[0] = v122;
  v101[1] = v123;
  v101[2] = v124;
  v101[3] = v125;
  *(&v87[20] + 8) = v130;
  *(&v87[21] + 8) = v131;
  *(&v87[22] + 8) = v132;
  *(&v87[16] + 8) = v126;
  *(&v87[17] + 8) = v127;
  *(&v87[18] + 8) = v128;
  *(&v87[19] + 8) = v129;
  v104 = v133;
  LOBYTE(v100) = 0;
  *(&v100 + 1) = v145;
  BYTE3(v100) = v146;
  v52 = v74;
  HIDWORD(v100) = v74;
  v102 = v133;
  *&v87[12] = v100;
  *(&v87[23] + 1) = v133;
  *(&v87[12] + 8) = v122;
  *(&v87[13] + 8) = v123;
  *(&v87[14] + 8) = v124;
  *(&v87[15] + 8) = v125;
  memcpy(v77, v87, 0x180uLL);
  sub_1A43A13AC(&v88, &v105, sub_1A439D49C);
  sub_1A43A13AC(v101, &v105, sub_1A439D704);
  sub_1A43A18FC(v103, sub_1A439D704);
  *&v105 = v48;
  *(&v105 + 1) = v47;
  LOBYTE(v106) = 0;
  *(&v106 + 1) = *v141;
  DWORD1(v106) = *&v141[3];
  *(&v106 + 1) = MEMORY[0x1E69E7CC0];
  v111 = v138;
  v112 = v139;
  v113 = v140;
  v107 = v134;
  v108 = v135;
  v110 = v137;
  v109 = v136;
  v114 = v49;
  *&v115 = v50;
  BYTE8(v115) = 0;
  *(&v115 + 9) = *v144;
  HIDWORD(v115) = *&v144[3];
  v116 = v51;
  v117 = 2;
  v118 = 0;
  v119 = v145;
  v120 = v146;
  v121 = v52;
  return sub_1A43A18FC(&v105, sub_1A439D49C);
}

uint64_t sub_1A439E30C@<X0>(uint64_t a2@<X8>)
{
  v4 = *v2;
  *a2 = sub_1A5249314();
  *(a2 + 8) = 0x4024000000000000;
  *(a2 + 16) = 0;
  sub_1A439F01C(0, &qword_1EB138E78, sub_1A439D2EC, MEMORY[0x1E697E258], MEMORY[0x1E697E250]);
  return sub_1A439CCA8(v4, a2 + *(v5 + 44));
}

uint64_t type metadata accessor for PhotosDetailsAlbumAttributionListView(uint64_t a1)
{
  result = qword_1EB171A40;
  if (!qword_1EB171A40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A439E3D0@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v123 = a2;
  v120 = sub_1A5249284();
  v119 = *(v120 - 8);
  MEMORY[0x1EEE9AC00](v120);
  v117 = &v97 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A52484F4();
  v105 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v104 = &v97 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A439F754(0);
  v8 = v7;
  v103 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v102 = &v97 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A439F680(0, v9);
  v12 = v11;
  v13 = *(v11 - 8);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v106 = &v97 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A439F568(0, v14);
  v112 = v16;
  v111 = *(v16 - 8);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v110 = &v97 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A439F418(0, v17);
  v115 = v19;
  v114 = *(v19 - 8);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v113 = &v97 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A439F218(0, v20);
  v122 = v22;
  v121 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v118 = &v97 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v116 = &v97 - v25;
  v26 = sub_1A52407E4();
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v97 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for PhotosDetailsAlbumAttributionListView(0);
  v31 = a1;
  if (*(a1 + *(v30 + 24)) == 1)
  {
    (*(v27 + 16))(v29, a1 + *(v30 + 20), v26);
    v32 = sub_1A524A454();
    v34 = v33;
    v36 = v35;
    sub_1A524B4A4();
    v37 = sub_1A524A364();
    v99 = v5;
    v38 = v37;
    v98 = v13;
    v40 = v39;
    v97 = v8;
    v42 = v41;
    v100 = v12;

    sub_1A3E04DF4(v32, v34, v36 & 1);
    v31 = a1;

    sub_1A524A264();
    v109 = sub_1A524A3C4();
    v108 = v43;
    v45 = v44;
    v107 = v46;

    v47 = v42 & 1;
    v8 = v97;
    v48 = v38;
    v5 = v99;
    v49 = v40;
    v13 = v98;
    sub_1A3E04DF4(v48, v49, v47);
    v12 = v100;

    LOBYTE(v32) = sub_1A524A054();
    v30 = sub_1A5247BC4();
    v51 = v50;
    v53 = v52;
    v55 = v54;
    v57 = v56;
    LOBYTE(v130) = v45 & 1;
    LOBYTE(v126) = 0;
    v125 = v45 & 1;
    v124 = v32;
  }

  else
  {
    v109 = 0;
    v108 = 0;
    v107 = 0;
    v124 = 0;
    v125 = 0;
    v51 = 0;
    v53 = 0;
    v55 = 0;
    v57 = 0;
  }

  MEMORY[0x1EEE9AC00](v30);
  v101 = v31;
  *(&v97 - 2) = v31;
  sub_1A43A147C(0, &qword_1EB138F38, sub_1A439F818, sub_1A439FA80, MEMORY[0x1E697F960]);
  sub_1A439FAE8();
  v58 = v102;
  sub_1A524A2C4();
  v59 = v104;
  sub_1A52484E4();
  v60 = sub_1A43A1890(&qword_1EB138F98, sub_1A439F754, MEMORY[0x1E697CD20]);
  v61 = MEMORY[0x1E697C0D8];
  v62 = v106;
  sub_1A524B1E4();
  (*(v105 + 8))(v59, v5);
  (*(v103 + 8))(v58, v8);
  v63 = sub_1A524C634();
  v64 = PXLocalizedString(v63);

  v65 = sub_1A524C674();
  v67 = v66;

  *&v126 = v65;
  *(&v126 + 1) = v67;
  v130 = v8;
  v131 = v5;
  v132 = v60;
  v133 = v61;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v69 = sub_1A3D5F9DC();
  v70 = MEMORY[0x1E69E6158];
  v71 = v110;
  sub_1A524ABB4();

  (*(v13 + 8))(v62, v12);
  v72 = v119;
  v73 = v117;
  v74 = v120;
  (*(v119 + 104))(v117, *MEMORY[0x1E697C438], v120);
  v130 = v12;
  v131 = v70;
  v132 = OpaqueTypeConformance2;
  v133 = v69;
  v75 = swift_getOpaqueTypeConformance2();
  v76 = v113;
  v77 = v112;
  sub_1A524AF34();
  (*(v72 + 8))(v73, v74);
  v78 = (*(v111 + 8))(v71, v77);
  MEMORY[0x1EEE9AC00](v78);
  *(&v97 - 2) = v101;
  sub_1A439FD3C(0);
  v130 = v77;
  v131 = v75;
  swift_getOpaqueTypeConformance2();
  sub_1A3F1E8D8(255);
  v80 = v79;
  v81 = sub_1A43A1890(&qword_1EB124628, sub_1A3F1E8D8, MEMORY[0x1E697BEF0]);
  v130 = v80;
  v131 = v81;
  swift_getOpaqueTypeConformance2();
  v82 = v116;
  v83 = v115;
  sub_1A524B0E4();
  (*(v114 + 8))(v76, v83);
  v84 = v121;
  v85 = *(v121 + 16);
  v86 = v118;
  v87 = v122;
  v85(v118, v82, v122);
  v88 = v109;
  *&v126 = v109;
  v89 = v108;
  *(&v126 + 1) = v108;
  *&v127 = v125;
  v90 = v107;
  *(&v127 + 1) = v107;
  *&v128 = v124;
  *(&v128 + 1) = v51;
  *v129 = v53;
  *&v129[8] = v55;
  *&v129[16] = v57;
  v129[24] = 0;
  v91 = *v129;
  v92 = v123;
  v123[2] = v128;
  v92[3] = v91;
  *(v92 + 57) = *&v129[9];
  v93 = v127;
  *v92 = v126;
  v92[1] = v93;
  sub_1A439F0C4(0, &qword_1EB138F00, sub_1A439F140, sub_1A439F218);
  v85(v92 + *(v94 + 48), v86, v87);
  sub_1A43A13AC(&v126, &v130, sub_1A439F140);
  v95 = *(v84 + 8);
  v95(v82, v87);
  v95(v86, v87);
  v130 = v88;
  v131 = v89;
  v132 = v125;
  v133 = v90;
  v134 = v124;
  v135 = v51;
  v136 = v53;
  v137 = v55;
  v138 = v57;
  v139 = 0;
  return sub_1A43A18FC(&v130, sub_1A439F140);
}

void sub_1A439F01C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    v6 = sub_1A52483B4();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1A439F0C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1A439F140(uint64_t a1)
{
  if (!qword_1EB138F08)
  {
    sub_1A439F1C4(255, &qword_1EB128720, MEMORY[0x1E6981148], MEMORY[0x1E697E5E0], MEMORY[0x1E697E830]);
    v1 = sub_1A524DF24();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB138F08);
    }
  }
}

void sub_1A439F1C4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void sub_1A439F218(uint64_t a1, double a2)
{
  if (!qword_1EB138F10)
  {
    sub_1A439F418(255, a2);
    sub_1A439FD3C(255);
    sub_1A439F568(255, v2);
    sub_1A439F680(255, v3);
    sub_1A439F754(255);
    sub_1A52484F4();
    sub_1A43A1890(&qword_1EB138F98, sub_1A439F754, MEMORY[0x1E697CD20]);
    swift_getOpaqueTypeConformance2();
    sub_1A3D5F9DC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A3F1E8D8(255);
    sub_1A43A1890(&qword_1EB124628, sub_1A3F1E8D8, MEMORY[0x1E697BEF0]);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v5)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB138F10);
    }
  }
}

void sub_1A439F418(uint64_t a1, double a2)
{
  if (!qword_1EB138F18)
  {
    sub_1A439F568(255, a2);
    sub_1A439F680(255, v2);
    sub_1A439F754(255);
    sub_1A52484F4();
    sub_1A43A1890(&qword_1EB138F98, sub_1A439F754, MEMORY[0x1E697CD20]);
    swift_getOpaqueTypeConformance2();
    sub_1A3D5F9DC();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v4)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB138F18);
    }
  }
}

void sub_1A439F568(uint64_t a1, double a2)
{
  if (!qword_1EB138F20)
  {
    sub_1A439F680(255, a2);
    sub_1A439F754(255);
    sub_1A52484F4();
    sub_1A43A1890(&qword_1EB138F98, sub_1A439F754, MEMORY[0x1E697CD20]);
    swift_getOpaqueTypeConformance2();
    sub_1A3D5F9DC();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB138F20);
    }
  }
}

void sub_1A439F680(uint64_t a1, double a2)
{
  if (!qword_1EB138F28)
  {
    sub_1A439F754(255);
    sub_1A52484F4();
    sub_1A43A1890(&qword_1EB138F98, sub_1A439F754, MEMORY[0x1E697CD20]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB138F28);
    }
  }
}

void sub_1A439F754(uint64_t a1)
{
  if (!qword_1EB138F30)
  {
    sub_1A43A147C(255, &qword_1EB138F38, sub_1A439F818, sub_1A439FA80, MEMORY[0x1E697F960]);
    sub_1A439FAE8();
    v1 = sub_1A524A2D4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB138F30);
    }
  }
}

void sub_1A439F818(uint64_t a1)
{
  if (!qword_1EB138F40)
  {
    sub_1A439F8D0(255, &qword_1EB120C88, MEMORY[0x1E69E5FE0], MEMORY[0x1E69E62F8]);
    sub_1A439F920(255);
    sub_1A439FA04();
    v1 = sub_1A524B9D4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB138F40);
    }
  }
}

void sub_1A439F8D0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1A439F954(uint64_t a1)
{
  if (!qword_1EB138F50)
  {
    sub_1A439F9B0();
    v1 = sub_1A524B764();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB138F50);
    }
  }
}

unint64_t sub_1A439F9B0()
{
  result = qword_1EB138F58;
  if (!qword_1EB138F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB138F58);
  }

  return result;
}

unint64_t sub_1A439FA04()
{
  result = qword_1EB138F60;
  if (!qword_1EB138F60)
  {
    sub_1A439F8D0(255, &qword_1EB120C88, MEMORY[0x1E69E5FE0], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB138F60);
  }

  return result;
}

void sub_1A439FA80(uint64_t a1)
{
  if (!qword_1EB138F68)
  {
    sub_1A439F818(255);
    v1 = sub_1A524BA74();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB138F68);
    }
  }
}

unint64_t sub_1A439FAE8()
{
  result = qword_1EB138F70;
  if (!qword_1EB138F70)
  {
    sub_1A43A147C(255, &qword_1EB138F38, sub_1A439F818, sub_1A439FA80, MEMORY[0x1E697F960]);
    sub_1A43A17EC(&qword_1EB138F78, sub_1A439F818, sub_1A439FBF0, MEMORY[0x1E69819D0]);
    sub_1A439FC6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB138F70);
  }

  return result;
}

unint64_t sub_1A439FC6C()
{
  result = qword_1EB138F90;
  if (!qword_1EB138F90)
  {
    sub_1A439FA80(255);
    sub_1A43A17EC(&qword_1EB138F78, sub_1A439F818, sub_1A439FBF0, MEMORY[0x1E69819D0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB138F90);
  }

  return result;
}

void sub_1A439FD3C(uint64_t a1)
{
  if (!qword_1EB122320)
  {
    sub_1A3F1E8D8(255);
    sub_1A43A1890(&qword_1EB124628, sub_1A3F1E8D8, MEMORY[0x1E697BEF0]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB122320);
    }
  }
}

uint64_t sub_1A439FDF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v3 = sub_1A52407E4();
  v30 = *(v3 - 8);
  v31 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A439FA80(0);
  v35 = v6;
  v32 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A43A147C(0, &qword_1EB138FD8, sub_1A439F818, sub_1A439FA80, MEMORY[0x1E697F948]);
  v33 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v29 - v10;
  v12 = type metadata accessor for PhotosDetailsAlbumAttributionListView(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  sub_1A439F818(0);
  v34 = v15;
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + *(v12 + 24)) == 1)
  {
    v37 = sub_1A5243164();
    swift_getKeyPath();
    sub_1A43A13AC(a1, &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PhotosDetailsAlbumAttributionListView);
    v20 = (*(v13 + 80) + 16) & ~*(v13 + 80);
    v21 = swift_allocObject();
    sub_1A43A1720(&v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20, type metadata accessor for PhotosDetailsAlbumAttributionListView);
    sub_1A439F8D0(0, &qword_1EB120C88, MEMORY[0x1E69E5FE0], MEMORY[0x1E69E62F8]);
    sub_1A439F920(0);
    sub_1A439FA04();
    sub_1A439FBF0();
    sub_1A524B9B4();
    v22 = v34;
    (*(v16 + 16))(v11, v19, v34);
    swift_storeEnumTagMultiPayload();
    sub_1A43A17EC(&qword_1EB138F78, sub_1A439F818, sub_1A439FBF0, MEMORY[0x1E69819D0]);
    sub_1A439FC6C();
    sub_1A5249744();
    return (*(v16 + 8))(v19, v22);
  }

  else
  {
    (*(v30 + 16))(v5, a1 + *(v12 + 20), v31, v17);
    v37 = sub_1A524A454();
    v38 = v24;
    v39 = v25 & 1;
    v40 = v26;
    MEMORY[0x1EEE9AC00](v37);
    sub_1A43A17EC(&qword_1EB138F78, sub_1A439F818, sub_1A439FBF0, MEMORY[0x1E69819D0]);
    sub_1A524BA34();
    v27 = v32;
    v28 = v35;
    (*(v32 + 16))(v11, v8, v35);
    swift_storeEnumTagMultiPayload();
    sub_1A439FC6C();
    sub_1A5249744();
    return (*(v27 + 8))(v8, v28);
  }
}

uint64_t sub_1A43A03D0(uint64_t a1)
{
  v2 = type metadata accessor for PhotosDetailsAlbumAttributionListView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v8[1] = sub_1A5243164();
  swift_getKeyPath();
  sub_1A43A13AC(a1, v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PhotosDetailsAlbumAttributionListView);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_1A43A1720(v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for PhotosDetailsAlbumAttributionListView);
  sub_1A439F8D0(0, &qword_1EB120C88, MEMORY[0x1E69E5FE0], MEMORY[0x1E69E62F8]);
  sub_1A439F920(0);
  sub_1A439FA04();
  sub_1A439FBF0();
  return sub_1A524B9B4();
}

uint64_t sub_1A43A058C(uint64_t a1)
{
  v2 = sub_1A52498B4();
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1A3F1E8D8(0);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A5249814();
  v11 = a1;
  sub_1A3D6DF58(0);
  sub_1A43A1890(&qword_1EB121B60, sub_1A3D6DF58, MEMORY[0x1E697D680]);
  sub_1A5247F24();
  v8 = sub_1A43A1890(&qword_1EB124628, sub_1A3F1E8D8, MEMORY[0x1E697BEF0]);
  MEMORY[0x1A5904CD0](v7, v4, v8);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1A43A075C(uint64_t a1)
{
  v2 = type metadata accessor for PhotosDetailsAlbumAttributionListView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = sub_1A5247B54();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A5247B34();
  sub_1A43A13AC(a1, &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PhotosDetailsAlbumAttributionListView);
  v8 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v9 = swift_allocObject();
  sub_1A43A1720(&v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for PhotosDetailsAlbumAttributionListView);
  return MEMORY[0x1A5906A80](v7, sub_1A43A141C, v9);
}

uint64_t sub_1A43A08D8(uint64_t a1)
{
  v2 = sub_1A5249234();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A43A1788(0, &unk_1EB128A60, MEMORY[0x1E697BF90], MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16 - v7;
  v9 = sub_1A5248284();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E87388(a1, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v12, v8, v9);
  }

  else
  {
    v13 = sub_1A524D254();
    v14 = sub_1A524A014();
    sub_1A5246DF4(v13, &dword_1A3C1C000, v14, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v2);
  }

  sub_1A5248274();
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_1A43A0B64@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for PhotosDetailsAlbumAttributionListView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1A439F954(0);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[1] = *a1;
  v14 = sub_1A52431A4();
  if (v14)
  {
    v15 = v14;
    sub_1A43A13AC(a2, v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PhotosDetailsAlbumAttributionListView);
    v16 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v17 = swift_allocObject();
    sub_1A43A1720(v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for PhotosDetailsAlbumAttributionListView);
    *(v17 + ((v8 + v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = v15;
    sub_1A439F9B0();

    sub_1A524B704();

    (*(v11 + 32))(a3, v13, v10);
    v18 = 0;
  }

  else
  {
    v18 = 1;
  }

  return (*(v11 + 56))(a3, v18, 1, v10);
}

uint64_t sub_1A43A0DDC@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  *a6 = swift_getKeyPath();
  sub_1A43A1788(0, &unk_1EB128A60, MEMORY[0x1E697BF90], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v12 = type metadata accessor for PhotosDetailsAlbumAttributionListView(0);
  v13 = v12[5];
  v14 = sub_1A52407E4();
  result = (*(*(v14 - 8) + 32))(&a6[v13], a1, v14);
  a6[v12[6]] = a2;
  *&a6[v12[7]] = a3;
  v16 = &a6[v12[8]];
  *v16 = a4;
  *(v16 + 1) = a5;
  return result;
}

uint64_t sub_1A43A0F20@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_1A5249584();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  sub_1A439F01C(0, &qword_1EB138EF0, sub_1A439F088, MEMORY[0x1E697E300], MEMORY[0x1E697E2F8]);
  return sub_1A439E3D0(v2, (a2 + *(v4 + 44)));
}

void sub_1A43A0FBC(uint64_t a1)
{
  sub_1A43A1788(319, &qword_1EB124730, MEMORY[0x1E697BF90], MEMORY[0x1E697DCC0]);
  if (v1 <= 0x3F)
  {
    sub_1A52407E4();
    if (v2 <= 0x3F)
    {
      sub_1A43A10A8(319);
      if (v3 <= 0x3F)
      {
        sub_1A3C3637C();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1A43A10A8(uint64_t a1)
{
  if (!qword_1EB138FA0)
  {
    sub_1A43A1194(255);
    sub_1A40F2AD0(255);
    sub_1A43A1890(&qword_1EB129FB8, sub_1A43A1194, &protocol conformance descriptor for PhotoKitItemListManager<A>);
    sub_1A43A1890(&qword_1EB129200, sub_1A40F2AD0, MEMORY[0x1E69C1F70]);
    v1 = sub_1A52431C4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB138FA0);
    }
  }
}

void sub_1A43A11D8(uint64_t a1)
{
  if (!qword_1EB138FB0)
  {
    sub_1A439D2EC(255);
    sub_1A43A1890(&qword_1EB138FB8, sub_1A439D2EC, MEMORY[0x1E6981F48]);
    v1 = sub_1A524B784();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB138FB0);
    }
  }
}

void sub_1A43A126C(uint64_t a1)
{
  if (!qword_1EB138FC8)
  {
    sub_1A439F088(255);
    sub_1A43A1890(&qword_1EB138FD0, sub_1A439F088, MEMORY[0x1E6981F48]);
    v1 = sub_1A524B894();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB138FC8);
    }
  }
}

uint64_t sub_1A43A1300()
{
  v1 = type metadata accessor for PhotosDetailsAlbumAttributionListView(0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  return (*(v0 + *(v1 + 32) + v3))(*(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1A43A13AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A43A141C()
{
  v1 = *(type metadata accessor for PhotosDetailsAlbumAttributionListView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1A43A08D8(v2);
}

void sub_1A43A147C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

uint64_t objectdestroyTm_49()
{
  v1 = type metadata accessor for PhotosDetailsAlbumAttributionListView(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  sub_1A43A1788(0, &unk_1EB128A60, MEMORY[0x1E697BF90], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_1A5248284();
    (*(*(v3 - 8) + 8))(v0 + v2, v3);
  }

  else
  {
  }

  v4 = *(v1 + 20);
  v5 = sub_1A52407E4();
  (*(*(v5 - 8) + 8))(v0 + v2 + v4, v5);

  return swift_deallocObject();
}

uint64_t sub_1A43A16A0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for PhotosDetailsAlbumAttributionListView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1A43A0B64(a1, v6, a2);
}

uint64_t sub_1A43A1720(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1A43A1788(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A43A17EC(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A43A1890(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_1A43A18D8(uint64_t a1)
{
  *(a1 + 176) = 0;
  result = 0.0;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_1A43A18FC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double sub_1A43A19D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != 2)
  {
    return 1.2;
  }

  *&v8[33] = v3;
  *&v8[41] = v4;
  v5 = *(**sub_1A44E6630() + 160);

  v5(v8, v6);

  result = 0.5;
  if (v8[0])
  {
    return 1.0;
  }

  return result;
}

uint64_t sub_1A43A1A74()
{
  v0 = type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
  __swift_allocate_value_buffer(v0, qword_1EB1EBD28);
  v1 = __swift_project_value_buffer(v0, qword_1EB1EBD28);
  v2 = swift_allocObject();
  *(v2 + 16) = 0x4028000000000000;
  v3 = swift_allocObject();
  *(v3 + 16) = 0x4040000000000000;
  v4 = sub_1A524A054();
  *v1 = sub_1A43A1B94;
  *(v1 + 8) = 0;
  *(v1 + 16) = 2;
  *(v1 + 24) = 1;
  *(v1 + 32) = 1;
  *(v1 + 40) = sub_1A43A4350;
  *(v1 + 48) = v2;
  *(v1 + 56) = sub_1A43A4350;
  *(v1 + 64) = v3;
  *(v1 + 72) = xmmword_1A5317AF0;
  *(v1 + 88) = 0;
  *(v1 + 89) = v4;

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1A43A1BC4(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for LemonadeItemsLayoutSpec.Style(0);

  return __swift_project_value_buffer(v4, a2);
}

uint64_t sub_1A43A1C18()
{
  v0 = type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
  __swift_allocate_value_buffer(v0, qword_1EB1EBD40);
  v1 = __swift_project_value_buffer(v0, qword_1EB1EBD40);
  v2 = swift_allocObject();
  *(v2 + 16) = 0x4028000000000000;
  v3 = swift_allocObject();
  *(v3 + 16) = 0x4040000000000000;
  v4 = sub_1A524A054();
  *v1 = sub_1A43A1D38;
  *(v1 + 8) = 0;
  *(v1 + 16) = 2;
  *(v1 + 24) = 2;
  *(v1 + 32) = 1;
  *(v1 + 40) = sub_1A43A4350;
  *(v1 + 48) = v2;
  *(v1 + 56) = sub_1A43A4350;
  *(v1 + 64) = v3;
  *(v1 + 72) = xmmword_1A5317AF0;
  *(v1 + 88) = 0;
  *(v1 + 89) = v4;

  return swift_storeEnumTagMultiPayload();
}

double sub_1A43A1D88@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  sub_1A3C47A98(0);
  v9 = *(v8 + 64);
  *a4 = sub_1A43A1E70;
  *(a4 + 8) = 0;
  *(a4 + 16) = 2;
  *(a4 + 24) = a1;
  *(a4 + 32) = a2;
  *(a4 + 40) = a3;
  v10 = *MEMORY[0x1E69C21A0];
  v11 = sub_1A5242C84();
  (*(*(v11 - 8) + 104))(a4 + v9, v10, v11);
  type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
  swift_storeEnumTagMultiPayload();

  return sub_1A3C56D48(a1, a2, a3);
}

uint64_t sub_1A43A1E70(uint64_t a1)
{
  v2 = sub_1A5242D14();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  if ((*(v3 + 88))(v6, v2) == *MEMORY[0x1E69C2210])
  {
    return 4;
  }

  (*(v3 + 8))(v6, v2);
  return 0;
}

uint64_t sub_1A43A1F98@<X0>(uint64_t a1@<X0>, double *a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v8 = *(type metadata accessor for LemonadeItemsLayoutSpec(0) + 20);
  v9 = sub_1A5242D14();
  result = (*(*(v9 - 8) + 32))(a2 + v8, a1, v9);
  *a2 = a3;
  a2[1] = a4;
  return result;
}

uint64_t sub_1A43A2020()
{
  v0 = type metadata accessor for LemonadeItemsLayoutSpec(0);
  __swift_allocate_value_buffer(v0, qword_1EB181D40);
  v1 = __swift_project_value_buffer(v0, qword_1EB181D40);
  v2 = *(v0 + 20);
  v3 = *MEMORY[0x1E69C21E0];
  v4 = sub_1A5242D14();
  result = (*(*(v4 - 8) + 104))(&v1[v2], v3, v4);
  *v1 = 0;
  *(v1 + 1) = 0;
  return result;
}

uint64_t sub_1A43A20C0@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB181D38 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for LemonadeItemsLayoutSpec(0);
  v3 = __swift_project_value_buffer(v2, qword_1EB181D40);
  return sub_1A3CA6034(v3, a1, type metadata accessor for LemonadeItemsLayoutSpec);
}

void *sub_1A43A2140()
{
  sub_1A43A3578();

  return sub_1A5249244();
}

uint64_t sub_1A43A2188(uint64_t a1)
{
  v2 = type metadata accessor for LemonadeItemsLayoutSpec(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1A3CA6034(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LemonadeItemsLayoutSpec);
  sub_1A43A3578();
  sub_1A5249254();
  return sub_1A43A35CC(a1);
}

void sub_1A43A223C()
{
  v0 = [objc_opt_self() px_mainScreen];
  [v0 bounds];

  sub_1A524D984();
}

uint64_t sub_1A43A22CC@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, unsigned __int8 *a4@<X3>, uint64_t a5@<X4>, unsigned __int8 *a6@<X5>, int a7@<W6>, uint64_t a8@<X8>)
{
  v45 = a7;
  v44 = a8;
  v15 = type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(v16) = *a4;
  v42 = *a2;
  v43 = v16;
  v18 = *a6;
  v19 = *(type metadata accessor for LemonadeItemsLayoutSpec(0) + 20);
  sub_1A3CA6034(a1, v17, type metadata accessor for LemonadeItemsLayoutSpec.Style);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v21 = *v17;
  v22 = *(v17 + 1);
  v23 = v17[16];
  v46 = a5;
  if (EnumCaseMultiPayload == 1)
  {
    sub_1A3C4208C(*(v17 + 3), *(v17 + 4), v17[40]);
    v24 = a3;
    if (v23)
    {
      if (v23 == 1)
      {
        v25 = v21;
        v26 = v22;
      }

      else
      {
        v52 = v18;
        v25 = v21(v8 + v19, &v52);
        v26 = v34;
      }
    }

    else
    {
      v26 = 0;
      v25 = v21;
    }

    sub_1A3C47A98(0);
    v36 = *(v35 + 64);
    v51 = v42;
    v50 = v43;
    sub_1A3F2A638(v8 + v19, &v51, &v50, v24, v46, v45 & 1, v25, v26 & 1, v44);
    sub_1A3D6D890(v21, v22, v23);
    v37 = sub_1A5242C84();
    return (*(*(v37 - 8) + 8))(&v17[v36], v37);
  }

  else
  {
    v40 = v18;
    v41 = a3;
    v27 = *(v17 + 5);
    v28 = *(v17 + 6);
    v29 = *(v17 + 7);
    v30 = *(v17 + 8);
    sub_1A3C4208C(*(v17 + 9), *(v17 + 10), v17[88]);
    sub_1A3F1BD68(v29, v30);
    v31 = sub_1A3F1BD68(v27, v28);
    if (v23)
    {
      if (v23 == 1)
      {
        v32 = v21;
        v33 = v22;
      }

      else
      {
        v49 = v40;
        v32 = (v21)(v8 + v19, &v49, v31);
        v33 = v39;
      }
    }

    else
    {
      v33 = 0;
      v32 = v21;
    }

    v48 = v42;
    v47 = v43;
    sub_1A3F2A638(v8 + v19, &v48, &v47, v41, v46, v45 & 1, v32, v33 & 1, v44);
    return sub_1A3D6D890(v21, v22, v23);
  }
}

uint64_t sub_1A43A2588(uint64_t a1, char *a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7, int a8)
{
  v40 = a3;
  v41 = a8;
  v42 = a4;
  v13 = type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a2;
  v17 = *a7;
  sub_1A3CA6034(a1, v15, type metadata accessor for LemonadeItemsLayoutSpec.Style);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v19 = *v15;
  v20 = *(v15 + 1);
  v21 = v15[16];
  if (EnumCaseMultiPayload == 1)
  {
    sub_1A3D6D890(*v15, *(v15 + 1), v15[16]);
    v22 = *(v15 + 3);
    if (v15[40])
    {
      if (v15[40] == 1)
      {
        v23 = a5;
        v24 = *(v15 + 4);
        v46 = v16;
        v45 = v17;
        v25 = (v22)(&v46, v40, v42, v23, a6, &v45, v41 & 1);
        sub_1A3C4208C(v22, v24, 1);
        v22 = v25;
      }

      else
      {
        v22 = 0x7FFFFFFFFFFFFFFFLL;
      }
    }

    sub_1A3C47A98(0);
    v34 = *(v33 + 64);
    v35 = sub_1A5242C84();
    (*(*(v35 - 8) + 8))(&v15[v34], v35);
  }

  else
  {
    v38 = a5;
    v39 = a6;
    v26 = *(v15 + 5);
    v27 = *(v15 + 6);
    v28 = *(v15 + 7);
    v29 = *(v15 + 8);
    v22 = *(v15 + 9);
    v30 = *(v15 + 10);
    v31 = v15[88];
    sub_1A3F1BD68(v28, v29);
    sub_1A3F1BD68(v26, v27);
    sub_1A3D6D890(v19, v20, v21);
    if (v31)
    {
      if (v31 == 1)
      {
        v44 = v16;
        v43 = v17;
        v32 = (v22)(&v44, v40, v42, v38, v39, &v43, v41 & 1);
        sub_1A3C4208C(v22, v30, 1);
        return v32;
      }

      else
      {
        return 0x7FFFFFFFFFFFFFFFLL;
      }
    }
  }

  return v22;
}

double sub_1A43A27C4(uint64_t a1, char *a2)
{
  v5 = type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a2;
  sub_1A3CA6034(a1, v7, type metadata accessor for LemonadeItemsLayoutSpec.Style);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v10 = *v7;
  v11 = *(v7 + 1);
  v12 = v7[16];
  if (EnumCaseMultiPayload == 1)
  {
    sub_1A3D6D890(*v7, *(v7 + 1), v7[16]);
    sub_1A3C4208C(*(v7 + 3), *(v7 + 4), v7[40]);
    sub_1A3C47A98(0);
    v14 = *(v13 + 64);
    v15 = *v2;
    v16 = sub_1A5242C84();
    (*(*(v16 - 8) + 8))(&v7[v14], v16);
  }

  else
  {
    v17 = *(v7 + 5);
    v18 = *(v7 + 6);
    v19 = *(v7 + 7);
    v20 = *(v7 + 8);
    sub_1A3C4208C(*(v7 + 9), *(v7 + 10), v7[88]);
    sub_1A3F1BD68(v19, v20);
    sub_1A3D6D890(v10, v11, v12);
    if (v17 >= 3)
    {
      v21 = *(type metadata accessor for LemonadeItemsLayoutSpec(0) + 20);
      v24 = v8;
      v15 = v17(&v2[v21], &v24);
      sub_1A3F1BD68(v17, v18);
    }

    else
    {
      return *v2;
    }
  }

  return v15;
}

void sub_1A43A2984(uint64_t a1, char *a2)
{
  v5 = type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a2;
  sub_1A3CA6034(a1, v7, type metadata accessor for LemonadeItemsLayoutSpec.Style);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v10 = *v7;
  v11 = *(v7 + 1);
  v12 = v7[16];
  if (EnumCaseMultiPayload == 1)
  {
    sub_1A3D6D890(*v7, *(v7 + 1), v7[16]);
    sub_1A3C4208C(*(v7 + 3), *(v7 + 4), v7[40]);
    sub_1A3C47A98(0);
    v14 = *(v13 + 64);
    v15 = sub_1A5242C84();
    (*(*(v15 - 8) + 8))(&v7[v14], v15);
  }

  else
  {
    v16 = *(v7 + 5);
    v17 = *(v7 + 6);
    v18 = *(v7 + 7);
    v19 = *(v7 + 8);
    sub_1A3C4208C(*(v7 + 9), *(v7 + 10), v7[88]);
    sub_1A3F1BD68(v16, v17);
    sub_1A3D6D890(v10, v11, v12);
    if (v18 > 2)
    {
      v20 = *(type metadata accessor for LemonadeItemsLayoutSpec(0) + 20);
      v22 = v8;
      v18(v2 + v20, &v22);
      sub_1A3F1BD68(v18, v19);
    }
  }
}

void sub_1A43A2BB4(unsigned __int8 *a1, char a2, uint64_t a3)
{
  v6 = sub_1A5242D14();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  (*(v7 + 16))(v10, a3, v6, v8);
  if ((*(v7 + 88))(v10, v6) == *MEMORY[0x1E69C2210])
  {
    sub_1A5247B94();
  }

  else
  {
    if ((v11 - 1) > 1 || (a2 & 1) == 0)
    {
      sub_1A5247B94();
    }

    (*(v7 + 8))(v10, v6);
  }
}

uint64_t sub_1A43A2D70(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1A5242D14();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  (*(v9 + 16))(v12, a5, v8, v10);
  if ((*(v9 + 88))(v12, v8) == *MEMORY[0x1E69C2200])
  {
    v14 = *(**sub_1A44E6630() + 160);

    v14(&v23, v15);

    v16 = 2;
    if (a4 >= 6)
    {
      v16 = 3;
    }

    if (v23 & 1 | (a4 < 4))
    {
      return 1;
    }

    else
    {
      return v16;
    }
  }

  else
  {
    if ((v13 - 4) <= 2)
    {
      v18 = *(**sub_1A44E6630() + 160);

      v18((&v23 + 1), v19);

      v20 = [objc_opt_self() px_mainScreen];
      [v20 bounds];

      sub_1A524D984();
    }

    v17 = 2;
    (*(v9 + 8))(v12, v8);
  }

  return v17;
}

uint64_t sub_1A43A3038(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1A52486A4();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  if ((v10 - 4) < 3)
  {
    v11 = [objc_opt_self() px_mainScreen];
    [v11 bounds];

    sub_1A524D984();
  }

  if ((v10 - 2) > 1)
  {
    return 4;
  }

  v12 = v6;
  (*(v5 + 104))(v9, *MEMORY[0x1E697E6C8], v6, v7);
  sub_1A43A42F8();
  v13 = sub_1A524C534();
  (*(v5 + 8))(v9, v12);
  if (v13)
  {
    return 3;
  }

  else
  {
    return 4;
  }
}

uint64_t sub_1A43A3224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6, char a7)
{
  v9 = sub_1A52486A4();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a6;
  (*(v10 + 104))(v13, *MEMORY[0x1E697E6C8], v9, v11);
  sub_1A43A42F8();
  v15 = sub_1A524C534();
  (*(v10 + 8))(v13, v9);
  if (a7)
  {
    if (v15)
    {
      return 2;
    }

    else
    {
      return 5;
    }
  }

  else
  {
    if (v15)
    {
      v27 = v14;
      v26 = 0;
      sub_1A40A51C0();
      sub_1A524C9C4();
      sub_1A524C9C4();
      if (v24 == v22 && v25 == v23)
      {

        return 2;
      }

      v17 = sub_1A524EAB4();

      v18 = (v17 & 1) == 0;
      v19 = 1;
    }

    else
    {
      v27 = v14;
      v26 = 0;
      sub_1A40A51C0();
      sub_1A524C9C4();
      sub_1A524C9C4();
      if (v24 == v22 && v25 == v23)
      {

        return 4;
      }

      v20 = sub_1A524EAB4();

      v18 = (v20 & 1) == 0;
      v19 = 3;
    }

    if (v18)
    {
      return v19;
    }

    else
    {
      return v19 + 1;
    }
  }
}

uint64_t sub_1A43A34A4(unsigned __int8 *a1)
{
  if (*a1 - 4 <= 2)
  {
    v9 = [objc_opt_self() px_mainScreen];
    [v9 bounds];

    sub_1A524D984();
  }

  return 4;
}

unint64_t sub_1A43A3578()
{
  result = qword_1EB181CA8[0];
  if (!qword_1EB181CA8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB181CA8);
  }

  return result;
}

uint64_t sub_1A43A35CC(uint64_t a1)
{
  v2 = type metadata accessor for LemonadeItemsLayoutSpec(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t (*sub_1A43A3628(uint64_t a1, char *a2, uint64_t (*a3)(uint64_t, char *), uint64_t a4, unsigned __int8 a5))(uint64_t, char *)
{
  if (a5 >= 2u)
  {
    v9 = v5;
    v10 = v6;
    v8 = *a2;
    return a3(a1, &v8);
  }

  return a3;
}

uint64_t sub_1A43A3690@<X0>(unsigned int *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = a2(0);
  v6 = *(*(v5 - 8) + 104);

  return v6(a3, v4, v5);
}

uint64_t sub_1A43A3700(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, char a5)
{
  v38 = a1;
  v8 = sub_1A5242D14();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v37 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v37 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v37 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v37 - v21;
  v26 = MEMORY[0x1EEE9AC00](v23);
  v27 = &v37 - v24;
  if (a5)
  {
    if (a4 <= 4)
    {
      if (a4 <= 1)
      {
        if (!a4)
        {
          return a4;
        }

        v34 = v25;
        (*(v25 + 16))(&v37 - v24, v38, v8, v26);
        if ((*(v34 + 88))(v27, v8) == *MEMORY[0x1E69C2210])
        {
          return 0x3FF0000000000000;
        }

        (*(v34 + 8))(v27, v8);
      }

      else
      {
        if (a4 == 2)
        {
          return 0x3FF0000000000000;
        }

        if (a4 == 3)
        {
          v30 = v25;
          (*(v25 + 16))(v22, v38, v8, v26);
          if ((*(v30 + 88))(v22, v8) == *MEMORY[0x1E69C2210])
          {
            return 0x3FE8000000000000;
          }

          (*(v30 + 8))(v22, v8);
        }

        else
        {
          v33 = v25;
          (*(v25 + 16))(v19, v38, v8, v26);
          if ((*(v33 + 88))(v19, v8) == *MEMORY[0x1E69C2210])
          {
            return 0x3FF0000000000000;
          }

          (*(v33 + 8))(v19, v8);
        }
      }
    }

    else if (a4 > 7)
    {
      if (a4 == 8)
      {
        return 0x3FF4000000000000;
      }

      if (a4 != 9)
      {
        v35 = *a2;
        if (v35 > 4)
        {
          if (v35 == 5 || v35 == 6)
          {
            return 0x4008CCCCCCCCCCCDLL;
          }
        }

        else
        {
          if (v35 - 2 < 2)
          {
            return 0x3FF0000000000000;
          }

          if (v35 == 4)
          {
            return 0x4003333333333333;
          }
        }

        return 0x3FF8000000000000;
      }

      v31 = v25;
      (*(v25 + 16))(v10, v38, v8, v26);
      if ((*(v31 + 88))(v10, v8) == *MEMORY[0x1E69C2210])
      {
        return 0x3FF0000000000000;
      }

      (*(v31 + 8))(v10, v8);
    }

    else
    {
      if (a4 != 5)
      {
        if (a4 == 6)
        {
          v28 = v25;
          (*(v25 + 16))(v13, v38, v8, v26);
          v29 = (*(v28 + 88))(v13, v8);
          if (v29 != *MEMORY[0x1E69C21F8])
          {
            if (v29 == *MEMORY[0x1E69C21E8])
            {
              return 0x3FF999999999999ALL;
            }

            if (v29 == *MEMORY[0x1E69C2210])
            {
              return 0x3FF4000000000000;
            }

            (*(v28 + 8))(v13, v8);
          }

          return 0x3FF0000000000000;
        }

        return 0x3FE8000000000000;
      }

      v32 = v25;
      (*(v25 + 16))(v16, v38, v8, v26);
      if ((*(v32 + 88))(v16, v8) == *MEMORY[0x1E69C2210])
      {
        return 0x3FF599999999999ALL;
      }

      (*(v32 + 8))(v16, v8);
    }

    return 0;
  }

  return a4;
}

uint64_t sub_1A43A3C04@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, unsigned __int8 *a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v41 = a3;
  v44 = a7;
  v45 = a6;
  v38 = a4;
  v39 = a2;
  v40 = a1;
  v8 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v37 - v12;
  v14 = sub_1A5248804();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v37 - v19;
  v21 = sub_1A5249754();
  v43 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v37 - v22;
  v54 = *v38;
  sub_1A43A3700(v41, &v54, v24, v40, v39 & 1);
  if (v25)
  {
    v26 = *(v8 + 16);
    v26(v13, v42, a5);
    v26(v10, v13, a5);
    v27 = v45;
    v52 = v45;
    v53 = MEMORY[0x1E697F568];
    WitnessTable = swift_getWitnessTable();
    sub_1A3DF4890(v10, v14, a5, WitnessTable, v27);
    v29 = *(v8 + 8);
    v29(v10, a5);
    v29(v13, a5);
  }

  else
  {
    v41 = v21;
    v30 = v45;
    sub_1A524A924();
    v46 = v30;
    v47 = MEMORY[0x1E697F568];
    v42 = swift_getWitnessTable();
    v31 = *(v15 + 16);
    v31(v20, v17, v14);
    v32 = *(v15 + 8);
    v32(v17, v14);
    v31(v17, v20, v14);
    v33 = v30;
    v21 = v41;
    sub_1A3DF4798(v17, v14, a5, v42, v33);
    v32(v17, v14);
    v32(v20, v14);
  }

  v34 = v45;
  v50 = v45;
  v51 = MEMORY[0x1E697F568];
  v48 = swift_getWitnessTable();
  v49 = v34;
  swift_getWitnessTable();
  v35 = v43;
  (*(v43 + 16))(v44, v23, v21);
  return (*(v35 + 8))(v23, v21);
}

uint64_t sub_1A43A4088(uint64_t a1, unsigned int a2)
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

uint64_t sub_1A43A40D4(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1A43A4118(uint64_t result, unsigned int a2)
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

void sub_1A43A4168(uint64_t a1)
{
  type metadata accessor for CGSize(319);
  if (v1 <= 0x3F)
  {
    sub_1A5242D14();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1A43A41FC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A43A4258(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

void *sub_1A43A42A8(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

unint64_t sub_1A43A42F8()
{
  result = qword_1EB1288D0;
  if (!qword_1EB1288D0)
  {
    sub_1A52486A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1288D0);
  }

  return result;
}

double sub_1A43A43B8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>, double a4@<D0>)
{
  *a3 = swift_getKeyPath();
  sub_1A43A58F0(0, &qword_1EB128A80, sub_1A3D63A58, MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v8 = type metadata accessor for SurveyContentView(0);
  v9 = a3 + *(v8 + 20);
  *v9 = swift_getKeyPath();
  v9[8] = 0;
  *(a3 + *(v8 + 24)) = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a4;
  *(v10 + 32) = a2;
  sub_1A43A5150(0);
  v12 = (a3 + *(v11 + 36));
  *v12 = sub_1A410AEF4;
  v12[1] = 0;
  v12[2] = sub_1A43A5068;
  v12[3] = v10;
  *&v16 = a4;
  *(&v16 + 1) = a2;
  sub_1A3C48A9C(0, &qword_1EB1274D0, MEMORY[0x1E69E7DE0], MEMORY[0x1E6981790]);
  swift_retain_n();

  sub_1A524B6A4();
  sub_1A524BC74();
  sub_1A52481F4();
  sub_1A43A51B8(0);
  v14 = (a3 + *(v13 + 36));
  *v14 = v16;
  v14[1] = v17;
  result = *&v18;
  v14[2] = v18;
  return result;
}

id sub_1A43A459C()
{
  sub_1A3D63A58(0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v15 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SurveyContentView(0);
  sub_1A48AD5C8(&v16);
  if (v16)
  {
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    if (v3)
    {
      v4 = v3;
      v5 = [v3 contentView];
      if (v5)
      {
LABEL_4:
        v6 = v5;
LABEL_9:
        swift_unknownObjectRelease();
        return v6;
      }

      v6 = [objc_allocWithZone(PXSurveyQuestionsGadgetContentView) init];
      [v4 prepareCollectionViewItem_];
      sub_1A43A5870(0);
      sub_1A5249DA4();
      v10 = v15;
      [v4 setLemonadeUIDelegate_];
LABEL_8:

      goto LABEL_9;
    }

    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (v7)
    {
      v8 = [v7 contentView];
      swift_unknownObjectRelease();
      return v8;
    }

    objc_opt_self();
    v11 = swift_dynamicCastObjCClass();
    if (v11)
    {
      v12 = v11;
      v5 = [v11 contentView];
      if (v5)
      {
        goto LABEL_4;
      }

      v6 = [objc_allocWithZone(PXSurveyQuestionPlaceholderGadgetView) init];
      [v12 prepareCollectionViewItem_];
      if (![v12 respondsToSelector_])
      {
        goto LABEL_9;
      }

      sub_1A3FF29A0(v2);
      sub_1A3D63A8C(0);
      if ((*(*(v13 - 8) + 48))(v2, 1, v13) != 1)
      {
        sub_1A5245C94();
      }

      sub_1A43A5954(v2, sub_1A3D63A58);
      v10 = 0;
      [v12 setOverrideContainerViewController_];
      goto LABEL_8;
    }

    swift_unknownObjectRelease();
  }

  v14 = objc_allocWithZone(MEMORY[0x1E69DD250]);

  return [v14 init];
}

void sub_1A43A48C0(uint64_t a1, void *a2)
{
  v5 = type metadata accessor for LemonadeNavigationDestination(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v37 - v9;
  sub_1A3EC2B6C(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1A5249234();
  v39 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = v2 + *(type metadata accessor for SurveyContentView(0) + 20);
  v18 = *v17;
  v19 = *(v17 + 8);

  if ((v19 & 1) == 0)
  {
    v20 = sub_1A524D254();
    v38 = v14;
    v21 = v20;
    v22 = sub_1A524A014();
    sub_1A5246DF4(v21, &dword_1A3C1C000, v22, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();
    j__swift_release(v18);
    (*(v39 + 8))(v16, v38);
    v18 = v40;
  }

  if (v18)
  {
    v23 = sub_1A52434D4();
    (*(*(v23 - 8) + 56))(v13, 1, 1, v23);
    v24 = sub_1A3C30368();
    v25 = sub_1A4657324(a1, a2, v24 & 1, 0, 0, v13, 0, 0);
    sub_1A43A5954(v13, sub_1A3EC2B6C);
    v26 = a1;
    v27 = sub_1A3E78D28(v25);
    sub_1A3E00630(v25);
    if (v27)
    {
    }

    else
    {
      v28 = sub_1A524D244();
      v29 = *sub_1A3CAA3FC();
      sub_1A43A59B4(v26, v10, type metadata accessor for LemonadeNavigationDestination);
      if (os_log_type_enabled(v29, v28))
      {
        v30 = v29;
        v31 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        *v31 = 136315138;
        sub_1A43A59B4(v10, v7, type metadata accessor for LemonadeNavigationDestination);
        v32 = sub_1A524C714();
        v34 = v33;
        sub_1A43A5954(v10, type metadata accessor for LemonadeNavigationDestination);
        sub_1A3C2EF94(v32, v34, &v40);
      }

      sub_1A43A5954(v10, type metadata accessor for LemonadeNavigationDestination);
    }
  }

  else
  {
    v35 = sub_1A524D244();
    v36 = *sub_1A3CAA3FC();
    sub_1A5246DF4(v35, &dword_1A3C1C000, v36, "can't perform view controller navigation because navigation context is missing", 78, 2, MEMORY[0x1E69E7CC0]);
  }
}

id sub_1A43A4FD8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SurveyContentView.Coordinator(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1A43A5068(double *a1)
{
  [objc_opt_self() sizeThatFits_];
  v2 = v1;
  sub_1A3C48A9C(0, &qword_1EB1274D0, MEMORY[0x1E69E7DE0], MEMORY[0x1E6981790]);

  sub_1A524B6A4();
  if (v2 != v3)
  {
    sub_1A524B6B4();
  }
}

void sub_1A43A5150(uint64_t a1)
{
  if (!qword_1EB1288A0)
  {
    type metadata accessor for SurveyContentView(255);
    sub_1A410AB24(255);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1288A0);
    }
  }
}

void sub_1A43A51B8(uint64_t a1)
{
  if (!qword_1EB128498)
  {
    sub_1A43A5150(255);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB128498);
    }
  }
}

uint64_t sub_1A43A526C(uint64_t a1)
{
  result = type metadata accessor for SurveyContentView(319);
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

unint64_t sub_1A43A52FC()
{
  result = qword_1EB1284A0;
  if (!qword_1EB1284A0)
  {
    sub_1A43A51B8(255);
    sub_1A43A537C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1284A0);
  }

  return result;
}

unint64_t sub_1A43A537C()
{
  result = qword_1EB1288A8;
  if (!qword_1EB1288A8)
  {
    sub_1A43A5150(255);
    sub_1A43A582C(qword_1EB189EA8, &unk_1A53354D4);
    sub_1A43A5448(&unk_1EB127B30, sub_1A410AB24, MEMORY[0x1E69802E0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1288A8);
  }

  return result;
}

uint64_t sub_1A43A5448(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1A43A54B8(uint64_t a1)
{
  sub_1A43A58F0(319, &qword_1EB124740, sub_1A3D63A58, MEMORY[0x1E697DCC0]);
  if (v1 <= 0x3F)
  {
    sub_1A43A58F0(319, &unk_1EB1247C0, sub_1A3D639F0, MEMORY[0x1E697DCC0]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for LemonadePhotosChallengeModel(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1A43A55EC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  MEMORY[0x1EEE9AC00](a1 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A43A59B4(v2, v5, type metadata accessor for SurveyContentView);
  v6 = type metadata accessor for SurveyContentView.Coordinator(0);
  v7 = objc_allocWithZone(v6);
  sub_1A43A59B4(v5, v7 + OBJC_IVAR____TtCV12PhotosUICoreP33_AFC00BCA01978D7A3A12D1D9F0B75D8117SurveyContentView11Coordinator_representable, type metadata accessor for SurveyContentView);
  v10.receiver = v7;
  v10.super_class = v6;
  v8 = objc_msgSendSuper2(&v10, sel_init);
  result = sub_1A43A5954(v5, type metadata accessor for SurveyContentView);
  *a2 = v8;
  return result;
}

uint64_t sub_1A43A56E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A43A582C(&qword_1EB189EA0, &unk_1A5335444);

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1A43A5768(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A43A582C(&qword_1EB189EA0, &unk_1A5335444);

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1A43A57E8(uint64_t a1)
{
  sub_1A43A582C(&qword_1EB189EA0, &unk_1A5335444);
  sub_1A52496F4();
  __break(1u);
}

uint64_t sub_1A43A582C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SurveyContentView(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1A43A5870(uint64_t a1)
{
  if (!qword_1EB127A88)
  {
    type metadata accessor for SurveyContentView(255);
    sub_1A43A582C(&qword_1EB189EA0, &unk_1A5335444);
    v1 = sub_1A5249DB4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB127A88);
    }
  }
}

void sub_1A43A58F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A43A5954(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A43A59B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A43A5A1C(void *a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for LemonadeNavigationDestination(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a2;
  v17 = 0;
  v9 = a1;
  v10 = a2;
  LOBYTE(a2) = sub_1A3C5A374();
  v11 = sub_1A3C5A374();
  v12 = sub_1A3C5A374();
  sub_1A41DF298(v9, &v16, a2 & 1, v11 & 1, v12 & 1, 0, 0, v18);
  v13 = v18[1];
  *v8 = v18[0];
  *(v8 + 1) = v13;
  *(v8 + 4) = v19;
  swift_storeEnumTagMultiPayload();
  sub_1A43A48C0(v8, a3);
  return sub_1A43A5954(v8, type metadata accessor for LemonadeNavigationDestination);
}

uint64_t sub_1A43A5B54(void *a1, void *a2)
{
  v4 = type metadata accessor for LemonadeNavigationDestination(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (v7)
  {
    v8 = v7;
    v13[15] = 3;
    *&v14[0] = 0;
    v9 = a1;
    sub_1A3C6E9EC();
    LemonadePhotosPagingMemoryGridConfiguration.init(memory:initialPositionDetent:disallowedBehaviors:navigationSourceInfo:)(v8);
  }

  else
  {
    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {
      v11 = a1;
      LemonadePhotosPagingAssetCollectionGridConfiguration.init(collection:defaultSectionBodyStyle:viewConfiguration:assetsFetchResultProvider:selectionCoordinator:)(v6);
    }

    sub_1A42EAB60(a1, v14);
    v10 = v14[1];
    *v6 = v14[0];
    *(v6 + 1) = v10;
  }

  swift_storeEnumTagMultiPayload();
  sub_1A43A48C0(v6, a2);
  return sub_1A43A5954(v6, type metadata accessor for LemonadeNavigationDestination);
}

id SectionedDataSourceManager.__allocating_init(itemListManager:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = &v5[OBJC_IVAR____TtC12PhotosUICore26SectionedDataSourceManager_itemListManager];
  *v6 = a1;
  *(v6 + 1) = a2;
  v8.receiver = v5;
  v8.super_class = v2;
  return objc_msgSendSuper2(&v8, sel_init);
}

id SectionedDataSourceManager.init(itemListManager:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = &v2[OBJC_IVAR____TtC12PhotosUICore26SectionedDataSourceManager_itemListManager];
  *v6 = a1;
  *(v6 + 1) = a2;
  v8.receiver = v2;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_init);
}

void __swiftcall SectionedDataSourceManager.createInitialDataSource()(PXSectionedDataSource *__return_ptr retstr)
{
  type metadata accessor for SectionedDataSource(0, v1);
  swift_getObjectType();
  v2[3] = swift_getAssociatedTypeWitness();
  v2[4] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v2);
  sub_1A5245904();
}

id SectionedDataSourceManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SectionedDataSourceManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1A43A60BC(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1A3FBB594;

  return sub_1A43A6824(a2);
}

uint64_t sub_1A43A6168(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_1A3DBD9A0();
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x1EEE6DEE8](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return MEMORY[0x1EEE6DEE0](v5);
  }
}

uint64_t sub_1A43A6228(uint64_t a1, uint64_t a2)
{
  v3[20] = a2;
  v3[21] = v2;
  v3[19] = a1;
  sub_1A524CC54();
  v3[22] = sub_1A524CC44();
  v5 = sub_1A524CBC4();
  v3[23] = v5;
  v3[24] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1A43A62C4, v5, v4);
}

uint64_t sub_1A43A62C4(uint64_t a1)
{
  v2 = sub_1A46E0BEC();
  *(v1 + 200) = v2;
  v3 = sub_1A46E0BEC();

  if (v2 == v3)
  {
    sub_1A46E162C([*(v1 + 152) type] != 6, 2);
  }

  v5 = *(v1 + 152);
  v4 = *(v1 + 160);
  *(v1 + 16) = v1;
  *(v1 + 56) = v1 + 144;
  *(v1 + 24) = sub_1A43A6428;
  v6 = swift_continuation_init();
  sub_1A43A6C50(0);
  *(v1 + 136) = v7;
  *(v1 + 80) = MEMORY[0x1E69E9820];
  *(v1 + 88) = 1107296256;
  *(v1 + 96) = sub_1A43A6168;
  *(v1 + 104) = &block_descriptor_164;
  *(v1 + 112) = v6;
  [v2 navigateToDestination:v5 options:v4 completionHandler:v1 + 80];

  return MEMORY[0x1EEE6DEC8](v1 + 16);
}

uint64_t sub_1A43A6428()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 208) = v2;
  v3 = *(v1 + 192);
  v4 = *(v1 + 184);
  if (v2)
  {
    v5 = sub_1A43A65CC;
  }

  else
  {
    v5 = sub_1A43A6558;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1A43A6558()
{
  v1 = v0[25];

  v2 = v0[18];

  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_1A43A65CC()
{
  v1 = *(v0 + 200);

  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1A43A6644(uint64_t a1)
{
  v2 = sub_1A46E0BEC();
  LOBYTE(a1) = [v2 routingOptionsForDestination_];

  return a1 & 1;
}

id sub_1A43A6688(uint64_t a1)
{
  v2 = sub_1A46E0BEC();
  v3 = [v2 nextExistingParticipantOnRouteToDestination_];

  return v3;
}

uint64_t sub_1A43A66D4(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1A3FBBB04;

  return sub_1A43A6824(a2);
}

uint64_t sub_1A43A6780(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A3FBBB04;

  return sub_1A43A6228(a1, a2);
}

uint64_t sub_1A43A6824(uint64_t a1)
{
  v2[19] = a1;
  v2[20] = v1;
  sub_1A524CC54();
  v2[21] = sub_1A524CC44();
  v4 = sub_1A524CBC4();
  v2[22] = v4;
  v2[23] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1A43A68BC, v4, v3);
}

uint64_t sub_1A43A68BC(uint64_t a1)
{
  if (sub_1A46E59CC())
  {
    v2 = v1[19];
    v3 = sub_1A46E0BEC();
    v1[24] = v3;
    v1[2] = v1;
    v1[7] = v1 + 18;
    v1[3] = sub_1A43A6A34;
    v4 = swift_continuation_init();
    sub_1A43A6C50(0);
    v1[17] = v5;
    v1[10] = MEMORY[0x1E69E9820];
    v1[11] = 1107296256;
    v1[12] = sub_1A43A6168;
    v1[13] = &block_descriptor_10_7;
    v1[14] = v4;
    [v3 px:v2 dismissPresentedViewControllerWithOptions:v1 + 10 completionHandler:?];

    return MEMORY[0x1EEE6DEC8](v1 + 2);
  }

  else
  {

    v6 = v1[1];

    return v6(3);
  }
}

uint64_t sub_1A43A6A34()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 200) = v2;
  v3 = *(v1 + 184);
  v4 = *(v1 + 176);
  if (v2)
  {
    v5 = sub_1A43A6BD8;
  }

  else
  {
    v5 = sub_1A43A6B64;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1A43A6B64()
{
  v1 = v0[24];

  v2 = v0[18];

  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_1A43A6BD8()
{
  v1 = *(v0 + 192);

  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

void sub_1A43A6C50(uint64_t a1)
{
  if (!qword_1EB120B70)
  {
    type metadata accessor for PXProgrammaticNavigationResult(255);
    sub_1A3DBD9A0();
    v1 = sub_1A524CDF4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB120B70);
    }
  }
}

void sub_1A43A6CC8(uint64_t a1)
{
  if (!qword_1EB139050)
  {
    sub_1A43A6D24();
    v1 = sub_1A5249FF4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB139050);
    }
  }
}

unint64_t sub_1A43A6D24()
{
  result = qword_1EB139058;
  if (!qword_1EB139058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB139058);
  }

  return result;
}

id sub_1A43A6D78(void *a1)
{
  v2 = sub_1A524BB24();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3D6D85C(0);
  MEMORY[0x1A5906C60]();
  v6 = sub_1A524BB14();
  (*(v3 + 8))(v5, v2);
  return [a1 setIsInSelectMode_];
}

id sub_1A43A6EB0(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for PhotosGridView.Coordinator();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id sub_1A43A6EE4()
{
  v1 = *v0;
  sub_1A43A6CC8(0);
  sub_1A5249FD4();
  [v1 setDelegate_];

  return [objc_allocWithZone(PXPhotosUIViewController) initWithConfiguration_];
}

id sub_1A43A6F68@<X0>(void *a3@<X8>)
{
  result = [objc_allocWithZone(type metadata accessor for PhotosGridView.Coordinator()) init];
  *a3 = result;
  return result;
}

uint64_t sub_1A43A6FA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A43A6D24();

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_1A43A7004(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A43A6D24();

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_1A43A7068(uint64_t a1)
{
  sub_1A43A6D24();
  sub_1A5249ED4();
  __break(1u);
}

uint64_t sub_1A43A7090(void *a1)
{
  v24 = a1;
  sub_1A3D6D828(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A5249234();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3D6D85C(0);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v23 - v14;
  sub_1A43A6CC8(0);
  sub_1A5249FE4();
  sub_1A5249174();
  (*(v5 + 8))(v7, v4);
  if ((*(v10 + 48))(v3, 1, v9) == 1)
  {
    v16 = sub_1A3D6D828;
    v17 = v3;
  }

  else
  {
    sub_1A43A73EC(v3, v15);
    v18 = [v24 viewModel];
    sub_1A43A7450(v15, v12);
    v19 = (*(v10 + 80) + 16) & ~*(v10 + 80);
    v20 = swift_allocObject();
    sub_1A43A73EC(v12, v20 + v19);
    aBlock[4] = sub_1A43A74B4;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A3D7692C;
    aBlock[3] = &block_descriptor_165;
    v21 = _Block_copy(aBlock);

    [v18 performChanges_];
    _Block_release(v21);

    v16 = sub_1A3D6D85C;
    v17 = v15;
  }

  return sub_1A43A7524(v17, v16);
}

uint64_t sub_1A43A73EC(uint64_t a1, uint64_t a2)
{
  sub_1A3D6D85C(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A43A7450(uint64_t a1, uint64_t a2)
{
  sub_1A3D6D85C(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_1A43A74B4(void *a1)
{
  sub_1A3D6D85C(0);

  return sub_1A43A6D78(a1);
}

uint64_t sub_1A43A7524(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t static AssetEntity.transferRepresentation.getter@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v62 = a1;
  sub_1A43A8078(0, a2);
  v70 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v61 = &v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A43AC05C(0, &unk_1ED741F20, MEMORY[0x1E69E8450]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v55 - v5;
  v59 = sub_1A5246D14();
  v7 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  sub_1A43A818C(0);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A43A80F8(0, v11);
  v15 = v14;
  v60 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v69 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v68 = &v55 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v67 = &v55 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v66 = &v55 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v65 = &v55 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v71 = &v55 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v72 = &v55 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v73 = &v55 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v63 = &v55 - v32;
  v34 = MEMORY[0x1EEE9AC00](v33);
  v64 = &v55 - v35;
  (*(v7 + 56))(v6, 1, 1, v59, v34);
  sub_1A5246BE4();
  v36 = sub_1A43A81E8();
  sub_1A5241CA4();
  sub_1A43AC83C(&qword_1EB1390F0, sub_1A43A818C, MEMORY[0x1E6965BF8]);
  sub_1A5241CF4();
  v37 = *(v10 + 8);
  v37(v13, v9);
  sub_1A5246CD4();
  sub_1A5241CA4();
  sub_1A5241CF4();
  v37(v13, v9);
  sub_1A5246C84();
  sub_1A5241CA4();
  sub_1A5241CF4();
  v37(v13, v9);
  sub_1A5246C04();
  sub_1A5241CA4();
  sub_1A5241CF4();
  v37(v13, v9);
  sub_1A5246C24();
  sub_1A5241CA4();
  sub_1A5241CF4();
  v37(v13, v9);
  sub_1A5246CC4();
  sub_1A5241CA4();
  sub_1A5241CF4();
  v37(v13, v9);
  sub_1A5246C54();
  sub_1A5241CA4();
  sub_1A5241CF4();
  v37(v13, v9);
  sub_1A5246C64();
  sub_1A5241CA4();
  sub_1A5241CF4();
  v37(v13, v9);
  sub_1A5246C94();
  v59 = v36;
  sub_1A5241CA4();
  sub_1A5241CF4();
  v37(v13, v9);
  sub_1A5246CA4();
  sub_1A5241CA4();
  sub_1A5241CF4();
  v37(v13, v9);
  v38 = v70[12];
  v39 = v70[16];
  v40 = v70[20];
  v41 = v70[24];
  v42 = v70[28];
  v43 = v70[36];
  v55 = v70[32];
  v56 = v43;
  v44 = v70[44];
  v57 = v70[40];
  v58 = v44;
  v46 = v60;
  v45 = v61;
  v47 = *(v60 + 16);
  v47(v61, v64, v15);
  v47(&v45[v38], v63, v15);
  v47(&v45[v39], v73, v15);
  v47(&v45[v40], v72, v15);
  v47(&v45[v41], v71, v15);
  v48 = v65;
  v47(&v45[v42], v65, v15);
  v49 = v66;
  v47(&v45[v55], v66, v15);
  v50 = v67;
  v47(&v45[v56], v67, v15);
  v51 = v68;
  v47(&v45[v57], v68, v15);
  v52 = v69;
  v47(&v45[v58], v69, v15);
  sub_1A5241D24();
  v53 = *(v46 + 8);
  v53(v52, v15);
  v53(v51, v15);
  v53(v50, v15);
  v53(v49, v15);
  v53(v48, v15);
  v53(v71, v15);
  v53(v72, v15);
  v53(v73, v15);
  v53(v63, v15);
  return (v53)(v64, v15);
}

void sub_1A43A8078(uint64_t a1, double a2)
{
  if (!qword_1EB1390D0)
  {
    sub_1A43A80F8(255, a2);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata, &qword_1EB1390D0);
    }
  }
}

void sub_1A43A80F8(uint64_t a1, double a2)
{
  if (!qword_1EB1390D8)
  {
    sub_1A43A818C(255);
    sub_1A43AC83C(&qword_1EB1390F0, sub_1A43A818C, MEMORY[0x1E6965BF8]);
    v2 = sub_1A5241D44();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB1390D8);
    }
  }
}

void sub_1A43A818C(uint64_t a1)
{
  if (!qword_1EB1390E0)
  {
    sub_1A43A81E8();
    v1 = sub_1A5241CB4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1390E0);
    }
  }
}

unint64_t sub_1A43A81E8()
{
  result = qword_1EB1390E8;
  if (!qword_1EB1390E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1390E8);
  }

  return result;
}

uint64_t sub_1A43A823C(uint64_t a1, uint64_t a2)
{
  *(v2 + 144) = a1;
  v4 = sub_1A5246D14();
  *(v2 + 152) = v4;
  *(v2 + 160) = *(v4 - 8);
  *(v2 + 168) = swift_task_alloc();
  sub_1A43AC05C(0, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
  *(v2 + 176) = swift_task_alloc();
  v5 = sub_1A5240E64();
  *(v2 + 184) = v5;
  *(v2 + 192) = *(v5 - 8);
  *(v2 + 200) = swift_task_alloc();
  *(v2 + 208) = swift_task_alloc();
  v6 = *(a2 + 80);
  *(v2 + 80) = *(a2 + 64);
  *(v2 + 96) = v6;
  *(v2 + 112) = *(a2 + 96);
  v7 = *(a2 + 16);
  *(v2 + 16) = *a2;
  *(v2 + 32) = v7;
  v8 = *(a2 + 48);
  *(v2 + 48) = *(a2 + 32);
  *(v2 + 64) = v8;

  return MEMORY[0x1EEE6DFA0](sub_1A43A83D0, 0, 0);
}

uint64_t sub_1A43A83D0()
{
  if (qword_1EB1BC6C0 != -1)
  {
    swift_once();
  }

  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  v4 = __swift_project_value_buffer(v3, qword_1EB1BC6C8);
  swift_beginAccess();
  (*(v2 + 16))(v1, v4, v3);
  v5 = swift_task_alloc();
  v0[27] = v5;
  *v5 = v0;
  v5[1] = sub_1A43A84E8;
  v7 = v0[21];
  v6 = v0[22];

  return sub_1A43A88BC(v6, (v0 + 2), v7);
}

uint64_t sub_1A43A84E8()
{
  v2 = *(*v1 + 168);
  v3 = *(*v1 + 160);
  v4 = *(*v1 + 152);
  *(*v1 + 224) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_1A43A8794;
  }

  else
  {
    v5 = sub_1A43A8658;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1A43A8658()
{
  v1 = v0[23];
  v2 = v0[24];
  v3 = v0[22];
  result = (*(v2 + 48))(v3, 1, v1);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v6 = v0[25];
    v5 = v0[26];
    (*(v2 + 32))(v5, v3, v1);
    (*(v2 + 16))(v6, v5, v1);
    sub_1A5241CC4();
    (*(v2 + 8))(v5, v1);

    v7 = v0[1];

    return v7();
  }

  return result;
}

uint64_t sub_1A43A8794()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A43A881C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A3D60150;

  return sub_1A43A823C(a1, a2);
}

uint64_t sub_1A43A88BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 576) = a3;
  *(v3 + 568) = a1;
  v5 = sub_1A5240E64();
  *(v3 + 584) = v5;
  *(v3 + 592) = *(v5 - 8);
  *(v3 + 600) = swift_task_alloc();
  *(v3 + 608) = swift_task_alloc();
  sub_1A43AC05C(0, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
  *(v3 + 616) = swift_task_alloc();
  *(v3 + 624) = swift_task_alloc();
  v6 = sub_1A5246D14();
  *(v3 + 632) = v6;
  *(v3 + 640) = *(v6 - 8);
  *(v3 + 648) = swift_task_alloc();
  *(v3 + 656) = swift_task_alloc();
  *(v3 + 664) = swift_task_alloc();
  v7 = sub_1A5246F24();
  *(v3 + 672) = v7;
  *(v3 + 680) = *(v7 - 8);
  *(v3 + 688) = swift_task_alloc();
  *(v3 + 696) = swift_task_alloc();
  *(v3 + 704) = swift_task_alloc();
  *(v3 + 712) = swift_task_alloc();
  *(v3 + 720) = swift_task_alloc();
  *(v3 + 728) = swift_task_alloc();
  v8 = *(a2 + 80);
  *(v3 + 144) = *(a2 + 64);
  *(v3 + 160) = v8;
  *(v3 + 176) = *(a2 + 96);
  v9 = *(a2 + 16);
  *(v3 + 80) = *a2;
  *(v3 + 96) = v9;
  v10 = *(a2 + 48);
  *(v3 + 112) = *(a2 + 32);
  *(v3 + 128) = v10;

  return MEMORY[0x1EEE6DFA0](sub_1A43A8B44, 0, 0);
}

uint64_t sub_1A43A8B44()
{
  v59 = v0;
  v58[1] = *MEMORY[0x1E69E9840];
  v1 = v0[91];
  v2 = v0[85];
  v3 = v0[83];
  v4 = v0[80];
  v5 = v0[79];
  v6 = v0[72];
  v7 = sub_1A3CB648C();
  v0[92] = v7;
  v8 = *(v2 + 16);
  v0[93] = v8;
  v0[94] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v54 = v7;
  v55 = v8;
  v8(v1);
  v9 = *(v4 + 16);
  v0[95] = v9;
  v0[96] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v3, v6, v5);
  sub_1A3F67450((v0 + 10), (v0 + 23));
  v10 = sub_1A5246F04();
  v11 = sub_1A524D264();
  sub_1A3F678A8((v0 + 10));
  v12 = os_log_type_enabled(v10, v11);
  v56 = v0[91];
  v13 = v0[85];
  v14 = v0[84];
  v15 = v0[83];
  v16 = v0[80];
  v17 = v0[79];
  if (v12)
  {
    v18 = swift_slowAlloc();
    v58[0] = swift_slowAlloc();
    *v18 = 136446466;
    sub_1A43AC83C(&qword_1EB1390F8, MEMORY[0x1E69E8450], MEMORY[0x1E69E8480]);
    v19 = sub_1A524EA44();
    v21 = v20;
    (*(v16 + 8))(v15, v17);
    sub_1A3C2EF94(v19, v21, v58);
  }

  v22 = *(v16 + 8);
  v22(v15, v17);
  v23 = *(v13 + 8);
  v23(v56, v14);
  v0[98] = v23;
  v0[97] = v22;
  v24 = PXPhotosFileProviderManager();
  v0[99] = v24;
  if (v24)
  {
    v25 = v24;
    v26 = sub_1A524C634();
    v0[100] = v26;
    v27 = v26;
    v28 = sub_1A524C634();
    v29 = PXLocalizedString(v28);

    if (!v29)
    {
      sub_1A524C674();
      v29 = sub_1A524C634();
    }

    v30 = [objc_allocWithZone(MEMORY[0x1E69674D8]) initWithIdentifier:v27 displayName:v29 pathRelativeToDocumentStorage:v27 hidden:1];
    v0[101] = v30;

    v0[70] = 0;
    v31 = PXCreateDirectoryForFileProviderDomain(v30, v0 + 70);
    v32 = v0[70];
    v0[102] = v32;
    if (v31)
    {
      v0[2] = v0;
      v0[3] = sub_1A43A9340;
      v33 = swift_continuation_init();
      sub_1A43AC0B0(0);
      v0[69] = v34;
      v0[66] = v33;
      v0[62] = MEMORY[0x1E69E9820];
      v0[63] = 1107296256;
      v0[64] = sub_1A4078F5C;
      v0[65] = &block_descriptor_166;
      v35 = v32;
      [v25 addDomain:v30 completionHandler:v0 + 62];

      return MEMORY[0x1EEE6DEC8](v0 + 2);
    }

    v55(v0[88], v54, v0[84]);
    v42 = v32;
    v43 = sub_1A5246F04();
    v44 = sub_1A524D244();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v57 = v30;
      v46 = swift_slowAlloc();
      *v45 = 138412290;
      *(v45 + 4) = v42;
      *v46 = v32;
      v47 = v42;
      _os_log_impl(&dword_1A3C1C000, v43, v44, "Failed to create directory for domain: %@", v45, 0xCu);
      sub_1A3C590A0(v46, &qword_1EB12B150, sub_1A3C7B6A4);
      v48 = v46;
      v30 = v57;
      MEMORY[0x1A590EEC0](v48, -1, -1);
      MEMORY[0x1A590EEC0](v45, -1, -1);
    }

    v49 = v0[88];
    v50 = v0[84];

    v23(v49, v50);
    sub_1A40DCE64();
    swift_allocError();
    *v51 = 4;
    swift_willThrow();
  }

  else
  {
    v55(v0[87], v54, v0[84]);
    v36 = sub_1A5246F04();
    v37 = sub_1A524D244();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_1A3C1C000, v36, v37, "Failed to acquire file provider manager", v38, 2u);
      MEMORY[0x1A590EEC0](v38, -1, -1);
    }

    v39 = v0[87];
    v40 = v0[84];

    v23(v39, v40);
    sub_1A40DCE64();
    swift_allocError();
    *v41 = 4;
    swift_willThrow();
  }

  v52 = v0[1];

  return v52();
}

uint64_t sub_1A43A9340()
{
  v1 = *(*v0 + 48);
  *(*v0 + 824) = v1;
  if (v1)
  {
    v2 = sub_1A43A9E88;
  }

  else
  {
    v2 = sub_1A43A947C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A43A947C()
{
  v75 = v0;
  v74[1] = *MEMORY[0x1E69E9840];
  v1 = v0[101];
  v2 = v0[99];
  v3 = v0[72];
  type metadata accessor for PhotosFileProviderRegister.Configuration(0);
  v4 = PhotosFileProviderRegister.Configuration.__allocating_init(usage:)(0);
  type metadata accessor for PhotosFileProviderRegister();
  v73 = v4;
  v71 = PhotosFileProviderRegister.__allocating_init(configuration:fileProviderManager:domain:)(v73, v2, v1);
  v5 = (*((*MEMORY[0x1E69E7D40] & *v71) + 0x88))(v0[10]);
  v6 = swift_task_alloc();
  *(v6 + 16) = v3;
  v8 = sub_1A3FE8BAC(sub_1A43AC11C, v7, v6, v5);

  v72 = v8;
  if (v8)
  {
    (*(v0[74] + 16))(v0[78], v8 + OBJC_IVAR___PXPhotosFileProviderRegisterFileRepresentation_fileProviderURL, v0[73]);
    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = v0[78];
  v11 = v0[77];
  v12 = v0[74];
  v13 = v0[73];
  (*(v12 + 56))(v10, v9, 1, v13);
  sub_1A426E444(v10, v11);
  v14 = (*(v12 + 48))(v11, 1, v13);
  v68 = v0[95];
  v15 = v0[93];
  v16 = v0[92];
  v17 = v0[84];
  v18 = v0[79];
  if (v14 == 1)
  {
    v19 = v0[89];
    v20 = v0[81];
    v21 = v0[72];
    sub_1A3C590A0(v0[77], &unk_1EB12B250, MEMORY[0x1E6968FB0]);
    v15(v19, v16, v17);
    v68(v20, v21, v18);
    sub_1A3F67450((v0 + 10), (v0 + 36));
    v22 = sub_1A5246F04();
    v23 = sub_1A524D244();
    sub_1A3F678A8((v0 + 10));
    v24 = os_log_type_enabled(v22, v23);
    v64 = v0[101];
    v67 = v0[99];
    v25 = v0[98];
    v26 = v0[97];
    v27 = v0[89];
    v69 = v0[100];
    v28 = v0[84];
    v29 = v0[81];
    v30 = v0[79];
    if (v24)
    {
      v31 = swift_slowAlloc();
      v74[0] = swift_slowAlloc();
      *v31 = 136446466;
      sub_1A43AC83C(&qword_1EB1390F8, MEMORY[0x1E69E8450], MEMORY[0x1E69E8480]);
      v32 = sub_1A524EA44();
      v34 = v33;
      v26(v29, v30);
      sub_1A3C2EF94(v32, v34, v74);
    }

    v26(v29, v30);
    v25(v27, v28);
  }

  else
  {
    v35 = v0[90];
    v65 = v0[82];
    v36 = v0[76];
    v37 = v0[74];
    v38 = v0[73];
    v60 = v0[75];
    loga = v0[72];
    (*(v37 + 32))(v36, v0[77], v38);
    v15(v35, v16, v17);
    (*(v37 + 16))(v60, v36, v38);
    v68(v65, loga, v18);
    sub_1A3F67450((v0 + 10), (v0 + 49));
    v39 = sub_1A5246F04();
    v40 = sub_1A524D264();
    sub_1A3F678A8((v0 + 10));
    log = v39;
    v41 = os_log_type_enabled(v39, v40);
    v66 = v0[100];
    v59 = v0[101];
    v61 = v0[99];
    v42 = v0[98];
    v43 = v0[97];
    v44 = v0[90];
    v70 = v0[84];
    v58 = v0[82];
    v45 = v0[79];
    v46 = v0[76];
    v47 = v0[75];
    v48 = v0[74];
    v49 = v0[73];
    if (v41)
    {
      v50 = swift_slowAlloc();
      v74[0] = swift_slowAlloc();
      *v50 = 136315650;
      sub_1A43AC83C(&qword_1EB12B000, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
      v51 = sub_1A524EA44();
      v53 = v52;
      (*(v48 + 8))(v47, v49);
      sub_1A3C2EF94(v51, v53, v74);
    }

    v43(v58, v45);
    v54 = *(v48 + 8);
    v54(v47, v49);
    v42(v44, v70);
    v54(v46, v49);
  }

  v55 = v0[102];
  sub_1A408A03C(v0[78], v0[71]);

  v56 = v0[1];

  return v56();
}

uint64_t sub_1A43A9E88(uint64_t a1)
{
  v2 = v1[103];
  v3 = v1[93];
  v4 = v1[92];
  v5 = v1[86];
  v6 = v1[84];
  swift_willThrow();
  v3(v5, v4, v6);
  v7 = v2;
  v8 = sub_1A5246F04();
  v9 = sub_1A524D244();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = v1[103];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    v13 = v10;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&dword_1A3C1C000, v8, v9, "Failed to add domain: %@", v11, 0xCu);
    sub_1A3C590A0(v12, &qword_1EB12B150, sub_1A3C7B6A4);
    MEMORY[0x1A590EEC0](v12, -1, -1);
    MEMORY[0x1A590EEC0](v11, -1, -1);
  }

  v15 = v1[102];
  v16 = v1[101];
  v17 = v1[100];
  v18 = v1[99];
  v19 = v1[98];
  v20 = v1[86];
  v21 = v1[84];

  v19(v20, v21);
  swift_willThrow();

  v22 = v1[1];

  return v22();
}

uint64_t sub_1A43AA140(uint64_t a1)
{
  v2 = sub_1A5246D14();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v6 = *(a1 + 80);
  v12[4] = *(a1 + 64);
  v12[5] = v6;
  v13 = *(a1 + 96);
  v7 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v7;
  v8 = *(a1 + 48);
  v12[2] = *(a1 + 32);
  v12[3] = v8;
  if (qword_1EB1BC6C0 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v2, qword_1EB1BC6C8);
  swift_beginAccess();
  (*(v3 + 16))(v5, v9, v2);
  LOBYTE(v9) = sub_1A43AC164(v12, v5);
  (*(v3 + 8))(v5, v2);
  return v9 & 1;
}

uint64_t sub_1A43AA2AC(uint64_t a1, uint64_t a2)
{
  *(v2 + 120) = a1;
  v4 = sub_1A5246D14();
  *(v2 + 128) = v4;
  *(v2 + 136) = *(v4 - 8);
  *(v2 + 144) = swift_task_alloc();
  sub_1A43AC05C(0, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
  *(v2 + 152) = swift_task_alloc();
  v5 = sub_1A5240E64();
  *(v2 + 160) = v5;
  *(v2 + 168) = *(v5 - 8);
  *(v2 + 176) = swift_task_alloc();
  *(v2 + 184) = swift_task_alloc();
  v6 = *(a2 + 80);
  *(v2 + 80) = *(a2 + 64);
  *(v2 + 96) = v6;
  *(v2 + 112) = *(a2 + 96);
  v7 = *(a2 + 16);
  *(v2 + 16) = *a2;
  *(v2 + 32) = v7;
  v8 = *(a2 + 48);
  *(v2 + 48) = *(a2 + 32);
  *(v2 + 64) = v8;

  return MEMORY[0x1EEE6DFA0](sub_1A43AA440, 0, 0);
}

uint64_t sub_1A43AA440(uint64_t a1)
{
  sub_1A5246CD4();
  v2 = swift_task_alloc();
  v1[24] = v2;
  *v2 = v1;
  v2[1] = sub_1A43AA4E0;
  v4 = v1[18];
  v3 = v1[19];

  return sub_1A43A88BC(v3, (v1 + 2), v4);
}

uint64_t sub_1A43AA4E0()
{
  v2 = *(*v1 + 144);
  v3 = *(*v1 + 136);
  v4 = *(*v1 + 128);
  *(*v1 + 200) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_1A43AC8F0;
  }

  else
  {
    v5 = sub_1A43AC8F4;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1A43AA668(uint64_t a1, uint64_t a2)
{
  *(v2 + 120) = a1;
  v4 = sub_1A5246D14();
  *(v2 + 128) = v4;
  *(v2 + 136) = *(v4 - 8);
  *(v2 + 144) = swift_task_alloc();
  sub_1A43AC05C(0, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
  *(v2 + 152) = swift_task_alloc();
  v5 = sub_1A5240E64();
  *(v2 + 160) = v5;
  *(v2 + 168) = *(v5 - 8);
  *(v2 + 176) = swift_task_alloc();
  *(v2 + 184) = swift_task_alloc();
  v6 = *(a2 + 80);
  *(v2 + 80) = *(a2 + 64);
  *(v2 + 96) = v6;
  *(v2 + 112) = *(a2 + 96);
  v7 = *(a2 + 16);
  *(v2 + 16) = *a2;
  *(v2 + 32) = v7;
  v8 = *(a2 + 48);
  *(v2 + 48) = *(a2 + 32);
  *(v2 + 64) = v8;

  return MEMORY[0x1EEE6DFA0](sub_1A43AA7FC, 0, 0);
}

uint64_t sub_1A43AA7FC(uint64_t a1)
{
  sub_1A5246C84();
  v2 = swift_task_alloc();
  v1[24] = v2;
  *v2 = v1;
  v2[1] = sub_1A43AA4E0;
  v4 = v1[18];
  v3 = v1[19];

  return sub_1A43A88BC(v3, (v1 + 2), v4);
}

uint64_t sub_1A43AA8B4(uint64_t a1, uint64_t a2)
{
  *(v2 + 120) = a1;
  v4 = sub_1A5246D14();
  *(v2 + 128) = v4;
  *(v2 + 136) = *(v4 - 8);
  *(v2 + 144) = swift_task_alloc();
  sub_1A43AC05C(0, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
  *(v2 + 152) = swift_task_alloc();
  v5 = sub_1A5240E64();
  *(v2 + 160) = v5;
  *(v2 + 168) = *(v5 - 8);
  *(v2 + 176) = swift_task_alloc();
  *(v2 + 184) = swift_task_alloc();
  v6 = *(a2 + 80);
  *(v2 + 80) = *(a2 + 64);
  *(v2 + 96) = v6;
  *(v2 + 112) = *(a2 + 96);
  v7 = *(a2 + 16);
  *(v2 + 16) = *a2;
  *(v2 + 32) = v7;
  v8 = *(a2 + 48);
  *(v2 + 48) = *(a2 + 32);
  *(v2 + 64) = v8;

  return MEMORY[0x1EEE6DFA0](sub_1A43AAA48, 0, 0);
}

uint64_t sub_1A43AAA48(uint64_t a1)
{
  sub_1A5246C04();
  v2 = swift_task_alloc();
  v1[24] = v2;
  *v2 = v1;
  v2[1] = sub_1A43AA4E0;
  v4 = v1[18];
  v3 = v1[19];

  return sub_1A43A88BC(v3, (v1 + 2), v4);
}

uint64_t sub_1A43AAB00(uint64_t a1, uint64_t a2)
{
  *(v2 + 120) = a1;
  v4 = sub_1A5246D14();
  *(v2 + 128) = v4;
  *(v2 + 136) = *(v4 - 8);
  *(v2 + 144) = swift_task_alloc();
  sub_1A43AC05C(0, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
  *(v2 + 152) = swift_task_alloc();
  v5 = sub_1A5240E64();
  *(v2 + 160) = v5;
  *(v2 + 168) = *(v5 - 8);
  *(v2 + 176) = swift_task_alloc();
  *(v2 + 184) = swift_task_alloc();
  v6 = *(a2 + 80);
  *(v2 + 80) = *(a2 + 64);
  *(v2 + 96) = v6;
  *(v2 + 112) = *(a2 + 96);
  v7 = *(a2 + 16);
  *(v2 + 16) = *a2;
  *(v2 + 32) = v7;
  v8 = *(a2 + 48);
  *(v2 + 48) = *(a2 + 32);
  *(v2 + 64) = v8;

  return MEMORY[0x1EEE6DFA0](sub_1A43AAC94, 0, 0);
}

uint64_t sub_1A43AAC94(uint64_t a1)
{
  sub_1A5246C24();
  v2 = swift_task_alloc();
  v1[24] = v2;
  *v2 = v1;
  v2[1] = sub_1A43AA4E0;
  v4 = v1[18];
  v3 = v1[19];

  return sub_1A43A88BC(v3, (v1 + 2), v4);
}

uint64_t sub_1A43AAD4C(uint64_t a1, uint64_t a2)
{
  *(v2 + 120) = a1;
  v4 = sub_1A5246D14();
  *(v2 + 128) = v4;
  *(v2 + 136) = *(v4 - 8);
  *(v2 + 144) = swift_task_alloc();
  sub_1A43AC05C(0, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
  *(v2 + 152) = swift_task_alloc();
  v5 = sub_1A5240E64();
  *(v2 + 160) = v5;
  *(v2 + 168) = *(v5 - 8);
  *(v2 + 176) = swift_task_alloc();
  *(v2 + 184) = swift_task_alloc();
  v6 = *(a2 + 80);
  *(v2 + 80) = *(a2 + 64);
  *(v2 + 96) = v6;
  *(v2 + 112) = *(a2 + 96);
  v7 = *(a2 + 16);
  *(v2 + 16) = *a2;
  *(v2 + 32) = v7;
  v8 = *(a2 + 48);
  *(v2 + 48) = *(a2 + 32);
  *(v2 + 64) = v8;

  return MEMORY[0x1EEE6DFA0](sub_1A43AAEE0, 0, 0);
}

uint64_t sub_1A43AAEE0(uint64_t a1)
{
  sub_1A5246CC4();
  v2 = swift_task_alloc();
  v1[24] = v2;
  *v2 = v1;
  v2[1] = sub_1A43AA4E0;
  v4 = v1[18];
  v3 = v1[19];

  return sub_1A43A88BC(v3, (v1 + 2), v4);
}

uint64_t sub_1A43AAF98(uint64_t a1, uint64_t a2)
{
  *(v2 + 120) = a1;
  v4 = sub_1A5246D14();
  *(v2 + 128) = v4;
  *(v2 + 136) = *(v4 - 8);
  *(v2 + 144) = swift_task_alloc();
  sub_1A43AC05C(0, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
  *(v2 + 152) = swift_task_alloc();
  v5 = sub_1A5240E64();
  *(v2 + 160) = v5;
  *(v2 + 168) = *(v5 - 8);
  *(v2 + 176) = swift_task_alloc();
  *(v2 + 184) = swift_task_alloc();
  v6 = *(a2 + 80);
  *(v2 + 80) = *(a2 + 64);
  *(v2 + 96) = v6;
  *(v2 + 112) = *(a2 + 96);
  v7 = *(a2 + 16);
  *(v2 + 16) = *a2;
  *(v2 + 32) = v7;
  v8 = *(a2 + 48);
  *(v2 + 48) = *(a2 + 32);
  *(v2 + 64) = v8;

  return MEMORY[0x1EEE6DFA0](sub_1A43AB12C, 0, 0);
}

uint64_t sub_1A43AB12C(uint64_t a1)
{
  sub_1A5246C54();
  v2 = swift_task_alloc();
  v1[24] = v2;
  *v2 = v1;
  v2[1] = sub_1A43AB1CC;
  v4 = v1[18];
  v3 = v1[19];

  return sub_1A43A88BC(v3, (v1 + 2), v4);
}

uint64_t sub_1A43AB1CC()
{
  v2 = *(*v1 + 144);
  v3 = *(*v1 + 136);
  v4 = *(*v1 + 128);
  *(*v1 + 200) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_1A43AB478;
  }

  else
  {
    v5 = sub_1A43AB33C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1A43AB33C()
{
  v1 = v0[20];
  v2 = v0[21];
  v3 = v0[19];
  result = (*(v2 + 48))(v3, 1, v1);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v6 = v0[22];
    v5 = v0[23];
    (*(v2 + 32))(v5, v3, v1);
    (*(v2 + 16))(v6, v5, v1);
    sub_1A5241CC4();
    (*(v2 + 8))(v5, v1);

    v7 = v0[1];

    return v7();
  }

  return result;
}

uint64_t sub_1A43AB478()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A43AB518(uint64_t a1, uint64_t a2)
{
  *(v2 + 120) = a1;
  v4 = sub_1A5246D14();
  *(v2 + 128) = v4;
  *(v2 + 136) = *(v4 - 8);
  *(v2 + 144) = swift_task_alloc();
  sub_1A43AC05C(0, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
  *(v2 + 152) = swift_task_alloc();
  v5 = sub_1A5240E64();
  *(v2 + 160) = v5;
  *(v2 + 168) = *(v5 - 8);
  *(v2 + 176) = swift_task_alloc();
  *(v2 + 184) = swift_task_alloc();
  v6 = *(a2 + 80);
  *(v2 + 80) = *(a2 + 64);
  *(v2 + 96) = v6;
  *(v2 + 112) = *(a2 + 96);
  v7 = *(a2 + 16);
  *(v2 + 16) = *a2;
  *(v2 + 32) = v7;
  v8 = *(a2 + 48);
  *(v2 + 48) = *(a2 + 32);
  *(v2 + 64) = v8;

  return MEMORY[0x1EEE6DFA0](sub_1A43AB6AC, 0, 0);
}

uint64_t sub_1A43AB6AC(uint64_t a1)
{
  sub_1A5246C64();
  v2 = swift_task_alloc();
  v1[24] = v2;
  *v2 = v1;
  v2[1] = sub_1A43AA4E0;
  v4 = v1[18];
  v3 = v1[19];

  return sub_1A43A88BC(v3, (v1 + 2), v4);
}

uint64_t sub_1A43AB764(uint64_t a1, uint64_t a2)
{
  *(v2 + 120) = a1;
  v4 = sub_1A5246D14();
  *(v2 + 128) = v4;
  *(v2 + 136) = *(v4 - 8);
  *(v2 + 144) = swift_task_alloc();
  sub_1A43AC05C(0, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
  *(v2 + 152) = swift_task_alloc();
  v5 = sub_1A5240E64();
  *(v2 + 160) = v5;
  *(v2 + 168) = *(v5 - 8);
  *(v2 + 176) = swift_task_alloc();
  *(v2 + 184) = swift_task_alloc();
  v6 = *(a2 + 80);
  *(v2 + 80) = *(a2 + 64);
  *(v2 + 96) = v6;
  *(v2 + 112) = *(a2 + 96);
  v7 = *(a2 + 16);
  *(v2 + 16) = *a2;
  *(v2 + 32) = v7;
  v8 = *(a2 + 48);
  *(v2 + 48) = *(a2 + 32);
  *(v2 + 64) = v8;

  return MEMORY[0x1EEE6DFA0](sub_1A43AB8F8, 0, 0);
}

uint64_t sub_1A43AB8F8(uint64_t a1)
{
  sub_1A5246C94();
  v2 = swift_task_alloc();
  v1[24] = v2;
  *v2 = v1;
  v2[1] = sub_1A43AA4E0;
  v4 = v1[18];
  v3 = v1[19];

  return sub_1A43A88BC(v3, (v1 + 2), v4);
}

uint64_t sub_1A43AB9B0(uint64_t a1, uint64_t a2)
{
  *(v2 + 120) = a1;
  v4 = sub_1A5246D14();
  *(v2 + 128) = v4;
  *(v2 + 136) = *(v4 - 8);
  *(v2 + 144) = swift_task_alloc();
  sub_1A43AC05C(0, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
  *(v2 + 152) = swift_task_alloc();
  v5 = sub_1A5240E64();
  *(v2 + 160) = v5;
  *(v2 + 168) = *(v5 - 8);
  *(v2 + 176) = swift_task_alloc();
  *(v2 + 184) = swift_task_alloc();
  v6 = *(a2 + 80);
  *(v2 + 80) = *(a2 + 64);
  *(v2 + 96) = v6;
  *(v2 + 112) = *(a2 + 96);
  v7 = *(a2 + 16);
  *(v2 + 16) = *a2;
  *(v2 + 32) = v7;
  v8 = *(a2 + 48);
  *(v2 + 48) = *(a2 + 32);
  *(v2 + 64) = v8;

  return MEMORY[0x1EEE6DFA0](sub_1A43ABB44, 0, 0);
}

uint64_t sub_1A43ABB44(uint64_t a1)
{
  sub_1A5246CA4();
  v2 = swift_task_alloc();
  v1[24] = v2;
  *v2 = v1;
  v2[1] = sub_1A43AA4E0;
  v4 = v1[18];
  v3 = v1[19];

  return sub_1A43A88BC(v3, (v1 + 2), v4);
}

uint64_t sub_1A43ABBFC(uint64_t a1, void (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, void, void, void, void, void))
{
  v4 = sub_1A5246D14();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 80);
  v23 = *(a1 + 64);
  v24 = v8;
  v25 = *(a1 + 96);
  v9 = *(a1 + 16);
  v20[0] = *a1;
  v20[1] = v9;
  v10 = *(a1 + 48);
  v21 = *(a1 + 32);
  v22 = v10;
  a2(v11, v12, v13, v14, v15, v16, v17, v18, *&v20[0], *(&v20[0] + 1), v9, *(&v9 + 1), v21);
  LOBYTE(a2) = sub_1A43AC164(v20, v7);
  (*(v5 + 8))(v7, v4);
  return a2 & 1;
}

id sub_1A43ABD08()
{
  v0 = sub_1A5246D14();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v4, qword_1EB1BC6C8);
  v5 = __swift_project_value_buffer(v0, qword_1EB1BC6C8);
  result = PFCurrentPlatformLivePhotoBundleType();
  if (result)
  {
    v7 = result;
    sub_1A5246C44();

    return (*(v1 + 32))(v5, v3, v0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static AssetEntity.livePhotoType.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB1BC6C0 != -1)
  {
    swift_once();
  }

  v2 = sub_1A5246D14();
  v3 = __swift_project_value_buffer(v2, qword_1EB1BC6C8);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static AssetEntity.livePhotoType.setter(uint64_t a1)
{
  if (qword_1EB1BC6C0 != -1)
  {
    swift_once();
  }

  v2 = sub_1A5246D14();
  v3 = __swift_project_value_buffer(v2, qword_1EB1BC6C8);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static AssetEntity.livePhotoType.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_1EB1BC6C0 != -1)
  {
    swift_once();
  }

  v1 = sub_1A5246D14();
  __swift_project_value_buffer(v1, qword_1EB1BC6C8);
  swift_beginAccess();
  return j__swift_endAccess;
}

void sub_1A43AC05C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A524DF24();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1A43AC0B0(uint64_t a1)
{
  if (!qword_1EB147950)
  {
    sub_1A3DBD9A0();
    v1 = sub_1A524CDF4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB147950);
    }
  }
}

uint64_t sub_1A43AC164(__int128 *a1, uint64_t a2)
{
  v4 = sub_1A5246D14();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v40 - v9;
  v44 = sub_1A5246F24();
  v11 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v40 - v15;
  v17 = a1[4];
  v18 = a1[5];
  v19 = a1[2];
  v47[3] = a1[3];
  v47[4] = v17;
  v47[5] = v18;
  v48 = *(a1 + 12);
  v20 = a1[1];
  v47[0] = *a1;
  v47[1] = v20;
  v47[2] = v19;
  type metadata accessor for PhotosFileProviderRegister.Configuration(0);
  v21 = PhotosFileProviderRegister.Configuration.__allocating_init(usage:)(0);
  type metadata accessor for PhotosFileProviderRegister();
  v42 = v21;
  LOBYTE(a1) = static PhotosFileProviderRegister.canRegisterFileRepresentations(for:contentType:configuration:)(*&v47[0], a2, v21);
  v22 = sub_1A3CB648C();
  v43 = v11;
  v23 = v11;
  v24 = a1;
  v25 = *(v23 + 16);
  v26 = (v5 + 16);
  if (v24)
  {
    v25(v16, v22, v44);
    (*v26)(v10, a2, v4);
    sub_1A3F67450(v47, &v46);
    v27 = sub_1A5246F04();
    v28 = sub_1A524D264();
    sub_1A3F678A8(v47);
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v45 = v41;
      *v29 = 136446466;
      sub_1A43AC83C(&qword_1EB1390F8, MEMORY[0x1E69E8450], MEMORY[0x1E69E8480]);
      v30 = sub_1A524EA44();
      v32 = v31;
      (*(v5 + 8))(v10, v4);
      sub_1A3C2EF94(v30, v32, &v45);
    }

    (*(v5 + 8))(v10, v4);
    (*(v43 + 8))(v16, v44);
  }

  else
  {
    v25(v13, v22, v44);
    (*v26)(v7, a2, v4);
    sub_1A3F67450(v47, &v46);
    v33 = sub_1A5246F04();
    v34 = sub_1A524D264();
    sub_1A3F678A8(v47);
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v45 = v41;
      *v35 = 136446466;
      sub_1A43AC83C(&qword_1EB1390F8, MEMORY[0x1E69E8450], MEMORY[0x1E69E8480]);
      v36 = sub_1A524EA44();
      v38 = v37;
      (*(v5 + 8))(v7, v4);
      sub_1A3C2EF94(v36, v38, &v45);
    }

    (*(v5 + 8))(v7, v4);
    (*(v43 + 8))(v13, v44);
  }

  return v24 & 1;
}

uint64_t sub_1A43AC83C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1A43AC884(uint64_t a1, double a2)
{
  if (!qword_1EB139108)
  {
    sub_1A43A8078(255, a2);
    sub_1A43A81E8();
    v2 = sub_1A5241D14();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB139108);
    }
  }
}

double sub_1A43AC8F8()
{
  v0 = sub_1A52436D4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C7E8B0(0, v4);
  v5 = [swift_getObjCClassFromMetadata() sharedInstance];
  if ([v5 enableSolariumDetailsView])
  {
    v6 = 0.0;
  }

  else
  {
    v6 = 80.0;
  }

  sub_1A52436A4();
  sub_1A52436C4();
  v8 = v7;

  (*(v1 + 8))(v3, v0);
  result = v8 + 64.0 + 40.0;
  *&xmmword_1EB191410 = v6;
  *(&xmmword_1EB191410 + 1) = result;
  qword_1EB191420 = 0x4061800000000000;
  return result;
}

__int128 *sub_1A43ACA40()
{
  if (qword_1EB191400 != -1)
  {
    swift_once();
  }

  return &xmmword_1EB191410;
}

double static PhotosDynamicHeaderSpec.lemonade.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_1EB191400 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  result = *&qword_1EB191420;
  *a1 = xmmword_1EB191410;
  *(a1 + 16) = result;
  return result;
}

void PhotosDynamicHeaderSpec.headerHeight(for:)(double a1, __n128 a2)
{
  v2 = a2.n128_f64[0];
  v3 = a1;
  if (a1 == 0.0 || a2.n128_f64[0] == 0.0 || (*MEMORY[0x1E69BDDB0] == a1 ? (v4 = *(MEMORY[0x1E69BDDB0] + 8) == a2.n128_f64[0]) : (v4 = 0), v4))
  {
    v9 = MEMORY[0x1E69E9C10];
    v10 = MEMORY[0x1E69E9C10];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      __os_log_helper_16_0_3_8_0_8_0_8_0(v12, *&v3, *&v2, 0x3FF0000000000000);
      _os_log_fault_impl(&dword_1A3C1C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "PFSizeGetAspectRatio produced an undefined aspect ratio from size {%lf, %lf}. Returning %f. Use PFSizeGetAspectRatioWithDefault() to provide a value for this case.", v12, 0x20u);
    }

    if (v2 >= v3)
    {
      a1 = v3;
    }

    else
    {
      a1 = v2;
    }

    v8 = 0.6;
    v7 = 0.565;
  }

  else
  {
    v5 = fabs(a1 / a2.n128_f64[0]);
    if (v2 < a1)
    {
      a1 = v2;
    }

    v6 = v5 <= 1.0;
    v7 = 0.565;
    if (!v6)
    {
      v7 = 0.7;
    }

    v8 = 0.6;
    if (!v6)
    {
      v8 = 0.55;
    }
  }

  if (a1 <= 460.0)
  {
    v11 = v7;
  }

  else
  {
    v11 = v8;
  }

  CGRound(v11 * v2);
}

double __os_log_helper_16_0_3_8_0_8_0_8_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *&result = 134218496;
  *a1 = 134218496;
  *(a1 + 4) = a2;
  *(a1 + 12) = 2048;
  *(a1 + 14) = a3;
  *(a1 + 22) = 2048;
  *(a1 + 24) = a4;
  return result;
}

char *sub_1A43ACC88(void *a1, void *a2, void *a3)
{
  v4 = v3;
  sub_1A43ACE80(0, &qword_1EB139110, sub_1A43ACE4C, MEMORY[0x1E695C070]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v17 - v11;
  v13 = objc_allocWithZone(v4);
  v14 = OBJC_IVAR____TtC12PhotosUICore37PhotosDetailsPhototypeWidgetViewModel__phototypeSupport;
  v17[1] = 0;
  sub_1A43ACE4C(0);
  sub_1A52479A4();
  (*(v10 + 32))(&v13[v14], v12, v9);
  v15 = [a3 phototypeAccessoryViewSupport];
  swift_beginAccess();
  (*(v10 + 8))(&v13[v14], v9);
  v17[0] = v15;
  sub_1A52479A4();
  swift_endAccess();
  return sub_1A4467460(a1, a2, a3);
}

void sub_1A43ACE80(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1A43ACEE4()
{
  result = qword_1EB139180;
  if (!qword_1EB139180)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB139180);
  }

  return result;
}

uint64_t sub_1A43ACF48(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  return sub_1A52479F4();
}

uint64_t sub_1A43ACFB4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52479E4();

  return v1;
}

void sub_1A43AD028(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52479E4();

  *a2 = v3;
}

uint64_t sub_1A43AD0A8(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  swift_unknownObjectRetain();
  v3 = v2;
  return sub_1A52479F4();
}

uint64_t sub_1A43AD150(uint64_t (*a1)(uint64_t))
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52479E4();

  if (!v5)
  {
    return 0;
  }

  ObjectType = swift_getObjectType();
  v3 = a1(ObjectType);
  swift_unknownObjectRelease();
  return v3;
}

BOOL sub_1A43AD204()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52479E4();

  if (v1)
  {
    swift_unknownObjectRelease();
  }

  return v1 != 0;
}

void sub_1A43AD28C(void *a1)
{
  v2 = sub_1A4467CD8();
  v3 = [v2 presentViewController];

  if (v3)
  {
    v3[2](v3, a1);

    _Block_release(v3);
  }

  else
  {
    if (qword_1EB1BC760 != -1)
    {
      swift_once();
    }

    v4 = sub_1A5246F24();
    __swift_project_value_buffer(v4, qword_1EB1BC768);
    v5 = a1;
    oslog = sub_1A5246F04();
    v6 = sub_1A524D244();

    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v7 = 136315138;
      v8 = v5;
      v9 = [v8 description];
      v10 = sub_1A524C674();
      v12 = v11;

      sub_1A3C2EF94(v10, v12, &v14);
    }
  }
}

uint64_t sub_1A43AD490()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore37PhotosDetailsPhototypeWidgetViewModel__phototypeSupport;
  sub_1A43ACE80(0, &qword_1EB139110, sub_1A43ACE4C, MEMORY[0x1E695C070]);
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

void sub_1A43AD5C4()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB1BC768);
  __swift_project_value_buffer(v0, qword_1EB1BC768);
  sub_1A5246EF4();
}

uint64_t type metadata accessor for PhotosDetailsPhototypeWidgetViewModel(uint64_t a1)
{
  result = qword_1EB1BC798;
  if (!qword_1EB1BC798)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A43AD67C(uint64_t a1)
{
  sub_1A43ACE80(319, &qword_1EB139110, sub_1A43ACE4C, MEMORY[0x1E695C070]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1A43AD73C(char a1)
{
  if (a1)
  {
    MEMORY[0x1A5907B60](0x73655220776F4C5BLL, 0xE90000000000005DLL);
    if ((a1 & 2) == 0)
    {
LABEL_3:
      if ((a1 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((a1 & 2) == 0)
  {
    goto LABEL_3;
  }

  MEMORY[0x1A5907B60](0x655220686769485BLL, 0xEA00000000005D73);
  if ((a1 & 4) == 0)
  {
LABEL_4:
    if ((a1 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  MEMORY[0x1A5907B60](0x6948206F6E61505BLL, 0xEF5D736552206867);
  if ((a1 & 8) == 0)
  {
LABEL_5:
    if ((a1 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  MEMORY[0x1A5907B60](0x6552206C6C75465BLL, 0xEA00000000005D73);
  if ((a1 & 0x10) == 0)
  {
LABEL_6:
    if ((a1 & 0x20) == 0)
    {
      goto LABEL_7;
    }

LABEL_15:
    MEMORY[0x1A5907B60](0x5D6F656469565BLL, 0xE700000000000000);
    if ((a1 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_14:
  MEMORY[0x1A5907B60](0xD000000000000019, 0x80000001A53D4200);
  if ((a1 & 0x20) != 0)
  {
    goto LABEL_15;
  }

LABEL_7:
  if ((a1 & 0x40) != 0)
  {
LABEL_8:
    MEMORY[0x1A5907B60](0x5D6576694C5BLL, 0xE600000000000000);
  }

LABEL_9:

  return 1701736270;
}

char *sub_1A43AD8B4(uint64_t a1, uint64_t a2)
{
  swift_allocObject();
  v4 = sub_1A43B8EF4(a1);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(a2, AssociatedTypeWitness);
  swift_unknownObjectRelease();
  return v4;
}

uint64_t sub_1A43AD95C(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_1A43B8588(a1);
  return v2;
}

double sub_1A43AD99C()
{
  sub_1A3C56708(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v7 - v2;
  v4 = sub_1A524CCB4();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v0;

  sub_1A3D4D930(0, 0, v3, &unk_1A5335818, v5);

  return result;
}

uint64_t sub_1A43ADAE8()
{
  v1 = *(*(v0 + 16) + *(**(v0 + 16) + 104));
  *(v0 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1A43ADB20, v1, 0);
}

uint64_t sub_1A43ADB20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5.n128_f64[0] = sub_1A43ADB80(a1, a2, a3, a4);
  v6 = *(v4 + 8);

  return v6(v5);
}

double sub_1A43ADB80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for OneUpSharePlaySessionHostJournal.Library.AssetEntry(255, *(*v4 + 80), *(*v4 + 88), a4);
  v6 = MEMORY[0x1E69E6158];
  swift_getTupleTypeMetadata2();
  v7 = sub_1A524CAB4();
  v8 = sub_1A3C3DFB4(v7, v6, v5, MEMORY[0x1E69E6168]);

  v9 = *(*v4 + 112);
  swift_beginAccess();
  *(v4 + v9) = v8;

  return result;
}

uint64_t OneUpSharePlaySessionHostJournal.uploadAssetResourcesIfNeeded(_:)(_OWORD *a1)
{
  *(v2 + 96) = v1;
  *(v2 + 104) = *a1;
  return MEMORY[0x1EEE6DFA0](sub_1A43ADC90, 0, 0);
}

uint64_t sub_1A43ADC90()
{
  v1 = *(v0 + 104);
  v2 = *(*(v0 + 96) + *(**(v0 + 96) + 104));
  *(v0 + 120) = v2;
  *(v0 + 16) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1A43ADCD0, v2, 0);
}

uint64_t sub_1A43ADCD0()
{
  *(v0 + 128) = sub_1A43AE500((v0 + 16));

  return MEMORY[0x1EEE6DFA0](sub_1A43ADD40, 0, 0);
}

uint64_t sub_1A43ADD40()
{
  v16 = v0;
  v1 = sub_1A524D264();
  v2 = *sub_1A486DB9C();
  if (os_log_type_enabled(v2, v1))
  {
    v3 = v2;
    v13 = *(v0 + 104);
    v4 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v4 = 136446466;
    KeyPath = swift_getKeyPath();
    v15 = v13;
    OneUpSharePlayOverridableAsset.subscript.getter(KeyPath, v0 + 80);

    sub_1A3C2EF94(*(v0 + 80), *(v0 + 88), &v14);
  }

  v6 = *(v0 + 128);
  if (!v6)
  {
    goto LABEL_10;
  }

  if ((v6 & 0x1F) != 0)
  {
    *(v0 + 32) = *(v0 + 104);
    v7 = swift_task_alloc();
    *(v0 + 136) = v7;
    *v7 = v0;
    v7[1] = sub_1A43AE094;
    v8 = *(v0 + 128);

    return sub_1A43AEB08((v0 + 32), v8);
  }

  if ((v6 & 0x20) != 0)
  {
    *(v0 + 64) = *(v0 + 104);
    v11 = swift_task_alloc();
    *(v0 + 144) = v11;
    *v11 = v0;
    v11[1] = sub_1A43AE29C;

    return sub_1A43B0538((v0 + 64));
  }

  else
  {
    if ((v6 & 0x40) == 0)
    {
LABEL_10:
      v10 = *(v0 + 8);

      return v10();
    }

    *(v0 + 48) = *(v0 + 104);
    v12 = swift_task_alloc();
    *(v0 + 152) = v12;
    *v12 = v0;
    v12[1] = sub_1A43AE40C;

    return sub_1A43B1E70((v0 + 48));
  }
}

uint64_t sub_1A43AE094()
{
  v2 = *v0;
  v1 = *v0;
  v3 = *v0;

  v4 = *(v1 + 16);
  if ((v4 & 0x20) != 0)
  {
    v2[4] = *(v2 + 104);
    v7 = v2 + 4;
    v8 = swift_task_alloc();
    *(v7 + 10) = v8;
    *v8 = v3;
    v8[1] = sub_1A43AE29C;

    return sub_1A43B0538(v7);
  }

  else if ((v4 & 0x40) != 0)
  {
    v2[3] = *(v2 + 104);
    v9 = v2 + 3;
    v10 = swift_task_alloc();
    *(v9 + 13) = v10;
    *v10 = v3;
    v10[1] = sub_1A43AE40C;

    return sub_1A43B1E70(v9);
  }

  else
  {
    v5 = *(v3 + 1);

    return v5();
  }
}

uint64_t sub_1A43AE29C()
{
  v1 = *v0;

  if ((*(v1 + 128) & 0x40) != 0)
  {
    *(v1 + 48) = *(v1 + 104);
    v4 = swift_task_alloc();
    *(v1 + 152) = v4;
    *v4 = v1;
    v4[1] = sub_1A43AE40C;

    return sub_1A43B1E70((v1 + 48));
  }

  else
  {
    v2 = *(v1 + 8);

    return v2();
  }
}

uint64_t sub_1A43AE40C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_1A43AE500(uint64_t *a1)
{
  v2 = v1;
  v4 = *(*v2 + 88);
  v5 = *(*v2 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v56 = *(AssociatedTypeWitness - 8);
  v57 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v55 = &v52 - v7;
  v58 = v5;
  v59 = v4;
  v9 = type metadata accessor for OneUpSharePlaySessionHostJournal.Library.AssetEntry(255, v5, v4, v8);
  v54 = sub_1A524DF24();
  v53 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v52 - v13;
  v15 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v60 = &v52 - v17;
  v19 = a1[1];
  v64 = *a1;
  v18 = v64;
  v65 = v19;
  v61 = sub_1A43B8D30(&v64);
  KeyPath = swift_getKeyPath();
  v68 = v18;
  v69 = v19;
  OneUpSharePlayOverridableAsset.subscript.getter(KeyPath, &v72);

  v22 = v72;
  v21 = v73;
  v23 = *(*v2 + 112);
  swift_beginAccess();
  v62 = v23;
  v70 = v22;
  v71 = v21;
  sub_1A524C484();

  v63 = v15;
  v24 = *(v15 + 48);
  if (v24(v14, 1, v9) == 1)
  {
    (*(v53 + 8))(v14, v54);
    swift_endAccess();
    v25 = swift_getKeyPath();
    v68 = v18;
    v69 = v19;
    OneUpSharePlayOverridableAsset.subscript.getter(v25, &v72);

    v26 = v72;
    v27 = v73;
    v28 = swift_getKeyPath();
    v64 = v18;
    v65 = v19;
    OneUpSharePlayOverridableAsset.subscript.getter(v28, &v70);

    v29 = v70;
    v30 = v71;
    v32 = v56;
    v31 = v57;
    v33 = v55;
    (*(v56 + 16))(v55, v2 + *(*v2 + 104), v57);
    v34 = MEMORY[0x1E69E7CC0];
    *(v11 + 1) = v30;
    *(v11 + 2) = v34;
    *v11 = v29;
    v36 = type metadata accessor for OneUpSharePlaySessionHostJournal.Library.AssetEntry(0, v58, v59, v35);
    (*(v32 + 32))(&v11[*(v36 + 40)], v33, v31);
    v37 = v61;
    *&v11[*(v36 + 44)] = v61;
    (*(v63 + 56))(v11, 0, 1, v9);
    v70 = v26;
    v71 = v27;
    swift_beginAccess();
    sub_1A524C454();
    sub_1A524C494();
    swift_endAccess();
    return v37;
  }

  else
  {
    v39 = v63;
    v40 = v60;
    (*(v63 + 32))(v60, v14, v9);
    swift_endAccess();
    v41 = *&v40[*(v9 + 44)];
    if ((v41 & 0x10) != 0)
    {
      v42 = v61 & ~v41 & 0xFFFFFFFFFFFFFFF7;
    }

    else
    {
      v42 = v61 & ~v41;
    }

    v43 = swift_getKeyPath();
    v72 = v18;
    v73 = v19;
    OneUpSharePlayOverridableAsset.subscript.getter(v43, &v70);

    v44 = v70;
    v45 = v71;
    swift_beginAccess();
    v66 = v44;
    v67 = v45;
    sub_1A524C454();
    v46 = sub_1A524C474();
    v48 = v47;
    if (v24(v47, 1, v9))
    {
      v46(&v64, 0);

      swift_endAccess();
      (*(v39 + 8))(v60, v9);
    }

    else
    {
      v49 = v60;
      v50 = *(v9 + 44);
      v51 = *(v48 + v50);
      if ((v42 & ~v51) != 0)
      {
        *(v48 + v50) = v51 | v42;
      }

      v46(&v64, 0);
      swift_endAccess();

      (*(v39 + 8))(v49, v9);
    }

    return v42;
  }
}

uint64_t sub_1A43AEB08(_OWORD *a1, uint64_t a2)
{
  *(v3 + 192) = a2;
  *(v3 + 200) = v2;
  *(v3 + 208) = *a1;
  return MEMORY[0x1EEE6DFA0](sub_1A43AEB30, 0, 0);
}

id sub_1A43AEB30()
{
  v70 = v0;
  v1 = *(v0 + 192);
  if (v1)
  {
    v19 = *(v0 + 208);
    v18 = *(v0 + 216);
    KeyPath = swift_getKeyPath();
    v67 = v19;
    v68 = v18;
    OneUpSharePlayOverridableAsset.subscript.getter(KeyPath, v0 + 176);

    v21 = *(v0 + 176);
    v22 = swift_getKeyPath();
    *&v69 = v19;
    *(&v69 + 1) = v18;
    OneUpSharePlayOverridableAsset.subscript.getter(v22, v0 + 184);

    v23 = v21;
    v24 = *(v0 + 184);
    if (v21 >= 2612)
    {
      v25 = 2611.0 / v23;
      v23 = 2611.0 / v23 * v23;
      v24 = v25 * v24;
    }

    if (v24 > 1469.0)
    {
      v23 = v23 * (1469.0 / v24);
      v24 = v24 * (1469.0 / v24);
    }

    v26 = sub_1A524D264();
    v27 = *sub_1A486DB9C();
    if (os_log_type_enabled(v27, v26))
    {
      v28 = v27;
      v65 = *(v0 + 208);
      v29 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      *v29 = 136446210;
      v30 = swift_getKeyPath();
      v69 = v65;
      OneUpSharePlayOverridableAsset.subscript.getter(v30, v0 + 112);

      sub_1A3C2EF94(*(v0 + 112), *(v0 + 120), &v67);
    }

    *(v0 + 96) = *(v0 + 208);
    v31 = swift_task_alloc();
    *(v0 + 224) = v31;
    *v31 = v0;
    v31[1] = sub_1A43AF3C0;
    v14 = (v0 + 96);
    v15 = v23 * 0.05;
    v16 = v24 * 0.05;
    v17 = 1;
    goto LABEL_45;
  }

  if ((v1 & 2) != 0)
  {
    v33 = *(v0 + 208);
    v32 = *(v0 + 216);
    v34 = swift_getKeyPath();
    v67 = v33;
    v68 = v32;
    OneUpSharePlayOverridableAsset.subscript.getter(v34, v0 + 160);

    v35 = *(v0 + 160);
    v36 = swift_getKeyPath();
    *&v69 = v33;
    *(&v69 + 1) = v32;
    OneUpSharePlayOverridableAsset.subscript.getter(v36, v0 + 168);

    v37 = v35;
    v38 = *(v0 + 168);
    if (v35 >= 2612)
    {
      v39 = 2611.0 / v37;
      v37 = 2611.0 / v37 * v37;
      v38 = v39 * v38;
    }

    if (v38 > 1469.0)
    {
      v37 = v37 * (1469.0 / v38);
      v38 = v38 * (1469.0 / v38);
    }

    v40 = sub_1A524D264();
    v41 = *sub_1A486DB9C();
    if (os_log_type_enabled(v41, v40))
    {
      v42 = v41;
      v66 = *(v0 + 208);
      v43 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      *v43 = 136446210;
      v44 = swift_getKeyPath();
      v69 = v66;
      OneUpSharePlayOverridableAsset.subscript.getter(v44, v0 + 80);

      sub_1A3C2EF94(*(v0 + 80), *(v0 + 88), &v67);
    }

    *(v0 + 64) = *(v0 + 208);
    v45 = swift_task_alloc();
    *(v0 + 232) = v45;
    *v45 = v0;
    v45[1] = sub_1A43AFB2C;
    v14 = (v0 + 64);
    v15 = v37;
    v16 = v38;
    v17 = 2;
    goto LABEL_45;
  }

  if ((v1 & 4) != 0)
  {
    v47 = *(v0 + 208);
    v46 = *(v0 + 216);
    v48 = swift_getKeyPath();
    v67 = v47;
    v68 = v46;
    OneUpSharePlayOverridableAsset.subscript.getter(v48, v0 + 144);

    v49 = *(v0 + 144);
    v50 = swift_getKeyPath();
    *&v69 = v47;
    *(&v69 + 1) = v46;
    OneUpSharePlayOverridableAsset.subscript.getter(v50, v0 + 152);

    v51 = *(v0 + 152);
    result = MTLCreateSystemDefaultDevice();
    if (!result)
    {
      __break(1u);
      return result;
    }

    v53 = result;
    v54 = v49;
    v55 = v51;
    if ([result supportsFamily_])
    {
      swift_unknownObjectRelease();
      if (v49 > 0x4000)
      {
        v56 = 16384.0;
        goto LABEL_36;
      }

      if (v51 > 0x4000)
      {
        v59 = 0x40D0000000000000;
LABEL_42:
        v60 = *&v59;
LABEL_43:
        v62 = v60 / v55;
        v54 = v54 * v62;
        v55 = v55 * v62;
        goto LABEL_44;
      }

      goto LABEL_44;
    }

    v57 = [v53 supportsFamily_];
    swift_unknownObjectRelease();
    if (v57)
    {
      if (v49 <= 0x2000)
      {
        if (v51 > 0x2000)
        {
          v59 = 0x40C0000000000000;
          goto LABEL_42;
        }

LABEL_44:
        *(v0 + 48) = *(v0 + 208);
        v63 = swift_task_alloc();
        *(v0 + 240) = v63;
        *v63 = v0;
        v63[1] = sub_1A43B0088;
        v14 = (v0 + 48);
        v15 = v54;
        v16 = v55;
        v17 = 4;
LABEL_45:

        return sub_1A43B3F14(v14, v17, v15, v16);
      }

      v56 = 8192.0;
    }

    else
    {
      if (v49 <= 4096)
      {
        if (v51 > 4096)
        {
          v59 = 0x40B0000000000000;
          goto LABEL_42;
        }

        goto LABEL_44;
      }

      v56 = 4096.0;
    }

LABEL_36:
    v60 = v56;
    v61 = v56 / v54;
    v54 = v56 / v54 * v54;
    v55 = v61 * v55;
    if (v56 >= v55)
    {
      goto LABEL_44;
    }

    goto LABEL_43;
  }

  v2 = *(v0 + 192) & 0x18;
  if ((v1 & 0x18) != 0)
  {
    v4 = *(v0 + 208);
    v3 = *(v0 + 216);
    v5 = swift_getKeyPath();
    v67 = v4;
    v68 = v3;
    OneUpSharePlayOverridableAsset.subscript.getter(v5, v0 + 128);

    v6 = *(v0 + 128);
    v7 = swift_getKeyPath();
    *&v69 = v4;
    *(&v69 + 1) = v3;
    OneUpSharePlayOverridableAsset.subscript.getter(v7, v0 + 136);

    v8 = *(v0 + 136);
    LOBYTE(v3) = sub_1A524D264();
    v9 = *sub_1A486DB9C();
    if (os_log_type_enabled(v9, v3))
    {
      v10 = v9;
      v64 = *(v0 + 208);
      v11 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      *v11 = 136446466;
      v12 = swift_getKeyPath();
      v69 = v64;
      OneUpSharePlayOverridableAsset.subscript.getter(v12, v0 + 32);

      sub_1A3C2EF94(*(v0 + 32), *(v0 + 40), &v67);
    }

    *(v0 + 16) = *(v0 + 208);
    v13 = swift_task_alloc();
    *(v0 + 248) = v13;
    *v13 = v0;
    v13[1] = sub_1A43B0444;
    v14 = (v0 + 16);
    v15 = v6;
    v16 = v8;
    v17 = v2;
    goto LABEL_45;
  }

  v58 = *(v0 + 8);

  return v58();
}

uint64_t sub_1A43AF3C0()
{

  return MEMORY[0x1EEE6DFA0](sub_1A43AF4BC, 0, 0);
}

id sub_1A43AF4BC()
{
  v55 = v0;
  v1 = *(v0 + 192);
  if ((v1 & 2) != 0)
  {
    v19 = *(v0 + 208);
    v18 = *(v0 + 216);
    KeyPath = swift_getKeyPath();
    v52 = v19;
    v53 = v18;
    OneUpSharePlayOverridableAsset.subscript.getter(KeyPath, v0 + 160);

    v21 = *(v0 + 160);
    v22 = swift_getKeyPath();
    *&v54 = v19;
    *(&v54 + 1) = v18;
    OneUpSharePlayOverridableAsset.subscript.getter(v22, v0 + 168);

    v23 = v21;
    v24 = *(v0 + 168);
    if (v21 >= 2612)
    {
      v25 = 2611.0 / v23;
      v23 = 2611.0 / v23 * v23;
      v24 = v25 * v24;
    }

    if (v24 > 1469.0)
    {
      v23 = v23 * (1469.0 / v24);
      v24 = v24 * (1469.0 / v24);
    }

    v26 = sub_1A524D264();
    v27 = *sub_1A486DB9C();
    if (os_log_type_enabled(v27, v26))
    {
      v28 = v27;
      v51 = *(v0 + 208);
      v29 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      *v29 = 136446210;
      v30 = swift_getKeyPath();
      v54 = v51;
      OneUpSharePlayOverridableAsset.subscript.getter(v30, v0 + 80);

      sub_1A3C2EF94(*(v0 + 80), *(v0 + 88), &v52);
    }

    *(v0 + 64) = *(v0 + 208);
    v31 = swift_task_alloc();
    *(v0 + 232) = v31;
    *v31 = v0;
    v31[1] = sub_1A43AFB2C;
    v14 = (v0 + 64);
    v15 = v23;
    v16 = v24;
    v17 = 2;
    goto LABEL_37;
  }

  if ((v1 & 4) != 0)
  {
    v33 = *(v0 + 208);
    v32 = *(v0 + 216);
    v34 = swift_getKeyPath();
    v52 = v33;
    v53 = v32;
    OneUpSharePlayOverridableAsset.subscript.getter(v34, v0 + 144);

    v35 = *(v0 + 144);
    v36 = swift_getKeyPath();
    *&v54 = v33;
    *(&v54 + 1) = v32;
    OneUpSharePlayOverridableAsset.subscript.getter(v36, v0 + 152);

    v37 = *(v0 + 152);
    result = MTLCreateSystemDefaultDevice();
    if (!result)
    {
      __break(1u);
      return result;
    }

    v39 = result;
    v40 = v35;
    v41 = v37;
    if ([result supportsFamily_])
    {
      swift_unknownObjectRelease();
      if (v35 > 0x4000)
      {
        v42 = 16384.0;
        goto LABEL_28;
      }

      if (v37 > 0x4000)
      {
        v45 = 0x40D0000000000000;
LABEL_34:
        v46 = *&v45;
LABEL_35:
        v48 = v46 / v41;
        v40 = v40 * v48;
        v41 = v41 * v48;
        goto LABEL_36;
      }

      goto LABEL_36;
    }

    v43 = [v39 supportsFamily_];
    swift_unknownObjectRelease();
    if (v43)
    {
      if (v35 <= 0x2000)
      {
        if (v37 > 0x2000)
        {
          v45 = 0x40C0000000000000;
          goto LABEL_34;
        }

LABEL_36:
        *(v0 + 48) = *(v0 + 208);
        v49 = swift_task_alloc();
        *(v0 + 240) = v49;
        *v49 = v0;
        v49[1] = sub_1A43B0088;
        v14 = (v0 + 48);
        v15 = v40;
        v16 = v41;
        v17 = 4;
LABEL_37:

        return sub_1A43B3F14(v14, v17, v15, v16);
      }

      v42 = 8192.0;
    }

    else
    {
      if (v35 <= 4096)
      {
        if (v37 > 4096)
        {
          v45 = 0x40B0000000000000;
          goto LABEL_34;
        }

        goto LABEL_36;
      }

      v42 = 4096.0;
    }

LABEL_28:
    v46 = v42;
    v47 = v42 / v40;
    v40 = v42 / v40 * v40;
    v41 = v47 * v41;
    if (v42 >= v41)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

  v2 = *(v0 + 192) & 0x18;
  if ((v1 & 0x18) != 0)
  {
    v4 = *(v0 + 208);
    v3 = *(v0 + 216);
    v5 = swift_getKeyPath();
    v52 = v4;
    v53 = v3;
    OneUpSharePlayOverridableAsset.subscript.getter(v5, v0 + 128);

    v6 = *(v0 + 128);
    v7 = swift_getKeyPath();
    *&v54 = v4;
    *(&v54 + 1) = v3;
    OneUpSharePlayOverridableAsset.subscript.getter(v7, v0 + 136);

    v8 = *(v0 + 136);
    LOBYTE(v3) = sub_1A524D264();
    v9 = *sub_1A486DB9C();
    if (os_log_type_enabled(v9, v3))
    {
      v10 = v9;
      v50 = *(v0 + 208);
      v11 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      *v11 = 136446466;
      v12 = swift_getKeyPath();
      v54 = v50;
      OneUpSharePlayOverridableAsset.subscript.getter(v12, v0 + 32);

      sub_1A3C2EF94(*(v0 + 32), *(v0 + 40), &v52);
    }

    *(v0 + 16) = *(v0 + 208);
    v13 = swift_task_alloc();
    *(v0 + 248) = v13;
    *v13 = v0;
    v13[1] = sub_1A43B0444;
    v14 = (v0 + 16);
    v15 = v6;
    v16 = v8;
    v17 = v2;
    goto LABEL_37;
  }

  v44 = *(v0 + 8);

  return v44();
}

uint64_t sub_1A43AFB2C()
{

  return MEMORY[0x1EEE6DFA0](sub_1A43AFC28, 0, 0);
}

id sub_1A43AFC28()
{
  v40 = v0;
  v1 = *(v0 + 192);
  if ((v1 & 4) != 0)
  {
    v19 = *(v0 + 208);
    v18 = *(v0 + 216);
    KeyPath = swift_getKeyPath();
    v37 = v19;
    v38 = v18;
    OneUpSharePlayOverridableAsset.subscript.getter(KeyPath, v0 + 144);

    v21 = *(v0 + 144);
    v22 = swift_getKeyPath();
    *&v39 = v19;
    *(&v39 + 1) = v18;
    OneUpSharePlayOverridableAsset.subscript.getter(v22, v0 + 152);

    v23 = *(v0 + 152);
    result = MTLCreateSystemDefaultDevice();
    if (!result)
    {
      __break(1u);
      return result;
    }

    v25 = result;
    v26 = v21;
    v27 = v23;
    if ([result supportsFamily_])
    {
      swift_unknownObjectRelease();
      if (v21 > 0x4000)
      {
        v28 = 16384.0;
        goto LABEL_20;
      }

      if (v23 > 0x4000)
      {
        v31 = 0x40D0000000000000;
LABEL_26:
        v32 = *&v31;
LABEL_27:
        v34 = v32 / v27;
        v26 = v26 * v34;
        v27 = v27 * v34;
        goto LABEL_28;
      }

      goto LABEL_28;
    }

    v29 = [v25 supportsFamily_];
    swift_unknownObjectRelease();
    if (v29)
    {
      if (v21 <= 0x2000)
      {
        if (v23 > 0x2000)
        {
          v31 = 0x40C0000000000000;
          goto LABEL_26;
        }

LABEL_28:
        *(v0 + 48) = *(v0 + 208);
        v35 = swift_task_alloc();
        *(v0 + 240) = v35;
        *v35 = v0;
        v35[1] = sub_1A43B0088;
        v14 = (v0 + 48);
        v15 = v26;
        v16 = v27;
        v17 = 4;
LABEL_29:

        return sub_1A43B3F14(v14, v17, v15, v16);
      }

      v28 = 8192.0;
    }

    else
    {
      if (v21 <= 4096)
      {
        if (v23 > 4096)
        {
          v31 = 0x40B0000000000000;
          goto LABEL_26;
        }

        goto LABEL_28;
      }

      v28 = 4096.0;
    }

LABEL_20:
    v32 = v28;
    v33 = v28 / v26;
    v26 = v28 / v26 * v26;
    v27 = v33 * v27;
    if (v28 >= v27)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  v2 = *(v0 + 192) & 0x18;
  if ((v1 & 0x18) != 0)
  {
    v4 = *(v0 + 208);
    v3 = *(v0 + 216);
    v5 = swift_getKeyPath();
    v37 = v4;
    v38 = v3;
    OneUpSharePlayOverridableAsset.subscript.getter(v5, v0 + 128);

    v6 = *(v0 + 128);
    v7 = swift_getKeyPath();
    *&v39 = v4;
    *(&v39 + 1) = v3;
    OneUpSharePlayOverridableAsset.subscript.getter(v7, v0 + 136);

    v8 = *(v0 + 136);
    LOBYTE(v3) = sub_1A524D264();
    v9 = *sub_1A486DB9C();
    if (os_log_type_enabled(v9, v3))
    {
      v10 = v9;
      v36 = *(v0 + 208);
      v11 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *v11 = 136446466;
      v12 = swift_getKeyPath();
      v39 = v36;
      OneUpSharePlayOverridableAsset.subscript.getter(v12, v0 + 32);

      sub_1A3C2EF94(*(v0 + 32), *(v0 + 40), &v37);
    }

    *(v0 + 16) = *(v0 + 208);
    v13 = swift_task_alloc();
    *(v0 + 248) = v13;
    *v13 = v0;
    v13[1] = sub_1A43B0444;
    v14 = (v0 + 16);
    v15 = v6;
    v16 = v8;
    v17 = v2;
    goto LABEL_29;
  }

  v30 = *(v0 + 8);

  return v30();
}