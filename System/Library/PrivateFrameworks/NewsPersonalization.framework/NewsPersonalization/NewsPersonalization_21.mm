void sub_1C6D1B5C8(uint64_t a1)
{
  if (!qword_1EDCEA790)
  {
    sub_1C6B0C69C(255, &qword_1EDCEA500, 0x1E69B5480);
    v1 = sub_1C6D78250();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDCEA790);
    }
  }
}

void sub_1C6D1B630(uint64_t a1)
{
  if (!qword_1EDCEA780)
  {
    sub_1C6B0C69C(255, &qword_1EDCEA4B0, 0x1E69B5460);
    v1 = sub_1C6D78250();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDCEA780);
    }
  }
}

void sub_1C6D1B6D4(uint64_t a1, uint64_t a2, void (**a3)(void, void))
{
  v45 = a3;
  sub_1C6BAB388(0);
  v54 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v53 = v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = objc_opt_self();
  swift_beginAccess();
  v55 = a2;

  sub_1C6D78230();

  v10 = v59;
  v11 = [v9 featuresFromPersonalizingItem:a1 personalizationTreatment:v59];

  v44[1] = sub_1C6B0C69C(0, &qword_1EDCDF860, 0x1E69B5450);
  v12 = sub_1C6D79780();

  sub_1C6B1B44C(0, &qword_1EDCEA420, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C6D839E0;
  *(inited + 32) = [objc_allocWithZone(MEMORY[0x1E69B51E0]) init];
  v59 = v12;
  sub_1C6B39044(inited);
  v14 = v59;
  if (!(v59 >> 62))
  {
    v56 = v59 & 0xFFFFFFFFFFFFFF8;
    v15 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v15)
    {
      goto LABEL_3;
    }

LABEL_34:

    sub_1C6B0F7A8(0, &qword_1EDCDF840, &protocolRef_FCPersonalizationAggregate);
    sub_1C6B0C790(&qword_1EDCDF850, &qword_1EDCDF860, 0x1E69B5450, MEMORY[0x1E69E81B8]);
    v43 = sub_1C6D79480();
    (v45)[2](v45, v43);

    return;
  }

LABEL_33:
  v56 = v14 & 0xFFFFFFFFFFFFFF8;
  v15 = sub_1C6D79E90();
  if (!v15)
  {
    goto LABEL_34;
  }

LABEL_3:
  v16 = 0;
  v51 = OBJC_IVAR____TtC19NewsPersonalization20XavierScoringService_aggregateContext;
  v52 = v14 & 0xC000000000000001;
  v50 = *MEMORY[0x1E69E3228];
  v48 = (v6 + 8);
  v49 = (v6 + 104);
  v17 = MEMORY[0x1E69E7CC8];
  v47 = v14;
  while (2)
  {
    v46 = v17;
    while (1)
    {
      if (v52)
      {
        v18 = MEMORY[0x1CCA56240](v16, v14);
      }

      else
      {
        if (v16 >= *(v56 + 16))
        {
          goto LABEL_32;
        }

        v18 = *(v14 + 8 * v16 + 32);
      }

      v19 = v18;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      v57 = v16 + 1;
      v20 = v15;
      v6 = *(v55 + v51);
      v58 = v6;

      v21 = [v19 personalizationIdentifier];
      sub_1C6D795A0();

      v22 = v53;
      v23 = v54;
      (*v49)(v53, v50, v54);
      sub_1C6B14DC0(0);
      sub_1C6D1C040(&qword_1EC1D96B8, 255, sub_1C6B14DC0, MEMORY[0x1E69E3298]);
      sub_1C6D761E0();

      (*v48)(v22, v23);

      v24 = v59;
      if (v59)
      {
        break;
      }

      ++v16;
      v15 = v20;
      v14 = v47;
      if (v57 == v20)
      {
        goto LABEL_34;
      }
    }

    v25 = v46;
    v26 = v19;
    if ((v46 & 0xC000000000000001) != 0)
    {
      if (v46 >= 0)
      {
        v25 = (v46 & 0xFFFFFFFFFFFFFF8);
      }

      v27 = v59;
      v28 = sub_1C6D79E90();
      if (__OFADD__(v28, 1))
      {
        goto LABEL_36;
      }

      v25 = sub_1C6D11CD4(v25, v28 + 1);
    }

    else
    {
      v29 = v59;
    }

    v30 = v25;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v59 = v25;
    v32 = sub_1C6B650DC(v19);
    v34 = v25[2];
    v35 = (v33 & 1) == 0;
    v36 = __OFADD__(v34, v35);
    v37 = v34 + v35;
    if (v36)
    {
      __break(1u);
LABEL_36:
      __break(1u);
      break;
    }

    v6 = v33;
    if (v30[3] < v37)
    {
      sub_1C6B72614(v37, isUniquelyReferenced_nonNull_native);
      v32 = sub_1C6B650DC(v19);
      if ((v6 & 1) != (v38 & 1))
      {
        goto LABEL_38;
      }

LABEL_24:
      v17 = v59;
      if (v6)
      {
LABEL_25:
        v39 = v17[7];
        v6 = *(v39 + 8 * v32);
        *(v39 + 8 * v32) = v24;

        swift_unknownObjectRelease();
        goto LABEL_29;
      }

      goto LABEL_27;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_24;
    }

    v40 = v32;
    sub_1C6B75060();
    v32 = v40;
    v17 = v59;
    if (v6)
    {
      goto LABEL_25;
    }

LABEL_27:
    v17[(v32 >> 6) + 8] |= 1 << v32;
    *(v17[6] + 8 * v32) = v26;
    *(v17[7] + 8 * v32) = v24;

    v41 = v17[2];
    v36 = __OFADD__(v41, 1);
    v42 = v41 + 1;
    if (!v36)
    {
      v17[2] = v42;
LABEL_29:
      v15 = v20;
      v16 = v57;
      v14 = v47;
      if (v57 != v20)
      {
        continue;
      }

      goto LABEL_34;
    }

    break;
  }

  __break(1u);
LABEL_38:
  _Block_release(v45);
  sub_1C6D7A1C0();
  __break(1u);
}

uint64_t sub_1C6D1BD0C(uint64_t a1, uint64_t a2, double a3)
{
  sub_1C6D1BE00(0, &unk_1EDCE6340, MEMORY[0x1E6969B18]);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1C6D1BDAC()
{
  result = qword_1EDCDFC58;
  if (!qword_1EDCDFC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCDFC58);
  }

  return result;
}

void sub_1C6D1BE00(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C6D79C00();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1C6D1BE54(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v8)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1C6D1BEDC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1C6D1BF3C(uint64_t a1)
{
  if (!qword_1EDCE64F8)
  {
    sub_1C6D1BE54(255, &qword_1EDCE7B20, MEMORY[0x1E6968FB0], sub_1C6B68D1C, "url size ");
    v1 = sub_1C6D79DB0();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDCE64F8);
    }
  }
}

uint64_t sub_1C6D1BFCC(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t), uint64_t a6)
{
  sub_1C6D1BE54(0, a3, a4, a5, a6);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_1C6D1C040(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_1C6D1C088(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C6D1C108(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  sub_1C6B1ABB8(0);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C6D1C1A4, 0, 0);
}

void sub_1C6D1C1A4()
{
  v1 = *(*(v0 + 80) + 16);
  if (v1 >> 62)
  {
    v18 = *(*(v0 + 80) + 16);
    v19 = sub_1C6D79E90();
    v1 = v18;
    v2 = v19;
    if (v19)
    {
      goto LABEL_3;
    }

LABEL_18:

    v20 = *(v0 + 8);

    v20();
    return;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_18;
  }

LABEL_3:
  if (v2 >= 1)
  {
    v3 = 0;
    v22 = **(v0 + 72);
    v23 = v1;
    v21 = v1 & 0xC000000000000001;
    while (1)
    {
      if (v21)
      {
        v6 = MEMORY[0x1CCA56240](v3);
      }

      else
      {
        v6 = *(v1 + 8 * v3 + 32);
        swift_unknownObjectRetain();
      }

      v8 = *(v0 + 88);
      v7 = *(v0 + 96);
      v9 = sub_1C6D79880();
      v10 = *(v9 - 8);
      (*(v10 + 56))(v7, 1, 1, v9);
      v11 = swift_allocObject();
      v11[2] = 0;
      v12 = v11 + 2;
      v11[3] = 0;
      v11[4] = v6;
      sub_1C6BE15F4(v7, v8);
      LODWORD(v8) = (*(v10 + 48))(v8, 1, v9);
      swift_unknownObjectRetain();
      v13 = *(v0 + 88);
      if (v8 == 1)
      {
        sub_1C6B1AB5C(*(v0 + 88));
        if (!*v12)
        {
          goto LABEL_14;
        }
      }

      else
      {
        sub_1C6D79870();
        (*(v10 + 8))(v13, v9);
        if (!*v12)
        {
LABEL_14:
          v14 = 0;
          v16 = 0;
          goto LABEL_15;
        }
      }

      swift_getObjectType();
      swift_unknownObjectRetain();
      v14 = sub_1C6D79840();
      v16 = v15;
      swift_unknownObjectRelease();
LABEL_15:
      v17 = swift_allocObject();
      *(v17 + 16) = &unk_1C6D947A0;
      *(v17 + 24) = v11;

      if (v16 | v14)
      {
        v4 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v14;
        *(v0 + 40) = v16;
      }

      else
      {
        v4 = 0;
      }

      ++v3;
      v5 = *(v0 + 96);
      *(v0 + 48) = 1;
      *(v0 + 56) = v4;
      *(v0 + 64) = v22;
      swift_task_create();

      swift_unknownObjectRelease();

      sub_1C6B1AB5C(v5);
      v1 = v23;
      if (v2 == v3)
      {
        goto LABEL_18;
      }
    }
  }

  __break(1u);
}

uint64_t sub_1C6D1C504()
{
  v1 = v0[18];
  v0[2] = v0;
  v0[3] = sub_1C6D1C608;
  v2 = swift_continuation_init();
  sub_1C6D1CDEC();
  v0[17] = v3;
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1C6D2FAFC;
  v0[13] = &block_descriptor_13;
  v0[14] = v2;
  [v1 prepareFavorites_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1C6D1C608()
{

  return MEMORY[0x1EEE6DFA0](sub_1C6D1C6E8, 0, 0);
}

uint64_t sub_1C6D1C86C(const void *a1, uint64_t a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = _Block_copy(a1);

  return MEMORY[0x1EEE6DFA0](sub_1C6D1C8E8, 0, 0);
}

uint64_t sub_1C6D1C8E8()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1C6D1C9B4;

  return MEMORY[0x1EEE6DBF8]();
}

uint64_t sub_1C6D1C9B4()
{

  return MEMORY[0x1EEE6DFA0](sub_1C6D1CAB0, 0, 0);
}

uint64_t sub_1C6D1CAB0()
{
  v1 = *(v0 + 24);

  v1[2](v1);
  _Block_release(v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1C6D1CB28()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1C6BE1AB0;

  return sub_1C6D1C86C(v2, v3);
}

uint64_t sub_1C6D1CBD4(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1C6BB6A40;

  return sub_1C6D1C108(a1, a2, v2);
}

uint64_t sub_1C6D1CC80(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1C6BE1AB0;

  return sub_1C6D1C4E4(a1, v4, v5, v6);
}

uint64_t sub_1C6D1CD34(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C6BB6A40;

  return sub_1C6BE1658(a1, v4);
}

void sub_1C6D1CDEC()
{
  if (!qword_1EDCDF940)
  {
    v0 = sub_1C6D79890();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCDF940);
    }
  }
}

void sub_1C6D1CE50(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a5@<X8>)
{
  v33[1] = a2;
  v8 = sub_1C6D77990();
  v33[0] = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v34 = v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D1D2A8(0);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1C6D77290();
  v19 = MEMORY[0x1EEE9AC00](v17, v18);
  (*(v21 + 16))(v33 - v20, a1, v17, v19);
  if (swift_dynamicCast())
  {
    (*(v13 + 8))(v16, v12);
    v22 = sub_1C6D77270();
    v23 = sub_1C6D77330();
    v25 = v24;

    if (!v5)
    {
      sub_1C6D1D33C(&qword_1EC1D6A40, MEMORY[0x1E69B4840], MEMORY[0x1E69B4850]);
      v26 = v34;
      sub_1C6D75AF0();
      a5[3] = v8;
      v28 = MEMORY[0x1E69B4840];
      a5[4] = sub_1C6D1D33C(&qword_1EC1D96D8, MEMORY[0x1E69B4840], &protocol conformance descriptor for ArticleShareEvent.Model);
      a5[5] = sub_1C6D1D33C(&qword_1EC1D96E0, v28, &protocol conformance descriptor for ArticleShareEvent.Model);
      boxed_opaque_existential_2 = __swift_allocate_boxed_opaque_existential_2(a5);
      (*(v33[0] + 32))(boxed_opaque_existential_2, v26, v8);
      sub_1C6B1C9F0(v23, v25);
      v30 = *MEMORY[0x1E69E3648];
      v31 = sub_1C6D76F90();
      v32 = *(v31 - 8);
      (*(v32 + 104))(a5, v30, v31);
      (*(v32 + 56))(a5, 0, 1, v31);
    }
  }

  else
  {
    v27 = sub_1C6D76F90();
    (*(*(v27 - 8) + 56))(a5, 1, 1, v27);
  }
}

void sub_1C6D1D2A8(uint64_t a1)
{
  if (!qword_1EDCE6080)
  {
    sub_1C6D779A0();
    sub_1C6D1D33C(&qword_1EDCE5F18, MEMORY[0x1E69B4858], MEMORY[0x1E69B4828]);
    v1 = sub_1C6D77290();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDCE6080);
    }
  }
}

uint64_t sub_1C6D1D33C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t Com_Apple_News_Personalization_ViewActionType.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 0xD;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_1C6D1D3DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6C0FC3C();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1C6D1D428()
{
  v0 = sub_1C6D78D20();
  __swift_allocate_value_buffer(v0, qword_1EDCE5240);
  __swift_project_value_buffer(v0, qword_1EDCE5240);
  sub_1C6B4A290(0);
  sub_1C6B3FD2C(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1C6D947E0;
  v5 = v33 + v4;
  v6 = v33 + v4 + *(v2 + 56);
  *(v33 + v4) = 0;
  *v6 = "VIEW_ACTION_TYPE_UNKNOWN";
  *(v6 + 8) = 24;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C6D78D00();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v33 + v4 + v3 + *(v2 + 56);
  *(v5 + v3) = 1;
  *v10 = "VIEW_ACTION_TYPE_APP_LAUNCH";
  *(v10 + 8) = 27;
  *(v10 + 16) = 2;
  v9();
  v11 = (v33 + v4 + 2 * v3);
  v12 = v11 + *(v2 + 56);
  *v11 = 2;
  *v12 = "VIEW_ACTION_TYPE_SWIPE";
  *(v12 + 1) = 22;
  v12[16] = 2;
  v9();
  v13 = (v33 + v4 + 3 * v3);
  v14 = v13 + *(v2 + 56);
  *v13 = 3;
  *v14 = "VIEW_ACTION_TYPE_HEADLINE_TAP";
  *(v14 + 1) = 29;
  v14[16] = 2;
  v9();
  v15 = (v33 + v4 + 4 * v3);
  v16 = v15 + *(v2 + 56);
  *v15 = 4;
  *v16 = "VIEW_ACTION_TYPE_ISSUE_TAP";
  *(v16 + 1) = 26;
  v16[16] = 2;
  v9();
  v17 = (v33 + v4 + 5 * v3);
  v18 = v17 + *(v2 + 56);
  *v17 = 5;
  *v18 = "VIEW_ACTION_TYPE_DEEPLINK";
  *(v18 + 1) = 25;
  v18[16] = 2;
  v9();
  v19 = (v33 + v4 + 6 * v3);
  v20 = v19 + *(v2 + 56);
  *v19 = 6;
  *v20 = "VIEW_ACTION_TYPE_AFFORDANCE_TAP";
  *(v20 + 1) = 31;
  v20[16] = 2;
  v9();
  v21 = (v33 + v4 + 7 * v3);
  v22 = v21 + *(v2 + 56);
  *v21 = 7;
  *v22 = "VIEW_ACTION_TYPE_RETURN_FROM_ARTICLE";
  *(v22 + 1) = 36;
  v22[16] = 2;
  v9();
  v23 = v33 + v4 + 8 * v3 + *(v2 + 56);
  *(v5 + 8 * v3) = 8;
  *v23 = "VIEW_ACTION_TYPE_USER_NAVIGATION";
  *(v23 + 8) = 32;
  *(v23 + 16) = 2;
  v9();
  v24 = (v33 + v4 + 9 * v3);
  v25 = v24 + *(v2 + 56);
  *v24 = 9;
  *v25 = "VIEW_ACTION_TYPE_OPEN_MODAL_TOC";
  *(v25 + 1) = 31;
  v25[16] = 2;
  v9();
  v26 = (v33 + v4 + 10 * v3);
  v27 = v26 + *(v2 + 56);
  *v26 = 10;
  *v27 = "VIEW_ACTION_TYPE_TOC_ARTICLE_TAP";
  *(v27 + 1) = 32;
  v27[16] = 2;
  v9();
  v28 = (v33 + v4 + 11 * v3);
  v29 = v28 + *(v2 + 56);
  *v28 = 11;
  *v29 = "VIEW_ACTION_TYPE_NOTIFICATION";
  *(v29 + 1) = 29;
  v29[16] = 2;
  v9();
  v30 = (v33 + v4 + 12 * v3);
  v31 = v30 + *(v2 + 56);
  *v30 = 12;
  *v31 = "VIEW_ACTION_TYPE_RECIPE";
  *(v31 + 1) = 23;
  v31[16] = 2;
  v9();
  return sub_1C6D78D10();
}

uint64_t static Com_Apple_News_Personalization_ViewActionType._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDCE5238 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EDCE5240);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_1C6D1D92C()
{
  result = qword_1EDCE5228;
  if (!qword_1EDCE5228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCE5228);
  }

  return result;
}

unint64_t sub_1C6D1D984()
{
  result = qword_1EDCE5218;
  if (!qword_1EDCE5218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCE5218);
  }

  return result;
}

unint64_t sub_1C6D1D9DC()
{
  result = qword_1EC1D96E8;
  if (!qword_1EC1D96E8)
  {
    sub_1C6D1DA34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D96E8);
  }

  return result;
}

void sub_1C6D1DA34()
{
  if (!qword_1EC1D96F0)
  {
    v0 = sub_1C6D79820();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC1D96F0);
    }
  }
}

unint64_t sub_1C6D1DA88()
{
  result = qword_1EDCE5220;
  if (!qword_1EDCE5220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCE5220);
  }

  return result;
}

uint64_t sub_1C6D1DADC@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDCE5238 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EDCE5240);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

id NewsAppPersonalizationAssembly.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id NewsAppPersonalizationAssembly.init()()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR___NAPAssembly_assemblies;
  sub_1C6B0BE1C(0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1C6D7EB10;
  v4 = type metadata accessor for SuggestionsAssembly();
  v5 = swift_allocObject();
  *(v3 + 56) = v4;
  *(v3 + 64) = sub_1C6B0C47C(qword_1EDCE7428, type metadata accessor for SuggestionsAssembly, &unk_1C6D952C4);
  *(v3 + 32) = v5;
  v6 = type metadata accessor for ComputeServiceAssembly();
  v7 = swift_allocObject();
  *(v3 + 96) = v6;
  *(v3 + 104) = sub_1C6B0C47C(&qword_1EDCE7168, type metadata accessor for ComputeServiceAssembly, &unk_1C6D95888);
  *(v3 + 72) = v7;
  *&v0[v2] = v3;
  v9.receiver = v0;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, sel_init);
}

id NewsAppPersonalizationAssembly.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t Com_Apple_News_Personalization_Session.startedAt.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1C6D20ABC(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Com_Apple_News_Personalization_Session(0);
  sub_1C6B823A4(v1 + *(v7 + 36), v6);
  v8 = sub_1C6D789A0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (v10(v6, 1, v8) != 1)
  {
    return (*(v9 + 32))(a1, v6, v8);
  }

  sub_1C6D78990();
  result = (v10)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1C6B82438(v6);
  }

  return result;
}

uint64_t type metadata accessor for Com_Apple_News_Personalization_Session(uint64_t a1)
{
  result = qword_1EDCE79B0;
  if (!qword_1EDCE79B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

BOOL Com_Apple_News_Personalization_Session.hasStartedAt.getter()
{
  sub_1C6D20ABC(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Com_Apple_News_Personalization_Session(0);
  sub_1C6B823A4(v0 + *(v5 + 36), v4);
  v6 = sub_1C6D789A0();
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_1C6B82438(v4);
  return v7;
}

uint64_t Com_Apple_News_Personalization_Session.startedAt.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_Personalization_Session(0) + 36);
  sub_1C6B82438(v1 + v3);
  v4 = sub_1C6D789A0();
  v7 = *(v4 - 8);
  (*(v7 + 32))(v1 + v3, a1, v4);
  v5 = *(v7 + 56);

  return v5(v1 + v3, 0, 1, v4);
}

BOOL Com_Apple_News_Personalization_Session.hasEndedAt.getter()
{
  sub_1C6D20ABC(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Com_Apple_News_Personalization_Session(0);
  sub_1C6B823A4(v0 + *(v5 + 40), v4);
  v6 = sub_1C6D789A0();
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_1C6B82438(v4);
  return v7;
}

uint64_t Com_Apple_News_Personalization_Session.endedAt.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_Personalization_Session(0) + 40);
  sub_1C6B82438(v1 + v3);
  v4 = sub_1C6D789A0();
  v7 = *(v4 - 8);
  (*(v7 + 32))(v1 + v3, a1, v4);
  v5 = *(v7 + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t Com_Apple_News_Personalization_Session.endedAt.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1C6D20ABC(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Com_Apple_News_Personalization_Session(0);
  sub_1C6B823A4(v1 + *(v7 + 40), v6);
  v8 = sub_1C6D789A0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (v10(v6, 1, v8) != 1)
  {
    return (*(v9 + 32))(a1, v6, v8);
  }

  sub_1C6D78990();
  result = (v10)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1C6B82438(v6);
  }

  return result;
}

uint64_t Com_Apple_News_Personalization_Session.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Com_Apple_News_Personalization_Session.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_1C6D1E4CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C6D20ABC(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Com_Apple_News_Personalization_Session(0);
  sub_1C6B823A4(a1 + *(v8 + 36), v7);
  v9 = sub_1C6D789A0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (v11(v7, 1, v9) != 1)
  {
    return (*(v10 + 32))(a2, v7, v9);
  }

  sub_1C6D78990();
  result = (v11)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1C6B82438(v7);
  }

  return result;
}

uint64_t sub_1C6D1E638(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6D789A0();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v9, a1, v4, v7);
  v10 = *(type metadata accessor for Com_Apple_News_Personalization_Session(0) + 36);
  sub_1C6B82438(a2 + v10);
  (*(v5 + 32))(a2 + v10, v9, v4);
  return (*(v5 + 56))(a2 + v10, 0, 1, v4);
}

uint64_t (*Com_Apple_News_Personalization_Session.startedAt.modify(void *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6D20ABC(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = sub_1C6D789A0();
  v5[2] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v5[3] = v11;
  v13 = *(v11 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  v5[5] = v14;
  v16 = *(type metadata accessor for Com_Apple_News_Personalization_Session(0) + 36);
  *(v5 + 12) = v16;
  sub_1C6B823A4(v1 + v16, v9);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    sub_1C6D78990();
    if (v17(v9, 1, v10) != 1)
    {
      sub_1C6B82438(v9);
    }
  }

  else
  {
    (*(v12 + 32))(v15, v9, v10);
  }

  return sub_1C6B857BC;
}

Swift::Void __swiftcall Com_Apple_News_Personalization_Session.clearStartedAt()()
{
  v1 = *(type metadata accessor for Com_Apple_News_Personalization_Session(0) + 36);
  sub_1C6B82438(v0 + v1);
  v2 = sub_1C6D789A0();
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t sub_1C6D1E9E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C6D20ABC(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Com_Apple_News_Personalization_Session(0);
  sub_1C6B823A4(a1 + *(v8 + 40), v7);
  v9 = sub_1C6D789A0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (v11(v7, 1, v9) != 1)
  {
    return (*(v10 + 32))(a2, v7, v9);
  }

  sub_1C6D78990();
  result = (v11)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1C6B82438(v7);
  }

  return result;
}

uint64_t sub_1C6D1EB54(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6D789A0();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v9, a1, v4, v7);
  v10 = *(type metadata accessor for Com_Apple_News_Personalization_Session(0) + 40);
  sub_1C6B82438(a2 + v10);
  (*(v5 + 32))(a2 + v10, v9, v4);
  return (*(v5 + 56))(a2 + v10, 0, 1, v4);
}

uint64_t (*Com_Apple_News_Personalization_Session.endedAt.modify(void *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6D20ABC(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = sub_1C6D789A0();
  v5[2] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v5[3] = v11;
  v13 = *(v11 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  v5[5] = v14;
  v16 = *(type metadata accessor for Com_Apple_News_Personalization_Session(0) + 40);
  *(v5 + 12) = v16;
  sub_1C6B823A4(v1 + v16, v9);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    sub_1C6D78990();
    if (v17(v9, 1, v10) != 1)
    {
      sub_1C6B82438(v9);
    }
  }

  else
  {
    (*(v12 + 32))(v15, v9, v10);
  }

  return sub_1C6B83270;
}

Swift::Void __swiftcall Com_Apple_News_Personalization_Session.clearEndedAt()()
{
  v1 = *(type metadata accessor for Com_Apple_News_Personalization_Session(0) + 40);
  sub_1C6B82438(v0 + v1);
  v2 = sub_1C6D789A0();
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Com_Apple_News_Personalization_Session.events.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t Com_Apple_News_Personalization_Session.clientVersion.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t Com_Apple_News_Personalization_Session.clientVersion.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

void Com_Apple_News_Personalization_Session.messageVersion.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  *a1 = *(v1 + 40);
  *(a1 + 8) = v2;
}

uint64_t Com_Apple_News_Personalization_Session.messageVersion.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 40) = *result;
  *(v1 + 48) = v2;
  return result;
}

uint64_t Com_Apple_News_Personalization_Session.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_News_Personalization_Session(0) + 32);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Com_Apple_News_Personalization_Session.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_Personalization_Session(0) + 32);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Com_Apple_News_Personalization_Session.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = MEMORY[0x1E69E7CC0];
  *(a1 + 24) = 0;
  *(a1 + 32) = 0xE000000000000000;
  *(a1 + 40) = 0;
  *(a1 + 48) = 1;
  v2 = type metadata accessor for Com_Apple_News_Personalization_Session(0);
  sub_1C6D78A30();
  v3 = *(v2 + 36);
  v4 = sub_1C6D789A0();
  v7 = *(*(v4 - 8) + 56);
  (v7)((v4 - 8), a1 + v3, 1, 1, v4);
  v5 = a1 + *(v2 + 40);

  return v7(v5, 1, 1, v4);
}

uint64_t sub_1C6D1F26C()
{
  v0 = sub_1C6D78D20();
  __swift_allocate_value_buffer(v0, qword_1EC1D9700);
  __swift_project_value_buffer(v0, qword_1EC1D9700);
  sub_1C6D20ABC(0, &qword_1EDCDF400, sub_1C6B3FD2C, MEMORY[0x1E69E6F90]);
  sub_1C6B3FD2C(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1C6D80220;
  v5 = v20 + v4;
  v6 = v20 + v4 + *(v2 + 56);
  *(v20 + v4) = 1;
  *v6 = "id";
  *(v6 + 8) = 2;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C6D78D00();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v3 + *(v2 + 56);
  *(v5 + v3) = 2;
  *v10 = "started_at";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v3);
  v12 = v11 + *(v2 + 56);
  *v11 = 3;
  *v12 = "ended_at";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v3);
  v14 = v13 + *(v2 + 56);
  *v13 = 4;
  *v14 = "events";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v3);
  v16 = v15 + *(v2 + 56);
  *v15 = 5;
  *v16 = "client_version";
  *(v16 + 1) = 14;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v3);
  v18 = v17 + *(v2 + 56);
  *v17 = 6;
  *v18 = "message_version";
  *(v18 + 1) = 15;
  v18[16] = 2;
  v9();
  return sub_1C6D78D10();
}

uint64_t static Com_Apple_News_Personalization_Session._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5BD0 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D9700);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Com_Apple_News_Personalization_Session.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_1C6D78AD0();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result > 3)
      {
        switch(result)
        {
          case 4:
            type metadata accessor for Com_Apple_News_Personalization_SessionEvent(0);
            sub_1C6D20A74(&qword_1EDCE55C8, type metadata accessor for Com_Apple_News_Personalization_SessionEvent, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEvent);
            sub_1C6D78BA0();
            break;
          case 5:
LABEL_18:
            sub_1C6D78B80();
            break;
          case 6:
            sub_1C6B84C68();
            sub_1C6D78B00();
            break;
        }
      }

      else
      {
        switch(result)
        {
          case 1:
            goto LABEL_18;
          case 2:
            sub_1C6D1F79C(a1, v5, a2, a3);
            break;
          case 3:
            sub_1C6D1F850(a1, v5, a2, a3);
            break;
        }
      }

      result = sub_1C6D78AD0();
    }
  }

  return result;
}

uint64_t sub_1C6D1F79C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_News_Personalization_Session(0);
  sub_1C6D789A0();
  sub_1C6D20A74(&unk_1EDCDFD10, MEMORY[0x1E69AA900], MEMORY[0x1E69AA8F8]);
  return sub_1C6D78BB0();
}

uint64_t sub_1C6D1F850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_News_Personalization_Session(0);
  sub_1C6D789A0();
  sub_1C6D20A74(&unk_1EDCDFD10, MEMORY[0x1E69AA900], MEMORY[0x1E69AA8F8]);
  return sub_1C6D78BB0();
}

uint64_t Com_Apple_News_Personalization_Session.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[1];
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 || (result = sub_1C6D78CC0(), !v4))
  {
    result = sub_1C6D1FACC(v3, a1, a2, a3);
    if (!v4)
    {
      sub_1C6D1FCE8(v3, a1, a2, a3);
      if (*(v3[2] + 16))
      {
        type metadata accessor for Com_Apple_News_Personalization_SessionEvent(0);
        sub_1C6D20A74(&qword_1EDCE55C8, type metadata accessor for Com_Apple_News_Personalization_SessionEvent, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEvent);
        sub_1C6D78CE0();
      }

      v11 = v3[4];
      v12 = HIBYTE(v11) & 0xF;
      if ((v11 & 0x2000000000000000) == 0)
      {
        v12 = v3[3] & 0xFFFFFFFFFFFFLL;
      }

      if (v12)
      {
        sub_1C6D78CC0();
      }

      if (v3[5])
      {
        sub_1C6B84C68();
        sub_1C6D78C70();
      }

      type metadata accessor for Com_Apple_News_Personalization_Session(0);
      return sub_1C6D78A20();
    }
  }

  return result;
}

uint64_t sub_1C6D1FACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C6D20ABC(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = sub_1C6D789A0();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Com_Apple_News_Personalization_Session(0);
  sub_1C6B823A4(a1 + *(v14 + 36), v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C6B82438(v8);
  }

  (*(v10 + 32))(v13, v8, v9);
  sub_1C6D20A74(&unk_1EDCDFD10, MEMORY[0x1E69AA900], MEMORY[0x1E69AA8F8]);
  sub_1C6D78CF0();
  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_1C6D1FCE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C6D20ABC(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = sub_1C6D789A0();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Com_Apple_News_Personalization_Session(0);
  sub_1C6B823A4(a1 + *(v14 + 40), v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C6B82438(v8);
  }

  (*(v10 + 32))(v13, v8, v9);
  sub_1C6D20A74(&unk_1EDCDFD10, MEMORY[0x1E69AA900], MEMORY[0x1E69AA8F8]);
  sub_1C6D78CF0();
  return (*(v10 + 8))(v13, v9);
}

uint64_t Com_Apple_News_Personalization_Session.hashValue.getter()
{
  sub_1C6D7A260();
  type metadata accessor for Com_Apple_News_Personalization_Session(0);
  sub_1C6D20A74(&qword_1EC1D9718, type metadata accessor for Com_Apple_News_Personalization_Session, &protocol conformance descriptor for Com_Apple_News_Personalization_Session);
  sub_1C6D79510();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6D1FFDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6D20A74(&qword_1EC1D9728, type metadata accessor for Com_Apple_News_Personalization_Session, &protocol conformance descriptor for Com_Apple_News_Personalization_Session);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6D20058@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5BD0 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D9700);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C6D20100(uint64_t a1)
{
  v2 = sub_1C6D20A74(&qword_1EDCE2AE0, type metadata accessor for Com_Apple_News_Personalization_Session, &protocol conformance descriptor for Com_Apple_News_Personalization_Session);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6D2016C(uint64_t a1, uint64_t a2)
{
  sub_1C6D20A74(&qword_1EDCE2AE0, type metadata accessor for Com_Apple_News_Personalization_Session, &protocol conformance descriptor for Com_Apple_News_Personalization_Session);

  return sub_1C6D78C20();
}

uint64_t _s19NewsPersonalization010Com_Apple_a1_B8_SessionV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = sub_1C6D789A0();
  v52 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v45[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1C6D20ABC(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v51 = &v45[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v45[-v13];
  sub_1C6B85620(0);
  v16 = v15;
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v45[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v45[-v22];
  if (*a1 != *a2 && (sub_1C6D7A130() & 1) == 0)
  {
    goto LABEL_17;
  }

  v48 = v7;
  v49 = type metadata accessor for Com_Apple_News_Personalization_Session(0);
  v50 = a1;
  v24 = *(v49 + 36);
  v25 = *(v16 + 48);
  sub_1C6B823A4(a1 + v24, v23);
  sub_1C6B823A4(a2 + v24, &v23[v25]);
  v26 = *(v52 + 48);
  if (v26(v23, 1, v4) == 1)
  {
    if (v26(&v23[v25], 1, v4) == 1)
    {
      v47 = a2;
      sub_1C6B82438(v23);
      goto LABEL_10;
    }

LABEL_8:
    v27 = v23;
LABEL_16:
    sub_1C6B856B4(v27);
    goto LABEL_17;
  }

  sub_1C6B823A4(v23, v14);
  if (v26(&v23[v25], 1, v4) == 1)
  {
    (*(v52 + 8))(v14, v4);
    goto LABEL_8;
  }

  v47 = a2;
  v28 = v52;
  v29 = v48;
  (*(v52 + 32))(v48, &v23[v25], v4);
  sub_1C6D20A74(&qword_1EC1D6C58, MEMORY[0x1E69AA900], MEMORY[0x1E69AA908]);
  v46 = sub_1C6D79560();
  v30 = *(v28 + 8);
  v30(v29, v4);
  v30(v14, v4);
  sub_1C6B82438(v23);
  if ((v46 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_10:
  v31 = *(v49 + 40);
  v32 = *(v16 + 48);
  sub_1C6B823A4(v50 + v31, v19);
  v33 = v47 + v31;
  v34 = v47;
  sub_1C6B823A4(v33, &v19[v32]);
  if (v26(v19, 1, v4) != 1)
  {
    v35 = v51;
    sub_1C6B823A4(v19, v51);
    if (v26(&v19[v32], 1, v4) != 1)
    {
      v38 = v52;
      v39 = v48;
      (*(v52 + 32))(v48, &v19[v32], v4);
      sub_1C6D20A74(&qword_1EC1D6C58, MEMORY[0x1E69AA900], MEMORY[0x1E69AA908]);
      v40 = sub_1C6D79560();
      v41 = *(v38 + 8);
      v41(v39, v4);
      v41(v35, v4);
      sub_1C6B82438(v19);
      if ((v40 & 1) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_20;
    }

    (*(v52 + 8))(v35, v4);
    goto LABEL_15;
  }

  if (v26(&v19[v32], 1, v4) != 1)
  {
LABEL_15:
    v27 = v19;
    goto LABEL_16;
  }

  sub_1C6B82438(v19);
LABEL_20:
  v42 = v50;
  if (sub_1C6B5A06C(v50[2], v34[2]) & 1) != 0 && (v42[3] == v34[3] && v42[4] == v34[4] || (sub_1C6D7A130()))
  {
    v43 = v42[5];
    v44 = v34[5];
    if (*(v34 + 48) == 1)
    {
      if (v44 <= 2)
      {
        if (v44)
        {
          if (v44 == 1)
          {
            if (v43 == 1)
            {
              goto LABEL_31;
            }
          }

          else if (v43 == 2)
          {
            goto LABEL_31;
          }
        }

        else if (!v43)
        {
          goto LABEL_31;
        }
      }

      else if (v44 > 4)
      {
        if (v44 == 5)
        {
          if (v43 == 5)
          {
            goto LABEL_31;
          }
        }

        else if (v43 == 6)
        {
          goto LABEL_31;
        }
      }

      else if (v44 == 3)
      {
        if (v43 == 3)
        {
          goto LABEL_31;
        }
      }

      else if (v43 == 4)
      {
        goto LABEL_31;
      }
    }

    else if (v43 == v44)
    {
LABEL_31:
      sub_1C6D78A40();
      sub_1C6D20A74(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v36 = sub_1C6D79560();
      return v36 & 1;
    }
  }

LABEL_17:
  v36 = 0;
  return v36 & 1;
}

void sub_1C6D20958(uint64_t a1)
{
  sub_1C6D20ABC(319, &qword_1EDCDFA80, type metadata accessor for Com_Apple_News_Personalization_SessionEvent, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1C6D78A40();
    if (v2 <= 0x3F)
    {
      sub_1C6D20ABC(319, &qword_1EDCE66F0, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1C6D20A74(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1C6D20ABC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t static Features.fromProtoFeatureMap(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v88 = (v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList(0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v87 = (v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List(0);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v86 = (v81 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List(0);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v85 = (v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList(0);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v84 = (v81 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v100 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind(0);
  v19 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100, v20);
  v96 = v81 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D21480(0, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v99 = v81 - v24;
  sub_1C6D21480(0, &qword_1EDCEA320, MEMORY[0x1E6996150]);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v101 = (v81 - v27);
  v28 = sub_1C6D783E0();
  MEMORY[0x1EEE9AC00](v28 - 8, v29);
  v103 = v81 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature(0);
  v95 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31 - 8, v32);
  v94 = v81 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34, v35);
  v102 = v81 - v36;
  sub_1C6D214D4(0);
  v93 = v37;
  MEMORY[0x1EEE9AC00](v37, v38);
  v92 = v81 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40, v41);
  v43 = (v81 - v42);
  v97 = a2;
  sub_1C6D78800();
  v44 = a1 + 64;
  v45 = 1 << *(a1 + 32);
  v46 = -1;
  if (v45 < 64)
  {
    v46 = ~(-1 << v45);
  }

  v47 = v46 & *(a1 + 64);
  v48 = (v45 + 63) >> 6;
  v90 = (v19 + 48);
  v83 = *MEMORY[0x1E6996120];
  v82 = *MEMORY[0x1E6996130];
  v81[3] = *MEMORY[0x1E6996148];
  v81[2] = *MEMORY[0x1E6996140];
  v81[1] = *MEMORY[0x1E6996138];
  v89 = *MEMORY[0x1E6996128];
  v98 = a1;

  v50 = 0;
  v91 = v43;
  v51 = v92;
  while (v47)
  {
LABEL_12:
    v60 = __clz(__rbit64(v47)) | (v50 << 6);
    v61 = (*(v98 + 48) + 16 * v60);
    v63 = *v61;
    v62 = v61[1];
    v64 = v93;
    sub_1C6D21540(*(v98 + 56) + *(v95 + 72) * v60, v43 + *(v93 + 48), type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature);
    *v43 = v63;
    v43[1] = v62;
    sub_1C6D21540(v43, v51, sub_1C6D214D4);
    v65 = v51 + *(v64 + 48);
    v66 = v102;
    sub_1C6D21628(v65, v102, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature);

    sub_1C6D783C0();
    v67 = v94;
    sub_1C6D21540(v66, v94, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature);
    v68 = v99;
    sub_1C6D215A8(v67, v99);
    sub_1C6D21690(v67, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature);
    v69 = (*v90)(v68, 1, v100);
    v55 = v89;
    if (v69 != 1)
    {
      sub_1C6D21628(v99, v96, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 1)
      {
        if (EnumCaseMultiPayload)
        {
          v79 = v85;
          sub_1C6D21628(v96, v85, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List);
          v80 = *v79;

          sub_1C6D21690(v79, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List);
          *v101 = v80;
          v54 = &v105;
        }

        else
        {
          v73 = v84;
          sub_1C6D21628(v96, v84, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList);
          v74 = *v73;

          sub_1C6D21690(v73, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList);
          *v101 = v74;
          v54 = &v104 + 4;
        }

        goto LABEL_5;
      }

      if (EnumCaseMultiPayload == 2)
      {
        v52 = v86;
        sub_1C6D21628(v96, v86, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List);
        v53 = *v52;

        sub_1C6D21690(v52, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List);
        *v101 = v53;
        v54 = &v105 + 4;
LABEL_5:
        v55 = *(v54 - 64);
        goto LABEL_6;
      }

      if (EnumCaseMultiPayload == 3)
      {
        v71 = v87;
        sub_1C6D21628(v96, v87, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList);
        v72 = *v71;

        sub_1C6D21690(v71, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList);
        *v101 = v72;
        v55 = v82;
      }

      else
      {
        v75 = v88;
        sub_1C6D21628(v96, v88, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
        v76 = *v75;
        v77 = v75[1];
        sub_1C6B1CD10(*v75, v77);
        sub_1C6D21690(v75, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
        v78 = v101;
        *v101 = v76;
        v78[1] = v77;
        v55 = v83;
      }
    }

LABEL_6:
    v47 &= v47 - 1;
    v56 = sub_1C6D78760();
    v57 = *(v56 - 8);
    v58 = v101;
    (*(v57 + 104))(v101, v55, v56);
    (*(v57 + 56))(v58, 0, 1, v56);
    sub_1C6D78830();
    sub_1C6D21690(v102, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature);
    v43 = v91;
    result = sub_1C6D21690(v91, sub_1C6D214D4);
  }

  while (1)
  {
    v59 = v50 + 1;
    if (__OFADD__(v50, 1))
    {
      break;
    }

    if (v59 >= v48)
    {
    }

    v47 = *(v44 + 8 * v59);
    ++v50;
    if (v47)
    {
      v50 = v59;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

void sub_1C6D21480(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C6D79C00();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1C6D214D4(uint64_t a1)
{
  if (!qword_1EDCDFB70)
  {
    type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDCDFB70);
    }
  }
}

uint64_t sub_1C6D21540(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C6D215A8(uint64_t a1, uint64_t a2)
{
  sub_1C6D21480(0, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C6D21628(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C6D21690(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t Features.getDoubleList(_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6D783E0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_1C6D783C0();
  sub_1C6D78810();
  sub_1C6C2C090();
  v9 = sub_1C6D786D0();
  if (v3)
  {
    (*(v5 + 8))(v8, v4);
  }

  else
  {
    v10 = v9;
    (*(v5 + 8))(v8, v4);
    v11 = *(v10 + 16);
    if (v11)
    {
      v18 = MEMORY[0x1E69E7CC0];
      sub_1C6B39260(0, v11, 0);
      v2 = v18;
      v12 = *(v18 + 16);
      v13 = 32;
      do
      {
        v14 = *(v10 + v13);
        v18 = v2;
        v15 = *(v2 + 24);
        if (v12 >= v15 >> 1)
        {
          sub_1C6B39260((v15 > 1), v12 + 1, 1);
          v2 = v18;
        }

        *(v2 + 16) = v12 + 1;
        *(v2 + 8 * v12 + 32) = v14;
        v13 += 4;
        ++v12;
        --v11;
      }

      while (v11);
    }

    else
    {

      return MEMORY[0x1E69E7CC0];
    }
  }

  return v2;
}

uint64_t sub_1C6D218E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v144 = a7;
  v145 = a3;
  v147 = a5;
  v148 = a6;
  v146 = a4;
  sub_1C6D265B8(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v149 = &v144 - v11;
  v12 = sub_1C6D76F90();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v144 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1C6D75F50();
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v19 = sub_1C6D789A0();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v21);
  v23 = &v144 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D75F40();
  sub_1C6D78980();
  v24 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEvent(0) + 24);
  sub_1C6D26458(a1 + v24, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
  v25 = v23;
  v26 = a1;
  (*(v20 + 32))(a1 + v24, v25, v19);
  (*(v20 + 56))(a1 + v24, 0, 1, v19);
  (*(v13 + 16))(v16, a2, v12);
  v27 = (*(v13 + 88))(v16, v12);
  if (v27 == *MEMORY[0x1E69E3600] || v27 == *MEMORY[0x1E69E35E8])
  {
    return (*(v13 + 8))(v16, v12);
  }

  if (v27 == *MEMORY[0x1E69E3638])
  {
    (*(v13 + 96))(v16, v12);
    v30 = *v16;
    v29 = *(v16 + 1);
    v31 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagMuted(0);
    MEMORY[0x1EEE9AC00](v31, v32);
    *(&v144 - 2) = v30;
    *(&v144 - 1) = v29;
    sub_1C6D2669C(&qword_1EC1D7AE8, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagMuted, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventTagMuted);
    v33 = v149;
    sub_1C6D78C30();

    v34 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
LABEL_18:
    swift_storeEnumTagMultiPayload();
    (*(*(v34 - 8) + 56))(v33, 0, 1, v34);
    return sub_1C6D2661C(v33, v26, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  }

  if (v27 == *MEMORY[0x1E69E3668])
  {
    (*(v13 + 96))(v16, v12);
    v36 = *v16;
    v35 = *(v16 + 1);
    v37 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnmuted(0);
    MEMORY[0x1EEE9AC00](v37, v38);
    *(&v144 - 2) = v36;
    *(&v144 - 1) = v35;
    sub_1C6D2669C(&qword_1EC1D83D0, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnmuted, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventTagUnmuted);
    v33 = v149;
    sub_1C6D78C30();

    v34 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
    goto LABEL_18;
  }

  if (v27 == *MEMORY[0x1E69E3650])
  {
    (*(v13 + 96))(v16, v12);
    v40 = *v16;
    v39 = *(v16 + 1);
    v41 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFollowed(0);
    MEMORY[0x1EEE9AC00](v41, v42);
    *(&v144 - 2) = v40;
    *(&v144 - 1) = v39;
    sub_1C6D2669C(&unk_1EC1D9940, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFollowed, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventTagFollowed);
    v33 = v149;
    sub_1C6D78C30();

    v34 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
    goto LABEL_18;
  }

  if (v27 == *MEMORY[0x1E69E3688])
  {
    (*(v13 + 96))(v16, v12);
    v44 = *v16;
    v43 = *(v16 + 1);
    v45 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnfollowed(0);
    MEMORY[0x1EEE9AC00](v45, v46);
    *(&v144 - 2) = v44;
    *(&v144 - 1) = v43;
    sub_1C6D2669C(&qword_1EC1D81D0, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagUnfollowed, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventTagUnfollowed);
    v33 = v149;
    sub_1C6D78C30();

    v34 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
    goto LABEL_18;
  }

  if (v27 == *MEMORY[0x1E69E3658])
  {
    (*(v13 + 96))(v16, v12);
    v48 = *v16;
    v47 = *(v16 + 1);
    v49 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagIgnore(0);
    MEMORY[0x1EEE9AC00](v49, v50);
    *(&v144 - 2) = v48;
    *(&v144 - 1) = v47;
    sub_1C6D2669C(&qword_1EC1D7208, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagIgnore, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventTagIgnore);
    v33 = v149;
    sub_1C6D78C30();

    v34 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
    goto LABEL_18;
  }

  if (v27 == *MEMORY[0x1E69E3680])
  {
    (*(v13 + 96))(v16, v12);
    v52 = *v16;
    v51 = *(v16 + 1);
    v53 = *(v16 + 2);
    v54 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFeedView(0);
    MEMORY[0x1EEE9AC00](v54, v55);
    *(&v144 - 4) = v52;
    *(&v144 - 3) = v51;
    *(&v144 - 2) = v53;
    sub_1C6D2669C(&qword_1EDCE4AC0, type metadata accessor for Com_Apple_News_Personalization_SessionEventTagFeedView, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventTagFeedView);
    v33 = v149;
    sub_1C6D78C30();

    v34 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
    goto LABEL_18;
  }

  if (v27 == *MEMORY[0x1E69E3610])
  {
    (*(v13 + 96))(v16, v12);
    v57 = *v16;
    v56 = *(v16 + 1);
    v58 = *(v16 + 2);
    v59 = type metadata accessor for Com_Apple_News_Personalization_SessionEventSportsTagSeen(0);
    MEMORY[0x1EEE9AC00](v59, v60);
    *(&v144 - 4) = v57;
    *(&v144 - 3) = v56;
    *(&v144 - 2) = v58;
    sub_1C6D2669C(&qword_1EC1D83F0, type metadata accessor for Com_Apple_News_Personalization_SessionEventSportsTagSeen, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventSportsTagSeen);
    v33 = v149;
    sub_1C6D78C30();

    v34 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
    goto LABEL_18;
  }

  if (v27 == *MEMORY[0x1E69E35F8])
  {
    (*(v13 + 96))(v16, v12);
    v61 = *(v16 + 6);
    sub_1C6D23D48(v16, v150);
    v62 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen(0);
    MEMORY[0x1EEE9AC00](v62, v63);
    v64 = v145;
    v65 = v146;
    *(&v144 - 6) = v150;
    *(&v144 - 5) = v64;
    v67 = v147;
    v66 = v148;
    *(&v144 - 4) = v65;
    *(&v144 - 3) = v67;
    *(&v144 - 2) = v66;
    *(&v144 - 1) = v61;
    sub_1C6D2669C(&qword_1EDCE4B90, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventArticleSeen);
    v68 = v149;
    sub_1C6D78C30();
    v69 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  }

  else if (v27 == *MEMORY[0x1E69E3628])
  {
    (*(v13 + 96))(v16, v12);
    sub_1C6D23D48(v16, v150);
    v70 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited(0);
    MEMORY[0x1EEE9AC00](v70, v71);
    v72 = v145;
    v73 = v146;
    *(&v144 - 6) = v150;
    *(&v144 - 5) = v72;
    v75 = v147;
    v74 = v148;
    *(&v144 - 4) = v73;
    *(&v144 - 3) = v75;
    *(&v144 - 2) = v74;
    sub_1C6D2669C(&unk_1EDCE4358, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleVisited, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventArticleVisited);
    v68 = v149;
    sub_1C6D78C30();
    v69 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  }

  else if (v27 == *MEMORY[0x1E69E35F0])
  {
    (*(v13 + 96))(v16, v12);
    v76 = *(v16 + 6);
    sub_1C6D23D48(v16, v150);
    v77 = sub_1C6D233D4(v144, v150);
    v78 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead(0);
    MEMORY[0x1EEE9AC00](v78, v79);
    v80 = v145;
    v81 = v146;
    *(&v144 - 8) = v150;
    *(&v144 - 7) = v80;
    v83 = v147;
    v82 = v148;
    *(&v144 - 6) = v81;
    *(&v144 - 5) = v83;
    *(&v144 - 4) = v82;
    *(&v144 - 3) = v76;
    *(&v144 - 2) = v77;
    sub_1C6D2669C(&qword_1EDCE4C60, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventArticleRead);
    v68 = v149;
    sub_1C6D78C30();

    v69 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  }

  else if (v27 == *MEMORY[0x1E69E3630])
  {
    (*(v13 + 96))(v16, v12);
    sub_1C6D23D48(v16, v150);
    v84 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleLiked(0);
    MEMORY[0x1EEE9AC00](v84, v85);
    v86 = v145;
    v87 = v146;
    *(&v144 - 6) = v150;
    *(&v144 - 5) = v86;
    v89 = v147;
    v88 = v148;
    *(&v144 - 4) = v87;
    *(&v144 - 3) = v89;
    *(&v144 - 2) = v88;
    sub_1C6D2669C(&qword_1EC1D7F30, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleLiked, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventArticleLiked);
    v68 = v149;
    sub_1C6D78C30();
    v69 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  }

  else if (v27 == *MEMORY[0x1E69E3660])
  {
    (*(v13 + 96))(v16, v12);
    sub_1C6D23D48(v16, v150);
    v90 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnliked(0);
    MEMORY[0x1EEE9AC00](v90, v91);
    v92 = v145;
    v93 = v146;
    *(&v144 - 6) = v150;
    *(&v144 - 5) = v92;
    v95 = v147;
    v94 = v148;
    *(&v144 - 4) = v93;
    *(&v144 - 3) = v95;
    *(&v144 - 2) = v94;
    sub_1C6D2669C(&qword_1EC1D69D8, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnliked, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventArticleUnliked);
    v68 = v149;
    sub_1C6D78C30();
    v69 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  }

  else if (v27 == *MEMORY[0x1E69E3670])
  {
    (*(v13 + 96))(v16, v12);
    sub_1C6D23D48(v16, v150);
    v96 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleDisliked(0);
    MEMORY[0x1EEE9AC00](v96, v97);
    v98 = v145;
    v99 = v146;
    *(&v144 - 6) = v150;
    *(&v144 - 5) = v98;
    v101 = v147;
    v100 = v148;
    *(&v144 - 4) = v99;
    *(&v144 - 3) = v101;
    *(&v144 - 2) = v100;
    sub_1C6D2669C(&qword_1EC1D83C0, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleDisliked, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventArticleDisliked);
    v68 = v149;
    sub_1C6D78C30();
    v69 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  }

  else if (v27 == *MEMORY[0x1E69E3690])
  {
    (*(v13 + 96))(v16, v12);
    sub_1C6D23D48(v16, v150);
    v102 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUndisliked(0);
    MEMORY[0x1EEE9AC00](v102, v103);
    v104 = v145;
    v105 = v146;
    *(&v144 - 6) = v150;
    *(&v144 - 5) = v104;
    v107 = v147;
    v106 = v148;
    *(&v144 - 4) = v105;
    *(&v144 - 3) = v107;
    *(&v144 - 2) = v106;
    sub_1C6D2669C(&qword_1EC1D83E8, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUndisliked, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventArticleUndisliked);
    v68 = v149;
    sub_1C6D78C30();
    v69 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  }

  else if (v27 == *MEMORY[0x1E69E3648])
  {
    (*(v13 + 96))(v16, v12);
    sub_1C6D23D48(v16, v150);
    v108 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleShared(0);
    MEMORY[0x1EEE9AC00](v108, v109);
    v110 = v145;
    v111 = v146;
    *(&v144 - 6) = v150;
    *(&v144 - 5) = v110;
    v113 = v147;
    v112 = v148;
    *(&v144 - 4) = v111;
    *(&v144 - 3) = v113;
    *(&v144 - 2) = v112;
    sub_1C6D2669C(&qword_1EC1D83B8, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleShared, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventArticleShared);
    v68 = v149;
    sub_1C6D78C30();
    v69 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  }

  else if (v27 == *MEMORY[0x1E69E3640])
  {
    (*(v13 + 96))(v16, v12);
    sub_1C6D23D48(v16, v150);
    v114 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSaved(0);
    MEMORY[0x1EEE9AC00](v114, v115);
    v116 = v145;
    v117 = v146;
    *(&v144 - 6) = v150;
    *(&v144 - 5) = v116;
    v119 = v147;
    v118 = v148;
    *(&v144 - 4) = v117;
    *(&v144 - 3) = v119;
    *(&v144 - 2) = v118;
    sub_1C6D2669C(&qword_1EC1D83C8, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSaved, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventArticleSaved);
    v68 = v149;
    sub_1C6D78C30();
    v69 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  }

  else if (v27 == *MEMORY[0x1E69E3678])
  {
    (*(v13 + 96))(v16, v12);
    sub_1C6D23D48(v16, v150);
    v120 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnsaved(0);
    MEMORY[0x1EEE9AC00](v120, v121);
    v122 = v145;
    v123 = v146;
    *(&v144 - 6) = v150;
    *(&v144 - 5) = v122;
    v125 = v147;
    v124 = v148;
    *(&v144 - 4) = v123;
    *(&v144 - 3) = v125;
    *(&v144 - 2) = v124;
    sub_1C6D2669C(&qword_1EC1D7058, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnsaved, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventArticleUnsaved);
    v68 = v149;
    sub_1C6D78C30();
    v69 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  }

  else if (v27 == *MEMORY[0x1E69E3608])
  {
    (*(v13 + 96))(v16, v12);
    sub_1C6D23D48(v16, v150);
    v126 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackVisited(0);
    MEMORY[0x1EEE9AC00](v126, v127);
    v128 = v145;
    v129 = v146;
    *(&v144 - 6) = v150;
    *(&v144 - 5) = v128;
    v131 = v147;
    v130 = v148;
    *(&v144 - 4) = v129;
    *(&v144 - 3) = v131;
    *(&v144 - 2) = v130;
    sub_1C6D2669C(&qword_1EC1D83D8, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackVisited, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventTrackVisited);
    v68 = v149;
    sub_1C6D78C30();
    v69 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  }

  else if (v27 == *MEMORY[0x1E69E3620])
  {
    (*(v13 + 96))(v16, v12);
    sub_1C6D23D48(v16, v150);
    v132 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackListened(0);
    MEMORY[0x1EEE9AC00](v132, v133);
    v134 = v145;
    v135 = v146;
    *(&v144 - 6) = v150;
    *(&v144 - 5) = v134;
    v137 = v147;
    v136 = v148;
    *(&v144 - 4) = v135;
    *(&v144 - 3) = v137;
    *(&v144 - 2) = v136;
    sub_1C6D2669C(&qword_1EC1D7A88, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackListened, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventTrackListened);
    v68 = v149;
    sub_1C6D78C30();
    v69 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  }

  else
  {
    if (v27 != *MEMORY[0x1E69E3618])
    {
      return (*(v13 + 8))(v16, v12);
    }

    (*(v13 + 96))(v16, v12);
    sub_1C6D23D48(v16, v150);
    v138 = type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackFinished(0);
    MEMORY[0x1EEE9AC00](v138, v139);
    v140 = v145;
    v141 = v146;
    *(&v144 - 6) = v150;
    *(&v144 - 5) = v140;
    v143 = v147;
    v142 = v148;
    *(&v144 - 4) = v141;
    *(&v144 - 3) = v143;
    *(&v144 - 2) = v142;
    sub_1C6D2669C(&qword_1EC1D83E0, type metadata accessor for Com_Apple_News_Personalization_SessionEventTrackFinished, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventTrackFinished);
    v68 = v149;
    sub_1C6D78C30();
    v69 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  }

  swift_storeEnumTagMultiPayload();
  (*(*(v69 - 8) + 56))(v68, 0, 1, v69);
  sub_1C6D2661C(v68, v26, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  return __swift_destroy_boxed_opaque_existential_1(v150);
}

uint64_t sub_1C6D23110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v28 = a7;
  v26 = a5;
  v27 = a6;
  v34 = sub_1C6D78A00();
  v11 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34, v12);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = a2;
  v30 = a3;
  v31 = a4;
  v32 = v26;
  v33 = v27;
  sub_1C6D2669C(&qword_1EDCE5300, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionArticle);
  sub_1C6D78C30();
  v20 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen(0);
  v21 = *(v20 + 20);
  sub_1C6D26458(a1 + v21, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  sub_1C6D266E4(v19, a1 + v21, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  v22 = (*(v16 + 56))(a1 + v21, 0, 1, v15);
  MEMORY[0x1CCA54E80](v22, v28 / 1000.0);
  v23 = *(v20 + 24);
  sub_1C6D26458(a1 + v23, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  v24 = v34;
  (*(v11 + 32))(a1 + v23, v14, v34);
  return (*(v11 + 56))(a1 + v23, 0, 1, v24);
}

uint64_t sub_1C6D233D4(uint64_t *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v3 = sub_1C6D762C0();
  v5 = *a1;
  if (*(*a1 + 16))
  {
    v6 = sub_1C6B5DEA8(v3, v4);
    v8 = v7;

    if (v8)
    {
      v9 = *(*(v5 + 56) + 8 * v6);

      v10 = sub_1C6D762C0();
      sub_1C6BC1FD8(0, v10, v11);
      return v9;
    }
  }

  else
  {
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1C6D234AC(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v31 = a7;
  v38 = a8;
  v29 = a5;
  v30 = a6;
  v32 = sub_1C6D78A00();
  v12 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32, v13);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = a2;
  v34 = a3;
  v35 = a4;
  v36 = v29;
  v37 = v30;
  sub_1C6D2669C(&qword_1EDCE5300, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionArticle);
  sub_1C6D78C30();
  v21 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead(0);
  v22 = *(v21 + 24);
  sub_1C6D26458(&a1[v22], &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  sub_1C6D266E4(v20, &a1[v22], type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  v23 = (*(v17 + 56))(&a1[v22], 0, 1, v16);
  MEMORY[0x1CCA54E80](v23, v31 / 1000.0);
  v24 = *(v21 + 28);
  sub_1C6D26458(&a1[v24], &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  v25 = v32;
  (*(v12 + 32))(&a1[v24], v15, v32);
  (*(v12 + 56))(&a1[v24], 0, 1, v25);
  v26 = v38;

  *a1 = v26;
  return result;
}

uint64_t sub_1C6D23790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v19[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = a2;
  v21 = a3;
  v22 = a4;
  v23 = a5;
  v24 = a6;
  sub_1C6D2669C(&qword_1EDCE5300, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionArticle);
  sub_1C6D78C30();
  v17 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleShared(0) + 24);
  sub_1C6D26458(a1 + v17, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  sub_1C6D266E4(v16, a1 + v17, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  return (*(v13 + 56))(a1 + v17, 0, 1, v12);
}

uint64_t sub_1C6D2394C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(void))
{
  v22 = a8;
  v21[0] = a7;
  v14 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[4] = a2;
  v21[5] = a3;
  v21[6] = a4;
  v21[7] = a5;
  v21[8] = a6;
  sub_1C6D2669C(&qword_1EDCE5300, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionArticle);
  sub_1C6D78C30();
  v19 = *(v22(0) + 20);
  sub_1C6D26458(a1 + v19, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  sub_1C6D266E4(v18, a1 + v19, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  return (*(v15 + 56))(a1 + v19, 0, 1, v14);
}

uint64_t sub_1C6D23B00(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v10 = sub_1C6D78A00();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);

  *a1 = a2;
  *(a1 + 1) = a3;
  MEMORY[0x1CCA54E80](v15, a4 / 1000.0);
  v16 = *(a5(0) + 24);
  sub_1C6D26458(&a1[v16], &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  (*(v11 + 32))(&a1[v16], v14, v10);
  return (*(v11 + 56))(&a1[v16], 0, 1, v10);
}

uint64_t sub_1C6D23CFC(void *a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);

  *a1 = v4;
  a1[1] = v3;
  return result;
}

_OWORD *sub_1C6D23D48(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

uint64_t sub_1C6D240B0@<X0>(_BYTE *a3@<X8>)
{
  type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures(0);
  sub_1C6D78A30();
  *a3 = sub_1C6D76280() & 1;
  a3[1] = sub_1C6D76290() & 1;
  a3[2] = sub_1C6D76210() & 1;
  a3[3] = sub_1C6D76260() & 1;
  a3[4] = sub_1C6D76270() & 1;
  a3[6] = sub_1C6D76240() & 1;
  result = sub_1C6D762A0();
  a3[5] = result & 1;
  return result;
}

uint64_t sub_1C6D24180(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v125 = a5;
  v131 = a6;
  v129 = a4;
  v124 = a3;
  v8 = MEMORY[0x1E69E6720];
  sub_1C6D265B8(0, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v117 = &v114 - v11;
  v12 = sub_1C6D78A80();
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v119 = &v114 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v118 = &v114 - v17;
  v130 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  v116 = *(v130 - 8);
  MEMORY[0x1EEE9AC00](v130, v18);
  v20 = &v114 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v120 = &v114 - v23;
  sub_1C6D265B8(0, qword_1EDCE5190, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures, v8);
  MEMORY[0x1EEE9AC00](v24 - 8, v25);
  v27 = &v114 - v26;
  v28 = type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures(0);
  v122 = *(v28 - 8);
  v123 = v28;
  MEMORY[0x1EEE9AC00](v28, v29);
  v121 = &v114 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v31 = sub_1C6D76220();
  v33 = v32;
  v34 = *(type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v36 = *(a1 + v34);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
    swift_allocObject();
    v36 = sub_1C6D2BEA8(v36);
    *(a1 + v34) = v36;
  }

  swift_beginAccess();
  *(v36 + 3) = v31;
  *(v36 + 4) = v33;

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v37 = sub_1C6D762B0();
  v38 = swift_isUniquelyReferenced_nonNull_native();
  v39 = *(a1 + v34);
  if ((v38 & 1) == 0)
  {
    type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
    swift_allocObject();
    v39 = sub_1C6D2BEA8(v39);
    *(a1 + v34) = v39;
  }

  swift_beginAccess();
  *(v39 + 2) = v37;

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v40 = sub_1C6D76250();
  v127 = v20;
  if ((v41 & 1) == 0)
  {
    v42 = v40;
    if (HIDWORD(v40))
    {
      if (qword_1EDCE9828 != -1)
      {
        swift_once();
      }

      v115 = qword_1EDCE9830;
      v43 = sub_1C6D79AA0();
      sub_1C6D265B8(0, &qword_1EDCEA8A0, sub_1C6B47670, MEMORY[0x1E69E6F90]);
      v44 = swift_allocObject();
      *(v44 + 16) = xmmword_1C6D7E630;
      *&v132 = v42;
      v45 = sub_1C6D7A0E0();
      v47 = v46;
      *(v44 + 56) = MEMORY[0x1E69E6158];
      *(v44 + 64) = sub_1C6B2064C();
      *(v44 + 32) = v45;
      *(v44 + 40) = v47;
      sub_1C6D78D30("Found article length %{public}@ that couldn't be converted for storage", 70, 2, &dword_1C6B09000, v115, v43, v44);
    }

    else
    {
      v48 = swift_isUniquelyReferenced_nonNull_native();
      v49 = *(a1 + v34);
      if ((v48 & 1) == 0)
      {
        type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
        swift_allocObject();
        v49 = sub_1C6D2BEA8(v49);
        *(a1 + v34) = v49;
      }

      v50 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__length;
      swift_beginAccess();
      *&v49[v50] = v42;
    }
  }

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v51 = sub_1C6D76230();
  if (v51)
  {
    v52 = v51;
  }

  else
  {
    v52 = MEMORY[0x1E69E7CC0];
  }

  v53 = swift_isUniquelyReferenced_nonNull_native();
  v54 = *(a1 + v34);
  if ((v53 & 1) == 0)
  {
    type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
    swift_allocObject();
    v54 = sub_1C6D2BEA8(v54);
    *(a1 + v34) = v54;
  }

  v55 = v126;
  v56 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__adCategories;
  swift_beginAccess();
  *&v54[v56] = v52;

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v57 = v121;
  sub_1C6D240B0(v121);
  v58 = swift_isUniquelyReferenced_nonNull_native();
  v59 = *(a1 + v34);
  if ((v58 & 1) == 0)
  {
    type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
    swift_allocObject();
    v59 = sub_1C6D2BEA8(v59);
    *(a1 + v34) = v59;
  }

  sub_1C6D266E4(v57, v27, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
  (*(v122 + 56))(v27, 0, 1, v123);
  v60 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__features;
  swift_beginAccess();
  sub_1C6D2661C(v27, &v59[v60], qword_1EDCE5190, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
  swift_endAccess();
  sub_1C6D2503C(a2, &v132);
  v61 = v132;
  v62 = BYTE8(v132);
  v63 = swift_isUniquelyReferenced_nonNull_native();
  v64 = *(a1 + v34);
  if ((v63 & 1) == 0)
  {
    type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
    swift_allocObject();
    v64 = sub_1C6D2BEA8(v64);
    *(a1 + v34) = v64;
  }

  v65 = v130;
  v66 = &v64[OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__feed];
  swift_beginAccess();
  *v66 = v61;
  v66[8] = v62;
  sub_1C6D25424(a2, &v132);
  v67 = v132;
  v68 = BYTE8(v132);
  v69 = swift_isUniquelyReferenced_nonNull_native();
  v70 = *(a1 + v34);
  if ((v69 & 1) == 0)
  {
    type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
    swift_allocObject();
    v70 = sub_1C6D2BEA8(v70);
    *(a1 + v34) = v70;
  }

  v71 = &v70[OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__group];
  swift_beginAccess();
  *v71 = v67;
  v71[8] = v68;
  sub_1C6D25D8C(a2, &v132);
  v72 = v132;
  v73 = BYTE8(v132);
  v74 = swift_isUniquelyReferenced_nonNull_native();
  v75 = *(a1 + v34);
  if ((v74 & 1) == 0)
  {
    type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
    swift_allocObject();
    v75 = sub_1C6D2BEA8(v75);
    *(a1 + v34) = v75;
  }

  v76 = &v75[OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__viewAction];
  swift_beginAccess();
  *v76 = v72;
  v76[8] = v73;
  v77 = v129;
  v128 = a1;
  if (v129 >> 60 == 15)
  {
    goto LABEL_35;
  }

  v134 = 0;
  v132 = 0u;
  v133 = 0u;
  v78 = v124;
  sub_1C6BC372C(v124, v129);
  sub_1C6B1CD10(v78, v77);
  sub_1C6D78A70();
  sub_1C6D2669C(&qword_1EDCEA770, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List, &protocol conformance descriptor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  v79 = v120;
  v80 = v55;
  sub_1C6D78BE0();
  if (!v55)
  {
    v88 = v128;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      sub_1C6B75B88(v124, v77);
      v89 = *(v88 + v34);
    }

    else
    {
      type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
      swift_allocObject();

      v89 = sub_1C6D2BEA8(v90);
      sub_1C6B75B88(v124, v77);
      v79 = v120;

      *(v88 + v34) = v89;
    }

    v91 = v117;
    sub_1C6D266E4(v79, v117, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    (*(v116 + 56))(v91, 0, 1, v65);
    v92 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__bodyEmbedding;
    swift_beginAccess();
    sub_1C6D2661C(v91, &v89[v92], qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    swift_endAccess();
LABEL_35:
    v87 = v131;
    goto LABEL_36;
  }

  if (qword_1EDCE9828 != -1)
  {
    swift_once();
  }

  v81 = qword_1EDCE9830;
  v82 = sub_1C6D79AA0();
  sub_1C6D265B8(0, &qword_1EDCEA8A0, sub_1C6B47670, MEMORY[0x1E69E6F90]);
  v83 = swift_allocObject();
  *(v83 + 16) = xmmword_1C6D7E630;
  swift_getErrorValue();
  v84 = sub_1C6D7A1D0();
  v86 = v85;
  *(v83 + 56) = MEMORY[0x1E69E6158];
  *(v83 + 64) = sub_1C6B2064C();
  *(v83 + 32) = v84;
  *(v83 + 40) = v86;
  sub_1C6D78D30("Failed to include headline body embedding in SessionArticleLegacyMetadata. Error=%{public}@", 91, 2, &dword_1C6B09000, v81, v82, v83);
  sub_1C6B75B88(v124, v129);

  v55 = 0;
  v65 = v130;
  v87 = v131;
LABEL_36:
  v93 = v127;
  if (v87 >> 60 == 15)
  {
    v94 = v128;
  }

  else
  {
    v134 = 0;
    v132 = 0u;
    v133 = 0u;
    v95 = v125;
    sub_1C6BC372C(v125, v87);
    sub_1C6B1CD10(v95, v87);
    sub_1C6D78A70();
    sub_1C6D2669C(&qword_1EDCEA770, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List, &protocol conformance descriptor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    v96 = v55;
    sub_1C6D78BE0();
    if (v55)
    {
      v94 = v128;
      if (qword_1EDCE9828 != -1)
      {
        swift_once();
      }

      v130 = qword_1EDCE9830;
      v97 = sub_1C6D79AA0();
      sub_1C6D265B8(0, &qword_1EDCEA8A0, sub_1C6B47670, MEMORY[0x1E69E6F90]);
      v98 = swift_allocObject();
      *(v98 + 16) = xmmword_1C6D7E630;
      swift_getErrorValue();
      v99 = sub_1C6D7A1D0();
      v101 = v100;
      *(v98 + 56) = MEMORY[0x1E69E6158];
      *(v98 + 64) = sub_1C6B2064C();
      *(v98 + 32) = v99;
      *(v98 + 40) = v101;
      sub_1C6D78D30("Failed to include headline title embedding in SessionArticleLegacyMetadata. Error=%{public}@", 92, 2, &dword_1C6B09000, v130, v97, v98);
      sub_1C6B75B88(v125, v131);
    }

    else
    {
      v94 = v128;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        sub_1C6B75B88(v125, v87);
        v102 = *(v94 + v34);
      }

      else
      {
        type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
        swift_allocObject();

        v102 = sub_1C6D2BEA8(v103);
        v93 = v127;
        sub_1C6B75B88(v125, v87);

        *(v94 + v34) = v102;
      }

      v104 = v93;
      v105 = v117;
      sub_1C6D266E4(v104, v117, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
      (*(v116 + 56))(v105, 0, 1, v65);
      v106 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__embedding;
      swift_beginAccess();
      sub_1C6D2661C(v105, &v102[v106], qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
      swift_endAccess();
    }
  }

  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  result = sub_1C6D76350();
  if (v108)
  {
    v109 = result;
    v110 = v108;
    v111 = swift_isUniquelyReferenced_nonNull_native();
    v112 = *(v94 + v34);
    if ((v111 & 1) == 0)
    {
      type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
      swift_allocObject();
      v112 = sub_1C6D2BEA8(v112);
      *(v94 + v34) = v112;
    }

    v113 = &v112[OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__groupBackingTagID];
    swift_beginAccess();
    *v113 = v109;
    v113[1] = v110;
  }

  return result;
}

uint64_t sub_1C6D2503C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1C6D77090();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6D76360();
  result = (*(v5 + 88))(v8, v4);
  if (result == *MEMORY[0x1E69E3780])
  {
    *a2 = 0;
LABEL_3:
    *(a2 + 8) = 1;
    return result;
  }

  if (result == *MEMORY[0x1E69E3758])
  {
    *a2 = 1;
    *(a2 + 8) = 1;
  }

  else
  {
    if (result == *MEMORY[0x1E69E3788])
    {
      *a2 = 2;
      goto LABEL_3;
    }

    if (result == *MEMORY[0x1E69E3720])
    {
      *a2 = 3;
      goto LABEL_3;
    }

    if (result == *MEMORY[0x1E69E3728])
    {
      *a2 = 4;
      goto LABEL_3;
    }

    if (result == *MEMORY[0x1E69E3730])
    {
      *a2 = 5;
      goto LABEL_3;
    }

    if (result == *MEMORY[0x1E69E3770])
    {
      *a2 = 6;
      goto LABEL_3;
    }

    if (result == *MEMORY[0x1E69E3750])
    {
      *a2 = 7;
      goto LABEL_3;
    }

    if (result == *MEMORY[0x1E69E36F8])
    {
      *a2 = 8;
      goto LABEL_3;
    }

    if (result == *MEMORY[0x1E69E3738])
    {
      *a2 = 9;
      goto LABEL_3;
    }

    if (result == *MEMORY[0x1E69E3740])
    {
      *a2 = 10;
      goto LABEL_3;
    }

    if (result == *MEMORY[0x1E69E3708])
    {
      *a2 = 11;
      goto LABEL_3;
    }

    if (result == *MEMORY[0x1E69E3710])
    {
      *a2 = 12;
      goto LABEL_3;
    }

    if (result == *MEMORY[0x1E69E3748])
    {
      *a2 = 13;
      goto LABEL_3;
    }

    if (result == *MEMORY[0x1E69E3778])
    {
      *a2 = 14;
      goto LABEL_3;
    }

    if (result == *MEMORY[0x1E69E3760])
    {
      *a2 = 15;
      goto LABEL_3;
    }

    if (result == *MEMORY[0x1E69E36F0])
    {
      *a2 = 16;
      goto LABEL_3;
    }

    if (result == *MEMORY[0x1E69E3718])
    {
      *a2 = 17;
      goto LABEL_3;
    }

    if (result == *MEMORY[0x1E69E3768])
    {
      *a2 = 18;
      goto LABEL_3;
    }

    if (result == *MEMORY[0x1E69E3700])
    {
      *a2 = 19;
      goto LABEL_3;
    }

    if (result == *MEMORY[0x1E69E3790])
    {
      *a2 = 20;
      goto LABEL_3;
    }

    if (result == *MEMORY[0x1E69E36E8])
    {
      *a2 = 21;
      goto LABEL_3;
    }

    *a2 = 0;
    *(a2 + 8) = 1;
    return (*(v5 + 8))(v8, v4);
  }

  return result;
}

uint64_t sub_1C6D25424@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1C6D770A0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6D76370();
  result = (*(v5 + 88))(v8, v4);
  if (result == *MEMORY[0x1E69E39A0])
  {
    *a2 = 0;
  }

  else
  {
    if (result == *MEMORY[0x1E69E3988])
    {
      *a2 = 1;
      *(a2 + 8) = 1;
      return result;
    }

    if (result == *MEMORY[0x1E69E39D8])
    {
      v10 = 2;
    }

    else if (result == *MEMORY[0x1E69E3798])
    {
      v10 = 3;
    }

    else if (result == *MEMORY[0x1E69E3858])
    {
      v10 = 4;
    }

    else if (result == *MEMORY[0x1E69E39C8])
    {
      v10 = 5;
    }

    else if (result == *MEMORY[0x1E69E37E8])
    {
      v10 = 6;
    }

    else if (result == *MEMORY[0x1E69E3828])
    {
      v10 = 7;
    }

    else if (result == *MEMORY[0x1E69E3978])
    {
      v10 = 8;
    }

    else if (result == *MEMORY[0x1E69E3968])
    {
      v10 = 9;
    }

    else if (result == *MEMORY[0x1E69E38A0])
    {
      v10 = 10;
    }

    else if (result == *MEMORY[0x1E69E3940])
    {
      v10 = 11;
    }

    else if (result == *MEMORY[0x1E69E3910])
    {
      v10 = 12;
    }

    else if (result == *MEMORY[0x1E69E39C0])
    {
      v10 = 13;
    }

    else if (result == *MEMORY[0x1E69E39E8])
    {
      v10 = 14;
    }

    else if (result == *MEMORY[0x1E69E37A0])
    {
      v10 = 15;
    }

    else if (result == *MEMORY[0x1E69E3860])
    {
      v10 = 16;
    }

    else if (result == *MEMORY[0x1E69E37C8])
    {
      v10 = 17;
    }

    else if (result == *MEMORY[0x1E69E3920])
    {
      v10 = 18;
    }

    else if (result == *MEMORY[0x1E69E3808])
    {
      v10 = 19;
    }

    else if (result == *MEMORY[0x1E69E38C8])
    {
      v10 = 20;
    }

    else if (result == *MEMORY[0x1E69E3980])
    {
      v10 = 21;
    }

    else if (result == *MEMORY[0x1E69E37C0])
    {
      v10 = 22;
    }

    else if (result == *MEMORY[0x1E69E39B0])
    {
      v10 = 23;
    }

    else if (result == *MEMORY[0x1E69E3998])
    {
      v10 = 24;
    }

    else if (result == *MEMORY[0x1E69E3970])
    {
      v10 = 25;
    }

    else if (result == *MEMORY[0x1E69E38D0])
    {
      v10 = 26;
    }

    else if (result == *MEMORY[0x1E69E3800])
    {
      v10 = 27;
    }

    else if (result == *MEMORY[0x1E69E3880])
    {
      v10 = 28;
    }

    else if (result == *MEMORY[0x1E69E3918])
    {
      v10 = 29;
    }

    else if (result == *MEMORY[0x1E69E37D8])
    {
      v10 = 30;
    }

    else if (result == *MEMORY[0x1E69E37D0])
    {
      v10 = 31;
    }

    else if (result == *MEMORY[0x1E69E3928])
    {
      v10 = 32;
    }

    else if (result == *MEMORY[0x1E69E37B0])
    {
      v10 = 33;
    }

    else if (result == *MEMORY[0x1E69E39D0])
    {
      v10 = 34;
    }

    else if (result == *MEMORY[0x1E69E3838])
    {
      v10 = 35;
    }

    else if (result == *MEMORY[0x1E69E3960])
    {
      v10 = 36;
    }

    else if (result == *MEMORY[0x1E69E38A8])
    {
      v10 = 37;
    }

    else if (result == *MEMORY[0x1E69E3840])
    {
      v10 = 38;
    }

    else if (result == *MEMORY[0x1E69E38D8])
    {
      v10 = 39;
    }

    else if (result == *MEMORY[0x1E69E3930])
    {
      v10 = 40;
    }

    else if (result == *MEMORY[0x1E69E3990])
    {
      v10 = 41;
    }

    else if (result == *MEMORY[0x1E69E37A8])
    {
      v10 = 42;
    }

    else if (result == *MEMORY[0x1E69E39B8])
    {
      v10 = 43;
    }

    else if (result == *MEMORY[0x1E69E39A8])
    {
      v10 = 44;
    }

    else if (result == *MEMORY[0x1E69E3810])
    {
      v10 = 45;
    }

    else if (result == *MEMORY[0x1E69E38F0])
    {
      v10 = 46;
    }

    else if (result == *MEMORY[0x1E69E37F8])
    {
      v10 = 47;
    }

    else if (result == *MEMORY[0x1E69E3848])
    {
      v10 = 48;
    }

    else if (result == *MEMORY[0x1E69E3878])
    {
      v10 = 49;
    }

    else if (result == *MEMORY[0x1E69E3958])
    {
      v10 = 50;
    }

    else if (result == *MEMORY[0x1E69E3830])
    {
      v10 = 51;
    }

    else if (result == *MEMORY[0x1E69E3818])
    {
      v10 = 52;
    }

    else if (result == *MEMORY[0x1E69E3898])
    {
      v10 = 53;
    }

    else if (result == *MEMORY[0x1E69E38C0])
    {
      v10 = 54;
    }

    else if (result == *MEMORY[0x1E69E3868])
    {
      v10 = 55;
    }

    else if (result == *MEMORY[0x1E69E3900])
    {
      v10 = 56;
    }

    else if (result == *MEMORY[0x1E69E38B8])
    {
      v10 = 57;
    }

    else if (result == *MEMORY[0x1E69E38B0])
    {
      v10 = 58;
    }

    else if (result == *MEMORY[0x1E69E38E8])
    {
      v10 = 59;
    }

    else if (result == *MEMORY[0x1E69E3950])
    {
      v10 = 60;
    }

    else if (result == *MEMORY[0x1E69E3938])
    {
      v10 = 61;
    }

    else if (result == *MEMORY[0x1E69E39E0])
    {
      v10 = 62;
    }

    else if (result == *MEMORY[0x1E69E38F8])
    {
      v10 = 63;
    }

    else if (result == *MEMORY[0x1E69E37B8])
    {
      v10 = 64;
    }

    else if (result == *MEMORY[0x1E69E3850])
    {
      v10 = 65;
    }

    else if (result == *MEMORY[0x1E69E3948])
    {
      v10 = 66;
    }

    else if (result == *MEMORY[0x1E69E3888])
    {
      v10 = 67;
    }

    else if (result == *MEMORY[0x1E69E3870])
    {
      v10 = 68;
    }

    else if (result == *MEMORY[0x1E69E3908])
    {
      v10 = 69;
    }

    else if (result == *MEMORY[0x1E69E3820])
    {
      v10 = 70;
    }

    else if (result == *MEMORY[0x1E69E37E0])
    {
      v10 = 71;
    }

    else if (result == *MEMORY[0x1E69E37F0])
    {
      v10 = 72;
    }

    else if (result == *MEMORY[0x1E69E3890])
    {
      v10 = 73;
    }

    else
    {
      if (result != *MEMORY[0x1E69E38E0])
      {
        *a2 = 0;
        *(a2 + 8) = 1;
        return (*(v5 + 8))(v8, v4);
      }

      v10 = 74;
    }

    *a2 = v10;
  }

  *(a2 + 8) = 1;
  return result;
}

uint64_t sub_1C6D25D8C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1C6D76B90();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C6D76340();
  result = (*(v5 + 88))(v8, v4);
  if (result == *MEMORY[0x1E69E3540])
  {
    *a2 = 0;
LABEL_3:
    *(a2 + 8) = 1;
    return result;
  }

  if (result == *MEMORY[0x1E69E3558])
  {
    *a2 = 1;
    *(a2 + 8) = 1;
  }

  else
  {
    if (result == *MEMORY[0x1E69E3538])
    {
      *a2 = 2;
      goto LABEL_3;
    }

    if (result == *MEMORY[0x1E69E3500])
    {
      *a2 = 3;
      goto LABEL_3;
    }

    if (result == *MEMORY[0x1E69E3550])
    {
      *a2 = 4;
      goto LABEL_3;
    }

    if (result == *MEMORY[0x1E69E3548])
    {
      *a2 = 5;
      goto LABEL_3;
    }

    if (result == *MEMORY[0x1E69E3518])
    {
      *a2 = 6;
      goto LABEL_3;
    }

    if (result == *MEMORY[0x1E69E3530])
    {
      *a2 = 7;
      goto LABEL_3;
    }

    if (result == *MEMORY[0x1E69E3528])
    {
      *a2 = 8;
      goto LABEL_3;
    }

    if (result == *MEMORY[0x1E69E3510])
    {
      *a2 = 9;
      goto LABEL_3;
    }

    if (result == *MEMORY[0x1E69E3520])
    {
      *a2 = 10;
      goto LABEL_3;
    }

    if (result == *MEMORY[0x1E69E3508])
    {
      *a2 = 11;
      goto LABEL_3;
    }

    *a2 = 0;
    *(a2 + 8) = 1;
    return (*(v5 + 8))(v8, v4);
  }

  return result;
}

uint64_t sub_1C6D26034(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v34 = a5;
  v35 = a6;
  v32 = a3;
  v33 = a4;
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
  v36 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46, v12);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v32 - v17;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v19 = sub_1C6D762C0();
  v21 = v20;

  *a1 = v19;
  a1[1] = v21;
  v37 = a2;
  v22 = v11;
  v38 = v32;
  v39 = v33;
  v40 = v34;
  v41 = v35;
  sub_1C6D2669C(&unk_1EDCE3F90, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
  sub_1C6D78C30();
  v23 = *(type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0) + 20);
  sub_1C6D26458(a1 + v23, &qword_1EDCE5398, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
  sub_1C6D264F4(v18, a1 + v23);
  (*(v36 + 56))(a1 + v23, 0, 1, v46);
  sub_1C6D264F4(v18, v14);
  sub_1C6D266E4(v14, v11, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
  if (qword_1EDCE9828 != -1)
  {
    swift_once();
  }

  v24 = qword_1EDCE9830;
  sub_1C6D265B8(0, &qword_1EDCEA8A0, sub_1C6B47670, MEMORY[0x1E69E6F90]);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1C6D7E630;
  v44 = 0;
  v45 = 0xE000000000000000;
  v26 = *&v11[*(v8 + 20)] + OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__group;
  swift_beginAccess();
  v27 = *(v26 + 8);
  v42 = *v26;
  v43 = v27;
  sub_1C6D79E60();
  v28 = v44;
  v29 = v45;
  *(v25 + 56) = MEMORY[0x1E69E6158];
  *(v25 + 64) = sub_1C6B2064C();
  *(v25 + 32) = v28;
  *(v25 + 40) = v29;
  v30 = sub_1C6D79AC0();
  sub_1C6D78D30("Made session article with group %{public}@", 42, 2, &dword_1C6B09000, v24, v30, v25);

  sub_1C6D26558(v18, type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata);
  return sub_1C6D26558(v22, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
}

uint64_t sub_1C6D26458(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1C6D265B8(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1C6D264F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C6D26558(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1C6D265B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1C6D2661C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1C6D265B8(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_1C6D2669C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C6D266E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleUndisliked.article.getter@<X0>(char *a1@<X8>)
{
  sub_1C6B49B2C(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v13 - v5;
  v7 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUndisliked(0);
  sub_1C6B482A8(v1 + *(v7 + 20), v6);
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1C6B483C8(v6, a1);
  }

  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  v10 = *(v8 + 20);
  v11 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
  (*(*(v11 - 8) + 56))(&a1[v10], 1, 1, v11);
  sub_1C6D78A30();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1C6B4833C(v6);
  }

  return result;
}

uint64_t type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUndisliked(uint64_t a1)
{
  result = qword_1EDCE3D90;
  if (!qword_1EDCE3D90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleUndisliked.init()@<X0>(uint64_t a2@<X8>)
{
  sub_1C6D78A30();
  v3 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUndisliked(0) + 20);
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a2 + v3, 1, 1, v4);
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleUndisliked.article.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUndisliked(0) + 20);
  sub_1C6B4833C(v1 + v3);
  sub_1C6B483C8(a1, v1 + v3);
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t sub_1C6D26A70@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  sub_1C6B49B2C(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v14 - v6;
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUndisliked(0);
  sub_1C6B482A8(a1 + *(v8 + 20), v7);
  v9 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_1C6B483C8(v7, a2);
  }

  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  v11 = *(v9 + 20);
  v12 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
  (*(*(v12 - 8) + 56))(&a2[v11], 1, 1, v12);
  sub_1C6D78A30();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1C6B4833C(v7);
  }

  return result;
}

uint64_t sub_1C6D26C08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B48784(a1, v8);
  v9 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUndisliked(0) + 20);
  sub_1C6B4833C(a2 + v9);
  sub_1C6B483C8(v8, a2 + v9);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

void (*Com_Apple_News_Personalization_SessionEventArticleUndisliked.article.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6B49B2C(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v5[2] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v5[3] = v11;
  v13 = *(v11 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  v5[5] = v14;
  v16 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUndisliked(0) + 20);
  *(v5 + 12) = v16;
  sub_1C6B482A8(v1 + v16, v9);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    *v15 = 0;
    *(v15 + 1) = 0xE000000000000000;
    v18 = *(v10 + 20);
    v19 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
    (*(*(v19 - 8) + 56))(&v15[v18], 1, 1, v19);
    sub_1C6D78A30();
    if (v17(v9, 1, v10) != 1)
    {
      sub_1C6B4833C(v9);
    }
  }

  else
  {
    sub_1C6B483C8(v9, v15);
  }

  return sub_1C6B48678;
}

BOOL Com_Apple_News_Personalization_SessionEventArticleUndisliked.hasArticle.getter()
{
  sub_1C6B49B2C(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUndisliked(0);
  sub_1C6B482A8(v0 + *(v5 + 20), v4);
  v6 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_1C6B4833C(v4);
  return v7;
}

Swift::Void __swiftcall Com_Apple_News_Personalization_SessionEventArticleUndisliked.clearArticle()()
{
  v1 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUndisliked(0) + 20);
  sub_1C6B4833C(v0 + v1);
  v2 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleUndisliked.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C6D78A40();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleUndisliked.unknownFields.setter(uint64_t a1)
{
  v3 = sub_1C6D78A40();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_1C6D271D0()
{
  v0 = sub_1C6D78D20();
  __swift_allocate_value_buffer(v0, qword_1EC1D9730);
  __swift_project_value_buffer(v0, qword_1EC1D9730);
  sub_1C6B49B2C(0, &qword_1EDCDF400, sub_1C6B3FD2C, MEMORY[0x1E69E6F90]);
  sub_1C6B3FD2C(0);
  v2 = v1 - 8;
  v3 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C6D7E630;
  v5 = v4 + v3 + *(v2 + 56);
  *(v4 + v3) = 1;
  *v5 = "article";
  *(v5 + 8) = 7;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1C6D78D00();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  return sub_1C6D78D10();
}

uint64_t static Com_Apple_News_Personalization_SessionEventArticleUndisliked._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5BD8 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D9730);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleUndisliked.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1C6D78AD0();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1C6D27470(a1, v5, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1C6D27470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUndisliked(0);
  type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  sub_1C6D27EBC(&qword_1EDCE5300, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionArticle);
  return sub_1C6D78BB0();
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleUndisliked.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6D2757C(v3, a1, a2, a3);
  if (!v4)
  {
    return sub_1C6D78A20();
  }

  return result;
}

uint64_t sub_1C6D2757C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C6B49B2C(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUndisliked(0);
  sub_1C6B482A8(a1 + *(v14 + 20), v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C6B4833C(v8);
  }

  sub_1C6B483C8(v8, v13);
  sub_1C6D27EBC(&qword_1EDCE5300, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionArticle);
  sub_1C6D78CF0();
  return sub_1C6B487E8(v13, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleUndisliked.hashValue.getter()
{
  sub_1C6D7A260();
  type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUndisliked(0);
  sub_1C6D27EBC(&qword_1EC1D9748, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUndisliked, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventArticleUndisliked);
  sub_1C6D79510();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6D27858(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6D27EBC(&qword_1EC1D9760, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUndisliked, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventArticleUndisliked);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6D278D4@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5BD8 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D9730);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C6D2797C(uint64_t a1)
{
  v2 = sub_1C6D27EBC(&qword_1EC1D83E8, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUndisliked, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventArticleUndisliked);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6D279E8(uint64_t a1, uint64_t a2)
{
  sub_1C6D27EBC(&qword_1EC1D83E8, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUndisliked, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventArticleUndisliked);

  return sub_1C6D78C20();
}

uint64_t _s19NewsPersonalization010Com_Apple_a1_B30_SessionEventArticleUndislikedV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B49B2C(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v24 - v11;
  sub_1C6B49A50(0);
  v14 = v13 - 8;
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUndisliked(0) + 20);
  v19 = *(v14 + 56);
  sub_1C6B482A8(a1 + v18, v17);
  sub_1C6B482A8(a2 + v18, &v17[v19]);
  v20 = *(v5 + 48);
  if (v20(v17, 1, v4) == 1)
  {
    if (v20(&v17[v19], 1, v4) == 1)
    {
      sub_1C6B4833C(v17);
LABEL_9:
      sub_1C6D78A40();
      sub_1C6D27EBC(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v21 = sub_1C6D79560();
      return v21 & 1;
    }

    goto LABEL_6;
  }

  sub_1C6B482A8(v17, v12);
  if (v20(&v17[v19], 1, v4) == 1)
  {
    sub_1C6B487E8(v12, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
LABEL_6:
    sub_1C6B487E8(v17, sub_1C6B49A50);
    goto LABEL_7;
  }

  sub_1C6B483C8(&v17[v19], v8);
  v22 = static Com_Apple_News_Personalization_SessionArticle.== infix(_:_:)(v12, v8);
  sub_1C6B487E8(v8, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  sub_1C6B487E8(v12, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  sub_1C6B4833C(v17);
  if (v22)
  {
    goto LABEL_9;
  }

LABEL_7:
  v21 = 0;
  return v21 & 1;
}

uint64_t sub_1C6D27EBC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t Com_Apple_News_Personalization_SessionArticleLegacyMetadata.features.setter(uint64_t a1)
{
  v2 = v1;
  sub_1C6BBB75C(0, qword_1EDCE5190, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v14 - v6;
  v8 = *(type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
    swift_allocObject();
    v10 = sub_1C6D2BEA8(v10);
    *(v2 + v8) = v10;
  }

  sub_1C6BB7E24(a1, v7, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
  v11 = type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures(0);
  (*(*(v11 - 8) + 56))(v7, 0, 1, v11);
  v12 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__features;
  swift_beginAccess();
  sub_1C6D2C4B4(v7, &v10[v12], qword_1EDCE5190, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
  return swift_endAccess();
}

uint64_t Com_Apple_News_Personalization_SessionArticleLegacyMetadata.publisherID.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
    swift_allocObject();
    v8 = sub_1C6D2BEA8(v8);
    *(v3 + v6) = v8;
  }

  swift_beginAccess();
  *(v8 + 3) = a1;
  *(v8 + 4) = a2;
}

uint64_t Com_Apple_News_Personalization_SessionArticleLegacyMetadata.topicIds.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
    swift_allocObject();
    v6 = sub_1C6D2BEA8(v6);
    *(v2 + v4) = v6;
  }

  swift_beginAccess();
  *(v6 + 2) = a1;
}

uint64_t Com_Apple_News_Personalization_SessionArticleLegacyMetadata.length.setter(int a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
    swift_allocObject();
    v6 = sub_1C6D2BEA8(v6);
    *(v2 + v4) = v6;
  }

  v7 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__length;
  result = swift_beginAccess();
  *&v6[v7] = a1;
  return result;
}

uint64_t sub_1C6D282D0(uint64_t a1, uint64_t *a2)
{
  v4 = v2;
  sub_1C6BBB75C(0, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v16 - v8;
  v10 = *(type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v2 + v10);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
    swift_allocObject();
    v12 = sub_1C6D2BEA8(v12);
    *(v4 + v10) = v12;
  }

  sub_1C6BB7E24(a1, v9, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  v13 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  (*(*(v13 - 8) + 56))(v9, 0, 1, v13);
  v14 = *a2;
  swift_beginAccess();
  sub_1C6D2C4B4(v9, &v12[v14], qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  return swift_endAccess();
}

uint64_t Com_Apple_News_Personalization_SessionArticleLegacyMetadata.adCategories.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
    swift_allocObject();
    v6 = sub_1C6D2BEA8(v6);
    *(v2 + v4) = v6;
  }

  v7 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__adCategories;
  swift_beginAccess();
  *&v6[v7] = a1;
}

uint64_t Com_Apple_News_Personalization_SessionArticleLegacyMetadata.publisherID.getter()
{
  v1 = *(v0 + *(type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0) + 20));
  swift_beginAccess();
  v2 = *(v1 + 24);

  return v2;
}

uint64_t Com_Apple_News_Personalization_SessionArticleLegacyMetadata.topicIds.getter()
{
  type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0);
  swift_beginAccess();
}

uint64_t Com_Apple_News_Personalization_SessionArticleLegacyMetadata.adCategories.getter()
{
  type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0);
  swift_beginAccess();
}

uint64_t Com_Apple_News_Personalization_SessionArticleLegacyMetadata.length.getter()
{
  v1 = *(v0 + *(type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0) + 20));
  v2 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__length;
  swift_beginAccess();
  return *(v1 + v2);
}

uint64_t sub_1C6D28708@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1C6BBB75C(0, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v14 - v7;
  v9 = *(v2 + *(type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0) + 20));
  v10 = *a1;
  swift_beginAccess();
  sub_1C6BB7D34(v9 + v10, v8, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  v11 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  v12 = *(*(v11 - 8) + 48);
  if (v12(v8, 1, v11) != 1)
  {
    return sub_1C6BB7E24(v8, a2, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  }

  *a2 = xmmword_1C6D7F510;
  sub_1C6D78A30();
  result = (v12)(v8, 1, v11);
  if (result != 1)
  {
    return sub_1C6BB7DB4(v8, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  }

  return result;
}

uint64_t Com_Apple_News_Personalization_SessionArticleLegacyMetadata.features.getter@<X0>(_DWORD *a1@<X8>)
{
  sub_1C6BBB75C(0, qword_1EDCE5190, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v12 - v5;
  v7 = *(v1 + *(type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0) + 20));
  v8 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__features;
  swift_beginAccess();
  sub_1C6BB7D34(v7 + v8, v6, qword_1EDCE5190, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
  v9 = type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_1C6BB7E24(v6, a1, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
  }

  *(a1 + 3) = 0;
  *a1 = 0;
  sub_1C6D78A30();
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1C6BB7DB4(v6, qword_1EDCE5190, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
  }

  return result;
}

uint64_t sub_1C6D28A8C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + *(type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0) + 20)) + *a1;
  result = swift_beginAccess();
  v6 = *(v4 + 8);
  *a2 = *v4;
  *(a2 + 8) = v6;
  return result;
}

BOOL Com_Apple_News_Personalization_SessionArticleLegacyMetadata.hasGroupBackingTagID.getter()
{
  v1 = *(v0 + *(type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0) + 20)) + OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__groupBackingTagID;
  swift_beginAccess();
  return *(v1 + 8) != 0;
}

uint64_t Com_Apple_News_Personalization_SessionArticleLegacyMetadata.groupBackingTagID.getter()
{
  v1 = (*(v0 + *(type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0) + 20)) + OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__groupBackingTagID);
  swift_beginAccess();
  if (v1[1])
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

BOOL sub_1C6D28C20(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t *a3, uint64_t (*a4)(void))
{
  sub_1C6BBB75C(0, a1, a2, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v18 - v11;
  v13 = *(v4 + *(type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0) + 20));
  v14 = *a3;
  swift_beginAccess();
  sub_1C6BB7D34(v13 + v14, v12, a1, a2);
  v15 = a4(0);
  v16 = (*(*(v15 - 8) + 48))(v12, 1, v15) != 1;
  sub_1C6BB7DB4(v12, a1, a2);
  return v16;
}

uint64_t sub_1C6D28D70(uint64_t *a1, void *a2)
{
  v4 = v2;
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v2 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
    swift_allocObject();
    v9 = sub_1C6D2BEA8(v9);
    *(v4 + v7) = v9;
  }

  v10 = &v9[*a2];
  result = swift_beginAccess();
  *v10 = v5;
  v10[8] = v6;
  return result;
}

uint64_t Com_Apple_News_Personalization_SessionArticleLegacyMetadata.groupBackingTagID.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
    swift_allocObject();
    v8 = sub_1C6D2BEA8(v8);
    *(v3 + v6) = v8;
  }

  v9 = &v8[OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__groupBackingTagID];
  swift_beginAccess();
  *v9 = a1;
  *(v9 + 1) = a2;
}

uint64_t sub_1C6D28EE0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0) + 20));
  swift_beginAccess();
  *a2 = *(v3 + 16);
}

uint64_t sub_1C6D28F3C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0) + 20);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(a2 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
    swift_allocObject();
    v6 = sub_1C6D2BEA8(v6);
    *(a2 + v4) = v6;
  }

  swift_beginAccess();
  *(v6 + 2) = v3;
}

void (*Com_Apple_News_Personalization_SessionArticleLegacyMetadata.topicIds.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  *(v4 + 72) = *(v6 + 16);

  return sub_1C6D29088;
}

void sub_1C6D29088(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 80);
  if (a2)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v5 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 88);
      v9 = *(v2 + 80);
      type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
      swift_allocObject();
      v7 = sub_1C6D2BEA8(v7);
      *(v9 + v8) = v7;
    }

    swift_beginAccess();
    *(v7 + 2) = v3;
  }

  else
  {
    v10 = swift_isUniquelyReferenced_nonNull_native();
    v11 = *(v5 + v4);
    if ((v10 & 1) == 0)
    {
      v12 = *(v2 + 88);
      v13 = *(v2 + 80);
      type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
      swift_allocObject();
      v11 = sub_1C6D2BEA8(v11);
      *(v13 + v12) = v11;
    }

    swift_beginAccess();
    *(v11 + 2) = v3;
  }

  free(v2);
}

uint64_t sub_1C6D291B8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0) + 20));
  swift_beginAccess();
  v4 = *(v3 + 32);
  *a2 = *(v3 + 24);
  a2[1] = v4;
}

uint64_t sub_1C6D29214(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0) + 20);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(a2 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
    swift_allocObject();
    v7 = sub_1C6D2BEA8(v7);
    *(a2 + v5) = v7;
  }

  swift_beginAccess();
  *(v7 + 3) = v4;
  *(v7 + 4) = v3;
}

void (*Com_Apple_News_Personalization_SessionArticleLegacyMetadata.publisherID.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0) + 20);
  *(v4 + 96) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 32);
  *(v4 + 72) = *(v6 + 24);
  *(v4 + 80) = v7;

  return sub_1C6D29368;
}

void sub_1C6D29368(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 96);
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 88);
  if (a2)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *(v6 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = *(v2 + 96);
      v10 = *(v2 + 88);
      type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
      swift_allocObject();
      v8 = sub_1C6D2BEA8(v8);
      *(v10 + v9) = v8;
    }

    swift_beginAccess();
    *(v8 + 3) = v3;
    *(v8 + 4) = v5;
  }

  else
  {
    v11 = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v6 + v4);
    if ((v11 & 1) == 0)
    {
      v13 = *(v2 + 96);
      v14 = *(v2 + 88);
      type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
      swift_allocObject();
      v12 = sub_1C6D2BEA8(v12);
      *(v14 + v13) = v12;
    }

    swift_beginAccess();
    *(v12 + 3) = v3;
    *(v12 + 4) = v5;
  }

  free(v2);
}

uint64_t sub_1C6D29498(uint64_t a1, uint64_t a2)
{
  sub_1C6BBB75C(0, qword_1EDCE5190, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v18 - v6;
  v8 = type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6BB8128(a1, v12, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
  v13 = *(type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(a2 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
    swift_allocObject();
    v15 = sub_1C6D2BEA8(v15);
    *(a2 + v13) = v15;
  }

  sub_1C6BB7E24(v12, v7, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
  (*(v9 + 56))(v7, 0, 1, v8);
  v16 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__features;
  swift_beginAccess();
  sub_1C6D2C4B4(v7, &v15[v16], qword_1EDCE5190, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
  return swift_endAccess();
}

void (*Com_Apple_News_Personalization_SessionArticleLegacyMetadata.features.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  sub_1C6BBB75C(0, qword_1EDCE5190, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures, MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = v8;
  *(v5 + 88) = v8;
  v10 = type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures(0);
  *(v5 + 96) = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  *(v5 + 104) = v11;
  v13 = *(v11 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  *(v5 + 120) = v14;
  v16 = *(type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0) + 20);
  *(v5 + 128) = v16;
  v17 = *(v1 + v16);
  v18 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__features;
  swift_beginAccess();
  sub_1C6BB7D34(v17 + v18, v9, qword_1EDCE5190, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
  v19 = *(v12 + 48);
  if (v19(v9, 1, v10) == 1)
  {
    *(v15 + 3) = 0;
    *v15 = 0;
    sub_1C6D78A30();
    if (v19(v9, 1, v10) != 1)
    {
      sub_1C6BB7DB4(v9, qword_1EDCE5190, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
    }
  }

  else
  {
    sub_1C6BB7E24(v9, v15, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
  }

  return sub_1C6D2994C;
}

void sub_1C6D2994C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_1C6BB8128(*(v2 + 120), *(v2 + 112), type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = *(v2 + 128);
      v8 = *(v2 + 72);
      type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
      swift_allocObject();
      v6 = sub_1C6D2BEA8(v6);
      *(v8 + v7) = v6;
    }

    v10 = *(v2 + 112);
    v9 = *(v2 + 120);
    v11 = *(v2 + 96);
    v12 = *(v2 + 104);
    v14 = *(v2 + 80);
    v13 = *(v2 + 88);
    sub_1C6BB7E24(v10, v14, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
    (*(v12 + 56))(v14, 0, 1, v11);
    v15 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__features;
    swift_beginAccess();
    sub_1C6D2C4B4(v14, &v6[v15], qword_1EDCE5190, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
    swift_endAccess();
    sub_1C6BB8984(v9, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
  }

  else
  {
    v16 = *(v2 + 72);
    v17 = swift_isUniquelyReferenced_nonNull_native();
    v18 = *(v16 + v3);
    if ((v17 & 1) == 0)
    {
      v19 = *(v2 + 128);
      v20 = *(v2 + 72);
      type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
      swift_allocObject();
      v18 = sub_1C6D2BEA8(v18);
      *(v20 + v19) = v18;
    }

    v10 = *(v2 + 112);
    v9 = *(v2 + 120);
    v21 = *(v2 + 96);
    v22 = *(v2 + 104);
    v14 = *(v2 + 80);
    v13 = *(v2 + 88);
    sub_1C6BB7E24(v9, v14, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
    (*(v22 + 56))(v14, 0, 1, v21);
    v23 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__features;
    swift_beginAccess();
    sub_1C6D2C4B4(v14, &v18[v23], qword_1EDCE5190, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
    swift_endAccess();
  }

  free(v9);
  free(v10);
  free(v13);
  free(v14);

  free(v2);
}

uint64_t sub_1C6D29BEC(int *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(a2 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
    swift_allocObject();
    v6 = sub_1C6D2BEA8(v6);
    *(a2 + v4) = v6;
  }

  v7 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__length;
  result = swift_beginAccess();
  *&v6[v7] = v3;
  return result;
}

void (*Com_Apple_News_Personalization_SessionArticleLegacyMetadata.length.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__length;
  swift_beginAccess();
  *(v4 + 80) = *(v6 + v7);
  return sub_1C6D29D30;
}

void sub_1C6D29D30(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  v4 = *(*a1 + 84);
  v5 = *(*a1 + 72);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v2 + 84);
    v9 = *(v2 + 72);
    type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
    swift_allocObject();
    v7 = sub_1C6D2BEA8(v7);
    *(v9 + v8) = v7;
  }

  v10 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__length;
  swift_beginAccess();
  *&v7[v10] = v3;

  free(v2);
}

void (*Com_Apple_News_Personalization_SessionArticleLegacyMetadata.group.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__group;
  swift_beginAccess();
  v7 = *(v6 + 8);
  *(v4 + 72) = *v6;
  *(v4 + 80) = v7;
  return sub_1C6D29EB0;
}

uint64_t sub_1C6D29EBC@<X0>(uint64_t a1@<X0>, void *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = *(a1 + *(type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0) + 20)) + *a2;
  result = swift_beginAccess();
  v6 = *(v4 + 8);
  *a3 = *v4;
  *(a3 + 8) = v6;
  return result;
}

uint64_t sub_1C6D29F30(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(a2 + v9);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
    swift_allocObject();
    v11 = sub_1C6D2BEA8(v11);
    *(a2 + v9) = v11;
  }

  v12 = &v11[*a5];
  result = swift_beginAccess();
  *v12 = v7;
  v12[8] = v8;
  return result;
}

void (*Com_Apple_News_Personalization_SessionArticleLegacyMetadata.feed.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__feed;
  swift_beginAccess();
  v7 = *(v6 + 8);
  *(v4 + 72) = *v6;
  *(v4 + 80) = v7;
  return sub_1C6D2A094;
}

void sub_1C6D2A0A0(uint64_t *a1, char a2, void *a3)
{
  v4 = *a1;
  v5 = *(*a1 + 72);
  v6 = *(*a1 + 84);
  v7 = *(*a1 + 88);
  v8 = *(*a1 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v7 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = *(v4 + 84);
    v12 = *(v4 + 88);
    type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
    swift_allocObject();
    v10 = sub_1C6D2BEA8(v10);
    *(v12 + v11) = v10;
  }

  v13 = &v10[*a3];
  swift_beginAccess();
  *v13 = v5;
  v13[8] = v8;

  free(v4);
}

void (*Com_Apple_News_Personalization_SessionArticleLegacyMetadata.viewAction.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5) + OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__viewAction;
  swift_beginAccess();
  v7 = *(v6 + 8);
  *(v4 + 72) = *v6;
  *(v4 + 80) = v7;
  return sub_1C6D2A234;
}

uint64_t sub_1C6D2A240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  sub_1C6BBB75C(0, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v22 - v10;
  v12 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6BB8128(a1, v16, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  v17 = *(type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *(a2 + v17);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
    swift_allocObject();
    v19 = sub_1C6D2BEA8(v19);
    *(a2 + v17) = v19;
  }

  sub_1C6BB7E24(v16, v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  (*(v13 + 56))(v11, 0, 1, v12);
  v20 = *a5;
  swift_beginAccess();
  sub_1C6D2C4B4(v11, &v19[v20], qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  return swift_endAccess();
}

void (*Com_Apple_News_Personalization_SessionArticleLegacyMetadata.embedding.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  sub_1C6BBB75C(0, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List, MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = v8;
  *(v5 + 88) = v8;
  v10 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  *(v5 + 96) = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  *(v5 + 104) = v11;
  v13 = *(v11 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  *(v5 + 120) = v14;
  v16 = *(type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0) + 20);
  *(v5 + 128) = v16;
  v17 = *(v1 + v16);
  v18 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__embedding;
  swift_beginAccess();
  sub_1C6BB7D34(v17 + v18, v9, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  v19 = *(v12 + 48);
  if (v19(v9, 1, v10) == 1)
  {
    *v15 = xmmword_1C6D7F510;
    sub_1C6D78A30();
    if (v19(v9, 1, v10) != 1)
    {
      sub_1C6BB7DB4(v9, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    }
  }

  else
  {
    sub_1C6BB7E24(v9, v15, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  }

  return sub_1C6D2A6F8;
}

uint64_t sub_1C6D2A740@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X3>, _OWORD *a3@<X8>)
{
  sub_1C6BBB75C(0, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v15 - v8;
  v10 = *(a1 + *(type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0) + 20));
  v11 = *a2;
  swift_beginAccess();
  sub_1C6BB7D34(v10 + v11, v9, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  v12 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  v13 = *(*(v12 - 8) + 48);
  if (v13(v9, 1, v12) != 1)
  {
    return sub_1C6BB7E24(v9, a3, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  }

  *a3 = xmmword_1C6D7F510;
  sub_1C6D78A30();
  result = (v13)(v9, 1, v12);
  if (result != 1)
  {
    return sub_1C6BB7DB4(v9, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  }

  return result;
}

void (*Com_Apple_News_Personalization_SessionArticleLegacyMetadata.bodyEmbedding.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  sub_1C6BBB75C(0, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List, MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v7);
    v8 = malloc(v7);
  }

  v9 = v8;
  *(v5 + 88) = v8;
  v10 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  *(v5 + 96) = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  *(v5 + 104) = v11;
  v13 = *(v11 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  *(v5 + 120) = v14;
  v16 = *(type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0) + 20);
  *(v5 + 128) = v16;
  v17 = *(v1 + v16);
  v18 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__bodyEmbedding;
  swift_beginAccess();
  sub_1C6BB7D34(v17 + v18, v9, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  v19 = *(v12 + 48);
  if (v19(v9, 1, v10) == 1)
  {
    *v15 = xmmword_1C6D7F510;
    sub_1C6D78A30();
    if (v19(v9, 1, v10) != 1)
    {
      sub_1C6BB7DB4(v9, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    }
  }

  else
  {
    sub_1C6BB7E24(v9, v15, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  }

  return sub_1C6D2AB94;
}

void sub_1C6D2ABA0(uint64_t *a1, char a2, uint64_t *a3)
{
  v4 = *a1;
  v5 = *(*a1 + 128);
  if (a2)
  {
    v6 = *(v4 + 72);
    sub_1C6BB8128(*(v4 + 120), *(v4 + 112), type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *(v6 + v5);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = *(v4 + 128);
      v10 = *(v4 + 72);
      type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
      swift_allocObject();
      v8 = sub_1C6D2BEA8(v8);
      *(v10 + v9) = v8;
    }

    v12 = *(v4 + 112);
    v11 = *(v4 + 120);
    v13 = *(v4 + 96);
    v14 = *(v4 + 104);
    v16 = *(v4 + 80);
    v15 = *(v4 + 88);
    sub_1C6BB7E24(v12, v16, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    (*(v14 + 56))(v16, 0, 1, v13);
    v17 = *a3;
    swift_beginAccess();
    sub_1C6D2C4B4(v16, &v8[v17], qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    swift_endAccess();
    sub_1C6BB8984(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  }

  else
  {
    v18 = *(v4 + 72);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v20 = *(v18 + v5);
    if ((v19 & 1) == 0)
    {
      v21 = *(v4 + 128);
      v22 = *(v4 + 72);
      type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
      swift_allocObject();
      v20 = sub_1C6D2BEA8(v20);
      *(v22 + v21) = v20;
    }

    v12 = *(v4 + 112);
    v11 = *(v4 + 120);
    v23 = *(v4 + 96);
    v24 = *(v4 + 104);
    v16 = *(v4 + 80);
    v15 = *(v4 + 88);
    sub_1C6BB7E24(v11, v16, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    (*(v24 + 56))(v16, 0, 1, v23);
    v25 = *a3;
    swift_beginAccess();
    sub_1C6D2C4B4(v16, &v20[v25], qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    swift_endAccess();
  }

  free(v11);
  free(v12);
  free(v15);
  free(v16);

  free(v4);
}

uint64_t sub_1C6D2AE3C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void), uint64_t *a4)
{
  v9 = v4;
  sub_1C6BBB75C(0, a1, a2, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v20 - v12;
  v14 = *(type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(v4 + v14);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
    swift_allocObject();
    v16 = sub_1C6D2BEA8(v16);
    *(v9 + v14) = v16;
  }

  v17 = a3(0);
  (*(*(v17 - 8) + 56))(v13, 1, 1, v17);
  v18 = *a4;
  swift_beginAccess();
  sub_1C6D2C4B4(v13, &v16[v18], a1, a2);
  return swift_endAccess();
}

uint64_t sub_1C6D2AFA8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0) + 20));
  v4 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__adCategories;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1C6D2B014(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0) + 20);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(a2 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
    swift_allocObject();
    v6 = sub_1C6D2BEA8(v6);
    *(a2 + v4) = v6;
  }

  v7 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__adCategories;
  swift_beginAccess();
  *&v6[v7] = v3;
}

void (*Com_Apple_News_Personalization_SessionArticleLegacyMetadata.adCategories.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__adCategories;
  swift_beginAccess();
  *(v4 + 72) = *(v6 + v7);

  return sub_1C6D2B170;
}

void sub_1C6D2B170(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 80);
  if (a2)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v5 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 88);
      v9 = *(v2 + 80);
      type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
      swift_allocObject();
      v7 = sub_1C6D2BEA8(v7);
      *(v9 + v8) = v7;
    }

    v10 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__adCategories;
    swift_beginAccess();
    *&v7[v10] = v3;
  }

  else
  {
    v11 = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v5 + v4);
    if ((v11 & 1) == 0)
    {
      v13 = *(v2 + 88);
      v14 = *(v2 + 80);
      type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
      swift_allocObject();
      v12 = sub_1C6D2BEA8(v12);
      *(v14 + v13) = v12;
    }

    v15 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__adCategories;
    swift_beginAccess();
    *&v12[v15] = v3;
  }

  free(v2);
}

uint64_t sub_1C6D2B2B0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (*(a1 + *(type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0) + 20)) + OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__groupBackingTagID);
  swift_beginAccess();
  if (v3[1])
  {
    v4 = *v3;
    v5 = v3[1];
  }

  else
  {
    v4 = 0;
    v5 = 0xE000000000000000;
  }

  *a2 = v4;
  a2[1] = v5;
}

uint64_t sub_1C6D2B330(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0) + 20);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(a2 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
    swift_allocObject();
    v7 = sub_1C6D2BEA8(v7);
    *(a2 + v5) = v7;
  }

  v8 = &v7[OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__groupBackingTagID];
  swift_beginAccess();
  *v8 = v4;
  *(v8 + 1) = v3;
}

void (*Com_Apple_News_Personalization_SessionArticleLegacyMetadata.groupBackingTagID.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0) + 20);
  *(v4 + 96) = v5;
  v6 = (*(v1 + v5) + OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__groupBackingTagID);
  swift_beginAccess();
  if (v6[1])
  {
    v7 = *v6;
    v8 = v6[1];
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  *(v4 + 72) = v7;
  *(v4 + 80) = v8;

  return sub_1C6D2B4B4;
}

void sub_1C6D2B4B4(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 96);
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 88);
  if (a2)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *(v6 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = *(v2 + 96);
      v10 = *(v2 + 88);
      type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
      swift_allocObject();
      v8 = sub_1C6D2BEA8(v8);
      *(v10 + v9) = v8;
    }

    v11 = &v8[OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__groupBackingTagID];
    swift_beginAccess();
    *v11 = v3;
    *(v11 + 1) = v5;
  }

  else
  {
    v12 = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(v6 + v4);
    if ((v12 & 1) == 0)
    {
      v14 = *(v2 + 96);
      v15 = *(v2 + 88);
      type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
      swift_allocObject();
      v13 = sub_1C6D2BEA8(v13);
      *(v15 + v14) = v13;
    }

    v16 = &v13[OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__groupBackingTagID];
    swift_beginAccess();
    *v16 = v3;
    *(v16 + 1) = v5;
  }

  free(v2);
}

Swift::Void __swiftcall Com_Apple_News_Personalization_SessionArticleLegacyMetadata.clearGroupBackingTagID()()
{
  v1 = v0;
  v2 = *(type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
    swift_allocObject();
    v4 = sub_1C6D2BEA8(v4);
    *(v1 + v2) = v4;
  }

  v5 = &v4[OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__groupBackingTagID];
  swift_beginAccess();
  *v5 = 0;
  *(v5 + 1) = 0;
}

uint64_t Com_Apple_News_Personalization_SessionArticleLegacyMetadata.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C6D78A40();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Com_Apple_News_Personalization_SessionArticleLegacyMetadata.unknownFields.setter(uint64_t a1)
{
  v3 = sub_1C6D78A40();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t Com_Apple_News_Personalization_SessionArticleLegacyMetadata.init()@<X0>(uint64_t a2@<X8>)
{
  sub_1C6D78A30();
  v3 = *(type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0) + 20);
  if (qword_1EDCE41F8 != -1)
  {
    swift_once();
  }

  *(a2 + v3) = qword_1EDCE4200;
}

uint64_t sub_1C6D2B828()
{
  v0 = sub_1C6D78D20();
  __swift_allocate_value_buffer(v0, qword_1EDCE3FA8);
  __swift_project_value_buffer(v0, qword_1EDCE3FA8);
  sub_1C6BBB75C(0, &qword_1EDCDF400, sub_1C6B3FD2C, MEMORY[0x1E69E6F90]);
  sub_1C6B3FD2C(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1C6D7EED0;
  v5 = v29 + v4;
  v6 = v29 + v4 + *(v2 + 56);
  *(v29 + v4) = 1;
  *v6 = "topic_ids";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C6D78D00();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v3 + *(v2 + 56);
  *(v5 + v3) = 2;
  *v10 = "publisher_id";
  *(v10 + 8) = 12;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v3);
  v12 = v11 + *(v2 + 56);
  *v11 = 3;
  *v12 = "features";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v3);
  v14 = v13 + *(v2 + 56);
  *v13 = 4;
  *v14 = "length";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v3);
  v16 = v15 + *(v2 + 56);
  *v15 = 5;
  *v16 = "group";
  *(v16 + 1) = 5;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v3);
  v18 = v17 + *(v2 + 56);
  *v17 = 6;
  *v18 = "feed";
  *(v18 + 1) = 4;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v3);
  v20 = v19 + *(v2 + 56);
  *v19 = 7;
  *v20 = "view_action";
  *(v20 + 1) = 11;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v3);
  v22 = v21 + *(v2 + 56);
  *v21 = 8;
  *v22 = "embedding";
  *(v22 + 1) = 9;
  v22[16] = 2;
  v9();
  v23 = v5 + 8 * v3 + *(v2 + 56);
  *(v5 + 8 * v3) = 9;
  *v23 = "body_embedding";
  *(v23 + 8) = 14;
  *(v23 + 16) = 2;
  v9();
  v24 = (v5 + 9 * v3);
  v25 = v24 + *(v2 + 56);
  *v24 = 10;
  *v25 = "ad_categories";
  *(v25 + 1) = 13;
  v25[16] = 2;
  v9();
  v26 = (v5 + 10 * v3);
  v27 = v26 + *(v2 + 56);
  *v26 = 11;
  *v27 = "group_backing_tag_id";
  *(v27 + 1) = 20;
  v27[16] = 2;
  v9();
  return sub_1C6D78D10();
}

uint64_t static Com_Apple_News_Personalization_SessionArticleLegacyMetadata._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDCE3FA0 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EDCE3FA8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

char *sub_1C6D2BD04()
{
  type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
  swift_allocObject();
  result = sub_1C6D2BD44();
  qword_1EDCE4200 = result;
  return result;
}

char *sub_1C6D2BD44()
{
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 2) = MEMORY[0x1E69E7CC0];
  *(v0 + 3) = 0;
  *(v0 + 4) = 0xE000000000000000;
  v2 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__features;
  v3 = type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures(0);
  (*(*(v3 - 8) + 56))(&v0[v2], 1, 1, v3);
  *&v0[OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__length] = 0;
  v4 = &v0[OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__group];
  *v4 = 0;
  v4[8] = 1;
  v5 = &v0[OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__feed];
  *v5 = 0;
  v5[8] = 1;
  v6 = &v0[OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__viewAction];
  *v6 = 0;
  v6[8] = 1;
  v7 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__embedding;
  v8 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  v9 = *(*(v8 - 8) + 56);
  v9(&v0[v7], 1, 1, v8);
  v9(&v0[OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__bodyEmbedding], 1, 1, v8);
  *&v0[OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__adCategories] = v1;
  v10 = &v0[OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__groupBackingTagID];
  *v10 = 0;
  *(v10 + 1) = 0;
  return v0;
}

char *sub_1C6D2BEA8(void *a1)
{
  v61 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List;
  v3 = MEMORY[0x1E69E6720];
  sub_1C6BBB75C(0, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v60 = &v50 - v6;
  v54 = type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures;
  sub_1C6BBB75C(0, qword_1EDCE5190, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures, v3);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v52 = &v50 - v9;
  *(v1 + 2) = MEMORY[0x1E69E7CC0];
  *(v1 + 3) = 0;
  *(v1 + 4) = 0xE000000000000000;
  v10 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__features;
  v51 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__features;
  v11 = type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures(0);
  (*(*(v11 - 8) + 56))(&v1[v10], 1, 1, v11);
  v53 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__length;
  *&v1[OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__length] = 0;
  v12 = &v1[OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__group];
  *v12 = 0;
  v12[8] = 1;
  v13 = &v1[OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__feed];
  v55 = &v1[OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__feed];
  *v13 = 0;
  v13[8] = 1;
  v14 = &v1[OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__viewAction];
  v56 = &v1[OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__viewAction];
  *v14 = 0;
  v14[8] = 1;
  v15 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__embedding;
  v57 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__embedding;
  v16 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  v17 = *(*(v16 - 8) + 56);
  v17(&v1[v15], 1, 1, v16);
  v58 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__bodyEmbedding;
  v17(&v1[OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__bodyEmbedding], 1, 1, v16);
  v59 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__adCategories;
  *&v1[OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__adCategories] = MEMORY[0x1E69E7CC0];
  v18 = &v1[OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__groupBackingTagID];
  *v18 = 0;
  *(v18 + 1) = 0;
  swift_beginAccess();
  v19 = a1[2];
  swift_beginAccess();
  *(v1 + 2) = v19;
  swift_beginAccess();
  v21 = a1[3];
  v20 = a1[4];
  swift_beginAccess();
  *(v1 + 3) = v21;
  *(v1 + 4) = v20;
  v22 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__features;

  swift_beginAccess();
  v23 = a1 + v22;
  v24 = v52;
  v25 = v54;
  sub_1C6BB7D34(v23, v52, qword_1EDCE5190, v54);
  v26 = v51;
  swift_beginAccess();
  sub_1C6D2C4B4(v24, &v1[v26], qword_1EDCE5190, v25);
  swift_endAccess();
  v27 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__length;
  swift_beginAccess();
  LODWORD(v27) = *(a1 + v27);
  v28 = v53;
  swift_beginAccess();
  *&v1[v28] = v27;
  v29 = a1 + OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__group;
  swift_beginAccess();
  v30 = *v29;
  LOBYTE(v29) = v29[8];
  swift_beginAccess();
  *v12 = v30;
  v12[8] = v29;
  v31 = a1 + OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__feed;
  swift_beginAccess();
  v32 = *v31;
  LOBYTE(v31) = v31[8];
  v33 = v55;
  swift_beginAccess();
  *v33 = v32;
  v33[8] = v31;
  v34 = a1 + OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__viewAction;
  swift_beginAccess();
  v35 = *v34;
  LOBYTE(v34) = v34[8];
  v36 = v56;
  swift_beginAccess();
  *v36 = v35;
  v36[8] = v34;
  v37 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__embedding;
  swift_beginAccess();
  v38 = v60;
  v39 = v61;
  sub_1C6BB7D34(a1 + v37, v60, qword_1EDCEA710, v61);
  v40 = v57;
  swift_beginAccess();
  sub_1C6D2C4B4(v38, &v1[v40], qword_1EDCEA710, v39);
  swift_endAccess();
  v41 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__bodyEmbedding;
  swift_beginAccess();
  sub_1C6BB7D34(a1 + v41, v38, qword_1EDCEA710, v39);
  v42 = v58;
  swift_beginAccess();
  sub_1C6D2C4B4(v38, &v1[v42], qword_1EDCEA710, v39);
  swift_endAccess();
  v43 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__adCategories;
  swift_beginAccess();
  v44 = *(a1 + v43);
  v45 = v59;
  swift_beginAccess();
  *&v1[v45] = v44;

  v46 = (a1 + OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__groupBackingTagID);
  swift_beginAccess();
  v48 = *v46;
  v47 = v46[1];

  swift_beginAccess();
  *v18 = v48;
  *(v18 + 1) = v47;

  return v1;
}

uint64_t sub_1C6D2C4B4(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1C6BBB75C(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_1C6D2C534()
{

  sub_1C6BB7DB4(v0 + OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__features, qword_1EDCE5190, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
  sub_1C6BB7DB4(v0 + OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__embedding, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  sub_1C6BB7DB4(v0 + OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__bodyEmbedding, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);

  return swift_deallocClassInstance();
}

uint64_t Com_Apple_News_Personalization_SessionArticleLegacyMetadata.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v3 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = *(v3 + v8);
    type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata._StorageClass(0);
    swift_allocObject();
    v10 = sub_1C6D2BEA8(v11);
    *(v4 + v8) = v10;
  }

  return sub_1C6D2C6EC(v10, a1, a2, a3);
}

uint64_t sub_1C6D2C6EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1C6D78AD0();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result <= 5)
      {
        if (result <= 2)
        {
          if (result == 1)
          {
            sub_1C6D2C980(a2, a1, a3, a4);
          }

          else if (result == 2)
          {
            sub_1C6D2CA04(a2, a1, a3, a4);
          }
        }

        else if (result == 3)
        {
          sub_1C6D2CA88(a2, a1, a3, a4);
        }

        else
        {
          if (result != 4)
          {
            v11 = sub_1C6C0FB94;
            v12 = a2;
            v13 = a1;
            v14 = a3;
            v15 = a4;
            v16 = &OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__group;
            v17 = &type metadata for Com_Apple_News_Personalization_GroupType;
            goto LABEL_5;
          }

          sub_1C6D2CB64(a2, a1, a3, a4);
        }
      }

      else if (result > 8)
      {
        switch(result)
        {
          case 9:
            sub_1C6D2CC98(a2, a1, a3, a4, &OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__bodyEmbedding);
            break;
          case 10:
            sub_1C6D2CD70(a2, a1, a3, a4);
            break;
          case 11:
            sub_1C6D2CDFC(a2, a1, a3, a4);
            break;
        }
      }

      else
      {
        if (result == 6)
        {
          v11 = sub_1C6C0FBE8;
          v12 = a2;
          v13 = a1;
          v14 = a3;
          v15 = a4;
          v16 = &OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__feed;
          v17 = &type metadata for Com_Apple_News_Personalization_FeedType;
          goto LABEL_5;
        }

        if (result == 7)
        {
          v11 = sub_1C6C0FC3C;
          v12 = a2;
          v13 = a1;
          v14 = a3;
          v15 = a4;
          v16 = &OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__viewAction;
          v17 = &type metadata for Com_Apple_News_Personalization_ViewActionType;
LABEL_5:
          sub_1C6D2CBF0(v12, v13, v14, v15, v16, v11, v17);
          goto LABEL_6;
        }

        sub_1C6D2CC98(a2, a1, a3, a4, &OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__embedding);
      }

LABEL_6:
      result = sub_1C6D78AD0();
    }
  }

  return result;
}

uint64_t sub_1C6D2C980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1C6D78B60();
  return swift_endAccess();
}

uint64_t sub_1C6D2CA04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1C6D78B80();
  return swift_endAccess();
}

uint64_t sub_1C6D2CA88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures(0);
  sub_1C6D2ECFC(&qword_1EDCE51F0, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures, &protocol conformance descriptor for Com_Apple_News_Personalization_ArticleFeatures);
  sub_1C6D78BB0();
  return swift_endAccess();
}

uint64_t sub_1C6D2CB64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1C6D78B90();
  return swift_endAccess();
}

uint64_t sub_1C6D2CBF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t a7)
{
  v8 = swift_beginAccess();
  a6(v8);
  sub_1C6D78B00();
  return swift_endAccess();
}

uint64_t sub_1C6D2CC98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  swift_beginAccess();
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  sub_1C6D2ECFC(&qword_1EDCEA770, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List, &protocol conformance descriptor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  sub_1C6D78BB0();
  return swift_endAccess();
}

uint64_t sub_1C6D2CD70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1C6D78B60();
  return swift_endAccess();
}

uint64_t sub_1C6D2CDFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1C6D78B70();
  return swift_endAccess();
}

uint64_t Com_Apple_News_Personalization_SessionArticleLegacyMetadata.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0);
  result = sub_1C6D2CEF4(*(v3 + *(v8 + 20)), a1, a2, a3);
  if (!v4)
  {
    return sub_1C6D78A20();
  }

  return result;
}

uint64_t sub_1C6D2CEF4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  swift_beginAccess();
  if (*(a1[2] + 16))
  {

    sub_1C6D78CB0();

    if (v4)
    {
      return result;
    }

    v5 = 0;
  }

  swift_beginAccess();
  v11 = a1[4];
  v12 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v12 = a1[3] & 0xFFFFFFFFFFFFLL;
  }

  if (v12)
  {

    v13 = v5;
    sub_1C6D78CC0();

    if (v5)
    {
      return result;
    }
  }

  else
  {
    v13 = v5;
  }

  result = sub_1C6D2D288(a1, a2, a3, a4);
  if (!v13)
  {
    v14 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__length;
    swift_beginAccess();
    if (*(a1 + v14))
    {
      sub_1C6D78CD0();
    }

    swift_beginAccess();
    if (Com_Apple_News_Personalization_GroupType.rawValue.getter())
    {
      sub_1C6C0FB94();
      sub_1C6D78C70();
    }

    v15 = (a1 + OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__feed);
    swift_beginAccess();
    if (*v15)
    {
      sub_1C6C0FBE8();
      sub_1C6D78C70();
    }

    swift_beginAccess();
    sub_1C6C0FC3C();
    sub_1C6D78C70();
    sub_1C6D2D4D4(a1, a2, a3, a4, &OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__embedding, 8);
    sub_1C6D2D4D4(a1, a2, a3, a4, &OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__bodyEmbedding, 9);
    v16 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__adCategories;
    swift_beginAccess();
    if (*(*(a1 + v16) + 16))
    {

      sub_1C6D78CB0();
    }

    return sub_1C6D2D724(a1, a2, a3, a4);
  }

  return result;
}

uint64_t sub_1C6D2D288(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  sub_1C6BBB75C(0, qword_1EDCE5190, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__features;
  swift_beginAccess();
  sub_1C6BB7D34(a1 + v14, v8, qword_1EDCE5190, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C6BB7DB4(v8, qword_1EDCE5190, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
  }

  sub_1C6BB7E24(v8, v13, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
  sub_1C6D2ECFC(&qword_1EDCE51F0, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures, &protocol conformance descriptor for Com_Apple_News_Personalization_ArticleFeatures);
  sub_1C6D78CF0();
  return sub_1C6BB8984(v13, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
}

uint64_t sub_1C6D2D4D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v19[1] = a6;
  v19[2] = a3;
  v19[7] = a4;
  v19[0] = a2;
  sub_1C6BBB75C(0, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = v19 - v10;
  v12 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a5;
  swift_beginAccess();
  sub_1C6BB7D34(a1 + v17, v11, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    return sub_1C6BB7DB4(v11, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  }

  sub_1C6BB7E24(v11, v16, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  sub_1C6D2ECFC(&qword_1EDCEA770, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List, &protocol conformance descriptor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  sub_1C6D78CF0();
  return sub_1C6BB8984(v16, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
}

uint64_t sub_1C6D2D724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1 + OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__groupBackingTagID;
  result = swift_beginAccess();
  if (*(v4 + 8))
  {

    sub_1C6D78CC0();
  }

  return result;
}

BOOL sub_1C6D2D7CC(uint64_t a1, uint64_t *a2)
{
  v125 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  v128 = *(v125 - 8);
  MEMORY[0x1EEE9AC00](v125, v4);
  v6 = &v116 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v121 = &v116 - v9;
  sub_1C6BBB640(0, &qword_1EC1D6BA8, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  v126 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v116 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v124 = &v116 - v16;
  v17 = MEMORY[0x1E69E6720];
  sub_1C6BBB75C(0, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v120 = &v116 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v122 = &v116 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v123 = &v116 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v127 = &v116 - v29;
  v30 = type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures(0);
  v131 = *(v30 - 8);
  v132 = v30;
  MEMORY[0x1EEE9AC00](v30, v31);
  v130 = &v116 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6BBB640(0, &qword_1EC1D7458, qword_1EDCE5190, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
  v34 = v33;
  MEMORY[0x1EEE9AC00](v33, v35);
  v37 = &v116 - v36;
  sub_1C6BBB75C(0, qword_1EDCE5190, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures, v17);
  MEMORY[0x1EEE9AC00](v38 - 8, v39);
  v41 = &v116 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42, v43);
  v45 = &v116 - v44;
  swift_beginAccess();
  v46 = *(a1 + 16);
  swift_beginAccess();
  if ((sub_1C6B55CF8(v46, a2[2]) & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  v47 = a1;
  v48 = *(a1 + 24);
  v129 = v47;
  v49 = *(v47 + 32);
  swift_beginAccess();
  if ((v48 != a2[3] || v49 != a2[4]) && (sub_1C6D7A130() & 1) == 0)
  {
    return 0;
  }

  v118 = v13;
  v119 = v41;
  v117 = v6;
  v50 = a2;
  v51 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__features;
  v52 = v129;
  swift_beginAccess();
  sub_1C6BB7D34(v52 + v51, v45, qword_1EDCE5190, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
  v53 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__features;
  swift_beginAccess();
  v54 = *(v34 + 48);
  sub_1C6BB7D34(v45, v37, qword_1EDCE5190, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
  sub_1C6BB7D34(v50 + v53, &v37[v54], qword_1EDCE5190, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
  v55 = v132;
  v56 = *(v131 + 48);
  if (v56(v37, 1, v132) == 1)
  {

    sub_1C6BB7DB4(v45, qword_1EDCE5190, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
    v57 = v52;
    if (v56(&v37[v54], 1, v55) == 1)
    {
      sub_1C6BB7DB4(v37, qword_1EDCE5190, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
      goto LABEL_12;
    }

LABEL_10:
    sub_1C6BBB6B8(v37, &qword_1EC1D7458, qword_1EDCE5190, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
    goto LABEL_43;
  }

  v58 = v50;
  v59 = v119;
  sub_1C6BB7D34(v37, v119, qword_1EDCE5190, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
  if (v56(&v37[v54], 1, v55) == 1)
  {

    sub_1C6BB7DB4(v45, qword_1EDCE5190, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
    sub_1C6BB8984(v59, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
    goto LABEL_10;
  }

  v60 = v130;
  sub_1C6BB7E24(&v37[v54], v130, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
  v61 = v129;

  v62 = _s19NewsPersonalization010Com_Apple_a1_B16_ArticleFeaturesV2eeoiySbAC_ACtFZ_0(v59, v60);
  sub_1C6BB8984(v60, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
  sub_1C6BB7DB4(v45, qword_1EDCE5190, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
  v63 = v59;
  v50 = v58;
  sub_1C6BB8984(v63, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
  v57 = v61;
  sub_1C6BB7DB4(v37, qword_1EDCE5190, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures);
  if ((v62 & 1) == 0)
  {
    goto LABEL_43;
  }

LABEL_12:
  v64 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__length;
  swift_beginAccess();
  LODWORD(v64) = *(v57 + v64);
  v65 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__length;
  swift_beginAccess();
  if (v64 != *(v50 + v65))
  {
    goto LABEL_43;
  }

  v66 = (v57 + OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__group);
  swift_beginAccess();
  v67 = *v66;
  v68 = *(v66 + 8);
  v69 = v50 + OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__group;
  swift_beginAccess();
  v70 = *v69;
  v71 = v69[8];
  v135 = v67;
  v136 = v68;
  v133 = v70;
  v134 = v71;
  v72 = Com_Apple_News_Personalization_GroupType.rawValue.getter();
  if (v72 != Com_Apple_News_Personalization_GroupType.rawValue.getter())
  {
    goto LABEL_43;
  }

  v73 = v57 + OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__feed;
  swift_beginAccess();
  v74 = *v73;
  v75 = *(v73 + 8);
  v76 = (v50 + OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__feed);
  swift_beginAccess();
  if (!sub_1C6B69164(v74, v75, *v76))
  {
    goto LABEL_43;
  }

  v77 = v57 + OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__viewAction;
  swift_beginAccess();
  v78 = *v77;
  v79 = *(v77 + 8);
  v80 = (v50 + OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__viewAction);
  swift_beginAccess();
  if (!sub_1C6B69164(v78, v79, *v80))
  {
    goto LABEL_43;
  }

  v81 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__embedding;
  swift_beginAccess();
  v82 = v127;
  sub_1C6BB7D34(v57 + v81, v127, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  v83 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__embedding;
  swift_beginAccess();
  v84 = *(v126 + 48);
  v85 = v124;
  sub_1C6BB7D34(v82, v124, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  sub_1C6BB7D34(v50 + v83, v85 + v84, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  v86 = v128 + 48;
  v87 = *(v128 + 48);
  v88 = v125;
  if (v87(v85, 1, v125) == 1)
  {
    sub_1C6BB7DB4(v82, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    v89 = v87(v85 + v84, 1, v88);
    v90 = v118;
    if (v89 == 1)
    {
      v132 = v87;
      v128 = v86;
      sub_1C6BB7DB4(v85, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
      goto LABEL_19;
    }

LABEL_30:
    sub_1C6BBB6B8(v85, &qword_1EC1D6BA8, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    goto LABEL_43;
  }

  v104 = v123;
  sub_1C6BB7D34(v85, v123, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  v105 = v87(v85 + v84, 1, v88);
  v90 = v118;
  if (v105 == 1)
  {
    sub_1C6BB7DB4(v127, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    sub_1C6BB8984(v104, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    goto LABEL_30;
  }

  v106 = v85 + v84;
  v107 = v121;
  sub_1C6BB7E24(v106, v121, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  if (!sub_1C6B5E090(*v104, *(v104 + 8), *v107, *(v107 + 8)))
  {
    sub_1C6BB7DB4(v127, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    sub_1C6BB8984(v107, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    sub_1C6BB8984(v104, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    v110 = v85;
LABEL_42:
    sub_1C6BB7DB4(v110, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    goto LABEL_43;
  }

  v132 = v87;
  v128 = v86;
  sub_1C6D78A40();
  sub_1C6D2ECFC(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v108 = sub_1C6D79560();
  sub_1C6BB7DB4(v127, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  sub_1C6BB8984(v107, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  v88 = v125;
  sub_1C6BB8984(v104, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  sub_1C6BB7DB4(v85, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  if ((v108 & 1) == 0)
  {
    goto LABEL_43;
  }

LABEL_19:
  v91 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__bodyEmbedding;
  swift_beginAccess();
  v92 = v122;
  sub_1C6BB7D34(v57 + v91, v122, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  v93 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__bodyEmbedding;
  swift_beginAccess();
  v94 = *(v126 + 48);
  sub_1C6BB7D34(v92, v90, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  sub_1C6BB7D34(v50 + v93, v90 + v94, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  v95 = v132;
  if (v132(v90, 1, v88) == 1)
  {
    sub_1C6BB7DB4(v92, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    if (v95(v90 + v94, 1, v88) == 1)
    {
      sub_1C6BB7DB4(v90, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
      goto LABEL_22;
    }

LABEL_36:
    sub_1C6BBB6B8(v90, &qword_1EC1D6BA8, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    goto LABEL_43;
  }

  v109 = v120;
  sub_1C6BB7D34(v90, v120, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  if (v95(v90 + v94, 1, v88) == 1)
  {
    sub_1C6BB7DB4(v122, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    sub_1C6BB8984(v109, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    goto LABEL_36;
  }

  v111 = v90 + v94;
  v112 = v117;
  sub_1C6BB7E24(v111, v117, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  if (!sub_1C6B5E090(*v109, *(v109 + 8), *v112, *(v112 + 8)))
  {
    sub_1C6BB7DB4(v122, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    sub_1C6BB8984(v112, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    sub_1C6BB8984(v109, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    v110 = v90;
    goto LABEL_42;
  }

  sub_1C6D78A40();
  sub_1C6D2ECFC(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v113 = sub_1C6D79560();
  sub_1C6BB7DB4(v122, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  sub_1C6BB8984(v112, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  sub_1C6BB8984(v109, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  sub_1C6BB7DB4(v90, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  if ((v113 & 1) == 0)
  {
    goto LABEL_43;
  }

LABEL_22:
  v96 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__adCategories;
  swift_beginAccess();
  v97 = *(v57 + v96);
  v98 = OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__adCategories;
  swift_beginAccess();
  if ((sub_1C6B55CF8(v97, *(v50 + v98)) & 1) == 0)
  {
    goto LABEL_43;
  }

  v99 = (v57 + OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__groupBackingTagID);
  swift_beginAccess();
  v100 = *v99;
  v101 = v99[1];
  v102 = (v50 + OBJC_IVAR____TtCV19NewsPersonalization59Com_Apple_News_Personalization_SessionArticleLegacyMetadataP33_D8642AF0C173376959CD58EC4E9760A213_StorageClass__groupBackingTagID);
  swift_beginAccess();
  v103 = v102[1];
  if (!v101)
  {

    if (!v103)
    {
      return 1;
    }

    return 0;
  }

  if (!v103)
  {
LABEL_43:

    return 0;
  }

  if (v100 == *v102 && v101 == v103)
  {

    return 1;
  }

  v115 = sub_1C6D7A130();

  return (v115 & 1) != 0;
}

uint64_t Com_Apple_News_Personalization_SessionArticleLegacyMetadata.hashValue.getter()
{
  sub_1C6D7A260();
  type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0);
  sub_1C6D2ECFC(&qword_1EC1D9768, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);
  sub_1C6D79510();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6D2E8F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C6D78A30();
  v4 = *(a1 + 20);
  if (qword_1EDCE41F8 != -1)
  {
    swift_once();
  }

  *(a2 + v4) = qword_1EDCE4200;
}

uint64_t sub_1C6D2E9BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6D2ECFC(&qword_1EC1D9778, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6D2EA38@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDCE3FA0 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EDCE3FA8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C6D2EAE0(uint64_t a1)
{
  v2 = sub_1C6D2ECFC(&unk_1EDCE3F90, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6D2EB4C(uint64_t a1, uint64_t a2)
{
  sub_1C6D2ECFC(&unk_1EDCE3F90, type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata);

  return sub_1C6D78C20();
}

uint64_t _s19NewsPersonalization010Com_Apple_a1_B29_SessionArticleLegacyMetadataV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  if (v5 != v6)
  {

    v7 = sub_1C6D2D7CC(v5, v6);

    if (!v7)
    {
      return 0;
    }
  }

  sub_1C6D78A40();
  sub_1C6D2ECFC(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1C6D79560() & 1;
}

uint64_t sub_1C6D2ECFC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C6D2EE44(uint64_t a1)
{
  result = sub_1C6D78A40();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Com_Apple_News_Personalization_SessionArticleLegacyMetadata._StorageClass(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1C6D2EED0(uint64_t a1)
{
  sub_1C6BBB75C(319, qword_1EDCE5190, type metadata accessor for Com_Apple_News_Personalization_ArticleFeatures, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1C6BBB75C(319, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFollowed.init()@<X0>(_DWORD *a1@<X8>)
{
  *a1 = 0;
  type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFollowed(0);
  return sub_1C6D78A30();
}

uint64_t type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFollowed(uint64_t a1)
{
  result = qword_1EDCE36A0;
  if (!qword_1EDCE36A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFollowed.== infix(_:_:)(_DWORD *a1, _DWORD *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFollowed(0);
  sub_1C6D78A40();
  sub_1C6D2FAB4(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1C6D79560() & 1;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFollowed.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFollowed(0) + 20);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFollowed.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFollowed(0) + 20);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_1C6D2F2F8()
{
  v0 = sub_1C6D78D20();
  __swift_allocate_value_buffer(v0, qword_1EC1D9780);
  __swift_project_value_buffer(v0, qword_1EC1D9780);
  sub_1C6B4A290(0);
  sub_1C6B3FD2C(0);
  v2 = v1 - 8;
  v3 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C6D7E630;
  v5 = v4 + v3 + *(v2 + 56);
  *(v4 + v3) = 1;
  *v5 = "tag_id";
  *(v5 + 8) = 6;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADE8];
  v7 = sub_1C6D78D00();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  return sub_1C6D78D10();
}

uint64_t static Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFollowed._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5BE0 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D9780);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFollowed.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1C6D78AD0();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1C6D78B50();
    }
  }

  return result;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFollowed.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = sub_1C6D78CA0(), !v4))
  {
    type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFollowed(0);
    return sub_1C6D78A20();
  }

  return result;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFollowed.hashValue.getter()
{
  sub_1C6D7A260();
  type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFollowed(0);
  sub_1C6D2FAB4(&qword_1EC1D9798, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFollowed, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFollowed);
  sub_1C6D79510();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6D2F6BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6D2FAB4(&qword_1EC1D97B0, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFollowed, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFollowed);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6D2F738@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5BE0 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D9780);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C6D2F7E0(uint64_t a1)
{
  v2 = sub_1C6D2FAB4(&qword_1EC1D7658, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFollowed, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFollowed);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6D2F84C(uint64_t a1, uint64_t a2)
{
  sub_1C6D2FAB4(&qword_1EC1D7658, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFollowed, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFollowed);

  return sub_1C6D78C20();
}

uint64_t sub_1C6D2F9E8(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  sub_1C6D78A40();
  sub_1C6D2FAB4(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1C6D79560() & 1;
}

uint64_t sub_1C6D2FAB4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C6D2FAFC(uint64_t a1)
{
  v1 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));

  return MEMORY[0x1EEE6DED8](v1);
}

uint64_t sub_1C6D2FB30()
{
  sub_1C6B1AC10();
  *(swift_allocObject() + 16) = v0;
  v1 = v0;
  sub_1C6D78290();
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1C6D2FE90;
  *(v3 + 24) = v2;
  v4 = v1;
  v5 = sub_1C6D78210();
  v6 = sub_1C6D782A0();

  return v6;
}

uint64_t sub_1C6D2FC5C()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1C6D2FCF8;

  return sub_1C6BBF878();
}

uint64_t sub_1C6D2FCF8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1C6D2FDF0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C6BB6A40;

  return sub_1C6D2FC3C(a1, v4);
}

uint64_t sub_1C6D2FE90()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC19NewsPersonalization26RecipeAutoFavoritesManager_service + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 16))(ObjectType, v1);
}

id RecipeAutoFavoritesManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id RecipeAutoFavoritesManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RecipeAutoFavoritesManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id RecipeAutoFavoritesManager.autofavoriteTagIDs()()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC19NewsPersonalization26RecipeAutoFavoritesManager_persistence) + 16);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  if (!v2)
  {
    v3 = [objc_opt_self() standardUserDefaults];
    v4 = sub_1C6D79570();
    v2 = [v3 stringArrayForKey_];

    if (v2)
    {
      v5 = sub_1C6D79780();

      v2 = sub_1C6B1E610(v5);
    }
  }

  os_unfair_lock_unlock((v1 + 24));
  if (!v2)
  {
    if (qword_1EDCE23B8 != -1)
    {
      swift_once();
    }

    v6 = qword_1EDCE23C0;
    v7 = sub_1C6D79AA0();
    sub_1C6D78D30("No persisted autofavorite tag IDs found. Falling back to empty set.", 67, 2, &dword_1C6B09000, v6, v7, MEMORY[0x1E69E7CC0]);
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

uint64_t sub_1C6D30230()
{
  v1 = swift_task_alloc();
  *(v0 + 152) = v1;
  *v1 = v0;
  v1[1] = sub_1C6D302CC;

  return sub_1C6BBF878();
}

uint64_t sub_1C6D302CC()
{

  return MEMORY[0x1EEE6DFA0](sub_1C6D303C8, 0, 0);
}

uint64_t sub_1C6D303C8()
{
  v1 = *(v0[18] + OBJC_IVAR____TtC19NewsPersonalization26RecipeAutoFavoritesManager_service);
  v0[2] = v0;
  v0[3] = sub_1C6D1C608;
  v2 = swift_continuation_init();
  sub_1C6D1CDEC();
  v0[17] = v3;
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1C6D2FAFC;
  v0[13] = &block_descriptor_14;
  v0[14] = v2;
  [v1 prepareFavorites_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1C6D30648(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1C6D306F0;

  return RecipeAutoFavoritesManager.prepareFavorites()();
}

uint64_t sub_1C6D306F0()
{
  v1 = *(*v0 + 24);
  v2 = *(*v0 + 16);
  v5 = *v0;

  v1[2](v1);
  _Block_release(v1);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_1C6D30828(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_1C6BE1AB0;

  return v6();
}

uint64_t sub_1C6D30910(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_1C6BB6A40;

  return v7();
}

uint64_t sub_1C6D309F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1C6B1ABB8(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6BE15F4(a3, v12);
  v13 = sub_1C6D79880();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1C6B1AB5C(v12);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_1C6D79870();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v15 = sub_1C6D79840();
  v17 = v16;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v18 = sub_1C6D79600() + 32;
    v19 = swift_allocObject();
    *(v19 + 16) = a4;
    *(v19 + 24) = a5;

    if (v17 | v15)
    {
      v25[0] = 0;
      v25[1] = 0;
      v20 = v25;
      v25[2] = v15;
      v25[3] = v17;
    }

    else
    {
      v20 = 0;
    }

    v24[1] = 7;
    v24[2] = v20;
    v24[3] = v18;
    v22 = swift_task_create();

    sub_1C6B1AB5C(a3);

    return v22;
  }

LABEL_8:
  sub_1C6B1AB5C(a3);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_1C6D30CF8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1C6BB6A40;

  return sub_1C6D30648(v2, v3);
}

uint64_t sub_1C6D30DA4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C6BE1AB0;

  return sub_1C6BE1658(a1, v4);
}

void sub_1C6D30E5C(uint64_t a1)
{
  if (!qword_1EDCE0650[0])
  {
    sub_1C6B37F88(255);
    v3 = v2;
    v4 = sub_1C6D30EC0();
    v6 = type metadata accessor for PersonalizedPaywallDataService(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, qword_1EDCE0650);
    }
  }
}

unint64_t sub_1C6D30EC0()
{
  result = qword_1EDCEA338;
  if (!qword_1EDCEA338)
  {
    sub_1C6B37F88(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCEA338);
  }

  return result;
}

uint64_t ComputeService<>.getTabiData()@<X0>(uint64_t a1@<X8>)
{
  sub_1C6D3152C(0, &qword_1EDCE5D08, sub_1C6D310A0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v12 - v4;
  sub_1C6D78450();
  sub_1C6D310A0(0);
  v7 = v6;
  v8 = *(v6 - 8);
  if ((*(v8 + 48))(v5, 1, v6) == 1)
  {
    sub_1C6D31C30(v5, &qword_1EDCE5D08, sub_1C6D310A0);
    v9 = 1;
  }

  else
  {
    sub_1C6D3115C(a1);
    (*(v8 + 8))(v5, v7);
    v9 = 0;
  }

  v10 = sub_1C6D77EA0();
  return (*(*(v10 - 8) + 56))(a1, v9, 1, v10);
}

void sub_1C6D310A0(uint64_t a1)
{
  if (!qword_1EDCE5D10)
  {
    type metadata accessor for Package(255);
    sub_1C6D31104();
    v1 = sub_1C6D785D0();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDCE5D10);
    }
  }
}

unint64_t sub_1C6D31104()
{
  result = qword_1EDCE6708;
  if (!qword_1EDCE6708)
  {
    type metadata accessor for Package(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCE6708);
  }

  return result;
}

uint64_t sub_1C6D3115C@<X0>(uint64_t a1@<X8>)
{
  sub_1C6D3152C(0, &qword_1EDCE7AC0, MEMORY[0x1E69B4968]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v23 - v9;
  sub_1C6D310A0(0);
  v11 = sub_1C6D785A0();
  sub_1C6D31580(v11, v10);

  v12 = sub_1C6D78590();
  v13 = *(v12 + 16);
  if (v13)
  {
    v24 = v6;
    v25 = v10;
    v26 = v1;
    v27 = a1;
    v28 = MEMORY[0x1E69E7CC0];
    sub_1C6B39280(0, v13, 0);
    v14 = v28;
    v15 = (v12 + 40);
    do
    {
      v16 = *(v15 - 1);
      v17 = *v15;
      v28 = v14;
      v19 = *(v14 + 16);
      v18 = *(v14 + 24);

      if (v19 >= v18 >> 1)
      {
        sub_1C6B39280((v18 > 1), v19 + 1, 1);
        v14 = v28;
      }

      *(v14 + 16) = v19 + 1;
      v20 = v14 + 16 * v19;
      *(v20 + 32) = v16;
      *(v20 + 40) = v17;
      v15 += 2;
      --v13;
    }

    while (v13);

    v6 = v24;
    v10 = v25;
  }

  else
  {
  }

  sub_1C6D785C0();
  if (!v21)
  {
    sub_1C6D785B0();
  }

  sub_1C6D78580();
  sub_1C6D78570();
  sub_1C6D31BB0(v10, v6);
  sub_1C6D785B0();
  sub_1C6D77E90();
  return sub_1C6D31C30(v10, &qword_1EDCE7AC0, MEMORY[0x1E69B4968]);
}

uint64_t sub_1C6D313A0@<X0>(uint64_t a1@<X8>)
{
  sub_1C6D3152C(0, &qword_1EDCE5D08, sub_1C6D310A0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v12 - v4;
  sub_1C6D78450();
  sub_1C6D310A0(0);
  v7 = v6;
  v8 = *(v6 - 8);
  if ((*(v8 + 48))(v5, 1, v6) == 1)
  {
    sub_1C6D31C30(v5, &qword_1EDCE5D08, sub_1C6D310A0);
    v9 = 1;
  }

  else
  {
    sub_1C6D3115C(a1);
    (*(v8 + 8))(v5, v7);
    v9 = 0;
  }

  v10 = sub_1C6D77EA0();
  return (*(*(v10 - 8) + 56))(a1, v9, 1, v10);
}

void sub_1C6D3152C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C6D79C00();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1C6D31580@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C6D31740(0xD00000000000001ALL, 0x80000001C6DA0A80, a1);
  sub_1C6D31740(0x2D656C6369747261, 0xEF676E69726F6373, a1);
  sub_1C6D31740(0xD000000000000014, 0x80000001C6DA5140, a1);
  sub_1C6D31740(0xD000000000000012, 0x80000001C6DA0D40, a1);
  sub_1C6D31740(0xD000000000000010, 0x80000001C6DA8C90, a1);
  sub_1C6D31740(0x726F63732D676174, 0xEB00000000676E69, a1);
  sub_1C6D31740(0x676775732D676174, 0xEF736E6F69747365, a1);
  sub_1C6D77B60();
  v4 = sub_1C6D77B70();
  v5 = *(*(v4 - 8) + 56);

  return v5(a2, 0, 1, v4);
}

uint64_t sub_1C6D31740(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C6D75F50();
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v54 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v53 = &v39 - v11;
  v12 = sub_1C6D773B0();
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v52 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_1C6D78880();
  v15 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51, v16);
  v48 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_1C6D78410();
  v18 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50, v19);
  v47 = &v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_1C6D77670();
  v55 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49, v21);
  v40 = &v39 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {
    return MEMORY[0x1E69E7CC0];
  }

  if (!*(a3 + 16))
  {
    return MEMORY[0x1E69E7CC0];
  }

  v23 = sub_1C6B5DEA8(a1, a2);
  if ((v24 & 1) == 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v25 = *(*(a3 + 56) + 8 * v23);
  v26 = *(v25 + 16);
  v27 = MEMORY[0x1E69E7CC0];
  if (v26)
  {
    v57 = MEMORY[0x1E69E7CC0];

    sub_1C6B39A78(0, v26, 0);
    v27 = v57;
    v28 = v18 + 16;
    v29 = *(v18 + 16);
    v30 = (*(v18 + 80) + 32) & ~*(v18 + 80);
    v39 = v25;
    v31 = v25 + v30;
    v44 = *(v28 + 56);
    v45 = v29;
    v46 = v28;
    v42 = (v28 - 8);
    v43 = (v15 + 8);
    v41 = v55 + 32;
    v32 = v40;
    v33 = v50;
    v34 = v48;
    do
    {
      v56 = v26;
      v35 = v47;
      v45(v47, v31, v33);
      sub_1C6D783F0();
      sub_1C6D78870();
      sub_1C6D78860();
      sub_1C6D77390();
      (*v43)(v34, v51);
      sub_1C6D78400();
      sub_1C6D77660();
      (*v42)(v35, v33);
      v57 = v27;
      v37 = *(v27 + 16);
      v36 = *(v27 + 24);
      if (v37 >= v36 >> 1)
      {
        sub_1C6B39A78((v36 > 1), v37 + 1, 1);
        v32 = v40;
        v27 = v57;
      }

      *(v27 + 16) = v37 + 1;
      (*(v55 + 32))(v27 + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * v37, v32, v49);
      v31 += v44;
      v26 = v56 - 1;
    }

    while (v56 != 1);
  }

  return v27;
}

uint64_t sub_1C6D31BB0(uint64_t a1, uint64_t a2)
{
  sub_1C6D3152C(0, &qword_1EDCE7AC0, MEMORY[0x1E69B4968]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C6D31C30(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1C6D3152C(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t UserEventHistoryJSONSerializer.serializeUserEventHistory()()
{
  v0 = sub_1C6D78E40();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B761BC();
  (*(v1 + 104))(v4, *MEMORY[0x1E69E7F88], v0);
  v5 = sub_1C6D79B30();
  (*(v1 + 8))(v4, v0);

  v6 = sub_1C6D78390();

  return v6;
}

uint64_t sub_1C6D31DD8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v4[4] = sub_1C6D32368;
  v4[5] = a1;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 1107296256;
  v4[2] = sub_1C6D32240;
  v4[3] = &block_descriptor_15;
  v2 = _Block_copy(v4);

  [v1 writeJSON_];
  _Block_release(v2);
  sub_1C6B1AC10();
  swift_allocObject();
  return sub_1C6D78300();
}

uint64_t sub_1C6D31EE0()
{
  v0 = sub_1C6D78A60();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Com_Apple_News_Personalization_Session(0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  UserEventHistorySessionUnarchiver.unarchive(session:)();
  sub_1C6D78A50();
  sub_1C6D32370();
  v9 = sub_1C6D78BC0();
  (*(v1 + 8))(v4, v0);
  sub_1C6D323C8(v8);
  return v9;
}

id sub_1C6D32240(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();
  v7 = v6;

  if (v7 >> 60 == 15)
  {
    v8 = 0;
  }

  else
  {
    v9 = sub_1C6D75E50();
    sub_1C6B75B88(v5, v7);
    v8 = v9;
  }

  return v8;
}

uint64_t UserEventHistoryJSONSerializer.deinit()
{
  swift_unknownObjectRelease();

  return v0;
}

uint64_t UserEventHistoryJSONSerializer.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

unint64_t sub_1C6D32370()
{
  result = qword_1EDCE2AE0;
  if (!qword_1EDCE2AE0)
  {
    type metadata accessor for Com_Apple_News_Personalization_Session(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCE2AE0);
  }

  return result;
}

uint64_t sub_1C6D323C8(uint64_t a1)
{
  v2 = type metadata accessor for Com_Apple_News_Personalization_Session(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C6D32424(uint64_t a1)
{
  sub_1C6B3C1F8(0);
  v46 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v45 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v44 = &v37 - v8;
  v9 = sub_1C6D78630();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 16);
  v15 = MEMORY[0x1E69E7CC0];
  if (!v14)
  {
    return v15;
  }

  v50 = v13;
  v37 = v1;
  v51 = MEMORY[0x1E69E7CC0];
  sub_1C6B39AC8(0, v14, 0);
  v15 = v51;
  v16 = a1 + 64;
  result = sub_1C6D79CC0();
  v18 = result;
  v19 = 0;
  v42 = (v10 + 32);
  v43 = v10;
  v38 = a1 + 72;
  v39 = v14;
  v40 = a1 + 64;
  v41 = a1;
  while ((v18 & 0x8000000000000000) == 0 && v18 < 1 << *(a1 + 32))
  {
    v22 = v18 >> 6;
    if ((*(v16 + 8 * (v18 >> 6)) & (1 << v18)) == 0)
    {
      goto LABEL_21;
    }

    v23 = *(a1 + 36);
    v47 = v19;
    v48 = v23;
    v24 = *(a1 + 56) + *(v46 + 72) * v18;
    v25 = v44;
    sub_1C6D3B544(v24, v44, sub_1C6B3C1F8);
    v26 = v9;
    v27 = v45;
    sub_1C6D3B544(v25, v45, sub_1C6B3C1F8);
    v49 = *v42;
    v49(v50, v27, v26);
    sub_1C6D3B6DC(v25, sub_1C6B3C1F8);
    v51 = v15;
    v29 = *(v15 + 16);
    v28 = *(v15 + 24);
    if (v29 >= v28 >> 1)
    {
      sub_1C6B39AC8((v28 > 1), v29 + 1, 1);
      v15 = v51;
    }

    *(v15 + 16) = v29 + 1;
    result = (v49)(v15 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v29, v50, v26);
    a1 = v41;
    v20 = 1 << *(v41 + 32);
    if (v18 >= v20)
    {
      goto LABEL_22;
    }

    v16 = v40;
    v30 = *(v40 + 8 * v22);
    if ((v30 & (1 << v18)) == 0)
    {
      goto LABEL_23;
    }

    if (v48 != *(v41 + 36))
    {
      goto LABEL_24;
    }

    v9 = v26;
    v31 = v30 & (-2 << (v18 & 0x3F));
    if (v31)
    {
      v20 = __clz(__rbit64(v31)) | v18 & 0x7FFFFFFFFFFFFFC0;
      v21 = v39;
    }

    else
    {
      v32 = v22 << 6;
      v33 = v22 + 1;
      v21 = v39;
      v34 = (v38 + 8 * v22);
      while (v33 < (v20 + 63) >> 6)
      {
        v36 = *v34++;
        v35 = v36;
        v32 += 64;
        ++v33;
        if (v36)
        {
          result = sub_1C6B360A8(v18, v48, 0);
          v20 = __clz(__rbit64(v35)) + v32;
          goto LABEL_4;
        }
      }

      result = sub_1C6B360A8(v18, v48, 0);
    }

LABEL_4:
    v19 = v47 + 1;
    v18 = v20;
    if (v47 + 1 == v21)
    {
      return v15;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

void sub_1C6D32814(void *a1)
{
  sub_1C6B3C1F8(0);
  v3 = *(v2 - 8);
  v4 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1C6C74020(v4);
  }

  v5 = v4[2];
  v6[0] = v4 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v6[1] = v5;
  sub_1C6D38D1C(v6);
  *a1 = v4;
}

uint64_t sub_1C6D328BC(uint64_t a1)
{
  *(v2 + 840) = v1;
  *(v2 + 832) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C6D328E0, 0, 0);
}

uint64_t sub_1C6D328E0()
{
  *(v0 + 848) = *__swift_project_boxed_opaque_existential_1((*(v0 + 840) + OBJC_IVAR____TtC19NewsPersonalization23AppUserEmbeddingManager_userEmbeddingConfigurationService), *(*(v0 + 840) + OBJC_IVAR____TtC19NewsPersonalization23AppUserEmbeddingManager_userEmbeddingConfigurationService + 24));

  return MEMORY[0x1EEE6DFA0](sub_1C6D32960, 0, 0);
}

uint64_t sub_1C6D32960()
{
  v0[2] = v0;
  v0[7] = v0 + 10;
  v0[3] = sub_1C6D32B04;
  v1 = swift_continuation_init();
  sub_1C6D38CB4();
  sub_1C6D783A0();
  *(swift_allocObject() + 16) = v1;
  v2 = sub_1C6D78210();
  sub_1C6D782B0();

  *(swift_allocObject() + 16) = v1;
  v3 = sub_1C6D78210();
  sub_1C6D782E0();

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1C6D32B04(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  if (*(*v1 + 48))
  {
    swift_willThrow();
    v4 = *(v3 + 1);

    return v4();
  }

  else
  {
    v6 = v2[6];
    v2[19] = v2[5];
    v2[20] = v6;
    v7 = v2[7];
    v8 = v2[8];
    v9 = v2[10];
    v2[23] = v2[9];
    v2[24] = v9;
    v2[21] = v7;
    v2[22] = v8;
    v10 = v2[11];
    v11 = v2[12];
    v12 = v2[14];
    v2[27] = v2[13];
    v2[28] = v12;
    v2[25] = v10;
    v2[26] = v11;
    v13 = v2[15];
    v14 = v2[16];
    v15 = v2[17];
    *(v2 + 505) = *(v2 + 281);
    v2[30] = v14;
    v2[31] = v15;
    v2[29] = v13;

    return MEMORY[0x1EEE6DFA0](sub_1C6D32C90, 0, 0);
  }
}

uint64_t sub_1C6D32C90()
{
  *(v0 + 856) = *(*(v0 + 840) + OBJC_IVAR____TtC19NewsPersonalization23AppUserEmbeddingManager_userEmbeddingManager);
  v1 = *(v0 + 480);
  *(v0 + 688) = *(v0 + 464);
  *(v0 + 704) = v1;
  *(v0 + 720) = *(v0 + 496);
  *(v0 + 729) = *(v0 + 505);
  v2 = *(v0 + 416);
  *(v0 + 624) = *(v0 + 400);
  *(v0 + 640) = v2;
  v3 = *(v0 + 448);
  *(v0 + 656) = *(v0 + 432);
  *(v0 + 672) = v3;
  v4 = *(v0 + 352);
  *(v0 + 560) = *(v0 + 336);
  *(v0 + 576) = v4;
  v5 = *(v0 + 384);
  *(v0 + 592) = *(v0 + 368);
  *(v0 + 608) = v5;
  v6 = *(v0 + 320);
  *(v0 + 528) = *(v0 + 304);
  *(v0 + 544) = v6;
  v7 = swift_task_alloc();
  *(v0 + 864) = v7;
  *v7 = v0;
  v7[1] = sub_1C6D32D80;

  return sub_1C6D330F0((v0 + 528));
}

uint64_t sub_1C6D32D80(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 872) = a1;
  *(v3 + 880) = v1;

  if (v1)
  {
    v4 = sub_1C6D330C0;
  }

  else
  {
    v4 = sub_1C6D32E98;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1C6D32E98()
{
  v1 = *(v0 + 456);
  *(v0 + 784) = *(v0 + 440);
  *(v0 + 800) = v1;
  *(v0 + 809) = *(v0 + 465);
  v2 = *(v0 + 424);
  *(v0 + 752) = *(v0 + 408);
  *(v0 + 768) = v2;
  sub_1C6D77FA0();
  v3 = sub_1C6D77F90();
  v4 = swift_task_alloc();
  *(v0 + 888) = v4;
  *v4 = v0;
  v4[1] = sub_1C6D32F7C;
  v5 = *(v0 + 872);
  v6 = *(v0 + 832);

  return UserEmbeddingManager.generateEmbedding(history:configuration:writeHumanReadableHistoryToDisk:)(v6, v5, (v0 + 752), v3 & 1);
}

uint64_t sub_1C6D32F7C()
{
  v2 = *v1;
  *(v2 + 896) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1C6D330D8, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1C6D330F0(_OWORD *a1)
{
  v3 = v1;
  *(v2 + 488) = v3;
  *(v2 + 496) = swift_getObjectType();
  v5 = sub_1C6D771C0();
  *(v2 + 504) = v5;
  *(v2 + 512) = *(v5 - 8);
  *(v2 + 520) = swift_task_alloc();
  v6 = sub_1C6D77140();
  *(v2 + 528) = v6;
  *(v2 + 536) = *(v6 - 8);
  *(v2 + 544) = swift_task_alloc();
  v7 = a1[11];
  *(v2 + 176) = a1[10];
  *(v2 + 192) = v7;
  *(v2 + 208) = a1[12];
  *(v2 + 217) = *(a1 + 201);
  v8 = a1[7];
  *(v2 + 112) = a1[6];
  *(v2 + 128) = v8;
  v9 = a1[9];
  *(v2 + 144) = a1[8];
  *(v2 + 160) = v9;
  v10 = a1[3];
  *(v2 + 48) = a1[2];
  *(v2 + 64) = v10;
  v11 = a1[5];
  *(v2 + 80) = a1[4];
  *(v2 + 96) = v11;
  v12 = a1[1];
  *(v2 + 16) = *a1;
  *(v2 + 32) = v12;

  return MEMORY[0x1EEE6DFA0](sub_1C6D33260, 0, 0);
}

uint64_t sub_1C6D33260()
{
  sub_1C6D77FA0();
  if (sub_1C6D77F90() & 1) != 0 && (v1 = *(v0 + 544), v2 = *(v0 + 536), v3 = *(v0 + 528), v4 = *(v0 + 520), v5 = *(v0 + 504), v6 = *(v0 + 512), sub_1C6B471CC(0), (*(v2 + 104))(v1, *MEMORY[0x1E69D6D10], v3), (*(v6 + 104))(v4, *MEMORY[0x1E69D6E90], v5), sub_1C6D77210(), sub_1C6D3B790(qword_1EDCE1C18, v7, type metadata accessor for AppUserEmbeddingManager, &unk_1C6D954C8), LOBYTE(v1) = sub_1C6D77130(), , (v1))
  {
    if (qword_1EDCE7180 != -1)
    {
      swift_once();
    }

    v8 = qword_1EDCE7188;
    v9 = sub_1C6D79AC0();
    sub_1C6D78D30("Attempting to generate data from overrides", 42, 2, &dword_1C6B09000, v8, v9, MEMORY[0x1E69E7CC0]);
    v18 = sub_1C6D3A7B8();

    v19 = *(v0 + 8);

    return v19(v18);
  }

  else
  {
    v10 = *(v0 + 192);
    *(v0 + 400) = *(v0 + 176);
    *(v0 + 416) = v10;
    *(v0 + 432) = *(v0 + 208);
    *(v0 + 441) = *(v0 + 217);
    v11 = *(v0 + 128);
    *(v0 + 336) = *(v0 + 112);
    *(v0 + 352) = v11;
    v12 = *(v0 + 160);
    *(v0 + 368) = *(v0 + 144);
    *(v0 + 384) = v12;
    v13 = *(v0 + 64);
    *(v0 + 272) = *(v0 + 48);
    *(v0 + 288) = v13;
    v14 = *(v0 + 96);
    *(v0 + 304) = *(v0 + 80);
    *(v0 + 320) = v14;
    v15 = *(v0 + 32);
    *(v0 + 240) = *(v0 + 16);
    *(v0 + 256) = v15;
    v16 = swift_task_alloc();
    *(v0 + 552) = v16;
    *v16 = v0;
    v16[1] = sub_1C6D33644;

    return sub_1C6D33814((v0 + 240));
  }
}

uint64_t sub_1C6D33644(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 560) = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1C6D337A4, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_1C6D337A4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C6D33814(_OWORD *a1)
{
  *(v2 + 520) = v1;
  *(v2 + 512) = a1;
  v3 = a1[11];
  *(v2 + 176) = a1[10];
  *(v2 + 192) = v3;
  *(v2 + 208) = a1[12];
  *(v2 + 217) = *(a1 + 201);
  v4 = a1[7];
  *(v2 + 112) = a1[6];
  *(v2 + 128) = v4;
  v5 = a1[9];
  *(v2 + 144) = a1[8];
  *(v2 + 160) = v5;
  v6 = a1[3];
  *(v2 + 48) = a1[2];
  *(v2 + 64) = v6;
  v7 = a1[5];
  *(v2 + 80) = a1[4];
  *(v2 + 96) = v7;
  v8 = a1[1];
  *(v2 + 16) = *a1;
  *(v2 + 32) = v8;
  return MEMORY[0x1EEE6DFA0](sub_1C6D33878, 0, 0);
}

uint64_t sub_1C6D33878()
{
  v1 = v0;
  v2 = v0 + 16;
  v3 = (v0 + 240);
  v4 = v0 + 488;
  v61 = v1 + 62;
  if (qword_1EDCE7180 != -1)
  {
    swift_once();
  }

  v5 = v1[65];
  v6 = v1[64];
  v7 = qword_1EDCE7188;
  sub_1C6B1D314(0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1C6D7E630;
  v1[58] = 0;
  v1[59] = 0xE000000000000000;
  v9 = v6[10];
  v10 = v6[11];
  v11 = v6[12];
  *(v3 + 201) = *(v6 + 201);
  v3[11] = v10;
  v3[12] = v11;
  v3[10] = v9;
  v12 = v6[6];
  v13 = v6[7];
  v14 = v6[9];
  v3[8] = v6[8];
  v3[9] = v14;
  v3[6] = v12;
  v3[7] = v13;
  v15 = v6[2];
  v16 = v6[3];
  v17 = v6[5];
  v3[4] = v6[4];
  v3[5] = v17;
  v3[2] = v15;
  v3[3] = v16;
  v18 = v6[1];
  *v3 = *v6;
  v3[1] = v18;
  sub_1C6D79E60();
  v19 = v1[58];
  v20 = v1[59];
  *(v8 + 56) = MEMORY[0x1E69E6158];
  *(v8 + 64) = sub_1C6B2064C();
  *(v8 + 32) = v19;
  *(v8 + 40) = v20;
  v21 = sub_1C6D79AC0();
  v60 = v7;
  sub_1C6D78D30("Found configuration for user embedding generation %{public}@", 60, 2, &dword_1C6B09000, v7, v21, v8);

  v22 = sub_1C6D79AC0();
  sub_1C6D78D30("Processing sessions...", 22, 2, &dword_1C6B09000, v7, v22, MEMORY[0x1E69E7CC0]);
  sub_1C6D77FA0();
  LOBYTE(v20) = sub_1C6D77F90();
  v62 = v1;
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  v24 = (v23 + 16);
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  v26 = (v25 + 16);
  v27 = MEMORY[0x1E69E7CD0];
  v62[61] = MEMORY[0x1E69E7CC8];
  v62[62] = v27;
  v28 = *(v5 + OBJC_IVAR____TtC19NewsPersonalization23AppUserEmbeddingManager_sessionDataProvider);
  v29 = swift_task_alloc();
  *(v29 + 16) = v2;
  *(v29 + 24) = v4;
  *(v29 + 32) = v23;
  *(v29 + 40) = v25;
  *(v29 + 48) = v20 & 1;
  *(v29 + 56) = v61;
  (*(*v28 + 160))(0, 0, 0, sub_1C6D3B3E0, v29);

  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1C6D7EB10;
  swift_beginAccess();
  v31 = MEMORY[0x1E69E6530];
  v32 = *(v23 + 16);
  v33 = MEMORY[0x1E69E65A8];
  *(v30 + 56) = MEMORY[0x1E69E6530];
  *(v30 + 64) = v33;
  *(v30 + 32) = v32;
  swift_beginAccess();
  v34 = *v26;
  *(v30 + 96) = v31;
  *(v30 + 104) = v33;
  *(v30 + 72) = v34;
  sub_1C6D79AC0();
  sub_1C6D78D30("Finished processing all sessions, have %lu embeddings with label 1 and %lu embeddings with label 0", v57, v4);

  v35 = sub_1C6D3784C(v2, v59, v26, v24);
  v37 = v36;
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_1C6D807C0;
  v39 = v35[2];
  *(v38 + 56) = v31;
  *(v38 + 64) = v33;
  *(v38 + 32) = v39;
  *(v38 + 96) = v31;
  *(v38 + 104) = v33;
  *(v38 + 72) = v32;
  *(v38 + 136) = v31;
  *(v38 + 144) = v33;
  v40 = v62;
  *(v38 + 112) = v37;
  sub_1C6D79AC0();
  sub_1C6D78D30("Finished pruning, delivering %lu total embeddings, %lu with label 1, %lu with label 0", v58, v59, v60);

  v41 = v62[10];
  if (v62[5])
  {
    if (v62[11])
    {
      goto LABEL_15;
    }

LABEL_12:
    if (v34 < v41)
    {

      sub_1C6D79D50();
      MEMORY[0x1CCA55B00](0xD000000000000026, 0x80000001C6DA9140);
      v62[63] = v41;
      v49 = sub_1C6D7A0E0();
      v46 = v37;
      MEMORY[0x1CCA55B00](v49);

      goto LABEL_14;
    }

LABEL_15:

    v51 = v62[1];

    return v51(v35);
  }

  v42 = v62[4];
  if (v62[11])
  {
    if (v32 >= v42)
    {
      goto LABEL_15;
    }

    sub_1C6D79D50();
    MEMORY[0x1CCA55B00](0xD000000000000026, 0x80000001C6DA91B0);
    v62[63] = v42;
    v43 = sub_1C6D7A0E0();
    MEMORY[0x1CCA55B00](v43);

    MEMORY[0x1CCA55B00](0xD00000000000001ELL, 0x80000001C6DA9170);
    v62[63] = v32;
LABEL_19:
    v54 = sub_1C6D7A0E0();
    MEMORY[0x1CCA55B00](v54);

    goto LABEL_20;
  }

  if (v32 >= v42)
  {
    goto LABEL_12;
  }

  v44 = v32;

  if (v37 >= v41)
  {
    sub_1C6D79D50();
    MEMORY[0x1CCA55B00](0xD000000000000026, 0x80000001C6DA91B0);
    v62[63] = v42;
    v53 = sub_1C6D7A0E0();
    MEMORY[0x1CCA55B00](v53);

    MEMORY[0x1CCA55B00](0xD00000000000001ELL, 0x80000001C6DA9170);
    v62[63] = v32;
    goto LABEL_19;
  }

  sub_1C6D79D50();
  MEMORY[0x1CCA55B00](0xD000000000000026, 0x80000001C6DA91B0);
  v62[63] = v42;
  v45 = sub_1C6D7A0E0();
  v46 = v37;
  MEMORY[0x1CCA55B00](v45);

  MEMORY[0x1CCA55B00](0xD00000000000001ELL, 0x80000001C6DA9170);
  v62[63] = v44;
  v47 = sub_1C6D7A0E0();
  MEMORY[0x1CCA55B00](v47);

  MEMORY[0x1CCA55B00](0xD000000000000049, 0x80000001C6DA91E0);
  v62[63] = v41;
  v48 = sub_1C6D7A0E0();
  MEMORY[0x1CCA55B00](v48);

  v40 = v62;
LABEL_14:
  MEMORY[0x1CCA55B00](0xD00000000000001ELL, 0x80000001C6DA9170);
  v40[63] = v46;
  v50 = sub_1C6D7A0E0();
  MEMORY[0x1CCA55B00](v50);

  MEMORY[0x1CCA55B00](0xD00000000000001ELL, 0x80000001C6DA9190);
LABEL_20:
  sub_1C6D3B29C();
  swift_allocError();
  *v55 = 0;
  *(v55 + 8) = 0xE000000000000000;
  *(v55 + 16) = 0;
  swift_willThrow();

  v56 = v40[1];

  return v56();
}

uint64_t sub_1C6D3410C(uint64_t a1, BOOL *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, int a7, uint64_t *a8)
{
  v253 = a3;
  v254 = a8;
  LODWORD(v248) = a7;
  v251 = a6;
  v252 = a2;
  v257 = a5;
  v264 = a4;
  sub_1C6B3C1F8(0);
  v256 = v9;
  v263 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v242 = &v240 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v244 = &v240 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v241 = &v240 - v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v247 = &v240 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v246 = &v240 - v23;
  MEMORY[0x1EEE9AC00](v24, v25);
  v255 = &v240 - v26;
  MEMORY[0x1EEE9AC00](v27, v28);
  v265 = &v240 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v260 = &v240 - v32;
  sub_1C6B1B7C0(0, &qword_1EDCDFB90, sub_1C6D3B458);
  MEMORY[0x1EEE9AC00](v33 - 8, v34);
  v259 = &v240 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36, v37);
  v258 = (&v240 - v38);
  sub_1C6B1B7C0(0, &unk_1EDCE5CE0, sub_1C6B3C1F8);
  MEMORY[0x1EEE9AC00](v39 - 8, v40);
  v245 = &v240 - v41;
  v42 = sub_1C6D789A0();
  v43 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42, v44);
  v250 = &v240 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46, v47);
  v261 = &v240 - v48;
  v49 = MEMORY[0x1E69AA900];
  sub_1C6B1B7C0(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
  MEMORY[0x1EEE9AC00](v50 - 8, v51);
  v249 = &v240 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v53, v54);
  v56 = &v240 - v55;
  MEMORY[0x1EEE9AC00](v57, v58);
  v60 = &v240 - v59;
  v61 = *(type metadata accessor for Com_Apple_News_Personalization_Session(0) + 36);
  v266 = a1;
  sub_1C6D3B5AC(a1 + v61, v60, &qword_1EDCE66F0, v49);
  v262 = v43;
  v62 = *(v43 + 48);
  LODWORD(a1) = v62(v60, 1, v42);
  sub_1C6D3B618(v60, &qword_1EDCE66F0, v49);
  if (a1 == 1)
  {
    if (qword_1EDCE7180 == -1)
    {
LABEL_3:
      v63 = qword_1EDCE7188;
      v64 = sub_1C6D79AB0();
      result = sub_1C6D78D30("When processing sessions to create the user embedding encountered a session with no startedAt.", 94, 2, &dword_1C6B09000, v63, v64, MEMORY[0x1E69E7CC0], v240);
LABEL_15:
      v78 = 1;
      goto LABEL_16;
    }

LABEL_151:
    swift_once();
    goto LABEL_3;
  }

  sub_1C6D3B5AC(v266 + v61, v56, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
  v66 = v42;
  v67 = v61;
  if (v62(v56, 1, v42) == 1)
  {
    v68 = v261;
    sub_1C6D78990();
    v69 = v62(v56, 1, v42);
    v70 = v262;
    if (v69 != 1)
    {
      sub_1C6D3B618(v56, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
    }
  }

  else
  {
    v68 = v261;
    v70 = v262;
    (*(v262 + 32))(v261, v56, v66);
  }

  sub_1C6D78970();
  v72 = v71;
  v73 = *(v70 + 8);
  v73(v68, v66);
  if (v72 <= 1672556400.0)
  {
    if (qword_1EDCE7180 != -1)
    {
      swift_once();
    }

    v76 = qword_1EDCE7188;
    v77 = sub_1C6D79AC0();
    result = sub_1C6D78D30("Encountered a session before 2023, we'll not find any embeddings before this, halting processing of sessions.", 109, 2, &dword_1C6B09000, v76, v77, MEMORY[0x1E69E7CC0], v240);
    goto LABEL_15;
  }

  v74 = v249;
  sub_1C6D3B5AC(v266 + v67, v249, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
  if (v62(v74, 1, v66) == 1)
  {
    v75 = v250;
    sub_1C6D78990();
    if (v62(v74, 1, v66) != 1)
    {
      sub_1C6D3B618(v74, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
    }
  }

  else
  {
    v75 = v250;
    (*(v70 + 32))(v250, v74, v66);
  }

  sub_1C6D78970();
  v80 = v79;
  v73(v75, v66);
  v81 = v253;
  v82 = *(v253 + 208);
  if (v82 > v80)
  {
    if (qword_1EDCE7180 != -1)
    {
LABEL_156:
      swift_once();
    }

    v83 = qword_1EDCE7188;
    sub_1C6B1D314(0);
    v84 = swift_allocObject();
    v85 = MEMORY[0x1E69E63B0];
    *(v84 + 16) = xmmword_1C6D7E630;
    v86 = MEMORY[0x1E69E6438];
    *(v84 + 56) = v85;
    *(v84 + 64) = v86;
    *(v84 + 32) = v82;
    v87 = sub_1C6D79AC0();
    sub_1C6D78D30("Encountered a session before the configured earliestAllowedEmbeddingEventTimestamp of %f, halting processing of sessions.", 121, 2, &dword_1C6B09000, v83, v87, v84);
LABEL_21:

    goto LABEL_15;
  }

  if (*(v253 + 216))
  {
    if (*(*v264 + 16))
    {
      v88 = *(v253 + 96);
      sub_1C6D43454(v88);
      if (v89)
      {
        if (qword_1EDCE7180 != -1)
        {
LABEL_163:
          swift_once();
        }

        v90 = qword_1EDCE7188;
        sub_1C6B1D314(0);
        v91 = swift_allocObject();
        v92 = v91;
        *(v91 + 16) = xmmword_1C6D7E630;
        if (v88 == 1)
        {
          v93 = 0xE400000000000000;
          v94 = 2036625250;
        }

        else if (v88)
        {
          v93 = 0xE700000000000000;
          v94 = 0x6E776F6E6B6E75;
        }

        else
        {
          v93 = 0xE500000000000000;
          v94 = 0x656C746974;
        }

        *(v91 + 56) = MEMORY[0x1E69E6158];
        *(v91 + 64) = sub_1C6B2064C();
        *(v92 + 32) = v94;
        *(v92 + 40) = v93;
        v239 = sub_1C6D79AC0();
        sub_1C6D78D30("Encountered a session containing an embedding not matching the configured embedding type %{public}@, halting processing of sessions.", 132, 2, &dword_1C6B09000, v90, v239, v92, v240);
        goto LABEL_21;
      }
    }
  }

  v243 = *(v81 + 32);
  LODWORD(v250) = *(v81 + 40);
  if ((v250 & 1) == 0)
  {
    v95 = v257;
    swift_beginAccess();
    if (*(v95 + 16) >= v243 && (*(v81 + 88) & 1) == 0)
    {
      v96 = *(v81 + 80);
      v97 = v251;
      result = swift_beginAccess();
      if (*(v97 + 16) >= v96)
      {
        goto LABEL_15;
      }
    }
  }

  v248 = sub_1C6D359D8(*(v81 + 96), *(v81 + 184), *v81, *(v81 + 8), *(v81 + 48), *(v81 + 56), v248 & 1);
  v99 = v98;
  v100 = v98 + 56;
  v101 = 1 << *(v98 + 32);
  v102 = -1;
  if (v101 < 64)
  {
    v102 = ~(-1 << v101);
  }

  v103 = v102 & *(v98 + 56);
  v104 = (v101 + 63) >> 6;

  v105 = 0;
  if (v103)
  {
    while (1)
    {
      v106 = v105;
LABEL_41:
      v107 = __clz(__rbit64(v103));
      v103 &= v103 - 1;
      v108 = (*(v99 + 48) + ((v106 << 10) | (16 * v107)));
      v109 = *v108;
      v110 = v108[1];

      v111 = v245;
      sub_1C6BC4E7C(v109, v110, v245);
      sub_1C6D3B618(v111, &unk_1EDCE5CE0, sub_1C6B3C1F8);
      sub_1C6B1E6A8(&v267, v109, v110);

      if (!v103)
      {
        goto LABEL_37;
      }
    }
  }

  while (1)
  {
LABEL_37:
    v106 = v105 + 1;
    if (__OFADD__(v105, 1))
    {
LABEL_150:
      __break(1u);
      goto LABEL_151;
    }

    if (v106 >= v104)
    {
      break;
    }

    v103 = *(v100 + 8 * v106);
    ++v105;
    if (v103)
    {
      v105 = v106;
      goto LABEL_41;
    }
  }

  v112 = v248;
  v113 = v248[2];

  if (!v113)
  {
  }

  v114 = v112[8];
  v240 = v112 + 8;
  v115 = 1 << *(v112 + 32);
  if (v115 < 64)
  {
    v116 = ~(-1 << v115);
  }

  else
  {
    v116 = -1;
  }

  v117 = v116 & v114;
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  v118 = 0;
  v119 = (v115 + 63) >> 6;
  v121 = v259;
  v120 = v260;
  v249 = v119;
  while (2)
  {
    if (!v117)
    {
      if (v119 <= v118 + 1)
      {
        v123 = v118 + 1;
      }

      else
      {
        v123 = v119;
      }

      v124 = v123 - 1;
      while (1)
      {
        v122 = v118 + 1;
        if (__OFADD__(v118, 1))
        {
          break;
        }

        if (v122 >= v119)
        {
          sub_1C6D3B458(0);
          v132 = v183;
          (*(*(v183 - 8) + 56))(v121, 1, 1, v183);
          v126 = 0;
          v118 = v124;
          goto LABEL_59;
        }

        v117 = v240[v122];
        ++v118;
        if (v117)
        {
          v118 = v122;
          goto LABEL_58;
        }
      }

      __break(1u);
      goto LABEL_150;
    }

    v122 = v118;
LABEL_58:
    v125 = __clz(__rbit64(v117));
    v126 = (v117 - 1) & v117;
    v127 = v125 | (v122 << 6);
    v128 = (v248[6] + 16 * v127);
    v130 = *v128;
    v129 = v128[1];
    sub_1C6D3B544(v248[7] + *(v263 + 72) * v127, v120, sub_1C6B3C1F8);
    sub_1C6D3B458(0);
    v132 = v131;
    v133 = *(v131 + 48);
    *v121 = v130;
    v121[1] = v129;
    sub_1C6D3B674(v120, v121 + v133, sub_1C6B3C1F8);
    (*(*(v132 - 8) + 56))(v121, 0, 1, v132);

LABEL_59:
    v134 = v258;
    sub_1C6D3B4C4(v121, v258);
    sub_1C6D3B458(0);
    if ((*(*(v132 - 8) + 48))(v134, 1, v132) != 1)
    {
      v262 = v126;
      v136 = *v134;
      v135 = v134[1];
      v137 = v134 + *(v132 + 48);
      v138 = v256;
      v139 = *&v137[*(v256 + 48)];
      v140 = sub_1C6D78630();
      v261 = *(v140 - 8);
      v141 = *(v261 + 4);
      (v141)(v255, v137, v140);
      v142 = *(v138 + 48);
      v143 = v265;
      v141();
      *(v143 + v142) = v139;
      v144 = *v264;
      v145 = *(*v264 + 16);
      v146 = v135;
      v266 = v136;
      if (v145)
      {
        v147 = sub_1C6B5DEA8(v136, v135);
        if (v148)
        {
          v149 = *(v263 + 72);
          v150 = v247;
          sub_1C6D3B544(*(v144 + 56) + v149 * v147, v247, sub_1C6B3C1F8);
          v151 = v246;
          sub_1C6D3B674(v150, v246, sub_1C6B3C1F8);
          v152 = v260;
          sub_1C6D3B544(v151, v260, sub_1C6B3C1F8);
          v153 = sub_1C6D78620();
          v154 = *(v261 + 1);
          v154(v152, v140);
          if (v153)
          {

            sub_1C6D3B6DC(v151, sub_1C6B3C1F8);
            sub_1C6D3B6DC(v265, sub_1C6B3C1F8);
            v120 = v152;
            v121 = v259;
            v119 = v249;
            v117 = v262;
            if (v250)
            {
              continue;
            }

            goto LABEL_131;
          }

          v261 = v149;
          v196 = v265;
          sub_1C6D3B544(v265, v152, sub_1C6B3C1F8);
          v88 = sub_1C6D78620();
          v154(v152, v140);
          v117 = v262;
          if (v88 == 1)
          {
            v197 = *(v257 + 16);
            v198 = v250;
            if (v197 < v243)
            {
              v198 = 1;
            }

            v121 = v259;
            if (v198 == 1)
            {
              v172 = __OFADD__(v197, 1);
              v199 = v197 + 1;
              if (v172)
              {
                goto LABEL_158;
              }

              *(v257 + 16) = v199;
              v200 = *(v251 + 16);
              v172 = __OFSUB__(v200, 1);
              v201 = v200 - 1;
              if (v172)
              {
                goto LABEL_160;
              }

              *(v251 + 16) = v201;
              sub_1C6D3B544(v265, v241, sub_1C6B3C1F8);
              v202 = v264;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v267 = *v202;
              v204 = v267;
              *v202 = 0x8000000000000000;
              v205 = sub_1C6B5DEA8(v266, v146);
              v207 = v204[2];
              v208 = (v206 & 1) == 0;
              v172 = __OFADD__(v207, v208);
              v209 = v207 + v208;
              if (v172)
              {
                goto LABEL_161;
              }

              v210 = v206;
              if (v204[3] >= v209)
              {
                if (isUniquelyReferenced_nonNull_native)
                {
                  goto LABEL_120;
                }

                v232 = v205;
                sub_1C6B751D4();
                v205 = v232;
                v222 = v266;
                if ((v210 & 1) == 0)
                {
                  goto LABEL_136;
                }

LABEL_121:
                v223 = v205;

                v224 = v267;
                sub_1C6D3B3F4(v241, v267[7] + v223 * v261);
                sub_1C6D3B6DC(v151, sub_1C6B3C1F8);
                sub_1C6D3B6DC(v265, sub_1C6B3C1F8);
              }

              else
              {
                sub_1C6B72894(v209, isUniquelyReferenced_nonNull_native);
                v205 = sub_1C6B5DEA8(v266, v146);
                if ((v210 & 1) != (v211 & 1))
                {
LABEL_164:
                  result = sub_1C6D7A1C0();
                  __break(1u);
                  return result;
                }

LABEL_120:
                v222 = v266;
                if (v210)
                {
                  goto LABEL_121;
                }

LABEL_136:
                v224 = v267;
                v267[(v205 >> 6) + 8] |= 1 << v205;
                v233 = (v224[6] + 16 * v205);
                *v233 = v222;
                v233[1] = v146;
                sub_1C6D3B674(v241, v224[7] + v205 * v261, sub_1C6B3C1F8);
                sub_1C6D3B6DC(v151, sub_1C6B3C1F8);
                sub_1C6D3B6DC(v265, sub_1C6B3C1F8);
                v234 = v224[2];
                v172 = __OFADD__(v234, 1);
                v235 = v234 + 1;
                if (v172)
                {
                  goto LABEL_162;
                }

                v224[2] = v235;
              }

              v120 = v260;
              v119 = v249;
              *v264 = v224;
LABEL_130:

              if (v250)
              {
                continue;
              }

              goto LABEL_131;
            }

            v219 = *(v251 + 16);
            v172 = __OFSUB__(v219, 1);
            v220 = v219 - 1;
            v88 = v266;
            if (v172)
            {
              goto LABEL_159;
            }

            *(v251 + 16) = v220;
            v221 = v245;
            sub_1C6BC4E7C(v88, v146, v245);
            sub_1C6D3B618(v221, &unk_1EDCE5CE0, sub_1C6B3C1F8);
            sub_1C6B1E6A8(&v267, v88, v146);

            sub_1C6D3B6DC(v151, sub_1C6B3C1F8);
            sub_1C6D3B6DC(v265, sub_1C6B3C1F8);
            v120 = v260;
            v119 = v249;
LABEL_131:
            if (*(v257 + 16) >= v243 && (*(v253 + 88) & 1) == 0 && *(v251 + 16) >= *(v253 + 80))
            {

              goto LABEL_142;
            }

            continue;
          }

          sub_1C6D3B6DC(v151, sub_1C6B3C1F8);
          v195 = v196;
LABEL_110:
          sub_1C6D3B6DC(v195, sub_1C6B3C1F8);
          v120 = v260;
LABEL_111:
          v121 = v259;
          v119 = v249;
          if (v250)
          {
            continue;
          }

          goto LABEL_131;
        }
      }

      v155 = *v254;
      v156 = v265;
      v117 = v262;
      if (*(*v254 + 16))
      {
        sub_1C6D7A260();

        v157 = v266;
        sub_1C6D79610();
        v158 = sub_1C6D7A2B0();
        v159 = -1 << *(v155 + 32);
        v160 = v158 & ~v159;
        if ((*(v155 + 56 + ((v160 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v160))
        {
          v161 = v157;
          v162 = v146;
          v163 = ~v159;
          while (1)
          {
            v164 = (*(v155 + 48) + 16 * v160);
            if (*v164 == v161 && v164[1] == v162)
            {
              break;
            }

            v166 = sub_1C6D7A130();
            v161 = v266;
            v162 = v146;
            if (v166)
            {
              break;
            }

            v160 = (v160 + 1) & v163;
            if (((*(v155 + 56 + ((v160 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v160) & 1) == 0)
            {
              goto LABEL_74;
            }
          }

          v195 = v156;
          goto LABEL_110;
        }

LABEL_74:
      }

      v120 = v260;
      sub_1C6D3B544(v156, v260, sub_1C6B3C1F8);
      v167 = sub_1C6D78620();
      v168 = *(v261 + 1);
      v168(v120, v140);
      if (!v167)
      {
        v184 = *(v251 + 16);
        if ((*(v253 + 88) & 1) != 0 || v184 < *(v253 + 80))
        {
          v172 = __OFADD__(v184, 1);
          v185 = v184 + 1;
          if (v172)
          {
            __break(1u);
LABEL_153:
            __break(1u);
LABEL_154:
            __break(1u);
LABEL_155:
            __break(1u);
            goto LABEL_156;
          }

          *(v251 + 16) = v185;
          sub_1C6D3B544(v156, v244, sub_1C6B3C1F8);
          v186 = v264;
          v187 = swift_isUniquelyReferenced_nonNull_native();
          v267 = *v186;
          v188 = v267;
          *v186 = 0x8000000000000000;
          v189 = sub_1C6B5DEA8(v266, v146);
          v191 = v188[2];
          v192 = (v190 & 1) == 0;
          v172 = __OFADD__(v191, v192);
          v193 = v191 + v192;
          v121 = v259;
          if (v172)
          {
            goto LABEL_153;
          }

          v88 = v190;
          if (v188[3] < v193)
          {
            sub_1C6B72894(v193, v187);
            v189 = sub_1C6B5DEA8(v266, v146);
            if ((v88 & 1) != (v194 & 1))
            {
              goto LABEL_164;
            }

LABEL_107:
            v212 = v266;
            if (v88)
            {
              goto LABEL_108;
            }

LABEL_123:
            v214 = v267;
            v267[(v189 >> 6) + 8] |= 1 << v189;
            v226 = (v214[6] + 16 * v189);
            *v226 = v212;
            v226[1] = v146;
            sub_1C6D3B674(v244, v214[7] + *(v263 + 72) * v189, sub_1C6B3C1F8);
            sub_1C6D3B6DC(v265, sub_1C6B3C1F8);
            v227 = v214[2];
            v172 = __OFADD__(v227, 1);
            v228 = v227 + 1;
            if (v172)
            {
              __break(1u);
LABEL_157:
              __break(1u);
LABEL_158:
              __break(1u);
LABEL_159:
              __break(1u);
LABEL_160:
              __break(1u);
LABEL_161:
              __break(1u);
LABEL_162:
              __break(1u);
              goto LABEL_163;
            }

LABEL_128:
            v214[2] = v228;
LABEL_129:
            v119 = v249;
            *v264 = v214;
            goto LABEL_130;
          }

          if (v187)
          {
            goto LABEL_107;
          }

          v225 = v189;
          sub_1C6B751D4();
          v189 = v225;
          v212 = v266;
          if ((v88 & 1) == 0)
          {
            goto LABEL_123;
          }

LABEL_108:
          v213 = v189;

          v214 = v267;
          v215 = v267[7] + *(v263 + 72) * v213;
          v216 = v244;
LABEL_116:
          sub_1C6D3B3F4(v216, v215);
          sub_1C6D3B6DC(v265, sub_1C6B3C1F8);
          goto LABEL_129;
        }
      }

      sub_1C6D3B544(v156, v120, sub_1C6B3C1F8);
      v169 = sub_1C6D78620();
      v168(v120, v140);
      if (v169 != 1)
      {
        sub_1C6D3B6DC(v156, sub_1C6B3C1F8);

        goto LABEL_111;
      }

      v170 = *(v257 + 16);
      v171 = v250;
      if (v170 < v243)
      {
        v171 = 1;
      }

      v121 = v259;
      if (v171 != 1)
      {
        sub_1C6D3B6DC(v265, sub_1C6B3C1F8);

        v119 = v249;
        goto LABEL_131;
      }

      v172 = __OFADD__(v170, 1);
      v173 = v170 + 1;
      if (v172)
      {
        goto LABEL_154;
      }

      *(v257 + 16) = v173;
      sub_1C6D3B544(v265, v242, sub_1C6B3C1F8);
      v174 = v264;
      v175 = swift_isUniquelyReferenced_nonNull_native();
      v267 = *v174;
      v176 = v267;
      *v174 = 0x8000000000000000;
      v177 = sub_1C6B5DEA8(v266, v146);
      v179 = v176[2];
      v180 = (v178 & 1) == 0;
      v172 = __OFADD__(v179, v180);
      v181 = v179 + v180;
      if (v172)
      {
        goto LABEL_155;
      }

      v88 = v178;
      if (v176[3] >= v181)
      {
        if (v175)
        {
          goto LABEL_114;
        }

        v229 = v177;
        sub_1C6B751D4();
        v177 = v229;
        v217 = v266;
        if (v88)
        {
LABEL_115:
          v218 = v177;

          v214 = v267;
          v215 = v267[7] + *(v263 + 72) * v218;
          v216 = v242;
          goto LABEL_116;
        }
      }

      else
      {
        sub_1C6B72894(v181, v175);
        v177 = sub_1C6B5DEA8(v266, v146);
        if ((v88 & 1) != (v182 & 1))
        {
          goto LABEL_164;
        }

LABEL_114:
        v217 = v266;
        if (v88)
        {
          goto LABEL_115;
        }
      }

      v214 = v267;
      v267[(v177 >> 6) + 8] |= 1 << v177;
      v230 = (v214[6] + 16 * v177);
      *v230 = v217;
      v230[1] = v146;
      sub_1C6D3B674(v242, v214[7] + *(v263 + 72) * v177, sub_1C6B3C1F8);
      sub_1C6D3B6DC(v265, sub_1C6B3C1F8);
      v231 = v214[2];
      v172 = __OFADD__(v231, 1);
      v228 = v231 + 1;
      if (v172)
      {
        goto LABEL_157;
      }

      goto LABEL_128;
    }

    break;
  }

  if (v250)
  {
LABEL_144:
    v78 = 0;
    goto LABEL_16;
  }

LABEL_142:
  v236 = v257;
  result = swift_beginAccess();
  if (*(v236 + 16) < v243 || (*(v253 + 88) & 1) != 0)
  {
    goto LABEL_144;
  }

  v237 = *(v253 + 80);
  v238 = v251;
  result = swift_beginAccess();
  v78 = *(v238 + 16) >= v237;
LABEL_16:
  *v252 = v78;
  return result;
}

void *sub_1C6D359D8(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6, int a7)
{
  v232 = a6;
  v226 = a5;
  v243 = a4;
  v231 = a3;
  v259 = a1;
  v260 = a2;
  v230 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead(0);
  MEMORY[0x1EEE9AC00](v230, v9);
  v262 = &v210 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B1B7C0(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v244 = &v210 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v229 = &v210 - v16;
  v241 = sub_1C6D789A0();
  v256 = *(v241 - 8);
  MEMORY[0x1EEE9AC00](v241, v17);
  v240 = &v210 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v239 = &v210 - v21;
  sub_1C6B3C1F8(0);
  v248 = v22;
  v255 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v210 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v27);
  v224 = &v210 - v28;
  MEMORY[0x1EEE9AC00](v29, v30);
  v233 = &v210 - v31;
  MEMORY[0x1EEE9AC00](v32, v33);
  v237 = &v210 - v34;
  MEMORY[0x1EEE9AC00](v35, v36);
  v238 = &v210 - v37;
  sub_1C6B1B7C0(0, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
  MEMORY[0x1EEE9AC00](v38 - 8, v39);
  v242 = &v210 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41, v42);
  v227 = &v210 - v43;
  v245 = sub_1C6D78A00();
  v254 = *(v245 - 8);
  MEMORY[0x1EEE9AC00](v245, v44);
  v236 = &v210 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46, v47);
  v228 = &v210 - v48;
  sub_1C6B1B7C0(0, &unk_1EDCE5CE0, sub_1C6B3C1F8);
  MEMORY[0x1EEE9AC00](v49 - 8, v50);
  v235 = &v210 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v52, v53);
  v234 = &v210 - v54;
  sub_1C6B1B7C0(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  MEMORY[0x1EEE9AC00](v55 - 8, v56);
  v247 = &v210 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v58, v59);
  v246 = &v210 - v60;
  v61 = _s23EmbeddingValidityResultOMa(0);
  MEMORY[0x1EEE9AC00](v61 - 8, v62);
  v252 = &v210 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v64, v65);
  v251 = &v210 - v66;
  v258 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  v253 = *(v258 - 8);
  MEMORY[0x1EEE9AC00](v258, v67);
  v250 = (&v210 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v69, v70);
  v249 = (&v210 - v71);
  v225 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen(0);
  MEMORY[0x1EEE9AC00](v225, v72);
  v257 = &v210 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B1B7C0(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
  MEMORY[0x1EEE9AC00](v74 - 8, v75);
  v77 = &v210 - v76;
  v78 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  v79 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78, v80);
  v82 = &v210 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v83, v84);
  v86 = &v210 - v85;
  v87 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent(0) - 8;
  MEMORY[0x1EEE9AC00](v87, v88);
  v91 = &v210 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0);
  v268 = MEMORY[0x1E69E7CD0];
  v92 = *(v7 + 16);
  v93 = *(v92 + 16);
  if (!v93)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v222 = v25;
  v220 = a7;
  v221 = v7;
  v94 = 0;
  v266 = v92 + ((*(v89 + 80) + 32) & ~*(v89 + 80));
  v265 = (v79 + 48);
  v253 += 6;
  v223 = (v254 + 6);
  v215 = (v254 + 4);
  v217 = (v254 + 1);
  v95 = v255;
  v254 = (v255 + 56);
  v219 = v256 + 6;
  v216 = (v256 + 4);
  v218 = (v256 + 1);
  v256 = MEMORY[0x1E69E7CC8];
  v96 = v262;
  v97 = v92;
  v261 = v78;
  v263 = v82;
  v264 = v89;
  while (v94 < *(v97 + 16))
  {
    sub_1C6D3B544(v266 + *(v89 + 72) * v94, v91, type metadata accessor for Com_Apple_News_Personalization_SessionEvent);
    sub_1C6D3B5AC(v91, v77, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    sub_1C6D3B6DC(v91, type metadata accessor for Com_Apple_News_Personalization_SessionEvent);
    if ((*v265)(v77, 1, v78) != 1)
    {
      v98 = v93;
      v99 = v97;
      sub_1C6D3B674(v77, v86, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
      v100 = v86;
      v101 = v86;
      v102 = v263;
      sub_1C6D3B544(v100, v263, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if ((EnumCaseMultiPayload - 3) < 0x12)
      {
        goto LABEL_8;
      }

      if (EnumCaseMultiPayload)
      {
        v102 = v263;
        if (EnumCaseMultiPayload == 1)
        {
LABEL_8:
          sub_1C6D3B6DC(v101, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
          v96 = v262;
          sub_1C6D3B6DC(v102, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
          v89 = v264;
          v86 = v101;
          goto LABEL_9;
        }

        sub_1C6D3B674(v263, v96, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead);
        v104 = v252;
        sub_1C6D43E04(v259, v260, v252);
        v105 = v104;
        v86 = v101;
        if ((*v253)(v104, 2, v258))
        {
          v106 = v262;
          sub_1C6D3B6DC(v262, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead);
          sub_1C6D3B6DC(v101, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
          sub_1C6D3B6DC(v105, _s23EmbeddingValidityResultOMa);
          v96 = v106;
          v89 = v264;
LABEL_9:
          v97 = v99;
LABEL_10:
          v93 = v98;
LABEL_11:
          v78 = v261;
          goto LABEL_4;
        }

        sub_1C6D3B674(v104, v250, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
        v112 = v247;
        Com_Apple_News_Personalization_SessionEvent.OneOf_Event.article.getter(v247);
        v113 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
        v97 = v99;
        if ((*(*(v113 - 8) + 48))(v112, 1, v113) == 1)
        {
          sub_1C6D3B6DC(v250, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
          v96 = v262;
          sub_1C6D3B6DC(v262, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead);
          sub_1C6D3B6DC(v86, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
          sub_1C6D3B618(v112, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
          v89 = v264;
          goto LABEL_10;
        }

        v130 = v112[1];
        v255 = *v112;
        v214 = v130;

        sub_1C6D3B6DC(v112, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
        v131 = v242;
        v93 = v98;
        v132 = v223;
        if ((v243 & 1) == 0)
        {
          sub_1C6D3B5AC(v262 + *(v230 + 28), v242, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
          v133 = v245;
          v213 = *v132;
          if ((v213)(v131, 1, v245) == 1)
          {
            sub_1C6D789F0();
            v134 = (v213)(v131, 1, v133);
            v135 = v236;
            if (v134 != 1)
            {
              sub_1C6D3B618(v131, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
            }
          }

          else
          {
            v135 = v236;
            (*v215)(v236, v131, v133);
          }

          v143 = sub_1C6D789E0();
          (*v217)(v135, v245);
          if (v143 < v231)
          {
            sub_1C6B1E6A8(&v267, v255, v214);
            goto LABEL_50;
          }
        }

        v144 = v256;
        v145 = v214;
        if (v256[2] && (v146 = sub_1C6B5DEA8(v255, v214), (v147 & 1) != 0))
        {
          v148 = v144[7];
          v213 = *(v95 + 72);
          v149 = v235;
          sub_1C6D3B544(v148 + v213 * v146, v235, sub_1C6B3C1F8);
          (*(v95 + 56))(v149, 0, 1, v248);
          v150 = v149;
          v151 = v214;
          sub_1C6D3B618(v150, &unk_1EDCE5CE0, sub_1C6B3C1F8);
          if (!v144[2] || (v152 = sub_1C6B5DEA8(v255, v151), (v153 & 1) == 0) || (v154 = v256[7] + v152 * v213, v213 = sub_1C6B3C1F8, v155 = v224, sub_1C6D3B544(v154, v224, sub_1C6B3C1F8), sub_1C6D3B544(v155, v233, v213), v156 = sub_1C6D78620(), v157 = v155, v145 = v214, sub_1C6D3B6DC(v157, sub_1C6B3C1F8), v158 = sub_1C6D78630(), (*(*(v158 - 8) + 8))(v233, v158), v156))
          {
LABEL_50:

            sub_1C6D3B6DC(v250, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
            v159 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead;
            v96 = v262;
            v160 = v262;
LABEL_79:
            sub_1C6D3B6DC(v160, v159);
            sub_1C6D3B6DC(v86, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
            v89 = v264;
            goto LABEL_11;
          }
        }

        else
        {
          v161 = v235;
          (*v254)(v235, 1, 1, v248);
          sub_1C6D3B618(v161, &unk_1EDCE5CE0, sub_1C6B3C1F8);
        }

        v162 = v255;
        sub_1C6D39EFC(v255, v145);

        v164 = *v250;
        v163 = v250[1];
        if (v220)
        {
          v211 = v250[1];

          v163 = v211;
          v213 = v162;
          v212 = v145;
        }

        else
        {
          v213 = 0;
          v212 = 0;
        }

        v165 = v244;
        sub_1C6B1CD10(v164, v163);
        sub_1C6D78610();
        v166 = type metadata accessor for Com_Apple_News_Personalization_Session(0);
        sub_1C6D3B5AC(v221 + *(v166 + 36), v165, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
        v167 = *v219;
        v168 = v165;
        v169 = v241;
        if ((*v219)(v168, 1, v241) == 1)
        {
          sub_1C6D78990();
          v170 = v167(v244, 1, v169);
          v171 = v240;
          if (v170 != 1)
          {
            sub_1C6D3B618(v244, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
          }
        }

        else
        {
          v171 = v240;
          (*v216)(v240, v244, v169);
        }

        v172 = *(v248 + 48);
        sub_1C6D78970();
        v174 = v173;
        (*v218)(v171, v169);
        v175 = v222;
        *&v222[v172] = v174;
        v176 = v233;
        sub_1C6D3B674(v175, v233, sub_1C6B3C1F8);
        v177 = v256;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v267 = v177;
        sub_1C6BC59E8(v176, v255, v214, isUniquelyReferenced_nonNull_native);

        sub_1C6D3B6DC(v250, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
        v96 = v262;
        sub_1C6D3B6DC(v262, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleRead);
        sub_1C6D3B6DC(v86, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
        v256 = v267;
        v89 = v264;
        goto LABEL_11;
      }

      v107 = v257;
      sub_1C6D3B674(v263, v257, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen);
      v108 = v251;
      sub_1C6D43E04(v259, v260, v251);
      if ((*v253)(v108, 2, v258))
      {
        sub_1C6D3B6DC(v107, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen);
        sub_1C6D3B6DC(v101, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
        sub_1C6D3B6DC(v108, _s23EmbeddingValidityResultOMa);
        v78 = v261;
        v96 = v262;
        v89 = v264;
        v86 = v101;
        v97 = v99;
        v93 = v98;
        goto LABEL_4;
      }

      sub_1C6D3B674(v108, v249, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
      v109 = v246;
      Com_Apple_News_Personalization_SessionEvent.OneOf_Event.article.getter(v246);
      v110 = v109;
      v111 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
      v86 = v101;
      v97 = v99;
      if ((*(*(v111 - 8) + 48))(v109, 1, v111) == 1)
      {
        sub_1C6D3B6DC(v249, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
        sub_1C6D3B6DC(v257, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen);
        sub_1C6D3B6DC(v86, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
        sub_1C6D3B618(v109, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
        v78 = v261;
        v96 = v262;
        v89 = v264;
        v93 = v98;
        goto LABEL_4;
      }

      v114 = *v109;
      v115 = *(v109 + 1);

      sub_1C6D3B6DC(v110, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
      v116 = v114;
      v214 = v268;
      v117 = *(v268 + 16);
      v93 = v98;
      v255 = v116;
      if (v117)
      {
        v118 = v214;
        sub_1C6D7A260();
        sub_1C6D79610();
        v119 = sub_1C6D7A2B0();
        v116 = v255;
        v120 = v118 + 56;
        v121 = -1 << *(v118 + 32);
        v122 = v119 & ~v121;
        if ((*(v120 + ((v122 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v122))
        {
          v123 = v120;
          v213 = ~v121;
          while (1)
          {
            v124 = (*(v214 + 48) + 16 * v122);
            if (*v124 == v116 && v124[1] == v115)
            {
              break;
            }

            v126 = sub_1C6D7A130();
            v116 = v255;
            if (v126)
            {
              break;
            }

            v122 = (v122 + 1) & v213;
            if (((*(v123 + ((v122 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v122) & 1) == 0)
            {
              goto LABEL_31;
            }
          }

LABEL_62:

          sub_1C6D3B6DC(v249, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
          sub_1C6D3B6DC(v257, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen);
          sub_1C6D3B6DC(v86, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
LABEL_63:
          v96 = v262;
          v89 = v264;
          goto LABEL_11;
        }
      }

LABEL_31:
      if (v256[2])
      {
        v127 = sub_1C6B5DEA8(v116, v115);
        if (v128)
        {
          v129 = v234;
          sub_1C6D3B544(v256[7] + *(v95 + 72) * v127, v234, sub_1C6B3C1F8);
          (*(v95 + 56))(v129, 0, 1, v248);

          sub_1C6D3B6DC(v249, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
          sub_1C6D3B6DC(v257, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen);
          sub_1C6D3B6DC(v86, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
          sub_1C6D3B618(v129, &unk_1EDCE5CE0, sub_1C6B3C1F8);
          goto LABEL_63;
        }
      }

      v136 = v234;
      (*v254)(v234, 1, 1, v248);
      sub_1C6D3B618(v136, &unk_1EDCE5CE0, sub_1C6B3C1F8);
      v137 = v223;
      v212 = v115;
      if ((v232 & 1) == 0)
      {
        v138 = v227;
        sub_1C6D3B5AC(v257 + *(v225 + 24), v227, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
        v139 = v245;
        v214 = *v137;
        if ((v214)(v138, 1, v245) == 1)
        {
          sub_1C6D789F0();
          v140 = (v214)(v138, 1, v139);
          v141 = v228;
          v142 = v139;
          if (v140 != 1)
          {
            sub_1C6D3B618(v227, &qword_1EDCDFD00, MEMORY[0x1E69AAB70]);
          }
        }

        else
        {
          v141 = v228;
          (*v215)(v228, v138, v139);
          v142 = v139;
        }

        v179 = v141;
        v180 = sub_1C6D789E0();
        (*v217)(v179, v142);
        v115 = v212;
        if (v180 < v226)
        {
          goto LABEL_62;
        }
      }

      v182 = *v249;
      v181 = v249[1];
      if (v220)
      {
        v183 = v249[1];

        v181 = v183;
        v214 = v255;
        v213 = v115;
      }

      else
      {
        v214 = 0;
        v213 = 0;
      }

      v184 = v219;
      sub_1C6B1CD10(v182, v181);
      sub_1C6D78610();
      v185 = type metadata accessor for Com_Apple_News_Personalization_Session(0);
      v186 = v229;
      sub_1C6D3B5AC(v221 + *(v185 + 36), v229, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
      v187 = v241;
      v214 = *v184;
      if ((v214)(v186, 1, v241) == 1)
      {
        sub_1C6D78990();
        v188 = v187;
        if ((v214)(v186, 1, v187) != 1)
        {
          sub_1C6D3B618(v229, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
        }
      }

      else
      {
        (*v216)(v239, v186, v187);
        v188 = v187;
      }

      v189 = *(v248 + 48);
      v190 = v239;
      sub_1C6D78970();
      v192 = v191;
      (*v218)(v190, v188);
      v193 = v238;
      *&v238[v189] = v192;
      sub_1C6D3B674(v193, v237, sub_1C6B3C1F8);
      v194 = v256;
      LODWORD(v214) = swift_isUniquelyReferenced_nonNull_native();
      v267 = v194;
      v195 = v212;
      v197 = sub_1C6B5DEA8(v255, v212);
      v198 = v194[2];
      v199 = (v196 & 1) == 0;
      v200 = v198 + v199;
      if (__OFADD__(v198, v199))
      {
        goto LABEL_86;
      }

      if (v194[3] >= v200)
      {
        v96 = v262;
        if ((v214 & 1) == 0)
        {
          v214 = v197;
          LODWORD(v256) = v196;
          sub_1C6B751D4();
          LOBYTE(v196) = v256;
          v197 = v214;
          goto LABEL_75;
        }
      }

      else
      {
        LODWORD(v256) = v196;
        sub_1C6B72894(v200, v214);
        v201 = sub_1C6B5DEA8(v255, v195);
        v202 = v196 & 1;
        LOBYTE(v196) = v256;
        if ((v256 & 1) != v202)
        {
          goto LABEL_88;
        }

        v197 = v201;
LABEL_75:
        v96 = v262;
      }

      if ((v196 & 1) == 0)
      {
        v204 = v267;
        v267[(v197 >> 6) + 8] |= 1 << v197;
        v205 = (v204[6] + 16 * v197);
        *v205 = v255;
        v205[1] = v195;
        sub_1C6D3B674(v237, v204[7] + *(v95 + 72) * v197, sub_1C6B3C1F8);
        sub_1C6D3B6DC(v249, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
        sub_1C6D3B6DC(v257, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen);
        sub_1C6D3B6DC(v86, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
        v206 = v204[2];
        v207 = __OFADD__(v206, 1);
        v208 = v206 + 1;
        if (v207)
        {
          goto LABEL_87;
        }

        v256 = v204;
        v204[2] = v208;
        v89 = v264;
        goto LABEL_11;
      }

      v203 = v197;

      v256 = v267;
      sub_1C6D3B3F4(v237, v267[7] + *(v95 + 72) * v203);
      sub_1C6D3B6DC(v249, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
      v159 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleSeen;
      v160 = v257;
      goto LABEL_79;
    }

    sub_1C6D3B618(v77, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    v89 = v264;
LABEL_4:
    if (++v94 == v93)
    {
      return v256;
    }
  }

  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  result = sub_1C6D7A1C0();
  __break(1u);
  return result;
}