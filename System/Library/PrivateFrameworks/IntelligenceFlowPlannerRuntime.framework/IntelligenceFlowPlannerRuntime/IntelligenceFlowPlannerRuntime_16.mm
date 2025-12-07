uint64_t sub_22C4D02CC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  sub_22C4CFE10();
  if (v13)
  {
    v6 = *&v12[0];
    *&v11[0] = *&v12[0];
    sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
    result = swift_willThrowTypedImpl();
LABEL_5:
    *a2 = v6;
    return result;
  }

  v8 = sub_22C36C730(v12, v14);
  sub_22C4CFF1C(v12, v8);
  if (v13)
  {
    v6 = *&v12[0];
    sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
    swift_willThrowTypedImpl();
    result = sub_22C36FF94(v14);
    goto LABEL_5;
  }

  sub_22C36C730(v12, v11);
  v9 = *(a1 + *(_s14EchoComponentsVMa(0) + 24));
  a3[3] = &type metadata for PostInferenceHandler;
  a3[4] = &off_283FB3BA0;
  v10 = swift_allocObject();
  *a3 = v10;
  sub_22C36C730(v14, v10 + 16);
  sub_22C36C730(v11, v10 + 56);
  *(v10 + 96) = v9;
}

uint64_t sub_22C4D0420()
{
  v2 = sub_22C3727F4();
  v3 = type metadata accessor for FullPlannerPreferences(v2);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 16];
  v6 = *(_s14EchoComponentsVMa(0) + 116);
  result = sub_22C3E8FB4(v1 + v6, &v12, &qword_27D9BD420, &unk_22C918740);
  if (v13[24] == 255)
  {
    sub_22C36DD28(&v12, &qword_27D9BD420, &unk_22C918740);
    sub_22C36AA34();
    sub_22C4D0C60(v1 + v9, v5, v10);
    *(v0 + 24) = &type metadata for RuleBasedPlanGenerator_v1_0;
    *(v0 + 32) = &off_283FB91F0;
    v11 = swift_allocObject();
    *v0 = v11;
    sub_22C50B704(v5, v11 + 16);
    *(v0 + 40) = 0;
    sub_22C36DD28(v1 + v6, &qword_27D9BD420, &unk_22C918740);
    return sub_22C3E8FB4(v0, v1 + v6, &qword_27D9BD3B0, &unk_22C9182F0);
  }

  else
  {
    v8 = *v13;
    *v0 = v12;
    *(v0 + 16) = v8;
    *(v0 + 25) = *&v13[9];
  }

  return result;
}

uint64_t sub_22C4D0630@<X0>(void *a1@<X1>, uint64_t *a2@<X8>)
{
  sub_22C4CFD28();
  if (v27)
  {
    v4 = v24;
    v23[0] = v24;
    sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
    result = swift_willThrowTypedImpl();
LABEL_9:
    *a1 = v4;
    return result;
  }

  sub_22C36C730(&v24, v28);
  sub_22C4CCE78();
  if (v27)
  {
    v4 = v24;
    v22[0] = v24;
    sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
    swift_willThrowTypedImpl();
LABEL_7:
    v7 = v28;
LABEL_8:
    result = sub_22C36FF94(v7);
    goto LABEL_9;
  }

  v6 = sub_22C36C730(&v24, v23);
  sub_22C4D0224(&v24, v6);
  if (v27)
  {
    v4 = v24;
    *&v21[0] = v24;
    sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
    swift_willThrowTypedImpl();
    sub_22C36FF94(v23);
    goto LABEL_7;
  }

  sub_22C36C730(&v24, v22);
  sub_22C4D0420();
  if (v27)
  {
    v4 = v24;
    v18[0] = v24;
    sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
    swift_willThrowTypedImpl();
    sub_22C36FF94(v23);
    sub_22C36FF94(v28);
    v7 = v22;
    goto LABEL_8;
  }

  sub_22C36C730(&v24, v21);
  v8 = sub_22C3A5908(&qword_27D9BD630, &qword_22C918558);
  v9 = swift_allocObject();
  v10 = sub_22C36D1E4(v22, v22[3]);
  MEMORY[0x28223BE20](v10);
  v12 = &v18[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12);
  v25 = &type metadata for PostInferenceHandler;
  v26 = &off_283FB3BA0;
  *&v24 = swift_allocObject();
  memcpy((v24 + 16), v12, 0x58uLL);
  sub_22C4BF48C();
  sub_22C90271C();
  v14 = qword_27D9BDFC0;
  type metadata accessor for TrialManager();
  swift_allocObject();
  *(v9 + v14) = sub_22C36E65C(1);
  sub_22C378A4C(v28, v9 + 16);
  sub_22C378A4C(v23, v9 + 56);
  sub_22C378A4C(v9 + 56, v18);
  v15 = v19;
  v16 = v20;
  sub_22C374168(v18, v19);
  (*(v16 + 16))(v15, v16);
  sub_22C36FF94(v23);
  sub_22C36FF94(v28);
  sub_22C36FF94(v18);
  sub_22C36C730(&v24, v9 + 96);
  sub_22C36C730(v21, v9 + qword_27D9BDFC8);
  result = sub_22C36FF94(v22);
  a2[3] = v8;
  a2[4] = &off_283FBBC08;
  *a2 = v9;
  return result;
}

uint64_t sub_22C4D0AD0()
{
  sub_22C36FF94((v0 + 16));
  sub_22C36FF94((v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

unint64_t sub_22C4D0C0C()
{
  result = qword_27D9BD660;
  if (!qword_27D9BD660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BD660);
  }

  return result;
}

uint64_t sub_22C4D0C60(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_22C36985C();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_22C4D0CC0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_22C36985C();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_22C4D0D68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_22C3A5908(&qword_27D9BD638, &unk_22C92C240);
  v11 = sub_22C369914(v10);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v22 - v15;
  v17 = *(sub_22C3A5908(a3, a4) + 36);
  sub_22C901ADC();
  v18 = sub_22C901AEC();
  sub_22C36C640(v16, 0, 1, v18);
  sub_22C379DF8(v16, v14, &qword_27D9BD638, &unk_22C92C240);
  sub_22C901B2C();
  sub_22C901B1C();
  sub_22C901AFC();
  sub_22C901B0C();
  sub_22C36DD28(v16, &qword_27D9BD638, &unk_22C92C240);
  v19 = v24;
  sub_22C3EECF8(a1, 1, a2, v23);
  sub_22C4D6B50(a2, type metadata accessor for FullPlannerPreferences);
  sub_22C36BD64();
  if (!v19)
  {
    return sub_22C36C730(v23, a5);
  }

  sub_22C901B3C();
  sub_22C36985C();
  return (*(v20 + 8))(a5 + v17);
}

void *sub_22C4D0FAC(uint64_t a1)
{
  swift_beginAccess();
  v26 = a1;
  v2 = *(a1 + 16);
  sub_22C3A5908(&qword_27D9BD690, &unk_22C918700);
  v3 = sub_22C90B1CC();
  v4 = v3;
  v5 = v2 + 64;
  v6 = 1 << *(v2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v2 + 64);
  v9 = (v6 + 63) >> 6;
  v28 = v3 + 64;
  v29 = v2;

  v11 = 0;
  if (v8)
  {
    while (1)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_10:
      v15 = v12 | (v11 << 6);
      v16 = (*(v29 + 48) + 16 * v15);
      v17 = *v16;
      v18 = v16[1];
      swift_allocObject();

      result = sub_22C4D0FAC(v19);
      *(v28 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v20 = (v4[6] + 16 * v15);
      *v20 = v17;
      v20[1] = v18;
      *(v4[7] + 8 * v15) = result;
      v21 = v4[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        break;
      }

      v4[2] = v23;
      if (!v8)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v13 = v11;
    while (1)
    {
      v11 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v11 >= v9)
      {

        v27[2] = v4;
        v24 = *(v26 + 24);
        v25 = *(v26 + 32);

        v27[3] = v24;
        v27[4] = v25;
        return v27;
      }

      v14 = *(v5 + 8 * v11);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22C4D11B0(uint64_t a1, uint64_t a2)
{
  v3 = v2;

  while (1)
  {
    v6 = sub_22C90A3AC();
    if (!v7)
    {
      break;
    }

    v8 = sub_22C4D1280(v6, v7);

    v3 = v8;
  }

  v3[3] = a1;
  v3[4] = a2;
}

void *sub_22C4D1280(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  v6 = *(v2 + 16);
  if (*(v6 + 16) && (v7 = sub_22C628790(a1, a2), (v8 & 1) != 0))
  {
    v9 = *(*(v6 + 56) + 8 * v7);
  }

  else
  {
    sub_22C3A5908(&qword_27D9BD680, &qword_22C9186F0);
    swift_allocObject();
    v9 = sub_22C4D1388();
    swift_beginAccess();

    swift_isUniquelyReferenced_nonNull_native();
    v11 = *(v3 + 16);
    sub_22C62C8E0();
    *(v3 + 16) = v11;
    swift_endAccess();
  }

  return v9;
}

void *sub_22C4D1388()
{
  sub_22C3A5908(&qword_27D9BD680, &qword_22C9186F0);
  v1 = sub_22C909F0C();
  v0[3] = 0;
  v0[4] = 0;
  v0[2] = v1;
  return v0;
}

uint64_t sub_22C4D13DC@<X0>(uint64_t a1@<X8>)
{
  sub_22C4D4DAC(v6);
  if (v7)
  {
    v2 = *&v6[0];
    sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
    result = swift_willThrowTypedImpl();
    *(a1 + 40) = 1;
  }

  else
  {
    sub_22C36C730(v6, v8);
    v4 = sub_22C3A5908(&qword_27D9BD648, &qword_22C918760);
    v5 = sub_22C3D32C8(qword_281434CF8, &qword_27D9BD648, &qword_22C918760, &unk_22C91B818);
    v2 = swift_allocObject();
    sub_22C4D5478();
    *(v2 + 16) = 0;
    result = sub_22C36C730(v8, v2 + 24);
    v9 = 0;
    *(a1 + 24) = v4;
    *(a1 + 32) = v5;
    *(a1 + 40) = 0;
  }

  *a1 = v2;
  return result;
}

double sub_22C4D14FC@<D0>(uint64_t a1@<X0>, void (*a2)(__int128 *__return_ptr, uint64_t, uint64_t *)@<X1>, _OWORD *a3@<X8>)
{
  a2(&v7, a1, &v6);
  v8[24] = 0;
  v4 = *v8;
  *a3 = v7;
  a3[1] = v4;
  result = *&v8[9];
  *(a3 + 25) = *&v8[9];
  return result;
}

uint64_t sub_22C4D1570@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_22C3A5908(&qword_27D9BB738, &unk_22C9185A0);
  v5 = sub_22C369914(v4);
  MEMORY[0x28223BE20](v5);
  v78 = &v73 - v6;
  v7 = sub_22C3A5908(&qword_27D9BB720, &unk_22C90FE20);
  v8 = sub_22C369914(v7);
  v9 = MEMORY[0x28223BE20](v8);
  v77 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v76 = (&v73 - v11);
  v12 = sub_22C90077C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  sub_22C369838();
  v75 = v15 - v14;
  *a2 = 0x746F7274786F46;
  *(a2 + 1) = 0xE700000000000000;
  v16 = _s17FoxtrotComponentsVMa(0);
  v17.n128_f64[0] = sub_22C38711C(&a2[v16[14]]);
  sub_22C369DE4(*(v18 + 60), v17);
  sub_22C369DE4(*(v19 + 64), v20);
  sub_22C369DE4(*(v21 + 68), v22);
  sub_22C369DE4(*(v23 + 72), v24);
  sub_22C369DE4(*(v25 + 76), v26);
  sub_22C369DE4(*(v27 + 80), v28);
  *(v29 + 40) = -1;
  bzero(&a2[*(v30 + 84)], 0x110uLL);
  bzero(&a2[v16[22]], 0x190uLL);
  v31.n128_f64[0] = sub_22C38711C(&a2[v16[23]]);
  *(v32 + 40) = -1;
  sub_22C369DE4(v16[24], v31);
  sub_22C369DE4(v16[25], v33);
  *(v34 + 40) = -1;
  sub_22C369DE4(v16[26], v35);
  *(v36 + 40) = -1;
  sub_22C369DE4(v16[27], v37);
  *(v38 + 40) = -1;
  sub_22C369DE4(v16[28], v39);
  *(v40 + 40) = -1;
  sub_22C369DE4(v16[29], v41);
  *(v42 + 40) = -1;
  sub_22C369DE4(v16[30], v43);
  *(v44 + 40) = -1;
  v45 = *(v13 + 16);
  v45(&a2[v16[5]], a1, v12);
  v46 = type metadata accessor for FullPlannerVersionHandler.GenericInitialisationParameters(0);
  *&a2[v16[6]] = *(a1 + v46[5]);
  sub_22C379DF8(a1 + v46[6], &a2[v16[7]], &qword_27D9BB730, &unk_22C90FE30);
  v47 = a1 + v46[10];
  type metadata accessor for FullPlannerPreferences(0);

  sub_22C3A5908(&qword_27D9BBC18, &unk_22C912380);
  v74 = v47;
  sub_22C901EDC();
  if (v80 == 1)
  {
    v79 = 0;
    v48 = v75;
    v45(v75, a1, v12);
    StringExprsAreQuotesRequirement.init(aligner:locale:)(&v79, v48, &v80);
    v70 = v80;
    v71 = v81;
    v72 = v82;
  }

  else
  {
    v70 = 0;
    v72 = 0;
    v71 = 0uLL;
  }

  v49 = &a2[v16[8]];
  *v49 = v70;
  *(v49 + 8) = v71;
  *(v49 + 3) = v72;
  v49[32] = 0;
  sub_22C379DF8(a1 + v46[7], &a2[v16[9]], &qword_27D9BB728, &qword_22C911230);
  v50 = (a1 + v46[8]);
  v51 = *v50;
  v52 = v50[1];
  v53 = &a2[v16[10]];
  *v53 = v51;
  *(v53 + 1) = v52;
  v54 = v46[9];
  v75 = a1;
  v55 = v76;
  sub_22C379DF8(a1 + v54, v76, &qword_27D9BB720, &unk_22C90FE20);
  v56 = type metadata accessor for FullPlannerVersionHandler.GrammarConfiguration(0);
  if (sub_22C370B74(v55, 1, v56) == 1)
  {

    sub_22C36DD28(v55, &qword_27D9BB720, &unk_22C90FE20);
    v57 = 0;
    v58 = 0;
    v59 = 0;
    v60 = 0x3000000000000007;
  }

  else
  {
    v57 = *v55;
    v58 = v55[1];
    v60 = v55[2];
    v59 = v55[3];

    sub_22C4C7C38(v57, v58, v60);
    sub_22C38B994();
  }

  v61 = &a2[v16[12]];
  *v61 = v57;
  *(v61 + 1) = v58;
  *(v61 + 2) = v60;
  *(v61 + 3) = v59;
  v62 = v75;
  v63 = v77;
  sub_22C379DF8(v75 + v54, v77, &qword_27D9BB720, &unk_22C90FE20);
  if (sub_22C370B74(v63, 1, v56) == 1)
  {
    sub_22C36DD28(v63, &qword_27D9BB720, &unk_22C90FE20);
    v64 = type metadata accessor for GrammarToolDefinitionBundle(0);
    v65 = v78;
    sub_22C36C640(v78, 1, 1, v64);
  }

  else
  {
    v66 = v63 + *(v56 + 20);
    v65 = v78;
    sub_22C379DF8(v66, v78, &qword_27D9BB738, &unk_22C9185A0);
    sub_22C38B994();
  }

  sub_22C4CC2D0(v65, &a2[v16[13]]);
  sub_22C36AA4C();
  sub_22C4D6AF4(v74, &a2[v67], v68);
  return sub_22C4D6B50(v62, type metadata accessor for FullPlannerVersionHandler.GenericInitialisationParameters);
}

uint64_t _s17FoxtrotComponentsVMa(uint64_t a1)
{
  result = qword_27D9BD668;
  if (!qword_27D9BD668)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22C4D1B50()
{
  v2 = sub_22C3727F4();
  v3 = _s17FoxtrotComponentsVMa(v2);
  v4 = *(v3 + 56);
  v5 = sub_22C379DF8(v1 + v4, &v19, &qword_27D9BD3D0, &unk_22C918320);
  if (v20)
  {
    return sub_22C36D7B0(v5, v6, v7, v8, v9, v10, v11, v12, v18, v19);
  }

  sub_22C36D798(&v19);
  v14 = *(v3 + 44);
  v0[3] = type metadata accessor for AppNameRenderer_v1_0(0);
  v0[4] = &off_283FB8878;
  v15 = sub_22C36D548(v0);
  sub_22C9006AC();
  sub_22C36AA4C();
  sub_22C4D6AF4(v1 + v14, v15 + v16, v17);
  sub_22C36D798(v1 + v4);
  return sub_22C378A4C(v0, v1 + v4);
}

uint64_t sub_22C4D1C48@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(_s17FoxtrotComponentsVMa(0) + 60);
  sub_22C379DF8(v1 + v3, &v5, &qword_27D9BD400, &unk_22C918710);
  if (v6)
  {
    return sub_22C36C730(&v5, a1);
  }

  sub_22C36DD28(&v5, &qword_27D9BD400, &unk_22C918710);
  a1[3] = &type metadata for ToolNameRenderer_v5_0;
  a1[4] = &off_283FBAD00;
  *a1 = swift_allocObject();
  sub_22C4D1B50();
  sub_22C36DD28(v1 + v3, &qword_27D9BD400, &unk_22C918710);
  return sub_22C378A4C(a1, v1 + v3);
}

uint64_t sub_22C4D1E78()
{
  v2 = sub_22C3727F4();
  v3 = *(_s17FoxtrotComponentsVMa(v2) + 72);
  v4 = sub_22C379DF8(v1 + v3, &v18, &qword_27D9BD3E0, &unk_22C918720);
  if (v19)
  {
    return sub_22C36D7B0(v4, v5, v6, v7, v8, v9, v10, v11, v17, v18);
  }

  sub_22C36D798(&v18);
  v0[3] = type metadata accessor for DynamicEnumerationCaseRenderer_v3_0(0);
  v0[4] = &off_283FB9A30;
  v13 = sub_22C36D548(v0);
  sub_22C4D1DD4(v13);
  sub_22C36AA4C();
  sub_22C4D6AF4(v1 + v14, v13 + v15, v16);
  sub_22C36D798(v1 + v3);
  return sub_22C378A4C(v0, v1 + v3);
}

uint64_t sub_22C4D1F60()
{
  v2 = sub_22C3727F4();
  v3 = *(_s17FoxtrotComponentsVMa(v2) + 76);
  v4 = sub_22C379DF8(v1 + v3, &v18, &qword_27D9BD3F8, &unk_22C918340);
  if (v19)
  {
    return sub_22C36D7B0(v4, v5, v6, v7, v8, v9, v10, v11, v17, v18);
  }

  sub_22C36D798(&v18);
  v13 = type metadata accessor for ToolRenderer_v6_0(0);
  v0[3] = v13;
  v0[4] = &off_283FBAF20;
  v14 = sub_22C36D548(v0);
  sub_22C90718C();
  sub_22C4D20C4();
  v15 = (v14 + v13[6]);
  v15[3] = type metadata accessor for ToolRenderer_v1_0(0);
  v15[4] = &off_283FB9200;
  sub_22C36D548(v15);
  sub_22C90718C();
  sub_22C4D20C4();
  v16 = v14 + v13[7];
  *(v16 + 3) = &unk_283FB9BD0;
  *(v16 + 4) = &off_283FB9DA0;
  sub_22C38711C(v14 + v13[8]);
  sub_22C36D798(v1 + v3);
  return sub_22C378A4C(v0, v1 + v3);
}

void *sub_22C4D20C4()
{
  v1 = sub_22C3727F4();
  v2 = _s17FoxtrotComponentsVMa(v1);
  v8 = sub_22C37068C(v2, v3, &qword_27D9BD3D8, &unk_22C9186D0, v4, v5, v6, v7, v21[0]);
  if (v21[3])
  {
    return memcpy(v0, v21, 0x110uLL);
  }

  sub_22C36BD3C(v8, v9, v10, v11, v12, v13, v14, v15, v21[0]);
  v17 = sub_22C36BD58();
  sub_22C4D2C9C(v17, v18);
  sub_22C3717CC();
  v19 = sub_22C37280C();
  return sub_22C42F0B8(v19, v20);
}

void sub_22C4D215C()
{
  v2 = sub_22C3727F4();
  v3 = v1 + *(_s17FoxtrotComponentsVMa(v2) + 80);
  sub_22C36D78C();
  if (v5)
  {
    sub_22C370678();
  }

  else if (v4)
  {
    v6 = *v3;
    v7 = *v3;
    *&v22[0] = v6;
    v24 = 1;
  }

  else
  {
    sub_22C378A4C(v3, v22);
    v24 = 0;
  }

  sub_22C372800();
  if (v5)
  {
    v16 = sub_22C36BD58();
    sub_22C4D14FC(v16, v17, v18);
    sub_22C36D78C();
    if (!v5)
    {
      if (v19)
      {
      }

      else
      {
        sub_22C36FF94(v3);
      }
    }

    if (*(v0 + 40))
    {
      v20 = *v0;
      v21 = v20;
      *v3 = v20;
      *(v3 + 40) = 1;
    }

    else
    {
      sub_22C378A4C(v0, v3);
      *(v3 + 40) = 0;
    }
  }

  else
  {
    sub_22C36AA20(v8, v9, v10, v11, v12, v13, v14, v15, v22[0], v22[1], v23, v24);
  }
}

uint64_t sub_22C4D2258@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v87 = a3;
  v88 = a2;
  v4 = sub_22C9063DC();
  v75 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v74 = &v72 - v8;
  v9 = sub_22C3A5908(&qword_27D9BD638, &unk_22C92C240);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v80 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v81 = &v72 - v12;
  v78 = type metadata accessor for FullPlannerTokenGeneratorConstrainedDecodingInterface(0);
  MEMORY[0x28223BE20](v78);
  v83 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for FullPlannerGMSClientConfiguration(0);
  v15 = MEMORY[0x28223BE20](v14);
  v77 = &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v82 = &v72 - v18;
  MEMORY[0x28223BE20](v17);
  v89 = &v72 - v19;
  v20 = type metadata accessor for FullPlannerPreferences(0);
  v21 = MEMORY[0x28223BE20](v20);
  v76 = &v72 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v79 = &v72 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v72 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = &v72 - v28;
  v30 = _s17FoxtrotComponentsVMa(0);
  v31 = v30[11];
  sub_22C4D6AF4(a1 + v31, v29, type metadata accessor for FullPlannerPreferences);
  v85 = v20;
  sub_22C3A5908(&qword_27D9BB8A8, &unk_22C918750);
  sub_22C901EDC();
  sub_22C4D6B50(v29, type metadata accessor for FullPlannerPreferences);
  v32 = v90[0];
  if (*&v90[0] != 0x6E65476E656B6F74 || *(&v90[0] + 1) != 0xEE00726F74617265)
  {
    v73 = v4;
    v34 = v88;
    if ((sub_22C90B4FC() & 1) == 0)
    {
      if (v32 == 0x65696C4370747468 && *(&v32 + 1) == 0xEA0000000000746ELL)
      {
      }

      else
      {
        v64 = sub_22C90B4FC();

        if ((v64 & 1) == 0)
        {
          sub_22C903F7C();
          v65 = sub_22C9063CC();
          v66 = sub_22C90AADC();
          if (os_log_type_enabled(v65, v66))
          {
            v67 = v34;
            v68 = swift_slowAlloc();
            *v68 = 0;
LABEL_22:
            _os_log_impl(&dword_22C366000, v65, v66, v69, v68, 2u);
            v70 = v68;
            v34 = v67;
            MEMORY[0x2318B9880](v70, -1, -1);
            goto LABEL_23;
          }

          goto LABEL_23;
        }
      }

      v7 = v74;
      sub_22C903F7C();
      v65 = sub_22C9063CC();
      v66 = sub_22C90AADC();
      if (os_log_type_enabled(v65, v66))
      {
        v67 = v34;
        v68 = swift_slowAlloc();
        *v68 = 0;
        v69 = "HTTPClient not supported";
        goto LABEL_22;
      }

LABEL_23:

      (*(v75 + 8))(v7, v73);
      sub_22C3DD0D8();
      v52 = swift_allocError();
      *v71 = 0;
      v71[1] = 0;
      result = swift_willThrow();
      goto LABEL_24;
    }
  }

  v35 = a1 + v30[9];
  v36 = a1;
  v37 = v89;
  sub_22C379DF8(v35, v89, &qword_27D9BB728, &qword_22C911230);
  v38 = v30[5];
  v84 = v14;
  v39 = *(v14 + 5);
  v40 = sub_22C90077C();
  (*(*(v40 - 8) + 16))(v37 + v39, v36 + v38, v40);
  sub_22C4D6AF4(v36 + v31, v27, type metadata accessor for FullPlannerPreferences);
  sub_22C3A5908(&qword_27D9BBC18, &unk_22C912380);
  sub_22C901EDC();
  sub_22C4D6B50(v27, type metadata accessor for FullPlannerPreferences);
  *(v37 + *(v84 + 6)) = v90[0];
  v41 = v36;
  sub_22C4D6AF4(v36 + v31, v27, type metadata accessor for FullPlannerPreferences);
  sub_22C901EDC();
  sub_22C4D6B50(v27, type metadata accessor for FullPlannerPreferences);
  if (LOBYTE(v90[0]) == 1)
  {
    v42 = v82;
    sub_22C4D6AF4(v89, v82, type metadata accessor for FullPlannerGMSClientConfiguration);
    sub_22C4D6AF4(v36 + v31, v27, type metadata accessor for FullPlannerPreferences);
    static PromptGrammarGenerationMode.configuration(from:)(&v91);
    sub_22C4D6B50(v27, type metadata accessor for FullPlannerPreferences);
    LODWORD(v85) = v91;
    v43 = v36 + v31;
    v44 = v79;
    sub_22C4D6AF4(v43, v79, type metadata accessor for FullPlannerPreferences);
    v45 = v87;
    v46 = v78;
    v87[3] = v78;
    v45[4] = &off_2818B22E0;
    v84 = sub_22C36D548(v45);
    v47 = *(v46 + 24);
    v48 = v81;
    sub_22C901ADC();
    v49 = sub_22C901AEC();
    sub_22C36C640(v48, 0, 1, v49);
    sub_22C379DF8(v48, v80, &qword_27D9BD638, &unk_22C92C240);
    v50 = v83;
    sub_22C901B2C();
    sub_22C901B1C();
    sub_22C901AFC();
    sub_22C901B0C();
    sub_22C36DD28(v48, &qword_27D9BD638, &unk_22C92C240);
    v51 = v86;
    sub_22C3EECF8(v42, 2, v44, v90);
    v52 = v51;
    v53 = v89;
    if (!v51)
    {
      sub_22C4D6B50(v44, type metadata accessor for FullPlannerPreferences);
      sub_22C4D6B50(v42, type metadata accessor for FullPlannerGMSClientConfiguration);
      sub_22C36C730(v90, v50);
      *(v50 + 40) = v85;
      sub_22C4D6BA8(v50, v84, type metadata accessor for FullPlannerTokenGeneratorConstrainedDecodingInterface);
      return sub_22C4D6B50(v53, type metadata accessor for FullPlannerGMSClientConfiguration);
    }

    sub_22C4D6B50(v44, type metadata accessor for FullPlannerPreferences);
    sub_22C4D6B50(v42, type metadata accessor for FullPlannerGMSClientConfiguration);
    sub_22C4D6B50(v53, type metadata accessor for FullPlannerGMSClientConfiguration);
    v54 = sub_22C901B3C();
    (*(*(v54 - 8) + 8))(v50 + v47, v54);
    result = sub_22C4BF5D8(v45);
    v34 = v88;
  }

  else
  {
    v56 = v89;
    v57 = v77;
    sub_22C4D6AF4(v89, v77, type metadata accessor for FullPlannerGMSClientConfiguration);
    v58 = v76;
    sub_22C4D6AF4(v41 + v31, v76, type metadata accessor for FullPlannerPreferences);
    v59 = sub_22C3A5908(&qword_27D9BD640, &qword_22C918560);
    v60 = v87;
    v87[3] = v59;
    v60[4] = sub_22C3D32C8(qword_281434E40, &qword_27D9BD640, &qword_22C918560, &unk_22C911600);
    v61 = sub_22C36D548(v60);
    v62 = v86;
    sub_22C4D0D68(v57, v58, &qword_27D9BD640, &qword_22C918560, v61);
    v52 = v62;
    result = sub_22C4D6B50(v56, type metadata accessor for FullPlannerGMSClientConfiguration);
    v34 = v88;
    if (!v62)
    {
      return result;
    }

    result = sub_22C4BF5D8(v60);
  }

LABEL_24:
  *v34 = v52;
  return result;
}

uint64_t sub_22C4D2C9C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v214 = a2;
  v196 = type metadata accessor for RenderableToolDefinitionPromptRenderer_v5_0(0);
  MEMORY[0x28223BE20](v196);
  v195 = (&v180 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_22C908AEC();
  v5 = *(v4 - 8);
  v217 = v4;
  v218 = v5;
  MEMORY[0x28223BE20](v4);
  v215 = &v180 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v216 = type metadata accessor for ToolDefinitionRenderer_v6_0(0);
  MEMORY[0x28223BE20](v216);
  v221 = &v180 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v189 = type metadata accessor for AssistantToolSchemaDefinitionRenderer_v6_0(0);
  MEMORY[0x28223BE20](v189);
  v220 = &v180 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v213 = type metadata accessor for AssistantSchemaIdentifierRenderer_v5_0(0);
  MEMORY[0x28223BE20](v213);
  v211 = (&v180 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v212 = type metadata accessor for ToolDescriptionProvider_v1_0(0);
  MEMORY[0x28223BE20](v212);
  v219 = &v180 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v224 = type metadata accessor for ParameterDefinitionRenderer_v6_0(0);
  MEMORY[0x28223BE20](v224);
  v223 = (&v180 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v198 = type metadata accessor for TypeInstanceRenderer_v1_0(0);
  MEMORY[0x28223BE20](v198);
  v206 = &v180 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v202 = type metadata accessor for DynamicEnumerationRenderer_v3_0(0);
  MEMORY[0x28223BE20](v202);
  v201 = (&v180 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v197 = type metadata accessor for DynamicEnumerationCaseRenderer_v3_0(0);
  MEMORY[0x28223BE20](v197);
  v208 = &v180 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v186 = (type metadata accessor for EntityIdentifierValuePromptRenderer_v2_0(0) - 8);
  v15 = MEMORY[0x28223BE20](v186);
  v194 = &v180 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v205 = (&v180 - v17);
  v183 = type metadata accessor for EntityValuePromptRenderer_v2_0(0) - 8;
  v18 = MEMORY[0x28223BE20](v183);
  v193 = &v180 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v207 = (&v180 - v20);
  v181 = type metadata accessor for FullPlannerPreferences(0) - 8;
  v21 = MEMORY[0x28223BE20](v181);
  v182 = &v180 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v200 = &v180 - v23;
  v210 = type metadata accessor for PrimitiveValueRenderer_v2_0(0);
  MEMORY[0x28223BE20](v210);
  v209 = (&v180 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v204 = type metadata accessor for TypeIdentifierRenderer_v2_0(0) - 8;
  MEMORY[0x28223BE20](v204);
  v26 = (&v180 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v199 = type metadata accessor for EnumerationDefinitionPromptRenderer_v3_0(0);
  MEMORY[0x28223BE20](v199);
  v28 = (&v180 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = type metadata accessor for EnumerationCaseDefinitionRenderer_v3_0(0);
  v30 = MEMORY[0x28223BE20](v29);
  v32 = &v180 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v254 = &unk_283FB9D88;
  v255 = &off_283FB9E30;
  v253[0] = 1;
  sub_22C4D1D30(v30);
  v33 = _s17FoxtrotComponentsVMa(0);
  v34 = *(v33 + 44);
  v35 = v33;
  v36 = *(v29 + 20);
  v192 = v32;
  v226 = type metadata accessor for FullPlannerPreferences;
  v227 = v34;
  sub_22C4D6AF4(a1 + v34, &v32[v36], type metadata accessor for FullPlannerPreferences);
  v28[3] = v29;
  v28[4] = &off_283FB9A58;
  v37 = sub_22C36D548(v28);
  sub_22C4D6AF4(v32, v37, type metadata accessor for EnumerationCaseDefinitionRenderer_v3_0);
  v38 = *(v35 + 24);
  v184 = v35;
  v39 = v28;
  v28[8] = type metadata accessor for Hack_EnumerationDefinition_TypeReferenceRenderer_v5_0(0);
  v28[9] = &off_283FBAC08;
  sub_22C36D548(v28 + 5);

  sub_22C90718C();

  v40 = sub_22C4D1B50();
  sub_22C4D1D30(v40);
  v41 = v199;

  sub_22C90718C();

  v42 = *(v35 + 20);
  v43 = *(v41 + 8);
  v44 = sub_22C90077C();
  (*(*(v44 - 8) + 16))(v39 + v43, a1 + v42, v44);
  sub_22C4D6AF4(a1 + v227, v39 + *(v41 + 9), type metadata accessor for FullPlannerPreferences);
  v26[3] = v41;
  v26[4] = &off_283FB9A40;
  v45 = sub_22C36D548(v26);
  v190 = v39;
  sub_22C4D6AF4(v39, v45, type metadata accessor for EnumerationDefinitionPromptRenderer_v3_0);
  v26[8] = &type metadata for PrimitiveTypeIdentifierRenderer_v1_0;
  v26[9] = &off_283FB8FE0;
  v46 = swift_allocObject();
  v26[5] = v46;
  sub_22C4BECC0(v253, v46 + 16);
  v26[13] = &type metadata for UTTypeRenderer_v1_0;
  v26[14] = &off_283FB8FD0;
  sub_22C4D1B50();
  v26[23] = &unk_283FB9D10;
  v26[24] = &off_283FB9E20;
  v222 = v38;

  v191 = v26;
  sub_22C90718C();

  v225 = a1;
  v47 = type metadata accessor for TypeIdentifierRenderer_v5_0(0);
  v48 = v214;
  v214[32] = v47;
  v48[33] = &off_283FBABE8;
  v49 = sub_22C36D548(v48 + 29);

  sub_22C90718C();

  sub_22C4D6AF4(v26, v49 + v47[5], type metadata accessor for TypeIdentifierRenderer_v2_0);
  v50 = (v49 + v47[6]);
  v50[3] = v199;
  v50[4] = &off_283FB9A40;
  v51 = sub_22C36D548(v50);
  sub_22C4D6AF4(v39, v51, type metadata accessor for EnumerationDefinitionPromptRenderer_v3_0);
  v52 = (v49 + v47[7]);
  v52[3] = &type metadata for PrimitiveTypeIdentifierRenderer_v1_0;
  v52[4] = &off_283FB8FE0;
  v53 = swift_allocObject();
  *v52 = v53;
  sub_22C4BECC0(v253, v53 + 16);
  v54 = v47;
  v55 = v49 + v47[8];
  *(v55 + 3) = &type metadata for UTTypeRenderer_v1_0;
  *(v55 + 4) = &off_283FB8FD0;
  sub_22C4D1B50();
  v56 = v49 + v47[10];
  *(v56 + 3) = &unk_283FB9D10;
  *(v56 + 4) = &off_283FB9E20;
  v252[3] = v47;
  v252[4] = &off_283FBABD0;
  v57 = sub_22C36D548(v252);
  sub_22C4D6AF4(v49, v57, type metadata accessor for TypeIdentifierRenderer_v5_0);
  v252[8] = &unk_283FB9CF0;
  v252[9] = &off_283FB9E10;
  v251[3] = v47;
  v251[4] = &off_283FBABE8;
  v58 = sub_22C36D548(v251);
  v59 = v49;
  sub_22C4D6AF4(v49, v58, type metadata accessor for TypeIdentifierRenderer_v5_0);
  v251[8] = &type metadata for CLPlacemarkPromptRenderer_v1_0;
  v251[9] = &off_283FB8FC0;
  v251[13] = &type metadata for INPersonRenderer_v1_0;
  v251[14] = &off_283FB8FB0;
  v60 = v209;
  v209[3] = v47;
  v60[4] = &off_283FBABE8;
  v204 = v47;
  v61 = sub_22C36D548(v60);
  v203 = v59;
  sub_22C4D6AF4(v59, v61, type metadata accessor for TypeIdentifierRenderer_v5_0);
  v60[8] = &type metadata for CLPlacemarkPromptRenderer_v1_0;
  v60[9] = &off_283FB8FC0;
  v60[13] = &type metadata for INPersonRenderer_v1_0;
  v60[14] = &off_283FB8FB0;
  sub_22C4BEF30(v251, (v60 + 15));
  v62 = v210;
  v64 = v226;
  v63 = v227;
  v65 = v225;
  sub_22C4D6AF4(v225 + v227, v60 + *(v210 + 32), v226);
  v249[3] = v54;
  v249[4] = &off_283FBABE8;
  v66 = sub_22C36D548(v249);
  sub_22C4D6AF4(v59, v66, type metadata accessor for TypeIdentifierRenderer_v5_0);
  v250[3] = v62;
  v250[4] = &off_283FB9748;
  v67 = sub_22C36D548(v250);
  v188 = type metadata accessor for PrimitiveValueRenderer_v2_0;
  sub_22C4D6AF4(v60, v67, type metadata accessor for PrimitiveValueRenderer_v2_0);
  v68 = v63;
  v69 = v200;
  sub_22C4D6AF4(v65 + v63, v200, v64);
  sub_22C3A5908(&qword_27D9BC1D0, &qword_22C912390);
  sub_22C901EDC();
  v185 = type metadata accessor for FullPlannerPreferences;
  sub_22C4D6B50(v69, type metadata accessor for FullPlannerPreferences);
  v70 = v242[0];
  v71 = v65 + v68;
  v72 = v182;
  sub_22C4D6AF4(v71, v182, v64);
  sub_22C901EDC();
  sub_22C4D6B50(v72, type metadata accessor for FullPlannerPreferences);
  v73 = v242[0];
  v247 = &type metadata for StrippedTypedValueRenderer_v2_0;
  v248 = &off_283FB9738;
  v246 = swift_allocObject();
  sub_22C4C32E8(v249, v246 + 16);
  v242[1] = 0;
  v242[0] = 0;
  v242[2] = v70;
  v243 = 0;
  v244 = v73;
  v245 = 0;
  v74 = v207;
  v75 = v204;
  v207[3] = v204;
  v74[4] = &off_283FBABD0;
  v76 = v74;
  v77 = sub_22C36D548(v74);
  v78 = v203;
  v187 = type metadata accessor for TypeIdentifierRenderer_v5_0;
  sub_22C4D6AF4(v203, v77, type metadata accessor for TypeIdentifierRenderer_v5_0);
  v76[8] = &type metadata for StrippedEntityValuePromptRenderer_v2_0;
  v76[9] = &off_283FB9728;
  v79 = swift_allocObject();
  v76[5] = v79;
  sub_22C4C3344(v242, v79 + 16);
  v80 = v225;

  sub_22C90718C();

  v81 = v205;
  v205[3] = v75;
  v81[4] = &off_283FBABD0;
  v82 = v81;
  v83 = sub_22C36D548(v81);
  sub_22C4D6AF4(v78, v83, type metadata accessor for TypeIdentifierRenderer_v5_0);
  v82[8] = &type metadata for StrippedEntityIdentifierValuePromptRenderer_v2_0;
  v82[9] = &off_283FB9718;
  v84 = v80;

  sub_22C90718C();

  v86 = v208;
  v87 = v84;
  sub_22C4D1DD4(v85);
  v88 = v197;
  v89 = v227;
  sub_22C4D6AF4(v87 + v227, v86 + *(v197 + 20), v226);
  v90 = v201;
  v201[3] = v88;
  v90[4] = &off_283FB9A30;
  v91 = v90;
  v92 = sub_22C36D548(v90);
  sub_22C4D6AF4(v86, v92, type metadata accessor for DynamicEnumerationCaseRenderer_v3_0);
  v91[8] = &type metadata for StaticTypeInstanceRenderer_v5_0;
  v91[9] = &off_283FBABB0;
  v93 = swift_allocObject();
  v91[5] = v93;
  sub_22C4D0A18(v252, v93 + 16);
  v94 = v202;
  v95 = (v91 + *(v202 + 24));
  v95[3] = v88;
  v95[4] = &off_283FB9A30;
  v96 = sub_22C36D548(v95);
  sub_22C4D6AF4(v86, v96, type metadata accessor for DynamicEnumerationCaseRenderer_v3_0);
  v95[8] = &type metadata for StaticTypeInstanceRenderer_v5_0;
  v95[9] = &off_283FBABB0;
  v97 = swift_allocObject();
  v95[5] = v97;
  sub_22C4D0A18(v252, v97 + 16);
  v98 = type metadata accessor for DynamicEnumerationRenderer_v1_0(0);
  v99 = v225;
  v100 = v226;
  v101 = sub_22C4D6AF4(v225 + v89, v95 + *(v98 + 24), v226);
  v102 = v99;
  sub_22C4D1DD4(v101);
  sub_22C4D6AF4(v99 + v89, v91 + *(v94 + 32), v100);

  v103 = v206;
  sub_22C90718C();

  v104 = v198;
  v105 = (v103 + *(v198 + 20));
  v105[3] = &type metadata for StaticTypeInstanceRenderer_v5_0;
  v105[4] = &off_283FBABB0;
  v106 = swift_allocObject();
  *v105 = v106;
  sub_22C4D0A18(v252, v106 + 16);
  v107 = (v103 + *(v104 + 24));
  v107[3] = v94;
  v107[4] = &off_283FB9A18;
  v108 = sub_22C36D548(v107);
  v186 = type metadata accessor for DynamicEnumerationRenderer_v3_0;
  sub_22C4D6AF4(v91, v108, type metadata accessor for DynamicEnumerationRenderer_v3_0);
  v109 = v223;
  v223[3] = v104;
  v109[4] = &off_283FB8F90;
  v110 = v109;
  v111 = sub_22C36D548(v109);
  sub_22C4D6AF4(v103, v111, type metadata accessor for TypeInstanceRenderer_v1_0);
  v110[8] = &unk_283FB9CD0;
  v110[9] = &off_283FB9E00;

  sub_22C90718C();

  v112 = v102;
  v113 = v219;
  sub_22C379DF8(v102 + *(v184 + 7), v219, &qword_27D9BB730, &unk_22C90FE30);
  sub_22C4D1B50();
  v114 = v211;
  v211[3] = &type metadata for ToolNameRenderer_v5_0;
  v114[4] = &off_283FBAD00;
  v115 = swift_allocObject();
  *v114 = v115;
  sub_22C4D0A74(v241, v115 + 16);
  v114[8] = &unk_283FB9CB0;
  v114[9] = &off_283FB9DF0;
  v116 = v212;
  v114[13] = v212;
  v114[14] = &off_283FB8F70;
  v117 = sub_22C36D548(v114 + 10);
  v184 = type metadata accessor for ToolDescriptionProvider_v1_0;
  sub_22C4D6AF4(v113, v117, type metadata accessor for ToolDescriptionProvider_v1_0);
  v118 = v213;

  sub_22C90718C();

  sub_22C4D6AF4(v112 + v227, v114 + *(v118 + 32), v226);
  v119 = v189;
  v120 = (v220 + *(v189 + 40));
  v120[3] = v116;
  v120[4] = &off_283FB8F70;
  v121 = sub_22C36D548(v120);
  sub_22C4D6AF4(v113, v121, type metadata accessor for ToolDescriptionProvider_v1_0);
  v122 = v112;
  v123 = type metadata accessor for AssistantToolSchemaDefinitionRenderer_v5_0(0);
  v183 = v123[5];

  sub_22C90718C();

  v124 = (v120 + v123[6]);
  v124[3] = v224;
  v124[4] = &off_283FBAEA0;
  v125 = sub_22C36D548(v124);
  v199 = type metadata accessor for ParameterDefinitionRenderer_v6_0;
  sub_22C4D6AF4(v223, v125, type metadata accessor for ParameterDefinitionRenderer_v6_0);
  v126 = (v120 + v123[7]);
  v126[3] = &type metadata for ToolNameRenderer_v5_0;
  v126[4] = &off_283FBAD00;
  v127 = swift_allocObject();
  *v126 = v127;
  sub_22C4D0A74(v241, v127 + 16);
  v128 = v120 + v123[8];
  *(v128 + 24) = &unk_283FB9C88;
  *(v128 + 32) = &off_283FB9DE0;
  *v128 = 1;
  v129 = v119;
  v130 = v119[9];
  v131 = v226;
  v132 = v122 + v227;
  v133 = v220;
  v134 = v130;
  sub_22C4D6AF4(v132, v220 + v130, v226);
  sub_22C378A4C(v120, v133);
  v135 = v129[5];
  v197 = *(v218 + 16);
  v198 = v218 + 16;
  (v197)(v133 + v135, v120 + v183, v217);
  sub_22C378A4C(v124, v133 + v129[6]);
  sub_22C378A4C(v126, v133 + v129[7]);
  sub_22C379DF8(v128, v133 + v129[8], &qword_27D9BD658, &qword_22C9186E0);
  sub_22C4D6AF4(v133 + v134, v120 + v123[9], v131);
  v228[3] = v224;
  v228[4] = &off_283FBAEA0;
  v136 = sub_22C36D548(v228);
  sub_22C4D6AF4(v223, v136, v199);
  v236 = &type metadata for ToolNameRenderer_v5_0;
  v237 = &off_283FBAD00;
  v235[0] = swift_allocObject();
  sub_22C4D0A74(v241, v235[0] + 16);
  v231 = &unk_283FB9C88;
  v232 = &off_283FB9DE0;
  LOBYTE(v230[0]) = 1;
  v229[3] = v212;
  v229[4] = &off_283FB8F70;
  v137 = sub_22C36D548(v229);
  sub_22C4D6AF4(v219, v137, v184);
  v239 = v129;
  v240 = &off_283FBAE80;
  v138 = sub_22C36D548(v238);
  sub_22C4D6AF4(v133, v138, type metadata accessor for AssistantToolSchemaDefinitionRenderer_v6_0);
  v139 = v225;

  v140 = v215;
  sub_22C90718C();

  v141 = v200;
  sub_22C4D6AF4(v139 + v227, v200, v131);
  v142 = v221;
  sub_22C378A4C(v228, v221);
  sub_22C378A4C(v235, v142 + 40);
  sub_22C379DF8(v230, v142 + 80, &qword_27D9BD658, &qword_22C9186E0);
  sub_22C378A4C(v229, v142 + 120);
  sub_22C378A4C(v238, v142 + 160);
  v143 = v216;
  v144 = v217;
  (v197)(v142 + *(v216 + 36), v140, v217);
  sub_22C4D6AF4(v141, v142 + *(v143 + 40), v131);
  v145 = (v142 + *(v143 + 44));
  v146 = type metadata accessor for ToolDefinitionRenderer_v5_0(0);
  v145[3] = v146;
  v145[4] = &off_283FBAB80;
  v147 = sub_22C36D548(v145);
  v148 = (v147 + *(v146 + 40));
  v149 = type metadata accessor for ToolDefinitionRenderer_v1_0(0);
  v148[3] = v149;
  v148[4] = &off_283FB8F40;
  v150 = sub_22C36D548(v148);
  sub_22C378A4C(v228, v150);
  sub_22C378A4C(v235, (v150 + 5));
  sub_22C379DF8(v230, (v150 + 10), &qword_27D9BD658, &qword_22C9186E0);
  sub_22C378A4C(v229, (v150 + 15));
  sub_22C378A4C(v238, (v147 + 20));
  v151 = v215;
  (v197)(v147 + *(v146 + 36), v215, v144);
  sub_22C4D6AF4(v141, v150 + *(v149 + 32), v226);
  sub_22C378A4C(v150, v147);
  sub_22C378A4C((v150 + 5), (v147 + 5));
  sub_22C379DF8((v150 + 10), (v147 + 10), &qword_27D9BD658, &qword_22C9186E0);
  sub_22C378A4C((v150 + 15), (v147 + 15));
  sub_22C4D6B50(v141, v185);
  (*(v218 + 8))(v151, v144);
  sub_22C36FF94(v238);
  sub_22C36FF94(v229);
  sub_22C36DD28(v230, &qword_27D9BD658, &qword_22C9186E0);
  sub_22C36FF94(v235);
  sub_22C36FF94(v228);
  v152 = v216;
  v236 = v216;
  v237 = &off_283FBAE50;
  v153 = sub_22C36D548(v235);
  v154 = v221;
  sub_22C4D6AF4(v221, v153, type metadata accessor for ToolDefinitionRenderer_v6_0);
  sub_22C4D1B50();
  v239 = &type metadata for ToolNameRenderer_v5_0;
  v240 = &off_283FBAD00;
  v238[0] = swift_allocObject();
  sub_22C4D0A74(v241, v238[0] + 16);
  v234[3] = &type metadata for ToolNameRenderer_v5_0;
  v234[4] = &off_283FBAD00;
  v234[0] = swift_allocObject();
  sub_22C4D0A74(v241, v234[0] + 16);
  v155 = v195;
  v195[3] = v152;
  v155[4] = &off_283FBAE50;
  v156 = sub_22C36D548(v155);
  sub_22C4D6AF4(v154, v156, type metadata accessor for ToolDefinitionRenderer_v6_0);
  v155[8] = v213;
  v155[9] = &off_283FBAB60;
  v157 = sub_22C36D548(v155 + 5);
  v158 = v211;
  sub_22C4D6AF4(v211, v157, type metadata accessor for AssistantSchemaIdentifierRenderer_v5_0);
  v155[13] = &type metadata for EntitySetterRenderer_v1_0;
  v155[14] = &off_283FB8F18;
  v159 = swift_allocObject();
  v155[10] = v159;
  sub_22C4BEE78(v235, v159 + 16);
  v155[18] = &type metadata for UIControlRenderer_v2_0;
  v155[19] = &off_283FB9700;
  v160 = swift_allocObject();
  v155[15] = v160;
  sub_22C4BEED4(v238, v160 + 16);
  v155[23] = &type metadata for SystemToolProtocolRenderer_v6_0;
  v155[24] = &off_283FBAE30;
  v161 = swift_allocObject();
  v155[20] = v161;
  sub_22C4D62B0(v234, v161 + 16);
  v162 = v196;

  sub_22C90718C();

  v231 = v204;
  v232 = &off_283FBABE8;
  v163 = sub_22C36D548(v230);
  sub_22C4D6AF4(v203, v163, v187);
  v233[3] = v210;
  v233[4] = &off_283FB9748;
  v164 = sub_22C36D548(v233);
  v165 = v209;
  sub_22C4D6AF4(v209, v164, v188);
  sub_22C4BEF8C(v230, v228);
  v166 = v207;
  v167 = v193;
  sub_22C4D6AF4(v207, v193, type metadata accessor for EntityValuePromptRenderer_v2_0);
  v168 = v205;
  v169 = v194;
  sub_22C4D6AF4(v205, v194, type metadata accessor for EntityIdentifierValuePromptRenderer_v2_0);
  v227 = sub_22C4D6614(v228, v167, v169);
  type metadata accessor for StrippedDirectionalTypedValuePromptRenderer_v5_0();
  v170 = swift_allocObject();
  sub_22C4C32E8(v249, v229);
  sub_22C4C3344(v242, v228);
  v226 = sub_22C4D69B4(v229, v228, v170);
  v171 = v214;
  sub_22C4D1B50();
  v171[8] = v162;
  v171[9] = &off_283FBAB38;
  v172 = sub_22C36D548(v171 + 5);
  sub_22C4D6AF4(v155, v172, type metadata accessor for RenderableToolDefinitionPromptRenderer_v5_0);
  v171[13] = v224;
  v171[14] = &off_283FBAEA0;
  v173 = sub_22C36D548(v171 + 10);
  v174 = v223;
  sub_22C4D6AF4(v223, v173, v199);
  v171[18] = &type metadata for ToolNameRenderer_v5_0;
  v171[19] = &off_283FBAD00;
  v175 = swift_allocObject();
  v171[15] = v175;
  sub_22C4D0A74(v241, v175 + 16);
  v171[27] = v202;
  v171[28] = &off_283FB9A18;
  v176 = sub_22C36D548(v171 + 24);
  v177 = v201;
  sub_22C4D6AF4(v201, v176, v186);
  sub_22C4D0B10(v241);
  sub_22C4D6B50(v219, type metadata accessor for ToolDescriptionProvider_v1_0);
  sub_22C4D6B50(v208, type metadata accessor for DynamicEnumerationCaseRenderer_v3_0);
  sub_22C4D6B50(v192, type metadata accessor for EnumerationCaseDefinitionRenderer_v3_0);
  sub_22C4BF0A0(v230);
  sub_22C4D6B50(v155, type metadata accessor for RenderableToolDefinitionPromptRenderer_v5_0);
  sub_22C4D6AA0(v234);
  sub_22C4BF19C(v238);
  sub_22C4BF1F0(v235);
  sub_22C4D6B50(v220, type metadata accessor for AssistantToolSchemaDefinitionRenderer_v6_0);
  sub_22C4D6B50(v158, type metadata accessor for AssistantSchemaIdentifierRenderer_v5_0);
  sub_22C4D6B50(v174, type metadata accessor for ParameterDefinitionRenderer_v6_0);
  sub_22C4D6B50(v206, type metadata accessor for TypeInstanceRenderer_v1_0);
  sub_22C4D6B50(v177, type metadata accessor for DynamicEnumerationRenderer_v3_0);
  sub_22C4D6B50(v168, type metadata accessor for EntityIdentifierValuePromptRenderer_v2_0);
  sub_22C4D6B50(v166, type metadata accessor for EntityValuePromptRenderer_v2_0);
  sub_22C4C34E0(v242);
  sub_22C4C3534(v249);
  sub_22C4D6B50(v165, type metadata accessor for PrimitiveValueRenderer_v2_0);
  sub_22C4BF0F4(v251);
  sub_22C4D0B64(v252);
  sub_22C4D6B50(v191, type metadata accessor for TypeIdentifierRenderer_v2_0);
  sub_22C4D6B50(v190, type metadata accessor for EnumerationDefinitionPromptRenderer_v3_0);
  sub_22C4BF394(v253);
  result = sub_22C4D6B50(v221, type metadata accessor for ToolDefinitionRenderer_v6_0);
  v179 = v226;
  v171[20] = v227;
  v171[21] = &off_283FB87B0;
  v171[22] = v179;
  v171[23] = &off_283FBAAE0;
  return result;
}

void *sub_22C4D4844()
{
  v1 = sub_22C3727F4();
  v2 = _s17FoxtrotComponentsVMa(v1);
  v8 = sub_22C37068C(v2, v3, &qword_27D9BD408, &unk_22C918350, v4, v5, v6, v7, v21[0]);
  if (v21[13])
  {
    return memcpy(v0, v21, 0x190uLL);
  }

  sub_22C36BD3C(v8, v9, v10, v11, v12, v13, v14, v15, v21[0]);
  v17 = sub_22C36BD58();
  sub_22C4D48DC(v17, v18);
  sub_22C3717CC();
  v19 = sub_22C37280C();
  return sub_22C4BF3E8(v19, v20);
}

double sub_22C4D48DC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for FullPlannerPreferences(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = _s17FoxtrotComponentsVMa(0);
  v26 = *(v7 + 24);
  v8 = type metadata accessor for SpanEventPromptGenerator_v4_0(0);
  *(a2 + 24) = v8;
  *(a2 + 32) = &off_283FBA3F0;
  v9 = sub_22C36D548(a2);

  sub_22C90718C();

  sub_22C4D20C4();
  v10 = *(v7 + 44);
  sub_22C4D6AF4(a1 + v10, v6, type metadata accessor for FullPlannerPreferences);
  sub_22C3A5908(&qword_27D9BBC18, &unk_22C912380);
  sub_22C901EDC();
  v25 = type metadata accessor for FullPlannerPreferences;
  sub_22C4D6B50(v6, type metadata accessor for FullPlannerPreferences);
  *(v9 + *(v8 + 24)) = v27[0];
  v11 = type metadata accessor for ContextEventPromptGenerator_v5_0(0);
  *(a2 + 64) = v11;
  *(a2 + 72) = &off_283FBA978;
  v12 = sub_22C36D548((a2 + 40));
  sub_22C4D20C4();
  sub_22C4D6AF4(a1 + v10, v6, type metadata accessor for FullPlannerPreferences);
  sub_22C3A5908(&qword_27D9BC1D0, &qword_22C912390);
  sub_22C901EDC();
  sub_22C4D6B50(v6, v25);
  v13 = v27[0];
  v12[37] = &type metadata for ContextReferenceReducer_v5;
  v12[38] = sub_22C4D0C0C();
  v12[34] = v13;
  sub_22C4D6AF4(a1 + v10, v12 + *(v11 + 28), type metadata accessor for FullPlannerPreferences);
  *(v12 + 312) = 1;
  *(a2 + 104) = &type metadata for RequestParser_v1_0;
  *(a2 + 112) = &off_283FB8648;
  v14 = swift_allocObject();
  *(a2 + 80) = v14;
  *(v14 + 40) = &type metadata for SystemPromptResolutionParser_v1_0;
  *(v14 + 48) = &off_283FB8638;
  *(a2 + 144) = &type metadata for PlanParser_v1_0;
  *(a2 + 152) = &off_283FB8508;
  v15 = swift_allocObject();
  *(a2 + 120) = v15;
  v15[5] = type metadata accessor for ProgramStatementParser_v1_0(0);
  v15[6] = &off_283FB84F8;
  sub_22C36D548(v15 + 2);

  sub_22C90718C();

  v16 = type metadata accessor for ExpressionParser_v1_0(0);
  v15[10] = v16;
  v15[11] = &off_283FB8460;
  v17 = sub_22C36D548(v15 + 7);

  sub_22C90718C();

  sub_22C4D20C4();
  sub_22C378A4C(&v28, v17 + v16[6]);
  sub_22C3DF2E8(v27);
  sub_22C4D1B50();
  v18 = v17 + v16[8];
  *(v18 + 3) = &type metadata for BuiltinNameRenderer_v1_0;
  *(v18 + 4) = &off_283FB8298;
  v19 = v17 + v16[9];
  *(v19 + 3) = &type metadata for RenderingArbiter_v5_0;
  *(v19 + 4) = &off_283FBA498;
  sub_22C4D1F60();
  sub_22C4D1E78();
  *v17 = 1;
  v15[15] = &type metadata for RenderingArbiter_v5_0;
  v15[16] = &off_283FBA498;
  v20 = type metadata accessor for StatementResultParser_v2_0(0);
  *(a2 + 184) = v20;
  *(a2 + 192) = &off_283FB97F8;
  v21 = sub_22C36D548((a2 + 160));

  sub_22C90718C();

  sub_22C4D20C4();
  v22 = (v21 + *(v20 + 24));
  v22[3] = type metadata accessor for StatementResultParser_v1_0(0);
  v22[4] = &off_283FB86D8;
  sub_22C36D548(v22);

  sub_22C90718C();

  sub_22C4D20C4();
  *(a2 + 224) = &type metadata for ActionResponseParser_v1_0;
  *(a2 + 232) = &off_283FB4150;
  *(a2 + 264) = &type metadata for SystemResponseParser_v1_0;
  *(a2 + 272) = &off_283FB4140;
  *(a2 + 304) = type metadata accessor for ExternalAgentOutcomeParser_v1_0(0);
  *(a2 + 312) = &off_283FB4130;
  sub_22C36D548((a2 + 280));

  sub_22C90718C();

  sub_22C4D20C4();
  result = 0.0;
  *(a2 + 368) = 0u;
  *(a2 + 384) = 0u;
  *(a2 + 336) = 0u;
  *(a2 + 352) = 0u;
  *(a2 + 320) = 0u;
  return result;
}

uint64_t sub_22C4D4E54@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v38 = a3;
  v39 = a2;
  v4 = type metadata accessor for FullPlannerPreferences(0);
  MEMORY[0x28223BE20](v4 - 8);
  v43 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22C3A5908(&qword_27D9BB738, &unk_22C9185A0);
  MEMORY[0x28223BE20](v6 - 8);
  v42 = &v37 - v7;
  v63 = sub_22C90077C();
  v48 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v41 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22C908AEC();
  v46 = *(v9 - 8);
  v47 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _s17FoxtrotComponentsVMa(0);
  v13 = v12[6];

  v45 = v11;
  sub_22C90718C();

  sub_22C4D4844();
  sub_22C4D20C4();
  v59 = type metadata accessor for ToolFetcher(0);
  v60 = &off_283FB6BE0;
  v14 = sub_22C36D548(&v58);
  sub_22C4D1C48(v14);

  sub_22C90718C();

  v15 = type metadata accessor for ToolRenderer_v6_0(0);
  v56 = v15;
  v57 = &off_283FBAF20;
  v16 = sub_22C36D548(&v55);

  sub_22C90718C();

  sub_22C4D20C4();
  v17 = (v16 + v15[6]);
  v17[3] = type metadata accessor for ToolRenderer_v1_0(0);
  v17[4] = &off_283FB9200;
  sub_22C36D548(v17);

  sub_22C90718C();

  sub_22C4D20C4();
  v18 = v16 + v15[7];
  *(v18 + 3) = &unk_283FB9BD0;
  *(v18 + 4) = &off_283FB9DA0;
  v19 = v16 + v15[8];
  *(v19 + 4) = 0;
  *v19 = 0u;
  *(v19 + 1) = 0u;
  sub_22C4D20C4();
  v40 = *(a1 + v13);
  v20 = v41;
  (*(v48 + 16))(v41, a1 + v12[5], v63);
  v21 = v12[13];
  v22 = (a1 + v12[12]);
  v24 = v22[1];
  v25 = v22[2];
  v26 = v22[3];
  v49 = *v22;
  v23 = v49;
  v50 = v24;
  v51 = v25;
  v52 = v26;
  v27 = v42;
  sub_22C379DF8(a1 + v21, v42, &qword_27D9BB738, &unk_22C9185A0);
  v28 = v12[11];
  v29 = v43;
  v37 = v28;
  sub_22C4D6AF4(a1 + v28, v43, type metadata accessor for FullPlannerPreferences);
  v30 = v40;

  sub_22C4C7C38(v23, v24, v25);
  v31 = v30;
  v32 = v44;
  sub_22C53A7F4(v53, v31, v20, &v49, v27, v29, v54);

  sub_22C4D6B50(v29, type metadata accessor for FullPlannerPreferences);
  sub_22C36DD28(v27, &qword_27D9BB738, &unk_22C9185A0);
  sub_22C4CBAA8(v49, v50, v51);
  (*(v48 + 8))(v20, v63);
  sub_22C3DF2E8(v53);
  if (v32)
  {
    sub_22C3DF2E8(v61);
    sub_22C4D0BB8(v62);
    (*(v46 + 8))(v45, v47);
    sub_22C36FF94(&v55);
    result = sub_22C36FF94(&v58);
    *v39 = v32;
  }

  else
  {
    v34 = type metadata accessor for ConversationParser_v1_0(0);
    v35 = v38;
    v38[3] = v34;
    v35[4] = &off_283FB83D0;
    v36 = sub_22C36D548(v35);
    sub_22C4D6AF4(a1 + v37, v36 + v34[12], type metadata accessor for FullPlannerPreferences);
    (*(v46 + 32))(v36, v45, v47);
    memcpy(v36 + v34[5], v62, 0x190uLL);
    memcpy(v36 + v34[6], v61, 0x110uLL);
    sub_22C36C730(&v58, v36 + v34[7]);
    sub_22C36C730(&v55, v36 + v34[8]);
    result = sub_22C36C730(v54, v36 + v34[9]);
    *(v36 + v34[10]) = 0;
    *(v36 + v34[11]) = 1;
  }

  return result;
}

uint64_t sub_22C4D5478()
{
  v2 = sub_22C3727F4();
  v3 = v1 + *(_s17FoxtrotComponentsVMa(v2) + 96);
  if (*(v3 + 24))
  {
    sub_22C378A4C(v3, &v8);
  }

  else
  {
    v4 = *(v3 + 16);
    v8 = *v3;
    v9 = v4;
    v10 = *(v3 + 32);
  }

  if (*(&v9 + 1))
  {
    return sub_22C36C730(&v8, v0);
  }

  *(v0 + 24) = &unk_283FB3E18;
  *(v0 + 32) = &off_2818B2598;
  if (*(v3 + 24))
  {
    sub_22C36FF94(v3);
  }

  v6 = sub_22C36BA00();
  return sub_22C378A4C(v6, v7);
}

void sub_22C4D5518()
{
  v2 = sub_22C3727F4();
  v3 = v1 + *(_s17FoxtrotComponentsVMa(v2) + 100);
  sub_22C36D78C();
  if (v5)
  {
    sub_22C370678();
  }

  else if (v4)
  {
    v6 = *v3;
    v7 = *v3;
    *&v20[0] = v6;
    v22 = 1;
  }

  else
  {
    sub_22C378A4C(v3, v20);
    v22 = 0;
  }

  sub_22C372800();
  if (v5)
  {
    sub_22C36BD58();
    sub_22C4D13DC(v16);
    sub_22C36D78C();
    if (!v5)
    {
      if (v17)
      {
      }

      else
      {
        sub_22C36FF94(v3);
      }
    }

    if (*(v0 + 40))
    {
      v18 = *v0;
      v19 = v18;
      *v3 = v18;
      *(v3 + 40) = 1;
    }

    else
    {
      sub_22C378A4C(v0, v3);
      *(v3 + 40) = 0;
    }
  }

  else
  {
    sub_22C36AA20(v8, v9, v10, v11, v12, v13, v14, v15, v20[0], v20[1], v21, v22);
  }
}

void sub_22C4D5600()
{
  v2 = sub_22C3727F4();
  v3 = *(_s17FoxtrotComponentsVMa(v2) + 104);
  sub_22C379DF8(v1 + v3, v15, &qword_27D9BD3E8, &unk_22C918330);
  sub_22C372800();
  if (v12)
  {
    sub_22C36DD28(v15, &qword_27D9BD3E8, &unk_22C918330);
    if (qword_2814335C0 != -1)
    {
      swift_once();
    }

    v14 = sub_22C4D630C(v13);
    *(v0 + 24) = &type metadata for FullPlannerResponseParser_v1_0;
    *(v0 + 32) = &off_283FB3970;
    *v0 = v14;
    *(v0 + 40) = 0;
    sub_22C36DD28(v1 + v3, &qword_27D9BD3E8, &unk_22C918330);
    sub_22C379DF8(v0, v1 + v3, &qword_27D9BD390, &unk_22C918660);
  }

  else
  {
    sub_22C36AA20(v4, v5, v6, v7, v8, v9, v10, v11, v15[0], v15[1], v16, v17);
  }
}

uint64_t sub_22C4D57B4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_22C3A5908(&qword_27D9BBB48, &qword_22C910F00);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v30 - v7;
  sub_22C4D20C4();
  v9 = _s17FoxtrotComponentsVMa(0);
  v10 = a1 + *(v9 + 32);
  v11 = *v10;
  if (*(v10 + 32))
  {
    v34[0] = *v10;
    v12 = v11;
    sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
    swift_willThrowTypedImpl();
    result = sub_22C3DF2E8(v35);
    *a2 = v11;
  }

  else
  {
    v14 = v9;
    v16 = *(v10 + 8);
    v15 = *(v10 + 16);
    v30 = *(v10 + 24);
    v31 = v15;
    sub_22C42B564(v11, v16);
    sub_22C4D1B50();
    v33 = *(a1 + v14[6]);
    v17 = v14[11];
    v18 = (a1 + v14[10]);
    v20 = *v18;
    v19 = v18[1];
    v36 = v20;
    v32 = v19;
    v21 = type metadata accessor for PromptMapperResolver(0);
    a3[3] = v21;
    a3[4] = &off_283FB3CE0;
    v22 = sub_22C36D548(a3);
    sub_22C4D6AF4(a1 + v17, v22 + *(v21 + 36), type metadata accessor for FullPlannerPreferences);
    sub_22C42F0B8(v35, v22);
    v22[34] = v11;
    v22[35] = v16;
    v23 = v30;
    v22[36] = v31;
    v22[37] = v23;
    sub_22C378A4C(v34, (v22 + 38));
    v24 = sub_22C90A75C();
    sub_22C36C640(v8, 1, 1, v24);
    v25 = swift_allocObject();
    v25[2] = 0;
    v25[3] = 0;
    v26 = v32;
    v25[4] = v33;

    sub_22C580C40();
    v28 = v27;
    sub_22C36FF94(v34);
    result = sub_22C3DF2E8(v35);
    v29 = v36;
    v22[43] = v28;
    v22[44] = v29;
    v22[45] = v26;
  }

  return result;
}

uint64_t sub_22C4D5ABC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  sub_22C4D5600();
  if (v13)
  {
    v6 = *&v12[0];
    *&v11[0] = *&v12[0];
    sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
    result = swift_willThrowTypedImpl();
LABEL_5:
    *a2 = v6;
    return result;
  }

  v8 = sub_22C36C730(v12, v14);
  sub_22C4D570C(v12, v8);
  if (v13)
  {
    v6 = *&v12[0];
    sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
    swift_willThrowTypedImpl();
    result = sub_22C36FF94(v14);
    goto LABEL_5;
  }

  sub_22C36C730(v12, v11);
  v9 = *(a1 + *(_s17FoxtrotComponentsVMa(0) + 24));
  a3[3] = &type metadata for PostInferenceHandler;
  a3[4] = &off_283FB3BA0;
  v10 = swift_allocObject();
  *a3 = v10;
  sub_22C36C730(v14, v10 + 16);
  sub_22C36C730(v11, v10 + 56);
  *(v10 + 96) = v9;
}

uint64_t sub_22C4D5C10()
{
  v2 = sub_22C3727F4();
  v3 = type metadata accessor for FullPlannerPreferences(v2);
  v4 = sub_22C369914(v3);
  MEMORY[0x28223BE20](v4);
  sub_22C369838();
  v7 = v6 - v5;
  v8 = *(_s17FoxtrotComponentsVMa(0) + 116);
  result = sub_22C379DF8(v1 + v8, &v14, &qword_27D9BD420, &unk_22C918740);
  if (v15[24] == 255)
  {
    sub_22C36DD28(&v14, &qword_27D9BD420, &unk_22C918740);
    sub_22C36AA4C();
    sub_22C4D6AF4(v1 + v11, v7, v12);
    *(v0 + 24) = &type metadata for RuleBasedPlanGenerator_v1_0;
    *(v0 + 32) = &off_283FB91F0;
    v13 = swift_allocObject();
    *v0 = v13;
    sub_22C50B704(v7, v13 + 16);
    *(v0 + 40) = 0;
    sub_22C36DD28(v1 + v8, &qword_27D9BD420, &unk_22C918740);
    return sub_22C379DF8(v0, v1 + v8, &qword_27D9BD3B0, &unk_22C9182F0);
  }

  else
  {
    v10 = *v15;
    *v0 = v14;
    *(v0 + 16) = v10;
    *(v0 + 25) = *&v15[9];
  }

  return result;
}

uint64_t sub_22C4D5E14@<X0>(void *a1@<X1>, uint64_t *a2@<X8>)
{
  sub_22C4D5518();
  if (v27)
  {
    v4 = v24;
    v23[0] = v24;
    sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
    result = swift_willThrowTypedImpl();
LABEL_9:
    *a1 = v4;
    return result;
  }

  sub_22C36C730(&v24, v28);
  sub_22C4D215C();
  if (v27)
  {
    v4 = v24;
    v22[0] = v24;
    sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
    swift_willThrowTypedImpl();
LABEL_7:
    v7 = v28;
LABEL_8:
    result = sub_22C36FF94(v7);
    goto LABEL_9;
  }

  v6 = sub_22C36C730(&v24, v23);
  sub_22C4D5A14(&v24, v6);
  if (v27)
  {
    v4 = v24;
    *&v21[0] = v24;
    sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
    swift_willThrowTypedImpl();
    sub_22C36FF94(v23);
    goto LABEL_7;
  }

  sub_22C36C730(&v24, v22);
  sub_22C4D5C10();
  if (v27)
  {
    v4 = v24;
    v18[0] = v24;
    sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
    swift_willThrowTypedImpl();
    sub_22C36FF94(v23);
    sub_22C36FF94(v28);
    v7 = v22;
    goto LABEL_8;
  }

  sub_22C36C730(&v24, v21);
  v8 = sub_22C3A5908(&qword_27D9BD630, &qword_22C918558);
  v9 = swift_allocObject();
  v10 = sub_22C36D1E4(v22, v22[3]);
  MEMORY[0x28223BE20](v10);
  v12 = &v18[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12);
  v25 = &type metadata for PostInferenceHandler;
  v26 = &off_283FB3BA0;
  *&v24 = swift_allocObject();
  memcpy((v24 + 16), v12, 0x58uLL);
  sub_22C4BF48C();
  sub_22C90271C();
  v14 = qword_27D9BDFC0;
  type metadata accessor for TrialManager();
  swift_allocObject();
  *(v9 + v14) = sub_22C36E65C(1);
  sub_22C378A4C(v28, v9 + 16);
  sub_22C378A4C(v23, v9 + 56);
  sub_22C378A4C(v9 + 56, v18);
  v15 = v19;
  v16 = v20;
  sub_22C374168(v18, v19);
  (*(v16 + 16))(v15, v16);
  sub_22C36FF94(v23);
  sub_22C36FF94(v28);
  sub_22C36FF94(v18);
  sub_22C36C730(&v24, v9 + 96);
  sub_22C36C730(v21, v9 + qword_27D9BDFC8);
  result = sub_22C36FF94(v22);
  a2[3] = v8;
  a2[4] = &off_283FBBC08;
  *a2 = v9;
  return result;
}

uint64_t sub_22C4D61FC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22C3B00E8;

  return sub_22C424A04();
}

void *sub_22C4D630C(uint64_t a1)
{
  v22 = sub_22C3A5908(&qword_27D9BD678, &qword_22C9186E8);
  v23 = sub_22C3D32C8(&qword_28142FA38, &qword_27D9BD678, &qword_22C9186E8, MEMORY[0x277D83480]);
  v21[0] = a1;
  sub_22C3A5908(&qword_27D9BD680, &qword_22C9186F0);
  swift_initStackObject();
  v2 = sub_22C4D1388();
  v3 = sub_22C374168(v21, v22);
  MEMORY[0x28223BE20](v3);
  v5 = v16 - v4;
  (*(v6 + 16))(v16 - v4);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = sub_22C36D548(v18);
  v8 = -1 << *(*v5 + 32);
  v9 = ~v8;
  v10 = (*v5 + 64);
  v11 = *v10;
  v12 = -v8;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  else
  {
    v13 = -1;
  }

  *v7 = *v5;
  v7[1] = v10;
  v7[2] = v9;
  v7[3] = 0;
  v7[4] = v13 & v11;
  while (1)
  {
    sub_22C36D1E4(v18, AssociatedTypeWitness);
    sub_22C90ACEC();
    if (!v17)
    {
      break;
    }

    sub_22C4D11B0(v16[1], v17);
  }

  sub_22C36FF94(v18);
  sub_22C3A5908(&qword_27D9BD688, &qword_22C9186F8);
  swift_allocObject();
  v14 = sub_22C4D0FAC(v2);
  sub_22C36FF94(v21);
  return v14;
}

uint64_t sub_22C4D656C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for DirectionalTypedValuePromptRenderer_v1_0();
  v6 = swift_allocObject();
  sub_22C4BEF8C(a1, v11);
  sub_22C4BEFE8(a2, v10);
  sub_22C4BF044(a3, v9);
  v7 = sub_22C4D6784(v11, v10, v9, v6);
  sub_22C4BF148(a3);
  sub_22C4BF2EC(a2);
  sub_22C4BF0A0(a1);
  return v7;
}

uint64_t sub_22C4D6614(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for EntityIdentifierValuePromptRenderer_v2_0(0);
  v7 = sub_22C369914(v6);
  MEMORY[0x28223BE20](v7);
  sub_22C369838();
  v10 = v9 - v8;
  v11 = type metadata accessor for EntityValuePromptRenderer_v2_0(0);
  v12 = sub_22C369914(v11);
  MEMORY[0x28223BE20](v12);
  sub_22C369838();
  v15 = v14 - v13;
  type metadata accessor for DirectionalTypedValuePromptRenderer_v1_0();
  v16 = swift_allocObject();
  sub_22C4BEF8C(a1, v19);
  sub_22C4D6AF4(a2, v15, type metadata accessor for EntityValuePromptRenderer_v2_0);
  sub_22C4D6AF4(a3, v10, type metadata accessor for EntityIdentifierValuePromptRenderer_v2_0);
  v17 = sub_22C4D689C(v19, v15, v10, v16);
  sub_22C4D6B50(a3, type metadata accessor for EntityIdentifierValuePromptRenderer_v2_0);
  sub_22C4D6B50(a2, type metadata accessor for EntityValuePromptRenderer_v2_0);
  sub_22C4BF0A0(a1);
  return v17;
}

uint64_t sub_22C4D6784(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = &type metadata for TypedValueRenderer_v1_0;
  v21 = &off_283FB8F08;
  *&v19 = swift_allocObject();
  memcpy((v19 + 16), a1, 0x50uLL);
  v17 = &type metadata for EntityValuePromptRenderer_v1_0;
  v18 = &off_283FB8DC8;
  v8 = swift_allocObject();
  *&v16 = v8;
  v9 = *(a2 + 16);
  *(v8 + 16) = *a2;
  *(v8 + 32) = v9;
  *(v8 + 48) = *(a2 + 32);
  v14 = &type metadata for EntityIdentifierValuePromptRenderer_v1_0;
  v15 = &off_283FB8DB8;
  v10 = swift_allocObject();
  *&v13 = v10;
  v11 = *(a3 + 16);
  *(v10 + 16) = *a3;
  *(v10 + 32) = v11;
  *(v10 + 48) = *(a3 + 32);
  sub_22C36C730(&v19, a4 + 16);
  sub_22C36C730(&v16, a4 + 56);
  sub_22C36C730(&v13, a4 + 96);
  return a4;
}

uint64_t sub_22C4D689C(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = &type metadata for TypedValueRenderer_v1_0;
  v19 = &off_283FB8F08;
  *&v17 = swift_allocObject();
  memcpy((v17 + 16), a1, 0x50uLL);
  v15 = type metadata accessor for EntityValuePromptRenderer_v2_0(0);
  v16 = &off_283FB96F0;
  v8 = sub_22C36D548(&v14);
  sub_22C4D6BA8(a2, v8, type metadata accessor for EntityValuePromptRenderer_v2_0);
  v12 = type metadata accessor for EntityIdentifierValuePromptRenderer_v2_0(0);
  v13 = &off_283FB96E0;
  v9 = sub_22C36D548(&v11);
  sub_22C4D6BA8(a3, v9, type metadata accessor for EntityIdentifierValuePromptRenderer_v2_0);
  sub_22C36C730(&v17, a4 + 16);
  sub_22C36C730(&v14, a4 + 56);
  sub_22C36C730(&v11, a4 + 96);
  return a4;
}

uint64_t sub_22C4D69B4(const void *a1, const void *a2, uint64_t a3)
{
  v14 = &type metadata for StrippedTypedValueRenderer_v2_0;
  v15 = &off_283FB9738;
  *&v13 = swift_allocObject();
  memcpy((v13 + 16), a1, 0x50uLL);
  v11 = &type metadata for StrippedEntityValuePromptRenderer_v2_0;
  v12 = &off_283FB9728;
  *&v10 = swift_allocObject();
  memcpy((v10 + 16), a2, 0x58uLL);
  v8 = &type metadata for StrippedEntityIdentifierValuePromptRenderer_v2_0;
  v9 = &off_283FB9718;
  sub_22C36C730(&v13, a3 + 16);
  sub_22C36C730(&v10, a3 + 56);
  sub_22C36C730(&v7, a3 + 96);
  return a3;
}

uint64_t sub_22C4D6AF4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_22C36985C();
  v4 = sub_22C36BA00();
  v5(v4);
  return a2;
}

uint64_t sub_22C4D6B50(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_22C36985C();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_22C4D6BA8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_22C36985C();
  v4 = sub_22C36BA00();
  v5(v4);
  return a2;
}

uint64_t FullPlannerPreferences.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_22C4BF48C();
  sub_22C90271C();
  v3 = type metadata accessor for FullPlannerPreferences(0);
  LOBYTE(v163[0]) = 0;
  v4 = MEMORY[0x277D839B0];
  sub_22C38712C(0, 0, sub_22C4D9758, v5, v163, sub_22C4DDC50);
  v163[0] = 0xD000000000000036;
  v163[1] = 0x800000022C930F40;
  v6 = MEMORY[0x277D837D0];
  sub_22C377CF4(0xD000000000000015, v7, sub_22C4D993C, v8, v9, sub_22C4DDC50, v10, v11, MEMORY[0x277D837D0], v2, v137, v150);
  sub_22C4DDC80();
  sub_22C377CF4(0xD000000000000014, v12, sub_22C4D994C, v13, v14, sub_22C4DDC50, v15, v16, v6, v2, v138, v151);
  sub_22C4DDC80();
  sub_22C377CF4(0xD000000000000030, v17, sub_22C4D995C, v18, v19, sub_22C4DDC50, v20, v21, v6, v2, v139, 0xD000000000000030);
  sub_22C4DDC80();
  sub_22C377CF4(0xD000000000000019, v22, sub_22C4D996C, v23, v24, sub_22C4DDC50, v25, v26, v6, v2, v140, v152);
  sub_22C4DDC80();
  sub_22C377CF4(0xD000000000000020, v27, sub_22C4D997C, v28, v29, sub_22C4DDC50, v30, v31, v6, v2, 0xD000000000000020, v153);
  sub_22C37A034();
  sub_22C377CF4(0xD000000000000029, v32, sub_22C4DA2E4, v33, v34, sub_22C4DDC50, v35, v36, v4, v2, v141, v154);
  sub_22C37A034();
  sub_22C377CF4(0xD000000000000025, v37, sub_22C4DA2F4, v38, v39, sub_22C4DDC50, v40, v41, v4, v2, v142, v155);
  sub_22C4DDC80();
  sub_22C377CF4(0xD000000000000022, v42, sub_22C4D998C, v43, v44, sub_22C4DDC50, v45, v46, v6, v2, v143, v156);
  sub_22C37A034();
  sub_22C36BD8C();
  sub_22C38712C(0xD00000000000001ELL, v47, v48, v49, v50, v51);
  v163[0] = -1;
  v52 = MEMORY[0x277D83B88];
  sub_22C377CF4(0xD000000000000018, v53, sub_22C4DAB1C, v54, v55, sub_22C4DDC50, v56, v57, MEMORY[0x277D83B88], v2, v144, v157);
  v163[0] = -1;
  sub_22C377CF4(0xD00000000000001FLL, v58, sub_22C4DAB30, v59, v60, sub_22C4DDC50, v61, v62, v52, v2, v145, v158);
  sub_22C37A034();
  sub_22C36BD8C();
  sub_22C38712C(v159, v63, v64, v65, v66, v67);
  sub_22C3855D8();
  sub_22C36BD8C();
  sub_22C38712C(v146, v68, v69, v70, v71, v72);
  sub_22C4DDC80();
  sub_22C36BD8C();
  sub_22C38712C(0xD000000000000019, v73, v74, v75, v76, v77);
  v163[0] = 0xBFF0000000000000;
  sub_22C377CF4(0xD00000000000002ELL, v78, sub_22C4DB5B4, v79, v80, sub_22C4DDC50, v81, v82, MEMORY[0x277D839F8], v2, v146, v159);
  sub_22C3855D8();
  sub_22C36BD8C();
  sub_22C38712C(0xD00000000000001ELL, v83, v84, v85, v86, v87);
  sub_22C3855D8();
  sub_22C36BD8C();
  sub_22C38712C(0xD00000000000001ELL, v88, v89, v90, v91, v92);
  v163[0] = -1;
  sub_22C38712C(0xD000000000000033, 0x800000022C931220, sub_22C4DDC48, v93, v163, sub_22C4DDC50);
  v163[0] = -1;
  sub_22C38712C(0xD000000000000033, 0x800000022C931220, sub_22C4DDC48, v94, v163, sub_22C4DDC50);
  v163[0] = -1;
  sub_22C377CF4(0xD00000000000002BLL, v95, sub_22C4DAB80, v96, v97, sub_22C4DDC50, v98, v99, v52, v2, v147, v160);
  sub_22C37A034();
  v100 = MEMORY[0x277D839B0];
  sub_22C36BD8C();
  sub_22C38712C(v101, v102, sub_22C4DD364, v103, v104, v105);
  sub_22C37A034();
  sub_22C36BD8C();
  sub_22C38712C(0xD000000000000018, v106, sub_22C4DD364, v107, v108, v109);
  LOBYTE(v163[0]) = 1;
  sub_22C36BD8C();
  sub_22C38712C(v110, v111, sub_22C4DD364, v112, v113, v114);
  LOBYTE(v163[0]) = 1;
  sub_22C36BD8C();
  sub_22C38712C(0xD000000000000018, v115, sub_22C4DD364, v116, v117, v118);
  LOBYTE(v163[0]) = 1;
  sub_22C4DDC58(0xD00000000000003ALL, v119, v120, v121, v122, sub_22C4DDC50, v123, v124, v100, v2, v148, v161);
  sub_22C37A034();
  sub_22C4DDC58(0xD00000000000003BLL, v125, v126, v127, v128, sub_22C4DDC50, v129, v130, v100, v2, v149, v162);
  sub_22C37A034();
  sub_22C36BD8C();
  result = sub_22C38712C(v131, v132, sub_22C4DD364, v133, v134, v135);
  *(a1 + *(v3 + 132)) = 0;
  return result;
}

uint64_t type metadata accessor for FullPlannerPreferences(uint64_t a1)
{
  result = qword_2814354F8;
  if (!qword_2814354F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t FullPlannerPreferences.fullPlannerPrompt.getter()
{
  type metadata accessor for FullPlannerPreferences(0);
  sub_22C3A5908(&qword_27D9BB8A8, &unk_22C918750);
  sub_22C37B27C();
  return v1;
}

uint64_t FullPlannerPreferences.fullPlannerModelBundleIdentifier.getter()
{
  type metadata accessor for FullPlannerPreferences(0);
  sub_22C3A5908(&qword_27D9BB8A8, &unk_22C918750);
  sub_22C37B27C();
  return v1;
}

uint64_t FullPlannerPreferences.fullPlannerGMSTemplateKey.getter()
{
  type metadata accessor for FullPlannerPreferences(0);
  sub_22C3A5908(&qword_27D9BB8A8, &unk_22C918750);
  sub_22C37B27C();
  return v1;
}

uint64_t FullPlannerPreferences.fullPlannerSkipInference.getter()
{
  type metadata accessor for FullPlannerPreferences(0);
  sub_22C3A5908(&qword_27D9BBC18, &unk_22C912380);
  sub_22C376688();
  return v1;
}

uint64_t FullPlannerPreferencesDomain.GMSTemplateKeys.init(rawValue:)@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_22C90B21C();

  *a3 = v4 != 0;
  return result;
}

uint64_t FullPlannerPreferences.fullPlannerMaxPromptTokenCount.getter()
{
  type metadata accessor for FullPlannerPreferences(0);
  sub_22C3A5908(&qword_27D9BC1D0, &qword_22C912390);
  sub_22C3798B4();
  return v1;
}

uint64_t FullPlannerPreferences.fullPlannerServerBasePath.getter()
{
  type metadata accessor for FullPlannerPreferences(0);
  sub_22C3A5908(&qword_27D9BB8A8, &unk_22C918750);
  sub_22C37B27C();
  return v1;
}

uint64_t FullPlannerPreferences.fullPlannerModelInterface.getter()
{
  type metadata accessor for FullPlannerPreferences(0);
  sub_22C3A5908(&qword_27D9BB8A8, &unk_22C918750);
  sub_22C37B27C();
  return v1;
}

uint64_t FullPlannerPreferences.fullPlannerUseLLMDraftCache.getter()
{
  type metadata accessor for FullPlannerPreferences(0);
  sub_22C3A5908(&qword_27D9BBC18, &unk_22C912380);
  sub_22C376688();
  return v1;
}

uint64_t FullPlannerPreferences.fullPlannerModelName.getter()
{
  type metadata accessor for FullPlannerPreferences(0);
  sub_22C3A5908(&qword_27D9BB8A8, &unk_22C918750);
  sub_22C37B27C();
  return v1;
}

uint64_t FullPlannerPreferences.fullPlannerEnforcePlannerStringsAreQuotes.getter()
{
  type metadata accessor for FullPlannerPreferences(0);
  sub_22C3A5908(&qword_27D9BBC18, &unk_22C912380);
  sub_22C376688();
  return v1;
}

uint64_t FullPlannerPreferences.fullPlannerEntityDisplayRepresentationTruncationCharacterLength.getter()
{
  type metadata accessor for FullPlannerPreferences(0);
  sub_22C3A5908(&qword_27D9BC1D0, &qword_22C912390);
  sub_22C3798B4();
  return v1;
}

uint64_t FullPlannerPreferences.fullPlannerHideUnseenSpanTypes.getter()
{
  type metadata accessor for FullPlannerPreferences(0);
  sub_22C3A5908(&qword_27D9BBC18, &unk_22C912380);
  sub_22C376688();
  return v1;
}

uint64_t FullPlannerPreferences.fullPlannerEnforceConstrainedDecoding.getter()
{
  type metadata accessor for FullPlannerPreferences(0);
  sub_22C3A5908(&qword_27D9BBC18, &unk_22C912380);
  sub_22C376688();
  return v1;
}

uint64_t FullPlannerPreferences.fullPlannerMaxEntityCountPerType.getter()
{
  type metadata accessor for FullPlannerPreferences(0);
  sub_22C3A5908(&qword_27D9BC1D0, &qword_22C912390);
  sub_22C3798B4();
  return v1;
}

uint64_t sub_22C4D794C()
{
  sub_22C4DDC04();
  result = sub_22C90AB0C();
  qword_281434F70 = result;
  return result;
}

uint64_t *sub_22C4D7980()
{
  if (qword_281434F68 != -1)
  {
    sub_22C372818(&qword_281434F68);
  }

  return &qword_281434F70;
}

uint64_t static FullPlannerPreferencesDomain.userDefaultsContainer.getter()
{
  if (qword_281434F68 != -1)
  {
    sub_22C372818(&qword_281434F68);
  }

  swift_beginAccess();
  v0 = qword_281434F70;
  v1 = qword_281434F70;
  return v0;
}

void static FullPlannerPreferencesDomain.userDefaultsContainer.setter(uint64_t a1)
{
  if (qword_281434F68 != -1)
  {
    sub_22C372818(&qword_281434F68);
  }

  swift_beginAccess();
  v2 = qword_281434F70;
  qword_281434F70 = a1;
}

uint64_t (*static FullPlannerPreferencesDomain.userDefaultsContainer.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_281434F68 != -1)
  {
    sub_22C372818(&qword_281434F68);
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

id sub_22C4D7B18@<X0>(void *a1@<X8>)
{
  sub_22C4D7980();
  swift_beginAccess();
  v2 = qword_281434F70;
  *a1 = qword_281434F70;

  return v2;
}

void sub_22C4D7B78(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_22C4D7980();
  swift_beginAccess();
  v3 = qword_281434F70;
  qword_281434F70 = v1;
}

unint64_t sub_22C4D7BF4@<X0>(void *a1@<X8>)
{
  result = FullPlannerPreferencesDomain.GMSTemplateKeys.rawValue.getter();
  *a1 = 0xD000000000000039;
  a1[1] = v3;
  return result;
}

uint64_t sub_22C4D7C24(uint64_t a1)
{
  v2 = v1;
  v4 = sub_22C90046C();
  sub_22C369824();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  sub_22C369838();
  v10 = v9 - v8;
  v50 = sub_22C9063DC();
  sub_22C369824();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  sub_22C369ABC();
  MEMORY[0x28223BE20](v14);
  v16 = &v42 - v15;
  v17 = sub_22C9004AC();
  v48 = v6;
  v49 = v16;
  v18 = v17;
  v20 = v19;
  sub_22C90029C();
  swift_allocObject();
  v21 = sub_22C90028C();
  sub_22C4DDBBC(&qword_2814350B8, v22, type metadata accessor for FullPlannerPreferencesDomain.FullPlannerResourceModel, &protocol conformance descriptor for FullPlannerPreferencesDomain.FullPlannerResourceModel);
  sub_22C90027C();
  v45 = v21;
  v46 = v18;
  v47 = v20;
  v24 = v52[0];
  v25 = v49;
  sub_22C903F7C();
  v26 = v48;
  (*(v48 + 16))(v10, a1, v4);

  v27 = sub_22C9063CC();
  v28 = sub_22C90AACC();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v52[0] = v44;
    *v29 = 136316418;
    v30 = sub_22C4D8BAC(v2);
    v43 = v27;
    v32 = sub_22C36F9F4(v30, v31, v52);
    HIDWORD(v42) = v28;
    v33 = v32;

    *(v29 + 4) = v33;
    *(v29 + 12) = 2080;
    sub_22C4DDBBC(&qword_281435848, 255, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v34 = sub_22C90B47C();
    (*(v26 + 8))(v10, v4);
    sub_22C382688();
    sub_22C3798CC();
    *(v29 + 14) = v34;
    *(v29 + 22) = 2080;
    v51 = *(v24 + 16);
    v35 = sub_22C90A1AC();
    v37 = sub_22C36F9F4(v35, v36, v52);

    *(v29 + 24) = v37;
    *(v29 + 32) = 2080;
    v38 = *(v24 + 56);

    sub_22C382688();
    sub_22C3798CC();
    *(v29 + 34) = v38;
    *(v29 + 42) = 2080;
    v39 = *(v24 + 88);

    sub_22C382688();
    sub_22C3798CC();
    *(v29 + 44) = v39;
    *(v29 + 52) = 2080;
    v40 = *(v24 + 72);

    sub_22C382688();
    sub_22C3798CC();
    *(v29 + 54) = v40;
    v41 = v43;
    swift_arrayDestroy();
    sub_22C3699EC();
    sub_22C3699EC();

    sub_22C38B120(v46, v47);
  }

  else
  {

    sub_22C38B120(v46, v47);

    (*(v26 + 8))(v10, v4);
  }

  (*(v12 + 8))(v25, v50);
  return v24;
}

uint64_t static FullPlannerPreferencesDomain.FullPlannerResourceModel.loadFromOta()()
{
  v1 = v0;
  sub_22C90035C();
  sub_22C369824();
  v107 = v3;
  v108 = v2;
  MEMORY[0x28223BE20](v2);
  sub_22C369838();
  v106 = v5 - v4;
  sub_22C3A5908(&qword_27D9BB138, &qword_22C90DB70);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v6);
  v114 = &v98 - v7;
  v115 = sub_22C90046C();
  sub_22C369824();
  v105 = v8;
  MEMORY[0x28223BE20](v9);
  sub_22C369ABC();
  v102 = v10 - v11;
  sub_22C369930();
  MEMORY[0x28223BE20](v12);
  v104 = &v98 - v13;
  sub_22C369930();
  MEMORY[0x28223BE20](v14);
  v103 = &v98 - v15;
  v113 = sub_22C901DDC();
  sub_22C369824();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  sub_22C369838();
  v21 = v20 - v19;
  sub_22C90210C();
  sub_22C369824();
  v111 = v23;
  v112 = v22;
  MEMORY[0x28223BE20](v22);
  sub_22C369838();
  v26 = v25 - v24;
  v27 = sub_22C3A5908(&qword_27D9BD698, &qword_22C9187B0);
  MEMORY[0x28223BE20](v27 - 8);
  sub_22C369ABC();
  v30 = v28 - v29;
  MEMORY[0x28223BE20](v31);
  v116 = &v98 - v32;
  sub_22C9063DC();
  sub_22C369824();
  v117 = v34;
  v118 = v33;
  MEMORY[0x28223BE20](v33);
  sub_22C369ABC();
  v110 = v35 - v36;
  sub_22C369930();
  MEMORY[0x28223BE20](v37);
  v109 = &v98 - v38;
  sub_22C369930();
  MEMORY[0x28223BE20](v39);
  v41 = &v98 - v40;
  v42 = sub_22C903BEC();
  sub_22C369824();
  v44 = v43;
  MEMORY[0x28223BE20](v45);
  sub_22C369838();
  v48 = v47 - v46;
  (*(v44 + 104))(v47 - v46, *MEMORY[0x277D1F0B8], v42);
  v49 = sub_22C903BDC();
  (*(v44 + 8))(v48, v42);
  if (v49)
  {
    v101 = v1;
    sub_22C903F7C();
    v50 = sub_22C9063CC();
    v51 = sub_22C90AACC();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_22C366000, v50, v51, "SiriNL/siriNLRouterAllowRoutingToPlannerGlobal feature flag is enabled. Using user Siri locale for Full Planner.", v52, 2u);
      sub_22C3699EC();
    }

    v53 = *(v117 + 8);
    v53(v41, v118);
    v54 = [objc_opt_self() sharedPreferences];
    v55 = sub_22C4DD2F4(v54);
    if (v56)
    {
      v119 = v55;
      v120 = v56;
      sub_22C3858B4();
      v57 = sub_22C90AD9C();

      if (v57[2])
      {
        v100 = v53;
        v58 = v57[4];
        v59 = v57[5];
        v61 = v57[6];
        v60 = v57[7];
        swift_bridgeObjectRetain_n();

        v62 = MEMORY[0x2318B76D0](v58, v59, v61, v60);
        v64 = v63;
        swift_bridgeObjectRelease_n();
        v65 = v109;
        sub_22C903F7C();

        v66 = sub_22C9063CC();
        v67 = sub_22C90AACC();

        if (os_log_type_enabled(v66, v67))
        {
          v68 = swift_slowAlloc();
          v69 = swift_slowAlloc();
          v99 = v66;
          v70 = v69;
          v119 = v69;
          *v68 = 136315138;
          *(v68 + 4) = sub_22C36F9F4(v62, v64, &v119);
          v71 = v67;
          v72 = v99;
          _os_log_impl(&dword_22C366000, v99, v71, "User Siri locale for Full Planner set to %s.", v68, 0xCu);
          sub_22C36FF94(v70);
          sub_22C3699EC();
          sub_22C3699EC();

          v73 = v109;
        }

        else
        {

          v73 = v65;
        }

        v100(v73, v118);
      }

      else
      {
      }
    }

    v1 = v101;
  }

  sub_22C9020FC();
  v74 = v113;
  (*(v17 + 104))(v21, *MEMORY[0x277D1C240], v113);
  v75 = v116;
  sub_22C9020EC();

  (*(v17 + 8))(v21, v74);
  (*(v111 + 8))(v26, v112);
  sub_22C4DD3C4(v75, v30);
  v76 = sub_22C902D7C();
  if (sub_22C370B74(v30, 1, v76) == 1)
  {
    sub_22C3770B0(v30, &qword_27D9BD698, &qword_22C9187B0);
    v77 = v114;
    sub_22C36C640(v114, 1, 1, v115);
  }

  else
  {
    v77 = v114;
    sub_22C902D5C();
    (*(*(v76 - 8) + 8))(v30, v76);
    v78 = v115;
    if (sub_22C370B74(v77, 1, v115) != 1)
    {
      v88 = v105;
      v89 = v103;
      (*(v105 + 32))(v103, v77, v78);
      v119 = 0xD000000000000015;
      v120 = 0x800000022C9313D0;
      v91 = v106;
      v90 = v107;
      v92 = v108;
      (*(v107 + 104))(v106, *MEMORY[0x277CC91D8], v108);
      sub_22C3858B4();
      v93 = v102;
      sub_22C90044C();
      (*(v90 + 8))(v91, v92);
      v94 = v104;
      sub_22C9003CC();
      v95 = *(v88 + 8);
      v95(v93, v78);
      v87 = sub_22C4D7C24(v94);
      v96 = sub_22C36EBF0();
      (v95)(v96);
      v95(v89, v78);
      sub_22C3770B0(v75, &qword_27D9BD698, &qword_22C9187B0);
      return v87;
    }
  }

  sub_22C3770B0(v77, &qword_27D9BB138, &qword_22C90DB70);
  v79 = v110;
  sub_22C903F7C();
  v80 = sub_22C9063CC();
  v81 = sub_22C90AADC();
  if (os_log_type_enabled(v80, v81))
  {
    v82 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    v119 = v83;
    *v82 = 136315138;
    v84 = sub_22C4D8BAC(v1);
    v86 = sub_22C36F9F4(v84, v85, &v119);

    *(v82 + 4) = v86;
    _os_log_impl(&dword_22C366000, v80, v81, "%s MobileAssets not available", v82, 0xCu);
    sub_22C36FF94(v83);
    sub_22C3699EC();
    sub_22C3699EC();
  }

  (*(v117 + 8))(v79, v118);
  sub_22C3770B0(v75, &qword_27D9BD698, &qword_22C9187B0);
  return 0;
}

BOOL sub_22C4D8C08@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_22C3946C4(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_22C4D8C3C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22C4D8BDC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

BOOL sub_22C4D8C68@<W0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C3946C4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C4D8C94(uint64_t a1)
{
  v2 = sub_22C4DD434();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C4D8CD0(uint64_t a1)
{
  v2 = sub_22C4DD434();

  return MEMORY[0x2821FE720](a1, v2);
}

void *FullPlannerPreferencesDomain.FullPlannerResourceModel.__allocating_init(from:)(void *a1)
{
  sub_22C3A5908(&qword_27D9BD6A0, &qword_22C9187B8);
  sub_22C369824();
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v3);
  v4 = sub_22C374168(a1, a1[3]);
  v5 = sub_22C4DD434();
  sub_22C90B6BC();
  if (v1)
  {
    goto LABEL_5;
  }

  v6 = sub_22C90B31C();
  v7 = v6 - 1;
  if ((v6 - 1) >= 0xE)
  {
    v4 = sub_22C90AFBC();
    swift_allocError();
    v11 = v10;
    sub_22C3A5908(&qword_27D9BD6A8, &unk_22C9187C0);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_22C90F800;
    *(v12 + 56) = &type metadata for FullPlannerPreferencesDomain.FullPlannerResourceModel.CodingKeys;
    *(v12 + 64) = v5;
    sub_22C90AFAC();
    (*(*(v4 - 8) + 104))(v11, *MEMORY[0x277D84168], v4);
    swift_willThrow();
    v13 = sub_22C36EBF0();
    v14(v13);
LABEL_5:
    sub_22C36FF94(a1);
    return v4;
  }

  swift_allocObject();
  v4 = sub_22C4D8F6C(v7);
  v8 = sub_22C36EBF0();
  v9(v8);
  sub_22C36FF94(a1);
  return v4;
}

uint64_t sub_22C4D8F6C(char a1)
{
  *(v1 + 16) = a1;
  *(v1 + 24) = 45;
  *(v1 + 32) = 0xE100000000000000;
  switch(a1)
  {
    case 1:
      *(v1 + 40) = 0x2D72656E6E616C70;
      *(v1 + 48) = 0xEA00000000003376;
      *(v1 + 56) = 0x6F76617262;
      *(v1 + 64) = 0xE500000000000000;
      strcpy((v1 + 72), "tokenGenerator");
      *(v1 + 87) = -18;
      *(v1 + 88) = 0xD000000000000033;
      *(v1 + 96) = 0x800000022C931960;
      *(v1 + 120) = 0;
      *(v1 + 128) = 0x696C43796C6C7566;
      *(v1 + 136) = 0xEB00000000746E65;
      *(v1 + 144) = 0;
      goto LABEL_9;
    case 2:
      *(v1 + 40) = 45;
      *(v1 + 48) = 0xE100000000000000;
      *(v1 + 56) = 0x65696C72616863;
      *(v1 + 64) = 0xE700000000000000;
      strcpy((v1 + 72), "tokenGenerator");
      *(v1 + 87) = -18;
      *(v1 + 88) = 0xD000000000000030;
      *(v1 + 96) = 0x800000022C931920;
      *(v1 + 120) = 0;
      *(v1 + 128) = 0x696C43796C6C7566;
      *(v1 + 136) = 0xEB00000000746E65;
      *(v1 + 144) = 1;
LABEL_9:
      *(v1 + 152) = xmmword_22C9187A0;
      *(v1 + 168) = 0;
      *(v1 + 104) = 0xD000000000000039;
      *(v1 + 112) = 0x800000022C92E300;
      *(v1 + 176) = 15;
      *(v1 + 184) = 0;
      goto LABEL_20;
    case 3:
    case 10:
      *(v1 + 40) = 45;
      *(v1 + 48) = 0xE100000000000000;
      *(v1 + 56) = 1869112165;
      *(v1 + 64) = 0xE400000000000000;
      strcpy((v1 + 72), "tokenGenerator");
      *(v1 + 87) = -18;
      *(v1 + 88) = 0xD00000000000002CLL;
      *(v1 + 96) = 0x800000022C9317B0;
      *(v1 + 120) = 0;
      *(v1 + 128) = 0x696C43796C6C7566;
      *(v1 + 136) = 0xEB00000000746E65;
      goto LABEL_18;
    case 4:
      *(v1 + 40) = 45;
      *(v1 + 48) = 0xE100000000000000;
      *(v1 + 56) = 1869112165;
      *(v1 + 64) = 0xE400000000000000;
      strcpy((v1 + 72), "tokenGenerator");
      *(v1 + 87) = -18;
      *(v1 + 88) = 0xD000000000000033;
      *(v1 + 96) = 0x800000022C9318E0;
      *(v1 + 120) = 0;
      *(v1 + 128) = 0x696C43796C6C7566;
      *(v1 + 136) = 0xEB00000000746E65;
      *(v1 + 144) = 1;
      *(v1 + 152) = vdupq_n_s64(0x14uLL);
      *(v1 + 168) = 0;
      goto LABEL_19;
    case 5:
      *(v1 + 40) = 45;
      *(v1 + 48) = 0xE100000000000000;
      v5 = 1869112165;
      v6 = 0xE400000000000000;
      goto LABEL_13;
    case 6:
      *(v1 + 40) = 45;
      *(v1 + 48) = 0xE100000000000000;
      v5 = 0x746F7274786F66;
      v6 = 0xE700000000000000;
LABEL_13:
      *(v1 + 56) = v5;
      *(v1 + 64) = v6;
      strcpy((v1 + 72), "tokenGenerator");
      *(v1 + 87) = -18;
      v4 = "com.apple.fm.language.instruct_server_v1.planner_v7";
      goto LABEL_16;
    case 7:
      *(v1 + 40) = 45;
      *(v1 + 48) = 0xE100000000000000;
      *(v1 + 56) = 0x746F7274786F66;
      *(v1 + 64) = 0xE700000000000000;
      strcpy((v1 + 72), "tokenGenerator");
      *(v1 + 87) = -18;
      v4 = "com.apple.fm.language.instruct_server_v1.planner_v8";
      goto LABEL_16;
    case 8:
      *(v1 + 40) = 45;
      *(v1 + 48) = 0xE100000000000000;
      *(v1 + 56) = 1869112165;
      *(v1 + 64) = 0xE400000000000000;
      strcpy((v1 + 72), "tokenGenerator");
      *(v1 + 87) = -18;
      v4 = "com.apple.fm.language.instruct_server_v1.planner_v9";
LABEL_16:
      v7 = (v4 - 32) | 0x8000000000000000;
      v8 = 0xD000000000000033;
      goto LABEL_17;
    case 9:
      *(v1 + 40) = 45;
      *(v1 + 48) = 0xE100000000000000;
      *(v1 + 56) = 1869112165;
      *(v1 + 64) = 0xE400000000000000;
      strcpy((v1 + 72), "tokenGenerator");
      *(v1 + 87) = -18;
      v7 = 0x800000022C9317E0;
      v8 = 0xD000000000000034;
LABEL_17:
      *(v1 + 88) = v8;
      *(v1 + 96) = v7;
      *(v1 + 120) = 256;
      *(v1 + 128) = 0xD000000000000012;
      *(v1 + 136) = 0x800000022C92E2C0;
LABEL_18:
      *(v1 + 144) = 1;
      *(v1 + 152) = xmmword_22C918770;
      *(v1 + 168) = 1;
LABEL_19:
      *(v1 + 104) = 0xD000000000000039;
      *(v1 + 112) = 0x800000022C92E300;
      *(v1 + 176) = 15;
      *(v1 + 184) = 0x4024000000000000;
      goto LABEL_20;
    case 11:
      *(v1 + 40) = 45;
      *(v1 + 48) = 0xE100000000000000;
      *(v1 + 56) = 1718382439;
      *(v1 + 64) = 0xE400000000000000;
      strcpy((v1 + 72), "tokenGenerator");
      *(v1 + 87) = -18;
      *(v1 + 88) = 0;
      *(v1 + 96) = 0xE000000000000000;
      *(v1 + 120) = 0;
      *(v1 + 128) = 0xD000000000000012;
      *(v1 + 136) = 0x800000022C92E2C0;
      *(v1 + 144) = 1;
      *(v1 + 152) = xmmword_22C918770;
      *(v1 + 168) = 1;
      *(v1 + 104) = 0;
      *(v1 + 112) = 0xE000000000000000;
      *(v1 + 176) = 15;
      *(v1 + 184) = 0x4024000000000000;
LABEL_20:
      v2 = vdupq_n_s64(0x32uLL);
      *(v1 + 224) = 40;
      v3 = xmmword_22C918790;
      goto LABEL_21;
    case 12:
    case 13:
      *(v1 + 40) = 45;
      *(v1 + 48) = 0xE100000000000000;
      *(v1 + 56) = 0x6C65746F68;
      *(v1 + 64) = 0xE500000000000000;
      strcpy((v1 + 72), "tokenGenerator");
      *(v1 + 87) = -18;
      *(v1 + 88) = 0;
      *(v1 + 96) = 0xE000000000000000;
      *(v1 + 120) = 0;
      *(v1 + 128) = 0xD000000000000012;
      *(v1 + 136) = 0x800000022C92E2C0;
      *(v1 + 144) = 1;
      *(v1 + 152) = xmmword_22C918770;
      *(v1 + 168) = 1;
      *(v1 + 104) = 0;
      *(v1 + 112) = 0xE000000000000000;
      *(v1 + 176) = 15;
      *(v1 + 184) = 0x4024000000000000;
      v2 = vdupq_n_s64(0x32uLL);
      *(v1 + 224) = 40;
      v3 = xmmword_22C918780;
LABEL_21:
      *(v1 + 192) = v2;
      *(v1 + 208) = v3;
      break;
    default:
      *(v1 + 40) = 0;
      *(v1 + 48) = 0xE000000000000000;
      *(v1 + 56) = 0x6168706C61;
      *(v1 + 64) = 0xE500000000000000;
      strcpy((v1 + 72), "tokenGenerator");
      *(v1 + 87) = -18;
      *(v1 + 88) = 0xD000000000000030;
      *(v1 + 96) = 0x800000022C931920;
      *(v1 + 120) = 0;
      *(v1 + 128) = 0x696C43796C6C7566;
      *(v1 + 136) = 0xEB00000000746E65;
      *(v1 + 144) = 1;
      *(v1 + 152) = xmmword_22C9187A0;
      *(v1 + 168) = 0;
      *(v1 + 176) = 15;
      *(v1 + 184) = 0;
      *(v1 + 224) = 40;
      *(v1 + 192) = vdupq_n_s64(0x32uLL);
      *(v1 + 208) = xmmword_22C918790;
      *(v1 + 104) = 0xD000000000000039;
      *(v1 + 112) = 0x800000022C92E300;
      break;
  }

  return v1;
}

uint64_t FullPlannerPreferencesDomain.FullPlannerResourceModel.deinit()
{

  return v0;
}

uint64_t FullPlannerPreferencesDomain.FullPlannerResourceModel.__deallocating_deinit()
{
  FullPlannerPreferencesDomain.FullPlannerResourceModel.deinit();

  return swift_deallocClassInstance();
}

void *sub_22C4D96AC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = FullPlannerPreferencesDomain.FullPlannerResourceModel.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_22C4D96D8@<X0>(uint64_t *a1@<X8>)
{
  result = static FullPlannerPreferencesDomain.FullPlannerResourceModel.loadFromOta()();
  *a1 = result;
  return result;
}

uint64_t FullPlannerPreferences.isOTAAssetPresent.getter()
{
  type metadata accessor for FullPlannerPreferences(0);
  sub_22C3A5908(&qword_27D9BBC18, &unk_22C912380);
  sub_22C376688();
  return v1;
}

uint64_t FullPlannerPreferences.$isOTAAssetPresent.getter()
{
  sub_22C37740C();
  v0 = sub_22C3A5908(&qword_27D9BBC18, &unk_22C912380);
  return sub_22C382FF4(v0);
}

uint64_t FullPlannerPreferences.$isOTAAssetPresent.setter()
{
  sub_22C3A5908(&qword_27D9BBC18, &unk_22C912380);
  sub_22C369958();
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v0);
  v2 = sub_22C36AA64(v1, v7);
  v3(v2);
  type metadata accessor for FullPlannerPreferences(0);
  sub_22C374BAC();
  v4 = sub_22C371810();
  return v5(v4);
}

uint64_t FullPlannerPreferences.$isOTAAssetPresent.modify()
{
  v1 = sub_22C36D7D4();
  v2 = sub_22C4DD390(v1);
  sub_22C38B9BC(v2);
  v3 = sub_22C3A5908(&qword_27D9BBC18, &unk_22C912380);
  sub_22C373438(v3);
  *(v0 + 16) = v4;
  v6 = sub_22C4DD390(*(v5 + 64));
  v7 = sub_22C37F174(v6);
  v8 = sub_22C4DD390(v7);
  v9 = sub_22C37FD80(v8);
  v10 = sub_22C4DD390(v9);
  v11 = sub_22C374BC8(v10);
  sub_22C36BD9C(*(v11 + 20));
  return sub_22C36D7C8();
}

uint64_t sub_22C4D993C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(*a1 + 24);
  v2 = *(*a1 + 32);
  *a2 = v3;
  a2[1] = v2;
}

uint64_t sub_22C4D994C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(*a1 + 40);
  v2 = *(*a1 + 48);
  *a2 = v3;
  a2[1] = v2;
}

uint64_t sub_22C4D995C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(*a1 + 56);
  v2 = *(*a1 + 64);
  *a2 = v3;
  a2[1] = v2;
}

uint64_t sub_22C4D996C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(*a1 + 72);
  v2 = *(*a1 + 80);
  *a2 = v3;
  a2[1] = v2;
}

uint64_t sub_22C4D997C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(*a1 + 88);
  v2 = *(*a1 + 96);
  *a2 = v3;
  a2[1] = v2;
}

uint64_t sub_22C4D998C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(*a1 + 128);
  v2 = *(*a1 + 136);
  *a2 = v3;
  a2[1] = v2;
}

uint64_t sub_22C4D999C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(*a1 + 104);
  v2 = *(*a1 + 112);
  *a2 = v3;
  a2[1] = v2;
}

uint64_t FullPlannerPreferences.$fullPlannerServerBasePath.getter()
{
  sub_22C37740C();
  v0 = sub_22C3A5908(&qword_27D9BB8A8, &unk_22C918750);
  return sub_22C382FF4(v0);
}

uint64_t FullPlannerPreferences.$fullPlannerServerBasePath.setter()
{
  sub_22C3A5908(&qword_27D9BB8A8, &unk_22C918750);
  sub_22C369958();
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v0);
  v2 = sub_22C36AA64(v1, v7);
  v3(v2);
  type metadata accessor for FullPlannerPreferences(0);
  sub_22C374BAC();
  v4 = sub_22C371810();
  return v5(v4);
}

uint64_t FullPlannerPreferences.$fullPlannerServerBasePath.modify()
{
  v1 = sub_22C36D7D4();
  v2 = sub_22C4DD390(v1);
  sub_22C38B9BC(v2);
  v3 = sub_22C3A5908(&qword_27D9BB8A8, &unk_22C918750);
  sub_22C373438(v3);
  *(v0 + 16) = v4;
  v6 = sub_22C4DD390(*(v5 + 64));
  v7 = sub_22C37F174(v6);
  v8 = sub_22C4DD390(v7);
  v9 = sub_22C37FD80(v8);
  v10 = sub_22C4DD390(v9);
  v11 = sub_22C374BC8(v10);
  sub_22C36BD9C(*(v11 + 24));
  return sub_22C36D7C8();
}

uint64_t FullPlannerPreferences.$fullPlannerModelName.getter()
{
  sub_22C37740C();
  v0 = sub_22C3A5908(&qword_27D9BB8A8, &unk_22C918750);
  return sub_22C382FF4(v0);
}

uint64_t FullPlannerPreferences.$fullPlannerModelName.setter()
{
  sub_22C3A5908(&qword_27D9BB8A8, &unk_22C918750);
  sub_22C369958();
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v0);
  v2 = sub_22C36AA64(v1, v7);
  v3(v2);
  type metadata accessor for FullPlannerPreferences(0);
  sub_22C374BAC();
  v4 = sub_22C371810();
  return v5(v4);
}

uint64_t FullPlannerPreferences.$fullPlannerModelName.modify()
{
  v1 = sub_22C36D7D4();
  v2 = sub_22C4DD390(v1);
  sub_22C38B9BC(v2);
  v3 = sub_22C3A5908(&qword_27D9BB8A8, &unk_22C918750);
  sub_22C373438(v3);
  *(v0 + 16) = v4;
  v6 = sub_22C4DD390(*(v5 + 64));
  v7 = sub_22C37F174(v6);
  v8 = sub_22C4DD390(v7);
  v9 = sub_22C37FD80(v8);
  v10 = sub_22C4DD390(v9);
  v11 = sub_22C374BC8(v10);
  sub_22C36BD9C(*(v11 + 28));
  return sub_22C36D7C8();
}

uint64_t FullPlannerPreferences.$fullPlannerPrompt.getter()
{
  sub_22C37740C();
  v0 = sub_22C3A5908(&qword_27D9BB8A8, &unk_22C918750);
  return sub_22C382FF4(v0);
}

uint64_t FullPlannerPreferences.$fullPlannerPrompt.setter()
{
  sub_22C3A5908(&qword_27D9BB8A8, &unk_22C918750);
  sub_22C369958();
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v0);
  v2 = sub_22C36AA64(v1, v7);
  v3(v2);
  type metadata accessor for FullPlannerPreferences(0);
  sub_22C374BAC();
  v4 = sub_22C371810();
  return v5(v4);
}

uint64_t FullPlannerPreferences.$fullPlannerPrompt.modify()
{
  v1 = sub_22C36D7D4();
  v2 = sub_22C4DD390(v1);
  sub_22C38B9BC(v2);
  v3 = sub_22C3A5908(&qword_27D9BB8A8, &unk_22C918750);
  sub_22C373438(v3);
  *(v0 + 16) = v4;
  v6 = sub_22C4DD390(*(v5 + 64));
  v7 = sub_22C37F174(v6);
  v8 = sub_22C4DD390(v7);
  v9 = sub_22C37FD80(v8);
  v10 = sub_22C4DD390(v9);
  v11 = sub_22C374BC8(v10);
  sub_22C36BD9C(*(v11 + 32));
  return sub_22C36D7C8();
}

uint64_t FullPlannerPreferences.$fullPlannerModelInterface.getter()
{
  sub_22C37740C();
  v0 = sub_22C3A5908(&qword_27D9BB8A8, &unk_22C918750);
  return sub_22C382FF4(v0);
}

uint64_t FullPlannerPreferences.$fullPlannerModelInterface.setter()
{
  sub_22C3A5908(&qword_27D9BB8A8, &unk_22C918750);
  sub_22C369958();
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v0);
  v2 = sub_22C36AA64(v1, v7);
  v3(v2);
  type metadata accessor for FullPlannerPreferences(0);
  sub_22C374BAC();
  v4 = sub_22C371810();
  return v5(v4);
}

uint64_t FullPlannerPreferences.$fullPlannerModelInterface.modify()
{
  v1 = sub_22C36D7D4();
  v2 = sub_22C4DD390(v1);
  sub_22C38B9BC(v2);
  v3 = sub_22C3A5908(&qword_27D9BB8A8, &unk_22C918750);
  sub_22C373438(v3);
  *(v0 + 16) = v4;
  v6 = sub_22C4DD390(*(v5 + 64));
  v7 = sub_22C37F174(v6);
  v8 = sub_22C4DD390(v7);
  v9 = sub_22C37FD80(v8);
  v10 = sub_22C4DD390(v9);
  v11 = sub_22C374BC8(v10);
  sub_22C36BD9C(*(v11 + 36));
  return sub_22C36D7C8();
}

uint64_t FullPlannerPreferences.$fullPlannerModelBundleIdentifier.getter()
{
  sub_22C37740C();
  v0 = sub_22C3A5908(&qword_27D9BB8A8, &unk_22C918750);
  return sub_22C382FF4(v0);
}

uint64_t FullPlannerPreferences.$fullPlannerModelBundleIdentifier.setter()
{
  sub_22C3A5908(&qword_27D9BB8A8, &unk_22C918750);
  sub_22C369958();
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v0);
  v2 = sub_22C36AA64(v1, v7);
  v3(v2);
  type metadata accessor for FullPlannerPreferences(0);
  sub_22C374BAC();
  v4 = sub_22C371810();
  return v5(v4);
}

uint64_t FullPlannerPreferences.$fullPlannerModelBundleIdentifier.modify()
{
  v1 = sub_22C36D7D4();
  v2 = sub_22C4DD390(v1);
  sub_22C38B9BC(v2);
  v3 = sub_22C3A5908(&qword_27D9BB8A8, &unk_22C918750);
  sub_22C373438(v3);
  *(v0 + 16) = v4;
  v6 = sub_22C4DD390(*(v5 + 64));
  v7 = sub_22C37F174(v6);
  v8 = sub_22C4DD390(v7);
  v9 = sub_22C37FD80(v8);
  v10 = sub_22C4DD390(v9);
  v11 = sub_22C374BC8(v10);
  sub_22C36BD9C(*(v11 + 40));
  return sub_22C36D7C8();
}

uint64_t FullPlannerPreferences.$fullPlannerEnforcePlannerStringsAreQuotes.getter()
{
  sub_22C37740C();
  v0 = sub_22C3A5908(&qword_27D9BBC18, &unk_22C912380);
  return sub_22C382FF4(v0);
}

uint64_t FullPlannerPreferences.$fullPlannerEnforcePlannerStringsAreQuotes.setter()
{
  sub_22C3A5908(&qword_27D9BBC18, &unk_22C912380);
  sub_22C369958();
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v0);
  v2 = sub_22C36AA64(v1, v7);
  v3(v2);
  type metadata accessor for FullPlannerPreferences(0);
  sub_22C374BAC();
  v4 = sub_22C371810();
  return v5(v4);
}

uint64_t FullPlannerPreferences.$fullPlannerEnforcePlannerStringsAreQuotes.modify()
{
  v1 = sub_22C36D7D4();
  v2 = sub_22C4DD390(v1);
  sub_22C38B9BC(v2);
  v3 = sub_22C3A5908(&qword_27D9BBC18, &unk_22C912380);
  sub_22C373438(v3);
  *(v0 + 16) = v4;
  v6 = sub_22C4DD390(*(v5 + 64));
  v7 = sub_22C37F174(v6);
  v8 = sub_22C4DD390(v7);
  v9 = sub_22C37FD80(v8);
  v10 = sub_22C4DD390(v9);
  v11 = sub_22C374BC8(v10);
  sub_22C36BD9C(*(v11 + 44));
  return sub_22C36D7C8();
}

uint64_t FullPlannerPreferences.$fullPlannerEnforceConstrainedDecoding.getter()
{
  sub_22C37740C();
  v0 = sub_22C3A5908(&qword_27D9BBC18, &unk_22C912380);
  return sub_22C382FF4(v0);
}

uint64_t FullPlannerPreferences.$fullPlannerEnforceConstrainedDecoding.setter()
{
  sub_22C3A5908(&qword_27D9BBC18, &unk_22C912380);
  sub_22C369958();
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v0);
  v2 = sub_22C36AA64(v1, v7);
  v3(v2);
  type metadata accessor for FullPlannerPreferences(0);
  sub_22C374BAC();
  v4 = sub_22C371810();
  return v5(v4);
}

uint64_t FullPlannerPreferences.$fullPlannerEnforceConstrainedDecoding.modify()
{
  v1 = sub_22C36D7D4();
  v2 = sub_22C4DD390(v1);
  sub_22C38B9BC(v2);
  v3 = sub_22C3A5908(&qword_27D9BBC18, &unk_22C912380);
  sub_22C373438(v3);
  *(v0 + 16) = v4;
  v6 = sub_22C4DD390(*(v5 + 64));
  v7 = sub_22C37F174(v6);
  v8 = sub_22C4DD390(v7);
  v9 = sub_22C37FD80(v8);
  v10 = sub_22C4DD390(v9);
  v11 = sub_22C374BC8(v10);
  sub_22C36BD9C(*(v11 + 48));
  return sub_22C36D7C8();
}

uint64_t FullPlannerPreferences.fullPlannerConstrainedDecodingMode.getter()
{
  type metadata accessor for FullPlannerPreferences(0);
  sub_22C3A5908(&qword_27D9BB8A8, &unk_22C918750);
  sub_22C37B27C();
  return v1;
}

uint64_t FullPlannerPreferences.$fullPlannerConstrainedDecodingMode.getter()
{
  sub_22C37740C();
  v0 = sub_22C3A5908(&qword_27D9BB8A8, &unk_22C918750);
  return sub_22C382FF4(v0);
}

uint64_t FullPlannerPreferences.$fullPlannerConstrainedDecodingMode.setter()
{
  sub_22C3A5908(&qword_27D9BB8A8, &unk_22C918750);
  sub_22C369958();
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v0);
  v2 = sub_22C36AA64(v1, v7);
  v3(v2);
  type metadata accessor for FullPlannerPreferences(0);
  sub_22C374BAC();
  v4 = sub_22C371810();
  return v5(v4);
}

uint64_t FullPlannerPreferences.$fullPlannerConstrainedDecodingMode.modify()
{
  v1 = sub_22C36D7D4();
  v2 = sub_22C4DD390(v1);
  sub_22C38B9BC(v2);
  v3 = sub_22C3A5908(&qword_27D9BB8A8, &unk_22C918750);
  sub_22C373438(v3);
  *(v0 + 16) = v4;
  v6 = sub_22C4DD390(*(v5 + 64));
  v7 = sub_22C37F174(v6);
  v8 = sub_22C4DD390(v7);
  v9 = sub_22C37FD80(v8);
  v10 = sub_22C4DD390(v9);
  v11 = sub_22C374BC8(v10);
  sub_22C36BD9C(*(v11 + 52));
  return sub_22C36D7C8();
}

uint64_t FullPlannerPreferences.$fullPlannerHideUnseenSpanTypes.getter()
{
  sub_22C37740C();
  v0 = sub_22C3A5908(&qword_27D9BBC18, &unk_22C912380);
  return sub_22C382FF4(v0);
}

uint64_t FullPlannerPreferences.$fullPlannerHideUnseenSpanTypes.setter()
{
  sub_22C3A5908(&qword_27D9BBC18, &unk_22C912380);
  sub_22C369958();
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v0);
  v2 = sub_22C36AA64(v1, v7);
  v3(v2);
  type metadata accessor for FullPlannerPreferences(0);
  sub_22C374BAC();
  v4 = sub_22C371810();
  return v5(v4);
}

uint64_t FullPlannerPreferences.$fullPlannerHideUnseenSpanTypes.modify()
{
  v1 = sub_22C36D7D4();
  v2 = sub_22C4DD390(v1);
  sub_22C38B9BC(v2);
  v3 = sub_22C3A5908(&qword_27D9BBC18, &unk_22C912380);
  sub_22C373438(v3);
  *(v0 + 16) = v4;
  v6 = sub_22C4DD390(*(v5 + 64));
  v7 = sub_22C37F174(v6);
  v8 = sub_22C4DD390(v7);
  v9 = sub_22C37FD80(v8);
  v10 = sub_22C4DD390(v9);
  v11 = sub_22C374BC8(v10);
  sub_22C36BD9C(*(v11 + 56));
  return sub_22C36D7C8();
}

uint64_t FullPlannerPreferences.fullPlannerEnumCaseLimit.getter()
{
  type metadata accessor for FullPlannerPreferences(0);
  sub_22C3A5908(&qword_27D9BC1D0, &qword_22C912390);
  sub_22C3798B4();
  return v1;
}

uint64_t sub_22C4DAB1C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *(*result + 152);
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_22C4DAB30@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *(*result + 160);
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_22C4DAB44@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *(*result + 176);
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_22C4DAB58@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *(*result + 216);
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_22C4DAB6C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *(*result + 192);
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_22C4DAB80@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *(*result + 224);
  *(a2 + 8) = 0;
  return result;
}

uint64_t FullPlannerPreferences.$fullPlannerEnumCaseLimit.getter()
{
  sub_22C37740C();
  v0 = sub_22C3A5908(&qword_27D9BC1D0, &qword_22C912390);
  return sub_22C382FF4(v0);
}

uint64_t FullPlannerPreferences.$fullPlannerEnumCaseLimit.setter()
{
  sub_22C3A5908(&qword_27D9BC1D0, &qword_22C912390);
  sub_22C369958();
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v0);
  v2 = sub_22C36AA64(v1, v7);
  v3(v2);
  type metadata accessor for FullPlannerPreferences(0);
  sub_22C374BAC();
  v4 = sub_22C371810();
  return v5(v4);
}

uint64_t FullPlannerPreferences.$fullPlannerEnumCaseLimit.modify()
{
  v1 = sub_22C36D7D4();
  v2 = sub_22C4DD390(v1);
  sub_22C38B9BC(v2);
  v3 = sub_22C3A5908(&qword_27D9BC1D0, &qword_22C912390);
  sub_22C373438(v3);
  *(v0 + 16) = v4;
  v6 = sub_22C4DD390(*(v5 + 64));
  v7 = sub_22C37F174(v6);
  v8 = sub_22C4DD390(v7);
  v9 = sub_22C37FD80(v8);
  v10 = sub_22C4DD390(v9);
  v11 = sub_22C374BC8(v10);
  sub_22C36BD9C(*(v11 + 60));
  return sub_22C36D7C8();
}

uint64_t FullPlannerPreferences.fullPlannerDynamicEnumCaseLimit.getter()
{
  type metadata accessor for FullPlannerPreferences(0);
  sub_22C3A5908(&qword_27D9BC1D0, &qword_22C912390);
  sub_22C3798B4();
  return v1;
}

uint64_t FullPlannerPreferences.$fullPlannerDynamicEnumCaseLimit.getter()
{
  sub_22C37740C();
  v0 = sub_22C3A5908(&qword_27D9BC1D0, &qword_22C912390);
  return sub_22C382FF4(v0);
}

uint64_t FullPlannerPreferences.$fullPlannerDynamicEnumCaseLimit.setter()
{
  sub_22C3A5908(&qword_27D9BC1D0, &qword_22C912390);
  sub_22C369958();
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v0);
  v2 = sub_22C36AA64(v1, v7);
  v3(v2);
  type metadata accessor for FullPlannerPreferences(0);
  sub_22C374BAC();
  v4 = sub_22C371810();
  return v5(v4);
}

uint64_t FullPlannerPreferences.$fullPlannerDynamicEnumCaseLimit.modify()
{
  v1 = sub_22C36D7D4();
  v2 = sub_22C4DD390(v1);
  sub_22C38B9BC(v2);
  v3 = sub_22C3A5908(&qword_27D9BC1D0, &qword_22C912390);
  sub_22C373438(v3);
  *(v0 + 16) = v4;
  v6 = sub_22C4DD390(*(v5 + 64));
  v7 = sub_22C37F174(v6);
  v8 = sub_22C4DD390(v7);
  v9 = sub_22C37FD80(v8);
  v10 = sub_22C4DD390(v9);
  v11 = sub_22C374BC8(v10);
  sub_22C36BD9C(*(v11 + 64));
  return sub_22C36D7C8();
}

uint64_t FullPlannerPreferences.fullPlannerEnforceConstrainedDecodingCopyStrings.getter()
{
  type metadata accessor for FullPlannerPreferences(0);
  sub_22C3A5908(&qword_27D9BBC18, &unk_22C912380);
  sub_22C376688();
  return v1;
}

uint64_t FullPlannerPreferences.$fullPlannerEnforceConstrainedDecodingCopyStrings.getter()
{
  sub_22C37740C();
  v0 = sub_22C3A5908(&qword_27D9BBC18, &unk_22C912380);
  return sub_22C382FF4(v0);
}

uint64_t FullPlannerPreferences.$fullPlannerEnforceConstrainedDecodingCopyStrings.setter()
{
  sub_22C3A5908(&qword_27D9BBC18, &unk_22C912380);
  sub_22C369958();
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v0);
  v2 = sub_22C36AA64(v1, v7);
  v3(v2);
  type metadata accessor for FullPlannerPreferences(0);
  sub_22C374BAC();
  v4 = sub_22C371810();
  return v5(v4);
}

uint64_t FullPlannerPreferences.$fullPlannerEnforceConstrainedDecodingCopyStrings.modify()
{
  v1 = sub_22C36D7D4();
  v2 = sub_22C4DD390(v1);
  sub_22C38B9BC(v2);
  v3 = sub_22C3A5908(&qword_27D9BBC18, &unk_22C912380);
  sub_22C373438(v3);
  *(v0 + 16) = v4;
  v6 = sub_22C4DD390(*(v5 + 64));
  v7 = sub_22C37F174(v6);
  v8 = sub_22C4DD390(v7);
  v9 = sub_22C37FD80(v8);
  v10 = sub_22C4DD390(v9);
  v11 = sub_22C374BC8(v10);
  sub_22C36BD9C(*(v11 + 68));
  return sub_22C36D7C8();
}

uint64_t FullPlannerPreferences.$fullPlannerMaxEntityCountPerType.getter()
{
  sub_22C37740C();
  v0 = sub_22C3A5908(&qword_27D9BC1D0, &qword_22C912390);
  return sub_22C382FF4(v0);
}

uint64_t FullPlannerPreferences.$fullPlannerMaxEntityCountPerType.setter()
{
  sub_22C3A5908(&qword_27D9BC1D0, &qword_22C912390);
  sub_22C369958();
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v0);
  v2 = sub_22C36AA64(v1, v7);
  v3(v2);
  type metadata accessor for FullPlannerPreferences(0);
  sub_22C374BAC();
  v4 = sub_22C371810();
  return v5(v4);
}

uint64_t FullPlannerPreferences.$fullPlannerMaxEntityCountPerType.modify()
{
  v1 = sub_22C36D7D4();
  v2 = sub_22C4DD390(v1);
  sub_22C38B9BC(v2);
  v3 = sub_22C3A5908(&qword_27D9BC1D0, &qword_22C912390);
  sub_22C373438(v3);
  *(v0 + 16) = v4;
  v6 = sub_22C4DD390(*(v5 + 64));
  v7 = sub_22C37F174(v6);
  v8 = sub_22C4DD390(v7);
  v9 = sub_22C37FD80(v8);
  v10 = sub_22C4DD390(v9);
  v11 = sub_22C374BC8(v10);
  sub_22C36BD9C(*(v11 + 72));
  return sub_22C36D7C8();
}

uint64_t FullPlannerPreferences.$fullPlannerGMSTemplateKey.getter()
{
  sub_22C37740C();
  v0 = sub_22C3A5908(&qword_27D9BB8A8, &unk_22C918750);
  return sub_22C382FF4(v0);
}

uint64_t FullPlannerPreferences.$fullPlannerGMSTemplateKey.setter()
{
  sub_22C3A5908(&qword_27D9BB8A8, &unk_22C918750);
  sub_22C369958();
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v0);
  v2 = sub_22C36AA64(v1, v7);
  v3(v2);
  type metadata accessor for FullPlannerPreferences(0);
  sub_22C374BAC();
  v4 = sub_22C371810();
  return v5(v4);
}

uint64_t FullPlannerPreferences.$fullPlannerGMSTemplateKey.modify()
{
  v1 = sub_22C36D7D4();
  v2 = sub_22C4DD390(v1);
  sub_22C38B9BC(v2);
  v3 = sub_22C3A5908(&qword_27D9BB8A8, &unk_22C918750);
  sub_22C373438(v3);
  *(v0 + 16) = v4;
  v6 = sub_22C4DD390(*(v5 + 64));
  v7 = sub_22C37F174(v6);
  v8 = sub_22C4DD390(v7);
  v9 = sub_22C37FD80(v8);
  v10 = sub_22C4DD390(v9);
  v11 = sub_22C374BC8(v10);
  sub_22C36BD9C(*(v11 + 76));
  return sub_22C36D7C8();
}

double FullPlannerPreferences.fullPlannerContextualEntityVisbilityPercentage.getter()
{
  type metadata accessor for FullPlannerPreferences(0);
  sub_22C3A5908(&qword_27D9BC1D8, &qword_22C912398);
  sub_22C3798B4();
  return v1;
}

uint64_t sub_22C4DB5B4@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *(*result + 184);
  *(a2 + 8) = 0;
  return result;
}

uint64_t FullPlannerPreferences.$fullPlannerContextualEntityVisbilityPercentage.getter()
{
  sub_22C37740C();
  v0 = sub_22C3A5908(&qword_27D9BC1D8, &qword_22C912398);
  return sub_22C382FF4(v0);
}

uint64_t FullPlannerPreferences.$fullPlannerContextualEntityVisbilityPercentage.setter()
{
  sub_22C3A5908(&qword_27D9BC1D8, &qword_22C912398);
  sub_22C369958();
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v0);
  v2 = sub_22C36AA64(v1, v7);
  v3(v2);
  type metadata accessor for FullPlannerPreferences(0);
  sub_22C374BAC();
  v4 = sub_22C371810();
  return v5(v4);
}

uint64_t FullPlannerPreferences.$fullPlannerContextualEntityVisbilityPercentage.modify()
{
  v1 = sub_22C36D7D4();
  v2 = sub_22C4DD390(v1);
  sub_22C38B9BC(v2);
  v3 = sub_22C3A5908(&qword_27D9BC1D8, &qword_22C912398);
  sub_22C373438(v3);
  *(v0 + 16) = v4;
  v6 = sub_22C4DD390(*(v5 + 64));
  v7 = sub_22C37F174(v6);
  v8 = sub_22C4DD390(v7);
  v9 = sub_22C37FD80(v8);
  v10 = sub_22C4DD390(v9);
  v11 = sub_22C374BC8(v10);
  sub_22C36BD9C(*(v11 + 80));
  return sub_22C36D7C8();
}

uint64_t FullPlannerPreferences.$fullPlannerMaxPromptTokenCount.getter()
{
  sub_22C37740C();
  v0 = sub_22C3A5908(&qword_27D9BC1D0, &qword_22C912390);
  return sub_22C382FF4(v0);
}

uint64_t FullPlannerPreferences.$fullPlannerMaxPromptTokenCount.setter()
{
  sub_22C3A5908(&qword_27D9BC1D0, &qword_22C912390);
  sub_22C369958();
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v0);
  v2 = sub_22C36AA64(v1, v7);
  v3(v2);
  type metadata accessor for FullPlannerPreferences(0);
  sub_22C374BAC();
  v4 = sub_22C371810();
  return v5(v4);
}

uint64_t FullPlannerPreferences.$fullPlannerMaxPromptTokenCount.modify()
{
  v1 = sub_22C36D7D4();
  v2 = sub_22C4DD390(v1);
  sub_22C38B9BC(v2);
  v3 = sub_22C3A5908(&qword_27D9BC1D0, &qword_22C912390);
  sub_22C373438(v3);
  *(v0 + 16) = v4;
  v6 = sub_22C4DD390(*(v5 + 64));
  v7 = sub_22C37F174(v6);
  v8 = sub_22C4DD390(v7);
  v9 = sub_22C37FD80(v8);
  v10 = sub_22C4DD390(v9);
  v11 = sub_22C374BC8(v10);
  sub_22C36BD9C(*(v11 + 84));
  return sub_22C36D7C8();
}

uint64_t FullPlannerPreferences.fullPlannerURLTruncationLength.getter()
{
  type metadata accessor for FullPlannerPreferences(0);
  sub_22C3A5908(&qword_27D9BC1D0, &qword_22C912390);
  sub_22C3798B4();
  return v1;
}

uint64_t FullPlannerPreferences.$fullPlannerURLTruncationLength.getter()
{
  sub_22C37740C();
  v0 = sub_22C3A5908(&qword_27D9BC1D0, &qword_22C912390);
  return sub_22C382FF4(v0);
}

uint64_t FullPlannerPreferences.$fullPlannerURLTruncationLength.setter()
{
  sub_22C3A5908(&qword_27D9BC1D0, &qword_22C912390);
  sub_22C369958();
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v0);
  v2 = sub_22C36AA64(v1, v7);
  v3(v2);
  type metadata accessor for FullPlannerPreferences(0);
  sub_22C374BAC();
  v4 = sub_22C371810();
  return v5(v4);
}

uint64_t FullPlannerPreferences.$fullPlannerURLTruncationLength.modify()
{
  v1 = sub_22C36D7D4();
  v2 = sub_22C4DD390(v1);
  sub_22C38B9BC(v2);
  v3 = sub_22C3A5908(&qword_27D9BC1D0, &qword_22C912390);
  sub_22C373438(v3);
  *(v0 + 16) = v4;
  v6 = sub_22C4DD390(*(v5 + 64));
  v7 = sub_22C37F174(v6);
  v8 = sub_22C4DD390(v7);
  v9 = sub_22C37FD80(v8);
  v10 = sub_22C4DD390(v9);
  v11 = sub_22C374BC8(v10);
  sub_22C36BD9C(*(v11 + 88));
  return sub_22C36D7C8();
}

uint64_t FullPlannerPreferences.fullPlannerEnumerationCaseTruncationCharacterLength.getter()
{
  type metadata accessor for FullPlannerPreferences(0);
  sub_22C3A5908(&qword_27D9BC1D0, &qword_22C912390);
  sub_22C3798B4();
  return v1;
}

uint64_t FullPlannerPreferences.$fullPlannerEnumerationCaseTruncationCharacterLength.getter()
{
  sub_22C37740C();
  v0 = sub_22C3A5908(&qword_27D9BC1D0, &qword_22C912390);
  return sub_22C382FF4(v0);
}

uint64_t FullPlannerPreferences.$fullPlannerEnumerationCaseTruncationCharacterLength.setter()
{
  sub_22C3A5908(&qword_27D9BC1D0, &qword_22C912390);
  sub_22C369958();
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v0);
  v2 = sub_22C36AA64(v1, v7);
  v3(v2);
  type metadata accessor for FullPlannerPreferences(0);
  sub_22C374BAC();
  v4 = sub_22C371810();
  return v5(v4);
}

uint64_t FullPlannerPreferences.$fullPlannerEnumerationCaseTruncationCharacterLength.modify()
{
  v1 = sub_22C36D7D4();
  v2 = sub_22C4DD390(v1);
  sub_22C38B9BC(v2);
  v3 = sub_22C3A5908(&qword_27D9BC1D0, &qword_22C912390);
  sub_22C373438(v3);
  *(v0 + 16) = v4;
  v6 = sub_22C4DD390(*(v5 + 64));
  v7 = sub_22C37F174(v6);
  v8 = sub_22C4DD390(v7);
  v9 = sub_22C37FD80(v8);
  v10 = sub_22C4DD390(v9);
  v11 = sub_22C374BC8(v10);
  sub_22C36BD9C(*(v11 + 92));
  return sub_22C36D7C8();
}

uint64_t FullPlannerPreferences.$fullPlannerEntityDisplayRepresentationTruncationCharacterLength.getter()
{
  sub_22C37740C();
  v0 = sub_22C3A5908(&qword_27D9BC1D0, &qword_22C912390);
  return sub_22C382FF4(v0);
}

uint64_t FullPlannerPreferences.$fullPlannerEntityDisplayRepresentationTruncationCharacterLength.setter()
{
  sub_22C3A5908(&qword_27D9BC1D0, &qword_22C912390);
  sub_22C369958();
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v0);
  v2 = sub_22C36AA64(v1, v7);
  v3(v2);
  type metadata accessor for FullPlannerPreferences(0);
  sub_22C374BAC();
  v4 = sub_22C371810();
  return v5(v4);
}

uint64_t FullPlannerPreferences.$fullPlannerEntityDisplayRepresentationTruncationCharacterLength.modify()
{
  v1 = sub_22C36D7D4();
  v2 = sub_22C4DD390(v1);
  sub_22C38B9BC(v2);
  v3 = sub_22C3A5908(&qword_27D9BC1D0, &qword_22C912390);
  sub_22C373438(v3);
  *(v0 + 16) = v4;
  v6 = sub_22C4DD390(*(v5 + 64));
  v7 = sub_22C37F174(v6);
  v8 = sub_22C4DD390(v7);
  v9 = sub_22C37FD80(v8);
  v10 = sub_22C4DD390(v9);
  v11 = sub_22C374BC8(v10);
  sub_22C36BD9C(*(v11 + 96));
  return sub_22C36D7C8();
}

uint64_t FullPlannerPreferences.fullPlannerAppNameTruncationCharacterLength.getter()
{
  type metadata accessor for FullPlannerPreferences(0);
  sub_22C3A5908(&qword_27D9BC1D0, &qword_22C912390);
  sub_22C3798B4();
  return v1;
}

uint64_t FullPlannerPreferences.$fullPlannerAppNameTruncationCharacterLength.getter()
{
  sub_22C37740C();
  v0 = sub_22C3A5908(&qword_27D9BC1D0, &qword_22C912390);
  return sub_22C382FF4(v0);
}

uint64_t FullPlannerPreferences.$fullPlannerAppNameTruncationCharacterLength.setter()
{
  sub_22C3A5908(&qword_27D9BC1D0, &qword_22C912390);
  sub_22C369958();
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v0);
  v2 = sub_22C36AA64(v1, v7);
  v3(v2);
  type metadata accessor for FullPlannerPreferences(0);
  sub_22C374BAC();
  v4 = sub_22C371810();
  return v5(v4);
}

uint64_t FullPlannerPreferences.$fullPlannerAppNameTruncationCharacterLength.modify()
{
  v1 = sub_22C36D7D4();
  v2 = sub_22C4DD390(v1);
  sub_22C38B9BC(v2);
  v3 = sub_22C3A5908(&qword_27D9BC1D0, &qword_22C912390);
  sub_22C373438(v3);
  *(v0 + 16) = v4;
  v6 = sub_22C4DD390(*(v5 + 64));
  v7 = sub_22C37F174(v6);
  v8 = sub_22C4DD390(v7);
  v9 = sub_22C37FD80(v8);
  v10 = sub_22C4DD390(v9);
  v11 = sub_22C374BC8(v10);
  sub_22C36BD9C(*(v11 + 100));
  return sub_22C36D7C8();
}

uint64_t FullPlannerPreferences.$fullPlannerUseLLMDraftCache.getter()
{
  sub_22C37740C();
  v0 = sub_22C3A5908(&qword_27D9BBC18, &unk_22C912380);
  return sub_22C382FF4(v0);
}

uint64_t FullPlannerPreferences.$fullPlannerUseLLMDraftCache.setter()
{
  sub_22C3A5908(&qword_27D9BBC18, &unk_22C912380);
  sub_22C369958();
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v0);
  v2 = sub_22C36AA64(v1, v7);
  v3(v2);
  type metadata accessor for FullPlannerPreferences(0);
  sub_22C374BAC();
  v4 = sub_22C371810();
  return v5(v4);
}

uint64_t FullPlannerPreferences.$fullPlannerUseLLMDraftCache.modify()
{
  v1 = sub_22C36D7D4();
  v2 = sub_22C4DD390(v1);
  sub_22C38B9BC(v2);
  v3 = sub_22C3A5908(&qword_27D9BBC18, &unk_22C912380);
  sub_22C373438(v3);
  *(v0 + 16) = v4;
  v6 = sub_22C4DD390(*(v5 + 64));
  v7 = sub_22C37F174(v6);
  v8 = sub_22C4DD390(v7);
  v9 = sub_22C37FD80(v8);
  v10 = sub_22C4DD390(v9);
  v11 = sub_22C374BC8(v10);
  sub_22C36BD9C(*(v11 + 104));
  return sub_22C36D7C8();
}

uint64_t FullPlannerPreferences.$fullPlannerSkipInference.getter()
{
  sub_22C37740C();
  v0 = sub_22C3A5908(&qword_27D9BBC18, &unk_22C912380);
  return sub_22C382FF4(v0);
}

uint64_t FullPlannerPreferences.$fullPlannerSkipInference.setter()
{
  sub_22C3A5908(&qword_27D9BBC18, &unk_22C912380);
  sub_22C369958();
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v0);
  v2 = sub_22C36AA64(v1, v7);
  v3(v2);
  type metadata accessor for FullPlannerPreferences(0);
  sub_22C374BAC();
  v4 = sub_22C371810();
  return v5(v4);
}

uint64_t FullPlannerPreferences.$fullPlannerSkipInference.modify()
{
  v1 = sub_22C36D7D4();
  v2 = sub_22C4DD390(v1);
  sub_22C38B9BC(v2);
  v3 = sub_22C3A5908(&qword_27D9BBC18, &unk_22C912380);
  sub_22C373438(v3);
  *(v0 + 16) = v4;
  v6 = sub_22C4DD390(*(v5 + 64));
  v7 = sub_22C37F174(v6);
  v8 = sub_22C4DD390(v7);
  v9 = sub_22C37FD80(v8);
  v10 = sub_22C4DD390(v9);
  v11 = sub_22C374BC8(v10);
  sub_22C36BD9C(*(v11 + 108));
  return sub_22C36D7C8();
}

uint64_t FullPlannerPreferences.fullPlannerOverrideToolDescriptions.getter()
{
  type metadata accessor for FullPlannerPreferences(0);
  sub_22C3A5908(&qword_27D9BBC18, &unk_22C912380);
  sub_22C376688();
  return v1;
}

uint64_t FullPlannerPreferences.$fullPlannerOverrideToolDescriptions.getter()
{
  sub_22C37740C();
  v0 = sub_22C3A5908(&qword_27D9BBC18, &unk_22C912380);
  return sub_22C382FF4(v0);
}

uint64_t FullPlannerPreferences.$fullPlannerOverrideToolDescriptions.setter()
{
  sub_22C3A5908(&qword_27D9BBC18, &unk_22C912380);
  sub_22C369958();
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v0);
  v2 = sub_22C36AA64(v1, v7);
  v3(v2);
  type metadata accessor for FullPlannerPreferences(0);
  sub_22C374BAC();
  v4 = sub_22C371810();
  return v5(v4);
}

uint64_t FullPlannerPreferences.$fullPlannerOverrideToolDescriptions.modify()
{
  v1 = sub_22C36D7D4();
  v2 = sub_22C4DD390(v1);
  sub_22C38B9BC(v2);
  v3 = sub_22C3A5908(&qword_27D9BBC18, &unk_22C912380);
  sub_22C373438(v3);
  *(v0 + 16) = v4;
  v6 = sub_22C4DD390(*(v5 + 64));
  v7 = sub_22C37F174(v6);
  v8 = sub_22C4DD390(v7);
  v9 = sub_22C37FD80(v8);
  v10 = sub_22C4DD390(v9);
  v11 = sub_22C374BC8(v10);
  sub_22C36BD9C(*(v11 + 112));
  return sub_22C36D7C8();
}

uint64_t FullPlannerPreferences.fullPlannerMinifyGrammar.getter()
{
  type metadata accessor for FullPlannerPreferences(0);
  sub_22C3A5908(&qword_27D9BBC18, &unk_22C912380);
  sub_22C376688();
  return v1;
}

uint64_t FullPlannerPreferences.$fullPlannerMinifyGrammar.getter()
{
  sub_22C37740C();
  v0 = sub_22C3A5908(&qword_27D9BBC18, &unk_22C912380);
  return sub_22C382FF4(v0);
}

uint64_t FullPlannerPreferences.$fullPlannerMinifyGrammar.setter()
{
  sub_22C3A5908(&qword_27D9BBC18, &unk_22C912380);
  sub_22C369958();
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v0);
  v2 = sub_22C36AA64(v1, v7);
  v3(v2);
  type metadata accessor for FullPlannerPreferences(0);
  sub_22C374BAC();
  v4 = sub_22C371810();
  return v5(v4);
}

uint64_t FullPlannerPreferences.$fullPlannerMinifyGrammar.modify()
{
  v1 = sub_22C36D7D4();
  v2 = sub_22C4DD390(v1);
  sub_22C38B9BC(v2);
  v3 = sub_22C3A5908(&qword_27D9BBC18, &unk_22C912380);
  sub_22C373438(v3);
  *(v0 + 16) = v4;
  v6 = sub_22C4DD390(*(v5 + 64));
  v7 = sub_22C37F174(v6);
  v8 = sub_22C4DD390(v7);
  v9 = sub_22C37FD80(v8);
  v10 = sub_22C4DD390(v9);
  v11 = sub_22C374BC8(v10);
  sub_22C36BD9C(*(v11 + 116));
  return sub_22C36D7C8();
}

uint64_t FullPlannerPreferences.fullPlannerConstrainedDecodingUseGlobalToolboxInStandalone.getter()
{
  type metadata accessor for FullPlannerPreferences(0);
  sub_22C3A5908(&qword_27D9BBC18, &unk_22C912380);
  sub_22C376688();
  return v1;
}

uint64_t FullPlannerPreferences.$fullPlannerConstrainedDecodingUseGlobalToolboxInStandalone.getter()
{
  sub_22C37740C();
  v0 = sub_22C3A5908(&qword_27D9BBC18, &unk_22C912380);
  return sub_22C382FF4(v0);
}

uint64_t FullPlannerPreferences.$fullPlannerConstrainedDecodingUseGlobalToolboxInStandalone.setter()
{
  sub_22C3A5908(&qword_27D9BBC18, &unk_22C912380);
  sub_22C369958();
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v0);
  v2 = sub_22C36AA64(v1, v7);
  v3(v2);
  type metadata accessor for FullPlannerPreferences(0);
  sub_22C374BAC();
  v4 = sub_22C371810();
  return v5(v4);
}

uint64_t FullPlannerPreferences.$fullPlannerConstrainedDecodingUseGlobalToolboxInStandalone.modify()
{
  v1 = sub_22C36D7D4();
  v2 = sub_22C4DD390(v1);
  sub_22C38B9BC(v2);
  v3 = sub_22C3A5908(&qword_27D9BBC18, &unk_22C912380);
  sub_22C373438(v3);
  *(v0 + 16) = v4;
  v6 = sub_22C4DD390(*(v5 + 64));
  v7 = sub_22C37F174(v6);
  v8 = sub_22C4DD390(v7);
  v9 = sub_22C37FD80(v8);
  v10 = sub_22C4DD390(v9);
  v11 = sub_22C374BC8(v10);
  sub_22C36BD9C(*(v11 + 120));
  return sub_22C36D7C8();
}

uint64_t FullPlannerPreferences.fullPlannerConstrainedDecodingAllowRepeatedSearchWithoutAct.getter()
{
  type metadata accessor for FullPlannerPreferences(0);
  sub_22C3A5908(&qword_27D9BBC18, &unk_22C912380);
  sub_22C376688();
  return v1;
}

uint64_t FullPlannerPreferences.$fullPlannerConstrainedDecodingAllowRepeatedSearchWithoutAct.getter()
{
  sub_22C37740C();
  v0 = sub_22C3A5908(&qword_27D9BBC18, &unk_22C912380);
  return sub_22C382FF4(v0);
}

uint64_t FullPlannerPreferences.$fullPlannerConstrainedDecodingAllowRepeatedSearchWithoutAct.setter()
{
  sub_22C3A5908(&qword_27D9BBC18, &unk_22C912380);
  sub_22C369958();
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v0);
  v2 = sub_22C36AA64(v1, v7);
  v3(v2);
  type metadata accessor for FullPlannerPreferences(0);
  sub_22C374BAC();
  v4 = sub_22C371810();
  return v5(v4);
}

uint64_t FullPlannerPreferences.$fullPlannerConstrainedDecodingAllowRepeatedSearchWithoutAct.modify()
{
  v1 = sub_22C36D7D4();
  v2 = sub_22C4DD390(v1);
  sub_22C38B9BC(v2);
  v3 = sub_22C3A5908(&qword_27D9BBC18, &unk_22C912380);
  sub_22C373438(v3);
  *(v0 + 16) = v4;
  v6 = sub_22C4DD390(*(v5 + 64));
  v7 = sub_22C37F174(v6);
  v8 = sub_22C4DD390(v7);
  v9 = sub_22C37FD80(v8);
  v10 = sub_22C4DD390(v9);
  v11 = sub_22C374BC8(v10);
  sub_22C36BD9C(*(v11 + 124));
  return sub_22C36D7C8();
}

uint64_t FullPlannerPreferences.fullPlannerShouldAlwaysSearch.getter()
{
  type metadata accessor for FullPlannerPreferences(0);
  sub_22C3A5908(&qword_27D9BBC18, &unk_22C912380);
  sub_22C376688();
  return v1;
}

void *sub_22C4DCE48@<X0>(void *a1@<X8>)
{
  sub_22C4BF48C();
  result = sub_22C90270C();
  *a1 = v3;
  return result;
}

uint64_t FullPlannerPreferences.$fullPlannerShouldAlwaysSearch.getter()
{
  sub_22C37740C();
  v0 = sub_22C3A5908(&qword_27D9BBC18, &unk_22C912380);
  return sub_22C382FF4(v0);
}

uint64_t sub_22C4DCED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  sub_22C3A5908(a5, a6);
  sub_22C369824();
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v9);
  v11 = &v14 - v10;
  (*(v12 + 16))(&v14 - v10, a1);
  return a7(v11);
}

uint64_t FullPlannerPreferences.$fullPlannerShouldAlwaysSearch.setter()
{
  sub_22C3A5908(&qword_27D9BBC18, &unk_22C912380);
  sub_22C369958();
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v0);
  v2 = sub_22C36AA64(v1, v7);
  v3(v2);
  type metadata accessor for FullPlannerPreferences(0);
  sub_22C374BAC();
  v4 = sub_22C371810();
  return v5(v4);
}

uint64_t FullPlannerPreferences.$fullPlannerShouldAlwaysSearch.modify()
{
  v1 = sub_22C36D7D4();
  v2 = sub_22C4DD390(v1);
  sub_22C38B9BC(v2);
  v3 = sub_22C3A5908(&qword_27D9BBC18, &unk_22C912380);
  sub_22C373438(v3);
  *(v0 + 16) = v4;
  v6 = sub_22C4DD390(*(v5 + 64));
  v7 = sub_22C37F174(v6);
  v8 = sub_22C4DD390(v7);
  v9 = sub_22C37FD80(v8);
  v10 = sub_22C4DD390(v9);
  v11 = sub_22C374BC8(v10);
  sub_22C36BD9C(*(v11 + 128));
  return sub_22C36D7C8();
}

void sub_22C4DD12C(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 16) + 16);
  (v4)(*(*a1 + 32), v3[5], v3[1]);
  v5 = v3[4];
  v12 = v3[5];
  v7 = v3[2];
  v6 = v3[3];
  v8 = v3[1];
  if (a2)
  {
    v9 = sub_22C36EBF0();
    v4(v9);
    sub_22C901EFC();
    v10 = *(v7 + 8);
    v10(v5, v8);
    v11 = v12;
    v10(v12, v8);
  }

  else
  {
    sub_22C901EFC();
    v11 = v12;
    (*(v7 + 8))(v12, v8);
  }

  free(v11);
  free(v5);
  free(v6);

  free(v3);
}

uint64_t FullPlannerPreferences.fullPlannerMultipleRequestCandidates.setter(char a1)
{
  result = type metadata accessor for FullPlannerPreferences(0);
  *(v1 + *(result + 132)) = a1;
  return result;
}

uint64_t sub_22C4DD2F4(void *a1)
{
  v2 = [a1 languageCode];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_22C90A11C();

  return v3;
}

uint64_t sub_22C4DD364@<X0>(_BYTE *a1@<X8>)
{
  result = sub_22C3C4E48();
  *a1 = result;
  return result;
}

void *sub_22C4DD390(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t sub_22C4DD3C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9BD698, &qword_22C9187B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_22C4DD434()
{
  result = qword_2814350D8[0];
  if (!qword_2814350D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2814350D8);
  }

  return result;
}

unint64_t sub_22C4DD48C()
{
  result = qword_27D9BD6B0;
  if (!qword_27D9BD6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BD6B0);
  }

  return result;
}

uint64_t sub_22C4DD5AC(uint64_t a1)
{
  sub_22C4DD758(319);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_22C4DD7E8(319, &qword_281435808, MEMORY[0x277D839B0]);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      sub_22C4DD7E8(319, &qword_281435810, MEMORY[0x277D837D0]);
      if (v7 > 0x3F)
      {
        return v6;
      }

      else
      {
        sub_22C4DD7E8(319, &qword_2814357F8, MEMORY[0x277D83B88]);
        if (v9 > 0x3F)
        {
          return v8;
        }

        else
        {
          sub_22C4DD7E8(319, &qword_281435800, MEMORY[0x277D839F8]);
          if (v11 > 0x3F)
          {
            return v10;
          }

          else
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v2;
}

void sub_22C4DD758(uint64_t a1)
{
  if (!qword_2814357A8)
  {
    type metadata accessor for FullPlannerPreferencesDomain.FullPlannerResourceModel();
    sub_22C4DDBBC(&qword_2814350C0, v1, type metadata accessor for FullPlannerPreferencesDomain.FullPlannerResourceModel, &protocol conformance descriptor for FullPlannerPreferencesDomain.FullPlannerResourceModel);
    v2 = sub_22C9025FC();
    if (!v3)
    {
      atomic_store(v2, &qword_2814357A8);
    }
  }
}

void sub_22C4DD7E8(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    sub_22C4BF48C();
    v4 = sub_22C901F2C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for FullPlannerPreferencesDomain.FullPlannerResourceModel.TargetModel(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF3)
  {
    if (a2 + 13 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 13) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 14;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v5 = v6 - 14;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for FullPlannerPreferencesDomain.FullPlannerResourceModel.TargetModel(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF2)
  {
    v6 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 13;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_22C4DD9B0(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_22C4DDA60()
{
  result = qword_27D9BD6B8;
  if (!qword_27D9BD6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BD6B8);
  }

  return result;
}

unint64_t sub_22C4DDAB8()
{
  result = qword_27D9BD6C0;
  if (!qword_27D9BD6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BD6C0);
  }

  return result;
}

unint64_t sub_22C4DDB10()
{
  result = qword_2814350C8;
  if (!qword_2814350C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814350C8);
  }

  return result;
}

unint64_t sub_22C4DDB68()
{
  result = qword_2814350D0;
  if (!qword_2814350D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814350D0);
  }

  return result;
}

uint64_t sub_22C4DDBBC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

unint64_t sub_22C4DDC04()
{
  result = qword_28142F9C0;
  if (!qword_28142F9C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28142F9C0);
  }

  return result;
}

uint64_t sub_22C4DDC58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{

  return sub_22C901F0C();
}

uint64_t sub_22C4DDC8C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_22C4DDCDC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_22C4DDD30(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void sub_22C4DDDB0(uint64_t a1)
{
  sub_22C430E9C(319, &qword_27D9BD5F0, &type metadata for PromptGrammar.GrammarPieceContent);
  if (v1 <= 0x3F)
  {
    sub_22C4DE008(319, &qword_27D9BD650, type metadata accessor for GrammarToolDefinitionBundle);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22C4DDEA8(uint64_t a1)
{
  sub_22C90077C();
  if (v1 <= 0x3F)
  {
    sub_22C9071BC();
    if (v2 <= 0x3F)
    {
      sub_22C4DE008(319, &qword_28142FAD0, MEMORY[0x277D1DD30]);
      if (v3 <= 0x3F)
      {
        sub_22C4DE008(319, &qword_28142FAA0, MEMORY[0x277D1E600]);
        if (v4 <= 0x3F)
        {
          sub_22C430E9C(319, &qword_28142FA20, MEMORY[0x277D837D0]);
          if (v5 <= 0x3F)
          {
            sub_22C4DE008(319, &qword_27D9BD6D8, type metadata accessor for FullPlannerVersionHandler.GrammarConfiguration);
            if (v6 <= 0x3F)
            {
              type metadata accessor for FullPlannerPreferences(319);
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

void sub_22C4DE008(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22C90AC6C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_22C4DE060@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = a1;
  v7 = type metadata accessor for FullPlannerVersionHandler.GenericInitialisationParameters(0);
  v8 = sub_22C369914(v7);
  MEMORY[0x28223BE20](v8);
  sub_22C369838();
  v11 = v10 - v9;
  v12 = type metadata accessor for FullPlannerPreferences(0);
  v13 = sub_22C369914(v12);
  MEMORY[0x28223BE20](v13);
  sub_22C369838();
  v16 = v15 - v14;
  if (v6 != 6 || (FullPlannerPreferences.init()(v15 - v14), sub_22C4DE310(), result = sub_22C3FEA64(v16), !v3))
  {
    sub_22C4DE954(a2, v11);
    switch(v6)
    {
      case 1:
        a3[3] = _s15BravoComponentsVMa(0);
        a3[4] = &off_2818B3978;
        sub_22C36D548(a3);
        v26 = sub_22C4DEA00();
        result = sub_22C4BF7BC(v26, v27);
        break;
      case 2:
        a3[3] = _s17CharlieComponentsVMa(0);
        a3[4] = &off_2818B39E8;
        sub_22C36D548(a3);
        v22 = sub_22C4DEA00();
        result = sub_22C4C3890(v22, v23);
        break;
      case 3:
        a3[3] = _s15DeltaComponentsVMa(0);
        a3[4] = sub_22C4DE9B8(&qword_27D9BD6F0, _s15DeltaComponentsVMa, &unk_22C918538);
        sub_22C36D548(a3);
        v24 = sub_22C4DEA00();
        result = sub_22C4C77A4(v24, v25);
        break;
      case 4:
        a3[3] = _s14EchoComponentsVMa(0);
        a3[4] = sub_22C4DE9B8(qword_281435400, _s14EchoComponentsVMa, &unk_22C918578);
        sub_22C36D548(a3);
        v20 = sub_22C4DEA00();
        result = sub_22C4CBD10(v20, v21);
        break;
      case 5:
        a3[3] = _s17FoxtrotComponentsVMa(0);
        a3[4] = sub_22C4DE9B8(&qword_27D9BD6E8, _s17FoxtrotComponentsVMa, &unk_22C918688);
        sub_22C36D548(a3);
        v28 = sub_22C4DEA00();
        result = sub_22C4D1570(v28, v29);
        break;
      default:
        a3[3] = _s15AlphaComponentsVMa(0);
        a3[4] = &off_2818B3830;
        sub_22C36D548(a3);
        v18 = sub_22C4DEA00();
        result = sub_22C4BB6C4(v18, v19);
        break;
    }
  }

  return result;
}

unint64_t sub_22C4DE310()
{
  v0 = sub_22C369A48();
  type metadata accessor for FullPlannerPreferences(v0);
  sub_22C3A5908(&qword_27D9BB8A8, &unk_22C918750);
  sub_22C901EDC();
  v1 = sub_22C4DE908(v4, v5);
  if (v1 == 6)
  {
    sub_22C3DD0D8();
    swift_allocError();
    *v2 = 0;
    v2[1] = 0;
    swift_willThrow();
  }

  return v1;
}

uint64_t sub_22C4DE3B8(uint64_t a1)
{
  v3 = sub_22C3A5908(&qword_27D9BB760, &unk_22C90FE70);
  v4 = sub_22C369914(v3);
  MEMORY[0x28223BE20](v4);
  v6 = &v22[-1] - v5;
  v7 = type metadata accessor for FullPlannerPreferences(0);
  v8 = sub_22C369914(v7);
  MEMORY[0x28223BE20](v8);
  sub_22C369838();
  v11 = v10 - v9;
  FullPlannerPreferences.init()(v10 - v9);
  v12 = sub_22C4DE310();
  if (v1)
  {
    return sub_22C3FEA64(v11);
  }

  if (v12 - 1 >= 3)
  {
    if (v12 - 4 >= 2)
    {
      v23 = &type metadata for ToolNameRenderer_v1_0;
      v24 = &off_283FB8840;
    }

    else
    {
      v23 = &type metadata for ToolNameRenderer_v5_0;
      v24 = &off_283FBACE8;
    }
  }

  else
  {
    v23 = &type metadata for ToolNameRenderer_v2_0;
    v24 = &off_283FB9950;
  }

  v14 = swift_allocObject();
  v22[0] = v14;
  v14[5] = type metadata accessor for AppNameRenderer_v1_0(0);
  v14[6] = &off_283FB8878;
  v15 = sub_22C36D548(v14 + 2);
  sub_22C9006AC();
  sub_22C36AA88();
  sub_22C4DE954(v11, v15 + v16);
  v17 = v23;
  v18 = v24;
  sub_22C374168(v22, v23);
  v19 = sub_22C906D3C();
  sub_22C36C640(v6, 1, 1, v19);
  type metadata accessor for RenderingState(0);
  swift_allocObject();
  v20 = sub_22C480800(v6);
  (v18[1])(a1, 0, v20, v17, v18);

  sub_22C3FEA64(v11);
  return sub_22C36FF94(v22);
}

uint64_t sub_22C4DE634(uint64_t a1)
{
  v3 = type metadata accessor for FullPlannerPreferences(0);
  v4 = sub_22C369914(v3);
  MEMORY[0x28223BE20](v4);
  sub_22C369838();
  v7 = v6 - v5;
  FullPlannerPreferences.init()(v6 - v5);
  v8 = sub_22C4DE310();
  if (v1)
  {
    return sub_22C3FEA64(v7);
  }

  if (v8 - 1 >= 3)
  {
    if (v8 - 4 >= 2)
    {
      v16 = &type metadata for ToolNameRenderer_v1_0;
      v17 = &off_283FB8840;
    }

    else
    {
      v16 = &type metadata for ToolNameRenderer_v5_0;
      v17 = &off_283FBACE8;
    }
  }

  else
  {
    v16 = &type metadata for ToolNameRenderer_v2_0;
    v17 = &off_283FB9950;
  }

  v10 = swift_allocObject();
  v15[0] = v10;
  v10[5] = type metadata accessor for AppNameRenderer_v1_0(0);
  v10[6] = &off_283FB8878;
  v11 = sub_22C36D548(v10 + 2);
  sub_22C9006AC();
  sub_22C36AA88();
  sub_22C4DE954(v7, v11 + v12);
  v13 = v16;
  v14 = v17;
  sub_22C374168(v15, v16);
  (v14[2])(a1, v13, v14);
  sub_22C3FEA64(v7);
  return sub_22C36FF94(v15);
}

uint64_t sub_22C4DE818(uint64_t a1)
{
  v2 = sub_22C4DE8B4();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_22C4DE854(uint64_t a1)
{
  v2 = sub_22C4DE8B4();

  return MEMORY[0x28211F4A8](a1, v2);
}

unint64_t sub_22C4DE8B4()
{
  result = qword_27D9BD6E0;
  if (!qword_27D9BD6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BD6E0);
  }

  return result;
}

unint64_t sub_22C4DE908(uint64_t a1, uint64_t a2)
{
  v2 = sub_22C90B21C();

  if (v2 >= 6)
  {
    return 6;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_22C4DE954(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C369A48();
  v6 = v5(v4);
  (*(*(v6 - 8) + 16))(a2, v2, v6);
  return a2;
}

uint64_t sub_22C4DE9B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22C4DEA1C()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_22C4DEA4C()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_22C4DEAB4()
{
  sub_22C369980();
  v1[33] = v2;
  v1[34] = v0;
  v1[32] = v3;
  v4 = sub_22C90880C();
  v1[35] = v4;
  sub_22C3699B8(v4);
  v1[36] = v5;
  v1[37] = sub_22C36D0D4();
  v1[38] = swift_task_alloc();
  v6 = type metadata accessor for FetchedTools(0);
  sub_22C369914(v6);
  v1[39] = sub_22C3699D4();
  v7 = sub_22C3A5908(&qword_27D9BB760, &unk_22C90FE70);
  sub_22C369914(v7);
  v1[40] = sub_22C3699D4();
  sub_22C36BB08();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_22C4DEBB8()
{
  v63 = v0;
  v1 = v0[40];
  v2 = v0[38];
  v3 = v0[34];
  v4 = sub_22C906D3C();
  sub_22C36C640(v1, 1, 1, v4);
  type metadata accessor for RenderingState(0);
  swift_allocObject();
  v5 = sub_22C480800(v1);
  v0[41] = v5;
  v6 = type metadata accessor for ConversationParser_v1_0(0);
  v0[42] = v6;
  v7 = (v3 + v6[7]);
  v8 = v7[3];
  v9 = v7[4];
  sub_22C374168(v7, v8);
  sub_22C90878C();
  (*(v9 + 8))(v2, v8, v9);
  v61 = v5;
  v10 = v0[37];
  v11 = v0[34];
  v12 = *(v0[36] + 8);
  (v12)(v0[38], v0[35]);
  v13 = (v11 + v6[8]);
  v14 = v13[3];
  v15 = v13[4];
  v60 = v13;
  sub_22C374168(v13, v14);
  sub_22C90878C();
  (*(v15 + 8))(v10, v14, v15);
  v16 = sub_22C36FC2C();
  v17 = v12(v16);
  if ((*(v11 + v6[10]) & 1) == 0)
  {
    sub_22C4E76D8(v17);
    sub_22C3A8E40();
    v18 = sub_22C36FC2C();
    v12(v18);
    sub_22C900F8C();
    v0[31] = sub_22C4AF4A0();
    sub_22C4E6ECC();
    sub_22C4E6F20();
    sub_22C36FC2C();
    sub_22C900F7C();
  }

  v19 = *(sub_22C4AF4A0() + 16);

  if (v19)
  {
    sub_22C4E76D8(v20);
    v21 = v61;
    sub_22C4DF694();
    v22 = sub_22C36FC2C();
    v12(v22);
    sub_22C374168(v60, v60[3]);
    v23 = sub_22C3806B8();
    v24(v23);

    memcpy(v0 + 12, __src, 0x48uLL);
    v33 = v0[12];
    v34 = v0[17];
    if (v34)
    {
      v36 = v0[18];
      v35 = v0[19];
      v37 = v0[16];
      sub_22C3A5908(&qword_27D9BAF50, &qword_22C90D7F8);
      v38 = swift_allocObject();
      *(v38 + 16) = xmmword_22C90F800;
      v39 = v0[14];
      sub_22C387B54();
      sub_22C456C94(v40, v41, v42);
      sub_22C387B54();
      sub_22C456C94(v43, v44, v45);

      v47 = sub_22C807C70(v46);
      *(v38 + 32) = v37;
      *(v38 + 40) = v34;
      *(v38 + 48) = v36;
      *(v38 + 56) = v35;
      *(v38 + 64) = v47;
      v21 = v61;
      sub_22C387B54();
      sub_22C456D48(v48, v49, v50);
    }

    else
    {
      v39 = v0[14];

      v38 = MEMORY[0x277D84F90];
    }

    v51 = swift_allocObject();
    *(v51 + 16) = 0;
    *(v51 + 24) = 0xE000000000000000;

    sub_22C3AD9E8();
    v53 = v52;
    v0[10] = &type metadata for AFMTokenProvider_v1_0;
    v0[11] = &off_283FB8258;
    v54 = swift_allocObject();
    *(v54 + 16) = 0;
    *(v54 + 24) = 0xE000000000000000;
    sub_22C371820();
    v57 = sub_22C375CAC(v55, v56);
    v0[2] = v51;
    v0[3] = v39;
    v0[4] = v38;
    v0[5] = v53;
    v0[6] = v21;
    v0[7] = v57;

    sub_22C45A8C4(3, v33 | 2);

    sub_22C4E6E78((v0 + 12));
  }

  else
  {

    v25 = swift_allocObject();
    *(v25 + 16) = 0;
    *(v25 + 24) = 0xE000000000000000;
    sub_22C3A5908(&qword_27D9BAF08, &qword_22C90D7B0);
    type metadata accessor for _PromptMapper._ToolPromptMap(0);
    sub_22C3D32C8(&qword_27D9BB778, &qword_27D9BAF08, &qword_22C90D7B0, &unk_22C916CA4);
    v26 = MEMORY[0x277D84F90];
    sub_22C36D29C();
    v27 = sub_22C909F0C();
    v0[10] = &type metadata for AFMTokenProvider_v1_0;
    v0[11] = &off_283FB8258;
    v28 = swift_allocObject();
    *(v28 + 16) = 0;
    *(v28 + 24) = 0xE000000000000000;
    sub_22C371820();
    v31 = sub_22C375CAC(v29, v30);
    v0[2] = v25;
    v0[3] = v27;
    v32 = MEMORY[0x277D84FA0];
    v0[4] = v26;
    v0[5] = v32;
    v0[7] = v31;
    v0[6] = v61;
  }

  v58 = swift_task_alloc();
  v0[43] = v58;
  *v58 = v0;
  v58[1] = sub_22C4DF1C0;

  return sub_22C4DFF58();
}

uint64_t sub_22C4DF1C0()
{
  sub_22C369980();
  sub_22C369A3C();
  sub_22C369A30();
  *v3 = v2;
  v4 = *v1;
  sub_22C369970();
  *v5 = v4;
  *(v6 + 352) = v0;

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22C4DF2BC()
{
  sub_22C36FB38();
  v1 = *(v0 + 336);
  v2 = *(v0 + 272);
  *(v0 + 184) = 0u;
  *(v0 + 200) = 0;
  *(v0 + 168) = 0u;
  sub_22C378A4C(v2 + *(v1 + 36), v0 + 208);
  v3 = *(v1 + 48);
  v4 = swift_task_alloc();
  *(v0 + 360) = v4;
  *v4 = v0;
  v4[1] = sub_22C4DF394;
  v5 = *(v0 + 256);

  return sub_22C459410(v5, v0 + 168, v0 + 208, v2 + v3);
}

uint64_t sub_22C4DF394()
{
  sub_22C369980();
  sub_22C369A3C();
  v3 = v2;
  sub_22C369A30();
  *v4 = v3;
  v5 = *v1;
  sub_22C369970();
  *v6 = v5;
  *(v3 + 368) = v0;

  sub_22C36DD28(v3 + 208, &qword_27D9BB758, &qword_22C90FE60);
  sub_22C36DD28(v3 + 168, &qword_27D9BC498, &unk_22C919020);
  sub_22C36BB08();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22C4DF4C0()
{
  sub_22C36FB38();
  v1 = *(v0 + 312);

  sub_22C3DBB34(v0 + 16);
  sub_22C4E6E1C(v1);

  sub_22C369A24();

  return v2();
}

uint64_t sub_22C4DF55C()
{
  sub_22C36FB38();
  v1 = *(v0 + 312);

  sub_22C3DBB34(v0 + 16);
  sub_22C4E6E1C(v1);

  sub_22C369A24();

  return v2();
}

uint64_t sub_22C4DF5F8()
{
  sub_22C36FB38();
  v1 = *(v0 + 312);

  sub_22C3DBB34(v0 + 16);
  sub_22C4E6E1C(v1);

  sub_22C369A24();

  return v2();
}

void sub_22C4DF694()
{
  sub_22C36BA7C();
  v109 = v0;
  v1 = sub_22C3A5908(&qword_27D9BD790, &unk_22C919060);
  v2 = sub_22C369914(v1);
  MEMORY[0x28223BE20](v2);
  sub_22C369ABC();
  v111 = v3 - v4;
  sub_22C369930();
  MEMORY[0x28223BE20](v5);
  v125 = &v105 - v6;
  sub_22C36BA0C();
  v126 = sub_22C9090BC();
  sub_22C369824();
  v110 = v7;
  MEMORY[0x28223BE20](v8);
  sub_22C369838();
  v124 = v10 - v9;
  v11 = sub_22C3A5908(&qword_27D9BB908, &qword_22C910960);
  v12 = sub_22C369914(v11);
  MEMORY[0x28223BE20](v12);
  sub_22C369ABC();
  v121 = (v13 - v14);
  sub_22C369930();
  MEMORY[0x28223BE20](v15);
  v120 = &v105 - v16;
  sub_22C36BA0C();
  sub_22C9093BC();
  sub_22C369824();
  v127 = v18;
  v128 = v17;
  MEMORY[0x28223BE20](v17);
  sub_22C369ABC();
  v21 = v19 - v20;
  MEMORY[0x28223BE20](v22);
  v119 = &v105 - v23;
  sub_22C369930();
  MEMORY[0x28223BE20](v24);
  v123 = &v105 - v25;
  sub_22C36BA0C();
  v118 = sub_22C9039FC();
  sub_22C369824();
  v27 = v26;
  MEMORY[0x28223BE20](v28);
  sub_22C369838();
  v117 = (v30 - v29);
  v31 = sub_22C3A5908(&qword_27D9BD798, &unk_22C919070);
  v32 = sub_22C369914(v31);
  MEMORY[0x28223BE20](v32);
  v34 = &v105 - v33;
  v35 = sub_22C9079FC();
  sub_22C369824();
  v37 = v36;
  MEMORY[0x28223BE20](v38);
  sub_22C369838();
  v41 = v40 - v39;
  v129 = sub_22C9087DC();
  sub_22C3A5908(&qword_27D9BA9F0, &qword_22C912420);
  sub_22C369E24();
  sub_22C3D32C8(v42, &qword_27D9BA9F0, &qword_22C912420, v43);
  sub_22C907EEC();

  if (sub_22C370B74(v34, 1, v35) == 1)
  {
    sub_22C36DD28(v34, &qword_27D9BD798, &unk_22C919070);
  }

  else
  {
    v44 = sub_22C370018();
    v108 = v35;
    v46 = v45(v44);
    v122 = v41;
    v47 = *(MEMORY[0x2318B4EB0](v46) + 16);
    v116 = v21;
    v107 = v37;
    v48 = v111;
    if (v47)
    {
      v51 = *(v27 + 16);
      v50 = v27 + 16;
      v49 = v51;
      sub_22C36BA94();
      v106 = v52;
      v54 = v52 + v53;
      v114 = *(v50 + 56);
      v115 = v50;
      v112 = (v50 - 8);
      v113 = (v127 + 32);
      v55 = MEMORY[0x277D84F90];
      do
      {
        v56 = v117;
        v57 = v118;
        v49(v117, v54, v118);
        v58 = v121;
        sub_22C9039CC();
        v59 = v120;
        sub_22C4E7208(v58, v120, &qword_27D9BB908, &qword_22C910960);
        (*v112)(v56, v57);
        v60 = v128;
        if (sub_22C370B74(v59, 1, v128) == 1)
        {
          sub_22C36DD28(v59, &qword_27D9BB908, &qword_22C910960);
        }

        else
        {
          v61 = v49;
          v62 = *v113;
          (*v113)(v119, v59, v60);
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v63 = v55;
          }

          else
          {
            sub_22C36D270();
            sub_22C5903C0();
            v63 = v69;
          }

          v65 = *(v63 + 16);
          v64 = *(v63 + 24);
          if (v65 >= v64 >> 1)
          {
            sub_22C369AB0(v64);
            sub_22C5903C0();
            v63 = v70;
          }

          *(v63 + 16) = v65 + 1;
          sub_22C36BA94();
          v55 = v66;
          (v62)(v66 + v67 + *(v68 + 72) * v65, v119);
          v49 = v61;
        }

        v54 += v114;
        --v47;
      }

      while (v47);

      v48 = v111;
    }

    else
    {

      v55 = MEMORY[0x277D84F90];
    }

    v71 = *(v55 + 16);
    v72 = v125;
    v73 = v122;
    if (v71)
    {
      v121 = *(v127 + 16);
      sub_22C36BA94();
      v106 = v55;
      v75 = v55 + v74;
      v77 = *(v76 + 56);
      v119 = (v76 + 16);
      v120 = v77;
      LODWORD(v118) = *MEMORY[0x277D729E8];
      v114 = (v76 - 8);
      v115 = v76 + 72;
      v127 = v76;
      v112 = (v110 + 16);
      v113 = (v76 + 80);
      v117 = (v110 + 32);
      v78 = MEMORY[0x277D84F90];
      v79 = &qword_27D9BD790;
      do
      {
        v80 = v78;
        v81 = v79;
        v82 = v48;
        v83 = v123;
        v84 = v128;
        v121(v123, v75, v128);
        v85 = v116;
        (*v119)(v116, v83, v84);
        v86 = sub_22C370018();
        v88 = v87(v86);
        if (v88 == v118)
        {
          v89 = sub_22C370018();
          v90(v89);
          v91 = swift_projectBox();
          v48 = v82;
          v92 = v126;
          (*v112)(v82, v91, v126);
          sub_22C36C640(v82, 0, 1, v92);
          v72 = v125;
        }

        else
        {
          v48 = v82;
          v93 = v82;
          v94 = v126;
          sub_22C36C640(v93, 1, 1, v126);
          v95 = v85;
          v92 = v94;
          (*v114)(v95, v84);
        }

        v79 = v81;
        sub_22C4E7208(v48, v72, v81, &unk_22C919060);
        v96 = sub_22C370B74(v72, 1, v92);
        v97 = v92;
        v73 = v122;
        v78 = v80;
        if (v96 == 1)
        {
          sub_22C36DD28(v72, v81, &unk_22C919060);
        }

        else
        {
          v98 = *v117;
          (*v117)(v124, v72, v97);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_22C36D270();
            sub_22C59193C();
            v78 = v103;
          }

          v100 = *(v78 + 16);
          v99 = *(v78 + 24);
          if (v100 >= v99 >> 1)
          {
            sub_22C369AB0(v99);
            sub_22C59193C();
            v78 = v104;
          }

          *(v78 + 16) = v100 + 1;
          sub_22C36BA94();
          v98(v78 + v101 + *(v102 + 72) * v100, v124, v126);
          v48 = v111;
          v72 = v125;
        }

        v75 += v120;
        --v71;
      }

      while (v71);
    }

    else
    {

      v78 = MEMORY[0x277D84F90];
    }

    (*(v107 + 8))(v73, v108);
    *(v109 + 40) = v78;
  }

  sub_22C36CC48();
}

uint64_t sub_22C4DFF58()
{
  sub_22C369980();
  v1[35] = v2;
  v1[36] = v0;
  v1[34] = v3;
  v4 = sub_22C9063DC();
  v1[37] = v4;
  sub_22C3699B8(v4);
  v1[38] = v5;
  v1[39] = sub_22C36D0D4();
  v1[40] = swift_task_alloc();
  v6 = sub_22C90819C();
  v1[41] = v6;
  sub_22C3699B8(v6);
  v1[42] = v7;
  v1[43] = sub_22C3699D4();
  v8 = sub_22C90762C();
  v1[44] = v8;
  sub_22C3699B8(v8);
  v1[45] = v9;
  v1[46] = sub_22C3699D4();
  v10 = sub_22C90764C();
  v1[47] = v10;
  sub_22C3699B8(v10);
  v1[48] = v11;
  v1[49] = sub_22C3699D4();
  v12 = sub_22C9025AC();
  v1[50] = v12;
  sub_22C3699B8(v12);
  v1[51] = v13;
  v1[52] = sub_22C3699D4();
  v14 = sub_22C906ECC();
  v1[53] = v14;
  sub_22C3699B8(v14);
  v1[54] = v15;
  v1[55] = sub_22C3699D4();
  v16 = sub_22C9088CC();
  v1[56] = v16;
  sub_22C3699B8(v16);
  v1[57] = v17;
  v1[58] = sub_22C3699D4();
  v18 = sub_22C3A5908(&qword_27D9BD760, &qword_22C922200);
  sub_22C369914(v18);
  v1[59] = sub_22C3699D4();
  v19 = sub_22C9079FC();
  v1[60] = v19;
  sub_22C3699B8(v19);
  v1[61] = v20;
  v1[62] = sub_22C3699D4();
  v21 = sub_22C906C4C();
  v1[63] = v21;
  sub_22C3699B8(v21);
  v1[64] = v22;
  v1[65] = sub_22C3699D4();
  v23 = sub_22C90873C();
  v1[66] = v23;
  sub_22C3699B8(v23);
  v1[67] = v24;
  v1[68] = sub_22C3699D4();
  v25 = sub_22C9089DC();
  v1[69] = v25;
  sub_22C3699B8(v25);
  v1[70] = v26;
  v1[71] = sub_22C36D0D4();
  v1[72] = swift_task_alloc();
  v27 = sub_22C908A0C();
  v1[73] = v27;
  sub_22C3699B8(v27);
  v1[74] = v28;
  v1[75] = sub_22C36D0D4();
  v1[76] = swift_task_alloc();
  v1[77] = swift_task_alloc();
  v1[78] = swift_task_alloc();
  v1[79] = swift_task_alloc();
  v29 = sub_22C3A5908(&qword_27D9BD768, &qword_22C919030);
  v1[80] = v29;
  sub_22C369914(v29);
  v1[81] = sub_22C3699D4();
  v30 = sub_22C3A5908(&qword_27D9BD770, &unk_22C919038);
  sub_22C369914(v30);
  v1[82] = sub_22C36D0D4();
  v1[83] = swift_task_alloc();
  v31 = sub_22C90880C();
  v1[84] = v31;
  sub_22C3699B8(v31);
  v1[85] = v32;
  v1[86] = sub_22C3699D4();
  sub_22C36BB08();

  return MEMORY[0x2822009F8](v33, v34, v35);
}

uint64_t sub_22C4E1A30(uint64_t a1)
{
  v4 = *v2;
  sub_22C369970();
  *v5 = v4;
  *v5 = *v2;
  *(v4 + 752) = v1;

  if (v1)
  {
  }

  else
  {
    *(v4 + 760) = a1;
  }

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_22C4E2F30()
{
  sub_22C36FB38();
  v3 = v2;
  sub_22C369A3C();
  v5 = v4;
  sub_22C369A30();
  *v6 = v5;
  v7 = *v1;
  sub_22C369970();
  *v8 = v7;
  *(v5 + 776) = v0;

  if (v0)
  {
  }

  else
  {
    *(v5 + 784) = v3;
  }

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22C4E4214()
{
  sub_22C36FB38();
  v3 = v2;
  sub_22C369A3C();
  v5 = v4;
  sub_22C369A30();
  *v6 = v5;
  v7 = *v1;
  sub_22C369970();
  *v8 = v7;
  *(v5 + 800) = v0;

  if (v0)
  {
  }

  else
  {
    *(v5 + 808) = v3;
  }

  sub_22C36BB08();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_22C4E54F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_22C4E7844();
  sub_22C4E735C();
  (*(v26[45] + 8))(v26[46], v26[44]);
  v27 = sub_22C4E73A4();
  v28(v27);
  v29 = sub_22C36BBCC();
  v30(v29);
  sub_22C37F180(v26[100]);

  sub_22C369A24();
  sub_22C377448();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_22C4E5650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_22C4E7844();
  sub_22C4E735C();
  (*(v26[61] + 8))(v26[62], v26[60]);
  v27 = sub_22C4E73A4();
  v28(v27);
  v29 = sub_22C36BBCC();
  v30(v29);
  sub_22C36FF94(v26 + 24);
  sub_22C37F180(v26[94]);

  sub_22C369A24();
  sub_22C377448();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_22C4E57B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_22C4E7844();
  sub_22C4E735C();
  (*(v26[54] + 8))(v26[55], v26[53]);
  v27 = sub_22C4E73A4();
  v28(v27);
  v29 = sub_22C36BBCC();
  v30(v29);
  sub_22C37F180(v26[97]);

  sub_22C369A24();
  sub_22C377448();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

void sub_22C4E5908()
{
  sub_22C36BA7C();
  sub_22C3A5908(&qword_27D9BD768, &qword_22C919030);
  sub_22C36985C();
  MEMORY[0x28223BE20](v3);
  sub_22C369ABC();
  sub_22C369930();
  v5 = MEMORY[0x28223BE20](v4);
  v6 = sub_22C4E7860(v5);
  v7 = *(v6 + 16);
  if (v7)
  {
    sub_22C908A0C();
    sub_22C4E77E4();
    v8 = MEMORY[0x277D84F90];
    for (i = v6; ; v6 = i)
    {
      if (!v0)
      {
        v2 = *(v6 + 16);
      }

      if (__OFSUB__(v2--, 1))
      {
        break;
      }

      if (v7 > *(v6 + 16))
      {
        goto LABEL_15;
      }

      v10 = sub_22C37E284();
      v11(v10);
      *v1 = v2;
      v12 = sub_22C38A17C();
      v13(v12);
      sub_22C4E6F74(v2);
      v15 = v14;
      sub_22C36DD28(v1, &qword_27D9BD768, &qword_22C919030);
      if ((v15 & 1) == 0)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = sub_22C36D270();
          sub_22C590E18(v22, v23, v24, v8);
          v8 = v25;
        }

        sub_22C4E77C4();
        if (v21)
        {
          v26 = sub_22C369AB0(v20);
          sub_22C590E18(v26, v15, 1, v27);
          v19 = v16;
        }

        sub_22C4E77B0(v16, v17, v18, v19);
      }

      ++v0;
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
  }

  sub_22C36CC48();
}

void sub_22C4E5B38()
{
  sub_22C36BA7C();
  sub_22C3A5908(&qword_27D9BD768, &qword_22C919030);
  sub_22C36985C();
  MEMORY[0x28223BE20](v3);
  sub_22C369ABC();
  sub_22C369930();
  v5 = MEMORY[0x28223BE20](v4);
  v6 = sub_22C4E7860(v5);
  v7 = *(v6 + 16);
  if (v7)
  {
    sub_22C908A0C();
    sub_22C4E77E4();
    v8 = MEMORY[0x277D84F90];
    for (i = v6; ; v6 = i)
    {
      if (!v0)
      {
        v2 = *(v6 + 16);
      }

      if (__OFSUB__(v2--, 1))
      {
        break;
      }

      if (v7 > *(v6 + 16))
      {
        goto LABEL_15;
      }

      v10 = sub_22C37E284();
      v11(v10);
      *v1 = v2;
      v12 = sub_22C38A17C();
      v13(v12);
      sub_22C4E6F74(v2);
      v15 = v14;
      sub_22C36DD28(v1, &qword_27D9BD768, &qword_22C919030);
      if ((v15 & 1) == 0)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = sub_22C36D270();
          sub_22C590E18(v22, v23, v24, v8);
          v8 = v25;
        }

        sub_22C4E77C4();
        if (v21)
        {
          v26 = sub_22C369AB0(v20);
          sub_22C590E18(v26, v15, 1, v27);
          v19 = v16;
        }

        sub_22C4E77B0(v16, v17, v18, v19);
      }

      ++v0;
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
  }

  sub_22C36CC48();
}

void sub_22C4E5D5C()
{
  sub_22C36BA7C();
  v60 = sub_22C9026BC();
  sub_22C369824();
  v1 = v0;
  MEMORY[0x28223BE20](v2);
  sub_22C369838();
  v59 = v4 - v3;
  sub_22C36BA0C();
  v58 = sub_22C907DEC();
  sub_22C369824();
  v50 = v5;
  MEMORY[0x28223BE20](v6);
  sub_22C369838();
  v57 = v8 - v7;
  sub_22C36BA0C();
  v56 = sub_22C906ECC();
  sub_22C369824();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  sub_22C369838();
  v55 = v13 - v12;
  sub_22C36BA0C();
  sub_22C9089DC();
  sub_22C369824();
  MEMORY[0x28223BE20](v14);
  sub_22C369838();
  v17 = v16 - v15;
  v18 = sub_22C908A0C();
  sub_22C369824();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  sub_22C369838();
  v24 = v23 - v22;
  v25 = sub_22C9087DC();
  sub_22C4E5908();
  if (v27)
  {
    sub_22C9087DC();

    v26 = 0;
    v28 = *(v25 + 16);
  }

  else
  {
    v28 = *(v25 + 16);
    if (v28 < v26)
    {
      goto LABEL_17;
    }
  }

  sub_22C6060C4(v26, v28, v25);
  v62 = v29;
  v31 = v30;
  v33 = v32;

  v34 = v33 >> 1;
  v61 = *MEMORY[0x277D1E798];
  v52 = *MEMORY[0x277D1E738];
  v51 = (v50 + 8);
  v49 = *MEMORY[0x277D1CBB0];
  v53 = v33 >> 1;
  v54 = v17;
  while (1)
  {
    if (v34 == v31)
    {
LABEL_13:
      swift_unknownObjectRelease();
LABEL_15:
      sub_22C36CC48();
      return;
    }

    if (v31 >= v34)
    {
      break;
    }

    (*(v20 + 16))(v24, v62 + *(v20 + 72) * v31, v18);
    sub_22C9089EC();
    v35 = sub_22C4E74FC();
    v37 = v36(v35);
    if (v37 == v61)
    {
      v38 = sub_22C4E74FC();
      v39(v38);
      (*(v10 + 32))(v55, v17, v56);
      sub_22C906EBC();
      sub_22C907DAC();
      (*v51)(v57, v58);
      (*(v10 + 8))(v55, v56);
      (*(v20 + 8))(v24, v18);
      v40 = (*(v1 + 88))(v59, v60);
      v34 = v53;
      v17 = v54;
      (*(v1 + 8))(v59, v60);
      if (v40 == v49)
      {
        goto LABEL_13;
      }
    }

    else
    {
      if (v37 == v52)
      {
        swift_unknownObjectRelease();
        v45 = sub_22C36BAFC();
        v46(v45);
        v47 = sub_22C4E74FC();
        v48(v47);
        goto LABEL_15;
      }

      v41 = sub_22C36BAFC();
      v42(v41);
      v43 = sub_22C4E74FC();
      v44(v43);
    }

    ++v31;
  }

  __break(1u);
LABEL_17:
  __break(1u);
}

uint64_t sub_22C4E629C(uint64_t a1)
{
  v2 = sub_22C9039FC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22C901FAC();
  MEMORY[0x28223BE20](v6 - 8);
  sub_22C9087AC();
  sub_22C90882C();

  (*(v3 + 16))(v5, a1, v2);
  return sub_22C90820C();
}

uint64_t sub_22C4E63E8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x736C6F6F74 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_22C90B4FC();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_22C4E6470()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_22C382AF4;

  return sub_22C4DEAB4();
}

uint64_t sub_22C4E653C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C4E63E8(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_22C4E6568(uint64_t a1)
{
  v2 = sub_22C4E677C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C4E65A4(uint64_t a1)
{
  v2 = sub_22C4E677C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FullPlannerFeatureStoreTools.encode(to:)(uint64_t a1)
{
  v2 = sub_22C3A5908(&qword_27D9BD6F8, &qword_22C918E00);
  sub_22C369824();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = v12 - v6;
  v8 = *v1;
  v9 = sub_22C36FC2C();
  sub_22C374168(v9, v10);
  sub_22C4E677C();

  sub_22C90B6CC();
  v12[1] = v8;
  sub_22C3A5908(&qword_27D9BD708, &qword_22C918E08);
  sub_22C4E6974(&qword_27D9BD710, &qword_27D9BD218, MEMORY[0x277D1ED08]);
  sub_22C90B41C();

  return (*(v4 + 8))(v7, v2);
}

unint64_t sub_22C4E677C()
{
  result = qword_27D9BD700;
  if (!qword_27D9BD700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BD700);
  }

  return result;
}

uint64_t FullPlannerFeatureStoreTools.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_22C3A5908(&qword_27D9BD718, &qword_22C918E10);
  sub_22C369824();
  MEMORY[0x28223BE20](v5);
  v6 = sub_22C383CCC();
  sub_22C374168(v6, v7);
  sub_22C4E677C();
  sub_22C90B6BC();
  if (!v2)
  {
    sub_22C3A5908(&qword_27D9BD708, &qword_22C918E08);
    sub_22C4E6974(&qword_27D9BD720, &qword_27D9BD200, MEMORY[0x277D1ED20]);
    sub_22C90B32C();
    v8 = sub_22C3806B8();
    v9(v8);
    *a2 = v11;
  }

  return sub_22C36FF94(a1);
}

uint64_t sub_22C4E6974(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_22C3AC1A0(&qword_27D9BD708, &qword_22C918E08);
    sub_22C4E7114(a2, MEMORY[0x277D1ED00], a3);
    sub_22C372164();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for QueryDecorationFeatureControl(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 8))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for QueryDecorationFeatureControl(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for FullPlannerFeatureStoreTools.CodingKeys(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_22C4E6B78()
{
  result = qword_27D9BD728;
  if (!qword_27D9BD728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BD728);
  }

  return result;
}

unint64_t sub_22C4E6BD0()
{
  result = qword_27D9BD730;
  if (!qword_27D9BD730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BD730);
  }

  return result;
}

unint64_t sub_22C4E6C28()
{
  result = qword_27D9BD738;
  if (!qword_27D9BD738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BD738);
  }

  return result;
}

uint64_t type metadata accessor for ConversationParser_v1_0(uint64_t a1)
{
  result = qword_27D9BD740;
  if (!qword_27D9BD740)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22C4E6CF0(uint64_t a1)
{
  result = sub_22C908AEC();
  if (v2 <= 0x3F)
  {
    result = sub_22C457168(319, &qword_281434B90, &protocol descriptor for ToolFetching);
    if (v3 <= 0x3F)
    {
      result = sub_22C457168(319, qword_281434978, &protocol descriptor for ToolRendering);
      if (v4 <= 0x3F)
      {
        result = sub_22C457168(319, qword_281432C20, &protocol descriptor for PromptGrammarGenerating);
        if (v5 <= 0x3F)
        {
          result = type metadata accessor for FullPlannerPreferences(319);
          if (v6 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_22C4E6E1C(uint64_t a1)
{
  v2 = type metadata accessor for FetchedTools(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22C4E6ECC()
{
  result = qword_27D9BD750;
  if (!qword_27D9BD750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BD750);
  }

  return result;
}

unint64_t sub_22C4E6F20()
{
  result = qword_27D9BD758;
  if (!qword_27D9BD758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BD758);
  }

  return result;
}

uint64_t sub_22C4E6F74(uint64_t a1)
{
  v2 = sub_22C9089DC();
  sub_22C369824();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  sub_22C369ABC();
  v8 = v6 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v18[-1] - v10;
  sub_22C9089EC();
  v12 = sub_22C9087DC();
  v18[3] = sub_22C3A5908(&qword_27D9BA9F0, &qword_22C912420);
  sub_22C369E24();
  v18[4] = sub_22C3D32C8(v13, &qword_27D9BA9F0, &qword_22C912420, v14);
  v18[0] = v12;
  sub_22C9089CC();
  v15 = *(v4 + 8);
  v15(v8, v2);
  sub_22C36FF94(v18);
  if ((*(v4 + 88))(v11, v2) != *MEMORY[0x277D1E858])
  {
    a1 = 0;
  }

  v15(v11, v2);
  return a1;
}

uint64_t sub_22C4E7114(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22C4E719C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_22C36BB4C(a1, a2, a3, a4);
  sub_22C36985C();
  v5 = sub_22C36BA00();
  v6(v5);
  return v4;
}

uint64_t sub_22C4E7208(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_22C36BB4C(a1, a2, a3, a4);
  sub_22C36985C();
  v5 = sub_22C36BA00();
  v6(v5);
  return v4;
}

uint64_t sub_22C4E72E4(uint64_t a1)
{

  return sub_22C903F7C();
}

unint64_t sub_22C4E7328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{

  return sub_22C36F9F4(0xD000000000000033, a21 | 0x8000000000000000, (v21 - 96));
}

uint64_t sub_22C4E73C8(uint64_t a1)
{
  *(a1 + 16) = 10;
  *(a1 + 24) = 0xE100000000000000;
  *(v1 + 48) = a1;

  return sub_22C3DB9B0(v1);
}

uint64_t sub_22C4E73EC()
{
}

uint64_t sub_22C4E7418()
{
  *(v1 - 120) = *(v0 + 312);
  *(v1 - 128) = *(v0 + 296);

  return swift_slowAlloc();
}

void sub_22C4E7454(uint64_t a1@<X8>)
{
  *(v2 - 96) = a1;

  sub_22C3CD5B8(v1);
}

uint64_t sub_22C4E7488(uint64_t a1, uint64_t a2)
{

  return sub_22C90735C();
}

uint64_t sub_22C4E7558()
{
  result = *(v0 + 712);
  *(v1 - 104) = *(v0 + 688);
  return result;
}

uint64_t sub_22C4E75D0(uint64_t a1)
{

  return sub_22C9087DC();
}

uint64_t sub_22C4E760C()
{

  return swift_slowAlloc();
}

uint64_t sub_22C4E7658(uint64_t a1)
{

  return sub_22C9089EC();
}

uint64_t sub_22C4E7674(uint64_t a1)
{
  *(v2 + 14) = v1;
  *(v2 + 22) = 2080;

  return sub_22C9089EC();
}

uint64_t sub_22C4E7698(uint64_t a1)
{
  *(v2 + 14) = v1;
  *(v2 + 22) = 2080;

  return sub_22C9089EC();
}

uint64_t sub_22C4E76BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_22C909F0C();
}

uint64_t sub_22C4E76D8(uint64_t a1)
{

  return sub_22C90878C();
}

uint64_t sub_22C4E7860(uint64_t a1)
{
  *(v2 - 88) = v1;

  return sub_22C9087DC();
}

uint64_t sub_22C4E7880(void x0_0, void x1_0, void x2_0, void x3_0, void x4_0, void x5_0, void x6_0, void x7_0, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{

  return swift_arrayDestroy();
}

uint64_t sub_22C4E78A0()
{

  return swift_task_alloc();
}

uint64_t sub_22C4E78B8()
{
}

uint64_t sub_22C4E78D0()
{

  return swift_task_alloc();
}

uint64_t sub_22C4E78E8()
{
}

uint64_t sub_22C4E7900()
{

  return sub_22C3A59A8(v0);
}

uint64_t sub_22C4E7918(uint64_t a1)
{

  return sub_22C90763C();
}

uint64_t sub_22C4E7930()
{

  return swift_setDeallocating();
}

uint64_t sub_22C4E7948(uint64_t a1)
{

  return sub_22C90763C();
}

uint64_t type metadata accessor for ExpressionParser_v1_0(uint64_t a1)
{
  result = qword_2814335B0;
  if (!qword_2814335B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22C4E79D4(uint64_t a1)
{
  result = sub_22C908AEC();
  if (v2 <= 0x3F)
  {
    result = sub_22C457168(319, qword_28142FF48, &protocol descriptor for RenderableToolDefinitionPromptRendering);
    if (v3 <= 0x3F)
    {
      result = sub_22C457168(319, &qword_281434518, &protocol descriptor for AppNameRendering);
      if (v4 <= 0x3F)
      {
        result = sub_22C457168(319, &qword_27D9BC400, &protocol descriptor for BuiltinNameRendering);
        if (v5 <= 0x3F)
        {
          result = sub_22C457168(319, qword_281433728, &protocol descriptor for RenderingArbitration);
          if (v6 <= 0x3F)
          {
            result = sub_22C457168(319, qword_281434978, &protocol descriptor for ToolRendering);
            if (v7 <= 0x3F)
            {
              result = sub_22C457168(319, &qword_27D9BD7A0, &protocol descriptor for DynamicEnumerationCasePromptRendering);
              if (v8 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
                return 0;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void *sub_22C4E7B40(uint64_t a1)
{
  v2 = sub_22C901FAC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v49 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_22C9070DC();
  v5 = MEMORY[0x28223BE20](v48);
  v42 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v47 = &v34 - v7;
  v8 = 0;
  v9 = MEMORY[0x277D84F98];
  v50 = MEMORY[0x277D84F98];
  v10 = *(a1 + 16);
  v44 = v11;
  v45 = v10;
  v43 = v11 + 16;
  v46 = (v11 + 32);
  v37 = v3 + 32;
  v38 = v3;
  v36 = (v3 + 8);
  v35 = xmmword_22C90F800;
  v39 = v2;
  v40 = a1;
  while (1)
  {
    if (v45 == v8)
    {

      return v9;
    }

    if (v8 >= *(a1 + 16))
    {
      break;
    }

    v12 = (*(v44 + 80) + 32) & ~*(v44 + 80);
    v13 = *(v44 + 72);
    (*(v44 + 16))(v47, a1 + v12 + v13 * v8, v48);
    sub_22C9068FC();
    sub_22C628274();
    v16 = v15;
    v17 = v9[2];
    v18 = (v14 & 1) == 0;
    if (__OFADD__(v17, v18))
    {
      goto LABEL_19;
    }

    v19 = v14;
    if (v9[3] < v17 + v18)
    {
      sub_22C88E1DC();
      v9 = v50;
      sub_22C628274();
      if ((v19 & 1) != (v21 & 1))
      {
        goto LABEL_21;
      }

      v16 = v20;
    }

    if (v19)
    {
      (*v36)(v49, v2);
      v22 = v9[7];
      v23 = *v46;
      (*v46)(v42, v47, v48);
      v24 = *(v22 + 8 * v16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v22 + 8 * v16) = v24;
      v41 = v23;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_22C5916E4();
        v24 = v31;
        *(v22 + 8 * v16) = v31;
      }

      v26 = *(v24 + 16);
      if (v26 >= *(v24 + 24) >> 1)
      {
        sub_22C5916E4();
        v24 = v32;
        *(v22 + 8 * v16) = v32;
      }

      v2 = v39;
      *(v24 + 16) = v26 + 1;
      v41((v24 + v12 + v26 * v13), v42, v48);
      a1 = v40;
    }

    else
    {
      sub_22C3A5908(&qword_27D9BAC20, &unk_22C90D4C0);
      v27 = swift_allocObject();
      *(v27 + 16) = v35;
      (*v46)((v27 + v12), v47, v48);
      v9[(v16 >> 6) + 8] |= 1 << v16;
      (*(v38 + 32))(v9[6] + *(v38 + 72) * v16, v49, v2);
      *(v9[7] + 8 * v16) = v27;
      v28 = v9[2];
      v29 = __OFADD__(v28, 1);
      v30 = v28 + 1;
      if (v29)
      {
        goto LABEL_20;
      }

      v9[2] = v30;
    }

    ++v8;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_22C90B54C();
  __break(1u);
  return result;
}

uint64_t sub_22C4E7F64(uint64_t a1)
{
  v2 = sub_22C3A5908(&qword_27D9BAA18, &qword_22C911C40);
  MEMORY[0x28223BE20](v2 - 8);
  v65 = &v53 - v3;
  v67 = sub_22C9070DC();
  v4 = *(v67 - 8);
  v5 = MEMORY[0x28223BE20](v67);
  v58 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v56 = &v53 - v7;
  v66 = sub_22C3A5908(&qword_27D9BC000, &qword_22C911C98);
  v8 = MEMORY[0x28223BE20](v66);
  v59 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v64 = &v53 - v11;
  MEMORY[0x28223BE20](v10);
  v63 = &v53 - v12;
  v14 = a1 + 64;
  v13 = *(a1 + 64);
  v60 = MEMORY[0x277D84F98];
  v70 = MEMORY[0x277D84F98];
  v15 = 1 << *(a1 + 32);
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & v13;
  v18 = (v15 + 63) >> 6;
  v55 = v4;
  v57 = (v4 + 32);
  v68 = a1;

  v20 = 0;
  v61 = v18;
  for (i = a1 + 64; ; v14 = i)
  {
    v21 = v20;
    if (!v17)
    {
      goto LABEL_7;
    }

    while (1)
    {
      v20 = v21;
LABEL_10:
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v23 = v22 | (v20 << 6);
      v24 = v68;
      v25 = *(v68 + 48);
      v26 = sub_22C901FAC();
      v27 = *(v26 - 8);
      v28 = v27;
      v29 = *(v27 + 72);
      v30 = v63;
      (*(v27 + 16))(v63, v25 + v29 * v23, v26);
      v31 = v66;
      *&v30[*(v66 + 48)] = *(*(v24 + 56) + 8 * v23);
      v32 = v30;
      v33 = v64;
      sub_22C4E9CC4(v32, v64);
      v34 = *(v31 + 48);
      swift_getKeyPath();
      v69 = *(v33 + v34);

      v35 = v65;
      swift_getAtKeyPath();

      if (sub_22C370B74(v35, 1, v67) != 1)
      {
        break;
      }

      sub_22C36DD28(v33, &qword_27D9BC000, &qword_22C911C98);
      result = sub_22C36DD28(v35, &qword_27D9BAA18, &qword_22C911C40);
      v21 = v20;
      v18 = v61;
      v14 = i;
      if (!v17)
      {
LABEL_7:
        while (1)
        {
          v20 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
            break;
          }

          if (v20 >= v18)
          {

            return v60;
          }

          v17 = *(v14 + 8 * v20);
          ++v21;
          if (v17)
          {
            goto LABEL_10;
          }
        }

        __break(1u);
        goto LABEL_27;
      }
    }

    v53 = v29;
    v54 = v28;
    v36 = v56;
    v37 = *v57;
    v38 = v35;
    v39 = v67;
    (*v57)(v56, v38, v67);
    sub_22C4E9CC4(v33, v59);
    v37(v58, v36, v39);
    if (v60[3] <= v60[2])
    {
      sub_22C88DF64();
    }

    v40 = v70;
    sub_22C4E9D34(&qword_2814357B0, MEMORY[0x277D1C348]);
    result = sub_22C909F7C();
    v41 = v40 + 64;
    v60 = v40;
    v42 = -1 << *(v40 + 32);
    v43 = result & ~v42;
    v44 = v43 >> 6;
    if (((-1 << v43) & ~*(v40 + 64 + 8 * (v43 >> 6))) == 0)
    {
      break;
    }

    v45 = __clz(__rbit64((-1 << v43) & ~*(v40 + 64 + 8 * (v43 >> 6)))) | v43 & 0x7FFFFFFFFFFFFFC0;
    v47 = v53;
    v46 = v54;
LABEL_24:
    *(v41 + ((v45 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v45;
    v52 = v60;
    (*(v46 + 32))(v60[6] + v45 * v47, v59, v26);
    v37((v52[7] + *(v55 + 72) * v45), v58, v67);
    ++v52[2];

    v18 = v61;
  }

  v48 = 0;
  v49 = (63 - v42) >> 6;
  v47 = v53;
  v46 = v54;
  while (++v44 != v49 || (v48 & 1) == 0)
  {
    v50 = v44 == v49;
    if (v44 == v49)
    {
      v44 = 0;
    }

    v48 |= v50;
    v51 = *(v41 + 8 * v44);
    if (v51 != -1)
    {
      v45 = __clz(__rbit64(~v51)) + (v44 << 6);
      goto LABEL_24;
    }
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_22C4E8518(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_22C3A5908(&qword_27D9BD7C0, &unk_22C92B700);
    v3 = sub_22C90B1EC();
  }

  else
  {
    v3 = MEMORY[0x277D84F98];
  }

  v6 = v3;
  sub_22C4E9DE8(a1, 1, &v6);
  v4 = v6;
  if (v1)
  {
  }

  return v4;
}

uint64_t sub_22C4E85B0(uint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = a2;
  sub_22C4EA134(a1, sub_22C4E9D78, 0, isUniquelyReferenced_nonNull_native, &v8);
  v6 = v8;
  if (v2)
  {
  }

  return v6;
}

uint64_t sub_22C4E8634(uint64_t a1, uint64_t a2, void (**a3)(char *, uint64_t), uint64_t a4, uint64_t a5)
{
  v181 = a5;
  v203 = a3;
  v182 = a1;
  v169 = sub_22C9063DC();
  sub_22C369824();
  v168 = v7;
  MEMORY[0x28223BE20](v8);
  sub_22C369838();
  v174 = v10 - v9;
  sub_22C36BA0C();
  v186 = sub_22C90769C();
  sub_22C369824();
  v173 = v11;
  MEMORY[0x28223BE20](v12);
  sub_22C369838();
  v185 = v14 - v13;
  sub_22C36BA0C();
  v189 = sub_22C901FAC();
  sub_22C369824();
  v184 = v15;
  MEMORY[0x28223BE20](v16);
  sub_22C3698E4();
  v170 = v17;
  sub_22C369930();
  MEMORY[0x28223BE20](v18);
  v208 = &v167 - v19;
  sub_22C36BA0C();
  v190 = sub_22C90654C();
  sub_22C369824();
  v172 = v20;
  MEMORY[0x28223BE20](v21);
  sub_22C369838();
  v24 = v23 - v22;
  v195 = sub_22C906ACC();
  sub_22C369824();
  v171 = v25;
  MEMORY[0x28223BE20](v26);
  sub_22C369838();
  v194 = v28 - v27;
  v29 = sub_22C36BA0C();
  v179 = type metadata accessor for StatefulExpressionParser(v29);
  sub_22C36985C();
  MEMORY[0x28223BE20](v30);
  sub_22C369838();
  v183 = (v32 - v31);
  sub_22C36BA0C();
  sub_22C9070DC();
  sub_22C369824();
  v209 = v33;
  v210 = v34;
  MEMORY[0x28223BE20](v33);
  sub_22C369838();
  v37 = (v36 - v35);
  v191 = sub_22C9089DC();
  sub_22C369824();
  v39 = v38;
  MEMORY[0x28223BE20](v40);
  sub_22C369838();
  v204 = v42 - v41;
  sub_22C36BA0C();
  v211 = sub_22C9088CC();
  sub_22C369824();
  v44 = v43;
  MEMORY[0x28223BE20](v45);
  sub_22C3698E4();
  v206 = v46;
  sub_22C369930();
  MEMORY[0x28223BE20](v47);
  v196 = &v167 - v48;
  sub_22C36BA0C();
  v205 = sub_22C908A0C();
  sub_22C369824();
  v50 = v49;
  MEMORY[0x28223BE20](v51);
  sub_22C369838();
  v54 = (v53 - v52);
  v178 = type metadata accessor for ExpressionParser_v1_0(0);
  v55 = *(v178 + 44);
  v180 = v5;
  v56 = sub_22C4E958C(v203, &v5[v55]);

  v57 = v56;
  v58 = v207;
  v177 = sub_22C4E85B0(v57, a4);

  v60 = sub_22C4E7B40(v59);
  v175 = sub_22C4E7F64(v60);
  v176 = v58;

  v61 = *(sub_22C9087DC() + 16);
  v192 = v24;
  v193 = v44;
  v207 = v37;
  if (v61)
  {
    v63 = *(v50 + 16);
    v62 = (v50 + 16);
    v202 = v63;
    sub_22C36BA94();
    v167 = v64;
    v66 = v64 + v65;
    v67 = v62[7];
    v203 = v62;
    v200 = v62 - 1;
    v201 = v67;
    v199 = (v39 + 88);
    LODWORD(v198) = *MEMORY[0x277D1E6F8];
    v188 = v39 + 8;
    v187 = v39 + 96;
    v197 = (v44 + 32);
    v68 = MEMORY[0x277D84F90];
    do
    {
      v69 = v37;
      v70 = v205;
      v202(v54, v66, v205);
      v71 = v204;
      sub_22C9089EC();
      (*v200)(v54, v70);
      v72 = sub_22C36BDDC();
      v74 = v73(v72);
      if (v74 == v198)
      {
        v75 = sub_22C36BDDC();
        v76(v75);
        v77 = *v197;
        (*v197)(v206, v71, v211);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v78 = v68;
        }

        else
        {
          sub_22C5925A4();
          v78 = v86;
        }

        v80 = *(v78 + 16);
        v79 = *(v78 + 24);
        if (v80 >= v79 >> 1)
        {
          sub_22C36A958(v79);
          sub_22C5925A4();
          v78 = v87;
        }

        *(v78 + 16) = v80 + 1;
        sub_22C36BA94();
        v68 = v81;
        (v77)(v81 + v82 + *(v83 + 72) * v80, v206, v211);
        v37 = v207;
      }

      else
      {
        v84 = sub_22C36BDDC();
        v85(v84);
        v37 = v69;
      }

      v66 += v201;
      --v61;
    }

    while (v61);

    v88 = v192;
    v89 = v68;
  }

  else
  {
    v88 = v24;

    v89 = MEMORY[0x277D84F90];
  }

  v90 = *(v89 + 16);
  isUniquelyReferenced_nonNull_native = v209;
  if (v90)
  {
    sub_22C36BA94();
    v204 = v93;
    v95 = v93 + v94;
    v205 = *(v92 + 56);
    v206 = v96;
    v97 = (v92 - 8);
    v98 = MEMORY[0x277D84F90];
    while (1)
    {
      v99 = v196;
      v100 = v211;
      v101 = v92;
      v206(v196, v95, v211);
      v102 = sub_22C90887C();
      (*v97)(v99, v100);
      v103 = *(v102 + 16);
      v104 = *(v98 + 16);
      if (__OFADD__(v104, v103))
      {
        break;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v104 + v103 > *(v98 + 24) >> 1)
      {
        sub_22C5916E4();
        v98 = v105;
      }

      isUniquelyReferenced_nonNull_native = v209;
      if (*(v102 + 16))
      {
        if ((*(v98 + 24) >> 1) - *(v98 + 16) < v103)
        {
          goto LABEL_56;
        }

        swift_arrayInitWithCopy();

        v92 = v101;
        if (v103)
        {
          v106 = *(v98 + 16);
          v107 = __OFADD__(v106, v103);
          v108 = v106 + v103;
          if (v107)
          {
            goto LABEL_58;
          }

          *(v98 + 16) = v108;
        }
      }

      else
      {

        v92 = v101;
        if (v103)
        {
          goto LABEL_54;
        }
      }

      v95 += v205;
      if (!--v90)
      {

        v109 = v192;
        v37 = v207;
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_54:
    __break(1u);
  }

  else
  {

    v98 = MEMORY[0x277D84F90];
    v109 = v88;
LABEL_29:
    v110 = *(v98 + 16);
    if (!v110)
    {
      v115 = MEMORY[0x277D84F98];
LABEL_46:

      v141 = v180;
      v142 = *v180;
      v143 = v178;
      v144 = *(v178 + 20);
      v145 = v179;
      v146 = *(v179 + 24);
      sub_22C908AEC();
      sub_22C36985C();
      v148 = v183;
      (*(v147 + 16))(&v183[v146], &v141[v144]);
      sub_22C387168(v143[6]);
      sub_22C387168(v143[7]);
      sub_22C387168(v143[8]);
      sub_22C387168(v143[9]);
      *v148 = v142;
      v148[1] = 0;
      *&v148[v145[11]] = v181;
      *&v148[v145[12]] = v177;
      *&v148[v145[13]] = v175;
      *&v148[v145[14]] = v115;
      v148[v145[15]] = 0;
      v148[v145[16]] = 0;

      v149 = v182;
      v150 = v176;
      sub_22C4429E4();
      v152 = v151;
      if (v150)
      {
        v153 = v174;
        sub_22C903F7C();
        v154 = v184;
        v155 = v170;
        v156 = v189;
        (*(v184 + 16))(v170, v149, v189);
        v157 = sub_22C9063CC();
        v158 = sub_22C90AADC();
        if (os_log_type_enabled(v157, v158))
        {
          v159 = swift_slowAlloc();
          v210 = swift_slowAlloc();
          v212 = v210;
          *v159 = 136315138;
          sub_22C4E9D34(&qword_27D9BAA48, MEMORY[0x277D1C368]);
          v160 = sub_22C90B47C();
          v211 = v152;
          v162 = v161;
          (*(v154 + 8))(v155, v156);
          v163 = sub_22C36F9F4(v160, v162, &v212);
          v152 = v211;

          *(v159 + 4) = v163;
          _os_log_impl(&dword_22C366000, v157, v158, "Failed to render Expression in Plan with StatementID: %s", v159, 0xCu);
          v164 = v210;
          sub_22C36FF94(v210);
          MEMORY[0x2318B9880](v164, -1, -1);
          MEMORY[0x2318B9880](v159, -1, -1);

          (*(v168 + 8))(v174, v169);
        }

        else
        {

          (*(v154 + 8))(v155, v156);
          (*(v168 + 8))(v153, v169);
        }

        swift_willThrow();
        v165 = v183;
      }

      else
      {
        v165 = v148;
      }

      sub_22C4E9C68(v165);
      return v152;
    }

    v111 = 0;
    sub_22C36BA94();
    v211 = v98 + v112;
    v206 = (v113 + 16);
    v205 = v172 + 88;
    LODWORD(v204) = *MEMORY[0x277D1DA78];
    v203 = (v113 + 8);
    v201 = (v172 + 96);
    v202 = (v172 + 8);
    v200 = (v171 + 32);
    v193 = v114 + 16;
    v198 = (v114 + 8);
    v199 = (v173 + 8);
    v115 = MEMORY[0x277D84F98];
    v196 = v110;
    v197 = (v171 + 8);
    while (v111 < *(v98 + 16))
    {
      (v210[2])(v37, v211 + v210[9] * v111, isUniquelyReferenced_nonNull_native);
      sub_22C90702C();
      v116 = sub_22C369E80();
      v118 = v117(v116);
      if (v118 == v204)
      {
        v119 = sub_22C369E80();
        v120(v119);
        (*v200)(v194, v109, v195);
        sub_22C9068FC();
        v121 = v185;
        sub_22C906ABC();
        v122 = sub_22C90768C();
        v124 = v123;
        (*v199)(v121, v186);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v212 = v115;
        sub_22C628274();
        if (__OFADD__(v115[2], (v126 & 1) == 0))
        {
          goto LABEL_57;
        }

        v127 = v125;
        v37 = v126;
        sub_22C3A5908(&qword_27D9BD7A8, &qword_22C9190A8);
        if (sub_22C90B15C())
        {
          sub_22C628274();
          if ((v37 & 1) != (v129 & 1))
          {
            goto LABEL_60;
          }

          v127 = v128;
        }

        v115 = v212;
        if (v37)
        {
          v130 = (v212[7] + 16 * v127);
          *v130 = v122;
          v130[1] = v124;

          (*v198)(v208, v189);
          (*v197)(v194, v195);
          v131 = sub_22C371840();
          v132(v131);
        }

        else
        {
          v212[(v127 >> 6) + 8] |= 1 << v127;
          isUniquelyReferenced_nonNull_native = v184;
          v37 = v208;
          v135 = v189;
          (*(v184 + 16))(v115[6] + *(v184 + 72) * v127, v208, v189);
          v136 = (v115[7] + 16 * v127);
          *v136 = v122;
          v136[1] = v124;
          (*(isUniquelyReferenced_nonNull_native + 8))(v37, v135);
          (*v197)(v194, v195);
          v137 = sub_22C371840();
          v138(v137);
          v139 = v115[2];
          v107 = __OFADD__(v139, 1);
          v140 = v139 + 1;
          if (v107)
          {
            goto LABEL_59;
          }

          v115[2] = v140;
        }

        v109 = v192;
        v110 = v196;
      }

      else
      {
        (*v203)(v37, isUniquelyReferenced_nonNull_native);
        v133 = sub_22C369E80();
        v134(v133);
      }

      if (v110 == ++v111)
      {
        goto LABEL_46;
      }
    }
  }

  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  result = sub_22C90B54C();
  __break(1u);
  return result;
}

uint64_t sub_22C4E958C(uint64_t a1, uint64_t a2)
{
  v70 = a2;
  v2 = sub_22C9089DC();
  sub_22C369824();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  sub_22C369838();
  v8 = v7 - v6;
  v9 = sub_22C9079FC();
  sub_22C369824();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  sub_22C3698E4();
  v75 = v13;
  sub_22C369930();
  MEMORY[0x28223BE20](v14);
  v74 = &v68 - v15;
  sub_22C369930();
  MEMORY[0x28223BE20](v16);
  v84 = &v68 - v17;
  sub_22C369930();
  MEMORY[0x28223BE20](v18);
  v69 = &v68 - v19;
  sub_22C36BA0C();
  v83 = sub_22C908A0C();
  sub_22C369824();
  v21 = v20;
  MEMORY[0x28223BE20](v22);
  sub_22C369838();
  v25 = v24 - v23;
  v26 = *(sub_22C9087DC() + 16);
  v27 = MEMORY[0x277D84F90];
  v76 = v11;
  if (v26)
  {
    v28 = v21 + 16;
    sub_22C36BA94();
    v68 = v29;
    v31 = v29 + v30;
    v80 = *(v28 + 56);
    v81 = v32;
    v82 = v28;
    v78 = v4 + 88;
    v79 = (v28 - 8);
    v77 = *MEMORY[0x277D1E808];
    v71 = v4 + 96;
    v72 = v4 + 8;
    v33 = (v11 + 32);
    v34 = MEMORY[0x277D84F90];
    v73 = v2;
    do
    {
      v35 = v83;
      v81(v25, v31, v83);
      sub_22C9089EC();
      (*v79)(v25, v35);
      v36 = sub_22C37284C();
      v38 = v37(v36);
      if (v38 == v77)
      {
        v39 = sub_22C37284C();
        v40(v39);
        v41 = *v33;
        v42 = v75;
        (*v33)(v75, v8, v9);
        v43 = v74;
        v41(v74, v42, v9);
        v41(v84, v43, v9);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v44 = v34;
        }

        else
        {
          sub_22C593164();
          v44 = v52;
        }

        v46 = *(v44 + 2);
        v45 = *(v44 + 3);
        if (v46 >= v45 >> 1)
        {
          sub_22C36A958(v45);
          sub_22C593164();
          v44 = v53;
        }

        *(v44 + 2) = v46 + 1;
        sub_22C36BA94();
        v34 = v47;
        v41(&v47[v48 + *(v49 + 72) * v46], v84, v9);
      }

      else
      {
        v50 = sub_22C37284C();
        v51(v50);
      }

      v31 += v80;
      --v26;
    }

    while (v26);

    v27 = MEMORY[0x277D84F90];
  }

  else
  {

    v34 = MEMORY[0x277D84F90];
  }

  v85 = v27;
  v54 = *(v34 + 2);
  v55 = v69;
  if (v54)
  {
    v57 = v76 + 16;
    v56 = *(v76 + 16);
    sub_22C36BA94();
    v84 = v34;
    v59 = &v34[v58];
    v60 = *(v57 + 56);
    do
    {
      v56(v55, v59, v9);
      v61 = sub_22C90799C();
      v62 = sub_22C4B9B90(v61);
      v63 = sub_22C807C9C(v62);
      (*(v57 - 8))(v55, v9);
      sub_22C3CE354(v63);
      v59 += v60;
      --v54;
    }

    while (v54);
  }

  v65 = v85;
  MEMORY[0x28223BE20](v64);
  *(&v68 - 2) = v70;
  v66 = sub_22C8F4848(sub_22C4EA474, (&v68 - 4), v65);

  return sub_22C4E8518(v66);
}

void sub_22C4E9A90(uint64_t *a3@<X8>)
{
  type metadata accessor for DynamicEnumeration(0);
  sub_22C7932C4();
  *a3 = v4;
}

uint64_t sub_22C4E9B04@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a2[3];
  v6 = a2[4];
  sub_22C374168(a2, v5);
  (*(v6 + 8))(v20, a1, v5, v6);
  if (v21 == 1)
  {
    v7 = sub_22C3A5908(&qword_27D9BB6C8, &qword_22C919100);
    v8 = a3;
    v9 = 1;
  }

  else
  {
    v10 = v20[3];
    v11 = v20[4];
    v13 = v20[1];
    v12 = v20[2];
    v14 = v20[0];

    sub_22C456CE4(v14, v13, v12, v10, v11, 0);
    v15 = sub_22C3A5908(&qword_27D9BB6C8, &qword_22C919100);
    v16 = *(v15 + 48);
    v17 = *(type metadata accessor for DynamicEnumeration.Case(0) + 20);
    v18 = sub_22C901FAC();
    (*(*(v18 - 8) + 16))(a3, a1 + v17, v18);
    *(a3 + v16) = v14;
    v8 = a3;
    v9 = 0;
    v7 = v15;
  }

  return sub_22C36C640(v8, v9, 1, v7);
}

uint64_t sub_22C4E9C68(uint64_t a1)
{
  v2 = type metadata accessor for StatefulExpressionParser(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22C4E9CC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9BC000, &qword_22C911C98);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C4E9D34(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_22C901FAC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22C4E9D78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(sub_22C3A5908(&qword_27D9BD7B0, &qword_22C9190F8) + 48);
  v5 = *(sub_22C3A5908(&qword_27D9BB6C8, &qword_22C919100) + 48);
  result = sub_22C88FDC4(a2, a1, *(a1 + v4));
  *(a2 + v5) = result;
  return result;
}

uint64_t sub_22C4E9DE8(uint64_t a1, char a2, void *a3)
{
  v41 = a3;
  v39 = sub_22C901FAC();
  v5 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v40 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22C3A5908(&qword_27D9BB6C8, &qword_22C919100);
  v8 = MEMORY[0x28223BE20](v7);
  v37 = &v31 - v10;
  v36 = *(a1 + 16);
  if (!v36)
  {
  }

  v11 = 0;
  v12 = *(v8 + 48);
  v34 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v35 = v12;
  v38 = (v5 + 32);
  v33 = v5;
  v32 = (v5 + 8);
  while (v11 < *(a1 + 16))
  {
    v13 = v9;
    v14 = v37;
    sub_22C4EA490(v34 + *(v9 + 72) * v11, v37);
    v15 = *v38;
    (*v38)(v40, v14, v39);
    v16 = *(v14 + v35);
    v17 = *v41;
    sub_22C628274();
    v20 = v19;
    v21 = v17[2];
    v22 = (v18 & 1) == 0;
    if (__OFADD__(v21, v22))
    {
      goto LABEL_18;
    }

    v23 = v18;
    if (v17[3] >= v21 + v22)
    {
      if ((a2 & 1) == 0)
      {
        sub_22C3A5908(&qword_27D9BC3B8, &qword_22C912B00);
        sub_22C90B16C();
      }
    }

    else
    {
      sub_22C88EC94();
      sub_22C628274();
      if ((v23 & 1) != (v25 & 1))
      {
        goto LABEL_20;
      }

      v20 = v24;
    }

    v26 = *v41;
    if (v23)
    {
      (*v32)(v40, v39);
      *(v26[7] + 8 * v20) = v16;
    }

    else
    {
      v26[(v20 >> 6) + 8] |= 1 << v20;
      v15((v26[6] + *(v33 + 72) * v20), v40, v39);
      *(v26[7] + 8 * v20) = v16;
      v27 = v26[2];
      v28 = __OFADD__(v27, 1);
      v29 = v27 + 1;
      if (v28)
      {
        goto LABEL_19;
      }

      v26[2] = v29;
    }

    ++v11;
    a2 = 1;
    v9 = v13;
    if (v36 == v11)
    {
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  result = sub_22C90B54C();
  __break(1u);
  return result;
}

uint64_t sub_22C4EA134(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v45 = a5;
  v36 = sub_22C901FAC();
  v8 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v10 = v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22C3A5908(&qword_27D9BD7B8, &qword_22C919108);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v33 - v12;
  sub_22C8920A0();
  v37 = v41;
  v38 = v42;
  v39 = v43;
  v40 = v44;
  v14 = (v8 + 32);
  v34 = (v8 + 8);
  v35 = v8;
  v33[1] = a1;

  v33[0] = a3;

  while (1)
  {
    sub_22C89119C();
    v15 = sub_22C3A5908(&qword_27D9BB6C8, &qword_22C919100);
    if (sub_22C370B74(v13, 1, v15) == 1)
    {
      sub_22C36A674(v37);
    }

    v16 = *(v15 + 48);
    v17 = *v14;
    (*v14)(v10, v13, v36);
    v18 = *&v13[v16];
    v19 = *v45;
    sub_22C628274();
    v22 = v21;
    v23 = v19[2];
    v24 = (v20 & 1) == 0;
    if (__OFADD__(v23, v24))
    {
      break;
    }

    v25 = v20;
    if (v19[3] >= v23 + v24)
    {
      if ((a4 & 1) == 0)
      {
        sub_22C3A5908(&qword_27D9BC3B8, &qword_22C912B00);
        sub_22C90B16C();
      }
    }

    else
    {
      sub_22C88EC94();
      sub_22C628274();
      if ((v25 & 1) != (v27 & 1))
      {
        goto LABEL_16;
      }

      v22 = v26;
    }

    v28 = *v45;
    if (v25)
    {
      (*v34)(v10, v36);
      *(v28[7] + 8 * v22) = v18;

      a4 = 1;
    }

    else
    {
      v28[(v22 >> 6) + 8] |= 1 << v22;
      v17((v28[6] + *(v35 + 72) * v22), v10, v36);
      *(v28[7] + 8 * v22) = v18;
      v29 = v28[2];
      v30 = __OFADD__(v29, 1);
      v31 = v29 + 1;
      if (v30)
      {
        goto LABEL_15;
      }

      v28[2] = v31;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  result = sub_22C90B54C();
  __break(1u);
  return result;
}

uint64_t sub_22C4EA490(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9BB6C8, &qword_22C919100);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for ProgramStatementParser_v1_0(uint64_t a1)
{
  result = qword_281431A80;
  if (!qword_281431A80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22C4EA590(uint64_t a1)
{
  result = sub_22C908AEC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22C4EA604(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 120))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22C4EA644(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_22C4EA6B0(uint64_t a1)
{
  v2 = sub_22C901FAC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v49 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_22C9070DC();
  v5 = MEMORY[0x28223BE20](v48);
  v42 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v47 = &v34 - v7;
  v8 = 0;
  v9 = MEMORY[0x277D84F98];
  v50 = MEMORY[0x277D84F98];
  v10 = *(a1 + 16);
  v44 = v11;
  v45 = v10;
  v43 = v11 + 16;
  v46 = (v11 + 32);
  v37 = v3 + 32;
  v38 = v3;
  v36 = (v3 + 8);
  v35 = xmmword_22C90F800;
  v39 = v2;
  v40 = a1;
  while (1)
  {
    if (v45 == v8)
    {

      return v9;
    }

    if (v8 >= *(a1 + 16))
    {
      break;
    }

    v12 = (*(v44 + 80) + 32) & ~*(v44 + 80);
    v13 = *(v44 + 72);
    (*(v44 + 16))(v47, a1 + v12 + v13 * v8, v48);
    sub_22C9068FC();
    sub_22C628274();
    v16 = v15;
    v17 = v9[2];
    v18 = (v14 & 1) == 0;
    if (__OFADD__(v17, v18))
    {
      goto LABEL_19;
    }

    v19 = v14;
    if (v9[3] < v17 + v18)
    {
      sub_22C88E1DC();
      v9 = v50;
      sub_22C628274();
      if ((v19 & 1) != (v21 & 1))
      {
        goto LABEL_21;
      }

      v16 = v20;
    }

    if (v19)
    {
      (*v36)(v49, v2);
      v22 = v9[7];
      v23 = *v46;
      (*v46)(v42, v47, v48);
      v24 = *(v22 + 8 * v16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v22 + 8 * v16) = v24;
      v41 = v23;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_22C5916E4();
        v24 = v31;
        *(v22 + 8 * v16) = v31;
      }

      v26 = *(v24 + 16);
      if (v26 >= *(v24 + 24) >> 1)
      {
        sub_22C5916E4();
        v24 = v32;
        *(v22 + 8 * v16) = v32;
      }

      v2 = v39;
      *(v24 + 16) = v26 + 1;
      v41((v24 + v12 + v26 * v13), v42, v48);
      a1 = v40;
    }

    else
    {
      sub_22C3A5908(&qword_27D9BAC20, &unk_22C90D4C0);
      v27 = swift_allocObject();
      *(v27 + 16) = v35;
      (*v46)((v27 + v12), v47, v48);
      v9[(v16 >> 6) + 8] |= 1 << v16;
      (*(v38 + 32))(v9[6] + *(v38 + 72) * v16, v49, v2);
      *(v9[7] + 8 * v16) = v27;
      v28 = v9[2];
      v29 = __OFADD__(v28, 1);
      v30 = v28 + 1;
      if (v29)
      {
        goto LABEL_20;
      }

      v9[2] = v30;
    }

    ++v8;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_22C90B54C();
  __break(1u);
  return result;
}

uint64_t sub_22C4EAAD4(uint64_t a1)
{
  v2 = sub_22C3A5908(&qword_27D9BAA18, &qword_22C911C40);
  MEMORY[0x28223BE20](v2 - 8);
  v65 = &v53 - v3;
  v67 = sub_22C9070DC();
  v4 = *(v67 - 8);
  v5 = MEMORY[0x28223BE20](v67);
  v58 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v56 = &v53 - v7;
  v66 = sub_22C3A5908(&qword_27D9BC000, &qword_22C911C98);
  v8 = MEMORY[0x28223BE20](v66);
  v59 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v64 = &v53 - v11;
  MEMORY[0x28223BE20](v10);
  v63 = &v53 - v12;
  v14 = a1 + 64;
  v13 = *(a1 + 64);
  v60 = MEMORY[0x277D84F98];
  v70 = MEMORY[0x277D84F98];
  v15 = 1 << *(a1 + 32);
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & v13;
  v18 = (v15 + 63) >> 6;
  v55 = v4;
  v57 = (v4 + 32);
  v68 = a1;

  v20 = 0;
  v61 = v18;
  for (i = a1 + 64; ; v14 = i)
  {
    v21 = v20;
    if (!v17)
    {
      goto LABEL_7;
    }

    while (1)
    {
      v20 = v21;
LABEL_10:
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v23 = v22 | (v20 << 6);
      v24 = v68;
      v25 = *(v68 + 48);
      v26 = sub_22C901FAC();
      v27 = *(v26 - 8);
      v28 = v27;
      v29 = *(v27 + 72);
      v30 = v63;
      (*(v27 + 16))(v63, v25 + v29 * v23, v26);
      v31 = v66;
      *&v30[*(v66 + 48)] = *(*(v24 + 56) + 8 * v23);
      v32 = v30;
      v33 = v64;
      sub_22C4E9CC4(v32, v64);
      v34 = *(v31 + 48);
      swift_getKeyPath();
      v69 = *(v33 + v34);

      v35 = v65;
      swift_getAtKeyPath();

      if (sub_22C370B74(v35, 1, v67) != 1)
      {
        break;
      }

      sub_22C36DD28(v33, &qword_27D9BC000, &qword_22C911C98);
      result = sub_22C36DD28(v35, &qword_27D9BAA18, &qword_22C911C40);
      v21 = v20;
      v18 = v61;
      v14 = i;
      if (!v17)
      {
LABEL_7:
        while (1)
        {
          v20 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
            break;
          }

          if (v20 >= v18)
          {

            return v60;
          }

          v17 = *(v14 + 8 * v20);
          ++v21;
          if (v17)
          {
            goto LABEL_10;
          }
        }

        __break(1u);
        goto LABEL_27;
      }
    }

    v53 = v29;
    v54 = v28;
    v36 = v56;
    v37 = *v57;
    v38 = v35;
    v39 = v67;
    (*v57)(v56, v38, v67);
    sub_22C4E9CC4(v33, v59);
    v37(v58, v36, v39);
    if (v60[3] <= v60[2])
    {
      sub_22C88DF64();
    }

    v40 = v70;
    sub_22C4075B8();
    result = sub_22C909F7C();
    v41 = v40 + 64;
    v60 = v40;
    v42 = -1 << *(v40 + 32);
    v43 = result & ~v42;
    v44 = v43 >> 6;
    if (((-1 << v43) & ~*(v40 + 64 + 8 * (v43 >> 6))) == 0)
    {
      break;
    }

    v45 = __clz(__rbit64((-1 << v43) & ~*(v40 + 64 + 8 * (v43 >> 6)))) | v43 & 0x7FFFFFFFFFFFFFC0;
    v47 = v53;
    v46 = v54;
LABEL_24:
    *(v41 + ((v45 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v45;
    v52 = v60;
    (*(v46 + 32))(v60[6] + v45 * v47, v59, v26);
    v37((v52[7] + *(v55 + 72) * v45), v58, v67);
    ++v52[2];

    v18 = v61;
  }

  v48 = 0;
  v49 = (63 - v42) >> 6;
  v47 = v53;
  v46 = v54;
  while (++v44 != v49 || (v48 & 1) == 0)
  {
    v50 = v44 == v49;
    if (v44 == v49)
    {
      v44 = 0;
    }

    v48 |= v50;
    v51 = *(v41 + 8 * v44);
    if (v51 != -1)
    {
      v45 = __clz(__rbit64(~v51)) + (v44 << 6);
      goto LABEL_24;
    }
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_22C4EB06C(uint64_t a1)
{
  v3 = sub_22C90654C();
  sub_22C369824();
  v92 = v4;
  MEMORY[0x28223BE20](v5);
  sub_22C369ABC();
  v8 = v6 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = v48 - v10;
  v12 = sub_22C9070DC();
  sub_22C369824();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  sub_22C369ABC();
  v18 = (v16 - v17);
  MEMORY[0x28223BE20](v19);
  v21 = v48 - v20;
  v96 = v1;

  v22 = v93;
  result = sub_22C47B650(sub_22C4ED5E0, v95, a1);
  if (v22)
  {
    return result;
  }

  v24 = v92;
  v78 = v18;
  if (!*(result + 16))
  {
    v48[1] = 0;

    v25 = v14;
    v26 = 0;
    v89 = *MEMORY[0x277D1DAA8];
    v88 = *MEMORY[0x277D1D9F8];
    v87 = *MEMORY[0x277D1DAC0];
    v86 = *MEMORY[0x277D1DAA0];
    v85 = *MEMORY[0x277D1DA98];
    v79 = *MEMORY[0x277D1DA50];
    v77 = *MEMORY[0x277D1DA78];
    v76 = *MEMORY[0x277D1DA30];
    v75 = *MEMORY[0x277D1DA08];
    v74 = *MEMORY[0x277D1DA10];
    v72 = *MEMORY[0x277D1DA70];
    v71 = *MEMORY[0x277D1DA88];
    v70 = *MEMORY[0x277D1DAD8];
    v69 = *MEMORY[0x277D1DAD0];
    v68 = *MEMORY[0x277D1DA48];
    v67 = *MEMORY[0x277D1DAE8];
    v66 = *MEMORY[0x277D1D9F0];
    v65 = *MEMORY[0x277D1DA90];
    v64 = *MEMORY[0x277D1DAC8];
    v63 = *MEMORY[0x277D1DAB0];
    v62 = *MEMORY[0x277D1DA80];
    v61 = *MEMORY[0x277D1DAE0];
    v60 = *MEMORY[0x277D1DAB8];
    v57 = *MEMORY[0x277D1DA18];
    v56 = *MEMORY[0x277D1DA00];
    v55 = *MEMORY[0x277D1DA58];
    v54 = *MEMORY[0x277D1DA28];
    v53 = *MEMORY[0x277D1DA40];
    v52 = *MEMORY[0x277D1DA20];
    v51 = *MEMORY[0x277D1DA38];
    v50 = *MEMORY[0x277D1DAF0];
    v49 = *MEMORY[0x277D1DA68];
    v83 = (v24 + 88);
    v84 = (v24 + 16);
    v27 = (v24 + 8);
    v28 = *(a1 + 16);
    v90 = v25;
    v91 = v28;
    v73 = (v25 + 32);
    v81 = (v25 + 8);
    v82 = v25 + 16;
    v80 = MEMORY[0x277D84F90];
    v59 = a1;
    v58 = v8;
    v94 = v12;
    while (1)
    {
      if (v91 == v26)
      {
        return v80;
      }

      v93 = (*(v90 + 80) + 32) & ~*(v90 + 80);
      v92 = *(v90 + 72);
      (*(v90 + 16))(v21, a1 + v93 + v92 * v26, v12);
      sub_22C90702C();
      (*v84)(v8, v11, v3);
      v29 = (*v83)(v8, v3);
      v30 = v29 == v89 || v29 == v88;
      if (v30 || v29 == v87 || v29 == v86 || v29 == v85)
      {
LABEL_40:
        (*v27)(v8, v3);
        goto LABEL_41;
      }

      if (v29 == v79)
      {
        break;
      }

      if (v29 == v77)
      {
        break;
      }

      if (v29 == v76)
      {
        break;
      }

      if (v29 == v75)
      {
        break;
      }

      if (v29 == v74)
      {
        break;
      }

      sub_22C369908();
      if (v30)
      {
        break;
      }

      sub_22C369908();
      if (v30)
      {
        break;
      }

      sub_22C369908();
      if (v30)
      {
        break;
      }

      sub_22C369908();
      if (v30)
      {
        break;
      }

      sub_22C369908();
      if (v30)
      {
        break;
      }

      sub_22C369908();
      if (v30)
      {
        break;
      }

      sub_22C369908();
      if (v30)
      {
        break;
      }

      sub_22C369908();
      if (v30)
      {
        break;
      }

      sub_22C369908();
      if (v30)
      {
        break;
      }

      sub_22C369908();
      if (v30)
      {
        break;
      }

      sub_22C369908();
      if (v30)
      {
        break;
      }

      sub_22C369908();
      if (v30 || v34 == v60)
      {
        goto LABEL_40;
      }

      sub_22C369908();
      if (v36)
      {
        break;
      }

      sub_22C369908();
      if (v30)
      {
        break;
      }

      sub_22C369908();
      if (v30)
      {
        break;
      }

      sub_22C369908();
      if (v30)
      {
        break;
      }

      sub_22C369908();
      if (v30)
      {
        goto LABEL_41;
      }

      sub_22C369908();
      if (v30 || v37 == v51)
      {
        (*v27)(v11, v3);
LABEL_57:
        v42 = *v73;
        (*v73)(v78, v21, v94);
        v43 = v80;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v45 = v43;
        v97 = v43;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_22C377BA0();
          sub_22C3B6D88();
          v45 = v97;
        }

        v47 = *(v45 + 16);
        v46 = *(v45 + 24);
        if (v47 >= v46 >> 1)
        {
          sub_22C369AB0(v46);
          sub_22C3B6D88();
          v45 = v97;
        }

        ++v26;
        *(v45 + 16) = v47 + 1;
        v80 = v45;
        v12 = v94;
        v42(v45 + v93 + v47 * v92, v78, v94);
        a1 = v59;
        v8 = v58;
      }

      else
      {
        sub_22C369908();
        if (!v30 && v39 != v49)
        {
          result = sub_22C90B4EC();
          __break(1u);
          return result;
        }

LABEL_41:
        (*v27)(v11, v3);
        v12 = v94;
        (*v81)(v21, v94);
        ++v26;
      }
    }

    v41 = *v27;
    (*v27)(v8, v3);
    v41(v11, v3);
    goto LABEL_57;
  }

  return result;
}

uint64_t sub_22C4EB82C(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v49 = a5;
  sub_22C901FAC();
  sub_22C369824();
  v51 = v11;
  v52 = v12;
  MEMORY[0x28223BE20](v11);
  sub_22C369ABC();
  v45 = v13 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v43 - v16;
  v18 = a3[8];
  v19 = a3[9];
  sub_22C374168(a3 + 5, v18);
  v48 = a2;
  sub_22C9068FC();
  v46 = a4;
  v20 = sub_22C90887C();
  v44 = a1;
  v21 = *a1;
  v47 = a6;
  v22 = v50;
  v23 = (*(v19 + 8))(v17, v20, v49, v21, *(a6 + 32), v18, v19);
  if (v22)
  {
    (*(v52 + 8))(v17, v51);
  }

  else
  {
    v25 = v45;
    v26 = *(v52 + 8);
    v27 = v23;
    v52 += 8;
    v50 = v26;
    v26(v17, v51);

    v28 = sub_22C90887C();
    v29 = sub_22C4EA6B0(v28);
    v30 = sub_22C4EAAD4(v29);

    v31 = a3[3];
    v32 = a3[4];
    sub_22C374168(a3, v31);
    v33 = (*(v32 + 8))(v48, v27, v30, v47, v31, v32);

    v34 = v25;
    sub_22C9068FC();
    type metadata accessor for PromptTreeIdentifier.Label(0);
    v35 = v33;
    v49 = swift_allocBox();
    v37 = v36;
    v38 = v51;
    v39 = swift_allocBox();
    sub_22C9068FC();
    *v37 = v39;
    v40 = *MEMORY[0x277D1D798];
    sub_22C902D0C();
    sub_22C36985C();
    (*(v41 + 104))(v37, v40);
    swift_storeEnumTagMultiPayload();
    v42 = v44;
    swift_isUniquelyReferenced_nonNull_native();
    v53 = *v42;
    sub_22C62D218();
    *v42 = v53;
    v50(v34, v38);
    sub_22C3CD5B8(v35);
  }
}

BOOL sub_22C4EBB54(uint64_t a1, void *a2)
{
  v3 = a2[13];
  v4 = a2[14];
  sub_22C374168(a2 + 10, v3);
  return (*(v4 + 8))(a1, v3, v4) == 0;
}

char *sub_22C4EBBC4(uint64_t a1, uint64_t a2)
{
  v201 = a2;
  v200 = sub_22C90941C();
  sub_22C369824();
  v179 = v3;
  MEMORY[0x28223BE20](v4);
  sub_22C369838();
  v196 = v6 - v5;
  sub_22C36BA0C();
  v187 = sub_22C90981C();
  sub_22C369824();
  v197 = v7;
  MEMORY[0x28223BE20](v8);
  sub_22C369ABC();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v9);
  sub_22C3698D4();
  MEMORY[0x28223BE20](v10);
  v178 = &v177 - v11;
  sub_22C36BA0C();
  sub_22C908EAC();
  sub_22C369824();
  v189 = v13;
  v190 = v12;
  MEMORY[0x28223BE20](v12);
  sub_22C369838();
  v188 = v15 - v14;
  v16 = sub_22C36BA0C();
  v198 = type metadata accessor for PromptTreeIdentifier(v16);
  sub_22C36985C();
  MEMORY[0x28223BE20](v17);
  sub_22C369ABC();
  v20 = v18 - v19;
  MEMORY[0x28223BE20](v21);
  v185 = &v177 - v22;
  sub_22C36BA0C();
  v183 = sub_22C90077C();
  sub_22C369824();
  v181 = v23;
  MEMORY[0x28223BE20](v24);
  sub_22C369838();
  v27 = v26 - v25;
  v28 = sub_22C3A5908(&qword_27D9BC1E8, &qword_22C9123B0);
  MEMORY[0x28223BE20](v28 - 8);
  sub_22C369ABC();
  v186 = v29 - v30;
  MEMORY[0x28223BE20](v31);
  sub_22C3698D4();
  MEMORY[0x28223BE20](v32);
  v191 = &v177 - v33;
  sub_22C36BA0C();
  v34 = sub_22C90769C();
  sub_22C369824();
  v192 = v35;
  MEMORY[0x28223BE20](v36);
  sub_22C369ABC();
  v39 = (v37 - v38);
  MEMORY[0x28223BE20](v40);
  v42 = &v177 - v41;
  sub_22C906ACC();
  sub_22C369824();
  v193 = v44;
  v194 = v43;
  MEMORY[0x28223BE20](v43);
  sub_22C369838();
  v195 = v46 - v45;
  sub_22C36BA0C();
  v47 = sub_22C90654C();
  sub_22C369824();
  v49 = v48;
  MEMORY[0x28223BE20](v50);
  sub_22C369838();
  v53 = (v52 - v51);
  v199 = a1;
  sub_22C90702C();
  v54 = (*(v49 + 88))(v53, v47);
  if (v54 == *MEMORY[0x277D1DAA8] || v54 == *MEMORY[0x277D1D9F8] || v54 == *MEMORY[0x277D1DAC0] || v54 == *MEMORY[0x277D1DAA0] || v54 == *MEMORY[0x277D1DA98])
  {
    goto LABEL_15;
  }

  if (v54 == *MEMORY[0x277D1DA50])
  {
LABEL_19:
    v76 = sub_22C38B9EC();
    v77(v76);
LABEL_20:
    sub_22C3A5908(&qword_27D9BC438, &unk_22C912FE0);
    v75 = swift_allocObject();
    *(v75 + 16) = xmmword_22C90F800;
    v78 = v201;
    *(v75 + 32) = 1;
    *(v75 + 40) = v78 | 2;

    return v75;
  }

  if (v54 == *MEMORY[0x277D1DA78])
  {
    (*(v49 + 96))(v53, v47);
    (*(v193 + 32))(v195, v53, v194);
    sub_22C906ABC();
    v79 = sub_22C90768C();
    v81 = v80;
    v53 = *(v192 + 8);
    v53(v42, v34);
    if (v79 == 0x6570735F69726973 && v81 == 0xEA00000000006B61)
    {
    }

    else
    {
      v83 = sub_22C90B4FC();

      v84 = v202;
      if ((v83 & 1) == 0)
      {
        v85 = sub_22C906ABC();
        MEMORY[0x2318B5FE0](v85);
        sub_22C908AFC();
        v47 = v84;
        if (v84)
        {

          v47 = 0;
          v86 = 1;
LABEL_82:
          v103 = v185;
          (*(v181 + 8))(v27, v183);
          v53(v39, v34);
          v105 = v190;
          v104 = v191;
          sub_22C36C640(v191, v86, 1, v190);
          v106 = v182;
          sub_22C4ED600(v104, v182);
          if (sub_22C370B74(v106, 1, v105) == 1)
          {
            v107 = sub_22C36DD28(v106, &qword_27D9BC1E8, &qword_22C9123B0);
            v108 = MEMORY[0x277D84F90];
          }

          else
          {
            v108 = sub_22C908DCC();
            v107 = (*(v189 + 8))(v106, v105);
          }

          MEMORY[0x28223BE20](v107);
          *(&v177 - 2) = v199;
          v109 = v47;
          v110 = sub_22C3B3F9C(sub_22C4ED670, (&v177 - 4), v108);

          v111 = sub_22C902D0C();
          sub_22C36C640(v103, 1, 3, v111);
          type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category(0);
          swift_storeEnumTagMultiPayload();
          sub_22C901FAC();
          v112 = swift_allocBox();
          sub_22C9068FC();
          v113 = *(type metadata accessor for PromptTreeIdentifier.TranscriptReference(0) + 20);
          *(v103 + v113) = v112;
          (*(*(v111 - 8) + 104))(v103 + v113, *MEMORY[0x277D1D798], v111);
          swift_storeEnumTagMultiPayload();
          v114 = sub_22C3A5908(&qword_27D9BC420, &qword_22C919300);
          v115 = swift_allocBox();
          v64 = v116;
          sub_22C45769C(v103, v116);
          type metadata accessor for PromptTreeIdentifier.Label(0);
          v117 = swift_allocBox();
          sub_22C486784();
          v118 = sub_22C4ED034(v117 | 0x2000000000000000, v201, v110);
          v119 = v103;
          v71 = v109;
          if (v109)
          {
            while (1)
            {

              sub_22C457700(v64);
LABEL_111:
              swift_deallocBox();
              __break(1u);
            }
          }

          v120 = *(v114 + 48);
          sub_22C457700(v119);

          sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
          v121 = swift_allocObject();
          *(v121 + 16) = v118;
          *(v64 + v120) = v121;
          v192 = v115;

          sub_22C591F6C(0, 1, 1, MEMORY[0x277D84F90]);
          v123 = v122;
          v125 = *(v122 + 2);
          v124 = *(v122 + 3);
          v126 = v125 + 1;
          if (v125 >= v124 >> 1)
          {
LABEL_109:
            v172 = sub_22C369AB0(v124);
            sub_22C591F6C(v172, v126, 1, v173);
            v123 = v174;
          }

          v127 = v200;
          v128 = v186;
          v129 = v187;
          v130 = v191;
          v131 = v192;
          *(v123 + 2) = v126;
          v185 = v123;
          v132 = &v123[16 * v125];
          *(v132 + 4) = 1;
          *(v132 + 5) = v131 | 0x4000000000000002;
          sub_22C4ED600(v130, v128);
          v133 = v190;
          if (sub_22C370B74(v128, 1, v190) == 1)
          {

            sub_22C36DD28(v130, &qword_27D9BC1E8, &qword_22C9123B0);
            v134 = sub_22C37185C();
            v135(v134);
            sub_22C36DD28(v128, &qword_27D9BC1E8, &qword_22C9123B0);
            return v185;
          }

          else
          {
            v202 = v71;
            (*(v189 + 32))(v188, v128, v133);
            v136 = sub_22C908DCC();
            v71 = 0;
            v199 = *(v136 + 16);
            v125 = v197 + 16;
            v184 = (v197 + 32);
            v137 = (v197 + 8);
            v186 = MEMORY[0x277D84F90];
            v126 = v178;
            v201 = v197 + 16;
            v198 = v136;
LABEL_90:
            v138 = v196;
            while (v199 != v71)
            {
              v124 = *(v136 + 16);
              if (v71 >= v124)
              {
                __break(1u);
                goto LABEL_109;
              }

              v139 = (*(v197 + 80) + 32) & ~*(v197 + 80);
              v140 = *(v197 + 72);
              (*(v197 + 16))(v126, v136 + v139 + v140 * v71, v129);
              v204[0] = sub_22C9097DC();
              v204[1] = v141;
              MEMORY[0x28223BE20](v204[0]);
              *(&v177 - 2) = v204;
              v142 = v202;
              v143 = sub_22C5EC08C(sub_22C3AC11C, (&v177 - 4), &unk_283FAEBB0);
              v202 = v142;

              if (!v143)
              {
                v144 = *v184;
                (*v184)(v180, v126, v129);
                v145 = v186;
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v205 = v145;
                v183 = v144;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  v147 = sub_22C377BA0();
                  sub_22C3B6FA0(v147, v148, v149);
                  v145 = v205;
                }

                v125 = v201;
                v150 = v71;
                v152 = *(v145 + 16);
                v151 = *(v145 + 24);
                v153 = v145;
                if (v152 >= v151 >> 1)
                {
                  v154 = sub_22C369AB0(v151);
                  sub_22C3B6FA0(v154, v152 + 1, 1);
                  v150 = v71;
                  v125 = v201;
                  v153 = v205;
                }

                v71 = v150 + 1;
                *(v153 + 16) = v152 + 1;
                v186 = v153;
                v129 = v187;
                v183(v153 + v139 + v152 * v140, v180, v187);
                v127 = v200;
                v136 = v198;
                goto LABEL_90;
              }

              (*v137)(v126, v129);
              ++v71;
              v127 = v200;
              v125 = v201;
              v138 = v196;
              v136 = v198;
            }

            v203 = MEMORY[0x277D84F90];
            v155 = *(v186 + 16);
            if (v155)
            {
              v156 = v186 + ((*(v197 + 80) + 32) & ~*(v197 + 80));
              v157 = *(v197 + 72);
              v198 = *(v197 + 16);
              v199 = v157;
              v158 = v138;
              v159 = (v179 + 8);
              v160 = v177;
              do
              {
                v161 = v198(v160, v156, v129);
                MEMORY[0x2318B6CE0](v161);
                sub_22C9093DC();
                (*v159)(v158, v200);
                (*v137)(v160, v129);
                sub_22C3CD230();
                v156 += v199;
                --v155;
              }

              while (v155);

              v127 = v200;
              v138 = v158;
            }

            else
            {
            }

            v163 = v191;
            MEMORY[0x2318B6290](v162);
            sub_22C9093DC();
            (*(v179 + 8))(v138, v127);
            sub_22C3CD230();
            sub_22C3AD9E8();
            v165 = v164;
            v75 = v185;
            v167 = *(v185 + 2);
            v166 = *(v185 + 3);
            v168 = v190;
            if (v167 >= v166 >> 1)
            {
              v175 = sub_22C369AB0(v166);
              sub_22C591F6C(v175, v167 + 1, 1, v75);
              v75 = v176;
            }

            (*(v189 + 8))(v188, v168);
            sub_22C36DD28(v163, &qword_27D9BC1E8, &qword_22C9123B0);
            v169 = sub_22C37185C();
            v170(v169);
            *(v75 + 16) = v167 + 1;
            v171 = v75 + 16 * v167;
            *(v171 + 32) = v165;
            *(v171 + 40) = 4;
          }

          return v75;
        }

LABEL_81:
        v86 = 0;
        goto LABEL_82;
      }
    }

    v91 = sub_22C37185C();
    v92(v91);
    return MEMORY[0x277D84F90];
  }

  if (v54 == *MEMORY[0x277D1DA30] || v54 == *MEMORY[0x277D1DA08] || v54 == *MEMORY[0x277D1DA10])
  {
    goto LABEL_19;
  }

  if (v54 == *MEMORY[0x277D1DA70])
  {
    v89 = sub_22C38B9EC();
    v90(v89);
    return MEMORY[0x277D84F90];
  }

  if (v54 == *MEMORY[0x277D1DA88] || v54 == *MEMORY[0x277D1DAD8])
  {
    goto LABEL_19;
  }

  if (v54 == *MEMORY[0x277D1DAD0] || v54 == *MEMORY[0x277D1DA48])
  {
    goto LABEL_15;
  }

  if (v54 == *MEMORY[0x277D1DAE8] || v54 == *MEMORY[0x277D1D9F0])
  {
    goto LABEL_19;
  }

  if (v54 == *MEMORY[0x277D1DA90])
  {
    goto LABEL_15;
  }

  if (v54 == *MEMORY[0x277D1DAC8] || v54 == *MEMORY[0x277D1DAB0])
  {
    goto LABEL_19;
  }

  v98 = v54 == *MEMORY[0x277D1DA80] || v54 == *MEMORY[0x277D1DAE0];
  if (v98 || v54 == *MEMORY[0x277D1DAB8])
  {
    goto LABEL_15;
  }

  if (v54 == *MEMORY[0x277D1DA18] || v54 == *MEMORY[0x277D1DA00] || v54 == *MEMORY[0x277D1DA58])
  {
    goto LABEL_19;
  }

  if (v54 == *MEMORY[0x277D1DA28])
  {
LABEL_15:
    v59 = sub_22C38B9EC();
    v60(v59);
  }

  else if (v54 != *MEMORY[0x277D1DA40])
  {
    if (v54 == *MEMORY[0x277D1DA20] || v54 == *MEMORY[0x277D1DA38])
    {
      goto LABEL_20;
    }

    if (v54 != *MEMORY[0x277D1DAF0] && v54 != *MEMORY[0x277D1DA68])
    {
      sub_22C90B4EC();
      __break(1u);
      goto LABEL_81;
    }
  }

  v61 = sub_22C902D0C();
  sub_22C36C640(v20, 1, 3, v61);
  type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category(0);
  swift_storeEnumTagMultiPayload();
  sub_22C901FAC();
  v62 = swift_allocBox();
  sub_22C9068FC();
  v63 = *(type metadata accessor for PromptTreeIdentifier.TranscriptReference(0) + 20);
  *(v20 + v63) = v62;
  (*(*(v61 - 8) + 104))(v20 + v63, *MEMORY[0x277D1D798], v61);
  swift_storeEnumTagMultiPayload();
  v64 = sub_22C3A5908(&qword_27D9BC420, &qword_22C919300);
  v65 = swift_allocBox();
  v67 = v66;
  sub_22C45769C(v20, v66);
  type metadata accessor for PromptTreeIdentifier.Label(0);
  v68 = swift_allocBox();
  sub_22C486784();
  v69 = v202;
  v70 = sub_22C4ED364(v68 | 0x2000000000000000, v201);
  v71 = v69;
  if (v69)
  {

    sub_22C457700(v67);
    goto LABEL_111;
  }

  v72 = v70;
  v73 = *(v64 + 48);
  sub_22C457700(v20);

  sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
  v74 = swift_allocObject();
  *(v74 + 16) = v72;
  *(v67 + v73) = v74;
  sub_22C3A5908(&qword_27D9BC438, &unk_22C912FE0);
  v75 = swift_allocObject();
  *(v75 + 16) = xmmword_22C90F800;
  *(v75 + 32) = 1;
  *(v75 + 40) = v65 | 0x4000000000000002;
  return v75;
}

uint64_t sub_22C4ECDD4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v25[1] = a1;
  v27 = a2;
  v26 = type metadata accessor for PromptTreeIdentifier(0);
  MEMORY[0x28223BE20](v26);
  v3 = (v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_22C9097DC();
  v4 = sub_22C90A2CC();
  v6 = v5;

  *v3 = v4;
  v3[1] = v6;
  type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category.Local(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category(0);
  swift_storeEnumTagMultiPayload();
  v7 = sub_22C3A5908(&qword_27D9BC1F0, &qword_22C9123B8);
  v8 = swift_allocBox();
  v10 = v9;
  v11 = (v9 + *(v7 + 48));
  sub_22C901FAC();
  v12 = swift_allocBox();
  sub_22C9068FC();
  *v10 = v12;
  v13 = *MEMORY[0x277D1D798];
  v14 = sub_22C902D0C();
  v15 = *(*(v14 - 8) + 104);
  v15(v10, v13, v14);
  *v11 = sub_22C9097DC();
  v11[1] = v16;
  v17 = *(type metadata accessor for PromptTreeIdentifier.TranscriptReference(0) + 20);
  *(v3 + v17) = v8;
  v15((v3 + v17), *MEMORY[0x277D1D7B8], v14);
  swift_storeEnumTagMultiPayload();
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 24) = 0xE000000000000000;
  v19 = sub_22C3A5908(&qword_27D9BC420, &qword_22C919300);
  v20 = swift_allocBox();
  v22 = v21;
  v23 = *(v19 + 48);
  sub_22C4ED690(v3, v21);
  sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
  result = swift_allocObject();
  *(result + 16) = v18;
  *(v22 + v23) = result;
  *v27 = v20 | 0x4000000000000000;
  return result;
}

uint64_t sub_22C4ED034(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22C3A5908(&qword_27D9BAF00, &unk_22C912C80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22C90F870;
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0xE000000000000000;
  sub_22C591324();
  v9 = v8;
  v10 = *(v8 + 16);
  v11 = *(v8 + 24) >> 1;
  v12 = v10 + 1;
  if (v11 <= v10)
  {
    sub_22C591324();
    v9 = v30;
    v11 = *(v30 + 24) >> 1;
  }

  *(v9 + 16) = v12;
  *(v9 + 8 * v10 + 32) = v7;
  v13 = v10 + 2;
  if (v11 < (v10 + 2))
  {
    sub_22C591324();
    v9 = v31;
  }

  *(v9 + 16) = v13;
  *(v9 + 8 * v12 + 32) = a1;
  v14 = swift_allocObject();
  *(v14 + 16) = 2112800;
  *(v14 + 24) = 0xE300000000000000;
  v15 = *(v9 + 24);
  v16 = v10 + 3;

  if ((v10 + 3) > (v15 >> 1))
  {
    sub_22C591324();
    v9 = v32;
  }

  *(v9 + 16) = v16;
  *(v9 + 8 * v13 + 32) = v14;
  v17 = v10 + 4;
  if ((v10 + 4) > *(v9 + 24) >> 1)
  {
    sub_22C591324();
    v9 = v33;
  }

  *(v9 + 16) = v17;
  *(v9 + 8 * v16 + 32) = a2;
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 24) = 0xE000000000000000;
  v19 = *(v9 + 24);

  if ((v10 + 5) > (v19 >> 1))
  {
    sub_22C591324();
    v9 = v34;
  }

  *(v9 + 16) = v10 + 5;
  *(v9 + 8 * v17 + 32) = v18;
  v20 = sub_22C3DB9B0(v9);

  v21 = swift_allocObject();
  sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
  v22 = swift_allocObject();
  *(v22 + 16) = v20;
  *(v21 + 16) = v22;
  *(inited + 32) = v21 | 0x6000000000000000;
  v23 = sub_22C3DB9B0(a3);
  v24 = swift_allocObject();
  v25 = swift_allocObject();
  *(v25 + 16) = v23;
  *(v24 + 16) = v25;
  *(inited + 40) = v24 | 0x6000000000000000;
  v26 = sub_22C3DB9B0(inited);
  swift_setDeallocating();
  sub_22C58FFB0();
  v27 = swift_allocObject();
  v28 = swift_allocObject();
  *(v28 + 16) = v26;
  *(v27 + 16) = v28;
  return v27 | 0x6000000000000000;
}