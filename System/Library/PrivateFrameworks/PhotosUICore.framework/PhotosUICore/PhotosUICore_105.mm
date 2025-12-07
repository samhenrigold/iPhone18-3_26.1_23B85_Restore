uint64_t sub_1A49C1D88@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB1E40B0 != -1)
  {
    swift_once();
  }

  v3 = sub_1A5240BB4();
  v4 = __swift_project_value_buffer(v3, qword_1EB1E40B8);
  swift_beginAccess();
  return (*(*(v3 - 8) + 16))(a1, v4, v3);
}

uint64_t sub_1A49C1E4C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3D60150;

  return HideAssetsIntent.perform()(a1);
}

uint64_t sub_1A49C1EE8(uint64_t a1)
{
  v2 = sub_1A49C0EE4();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

uint64_t static HideAssetsIntentAction.typeDisplayRepresentation.getter()
{
  sub_1A49C3690(0, &qword_1EB12B008, MEMORY[0x1E6968E10], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v12[-v1];
  v3 = sub_1A5240BA4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_1A5241284();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_1A524C624();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = sub_1A5240BB4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  sub_1A524C5B4();
  sub_1A5241244();
  (*(v4 + 104))(v6, *MEMORY[0x1E6968DF0], v3);
  sub_1A5240BC4();
  (*(v10 + 56))(v2, 1, 1, v9);
  return sub_1A5240384();
}

PhotosUICore::HideAssetsIntentAction_optional __swiftcall HideAssetsIntentAction.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1A524E824();

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

  *v2 = v5;
  return result;
}

uint64_t HideAssetsIntentAction.rawValue.getter()
{
  if (*v0)
  {
    return 0x656469686E75;
  }

  else
  {
    return 1701079400;
  }
}

void sub_1A49C22AC(char *a2@<X8>)
{
  v3 = sub_1A524E824();

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

uint64_t sub_1A49C2310(uint64_t a1)
{
  v2 = sub_1A49C23BC();

  return MEMORY[0x1EEDB2C20](a1, v2);
}

uint64_t sub_1A49C2360(uint64_t a1)
{
  v2 = sub_1A49C3398();

  return MEMORY[0x1EEDB3D68](a1, v2);
}

unint64_t sub_1A49C23BC()
{
  result = qword_1EB146CF0;
  if (!qword_1EB146CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB146CF0);
  }

  return result;
}

uint64_t sub_1A49C2410(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1A3D60150;

  return sub_1A49C1944(a1, v5, v4);
}

uint64_t sub_1A49C24BC(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = a4;
  *(v4 + 16) = a2;
  *(v4 + 112) = a1;
  v5 = sub_1A5246F24();
  *(v4 + 40) = v5;
  *(v4 + 48) = *(v5 - 8);
  *(v4 + 56) = swift_task_alloc();
  sub_1A524CC54();
  *(v4 + 64) = sub_1A524CC44();
  v7 = sub_1A524CBC4();
  *(v4 + 72) = v7;
  *(v4 + 80) = v6;

  return MEMORY[0x1EEE6DFA0](sub_1A49C25B8, v7, v6);
}

void sub_1A49C25B8()
{
  v1 = v0;
  if (!(PXAppIntentsAssets(for:)(*(v0 + 16)) >> 62))
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  sub_1A3C52C70(0, &qword_1EB1265D0, 0x1E6978958);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

unint64_t sub_1A49C2928(uint64_t a1)
{
  sub_1A49C36F4(0);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1A49C375C(0);
    v8 = sub_1A524E794();
    v9 = *(v3 + 48);
    v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);

    while (1)
    {
      sub_1A49C37C8(v10, v6);
      result = sub_1A3FC1390(*v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = *v6;
      v15 = v8[7];
      v16 = sub_1A5240274();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v6[v9], v16);
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t _s12PhotosUICore22HideAssetsIntentActionO26caseDisplayRepresentationsSDyAC10AppIntents0H14RepresentationVGvgZ_0()
{
  v0 = MEMORY[0x1E69E6720];
  sub_1A49C3690(0, &qword_1EB12B0F0, MEMORY[0x1E695A3E8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v37 = &v25 - v2;
  sub_1A49C3690(0, &qword_1EB12B008, MEMORY[0x1E6968E10], v0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v36 = &v25 - v4;
  v38 = sub_1A5240BA4();
  v5 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v39 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A5241284();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_1A524C624();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = sub_1A5240BB4();
  v27 = v9;
  v41 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  sub_1A49C3690(0, &qword_1EB146D78, sub_1A49C36F4, MEMORY[0x1E69E6F90]);
  sub_1A49C36F4(0);
  v11 = v10;
  v40 = v10;
  v12 = *(v10 - 8);
  v35 = *(v12 + 72);
  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = swift_allocObject();
  v30 = v14;
  *(v14 + 16) = xmmword_1A52FC9F0;
  v15 = v14 + v13;
  v34 = *(v11 + 48);
  *(v14 + v13) = 0;
  sub_1A524C5B4();
  sub_1A5241244();
  v31 = *MEMORY[0x1E6968DF0];
  v16 = *(v5 + 104);
  v32 = v5 + 104;
  v33 = v16;
  v16(v39);
  sub_1A5240BC4();
  v17 = *(v41 + 56);
  v41 += 56;
  v28 = v17;
  v18 = v36;
  v17(v36, 1, 1, v9);
  v19 = sub_1A5240244();
  v26 = *(*(v19 - 8) + 56);
  v20 = v37;
  v26(v37, 1, 1, v19);
  v29 = v15;
  v21 = v20;
  sub_1A5240264();
  v22 = (v15 + v35);
  v35 = *(v40 + 48);
  *v22 = 1;
  sub_1A524C5B4();
  sub_1A5241244();
  v33(v39, v31, v38);
  sub_1A5240BC4();
  v28(v18, 1, 1, v27);
  v26(v21, 1, 1, v19);
  sub_1A5240264();
  v23 = sub_1A49C2928(v30);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v23;
}

unint64_t sub_1A49C30BC()
{
  result = qword_1EB146CF8;
  if (!qword_1EB146CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB146CF8);
  }

  return result;
}

unint64_t sub_1A49C3114()
{
  result = qword_1EB146D00;
  if (!qword_1EB146D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB146D00);
  }

  return result;
}

unint64_t sub_1A49C3188()
{
  result = qword_1EB146D08;
  if (!qword_1EB146D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB146D08);
  }

  return result;
}

unint64_t sub_1A49C31E0()
{
  result = qword_1EB146D10;
  if (!qword_1EB146D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB146D10);
  }

  return result;
}

unint64_t sub_1A49C3238()
{
  result = qword_1EB146D18;
  if (!qword_1EB146D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB146D18);
  }

  return result;
}

unint64_t sub_1A49C3290()
{
  result = qword_1EB146D20;
  if (!qword_1EB146D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB146D20);
  }

  return result;
}

unint64_t sub_1A49C32E8()
{
  result = qword_1EB146D28;
  if (!qword_1EB146D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB146D28);
  }

  return result;
}

unint64_t sub_1A49C3340()
{
  result = qword_1EB146D30;
  if (!qword_1EB146D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB146D30);
  }

  return result;
}

unint64_t sub_1A49C3398()
{
  result = qword_1EB146D38;
  if (!qword_1EB146D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB146D38);
  }

  return result;
}

unint64_t sub_1A49C3444()
{
  result = qword_1EB146D40;
  if (!qword_1EB146D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB146D40);
  }

  return result;
}

unint64_t sub_1A49C349C()
{
  result = qword_1EB146D48;
  if (!qword_1EB146D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB146D48);
  }

  return result;
}

unint64_t sub_1A49C34F4()
{
  result = qword_1EB146D50;
  if (!qword_1EB146D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB146D50);
  }

  return result;
}

unint64_t sub_1A49C3598()
{
  result = qword_1EB146D68;
  if (!qword_1EB146D68)
  {
    sub_1A49C3628(255, &qword_1EB146D70, sub_1A49C0EE4, &type metadata for HideAssetsIntent, MEMORY[0x1E695A488]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB146D68);
  }

  return result;
}

void sub_1A49C3628(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_1A49C3690(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A49C36F4(uint64_t a1)
{
  if (!qword_1EB146D80)
  {
    sub_1A5240274();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB146D80);
    }
  }
}

void sub_1A49C375C(uint64_t a1)
{
  if (!qword_1EB146D88)
  {
    sub_1A5240274();
    sub_1A49C34F4();
    v1 = sub_1A524E7A4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB146D88);
    }
  }
}

uint64_t sub_1A49C37C8(uint64_t a1, uint64_t a2)
{
  sub_1A49C36F4(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t MapItem.init(id:assets:region:localizedTitle:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, double a9)
{
  *(v9 + 56) = a1;
  *(v9 + 64) = a2;
  *(v9 + 16) = a3;
  *(v9 + 24) = a6;
  *(v9 + 32) = a7;
  *(v9 + 40) = a8;
  *(v9 + 48) = a9;
  *(v9 + 72) = a4;
  *(v9 + 80) = a5;
  return v9;
}

void MapItem.value.getter(void *a1@<X8>)
{
  v3 = *(v1 + 56);
  v2 = *(v1 + 64);
  a1[3] = MEMORY[0x1E69E6158];
  *a1 = v3;
  a1[1] = v2;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t MapItem.diagnosticDescription.getter()
{
  sub_1A524E404();
  MEMORY[0x1A5907B60](4023401, 0xE300000000000000);
  MEMORY[0x1A5907B60](*(v0 + 56), *(v0 + 64));
  MEMORY[0x1A5907B60](0xD000000000000011, 0x80000001A53F6350);
  v4 = *(v0 + 24);
  v5 = *(v0 + 40);
  type metadata accessor for MKCoordinateRegion(0);
  sub_1A524E624();
  MEMORY[0x1A5907B60](0x737465737361202CLL, 0xEF3D746E756F632ELL);
  v1 = *(v0 + 16);
  if (v1)
  {
    [v1 count];
  }

  v2 = sub_1A524EA44();
  MEMORY[0x1A5907B60](v2);

  return 0;
}

uint64_t MapItem.deinit()
{

  return v0;
}

uint64_t MapItem.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void sub_1A49C3A94(void *a1@<X8>)
{
  v3 = *(*v1 + 56);
  v2 = *(*v1 + 64);
  a1[3] = MEMORY[0x1E69E6158];
  *a1 = v3;
  a1[1] = v2;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A49C3BB0()
{
  v1 = sub_1A5240FE4();
  v79 = *(v1 - 8);
  v80 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v78 = &v61 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1A5240F74();
  v76 = *(v3 - 8);
  v77 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v73 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A5240F84();
  v74 = *(v5 - 8);
  v75 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v72 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A5240FA4();
  v69 = *(v7 - 8);
  v70 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v68 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A5240FC4();
  v66 = *(v9 - 8);
  v67 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v65 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_1A5240F44();
  v63 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v62 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1A5241004();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v61 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v61 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v61 - v23;
  v25 = sub_1A5241144();
  v82 = *(v25 - 8);
  v83 = v25;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v61 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v28);
  v71 = &v61 - v30;
  if (([v0 respondsToSelector_] & 1) == 0 || (v31 = objc_msgSend(v0, sel_playbackStyle), (v31 - 1) >= 2) && (v31 - 4) >= 2 && v31 != 3)
  {
    [v0 mediaType];
  }

  v32 = sub_1A524C634();
  v33 = PXLocalizedString(v32);

  v81 = sub_1A524C674();
  v35 = v34;

  v36 = [v0 creationDate];
  if (!v36)
  {
    return v81;
  }

  v61 = v35;
  v37 = v36;
  sub_1A52410F4();

  v38 = v71;
  v39 = (*(v82 + 32))(v71, v27, v83);
  MEMORY[0x1A58FB740](v39);
  v40 = v62;
  sub_1A5240F34();
  sub_1A5240EF4();
  (*(v63 + 8))(v40, v64);
  v41 = *(v13 + 8);
  v41(v15, v12);
  v42 = v65;
  sub_1A5240FB4();
  sub_1A5240F24();
  (*(v66 + 8))(v42, v67);
  v41(v18, v12);
  v43 = v68;
  sub_1A5240F94();
  sub_1A5240F14();
  (*(v69 + 8))(v43, v70);
  v44 = v41(v21, v12);
  sub_1A49C4494(v44);
  sub_1A5241124();
  v45 = (v41)(v24, v12);
  v69 = v85;
  v70 = v84;
  MEMORY[0x1A58FB740](v45);
  v46 = v73;
  sub_1A5240F64();
  v47 = v72;
  sub_1A5240F54();
  (*(v76 + 8))(v46, v77);
  sub_1A5240F04();
  (*(v74 + 8))(v47, v75);
  v41(v18, v12);
  v48 = v78;
  sub_1A5240FD4();
  sub_1A5240FF4();
  (*(v79 + 8))(v48, v80);
  v41(v21, v12);
  sub_1A5241124();
  v41(v24, v12);
  v49 = v84;
  v50 = v85;
  v51 = sub_1A524C634();
  v52 = PXLocalizedString(v51);

  sub_1A524C674();
  sub_1A3E072BC(0);
  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_1A52FF950;
  v54 = MEMORY[0x1E69E6158];
  *(v53 + 56) = MEMORY[0x1E69E6158];
  v55 = sub_1A3D710E8();
  v56 = v61;
  *(v53 + 32) = v81;
  *(v53 + 40) = v56;
  *(v53 + 96) = v54;
  *(v53 + 104) = v55;
  v57 = v69;
  v58 = v70;
  *(v53 + 64) = v55;
  *(v53 + 72) = v58;
  *(v53 + 80) = v57;
  *(v53 + 136) = v54;
  *(v53 + 144) = v55;
  *(v53 + 112) = v49;
  *(v53 + 120) = v50;
  v59 = sub_1A524C6C4();

  (*(v82 + 8))(v38, v83);
  return v59;
}

unint64_t sub_1A49C4494(double a1)
{
  result = qword_1EB146D98;
  if (!qword_1EB146D98)
  {
    sub_1A5241004();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB146D98);
  }

  return result;
}

void PhotosDynamicHeaderGeometryModel.headerMinimumHeight.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 56))(&v6);
  v4 = (*(a2 + 32))(a1, a2);
  PhotosDynamicHeaderSpec.headerHeight(for:)(v4, v5);
}

uint64_t PhotosDynamicHeaderGeometryModel.mainContentCoveredFraction.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 16))();
  v4 = *(a2 + 8);
  v4(a1, a2);
  (*(a2 + 24))(a1, a2);
  return (v4)(a1, a2);
}

uint64_t PhotosDynamicHeaderGeometryModel.previewContentInsets.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 32))();
  v4 = *(a2 + 8);
  v6 = v5 - v4(a1, a2);
  PhotosDynamicHeaderGeometryModel.headerMinimumHeight.getter(a1, a2);
  if (v6 - v7 > 0.0)
  {
    (*(a2 + 56))(v9, a1, a2);
  }

  return (v4)(a1, a2);
}

uint64_t sub_1A49C4828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a4;
  v34 = a2;
  v5 = *(a1 + 24);
  v6 = *(v5 - 8);
  v31 = a3;
  v32 = v6;
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 + 32);
  v30 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 16);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v18 - 8);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v29 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v22, v23, a1, v20);
  v24 = (*(v19 + 88))(v22, a1);
  if (v24 == *off_1E7720FE8)
  {
    (*(v19 + 96))(v22, a1);
    (*(v15 + 32))(v17, v22, v14);
    v25 = sub_1A5242784();
    (*(v15 + 8))(v17, v14);
    return v25;
  }

  if (v24 == *off_1E7720FF8)
  {
    (*(v19 + 96))(v22, a1);
    v26 = v32;
    (*(v32 + 32))(v8, v22, v5);
    v25 = sub_1A5242784();
    (*(v26 + 8))(v8, v5);
    return v25;
  }

  if (v24 == *off_1E7720FF0)
  {
    (*(v19 + 96))(v22, a1);
    v27 = v30;
    (*(v30 + 32))(v12, v22, v10);
    v25 = sub_1A5242784();
    (*(v27 + 8))(v12, v10);
    return v25;
  }

  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

uint64_t sub_1A49C4C40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t), uint64_t a6)
{
  v31[1] = a6;
  v36 = a2;
  v37 = a5;
  v33 = a3;
  v7 = *(a1 + 24);
  v34 = *(v7 - 8);
  v35 = a4;
  MEMORY[0x1EEE9AC00](a1);
  v9 = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v10 + 32);
  v32 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 16);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v18 = v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v19 - 8);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = v31 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v23, v24, a1, v21);
  v25 = (*(v20 + 88))(v23, a1);
  if (v25 == *off_1E7720FE8)
  {
    (*(v20 + 96))(v23, a1);
    (*(v16 + 32))(v18, v23, v15);
    v26 = v37(v15, v36);
    (*(v16 + 8))(v18, v15);
    return v26;
  }

  v27 = v37;
  if (v25 == *off_1E7720FF8)
  {
    (*(v20 + 96))(v23, a1);
    v28 = v34;
    (*(v34 + 32))(v9, v23, v7);
    v26 = v27(v7, v33);
    (*(v28 + 8))(v9, v7);
    return v26;
  }

  if (v25 == *off_1E7720FF0)
  {
    (*(v20 + 96))(v23, a1);
    v29 = v32;
    (*(v32 + 32))(v13, v23, v11);
    v26 = v27(v11, v35);
    (*(v29 + 8))(v13, v11);
    return v26;
  }

  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

uint64_t sub_1A49C5070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t), uint64_t a6)
{
  v31[1] = a6;
  v36 = a2;
  v37 = a5;
  v33 = a3;
  v7 = *(a1 + 24);
  v34 = *(v7 - 8);
  v35 = a4;
  MEMORY[0x1EEE9AC00](a1);
  v9 = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v10 + 32);
  v32 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 16);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v18 = v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v19 - 8);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = v31 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v23, v24, a1, v21);
  v25 = (*(v20 + 88))(v23, a1);
  if (v25 == *off_1E7720FE8)
  {
    (*(v20 + 96))(v23, a1);
    (*(v16 + 32))(v18, v23, v15);
    v26 = v37(v15, v36);
    (*(v16 + 8))(v18, v15);
    return v26 & 1;
  }

  v27 = v37;
  if (v25 == *off_1E7720FF8)
  {
    (*(v20 + 96))(v23, a1);
    v28 = v34;
    (*(v34 + 32))(v9, v23, v7);
    v26 = v27(v7, v33);
    (*(v28 + 8))(v9, v7);
    return v26 & 1;
  }

  if (v25 == *off_1E7720FF0)
  {
    (*(v20 + 96))(v23, a1);
    v29 = v32;
    (*(v32 + 32))(v13, v23, v11);
    v26 = v27(v11, v35);
    (*(v29 + 8))(v13, v11);
    return v26 & 1;
  }

  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

uint64_t sub_1A49C55FC()
{
  sub_1A524EC94();
  sub_1A524DC04();
  return sub_1A524ECE4();
}

uint64_t sub_1A49C566C(uint64_t a1)
{
  sub_1A524EC94();
  sub_1A524DC04();
  return sub_1A524ECE4();
}

uint64_t sub_1A49C5708()
{
  if (!*(v0 + 56))
  {
    v2 = [objc_opt_self() sharedLibraryStatusProviderWithPhotoLibrary_];
    type metadata accessor for SharedLibraryStatusViewModel(0);
    sub_1A3C62B88(v2);
  }

  v1 = *(v0 + 56);

  return v1;
}

double sub_1A49C57E0(uint64_t a1)
{
  *(v1 + 56) = a1;

  return result;
}

uint64_t (*sub_1A49C57F0(uint64_t *a1))()
{
  a1[1] = v1;
  *a1 = sub_1A49C5708();
  return sub_1A49C5838;
}

double sub_1A49C5838(void *a1)
{
  *(a1[1] + 56) = *a1;

  return result;
}

uint64_t sub_1A49C5848()
{
  v1 = *(v0 + 64);
  v2 = v1;
  if (v1 == 1)
  {
    v2 = sub_1A49C58A8(v0);
    v3 = *(v0 + 64);
    *(v0 + 64) = v2;

    sub_1A41B617C(v3);
  }

  sub_1A41EDCF0(v1);
  return v2;
}

uint64_t sub_1A49C58A8(uint64_t a1)
{
  sub_1A3C47C38(0, &qword_1EB12A148, type metadata accessor for LemonadeFeatureLibrary.Shelf, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v20[-1] - v3;
  v5 = type metadata accessor for LemonadeFeatureLibrary.Shelf(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A49C5FF8();
  (*(*v9 + 248))(v9);

  if ((*(v6 + 48))(v4, 1, v5) != 1)
  {
    sub_1A3C59944(v4, v8);
    v11 = type metadata accessor for LemonadeFixedShelvesDataSource();
    v12 = *(a1 + 16);
    sub_1A3C47C38(0, &qword_1EB126268, type metadata accessor for LemonadeFeatureLibrary.Shelf, MEMORY[0x1E69E6F90]);
    v13 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1A52F8E10;
    sub_1A49C7794(v8, v14 + v13, type metadata accessor for LemonadeFeatureLibrary.Shelf);
    v15 = sub_1A3DC4DE4(v12, v14);
    sub_1A3C3B2D4(0);
    v16 = *(a1 + 24);

    v17 = sub_1A3C5A374();
    v18 = sub_1A3C3DD04(v16, v17 & 1);
    type metadata accessor for LemonadeShelvesViewModel(0);
    v20[3] = v11;
    v20[4] = sub_1A49C75B4(&qword_1EB1254B8, type metadata accessor for LemonadeFixedShelvesDataSource, &unk_1A533AD30);
    v20[0] = v15;
    sub_1A3C5A7B8(v20, v18, 1);
  }

  sub_1A3D3F02C(v4);
  return 0;
}

double sub_1A49C5B9C(uint64_t a1)
{
  v2 = *(v1 + 64);
  *(v1 + 64) = a1;
  return sub_1A41B617C(v2);
}

uint64_t (*sub_1A49C5BAC(uint64_t *a1))()
{
  a1[1] = v1;
  *a1 = sub_1A49C5848();
  return sub_1A49C5BF4;
}

double sub_1A49C5BF4(void *a1, char a2)
{
  v2 = a1[1];
  v3 = *(v2 + 64);
  *(v2 + 64) = *a1;
  if (a2)
  {

    sub_1A41B617C(v3);
  }

  else
  {

    return sub_1A41B617C(v3);
  }

  return result;
}

uint64_t sub_1A49C5C64(double a1)
{
  if (!*(v1 + 72))
  {
    v3 = sub_1A49C5FF8();
    v4 = (*(*v3 + 256))(v3);

    v5 = type metadata accessor for LemonadeFixedShelvesDataSource();
    v6 = sub_1A3DC4DE4(*(v1 + 16), v4);
    sub_1A3C3B2D4(0);
    v7 = *(v1 + 24);

    v8 = sub_1A3C5A374();
    v9 = sub_1A3C3DD04(v7, v8 & 1);
    type metadata accessor for LemonadeShelvesViewModel(0);
    v11[3] = v5;
    v11[4] = sub_1A49C75B4(&qword_1EB1254B8, type metadata accessor for LemonadeFixedShelvesDataSource, &unk_1A533AD30);
    v11[0] = v6;
    sub_1A3C5A7B8(v11, v9, 1);
  }

  v2 = *(v1 + 72);

  return v2;
}

double sub_1A49C5DC0(uint64_t a1)
{
  *(v1 + 72) = a1;

  return result;
}

uint64_t (*sub_1A49C5DD0(uint64_t *a1, double a2))()
{
  a1[1] = v2;
  *a1 = sub_1A49C5C64(a2);
  return sub_1A49C5E18;
}

double sub_1A49C5E18(void *a1)
{
  *(a1[1] + 72) = *a1;

  return result;
}

uint64_t sub_1A49C5E28()
{
  if (!*(v0 + 80))
  {
    sub_1A49C5EB4(0);
    sub_1A412BBA0([objc_allocWithZone(PXStorageTipCollectionViewDataSectionManager) initWithPhotoLibrary_]);
  }

  v1 = *(v0 + 80);

  return v1;
}

void sub_1A49C5EB4(uint64_t a1)
{
  if (!qword_1EB146DA0)
  {
    v2 = sub_1A3C52C70(255, &qword_1EB137500, off_1E771FAE0);
    v3 = sub_1A49C5F28();
    v5 = type metadata accessor for DataSectionItemListManager(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1EB146DA0);
    }
  }
}

unint64_t sub_1A49C5F28()
{
  result = qword_1EB146DA8;
  if (!qword_1EB146DA8)
  {
    sub_1A3C52C70(255, &qword_1EB137500, off_1E771FAE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB146DA8);
  }

  return result;
}

double sub_1A49C5F90(uint64_t a1)
{
  *(v1 + 80) = a1;

  return result;
}

uint64_t (*sub_1A49C5FA0(uint64_t *a1))()
{
  a1[1] = v1;
  *a1 = sub_1A49C5E28();
  return sub_1A49C5FE8;
}

double sub_1A49C5FE8(void *a1)
{
  *(a1[1] + 80) = *a1;

  return result;
}

uint64_t sub_1A49C5FF8()
{
  if (*(v0 + 88))
  {
    v1 = *(v0 + 88);
  }

  else
  {
    type metadata accessor for LemonadeFeatureLibrary(0);
    v1 = sub_1A3C4E89C(*(v0 + 16));
    *(v0 + 88) = v1;
  }

  return v1;
}

void sub_1A49C60D8(double a1)
{
  if (v1[18] == a1)
  {
    v1[18] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v3.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 472))(v3);
  }
}

uint64_t sub_1A49C61F4()
{
  v2 = 0;
  memset(v1, 0, sizeof(v1));
  v3 = -1;
  return sub_1A49C6374(v1);
}

uint64_t sub_1A49C622C@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  (*(*v1 + 464))();

  swift_beginAccess();
  return sub_1A49C7794(v1 + 96, a1, sub_1A49C74A0);
}

uint64_t sub_1A49C6374(uint64_t a1)
{
  swift_beginAccess();
  sub_1A49C7794(v1 + 96, v7, sub_1A49C74A0);
  sub_1A49C7794(v7, v11, sub_1A49C74A0);
  sub_1A49C7794(a1, &v12, sub_1A49C74A0);
  if (v11[40] == 255)
  {
    if (v13[24] == 255)
    {
      sub_1A49C76D0(v11, sub_1A49C74A0);
      sub_1A49C76D0(v7, sub_1A49C74A0);
      goto LABEL_7;
    }

LABEL_9:
    sub_1A49C76D0(v11, sub_1A49C7730);
    sub_1A49C76D0(v7, sub_1A49C74A0);
LABEL_10:
    KeyPath = swift_getKeyPath();
    v5.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 472))(v5);

    return sub_1A49C76D0(a1, sub_1A49C74A0);
  }

  sub_1A49C7794(v11, v10, sub_1A49C74A0);
  if (v13[24] == 255)
  {
    sub_1A3F6857C(v10);
    goto LABEL_9;
  }

  v8 = v12;
  v9[0] = *v13;
  *(v9 + 9) = *&v13[9];
  sub_1A4579798();
  v3 = sub_1A524C594();
  sub_1A3F6857C(&v8);
  sub_1A3F6857C(v10);
  sub_1A49C76D0(v11, sub_1A49C74A0);
  sub_1A49C76D0(v7, sub_1A49C74A0);
  if ((v3 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  sub_1A49C7794(a1, v11, sub_1A49C74A0);
  swift_beginAccess();
  sub_1A49C74F0(v11, v1 + 96);
  swift_endAccess();
  return sub_1A49C76D0(a1, sub_1A49C74A0);
}

double sub_1A49C664C()
{
  swift_getKeyPath();
  (*(*v0 + 464))();

  return v0[18];
}

BOOL sub_1A49C672C(uint64_t a1)
{
  v3 = *(*v1 + 232);
  v3();
  v4 = sub_1A42C1FA8(a1);

  if (v4)
  {
    (v3)(v5);
    v6 = &off_1F17032D0;
  }

  else
  {
    type metadata accessor for LemonadeNullNavigationParticipant();
    sub_1A3D76DF4();
    v6 = &off_1F170C3C0;
  }

  swift_getObjectType();
  v7 = (v6[3])(a1);
  swift_unknownObjectRelease();
  return v7;
}

uint64_t sub_1A49C6814(uint64_t a1)
{
  v3 = *(*v1 + 232);
  v3();
  v4 = sub_1A42C1FA8(a1);

  if (v4)
  {
    (v3)(v5);
    v6 = &off_1F17032D0;
  }

  else
  {
    type metadata accessor for LemonadeNullNavigationParticipant();
    sub_1A3D76DF4();
    v6 = &off_1F170C3C0;
  }

  swift_getObjectType();
  v7 = (v6[4])();
  swift_unknownObjectRelease();
  return v7;
}

uint64_t sub_1A49C68FC(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  sub_1A524CC54();
  v3[11] = sub_1A524CC44();
  v5 = sub_1A524CBC4();
  v3[12] = v5;
  v3[13] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1A49C6998, v5, v4);
}

uint64_t sub_1A49C6998()
{
  v17 = v0;
  v1 = *(v0 + 64);
  v2 = *(**(v0 + 80) + 232);
  v2();
  LOBYTE(v1) = sub_1A42C1FA8(v1);

  if (v1)
  {
    v4 = (v2)(v3);
    v5 = &off_1F17032D0;
  }

  else
  {
    type metadata accessor for LemonadeNullNavigationParticipant();
    v4 = sub_1A3D76DF4();
    v5 = &off_1F170C3C0;
  }

  *(v0 + 112) = v4;
  ObjectType = swift_getObjectType();
  v7 = (v2)();

  if (v4 == v7)
  {
    v9 = *(v0 + 64);
    (v2)(v8);
    sub_1A42C1E00(v9, &v16);

    if (v16 != 24)
    {
      v10 = *(v0 + 80);
      *(v0 + 16) = v16;
      *(v0 + 56) = 0;
      (*(*v10 + 312))(v0 + 16);
      sub_1A3F6857C(v0 + 16);
    }
  }

  v15 = (v5[6] + *v5[6]);
  v11 = swift_task_alloc();
  *(v0 + 120) = v11;
  *v11 = v0;
  v11[1] = sub_1A47058A8;
  v13 = *(v0 + 64);
  v12 = *(v0 + 72);

  return v15(v13, v12, ObjectType, v5);
}

uint64_t sub_1A49C6C00(uint64_t a1)
{
  v2 = v1;
  sub_1A3C47C38(0, &qword_1EB126250, type metadata accessor for LemonadeNavigationDestination, MEMORY[0x1E69E6F90]);
  v4 = *(type metadata accessor for LemonadeNavigationDestination(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1A52F8E10;
  *(v6 + v5) = v2;
  swift_storeEnumTagMultiPayload();
  v7 = *(*v2 + 232);

  v7(v8);
  v9 = sub_1A42C1FA8(a1);

  if (v9)
  {
    v7(v10);
    v11 = &off_1F17032D0;
  }

  else
  {
    type metadata accessor for LemonadeNullNavigationParticipant();
    sub_1A3D76DF4();
    v11 = &off_1F170C3C0;
  }

  swift_getObjectType();
  v12 = (v11[7])();
  swift_unknownObjectRelease();
  sub_1A49C6DE8(v12);
  return v6;
}

void sub_1A49C6DE8(uint64_t a1)
{
  v2 = *(a1 + 16);
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

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_1A4249320(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = (v3[3] >> 1) - v3[2];
  type metadata accessor for LemonadeNavigationDestination(0);
  if (v8 < v2)
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
    return;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

uint64_t sub_1A49C7054()
{

  sub_1A41B617C(*(v0 + 64));

  sub_1A49C76D0(v0 + 96, sub_1A49C74A0);
  v1 = OBJC_IVAR____TtC12PhotosUICore24LemonadeAccountViewModel___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_1A49C7120()
{
  sub_1A49C7054();

  return swift_deallocClassInstance();
}

uint64_t sub_1A49C71D0(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 448) + **(*v2 + 448));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1A3FBBB04;

  return v8(a1, a2);
}

void sub_1A49C732C(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  *(v3 + 56) = xmmword_1A5301350;
  *(v3 + 72) = 0u;
  *(v3 + 88) = 0u;
  *(v3 + 104) = 0u;
  *(v3 + 120) = 0u;
  *(v3 + 136) = -1;
  *(v3 + 144) = 0x3FE0000000000000;
  sub_1A5241604();
  *(v3 + 16) = a1;
  if (a3)
  {
    v9 = a1;
    *(v3 + 24) = a3;
    if (a2)
    {
LABEL_3:

      v10 = 0;
      v11 = a2;
      goto LABEL_6;
    }
  }

  else
  {
    type metadata accessor for LemonadePhotoLibraryContext(0, v8);
    *(v3 + 24) = LemonadePhotoLibraryContext.__allocating_init(photoLibrary:pickerConfiguration:bookmarksManager:)(a1, 0, 0);
    if (a2)
    {
      goto LABEL_3;
    }
  }

  v12 = objc_allocWithZone(PXFooterViewModelController);

  v10 = [v12 initWithPhotoLibrary:a1 provideLibraryCounts:1 provideCloudQuotaOffers:0];
  [v10 setIsActive_];
  v11 = [v10 footerViewModel];
LABEL_6:
  *(v4 + 32) = v11;
  *(v4 + 40) = v10;
  v13 = v11;
  type metadata accessor for LemonadeStatusViewVisibility(0);
  v14 = a2;
  sub_1A3D38898(v13);
}

double sub_1A49C7490()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 144) = result;
  return result;
}

void sub_1A49C74A0()
{
  if (!qword_1EB129778)
  {
    v0 = sub_1A524DF24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB129778);
    }
  }
}

uint64_t sub_1A49C74F0(uint64_t a1, uint64_t a2)
{
  sub_1A49C74A0();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A49C7554()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_beginAccess();
  sub_1A49C766C(v1, v2 + 96);
  return swift_endAccess();
}

uint64_t sub_1A49C75B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1A49C7600()
{
  result = qword_1EB146DB8;
  if (!qword_1EB146DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB146DB8);
  }

  return result;
}

uint64_t sub_1A49C766C(uint64_t a1, uint64_t a2)
{
  sub_1A49C74A0();
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A49C76D0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A49C7730(uint64_t a1)
{
  if (!qword_1EB146F50)
  {
    sub_1A49C74A0();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB146F50);
    }
  }
}

uint64_t sub_1A49C7794(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A49C77FC()
{
  swift_getKeyPath();
  (*(*v0 + 656))();

  return *(v0 + OBJC_IVAR____TtC12PhotosUICore27LemonadePickerRootViewModel__scrollToTopSignal);
}

uint64_t sub_1A49C7868@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 248))();
  *a2 = result;
  return result;
}

double sub_1A49C78DC(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC12PhotosUICore27LemonadePickerRootViewModel__scrollToTopSignal) != a1)
  {
    KeyPath = swift_getKeyPath();
    v3.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 664))(v3);
  }

  return result;
}

uint64_t sub_1A49C79DC@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  (*(*v1 + 656))();

  v3 = OBJC_IVAR____TtC12PhotosUICore27LemonadePickerRootViewModel__scrollTargetIdentifier;
  swift_beginAccess();
  return sub_1A4579B00(v1 + v3, a1);
}

uint64_t sub_1A49C7B00(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12PhotosUICore27LemonadePickerRootViewModel__scrollTargetIdentifier;
  swift_beginAccess();
  sub_1A4579B00(v1 + v3, v8);
  sub_1A4579B00(v8, v12);
  sub_1A4579B00(a1, &v13);
  if (v12[40] == 255)
  {
    if (v14[24] == 255)
    {
      sub_1A4579A80(v12);
      sub_1A4579A80(v8);
      goto LABEL_7;
    }

LABEL_9:
    sub_1A49CC080(v12, sub_1A49C7730);
    sub_1A4579A80(v8);
LABEL_10:
    KeyPath = swift_getKeyPath();
    v6.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 664))(v6);

    return sub_1A4579A80(a1);
  }

  sub_1A4579B00(v12, v11);
  if (v14[24] == 255)
  {
    sub_1A3F6857C(v11);
    goto LABEL_9;
  }

  v9 = v13;
  v10[0] = *v14;
  *(v10 + 9) = *&v14[9];
  sub_1A4579798();
  v4 = sub_1A524C594();
  sub_1A3F6857C(&v9);
  sub_1A3F6857C(v11);
  sub_1A4579A80(v12);
  sub_1A4579A80(v8);
  if ((v4 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  sub_1A4579B00(a1, v12);
  swift_beginAccess();
  sub_1A49C74F0(v12, v1 + v3);
  swift_endAccess();
  return sub_1A4579A80(a1);
}

double sub_1A49C7D38()
{
  swift_getKeyPath();
  (*(*v0 + 656))();

  return *(v0 + OBJC_IVAR____TtC12PhotosUICore27LemonadePickerRootViewModel__scrollAnimationDuration);
}

void sub_1A49C7E20(double a1)
{
  if (*(v1 + OBJC_IVAR____TtC12PhotosUICore27LemonadePickerRootViewModel__scrollAnimationDuration) == a1)
  {
    *(v1 + OBJC_IVAR____TtC12PhotosUICore27LemonadePickerRootViewModel__scrollAnimationDuration) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v3.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 664))(v3);
  }
}

void sub_1A49C7F18(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = swift_allocObject();
  sub_1A5243B24();
  swift_allocObject();
  *(v7 + 48) = sub_1A5243B14();
  *(v7 + 64) = *sub_1A44DAFD8();
  *(v7 + OBJC_IVAR____TtC12PhotosUICore27LemonadePickerRootViewModel__scrollToTopSignal) = 0;
  v8 = v7 + OBJC_IVAR____TtC12PhotosUICore27LemonadePickerRootViewModel__scrollTargetIdentifier;
  *(v8 + 32) = 0;
  *v8 = 0u;
  *(v8 + 16) = 0u;
  *(v8 + 40) = -1;
  *(v7 + OBJC_IVAR____TtC12PhotosUICore27LemonadePickerRootViewModel__scrollAnimationDuration) = 0x3FE0000000000000;
  *(v7 + OBJC_IVAR____TtC12PhotosUICore27LemonadePickerRootViewModel_verticalMargin) = 0;
  v9 = (v7 + OBJC_IVAR____TtC12PhotosUICore27LemonadePickerRootViewModel___containerSafeAreaInsets);
  *v9 = 0u;
  v9[1] = 0u;
  v10 = (v7 + OBJC_IVAR____TtC12PhotosUICore27LemonadePickerRootViewModel___containerSize);
  *v10 = 0;
  v10[1] = 0;
  *(v7 + OBJC_IVAR____TtC12PhotosUICore27LemonadePickerRootViewModel___horizontalSizeClass) = 2;
  *(v7 + OBJC_IVAR____TtC12PhotosUICore27LemonadePickerRootViewModel___verticalSizeClass) = 0;
  *(v7 + OBJC_IVAR____TtC12PhotosUICore27LemonadePickerRootViewModel___orientation) = 1;
  sub_1A5241604();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  type metadata accessor for LemonadePhotoLibraryContext(0, v11);
  v12 = a1;
  swift_unknownObjectRetain();
  v13 = a3;
  v14 = PHPhotoLibrary.lemonadeBookmarksManager.getter();
  LemonadePhotoLibraryContext.__allocating_init(photoLibrary:pickerConfiguration:bookmarksManager:)(v12, a3, v14);
  sub_1A3C3B2D4(0);
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = v13;
  v17 = v13;
  v18 = LemonadeShelvesLoader.__allocating_init(itemListManagerProvider:gradualDelivery:)(sub_1A49CB908, v16, 1);
  v19 = type metadata accessor for LemonadePickerShelvesDataSource();
  v20 = sub_1A499F720(v12, v17);
  type metadata accessor for LemonadeShelvesViewModel(0);
  aBlock[3] = v19;
  aBlock[4] = sub_1A49CC0E0(&unk_1EB146DC0, type metadata accessor for LemonadePickerShelvesDataSource, &unk_1A5378980);
  aBlock[0] = v20;

  sub_1A3C5A7B8(aBlock, v18, 2);
}

double sub_1A49C8350(__n128 a1, __n128 a2, __n128 a3, __n128 a4)
{
  v12 = a3.n128_u64[0];
  v13 = a4.n128_f64[0];
  v10 = a1.n128_u64[0];
  v11 = a2.n128_u64[0];
  v5 = v4 + OBJC_IVAR____TtC12PhotosUICore27LemonadePickerRootViewModel___containerSafeAreaInsets;
  swift_beginAccess();
  *&v6.f64[0] = v10;
  *&v6.f64[1] = v11;
  *&v7.f64[0] = v12;
  v7.f64[1] = v13;
  if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*v5, v6), vceqq_f64(*(v5 + 16), v7)))))
  {
    *v5 = v10;
    *(v5 + 8) = v11;
    result = v13;
    *(v5 + 16) = v12;
    *(v5 + 24) = v13;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v4 + 664))();
  }

  return result;
}

void sub_1A49C8498(double a1, double a2)
{
  v5 = (v2 + OBJC_IVAR____TtC12PhotosUICore27LemonadePickerRootViewModel___containerSize);
  swift_beginAccess();
  if (*v5 == a1 && v5[1] == a2)
  {
    *v5 = a1;
    v5[1] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v8.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v2 + 664))(v8);
  }
}

double sub_1A49C85B0(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC12PhotosUICore27LemonadePickerRootViewModel___horizontalSizeClass;
  swift_beginAccess();
  sub_1A3F17D14();
  if (sub_1A524C594())
  {
    *(v1 + v3) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v6.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 664))(v6);
  }

  return result;
}

double sub_1A49C86E8(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC12PhotosUICore27LemonadePickerRootViewModel___verticalSizeClass;
  swift_beginAccess();
  sub_1A4188350();
  if (sub_1A524C594())
  {
    *(v1 + v3) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v6.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 664))(v6);
  }

  return result;
}

double sub_1A49C8820(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC12PhotosUICore27LemonadePickerRootViewModel___orientation;
  swift_beginAccess();
  sub_1A41883A8();
  if (sub_1A524C594())
  {
    *(v1 + v3) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v6.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 664))(v6);
  }

  return result;
}

uint64_t sub_1A49C8958(uint64_t a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    return 0;
  }

  sub_1A49C8A5C(a1, a3, v10);
  v6 = v11;
  v5 = v12;
  v7 = __swift_project_boxed_opaque_existential_1(v10, v11);
  v8 = sub_1A3C66934(v7, v6, *(v5 + 8));

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  __swift_destroy_boxed_opaque_existential_0(v10);
  return v8;
}

void sub_1A49C8A5C(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v140 = a2;
  boxed_opaque_existential_1 = a3;
  v139 = type metadata accessor for LemonadeSuggestionsFeature.ShelfProvider(0);
  MEMORY[0x1EEE9AC00](v139);
  v5 = v137 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LemonadeSuggestionsFeature(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v137 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for LemonadeMacSyncedAlbumsFeature.ShelfProvider(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v137 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for LemonadeMacSyncedAlbumsFeature(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v137 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for LemonadeFeatureLibrary.Shelf(0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v137 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A49CC018(a1, v17, type metadata accessor for LemonadeFeatureLibrary.Shelf);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 6)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        v70 = *(v17 + 3);
        *&v146[16] = *(v17 + 2);
        v147 = v70;
        v148 = *(v17 + 4);
        v149 = v17[80];
        v71 = *(v17 + 1);
        v145 = *v17;
        *v146 = v71;
        v72 = *(v17 + 40);
        v143[0] = *(v17 + 24);
        v143[1] = v72;
        v144[0] = *(v17 + 56);
        *(v144 + 9) = *(v17 + 65);
        sub_1A40F214C(0);
        v73 = boxed_opaque_existential_1;
        boxed_opaque_existential_1[3] = v74;
        v73[4] = sub_1A49CC0E0(&qword_1EB146F40, sub_1A40F214C, &unk_1A5330810);
        v75 = swift_allocObject();
        *v73 = v75;
        sub_1A3FA1224(&v146[8], v142);
        v76 = sub_1A40F227C();
        v77 = sub_1A3C51EF8();
        v78 = sub_1A49CBDE8(&unk_1EB146F10, sub_1A3CA2A44, sub_1A3D6FBA4, MEMORY[0x1E69C1F78]);
        v79 = sub_1A49CC0E0(&qword_1EB129238, sub_1A3CA2A44, MEMORY[0x1E69C1F68]);
        v80 = sub_1A3D6FBA4();
        v81 = sub_1A3CA2B54();
        v82 = sub_1A40F2320();
        sub_1A432C3B4(v143, v140, &type metadata for LemonadeAlbumsFeature.ShelfProvider, v76, v77, v78, v79, v80, v75 + 16, v81, v82);
        sub_1A3FA1280(&v145);
        return;
      }

      if (EnumCaseMultiPayload == 1)
      {
        v47 = *(v17 + 2);
        v139 = *(v17 + 1);
        v138 = v47;
        v48 = *(v17 + 3);
        LOBYTE(v47) = v17[32];
        v137[1] = *(v17 + 5);
        *&v145 = v48;
        BYTE8(v145) = v47;
        sub_1A40F294C(0);
        v49 = boxed_opaque_existential_1;
        boxed_opaque_existential_1[3] = v50;
        *(v49 + 32) = sub_1A49CC0E0(&unk_1EB146EF0, sub_1A40F294C, &unk_1A5330810);
        v51 = sub_1A40F2A7C();
        v52 = sub_1A3C445AC();
        v53 = sub_1A49CBE58();
        v54 = sub_1A3D6ECFC();
        v55 = sub_1A3D71010();
        v56 = sub_1A40F2BE0();
        v57 = sub_1A40F2320();
        v58 = v140;
        v59 = v48;
        sub_1A432C3B4(&v145, v58, &type metadata for LemonadeSharedAlbumsFeature.ShelfProvider, v51, v52, v53, v54, v55, v49, v56, v57);

        goto LABEL_27;
      }

      goto LABEL_28;
    }

    switch(EnumCaseMultiPayload)
    {
      case 2:
        v95 = *(v17 + 2);
        v139 = *(v17 + 1);
        v138 = v95;
        LOWORD(v95) = *(v17 + 16);
        *&v145 = *(v17 + 3);
        v96 = v145;
        WORD4(v145) = v95;
        sub_1A40F2D8C(0);
        v97 = boxed_opaque_existential_1;
        boxed_opaque_existential_1[3] = v98;
        *(v97 + 32) = sub_1A49CC0E0(&unk_1EB146EC0, sub_1A40F2D8C, &unk_1A5330810);
        v99 = sub_1A40F2EEC();
        v100 = sub_1A3C36888();
        v101 = sub_1A49CBDE8(&qword_1EB1320A8, sub_1A3D61454, sub_1A40F2F40, MEMORY[0x1E69C2028]);
        v102 = sub_1A49CC0E0(&qword_1EB124E78, sub_1A3D61454, MEMORY[0x1E69C2018]);
        v103 = sub_1A40F2F40();
        v104 = sub_1A49CC0E0(&qword_1EB12A420, type metadata accessor for PeopleUnifiedItem, &protocol conformance descriptor for PeopleUnifiedItem);
        v105 = sub_1A40F2320();
        v106 = v140;
        v107 = v96;
        v135 = v104;
        v136 = v105;
        v108 = &type metadata for LemonadePeopleShelfProvider;
        break;
      case 4:
        v117 = *(v17 + 2);
        v139 = *(v17 + 1);
        v138 = v117;
        LOBYTE(v117) = v17[32];
        *&v145 = *(v17 + 3);
        v118 = v145;
        BYTE8(v145) = v117;
        sub_1A40F31EC(0);
        v97 = boxed_opaque_existential_1;
        boxed_opaque_existential_1[3] = v119;
        *(v97 + 32) = sub_1A49CC0E0(&qword_1EB1320E8, sub_1A40F31EC, &unk_1A5330810);
        v99 = sub_1A40F3338();
        v100 = sub_1A3C440BC();
        v101 = sub_1A40F338C();
        v102 = sub_1A49CC0E0(&qword_1EB124EC0, sub_1A40F3434, MEMORY[0x1E69C22B8]);
        v103 = sub_1A40F3648(&qword_1EB124B68, sub_1A3D71010, &protocol conformance descriptor for <> PhotosConcatenatedItem<A, B, C>);
        v120 = sub_1A40F3648(&qword_1EB124B70, sub_1A40F2BE0, &protocol conformance descriptor for <> PhotosConcatenatedItem<A, B, C>);
        v121 = sub_1A40F2320();
        v106 = v140;
        v107 = v118;
        v135 = v120;
        v136 = v121;
        v108 = &type metadata for LemonadeEventsFeature.ShelfProvider;
        break;
      case 5:
        v19 = *(v17 + 2);
        v139 = *(v17 + 1);
        v138 = v19;
        v21 = *(v17 + 4);
        LOBYTE(v19) = v17[40];
        *&v145 = *(v17 + 3);
        v20 = v145;
        *(&v145 + 1) = v21;
        v146[0] = v19;
        sub_1A40F36F4(0);
        v22 = boxed_opaque_existential_1;
        boxed_opaque_existential_1[3] = v23;
        v22[4] = sub_1A49CC0E0(&qword_1EB132100, sub_1A40F36F4, &unk_1A5330810);
        v24 = swift_allocObject();
        *v22 = v24;
        boxed_opaque_existential_1 = sub_1A40F3824();
        v25 = sub_1A3C441B4();
        v26 = sub_1A49CBCE0(&unk_1EB146E80, &qword_1EB129270, MEMORY[0x1E69C1E60]);
        v27 = sub_1A49CBD60();
        v28 = sub_1A3D71010();
        v29 = sub_1A40F2BE0();
        v30 = sub_1A40F2320();
        v31 = v140;
        v32 = v20;
        v33 = v21;
        sub_1A432C3B4(&v145, v31, &type metadata for LemonadeTripsFeature.ShelfProvider, boxed_opaque_existential_1, v25, v26, v27, v28, v24 + 16, v29, v30);

LABEL_27:

        return;
      default:
        goto LABEL_28;
    }

    v122 = v97;
    v123 = v106;
    v124 = v99;
LABEL_26:
    sub_1A432C3B4(&v145, v123, v108, v124, v100, v101, v102, v103, v122, v135, v136);

    goto LABEL_27;
  }

  if (EnumCaseMultiPayload <= 17)
  {
    if (EnumCaseMultiPayload == 7)
    {
      v83 = *(v17 + 1);
      v145 = *v17;
      *v146 = v83;
      *&v146[16] = *(v17 + 4);
      sub_1A459C7CC();
      v150 = v84;
      v151 = v85;
      sub_1A40F3A20(0);
      v86 = boxed_opaque_existential_1;
      boxed_opaque_existential_1[3] = v87;
      *(v86 + 32) = sub_1A49CC0E0(&unk_1EB146E60, sub_1A40F3A20, &unk_1A5330810);
      v88 = sub_1A40F3B50();
      v89 = sub_1A3C411C8();
      v90 = sub_1A49CBDE8(&qword_1EB124E90, sub_1A3F93438, sub_1A40F3C14, MEMORY[0x1E69C22C8]);
      v91 = sub_1A49CC0E0(&qword_1EB1291B8, sub_1A3F93438, MEMORY[0x1E69C22B8]);
      v92 = sub_1A40F3C14();
      v93 = sub_1A40F3BA4();
      v94 = sub_1A40F2320();
      sub_1A432C3B4(&v150, v140, &type metadata for LemonadeMemoriesFeature.ShelfProvider, v88, v89, v90, v91, v92, v86, v93, v94);
      v142[0] = v145;
      sub_1A3C651B8(v142);

      v143[0] = *&v146[8];
      sub_1A49CBC30(v143, &qword_1EB1254A0, sub_1A40A5D98);
      return;
    }

    if (EnumCaseMultiPayload == 15)
    {
      sub_1A49CBFB0(v17, v14, type metadata accessor for LemonadeMacSyncedAlbumsFeature);
      sub_1A49CC018(&v14[*(v12 + 24)], v11, type metadata accessor for LemonadeMacSyncedAlbumsFeature.ShelfProvider);
      sub_1A40F2788(0);
      v60 = boxed_opaque_existential_1;
      boxed_opaque_existential_1[3] = v61;
      v60[4] = sub_1A49CC0E0(&unk_1EB146F20, sub_1A40F2788, &unk_1A5330810);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v60);
      v62 = sub_1A49CC0E0(&unk_1EB146F00, type metadata accessor for LemonadeMacSyncedAlbumsFeature.ShelfProvider, &unk_1A5337070);
      v63 = sub_1A49CC0E0(&qword_1EB1297E0, type metadata accessor for LemonadeMacSyncedAlbumsFeature.ShelfProvider, &unk_1A5337054);
      v64 = sub_1A49CBDE8(&unk_1EB146F10, sub_1A3CA2A44, sub_1A3D6FBA4, MEMORY[0x1E69C1F78]);
      v65 = sub_1A49CC0E0(&qword_1EB129238, sub_1A3CA2A44, MEMORY[0x1E69C1F68]);
      v66 = sub_1A3D6FBA4();
      v67 = sub_1A3CA2B54();
      v68 = sub_1A40F2320();
      v69 = v140;
      sub_1A432C3B4(v11, v69, v9, v62, v63, v64, v65, v66, boxed_opaque_existential_1, v67, v68);
      v45 = type metadata accessor for LemonadeMacSyncedAlbumsFeature;
      v46 = v14;
      goto LABEL_29;
    }

LABEL_28:
    sub_1A3C53294(&v145);
    v130 = *&v146[8];
    v131 = *&v146[16];
    __swift_project_boxed_opaque_existential_1(&v145, *&v146[8]);
    v132 = *(v131 + 32);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v134 = boxed_opaque_existential_1;
    boxed_opaque_existential_1[3] = AssociatedTypeWitness;
    v134[4] = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1(v134);
    v132(v130, v131);
    __swift_destroy_boxed_opaque_existential_0(&v145);
    v45 = type metadata accessor for LemonadeFeatureLibrary.Shelf;
    v46 = v17;
    goto LABEL_29;
  }

  if (EnumCaseMultiPayload == 18)
  {
    v109 = *(v17 + 2);
    v139 = *(v17 + 1);
    v138 = v109;
    LOBYTE(v109) = v17[32];
    *&v145 = *(v17 + 3);
    v110 = v145;
    BYTE8(v145) = v109;
    sub_1A40F3D00(0);
    v111 = boxed_opaque_existential_1;
    boxed_opaque_existential_1[3] = v112;
    *(v111 + 32) = sub_1A49CC0E0(&unk_1EB146E40, sub_1A40F3D00, &unk_1A5330810);
    v113 = sub_1A40F3E30();
    v100 = sub_1A3C442E8();
    v101 = sub_1A49CBB00();
    v102 = sub_1A49CBBA8();
    v103 = sub_1A3D71010();
    v114 = sub_1A40F2BE0();
    v115 = sub_1A40F2320();
    v116 = v140;
    v107 = v110;
    v135 = v114;
    v136 = v115;
    v108 = &type metadata for LemonadeMediaTypesFeature.ShelfProvider;
LABEL_25:
    v122 = v111;
    v123 = v116;
    v124 = v113;
    goto LABEL_26;
  }

  if (EnumCaseMultiPayload == 19)
  {
    v125 = *(v17 + 2);
    v139 = *(v17 + 1);
    v138 = v125;
    LOBYTE(v125) = v17[32];
    *&v145 = *(v17 + 3);
    v126 = v145;
    BYTE8(v145) = v125;
    sub_1A40F4018(0);
    v111 = boxed_opaque_existential_1;
    boxed_opaque_existential_1[3] = v127;
    *(v111 + 32) = sub_1A49CC0E0(&unk_1EB146E20, sub_1A40F4018, &unk_1A5330810);
    v113 = sub_1A40F4148();
    v100 = sub_1A3C52114();
    v101 = sub_1A49CBB00();
    v102 = sub_1A49CBBA8();
    v103 = sub_1A3D71010();
    v128 = sub_1A40F2BE0();
    v129 = sub_1A40F2320();
    v116 = v140;
    v107 = v126;
    v135 = v128;
    v136 = v129;
    v108 = &type metadata for LemonadeUtilitiesFeature.ShelfProvider;
    goto LABEL_25;
  }

  if (EnumCaseMultiPayload != 21)
  {
    goto LABEL_28;
  }

  sub_1A49CBFB0(v17, v8, type metadata accessor for LemonadeSuggestionsFeature);
  sub_1A49CC018(&v8[*(v6 + 24)], v5, type metadata accessor for LemonadeSuggestionsFeature.ShelfProvider);
  sub_1A40F426C(0);
  v34 = boxed_opaque_existential_1;
  boxed_opaque_existential_1[3] = v35;
  v34[4] = sub_1A49CC0E0(&unk_1EB146DF0, sub_1A40F426C, &unk_1A5330810);
  v36 = __swift_allocate_boxed_opaque_existential_1(v34);
  v37 = sub_1A49CC0E0(&qword_1EB132160, type metadata accessor for LemonadeSuggestionsFeature.ShelfProvider, &unk_1A531BE90);
  v38 = sub_1A49CC0E0(&qword_1EB129BA0, type metadata accessor for LemonadeSuggestionsFeature.ShelfProvider, &unk_1A531BE74);
  v39 = sub_1A49CBCE0(&qword_1EB132168, &qword_1EB129120, MEMORY[0x1E69C22A0]);
  v40 = sub_1A49CBA78();
  v41 = sub_1A3D71010();
  v42 = sub_1A40F2BE0();
  v43 = sub_1A40F2320();
  v44 = v140;
  sub_1A432C3B4(v5, v44, v139, v37, v38, v39, v40, v41, v36, v42, v43);
  v45 = type metadata accessor for LemonadeSuggestionsFeature;
  v46 = v8;
LABEL_29:
  sub_1A49CC080(v46, v45);
}

double sub_1A49C9BAC(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1A524CC54();
    sub_1A3C67884(sub_1A49CC33C, v3, "PhotosUICore/LemonadePickerRootViewModel.swift", 46, 2u, 54);
  }

  return result;
}

void sub_1A49C9C48(char a1)
{
  v3 = (*(*v1 + 344))();
  if (a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0.0;
  }

  v5 = OBJC_IVAR____TtC12PhotosUICore27LemonadePickerRootViewModel__scrollAnimationDuration;
  if (*(v1 + OBJC_IVAR____TtC12PhotosUICore27LemonadePickerRootViewModel__scrollAnimationDuration) == v4)
  {
    *(v1 + OBJC_IVAR____TtC12PhotosUICore27LemonadePickerRootViewModel__scrollAnimationDuration) = v4;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v7.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 664))(v7);
  }

  swift_getKeyPath();
  (*(*v1 + 656))();

  swift_getKeyPath();
  sub_1A49CC0E0(&qword_1EB146F48, type metadata accessor for LemonadePickerRootViewModel, &unk_1A537A0CC);
  sub_1A52415F4();

  ++*(v1 + OBJC_IVAR____TtC12PhotosUICore27LemonadePickerRootViewModel__scrollToTopSignal);
  swift_getKeyPath();
  sub_1A52415E4();

  if (*(v1 + v5) == v3)
  {
    *(v1 + v5) = v3;
  }

  else
  {
    v8 = swift_getKeyPath();
    v9.n128_f64[0] = MEMORY[0x1EEE9AC00](v8);
    (*(*v1 + 664))(v9);
  }
}

double sub_1A49C9FF8()
{
  swift_getKeyPath();
  (*(*v0 + 656))();

  v1 = v0 + OBJC_IVAR____TtC12PhotosUICore27LemonadePickerRootViewModel___containerSafeAreaInsets;
  swift_beginAccess();
  return *v1;
}

void sub_1A49CA088(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = (*(**a1 + 416))();
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
}

uint64_t (*sub_1A49CA134(uint64_t *a1))()
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
  (*(*v1 + 656))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore27LemonadePickerRootViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A49CC0E0(&qword_1EB146F48, type metadata accessor for LemonadePickerRootViewModel, &unk_1A537A0CC);
  sub_1A52415F4();

  v4[7] = sub_1A49C9F98(v4);
  return sub_1A49CA284;
}

double sub_1A49CA2F0()
{
  swift_getKeyPath();
  (*(*v0 + 656))();

  v1 = v0 + OBJC_IVAR____TtC12PhotosUICore27LemonadePickerRootViewModel___containerSize;
  swift_beginAccess();
  return *v1;
}

uint64_t (*sub_1A49CA420(uint64_t *a1))()
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
  (*(*v1 + 656))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore27LemonadePickerRootViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A49CC0E0(&qword_1EB146F48, type metadata accessor for LemonadePickerRootViewModel, &unk_1A537A0CC);
  sub_1A52415F4();

  v4[7] = sub_1A49CA290(v4);
  return sub_1A49CA570;
}

void sub_1A49CA5DC(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  (*(*v1 + 656))();

  v3 = OBJC_IVAR____TtC12PhotosUICore27LemonadePickerRootViewModel___horizontalSizeClass;
  swift_beginAccess();
  *a1 = *(v1 + v3);
}

void *sub_1A49CA674@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 512))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_1A49CA6D8(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*(*v2 + 520))(&v4);
}

uint64_t (*sub_1A49CA738(uint64_t *a1))()
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
  (*(*v1 + 656))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore27LemonadePickerRootViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A49CC0E0(&qword_1EB146F48, type metadata accessor for LemonadePickerRootViewModel, &unk_1A537A0CC);
  sub_1A52415F4();

  v4[7] = sub_1A49CA57C(v4);
  return sub_1A49CA888;
}

void sub_1A49CA8F4(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  (*(*v1 + 656))();

  v3 = OBJC_IVAR____TtC12PhotosUICore27LemonadePickerRootViewModel___verticalSizeClass;
  swift_beginAccess();
  *a1 = *(v1 + v3);
}

void *sub_1A49CA98C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 560))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_1A49CA9F0(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*(*v2 + 568))(&v4);
}

uint64_t (*sub_1A49CAA50(uint64_t *a1))()
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
  (*(*v1 + 656))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore27LemonadePickerRootViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A49CC0E0(&qword_1EB146F48, type metadata accessor for LemonadePickerRootViewModel, &unk_1A537A0CC);
  sub_1A52415F4();

  v4[7] = sub_1A49CA894(v4);
  return sub_1A49CABA0;
}

void sub_1A49CAC0C(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  (*(*v1 + 656))();

  v3 = OBJC_IVAR____TtC12PhotosUICore27LemonadePickerRootViewModel___orientation;
  swift_beginAccess();
  *a1 = *(v1 + v3);
}

void *sub_1A49CACA4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 608))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_1A49CAD08(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*(*v2 + 616))(&v4);
}

uint64_t (*sub_1A49CAD68(uint64_t *a1))()
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
  (*(*v1 + 656))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore27LemonadePickerRootViewModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A49CC0E0(&qword_1EB146F48, type metadata accessor for LemonadePickerRootViewModel, &unk_1A537A0CC);
  sub_1A52415F4();

  v4[7] = sub_1A49CABAC(v4);
  return sub_1A49CAEB8;
}

uint64_t sub_1A49CAEF0()
{
  v2 = 0;
  memset(v1, 0, sizeof(v1));
  v3 = -1;
  return sub_1A49C7B00(v1);
}

uint64_t sub_1A49CB068()
{
  swift_unknownObjectRelease();

  sub_1A49CBC30(v0 + OBJC_IVAR____TtC12PhotosUICore27LemonadePickerRootViewModel_cellSpecs, &qword_1EB128FD0, MEMORY[0x1E69C2948]);
  sub_1A4579A80(v0 + OBJC_IVAR____TtC12PhotosUICore27LemonadePickerRootViewModel__scrollTargetIdentifier);
  v1 = OBJC_IVAR____TtC12PhotosUICore27LemonadePickerRootViewModel___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_1A49CB134()
{
  sub_1A49CB068();

  return swift_deallocClassInstance();
}

void (*sub_1A49CB1E4(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = (*(*v1 + 480))();
  return sub_1A3E62A10;
}

void (*sub_1A49CB2D4(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = (*(*v1 + 432))();
  return sub_1A3E658B0;
}

void (*sub_1A49CB3EC(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = (*(*v1 + 528))();
  return sub_1A3E658B0;
}

void (*sub_1A49CB504(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = (*(*v1 + 576))();
  return sub_1A3E658B0;
}

void (*sub_1A49CB61C(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = (*(*v1 + 624))();
  return sub_1A3E658B0;
}

uint64_t sub_1A49CB888()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC12PhotosUICore27LemonadePickerRootViewModel__scrollTargetIdentifier;
  swift_beginAccess();
  sub_1A49C766C(v1, v2 + v3);
  return swift_endAccess();
}

double sub_1A49CB8F0()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + OBJC_IVAR____TtC12PhotosUICore27LemonadePickerRootViewModel__scrollAnimationDuration) = result;
  return result;
}

__n128 sub_1A49CB918()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC12PhotosUICore27LemonadePickerRootViewModel___containerSafeAreaInsets);
  v3 = *(v0 + 40);
  v4 = *(v0 + 24);
  swift_beginAccess();
  result = v4;
  *v1 = v4;
  v1[1] = v3;
  return result;
}

void sub_1A49CB97C()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = (v0[2] + OBJC_IVAR____TtC12PhotosUICore27LemonadePickerRootViewModel___containerSize);
  swift_beginAccess();
  *v3 = v1;
  v3[1] = v2;
}

void sub_1A49CBA1C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC12PhotosUICore27LemonadePickerRootViewModel___orientation;
  swift_beginAccess();
  *(v1 + v3) = v2;
}

unint64_t sub_1A49CBA78()
{
  result = qword_1EB146DE0;
  if (!qword_1EB146DE0)
  {
    sub_1A49CBF00(255, &qword_1EB129120, sub_1A40F35D8, MEMORY[0x1E69C22A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB146DE0);
  }

  return result;
}

unint64_t sub_1A49CBB00()
{
  result = qword_1EB146E10;
  if (!qword_1EB146E10)
  {
    sub_1A49CBF00(255, &qword_1EB1290B8, sub_1A40F3F24, MEMORY[0x1E69C2470]);
    sub_1A3D71010();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB146E10);
  }

  return result;
}

unint64_t sub_1A49CBBA8()
{
  result = qword_1EB124D98;
  if (!qword_1EB124D98)
  {
    sub_1A49CBF00(255, &qword_1EB1290B8, sub_1A40F3F24, MEMORY[0x1E69C2470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB124D98);
  }

  return result;
}

uint64_t sub_1A49CBC30(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1A49CBC8C(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1A49CBC8C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t sub_1A49CBCE0(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  result = *a1;
  if (!result)
  {
    sub_1A49CBF00(255, a2, sub_1A40F35D8, a3);
    sub_1A3D71010();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A49CBD60()
{
  result = qword_1EB129290;
  if (!qword_1EB129290)
  {
    sub_1A49CBF00(255, &qword_1EB129270, sub_1A40F35D8, MEMORY[0x1E69C1E60]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB129290);
  }

  return result;
}

uint64_t sub_1A49CBDE8(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void), uint64_t a4)
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

unint64_t sub_1A49CBE58()
{
  result = qword_1EB146EE0;
  if (!qword_1EB146EE0)
  {
    sub_1A49CBF00(255, &qword_1EB1291F8, sub_1A40F2B70, MEMORY[0x1E69C1F50]);
    sub_1A3D71010();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB146EE0);
  }

  return result;
}

void sub_1A49CBF00(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, void *))
{
  if (!*a2)
  {
    sub_1A3C379F4(255, &qword_1EB12A800, &qword_1EB126AC0, 0x1E6978650);
    v11[0] = v8;
    v11[1] = a3();
    v11[2] = sub_1A40F2BE0();
    v11[3] = sub_1A40F2C50();
    v9 = a4(a1, v11);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1A49CBFB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A49CC018(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A49CC080(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A49CC0E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for LemonadePickerRootViewModel(uint64_t a1)
{
  result = qword_1EB1E4CA0;
  if (!qword_1EB1E4CA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A49CC174(uint64_t a1)
{
  result = sub_1A49CC0E0(&qword_1EB146F48, type metadata accessor for LemonadePickerRootViewModel, &unk_1A537A0CC);
  *(a1 + 8) = result;
  return result;
}

void sub_1A49CC1D4(uint64_t a1)
{
  sub_1A49CBC8C(319, &qword_1EB128FD0, MEMORY[0x1E69C2948]);
  if (v1 <= 0x3F)
  {
    sub_1A5241614();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1A49CC3A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = sub_1A52411C4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A52411B4();
  v12 = sub_1A5241164();
  v14 = v13;
  result = (*(v9 + 8))(v11, v8);
  *a4 = v12;
  a4[1] = v14;
  a4[2] = a1;
  a4[3] = a2;
  a4[4] = a3;
  return result;
}

uint64_t sub_1A49CC4A4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

uint64_t sub_1A49CC4B4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1A5249234();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1E697DCB8];
  sub_1A49D4BF0(0, &qword_1EB128A38, sub_1A3EBE398, MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v15 - v10;
  sub_1A49D4778(v2, &v15 - v10, &qword_1EB128A38, sub_1A3EBE398, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1A49D4B10(v11, a1, sub_1A3EBE398);
  }

  v13 = sub_1A524D254();
  v14 = sub_1A524A014();
  sub_1A5246DF4(v13, &dword_1A3C1C000, v14, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

  sub_1A5249224();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

uint64_t type metadata accessor for PhotosDetailsSearchView(uint64_t a1)
{
  result = qword_1EB1E4DC0;
  if (!qword_1EB1E4DC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A49CC710(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  sub_1A49D5B6C(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1A49CC790(char a1)
{
  type metadata accessor for PhotosDetailsSearchView(0);
  sub_1A49D5B6C(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  return sub_1A524B6B4();
}

uint64_t sub_1A49CC818@<X0>(void *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, char a4@<W3>, uint64_t *a5@<X8>)
{
  *a5 = swift_getKeyPath();
  sub_1A49D4BF0(0, &qword_1EB128A38, sub_1A3EBE398, MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v10 = type metadata accessor for PhotosDetailsSearchView(0);
  v11 = (a5 + v10[6]);
  sub_1A49D5B6C(0, &qword_1EB146F58, &type metadata for PhotosDetailsSearchViewResultSection, MEMORY[0x1E69E62F8]);
  sub_1A524B694();
  *v11 = v18;
  v11[1] = v19;
  v12 = (a5 + v10[8]);
  *v12 = 0;
  v12[1] = 0;
  v13 = a5 + v10[9];
  *(v13 + 4) = 0;
  *v13 = 0u;
  *(v13 + 1) = 0u;
  sub_1A3C341C8(a1, a5 + v10[7]);
  *(a5 + v10[10]) = a4;
  if (!a3)
  {
    a2 = 0;
    a3 = 0xE000000000000000;
  }

  result = __swift_destroy_boxed_opaque_existential_0(a1);
  v15 = (a5 + v10[5]);
  *v15 = a2;
  v15[1] = a3;
  v15[2] = 0;
  v16 = a5 + v10[11];
  *v16 = 0;
  *(v16 + 1) = 0;
  v17 = a5 + v10[12];
  *v17 = 0;
  *(v17 + 1) = 0;
  return result;
}

void sub_1A49CCA20(uint64_t a1)
{
  if (!qword_1EB146F78)
  {
    sub_1A49CCB24(255);
    sub_1A5249C44();
    sub_1A49CD640(&qword_1EB147140, sub_1A49CCB24, MEMORY[0x1E697C0C0]);
    sub_1A49CD640(&qword_1EB13A710, MEMORY[0x1E697C938], MEMORY[0x1E697C930]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB146F78);
    }
  }
}

void sub_1A49CCB24(uint64_t a1)
{
  if (!qword_1EB146F80)
  {
    sub_1A49CCC94(255);
    sub_1A49CCDEC(255);
    sub_1A49D4BF0(255, &qword_1EB1470E8, sub_1A49CDFF8, MEMORY[0x1E697C5D8]);
    sub_1A49CCEC4(255);
    sub_1A49CD58C(&qword_1EB1470D8, sub_1A49CCEC4, sub_1A49CDF68);
    sub_1A3D5F9DC();
    swift_getOpaqueTypeConformance2();
    sub_1A49CE424();
    swift_getOpaqueTypeConformance2();
    v1 = sub_1A5248484();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB146F80);
    }
  }
}

void sub_1A49CCC94(uint64_t a1)
{
  if (!qword_1EB146F88)
  {
    sub_1A49CCDEC(255);
    sub_1A49D4BF0(255, &qword_1EB1470E8, sub_1A49CDFF8, MEMORY[0x1E697C5D8]);
    sub_1A49CCEC4(255);
    sub_1A49CD58C(&qword_1EB1470D8, sub_1A49CCEC4, sub_1A49CDF68);
    sub_1A3D5F9DC();
    swift_getOpaqueTypeConformance2();
    sub_1A49CE424();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB146F88);
    }
  }
}

void sub_1A49CCDEC(uint64_t a1)
{
  if (!qword_1EB146F90)
  {
    sub_1A49CCEC4(255);
    sub_1A49CD58C(&qword_1EB1470D8, sub_1A49CCEC4, sub_1A49CDF68);
    sub_1A3D5F9DC();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB146F90);
    }
  }
}

void sub_1A49CCEC4(uint64_t a1)
{
  if (!qword_1EB146F98)
  {
    sub_1A49D35A0(255, &qword_1EB146FA0, &qword_1EB146FA8, sub_1A49CCF5C, sub_1A49CDEE0);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB146F98);
    }
  }
}

void sub_1A49CCF5C(uint64_t a1)
{
  if (!qword_1EB146FB0)
  {
    sub_1A49CD278(255, &qword_1EB146FB8, sub_1A49CD020, MEMORY[0x1E697E5E0], MEMORY[0x1E697E830]);
    sub_1A49CD190(255, &qword_1EB146FD8, MEMORY[0x1E697F960]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB146FB0);
    }
  }
}

void sub_1A49CD020(uint64_t a1)
{
  if (!qword_1EB146FC0)
  {
    sub_1A49CE26C(255, &qword_1EB146FC8, &type metadata for PhotosDetailsSearchBar, MEMORY[0x1E69805D8], MEMORY[0x1E697E830]);
    sub_1A49CD0E4();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB146FC0);
    }
  }
}

unint64_t sub_1A49CD0E4()
{
  result = qword_1EB146FD0;
  if (!qword_1EB146FD0)
  {
    sub_1A49CE26C(255, &qword_1EB146FC8, &type metadata for PhotosDetailsSearchBar, MEMORY[0x1E69805D8], MEMORY[0x1E697E830]);
    sub_1A48DA010();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB146FD0);
  }

  return result;
}

void sub_1A49CD190(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    sub_1A49D5784(255, &qword_1EB146FE0, sub_1A49CD23C, sub_1A49CD688, MEMORY[0x1E697F960]);
    v7 = a3(a1, v6, MEMORY[0x1E6981840]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1A49CD278(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_1A49CD2E4(uint64_t a1)
{
  if (!qword_1EB146FF0)
  {
    sub_1A49CD380(255);
    sub_1A49CD58C(&qword_1EB147020, sub_1A49CD380, sub_1A49CD60C);
    v1 = sub_1A5247D04();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB146FF0);
    }
  }
}

void sub_1A49CD3BC(uint64_t a1)
{
  if (!qword_1EB147000)
  {
    sub_1A49D4BF0(255, &qword_1EB147008, sub_1A49CD450, MEMORY[0x1E6981F40]);
    sub_1A49CD504();
    v1 = sub_1A524B894();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB147000);
    }
  }
}

void sub_1A49CD450(uint64_t a1)
{
  if (!qword_1EB147010)
  {
    sub_1A49CE26C(255, &qword_1EB128720, MEMORY[0x1E6981148], MEMORY[0x1E697E5E0], MEMORY[0x1E697E830]);
    sub_1A3FF8D1C(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1EB147010);
    }
  }
}

unint64_t sub_1A49CD504()
{
  result = qword_1EB147018;
  if (!qword_1EB147018)
  {
    sub_1A49D4BF0(255, &qword_1EB147008, sub_1A49CD450, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB147018);
  }

  return result;
}

uint64_t sub_1A49CD58C(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void))
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

uint64_t sub_1A49CD640(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1A49CD688(uint64_t a1)
{
  if (!qword_1EB147030)
  {
    sub_1A49CD75C(255);
    sub_1A52484F4();
    sub_1A49CD640(&qword_1EB1470C8, sub_1A49CD75C, MEMORY[0x1E697CD20]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB147030);
    }
  }
}

void sub_1A49CD75C(uint64_t a1)
{
  if (!qword_1EB147038)
  {
    sub_1A49CD820(255);
    sub_1A49CEBFC(&qword_1EB147090, sub_1A49CD820, sub_1A49CDC04, MEMORY[0x1E69819D0]);
    v1 = sub_1A524A2D4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB147038);
    }
  }
}

void sub_1A49CD820(uint64_t a1)
{
  if (!qword_1EB147040)
  {
    sub_1A49D5B6C(255, &qword_1EB146F58, &type metadata for PhotosDetailsSearchViewResultSection, MEMORY[0x1E69E62F8]);
    sub_1A49D5784(255, &qword_1EB147048, sub_1A49CD920, sub_1A49CD9E4, MEMORY[0x1E697F960]);
    sub_1A49CDB88();
    v1 = sub_1A524B9D4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB147040);
    }
  }
}

void sub_1A49CD968(uint64_t a1)
{
  if (!qword_1EB147058)
  {
    sub_1A49D4C54(255, &qword_1EB147060, sub_1A49CD9E4, MEMORY[0x1E6981148]);
    v1 = sub_1A524BE24();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB147058);
    }
  }
}

void sub_1A49CD9E4(uint64_t a1)
{
  if (!qword_1EB147068)
  {
    sub_1A3C71318(255, &qword_1EB147070, &qword_1EB12DDB8, &protocol descriptor for PhotosDetailsSearchViewResult, MEMORY[0x1E69E62F8]);
    sub_1A49CDA9C();
    v1 = sub_1A524B9D4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB147068);
    }
  }
}

unint64_t sub_1A49CDA9C()
{
  result = qword_1EB147078;
  if (!qword_1EB147078)
  {
    sub_1A3C71318(255, &qword_1EB147070, &qword_1EB12DDB8, &protocol descriptor for PhotosDetailsSearchViewResult, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB147078);
  }

  return result;
}

void sub_1A49CDB20(uint64_t a1)
{
  if (!qword_1EB147080)
  {
    sub_1A49CD9E4(255);
    v1 = sub_1A524BA74();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB147080);
    }
  }
}

unint64_t sub_1A49CDB88()
{
  result = qword_1EB147088;
  if (!qword_1EB147088)
  {
    sub_1A49D5B6C(255, &qword_1EB146F58, &type metadata for PhotosDetailsSearchViewResultSection, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB147088);
  }

  return result;
}

unint64_t sub_1A49CDC04()
{
  result = qword_1EB147098;
  if (!qword_1EB147098)
  {
    sub_1A49D5784(255, &qword_1EB147048, sub_1A49CD920, sub_1A49CD9E4, MEMORY[0x1E697F960]);
    sub_1A49CDD0C();
    sub_1A49CEBFC(&qword_1EB1470B8, sub_1A49CD9E4, sub_1A49CDE8C, MEMORY[0x1E69819D0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB147098);
  }

  return result;
}

unint64_t sub_1A49CDD0C()
{
  result = qword_1EB1470A0;
  if (!qword_1EB1470A0)
  {
    sub_1A49CD920(255);
    sub_1A49CD640(&qword_1EB1470A8, sub_1A49CD968, MEMORY[0x1E6981F48]);
    sub_1A49CDDBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1470A0);
  }

  return result;
}

unint64_t sub_1A49CDDBC()
{
  result = qword_1EB1470B0;
  if (!qword_1EB1470B0)
  {
    sub_1A49CDB20(255);
    sub_1A49CEBFC(&qword_1EB1470B8, sub_1A49CD9E4, sub_1A49CDE8C, MEMORY[0x1E69819D0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1470B0);
  }

  return result;
}

unint64_t sub_1A49CDE8C()
{
  result = qword_1EB1470C0;
  if (!qword_1EB1470C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1470C0);
  }

  return result;
}

unint64_t sub_1A49CDEE0()
{
  result = qword_1EB1470D0;
  if (!qword_1EB1470D0)
  {
    sub_1A49D4BF0(255, &qword_1EB146FA8, sub_1A49CCF5C, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1470D0);
  }

  return result;
}

unint64_t sub_1A49CDF68()
{
  result = qword_1EB1470E0;
  if (!qword_1EB1470E0)
  {
    sub_1A49D35A0(255, &qword_1EB146FA0, &qword_1EB146FA8, sub_1A49CCF5C, sub_1A49CDEE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1470E0);
  }

  return result;
}

void sub_1A49CDFF8(uint64_t a1)
{
  if (!qword_1EB1470F0)
  {
    sub_1A49CE16C(255, &qword_1EB1470F8, sub_1A49CE0C8, sub_1A49CE104);
    sub_1A49CE16C(255, &qword_1EB147110, sub_1A49CE1E8, sub_1A49CE2C0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB1470F0);
    }
  }
}

void sub_1A49CE16C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void))
{
  if (!*a2)
  {
    a3(255);
    a4();
    v6 = sub_1A5247F34();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1A49CE26C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

unint64_t sub_1A49CE2C0()
{
  result = qword_1EB147128;
  if (!qword_1EB147128)
  {
    sub_1A49CE1E8(255);
    sub_1A49CD640(&qword_1EB1289A0, sub_1A411848C, MEMORY[0x1E697BF38]);
    sub_1A49CE3A0(&qword_1EB147130, sub_1A49CE230, sub_1A3F1EC00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB147128);
  }

  return result;
}

uint64_t sub_1A49CE3A0(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void))
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

unint64_t sub_1A49CE424()
{
  result = qword_1EB147138;
  if (!qword_1EB147138)
  {
    sub_1A49D4BF0(255, &qword_1EB1470E8, sub_1A49CDFF8, MEMORY[0x1E697C5D8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB147138);
  }

  return result;
}

uint64_t sub_1A49CE4AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  sub_1A49CCDEC(0);
  v54 = v3;
  v49 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A49D5784(0, &qword_1EB1471E0, sub_1A49CCA20, sub_1A49CCDEC, MEMORY[0x1E697F948]);
  v50 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v45 - v7;
  v51 = sub_1A5249C44();
  v47 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v10 = v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A49CCB24(0);
  v12 = v11;
  v46 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A49CCA20(0);
  v52 = v15;
  v48 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = (a1 + *(type metadata accessor for PhotosDetailsSearchView(0) + 28));
  v19 = v18[3];
  v20 = v18[4];
  __swift_project_boxed_opaque_existential_1(v18, v19);
  v21 = (*(v20 + 32))(v19, v20);
  if (v21)
  {
    v45[2] = v45;
    MEMORY[0x1EEE9AC00](v21);
    v45[-2] = a1;
    sub_1A49CCC94(0);
    v45[1] = v22;
    sub_1A49D4BF0(255, &qword_1EB1470E8, sub_1A49CDFF8, MEMORY[0x1E697C5D8]);
    v24 = v23;
    sub_1A49CCEC4(255);
    v26 = v25;
    v27 = sub_1A49CD58C(&qword_1EB1470D8, sub_1A49CCEC4, sub_1A49CDF68);
    v28 = sub_1A3D5F9DC();
    v55 = v26;
    v56 = MEMORY[0x1E69E6158];
    v57 = v27;
    v58 = v28;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v49 = OpaqueTypeConformance2;
    v30 = sub_1A49CE424();
    v55 = v54;
    v56 = v24;
    v57 = OpaqueTypeConformance2;
    v58 = v30;
    swift_getOpaqueTypeConformance2();
    sub_1A5248474();
    sub_1A5249C34();
    v31 = sub_1A49CD640(&qword_1EB147140, sub_1A49CCB24, MEMORY[0x1E697C0C0]);
    v32 = sub_1A49CD640(&qword_1EB13A710, MEMORY[0x1E697C938], MEMORY[0x1E697C930]);
    v33 = v51;
    sub_1A524A864();
    (*(v47 + 8))(v10, v33);
    (*(v46 + 8))(v14, v12);
    v34 = v48;
    v35 = v52;
    (*(v48 + 16))(v8, v17, v52);
    swift_storeEnumTagMultiPayload();
    v55 = v12;
    v56 = v33;
    v57 = v31;
    v58 = v32;
    swift_getOpaqueTypeConformance2();
    sub_1A5249744();
    return (*(v34 + 8))(v17, v35);
  }

  else
  {
    sub_1A49CEFF0(v5);
    v37 = v49;
    v38 = v54;
    (*(v49 + 16))(v8, v5, v54);
    swift_storeEnumTagMultiPayload();
    v39 = sub_1A49CD640(&qword_1EB147140, sub_1A49CCB24, MEMORY[0x1E697C0C0]);
    v40 = sub_1A49CD640(&qword_1EB13A710, MEMORY[0x1E697C938], MEMORY[0x1E697C930]);
    v55 = v12;
    v56 = v51;
    v57 = v39;
    v58 = v40;
    swift_getOpaqueTypeConformance2();
    sub_1A49CCEC4(255);
    v42 = v41;
    v43 = sub_1A49CD58C(&qword_1EB1470D8, sub_1A49CCEC4, sub_1A49CDF68);
    v44 = sub_1A3D5F9DC();
    v55 = v42;
    v56 = MEMORY[0x1E69E6158];
    v57 = v43;
    v58 = v44;
    swift_getOpaqueTypeConformance2();
    sub_1A5249744();
    return (*(v37 + 8))(v5, v38);
  }
}

uint64_t sub_1A49CEBFC(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void), uint64_t a4)
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

unint64_t sub_1A49CEC6C()
{
  result = qword_1EB147150;
  if (!qword_1EB147150)
  {
    sub_1A49CC9D8(255);
    sub_1A49CCB24(255);
    sub_1A5249C44();
    sub_1A49CD640(&qword_1EB147140, sub_1A49CCB24, MEMORY[0x1E697C0C0]);
    sub_1A49CD640(&qword_1EB13A710, MEMORY[0x1E697C938], MEMORY[0x1E697C930]);
    swift_getOpaqueTypeConformance2();
    sub_1A49CCEC4(255);
    sub_1A49CD58C(&qword_1EB1470D8, sub_1A49CCEC4, sub_1A49CDF68);
    sub_1A3D5F9DC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB147150);
  }

  return result;
}

uint64_t sub_1A49CEE18(uint64_t a1)
{
  sub_1A49CCDEC(0);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A49CEFF0(v6);
  v13 = a1;
  sub_1A49D4BF0(0, &qword_1EB1470E8, sub_1A49CDFF8, MEMORY[0x1E697C5D8]);
  sub_1A49CCEC4(255);
  v8 = v7;
  v9 = sub_1A49CD58C(&qword_1EB1470D8, sub_1A49CCEC4, sub_1A49CDF68);
  v10 = sub_1A3D5F9DC();
  v14 = v8;
  v15 = MEMORY[0x1E69E6158];
  v16 = v9;
  v17 = v10;
  swift_getOpaqueTypeConformance2();
  sub_1A49CE424();
  sub_1A524B0E4();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1A49CEFF0@<X0>(uint64_t a1@<X8>)
{
  v25[1] = a1;
  v3 = sub_1A5249284();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PhotosDetailsSearchView(0);
  v8 = v7 - 8;
  v9 = *(v7 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A49CCEC4(0);
  v13 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v15 = v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v15 = sub_1A5249574();
  *(v15 + 1) = 0;
  v15[16] = 1;
  sub_1A49D4A78(0);
  sub_1A49CFE78(v2, &v15[*(v16 + 44)]);
  sub_1A49D4848(v2, v11, type metadata accessor for PhotosDetailsSearchView);
  v17 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v18 = swift_allocObject();
  sub_1A49D4B10(v11, v18 + v17, type metadata accessor for PhotosDetailsSearchView);
  v19 = &v15[*(v13 + 36)];
  *v19 = sub_1A49D4B78;
  v19[1] = v18;
  v19[2] = 0;
  v19[3] = 0;
  v20 = (v2 + *(v8 + 36));
  v21 = v20[3];
  v22 = v20[4];
  __swift_project_boxed_opaque_existential_1(v20, v21);
  v25[2] = (*(v22 + 8))(v21, v22);
  v25[3] = v23;
  (*(v4 + 104))(v6, *MEMORY[0x1E697C438], v3);
  sub_1A49CD58C(&qword_1EB1470D8, sub_1A49CCEC4, sub_1A49CDF68);
  sub_1A3D5F9DC();
  sub_1A524ACF4();
  (*(v4 + 8))(v6, v3);

  return sub_1A49D4B90(v15, sub_1A49CCEC4);
}

uint64_t sub_1A49CF328@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19[1] = a2;
  sub_1A49CDFF8(0);
  v19[0] = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A49CE16C(0, &qword_1EB147110, sub_1A49CE1E8, sub_1A49CE2C0);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v19 - v9;
  v11 = sub_1A52498B4();
  MEMORY[0x1EEE9AC00](v11 - 8);
  sub_1A49CE16C(0, &qword_1EB1470F8, sub_1A49CE0C8, sub_1A49CE104);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v19 - v15;
  sub_1A5249824();
  v19[8] = a1;
  sub_1A49CE0C8(0);
  sub_1A49CE104();
  sub_1A5247F24();
  sub_1A5249834();
  v19[4] = a1;
  sub_1A49CE1E8(0);
  sub_1A49CE2C0();
  sub_1A5247F24();
  v17 = *(v19[0] + 48);
  (*(v14 + 16))(v5, v16, v13);
  (*(v8 + 16))(&v5[v17], v10, v7);
  sub_1A52495D4();
  (*(v8 + 8))(v10, v7);
  return (*(v14 + 8))(v16, v13);
}

uint64_t sub_1A49CF664(uint64_t a1)
{
  sub_1A49CD278(0, &qword_1EB1471F8, sub_1A3D6DF58, MEMORY[0x1E6981E70], MEMORY[0x1E697F948]);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v17 - v3;
  v5 = sub_1A5247B54();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3D6DF58(0);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = (a1 + *(type metadata accessor for PhotosDetailsSearchView(0) + 32));
  v14 = *v13;
  if (*v13)
  {
    v15 = v13[1];

    sub_1A5247B34();

    MEMORY[0x1A5906A80](v7, v14, v15);
    (*(v10 + 16))(v4, v12, v9);
    swift_storeEnumTagMultiPayload();
    sub_1A49CE138();
    sub_1A5249744();
    sub_1A3C784D4(v14, v15);
    return (*(v10 + 8))(v12, v9);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_1A49CE138();
    return sub_1A5249744();
  }
}

uint64_t sub_1A49CF8E8@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v22[5] = a2;
  sub_1A49CD278(0, &qword_1EB1471E8, sub_1A3F1EA2C, MEMORY[0x1E6981E70], MEMORY[0x1E697F948]);
  MEMORY[0x1EEE9AC00](v4);
  v22[3] = v22 - v5;
  sub_1A3F1EA2C(0);
  v22[2] = v6;
  MEMORY[0x1EEE9AC00](v6);
  sub_1A49CE230(0);
  v22[4] = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A49D5784(0, &qword_1EB1471F0, sub_1A411848C, sub_1A49CE230, MEMORY[0x1E697F948]);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v13 = v22 - v12;
  sub_1A411848C();
  v15 = v14;
  v16 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v18 = v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    sub_1A5248074();
    (*(v16 + 16))(v13, v18, v15);
    swift_storeEnumTagMultiPayload();
    sub_1A49CD640(&qword_1EB1289A0, sub_1A411848C, MEMORY[0x1E697BF38]);
    sub_1A49CE3A0(&qword_1EB147130, sub_1A49CE230, sub_1A3F1EC00);
    sub_1A5249744();
    return (*(v16 + 8))(v18, v15);
  }

  else
  {
    v22[1] = v11;
    v20 = (v2 + *(type metadata accessor for PhotosDetailsSearchView(0) + 36));
    v21 = v20[1];
    if (v21)
    {
      v23 = *v20;
      v24 = v21;
      sub_1A49D4A28(v23, v21);
      sub_1A3D5F9DC();
      v22[0] = v9;
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    swift_storeEnumTagMultiPayload();
    sub_1A3F1EC00();
    sub_1A5249744();
    sub_1A49D4848(v9, v13, sub_1A49CE230);
    swift_storeEnumTagMultiPayload();
    sub_1A49CD640(&qword_1EB1289A0, sub_1A411848C, MEMORY[0x1E697BF38]);
    sub_1A49CE3A0(&qword_1EB147130, sub_1A49CE230, sub_1A3F1EC00);
    sub_1A5249744();
    return sub_1A49D48B0(v9, sub_1A49CE230);
  }
}

uint64_t sub_1A49CFE78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v117 = a2;
  *(&v105 + 1) = sub_1A52484F4();
  v98 = *(*(&v105 + 1) - 8);
  MEMORY[0x1EEE9AC00](*(&v105 + 1));
  v97 = &v93 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A49CD75C(0);
  *&v105 = v4;
  v96 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v95 = &v93 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A49CD688(0);
  v106 = v6;
  v100 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v99 = &v93 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A49CD190(0, &qword_1EB147210, MEMORY[0x1E697F948]);
  v114 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v116 = (&v93 - v9);
  sub_1A49D5784(0, &qword_1EB147218, sub_1A49CD23C, sub_1A49CD688, MEMORY[0x1E697F948]);
  v101 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v103 = &v93 - v11;
  sub_1A49D5784(0, &qword_1EB146FE0, sub_1A49CD23C, sub_1A49CD688, MEMORY[0x1E697F960]);
  v112 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v104 = &v93 - v13;
  sub_1A49CD23C(0);
  v102 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v94 = &v93 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A49CD190(0, &qword_1EB146FD8, MEMORY[0x1E697F960]);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v115 = &v93 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v113 = &v93 - v19;
  v20 = type metadata accessor for PhotosDetailsSearchView(0);
  v109 = *(v20 - 1);
  v108 = *(v109 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v107 = &v93 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A49CD278(0, &qword_1EB146FB8, sub_1A49CD020, MEMORY[0x1E697E5E0], MEMORY[0x1E697E830]);
  v110 = v22 - 8;
  MEMORY[0x1EEE9AC00](v22 - 8);
  v111 = &v93 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v123 = &v93 - v25;
  v26 = (a1 + v20[5]);
  v27 = *v26;
  v119 = v26[1];
  v120 = v27;
  v118 = v26[2];
  *&v124 = v27;
  *(&v124 + 1) = v119;
  *&v125 = v118;
  sub_1A49D5B6C(0, &unk_1EB13A670, MEMORY[0x1E69E6158], MEMORY[0x1E6981790]);
  v122 = v28;
  sub_1A524B6C4();
  v29 = v132;
  v30 = v133;
  v31 = v20[7];
  v121 = v20;
  v33 = *(a1 + v31 + 24);
  v32 = *(a1 + v31 + 32);
  __swift_project_boxed_opaque_existential_1((a1 + v31), v33);
  v34 = (*(v32 + 16))(v33, v32);
  sub_1A4814FC8(v29, *(&v29 + 1), v30, *(&v30 + 1), v34, v35, *(a1 + v20[10]), v130);
  v36 = v107;
  sub_1A49D4848(a1, v107, type metadata accessor for PhotosDetailsSearchView);
  v37 = (*(v109 + 80) + 16) & ~*(v109 + 80);
  v38 = swift_allocObject();
  sub_1A49D4B10(v36, v38 + v37, type metadata accessor for PhotosDetailsSearchView);
  v124 = v130[0];
  v125 = v130[1];
  v126 = v130[2];
  *&v127 = v131;
  *(&v127 + 1) = sub_1A49D4EAC;
  v128 = v38;
  v129 = 0;
  *&v132 = v120;
  *(&v132 + 1) = v119;
  *&v133 = v118;
  sub_1A524B6A4();
  sub_1A49D4848(a1, v36, type metadata accessor for PhotosDetailsSearchView);
  v39 = swift_allocObject();
  v40 = a1;
  v41 = v123;
  sub_1A49D4B10(v36, v39 + v37, type metadata accessor for PhotosDetailsSearchView);
  v42 = MEMORY[0x1E69805D8];
  sub_1A49CE26C(0, &qword_1EB146FC8, &type metadata for PhotosDetailsSearchBar, MEMORY[0x1E69805D8], MEMORY[0x1E697E830]);
  sub_1A49CD0E4();
  sub_1A524B144();

  v134 = v126;
  v135 = v127;
  v136 = v128;
  v137 = v129;
  v132 = v124;
  v133 = v125;
  v43 = v121;
  sub_1A49D4FA8(&v132, &qword_1EB146FC8, &type metadata for PhotosDetailsSearchBar, v42);
  v44 = sub_1A524A054();
  v45 = v41 + *(v110 + 44);
  *v45 = v44;
  *(v45 + 8) = 0u;
  *(v45 + 24) = 0u;
  *(v45 + 40) = 1;
  v46 = (a1 + v43[6]);
  v48 = *v46;
  v47 = v46[1];
  *&v124 = v48;
  *(&v124 + 1) = v47;
  sub_1A49D4658(0);
  sub_1A524B6A4();
  v49 = *(v138 + 16);

  if (!v49 && (v65 = (a1 + v43[5]), v66 = *v65, v67 = v65[1], v68 = v65[2], *&v124 = *v65, *(&v124 + 1) = v67, *&v125 = v68, sub_1A524B6A4(), v69 = sub_1A524C7A4(), , v69 >= 1) && (v70 = (v40 + v43[7]), v71 = v70[3], v72 = v70[4], __swift_project_boxed_opaque_existential_1(v70, v71), v73 = v71, v43 = v121, (*(v72 + 24))(v73, v72), v74) && (, v75 = v70[3], v76 = v70[4], __swift_project_boxed_opaque_existential_1(v70, v75), *&v124 = v66, *(&v124 + 1) = v67, *&v125 = v68, sub_1A524B6A4(), v77 = v75, v43 = v121, (*(v76 + 40))(v138, v139, v77, v76), v79 = v78, , v79) && (, v80 = v40 + v43[12], v81 = *v80, v82 = *(v80 + 8), LOBYTE(v124) = v81, *(&v124 + 1) = v82, sub_1A49D5B6C(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]), sub_1A524B6A4(), v138 == 1))
  {
    *&v124 = v120;
    *(&v124 + 1) = v119;
    *&v125 = v118;
    sub_1A524B6A4();
    v83 = v94;
    sub_1A49D10B0(v138, v139);

    sub_1A49D4848(v83, v103, sub_1A49CD23C);
    swift_storeEnumTagMultiPayload();
    sub_1A49CE3A0(&qword_1EB147228, sub_1A49CD23C, sub_1A49D518C);
    v84 = sub_1A49CD640(&qword_1EB1470C8, sub_1A49CD75C, MEMORY[0x1E697CD20]);
    v124 = v105;
    *&v125 = v84;
    *(&v125 + 1) = MEMORY[0x1E697C0D8];
    swift_getOpaqueTypeConformance2();
    v85 = v104;
    sub_1A5249744();
    sub_1A3D31350(v85, v116);
    swift_storeEnumTagMultiPayload();
    sub_1A49D5018();
    v64 = v113;
    sub_1A5249744();
    sub_1A3D313F8(v85);
    sub_1A49D48B0(v83, sub_1A49CD23C);
  }

  else
  {
    v50 = (v40 + v43[6]);
    v52 = *v50;
    v51 = v50[1];
    *&v124 = v52;
    *(&v124 + 1) = v51;
    sub_1A524B6A4();
    v53 = *(v138 + 16);

    if (v53)
    {
      MEMORY[0x1EEE9AC00](v54);
      *(&v93 - 2) = v40;
      sub_1A49CD820(0);
      sub_1A49CEBFC(&qword_1EB147090, sub_1A49CD820, sub_1A49CDC04, MEMORY[0x1E69819D0]);
      v55 = v95;
      sub_1A524A2C4();
      v56 = v97;
      sub_1A52484E4();
      v57 = sub_1A49CD640(&qword_1EB1470C8, sub_1A49CD75C, MEMORY[0x1E697CD20]);
      v58 = MEMORY[0x1E697C0D8];
      v59 = v99;
      v60 = v105;
      sub_1A524B1E4();
      (*(v98 + 8))(v56, *(&v60 + 1));
      (*(v96 + 8))(v55, v60);
      v61 = v100;
      v62 = v106;
      (*(v100 + 16))(v103, v59, v106);
      swift_storeEnumTagMultiPayload();
      sub_1A49CE3A0(&qword_1EB147228, sub_1A49CD23C, sub_1A49D518C);
      v124 = v60;
      *&v125 = v57;
      *(&v125 + 1) = v58;
      swift_getOpaqueTypeConformance2();
      v63 = v104;
      sub_1A5249744();
      sub_1A3D31350(v63, v116);
      swift_storeEnumTagMultiPayload();
      sub_1A49D5018();
      v64 = v113;
      sub_1A5249744();
      sub_1A3D313F8(v63);
      (*(v61 + 8))(v59, v62);
    }

    else
    {
      v86 = v116;
      *v116 = 0;
      *(v86 + 8) = 1;
      swift_storeEnumTagMultiPayload();
      sub_1A49D5018();
      v64 = v113;
      sub_1A5249744();
    }
  }

  v87 = v123;
  v88 = v111;
  sub_1A3D31128(v123, v111);
  v89 = v115;
  sub_1A3D311C4(v64, v115);
  v90 = v117;
  sub_1A3D31128(v88, v117);
  sub_1A49CCF5C(0);
  sub_1A3D311C4(v89, v90 + *(v91 + 48));
  sub_1A3D31244(v64);
  sub_1A3D312BC(v87);
  sub_1A3D31244(v89);
  return sub_1A3D312BC(v88);
}

void sub_1A49D0D1C(uint64_t a1)
{
  v2 = type metadata accessor for PhotosDetailsSearchView(0);
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (a1 + *(v3 + 28));
  v7 = *v6;
  v8 = *(v6 + 2);
  v15 = v7;
  v16 = v8;
  sub_1A49D5B6C(0, &unk_1EB13A670, MEMORY[0x1E69E6158], MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  v9 = v14[1];
  v10 = v14[2];
  __swift_project_boxed_opaque_existential_1((a1 + *(v3 + 36)), *(a1 + *(v3 + 36) + 24));
  sub_1A49D4848(a1, v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PhotosDetailsSearchView);
  v11 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v12 = swift_allocObject();
  sub_1A49D4B10(v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11, type metadata accessor for PhotosDetailsSearchView);
  v13 = (v12 + ((v5 + v11 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v13 = v9;
  v13[1] = v10;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A49D0F14(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotosDetailsSearchView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = *a1;
  v8 = a1[1];
  __swift_project_boxed_opaque_existential_1((a2 + *(v9 + 36)), *(a2 + *(v9 + 36) + 24));
  sub_1A49D4848(a2, &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PhotosDetailsSearchView);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  sub_1A49D4B10(&v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, type metadata accessor for PhotosDetailsSearchView);
  v12 = (v11 + ((v6 + v10 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v12 = v7;
  v12[1] = v8;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A49D10B0(uint64_t a1, uint64_t a2)
{
  sub_1A49CD278(0, &qword_1EB147238, sub_1A49CD2E4, MEMORY[0x1E6981E70], MEMORY[0x1E697F948]);
  MEMORY[0x1EEE9AC00](v5);
  sub_1A49CD2E4(0);
  MEMORY[0x1EEE9AC00](v6);
  v7 = (v3 + *(type metadata accessor for PhotosDetailsSearchView(0) + 28));
  v8 = v7[3];
  v9 = v7[4];
  __swift_project_boxed_opaque_existential_1(v7, v8);
  (*(v9 + 24))(v8, v9);
  if (v10)
  {
    v12 = v7[3];
    v11 = v7[4];
    __swift_project_boxed_opaque_existential_1(v7, v12);
    (*(v11 + 40))(a1, a2, v12, v11);
    if (v13)
    {
      sub_1A3C71318(0, &qword_1EB12B110, &qword_1EB12B100, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_1A52F8E10;
      *(v14 + 56) = MEMORY[0x1E69E6158];
      *(v14 + 64) = sub_1A3D710E8();
      *(v14 + 32) = a1;
      *(v14 + 40) = a2;
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }

  swift_storeEnumTagMultiPayload();
  sub_1A49D518C();
  return sub_1A5249744();
}

uint64_t sub_1A49D149C(uint64_t a1)
{
  v2 = type metadata accessor for PhotosDetailsSearchView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = (a1 + *(v5 + 32));
  v8 = *v6;
  v7 = v6[1];
  v12[2] = v8;
  v12[3] = v7;
  sub_1A49D4658(0);
  sub_1A524B6A4();
  swift_getKeyPath();
  sub_1A49D4848(a1, v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PhotosDetailsSearchView);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  sub_1A49D4B10(v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for PhotosDetailsSearchView);
  sub_1A49D5B6C(0, &qword_1EB146F58, &type metadata for PhotosDetailsSearchViewResultSection, MEMORY[0x1E69E62F8]);
  sub_1A49D5784(0, &qword_1EB147048, sub_1A49CD920, sub_1A49CD9E4, MEMORY[0x1E697F960]);
  sub_1A49CDB88();
  sub_1A49CDC04();
  return sub_1A524B9B4();
}

void sub_1A49D16B0(__int128 *a1@<X0>, void (*a2)(uint64_t, uint64_t, __n128)@<X1>, uint64_t a3@<X8>)
{
  v36 = a2;
  v39 = a3;
  sub_1A49CDB20(0);
  KeyPath = v4;
  v33[10] = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v33[9] = v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1E697F948];
  sub_1A49D5784(0, &qword_1EB147240, sub_1A49CD968, sub_1A49CDB20, MEMORY[0x1E697F948]);
  v33[12] = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v33 - v8;
  sub_1A49CD968(0);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v33[11] = v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A49CD920(0);
  v38 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v33[13] = v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A49D5784(0, &qword_1EB147248, sub_1A49CD920, sub_1A49CD9E4, v6);
  v16 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v18 = v33 - v17;
  v19 = type metadata accessor for PhotosDetailsSearchView(0);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  sub_1A49CD9E4(0);
  v23 = v22;
  MEMORY[0x1EEE9AC00](v22);
  MEMORY[0x1EEE9AC00](v24);
  v27 = a1[1];
  v42 = *a1;
  v43 = v27;
  v44 = *(a1 + 4);
  v37 = v16;
  v35 = v28;
  if (*(&v27 + 1))
  {
    v33[1] = v20;
    v33[2] = v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
    v33[3] = v26;
    v33[4] = v33 - v25;
    v33[5] = v11;
    v33[6] = v9;
    v33[7] = v23;
    v33[8] = v18;
    objc_opt_self();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v45 = v44;
  v41 = v44;
  KeyPath = swift_getKeyPath();
  sub_1A49D4848(v36, v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PhotosDetailsSearchView);
  v40 = v42;
  v29 = (*(v20 + 80) + 16) & ~*(v20 + 80);
  v30 = swift_allocObject();
  sub_1A49D4B10(v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), v30 + v29, type metadata accessor for PhotosDetailsSearchView);
  v31 = v30 + ((v21 + v29 + 7) & 0xFFFFFFFFFFFFFFF8);
  v32 = v43;
  *v31 = v42;
  *(v31 + 16) = v32;
  *(v31 + 32) = v44;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A49D248C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 8))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

void sub_1A49D24E4(__int128 *a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotosDetailsSearchView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v15 = *(a1 + 4);
  v12[3] = v15;
  swift_getKeyPath();
  sub_1A49D4848(a2, v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PhotosDetailsSearchView);
  v7 = *a1;
  v13 = a1[1];
  v14 = v7;
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_1A49D4B10(v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for PhotosDetailsSearchView);
  v10 = v9 + ((v6 + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
  v11 = a1[1];
  *v10 = *a1;
  *(v10 + 16) = v11;
  *(v10 + 32) = *(a1 + 4);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

double sub_1A49D271C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v26 = a7;
  v13 = type metadata accessor for PhotosDetailsSearchView(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  sub_1A3C341C8(a1, v31);
  sub_1A49D4848(a2, &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PhotosDetailsSearchView);
  sub_1A3C341C8(a1, v30);
  v16 = *a3;
  v33 = a3[1];
  v34 = v16;
  v32 = *(a3 + 4);
  v17 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v18 = (v15 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  sub_1A49D4B10(&v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v17, type metadata accessor for PhotosDetailsSearchView);
  sub_1A3C34460(v30, v19 + v18);
  v20 = v19 + ((v18 + 47) & 0xFFFFFFFFFFFFFFF8);
  v21 = a3[1];
  *v20 = *a3;
  *(v20 + 16) = v21;
  *(v20 + 32) = *(a3 + 4);
  sub_1A3C341C8(v31, &v28);
  sub_1A3F30668(&v34, v27);
  sub_1A49CC710(&v33, v27, &qword_1EB126FA0, MEMORY[0x1E69E6158]);
  sub_1A49D2F3C(&v32, v27, &qword_1EB147070, MEMORY[0x1E69E62F8]);
  sub_1A3C34400(0, &qword_1EB12DDB8, &protocol descriptor for PhotosDetailsSearchViewResult);
  sub_1A524B694();
  __swift_destroy_boxed_opaque_existential_0(v31);
  v22 = swift_allocObject();
  *(v22 + 16) = a6;
  *(v22 + 24) = v19;
  v27[0] = v26;
  v27[1] = v22;
  sub_1A3C3637C();
  sub_1A524B694();
  v23 = v29;
  result = *&v28;
  *(a8 + 48) = v28;
  *(a8 + 64) = v23;
  return result;
}

uint64_t sub_1A49D2990(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A52489C4();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1A3EBE398(0);
  v8 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = (a1 + *(type metadata accessor for PhotosDetailsSearchView(0) + 28));
  v12 = v11[3];
  v13 = v11[4];
  __swift_project_boxed_opaque_existential_1(v11, v12);
  (*(v13 + 56))(a1, a2, a3, v12, v13);
  sub_1A49CC4B4(v10);
  MEMORY[0x1A5906C60](v8);
  sub_1A52489B4();
  sub_1A524B904();
  return sub_1A49D48B0(v10, sub_1A3EBE398);
}

void sub_1A49D2B00(uint64_t a1)
{
  sub_1A49D4BF0(0, &qword_1EB147208, type metadata accessor for PhotosDetailsTimeZoneSearchDataSource, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v17[-v3];
  v5 = type metadata accessor for PhotosDetailsSearchView(0);
  sub_1A3C341C8(a1 + *(v5 + 28), v18);
  sub_1A3C34400(0, &qword_1EB1471C8, &protocol descriptor for PhotosDetailsSearchViewDataSource);
  v6 = type metadata accessor for PhotosDetailsTimeZoneSearchDataSource(0);
  v7 = swift_dynamicCast();
  v8 = *(*(v6 - 8) + 56);
  if (v7)
  {
    v8(v4, 0, 1, v6);
    sub_1A49D47E8(v4, &qword_1EB147208, type metadata accessor for PhotosDetailsTimeZoneSearchDataSource, MEMORY[0x1E69E6720], sub_1A49D4BF0);
    v9 = objc_opt_self();
    v10 = sub_1A524C634();
    sub_1A3F37DA4(0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1A52F8E10;
    *(inited + 32) = sub_1A524C674();
    *(inited + 40) = v12;
    v18[3] = v5;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v18);
    sub_1A49D4848(a1, boxed_opaque_existential_1, type metadata accessor for PhotosDetailsSearchView);
    String.init(forType:)(v18);
    v14 = sub_1A524C634();

    *(inited + 48) = v14;
    sub_1A3E75770(inited);
    swift_setDeallocating();
    sub_1A49D47E8(inited + 32, &qword_1EB126F80, sub_1A3C7B6A4, MEMORY[0x1E69E6158], sub_1A49D4C54);
    sub_1A3C7B6A4(0, v15);
    v16 = sub_1A524C3D4();

    [v9 sendEvent:v10 withPayload:v16];
  }

  else
  {
    v8(v4, 1, 1, v6);
    sub_1A49D47E8(v4, &qword_1EB147208, type metadata accessor for PhotosDetailsTimeZoneSearchDataSource, MEMORY[0x1E69E6720], sub_1A49D4BF0);
  }
}

void sub_1A49D2E54(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  type metadata accessor for PhotosDetailsSearchView(0);
  sub_1A49D5B6C(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  sub_1A524B6B4();
  sub_1A49D4658(0);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A49D2F3C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  sub_1A3C71318(0, a3, &qword_1EB12DDB8, &protocol descriptor for PhotosDetailsSearchViewResult, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

double sub_1A49D2FBC@<D0>(uint64_t a2@<X8>)
{
  v3 = sub_1A5249314();
  v32 = 1;
  sub_1A49D38B0(&v16);
  v45 = v28;
  v46 = v29;
  v47[0] = *v30;
  *(v47 + 9) = *&v30[9];
  v41 = v24;
  v42 = v25;
  v43 = v26;
  v44 = v27;
  v37 = v20;
  v38 = v21;
  v39 = v22;
  v40 = v23;
  v33 = v16;
  v34 = v17;
  v35 = v18;
  v36 = v19;
  v48[12] = v28;
  v48[13] = v29;
  v49[0] = *v30;
  *(v49 + 9) = *&v30[9];
  v48[8] = v24;
  v48[9] = v25;
  v48[10] = v26;
  v48[11] = v27;
  v48[4] = v20;
  v48[5] = v21;
  v48[6] = v22;
  v48[7] = v23;
  v48[0] = v16;
  v48[1] = v17;
  v48[2] = v18;
  v48[3] = v19;
  v4 = MEMORY[0x1E6981F40];
  sub_1A49D4778(&v33, &v15, &qword_1EB147170, sub_1A49D33B0, MEMORY[0x1E6981F40]);
  sub_1A49D47E8(v48, &qword_1EB147170, sub_1A49D33B0, v4, sub_1A49D4BF0);
  *(&v31[12] + 7) = v45;
  *(&v31[13] + 7) = v46;
  *(&v31[14] + 7) = v47[0];
  v31[15] = *(v47 + 9);
  *(&v31[8] + 7) = v41;
  *(&v31[9] + 7) = v42;
  *(&v31[10] + 7) = v43;
  *(&v31[11] + 7) = v44;
  *(&v31[4] + 7) = v37;
  *(&v31[5] + 7) = v38;
  *(&v31[6] + 7) = v39;
  *(&v31[7] + 7) = v40;
  *(v31 + 7) = v33;
  *(&v31[1] + 7) = v34;
  *(&v31[2] + 7) = v35;
  *(&v31[3] + 7) = v36;
  v5 = v31[13];
  *(a2 + 209) = v31[12];
  *(a2 + 225) = v5;
  v6 = v31[15];
  *(a2 + 241) = v31[14];
  *(a2 + 257) = v6;
  v7 = v31[9];
  *(a2 + 145) = v31[8];
  *(a2 + 161) = v7;
  v8 = v31[11];
  *(a2 + 177) = v31[10];
  *(a2 + 193) = v8;
  v9 = v31[5];
  *(a2 + 81) = v31[4];
  *(a2 + 97) = v9;
  v10 = v31[7];
  *(a2 + 113) = v31[6];
  *(a2 + 129) = v10;
  v11 = v31[1];
  *(a2 + 17) = v31[0];
  *(a2 + 33) = v11;
  result = *&v31[2];
  v13 = v31[3];
  *(a2 + 49) = v31[2];
  v14 = v32;
  *a2 = v3;
  *(a2 + 8) = 0;
  *(a2 + 16) = v14;
  *(a2 + 65) = v13;
  return result;
}

void sub_1A49D331C(uint64_t a1)
{
  if (!qword_1EB147168)
  {
    sub_1A49D4BF0(255, &qword_1EB147170, sub_1A49D33B0, MEMORY[0x1E6981F40]);
    sub_1A49D380C();
    v1 = sub_1A524B784();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB147168);
    }
  }
}

void sub_1A49D33B0(uint64_t a1)
{
  if (!qword_1EB147178)
  {
    sub_1A49D3420(255);
    sub_1A49D3508(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB147178);
    }
  }
}

void sub_1A49D3420(uint64_t a1)
{
  if (!qword_1EB141510)
  {
    sub_1A49D3710(255, &qword_1EB1236C0, &qword_1EB128560, sub_1A3EC18C4, MEMORY[0x1E6981748]);
    v1 = sub_1A524DF24();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB141510);
    }
  }
}

void sub_1A49D34A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void sub_1A49D3508(uint64_t a1)
{
  if (!qword_1EB147180)
  {
    sub_1A49D35A0(255, &qword_1EB147188, &qword_1EB147190, sub_1A49D3628, sub_1A49D3784);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB147180);
    }
  }
}

void sub_1A49D35A0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(void))
{
  if (!*a2)
  {
    sub_1A49D4BF0(255, a3, a4, MEMORY[0x1E6981F40]);
    a5();
    v7 = sub_1A524B894();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1A49D3628(uint64_t a1)
{
  if (!qword_1EB147198)
  {
    sub_1A49D368C(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB147198);
    }
  }
}

void sub_1A49D368C(uint64_t a1)
{
  if (!qword_1EB1471A0)
  {
    sub_1A49D3710(255, &qword_1EB1283A8, &qword_1EB1286C0, sub_1A3EBB1B4, MEMORY[0x1E6981148]);
    v1 = sub_1A524DF24();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1471A0);
    }
  }
}

void sub_1A49D3710(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  if (!*a2)
  {
    sub_1A49D34A4(255, a3, a4, a5);
    sub_1A3D6D248(255);
    v6 = sub_1A5248804();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_1A49D3784()
{
  result = qword_1EB1471A8;
  if (!qword_1EB1471A8)
  {
    sub_1A49D4BF0(255, &qword_1EB147190, sub_1A49D3628, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1471A8);
  }

  return result;
}

unint64_t sub_1A49D380C()
{
  result = qword_1EB1471B0;
  if (!qword_1EB1471B0)
  {
    sub_1A49D4BF0(255, &qword_1EB147170, sub_1A49D33B0, MEMORY[0x1E6981F40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1471B0);
  }

  return result;
}

double sub_1A49D38B0@<D0>(uint64_t a1@<X8>)
{
  v91 = a1;
  sub_1A49D4BF0(0, &unk_1EB1276B0, MEMORY[0x1E6980E30], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v87 - v2;
  sub_1A3C71318(0, &qword_1EB147158, &qword_1EB12DDB8, &protocol descriptor for PhotosDetailsSearchViewResult, MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  v4 = *&v139[8];
  v5 = *&v139[16];
  __swift_project_boxed_opaque_existential_1(&v137, *&v139[8]);
  v102 = (*(v5 + 32))(v4, v5);
  if (v102)
  {
    v6 = sub_1A524A154();
    (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
    v101 = sub_1A524A1B4();
    sub_1A49D47E8(v3, &unk_1EB1276B0, MEMORY[0x1E6980E30], MEMORY[0x1E69E6720], sub_1A49D4BF0);
    KeyPath = swift_getKeyPath();
    __swift_destroy_boxed_opaque_existential_0(&v137);
    sub_1A524B6A4();
    v7 = *&v139[8];
    v8 = *&v139[16];
    __swift_project_boxed_opaque_existential_1(&v137, *&v139[8]);
    v99 = (*(v8 + 40))(v7, v8);
    v98 = swift_getKeyPath();
    __swift_destroy_boxed_opaque_existential_0(&v137);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(&v137);
    KeyPath = 0;
    v101 = 0;
    v98 = 0;
    v99 = 0;
  }

  v97 = sub_1A5249584();
  v111 = 1;
  sub_1A524B6A4();
  v9 = *&v139[8];
  v10 = *&v139[16];
  __swift_project_boxed_opaque_existential_1(&v137, *&v139[8]);
  v11 = (*(v10 + 16))(v9, v10);
  v13 = v12;
  __swift_destroy_boxed_opaque_existential_0(&v137);
  v14 = HIBYTE(v13) & 0xF;
  if ((v13 & 0x2000000000000000) == 0)
  {
    v14 = v11 & 0xFFFFFFFFFFFFLL;
  }

  if (v14)
  {
    v137 = v11;
    v138 = v13;
    sub_1A3D5F9DC();
    v15 = sub_1A524A464();
    v17 = v16;
    v19 = v18;
    v20 = sub_1A524A3A4();
    v95 = v21;
    v96 = v20;
    v23 = v22;
    v94 = v24;
    sub_1A3E04DF4(v15, v17, v19 & 1);

    v93 = swift_getKeyPath();
    v92 = sub_1A524B484();
    v25 = swift_getKeyPath();
    LOBYTE(v137) = v23 & 1;
    LOBYTE(v131) = 0;
    v103 = v23 & 1;
    v104 = v25;
    v90 = 0;
    v89 = 1;
  }

  else
  {

    v95 = 0;
    v96 = 0;
    v93 = 0;
    v94 = 0;
    v89 = 0;
    v90 = 0;
    v103 = 0;
    v104 = 0;
    v92 = 0;
  }

  sub_1A524B6A4();
  v26 = *&v139[8];
  v27 = *&v139[16];
  __swift_project_boxed_opaque_existential_1(&v137, *&v139[8]);
  v28 = (*(v27 + 24))(v26, v27);
  v30 = v29;
  if (!v29)
  {
    __swift_destroy_boxed_opaque_existential_0(&v137);
    v48 = 0;
    v47 = 0;
    v46 = 0;
LABEL_16:
    v50 = 0;
    v45 = 0;
    v44 = 0;
    v49 = 0;
    goto LABEL_17;
  }

  v31 = v28;
  __swift_destroy_boxed_opaque_existential_0(&v137);
  v32 = HIBYTE(v30) & 0xF;
  if ((v30 & 0x2000000000000000) == 0)
  {
    v32 = v31 & 0xFFFFFFFFFFFFLL;
  }

  if (!v32)
  {

    v48 = 0;
    v47 = 0;
    v46 = 0;
    v30 = 0;
    goto LABEL_16;
  }

  v137 = v31;
  v138 = v30;
  sub_1A3D5F9DC();
  v33 = sub_1A524A464();
  v35 = v34;
  v37 = v36;
  sub_1A524A224();
  v38 = sub_1A524A3C4();
  v40 = v39;
  v88 = v41;
  v43 = v42;

  sub_1A3E04DF4(v33, v35, v37 & 1);

  v30 = swift_getKeyPath();
  v44 = sub_1A524B4A4();
  v45 = swift_getKeyPath();
  v46 = v43;
  v47 = v40;
  v48 = v38;
  LOBYTE(v137) = v88 & 1;
  LOBYTE(v131) = 0;
  v49 = v88 & 1;
  v50 = 1;
LABEL_17:
  v52 = v95;
  v51 = v96;
  *&v122 = v96;
  *(&v122 + 1) = v95;
  *&v123 = v103;
  v54 = v93;
  v53 = v94;
  *(&v123 + 1) = v94;
  *&v124 = v93;
  v56 = v89;
  v55 = v90;
  *(&v124 + 1) = v89;
  *&v125 = v90;
  *(&v125 + 1) = v104;
  v57 = v92;
  *&v126 = v92;
  v154 = v124;
  v155 = v125;
  v152 = v122;
  v153 = v123;
  *&v105 = v48;
  *(&v105 + 1) = v47;
  *&v106 = v49;
  *(&v106 + 1) = v46;
  *&v107 = v30;
  *(&v107 + 1) = v50;
  *&v108 = 0;
  *(&v108 + 1) = v45;
  v109 = v44;
  *&v156[8] = v105;
  *v156 = v92;
  *&v156[72] = v44;
  *&v156[56] = v108;
  *&v156[40] = v107;
  *&v156[24] = v106;
  v131 = v48;
  v132 = v47;
  *&v133[0] = v49;
  *(&v133[0] + 1) = v46;
  *&v133[1] = v30;
  *(&v133[1] + 1) = v50;
  *&v133[2] = 0;
  *(&v133[2] + 1) = v45;
  *&v133[3] = v44;
  sub_1A49D4848(&v122, &v137, sub_1A49D368C);
  sub_1A49D4848(&v105, &v137, sub_1A49D368C);
  sub_1A49D48B0(&v131, sub_1A49D368C);
  v137 = v51;
  v138 = v52;
  *v139 = v103;
  *&v139[8] = v53;
  *&v139[16] = v54;
  *&v139[24] = v56;
  *&v139[32] = v55;
  *&v139[40] = v104;
  *&v139[48] = v57;
  sub_1A49D48B0(&v137, sub_1A49D368C);
  v119 = *&v156[32];
  v120 = *&v156[48];
  v121 = *&v156[64];
  v115 = v154;
  v116 = v155;
  v117 = *v156;
  v118 = *&v156[16];
  v113 = v152;
  v114 = v153;
  v128 = *&v156[32];
  v129 = *&v156[48];
  v130 = *&v156[64];
  v124 = v154;
  v125 = v155;
  v126 = *v156;
  v127 = *&v156[16];
  v122 = v152;
  v123 = v153;
  v58 = MEMORY[0x1E6981F40];
  sub_1A49D4778(&v113, &v137, &qword_1EB147190, sub_1A49D3628, MEMORY[0x1E6981F40]);
  sub_1A49D47E8(&v122, &qword_1EB147190, sub_1A49D3628, v58, sub_1A49D4BF0);
  *&v110[87] = v118;
  *&v110[103] = v119;
  *&v110[119] = v120;
  *&v110[135] = v121;
  *&v110[23] = v114;
  *&v110[39] = v115;
  *&v110[55] = v116;
  *&v110[71] = v117;
  *&v110[7] = v113;
  LOBYTE(v53) = v111;
  v59 = sub_1A524A064();
  sub_1A5247BC4();
  v60 = v97;
  v131 = v97;
  v132 = 0;
  LOBYTE(v133[0]) = v53;
  v61 = *&v110[80];
  *(&v133[6] + 1) = *&v110[96];
  v62 = *&v110[96];
  *(&v133[7] + 1) = *&v110[112];
  v63 = *&v110[112];
  *(&v133[8] + 1) = *&v110[128];
  *&v133[9] = *&v110[143];
  v64 = *&v110[16];
  *(&v133[2] + 1) = *&v110[32];
  v65 = *&v110[32];
  *(&v133[3] + 1) = *&v110[48];
  v66 = *&v110[48];
  *(&v133[4] + 1) = *&v110[64];
  v67 = *&v110[64];
  *(&v133[5] + 1) = *&v110[80];
  *(v133 + 1) = *v110;
  v68 = *v110;
  *(&v133[1] + 1) = *&v110[16];
  BYTE8(v133[9]) = v59;
  HIDWORD(v133[9]) = *&v112[3];
  *(&v133[9] + 9) = *v112;
  *&v134 = v69;
  *(&v134 + 1) = v70;
  *&v135 = v71;
  *(&v135 + 1) = v72;
  v73 = v133[0];
  v74 = v91;
  *(v91 + 40) = v97;
  *(v74 + 56) = v73;
  v75 = v133[3];
  *(v74 + 120) = v133[4];
  *(v74 + 104) = v75;
  v76 = v133[1];
  *(v74 + 88) = v133[2];
  *(v74 + 72) = v76;
  v77 = v133[7];
  *(v74 + 184) = v133[8];
  *(v74 + 168) = v77;
  v78 = v133[5];
  *(v74 + 152) = v133[6];
  *(v74 + 136) = v78;
  v79 = v134;
  *(v74 + 232) = v135;
  v80 = v133[9];
  *(v74 + 216) = v79;
  *(v74 + 200) = v80;
  v142 = v62;
  v143 = v63;
  *v144 = *&v110[128];
  *&v139[33] = v65;
  *&v139[49] = v66;
  v136 = 0;
  v82 = v101;
  v81 = v102;
  v84 = v99;
  v83 = KeyPath;
  *v74 = v102;
  *(v74 + 8) = v83;
  v85 = v98;
  *(v74 + 16) = v82;
  *(v74 + 24) = v85;
  *(v74 + 32) = v84;
  *(v74 + 248) = 0;
  v137 = v60;
  v138 = 0;
  v139[0] = v53;
  *&v144[15] = *&v110[143];
  v140 = v67;
  v141 = v61;
  *&v139[1] = v68;
  *&v139[17] = v64;
  v145 = v59;
  *v146 = *v112;
  *&v146[3] = *&v112[3];
  v147 = v69;
  v148 = v70;
  v149 = v71;
  v150 = v72;
  v151 = 0;
  sub_1A477D7D0(v81);
  sub_1A49D4848(&v131, &v105, sub_1A49D3508);
  sub_1A49D48B0(&v137, sub_1A49D3508);
  return sub_1A477D840(v81);
}

uint64_t sub_1A49D41F0()
{
  sub_1A49D4BF0(0, &qword_1EB147160, sub_1A3C3637C, MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  *(swift_allocObject() + 16) = v1;
  sub_1A49D331C(0);
  sub_1A49CD640(&qword_1EB1471B8, sub_1A49D331C, MEMORY[0x1E69817F8]);
  return sub_1A524B704();
}

uint64_t sub_1A49D4338()
{
  sub_1A49CC9A4(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A49CE4AC(v0, v3);
  sub_1A49CEBFC(&qword_1EB147148, sub_1A49CC9A4, sub_1A49CEC6C, MEMORY[0x1E6981600]);
  sub_1A524AEF4();
  return sub_1A49D4B90(v3, sub_1A49CC9A4);
}

void sub_1A49D4480(uint64_t a1)
{
  sub_1A49D4BF0(319, &qword_1EB1246E8, sub_1A3EBE398, MEMORY[0x1E697DCC0]);
  if (v1 <= 0x3F)
  {
    sub_1A49D5B6C(319, &unk_1EB13A670, MEMORY[0x1E69E6158], MEMORY[0x1E6981790]);
    if (v2 <= 0x3F)
    {
      sub_1A49D4658(319);
      if (v3 <= 0x3F)
      {
        sub_1A3C34400(319, &qword_1EB1471C8, &protocol descriptor for PhotosDetailsSearchViewDataSource);
        if (v4 <= 0x3F)
        {
          sub_1A49D4BF0(319, &qword_1EB1201F0, sub_1A3C3637C, MEMORY[0x1E69E6720]);
          if (v5 <= 0x3F)
          {
            sub_1A49D5B6C(319, &qword_1EB146F60, &type metadata for PhotosDetailsSearchViewNavigationItem, MEMORY[0x1E69E6720]);
            if (v6 <= 0x3F)
            {
              sub_1A49D5B6C(319, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_1A49D4658(uint64_t a1)
{
  if (!qword_1EB1471C0)
  {
    sub_1A49D5B6C(255, &qword_1EB146F58, &type metadata for PhotosDetailsSearchViewResultSection, MEMORY[0x1E69E62F8]);
    v1 = sub_1A524B6D4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1471C0);
    }
  }
}

void sub_1A49D46E4(uint64_t a1)
{
  if (!qword_1EB1471D8)
  {
    sub_1A49D331C(255);
    sub_1A49CD640(&qword_1EB1471B8, sub_1A49D331C, MEMORY[0x1E69817F8]);
    v1 = sub_1A524B764();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1471D8);
    }
  }
}

uint64_t sub_1A49D4778(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  sub_1A49D4BF0(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_1A49D47E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1A49D4848(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A49D48B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A49D4928@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = (v3 + *(type metadata accessor for PhotosDetailsSearchView(0) + 44));
  v5 = *v4;
  v6 = *(v4 + 1);
  LOBYTE(v10[0]) = v5;
  v10[1] = v6;
  v7 = MEMORY[0x1E69E6370];
  sub_1A49D5B6C(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  sub_1A524B6C4();
  sub_1A49D5B6C(0, &qword_1EB127320, v7, MEMORY[0x1E6981948]);
  MEMORY[0x1A5906C60](v10);
  v8 = v10[0];

  return sub_1A49CF8E8(v8, a1);
}

void sub_1A49D4A28(uint64_t a1, uint64_t a2)
{
  if (a2)
  {

    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }
}

void sub_1A49D4A78(uint64_t a1)
{
  if (!qword_1EB147200)
  {
    sub_1A49D4BF0(255, &qword_1EB146FA8, sub_1A49CCF5C, MEMORY[0x1E6981F40]);
    v1 = sub_1A52483B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB147200);
    }
  }
}

uint64_t sub_1A49D4B10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A49D4B90(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A49D4BF0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A49D4C54(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t objectdestroy_65Tm_0()
{
  v1 = type metadata accessor for PhotosDetailsSearchView(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  sub_1A49D4BF0(0, &qword_1EB128A38, sub_1A3EBE398, MEMORY[0x1E697DCB8]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    sub_1A3EBE398(0);
    v5 = *(v4 + 32);
    v6 = sub_1A52489C4();
    (*(*(v6 - 8) + 8))(v2 + v5, v6);
  }

  __swift_destroy_boxed_opaque_existential_0((v2 + v1[7]));
  if (*(v2 + v1[8]))
  {
  }

  if (*(v2 + v1[9] + 8))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A49D4EC4(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for PhotosDetailsSearchView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

void sub_1A49D4F38(uint64_t a1, uint64_t *a2)
{
  v4 = *(type metadata accessor for PhotosDetailsSearchView(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  sub_1A49D0F14(a2, v5);
}

uint64_t sub_1A49D4FA8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  sub_1A49CE26C(0, a2, a3, a4, MEMORY[0x1E697E830]);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

unint64_t sub_1A49D5018()
{
  result = qword_1EB147220;
  if (!qword_1EB147220)
  {
    sub_1A49D5784(255, &qword_1EB146FE0, sub_1A49CD23C, sub_1A49CD688, MEMORY[0x1E697F960]);
    sub_1A49CE3A0(&qword_1EB147228, sub_1A49CD23C, sub_1A49D518C);
    sub_1A49CD75C(255);
    sub_1A52484F4();
    sub_1A49CD640(&qword_1EB1470C8, sub_1A49CD75C, MEMORY[0x1E697CD20]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB147220);
  }

  return result;
}

void sub_1A49D5704(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for PhotosDetailsSearchView(0) - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  sub_1A49D16B0(a1, v6, a2);
}

void sub_1A49D5784(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t objectdestroy_83Tm_1()
{
  v1 = type metadata accessor for PhotosDetailsSearchView(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  sub_1A49D4BF0(0, &qword_1EB128A38, sub_1A3EBE398, MEMORY[0x1E697DCB8]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    sub_1A3EBE398(0);
    v5 = *(v4 + 32);
    v6 = sub_1A52489C4();
    (*(*(v6 - 8) + 8))(v2 + v5, v6);
  }

  __swift_destroy_boxed_opaque_existential_0((v2 + v1[7]));
  if (*(v2 + v1[8]))
  {
  }

  if (*(v2 + v1[9] + 8))
  {
  }

  return swift_deallocObject();
}

double sub_1A49D5A9C@<D0>(uint64_t a1@<X0>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = *(type metadata accessor for PhotosDetailsSearchView(0) - 8);
  v12 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  return sub_1A49D271C(a1, v6 + v12, (v6 + ((*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8)), a4, a5, a6);
}

void sub_1A49D5B6C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t objectdestroy_89Tm_0()
{
  v1 = type metadata accessor for PhotosDetailsSearchView(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = v0 + v2;
  sub_1A49D4BF0(0, &qword_1EB128A38, sub_1A3EBE398, MEMORY[0x1E697DCB8]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    sub_1A3EBE398(0);
    v7 = *(v6 + 32);
    v8 = sub_1A52489C4();
    (*(*(v8 - 8) + 8))(v4 + v7, v8);
  }

  __swift_destroy_boxed_opaque_existential_0((v4 + v1[7]));
  if (*(v4 + v1[8]))
  {
  }

  if (*(v4 + v1[9] + 8))
  {
  }

  __swift_destroy_boxed_opaque_existential_0((v0 + ((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8)));

  return swift_deallocObject();
}

uint64_t sub_1A49D5E1C()
{
  v1 = *(type metadata accessor for PhotosDetailsSearchView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1A49D2990(v0 + v2, v0 + v3, v0 + ((v3 + 47) & 0xFFFFFFFFFFFFFFF8));
}

uint64_t objectdestroy_113Tm_0()
{
  v1 = type metadata accessor for PhotosDetailsSearchView(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  sub_1A49D4BF0(0, &qword_1EB128A38, sub_1A3EBE398, MEMORY[0x1E697DCB8]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    sub_1A3EBE398(0);
    v5 = *(v4 + 32);
    v6 = sub_1A52489C4();
    (*(*(v6 - 8) + 8))(v2 + v5, v6);
  }

  __swift_destroy_boxed_opaque_existential_0((v2 + v1[7]));
  if (*(v2 + v1[8]))
  {
  }

  if (*(v2 + v1[9] + 8))
  {
  }

  return swift_deallocObject();
}

void sub_1A49D60B4(uint64_t a1)
{
  v3 = *(type metadata accessor for PhotosDetailsSearchView(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];

  sub_1A49D2E54(a1, v1 + v4, v6, v7);
}

void TTRWorkflow.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t TTRWorkflow.init(stepsBuilder:)@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1A52411C4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A52411B4();
  v8 = sub_1A5241164();
  v10 = v9;
  v11 = (*(v5 + 8))(v7, v4);
  *a2 = v8;
  a2[1] = v10;
  result = a1(v11);
  a2[2] = result;
  return result;
}

void sub_1A49D6330(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v3 = v2[1];
  v5 = v2[2];
  type metadata accessor for TTRWorkflowViewController();
  v6 = v4;
  v7 = v3;
  v8 = v5;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A49D63E0(void *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v6 = *v4;
  v5 = v4[1];
  v7 = v4[2];
  type metadata accessor for TTRWorkflowViewController();
  v8 = v6;
  v9 = v5;
  v10 = v7;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void static TTRWorkflow.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (sub_1A524EAB4() & 1) != 0)
  {

    sub_1A49D66F4(v2, v3);
  }
}

uint64_t sub_1A49D654C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v30 = v2;
  v31 = v3;
  v5 = (a1 + 32);
  v6 = (a2 + 32);
  for (i = v4 - 1; ; --i)
  {
    v8 = v5[1];
    v9 = v5[3];
    v24 = v5[2];
    v25[0] = v9;
    *(v25 + 9) = *(v5 + 57);
    v10 = v5[1];
    v23[0] = *v5;
    v23[1] = v10;
    v11 = v6[3];
    v28 = v6[2];
    v29[0] = v11;
    *(v29 + 9) = *(v6 + 57);
    v12 = v6[1];
    v26 = *v6;
    v27 = v12;
    v13 = v5[3];
    v21[4] = v24;
    v22[0] = v13;
    *(v22 + 9) = *(v5 + 57);
    v21[2] = v23[0];
    v21[3] = v8;
    sub_1A44A34F0(v23, v20);
    sub_1A44A34F0(&v26, v20);
    v14 = TTRWorkflowAction.description.getter();
    v16 = v15;
    v20[2] = v28;
    v21[0] = v29[0];
    *(v21 + 9) = *(v29 + 9);
    v20[0] = v26;
    v20[1] = v27;
    if (v14 == TTRWorkflowAction.description.getter() && v16 == v17)
    {

      sub_1A440448C(&v26);
      sub_1A440448C(v23);
      goto LABEL_9;
    }

    v18 = sub_1A524EAB4();

    sub_1A440448C(&v26);
    sub_1A440448C(v23);
    if ((v18 & 1) == 0)
    {
      break;
    }

LABEL_9:
    if (!i)
    {
      return 1;
    }

    v6 += 5;
    v5 += 5;
  }

  return 0;
}

void sub_1A49D66F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16) && v2 && a1 != a2)
  {
    v3 = 0;
    v23 = a2 + 32;
    v24 = a1 + 32;
    while (v3 != v2)
    {
      v4 = (v24 + 56 * v3);
      v5 = *v4;
      v6 = v4[1];
      v8 = v4[2];
      v7 = v4[3];
      v9 = v4[4];
      v28 = v4[5];
      v10 = v4[6];
      v11 = (v23 + 56 * v3);
      v12 = v11[2];
      v25 = v11[3];
      v14 = v11[4];
      v13 = v11[5];
      v15 = v11[6];
      v16 = v5 == *v11 && v6 == v11[1];
      v26 = v11[5];
      v27 = v7;
      if (!v16)
      {
        v17 = sub_1A524EAB4();
        v7 = v27;
        v13 = v26;
        if ((v17 & 1) == 0)
        {
          return;
        }
      }

      if (v8 != v12 || v7 != v25)
      {
        v19 = sub_1A524EAB4();
        v13 = v26;
        if ((v19 & 1) == 0)
        {
          return;
        }
      }

      if (v28)
      {
        if (!v13)
        {
          return;
        }

        v20 = v9 == v14 && v28 == v13;
        if (!v20 && (sub_1A524EAB4() & 1) == 0)
        {
          return;
        }
      }

      else if (v13)
      {
        return;
      }

      v21 = *(v10 + 16);
      if (v21 == *(v15 + 16))
      {
        if (v21 && v10 != v15)
        {
          _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
        }

        if (++v3 != v2)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
  }
}

void sub_1A49D6AD4(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (sub_1A524EAB4() & 1) != 0)
  {

    sub_1A49D66F4(v2, v3);
  }
}

void TTRWorkflowStep.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

void __swiftcall TTRWorkflowStep.init(title:description:)(PhotosUICore::TTRWorkflowStep *__return_ptr retstr, Swift::String title, Swift::String_optional description)
{
  object = description.value._object;
  countAndFlagsBits = description.value._countAndFlagsBits;
  v5 = title._object;
  v6 = title._countAndFlagsBits;
  v8 = sub_1A52411C4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A52411B4();
  v12 = sub_1A5241164();
  v14 = v13;
  (*(v9 + 8))(v11, v8);
  v15 = MEMORY[0x1E69E7CC0];
  retstr->id._countAndFlagsBits = v12;
  retstr->id._object = v14;
  retstr->description.value._object = object;
  retstr->actions._rawValue = v15;
  retstr->title._countAndFlagsBits = v6;
  retstr->title._object = v5;
  retstr->description.value._countAndFlagsBits = countAndFlagsBits;
}

void TTRWorkflowStep.add(action:)(_OWORD *a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 3);
  v15 = a1[2];
  v16[0] = v4;
  *(v16 + 9) = *(a1 + 57);
  v5 = a1[1];
  v13 = *a1;
  v14 = v5;
  v6 = *v2;
  v7 = v2[1];
  v8 = v2[2];
  v9 = v2[3];
  v11 = v2[4];
  v10 = v2[5];
  v12 = v2[6];
  *a2 = v6;
  a2[1] = v7;
  a2[2] = v8;
  a2[3] = v9;
  a2[4] = v11;
  a2[5] = v10;
  a2[6] = v12;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A49D6E24(uint64_t a1)
{
  sub_1A524EC94();
  sub_1A524C794();
  return sub_1A524ECE4();
}

uint64_t static TTRWorkflowAction.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = TTRWorkflowAction.description.getter();
  v10 = v9;
  if (v8 == TTRWorkflowAction.description.getter() && v10 == v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_1A524EAB4();
  }

  return v12 & 1;
}

unint64_t TTRWorkflowAction.description.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = v0[5];
  v5 = *(v0 + 72);
  if (v5 <= 1)
  {
    if (!*(v0 + 72))
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    sub_1A524E404();
    MEMORY[0x1A5907B60](0xD000000000000012, 0x80000001A53F6770);
    MEMORY[0x1A5907B60](0xD000000000000019, 0x80000001A53F6830);
    MEMORY[0x1A5907B60](v2, v1);
    MEMORY[0x1A5907B60](0x746341736168202CLL, 0xED0000203A6E6F69);
    if (v3)
    {
      v7 = 7562617;
    }

    else
    {
      v7 = 28526;
    }

    if (v3)
    {
      v8 = 0xE300000000000000;
    }

    else
    {
      v8 = 0xE200000000000000;
    }

    MEMORY[0x1A5907B60](v7, v8);

    MEMORY[0x1A5907B60](0xD000000000000010, 0x80000001A53F6850);
    if (v4)
    {
      v9 = 7562617;
    }

    else
    {
      v9 = 28526;
    }

    if (v4)
    {
      v10 = 0xE300000000000000;
    }

    else
    {
      v10 = 0xE200000000000000;
    }

    MEMORY[0x1A5907B60](v9, v10);

    v6 = 0;
  }

  else
  {
    if (v5 == 2)
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    if (v5 == 3)
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    if (v3 | v1 | v2 | v0[3] | v4 | v0[6] | v0[7] | v0[8] | (*(v0 + 33) << 8) | ((*(v0 + 37) | (*(v0 + 39) << 16)) << 40) | *(v0 + 32))
    {
      v6 = 0xD00000000000002CLL;
    }

    else
    {
      v6 = 0xD000000000000024;
    }
  }

  v12 = v6;
  MEMORY[0x1A5907B60](62, 0xE100000000000000);
  return v12;
}

PhotosUICore::TTRWorkflowAction::BasicMenuItem __swiftcall TTRWorkflowAction.BasicMenuItem.init(title:submenuItems:)(Swift::String title, Swift::OpaquePointer submenuItems)
{
  *v2 = title;
  *(v2 + 16) = submenuItems;
  result.title = title;
  result.submenuItems = submenuItems;
  return result;
}

uint64_t sub_1A49D7510(uint64_t result, uint64_t a2, uint64_t a3)
{
  v11 = result;
  v3 = 0;
  v4 = *(a3 + 16);
  v5 = a3 + 32;
  while (1)
  {
    v6 = 0uLL;
    v7 = v4;
    v8 = 0uLL;
    v9 = 0uLL;
    if (v3 == v4)
    {
      goto LABEL_7;
    }

    if (v3 >= v4)
    {
      break;
    }

    v7 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      goto LABEL_12;
    }

    *&v14 = v3;
    sub_1A3C341C8(v5 + 40 * v3, &v14 + 8);
    v6 = v14;
    v8 = v15;
    v9 = v16;
LABEL_7:
    v17[0] = v6;
    v17[1] = v8;
    v17[2] = v9;
    if (!v9)
    {
      *&v17[0] = 0;
      *(&v17[0] + 1) = 0xE000000000000000;
      sub_1A524E404();
      MEMORY[0x1A5907B60](0xD000000000000023, 0x80000001A53F6870);
      MEMORY[0x1A5907B60](v11, a2);
      MEMORY[0x1A5907B60](0xD000000000000011, 0x80000001A53F68A0);
      MEMORY[0x1A5907B60](0, 0xE000000000000000);

      MEMORY[0x1A5907B60](15965, 0xE200000000000000);
      return *&v17[0];
    }

    v13 = v6;
    sub_1A3C34460((v17 + 8), &v14);
    __swift_project_boxed_opaque_existential_1(&v14, *(&v15 + 1));
    v10 = sub_1A524EA44();
    MEMORY[0x1A5907B60](v10);

    if (v13 < (v4 - 1))
    {
      MEMORY[0x1A5907B60](44, 0xE100000000000000);
    }

    result = __swift_destroy_boxed_opaque_existential_0(&v14);
    v3 = v7;
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t TTRWorkflowAction.MenuItem.description.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  result = v4();
  v6 = 0;
  v7 = *(result + 16);
  v15 = result + 32;
  v16 = result;
  while (1)
  {
    v8 = 0uLL;
    v9 = v7;
    v10 = 0uLL;
    v11 = 0uLL;
    if (v6 == v7)
    {
      goto LABEL_6;
    }

    if (v6 >= *(v16 + 16))
    {
      break;
    }

    v9 = v6 + 1;
    *&v18 = v6;
    sub_1A3C341C8(v15 + 40 * v6, &v18 + 8);
    v8 = v18;
    v10 = v19;
    v11 = v20;
LABEL_6:
    v21[0] = v8;
    v21[1] = v10;
    v21[2] = v11;
    if (!v11)
    {

      *&v21[0] = 0;
      *(&v21[0] + 1) = 0xE000000000000000;
      sub_1A524E404();
      MEMORY[0x1A5907B60](0xD000000000000023, 0x80000001A53F6870);
      v14 = (*(a2 + 16))(a1, a2);
      MEMORY[0x1A5907B60](v14);

      MEMORY[0x1A5907B60](0xD000000000000011, 0x80000001A53F68A0);
      MEMORY[0x1A5907B60](0, 0xE000000000000000);

      MEMORY[0x1A5907B60](15965, 0xE200000000000000);
      return *&v21[0];
    }

    v17 = v8;
    sub_1A3C34460((v21 + 8), &v18);
    __swift_project_boxed_opaque_existential_1(&v18, *(&v19 + 1));
    v12 = sub_1A524EA44();
    MEMORY[0x1A5907B60](v12);

    v13 = *((v4)(a1, a2) + 16);

    if (v17 < v13 - 1)
    {
      MEMORY[0x1A5907B60](44, 0xE100000000000000);
    }

    result = __swift_destroy_boxed_opaque_existential_0(&v18);
    v6 = v9;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A49D7948()
{
  v0 = TTRWorkflowAction.description.getter();
  v2 = v1;
  if (v0 == TTRWorkflowAction.description.getter() && v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1A524EAB4();
  }

  return v4 & 1;
}

PhotosUICore::TTRRadarObject::MetadataTag_optional __swiftcall TTRRadarObject.MetadataTag.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1A524E824();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t TTRRadarObject.MetadataTag.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x74696C6962617473;
  v3 = 0x65757373497861;
  if (v1 != 3)
  {
    v3 = 0x6E6F697461727563;
  }

  if (v1 != 2)
  {
    v2 = v3;
  }

  v4 = 0xD000000000000012;
  if (*v0)
  {
    v4 = 0xD000000000000017;
  }

  if (*v0 <= 1u)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1A49D7AE8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000079;
  v3 = 0x74696C6962617473;
  v4 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v6 = 0xD000000000000017;
    }

    else
    {
      v6 = 0xD000000000000012;
    }

    if (v4)
    {
      v5 = 0x80000001A53F6730;
    }

    else
    {
      v5 = 0x80000001A53F6710;
    }
  }

  else if (a1 == 2)
  {
    v6 = 0x74696C6962617473;
    v5 = 0xE900000000000079;
  }

  else if (a1 == 3)
  {
    v5 = 0xE700000000000000;
    v6 = 0x65757373497861;
  }

  else
  {
    v5 = 0xE800000000000000;
    v6 = 0x6E6F697461727563;
  }

  v7 = 0xE700000000000000;
  v8 = 0x65757373497861;
  if (a2 != 3)
  {
    v8 = 0x6E6F697461727563;
    v7 = 0xE800000000000000;
  }

  if (a2 != 2)
  {
    v3 = v8;
    v2 = v7;
  }

  v9 = 0xD000000000000012;
  v10 = 0x80000001A53F6730;
  if (a2)
  {
    v9 = 0xD000000000000017;
  }

  else
  {
    v10 = 0x80000001A53F6710;
  }

  if (a2 <= 1u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v3;
  }

  if (a2 <= 1u)
  {
    v12 = v10;
  }

  else
  {
    v12 = v2;
  }

  if (v6 == v11 && v5 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_1A524EAB4();
  }

  return v13 & 1;
}

uint64_t sub_1A49D7C78()
{
  sub_1A524EC94();
  sub_1A524C794();

  return sub_1A524ECE4();
}

double sub_1A49D7D68(uint64_t a1)
{
  sub_1A524C794();

  return result;
}

uint64_t sub_1A49D7E44(uint64_t a1)
{
  sub_1A524EC94();
  sub_1A524C794();

  return sub_1A524ECE4();
}

void sub_1A49D7F3C(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000079;
  v4 = 0x74696C6962617473;
  v5 = 0xE700000000000000;
  v6 = 0x65757373497861;
  if (v2 != 3)
  {
    v6 = 0x6E6F697461727563;
    v5 = 0xE800000000000000;
  }

  if (v2 != 2)
  {
    v4 = v6;
    v3 = v5;
  }

  v7 = 0xD000000000000012;
  v8 = 0x80000001A53F6710;
  if (*v1)
  {
    v7 = 0xD000000000000017;
    v8 = 0x80000001A53F6730;
  }

  if (*v1 <= 1u)
  {
    v9 = v7;
  }

  else
  {
    v9 = v4;
  }

  if (*v1 <= 1u)
  {
    v3 = v8;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_1A49D7FE8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xB0))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1A49D8134@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xC8))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1A49D8280@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xE0))();
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

void sub_1A49D8354(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR___PXTTRRadarObject_classification;
  swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
}

uint64_t sub_1A49D8414@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xF8))();
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1A49D84F0(void *a1)
{
  v2 = v1 + *a1;
  swift_beginAccess();
  return *v2;
}

void sub_1A49D8538(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR___PXTTRRadarObject_component;
  swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
}

uint64_t sub_1A49D85F8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x128))();
  *a2 = result;
  return result;
}

uint64_t sub_1A49D879C(uint64_t a1, void **a2)
{
  sub_1A3C4D3F0(0, &unk_1EB12B250, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v8 - v5;
  sub_1A426E444(a1, &v8 - v5);
  return (*((*MEMORY[0x1E69E7D40] & **a2) + 0x148))(v6);
}

uint64_t sub_1A49D8884@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___PXTTRRadarObject_preflightScreenshotURL;
  swift_beginAccess();
  return sub_1A426E444(v1 + v3, a1);
}

uint64_t sub_1A49D88DC(uint64_t a1)
{
  v3 = OBJC_IVAR___PXTTRRadarObject_preflightScreenshotURL;
  swift_beginAccess();
  sub_1A46A2154(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1A49D8A14(_BYTE *a1)
{
  v2 = *a1;
  v3 = 0xE900000000000079;
  v4 = 0x74696C6962617473;
  v5 = 0xE700000000000000;
  v6 = 0x65757373497861;
  if (v2 != 3)
  {
    v6 = 0x6E6F697461727563;
    v5 = 0xE800000000000000;
  }

  if (v2 != 2)
  {
    v4 = v6;
    v3 = v5;
  }

  v7 = 0xD000000000000012;
  v8 = 0x80000001A53F6710;
  if (*a1)
  {
    v7 = 0xD000000000000017;
    v8 = 0x80000001A53F6730;
  }

  if (*a1 <= 1u)
  {
    v9 = v7;
  }

  else
  {
    v9 = v4;
  }

  if (*a1 <= 1u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v3;
  }

  v11 = OBJC_IVAR___PXTTRRadarObject_metadataTags;
  swift_beginAccess();
  v12 = *(v1 + v11);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + v11) = v12;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = sub_1A3D3D914(0, *(v12 + 2) + 1, 1, v12);
    *(v1 + v11) = v12;
  }

  v15 = *(v12 + 2);
  v14 = *(v12 + 3);
  if (v15 >= v14 >> 1)
  {
    v12 = sub_1A3D3D914((v14 > 1), v15 + 1, 1, v12);
  }

  *(v12 + 2) = v15 + 1;
  v16 = &v12[16 * v15];
  *(v16 + 4) = v9;
  *(v16 + 5) = v10;
  *(v1 + v11) = v12;
  return swift_endAccess();
}

uint64_t sub_1A49D8C90(uint64_t a1, uint64_t *a2)
{
  v5 = sub_1A5240E64();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, a1, v5, v7);
  v10 = *a2;
  swift_beginAccess();
  v11 = *(v2 + v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + v10) = v11;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = sub_1A3ECD488(0, v11[2] + 1, 1, v11);
    *(v2 + v10) = v11;
  }

  v14 = v11[2];
  v13 = v11[3];
  if (v14 >= v13 >> 1)
  {
    v11 = sub_1A3ECD488((v13 > 1), v14 + 1, 1, v11);
  }

  v11[2] = v14 + 1;
  result = (*(v6 + 32))(v11 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v14, v9, v5);
  *(v2 + v10) = v11;
  return result;
}

uint64_t sub_1A49D8E24(uint64_t a1)
{
  v2 = OBJC_IVAR___PXTTRRadarObject_diagnosticProviders;
  swift_beginAccess();
  v3 = swift_unknownObjectRetain();
  MEMORY[0x1A5907D70](v3);
  if (*((*(v1 + v2) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v2) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1A524CA74();
  }

  sub_1A524CAE4();
  return swift_endAccess();
}

void sub_1A49D8F40(char a1)
{
  v2 = v1;
  sub_1A3C4D3F0(0, &unk_1EB12B250, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v74 = v71 - v5;
  v77 = sub_1A5240E64();
  v6 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v73 = v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v71 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v71 - v12;
  v14 = [objc_allocWithZone(PXRadarConfiguration) init];
  v15 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0xB0))();
  if (v16)
  {
    v17 = sub_1A524C634();
  }

  else
  {
    v17 = 0;
  }

  [v14 setTitle_];

  (*((*v15 & *v2) + 0xC8))();
  if (v18)
  {
    v19 = sub_1A524C634();
  }

  else
  {
    v19 = 0;
  }

  [v14 setDescription_];

  v20 = (*((*v15 & *v2) + 0xF8))();
  if (v21)
  {
    v22 = 0;
  }

  else
  {
    v22 = v20;
  }

  [v14 setComponent_];
  (*((*v15 & *v2) + 0x1D8))(0x36353235313731, 0xE700000000000000);
  (*((*v15 & *v2) + 0x170))([v14 setAttachmentsIncludeAnyUserAsset_]);
  v23 = sub_1A524CA14();

  v78 = v14;
  [v14 setKeywordIDs_];

  v24 = *((*v15 & *v2) + 0x188);
  v25 = *(v24() + 16);

  v75 = v2;
  v76 = v6;
  if (v25)
  {
    v72 = v10;
    v27 = v13;
    v28 = (v24)(v26);
    v29 = *(v28 + 16);
    if (v29)
    {
      v30 = *(v6 + 16);
      v31 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v71[1] = v28;
      v32 = v28 + v31;
      v33 = *(v6 + 72);
      v34 = (v6 + 8);
      v36 = v77;
      v35 = v78;
      do
      {
        v30(v27, v32, v36);
        v37 = sub_1A5240D44();
        [v35 addScreenshot_];

        (*v34)(v27, v36);
        v32 += v33;
        --v29;
      }

      while (v29);

      v2 = v75;
      v6 = v76;
      v15 = MEMORY[0x1E69E7D40];
    }

    else
    {
    }

    v10 = v72;
  }

  v38 = (*((*v15 & *v2) + 0x1A0))(v26);
  v39 = *(v38 + 16);
  if (v39)
  {
    v40 = *(v6 + 16);
    v41 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v72 = v38;
    v42 = v38 + v41;
    v43 = *(v6 + 72);
    v44 = (v6 + 8);
    v46 = v77;
    v45 = v78;
    do
    {
      v40(v10, v42, v46);
      v47 = sub_1A5240D44();
      [v45 addAttachment_];

      (*v44)(v10, v46);
      v42 += v43;
      --v39;
    }

    while (v39);

    v2 = v75;
  }

  else
  {
  }

  v48 = v78;
  [v78 addDiagnosticProvider_];
  v49 = OBJC_IVAR___PXTTRRadarObject_diagnosticProviders;
  v50 = swift_beginAccess();
  v51 = *(v2 + v49);
  if (v51 >> 62)
  {
    v50 = sub_1A524E2B4();
    v52 = v50;
  }

  else
  {
    v52 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v53 = MEMORY[0x1E69E7D40];
  v54 = v76;
  if (v52)
  {
    if (v52 >= 1)
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    __break(1u);
    return;
  }

  v55 = v74;
  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x140))(v50);
  v56 = v77;
  if ((*(v54 + 48))(v55, 1, v77) == 1)
  {
    sub_1A3D75F5C(v55);
  }

  else
  {
    v57 = v73;
    (*(v54 + 32))(v73, v55, v56);
    v79 = 0xD000000000000011;
    v80 = 0x80000001A53F66D0;
    v58 = sub_1A524E384();
    v59 = (*((*v53 & *v2) + 0x128))(v58);
    if (*(v59 + 16) && (v60 = sub_1A3D5C0BC(v81), (v61 & 1) != 0))
    {
      sub_1A3C2F0BC(*(v59 + 56) + 32 * v60, v82);
      sub_1A3D5FAFC(v81);

      if ((swift_dynamicCast() & 1) != 0 && v79 == 1)
      {
        v62 = sub_1A5240D44();
        [v48 addScreenshot_];
      }
    }

    else
    {

      sub_1A3D5FAFC(v81);
    }

    (*(v54 + 8))(v57, v56);
  }

  v82[0] = 0xD000000000000018;
  v82[1] = 0x80000001A53F66F0;
  v63 = sub_1A524E384();
  v64 = (*((*v53 & *v2) + 0x128))(v63);
  if (!*(v64 + 16) || (v65 = sub_1A3D5C0BC(v81), (v66 & 1) == 0))
  {

    sub_1A3D5FAFC(v81);
    goto LABEL_41;
  }

  sub_1A3C2F0BC(*(v64 + 56) + 32 * v65, v82);
  sub_1A3D5FAFC(v81);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_41:
    v67 = 1;
    goto LABEL_42;
  }

  v67 = v79;
LABEL_42:
  [v48 setWantsPhotosDiagnostics_];
  (*((*v53 & *v2) + 0x1B8))([v48 setWantsSystemDiagnostics_]);
  v68 = sub_1A524CA14();

  [v48 setAdditionalExtensionIdentifiers_];

  v69 = (*((*v53 & *v2) + 0xE0))();
  if ((v70 & 1) == 0)
  {
    [v48 setClassification_];
  }

  PXFileRadarWithConfiguration(v48);
}

void sub_1A49D9978(void *a1)
{
  if (*((*((*MEMORY[0x1E69E7D40] & *v1) + 0x158))() + 16))
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v2 = sub_1A524C634();

  v3 = sub_1A524C634();
  [a1 addAttachmentWithText:v2 name:v3];
}

id TTRRadarObject.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TTRRadarObject.init()()
{
  v1 = &v0[OBJC_IVAR___PXTTRRadarObject_title];
  *v1 = 0;
  *(v1 + 1) = 0;
  v2 = &v0[OBJC_IVAR___PXTTRRadarObject_radarDescription];
  *v2 = 0;
  *(v2 + 1) = 0;
  v3 = &v0[OBJC_IVAR___PXTTRRadarObject_classification];
  *v3 = 0;
  v3[8] = 1;
  v4 = &v0[OBJC_IVAR___PXTTRRadarObject_component];
  *v4 = 0;
  v4[8] = 1;
  v5 = MEMORY[0x1E69E7CC0];
  *&v0[OBJC_IVAR___PXTTRRadarObject_diagnosticProviders] = MEMORY[0x1E69E7CC0];
  v6 = OBJC_IVAR___PXTTRRadarObject_additionalInfo;
  *&v0[v6] = sub_1A3DAED90(v5);
  v7 = OBJC_IVAR___PXTTRRadarObject_preflightScreenshotURL;
  v8 = sub_1A5240E64();
  (*(*(v8 - 8) + 56))(&v0[v7], 1, 1, v8);
  *&v0[OBJC_IVAR___PXTTRRadarObject_metadataTags] = v5;
  *&v0[OBJC_IVAR___PXTTRRadarObject_keywordIds] = v5;
  *&v0[OBJC_IVAR___PXTTRRadarObject_attachmentImageURLs] = v5;
  *&v0[OBJC_IVAR___PXTTRRadarObject_attachmentFileURLs] = v5;
  *&v0[OBJC_IVAR___PXTTRRadarObject_additionalExtensionIdentifiers] = v5;
  v10.receiver = v0;
  v10.super_class = type metadata accessor for TTRRadarObject(0);
  return objc_msgSendSuper2(&v10, sel_init);
}

id TTRRadarObject.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRRadarObject(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void TTRRadarObject.copy(with:)(void *a1@<X8>)
{
  v2 = v1;
  sub_1A3C4D3F0(0, &unk_1EB12B250, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v37 - v5;
  v7 = type metadata accessor for TTRRadarObject(0);
  v8 = [objc_allocWithZone(v7) init];
  v9 = MEMORY[0x1E69E7D40];
  v10 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0xB0))();
  v11 = (*((*v9 & *v8) + 0xB8))(v10);
  v12 = (*((*v9 & *v1) + 0xC8))(v11);
  v13 = (*((*v9 & *v8) + 0xD0))(v12);
  v14 = (*((*v9 & *v1) + 0xE0))(v13);
  v16 = (*((*v9 & *v8) + 0xE8))(v14, v15 & 1);
  v17 = (*((*v9 & *v1) + 0xF8))(v16);
  v19 = (*((*v9 & *v8) + 0x100))(v17, v18 & 1);
  v20 = (*((*v9 & *v1) + 0x188))(v19);
  v21 = OBJC_IVAR___PXTTRRadarObject_attachmentImageURLs;
  swift_beginAccess();
  *(v8 + v21) = v20;

  v23 = (*((*v9 & *v2) + 0x128))(v22);
  v24 = (*((*v9 & *v8) + 0x130))(v23);
  (*((*v9 & *v2) + 0x140))(v24);
  v25 = (*((*v9 & *v8) + 0x148))(v6);
  v26 = (*((*v9 & *v2) + 0x158))(v25);
  v27 = OBJC_IVAR___PXTTRRadarObject_metadataTags;
  swift_beginAccess();
  *(v8 + v27) = v26;

  v29 = (*((*v9 & *v2) + 0x170))(v28);
  v30 = OBJC_IVAR___PXTTRRadarObject_keywordIds;
  swift_beginAccess();
  *(v8 + v30) = v29;

  v32 = (*((*v9 & *v2) + 0x1A0))(v31);
  v33 = OBJC_IVAR___PXTTRRadarObject_attachmentFileURLs;
  swift_beginAccess();
  *(v8 + v33) = v32;

  v35 = (*((*v9 & *v2) + 0x1B8))(v34);
  v36 = OBJC_IVAR___PXTTRRadarObject_additionalExtensionIdentifiers;
  swift_beginAccess();
  *(v8 + v36) = v35;

  a1[3] = v7;
  *a1 = v8;
}

char *sub_1A49DA458(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A49DB01C(0, &qword_1EB147298, &type metadata for TTRWorkflowAction, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[80 * v8])
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t _s12PhotosUICore15TTRWorkflowStepV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v6 = a1[5];
  v5 = a1[6];
  v7 = a2[2];
  v8 = a2[3];
  v10 = a2[4];
  v9 = a2[5];
  v11 = a2[6];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1A524EAB4() & 1) == 0 || (v2 != v7 || v4 != v8) && (sub_1A524EAB4() & 1) == 0)
  {
    return 0;
  }

  if (v6)
  {
    if (v9 && (v3 == v10 && v6 == v9 || (sub_1A524EAB4() & 1) != 0))
    {
      goto LABEL_12;
    }

    return 0;
  }

  if (v9)
  {
    return 0;
  }

LABEL_12:

  return sub_1A49D654C(v5, v11);
}

uint64_t type metadata accessor for TTRRadarObject(uint64_t a1)
{
  result = qword_1EB16E620;
  if (!qword_1EB16E620)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1A49DA6F8(uint64_t a1)
{
  result = sub_1A49DA720();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A49DA720()
{
  result = qword_1EB147280;
  if (!qword_1EB147280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB147280);
  }

  return result;
}

unint64_t sub_1A49DA778()
{
  result = qword_1EB147288;
  if (!qword_1EB147288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB147288);
  }

  return result;
}

uint64_t sub_1A49DA804(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0u;
    LOBYTE(a2) = 4;
  }

  *(result + 72) = a2;
  return result;
}

void sub_1A49DA8D0(uint64_t a1)
{
  sub_1A3C4D3F0(319, &unk_1EB12B250, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1A49DB01C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1A49DB100(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3D60150;

  return Phototype.supportInfo(for:)(a1);
}

uint64_t sub_1A49DB1B8()
{
  v1 = *(v0 + 16);
  *v1 = 0u;
  v1[1] = 0u;
  return (*(v0 + 8))();
}

_BYTE *PhototypeContext.init(kind:photoLibrary:selectedAssets:containerAssets:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = *result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  return result;
}

void PhototypeContext.init(kind:asset:)(char *a1, void *a2)
{
  sub_1A3C4EE68(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1A52F9790;
  *(v4 + 32) = a2;
  sub_1A3D435C4();
  v5 = a2;
  sub_1A524CA14();

  PXDisplayAssetFetchResultFromArray();
}

uint64_t PhototypeWrapper.__allocating_init(phototype:)(__int128 *a1)
{
  v2 = swift_allocObject();
  sub_1A3C34460(a1, v2 + 16);
  return v2;
}

uint64_t PhototypeWrapper.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return swift_deallocClassInstance();
}

void PhototypeSupportInfo.customName.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

void PhototypeSupportInfo.customSymbolName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

PhotosUICore::PhototypeSupportInfo __swiftcall PhototypeSupportInfo.init(customName:customSymbolName:)(Swift::String_optional customName, Swift::String_optional customSymbolName)
{
  *v2 = customName;
  v2[1] = customSymbolName;
  result.customSymbolName = customSymbolName;
  result.customName = customName;
  return result;
}

unint64_t sub_1A49DB654()
{
  result = qword_1EB1472A0;
  if (!qword_1EB1472A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1472A0);
  }

  return result;
}

unint64_t sub_1A49DB6AC()
{
  result = qword_1EB1472A8;
  if (!qword_1EB1472A8)
  {
    sub_1A3C4EE68(255, &qword_1EB1472B0, &type metadata for PhototypeContext.Kind, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1472A8);
  }

  return result;
}

unint64_t sub_1A49DB72C()
{
  result = qword_1EB1472B8;
  if (!qword_1EB1472B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1472B8);
  }

  return result;
}

uint64_t dispatch thunk of Phototype.supportInfo(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 48) + **(a4 + 48));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1A3D60150;

  return v11(a1, a2, a3, a4);
}

double PXPhototypeSupport.phototype.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = [v1 phototypeWrapper];
  sub_1A524E0B4();
  swift_unknownObjectRelease();
  type metadata accessor for PhototypeWrapper();
  swift_dynamicCast();
  sub_1A3C341C8(v5 + 16, a1);

  return result;
}

uint64_t PXPhototypeSupport.name.getter()
{
  v1 = [v0 customName];
  if (v1)
  {
    v2 = v1;
    v3 = sub_1A524C674();

    return v3;
  }

  else
  {
    PXPhototypeSupport.phototype.getter(v8);
    v5 = v9;
    v6 = v10;
    __swift_project_boxed_opaque_existential_1(v8, v9);
    v7 = (*(v6 + 8))(v5, v6);
    __swift_destroy_boxed_opaque_existential_0(v8);
    return v7;
  }
}

uint64_t PXPhototypeSupport.symbolName.getter()
{
  v1 = [v0 customSymbolName];
  if (v1)
  {
    v2 = v1;
    v3 = sub_1A524C674();

    return v3;
  }

  else
  {
    PXPhototypeSupport.phototype.getter(v8);
    v5 = v9;
    v6 = v10;
    __swift_project_boxed_opaque_existential_1(v8, v9);
    v7 = (*(v6 + 16))(v5, v6);
    __swift_destroy_boxed_opaque_existential_0(v8);
    return v7;
  }
}

uint64_t sub_1A49DBBB8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A5249234();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E31270(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PhotosDetailsAssetProvenanceWidgetView(0);
  sub_1A49E04B4(v1 + *(v10 + 28), v9, sub_1A3E31270);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1A52486A4();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    v13 = sub_1A524D254();
    v14 = sub_1A524A014();
    sub_1A5246DF4(v13, &dword_1A3C1C000, v14, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t type metadata accessor for PhotosDetailsAssetProvenanceWidgetView(uint64_t a1)
{
  result = qword_1EB18ED70;
  if (!qword_1EB18ED70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A49DBE00@<X0>(uint64_t a2@<X8>)
{
  *a2 = xmmword_1A530D8E0;
  *(a2 + 16) = 0x4028000000000000;
  v3 = type metadata accessor for PhotosDetailsAssetProvenanceWidgetView(0);
  v4 = v3[7];
  *(a2 + v4) = swift_getKeyPath();
  sub_1A3E31270(0);
  swift_storeEnumTagMultiPayload();
  v5 = v3[8];
  *(a2 + v5) = swift_getKeyPath();
  sub_1A3FA5378(0);
  swift_storeEnumTagMultiPayload();
  v6 = (a2 + v3[9]);
  type metadata accessor for PhotosDetailsAssetProvenanceViewModel(0);
  sub_1A49DFF94(&qword_1EB125E80, type metadata accessor for PhotosDetailsAssetProvenanceViewModel, &unk_1A533DFE8);
  result = sub_1A5248494();
  *v6 = result;
  v6[1] = v8;
  return result;
}

void sub_1A49DBF3C(uint64_t a1)
{
  if (!qword_1EB1472C8)
  {
    sub_1A49E0230(255, &qword_1EB1472D0, sub_1A49DBFD8, sub_1A49DC738, MEMORY[0x1E697F960]);
    v1 = sub_1A524B514();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1472C8);
    }
  }
}

void sub_1A49DC020(uint64_t a1)
{
  if (!qword_1EB1472E0)
  {
    sub_1A49DC15C(255);
    sub_1A49DC260(255);
    sub_1A5249764();
    sub_1A49DFEB8(&qword_1EB147350, sub_1A49DC260, sub_1A49DC614);
    sub_1A49DFF94(&qword_1EB122360, MEMORY[0x1E697C658], MEMORY[0x1E697C650]);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB1472E0);
    }
  }
}

void sub_1A49DC15C(uint64_t a1)
{
  if (!qword_1EB1472E8)
  {
    sub_1A49DC260(255);
    sub_1A5249764();
    sub_1A49DFEB8(&qword_1EB147350, sub_1A49DC260, sub_1A49DC614);
    sub_1A49DFF94(&qword_1EB122360, MEMORY[0x1E697C658], MEMORY[0x1E697C650]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB1472E8);
    }
  }
}

void sub_1A49DC260(uint64_t a1)
{
  if (!qword_1EB1472F0)
  {
    sub_1A49E0230(255, &qword_1EB1472F8, sub_1A49DC304, sub_1A3EC447C, MEMORY[0x1E697E830]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1472F0);
    }
  }
}

void sub_1A49DC304(uint64_t a1)
{
  if (!qword_1EB147300)
  {
    sub_1A49DC398(255);
    sub_1A49DFF94(&qword_1EB147348, sub_1A49DC398, MEMORY[0x1E6981F48]);
    v1 = sub_1A524B8B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB147300);
    }
  }
}

void sub_1A49DC3D4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    sub_1A49DC8AC(255, a3, a4, a5);
    v6 = sub_1A524BE24();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1A49DC46C(uint64_t a1)
{
  if (!qword_1EB147320)
  {
    sub_1A49DC500(255);
    sub_1A49DFF94(&qword_1EB147340, sub_1A49DC500, MEMORY[0x1E6981F48]);
    v1 = sub_1A524B894();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB147320);
    }
  }
}

void sub_1A49DC534(uint64_t a1)
{
  if (!qword_1EB147330)
  {
    sub_1A49DC59C(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB147330);
    }
  }
}

unint64_t sub_1A49DC614()
{
  result = qword_1EB147358;
  if (!qword_1EB147358)
  {
    sub_1A49E0230(255, &qword_1EB1472F8, sub_1A49DC304, sub_1A3EC447C, MEMORY[0x1E697E830]);
    sub_1A49DFF94(&qword_1EB147360, sub_1A49DC304, MEMORY[0x1E6981880]);
    sub_1A49DFF94(&qword_1EB122308, sub_1A3EC447C, MEMORY[0x1E697FD58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB147358);
  }

  return result;
}

void sub_1A49DC738(uint64_t a1)
{
  if (!qword_1EB147368)
  {
    sub_1A49E0230(255, &qword_1EB147370, sub_1A49DC7DC, sub_1A3FA9268, MEMORY[0x1E697E830]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB147368);
    }
  }
}

void sub_1A49DC7DC(uint64_t a1)
{
  if (!qword_1EB147378)
  {
    sub_1A49DC870(255);
    sub_1A49DFF94(&qword_1EB1473C8, sub_1A49DC870, MEMORY[0x1E6981F48]);
    v1 = sub_1A524B894();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB147378);
    }
  }
}

void sub_1A49DC8AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
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

void sub_1A49DC9A0(uint64_t a1)
{
  if (!qword_1EB1473A0)
  {
    sub_1A49DCA34(255);
    v3 = v2;
    v4 = sub_1A49DF3D4(&qword_1EB1473B8, sub_1A49DCA34, sub_1A49DCB10);
    v6 = type metadata accessor for PhotosDetailsDiscoverableView(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_1EB1473A0);
    }
  }
}

void sub_1A49DCAA4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_1A49DCB10()
{
  result = qword_1EB1473C0;
  if (!qword_1EB1473C0)
  {
    sub_1A49DCA68(255);
    sub_1A49DFEB8(&qword_1EB128300, sub_1A3E33EB4, sub_1A3E44C04);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1473C0);
  }

  return result;
}

uint64_t sub_1A49DCBC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v76 = a2;
  sub_1A49DC738(0);
  v77 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A49E0230(0, &qword_1EB147408, sub_1A49DBFD8, sub_1A49DC738, MEMORY[0x1E697F948]);
  v74 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v75 = v52 - v7;
  v8 = sub_1A52407E4();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v67 = v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_1A5249524();
  v71 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v70 = v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_1A5249D74();
  v11 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v65 = v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_1A5249764();
  v61 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v58 = v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_1A52486A4();
  MEMORY[0x1EEE9AC00](v53);
  sub_1A49DC260(0);
  v55 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = (v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A49DC15C(0);
  v59 = v17;
  v56 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v54 = v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A49DC020(0);
  v62 = v19;
  v60 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v57 = v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A49DBFD8(0);
  v73 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v63 = v52 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v66 = v52 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v69 = v52 - v26;
  v27 = *(a1 + *(type metadata accessor for PhotosDetailsAssetProvenanceWidgetView(0) + 36) + 8);
  v28 = MEMORY[0x1E69E7D40];
  if ((*((*MEMORY[0x1E69E7D40] & *v27) + 0x140))() == 5)
  {
    *v16 = sub_1A524BC74();
    v16[1] = v29;
    sub_1A49E02B4(0, &qword_1EB147418, sub_1A49DC398, MEMORY[0x1E697E330], MEMORY[0x1E697E320]);
    v31 = v16 + *(v30 + 44);
    v52[1] = v11;
    sub_1A49DD938(a1, v31);
  }

  *v5 = sub_1A5249574();
  *(v5 + 1) = 0;
  v5[16] = 0;
  sub_1A49E02B4(0, &qword_1EB147410, sub_1A49DC870, MEMORY[0x1E697E300], MEMORY[0x1E697E2F8]);
  sub_1A49DE740(a1, &v5[*(v32 + 44)]);
  sub_1A49E0230(0, &qword_1EB147370, sub_1A49DC7DC, sub_1A3FA9268, MEMORY[0x1E697E830]);
  v34 = &v5[*(v33 + 36)];
  sub_1A4110614(v27);
  v35 = sub_1A524BC74();
  v37 = v36;
  sub_1A3FA9268(0, v36);
  v39 = &v34[*(v38 + 36)];
  *v39 = v35;
  v39[1] = v37;
  v40 = (*((*v28 & *v27) + 0xC0))();
  [v40 contentGuideInsets];

  EdgeInsets.init(_:)();
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v49 = sub_1A524A064();
  v50 = &v5[*(v77 + 36)];
  *v50 = v49;
  *(v50 + 1) = v42;
  *(v50 + 2) = v44;
  *(v50 + 3) = v46;
  *(v50 + 4) = v48;
  v50[40] = 0;
  sub_1A49E0320(v5, v75, sub_1A49DC738);
  swift_storeEnumTagMultiPayload();
  sub_1A49DF514();
  sub_1A49DF6AC();
  sub_1A5249744();
  return sub_1A49E0388(v5, sub_1A49DC738);
}

void sub_1A49DD938(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v3 = sub_1A52486A4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3EC3E2C(0);
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7);
  v22 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v21 = &v17 - v11;
  v12 = type metadata accessor for PhotosDetailsAssetProvenanceWidgetView(0);
  v18 = *(a1 + *(v12 + 36) + 8);
  sub_1A4110614(v18);
  sub_1A49DBBB8(v6);
  sub_1A4394B64(v6, v12, &off_1EE6EE860);
  v13 = *(v4 + 8);
  v13(v6, v3);
  sub_1A49DBBB8(v6);
  v14 = sub_1A4394B64(v6, v12, &off_1EE6EE860);
  (v13)(v6, v3, v14);
  sub_1A524BC74();
  sub_1A52481F4();
  v15 = &v21[*(v8 + 44)];
  v16 = v25;
  *v15 = v24;
  *(v15 + 1) = v16;
  *(v15 + 2) = v26;
  v19 = sub_1A5249574();
  v23 = 0;
  sub_1A49DE174(&v28);
  sub_1A52492C4();
  LOBYTE(v27) = 0;
  sub_1A49DE3A4(&v28);
}

void sub_1A49DE174(uint64_t *a1@<X8>)
{
  v2 = sub_1A524B554();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PhotosDetailsAssetProvenanceWidgetView(0);
  if (sub_1A3FBCFB8())
  {
    (*(v3 + 104))(v5, *MEMORY[0x1E6981630], v2);
    v6 = sub_1A524B5C4();
    v7 = (*(v3 + 8))(v5, v2);
    v8 = sub_1A3FBD10C(v7);
    KeyPath = swift_getKeyPath();
    sub_1A3FBBFA8();
    sub_1A3FBBFA8();
    sub_1A524BC74();
    sub_1A52481F4();
    v11[1] = v6;
    v11[2] = 0;
    v12 = 257;
    v13 = KeyPath;
    v14 = v8;
    v15 = 256;
    sub_1A49E0230(0, &qword_1EB12F8C8, sub_1A3F2F0CC, sub_1A3FA95D4, MEMORY[0x1E697E830]);
    sub_1A3FA9DC0();
    v10 = sub_1A524B8E4();
  }

  else
  {
    v10 = sub_1A524B8E4();
  }

  *a1 = v10;
}

void sub_1A49DE3A4(uint64_t *a1@<X8>)
{
  v15[0] = a1;
  sub_1A3E75D84(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A524A274();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A52407E4();
  MEMORY[0x1EEE9AC00](v8 - 8);
  type metadata accessor for PhotosDetailsAssetProvenanceWidgetView(0);
  sub_1A3FBC7A0();
  v9 = sub_1A524A454();
  v16 = v10;
  v17 = v9;
  v12 = v11;
  v18 = v13;
  v15[1] = swift_getKeyPath();
  if (sub_1A3FBBFF8())
  {
    sub_1A524B544();
    (*(v5 + 104))(v7, *MEMORY[0x1E6980F18], v4);
    v14 = sub_1A524A154();
    (*(*(v14 - 8) + 56))(v3, 1, 1, v14);
    sub_1A524A184();
    sub_1A524A1C4();
    sub_1A49E051C(v3, sub_1A3E75D84);
    (*(v5 + 8))(v7, v4);
    swift_getKeyPath();
    sub_1A524B4A4();
    swift_getKeyPath();
  }

  v19 = v12 & 1;
  sub_1A3E75E68(v17, v16, v12 & 1);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A49DE740@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v91 = a2;
  v3 = type metadata accessor for PhotosDetailsAssetProvenanceWidgetView(0);
  v4 = v3 - 8;
  v79[0] = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v79[1] = v5;
  v80 = v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A49E03E8(0, &qword_1EB12B0D0, MEMORY[0x1E6968848], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v82 = v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v81 = v79 - v9;
  sub_1A49DC9A0(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v88 = v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A49DC964(0);
  v87 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v86 = v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A49DC928(0);
  v84 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v90 = v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v83 = v79 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v89 = v79 - v19;
  v20 = sub_1A524B9A4();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = v79 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3EE16E8(0);
  v25 = v24 - 8;
  MEMORY[0x1EEE9AC00](v24);
  v27 = v79 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3FA8D64(0);
  v29 = v28 - 8;
  MEMORY[0x1EEE9AC00](v28);
  v85 = v79 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v33 = v79 - v32;
  MEMORY[0x1EEE9AC00](v34);
  v36 = v79 - v35;
  v37 = sub_1A524B994();
  if ((*((*MEMORY[0x1E69E7D40] & **(a1 + *(v4 + 44) + 8)) + 0x108))(v37))
  {
    v38 = 0.8;
  }

  else
  {
    v38 = 0.0;
  }

  (*(v21 + 32))(v27, v23, v20);
  v39 = *(v25 + 44);
  v40 = v81;
  *&v27[v39] = v38;
  v41 = sub_1A524A094();
  v42 = *(a1 + 8);
  sub_1A5247BC4();
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v50 = v49;
  sub_1A49E044C(v27, v33, sub_1A3EE16E8);
  v51 = &v33[*(v29 + 44)];
  *v51 = v41;
  v52 = v82;
  *(v51 + 1) = v44;
  *(v51 + 2) = v46;
  *(v51 + 3) = v48;
  *(v51 + 4) = v50;
  v51[40] = 0;
  sub_1A49E044C(v33, v36, sub_1A3FA8D64);
  sub_1A49DF850(v92);
  sub_1A3FBC7A0();
  v53 = sub_1A52407E4();
  v54 = *(*(v53 - 8) + 56);
  v54(v40, 0, 1, v53);
  v54(v52, 1, 1, v53);
  v55 = 0;
  v56 = 0;
  if (sub_1A3FBBFF8())
  {
    v57 = v80;
    sub_1A49E04B4(a1, v80, type metadata accessor for PhotosDetailsAssetProvenanceWidgetView);
    v58 = (*(v79[0] + 80) + 16) & ~*(v79[0] + 80);
    v56 = swift_allocObject();
    sub_1A49E044C(v57, v56 + v58, type metadata accessor for PhotosDetailsAssetProvenanceWidgetView);
    v55 = sub_1A49DF30C;
  }

  sub_1A49DCA34(0);
  v60 = v59;
  v61 = sub_1A49DF3D4(&qword_1EB1473B8, sub_1A49DCA34, sub_1A49DCB10);
  v62 = v88;
  sub_1A42F9768(v92, v40, 0, 0, 0, v52, 0, 0, v88, v55, v56, 3, v60, v61);
  sub_1A3FAACE8(0, &unk_1EB1202B0, MEMORY[0x1E6980D50], MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A52FC9F0;
  v64 = sub_1A524A094();
  *(inited + 32) = v64;
  v65 = sub_1A524A0B4();
  *(inited + 33) = v65;
  v66 = sub_1A524A0A4();
  sub_1A524A0A4();
  if (sub_1A524A0A4() != v64)
  {
    v66 = sub_1A524A0A4();
  }

  sub_1A524A0A4();
  if (sub_1A524A0A4() != v65)
  {
    v66 = sub_1A524A0A4();
  }

  v67 = v86;
  sub_1A49E044C(v62, v86, sub_1A49DC9A0);
  *(v67 + *(v87 + 36)) = v66;
  v68 = *(a1 + 16);
  v69 = sub_1A524A064();
  v70 = v67;
  v71 = v83;
  sub_1A49E044C(v70, v83, sub_1A49DC964);
  v72 = v71 + *(v84 + 36);
  *v72 = v69;
  *(v72 + 8) = v68;
  *(v72 + 16) = v42;
  *(v72 + 24) = v68;
  *(v72 + 32) = v42;
  *(v72 + 40) = 0;
  v73 = v89;
  sub_1A49E044C(v71, v89, sub_1A49DC928);
  v74 = v85;
  sub_1A49E04B4(v36, v85, sub_1A3FA8D64);
  v75 = v90;
  sub_1A49E04B4(v73, v90, sub_1A49DC928);
  v76 = v91;
  sub_1A49E04B4(v74, v91, sub_1A3FA8D64);
  sub_1A49DC8AC(0, &qword_1EB147388, sub_1A3FA8D64, sub_1A49DC928);
  sub_1A49E04B4(v75, v76 + *(v77 + 48), sub_1A49DC928);
  sub_1A49E051C(v73, sub_1A49DC928);
  sub_1A49E051C(v36, sub_1A3FA8D64);
  sub_1A49E051C(v75, sub_1A49DC928);
  return sub_1A49E051C(v74, sub_1A3FA8D64);
}

uint64_t sub_1A49DF0C0()
{
  v0 = sub_1A5248334();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3EE53E0(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A5240E64();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PhotosDetailsAssetProvenanceWidgetView(0);
  sub_1A3FBC17C(v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_1A49E051C(v6, sub_1A3EE53E0);
  }

  (*(v8 + 32))(v10, v6, v7);
  sub_1A3EE4C48(v3);
  sub_1A5248304();
  (*(v1 + 8))(v3, v0);
  return (*(v8 + 8))(v10, v7);
}

unint64_t sub_1A49DF324()
{
  result = qword_1EB1473D0;
  if (!qword_1EB1473D0)
  {
    sub_1A49DBF00(255);
    sub_1A49DF3D4(&qword_1EB1473D8, sub_1A49DBF3C, sub_1A49DF450);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1473D0);
  }

  return result;
}

uint64_t sub_1A49DF3D4(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void))
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

unint64_t sub_1A49DF450()
{
  result = qword_1EB1473E0;
  if (!qword_1EB1473E0)
  {
    sub_1A49E0230(255, &qword_1EB1472D0, sub_1A49DBFD8, sub_1A49DC738, MEMORY[0x1E697F960]);
    sub_1A49DF514();
    sub_1A49DF6AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1473E0);
  }

  return result;
}

unint64_t sub_1A49DF514()
{
  result = qword_1EB1473E8;
  if (!qword_1EB1473E8)
  {
    sub_1A49DBFD8(255);
    sub_1A49DC15C(255);
    sub_1A49DC260(255);
    sub_1A5249764();
    sub_1A49DFEB8(&qword_1EB147350, sub_1A49DC260, sub_1A49DC614);
    sub_1A49DFF94(&qword_1EB122360, MEMORY[0x1E697C658], MEMORY[0x1E697C650]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1A49DFF94(&qword_1EB127710, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1473E8);
  }

  return result;
}

unint64_t sub_1A49DF6AC()
{
  result = qword_1EB1473F0;
  if (!qword_1EB1473F0)
  {
    sub_1A49DC738(255);
    sub_1A49DF72C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1473F0);
  }

  return result;
}

unint64_t sub_1A49DF72C()
{
  result = qword_1EB1473F8;
  if (!qword_1EB1473F8)
  {
    sub_1A49E0230(255, &qword_1EB147370, sub_1A49DC7DC, sub_1A3FA9268, MEMORY[0x1E697E830]);
    sub_1A49DFF94(&qword_1EB147400, sub_1A49DC7DC, MEMORY[0x1E6981870]);
    sub_1A49DFF94(&qword_1EB12F910, sub_1A3FA9268, MEMORY[0x1E697F940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1473F8);
  }

  return result;
}

__n128 sub_1A49DF850@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_1A524B554();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PhotosDetailsAssetProvenanceWidgetView(0);
  if (sub_1A3FBCFB8())
  {
    (*(v3 + 104))(v5, *MEMORY[0x1E6981630], v2);
    v6 = sub_1A524B5C4();
    (*(v3 + 8))(v5, v2);
    sub_1A3FBBFA8();
    sub_1A3FBBFA8();
    sub_1A524BC74();
    sub_1A52481F4();
    LOBYTE(v12[0]) = 1;
    *&v15[6] = v13[2];
    *&v15[22] = v13[3];
    *&v15[38] = v14;
    v9[0] = v6;
    v9[1] = 0;
    *v10 = 257;
    *&v10[2] = *v15;
    *&v10[18] = *&v15[16];
    *&v10[34] = *&v15[32];
    *&v10[48] = *(&v14 + 1);
    *v15 = v6;
    *&v15[16] = *v10;
    *&v15[32] = *&v10[16];
    *&v15[48] = *&v10[32];
    *&v15[64] = *(&v14 + 1);
    v11 = 0;
    v15[72] = 0;
    sub_1A49E04B4(v9, v12, sub_1A3E33EB4);
    sub_1A49E04B4(v9, v12, sub_1A3E33EB4);
    sub_1A3E33EB4(0);
    sub_1A49DFEB8(&qword_1EB128300, sub_1A3E33EB4, sub_1A3E44C04);
    sub_1A5249744();

    sub_1A49E051C(v9, sub_1A3E33EB4);
    sub_1A49E051C(v9, sub_1A3E33EB4);
    *&v15[32] = v12[2];
    *&v15[48] = v13[0];
    *&v15[57] = *(v13 + 9);
    *v15 = v12[0];
    *&v15[16] = v12[1];
  }

  else
  {
    LOBYTE(v9[0]) = 1;
    BYTE8(v13[1]) = 1;
    sub_1A3E33EB4(0);
    sub_1A49DFEB8(&qword_1EB128300, sub_1A3E33EB4, sub_1A3E44C04);
    sub_1A5249744();
  }

  v7 = *&v15[48];
  *(a1 + 32) = *&v15[32];
  *(a1 + 48) = v7;
  *(a1 + 57) = *&v15[57];
  result = *&v15[16];
  *a1 = *v15;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1A49DFB9C@<X0>(int *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = xmmword_1A530D8E0;
  *(a3 + 16) = 0x4028000000000000;
  v5 = a2[7];
  *(a3 + v5) = swift_getKeyPath();
  sub_1A3E31270(0);
  swift_storeEnumTagMultiPayload();
  v6 = a2[8];
  *(a3 + v6) = swift_getKeyPath();
  sub_1A3FA5378(0);
  swift_storeEnumTagMultiPayload();
  v7 = (a3 + a2[9]);
  type metadata accessor for PhotosDetailsAssetProvenanceViewModel(0);
  sub_1A49DFF94(&qword_1EB125E80, type metadata accessor for PhotosDetailsAssetProvenanceViewModel, &unk_1A533DFE8);
  result = sub_1A5248494();
  *v7 = result;
  v7[1] = v9;
  return result;
}

uint64_t sub_1A49DFC94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v15[1] = a2;
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1 - 8);
  sub_1A49DBF00(0);
  v7 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A49DCBC0(v3, v9);
  sub_1A49E04B4(v3, v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PhotosDetailsAssetProvenanceWidgetView);
  v10 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v11 = swift_allocObject();
  sub_1A49E044C(v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, type metadata accessor for PhotosDetailsAssetProvenanceWidgetView);
  v12 = &v9[*(v7 + 36)];
  *v12 = sub_1A49E0778;
  v12[1] = v11;
  v12[2] = 0;
  v12[3] = 0;
  sub_1A49E04B4(v3, v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PhotosDetailsAssetProvenanceWidgetView);
  v13 = swift_allocObject();
  sub_1A49E044C(v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v10, type metadata accessor for PhotosDetailsAssetProvenanceWidgetView);
  sub_1A49DF324();
  sub_1A524AA84();

  return sub_1A49E0388(v9, sub_1A49DBF00);
}

uint64_t sub_1A49DFEB8(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void))
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

uint64_t sub_1A49DFF3C(uint64_t a1)
{
  result = sub_1A49DFF94(&qword_1EB13FA98, type metadata accessor for PhotosDetailsAssetProvenanceWidgetView, &unk_1A537ADEC);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A49DFF94(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1A49E0020(uint64_t a1)
{
  sub_1A49E03E8(319, &qword_1EB124718, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
  if (v1 <= 0x3F)
  {
    sub_1A49E03E8(319, &unk_1EB124720, MEMORY[0x1E697E178], MEMORY[0x1E697DCC0]);
    if (v2 <= 0x3F)
    {
      sub_1A49E0134(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1A49E0134(uint64_t a1)
{
  if (!qword_1EB1243B8)
  {
    type metadata accessor for PhotosDetailsAssetProvenanceViewModel(255);
    sub_1A49DFF94(&qword_1EB125E80, type metadata accessor for PhotosDetailsAssetProvenanceViewModel, &unk_1A533DFE8);
    v1 = sub_1A52484C4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1243B8);
    }
  }
}

void sub_1A49E0230(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_1A49E02B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
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

uint64_t sub_1A49E0320(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A49E0388(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A49E03E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A49E044C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A49E04B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A49E051C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroyTm_89()
{
  v1 = type metadata accessor for PhotosDetailsAssetProvenanceWidgetView(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  v3 = v1[7];
  sub_1A3E31270(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1A52486A4();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  v5 = v1[8];
  sub_1A3FA5378(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1A5248334();
    (*(*(v6 - 8) + 8))(v2 + v5, v6);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A49E0704(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for PhotosDetailsAssetProvenanceWidgetView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_1A49E0780(uint64_t result, char a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    if (!a4)
    {
      __break(1u);
      goto LABEL_22;
    }

    if (result == 0x8000000000000000 && a4 == -1)
    {
      goto LABEL_32;
    }

    if (__OFSUB__(a4, 1))
    {
      goto LABEL_23;
    }

    v4 = vcvts_n_f32_s64(a4 - 1, 1uLL);
    if ((LODWORD(v4) & 0x7FFFFFFFu) > 0x7F7FFFFF)
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    if (v4 <= -9.2234e18)
    {
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    if (v4 >= 9.2234e18)
    {
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    if (!__OFSUB__(result % a4, v4))
    {
      return result;
    }

    __break(1u);
  }

  if (!a3)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result == 0x8000000000000000 && a3 == -1)
  {
    goto LABEL_33;
  }

  if (__OFSUB__(a3, 1))
  {
    goto LABEL_24;
  }

  v5 = vcvts_n_f32_s64(a3 - 1, 1uLL);
  if ((LODWORD(v5) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v5 <= -9.2234e18)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v5 >= 9.2234e18)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (__OFSUB__(result % a3, v5))
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
  }

  return result;
}

uint64_t sub_1A49E089C(uint64_t result, char a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    if (__OFSUB__(a3, 1))
    {
      __break(1u);
      goto LABEL_22;
    }

    v4 = vcvts_n_f32_s64(a3 - 1, 1uLL);
    if ((LODWORD(v4) & 0x7FFFFFFFu) > 0x7F7FFFFF)
    {
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    if (v4 <= -9.2234e18)
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    if (v4 >= 9.2234e18)
    {
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    if (!a4)
    {
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    if (result == 0x8000000000000000 && a4 == -1)
    {
      goto LABEL_32;
    }

    if (!__OFSUB__(v4, result / a4))
    {
      return result;
    }

    __break(1u);
  }

  if (__OFSUB__(a4, 1))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v5 = vcvts_n_f32_s64(a4 - 1, 1uLL);
  if ((LODWORD(v5) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v5 <= -9.2234e18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v5 >= 9.2234e18)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (!a3)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    return result;
  }

  if (result == 0x8000000000000000 && a3 == -1)
  {
    goto LABEL_33;
  }

  if (__OFSUB__(v5, result / a3))
  {
    goto LABEL_31;
  }

  return result;
}

double sub_1A49E09B0(uint64_t a1, char a2)
{
  v6 = *(v2 + 8);
  v5 = *(v2 + 16);
  sub_1A3E2AFA0(0.1, 0.25);
  v8 = v7;
  sub_1A3E2AFA0(0.1, 0.25);
  v10 = v9;
  sub_1A49E0780(a1, a2, v6, v5);
  *&v14 = -(v8 * v11);
  sub_1A49E089C(a1, a2, v6, v5);
  return COERCE_DOUBLE(__PAIR64__(-(v10 * v12), v14));
}

double sub_1A49E0A60(uint64_t a1, char a2)
{
  v5 = *v2;
  v7 = *(v2 + 8);
  v6 = *(v2 + 16);
  sub_1A49E0780(a1, a2, v7, v6);
  v8 = v5 + 1.0;
  *&v12 = v8 * v9;
  sub_1A49E089C(a1, a2, v7, v6);
  return COERCE_DOUBLE(__PAIR64__(v8 * v10, v12));
}

BOOL sub_1A49E0AF4(_BOOL8 result, char a2)
{
  if ((a2 & 1) == 0)
  {
LABEL_7:
    v3 = *(v2 + 32);
    v4 = v3 - 1;
    if (!__OFSUB__(v3, 1))
    {
      if (v3)
      {
        if (result != 0x8000000000000000 || v3 != -1)
        {
          goto LABEL_11;
        }

LABEL_21:
        __break(1u);
        return result;
      }

LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    goto LABEL_18;
  }

  v3 = *(v2 + 40);
  v4 = v3 - 1;
  if (__OFSUB__(v3, 1))
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v3)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (result == 0x8000000000000000 && v3 == -1)
  {
    __break(1u);
    goto LABEL_7;
  }

LABEL_11:
  v5 = result % v3;
  return !v5 || v5 == v4;
}

BOOL sub_1A49E0B70(_BOOL8 result, char a2)
{
  if ((a2 & 1) == 0)
  {
LABEL_7:
    v7 = *(v2 + 40);
    v4 = __OFSUB__(v7, 1);
    v5 = v7 - 1;
    if (!v4)
    {
      v6 = *(v2 + 32);
      if (v6)
      {
        if (result != 0x8000000000000000 || v6 != -1)
        {
          goto LABEL_11;
        }

LABEL_21:
        __break(1u);
        return result;
      }

LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    goto LABEL_18;
  }

  v3 = *(v2 + 32);
  v4 = __OFSUB__(v3, 1);
  v5 = v3 - 1;
  if (v4)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v6 = *(v2 + 40);
  if (!v6)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (result == 0x8000000000000000 && v6 == -1)
  {
    __break(1u);
    goto LABEL_7;
  }

LABEL_11:
  v8 = result / v6;
  return !v8 || v8 == v5;
}

__n64 sub_1A49E0BF0(uint64_t a1, char a2)
{
  v5 = *v2;
  v6 = *(v2 + 8);
  v7 = *(v2 + 16);
  sub_1A49E0780(a1, a2, v6, v7);
  v8 = v5 + 1.0;
  v10 = (v5 + 1.0) * v9;
  sub_1A49E089C(a1, a2, v6, v7);
  v12 = v11;
  sub_1A3E2AFA0(0.7, 0.85);
  v14 = v13;
  sub_1A3E2AFA0(0.7, 0.85);
  v16 = v15;
  v17 = sub_1A49E0B70(a1, a2);
  if (sub_1A49E0AF4(a1, a2))
  {
    v18 = 0.85;
    result.n64_f32[0] = v10 * 0.85;
    if (v17)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  result.n64_f32[0] = v10 * v14;
  if (!v17)
  {
LABEL_6:
    v18 = v16;
    goto LABEL_7;
  }

  v18 = 0.85;
LABEL_7:
  result.n64_f32[1] = (v8 * v12) * v18;
  return result;
}

uint64_t *sub_1A49E0D18@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1A4731C18();
  v3 = *v2;
  result = sub_1A4731C24();
  v5 = *result;
  v6 = *v2;
  *a1 = 1017370378;
  *(a1 + 8) = v3;
  *(a1 + 16) = v5;
  *(a1 + 24) = 1072064102;
  *(a1 + 32) = v6;
  *(a1 + 40) = v5;
  return result;
}

void sub_1A49E0D80(uint64_t a1, char a2)
{
  v5 = *v2;
  v6 = *(v2 + 8);
  v7 = *(v2 + 16);
  sub_1A49E0780(a1, a2, v6, v7);
  v9 = v8;
  sub_1A49E089C(a1, a2, v6, v7);
  v11 = v10;
  if (sub_1A3E28488(a1, *(v2 + 32)))
  {
    v12 = atan2f((v5 + 1.0) * v9, (v5 + 1.0) * v11);
    sub_1A3E2AFA0(-0.3, 0.3);
    v14 = v12 + v13;
    sub_1A3E2AFA0(-0.25, 0.25);
LABEL_5:
    __sincosf_stret(v14);
    return;
  }

  sub_1A3E2AFA0(-3.1416, 3.1416);
  v14 = v15;
  v16 = *(v2 + 24) + -0.5;
  if (v16 >= 0.0)
  {
    sub_1A3E2AFA0(0.0, v16);
    goto LABEL_5;
  }

  __break(1u);
}

double sub_1A49E0EFC@<D0>(uint64_t a1@<X8>)
{
  v2 = *sub_1A4731C18();
  v3 = *sub_1A4731C24();
  v4 = sub_1A49E1110(&unk_1F17329E8);
  v5 = sub_1A49E1110(&unk_1F1732A50);
  v6 = sub_1A49E1110(&unk_1F1732AA0);
  sub_1A49E1250(0, &qword_1EB120238, sub_1A49E121C, MEMORY[0x1E69E6F90]);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1A533E260;
  *(v7 + 32) = xmmword_1A537AED0;
  *(v7 + 48) = 0;
  *(v7 + 64) = xmmword_1A537AEE0;
  *(v7 + 80) = 0;
  *(v7 + 96) = xmmword_1A537AEE0;
  *(v7 + 112) = 0;
  *(v7 + 128) = xmmword_1A537AEF0;
  *(v7 + 144) = 0;
  *(v7 + 160) = xmmword_1A537AF00;
  *(v7 + 176) = 0;
  *(v7 + 192) = xmmword_1A537AF10;
  *(v7 + 208) = 0;
  *(v7 + 224) = xmmword_1A537AF20;
  *(v7 + 240) = 0;
  result = 512.000369;
  *(v7 + 256) = xmmword_1A537AF30;
  *(v7 + 272) = 0;
  *a1 = 1017370378;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  *(a1 + 48) = &unk_1F1732AF0;
  *(a1 + 56) = &unk_1F1732B50;
  *(a1 + 64) = v7;
  *(a1 + 72) = &unk_1F1732BB0;
  *(a1 + 80) = &unk_1F1732C10;
  return result;
}

uint64_t sub_1A49E1070()
{
  v0 = *sub_1A4731C18();
  sub_1A4731C24();
  return v0;
}

double sub_1A49E10AC()
{
  sub_1A3E2AFA0(0.0, 1.0);
  v1 = v0;
  result = 0.0;
  if (v1 > 0.1)
  {
    sub_1A3E2AFA0(-0.43633, 0.43633);
    return 0.0;
  }

  return result;
}

uint64_t sub_1A49E1110(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A49E1384();
    v3 = sub_1A524E3D4();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    v7 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v11 = *(v6 + 8 * v4);
      result = sub_1A524EC84();
      v13 = result & v7;
      v14 = (result & v7) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v7);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (*(v17 + 8 * v13) != v11)
        {
          v13 = (v13 + 1) & v7;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(v17 + 8 * v13) = v11;
        v8 = *(v3 + 16);
        v9 = __OFADD__(v8, 1);
        v10 = v8 + 1;
        if (v9)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v10;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

void sub_1A49E1250(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A49E12D4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A49E131C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1A49E1384()
{
  if (!qword_1EB120538)
  {
    v0 = sub_1A524E3E4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB120538);
    }
  }
}

void sub_1A49E13E0(unint64_t a1)
{
  if (a1 >= 3)
  {
    if (a1 == 3)
    {
      v6 = [objc_opt_self() globalSession];
      [v6 releaseCachedResources];
    }

    else
    {
      sub_1A524E404();

      v2 = PXApplicationVisibilityStateDescription(a1);
      v3 = sub_1A524C674();
      v5 = v4;

      MEMORY[0x1A5907B60](v3, v5);

      sub_1A524E6E4();
      __break(1u);
    }
  }
}

id VisionKitUtilities.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id VisionKitUtilities.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VisionKitUtilities();
  return objc_msgSendSuper2(&v2, sel_init);
}

id VisionKitUtilities.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VisionKitUtilities();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1A49E195C(void *a1)
{
  v2 = [a1 allowsPreviewHeader] ^ 1;

  return [a1 setAllowsPreviewHeader_];
}

void sub_1A49E1A84(double a1)
{
  sub_1A49E2418(0, a1);
  MEMORY[0x1EEE9AC00](v1 - 8);
  sub_1A524C1D4();
}

id PhotosGridTogglePreviewHeaderActionPerformer.__allocating_init(viewModel:actionType:)(void *a1, uint64_t a2)
{
  v4 = objc_allocWithZone(v2);
  v5 = sub_1A524C634();

  v6 = [v4 initWithViewModel:a1 actionType:v5];

  return v6;
}

id PhotosGridTogglePreviewHeaderActionPerformer.init(viewModel:actionType:)(void *a1, uint64_t a2)
{
  v4 = sub_1A524C634();

  v7.receiver = v2;
  v7.super_class = type metadata accessor for PhotosGridTogglePreviewHeaderActionPerformer();
  v5 = objc_msgSendSuper2(&v7, sel_initWithViewModel_actionType_, a1, v4);

  return v5;
}

id PhotosGridTogglePreviewHeaderActionPerformer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhotosGridTogglePreviewHeaderActionPerformer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1A49E212C()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB15B6D0);
  __swift_project_value_buffer(v0, qword_1EB15B6D0);
  sub_1A5246EF4();
}

void sub_1A49E2418(uint64_t a1, double a2)
{
  if (!qword_1EB120E60)
  {
    sub_1A524C1D4();
  }
}

uint64_t sub_1A49E2470(uint64_t a1, double a2)
{
  sub_1A49E2418(0, a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A49E24D4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  KeyPath = swift_getKeyPath();
  type metadata accessor for PhotosSceneOrientation(0);
  sub_1A49E31E8(0, &unk_1EB124980, type metadata accessor for PhotosSceneOrientation.NotificationObserver, MEMORY[0x1E697DA80]);
  sub_1A5247C84();
  swift_getKeyPath();
  sub_1A49E3044();
  sub_1A52415D4();

  v5 = *(v10 + 24);

  if (v5 >= 3)
  {
    type metadata accessor for PXUserInterfaceOrientation(0);
    sub_1A524EB44();
    __break(1u);
  }

  else
  {
    v6 = qword_1A537B328[v5];
    sub_1A49E309C(0);
    (*(*(v7 - 8) + 16))(a2, a1, v7);
    sub_1A49E3150(0);
    v9 = (a2 + *(v8 + 36));
    *v9 = KeyPath;
    v9[1] = v6;
  }
}

uint64_t sub_1A49E2648(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for SceneOrientationModifier(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for PhotosSceneOrientation(0);
  type metadata accessor for PhotosSceneOrientation.NotificationObserver(0);
  sub_1A5247C74();
  MEMORY[0x1A5906490](v7, a2, v5, a3);
  return sub_1A49E324C(v7);
}

uint64_t sub_1A49E276C@<X0>(uint64_t *a2@<X8>)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  type metadata accessor for PhotosSceneOrientation.NotificationObserver(0);
  v4 = swift_allocObject();
  result = sub_1A49E282C(Strong);
  *a2 = v4;
  return result;
}

uint64_t sub_1A49E282C(void *a1)
{
  v2 = v1;
  swift_unknownObjectWeakInit();
  *(v2 + 24) = 1;
  sub_1A5241604();
  v4 = a1;
  sub_1A49E2B5C(a1);
  v5 = [objc_opt_self() defaultCenter];
  v6 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_1A49E3860;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C7C848;
  aBlock[3] = &block_descriptor_319;
  v7 = _Block_copy(aBlock);

  v8 = [v5 addObserverForName:@"PXLemonadeWindowSceneDidUpdateNotification" object:0 queue:0 usingBlock:v7];
  _Block_release(v7);
  swift_unknownObjectRelease();

  v9 = sub_1A49E3358();
  swift_getKeyPath();
  aBlock[0] = v2;
  sub_1A49E3044();
  sub_1A52415D4();

  if (*(v2 + 24) != v9)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    aBlock[0] = v2;
    sub_1A52415C4();
  }

  return v2;
}

double sub_1A49E2A88(uint64_t a1)
{
  if (*(v1 + 24) != a1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A49E3044();
    sub_1A52415C4();
  }

  return result;
}

void sub_1A49E2B5C(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    if (!a1)
    {
      goto LABEL_6;
    }

LABEL_10:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A49E3044();
    sub_1A52415C4();

    return;
  }

  v3 = Strong;
  if (!a1)
  {

    goto LABEL_10;
  }

  sub_1A3D63AC0(0, v2);
  v4 = v3;
  v5 = sub_1A524DBF4();

  if ((v5 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_6:
  swift_unknownObjectWeakAssign();
}

double sub_1A49E2CC4(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = sub_1A49E3358();
    swift_getKeyPath();
    sub_1A49E3044();
    sub_1A52415D4();

    if (*(v3 + 24) != v4)
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_1A52415C4();
    }
  }

  return result;
}

uint64_t sub_1A49E2E14()
{
  swift_getKeyPath();
  sub_1A49E3044();
  sub_1A52415D4();

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_1A49E2E88@<X0>(uint64_t *a2@<X8>)
{
  swift_getKeyPath();
  sub_1A49E3044();
  sub_1A52415D4();

  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

void sub_1A49E2F04(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1A49E2B5C(v1);
}

uint64_t sub_1A49E2F34()
{
  swift_getKeyPath();
  sub_1A49E3044();
  sub_1A52415D4();

  return *(v0 + 24);
}

void sub_1A49E2FA4(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A49E3044();
  sub_1A52415D4();

  *a2 = *(v3 + 24);
}

unint64_t sub_1A49E3044()
{
  result = qword_1EB1914F8;
  if (!qword_1EB1914F8)
  {
    type metadata accessor for PhotosSceneOrientation.NotificationObserver(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1914F8);
  }

  return result;
}

void sub_1A49E309C(uint64_t a1)
{
  if (!qword_1EB127C38)
  {
    type metadata accessor for SceneOrientationModifier(255);
    sub_1A49E3698(&qword_1EB129E48, type metadata accessor for SceneOrientationModifier, &unk_1A537B1A0);
    v1 = sub_1A52499C4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB127C38);
    }
  }
}

void sub_1A49E3150(uint64_t a1)
{
  if (!qword_1EB1287D0)
  {
    sub_1A49E309C(255);
    sub_1A49E31E8(255, &qword_1EB127738, type metadata accessor for PXUserInterfaceOrientation, MEMORY[0x1E6980A08]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1287D0);
    }
  }
}

void sub_1A49E31E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A49E324C(uint64_t a1)
{
  v2 = type metadata accessor for SceneOrientationModifier(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A49E32EC(uint64_t a1)
{
  result = type metadata accessor for PhotosSceneOrientation(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1A49E3358()
{
  swift_getKeyPath();
  sub_1A49E3044();
  sub_1A52415D4();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v1 = Strong, v2 = [Strong viewIfLoaded], v1, v2) && (v3 = objc_msgSend(v2, sel_window), v2, v3) && (v4 = objc_msgSend(v3, sel_windowScene), v3, v4) && (v5 = objc_msgSend(v4, sel_effectiveGeometry), v4, v6 = objc_msgSend(v5, sel_interfaceOrientation), v5, (v6 - 1) <= 3))
  {
    return qword_1A537B340[(v6 - 1)];
  }

  else
  {
    return 1;
  }
}

uint64_t sub_1A49E3494()
{
  MEMORY[0x1A590F020](v0 + 16);
  v1 = OBJC_IVAR____TtCV12PhotosUICoreP33_0353D17CBE1C867E9E0FB31C003D882622PhotosSceneOrientation20NotificationObserver___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1A49E3540(uint64_t a1)
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

unint64_t sub_1A49E35E8()
{
  result = qword_1EB1287D8;
  if (!qword_1EB1287D8)
  {
    sub_1A49E3150(255);
    sub_1A49E3698(&qword_1EB127C40, sub_1A49E309C, MEMORY[0x1E697FDF8]);
    sub_1A49E36E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1287D8);
  }

  return result;
}

uint64_t sub_1A49E3698(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1A49E36E0()
{
  result = qword_1EB127740;
  if (!qword_1EB127740)
  {
    sub_1A49E31E8(255, &qword_1EB127738, type metadata accessor for PXUserInterfaceOrientation, MEMORY[0x1E6980A08]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB127740);
  }

  return result;
}

void sub_1A49E3790(uint64_t a1)
{
  sub_1A49E31E8(319, &unk_1EB124980, type metadata accessor for PhotosSceneOrientation.NotificationObserver, MEMORY[0x1E697DA80]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1A49E3860()
{
  v0 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  aBlock[4] = sub_1A49E394C;
  aBlock[5] = v0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_43_1;
  _Block_copy(aBlock);

  px_dispatch_on_main_queue();
}

uint64_t SearchAIStatus.hashValue.getter()
{
  v1 = *v0;
  sub_1A524EC94();
  MEMORY[0x1A590A010](v1);
  return sub_1A524ECE4();
}

void PhotosSearchAIStatus.status.getter(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_1A49E5A60(&qword_1EB125F70, type metadata accessor for PhotosSearchAIStatus, &protocol conformance descriptor for PhotosSearchAIStatus);
  sub_1A52415D4();

  *a1 = *(v1 + 16);
}

void sub_1A49E3A90(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A49E5A60(&qword_1EB125F70, type metadata accessor for PhotosSearchAIStatus, &protocol conformance descriptor for PhotosSearchAIStatus);
  sub_1A52415D4();

  *a2 = *(v3 + 16);
}

uint64_t type metadata accessor for PhotosSearchAIStatus(uint64_t a1)
{
  result = qword_1EB173F00;
  if (!qword_1EB173F00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_1A49E3BBC(unsigned __int8 *a1)
{
  if (*(v1 + 16) != *a1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A49E5A60(&qword_1EB125F70, type metadata accessor for PhotosSearchAIStatus, &protocol conformance descriptor for PhotosSearchAIStatus);
    sub_1A52415C4();
  }

  return result;
}

void sub_1A49E3CC4()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB173F18);
  __swift_project_value_buffer(v0, qword_1EB173F18);
  sub_1A3C3335C();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t PhotosSearchAIStatus.__allocating_init()()
{
  v0 = swift_allocObject();
  PhotosSearchAIStatus.init()();
  return v0;
}

uint64_t PhotosSearchAIStatus.init()()
{
  *(v0 + 16) = 4;
  v1 = OBJC_IVAR____TtC12PhotosUICore20PhotosSearchAIStatus_availability;
  v2 = sub_1A5241DF4();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC12PhotosUICore20PhotosSearchAIStatus_notification) = 0;
  sub_1A5241604();
  v3 = [objc_opt_self() sharedScheduler];
  v4 = swift_allocObject();
  swift_weakInit();
  v7[4] = sub_1A49E41B8;
  v7[5] = v4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_1A3C2E0D0;
  v7[3] = &block_descriptor_320;
  v5 = _Block_copy(v7);

  [v3 scheduleTaskWithQoS:1 block:v5];
  _Block_release(v5);

  return v0;
}

double sub_1A49E3EF4(uint64_t a1)
{
  v1 = sub_1A5241DC4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v19[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1A5241DA4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A49E5AA8(0, &qword_1EB124F98, MEMORY[0x1E69A12E0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v19[-v10];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    sub_1A524C674();
    (*(v2 + 104))(v4, *MEMORY[0x1E69A12A0], v1);
    sub_1A5241D94();
    sub_1A5241DD4();
    (*(v6 + 8))(v8, v5);
    v15 = sub_1A5241DF4();
    (*(*(v15 - 8) + 56))(v11, 0, 1, v15);
    v16 = OBJC_IVAR____TtC12PhotosUICore20PhotosSearchAIStatus_availability;
    swift_beginAccess();
    sub_1A49E58DC(v11, v14 + v16, v17);
    swift_endAccess();
    sub_1A49E4604();
    sub_1A49E41C0(v18);
  }

  return result;
}

double sub_1A49E41C0(double a1)
{
  v2 = v1;
  sub_1A49E5AA8(0, &qword_1EB124F98, MEMORY[0x1E69A12E0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v20[-v4];
  v6 = sub_1A5241DF4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = OBJC_IVAR____TtC12PhotosUICore20PhotosSearchAIStatus_availability;
  swift_beginAccess();
  sub_1A49E5970(v2 + v10, v5, v11);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1A49E55EC(v5, v12);
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    swift_getKeyPath();
    v21 = v2;
    sub_1A49E5A60(&qword_1EB125F70, type metadata accessor for PhotosSearchAIStatus, &protocol conformance descriptor for PhotosSearchAIStatus);
    sub_1A52415D4();

    if (*(v2 + 16) != 2)
    {
      swift_allocObject();
      swift_weakInit();

      v19 = sub_1A5241DE4();

      (*(v7 + 8))(v9, v6);

      *(v2 + OBJC_IVAR____TtC12PhotosUICore20PhotosSearchAIStatus_notification) = v19;

      return result;
    }

    (*(v7 + 8))(v9, v6);
  }

  if (*(v2 + 16) != 2)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    *&v20[-16] = v2;
    v20[-8] = 2;
    v21 = v2;
    sub_1A49E5A60(&qword_1EB125F70, type metadata accessor for PhotosSearchAIStatus, &protocol conformance descriptor for PhotosSearchAIStatus);
    sub_1A52415C4();
  }

  if (qword_1EB173F10 != -1)
  {
    swift_once();
  }

  v14 = sub_1A5246F24();
  __swift_project_value_buffer(v14, qword_1EB173F18);
  v15 = sub_1A5246F04();
  v16 = sub_1A524D264();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_1A3C1C000, v15, v16, "Not observing Apple Intelligence changes because device is unsupported", v17, 2u);
    MEMORY[0x1A590EEC0](v17, -1, -1);
  }

  return result;
}

uint64_t sub_1A49E4604()
{
  v0 = sub_1A524BEE4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = aBlock - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A524BF64();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C29A58(0, v8);
  v9 = sub_1A524D474();
  v10 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_1A49E5A58;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_12_11;
  v11 = _Block_copy(aBlock);

  sub_1A524BF14();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1A49E5A60(&qword_1EB12B1E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1A49E5AA8(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1A3C5DE88();
  sub_1A524E224();
  MEMORY[0x1A5908800](0, v7, v3, v11);
  _Block_release(v11);

  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

double sub_1A49E48E0(uint64_t a1)
{
  v1 = sub_1A5241D54();
  v61 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v58 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A5241D84();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A49E5AA8(0, &qword_1EB124F98, MEMORY[0x1E69A12E0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v58 - v9;
  v11 = sub_1A5241DF4();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v60 = v1;
    v17 = v14;
    v18 = v11;
    v19 = OBJC_IVAR____TtC12PhotosUICore20PhotosSearchAIStatus_availability;
    v20 = Strong;
    swift_beginAccess();
    sub_1A49E5970(v20 + v19, v10, v21);
    if ((*(v12 + 48))(v10, 1, v18) == 1)
    {

      sub_1A49E55EC(v10, v22);
      return result;
    }

    v58 = v18;
    v59 = v20;
    v23 = v18;
    v24 = v17;
    (*(v12 + 32))(v17, v10, v23);
    sub_1A5241DB4();
    v25 = (*(v5 + 88))(v7, v4);
    v26 = *MEMORY[0x1E69A0EF8];
    (*(v5 + 8))(v7, v4);
    if (v25 == v26)
    {
      if (qword_1EB173F10 != -1)
      {
        swift_once();
      }

      v27 = sub_1A5246F24();
      __swift_project_value_buffer(v27, qword_1EB173F18);
      v28 = sub_1A5246F04();
      v29 = sub_1A524D264();
      v30 = os_log_type_enabled(v28, v29);
      v31 = v58;
      if (v30)
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_1A3C1C000, v28, v29, "Apple Intelligence status is restricted", v32, 2u);
        MEMORY[0x1A590EEC0](v32, -1, -1);
      }

      v33 = v59;
      if (*(v59 + 16) != 3)
      {
        KeyPath = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](KeyPath);
        *(&v58 - 2) = v33;
        *(&v58 - 8) = 3;
        v62 = v33;
        sub_1A49E5A60(&qword_1EB125F70, type metadata accessor for PhotosSearchAIStatus, &protocol conformance descriptor for PhotosSearchAIStatus);
        sub_1A52415C4();

        (*(v12 + 8))(v24, v31);
LABEL_41:

        return result;
      }

      (*(v12 + 8))(v24, v31);
      v34 = 3;
LABEL_36:
      *(v33 + 16) = v34;
      goto LABEL_41;
    }

    v35 = sub_1A49E5B0C();
    if (!v35)
    {
      (*(v12 + 8))(v17, v58);

      return result;
    }

    v36 = *(v35 + 16);
    if (!v36)
    {

      if (qword_1EB173F10 != -1)
      {
        swift_once();
      }

      v46 = sub_1A5246F24();
      __swift_project_value_buffer(v46, qword_1EB173F18);
      v47 = sub_1A5246F04();
      v48 = sub_1A524D264();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        *v49 = 0;
        _os_log_impl(&dword_1A3C1C000, v47, v48, "Apple Intelligence status is on", v49, 2u);
        MEMORY[0x1A590EEC0](v49, -1, -1);
      }

      v50 = v59;
      if (!*(v59 + 16))
      {
        (*(v12 + 8))(v24, v58);
        *(v50 + 16) = 0;
        goto LABEL_41;
      }

      v51 = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](v51);
      *(&v58 - 2) = v50;
      *(&v58 - 8) = 0;
      v62 = v50;
      sub_1A49E5A60(&qword_1EB125F70, type metadata accessor for PhotosSearchAIStatus, &protocol conformance descriptor for PhotosSearchAIStatus);
      goto LABEL_40;
    }

    if (v36 == 1)
    {
      v37 = v60;
      v38 = v61;
      v39 = v35;
      (*(v61 + 104))(v3, *MEMORY[0x1E69A1010], v60);
      v40 = sub_1A49E5354(v3, v39);

      (*(v38 + 8))(v3, v37);
      if (v40)
      {
        if (qword_1EB173F10 != -1)
        {
          swift_once();
        }

        v41 = sub_1A5246F24();
        __swift_project_value_buffer(v41, qword_1EB173F18);
        v42 = sub_1A5246F04();
        v43 = sub_1A524D264();
        if (os_log_type_enabled(v42, v43))
        {
          v44 = swift_slowAlloc();
          *v44 = 0;
          _os_log_impl(&dword_1A3C1C000, v42, v43, "Apple Intelligence status is off", v44, 2u);
          MEMORY[0x1A590EEC0](v44, -1, -1);
        }

        v33 = v59;
        if (*(v59 + 16) == 1)
        {
          (*(v12 + 8))(v24, v58);
          v34 = 1;
          goto LABEL_36;
        }

        v57 = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](v57);
        *(&v58 - 2) = v33;
        *(&v58 - 8) = 1;
        v62 = v33;
        sub_1A49E5A60(&qword_1EB125F70, type metadata accessor for PhotosSearchAIStatus, &protocol conformance descriptor for PhotosSearchAIStatus);
LABEL_40:
        sub_1A52415C4();

        (*(v12 + 8))(v24, v58);
        goto LABEL_41;
      }
    }

    else
    {
    }

    if (qword_1EB173F10 != -1)
    {
      swift_once();
    }

    v52 = sub_1A5246F24();
    __swift_project_value_buffer(v52, qword_1EB173F18);
    v53 = sub_1A5246F04();
    v54 = sub_1A524D264();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&dword_1A3C1C000, v53, v54, "Apple Intelligence status is unsupported", v55, 2u);
      MEMORY[0x1A590EEC0](v55, -1, -1);
    }

    v33 = v59;
    if (*(v59 + 16) == 2)
    {
      (*(v12 + 8))(v24, v58);
      v34 = 2;
      goto LABEL_36;
    }

    v56 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v56);
    *(&v58 - 2) = v33;
    *(&v58 - 8) = 2;
    v62 = v33;
    sub_1A49E5A60(&qword_1EB125F70, type metadata accessor for PhotosSearchAIStatus, &protocol conformance descriptor for PhotosSearchAIStatus);
    goto LABEL_40;
  }

  return result;
}