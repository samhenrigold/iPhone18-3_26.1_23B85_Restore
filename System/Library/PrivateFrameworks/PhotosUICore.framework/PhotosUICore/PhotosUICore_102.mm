uint64_t static RenamePersonIntent.parameterSummary.getter()
{
  sub_1A4954D1C(0, &qword_1EB145A70, sub_1A49532C0, &type metadata for RenamePersonIntent, MEMORY[0x1E695A4A8]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1A4954D1C(0, &qword_1EB145A80, sub_1A49532C0, &type metadata for RenamePersonIntent, MEMORY[0x1E695A4A0]);
  MEMORY[0x1EEE9AC00](v1);
  sub_1A49532C0();
  sub_1A5240314();
  sub_1A5240304();
  swift_getKeyPath();
  sub_1A495335C(0, &qword_1EB145A88, &qword_1EB12FDB8, sub_1A3FC0108, &type metadata for PersonEntity);
  sub_1A52402F4();

  sub_1A5240304();
  swift_getKeyPath();
  sub_1A495335C(0, &qword_1EB145A90, &qword_1EB138CE0, sub_1A3DEB710, MEMORY[0x1E69E6158]);
  sub_1A52402F4();

  sub_1A5240304();
  sub_1A5240324();
  return sub_1A52402E4();
}

unint64_t sub_1A49532C0()
{
  result = qword_1EB145A78;
  if (!qword_1EB145A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB145A78);
  }

  return result;
}

void sub_1A495335C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    sub_1A4954D1C(255, a3, a4, a5, MEMORY[0x1E695A1A0]);
    v6 = sub_1A524ED44();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t RenamePersonIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v54 = a1;
  sub_1A45D6CA0(0, &qword_1EB12C828, MEMORY[0x1E695A7D8]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v50 = &v35 - v2;
  v53 = sub_1A5240334();
  v56 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v49 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A45D6CA0(0, &qword_1EB1260E8, MEMORY[0x1E6959F70]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v48 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v52 = &v35 - v7;
  sub_1A45D6CA0(0, &qword_1EB12B008, MEMORY[0x1E6968E10]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v51 = &v35 - v9;
  v10 = sub_1A5240BA4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1A5241284();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v15 = sub_1A524C624();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v16 = sub_1A5240BB4();
  v45 = v16;
  v55 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v35 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = MEMORY[0x1E695A1A0];
  sub_1A4954D1C(0, &qword_1EB12FDB8, sub_1A3FC0108, &type metadata for PersonEntity, MEMORY[0x1E695A1A0]);
  v40 = v18;
  sub_1A524C5B4();
  sub_1A5241244();
  v19 = *MEMORY[0x1E6968DF0];
  v20 = *(v11 + 104);
  v36 = v10;
  v20(v13, v19, v10);
  v38 = v20;
  v37 = v11 + 104;
  sub_1A5240BC4();
  sub_1A524C5B4();
  sub_1A5241244();
  v20(v13, v19, v10);
  v21 = v51;
  sub_1A5240BC4();
  v22 = *(v55 + 56);
  v55 += 56;
  v46 = v22;
  v22(v21, 0, 1, v16);
  v23 = sub_1A523FDB4();
  v39 = v23;
  v58 = 0;
  v59 = 0;
  v57 = 0;
  v24 = *(v23 - 8);
  v25 = *(v24 + 56);
  v43 = v25;
  v44 = v24 + 56;
  v25(v52, 1, 1, v23);
  v25(v48, 1, 1, v23);
  v41 = *MEMORY[0x1E695A500];
  v26 = *(v56 + 104);
  v56 += 104;
  v42 = v26;
  v27 = v49;
  v26(v49);
  sub_1A3FC19D8();
  v28 = v27;
  *v54 = sub_1A523FFB4();
  sub_1A4954D1C(0, &qword_1EB138CE0, sub_1A3DEB710, MEMORY[0x1E69E6158], v47);
  v48 = v29;
  sub_1A524C5B4();
  sub_1A5241244();
  v30 = v36;
  v31 = v38;
  v38(v13, v19, v36);
  sub_1A5240BC4();
  sub_1A524C5B4();
  sub_1A5241244();
  v31(v13, v19, v30);
  v32 = v51;
  sub_1A5240BC4();
  v46(v32, 0, 1, v45);
  v33 = sub_1A524C5A4();
  v57 = 0;
  v58 = 0;
  (*(*(v33 - 8) + 56))(v50, 1, 1, v33);
  v43(v52, 1, 1, v39);
  v42(v28, v41, v53);
  result = sub_1A5240004();
  v54[1] = result;
  return result;
}

uint64_t RenamePersonIntent.perform()(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = *v1;
  sub_1A524CC54();
  *(v2 + 56) = sub_1A524CC44();
  v4 = sub_1A524CBC4();
  *(v2 + 64) = v4;
  *(v2 + 72) = v3;

  return MEMORY[0x1EEE6DFA0](sub_1A4953CA4, v4, v3);
}

uint64_t sub_1A4953CA4()
{
  v2 = v0[5];
  v1 = v0[6];
  v0[2] = v2;
  v0[3] = v1;
  v3 = swift_task_alloc();
  v0[10] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[11] = v4;
  sub_1A49532C0();
  *v4 = v0;
  v4[1] = sub_1A47D2970;
  v5 = v0[4];

  return AppIntent.px_performWithLoggingAndAnalytics(intentName:category:count:_:)(v5, 0, 0, 0, 0, 0, 1, &unk_1A53761E0);
}

uint64_t sub_1A4953DB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a2;
  v3[14] = a3;
  v3[12] = a1;
  sub_1A524CC54();
  v3[15] = sub_1A524CC44();
  v5 = sub_1A524CBC4();
  v3[16] = v5;
  v3[17] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1A4953E4C, v5, v4);
}

uint64_t sub_1A4953E4C()
{
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  sub_1A523FF44();
  v3 = *(v0 + 64);
  v4 = *(v0 + 72);
  *(v0 + 144) = v4;
  sub_1A523FF44();
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 56) = *(v0 + 32);
  *(v0 + 80) = v2;
  *(v0 + 88) = v1;
  sub_1A49532C0();
  v5 = AppIntent.px_intentName.getter(&type metadata for RenamePersonIntent);
  v7 = v6;
  *(v0 + 152) = v6;
  v8 = swift_task_alloc();
  *(v0 + 160) = v8;
  *v8 = v0;
  v8[1] = sub_1A4953F78;

  return sub_1A49547D8(v3, v4, (v0 + 40), v5, v7);
}

uint64_t sub_1A4953F78()
{
  v2 = *v1;
  *(v2 + 168) = v0;

  v3 = *(v2 + 128);
  v4 = *(v2 + 136);
  if (v0)
  {
    v5 = sub_1A4954190;
  }

  else
  {
    v5 = sub_1A4954120;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1A4954120()
{

  sub_1A523FDD4();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A4954190()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A49541F4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1A3CA8098;

  return sub_1A4953DB0(a1, v5, v4);
}

uint64_t sub_1A49542F8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1A3D60150;

  return sub_1A49547D8(a1, a2, a3, a4, a5);
}

double sub_1A49543D0@<D0>(uint64_t a1@<X8>)
{
  sub_1A523FF44();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

double sub_1A4954414(id *a1)
{
  v1 = *a1;

  sub_1A523FF54();

  return result;
}

void (*RenamePersonIntent.person.modify(uint64_t *a1))(void *a1)
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
  return sub_1A3F5CD2C;
}

void (*RenamePersonIntent.name.modify(uint64_t *a1))(void *a1)
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
  return sub_1A3DB6E78;
}

uint64_t sub_1A49545F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 40) = a2;
  *(v4 + 48) = a3;
  *(v4 + 32) = a1;
  *(v4 + 56) = *v3;
  sub_1A524CC54();
  *(v4 + 72) = sub_1A524CC44();
  v6 = sub_1A524CBC4();
  *(v4 + 80) = v6;
  *(v4 + 88) = v5;

  return MEMORY[0x1EEE6DFA0](sub_1A4954698, v6, v5);
}

uint64_t sub_1A4954698()
{
  v2 = v0[7];
  v1 = v0[8];
  v0[2] = v2;
  v0[3] = v1;
  v3 = swift_task_alloc();
  v0[12] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[13] = v4;
  *v4 = v0;
  v4[1] = sub_1A47D341C;
  v5 = v0[4];

  return AppIntent.px_performWithLoggingAndAnalytics(intentName:category:count:_:)(v5, 0, 0, 0, 0, 0, 1, &unk_1A5376328);
}

uint64_t sub_1A495479C(uint64_t a1)
{
  v2 = sub_1A49532C0();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

uint64_t sub_1A49547D8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[2] = a1;
  v5[3] = a2;
  v7 = sub_1A5246F24();
  v5[6] = v7;
  v5[7] = *(v7 - 8);
  v8 = swift_task_alloc();
  v9 = *a3;
  v5[8] = v8;
  v5[9] = v9;
  sub_1A524CC54();
  v5[10] = sub_1A524CC44();
  v11 = sub_1A524CBC4();
  v5[11] = v11;
  v5[12] = v10;

  return MEMORY[0x1EEE6DFA0](sub_1A49548D8, v11, v10);
}

void sub_1A49548D8()
{
  v8 = v0;
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[6];
  v4 = v0[7];
  sub_1A3C4D548(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1A52F9790;
  *(v5 + 32) = v2;
  v6 = v2;
  PXAppIntentsDebugDescription(for:)(v5);

  v7 = sub_1A3CB648C();
  (*(v4 + 16))(v1, v7, v3);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

unint64_t sub_1A4954BB4()
{
  result = qword_1EB145A98;
  if (!qword_1EB145A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB145A98);
  }

  return result;
}

unint64_t sub_1A4954C0C()
{
  result = qword_1EB145AA0;
  if (!qword_1EB145AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB145AA0);
  }

  return result;
}

unint64_t sub_1A4954C8C()
{
  result = qword_1EB145AA8;
  if (!qword_1EB145AA8)
  {
    sub_1A4954D1C(255, &qword_1EB145AB0, sub_1A49532C0, &type metadata for RenamePersonIntent, MEMORY[0x1E695A488]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB145AA8);
  }

  return result;
}

void sub_1A4954D1C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_1A4954D84(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1A3D60150;

  return sub_1A4953DB0(a1, v5, v4);
}

id sub_1A4954E30(void *a1, char a2)
{
  if (a2)
  {
    v3 = [a1 objectAtIndexedSubscript_];

    return v3;
  }

  else
  {

    return a1;
  }
}

uint64_t sub_1A4954E7C(uint64_t a1, char a2)
{
  if (a2)
  {
    return 0x746F6850796E614DLL;
  }

  else
  {
    return 0x6F746F6850656E4FLL;
  }
}

uint64_t View.tapToRadar(workflow:completion:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v32 = a5;
  v30 = a6;
  v31 = a4;
  v28 = a2;
  v29 = a3;
  sub_1A3EE53E0(0);
  v27[1] = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v27 - v11;
  v13 = type metadata accessor for TTRWorkflowSheetPresentation(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = (v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *a1;
  v17 = a1[1];
  v18 = a1[2];
  v19 = a1[3];
  v20 = a1[4];
  *v15 = v16;
  v15[1] = v17;
  v15[2] = v18;
  v15[3] = v19;
  v15[4] = v20;
  v21 = sub_1A5240E64();
  (*(*(v21 - 8) + 56))(v12, 1, 1, v21);
  sub_1A49579D4(v12, v9, sub_1A3EE53E0);

  sub_1A40C7F38(v18, v19, v20);
  sub_1A524B694();
  sub_1A3C68A60(v12, sub_1A3EE53E0);
  v22 = (v15 + *(v13 + 24));
  v23 = v28;
  v24 = v29;
  *v22 = v28;
  v22[1] = v24;
  v25 = sub_1A3C66EE8(v23, v24);
  MEMORY[0x1A5906490](v15, v31, v13, v32, v25);
  return sub_1A3C68A60(v15, type metadata accessor for TTRWorkflowSheetPresentation);
}

uint64_t sub_1A495510C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a1;
  v38 = a2;
  v3 = type metadata accessor for TTRWorkflowSheetPresentation(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v32 = v5;
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4957854(0);
  v8 = *(v7 - 8);
  v36 = v7;
  v37 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v39 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v2 + 8);
  v11 = *(v2 + 32);
  *&v47 = *v2;
  *(&v47 + 1) = v10;
  v48 = *(v2 + 16);
  v49 = v11;
  sub_1A3C4D38C(0, &qword_1EB1214F0, sub_1A49572A4, MEMORY[0x1E6981948]);
  v33 = v12;
  MEMORY[0x1A5906C60](&v44);
  v47 = v44;
  *&v48 = v45;
  v34 = type metadata accessor for TTRWorkflowSheetPresentation;
  sub_1A49579D4(v2, v6, type metadata accessor for TTRWorkflowSheetPresentation);
  v13 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v14 = swift_allocObject();
  v31 = type metadata accessor for TTRWorkflowSheetPresentation;
  sub_1A4957A3C(v6, v14 + v13, type metadata accessor for TTRWorkflowSheetPresentation);
  sub_1A4957928(0);
  v16 = v15;
  sub_1A49572A4();
  v18 = v17;
  v19 = sub_1A495798C(&qword_1EB122258, sub_1A4957928, MEMORY[0x1E697FDF8]);
  v20 = sub_1A4957444();
  sub_1A524B144();

  sub_1A3DAECB8(v47, *(&v47 + 1), v48);
  v21 = *(v2 + 8);
  v22 = *(v2 + 32);
  *&v44 = *v2;
  *(&v44 + 1) = v21;
  v45 = *(v2 + 16);
  v46 = v22;
  sub_1A524B924();
  v44 = v47;
  v45 = v48;
  v46 = v49;
  sub_1A49579D4(v2, v6, v34);
  v23 = swift_allocObject();
  sub_1A4957A3C(v6, v23 + v13, v31);
  sub_1A4957D6C(0);
  v40 = v16;
  v41 = v18;
  v42 = v19;
  v43 = v20;
  swift_getOpaqueTypeConformance2();
  sub_1A4957EB4();
  sub_1A4957F08();
  v24 = v39;
  v25 = v36;
  sub_1A524B004();

  v26 = v45;
  v27 = v46;

  v28 = sub_1A3DAECB8(v26, *(&v26 + 1), v27);
  return (*(v37 + 8))(v24, v25, v28);
}

void sub_1A4955548(uint64_t a1, uint64_t a2)
{
  sub_1A3EE53E0(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - v8;
  if (*(a1 + 8))
  {
    v10 = 1;
  }

  else
  {
    v10 = *(a2 + 8) == 0;
  }

  if (!v10)
  {
    v11 = [objc_opt_self() captureScreenshot];
    if (v11)
    {
      v12 = v11;
      sub_1A5240DE4();

      v13 = sub_1A5240E64();
      (*(*(v13 - 8) + 56))(v9, 0, 1, v13);
    }

    else
    {
      v14 = sub_1A5240E64();
      (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
    }

    type metadata accessor for TTRWorkflowSheetPresentation(0);
    sub_1A49579D4(v9, v6, sub_1A3EE53E0);
    sub_1A3C4D38C(0, &qword_1EB121CA0, sub_1A3EE53E0, MEMORY[0x1E6981790]);
    sub_1A524B6B4();
    sub_1A3C68A60(v9, sub_1A3EE53E0);
  }
}

void sub_1A4955730(uint64_t *a1, uint64_t a2)
{
  v5 = type metadata accessor for TTRWorkflowSheetPresentation(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = *a1;
  sub_1A49579D4(a2, v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TTRWorkflowSheetPresentation);
  v9 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v10 = swift_allocObject();
  sub_1A4957A3C(v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for TTRWorkflowSheetPresentation);
  v11[1] = v8;
  v12 = *(a1 + 1);
  sub_1A49D6330(sub_1A4957FC8, v10);
}

double sub_1A49558FC@<D0>(uint64_t *a1@<X8>)
{
  swift_getKeyPath();
  (*(*v1 + 208))();

  swift_beginAccess();
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  sub_1A40C7F38(v3, v4, v5);
  return result;
}

double sub_1A4955990@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(**a1 + 128))(&v5);
  v3 = v6;
  result = *&v5;
  *a2 = v5;
  *(a2 + 16) = v3;
  return result;
}

uint64_t sub_1A49559F4(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a2;
  v7[0] = *a1;
  v7[1] = v2;
  v7[2] = v3;
  v5 = *(*v4 + 136);
  sub_1A40C7F38(v7[0], v2, v3);
  return v5(v7);
}

double sub_1A4955A68(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  swift_beginAccess();
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  sub_1A40C7F38(v5, v6, v7);
  v8 = sub_1A4956E28(v5, v6, v7, v2, v3, v4);
  sub_1A3DAECB8(v5, v6, v7);
  if (v8)
  {
    KeyPath = swift_getKeyPath();
    v10 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 216))(v10);
    sub_1A3DAECB8(v2, v3, v4);
  }

  else
  {
    v12 = v1[2];
    v13 = v1[3];
    v14 = v1[4];
    v1[2] = v2;
    v1[3] = v3;
    v1[4] = v4;
    return sub_1A3DAECB8(v12, v13, v14);
  }

  return result;
}

double sub_1A4955BC4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v8 = a1[2];
  v9 = a1[3];
  v10 = a1[4];
  a1[2] = a2;
  a1[3] = a3;
  a1[4] = a4;
  sub_1A40C7F38(a2, a3, a4);
  return sub_1A3DAECB8(v8, v9, v10);
}

uint64_t (*sub_1A4955C54(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  (*(*v1 + 208))();

  v4[5] = OBJC_IVAR____TtCV12PhotosUICore27TTRWorkflowSheetHostingView9ViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A495798C(&qword_1EB145AB8, type metadata accessor for TTRWorkflowSheetHostingView.ViewModel, &unk_1A5376470);
  sub_1A52415F4();

  v4[7] = sub_1A3E65F84(v4);
  return sub_1A4955D90;
}

void (*sub_1A4955D9C(uint64_t *a1))(id **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1A4955E2C;
}

void sub_1A4955E2C(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

uint64_t sub_1A4955EA8()
{
  swift_getKeyPath();
  (*(*v0 + 208))();

  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_1A4955F30@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 176))();
  *a2 = result;
  return result;
}

uint64_t sub_1A4955F7C(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 184);
  v4 = *a1;
  return v3(v2);
}

void sub_1A4955FD4(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (a1)
    {
      sub_1A3D63AC0(0, v4);
      v6 = v5;
      v7 = sub_1A524DBF4();

      if ((v7 & 1) == 0)
      {
        goto LABEL_8;
      }

LABEL_6:
      swift_unknownObjectWeakAssign();

      return;
    }
  }

  else if (!a1)
  {
    goto LABEL_6;
  }

LABEL_8:
  KeyPath = swift_getKeyPath();
  v9 = MEMORY[0x1EEE9AC00](KeyPath);
  (*(*v1 + 216))(v9);
}

uint64_t (*sub_1A495611C(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  (*(*v1 + 208))();

  v4[5] = OBJC_IVAR____TtCV12PhotosUICore27TTRWorkflowSheetHostingView9ViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A495798C(&qword_1EB145AB8, type metadata accessor for TTRWorkflowSheetHostingView.ViewModel, &unk_1A5376470);
  sub_1A52415F4();

  v4[7] = sub_1A4955D9C(v4);
  return sub_1A4956258;
}

uint64_t sub_1A4956264(uint64_t *a1, void *a2)
{
  v4 = swift_allocObject();
  sub_1A49562B4(a1, a2);
  return v4;
}

void *sub_1A49562B4(uint64_t *a1, void *a2)
{
  v3 = v2;
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v2[3] = 0;
  v2[4] = 0;
  v2[2] = 0;
  swift_unknownObjectWeakInit();
  sub_1A5241604();
  swift_beginAccess();
  v8 = v2[2];
  v9 = v3[3];
  v10 = v3[4];
  sub_1A40C7F38(v8, v9, v10);
  v11 = sub_1A4956E28(v8, v9, v10, v5, v6, v7);
  sub_1A3DAECB8(v8, v9, v10);
  if (v11)
  {
    KeyPath = swift_getKeyPath();
    v13 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v3 + 216))(v13);
    sub_1A3DAECB8(v5, v6, v7);
  }

  else
  {
    v14 = v3[2];
    v15 = v3[3];
    v16 = v3[4];
    v3[2] = v5;
    v3[3] = v6;
    v3[4] = v7;
    sub_1A3DAECB8(v14, v15, v16);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    if (!a2)
    {
      v21 = 0;
      goto LABEL_10;
    }

LABEL_12:
    v23 = swift_getKeyPath();
    v24 = MEMORY[0x1EEE9AC00](v23);
    (*(*v3 + 216))(v24);

    return v3;
  }

  v19 = Strong;
  if (!a2)
  {

    goto LABEL_12;
  }

  sub_1A3D63AC0(0, v18);
  v20 = v19;
  v21 = a2;
  v22 = sub_1A524DBF4();

  if ((v22 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_10:
  swift_unknownObjectWeakAssign();

  return v3;
}

uint64_t sub_1A49566A0()
{
  v1 = sub_1A3DAECB8(v0[2], v0[3], v0[4]);
  MEMORY[0x1A590F020](v0 + 5, v1);
  v2 = OBJC_IVAR____TtCV12PhotosUICore27TTRWorkflowSheetHostingView9ViewModel___observationRegistrar;
  v3 = sub_1A5241614();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocClassInstance();
}

uint64_t sub_1A4956750@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  v2 = type metadata accessor for TTRWorkflowSheetHostingView(0);
  v3 = v2 - 8;
  v43 = *(v2 - 8);
  v42 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v41 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3EE53E0(0);
  v40 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v39 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v37 - v8;
  sub_1A3C4D38C(0, &qword_1EB145AC0, type metadata accessor for TTRWorkflowSheetHostingView.ViewModel, MEMORY[0x1E6981AA0]);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v37 - v13;
  sub_1A49570AC(0);
  v16 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_1A524B414();
  sub_1A524BC74();
  sub_1A5248AD4();
  v37 = v1;
  sub_1A524BAB4();
  swift_getKeyPath();
  sub_1A524BAD4();

  (*(v12 + 8))(v14, v11);
  v19 = *(&v47 + 1);
  v20 = v49;
  v21 = (v1 + *(v3 + 28));
  v22 = *v21;
  v23 = v21[1];
  v24 = &v18[*(v16 + 36)];
  *v24 = v47;
  *(v24 + 1) = v19;
  *(v24 + 1) = v48;
  *(v24 + 4) = v20;
  v25 = type metadata accessor for TTRWorkflowSheetPresentation(0);
  v26 = sub_1A5240E64();
  (*(*(v26 - 8) + 56))(v9, 1, 1, v26);
  sub_1A49579D4(v9, v39, sub_1A3EE53E0);
  sub_1A524B694();
  sub_1A3C68A60(v9, sub_1A3EE53E0);
  v27 = &v24[*(v25 + 24)];
  *v27 = v22;
  v27[1] = v23;
  v28 = v53;
  *(v18 + 40) = v52;
  v29 = v50;
  *(v18 + 24) = v51;
  *(v18 + 8) = v29;
  *(v18 + 104) = v56;
  v30 = v54;
  *(v18 + 88) = v55;
  *(v18 + 72) = v30;
  *v18 = v38;
  *(v18 + 56) = v28;
  sub_1A3C66EE8(v22, v23);
  v31 = v37;
  v32 = sub_1A524BAA4();
  (*(*v47 + 128))(&v47, v32);

  v45 = v47;
  v46 = v48;
  v33 = v41;
  sub_1A49579D4(v31, v41, type metadata accessor for TTRWorkflowSheetHostingView);
  v34 = (*(v43 + 80) + 16) & ~*(v43 + 80);
  v35 = swift_allocObject();
  sub_1A4957A3C(v33, v35 + v34, type metadata accessor for TTRWorkflowSheetHostingView);
  sub_1A49572A4();
  sub_1A49572F4();
  sub_1A4957444();
  sub_1A524B144();

  sub_1A3DAECB8(v45, *(&v45 + 1), v46);
  return sub_1A3C68A60(v18, sub_1A49570AC);
}

id sub_1A4956CE4()
{
  v1 = *v0;
  if (*v0)
  {
    v2 = *v0;
  }

  else
  {
    v2 = [objc_allocWithZone(MEMORY[0x1E69DD258]) init];
    v1 = 0;
  }

  v3 = v1;
  return v2;
}

uint64_t sub_1A4956D38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A4958114();

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_1A4956D9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A4958114();

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_1A4956E00(uint64_t a1)
{
  sub_1A4958114();
  sub_1A5249ED4();
  __break(1u);
}

uint64_t sub_1A4956E28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!a2)
  {
    sub_1A40C7F38(a1, 0, a3);
    if (!a5)
    {
      sub_1A40C7F38(a4, 0, a6);
      sub_1A3DAECB8(a1, 0, a3);
      v13 = 0;
      return v13 & 1;
    }

    sub_1A40C7F38(a4, a5, a6);
    goto LABEL_7;
  }

  if (!a5)
  {
    sub_1A40C7F38(a1, a2, a3);
    sub_1A40C7F38(a4, 0, a6);
    sub_1A40C7F38(a1, a2, a3);

LABEL_7:
    sub_1A3DAECB8(a1, a2, a3);
    sub_1A3DAECB8(a4, a5, a6);
    v13 = 1;
    return v13 & 1;
  }

  sub_1A40C7F38(a1, a2, a3);
  sub_1A40C7F38(a4, a5, a6);
  sub_1A40C7F38(a1, a2, a3);
  sub_1A49574BC();
  v12 = sub_1A524C594();

  sub_1A3DAECB8(a1, a2, a3);
  v13 = v12 ^ 1;
  return v13 & 1;
}

void sub_1A49570AC(uint64_t a1)
{
  if (!qword_1EB145AC8)
  {
    sub_1A4957114();
    type metadata accessor for TTRWorkflowSheetPresentation(255);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB145AC8);
    }
  }
}

void sub_1A4957114()
{
  if (!qword_1EB123DA8)
  {
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB123DA8);
    }
  }
}

void sub_1A495716C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for TTRWorkflowSheetHostingView(0);
  if (*(a1 + 8))
  {
    v4 = *(a2 + 8) == 0;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    sub_1A3C4D38C(0, &qword_1EB145AC0, type metadata accessor for TTRWorkflowSheetHostingView.ViewModel, MEMORY[0x1E6981AA0]);
    v5 = sub_1A524BAA4();
    v6 = (*(*v9 + 176))(v5);

    if (v6)
    {
      v7 = [v6 presentingViewController];
      if (v7)
      {
        v8 = v7;
        [v7 dismissViewControllerAnimated:1 completion:0];
      }
    }
  }
}

void sub_1A49572A4()
{
  if (!qword_1EB125C80)
  {
    v0 = sub_1A524DF24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB125C80);
    }
  }
}

unint64_t sub_1A49572F4()
{
  result = qword_1EB145AD0;
  if (!qword_1EB145AD0)
  {
    sub_1A49570AC(255);
    sub_1A4957374();
    sub_1A49573EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB145AD0);
  }

  return result;
}

unint64_t sub_1A4957374()
{
  result = qword_1EB145AD8;
  if (!qword_1EB145AD8)
  {
    sub_1A4957114();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB145AD8);
  }

  return result;
}

unint64_t sub_1A49573EC()
{
  result = qword_1EB164EE8[0];
  if (!qword_1EB164EE8[0])
  {
    type metadata accessor for TTRWorkflowSheetPresentation(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB164EE8);
  }

  return result;
}

unint64_t sub_1A4957444()
{
  result = qword_1EB125C78;
  if (!qword_1EB125C78)
  {
    sub_1A49572A4();
    sub_1A49574BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125C78);
  }

  return result;
}

unint64_t sub_1A49574BC()
{
  result = qword_1EB125C90;
  if (!qword_1EB125C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125C90);
  }

  return result;
}

void sub_1A4957554(uint64_t a1)
{
  sub_1A3C4D38C(319, &qword_1EB145AC0, type metadata accessor for TTRWorkflowSheetHostingView.ViewModel, MEMORY[0x1E6981AA0]);
  if (v1 <= 0x3F)
  {
    sub_1A3C4D38C(319, &qword_1EB1201F0, sub_1A3C3637C, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1A4957640(uint64_t a1)
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

void sub_1A495770C(uint64_t a1)
{
  sub_1A3C4D38C(319, &qword_1EB1214F0, sub_1A49572A4, MEMORY[0x1E6981948]);
  if (v1 <= 0x3F)
  {
    sub_1A3C4D38C(319, &qword_1EB121CA0, sub_1A3EE53E0, MEMORY[0x1E6981790]);
    if (v2 <= 0x3F)
    {
      sub_1A3C4D38C(319, &qword_1EB1201F0, sub_1A3C3637C, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1A4957854(uint64_t a1)
{
  if (!qword_1EB121DA8)
  {
    sub_1A4957928(255);
    sub_1A49572A4();
    sub_1A495798C(&qword_1EB122258, sub_1A4957928, MEMORY[0x1E697FDF8]);
    sub_1A4957444();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB121DA8);
    }
  }
}

void sub_1A4957928(uint64_t a1)
{
  if (!qword_1EB122250)
  {
    type metadata accessor for TTRWorkflowSheetPresentation(255);
    sub_1A49573EC();
    v1 = sub_1A52499C4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB122250);
    }
  }
}

uint64_t sub_1A495798C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A49579D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A4957A3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1A4957AA4(uint64_t a1, uint64_t a2)
{
  type metadata accessor for TTRWorkflowSheetPresentation(0);

  sub_1A4955548(a1, a2);
}

uint64_t objectdestroy_28Tm_0()
{
  v1 = type metadata accessor for TTRWorkflowSheetPresentation(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  if (*(v2 + 24))
  {
  }

  v3 = v2 + *(v1 + 20);
  v4 = sub_1A5240E64();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v3, 1, v4))
  {
    (*(v5 + 8))(v3, v4);
  }

  sub_1A3C4D38C(0, &qword_1EB121CA0, sub_1A3EE53E0, MEMORY[0x1E6981790]);

  if (*(v2 + *(v1 + 24)))
  {
  }

  return swift_deallocObject();
}

void sub_1A4957CEC(uint64_t *a1)
{
  v4 = *(type metadata accessor for TTRWorkflowSheetPresentation(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  sub_1A4955730(a1, v5);
}

void sub_1A4957D6C(uint64_t a1)
{
  if (!qword_1EB123E68)
  {
    sub_1A4957DCC(255);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB123E68);
    }
  }
}

void sub_1A4957DCC(uint64_t a1)
{
  if (!qword_1EB121E10)
  {
    sub_1A4957E60();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB121E10);
    }
  }
}

unint64_t sub_1A4957E60()
{
  result = qword_1EB15E390[0];
  if (!qword_1EB15E390[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB15E390);
  }

  return result;
}

unint64_t sub_1A4957EB4()
{
  result = qword_1EB125C88;
  if (!qword_1EB125C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125C88);
  }

  return result;
}

unint64_t sub_1A4957F08()
{
  result = qword_1EB123E70;
  if (!qword_1EB123E70)
  {
    sub_1A4957D6C(255);
    sub_1A4957E60();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB123E70);
  }

  return result;
}

double sub_1A4957FC8(uint64_t a1)
{
  v3 = type metadata accessor for TTRWorkflowSheetPresentation(0);
  v4 = (v1 + ((*(*(v3 - 8) + 80) + 16) & ~*(*(v3 - 8) + 80)));
  v5 = *(v4 + *(v3 + 24));
  if (v5)
  {
    v5(a1);
  }

  v7 = v4[2];
  v8 = v4[3];
  v9 = v4[4];

  sub_1A40C7F38(v7, v8, v9);
  sub_1A3C4D38C(0, &qword_1EB1214F0, sub_1A49572A4, MEMORY[0x1E6981948]);
  sub_1A524B904();

  return sub_1A3DAECB8(v7, v8, v9);
}

unint64_t sub_1A4958114()
{
  result = qword_1EB1E2020[0];
  if (!qword_1EB1E2020[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1E2020);
  }

  return result;
}

uint64_t sub_1A4958198@<X0>(uint64_t a2@<X8>)
{
  sub_1A49583C4(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v12 - v7;
  *v8 = sub_1A524A024();
  sub_1A495E048(0);
  sub_1A49585F8(&v8[*(v9 + 44)]);
  sub_1A495E0E4(v8, v5, sub_1A49583C4);
  *a2 = 0;
  *(a2 + 8) = 1;
  sub_1A495835C(0);
  sub_1A495E0E4(v5, a2 + *(v10 + 48), sub_1A49583C4);
  sub_1A495CCF4(v8, sub_1A49583C4);
  return sub_1A495CCF4(v5, sub_1A49583C4);
}

void sub_1A49582C4(uint64_t a1)
{
  if (!qword_1EB145AE0)
  {
    sub_1A4958458(255, &qword_1EB145AE8, sub_1A495835C, MEMORY[0x1E6981F40]);
    v1 = sub_1A52483B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB145AE0);
    }
  }
}

void sub_1A495835C(uint64_t a1)
{
  if (!qword_1EB145AF0)
  {
    sub_1A49583C4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB145AF0);
    }
  }
}

void sub_1A49583C4(uint64_t a1)
{
  if (!qword_1EB145AF8)
  {
    sub_1A4958458(255, &qword_1EB145B00, sub_1A49584BC, MEMORY[0x1E6981F40]);
    sub_1A4958570();
    v1 = sub_1A52481C4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB145AF8);
    }
  }
}

void sub_1A4958458(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A49584BC(uint64_t a1)
{
  if (!qword_1EB145B08)
  {
    type metadata accessor for LabelPill(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB145B08);
    }
  }
}

uint64_t type metadata accessor for LabelPill(uint64_t a1)
{
  result = qword_1EB1E20C0;
  if (!qword_1EB1E20C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1A4958570()
{
  result = qword_1EB145B10;
  if (!qword_1EB145B10)
  {
    sub_1A4958458(255, &qword_1EB145B00, sub_1A49584BC, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB145B10);
  }

  return result;
}

uint64_t sub_1A49585F8@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v1 = type metadata accessor for LabelPill(0);
  v2 = v1 - 8;
  MEMORY[0x1EEE9AC00](v1);
  v28 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v27 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v27 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v27 - v11);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v27 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v27 - v17;
  sub_1A4958904(&v32);
  *v18 = v32;
  v18[1] = 2;
  v19 = *(v2 + 32);
  *&v18[v19] = swift_getKeyPath();
  sub_1A4958458(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  sub_1A4958904(&v31);
  *v15 = v31;
  v15[1] = 1;
  v20 = *(v2 + 32);
  *&v15[v20] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  sub_1A4958904(&v30);
  *v12 = v30;
  v21 = *(v2 + 32);
  *(v12 + v21) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  sub_1A495E0E4(v18, v9, type metadata accessor for LabelPill);
  sub_1A495E0E4(v15, v6, type metadata accessor for LabelPill);
  v22 = v28;
  sub_1A495E0E4(v12, v28, type metadata accessor for LabelPill);
  v23 = v29;
  sub_1A495E0E4(v9, v29, type metadata accessor for LabelPill);
  sub_1A49584BC(0);
  v25 = v24;
  sub_1A495E0E4(v6, v23 + *(v24 + 48), type metadata accessor for LabelPill);
  sub_1A495E0E4(v22, v23 + *(v25 + 64), type metadata accessor for LabelPill);
  sub_1A495CCF4(v12, type metadata accessor for LabelPill);
  sub_1A495CCF4(v15, type metadata accessor for LabelPill);
  sub_1A495CCF4(v18, type metadata accessor for LabelPill);
  sub_1A495CCF4(v22, type metadata accessor for LabelPill);
  sub_1A495CCF4(v6, type metadata accessor for LabelPill);
  return sub_1A495CCF4(v9, type metadata accessor for LabelPill);
}

void sub_1A4958904(char *a1@<X8>)
{
  v3 = sub_1A5249234();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 8);
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = *(v1 + 32);
  if (sub_1A40B1BE4(*v1, 3))
  {
    goto LABEL_2;
  }

  if (v10)
  {
    if (v9)
    {
LABEL_2:
      v11 = 2;
      goto LABEL_15;
    }
  }

  else
  {

    v12 = sub_1A524D254();
    v13 = sub_1A524A014();
    v11 = 2;
    sub_1A5246DF4(v12, &dword_1A3C1C000, v13, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3C53AEC(v9, 0);
    (*(v4 + 8))(v6, v3);
    if (v19)
    {
      goto LABEL_15;
    }
  }

  if (v8)
  {
    v23 = v7;
  }

  else
  {

    v14 = sub_1A524D254();
    v15 = sub_1A524A014();
    sub_1A5246DF4(v14, &dword_1A3C1C000, v15, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3C53AEC(v7, 0);
    (*(v4 + 8))(v6, v3);
    LOBYTE(v7) = v23;
  }

  v22 = v7;
  v21 = 0;
  sub_1A40A51C0();
  sub_1A524C9C4();
  sub_1A524C9C4();
  if (v19 == v18[1] && v20 == v18[2])
  {

    v16 = 0;
  }

  else
  {
    v17 = sub_1A524EAB4();

    v16 = v17 ^ 1;
  }

  v11 = v16 & 1;
LABEL_15:
  *a1 = v11;
}

uint64_t sub_1A4958BC0@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  *a2 = a1;
  *(a2 + 8) = swift_getKeyPath();
  *(a2 + 16) = 0;
  result = swift_getKeyPath();
  *(a2 + 24) = result;
  *(a2 + 32) = 0;
  return result;
}

uint64_t sub_1A4958C0C@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_1A5249574();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  sub_1A49582C4(0);
  return sub_1A4958198(a1 + *(v3 + 44));
}

uint64_t sub_1A4958C54@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v163 = a1;
  sub_1A3EC2854(0);
  v162 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v161 = &v157 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v158 = &v157 - v6;
  v7 = sub_1A52486A4();
  v191 = *(v7 - 8);
  v192 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v190 = &v157 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v189 = &v157 - v10;
  sub_1A3EC1A14(0);
  v160 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v159 = &v157 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1A5242D14();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v157 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v157 - v18;
  sub_1A495BC9C(0);
  v21 = v20 - 8;
  MEMORY[0x1EEE9AC00](v20);
  v23 = (&v157 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A495BF70(0);
  v165 = v24;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v157 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A495C190(0, &qword_1EB145B68, sub_1A495BF70, MEMORY[0x1E697EBC8]);
  v164 = v27;
  v28 = MEMORY[0x1EEE9AC00](v27);
  v30 = &v157 - v29;
  sub_1A495C004(0, v28);
  v166 = v31;
  MEMORY[0x1EEE9AC00](v31);
  v169 = &v157 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A495C0B4(0);
  v168 = v33;
  MEMORY[0x1EEE9AC00](v33);
  v174 = &v157 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A495C0DC(0);
  v170 = v35;
  MEMORY[0x1EEE9AC00](v35);
  v178 = &v157 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A495C168(0);
  v177 = v37;
  MEMORY[0x1EEE9AC00](v37);
  v179 = &v157 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A495C190(0, &qword_1EB145B90, sub_1A495C168, sub_1A495C204);
  v167 = v39;
  MEMORY[0x1EEE9AC00](v39);
  v181 = &v157 - v40;
  sub_1A495C2C0(0);
  v180 = v41;
  MEMORY[0x1EEE9AC00](v41);
  v195 = &v157 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A495C350(0);
  v182 = v43;
  MEMORY[0x1EEE9AC00](v43);
  v183 = &v157 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A495C378(0);
  v193 = v45;
  MEMORY[0x1EEE9AC00](v45);
  v194 = &v157 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1A4959CA4();
  *v23 = sub_1A5249314();
  v23[1] = v47;
  *(v23 + 16) = 0;
  sub_1A495C410(0, &qword_1EB145BB0, &qword_1EB145B40, sub_1A495BDB0);
  sub_1A4959EA4(v1, v23 + *(v48 + 44));
  v49 = sub_1A495A7C0();
  KeyPath = swift_getKeyPath();
  v51 = (v23 + *(v21 + 44));
  *v51 = KeyPath;
  v51[1] = v49;
  v52 = *(type metadata accessor for LabelPill(0) + 24);
  v184 = v2;
  v175 = v52;
  sub_1A3D61808(v19);
  v53 = *(v14 + 104);
  v172 = *MEMORY[0x1E69C2210];
  v173 = v14 + 104;
  v171 = v53;
  v53(v16);
  LOBYTE(v49) = sub_1A5242D04();
  v54 = *(v14 + 8);
  v187 = v16;
  v54(v16, v13);
  v185 = v14 + 8;
  v186 = v19;
  v188 = v13;
  v176 = v54;
  v54(v19, v13);
  if (v49)
  {
    v55 = sub_1A524B4A4();
  }

  else
  {
    sub_1A524B404();
    v55 = sub_1A524B474();
  }

  sub_1A495C6CC(v23, v26, sub_1A495BC9C);
  *&v26[*(v165 + 36)] = v55;
  v56 = *(v164 + 36);
  v57 = *MEMORY[0x1E6981DA0];
  v58 = sub_1A524BD64();
  (*(*(v58 - 8) + 104))(&v30[v56], v57, v58);
  sub_1A495C6CC(v26, v30, sub_1A495BF70);
  v59 = swift_getKeyPath();
  v60 = v169;
  sub_1A495C734(v30, v169, &qword_1EB145B68, sub_1A495BF70, MEMORY[0x1E697EBC8]);
  v61 = v60 + *(v166 + 36);
  *v61 = v59;
  *(v61 + 8) = 1;
  *(v61 + 16) = 0;
  LOBYTE(v56) = sub_1A524A0C4();
  v62 = v184;
  sub_1A495AB08();
  sub_1A5247BC4();
  v64 = v63;
  v66 = v65;
  v68 = v67;
  v70 = v69;
  v71 = v60;
  v72 = v174;
  sub_1A495C6CC(v71, v174, sub_1A495C004);
  v73 = v72 + *(v168 + 36);
  *v73 = v56;
  *(v73 + 8) = v64;
  *(v73 + 16) = v66;
  *(v73 + 24) = v68;
  *(v73 + 32) = v70;
  *(v73 + 40) = 0;
  LOBYTE(v56) = sub_1A524A094();
  sub_1A495AE90();
  sub_1A5247BC4();
  v75 = v74;
  v77 = v76;
  v79 = v78;
  v81 = v80;
  v82 = v72;
  v83 = v178;
  sub_1A495C6CC(v82, v178, sub_1A495C0B4);
  v84 = v83 + *(v170 + 36);
  *v84 = v56;
  *(v84 + 8) = v75;
  *(v84 + 16) = v77;
  *(v84 + 24) = v79;
  *(v84 + 32) = v81;
  *(v84 + 40) = 0;
  LOBYTE(v59) = sub_1A524A0B4();
  sub_1A5247BC4();
  v86 = v85;
  v88 = v87;
  v90 = v89;
  v92 = v91;
  v93 = v83;
  v94 = v179;
  sub_1A495C6CC(v93, v179, sub_1A495C0DC);
  v95 = v94 + *(v177 + 36);
  *v95 = v59;
  *(v95 + 8) = v86;
  *(v95 + 16) = v88;
  *(v95 + 24) = v90;
  *(v95 + 32) = v92;
  *(v95 + 40) = 0;
  v96 = v181;
  v97 = &v181[*(v167 + 36)];
  sub_1A524BBE4();
  sub_1A495C204(0);
  v99 = v98;
  v100 = *(v98 + 52);
  v101 = *MEMORY[0x1E697F468];
  v102 = sub_1A52494A4();
  (*(*(v102 - 8) + 104))(&v97[v100], v101, v102);
  *&v97[*(v99 + 56)] = 256;
  sub_1A495C6CC(v94, v96, sub_1A495C168);
  v103 = sub_1A524A054();
  v104 = v193;
  if (*v62 >= 2u)
  {
    v105 = v186;
    sub_1A3D61808(v186);
    v107 = v187;
    v106 = v188;
    v171(v187, v172, v188);
    sub_1A5242D04();
    v108 = v176;
    v176(v107, v106);
    v108(v105, v106);
  }

  sub_1A5247BC4();
  v110 = v109;
  v112 = v111;
  v114 = v113;
  v116 = v115;
  v117 = v195;
  sub_1A495C734(v96, v195, &qword_1EB145B90, sub_1A495C168, sub_1A495C204);
  v118 = v117 + *(v180 + 36);
  *v118 = v103;
  *(v118 + 8) = v110;
  *(v118 + 16) = v112;
  *(v118 + 24) = v114;
  *(v118 + 32) = v116;
  *(v118 + 40) = 0;
  v119 = sub_1A524A084();
  v121 = v191;
  v120 = v192;
  v122 = v189;
  v123 = v194;
  if (*v62 >= 2u)
  {
    v124 = v186;
    sub_1A3D61808(v186);
    v126 = v187;
    v125 = v188;
    v171(v187, v172, v188);
    sub_1A5242D04();
    LODWORD(v184) = v119;
    v127 = v122;
    v128 = v123;
    v129 = v104;
    v130 = v176;
    v176(v126, v125);
    v130(v124, v125);
    v104 = v129;
    v123 = v128;
    v122 = v127;
    LOBYTE(v119) = v184;
  }

  sub_1A5247BC4();
  v132 = v131;
  v134 = v133;
  v136 = v135;
  v138 = v137;
  v139 = v183;
  sub_1A495C6CC(v195, v183, sub_1A495C2C0);
  v140 = v139 + *(v182 + 36);
  *v140 = v119;
  *(v140 + 8) = v132;
  *(v140 + 16) = v134;
  *(v140 + 24) = v136;
  *(v140 + 32) = v138;
  *(v140 + 40) = 0;
  v141 = (v123 + *(v104 + 36));
  sub_1A4958458(0, &qword_1EB127890, MEMORY[0x1E697DBD0], MEMORY[0x1E6980A08]);
  v143 = *(v142 + 28);
  v144 = *MEMORY[0x1E697DBB8];
  v145 = sub_1A5247E04();
  (*(*(v145 - 8) + 104))(v141 + v143, v144, v145);
  *v141 = swift_getKeyPath();
  sub_1A495C6CC(v139, v123, sub_1A495C350);
  v146 = v121[13];
  v146(v122, *MEMORY[0x1E697E6F0], v120);
  v147 = v190;
  v146(v190, *MEMORY[0x1E697E6D0], v120);
  sub_1A495BC54(&qword_1EB1288D0, MEMORY[0x1E697E730], MEMORY[0x1E697E748]);
  result = sub_1A524C544();
  if (result)
  {
    v149 = v121[4];
    v150 = v158;
    v149(v158, v122, v120);
    v151 = v162;
    v149((v150 + *(v162 + 48)), v147, v120);
    v152 = v161;
    sub_1A495E0E4(v150, v161, sub_1A3EC2854);
    v153 = *(v151 + 48);
    v154 = v159;
    v149(v159, v152, v120);
    v155 = v121[1];
    v155(v152 + v153, v120);
    sub_1A495C6CC(v150, v152, sub_1A3EC2854);
    v149((v154 + *(v160 + 36)), (v152 + *(v151 + 48)), v120);
    v155(v152, v120);
    sub_1A495CAC4(&qword_1EB145BB8, sub_1A495C378, sub_1A495C7D0, sub_1A3DEAC1C);
    sub_1A495BC54(&qword_1EB126FC0, sub_1A3EC1A14, MEMORY[0x1E69E5FB8]);
    v156 = v194;
    sub_1A524AB84();
    sub_1A495CCF4(v154, sub_1A3EC1A14);
    return sub_1A495CCF4(v156, sub_1A495C378);
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_1A4959CA4()
{
  v1 = v0;
  v2 = sub_1A5242D14();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v13 - v7;
  type metadata accessor for LabelPill(0);
  sub_1A3D61808(v8);
  (*(v3 + 104))(v5, *MEMORY[0x1E69C21F0], v2);
  v9 = sub_1A5242D04();
  v10 = *(v3 + 8);
  v10(v5, v2);
  v10(v8, v2);
  if ((v9 & 1) == 0)
  {
    return 4.0;
  }

  v15 = *v1;
  v14 = 2;
  sub_1A40A51C0();
  sub_1A524C9C4();
  sub_1A524C9C4();
  if (v13[3] == v13[1] && v13[4] == v13[2])
  {

    return 8.0;
  }

  v12 = sub_1A524EAB4();

  result = 8.0;
  if ((v12 & 1) == 0)
  {
    return 4.0;
  }

  return result;
}

uint64_t sub_1A4959EA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  sub_1A3EE213C(0);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = (&v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A4958458(0, &qword_1EB145B50, sub_1A3EE213C, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v48 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v45 - v11;
  v13 = *(a1 + 1);
  v47 = &v45 - v11;
  if (v13)
  {
    v14 = sub_1A524B574();
    v15 = (v7 + *(v4 + 36));
    sub_1A4958458(0, &qword_1EB1277D8, MEMORY[0x1E69816E8], MEMORY[0x1E6980A08]);
    sub_1A495A398(v15 + *(v16 + 28));
    *v15 = swift_getKeyPath();
    *v7 = v14;
    sub_1A495C6CC(v7, v12, sub_1A3EE213C);
    (*(v5 + 56))(v12, 0, 1, v4);
  }

  else
  {
    (*(v5 + 56))(&v45 - v11, 1, 1, v4);
  }

  if (v13 == 2)
  {
    v17 = 0x676E6F4C5FLL;
  }

  else
  {
    v17 = 0x74726F68535FLL;
  }

  if (v13 == 2)
  {
    v18 = 0xE500000000000000;
  }

  else
  {
    v18 = 0xE600000000000000;
  }

  v65 = 0xD000000000000027;
  v66 = 0x80000001A53F41C0;
  MEMORY[0x1A5907B60](v17, v18);

  v19 = sub_1A524C634();

  v20 = PXMemoryCreationLocalizedString(v19);

  v21 = sub_1A524C674();
  v23 = v22;

  v65 = v21;
  v66 = v23;
  sub_1A3D5F9DC();
  v45 = sub_1A524A464();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  sub_1A524BC84();
  sub_1A5248AD4();
  LOBYTE(v20) = v27 & 1;
  v76 = v27 & 1;
  v30 = MEMORY[0x1E69E6720];
  v32 = v47;
  v31 = v48;
  sub_1A495CE8C(v47, v48, &qword_1EB145B50, sub_1A3EE213C, MEMORY[0x1E69E6720]);
  v33 = v46;
  sub_1A495CE8C(v31, v46, &qword_1EB145B50, sub_1A3EE213C, v30);
  sub_1A495BDB0(0);
  v35 = (v33 + *(v34 + 48));
  v36 = v45;
  *&v56 = v45;
  *(&v56 + 1) = v25;
  LOBYTE(v57) = v27 & 1;
  *(&v57 + 1) = v29;
  v62 = v53;
  v63 = v54;
  v64 = v55;
  v60 = v51;
  v61 = v52;
  v37 = v49;
  v58 = v49;
  v59 = v50;
  v38 = v57;
  *v35 = v56;
  v35[1] = v38;
  v39 = v59;
  v40 = v60;
  v35[2] = v37;
  v35[3] = v39;
  v41 = v64;
  v35[7] = v63;
  v35[8] = v41;
  v42 = v62;
  v35[5] = v61;
  v35[6] = v42;
  v35[4] = v40;
  v43 = MEMORY[0x1E697EC00];
  sub_1A495CEFC(&v56, &v65, &unk_1EB124040, MEMORY[0x1E697EC00]);
  sub_1A495CF84(v32);
  v65 = v36;
  v66 = v25;
  v67 = v20;
  v68 = v29;
  v73 = v53;
  v74 = v54;
  v75 = v55;
  v69 = v49;
  v70 = v50;
  v71 = v51;
  v72 = v52;
  sub_1A495D010(&v65, &unk_1EB124040, v43);
  return sub_1A495CF84(v31);
}

uint64_t sub_1A495A398@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  sub_1A495CD54(0);
  v32 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A5249234();
  v30 = *(v5 - 8);
  v31 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1E69C2218];
  v9 = MEMORY[0x1E697DCB8];
  sub_1A4958458(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v29 - v11;
  v13 = sub_1A5242D14();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(type metadata accessor for LabelPill(0) + 24);
  v33 = v1;
  sub_1A495CE8C(&v1[v17], v12, &qword_1EB128AA0, v8, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = *(v14 + 32);
    v18(v16, v12, v13);
  }

  else
  {
    v19 = sub_1A524D254();
    v20 = sub_1A524A014();
    sub_1A5246DF4(v19, &dword_1A3C1C000, v20, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();

    (*(v30 + 8))(v7, v31);
    v18 = *(v14 + 32);
  }

  v21 = *v33;
  v22 = *(v32 + 48);
  v18(v4, v16, v13);
  v4[v22] = v21;
  if (!v21)
  {
    (*(v14 + 8))(v4, v13);
    goto LABEL_9;
  }

  if (v21 != 1)
  {
    if ((*(v14 + 88))(v4, v13) != *MEMORY[0x1E69C21F0])
    {
      v23 = MEMORY[0x1E69816C0];
      goto LABEL_11;
    }

LABEL_9:
    v24 = *MEMORY[0x1E69816E0];
    v25 = sub_1A524B5B4();
    return (*(*(v25 - 8) + 104))(v34, v24, v25);
  }

  v23 = MEMORY[0x1E69816C8];
LABEL_11:
  v27 = *v23;
  v28 = sub_1A524B5B4();
  (*(*(v28 - 8) + 104))(v34, v27, v28);
  return (*(v14 + 8))(v4, v13);
}

uint64_t sub_1A495A7C0()
{
  v1 = v0;
  v2 = sub_1A5242D14();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16[-v7];
  type metadata accessor for LabelPill(0);
  sub_1A3D61808(v8);
  v9 = *(v3 + 104);
  v9(v5, *MEMORY[0x1E69C21F0], v2);
  v10 = sub_1A5242D04();
  v11 = *(v3 + 8);
  v11(v5, v2);
  v11(v8, v2);
  if (v10)
  {
    v18 = v9;
    v19 = v1;
    v25 = *v1;
    v24 = 2;
    sub_1A40A51C0();
    sub_1A524C9C4();
    sub_1A524C9C4();
    if (v22 == v20 && v23 == v21)
    {

      sub_1A524A1E4();
LABEL_14:
      sub_1A524A184();
      v14 = sub_1A524A1F4();

      return v14;
    }

    v17 = sub_1A524EAB4();

    v9 = v18;
    v1 = v19;
    if (v17)
    {
      sub_1A524A1E4();
      goto LABEL_14;
    }
  }

  sub_1A3D61808(v8);
  v9(v5, *MEMORY[0x1E69C2210], v2);
  v12 = sub_1A5242D04();
  v11(v5, v2);
  v11(v8, v2);
  if ((v12 & 1) == 0)
  {
    goto LABEL_13;
  }

  v25 = *v1;
  v24 = 2;
  sub_1A40A51C0();
  sub_1A524C9C4();
  sub_1A524C9C4();
  if (v22 != v20 || v23 != v21)
  {
    v13 = sub_1A524EAB4();

    if (v13)
    {
      return sub_1A524A0F4();
    }

LABEL_13:
    sub_1A524A254();
    goto LABEL_14;
  }

  return sub_1A524A0F4();
}

uint64_t sub_1A495AB08()
{
  sub_1A495CD54(0);
  v26 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A5249234();
  v24 = *(v4 - 8);
  v25 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1E69C2218];
  v8 = MEMORY[0x1E697DCB8];
  sub_1A4958458(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24 - v10;
  v12 = sub_1A5242D14();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(type metadata accessor for LabelPill(0) + 24);
  v27 = v0;
  sub_1A495CE8C(&v0[v16], v11, &qword_1EB128AA0, v7, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = *(v13 + 32);
    v17(v15, v11, v12);
  }

  else
  {
    v18 = sub_1A524D254();
    v19 = sub_1A524A014();
    sub_1A5246DF4(v18, &dword_1A3C1C000, v19, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();

    (*(v24 + 8))(v6, v25);
    v17 = *(v13 + 32);
  }

  v20 = *v27;
  v21 = *(v26 + 48);
  v17(v3, v15, v12);
  v3[v21] = v20;
  if (v20 < 2)
  {
    return (*(v13 + 8))(v3, v12, v22);
  }

  result = (*(v13 + 88))(v3, v12);
  v22.n128_u64[0] = 10.0;
  if (result != *MEMORY[0x1E69C21F0])
  {
    return (*(v13 + 8))(v3, v12, v22);
  }

  return result;
}

double sub_1A495AE90()
{
  sub_1A495CD54(0);
  v27 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A5249234();
  v25 = *(v4 - 8);
  v26 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1E69C2218];
  v8 = MEMORY[0x1E697DCB8];
  sub_1A4958458(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v25 - v10;
  v12 = sub_1A5242D14();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(type metadata accessor for LabelPill(0) + 24);
  v28 = v0;
  sub_1A495CE8C(&v0[v16], v11, &qword_1EB128AA0, v7, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = *(v13 + 32);
    v17(v15, v11, v12);
  }

  else
  {
    v18 = sub_1A524D254();
    v19 = sub_1A524A014();
    sub_1A5246DF4(v18, &dword_1A3C1C000, v19, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();

    (*(v25 + 8))(v6, v26);
    v17 = *(v13 + 32);
  }

  v20 = *v28;
  v21 = *(v27 + 48);
  v17(v3, v15, v12);
  v3[v21] = v20;
  if (!v20)
  {
    goto LABEL_8;
  }

  v22 = 6.0;
  if (v20 == 1)
  {
LABEL_9:
    (*(v13 + 8))(v3, v12);
    return v22;
  }

  v23 = (*(v13 + 88))(v3, v12);
  v22 = 10.0;
  if (v23 != *MEMORY[0x1E69C21F0])
  {
    v22 = 14.0;
    if (v23 != *MEMORY[0x1E69C2210])
    {
LABEL_8:
      v22 = 8.0;
      goto LABEL_9;
    }
  }

  return v22;
}

double sub_1A495B22C@<D0>(uint64_t *a1@<X8>)
{
  sub_1A5248694();
  sub_1A524A044();
  sub_1A495D240(0);
  a1[3] = v2;
  a1[4] = sub_1A495BC54(&qword_1EB145CD8, sub_1A495D240, MEMORY[0x1E697BE60]);
  __swift_allocate_boxed_opaque_existential_1(a1);
  sub_1A495D2D4(0);
  sub_1A495BC54(&qword_1EB145CD0, sub_1A495D2D4, MEMORY[0x1E697CD00]);
  sub_1A5247D14();

  return result;
}

void sub_1A495B340(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v26 = a3;
  sub_1A495D694(0);
  v29 = v5;
  v27 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v28 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v8 = sub_1A52486A4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v12 = *(v9 + 16);
  v12(v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8, v11);
  v31 = sub_1A524C714();
  v32 = v13;
  sub_1A3D5F9DC();
  v24 = sub_1A524A464();
  v23 = v14;
  v16 = v15;
  v25 = v17;
  sub_1A524BC74();
  sub_1A52481F4();
  v22 = v16 & 1;
  *&v30 = a2;
  v21[2] = swift_getKeyPath();
  (v12)(v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8);
  v18 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v19 = swift_allocObject();
  (*(v9 + 32))(v19 + v18, v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  v20 = MEMORY[0x1E69E62F8];
  sub_1A495D958(0, &qword_1EB120CD0, &type metadata for LemonadeShelvesLayoutStyle, MEMORY[0x1E69E62F8]);
  sub_1A495D780(0);
  sub_1A495DAB4(&qword_1EB120CC8, &qword_1EB120CD0, v20, MEMORY[0x1E69E6338]);
  sub_1A4168520();
  sub_1A495D848(255);
  sub_1A495CAC4(&qword_1EB145C88, sub_1A495D848, sub_1A495D9A8, sub_1A440C518);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A495B928(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1A495B970(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

void sub_1A495B9D8(uint64_t a1)
{
  if (!qword_1EB145B20)
  {
    sub_1A4958458(255, &qword_1EB145AE8, sub_1A495835C, MEMORY[0x1E6981F40]);
    sub_1A495BA6C();
    v1 = sub_1A524B894();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB145B20);
    }
  }
}

unint64_t sub_1A495BA6C()
{
  result = qword_1EB145B28;
  if (!qword_1EB145B28)
  {
    sub_1A4958458(255, &qword_1EB145AE8, sub_1A495835C, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB145B28);
  }

  return result;
}

void sub_1A495BB1C(uint64_t a1)
{
  sub_1A4958458(319, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_1A495BBE4()
{
  result = qword_1EB1E20D0[0];
  if (!qword_1EB1E20D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1E20D0);
  }

  return result;
}

uint64_t sub_1A495BC54(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1A495BC9C(uint64_t a1)
{
  if (!qword_1EB145B30)
  {
    sub_1A495BD1C(255);
    sub_1A495BF04(255, &qword_1EB127820, &qword_1EB1276A0, MEMORY[0x1E6980F50]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB145B30);
    }
  }
}

void sub_1A495BD1C(uint64_t a1)
{
  if (!qword_1EB145B38)
  {
    sub_1A4958458(255, &qword_1EB145B40, sub_1A495BDB0, MEMORY[0x1E6981F40]);
    sub_1A495BE7C();
    v1 = sub_1A524B784();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB145B38);
    }
  }
}

void sub_1A495BDB0(uint64_t a1)
{
  if (!qword_1EB145B48)
  {
    sub_1A4958458(255, &qword_1EB145B50, sub_1A3EE213C, MEMORY[0x1E69E6720]);
    sub_1A439F1C4(255, &unk_1EB124040, MEMORY[0x1E6981148], MEMORY[0x1E697EC00], MEMORY[0x1E697E830]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB145B48);
    }
  }
}

unint64_t sub_1A495BE7C()
{
  result = qword_1EB145B58;
  if (!qword_1EB145B58)
  {
    sub_1A4958458(255, &qword_1EB145B40, sub_1A495BDB0, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB145B58);
  }

  return result;
}

void sub_1A495BF04(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1A495D958(255, a3, a4, MEMORY[0x1E69E6720]);
    v5 = sub_1A5249F44();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1A495BF70(uint64_t a1)
{
  if (!qword_1EB145B60)
  {
    sub_1A495BC9C(255);
    sub_1A439F1C4(255, &qword_1EB127AD0, MEMORY[0x1E69815C0], MEMORY[0x1E6981568], MEMORY[0x1E6980480]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB145B60);
    }
  }
}

void sub_1A495C004(uint64_t a1, double a2)
{
  if (!qword_1EB145B70)
  {
    sub_1A495C190(255, &qword_1EB145B68, sub_1A495BF70, MEMORY[0x1E697EBC8]);
    sub_1A495BF04(255, &qword_1EB127790, &qword_1EB126D60, MEMORY[0x1E69E6530]);
    v2 = sub_1A5248804();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB145B70);
    }
  }
}

void sub_1A495C104(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    v5 = sub_1A5248804();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1A495C190(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
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

void sub_1A495C204(uint64_t a1)
{
  if (!qword_1EB122070)
  {
    sub_1A524BBF4();
    sub_1A524B984();
    sub_1A495BC54(&qword_1EB1214C0, MEMORY[0x1E6981998], MEMORY[0x1E6981970]);
    v1 = sub_1A5249FC4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB122070);
    }
  }
}

void sub_1A495C2C0(uint64_t a1)
{
  if (!qword_1EB145B98)
  {
    sub_1A495C190(255, &qword_1EB145B90, sub_1A495C168, sub_1A495C204);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB145B98);
    }
  }
}

void sub_1A495C378(uint64_t a1)
{
  if (!qword_1EB145BA8)
  {
    sub_1A495C350(255);
    sub_1A4958458(255, &qword_1EB127890, MEMORY[0x1E697DBD0], MEMORY[0x1E6980A08]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB145BA8);
    }
  }
}

void sub_1A495C410(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_1A4958458(255, a3, a4, MEMORY[0x1E6981F40]);
    v5 = sub_1A52483B4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

__n128 sub_1A495C48C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v4 = sub_1A524BC74();
  v6 = v5;
  v7 = sub_1A524B3D4();
  KeyPath = swift_getKeyPath();
  v9 = swift_getKeyPath();

  sub_1A3D35B8C(KeyPath, 0);
  sub_1A3D35B8C(v9, 0);
  sub_1A3C53AEC(KeyPath, 0);
  sub_1A3C53AEC(v9, 0);

  sub_1A3D35B8C(KeyPath, 0);
  sub_1A3D35B8C(v9, 0);

  sub_1A3C53AEC(KeyPath, 0);
  sub_1A3C53AEC(v9, 0);
  sub_1A524BC74();
  sub_1A52481F4();
  *&v22[7] = v23;
  *&v22[23] = v24;
  *&v22[39] = v25;
  sub_1A495C190(0, &qword_1EB145CF8, sub_1A495E178, sub_1A3E42C88);
  v11 = (a2 + *(v10 + 36));
  v12 = *(sub_1A5248A14() + 20);
  v13 = *MEMORY[0x1E697F468];
  v14 = sub_1A52494A4();
  (*(*(v14 - 8) + 104))(&v11[v12], v13, v14);
  __asm { FMOV            V0.2D, #15.0 }

  *v11 = _Q0;
  sub_1A3E42C88(0);
  *&v11[*(v20 + 36)] = 256;
  *(a2 + 57) = *v22;
  *a2 = v4;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7;
  *(a2 + 24) = 0;
  *(a2 + 32) = KeyPath;
  *(a2 + 40) = 0;
  *(a2 + 48) = v9;
  *(a2 + 56) = 0;
  *(a2 + 73) = *&v22[16];
  result = *&v22[32];
  *(a2 + 89) = *&v22[32];
  *(a2 + 104) = *(&v25 + 1);
  return result;
}

uint64_t sub_1A495C6CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A495C734(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  sub_1A495C190(0, a3, a4, a5);
  (*(*(v7 - 8) + 32))(a2, a1, v7);
  return a2;
}

unint64_t sub_1A495C838()
{
  result = qword_1EB145BD0;
  if (!qword_1EB145BD0)
  {
    sub_1A495C190(255, &qword_1EB145B90, sub_1A495C168, sub_1A495C204);
    sub_1A495C97C(&qword_1EB145BD8, sub_1A495C168, sub_1A495C948);
    sub_1A495BC54(&qword_1EB122078, sub_1A495C204, MEMORY[0x1E6980BA8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB145BD0);
  }

  return result;
}

uint64_t sub_1A495C97C(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void))
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

unint64_t sub_1A495CA00()
{
  result = qword_1EB145BE8;
  if (!qword_1EB145BE8)
  {
    sub_1A495C0B4(255);
    sub_1A495CAC4(&qword_1EB145BF0, sub_1A495C004, sub_1A495CB50, sub_1A400FBC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB145BE8);
  }

  return result;
}

uint64_t sub_1A495CAC4(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void), void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A495CB50()
{
  result = qword_1EB145BF8;
  if (!qword_1EB145BF8)
  {
    sub_1A495C190(255, &qword_1EB145B68, sub_1A495BF70, MEMORY[0x1E697EBC8]);
    sub_1A495CAC4(&qword_1EB145C00, sub_1A495BF70, sub_1A495CC44, sub_1A3F33024);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB145BF8);
  }

  return result;
}

unint64_t sub_1A495CC44()
{
  result = qword_1EB145C08;
  if (!qword_1EB145C08)
  {
    sub_1A495BC9C(255);
    sub_1A495BC54(&qword_1EB145C10, sub_1A495BD1C, MEMORY[0x1E69817F8]);
    sub_1A3F96350();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB145C08);
  }

  return result;
}

uint64_t sub_1A495CCF4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A495CD54(uint64_t a1)
{
  if (!qword_1EB145C18)
  {
    sub_1A5242D14();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB145C18);
    }
  }
}

uint64_t sub_1A495CDBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - v10;
  (*(v12 + 16))(&v14 - v10, a1, v9);
  return a6(v11);
}

uint64_t sub_1A495CE8C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  sub_1A4958458(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_1A495CEFC(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  sub_1A439F1C4(0, a3, MEMORY[0x1E6981148], a4, MEMORY[0x1E697E830]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1A495CF84(uint64_t a1)
{
  sub_1A4958458(0, &qword_1EB145B50, sub_1A3EE213C, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A495D010(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1A439F1C4(0, a2, MEMORY[0x1E6981148], a3, MEMORY[0x1E697E830]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1A495D08C(uint64_t a2@<X8>)
{
  v4 = *(v2 + 24);
  *a2 = sub_1A524BC74();
  *(a2 + 8) = v5;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  sub_1A495DCBC(0);
  swift_getKeyPath();
  *(swift_allocObject() + 16) = v4;
  sub_1A4958458(0, &qword_1EB145C38, MEMORY[0x1E697E730], MEMORY[0x1E69E62F8]);
  sub_1A495D43C(0);
  sub_1A495DB8C();
  sub_1A495BC54(&qword_1EB145CB8, MEMORY[0x1E697E730], MEMORY[0x1E697E740]);
  sub_1A495BC54(&qword_1EB145CC8, sub_1A495D43C, MEMORY[0x1E697D6E0]);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A495D240(uint64_t a1)
{
  if (!qword_1EB145C20)
  {
    sub_1A495D2D4(255);
    sub_1A495BC54(&qword_1EB145CD0, sub_1A495D2D4, MEMORY[0x1E697CD00]);
    v1 = sub_1A5247D04();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB145C20);
    }
  }
}

void sub_1A495D2D4(uint64_t a1)
{
  if (!qword_1EB145C28)
  {
    sub_1A495D338(255);
    sub_1A495DC14();
    v1 = sub_1A524A2B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB145C28);
    }
  }
}

void sub_1A495D338(uint64_t a1)
{
  if (!qword_1EB145C30)
  {
    sub_1A4958458(255, &qword_1EB145C38, MEMORY[0x1E697E730], MEMORY[0x1E69E62F8]);
    sub_1A52486A4();
    sub_1A495D43C(255);
    sub_1A495DB8C();
    sub_1A495BC54(&qword_1EB145CB8, MEMORY[0x1E697E730], MEMORY[0x1E697E740]);
    v1 = sub_1A524B9D4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB145C30);
    }
  }
}

void sub_1A495D43C(uint64_t a1)
{
  if (!qword_1EB145C40)
  {
    sub_1A495D4D0(255);
    sub_1A495BC54(&qword_1EB145CA8, sub_1A495D4D0, MEMORY[0x1E697BE60]);
    v1 = sub_1A524BA04();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB145C40);
    }
  }
}

void sub_1A495D4D0(uint64_t a1)
{
  if (!qword_1EB145C48)
  {
    sub_1A495D564(255);
    sub_1A495BC54(&qword_1EB145CA0, sub_1A495D564, MEMORY[0x1E69817F8]);
    v1 = sub_1A5247D04();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB145C48);
    }
  }
}

void sub_1A495D564(uint64_t a1)
{
  if (!qword_1EB145C50)
  {
    sub_1A4958458(255, &qword_1EB145C58, sub_1A495D5F8, MEMORY[0x1E6981F40]);
    sub_1A495DB04();
    v1 = sub_1A524B784();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB145C50);
    }
  }
}

void sub_1A495D5F8(uint64_t a1)
{
  if (!qword_1EB145C60)
  {
    sub_1A439F1C4(255, &qword_1EB140F90, MEMORY[0x1E6981148], MEMORY[0x1E697E048], MEMORY[0x1E697E830]);
    sub_1A495D694(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB145C60);
    }
  }
}

void sub_1A495D694(uint64_t a1)
{
  if (!qword_1EB145C68)
  {
    v1 = MEMORY[0x1E69E62F8];
    sub_1A495D958(255, &qword_1EB120CD0, &type metadata for LemonadeShelvesLayoutStyle, MEMORY[0x1E69E62F8]);
    sub_1A495D780(255);
    sub_1A495DAB4(&qword_1EB120CC8, &qword_1EB120CD0, v1, MEMORY[0x1E69E6338]);
    sub_1A4168520();
    v2 = sub_1A524B9D4();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB145C68);
    }
  }
}

void sub_1A495D780(uint64_t a1)
{
  if (!qword_1EB145C70)
  {
    sub_1A495D848(255);
    sub_1A495CAC4(&qword_1EB145C88, sub_1A495D848, sub_1A495D9A8, sub_1A440C518);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB145C70);
    }
  }
}

void sub_1A495D848(uint64_t a1)
{
  if (!qword_1EB145C78)
  {
    sub_1A495D8D4(255);
    sub_1A495D958(255, &qword_1EB1277C8, MEMORY[0x1E69E6370], MEMORY[0x1E6980A08]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB145C78);
    }
  }
}

void sub_1A495D8D4(uint64_t a1)
{
  if (!qword_1EB145C80)
  {
    sub_1A495D958(255, &qword_1EB122138, &type metadata for LemonadeShelvesLayoutStyle, MEMORY[0x1E6980A08]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB145C80);
    }
  }
}

void sub_1A495D958(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1A495D9A8()
{
  result = qword_1EB145C90;
  if (!qword_1EB145C90)
  {
    sub_1A495D8D4(255);
    sub_1A495DA60();
    sub_1A495DAB4(&qword_1EB122140, &qword_1EB122138, MEMORY[0x1E6980A08], MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB145C90);
  }

  return result;
}

unint64_t sub_1A495DA60()
{
  result = qword_1EB1E2280[0];
  if (!qword_1EB1E2280[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1E2280);
  }

  return result;
}

uint64_t sub_1A495DAB4(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void, uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1A495D958(255, a2, &type metadata for LemonadeShelvesLayoutStyle, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A495DB04()
{
  result = qword_1EB145C98;
  if (!qword_1EB145C98)
  {
    sub_1A4958458(255, &qword_1EB145C58, sub_1A495D5F8, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB145C98);
  }

  return result;
}

unint64_t sub_1A495DB8C()
{
  result = qword_1EB145CB0;
  if (!qword_1EB145CB0)
  {
    sub_1A4958458(255, &qword_1EB145C38, MEMORY[0x1E697E730], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB145CB0);
  }

  return result;
}

unint64_t sub_1A495DC14()
{
  result = qword_1EB145CC0;
  if (!qword_1EB145CC0)
  {
    sub_1A495D338(255);
    sub_1A495BC54(&qword_1EB145CC8, sub_1A495D43C, MEMORY[0x1E697D6E0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB145CC0);
  }

  return result;
}

void sub_1A495DCBC(uint64_t a1)
{
  if (!qword_1EB145CE0)
  {
    sub_1A495D338(255);
    sub_1A40F0930();
    v1 = sub_1A52483B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB145CE0);
    }
  }
}

uint64_t sub_1A495DD28@<X0>(uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  sub_1A495D43C(0);
  sub_1A524A024();
  sub_1A495D564(0);
  sub_1A495BC54(&qword_1EB145CA0, sub_1A495D564, MEMORY[0x1E69817F8]);
  return sub_1A5247D14();
}

void sub_1A495DDFC(uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v4 = *(v2 + 24);
  *a2 = sub_1A5249314();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  sub_1A495C410(0, &qword_1EB145CE8, &qword_1EB145C58, sub_1A495D5F8);
  sub_1A495B340(v5, v4, (a2 + *(v6 + 44)));
}

double sub_1A495DE78(char *a1)
{
  sub_1A52486A4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A40A51C0();
  sub_1A524C9C4();
  sub_1A524C9C4();
  if (v2 != v4 || v3 != v5)
  {
    sub_1A524EAB4();
  }

  sub_1A495D848(0);
  sub_1A495CAC4(&qword_1EB145C88, sub_1A495D848, sub_1A495D9A8, sub_1A440C518);
  sub_1A524AB74();

  return result;
}

void sub_1A495E048(uint64_t a1)
{
  if (!qword_1EB145CF0)
  {
    sub_1A4958458(255, &qword_1EB145B00, sub_1A49584BC, MEMORY[0x1E6981F40]);
    sub_1A449A6BC();
    v1 = sub_1A52483B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB145CF0);
    }
  }
}

uint64_t sub_1A495E0E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1A495E1A0(uint64_t a1)
{
  if (!qword_1EB145D08)
  {
    sub_1A4958458(255, &qword_1EB145D10, sub_1A495E234, MEMORY[0x1E6981F40]);
    sub_1A495E294();
    v1 = sub_1A524B8B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB145D08);
    }
  }
}

void sub_1A495E234()
{
  if (!qword_1EB145D18)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB145D18);
    }
  }
}

unint64_t sub_1A495E294()
{
  result = qword_1EB145D20;
  if (!qword_1EB145D20)
  {
    sub_1A4958458(255, &qword_1EB145D10, sub_1A495E234, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB145D20);
  }

  return result;
}

unint64_t sub_1A495E31C()
{
  result = qword_1EB145D28;
  if (!qword_1EB145D28)
  {
    sub_1A495C190(255, &qword_1EB145CF8, sub_1A495E178, sub_1A3E42C88);
    sub_1A495E3FC();
    sub_1A495BC54(&qword_1EB128A00, sub_1A3E42C88, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB145D28);
  }

  return result;
}

unint64_t sub_1A495E3FC()
{
  result = qword_1EB145D30;
  if (!qword_1EB145D30)
  {
    sub_1A495E178(255);
    sub_1A495BC54(&qword_1EB145D38, sub_1A495E1A0, MEMORY[0x1E6981880]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB145D30);
  }

  return result;
}

uint64_t sub_1A495E4AC()
{
  v0 = swift_allocObject();
  *(v0 + 16) = sub_1A495EEB8();
  return v0;
}

uint64_t sub_1A495E540()
{
  v4 = (*(*v0 + 144) + **(*v0 + 144));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1A495E650;

  return v4();
}

uint64_t sub_1A495E650(uint64_t a1)
{
  *(*v1 + 24) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1A495E750, 0, 0);
}

uint64_t sub_1A495E7E8()
{
  v1 = (*(**(v0 + 16) + 136))();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1A495E8AC()
{
  v1 = (*(**(v0 + 16) + 152))();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1A495E980()
{
  v4 = (*(**v0 + 144) + **(**v0 + 144));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1A3E64928;

  return v4();
}

uint64_t sub_1A495EAD8()
{
  v4 = (*(**v0 + 128) + **(**v0 + 128));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1A3E91FC0;

  return v4();
}

uint64_t sub_1A495EC30()
{
  v4 = (*(**v0 + 160) + **(**v0 + 160));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1A3E91FC0;

  return v4();
}

uint64_t sub_1A495EE14(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = (*(**a1 + 88))();
  v4 = (*(*v2 + 88))();
  v5 = sub_1A3C9DF9C(v3, v4);

  return v5 & 1;
}

uint64_t sub_1A495EEB8()
{
  v0 = type metadata accessor for LemonadeBookmark.CollectionIdentifier(0);
  MEMORY[0x1EEE9AC00](v0);
  v2 = (&v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A495F8DC(0);
  v3 = *(type metadata accessor for LemonadeBookmark(0) - 8);
  v4 = *(v3 + 72);
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1A5347440;
  *v2 = 0x6D75626C41;
  v2[1] = 0xE500000000000000;
  v2[2] = 0x3FB999999999999ALL;
  swift_storeEnumTagMultiPayload();
  v7 = sub_1A3FA19AC();
  sub_1A3F9DA60(v7, v8, 0, v2, v6 + v5);
  *v2 = 1885958740;
  v2[1] = 0xE400000000000000;
  v2[2] = 0x3FC999999999999ALL;
  swift_storeEnumTagMultiPayload();
  v9 = sub_1A3FA19AC();
  sub_1A3F9DA60(v9, v10, 1, v2, v6 + v5 + v4);
  *v2 = 0x79726F6D654DLL;
  v2[1] = 0xE600000000000000;
  v2[2] = 0x3FD3333333333333;
  swift_storeEnumTagMultiPayload();
  v11 = sub_1A3FA19AC();
  sub_1A3F9DA60(v11, v12, 2, v2, v6 + v5 + 2 * v4);
  *v2 = 0x795420616964654DLL;
  v2[1] = 0xEA00000000006570;
  v2[2] = 0x3FD999999999999ALL;
  swift_storeEnumTagMultiPayload();
  v13 = sub_1A3FA19AC();
  sub_1A3F9DA60(v13, v14, 6, v2, v6 + v5 + 3 * v4);
  *v2 = 0x746E657645;
  v2[1] = 0xE500000000000000;
  v2[2] = 0x3FE0000000000000;
  swift_storeEnumTagMultiPayload();
  v15 = sub_1A3FA19AC();
  sub_1A3F9DA60(v15, v16, 3, v2, v6 + v5 + 4 * v4);
  *v2 = 0x6E6F73726550;
  v2[1] = 0xE600000000000000;
  v2[2] = 0x3FE3333333333333;
  swift_storeEnumTagMultiPayload();
  v17 = sub_1A3FA19AC();
  sub_1A3F9DA60(v17, v18, 4, v2, v6 + v5 + 5 * v4);
  *v2 = 0x72476C6169636F53;
  v2[1] = 0xEB0000000070756FLL;
  v2[2] = 0x3FE6666666666666;
  swift_storeEnumTagMultiPayload();
  v19 = sub_1A3FA19AC();
  sub_1A3F9DA60(v19, v20, 5, v2, v6 + v5 + 6 * v4);
  v26 = v6;
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1A52F8E10;
  *v2 = 7364941;
  v2[1] = 0xE300000000000000;
  v2[2] = 0x3FE999999999999ALL;
  swift_storeEnumTagMultiPayload();
  v22 = sub_1A3FA19AC();
  sub_1A3F9DA60(v22, v23, 10, v2, v21 + v5);
  sub_1A43154FC(v21);
  return v26;
}

void sub_1A495F250(uint64_t a1)
{
  v2 = type metadata accessor for LemonadeBookmark.CollectionIdentifier(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = (v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5[1] = a1;
  sub_1A495F8DC(0);
  type metadata accessor for LemonadeBookmark(0);
  *(swift_allocObject() + 16) = xmmword_1A52FF950;
  *v4 = 0x736569666C6553;
  v4[1] = 0xE700000000000000;
  v4[2] = 0x3FD5C28F5C28F5C3;
  swift_storeEnumTagMultiPayload();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A495F46C(uint64_t a1, uint64_t a2)
{
  result = sub_1A495F894(&qword_1EB145D40, a2, type metadata accessor for LemonadeMockBookmarksDataSource, &unk_1A5376B9C);
  *(a1 + 8) = result;
  return result;
}

uint64_t dispatch thunk of LemonadeBookmarksDataSource.defaultBookmarks.getter(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 16) + **(a2 + 16));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A3E64928;

  return v7(a1, a2);
}

uint64_t dispatch thunk of LemonadeBookmarksDataSource.suggestedBookmarks.getter(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 32) + **(a2 + 32));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A3E91FC0;

  return v7(a1, a2);
}

uint64_t dispatch thunk of LemonadeBookmarksDataSource.bookmarks.getter(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 48) + **(a2 + 48));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A3E91FC0;

  return v7(a1, a2);
}

uint64_t sub_1A495F894(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void sub_1A495F8DC(uint64_t a1)
{
  if (!qword_1EB126280)
  {
    type metadata accessor for LemonadeBookmark(255);
    v1 = sub_1A524EA54();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB126280);
    }
  }
}

uint64_t sub_1A495F934()
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
  __swift_allocate_value_buffer(v6, qword_1EB1E2428);
  __swift_project_value_buffer(v6, qword_1EB1E2428);
  sub_1A524C5B4();
  sub_1A5241244();
  (*(v1 + 104))(v3, *MEMORY[0x1E6968DF0], v0);
  return sub_1A5240BC4();
}

uint64_t (*static DuplicateAssetsIntent.title.modify(uint64_t a1, double a2))(uint64_t a1)
{
  if (qword_1EB1E2420 != -1)
  {
    swift_once();
  }

  v2 = sub_1A5240BB4();
  __swift_project_value_buffer(v2, qword_1EB1E2428);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1A495FC24@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB1E2420 != -1)
  {
    swift_once();
  }

  v3 = sub_1A5240BB4();
  v4 = __swift_project_value_buffer(v3, qword_1EB1E2428);
  swift_beginAccess();
  return (*(*(v3 - 8) + 16))(a1, v4, v3);
}

uint64_t sub_1A495FCE4(uint64_t a1, double a2)
{
  if (qword_1EB1E2420 != -1)
  {
    swift_once();
  }

  v3 = sub_1A5240BB4();
  v4 = __swift_project_value_buffer(v3, qword_1EB1E2428);
  swift_beginAccess();
  (*(*(v3 - 8) + 24))(v4, a1, v3);
  return swift_endAccess();
}

uint64_t static DuplicateAssetsIntent.parameterSummary.getter()
{
  sub_1A496421C(0, &qword_1EB145D48, MEMORY[0x1E695A4A8]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1A496421C(0, &qword_1EB145D58, MEMORY[0x1E695A4A0]);
  MEMORY[0x1EEE9AC00](v1);
  sub_1A495FF70();
  sub_1A5240314();
  sub_1A5240304();
  swift_getKeyPath();
  sub_1A495FFE8(0);
  sub_1A52402F4();

  sub_1A5240304();
  sub_1A5240324();
  return sub_1A52402E4();
}

unint64_t sub_1A495FF70()
{
  result = qword_1EB145D50;
  if (!qword_1EB145D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB145D50);
  }

  return result;
}

void sub_1A495FFE8(uint64_t a1)
{
  if (!qword_1EB145D60)
  {
    sub_1A3F57E84(255);
    v1 = sub_1A524ED44();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB145D60);
    }
  }
}

uint64_t DuplicateAssetsIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v26 = a1;
  v1 = sub_1A5240334();
  v24 = *(v1 - 8);
  v25 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v23 = v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1A5240184();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v22 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4964280(0, &qword_1EB12B008, MEMORY[0x1E6968E10], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v21 = v20 - v6;
  v7 = sub_1A5240BA4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1A5241284();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v12 = sub_1A524C624();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v20[0] = sub_1A5240BB4();
  v13 = *(v20[0] - 8);
  MEMORY[0x1EEE9AC00](v20[0]);
  sub_1A3F57E84(0);
  v20[1] = v14;
  sub_1A524C5B4();
  sub_1A5241244();
  v15 = *MEMORY[0x1E6968DF0];
  v16 = *(v8 + 104);
  v16(v10, v15, v7);
  sub_1A5240BC4();
  sub_1A524C5B4();
  sub_1A5241244();
  v16(v10, v15, v7);
  v17 = v21;
  sub_1A5240BC4();
  (*(v13 + 56))(v17, 0, 1, v20[0]);
  v27 = 0;
  sub_1A5240174();
  (*(v24 + 104))(v23, *MEMORY[0x1E695A500], v25);
  sub_1A3F587A8();
  sub_1A3F58824();
  result = sub_1A5240034();
  v19 = v26;
  *v26 = result;
  *(v19 + 8) = 0;
  return result;
}

uint64_t DuplicateAssetsIntent.perform()(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 40) = a1;
  *(v2 + 48) = v3;
  *(v2 + 25) = *(v1 + 8);
  sub_1A524CC54();
  *(v2 + 56) = sub_1A524CC44();
  v5 = sub_1A524CBC4();
  *(v2 + 64) = v5;
  *(v2 + 72) = v4;

  return MEMORY[0x1EEE6DFA0](sub_1A496058C, v5, v4);
}

uint64_t sub_1A496058C()
{
  v1 = *(v0 + 25);
  v2 = *(v0 + 48);
  *(v0 + 16) = v2;
  *(v0 + 24) = v1;
  sub_1A523FF44();
  v3 = *(*(v0 + 32) + 16);

  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v5 = swift_task_alloc();
  *(v0 + 88) = v5;
  sub_1A495FF70();
  *v5 = v0;
  v5[1] = sub_1A47D2970;
  v6 = *(v0 + 40);

  return AppIntent.px_performWithLoggingAndAnalytics(intentName:category:count:_:)(v6, 0, 0, 0, 0, v3, 0, &unk_1A5376C68);
}

uint64_t sub_1A49606F4(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 57) = a3;
  *(v3 + 96) = a1;
  *(v3 + 104) = a2;
  sub_1A524CC54();
  *(v3 + 112) = sub_1A524CC44();
  v5 = sub_1A524CBC4();
  *(v3 + 120) = v5;
  *(v3 + 128) = v4;

  return MEMORY[0x1EEE6DFA0](sub_1A4960790, v5, v4);
}

uint64_t sub_1A4960790(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 57);
  v4 = *(v2 + 104);
  IsLaunchedToExecuteTests = PFProcessIsLaunchedToExecuteTests();
  sub_1A523FF44();
  v6 = *(v2 + 80);
  *(v2 + 136) = v6;
  *(v2 + 48) = v4;
  *(v2 + 56) = v3;
  sub_1A49642E4();
  v7 = sub_1A5240344();
  *(v2 + 144) = v7;
  *(v2 + 64) = v4;
  *(v2 + 72) = v3;
  sub_1A495FF70();
  v8 = AppIntent.px_intentName.getter(&type metadata for DuplicateAssetsIntent);
  v10 = v9;
  *(v2 + 152) = v9;
  v11 = swift_task_alloc();
  *(v2 + 160) = v11;
  *v11 = v2;
  v11[1] = sub_1A49608E4;
  v12 = *(v2 + 57);
  v13 = *(v2 + 104);

  return sub_1A4960C64(v2 + 16, v6, v7, IsLaunchedToExecuteTests & v3, v8, v10, v13, v12);
}

uint64_t sub_1A49608E4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 168) = v1;

  if (v1)
  {
    v5 = *(v4 + 144);

    v6 = *(v4 + 120);
    v7 = *(v4 + 128);
    v8 = sub_1A4960B50;
  }

  else
  {

    *(v4 + 176) = a1;
    v6 = *(v4 + 120);
    v7 = *(v4 + 128);
    v8 = sub_1A4960A3C;
  }

  return MEMORY[0x1EEE6DFA0](v8, v6, v7);
}

uint64_t sub_1A4960A3C()
{
  v1 = v0[22];

  v2 = v0[2];
  v3 = v0[3];
  v0[11] = v1;
  v0[4] = v2;
  v0[5] = v3;
  sub_1A3C2DF58(0, &qword_1EB12EEB8, &type metadata for AssetEntity, MEMORY[0x1E69E62F8]);
  sub_1A3F57F0C();
  sub_1A454AE30();
  sub_1A523FDC4();

  v4 = v0[1];

  return v4();
}

uint64_t sub_1A4960B50()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A4960BB4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1A3D60150;

  return sub_1A49606F4(a1, v4, v5);
}

uint64_t sub_1A4960C64(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 209) = a8;
  *(v8 + 48) = a6;
  *(v8 + 56) = a7;
  *(v8 + 208) = a4;
  *(v8 + 32) = a3;
  *(v8 + 40) = a5;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = sub_1A5246F24();
  *(v8 + 64) = v9;
  *(v8 + 72) = *(v9 - 8);
  *(v8 + 80) = swift_task_alloc();
  *(v8 + 88) = swift_task_alloc();
  *(v8 + 96) = swift_task_alloc();
  sub_1A524CC54();
  *(v8 + 104) = sub_1A524CC44();
  v11 = sub_1A524CBC4();
  *(v8 + 112) = v11;
  *(v8 + 120) = v10;

  return MEMORY[0x1EEE6DFA0](sub_1A4960D80, v11, v10);
}

void sub_1A4960D80()
{
  v1 = v0;
  if (!(PXAppIntentsAssets(for:)(*(v0 + 24)) >> 62))
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  sub_1A3C52C70(0, &qword_1EB1265D0, 0x1E6978958);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A49611DC(char a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 210) = a1;
  *(v4 + 184) = v1;

  v5 = *(v3 + 120);
  v6 = *(v3 + 112);
  if (v1)
  {
    v7 = sub_1A496191C;
  }

  else
  {
    v7 = sub_1A496173C;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1A4961324()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v3 = *(v2 + 112);
    v4 = *(v2 + 120);
    v5 = sub_1A49616A4;
  }

  else
  {

    v3 = *(v2 + 112);
    v4 = *(v2 + 120);
    v5 = sub_1A4961440;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

void sub_1A4961440()
{
  v18 = v0;
  v1 = v0[21];

  v2 = [v1 createdAssets];
  if (v2)
  {
    v3 = v2;
    v4 = v0[17];
    v5 = v0[16];
    v6 = v0[11];
    v7 = v0[8];
    v8._rawValue = v0[3];
    static AssetEntity.entities(for:)(v2);
    v9 = PXAppIntentsDebugDescription(for:)(v8);
    v4(v6, v5, v7);
    v10 = sub_1A5246F04();
    v11 = sub_1A524D264();
    v12 = os_log_type_enabled(v10, v11);
    v13 = v0[19];
    v14 = v0[11];
    v16 = v0[8];
    if (v12)
    {
      v15 = swift_slowAlloc();
      v17[0] = swift_slowAlloc();
      *v15 = 136446210;
      sub_1A3C2EF94(v9._countAndFlagsBits, v9._object, v17);
    }

    v13(v14, v16);
  }

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A49616A4()
{
  v1 = v0[20];
  v2 = v0[21];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1A496173C()
{
  (*(v0 + 136))(*(v0 + 80), *(v0 + 128), *(v0 + 64));
  v1 = sub_1A5246F04();
  v2 = sub_1A524D264();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 210);
    v4 = swift_slowAlloc();
    *v4 = 67109120;
    *(v4 + 4) = v3;
    _os_log_impl(&dword_1A3C1C000, v1, v2, "Choice: { duplicate as live photos as stills: %{BOOL}d }", v4, 8u);
    MEMORY[0x1A590EEC0](v4, -1, -1);
  }

  v5 = *(v0 + 210);
  v6 = *(v0 + 168);
  v7 = *(v0 + 152);
  v8 = *(v0 + 80);
  v9 = *(v0 + 64);

  v7(v8, v9);
  [v6 setDuplicatesAsStill_];
  v10 = [*(v0 + 168) actionProgress];
  if (v10)
  {
    v11 = v10;
    [*(v0 + 32) addChild:v10 withPendingUnitCount:{objc_msgSend(*(v0 + 32), sel_totalUnitCount)}];
  }

  v12 = *(v0 + 168);
  v13 = v12;
  v14 = swift_task_alloc();
  *(v0 + 192) = v14;
  *v14 = v0;
  v14[1] = sub_1A4961324;
  v15 = *(v0 + 40);
  v16 = *(v0 + 48);

  return sub_1A4899AD4(v12, v15, v16);
}

uint64_t sub_1A496191C()
{
  v1 = v0[20];
  v2 = v0[21];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1A49619B0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 64) = a8;
  *(v9 + 72) = v8;
  *(v9 + 48) = a6;
  *(v9 + 56) = a7;
  *(v9 + 224) = a4;
  *(v9 + 32) = a3;
  *(v9 + 40) = a5;
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v10 = sub_1A5246F24();
  *(v9 + 80) = v10;
  *(v9 + 88) = *(v10 - 8);
  *(v9 + 96) = swift_task_alloc();
  *(v9 + 104) = swift_task_alloc();
  *(v9 + 112) = swift_task_alloc();
  sub_1A524CC54();
  *(v9 + 120) = sub_1A524CC44();
  v12 = sub_1A524CBC4();
  *(v9 + 128) = v12;
  *(v9 + 136) = v11;

  return MEMORY[0x1EEE6DFA0](sub_1A4961ACC, v12, v11);
}

void sub_1A4961ACC()
{
  v1 = v0;
  if (!(PXAppIntentsAssets(for:)(*(v0 + 24)) >> 62))
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  sub_1A3C52C70(0, &qword_1EB1265D0, 0x1E6978958);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A4961F28(char a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 225) = a1;
  *(v4 + 200) = v1;

  v5 = *(v3 + 136);
  v6 = *(v3 + 128);
  if (v1)
  {
    v7 = sub_1A49625D0;
  }

  else
  {
    v7 = sub_1A4962070;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1A4962070()
{
  (*(v0 + 152))(*(v0 + 104), *(v0 + 144), *(v0 + 80));
  v1 = sub_1A5246F04();
  v2 = sub_1A524D264();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 225);
    v4 = swift_slowAlloc();
    *v4 = 67109120;
    *(v4 + 4) = v3;
    _os_log_impl(&dword_1A3C1C000, v1, v2, "Choice: { duplicate as live photos as stills: %{BOOL}d }", v4, 8u);
    MEMORY[0x1A590EEC0](v4, -1, -1);
  }

  v5 = *(v0 + 225);
  v6 = *(v0 + 184);
  v7 = *(v0 + 168);
  v8 = *(v0 + 104);
  v9 = *(v0 + 80);

  v7(v8, v9);
  [v6 setDuplicatesAsStill_];
  v10 = [*(v0 + 184) actionProgress];
  if (v10)
  {
    v11 = v10;
    [*(v0 + 32) addChild:v10 withPendingUnitCount:{objc_msgSend(*(v0 + 32), sel_totalUnitCount)}];
  }

  v12 = *(v0 + 184);
  v13 = v12;
  v14 = swift_task_alloc();
  *(v0 + 208) = v14;
  *v14 = v0;
  v14[1] = sub_1A4962250;
  v15 = *(v0 + 40);
  v16 = *(v0 + 48);

  return sub_1A4899AD4(v12, v15, v16);
}

uint64_t sub_1A4962250()
{
  v2 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v3 = *(v2 + 128);
    v4 = *(v2 + 136);
    v5 = sub_1A4962664;
  }

  else
  {

    v3 = *(v2 + 128);
    v4 = *(v2 + 136);
    v5 = sub_1A496236C;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

void sub_1A496236C()
{
  v18 = v0;
  v1 = v0[23];

  v2 = [v1 createdAssets];
  if (v2)
  {
    v3 = v2;
    v4 = v0[19];
    v5 = v0[18];
    v6 = v0[12];
    v7 = v0[10];
    v8._rawValue = v0[3];
    static AssetEntity.entities(for:)(v2);
    v9 = PXAppIntentsDebugDescription(for:)(v8);
    v4(v6, v5, v7);
    v10 = sub_1A5246F04();
    v11 = sub_1A524D264();
    v12 = os_log_type_enabled(v10, v11);
    v13 = v0[21];
    v14 = v0[12];
    v16 = v0[10];
    if (v12)
    {
      v15 = swift_slowAlloc();
      v17[0] = swift_slowAlloc();
      *v15 = 136446210;
      sub_1A3C2EF94(v9._countAndFlagsBits, v9._object, v17);
    }

    v13(v14, v16);
  }

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A49625D0()
{
  v1 = v0[22];
  v2 = v0[23];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1A4962664()
{
  v1 = v0[22];
  v2 = v0[23];

  v3 = v0[1];

  return v3();
}

void (*DuplicateAssetsIntent.assets.modify(uint64_t *a1))(void *a1)
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

uint64_t sub_1A49627D4(uint64_t a1, uint64_t a2)
{
  sub_1A496421C(0, &qword_1EB145D48, MEMORY[0x1E695A4A8]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1A496421C(0, &qword_1EB145D58, MEMORY[0x1E695A4A0]);
  MEMORY[0x1EEE9AC00](v3);
  sub_1A5240314();
  sub_1A5240304();
  swift_getKeyPath();
  sub_1A495FFE8(0);
  sub_1A52402F4();

  sub_1A5240304();
  sub_1A5240324();
  return sub_1A52402E4();
}

uint64_t sub_1A4962990(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3D60150;

  return DuplicateAssetsIntent.perform()(a1);
}

uint64_t sub_1A4962A2C(uint64_t a1)
{
  v2 = sub_1A495FF70();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

void sub_1A4962A68(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (!sub_1A524E2B4())
  {
    goto LABEL_9;
  }

LABEL_3:
  if ((a1 & 0xC000000000000001) != 0)
  {
LABEL_10:
    v2 = MEMORY[0x1A59097F0](0, a1);
    goto LABEL_6;
  }

  if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_12;
  }

  v2 = *(a1 + 32);
LABEL_6:
  v3 = v2;
  v4 = [v2 photoLibrary];

  if (v4)
  {
    sub_1A4440428(a1, v5);

    sub_1A524C674();
    v6 = objc_allocWithZone(MEMORY[0x1E69788E0]);
    v7 = v4;
    v8 = sub_1A524CA14();

    v9 = sub_1A524C634();

    v10 = [v6 initWithObjects:v8 photoLibrary:v7 fetchType:v9 fetchPropertySets:0 identifier:0 registerIfNeeded:0];

    v11 = [objc_allocWithZone(PXPhotosDataSourceConfiguration) initWithAssetFetchResult:v10 options:0];
    v12 = [objc_allocWithZone(PXPhotosDataSource) initWithPhotosDataSourceConfiguration_];
    v13 = [objc_allocWithZone(PXPhotoKitAssetsDataSourceManager) initWithPhotosDataSource_];
    v14 = [v13 dataSource];
    v15 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v16 = [v14 allItemIndexPaths];
    [v15 initWithDataSource:v14 selectedIndexPaths:v16];

    return;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_1A4962CBC(uint64_t a1, uint64_t a2, char a3, double a4)
{
  *(v4 + 32) = a1;
  sub_1A4964280(0, &qword_1EB1260E8, MEMORY[0x1E6959F70], MEMORY[0x1E69E6720]);
  *(v4 + 40) = swift_task_alloc();
  sub_1A52400D4();
  *(v4 + 48) = swift_task_alloc();
  sub_1A5240BB4();
  *(v4 + 56) = swift_task_alloc();
  v7 = sub_1A5240104();
  *(v4 + 64) = v7;
  *(v4 + 72) = *(v7 - 8);
  *(v4 + 80) = swift_task_alloc();
  *(v4 + 88) = swift_task_alloc();
  *(v4 + 96) = swift_task_alloc();
  *(v4 + 104) = swift_task_alloc();
  *(v4 + 16) = a2;
  *(v4 + 24) = a3;
  sub_1A524CC54();
  *(v4 + 112) = sub_1A524CC44();
  v9 = sub_1A524CBC4();
  *(v4 + 120) = v9;
  *(v4 + 128) = v8;

  return MEMORY[0x1EEE6DFA0](sub_1A4962EA0, v9, v8);
}

void sub_1A4962EA0()
{
  v1 = v0[4];
  v2 = [v1 extractStillConfirmationAlertTitle];
  sub_1A524C674();
  v4 = v3;

  v0[17] = v4;
  v5 = [v1 extractStillConfirmationAlertAsLiveButtonTitle];
  sub_1A524C674();
  v7 = v6;

  v0[18] = v7;
  v8 = [v1 extractStillConfirmationAlertAsStillButtonTitle];
  sub_1A524C674();
  v10 = v9;

  v0[19] = v10;
  sub_1A52400F4();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A49631B4()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  *(*v1 + 176) = v0;

  sub_1A3F5CBFC(v3);

  if (v0)
  {

    v4 = *(v2 + 120);
    v5 = *(v2 + 128);
    v6 = sub_1A496355C;
  }

  else
  {
    v4 = *(v2 + 120);
    v5 = *(v2 + 128);
    v6 = sub_1A4963330;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

uint64_t sub_1A4963330()
{
  sub_1A4964134(&qword_1EB12EF00, MEMORY[0x1E695A268], MEMORY[0x1E695A270]);
  v1 = sub_1A524C594();
  if ((v1 & 1) == 0 && (sub_1A524C594() & 1) == 0)
  {
    return sub_1A524E6E4();
  }

  v2 = v0[13];
  v4 = v0[11];
  v3 = v0[12];
  v11 = v1;
  v5 = v0[9];
  v6 = v0[10];
  v7 = v0[8];

  v8 = *(v5 + 8);
  v8(v6, v7);
  v8(v4, v7);
  v8(v3, v7);
  v8(v2, v7);

  v9 = v0[1];

  return v9((v11 & 1) == 0);
}

uint64_t sub_1A496355C()
{
  v1 = v0[13];
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[9];
  v5 = v0[8];

  v6 = *(v4 + 8);
  v6(v3, v5);
  v6(v2, v5);
  v6(v1, v5);

  v7 = v0[1];

  return v7(0);
}

uint64_t sub_1A4963670(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v5[4] = a3;
  v5[5] = v4;
  v5[2] = a1;
  v5[3] = a2;
  sub_1A4964280(0, &qword_1EB1260E8, MEMORY[0x1E6959F70], MEMORY[0x1E69E6720]);
  v5[6] = swift_task_alloc();
  sub_1A52400D4();
  v5[7] = swift_task_alloc();
  sub_1A5240BB4();
  v5[8] = swift_task_alloc();
  v6 = sub_1A5240104();
  v5[9] = v6;
  v5[10] = *(v6 - 8);
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  sub_1A524CC54();
  v5[15] = sub_1A524CC44();
  v8 = sub_1A524CBC4();
  v5[16] = v8;
  v5[17] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1A4963840, v8, v7);
}

void sub_1A4963840()
{
  v1 = v0[2];
  v2 = [v1 extractStillConfirmationAlertTitle];
  sub_1A524C674();
  v4 = v3;

  v0[18] = v4;
  v5 = [v1 extractStillConfirmationAlertAsLiveButtonTitle];
  sub_1A524C674();
  v7 = v6;

  v0[19] = v7;
  v8 = [v1 extractStillConfirmationAlertAsStillButtonTitle];
  sub_1A524C674();
  v10 = v9;

  v0[20] = v10;
  sub_1A52400F4();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A4963B54()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  *(*v1 + 184) = v0;

  sub_1A3F5CBFC(v3);

  if (v0)
  {

    v4 = *(v2 + 128);
    v5 = *(v2 + 136);
    v6 = sub_1A4963EFC;
  }

  else
  {
    v4 = *(v2 + 128);
    v5 = *(v2 + 136);
    v6 = sub_1A4963CD0;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

uint64_t sub_1A4963CD0()
{
  sub_1A4964134(&qword_1EB12EF00, MEMORY[0x1E695A268], MEMORY[0x1E695A270]);
  v1 = sub_1A524C594();
  if ((v1 & 1) == 0 && (sub_1A524C594() & 1) == 0)
  {
    return sub_1A524E6E4();
  }

  v2 = v0[14];
  v4 = v0[12];
  v3 = v0[13];
  v11 = v1;
  v5 = v0[10];
  v6 = v0[11];
  v7 = v0[9];

  v8 = *(v5 + 8);
  v8(v6, v7);
  v8(v4, v7);
  v8(v3, v7);
  v8(v2, v7);

  v9 = v0[1];

  return v9((v11 & 1) == 0);
}

uint64_t sub_1A4963EFC()
{
  v1 = v0[14];
  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[10];
  v5 = v0[9];

  v6 = *(v4 + 8);
  v6(v3, v5);
  v6(v2, v5);
  v6(v1, v5);

  v7 = v0[1];

  return v7(0);
}

unint64_t sub_1A4964010(uint64_t a1)
{
  result = sub_1A495FF70();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A4964040()
{
  result = qword_1EB145D70;
  if (!qword_1EB145D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB145D70);
  }

  return result;
}

unint64_t sub_1A4964098()
{
  result = qword_1EB145D78;
  if (!qword_1EB145D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB145D78);
  }

  return result;
}

uint64_t sub_1A4964134(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1A49641A8()
{
  result = qword_1EB145D80;
  if (!qword_1EB145D80)
  {
    sub_1A496421C(255, &qword_1EB145D88, MEMORY[0x1E695A488]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB145D80);
  }

  return result;
}

void sub_1A496421C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1A495FF70();
    v7 = a3(a1, &type metadata for DuplicateAssetsIntent, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1A4964280(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1A49642E4()
{
  result = qword_1EB145D90;
  if (!qword_1EB145D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB145D90);
  }

  return result;
}

uint64_t LRUCache.__allocating_init(countLimit:)(uint64_t a1, char a2)
{
  v4 = swift_allocObject();
  LRUCache.init(countLimit:)(a1, a2 & 1);
  return v4;
}

uint64_t *LRUCache.init(countLimit:)(uint64_t a1, int a2)
{
  v13 = a2;
  v14 = a1;
  v12 = *v2;
  v3 = sub_1A524D464();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A524D414();
  MEMORY[0x1EEE9AC00](v7);
  v8 = sub_1A524BF64();
  MEMORY[0x1EEE9AC00](v8 - 8);
  sub_1A3C29A58(0, v9);
  sub_1A524BF14();
  v15 = MEMORY[0x1E69E7CC0];
  sub_1A444B674(&qword_1EB126AD0, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  sub_1A421EB84(0);
  sub_1A444B674(&qword_1EB126E30, sub_1A421EB84, MEMORY[0x1E69E6328]);
  sub_1A524E224();
  (*(v4 + 104))(v6, *MEMORY[0x1E69E8090], v3);
  v2[3] = sub_1A524D4B4();
  swift_getTupleTypeMetadata2();
  v2[4] = sub_1A524C384();
  v10 = 8;
  if ((v13 & 1) == 0)
  {
    v10 = v14;
  }

  v2[2] = v10;
  return v2;
}

void sub_1A4964654(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v43 = a2;
  v44 = a3;
  v36 = a4;
  v41 = *v4;
  v6 = *(v41 + 80);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v35 - v9;
  v12 = *(v11 + 88);
  v13 = sub_1A524DF24();
  v39 = *(v13 - 8);
  v40 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v38 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16.n128_f64[0] = MEMORY[0x1EEE9AC00](v15);
  v18 = &v35 - v17;
  v37 = *(v12 - 8);
  (*(v37 + 56))(&v35 - v17, 1, 1, v12, v16);
  v42 = v4[3];
  (*(v7 + 16))(v10, a1, v6);
  v19 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v20 = (v8 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  v22 = v41;
  v21[2] = v6;
  v21[3] = v12;
  v41 = v12;
  v21[4] = *(v22 + 96);
  v21[5] = v4;
  v23 = v21 + v19;
  v24 = v18;
  (*(v7 + 32))(v23, v10, v6);
  *(v21 + v20) = v18;
  v25 = (v21 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8));
  v26 = v44;
  *v25 = v43;
  v25[1] = v26;
  v27 = swift_allocObject();
  *(v27 + 16) = sub_1A4965268;
  *(v27 + 24) = v21;
  aBlock[4] = sub_1A3C7146C;
  aBlock[5] = v27;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C71444;
  aBlock[3] = &block_descriptor_309;
  v28 = _Block_copy(aBlock);

  dispatch_sync(v42, v28);
  _Block_release(v28);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v31 = v38;
    v30 = v39;
    v32 = v40;
    (*(v39 + 16))(v38, v24, v40);
    v33 = v37;
    v34 = v41;
    if ((*(v37 + 48))(v31, 1, v41) != 1)
    {
      (*(v33 + 32))(v36, v31, v34);
      (*(v30 + 8))(v24, v32);

      return;
    }
  }

  __break(1u);
}

void sub_1A4964A6C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(__n128), uint64_t a5)
{
  v21 = a5;
  v22 = a4;
  v27 = a3;
  v7 = *a1;
  v8 = *(*a1 + 80);
  v26 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v25 = v18 - v9;
  v19 = sub_1A52414C4();
  v18[1] = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v18[0] = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v7 + 88);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v20 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  MEMORY[0x1EEE9AC00](v13);
  v14 = sub_1A524DF24();
  v15 = *(v14 - 8);
  v28 = v14;
  v29 = v15;
  MEMORY[0x1EEE9AC00](v14);
  v23 = v18 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  swift_beginAccess();
  v34 = a1[4];
  v30 = v8;
  v31 = v11;
  v32 = *(v7 + 96);
  v33 = a2;
  v24 = a2;
  sub_1A524CB74();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A4965268()
{
  v1 = (*(*(*(v0 + 16) - 8) + 80) + 48) & ~*(*(*(v0 + 16) - 8) + 80);
  v2 = (*(*(*(v0 + 16) - 8) + 64) + v1 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1A4964A6C(*(v0 + 40), v0 + v1, *(v0 + v2), *(v0 + ((v2 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v2 + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t LRUCache.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void sub_1A4965458(uint64_t a1)
{
  if (!qword_1EB145D98)
  {
    v2 = type metadata accessor for GenerativeStoryEventSuggestion(255);
    v5 = type metadata accessor for SendableTransfer(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1EB145D98);
    }
  }
}

uint64_t sub_1A49654B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for GenerativeStoryEventSuggestion(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4965564(a1, v6, type metadata accessor for GenerativeStoryEventSuggestion);
  SendableTransfer.init(wrappedValue:)(v6, v4, a2);
  return sub_1A49655CC(a1);
}

uint64_t sub_1A4965564(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A49655CC(uint64_t a1)
{
  v2 = type metadata accessor for GenerativeStoryEventSuggestion(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A4965628@<X0>(uint64_t *a1@<X8>)
{
  sub_1A4965458(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4965564(v1, v5, sub_1A4965458);
  a1[3] = type metadata accessor for GenerativeStoryEventSuggestion(0);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_1A49656D8(v5, boxed_opaque_existential_1);
}

uint64_t sub_1A49656D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenerativeStoryEventSuggestion(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1A4965740()
{
  sub_1A4965458(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  sub_1A4965564(v0, &v3 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), sub_1A4965458);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t type metadata accessor for LemonadeGenerativeMemoriesEventDisambiguationItem(uint64_t a1)
{
  result = qword_1EB1E29D0;
  if (!qword_1EB1E29D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A49658D0()
{
  sub_1A4965458(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1A4965564(v1, &v4 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), sub_1A4965458);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A4965978()
{
  sub_1A4965AF4(&qword_1EB130328, &unk_1A5376E70);

    ;
  }
}

void sub_1A49659D0()
{
  sub_1A4965AF4(&qword_1EB130328, &unk_1A5376E70);

    ;
  }
}

void sub_1A4965A88(uint64_t a1)
{
  sub_1A4965458(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1A4965AF4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for LemonadeGenerativeMemoriesEventDisambiguationItem(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1A4965B64(void *a1@<X0>, void *a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v6 = a5;
  *a6 = a1;
  *(a6 + 8) = a3;
  *(a6 + 9) = a4;
  *(a6 + 16) = a2;
  v10 = *(type metadata accessor for LemonadeSocialGroupSectionProvider(0) + 32);
  v12 = a2;
  v11 = a1;
  sub_1A4965BFC(a2, v6, a6 + v10);
}

uint64_t sub_1A4965BFC@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v21[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a1)
  {
    v9 = sub_1A437C79C();
    return sub_1A4967D90(v9, a3, type metadata accessor for LemonadeFeedBodyStyle);
  }

  else
  {
    sub_1A3C36888();
    v11 = sub_1A414CFC0(0);
    v12 = sub_1A3C47918();
    v14 = v13;
    v15 = sub_1A3C52D68();
    v17 = v16;
    v19 = v18;
    v20 = sub_1A3C4ED50(v15);
    v21[8] = 0;
    *v8 = sub_1A4965D6C;
    *(v8 + 1) = 0;
    v8[16] = 2;
    *(v8 + 3) = v11;
    v8[32] = 0;
    *(v8 + 5) = 0;
    *(v8 + 6) = 0;
    *(v8 + 7) = v12;
    *(v8 + 8) = v14;
    *(v8 + 9) = v15;
    *(v8 + 10) = v17;
    v8[88] = v19;
    v8[89] = v20;
    swift_storeEnumTagMultiPayload();
    return sub_1A437C3B8(v8, 1, a2 & 1, (a2 & 1) == 0, a3);
  }
}

uint64_t sub_1A4965D6C(uint64_t a1)
{
  v2 = sub_1A5242D14();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 != *MEMORY[0x1E69C21F0])
  {
    if (v7 == *MEMORY[0x1E69C2210])
    {
      return 2;
    }

    (*(v3 + 8))(v6, v2);
  }

  return 41;
}

uint64_t sub_1A4965F1C(uint64_t a1)
{
  v3 = type metadata accessor for LemonadeSocialGroupSectionProvider.PhotosSocialGroupView(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A496789C(0, &qword_1EB145DC0, sub_1A49662A0, type metadata accessor for LemonadeSocialGroupSectionProvider.PhotosSocialGroupView, MEMORY[0x1E697F948]);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v19 - v7;
  sub_1A49662A0(0);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v1 + 16);
  if (v14)
  {
    v15 = v14;
    sub_1A4966538(a1, v15);
    (*(v11 + 16))(v8, v13, v10);
    swift_storeEnumTagMultiPayload();
    sub_1A4967F1C(&qword_1EB145DF8, sub_1A49662A0, MEMORY[0x1E69C20C8]);
    sub_1A4966C74();
    sub_1A5249744();

    return (*(v11 + 8))(v13, v10);
  }

  else
  {
    v17 = *(v1 + 8);
    *v5 = a1;
    v5[8] = v17;
    v18 = *(v3 + 24);
    *&v5[v18] = swift_getKeyPath();
    sub_1A4966C10(0, &qword_1EB128A90, MEMORY[0x1E69C2948], MEMORY[0x1E697DCB8]);
    swift_storeEnumTagMultiPayload();
    sub_1A4967D90(v5, v8, type metadata accessor for LemonadeSocialGroupSectionProvider.PhotosSocialGroupView);
    swift_storeEnumTagMultiPayload();
    sub_1A4967F1C(&qword_1EB145DF8, sub_1A49662A0, MEMORY[0x1E69C20C8]);
    sub_1A4966C74();

    sub_1A5249744();
    return sub_1A4966CCC(v5);
  }
}

void sub_1A49662A0(uint64_t a1)
{
  if (!qword_1EB145DC8)
  {
    sub_1A4966388(255);
    sub_1A49664B8(255);
    sub_1A4967F1C(&qword_1EB145DF0, sub_1A4966388, MEMORY[0x1E69C2358]);
    sub_1A3C36888();
    swift_getOpaqueTypeConformance2();
    v1 = sub_1A5242A94();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB145DC8);
    }
  }
}

void sub_1A4966388(uint64_t a1)
{
  if (!qword_1EB145DD0)
  {
    sub_1A4253C40(255, &qword_1EB125C68, &qword_1EB126C28, 0x1E6978AD8, type metadata accessor for PhotoKitItem);
    sub_1A4967D38(&qword_1EB145DD8, &qword_1EB125C68, type metadata accessor for PhotoKitItem, &protocol conformance descriptor for <> PhotoKitItem<A>);
    sub_1A4967D38(&qword_1EB145DE0, &qword_1EB125C68, type metadata accessor for PhotoKitItem, &protocol conformance descriptor for PhotoKitItem<A>);
    sub_1A4967D38(&qword_1EB1365F0, &qword_1EB125C68, type metadata accessor for PhotoKitItem, &protocol conformance descriptor for PhotoKitItem<A>);
    v1 = sub_1A5243034();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB145DD0);
    }
  }
}

void sub_1A49664B8(uint64_t a1)
{
  if (!qword_1EB145DE8)
  {
    sub_1A3C36888();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB145DE8);
    }
  }
}

void sub_1A4966538(uint64_t a1, void *a2)
{
  v4 = sub_1A5243284();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A5243014();
  if (PhotoKitItem.expectsKeyAssets.getter())
  {
    v8 = PhotoKitItem.keyAssets.getter();
    if (!v8)
    {
      v9 = 1;
      goto LABEL_5;
    }
  }

  v9 = 0;
LABEL_5:
  (*((*MEMORY[0x1E69E7D40] & *a2) + 0x540))();
  v12[3] = a1;

  sub_1A5243024();
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = v9;
  (*(v5 + 104))(v7, *MEMORY[0x1E69C23E0], v4);

  sub_1A3D6CB10(MEMORY[0x1E69E7CC0]);
  sub_1A4966388(0);
  sub_1A49664B8(0);
  sub_1A4967F1C(&qword_1EB145DF0, sub_1A4966388, MEMORY[0x1E69C2358]);
  v11 = sub_1A3C36888();
  v12[1] = &type metadata for LemonadePeopleShelfProvider;
  v12[2] = v11;
  swift_getOpaqueTypeConformance2();
  sub_1A5242AA4();
}

void sub_1A49667D4(uint64_t a2@<X8>)
{
  v18 = a2;
  sub_1A5243014();
  v3 = sub_1A3D61684(0, v19[3].Kind);
  v4 = 0;
  if (v3)
  {
    v5 = PhotoKitItem.keyAsset.getter();
    if (v5)
    {

      v4 = 0;
    }

    else
    {
      v4 = 1;
    }
  }

  v17 = v4;
  v6 = PhotoKitItem.expectsKeyAssets.getter();
  if (v6)
  {
    v6 = PhotoKitItem.keyAssets.getter();
    if (v6)
    {
    }
  }

  v16[1] = v16;
  MEMORY[0x1EEE9AC00](v6);
  sub_1A4966388(0);
  sub_1A49664B8(0);
  sub_1A4967F1C(&qword_1EB145E30, sub_1A4966388, MEMORY[0x1E69C2350]);
  sub_1A4967F1C(&qword_1EB145E38, sub_1A4966388, MEMORY[0x1E69C2368]);
  sub_1A4967F1C(&qword_1EB145DF0, sub_1A4966388, MEMORY[0x1E69C2358]);
  v7 = sub_1A3C36888();

  v19 = &type metadata for LemonadePeopleShelfProvider;
  v20 = v7;
  swift_getOpaqueTypeConformance2();
  v8 = v18;
  sub_1A5242874();
  v9 = sub_1A524BC74();
  v11 = v10;
  sub_1A496789C(0, &qword_1EB145E40, sub_1A4967AD4, sub_1A4967C1C, MEMORY[0x1E697E830]);
  v13 = v8 + *(v12 + 36);
  sub_1A4966A68(v2);

  sub_1A4967C1C(0);
  v15 = (v13 + *(v14 + 36));
  *v15 = v9;
  v15[1] = v11;
}

double sub_1A4966A68(uint64_t a1)
{
  v1 = sub_1A5244084();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v12 - v6;
  v8 = [objc_opt_self() systemBackgroundColor];
  sub_1A524B284();
  v9 = sub_1A524B474();

  v12[1] = v9;
  type metadata accessor for LemonadeSocialGroupSectionProvider.PhotosSocialGroupView(0);
  sub_1A3F75AC0(v7);
  sub_1A5243F24();
  v10 = *(v2 + 8);
  v10(v7, v1);
  sub_1A524A784();
  v10(v4, v1);

  return result;
}

void sub_1A4966C10(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1A4966C74()
{
  result = qword_1EB1E29E8[0];
  if (!qword_1EB1E29E8[0])
  {
    type metadata accessor for LemonadeSocialGroupSectionProvider.PhotosSocialGroupView(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1E29E8);
  }

  return result;
}

uint64_t sub_1A4966CCC(uint64_t a1)
{
  v2 = type metadata accessor for LemonadeSocialGroupSectionProvider.PhotosSocialGroupView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A4966D28()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1A3C36888();

  return sub_1A414D430(v1, v2, 0);
}

uint64_t sub_1A4966D8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v7 = *(a2 + 40);
  if (v7)
  {
    v8 = (*((*MEMORY[0x1E69E7D40] & *v7) + 0x2D0))();
  }

  else
  {
    v8 = 0;
  }

  if (MEMORY[0x1A590D320]())
  {
    v9 = *(a1 + 16);

    sub_1A4270930(v9);
  }

  else
  {
    v10 = v7 != 0;
    v11 = type metadata accessor for LemonadeSocialGroupSectionProvider(0);
    v12 = sub_1A4967F1C(&qword_1EB145E00, type metadata accessor for LemonadeSocialGroupSectionProvider, &unk_1A53770EC);
    v13 = sub_1A3C66934(v4, v11, v12);
    v18 = a1;
    sub_1A4253C40(0, &qword_1EB129FC0, &qword_1EB126C28, 0x1E6978AD8, type metadata accessor for PhotoKitItemListManager);
    sub_1A4253C40(0, &qword_1EB125C68, &qword_1EB126C28, 0x1E6978AD8, type metadata accessor for PhotoKitItem);
    v15 = v14;
    v16 = sub_1A4967D38(&qword_1EB1365F8, &qword_1EB129FC0, type metadata accessor for PhotoKitItemListManager, &protocol conformance descriptor for PhotoKitItemListManager<A>);

    sub_1A426FECC(v13, &v18, v10, v8, v15, v16, a3);
  }

  type metadata accessor for LemonadeNavigationDestination(0);
  return swift_storeEnumTagMultiPayload();
}

double sub_1A4966FD8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 8);
  *a2 = a1;
  *(a2 + 8) = v4;
  v5 = *(type metadata accessor for LemonadeSocialGroupSectionProvider.PhotosSocialGroupView(0) + 24);
  *(a2 + v5) = swift_getKeyPath();
  sub_1A4966C10(0, &qword_1EB128A90, MEMORY[0x1E69C2948], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();

  return result;
}

uint64_t sub_1A4967108()
{
  if (*(v0 + 8))
  {
    return 0;
  }

  else
  {
    return (*(v0 + 9) ^ 1) & 1;
  }
}

void sub_1A4967128(uint64_t *a1@<X0>, void *a2@<X8>)
{
  if (*(v2 + 9) == 1)
  {
    v4 = *a1;
    sub_1A4253C40(0, &qword_1EB125C68, &qword_1EB126C28, 0x1E6978AD8, type metadata accessor for PhotoKitItem);
    v6 = v5;
    v7 = sub_1A4967D38(&qword_1EB145DE0, &qword_1EB125C68, type metadata accessor for PhotoKitItem, &protocol conformance descriptor for PhotoKitItem<A>);
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v4 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  a2[3] = v6;
  a2[4] = v7;
  *a2 = v4;
}

uint64_t sub_1A4967218(uint64_t a1)
{
  result = sub_1A5243024();
  if (!v2)
  {
    return sub_1A3C38BD4(0xD000000000000022);
  }

  return result;
}

uint64_t sub_1A496725C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A4967D38(&qword_1EB145E60, &qword_1EB125C68, type metadata accessor for PhotoKitItem, &protocol conformance descriptor for PhotoKitItem<A>);

  return sub_1A4201830(a1, a2, a3, v6);
}

uint64_t sub_1A49672E8()
{
  sub_1A4967F1C(&qword_1EB13A240, type metadata accessor for LemonadeSocialGroupSectionProvider, &unk_1A5377098);

  return sub_1A3C47918();
}

uint64_t sub_1A4967354(uint64_t a1)
{
  *(a1 + 8) = sub_1A4967F1C(&qword_1EB13A240, type metadata accessor for LemonadeSocialGroupSectionProvider, &unk_1A5377098);
  result = sub_1A4967F1C(&qword_1EB145E08, type metadata accessor for LemonadeSocialGroupSectionProvider, &unk_1A53770B4);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1A496759C(uint64_t a1)
{
  result = sub_1A4967F1C(&qword_1EB145E00, type metadata accessor for LemonadeSocialGroupSectionProvider, &unk_1A53770EC);
  *(a1 + 8) = result;
  return result;
}

void sub_1A49676BC(uint64_t a1)
{
  sub_1A3C52C70(319, &qword_1EB126BF0, 0x1E69789A8);
  if (v1 <= 0x3F)
  {
    sub_1A4966C10(319, &qword_1EB125A20, type metadata accessor for PickerConfiguration, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for LemonadeFeedBodyStyle(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1A49677A8(double a1)
{
  result = qword_1EB145E20;
  if (!qword_1EB145E20)
  {
    sub_1A496789C(255, &qword_1EB145E28, sub_1A49662A0, type metadata accessor for LemonadeSocialGroupSectionProvider.PhotosSocialGroupView, MEMORY[0x1E697F960]);
    sub_1A4967F1C(&qword_1EB145DF8, sub_1A49662A0, MEMORY[0x1E69C20C8]);
    sub_1A4966C74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB145E20);
  }

  return result;
}

void sub_1A496789C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_1A4967948(uint64_t a1)
{
  sub_1A4966388(319);
  if (v1 <= 0x3F)
  {
    sub_1A4966C10(319, &qword_1EB124840, MEMORY[0x1E69C2948], MEMORY[0x1E697DCC0]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1A4967A20()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1A3C52C70(0, &qword_1EB126A10, off_1E771E328);
  v3 = [swift_getObjCClassFromMetadata() sharedInstance];
  v4 = [v3 enableInlinePlaybackSocialGroupFeed];

  v5 = *v1;
  sub_1A3C36888();

  return sub_1A414D430(v5, v2, v4);
}

void sub_1A4967AD4(uint64_t a1)
{
  if (!qword_1EB145E48)
  {
    sub_1A4966388(255);
    sub_1A49664B8(255);
    sub_1A4967F1C(&qword_1EB145E30, sub_1A4966388, MEMORY[0x1E69C2350]);
    sub_1A4967F1C(&qword_1EB145E38, sub_1A4966388, MEMORY[0x1E69C2368]);
    sub_1A4967F1C(&qword_1EB145DF0, sub_1A4966388, MEMORY[0x1E69C2358]);
    sub_1A3C36888();
    swift_getOpaqueTypeConformance2();
    v1 = sub_1A5242864();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB145E48);
    }
  }
}

void sub_1A4967C1C(uint64_t a1)
{
  if (!qword_1EB145E50)
  {
    sub_1A4967CB8();
    swift_getOpaqueTypeConformance2();
    v1 = sub_1A5248AE4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB145E50);
    }
  }
}

void sub_1A4967CB8()
{
  if (!qword_1EB145E58)
  {
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB145E58);
    }
  }
}

uint64_t sub_1A4967D38(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1A4253C40(255, a2, &qword_1EB126C28, 0x1E6978AD8, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A4967D90(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1A4967DF8()
{
  result = qword_1EB145E68;
  if (!qword_1EB145E68)
  {
    sub_1A496789C(255, &qword_1EB145E40, sub_1A4967AD4, sub_1A4967C1C, MEMORY[0x1E697E830]);
    sub_1A4967F1C(&qword_1EB145E70, sub_1A4967AD4, MEMORY[0x1E69C1FD8]);
    sub_1A4967F1C(&qword_1EB145E78, sub_1A4967C1C, MEMORY[0x1E697EC18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB145E68);
  }

  return result;
}

uint64_t sub_1A4967F1C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1A4967F68()
{
  swift_getKeyPath();
  (*(*v0 + 288))();

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A4967FDC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 136))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

double sub_1A4968040(uint64_t a1, uint64_t a2)
{
  v5 = v2[2] == a1 && v2[3] == a2;
  if (v5 || (sub_1A524EAB4() & 1) != 0)
  {
    v2[2] = a1;
    v2[3] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v8.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v2 + 296))(v8);
  }

  return result;
}

void sub_1A4968198()
{
  swift_getKeyPath();
  (*(*v0 + 288))();

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A496820C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 184))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

double sub_1A49682B8(uint64_t a1, uint64_t a2)
{
  v5 = v2[4] == a1 && v2[5] == a2;
  if (v5 || (sub_1A524EAB4() & 1) != 0)
  {
    v2[4] = a1;
    v2[5] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v8.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v2 + 296))(v8);
  }

  return result;
}

void sub_1A4968410(uint64_t a1)
{
  v2 = swift_allocObject();
  v2[2] = 0;
  v2[3] = 0xE000000000000000;
  v2[4] = 0;
  v2[5] = 0xE000000000000000;
  sub_1A5241604();
  sub_1A4150524(a1, v2 + OBJC_IVAR____TtC12PhotosUICore39LemonadeAssetsRecoveryNotificationModel__item);
  sub_1A49685E0(a1);
}

uint64_t sub_1A4968488(uint64_t a1)
{
  swift_getKeyPath();
  v4 = v1;
  v5 = a1;
  (*(*v1 + 296))();

  return sub_1A415065C(a1);
}

uint64_t sub_1A4968530()
{
  v1 = type metadata accessor for AssetsRecoveryNotificationItem(0);
  v2.n128_f64[0] = MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*v0 + 256))(v2);
  sub_1A4425024();
  return sub_1A415065C(v4);
}

void sub_1A49685E0(uint64_t a1)
{
  v2 = (a1 + *(type metadata accessor for AssetsRecoveryNotificationItem(0) + 24));
  v4 = *v2;
  v3 = v2[1];
  v5 = *(v1 + 16) == *v2 && *(v1 + 24) == v3;
  if (!v5 && (sub_1A524EAB4() & 1) == 0)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v7 = v1;
    v8 = v4;
    v9 = v3;
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  *(v1 + 16) = v4;
  *(v1 + 24) = v3;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void (*sub_1A4968840(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 24) = v1;
  v6 = *(*(type metadata accessor for AssetsRecoveryNotificationItem(0) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  *(v5 + 32) = v7;
  swift_beginAccess();
  return sub_1A4968900;
}

void sub_1A4968900(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = swift_endAccess();
  v5 = *(v3 + 32);
  if ((a2 & 1) == 0)
  {
    (*(**(v3 + 24) + 256))(v4);
    sub_1A49685E0(v5);
  }

  free(v5);

  free(v3);
}

uint64_t sub_1A496899C@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  (*(*v1 + 288))();

  v3 = OBJC_IVAR____TtC12PhotosUICore39LemonadeAssetsRecoveryNotificationModel__item;
  swift_beginAccess();
  return sub_1A4150524(v1 + v3, a1);
}

uint64_t sub_1A4968A84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AssetsRecoveryNotificationItem(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4150524(a1, v6);
  return (*(**a2 + 264))(v6);
}

void sub_1A4968B44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AssetsRecoveryNotificationItem(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v12 - v8;
  sub_1A4150524(a2, &v12 - v8);
  v10 = OBJC_IVAR____TtC12PhotosUICore39LemonadeAssetsRecoveryNotificationModel__item;
  swift_beginAccess();
  sub_1A496952C(v9, a1 + v10);
  v11 = swift_endAccess();
  (*(*a1 + 256))(v11);
  sub_1A49685E0(v6);
}

uint64_t (*sub_1A4968C98(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 288))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore39LemonadeAssetsRecoveryNotificationModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A49693AC(&qword_1EB145E80, type metadata accessor for LemonadeAssetsRecoveryNotificationModel, &unk_1A5377300);
  sub_1A52415F4();

  v4[7] = sub_1A4968840(v4);
  return sub_1A4968DE8;
}

void sub_1A4968DE8(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  sub_1A52415E4();

  free(v1);
}

uint64_t type metadata accessor for LemonadeAssetsRecoveryNotificationModel(uint64_t a1)
{
  result = qword_1EB1E2F30;
  if (!qword_1EB1E2F30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A4968EC8()
{
  v1 = type metadata accessor for AssetsRecoveryNotificationItem(0);
  v2.n128_f64[0] = MEMORY[0x1EEE9AC00](v1 - 8);
  (*(*v0 + 256))(v2);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A49690CC()
{

  sub_1A415065C(v0 + OBJC_IVAR____TtC12PhotosUICore39LemonadeAssetsRecoveryNotificationModel__item);
  v1 = OBJC_IVAR____TtC12PhotosUICore39LemonadeAssetsRecoveryNotificationModel___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void (*sub_1A49692CC(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(*v1 + 272))();
  return sub_1A3D3D728;
}

uint64_t sub_1A49693AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A49693F8@<X0>(uint64_t *a1@<X8>)
{
  result = (*(**v1 + 280))();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1A4969454(uint64_t a1)
{
  result = type metadata accessor for AssetsRecoveryNotificationItem(319);
  if (v2 <= 0x3F)
  {
    result = sub_1A5241614();
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

uint64_t sub_1A496952C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AssetsRecoveryNotificationItem(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A49695C4@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19[1] = a2;
  sub_1A4972FC4(0, &qword_1EB145E98, type metadata accessor for LemonadeSharedLibraryInvitationsCell, &type metadata for LemonadeSharedAlbumInvitationsCell, MEMORY[0x1E697F948]);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v19 - v4;
  v6 = type metadata accessor for LemonadeSharedLibraryInvitationsCell(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for InvitationsItem.InvitationType(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for InvitationsItem(0);
  v13 = v12 - 8;
  MEMORY[0x1EEE9AC00](v12);
  v15 = v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_1A4604CB0(v15);
  sub_1A4975708(&v15[*(v13 + 36)], v11, type metadata accessor for InvitationsItem.InvitationType);
  sub_1A4972D94(v15, type metadata accessor for InvitationsItem);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *v8 = swift_getKeyPath();
    sub_1A4973574(0, &qword_1EB128A80, sub_1A3D63A58, MEMORY[0x1E697DCB8]);
    swift_storeEnumTagMultiPayload();
    v16 = (v8 + *(v6 + 24));
    *v16 = sub_1A3C38BD4(0xD000000000000024);
    v16[1] = v17;
    *(v8 + *(v6 + 20)) = a1;
    sub_1A4975708(v8, v5, type metadata accessor for LemonadeSharedLibraryInvitationsCell);
    swift_storeEnumTagMultiPayload();
    sub_1A49730AC(&qword_1EB145EA0, type metadata accessor for LemonadeSharedLibraryInvitationsCell, &unk_1A5377410);
    sub_1A40AED88();
    sub_1A5249744();
    sub_1A4972D94(v8, type metadata accessor for LemonadeSharedLibraryInvitationsCell);
  }

  else
  {
    sub_1A4972A74(a1, 0, v20);
    memcpy(v5, v20, 0x118uLL);
    swift_storeEnumTagMultiPayload();
    sub_1A49730AC(&qword_1EB145EA0, type metadata accessor for LemonadeSharedLibraryInvitationsCell, &unk_1A5377410);
    sub_1A40AED88();
    sub_1A5249744();
  }

  return sub_1A4972D94(v11, type metadata accessor for InvitationsItem.InvitationType);
}

uint64_t type metadata accessor for LemonadeSharedLibraryInvitationsCell(uint64_t a1)
{
  result = qword_1EB1E31D0;
  if (!qword_1EB1E31D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A4969A48@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1A5246F24();
  v46 = *(v2 - 8);
  v47 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v45 = v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A52408C4();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v37 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A5240744();
  v42 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v41 = v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_1A5240754();
  v38 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v39 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A5240774();
  MEMORY[0x1EEE9AC00](v9 - 8);
  sub_1A4973574(0, &unk_1EB12B250, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  sub_1A3F31320(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v49 = v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v36 = v35 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v48 = v35 - v16;
  MEMORY[0x1EEE9AC00](v17);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v35 - v19;
  v21 = sub_1A52407E4();
  v22 = *(v21 - 8);
  v43 = *(v22 + 56);
  v44 = v22 + 56;
  v43(v20, 1, 1, v21);
  type metadata accessor for LemonadeSharedLibraryInvitationsCell(0);
  v23 = sub_1A4605538();
  v25 = HIBYTE(v24) & 0xF;
  v50 = v24;
  if ((v24 & 0x2000000000000000) == 0)
  {
    v25 = v23 & 0xFFFFFFFFFFFFLL;
  }

  if (v25)
  {
    v26 = v23;
    v35[1] = a1;
    sub_1A3C38BD4(0xD00000000000002ALL);
    v35[0] = v6;
    sub_1A4973574(0, &qword_1EB12B110, sub_1A3D78B5C, MEMORY[0x1E69E6F90]);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_1A52F8E10;
    *(v27 + 56) = MEMORY[0x1E69E6158];
    *(v27 + 64) = sub_1A3D710E8();
    v28 = v50;
    *(v27 + 32) = v26;
    *(v27 + 40) = v28;
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v29 = v48;
  sub_1A4975708(v20, v48, sub_1A3F31320);
  v30 = *(v22 + 48);
  v31 = v30(v29, 1, v21);
  sub_1A4972D94(v29, sub_1A3F31320);
  if (v31 == 1)
  {
    sub_1A3C38BD4(0xD000000000000032);
    sub_1A52408B4();
    v32 = v36;
    sub_1A52407F4();
    sub_1A4972D94(v20, sub_1A3F31320);
    v43(v32, 0, 1, v21);
    sub_1A49756A0(v32, v20, sub_1A3F31320);
  }

  v33 = v49;
  sub_1A4975708(v20, v49, sub_1A3F31320);
  result = v30(v33, 1, v21);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1A4972D94(v20, sub_1A3F31320);

    return (*(v22 + 32))(a1, v33, v21);
  }

  return result;
}

uint64_t sub_1A496A30C@<X0>(uint64_t a1@<X8>)
{
  v54 = a1;
  v2 = type metadata accessor for LemonadeSharedLibraryInvitationsCell(0);
  v3 = v2 - 8;
  v56 = *(v2 - 8);
  v59 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v55 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4972DF4(0);
  v6 = *(v5 - 8);
  v52 = v5;
  v53 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v51 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A5243934();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v47 = (&v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v45 - v12;
  v48 = &v45 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v45 - v15;
  v17 = *(v1 + *(v3 + 28));
  v58 = v1;
  v18 = v17 + OBJC_IVAR____TtC12PhotosUICore23LemonadeInvitationModel_cellSpecs;
  v63[0] = *v18;
  v19 = *(v18 + 64);
  v21 = *(v18 + 16);
  v20 = *(v18 + 32);
  v63[3] = *(v18 + 48);
  v63[4] = v19;
  v63[1] = v21;
  v63[2] = v20;
  v23 = *(v18 + 96);
  v22 = *(v18 + 112);
  v24 = *(v18 + 80);
  v66 = *(v18 + 128);
  v64 = v23;
  v65 = v22;
  v63[5] = v24;
  sub_1A460525C(v63, v62);
  v50 = v16;
  sub_1A5243914();
  v25 = v64;
  v26 = v65;
  v27 = v66;
  v28 = *(v9 + 16);
  v60 = v8;
  v28(v13, v16, v8);
  v28(&v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v16, v8);
  v57 = type metadata accessor for LemonadeSharedLibraryInvitationsCell;
  sub_1A4975708(v1, v55, type metadata accessor for LemonadeSharedLibraryInvitationsCell);
  v29 = *(v9 + 80);
  v49 = v9;
  v30 = (v29 + 16) & ~v29;
  v31 = *(v56 + 80);
  v32 = (v10 + v31 + v30) & ~v31;
  v56 = v31 | 7;
  v46 = (v59 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = (v46 + 15) & 0xFFFFFFFFFFFFFFF8;
  v34 = (v33 + 15) & 0xFFFFFFFFFFFFFFF8;
  v35 = (v34 + 15) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  (*(v9 + 32))(v36 + v30, v47, v60);
  v37 = v36 + v32;
  v38 = v55;
  v47 = type metadata accessor for LemonadeSharedLibraryInvitationsCell;
  sub_1A49756A0(v55, v37, type metadata accessor for LemonadeSharedLibraryInvitationsCell);
  *(v36 + v46) = v25;
  *(v36 + v33) = v26;
  *(v36 + v34) = *(&v26 + 1);
  *(v36 + v35) = *(&v25 + 1);
  *(v36 + ((v35 + 15) & 0xFFFFFFFFFFFFFFF8)) = v27;
  sub_1A4975708(v58, v38, v57);
  v39 = (v31 + 16) & ~v31;
  v40 = swift_allocObject();
  sub_1A49756A0(v38, v40 + v39, type metadata accessor for LemonadeSharedLibraryInvitationsCell);
  v61 = 1;
  sub_1A524B954();
  v45 = v62[1];
  v46 = v62[0];
  sub_1A4972EF4(0);
  sub_1A5243544();
  sub_1A49730AC(&qword_1EB145ED0, sub_1A4972EF4, MEMORY[0x1E6981880]);
  sub_1A49730AC(&qword_1EB12EAA8, MEMORY[0x1E69C2510], MEMORY[0x1E69C2508]);
  v41 = v51;
  sub_1A5242914();
  sub_1A4975708(v58, v38, v57);
  v42 = swift_allocObject();
  sub_1A49756A0(v38, v42 + v39, v47);
  sub_1A49730AC(&qword_1EB145ED8, sub_1A4972DF4, MEMORY[0x1E69C1FF8]);
  v43 = v52;
  sub_1A524AA84();

  sub_1A4605B8C(v63);
  (*(v53 + 8))(v41, v43);
  return (*(v49 + 8))(v50, v60);
}

uint64_t sub_1A496A924@<X0>(uint64_t *a1@<X8>, double a2@<D0>, double a3@<D1>, double a6@<D4>)
{
  sub_1A3F2ED84(0);
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10);
  v13 = v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (v42 - v15);
  v17 = type metadata accessor for LemonadeSharedLibraryAvatarInvitationView(0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = v42 - v21;
  *a1 = sub_1A524BC34();
  a1[1] = v23;
  v24 = MEMORY[0x1E697E330];
  v25 = MEMORY[0x1E697E320];
  sub_1A4975020(0, &qword_1EB146130, sub_1A4972F88, MEMORY[0x1E697E330], MEMORY[0x1E697E320]);
  v27 = a1 + *(v26 + 44);
  sub_1A52438F4();
  v29 = v28;
  type metadata accessor for LemonadeSharedLibraryInvitationsCell(0);

  sub_1A4726B58(v30, v22, v29);
  *v16 = sub_1A524BC74();
  v16[1] = v31;
  sub_1A4975020(0, &qword_1EB12EAC8, sub_1A3F2EF64, v24, v25);
  sub_1A496ACA4(v16 + *(v32 + 44), a2, a3);
  sub_1A524BC74();
  sub_1A52481F4();
  sub_1A3F2EE38(0);
  v34 = (v16 + *(v33 + 36));
  v35 = v42[1];
  *v34 = v42[0];
  v34[1] = v35;
  v34[2] = v42[2];
  sub_1A3F2EDAC(0);
  v37 = (v16 + *(v36 + 36));
  *v37 = a6;
  v37[1] = a6;
  v38 = sub_1A524A064();
  v39 = v16 + *(v11 + 44);
  *v39 = v38;
  *(v39 + 1) = 0;
  *(v39 + 2) = 0;
  *(v39 + 3) = -a3;
  *(v39 + 4) = -a3;
  v39[40] = 0;
  sub_1A4975708(v22, v19, type metadata accessor for LemonadeSharedLibraryAvatarInvitationView);
  sub_1A4975708(v16, v13, sub_1A3F2ED84);
  sub_1A4975708(v19, v27, type metadata accessor for LemonadeSharedLibraryAvatarInvitationView);
  sub_1A4973030(0, &qword_1EB145EC0, type metadata accessor for LemonadeSharedLibraryAvatarInvitationView, sub_1A3F2ED84);
  sub_1A4975708(v13, &v27[*(v40 + 48)], sub_1A3F2ED84);
  sub_1A4972D94(v16, sub_1A3F2ED84);
  sub_1A4972D94(v22, type metadata accessor for LemonadeSharedLibraryAvatarInvitationView);
  sub_1A4972D94(v13, sub_1A3F2ED84);
  return sub_1A4972D94(v19, type metadata accessor for LemonadeSharedLibraryAvatarInvitationView);
}

uint64_t sub_1A496ACA4@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v37 = a1;
  v6 = sub_1A524B554();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1A5242264();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3F2F01C(0);
  v15 = v14 - 8;
  MEMORY[0x1EEE9AC00](v14);
  v36 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = (&v35 - v18);
  v20 = *(sub_1A5248A14() + 20);
  v21 = *MEMORY[0x1E697F468];
  v22 = sub_1A52494A4();
  (*(*(v22 - 8) + 104))(v19 + v20, v21, v22);
  *v19 = a2;
  v19[1] = a2;
  *(v19 + *(sub_1A5248A04() + 20)) = a3;
  *(v19 + *(v15 + 60)) = sub_1A524B3C4();
  *(v19 + *(v15 + 64)) = 256;
  strcpy(v13, "person.2.fill");
  *(v13 + 7) = -4864;
  (*(v11 + 104))(v13, *MEMORY[0x1E69C1D38], v10);
  sub_1A5242B94();
  (*(v11 + 8))(v13, v10);
  (*(v7 + 104))(v9, *MEMORY[0x1E6981630], v6);
  v23 = sub_1A524B5C4();

  (*(v7 + 8))(v9, v6);
  v24 = sub_1A524B434();
  KeyPath = swift_getKeyPath();
  sub_1A524BC74();
  sub_1A52481F4();
  v26 = v36;
  sub_1A4975708(v19, v36, sub_1A3F2F01C);
  v27 = v37;
  sub_1A4975708(v26, v37, sub_1A3F2F01C);
  sub_1A4973030(0, &qword_1EB12EA70, sub_1A3F2F01C, sub_1A3F2F0CC);
  v29 = v27 + *(v28 + 48);
  v43[0] = v23;
  v43[1] = 0;
  LOWORD(v44) = 257;
  *(&v44 + 2) = v41;
  WORD3(v44) = v42;
  *(&v44 + 1) = KeyPath;
  *v45 = v24;
  *&v45[8] = v38;
  *&v45[24] = v39;
  *&v45[40] = v40;
  v30 = v44;
  *v29 = v23;
  *(v29 + 16) = v30;
  v31 = *v45;
  v32 = *&v45[16];
  v33 = *&v45[32];
  *(v29 + 80) = *&v45[48];
  *(v29 + 48) = v32;
  *(v29 + 64) = v33;
  *(v29 + 32) = v31;
  sub_1A4975708(v43, v46, sub_1A3F2F0CC);
  sub_1A4972D94(v19, sub_1A3F2F01C);
  v46[0] = v23;
  v46[1] = 0;
  v47 = 257;
  v48 = v41;
  v49 = v42;
  v50 = KeyPath;
  v51 = v24;
  v52 = v38;
  v53 = v39;
  v54 = v40;
  sub_1A4972D94(v46, sub_1A3F2F0CC);
  return sub_1A4972D94(v26, sub_1A3F2F01C);
}

void sub_1A496B1DC(uint64_t a2@<X8>)
{
  v11[1] = a2;
  v2 = type metadata accessor for InvitationsItem(0);
  MEMORY[0x1EEE9AC00](v2);
  v3 = sub_1A52407E4();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = sub_1A5243C24();
  v11[0] = v4;
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v11 - v9;
  sub_1A5243C14();
  (*(v5 + 16))(v7, v10, v4);
  type metadata accessor for LemonadeSharedLibraryInvitationsCell(0);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A496B410()
{
  sub_1A3D63A58(0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v10 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for InvitationsItem(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LemonadeSharedLibraryInvitationsCell(0);
  sub_1A4604CB0(v5);
  v6 = *(v5 + 1);
  swift_unknownObjectRetain();
  sub_1A4972D94(v5, type metadata accessor for InvitationsItem);
  if (v6)
  {
    v7 = sub_1A4605AC4();
    if (v7)
    {
      v8 = v7;
      sub_1A3FF29A0(v2);
      sub_1A3C4B840(0, &qword_1EB128E00, &qword_1EB126B10, 0x1E69DD258, off_1E7721050);
      if ((*(*(v9 - 8) + 48))(v2, 1, v9) != 1)
      {
        sub_1A5245C94();
      }

      swift_unknownObjectRelease();
      sub_1A4972D94(v2, sub_1A3D63A58);
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  else
  {
    __break(1u);
    __break(1u);
  }
}

uint64_t sub_1A496B68C@<X0>(uint64_t a1@<X8>)
{
  v56 = a1;
  sub_1A49732F0(0);
  v51 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v57 = v44 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A49744F8(0);
  v54 = *(v3 - 8);
  v55 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v50 = v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A5243934();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v44 - v9;
  v49 = v44 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v44 - v12;
  sub_1A5243914();
  v14 = *(v6 + 16);
  v46 = v14;
  v58 = v5;
  v14(v10, v13, v5);
  v14(v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v13, v5);
  v15 = *(v6 + 80);
  v16 = (v15 + 16) & ~v15;
  v17 = (v7 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  v53 = v6;
  v45 = *(v6 + 32);
  v19 = v18 + v16;
  v20 = v18;
  v48 = v18;
  v21 = v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v58;
  v45(v19, v21, v58);
  v23 = (v20 + v17);
  v24 = v47;
  memcpy(v23, v47, 0x118uLL);
  v25 = swift_allocObject();
  memcpy((v25 + 16), v24, 0x118uLL);
  v52 = v13;
  v46(v21, v13, v22);
  v26 = swift_allocObject();
  memcpy((v26 + 16), v24, 0x118uLL);
  v45(v26 + ((v15 + 296) & ~v15), v21, v22);
  LOBYTE(v61) = 1;
  sub_1A40AD710(v24, &v63);
  sub_1A40AD710(v24, &v63);
  v27 = v24;
  sub_1A40AD710(v24, &v63);
  sub_1A524B954();
  v45 = *(&v63 + 1);
  v46 = v63;
  v44[3] = v64;
  type metadata accessor for LemonadeSharedAlbumsAvatarView(0);
  sub_1A5243544();
  sub_1A4972FC4(0, &qword_1EB145EF0, sub_1A4973470, MEMORY[0x1E6981E70], MEMORY[0x1E697F960]);
  sub_1A49730AC(&qword_1EB134E00, type metadata accessor for LemonadeSharedAlbumsAvatarView, &unk_1A5374E30);
  sub_1A49730AC(&qword_1EB12EAA8, MEMORY[0x1E69C2510], MEMORY[0x1E69C2508]);
  sub_1A4974390();
  v28 = v57;
  sub_1A5242914();
  v63 = *(v27 + 88);
  sub_1A49754F8(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  v28[*(v51 + 36)] = v61;
  v61 = sub_1A496CEF8();
  v62 = v29;
  v60 = v27[2];
  sub_1A524B6C4();
  v59 = v27;
  sub_1A49745E8(0);
  sub_1A4974650();
  sub_1A3D5F9DC();
  sub_1A4974734(&qword_1EB146080, sub_1A49745E8, sub_1A4974700);
  v30 = v50;
  v31 = v57;
  sub_1A524AFC4();

  sub_1A497508C(v31, sub_1A49732F0);
  if (*(v27 + 24))
  {
    v32 = *(*(v27 + 2) + OBJC_IVAR____TtC12PhotosUICore23LemonadeInvitationModel_cellSpecs);
    v33 = v52;
  }

  else
  {
    v34 = v52;
    sub_1A52438C4();
    v32 = v35;
    v33 = v34;
  }

  (*(v53 + 8))(v33, v58);
  sub_1A4974908(0, &qword_1EB146090, sub_1A49744F8, sub_1A3E42C88, MEMORY[0x1E697E830]);
  v37 = v56;
  v38 = (v56 + *(v36 + 36));
  v39 = *(sub_1A5248A14() + 20);
  v40 = *MEMORY[0x1E697F468];
  v41 = sub_1A52494A4();
  (*(*(v41 - 8) + 104))(&v38[v39], v40, v41);
  *v38 = v32;
  *(v38 + 1) = v32;
  sub_1A3E42C88(0);
  *&v38[*(v42 + 36)] = 256;
  return (*(v54 + 32))(v37, v30, v55);
}

uint64_t sub_1A496BDD8@<X0>(uint64_t a1@<X8>)
{
  sub_1A4973574(0, &qword_1EB146128, type metadata accessor for ShareParticipantImageConfiguration, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v12 - v3;
  sub_1A52438F4();
  v6 = v5;
  sub_1A4973574(0, &qword_1EB13B1F0, type metadata accessor for ShareParticipantImageConfiguration, MEMORY[0x1E69E6F90]);
  v7 = type metadata accessor for ShareParticipantImageConfiguration(0);
  v8 = *(v7 - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1A52F8E10;
  sub_1A46056CC(v4);
  result = (*(v8 + 48))(v4, 1, v7);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1A49756A0(v4, v10 + v9, type metadata accessor for ShareParticipantImageConfiguration);
    sub_1A493BE2C(v12);
    return sub_1A493BE50(v10, v12, a1, v6);
  }

  return result;
}

void sub_1A496BFBC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v37 = type metadata accessor for InvitationsItem(0);
  MEMORY[0x1EEE9AC00](v37);
  v35 = v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A5243C24();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v32 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_1A52407E4();
  v34 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v30 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v31 = v28 - v8;
  sub_1A44E4F68(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1A524C634();
  v29 = PXLemonadeLocalizedAttributedString(v12);

  v13 = sub_1A5241284();
  v14 = *(v13 - 8);
  (*(v14 + 56))(v11, 1, 1, v13);
  sub_1A4973574(0, &qword_1EB12B110, sub_1A3D78B5C, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A52FC9F0;
  v33 = a1;
  v16 = sub_1A4605538();
  v18 = v17;
  v19 = MEMORY[0x1E69E6158];
  *(inited + 56) = MEMORY[0x1E69E6158];
  v20 = sub_1A3D710E8();
  *(inited + 64) = v20;
  *(inited + 32) = v16;
  *(inited + 40) = v18;
  v21 = sub_1A4605458();
  *(inited + 96) = v19;
  *(inited + 104) = v20;
  *(inited + 72) = v21;
  *(inited + 80) = v22;
  v23 = sub_1A524EF04();
  swift_setDeallocating();
  sub_1A3D78B5C();
  swift_arrayDestroy();
  LODWORD(v20) = (*(v14 + 48))(v11, 1, v13);
  v24 = v29;
  v25 = 0;
  if (v20 != 1)
  {
    v25 = sub_1A5241224();
    (*(v14 + 8))(v11, v13);
  }

  v26 = [objc_allocWithZone(MEMORY[0x1E696AAB0]) initWithFormat:v24 options:0 locale:v25 arguments:v23];

  v27 = v31;
  v29 = v26;
  sub_1A5242FC4();
  v28[1] = v24;
  sub_1A5243C14();
  sub_1A524B334();
  sub_1A5243BF4();
  (*(v34 + 16))(v30, v27, v36);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A496C4D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v41 = a3;
  sub_1A49755C8(0, &qword_1EB146108, sub_1A3EE43D8, MEMORY[0x1E697D898]);
  v39 = *(v5 - 8);
  v40 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v38 - v6;
  sub_1A49755C8(0, &qword_1EB146110, sub_1A3EE4384, MEMORY[0x1E697D848]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v38 - v11;
  v13 = sub_1A52408C4();
  v42 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v38 - v18;
  if (a1 == 0x4E72657469766E69 && a2 == v17 || (sub_1A524EAB4() & 1) != 0)
  {
    sub_1A52408B4();
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v38 - 2) = v21;
    swift_getKeyPath();
    sub_1A3EE4384();
    sub_1A5240884();

    v22 = *(v42 + 8);
    v22(v15, v13);
    v43 = sub_1A524B484();
    sub_1A5240894();

    (*(v10 + 8))(v12, v9);
    v23 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v23);
    *(&v38 - 2) = v24;
    swift_getKeyPath();
    sub_1A3EE43D8();
    sub_1A5240884();

    v22(v19, v13);
    sub_1A524A0E4();
    v25 = sub_1A524A104();

    v43 = v25;
    v27 = v40;
    v26 = v41;
    sub_1A5240894();

    (*(v39 + 8))(v7, v27);
    return (*(v42 + 56))(v26, 0, 1, v13);
  }

  else if (a1 == 0x6D614E6D75626C61 && a2 == 0xE900000000000065 || (sub_1A524EAB4() & 1) != 0)
  {
    sub_1A52408B4();
    v29 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v29);
    *(&v38 - 2) = v30;
    swift_getKeyPath();
    sub_1A3EE4384();
    sub_1A5240884();

    v31 = *(v42 + 8);
    v31(v15, v13);
    v43 = sub_1A524B484();
    sub_1A5240894();

    (*(v10 + 8))(v12, v9);
    v32 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v32);
    *(&v38 - 2) = v33;
    swift_getKeyPath();
    sub_1A3EE43D8();
    sub_1A5240884();

    v31(v19, v13);
    v43 = sub_1A524A0E4();
    v35 = v40;
    v34 = v41;
    sub_1A5240894();

    (*(v39 + 8))(v7, v35);
    return (*(v42 + 56))(v34, 0, 1, v13);
  }

  else
  {
    v36 = v41;
    v37 = *(v42 + 56);

    return v37(v36, 1, 1, v13);
  }
}

void sub_1A496CB48(uint64_t a1, uint64_t *a2)
{
  sub_1A3EE4384();
  sub_1A5240B64();
  __break(1u);
}

void sub_1A496CC60(uint64_t a1, uint64_t *a2)
{
  sub_1A3EE43D8();
  sub_1A5240B64();
  __break(1u);
}

uint64_t sub_1A496CCA4(uint64_t a1)
{
  sub_1A4972FC4(0, &qword_1EB1460D8, sub_1A4973470, MEMORY[0x1E6981E70], MEMORY[0x1E697F948]);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v17 - v3;
  sub_1A4973470(0);
  v6 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 24))
  {
    *v8 = sub_1A5249584();
    *(v8 + 1) = 0;
    v8[16] = 0;
    sub_1A4975020(0, &qword_1EB1460E0, sub_1A4973540, MEMORY[0x1E697E300], MEMORY[0x1E697E2F8]);
    sub_1A496DE48(a1, &v8[*(v9 + 44)]);
    v10 = sub_1A524A094();
    sub_1A52438F4();
    sub_1A52438E4();
    sub_1A5247BC4();
    v11 = &v8[*(v6 + 36)];
    *v11 = v10;
    *(v11 + 1) = v12;
    *(v11 + 2) = v13;
    *(v11 + 3) = v14;
    *(v11 + 4) = v15;
    v11[40] = 0;
    sub_1A49750EC(v8, v4, sub_1A4973470);
    swift_storeEnumTagMultiPayload();
    sub_1A4974448();
    sub_1A5249744();
    return sub_1A497508C(v8, sub_1A4973470);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_1A4974448();
    return sub_1A5249744();
  }
}

uint64_t sub_1A496CEF8()
{
  sub_1A44E4F68(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v0 + 48);
  sub_1A49754F8(0, &qword_1EB146098, &type metadata for LemonadeSharedAlbumInvitationsCell.SharedAlbumActiveAlert, MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  if (v15)
  {
    if (v15 != 1)
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    v16 = *(v0 + 64);
    v17 = *(v0 + 80);
    sub_1A49754F8(0, &unk_1EB13A670, MEMORY[0x1E69E6158], MEMORY[0x1E6981790]);
    sub_1A524B6A4();
    return v15;
  }

  else
  {
    v5 = sub_1A5241284();
    (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
    sub_1A4973574(0, &qword_1EB12B110, sub_1A3D78B5C, MEMORY[0x1E69E6F90]);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1A52FC9F0;
    v7 = sub_1A4605538();
    v9 = v8;
    v10 = MEMORY[0x1E69E6158];
    *(v6 + 56) = MEMORY[0x1E69E6158];
    v11 = sub_1A3D710E8();
    *(v6 + 64) = v11;
    *(v6 + 32) = v7;
    *(v6 + 40) = v9;
    v12 = sub_1A4605458();
    *(v6 + 96) = v10;
    *(v6 + 104) = v11;
    *(v6 + 72) = v12;
    *(v6 + 80) = v13;
    v4 = sub_1A524C6A4();

    sub_1A4972D94(v3, sub_1A44E4F68);
  }

  return v4;
}

uint64_t sub_1A496D148@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a2;
  sub_1A3FF7760(0);
  v65 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v58 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4974908(0, &qword_1EB1460C8, sub_1A4974630, sub_1A3FF7760, MEMORY[0x1E697F948]);
  v62 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v66 = &v56 - v6;
  sub_1A4974EEC(0, &qword_1EB1460D0, MEMORY[0x1E697F948]);
  v59 = v7;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v56 - v9;
  sub_1A4974630(0, v8);
  v63 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v60 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4973574(0, &qword_1EB1249B0, MEMORY[0x1E697BDB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v56 - v14;
  sub_1A4973A98(0, &qword_1EB127480, MEMORY[0x1E6981148], MEMORY[0x1E6981138], MEMORY[0x1E697D670]);
  v17 = v16;
  v64 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v56 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v61 = &v56 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v56 - v26;
  v68 = a1[3];
  sub_1A49754F8(0, &qword_1EB146098, &type metadata for LemonadeSharedAlbumInvitationsCell.SharedAlbumActiveAlert, MEMORY[0x1E6981790]);
  v28 = sub_1A524B6A4();
  if (v69)
  {
    if (v69 == 1)
    {
      *&v68 = sub_1A3C38BD4(0xD00000000000002FLL);
      *(&v68 + 1) = v29;
      sub_1A5247B34();
      v30 = sub_1A5247B54();
      (*(*(v30 - 8) + 56))(v15, 0, 1, v30);
      sub_1A3D5F9DC();
      sub_1A524B734();
      v31 = v64;
      (*(v64 + 16))(v10, v27, v17);
      swift_storeEnumTagMultiPayload();
      sub_1A3D6E520();
      sub_1A49730AC(&qword_1EB121040, sub_1A3FF7760, MEMORY[0x1E6981F48]);
      v32 = v60;
      sub_1A5249744();
      sub_1A4975708(v32, v66, sub_1A4974630);
      swift_storeEnumTagMultiPayload();
      sub_1A4974700();
      sub_1A5249744();
      sub_1A4972D94(v32, sub_1A4974630);
      return (*(v31 + 8))(v27, v17);
    }

    else
    {
      sub_1A5247B14();
      v44 = sub_1A5247B54();
      v45 = *(v44 - 8);
      v59 = *(v45 + 56);
      v60 = (v45 + 56);
      v59(v15, 0, 1, v44);
      v46 = swift_allocObject();
      v47 = memcpy((v46 + 16), a1, 0x118uLL);
      v56 = &v56;
      MEMORY[0x1EEE9AC00](v47);
      *(&v56 - 2) = a1;
      sub_1A40AD710(a1, &v68);
      v48 = v27;
      v57 = v27;
      sub_1A524B6F4();
      *&v68 = sub_1A3C38BD4(0xD000000000000033);
      *(&v68 + 1) = v49;
      sub_1A5247B34();
      v59(v15, 0, 1, v44);
      sub_1A3D5F9DC();
      v50 = v61;
      sub_1A524B734();
      v51 = v64;
      v52 = *(v64 + 16);
      v52(v22, v48, v17);
      v52(v19, v50, v17);
      v53 = v58;
      v52(v58, v22, v17);
      sub_1A3FF7794(0);
      v52((v53 + *(v54 + 48)), v19, v17);
      v55 = *(v51 + 8);
      v55(v19, v17);
      v55(v22, v17);
      sub_1A4975708(v53, v66, sub_1A3FF7760);
      swift_storeEnumTagMultiPayload();
      sub_1A4974700();
      sub_1A49730AC(&qword_1EB121040, sub_1A3FF7760, MEMORY[0x1E6981F48]);
      sub_1A5249744();
      sub_1A4972D94(v53, sub_1A3FF7760);
      v55(v50, v17);
      return (v55)(v57, v17);
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](v28);
    *(&v56 - 2) = a1;
    sub_1A524B704();
    *&v68 = sub_1A3C38BD4(0xD000000000000033);
    *(&v68 + 1) = v34;
    sub_1A5247B34();
    v35 = sub_1A5247B54();
    (*(*(v35 - 8) + 56))(v15, 0, 1, v35);
    sub_1A3D5F9DC();
    v36 = v61;
    sub_1A524B734();
    v37 = v27;
    v57 = v27;
    v38 = v58;
    v39 = v64;
    v40 = *(v64 + 16);
    v40(v22, v37, v17);
    v40(v19, v36, v17);
    v40(v38, v22, v17);
    sub_1A3FF7794(0);
    v40((v38 + *(v41 + 48)), v19, v17);
    v42 = *(v39 + 8);
    v42(v19, v17);
    v42(v22, v17);
    sub_1A4975708(v38, v10, sub_1A3FF7760);
    swift_storeEnumTagMultiPayload();
    sub_1A3D6E520();
    sub_1A49730AC(&qword_1EB121040, sub_1A3FF7760, MEMORY[0x1E6981F48]);
    v43 = v60;
    sub_1A5249744();
    sub_1A4975708(v43, v66, sub_1A4974630);
    swift_storeEnumTagMultiPayload();
    sub_1A4974700();
    sub_1A5249744();
    sub_1A4972D94(v43, sub_1A4974630);
    sub_1A4972D94(v38, sub_1A3FF7760);
    v42(v61, v17);
    return (v42)(v57, v17);
  }
}

void sub_1A496DCD0(void *a1)
{
  v10 = *(v1 + 88);
  v15 = 0;
  sub_1A49754F8(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  sub_1A524B6B4();
  v3 = [a1 photoLibrary];
  if (v3)
  {
    v4 = v3;
    v5 = objc_opt_self();
    v6 = [v5 sharedAlbumsEnabledForPhotoLibrary_];

    if (v6)
    {
      v7 = swift_allocObject();
      *(v7 + 16) = a1;
      v13 = sub_1A497498C;
      v14 = v7;
      *&v10 = MEMORY[0x1E69E9820];
      *(&v10 + 1) = 1107296256;
      v11 = sub_1A3D6084C;
      v12 = &block_descriptor_310;
      v8 = _Block_copy(&v10);
      v9 = a1;

      [v5 markInvitationToSharedAlbumAsSpam:v9 completionHandler:v8];
      _Block_release(v8);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1A496DE48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1A4973DDC(0);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v52 = &v39[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v39[-v8];
  sub_1A4973690(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v39[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v39[-v14];
  v16 = *(a1 + 16) + OBJC_IVAR____TtC12PhotosUICore23LemonadeInvitationModel_cellSpecs;
  v17 = *(v16 + 112);
  v65[6] = *(v16 + 96);
  v65[7] = v17;
  v66 = *(v16 + 128);
  v18 = *(v16 + 48);
  v65[2] = *(v16 + 32);
  v65[3] = v18;
  v19 = *(v16 + 80);
  v65[4] = *(v16 + 64);
  v65[5] = v19;
  v20 = *(v16 + 16);
  v65[0] = *v16;
  v65[1] = v20;
  sub_1A524BC74();
  sub_1A52481F4();
  v50 = v55;
  v51 = v53;
  v48 = v58;
  v49 = v57;
  v69 = 1;
  v68 = v54;
  v67 = v56;
  *v15 = sub_1A5249314();
  *(v15 + 1) = 0;
  v15[16] = 0;
  sub_1A4975020(0, &qword_1EB1460E8, sub_1A4973724, MEMORY[0x1E697E258], MEMORY[0x1E697E250]);
  v22 = &v15[*(v21 + 44)];
  v43 = v15;
  sub_1A496E264(a1, v65, v22);
  sub_1A524BC74();
  sub_1A52481F4();
  v46 = v61;
  v47 = v59;
  v44 = v64;
  v45 = v63;
  v72 = 1;
  v71 = v60;
  v70 = v62;
  *v9 = sub_1A5249574();
  *(v9 + 1) = 0;
  v9[16] = 0;
  sub_1A4975020(0, &qword_1EB1460F0, sub_1A4973EF0, MEMORY[0x1E697E300], MEMORY[0x1E697E2F8]);
  sub_1A497055C(v65, a1, &v9[*(v23 + 44)]);
  v24 = sub_1A524A244();
  KeyPath = swift_getKeyPath();
  v26 = &v9[*(v5 + 44)];
  *v26 = KeyPath;
  v26[1] = v24;
  v27 = v69;
  v28 = v68;
  v29 = v67;
  sub_1A49750EC(v15, v12, sub_1A4973690);
  v40 = v72;
  v41 = v71;
  v42 = v70;
  v30 = v52;
  sub_1A4975708(v9, v52, sub_1A4973DDC);
  *a2 = 0;
  *(a2 + 8) = v27;
  v31 = v50;
  *(a2 + 16) = v51;
  *(a2 + 24) = v28;
  *(a2 + 32) = v31;
  *(a2 + 40) = v29;
  v32 = v48;
  *(a2 + 48) = v49;
  *(a2 + 56) = v32;
  sub_1A49735D8(0, v33);
  v35 = v34;
  sub_1A49750EC(v12, a2 + *(v34 + 48), sub_1A4973690);
  v36 = a2 + *(v35 + 64);
  *v36 = 0;
  *(v36 + 8) = v40;
  *(v36 + 16) = v47;
  *(v36 + 24) = v41;
  *(v36 + 32) = v46;
  *(v36 + 40) = v42;
  v37 = v44;
  *(v36 + 48) = v45;
  *(v36 + 56) = v37;
  sub_1A4975708(v30, a2 + *(v35 + 80), sub_1A4973DDC);
  sub_1A4972D94(v9, sub_1A4973DDC);
  sub_1A497508C(v43, sub_1A4973690);
  sub_1A4972D94(v30, sub_1A4973DDC);
  return sub_1A497508C(v12, sub_1A4973690);
}

uint64_t sub_1A496E264@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v154 = a2;
  v186 = a3;
  sub_1A4973B80(0);
  v5 = *(v4 - 8);
  v194 = v4;
  v195 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v185 = (&v153 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A41C369C(0);
  v8 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v187 = &v153 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v153 - v11;
  sub_1A49739DC(0);
  v14 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v179 = &v153 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v153 - v18;
  sub_1A4973958(0, v17);
  v192 = v20;
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v176 = &v153 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v177 = &v153 - v25;
  sub_1A49738C4(0, v24);
  v191 = v26;
  MEMORY[0x1EEE9AC00](v26);
  v175 = &v153 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v153 - v29;
  sub_1A4973C80(0, &qword_1EB145F40, sub_1A49738C4);
  v190 = v31;
  MEMORY[0x1EEE9AC00](v31);
  v174 = &v153 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v153 - v34;
  sub_1A4973840(0);
  v188 = v36;
  MEMORY[0x1EEE9AC00](v36);
  v181 = &v153 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v160 = &v153 - v39;
  sub_1A49737F8(0);
  v189 = v40;
  MEMORY[0x1EEE9AC00](v40);
  v184 = &v153 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v183 = &v153 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v178 = &v153 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v182 = &v153 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v159 = &v153 - v49;
  MEMORY[0x1EEE9AC00](v50);
  v193 = &v153 - v51;
  v216 = *(a1 + 152);
  v202 = *(a1 + 152);
  v52 = swift_allocObject();
  memcpy((v52 + 16), a1, 0x118uLL);
  sub_1A3F30668(&v216, v201);
  v172 = a1;
  sub_1A40AD710(a1, v201);
  v171 = sub_1A3D5F9DC();
  sub_1A524B754();
  v53 = sub_1A524A0C4();
  v54 = v154;
  sub_1A5247BC4();
  v173 = v8;
  v55 = &v12[*(v8 + 36)];
  *v55 = v53;
  *(v55 + 1) = v56;
  *(v55 + 2) = v57;
  *(v55 + 3) = v58;
  *(v55 + 4) = v59;
  v55[40] = 0;
  v60 = v54[7];
  sub_1A524BC74();
  v170 = v60;
  sub_1A5248AD4();
  sub_1A49756A0(v12, v19, sub_1A41C369C);
  v61 = &v19[*(v14 + 36)];
  v62 = v207;
  *(v61 + 4) = v206;
  *(v61 + 5) = v62;
  *(v61 + 6) = v208;
  v63 = v203;
  *v61 = v202;
  *(v61 + 1) = v63;
  v64 = v205;
  *(v61 + 2) = v204;
  *(v61 + 3) = v64;
  sub_1A524A1A4();
  v65 = sub_1A4973A18();
  v66 = v177;
  v180 = v14;
  v169 = v65;
  sub_1A524A8F4();
  sub_1A4972D94(v19, sub_1A49739DC);
  v67 = v54;
  v68 = v54[3];
  LOBYTE(v12) = sub_1A524A064();
  v69 = *(v21 + 32);
  v177 = (v21 + 32);
  v168 = v69;
  v69(v30, v66, v192);
  v70 = &v30[*(v191 + 36)];
  *v70 = v68;
  v70[8] = v12;
  v71 = v54[4];
  KeyPath = swift_getKeyPath();
  sub_1A49753C4(v30, v35, sub_1A49738C4);
  v73 = &v35[*(v190 + 36)];
  *v73 = KeyPath;
  v73[1] = v71;
  v74 = v54[1];
  v75 = v160;
  v76 = &v160[*(v188 + 36)];
  v167 = sub_1A5248A14();
  v77 = *(v167 + 20);
  v78 = *MEMORY[0x1E697F468];
  v79 = sub_1A52494A4();
  v80 = *(v79 - 8);
  v81 = *(v80 + 104);
  v166 = v78;
  v164 = v81;
  v165 = v79;
  v163 = v80 + 104;
  (v81)(&v76[v77], v78);
  *v76 = v74;
  *(v76 + 1) = v74;
  sub_1A3E42C88(0);
  v162 = v82;
  *&v76[*(v82 + 36)] = 256;
  sub_1A3D2D5C4(v35, v75);

  v83 = sub_1A524BC74();
  v85 = v84;
  v86 = v159;
  v87 = &v159[*(v189 + 36)];
  v88 = v172;
  v201[0] = *(v172 + 104);
  sub_1A49754F8(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  v161 = v89;
  sub_1A524B6A4();
  v90 = 1;
  if (v209 == 1)
  {
    v91 = sub_1A524BC74();
    v92 = v185;
    *v185 = v91;
    *(v92 + 8) = v93;
    sub_1A4975020(0, &qword_1EB146100, sub_1A4973C14, MEMORY[0x1E697E330], MEMORY[0x1E697E320]);
    sub_1A49701B0(v67, v92 + *(v94 + 44), v95);
    sub_1A49756A0(v92, v87, sub_1A4973B80);
    v90 = 0;
  }

  v96 = *(v195 + 56);
  v195 += 56;
  v156 = v96;
  v96(v87, v90, 1, v194);
  sub_1A4973AEC(0);
  v155 = v97;
  v98 = (v87 + *(v97 + 36));
  *v98 = v83;
  v98[1] = v85;
  sub_1A49753C4(v75, v86, sub_1A4973840);
  sub_1A49753C4(v86, v193, sub_1A49737F8);
  sub_1A524BC74();
  sub_1A52481F4();
  v159 = v211;
  v160 = v209;
  v157 = v214;
  v158 = v213;
  v200 = 1;
  v199 = v210;
  v198 = v212;
  v215 = *(v88 + 168);
  v197 = *(v88 + 168);
  v99 = swift_allocObject();
  memcpy((v99 + 16), v88, 0x118uLL);
  sub_1A40AD710(v88, v201);
  sub_1A3F30668(&v215, v201);
  v100 = v187;
  sub_1A524B754();
  v101 = sub_1A524A0C4();
  sub_1A5247BC4();
  v102 = &v100[*(v173 + 36)];
  *v102 = v101;
  *(v102 + 1) = v103;
  *(v102 + 2) = v104;
  *(v102 + 3) = v105;
  *(v102 + 4) = v106;
  v102[40] = 0;
  sub_1A524BC74();
  v107 = 1;
  sub_1A5248AD4();
  v108 = v100;
  v109 = v179;
  sub_1A49756A0(v108, v179, sub_1A41C369C);
  v110 = (v109 + *(v180 + 36));
  v111 = v201[5];
  v112 = v201[6];
  v110[4] = v201[4];
  v110[5] = v111;
  v110[6] = v112;
  v113 = v201[1];
  *v110 = v201[0];
  v110[1] = v113;
  v114 = v201[3];
  v110[2] = v201[2];
  v110[3] = v114;
  sub_1A524A194();
  v115 = v176;
  sub_1A524A8F4();
  sub_1A4972D94(v109, sub_1A49739DC);
  v116 = *(v67 + 40);
  v117 = v67;
  v118 = sub_1A524A064();
  v119 = v175;
  v168(v175, v115, v192);
  v120 = &v119[*(v191 + 36)];
  *v120 = v116;
  v120[8] = v118;
  v121 = *(v67 + 48);
  v122 = swift_getKeyPath();
  v123 = v119;
  v124 = v174;
  sub_1A49753C4(v123, v174, sub_1A49738C4);
  v125 = (v124 + *(v190 + 36));
  *v125 = v122;
  v125[1] = v121;
  v126 = v181;
  v127 = &v181[*(v188 + 36)];
  v164(&v127[*(v167 + 20)], v166, v165);
  *v127 = v74;
  *(v127 + 1) = v74;
  *&v127[*(v162 + 36)] = 256;
  sub_1A3D2D5C4(v124, v126);

  v128 = sub_1A524BC74();
  v130 = v129;
  v131 = v178;
  v132 = &v178[*(v189 + 36)];
  v197 = *(v88 + 120);
  sub_1A524B6A4();
  if (v196 == 1)
  {
    v133 = sub_1A524BC74();
    v134 = v185;
    *v185 = v133;
    *(v134 + 8) = v135;
    sub_1A4975020(0, &qword_1EB146100, sub_1A4973C14, MEMORY[0x1E697E330], MEMORY[0x1E697E320]);
    sub_1A49701B0(v117, v134 + *(v136 + 44), v137);
    sub_1A49756A0(v134, v132, sub_1A4973B80);
    v107 = 0;
  }

  v156(v132, v107, 1, v194);
  v138 = (v132 + *(v155 + 36));
  *v138 = v128;
  v138[1] = v130;
  sub_1A49753C4(v126, v131, sub_1A4973840);
  v139 = v182;
  sub_1A49753C4(v131, v182, sub_1A49737F8);
  v140 = v193;
  v141 = v183;
  sub_1A49750EC(v193, v183, sub_1A49737F8);
  v142 = v200;
  v143 = v199;
  v144 = v198;
  v145 = v184;
  sub_1A49750EC(v139, v184, sub_1A49737F8);
  v146 = v186;
  sub_1A49750EC(v141, v186, sub_1A49737F8);
  sub_1A4973758(0, v147);
  v149 = v146 + *(v148 + 48);
  *v149 = 0;
  *(v149 + 8) = v142;
  v150 = v159;
  *(v149 + 16) = v160;
  *(v149 + 24) = v143;
  *(v149 + 32) = v150;
  *(v149 + 40) = v144;
  v151 = v157;
  *(v149 + 48) = v158;
  *(v149 + 56) = v151;
  sub_1A49750EC(v145, v146 + *(v148 + 64), sub_1A49737F8);
  sub_1A497508C(v139, sub_1A49737F8);
  sub_1A497508C(v140, sub_1A49737F8);
  sub_1A497508C(v145, sub_1A49737F8);
  return sub_1A497508C(v141, sub_1A49737F8);
}

uint64_t sub_1A496F128(uint64_t a1)
{
  v2 = sub_1A5246F24();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_1A46052B8();
  if (v6)
  {
    v7 = v6;
    sub_1A496F34C(1, v6);
    v15 = *(a1 + 104);
    LOBYTE(v14) = 1;
    sub_1A49754F8(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
    sub_1A524B6B4();
    v14 = *(a1 + 88);
    v15 = v14;
    v13[15] = 0;
    v16 = *(&v14 + 1);
    sub_1A4975708(&v16, v13, sub_1A445E630);
    sub_1A524B6B4();

    return sub_1A4975548(&v15);
  }

  else
  {
    v9 = sub_1A3C56D80();
    (*(v3 + 16))(v5, v9, v2);
    v10 = sub_1A5246F04();
    v11 = sub_1A524D244();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1A3C1C000, v10, v11, "Shared Album no longer available to accept. Ignoring.", v12, 2u);
      MEMORY[0x1A590EEC0](v12, -1, -1);
    }

    return (*(v3 + 8))(v5, v2);
  }
}

void sub_1A496F34C(int a1, void *a2)
{
  v3 = v2;
  LODWORD(v73) = a1;
  v5 = sub_1A5246F24();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v70 = v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v65 - v9;
  v11 = sub_1A3C56D80();
  v66 = *(v6 + 16);
  v67 = v11;
  v66(v10);
  v12 = a2;
  v13 = sub_1A5246F04();
  v14 = sub_1A524D264();

  v15 = os_log_type_enabled(v13, v14);
  v72 = v12;
  if (v15)
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v69 = v3;
    v65[1] = v17;
    *&v74 = v17;
    *v16 = 136315650;
    v18 = [v12 title];
    v71 = v6;
    v19 = v18;
    v20 = sub_1A524C674();
    v68 = v5;
    v21 = v20;
    v23 = v22;

    sub_1A3C2EF94(v21, v23, &v74);
  }

  v24 = *(v6 + 8);
  v24(v10, v5);
  if ((v73 & 1) == 0)
  {
    v74 = *(v3 + 88);
    LOBYTE(aBlock) = 0;
    sub_1A49754F8(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
    sub_1A524B6B4();
    [objc_opt_self() declineInvitationToSharedAlbum:v72 completionHandler:0];
    goto LABEL_13;
  }

  sub_1A3C52C70(0, &qword_1EB126910, off_1E771F6E8);
  v25 = [swift_getObjCClassFromMetadata() sharedInstance];
  v26 = [v25 simulatedSubscriptionError];

  if (v26 > 1)
  {
    if (v26 == 2)
    {
      v51 = *(v3 + 264);
      v50 = *(v3 + 272);
      v74 = *(v3 + 48);
      LOBYTE(aBlock) = 1;
      v52 = MEMORY[0x1E6981790];
      sub_1A49754F8(0, &qword_1EB146098, &type metadata for LemonadeSharedAlbumInvitationsCell.SharedAlbumActiveAlert, MEMORY[0x1E6981790]);
      sub_1A524B6B4();
      v74 = *(v3 + 64);
      v75 = *(v3 + 80);
      aBlock = v51;
      v77 = v50;
      sub_1A49754F8(0, &unk_1EB13A670, MEMORY[0x1E69E6158], v52);
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    if (v26 != 3)
    {
      goto LABEL_28;
    }

    v74 = *(v3 + 48);
    LOBYTE(aBlock) = 0;
    v53 = MEMORY[0x1E6981790];
    sub_1A49754F8(0, &qword_1EB146098, &type metadata for LemonadeSharedAlbumInvitationsCell.SharedAlbumActiveAlert, MEMORY[0x1E6981790]);
    sub_1A524B6B4();
    v74 = *(v3 + 64);
    v75 = *(v3 + 80);
    aBlock = 0;
    v77 = 0xE000000000000000;
    sub_1A49754F8(0, &unk_1EB13A670, MEMORY[0x1E69E6158], v53);
    sub_1A524B6B4();
    v74 = *(v3 + 32);
    LOBYTE(aBlock) = 1;
LABEL_20:
    sub_1A49754F8(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], v53);
    sub_1A524B6B4();
    return;
  }

  if (!v26)
  {
    v71 = v6;
    v27 = v5;
    v28 = [v72 photoLibrary];
    if (v28)
    {
      v29 = v28;
      v30 = objc_opt_self();
      v31 = [v30 sharedAlbumsEnabledForPhotoLibrary_];

      if (!v31)
      {
        v74 = *(v3 + 48);
        LOBYTE(aBlock) = 0;
        v54 = MEMORY[0x1E6981790];
        sub_1A49754F8(0, &qword_1EB146098, &type metadata for LemonadeSharedAlbumInvitationsCell.SharedAlbumActiveAlert, MEMORY[0x1E6981790]);
        sub_1A524B6B4();
        v74 = *(v3 + 64);
        v75 = *(v3 + 80);
        aBlock = 0;
        v77 = 0xE000000000000000;
        sub_1A49754F8(0, &unk_1EB13A670, MEMORY[0x1E69E6158], v54);
        sub_1A524B6B4();
        v74 = *(v3 + 32);
        LOBYTE(aBlock) = 1;
        sub_1A49754F8(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], v54);
        sub_1A524B6B4();
        goto LABEL_13;
      }

      v74 = *(v3 + 88);
      LOBYTE(aBlock) = 0;
      sub_1A49754F8(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
      v26 = &v74;
      sub_1A524B6B4();
      v32 = [v72 photoLibrary];
      if (v32)
      {
        v33 = v32;
        v34 = [v30 hasReachedLimitOfAcceptedSharedAlbumsInPhotoLibrary_];

        v35 = v70;
        if (v34)
        {
          v36 = v27;
          (v66)(v70, v67, v27);
          v37 = v72;
          v38 = sub_1A5246F04();
          v39 = sub_1A524D244();

          if (os_log_type_enabled(v38, v39))
          {
            v40 = swift_slowAlloc();
            v41 = swift_slowAlloc();
            v69 = v3;
            v73 = v41;
            *&v74 = v41;
            *v40 = 136446210;
            v42 = [v37 uuid];
            v68 = v36;
            v43 = v42;
            v44 = sub_1A524C674();
            v46 = v45;

            sub_1A3C2EF94(v44, v46, &v74);
          }

          v24(v35, v27);
          v26 = objc_opt_self();
          v59 = [v37 localizedTitle];
          v60 = [v26 errorForReachingMaxSubscriptionLimitWithAlbumTitle_];

          if (v60)
          {
            swift_getErrorValue();
            v61 = sub_1A524EBE4();
            v63 = v62;
            v74 = *(v3 + 48);
            LOBYTE(aBlock) = 1;
            v64 = MEMORY[0x1E6981790];
            sub_1A49754F8(0, &qword_1EB146098, &type metadata for LemonadeSharedAlbumInvitationsCell.SharedAlbumActiveAlert, MEMORY[0x1E6981790]);
            sub_1A524B6B4();
            v74 = *(v3 + 64);
            v75 = *(v3 + 80);
            aBlock = v61;
            v77 = v63;
            sub_1A49754F8(0, &unk_1EB13A670, MEMORY[0x1E69E6158], v64);
            _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
          }

          goto LABEL_27;
        }

        v55 = swift_allocObject();
        v56 = v72;
        *(v55 + 16) = v72;
        memcpy((v55 + 24), v3, 0x118uLL);
        v80 = sub_1A49749C0;
        v81 = v55;
        aBlock = MEMORY[0x1E69E9820];
        v77 = 1107296256;
        v78 = sub_1A3D6084C;
        v79 = &block_descriptor_26_5;
        v57 = _Block_copy(&aBlock);
        v58 = v56;
        sub_1A40AD710(v3, &v74);

        [v30 acceptInvitationToSharedAlbum:v58 completionHandler:v57];
        _Block_release(v57);
LABEL_13:
        v47 = objc_opt_self();
        v48 = sub_1A524C634();

        sub_1A3E75770(MEMORY[0x1E69E7CC0]);
        sub_1A3C52C70(0, &qword_1EB12B160, 0x1E69E58C0);
        v49 = sub_1A524C3D4();

        [v47 sendEvent:v48 withPayload:v49];

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v26 == 1)
  {
    v74 = *(v3 + 48);
    LOBYTE(aBlock) = 1;
    v53 = MEMORY[0x1E6981790];
    sub_1A49754F8(0, &qword_1EB146098, &type metadata for LemonadeSharedAlbumInvitationsCell.SharedAlbumActiveAlert, MEMORY[0x1E6981790]);
    sub_1A524B6B4();
    v74 = *(v3 + 64);
    v75 = *(v3 + 80);
    aBlock = 0xD00000000000001ALL;
    v77 = 0x80000001A53F4430;
    sub_1A49754F8(0, &unk_1EB13A670, MEMORY[0x1E69E6158], v53);
    sub_1A524B6B4();
    v74 = *(v3 + 32);
    LOBYTE(aBlock) = 1;
    goto LABEL_20;
  }

LABEL_28:
  type metadata accessor for PXSharedAlbumsSettingsLemonadeSimulatedSubscriptionError(0);
  *&v74 = v26;
  sub_1A524EB44();
  __break(1u);
}

uint64_t sub_1A496FF8C(uint64_t a1)
{
  v2 = sub_1A5246F24();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_1A46052B8();
  if (v6)
  {
    v7 = v6;
    sub_1A496F34C(0, v6);
    v15 = *(a1 + 120);
    LOBYTE(v14) = 1;
    sub_1A49754F8(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
    sub_1A524B6B4();
    v14 = *(a1 + 88);
    v15 = v14;
    v13[15] = 0;
    v16 = *(&v14 + 1);
    sub_1A4975708(&v16, v13, sub_1A445E630);
    sub_1A524B6B4();

    return sub_1A4975548(&v15);
  }

  else
  {
    v9 = sub_1A3C56D80();
    (*(v3 + 16))(v5, v9, v2);
    v10 = sub_1A5246F04();
    v11 = sub_1A524D244();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1A3C1C000, v10, v11, "Shared Album no longer available to decline. Ignoring.", v12, 2u);
      MEMORY[0x1A590EEC0](v12, -1, -1);
    }

    return (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_1A49701B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v38 = a2;
  sub_1A4973C50(0, a3);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v37 - v9;
  v11 = sub_1A524B394();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E42C60(0);
  v16 = v15 - 8;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = (&v37 - v21);
  (*(v12 + 104))(v14, *MEMORY[0x1E69814D8], v11, v20);
  v23 = sub_1A524B4C4();
  v24 = *(a1 + 8);
  v25 = v22 + *(v16 + 44);
  v26 = *(sub_1A5248A14() + 20);
  v27 = *MEMORY[0x1E697F468];
  v28 = sub_1A52494A4();
  (*(*(v28 - 8) + 104))(&v25[v26], v27, v28);
  *v25 = v24;
  *(v25 + 1) = v24;
  sub_1A3E42C88(0);
  *&v25[*(v29 + 36)] = 256;
  *v22 = v23;
  sub_1A5248074();
  v30 = sub_1A524B434();
  KeyPath = swift_getKeyPath();
  sub_1A4973C80(0, &qword_1EB145F98, sub_1A411848C);
  v33 = &v10[*(v32 + 36)];
  *v33 = KeyPath;
  v33[1] = v30;
  *&v10[*(v5 + 44)] = 0x3FF0000000000000;
  sub_1A4975708(v22, v18, sub_1A3E42C60);
  sub_1A4975708(v10, v7, sub_1A4973C50);
  v34 = v38;
  sub_1A4975708(v18, v38, sub_1A3E42C60);
  sub_1A4973030(0, &qword_1EB145F88, sub_1A3E42C60, sub_1A4973C50);
  sub_1A4975708(v7, v34 + *(v35 + 48), sub_1A4973C50);
  sub_1A4972D94(v10, sub_1A4973C50);
  sub_1A4972D94(v22, sub_1A3E42C60);
  sub_1A4972D94(v7, sub_1A4973C50);
  return sub_1A4972D94(v18, sub_1A3E42C60);
}

id sub_1A497055C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v77 = a2;
  v79 = a3;
  sub_1A4974108(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v80 = &v68[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v78 = &v68[-v7];
  sub_1A3DF1428(0);
  v9 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v68[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A4972FC4(0, &qword_1EB145FE8, sub_1A3DF1428, MEMORY[0x1E697EC00], MEMORY[0x1E697E830]);
  v71 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v74 = &v68[-v13];
  sub_1A4973FD8(0);
  v73 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v76 = &v68[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v16);
  v72 = &v68[-v17];
  MEMORY[0x1EEE9AC00](v18);
  v75 = &v68[-v19];
  result = [objc_opt_self() sharingDisplayNameIncludingEmail:1 allowsEmail:1];
  if (result)
  {
    v21 = result;
    v22 = sub_1A524C674();
    v24 = v23;

    *&v84 = v22;
    *(&v84 + 1) = v24;
    v25 = MEMORY[0x1E69E6158];
    v26 = sub_1A524C8D4();
    v28 = v27;
    sub_1A3C38BD4(0xD00000000000002BLL);
    sub_1A4973574(0, &qword_1EB12B110, sub_1A3D78B5C, MEMORY[0x1E69E6F90]);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_1A52F8E10;
    *(v29 + 56) = v25;
    *(v29 + 64) = sub_1A3D710E8();
    *(v29 + 32) = v26;
    *(v29 + 40) = v28;
    v30 = sub_1A524C6C4();
    v32 = v31;

    *&v84 = v30;
    *(&v84 + 1) = v32;
    sub_1A3D5F9DC();
    v33 = sub_1A524A464();
    v35 = v34;
    LOBYTE(v29) = v36;
    v38 = v37;
    v39 = *(a1 + 64);
    v69 = *(a1 + 72);
    KeyPath = swift_getKeyPath();
    v41 = *(v9 + 36);
    v70 = a1;
    v42 = &v11[v41];
    sub_1A4973574(0, &qword_1EB12C9D0, MEMORY[0x1E6980FB8], MEMORY[0x1E6980A08]);
    v44 = *(v43 + 28);
    v45 = *MEMORY[0x1E6980FA8];
    v46 = sub_1A524A354();
    (*(*(v46 - 8) + 104))(v42 + v44, v45, v46);
    *v42 = swift_getKeyPath();
    *v11 = v33;
    *(v11 + 1) = v35;
    v11[16] = v29 & 1;
    *(v11 + 3) = v38;
    *(v11 + 4) = KeyPath;
    *(v11 + 5) = v39;
    v11[48] = v69;
    sub_1A524BC84();
    sub_1A5248AD4();
    v47 = v74;
    sub_1A49756A0(v11, v74, sub_1A3DF1428);
    v48 = &v47[*(v71 + 36)];
    v49 = v89;
    v48[4] = v88;
    v48[5] = v49;
    v48[6] = v90;
    v50 = v85;
    *v48 = v84;
    v48[1] = v50;
    v51 = v87;
    v48[2] = v86;
    v48[3] = v51;
    v52 = swift_getKeyPath();
    v53 = v47;
    v54 = v72;
    sub_1A4975154(v53, v72);
    v55 = &v54[*(v73 + 36)];
    *v55 = v52;
    v55[8] = 0;
    v56 = v75;
    sub_1A49756A0(v54, v75, sub_1A4973FD8);
    sub_1A524BC74();
    sub_1A52481F4();
    v74 = v91;
    v73 = v93;
    v72 = v95;
    v71 = v96;
    v83 = 1;
    v82 = v92;
    v81 = v94;
    v57 = sub_1A5249314();
    v58 = v78;
    *v78 = v57;
    *(v58 + 8) = 0;
    *(v58 + 16) = 0;
    sub_1A4975020(0, &qword_1EB1460F8, sub_1A497419C, MEMORY[0x1E697E258], MEMORY[0x1E697E250]);
    sub_1A4970CF4(v77, v70, v58 + *(v59 + 44));
    v60 = v76;
    sub_1A4975708(v56, v76, sub_1A4973FD8);
    LOBYTE(v42) = v83;
    LOBYTE(v39) = v82;
    v61 = v81;
    v62 = v80;
    sub_1A4975708(v58, v80, sub_1A4974108);
    v63 = v79;
    sub_1A4975708(v60, v79, sub_1A4973FD8);
    sub_1A4973F24(0, v64);
    v66 = v63 + *(v65 + 48);
    *v66 = 0;
    *(v66 + 8) = v42;
    *(v66 + 16) = v74;
    *(v66 + 24) = v39;
    *(v66 + 32) = v73;
    *(v66 + 40) = v61;
    v67 = v71;
    *(v66 + 48) = v72;
    *(v66 + 56) = v67;
    sub_1A4975708(v62, v63 + *(v65 + 64), sub_1A4974108);
    sub_1A4972D94(v58, sub_1A4974108);
    sub_1A4972D94(v56, sub_1A4973FD8);
    sub_1A4972D94(v62, sub_1A4974108);
    return sub_1A4972D94(v60, sub_1A4973FD8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A4970CF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v97 = a2;
  v104 = a3;
  sub_1A4973A98(0, &qword_1EB127480, MEMORY[0x1E6981148], MEMORY[0x1E6981138], MEMORY[0x1E697D670]);
  v101 = v5;
  v99 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v85 = &v84 - v6;
  v7 = type metadata accessor for InvitationsItem(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v100 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A41C3F80(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v103 = &v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v92 = &v84 - v12;
  sub_1A4973C80(0, &qword_1EB146020, sub_1A3DF1428);
  v90 = v13 - 8;
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v84 - v14;
  sub_1A4974328(0, &qword_1EB146018, &qword_1EB146020, sub_1A3DF1428, MEMORY[0x1E697EC00]);
  v94 = v16 - 8;
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v91 = &v84 - v18;
  sub_1A4974270(0, v17);
  v96 = v19 - 8;
  MEMORY[0x1EEE9AC00](v19 - 8);
  v95 = &v84 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4974234(0);
  v98 = v21 - 8;
  MEMORY[0x1EEE9AC00](v21 - 8);
  v102 = &v84 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v93 = &v84 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v88 = &v84 - v26;
  sub_1A3C38BD4(0xD000000000000030);
  sub_1A4973574(0, &qword_1EB12B110, sub_1A3D78B5C, MEMORY[0x1E69E6F90]);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1A52F8E10;
  v86 = a1;
  v89 = *(a1 + 16);
  v28 = sub_1A46056B4();
  v30 = v29;
  *(v27 + 56) = MEMORY[0x1E69E6158];
  *(v27 + 64) = sub_1A3D710E8();
  *(v27 + 32) = v28;
  *(v27 + 40) = v30;
  v31 = sub_1A524C6C4();
  v33 = v32;

  v105[0] = v31;
  v105[1] = v33;
  v84 = sub_1A3D5F9DC();
  v34 = sub_1A524A464();
  v36 = v35;
  LOBYTE(v31) = v37;
  v39 = v38;
  v87 = *(v97 + 80);
  LODWORD(v97) = *(v97 + 88);
  KeyPath = swift_getKeyPath();
  sub_1A3DF1428(0);
  v42 = &v15[*(v41 + 36)];
  sub_1A4973574(0, &qword_1EB12C9D0, MEMORY[0x1E6980FB8], MEMORY[0x1E6980A08]);
  v44 = *(v43 + 28);
  v45 = *MEMORY[0x1E6980FA8];
  v46 = sub_1A524A354();
  (*(*(v46 - 8) + 104))(v42 + v44, v45, v46);
  *v42 = swift_getKeyPath();
  *v15 = v34;
  *(v15 + 1) = v36;
  v47 = v99;
  v15[16] = v31 & 1;
  *(v15 + 3) = v39;
  *(v15 + 4) = KeyPath;
  v48 = v88;
  v49 = v92;
  *(v15 + 5) = v87;
  v15[48] = v97;
  v50 = sub_1A524B334();
  v51 = swift_getKeyPath();
  v52 = &v15[*(v90 + 44)];
  *v52 = v51;
  v52[1] = v50;
  sub_1A524BC84();
  v53 = 1;
  sub_1A5248AD4();
  v54 = v91;
  sub_1A49751F0(v15, v91);
  v55 = (v54 + *(v94 + 44));
  v56 = v107[5];
  v55[4] = v107[4];
  v55[5] = v56;
  v55[6] = v107[6];
  v57 = v107[1];
  *v55 = v107[0];
  v55[1] = v57;
  v58 = v107[3];
  v55[2] = v107[2];
  v55[3] = v58;
  v59 = swift_getKeyPath();
  v60 = v54;
  v61 = v95;
  sub_1A4975270(v60, v95);
  v62 = v61 + *(v96 + 44);
  *v62 = v59;
  *(v62 + 8) = 0;
  LOBYTE(v59) = sub_1A524A0B4();
  sub_1A5247BC4();
  v64 = v63;
  v66 = v65;
  v68 = v67;
  v70 = v69;
  v71 = v61;
  v72 = v93;
  sub_1A49756A0(v71, v93, sub_1A4974270);
  v73 = v72 + *(v98 + 44);
  *v73 = v59;
  v74 = v101;
  *(v73 + 8) = v64;
  *(v73 + 16) = v66;
  *(v73 + 24) = v68;
  *(v73 + 32) = v70;
  *(v73 + 40) = 0;
  sub_1A49756A0(v72, v48, sub_1A4974234);
  v75 = v100;
  sub_1A4604CB0(v100);
  LOBYTE(v72) = sub_1A3F64938();
  sub_1A4972D94(v75, type metadata accessor for InvitationsItem);
  if ((v72 & 1) == 0)
  {
    v76 = v86;
    v108 = *(v86 + 184);
    v106 = *(v86 + 184);
    v77 = swift_allocObject();
    memcpy((v77 + 16), v76, 0x118uLL);
    sub_1A3F30668(&v108, v105);
    sub_1A40AD710(v76, v105);
    v78 = v85;
    sub_1A524B754();
    (*(v47 + 32))(v49, v78, v74);
    v53 = 0;
  }

  (*(v47 + 56))(v49, v53, 1, v74);
  v79 = v102;
  sub_1A4975708(v48, v102, sub_1A4974234);
  v80 = v103;
  sub_1A4975708(v49, v103, sub_1A41C3F80);
  v81 = v104;
  sub_1A4975708(v79, v104, sub_1A4974234);
  sub_1A4973030(0, &qword_1EB146000, sub_1A4974234, sub_1A41C3F80);
  sub_1A4975708(v80, v81 + *(v82 + 48), sub_1A41C3F80);
  sub_1A4972D94(v49, sub_1A41C3F80);
  sub_1A4972D94(v48, sub_1A4974234);
  sub_1A4972D94(v80, sub_1A41C3F80);
  return sub_1A4972D94(v79, sub_1A4974234);
}

void sub_1A49715B0(void *a1, void *a2)
{
  v4 = sub_1A5246F24();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v8 = a1;
    v9 = sub_1A3C56D80();
    (*(v5 + 16))(v7, v9, v4);
    v10 = a1;
    v11 = a2;
    v12 = sub_1A5246F04();
    v13 = sub_1A524D244();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v21 = v13;
      v15 = v14;
      v20 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v23 = v22;
      *v15 = 136315650;
      v16 = [v11 title];
      v17 = sub_1A524C674();
      v19 = v18;

      sub_1A3C2EF94(v17, v19, &v23);
    }

    (*(v5 + 8))(v7, v4);
  }
}

void sub_1A4971894(void *a1, void *a2, void *a3)
{
  v72 = a2;
  v73 = a3;
  v4 = sub_1A524BEE4();
  v70 = *(v4 - 8);
  v71 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v69 = v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A524BF64();
  v68 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A524BFC4();
  v67 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v62 - v13;
  v15 = sub_1A5246F24();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v74 = v62 - v20;
  if (a1)
  {
    v21 = a1;
    v22 = sub_1A3C56D80();
    v23 = v16;
    (*(v16 + 16))(v74, v22, v15);
    v24 = a1;
    v25 = v72;
    v26 = sub_1A5246F04();
    v27 = sub_1A524D244();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      *&v75 = v72;
      *v28 = 136446466;
      v29 = [v25 uuid];
      v30 = sub_1A524C674();
      v32 = v31;

      sub_1A3C2EF94(v30, v32, &v75);
    }

    (*(v23 + 8))(v74, v15);
    v33 = v73;
    v35 = v73[33];
    v34 = v73[34];
    v75 = *(v73 + 3);
    LOBYTE(aBlock) = 1;
    v36 = MEMORY[0x1E6981790];
    sub_1A49754F8(0, &qword_1EB146098, &type metadata for LemonadeSharedAlbumInvitationsCell.SharedAlbumActiveAlert, MEMORY[0x1E6981790]);
    sub_1A524B6B4();
    v75 = *(v33 + 4);
    v76 = v33[10];
    aBlock = v35;
    v78 = v34;
    sub_1A49754F8(0, &unk_1EB13A670, MEMORY[0x1E69E6158], v36);
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v63 = v14;
  v64 = v11;
  v65 = v8;
  v66 = v9;
  v74 = v6;
  v37 = sub_1A3C56D80();
  v38 = v18;
  (*(v16 + 16))(v18, v37, v15);
  v39 = v72;
  v40 = sub_1A5246F04();
  v41 = sub_1A524D264();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v62[3] = v41;
    v72 = v16;
    v43 = v42;
    *&v75 = swift_slowAlloc();
    *v43 = 136446210;
    v44 = [v39 uuid];
    v45 = sub_1A524C674();
    v47 = v46;

    sub_1A3C2EF94(v45, v47, &v75);
  }

  (*(v16 + 8))(v38, v15);
  v49 = v68;
  v48 = v69;
  v50 = v66;
  v51 = v67;
  v53 = v63;
  v52 = v64;
  sub_1A3C52C70(0, &qword_1EB12B180, 0x1E69E9610);
  v69 = sub_1A524D474();
  sub_1A524BFA4();
  sub_1A524C014();
  v72 = *(v51 + 8);
  (v72)(v52, v50);
  v54 = swift_allocObject();
  v55 = v73;
  memcpy((v54 + 16), v73, 0x118uLL);
  *(v54 + 296) = v39;
  v81 = sub_1A4974EE0;
  v82 = v54;
  aBlock = MEMORY[0x1E69E9820];
  v78 = 1107296256;
  v79 = sub_1A3C2E0D0;
  v80 = &block_descriptor_48_3;
  v56 = _Block_copy(&aBlock);
  v57 = v39;
  sub_1A40AD710(v55, &v75);

  v58 = v65;
  sub_1A524BF14();
  *&v75 = MEMORY[0x1E69E7CC0];
  sub_1A49730AC(&qword_1EB12B1E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1A3C38394(0);
  sub_1A49730AC(&qword_1EB12B1B0, sub_1A3C38394, MEMORY[0x1E69E6328]);
  v59 = v53;
  v60 = v71;
  sub_1A524E224();
  v61 = v69;
  MEMORY[0x1A5908790](v59, v58, v48, v56);
  _Block_release(v56);

  (*(v70 + 8))(v48, v60);
  (*(v49 + 8))(v58, v74);
  (v72)(v59, v66);
}

void sub_1A497215C(uint64_t a1, void *a2)
{
  sub_1A3EC2B6C(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v74 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for LemonadeNavigationDestination(0);
  MEMORY[0x1EEE9AC00](v77);
  v78 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A5246F24();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v73 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v75 = &v70 - v11;
  v12 = sub_1A5249234();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = *(a1 + 8);
  v84 = *a1;
  v16 = v84;
  LODWORD(a1) = v85;

  v17 = v16;
  v76 = a1;
  if ((a1 & 1) == 0)
  {
    v18 = sub_1A524D254();
    v19 = sub_1A524A014();
    sub_1A5246DF4(v18, &dword_1A3C1C000, v19, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A4972D94(&v84, sub_1A429658C);
    (*(v13 + 8))(v15, v12);
    v17 = *&v82[0];
  }

  v79 = v15;
  v71 = v13;
  v72 = v12;
  v81 = v7;
  if (v17)
  {
    v20 = *(v17 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_photoLibraryContext);

    v21 = *(v20 + 16);

    v22 = [v21 px_standardLibrarySpecificFetchOptions];

    v23 = objc_opt_self();
    sub_1A49754F8(0, &qword_1EB12B260, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1A52F8E10;
    v25 = a2;
    v26 = [a2 uuid];
    v27 = sub_1A524C674();
    v29 = v28;

    *(v24 + 32) = v27;
    *(v24 + 40) = v29;
    v30 = sub_1A524CA14();

    v80 = v22;
    v31 = [v23 fetchAssetCollectionsWithLocalIdentifiers:v30 options:v22];

    v32 = [v31 firstObject];
    if (v32)
    {
      v33 = v32;
      v34 = sub_1A3C56D80();
      v35 = v8;
      v36 = *(v8 + 16);
      v37 = v75;
      v38 = v81;
      v36(v75, v34, v81);
      v39 = v25;
      v40 = sub_1A5246F04();
      v41 = sub_1A524D264();

      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v73 = v33;
        *&v82[0] = v43;
        *v42 = 136446210;
        v44 = [v39 uuid];
        v45 = sub_1A524C674();
        v47 = v46;

        sub_1A3C2EF94(v45, v47, v82);
      }

      (*(v35 + 8))(v37, v38);
      v61 = v79;
      v83 = 0;
      memset(v82, 0, sizeof(v82));
      v62 = v33;
      v63 = v78;
      sub_1A47A9538(v62, 0, 0, 0, v82, 0, 0, v78);
      swift_storeEnumTagMultiPayload();

      if ((v76 & 1) == 0)
      {
        v64 = sub_1A524D254();
        v65 = sub_1A524A014();
        sub_1A5246DF4(v64, &dword_1A3C1C000, v65, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

        sub_1A5249224();
        swift_getAtKeyPath();
        sub_1A4972D94(&v84, sub_1A429658C);
        (*(v71 + 8))(v61, v72);
        v16 = *&v82[0];
      }

      if (v16)
      {
        v66 = sub_1A52434D4();
        v67 = v74;
        (*(*(v66 - 8) + 56))(v74, 1, 1, v66);
        v68 = sub_1A3C30368();
        v69 = sub_1A4657324(v63, 0, v68 & 1, 0, 0, v67, 0, 0);

        sub_1A3E00630(v69);

        sub_1A4972D94(v67, sub_1A3EC2B6C);
        sub_1A4972D94(v63, type metadata accessor for LemonadeNavigationDestination);
      }

      else
      {
        sub_1A4972D94(v63, type metadata accessor for LemonadeNavigationDestination);
      }
    }

    else
    {
      v48 = sub_1A3C56D80();
      v49 = v8;
      v50 = *(v8 + 16);
      v51 = v73;
      v52 = v81;
      v50(v73, v48, v81);
      v53 = v25;
      v54 = sub_1A5246F04();
      v55 = sub_1A524D244();

      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        *&v82[0] = swift_slowAlloc();
        *v56 = 136446210;
        v57 = [v53 uuid];
        v58 = sub_1A524C674();
        v60 = v59;

        sub_1A3C2EF94(v58, v60, v82);
      }

      (*(v49 + 8))(v51, v52);
    }
  }

  else
  {
    __break(1u);
  }
}

__n128 sub_1A4972A74@<Q0>(unint64_t a1@<X0>, unsigned __int8 a2@<W1>, __n128 *a3@<X8>)
{
  KeyPath = swift_getKeyPath();
  sub_1A524B694();
  sub_1A524B694();
  sub_1A524B694();
  sub_1A524B694();
  sub_1A524B694();
  sub_1A524B694();
  v4 = sub_1A3C38BD4(0xD000000000000022);
  v33 = v5;
  v34 = v4;
  v6 = sub_1A3C38BD4(0xD00000000000002ELL);
  v31 = v7;
  v32 = v6;
  v8 = sub_1A3C38BD4(0xD00000000000002FLL);
  v29 = v9;
  v30 = v8;
  v10 = sub_1A3C38BD4(0xD00000000000002CLL);
  v27 = v11;
  v28 = v10;
  v12 = sub_1A3C38BD4(0xD000000000000035);
  v14 = v13;
  v15 = sub_1A3C38BD4(0xD00000000000003CLL);
  v17 = v16;
  v18 = sub_1A3C38BD4(0xD00000000000003FLL);
  v20 = v19;
  v21 = sub_1A3C38BD4(0xD000000000000044);
  v23 = v22;
  v24 = sub_1A3C38BD4(0xD000000000000046);
  a3->n128_u64[0] = KeyPath;
  a3[1].n128_u64[0] = a1;
  a3->n128_u8[8] = 0;
  a3[1].n128_u8[8] = a2;
  a3[2].n128_u8[0] = v38.n128_u8[0];
  a3[2].n128_u64[1] = v38.n128_u64[1];
  a3[3].n128_u8[0] = v38.n128_u8[0];
  a3[3].n128_u64[1] = v38.n128_u64[1];
  result = v38;
  a3[4] = v38;
  a3[5].n128_u64[0] = v39;
  a3[5].n128_u8[8] = v38.n128_u8[0];
  a3[6].n128_u64[0] = v38.n128_u64[1];
  a3[6].n128_u8[8] = v38.n128_u8[0];
  a3[7].n128_u64[0] = v38.n128_u64[1];
  a3[7].n128_u8[8] = v38.n128_u8[0];
  a3[8].n128_u64[0] = v38.n128_u64[1];
  a3[8].n128_u64[1] = v34;
  a3[9].n128_u64[0] = v33;
  a3[9].n128_u64[1] = v32;
  a3[10].n128_u64[0] = v31;
  a3[10].n128_u64[1] = v30;
  a3[11].n128_u64[0] = v29;
  a3[11].n128_u64[1] = v28;
  a3[12].n128_u64[0] = v27;
  a3[12].n128_u64[1] = v12;
  a3[13].n128_u64[0] = v14;
  a3[13].n128_u64[1] = v15;
  a3[14].n128_u64[0] = v17;
  a3[14].n128_u64[1] = v18;
  a3[15].n128_u64[0] = v20;
  a3[15].n128_u64[1] = v21;
  a3[16].n128_u64[0] = v23;
  a3[16].n128_u64[1] = v24;
  a3[17].n128_u64[0] = v26;
  return result;
}

uint64_t sub_1A4972D94(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A4972DF4(uint64_t a1)
{
  if (!qword_1EB145EA8)
  {
    sub_1A4972EF4(255);
    sub_1A5243544();
    sub_1A49730AC(&qword_1EB145ED0, sub_1A4972EF4, MEMORY[0x1E6981880]);
    sub_1A49730AC(&qword_1EB12EAA8, MEMORY[0x1E69C2510], MEMORY[0x1E69C2508]);
    v1 = sub_1A5242904();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB145EA8);
    }
  }
}

void sub_1A4972EF4(uint64_t a1)
{
  if (!qword_1EB145EB0)
  {
    sub_1A4972F88(255);
    sub_1A49730AC(&qword_1EB145EC8, sub_1A4972F88, MEMORY[0x1E6981F48]);
    v1 = sub_1A524B8B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB145EB0);
    }
  }
}

void sub_1A4972FC4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_1A4973030(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
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

uint64_t sub_1A49730AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A49730F4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(sub_1A5243934() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for LemonadeSharedLibraryInvitationsCell(0) - 8);
  v7 = (*(v6 + 64) + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + v7);
  v10 = *(v1 + v8);
  v11 = *(v1 + ((((((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1A496A924(a1, v9, v10, v11);
}

void sub_1A4973224(uint64_t a1@<X8>)
{
  type metadata accessor for LemonadeSharedLibraryInvitationsCell(0);

  sub_1A496B1DC(a1);
}

void sub_1A497332C(uint64_t a1)
{
  if (!qword_1EB145EE8)
  {
    type metadata accessor for LemonadeSharedAlbumsAvatarView(255);
    sub_1A5243544();
    sub_1A4972FC4(255, &qword_1EB145EF0, sub_1A4973470, MEMORY[0x1E6981E70], MEMORY[0x1E697F960]);
    sub_1A49730AC(&qword_1EB134E00, type metadata accessor for LemonadeSharedAlbumsAvatarView, &unk_1A5374E30);
    sub_1A49730AC(&qword_1EB12EAA8, MEMORY[0x1E69C2510], MEMORY[0x1E69C2508]);
    sub_1A4974390();
    v1 = sub_1A5242904();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB145EE8);
    }
  }
}

void sub_1A49734AC(uint64_t a1)
{
  if (!qword_1EB145F00)
  {
    sub_1A4973540(255);
    sub_1A49730AC(&qword_1EB146038, sub_1A4973540, MEMORY[0x1E6981F48]);
    v1 = sub_1A524B894();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB145F00);
    }
  }
}

void sub_1A4973574(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A49735D8(uint64_t a1, double a2)
{
  if (!qword_1EB145F10)
  {
    sub_1A4973A98(255, &qword_1EB1284E0, MEMORY[0x1E6981840], MEMORY[0x1E697E048], MEMORY[0x1E697E830]);
    sub_1A4973690(255);
    sub_1A4973DDC(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata, &qword_1EB145F10);
    }
  }
}

void sub_1A4973690(uint64_t a1)
{
  if (!qword_1EB145F18)
  {
    sub_1A4973724(255);
    sub_1A49730AC(&qword_1EB145FB8, sub_1A4973724, MEMORY[0x1E6981F48]);
    v1 = sub_1A524B784();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB145F18);
    }
  }
}

void sub_1A4973758(uint64_t a1, double a2)
{
  if (!qword_1EB145F28)
  {
    sub_1A49737F8(255);
    sub_1A4973A98(255, &qword_1EB1284E0, MEMORY[0x1E6981840], MEMORY[0x1E697E048], MEMORY[0x1E697E830]);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB145F28);
    }
  }
}

void sub_1A4973840(uint64_t a1)
{
  if (!qword_1EB145F38)
  {
    sub_1A4973C80(255, &qword_1EB145F40, sub_1A49738C4);
    sub_1A3E42C88(255);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB145F38);
    }
  }
}

void sub_1A49738C4(uint64_t a1, double a2)
{
  if (!qword_1EB145F48)
  {
    sub_1A4973958(255, a2);
    sub_1A4973A98(255, &qword_1EB127B10, MEMORY[0x1E69815C0], MEMORY[0x1E6981568], MEMORY[0x1E6980460]);
    v2 = sub_1A5248804();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB145F48);
    }
  }
}

void sub_1A4973958(uint64_t a1, double a2)
{
  if (!qword_1EB145F50)
  {
    sub_1A49739DC(255);
    sub_1A4973A18();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB145F50);
    }
  }
}

unint64_t sub_1A4973A18()
{
  result = qword_1EB145F60;
  if (!qword_1EB145F60)
  {
    sub_1A49739DC(255);
    sub_1A41C3C14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB145F60);
  }

  return result;
}

void sub_1A4973A98(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void sub_1A4973AEC(uint64_t a1)
{
  if (!qword_1EB145F68)
  {
    sub_1A4973574(255, &qword_1EB145F70, sub_1A4973B80, MEMORY[0x1E69E6720]);
    sub_1A4973D04();
    v1 = sub_1A5248AE4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB145F68);
    }
  }
}

void sub_1A4973B80(uint64_t a1)
{
  if (!qword_1EB145F78)
  {
    sub_1A4973C14(255);
    sub_1A49730AC(&qword_1EB145FA0, sub_1A4973C14, MEMORY[0x1E6981F48]);
    v1 = sub_1A524B8B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB145F78);
    }
  }
}

void sub_1A4973C80(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1A497409C(255, &qword_1EB1277F0, &qword_1EB127560, MEMORY[0x1E69815C0]);
    v4 = sub_1A5248804();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1A4973D04()
{
  result = qword_1EB145FA8;
  if (!qword_1EB145FA8)
  {
    sub_1A4973574(255, &qword_1EB145F70, sub_1A4973B80, MEMORY[0x1E69E6720]);
    sub_1A49730AC(&qword_1EB145FB0, sub_1A4973B80, MEMORY[0x1E6981880]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB145FA8);
  }

  return result;
}

void sub_1A4973DDC(uint64_t a1)
{
  if (!qword_1EB145FC0)
  {
    sub_1A4973E5C(255);
    sub_1A497409C(255, &qword_1EB127820, &qword_1EB1276A0, MEMORY[0x1E6980F50]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB145FC0);
    }
  }
}

void sub_1A4973E5C(uint64_t a1)
{
  if (!qword_1EB145FC8)
  {
    sub_1A4973EF0(255);
    sub_1A49730AC(&qword_1EB146030, sub_1A4973EF0, MEMORY[0x1E6981F48]);
    v1 = sub_1A524B894();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB145FC8);
    }
  }
}

void sub_1A4973F24(uint64_t a1, double a2)
{
  if (!qword_1EB145FD8)
  {
    sub_1A4973FD8(255);
    sub_1A4973A98(255, &qword_1EB1284E0, MEMORY[0x1E6981840], MEMORY[0x1E697E048], MEMORY[0x1E697E830]);
    sub_1A4974108(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB145FD8);
    }
  }
}

void sub_1A4973FD8(uint64_t a1)
{
  if (!qword_1EB145FE0)
  {
    sub_1A4972FC4(255, &qword_1EB145FE8, sub_1A3DF1428, MEMORY[0x1E697EC00], MEMORY[0x1E697E830]);
    sub_1A49754F8(255, &unk_1EB127840, MEMORY[0x1E697E1E0], MEMORY[0x1E6980A08]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB145FE0);
    }
  }
}

void sub_1A497409C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1A49754F8(255, a3, a4, MEMORY[0x1E69E6720]);
    v5 = sub_1A5249F44();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1A4974108(uint64_t a1)
{
  if (!qword_1EB145FF0)
  {
    sub_1A497419C(255);
    sub_1A49730AC(&qword_1EB146028, sub_1A497419C, MEMORY[0x1E6981F48]);
    v1 = sub_1A524B784();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB145FF0);
    }
  }
}

void sub_1A49741D8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    sub_1A4973030(255, a3, a4, a5);
    v6 = sub_1A524BE24();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1A4974270(uint64_t a1, double a2)
{
  if (!qword_1EB146010)
  {
    sub_1A4974328(255, &qword_1EB146018, &qword_1EB146020, sub_1A3DF1428, MEMORY[0x1E697EC00]);
    sub_1A49754F8(255, &unk_1EB127840, MEMORY[0x1E697E1E0], MEMORY[0x1E6980A08]);
    v2 = sub_1A5248804();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB146010);
    }
  }
}

void sub_1A4974328(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  if (!*a2)
  {
    sub_1A4973C80(255, a3, a4);
    v6 = sub_1A5248804();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_1A4974390()
{
  result = qword_1EB146040;
  if (!qword_1EB146040)
  {
    sub_1A4972FC4(255, &qword_1EB145EF0, sub_1A4973470, MEMORY[0x1E6981E70], MEMORY[0x1E697F960]);
    sub_1A4974448();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB146040);
  }

  return result;
}

unint64_t sub_1A4974448()
{
  result = qword_1EB146048;
  if (!qword_1EB146048)
  {
    sub_1A4973470(255);
    sub_1A49730AC(&qword_1EB146050, sub_1A49734AC, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB146048);
  }

  return result;
}

void sub_1A49744F8(uint64_t a1)
{
  if (!qword_1EB146058)
  {
    sub_1A49732F0(255);
    sub_1A49745E8(255);
    sub_1A4974650();
    sub_1A3D5F9DC();
    sub_1A4974734(&qword_1EB146080, sub_1A49745E8, sub_1A4974700);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB146058);
    }
  }
}

unint64_t sub_1A4974650()
{
  result = qword_1EB146070;
  if (!qword_1EB146070)
  {
    sub_1A49732F0(255);
    sub_1A49730AC(&qword_1EB146078, sub_1A497332C, MEMORY[0x1E69C1FF8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB146070);
  }

  return result;
}

uint64_t sub_1A4974734(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    sub_1A49730AC(&qword_1EB121040, sub_1A3FF7760, MEMORY[0x1E6981F48]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A49747E8@<X0>(uint64_t a1@<X8>)
{
  sub_1A5243934();

  return sub_1A496BDD8(a1);
}

uint64_t sub_1A497488C()
{
  sub_1A5243934();

  return sub_1A496CCA4(v0 + 16);
}

void sub_1A4974908(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_1A4974A0C()
{
  result = qword_1EB1460A0;
  if (!qword_1EB1460A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1460A0);
  }

  return result;
}

void sub_1A4974AB4(uint64_t a1)
{
  sub_1A4973574(319, &qword_1EB124740, sub_1A3D63A58, MEMORY[0x1E697DCC0]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for LemonadeInvitationModel(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1A4974B78(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 280))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A4974BC0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
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
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 280) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 280) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1A4974C68()
{
  result = qword_1EB1460A8;
  if (!qword_1EB1460A8)
  {
    sub_1A4972FC4(255, &qword_1EB1460B0, type metadata accessor for LemonadeSharedLibraryInvitationsCell, &type metadata for LemonadeSharedAlbumInvitationsCell, MEMORY[0x1E697F960]);
    sub_1A49730AC(&qword_1EB145EA0, type metadata accessor for LemonadeSharedLibraryInvitationsCell, &unk_1A5377410);
    sub_1A40AED88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1460A8);
  }

  return result;
}

unint64_t sub_1A4974D50()
{
  result = qword_1EB1460B8;
  if (!qword_1EB1460B8)
  {
    sub_1A4974908(255, &qword_1EB146090, sub_1A49744F8, sub_1A3E42C88, MEMORY[0x1E697E830]);
    sub_1A49732F0(255);
    sub_1A49745E8(255);
    sub_1A4974650();
    sub_1A3D5F9DC();
    sub_1A4974734(&qword_1EB146080, sub_1A49745E8, sub_1A4974700);
    swift_getOpaqueTypeConformance2();
    sub_1A49730AC(&qword_1EB128A00, sub_1A3E42C88, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1460B8);
  }

  return result;
}

void sub_1A4974EEC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1A4973A98(255, &qword_1EB127480, MEMORY[0x1E6981148], MEMORY[0x1E6981138], MEMORY[0x1E697D670]);
    v7 = v6;
    sub_1A3FF7760(255);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1A4974F88()
{
  v0 = sub_1A46052B8();
  if (v0)
  {
    v1 = v0;
    sub_1A496DCD0(v0);
  }

  else
  {
    __break(1u);
  }
}

void sub_1A4974FE0(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v2 + 256);
  *a1 = *(v2 + 248);
  *(a1 + 8) = v3;
  *(a1 + 16) = 0;
  *(a1 + 24) = MEMORY[0x1E69E7CC0];
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A4975000(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v2 + 224);
  *a1 = *(v2 + 216);
  *(a1 + 8) = v3;
  *(a1 + 16) = 0;
  *(a1 + 24) = MEMORY[0x1E69E7CC0];
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A4975020(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
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

uint64_t sub_1A497508C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A49750EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A4975154(uint64_t a1, uint64_t a2)
{
  sub_1A4972FC4(0, &qword_1EB145FE8, sub_1A3DF1428, MEMORY[0x1E697EC00], MEMORY[0x1E697E830]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A49751F0(uint64_t a1, uint64_t a2)
{
  sub_1A4973C80(0, &qword_1EB146020, sub_1A3DF1428);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A4975270(uint64_t a1, uint64_t a2)
{
  sub_1A4974328(0, &qword_1EB146018, &qword_1EB146020, sub_1A3DF1428, MEMORY[0x1E697EC00]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A4975300()
{
  v0 = MEMORY[0x1E6981790];
  sub_1A49754F8(0, &qword_1EB146098, &type metadata for LemonadeSharedAlbumInvitationsCell.SharedAlbumActiveAlert, MEMORY[0x1E6981790]);
  sub_1A524B6B4();
  sub_1A49754F8(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], v0);
  return sub_1A524B6B4();
}

uint64_t sub_1A49753C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_13Tm_0()
{
  j__swift_release(*(v0 + 16));

  return swift_deallocObject();
}

void sub_1A49754F8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1A4975548(uint64_t a1)
{
  sub_1A49754F8(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1A49755C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a2)
  {
    a3();
    v5 = sub_1A52408A4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1A49756A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A4975708(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A4975780()
{
  sub_1A3C52C70(0, &qword_1EB12B140, 0x1E69E9BF8);
  result = sub_1A524DEE4();
  qword_1EB16B728 = result;
  return result;
}

id SharedCollectionsLog.getter()
{
  if (qword_1EB1E32A0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EB16B728;

  return v1;
}

uint64_t SharedCollectionsLogger.getter()
{
  if (qword_1EB1E32A0 != -1)
  {
    swift_once();
  }

  v0 = qword_1EB16B728;

  return sub_1A5246F34();
}

Swift::String __swiftcall SharedCollectionsTitle(for:in:)(Swift::OpaquePointer a1, PHAssetCollection_optional *in)
{
  v135 = sub_1A52413D4();
  v134 = *(v135 - 8);
  MEMORY[0x1EEE9AC00](v135);
  v133 = &v126 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A5240664();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v126 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = sub_1A5241284();
  v131 = *(v132 - 8);
  MEMORY[0x1EEE9AC00](v132);
  v130 = &v126 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1A5241144();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v137 = &v126 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v138 = &v126 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v148 = &v126 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v159 = &v126 - v18;
  sub_1A3C7D2BC(0, &qword_1EB12AFE0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v136 = &v126 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v139 = &v126 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v141 = &v126 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v155 = &v126 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v142 = &v126 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v147 = &v126 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v150 = &v126 - v32;
  v34.n128_f64[0] = MEMORY[0x1EEE9AC00](v33);
  v160 = &v126 - v35;
  if (in)
  {
    v36 = in;
    v37 = PHCollection.title.getter();
    if (v38)
    {
      v39 = v37;
      v40 = v38;
      v41 = HIBYTE(v38) & 0xF;
      if ((v38 & 0x2000000000000000) == 0)
      {
        v41 = v37 & 0xFFFFFFFFFFFFLL;
      }

      if (v41)
      {
        v42 = [(PHAssetCollection_optional *)v36 assetCollectionType];
        if (v42 <= 7 && ((1 << v42) & 0xD2) != 0 || (v107 = [(PHAssetCollection_optional *)v36 assetCollectionSubtype], (v107 - 1000000301) < 4) || v107 == 2 || v107 == 101)
        {

LABEL_48:
          v59 = v39;
          v60 = v40;
          goto LABEL_59;
        }
      }

      else
      {
      }
    }

    else
    {
    }
  }

  v43 = *(v11 + 56);
  v43(v160, 1, 1, v10, v34);
  v151 = v43;
  v152 = v11 + 56;
  (v43)(v150, 1, 1, v10);
  v140 = v11;
  v128 = v5;
  v127 = v6;
  v129 = v8;
  if (a1._rawValue >> 62)
  {
LABEL_56:
    v44 = sub_1A524E2B4();
  }

  else
  {
    v44 = *((a1._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v154 = v10;
  v45 = v159;
  if (!v44)
  {
LABEL_35:
    v69 = v139;
    sub_1A3C5DC24(v160, v139, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
    v70 = v140;
    v71 = *(v140 + 48);
    if (v71(v69, 1, v10) != 1)
    {
      v72 = *(v70 + 32);
      v73 = v138;
      v72(v138, v69, v10);
      v69 = v136;
      sub_1A3C5DC24(v150, v136, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
      if (v71(v69, 1, v10) != 1)
      {
        v72(v137, v69, v10);
        v80 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
        [v80 setDateStyle_];
        [v80 setTimeStyle_];
        v81 = v130;
        sub_1A5241244();
        v82 = sub_1A5241224();
        (*(v131 + 8))(v81, v132);
        [v80 setLocale_];

        v83 = v133;
        sub_1A5241394();
        sub_1A3C7D2BC(0, &qword_1EB1385B0, MEMORY[0x1E6969AD0], MEMORY[0x1E69E6F90]);
        v84 = sub_1A52413B4();
        v85 = *(v84 - 8);
        v86 = *(v85 + 72);
        v87 = (*(v85 + 80) + 32) & ~*(v85 + 80);
        v88 = swift_allocObject();
        *(v88 + 16) = xmmword_1A52FF950;
        v89 = v88 + v87;
        v90 = *(v85 + 104);
        v90(v89, *MEMORY[0x1E6969A48], v84);
        v90(v89 + v86, *MEMORY[0x1E6969A78], v84);
        v90(v89 + 2 * v86, *MEMORY[0x1E6969A68], v84);
        v91 = v138;
        sub_1A441F9F4(v88);
        swift_setDeallocating();
        swift_arrayDestroy();
        swift_deallocClassInstance();
        v92 = v129;
        sub_1A5241304();

        (*(v134 + 8))(v83, v135);
        v93 = sub_1A5240624();
        if (v94 & 1) != 0 || (v95 = v93, v96 = sub_1A5240644(), (v97) || (v98 = v96, v99 = sub_1A5240634(), (v100) || v95 <= 0 && v98 <= 0 && v99 < 1)
        {
          v101 = sub_1A5241074();
          v102 = [v80 stringFromDate_];

          v39 = sub_1A524C674();
          v40 = v103;

          (*(v127 + 8))(v92, v128);
          v104 = *(v140 + 8);
          v105 = v154;
          v104(v137, v154);
          v106 = v91;
        }

        else
        {
          v108 = sub_1A524C634();
          v109 = PXLocalizedSharedCollectionsString(v108);

          sub_1A524C674();
          v110 = sub_1A5241074();
          v111 = [v80 stringFromDate_];

          v112 = sub_1A524C674();
          v114 = v113;

          v115 = v137;
          v116 = sub_1A5241074();
          v117 = [v80 stringFromDate_];

          v118 = sub_1A524C674();
          v120 = v119;

          sub_1A3C712BC(0, &qword_1EB12B110, &qword_1EB12B100, MEMORY[0x1E69E7740], sub_1A3C34400);
          v121 = swift_allocObject();
          *(v121 + 16) = xmmword_1A52FC9F0;
          v122 = MEMORY[0x1E69E6158];
          *(v121 + 56) = MEMORY[0x1E69E6158];
          v123 = sub_1A3D710E8();
          *(v121 + 32) = v112;
          *(v121 + 40) = v114;
          *(v121 + 96) = v122;
          *(v121 + 104) = v123;
          *(v121 + 64) = v123;
          *(v121 + 72) = v118;
          *(v121 + 80) = v120;
          v39 = sub_1A524C6C4();
          v40 = v124;

          (*(v127 + 8))(v129, v128);
          v104 = *(v140 + 8);
          v105 = v154;
          v104(v115, v154);
          v106 = v138;
        }

        v104(v106, v105);
        v74 = MEMORY[0x1E6969530];
        v78 = v150;
        v79 = MEMORY[0x1E6969530];
        goto LABEL_47;
      }

      (*(v70 + 8))(v73, v10);
    }

    v74 = MEMORY[0x1E6969530];
    sub_1A3C42F30(v69, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
    v75 = sub_1A524C634();
    v76 = PXLocalizedSharedCollectionsString(v75);

    v39 = sub_1A524C674();
    v40 = v77;

    v78 = v150;
    v79 = v74;
LABEL_47:
    sub_1A3C42F30(v78, &qword_1EB12AFE0, v79);
    sub_1A3C42F30(v160, &qword_1EB12AFE0, v74);
    goto LABEL_48;
  }

  v46 = 0;
  v153 = a1._rawValue & 0xC000000000000001;
  v157 = (v140 + 32);
  v47 = (v140 + 48);
  v149 = (v140 + 8);
  v143 = a1._rawValue & 0xFFFFFFFFFFFFFF8;
  v144 = (v140 + 16);
  v145 = v44;
  rawValue = a1._rawValue;
  while (1)
  {
    if (v153)
    {
      v48 = MEMORY[0x1A59097F0](v46, a1._rawValue);
      v49 = v155;
      v50 = v46 + 1;
      if (__OFADD__(v46, 1))
      {
        goto LABEL_54;
      }
    }

    else
    {
      v49 = v155;
      if (v46 >= *(v143 + 16))
      {
        goto LABEL_55;
      }

      v48 = *(a1._rawValue + v46 + 4);
      v50 = v46 + 1;
      if (__OFADD__(v46, 1))
      {
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
        goto LABEL_56;
      }
    }

    v51 = [v48 creationDate];
    if (v51)
    {
      break;
    }

    v10 = v154;
LABEL_16:
    ++v46;
    if (v50 == v44)
    {
      goto LABEL_35;
    }
  }

  v52 = v51;
  v158 = v48;
  v53 = v148;
  sub_1A52410F4();

  v10 = v154;
  v156 = *v157;
  v156(v45, v53, v154);
  v54 = MEMORY[0x1E6969530];
  v55 = v147;
  sub_1A3C5DC24(v160, v147, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
  v56 = *v47;
  v57 = (*v47)(v55, 1, v10);
  sub_1A3C42F30(v55, &qword_1EB12AFE0, v54);
  if (v57 == 1)
  {
LABEL_27:
    v62 = v160;
    sub_1A3C42F30(v160, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
    (*v144)(v62, v159, v10);
    (v151)(v62, 0, 1, v10);
LABEL_28:
    v63 = v150;
    sub_1A3C5DC24(v150, v49, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
    if (v56(v49, 1, v10) == 1)
    {

      sub_1A3C42F30(v49, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
      v45 = v159;
    }

    else
    {
      v64 = MEMORY[0x1E6969530];
      sub_1A3C42F30(v49, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
      v65 = v64;
      v66 = v141;
      sub_1A3C5DC24(v63, v141, &qword_1EB12AFE0, v65);
      v59 = v56(v66, 1, v10);
      if (v59 == 1)
      {
        goto LABEL_58;
      }

      v45 = v159;
      v67 = sub_1A5241084();

      v68 = *v149;
      (*v149)(v66, v10);
      if ((v67 & 1) == 0)
      {
        v68(v45, v10);
        goto LABEL_34;
      }
    }

    sub_1A3C42F30(v63, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
    v156(v63, v45, v10);
    (v151)(v63, 0, 1, v10);
LABEL_34:
    v44 = v145;
    a1._rawValue = rawValue;
    goto LABEL_16;
  }

  v58 = v142;
  sub_1A3C5DC24(v160, v142, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
  v59 = v56(v58, 1, v10);
  if (v59 != 1)
  {
    v61 = sub_1A5241094();
    (*v149)(v58, v10);
    if ((v61 & 1) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  result._object = v60;
  result._countAndFlagsBits = v59;
  return result;
}