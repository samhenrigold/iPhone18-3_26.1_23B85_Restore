uint64_t RecipeSaveEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RecipeSaveEvent(0) + 36);
  sub_217D4181C(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RecipeSaveEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RecipeSaveEvent(0) + 36);
  sub_217D4181C(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RecipeSaveEvent.userChannelContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RecipeSaveEvent(0) + 40);
  sub_217D4181C(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RecipeSaveEvent.userChannelContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RecipeSaveEvent(0) + 40);
  sub_217D4181C(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RecipeSaveEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RecipeSaveEvent(0) + 44);
  sub_217D4181C(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RecipeSaveEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RecipeSaveEvent(0) + 44);
  sub_217D4181C(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RecipeSaveEvent.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RecipeSaveEvent(0) + 48);
  sub_217D4181C(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RecipeSaveEvent.channelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RecipeSaveEvent(0) + 48);
  sub_217D4181C(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RecipeSaveEvent.issueData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RecipeSaveEvent(0) + 52);
  sub_217D4181C(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RecipeSaveEvent.issueData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RecipeSaveEvent(0) + 52);
  sub_217D4181C(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RecipeSaveEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for RecipeSaveEvent(0);
  v5 = v4[5];
  sub_217D4181C(0, &qword_2811C8820, sub_217B1F038, sub_217B1F08C, &type metadata for RecipeData);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217D4181C(0, &qword_2811C8848, sub_217AED13C, sub_217AED190, &type metadata for ActionData);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  v10 = *MEMORY[0x277CEACF0];
  sub_217D4181C(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  (*(*(v11 - 8) + 104))(a1 + v9, v10, v11);
  v12 = v4[8];
  sub_217D4181C(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  (*(*(v13 - 8) + 104))(a1 + v12, v10, v13);
  v14 = v4[9];
  sub_217D4181C(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  (*(*(v15 - 8) + 104))(a1 + v14, v10, v15);
  v16 = v4[10];
  sub_217D4181C(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
  (*(*(v17 - 8) + 104))(a1 + v16, v2, v17);
  v18 = v4[11];
  sub_217D4181C(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v19 - 8) + 104))(a1 + v18, v2, v19);
  v20 = v4[12];
  sub_217D4181C(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  (*(*(v21 - 8) + 104))(a1 + v20, v2, v21);
  v22 = v4[13];
  sub_217D4181C(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  v24 = *(*(v23 - 8) + 104);

  return v24(a1 + v22, v10, v23);
}

uint64_t RecipeSaveEvent.Model.recipeData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for RecipeSaveEvent.Model(0) + 20);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  v7 = *(v3 + 32);
  *a1 = *v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
}

uint64_t RecipeSaveEvent.Model.actionData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for RecipeSaveEvent.Model(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t RecipeSaveEvent.Model.feedData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for RecipeSaveEvent.Model(0) + 28));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;

  return sub_217AD1A68(v4, v5, v6);
}

uint64_t RecipeSaveEvent.Model.groupData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for RecipeSaveEvent.Model(0) + 32));
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

uint64_t RecipeSaveEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for RecipeSaveEvent.Model(0) + 36));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t RecipeSaveEvent.Model.userChannelContextData.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for RecipeSaveEvent.Model(0);
  v4 = (v1 + *(result + 40));
  v5 = *v4;
  v6 = v4[1];
  LOWORD(v4) = *(v4 + 1);
  *a1 = v5;
  *(a1 + 1) = v6;
  *(a1 + 2) = v4;
  return result;
}

uint64_t RecipeSaveEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for RecipeSaveEvent.Model(0) + 44));
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

uint64_t RecipeSaveEvent.Model.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for RecipeSaveEvent.Model(0) + 48);
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

void RecipeSaveEvent.Model.issueData.getter(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for RecipeSaveEvent.Model(0) + 52));
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

__n128 RecipeSaveEvent.Model.init(eventData:recipeData:actionData:feedData:groupData:viewData:userChannelContextData:userBundleSubscriptionContextData:channelData:issueData:)@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, char *a3@<X2>, __int128 *a4@<X3>, _OWORD *a5@<X4>, uint64_t *a6@<X5>, char *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t *a10, __n128 *a11)
{
  v15 = *a2;
  v16 = a2[1];
  v17 = *(a2 + 16);
  v18 = a2[3];
  v19 = a2[4];
  v36 = *a3;
  v38 = *a4;
  v37 = *(a4 + 2);
  v40 = a6[1];
  v41 = *a6;
  v39 = *(a6 + 8);
  v43 = a7[1];
  v44 = *a7;
  v42 = *(a7 + 1);
  v51 = a10[1];
  v52 = *a10;
  v49 = *(a10 + 17);
  v50 = *(a10 + 16);
  v47 = a10[4];
  v48 = a10[3];
  v20 = sub_217D8899C();
  v45 = a11[1];
  v46 = *a11;
  (*(*(v20 - 8) + 32))(a9, a1, v20);
  v21 = type metadata accessor for RecipeSaveEvent.Model(0);
  v22 = a9 + v21[5];
  *v22 = v15;
  *(v22 + 8) = v16;
  *(v22 + 16) = v17;
  *(v22 + 24) = v18;
  *(v22 + 32) = v19;
  *(a9 + v21[6]) = v36;
  v23 = a9 + v21[7];
  *v23 = v38;
  *(v23 + 16) = v37;
  v24 = (a9 + v21[8]);
  v25 = a5[3];
  v24[2] = a5[2];
  v24[3] = v25;
  v26 = a5[1];
  *v24 = *a5;
  v24[1] = v26;
  v27 = a5[8];
  v24[7] = a5[7];
  v24[8] = v27;
  v28 = a5[6];
  v24[5] = a5[5];
  v24[6] = v28;
  v24[4] = a5[4];
  v29 = a9 + v21[9];
  *v29 = v41;
  *(v29 + 8) = v40;
  *(v29 + 16) = v39;
  v30 = a9 + v21[10];
  *v30 = v44;
  *(v30 + 1) = v43;
  *(v30 + 2) = v42;
  v31 = a9 + v21[11];
  v32 = *(a8 + 16);
  *v31 = *a8;
  *(v31 + 16) = v32;
  *(v31 + 32) = *(a8 + 32);
  *(v31 + 48) = *(a8 + 48);
  v33 = a9 + v21[12];
  *v33 = v52;
  *(v33 + 8) = v51;
  *(v33 + 16) = v50;
  *(v33 + 17) = v49;
  *(v33 + 24) = v48;
  *(v33 + 32) = v47;
  v34 = (a9 + v21[13]);
  result = v46;
  *v34 = v46;
  v34[1] = v45;
  return result;
}

uint64_t sub_217D54A34(uint64_t a1)
{
  v2 = sub_217D55120();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217D54A70(uint64_t a1)
{
  v2 = sub_217D55120();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RecipeSaveEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217D55A40(0, &qword_27CBA5430, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v50 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D55120();
  sub_217D89E7C();
  LOBYTE(v82) = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410, MEMORY[0x277CEAEB8]);
  sub_217D89CAC();
  if (!v2)
  {
    v95 = type metadata accessor for RecipeSaveEvent.Model(0);
    v10 = v3 + v95[5];
    v11 = *(v10 + 8);
    v12 = *(v10 + 16);
    v13 = *(v10 + 24);
    v14 = *(v10 + 32);
    *&v82 = *v10;
    *(&v82 + 1) = v11;
    LOBYTE(v83) = v12;
    *(&v83 + 1) = v13;
    *&v84 = v14;
    LOBYTE(v73) = 1;
    sub_217B1F08C();

    sub_217D89CAC();

    v15 = v95;
    LOBYTE(v82) = *(v3 + v95[6]);
    LOBYTE(v73) = 2;
    sub_217AED190();
    sub_217D89CAC();
    v16 = (v3 + v15[7]);
    v17 = v16[1];
    v18 = v16[2];
    v92 = *v16;
    v93 = v17;
    v94 = v18;
    v91 = 3;
    sub_217AD1A68(v92, v17, v18);
    sub_217A5BA2C();
    sub_217D89C3C();
    sub_217AD290C(v92, v93, v94);
    v19 = (v3 + v15[8]);
    v20 = v19[6];
    v21 = v19[4];
    v87 = v19[5];
    v88 = v20;
    v22 = v19[6];
    v23 = v19[8];
    v89 = v19[7];
    v90 = v23;
    v24 = v19[2];
    v25 = *v19;
    v83 = v19[1];
    v84 = v24;
    v26 = v19[2];
    v27 = v19[4];
    v85 = v19[3];
    v86 = v27;
    v28 = *v19;
    v79 = v22;
    v80 = v89;
    v81 = v19[8];
    v82 = v28;
    v75 = v26;
    v76 = v85;
    v77 = v21;
    v78 = v87;
    v73 = v25;
    v74 = v83;
    v72 = 4;
    sub_217AD87FC(&v82, v71);
    sub_217A5D3B4();
    sub_217D89C3C();
    v71[6] = v79;
    v71[7] = v80;
    v71[8] = v81;
    v71[2] = v75;
    v71[3] = v76;
    v71[4] = v77;
    v71[5] = v78;
    v71[0] = v73;
    v71[1] = v74;
    sub_217AD96E8(v71);
    v29 = (v3 + v15[9]);
    v30 = *v29;
    v31 = v29[1];
    LOWORD(v29) = *(v29 + 8);
    *&v63 = v30;
    *(&v63 + 1) = v31;
    LOWORD(v64) = v29;
    LOBYTE(v59) = 5;
    sub_217A5E790();

    sub_217D89C3C();

    v32 = (v3 + v15[10]);
    v33 = *v32;
    v34 = v32[1];
    LOWORD(v32) = *(v32 + 1);
    v68 = v33;
    v69 = v34;
    v70 = v32;
    v67 = 6;
    sub_217ACFB8C();
    sub_217D89CAC();
    v35 = (v3 + v15[11]);
    v36 = v35[1];
    v63 = *v35;
    v64 = v36;
    v38 = *v35;
    v37 = v35[1];
    v65 = v35[2];
    v66 = *(v35 + 48);
    v59 = v38;
    v60 = v37;
    v61 = v35[2];
    v62 = *(v35 + 48);
    v58 = 7;
    sub_217ACC004(&v63, v56);
    sub_217A55B98();
    sub_217D89CAC();
    v56[0] = v59;
    v56[1] = v60;
    v56[2] = v61;
    v57 = v62;
    sub_217ACC69C(v56);
    v40 = v3 + v15[12];
    v41 = *(v40 + 8);
    v42 = *(v40 + 16);
    v43 = *(v40 + 17);
    v44 = *(v40 + 24);
    v45 = *(v40 + 32);
    v51 = *v40;
    v52 = v41;
    LOBYTE(v53) = v42;
    BYTE1(v53) = v43;
    v54 = v44;
    v55 = v45;
    HIBYTE(v50) = 8;
    sub_217AD084C();

    sub_217D89CAC();

    v46 = (v3 + v95[13]);
    v47 = v46[1];
    v48 = v46[2];
    v49 = v46[3];
    v51 = *v46;
    v52 = v47;
    v53 = v48;
    v54 = v49;
    HIBYTE(v50) = 9;
    sub_217AE39D0(v51, v47, v48, v49);
    sub_217ACFF94();
    sub_217D89C3C();
    sub_217AE4AA0(v51, v52, v53, v54);
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_217D55120()
{
  result = qword_27CBA5438;
  if (!qword_27CBA5438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA5438);
  }

  return result;
}

uint64_t RecipeSaveEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v3 = sub_217D8899C();
  v50 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v53 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217D55A40(0, &qword_27CBA5440, MEMORY[0x277D844C8]);
  v51 = *(v5 - 8);
  v52 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v46 - v6;
  v8 = type metadata accessor for RecipeSaveEvent.Model(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D55120();
  v54 = v7;
  v11 = v74;
  sub_217D89E5C();
  if (v11)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v51;
  v74 = a1;
  v47 = v8;
  v48 = v10;
  LOBYTE(v65) = 0;
  sub_217A602A0(&qword_2811C8408, MEMORY[0x277CEAEC0]);
  sub_217D89BCC();
  v13 = v48;
  (*(v50 + 32))(v48, v53, v3);
  LOBYTE(v60) = 1;
  sub_217B1F038();
  sub_217D89BCC();
  v46 = v3;
  v53 = 0;
  v14 = *(&v65 + 1);
  v15 = v66;
  v16 = *(&v66 + 1);
  v17 = v67;
  v18 = v47;
  v19 = &v13[v47[5]];
  *v19 = v65;
  *(v19 + 1) = v14;
  v19[16] = v15;
  *(v19 + 3) = v16;
  *(v19 + 4) = v17;
  LOBYTE(v60) = 2;
  sub_217AED13C();
  sub_217D89BCC();
  v13[v18[6]] = v65;
  LOBYTE(v60) = 3;
  sub_217A5B978();
  sub_217D89B5C();
  v20 = v66;
  v21 = &v13[v18[7]];
  *v21 = v65;
  *(v21 + 2) = v20;
  v64 = 4;
  sub_217A5D308();
  sub_217D89B5C();
  v22 = &v13[v18[8]];
  v23 = v70;
  v24 = v72;
  v25 = v73;
  *(v22 + 6) = v71;
  *(v22 + 7) = v24;
  *(v22 + 8) = v25;
  v26 = v66;
  v27 = v68;
  v28 = v69;
  *(v22 + 2) = v67;
  *(v22 + 3) = v27;
  *(v22 + 4) = v28;
  *(v22 + 5) = v23;
  *v22 = v65;
  *(v22 + 1) = v26;
  LOBYTE(v56) = 5;
  sub_217A5E738();
  sub_217D89B5C();
  v29 = v61;
  v30 = &v13[v18[9]];
  *v30 = v60;
  *(v30 + 8) = v29;
  LOBYTE(v56) = 6;
  sub_217ACFB38();
  sub_217D89BCC();
  v31 = BYTE1(v60);
  v32 = WORD1(v60);
  v33 = &v13[v18[10]];
  *v33 = v60;
  v33[1] = v31;
  *(v33 + 1) = v32;
  v59 = 7;
  sub_217A54D08();
  sub_217D89BCC();
  v34 = &v48[v47[11]];
  v35 = v61;
  *v34 = v60;
  *(v34 + 1) = v35;
  *(v34 + 2) = v62;
  v34[48] = v63;
  v55 = 8;
  sub_217AD07F8();
  sub_217D89BCC();
  v36 = *(&v56 + 1);
  v37 = v57;
  v38 = BYTE1(v57);
  v39 = *(&v57 + 1);
  v40 = v58;
  v41 = &v48[v47[12]];
  *v41 = v56;
  *(v41 + 1) = v36;
  v41[16] = v37;
  v41[17] = v38;
  *(v41 + 3) = v39;
  *(v41 + 4) = v40;
  v55 = 9;
  sub_217ACFF40();
  sub_217D89B5C();
  (*(v12 + 8))(v54, v52);
  v42 = v48;
  v43 = &v48[v47[13]];
  v44 = v57;
  *v43 = v56;
  *(v43 + 1) = v44;
  sub_217D55AA4(v42, v49);
  __swift_destroy_boxed_opaque_existential_1(v74);
  return sub_217D55B08(v42);
}

void sub_217D55A40(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217D55120();
    v7 = a3(a1, &type metadata for RecipeSaveEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217D55AA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecipeSaveEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217D55B08(uint64_t a1)
{
  v2 = type metadata accessor for RecipeSaveEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_217D55CA0()
{
  result = qword_27CBA5448;
  if (!qword_27CBA5448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA5448);
  }

  return result;
}

unint64_t sub_217D55CF8()
{
  result = qword_27CBA5450;
  if (!qword_27CBA5450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA5450);
  }

  return result;
}

unint64_t sub_217D55D50()
{
  result = qword_27CBA5458;
  if (!qword_27CBA5458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA5458);
  }

  return result;
}

uint64_t sub_217D55E6C()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA5490);
  __swift_project_value_buffer(v0, qword_27CBA5490);
  return sub_217D8866C();
}

uint64_t sub_217D55F14(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_217D889CC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t TagScoringEvent.timedData.setter(uint64_t a1)
{
  sub_217A608E0(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t TagScoringEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A608E0(0);
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_217D5606C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = a1(0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, v2, v4);
}

uint64_t TagScoringEvent.Model.init(timedData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_217D889CC();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t sub_217D56164@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x74614464656D6974 && a2 == 0xE900000000000061)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_217D89D4C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_217D561F4(uint64_t a1)
{
  v2 = sub_217D563E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217D56230(uint64_t a1)
{
  v2 = sub_217D563E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TagScoringEvent.Model.encode(to:)(void *a1)
{
  sub_217D566CC(0, &qword_27CBA54A8, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D563E0();
  sub_217D89E7C();
  sub_217D889CC();
  sub_217D55F14(&qword_2811C83F8, MEMORY[0x277CEAED8]);
  sub_217D89CAC();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_217D563E0()
{
  result = qword_27CBA54B0;
  if (!qword_27CBA54B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA54B0);
  }

  return result;
}

uint64_t TagScoringEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = sub_217D889CC();
  v19 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v20 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217D566CC(0, &qword_27CBA54B8, MEMORY[0x277D844C8]);
  v7 = v6;
  v18 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - v8;
  v10 = type metadata accessor for TagScoringEvent.Model(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D563E0();
  sub_217D89E5C();
  if (!v2)
  {
    v13 = v18;
    v14 = v19;
    sub_217D55F14(&qword_2811C83F0, MEMORY[0x277CEAEE0]);
    sub_217D89BCC();
    (*(v13 + 8))(v9, v7);
    (*(v14 + 32))(v12, v20, v4);
    sub_217D56750(v12, v17);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217D566CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217D563E0();
    v7 = a3(a1, &type metadata for TagScoringEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217D56750(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TagScoringEvent.Model(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_217D567CC(void *a1)
{
  sub_217D566CC(0, &qword_27CBA54A8, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D563E0();
  sub_217D89E7C();
  sub_217D889CC();
  sub_217D55F14(&qword_2811C83F8, MEMORY[0x277CEAED8]);
  sub_217D89CAC();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_217D569E8@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A608E0(0);
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t __swift_get_extra_inhabitant_indexTm_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(0, a2, a3);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t __swift_store_extra_inhabitant_indexTm_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = (a5)(0, a2, a3, a4);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, a2, a2, v7);
}

uint64_t sub_217D56BE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_217D56C64()
{
  result = qword_27CBA54E0;
  if (!qword_27CBA54E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA54E0);
  }

  return result;
}

unint64_t sub_217D56CBC()
{
  result = qword_27CBA54E8;
  if (!qword_27CBA54E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA54E8);
  }

  return result;
}

unint64_t sub_217D56D14()
{
  result = qword_27CBA54F0;
  if (!qword_27CBA54F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA54F0);
  }

  return result;
}

uint64_t sub_217D56E30()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA5528);
  __swift_project_value_buffer(v0, qword_27CBA5528);
  return sub_217D8866C();
}

uint64_t ArticleUnlikeEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t ArticleUnlikeEvent.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleUnlikeEvent(0) + 20);
  sub_217C225BC(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleUnlikeEvent.articleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleUnlikeEvent(0) + 20);
  sub_217C225BC(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleUnlikeEvent.actionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleUnlikeEvent(0) + 24);
  sub_217C225BC(0, &qword_2811C8848, sub_217AED13C, sub_217AED190, &type metadata for ActionData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleUnlikeEvent.actionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleUnlikeEvent(0) + 24);
  sub_217C225BC(0, &qword_2811C8848, sub_217AED13C, sub_217AED190, &type metadata for ActionData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleUnlikeEvent.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleUnlikeEvent(0) + 28);
  sub_217C225BC(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleUnlikeEvent.channelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleUnlikeEvent(0) + 28);
  sub_217C225BC(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleUnlikeEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleUnlikeEvent(0) + 32);
  sub_217C225BC(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleUnlikeEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleUnlikeEvent(0) + 32);
  sub_217C225BC(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleUnlikeEvent.groupData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleUnlikeEvent(0) + 36);
  sub_217C225BC(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleUnlikeEvent.groupData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleUnlikeEvent(0) + 36);
  sub_217C225BC(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleUnlikeEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleUnlikeEvent(0) + 40);
  sub_217C225BC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleUnlikeEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleUnlikeEvent(0) + 40);
  sub_217C225BC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleUnlikeEvent.issueData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleUnlikeEvent(0) + 44);
  sub_217C225BC(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleUnlikeEvent.issueData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleUnlikeEvent(0) + 44);
  sub_217C225BC(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleUnlikeEvent.userChannelContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleUnlikeEvent(0) + 48);
  sub_217C225BC(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleUnlikeEvent.userChannelContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleUnlikeEvent(0) + 48);
  sub_217C225BC(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleUnlikeEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleUnlikeEvent(0) + 52);
  sub_217C225BC(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleUnlikeEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleUnlikeEvent(0) + 52);
  sub_217C225BC(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleUnlikeEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for ArticleUnlikeEvent(0);
  v5 = v4[5];
  sub_217C225BC(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217C225BC(0, &qword_2811C8848, sub_217AED13C, sub_217AED190, &type metadata for ActionData);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  sub_217C225BC(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  (*(*(v10 - 8) + 104))(a1 + v9, v2, v10);
  v11 = v4[8];
  v12 = *MEMORY[0x277CEACF0];
  sub_217C225BC(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  (*(*(v13 - 8) + 104))(a1 + v11, v12, v13);
  v14 = v4[9];
  sub_217C225BC(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  (*(*(v15 - 8) + 104))(a1 + v14, v12, v15);
  v16 = v4[10];
  sub_217C225BC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v17 - 8) + 104))(a1 + v16, v2, v17);
  v18 = v4[11];
  sub_217C225BC(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  (*(*(v19 - 8) + 104))(a1 + v18, v12, v19);
  v20 = v4[12];
  sub_217C225BC(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
  (*(*(v21 - 8) + 104))(a1 + v20, v2, v21);
  v22 = v4[13];
  sub_217C225BC(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v24 = *(*(v23 - 8) + 104);

  return v24(a1 + v22, v12, v23);
}

uint64_t ArticleUnlikeEvent.Model.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ArticleUnlikeEvent.Model(0) + 20);
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

uint64_t ArticleUnlikeEvent.Model.actionData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ArticleUnlikeEvent.Model(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t ArticleUnlikeEvent.Model.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ArticleUnlikeEvent.Model(0) + 28);
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

uint64_t ArticleUnlikeEvent.Model.feedData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ArticleUnlikeEvent.Model(0) + 32));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;

  return sub_217AD1A68(v4, v5, v6);
}

uint64_t ArticleUnlikeEvent.Model.groupData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ArticleUnlikeEvent.Model(0) + 36));
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

uint64_t ArticleUnlikeEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ArticleUnlikeEvent.Model(0) + 40));
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

void ArticleUnlikeEvent.Model.issueData.getter(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ArticleUnlikeEvent.Model(0) + 44));
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

uint64_t ArticleUnlikeEvent.Model.userChannelContextData.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for ArticleUnlikeEvent.Model(0);
  v4 = (v1 + *(result + 48));
  v5 = *v4;
  v6 = v4[1];
  LOWORD(v4) = *(v4 + 1);
  *a1 = v5;
  *(a1 + 1) = v6;
  *(a1 + 2) = v4;
  return result;
}

uint64_t ArticleUnlikeEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ArticleUnlikeEvent.Model(0) + 52));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

__n128 ArticleUnlikeEvent.Model.init(eventData:articleData:actionData:channelData:feedData:groupData:userBundleSubscriptionContextData:issueData:userChannelContextData:viewData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t *a4@<X3>, __int128 *a5@<X4>, _OWORD *a6@<X5>, uint64_t a7@<X6>, __n128 *a8@<X7>, uint64_t a9@<X8>, char *a10, uint64_t *a11)
{
  v17 = *a3;
  v18 = a4[1];
  v19 = *(a4 + 16);
  v20 = *(a4 + 17);
  v42 = a4[3];
  v43 = *a4;
  v41 = a4[4];
  v45 = *a5;
  v44 = *(a5 + 2);
  v49 = a10[1];
  v50 = *a10;
  v48 = *(a10 + 1);
  v53 = *a11;
  v52 = a11[1];
  v51 = *(a11 + 8);
  v21 = sub_217D8899C();
  v46 = a8[1];
  v47 = *a8;
  (*(*(v21 - 8) + 32))(a9, a1, v21);
  v22 = type metadata accessor for ArticleUnlikeEvent.Model(0);
  v23 = a9 + v22[5];
  v24 = *(a2 + 48);
  *(v23 + 32) = *(a2 + 32);
  *(v23 + 48) = v24;
  v25 = *(a2 + 16);
  *v23 = *a2;
  *(v23 + 16) = v25;
  *(v23 + 127) = *(a2 + 127);
  v26 = *(a2 + 112);
  *(v23 + 96) = *(a2 + 96);
  *(v23 + 112) = v26;
  v27 = *(a2 + 80);
  *(v23 + 64) = *(a2 + 64);
  *(v23 + 80) = v27;
  *(a9 + v22[6]) = v17;
  v28 = a9 + v22[7];
  *v28 = v43;
  *(v28 + 8) = v18;
  *(v28 + 16) = v19;
  *(v28 + 17) = v20;
  *(v28 + 24) = v42;
  *(v28 + 32) = v41;
  v29 = a9 + v22[8];
  *v29 = v45;
  *(v29 + 16) = v44;
  v30 = (a9 + v22[9]);
  v31 = a6[3];
  v30[2] = a6[2];
  v30[3] = v31;
  v32 = a6[1];
  *v30 = *a6;
  v30[1] = v32;
  v33 = a6[8];
  v30[7] = a6[7];
  v30[8] = v33;
  v34 = a6[6];
  v30[5] = a6[5];
  v30[6] = v34;
  v30[4] = a6[4];
  v35 = a9 + v22[10];
  v36 = *(a7 + 16);
  *v35 = *a7;
  *(v35 + 16) = v36;
  *(v35 + 32) = *(a7 + 32);
  *(v35 + 48) = *(a7 + 48);
  v37 = (a9 + v22[11]);
  result = v47;
  *v37 = v47;
  v37[1] = v46;
  v39 = a9 + v22[12];
  *v39 = v50;
  *(v39 + 1) = v49;
  *(v39 + 2) = v48;
  v40 = a9 + v22[13];
  *v40 = v53;
  *(v40 + 8) = v52;
  *(v40 + 16) = v51;
  return result;
}

uint64_t sub_217D5891C(uint64_t a1)
{
  v2 = sub_217D590D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217D58958(uint64_t a1)
{
  v2 = sub_217D590D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ArticleUnlikeEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217D59A34(0, &qword_27CBA5540, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v56 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D590D4();
  sub_217D89E7C();
  v115[0] = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410, MEMORY[0x277CEAEB8]);
  sub_217D89CAC();
  if (!v2)
  {
    v116 = v7;
    v11 = type metadata accessor for ArticleUnlikeEvent.Model(0);
    v57 = v3;
    v58 = v11;
    v12 = v3 + *(v11 + 20);
    v13 = *(v12 + 96);
    v14 = *(v12 + 64);
    v112 = *(v12 + 80);
    v113 = v13;
    v15 = *(v12 + 96);
    *v114 = *(v12 + 112);
    v16 = *(v12 + 16);
    v17 = *(v12 + 48);
    v109 = *(v12 + 32);
    v110 = v17;
    v18 = *(v12 + 48);
    v111 = *(v12 + 64);
    v19 = *(v12 + 16);
    v108[0] = *v12;
    v108[1] = v19;
    v105 = v112;
    v106 = v15;
    v107[0] = *(v12 + 112);
    v102 = v109;
    v103 = v18;
    v104 = v14;
    *&v114[15] = *(v12 + 127);
    *(v107 + 15) = *(v12 + 127);
    v100 = v108[0];
    v101 = v16;
    v99 = 1;
    sub_217AD1630(v108, &v84);
    sub_217ACF52C();
    sub_217D89CAC();
    v97[5] = v105;
    v97[6] = v106;
    *v98 = v107[0];
    *&v98[15] = *(v107 + 15);
    v97[2] = v102;
    v97[3] = v103;
    v97[4] = v104;
    v97[0] = v100;
    v97[1] = v101;
    sub_217AD2864(v97);
    v20 = v57;
    v21 = v58;
    LOBYTE(v84) = *(v57 + v58[6]);
    LOBYTE(v75) = 2;
    sub_217AED190();
    sub_217D89CAC();
    v22 = v20 + v21[7];
    v23 = *(v22 + 8);
    v24 = *(v22 + 16);
    v25 = *(v22 + 17);
    v26 = *(v22 + 24);
    v27 = *(v22 + 32);
    *&v84 = *v22;
    *(&v84 + 1) = v23;
    LOBYTE(v85) = v24;
    BYTE1(v85) = v25;
    *(&v85 + 1) = v26;
    *&v86 = v27;
    LOBYTE(v75) = 3;
    sub_217AD084C();

    sub_217D89CAC();
    v7 = v116;

    v28 = v58;
    v29 = (v20 + v58[8]);
    v30 = v29[1];
    v31 = v29[2];
    v94 = *v29;
    v95 = v30;
    v96 = v31;
    v93 = 4;
    sub_217AD1A68(v94, v30, v31);
    sub_217A5BA2C();
    sub_217D89C3C();
    sub_217AD290C(v94, v95, v96);
    v32 = v57;
    v33 = (v57 + v28[9]);
    v34 = v33[6];
    v35 = v33[4];
    v89 = v33[5];
    v90 = v34;
    v36 = v33[6];
    v37 = v33[8];
    v91 = v33[7];
    v92 = v37;
    v38 = v33[2];
    v39 = *v33;
    v85 = v33[1];
    v86 = v38;
    v40 = v33[2];
    v41 = v33[4];
    v87 = v33[3];
    v88 = v41;
    v42 = *v33;
    v81 = v36;
    v82 = v91;
    v83 = v33[8];
    v84 = v42;
    v77 = v40;
    v78 = v87;
    v79 = v35;
    v80 = v89;
    v75 = v39;
    v76 = v85;
    v74 = 5;
    sub_217AD87FC(&v84, v73);
    sub_217A5D3B4();
    sub_217D89C3C();
    v73[6] = v81;
    v73[7] = v82;
    v73[8] = v83;
    v73[2] = v77;
    v73[3] = v78;
    v73[4] = v79;
    v73[5] = v80;
    v73[0] = v75;
    v73[1] = v76;
    sub_217AD96E8(v73);
    v43 = v32 + v28[10];
    v44 = *(v43 + 16);
    v45 = *(v43 + 32);
    v71[0] = *v43;
    v71[1] = v44;
    v71[2] = v45;
    v72 = *(v43 + 48);
    v67 = v71[0];
    v68 = v44;
    v69 = *(v43 + 32);
    v70 = *(v43 + 48);
    v66 = 6;
    sub_217ACC004(v71, v64);
    sub_217A55B98();
    sub_217D89CAC();
    v64[0] = v67;
    v64[1] = v68;
    v64[2] = v69;
    v65 = v70;
    sub_217ACC69C(v64);
    v46 = (v32 + v28[11]);
    v47 = v46[1];
    v48 = v46[2];
    v49 = v46[3];
    v60 = *v46;
    v61 = v47;
    v62 = v48;
    v63 = v49;
    v59 = 7;
    sub_217AE39D0(v60, v47, v48, v49);
    sub_217ACFF94();
    sub_217D89C3C();
    sub_217AE4AA0(v60, v61, v62, v63);
    v50 = (v32 + v28[12]);
    v51 = *v50;
    v52 = v50[1];
    LOWORD(v50) = *(v50 + 1);
    LOBYTE(v60) = v51;
    BYTE1(v60) = v52;
    WORD1(v60) = v50;
    v59 = 8;
    sub_217ACFB8C();
    sub_217D89CAC();
    v53 = v32 + v28[13];
    v54 = *v53;
    v55 = *(v53 + 8);
    LOWORD(v53) = *(v53 + 16);
    v60 = v54;
    v61 = v55;
    LOWORD(v62) = v53;
    v59 = 9;
    sub_217A5E790();

    sub_217D89C3C();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_217D590D4()
{
  result = qword_27CBA5548;
  if (!qword_27CBA5548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA5548);
  }

  return result;
}

void ArticleUnlikeEvent.Model.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v4 = sub_217D8899C();
  v50 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v52 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217D59A34(0, &qword_27CBA5550, MEMORY[0x277D844C8]);
  v53 = v6;
  v51 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v46 - v7;
  v9 = type metadata accessor for ArticleUnlikeEvent.Model(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v82 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_217D590D4();
  v54 = v8;
  sub_217D89E5C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(v82);
  }

  else
  {
    v13 = v51;
    v47 = v9;
    v48 = v11;
    LOBYTE(v73) = 0;
    sub_217A602A0(&qword_2811C8408, MEMORY[0x277CEAEC0]);
    v14 = v52;
    sub_217D89BCC();
    v15 = v48;
    (*(v50 + 32))(v48, v14, v4);
    v64 = 1;
    sub_217ACF4D8();
    sub_217D89BCC();
    v46 = v4;
    v52 = 0;
    v16 = v47;
    v17 = &v15[v47[5]];
    v18 = *v72;
    *(v17 + 6) = v71;
    *(v17 + 7) = v18;
    *(v17 + 127) = *&v72[15];
    v19 = v68;
    *(v17 + 2) = v67;
    *(v17 + 3) = v19;
    v20 = v70;
    *(v17 + 4) = v69;
    *(v17 + 5) = v20;
    v21 = v66;
    *v17 = v65;
    *(v17 + 1) = v21;
    LOBYTE(v59) = 2;
    sub_217AED13C();
    sub_217D89BCC();
    v15[v16[6]] = v73;
    LOBYTE(v59) = 3;
    sub_217AD07F8();
    sub_217D89BCC();
    v22 = *(&v73 + 1);
    v23 = v74;
    v24 = BYTE1(v74);
    v25 = *(&v74 + 1);
    v26 = v75;
    v27 = &v15[v16[7]];
    *v27 = v73;
    *(v27 + 1) = v22;
    v27[16] = v23;
    v27[17] = v24;
    *(v27 + 3) = v25;
    *(v27 + 4) = v26;
    LOBYTE(v59) = 4;
    sub_217A5B978();
    sub_217D89B5C();
    v28 = v74;
    v29 = &v15[v16[8]];
    *v29 = v73;
    *(v29 + 2) = v28;
    v63 = 5;
    sub_217A5D308();
    sub_217D89B5C();
    v30 = &v15[v16[9]];
    v31 = v78;
    v32 = v80;
    *(v30 + 6) = v79;
    *(v30 + 7) = v32;
    *(v30 + 8) = v81;
    v33 = v76;
    *(v30 + 2) = v75;
    *(v30 + 3) = v33;
    *(v30 + 4) = v77;
    *(v30 + 5) = v31;
    v34 = v74;
    *v30 = v73;
    *(v30 + 1) = v34;
    v58 = 6;
    sub_217A54D08();
    sub_217D89BCC();
    v35 = &v15[v16[10]];
    v36 = v60;
    *v35 = v59;
    *(v35 + 1) = v36;
    *(v35 + 2) = v61;
    v35[48] = v62;
    v55 = 7;
    sub_217ACFF40();
    sub_217D89B5C();
    v37 = v47;
    v38 = &v48[v47[11]];
    v39 = v57;
    *v38 = v56;
    *(v38 + 1) = v39;
    v55 = 8;
    sub_217ACFB38();
    sub_217D89BCC();
    v40 = BYTE1(v56);
    v41 = WORD1(v56);
    v42 = &v48[v37[12]];
    *v42 = v56;
    v42[1] = v40;
    *(v42 + 1) = v41;
    v55 = 9;
    sub_217A5E738();
    sub_217D89B5C();
    (*(v13 + 8))(v54, v53);
    v43 = v57;
    v44 = v48;
    v45 = &v48[v47[13]];
    *v45 = v56;
    *(v45 + 8) = v43;
    sub_217D59A98(v44, v49);
    __swift_destroy_boxed_opaque_existential_1(v82);
    sub_217D59AFC(v44);
  }
}

void sub_217D59A34(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217D590D4();
    v7 = a3(a1, &type metadata for ArticleUnlikeEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217D59A98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArticleUnlikeEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217D59AFC(uint64_t a1)
{
  v2 = type metadata accessor for ArticleUnlikeEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_217D59C94()
{
  result = qword_27CBA5558;
  if (!qword_27CBA5558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA5558);
  }

  return result;
}

unint64_t sub_217D59CEC()
{
  result = qword_27CBA5560;
  if (!qword_27CBA5560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA5560);
  }

  return result;
}

unint64_t sub_217D59D44()
{
  result = qword_27CBA5568;
  if (!qword_27CBA5568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA5568);
  }

  return result;
}

uint64_t NetworkEventData.startTime.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_217D87C9C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t NetworkEventData.startTime.setter(uint64_t a1)
{
  v3 = sub_217D87C9C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t type metadata accessor for NetworkEventData(uint64_t a1)
{
  result = qword_2811C5010;
  if (!qword_2811C5010)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t NetworkEventData.dnsDuration.setter(uint64_t a1)
{
  result = type metadata accessor for NetworkEventData(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t NetworkEventData.connectDuration.setter(uint64_t a1)
{
  result = type metadata accessor for NetworkEventData(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t NetworkEventData.requestDuration.setter(uint64_t a1)
{
  result = type metadata accessor for NetworkEventData(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t NetworkEventData.responseDuration.setter(uint64_t a1)
{
  result = type metadata accessor for NetworkEventData(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t NetworkEventData.responseSize.setter(uint64_t a1)
{
  result = type metadata accessor for NetworkEventData(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t NetworkEventData.cacheState.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for NetworkEventData(0);
  *a1 = *(v1 + *(result + 40));
  return result;
}

uint64_t NetworkEventData.cacheState.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for NetworkEventData(0);
  *(v1 + *(result + 40)) = v2;
  return result;
}

uint64_t NetworkEventData.statusCode.setter(uint64_t a1)
{
  result = type metadata accessor for NetworkEventData(0);
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t NetworkEventData.errorCode.setter(uint64_t a1)
{
  result = type metadata accessor for NetworkEventData(0);
  *(v1 + *(result + 48)) = a1;
  return result;
}

uint64_t NetworkEventData.eventType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for NetworkEventData(0);
  *a1 = *(v1 + *(result + 52));
  return result;
}

uint64_t NetworkEventData.eventType.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for NetworkEventData(0);
  *(v1 + *(result + 52)) = v2;
  return result;
}

uint64_t NetworkEventData.wifiReachabilityStatus.setter(char a1)
{
  result = type metadata accessor for NetworkEventData(0);
  *(v1 + *(result + 56)) = a1;
  return result;
}

uint64_t NetworkEventData.cellularRadioAccessTechnology.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for NetworkEventData(0);
  *a1 = *(v1 + *(result + 60));
  return result;
}

uint64_t NetworkEventData.cellularRadioAccessTechnology.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for NetworkEventData(0);
  *(v1 + *(result + 60)) = v2;
  return result;
}

uint64_t NetworkEventData.respondingPop.getter()
{
  v1 = *(v0 + *(type metadata accessor for NetworkEventData(0) + 64));

  return v1;
}

uint64_t NetworkEventData.respondingPop.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for NetworkEventData(0) + 64));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t NetworkEventData.isProxyConnection.setter(char a1)
{
  result = type metadata accessor for NetworkEventData(0);
  *(v1 + *(result + 68)) = a1;
  return result;
}

uint64_t NetworkEventData.smarterFetchData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for NetworkEventData(0) + 72));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;

  return sub_217D3AA94(v4, v5, v6);
}

__n128 NetworkEventData.smarterFetchData.setter(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = (v1 + *(type metadata accessor for NetworkEventData(0) + 72));
  sub_217D3AB20(*v3, v3[1], v3[2]);
  result = v5;
  *v3 = v5;
  v3[2] = v2;
  return result;
}

__n128 NetworkEventData.init(startTime:dnsDuration:connectDuration:requestDuration:responseDuration:responseSize:cacheState:statusCode:errorCode:eventType:wifiReachabilityStatus:cellularRadioAccessTechnology:respondingPop:isProxyConnection:smarterFetchData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char *a11, char a12, char *a13, uint64_t a14, uint64_t a15, char a16, __n128 *a17)
{
  v21 = *a7;
  v22 = *a11;
  v23 = *a13;
  v34 = *a17;
  v33 = a17[1].n128_u64[0];
  v24 = type metadata accessor for NetworkEventData(0);
  v25 = (a9 + v24[18]);
  v26 = sub_217D87C9C();
  v25[1] = 0;
  v25[2] = 0;
  *v25 = 0;
  (*(*(v26 - 8) + 32))(a9, a1, v26);
  *(a9 + v24[5]) = a2;
  *(a9 + v24[6]) = a3;
  *(a9 + v24[7]) = a4;
  *(a9 + v24[8]) = a5;
  *(a9 + v24[9]) = a6;
  *(a9 + v24[10]) = v21;
  *(a9 + v24[11]) = a8;
  *(a9 + v24[12]) = a10;
  *(a9 + v24[13]) = v22;
  *(a9 + v24[14]) = a12;
  *(a9 + v24[15]) = v23;
  v27 = (a9 + v24[16]);
  *v27 = a14;
  v27[1] = a15;
  *(a9 + v24[17]) = a16;
  sub_217D3AB20(*v25, v25[1], v25[2]);
  result = v34;
  *v25 = v34;
  v25[2] = v33;
  return result;
}

uint64_t sub_217D5A9C0(char a1)
{
  result = 0x6D69547472617473;
  switch(a1)
  {
    case 1:
      result = 0x7461727544736E64;
      break;
    case 2:
      v3 = 0x63656E6E6F63;
      goto LABEL_11;
    case 3:
      v3 = 0x736575716572;
LABEL_11:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x4474000000000000;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0x65736E6F70736572;
      break;
    case 6:
      result = 0x6174536568636163;
      break;
    case 7:
      result = 0x6F43737574617473;
      break;
    case 8:
      result = 0x646F43726F727265;
      break;
    case 9:
      result = 0x707954746E657665;
      break;
    case 10:
      result = 0xD000000000000016;
      break;
    case 11:
      result = 0xD00000000000001DLL;
      break;
    case 12:
      result = 0x69646E6F70736572;
      break;
    case 13:
      result = 0xD000000000000011;
      break;
    case 14:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_217D5AB98@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217D5BD98(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217D5ABC0(uint64_t a1)
{
  v2 = sub_217D5B0C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217D5ABFC(uint64_t a1)
{
  v2 = sub_217D5B0C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NetworkEventData.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217D5B8B4(0, &qword_2811BC708, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D5B0C0();
  sub_217D89E7C();
  LOBYTE(v15) = 0;
  sub_217D87C9C();
  sub_217A5B3F0(&qword_2811C8C90, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
  sub_217D89CAC();
  if (!v2)
  {
    v10 = type metadata accessor for NetworkEventData(0);
    LOBYTE(v15) = 1;
    sub_217D89CCC();
    LOBYTE(v15) = 2;
    sub_217D89CCC();
    LOBYTE(v15) = 3;
    sub_217D89CCC();
    LOBYTE(v15) = 4;
    sub_217D89CCC();
    LOBYTE(v15) = 5;
    sub_217D89CCC();
    LOBYTE(v15) = *(v3 + v10[10]);
    v18 = 6;
    sub_217D5B114();
    sub_217D89CAC();
    LOBYTE(v15) = 7;
    sub_217D89CCC();
    LOBYTE(v15) = 8;
    sub_217D89CCC();
    LOBYTE(v15) = *(v3 + v10[13]);
    v18 = 9;
    sub_217D5B168();
    sub_217D89CAC();
    LOBYTE(v15) = 10;
    sub_217D89C7C();
    LOBYTE(v15) = *(v3 + v10[15]);
    v18 = 11;
    sub_217D5B1BC();
    sub_217D89CAC();
    LOBYTE(v15) = 12;
    sub_217D89C6C();
    LOBYTE(v15) = 13;
    sub_217D89C7C();
    v11 = (v3 + v10[18]);
    v12 = v11[1];
    v13 = v11[2];
    v15 = *v11;
    v16 = v12;
    v17 = v13;
    v18 = 14;
    sub_217D3AA94(v15, v12, v13);
    sub_217C26A98();
    sub_217D89C3C();
    sub_217D3AB20(v15, v16, v17);
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_217D5B0C0()
{
  result = qword_2811C5040;
  if (!qword_2811C5040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C5040);
  }

  return result;
}

unint64_t sub_217D5B114()
{
  result = qword_2811C7FB0;
  if (!qword_2811C7FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7FB0);
  }

  return result;
}

unint64_t sub_217D5B168()
{
  result = qword_2811C4F50[0];
  if (!qword_2811C4F50[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2811C4F50);
  }

  return result;
}

unint64_t sub_217D5B1BC()
{
  result = qword_2811BE508[0];
  if (!qword_2811BE508[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2811BE508);
  }

  return result;
}

uint64_t NetworkEventData.init(from:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v4 = sub_217D87C9C();
  v34 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v35 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217D5B8B4(0, &qword_27CBA5570, MEMORY[0x277D844C8]);
  *&v37 = v6;
  v33 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v29 - v7;
  v9 = type metadata accessor for NetworkEventData(0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = &v12[*(v10 + 72)];
  *v13 = 0;
  v13[1] = 0;
  v38 = v13;
  v13[2] = 0;
  __swift_project_boxed_opaque_existential_1(a1, *(a1 + 3));
  sub_217D5B0C0();
  v36 = v8;
  sub_217D89E5C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_217D3AB20(*v38, v38[1], v38[2]);
  }

  else
  {
    v30 = v9;
    v31 = v12;
    v14 = a1;
    v15 = v33;
    v16 = v34;
    LOBYTE(v39) = 0;
    sub_217A5B3F0(&qword_27CBA4638, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
    v17 = v35;
    sub_217D89BCC();
    v18 = v31;
    (*(v16 + 32))(v31, v17, v4);
    LOBYTE(v39) = 1;
    v19 = sub_217D89BEC();
    v20 = v30;
    *(v18 + v30[5]) = v19;
    LOBYTE(v39) = 2;
    v21 = sub_217D89BEC();
    v35 = v14;
    *(v18 + v20[6]) = v21;
    LOBYTE(v39) = 3;
    *(v18 + v20[7]) = sub_217D89BEC();
    LOBYTE(v39) = 4;
    *(v18 + v20[8]) = sub_217D89BEC();
    LOBYTE(v39) = 5;
    *(v18 + v20[9]) = sub_217D89BEC();
    v41 = 6;
    sub_217D5B918();
    sub_217D89BCC();
    *(v18 + v20[10]) = v39;
    LOBYTE(v39) = 7;
    *(v18 + v20[11]) = sub_217D89BEC();
    LOBYTE(v39) = 8;
    *(v18 + v20[12]) = sub_217D89BEC();
    v41 = 9;
    sub_217D5B96C();
    sub_217D89BCC();
    v31[v30[13]] = v39;
    LOBYTE(v39) = 10;
    v31[v30[14]] = sub_217D89B9C() & 1;
    v41 = 11;
    sub_217D5B9C0();
    sub_217D89BCC();
    v31[v30[15]] = v39;
    LOBYTE(v39) = 12;
    v22 = sub_217D89B8C();
    v23 = &v31[v30[16]];
    *v23 = v22;
    v23[1] = v24;
    LOBYTE(v39) = 13;
    v31[v30[17]] = sub_217D89B9C() & 1;
    v41 = 14;
    sub_217C26A40();
    sub_217D89B5C();
    (*(v15 + 8))(v36, v37);
    v37 = v39;
    v25 = v40;
    v26 = v38;
    sub_217D3AB20(*v38, v38[1], v38[2]);
    *v26 = v37;
    v26[2] = v25;
    v27 = v31;
    sub_217BB58E4(v31, v32);
    __swift_destroy_boxed_opaque_existential_1(v14);
    return sub_217D5BA14(v27);
  }
}

void sub_217D5B8B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217D5B0C0();
    v7 = a3(a1, &type metadata for NetworkEventData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217D5B918()
{
  result = qword_27CBA5578;
  if (!qword_27CBA5578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA5578);
  }

  return result;
}

unint64_t sub_217D5B96C()
{
  result = qword_27CBA5580;
  if (!qword_27CBA5580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA5580);
  }

  return result;
}

unint64_t sub_217D5B9C0()
{
  result = qword_27CBA5588;
  if (!qword_27CBA5588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA5588);
  }

  return result;
}

uint64_t sub_217D5BA14(uint64_t a1)
{
  v2 = type metadata accessor for NetworkEventData(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_217D5BB58(uint64_t a1)
{
  sub_217D87C9C();
  if (v1 <= 0x3F)
  {
    sub_217D5BC30();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_217D5BC30()
{
  if (!qword_2811C4D18)
  {
    v0 = sub_217D898EC();
    if (!v1)
    {
      atomic_store(v0, &qword_2811C4D18);
    }
  }
}

unint64_t sub_217D5BC94()
{
  result = qword_27CBA5590;
  if (!qword_27CBA5590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA5590);
  }

  return result;
}

unint64_t sub_217D5BCEC()
{
  result = qword_2811C5030;
  if (!qword_2811C5030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C5030);
  }

  return result;
}

unint64_t sub_217D5BD44()
{
  result = qword_2811C5038;
  if (!qword_2811C5038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C5038);
  }

  return result;
}

uint64_t sub_217D5BD98(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D69547472617473 && a2 == 0xE900000000000065;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7461727544736E64 && a2 == 0xEB000000006E6F69 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x447463656E6E6F63 && a2 == 0xEF6E6F6974617275 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4474736575716572 && a2 == 0xEF6E6F6974617275 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000217DD3130 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x65736E6F70736572 && a2 == 0xEC000000657A6953 || (sub_217D89D4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6174536568636163 && a2 == 0xEA00000000006574 || (sub_217D89D4C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6F43737574617473 && a2 == 0xEA00000000006564 || (sub_217D89D4C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x646F43726F727265 && a2 == 0xE900000000000065 || (sub_217D89D4C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x707954746E657665 && a2 == 0xE900000000000065 || (sub_217D89D4C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000217DD3150 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD00000000000001DLL && 0x8000000217DD3170 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x69646E6F70736572 && a2 == 0xED0000706F50676ELL || (sub_217D89D4C() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000217DD3190 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000217DD30F0 == a2)
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

NewsAnalytics::WidgetType_optional __swiftcall WidgetType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217D89B0C();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t WidgetType.rawValue.getter()
{
  v1 = 0x6E776F6E6B6E75;
  v2 = 0x6174537472616D73;
  if (*v0 != 2)
  {
    v2 = 0x7472616D536E6F6ELL;
  }

  if (*v0)
  {
    v1 = 0x695764656E6E6970;
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

unint64_t sub_217D5C374()
{
  result = qword_27CBA5598;
  if (!qword_27CBA5598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA5598);
  }

  return result;
}

uint64_t sub_217D5C3C8()
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217D5C4A4(uint64_t a1)
{
  sub_217D895CC();
}

uint64_t sub_217D5C56C(uint64_t a1)
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

void sub_217D5C650(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6E776F6E6B6E75;
  v4 = 0xEA00000000006B63;
  v5 = 0x6174537472616D73;
  if (*v1 != 2)
  {
    v5 = 0x7472616D536E6F6ELL;
    v4 = 0xED00006B63617453;
  }

  if (*v1)
  {
    v3 = 0x695764656E6E6970;
    v2 = 0xEC00000074656764;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_217D5C7A8()
{
  result = qword_2811C7E70;
  if (!qword_2811C7E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7E70);
  }

  return result;
}

NewsAnalytics::WidgetAppearanceType_optional __swiftcall WidgetAppearanceType.init(rawValue:)(Swift::String rawValue)
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

uint64_t WidgetAppearanceType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x6569726F74536F6ELL;
  v4 = 0x726F727265;
  if (v1 != 3)
  {
    v4 = 0x656E696C66666FLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x45736569726F7473;
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

unint64_t sub_217D5C910()
{
  result = qword_27CBA55A0;
  if (!qword_27CBA55A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA55A0);
  }

  return result;
}

uint64_t sub_217D5C964()
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217D5CA54(uint64_t a1)
{
  sub_217D895CC();
}

uint64_t sub_217D5CB30(uint64_t a1)
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

void sub_217D5CC28(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xE900000000000073;
  v6 = 0x6569726F74536F6ELL;
  v7 = 0xE500000000000000;
  v8 = 0x726F727265;
  if (v2 != 3)
  {
    v8 = 0x656E696C66666FLL;
    v7 = 0xE700000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x45736569726F7473;
    v3 = 0xEE006465736F7078;
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

unint64_t sub_217D5CD94()
{
  result = qword_27CBA55A8;
  if (!qword_27CBA55A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA55A8);
  }

  return result;
}

uint64_t sub_217D5CEB0()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA55E0);
  __swift_project_value_buffer(v0, qword_27CBA55E0);
  return sub_217D8866C();
}

uint64_t TagEmailSignupEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t TagEmailSignupEvent.tagData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TagEmailSignupEvent(0) + 20);
  sub_217D5D264(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14, &type metadata for TagData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t TagEmailSignupEvent.tagData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TagEmailSignupEvent(0) + 20);
  sub_217D5D264(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14, &type metadata for TagData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t TagEmailSignupEvent.userActionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TagEmailSignupEvent(0) + 24);
  sub_217D5D264(0, &qword_27CBA4B78, sub_217C8105C, sub_217C810B4, &type metadata for EmailShareUserActionData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217D5D264(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
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

uint64_t TagEmailSignupEvent.userActionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TagEmailSignupEvent(0) + 24);
  sub_217D5D264(0, &qword_27CBA4B78, sub_217C8105C, sub_217C810B4, &type metadata for EmailShareUserActionData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t TagEmailSignupEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for TagEmailSignupEvent(0);
  v5 = *(v4 + 20);
  sub_217D5D264(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14, &type metadata for TagData);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = *(v4 + 24);
  sub_217D5D264(0, &qword_27CBA4B78, sub_217C8105C, sub_217C810B4, &type metadata for EmailShareUserActionData);
  v9 = *(*(v8 - 8) + 104);

  return v9(a1 + v7, v2, v8);
}

uint64_t TagEmailSignupEvent.Model.tagData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for TagEmailSignupEvent.Model(0) + 20));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t TagEmailSignupEvent.Model.userActionData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for TagEmailSignupEvent.Model(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t TagEmailSignupEvent.Model.init(eventData:tagData:userActionData:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a2;
  v7 = a2[1];
  v8 = *a3;
  v9 = sub_217D8899C();
  (*(*(v9 - 8) + 32))(a4, a1, v9);
  result = type metadata accessor for TagEmailSignupEvent.Model(0);
  v11 = (a4 + *(result + 20));
  *v11 = v6;
  v11[1] = v7;
  *(a4 + *(result + 24)) = v8;
  return result;
}

uint64_t sub_217D5D69C()
{
  v1 = 0x61746144676174;
  if (*v0 != 1)
  {
    v1 = 0x6974634172657375;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746144746E657665;
  }
}

uint64_t sub_217D5D708@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217D5E470(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217D5D730(uint64_t a1)
{
  v2 = sub_217D5D9E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217D5D76C(uint64_t a1)
{
  v2 = sub_217D5D9E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TagEmailSignupEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217D5DE0C(0, &qword_27CBA55F8, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D5D9E0();
  sub_217D89E7C();
  LOBYTE(v16) = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410, MEMORY[0x277CEAEB8]);
  sub_217D89CAC();
  if (!v2)
  {
    v10 = type metadata accessor for TagEmailSignupEvent.Model(0);
    v11 = (v3 + *(v10 + 20));
    v12 = v11[1];
    v16 = *v11;
    v17 = v12;
    v15 = 1;
    sub_217AF6B14();

    sub_217D89CAC();

    LOBYTE(v16) = *(v3 + *(v10 + 24));
    v15 = 2;
    sub_217C810B4();
    sub_217D89CAC();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_217D5D9E0()
{
  result = qword_27CBA5600;
  if (!qword_27CBA5600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA5600);
  }

  return result;
}

uint64_t TagEmailSignupEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = sub_217D8899C();
  v25 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v26 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217D5DE0C(0, &qword_27CBA5608, MEMORY[0x277D844C8]);
  v27 = v6;
  v24 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v20 - v7;
  v9 = type metadata accessor for TagEmailSignupEvent.Model(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D5D9E0();
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v13 = v24;
  v12 = v25;
  v21 = v9;
  v22 = v11;
  LOBYTE(v28) = 0;
  sub_217A602A0(&qword_2811C8408, MEMORY[0x277CEAEC0]);
  v15 = v26;
  v14 = v27;
  sub_217D89BCC();
  (*(v12 + 32))(v22, v15, v4);
  v30 = 1;
  sub_217AF6AC0();
  sub_217D89BCC();
  v16 = v29;
  v17 = &v22[*(v21 + 20)];
  *v17 = v28;
  *(v17 + 1) = v16;
  v30 = 2;
  sub_217C8105C();
  sub_217D89BCC();
  (*(v13 + 8))(v8, v14);
  v18 = v22;
  v22[*(v21 + 24)] = v28;
  sub_217D5DE70(v18, v23);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_217D5DED4(v18);
}

void sub_217D5DE0C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217D5D9E0();
    v7 = a3(a1, &type metadata for TagEmailSignupEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217D5DE70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TagEmailSignupEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217D5DED4(uint64_t a1)
{
  v2 = type metadata accessor for TagEmailSignupEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217D5E008@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  sub_217D5D264(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14, &type metadata for TagData);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = *(a1 + 24);
  sub_217D5D264(0, &qword_27CBA4B78, sub_217C8105C, sub_217C810B4, &type metadata for EmailShareUserActionData);
  v10 = *(*(v9 - 8) + 104);

  return v10(a2 + v8, v4, v9);
}

void sub_217D5E1A0(uint64_t a1)
{
  sub_217A6018C(319);
  if (v1 <= 0x3F)
  {
    sub_217D5D264(319, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14, &type metadata for TagData);
    if (v2 <= 0x3F)
    {
      sub_217D5D264(319, &qword_27CBA4B78, sub_217C8105C, sub_217C810B4, &type metadata for EmailShareUserActionData);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_217D5E2D4(uint64_t a1)
{
  result = sub_217D8899C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_217D5E36C()
{
  result = qword_27CBA5630;
  if (!qword_27CBA5630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA5630);
  }

  return result;
}

unint64_t sub_217D5E3C4()
{
  result = qword_27CBA5638;
  if (!qword_27CBA5638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA5638);
  }

  return result;
}

unint64_t sub_217D5E41C()
{
  result = qword_27CBA5640;
  if (!qword_27CBA5640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA5640);
  }

  return result;
}

uint64_t sub_217D5E470(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x61746144676174 && a2 == 0xE700000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6974634172657375 && a2 == 0xEE00617461446E6FLL)
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

uint64_t TodayFeedPoolData.init(timeSpan:priority:)@<X0>(uint64_t result@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = result;
  *(a3 + 8) = v3;
  return result;
}

uint64_t sub_217D5E618()
{
  if (*v0)
  {
    return 0x797469726F697270;
  }

  else
  {
    return 0x6E617053656D6974;
  }
}

uint64_t sub_217D5E64C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E617053656D6974 && a2 == 0xE800000000000000;
  if (v6 || (sub_217D89D4C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x797469726F697270 && a2 == 0xE800000000000000)
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

uint64_t sub_217D5E728(uint64_t a1)
{
  v2 = sub_217D5E938();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217D5E764(uint64_t a1)
{
  v2 = sub_217D5E938();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TodayFeedPoolData.encode(to:)(void *a1)
{
  sub_217D5EBAC(0, &qword_2811BC6D8, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - v7;
  v11 = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D5E938();
  sub_217D89E7C();
  v14 = 0;
  sub_217D89CCC();
  if (!v2)
  {
    v13 = v11;
    v12 = 1;
    sub_217D5E98C();
    sub_217D89CAC();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_217D5E938()
{
  result = qword_2811C4300;
  if (!qword_2811C4300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C4300);
  }

  return result;
}

unint64_t sub_217D5E98C()
{
  result = qword_2811BD2D0;
  if (!qword_2811BD2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD2D0);
  }

  return result;
}

uint64_t TodayFeedPoolData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_217D5EBAC(0, &qword_27CBA5648, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D5E938();
  sub_217D89E5C();
  if (!v2)
  {
    v16 = 0;
    v10 = sub_217D89BEC();
    v14 = 1;
    sub_217D5EC10();
    sub_217D89BCC();
    (*(v7 + 8))(v9, v6);
    v12 = v15;
    *a2 = v10;
    *(a2 + 8) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217D5EBAC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217D5E938();
    v7 = a3(a1, &type metadata for TodayFeedPoolData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217D5EC10()
{
  result = qword_27CBA5650;
  if (!qword_27CBA5650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA5650);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TodayFeedPoolData(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 9))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 4;
  v5 = v3 - 4;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for TodayFeedPoolData(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 3;
    }
  }

  return result;
}

unint64_t sub_217D5ED48()
{
  result = qword_27CBA5658;
  if (!qword_27CBA5658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA5658);
  }

  return result;
}

unint64_t sub_217D5EDA0()
{
  result = qword_2811C42F0;
  if (!qword_2811C42F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C42F0);
  }

  return result;
}

unint64_t sub_217D5EDF8()
{
  result = qword_2811C42F8;
  if (!qword_2811C42F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C42F8);
  }

  return result;
}

NewsAnalytics::Role_optional __swiftcall Role.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217D89B0C();

  v5 = 9;
  if (v3 < 9)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t Role.rawValue.getter()
{
  v1 = *v0;
  if (v1 <= 3)
  {
    v6 = 0x6E776F6E6B6E75;
    v7 = 0x7265766F63;
    if (v1 != 2)
    {
      v7 = 0xD000000000000014;
    }

    if (*v0)
    {
      v6 = 0x656C6369747261;
    }

    if (*v0 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v2 = 0x65727574616566;
    v3 = 0x737349664F646E65;
    if (v1 != 7)
    {
      v3 = 0xD000000000000012;
    }

    if (v1 != 6)
    {
      v2 = v3;
    }

    v4 = 0xD000000000000013;
    if (v1 != 4)
    {
      v4 = 0x6867696C746F7073;
    }

    if (*v0 <= 5u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

unint64_t sub_217D5EFE0()
{
  result = qword_27CBA5660;
  if (!qword_27CBA5660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA5660);
  }

  return result;
}

uint64_t sub_217D5F034()
{
  v1 = *v0;
  sub_217D89E1C();
  sub_217D82F40(v3, v1);
  return sub_217D89E3C();
}

uint64_t sub_217D5F084(uint64_t a1)
{
  v2 = *v1;
  sub_217D89E1C();
  sub_217D82F40(v4, v2);
  return sub_217D89E3C();
}

unint64_t sub_217D5F0D4@<X0>(unint64_t *a1@<X8>)
{
  result = Role.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_217D5F1BC()
{
  result = qword_2811BD410;
  if (!qword_2811BD410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD410);
  }

  return result;
}

void *sub_217D5F210()
{
  v0 = sub_217D87A4C();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v11 - v5;
  sub_217D87A1C();
  (*(v1 + 16))(v4, v6, v0);
  v7 = sub_217B5ABE8(0, 1, 1, MEMORY[0x277D84F90]);
  v9 = v7[2];
  v8 = v7[3];
  if (v9 >= v8 >> 1)
  {
    v7 = sub_217B5ABE8((v8 > 1), v9 + 1, 1, v7);
  }

  (*(v1 + 8))(v6, v0);
  v7[2] = v9 + 1;
  (*(v1 + 32))(v7 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v9, v4, v0);
  return v7;
}

void sub_217D5F408(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v60 = a3;
  v59 = a2;
  v58 = sub_217D87A4C();
  v57 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v61 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for MediaEngageCompleteEvent.Model(0);
  MEMORY[0x28223BE20](v69);
  v62 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217D5FC80(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_217D881AC();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v49 - v14;
  sub_217CE95B8(0);
  v17 = v16;
  v18 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v20 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v15, a1, v12);
  v21 = swift_dynamicCast();
  v22 = *(v18 + 56);
  if (!v21)
  {
    v22(v11, 1, 1, v17);
    sub_217D5FD20(v11, sub_217D5FC80);
    sub_217B0F048();
    swift_allocError();
    swift_willThrow();
    return;
  }

  v22(v11, 0, 1, v17);
  (*(v18 + 32))(v20, v11, v17);
  v23 = sub_217D8816C();
  v24 = sub_217D887BC();
  if (v5)
  {
    (*(v18 + 8))(v20, v17);

    return;
  }

  v26 = v24;
  v27 = v25;

  sub_217D8796C();
  swift_allocObject();
  sub_217D8795C();
  sub_217D5FCD8(&qword_27CBA5670, type metadata accessor for MediaEngageCompleteEvent.Model, &protocol conformance descriptor for MediaEngageCompleteEvent.Model);
  v28 = v62;
  v29 = v69;
  sub_217D8794C();

  v30 = (v28 + v29[9]);
  v31 = *v30;
  v55 = *(v30 + 1);
  v54 = *(v30 + 2);
  v53 = *(v30 + 6);
  v52 = v30[28];
  v56 = v31;
  if (v31 == 4)
  {
    goto LABEL_8;
  }

  v32 = sub_217D89D4C();

  if ((v32 & 1) == 0)
  {
    if (v56 == 1)
    {
LABEL_8:

      goto LABEL_10;
    }

    v33 = sub_217D89D4C();

    if ((v33 & 1) == 0)
    {
      (*(v18 + 8))(v20, v17);
      sub_217AE010C(v26, v27);
      sub_217D5FD20(v28, type metadata accessor for MediaEngageCompleteEvent.Model);
      return;
    }
  }

LABEL_10:
  v50 = v26;
  v51 = v27;
  sub_217D87A1C();
  v34 = sub_217B5ABE8(0, 1, 1, MEMORY[0x277D84F90]);
  v36 = v34[2];
  v35 = v34[3];
  if (v36 >= v35 >> 1)
  {
    v34 = sub_217B5ABE8((v35 > 1), v36 + 1, 1, v34);
  }

  v37 = v58;
  v38 = v57;
  v34[2] = v36 + 1;
  (*(v38 + 32))(v34 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v36, v61, v37);
  v64 = v34;
  v39 = v28 + v69[5];
  v40 = *(v39 + 48);
  v65[2] = *(v39 + 32);
  v65[3] = v40;
  *&v66[15] = *(v39 + 127);
  v41 = *(v39 + 112);
  v65[6] = *(v39 + 96);
  *v66 = v41;
  v42 = *(v39 + 80);
  v65[4] = *(v39 + 64);
  v65[5] = v42;
  v43 = *v39;
  v65[1] = *(v39 + 16);
  v65[0] = v43;
  v44 = v28 + v69[6];
  v68 = *(v44 + 32);
  v45 = *(v44 + 16);
  v67[0] = *v44;
  v67[1] = v45;
  v46 = sub_217C81FAC(v65, v67, *(v28 + v69[8]), *(v28 + v69[8] + 8), *(v28 + v69[8] + 16), v59, v60);
  sub_217B0E7A0(v46);
  v63 = v52;
  v47 = sub_217CA3FB4();
  sub_217B0E7A0(v47);
  v48 = sub_217D5F210();
  sub_217B0E7A0(v48);
  sub_217AE010C(v50, v51);
  (*(v18 + 8))(v20, v17);
  sub_217D5FD20(v28, type metadata accessor for MediaEngageCompleteEvent.Model);
}

void sub_217D5FC80(uint64_t a1)
{
  if (!qword_27CBA5668)
  {
    sub_217CE95B8(255);
    v1 = sub_217D898EC();
    if (!v2)
    {
      atomic_store(v1, &qword_27CBA5668);
    }
  }
}

uint64_t sub_217D5FCD8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_217D5FD20(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t DynamicEndpoint.__allocating_init(appConfigurationManager:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  *(v2 + 24) = FCDefaultsReadEndpointEnvironment();
  return v2;
}

uint64_t DynamicEndpoint.init(appConfigurationManager:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  *(v1 + 24) = FCDefaultsReadEndpointEnvironment();
  return v1;
}

uint64_t DynamicEndpoint.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

void DynamicEndpoint.url.getter()
{
  v1 = [objc_msgSend(*(v0 + 16) appConfiguration)];
  swift_unknownObjectRelease();
  sub_217D87B8C();
}

uint64_t DynamicEndpoint.endpointURL(contentType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_217D87BAC();
  v24 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217CE93AC(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 <= 4)
  {
    if (a1 < 5)
    {
      v11 = [*(v2 + 16) appConfiguration];
      if ([v11 respondsToSelector_])
      {
        v12 = [v11 appAnalyticsEndpointUrlForEnvironment_];
LABEL_5:
        v13 = v12;
        swift_unknownObjectRelease();
        sub_217D87B8C();

        v14 = *(v24 + 56);
        v15 = a2;
        v16 = 0;
LABEL_21:

        return v14(v15, v16, 1, v5);
      }

      goto LABEL_19;
    }

    goto LABEL_20;
  }

  if (a1 > 6)
  {
    if (a1 == 7)
    {
      v22 = [*(v2 + 16) appConfiguration];
      if ([v22 respondsToSelector_])
      {
        v12 = [v22 appAnalyticsAppHealthEndpointUrlForEnvironment_];
        goto LABEL_5;
      }

LABEL_19:
      swift_unknownObjectRelease();
      goto LABEL_20;
    }

    if (a1 == 8)
    {
      v19 = [*(v2 + 16) appConfiguration];
      if ([v19 respondsToSelector_])
      {
        v12 = [v19 appAnalyticsAppHeartbeatEndpointUrlForEnvironment_];
        goto LABEL_5;
      }

      goto LABEL_19;
    }

LABEL_20:
    v14 = *(v24 + 56);
    v15 = a2;
    v16 = 1;
    goto LABEL_21;
  }

  if (a1 != 5)
  {
    v17 = [objc_opt_self() appAnalyticsSportsEventsBaseURLForConfiguration_];
    swift_unknownObjectRelease();
    if (v17)
    {
      sub_217D87B8C();

      (*(v24 + 32))(a2, v7, v5);
      return (*(v24 + 56))(a2, 0, 1, v5);
    }

    goto LABEL_20;
  }

  v20 = [*(v2 + 16) appConfiguration];
  if (([v20 respondsToSelector_] & 1) == 0)
  {
    goto LABEL_19;
  }

  v21 = [v20 appAnalyticsNotificationReceiptEndpointUrlForEnvironment_];
  swift_unknownObjectRelease();
  if (v21)
  {
    sub_217D87B8C();

    (*(v24 + 56))(v10, 0, 1, v5);
  }

  else
  {
    (*(v24 + 56))(v10, 1, 1, v5);
  }

  return sub_217D60428(v10, a2);
}

uint64_t sub_217D60428(uint64_t a1, uint64_t a2)
{
  sub_217CE93AC(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t MediaEngagementData.init(mediaTimePlayed:mediaUserAction:position:mediaPlayMethod:mediaPlayLocation:)@<X0>(uint64_t result@<X0>, char *a2@<X1>, int a3@<W2>, char *a4@<X3>, char *a5@<X4>, uint64_t a6@<X8>)
{
  v6 = *a2;
  v7 = *a4;
  v8 = *a5;
  *a6 = result;
  *(a6 + 8) = v6;
  *(a6 + 12) = a3;
  *(a6 + 16) = v7;
  *(a6 + 17) = v8;
  return result;
}

uint64_t sub_217D6071C()
{
  v1 = *v0;
  v2 = 0x6D6954616964656DLL;
  v3 = 0x6E6F697469736F70;
  v4 = 0x616C50616964656DLL;
  if (v1 != 3)
  {
    v4 = 0xD000000000000011;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x657355616964656DLL;
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

uint64_t sub_217D607E0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217D60FFC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217D60808(uint64_t a1)
{
  v2 = sub_217D60AD0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217D60844(uint64_t a1)
{
  v2 = sub_217D60AD0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MediaEngagementData.encode(to:)(void *a1)
{
  sub_217D60DB0(0, &qword_27CBA5678, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v13 - v6;
  v8 = *(v1 + 8);
  v15 = *(v1 + 12);
  v16 = v8;
  v14 = *(v1 + 16);
  v9 = *(v1 + 17);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D60AD0();
  sub_217D89E7C();
  v25 = 0;
  v10 = v17;
  sub_217D89CCC();
  if (!v10)
  {
    v11 = v14;
    v24 = v16;
    v23 = 1;
    sub_217AEC028();
    sub_217D89CAC();
    v22 = 2;
    sub_217D89CBC();
    v21 = v11;
    v20 = 3;
    sub_217AEC07C();
    sub_217D89C3C();
    v19 = v9;
    v18 = 4;
    sub_217C7EC6C();
    sub_217D89CAC();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_217D60AD0()
{
  result = qword_27CBA5680;
  if (!qword_27CBA5680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA5680);
  }

  return result;
}

uint64_t MediaEngagementData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_217D60DB0(0, &qword_27CBA5688, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D60AD0();
  sub_217D89E5C();
  if (!v2)
  {
    v25 = 0;
    v10 = sub_217D89BEC();
    v23 = 1;
    sub_217AEC508();
    sub_217D89BCC();
    v11 = v24;
    v22 = 2;
    v17 = sub_217D89BDC();
    v20 = 3;
    sub_217AEC55C();
    sub_217D89B5C();
    v16 = v21;
    v18 = 4;
    sub_217C7EEF0();
    sub_217D89BCC();
    (*(v7 + 8))(v9, v6);
    v13 = v19;
    *a2 = v10;
    *(a2 + 8) = v11;
    v14 = v16;
    *(a2 + 12) = v17;
    *(a2 + 16) = v14;
    *(a2 + 17) = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217D60DB0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217D60AD0();
    v7 = a3(a1, &type metadata for MediaEngagementData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for MediaEngagementData(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 18))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 17);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for MediaEngagementData(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *(result + 17) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_217D60EF8()
{
  result = qword_27CBA5690;
  if (!qword_27CBA5690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA5690);
  }

  return result;
}

unint64_t sub_217D60F50()
{
  result = qword_27CBA5698;
  if (!qword_27CBA5698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA5698);
  }

  return result;
}

unint64_t sub_217D60FA8()
{
  result = qword_27CBA56A0;
  if (!qword_27CBA56A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA56A0);
  }

  return result;
}

uint64_t sub_217D60FFC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D6954616964656DLL && a2 == 0xEF646579616C5065;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x657355616964656DLL && a2 == 0xEF6E6F6974634172 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F697469736F70 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x616C50616964656DLL && a2 == 0xEF646F6874654D79 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000217DD1760 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_217D89D4C();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t UserEventHistoryAggregateStoreCountsData.init(tagAggregatesCount:channelTopicAggregatesCount:groupCount:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  *a7 = result;
  *(a7 + 8) = a2 & 1;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4 & 1;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6 & 1;
  return result;
}

uint64_t UserEventHistoryAggregateStoreCountsData.tagAggregatesCount.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t UserEventHistoryAggregateStoreCountsData.channelTopicAggregatesCount.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t UserEventHistoryAggregateStoreCountsData.groupCount.setter(uint64_t result, char a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2 & 1;
  return result;
}

unint64_t sub_217D612B0()
{
  v1 = 0x756F4370756F7267;
  if (*v0 == 1)
  {
    v1 = 0xD00000000000001BLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t sub_217D61318@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217D61A00(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217D61340(uint64_t a1)
{
  v2 = sub_217D6157C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217D6137C(uint64_t a1)
{
  v2 = sub_217D6157C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t UserEventHistoryAggregateStoreCountsData.encode(to:)(void *a1)
{
  sub_217D617E4(0, &qword_2811BC520, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  v8 = *(v1 + 16);
  v15 = *(v1 + 24);
  v12 = *(v1 + 32);
  v13 = v8;
  v11[1] = *(v1 + 40);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D6157C();
  sub_217D89E7C();
  v18 = 0;
  v9 = v14;
  sub_217D89C5C();
  if (!v9)
  {
    v17 = 1;
    sub_217D89C5C();
    v16 = 2;
    sub_217D89C5C();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_217D6157C()
{
  result = qword_2811BD4E8;
  if (!qword_2811BD4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD4E8);
  }

  return result;
}

uint64_t UserEventHistoryAggregateStoreCountsData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_217D617E4(0, &qword_2811BC918, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D6157C();
  sub_217D89E5C();
  if (!v2)
  {
    v24 = 0;
    v10 = sub_217D89B7C();
    v21 = v11 & 1;
    v23 = 1;
    v19 = sub_217D89B7C();
    v20 = v12 & 1;
    v22 = 2;
    v14 = sub_217D89B7C();
    v16 = v15;
    (*(v7 + 8))(v9, v6);
    v17 = v21;
    v18 = v20;
    *a2 = v10;
    *(a2 + 8) = v17;
    *(a2 + 16) = v19;
    *(a2 + 24) = v18;
    *(a2 + 32) = v14;
    *(a2 + 40) = v16 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217D617E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217D6157C();
    v7 = a3(a1, &type metadata for UserEventHistoryAggregateStoreCountsData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217D61880(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 41))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_217D618A0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
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

  *(result + 41) = v3;
  return result;
}

unint64_t sub_217D618FC()
{
  result = qword_27CBA56A8;
  if (!qword_27CBA56A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA56A8);
  }

  return result;
}

unint64_t sub_217D61954()
{
  result = qword_2811BD4D8;
  if (!qword_2811BD4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD4D8);
  }

  return result;
}

unint64_t sub_217D619AC()
{
  result = qword_2811BD4E0;
  if (!qword_2811BD4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD4E0);
  }

  return result;
}

uint64_t sub_217D61A00(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x8000000217DD3240 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001BLL && 0x8000000217DD3260 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x756F4370756F7267 && a2 == 0xEA0000000000746ELL)
  {

    return 2;
  }

  else
  {
    v5 = sub_217D89D4C();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

NewsAnalytics::DisplayModeData_optional __swiftcall DisplayModeData.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217D89B0C();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t DisplayModeData.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x6F46794272756F66;
  v4 = 0x756F467942786973;
  if (v1 != 4)
  {
    v4 = 0x6F77547942656E6FLL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6F775479426F7774;
  if (v1 != 1)
  {
    v5 = 0x756F4679426F7774;
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

unint64_t sub_217D61C64()
{
  result = qword_27CBA56B0;
  if (!qword_27CBA56B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA56B0);
  }

  return result;
}

uint64_t sub_217D61CC0(uint64_t a1)
{
  sub_217D895CC();
}

void sub_217D61DD0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xEA00000000007275;
  v6 = 0x6F46794272756F66;
  v7 = 0x756F467942786973;
  v8 = 0xE900000000000072;
  if (v2 != 4)
  {
    v7 = 0x6F77547942656E6FLL;
    v8 = 0xE800000000000000;
  }

  if (v2 != 3)
  {
    v6 = v7;
    v5 = v8;
  }

  v9 = 0xE800000000000000;
  v10 = 0x6F775479426F7774;
  if (v2 != 1)
  {
    v10 = 0x756F4679426F7774;
    v9 = 0xE900000000000072;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

unint64_t sub_217D61F5C()
{
  result = qword_2811C68D8;
  if (!qword_2811C68D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C68D8);
  }

  return result;
}

uint64_t sub_217D61FB0(unsigned __int8 a1)
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217D620D0(unsigned __int8 a1)
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217D621D8(unsigned __int8 a1)
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217D622F4(unsigned __int8 a1)
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217D62418(unsigned __int8 a1)
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217D62518(unsigned __int8 a1)
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217D62618(unsigned __int8 a1)
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217D62744(unsigned __int8 a1)
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217D62860(unsigned __int8 a1)
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217D62954(unsigned __int8 a1)
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217D62A68(unsigned __int8 a1)
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217D62B7C(unsigned __int8 a1)
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

NewsAnalytics::AdJournalEntryStatus_optional __swiftcall AdJournalEntryStatus.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217D89B0C();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t AdJournalEntryStatus.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x64657461657263;
  v3 = 0x6564726163736964;
  v4 = 0x656C6C69666C7566;
  if (v1 != 4)
  {
    v4 = 0x65746E6573657270;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x64656C696166;
  if (v1 != 1)
  {
    v5 = 0x676E69646E6570;
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

unint64_t sub_217D62DBC()
{
  result = qword_27CBA56B8;
  if (!qword_27CBA56B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA56B8);
  }

  return result;
}

uint64_t sub_217D62E18(uint64_t a1)
{
  sub_217D895CC();
}

void sub_217D62F24(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x64657461657263;
  v5 = 0x6564726163736964;
  v6 = 0x656C6C69666C7566;
  if (v2 != 4)
  {
    v6 = 0x65746E6573657270;
  }

  if (v2 != 3)
  {
    v5 = v6;
  }

  v7 = 0xE600000000000000;
  v8 = 0x64656C696166;
  if (v2 != 1)
  {
    v8 = 0x676E69646E6570;
    v7 = 0xE700000000000000;
  }

  if (*v1)
  {
    v4 = v8;
    v3 = v7;
  }

  if (*v1 <= 2u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v5;
  }

  if (*v1 > 2u)
  {
    v3 = 0xE900000000000064;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_217D630AC()
{
  result = qword_2811C2440;
  if (!qword_2811C2440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C2440);
  }

  return result;
}

uint64_t sub_217D631C8()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_2811C3DA8);
  __swift_project_value_buffer(v0, qword_2811C3DA8);
  return sub_217D8866C();
}

uint64_t ArticleScrollEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t ArticleScrollEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleScrollEvent(0) + 20);
  sub_217A608E0(0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleScrollEvent.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleScrollEvent(0) + 24);
  sub_217D648FC(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleScrollEvent.articleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleScrollEvent(0) + 24);
  sub_217D648FC(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleScrollEvent.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleScrollEvent(0) + 28);
  sub_217D648FC(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleScrollEvent.channelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleScrollEvent(0) + 28);
  sub_217D648FC(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleScrollEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleScrollEvent(0) + 32);
  sub_217D648FC(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleScrollEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleScrollEvent(0) + 32);
  sub_217D648FC(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleScrollEvent.groupData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleScrollEvent(0) + 36);
  sub_217D648FC(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleScrollEvent.groupData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleScrollEvent(0) + 36);
  sub_217D648FC(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleScrollEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleScrollEvent(0) + 40);
  sub_217D648FC(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleScrollEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleScrollEvent(0) + 40);
  sub_217D648FC(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleScrollEvent.scrollStartData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleScrollEvent(0) + 44);
  sub_217D648FC(0, &qword_2811C86D8, sub_217BABA38, sub_217BABA90, &type metadata for ScrollStartData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleScrollEvent.scrollStartData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleScrollEvent(0) + 44);
  sub_217D648FC(0, &qword_2811C86D8, sub_217BABA38, sub_217BABA90, &type metadata for ScrollStartData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleScrollEvent.scrollEndData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleScrollEvent(0) + 48);
  sub_217D648FC(0, &qword_2811C8758, sub_217C553E8, sub_217C55440, &type metadata for ScrollEndData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleScrollEvent.scrollEndData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleScrollEvent(0) + 48);
  sub_217D648FC(0, &qword_2811C8758, sub_217C553E8, sub_217C55440, &type metadata for ScrollEndData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleScrollEvent.articleScienceData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleScrollEvent(0) + 52);
  sub_217D648FC(0, &qword_2811C87D0, sub_217ACF8E0, sub_217ACF934, &type metadata for ScienceData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleScrollEvent.articleScienceData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleScrollEvent(0) + 52);
  sub_217D648FC(0, &qword_2811C87D0, sub_217ACF8E0, sub_217ACF934, &type metadata for ScienceData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleScrollEvent.userChannelContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleScrollEvent(0) + 56);
  sub_217D648FC(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleScrollEvent.userChannelContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleScrollEvent(0) + 56);
  sub_217D648FC(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleScrollEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleScrollEvent(0) + 60);
  sub_217D648FC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleScrollEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleScrollEvent(0) + 60);
  sub_217D648FC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleScrollEvent.issueData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleScrollEvent(0) + 64);
  sub_217D648FC(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleScrollEvent.issueData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleScrollEvent(0) + 64);
  sub_217D648FC(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleScrollEvent.issueViewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleScrollEvent(0) + 68);
  sub_217D648FC(0, &qword_2811C8760, sub_217AD0198, sub_217AD01EC, &type metadata for IssueViewData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArticleScrollEvent.issueViewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleScrollEvent(0) + 68);
  sub_217D648FC(0, &qword_2811C8760, sub_217AD0198, sub_217AD01EC, &type metadata for IssueViewData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleScrollEvent.experimentationData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleScrollEvent(0) + 72);
  sub_217D648FC(0, &qword_2811C8620, sub_217B36858, sub_217B368B0, &type metadata for ExperimentationData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217D648FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
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

uint64_t ArticleScrollEvent.experimentationData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ArticleScrollEvent(0) + 72);
  sub_217D648FC(0, &qword_2811C8620, sub_217B36858, sub_217B368B0, &type metadata for ExperimentationData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ArticleScrollEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for ArticleScrollEvent(0);
  v5 = v4[5];
  sub_217A608E0(0);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217D648FC(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  sub_217D648FC(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  (*(*(v10 - 8) + 104))(a1 + v9, v2, v10);
  v11 = v4[8];
  v12 = *MEMORY[0x277CEACF0];
  sub_217D648FC(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  (*(*(v13 - 8) + 104))(a1 + v11, v12, v13);
  v14 = v4[9];
  sub_217D648FC(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  (*(*(v15 - 8) + 104))(a1 + v14, v12, v15);
  v16 = v4[10];
  sub_217D648FC(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  (*(*(v17 - 8) + 104))(a1 + v16, v2, v17);
  v18 = v4[11];
  sub_217D648FC(0, &qword_2811C86D8, sub_217BABA38, sub_217BABA90, &type metadata for ScrollStartData);
  (*(*(v19 - 8) + 104))(a1 + v18, v2, v19);
  v20 = v4[12];
  sub_217D648FC(0, &qword_2811C8758, sub_217C553E8, sub_217C55440, &type metadata for ScrollEndData);
  (*(*(v21 - 8) + 104))(a1 + v20, v2, v21);
  v22 = v4[13];
  sub_217D648FC(0, &qword_2811C87D0, sub_217ACF8E0, sub_217ACF934, &type metadata for ScienceData);
  (*(*(v23 - 8) + 104))(a1 + v22, v12, v23);
  v24 = v4[14];
  sub_217D648FC(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
  (*(*(v25 - 8) + 104))(a1 + v24, v2, v25);
  v26 = v4[15];
  sub_217D648FC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v27 - 8) + 104))(a1 + v26, v2, v27);
  v28 = v4[16];
  sub_217D648FC(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  (*(*(v29 - 8) + 104))(a1 + v28, v12, v29);
  v30 = v4[17];
  sub_217D648FC(0, &qword_2811C8760, sub_217AD0198, sub_217AD01EC, &type metadata for IssueViewData);
  (*(*(v31 - 8) + 104))(a1 + v30, v12, v31);
  v32 = v4[18];
  sub_217D648FC(0, &qword_2811C8620, sub_217B36858, sub_217B368B0, &type metadata for ExperimentationData);
  v34 = *(*(v33 - 8) + 104);

  return v34(a1 + v32, v12, v33);
}

uint64_t sub_217D651AC@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t ArticleScrollEvent.Model.articleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ArticleScrollEvent.Model(0) + 24);
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

uint64_t ArticleScrollEvent.Model.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ArticleScrollEvent.Model(0) + 28);
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

uint64_t ArticleScrollEvent.Model.feedData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ArticleScrollEvent.Model(0) + 32));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;

  return sub_217AD1A68(v4, v5, v6);
}

uint64_t ArticleScrollEvent.Model.groupData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ArticleScrollEvent.Model(0) + 36));
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

uint64_t ArticleScrollEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ArticleScrollEvent.Model(0) + 40));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

float ArticleScrollEvent.Model.scrollStartData.getter@<S0>(float *a1@<X8>)
{
  result = *(v1 + *(type metadata accessor for ArticleScrollEvent.Model(0) + 44));
  *a1 = result;
  return result;
}

double ArticleScrollEvent.Model.scrollEndData.getter@<D0>(double *a1@<X8>)
{
  result = *(v1 + *(type metadata accessor for ArticleScrollEvent.Model(0) + 48));
  *a1 = result;
  return result;
}

uint64_t ArticleScrollEvent.Model.articleScienceData.getter@<X0>(void *a1@<X8>)
{
  v3 = *(type metadata accessor for ArticleScrollEvent.Model(0) + 52);
  memcpy(__dst, (v1 + v3), 0x111uLL);
  memcpy(a1, (v1 + v3), 0x111uLL);
  return sub_217AE38AC(__dst, &v5, &qword_2811C7CB0, &type metadata for ScienceData);
}

uint64_t ArticleScrollEvent.Model.userChannelContextData.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for ArticleScrollEvent.Model(0);
  v4 = (v1 + *(result + 56));
  v5 = *v4;
  v6 = v4[1];
  LOWORD(v4) = *(v4 + 1);
  *a1 = v5;
  *(a1 + 1) = v6;
  *(a1 + 2) = v4;
  return result;
}

uint64_t ArticleScrollEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ArticleScrollEvent.Model(0) + 60);
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

void ArticleScrollEvent.Model.issueData.getter(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ArticleScrollEvent.Model(0) + 64));
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

uint64_t ArticleScrollEvent.Model.issueViewData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ArticleScrollEvent.Model(0) + 68));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

void ArticleScrollEvent.Model.experimentationData.getter(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ArticleScrollEvent.Model(0) + 72));
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

__n128 ArticleScrollEvent.Model.init(eventData:timedData:articleData:channelData:feedData:groupData:viewData:scrollStartData:scrollEndData:articleScienceData:userChannelContextData:userBundleSubscriptionContextData:issueData:issueViewData:experimentationData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, __int128 *a5@<X4>, _OWORD *a6@<X5>, uint64_t *a7@<X6>, int *a8@<X7>, uint64_t a9@<X8>, uint64_t *a10, const void *a11, char *a12, uint64_t a13, __int128 *a14, uint64_t *a15, __n128 *a16)
{
  v51 = a4[1];
  v52 = *a4;
  v50 = *(a4 + 16);
  v21 = *(a4 + 17);
  v48 = a4[4];
  v49 = a4[3];
  v54 = *a5;
  v53 = *(a5 + 2);
  v56 = a7[1];
  v57 = *a7;
  v55 = *(a7 + 8);
  v22 = *a8;
  v61 = a12[1];
  v62 = *a12;
  v60 = *(a12 + 1);
  v65 = a15[1];
  v66 = *a15;
  v23 = sub_217D8899C();
  v24 = *a10;
  v64 = *a16;
  v63 = a16[1];
  v58 = a14[1];
  v59 = *a14;
  (*(*(v23 - 8) + 32))(a9, a1, v23);
  v25 = type metadata accessor for ArticleScrollEvent.Model(0);
  v26 = v25[5];
  v27 = sub_217D889CC();
  (*(*(v27 - 8) + 32))(a9 + v26, a2, v27);
  v28 = a9 + v25[6];
  v29 = *(a3 + 48);
  *(v28 + 32) = *(a3 + 32);
  *(v28 + 48) = v29;
  v30 = *(a3 + 16);
  *v28 = *a3;
  *(v28 + 16) = v30;
  *(v28 + 127) = *(a3 + 127);
  v31 = *(a3 + 112);
  *(v28 + 96) = *(a3 + 96);
  *(v28 + 112) = v31;
  v32 = *(a3 + 80);
  *(v28 + 64) = *(a3 + 64);
  *(v28 + 80) = v32;
  v33 = a9 + v25[7];
  *v33 = v52;
  *(v33 + 8) = v51;
  *(v33 + 16) = v50;
  *(v33 + 17) = v21;
  *(v33 + 24) = v49;
  *(v33 + 32) = v48;
  v34 = a9 + v25[8];
  *v34 = v54;
  *(v34 + 16) = v53;
  v35 = (a9 + v25[9]);
  v36 = a6[7];
  v35[6] = a6[6];
  v35[7] = v36;
  v35[8] = a6[8];
  v37 = a6[3];
  v35[2] = a6[2];
  v35[3] = v37;
  v38 = a6[5];
  v35[4] = a6[4];
  v35[5] = v38;
  v39 = a6[1];
  *v35 = *a6;
  v35[1] = v39;
  v40 = a9 + v25[10];
  *v40 = v57;
  *(v40 + 8) = v56;
  *(v40 + 16) = v55;
  *(a9 + v25[11]) = v22;
  *(a9 + v25[12]) = v24;
  memcpy((a9 + v25[13]), a11, 0x111uLL);
  v41 = a9 + v25[14];
  *v41 = v62;
  *(v41 + 1) = v61;
  *(v41 + 2) = v60;
  v42 = a9 + v25[15];
  v43 = *(a13 + 16);
  *v42 = *a13;
  *(v42 + 16) = v43;
  *(v42 + 32) = *(a13 + 32);
  *(v42 + 48) = *(a13 + 48);
  v44 = (a9 + v25[16]);
  *v44 = v59;
  v44[1] = v58;
  v45 = (a9 + v25[17]);
  *v45 = v66;
  v45[1] = v65;
  v46 = (a9 + v25[18]);
  result = v64;
  *v46 = v64;
  v46[1] = v63;
  return result;
}

uint64_t sub_217D659C0(char a1)
{
  result = 0x746144746E657665;
  switch(a1)
  {
    case 1:
      result = 0x74614464656D6974;
      break;
    case 2:
      result = 0x44656C6369747261;
      break;
    case 3:
      result = 0x446C656E6E616863;
      break;
    case 4:
      v3 = 1684366694;
      goto LABEL_15;
    case 5:
      result = 0x74614470756F7267;
      break;
    case 6:
      v3 = 2003134838;
LABEL_15:
      result = v3 | 0x6174614400000000;
      break;
    case 7:
      result = 0x74536C6C6F726373;
      break;
    case 8:
      result = 0x6E456C6C6F726373;
      break;
    case 9:
      result = 0xD000000000000012;
      break;
    case 10:
      result = 0xD000000000000016;
      break;
    case 11:
      result = 0xD000000000000021;
      break;
    case 12:
      result = 0x7461446575737369;
      break;
    case 13:
      result = 0x6569566575737369;
      break;
    case 14:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_217D65B90@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217D684B0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217D65BB8(uint64_t a1)
{
  v2 = sub_217D6660C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217D65BF4(uint64_t a1)
{
  v2 = sub_217D6660C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ArticleScrollEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217D6740C(0, &qword_27CBA56C0, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v61 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D6660C();
  sub_217D89E7C();
  v82[0] = 0;
  sub_217D8899C();
  sub_217A60258(&unk_2811C8410, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEB8]);
  sub_217D89CAC();
  if (!v2)
  {
    v10 = type metadata accessor for ArticleScrollEvent.Model(0);
    v127[0] = 1;
    sub_217D889CC();
    sub_217A60258(&qword_2811C83F8, MEMORY[0x277CEAED0], MEMORY[0x277CEAED8]);
    sub_217D89CAC();
    v128 = v10;
    v11 = v3 + *(v10 + 24);
    v12 = *(v11 + 96);
    v13 = *(v11 + 64);
    v124 = *(v11 + 80);
    v125 = v12;
    v14 = *(v11 + 96);
    *v126 = *(v11 + 112);
    v15 = *(v11 + 16);
    v16 = *(v11 + 48);
    v121 = *(v11 + 32);
    v122 = v16;
    v17 = *(v11 + 48);
    v123 = *(v11 + 64);
    v18 = *(v11 + 16);
    v120[0] = *v11;
    v120[1] = v18;
    v117 = v124;
    v118 = v14;
    v119[0] = *(v11 + 112);
    v114 = v121;
    v115 = v17;
    v116 = v13;
    *&v126[15] = *(v11 + 127);
    *(v119 + 15) = *(v11 + 127);
    v112 = v120[0];
    v113 = v15;
    v111 = 2;
    sub_217AD1630(v120, v82);
    sub_217ACF52C();
    sub_217D89CAC();
    v109[5] = v117;
    v109[6] = v118;
    *v110 = v119[0];
    *&v110[15] = *(v119 + 15);
    v109[2] = v114;
    v109[3] = v115;
    v109[4] = v116;
    v109[0] = v112;
    v109[1] = v113;
    sub_217AD2864(v109);
    v19 = v3 + v128[7];
    v20 = *(v19 + 8);
    v21 = *(v19 + 16);
    v22 = *(v19 + 17);
    v23 = *(v19 + 24);
    v24 = *(v19 + 32);
    *v82 = *v19;
    *&v82[8] = v20;
    v82[16] = v21;
    v82[17] = v22;
    *&v82[24] = v23;
    *&v82[32] = v24;
    v81[0] = 3;
    sub_217AD084C();

    sub_217D89CAC();

    v25 = v128;
    v26 = (v3 + v128[8]);
    v27 = v26[1];
    v28 = v26[2];
    v106 = *v26;
    v107 = v27;
    v108 = v28;
    v105 = 4;
    sub_217AD1A68(v106, v27, v28);
    sub_217A5BA2C();
    sub_217D89C3C();
    sub_217AD290C(v106, v107, v108);
    v29 = (v3 + v25[9]);
    v30 = v29[6];
    v31 = v29[4];
    v101 = v29[5];
    v102 = v30;
    v32 = v29[6];
    v33 = v29[8];
    v103 = v29[7];
    v104 = v33;
    v34 = v29[2];
    v35 = *v29;
    v97 = v29[1];
    v98 = v34;
    v36 = v29[2];
    v37 = v29[4];
    v99 = v29[3];
    v100 = v37;
    v38 = *v29;
    v93 = v32;
    v94 = v103;
    v95 = v29[8];
    v96 = v38;
    v89 = v36;
    v90 = v99;
    v91 = v31;
    v92 = v101;
    v87 = v35;
    v88 = v97;
    v86 = 5;
    sub_217AE38AC(&v96, v82, &qword_2811BD178, &type metadata for GroupData);
    sub_217A5D3B4();
    sub_217D89C3C();
    v85[6] = v93;
    v85[7] = v94;
    v85[8] = v95;
    v85[2] = v89;
    v85[3] = v90;
    v85[4] = v91;
    v85[5] = v92;
    v85[0] = v87;
    v85[1] = v88;
    sub_217AE4A44(v85, &qword_2811BD178, &type metadata for GroupData);
    v40 = (v3 + v25[10]);
    v41 = *v40;
    v42 = v40[1];
    LOWORD(v40) = *(v40 + 8);
    *v82 = v41;
    *&v82[8] = v42;
    *&v82[16] = v40;
    v81[0] = 6;
    sub_217A5E790();

    sub_217D89CAC();

    *v82 = *(v3 + v25[11]);
    v81[0] = 7;
    sub_217BABA90();
    sub_217D89CAC();
    v84 = *(v3 + v25[12]);
    v83 = 8;
    sub_217C55440();
    sub_217D89CAC();
    v43 = v25[13];
    memcpy(v82, (v3 + v43), sizeof(v82));
    memcpy(v81, (v3 + v43), sizeof(v81));
    v80[279] = 9;
    sub_217AE38AC(v82, v80, &qword_2811C7CB0, &type metadata for ScienceData);
    sub_217ACF934();
    sub_217D89C3C();
    memcpy(v80, v81, 0x111uLL);
    sub_217AE4A44(v80, &qword_2811C7CB0, &type metadata for ScienceData);
    v44 = (v3 + v25[14]);
    v45 = *v44;
    v46 = v44[1];
    LOWORD(v44) = *(v44 + 1);
    v77 = v45;
    v78 = v46;
    v79 = v44;
    v76 = 10;
    sub_217ACFB8C();
    sub_217D89CAC();
    v47 = (v3 + v128[15]);
    v48 = v47[1];
    v74[0] = *v47;
    v74[1] = v48;
    v50 = *v47;
    v49 = v47[1];
    v74[2] = v47[2];
    v75 = *(v47 + 48);
    v70 = v50;
    v71 = v49;
    v72 = v47[2];
    v73 = *(v47 + 48);
    v69 = 11;
    sub_217ACC004(v74, v67);
    sub_217A55B98();
    sub_217D89CAC();
    v67[0] = v70;
    v67[1] = v71;
    v67[2] = v72;
    v68 = v73;
    sub_217ACC69C(v67);
    v51 = (v3 + v128[16]);
    v52 = v51[1];
    v53 = v51[2];
    v54 = v51[3];
    v63 = *v51;
    v64 = v52;
    v65 = v53;
    v66 = v54;
    v62 = 12;
    sub_217AE39D0(v63, v52, v53, v54);
    sub_217ACFF94();
    sub_217D89C3C();
    sub_217AE4AA0(v63, v64, v65, v66);
    v55 = (v3 + v128[17]);
    v56 = v55[1];
    v63 = *v55;
    v64 = v56;
    v62 = 13;
    sub_217AD01EC();

    sub_217D89C3C();

    v57 = (v3 + v128[18]);
    v58 = v57[1];
    v59 = v57[2];
    v60 = v57[3];
    v63 = *v57;
    v64 = v58;
    v65 = v59;
    v66 = v60;
    v62 = 14;
    sub_217AE39D0(v63, v58, v59, v60);
    sub_217B368B0();
    sub_217D89C3C();
    sub_217AE4AA0(v63, v64, v65, v66);
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_217D6660C()
{
  result = qword_2811C3D90;
  if (!qword_2811C3D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C3D90);
  }

  return result;
}

void ArticleScrollEvent.Model.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v55 = sub_217D889CC();
  v53 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v56 = v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_217D8899C();
  v54 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v57 = v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217D6740C(0, &qword_2811BCA48, MEMORY[0x277D844C8]);
  v58 = *(v6 - 8);
  v59 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = v49 - v7;
  v9 = type metadata accessor for ArticleScrollEvent.Model(0);
  MEMORY[0x28223BE20](v9);
  v11 = v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D6660C();
  v60 = v8;
  v12 = v90;
  sub_217D89E5C();
  if (v12)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v13 = v56;
    v50 = v9;
    v51 = a1;
    v90 = v11;
    LOBYTE(v89[0]) = 0;
    sub_217A60258(&qword_2811C8408, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEC0]);
    v14 = v57;
    sub_217D89BCC();
    v15 = v90;
    (*(v54 + 32))(v90, v14, v4);
    LOBYTE(v89[0]) = 1;
    sub_217A60258(&qword_2811C83F0, MEMORY[0x277CEAED0], MEMORY[0x277CEAEE0]);
    v16 = v55;
    sub_217D89BCC();
    v49[1] = v4;
    v57 = 0;
    v17 = v50;
    (*(v53 + 32))(&v15[v50[5]], v13, v16);
    v80 = 2;
    sub_217ACF4D8();
    sub_217D89BCC();
    v18 = &v15[v17[6]];
    v19 = v86;
    v20 = *v88;
    *(v18 + 6) = v87;
    *(v18 + 7) = v20;
    *(v18 + 127) = *&v88[15];
    v21 = v84;
    *(v18 + 2) = v83;
    *(v18 + 3) = v21;
    *(v18 + 4) = v85;
    *(v18 + 5) = v19;
    v22 = v82;
    *v18 = v81;
    *(v18 + 1) = v22;
    LOBYTE(v71) = 3;
    sub_217AD07F8();
    sub_217D89BCC();
    v23 = *(&v89[0] + 1);
    v24 = v89[1];
    v25 = BYTE1(v89[1]);
    v26 = *(&v89[1] + 1);
    v27 = *&v89[2];
    v28 = &v15[v17[7]];
    *v28 = *&v89[0];
    *(v28 + 1) = v23;
    v28[16] = v24;
    v28[17] = v25;
    *(v28 + 3) = v26;
    *(v28 + 4) = v27;
    LOBYTE(v71) = 4;
    sub_217A5B978();
    sub_217D89B5C();
    v29 = *&v89[1];
    v30 = &v15[v17[8]];
    *v30 = v89[0];
    *(v30 + 2) = v29;
    v70 = 5;
    sub_217A5D308();
    sub_217D89B5C();
    v31 = &v15[v17[9]];
    v32 = v78;
    *(v31 + 6) = v77;
    *(v31 + 7) = v32;
    *(v31 + 8) = v79;
    v33 = v74;
    *(v31 + 2) = v73;
    *(v31 + 3) = v33;
    v34 = v76;
    *(v31 + 4) = v75;
    *(v31 + 5) = v34;
    v35 = v72;
    *v31 = v71;
    *(v31 + 1) = v35;
    LOBYTE(v65) = 6;
    sub_217A5E738();
    sub_217D89BCC();
    v36 = *(&v89[0] + 1);
    v37 = v89[1];
    v38 = &v15[v17[10]];
    *v38 = *&v89[0];
    *(v38 + 1) = v36;
    *(v38 + 8) = v37;
    LOBYTE(v65) = 7;
    sub_217BABA38();
    sub_217D89BCC();
    *&v15[v17[11]] = v89[0];
    LOBYTE(v65) = 8;
    sub_217C553E8();
    sub_217D89BCC();
    *&v90[v17[12]] = *&v89[0];
    v69 = 9;
    sub_217ACF8E0();
    sub_217D89B5C();
    memcpy(&v90[v50[13]], v89, 0x111uLL);
    LOBYTE(v62) = 10;
    sub_217ACFB38();
    sub_217D89BCC();
    v39 = BYTE1(v65);
    v40 = WORD1(v65);
    v41 = &v90[v50[14]];
    *v41 = v65;
    v41[1] = v39;
    *(v41 + 1) = v40;
    v64 = 11;
    sub_217A54D08();
    sub_217D89BCC();
    v42 = &v90[v50[15]];
    v43 = v66;
    *v42 = v65;
    *(v42 + 1) = v43;
    *(v42 + 2) = v67;
    v42[48] = v68;
    v61 = 12;
    sub_217ACFF40();
    sub_217D89B5C();
    v44 = &v90[v50[16]];
    v45 = v63;
    *v44 = v62;
    *(v44 + 1) = v45;
    v61 = 13;
    sub_217AD0198();
    sub_217D89B5C();
    *&v90[v50[17]] = v62;
    v61 = 14;
    sub_217B36858();
    sub_217D89B5C();
    (*(v58 + 8))(v60, v59);
    v46 = v90;
    v47 = &v90[v50[18]];
    v48 = v63;
    *v47 = v62;
    *(v47 + 1) = v48;
    sub_217D67470(v46, v52);
    __swift_destroy_boxed_opaque_existential_1(v51);
    sub_217D674D4(v46);
  }
}

void sub_217D6740C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217D6660C();
    v7 = a3(a1, &type metadata for ArticleScrollEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217D67470(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArticleScrollEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217D674D4(uint64_t a1)
{
  v2 = type metadata accessor for ArticleScrollEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217D67608@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217A608E0(0);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_217D648FC(0, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  sub_217D648FC(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  (*(*(v11 - 8) + 104))(a2 + v10, v4, v11);
  v12 = a1[8];
  v13 = *MEMORY[0x277CEACF0];
  sub_217D648FC(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  (*(*(v14 - 8) + 104))(a2 + v12, v13, v14);
  v15 = a1[9];
  sub_217D648FC(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  (*(*(v16 - 8) + 104))(a2 + v15, v13, v16);
  v17 = a1[10];
  sub_217D648FC(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  (*(*(v18 - 8) + 104))(a2 + v17, v4, v18);
  v19 = a1[11];
  sub_217D648FC(0, &qword_2811C86D8, sub_217BABA38, sub_217BABA90, &type metadata for ScrollStartData);
  (*(*(v20 - 8) + 104))(a2 + v19, v4, v20);
  v21 = a1[12];
  sub_217D648FC(0, &qword_2811C8758, sub_217C553E8, sub_217C55440, &type metadata for ScrollEndData);
  (*(*(v22 - 8) + 104))(a2 + v21, v4, v22);
  v23 = a1[13];
  sub_217D648FC(0, &qword_2811C87D0, sub_217ACF8E0, sub_217ACF934, &type metadata for ScienceData);
  (*(*(v24 - 8) + 104))(a2 + v23, v13, v24);
  v25 = a1[14];
  sub_217D648FC(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
  (*(*(v26 - 8) + 104))(a2 + v25, v4, v26);
  v27 = a1[15];
  sub_217D648FC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v28 - 8) + 104))(a2 + v27, v4, v28);
  v29 = a1[16];
  sub_217D648FC(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  (*(*(v30 - 8) + 104))(a2 + v29, v13, v30);
  v31 = a1[17];
  sub_217D648FC(0, &qword_2811C8760, sub_217AD0198, sub_217AD01EC, &type metadata for IssueViewData);
  (*(*(v32 - 8) + 104))(a2 + v31, v13, v32);
  v33 = a1[18];
  sub_217D648FC(0, &qword_2811C8620, sub_217B36858, sub_217B368B0, &type metadata for ExperimentationData);
  v35 = *(*(v34 - 8) + 104);

  return v35(a2 + v33, v13, v34);
}

void sub_217D67D1C(uint64_t a1)
{
  sub_217A6018C(319);
  if (v1 <= 0x3F)
  {
    sub_217A608E0(319);
    if (v2 <= 0x3F)
    {
      sub_217D648FC(319, &qword_2811C87F0, sub_217ACF4D8, sub_217ACF52C, &type metadata for ArticleData);
      if (v3 <= 0x3F)
      {
        sub_217D648FC(319, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
        if (v4 <= 0x3F)
        {
          sub_217D648FC(319, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
          if (v5 <= 0x3F)
          {
            sub_217D648FC(319, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
            if (v6 <= 0x3F)
            {
              sub_217D648FC(319, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
              if (v7 <= 0x3F)
              {
                sub_217D648FC(319, &qword_2811C86D8, sub_217BABA38, sub_217BABA90, &type metadata for ScrollStartData);
                if (v8 <= 0x3F)
                {
                  sub_217D648FC(319, &qword_2811C8758, sub_217C553E8, sub_217C55440, &type metadata for ScrollEndData);
                  if (v9 <= 0x3F)
                  {
                    sub_217D648FC(319, &qword_2811C87D0, sub_217ACF8E0, sub_217ACF934, &type metadata for ScienceData);
                    if (v10 <= 0x3F)
                    {
                      sub_217D648FC(319, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
                      if (v11 <= 0x3F)
                      {
                        sub_217D648FC(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
                        if (v12 <= 0x3F)
                        {
                          sub_217D648FC(319, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
                          if (v13 <= 0x3F)
                          {
                            sub_217D648FC(319, &qword_2811C8760, sub_217AD0198, sub_217AD01EC, &type metadata for IssueViewData);
                            if (v14 <= 0x3F)
                            {
                              sub_217D648FC(319, &qword_2811C8620, sub_217B36858, sub_217B368B0, &type metadata for ExperimentationData);
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

void sub_217D681D8(uint64_t a1)
{
  sub_217D8899C();
  if (v1 <= 0x3F)
  {
    sub_217D889CC();
    if (v2 <= 0x3F)
    {
      sub_217A5E974(319, &qword_2811BD308, &type metadata for FeedData);
      if (v3 <= 0x3F)
      {
        sub_217A5E974(319, &qword_2811BD178, &type metadata for GroupData);
        if (v4 <= 0x3F)
        {
          sub_217A5E974(319, &qword_2811C7CB0, &type metadata for ScienceData);
          if (v5 <= 0x3F)
          {
            sub_217A5E974(319, &qword_2811BD110, &type metadata for IssueData);
            if (v6 <= 0x3F)
            {
              sub_217A5E974(319, &qword_2811C71A8, &type metadata for IssueViewData);
              if (v7 <= 0x3F)
              {
                sub_217A5E974(319, &qword_2811C2A68, &type metadata for ExperimentationData);
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

unint64_t sub_217D683AC()
{
  result = qword_27CBA56C8;
  if (!qword_27CBA56C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA56C8);
  }

  return result;
}

unint64_t sub_217D68404()
{
  result = qword_2811C3D80;
  if (!qword_2811C3D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C3D80);
  }

  return result;
}

unint64_t sub_217D6845C()
{
  result = qword_2811C3D88;
  if (!qword_2811C3D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C3D88);
  }

  return result;
}

uint64_t sub_217D684B0(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0x44656C6369747261 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x446C656E6E616863 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6174614464656566 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x74614470756F7267 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6174614477656976 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x74536C6C6F726373 && a2 == 0xEF61746144747261 || (sub_217D89D4C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6E456C6C6F726373 && a2 == 0xED00006174614464 || (sub_217D89D4C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000217DCCCA0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000217DCCCC0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x7461446575737369 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x6569566575737369 && a2 == 0xED00006174614477 || (sub_217D89D4C() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000217DCE340 == a2)
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

NewsAnalytics::SubscriptionAdLocation_optional __swiftcall SubscriptionAdLocation.init(rawValue:)(Swift::String rawValue)
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

uint64_t SubscriptionAdLocation.rawValue.getter()
{
  v1 = 0x656C6369747261;
  if (*v0 != 1)
  {
    v1 = 0x6E776F6E6B6E75;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1684366694;
  }
}

uint64_t sub_217D68A30(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x656C6369747261;
  if (v2 != 1)
  {
    v3 = 0x6E776F6E6B6E75;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 1684366694;
  }

  if (v2)
  {
    v5 = 0xE700000000000000;
  }

  else
  {
    v5 = 0xE400000000000000;
  }

  v6 = 0x656C6369747261;
  if (*a2 != 1)
  {
    v6 = 0x6E776F6E6B6E75;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 1684366694;
  }

  if (*a2)
  {
    v8 = 0xE700000000000000;
  }

  else
  {
    v8 = 0xE400000000000000;
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

unint64_t sub_217D68B30()
{
  result = qword_27CBA56D0;
  if (!qword_27CBA56D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA56D0);
  }

  return result;
}

uint64_t sub_217D68B84()
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217D68C20(uint64_t a1)
{
  sub_217D895CC();
}

uint64_t sub_217D68CA8(uint64_t a1)
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

void sub_217D68D4C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0x656C6369747261;
  if (v2 != 1)
  {
    v4 = 0x6E776F6E6B6E75;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 1684366694;
  }

  if (!v5)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

unint64_t sub_217D68E64()
{
  result = qword_27CBA56D8;
  if (!qword_27CBA56D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA56D8);
  }

  return result;
}

uint64_t sub_217D68F80()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA5710);
  __swift_project_value_buffer(v0, qword_27CBA5710);
  return sub_217D8866C();
}

uint64_t DownloadIssueEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t DownloadIssueEvent.issueData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DownloadIssueEvent(0) + 20);
  sub_217D699F4(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t DownloadIssueEvent.issueData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for DownloadIssueEvent(0) + 20);
  sub_217D699F4(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t DownloadIssueEvent.downloadLocationData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DownloadIssueEvent(0) + 24);
  sub_217D699F4(0, &qword_2811C85F0, sub_217C68C64, sub_217C68CBC, &type metadata for DownloadLocationData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t DownloadIssueEvent.downloadLocationData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for DownloadIssueEvent(0) + 24);
  sub_217D699F4(0, &qword_2811C85F0, sub_217C68C64, sub_217C68CBC, &type metadata for DownloadLocationData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t DownloadIssueEvent.downloadStateData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DownloadIssueEvent(0) + 28);
  sub_217D699F4(0, &qword_2811C8688, sub_217BCE868, sub_217BCE8C0, &type metadata for DownloadStateData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t DownloadIssueEvent.downloadStateData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for DownloadIssueEvent(0) + 28);
  sub_217D699F4(0, &qword_2811C8688, sub_217BCE868, sub_217BCE8C0, &type metadata for DownloadStateData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t DownloadIssueEvent.downloadData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DownloadIssueEvent(0) + 32);
  sub_217D699F4(0, &qword_2811C87A0, sub_217B1D214, sub_217B1D26C, &type metadata for DownloadData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t DownloadIssueEvent.downloadData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for DownloadIssueEvent(0) + 32);
  sub_217D699F4(0, &qword_2811C87A0, sub_217B1D214, sub_217B1D26C, &type metadata for DownloadData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t DownloadIssueEvent.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DownloadIssueEvent(0) + 36);
  sub_217D699F4(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t DownloadIssueEvent.channelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for DownloadIssueEvent(0) + 36);
  sub_217D699F4(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t DownloadIssueEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DownloadIssueEvent(0) + 40);
  sub_217D699F4(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217D699F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
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

uint64_t DownloadIssueEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for DownloadIssueEvent(0) + 40);
  sub_217D699F4(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t DownloadIssueEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for DownloadIssueEvent(0);
  v5 = v4[5];
  sub_217D699F4(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217D699F4(0, &qword_2811C85F0, sub_217C68C64, sub_217C68CBC, &type metadata for DownloadLocationData);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  sub_217D699F4(0, &qword_2811C8688, sub_217BCE868, sub_217BCE8C0, &type metadata for DownloadStateData);
  (*(*(v10 - 8) + 104))(a1 + v9, v2, v10);
  v11 = v4[8];
  sub_217D699F4(0, &qword_2811C87A0, sub_217B1D214, sub_217B1D26C, &type metadata for DownloadData);
  (*(*(v12 - 8) + 104))(a1 + v11, v2, v12);
  v13 = v4[9];
  sub_217D699F4(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  (*(*(v14 - 8) + 104))(a1 + v13, v2, v14);
  v15 = v4[10];
  sub_217D699F4(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v17 = *(*(v16 - 8) + 104);

  return v17(a1 + v15, v2, v16);
}

uint64_t DownloadIssueEvent.Model.issueData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for DownloadIssueEvent.Model(0) + 20);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  v6 = *(v3 + 17);
  v7 = *(v3 + 24);
  *a1 = *v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 17) = v6;
  *(a1 + 24) = v7;
}

uint64_t DownloadIssueEvent.Model.downloadLocationData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for DownloadIssueEvent.Model(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t DownloadIssueEvent.Model.downloadStateData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for DownloadIssueEvent.Model(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t DownloadIssueEvent.Model.downloadData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for DownloadIssueEvent.Model(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t DownloadIssueEvent.Model.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for DownloadIssueEvent.Model(0) + 36);
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

uint64_t DownloadIssueEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for DownloadIssueEvent.Model(0) + 40));
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

__n128 DownloadIssueEvent.Model.init(eventData:issueData:downloadLocationData:downloadStateData:downloadData:channelData:userBundleSubscriptionContextData:)@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, char *a3@<X2>, char *a4@<X3>, char *a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v11 = *a2;
  v12 = a2[1];
  v13 = *(a2 + 16);
  v14 = *(a2 + 17);
  v15 = a2[3];
  v16 = *a3;
  v17 = *a4;
  v25 = *a5;
  v30 = a6[1];
  v31 = *a6;
  v28 = *(a6 + 17);
  v29 = *(a6 + 16);
  v26 = a6[4];
  v27 = a6[3];
  v18 = sub_217D8899C();
  (*(*(v18 - 8) + 32))(a8, a1, v18);
  v19 = type metadata accessor for DownloadIssueEvent.Model(0);
  v20 = a8 + v19[5];
  *v20 = v11;
  *(v20 + 8) = v12;
  *(v20 + 16) = v13;
  *(v20 + 17) = v14;
  *(v20 + 24) = v15;
  *(a8 + v19[6]) = v16;
  *(a8 + v19[7]) = v17;
  *(a8 + v19[8]) = v25;
  v21 = a8 + v19[9];
  *v21 = v31;
  *(v21 + 8) = v30;
  *(v21 + 16) = v29;
  *(v21 + 17) = v28;
  *(v21 + 24) = v27;
  *(v21 + 32) = v26;
  v22 = a8 + v19[10];
  v23 = *(a7 + 16);
  *v22 = *a7;
  *(v22 + 16) = v23;
  result = *(a7 + 32);
  *(v22 + 32) = result;
  *(v22 + 48) = *(a7 + 48);
  return result;
}

unint64_t sub_217D6A218()
{
  v1 = *v0;
  v2 = 0x746144746E657665;
  v3 = 0x446C656E6E616863;
  if (v1 != 5)
  {
    v3 = 0xD000000000000021;
  }

  v4 = 0x64616F6C6E776F64;
  if (v1 == 3)
  {
    v4 = 0xD000000000000011;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000014;
  if (v1 == 1)
  {
    v5 = 0x7461446575737369;
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

uint64_t sub_217D6A310@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217D6B7A4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217D6A338(uint64_t a1)
{
  v2 = sub_217D6A7F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217D6A374(uint64_t a1)
{
  v2 = sub_217D6A7F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DownloadIssueEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217D6ADF4(0, &qword_27CBA5728, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = v27 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D6A7F4();
  sub_217D89E7C();
  LOBYTE(v33) = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410, MEMORY[0x277CEAEB8]);
  sub_217D89CAC();
  if (!v2)
  {
    v10 = type metadata accessor for DownloadIssueEvent.Model(0);
    v11 = v3 + v10[5];
    v12 = *(v11 + 8);
    v13 = *(v11 + 16);
    v14 = *(v11 + 17);
    v15 = *(v11 + 24);
    *&v33 = *v11;
    *(&v33 + 1) = v12;
    LOBYTE(v34) = v13;
    BYTE1(v34) = v14;
    *(&v34 + 1) = v15;
    LOBYTE(v29) = 1;
    sub_217ACFF94();

    sub_217D89CAC();

    LOBYTE(v33) = *(v3 + v10[6]);
    LOBYTE(v29) = 2;
    sub_217C68CBC();
    sub_217D89CAC();
    LOBYTE(v33) = *(v3 + v10[7]);
    LOBYTE(v29) = 3;
    sub_217BCE8C0();
    sub_217D89CAC();
    LOBYTE(v33) = *(v3 + v10[8]);
    LOBYTE(v29) = 4;
    sub_217B1D26C();
    sub_217D89CAC();
    v17 = (v3 + v10[9]);
    v18 = v17[1];
    v19 = *(v17 + 16);
    v20 = *(v17 + 17);
    v21 = v17[3];
    v22 = v17[4];
    v37 = *v17;
    v38 = v18;
    v39 = v19;
    v40 = v20;
    v41 = v21;
    v42 = v22;
    v44 = 5;
    sub_217AD084C();

    sub_217D89CAC();

    v23 = (v3 + v10[10]);
    v24 = v23[1];
    v33 = *v23;
    v34 = v24;
    v26 = *v23;
    v25 = v23[1];
    v35 = v23[2];
    v36 = *(v23 + 48);
    v29 = v26;
    v30 = v25;
    v31 = v23[2];
    v32 = *(v23 + 48);
    v43 = 6;
    sub_217ACC004(&v33, v27);
    sub_217A55B98();
    sub_217D89CAC();
    v27[0] = v29;
    v27[1] = v30;
    v27[2] = v31;
    v28 = v32;
    sub_217ACC69C(v27);
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_217D6A7F4()
{
  result = qword_27CBA5730;
  if (!qword_27CBA5730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA5730);
  }

  return result;
}

uint64_t DownloadIssueEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v4 = sub_217D8899C();
  v32 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v33 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217D6ADF4(0, &qword_27CBA5738, MEMORY[0x277D844C8]);
  v34 = *(v6 - 8);
  v35 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v30 - v7;
  v9 = type metadata accessor for DownloadIssueEvent.Model(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D6A7F4();
  v36 = v8;
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v32;
  LOBYTE(v37) = 0;
  sub_217A602A0(&qword_2811C8408, MEMORY[0x277CEAEC0]);
  v13 = v33;
  sub_217D89BCC();
  (*(v12 + 32))(v11, v13, v4);
  v41 = 1;
  sub_217ACFF40();
  sub_217D89BCC();
  v14 = *(&v37 + 1);
  v15 = v38;
  v16 = BYTE1(v38);
  v17 = *(&v38 + 1);
  v18 = v9;
  v19 = &v11[*(v9 + 20)];
  *v19 = v37;
  *(v19 + 1) = v14;
  v19[16] = v15;
  v19[17] = v16;
  *(v19 + 3) = v17;
  v41 = 2;
  sub_217C68C64();
  sub_217D89BCC();
  v11[*(v9 + 24)] = v37;
  v41 = 3;
  sub_217BCE868();
  sub_217D89BCC();
  v20 = v34;
  v11[v18[7]] = v37;
  v41 = 4;
  sub_217B1D214();
  sub_217D89BCC();
  v11[v18[8]] = v37;
  v41 = 5;
  sub_217AD07F8();
  sub_217D89BCC();
  v21 = *(&v37 + 1);
  v22 = v38;
  v23 = BYTE1(v38);
  v24 = *(&v38 + 1);
  v25 = v39;
  v26 = &v11[v18[9]];
  *v26 = v37;
  *(v26 + 1) = v21;
  v26[16] = v22;
  v26[17] = v23;
  *(v26 + 3) = v24;
  *(v26 + 4) = v25;
  v41 = 6;
  sub_217A54D08();
  sub_217D89BCC();
  (*(v20 + 8))(v36, v35);
  v27 = &v11[v18[10]];
  v28 = v38;
  *v27 = v37;
  *(v27 + 1) = v28;
  *(v27 + 2) = v39;
  v27[48] = v40;
  sub_217D6AE58(v11, v31);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_217D6AEBC(v11);
}

void sub_217D6ADF4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217D6A7F4();
    v7 = a3(a1, &type metadata for DownloadIssueEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217D6AE58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DownloadIssueEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217D6AEBC(uint64_t a1)
{
  v2 = type metadata accessor for DownloadIssueEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217D6AFF0@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217D699F4(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_217D699F4(0, &qword_2811C85F0, sub_217C68C64, sub_217C68CBC, &type metadata for DownloadLocationData);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  sub_217D699F4(0, &qword_2811C8688, sub_217BCE868, sub_217BCE8C0, &type metadata for DownloadStateData);
  (*(*(v11 - 8) + 104))(a2 + v10, v4, v11);
  v12 = a1[8];
  sub_217D699F4(0, &qword_2811C87A0, sub_217B1D214, sub_217B1D26C, &type metadata for DownloadData);
  (*(*(v13 - 8) + 104))(a2 + v12, v4, v13);
  v14 = a1[9];
  sub_217D699F4(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  (*(*(v15 - 8) + 104))(a2 + v14, v4, v15);
  v16 = a1[10];
  sub_217D699F4(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v18 = *(*(v17 - 8) + 104);

  return v18(a2 + v16, v4, v17);
}

void sub_217D6B368(uint64_t a1)
{
  sub_217A6018C(319);
  if (v1 <= 0x3F)
  {
    sub_217D699F4(319, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
    if (v2 <= 0x3F)
    {
      sub_217D699F4(319, &qword_2811C85F0, sub_217C68C64, sub_217C68CBC, &type metadata for DownloadLocationData);
      if (v3 <= 0x3F)
      {
        sub_217D699F4(319, &qword_2811C8688, sub_217BCE868, sub_217BCE8C0, &type metadata for DownloadStateData);
        if (v4 <= 0x3F)
        {
          sub_217D699F4(319, &qword_2811C87A0, sub_217B1D214, sub_217B1D26C, &type metadata for DownloadData);
          if (v5 <= 0x3F)
          {
            sub_217D699F4(319, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
            if (v6 <= 0x3F)
            {
              sub_217D699F4(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
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

uint64_t sub_217D6B5DC(uint64_t a1)
{
  result = sub_217D8899C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_217D6B6A0()
{
  result = qword_27CBA5740;
  if (!qword_27CBA5740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA5740);
  }

  return result;
}

unint64_t sub_217D6B6F8()
{
  result = qword_27CBA5748;
  if (!qword_27CBA5748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA5748);
  }

  return result;
}

unint64_t sub_217D6B750()
{
  result = qword_27CBA5750;
  if (!qword_27CBA5750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA5750);
  }

  return result;
}

uint64_t sub_217D6B7A4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7461446575737369 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000217DD3280 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000217DD32A0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x64616F6C6E776F64 && a2 == 0xEC00000061746144 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x446C656E6E616863 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_217D89D4C();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_217D6BA50(uint64_t a1)
{
  v2 = sub_217D6BC24();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217D6BA8C(uint64_t a1)
{
  v2 = sub_217D6BC24();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AdCreativeData.encode(to:)(void *a1)
{
  sub_217D6BE64(0, &qword_2811BC7B0, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D6BC24();
  sub_217D89E7C();
  v11 = v8;
  sub_217D6BC78();
  sub_217D89CAC();
  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_217D6BC24()
{
  result = qword_2811C7168;
  if (!qword_2811C7168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7168);
  }

  return result;
}

unint64_t sub_217D6BC78()
{
  result = qword_2811C7140;
  if (!qword_2811C7140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7140);
  }

  return result;
}

uint64_t AdCreativeData.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_217D6BE64(0, &qword_27CBA5758, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D6BC24();
  sub_217D89E5C();
  if (!v2)
  {
    sub_217D6BEC8();
    sub_217D89BCC();
    (*(v7 + 8))(v9, v6);
    *a2 = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217D6BE64(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217D6BC24();
    v7 = a3(a1, &type metadata for AdCreativeData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217D6BEC8()
{
  result = qword_27CBA5760;
  if (!qword_27CBA5760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA5760);
  }

  return result;
}

unint64_t sub_217D6BF78()
{
  result = qword_27CBA5768;
  if (!qword_27CBA5768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA5768);
  }

  return result;
}

unint64_t sub_217D6BFD0()
{
  result = qword_2811C7158;
  if (!qword_2811C7158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7158);
  }

  return result;
}

unint64_t sub_217D6C028()
{
  result = qword_2811C7160;
  if (!qword_2811C7160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7160);
  }

  return result;
}

uint64_t sub_217D6C144()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA57A0);
  __swift_project_value_buffer(v0, qword_27CBA57A0);
  return sub_217D8866C();
}

uint64_t SubscriptionOffersExposureEvent.adReferralData.getter@<X0>(uint64_t a1@<X8>)
{
  sub_217D6D008(0, &qword_2811C8740, sub_217BEB014, sub_217BEB06C, &type metadata for AdReferralData);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t SubscriptionOffersExposureEvent.adReferralData.setter(uint64_t a1)
{
  sub_217D6D008(0, &qword_2811C8740, sub_217BEB014, sub_217BEB06C, &type metadata for AdReferralData);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t SubscriptionOffersExposureEvent.eventData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscriptionOffersExposureEvent(0) + 20);
  sub_217A6018C(0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscriptionOffersExposureEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscriptionOffersExposureEvent(0) + 24);
  sub_217A608E0(0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscriptionOffersExposureEvent.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscriptionOffersExposureEvent(0) + 28);
  sub_217D6D008(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscriptionOffersExposureEvent.channelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscriptionOffersExposureEvent(0) + 28);
  sub_217D6D008(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscriptionOffersExposureEvent.campaignData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscriptionOffersExposureEvent(0) + 32);
  sub_217D6D008(0, &qword_2811C87A8, sub_217A66A84, sub_217A66ADC, &type metadata for CampaignData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscriptionOffersExposureEvent.campaignData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscriptionOffersExposureEvent(0) + 32);
  sub_217D6D008(0, &qword_2811C87A8, sub_217A66A84, sub_217A66ADC, &type metadata for CampaignData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscriptionOffersExposureEvent.purchaseOffersData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscriptionOffersExposureEvent(0) + 36);
  sub_217D6D008(0, &qword_2811C8640, sub_217BDDE2C, sub_217BDDE84, &type metadata for PurchaseOffersData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscriptionOffersExposureEvent.purchaseOffersData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscriptionOffersExposureEvent(0) + 36);
  sub_217D6D008(0, &qword_2811C8640, sub_217BDDE2C, sub_217BDDE84, &type metadata for PurchaseOffersData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscriptionOffersExposureEvent.purchaseSessionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscriptionOffersExposureEvent(0) + 40);
  sub_217D6D008(0, &qword_2811C85F8, sub_217B1E44C, sub_217B1E4A0, &type metadata for PurchaseSessionData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscriptionOffersExposureEvent.purchaseSessionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscriptionOffersExposureEvent(0) + 40);
  sub_217D6D008(0, &qword_2811C85F8, sub_217B1E44C, sub_217B1E4A0, &type metadata for PurchaseSessionData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscriptionOffersExposureEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscriptionOffersExposureEvent(0) + 44);
  sub_217D6D008(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscriptionOffersExposureEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscriptionOffersExposureEvent(0) + 44);
  sub_217D6D008(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscriptionOffersExposureEvent.subscribeButtonContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscriptionOffersExposureEvent(0) + 48);
  sub_217D6D008(0, &qword_2811C8558, sub_217B1EA04, sub_217B1EA58, &type metadata for SubscribeButtonContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SubscriptionOffersExposureEvent.subscribeButtonContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscriptionOffersExposureEvent(0) + 48);
  sub_217D6D008(0, &qword_2811C8558, sub_217B1EA04, sub_217B1EA58, &type metadata for SubscribeButtonContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscriptionOffersExposureEvent.subscriptionAdLocationData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SubscriptionOffersExposureEvent(0) + 52);
  sub_217D6D008(0, &qword_2811C8550, sub_217C9C618, sub_217C9C670, &type metadata for SubscriptionAdLocationData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217D6D008(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
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

uint64_t SubscriptionOffersExposureEvent.subscriptionAdLocationData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SubscriptionOffersExposureEvent(0) + 52);
  sub_217D6D008(0, &qword_2811C8550, sub_217C9C618, sub_217C9C670, &type metadata for SubscriptionAdLocationData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SubscriptionOffersExposureEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF0];
  sub_217D6D008(0, &qword_2811C8740, sub_217BEB014, sub_217BEB06C, &type metadata for AdReferralData);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for SubscriptionOffersExposureEvent(0);
  v5 = v4[5];
  v6 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v7 - 8) + 104))(a1 + v5, v6, v7);
  v8 = v4[6];
  sub_217A608E0(0);
  (*(*(v9 - 8) + 104))(a1 + v8, v6, v9);
  v10 = v4[7];
  sub_217D6D008(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  (*(*(v11 - 8) + 104))(a1 + v10, v2, v11);
  v12 = v4[8];
  sub_217D6D008(0, &qword_2811C87A8, sub_217A66A84, sub_217A66ADC, &type metadata for CampaignData);
  (*(*(v13 - 8) + 104))(a1 + v12, v2, v13);
  v14 = v4[9];
  sub_217D6D008(0, &qword_2811C8640, sub_217BDDE2C, sub_217BDDE84, &type metadata for PurchaseOffersData);
  (*(*(v15 - 8) + 104))(a1 + v14, v2, v15);
  v16 = v4[10];
  sub_217D6D008(0, &qword_2811C85F8, sub_217B1E44C, sub_217B1E4A0, &type metadata for PurchaseSessionData);
  (*(*(v17 - 8) + 104))(a1 + v16, v6, v17);
  v18 = v4[11];
  sub_217D6D008(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v19 - 8) + 104))(a1 + v18, v2, v19);
  v20 = v4[12];
  sub_217D6D008(0, &qword_2811C8558, sub_217B1EA04, sub_217B1EA58, &type metadata for SubscribeButtonContextData);
  (*(*(v21 - 8) + 104))(a1 + v20, v2, v21);
  v22 = v4[13];
  sub_217D6D008(0, &qword_2811C8550, sub_217C9C618, sub_217C9C670, &type metadata for SubscriptionAdLocationData);
  v24 = *(*(v23 - 8) + 104);

  return v24(a1 + v22, v2, v23);
}

uint64_t SubscriptionOffersExposureEvent.Model.adReferralData.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_217D6D654@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t sub_217D6D72C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 24);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

void SubscriptionOffersExposureEvent.Model.channelData.getter(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SubscriptionOffersExposureEvent.Model(0) + 28));
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

  sub_217AD86BC(v4, v5, v6, v7, v8);
}

void SubscriptionOffersExposureEvent.Model.campaignData.getter(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SubscriptionOffersExposureEvent.Model(0) + 32));
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

uint64_t SubscriptionOffersExposureEvent.Model.purchaseOffersData.getter@<X0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for SubscriptionOffersExposureEvent.Model(0) + 36));
}

uint64_t SubscriptionOffersExposureEvent.Model.purchaseSessionData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for SubscriptionOffersExposureEvent.Model(0) + 40));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

void SubscriptionOffersExposureEvent.Model.userBundleSubscriptionContextData.getter(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SubscriptionOffersExposureEvent.Model(0) + 44);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  v9 = *(v3 + 40);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 40) = v9;
  *(a1 + 48) = *(v3 + 48);

  sub_217C50AA4(v4, v5, v6, v7, v8, v9);
}

uint64_t SubscriptionOffersExposureEvent.Model.subscribeButtonContextData.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for SubscriptionOffersExposureEvent.Model(0);
  *a1 = *(v1 + *(result + 48));
  return result;
}

uint64_t SubscriptionOffersExposureEvent.Model.subscriptionAdLocationData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for SubscriptionOffersExposureEvent.Model(0);
  *a1 = *(v1 + *(result + 52));
  return result;
}

__n128 SubscriptionOffersExposureEvent.Model.init(adReferralData:eventData:timedData:channelData:campaignData:purchaseOffersData:purchaseSessionData:userBundleSubscriptionContextData:subscribeButtonContextData:subscriptionAdLocationData:)@<Q0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, __int16 *a10, char *a11)
{
  v17 = *(a4 + 4);
  v18 = *(a5 + 5);
  v35 = *(a5 + 4);
  v36 = *a6;
  v37 = a7[1];
  v38 = *a7;
  v40 = *(a8 + 40);
  v41 = *(a8 + 32);
  v39 = *(a8 + 48);
  v42 = *a10;
  v43 = *a11;
  *a9 = *a1;
  v19 = type metadata accessor for SubscriptionOffersExposureEvent.Model(0);
  v20 = v19[5];
  v21 = sub_217D8899C();
  v33 = *(a8 + 16);
  v34 = *a8;
  v31 = a5[1];
  v32 = *a5;
  v29 = a4[1];
  v30 = *a4;
  (*(*(v21 - 8) + 32))(&a9[v20], a2, v21);
  v22 = v19[6];
  v23 = sub_217D889CC();
  (*(*(v23 - 8) + 32))(&a9[v22], a3, v23);
  v24 = &a9[v19[7]];
  *v24 = v30;
  *(v24 + 1) = v29;
  *(v24 + 4) = v17;
  v25 = &a9[v19[8]];
  *v25 = v32;
  *(v25 + 1) = v31;
  *(v25 + 4) = v35;
  *(v25 + 5) = v18;
  *&a9[v19[9]] = v36;
  v26 = &a9[v19[10]];
  *v26 = v38;
  *(v26 + 1) = v37;
  v27 = &a9[v19[11]];
  result = v34;
  *v27 = v34;
  *(v27 + 1) = v33;
  *(v27 + 4) = v41;
  *(v27 + 5) = v40;
  v27[48] = v39;
  *&a9[v19[12]] = v42;
  a9[v19[13]] = v43;
  return result;
}

unint64_t sub_217D6DB74(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0xD000000000000021;
    if (a1 != 7)
    {
      v5 = 0xD00000000000001ALL;
    }

    v6 = 0xD000000000000012;
    if (a1 != 5)
    {
      v6 = 0xD000000000000013;
    }

    if (a1 <= 6u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x7272656665526461;
    v2 = 0x74614464656D6974;
    v3 = 0x446C656E6E616863;
    if (a1 != 3)
    {
      v3 = 0x6E676961706D6163;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x746144746E657665;
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

uint64_t sub_217D6DCEC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217D6F8C4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217D6DD14(uint64_t a1)
{
  v2 = sub_217D6E2D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217D6DD50(uint64_t a1)
{
  v2 = sub_217D6E2D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SubscriptionOffersExposureEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217D6EC24(0, &qword_27CBA57B8, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v33 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D6E2D8();
  sub_217D89E7C();
  v10 = v3[1];
  v34 = *v3;
  v35 = v10;
  v41 = 0;
  sub_217BEB06C();

  sub_217D89C3C();

  if (!v2)
  {
    v11 = type metadata accessor for SubscriptionOffersExposureEvent.Model(0);
    LOBYTE(v34) = 1;
    sub_217D8899C();
    sub_217A60258(&unk_2811C8410, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEB8]);
    sub_217D89CAC();
    LOBYTE(v34) = 2;
    sub_217D889CC();
    sub_217A60258(&qword_2811C83F8, MEMORY[0x277CEAED0], MEMORY[0x277CEAED8]);
    sub_217D89CAC();
    v12 = (v3 + v11[7]);
    v13 = v12[1];
    v14 = v12[2];
    v15 = v12[3];
    v16 = v12[4];
    v34 = *v12;
    v35 = v13;
    v36 = v14;
    v37 = v15;
    v38 = v16;
    v41 = 3;
    sub_217AD86BC(v34, v13, v14, v15, v16);
    sub_217AD084C();
    sub_217D89C3C();
    sub_217AD96A4(v34, v35, v36, v37, v38);
    v17 = (v3 + v11[8]);
    v18 = v17[1];
    v19 = v17[2];
    v20 = v17[3];
    v21 = v17[4];
    v22 = v17[5];
    v34 = *v17;
    v35 = v18;
    v36 = v19;
    v37 = v20;
    v38 = v21;
    v39 = v22;
    v41 = 4;
    sub_217B1563C(v34, v18, v19, v20, v21, v22);
    sub_217A66ADC();
    sub_217D89C3C();
    sub_217B15D30(v34, v35, v36, v37, v38, v39);
    v34 = *(v3 + v11[9]);
    v41 = 5;
    sub_217BDDE84();

    sub_217D89C3C();

    v24 = (v3 + v11[10]);
    v25 = v24[1];
    v34 = *v24;
    v35 = v25;
    v41 = 6;
    sub_217B1E4A0();

    sub_217D89CAC();

    v26 = v3 + v11[11];
    v27 = *(v26 + 1);
    v28 = *(v26 + 2);
    v29 = *(v26 + 3);
    v30 = *(v26 + 4);
    v31 = *(v26 + 5);
    v32 = v26[48];
    v34 = *v26;
    v35 = v27;
    v36 = v28;
    v37 = v29;
    v38 = v30;
    v39 = v31;
    v40 = v32;
    v41 = 7;
    sub_217C50AA4(v34, v27, v28, v29, v30, v31);
    sub_217A55B98();
    sub_217D89C3C();
    sub_217BC84CC(v34, v35, v36, v37, v38, v39);
    LOWORD(v34) = *(v3 + v11[12]);
    v41 = 8;
    sub_217B1EA58();
    sub_217D89C3C();
    LOBYTE(v34) = *(v3 + v11[13]);
    v41 = 9;
    sub_217C9C670();
    sub_217D89C3C();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_217D6E2D8()
{
  result = qword_27CBA57C0;
  if (!qword_27CBA57C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA57C0);
  }

  return result;
}

void SubscriptionOffersExposureEvent.Model.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v3 = sub_217D889CC();
  v4 = *(v3 - 8);
  v41 = v3;
  v42 = v4;
  MEMORY[0x28223BE20](v3);
  v44 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_217D8899C();
  v40 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217D6EC24(0, &qword_27CBA57C8, MEMORY[0x277D844C8]);
  v45 = v9;
  v43 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = v35 - v10;
  v12 = type metadata accessor for SubscriptionOffersExposureEvent.Model(0);
  MEMORY[0x28223BE20](v12);
  v14 = v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D6E2D8();
  v46 = v11;
  v15 = v47;
  sub_217D89E5C();
  if (v15)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v16 = v43;
    v17 = v44;
    v36 = v12;
    v37 = v6;
    v47 = a1;
    v38 = v14;
    v52 = 0;
    sub_217BEB014();
    sub_217D89B5C();
    v18 = v38;
    *v38 = v48;
    LOBYTE(v48) = 1;
    sub_217A60258(&qword_2811C8408, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEC0]);
    v19 = v8;
    v20 = v37;
    sub_217D89BCC();
    v21 = v36;
    (*(v40 + 32))(&v18[v36[5]], v19, v20);
    LOBYTE(v48) = 2;
    sub_217A60258(&qword_2811C83F0, MEMORY[0x277CEAED0], MEMORY[0x277CEAEE0]);
    v22 = v41;
    v35[1] = 0;
    sub_217D89BCC();
    (*(v42 + 32))(&v18[v21[6]], v17, v22);
    v52 = 3;
    sub_217AD07F8();
    sub_217D89B5C();
    v23 = v50;
    v24 = &v18[v21[7]];
    v25 = v49;
    *v24 = v48;
    *(v24 + 1) = v25;
    *(v24 + 4) = v23;
    v52 = 4;
    sub_217A66A84();
    sub_217D89B5C();
    v26 = &v18[v21[8]];
    v27 = v49;
    *v26 = v48;
    *(v26 + 1) = v27;
    *(v26 + 2) = v50;
    v52 = 5;
    sub_217BDDE2C();
    sub_217D89B5C();
    *&v18[v21[9]] = v48;
    v52 = 6;
    sub_217B1E44C();
    sub_217D89BCC();
    LODWORD(v44) = 1;
    v28 = *(&v48 + 1);
    v29 = &v18[v21[10]];
    *v29 = v48;
    *(v29 + 1) = v28;
    v52 = 7;
    sub_217A54D08();
    sub_217D89B5C();
    v30 = v51;
    v31 = &v38[v21[11]];
    v32 = v49;
    *v31 = v48;
    *(v31 + 1) = v32;
    *(v31 + 2) = v50;
    v31[48] = v30;
    v52 = 8;
    sub_217B1EA04();
    sub_217D89B5C();
    *&v38[v21[12]] = v48;
    v52 = 9;
    sub_217C9C618();
    sub_217D89B5C();
    (*(v16 + 8))(v46, v45);
    v34 = v38;
    v33 = v39;
    v38[v36[13]] = v48;
    sub_217D6EC88(v34, v33);
    __swift_destroy_boxed_opaque_existential_1(v47);
    sub_217D6ECEC(v34);
  }
}

void sub_217D6EC24(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217D6E2D8();
    v7 = a3(a1, &type metadata for SubscriptionOffersExposureEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217D6EC88(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SubscriptionOffersExposureEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217D6ECEC(uint64_t a1)
{
  v2 = type metadata accessor for SubscriptionOffersExposureEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217D6EE20@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF0];
  sub_217D6D008(0, &qword_2811C8740, sub_217BEB014, sub_217BEB06C, &type metadata for AdReferralData);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  v7 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v8 - 8) + 104))(a2 + v6, v7, v8);
  v9 = a1[6];
  sub_217A608E0(0);
  (*(*(v10 - 8) + 104))(a2 + v9, v7, v10);
  v11 = a1[7];
  sub_217D6D008(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  (*(*(v12 - 8) + 104))(a2 + v11, v4, v12);
  v13 = a1[8];
  sub_217D6D008(0, &qword_2811C87A8, sub_217A66A84, sub_217A66ADC, &type metadata for CampaignData);
  (*(*(v14 - 8) + 104))(a2 + v13, v4, v14);
  v15 = a1[9];
  sub_217D6D008(0, &qword_2811C8640, sub_217BDDE2C, sub_217BDDE84, &type metadata for PurchaseOffersData);
  (*(*(v16 - 8) + 104))(a2 + v15, v4, v16);
  v17 = a1[10];
  sub_217D6D008(0, &qword_2811C85F8, sub_217B1E44C, sub_217B1E4A0, &type metadata for PurchaseSessionData);
  (*(*(v18 - 8) + 104))(a2 + v17, v7, v18);
  v19 = a1[11];
  sub_217D6D008(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v20 - 8) + 104))(a2 + v19, v4, v20);
  v21 = a1[12];
  sub_217D6D008(0, &qword_2811C8558, sub_217B1EA04, sub_217B1EA58, &type metadata for SubscribeButtonContextData);
  (*(*(v22 - 8) + 104))(a2 + v21, v4, v22);
  v23 = a1[13];
  sub_217D6D008(0, &qword_2811C8550, sub_217C9C618, sub_217C9C670, &type metadata for SubscriptionAdLocationData);
  v25 = *(*(v24 - 8) + 104);

  return v25(a2 + v23, v4, v24);
}

void sub_217D6F2DC(uint64_t a1)
{
  sub_217D6D008(319, &qword_2811C8740, sub_217BEB014, sub_217BEB06C, &type metadata for AdReferralData);
  if (v1 <= 0x3F)
  {
    sub_217A6018C(319);
    if (v2 <= 0x3F)
    {
      sub_217A608E0(319);
      if (v3 <= 0x3F)
      {
        sub_217D6D008(319, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
        if (v4 <= 0x3F)
        {
          sub_217D6D008(319, &qword_2811C87A8, sub_217A66A84, sub_217A66ADC, &type metadata for CampaignData);
          if (v5 <= 0x3F)
          {
            sub_217D6D008(319, &qword_2811C8640, sub_217BDDE2C, sub_217BDDE84, &type metadata for PurchaseOffersData);
            if (v6 <= 0x3F)
            {
              sub_217D6D008(319, &qword_2811C85F8, sub_217B1E44C, sub_217B1E4A0, &type metadata for PurchaseSessionData);
              if (v7 <= 0x3F)
              {
                sub_217D6D008(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
                if (v8 <= 0x3F)
                {
                  sub_217D6D008(319, &qword_2811C8558, sub_217B1EA04, sub_217B1EA58, &type metadata for SubscribeButtonContextData);
                  if (v9 <= 0x3F)
                  {
                    sub_217D6D008(319, &qword_2811C8550, sub_217C9C618, sub_217C9C670, &type metadata for SubscriptionAdLocationData);
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

void sub_217D6F608(uint64_t a1)
{
  sub_217A5E974(319, &qword_27CBA3A28, &type metadata for AdReferralData);
  if (v1 <= 0x3F)
  {
    sub_217D8899C();
    if (v2 <= 0x3F)
    {
      sub_217D889CC();
      if (v3 <= 0x3F)
      {
        sub_217A5E974(319, &qword_2811C7D70, &type metadata for ChannelData);
        if (v4 <= 0x3F)
        {
          sub_217A5E974(319, &qword_2811C7A98, &type metadata for CampaignData);
          if (v5 <= 0x3F)
          {
            sub_217A5E974(319, &qword_2811C2F08, &type metadata for PurchaseOffersData);
            if (v6 <= 0x3F)
            {
              sub_217A5E974(319, &qword_2811BDCD8, &type metadata for UserBundleSubscriptionContextData);
              if (v7 <= 0x3F)
              {
                sub_217A5E974(319, &qword_27CBA57D0, &type metadata for SubscribeButtonContextData);
                if (v8 <= 0x3F)
                {
                  sub_217A5E974(319, &qword_27CBA57D8, &type metadata for SubscriptionAdLocationData);
                  if (v9 <= 0x3F)
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

unint64_t sub_217D6F7C0()
{
  result = qword_27CBA57E0;
  if (!qword_27CBA57E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA57E0);
  }

  return result;
}

unint64_t sub_217D6F818()
{
  result = qword_27CBA57E8;
  if (!qword_27CBA57E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA57E8);
  }

  return result;
}

unint64_t sub_217D6F870()
{
  result = qword_27CBA57F0;
  if (!qword_27CBA57F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA57F0);
  }

  return result;
}

uint64_t sub_217D6F8C4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7272656665526461 && a2 == 0xEE00617461446C61;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74614464656D6974 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x446C656E6E616863 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E676961706D6163 && a2 == 0xEC00000061746144 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000217DD1600 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000217DCD9D0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000217DCD9F0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000217DD32C0 == a2)
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

uint64_t sub_217D6FCD4()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA5828);
  __swift_project_value_buffer(v0, qword_27CBA5828);
  return sub_217D8866C();
}

uint64_t NotificationReceivedEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t NotificationReceivedEvent.notificationData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NotificationReceivedEvent(0) + 20);
  sub_217D70598(0, &qword_2811C86B8, sub_217B9C22C, sub_217B9C280, &type metadata for NotificationData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NotificationReceivedEvent.notificationData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NotificationReceivedEvent(0) + 20);
  sub_217D70598(0, &qword_2811C86B8, sub_217B9C22C, sub_217B9C280, &type metadata for NotificationData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NotificationReceivedEvent.notificationStatusData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NotificationReceivedEvent(0) + 24);
  sub_217D70598(0, &qword_27CBA5840, sub_217B354F0, sub_217B35548, &type metadata for NotificationStatusData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NotificationReceivedEvent.notificationStatusData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NotificationReceivedEvent(0) + 24);
  sub_217D70598(0, &qword_27CBA5840, sub_217B354F0, sub_217B35548, &type metadata for NotificationStatusData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NotificationReceivedEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NotificationReceivedEvent(0) + 28);
  sub_217D70598(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NotificationReceivedEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NotificationReceivedEvent(0) + 28);
  sub_217D70598(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NotificationReceivedEvent.userChannelContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NotificationReceivedEvent(0) + 32);
  sub_217D70598(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NotificationReceivedEvent.userChannelContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NotificationReceivedEvent(0) + 32);
  sub_217D70598(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NotificationReceivedEvent.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NotificationReceivedEvent(0) + 36);
  sub_217D70598(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217D70598(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
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

uint64_t NotificationReceivedEvent.channelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NotificationReceivedEvent(0) + 36);
  sub_217D70598(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NotificationReceivedEvent.userSegmentationTreatmentIDs.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NotificationReceivedEvent(0) + 40);
  sub_217D7078C(0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217D7078C(uint64_t a1)
{
  if (!qword_27CBA5848)
  {
    sub_217D72670(255, &qword_2811BCCE8, MEMORY[0x277D84A28], MEMORY[0x277D83940]);
    sub_217D70870(&qword_2811BCCD8, MEMORY[0x277D84A58], MEMORY[0x277D83978]);
    sub_217D70870(&qword_2811BCCE0, MEMORY[0x277D84A30], MEMORY[0x277D83948]);
    v1 = sub_217D8829C();
    if (!v2)
    {
      atomic_store(v1, &qword_27CBA5848);
    }
  }
}

uint64_t sub_217D70870(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_217D72670(255, &qword_2811BCCE8, MEMORY[0x277D84A28], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t NotificationReceivedEvent.userSegmentationTreatmentIDs.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NotificationReceivedEvent(0) + 40);
  sub_217D7078C(0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NotificationReceivedEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for NotificationReceivedEvent(0);
  v5 = v4[5];
  sub_217D70598(0, &qword_2811C86B8, sub_217B9C22C, sub_217B9C280, &type metadata for NotificationData);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217D70598(0, &qword_27CBA5840, sub_217B354F0, sub_217B35548, &type metadata for NotificationStatusData);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  sub_217D70598(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v10 - 8) + 104))(a1 + v9, v2, v10);
  v11 = v4[8];
  v12 = *MEMORY[0x277CEACF0];
  sub_217D70598(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
  (*(*(v13 - 8) + 104))(a1 + v11, v12, v13);
  v14 = v4[9];
  sub_217D70598(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  (*(*(v15 - 8) + 104))(a1 + v14, v12, v15);
  v16 = v4[10];
  sub_217D7078C(0);
  v18 = *(*(v17 - 8) + 104);

  return v18(a1 + v16, v12, v17);
}

uint64_t NotificationReceivedEvent.Model.notificationData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for NotificationReceivedEvent.Model(0) + 20));
  v4 = v3[3];
  v12 = v3[2];
  v13 = v4;
  v6 = v3[5];
  v14 = v3[4];
  v5 = v14;
  v15 = v6;
  v7 = v3[1];
  v11[0] = *v3;
  v8 = v11[0];
  v11[1] = v7;
  a1[2] = v12;
  a1[3] = v4;
  a1[4] = v5;
  a1[5] = v6;
  *a1 = v8;
  a1[1] = v7;
  return sub_217ADF510(v11, &v10);
}

uint64_t NotificationReceivedEvent.Model.notificationStatusData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for NotificationReceivedEvent.Model(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t NotificationReceivedEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for NotificationReceivedEvent.Model(0) + 28));
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

uint64_t NotificationReceivedEvent.Model.userChannelContextData.getter@<X0>(_DWORD *a1@<X8>)
{
  result = type metadata accessor for NotificationReceivedEvent.Model(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

void NotificationReceivedEvent.Model.channelData.getter(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for NotificationReceivedEvent.Model(0) + 36));
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

  sub_217AD86BC(v4, v5, v6, v7, v8);
}

uint64_t NotificationReceivedEvent.Model.userSegmentationTreatmentIDs.getter()
{
  type metadata accessor for NotificationReceivedEvent.Model(0);
}

__n128 NotificationReceivedEvent.Model.init(eventData:notificationData:notificationStatusData:userBundleSubscriptionContextData:userChannelContextData:channelData:userSegmentationTreatmentIDs:)@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, int *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v14 = *a3;
  v15 = *a5;
  v16 = *(a6 + 32);
  v17 = sub_217D8899C();
  v27 = *(a6 + 16);
  v28 = *a6;
  (*(*(v17 - 8) + 32))(a8, a1, v17);
  v18 = type metadata accessor for NotificationReceivedEvent.Model(0);
  v19 = (a8 + v18[5]);
  v20 = a2[3];
  v19[2] = a2[2];
  v19[3] = v20;
  v21 = a2[5];
  v19[4] = a2[4];
  v19[5] = v21;
  v22 = a2[1];
  *v19 = *a2;
  v19[1] = v22;
  *(a8 + v18[6]) = v14;
  v23 = a8 + v18[7];
  v24 = *(a4 + 16);
  *v23 = *a4;
  *(v23 + 16) = v24;
  *(v23 + 32) = *(a4 + 32);
  *(v23 + 48) = *(a4 + 48);
  *(a8 + v18[8]) = v15;
  v25 = a8 + v18[9];
  result = v28;
  *v25 = v28;
  *(v25 + 16) = v27;
  *(v25 + 32) = v16;
  *(a8 + v18[10]) = a7;
  return result;
}

uint64_t sub_217D71000()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0xD000000000000010;
    if (v1 != 1)
    {
      v5 = 0xD000000000000016;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 0x746144746E657665;
    }
  }

  else
  {
    v2 = 0x446C656E6E616863;
    if (v1 != 5)
    {
      v2 = 0xD00000000000001CLL;
    }

    v3 = 0xD000000000000021;
    if (v1 != 3)
    {
      v3 = 0xD000000000000016;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_217D71100@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217D72854(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217D71128(uint64_t a1)
{
  v2 = sub_217D71658();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217D71164(uint64_t a1)
{
  v2 = sub_217D71658();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NotificationReceivedEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217D71DD4(0, &qword_27CBA5850, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v28 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D71658();
  sub_217D89E7C();
  v59 = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410, MEMORY[0x277CEAEB8]);
  sub_217D89CAC();
  if (!v2)
  {
    v10 = type metadata accessor for NotificationReceivedEvent.Model(0);
    v11 = (v3 + v10[5]);
    v12 = v11[3];
    v13 = v11[1];
    v50 = v11[2];
    v51 = v12;
    v14 = v11[3];
    v15 = v11[5];
    v52 = v11[4];
    v53 = v15;
    v16 = v11[1];
    v49[0] = *v11;
    v49[1] = v16;
    v45 = v50;
    v46 = v14;
    v17 = v11[5];
    v47 = v52;
    v48 = v17;
    v43 = v49[0];
    v44 = v13;
    v58 = 1;
    sub_217ADF510(v49, v42);
    sub_217B9C280();
    sub_217D89CAC();
    v42[2] = v45;
    v42[3] = v46;
    v42[4] = v47;
    v42[5] = v48;
    v42[0] = v43;
    v42[1] = v44;
    sub_217C310B8(v42);
    v57 = *(v3 + v10[6]);
    v56 = 2;
    sub_217B35548();
    sub_217D89CAC();
    v18 = (v3 + v10[7]);
    v19 = v18[1];
    v40[0] = *v18;
    v40[1] = v19;
    v21 = *v18;
    v20 = v18[1];
    v40[2] = v18[2];
    v41 = *(v18 + 48);
    v36 = v21;
    v37 = v20;
    v38 = v18[2];
    v39 = *(v18 + 48);
    v55 = 3;
    sub_217ACC004(v40, v34);
    sub_217A55B98();
    sub_217D89CAC();
    v34[0] = v36;
    v34[1] = v37;
    v34[2] = v38;
    v35 = v39;
    sub_217ACC69C(v34);
    LODWORD(v29) = *(v3 + v10[8]);
    v54 = 4;
    sub_217ACFB8C();
    sub_217D89C3C();
    v22 = (v3 + v10[9]);
    v23 = v22[1];
    v24 = v22[2];
    v25 = v22[3];
    v26 = v22[4];
    v29 = *v22;
    v30 = v23;
    v31 = v24;
    v32 = v25;
    v33 = v26;
    v54 = 5;
    sub_217AD86BC(v29, v23, v24, v25, v26);
    sub_217AD084C();
    sub_217D89C3C();
    sub_217AD96A4(v29, v30, v31, v32, v33);
    v29 = *(v3 + v10[10]);
    v54 = 6;
    sub_217D72670(0, &qword_2811BCCE8, MEMORY[0x277D84A28], MEMORY[0x277D83940]);
    sub_217D70870(&qword_2811BCCE0, MEMORY[0x277D84A30], MEMORY[0x277D83948]);
    sub_217D89C3C();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_217D71658()
{
  result = qword_27CBA5858;
  if (!qword_27CBA5858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA5858);
  }

  return result;
}

void NotificationReceivedEvent.Model.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v4 = sub_217D8899C();
  v28 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217D71DD4(0, &qword_27CBA5860, MEMORY[0x277D844C8]);
  v29 = v7;
  v27 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = v25 - v8;
  v10 = type metadata accessor for NotificationReceivedEvent.Model(0);
  MEMORY[0x28223BE20](v10);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v31 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_217D71658();
  v30 = v9;
  sub_217D89E5C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(v31);
  }

  else
  {
    v14 = v27;
    v15 = v28;
    LOBYTE(v39) = 0;
    sub_217A602A0(&qword_2811C8408, MEMORY[0x277CEAEC0]);
    sub_217D89BCC();
    (*(v15 + 32))(v12, v6, v4);
    v47 = 1;
    sub_217B9C22C();
    sub_217D89BCC();
    v25[1] = 0;
    v16 = &v12[v10[5]];
    v17 = v42;
    *(v16 + 2) = v41;
    *(v16 + 3) = v17;
    v18 = v44;
    *(v16 + 4) = v43;
    *(v16 + 5) = v18;
    v19 = v40;
    *v16 = v39;
    *(v16 + 1) = v19;
    LOBYTE(v32) = 2;
    sub_217B354F0();
    sub_217D89BCC();
    v12[v10[6]] = v35;
    v46 = 3;
    sub_217A54D08();
    sub_217D89BCC();
    v20 = &v12[v10[7]];
    v21 = v36;
    *v20 = v35;
    *(v20 + 1) = v21;
    *(v20 + 2) = v37;
    v20[48] = v38;
    v45 = 4;
    sub_217ACFB38();
    sub_217D89B5C();
    *&v12[v10[8]] = v32;
    v45 = 5;
    sub_217AD07F8();
    sub_217D89B5C();
    v22 = v34;
    v23 = &v12[v10[9]];
    v24 = v33;
    *v23 = v32;
    *(v23 + 1) = v24;
    *(v23 + 4) = v22;
    sub_217D72670(0, &qword_2811BCCE8, MEMORY[0x277D84A28], MEMORY[0x277D83940]);
    v45 = 6;
    sub_217D70870(&qword_2811BCCD8, MEMORY[0x277D84A58], MEMORY[0x277D83978]);
    sub_217D89B5C();
    (*(v14 + 8))(v30, v29);
    *&v12[v10[10]] = v32;
    sub_217D71E38(v12, v26);
    __swift_destroy_boxed_opaque_existential_1(v31);
    sub_217D71E9C(v12);
  }
}

void sub_217D71DD4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217D71658();
    v7 = a3(a1, &type metadata for NotificationReceivedEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217D71E38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NotificationReceivedEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217D71E9C(uint64_t a1)
{
  v2 = type metadata accessor for NotificationReceivedEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217D71FD0@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217D70598(0, &qword_2811C86B8, sub_217B9C22C, sub_217B9C280, &type metadata for NotificationData);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_217D70598(0, &qword_27CBA5840, sub_217B354F0, sub_217B35548, &type metadata for NotificationStatusData);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  sub_217D70598(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v11 - 8) + 104))(a2 + v10, v4, v11);
  v12 = a1[8];
  v13 = *MEMORY[0x277CEACF0];
  sub_217D70598(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
  (*(*(v14 - 8) + 104))(a2 + v12, v13, v14);
  v15 = a1[9];
  sub_217D70598(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  (*(*(v16 - 8) + 104))(a2 + v15, v13, v16);
  v17 = a1[10];
  sub_217D7078C(0);
  v19 = *(*(v18 - 8) + 104);

  return v19(a2 + v17, v13, v18);
}

void sub_217D7231C(uint64_t a1)
{
  sub_217A6018C(319);
  if (v1 <= 0x3F)
  {
    sub_217D70598(319, &qword_2811C86B8, sub_217B9C22C, sub_217B9C280, &type metadata for NotificationData);
    if (v2 <= 0x3F)
    {
      sub_217D70598(319, &qword_27CBA5840, sub_217B354F0, sub_217B35548, &type metadata for NotificationStatusData);
      if (v3 <= 0x3F)
      {
        sub_217D70598(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
        if (v4 <= 0x3F)
        {
          sub_217D70598(319, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
          if (v5 <= 0x3F)
          {
            sub_217D70598(319, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
            if (v6 <= 0x3F)
            {
              sub_217D7078C(319);
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

void sub_217D72558(uint64_t a1)
{
  sub_217D8899C();
  if (v1 <= 0x3F)
  {
    sub_217D72670(319, &qword_2811C01C8, &type metadata for UserChannelContextData, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_217D72670(319, &qword_2811C7D70, &type metadata for ChannelData, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_217D726C0(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_217D72670(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_217D726C0(uint64_t a1)
{
  if (!qword_27CBA5888)
  {
    sub_217D72670(255, &qword_2811BCCE8, MEMORY[0x277D84A28], MEMORY[0x277D83940]);
    v1 = sub_217D898EC();
    if (!v2)
    {
      atomic_store(v1, &qword_27CBA5888);
    }
  }
}

unint64_t sub_217D72750()
{
  result = qword_27CBA5890;
  if (!qword_27CBA5890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA5890);
  }

  return result;
}

unint64_t sub_217D727A8()
{
  result = qword_27CBA5898;
  if (!qword_27CBA5898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA5898);
  }

  return result;
}

unint64_t sub_217D72800()
{
  result = qword_27CBA58A0;
  if (!qword_27CBA58A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA58A0);
  }

  return result;
}

uint64_t sub_217D72854(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000217DCEBF0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000217DD32E0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000217DCCCC0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x446C656E6E616863 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001CLL && 0x8000000217DCE4E0 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_217D89D4C();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

NewsAnalytics::ApplicationState_optional __swiftcall ApplicationState.init(rawValue:)(Swift::String rawValue)
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

uint64_t ApplicationState.rawValue.getter()
{
  v1 = 0x756F72676B636162;
  if (*v0 != 1)
  {
    v1 = 0x6669636570736E75;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x756F726765726F66;
  }
}

uint64_t sub_217D72B6C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x756F72676B636162;
  if (v2 == 1)
  {
    v4 = 0xEA0000000000646ELL;
  }

  else
  {
    v3 = 0x6669636570736E75;
    v4 = 0xEB00000000646569;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x756F726765726F66;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xEA0000000000646ELL;
  }

  v7 = 0x756F72676B636162;
  if (*a2 == 1)
  {
    v8 = 0xEA0000000000646ELL;
  }

  else
  {
    v7 = 0x6669636570736E75;
    v8 = 0xEB00000000646569;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x756F726765726F66;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xEA0000000000646ELL;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_217D89D4C();
  }

  return v11 & 1;
}

unint64_t sub_217D72C7C()
{
  result = qword_27CBA58A8;
  if (!qword_27CBA58A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA58A8);
  }

  return result;
}

uint64_t sub_217D72CD0()
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217D72D7C(uint64_t a1)
{
  sub_217D895CC();
}

uint64_t sub_217D72E14(uint64_t a1)
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

void sub_217D72EC8(uint64_t *a1@<X8>)
{
  v2 = 0xEA0000000000646ELL;
  v3 = *v1;
  v4 = 0x756F72676B636162;
  v5 = 0xEB00000000646569;
  if (v3 == 1)
  {
    v5 = 0xEA0000000000646ELL;
  }

  else
  {
    v4 = 0x6669636570736E75;
  }

  v6 = v3 == 0;
  if (*v1)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0x756F726765726F66;
  }

  if (!v6)
  {
    v2 = v5;
  }

  *a1 = v7;
  a1[1] = v2;
}

unint64_t sub_217D72FF0()
{
  result = qword_27CBA58B0;
  if (!qword_27CBA58B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA58B0);
  }

  return result;
}

uint64_t sub_217D7310C()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_2811C74A8);
  __swift_project_value_buffer(v0, qword_2811C74A8);
  return sub_217D8866C();
}

uint64_t FeedViewEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t FeedViewEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FeedViewEvent(0) + 20);
  sub_217A608E0(0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FeedViewEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FeedViewEvent(0) + 24);
  sub_217A607BC(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FeedViewEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FeedViewEvent(0) + 24);
  sub_217A607BC(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FeedViewEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FeedViewEvent(0) + 28);
  sub_217A607BC(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FeedViewEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FeedViewEvent(0) + 28);
  sub_217A607BC(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FeedViewEvent.orientationData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FeedViewEvent(0) + 32);
  sub_217A607BC(0, &qword_2811C86E8, sub_217A4CF30, sub_217A4CF88, &type metadata for OrientationData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FeedViewEvent.orientationData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FeedViewEvent(0) + 32);
  sub_217A607BC(0, &qword_2811C86E8, sub_217A4CF30, sub_217A4CF88, &type metadata for OrientationData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FeedViewEvent.campaignData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FeedViewEvent(0) + 36);
  sub_217A607BC(0, &qword_2811C87A8, sub_217A66A84, sub_217A66ADC, &type metadata for CampaignData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FeedViewEvent.campaignData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FeedViewEvent(0) + 36);
  sub_217A607BC(0, &qword_2811C87A8, sub_217A66A84, sub_217A66ADC, &type metadata for CampaignData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FeedViewEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FeedViewEvent(0) + 40);
  sub_217A607BC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FeedViewEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FeedViewEvent(0) + 40);
  sub_217A607BC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FeedViewEvent.searchData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FeedViewEvent(0) + 44);
  sub_217A607BC(0, &qword_2811C8810, sub_217B23D2C, sub_217B23A38, &type metadata for SearchData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FeedViewEvent.searchData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FeedViewEvent(0) + 44);
  sub_217A607BC(0, &qword_2811C8810, sub_217B23D2C, sub_217B23A38, &type metadata for SearchData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FeedViewEvent.viewEndData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FeedViewEvent(0) + 48);
  sub_217A607BC(0, &qword_2811C87C0, sub_217B57068, sub_217B570C0, &type metadata for ViewEndData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FeedViewEvent.viewEndData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FeedViewEvent(0) + 48);
  sub_217A607BC(0, &qword_2811C87C0, sub_217B57068, sub_217B570C0, &type metadata for ViewEndData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FeedViewEvent.tagData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FeedViewEvent(0) + 52);
  sub_217A607BC(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14, &type metadata for TagData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FeedViewEvent.tagData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FeedViewEvent(0) + 52);
  sub_217A607BC(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14, &type metadata for TagData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FeedViewEvent.referralData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FeedViewEvent(0) + 56);
  sub_217A607BC(0, &qword_2811C8788, sub_217ACDC58, sub_217ACDCB0, &type metadata for ReferralData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FeedViewEvent.referralData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FeedViewEvent(0) + 56);
  sub_217A607BC(0, &qword_2811C8788, sub_217ACDC58, sub_217ACDCB0, &type metadata for ReferralData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FeedViewEvent.referralGroupData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FeedViewEvent(0) + 60);
  sub_217A607BC(0, &qword_2811C8670, sub_217A5D48C, sub_217A5D580, &type metadata for ReferralGroupData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FeedViewEvent.referralGroupData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FeedViewEvent(0) + 60);
  sub_217A607BC(0, &qword_2811C8670, sub_217A5D48C, sub_217A5D580, &type metadata for ReferralGroupData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FeedViewEvent.referralFeedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FeedViewEvent(0) + 64);
  sub_217A607BC(0, &qword_2811C86A0, sub_217A5DA70, sub_217A5E184, &type metadata for ReferralFeedData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FeedViewEvent.referralFeedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FeedViewEvent(0) + 64);
  sub_217A607BC(0, &qword_2811C86A0, sub_217A5DA70, sub_217A5E184, &type metadata for ReferralFeedData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FeedViewEvent.referralArticleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FeedViewEvent(0) + 68);
  sub_217A607BC(0, &qword_2811C85D0, sub_217A5D8AC, sub_217A5D95C, &type metadata for ReferringArticleData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FeedViewEvent.referralArticleData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FeedViewEvent(0) + 68);
  sub_217A607BC(0, &qword_2811C85D0, sub_217A5D8AC, sub_217A5D95C, &type metadata for ReferringArticleData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FeedViewEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for FeedViewEvent(0);
  v5 = v4[5];
  sub_217A608E0(0);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217A607BC(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  sub_217A607BC(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  (*(*(v10 - 8) + 104))(a1 + v9, v2, v10);
  v11 = v4[8];
  sub_217A607BC(0, &qword_2811C86E8, sub_217A4CF30, sub_217A4CF88, &type metadata for OrientationData);
  (*(*(v12 - 8) + 104))(a1 + v11, v2, v12);
  v13 = v4[9];
  v14 = *MEMORY[0x277CEACF0];
  sub_217A607BC(0, &qword_2811C87A8, sub_217A66A84, sub_217A66ADC, &type metadata for CampaignData);
  (*(*(v15 - 8) + 104))(a1 + v13, v14, v15);
  v16 = v4[10];
  sub_217A607BC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v17 - 8) + 104))(a1 + v16, v2, v17);
  v18 = v4[11];
  sub_217A607BC(0, &qword_2811C8810, sub_217B23D2C, sub_217B23A38, &type metadata for SearchData);
  (*(*(v19 - 8) + 104))(a1 + v18, v14, v19);
  v20 = v4[12];
  sub_217A607BC(0, &qword_2811C87C0, sub_217B57068, sub_217B570C0, &type metadata for ViewEndData);
  (*(*(v21 - 8) + 104))(a1 + v20, v2, v21);
  v22 = v4[13];
  sub_217A607BC(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14, &type metadata for TagData);
  (*(*(v23 - 8) + 104))(a1 + v22, v14, v23);
  v24 = v4[14];
  sub_217A607BC(0, &qword_2811C8788, sub_217ACDC58, sub_217ACDCB0, &type metadata for ReferralData);
  (*(*(v25 - 8) + 104))(a1 + v24, v14, v25);
  v26 = v4[15];
  sub_217A607BC(0, &qword_2811C8670, sub_217A5D48C, sub_217A5D580, &type metadata for ReferralGroupData);
  (*(*(v27 - 8) + 104))(a1 + v26, v14, v27);
  v28 = v4[16];
  sub_217A607BC(0, &qword_2811C86A0, sub_217A5DA70, sub_217A5E184, &type metadata for ReferralFeedData);
  (*(*(v29 - 8) + 104))(a1 + v28, v14, v29);
  v30 = v4[17];
  sub_217A607BC(0, &qword_2811C85D0, sub_217A5D8AC, sub_217A5D95C, &type metadata for ReferringArticleData);
  v32 = *(*(v31 - 8) + 104);

  return v32(a1 + v30, v14, v31);
}

uint64_t sub_217D74E4C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t FeedViewEvent.Model.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for FeedViewEvent.Model(0) + 24);
  v5 = *(v3 + 8);
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
}

uint64_t FeedViewEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for FeedViewEvent.Model(0) + 28));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t FeedViewEvent.Model.orientationData.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for FeedViewEvent.Model(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

void FeedViewEvent.Model.campaignData.getter(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for FeedViewEvent.Model(0) + 36));
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

uint64_t FeedViewEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for FeedViewEvent.Model(0) + 40));
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

void FeedViewEvent.Model.searchData.getter(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for FeedViewEvent.Model(0) + 44));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;

  sub_217C70C5C(v4, v5, v6, v7);
}

uint64_t FeedViewEvent.Model.viewEndData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for FeedViewEvent.Model(0);
  *a1 = *(v1 + *(result + 48));
  return result;
}

uint64_t FeedViewEvent.Model.tagData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for FeedViewEvent.Model(0) + 52));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

void FeedViewEvent.Model.referralData.getter(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for FeedViewEvent.Model(0) + 56));
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

uint64_t FeedViewEvent.Model.referralGroupData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for FeedViewEvent.Model(0) + 60));
  v4 = v3[5];
  v5 = v3[7];
  v22 = v3[6];
  v23 = v5;
  v6 = v3[7];
  v24 = v3[8];
  v7 = v3[3];
  v8 = v3[5];
  v20 = v3[4];
  v9 = v20;
  v21 = v8;
  v10 = v3[1];
  v11 = v3[3];
  v18 = v3[2];
  v12 = v18;
  v19 = v11;
  v13 = v3[1];
  v17[0] = *v3;
  v14 = v17[0];
  v17[1] = v13;
  a1[6] = v22;
  a1[7] = v6;
  a1[8] = v3[8];
  a1[2] = v12;
  a1[3] = v7;
  a1[4] = v9;
  a1[5] = v4;
  *a1 = v14;
  a1[1] = v10;
  return sub_217D7520C(v17, &v16);
}

uint64_t sub_217D7520C(uint64_t a1, uint64_t a2)
{
  sub_217A5E974(0, &qword_2811C4338, &type metadata for ReferralGroupData);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t FeedViewEvent.Model.referralFeedData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for FeedViewEvent.Model(0) + 64));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;

  return sub_217AD1A68(v4, v5, v6);
}

uint64_t FeedViewEvent.Model.referralArticleData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for FeedViewEvent.Model(0) + 68);
  v4 = *(v3 + 24);
  *a1 = *v3;
  *(a1 + 8) = *(v3 + 8);
  *(a1 + 24) = v4;
}

__n128 FeedViewEvent.Model.init(eventData:timedData:feedData:viewData:orientationData:campaignData:userBundleSubscriptionContextData:searchData:viewEndData:tagData:referralData:referralGroupData:referralFeedData:referralArticleData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t *a4@<X3>, __int16 *a5@<X4>, __int128 *a6@<X5>, uint64_t a7@<X6>, __int128 *a8@<X7>, uint64_t a9@<X8>, char *a10, uint64_t *a11, __int128 *a12, _OWORD *a13, __int128 *a14, __n128 *a15)
{
  v20 = *a3;
  v21 = *(a3 + 1);
  v22 = *(a3 + 2);
  v48 = a4[1];
  v49 = *a4;
  v47 = *(a4 + 8);
  v50 = *a5;
  v52 = *(a6 + 5);
  v53 = *(a6 + 4);
  v56 = *a10;
  v57 = a11[1];
  v58 = *a11;
  v59 = *(a12 + 5);
  v60 = *(a12 + 4);
  v62 = *a14;
  v61 = *(a14 + 2);
  v65 = *a15;
  v64 = a15[1].n128_u64[0];
  v63 = a15[1].n128_u8[8];
  v23 = sub_217D8899C();
  v54 = a12[1];
  v55 = *a12;
  v45 = a8[1];
  v46 = *a8;
  v43 = a6[1];
  v44 = *a6;
  (*(*(v23 - 8) + 32))(a9, a1, v23);
  v24 = type metadata accessor for FeedViewEvent.Model(0);
  v25 = v24[5];
  v26 = sub_217D889CC();
  (*(*(v26 - 8) + 32))(a9 + v25, a2, v26);
  v27 = a9 + v24[6];
  *v27 = v20;
  *(v27 + 8) = v21;
  *(v27 + 16) = v22;
  v28 = a9 + v24[7];
  *v28 = v49;
  *(v28 + 8) = v48;
  *(v28 + 16) = v47;
  *(a9 + v24[8]) = v50;
  v29 = a9 + v24[9];
  *v29 = v44;
  *(v29 + 16) = v43;
  *(v29 + 32) = v53;
  *(v29 + 40) = v52;
  v30 = a9 + v24[10];
  v31 = *(a7 + 16);
  *v30 = *a7;
  *(v30 + 16) = v31;
  *(v30 + 32) = *(a7 + 32);
  *(v30 + 48) = *(a7 + 48);
  v32 = (a9 + v24[11]);
  *v32 = v46;
  v32[1] = v45;
  *(a9 + v24[12]) = v56;
  v33 = (a9 + v24[13]);
  *v33 = v58;
  v33[1] = v57;
  v34 = a9 + v24[14];
  *v34 = v55;
  *(v34 + 16) = v54;
  *(v34 + 32) = v60;
  *(v34 + 40) = v59;
  v35 = (a9 + v24[15]);
  v36 = a13[3];
  v35[2] = a13[2];
  v35[3] = v36;
  v37 = a13[1];
  *v35 = *a13;
  v35[1] = v37;
  v38 = a13[8];
  v35[7] = a13[7];
  v35[8] = v38;
  v39 = a13[6];
  v35[5] = a13[5];
  v35[6] = v39;
  v35[4] = a13[4];
  v40 = a9 + v24[16];
  *v40 = v62;
  *(v40 + 16) = v61;
  v41 = (a9 + v24[17]);
  result = v65;
  *v41 = v65;
  v41[1].n128_u64[0] = v64;
  v41[1].n128_u8[8] = v63;
  return result;
}

uint64_t sub_217D755B4(char a1)
{
  result = 0x746144746E657665;
  switch(a1)
  {
    case 1:
      result = 0x74614464656D6974;
      break;
    case 2:
      v3 = 1684366694;
      goto LABEL_9;
    case 3:
      v3 = 2003134838;
LABEL_9:
      result = v3 | 0x6174614400000000;
      break;
    case 4:
      result = 0x7461746E6569726FLL;
      break;
    case 5:
      result = 0x6E676961706D6163;
      break;
    case 6:
      result = 0xD000000000000021;
      break;
    case 7:
      result = 0x6144686372616573;
      break;
    case 8:
      result = 0x44646E4577656976;
      break;
    case 9:
      result = 0x61746144676174;
      break;
    case 10:
      result = 0x6C61727265666572;
      break;
    case 11:
      result = 0xD000000000000011;
      break;
    case 12:
      result = 0xD000000000000010;
      break;
    case 13:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_217D75760@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217D77CEC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217D75788(uint64_t a1)
{
  v2 = sub_217D75FEC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217D757C4(uint64_t a1)
{
  v2 = sub_217D75FEC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FeedViewEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217D76ED0(0, &qword_27CBA58B8, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v54 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D75FEC();
  sub_217D89E7C();
  LOBYTE(v67) = 0;
  sub_217D8899C();
  sub_217A60258(&unk_2811C8410, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEB8]);
  sub_217D89CAC();
  if (!v2)
  {
    v10 = type metadata accessor for FeedViewEvent.Model(0);
    LOBYTE(v67) = 1;
    sub_217D889CC();
    sub_217A60258(&qword_2811C83F8, MEMORY[0x277CEAED0], MEMORY[0x277CEAED8]);
    sub_217D89CAC();
    v11 = v3 + v10[6];
    v12 = *(v11 + 8);
    v13 = *(v11 + 16);
    LOBYTE(v67) = *v11;
    *(&v67 + 1) = v12;
    *&v68 = v13;
    LOBYTE(v58) = 2;
    sub_217A5BA2C();

    sub_217D89CAC();

    v14 = (v3 + v10[7]);
    v15 = *v14;
    v16 = v14[1];
    LOWORD(v14) = *(v14 + 8);
    *&v67 = v15;
    *(&v67 + 1) = v16;
    LOWORD(v68) = v14;
    LOBYTE(v58) = 3;
    sub_217A5E790();

    sub_217D89CAC();

    LOWORD(v67) = *(v3 + v10[8]);
    LOBYTE(v58) = 4;
    sub_217A4CF88();
    sub_217D89CAC();
    v18 = (v3 + v10[9]);
    v19 = v18[1];
    v20 = v18[2];
    v21 = v18[3];
    v22 = v18[4];
    v23 = v18[5];
    v90 = *v18;
    v91 = v19;
    v92 = v20;
    v93 = v21;
    v94 = v22;
    v95 = v23;
    v100 = 5;
    sub_217B1563C(v90, v19, v20, v21, v22, v23);
    sub_217A66ADC();
    sub_217D89C3C();
    sub_217B15D30(v90, v91, v92, v93, v94, v95);
    v24 = (v3 + v10[10]);
    v25 = v24[1];
    v88[0] = *v24;
    v88[1] = v25;
    v27 = *v24;
    v26 = v24[1];
    v88[2] = v24[2];
    v89 = *(v24 + 48);
    v84 = v27;
    v85 = v26;
    v86 = v24[2];
    v87 = *(v24 + 48);
    v99 = 6;
    sub_217ACC004(v88, &v67);
    sub_217A55B98();
    sub_217D89CAC();
    v82[0] = v84;
    v82[1] = v85;
    v82[2] = v86;
    v83 = v87;
    sub_217ACC69C(v82);
    v28 = (v3 + v10[11]);
    v29 = v28[1];
    v30 = v28[2];
    v31 = v28[3];
    *&v67 = *v28;
    *(&v67 + 1) = v29;
    *&v68 = v30;
    *(&v68 + 1) = v31;
    LOBYTE(v58) = 7;
    sub_217C70C5C(v67, v29, v30, v31);
    sub_217B23A38();
    sub_217D89C3C();
    sub_217AE4AA0(v67, *(&v67 + 1), v68, *(&v68 + 1));
    LOBYTE(v67) = *(v3 + v10[12]);
    LOBYTE(v58) = 8;
    sub_217B570C0();
    sub_217D89CAC();
    v32 = (v3 + v10[13]);
    v33 = v32[1];
    *&v67 = *v32;
    *(&v67 + 1) = v33;
    LOBYTE(v58) = 9;
    sub_217AF6B14();

    sub_217D89C3C();

    v34 = (v3 + v10[14]);
    v35 = v34[1];
    v36 = v34[2];
    v37 = v34[3];
    v38 = v34[4];
    v39 = v34[5];
    v76 = *v34;
    v77 = v35;
    v78 = v36;
    v79 = v37;
    v80 = v38;
    v81 = v39;
    v98 = 10;
    sub_217B1563C(v76, v35, v36, v37, v38, v39);
    sub_217ACDCB0();
    sub_217D89C3C();
    sub_217B15D30(v76, v77, v78, v79, v80, v81);
    v40 = (v3 + v10[15]);
    v41 = v40[5];
    v42 = v40[7];
    v73 = v40[6];
    v74 = v42;
    v43 = v40[7];
    v75 = v40[8];
    v44 = v40[1];
    v45 = v40[3];
    v69 = v40[2];
    v70 = v45;
    v46 = v40[3];
    v47 = v40[5];
    v71 = v40[4];
    v72 = v47;
    v48 = v40[1];
    v67 = *v40;
    v68 = v48;
    v64 = v73;
    v65 = v43;
    v66 = v40[8];
    v60 = v69;
    v61 = v46;
    v62 = v71;
    v63 = v41;
    v58 = v67;
    v59 = v44;
    v97 = 11;
    sub_217D7520C(&v67, v57);
    sub_217A5D580();
    sub_217D89C3C();
    v57[6] = v64;
    v57[7] = v65;
    v57[8] = v66;
    v57[2] = v60;
    v57[3] = v61;
    v57[4] = v62;
    v57[5] = v63;
    v57[0] = v58;
    v57[1] = v59;
    sub_217D76040(v57);
    v49 = (v3 + v10[16]);
    v50 = v49[1];
    v51 = v49[2];
    v54 = *v49;
    *&v55 = v50;
    *(&v55 + 1) = v51;
    v96 = 12;
    sub_217AD1A68(v54, v50, v51);
    sub_217A5E184();
    sub_217D89C3C();
    sub_217AD290C(v54, v55, *(&v55 + 1));
    v52 = v3 + v10[17];
    v53 = *(v52 + 24);
    v54 = *v52;
    v55 = *(v52 + 8);
    v56 = v53;
    v96 = 13;
    sub_217A5D95C();

    sub_217D89C3C();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_217D75FEC()
{
  result = qword_2811C7490;
  if (!qword_2811C7490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7490);
  }

  return result;
}

uint64_t sub_217D76040(uint64_t a1)
{
  sub_217A5E974(0, &qword_2811C4338, &type metadata for ReferralGroupData);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void FeedViewEvent.Model.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v46 = sub_217D889CC();
  v45 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v4 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_217D8899C();
  v47 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v48 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217D76ED0(0, &qword_2811BCAE8, MEMORY[0x277D844C8]);
  v51 = v7;
  v49 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v41 - v8;
  v10 = type metadata accessor for FeedViewEvent.Model(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D75FEC();
  v50 = v9;
  v13 = v52;
  sub_217D89E5C();
  if (v13)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v43 = a1;
    v42 = v10;
    v52 = v12;
    v58[0] = 0;
    sub_217A60258(&qword_2811C8408, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEC0]);
    v14 = v48;
    sub_217D89BCC();
    v15 = v52;
    (*(v47 + 32))(v52, v14, v5);
    v58[0] = 1;
    sub_217A60258(&qword_2811C83F0, MEMORY[0x277CEAED0], MEMORY[0x277CEAEE0]);
    v16 = v46;
    sub_217D89BCC();
    v41 = v5;
    v48 = 0;
    v17 = v42;
    (*(v45 + 32))(&v15[v42[5]], v4, v16);
    LOBYTE(v56[0]) = 2;
    sub_217A5B978();
    sub_217D89BCC();
    v18 = &v15[v17[6]];
    *v18 = v58[0];
    *(v18 + 8) = *&v58[8];
    LOBYTE(v56[0]) = 3;
    sub_217A5E738();
    sub_217D89BCC();
    v19 = *&v58[8];
    v20 = *&v58[16];
    v21 = &v15[v17[7]];
    *v21 = *v58;
    *(v21 + 1) = v19;
    *(v21 + 8) = v20;
    LOBYTE(v56[0]) = 4;
    sub_217A4CF30();
    sub_217D89BCC();
    *&v15[v17[8]] = *v58;
    LOBYTE(v56[0]) = 5;
    sub_217A66A84();
    sub_217D89B5C();
    v22 = &v15[v17[9]];
    v23 = *&v58[16];
    *v22 = *v58;
    *(v22 + 1) = v23;
    *(v22 + 2) = v59;
    v68 = 6;
    sub_217A54D08();
    sub_217D89BCC();
    v24 = &v15[v17[10]];
    v25 = v56[1];
    *v24 = v56[0];
    *(v24 + 1) = v25;
    *(v24 + 2) = v56[2];
    v24[48] = v57;
    LOBYTE(v53) = 7;
    sub_217B23D2C();
    sub_217D89B5C();
    v26 = &v15[v17[11]];
    v27 = *&v58[16];
    *v26 = *v58;
    *(v26 + 1) = v27;
    LOBYTE(v53) = 8;
    sub_217B57068();
    sub_217D89BCC();
    v52[v42[12]] = v58[0];
    LOBYTE(v53) = 9;
    sub_217AF6AC0();
    sub_217D89B5C();
    *&v52[v42[13]] = *v58;
    LOBYTE(v53) = 10;
    sub_217ACDC58();
    sub_217D89B5C();
    v28 = &v52[v42[14]];
    v29 = *&v58[16];
    *v28 = *v58;
    *(v28 + 1) = v29;
    *(v28 + 2) = v59;
    v67 = 11;
    sub_217A5D48C();
    sub_217D89B5C();
    v30 = &v52[v42[15]];
    v31 = v64;
    *(v30 + 6) = v63;
    *(v30 + 7) = v31;
    *(v30 + 8) = v65;
    v32 = v60;
    *(v30 + 2) = v59;
    *(v30 + 3) = v32;
    v33 = v62;
    *(v30 + 4) = v61;
    *(v30 + 5) = v33;
    v34 = *&v58[16];
    *v30 = *v58;
    *(v30 + 1) = v34;
    v66 = 12;
    sub_217A5DA70();
    sub_217D89B5C();
    v35 = v54;
    v36 = &v52[v42[16]];
    *v36 = v53;
    *(v36 + 2) = v35;
    v66 = 13;
    sub_217A5D8AC();
    sub_217D89B5C();
    (*(v49 + 8))(v50, v51);
    v37 = v54;
    v38 = v55;
    v39 = v52;
    v40 = &v52[v42[17]];
    *v40 = v53;
    *(v40 + 2) = v37;
    v40[24] = v38;
    sub_217D76F34(v39, v44);
    __swift_destroy_boxed_opaque_existential_1(v43);
    sub_217D76F98(v39);
  }
}

void sub_217D76ED0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217D75FEC();
    v7 = a3(a1, &type metadata for FeedViewEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217D76F34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeedViewEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217D76F98(uint64_t a1)
{
  v2 = type metadata accessor for FeedViewEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217D770CC@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217A608E0(0);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_217A607BC(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  sub_217A607BC(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  (*(*(v11 - 8) + 104))(a2 + v10, v4, v11);
  v12 = a1[8];
  sub_217A607BC(0, &qword_2811C86E8, sub_217A4CF30, sub_217A4CF88, &type metadata for OrientationData);
  (*(*(v13 - 8) + 104))(a2 + v12, v4, v13);
  v14 = a1[9];
  v15 = *MEMORY[0x277CEACF0];
  sub_217A607BC(0, &qword_2811C87A8, sub_217A66A84, sub_217A66ADC, &type metadata for CampaignData);
  (*(*(v16 - 8) + 104))(a2 + v14, v15, v16);
  v17 = a1[10];
  sub_217A607BC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v18 - 8) + 104))(a2 + v17, v4, v18);
  v19 = a1[11];
  sub_217A607BC(0, &qword_2811C8810, sub_217B23D2C, sub_217B23A38, &type metadata for SearchData);
  (*(*(v20 - 8) + 104))(a2 + v19, v15, v20);
  v21 = a1[12];
  sub_217A607BC(0, &qword_2811C87C0, sub_217B57068, sub_217B570C0, &type metadata for ViewEndData);
  (*(*(v22 - 8) + 104))(a2 + v21, v4, v22);
  v23 = a1[13];
  sub_217A607BC(0, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14, &type metadata for TagData);
  (*(*(v24 - 8) + 104))(a2 + v23, v15, v24);
  v25 = a1[14];
  sub_217A607BC(0, &qword_2811C8788, sub_217ACDC58, sub_217ACDCB0, &type metadata for ReferralData);
  (*(*(v26 - 8) + 104))(a2 + v25, v15, v26);
  v27 = a1[15];
  sub_217A607BC(0, &qword_2811C8670, sub_217A5D48C, sub_217A5D580, &type metadata for ReferralGroupData);
  (*(*(v28 - 8) + 104))(a2 + v27, v15, v28);
  v29 = a1[16];
  sub_217A607BC(0, &qword_2811C86A0, sub_217A5DA70, sub_217A5E184, &type metadata for ReferralFeedData);
  (*(*(v30 - 8) + 104))(a2 + v29, v15, v30);
  v31 = a1[17];
  sub_217A607BC(0, &qword_2811C85D0, sub_217A5D8AC, sub_217A5D95C, &type metadata for ReferringArticleData);
  v33 = *(*(v32 - 8) + 104);

  return v33(a2 + v31, v15, v32);
}

void sub_217D77768(uint64_t a1)
{
  sub_217A6018C(319);
  if (v1 <= 0x3F)
  {
    sub_217A608E0(319);
    if (v2 <= 0x3F)
    {
      sub_217A607BC(319, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
      if (v3 <= 0x3F)
      {
        sub_217A607BC(319, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
        if (v4 <= 0x3F)
        {
          sub_217A607BC(319, &qword_2811C86E8, sub_217A4CF30, sub_217A4CF88, &type metadata for OrientationData);
          if (v5 <= 0x3F)
          {
            sub_217A607BC(319, &qword_2811C87A8, sub_217A66A84, sub_217A66ADC, &type metadata for CampaignData);
            if (v6 <= 0x3F)
            {
              sub_217A607BC(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
              if (v7 <= 0x3F)
              {
                sub_217A607BC(319, &qword_2811C8810, sub_217B23D2C, sub_217B23A38, &type metadata for SearchData);
                if (v8 <= 0x3F)
                {
                  sub_217A607BC(319, &qword_2811C87C0, sub_217B57068, sub_217B570C0, &type metadata for ViewEndData);
                  if (v9 <= 0x3F)
                  {
                    sub_217A607BC(319, &qword_2811C84F8, sub_217AF6AC0, sub_217AF6B14, &type metadata for TagData);
                    if (v10 <= 0x3F)
                    {
                      sub_217A607BC(319, &qword_2811C8788, sub_217ACDC58, sub_217ACDCB0, &type metadata for ReferralData);
                      if (v11 <= 0x3F)
                      {
                        sub_217A607BC(319, &qword_2811C8670, sub_217A5D48C, sub_217A5D580, &type metadata for ReferralGroupData);
                        if (v12 <= 0x3F)
                        {
                          sub_217A607BC(319, &qword_2811C86A0, sub_217A5DA70, sub_217A5E184, &type metadata for ReferralFeedData);
                          if (v13 <= 0x3F)
                          {
                            sub_217A607BC(319, &qword_2811C85D0, sub_217A5D8AC, sub_217A5D95C, &type metadata for ReferringArticleData);
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

unint64_t sub_217D77BE8()
{
  result = qword_27CBA58C0;
  if (!qword_27CBA58C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA58C0);
  }

  return result;
}

unint64_t sub_217D77C40()
{
  result = qword_2811C7480;
  if (!qword_2811C7480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7480);
  }

  return result;
}

unint64_t sub_217D77C98()
{
  result = qword_2811C7488;
  if (!qword_2811C7488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C7488);
  }

  return result;
}

uint64_t sub_217D77CEC(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0x6174614464656566 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6174614477656976 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7461746E6569726FLL && a2 == 0xEF617461446E6F69 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E676961706D6163 && a2 == 0xEC00000061746144 || (sub_217D89D4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6144686372616573 && a2 == 0xEA00000000006174 || (sub_217D89D4C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x44646E4577656976 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x61746144676174 && a2 == 0xE700000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6C61727265666572 && a2 == 0xEC00000061746144 || (sub_217D89D4C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000217DD3300 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000217DD3320 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000217DD3340 == a2)
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

uint64_t sub_217D781C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD00000000000001BLL && 0x8000000217DD3360 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_217D89D4C();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_217D78258(uint64_t a1)
{
  v2 = sub_217A67378();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217D78294(uint64_t a1)
{
  v2 = sub_217A67378();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AutoSubscribedData.encode(to:)(void *a1)
{
  sub_217A67314(0, &qword_2811BC6B8, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217A67378();
  sub_217D89E7C();
  sub_217D89CBC();
  return (*(v4 + 8))(v6, v3);
}

uint64_t AutoSubscribedData.init(from:)@<X0>(void *a1@<X0>, _DWORD *a2@<X8>)
{
  sub_217A67314(0, &qword_2811BCA40, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217A67378();
  sub_217D89E5C();
  if (!v2)
  {
    v10 = sub_217D89BDC();
    (*(v7 + 8))(v9, v6);
    *a2 = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_217D785D4()
{
  result = qword_27CBA58C8;
  if (!qword_27CBA58C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA58C8);
  }

  return result;
}

uint64_t sub_217D78628()
{

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t FeedJournalGroupResultData.init(groupName:emitterName:output:duration:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v7 = *a5;
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = v7;
  *(a7 + 40) = a6;
  return result;
}

uint64_t FeedJournalGroupResultData.groupName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FeedJournalGroupResultData.groupName.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t FeedJournalGroupResultData.emitterName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FeedJournalGroupResultData.emitterName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_217D78800()
{
  v1 = 0x6D614E70756F7267;
  v2 = 0x74757074756FLL;
  if (*v0 != 2)
  {
    v2 = 0x6E6F697461727564;
  }

  if (*v0)
  {
    v1 = 0x4E72657474696D65;
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

uint64_t sub_217D78884@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217D79090(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217D788AC(uint64_t a1)
{
  v2 = sub_217D78B20();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217D788E8(uint64_t a1)
{
  v2 = sub_217D78B20();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FeedJournalGroupResultData.encode(to:)(void *a1)
{
  sub_217D78E78(0, &qword_2811BC590, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = v12 - v6;
  v8 = *(v1 + 16);
  v14 = *(v1 + 24);
  v15 = v8;
  v13 = *(v1 + 32);
  v12[1] = *(v1 + 40);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D78B20();
  sub_217D89E7C();
  v21 = 0;
  v9 = v16;
  sub_217D89C0C();
  if (!v9)
  {
    v10 = v13;
    v20 = 1;
    sub_217D89C0C();
    v19 = v10;
    v18 = 2;
    sub_217D78B74();
    sub_217D89CAC();
    v17 = 3;
    sub_217D89CCC();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_217D78B20()
{
  result = qword_2811BF118;
  if (!qword_2811BF118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BF118);
  }

  return result;
}

unint64_t sub_217D78B74()
{
  result = qword_2811BEB58;
  if (!qword_2811BEB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BEB58);
  }

  return result;
}

uint64_t FeedJournalGroupResultData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_217D78E78(0, &qword_27CBA58D0, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D78B20();
  sub_217D89E5C();
  if (!v2)
  {
    v27 = 0;
    v10 = sub_217D89B2C();
    v13 = v12;
    v22 = v10;
    v26 = 1;
    v14 = sub_217D89B2C();
    v16 = v15;
    v21 = v14;
    v24 = 2;
    sub_217D78EDC();
    sub_217D89BCC();
    v20 = v25;
    v23 = 3;
    v17 = sub_217D89BEC();
    (*(v7 + 8))(v9, v6);
    v18 = v21;
    *a2 = v22;
    *(a2 + 8) = v13;
    *(a2 + 16) = v18;
    *(a2 + 24) = v16;
    *(a2 + 32) = v20;
    *(a2 + 40) = v17;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217D78E78(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217D78B20();
    v7 = a3(a1, &type metadata for FeedJournalGroupResultData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217D78EDC()
{
  result = qword_27CBA58D8;
  if (!qword_27CBA58D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA58D8);
  }

  return result;
}

unint64_t sub_217D78F8C()
{
  result = qword_27CBA58E0;
  if (!qword_27CBA58E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA58E0);
  }

  return result;
}

unint64_t sub_217D78FE4()
{
  result = qword_2811BF108;
  if (!qword_2811BF108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BF108);
  }

  return result;
}

unint64_t sub_217D7903C()
{
  result = qword_2811BF110;
  if (!qword_2811BF110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BF110);
  }

  return result;
}

uint64_t sub_217D79090(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D614E70756F7267 && a2 == 0xE900000000000065;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4E72657474696D65 && a2 == 0xEB00000000656D61 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74757074756FLL && a2 == 0xE600000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000)
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

uint64_t WebEmbedData.embedUrl.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t WebEmbedData.embedUrl.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_217D792AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6C72556465626D65 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_217D89D4C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_217D79334(uint64_t a1)
{
  v2 = sub_217D794F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217D79370(uint64_t a1)
{
  v2 = sub_217D794F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WebEmbedData.encode(to:)(void *a1)
{
  sub_217D796D0(0, &qword_2811BC7E8, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D794F8();
  sub_217D89E7C();
  sub_217D89C6C();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_217D794F8()
{
  result = qword_2811C78B8;
  if (!qword_2811C78B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C78B8);
  }

  return result;
}

uint64_t WebEmbedData.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_217D796D0(0, &qword_2811BCB00, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D794F8();
  sub_217D89E5C();
  if (!v2)
  {
    v10 = sub_217D89B8C();
    v12 = v11;
    (*(v7 + 8))(v9, v6);
    *a2 = v10;
    a2[1] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217D796D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217D794F8();
    v7 = a3(a1, &type metadata for WebEmbedData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217D79754(void *a1)
{
  sub_217D796D0(0, &qword_2811BC7E8, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D794F8();
  sub_217D89E7C();
  sub_217D89C6C();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_217D798C4()
{
  result = qword_27CBA58E8;
  if (!qword_27CBA58E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA58E8);
  }

  return result;
}

unint64_t sub_217D7991C()
{
  result = qword_2811C78A8;
  if (!qword_2811C78A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C78A8);
  }

  return result;
}

unint64_t sub_217D79974()
{
  result = qword_2811C78B0;
  if (!qword_2811C78B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C78B0);
  }

  return result;
}

void *URLHandlerContext<A>.urlReferralData()@<X0>(uint64_t *a1@<X8>)
{
  v88 = a1;
  v2 = sub_217D88B6C();
  v89 = *(v2 - 8);
  v90 = v2;
  v3 = MEMORY[0x28223BE20](v2);
  v87 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v84 = &v69 - v5;
  v6 = sub_217D87BAC();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v70 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v92 = &v69 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v69 - v12;
  v14 = sub_217D88B9C();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v78 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v76 = &v69 - v19;
  MEMORY[0x28223BE20](v18);
  v21 = &v69 - v20;
  sub_217D7A128(v96);
  v91 = v1;
  v22 = sub_217D88C2C();
  v23 = *(v22 + 16);
  v83 = v15;
  if (!v23 || (v24 = sub_217D7AC1C(*MEMORY[0x277D766D0]), (v25 & 1) == 0))
  {

LABEL_6:
    sub_217D7ACB0(0);
    sub_217D88C3C();
    sub_217D88B5C();
    v29 = *(v15 + 8);
    v26 = v14;
    v29(v21, v14);
    v30 = sub_217AE6BF8(0x724664656E65706FLL, 0xEA00000000006D6FLL);
    v32 = v31;
    v27 = v7;
    v33 = *(v7 + 8);
    v28 = v6;
    v33(v13, v6);
    if (v32)
    {
      v85 = v32;
      v86 = v30;
    }

    else
    {
      v85 = 0xE000000000000000;
      v86 = 0;
    }

    goto LABEL_9;
  }

  sub_217AE02B0(*(v22 + 56) + 32 * v24, v95);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_6;
  }

  v26 = v14;
  v27 = v7;
  v28 = v6;
  v85 = v94[1];
  v86 = v94[0];
LABEL_9:
  sub_217D7ACB0(0);
  v34 = v91;
  sub_217D88C3C();
  sub_217D88B5C();
  v35 = *(v83 + 8);
  v71 = v26;
  v72 = v35;
  v35(v21, v26);
  sub_217D87B4C();
  v36 = *(v27 + 8);
  v73 = v28;
  v74 = v36;
  v36(v13, v28);
  v37 = sub_217D87B5C();
  v82 = v38;
  v83 = v37;
  sub_217D7A7E8(v34, v95);
  v81 = *&v95[16];
  v77 = *v95;
  v79 = *&v95[40];
  v80 = *&v95[32];
  v39 = v76;
  sub_217D88C3C();
  v40 = v84;
  sub_217D88B8C();
  v41 = v26;
  v42 = v72;
  v72(v39, v41);
  v75 = sub_217D88B7C();
  v76 = v43;
  v44 = v90;
  v45 = *(v89 + 8);
  v45(v40, v90);
  v46 = v78;
  sub_217D88C3C();
  v47 = v87;
  sub_217D88B8C();
  v42(v46, v71);
  sub_217D8954C();
  sub_217D88B7C();
  v49 = v48;

  v45(v47, v44);
  if (v49)
  {
    v50 = v73;
    v51 = v74;
    v52 = v70;
    sub_217D87B6C();

    v62 = sub_217D87BBC();
    v64 = v63;
    v65 = objc_allocWithZone(MEMORY[0x277D35590]);
    sub_217B0A564(v62, v64);
    v66 = sub_217D87BEC();
    sub_217AE010C(v62, v64);
    v67 = [v65 initWithData_];

    v68 = v92;
    v53 = v85;
    if (v67)
    {
      sub_217B55C4C(v93);

      sub_217AE010C(v62, v64);
      v51(v52, v50);
      v51(v68, v50);
      memcpy(v94, v93, sizeof(v94));
      nullsub_1();
      memcpy(v95, v94, sizeof(v95));
    }

    else
    {
      sub_217AE010C(v62, v64);
      v51(v52, v50);
      v51(v68, v50);
      sub_217D7AD08(v95);
    }
  }

  else
  {
    v74(v92, v73);
    sub_217D7AD08(v95);
    v53 = v85;
  }

  v54 = v75;
  v55 = v76;
  if (!v76)
  {
    v54 = 0;
  }

  v56 = v88;
  *v88 = v86;
  v56[1] = v53;
  v56[2] = v83;
  v56[3] = v82;
  v56[4] = 0;
  v56[5] = 0;
  v57 = v81;
  *(v56 + 3) = v77;
  *(v56 + 4) = v57;
  v56[10] = v80;
  v56[11] = v79;
  v56[12] = v54;
  v56[13] = v55;
  v58 = v96[3];
  *(v56 + 9) = v96[2];
  *(v56 + 10) = v58;
  v59 = v96[5];
  *(v56 + 11) = v96[4];
  *(v56 + 12) = v59;
  v60 = v96[1];
  *(v56 + 7) = v96[0];
  *(v56 + 8) = v60;
  return memcpy(v56 + 26, v95, 0x1C8uLL);
}

void *sub_217D7A128@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_217D87BAC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_217D88B9C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_217D7ACB0(0);
  sub_217D88C3C();
  sub_217D88B5C();
  (*(v8 + 8))(v10, v7);
  v11 = sub_217AE6BF8(0x6163696669746F6ELL, 0xEE0044496E6F6974);
  v13 = v12;
  result = (*(v4 + 8))(v6, v3);
  if (v13)
  {
    result = sub_217D7A34C(&v17);
    v15 = v17;
    *a2 = v11;
    *(a2 + 8) = v13;
    *(a2 + 16) = 1;
    *(a2 + 24) = 0u;
    *(a2 + 40) = 0u;
    *(a2 + 56) = 0;
    *(a2 + 72) = 2;
    *(a2 + 73) = v15;
    *(a2 + 74) = 775;
  }

  else
  {
    *(a2 + 72) = 0;
    *a2 = xmmword_217DA3B00;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
  }

  *(a2 + 64) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  return result;
}

unint64_t sub_217D7A34C@<X0>(char *a1@<X8>)
{
  v2 = sub_217D87BAC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v41[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_217D88B9C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v41[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217D7ACB0(0);
  sub_217D88C3C();
  sub_217D88B5C();
  (*(v7 + 8))(v9, v6);
  v10 = sub_217AE6BF8(0xD00000000000001DLL, 0x8000000217DD1010);
  v12 = v11;
  (*(v3 + 8))(v5, v2);
  if (v12)
  {
    v13 = v10;
  }

  else
  {
    v13 = 0;
  }

  if (v12)
  {
    result = v12;
  }

  else
  {
    result = 0xE000000000000000;
  }

  v15 = HIBYTE(result) & 0xF;
  v16 = v13 & 0xFFFFFFFFFFFFLL;
  if ((result & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(result) & 0xF;
  }

  else
  {
    v17 = v13 & 0xFFFFFFFFFFFFLL;
  }

  if (!v17)
  {

    goto LABEL_71;
  }

  if ((result & 0x1000000000000000) != 0)
  {
    v21 = sub_217D7AFE0(v13, result, 10);
    v38 = v37;

    if (v38)
    {
      goto LABEL_71;
    }

    goto LABEL_74;
  }

  if ((result & 0x2000000000000000) == 0)
  {
    if ((v13 & 0x1000000000000000) != 0)
    {
      v18 = ((result & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v39 = result;
      v18 = sub_217D89A2C();
      result = v39;
    }

    v19 = *v18;
    if (v19 == 43)
    {
      if (v16 >= 1)
      {
        v27 = v16 - 1;
        if (v16 != 1)
        {
          v21 = 0;
          if (!v18)
          {
            goto LABEL_70;
          }

          v28 = v18 + 1;
          while (1)
          {
            v29 = *v28 - 48;
            if (v29 > 9)
            {
              break;
            }

            if (!is_mul_ok(v21, 0xAuLL))
            {
              break;
            }

            v24 = __CFADD__(10 * v21, v29);
            v21 = 10 * v21 + v29;
            if (v24)
            {
              break;
            }

            ++v28;
            if (!--v27)
            {
              goto LABEL_68;
            }
          }
        }

        goto LABEL_69;
      }

      goto LABEL_81;
    }

    if (v19 == 45)
    {
      if (v16 >= 1)
      {
        v20 = v16 - 1;
        if (v16 != 1)
        {
          v21 = 0;
          if (!v18)
          {
            goto LABEL_70;
          }

          v22 = v18 + 1;
          while (1)
          {
            v23 = *v22 - 48;
            if (v23 > 9)
            {
              break;
            }

            if (!is_mul_ok(v21, 0xAuLL))
            {
              break;
            }

            v24 = 10 * v21 >= v23;
            v21 = 10 * v21 - v23;
            if (!v24)
            {
              break;
            }

            ++v22;
            if (!--v20)
            {
              goto LABEL_68;
            }
          }
        }

        goto LABEL_69;
      }

      __break(1u);
      goto LABEL_80;
    }

    if (v16)
    {
      v21 = 0;
      if (!v18)
      {
        goto LABEL_70;
      }

      while (1)
      {
        v32 = *v18 - 48;
        if (v32 > 9)
        {
          break;
        }

        if (!is_mul_ok(v21, 0xAuLL))
        {
          break;
        }

        v24 = __CFADD__(10 * v21, v32);
        v21 = 10 * v21 + v32;
        if (v24)
        {
          break;
        }

        ++v18;
        if (!--v16)
        {
          goto LABEL_68;
        }
      }
    }

    goto LABEL_69;
  }

  v41[0] = v13;
  v41[1] = result & 0xFFFFFFFFFFFFFFLL;
  if (v13 != 43)
  {
    if (v13 == 45)
    {
      if (!v15)
      {
LABEL_80:
        __break(1u);
LABEL_81:
        __break(1u);
        goto LABEL_82;
      }

      v18 = (v15 - 1);
      if (v15 != 1)
      {
        v21 = 0;
        v25 = v41 + 1;
        while (1)
        {
          v26 = *v25 - 48;
          if (v26 > 9)
          {
            break;
          }

          if (!is_mul_ok(v21, 0xAuLL))
          {
            break;
          }

          v24 = 10 * v21 >= v26;
          v21 = 10 * v21 - v26;
          if (!v24)
          {
            break;
          }

          ++v25;
          if (!--v18)
          {
            goto LABEL_70;
          }
        }
      }
    }

    else if (v15)
    {
      v21 = 0;
      v33 = v41;
      while (1)
      {
        v34 = *v33 - 48;
        if (v34 > 9)
        {
          break;
        }

        if (!is_mul_ok(v21, 0xAuLL))
        {
          break;
        }

        v24 = __CFADD__(10 * v21, v34);
        v21 = 10 * v21 + v34;
        if (v24)
        {
          break;
        }

        ++v33;
        if (!--v15)
        {
LABEL_68:
          LOBYTE(v18) = 0;
          goto LABEL_70;
        }
      }
    }

LABEL_69:
    v21 = 0;
    LOBYTE(v18) = 1;
LABEL_70:
    v42 = v18;
    v35 = v18;

    if (v35)
    {
LABEL_71:
      v36 = 5;
LABEL_77:
      *a1 = v36;
      return result;
    }

LABEL_74:
    if (v21 <= 3)
    {
      v36 = v21 + 1;
    }

    else
    {
      v36 = 0;
    }

    goto LABEL_77;
  }

  if (v15)
  {
    v18 = (v15 - 1);
    if (v15 != 1)
    {
      v21 = 0;
      v30 = v41 + 1;
      while (1)
      {
        v31 = *v30 - 48;
        if (v31 > 9)
        {
          break;
        }

        if (!is_mul_ok(v21, 0xAuLL))
        {
          break;
        }

        v24 = __CFADD__(10 * v21, v31);
        v21 = 10 * v21 + v31;
        if (v24)
        {
          break;
        }

        ++v30;
        if (!--v18)
        {
          goto LABEL_70;
        }
      }
    }

    goto LABEL_69;
  }

LABEL_82:
  __break(1u);
  return result;
}

uint64_t sub_217D7A7E8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v52 = a2;
  v3 = sub_217D88B6C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v48 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v46 = &v41 - v8;
  MEMORY[0x28223BE20](v7);
  v10 = &v41 - v9;
  v11 = sub_217D88B9C();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v45 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v41 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v41 - v18;
  sub_217D7ACB0(0);
  v49 = a1;
  sub_217D88C3C();
  sub_217D88B8C();
  v20 = *(v12 + 8);
  v47 = v11;
  v20(v19, v11);
  v44 = sub_217D88B7C();
  v22 = v21;
  v23 = *(v4 + 8);
  v50 = v4 + 8;
  v51 = v3;
  result = v23(v10, v3);
  if (v22)
  {
    sub_217D88C3C();
    v25 = v46;
    sub_217D88B8C();
    v43 = v22;
    v26 = v47;
    v20(v17, v47);
    v27 = sub_217D88B7C();
    v41 = v28;
    v42 = v27;
    v29 = v25;
    v30 = v51;
    v23(v29, v51);
    v31 = v45;
    sub_217D88C3C();
    v32 = v48;
    sub_217D88B8C();
    v33 = v26;
    v22 = v43;
    v20(v31, v33);
    v34 = sub_217D88B7C();
    v36 = v35;
    result = v23(v32, v30);
    v38 = v41;
    v37 = v42;
    v39 = v44;
  }

  else
  {
    v39 = 0;
    v37 = 0;
    v38 = 0;
    v34 = 0;
    v36 = 0;
  }

  v40 = v52;
  *v52 = v39;
  v40[1] = v22;
  v40[2] = v37;
  v40[3] = v38;
  v40[4] = v34;
  v40[5] = v36;
  return result;
}

unint64_t sub_217D7AB6C(uint64_t a1)
{
  v2 = sub_217D8999C();

  return sub_217D7AD4C(a1, v2);
}

unint64_t sub_217D7ABB0(uint64_t a1)
{
  sub_217D89E1C();
  MEMORY[0x21CEAD4A0](a1);
  v2 = sub_217D89E3C();

  return sub_217D7AE70(a1, v2);
}

unint64_t sub_217D7AC1C(uint64_t a1)
{
  sub_217D8954C();
  sub_217D89E1C();
  sub_217D895CC();
  v2 = sub_217D89E3C();

  return sub_217D7AEDC(a1, v2);
}

void sub_217D7ACB0(uint64_t a1)
{
  if (!qword_2811BCF70)
  {
    sub_217D88E8C();
    v1 = sub_217D88C4C();
    if (!v2)
    {
      atomic_store(v1, &qword_2811BCF70);
    }
  }
}

double sub_217D7AD08(uint64_t a1)
{
  *(a1 + 448) = 0;
  result = 0.0;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

unint64_t sub_217D7AD4C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_217D7AE14(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x21CEAD020](v9, a1);
      sub_217B74D38(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_217D7AE70(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_217D7AEDC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_217D8954C();
      v8 = v7;
      if (v6 == sub_217D8954C() && v8 == v9)
      {
        break;
      }

      v11 = sub_217D89D4C();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unsigned __int8 *sub_217D7AFE0(uint64_t a1, uint64_t a2, int64_t a3)
{
  v68 = a1;
  v69 = a2;

  result = sub_217D8965C();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_217D7B564(result, v5);
    v38 = v37;

    v5 = v38;
    if ((v38 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_217D89A2C();
      v7 = v67;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v21 = v7 - 1;
        if (v21)
        {
          v22 = a3 + 48;
          v23 = a3 + 55;
          v24 = a3 + 87;
          if (a3 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v13 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v17 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_129;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              if (!is_mul_ok(v13, a3))
              {
                goto LABEL_128;
              }

              v28 = v13 * a3;
              v29 = v26 + v27;
              v20 = __CFADD__(v28, v29);
              v13 = v28 + v29;
              if (v20)
              {
                goto LABEL_128;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_66:
            v17 = v13;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

        goto LABEL_128;
      }

      goto LABEL_133;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v30 = a3 + 48;
        v31 = a3 + 55;
        v32 = a3 + 87;
        if (a3 > 10)
        {
          v30 = 58;
        }

        else
        {
          v32 = 97;
          v31 = 65;
        }

        if (result)
        {
          v13 = 0;
          while (1)
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v30)
            {
              if (v33 < 0x41 || v33 >= v31)
              {
                v17 = 0;
                if (v33 < 0x61 || v33 >= v32)
                {
                  goto LABEL_129;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v35 = v13 * a3;
            v36 = v33 + v34;
            v20 = __CFADD__(v35, v36);
            v13 = v35 + v36;
            if (v20)
            {
              goto LABEL_128;
            }

            ++result;
            if (!--v7)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_67;
      }

LABEL_128:
      v17 = 0;
      goto LABEL_129;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_129;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v18 = v13 * a3;
            v19 = v15 + v16;
            v20 = v18 >= v19;
            v13 = v18 - v19;
            if (!v20)
            {
              goto LABEL_128;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_66;
            }
          }
        }

LABEL_67:
        v17 = 0;
LABEL_129:

        return v17;
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v39 = HIBYTE(v5) & 0xF;
  v68 = v6;
  v69 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v39)
      {
        v41 = 0;
        v59 = a3 + 48;
        v60 = a3 + 55;
        v61 = a3 + 87;
        if (a3 > 10)
        {
          v59 = 58;
        }

        else
        {
          v61 = 97;
          v60 = 65;
        }

        v62 = &v68;
        while (1)
        {
          v63 = *v62;
          if (v63 < 0x30 || v63 >= v59)
          {
            if (v63 < 0x41 || v63 >= v60)
            {
              v17 = 0;
              if (v63 < 0x61 || v63 >= v61)
              {
                goto LABEL_129;
              }

              v64 = -87;
            }

            else
            {
              v64 = -55;
            }
          }

          else
          {
            v64 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v65 = v41 * a3;
          v66 = v63 + v64;
          v20 = __CFADD__(v65, v66);
          v41 = v65 + v66;
          if (v20)
          {
            goto LABEL_128;
          }

          v62 = (v62 + 1);
          if (!--v39)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v39)
    {
      v40 = v39 - 1;
      if (v40)
      {
        v41 = 0;
        v42 = a3 + 48;
        v43 = a3 + 55;
        v44 = a3 + 87;
        if (a3 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v68 + 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              v17 = 0;
              if (v46 < 0x61 || v46 >= v44)
              {
                goto LABEL_129;
              }

              v47 = -87;
            }

            else
            {
              v47 = -55;
            }
          }

          else
          {
            v47 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v48 = v41 * a3;
          v49 = v46 + v47;
          v20 = v48 >= v49;
          v41 = v48 - v49;
          if (!v20)
          {
            goto LABEL_128;
          }

          ++v45;
          if (!--v40)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v39)
  {
    v50 = v39 - 1;
    if (v50)
    {
      v41 = 0;
      v51 = a3 + 48;
      v52 = a3 + 55;
      v53 = a3 + 87;
      if (a3 > 10)
      {
        v51 = 58;
      }

      else
      {
        v53 = 97;
        v52 = 65;
      }

      v54 = &v68 + 1;
      do
      {
        v55 = *v54;
        if (v55 < 0x30 || v55 >= v51)
        {
          if (v55 < 0x41 || v55 >= v52)
          {
            v17 = 0;
            if (v55 < 0x61 || v55 >= v53)
            {
              goto LABEL_129;
            }

            v56 = -87;
          }

          else
          {
            v56 = -55;
          }
        }

        else
        {
          v56 = -48;
        }

        if (!is_mul_ok(v41, a3))
        {
          goto LABEL_128;
        }

        v57 = v41 * a3;
        v58 = v55 + v56;
        v20 = __CFADD__(v57, v58);
        v41 = v57 + v58;
        if (v20)
        {
          goto LABEL_128;
        }

        ++v54;
        --v50;
      }

      while (v50);
LABEL_127:
      v17 = v41;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_217D7B564(uint64_t a1, unint64_t a2)
{
  v2 = sub_217D8966C();
  v6 = sub_217D7B5E4(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_217D7B5E4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_217D898FC();
    if (!v9 || (v10 = v9, v11 = sub_217D7B73C(v9, 0), v12 = sub_217D7B7A4(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_217D895BC();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_217D895BC();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_217D89A2C();
LABEL_4:

  return sub_217D895BC();
}

void *sub_217D7B73C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  sub_217D7BA40();
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unint64_t sub_217D7B7A4(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_217D7B9C4(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_217D8962C();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_217D89A2C();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_217D7B9C4(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_217D8960C();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_217D7B9C4(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_217D8963C();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x21CEACC90](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

void sub_217D7BA40()
{
  if (!qword_27CBA58F0)
  {
    v0 = sub_217D89D0C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CBA58F0);
    }
  }
}

uint64_t ArticleScoreSummaryDataList.articleScoreSummaryData.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t sub_217D7BB10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000017 && 0x8000000217DD33C0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_217D89D4C();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_217D7BBA4(uint64_t a1)
{
  v2 = sub_217D7BDC4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217D7BBE0(uint64_t a1)
{
  v2 = sub_217D7BDC4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ArticleScoreSummaryDataList.encode(to:)(void *a1)
{
  sub_217D7C038(0, &qword_2811BC578, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = v10 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D7BDC4();

  sub_217D89E7C();
  v10[1] = v8;
  sub_217D7BE18();
  sub_217D7C09C(&qword_2811BCDB8, sub_217BFB730, MEMORY[0x277D83948]);
  sub_217D89CAC();

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_217D7BDC4()
{
  result = qword_2811BEDE8;
  if (!qword_2811BEDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BEDE8);
  }

  return result;
}

void sub_217D7BE18()
{
  if (!qword_2811BCDC0)
  {
    v0 = sub_217D8971C();
    if (!v1)
    {
      atomic_store(v0, &qword_2811BCDC0);
    }
  }
}

uint64_t ArticleScoreSummaryDataList.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_217D7C038(0, &qword_27CBA58F8, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D7BDC4();
  sub_217D89E5C();
  if (!v2)
  {
    sub_217D7BE18();
    sub_217D7C09C(&qword_27CBA5900, sub_217BFB6D8, MEMORY[0x277D83978]);
    sub_217D89BCC();
    (*(v7 + 8))(v9, v6);
    *a2 = v11[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217D7C038(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217D7BDC4();
    v7 = a3(a1, &type metadata for ArticleScoreSummaryDataList.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217D7C09C(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_217D7BE18();
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_217D7C164()
{
  result = qword_27CBA5908;
  if (!qword_27CBA5908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA5908);
  }

  return result;
}

unint64_t sub_217D7C1BC()
{
  result = qword_2811BEDD8;
  if (!qword_2811BEDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BEDD8);
  }

  return result;
}

unint64_t sub_217D7C214()
{
  result = qword_2811BEDE0;
  if (!qword_2811BEDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BEDE0);
  }

  return result;
}

uint64_t sub_217D7C268()
{
  v0 = sub_217D881BC();
  __swift_allocate_value_buffer(v0, qword_27CBA5910);
  v1 = __swift_project_value_buffer(v0, qword_27CBA5910);
  *v1 = 0x7364612E6D6F63;
  *(v1 + 8) = 0xE700000000000000;
  *(v1 + 16) = 3;
  *(v1 + 24) = 0;
  v2 = *(*(v0 - 8) + 104);

  return v2();
}

uint64_t sub_217D7C354()
{
  v0 = sub_217D8856C();
  __swift_allocate_value_buffer(v0, qword_27CBA5928);
  v1 = __swift_project_value_buffer(v0, qword_27CBA5928);
  v2 = *MEMORY[0x277CEADA8];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_217D7C414()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA5940);
  __swift_project_value_buffer(v0, qword_27CBA5940);
  return sub_217D8866C();
}

uint64_t VideoAdEngagementEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t VideoAdEngagementEvent.adUserData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for VideoAdEngagementEvent(0) + 20);
  sub_217D7D038(0, &qword_2811C8830, sub_217A5867C, sub_217A586D4, &type metadata for AdUserData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t VideoAdEngagementEvent.adUserData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for VideoAdEngagementEvent(0) + 20);
  sub_217D7D038(0, &qword_2811C8830, sub_217A5867C, sub_217A586D4, &type metadata for AdUserData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t VideoAdEngagementEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for VideoAdEngagementEvent(0) + 24);
  sub_217D7D038(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t VideoAdEngagementEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for VideoAdEngagementEvent(0) + 24);
  sub_217D7D038(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t VideoAdEngagementEvent.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for VideoAdEngagementEvent(0) + 28);
  sub_217D7D038(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t VideoAdEngagementEvent.channelData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for VideoAdEngagementEvent(0) + 28);
  sub_217D7D038(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t VideoAdEngagementEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for VideoAdEngagementEvent(0) + 32);
  sub_217D7D038(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t VideoAdEngagementEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for VideoAdEngagementEvent(0) + 32);
  sub_217D7D038(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t VideoAdEngagementEvent.videoAdData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for VideoAdEngagementEvent(0) + 36);
  sub_217D7D038(0, &qword_27CBA16C8, sub_217BD4434, sub_217BD4488, &type metadata for VideoAdData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t VideoAdEngagementEvent.videoAdData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for VideoAdEngagementEvent(0) + 36);
  sub_217D7D038(0, &qword_27CBA16C8, sub_217BD4434, sub_217BD4488, &type metadata for VideoAdData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t VideoAdEngagementEvent.videoAdEngagementData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for VideoAdEngagementEvent(0) + 40);
  sub_217D7D038(0, &qword_27CBA5958, sub_217CEF580, sub_217CEF5D8, &type metadata for VideoAdEngagementData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t VideoAdEngagementEvent.videoAdEngagementData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for VideoAdEngagementEvent(0) + 40);
  sub_217D7D038(0, &qword_27CBA5958, sub_217CEF580, sub_217CEF5D8, &type metadata for VideoAdEngagementData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t VideoAdEngagementEvent.adPlacementData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for VideoAdEngagementEvent(0) + 44);
  sub_217D7D038(0, &qword_2811C8710, sub_217B3CE30, sub_217B3CE84, &type metadata for AdPlacementData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217D7D038(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
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

uint64_t VideoAdEngagementEvent.adPlacementData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for VideoAdEngagementEvent(0) + 44);
  sub_217D7D038(0, &qword_2811C8710, sub_217B3CE30, sub_217B3CE84, &type metadata for AdPlacementData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t VideoAdEngagementEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for VideoAdEngagementEvent(0);
  v5 = v4[5];
  sub_217D7D038(0, &qword_2811C8830, sub_217A5867C, sub_217A586D4, &type metadata for AdUserData);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217D7D038(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  sub_217D7D038(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  (*(*(v10 - 8) + 104))(a1 + v9, v2, v10);
  v11 = v4[8];
  v12 = *MEMORY[0x277CEACF0];
  sub_217D7D038(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  (*(*(v13 - 8) + 104))(a1 + v11, v12, v13);
  v14 = v4[9];
  sub_217D7D038(0, &qword_27CBA16C8, sub_217BD4434, sub_217BD4488, &type metadata for VideoAdData);
  (*(*(v15 - 8) + 104))(a1 + v14, v2, v15);
  v16 = v4[10];
  sub_217D7D038(0, &qword_27CBA5958, sub_217CEF580, sub_217CEF5D8, &type metadata for VideoAdEngagementData);
  (*(*(v17 - 8) + 104))(a1 + v16, v2, v17);
  v18 = v4[11];
  sub_217D7D038(0, &qword_2811C8710, sub_217B3CE30, sub_217B3CE84, &type metadata for AdPlacementData);
  v20 = *(*(v19 - 8) + 104);

  return v20(a1 + v18, v2, v19);
}

uint64_t VideoAdEngagementEvent.Model.adUserData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for VideoAdEngagementEvent.Model(0) + 20));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t VideoAdEngagementEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for VideoAdEngagementEvent.Model(0) + 24));
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

uint64_t VideoAdEngagementEvent.Model.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for VideoAdEngagementEvent.Model(0) + 28);
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

uint64_t VideoAdEngagementEvent.Model.feedData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for VideoAdEngagementEvent.Model(0) + 32));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;

  return sub_217AD1A68(v4, v5, v6);
}

uint64_t VideoAdEngagementEvent.Model.videoAdData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for VideoAdEngagementEvent.Model(0) + 36);
  v5 = *(v3 + 8);
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
}

uint64_t VideoAdEngagementEvent.Model.videoAdEngagementData.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for VideoAdEngagementEvent.Model(0);
  *a1 = *(v1 + *(result + 40));
  return result;
}

uint64_t VideoAdEngagementEvent.Model.adPlacementData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for VideoAdEngagementEvent.Model(0) + 44));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

__n128 VideoAdEngagementEvent.Model.init(eventData:adUserData:userBundleSubscriptionContextData:channelData:feedData:videoAdData:videoAdEngagementData:adPlacementData:)@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, __n128 *a5@<X4>, int *a6@<X5>, __int16 *a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>)
{
  v12 = *a2;
  v13 = a2[1];
  v14 = *a4;
  v15 = a4[1];
  v16 = *(a4 + 16);
  v17 = *(a4 + 17);
  v18 = a4[3];
  v31 = *a5;
  v29 = a4[4];
  v30 = a5[1].n128_u64[0];
  v32 = *(a6 + 2);
  v33 = *(a6 + 1);
  v34 = *a6;
  v35 = *a7;
  v36 = a8[1];
  v37 = *a8;
  v19 = sub_217D8899C();
  (*(*(v19 - 8) + 32))(a9, a1, v19);
  v20 = type metadata accessor for VideoAdEngagementEvent.Model(0);
  v21 = (a9 + v20[5]);
  *v21 = v12;
  v21[1] = v13;
  v22 = a9 + v20[6];
  v23 = *(a3 + 16);
  *v22 = *a3;
  *(v22 + 16) = v23;
  *(v22 + 32) = *(a3 + 32);
  *(v22 + 48) = *(a3 + 48);
  v24 = a9 + v20[7];
  *v24 = v14;
  *(v24 + 8) = v15;
  *(v24 + 16) = v16;
  *(v24 + 17) = v17;
  *(v24 + 24) = v18;
  *(v24 + 32) = v29;
  v25 = (a9 + v20[8]);
  result = v31;
  *v25 = v31;
  v25[1].n128_u64[0] = v30;
  v27 = a9 + v20[9];
  *v27 = v34;
  *(v27 + 8) = v33;
  *(v27 + 16) = v32;
  *(a9 + v20[10]) = v35;
  v28 = (a9 + v20[11]);
  *v28 = v37;
  v28[1] = v36;
  return result;
}

unint64_t sub_217D7D964()
{
  v1 = *v0;
  v2 = 0x746144746E657665;
  v3 = 0x6D6563616C506461;
  if (v1 == 6)
  {
    v3 = 0xD000000000000015;
  }

  v4 = 0x6174614464656566;
  if (v1 != 4)
  {
    v4 = 0x4464416F65646976;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000021;
  if (v1 != 2)
  {
    v5 = 0x446C656E6E616863;
  }

  if (*v0)
  {
    v2 = 0x6144726573556461;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_217D7DA88@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217D7F240(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217D7DAB0(uint64_t a1)
{
  v2 = sub_217D7E0A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217D7DAEC(uint64_t a1)
{
  v2 = sub_217D7E0A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t VideoAdEngagementEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217D7E7A8(0, &qword_27CBA5960, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v32 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D7E0A4();
  sub_217D89E7C();
  LOBYTE(v45[0]) = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410, MEMORY[0x277CEAEB8]);
  sub_217D89CAC();
  if (!v2)
  {
    v10 = type metadata accessor for VideoAdEngagementEvent.Model(0);
    v11 = (v3 + v10[5]);
    v12 = v11[1];
    v48 = *v11;
    v49 = v12;
    v47 = 1;
    sub_217A586D4();

    sub_217D89CAC();

    v13 = (v3 + v10[6]);
    v14 = v13[1];
    v45[0] = *v13;
    v45[1] = v14;
    v16 = *v13;
    v15 = v13[1];
    v45[2] = v13[2];
    v46 = *(v13 + 48);
    v41 = v16;
    v42 = v15;
    v43 = v13[2];
    v44 = *(v13 + 48);
    v40 = 2;
    sub_217ACC004(v45, v38);
    sub_217A55B98();
    sub_217D89CAC();
    v38[0] = v41;
    v38[1] = v42;
    v38[2] = v43;
    v39 = v44;
    sub_217ACC69C(v38);
    v18 = v3 + v10[7];
    v19 = *(v18 + 8);
    v20 = *(v18 + 16);
    v21 = *(v18 + 17);
    v22 = *(v18 + 24);
    v23 = *(v18 + 32);
    v33 = *v18;
    v34 = v19;
    LOBYTE(v35) = v20;
    BYTE1(v35) = v21;
    v36 = v22;
    v37 = v23;
    HIBYTE(v32) = 3;
    sub_217AD084C();

    sub_217D89CAC();

    v24 = (v3 + v10[8]);
    v25 = v24[1];
    v26 = v24[2];
    v33 = *v24;
    v34 = v25;
    v35 = v26;
    HIBYTE(v32) = 4;
    sub_217AD1A68(v33, v25, v26);
    sub_217A5BA2C();
    sub_217D89C3C();
    sub_217AD290C(v33, v34, v35);
    v27 = v3 + v10[9];
    v28 = *(v27 + 8);
    v29 = *(v27 + 16);
    LODWORD(v33) = *v27;
    v34 = v28;
    v35 = v29;
    HIBYTE(v32) = 5;
    sub_217BD4488();

    sub_217D89CAC();

    LOWORD(v33) = *(v3 + v10[10]);
    HIBYTE(v32) = 6;
    sub_217CEF5D8();
    sub_217D89CAC();
    v30 = (v3 + v10[11]);
    v31 = v30[1];
    v33 = *v30;
    v34 = v31;
    HIBYTE(v32) = 7;
    sub_217B3CE84();

    sub_217D89CAC();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_217D7E0A4()
{
  result = qword_27CBA5968;
  if (!qword_27CBA5968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA5968);
  }

  return result;
}

uint64_t VideoAdEngagementEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v4 = sub_217D8899C();
  v33 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v35 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217D7E7A8(0, &qword_27CBA5970, MEMORY[0x277D844C8]);
  v37 = v6;
  v34 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v32 - v7;
  v9 = type metadata accessor for VideoAdEngagementEvent.Model(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D7E0A4();
  v36 = v8;
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v34;
  LOBYTE(v42) = 0;
  sub_217A602A0(&qword_2811C8408, MEMORY[0x277CEAEC0]);
  v13 = v35;
  sub_217D89BCC();
  (*(v33 + 32))(v11, v13, v4);
  LOBYTE(v38) = 1;
  sub_217A5867C();
  sub_217D89BCC();
  v35 = 0;
  v14 = *(&v42 + 1);
  v15 = &v11[v9[5]];
  *v15 = v42;
  *(v15 + 1) = v14;
  v47 = 2;
  sub_217A54D08();
  sub_217D89BCC();
  v16 = &v11[v9[6]];
  v17 = v43;
  *v16 = v42;
  *(v16 + 1) = v17;
  *(v16 + 2) = v44;
  v16[48] = v45;
  v46 = 3;
  sub_217AD07F8();
  sub_217D89BCC();
  v18 = *(&v38 + 1);
  v19 = v39;
  v20 = BYTE1(v39);
  v21 = v40;
  v22 = v41;
  v23 = &v11[v9[7]];
  *v23 = v38;
  *(v23 + 1) = v18;
  v23[16] = v19;
  v23[17] = v20;
  *(v23 + 3) = v21;
  *(v23 + 4) = v22;
  v46 = 4;
  sub_217A5B978();
  sub_217D89B5C();
  v24 = v39;
  v25 = &v11[v9[8]];
  *v25 = v38;
  *(v25 + 2) = v24;
  v46 = 5;
  sub_217BD4434();
  sub_217D89BCC();
  v26 = *(&v38 + 1);
  v27 = v39;
  v28 = &v11[v9[9]];
  *v28 = v38;
  *(v28 + 1) = v26;
  *(v28 + 2) = v27;
  v46 = 6;
  sub_217CEF580();
  sub_217D89BCC();
  *&v11[v9[10]] = v38;
  v46 = 7;
  sub_217B3CE30();
  sub_217D89BCC();
  (*(v12 + 8))(v36, v37);
  v29 = *(&v38 + 1);
  v30 = &v11[v9[11]];
  *v30 = v38;
  *(v30 + 1) = v29;
  sub_217D7E80C(v11, v32);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_217D7E870(v11);
}

void sub_217D7E7A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217D7E0A4();
    v7 = a3(a1, &type metadata for VideoAdEngagementEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217D7E80C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VideoAdEngagementEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217D7E870(uint64_t a1)
{
  v2 = type metadata accessor for VideoAdEngagementEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217D7E9A4@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217D7D038(0, &qword_2811C8830, sub_217A5867C, sub_217A586D4, &type metadata for AdUserData);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_217D7D038(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  sub_217D7D038(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  (*(*(v11 - 8) + 104))(a2 + v10, v4, v11);
  v12 = a1[8];
  v13 = *MEMORY[0x277CEACF0];
  sub_217D7D038(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  (*(*(v14 - 8) + 104))(a2 + v12, v13, v14);
  v15 = a1[9];
  sub_217D7D038(0, &qword_27CBA16C8, sub_217BD4434, sub_217BD4488, &type metadata for VideoAdData);
  (*(*(v16 - 8) + 104))(a2 + v15, v4, v16);
  v17 = a1[10];
  sub_217D7D038(0, &qword_27CBA5958, sub_217CEF580, sub_217CEF5D8, &type metadata for VideoAdEngagementData);
  (*(*(v18 - 8) + 104))(a2 + v17, v4, v18);
  v19 = a1[11];
  sub_217D7D038(0, &qword_2811C8710, sub_217B3CE30, sub_217B3CE84, &type metadata for AdPlacementData);
  v21 = *(*(v20 - 8) + 104);

  return v21(a2 + v19, v4, v20);
}

void sub_217D7EDA8(uint64_t a1)
{
  sub_217A6018C(319);
  if (v1 <= 0x3F)
  {
    sub_217D7D038(319, &qword_2811C8830, sub_217A5867C, sub_217A586D4, &type metadata for AdUserData);
    if (v2 <= 0x3F)
    {
      sub_217D7D038(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
      if (v3 <= 0x3F)
      {
        sub_217D7D038(319, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
        if (v4 <= 0x3F)
        {
          sub_217D7D038(319, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
          if (v5 <= 0x3F)
          {
            sub_217D7D038(319, &qword_27CBA16C8, sub_217BD4434, sub_217BD4488, &type metadata for VideoAdData);
            if (v6 <= 0x3F)
            {
              sub_217D7D038(319, &qword_27CBA5958, sub_217CEF580, sub_217CEF5D8, &type metadata for VideoAdEngagementData);
              if (v7 <= 0x3F)
              {
                sub_217D7D038(319, &qword_2811C8710, sub_217B3CE30, sub_217B3CE84, &type metadata for AdPlacementData);
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

void sub_217D7F06C(uint64_t a1)
{
  sub_217D8899C();
  if (v1 <= 0x3F)
  {
    sub_217AD6554();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_217D7F13C()
{
  result = qword_27CBA5998;
  if (!qword_27CBA5998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA5998);
  }

  return result;
}

unint64_t sub_217D7F194()
{
  result = qword_27CBA59A0;
  if (!qword_27CBA59A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA59A0);
  }

  return result;
}

unint64_t sub_217D7F1EC()
{
  result = qword_27CBA59A8;
  if (!qword_27CBA59A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA59A8);
  }

  return result;
}

uint64_t sub_217D7F240(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6144726573556461 && a2 == 0xEA00000000006174 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x446C656E6E616863 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6174614464656566 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x4464416F65646976 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000217DD33E0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6D6563616C506461 && a2 == 0xEF61746144746E65)
  {

    return 7;
  }

  else
  {
    v6 = sub_217D89D4C();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_217D7F5C4()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_2811C0B78);
  __swift_project_value_buffer(v0, qword_2811C0B78);
  return sub_217D8866C();
}

uint64_t WebEmbedExposureEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t WebEmbedExposureEvent.timedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WebEmbedExposureEvent(0) + 20);
  sub_217A608E0(0);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WebEmbedExposureEvent.groupData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WebEmbedExposureEvent(0) + 24);
  sub_217D802D8(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WebEmbedExposureEvent.groupData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WebEmbedExposureEvent(0) + 24);
  sub_217D802D8(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WebEmbedExposureEvent.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WebEmbedExposureEvent(0) + 28);
  sub_217D802D8(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WebEmbedExposureEvent.feedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WebEmbedExposureEvent(0) + 28);
  sub_217D802D8(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WebEmbedExposureEvent.feedPositionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WebEmbedExposureEvent(0) + 32);
  sub_217D802D8(0, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710, &type metadata for FeedPositionData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WebEmbedExposureEvent.feedPositionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WebEmbedExposureEvent(0) + 32);
  sub_217D802D8(0, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710, &type metadata for FeedPositionData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WebEmbedExposureEvent.inGroupPositionData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WebEmbedExposureEvent(0) + 36);
  sub_217D802D8(0, &qword_2811C8608, sub_217B4FFA8, sub_217B4FFFC, &type metadata for InGroupPositionData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WebEmbedExposureEvent.inGroupPositionData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WebEmbedExposureEvent(0) + 36);
  sub_217D802D8(0, &qword_2811C8608, sub_217B4FFA8, sub_217B4FFFC, &type metadata for InGroupPositionData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WebEmbedExposureEvent.webEmbedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WebEmbedExposureEvent(0) + 40);
  sub_217D802D8(0, &qword_2811C8780, sub_217AE8974, sub_217AE89C8, &type metadata for WebEmbedData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WebEmbedExposureEvent.webEmbedData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WebEmbedExposureEvent(0) + 40);
  sub_217D802D8(0, &qword_2811C8780, sub_217AE8974, sub_217AE89C8, &type metadata for WebEmbedData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WebEmbedExposureEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WebEmbedExposureEvent(0) + 44);
  sub_217D802D8(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WebEmbedExposureEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WebEmbedExposureEvent(0) + 44);
  sub_217D802D8(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WebEmbedExposureEvent.dismissalData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WebEmbedExposureEvent(0) + 48);
  sub_217D802D8(0, &qword_2811C8770, sub_217AD7D98, sub_217AD7DEC, &type metadata for DismissalData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217D802D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
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

uint64_t WebEmbedExposureEvent.dismissalData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for WebEmbedExposureEvent(0) + 48);
  sub_217D802D8(0, &qword_2811C8770, sub_217AD7D98, sub_217AD7DEC, &type metadata for DismissalData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t WebEmbedExposureEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for WebEmbedExposureEvent(0);
  v5 = v4[5];
  sub_217A608E0(0);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  v8 = *MEMORY[0x277CEACF0];
  sub_217D802D8(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  (*(*(v9 - 8) + 104))(a1 + v7, v8, v9);
  v10 = v4[7];
  sub_217D802D8(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  (*(*(v11 - 8) + 104))(a1 + v10, v2, v11);
  v12 = v4[8];
  sub_217D802D8(0, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710, &type metadata for FeedPositionData);
  (*(*(v13 - 8) + 104))(a1 + v12, v2, v13);
  v14 = v4[9];
  sub_217D802D8(0, &qword_2811C8608, sub_217B4FFA8, sub_217B4FFFC, &type metadata for InGroupPositionData);
  (*(*(v15 - 8) + 104))(a1 + v14, v8, v15);
  v16 = v4[10];
  sub_217D802D8(0, &qword_2811C8780, sub_217AE8974, sub_217AE89C8, &type metadata for WebEmbedData);
  (*(*(v17 - 8) + 104))(a1 + v16, v2, v17);
  v18 = v4[11];
  sub_217D802D8(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v19 - 8) + 104))(a1 + v18, v2, v19);
  v20 = v4[12];
  sub_217D802D8(0, &qword_2811C8770, sub_217AD7D98, sub_217AD7DEC, &type metadata for DismissalData);
  v22 = *(*(v21 - 8) + 104);

  return v22(a1 + v20, v8, v21);
}

uint64_t sub_217D808B8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t WebEmbedExposureEvent.Model.groupData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for WebEmbedExposureEvent.Model(0) + 24));
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

uint64_t WebEmbedExposureEvent.Model.feedData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for WebEmbedExposureEvent.Model(0) + 28);
  v5 = *(v3 + 8);
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
}

uint64_t WebEmbedExposureEvent.Model.feedPositionData.getter@<X0>(_DWORD *a1@<X8>)
{
  result = type metadata accessor for WebEmbedExposureEvent.Model(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t WebEmbedExposureEvent.Model.inGroupPositionData.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for WebEmbedExposureEvent.Model(0);
  v4 = (v1 + *(result + 36));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 4);
  *a1 = v5;
  *(a1 + 4) = v4;
  return result;
}

uint64_t WebEmbedExposureEvent.Model.webEmbedData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for WebEmbedExposureEvent.Model(0) + 40));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t WebEmbedExposureEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for WebEmbedExposureEvent.Model(0) + 44));
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

uint64_t WebEmbedExposureEvent.Model.dismissalData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for WebEmbedExposureEvent.Model(0) + 48));
  v5 = *v3;
  v4 = v3[1];
  LOBYTE(v3) = *(v3 + 16);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

__n128 WebEmbedExposureEvent.Model.init(eventData:timedData:groupData:feedData:feedPositionData:inGroupPositionData:webEmbedData:userBundleSubscriptionContextData:dismissalData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X2>, char *a4@<X3>, int *a5@<X4>, int *a6@<X5>, uint64_t *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t *a10)
{
  v15 = *a4;
  v17 = *(a4 + 1);
  v16 = *(a4 + 2);
  v18 = *a5;
  v35 = *(a6 + 4);
  v36 = *a6;
  v37 = a7[1];
  v38 = *a7;
  v40 = a10[1];
  v41 = *a10;
  v39 = *(a10 + 16);
  v19 = sub_217D8899C();
  (*(*(v19 - 8) + 32))(a9, a1, v19);
  v20 = type metadata accessor for WebEmbedExposureEvent.Model(0);
  v21 = v20[5];
  v22 = sub_217D889CC();
  (*(*(v22 - 8) + 32))(a9 + v21, a2, v22);
  v23 = (a9 + v20[6]);
  v24 = a3[3];
  v23[2] = a3[2];
  v23[3] = v24;
  v25 = a3[1];
  *v23 = *a3;
  v23[1] = v25;
  v26 = a3[8];
  v23[7] = a3[7];
  v23[8] = v26;
  v27 = a3[6];
  v23[5] = a3[5];
  v23[6] = v27;
  v23[4] = a3[4];
  v28 = a9 + v20[7];
  *v28 = v15;
  *(v28 + 8) = v17;
  *(v28 + 16) = v16;
  *(a9 + v20[8]) = v18;
  v29 = a9 + v20[9];
  *v29 = v36;
  *(v29 + 4) = v35;
  v30 = (a9 + v20[10]);
  *v30 = v38;
  v30[1] = v37;
  v31 = a9 + v20[11];
  v32 = *(a8 + 16);
  *v31 = *a8;
  *(v31 + 16) = v32;
  result = *(a8 + 32);
  *(v31 + 32) = result;
  *(v31 + 48) = *(a8 + 48);
  v34 = a9 + v20[12];
  *v34 = v41;
  *(v34 + 8) = v40;
  *(v34 + 16) = v39;
  return result;
}

unint64_t sub_217D80D74(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x746144746E657665;
    v6 = 0x74614470756F7267;
    if (a1 != 2)
    {
      v6 = 0x6174614464656566;
    }

    if (a1)
    {
      v5 = 0x74614464656D6974;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x6465626D45626577;
    v2 = 0xD000000000000021;
    if (a1 != 7)
    {
      v2 = 0x617373696D736964;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000010;
    if (a1 != 4)
    {
      v3 = 0xD000000000000013;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_217D80EB4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217D82AE0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217D80EDC(uint64_t a1)
{
  v2 = sub_217D81500();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217D80F18(uint64_t a1)
{
  v2 = sub_217D81500();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t WebEmbedExposureEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217D81F80(0, &qword_27CBA59B0, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v36[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D81500();
  sub_217D89E7C();
  LOBYTE(v65) = 0;
  sub_217D8899C();
  sub_217A60258(&unk_2811C8410, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEB8]);
  sub_217D89CAC();
  if (!v2)
  {
    v10 = type metadata accessor for WebEmbedExposureEvent.Model(0);
    v74[0] = 1;
    sub_217D889CC();
    sub_217A60258(&qword_2811C83F8, MEMORY[0x277CEAED0], MEMORY[0x277CEAED8]);
    sub_217D89CAC();
    v11 = (v3 + v10[6]);
    v12 = v11[6];
    v13 = v11[4];
    v70 = v11[5];
    v71 = v12;
    v14 = v11[6];
    v15 = v11[8];
    v72 = v11[7];
    v73 = v15;
    v16 = v11[2];
    v17 = *v11;
    v66 = v11[1];
    v67 = v16;
    v18 = v11[2];
    v19 = v11[4];
    v68 = v11[3];
    v69 = v19;
    v20 = *v11;
    v62 = v14;
    v63 = v72;
    v64 = v11[8];
    v65 = v20;
    v58 = v18;
    v59 = v68;
    v60 = v13;
    v61 = v70;
    v56 = v17;
    v57 = v66;
    v55 = 2;
    sub_217AD87FC(&v65, v54);
    sub_217A5D3B4();
    sub_217D89C3C();
    v54[6] = v62;
    v54[7] = v63;
    v54[8] = v64;
    v54[2] = v58;
    v54[3] = v59;
    v54[4] = v60;
    v54[5] = v61;
    v54[0] = v56;
    v54[1] = v57;
    sub_217AD96E8(v54);
    v21 = v3 + v10[7];
    v22 = *(v21 + 8);
    v23 = *(v21 + 16);
    LOBYTE(v47) = *v21;
    *(&v47 + 1) = v22;
    *&v48 = v23;
    LOBYTE(v43) = 3;
    sub_217A5BA2C();

    sub_217D89CAC();

    LODWORD(v47) = *(v3 + v10[8]);
    LOBYTE(v43) = 4;
    sub_217AD7710();
    sub_217D89CAC();
    v24 = (v3 + v10[9]);
    v25 = *v24;
    LOBYTE(v24) = *(v24 + 4);
    LODWORD(v47) = v25;
    BYTE4(v47) = v24;
    LOBYTE(v43) = 5;
    sub_217B4FFFC();
    sub_217D89C3C();
    v27 = (v3 + v10[10]);
    v28 = v27[1];
    v52 = *v27;
    v53 = v28;
    v51 = 6;
    sub_217AE89C8();

    sub_217D89CAC();

    v29 = (v3 + v10[11]);
    v30 = v29[1];
    v47 = *v29;
    v48 = v30;
    v32 = *v29;
    v31 = v29[1];
    v49 = v29[2];
    v50 = *(v29 + 48);
    v43 = v32;
    v44 = v31;
    v45 = v29[2];
    v46 = *(v29 + 48);
    v42 = 7;
    sub_217ACC004(&v47, v40);
    sub_217A55B98();
    sub_217D89CAC();
    v40[0] = v43;
    v40[1] = v44;
    v40[2] = v45;
    v41 = v46;
    sub_217ACC69C(v40);
    v33 = (v3 + v10[12]);
    v34 = *v33;
    v35 = v33[1];
    LOBYTE(v33) = *(v33 + 16);
    v37 = v34;
    v38 = v35;
    v39 = v33;
    v36[7] = 8;
    sub_217AD7DEC();

    sub_217D89C3C();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_217D81500()
{
  result = qword_2811C0B68;
  if (!qword_2811C0B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C0B68);
  }

  return result;
}

uint64_t WebEmbedExposureEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v41 = sub_217D889CC();
  v43 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v4 = v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_217D8899C();
  v42 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v45 = v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217D81F80(0, &qword_2811BC998, MEMORY[0x277D844C8]);
  v46 = v7;
  v44 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = v38 - v8;
  v10 = type metadata accessor for WebEmbedExposureEvent.Model(0);
  MEMORY[0x28223BE20](v10);
  v12 = v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D81500();
  v47 = v9;
  v13 = v64;
  sub_217D89E5C();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v64 = a1;
  v14 = v43;
  v39 = v12;
  LOBYTE(v55) = 0;
  sub_217A60258(&qword_2811C8408, MEMORY[0x277CEAEB0], MEMORY[0x277CEAEC0]);
  sub_217D89BCC();
  v15 = *(v42 + 32);
  v16 = v39;
  v17 = v45;
  v45 = v5;
  v15(v39, v17, v5);
  LOBYTE(v55) = 1;
  sub_217A60258(&qword_2811C83F0, MEMORY[0x277CEAED0], MEMORY[0x277CEAEE0]);
  v18 = v41;
  sub_217D89BCC();
  v38[1] = 0;
  (*(v14 + 32))(&v16[v10[5]], v4, v18);
  v54 = 2;
  sub_217A5D308();
  sub_217D89B5C();
  v19 = &v16[v10[6]];
  v20 = v60;
  v21 = v62;
  v22 = v63;
  *(v19 + 6) = v61;
  *(v19 + 7) = v21;
  *(v19 + 8) = v22;
  v23 = v58;
  v24 = v59;
  *(v19 + 2) = v57;
  *(v19 + 3) = v23;
  *(v19 + 4) = v24;
  *(v19 + 5) = v20;
  v25 = v56;
  *v19 = v55;
  *(v19 + 1) = v25;
  LOBYTE(v49) = 3;
  sub_217A5B978();
  sub_217D89BCC();
  v26 = &v16[v10[7]];
  *v26 = v52[0];
  *(v26 + 8) = *(v52 + 8);
  LOBYTE(v49) = 4;
  sub_217AD76BC();
  sub_217D89BCC();
  *&v16[v10[8]] = v52[0];
  LOBYTE(v49) = 5;
  sub_217B4FFA8();
  sub_217D89B5C();
  v27 = BYTE4(v52[0]);
  v28 = &v16[v10[9]];
  *v28 = v52[0];
  v28[4] = v27;
  LOBYTE(v49) = 6;
  sub_217AE8974();
  sub_217D89BCC();
  v29 = v64;
  v30 = *(&v52[0] + 1);
  v31 = &v16[v10[10]];
  *v31 = *&v52[0];
  *(v31 + 1) = v30;
  v51 = 7;
  sub_217A54D08();
  sub_217D89BCC();
  v32 = &v39[v10[11]];
  v33 = v52[1];
  *v32 = v52[0];
  *(v32 + 1) = v33;
  *(v32 + 2) = v52[2];
  v32[48] = v53;
  v48 = 8;
  sub_217AD7D98();
  sub_217D89B5C();
  (*(v44 + 8))(v47, v46);
  v34 = v50;
  v35 = v39;
  v36 = &v39[v10[12]];
  *v36 = v49;
  v36[16] = v34;
  sub_217D81FE4(v35, v40);
  __swift_destroy_boxed_opaque_existential_1(v29);
  return sub_217D82048(v35);
}

void sub_217D81F80(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217D81500();
    v7 = a3(a1, &type metadata for WebEmbedExposureEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217D81FE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WebEmbedExposureEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217D82048(uint64_t a1)
{
  v2 = type metadata accessor for WebEmbedExposureEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217D8217C@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217A608E0(0);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  v9 = *MEMORY[0x277CEACF0];
  sub_217D802D8(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  (*(*(v10 - 8) + 104))(a2 + v8, v9, v10);
  v11 = a1[7];
  sub_217D802D8(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  (*(*(v12 - 8) + 104))(a2 + v11, v4, v12);
  v13 = a1[8];
  sub_217D802D8(0, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710, &type metadata for FeedPositionData);
  (*(*(v14 - 8) + 104))(a2 + v13, v4, v14);
  v15 = a1[9];
  sub_217D802D8(0, &qword_2811C8608, sub_217B4FFA8, sub_217B4FFFC, &type metadata for InGroupPositionData);
  (*(*(v16 - 8) + 104))(a2 + v15, v9, v16);
  v17 = a1[10];
  sub_217D802D8(0, &qword_2811C8780, sub_217AE8974, sub_217AE89C8, &type metadata for WebEmbedData);
  (*(*(v18 - 8) + 104))(a2 + v17, v4, v18);
  v19 = a1[11];
  sub_217D802D8(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v20 - 8) + 104))(a2 + v19, v4, v20);
  v21 = a1[12];
  sub_217D802D8(0, &qword_2811C8770, sub_217AD7D98, sub_217AD7DEC, &type metadata for DismissalData);
  v23 = *(*(v22 - 8) + 104);

  return v23(a2 + v21, v9, v22);
}

void sub_217D825C0(uint64_t a1)
{
  sub_217A6018C(319);
  if (v1 <= 0x3F)
  {
    sub_217A608E0(319);
    if (v2 <= 0x3F)
    {
      sub_217D802D8(319, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
      if (v3 <= 0x3F)
      {
        sub_217D802D8(319, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
        if (v4 <= 0x3F)
        {
          sub_217D802D8(319, &qword_2811C86C8, sub_217AD76BC, sub_217AD7710, &type metadata for FeedPositionData);
          if (v5 <= 0x3F)
          {
            sub_217D802D8(319, &qword_2811C8608, sub_217B4FFA8, sub_217B4FFFC, &type metadata for InGroupPositionData);
            if (v6 <= 0x3F)
            {
              sub_217D802D8(319, &qword_2811C8780, sub_217AE8974, sub_217AE89C8, &type metadata for WebEmbedData);
              if (v7 <= 0x3F)
              {
                sub_217D802D8(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
                if (v8 <= 0x3F)
                {
                  sub_217D802D8(319, &qword_2811C8770, sub_217AD7D98, sub_217AD7DEC, &type metadata for DismissalData);
                  if (v9 <= 0x3F)
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

void sub_217D8289C(uint64_t a1)
{
  sub_217D8899C();
  if (v1 <= 0x3F)
  {
    sub_217D889CC();
    if (v2 <= 0x3F)
    {
      sub_217A5E974(319, &qword_2811BD178, &type metadata for GroupData);
      if (v3 <= 0x3F)
      {
        sub_217A5E974(319, &qword_2811C29D8, &type metadata for InGroupPositionData);
        if (v4 <= 0x3F)
        {
          sub_217A5E974(319, &qword_2811C7628, &type metadata for DismissalData);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_217D829DC()
{
  result = qword_27CBA59B8;
  if (!qword_27CBA59B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA59B8);
  }

  return result;
}

unint64_t sub_217D82A34()
{
  result = qword_2811C0B58;
  if (!qword_2811C0B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C0B58);
  }

  return result;
}

unint64_t sub_217D82A8C()
{
  result = qword_2811C0B60;
  if (!qword_2811C0B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C0B60);
  }

  return result;
}

uint64_t sub_217D82AE0(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0x74614470756F7267 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6174614464656566 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
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

  else if (a1 == 0x6465626D45626577 && a2 == 0xEC00000061746144 || (sub_217D89D4C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x617373696D736964 && a2 == 0xED0000617461446CLL)
  {

    return 8;
  }

  else
  {
    v6 = sub_217D89D4C();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t sub_217D82DDC(uint64_t a1, unsigned __int8 a2)
{
  sub_217D895CC();
}

uint64_t sub_217D82F40(uint64_t a1, unsigned __int8 a2)
{
  sub_217D895CC();
}

uint64_t sub_217D8309C(uint64_t a1, unsigned __int8 a2)
{
  sub_217D895CC();
}

uint64_t sub_217D83230(uint64_t a1, unsigned __int8 a2)
{
  sub_217D895CC();
}

uint64_t sub_217D833AC(uint64_t a1, unsigned __int8 a2)
{
  sub_217D895CC();
}

uint64_t sub_217D83540(uint64_t a1, unsigned __int8 a2)
{
  sub_217D895CC();
}

uint64_t sub_217D83690(uint64_t a1, unsigned __int8 a2)
{
  sub_217D895CC();
}

uint64_t sub_217D837D4(uint64_t a1, unsigned __int8 a2)
{
  sub_217D895CC();
}

uint64_t sub_217D83934(uint64_t a1, unsigned __int8 a2)
{
  sub_217D895CC();
}

uint64_t sub_217D83A90(uint64_t a1, unsigned __int8 a2)
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217D83B94(uint64_t a1, unsigned __int8 a2)
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217D83CEC(uint64_t a1, unsigned __int8 a2)
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217D83E04(uint64_t a1, unsigned __int8 a2)
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217D83F14(uint64_t a1, unsigned __int8 a2)
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217D84024(uint64_t a1, unsigned __int8 a2)
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217D84168(uint64_t a1, unsigned __int8 a2)
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217D84280(uint64_t a1, unsigned __int8 a2)
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217D8439C(uint64_t a1, unsigned __int8 a2)
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217D844D8(uint64_t a1, unsigned __int8 a2)
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217D84618(uint64_t a1, unsigned __int8 a2)
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217D84724(uint64_t a1, unsigned __int8 a2)
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217D84860(uint64_t a1, unsigned __int8 a2)
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217D8495C(uint64_t a1, unsigned __int8 a2)
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217D84A74(uint64_t a1, unsigned __int8 a2)
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217D84B9C(uint64_t a1, unsigned __int8 a2)
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217D84C94(uint64_t a1, unsigned __int8 a2)
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217D84DB4(uint64_t a1, unsigned __int8 a2)
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217D84EDC(uint64_t a1, unsigned __int8 a2)
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217D8501C(uint64_t a1, unsigned __int8 a2)
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217D85194(uint64_t a1, unsigned __int8 a2)
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217D85284(uint64_t a1, unsigned __int8 a2)
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t EndReason.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x6976614E72657375;
  if (v1 != 6)
  {
    v3 = 0x6873617263;
  }

  v4 = 0x6975516563726F66;
  if (v1 != 4)
  {
    v4 = 0x72617073646C6566;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x636142656E656373;
  if (v1 != 2)
  {
    v5 = 0xD000000000000015;
  }

  if (*v0)
  {
    v2 = 0x676B636142707061;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

NewsAnalytics::EndReason_optional __swiftcall EndReason.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217D89B0C();

  v5 = 8;
  if (v3 < 8)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_217D8551C()
{
  result = qword_27CBA59C0;
  if (!qword_27CBA59C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA59C0);
  }

  return result;
}

void sub_217D85598(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xEE006E6F69746167;
  v6 = 0x6976614E72657375;
  if (v2 != 6)
  {
    v6 = 0x6873617263;
    v5 = 0xE500000000000000;
  }

  v7 = 0xE900000000000074;
  v8 = 0x6975516563726F66;
  if (v2 != 4)
  {
    v8 = 0x72617073646C6566;
    v7 = 0xEF74657365524449;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEF646E756F72676BLL;
  v10 = 0x636142656E656373;
  if (v2 != 2)
  {
    v10 = 0xD000000000000015;
    v9 = 0x8000000217DCCA10;
  }

  if (*v1)
  {
    v4 = 0x676B636142707061;
    v3 = 0xED0000646E756F72;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
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

unint64_t sub_217D8578C()
{
  result = qword_2811BD1C0;
  if (!qword_2811BD1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD1C0);
  }

  return result;
}

uint64_t sub_217D857E0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 32))
  {
    return (*a1 + 13);
  }

  v3 = ((*(a1 + 24) >> 60) & 3 | (*(a1 + 8) >> 58) & 0xC) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_217D8583C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = ((-a2 >> 2) & 3) << 60;
      *(result + 16) = 0;
      *(result + 24) = (((-a2 >> 2) & 3 | (4 * (-a2 & 0xF))) << 58) & 0x3000000000000000;
    }
  }

  return result;
}

void *sub_217D858A8(void *result, uint64_t a2)
{
  if (a2 < 3)
  {
    v2 = result[3] & 0xCFFFFFFFFFFFFFFFLL | (a2 << 60);
    result[1] &= 0xCFFFFFFFFFFFFFFFLL;
    result[3] = v2;
  }

  else
  {
    *result = (a2 - 3);
    result[1] = 0;
    result[2] = 0;
    result[3] = 0x3000000000000000;
  }

  return result;
}

char *FCNewsAppConfigurationManager.treatmentIDs.getter()
{
  v1 = [v0 respondsToSelector_];
  v2 = MEMORY[0x277D84F90];
  v3 = MEMORY[0x277D84F90];
  if (v1)
  {
    v4 = [v0 treatmentIDs];
    if (!v4)
    {
      return MEMORY[0x277D84F90];
    }

    v5 = v4;
    sub_217D85C38();
    v3 = sub_217D896EC();
  }

  if (!(v3 >> 62))
  {
    v6 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

  v6 = sub_217D89AAC();
  if (!v6)
  {
LABEL_16:

    return MEMORY[0x277D84F90];
  }

LABEL_6:
  v15 = v2;
  result = sub_217B2C7C4(0, v6 & ~(v6 >> 63), 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = v15;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x21CEAD080](v8, v3);
      }

      else
      {
        v10 = *(v3 + 8 * v8 + 32);
      }

      v11 = v10;
      v12 = [v10 longLongValue];

      v14 = *(v15 + 16);
      v13 = *(v15 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_217B2C7C4((v13 > 1), v14 + 1, 1);
      }

      ++v8;
      *(v15 + 16) = v14 + 1;
      *(v15 + 8 * v14 + 32) = v12;
    }

    while (v6 != v8);

    return v9;
  }

  __break(1u);
  return result;
}

char *FCNewsAppConfigurationManager.segmentSetIDs.getter()
{
  v1 = [v0 respondsToSelector_];
  v2 = MEMORY[0x277D84F90];
  v3 = MEMORY[0x277D84F90];
  if (v1)
  {
    v4 = [v0 segmentSetIDs];
    if (!v4)
    {
      return MEMORY[0x277D84F90];
    }

    v5 = v4;
    sub_217D85C38();
    v3 = sub_217D896EC();
  }

  if (!(v3 >> 62))
  {
    v6 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

  v6 = sub_217D89AAC();
  if (!v6)
  {
LABEL_16:

    return MEMORY[0x277D84F90];
  }

LABEL_6:
  v15 = v2;
  result = sub_217B2C7E4(0, v6 & ~(v6 >> 63), 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = v15;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x21CEAD080](v8, v3);
      }

      else
      {
        v10 = *(v3 + 8 * v8 + 32);
      }

      v11 = v10;
      v12 = [v10 intValue];

      v14 = *(v15 + 16);
      v13 = *(v15 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_217B2C7E4((v13 > 1), v14 + 1, 1);
      }

      ++v8;
      *(v15 + 16) = v14 + 1;
      *(v15 + 4 * v14 + 32) = v12;
    }

    while (v6 != v8);

    return v9;
  }

  __break(1u);
  return result;
}

unint64_t sub_217D85C38()
{
  result = qword_2811BCB90;
  if (!qword_2811BCB90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2811BCB90);
  }

  return result;
}

uint64_t sub_217D85CE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000016 && 0x8000000217DD3400 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_217D89D4C();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_217D85D74(uint64_t a1)
{
  v2 = sub_217D85F34();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217D85DB0(uint64_t a1)
{
  v2 = sub_217D85F34();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FamilySharingData.encode(to:)(void *a1)
{
  sub_217D8610C(0, &qword_2811BC6F0, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D85F34();
  sub_217D89E7C();
  sub_217D89C7C();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_217D85F34()
{
  result = qword_2811C4658;
  if (!qword_2811C4658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C4658);
  }

  return result;
}

uint64_t FamilySharingData.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_217D8610C(0, &qword_27CBA59C8, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D85F34();
  sub_217D89E5C();
  if (!v2)
  {
    v10 = sub_217D89B9C();
    (*(v7 + 8))(v9, v6);
    *a2 = v10 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217D8610C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217D85F34();
    v7 = a3(a1, &type metadata for FamilySharingData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217D86174()
{
  result = qword_2811C4630;
  if (!qword_2811C4630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C4630);
  }

  return result;
}

unint64_t sub_217D861CC()
{
  result = qword_2811C4638;
  if (!qword_2811C4638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C4638);
  }

  return result;
}

uint64_t sub_217D86238(void *a1)
{
  sub_217D8610C(0, &qword_2811BC6F0, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D85F34();
  sub_217D89E7C();
  sub_217D89C7C();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_217D863A4()
{
  result = qword_27CBA59D0;
  if (!qword_27CBA59D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA59D0);
  }

  return result;
}

unint64_t sub_217D863FC()
{
  result = qword_2811C4648;
  if (!qword_2811C4648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C4648);
  }

  return result;
}

unint64_t sub_217D86454()
{
  result = qword_2811C4650;
  if (!qword_2811C4650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C4650);
  }

  return result;
}

NewsAnalytics::ListeningSource_optional __swiftcall ListeningSource.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217D89B0C();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ListeningSource.rawValue.getter()
{
  v1 = 0x6E776F6E6B6E75;
  v2 = 0x6C616E7265747865;
  if (*v0 != 2)
  {
    v2 = 0x79616C50726163;
  }

  if (*v0)
  {
    v1 = 0x7070416E69;
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

unint64_t sub_217D8658C()
{
  result = qword_27CBA59D8;
  if (!qword_27CBA59D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA59D8);
  }

  return result;
}

uint64_t sub_217D865E0()
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217D866A0(uint64_t a1)
{
  sub_217D895CC();
}

uint64_t sub_217D8674C(uint64_t a1)
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

void sub_217D86814(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6E776F6E6B6E75;
  v4 = 0xE800000000000000;
  v5 = 0x6C616E7265747865;
  if (*v1 != 2)
  {
    v5 = 0x79616C50726163;
    v4 = 0xE700000000000000;
  }

  if (*v1)
  {
    v3 = 0x7070416E69;
    v2 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_217D86950()
{
  result = qword_27CBA59E0;
  if (!qword_27CBA59E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA59E0);
  }

  return result;
}

uint64_t VideoAdData.prerollUrl.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t VideoAdData.prerollUrl.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t VideoAdData.init(duration:prerollUrl:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

uint64_t sub_217D86A70()
{
  if (*v0)
  {
    return 0x556C6C6F72657270;
  }

  else
  {
    return 0x6E6F697461727564;
  }
}

uint64_t sub_217D86AB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000;
  if (v6 || (sub_217D89D4C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x556C6C6F72657270 && a2 == 0xEA00000000006C72)
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

uint64_t sub_217D86B94(uint64_t a1)
{
  v2 = sub_217D86D88();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217D86BD0(uint64_t a1)
{
  v2 = sub_217D86D88();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t VideoAdData.encode(to:)(void *a1)
{
  sub_217D86F94(0, &qword_27CBA59E8, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = v11 - v7;
  v9 = *(v1 + 8);
  v11[0] = *(v1 + 16);
  v11[1] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D86D88();
  sub_217D89E7C();
  v13 = 0;
  sub_217D89CBC();
  if (!v2)
  {
    v12 = 1;
    sub_217D89C6C();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_217D86D88()
{
  result = qword_27CBA59F0;
  if (!qword_27CBA59F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA59F0);
  }

  return result;
}

uint64_t VideoAdData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_217D86F94(0, &qword_27CBA59F8, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D86D88();
  sub_217D89E5C();
  if (!v2)
  {
    v17 = 0;
    v10 = sub_217D89BDC();
    v16 = 1;
    v12 = sub_217D89B8C();
    v14 = v13;
    (*(v7 + 8))(v9, v6);
    *a2 = v10;
    *(a2 + 8) = v12;
    *(a2 + 16) = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217D86F94(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217D86D88();
    v7 = a3(a1, &type metadata for VideoAdData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217D87054()
{
  result = qword_27CBA5A00;
  if (!qword_27CBA5A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA5A00);
  }

  return result;
}

unint64_t sub_217D870AC()
{
  result = qword_27CBA5A08;
  if (!qword_27CBA5A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA5A08);
  }

  return result;
}

unint64_t sub_217D87104()
{
  result = qword_27CBA5A10;
  if (!qword_27CBA5A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA5A10);
  }

  return result;
}

uint64_t CompetingGroupPersonalizationListData.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t CompetingGroupPersonalizationListData.name.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

NewsAnalytics::CompetingGroupPersonalizationListData __swiftcall CompetingGroupPersonalizationListData.init(name:personalizationScore:)(Swift::String name, Swift::Double personalizationScore)
{
  *v2 = name;
  *(v2 + 16) = personalizationScore;
  result.name = name;
  result.personalizationScore = personalizationScore;
  return result;
}

uint64_t sub_217D87224()
{
  if (*v0)
  {
    return 0xD000000000000014;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_217D8725C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v5 || (sub_217D89D4C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000217DCE8E0 == a2)
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

uint64_t sub_217D87340(uint64_t a1)
{
  v2 = sub_217D8753C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217D8737C(uint64_t a1)
{
  v2 = sub_217D8753C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CompetingGroupPersonalizationListData.encode(to:)(void *a1)
{
  sub_217D87788(0, &qword_2811BC528, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D8753C();
  sub_217D89E7C();
  v11 = 0;
  v7 = v9;
  sub_217D89C6C();
  if (!v7)
  {
    v10 = 1;
    sub_217D89C8C();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_217D8753C()
{
  result = qword_2811BD6C8[0];
  if (!qword_2811BD6C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2811BD6C8);
  }

  return result;
}

uint64_t CompetingGroupPersonalizationListData.init(from:)@<X0>(void *a1@<X0>, double *a2@<X8>)
{
  sub_217D87788(0, &qword_2811BC920, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v17[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217D8753C();
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17[15] = 0;
  v10 = sub_217D89B8C();
  v12 = v11;
  v13 = v10;
  v17[14] = 1;
  sub_217D89BAC();
  v15 = v14;
  (*(v7 + 8))(v9, v6);
  *a2 = v13;
  *(a2 + 1) = v12;
  *(a2 + 2) = v15;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217D87788(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217D8753C();
    v7 = a3(a1, &type metadata for CompetingGroupPersonalizationListData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217D87848()
{
  result = qword_27CBA5A18;
  if (!qword_27CBA5A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA5A18);
  }

  return result;
}

unint64_t sub_217D878A0()
{
  result = qword_2811BD6B8;
  if (!qword_2811BD6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD6B8);
  }

  return result;
}

unint64_t sub_217D878F8()
{
  result = qword_2811BD6C0;
  if (!qword_2811BD6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD6C0);
  }

  return result;
}