uint64_t sub_217C36530@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v5 = *(a1 + 24);
  swift_unknownObjectRetain();
  if ([a2 tagType] == 3)
  {
    v6 = [a2 asSection];
    if (!v6 || (v7 = [v6 parentID], swift_unknownObjectRelease(), !v7))
    {
      result = swift_unknownObjectRelease();
LABEL_8:
      v14 = 2;
      goto LABEL_9;
    }
  }

  else
  {
    v7 = [a2 identifier];
  }

  v9 = sub_217D8954C();
  v11 = v10;

  v12 = [v5 purchasedTagIDs];
  v13 = sub_217D8973C();

  LOBYTE(v12) = sub_217C3682C(v9, v11, v13);

  swift_unknownObjectRelease();

  if ((v12 & 1) == 0)
  {
    goto LABEL_8;
  }

  v14 = 1;
LABEL_9:
  *a3 = v14;
  return result;
}

void sub_217C36680(uint64_t *__return_ptr a1@<X8>, id a2@<X1>, uint64_t a3@<X0>)
{
  v4 = *(a3 + 24);
  v5 = [a2 identifier];
  if (!v5)
  {
    sub_217D8954C();
    v5 = sub_217D8951C();
  }

  v6 = [v4 purchaseLookUpEntryForTagID_];

  if (!v6)
  {
    LOBYTE(v8) = 0;
    goto LABEL_7;
  }

  v7 = [v6 purchaseType];
  if (v7 < 3)
  {
    v8 = 0x30200u >> (8 * v7);

LABEL_7:
    *a1 = v8;
    return;
  }

  sub_217D89A9C();
  __break(1u);
}

uint64_t ChannelDataFactory.deinit()
{
  swift_unknownObjectRelease();

  return v0;
}

uint64_t ChannelDataFactory.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t sub_217C3682C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_217D89E1C();
  sub_217D895CC();
  v6 = sub_217D89E3C();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_217D89D4C() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_217C369EC()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA2890);
  __swift_project_value_buffer(v0, qword_27CBA2890);
  return sub_217D8866C();
}

uint64_t ArticleViewResignEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t ArticleViewResignEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleViewResignEvent(0) + 20);
  sub_217C372B0(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleViewResignEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleViewResignEvent(0) + 20);
  sub_217C372B0(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleViewResignEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleViewResignEvent(0) + 24);
  sub_217C372B0(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleViewResignEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleViewResignEvent(0) + 24);
  sub_217C372B0(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleViewResignEvent.orientationData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleViewResignEvent(0) + 28);
  sub_217C372B0(0, &qword_2811C86E8, sub_217A4CF30, sub_217A4CF88, &type metadata for OrientationData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleViewResignEvent.orientationData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleViewResignEvent(0) + 28);
  sub_217C372B0(0, &qword_2811C86E8, sub_217A4CF30, sub_217A4CF88, &type metadata for OrientationData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleViewResignEvent.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleViewResignEvent(0) + 32);
  sub_217C372B0(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleViewResignEvent.articleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleViewResignEvent(0) + 32);
  sub_217C372B0(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleViewResignEvent.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleViewResignEvent(0) + 36);
  sub_217C372B0(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217C372B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3();
    a4();
    v7 = sub_217D8829C();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t ArticleViewResignEvent.channelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleViewResignEvent(0) + 36);
  sub_217C372B0(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleViewResignEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for ArticleViewResignEvent(0);
  v5 = v4[5];
  sub_217C372B0(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217C372B0(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  sub_217C372B0(0, &qword_2811C86E8, sub_217A4CF30, sub_217A4CF88, &type metadata for OrientationData);
  (*(*(v10 - 8) + 104))(a1 + v9, v2, v10);
  v11 = v4[8];
  sub_217C372B0(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  (*(*(v12 - 8) + 104))(a1 + v11, v2, v12);
  v13 = v4[9];
  sub_217C372B0(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  v15 = *(*(v14 - 8) + 104);

  return v15(a1 + v13, v2, v14);
}

uint64_t ArticleViewResignEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ArticleViewResignEvent.Model(0) + 20));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t ArticleViewResignEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ArticleViewResignEvent.Model(0) + 24));
  v4 = v3[2];
  v10 = v3[1];
  v5 = v10;
  v11 = v4;
  v12 = *(v3 + 48);
  v6 = v12;
  v9 = *v3;
  *a1 = v9;
  *(a1 + 16) = v5;
  *(a1 + 32) = v4;
  *(a1 + 48) = v6;
  return sub_217ACC004(&v9, v8);
}

uint64_t ArticleViewResignEvent.Model.orientationData.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for ArticleViewResignEvent.Model(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t ArticleViewResignEvent.Model.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ArticleViewResignEvent.Model(0) + 32);
  v4 = *(v3 + 80);
  v5 = *(v3 + 112);
  v22 = *(v3 + 96);
  v23[0] = v5;
  v6 = *(v3 + 16);
  v7 = *(v3 + 48);
  v18 = *(v3 + 32);
  v8 = v18;
  v19 = v7;
  v9 = *(v3 + 48);
  v10 = *(v3 + 80);
  v20 = *(v3 + 64);
  v11 = v20;
  v21 = v10;
  v12 = *(v3 + 16);
  v17[0] = *v3;
  v13 = v17[0];
  v17[1] = v12;
  v14 = *(v3 + 112);
  *(a1 + 96) = v22;
  *(a1 + 112) = v14;
  *(a1 + 32) = v8;
  *(a1 + 48) = v9;
  *(a1 + 64) = v11;
  *(a1 + 80) = v4;
  *(v23 + 15) = *(v3 + 127);
  *(a1 + 127) = *(v3 + 127);
  *a1 = v13;
  *(a1 + 16) = v6;
  return sub_217AD1630(v17, v16);
}

uint64_t ArticleViewResignEvent.Model.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ArticleViewResignEvent.Model(0) + 36);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  v6 = *(v3 + 17);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  *a1 = *v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 17) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
}

__n128 ArticleViewResignEvent.Model.init(eventData:viewData:userBundleSubscriptionContextData:orientationData:articleData:channelData:)@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, __int16 *a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X8>)
{
  v11 = *a2;
  v12 = a2[1];
  v13 = *(a2 + 8);
  v14 = *a4;
  v31 = a6[1];
  v32 = *a6;
  v29 = *(a6 + 17);
  v30 = *(a6 + 16);
  v15 = a6[3];
  v16 = a6[4];
  v17 = sub_217D8899C();
  (*(*(v17 - 8) + 32))(a7, a1, v17);
  v18 = type metadata accessor for ArticleViewResignEvent.Model(0);
  v19 = a7 + v18[5];
  *v19 = v11;
  *(v19 + 8) = v12;
  *(v19 + 16) = v13;
  v20 = a7 + v18[6];
  v21 = *(a3 + 16);
  *v20 = *a3;
  *(v20 + 16) = v21;
  *(v20 + 32) = *(a3 + 32);
  *(v20 + 48) = *(a3 + 48);
  *(a7 + v18[7]) = v14;
  v22 = a7 + v18[8];
  v23 = *(a5 + 48);
  *(v22 + 32) = *(a5 + 32);
  *(v22 + 48) = v23;
  v24 = *(a5 + 16);
  *v22 = *a5;
  *(v22 + 16) = v24;
  *(v22 + 127) = *(a5 + 127);
  v25 = *(a5 + 112);
  *(v22 + 96) = *(a5 + 96);
  *(v22 + 112) = v25;
  result = *(a5 + 64);
  v27 = *(a5 + 80);
  *(v22 + 64) = result;
  *(v22 + 80) = v27;
  v28 = a7 + v18[9];
  *v28 = v32;
  *(v28 + 8) = v31;
  *(v28 + 16) = v30;
  *(v28 + 17) = v29;
  *(v28 + 24) = v15;
  *(v28 + 32) = v16;
  return result;
}

uint64_t sub_217C37A7C()
{
  v1 = *v0;
  v2 = 0x746144746E657665;
  v3 = 0x7461746E6569726FLL;
  v4 = 0x44656C6369747261;
  if (v1 != 4)
  {
    v4 = 0x446C656E6E616863;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6174614477656976;
  if (v1 != 1)
  {
    v5 = 0xD000000000000021;
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

uint64_t sub_217C37B5C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217C39090(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217C37B84(uint64_t a1)
{
  v2 = sub_217C380B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C37BC0(uint64_t a1)
{
  v2 = sub_217C380B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ArticleViewResignEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217C387B8(0, &qword_27CBA28A8, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v33[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C380B0();
  sub_217D89E7C();
  LOBYTE(v51[0]) = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410, MEMORY[0x277CEAEB8]);
  sub_217D89CAC();
  if (!v2)
  {
    v10 = type metadata accessor for ArticleViewResignEvent.Model(0);
    v11 = (v3 + v10[5]);
    v12 = *v11;
    v13 = v11[1];
    LOWORD(v11) = *(v11 + 8);
    v70 = v12;
    v71 = v13;
    v72 = v11;
    v69 = 1;
    sub_217A5E790();

    sub_217D89CAC();

    v14 = (v3 + v10[6]);
    v15 = v14[1];
    v67[0] = *v14;
    v67[1] = v15;
    v17 = *v14;
    v16 = v14[1];
    v67[2] = v14[2];
    v68 = *(v14 + 48);
    v63 = v17;
    v64 = v16;
    v65 = v14[2];
    v66 = *(v14 + 48);
    v62 = 2;
    sub_217ACC004(v67, v51);
    sub_217A55B98();
    sub_217D89CAC();
    v60[0] = v63;
    v60[1] = v64;
    v60[2] = v65;
    v61 = v66;
    sub_217ACC69C(v60);
    v59 = *(v3 + v10[7]);
    v58 = 3;
    sub_217A4CF88();
    sub_217D89CAC();
    v18 = v3 + v10[8];
    v19 = *(v18 + 96);
    v20 = *(v18 + 64);
    v55 = *(v18 + 80);
    v56 = v19;
    v21 = *(v18 + 96);
    *v57 = *(v18 + 112);
    v22 = *(v18 + 16);
    v23 = *(v18 + 48);
    v52 = *(v18 + 32);
    v53 = v23;
    v24 = *(v18 + 48);
    v54 = *(v18 + 64);
    v25 = *(v18 + 16);
    v51[0] = *v18;
    v51[1] = v25;
    v48 = v55;
    v49 = v21;
    v50[0] = *(v18 + 112);
    v45 = v52;
    v46 = v24;
    v47 = v20;
    *&v57[15] = *(v18 + 127);
    *(v50 + 15) = *(v18 + 127);
    v43 = v51[0];
    v44 = v22;
    v42 = 4;
    sub_217AD1630(v51, v40);
    sub_217ACF52C();
    sub_217D89CAC();
    v40[6] = v49;
    *v41 = v50[0];
    *&v41[15] = *(v50 + 15);
    v40[2] = v45;
    v40[3] = v46;
    v40[4] = v47;
    v40[5] = v48;
    v40[0] = v43;
    v40[1] = v44;
    sub_217AD2864(v40);
    v27 = (v3 + v10[9]);
    v28 = v27[1];
    v29 = *(v27 + 16);
    v30 = *(v27 + 17);
    v31 = v27[3];
    v32 = v27[4];
    v34 = *v27;
    v35 = v28;
    v36 = v29;
    v37 = v30;
    v38 = v31;
    v39 = v32;
    v33[7] = 5;
    sub_217AD084C();

    sub_217D89CAC();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_217C380B0()
{
  result = qword_27CBA28B0;
  if (!qword_27CBA28B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA28B0);
  }

  return result;
}

uint64_t ArticleViewResignEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v4 = sub_217D8899C();
  v34 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217C387B8(0, &qword_27CBA28B8, MEMORY[0x277D844C8]);
  v36 = v7;
  v35 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v32 - v8;
  v10 = type metadata accessor for ArticleViewResignEvent.Model(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v57 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_217C380B0();
  v37 = v9;
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v57);
  }

  v14 = v35;
  LOBYTE(v49) = 0;
  sub_217A602A0(&qword_2811C8408, MEMORY[0x277CEAEC0]);
  sub_217D89BCC();
  (*(v34 + 32))(v12, v6, v4);
  LOBYTE(v47[0]) = 1;
  sub_217A5E738();
  sub_217D89BCC();
  v15 = *(&v49 + 1);
  v16 = v50;
  v17 = &v12[v10[5]];
  *v17 = v49;
  *(v17 + 1) = v15;
  *(v17 + 8) = v16;
  v46 = 2;
  sub_217A54D08();
  sub_217D89BCC();
  v18 = &v12[v10[6]];
  v19 = v47[1];
  *v18 = v47[0];
  *(v18 + 1) = v19;
  *(v18 + 2) = v47[2];
  v18[48] = v48;
  LOBYTE(v39) = 3;
  sub_217A4CF30();
  sub_217D89BCC();
  *&v12[v10[7]] = v49;
  v45 = 4;
  sub_217ACF4D8();
  sub_217D89BCC();
  v20 = &v12[v10[8]];
  v21 = *v56;
  *(v20 + 6) = v55;
  *(v20 + 7) = v21;
  *(v20 + 127) = *&v56[15];
  v22 = v52;
  *(v20 + 2) = v51;
  *(v20 + 3) = v22;
  v23 = v54;
  *(v20 + 4) = v53;
  *(v20 + 5) = v23;
  v24 = v50;
  *v20 = v49;
  *(v20 + 1) = v24;
  v38 = 5;
  sub_217AD07F8();
  sub_217D89BCC();
  (*(v14 + 8))(v37, v36);
  v25 = v40;
  v26 = v41;
  v27 = v42;
  v28 = v43;
  v29 = v44;
  v30 = &v12[v10[9]];
  *v30 = v39;
  *(v30 + 1) = v25;
  v30[16] = v26;
  v30[17] = v27;
  *(v30 + 3) = v28;
  *(v30 + 4) = v29;
  sub_217C3881C(v12, v33);
  __swift_destroy_boxed_opaque_existential_1(v57);
  return sub_217C38880(v12);
}

void sub_217C387B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217C380B0();
    v7 = a3(a1, &type metadata for ArticleViewResignEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217C3881C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArticleViewResignEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217C38880(uint64_t a1)
{
  v2 = type metadata accessor for ArticleViewResignEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217C389B4@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217C372B0(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_217C372B0(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  sub_217C372B0(0, &qword_2811C86E8, sub_217A4CF30, sub_217A4CF88, &type metadata for OrientationData);
  (*(*(v11 - 8) + 104))(a2 + v10, v4, v11);
  v12 = a1[8];
  sub_217C372B0(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  (*(*(v13 - 8) + 104))(a2 + v12, v4, v13);
  v14 = a1[9];
  sub_217C372B0(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  v16 = *(*(v15 - 8) + 104);

  return v16(a2 + v14, v4, v15);
}

void sub_217C38CB4(uint64_t a1)
{
  sub_217A6018C(319);
  if (v1 <= 0x3F)
  {
    sub_217C372B0(319, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
    if (v2 <= 0x3F)
    {
      sub_217C372B0(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
      if (v3 <= 0x3F)
      {
        sub_217C372B0(319, &qword_2811C86E8, sub_217A4CF30, sub_217A4CF88, &type metadata for OrientationData);
        if (v4 <= 0x3F)
        {
          sub_217C372B0(319, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
          if (v5 <= 0x3F)
          {
            sub_217C372B0(319, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_217C38ED8(uint64_t a1)
{
  result = sub_217D8899C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_217C38F8C()
{
  result = qword_27CBA28C0;
  if (!qword_27CBA28C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA28C0);
  }

  return result;
}

unint64_t sub_217C38FE4()
{
  result = qword_27CBA28C8;
  if (!qword_27CBA28C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA28C8);
  }

  return result;
}

unint64_t sub_217C3903C()
{
  result = qword_27CBA28D0;
  if (!qword_27CBA28D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA28D0);
  }

  return result;
}

uint64_t sub_217C39090(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6174614477656976 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7461746E6569726FLL && a2 == 0xEF617461446E6F69 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x44656C6369747261 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x446C656E6E616863 && a2 == 0xEB00000000617461)
  {

    return 5;
  }

  else
  {
    v6 = sub_217D89D4C();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

NewsAnalytics::FeedConfigSource_optional __swiftcall FeedConfigSource.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217D89B0C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t FeedConfigSource.rawValue.getter()
{
  v1 = 0x74694B64756F6C63;
  if (*v0 != 1)
  {
    v1 = 0x656764457377656ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

uint64_t sub_217C39368(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x74694B64756F6C63;
  if (v2 != 1)
  {
    v3 = 0x656764457377656ELL;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x6E776F6E6B6E75;
  }

  if (v2)
  {
    v5 = 0xE800000000000000;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  v6 = 0x74694B64756F6C63;
  if (*a2 != 1)
  {
    v6 = 0x656764457377656ELL;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x6E776F6E6B6E75;
  }

  if (*a2)
  {
    v8 = 0xE800000000000000;
  }

  else
  {
    v8 = 0xE700000000000000;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_217D89D4C();
  }

  return v9 & 1;
}

unint64_t sub_217C39470()
{
  result = qword_27CBA28D8;
  if (!qword_27CBA28D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA28D8);
  }

  return result;
}

uint64_t sub_217C394C4()
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217C39568(uint64_t a1)
{
  sub_217D895CC();
}

uint64_t sub_217C395F8(uint64_t a1)
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

void sub_217C396A4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x74694B64756F6C63;
  if (v2 != 1)
  {
    v4 = 0x656764457377656ELL;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x6E776F6E6B6E75;
  }

  if (!v5)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

unint64_t sub_217C397C4()
{
  result = qword_2811C5268;
  if (!qword_2811C5268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C5268);
  }

  return result;
}

NewsAnalytics::SearchOriginationType_optional __swiftcall SearchOriginationType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217D89B0C();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t SearchOriginationType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x6553746E65636572;
  v4 = 0xD000000000000016;
  if (v1 != 3)
  {
    v4 = 0xD000000000000019;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6142686372616573;
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

unint64_t sub_217C39930()
{
  result = qword_27CBA28E0;
  if (!qword_27CBA28E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA28E0);
  }

  return result;
}

uint64_t sub_217C39984()
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217C39A78(uint64_t a1)
{
  sub_217D895CC();
}

uint64_t sub_217C39B58(uint64_t a1)
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

void sub_217C39C54(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xEC00000068637261;
  v6 = 0x6553746E65636572;
  v7 = 0xD000000000000016;
  v8 = 0x8000000217DCB430;
  if (v2 != 3)
  {
    v7 = 0xD000000000000019;
    v8 = 0x8000000217DCB450;
  }

  if (v2 != 2)
  {
    v6 = v7;
    v5 = v8;
  }

  if (*v1)
  {
    v4 = 0x6142686372616573;
    v3 = 0xE900000000000072;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_217C39DC4()
{
  result = qword_27CBA28E8;
  if (!qword_27CBA28E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA28E8);
  }

  return result;
}

uint64_t sub_217C39EE0()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA2920);
  __swift_project_value_buffer(v0, qword_27CBA2920);
  return sub_217D8866C();
}

uint64_t LiveActivityUnsubscribeEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t LiveActivityUnsubscribeEvent.groupData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LiveActivityUnsubscribeEvent(0) + 20);
  sub_217C3A7A4(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t LiveActivityUnsubscribeEvent.groupData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for LiveActivityUnsubscribeEvent(0) + 20);
  sub_217C3A7A4(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t LiveActivityUnsubscribeEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LiveActivityUnsubscribeEvent(0) + 24);
  sub_217C3A7A4(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t LiveActivityUnsubscribeEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for LiveActivityUnsubscribeEvent(0) + 24);
  sub_217C3A7A4(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t LiveActivityUnsubscribeEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LiveActivityUnsubscribeEvent(0) + 28);
  sub_217C3A7A4(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t LiveActivityUnsubscribeEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for LiveActivityUnsubscribeEvent(0) + 28);
  sub_217C3A7A4(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t LiveActivityUnsubscribeEvent.liveActivityData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LiveActivityUnsubscribeEvent(0) + 32);
  sub_217C3A7A4(0, &qword_27CB9F3F8, sub_217B0F410, sub_217B0F464, &type metadata for LiveActivityData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t LiveActivityUnsubscribeEvent.liveActivityData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for LiveActivityUnsubscribeEvent(0) + 32);
  sub_217C3A7A4(0, &qword_27CB9F3F8, sub_217B0F410, sub_217B0F464, &type metadata for LiveActivityData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t LiveActivityUnsubscribeEvent.liveActivityDismissalData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LiveActivityUnsubscribeEvent(0) + 36);
  sub_217C3A7A4(0, &qword_27CB9F440, sub_217B0FD44, sub_217B0FD98, &type metadata for LiveActivityDismissalData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217C3A7A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3();
    a4();
    v7 = sub_217D8829C();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t LiveActivityUnsubscribeEvent.liveActivityDismissalData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for LiveActivityUnsubscribeEvent(0) + 36);
  sub_217C3A7A4(0, &qword_27CB9F440, sub_217B0FD44, sub_217B0FD98, &type metadata for LiveActivityDismissalData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t LiveActivityUnsubscribeEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for LiveActivityUnsubscribeEvent(0);
  v5 = v4[5];
  v6 = *MEMORY[0x277CEACF0];
  sub_217C3A7A4(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  (*(*(v7 - 8) + 104))(a1 + v5, v6, v7);
  v8 = v4[6];
  sub_217C3A7A4(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  (*(*(v9 - 8) + 104))(a1 + v8, v6, v9);
  v10 = v4[7];
  sub_217C3A7A4(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v11 - 8) + 104))(a1 + v10, v2, v11);
  v12 = v4[8];
  sub_217C3A7A4(0, &qword_27CB9F3F8, sub_217B0F410, sub_217B0F464, &type metadata for LiveActivityData);
  (*(*(v13 - 8) + 104))(a1 + v12, v2, v13);
  v14 = v4[9];
  sub_217C3A7A4(0, &qword_27CB9F440, sub_217B0FD44, sub_217B0FD98, &type metadata for LiveActivityDismissalData);
  v16 = *(*(v15 - 8) + 104);

  return v16(a1 + v14, v2, v15);
}

uint64_t LiveActivityUnsubscribeEvent.Model.groupData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for LiveActivityUnsubscribeEvent.Model(0) + 20));
  v4 = v3[5];
  v5 = v3[7];
  v22 = v3[6];
  v23 = v5;
  v6 = v3[7];
  v24 = v3[8];
  v7 = v3[1];
  v8 = v3[3];
  v18 = v3[2];
  v9 = v18;
  v19 = v8;
  v10 = v3[3];
  v11 = v3[5];
  v20 = v3[4];
  v12 = v20;
  v21 = v11;
  v13 = v3[1];
  v17[0] = *v3;
  v14 = v17[0];
  v17[1] = v13;
  a1[6] = v22;
  a1[7] = v6;
  a1[8] = v3[8];
  a1[2] = v9;
  a1[3] = v10;
  a1[4] = v12;
  a1[5] = v4;
  *a1 = v14;
  a1[1] = v7;
  return sub_217AD87FC(v17, &v16);
}

uint64_t LiveActivityUnsubscribeEvent.Model.feedData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for LiveActivityUnsubscribeEvent.Model(0) + 24));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;

  return sub_217AD1A68(v4, v5, v6);
}

uint64_t LiveActivityUnsubscribeEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for LiveActivityUnsubscribeEvent.Model(0) + 28));
  v4 = v3[2];
  v10 = v3[1];
  v5 = v10;
  v11 = v4;
  v12 = *(v3 + 48);
  v6 = v12;
  v9 = *v3;
  *a1 = v9;
  *(a1 + 16) = v5;
  *(a1 + 32) = v4;
  *(a1 + 48) = v6;
  return sub_217ACC004(&v9, v8);
}

uint64_t LiveActivityUnsubscribeEvent.Model.liveActivityData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for LiveActivityUnsubscribeEvent.Model(0) + 32));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t LiveActivityUnsubscribeEvent.Model.liveActivityDismissalData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for LiveActivityUnsubscribeEvent.Model(0);
  *a1 = *(v1 + *(result + 36));
  return result;
}

__n128 LiveActivityUnsubscribeEvent.Model.init(eventData:groupData:feedData:userBundleSubscriptionContextData:liveActivityData:liveActivityDismissalData:)@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, char *a6@<X5>, uint64_t a7@<X8>)
{
  v27 = *a3;
  v11 = *(a3 + 2);
  v12 = *a5;
  v13 = a5[1];
  v14 = *a6;
  v15 = sub_217D8899C();
  (*(*(v15 - 8) + 32))(a7, a1, v15);
  v16 = type metadata accessor for LiveActivityUnsubscribeEvent.Model(0);
  v17 = (a7 + v16[5]);
  v18 = a2[3];
  v17[2] = a2[2];
  v17[3] = v18;
  v19 = a2[1];
  *v17 = *a2;
  v17[1] = v19;
  v20 = a2[8];
  v17[7] = a2[7];
  v17[8] = v20;
  v21 = a2[6];
  v17[5] = a2[5];
  v17[6] = v21;
  v17[4] = a2[4];
  v22 = a7 + v16[6];
  *v22 = v27;
  *(v22 + 16) = v11;
  v23 = a7 + v16[7];
  v24 = *(a4 + 16);
  *v23 = *a4;
  *(v23 + 16) = v24;
  result = *(a4 + 32);
  *(v23 + 32) = result;
  *(v23 + 48) = *(a4 + 48);
  v26 = (a7 + v16[8]);
  *v26 = v12;
  v26[1] = v13;
  *(a7 + v16[9]) = v14;
  return result;
}

unint64_t sub_217C3AF2C()
{
  v1 = *v0;
  v2 = 0x746144746E657665;
  v3 = 0xD000000000000021;
  v4 = 0xD000000000000010;
  if (v1 != 4)
  {
    v4 = 0xD000000000000019;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x74614470756F7267;
  if (v1 != 1)
  {
    v5 = 0x6174614464656566;
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

uint64_t sub_217C3AFF8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217C3C570(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217C3B020(uint64_t a1)
{
  v2 = sub_217C3B50C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C3B05C(uint64_t a1)
{
  v2 = sub_217C3B50C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LiveActivityUnsubscribeEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217C3BC4C(0, &qword_27CBA2938, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v31 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C3B50C();
  sub_217D89E7C();
  v68[0] = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410, MEMORY[0x277CEAEB8]);
  sub_217D89CAC();
  if (!v2)
  {
    v10 = type metadata accessor for LiveActivityUnsubscribeEvent.Model(0);
    v11 = (v3 + v10[5]);
    v12 = v11[6];
    v13 = v11[4];
    v64 = v11[5];
    v65 = v12;
    v14 = v11[6];
    v15 = v11[8];
    v66 = v11[7];
    v67 = v15;
    v16 = v11[2];
    v17 = *v11;
    v60 = v11[1];
    v61 = v16;
    v18 = v11[2];
    v19 = v11[4];
    v62 = v11[3];
    v63 = v19;
    v20 = *v11;
    v56 = v14;
    v57 = v66;
    v58 = v11[8];
    v59 = v20;
    v52 = v18;
    v53 = v62;
    v54 = v13;
    v55 = v64;
    v50 = v17;
    v51 = v60;
    v49 = 1;
    sub_217AD87FC(&v59, v48);
    sub_217A5D3B4();
    sub_217D89C3C();
    v48[6] = v56;
    v48[7] = v57;
    v48[8] = v58;
    v48[2] = v52;
    v48[3] = v53;
    v48[4] = v54;
    v48[5] = v55;
    v48[0] = v50;
    v48[1] = v51;
    sub_217AD96E8(v48);
    v21 = (v3 + v10[6]);
    v22 = v21[1];
    v23 = v21[2];
    v45 = *v21;
    v46 = v22;
    v47 = v23;
    v44 = 2;
    sub_217AD1A68(v45, v22, v23);
    sub_217A5BA2C();
    sub_217D89C3C();
    sub_217AD290C(v45, v46, v47);
    v24 = (v3 + v10[7]);
    v25 = v24[1];
    v42[0] = *v24;
    v42[1] = v25;
    v27 = *v24;
    v26 = v24[1];
    v42[2] = v24[2];
    v43 = *(v24 + 48);
    v38 = v27;
    v39 = v26;
    v40 = v24[2];
    v41 = *(v24 + 48);
    v37 = 3;
    sub_217ACC004(v42, v35);
    sub_217A55B98();
    sub_217D89CAC();
    v35[0] = v38;
    v35[1] = v39;
    v35[2] = v40;
    v36 = v41;
    sub_217ACC69C(v35);
    v28 = (v3 + v10[8]);
    v29 = v28[1];
    v33 = *v28;
    v34 = v29;
    v32 = 4;
    sub_217B0F464();

    sub_217D89CAC();

    LOBYTE(v33) = *(v3 + v10[9]);
    v32 = 5;
    sub_217B0FD98();
    sub_217D89CAC();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_217C3B50C()
{
  result = qword_27CBA2940;
  if (!qword_27CBA2940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2940);
  }

  return result;
}

uint64_t LiveActivityUnsubscribeEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v4 = sub_217D8899C();
  v30 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v32 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217C3BC4C(0, &qword_27CBA2948, MEMORY[0x277D844C8]);
  v52 = v6;
  v31 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v28 - v7;
  v9 = type metadata accessor for LiveActivityUnsubscribeEvent.Model(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C3B50C();
  v33 = v8;
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v31;
  LOBYTE(v43) = 0;
  sub_217A602A0(&qword_2811C8408, MEMORY[0x277CEAEC0]);
  v13 = v32;
  sub_217D89BCC();
  (*(v30 + 32))(v11, v13, v4);
  v42 = 1;
  sub_217A5D308();
  sub_217D89B5C();
  v14 = &v11[v9[5]];
  v15 = v48;
  v16 = v50;
  v17 = v51;
  *(v14 + 6) = v49;
  *(v14 + 7) = v16;
  *(v14 + 8) = v17;
  v18 = v46;
  v19 = v47;
  *(v14 + 2) = v45;
  *(v14 + 3) = v18;
  *(v14 + 4) = v19;
  *(v14 + 5) = v15;
  v20 = v44;
  *v14 = v43;
  *(v14 + 1) = v20;
  LOBYTE(v35) = 2;
  sub_217A5B978();
  v32 = 0;
  sub_217D89B5C();
  v21 = v39;
  v22 = &v11[v9[6]];
  *v22 = v38;
  *(v22 + 2) = v21;
  v37 = 3;
  sub_217A54D08();
  sub_217D89BCC();
  v23 = &v11[v9[7]];
  v24 = v39;
  *v23 = v38;
  *(v23 + 1) = v24;
  *(v23 + 2) = v40;
  v23[48] = v41;
  v34 = 4;
  sub_217B0F410();
  sub_217D89BCC();
  v25 = v36;
  v26 = &v11[v9[8]];
  *v26 = v35;
  *(v26 + 1) = v25;
  v34 = 5;
  sub_217B0FD44();
  sub_217D89BCC();
  (*(v12 + 8))(v33, v52);
  v11[v9[9]] = v35;
  sub_217C3BCB0(v11, v29);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_217C3BD14(v11);
}

void sub_217C3BC4C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217C3B50C();
    v7 = a3(a1, &type metadata for LiveActivityUnsubscribeEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217C3BCB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LiveActivityUnsubscribeEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217C3BD14(uint64_t a1)
{
  v2 = type metadata accessor for LiveActivityUnsubscribeEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217C3BE48@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  v7 = *MEMORY[0x277CEACF0];
  sub_217C3A7A4(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  (*(*(v8 - 8) + 104))(a2 + v6, v7, v8);
  v9 = a1[6];
  sub_217C3A7A4(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  (*(*(v10 - 8) + 104))(a2 + v9, v7, v10);
  v11 = a1[7];
  sub_217C3A7A4(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v12 - 8) + 104))(a2 + v11, v4, v12);
  v13 = a1[8];
  sub_217C3A7A4(0, &qword_27CB9F3F8, sub_217B0F410, sub_217B0F464, &type metadata for LiveActivityData);
  (*(*(v14 - 8) + 104))(a2 + v13, v4, v14);
  v15 = a1[9];
  sub_217C3A7A4(0, &qword_27CB9F440, sub_217B0FD44, sub_217B0FD98, &type metadata for LiveActivityDismissalData);
  v17 = *(*(v16 - 8) + 104);

  return v17(a2 + v15, v4, v16);
}

void sub_217C3C15C(uint64_t a1)
{
  sub_217A6018C(319);
  if (v1 <= 0x3F)
  {
    sub_217C3A7A4(319, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
    if (v2 <= 0x3F)
    {
      sub_217C3A7A4(319, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
      if (v3 <= 0x3F)
      {
        sub_217C3A7A4(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
        if (v4 <= 0x3F)
        {
          sub_217C3A7A4(319, &qword_27CB9F3F8, sub_217B0F410, sub_217B0F464, &type metadata for LiveActivityData);
          if (v5 <= 0x3F)
          {
            sub_217C3A7A4(319, &qword_27CB9F440, sub_217B0FD44, sub_217B0FD98, &type metadata for LiveActivityDismissalData);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_217C3C380(uint64_t a1)
{
  sub_217D8899C();
  if (v1 <= 0x3F)
  {
    sub_217A5E974(319, &qword_2811BD178, &type metadata for GroupData);
    if (v2 <= 0x3F)
    {
      sub_217A5E974(319, &qword_2811BD308, &type metadata for FeedData);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_217C3C46C()
{
  result = qword_27CBA2970;
  if (!qword_27CBA2970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2970);
  }

  return result;
}

unint64_t sub_217C3C4C4()
{
  result = qword_27CBA2978;
  if (!qword_27CBA2978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2978);
  }

  return result;
}

unint64_t sub_217C3C51C()
{
  result = qword_27CBA2980;
  if (!qword_27CBA2980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2980);
  }

  return result;
}

uint64_t sub_217C3C570(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74614470756F7267 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6174614464656566 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000217DCD8E0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000019 && 0x8000000217DCD920 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_217D89D4C();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

NewsAnalytics::CellularRadioAccessTechnology_optional __swiftcall CellularRadioAccessTechnology.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217D89B0C();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t CellularRadioAccessTechnology.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 1851881335;
  v4 = 0x47356E617777;
  if (v1 != 3)
  {
    v4 = 0x6863616552746F6ELL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1768319351;
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

unint64_t sub_217C3C878()
{
  result = qword_27CBA2988;
  if (!qword_27CBA2988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2988);
  }

  return result;
}

uint64_t sub_217C3C8CC()
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217C3C9A4(uint64_t a1)
{
  sub_217D895CC();
}

uint64_t sub_217C3CA68(uint64_t a1)
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

void sub_217C3CB48(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xE400000000000000;
  v6 = 1851881335;
  v7 = 0xE600000000000000;
  v8 = 0x47356E617777;
  if (v2 != 3)
  {
    v8 = 0x6863616552746F6ELL;
    v7 = 0xEC000000656C6261;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 1768319351;
    v3 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_217C3CC9C()
{
  result = qword_2811BE500;
  if (!qword_2811BE500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BE500);
  }

  return result;
}

uint64_t sub_217C3CDB8()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA2990);
  __swift_project_value_buffer(v0, qword_27CBA2990);
  return sub_217D8866C();
}

uint64_t SearchExposureEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t SearchExposureEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SearchExposureEvent(0) + 20);
  sub_217A608E0(0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SearchExposureEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SearchExposureEvent(0) + 24);
  sub_217A62D60(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SearchExposureEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SearchExposureEvent(0) + 24);
  sub_217A62D60(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SearchExposureEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SearchExposureEvent(0) + 28);
  sub_217A62D60(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SearchExposureEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SearchExposureEvent(0) + 28);
  sub_217A62D60(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SearchExposureEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for SearchExposureEvent(0);
  v5 = v4[5];
  sub_217A608E0(0);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217A62D60(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  sub_217A62D60(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v11 = *(*(v10 - 8) + 104);

  return v11(a1 + v9, v2, v10);
}

uint64_t sub_217C3D554@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t SearchExposureEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SearchExposureEvent.Model(0) + 24));
  v4 = v3[2];
  v10 = v3[1];
  v5 = v10;
  v11 = v4;
  v12 = *(v3 + 48);
  v6 = v12;
  v9 = *v3;
  *a1 = v9;
  *(a1 + 16) = v5;
  *(a1 + 32) = v4;
  *(a1 + 48) = v6;
  return sub_217ACC004(&v9, v8);
}

uint64_t SearchExposureEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SearchExposureEvent.Model(0) + 28));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

__n128 SearchExposureEvent.Model.init(eventData:timedData:userBundleSubscriptionContextData:viewData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a4;
  v10 = a4[1];
  v11 = *(a4 + 8);
  v12 = sub_217D8899C();
  (*(*(v12 - 8) + 32))(a5, a1, v12);
  v13 = type metadata accessor for SearchExposureEvent.Model(0);
  v14 = v13[5];
  v15 = sub_217D889CC();
  (*(*(v15 - 8) + 32))(a5 + v14, a2, v15);
  v16 = a5 + v13[6];
  v17 = *(a3 + 16);
  *v16 = *a3;
  *(v16 + 16) = v17;
  result = *(a3 + 32);
  *(v16 + 32) = result;
  *(v16 + 48) = *(a3 + 48);
  v19 = a5 + v13[7];
  *v19 = v9;
  *(v19 + 8) = v10;
  *(v19 + 16) = v11;
  return result;
}

unint64_t sub_217C3D7BC()
{
  v1 = 0x746144746E657665;
  v2 = 0xD000000000000021;
  if (*v0 != 2)
  {
    v2 = 0x6174614477656976;
  }

  if (*v0)
  {
    v1 = 0x74614464656D6974;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_217C3D83C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217C3E8D8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217C3D864(uint64_t a1)
{
  v2 = sub_217C3DC40();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C3D8A0(uint64_t a1)
{
  v2 = sub_217C3DC40();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SearchExposureEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217C3E204(0, &qword_27CBA29A8, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v19[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C3DC40();
  sub_217D89E7C();
  LOBYTE(v30[0]) = 0;
  sub_217D8899C();
  sub_217A60258(&unk_2811C8410, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEB8]);
  sub_217D89CAC();
  if (!v2)
  {
    v10 = type metadata accessor for SearchExposureEvent.Model(0);
    v32 = 1;
    sub_217D889CC();
    sub_217A60258(&qword_2811C83F8, MEMORY[0x277CEAED0], MEMORY[0x277CEAED8]);
    sub_217D89CAC();
    v11 = (v3 + *(v10 + 24));
    v12 = v11[1];
    v30[0] = *v11;
    v30[1] = v12;
    v14 = *v11;
    v13 = v11[1];
    v30[2] = v11[2];
    v31 = *(v11 + 48);
    v26 = v14;
    v27 = v13;
    v28 = v11[2];
    v29 = *(v11 + 48);
    v25 = 2;
    sub_217ACC004(v30, v23);
    sub_217A55B98();
    sub_217D89CAC();
    v23[0] = v26;
    v23[1] = v27;
    v23[2] = v28;
    v24 = v29;
    sub_217ACC69C(v23);
    v15 = (v3 + *(v10 + 28));
    v16 = *v15;
    v17 = v15[1];
    LOWORD(v15) = *(v15 + 8);
    v20 = v16;
    v21 = v17;
    v22 = v15;
    v19[7] = 3;
    sub_217A5E790();

    sub_217D89CAC();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_217C3DC40()
{
  result = qword_27CBA29B0;
  if (!qword_27CBA29B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA29B0);
  }

  return result;
}

uint64_t SearchExposureEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v31 = sub_217D889CC();
  v29 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_217D8899C();
  v30 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v33 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217C3E204(0, &qword_27CBA29B8, MEMORY[0x277D844C8]);
  v35 = v7;
  v32 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v28 - v8;
  v10 = type metadata accessor for SearchExposureEvent.Model(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C3DC40();
  v34 = v9;
  v13 = v36;
  sub_217D89E5C();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v14 = v4;
  v36 = v10;
  v16 = v30;
  v15 = v31;
  LOBYTE(v40) = 0;
  sub_217A60258(&qword_2811C8408, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEC0]);
  sub_217D89BCC();
  v17 = *(v16 + 32);
  v18 = v12;
  v19 = v33;
  v33 = v5;
  v17(v12, v19);
  LOBYTE(v40) = 1;
  sub_217A60258(&qword_2811C83F0, MEMORY[0x277CEAED0], MEMORY[0x277CEAEE0]);
  v20 = v14;
  sub_217D89BCC();
  v21 = v36;
  (*(v29 + 32))(v18 + *(v36 + 20), v20, v15);
  v45 = 2;
  sub_217A54D08();
  sub_217D89BCC();
  v22 = v18 + *(v21 + 24);
  v23 = v41;
  *v22 = v40;
  *(v22 + 16) = v23;
  *(v22 + 32) = v42;
  *(v22 + 48) = v43;
  v44 = 3;
  sub_217A5E738();
  sub_217D89BCC();
  (*(v32 + 8))(v34, v35);
  v24 = v38;
  v25 = v39;
  v26 = v18 + *(v21 + 28);
  *v26 = v37;
  *(v26 + 8) = v24;
  *(v26 + 16) = v25;
  sub_217C3E268(v18, v28);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_217C3E2CC(v18);
}

void sub_217C3E204(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217C3DC40();
    v7 = a3(a1, &type metadata for SearchExposureEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217C3E268(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchExposureEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217C3E2CC(uint64_t a1)
{
  v2 = type metadata accessor for SearchExposureEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217C3E400@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217A608E0(0);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_217A62D60(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  sub_217A62D60(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v12 = *(*(v11 - 8) + 104);

  return v12(a2 + v10, v4, v11);
}

void sub_217C3E5D8(uint64_t a1)
{
  sub_217A6018C(319);
  if (v1 <= 0x3F)
  {
    sub_217A608E0(319);
    if (v2 <= 0x3F)
    {
      sub_217A62D60(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
      if (v3 <= 0x3F)
      {
        sub_217A62D60(319, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_217C3E724(uint64_t a1)
{
  result = sub_217D8899C();
  if (v2 <= 0x3F)
  {
    result = sub_217D889CC();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_217C3E7D4()
{
  result = qword_27CBA29D0;
  if (!qword_27CBA29D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA29D0);
  }

  return result;
}

unint64_t sub_217C3E82C()
{
  result = qword_27CBA29D8;
  if (!qword_27CBA29D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA29D8);
  }

  return result;
}

unint64_t sub_217C3E884()
{
  result = qword_27CBA29E0;
  if (!qword_27CBA29E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA29E0);
  }

  return result;
}

uint64_t sub_217C3E8D8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74614464656D6974 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6174614477656976 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_217D89D4C();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t AdData.opportunityIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t AdData.opportunityIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t AdData.placementIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t AdData.placementIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

void __swiftcall AdData.init(opportunityIdentifier:placementIdentifier:isFilled:)(NewsAnalytics::AdData *__return_ptr retstr, Swift::String opportunityIdentifier, Swift::String placementIdentifier, Swift::Bool isFilled)
{
  retstr->opportunityIdentifier = opportunityIdentifier;
  retstr->placementIdentifier = placementIdentifier;
  retstr->isFilled = isFilled;
}

unint64_t sub_217C3EBAC()
{
  v1 = 0x64656C6C69467369;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000013;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000015;
  }
}

uint64_t sub_217C3EC14@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217C3F380(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217C3EC3C(uint64_t a1)
{
  v2 = sub_217C3EE60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C3EC78(uint64_t a1)
{
  v2 = sub_217C3EE60();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AdData.encode(to:)(void *a1)
{
  sub_217C3F130(0, &qword_27CBA29E8, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  v8 = *(v1 + 16);
  v11[1] = *(v1 + 24);
  v11[2] = v8;
  v12 = *(v1 + 32);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C3EE60();
  sub_217D89E7C();
  v15 = 0;
  v9 = v11[3];
  sub_217D89C6C();
  if (!v9)
  {
    v14 = 1;
    sub_217D89C6C();
    v13 = 2;
    sub_217D89C7C();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_217C3EE60()
{
  result = qword_27CBA29F0;
  if (!qword_27CBA29F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA29F0);
  }

  return result;
}

uint64_t AdData.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_217C3F130(0, &qword_27CBA29F8, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v20 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C3EE60();
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v26 = 0;
  v10 = sub_217D89B8C();
  v12 = v11;
  v22 = a2;
  v23 = v10;
  v25 = 1;
  v13 = sub_217D89B8C();
  v21 = v14;
  v24 = 2;
  v15 = sub_217D89B9C();
  (*(v7 + 8))(v9, v6);
  v16 = v15 & 1;
  v17 = v22;
  *v22 = v23;
  v17[1] = v12;
  v18 = v21;
  v17[2] = v13;
  v17[3] = v18;
  *(v17 + 32) = v16;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217C3F130(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217C3EE60();
    v7 = a3(a1, &type metadata for AdData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217C3F1CC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_217C3F214(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_217C3F27C()
{
  result = qword_27CBA2A00;
  if (!qword_27CBA2A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2A00);
  }

  return result;
}

unint64_t sub_217C3F2D4()
{
  result = qword_27CBA2A08;
  if (!qword_27CBA2A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2A08);
  }

  return result;
}

unint64_t sub_217C3F32C()
{
  result = qword_27CBA2A10;
  if (!qword_27CBA2A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2A10);
  }

  return result;
}

uint64_t sub_217C3F380(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000015 && 0x8000000217DD1190 == a2;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000217DD11B0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64656C6C69467369 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_217D89D4C();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

NewsAnalytics::AppBadgeData __swiftcall AppBadgeData.init(isAppBadged:badgeOriginationData:)(Swift::Bool isAppBadged, NewsAnalytics::BadgeOriginationData badgeOriginationData)
{
  v3 = *badgeOriginationData.badgeOriginationType;
  *v2 = isAppBadged;
  v2[1] = v3;
  result.isAppBadged = isAppBadged;
  return result;
}

uint64_t sub_217C3F524@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6461427070417369 && a2 == 0xEB00000000646567;
  if (v6 || (sub_217D89D4C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000217DD11D0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_217D89D4C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_217C3F60C(uint64_t a1)
{
  v2 = sub_217A69B84();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C3F648(uint64_t a1)
{
  v2 = sub_217A69B84();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AppBadgeData.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_217A69970(0, &qword_27CBA2A18, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217A69B84();
  sub_217D89E5C();
  if (!v2)
  {
    v15 = 0;
    v16 = sub_217D89B9C() & 1;
    v13 = 1;
    sub_217BB03D8();
    sub_217D89BCC();
    (*(v7 + 8))(v9, v6);
    v11 = v14;
    *a2 = v16;
    a2[1] = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t getEnumTagSinglePayload for AppBadgeData(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
    if (v4)
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for AppBadgeData(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_217C3F9E8()
{
  result = qword_27CBA2A20;
  if (!qword_27CBA2A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2A20);
  }

  return result;
}

uint64_t sub_217C3FB04()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA2A58);
  __swift_project_value_buffer(v0, qword_27CBA2A58);
  return sub_217D8866C();
}

uint64_t MediaEngageCompleteEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t MediaEngageCompleteEvent.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaEngageCompleteEvent(0) + 20);
  sub_217C411F0(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MediaEngageCompleteEvent.articleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaEngageCompleteEvent(0) + 20);
  sub_217C411F0(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaEngageCompleteEvent.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaEngageCompleteEvent(0) + 24);
  sub_217C411F0(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MediaEngageCompleteEvent.channelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaEngageCompleteEvent(0) + 24);
  sub_217C411F0(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaEngageCompleteEvent.groupData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaEngageCompleteEvent(0) + 28);
  sub_217C411F0(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MediaEngageCompleteEvent.groupData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaEngageCompleteEvent(0) + 28);
  sub_217C411F0(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaEngageCompleteEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaEngageCompleteEvent(0) + 32);
  sub_217C411F0(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MediaEngageCompleteEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaEngageCompleteEvent(0) + 32);
  sub_217C411F0(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaEngageCompleteEvent.mediaData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaEngageCompleteEvent(0) + 36);
  sub_217C411F0(0, &qword_2811C84B8, sub_217AE1CB4, sub_217AE1D08, &type metadata for MediaData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MediaEngageCompleteEvent.mediaData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaEngageCompleteEvent(0) + 36);
  sub_217C411F0(0, &qword_2811C84B8, sub_217AE1CB4, sub_217AE1D08, &type metadata for MediaData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaEngageCompleteEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaEngageCompleteEvent(0) + 40);
  sub_217C411F0(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MediaEngageCompleteEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaEngageCompleteEvent(0) + 40);
  sub_217C411F0(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaEngageCompleteEvent.anfComponentData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaEngageCompleteEvent(0) + 44);
  sub_217C411F0(0, &qword_2811C86D0, sub_217AE2314, sub_217AE2368, &type metadata for ANFComponentData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MediaEngageCompleteEvent.anfComponentData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaEngageCompleteEvent(0) + 44);
  sub_217C411F0(0, &qword_2811C86D0, sub_217AE2314, sub_217AE2368, &type metadata for ANFComponentData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaEngageCompleteEvent.mediaEngagementCompletedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaEngageCompleteEvent(0) + 48);
  sub_217C411F0(0, &qword_2811C8530, sub_217C408D8, sub_217C4092C, &type metadata for MediaEngagementCompletedData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_217C408D8()
{
  result = qword_2811BEA48;
  if (!qword_2811BEA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BEA48);
  }

  return result;
}

unint64_t sub_217C4092C()
{
  result = qword_2811BEA50[0];
  if (!qword_2811BEA50[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2811BEA50);
  }

  return result;
}

uint64_t MediaEngageCompleteEvent.mediaEngagementCompletedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaEngageCompleteEvent(0) + 48);
  sub_217C411F0(0, &qword_2811C8530, sub_217C408D8, sub_217C4092C, &type metadata for MediaEngagementCompletedData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaEngageCompleteEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaEngageCompleteEvent(0) + 52);
  sub_217C411F0(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MediaEngageCompleteEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaEngageCompleteEvent(0) + 52);
  sub_217C411F0(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaEngageCompleteEvent.issueData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaEngageCompleteEvent(0) + 56);
  sub_217C411F0(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MediaEngageCompleteEvent.issueData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaEngageCompleteEvent(0) + 56);
  sub_217C411F0(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaEngageCompleteEvent.issueViewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaEngageCompleteEvent(0) + 60);
  sub_217C411F0(0, &qword_2811C8760, sub_217AD0198, sub_217AD01EC, &type metadata for IssueViewData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MediaEngageCompleteEvent.issueViewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaEngageCompleteEvent(0) + 60);
  sub_217C411F0(0, &qword_2811C8760, sub_217AD0198, sub_217AD01EC, &type metadata for IssueViewData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaEngageCompleteEvent.orientationData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaEngageCompleteEvent(0) + 64);
  sub_217C411F0(0, &qword_2811C86E8, sub_217A4CF30, sub_217A4CF88, &type metadata for OrientationData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MediaEngageCompleteEvent.orientationData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaEngageCompleteEvent(0) + 64);
  sub_217C411F0(0, &qword_2811C86E8, sub_217A4CF30, sub_217A4CF88, &type metadata for OrientationData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaEngageCompleteEvent.articleExposureContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MediaEngageCompleteEvent(0) + 68);
  sub_217C411F0(0, &qword_2811C8570, sub_217AE2CA8, sub_217AE2CFC, &type metadata for ArticleExposureContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217C411F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3();
    a4();
    v7 = sub_217D8829C();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t MediaEngageCompleteEvent.articleExposureContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaEngageCompleteEvent(0) + 68);
  sub_217C411F0(0, &qword_2811C8570, sub_217AE2CA8, sub_217AE2CFC, &type metadata for ArticleExposureContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t MediaEngageCompleteEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for MediaEngageCompleteEvent(0);
  v5 = v4[5];
  sub_217C411F0(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217C411F0(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  v10 = *MEMORY[0x277CEACF0];
  sub_217C411F0(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  (*(*(v11 - 8) + 104))(a1 + v9, v10, v11);
  v12 = v4[8];
  sub_217C411F0(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  (*(*(v13 - 8) + 104))(a1 + v12, v10, v13);
  v14 = v4[9];
  sub_217C411F0(0, &qword_2811C84B8, sub_217AE1CB4, sub_217AE1D08, &type metadata for MediaData);
  (*(*(v15 - 8) + 104))(a1 + v14, v2, v15);
  v16 = v4[10];
  sub_217C411F0(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  (*(*(v17 - 8) + 104))(a1 + v16, v2, v17);
  v18 = v4[11];
  sub_217C411F0(0, &qword_2811C86D0, sub_217AE2314, sub_217AE2368, &type metadata for ANFComponentData);
  (*(*(v19 - 8) + 104))(a1 + v18, v10, v19);
  v20 = v4[12];
  sub_217C411F0(0, &qword_2811C8530, sub_217C408D8, sub_217C4092C, &type metadata for MediaEngagementCompletedData);
  (*(*(v21 - 8) + 104))(a1 + v20, v2, v21);
  v22 = v4[13];
  sub_217C411F0(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v23 - 8) + 104))(a1 + v22, v2, v23);
  v24 = v4[14];
  sub_217C411F0(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  (*(*(v25 - 8) + 104))(a1 + v24, v10, v25);
  v26 = v4[15];
  sub_217C411F0(0, &qword_2811C8760, sub_217AD0198, sub_217AD01EC, &type metadata for IssueViewData);
  (*(*(v27 - 8) + 104))(a1 + v26, v10, v27);
  v28 = v4[16];
  sub_217C411F0(0, &qword_2811C86E8, sub_217A4CF30, sub_217A4CF88, &type metadata for OrientationData);
  (*(*(v29 - 8) + 104))(a1 + v28, v10, v29);
  v30 = v4[17];
  sub_217C411F0(0, &qword_2811C8570, sub_217AE2CA8, sub_217AE2CFC, &type metadata for ArticleExposureContextData);
  v32 = *(*(v31 - 8) + 104);

  return v32(a1 + v30, v10, v31);
}

uint64_t MediaEngageCompleteEvent.Model.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MediaEngageCompleteEvent.Model(0) + 20);
  v4 = *(v3 + 80);
  v5 = *(v3 + 112);
  v22 = *(v3 + 96);
  v23[0] = v5;
  v6 = *(v3 + 16);
  v7 = *(v3 + 48);
  v18 = *(v3 + 32);
  v8 = v18;
  v19 = v7;
  v9 = *(v3 + 48);
  v10 = *(v3 + 80);
  v20 = *(v3 + 64);
  v11 = v20;
  v21 = v10;
  v12 = *(v3 + 16);
  v17[0] = *v3;
  v13 = v17[0];
  v17[1] = v12;
  v14 = *(v3 + 112);
  *(a1 + 96) = v22;
  *(a1 + 112) = v14;
  *(a1 + 32) = v8;
  *(a1 + 48) = v9;
  *(a1 + 64) = v11;
  *(a1 + 80) = v4;
  *(v23 + 15) = *(v3 + 127);
  *(a1 + 127) = *(v3 + 127);
  *a1 = v13;
  *(a1 + 16) = v6;
  return sub_217AD1630(v17, v16);
}

uint64_t MediaEngageCompleteEvent.Model.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MediaEngageCompleteEvent.Model(0) + 24);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  v6 = *(v3 + 17);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  *a1 = *v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 17) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
}

uint64_t MediaEngageCompleteEvent.Model.groupData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for MediaEngageCompleteEvent.Model(0) + 28));
  v4 = v3[5];
  v5 = v3[7];
  v22 = v3[6];
  v23 = v5;
  v6 = v3[7];
  v24 = v3[8];
  v7 = v3[1];
  v8 = v3[3];
  v18 = v3[2];
  v9 = v18;
  v19 = v8;
  v10 = v3[3];
  v11 = v3[5];
  v20 = v3[4];
  v12 = v20;
  v21 = v11;
  v13 = v3[1];
  v17[0] = *v3;
  v14 = v17[0];
  v17[1] = v13;
  a1[6] = v22;
  a1[7] = v6;
  a1[8] = v3[8];
  a1[2] = v9;
  a1[3] = v10;
  a1[4] = v12;
  a1[5] = v4;
  *a1 = v14;
  a1[1] = v7;
  return sub_217AE38AC(v17, &v16, &qword_2811BD178, &type metadata for GroupData);
}

uint64_t MediaEngageCompleteEvent.Model.feedData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for MediaEngageCompleteEvent.Model(0) + 32));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;

  return sub_217AD1A68(v4, v5, v6);
}

uint64_t MediaEngageCompleteEvent.Model.mediaData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for MediaEngageCompleteEvent.Model(0) + 36));
  v4 = *v3;
  v6 = *(v3 + 1);
  v5 = *(v3 + 2);
  v7 = *(v3 + 6);
  LOBYTE(v3) = v3[28];
  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = v5;
  *(a1 + 24) = v7;
  *(a1 + 28) = v3;
}

uint64_t MediaEngageCompleteEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for MediaEngageCompleteEvent.Model(0) + 40));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t MediaEngageCompleteEvent.Model.anfComponentData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for MediaEngageCompleteEvent.Model(0) + 44));
  v5 = v3[3];
  v10 = v3[2];
  v4 = v10;
  v11 = v5;
  v6 = v3[1];
  v9[0] = *v3;
  v9[1] = v6;
  *a1 = v9[0];
  a1[1] = v6;
  a1[2] = v4;
  a1[3] = v5;
  return sub_217AE38AC(v9, &v8, &qword_27CB9ECA0, &type metadata for ANFComponentData);
}

uint64_t MediaEngageCompleteEvent.Model.mediaEngagementCompletedData.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for MediaEngageCompleteEvent.Model(0);
  v4 = (v1 + *(result + 48));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  return result;
}

uint64_t MediaEngageCompleteEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MediaEngageCompleteEvent.Model(0) + 52);
  v4 = *(v3 + 16);
  v8[0] = *v3;
  v8[1] = v4;
  v9 = *(v3 + 32);
  v5 = v9;
  LOBYTE(v3) = *(v3 + 48);
  v10 = v3;
  *a1 = v8[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  *(a1 + 48) = v3;
  return sub_217ACC004(v8, v7);
}

void MediaEngageCompleteEvent.Model.issueData.getter(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for MediaEngageCompleteEvent.Model(0) + 56));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;

  sub_217AE39D0(v4, v5, v6, v7);
}

uint64_t MediaEngageCompleteEvent.Model.issueViewData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for MediaEngageCompleteEvent.Model(0) + 60));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t MediaEngageCompleteEvent.Model.orientationData.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for MediaEngageCompleteEvent.Model(0);
  *a1 = *(v1 + *(result + 64));
  return result;
}

void MediaEngageCompleteEvent.Model.articleExposureContextData.getter(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for MediaEngageCompleteEvent.Model(0) + 68));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;

  sub_217AE3AE8(v4, v5, v6, v7, v8);
}

__n128 MediaEngageCompleteEvent.Model.init(eventData:articleData:channelData:groupData:feedData:mediaData:viewData:anfComponentData:mediaEngagementCompletedData:userBundleSubscriptionContextData:issueData:issueViewData:orientationData:articleExposureContextData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, _OWORD *a4@<X3>, __int128 *a5@<X4>, char *a6@<X5>, uint64_t *a7@<X6>, _OWORD *a8@<X7>, uint64_t a9@<X8>, uint64_t *a10, uint64_t a11, __int128 *a12, uint64_t *a13, __int16 *a14, uint64_t a15)
{
  v20 = a3[1];
  v51 = *a3;
  v21 = *(a3 + 16);
  v50 = *(a3 + 17);
  v49 = a3[3];
  v48 = a3[4];
  v53 = *a5;
  v52 = *(a5 + 2);
  v58 = *a6;
  v57 = *(a6 + 1);
  v56 = *(a6 + 2);
  v55 = *(a6 + 6);
  v54 = a6[28];
  v61 = *a7;
  v60 = a7[1];
  v59 = *(a7 + 8);
  v65 = *a10;
  v64 = *(a10 + 8);
  v68 = a13[1];
  v69 = *a13;
  v70 = *a14;
  v71 = *(a15 + 32);
  v22 = sub_217D8899C();
  v67 = *a15;
  v66 = *(a15 + 16);
  v62 = a12[1];
  v63 = *a12;
  (*(*(v22 - 8) + 32))(a9, a1, v22);
  v23 = type metadata accessor for MediaEngageCompleteEvent.Model(0);
  v24 = a9 + v23[5];
  v25 = *(a2 + 48);
  *(v24 + 32) = *(a2 + 32);
  *(v24 + 48) = v25;
  v26 = *(a2 + 16);
  *v24 = *a2;
  *(v24 + 16) = v26;
  *(v24 + 127) = *(a2 + 127);
  v27 = *(a2 + 112);
  *(v24 + 96) = *(a2 + 96);
  *(v24 + 112) = v27;
  v28 = *(a2 + 80);
  *(v24 + 64) = *(a2 + 64);
  *(v24 + 80) = v28;
  v29 = a9 + v23[6];
  *v29 = v51;
  *(v29 + 8) = v20;
  *(v29 + 16) = v21;
  *(v29 + 17) = v50;
  *(v29 + 24) = v49;
  *(v29 + 32) = v48;
  v30 = (a9 + v23[7]);
  v31 = a4[3];
  v30[2] = a4[2];
  v30[3] = v31;
  v32 = a4[1];
  *v30 = *a4;
  v30[1] = v32;
  v33 = a4[8];
  v30[7] = a4[7];
  v30[8] = v33;
  v34 = a4[6];
  v30[5] = a4[5];
  v30[6] = v34;
  v30[4] = a4[4];
  v35 = a9 + v23[8];
  *v35 = v53;
  *(v35 + 16) = v52;
  v36 = a9 + v23[9];
  *v36 = v58;
  *(v36 + 8) = v57;
  *(v36 + 16) = v56;
  *(v36 + 24) = v55;
  *(v36 + 28) = v54;
  v37 = a9 + v23[10];
  *v37 = v61;
  *(v37 + 8) = v60;
  *(v37 + 16) = v59;
  v38 = (a9 + v23[11]);
  v39 = a8[1];
  *v38 = *a8;
  v38[1] = v39;
  v40 = a8[3];
  v38[2] = a8[2];
  v38[3] = v40;
  v41 = a9 + v23[12];
  *v41 = v65;
  *(v41 + 8) = v64;
  v42 = a9 + v23[13];
  *(v42 + 48) = *(a11 + 48);
  v43 = *(a11 + 32);
  *(v42 + 16) = *(a11 + 16);
  *(v42 + 32) = v43;
  *v42 = *a11;
  v44 = (a9 + v23[14]);
  *v44 = v63;
  v44[1] = v62;
  v45 = (a9 + v23[15]);
  *v45 = v69;
  v45[1] = v68;
  *(a9 + v23[16]) = v70;
  v46 = a9 + v23[17];
  result = v67;
  *v46 = v67;
  *(v46 + 16) = v66;
  *(v46 + 32) = v71;
  return result;
}

uint64_t sub_217C42204(char a1)
{
  result = 0x746144746E657665;
  switch(a1)
  {
    case 1:
      result = 0x44656C6369747261;
      break;
    case 2:
      result = 0x446C656E6E616863;
      break;
    case 3:
      result = 0x74614470756F7267;
      break;
    case 4:
      v3 = 1684366694;
      goto LABEL_14;
    case 5:
      result = 0x746144616964656DLL;
      break;
    case 6:
      v3 = 2003134838;
LABEL_14:
      result = v3 | 0x6174614400000000;
      break;
    case 7:
      result = 0xD000000000000010;
      break;
    case 8:
      result = 0xD00000000000001CLL;
      break;
    case 9:
      result = 0xD000000000000021;
      break;
    case 10:
      result = 0x7461446575737369;
      break;
    case 11:
      result = 0x6569566575737369;
      break;
    case 12:
      result = 0x7461746E6569726FLL;
      break;
    case 13:
      result = 0xD00000000000001ALL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_217C423AC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217C44A8C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217C423D4(uint64_t a1)
{
  v2 = sub_217C42DD0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C42410(uint64_t a1)
{
  v2 = sub_217C42DD0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MediaEngageCompleteEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217C43A34(0, &qword_27CBA2A70, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v70 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C42DD0();
  sub_217D89E7C();
  v146[0] = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410, MEMORY[0x277CEAEB8]);
  sub_217D89CAC();
  if (!v2)
  {
    v10 = type metadata accessor for MediaEngageCompleteEvent.Model(0);
    v11 = v3 + v10[5];
    v12 = *(v11 + 80);
    v13 = *(v11 + 112);
    v144 = *(v11 + 96);
    *v145 = v13;
    v14 = *(v11 + 16);
    v15 = *(v11 + 48);
    v140 = *(v11 + 32);
    v141 = v15;
    v16 = *(v11 + 48);
    v17 = *(v11 + 80);
    v142 = *(v11 + 64);
    v143 = v17;
    v18 = *(v11 + 16);
    v139[0] = *v11;
    v139[1] = v18;
    v19 = *(v11 + 112);
    v137 = v144;
    v138[0] = v19;
    v133 = v140;
    v134 = v16;
    v136 = v12;
    v135 = v142;
    *&v145[15] = *(v11 + 127);
    *(v138 + 15) = *(v11 + 127);
    v132 = v14;
    v131 = v139[0];
    v130 = 1;
    sub_217AD1630(v139, v113);
    sub_217ACF52C();
    sub_217D89CAC();
    v128[6] = v137;
    *v129 = v138[0];
    *&v129[15] = *(v138 + 15);
    v128[3] = v134;
    v128[5] = v136;
    v128[4] = v135;
    v128[1] = v132;
    v128[2] = v133;
    v128[0] = v131;
    sub_217AD2864(v128);
    v20 = (v3 + v10[6]);
    v21 = v20[1];
    v22 = *(v20 + 16);
    v23 = *(v20 + 17);
    v24 = v20[3];
    v25 = v20[4];
    v122 = *v20;
    v123 = v21;
    v124 = v22;
    v125 = v23;
    v126 = v24;
    v127 = v25;
    v121 = 2;
    sub_217AD084C();

    sub_217D89CAC();

    v26 = (v3 + v10[7]);
    v27 = v26[5];
    v28 = v26[7];
    v118 = v26[6];
    v119 = v28;
    v29 = v26[7];
    v120 = v26[8];
    v30 = v26[1];
    v31 = v26[3];
    v114 = v26[2];
    v115 = v31;
    v32 = v26[3];
    v33 = v26[5];
    v116 = v26[4];
    v117 = v33;
    v34 = v26[1];
    v113[0] = *v26;
    v113[1] = v34;
    v110 = v118;
    v111 = v29;
    v112 = v26[8];
    v106 = v114;
    v107 = v32;
    v108 = v116;
    v109 = v27;
    v104 = v113[0];
    v105 = v30;
    v103 = 3;
    sub_217AE38AC(v113, v102, &qword_2811BD178, &type metadata for GroupData);
    sub_217A5D3B4();
    sub_217D89C3C();
    v102[6] = v110;
    v102[7] = v111;
    v102[8] = v112;
    v102[2] = v106;
    v102[3] = v107;
    v102[4] = v108;
    v102[5] = v109;
    v102[0] = v104;
    v102[1] = v105;
    sub_217AE4A44(v102, &qword_2811BD178, &type metadata for GroupData);
    v35 = (v3 + v10[8]);
    v36 = v35[1];
    v37 = v35[2];
    *&v94 = *v35;
    *(&v94 + 1) = v36;
    *&v95 = v37;
    LOBYTE(v90) = 4;
    sub_217AD1A68(v94, v36, v37);
    sub_217A5BA2C();
    sub_217D89C3C();
    sub_217AD290C(v94, *(&v94 + 1), v95);
    v38 = (v3 + v10[9]);
    v39 = *v38;
    v40 = *(v38 + 1);
    v41 = *(v38 + 2);
    v42 = *(v38 + 6);
    LOBYTE(v38) = v38[28];
    LOBYTE(v94) = v39;
    *(&v94 + 1) = v40;
    *&v95 = v41;
    DWORD2(v95) = v42;
    BYTE12(v95) = v38;
    LOBYTE(v90) = 5;
    sub_217AE1D08();

    sub_217D89CAC();

    v43 = (v3 + v10[10]);
    v44 = *v43;
    v45 = v43[1];
    LOWORD(v43) = *(v43 + 8);
    v99 = v44;
    v100 = v45;
    v101 = v43;
    v98 = 6;
    sub_217A5E790();

    sub_217D89CAC();

    v46 = (v3 + v10[11]);
    v47 = v46[1];
    v94 = *v46;
    v95 = v47;
    v48 = v46[3];
    v50 = *v46;
    v49 = v46[1];
    v96 = v46[2];
    v97 = v48;
    v90 = v50;
    v91 = v49;
    v51 = v46[3];
    v92 = v46[2];
    v93 = v51;
    v89 = 7;
    sub_217AE38AC(&v94, v88, &qword_27CB9ECA0, &type metadata for ANFComponentData);
    sub_217AE2368();
    sub_217D89C3C();
    v88[0] = v90;
    v88[1] = v91;
    v88[2] = v92;
    v88[3] = v93;
    sub_217AE4A44(v88, &qword_27CB9ECA0, &type metadata for ANFComponentData);
    v52 = (v3 + v10[12]);
    v53 = *v52;
    LOBYTE(v52) = *(v52 + 8);
    v86 = v53;
    v87 = v52;
    v85 = 8;
    sub_217C4092C();
    sub_217D89CAC();
    v54 = (v3 + v10[13]);
    v55 = v54[1];
    v83[0] = *v54;
    v83[1] = v55;
    v57 = *v54;
    v56 = v54[1];
    v83[2] = v54[2];
    v84 = *(v54 + 48);
    v79 = v57;
    v80 = v56;
    v81 = v54[2];
    v82 = *(v54 + 48);
    v78 = 9;
    sub_217ACC004(v83, v76);
    sub_217A55B98();
    sub_217D89CAC();
    v76[0] = v79;
    v76[1] = v80;
    v76[2] = v81;
    v77 = v82;
    sub_217ACC69C(v76);
    v58 = (v3 + v10[14]);
    v59 = v58[1];
    v60 = v58[2];
    v61 = v58[3];
    v70 = *v58;
    v71 = v59;
    v72 = v60;
    v73 = v61;
    v75 = 10;
    sub_217AE39D0(v70, v59, v60, v61);
    sub_217ACFF94();
    sub_217D89C3C();
    sub_217AE4AA0(v70, v71, v72, v73);
    v62 = (v3 + v10[15]);
    v63 = v62[1];
    v70 = *v62;
    v71 = v63;
    v75 = 11;
    sub_217AD01EC();

    sub_217D89C3C();

    LOWORD(v70) = *(v3 + v10[16]);
    v75 = 12;
    sub_217A4CF88();
    sub_217D89C3C();
    v64 = (v3 + v10[17]);
    v65 = v64[1];
    v66 = v64[2];
    v67 = v64[3];
    v68 = v64[4];
    v70 = *v64;
    v71 = v65;
    v72 = v66;
    v73 = v67;
    v74 = v68;
    v75 = 13;
    sub_217AE3AE8(v70, v65, v66, v67, v68);
    sub_217AE2CFC();
    sub_217D89C3C();
    sub_217AE4AE4(v70, v71, v72, v73, v74);
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_217C42DD0()
{
  result = qword_27CBA2A78;
  if (!qword_27CBA2A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2A78);
  }

  return result;
}

void MediaEngageCompleteEvent.Model.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v3 = sub_217D8899C();
  v59 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v61 = v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217C43A34(0, &qword_27CBA2A80, MEMORY[0x277D844C8]);
  v63 = v5;
  v60 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = v55 - v6;
  v8 = type metadata accessor for MediaEngageCompleteEvent.Model(0);
  MEMORY[0x28223BE20](v8);
  v10 = v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C42DD0();
  v62 = v7;
  v11 = v97;
  sub_217D89E5C();
  if (v11)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v12 = v60;
    v56 = v8;
    v57 = a1;
    v97 = v10;
    LOBYTE(v88) = 0;
    sub_217A602A0(&qword_2811C8408, MEMORY[0x277CEAEC0]);
    v13 = v61;
    sub_217D89BCC();
    v14 = v97;
    (*(v59 + 32))(v97, v13, v3);
    v79 = 1;
    sub_217ACF4D8();
    sub_217D89BCC();
    v55[1] = v3;
    v61 = 0;
    v15 = v56;
    v16 = &v14[v56[5]];
    v17 = *v87;
    *(v16 + 6) = v86;
    *(v16 + 7) = v17;
    *(v16 + 127) = *&v87[15];
    v18 = v83;
    *(v16 + 2) = v82;
    *(v16 + 3) = v18;
    v19 = v85;
    *(v16 + 4) = v84;
    *(v16 + 5) = v19;
    v20 = v81;
    *v16 = v80;
    *(v16 + 1) = v20;
    LOBYTE(v74) = 2;
    sub_217AD07F8();
    sub_217D89BCC();
    v21 = *(&v88 + 1);
    v22 = v89;
    v23 = BYTE1(v89);
    v24 = *(&v89 + 1);
    v25 = v90;
    v26 = &v14[v15[6]];
    *v26 = v88;
    *(v26 + 1) = v21;
    v26[16] = v22;
    v26[17] = v23;
    *(v26 + 3) = v24;
    *(v26 + 4) = v25;
    v78 = 3;
    sub_217A5D308();
    sub_217D89B5C();
    v27 = &v14[v15[7]];
    v28 = v95;
    *(v27 + 6) = v94;
    *(v27 + 7) = v28;
    *(v27 + 8) = v96;
    v29 = v91;
    *(v27 + 2) = v90;
    *(v27 + 3) = v29;
    v30 = v93;
    *(v27 + 4) = v92;
    *(v27 + 5) = v30;
    v31 = v89;
    *v27 = v88;
    *(v27 + 1) = v31;
    LOBYTE(v69) = 4;
    sub_217A5B978();
    sub_217D89B5C();
    v32 = v75;
    v33 = &v14[v15[8]];
    *v33 = v74;
    *(v33 + 2) = v32;
    LOBYTE(v69) = 5;
    sub_217AE1CB4();
    sub_217D89BCC();
    v34 = *(&v74 + 1);
    v35 = v75;
    v36 = DWORD2(v75);
    v37 = BYTE12(v75);
    v38 = &v14[v15[9]];
    *v38 = v74;
    *(v38 + 1) = v34;
    *(v38 + 2) = v35;
    *(v38 + 6) = v36;
    v38[28] = v37;
    LOBYTE(v69) = 6;
    sub_217A5E738();
    sub_217D89BCC();
    v39 = *(&v74 + 1);
    v40 = v75;
    v41 = &v14[v15[10]];
    *v41 = v74;
    *(v41 + 1) = v39;
    *(v41 + 8) = v40;
    v73 = 7;
    sub_217AE2314();
    sub_217D89B5C();
    v42 = &v14[v15[11]];
    v43 = v75;
    *v42 = v74;
    *(v42 + 1) = v43;
    v44 = v77;
    *(v42 + 2) = v76;
    *(v42 + 3) = v44;
    LOBYTE(v64) = 8;
    sub_217C408D8();
    sub_217D89BCC();
    v45 = BYTE8(v69);
    v46 = &v97[v15[12]];
    *v46 = v69;
    v46[8] = v45;
    v68 = 9;
    sub_217A54D08();
    sub_217D89BCC();
    v47 = &v97[v56[13]];
    v48 = v70;
    *v47 = v69;
    *(v47 + 1) = v48;
    *(v47 + 2) = v71;
    v47[48] = v72;
    v67 = 10;
    sub_217ACFF40();
    sub_217D89B5C();
    v49 = &v97[v56[14]];
    v50 = v65;
    *v49 = v64;
    *(v49 + 1) = v50;
    v67 = 11;
    sub_217AD0198();
    sub_217D89B5C();
    *&v97[v56[15]] = v64;
    v67 = 12;
    sub_217A4CF30();
    sub_217D89B5C();
    *&v97[v56[16]] = v64;
    v67 = 13;
    sub_217AE2CA8();
    sub_217D89B5C();
    (*(v12 + 8))(v62, v63);
    v51 = v66;
    v52 = v97;
    v53 = &v97[v56[17]];
    v54 = v65;
    *v53 = v64;
    *(v53 + 1) = v54;
    *(v53 + 4) = v51;
    sub_217C43A98(v52, v58);
    __swift_destroy_boxed_opaque_existential_1(v57);
    sub_217C43AFC(v52);
  }
}

void sub_217C43A34(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217C42DD0();
    v7 = a3(a1, &type metadata for MediaEngageCompleteEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217C43A98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MediaEngageCompleteEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217C43AFC(uint64_t a1)
{
  v2 = type metadata accessor for MediaEngageCompleteEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217C43C30@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217C411F0(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_217C411F0(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  v11 = *MEMORY[0x277CEACF0];
  sub_217C411F0(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  (*(*(v12 - 8) + 104))(a2 + v10, v11, v12);
  v13 = a1[8];
  sub_217C411F0(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  (*(*(v14 - 8) + 104))(a2 + v13, v11, v14);
  v15 = a1[9];
  sub_217C411F0(0, &qword_2811C84B8, sub_217AE1CB4, sub_217AE1D08, &type metadata for MediaData);
  (*(*(v16 - 8) + 104))(a2 + v15, v4, v16);
  v17 = a1[10];
  sub_217C411F0(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  (*(*(v18 - 8) + 104))(a2 + v17, v4, v18);
  v19 = a1[11];
  sub_217C411F0(0, &qword_2811C86D0, sub_217AE2314, sub_217AE2368, &type metadata for ANFComponentData);
  (*(*(v20 - 8) + 104))(a2 + v19, v11, v20);
  v21 = a1[12];
  sub_217C411F0(0, &qword_2811C8530, sub_217C408D8, sub_217C4092C, &type metadata for MediaEngagementCompletedData);
  (*(*(v22 - 8) + 104))(a2 + v21, v4, v22);
  v23 = a1[13];
  sub_217C411F0(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v24 - 8) + 104))(a2 + v23, v4, v24);
  v25 = a1[14];
  sub_217C411F0(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  (*(*(v26 - 8) + 104))(a2 + v25, v11, v26);
  v27 = a1[15];
  sub_217C411F0(0, &qword_2811C8760, sub_217AD0198, sub_217AD01EC, &type metadata for IssueViewData);
  (*(*(v28 - 8) + 104))(a2 + v27, v11, v28);
  v29 = a1[16];
  sub_217C411F0(0, &qword_2811C86E8, sub_217A4CF30, sub_217A4CF88, &type metadata for OrientationData);
  (*(*(v30 - 8) + 104))(a2 + v29, v11, v30);
  v31 = a1[17];
  sub_217C411F0(0, &qword_2811C8570, sub_217AE2CA8, sub_217AE2CFC, &type metadata for ArticleExposureContextData);
  v33 = *(*(v32 - 8) + 104);

  return v33(a2 + v31, v11, v32);
}

void sub_217C44304(uint64_t a1)
{
  sub_217A6018C(319);
  if (v1 <= 0x3F)
  {
    sub_217C411F0(319, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
    if (v2 <= 0x3F)
    {
      sub_217C411F0(319, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
      if (v3 <= 0x3F)
      {
        sub_217C411F0(319, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
        if (v4 <= 0x3F)
        {
          sub_217C411F0(319, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
          if (v5 <= 0x3F)
          {
            sub_217C411F0(319, &qword_2811C84B8, sub_217AE1CB4, sub_217AE1D08, &type metadata for MediaData);
            if (v6 <= 0x3F)
            {
              sub_217C411F0(319, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
              if (v7 <= 0x3F)
              {
                sub_217C411F0(319, &qword_2811C86D0, sub_217AE2314, sub_217AE2368, &type metadata for ANFComponentData);
                if (v8 <= 0x3F)
                {
                  sub_217C411F0(319, &qword_2811C8530, sub_217C408D8, sub_217C4092C, &type metadata for MediaEngagementCompletedData);
                  if (v9 <= 0x3F)
                  {
                    sub_217C411F0(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
                    if (v10 <= 0x3F)
                    {
                      sub_217C411F0(319, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
                      if (v11 <= 0x3F)
                      {
                        sub_217C411F0(319, &qword_2811C8760, sub_217AD0198, sub_217AD01EC, &type metadata for IssueViewData);
                        if (v12 <= 0x3F)
                        {
                          sub_217C411F0(319, &qword_2811C86E8, sub_217A4CF30, sub_217A4CF88, &type metadata for OrientationData);
                          if (v13 <= 0x3F)
                          {
                            sub_217C411F0(319, &qword_2811C8570, sub_217AE2CA8, sub_217AE2CFC, &type metadata for ArticleExposureContextData);
                            if (v14 <= 0x3F)
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
            }
          }
        }
      }
    }
  }
}

void sub_217C447A8(uint64_t a1)
{
  sub_217D8899C();
  if (v1 <= 0x3F)
  {
    sub_217A5E974(319, &qword_2811BD178, &type metadata for GroupData);
    if (v2 <= 0x3F)
    {
      sub_217A5E974(319, &qword_2811BD308, &type metadata for FeedData);
      if (v3 <= 0x3F)
      {
        sub_217A5E974(319, &qword_27CB9ECA0, &type metadata for ANFComponentData);
        if (v4 <= 0x3F)
        {
          sub_217A5E974(319, &qword_2811BD110, &type metadata for IssueData);
          if (v5 <= 0x3F)
          {
            sub_217A5E974(319, &qword_2811C71A8, &type metadata for IssueViewData);
            if (v6 <= 0x3F)
            {
              sub_217A5E974(319, &qword_27CB9ECC0, &type metadata for OrientationData);
              if (v7 <= 0x3F)
              {
                sub_217A5E974(319, &qword_2811BF120, &type metadata for ArticleExposureContextData);
                if (v8 <= 0x3F)
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
}

unint64_t sub_217C44988()
{
  result = qword_27CBA2A88;
  if (!qword_27CBA2A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2A88);
  }

  return result;
}

unint64_t sub_217C449E0()
{
  result = qword_27CBA2A90;
  if (!qword_27CBA2A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2A90);
  }

  return result;
}

unint64_t sub_217C44A38()
{
  result = qword_27CBA2A98;
  if (!qword_27CBA2A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2A98);
  }

  return result;
}

uint64_t sub_217C44A8C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x44656C6369747261 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x446C656E6E616863 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x74614470756F7267 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6174614464656566 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x746144616964656DLL && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6174614477656976 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000217DCD5D0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD00000000000001CLL && 0x8000000217DD11F0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x7461446575737369 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6569566575737369 && a2 == 0xED00006174614477 || (sub_217D89D4C() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x7461746E6569726FLL && a2 == 0xEF617461446E6F69 || (sub_217D89D4C() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000217DCD5F0 == a2)
  {

    return 13;
  }

  else
  {
    v6 = sub_217D89D4C();

    if (v6)
    {
      return 13;
    }

    else
    {
      return 14;
    }
  }
}

uint64_t sub_217C44FD0()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_2811C11E8);
  __swift_project_value_buffer(v0, qword_2811C11E8);
  return sub_217D8866C();
}

uint64_t HeadlineExposureEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t HeadlineExposureEvent.adData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for HeadlineExposureEvent(0) + 20);
  sub_217C4752C(0, &qword_2811C8500, sub_217AF343C, sub_217AF3490, &type metadata for AdData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t HeadlineExposureEvent.adData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for HeadlineExposureEvent(0) + 20);
  sub_217C4752C(0, &qword_2811C8500, sub_217AF343C, sub_217AF3490, &type metadata for AdData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t HeadlineExposureEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for HeadlineExposureEvent(0) + 24);
  sub_217A608E0(0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t HeadlineExposureEvent.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for HeadlineExposureEvent(0) + 28);
  sub_217C4752C(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t HeadlineExposureEvent.articleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for HeadlineExposureEvent(0) + 28);
  sub_217C4752C(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t HeadlineExposureEvent.feedPositionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for HeadlineExposureEvent(0) + 32);
  sub_217C4752C(0, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710, &type metadata for FeedPositionData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t HeadlineExposureEvent.feedPositionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for HeadlineExposureEvent(0) + 32);
  sub_217C4752C(0, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710, &type metadata for FeedPositionData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t HeadlineExposureEvent.inGroupPositionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for HeadlineExposureEvent(0) + 36);
  sub_217C4752C(0, &qword_2811C8608, sub_217B4FFA8, sub_217B4FFFC, &type metadata for InGroupPositionData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t HeadlineExposureEvent.inGroupPositionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for HeadlineExposureEvent(0) + 36);
  sub_217C4752C(0, &qword_2811C8608, sub_217B4FFA8, sub_217B4FFFC, &type metadata for InGroupPositionData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t HeadlineExposureEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for HeadlineExposureEvent(0) + 40);
  sub_217C4752C(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t HeadlineExposureEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for HeadlineExposureEvent(0) + 40);
  sub_217C4752C(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t HeadlineExposureEvent.groupData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for HeadlineExposureEvent(0) + 44);
  sub_217C4752C(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t HeadlineExposureEvent.groupData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for HeadlineExposureEvent(0) + 44);
  sub_217C4752C(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t HeadlineExposureEvent.articleScienceData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for HeadlineExposureEvent(0) + 48);
  sub_217C4752C(0, &qword_2811C87D0, sub_217ACF8E0, sub_217ACF934, &type metadata for ScienceData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t HeadlineExposureEvent.articleScienceData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for HeadlineExposureEvent(0) + 48);
  sub_217C4752C(0, &qword_2811C87D0, sub_217ACF8E0, sub_217ACF934, &type metadata for ScienceData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t HeadlineExposureEvent.userChannelContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for HeadlineExposureEvent(0) + 52);
  sub_217C4752C(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t HeadlineExposureEvent.userChannelContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for HeadlineExposureEvent(0) + 52);
  sub_217C4752C(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t HeadlineExposureEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for HeadlineExposureEvent(0) + 56);
  sub_217C4752C(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t HeadlineExposureEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for HeadlineExposureEvent(0) + 56);
  sub_217C4752C(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t HeadlineExposureEvent.issueData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for HeadlineExposureEvent(0) + 60);
  sub_217C4752C(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t HeadlineExposureEvent.issueData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for HeadlineExposureEvent(0) + 60);
  sub_217C4752C(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t HeadlineExposureEvent.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for HeadlineExposureEvent(0) + 64);
  sub_217C4752C(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t HeadlineExposureEvent.channelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for HeadlineExposureEvent(0) + 64);
  sub_217C4752C(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t HeadlineExposureEvent.articleExposureContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for HeadlineExposureEvent(0) + 68);
  sub_217C4752C(0, &qword_2811C8570, sub_217AE2CA8, sub_217AE2CFC, &type metadata for ArticleExposureContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t HeadlineExposureEvent.articleExposureContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for HeadlineExposureEvent(0) + 68);
  sub_217C4752C(0, &qword_2811C8570, sub_217AE2CA8, sub_217AE2CFC, &type metadata for ArticleExposureContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t HeadlineExposureEvent.articleViewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for HeadlineExposureEvent(0) + 72);
  sub_217C4752C(0, &qword_2811C8700, sub_217BA73A0, sub_217BA73F4, &type metadata for ArticleViewData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t HeadlineExposureEvent.articleViewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for HeadlineExposureEvent(0) + 72);
  sub_217C4752C(0, &qword_2811C8700, sub_217BA73A0, sub_217BA73F4, &type metadata for ArticleViewData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t HeadlineExposureEvent.searchResponseData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for HeadlineExposureEvent(0) + 76);
  sub_217C4752C(0, &qword_2811C8638, sub_217B2BA2C, sub_217B2BA84, &type metadata for SearchResponseData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t HeadlineExposureEvent.searchResponseData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for HeadlineExposureEvent(0) + 76);
  sub_217C4752C(0, &qword_2811C8638, sub_217B2BA2C, sub_217B2BA84, &type metadata for SearchResponseData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t HeadlineExposureEvent.shareOriginationData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for HeadlineExposureEvent(0) + 80);
  sub_217C4752C(0, &qword_2811C85C8, sub_217C46A64, sub_217C46AB8, &type metadata for ShareOriginationData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

unint64_t sub_217C46A64()
{
  result = qword_2811C1C60;
  if (!qword_2811C1C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C1C60);
  }

  return result;
}

unint64_t sub_217C46AB8()
{
  result = qword_2811C1C68;
  if (!qword_2811C1C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C1C68);
  }

  return result;
}

uint64_t HeadlineExposureEvent.shareOriginationData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for HeadlineExposureEvent(0) + 80);
  sub_217C4752C(0, &qword_2811C85C8, sub_217C46A64, sub_217C46AB8, &type metadata for ShareOriginationData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t HeadlineExposureEvent.auxiliaryData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for HeadlineExposureEvent(0) + 84);
  sub_217C4752C(0, &qword_2811C8778, sub_217B75EA8, sub_217B75F00, &type metadata for AuxiliaryData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t HeadlineExposureEvent.auxiliaryData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for HeadlineExposureEvent(0) + 84);
  sub_217C4752C(0, &qword_2811C8778, sub_217B75EA8, sub_217B75F00, &type metadata for AuxiliaryData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t HeadlineExposureEvent.recirculationData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for HeadlineExposureEvent(0) + 88);
  sub_217C4752C(0, &qword_2811C8678, sub_217AE0B30, sub_217AE0B88, &type metadata for RecirculationData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t HeadlineExposureEvent.recirculationData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for HeadlineExposureEvent(0) + 88);
  sub_217C4752C(0, &qword_2811C8678, sub_217AE0B30, sub_217AE0B88, &type metadata for RecirculationData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t HeadlineExposureEvent.experimentalScoreData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for HeadlineExposureEvent(0) + 92);
  sub_217C4752C(0, &qword_2811C84B0, sub_217B86EE4, sub_217B86F3C, &type metadata for ScoreData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t HeadlineExposureEvent.experimentalScoreData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for HeadlineExposureEvent(0) + 92);
  sub_217C4752C(0, &qword_2811C84B0, sub_217B86EE4, sub_217B86F3C, &type metadata for ScoreData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t HeadlineExposureEvent.offlineModeData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for HeadlineExposureEvent(0) + 96);
  sub_217C4752C(0, &qword_2811C86F0, sub_217ACA338, sub_217ACA390, &type metadata for OfflineModeData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t HeadlineExposureEvent.offlineModeData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for HeadlineExposureEvent(0) + 96);
  sub_217C4752C(0, &qword_2811C86F0, sub_217ACA338, sub_217ACA390, &type metadata for OfflineModeData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t HeadlineExposureEvent.recipeListData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for HeadlineExposureEvent(0) + 100);
  sub_217C4752C(0, &qword_2811C8718, sub_217BB19F8, sub_217BB1A50, &type metadata for RecipeListData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t HeadlineExposureEvent.recipeListData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for HeadlineExposureEvent(0) + 100);
  sub_217C4752C(0, &qword_2811C8718, sub_217BB19F8, sub_217BB1A50, &type metadata for RecipeListData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t HeadlineExposureEvent.dismissalData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for HeadlineExposureEvent(0) + 104);
  sub_217C4752C(0, &qword_2811C8770, sub_217AD7D98, sub_217AD7DEC, &type metadata for DismissalData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217C4752C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3();
    a4();
    v7 = sub_217D8829C();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t HeadlineExposureEvent.dismissalData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for HeadlineExposureEvent(0) + 104);
  sub_217C4752C(0, &qword_2811C8770, sub_217AD7D98, sub_217AD7DEC, &type metadata for DismissalData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t HeadlineExposureEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for HeadlineExposureEvent(0);
  v5 = v4[5];
  v6 = *MEMORY[0x277CEACF0];
  sub_217C4752C(0, &qword_2811C8500, sub_217AF343C, sub_217AF3490, &type metadata for AdData);
  (*(*(v7 - 8) + 104))(a1 + v5, v6, v7);
  v8 = v4[6];
  sub_217A608E0(0);
  (*(*(v9 - 8) + 104))(a1 + v8, v2, v9);
  v10 = v4[7];
  sub_217C4752C(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  (*(*(v11 - 8) + 104))(a1 + v10, v2, v11);
  v12 = v4[8];
  sub_217C4752C(0, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710, &type metadata for FeedPositionData);
  (*(*(v13 - 8) + 104))(a1 + v12, v2, v13);
  v14 = v4[9];
  sub_217C4752C(0, &qword_2811C8608, sub_217B4FFA8, sub_217B4FFFC, &type metadata for InGroupPositionData);
  (*(*(v15 - 8) + 104))(a1 + v14, v6, v15);
  v16 = v4[10];
  sub_217C4752C(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  (*(*(v17 - 8) + 104))(a1 + v16, v2, v17);
  v18 = v4[11];
  sub_217C4752C(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  (*(*(v19 - 8) + 104))(a1 + v18, v6, v19);
  v20 = v4[12];
  sub_217C4752C(0, &qword_2811C87D0, sub_217ACF8E0, sub_217ACF934, &type metadata for ScienceData);
  (*(*(v21 - 8) + 104))(a1 + v20, v2, v21);
  v22 = v4[13];
  sub_217C4752C(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
  (*(*(v23 - 8) + 104))(a1 + v22, v2, v23);
  v24 = v4[14];
  sub_217C4752C(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v25 - 8) + 104))(a1 + v24, v2, v25);
  v26 = v4[15];
  sub_217C4752C(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  (*(*(v27 - 8) + 104))(a1 + v26, v6, v27);
  v28 = v4[16];
  sub_217C4752C(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  (*(*(v29 - 8) + 104))(a1 + v28, v2, v29);
  v30 = v4[17];
  sub_217C4752C(0, &qword_2811C8570, sub_217AE2CA8, sub_217AE2CFC, &type metadata for ArticleExposureContextData);
  (*(*(v31 - 8) + 104))(a1 + v30, v6, v31);
  v32 = v4[18];
  sub_217C4752C(0, &qword_2811C8700, sub_217BA73A0, sub_217BA73F4, &type metadata for ArticleViewData);
  (*(*(v33 - 8) + 104))(a1 + v32, v6, v33);
  v34 = v4[19];
  sub_217C4752C(0, &qword_2811C8638, sub_217B2BA2C, sub_217B2BA84, &type metadata for SearchResponseData);
  (*(*(v35 - 8) + 104))(a1 + v34, v6, v35);
  v36 = v4[20];
  sub_217C4752C(0, &qword_2811C85C8, sub_217C46A64, sub_217C46AB8, &type metadata for ShareOriginationData);
  (*(*(v37 - 8) + 104))(a1 + v36, v6, v37);
  v38 = v4[21];
  sub_217C4752C(0, &qword_2811C8778, sub_217B75EA8, sub_217B75F00, &type metadata for AuxiliaryData);
  (*(*(v39 - 8) + 104))(a1 + v38, v6, v39);
  v40 = v4[22];
  sub_217C4752C(0, &qword_2811C8678, sub_217AE0B30, sub_217AE0B88, &type metadata for RecirculationData);
  (*(*(v41 - 8) + 104))(a1 + v40, v6, v41);
  v42 = v4[23];
  sub_217C4752C(0, &qword_2811C84B0, sub_217B86EE4, sub_217B86F3C, &type metadata for ScoreData);
  (*(*(v43 - 8) + 104))(a1 + v42, v6, v43);
  v44 = v4[24];
  sub_217C4752C(0, &qword_2811C86F0, sub_217ACA338, sub_217ACA390, &type metadata for OfflineModeData);
  (*(*(v45 - 8) + 104))(a1 + v44, v2, v45);
  v46 = v4[25];
  sub_217C4752C(0, &qword_2811C8718, sub_217BB19F8, sub_217BB1A50, &type metadata for RecipeListData);
  (*(*(v47 - 8) + 104))(a1 + v46, v6, v47);
  v48 = v4[26];
  sub_217C4752C(0, &qword_2811C8770, sub_217AD7D98, sub_217AD7DEC, &type metadata for DismissalData);
  v50 = *(*(v49 - 8) + 104);

  return v50(a1 + v48, v6, v49);
}

void HeadlineExposureEvent.Model.adData.getter(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for HeadlineExposureEvent.Model(0) + 20);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = *(v3 + 32);

  sub_217AE39D0(v4, v5, v6, v7);
}

uint64_t sub_217C48214@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 24);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t HeadlineExposureEvent.Model.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for HeadlineExposureEvent.Model(0) + 28);
  v4 = *(v3 + 80);
  v5 = *(v3 + 112);
  v22 = *(v3 + 96);
  v23[0] = v5;
  v6 = *(v3 + 16);
  v7 = *(v3 + 48);
  v18 = *(v3 + 32);
  v8 = v18;
  v19 = v7;
  v9 = *(v3 + 48);
  v10 = *(v3 + 80);
  v20 = *(v3 + 64);
  v11 = v20;
  v21 = v10;
  v12 = *(v3 + 16);
  v17[0] = *v3;
  v13 = v17[0];
  v17[1] = v12;
  v14 = *(v3 + 112);
  *(a1 + 96) = v22;
  *(a1 + 112) = v14;
  *(a1 + 32) = v8;
  *(a1 + 48) = v9;
  *(a1 + 64) = v11;
  *(a1 + 80) = v4;
  *(v23 + 15) = *(v3 + 127);
  *(a1 + 127) = *(v3 + 127);
  *a1 = v13;
  *(a1 + 16) = v6;
  return sub_217AD1630(v17, v16);
}

uint64_t HeadlineExposureEvent.Model.feedPositionData.getter@<X0>(_DWORD *a1@<X8>)
{
  result = type metadata accessor for HeadlineExposureEvent.Model(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t HeadlineExposureEvent.Model.inGroupPositionData.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for HeadlineExposureEvent.Model(0);
  v4 = (v1 + *(result + 36));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 4);
  *a1 = v5;
  *(a1 + 4) = v4;
  return result;
}

uint64_t HeadlineExposureEvent.Model.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for HeadlineExposureEvent.Model(0) + 40);
  v5 = *(v3 + 8);
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
}

uint64_t HeadlineExposureEvent.Model.groupData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for HeadlineExposureEvent.Model(0) + 44));
  v4 = v3[5];
  v5 = v3[7];
  v22 = v3[6];
  v23 = v5;
  v6 = v3[7];
  v24 = v3[8];
  v7 = v3[1];
  v8 = v3[3];
  v18 = v3[2];
  v9 = v18;
  v19 = v8;
  v10 = v3[3];
  v11 = v3[5];
  v20 = v3[4];
  v12 = v20;
  v21 = v11;
  v13 = v3[1];
  v17[0] = *v3;
  v14 = v17[0];
  v17[1] = v13;
  a1[6] = v22;
  a1[7] = v6;
  a1[8] = v3[8];
  a1[2] = v9;
  a1[3] = v10;
  a1[4] = v12;
  a1[5] = v4;
  *a1 = v14;
  a1[1] = v7;
  return sub_217AD87FC(v17, &v16);
}

uint64_t HeadlineExposureEvent.Model.articleScienceData.getter@<X0>(void *a1@<X8>)
{
  v3 = *(type metadata accessor for HeadlineExposureEvent.Model(0) + 48);
  memcpy(__dst, (v1 + v3), 0x111uLL);
  memcpy(a1, (v1 + v3), 0x111uLL);
  return sub_217AD1744(__dst, &v5);
}

uint64_t HeadlineExposureEvent.Model.userChannelContextData.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for HeadlineExposureEvent.Model(0);
  v4 = (v1 + *(result + 52));
  v5 = *v4;
  v6 = v4[1];
  LOWORD(v4) = *(v4 + 1);
  *a1 = v5;
  *(a1 + 1) = v6;
  *(a1 + 2) = v4;
  return result;
}

uint64_t HeadlineExposureEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for HeadlineExposureEvent.Model(0) + 56);
  v4 = *(v3 + 16);
  v8[0] = *v3;
  v8[1] = v4;
  v9 = *(v3 + 32);
  v5 = v9;
  LOBYTE(v3) = *(v3 + 48);
  v10 = v3;
  *a1 = v8[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  *(a1 + 48) = v3;
  return sub_217ACC004(v8, v7);
}

void HeadlineExposureEvent.Model.issueData.getter(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for HeadlineExposureEvent.Model(0) + 60));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;

  sub_217AE39D0(v4, v5, v6, v7);
}

uint64_t HeadlineExposureEvent.Model.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for HeadlineExposureEvent.Model(0) + 64);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  v6 = *(v3 + 17);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  *a1 = *v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 17) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
}

void HeadlineExposureEvent.Model.articleExposureContextData.getter(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for HeadlineExposureEvent.Model(0) + 68));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;

  sub_217AE3AE8(v4, v5, v6, v7, v8);
}

uint64_t HeadlineExposureEvent.Model.articleViewData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for HeadlineExposureEvent.Model(0) + 72));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t HeadlineExposureEvent.Model.searchResponseData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for HeadlineExposureEvent.Model(0);
  *a1 = *(v1 + *(result + 76));
  return result;
}

uint64_t HeadlineExposureEvent.Model.shareOriginationData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for HeadlineExposureEvent.Model(0);
  *a1 = *(v1 + *(result + 80));
  return result;
}

uint64_t HeadlineExposureEvent.Model.auxiliaryData.getter@<X0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for HeadlineExposureEvent.Model(0) + 84));
}

uint64_t HeadlineExposureEvent.Model.recirculationData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for HeadlineExposureEvent.Model(0) + 88));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t HeadlineExposureEvent.Model.experimentalScoreData.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for HeadlineExposureEvent.Model(0);
  v4 = (v1 + *(result + 92));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  return result;
}

uint64_t HeadlineExposureEvent.Model.offlineModeData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for HeadlineExposureEvent.Model(0);
  *a1 = *(v1 + *(result + 96));
  return result;
}

uint64_t HeadlineExposureEvent.Model.recipeListData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for HeadlineExposureEvent.Model(0) + 100));
  *a1 = v3;

  return sub_217AF77A0(v3);
}

uint64_t HeadlineExposureEvent.Model.dismissalData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for HeadlineExposureEvent.Model(0) + 104));
  v5 = *v3;
  v4 = v3[1];
  LOBYTE(v3) = *(v3 + 16);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

__n128 HeadlineExposureEvent.Model.init(eventData:adData:timedData:articleData:feedPositionData:inGroupPositionData:feedData:groupData:articleScienceData:userChannelContextData:userBundleSubscriptionContextData:issueData:channelData:articleExposureContextData:articleViewData:searchResponseData:shareOriginationData:auxiliaryData:recirculationData:experimentalScoreData:offlineModeData:recipeListData:dismissalData:)@<Q0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int *a5@<X4>, int *a6@<X5>, char *a7@<X6>, _OWORD *a8@<X7>, uint64_t a9@<X8>, const void *a10, char *a11, uint64_t a12, __int128 *a13, uint64_t *a14, uint64_t a15, uint64_t *a16, char *a17, char *a18, uint64_t *a19, uint64_t *a20, uint64_t *a21, char *a22, uint64_t *a23, uint64_t *a24)
{
  v61 = *a5;
  v62 = *(a6 + 4);
  v63 = *a6;
  v66 = *a7;
  v65 = *(a7 + 1);
  v64 = *(a7 + 2);
  v73 = a11[1];
  v74 = *a11;
  v72 = *(a11 + 1);
  v80 = *a14;
  v79 = a14[1];
  v77 = *(a14 + 17);
  v78 = *(a14 + 16);
  v75 = a14[4];
  v76 = a14[3];
  v81 = a16[1];
  v82 = *a16;
  v83 = *a17;
  v84 = *a18;
  v85 = *a19;
  v86 = a20[1];
  v87 = *a20;
  v88 = *(a21 + 8);
  v89 = *a21;
  v90 = *a23;
  v93 = a24[1];
  v94 = *a24;
  v91 = *a22;
  v92 = *(a24 + 16);
  v30 = *(a2 + 32);
  v71 = *(a15 + 32);
  v31 = sub_217D8899C();
  v69 = *(a15 + 16);
  v70 = *a15;
  v67 = a13[1];
  v68 = *a13;
  v59 = a2[1];
  v60 = *a2;
  (*(*(v31 - 8) + 32))(a9, a1, v31);
  v32 = type metadata accessor for HeadlineExposureEvent.Model(0);
  v33 = a9 + v32[5];
  *v33 = v60;
  *(v33 + 16) = v59;
  *(v33 + 32) = v30;
  v34 = v32[6];
  v35 = sub_217D889CC();
  (*(*(v35 - 8) + 32))(a9 + v34, a3, v35);
  v36 = a9 + v32[7];
  v37 = *(a4 + 48);
  *(v36 + 32) = *(a4 + 32);
  *(v36 + 48) = v37;
  v38 = *(a4 + 16);
  *v36 = *a4;
  *(v36 + 16) = v38;
  *(v36 + 127) = *(a4 + 127);
  v39 = *(a4 + 112);
  *(v36 + 96) = *(a4 + 96);
  *(v36 + 112) = v39;
  v40 = *(a4 + 80);
  *(v36 + 64) = *(a4 + 64);
  *(v36 + 80) = v40;
  *(a9 + v32[8]) = v61;
  v41 = a9 + v32[9];
  *v41 = v63;
  *(v41 + 4) = v62;
  v42 = a9 + v32[10];
  *v42 = v66;
  *(v42 + 8) = v65;
  *(v42 + 16) = v64;
  v43 = (a9 + v32[11]);
  v44 = a8[7];
  v43[6] = a8[6];
  v43[7] = v44;
  v43[8] = a8[8];
  v45 = a8[3];
  v43[2] = a8[2];
  v43[3] = v45;
  v46 = a8[5];
  v43[4] = a8[4];
  v43[5] = v46;
  v47 = a8[1];
  *v43 = *a8;
  v43[1] = v47;
  memcpy((a9 + v32[12]), a10, 0x111uLL);
  v48 = a9 + v32[13];
  *v48 = v74;
  *(v48 + 1) = v73;
  *(v48 + 2) = v72;
  v49 = a9 + v32[14];
  v50 = *(a12 + 16);
  *v49 = *a12;
  *(v49 + 16) = v50;
  *(v49 + 32) = *(a12 + 32);
  *(v49 + 48) = *(a12 + 48);
  v51 = (a9 + v32[15]);
  *v51 = v68;
  v51[1] = v67;
  v52 = a9 + v32[16];
  *v52 = v80;
  *(v52 + 8) = v79;
  *(v52 + 16) = v78;
  *(v52 + 17) = v77;
  *(v52 + 24) = v76;
  *(v52 + 32) = v75;
  v53 = a9 + v32[17];
  result = v70;
  *v53 = v70;
  *(v53 + 16) = v69;
  *(v53 + 32) = v71;
  v55 = (a9 + v32[18]);
  *v55 = v82;
  v55[1] = v81;
  *(a9 + v32[19]) = v83;
  *(a9 + v32[20]) = v84;
  *(a9 + v32[21]) = v85;
  v56 = (a9 + v32[22]);
  *v56 = v87;
  v56[1] = v86;
  v57 = a9 + v32[23];
  *v57 = v89;
  *(v57 + 8) = v88;
  *(a9 + v32[24]) = v91;
  *(a9 + v32[25]) = v90;
  v58 = a9 + v32[26];
  *v58 = v94;
  *(v58 + 8) = v93;
  *(v58 + 16) = v92;
  return result;
}

unint64_t sub_217C48CC0(char a1)
{
  result = 0x746144746E657665;
  switch(a1)
  {
    case 1:
      result = 0x617461446461;
      break;
    case 2:
      result = 0x74614464656D6974;
      break;
    case 3:
      result = 0x44656C6369747261;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0xD000000000000013;
      break;
    case 6:
      result = 0x6174614464656566;
      break;
    case 7:
      result = 0x74614470756F7267;
      break;
    case 8:
      result = 0xD000000000000012;
      break;
    case 9:
      result = 0xD000000000000016;
      break;
    case 10:
      result = 0xD000000000000021;
      break;
    case 11:
      result = 0x7461446575737369;
      break;
    case 12:
      result = 0x446C656E6E616863;
      break;
    case 13:
      result = 0xD00000000000001ALL;
      break;
    case 14:
      result = 0x56656C6369747261;
      break;
    case 15:
      result = 0xD000000000000012;
      break;
    case 16:
      result = 0xD000000000000014;
      break;
    case 17:
      result = 0x7261696C69787561;
      break;
    case 18:
      result = 0xD000000000000011;
      break;
    case 19:
      result = 0xD000000000000015;
      break;
    case 20:
      result = 0x4D656E696C66666FLL;
      break;
    case 21:
      result = 0x694C657069636572;
      break;
    case 22:
      result = 0x617373696D736964;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_217C48F8C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217C4BBC0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217C48FC0(uint64_t a1)
{
  v2 = sub_217C49CB8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C48FFC(uint64_t a1)
{
  v2 = sub_217C49CB8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HeadlineExposureEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217C4AE64(0, &qword_27CBA2AA0, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v74 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C49CB8();
  sub_217D89E7C();
  LOBYTE(v96[0]) = 0;
  sub_217D8899C();
  sub_217A60258(&unk_2811C8410, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEB8]);
  sub_217D89CAC();
  if (!v2)
  {
    v10 = type metadata accessor for HeadlineExposureEvent.Model(0);
    v11 = v3 + v10[5];
    v12 = *(v11 + 8);
    v13 = *(v11 + 16);
    v14 = *(v11 + 24);
    v15 = *(v11 + 32);
    v96[0] = *v11;
    v96[1] = v12;
    v96[2] = v13;
    v96[3] = v14;
    LOBYTE(v96[4]) = v15;
    v94[0] = 1;
    sub_217AE39D0(v96[0], v12, v13, v14);
    sub_217AF3490();
    sub_217D89C3C();
    sub_217AE4AA0(v96[0], v96[1], v96[2], v96[3]);
    v137[0] = 2;
    sub_217D889CC();
    sub_217A60258(&qword_2811C83F8, MEMORY[0x277CEAED0], MEMORY[0x277CEAED8]);
    sub_217D89CAC();
    v16 = v3 + v10[7];
    v17 = *(v16 + 80);
    v18 = *(v16 + 112);
    v135 = *(v16 + 96);
    *v136 = v18;
    v19 = *(v16 + 16);
    v20 = *(v16 + 48);
    v131 = *(v16 + 32);
    v132 = v20;
    v21 = *(v16 + 48);
    v22 = *(v16 + 80);
    v133 = *(v16 + 64);
    v134 = v22;
    v23 = *(v16 + 16);
    v130[0] = *v16;
    v130[1] = v23;
    v24 = *(v16 + 112);
    v128 = v135;
    v129[0] = v24;
    v124 = v131;
    v125 = v21;
    v127 = v17;
    v126 = v133;
    *&v136[15] = *(v16 + 127);
    *(v129 + 15) = *(v16 + 127);
    v123 = v19;
    v122 = v130[0];
    v121 = 3;
    sub_217AD1630(v130, v96);
    sub_217ACF52C();
    sub_217D89CAC();
    v119[6] = v128;
    *v120 = v129[0];
    *&v120[15] = *(v129 + 15);
    v119[2] = v124;
    v119[3] = v125;
    v119[5] = v127;
    v119[4] = v126;
    v119[1] = v123;
    v119[0] = v122;
    sub_217AD2864(v119);
    LODWORD(v96[0]) = *(v3 + v10[8]);
    v94[0] = 4;
    sub_217AD7710();
    sub_217D89CAC();
    v25 = (v3 + v10[9]);
    v26 = *v25;
    LOBYTE(v25) = *(v25 + 4);
    LODWORD(v96[0]) = v26;
    BYTE4(v96[0]) = v25;
    v94[0] = 5;
    sub_217B4FFFC();
    sub_217D89C3C();
    v27 = v3 + v10[10];
    v28 = *(v27 + 8);
    v29 = *(v27 + 16);
    v116[0] = *v27;
    v117 = v28;
    v118 = v29;
    v115 = 6;
    sub_217A5BA2C();

    sub_217D89CAC();

    v30 = (v3 + v10[11]);
    v31 = v30[5];
    v32 = v30[7];
    v112 = v30[6];
    v113 = v32;
    v33 = v30[7];
    v114 = v30[8];
    v34 = v30[1];
    v35 = v30[3];
    v108 = v30[2];
    v109 = v35;
    v37 = v30[3];
    v36 = v30[4];
    v38 = v36;
    v111 = v30[5];
    v110 = v36;
    v39 = *v30;
    v40 = *v30;
    v107[1] = v30[1];
    v107[0] = v39;
    v104 = v112;
    v105 = v33;
    v106 = v30[8];
    v100 = v108;
    v101 = v37;
    v103 = v31;
    v102 = v38;
    v99 = v34;
    v98 = v40;
    v97 = 7;
    sub_217AD87FC(v107, v96);
    sub_217A5D3B4();
    sub_217D89C3C();
    v95[6] = v104;
    v95[7] = v105;
    v95[8] = v106;
    v95[2] = v100;
    v95[3] = v101;
    v95[4] = v102;
    v95[5] = v103;
    v95[0] = v98;
    v95[1] = v99;
    sub_217AD96E8(v95);
    v41 = v10[12];
    memcpy(v96, (v3 + v41), 0x111uLL);
    memcpy(v94, (v3 + v41), sizeof(v94));
    v93[279] = 8;
    sub_217AD1744(v96, v93);
    sub_217ACF934();
    sub_217D89CAC();
    memcpy(v93, v94, 0x111uLL);
    sub_217AD28B8(v93);
    v42 = (v3 + v10[13]);
    v43 = *v42;
    v44 = v42[1];
    LOWORD(v42) = *(v42 + 1);
    v90 = v43;
    v91 = v44;
    v92 = v42;
    v89 = 9;
    sub_217ACFB8C();
    sub_217D89CAC();
    v45 = (v3 + v10[14]);
    v46 = v45[1];
    v87[0] = *v45;
    v87[1] = v46;
    v48 = *v45;
    v47 = v45[1];
    v87[2] = v45[2];
    v88 = *(v45 + 48);
    v83 = v48;
    v84 = v47;
    v85 = v45[2];
    v86 = *(v45 + 48);
    v82 = 10;
    sub_217ACC004(v87, v80);
    sub_217A55B98();
    sub_217D89CAC();
    v80[0] = v83;
    v80[1] = v84;
    v80[2] = v85;
    v81 = v86;
    sub_217ACC69C(v80);
    v49 = (v3 + v10[15]);
    v50 = v49[1];
    v51 = v49[2];
    v52 = v49[3];
    v74 = *v49;
    v75 = v50;
    v76 = v51;
    v77 = v52;
    v79 = 11;
    sub_217AE39D0(v74, v50, v51, v52);
    sub_217ACFF94();
    sub_217D89C3C();
    sub_217AE4AA0(v74, v75, v76, v77);
    v54 = v3 + v10[16];
    v55 = *(v54 + 8);
    v56 = *(v54 + 16);
    v57 = *(v54 + 17);
    v58 = *(v54 + 24);
    v59 = *(v54 + 32);
    v74 = *v54;
    v75 = v55;
    LOBYTE(v76) = v56;
    BYTE1(v76) = v57;
    v77 = v58;
    v78 = v59;
    v79 = 12;
    sub_217AD084C();

    sub_217D89CAC();

    v60 = (v3 + v10[17]);
    v61 = v60[1];
    v62 = v60[2];
    v63 = v60[3];
    v64 = v60[4];
    v74 = *v60;
    v75 = v61;
    v76 = v62;
    v77 = v63;
    v78 = v64;
    v79 = 13;
    sub_217AE3AE8(v74, v61, v62, v63, v64);
    sub_217AE2CFC();
    sub_217D89C3C();
    sub_217AE4AE4(v74, v75, v76, v77, v78);
    v65 = (v3 + v10[18]);
    v66 = v65[1];
    v74 = *v65;
    v75 = v66;
    v79 = 14;
    sub_217BA73F4();

    sub_217D89C3C();

    LOBYTE(v74) = *(v3 + v10[19]);
    v79 = 15;
    sub_217B2BA84();
    sub_217D89C3C();
    LOBYTE(v74) = *(v3 + v10[20]);
    v79 = 16;
    sub_217C46AB8();
    sub_217D89C3C();
    v74 = *(v3 + v10[21]);
    v79 = 17;
    sub_217B75F00();

    sub_217D89C3C();

    v67 = (v3 + v10[22]);
    v68 = v67[1];
    v74 = *v67;
    v75 = v68;
    v79 = 18;
    sub_217AE0B88();

    sub_217D89C3C();

    v69 = v3 + v10[23];
    v70 = *v69;
    LOBYTE(v69) = *(v69 + 8);
    v74 = v70;
    LOBYTE(v75) = v69;
    v79 = 19;
    sub_217B86F3C();
    sub_217D89C3C();
    LOBYTE(v74) = *(v3 + v10[24]);
    v79 = 20;
    sub_217ACA390();
    sub_217D89CAC();
    v74 = *(v3 + v10[25]);
    v79 = 21;
    sub_217AF77A0(v74);
    sub_217BB1A50();
    sub_217D89C3C();
    sub_217AF8158(v74);
    v71 = v3 + v10[26];
    v72 = *v71;
    v73 = *(v71 + 8);
    LOBYTE(v71) = *(v71 + 16);
    v74 = v72;
    v75 = v73;
    LOBYTE(v76) = v71;
    v79 = 22;
    sub_217AD7DEC();

    sub_217D89C3C();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_217C49CB8()
{
  result = qword_2811C11D0;
  if (!qword_2811C11D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C11D0);
  }

  return result;
}

void HeadlineExposureEvent.Model.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v3 = sub_217D889CC();
  v62 = *(v3 - 8);
  v63 = v3;
  MEMORY[0x28223BE20](v3);
  v65 = v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_217D8899C();
  v64 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v66 = v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217C4AE64(0, &qword_2811BC9B0, MEMORY[0x277D844C8]);
  v67 = *(v7 - 8);
  v68 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = v58 - v8;
  v10 = type metadata accessor for HeadlineExposureEvent.Model(0);
  MEMORY[0x28223BE20](v10);
  v12 = v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C49CB8();
  v69 = v9;
  v13 = v100;
  sub_217D89E5C();
  if (v13)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v14 = v65;
    v100 = a1;
    v59 = v10;
    v60 = v12;
    LOBYTE(v99[0]) = 0;
    sub_217A60258(&qword_2811C8408, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEC0]);
    v15 = v66;
    sub_217D89BCC();
    v16 = v60;
    (*(v64 + 32))(v60, v15, v5);
    LOBYTE(v81) = 1;
    sub_217AF343C();
    sub_217D89B5C();
    v58[2] = v5;
    v66 = 0;
    v17 = v99[2];
    v18 = &v16[v59[5]];
    v19 = v99[1];
    *v18 = v99[0];
    *(v18 + 1) = v19;
    v18[32] = v17;
    LOBYTE(v99[0]) = 2;
    sub_217A60258(&qword_2811C83F0, MEMORY[0x277CEAED0], MEMORY[0x277CEAEE0]);
    v20 = v14;
    v21 = v63;
    sub_217D89BCC();
    v22 = v59;
    (*(v62 + 32))(&v60[v59[6]], v20, v21);
    v90 = 3;
    sub_217ACF4D8();
    sub_217D89BCC();
    v23 = v60;
    v24 = &v60[v22[7]];
    v25 = *v98;
    *(v24 + 6) = v97;
    *(v24 + 7) = v25;
    *(v24 + 127) = *&v98[15];
    v26 = v94;
    *(v24 + 2) = v93;
    *(v24 + 3) = v26;
    v27 = v96;
    *(v24 + 4) = v95;
    *(v24 + 5) = v27;
    v28 = v92;
    *v24 = v91;
    *(v24 + 1) = v28;
    LOBYTE(v81) = 4;
    sub_217AD76BC();
    sub_217D89BCC();
    *&v23[v22[8]] = v99[0];
    LOBYTE(v81) = 5;
    sub_217B4FFA8();
    sub_217D89B5C();
    v29 = BYTE4(v99[0]);
    v30 = &v23[v22[9]];
    *v30 = v99[0];
    v30[4] = v29;
    LOBYTE(v81) = 6;
    sub_217A5B978();
    sub_217D89BCC();
    v31 = &v23[v22[10]];
    *v31 = v99[0];
    *(v31 + 8) = *(v99 + 8);
    v80 = 7;
    sub_217A5D308();
    sub_217D89B5C();
    v32 = &v23[v59[11]];
    v33 = v88;
    *(v32 + 6) = v87;
    *(v32 + 7) = v33;
    *(v32 + 8) = v89;
    v34 = v84;
    *(v32 + 2) = v83;
    *(v32 + 3) = v34;
    v35 = v86;
    *(v32 + 4) = v85;
    *(v32 + 5) = v35;
    v36 = v82;
    *v32 = v81;
    *(v32 + 1) = v36;
    v79 = 8;
    sub_217ACF8E0();
    sub_217D89BCC();
    memcpy(&v60[v59[12]], v99, 0x111uLL);
    LOBYTE(v70) = 9;
    sub_217ACFB38();
    sub_217D89BCC();
    v37 = BYTE1(v75);
    v38 = WORD1(v75);
    v39 = &v60[v59[13]];
    *v39 = v75;
    v39[1] = v37;
    *(v39 + 1) = v38;
    v74 = 10;
    sub_217A54D08();
    sub_217D89BCC();
    v40 = &v60[v59[14]];
    v41 = v76;
    *v40 = v75;
    *(v40 + 1) = v41;
    *(v40 + 2) = v77;
    v40[48] = v78;
    v73 = 11;
    sub_217ACFF40();
    sub_217D89B5C();
    v42 = &v60[v59[15]];
    v43 = v71;
    *v42 = v70;
    *(v42 + 1) = v43;
    v73 = 12;
    sub_217AD07F8();
    sub_217D89BCC();
    v44 = *(&v70 + 1);
    v45 = v71;
    v46 = BYTE1(v71);
    v47 = *(&v71 + 1);
    v48 = v72;
    v49 = &v60[v59[16]];
    *v49 = v70;
    *(v49 + 1) = v44;
    v49[16] = v45;
    v49[17] = v46;
    *(v49 + 3) = v47;
    *(v49 + 4) = v48;
    v73 = 13;
    sub_217AE2CA8();
    sub_217D89B5C();
    v50 = v72;
    v51 = &v60[v59[17]];
    v52 = v71;
    *v51 = v70;
    *(v51 + 1) = v52;
    *(v51 + 4) = v50;
    v73 = 14;
    sub_217BA73A0();
    sub_217D89B5C();
    *&v60[v59[18]] = v70;
    v73 = 15;
    sub_217B2BA2C();
    sub_217D89B5C();
    v60[v59[19]] = v70;
    v73 = 16;
    sub_217C46A64();
    sub_217D89B5C();
    v60[v59[20]] = v70;
    v73 = 17;
    sub_217B75EA8();
    sub_217D89B5C();
    *&v60[v59[21]] = v70;
    v73 = 18;
    sub_217AE0B30();
    sub_217D89B5C();
    *&v60[v59[22]] = v70;
    v73 = 19;
    sub_217B86EE4();
    sub_217D89B5C();
    v53 = BYTE8(v70);
    v54 = &v60[v59[23]];
    *v54 = v70;
    v54[8] = v53;
    v73 = 20;
    sub_217ACA338();
    sub_217D89BCC();
    v60[v59[24]] = v70;
    v73 = 21;
    sub_217BB19F8();
    sub_217D89B5C();
    *&v60[v59[25]] = v70;
    v73 = 22;
    sub_217AD7D98();
    sub_217D89B5C();
    (*(v67 + 8))(v69, v68);
    v55 = v71;
    v56 = v60;
    v57 = &v60[v59[26]];
    *v57 = v70;
    v57[16] = v55;
    sub_217C4AEC8(v56, v61);
    __swift_destroy_boxed_opaque_existential_1(v100);
    sub_217C4AF2C(v56);
  }
}

void sub_217C4AE64(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217C49CB8();
    v7 = a3(a1, &type metadata for HeadlineExposureEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217C4AEC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HeadlineExposureEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217C4AF2C(uint64_t a1)
{
  v2 = type metadata accessor for HeadlineExposureEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_217C4B08C(uint64_t a1)
{
  sub_217A6018C(319);
  if (v1 <= 0x3F)
  {
    sub_217C4752C(319, &qword_2811C8500, sub_217AF343C, sub_217AF3490, &type metadata for AdData);
    if (v2 <= 0x3F)
    {
      sub_217A608E0(319);
      if (v3 <= 0x3F)
      {
        sub_217C4752C(319, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
        if (v4 <= 0x3F)
        {
          sub_217C4752C(319, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710, &type metadata for FeedPositionData);
          if (v5 <= 0x3F)
          {
            sub_217C4752C(319, &qword_2811C8608, sub_217B4FFA8, sub_217B4FFFC, &type metadata for InGroupPositionData);
            if (v6 <= 0x3F)
            {
              sub_217C4752C(319, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
              if (v7 <= 0x3F)
              {
                sub_217C4752C(319, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
                if (v8 <= 0x3F)
                {
                  sub_217C4752C(319, &qword_2811C87D0, sub_217ACF8E0, sub_217ACF934, &type metadata for ScienceData);
                  if (v9 <= 0x3F)
                  {
                    sub_217C4752C(319, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
                    if (v10 <= 0x3F)
                    {
                      sub_217C4752C(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
                      if (v11 <= 0x3F)
                      {
                        sub_217C4752C(319, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
                        if (v12 <= 0x3F)
                        {
                          sub_217C4752C(319, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
                          if (v13 <= 0x3F)
                          {
                            sub_217C4752C(319, &qword_2811C8570, sub_217AE2CA8, sub_217AE2CFC, &type metadata for ArticleExposureContextData);
                            if (v14 <= 0x3F)
                            {
                              sub_217C4752C(319, &qword_2811C8700, sub_217BA73A0, sub_217BA73F4, &type metadata for ArticleViewData);
                              if (v15 <= 0x3F)
                              {
                                sub_217C4752C(319, &qword_2811C8638, sub_217B2BA2C, sub_217B2BA84, &type metadata for SearchResponseData);
                                if (v16 <= 0x3F)
                                {
                                  sub_217C4752C(319, &qword_2811C85C8, sub_217C46A64, sub_217C46AB8, &type metadata for ShareOriginationData);
                                  if (v17 <= 0x3F)
                                  {
                                    sub_217C4752C(319, &qword_2811C8778, sub_217B75EA8, sub_217B75F00, &type metadata for AuxiliaryData);
                                    if (v18 <= 0x3F)
                                    {
                                      sub_217C4752C(319, &qword_2811C8678, sub_217AE0B30, sub_217AE0B88, &type metadata for RecirculationData);
                                      if (v19 <= 0x3F)
                                      {
                                        sub_217C4752C(319, &qword_2811C84B0, sub_217B86EE4, sub_217B86F3C, &type metadata for ScoreData);
                                        if (v20 <= 0x3F)
                                        {
                                          sub_217C4752C(319, &qword_2811C86F0, sub_217ACA338, sub_217ACA390, &type metadata for OfflineModeData);
                                          if (v21 <= 0x3F)
                                          {
                                            sub_217C4752C(319, &qword_2811C8718, sub_217BB19F8, sub_217BB1A50, &type metadata for RecipeListData);
                                            if (v22 <= 0x3F)
                                            {
                                              sub_217C4752C(319, &qword_2811C8770, sub_217AD7D98, sub_217AD7DEC, &type metadata for DismissalData);
                                              if (v23 <= 0x3F)
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
          }
        }
      }
    }
  }
}

void sub_217C4B7CC(uint64_t a1)
{
  sub_217D8899C();
  if (v1 <= 0x3F)
  {
    sub_217A5E974(319, &qword_2811BD3F0, &type metadata for AdData);
    if (v2 <= 0x3F)
    {
      sub_217D889CC();
      if (v3 <= 0x3F)
      {
        sub_217A5E974(319, &qword_2811C29D8, &type metadata for InGroupPositionData);
        if (v4 <= 0x3F)
        {
          sub_217A5E974(319, &qword_2811BD178, &type metadata for GroupData);
          if (v5 <= 0x3F)
          {
            sub_217A5E974(319, &qword_2811BD110, &type metadata for IssueData);
            if (v6 <= 0x3F)
            {
              sub_217A5E974(319, &qword_2811BF120, &type metadata for ArticleExposureContextData);
              if (v7 <= 0x3F)
              {
                sub_217A5E974(319, &qword_2811C6910, &type metadata for ArticleViewData);
                if (v8 <= 0x3F)
                {
                  sub_217A5E974(319, &qword_2811C2E40, &type metadata for SearchResponseData);
                  if (v9 <= 0x3F)
                  {
                    sub_217A5E974(319, &qword_2811C1C58, &type metadata for ShareOriginationData);
                    if (v10 <= 0x3F)
                    {
                      sub_217A5E974(319, &qword_2811C7850, &type metadata for AuxiliaryData);
                      if (v11 <= 0x3F)
                      {
                        sub_217A5E974(319, &qword_2811C4350, &type metadata for RecirculationData);
                        if (v12 <= 0x3F)
                        {
                          sub_217A5E974(319, &qword_2811BD090, &type metadata for ScoreData);
                          if (v13 <= 0x3F)
                          {
                            sub_217A5E974(319, &qword_2811C6AD8, &type metadata for RecipeListData);
                            if (v14 <= 0x3F)
                            {
                              sub_217A5E974(319, &qword_2811C7628, &type metadata for DismissalData);
                              if (v15 <= 0x3F)
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
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_217C4BABC()
{
  result = qword_27CBA2AA8;
  if (!qword_27CBA2AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2AA8);
  }

  return result;
}

unint64_t sub_217C4BB14()
{
  result = qword_2811C11C0;
  if (!qword_2811C11C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C11C0);
  }

  return result;
}

unint64_t sub_217C4BB6C()
{
  result = qword_2811C11C8;
  if (!qword_2811C11C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C11C8);
  }

  return result;
}

uint64_t sub_217C4BBC0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x617461446461 && a2 == 0xE600000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74614464656D6974 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x44656C6369747261 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000217DCCD20 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000217DCDE60 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6174614464656566 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x74614470756F7267 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000217DCCCA0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000217DCCCC0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x7461446575737369 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x446C656E6E616863 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000217DCD5F0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x56656C6369747261 && a2 == 0xEF61746144776569 || (sub_217D89D4C() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000217DD1210 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000217DD1230 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x7261696C69787561 && a2 == 0xED00006174614479 || (sub_217D89D4C() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000217DD1250 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000217DD0520 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0x4D656E696C66666FLL && a2 == 0xEF6174614465646FLL || (sub_217D89D4C() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0x694C657069636572 && a2 == 0xEE00617461447473 || (sub_217D89D4C() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0x617373696D736964 && a2 == 0xED0000617461446CLL)
  {

    return 22;
  }

  else
  {
    v6 = sub_217D89D4C();

    if (v6)
    {
      return 22;
    }

    else
    {
      return 23;
    }
  }
}

uint64_t sub_217C4C3B0()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA2AE0);
  __swift_project_value_buffer(v0, qword_27CBA2AE0);
  return sub_217D8866C();
}

uint64_t LiveActivitySubscribeEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t LiveActivitySubscribeEvent.groupData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LiveActivitySubscribeEvent(0) + 20);
  sub_217C4CC74(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t LiveActivitySubscribeEvent.groupData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for LiveActivitySubscribeEvent(0) + 20);
  sub_217C4CC74(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t LiveActivitySubscribeEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LiveActivitySubscribeEvent(0) + 24);
  sub_217C4CC74(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t LiveActivitySubscribeEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for LiveActivitySubscribeEvent(0) + 24);
  sub_217C4CC74(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t LiveActivitySubscribeEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LiveActivitySubscribeEvent(0) + 28);
  sub_217C4CC74(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t LiveActivitySubscribeEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for LiveActivitySubscribeEvent(0) + 28);
  sub_217C4CC74(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t LiveActivitySubscribeEvent.liveActivityData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LiveActivitySubscribeEvent(0) + 32);
  sub_217C4CC74(0, &qword_27CB9F3F8, sub_217B0F410, sub_217B0F464, &type metadata for LiveActivityData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t LiveActivitySubscribeEvent.liveActivityData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for LiveActivitySubscribeEvent(0) + 32);
  sub_217C4CC74(0, &qword_27CB9F3F8, sub_217B0F410, sub_217B0F464, &type metadata for LiveActivityData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t LiveActivitySubscribeEvent.liveActivityOriginationData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LiveActivitySubscribeEvent(0) + 36);
  sub_217C4CC74(0, &qword_27CB9F428, sub_217B0FA70, sub_217B0FAC4, &type metadata for LiveActivityOriginationData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217C4CC74(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3();
    a4();
    v7 = sub_217D8829C();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t LiveActivitySubscribeEvent.liveActivityOriginationData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for LiveActivitySubscribeEvent(0) + 36);
  sub_217C4CC74(0, &qword_27CB9F428, sub_217B0FA70, sub_217B0FAC4, &type metadata for LiveActivityOriginationData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t LiveActivitySubscribeEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for LiveActivitySubscribeEvent(0);
  v5 = v4[5];
  v6 = *MEMORY[0x277CEACF0];
  sub_217C4CC74(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  (*(*(v7 - 8) + 104))(a1 + v5, v6, v7);
  v8 = v4[6];
  sub_217C4CC74(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  (*(*(v9 - 8) + 104))(a1 + v8, v6, v9);
  v10 = v4[7];
  sub_217C4CC74(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v11 - 8) + 104))(a1 + v10, v2, v11);
  v12 = v4[8];
  sub_217C4CC74(0, &qword_27CB9F3F8, sub_217B0F410, sub_217B0F464, &type metadata for LiveActivityData);
  (*(*(v13 - 8) + 104))(a1 + v12, v2, v13);
  v14 = v4[9];
  sub_217C4CC74(0, &qword_27CB9F428, sub_217B0FA70, sub_217B0FAC4, &type metadata for LiveActivityOriginationData);
  v16 = *(*(v15 - 8) + 104);

  return v16(a1 + v14, v2, v15);
}

uint64_t LiveActivitySubscribeEvent.Model.groupData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for LiveActivitySubscribeEvent.Model(0) + 20));
  v4 = v3[5];
  v5 = v3[7];
  v22 = v3[6];
  v23 = v5;
  v6 = v3[7];
  v24 = v3[8];
  v7 = v3[1];
  v8 = v3[3];
  v18 = v3[2];
  v9 = v18;
  v19 = v8;
  v10 = v3[3];
  v11 = v3[5];
  v20 = v3[4];
  v12 = v20;
  v21 = v11;
  v13 = v3[1];
  v17[0] = *v3;
  v14 = v17[0];
  v17[1] = v13;
  a1[6] = v22;
  a1[7] = v6;
  a1[8] = v3[8];
  a1[2] = v9;
  a1[3] = v10;
  a1[4] = v12;
  a1[5] = v4;
  *a1 = v14;
  a1[1] = v7;
  return sub_217AD87FC(v17, &v16);
}

uint64_t LiveActivitySubscribeEvent.Model.feedData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for LiveActivitySubscribeEvent.Model(0) + 24));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;

  return sub_217AD1A68(v4, v5, v6);
}

uint64_t LiveActivitySubscribeEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for LiveActivitySubscribeEvent.Model(0) + 28));
  v4 = v3[2];
  v10 = v3[1];
  v5 = v10;
  v11 = v4;
  v12 = *(v3 + 48);
  v6 = v12;
  v9 = *v3;
  *a1 = v9;
  *(a1 + 16) = v5;
  *(a1 + 32) = v4;
  *(a1 + 48) = v6;
  return sub_217ACC004(&v9, v8);
}

uint64_t LiveActivitySubscribeEvent.Model.liveActivityData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for LiveActivitySubscribeEvent.Model(0) + 32));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t LiveActivitySubscribeEvent.Model.liveActivityOriginationData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for LiveActivitySubscribeEvent.Model(0);
  *a1 = *(v1 + *(result + 36));
  return result;
}

__n128 LiveActivitySubscribeEvent.Model.init(eventData:groupData:feedData:userBundleSubscriptionContextData:liveActivityData:liveActivityOriginationData:)@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, char *a6@<X5>, uint64_t a7@<X8>)
{
  v27 = *a3;
  v11 = *(a3 + 2);
  v12 = *a5;
  v13 = a5[1];
  v14 = *a6;
  v15 = sub_217D8899C();
  (*(*(v15 - 8) + 32))(a7, a1, v15);
  v16 = type metadata accessor for LiveActivitySubscribeEvent.Model(0);
  v17 = (a7 + v16[5]);
  v18 = a2[3];
  v17[2] = a2[2];
  v17[3] = v18;
  v19 = a2[1];
  *v17 = *a2;
  v17[1] = v19;
  v20 = a2[8];
  v17[7] = a2[7];
  v17[8] = v20;
  v21 = a2[6];
  v17[5] = a2[5];
  v17[6] = v21;
  v17[4] = a2[4];
  v22 = a7 + v16[6];
  *v22 = v27;
  *(v22 + 16) = v11;
  v23 = a7 + v16[7];
  v24 = *(a4 + 16);
  *v23 = *a4;
  *(v23 + 16) = v24;
  result = *(a4 + 32);
  *(v23 + 32) = result;
  *(v23 + 48) = *(a4 + 48);
  v26 = (a7 + v16[8]);
  *v26 = v12;
  v26[1] = v13;
  *(a7 + v16[9]) = v14;
  return result;
}

unint64_t sub_217C4D3FC()
{
  v1 = *v0;
  v2 = 0x746144746E657665;
  v3 = 0xD000000000000021;
  v4 = 0xD000000000000010;
  if (v1 != 4)
  {
    v4 = 0xD00000000000001BLL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x74614470756F7267;
  if (v1 != 1)
  {
    v5 = 0x6174614464656566;
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

uint64_t sub_217C4D4C8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217C4EA40(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217C4D4F0(uint64_t a1)
{
  v2 = sub_217C4D9DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C4D52C(uint64_t a1)
{
  v2 = sub_217C4D9DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LiveActivitySubscribeEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217C4E11C(0, &qword_27CBA2AF8, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v31 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C4D9DC();
  sub_217D89E7C();
  v68[0] = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410, MEMORY[0x277CEAEB8]);
  sub_217D89CAC();
  if (!v2)
  {
    v10 = type metadata accessor for LiveActivitySubscribeEvent.Model(0);
    v11 = (v3 + v10[5]);
    v12 = v11[6];
    v13 = v11[4];
    v64 = v11[5];
    v65 = v12;
    v14 = v11[6];
    v15 = v11[8];
    v66 = v11[7];
    v67 = v15;
    v16 = v11[2];
    v17 = *v11;
    v60 = v11[1];
    v61 = v16;
    v18 = v11[2];
    v19 = v11[4];
    v62 = v11[3];
    v63 = v19;
    v20 = *v11;
    v56 = v14;
    v57 = v66;
    v58 = v11[8];
    v59 = v20;
    v52 = v18;
    v53 = v62;
    v54 = v13;
    v55 = v64;
    v50 = v17;
    v51 = v60;
    v49 = 1;
    sub_217AD87FC(&v59, v48);
    sub_217A5D3B4();
    sub_217D89C3C();
    v48[6] = v56;
    v48[7] = v57;
    v48[8] = v58;
    v48[2] = v52;
    v48[3] = v53;
    v48[4] = v54;
    v48[5] = v55;
    v48[0] = v50;
    v48[1] = v51;
    sub_217AD96E8(v48);
    v21 = (v3 + v10[6]);
    v22 = v21[1];
    v23 = v21[2];
    v45 = *v21;
    v46 = v22;
    v47 = v23;
    v44 = 2;
    sub_217AD1A68(v45, v22, v23);
    sub_217A5BA2C();
    sub_217D89C3C();
    sub_217AD290C(v45, v46, v47);
    v24 = (v3 + v10[7]);
    v25 = v24[1];
    v42[0] = *v24;
    v42[1] = v25;
    v27 = *v24;
    v26 = v24[1];
    v42[2] = v24[2];
    v43 = *(v24 + 48);
    v38 = v27;
    v39 = v26;
    v40 = v24[2];
    v41 = *(v24 + 48);
    v37 = 3;
    sub_217ACC004(v42, v35);
    sub_217A55B98();
    sub_217D89CAC();
    v35[0] = v38;
    v35[1] = v39;
    v35[2] = v40;
    v36 = v41;
    sub_217ACC69C(v35);
    v28 = (v3 + v10[8]);
    v29 = v28[1];
    v33 = *v28;
    v34 = v29;
    v32 = 4;
    sub_217B0F464();

    sub_217D89CAC();

    LOBYTE(v33) = *(v3 + v10[9]);
    v32 = 5;
    sub_217B0FAC4();
    sub_217D89CAC();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_217C4D9DC()
{
  result = qword_27CBA2B00;
  if (!qword_27CBA2B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2B00);
  }

  return result;
}

uint64_t LiveActivitySubscribeEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v4 = sub_217D8899C();
  v30 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v32 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217C4E11C(0, &qword_27CBA2B08, MEMORY[0x277D844C8]);
  v52 = v6;
  v31 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v28 - v7;
  v9 = type metadata accessor for LiveActivitySubscribeEvent.Model(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C4D9DC();
  v33 = v8;
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v31;
  LOBYTE(v43) = 0;
  sub_217A602A0(&qword_2811C8408, MEMORY[0x277CEAEC0]);
  v13 = v32;
  sub_217D89BCC();
  (*(v30 + 32))(v11, v13, v4);
  v42 = 1;
  sub_217A5D308();
  sub_217D89B5C();
  v14 = &v11[v9[5]];
  v15 = v48;
  v16 = v50;
  v17 = v51;
  *(v14 + 6) = v49;
  *(v14 + 7) = v16;
  *(v14 + 8) = v17;
  v18 = v46;
  v19 = v47;
  *(v14 + 2) = v45;
  *(v14 + 3) = v18;
  *(v14 + 4) = v19;
  *(v14 + 5) = v15;
  v20 = v44;
  *v14 = v43;
  *(v14 + 1) = v20;
  LOBYTE(v35) = 2;
  sub_217A5B978();
  v32 = 0;
  sub_217D89B5C();
  v21 = v39;
  v22 = &v11[v9[6]];
  *v22 = v38;
  *(v22 + 2) = v21;
  v37 = 3;
  sub_217A54D08();
  sub_217D89BCC();
  v23 = &v11[v9[7]];
  v24 = v39;
  *v23 = v38;
  *(v23 + 1) = v24;
  *(v23 + 2) = v40;
  v23[48] = v41;
  v34 = 4;
  sub_217B0F410();
  sub_217D89BCC();
  v25 = v36;
  v26 = &v11[v9[8]];
  *v26 = v35;
  *(v26 + 1) = v25;
  v34 = 5;
  sub_217B0FA70();
  sub_217D89BCC();
  (*(v12 + 8))(v33, v52);
  v11[v9[9]] = v35;
  sub_217C4E180(v11, v29);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_217C4E1E4(v11);
}

void sub_217C4E11C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217C4D9DC();
    v7 = a3(a1, &type metadata for LiveActivitySubscribeEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217C4E180(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LiveActivitySubscribeEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217C4E1E4(uint64_t a1)
{
  v2 = type metadata accessor for LiveActivitySubscribeEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217C4E318@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  v7 = *MEMORY[0x277CEACF0];
  sub_217C4CC74(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  (*(*(v8 - 8) + 104))(a2 + v6, v7, v8);
  v9 = a1[6];
  sub_217C4CC74(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  (*(*(v10 - 8) + 104))(a2 + v9, v7, v10);
  v11 = a1[7];
  sub_217C4CC74(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v12 - 8) + 104))(a2 + v11, v4, v12);
  v13 = a1[8];
  sub_217C4CC74(0, &qword_27CB9F3F8, sub_217B0F410, sub_217B0F464, &type metadata for LiveActivityData);
  (*(*(v14 - 8) + 104))(a2 + v13, v4, v14);
  v15 = a1[9];
  sub_217C4CC74(0, &qword_27CB9F428, sub_217B0FA70, sub_217B0FAC4, &type metadata for LiveActivityOriginationData);
  v17 = *(*(v16 - 8) + 104);

  return v17(a2 + v15, v4, v16);
}

void sub_217C4E62C(uint64_t a1)
{
  sub_217A6018C(319);
  if (v1 <= 0x3F)
  {
    sub_217C4CC74(319, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
    if (v2 <= 0x3F)
    {
      sub_217C4CC74(319, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
      if (v3 <= 0x3F)
      {
        sub_217C4CC74(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
        if (v4 <= 0x3F)
        {
          sub_217C4CC74(319, &qword_27CB9F3F8, sub_217B0F410, sub_217B0F464, &type metadata for LiveActivityData);
          if (v5 <= 0x3F)
          {
            sub_217C4CC74(319, &qword_27CB9F428, sub_217B0FA70, sub_217B0FAC4, &type metadata for LiveActivityOriginationData);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_217C4E850(uint64_t a1)
{
  sub_217D8899C();
  if (v1 <= 0x3F)
  {
    sub_217A5E974(319, &qword_2811BD178, &type metadata for GroupData);
    if (v2 <= 0x3F)
    {
      sub_217A5E974(319, &qword_2811BD308, &type metadata for FeedData);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_217C4E93C()
{
  result = qword_27CBA2B30;
  if (!qword_27CBA2B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2B30);
  }

  return result;
}

unint64_t sub_217C4E994()
{
  result = qword_27CBA2B38;
  if (!qword_27CBA2B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2B38);
  }

  return result;
}

unint64_t sub_217C4E9EC()
{
  result = qword_27CBA2B40;
  if (!qword_27CBA2B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2B40);
  }

  return result;
}

uint64_t sub_217C4EA40(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74614470756F7267 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6174614464656566 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000217DCD8E0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001BLL && 0x8000000217DCD900 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_217D89D4C();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_217C4EC98(uint64_t a1)
{
  v2 = sub_217A64D94();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C4ECD4(uint64_t a1)
{
  v2 = sub_217A64D94();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ContentEnvironmentData.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_217A64D18(0, &qword_2811BC988, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217A64D94();
  sub_217D89E5C();
  if (!v2)
  {
    sub_217C4EEA8();
    sub_217D89BCC();
    (*(v7 + 8))(v9, v6);
    *a2 = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_217C4EEA8()
{
  result = qword_2811C04A0;
  if (!qword_2811C04A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C04A0);
  }

  return result;
}

unint64_t sub_217C4EF38()
{
  result = qword_27CBA2B48;
  if (!qword_27CBA2B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2B48);
  }

  return result;
}

void sub_217C4EFA0(uint64_t a1)
{
  if (!qword_27CB9EBD8)
  {
    type metadata accessor for SessionData(255);
    v1 = sub_217D898EC();
    if (!v2)
    {
      atomic_store(v1, &qword_27CB9EBD8);
    }
  }
}

uint64_t type metadata accessor for Session(uint64_t a1)
{
  result = qword_27CBA2B50;
  if (!qword_27CBA2B50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_217C4F058(uint64_t a1)
{
  sub_217A5E974(319, &qword_2811BCE70, MEMORY[0x277D837D0]);
  if (v1 <= 0x3F)
  {
    sub_217C4EFA0(319);
    if (v2 <= 0x3F)
    {
      sub_217A5E974(319, &qword_27CBA2B60, &type metadata for UserData);
      if (v3 <= 0x3F)
      {
        sub_217A5E974(319, &qword_27CB9ECC0, &type metadata for OrientationData);
        if (v4 <= 0x3F)
        {
          sub_217A5E974(319, &qword_2811BDCD8, &type metadata for UserBundleSubscriptionContextData);
          if (v5 <= 0x3F)
          {
            sub_217A5E974(319, &qword_27CBA2B68, &type metadata for UserSubscriptionContextData);
            if (v6 <= 0x3F)
            {
              sub_217A5E974(319, &qword_27CBA2B70, &type metadata for WindowData);
              if (v7 <= 0x3F)
              {
                sub_217A5E974(319, &qword_27CBA2B78, &type metadata for AppData);
                if (v8 <= 0x3F)
                {
                  sub_217A5E974(319, &qword_27CBA2B80, &type metadata for DeviceData);
                  if (v9 <= 0x3F)
                  {
                    sub_217A5E974(319, &qword_2811C4CD8, &type metadata for SubscriptionData);
                    if (v10 <= 0x3F)
                    {
                      sub_217A5E974(319, &qword_27CBA2B88, &type metadata for AutoSubscribedData);
                      if (v11 <= 0x3F)
                      {
                        sub_217A5E974(319, &qword_27CBA2B90, &type metadata for ContentEnvironmentData);
                        if (v12 <= 0x3F)
                        {
                          sub_217A5E974(319, &qword_27CBA2B98, &type metadata for NotificationSettingsData);
                          if (v13 <= 0x3F)
                          {
                            sub_217A5E974(319, &qword_2811BF670, &type metadata for SubscribedSportsListData);
                            if (v14 <= 0x3F)
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
            }
          }
        }
      }
    }
  }
}

uint64_t sub_217C4F2D4(char a1)
{
  result = 0x496E6F6973736573;
  switch(a1)
  {
    case 1:
      result = 0x6973736553707061;
      break;
    case 2:
      result = 0x446E6F6973736573;
      break;
    case 3:
      result = 0x6174614472657375;
      break;
    case 4:
      result = 0x7461746E6569726FLL;
      break;
    case 5:
      result = 0xD000000000000021;
      break;
    case 6:
      result = 0xD00000000000001BLL;
      break;
    case 7:
      v3 = 0x776F646E6977;
      goto LABEL_11;
    case 8:
      result = 0x61746144707061;
      break;
    case 9:
      v3 = 0x656369766564;
LABEL_11:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6144000000000000;
      break;
    case 10:
      result = 0xD000000000000010;
      break;
    case 11:
      result = 0xD000000000000012;
      break;
    case 12:
      result = 0xD000000000000016;
      break;
    case 13:
      result = 0xD000000000000018;
      break;
    case 14:
      result = 0xD000000000000018;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_217C4F4A4(void *a1)
{
  v3 = v1;
  sub_217C509CC(0, &qword_27CBA2BA0, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v49 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C507F8();
  sub_217D89E7C();
  LOBYTE(v60[0]) = 0;
  sub_217D89C6C();
  if (!v2)
  {
    LOBYTE(v60[0]) = 1;
    sub_217D89C0C();
    v10 = type metadata accessor for Session(0);
    v63 = 2;
    type metadata accessor for SessionData(0);
    sub_217B702A4(&qword_2811C7C58, &protocol conformance descriptor for SessionData);
    sub_217D89C3C();
    v11 = (v3 + v10[7]);
    v12 = v11[1];
    v60[0] = *v11;
    v60[1] = v12;
    v13 = v11[3];
    v15 = *v11;
    v14 = v11[1];
    v60[2] = v11[2];
    v60[3] = v13;
    v56 = v15;
    v57 = v14;
    v16 = v11[3];
    v58 = v11[2];
    v59 = v16;
    v62 = 3;
    sub_217C50A30(v60, v55);
    sub_217A5909C();
    sub_217D89C3C();
    v55[0] = v56;
    v55[1] = v57;
    v55[2] = v58;
    v55[3] = v59;
    sub_217C5089C(v55);
    LOWORD(v49) = *(v3 + v10[8]);
    v61 = 4;
    sub_217A4CF88();
    sub_217D89C3C();
    v17 = v3 + v10[9];
    v18 = *(v17 + 8);
    v19 = *(v17 + 16);
    v20 = *(v17 + 24);
    v21 = *(v17 + 32);
    v22 = *(v17 + 40);
    v23 = *(v17 + 48);
    *&v49 = *v17;
    *(&v49 + 1) = v18;
    v50 = v19;
    v51 = v20;
    v52 = v21;
    v53 = v22;
    LOBYTE(v54) = v23;
    v61 = 5;
    sub_217C50AA4(v49, v18, v19, v20, v21, v22);
    sub_217A55B98();
    sub_217D89C3C();
    sub_217BC84CC(v49, *(&v49 + 1), v50, v51, v52, v53);
    v24 = (v3 + v10[10]);
    v25 = v24[1];
    *&v49 = *v24;
    *(&v49 + 1) = v25;
    v61 = 6;
    sub_217A4DB48();

    sub_217D89C3C();

    v26 = (v3 + v10[11]);
    v27 = v26[1];
    *&v49 = *v26;
    *(&v49 + 1) = v27;
    v61 = 7;
    sub_217A57090();

    sub_217D89C3C();

    v29 = (v3 + v10[12]);
    v30 = v29[1];
    v31 = v29[2];
    v32 = v29[3];
    *&v49 = *v29;
    *(&v49 + 1) = v30;
    v50 = v31;
    v51 = v32;
    v61 = 8;
    sub_217AE39D0(v49, v30, v31, v32);
    sub_217A57A80();
    sub_217D89C3C();
    sub_217AE4AA0(v49, *(&v49 + 1), v50, v51);
    v33 = (v3 + v10[13]);
    v34 = v33[1];
    v35 = v33[2];
    v36 = v33[3];
    v37 = v33[4];
    v38 = v33[5];
    v39 = v33[6];
    *&v49 = *v33;
    *(&v49 + 1) = v34;
    v50 = v35;
    v51 = v36;
    v52 = v37;
    v53 = v38;
    v54 = v39;
    v61 = 9;
    sub_217C50AEC(v49, v34, v35, v36, v37, v38, v39);
    sub_217A57F94();
    sub_217D89C3C();
    sub_217C5084C(v49, *(&v49 + 1), v50, v51, v52, v53, v54);
    v40 = (v3 + v10[14]);
    v41 = v40[1];
    v42 = v40[2];
    v43 = v40[3];
    v44 = v40[4];
    v45 = v40[5];
    v46 = v40[6];
    *&v49 = *v40;
    *(&v49 + 1) = v41;
    v50 = v42;
    v51 = v43;
    v52 = v44;
    v53 = v45;
    v54 = v46;
    v61 = 10;
    sub_217C50B3C(v49, v41, v42, v43, v44, v45);
    sub_217A55E38();
    sub_217D89C3C();
    sub_217BC8514(v49, *(&v49 + 1), v50, v51, v52, v53);
    v47 = (v3 + v10[15]);
    v48 = *v47;
    LOBYTE(v47) = *(v47 + 4);
    LODWORD(v49) = v48;
    BYTE4(v49) = v47;
    v61 = 11;
    sub_217A4F574();
    sub_217D89C3C();
    LOBYTE(v49) = *(v3 + v10[16]);
    v61 = 12;
    sub_217A4C65C();
    sub_217D89C3C();
    v49 = *(v3 + v10[17]);
    v61 = 13;
    sub_217A5062C();

    sub_217D89C3C();

    *&v49 = *(v3 + v10[18]);
    v61 = 14;
    sub_217A4FCA8();

    sub_217D89C3C();
  }

  return (*(v7 + 8))(v9, v6);
}

void sub_217C4FB9C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  sub_217C4EFA0(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217C509CC(0, &qword_2811BC908, MEMORY[0x277D844C8]);
  v42 = *(v7 - 8);
  v43 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v37 - v8;
  v10 = type metadata accessor for Session(0);
  MEMORY[0x28223BE20](v10);
  v12 = (&v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C507F8();
  v44 = v9;
  sub_217D89E5C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v13 = v6;
    v39 = a1;
    v14 = v42;
    v38 = v10;
    v40 = v12;
    LOBYTE(v49) = 0;
    v15 = sub_217D89B8C();
    v16 = v40;
    *v40 = v15;
    v16[1] = v17;
    LOBYTE(v49) = 1;
    v16[2] = sub_217D89B2C();
    v16[3] = v18;
    type metadata accessor for SessionData(0);
    LOBYTE(v49) = 2;
    sub_217B702A4(&qword_2811C7C50, &protocol conformance descriptor for SessionData);
    v37 = 0;
    sub_217D89B5C();
    v19 = v38;
    sub_217ADE89C(v13, v16 + v38[6]);
    v54 = 3;
    sub_217A59044();
    sub_217D89B5C();
    v20 = (v16 + v19[7]);
    v21 = v50;
    *v20 = v49;
    v20[1] = v21;
    v22 = v52;
    v20[2] = v51;
    v20[3] = v22;
    v53 = 4;
    sub_217A4CF30();
    sub_217D89B5C();
    *(v16 + v19[8]) = v45;
    v53 = 5;
    sub_217A54D08();
    sub_217D89B5C();
    v23 = v48;
    v24 = v16 + v19[9];
    v25 = v46;
    *v24 = v45;
    *(v24 + 1) = v25;
    *(v24 + 2) = v47;
    v24[48] = v23;
    v53 = 6;
    sub_217A4DAF4();
    sub_217D89B5C();
    *(v16 + v19[10]) = v45;
    v53 = 7;
    sub_217A57038();
    sub_217D89B5C();
    *(v16 + v19[11]) = v45;
    v53 = 8;
    sub_217A57A28();
    sub_217D89B5C();
    v26 = (v40 + v38[12]);
    v27 = v46;
    *v26 = v45;
    v26[1] = v27;
    v53 = 9;
    sub_217A57F3C();
    sub_217D89B5C();
    v28 = v48;
    v29 = v40 + v38[13];
    v30 = v46;
    *v29 = v45;
    *(v29 + 1) = v30;
    *(v29 + 2) = v47;
    *(v29 + 6) = v28;
    v53 = 10;
    sub_217A4F460();
    sub_217D89B5C();
    v31 = v48;
    v32 = v40 + v38[14];
    v33 = v46;
    *v32 = v45;
    *(v32 + 1) = v33;
    *(v32 + 2) = v47;
    *(v32 + 6) = v31;
    v53 = 11;
    sub_217A4F51C();
    sub_217D89B5C();
    v34 = BYTE4(v45);
    v35 = v40 + v38[15];
    *v35 = v45;
    v35[4] = v34;
    v53 = 12;
    sub_217A4C604();
    sub_217D89B5C();
    *(v40 + v38[16]) = v45;
    v53 = 13;
    sub_217A505D4();
    sub_217D89B5C();
    *(v40 + v38[17]) = v45;
    v53 = 14;
    sub_217A4FC50();
    sub_217D89B5C();
    (*(v14 + 8))(v44, v43);
    v36 = v40;
    *(v40 + v38[18]) = v45;
    sub_217C50968(v36, v41);
    __swift_destroy_boxed_opaque_existential_1(v39);
    sub_217C50908(v36, type metadata accessor for Session);
  }
}

uint64_t sub_217C50728@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217C50CC4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217C50750(uint64_t a1)
{
  v2 = sub_217C507F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C5078C(uint64_t a1)
{
  v2 = sub_217C507F8();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_217C507F8()
{
  result = qword_2811BD3A8;
  if (!qword_2811BD3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD3A8);
  }

  return result;
}

void sub_217C5084C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2)
  {
  }
}

uint64_t sub_217C5089C(uint64_t a1)
{
  sub_217A5E974(0, &qword_27CBA2B60, &type metadata for UserData);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217C50908(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_217C50968(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Session(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_217C509CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217C507F8();
    v7 = a3(a1, &type metadata for Session.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217C50A30(uint64_t a1, uint64_t a2)
{
  sub_217A5E974(0, &qword_27CBA2B60, &type metadata for UserData);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_217C50AA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a3 != 1)
  {
  }
}

void sub_217C50AEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2)
  {
  }
}

void sub_217C50B3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
  }
}

unint64_t sub_217C50BC0()
{
  result = qword_27CBA2BA8;
  if (!qword_27CBA2BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2BA8);
  }

  return result;
}

unint64_t sub_217C50C18()
{
  result = qword_2811BD398;
  if (!qword_2811BD398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD398);
  }

  return result;
}

unint64_t sub_217C50C70()
{
  result = qword_2811BD3A0;
  if (!qword_2811BD3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD3A0);
  }

  return result;
}

uint64_t sub_217C50CC4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x496E6F6973736573 && a2 == 0xE900000000000044;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6973736553707061 && a2 == 0xEC00000044496E6FLL || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x446E6F6973736573 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6174614472657375 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7461746E6569726FLL && a2 == 0xEF617461446E6F69 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001BLL && 0x8000000217DD1270 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6144776F646E6977 && a2 == 0xEA00000000006174 || (sub_217D89D4C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x61746144707061 && a2 == 0xE700000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6144656369766564 && a2 == 0xEA00000000006174 || (sub_217D89D4C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000217DCEBD0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000217DCEC30 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000217DCE290 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000217DCEC10 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000217DCEC70 == a2)
  {

    return 14;
  }

  else
  {
    v6 = sub_217D89D4C();

    if (v6)
    {
      return 14;
    }

    else
    {
      return 15;
    }
  }
}

uint64_t sub_217C51258()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_2811C23D8);
  __swift_project_value_buffer(v0, qword_2811C23D8);
  return sub_217D8866C();
}

uint64_t AppSessionStartEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t AppSessionStartEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppSessionStartEvent(0) + 20);
  sub_217A62DDC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppSessionStartEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AppSessionStartEvent(0) + 20);
  sub_217A62DDC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AppSessionStartEvent.subscriptionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppSessionStartEvent(0) + 24);
  sub_217A62DDC(0, &qword_2811C8690, sub_217A4F460, sub_217A55E38, &type metadata for SubscriptionData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppSessionStartEvent.subscriptionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AppSessionStartEvent(0) + 24);
  sub_217A62DDC(0, &qword_2811C8690, sub_217A4F460, sub_217A55E38, &type metadata for SubscriptionData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AppSessionStartEvent.referralData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppSessionStartEvent(0) + 28);
  sub_217A62DDC(0, &qword_2811C8788, sub_217ACDC58, sub_217ACDCB0, &type metadata for ReferralData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppSessionStartEvent.referralData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AppSessionStartEvent(0) + 28);
  sub_217A62DDC(0, &qword_2811C8788, sub_217ACDC58, sub_217ACDCB0, &type metadata for ReferralData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AppSessionStartEvent.campaignData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppSessionStartEvent(0) + 32);
  sub_217A62DDC(0, &qword_2811C87A8, sub_217A66A84, sub_217A66ADC, &type metadata for CampaignData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppSessionStartEvent.campaignData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AppSessionStartEvent(0) + 32);
  sub_217A62DDC(0, &qword_2811C87A8, sub_217A66A84, sub_217A66ADC, &type metadata for CampaignData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AppSessionStartEvent.notificationData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppSessionStartEvent(0) + 36);
  sub_217A62DDC(0, &qword_2811C86B8, sub_217B9C22C, sub_217B9C280, &type metadata for NotificationData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppSessionStartEvent.notificationData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AppSessionStartEvent(0) + 36);
  sub_217A62DDC(0, &qword_2811C86B8, sub_217B9C22C, sub_217B9C280, &type metadata for NotificationData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AppSessionStartEvent.notificationSettingsData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppSessionStartEvent(0) + 40);
  sub_217A62DDC(0, &qword_2811C8590, sub_217A505D4, sub_217A5062C, &type metadata for NotificationSettingsData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppSessionStartEvent.notificationSettingsData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AppSessionStartEvent(0) + 40);
  sub_217A62DDC(0, &qword_2811C8590, sub_217A505D4, sub_217A5062C, &type metadata for NotificationSettingsData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AppSessionStartEvent.widgetEngagementData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppSessionStartEvent(0) + 44);
  sub_217A62DDC(0, &qword_2811C85C0, sub_217BBB5F8, sub_217BBB650, &type metadata for WidgetEngagementData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppSessionStartEvent.widgetEngagementData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AppSessionStartEvent(0) + 44);
  sub_217A62DDC(0, &qword_2811C85C0, sub_217BBB5F8, sub_217BBB650, &type metadata for WidgetEngagementData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AppSessionStartEvent.autoSubscribedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppSessionStartEvent(0) + 48);
  sub_217A62DDC(0, &qword_2811C8648, sub_217A4F51C, sub_217A4F574, &type metadata for AutoSubscribedData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppSessionStartEvent.autoSubscribedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AppSessionStartEvent(0) + 48);
  sub_217A62DDC(0, &qword_2811C8648, sub_217A4F51C, sub_217A4F574, &type metadata for AutoSubscribedData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AppSessionStartEvent.subscribedSportsListData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppSessionStartEvent(0) + 52);
  sub_217A62DDC(0, &qword_2811C8588, sub_217A4FC50, sub_217A4FCA8, &type metadata for SubscribedSportsListData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppSessionStartEvent.subscribedSportsListData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AppSessionStartEvent(0) + 52);
  sub_217A62DDC(0, &qword_2811C8588, sub_217A4FC50, sub_217A4FCA8, &type metadata for SubscribedSportsListData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AppSessionStartEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  started = type metadata accessor for AppSessionStartEvent(0);
  v5 = started[5];
  sub_217A62DDC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = started[6];
  sub_217A62DDC(0, &qword_2811C8690, sub_217A4F460, sub_217A55E38, &type metadata for SubscriptionData);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = started[7];
  v10 = *MEMORY[0x277CEACF0];
  sub_217A62DDC(0, &qword_2811C8788, sub_217ACDC58, sub_217ACDCB0, &type metadata for ReferralData);
  (*(*(v11 - 8) + 104))(a1 + v9, v10, v11);
  v12 = started[8];
  sub_217A62DDC(0, &qword_2811C87A8, sub_217A66A84, sub_217A66ADC, &type metadata for CampaignData);
  (*(*(v13 - 8) + 104))(a1 + v12, v10, v13);
  v14 = started[9];
  sub_217A62DDC(0, &qword_2811C86B8, sub_217B9C22C, sub_217B9C280, &type metadata for NotificationData);
  (*(*(v15 - 8) + 104))(a1 + v14, v10, v15);
  v16 = started[10];
  sub_217A62DDC(0, &qword_2811C8590, sub_217A505D4, sub_217A5062C, &type metadata for NotificationSettingsData);
  (*(*(v17 - 8) + 104))(a1 + v16, v2, v17);
  v18 = started[11];
  sub_217A62DDC(0, &qword_2811C85C0, sub_217BBB5F8, sub_217BBB650, &type metadata for WidgetEngagementData);
  (*(*(v19 - 8) + 104))(a1 + v18, v10, v19);
  v20 = started[12];
  sub_217A62DDC(0, &qword_2811C8648, sub_217A4F51C, sub_217A4F574, &type metadata for AutoSubscribedData);
  (*(*(v21 - 8) + 104))(a1 + v20, v2, v21);
  v22 = started[13];
  sub_217A62DDC(0, &qword_2811C8588, sub_217A4FC50, sub_217A4FCA8, &type metadata for SubscribedSportsListData);
  v24 = *(*(v23 - 8) + 104);

  return v24(a1 + v22, v10, v23);
}

uint64_t AppSessionStartEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AppSessionStartEvent.Model(0) + 20));
  v4 = v3[2];
  v10 = v3[1];
  v5 = v10;
  v11 = v4;
  v12 = *(v3 + 48);
  v6 = v12;
  v9 = *v3;
  *a1 = v9;
  *(a1 + 16) = v5;
  *(a1 + 32) = v4;
  *(a1 + 48) = v6;
  return sub_217ACC004(&v9, v8);
}

uint64_t AppSessionStartEvent.Model.subscriptionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AppSessionStartEvent.Model(0) + 24));
  v4 = v3[2];
  v10 = v3[1];
  v5 = v10;
  v11 = v4;
  v12 = *(v3 + 6);
  v6 = v12;
  v9 = *v3;
  *a1 = v9;
  *(a1 + 16) = v5;
  *(a1 + 32) = v4;
  *(a1 + 48) = v6;
  return sub_217B9E08C(&v9, v8);
}

void AppSessionStartEvent.Model.referralData.getter(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AppSessionStartEvent.Model(0) + 28));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;
  a1[5] = v9;
  sub_217B1563C(v4, v5, v6, v7, v8, v9);
}

void AppSessionStartEvent.Model.campaignData.getter(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AppSessionStartEvent.Model(0) + 32));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;
  a1[5] = v9;
  sub_217B1563C(v4, v5, v6, v7, v8, v9);
}

uint64_t AppSessionStartEvent.Model.notificationData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AppSessionStartEvent.Model(0) + 36));
  v4 = v3[3];
  v12 = v3[2];
  v13 = v4;
  v6 = v3[5];
  v14 = v3[4];
  v5 = v14;
  v15 = v6;
  v8 = v3[1];
  v11[0] = *v3;
  v7 = v11[0];
  v11[1] = v8;
  a1[2] = v12;
  a1[3] = v4;
  a1[4] = v5;
  a1[5] = v6;
  *a1 = v7;
  a1[1] = v8;
  return sub_217AE38AC(v11, &v10, &qword_2811C4F30, &type metadata for NotificationData);
}

uint64_t AppSessionStartEvent.Model.notificationSettingsData.getter@<X0>(_OWORD *a1@<X8>)
{
  v5 = *(v1 + *(type metadata accessor for AppSessionStartEvent.Model(0) + 40));
  *a1 = v5;
  return sub_217A55A60(&v5, &v4);
}

uint64_t AppSessionStartEvent.Model.widgetEngagementData.getter@<X0>(void *a1@<X8>)
{
  v3 = *(type metadata accessor for AppSessionStartEvent.Model(0) + 44);
  memcpy(__dst, (v1 + v3), sizeof(__dst));
  memcpy(a1, (v1 + v3), 0x1C8uLL);
  return sub_217AE38AC(__dst, &v5, &qword_2811C1A08, &type metadata for WidgetEngagementData);
}

uint64_t AppSessionStartEvent.Model.autoSubscribedData.getter@<X0>(_DWORD *a1@<X8>)
{
  result = type metadata accessor for AppSessionStartEvent.Model(0);
  *a1 = *(v1 + *(result + 48));
  return result;
}

uint64_t AppSessionStartEvent.Model.subscribedSportsListData.getter@<X0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for AppSessionStartEvent.Model(0) + 52));
}

void *AppSessionStartEvent.Model.init(eventData:userBundleSubscriptionContextData:subscriptionData:referralData:campaignData:notificationData:notificationSettingsData:widgetEngagementData:autoSubscribedData:subscribedSportsListData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, _OWORD *a6@<X5>, _OWORD *a7@<X6>, const void *a8@<X7>, uint64_t a9@<X8>, int *a10, uint64_t *a11)
{
  v18 = *(a4 + 4);
  v19 = *(a4 + 5);
  v20 = *(a5 + 4);
  v38 = *(a5 + 5);
  v39 = *a10;
  v40 = *a11;
  v21 = sub_217D8899C();
  v36 = a5[1];
  v37 = *a5;
  v34 = a4[1];
  v35 = *a4;
  (*(*(v21 - 8) + 32))(a9, a1, v21);
  started = type metadata accessor for AppSessionStartEvent.Model(0);
  v23 = a9 + started[5];
  v24 = *(a2 + 16);
  *v23 = *a2;
  *(v23 + 16) = v24;
  *(v23 + 32) = *(a2 + 32);
  *(v23 + 48) = *(a2 + 48);
  v25 = a9 + started[6];
  v26 = *(a3 + 16);
  *v25 = *a3;
  *(v25 + 16) = v26;
  *(v25 + 32) = *(a3 + 32);
  *(v25 + 48) = *(a3 + 48);
  v27 = a9 + started[7];
  *v27 = v35;
  *(v27 + 16) = v34;
  *(v27 + 32) = v18;
  *(v27 + 40) = v19;
  v28 = a9 + started[8];
  *v28 = v37;
  *(v28 + 16) = v36;
  *(v28 + 32) = v20;
  *(v28 + 40) = v38;
  v29 = (a9 + started[9]);
  v30 = a6[1];
  *v29 = *a6;
  v29[1] = v30;
  v31 = a6[5];
  v29[4] = a6[4];
  v29[5] = v31;
  v32 = a6[3];
  v29[2] = a6[2];
  v29[3] = v32;
  *(a9 + started[10]) = *a7;
  result = memcpy((a9 + started[11]), a8, 0x1C8uLL);
  *(a9 + started[12]) = v39;
  *(a9 + started[13]) = v40;
  return result;
}

unint64_t sub_217C52C88(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v4 = 0xD000000000000018;
    if (a1 == 8)
    {
      v4 = 0xD000000000000012;
    }

    if (a1 == 7)
    {
      v4 = 0xD000000000000014;
    }

    v5 = 0xD000000000000010;
    if (a1 != 5)
    {
      v5 = 0xD000000000000018;
    }

    if (a1 <= 6u)
    {
      return v5;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    v1 = 0x746144746E657665;
    v2 = 0x6C61727265666572;
    if (a1 != 3)
    {
      v2 = 0x6E676961706D6163;
    }

    if (a1 == 2)
    {
      v2 = 0xD000000000000010;
    }

    if (a1)
    {
      v1 = 0xD000000000000021;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_217C52DF0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217C54AA0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217C52E18(uint64_t a1)
{
  v2 = sub_217C535D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C52E54(uint64_t a1)
{
  v2 = sub_217C535D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AppSessionStartEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217C53F34(0, &qword_27CBA2BB0, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v39 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C535D4();
  sub_217D89E7C();
  v87[0] = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410, MEMORY[0x277CEAEB8]);
  sub_217D89CAC();
  if (!v2)
  {
    started = type metadata accessor for AppSessionStartEvent.Model(0);
    v11 = (v3 + started[5]);
    v12 = *v11;
    v85[1] = v11[1];
    v13 = v11[1];
    v85[2] = v11[2];
    v85[0] = *v11;
    v81 = v12;
    v86 = *(v11 + 48);
    v82 = v13;
    v83 = v11[2];
    v84 = *(v11 + 48);
    v80 = 1;
    sub_217ACC004(v85, v45);
    sub_217A55B98();
    sub_217D89CAC();
    v76[0] = v81;
    v76[1] = v82;
    v76[2] = v83;
    v77 = v84;
    sub_217ACC69C(v76);
    v14 = (v3 + started[6]);
    v15 = *v14;
    v78[1] = v14[1];
    v16 = v14[1];
    v78[2] = v14[2];
    v78[0] = *v14;
    v79 = *(v14 + 6);
    v72 = v15;
    v73 = v16;
    v74 = v14[2];
    v75 = *(v14 + 6);
    v71 = 2;
    sub_217B9E08C(v78, v45);
    sub_217A55E38();
    sub_217D89CAC();
    v69[0] = v72;
    v69[1] = v73;
    v69[2] = v74;
    v70 = v75;
    sub_217B9F26C(v69);
    v17 = (v3 + started[7]);
    v18 = v17[1];
    v19 = v17[2];
    v20 = v17[3];
    v21 = v17[4];
    v22 = v17[5];
    v45[0] = *v17;
    v45[1] = v18;
    v45[2] = v19;
    v45[3] = v20;
    v45[4] = v21;
    v45[5] = v22;
    v43[0] = 3;
    sub_217B1563C(v45[0], v18, v19, v20, v21, v22);
    sub_217ACDCB0();
    sub_217D89C3C();
    sub_217B15D30(v45[0], v45[1], v45[2], v45[3], v45[4], v45[5]);
    v23 = (v3 + started[8]);
    v24 = v23[1];
    v25 = v23[2];
    v26 = v23[3];
    v27 = v23[4];
    v28 = v23[5];
    v63 = *v23;
    v64 = v24;
    v65 = v25;
    v66 = v26;
    v67 = v27;
    v68 = v28;
    v62 = 4;
    sub_217B1563C(v63, v24, v25, v26, v27, v28);
    sub_217A66ADC();
    sub_217D89C3C();
    sub_217B15D30(v63, v64, v65, v66, v67, v68);
    v29 = (v3 + started[9]);
    v30 = v29[3];
    v31 = v29[1];
    v58 = v29[2];
    v59 = v30;
    v32 = v29[3];
    v33 = v29[5];
    v60 = v29[4];
    v61 = v33;
    v34 = v29[1];
    v57[0] = *v29;
    v57[1] = v34;
    v53 = v58;
    v54 = v32;
    v35 = v29[5];
    v55 = v60;
    v56 = v35;
    v51 = v57[0];
    v52 = v31;
    v50 = 5;
    sub_217AE38AC(v57, v45, &qword_2811C4F30, &type metadata for NotificationData);
    sub_217B9C280();
    sub_217D89C3C();
    v48[2] = v53;
    v48[3] = v54;
    v48[4] = v55;
    v48[5] = v56;
    v48[0] = v51;
    v48[1] = v52;
    sub_217AE4A44(v48, &qword_2811C4F30, &type metadata for NotificationData);
    v36 = started[10];
    v49 = *(v3 + v36);
    v47 = *(v3 + v36);
    v46 = 6;
    sub_217A55A60(&v49, v45);
    sub_217A5062C();
    sub_217D89CAC();
    v44 = v47;
    sub_217B9F32C(&v44);
    v37 = started[11];
    memcpy(v45, (v3 + v37), sizeof(v45));
    memcpy(v43, (v3 + v37), sizeof(v43));
    v42[463] = 7;
    sub_217AE38AC(v45, v42, &qword_2811C1A08, &type metadata for WidgetEngagementData);
    sub_217BBB650();
    sub_217D89C3C();
    memcpy(v42, v43, 0x1C8uLL);
    sub_217AE4A44(v42, &qword_2811C1A08, &type metadata for WidgetEngagementData);
    LODWORD(v40) = *(v3 + started[12]);
    v41 = 8;
    sub_217A4F574();
    sub_217D89CAC();
    v40 = *(v3 + started[13]);
    v41 = 9;
    sub_217A4FCA8();

    sub_217D89C3C();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_217C535D4()
{
  result = qword_2811C23C8;
  if (!qword_2811C23C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C23C8);
  }

  return result;
}

void AppSessionStartEvent.Model.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v4 = sub_217D8899C();
  v36 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v38 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217C53F34(0, &qword_2811BC9F0, MEMORY[0x277D844C8]);
  v39 = v6;
  v37 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v32 - v7;
  started = type metadata accessor for AppSessionStartEvent.Model(0);
  MEMORY[0x28223BE20](started);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v64 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_217C535D4();
  v40 = v8;
  sub_217D89E5C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(v64);
  }

  else
  {
    v13 = v37;
    v33 = started;
    v34 = v11;
    LOBYTE(v63[0]) = 0;
    sub_217A602A0(&qword_2811C8408, MEMORY[0x277CEAEC0]);
    v14 = v38;
    sub_217D89BCC();
    v15 = v4;
    v16 = *(v36 + 32);
    v17 = v34;
    v38 = v15;
    v16(v34, v14);
    v58 = 1;
    sub_217A54D08();
    sub_217D89BCC();
    v32 = 0;
    v18 = v33;
    v19 = &v17[v33[5]];
    v20 = v60;
    *v19 = v59;
    *(v19 + 1) = v20;
    *(v19 + 2) = v61;
    v19[48] = v62;
    v53 = 2;
    sub_217A4F460();
    sub_217D89BCC();
    v21 = &v17[v18[6]];
    v22 = v55;
    *v21 = v54;
    *(v21 + 1) = v22;
    *(v21 + 2) = v56;
    *(v21 + 6) = v57;
    LOBYTE(v47) = 3;
    sub_217ACDC58();
    sub_217D89B5C();
    v23 = &v17[v18[7]];
    v24 = v63[1];
    *v23 = v63[0];
    *(v23 + 1) = v24;
    *(v23 + 2) = v63[2];
    LOBYTE(v47) = 4;
    sub_217A66A84();
    sub_217D89B5C();
    v25 = &v17[v18[8]];
    v26 = v63[1];
    *v25 = v63[0];
    *(v25 + 1) = v26;
    *(v25 + 2) = v63[2];
    v46 = 5;
    sub_217B9C22C();
    sub_217D89B5C();
    v27 = &v17[v18[9]];
    v28 = v50;
    *(v27 + 2) = v49;
    *(v27 + 3) = v28;
    v29 = v52;
    *(v27 + 4) = v51;
    *(v27 + 5) = v29;
    v30 = v48;
    *v27 = v47;
    *(v27 + 1) = v30;
    v44 = 6;
    sub_217A505D4();
    sub_217D89BCC();
    *&v17[v18[10]] = v45;
    v43 = 7;
    sub_217BBB5F8();
    sub_217D89B5C();
    memcpy(&v34[v33[11]], v63, 0x1C8uLL);
    v42 = 8;
    sub_217A4F51C();
    sub_217D89BCC();
    *&v34[v33[12]] = v41;
    v42 = 9;
    sub_217A4FC50();
    sub_217D89B5C();
    (*(v13 + 8))(v40, v39);
    v31 = v34;
    *&v34[v33[13]] = v41;
    sub_217C53F98(v31, v35);
    __swift_destroy_boxed_opaque_existential_1(v64);
    sub_217C53FFC(v31);
  }
}

void sub_217C53F34(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217C535D4();
    v7 = a3(a1, &type metadata for AppSessionStartEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217C53F98(uint64_t a1, uint64_t a2)
{
  started = type metadata accessor for AppSessionStartEvent.Model(0);
  (*(*(started - 8) + 16))(a2, a1, started);
  return a2;
}

uint64_t sub_217C53FFC(uint64_t a1)
{
  started = type metadata accessor for AppSessionStartEvent.Model(0);
  (*(*(started - 8) + 8))(a1, started);
  return a1;
}

uint64_t sub_217C54130@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217A62DDC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_217A62DDC(0, &qword_2811C8690, sub_217A4F460, sub_217A55E38, &type metadata for SubscriptionData);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  v11 = *MEMORY[0x277CEACF0];
  sub_217A62DDC(0, &qword_2811C8788, sub_217ACDC58, sub_217ACDCB0, &type metadata for ReferralData);
  (*(*(v12 - 8) + 104))(a2 + v10, v11, v12);
  v13 = a1[8];
  sub_217A62DDC(0, &qword_2811C87A8, sub_217A66A84, sub_217A66ADC, &type metadata for CampaignData);
  (*(*(v14 - 8) + 104))(a2 + v13, v11, v14);
  v15 = a1[9];
  sub_217A62DDC(0, &qword_2811C86B8, sub_217B9C22C, sub_217B9C280, &type metadata for NotificationData);
  (*(*(v16 - 8) + 104))(a2 + v15, v11, v16);
  v17 = a1[10];
  sub_217A62DDC(0, &qword_2811C8590, sub_217A505D4, sub_217A5062C, &type metadata for NotificationSettingsData);
  (*(*(v18 - 8) + 104))(a2 + v17, v4, v18);
  v19 = a1[11];
  sub_217A62DDC(0, &qword_2811C85C0, sub_217BBB5F8, sub_217BBB650, &type metadata for WidgetEngagementData);
  (*(*(v20 - 8) + 104))(a2 + v19, v11, v20);
  v21 = a1[12];
  sub_217A62DDC(0, &qword_2811C8648, sub_217A4F51C, sub_217A4F574, &type metadata for AutoSubscribedData);
  (*(*(v22 - 8) + 104))(a2 + v21, v4, v22);
  v23 = a1[13];
  sub_217A62DDC(0, &qword_2811C8588, sub_217A4FC50, sub_217A4FCA8, &type metadata for SubscribedSportsListData);
  v25 = *(*(v24 - 8) + 104);

  return v25(a2 + v23, v11, v24);
}

void sub_217C54624(uint64_t a1)
{
  sub_217A6018C(319);
  if (v1 <= 0x3F)
  {
    sub_217A62DDC(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
    if (v2 <= 0x3F)
    {
      sub_217A62DDC(319, &qword_2811C8690, sub_217A4F460, sub_217A55E38, &type metadata for SubscriptionData);
      if (v3 <= 0x3F)
      {
        sub_217A62DDC(319, &qword_2811C8788, sub_217ACDC58, sub_217ACDCB0, &type metadata for ReferralData);
        if (v4 <= 0x3F)
        {
          sub_217A62DDC(319, &qword_2811C87A8, sub_217A66A84, sub_217A66ADC, &type metadata for CampaignData);
          if (v5 <= 0x3F)
          {
            sub_217A62DDC(319, &qword_2811C86B8, sub_217B9C22C, sub_217B9C280, &type metadata for NotificationData);
            if (v6 <= 0x3F)
            {
              sub_217A62DDC(319, &qword_2811C8590, sub_217A505D4, sub_217A5062C, &type metadata for NotificationSettingsData);
              if (v7 <= 0x3F)
              {
                sub_217A62DDC(319, &qword_2811C85C0, sub_217BBB5F8, sub_217BBB650, &type metadata for WidgetEngagementData);
                if (v8 <= 0x3F)
                {
                  sub_217A62DDC(319, &qword_2811C8648, sub_217A4F51C, sub_217A4F574, &type metadata for AutoSubscribedData);
                  if (v9 <= 0x3F)
                  {
                    sub_217A62DDC(319, &qword_2811C8588, sub_217A4FC50, sub_217A4FCA8, &type metadata for SubscribedSportsListData);
                    if (v10 <= 0x3F)
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
    }
  }
}

unint64_t sub_217C5499C()
{
  result = qword_27CBA2BB8;
  if (!qword_27CBA2BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2BB8);
  }

  return result;
}

unint64_t sub_217C549F4()
{
  result = qword_2811C23B8;
  if (!qword_2811C23B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C23B8);
  }

  return result;
}

unint64_t sub_217C54A4C()
{
  result = qword_2811C23C0;
  if (!qword_2811C23C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C23C0);
  }

  return result;
}

uint64_t sub_217C54AA0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000217DCEBD0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C61727265666572 && a2 == 0xEC00000061746144 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E676961706D6163 && a2 == 0xEC00000061746144 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000217DCEBF0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000217DCEC10 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000217DD1290 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000217DCEC30 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000217DCEC70 == a2)
  {

    return 9;
  }

  else
  {
    v6 = sub_217D89D4C();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

NewsAnalytics::ScrollEndData __swiftcall ScrollEndData.init(scrollYPosition:scrollVelocity:)(Swift::Float scrollYPosition, Swift::Float scrollVelocity)
{
  *v2 = scrollYPosition;
  v2[1] = scrollVelocity;
  result.scrollVelocity = scrollVelocity;
  result.scrollYPosition = scrollYPosition;
  return result;
}

uint64_t sub_217C54E48()
{
  if (*v0)
  {
    return 0x65566C6C6F726373;
  }

  else
  {
    return 0x50596C6C6F726373;
  }
}

uint64_t sub_217C54E9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x50596C6C6F726373 && a2 == 0xEF6E6F697469736FLL;
  if (v6 || (sub_217D89D4C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65566C6C6F726373 && a2 == 0xEE00797469636F6CLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_217D89D4C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_217C54F88(uint64_t a1)
{
  v2 = sub_217C55174();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C54FC4(uint64_t a1)
{
  v2 = sub_217C55174();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ScrollEndData.encode(to:)(void *a1)
{
  sub_217C55380(0, &qword_2811BC7B8, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v9[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C55174();
  sub_217D89E7C();
  v9[15] = 0;
  sub_217D89C9C();
  if (!v1)
  {
    v9[14] = 1;
    sub_217D89C9C();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_217C55174()
{
  result = qword_2811C71A0;
  if (!qword_2811C71A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C71A0);
  }

  return result;
}

uint64_t ScrollEndData.init(from:)@<X0>(void *a1@<X0>, _DWORD *a2@<X8>)
{
  sub_217C55380(0, &qword_2811BCAD0, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C55174();
  sub_217D89E5C();
  if (!v2)
  {
    v17 = 0;
    sub_217D89BBC();
    v11 = v10;
    v16 = 1;
    sub_217D89BBC();
    v14 = v13;
    (*(v7 + 8))(v9, v6);
    *a2 = v11;
    a2[1] = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217C55380(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217C55174();
    v7 = a3(a1, &type metadata for ScrollEndData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217C553E8()
{
  result = qword_2811C7180;
  if (!qword_2811C7180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7180);
  }

  return result;
}

unint64_t sub_217C55440()
{
  result = qword_2811C7188;
  if (!qword_2811C7188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7188);
  }

  return result;
}

unint64_t sub_217C554E8()
{
  result = qword_27CBA2BC0;
  if (!qword_27CBA2BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA2BC0);
  }

  return result;
}

unint64_t sub_217C55540()
{
  result = qword_2811C7190;
  if (!qword_2811C7190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7190);
  }

  return result;
}

unint64_t sub_217C55598()
{
  result = qword_2811C7198;
  if (!qword_2811C7198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7198);
  }

  return result;
}

uint64_t sub_217C556B4()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA2BF8);
  __swift_project_value_buffer(v0, qword_27CBA2BF8);
  return sub_217D8866C();
}

uint64_t WidgetHeadlineExposureEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t WidgetHeadlineExposureEvent.widgetData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WidgetHeadlineExposureEvent(0) + 20);
  sub_217C568D8(0, &qword_27CBA2C10, sub_217AF15FC, sub_217AF1654, &type metadata for WidgetData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WidgetHeadlineExposureEvent.widgetData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WidgetHeadlineExposureEvent(0) + 20);
  sub_217C568D8(0, &qword_27CBA2C10, sub_217AF15FC, sub_217AF1654, &type metadata for WidgetData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WidgetHeadlineExposureEvent.alternateHeadlineData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WidgetHeadlineExposureEvent(0) + 24);
  sub_217C568D8(0, &qword_27CBA2C18, sub_217BF4018, sub_217BF35D0, &type metadata for AlternateHeadlineData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WidgetHeadlineExposureEvent.alternateHeadlineData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WidgetHeadlineExposureEvent(0) + 24);
  sub_217C568D8(0, &qword_27CBA2C18, sub_217BF4018, sub_217BF35D0, &type metadata for AlternateHeadlineData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WidgetHeadlineExposureEvent.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WidgetHeadlineExposureEvent(0) + 28);
  sub_217C568D8(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WidgetHeadlineExposureEvent.articleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WidgetHeadlineExposureEvent(0) + 28);
  sub_217C568D8(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WidgetHeadlineExposureEvent.feedPositionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WidgetHeadlineExposureEvent(0) + 32);
  sub_217C568D8(0, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710, &type metadata for FeedPositionData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WidgetHeadlineExposureEvent.feedPositionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WidgetHeadlineExposureEvent(0) + 32);
  sub_217C568D8(0, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710, &type metadata for FeedPositionData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WidgetHeadlineExposureEvent.inGroupPositionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WidgetHeadlineExposureEvent(0) + 36);
  sub_217C568D8(0, &qword_2811C8608, sub_217B4FFA8, sub_217B4FFFC, &type metadata for InGroupPositionData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WidgetHeadlineExposureEvent.inGroupPositionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WidgetHeadlineExposureEvent(0) + 36);
  sub_217C568D8(0, &qword_2811C8608, sub_217B4FFA8, sub_217B4FFFC, &type metadata for InGroupPositionData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WidgetHeadlineExposureEvent.groupData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WidgetHeadlineExposureEvent(0) + 40);
  sub_217C568D8(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WidgetHeadlineExposureEvent.groupData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WidgetHeadlineExposureEvent(0) + 40);
  sub_217C568D8(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WidgetHeadlineExposureEvent.tagData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WidgetHeadlineExposureEvent(0) + 44);
  sub_217C568D8(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14, &type metadata for TagData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WidgetHeadlineExposureEvent.tagData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WidgetHeadlineExposureEvent(0) + 44);
  sub_217C568D8(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14, &type metadata for TagData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WidgetHeadlineExposureEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WidgetHeadlineExposureEvent(0) + 48);
  sub_217C568D8(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WidgetHeadlineExposureEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WidgetHeadlineExposureEvent(0) + 48);
  sub_217C568D8(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WidgetHeadlineExposureEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WidgetHeadlineExposureEvent(0) + 52);
  sub_217A608E0(0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WidgetHeadlineExposureEvent.typeData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WidgetHeadlineExposureEvent(0) + 56);
  sub_217C568D8(0, &qword_27CB9F348, sub_217B0B744, sub_217B0B798, &type metadata for WidgetTypeData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WidgetHeadlineExposureEvent.typeData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WidgetHeadlineExposureEvent(0) + 56);
  sub_217C568D8(0, &qword_27CB9F348, sub_217B0B744, sub_217B0B798, &type metadata for WidgetTypeData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WidgetHeadlineExposureEvent.locationData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WidgetHeadlineExposureEvent(0) + 60);
  sub_217C568D8(0, &qword_27CB9F350, sub_217B0BA18, sub_217B0BA6C, &type metadata for WidgetLocationData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217C568D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3();
    a4();
    v7 = sub_217D8829C();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t WidgetHeadlineExposureEvent.locationData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WidgetHeadlineExposureEvent(0) + 60);
  sub_217C568D8(0, &qword_27CB9F350, sub_217B0BA18, sub_217B0BA6C, &type metadata for WidgetLocationData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WidgetHeadlineExposureEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for WidgetHeadlineExposureEvent(0);
  v5 = v4[5];
  v6 = *MEMORY[0x277CEACF0];
  sub_217C568D8(0, &qword_27CBA2C10, sub_217AF15FC, sub_217AF1654, &type metadata for WidgetData);
  (*(*(v7 - 8) + 104))(a1 + v5, v6, v7);
  v8 = v4[6];
  sub_217C568D8(0, &qword_27CBA2C18, sub_217BF4018, sub_217BF35D0, &type metadata for AlternateHeadlineData);
  (*(*(v9 - 8) + 104))(a1 + v8, v2, v9);
  v10 = v4[7];
  sub_217C568D8(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  (*(*(v11 - 8) + 104))(a1 + v10, v2, v11);
  v12 = v4[8];
  sub_217C568D8(0, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710, &type metadata for FeedPositionData);
  (*(*(v13 - 8) + 104))(a1 + v12, v2, v13);
  v14 = v4[9];
  sub_217C568D8(0, &qword_2811C8608, sub_217B4FFA8, sub_217B4FFFC, &type metadata for InGroupPositionData);
  (*(*(v15 - 8) + 104))(a1 + v14, v2, v15);
  v16 = v4[10];
  sub_217C568D8(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  (*(*(v17 - 8) + 104))(a1 + v16, v2, v17);
  v18 = v4[11];
  sub_217C568D8(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14, &type metadata for TagData);
  (*(*(v19 - 8) + 104))(a1 + v18, v2, v19);
  v20 = v4[12];
  sub_217C568D8(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  (*(*(v21 - 8) + 104))(a1 + v20, v2, v21);
  v22 = v4[13];
  sub_217A608E0(0);
  (*(*(v23 - 8) + 104))(a1 + v22, v2, v23);
  v24 = v4[14];
  sub_217C568D8(0, &qword_27CB9F348, sub_217B0B744, sub_217B0B798, &type metadata for WidgetTypeData);
  (*(*(v25 - 8) + 104))(a1 + v24, v2, v25);
  v26 = v4[15];
  sub_217C568D8(0, &qword_27CB9F350, sub_217B0BA18, sub_217B0BA6C, &type metadata for WidgetLocationData);
  v28 = *(*(v27 - 8) + 104);

  return v28(a1 + v26, v2, v27);
}

uint64_t WidgetHeadlineExposureEvent.Model.widgetData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for WidgetHeadlineExposureEvent.Model(0) + 20));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t WidgetHeadlineExposureEvent.Model.alternateHeadlineData.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for WidgetHeadlineExposureEvent.Model(0);
  v4 = (v1 + *(result + 24));
  v5 = *v4;
  LODWORD(v4) = *(v4 + 1);
  *a1 = v5;
  *(a1 + 4) = v4;
  return result;
}

uint64_t WidgetHeadlineExposureEvent.Model.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for WidgetHeadlineExposureEvent.Model(0) + 28);
  v4 = *(v3 + 80);
  v5 = *(v3 + 112);
  v22 = *(v3 + 96);
  v23[0] = v5;
  v6 = *(v3 + 16);
  v7 = *(v3 + 48);
  v18 = *(v3 + 32);
  v8 = v18;
  v19 = v7;
  v9 = *(v3 + 48);
  v10 = *(v3 + 80);
  v20 = *(v3 + 64);
  v11 = v20;
  v21 = v10;
  v12 = *(v3 + 16);
  v17[0] = *v3;
  v13 = v17[0];
  v17[1] = v12;
  v14 = *(v3 + 112);
  *(a1 + 96) = v22;
  *(a1 + 112) = v14;
  *(a1 + 32) = v8;
  *(a1 + 48) = v9;
  *(a1 + 64) = v11;
  *(a1 + 80) = v4;
  *(v23 + 15) = *(v3 + 127);
  *(a1 + 127) = *(v3 + 127);
  *a1 = v13;
  *(a1 + 16) = v6;
  return sub_217AD1630(v17, v16);
}

uint64_t WidgetHeadlineExposureEvent.Model.feedPositionData.getter@<X0>(_DWORD *a1@<X8>)
{
  result = type metadata accessor for WidgetHeadlineExposureEvent.Model(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t WidgetHeadlineExposureEvent.Model.inGroupPositionData.getter@<X0>(_DWORD *a1@<X8>)
{
  result = type metadata accessor for WidgetHeadlineExposureEvent.Model(0);
  *a1 = *(v1 + *(result + 36));
  return result;
}

uint64_t WidgetHeadlineExposureEvent.Model.groupData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for WidgetHeadlineExposureEvent.Model(0) + 40));
  v4 = v3[5];
  v5 = v3[7];
  v22 = v3[6];
  v23 = v5;
  v6 = v3[7];
  v24 = v3[8];
  v7 = v3[1];
  v8 = v3[3];
  v18 = v3[2];
  v9 = v18;
  v19 = v8;
  v10 = v3[3];
  v11 = v3[5];
  v20 = v3[4];
  v12 = v20;
  v21 = v11;
  v13 = v3[1];
  v17[0] = *v3;
  v14 = v17[0];
  v17[1] = v13;
  a1[6] = v22;
  a1[7] = v6;
  a1[8] = v3[8];
  a1[2] = v9;
  a1[3] = v10;
  a1[4] = v12;
  a1[5] = v4;
  *a1 = v14;
  a1[1] = v7;
  return sub_217AF7618(v17, &v16);
}

uint64_t WidgetHeadlineExposureEvent.Model.tagData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for WidgetHeadlineExposureEvent.Model(0) + 44));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t WidgetHeadlineExposureEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for WidgetHeadlineExposureEvent.Model(0) + 48));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t sub_217C57300@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 52);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t WidgetHeadlineExposureEvent.Model.typeData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for WidgetHeadlineExposureEvent.Model(0);
  *a1 = *(v1 + *(result + 56));
  return result;
}

uint64_t WidgetHeadlineExposureEvent.Model.locationData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for WidgetHeadlineExposureEvent.Model(0);
  *a1 = *(v1 + *(result + 60));
  return result;
}

uint64_t WidgetHeadlineExposureEvent.Model.init(eventData:widgetData:alternateHeadlineData:articleData:feedPositionData:inGroupPositionData:groupData:tagData:viewData:timedData:typeData:locationData:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, int *a5@<X4>, int *a6@<X5>, _OWORD *a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, uint64_t *a10, uint64_t a11, char *a12, char *a13)
{
  v17 = *a2;
  v18 = a2[1];
  v19 = *a3;
  v20 = *(a3 + 1);
  v21 = *a5;
  v22 = *a6;
  v43 = *a8;
  v42 = a8[1];
  v46 = *a10;
  v45 = a10[1];
  v44 = *(a10 + 8);
  v47 = *a12;
  v48 = *a13;
  v23 = sub_217D8899C();
  (*(*(v23 - 8) + 32))(a9, a1, v23);
  v24 = type metadata accessor for WidgetHeadlineExposureEvent.Model(0);
  v25 = (a9 + v24[5]);
  *v25 = v17;
  v25[1] = v18;
  v26 = a9 + v24[6];
  *v26 = v19;
  *(v26 + 4) = v20;
  v27 = a9 + v24[7];
  v28 = *(a4 + 48);
  *(v27 + 32) = *(a4 + 32);
  *(v27 + 48) = v28;
  v29 = *(a4 + 16);
  *v27 = *a4;
  *(v27 + 16) = v29;
  *(v27 + 127) = *(a4 + 127);
  v30 = *(a4 + 112);
  *(v27 + 96) = *(a4 + 96);
  *(v27 + 112) = v30;
  v31 = *(a4 + 80);
  *(v27 + 64) = *(a4 + 64);
  *(v27 + 80) = v31;
  *(a9 + v24[8]) = v21;
  *(a9 + v24[9]) = v22;
  v32 = (a9 + v24[10]);
  v33 = a7[7];
  v32[6] = a7[6];
  v32[7] = v33;
  v32[8] = a7[8];
  v34 = a7[3];
  v32[2] = a7[2];
  v32[3] = v34;
  v35 = a7[5];
  v32[4] = a7[4];
  v32[5] = v35;
  v36 = a7[1];
  *v32 = *a7;
  v32[1] = v36;
  v37 = (a9 + v24[11]);
  *v37 = v43;
  v37[1] = v42;
  v38 = a9 + v24[12];
  *v38 = v46;
  *(v38 + 8) = v45;
  *(v38 + 16) = v44;
  v39 = v24[13];
  v40 = sub_217D889CC();
  result = (*(*(v40 - 8) + 32))(a9 + v39, a11, v40);
  *(a9 + v24[14]) = v47;
  *(a9 + v24[15]) = v48;
  return result;
}

uint64_t sub_217C575F0(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0x74614464656D6974;
    v7 = 0x6174614465707974;
    if (a1 != 10)
    {
      v7 = 0x6E6F697461636F6CLL;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0x74614470756F7267;
    v9 = 0x61746144676174;
    if (a1 != 7)
    {
      v9 = 0x6174614477656976;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x746144746E657665;
    v2 = 0x44656C6369747261;
    v3 = 0xD000000000000013;
    if (a1 == 4)
    {
      v3 = 0xD000000000000010;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0xD000000000000015;
    if (a1 == 1)
    {
      v4 = 0x6144746567646977;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_217C5778C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217C596C4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217C577B4(uint64_t a1)
{
  v2 = sub_217C57F0C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C577F0(uint64_t a1)
{
  v2 = sub_217C57F0C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WidgetHeadlineExposureEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217C588EC(0, &qword_27CBA2C20, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v39 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C57F0C();
  sub_217D89E7C();
  LOBYTE(v55) = 0;
  sub_217D8899C();
  sub_217A60258(&unk_2811C8410, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEB8]);
  sub_217D89CAC();
  if (!v2)
  {
    v10 = type metadata accessor for WidgetHeadlineExposureEvent.Model(0);
    v11 = (v3 + v10[5]);
    v12 = v11[1];
    *&v55 = *v11;
    *(&v55 + 1) = v12;
    LOBYTE(v46) = 1;
    sub_217AF1654();

    sub_217D89C3C();

    v13 = (v3 + v10[6]);
    v14 = *v13;
    LODWORD(v13) = *(v13 + 1);
    v85[0] = v14;
    v86 = v13;
    v84 = 2;
    sub_217BF35D0();
    sub_217D89CAC();
    v15 = v3 + v10[7];
    v16 = *(v15 + 96);
    v17 = *(v15 + 64);
    v81 = *(v15 + 80);
    v82 = v16;
    v18 = *(v15 + 96);
    *v83 = *(v15 + 112);
    v19 = *(v15 + 16);
    v20 = *(v15 + 48);
    v78 = *(v15 + 32);
    v79 = v20;
    v21 = *(v15 + 48);
    v80 = *(v15 + 64);
    v22 = *(v15 + 16);
    v77[0] = *v15;
    v77[1] = v22;
    v74 = v81;
    v75 = v18;
    v76[0] = *(v15 + 112);
    v71 = v78;
    v72 = v21;
    v73 = v17;
    *&v83[15] = *(v15 + 127);
    *(v76 + 15) = *(v15 + 127);
    v69 = v77[0];
    v70 = v19;
    v68 = 3;
    sub_217AD1630(v77, &v55);
    sub_217ACF52C();
    sub_217D89CAC();
    v66[5] = v74;
    v66[6] = v75;
    *v67 = v76[0];
    *&v67[15] = *(v76 + 15);
    v66[2] = v71;
    v66[3] = v72;
    v66[4] = v73;
    v66[0] = v69;
    v66[1] = v70;
    sub_217AD2864(v66);
    LODWORD(v55) = *(v3 + v10[8]);
    LOBYTE(v46) = 4;
    sub_217AD7710();
    sub_217D89CAC();
    v65 = *(v3 + v10[9]);
    v64 = 5;
    sub_217B4FFFC();
    sub_217D89CAC();
    v23 = (v3 + v10[10]);
    v24 = v23[6];
    v25 = v23[4];
    v60 = v23[5];
    v61 = v24;
    v26 = v23[6];
    v27 = v23[8];
    v62 = v23[7];
    v63 = v27;
    v28 = v23[2];
    v29 = *v23;
    v56 = v23[1];
    v57 = v28;
    v30 = v23[2];
    v31 = v23[4];
    v58 = v23[3];
    v59 = v31;
    v32 = *v23;
    v52 = v26;
    v53 = v62;
    v54 = v23[8];
    v55 = v32;
    v48 = v30;
    v49 = v58;
    v50 = v25;
    v51 = v60;
    v46 = v29;
    v47 = v56;
    v45 = 6;
    sub_217AF7618(&v55, v44);
    sub_217A5D3B4();
    sub_217D89CAC();
    v44[7] = v53;
    v44[8] = v54;
    v44[2] = v48;
    v44[3] = v49;
    v44[5] = v51;
    v44[6] = v52;
    v44[4] = v50;
    v44[0] = v46;
    v44[1] = v47;
    sub_217AF8104(v44);
    v34 = (v3 + v10[11]);
    v35 = v34[1];
    v40 = *v34;
    v41 = v35;
    v43 = 7;
    sub_217AF6B14();

    sub_217D89CAC();

    v36 = (v3 + v10[12]);
    v37 = *v36;
    v38 = v36[1];
    LOWORD(v36) = *(v36 + 8);
    v40 = v37;
    v41 = v38;
    v42 = v36;
    v43 = 8;
    sub_217A5E790();

    sub_217D89CAC();

    LOBYTE(v40) = 9;
    sub_217D889CC();
    sub_217A60258(&qword_2811C83F8, MEMORY[0x277CEAED0], MEMORY[0x277CEAED8]);
    sub_217D89CAC();
    LOBYTE(v40) = *(v3 + v10[14]);
    v43 = 10;
    sub_217B0B798();
    sub_217D89CAC();
    LOBYTE(v40) = *(v3 + v10[15]);
    v43 = 11;
    sub_217B0BA6C();
    sub_217D89CAC();
  }

  return (*(v7 + 8))(v9, v6);
}