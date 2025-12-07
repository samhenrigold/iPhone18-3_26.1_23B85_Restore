uint64_t IssueShareEvent.adData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for IssueShareEvent(0) + 56);
  sub_217C931CC(0, &qword_2811C8500, sub_217AF343C, sub_217AF3490, &type metadata for AdData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t IssueShareEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for IssueShareEvent(0);
  v5 = v4[5];
  sub_217C931CC(0, &qword_2811C8848, sub_217AED13C, sub_217AED190, &type metadata for ActionData);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  v8 = *MEMORY[0x277CEACF0];
  sub_217C931CC(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  (*(*(v9 - 8) + 104))(a1 + v7, v8, v9);
  v10 = v4[7];
  sub_217C931CC(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  (*(*(v11 - 8) + 104))(a1 + v10, v8, v11);
  v12 = v4[8];
  sub_217C931CC(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
  (*(*(v13 - 8) + 104))(a1 + v12, v2, v13);
  v14 = v4[9];
  sub_217C931CC(0, &qword_2811C8698, sub_217AF2C58, sub_217AF2CAC, &type metadata for ShareContextData);
  (*(*(v15 - 8) + 104))(a1 + v14, v2, v15);
  v16 = v4[10];
  sub_217C931CC(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  (*(*(v17 - 8) + 104))(a1 + v16, v2, v17);
  v18 = v4[11];
  sub_217C931CC(0, &qword_2811C8760, sub_217AD0198, sub_217AD01EC, &type metadata for IssueViewData);
  (*(*(v19 - 8) + 104))(a1 + v18, v8, v19);
  v20 = v4[12];
  sub_217C931CC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v21 - 8) + 104))(a1 + v20, v2, v21);
  v22 = v4[13];
  sub_217C931CC(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  (*(*(v23 - 8) + 104))(a1 + v22, v2, v23);
  v24 = v4[14];
  sub_217C931CC(0, &qword_2811C8500, sub_217AF343C, sub_217AF3490, &type metadata for AdData);
  v26 = *(*(v25 - 8) + 104);

  return v26(a1 + v24, v8, v25);
}

uint64_t IssueShareEvent.Model.actionData.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for IssueShareEvent.Model(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t IssueShareEvent.Model.feedData.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for IssueShareEvent.Model(0) + 24));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;

  return sub_217AD1A68(v4, v5, v6);
}

uint64_t IssueShareEvent.Model.groupData.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for IssueShareEvent.Model(0) + 28));
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

uint64_t IssueShareEvent.Model.userChannelContextData.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for IssueShareEvent.Model(0);
  v4 = (v1 + *(result + 32));
  v5 = *v4;
  v6 = v4[1];
  LOWORD(v4) = *(v4 + 1);
  *a1 = v5;
  *(a1 + 1) = v6;
  *(a1 + 2) = v4;
  return result;
}

uint64_t IssueShareEvent.Model.shareContextData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for IssueShareEvent.Model(0) + 36));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t IssueShareEvent.Model.issueData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for IssueShareEvent.Model(0) + 40);
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

uint64_t IssueShareEvent.Model.issueViewData.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for IssueShareEvent.Model(0) + 44));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t IssueShareEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for IssueShareEvent.Model(0) + 48);
  v11 = *(v3 + 48);
  v4 = v11;
  v5 = *(v3 + 16);
  v9[0] = *v3;
  v9[1] = v5;
  v10 = *(v3 + 32);
  v6 = v10;
  *a1 = v9[0];
  *(a1 + 16) = v5;
  *(a1 + 32) = v6;
  *(a1 + 48) = v4;
  return sub_217ACC004(v9, v8);
}

uint64_t IssueShareEvent.Model.channelData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for IssueShareEvent.Model(0) + 52);
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

void IssueShareEvent.Model.adData.getter(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for IssueShareEvent.Model(0) + 56);
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

__n128 IssueShareEvent.Model.init(eventData:actionData:feedData:groupData:userChannelContextData:shareContextData:issueData:issueViewData:userBundleSubscriptionContextData:channelData:adData:)@<Q0>(uint64_t a1@<X0>, char *a2@<X1>, __int128 *a3@<X2>, _OWORD *a4@<X3>, char *a5@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t *a11, uint64_t a12)
{
  v15 = *a2;
  v37 = *a3;
  v16 = *(a3 + 2);
  v17 = *a5;
  v18 = a5[1];
  v19 = *(a5 + 1);
  v38 = a6[1];
  v39 = *a6;
  v43 = a7[1];
  v44 = *a7;
  v41 = *(a7 + 17);
  v42 = *(a7 + 16);
  v40 = a7[3];
  v45 = a8[1];
  v46 = *a8;
  v53 = a11[1];
  v54 = *a11;
  v51 = *(a11 + 17);
  v52 = *(a11 + 16);
  v49 = a11[4];
  v50 = a11[3];
  v55 = *(a12 + 32);
  v20 = sub_217D8899C();
  v47 = *(a12 + 16);
  v48 = *a12;
  (*(*(v20 - 8) + 32))(a9, a1, v20);
  v21 = type metadata accessor for IssueShareEvent.Model(0);
  *(a9 + v21[5]) = v15;
  v22 = a9 + v21[6];
  *v22 = v37;
  *(v22 + 16) = v16;
  v23 = (a9 + v21[7]);
  v24 = a4[3];
  v23[2] = a4[2];
  v23[3] = v24;
  v25 = a4[1];
  *v23 = *a4;
  v23[1] = v25;
  v26 = a4[8];
  v23[7] = a4[7];
  v23[8] = v26;
  v27 = a4[6];
  v23[5] = a4[5];
  v23[6] = v27;
  v23[4] = a4[4];
  v28 = a9 + v21[8];
  *v28 = v17;
  *(v28 + 1) = v18;
  *(v28 + 2) = v19;
  v29 = (a9 + v21[9]);
  *v29 = v39;
  v29[1] = v38;
  v30 = a9 + v21[10];
  *v30 = v44;
  *(v30 + 8) = v43;
  *(v30 + 16) = v42;
  *(v30 + 17) = v41;
  *(v30 + 24) = v40;
  v31 = (a9 + v21[11]);
  *v31 = v46;
  v31[1] = v45;
  v32 = a9 + v21[12];
  v33 = *(a10 + 16);
  *v32 = *a10;
  *(v32 + 16) = v33;
  *(v32 + 32) = *(a10 + 32);
  *(v32 + 48) = *(a10 + 48);
  v34 = a9 + v21[13];
  *v34 = v54;
  *(v34 + 8) = v53;
  *(v34 + 16) = v52;
  *(v34 + 17) = v51;
  *(v34 + 24) = v50;
  *(v34 + 32) = v49;
  v35 = a9 + v21[14];
  result = v48;
  *v35 = v48;
  *(v35 + 16) = v47;
  *(v35 + 32) = v55;
  return result;
}

unint64_t sub_217C93E58(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x746144746E657665;
    v7 = 0x6174614464656566;
    v8 = 0x74614470756F7267;
    if (a1 != 3)
    {
      v8 = 0xD000000000000016;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x61446E6F69746361;
    }

    if (a1 <= 1u)
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
    v1 = 0xD000000000000021;
    v2 = 0x446C656E6E616863;
    if (a1 != 9)
    {
      v2 = 0x617461446461;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000010;
    v4 = 0x7461446575737369;
    if (a1 != 6)
    {
      v4 = 0x6569566575737369;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_217C93FE0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217C95EA0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217C94008(uint64_t a1)
{
  v2 = sub_217C94764();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C94044(uint64_t a1)
{
  v2 = sub_217C94764();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IssueShareEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217C95124(0, &qword_27CBA35A8, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v52 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C94764();
  sub_217D89E7C();
  LOBYTE(v83) = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410, MEMORY[0x277CEAEB8]);
  sub_217D89CAC();
  if (!v2)
  {
    v10 = type metadata accessor for IssueShareEvent.Model(0);
    LOBYTE(v83) = *(v3 + v10[5]);
    LOBYTE(v74) = 1;
    sub_217AED190();
    sub_217D89CAC();
    v11 = (v3 + v10[6]);
    v12 = v11[1];
    v13 = v11[2];
    v93 = *v11;
    v94 = v12;
    v95 = v13;
    v92 = 2;
    sub_217AD1A68(v93, v12, v13);
    sub_217A5BA2C();
    sub_217D89C3C();
    sub_217AD290C(v93, v94, v95);
    v14 = (v3 + v10[7]);
    v15 = v14[6];
    v16 = v14[4];
    v88 = v14[5];
    v89 = v15;
    v17 = v14[6];
    v18 = v14[8];
    v90 = v14[7];
    v91 = v18;
    v19 = v14[2];
    v20 = *v14;
    v84 = v14[1];
    v85 = v19;
    v21 = v14[2];
    v22 = v14[4];
    v86 = v14[3];
    v87 = v22;
    v23 = *v14;
    v80 = v17;
    v81 = v90;
    v82 = v14[8];
    v83 = v23;
    v76 = v21;
    v77 = v86;
    v78 = v16;
    v79 = v88;
    v74 = v20;
    v75 = v84;
    v73 = 3;
    sub_217AD87FC(&v83, v72);
    sub_217A5D3B4();
    sub_217D89C3C();
    v72[6] = v80;
    v72[7] = v81;
    v72[8] = v82;
    v72[2] = v76;
    v72[3] = v77;
    v72[4] = v78;
    v72[5] = v79;
    v72[0] = v74;
    v72[1] = v75;
    sub_217AD96E8(v72);
    v24 = (v3 + v10[8]);
    v25 = *v24;
    v26 = v24[1];
    LOWORD(v24) = *(v24 + 1);
    LOBYTE(v65) = v25;
    BYTE1(v65) = v26;
    WORD1(v65) = v24;
    LOBYTE(v61) = 4;
    sub_217ACFB8C();
    sub_217D89CAC();
    v27 = (v3 + v10[9]);
    v28 = v27[1];
    *&v65 = *v27;
    *(&v65 + 1) = v28;
    LOBYTE(v61) = 5;
    sub_217AF2CAC();

    sub_217D89CAC();

    v29 = (v3 + v10[10]);
    v30 = *v29;
    v31 = v29[1];
    v32 = *(v29 + 16);
    v33 = *(v29 + 17);
    v96 = v29[3];
    *&v65 = v30;
    *(&v65 + 1) = v31;
    LOBYTE(v66) = v32;
    BYTE1(v66) = v33;
    *(&v66 + 1) = v96;
    LOBYTE(v61) = 6;
    sub_217ACFF94();

    sub_217D89CAC();

    v34 = (v3 + v10[11]);
    v35 = v34[1];
    v70 = *v34;
    v71 = v35;
    v69 = 7;
    sub_217AD01EC();

    sub_217D89C3C();

    v36 = (v3 + v10[12]);
    v37 = v36[1];
    v65 = *v36;
    v66 = v37;
    v39 = *v36;
    v38 = v36[1];
    v67 = v36[2];
    v68 = *(v36 + 48);
    v61 = v39;
    v62 = v38;
    v63 = v36[2];
    v64 = *(v36 + 48);
    v60 = 8;
    sub_217ACC004(&v65, v58);
    sub_217A55B98();
    sub_217D89CAC();
    v58[0] = v61;
    v58[1] = v62;
    v58[2] = v63;
    v59 = v64;
    sub_217ACC69C(v58);
    v41 = v3 + v10[13];
    v42 = *(v41 + 8);
    v43 = *(v41 + 16);
    v44 = *(v41 + 17);
    v45 = *(v41 + 24);
    v46 = *(v41 + 32);
    v53 = *v41;
    v54 = v42;
    LOBYTE(v55) = v43;
    BYTE1(v55) = v44;
    v56 = v45;
    v57 = v46;
    HIBYTE(v52) = 9;
    sub_217AD084C();

    sub_217D89CAC();

    v47 = v3 + v10[14];
    v48 = *(v47 + 8);
    v49 = *(v47 + 16);
    v50 = *(v47 + 24);
    v51 = *(v47 + 32);
    v53 = *v47;
    v54 = v48;
    v55 = v49;
    v56 = v50;
    LOBYTE(v57) = v51;
    HIBYTE(v52) = 10;
    sub_217AE39D0(v53, v48, v49, v50);
    sub_217AF3490();
    sub_217D89C3C();
    sub_217AE4AA0(v53, v54, v55, v56);
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_217C94764()
{
  result = qword_27CBA35B0;
  if (!qword_27CBA35B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA35B0);
  }

  return result;
}

uint64_t IssueShareEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v3 = sub_217D8899C();
  v52 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v54 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217C95124(0, &qword_27CBA35B8, MEMORY[0x277D844C8]);
  v55 = v5;
  v53 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v48 - v6;
  v8 = type metadata accessor for IssueShareEvent.Model(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C94764();
  v56 = v7;
  v11 = v76;
  sub_217D89E5C();
  if (v11)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v53;
  v49 = v8;
  v50 = a1;
  v76 = v10;
  LOBYTE(v67) = 0;
  sub_217A602A0(&qword_2811C8408, MEMORY[0x277CEAEC0]);
  v13 = v54;
  sub_217D89BCC();
  v14 = v76;
  (*(v52 + 32))(v76, v13, v3);
  LOBYTE(v62) = 1;
  sub_217AED13C();
  sub_217D89BCC();
  v48 = v3;
  v15 = v49;
  v14[v49[5]] = v67;
  LOBYTE(v62) = 2;
  sub_217A5B978();
  sub_217D89B5C();
  v16 = v68;
  v17 = &v14[v15[6]];
  *v17 = v67;
  *(v17 + 2) = v16;
  v66 = 3;
  sub_217A5D308();
  sub_217D89B5C();
  v18 = &v14[v15[7]];
  v19 = v72;
  v20 = v74;
  v21 = v75;
  *(v18 + 6) = v73;
  *(v18 + 7) = v20;
  *(v18 + 8) = v21;
  v22 = v68;
  v23 = v70;
  v24 = v71;
  *(v18 + 2) = v69;
  *(v18 + 3) = v23;
  *(v18 + 4) = v24;
  *(v18 + 5) = v19;
  *v18 = v67;
  *(v18 + 1) = v22;
  LOBYTE(v58) = 4;
  sub_217ACFB38();
  sub_217D89BCC();
  v25 = BYTE1(v62);
  v26 = WORD1(v62);
  v27 = &v14[v15[8]];
  *v27 = v62;
  v27[1] = v25;
  *(v27 + 1) = v26;
  LOBYTE(v58) = 5;
  sub_217AF2C58();
  sub_217D89BCC();
  v28 = *(&v62 + 1);
  v29 = &v14[v15[9]];
  *v29 = v62;
  *(v29 + 1) = v28;
  LOBYTE(v58) = 6;
  sub_217ACFF40();
  sub_217D89BCC();
  v30 = *(&v62 + 1);
  v31 = v63;
  v32 = BYTE1(v63);
  v33 = *(&v63 + 1);
  v34 = &v14[v15[10]];
  *v34 = v62;
  *(v34 + 1) = v30;
  v34[16] = v31;
  v34[17] = v32;
  *(v34 + 3) = v33;
  LOBYTE(v58) = 7;
  sub_217AD0198();
  sub_217D89B5C();
  *&v14[v15[11]] = v62;
  v61 = 8;
  sub_217A54D08();
  sub_217D89BCC();
  v35 = &v76[v49[12]];
  v36 = v63;
  *v35 = v62;
  *(v35 + 1) = v36;
  *(v35 + 2) = v64;
  v35[48] = v65;
  v57 = 9;
  sub_217AD07F8();
  sub_217D89BCC();
  v37 = *(&v58 + 1);
  v38 = v59;
  v39 = BYTE1(v59);
  v40 = *(&v59 + 1);
  v41 = v60;
  v42 = &v76[v49[13]];
  *v42 = v58;
  *(v42 + 1) = v37;
  v42[16] = v38;
  v42[17] = v39;
  *(v42 + 3) = v40;
  *(v42 + 4) = v41;
  v57 = 10;
  sub_217AF343C();
  sub_217D89B5C();
  (*(v12 + 8))(v56, v55);
  v43 = v60;
  v44 = v76;
  v45 = &v76[v49[14]];
  v46 = v59;
  *v45 = v58;
  *(v45 + 1) = v46;
  v45[32] = v43;
  sub_217C95188(v44, v51);
  __swift_destroy_boxed_opaque_existential_1(v50);
  return sub_217C951EC(v44);
}

void sub_217C95124(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217C94764();
    v7 = a3(a1, &type metadata for IssueShareEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217C95188(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IssueShareEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217C951EC(uint64_t a1)
{
  v2 = type metadata accessor for IssueShareEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217C95320@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217C931CC(0, &qword_2811C8848, sub_217AED13C, sub_217AED190, &type metadata for ActionData);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  v9 = *MEMORY[0x277CEACF0];
  sub_217C931CC(0, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
  (*(*(v10 - 8) + 104))(a2 + v8, v9, v10);
  v11 = a1[7];
  sub_217C931CC(0, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
  (*(*(v12 - 8) + 104))(a2 + v11, v9, v12);
  v13 = a1[8];
  sub_217C931CC(0, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
  (*(*(v14 - 8) + 104))(a2 + v13, v4, v14);
  v15 = a1[9];
  sub_217C931CC(0, &qword_2811C8698, sub_217AF2C58, sub_217AF2CAC, &type metadata for ShareContextData);
  (*(*(v16 - 8) + 104))(a2 + v15, v4, v16);
  v17 = a1[10];
  sub_217C931CC(0, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
  (*(*(v18 - 8) + 104))(a2 + v17, v4, v18);
  v19 = a1[11];
  sub_217C931CC(0, &qword_2811C8760, sub_217AD0198, sub_217AD01EC, &type metadata for IssueViewData);
  (*(*(v20 - 8) + 104))(a2 + v19, v9, v20);
  v21 = a1[12];
  sub_217C931CC(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v22 - 8) + 104))(a2 + v21, v4, v22);
  v23 = a1[13];
  sub_217C931CC(0, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
  (*(*(v24 - 8) + 104))(a2 + v23, v4, v24);
  v25 = a1[14];
  sub_217C931CC(0, &qword_2811C8500, sub_217AF343C, sub_217AF3490, &type metadata for AdData);
  v27 = *(*(v26 - 8) + 104);

  return v27(a2 + v25, v9, v26);
}

void sub_217C9588C(uint64_t a1)
{
  sub_217A6018C(319);
  if (v1 <= 0x3F)
  {
    sub_217C931CC(319, &qword_2811C8848, sub_217AED13C, sub_217AED190, &type metadata for ActionData);
    if (v2 <= 0x3F)
    {
      sub_217C931CC(319, &qword_2811C84E8, sub_217A5B978, sub_217A5BA2C, &type metadata for FeedData);
      if (v3 <= 0x3F)
      {
        sub_217C931CC(319, &qword_2811C84C8, sub_217A5D308, sub_217A5D3B4, &type metadata for GroupData);
        if (v4 <= 0x3F)
        {
          sub_217C931CC(319, &qword_2811C85A0, sub_217ACFB38, sub_217ACFB8C, &type metadata for UserChannelContextData);
          if (v5 <= 0x3F)
          {
            sub_217C931CC(319, &qword_2811C8698, sub_217AF2C58, sub_217AF2CAC, &type metadata for ShareContextData);
            if (v6 <= 0x3F)
            {
              sub_217C931CC(319, &qword_2811C84C0, sub_217ACFF40, sub_217ACFF94, &type metadata for IssueData);
              if (v7 <= 0x3F)
              {
                sub_217C931CC(319, &qword_2811C8760, sub_217AD0198, sub_217AD01EC, &type metadata for IssueViewData);
                if (v8 <= 0x3F)
                {
                  sub_217C931CC(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
                  if (v9 <= 0x3F)
                  {
                    sub_217C931CC(319, &qword_2811C87E8, sub_217AD07F8, sub_217AD084C, &type metadata for ChannelData);
                    if (v10 <= 0x3F)
                    {
                      sub_217C931CC(319, &qword_2811C8500, sub_217AF343C, sub_217AF3490, &type metadata for AdData);
                      if (v11 <= 0x3F)
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

void sub_217C95C40(uint64_t a1)
{
  sub_217D8899C();
  if (v1 <= 0x3F)
  {
    sub_217A5E974(319, &qword_2811BD308, &type metadata for FeedData);
    if (v2 <= 0x3F)
    {
      sub_217A5E974(319, &qword_2811BD178, &type metadata for GroupData);
      if (v3 <= 0x3F)
      {
        sub_217A5E974(319, &qword_2811C71A8, &type metadata for IssueViewData);
        if (v4 <= 0x3F)
        {
          sub_217A5E974(319, &qword_2811BD3F0, &type metadata for AdData);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_217C95D9C()
{
  result = qword_27CBA35C0;
  if (!qword_27CBA35C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA35C0);
  }

  return result;
}

unint64_t sub_217C95DF4()
{
  result = qword_27CBA35C8;
  if (!qword_27CBA35C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA35C8);
  }

  return result;
}

unint64_t sub_217C95E4C()
{
  result = qword_27CBA35D0;
  if (!qword_27CBA35D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA35D0);
  }

  return result;
}

uint64_t sub_217C95EA0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x61446E6F69746361 && a2 == 0xEA00000000006174 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6174614464656566 && a2 == 0xE800000000000000 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x74614470756F7267 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000217DCCCC0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000217DCD6C0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7461446575737369 && a2 == 0xE900000000000061 || (sub_217D89D4C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6569566575737369 && a2 == 0xED00006174614477 || (sub_217D89D4C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x446C656E6E616863 && a2 == 0xEB00000000617461 || (sub_217D89D4C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x617461446461 && a2 == 0xE600000000000000)
  {

    return 10;
  }

  else
  {
    v6 = sub_217D89D4C();

    if (v6)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

uint64_t ReferralGroupData.groupData.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[5];
  v3 = v1[7];
  v20 = v1[6];
  v21 = v3;
  v4 = v1[7];
  v22 = v1[8];
  v5 = v1[1];
  v6 = v1[3];
  v16 = v1[2];
  v7 = v16;
  v17 = v6;
  v8 = v1[3];
  v9 = v1[5];
  v18 = v1[4];
  v10 = v18;
  v19 = v9;
  v11 = v1[1];
  v15[0] = *v1;
  v12 = v15[0];
  v15[1] = v11;
  a1[6] = v20;
  a1[7] = v4;
  a1[8] = v1[8];
  a1[2] = v7;
  a1[3] = v8;
  a1[4] = v10;
  a1[5] = v2;
  *a1 = v12;
  a1[1] = v5;
  return sub_217AF7618(v15, &v14);
}

__n128 ReferralGroupData.groupData.setter(uint64_t a1)
{
  v3 = v1[7];
  v11[6] = v1[6];
  v11[7] = v3;
  v11[8] = v1[8];
  v4 = v1[3];
  v11[2] = v1[2];
  v11[3] = v4;
  v5 = v1[5];
  v11[4] = v1[4];
  v11[5] = v5;
  v6 = v1[1];
  v11[0] = *v1;
  v11[1] = v6;
  sub_217C96344(v11);
  v7 = *(a1 + 112);
  v1[6] = *(a1 + 96);
  v1[7] = v7;
  v1[8] = *(a1 + 128);
  v8 = *(a1 + 48);
  v1[2] = *(a1 + 32);
  v1[3] = v8;
  v9 = *(a1 + 80);
  v1[4] = *(a1 + 64);
  v1[5] = v9;
  result = *(a1 + 16);
  *v1 = *a1;
  v1[1] = result;
  return result;
}

__n128 ReferralGroupData.init(groupData:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 112);
  *(a2 + 96) = *(a1 + 96);
  *(a2 + 112) = v2;
  *(a2 + 128) = *(a1 + 128);
  v3 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v3;
  v4 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v4;
  result = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_217C963DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x74614470756F7267 && a2 == 0xE900000000000061)
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

uint64_t sub_217C9646C(uint64_t a1)
{
  v2 = sub_217C966CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C964A8(uint64_t a1)
{
  v2 = sub_217C966CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ReferralGroupData.encode(to:)(void *a1)
{
  sub_217C968DC(0, &qword_27CBA35D8, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = v13 - v6;
  v8 = v1[7];
  v29 = v1[6];
  v30 = v8;
  v31 = v1[8];
  v9 = v1[3];
  v25 = v1[2];
  v26 = v9;
  v10 = v1[5];
  v27 = v1[4];
  v28 = v10;
  v11 = v1[1];
  v23 = *v1;
  v24 = v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217AF7618(&v23, &v14);
  sub_217C966CC();
  sub_217D89E7C();
  v20 = v29;
  v21 = v30;
  v22 = v31;
  v16 = v25;
  v17 = v26;
  v18 = v27;
  v19 = v28;
  v14 = v23;
  v15 = v24;
  sub_217A5D3B4();
  sub_217D89CAC();
  v13[6] = v20;
  v13[7] = v21;
  v13[8] = v22;
  v13[2] = v16;
  v13[3] = v17;
  v13[4] = v18;
  v13[5] = v19;
  v13[0] = v14;
  v13[1] = v15;
  sub_217AF8104(v13);
  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_217C966CC()
{
  result = qword_27CBA35E0;
  if (!qword_27CBA35E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA35E0);
  }

  return result;
}

uint64_t ReferralGroupData.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_217C968DC(0, &qword_27CBA35E8, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = v15 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C966CC();
  sub_217D89E5C();
  if (!v2)
  {
    sub_217A5D308();
    sub_217D89BCC();
    (*(v7 + 8))(v9, v6);
    v10 = v15[7];
    a2[6] = v15[6];
    a2[7] = v10;
    a2[8] = v15[8];
    v11 = v15[3];
    a2[2] = v15[2];
    a2[3] = v11;
    v12 = v15[5];
    a2[4] = v15[4];
    a2[5] = v12;
    v13 = v15[1];
    *a2 = v15[0];
    a2[1] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217C968DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217C966CC();
    v7 = a3(a1, &type metadata for ReferralGroupData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

__n128 __swift_memcpy144_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t sub_217C9699C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
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

unint64_t sub_217C969F8()
{
  result = qword_27CBA35F0;
  if (!qword_27CBA35F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA35F0);
  }

  return result;
}

unint64_t sub_217C96A50()
{
  result = qword_27CBA35F8;
  if (!qword_27CBA35F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA35F8);
  }

  return result;
}

unint64_t sub_217C96AA8()
{
  result = qword_27CBA3600;
  if (!qword_27CBA3600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3600);
  }

  return result;
}

NewsAnalytics::ViewType_optional __swiftcall ViewType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_217D89B0C();

  v5 = 14;
  if (v3 < 0xE)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t ViewType.rawValue.getter()
{
  result = 0x6E776F6E6B6E75;
  switch(*v0)
  {
    case 1:
      result = 1684366694;
      break;
    case 2:
      result = 0x656C6369747261;
      break;
    case 3:
      result = 6710384;
      break;
    case 4:
      result = 0x6E69776F6C6C6F66;
      break;
    case 5:
      result = 0x746567646977;
      break;
    case 6:
      result = 0x686372616573;
      break;
    case 7:
      result = 0x6C61646F6DLL;
      break;
    case 8:
      result = 0x6C6C6F72635368;
      break;
    case 9:
      result = 0xD000000000000010;
      break;
    case 0xA:
      result = 0x7474656C7377656ELL;
      break;
    case 0xB:
      result = 0x656C7A7A7570;
      break;
    case 0xC:
      result = 0x74756374726F6873;
      break;
    case 0xD:
      result = 0x657069636572;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_217C96CB0()
{
  v0 = ViewType.rawValue.getter();
  v2 = v1;
  if (v0 == ViewType.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_217D89D4C();
  }

  return v5 & 1;
}

unint64_t sub_217C96D50()
{
  result = qword_27CBA3608;
  if (!qword_27CBA3608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3608);
  }

  return result;
}

uint64_t sub_217C96DA4()
{
  sub_217D89E1C();
  ViewType.rawValue.getter();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217C96E0C(uint64_t a1)
{
  ViewType.rawValue.getter();
  sub_217D895CC();
}

uint64_t sub_217C96E70(uint64_t a1)
{
  sub_217D89E1C();
  ViewType.rawValue.getter();
  sub_217D895CC();

  return sub_217D89E3C();
}

unint64_t sub_217C96EE0@<X0>(unint64_t *a1@<X8>)
{
  result = ViewType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_217C96FC8()
{
  result = qword_2811BD1F0;
  if (!qword_2811BD1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BD1F0);
  }

  return result;
}

uint64_t sub_217C970E4()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA3640);
  __swift_project_value_buffer(v0, qword_27CBA3640);
  return sub_217D8866C();
}

uint64_t RecentSearchExposureEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t RecentSearchExposureEvent.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RecentSearchExposureEvent(0) + 20);
  sub_217C97648(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RecentSearchExposureEvent.viewData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RecentSearchExposureEvent(0) + 20);
  sub_217C97648(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RecentSearchExposureEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RecentSearchExposureEvent(0) + 24);
  sub_217C97648(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RecentSearchExposureEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RecentSearchExposureEvent(0) + 24);
  sub_217C97648(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RecentSearchExposureEvent.recentSearchListData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RecentSearchExposureEvent(0) + 28);
  sub_217C97648(0, &qword_27CBA3658, sub_217B23D84, sub_217B23DDC, &type metadata for RecentSearchListData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217C97648(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
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

uint64_t RecentSearchExposureEvent.recentSearchListData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RecentSearchExposureEvent(0) + 28);
  sub_217C97648(0, &qword_27CBA3658, sub_217B23D84, sub_217B23DDC, &type metadata for RecentSearchListData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RecentSearchExposureEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for RecentSearchExposureEvent(0);
  v5 = v4[5];
  sub_217C97648(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = v4[6];
  sub_217C97648(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v8 - 8) + 104))(a1 + v7, v2, v8);
  v9 = v4[7];
  sub_217C97648(0, &qword_27CBA3658, sub_217B23D84, sub_217B23DDC, &type metadata for RecentSearchListData);
  v11 = *(*(v10 - 8) + 104);

  return v11(a1 + v9, v2, v10);
}

uint64_t RecentSearchExposureEvent.Model.viewData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for RecentSearchExposureEvent.Model(0) + 20));
  v5 = *v3;
  v4 = v3[1];
  LOWORD(v3) = *(v3 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;
}

uint64_t RecentSearchExposureEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for RecentSearchExposureEvent.Model(0) + 24));
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

uint64_t RecentSearchExposureEvent.Model.recentSearchListData.getter@<X0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for RecentSearchExposureEvent.Model(0) + 28));
}

__n128 RecentSearchExposureEvent.Model.init(eventData:viewData:userBundleSubscriptionContextData:recentSearchListData:)@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *a2;
  v9 = a2[1];
  v10 = *(a2 + 8);
  v11 = *a4;
  v12 = sub_217D8899C();
  (*(*(v12 - 8) + 32))(a5, a1, v12);
  v13 = type metadata accessor for RecentSearchExposureEvent.Model(0);
  v14 = a5 + v13[5];
  *v14 = v8;
  *(v14 + 8) = v9;
  *(v14 + 16) = v10;
  v15 = a5 + v13[6];
  v16 = *(a3 + 16);
  *v15 = *a3;
  *(v15 + 16) = v16;
  result = *(a3 + 32);
  *(v15 + 32) = result;
  *(v15 + 48) = *(a3 + 48);
  *(a5 + v13[7]) = v11;
  return result;
}

unint64_t sub_217C97BAC()
{
  v1 = 0x746144746E657665;
  v2 = 0xD000000000000021;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000014;
  }

  if (*v0)
  {
    v1 = 0x6174614477656976;
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

uint64_t sub_217C97C38@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217C98C2C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217C97C60(uint64_t a1)
{
  v2 = sub_217C98018();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C97C9C(uint64_t a1)
{
  v2 = sub_217C98018();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RecentSearchExposureEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217C984FC(0, &qword_27CBA3660, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v19[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C98018();
  sub_217D89E7C();
  LOBYTE(v28[0]) = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410, MEMORY[0x277CEAEB8]);
  sub_217D89CAC();
  if (!v2)
  {
    v10 = type metadata accessor for RecentSearchExposureEvent.Model(0);
    v11 = (v3 + v10[5]);
    v12 = *v11;
    v13 = v11[1];
    LOWORD(v11) = *(v11 + 8);
    v31 = v12;
    v32 = v13;
    v33 = v11;
    v30 = 1;
    sub_217A5E790();

    sub_217D89CAC();

    v14 = (v3 + v10[6]);
    v15 = v14[1];
    v28[0] = *v14;
    v28[1] = v15;
    v17 = *v14;
    v16 = v14[1];
    v28[2] = v14[2];
    v29 = *(v14 + 48);
    v24 = v17;
    v25 = v16;
    v26 = v14[2];
    v27 = *(v14 + 48);
    v23 = 2;
    sub_217ACC004(v28, v21);
    sub_217A55B98();
    sub_217D89CAC();
    v21[0] = v24;
    v21[1] = v25;
    v21[2] = v26;
    v22 = v27;
    sub_217ACC69C(v21);
    v20 = *(v3 + v10[7]);
    v19[7] = 3;
    sub_217B23DDC();

    sub_217D89CAC();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_217C98018()
{
  result = qword_27CBA3668;
  if (!qword_27CBA3668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3668);
  }

  return result;
}

uint64_t RecentSearchExposureEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = sub_217D8899C();
  v22 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v23 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217C984FC(0, &qword_27CBA3670, MEMORY[0x277D844C8]);
  v24 = *(v6 - 8);
  v25 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v20 - v7;
  v9 = type metadata accessor for RecentSearchExposureEvent.Model(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C98018();
  v26 = v8;
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v22;
  LOBYTE(v28) = 0;
  sub_217A602A0(&qword_2811C8408, MEMORY[0x277CEAEC0]);
  v13 = v23;
  sub_217D89BCC();
  (*(v12 + 32))(v11, v13, v4);
  LOBYTE(v27) = 1;
  sub_217A5E738();
  sub_217D89BCC();
  v14 = *(&v28 + 1);
  v15 = v29;
  v16 = &v11[v9[5]];
  *v16 = v28;
  *(v16 + 1) = v14;
  *(v16 + 8) = v15;
  v33 = 2;
  sub_217A54D08();
  sub_217D89BCC();
  v17 = &v11[v9[6]];
  v18 = v29;
  *v17 = v28;
  *(v17 + 1) = v18;
  *(v17 + 2) = v30;
  v17[48] = v31;
  v32 = 3;
  sub_217B23D84();
  sub_217D89BCC();
  (*(v24 + 8))(v26, v25);
  *&v11[v9[7]] = v27;
  sub_217C98560(v11, v21);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_217C985C4(v11);
}

void sub_217C984FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217C98018();
    v7 = a3(a1, &type metadata for RecentSearchExposureEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217C98560(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecentSearchExposureEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217C985C4(uint64_t a1)
{
  v2 = type metadata accessor for RecentSearchExposureEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217C986F8@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = a1[5];
  sub_217C97648(0, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = a1[6];
  sub_217C97648(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  (*(*(v9 - 8) + 104))(a2 + v8, v4, v9);
  v10 = a1[7];
  sub_217C97648(0, &qword_27CBA3658, sub_217B23D84, sub_217B23DDC, &type metadata for RecentSearchListData);
  v12 = *(*(v11 - 8) + 104);

  return v12(a2 + v10, v4, v11);
}

void sub_217C98908(uint64_t a1)
{
  sub_217A6018C(319);
  if (v1 <= 0x3F)
  {
    sub_217C97648(319, &qword_2811C84D8, sub_217A5E738, sub_217A5E790, &type metadata for ViewData);
    if (v2 <= 0x3F)
    {
      sub_217C97648(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
      if (v3 <= 0x3F)
      {
        sub_217C97648(319, &qword_27CBA3658, sub_217B23D84, sub_217B23DDC, &type metadata for RecentSearchListData);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_217C98A8C(uint64_t a1)
{
  result = sub_217D8899C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_217C98B28()
{
  result = qword_27CBA3698;
  if (!qword_27CBA3698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3698);
  }

  return result;
}

unint64_t sub_217C98B80()
{
  result = qword_27CBA36A0;
  if (!qword_27CBA36A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA36A0);
  }

  return result;
}

unint64_t sub_217C98BD8()
{
  result = qword_27CBA36A8;
  if (!qword_27CBA36A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA36A8);
  }

  return result;
}

uint64_t sub_217C98C2C(uint64_t a1, uint64_t a2)
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

  else if (a1 == 0xD000000000000014 && 0x8000000217DD1C40 == a2)
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

uint64_t sub_217C98E6C()
{
  v0 = sub_217D8867C();
  __swift_allocate_value_buffer(v0, qword_27CBA36E0);
  __swift_project_value_buffer(v0, qword_27CBA36E0);
  return sub_217D8866C();
}

uint64_t RestoreSubscriptionEvent.eventData.setter(uint64_t a1)
{
  sub_217A6018C(0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t RestoreSubscriptionEvent.purchaseRestoreListData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RestoreSubscriptionEvent(0) + 20);
  sub_217C99220(0, &qword_27CBA36F8, sub_217BB3834, sub_217BB388C, &type metadata for PurchaseRestoreListData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RestoreSubscriptionEvent.purchaseRestoreListData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RestoreSubscriptionEvent(0) + 20);
  sub_217C99220(0, &qword_27CBA36F8, sub_217BB3834, sub_217BB388C, &type metadata for PurchaseRestoreListData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RestoreSubscriptionEvent.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for RestoreSubscriptionEvent(0) + 24);
  sub_217C99220(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_217C99220(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t a5)
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

uint64_t RestoreSubscriptionEvent.userBundleSubscriptionContextData.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RestoreSubscriptionEvent(0) + 24);
  sub_217C99220(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t RestoreSubscriptionEvent.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = type metadata accessor for RestoreSubscriptionEvent(0);
  v5 = *(v4 + 20);
  sub_217C99220(0, &qword_27CBA36F8, sub_217BB3834, sub_217BB388C, &type metadata for PurchaseRestoreListData);
  (*(*(v6 - 8) + 104))(a1 + v5, v2, v6);
  v7 = *(v4 + 24);
  sub_217C99220(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v9 = *(*(v8 - 8) + 104);

  return v9(a1 + v7, v2, v8);
}

uint64_t RestoreSubscriptionEvent.Model.purchaseRestoreListData.getter@<X0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for RestoreSubscriptionEvent.Model(0) + 20));
}

uint64_t RestoreSubscriptionEvent.Model.userBundleSubscriptionContextData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for RestoreSubscriptionEvent.Model(0) + 24));
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

__n128 RestoreSubscriptionEvent.Model.init(eventData:purchaseRestoreListData:userBundleSubscriptionContextData:)@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a2;
  v8 = sub_217D8899C();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  v9 = type metadata accessor for RestoreSubscriptionEvent.Model(0);
  *(a4 + *(v9 + 20)) = v7;
  v10 = a4 + *(v9 + 24);
  v11 = *(a3 + 16);
  *v10 = *a3;
  *(v10 + 16) = v11;
  result = *(a3 + 32);
  *(v10 + 32) = result;
  *(v10 + 48) = *(a3 + 48);
  return result;
}

unint64_t sub_217C99694()
{
  v1 = 0xD000000000000017;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000021;
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

uint64_t sub_217C996F8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217C9A4D4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217C99720(uint64_t a1)
{
  v2 = sub_217C99A30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C9975C(uint64_t a1)
{
  v2 = sub_217C99A30();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RestoreSubscriptionEvent.Model.encode(to:)(void *a1)
{
  v3 = v1;
  sub_217C99E70(0, &qword_27CBA3700, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = v16 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C99A30();
  sub_217D89E7C();
  LOBYTE(v23[0]) = 0;
  sub_217D8899C();
  sub_217A602A0(&unk_2811C8410, MEMORY[0x277CEAEB8]);
  sub_217D89CAC();
  if (!v2)
  {
    v10 = type metadata accessor for RestoreSubscriptionEvent.Model(0);
    v26 = *(v3 + *(v10 + 20));
    v25 = 1;
    sub_217BB388C();

    sub_217D89CAC();

    v11 = (v3 + *(v10 + 24));
    v12 = v11[1];
    v23[0] = *v11;
    v23[1] = v12;
    v14 = *v11;
    v13 = v11[1];
    v23[2] = v11[2];
    v24 = *(v11 + 48);
    v19 = v14;
    v20 = v13;
    v21 = v11[2];
    v22 = *(v11 + 48);
    v18 = 2;
    sub_217ACC004(v23, v16);
    sub_217A55B98();
    sub_217D89CAC();
    v16[0] = v19;
    v16[1] = v20;
    v16[2] = v21;
    v17 = v22;
    sub_217ACC69C(v16);
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_217C99A30()
{
  result = qword_27CBA3708;
  if (!qword_27CBA3708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3708);
  }

  return result;
}

uint64_t RestoreSubscriptionEvent.Model.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v27 = sub_217D8899C();
  v25 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217C99E70(0, &qword_27CBA3710, MEMORY[0x277D844C8]);
  v26 = v6;
  v24 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v21 - v7;
  v9 = type metadata accessor for RestoreSubscriptionEvent.Model(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C99A30();
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v21 = v9;
  v22 = v11;
  v12 = v24;
  v13 = v25;
  LOBYTE(v28) = 0;
  sub_217A602A0(&qword_2811C8408, MEMORY[0x277CEAEC0]);
  v14 = v26;
  sub_217D89BCC();
  (*(v13 + 32))(v22, v5, v27);
  v32 = 1;
  sub_217BB3834();
  sub_217D89BCC();
  v15 = v21;
  *&v22[*(v21 + 20)] = v28;
  v32 = 2;
  sub_217A54D08();
  sub_217D89BCC();
  (*(v12 + 8))(v8, v14);
  v17 = v22;
  v16 = v23;
  v18 = &v22[*(v15 + 24)];
  v19 = v29;
  *v18 = v28;
  *(v18 + 1) = v19;
  *(v18 + 2) = v30;
  v18[48] = v31;
  sub_217C99ED4(v17, v16);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_217C99F38(v17);
}

void sub_217C99E70(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217C99A30();
    v7 = a3(a1, &type metadata for RestoreSubscriptionEvent.Model.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217C99ED4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RestoreSubscriptionEvent.Model(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_217C99F38(uint64_t a1)
{
  v2 = type metadata accessor for RestoreSubscriptionEvent.Model(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_217C9A06C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277CEACF8];
  sub_217A6018C(0);
  (*(*(v5 - 8) + 104))(a2, v4, v5);
  v6 = *(a1 + 20);
  sub_217C99220(0, &qword_27CBA36F8, sub_217BB3834, sub_217BB388C, &type metadata for PurchaseRestoreListData);
  (*(*(v7 - 8) + 104))(a2 + v6, v4, v7);
  v8 = *(a1 + 24);
  sub_217C99220(0, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
  v10 = *(*(v9 - 8) + 104);

  return v10(a2 + v8, v4, v9);
}

void sub_217C9A204(uint64_t a1)
{
  sub_217A6018C(319);
  if (v1 <= 0x3F)
  {
    sub_217C99220(319, &qword_27CBA36F8, sub_217BB3834, sub_217BB388C, &type metadata for PurchaseRestoreListData);
    if (v2 <= 0x3F)
    {
      sub_217C99220(319, &qword_2811C8510, sub_217A54D08, sub_217A55B98, &type metadata for UserBundleSubscriptionContextData);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_217C9A338(uint64_t a1)
{
  result = sub_217D8899C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_217C9A3D0()
{
  result = qword_27CBA3738;
  if (!qword_27CBA3738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3738);
  }

  return result;
}

unint64_t sub_217C9A428()
{
  result = qword_27CBA3740;
  if (!qword_27CBA3740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3740);
  }

  return result;
}

unint64_t sub_217C9A480()
{
  result = qword_27CBA3748;
  if (!qword_27CBA3748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3748);
  }

  return result;
}

uint64_t sub_217C9A4D4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746144746E657665 && a2 == 0xE900000000000061;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000217DD1C60 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000217DCCBB0 == a2)
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

uint64_t TabiRequestSummary.channelPicker.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t TabiRequestSummary.eventAggregation.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t TabiRequestSummary.feedPersonalization.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t TabiRequestSummary.personalizedPaywalls.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t TabiRequestSummary.recommendedIssues.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t TabiRequestSummary.recommendedTags.setter(uint64_t a1)
{

  *(v1 + 40) = a1;
  return result;
}

uint64_t TabiRequestSummary.tagScoring.setter(uint64_t a1)
{

  *(v1 + 48) = a1;
  return result;
}

uint64_t TabiRequestSummary.tagSuggestions.setter(uint64_t a1)
{

  *(v1 + 56) = a1;
  return result;
}

void __swiftcall TabiRequestSummary.init(channelPicker:eventAggregation:feedPersonalization:personalizedPaywalls:recommendedIssues:recommendedTags:tagScoring:tagSuggestions:)(NewsAnalytics::TabiRequestSummary *__return_ptr retstr, Swift::OpaquePointer channelPicker, Swift::OpaquePointer eventAggregation, Swift::OpaquePointer feedPersonalization, Swift::OpaquePointer personalizedPaywalls, Swift::OpaquePointer recommendedIssues, Swift::OpaquePointer recommendedTags, Swift::OpaquePointer tagScoring, Swift::OpaquePointer tagSuggestions)
{
  retstr->channelPicker = channelPicker;
  retstr->eventAggregation = eventAggregation;
  retstr->feedPersonalization = feedPersonalization;
  retstr->personalizedPaywalls = personalizedPaywalls;
  retstr->recommendedIssues = recommendedIssues;
  retstr->recommendedTags = recommendedTags;
  retstr->tagScoring = tagScoring;
  retstr->tagSuggestions = tagSuggestions;
}

unint64_t sub_217C9A8BC()
{
  v1 = *v0;
  v2 = 0x506C656E6E616863;
  v3 = 0x69726F6353676174;
  if (v1 != 6)
  {
    v3 = 0x6567677553676174;
  }

  v4 = 0xD000000000000011;
  if (v1 != 4)
  {
    v4 = 0x6E656D6D6F636572;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000014;
  if (v1 == 2)
  {
    v5 = 0xD000000000000013;
  }

  if (*v0)
  {
    v2 = 0xD000000000000010;
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

uint64_t sub_217C9A9EC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_217C9B8E4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_217C9AA14(uint64_t a1)
{
  v2 = sub_217C9AE00();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C9AA50(uint64_t a1)
{
  v2 = sub_217C9AE00();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TabiRequestSummary.encode(to:)(void *a1)
{
  sub_217C9B4B8(0, &qword_2811BC6A8, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - v7;
  v10 = *v1;
  v9 = v1[1];
  v11 = v1[3];
  v22 = v1[2];
  v23 = v9;
  v12 = v1[5];
  v20 = v1[4];
  v21 = v11;
  v13 = v1[7];
  v18 = v1[6];
  v19 = v12;
  v17 = v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C9AE00();

  sub_217D89E7C();
  v25 = v10;
  v24 = 0;
  sub_217C9AE54(0);
  sub_217C9B51C(&qword_2811BCDE0, &qword_2811C6078, &protocol conformance descriptor for TabiRequestData, MEMORY[0x277D83948]);
  v14 = v5;
  sub_217D89CAC();
  if (v2)
  {
  }

  else
  {
    v15 = v22;

    v25 = v23;
    v24 = 1;
    sub_217D89CAC();
    v25 = v15;
    v24 = 2;
    sub_217D89CAC();
    v25 = v21;
    v24 = 3;
    sub_217D89CAC();
    v25 = v20;
    v24 = 4;
    sub_217D89CAC();
    v25 = v19;
    v24 = 5;
    sub_217D89CAC();
    v25 = v18;
    v24 = 6;
    sub_217D89CAC();
    v25 = v17;
    v24 = 7;
    sub_217D89CAC();
  }

  return (*(v6 + 8))(v8, v14);
}

unint64_t sub_217C9AE00()
{
  result = qword_2811C2E08;
  if (!qword_2811C2E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C2E08);
  }

  return result;
}

void sub_217C9AE54(uint64_t a1)
{
  if (!qword_2811BCDE8)
  {
    type metadata accessor for TabiRequestData(255);
    v1 = sub_217D8971C();
    if (!v2)
    {
      atomic_store(v1, &qword_2811BCDE8);
    }
  }
}

uint64_t TabiRequestSummary.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_217C9B4B8(0, &qword_2811BCA18, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C9AE00();
  sub_217D89E5C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v30 = a2;
  sub_217C9AE54(0);
  LOBYTE(v31) = 0;
  sub_217C9B51C(&qword_2811BCDD8, &qword_2811C6070, &protocol conformance descriptor for TabiRequestData, MEMORY[0x277D83978]);
  sub_217D89BCC();
  v29 = v35[0];
  LOBYTE(v31) = 1;
  sub_217D89BCC();
  v28 = v35[0];
  LOBYTE(v31) = 2;
  sub_217D89BCC();
  v27 = v35[0];
  LOBYTE(v31) = 3;
  sub_217D89BCC();
  v26 = v35[0];
  LOBYTE(v31) = 4;
  sub_217D89BCC();
  v25 = v35[0];
  LOBYTE(v31) = 5;
  v24 = 0;
  sub_217D89BCC();
  v23 = v35[0];
  LOBYTE(v31) = 6;
  sub_217D89BCC();
  v22 = v35[0];
  v36[0] = 7;
  sub_217D89BCC();
  (*(v7 + 8))(v9, v6);
  v24 = v37;
  v11 = v28;
  v10 = v29;
  *&v31 = v29;
  *(&v31 + 1) = v28;
  v12 = v27;
  v13 = v26;
  *&v32 = v27;
  *(&v32 + 1) = v26;
  v14 = v25;
  v15 = v23;
  *&v33 = v25;
  *(&v33 + 1) = v23;
  v16 = v22;
  *&v34 = v22;
  *(&v34 + 1) = v37;
  v17 = v32;
  v18 = v30;
  *v30 = v31;
  v18[1] = v17;
  v19 = v34;
  v18[2] = v33;
  v18[3] = v19;
  sub_217C9B5DC(&v31, v35);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v35[0] = v10;
  v35[1] = v11;
  v35[2] = v12;
  v35[3] = v13;
  v35[4] = v14;
  v35[5] = v15;
  v35[6] = v16;
  v35[7] = v24;
  return sub_217C9B614(v35);
}

void sub_217C9B4B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217C9AE00();
    v7 = a3(a1, &type metadata for TabiRequestSummary.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_217C9B51C(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_217C9AE54(255);
    sub_217C9B598(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_217C9B598(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TabiRequestData(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_217C9B648()
{
  result = qword_2811C2DE8;
  if (!qword_2811C2DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C2DE8);
  }

  return result;
}

unint64_t sub_217C9B6A0()
{
  result = qword_2811C2DF0;
  if (!qword_2811C2DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C2DF0);
  }

  return result;
}

uint64_t sub_217C9B724(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_217C9B76C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_217C9B7E0()
{
  result = qword_27CBA3750;
  if (!qword_27CBA3750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3750);
  }

  return result;
}

unint64_t sub_217C9B838()
{
  result = qword_2811C2DF8;
  if (!qword_2811C2DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C2DF8);
  }

  return result;
}

unint64_t sub_217C9B890()
{
  result = qword_2811C2E00;
  if (!qword_2811C2E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C2E00);
  }

  return result;
}

uint64_t sub_217C9B8E4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x506C656E6E616863 && a2 == 0xED000072656B6369;
  if (v4 || (sub_217D89D4C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000217DD1C80 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000217DD1CA0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000217DD1CC0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000217DCBCB0 == a2 || (sub_217D89D4C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E656D6D6F636572 && a2 == 0xEF73676154646564 || (sub_217D89D4C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x69726F6353676174 && a2 == 0xEA0000000000676ELL || (sub_217D89D4C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6567677553676174 && a2 == 0xEE00736E6F697473)
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

NewsAnalytics::TextSizeChangeType_optional __swiftcall TextSizeChangeType.init(rawValue:)(Swift::String rawValue)
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

uint64_t TextSizeChangeType.rawValue.getter()
{
  v1 = 0x72656C6C616D73;
  if (*v0 != 1)
  {
    v1 = 0x72656772616CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x676E616843746F6ELL;
  }
}

uint64_t sub_217C9BC54(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0x72656C6C616D73;
  if (v2 != 1)
  {
    v4 = 0x72656772616CLL;
    v3 = 0xE600000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x676E616843746F6ELL;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xEA00000000006465;
  }

  v7 = 0xE700000000000000;
  v8 = 0x72656C6C616D73;
  if (*a2 != 1)
  {
    v8 = 0x72656772616CLL;
    v7 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x676E616843746F6ELL;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xEA00000000006465;
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

unint64_t sub_217C9BD54()
{
  result = qword_27CBA3758;
  if (!qword_27CBA3758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3758);
  }

  return result;
}

uint64_t sub_217C9BDA8()
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

uint64_t sub_217C9BE4C(uint64_t a1)
{
  sub_217D895CC();
}

uint64_t sub_217C9BEDC(uint64_t a1)
{
  sub_217D89E1C();
  sub_217D895CC();

  return sub_217D89E3C();
}

void sub_217C9BF88(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000006465;
  v4 = 0xE700000000000000;
  v5 = 0x72656C6C616D73;
  if (v2 != 1)
  {
    v5 = 0x72656772616CLL;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x676E616843746F6ELL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_217C9C0A8()
{
  result = qword_2811C2DC8;
  if (!qword_2811C2DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811C2DC8);
  }

  return result;
}

uint64_t sub_217C9C148(uint64_t a1)
{
  v2 = sub_217C9C31C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_217C9C184(uint64_t a1)
{
  v2 = sub_217C9C31C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SubscriptionAdLocationData.encode(to:)(void *a1)
{
  sub_217C9C55C(0, &qword_27CBA3760, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C9C31C();
  sub_217D89E7C();
  v11 = v8;
  sub_217C9C370();
  sub_217D89CAC();
  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_217C9C31C()
{
  result = qword_27CBA3768;
  if (!qword_27CBA3768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3768);
  }

  return result;
}

unint64_t sub_217C9C370()
{
  result = qword_27CBA3770;
  if (!qword_27CBA3770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3770);
  }

  return result;
}

uint64_t SubscriptionAdLocationData.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_217C9C55C(0, &qword_27CBA3778, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_217C9C31C();
  sub_217D89E5C();
  if (!v2)
  {
    sub_217C9C5C0();
    sub_217D89BCC();
    (*(v7 + 8))(v9, v6);
    *a2 = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_217C9C55C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_217C9C31C();
    v7 = a3(a1, &type metadata for SubscriptionAdLocationData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_217C9C5C0()
{
  result = qword_27CBA3780;
  if (!qword_27CBA3780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3780);
  }

  return result;
}

unint64_t sub_217C9C618()
{
  result = qword_2811BEE10;
  if (!qword_2811BEE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BEE10);
  }

  return result;
}

unint64_t sub_217C9C670()
{
  result = qword_2811BEE18;
  if (!qword_2811BEE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811BEE18);
  }

  return result;
}

unint64_t sub_217C9C718()
{
  result = qword_27CBA3788;
  if (!qword_27CBA3788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3788);
  }

  return result;
}

unint64_t sub_217C9C770()
{
  result = qword_27CBA3790;
  if (!qword_27CBA3790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3790);
  }

  return result;
}

unint64_t sub_217C9C7C8()
{
  result = qword_27CBA3798;
  if (!qword_27CBA3798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CBA3798);
  }

  return result;
}

uint64_t sub_217C9C81C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE400000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x7974666966;
  v6 = 0x4679746E65766573;
  v7 = 0xEB00000000657669;
  if (a1 != 4)
  {
    v6 = 0x72646E7548656E6FLL;
    v7 = 0xEA00000000006465;
  }

  if (a1 != 3)
  {
    v5 = v6;
    v4 = v7;
  }

  v8 = 0xE300000000000000;
  v9 = 7234932;
  if (a1 != 1)
  {
    v9 = 0x694679746E657774;
    v8 = 0xEA00000000006576;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 1869768058;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xE500000000000000;
      if (v10 != 0x7974666966)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xEB00000000657669;
      if (v10 != 0x4679746E65766573)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xEA00000000006465;
      if (v10 != 0x72646E7548656E6FLL)
      {
LABEL_34:
        v13 = sub_217D89D4C();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xE300000000000000;
      if (v10 != 7234932)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xEA00000000006576;
      if (v10 != 0x694679746E657774)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE400000000000000;
    if (v10 != 1869768058)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t sub_217C9CA04(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x7972656C6C6167;
  v6 = 0xE500000000000000;
  v7 = 0x6F69647561;
  if (a1 != 4)
  {
    v7 = 7364973;
    v6 = 0xE300000000000000;
  }

  if (a1 != 3)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0x6F65646976;
  if (a1 != 1)
  {
    v8 = 0x6567616D69;
  }

  if (a1)
  {
    v3 = 0xE500000000000000;
  }

  else
  {
    v8 = 0x6E776F6E6B6E75;
  }

  if (a1 <= 2u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v5;
  }

  if (v2 <= 2)
  {
    v10 = v3;
  }

  else
  {
    v10 = v4;
  }

  if (a2 <= 2u)
  {
    if (!a2)
    {
      v11 = 0xE700000000000000;
      if (v9 != 0x6E776F6E6B6E75)
      {
        goto LABEL_34;
      }

      goto LABEL_32;
    }

    v11 = 0xE500000000000000;
    if (a2 != 1)
    {
      if (v9 != 0x6567616D69)
      {
        goto LABEL_34;
      }

      goto LABEL_32;
    }

    v12 = 1701079414;
    goto LABEL_23;
  }

  if (a2 == 3)
  {
    v11 = 0xE700000000000000;
    if (v9 != 0x7972656C6C6167)
    {
      goto LABEL_34;
    }

    goto LABEL_32;
  }

  if (a2 == 4)
  {
    v11 = 0xE500000000000000;
    v12 = 1768191329;
LABEL_23:
    if (v9 != (v12 & 0xFFFF0000FFFFFFFFLL | 0x6F00000000))
    {
      goto LABEL_34;
    }

    goto LABEL_32;
  }

  v11 = 0xE300000000000000;
  if (v9 != 7364973)
  {
LABEL_34:
    v13 = sub_217D89D4C();
    goto LABEL_35;
  }

LABEL_32:
  if (v10 != v11)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t sub_217C9CBB4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 3u)
  {
    v9 = 0x6976614E72657375;
    v10 = 0xEE006E6F69746167;
    if (a1 != 6)
    {
      v9 = 0x6873617263;
      v10 = 0xE500000000000000;
    }

    v11 = 0x6975516563726F66;
    v12 = 0xE900000000000074;
    if (a1 != 4)
    {
      v11 = 0x72617073646C6566;
      v12 = 0xEF74657365524449;
    }

    if (a1 <= 5u)
    {
      v7 = v11;
    }

    else
    {
      v7 = v9;
    }

    if (v2 <= 5)
    {
      v8 = v12;
    }

    else
    {
      v8 = v10;
    }
  }

  else
  {
    v3 = 0xE700000000000000;
    v4 = 0x636142656E656373;
    v5 = 0xEF646E756F72676BLL;
    if (a1 != 2)
    {
      v4 = 0xD000000000000015;
      v5 = 0x8000000217DCCA10;
    }

    v6 = 0x676B636142707061;
    if (a1)
    {
      v3 = 0xED0000646E756F72;
    }

    else
    {
      v6 = 0x6E776F6E6B6E75;
    }

    if (a1 <= 1u)
    {
      v7 = v6;
    }

    else
    {
      v7 = v4;
    }

    if (v2 <= 1)
    {
      v8 = v3;
    }

    else
    {
      v8 = v5;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v13 = 0xEE006E6F69746167;
        if (v7 != 0x6976614E72657375)
        {
          goto LABEL_47;
        }
      }

      else
      {
        v13 = 0xE500000000000000;
        if (v7 != 0x6873617263)
        {
LABEL_47:
          v14 = sub_217D89D4C();
          goto LABEL_48;
        }
      }
    }

    else if (a2 == 4)
    {
      v13 = 0xE900000000000074;
      if (v7 != 0x6975516563726F66)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v13 = 0xEF74657365524449;
      if (v7 != 0x72617073646C6566)
      {
        goto LABEL_47;
      }
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v13 = 0xEF646E756F72676BLL;
      if (v7 != 0x636142656E656373)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v13 = 0x8000000217DCCA10;
      if (v7 != 0xD000000000000015)
      {
        goto LABEL_47;
      }
    }
  }

  else if (a2)
  {
    v13 = 0xED0000646E756F72;
    if (v7 != 0x676B636142707061)
    {
      goto LABEL_47;
    }
  }

  else
  {
    v13 = 0xE700000000000000;
    if (v7 != 0x6E776F6E6B6E75)
    {
      goto LABEL_47;
    }
  }

  if (v8 != v13)
  {
    goto LABEL_47;
  }

  v14 = 1;
LABEL_48:

  return v14 & 1;
}

uint64_t sub_217C9CE94(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 7827308;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 1751607656;
    }

    else
    {
      v4 = 0x6867694879726576;
    }

    if (v3 == 2)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE800000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x6C616D726F6ELL;
    }

    else
    {
      v4 = 7827308;
    }

    if (v3)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE300000000000000;
    }
  }

  v6 = 0xE300000000000000;
  v7 = 0xE400000000000000;
  v8 = 1751607656;
  if (a2 != 2)
  {
    v8 = 0x6867694879726576;
    v7 = 0xE800000000000000;
  }

  if (a2)
  {
    v2 = 0x6C616D726F6ELL;
    v6 = 0xE600000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_217D89D4C();
  }

  return v11 & 1;
}

uint64_t sub_217C9CFB8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6C616974696E69;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x64656C696166;
    }

    else
    {
      v4 = 0x656C6C69666C7566;
    }

    if (v3 == 2)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE900000000000064;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x676E69646E6570;
    }

    else
    {
      v4 = 0x6C616974696E69;
    }

    v5 = 0xE700000000000000;
  }

  v6 = 0xE600000000000000;
  v7 = 0x64656C696166;
  if (a2 != 2)
  {
    v7 = 0x656C6C69666C7566;
    v6 = 0xE900000000000064;
  }

  if (a2)
  {
    v2 = 0x676E69646E6570;
  }

  if (a2 <= 1u)
  {
    v8 = v2;
  }

  else
  {
    v8 = v7;
  }

  if (a2 <= 1u)
  {
    v9 = 0xE700000000000000;
  }

  else
  {
    v9 = v6;
  }

  if (v4 == v8 && v5 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_217D89D4C();
  }

  return v10 & 1;
}

uint64_t sub_217C9D0FC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E776F6E6B6E75;
  v3 = a1;
  v4 = 0xE700000000000000;
  if (a1 <= 3u)
  {
    v12 = 0xE500000000000000;
    v13 = 0x7265766F63;
    if (a1 != 2)
    {
      v13 = 0xD000000000000014;
      v12 = 0x8000000217DCC980;
    }

    v14 = 0x656C6369747261;
    if (!a1)
    {
      v14 = 0x6E776F6E6B6E75;
    }

    if (a1 <= 1u)
    {
      v10 = v14;
    }

    else
    {
      v10 = v13;
    }

    if (v3 <= 1)
    {
      v11 = 0xE700000000000000;
    }

    else
    {
      v11 = v12;
    }
  }

  else
  {
    v5 = 0x65727574616566;
    v6 = 0x737349664F646E65;
    v7 = 0xEA00000000006575;
    if (a1 != 7)
    {
      v6 = 0xD000000000000012;
      v7 = 0x8000000217DCBD70;
    }

    if (a1 != 6)
    {
      v5 = v6;
      v4 = v7;
    }

    v8 = 0x8000000217DCB560;
    v9 = 0xD000000000000013;
    if (a1 != 4)
    {
      v9 = 0x6867696C746F7073;
      v8 = 0xE900000000000074;
    }

    if (a1 <= 5u)
    {
      v10 = v9;
    }

    else
    {
      v10 = v5;
    }

    if (v3 <= 5)
    {
      v11 = v8;
    }

    else
    {
      v11 = v4;
    }
  }

  if (a2 > 3u)
  {
    if (a2 <= 5u)
    {
      if (a2 == 4)
      {
        v15 = 0x8000000217DCB560;
        if (v10 != 0xD000000000000013)
        {
          goto LABEL_49;
        }
      }

      else
      {
        v15 = 0xE900000000000074;
        if (v10 != 0x6867696C746F7073)
        {
          goto LABEL_49;
        }
      }

      goto LABEL_46;
    }

    if (a2 != 6)
    {
      if (a2 == 7)
      {
        v15 = 0xEA00000000006575;
        if (v10 != 0x737349664F646E65)
        {
          goto LABEL_49;
        }

        goto LABEL_46;
      }

      v2 = 0xD000000000000012;
      v15 = 0x8000000217DCBD70;
      goto LABEL_45;
    }

    v15 = 0xE700000000000000;
    v16 = 0x727574616566;
LABEL_40:
    if (v10 != (v16 & 0xFFFFFFFFFFFFLL | 0x65000000000000))
    {
      goto LABEL_49;
    }

    goto LABEL_46;
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v15 = 0xE500000000000000;
      if (v10 != 0x7265766F63)
      {
        goto LABEL_49;
      }
    }

    else
    {
      v15 = 0x8000000217DCC980;
      if (v10 != 0xD000000000000014)
      {
        goto LABEL_49;
      }
    }

    goto LABEL_46;
  }

  v15 = 0xE700000000000000;
  if (a2)
  {
    v16 = 0x6C6369747261;
    goto LABEL_40;
  }

LABEL_45:
  if (v10 != v2)
  {
LABEL_49:
    v17 = sub_217D89D4C();
    goto LABEL_50;
  }

LABEL_46:
  if (v11 != v15)
  {
    goto LABEL_49;
  }

  v17 = 1;
LABEL_50:

  return v17 & 1;
}

uint64_t sub_217C9D3C0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E776F6E6B6E75;
  v3 = a1;
  v4 = 0x654472656E6E6977;
  v5 = 0xED0000746C756166;
  if (a1 != 5)
  {
    v4 = 0x6C4172656E6E6977;
    v5 = 0xEF6574616E726574;
  }

  v6 = 0xE400000000000000;
  v7 = 1953719668;
  if (a1 != 3)
  {
    v7 = 0x724172656E6E6977;
    v6 = 0xED0000656C636974;
  }

  if (a1 <= 4u)
  {
    v4 = v7;
    v5 = v6;
  }

  v8 = 0x746C7561666564;
  if (a1 != 1)
  {
    v8 = 0x6C6F72746E6F63;
  }

  if (!a1)
  {
    v8 = 0x6E776F6E6B6E75;
  }

  if (a1 <= 2u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v4;
  }

  if (v3 <= 2)
  {
    v10 = 0xE700000000000000;
  }

  else
  {
    v10 = v5;
  }

  if (a2 <= 2u)
  {
    v11 = 0xE700000000000000;
    if (a2)
    {
      if (a2 == 1)
      {
        if (v9 != 0x746C7561666564)
        {
          goto LABEL_36;
        }
      }

      else if (v9 != 0x6C6F72746E6F63)
      {
        goto LABEL_36;
      }

      goto LABEL_33;
    }
  }

  else
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v11 = 0xED0000746C756166;
        if (v9 != 0x654472656E6E6977)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v11 = 0xEF6574616E726574;
        if (v9 != 0x6C4172656E6E6977)
        {
          goto LABEL_36;
        }
      }

      goto LABEL_33;
    }

    if (a2 == 3)
    {
      v11 = 0xE400000000000000;
      if (v9 != 1953719668)
      {
        goto LABEL_36;
      }

      goto LABEL_33;
    }

    v2 = 0x724172656E6E6977;
    v11 = 0xED0000656C636974;
  }

  if (v9 != v2)
  {
LABEL_36:
    v12 = sub_217D89D4C();
    goto LABEL_37;
  }

LABEL_33:
  if (v10 != v11)
  {
    goto LABEL_36;
  }

  v12 = 1;
LABEL_37:

  return v12 & 1;
}

uint64_t sub_217C9D610(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 4u)
  {
    v10 = 0x8000000217DCB300;
    v11 = 0xD000000000000010;
    v12 = 0x6576697463416F6ELL;
    v13 = 0xEF72656767697254;
    if (a1 != 8)
    {
      v12 = 0xD000000000000013;
      v13 = 0x8000000217DCB330;
    }

    if (a1 != 7)
    {
      v11 = v12;
      v10 = v13;
    }

    v14 = 0x8000000217DCB2C0;
    v15 = 0xD000000000000015;
    if (a1 != 5)
    {
      v15 = 0xD000000000000014;
      v14 = 0x8000000217DCB2E0;
    }

    if (a1 <= 6u)
    {
      v8 = v15;
    }

    else
    {
      v8 = v11;
    }

    if (v2 <= 6)
    {
      v9 = v14;
    }

    else
    {
      v9 = v10;
    }
  }

  else
  {
    v3 = 0xE700000000000000;
    v4 = 0x8000000217DCB260;
    v5 = 0xD00000000000001FLL;
    v6 = 0x8000000217DCB280;
    if (a1 != 3)
    {
      v6 = 0x8000000217DCB2A0;
    }

    if (a1 != 2)
    {
      v5 = 0xD00000000000001CLL;
      v4 = v6;
    }

    v7 = 0xD000000000000018;
    if (a1)
    {
      v3 = 0x8000000217DCB240;
    }

    else
    {
      v7 = 0x6E776F6E6B6E75;
    }

    if (a1 <= 1u)
    {
      v8 = v7;
    }

    else
    {
      v8 = v5;
    }

    if (v2 <= 1)
    {
      v9 = v3;
    }

    else
    {
      v9 = v4;
    }
  }

  if (a2 > 4u)
  {
    if (a2 <= 6u)
    {
      if (a2 == 5)
      {
        v17 = 0x8000000217DCB2C0;
        if (v8 != 0xD000000000000015)
        {
          goto LABEL_57;
        }
      }

      else
      {
        v17 = 0x8000000217DCB2E0;
        if (v8 != 0xD000000000000014)
        {
LABEL_57:
          v18 = sub_217D89D4C();
          goto LABEL_58;
        }
      }
    }

    else if (a2 == 7)
    {
      v17 = 0x8000000217DCB300;
      if (v8 != 0xD000000000000010)
      {
        goto LABEL_57;
      }
    }

    else if (a2 == 8)
    {
      v17 = 0xEF72656767697254;
      if (v8 != 0x6576697463416F6ELL)
      {
        goto LABEL_57;
      }
    }

    else
    {
      v17 = 0x8000000217DCB330;
      if (v8 != 0xD000000000000013)
      {
        goto LABEL_57;
      }
    }
  }

  else if (a2 <= 1u)
  {
    if (a2)
    {
      v17 = 0x8000000217DCB240;
      if (v8 != 0xD000000000000018)
      {
        goto LABEL_57;
      }
    }

    else
    {
      v17 = 0xE700000000000000;
      if (v8 != 0x6E776F6E6B6E75)
      {
        goto LABEL_57;
      }
    }
  }

  else if (a2 == 2)
  {
    v17 = 0x8000000217DCB260;
    if (v8 != 0xD00000000000001FLL)
    {
      goto LABEL_57;
    }
  }

  else
  {
    if (a2 == 3)
    {
      v16 = "blockedPlacementViaAppConfig";
    }

    else
    {
      v16 = "blockedPlacementViaTodayFeed";
    }

    v17 = (v16 - 32) | 0x8000000000000000;
    if (v8 != 0xD00000000000001CLL)
    {
      goto LABEL_57;
    }
  }

  if (v9 != v17)
  {
    goto LABEL_57;
  }

  v18 = 1;
LABEL_58:

  return v18 & 1;
}

uint64_t sub_217C9D918(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x64657269707865;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0xD000000000000017;
    }

    else
    {
      v4 = 0xD000000000000010;
    }

    if (v3 == 2)
    {
      v5 = 0x8000000217DCA720;
    }

    else
    {
      v5 = 0x8000000217DCA740;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x64657269707865;
    }

    else
    {
      v4 = 0xD000000000000016;
    }

    if (v3)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0x8000000217DCA700;
    }
  }

  v6 = 0xD000000000000017;
  v7 = 0x8000000217DCA740;
  if (a2 == 2)
  {
    v7 = 0x8000000217DCA720;
  }

  else
  {
    v6 = 0xD000000000000010;
  }

  if (a2)
  {
    v8 = 0xE700000000000000;
  }

  else
  {
    v2 = 0xD000000000000016;
    v8 = 0x8000000217DCA700;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v6;
  }

  if (a2 <= 1u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_217D89D4C();
  }

  return v11 & 1;
}

uint64_t sub_217C9DA44(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 <= 1u)
  {
    if (a1)
    {
      v2 = 0x65766973736170;
    }

    else
    {
      v2 = 0x6E776F6E6B6E75;
    }

    v3 = 0xE700000000000000;
  }

  else if (a1 == 2)
  {
    v3 = 0xE600000000000000;
    v2 = 0x657669746361;
  }

  else if (a1 == 3)
  {
    v2 = 0x736E6553656D6974;
    v3 = 0xED00006576697469;
  }

  else
  {
    v3 = 0xE800000000000000;
    v2 = 0x6C61636974697263;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v8 = 0x65766973736170;
    }

    else
    {
      v8 = 0x6E776F6E6B6E75;
    }

    v7 = 0xE700000000000000;
    if (v2 != v8)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v4 = 0x736E6553656D6974;
    v5 = 0xED00006576697469;
    if (a2 != 3)
    {
      v4 = 0x6C61636974697263;
      v5 = 0xE800000000000000;
    }

    if (a2 == 2)
    {
      v6 = 0x657669746361;
    }

    else
    {
      v6 = v4;
    }

    if (a2 == 2)
    {
      v7 = 0xE600000000000000;
    }

    else
    {
      v7 = v5;
    }

    if (v2 != v6)
    {
      goto LABEL_28;
    }
  }

  if (v3 != v7)
  {
LABEL_28:
    v9 = sub_217D89D4C();
    goto LABEL_29;
  }

  v9 = 1;
LABEL_29:

  return v9 & 1;
}

uint64_t sub_217C9DBE0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 1768319351;
    }

    else
    {
      v4 = 0x6E776F6E6B6E75;
    }

    if (v2)
    {
      v3 = 0xE400000000000000;
    }

    else
    {
      v3 = 0xE700000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE400000000000000;
    v4 = 1851881335;
  }

  else if (a1 == 3)
  {
    v3 = 0xE600000000000000;
    v4 = 0x47356E617777;
  }

  else
  {
    v4 = 0x6863616552746F6ELL;
    v3 = 0xEC000000656C6261;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 1768319351;
    }

    else
    {
      v9 = 0x6E776F6E6B6E75;
    }

    if (a2)
    {
      v8 = 0xE400000000000000;
    }

    else
    {
      v8 = 0xE700000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE600000000000000;
    v6 = 0x47356E617777;
    if (a2 != 3)
    {
      v6 = 0x6863616552746F6ELL;
      v5 = 0xEC000000656C6261;
    }

    if (a2 == 2)
    {
      v7 = 1851881335;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xE400000000000000;
    }

    else
    {
      v8 = v5;
    }

    if (v4 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v8)
  {
LABEL_33:
    v10 = sub_217D89D4C();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_217C9DD54(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEF65726F63536574;
  v3 = 0x6172756363616E69;
  v4 = a1;
  v5 = 0xE800000000000000;
  v6 = 0x656D6954656D6167;
  v7 = 0xD000000000000011;
  v8 = 0x8000000217DCB3B0;
  if (a1 != 4)
  {
    v7 = 0x6E696874656D6F73;
    v8 = 0xED000065736C4567;
  }

  if (a1 != 3)
  {
    v6 = v7;
    v5 = v8;
  }

  v9 = 0x53646579616C6564;
  v10 = 0xEC00000065726F63;
  if (a1 != 1)
  {
    v9 = 0x6F666E496D616574;
    v10 = 0xE800000000000000;
  }

  if (!a1)
  {
    v9 = 0x6172756363616E69;
    v10 = 0xEF65726F63536574;
  }

  if (a1 <= 2u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v6;
  }

  if (v4 <= 2)
  {
    v12 = v10;
  }

  else
  {
    v12 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0xE800000000000000;
      if (v11 != 0x656D6954656D6167)
      {
        goto LABEL_31;
      }
    }

    else if (a2 == 4)
    {
      v2 = 0x8000000217DCB3B0;
      if (v11 != 0xD000000000000011)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v2 = 0xED000065736C4567;
      if (v11 != 0x6E696874656D6F73)
      {
        goto LABEL_31;
      }
    }
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xEC00000065726F63;
        if (v11 != 0x53646579616C6564)
        {
          goto LABEL_31;
        }

        goto LABEL_28;
      }

      v2 = 0xE800000000000000;
      v3 = 0x6F666E496D616574;
    }

    if (v11 != v3)
    {
LABEL_31:
      v13 = sub_217D89D4C();
      goto LABEL_32;
    }
  }

LABEL_28:
  if (v12 != v2)
  {
    goto LABEL_31;
  }

  v13 = 1;
LABEL_32:

  return v13 & 1;
}

uint64_t sub_217C9DF58(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0xD000000000000013;
  v5 = 0x8000000217DCB1D0;
  v6 = 0x8000000217DCB1F0;
  v7 = 0xD000000000000017;
  if (a1 != 4)
  {
    v7 = 0x42797265636F7267;
    v6 = 0xED00006E6F747475;
  }

  if (a1 != 3)
  {
    v4 = v7;
    v5 = v6;
  }

  v8 = 0xE700000000000000;
  v9 = 0x726142756E656DLL;
  if (a1 != 1)
  {
    v9 = 0x53726142756E656DLL;
    v8 = 0xEE00776F72726168;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x6E776F6E6B6E75;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v4;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0x8000000217DCB1D0;
      if (v10 != 0xD000000000000013)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0x8000000217DCB1F0;
      if (v10 != 0xD000000000000017)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xED00006E6F747475;
      if (v10 != 0x42797265636F7267)
      {
LABEL_34:
        v13 = sub_217D89D4C();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x726142756E656DLL)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xEE00776F72726168;
      if (v10 != 0x53726142756E656DLL)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE700000000000000;
    if (v10 != 0x6E776F6E6B6E75)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t sub_217C9E168(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0xE400000000000000;
  v5 = 1885956979;
  v6 = 0xE400000000000000;
  if (a1 != 5)
  {
    v5 = 1701736302;
    v4 = 0xE400000000000000;
  }

  v7 = 1819242352;
  if (a1 != 3)
  {
    v7 = 0x646570706F7264;
    v6 = 0xE700000000000000;
  }

  if (a1 <= 4u)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 1954047342;
  if (a1 != 1)
  {
    v8 = 1953718636;
  }

  if (a1)
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v8 = 0x6E776F6E6B6E75;
  }

  if (a1 <= 2u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v5;
  }

  if (v2 <= 2)
  {
    v10 = v3;
  }

  else
  {
    v10 = v4;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      v11 = 0xE400000000000000;
      if (a2 == 1)
      {
        if (v9 != 1954047342)
        {
          goto LABEL_39;
        }
      }

      else if (v9 != 1953718636)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v11 = 0xE700000000000000;
      if (v9 != 0x6E776F6E6B6E75)
      {
        goto LABEL_39;
      }
    }
  }

  else if (a2 > 4u)
  {
    v11 = 0xE400000000000000;
    if (a2 == 5)
    {
      if (v9 != 1885956979)
      {
        goto LABEL_39;
      }
    }

    else if (v9 != 1701736302)
    {
LABEL_39:
      v12 = sub_217D89D4C();
      goto LABEL_40;
    }
  }

  else if (a2 == 3)
  {
    v11 = 0xE400000000000000;
    if (v9 != 1819242352)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v11 = 0xE700000000000000;
    if (v9 != 0x646570706F7264)
    {
      goto LABEL_39;
    }
  }

  if (v10 != v11)
  {
    goto LABEL_39;
  }

  v12 = 1;
LABEL_40:

  return v12 & 1;
}

uint64_t sub_217C9E33C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0x7374726F7073;
  v5 = 0xE700000000000000;
  if (a1 == 5)
  {
    v5 = 0xE600000000000000;
  }

  else
  {
    v4 = 0x73656C7A7A7570;
  }

  v6 = 0x6E6974656B72616DLL;
  v7 = 0xE900000000000067;
  if (a1 != 3)
  {
    v6 = 0xD000000000000012;
    v7 = 0x8000000217DCB160;
  }

  if (a1 <= 4u)
  {
    v4 = v6;
    v5 = v7;
  }

  v8 = 0xE700000000000000;
  v9 = 0x6C656E6E616863;
  if (a1 != 1)
  {
    v9 = 0x657573734977656ELL;
    v8 = 0xE800000000000000;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x6E776F6E6B6E75;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v4;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v12 = 0xE700000000000000;
        if (v10 != 0x6C656E6E616863)
        {
          goto LABEL_40;
        }
      }

      else
      {
        v12 = 0xE800000000000000;
        if (v10 != 0x657573734977656ELL)
        {
          goto LABEL_40;
        }
      }
    }

    else
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x6E776F6E6B6E75)
      {
        goto LABEL_40;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x7374726F7073)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x73656C7A7A7570)
      {
LABEL_40:
        v13 = sub_217D89D4C();
        goto LABEL_41;
      }
    }
  }

  else if (a2 == 3)
  {
    v12 = 0xE900000000000067;
    if (v10 != 0x6E6974656B72616DLL)
    {
      goto LABEL_40;
    }
  }

  else
  {
    v12 = 0x8000000217DCB160;
    if (v10 != 0xD000000000000012)
    {
      goto LABEL_40;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_40;
  }

  v13 = 1;
LABEL_41:

  return v13 & 1;
}

uint64_t sub_217C9E568(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E776F6E6B6E75;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x7474656C7377656ELL;
    }

    else
    {
      v4 = 0xD000000000000016;
    }

    if (v3 == 2)
    {
      v5 = 0xEA00000000007265;
    }

    else
    {
      v5 = 0x8000000217DCB9E0;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 1701736302;
    }

    else
    {
      v4 = 0x6E776F6E6B6E75;
    }

    if (v3)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  v6 = 0xE700000000000000;
  v7 = 0x7474656C7377656ELL;
  v8 = 0x8000000217DCB9E0;
  if (a2 == 2)
  {
    v8 = 0xEA00000000007265;
  }

  else
  {
    v7 = 0xD000000000000016;
  }

  if (a2)
  {
    v2 = 1701736302;
    v6 = 0xE400000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_217D89D4C();
  }

  return v11 & 1;
}

uint64_t sub_217C9E6A4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x6573616863727570;
    }

    else
    {
      v4 = 0x6E776F6E6B6E75;
    }

    if (v2)
    {
      v3 = 0xED00007465656853;
    }

    else
    {
      v3 = 0xE700000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0x50676E69646E616CLL;
    v3 = 0xEB00000000656761;
  }

  else if (a1 == 3)
  {
    v3 = 0xE400000000000000;
    v4 = 1802398060;
  }

  else
  {
    v3 = 0xE700000000000000;
    v4 = 0x65676150706D61;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x6573616863727570;
    }

    else
    {
      v9 = 0x6E776F6E6B6E75;
    }

    if (a2)
    {
      v8 = 0xED00007465656853;
    }

    else
    {
      v8 = 0xE700000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE400000000000000;
    v6 = 1802398060;
    if (a2 != 3)
    {
      v6 = 0x65676150706D61;
      v5 = 0xE700000000000000;
    }

    if (a2 == 2)
    {
      v7 = 0x50676E69646E616CLL;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xEB00000000656761;
    }

    else
    {
      v8 = v5;
    }

    if (v4 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v8)
  {
LABEL_33:
    v10 = sub_217D89D4C();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_217C9E848(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEE006E6F6974616DLL;
  v3 = 0xD000000000000011;
  v4 = 0x726F666E4973696DLL;
  v5 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v6 = 0x726F666E4973696DLL;
    }

    else
    {
      v6 = 0xD000000000000011;
    }

    if (v5 == 2)
    {
      v7 = 0xEE006E6F6974616DLL;
    }

    else
    {
      v7 = 0x8000000217DCC580;
    }
  }

  else
  {
    if (a1)
    {
      v6 = 0xD000000000000017;
    }

    else
    {
      v6 = 0xD000000000000011;
    }

    if (v5)
    {
      v7 = 0x8000000217DCC550;
    }

    else
    {
      v7 = 0x8000000217DCC530;
    }
  }

  if (a2 != 2)
  {
    v4 = 0xD000000000000011;
    v2 = 0x8000000217DCC580;
  }

  v8 = 0x8000000217DCC550;
  if (a2)
  {
    v3 = 0xD000000000000017;
  }

  else
  {
    v8 = 0x8000000217DCC530;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v4;
  }

  if (a2 <= 1u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v2;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_217D89D4C();
  }

  return v11 & 1;
}

uint64_t sub_217C9E974(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x746C7561666564;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x657061707377656ELL;
    }

    else
    {
      v4 = 0xD000000000000012;
    }

    if (v3 == 2)
    {
      v5 = 0xE900000000000072;
    }

    else
    {
      v5 = 0x8000000217DCB1A0;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x6F69647561;
    }

    else
    {
      v4 = 0x746C7561666564;
    }

    if (v3)
    {
      v5 = 0xE500000000000000;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  v6 = 0xE700000000000000;
  v7 = 0x657061707377656ELL;
  v8 = 0x8000000217DCB1A0;
  if (a2 == 2)
  {
    v8 = 0xE900000000000072;
  }

  else
  {
    v7 = 0xD000000000000012;
  }

  if (a2)
  {
    v2 = 0x6F69647561;
    v6 = 0xE500000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_217D89D4C();
  }

  return v11 & 1;
}

uint64_t sub_217C9EAB8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E776F6E6B6E75;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x6C65636E6163;
    }

    else
    {
      v4 = 0x6E6564646968;
    }

    v5 = 0xE600000000000000;
  }

  else
  {
    if (a1)
    {
      v4 = 0x6572616873;
    }

    else
    {
      v4 = 0x6E776F6E6B6E75;
    }

    if (v3)
    {
      v5 = 0xE500000000000000;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  v6 = 0xE700000000000000;
  v7 = 0x6C65636E6163;
  if (a2 != 2)
  {
    v7 = 0x6E6564646968;
  }

  if (a2)
  {
    v2 = 0x6572616873;
    v6 = 0xE500000000000000;
  }

  if (a2 <= 1u)
  {
    v8 = v2;
  }

  else
  {
    v8 = v7;
  }

  if (a2 <= 1u)
  {
    v9 = v6;
  }

  else
  {
    v9 = 0xE600000000000000;
  }

  if (v4 == v8 && v5 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_217D89D4C();
  }

  return v10 & 1;
}

uint64_t sub_217C9EBE4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E776F6E6B6E75;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x6269726373627573;
    }

    else
    {
      v4 = 0x6373627553746F6ELL;
    }

    if (v3 == 2)
    {
      v5 = 0xEA00000000006465;
    }

    else
    {
      v5 = 0xED00006465626972;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x6C61697274;
    }

    else
    {
      v4 = 0x6E776F6E6B6E75;
    }

    if (v3)
    {
      v5 = 0xE500000000000000;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  v6 = 0xE700000000000000;
  v7 = 0x6269726373627573;
  v8 = 0xEA00000000006465;
  if (a2 != 2)
  {
    v7 = 0x6373627553746F6ELL;
    v8 = 0xED00006465626972;
  }

  if (a2)
  {
    v2 = 0x6C61697274;
    v6 = 0xE500000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_217D89D4C();
  }

  return v11 & 1;
}

uint64_t sub_217C9ED40(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x6465626D45626577;
  v6 = 0x50676E69646E616CLL;
  v7 = 0xEB00000000656761;
  if (a1 != 4)
  {
    v6 = 0x6B6E696C70656564;
    v7 = 0xE800000000000000;
  }

  if (a1 != 3)
  {
    v5 = v6;
    v4 = v7;
  }

  v8 = 0x6163696669746F6ELL;
  v9 = 0xEC0000006E6F6974;
  if (a1 != 1)
  {
    v8 = 0x6C69546F63736964;
    v9 = 0xE900000000000065;
  }

  if (a1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 0x6E776F6E6B6E75;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xE800000000000000;
      if (v10 != 0x6465626D45626577)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xEB00000000656761;
      if (v10 != 0x50676E69646E616CLL)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE800000000000000;
      if (v10 != 0x6B6E696C70656564)
      {
LABEL_34:
        v13 = sub_217D89D4C();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xEC0000006E6F6974;
      if (v10 != 0x6163696669746F6ELL)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE900000000000065;
      if (v10 != 0x6C69546F63736964)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE700000000000000;
    if (v10 != 0x6E776F6E6B6E75)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t sub_217C9EF50(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x73736563637573;
    }

    else
    {
      v5 = 0x6E776F6E6B6E75;
    }

    v6 = 0xE700000000000000;
  }

  else
  {
    v3 = 0xE600000000000000;
    v4 = 0x6C65636E6163;
    if (a1 != 3)
    {
      v4 = 0xD000000000000015;
      v3 = 0x8000000217DCC720;
    }

    if (a1 == 2)
    {
      v5 = 0x6572756C696166;
    }

    else
    {
      v5 = v4;
    }

    if (v2 == 2)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = v3;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v11 = 0x73736563637573;
    }

    else
    {
      v11 = 0x6E776F6E6B6E75;
    }

    v10 = 0xE700000000000000;
    if (v5 != v11)
    {
      goto LABEL_32;
    }
  }

  else
  {
    v7 = 0x6C65636E6163;
    v8 = 0x8000000217DCC720;
    if (a2 == 3)
    {
      v8 = 0xE600000000000000;
    }

    else
    {
      v7 = 0xD000000000000015;
    }

    if (a2 == 2)
    {
      v9 = 0x6572756C696166;
    }

    else
    {
      v9 = v7;
    }

    if (a2 == 2)
    {
      v10 = 0xE700000000000000;
    }

    else
    {
      v10 = v8;
    }

    if (v5 != v9)
    {
      goto LABEL_32;
    }
  }

  if (v6 != v10)
  {
LABEL_32:
    v12 = sub_217D89D4C();
    goto LABEL_33;
  }

  v12 = 1;
LABEL_33:

  return v12 & 1;
}

uint64_t sub_217C9F0CC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x73756C507377656ELL;
    }

    else
    {
      v4 = 0x6E776F6E6B6E75;
    }

    if (v2)
    {
      v3 = 0xE800000000000000;
    }

    else
    {
      v3 = 0xE700000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE600000000000000;
    v4 = 0x726566664F62;
  }

  else if (a1 == 3)
  {
    v3 = 0xE700000000000000;
    v4 = 0x656C646E754273;
  }

  else
  {
    v3 = 0xE600000000000000;
    v4 = 0x61746C654470;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x73756C507377656ELL;
    }

    else
    {
      v9 = 0x6E776F6E6B6E75;
    }

    if (a2)
    {
      v8 = 0xE800000000000000;
    }

    else
    {
      v8 = 0xE700000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE700000000000000;
    v6 = 0x656C646E754273;
    if (a2 != 3)
    {
      v6 = 0x61746C654470;
      v5 = 0xE600000000000000;
    }

    if (a2 == 2)
    {
      v7 = 0x726566664F62;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xE600000000000000;
    }

    else
    {
      v8 = v5;
    }

    if (v4 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v8)
  {
LABEL_33:
    v10 = sub_217D89D4C();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_217C9F248(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x69746375646F7270;
    }

    else
    {
      v4 = 0x6E776F6E6B6E75;
    }

    if (v2)
    {
      v3 = 0xEA00000000006E6FLL;
    }

    else
    {
      v3 = 0xE700000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE700000000000000;
    v4 = 0x676E6967617473;
  }

  else if (a1 == 3)
  {
    v3 = 0xE200000000000000;
    v4 = 24945;
  }

  else
  {
    v3 = 0xE400000000000000;
    v4 = 1953719668;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x69746375646F7270;
    }

    else
    {
      v9 = 0x6E776F6E6B6E75;
    }

    if (a2)
    {
      v8 = 0xEA00000000006E6FLL;
    }

    else
    {
      v8 = 0xE700000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE200000000000000;
    v6 = 24945;
    if (a2 != 3)
    {
      v6 = 1953719668;
      v5 = 0xE400000000000000;
    }

    if (a2 == 2)
    {
      v7 = 0x676E6967617473;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xE700000000000000;
    }

    else
    {
      v8 = v5;
    }

    if (v4 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v8)
  {
LABEL_33:
    v10 = sub_217D89D4C();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_217C9F3B4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE400000000000000;
  v4 = 0x6D6F436863746177;
  v5 = 0xED00006574656C70;
  v6 = 0xE400000000000000;
  v7 = 1885956979;
  if (a1 != 4)
  {
    v7 = 0x726F4D6E7261656CLL;
    v6 = 0xE900000000000065;
  }

  if (a1 != 3)
  {
    v4 = v7;
    v5 = v6;
  }

  v8 = 0xE500000000000000;
  v9 = 0x6573756170;
  if (a1 != 1)
  {
    v9 = 0x656D75736572;
    v8 = 0xE600000000000000;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 2036427888;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v4;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xED00006574656C70;
      if (v10 != 0x6D6F436863746177)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xE400000000000000;
      if (v10 != 1885956979)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE900000000000065;
      if (v10 != 0x726F4D6E7261656CLL)
      {
LABEL_34:
        v13 = sub_217D89D4C();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xE500000000000000;
      if (v10 != 0x6573756170)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x656D75736572)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE400000000000000;
    if (v10 != 2036427888)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t sub_217C9F594(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x6142686372616573;
    }

    else
    {
      v3 = 0x6E776F6E6B6E75;
    }

    if (v2)
    {
      v4 = 0xE900000000000072;
    }

    else
    {
      v4 = 0xE700000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0x6553746E65636572;
    v4 = 0xEC00000068637261;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0xD000000000000016;
    }

    else
    {
      v3 = 0xD000000000000019;
    }

    if (v2 == 3)
    {
      v4 = 0x8000000217DCB430;
    }

    else
    {
      v4 = 0x8000000217DCB450;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v7 = 0x6142686372616573;
    }

    else
    {
      v7 = 0x6E776F6E6B6E75;
    }

    if (a2)
    {
      v6 = 0xE900000000000072;
    }

    else
    {
      v6 = 0xE700000000000000;
    }

    if (v3 != v7)
    {
      goto LABEL_37;
    }
  }

  else if (a2 == 2)
  {
    v6 = 0xEC00000068637261;
    if (v3 != 0x6553746E65636572)
    {
LABEL_37:
      v8 = sub_217D89D4C();
      goto LABEL_38;
    }
  }

  else
  {
    if (a2 == 3)
    {
      v5 = 0xD000000000000016;
    }

    else
    {
      v5 = 0xD000000000000019;
    }

    if (a2 == 3)
    {
      v6 = 0x8000000217DCB430;
    }

    else
    {
      v6 = 0x8000000217DCB450;
    }

    if (v3 != v5)
    {
      goto LABEL_37;
    }
  }

  if (v4 != v6)
  {
    goto LABEL_37;
  }

  v8 = 1;
LABEL_38:

  return v8 & 1;
}

uint64_t sub_217C9F748(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E776F6E6B6E75;
  if (a1 > 1u)
  {
    v5 = a1 == 2;
    v3 = 0xE900000000000065;
    v4 = 0xE800000000000000;
    if (a1 == 2)
    {
      v6 = 0x6C69546F63736964;
    }

    else
    {
      v6 = 0x6465626D45626577;
    }
  }

  else
  {
    v3 = 0xE700000000000000;
    v4 = 0xE600000000000000;
    v5 = a1 == 0;
    if (a1)
    {
      v6 = 0x6D6574737973;
    }

    else
    {
      v6 = 0x6E776F6E6B6E75;
    }
  }

  if (v5)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  v8 = 0xE700000000000000;
  v9 = 0x6C69546F63736964;
  v10 = 0xE900000000000065;
  if (a2 != 2)
  {
    v9 = 0x6465626D45626577;
    v10 = 0xE800000000000000;
  }

  if (a2)
  {
    v2 = 0x6D6574737973;
    v8 = 0xE600000000000000;
  }

  if (a2 <= 1u)
  {
    v11 = v2;
  }

  else
  {
    v11 = v9;
  }

  if (a2 <= 1u)
  {
    v12 = v8;
  }

  else
  {
    v12 = v10;
  }

  if (v6 == v11 && v7 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_217D89D4C();
  }

  return v13 & 1;
}

uint64_t sub_217C9F888(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E776F6E6B6E75;
  v3 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x6F4E6E657473696CLL;
    }

    else
    {
      v4 = 0x6E776F6E6B6E75;
    }

    if (v3)
    {
      v5 = 0xE900000000000077;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0x654E6E657473696CLL;
    v5 = 0xEA00000000007478;
  }

  else if (a1 == 3)
  {
    v4 = 0x614C6E657473696CLL;
    v5 = 0xEB00000000726574;
  }

  else
  {
    v5 = 0xE600000000000000;
    v4 = 0x6C65636E6163;
  }

  if (a2 <= 1u)
  {
    v6 = 0xE700000000000000;
    v7 = 0x6F4E6E657473696CLL;
    v8 = 0xE900000000000077;
    v9 = a2 == 0;
  }

  else
  {
    v2 = 0x654E6E657473696CLL;
    v6 = 0xEA00000000007478;
    v7 = 0x614C6E657473696CLL;
    v8 = 0xEB00000000726574;
    if (a2 != 3)
    {
      v7 = 0x6C65636E6163;
      v8 = 0xE600000000000000;
    }

    v9 = a2 == 2;
  }

  if (v9)
  {
    v10 = v2;
  }

  else
  {
    v10 = v7;
  }

  if (v9)
  {
    v11 = v6;
  }

  else
  {
    v11 = v8;
  }

  if (v4 == v10 && v5 == v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_217D89D4C();
  }

  return v12 & 1;
}

uint64_t sub_217C9FA1C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 4u)
  {
    v11 = 0xD000000000000010;
    v12 = 0x8000000217DCC760;
    v13 = 0x8000000217DCC780;
    v14 = 0xD000000000000016;
    if (a1 != 8)
    {
      v14 = 0x6E65746E49707061;
      v13 = 0xE900000000000074;
    }

    if (a1 != 7)
    {
      v11 = v14;
      v12 = v13;
    }

    v15 = 1869768040;
    if (a1 != 5)
    {
      v15 = 1769105779;
    }

    if (a1 <= 6u)
    {
      v9 = v15;
    }

    else
    {
      v9 = v11;
    }

    if (v2 <= 6)
    {
      v10 = 0xE400000000000000;
    }

    else
    {
      v10 = v12;
    }
  }

  else
  {
    v3 = 0xE700000000000000;
    v4 = 0xE700000000000000;
    v5 = 0x776F4E79616C70;
    v6 = 0x636172547478656ELL;
    v7 = 0xE90000000000006BLL;
    if (a1 != 3)
    {
      v6 = 0x697242796C696164;
      v7 = 0xED0000676E696665;
    }

    if (a1 != 2)
    {
      v5 = v6;
      v4 = v7;
    }

    v8 = 0x7473696C79616C70;
    if (a1)
    {
      v3 = 0xE800000000000000;
    }

    else
    {
      v8 = 0x6E776F6E6B6E75;
    }

    if (a1 <= 1u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v5;
    }

    if (v2 <= 1)
    {
      v10 = v3;
    }

    else
    {
      v10 = v4;
    }
  }

  if (a2 > 4u)
  {
    if (a2 <= 6u)
    {
      v16 = 0xE400000000000000;
      if (a2 == 5)
      {
        if (v9 != 1869768040)
        {
          goto LABEL_57;
        }
      }

      else if (v9 != 1769105779)
      {
LABEL_57:
        v17 = sub_217D89D4C();
        goto LABEL_58;
      }
    }

    else if (a2 == 7)
    {
      v16 = 0x8000000217DCC760;
      if (v9 != 0xD000000000000010)
      {
        goto LABEL_57;
      }
    }

    else if (a2 == 8)
    {
      v16 = 0x8000000217DCC780;
      if (v9 != 0xD000000000000016)
      {
        goto LABEL_57;
      }
    }

    else
    {
      v16 = 0xE900000000000074;
      if (v9 != 0x6E65746E49707061)
      {
        goto LABEL_57;
      }
    }
  }

  else if (a2 <= 1u)
  {
    if (a2)
    {
      v16 = 0xE800000000000000;
      if (v9 != 0x7473696C79616C70)
      {
        goto LABEL_57;
      }
    }

    else
    {
      v16 = 0xE700000000000000;
      if (v9 != 0x6E776F6E6B6E75)
      {
        goto LABEL_57;
      }
    }
  }

  else if (a2 == 2)
  {
    v16 = 0xE700000000000000;
    if (v9 != 0x776F4E79616C70)
    {
      goto LABEL_57;
    }
  }

  else if (a2 == 3)
  {
    v16 = 0xE90000000000006BLL;
    if (v9 != 0x636172547478656ELL)
    {
      goto LABEL_57;
    }
  }

  else
  {
    v16 = 0xED0000676E696665;
    if (v9 != 0x697242796C696164)
    {
      goto LABEL_57;
    }
  }

  if (v10 != v16)
  {
    goto LABEL_57;
  }

  v17 = 1;
LABEL_58:

  return v17 & 1;
}

uint64_t sub_217C9FD40(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0x756F72676B636162;
  v5 = 0xEA0000000000646ELL;
  if (a1 != 5)
  {
    v4 = 0x646957656C6F6877;
    v5 = 0xEB00000000746567;
  }

  v6 = 0x4E6E6F6974636573;
  v7 = 0xEB00000000656D61;
  if (a1 != 3)
  {
    v6 = 0x6465626D45626577;
    v7 = 0xE800000000000000;
  }

  if (a1 <= 4u)
  {
    v4 = v6;
    v5 = v7;
  }

  v8 = 0xE700000000000000;
  v9 = 0x656C6369747261;
  if (a1 != 1)
  {
    v9 = 0x6569726F74536F6ELL;
    v8 = 0xE900000000000073;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x6E776F6E6B6E75;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v4;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v14 = 0xE700000000000000;
        if (v10 != 0x656C6369747261)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v14 = 0xE900000000000073;
        if (v10 != 0x6569726F74536F6ELL)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      v14 = 0xE700000000000000;
      if (v10 != 0x6E776F6E6B6E75)
      {
        goto LABEL_39;
      }
    }
  }

  else
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v14 = 0xEA0000000000646ELL;
        if (v10 != 0x756F72676B636162)
        {
          goto LABEL_39;
        }

        goto LABEL_37;
      }

      v12 = 0x646957656C6F6877;
      v13 = 7628135;
    }

    else
    {
      if (a2 != 3)
      {
        v14 = 0xE800000000000000;
        if (v10 != 0x6465626D45626577)
        {
          goto LABEL_39;
        }

        goto LABEL_37;
      }

      v12 = 0x4E6E6F6974636573;
      v13 = 6647137;
    }

    v14 = v13 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
    if (v10 != v12)
    {
LABEL_39:
      v15 = sub_217D89D4C();
      goto LABEL_40;
    }
  }

LABEL_37:
  if (v11 != v14)
  {
    goto LABEL_39;
  }

  v15 = 1;
LABEL_40:

  return v15 & 1;
}

uint64_t sub_217C9FF94(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x45736569726F7473;
    }

    else
    {
      v4 = 0x6E776F6E6B6E75;
    }

    if (v2)
    {
      v3 = 0xEE006465736F7078;
    }

    else
    {
      v3 = 0xE700000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0x6569726F74536F6ELL;
    v3 = 0xE900000000000073;
  }

  else if (a1 == 3)
  {
    v3 = 0xE500000000000000;
    v4 = 0x726F727265;
  }

  else
  {
    v3 = 0xE700000000000000;
    v4 = 0x656E696C66666FLL;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x45736569726F7473;
    }

    else
    {
      v9 = 0x6E776F6E6B6E75;
    }

    if (a2)
    {
      v8 = 0xEE006465736F7078;
    }

    else
    {
      v8 = 0xE700000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE500000000000000;
    v6 = 0x726F727265;
    if (a2 != 3)
    {
      v6 = 0x656E696C66666FLL;
      v5 = 0xE700000000000000;
    }

    if (a2 == 2)
    {
      v7 = 0x6569726F74536F6ELL;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xE900000000000073;
    }

    else
    {
      v8 = v5;
    }

    if (v4 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v8)
  {
LABEL_33:
    v10 = sub_217D89D4C();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_217CA0138(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x7469617274726F70;
    }

    else
    {
      v3 = 0x6E776F6E6B6E75;
    }

    if (v2)
    {
      v4 = 0xE800000000000000;
    }

    else
    {
      v4 = 0xE700000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xD000000000000012;
    v4 = 0x8000000217DCB8E0;
  }

  else
  {
    v3 = 0x70616373646E616CLL;
    if (v2 == 3)
    {
      v4 = 0xED00007466654C65;
    }

    else
    {
      v4 = 0xEE00746867695265;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v8 = 0x7469617274726F70;
    }

    else
    {
      v8 = 0x6E776F6E6B6E75;
    }

    if (a2)
    {
      v7 = 0xE800000000000000;
    }

    else
    {
      v7 = 0xE700000000000000;
    }

    if (v3 != v8)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xED00007466654C65;
    if (a2 != 3)
    {
      v5 = 0xEE00746867695265;
    }

    if (a2 == 2)
    {
      v6 = 0xD000000000000012;
    }

    else
    {
      v6 = 0x70616373646E616CLL;
    }

    if (a2 == 2)
    {
      v7 = 0x8000000217DCB8E0;
    }

    else
    {
      v7 = v5;
    }

    if (v3 != v6)
    {
      goto LABEL_33;
    }
  }

  if (v4 != v7)
  {
LABEL_33:
    v9 = sub_217D89D4C();
    goto LABEL_34;
  }

  v9 = 1;
LABEL_34:

  return v9 & 1;
}

uint64_t sub_217CA02EC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E776F6E6B6E75;
  v3 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 1869903201;
    }

    else
    {
      v5 = 0x6E776F6E6B6E75;
    }

    if (v3)
    {
      v4 = 0xE400000000000000;
    }

    else
    {
      v4 = 0xE700000000000000;
    }
  }

  else if (a1 == 2)
  {
    v5 = 0x6C6C6F4664726168;
    v4 = 0xEA0000000000776FLL;
  }

  else if (a1 == 3)
  {
    v4 = 0xE700000000000000;
    v5 = 0x64657461727563;
  }

  else
  {
    v4 = 0xE400000000000000;
    v5 = 1869048929;
  }

  if (a2 <= 1u)
  {
    v6 = 0xE700000000000000;
    v7 = 0xE400000000000000;
    v8 = 1869903201;
    v9 = a2 == 0;
  }

  else
  {
    v2 = 0x6C6C6F4664726168;
    v6 = 0xEA0000000000776FLL;
    v7 = 0xE700000000000000;
    v8 = 0x64657461727563;
    if (a2 != 3)
    {
      v8 = 1869048929;
      v7 = 0xE400000000000000;
    }

    v9 = a2 == 2;
  }

  if (v9)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v9)
  {
    v11 = v6;
  }

  else
  {
    v11 = v7;
  }

  if (v5 == v10 && v4 == v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_217D89D4C();
  }

  return v12 & 1;
}

uint64_t sub_217CA0450(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x64657461657263;
  v3 = a1;
  v4 = 0xE700000000000000;
  v5 = 0x6564726163736964;
  v6 = 0x656C6C69666C7566;
  if (a1 != 4)
  {
    v6 = 0x65746E6573657270;
  }

  if (a1 != 3)
  {
    v5 = v6;
  }

  v7 = 0xE600000000000000;
  v8 = 0x64656C696166;
  if (a1 != 1)
  {
    v8 = 0x676E69646E6570;
    v7 = 0xE700000000000000;
  }

  if (a1)
  {
    v4 = v7;
  }

  else
  {
    v8 = 0x64657461657263;
  }

  if (a1 <= 2u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v5;
  }

  if (v3 <= 2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xE900000000000064;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0x6564726163736964;
    }

    else if (a2 == 4)
    {
      v2 = 0x656C6C69666C7566;
    }

    else
    {
      v2 = 0x65746E6573657270;
    }

    v11 = 0xE900000000000064;
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v11 = 0xE600000000000000;
      v2 = 0x64656C696166;
    }

    else
    {
      v11 = 0xE700000000000000;
      v2 = 0x676E69646E6570;
    }
  }

  else
  {
    v11 = 0xE700000000000000;
  }

  if (v9 == v2 && v10 == v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_217D89D4C();
  }

  return v12 & 1;
}

uint64_t sub_217CA0610(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE500000000000000;
  v4 = 0xEE007265646E6552;
  v5 = 0x4674736575716572;
  if (a1 == 2)
  {
    v5 = 0x6F5464656C696166;
  }

  else
  {
    v4 = 0xED000064656C6961;
  }

  v6 = 0xD000000000000015;
  if (a1)
  {
    v3 = 0x8000000217DCC600;
  }

  else
  {
    v6 = 0x726568746FLL;
  }

  if (a1 <= 1u)
  {
    v7 = v6;
  }

  else
  {
    v7 = v5;
  }

  if (v2 <= 1)
  {
    v8 = v3;
  }

  else
  {
    v8 = v4;
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v11 = 0x6F5464656C696166;
    }

    else
    {
      v11 = 0x4674736575716572;
    }

    if (a2 == 2)
    {
      v10 = 0xEE007265646E6552;
    }

    else
    {
      v10 = 0xED000064656C6961;
    }

    if (v7 != v11)
    {
      goto LABEL_31;
    }
  }

  else
  {
    if (a2)
    {
      v9 = 0xD000000000000015;
    }

    else
    {
      v9 = 0x726568746FLL;
    }

    if (a2)
    {
      v10 = 0x8000000217DCC600;
    }

    else
    {
      v10 = 0xE500000000000000;
    }

    if (v7 != v9)
    {
      goto LABEL_31;
    }
  }

  if (v8 != v10)
  {
LABEL_31:
    v12 = sub_217D89D4C();
    goto LABEL_32;
  }

  v12 = 1;
LABEL_32:

  return v12 & 1;
}

uint64_t sub_217CA0784(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E776F6E6B6E75;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x65726F7473707061;
    }

    else
    {
      v4 = 6448503;
    }

    if (v3 == 2)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xE300000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 1937204590;
    }

    else
    {
      v4 = 0x6E776F6E6B6E75;
    }

    if (v3)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  v6 = 0xE700000000000000;
  v7 = 0xE800000000000000;
  v8 = 0x65726F7473707061;
  if (a2 != 2)
  {
    v8 = 6448503;
    v7 = 0xE300000000000000;
  }

  if (a2)
  {
    v2 = 1937204590;
    v6 = 0xE400000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_217D89D4C();
  }

  return v11 & 1;
}

uint64_t sub_217CA08A8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E776F6E6B6E75;
  if (a1 > 1u)
  {
    v5 = a1 == 2;
    v3 = 0xEC0000006B6E694CLL;
    v4 = 0xEC0000006E6F6974;
    if (a1 == 2)
    {
      v6 = 0x6C616E7265747865;
    }

    else
    {
      v6 = 0x6163696669746F6ELL;
    }
  }

  else
  {
    v3 = 0xE700000000000000;
    v4 = 0xEB00000000746567;
    v5 = a1 == 0;
    if (a1)
    {
      v6 = 0x6469577961646F74;
    }

    else
    {
      v6 = 0x6E776F6E6B6E75;
    }
  }

  if (v5)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  v8 = 0xE700000000000000;
  v9 = 0x6C616E7265747865;
  v10 = 0xEC0000006B6E694CLL;
  if (a2 != 2)
  {
    v9 = 0x6163696669746F6ELL;
    v10 = 0xEC0000006E6F6974;
  }

  if (a2)
  {
    v2 = 0x6469577961646F74;
    v8 = 0xEB00000000746567;
  }

  if (a2 <= 1u)
  {
    v11 = v2;
  }

  else
  {
    v11 = v9;
  }

  if (a2 <= 1u)
  {
    v12 = v8;
  }

  else
  {
    v12 = v10;
  }

  if (v6 == v11 && v7 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_217D89D4C();
  }

  return v13 & 1;
}

uint64_t sub_217CA0A18(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E776F6E6B6E75;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 6775156;
    }

    else
    {
      v4 = 0x657069636572;
    }

    if (v3 == 2)
    {
      v5 = 0xE300000000000000;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x656C6369747261;
    }

    else
    {
      v4 = 0x6E776F6E6B6E75;
    }

    v5 = 0xE700000000000000;
  }

  v6 = 0xE300000000000000;
  v7 = 6775156;
  if (a2 != 2)
  {
    v7 = 0x657069636572;
    v6 = 0xE600000000000000;
  }

  if (a2)
  {
    v2 = 0x656C6369747261;
  }

  if (a2 <= 1u)
  {
    v8 = v2;
  }

  else
  {
    v8 = v7;
  }

  if (a2 <= 1u)
  {
    v9 = 0xE700000000000000;
  }

  else
  {
    v9 = v6;
  }

  if (v4 == v8 && v5 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_217D89D4C();
  }

  return v10 & 1;
}

uint64_t sub_217CA0B44(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0xD000000000000018;
  if (a1 == 5)
  {
    v5 = 0x8000000217DCC250;
  }

  else
  {
    v4 = 0x6169726F74696465;
    v5 = 0xEF756F59726F466CLL;
  }

  v6 = 0x656873696C627570;
  v7 = 0xEF756F59726F4672;
  if (a1 != 3)
  {
    v6 = 0xD00000000000001ALL;
    v7 = 0x8000000217DCC230;
  }

  if (a1 > 4u)
  {
    v6 = v4;
    v7 = v5;
  }

  v8 = 0x8000000217DCC1E0;
  if (v2 != 1)
  {
    v8 = 0x8000000217DCC200;
  }

  if (v2)
  {
    v9 = 0xD000000000000012;
  }

  else
  {
    v9 = 0x6E776F6E6B6E75;
  }

  if (v2)
  {
    v3 = v8;
  }

  if (v2 <= 2)
  {
    v10 = v9;
  }

  else
  {
    v10 = v6;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v7;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v12 = 0x8000000217DCC1E0;
      }

      else
      {
        v12 = 0x8000000217DCC200;
      }

      if (v10 != 0xD000000000000012)
      {
        goto LABEL_42;
      }
    }

    else
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x6E776F6E6B6E75)
      {
        goto LABEL_42;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v12 = 0x8000000217DCC250;
      if (v10 != 0xD000000000000018)
      {
        goto LABEL_42;
      }
    }

    else
    {
      v12 = 0xEF756F59726F466CLL;
      if (v10 != 0x6169726F74696465)
      {
LABEL_42:
        v13 = sub_217D89D4C();
        goto LABEL_43;
      }
    }
  }

  else if (a2 == 3)
  {
    v12 = 0xEF756F59726F4672;
    if (v10 != 0x656873696C627570)
    {
      goto LABEL_42;
    }
  }

  else
  {
    v12 = 0x8000000217DCC230;
    if (v10 != 0xD00000000000001ALL)
    {
      goto LABEL_42;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_42;
  }

  v13 = 1;
LABEL_43:

  return v13 & 1;
}

uint64_t sub_217CA0D50(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x705565636166;
  if (a1 != 5)
  {
    v5 = 0x6E776F4465636166;
    v4 = 0xE800000000000000;
  }

  v6 = 0xED00007466654C65;
  if (a1 != 3)
  {
    v6 = 0xEE00746867695265;
  }

  if (a1 > 4u)
  {
    v7 = v4;
  }

  else
  {
    v5 = 0x70616373646E616CLL;
    v7 = v6;
  }

  v8 = 0xE800000000000000;
  v9 = 0x7469617274726F70;
  if (a1 != 1)
  {
    v9 = 0xD000000000000012;
    v8 = 0x8000000217DCB8E0;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x6E776F6E6B6E75;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v7;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v12 = 0xE800000000000000;
        if (v10 != 0x7469617274726F70)
        {
          goto LABEL_40;
        }
      }

      else
      {
        v12 = 0x8000000217DCB8E0;
        if (v10 != 0xD000000000000012)
        {
          goto LABEL_40;
        }
      }
    }

    else
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x6E776F6E6B6E75)
      {
        goto LABEL_40;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x705565636166)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v12 = 0xE800000000000000;
      if (v10 != 0x6E776F4465636166)
      {
LABEL_40:
        v13 = sub_217D89D4C();
        goto LABEL_41;
      }
    }
  }

  else if (a2 == 3)
  {
    v12 = 0xED00007466654C65;
    if (v10 != 0x70616373646E616CLL)
    {
      goto LABEL_40;
    }
  }

  else
  {
    v12 = 0xEE00746867695265;
    if (v10 != 0x70616373646E616CLL)
    {
      goto LABEL_40;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_40;
  }

  v13 = 1;
LABEL_41:

  return v13 & 1;
}

uint64_t sub_217CA0F94(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0xD000000000000012;
  v5 = 0x8000000217DCABB0;
  v6 = 0x54676E6964616F6CLL;
  v7 = 0xEE0074756F656D69;
  if (a1 != 4)
  {
    v6 = 0x64656C696166;
    v7 = 0xE600000000000000;
  }

  if (a1 != 3)
  {
    v4 = v6;
    v5 = v7;
  }

  v8 = 0x6572676F72506E69;
  v9 = 0xEA00000000007373;
  if (a1 != 1)
  {
    v8 = 0x506F547964616572;
    v9 = 0xEB0000000079616CLL;
  }

  if (a1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 0x6E776F6E6B6E75;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v4;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0x8000000217DCABB0;
      if (v10 != 0xD000000000000012)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xEE0074756F656D69;
      if (v10 != 0x54676E6964616F6CLL)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x64656C696166)
      {
LABEL_34:
        v13 = sub_217D89D4C();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xEA00000000007373;
      if (v10 != 0x6572676F72506E69)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xEB0000000079616CLL;
      if (v10 != 0x506F547964616572)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE700000000000000;
    if (v10 != 0x6E776F6E6B6E75)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t sub_217CA11A0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E776F6E6B6E75;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 1685221239;
    }

    else
    {
      v4 = 0x72657474656CLL;
    }

    if (v3 == 2)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 7105633;
    }

    else
    {
      v4 = 0x6E776F6E6B6E75;
    }

    if (v3)
    {
      v5 = 0xE300000000000000;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  v6 = 0xE700000000000000;
  v7 = 0xE400000000000000;
  v8 = 1685221239;
  if (a2 != 2)
  {
    v8 = 0x72657474656CLL;
    v7 = 0xE600000000000000;
  }

  if (a2)
  {
    v2 = 7105633;
    v6 = 0xE300000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_217D89D4C();
  }

  return v11 & 1;
}

uint64_t sub_217CA12BC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 4u)
  {
    v11 = 0x6E4F64656B636970;
    v12 = 0xEE00656369766544;
    v13 = 0xE800000000000000;
    v14 = 0x64657265746C6966;
    if (a1 != 8)
    {
      v14 = 0x6E65476961;
      v13 = 0xE500000000000000;
    }

    if (a1 != 7)
    {
      v11 = v14;
      v12 = v13;
    }

    v15 = 0x647541664F646E65;
    v16 = 0xEF6B636172546F69;
    if (a1 != 5)
    {
      v15 = 0xD00000000000001DLL;
      v16 = 0x8000000217DCC5B0;
    }

    if (a1 <= 6u)
    {
      v9 = v15;
    }

    else
    {
      v9 = v11;
    }

    if (v2 <= 6)
    {
      v10 = v16;
    }

    else
    {
      v10 = v12;
    }
  }

  else
  {
    v3 = 0xE700000000000000;
    v4 = 0x6169726F74696465;
    v5 = 0xE90000000000006CLL;
    v6 = 0xE800000000000000;
    v7 = 0x657573734977656ELL;
    if (a1 != 3)
    {
      v7 = 0x656C6369747261;
      v6 = 0xE700000000000000;
    }

    if (a1 != 2)
    {
      v4 = v7;
      v5 = v6;
    }

    v8 = 0x6E6974656B72616DLL;
    if (a1)
    {
      v3 = 0xE900000000000067;
    }

    else
    {
      v8 = 0x6E776F6E6B6E75;
    }

    if (a1 <= 1u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v4;
    }

    if (v2 <= 1)
    {
      v10 = v3;
    }

    else
    {
      v10 = v5;
    }
  }

  if (a2 > 4u)
  {
    if (a2 <= 6u)
    {
      if (a2 == 5)
      {
        v17 = 0xEF6B636172546F69;
        if (v9 != 0x647541664F646E65)
        {
          goto LABEL_57;
        }
      }

      else
      {
        v17 = 0x8000000217DCC5B0;
        if (v9 != 0xD00000000000001DLL)
        {
LABEL_57:
          v18 = sub_217D89D4C();
          goto LABEL_58;
        }
      }
    }

    else if (a2 == 7)
    {
      v17 = 0xEE00656369766544;
      if (v9 != 0x6E4F64656B636970)
      {
        goto LABEL_57;
      }
    }

    else if (a2 == 8)
    {
      v17 = 0xE800000000000000;
      if (v9 != 0x64657265746C6966)
      {
        goto LABEL_57;
      }
    }

    else
    {
      v17 = 0xE500000000000000;
      if (v9 != 0x6E65476961)
      {
        goto LABEL_57;
      }
    }
  }

  else if (a2 <= 1u)
  {
    if (a2)
    {
      v17 = 0xE900000000000067;
      if (v9 != 0x6E6974656B72616DLL)
      {
        goto LABEL_57;
      }
    }

    else
    {
      v17 = 0xE700000000000000;
      if (v9 != 0x6E776F6E6B6E75)
      {
        goto LABEL_57;
      }
    }
  }

  else if (a2 == 2)
  {
    v17 = 0xE90000000000006CLL;
    if (v9 != 0x6169726F74696465)
    {
      goto LABEL_57;
    }
  }

  else if (a2 == 3)
  {
    v17 = 0xE800000000000000;
    if (v9 != 0x657573734977656ELL)
    {
      goto LABEL_57;
    }
  }

  else
  {
    v17 = 0xE700000000000000;
    if (v9 != 0x656C6369747261)
    {
      goto LABEL_57;
    }
  }

  if (v10 != v17)
  {
    goto LABEL_57;
  }

  v18 = 1;
LABEL_58:

  return v18 & 1;
}

uint64_t sub_217CA160C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x656E697A6167616DLL;
    }

    else
    {
      v4 = 0x6E776F6E6B6E75;
    }

    if (v2)
    {
      v3 = 0xE800000000000000;
    }

    else
    {
      v3 = 0xE700000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE600000000000000;
    v4 = 0x756F59726F66;
  }

  else if (a1 == 3)
  {
    v3 = 0xE700000000000000;
    v4 = 0x6C656E6E616863;
  }

  else
  {
    v4 = 0x756F72676B636162;
    v3 = 0xEA0000000000646ELL;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x656E697A6167616DLL;
    }

    else
    {
      v9 = 0x6E776F6E6B6E75;
    }

    if (a2)
    {
      v8 = 0xE800000000000000;
    }

    else
    {
      v8 = 0xE700000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE700000000000000;
    v6 = 0x6C656E6E616863;
    if (a2 != 3)
    {
      v6 = 0x756F72676B636162;
      v5 = 0xEA0000000000646ELL;
    }

    if (a2 == 2)
    {
      v7 = 0x756F59726F66;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xE600000000000000;
    }

    else
    {
      v8 = v5;
    }

    if (v4 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v8)
  {
LABEL_33:
    v10 = sub_217D89D4C();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_217CA1798(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x656C7A7A7570;
  if (a1 != 5)
  {
    v5 = 0x657069636572;
    v4 = 0xE600000000000000;
  }

  v6 = 0xE500000000000000;
  v7 = 0x6575737369;
  if (a1 != 3)
  {
    v7 = 0x76457374726F7073;
    v6 = 0xEB00000000746E65;
  }

  if (a1 <= 4u)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0xE700000000000000;
  v9 = 0x656C6369747261;
  if (a1 != 1)
  {
    v9 = 6775156;
    v8 = 0xE300000000000000;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x6E776F6E6B6E75;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v12 = 0xE700000000000000;
        if (v10 != 0x656C6369747261)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v12 = 0xE300000000000000;
        if (v10 != 6775156)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x6E776F6E6B6E75)
      {
        goto LABEL_39;
      }
    }
  }

  else if (a2 > 4u)
  {
    v12 = 0xE600000000000000;
    if (a2 == 5)
    {
      if (v10 != 0x656C7A7A7570)
      {
        goto LABEL_39;
      }
    }

    else if (v10 != 0x657069636572)
    {
LABEL_39:
      v13 = sub_217D89D4C();
      goto LABEL_40;
    }
  }

  else if (a2 == 3)
  {
    v12 = 0xE500000000000000;
    if (v10 != 0x6575737369)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v12 = 0xEB00000000746E65;
    if (v10 != 0x76457374726F7073)
    {
      goto LABEL_39;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_39;
  }

  v13 = 1;
LABEL_40:

  return v13 & 1;
}

uint64_t sub_217CA19AC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0xE900000000000070;
  v5 = 0x6974737265746E69;
  if (a1 == 5)
  {
    v5 = 0x696B536F65646976;
  }

  else
  {
    v4 = 0xEF7061546C616974;
  }

  v6 = 0x7561506F65646976;
  v7 = 0xEA00000000006573;
  if (a1 != 3)
  {
    v6 = 0xD000000000000012;
    v7 = 0x8000000217DCBA70;
  }

  if (a1 <= 4u)
  {
    v5 = v6;
    v4 = v7;
  }

  v8 = 0x615472656E6E6162;
  v9 = 0xE900000000000070;
  if (a1 != 1)
  {
    v8 = 0x616C506F65646976;
    v9 = 0xE900000000000079;
  }

  if (a1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 0x6E776F6E6B6E75;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 <= 2u)
  {
    if (!a2)
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x6E776F6E6B6E75)
      {
        goto LABEL_40;
      }

      goto LABEL_38;
    }

    if (a2 != 1)
    {
      v12 = 0xE900000000000079;
      if (v10 != 0x616C506F65646976)
      {
        goto LABEL_40;
      }

      goto LABEL_38;
    }

    v13 = 0x615472656E6E6162;
    goto LABEL_29;
  }

  if (a2 <= 4u)
  {
    if (a2 == 3)
    {
      v12 = 0xEA00000000006573;
      if (v10 != 0x7561506F65646976)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v12 = 0x8000000217DCBA70;
      if (v10 != 0xD000000000000012)
      {
        goto LABEL_40;
      }
    }

    goto LABEL_38;
  }

  if (a2 == 5)
  {
    v13 = 0x696B536F65646976;
LABEL_29:
    v12 = 0xE900000000000070;
    if (v10 != v13)
    {
      goto LABEL_40;
    }

    goto LABEL_38;
  }

  v12 = 0xEF7061546C616974;
  if (v10 != 0x6974737265746E69)
  {
LABEL_40:
    v14 = sub_217D89D4C();
    goto LABEL_41;
  }

LABEL_38:
  if (v11 != v12)
  {
    goto LABEL_40;
  }

  v14 = 1;
LABEL_41:

  return v14 & 1;
}

uint64_t sub_217CA1C08(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E776F6E6B6E75;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x6C6169726F747574;
    }

    else
    {
      v4 = 0xD000000000000010;
    }

    if (v3 == 2)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0x8000000217DCB080;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x656C7A7A7570;
    }

    else
    {
      v4 = 0x6E776F6E6B6E75;
    }

    if (v3)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  v6 = 0xE700000000000000;
  v7 = 0x6C6169726F747574;
  v8 = 0x8000000217DCB080;
  if (a2 == 2)
  {
    v8 = 0xE800000000000000;
  }

  else
  {
    v7 = 0xD000000000000010;
  }

  if (a2)
  {
    v2 = 0x656C7A7A7570;
    v6 = 0xE600000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v8;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_217D89D4C();
  }

  return v11 & 1;
}

uint64_t sub_217CA1D44(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 <= 1u)
  {
    if (a1)
    {
      v2 = 0x656C6369747261;
    }

    else
    {
      v2 = 0x6E776F6E6B6E75;
    }

    v3 = 0xE700000000000000;
  }

  else if (a1 == 2)
  {
    v2 = 0x466C656E6E616863;
    v3 = 0xEB00000000646565;
  }

  else if (a1 == 3)
  {
    v2 = 0x656E697A6167616DLL;
    v3 = 0xEC00000064656546;
  }

  else
  {
    v3 = 0xE600000000000000;
    v2 = 0x657069636572;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v8 = 0x656C6369747261;
    }

    else
    {
      v8 = 0x6E776F6E6B6E75;
    }

    v7 = 0xE700000000000000;
    if (v2 != v8)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v4 = 0x656E697A6167616DLL;
    v5 = 0xEC00000064656546;
    if (a2 != 3)
    {
      v4 = 0x657069636572;
      v5 = 0xE600000000000000;
    }

    if (a2 == 2)
    {
      v6 = 0x466C656E6E616863;
    }

    else
    {
      v6 = v4;
    }

    if (a2 == 2)
    {
      v7 = 0xEB00000000646565;
    }

    else
    {
      v7 = v5;
    }

    if (v2 != v6)
    {
      goto LABEL_28;
    }
  }

  if (v3 != v7)
  {
LABEL_28:
    v9 = sub_217D89D4C();
    goto LABEL_29;
  }

  v9 = 1;
LABEL_29:

  return v9 & 1;
}

uint64_t sub_217CA1EE8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 3u)
  {
    v10 = 0xE700000000000000;
    v11 = 0xE400000000000000;
    v12 = 2036427888;
    if (a1 != 2)
    {
      v12 = 0x6573756170;
      v11 = 0xE500000000000000;
    }

    v13 = 0x616C506F54706174;
    if (a1)
    {
      v10 = 0xE900000000000079;
    }

    else
    {
      v13 = 0x6E776F6E6B6E75;
    }

    if (a1 <= 1u)
    {
      v8 = v13;
    }

    else
    {
      v8 = v12;
    }

    if (v2 <= 1)
    {
      v9 = v10;
    }

    else
    {
      v9 = v11;
    }
  }

  else
  {
    v3 = 0x6168436465657073;
    v4 = 0xEB0000000065676ELL;
    v5 = 0x636172547478656ELL;
    v6 = 0xE90000000000006BLL;
    if (a1 != 7)
    {
      v5 = 0x6B63614270696B73;
      v6 = 0xE800000000000000;
    }

    if (a1 != 6)
    {
      v3 = v5;
      v4 = v6;
    }

    v7 = 0x656D75736572;
    if (a1 != 4)
    {
      v7 = 0x64656C696166;
    }

    if (a1 <= 5u)
    {
      v8 = v7;
    }

    else
    {
      v8 = v3;
    }

    if (v2 <= 5)
    {
      v9 = 0xE600000000000000;
    }

    else
    {
      v9 = v4;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v14 = 0xE400000000000000;
        if (v8 != 2036427888)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v14 = 0xE500000000000000;
        if (v8 != 0x6573756170)
        {
          goto LABEL_52;
        }
      }
    }

    else if (a2)
    {
      v14 = 0xE900000000000079;
      if (v8 != 0x616C506F54706174)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v14 = 0xE700000000000000;
      if (v8 != 0x6E776F6E6B6E75)
      {
        goto LABEL_52;
      }
    }
  }

  else if (a2 <= 5u)
  {
    v14 = 0xE600000000000000;
    if (a2 == 4)
    {
      if (v8 != 0x656D75736572)
      {
        goto LABEL_52;
      }
    }

    else if (v8 != 0x64656C696166)
    {
LABEL_52:
      v15 = sub_217D89D4C();
      goto LABEL_53;
    }
  }

  else if (a2 == 6)
  {
    v14 = 0xEB0000000065676ELL;
    if (v8 != 0x6168436465657073)
    {
      goto LABEL_52;
    }
  }

  else if (a2 == 7)
  {
    v14 = 0xE90000000000006BLL;
    if (v8 != 0x636172547478656ELL)
    {
      goto LABEL_52;
    }
  }

  else
  {
    v14 = 0xE800000000000000;
    if (v8 != 0x6B63614270696B73)
    {
      goto LABEL_52;
    }
  }

  if (v9 != v14)
  {
    goto LABEL_52;
  }

  v15 = 1;
LABEL_53:

  return v15 & 1;
}

uint64_t sub_217CA21A4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E776F6E6B6E75;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x6C616E7265747865;
    }

    else
    {
      v4 = 0x79616C50726163;
    }

    if (v3 == 2)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x7070416E69;
    }

    else
    {
      v4 = 0x6E776F6E6B6E75;
    }

    if (v3)
    {
      v5 = 0xE500000000000000;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  v6 = 0xE700000000000000;
  v7 = 0xE800000000000000;
  v8 = 0x6C616E7265747865;
  if (a2 != 2)
  {
    v8 = 0x79616C50726163;
    v7 = 0xE700000000000000;
  }

  if (a2)
  {
    v2 = 0x7070416E69;
    v6 = 0xE500000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_217D89D4C();
  }

  return v11 & 1;
}

uint64_t sub_217CA22E0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0x6F46794272756F66;
  v5 = 0xEA00000000007275;
  v6 = 0x756F467942786973;
  v7 = 0xE900000000000072;
  if (a1 != 4)
  {
    v6 = 0x6F77547942656E6FLL;
    v7 = 0xE800000000000000;
  }

  if (a1 != 3)
  {
    v4 = v6;
    v5 = v7;
  }

  v8 = 0xE800000000000000;
  v9 = 0x6F775479426F7774;
  if (a1 != 1)
  {
    v9 = 0x756F4679426F7774;
    v8 = 0xE900000000000072;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x6E776F6E6B6E75;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v4;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 <= 2u)
  {
    if (!a2)
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x6E776F6E6B6E75)
      {
        goto LABEL_34;
      }

      goto LABEL_32;
    }

    if (a2 == 1)
    {
      v12 = 0xE800000000000000;
      v13 = 1114601332;
      goto LABEL_31;
    }

    v14 = 1114601332;
LABEL_28:
    v12 = 0xE900000000000072;
    if (v10 != (v14 | 0x756F467900000000))
    {
      goto LABEL_34;
    }

    goto LABEL_32;
  }

  if (a2 == 3)
  {
    v12 = 0xEA00000000007275;
    if (v10 != 0x6F46794272756F66)
    {
      goto LABEL_34;
    }

    goto LABEL_32;
  }

  if (a2 == 4)
  {
    v14 = 1115187571;
    goto LABEL_28;
  }

  v12 = 0xE800000000000000;
  v13 = 1113943663;
LABEL_31:
  if (v10 != (v13 | 0x6F77547900000000))
  {
LABEL_34:
    v15 = sub_217D89D4C();
    goto LABEL_35;
  }

LABEL_32:
  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v15 = 1;
LABEL_35:

  return v15 & 1;
}