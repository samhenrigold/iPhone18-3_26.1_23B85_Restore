uint64_t sub_2192432B0(void *a1)
{
  sub_2187A4BE4(0, &qword_280E8C458, sub_2187A80B4, &type metadata for EngagementUpsellTriggerState.CodingKeys, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187A80B4();
  sub_219BF7B44();
  v14 = 0;
  sub_219BF7824();
  if (!v1)
  {
    type metadata accessor for EngagementUpsellTriggerState(0);
    v13 = 1;
    sub_219BDBD34();
    sub_2187A5098(&qword_280EE9CA0, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
    sub_219BF77E4();
    v12 = 2;
    sub_219BF77E4();
    v11 = 3;
    sub_219BF77E4();
    v10 = 4;
    sub_219BF7824();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_219243534@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2192453A4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21924355C(uint64_t a1)
{
  v2 = sub_2187A80B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219243598(uint64_t a1)
{
  v2 = sub_2187A80B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2192435EC()
{
  sub_2186DDAC4(0, &qword_280EE9C40, MEMORY[0x277CC9578]);
  MEMORY[0x28223BE20](v1 - 8);
  v37 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = &v33 - v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v33 - v7;
  v9 = sub_219BDBD34();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v36 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v35 = &v33 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v33 - v15;
  v41 = 0;
  v42 = 0xE000000000000000;
  sub_219BF7314();
  MEMORY[0x21CECC330](0xD00000000000002CLL, 0x8000000219D13680);
  v40 = *v0;
  v17 = sub_219BF7894();
  MEMORY[0x21CECC330](v17);

  MEMORY[0x21CECC330](0xD00000000000001BLL, 0x8000000219D136B0);
  v18 = type metadata accessor for EngagementUpsellTriggerState(0);
  v38 = v0;
  v39 = v18;
  sub_2187D96F4(v0 + *(v18 + 20), v8);
  v19 = *(v10 + 48);
  if (v19(v8, 1, v9) == 1)
  {
    sub_219BDBBB4();
    if (v19(v8, 1, v9) != 1)
    {
      sub_2187106CC(v8, &qword_280EE9C40, MEMORY[0x277CC9578]);
    }
  }

  else
  {
    (*(v10 + 32))(v16, v8, v9);
  }

  sub_2187A5098(&qword_280EE9C60, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
  v20 = sub_219BF7894();
  MEMORY[0x21CECC330](v20);

  v21 = v10;
  v22 = *(v10 + 8);
  v22(v16, v9);
  MEMORY[0x21CECC330](0xD000000000000018, 0x8000000219D136D0);
  v23 = v38;
  sub_2187D96F4(v38 + v39[6], v5);
  v24 = v19(v5, 1, v9);
  v34 = v21;
  if (v24 == 1)
  {
    v25 = v35;
    sub_219BDBBB4();
    if (v19(v5, 1, v9) != 1)
    {
      sub_2187106CC(v5, &qword_280EE9C40, MEMORY[0x277CC9578]);
    }
  }

  else
  {
    v26 = *(v21 + 32);
    v25 = v35;
    v26(v35, v5, v9);
  }

  v27 = sub_219BF7894();
  MEMORY[0x21CECC330](v27);

  v22(v25, v9);
  MEMORY[0x21CECC330](0xD00000000000001BLL, 0x8000000219D136F0);
  v28 = v37;
  sub_2187D96F4(v23 + v39[7], v37);
  if (v19(v28, 1, v9) == 1)
  {
    v29 = v36;
    sub_219BDBBB4();
    if (v19(v28, 1, v9) != 1)
    {
      sub_2187106CC(v28, &qword_280EE9C40, MEMORY[0x277CC9578]);
    }
  }

  else
  {
    v29 = v36;
    (*(v34 + 32))(v36, v28, v9);
  }

  v30 = sub_219BF7894();
  MEMORY[0x21CECC330](v30);

  v22(v29, v9);
  MEMORY[0x21CECC330](0xD000000000000019, 0x8000000219D13710);
  v40 = *(v23 + v39[8]);
  v31 = sub_219BF7894();
  MEMORY[0x21CECC330](v31);

  return v41;
}

uint64_t sub_219243BC8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v111 = a1;
  v104 = a2;
  v3 = sub_219BDBD34();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v98 = &v91 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v97 = &v91 - v7;
  MEMORY[0x28223BE20](v8);
  v94 = &v91 - v9;
  MEMORY[0x28223BE20](v10);
  v93 = &v91 - v11;
  v109 = MEMORY[0x277CC9578];
  sub_2186DDAC4(0, &qword_280EE9C40, MEMORY[0x277CC9578]);
  MEMORY[0x28223BE20](v12 - 8);
  v103 = &v91 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v102 = &v91 - v15;
  MEMORY[0x28223BE20](v16);
  v100 = &v91 - v17;
  MEMORY[0x28223BE20](v18);
  v101 = &v91 - v19;
  MEMORY[0x28223BE20](v20);
  v96 = &v91 - v21;
  MEMORY[0x28223BE20](v22);
  v95 = &v91 - v23;
  MEMORY[0x28223BE20](v24);
  v91 = &v91 - v25;
  MEMORY[0x28223BE20](v26);
  v99 = &v91 - v27;
  MEMORY[0x28223BE20](v28);
  v92 = &v91 - v29;
  MEMORY[0x28223BE20](v30);
  v32 = &v91 - v31;
  MEMORY[0x28223BE20](v33);
  v35 = &v91 - v34;
  MEMORY[0x28223BE20](v36);
  v38 = &v91 - v37;
  MEMORY[0x28223BE20](v39);
  v108 = &v91 - v40;
  MEMORY[0x28223BE20](v41);
  v107 = &v91 - v42;
  v43 = type metadata accessor for EngagementUpsellTriggerState(0);
  v44 = *(v43 + 24);
  v110 = v2;
  v45 = v2 + v44;
  v46 = v4;
  sub_2187D96F4(v45, v38);
  v47 = *(v4 + 48);
  v48 = v47(v38, 1, v3);
  v49 = v38;
  v50 = v43;
  sub_2187106CC(v49, &qword_280EE9C40, v109);
  v105 = v47;
  v106 = v4;
  v109 = v43;
  if (v48 != 1 || (sub_2187D96F4(v111 + *(v43 + 24), v35), v51 = 1, v52 = v47(v35, 1, v3), sub_2187106CC(v35, &qword_280EE9C40, MEMORY[0x277CC9578]), v58 = v52 == 1, v50 = v109, !v58))
  {
    sub_2187D96F4(v110 + v44, v32);
    if (v47(v32, 1, v3) == 1)
    {
      v53 = v93;
      sub_219BDBBB4();
      v54 = v47(v32, 1, v3);
      v55 = v92;
      if (v54 != 1)
      {
        sub_2187106CC(v32, &qword_280EE9C40, MEMORY[0x277CC9578]);
      }
    }

    else
    {
      v53 = v93;
      (*(v4 + 32))(v93, v32, v3);
      v55 = v92;
    }

    sub_2187D96F4(v111 + *(v50 + 6), v55);
    if (v47(v55, 1, v3) == 1)
    {
      v56 = v94;
      sub_219BDBBB4();
      if (v47(v55, 1, v3) != 1)
      {
        sub_2187106CC(v55, &qword_280EE9C40, MEMORY[0x277CC9578]);
      }
    }

    else
    {
      v56 = v94;
      (*(v4 + 32))(v94, v55, v3);
    }

    sub_2187A5098(&qword_280EE9C90, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
    v57 = sub_219BF5344();
    v46 = v106;
    v58 = (v57 & 1) == 0;
    if (v57)
    {
      v59 = v53;
    }

    else
    {
      v59 = v56;
    }

    if (v58)
    {
      v56 = v53;
    }

    (*(v106 + 8))(v59, v3);
    (*(v46 + 32))(v107, v56, v3);
    v51 = 0;
    v47 = v105;
  }

  v60 = *(v46 + 56);
  v60(v107, v51, 1, v3);
  v61 = *(v50 + 7);
  v62 = v99;
  sub_2187D96F4(v110 + v61, v99);
  v63 = v47(v62, 1, v3);
  sub_2187106CC(v62, &qword_280EE9C40, MEMORY[0x277CC9578]);
  if (v63 != 1 || (v64 = v91, sub_2187D96F4(v111 + *(v109 + 7), v91), v65 = v47(v64, 1, v3), sub_2187106CC(v64, &qword_280EE9C40, MEMORY[0x277CC9578]), v65 != 1))
  {
    v66 = v95;
    sub_2187D96F4(v110 + v61, v95);
    if (v47(v66, 1, v3) == 1)
    {
      v67 = v97;
      sub_219BDBBB4();
      v68 = v47(v66, 1, v3);
      v69 = v98;
      v70 = v96;
      if (v68 != 1)
      {
        sub_2187106CC(v66, &qword_280EE9C40, MEMORY[0x277CC9578]);
      }
    }

    else
    {
      v67 = v97;
      (*(v46 + 32))(v97, v66, v3);
      v69 = v98;
      v70 = v96;
    }

    sub_2187D96F4(v111 + *(v109 + 7), v70);
    if (v47(v70, 1, v3) == 1)
    {
      sub_219BDBBB4();
      if (v47(v70, 1, v3) != 1)
      {
        sub_2187106CC(v70, &qword_280EE9C40, MEMORY[0x277CC9578]);
      }
    }

    else
    {
      (*(v46 + 32))(v69, v70, v3);
    }

    sub_2187A5098(&qword_280EE9C90, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
    v71 = sub_219BF5344();
    v46 = v106;
    v72 = (v71 & 1) == 0;
    if (v71)
    {
      v73 = v67;
    }

    else
    {
      v73 = v69;
    }

    if (v72)
    {
      v69 = v67;
    }

    (*(v106 + 8))(v73, v3);
    (*(v46 + 32))(v108, v69, v3);
    v63 = 0;
    v47 = v105;
  }

  v60(v108, v63, 1, v3);
  v74 = *v110;
  v75 = *v111;
  v76 = v109;
  v77 = v100;
  sub_2187D96F4(v110 + *(v109 + 5), v100);
  if (v47(v77, 1, v3) == 1)
  {
    v78 = v101;
    sub_2187D96F4(v111 + *(v76 + 5), v101);
    if (v47(v77, 1, v3) != 1)
    {
      sub_2187106CC(v77, &qword_280EE9C40, MEMORY[0x277CC9578]);
    }
  }

  else
  {
    v79 = v77;
    v80 = v101;
    (*(v46 + 32))(v101, v79, v3);
    v60(v80, 0, 1, v3);
    v78 = v80;
  }

  if (v75 <= v74)
  {
    v75 = v74;
  }

  v81 = MEMORY[0x277CC9578];
  v82 = v102;
  sub_21870EC50(v107, v102, &qword_280EE9C40, MEMORY[0x277CC9578]);
  v83 = v103;
  sub_21870EC50(v108, v103, &qword_280EE9C40, v81);
  v84 = v109;
  v85 = *(v109 + 8);
  v86 = *(v110 + v85);
  v87 = *(v111 + v85);
  if (v87 <= v86)
  {
    v88 = v86;
  }

  else
  {
    v88 = v87;
  }

  v89 = v104;
  *v104 = v75;
  sub_21870EC50(v78, v89 + v84[5], &qword_280EE9C40, v81);
  sub_21870EC50(v82, v89 + v84[6], &qword_280EE9C40, v81);
  result = sub_21870EC50(v83, v89 + v84[7], &qword_280EE9C40, v81);
  *(v89 + v84[8]) = v88;
  return result;
}

void sub_2192446A8(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x5472656767697274 && a2 == 0xEB00000000657079;
  if (v6 || (sub_219BF78F4() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x6E656D6563616C70 && a2 == 0xE900000000000074)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_219BF78F4();

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

uint64_t sub_219244790(uint64_t a1)
{
  v2 = sub_2187A5F7C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2192447CC(uint64_t a1)
{
  v2 = sub_2187A5F7C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t EngagementUpsellTriggerGroupStateKey.encode(to:)(void *a1)
{
  sub_2187A4BE4(0, &qword_280E8C268, sub_2187A5F7C, &type metadata for EngagementUpsellTriggerGroupStateKey.CodingKeys, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187A5F7C();
  sub_219BF7B44();
  v11 = 0;
  sub_219BF77F4();
  if (!v1)
  {
    type metadata accessor for EngagementUpsellTriggerGroupStateKey(0);
    v10 = 1;
    sub_219BE3514();
    sub_2187A5098(&unk_280EE66A8, MEMORY[0x277D31550], MEMORY[0x277D31558]);
    sub_219BF7834();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t EngagementUpsellTriggerGroupStateKey.hash(into:)(uint64_t a1)
{
  sub_219BF5524();
  type metadata accessor for EngagementUpsellTriggerGroupStateKey(0);
  sub_219BE3514();
  sub_2187A5098(&qword_280EE66A0, MEMORY[0x277D31550], MEMORY[0x277D31560]);
  return sub_219BF52F4();
}

uint64_t EngagementUpsellTriggerGroupStateKey.hashValue.getter()
{
  sub_219BF7AA4();
  sub_219BF5524();
  type metadata accessor for EngagementUpsellTriggerGroupStateKey(0);
  sub_219BE3514();
  sub_2187A5098(&qword_280EE66A0, MEMORY[0x277D31550], MEMORY[0x277D31560]);
  sub_219BF52F4();
  return sub_219BF7AE4();
}

uint64_t sub_219244B44()
{
  sub_219BF7AA4();
  sub_219BF5524();
  sub_219BE3514();
  sub_2187A5098(&qword_280EE66A0, MEMORY[0x277D31550], MEMORY[0x277D31560]);
  sub_219BF52F4();
  return sub_219BF7AE4();
}

uint64_t sub_219244BEC(uint64_t a1)
{
  sub_219BF5524();
  sub_219BE3514();
  sub_2187A5098(&qword_280EE66A0, MEMORY[0x277D31550], MEMORY[0x277D31560]);
  return sub_219BF52F4();
}

uint64_t sub_219244C78()
{
  sub_219BF7AA4();
  sub_219BF5524();
  return sub_219BF7AE4();
}

uint64_t sub_219244CDC(uint64_t a1)
{
  sub_219BF7AA4();
  sub_219BF5524();
  return sub_219BF7AE4();
}

void sub_219244D28(BOOL *a2@<X8>)
{
  v3 = sub_219BF7614();

  *a2 = v3 != 0;
}

void sub_219244D94(BOOL *a3@<X8>)
{
  v4 = sub_219BF7614();

  *a3 = v4 != 0;
}

uint64_t sub_219244DEC(uint64_t a1)
{
  v2 = sub_2187A4C4C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219244E28(uint64_t a1)
{
  v2 = sub_2187A4C4C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t EngagementUpsellTriggerGroupState.encode(to:)(void *a1)
{
  sub_2187A4BE4(0, &qword_280E8C318, sub_2187A4C4C, &type metadata for EngagementUpsellTriggerGroupState.CodingKeys, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = v10 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2187A4C4C();

  sub_219BF7B44();
  v10[3] = v8;
  sub_2187A4FA4(0);
  sub_219245014();
  sub_219BF7834();

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_219245014()
{
  result = qword_280E8FC38;
  if (!qword_280E8FC38)
  {
    sub_2187A4FA4(255);
    sub_2187A5098(&qword_280E9BA38, type metadata accessor for EngagementUpsellTriggerGroupStateKey, &protocol conformance descriptor for EngagementUpsellTriggerGroupStateKey);
    sub_2187A5098(&qword_280EB4748, type metadata accessor for EngagementUpsellTriggerState, &unk_219C68F50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E8FC38);
  }

  return result;
}

unint64_t sub_219245150()
{
  result = qword_27CC17EF0;
  if (!qword_27CC17EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC17EF0);
  }

  return result;
}

unint64_t sub_2192451A8()
{
  result = qword_27CC17EF8;
  if (!qword_27CC17EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC17EF8);
  }

  return result;
}

void sub_2192451FC(uint64_t a1)
{
  if (!qword_280E9BA48)
  {
    type metadata accessor for EngagementUpsellTriggerGroupStateKey(255);
    type metadata accessor for EngagementUpsellTriggerState(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_280E9BA48);
    }
  }
}

uint64_t sub_219245270(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2192452D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EngagementUpsellTriggerState(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_219245350()
{
  result = qword_27CC17F00;
  if (!qword_27CC17F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC17F00);
  }

  return result;
}

uint64_t sub_2192453A4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x56746E6572727563 && a2 == 0xEE006E6F69737265;
  if (v4 || (sub_219BF78F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000219D13730 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000219D13750 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000219D13770 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000219D13790 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_219BF78F4();

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

uint64_t sub_219245564@<X0>(uint64_t a1@<X8>)
{
  v3 = v2;
  v5 = type metadata accessor for TagFeedCurationHeaderTitle(0);
  MEMORY[0x28223BE20](v5);
  v7 = (&v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21924572C(v3, v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_219BDB954();
    (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
    return sub_219245790(v7);
  }

  else
  {
    v10 = [*v7 identifier];
    if (!v10)
    {
      sub_219BF5414();
      v10 = sub_219BF53D4();
    }

    v11 = [objc_opt_self() nss:v10 NewsURLForTagID:?];

    sub_219BDB8B4();
    swift_unknownObjectRelease();

    v12 = sub_219BDB954();
    return (*(*(v12 - 8) + 56))(a1, 0, 1, v12);
  }
}

uint64_t sub_21924572C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TagFeedCurationHeaderTitle(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_219245790(uint64_t a1)
{
  v2 = type metadata accessor for TagFeedCurationHeaderTitle(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2192457EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_21881AD58(0, &qword_280EE33F0, MEMORY[0x277D2D4E0]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v30 - v7;
  v9 = sub_219BF2034();
  v40 = *(v9 - 8);
  v41 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21881AD58(0, &qword_280E907C0, MEMORY[0x277D334E0]);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v30 - v13;
  v15 = sub_219BF14C4();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v38 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v39 = &v30 - v19;
  sub_2192461BC(a2, v14);
  v20 = sub_219BF1A44();
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v14, 1, v20) == 1)
  {
    sub_21924623C(a2);
    sub_21924623C(v14);
LABEL_6:
    *a3 = a1;
    type metadata accessor for TagFeedCurationHeaderTitle(0);
    return swift_storeEnumTagMultiPayload();
  }

  v31 = v16;
  v32 = v15;
  v35 = a2;
  v36 = a1;
  v37 = a3;
  v22 = sub_219BEC004();
  (*(*(v22 - 8) + 56))(v8, 1, 1, v22);
  v23 = MEMORY[0x277D84F90];
  v34 = sub_219A95188(MEMORY[0x277D84F90]);
  v33 = sub_219A95188(v23);
  sub_219A951A0(v23);
  sub_219A951B8(v23);
  sub_219A952CC(v23);
  sub_219A952E4(v23);
  sub_219A953F8(v23);
  sub_219BF2024();
  v24 = sub_219BF1A24();
  (*(v40 + 8))(v11, v41);
  (*(v21 + 8))(v14, v20);
  if (!*(v24 + 16))
  {

    sub_21924623C(v35);
    a1 = v36;
    a3 = v37;
    goto LABEL_6;
  }

  v26 = v31;
  v25 = v32;
  v27 = v38;
  (*(v31 + 16))(v38, v24 + ((*(v26 + 80) + 32) & ~*(v26 + 80)), v32);

  v28 = v39;
  (*(v26 + 32))(v39, v27, v25);
  sub_219BF14B4();
  swift_unknownObjectRelease();
  sub_21924623C(v35);
  (*(v26 + 8))(v28, v25);
  type metadata accessor for TagFeedCurationHeaderTitle(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_219245C8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TagFeedCurationHeaderSubtitle(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21881AD58(0, &qword_280EE33F0, MEMORY[0x277D2D4E0]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v33 - v9;
  v11 = sub_219BF2034();
  v45 = *(v11 - 8);
  v46 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21881AD58(0, &qword_280E907C0, MEMORY[0x277D334E0]);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v33 - v15;
  v17 = sub_219BF14C4();
  v43 = *(v17 - 8);
  v44 = v17;
  MEMORY[0x28223BE20](v17);
  v41 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v42 = &v33 - v20;
  sub_2192461BC(a1, v16);
  v21 = sub_219BF1A44();
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v16, 1, v21) == 1)
  {
    sub_21924623C(a1);
    sub_21924623C(v16);
    v23 = 1;
  }

  else
  {
    v34 = v7;
    v37 = a1;
    v38 = v5;
    v39 = v4;
    v40 = a2;
    v24 = sub_219BEC004();
    (*(*(v24 - 8) + 56))(v10, 1, 1, v24);
    v25 = MEMORY[0x277D84F90];
    v36 = sub_219A95188(MEMORY[0x277D84F90]);
    v35 = sub_219A95188(v25);
    sub_219A951A0(v25);
    sub_219A951B8(v25);
    sub_219A952CC(v25);
    sub_219A952E4(v25);
    sub_219A953F8(v25);
    sub_219BF2024();
    v26 = sub_219BF1A24();
    (*(v45 + 8))(v13, v46);
    (*(v22 + 8))(v16, v21);
    if (*(v26 + 16))
    {
      v28 = v43;
      v27 = v44;
      v29 = v41;
      (*(v43 + 16))(v41, v26 + ((*(v28 + 80) + 32) & ~*(v28 + 80)), v44);

      v30 = v42;
      (*(v28 + 32))(v42, v29, v27);
      v31 = v34;
      sub_219BF14B4();
      sub_21924623C(v37);
      (*(v28 + 8))(v30, v27);
      a2 = v40;
      sub_2192462B4(v31, v40);
      v23 = 0;
    }

    else
    {

      sub_21924623C(v37);
      v23 = 1;
      a2 = v40;
    }

    v5 = v38;
    v4 = v39;
  }

  return (*(v5 + 56))(a2, v23, 1, v4);
}

uint64_t sub_2192461BC(uint64_t a1, uint64_t a2)
{
  sub_21881AD58(0, &qword_280E907C0, MEMORY[0x277D334E0]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21924623C(uint64_t a1)
{
  sub_21881AD58(0, &qword_280E907C0, MEMORY[0x277D334E0]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2192462B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TagFeedCurationHeaderSubtitle(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_219246318(uint64_t a1)
{
  result = sub_2186D8870();
  if (v2 <= 0x3F)
  {
    result = sub_219BF2124();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_21924638C(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BF2124();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2192463F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_219BF2124();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a3, v6);
}

uint64_t sub_219246474(uint64_t a1)
{
  result = sub_219BF2124();
  if (v3 <= 0x3F)
  {
    v4 = result;
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v4 - 8) + 84);
    return 0;
  }

  return result;
}

void sub_219246560(uint64_t a1)
{
  type metadata accessor for TagFeedCurationHeaderTitle(319);
  if (v1 <= 0x3F)
  {
    sub_21881AD58(319, &unk_280EAE640, type metadata accessor for TagFeedCurationHeaderSubtitle);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void *sub_219246624(uint64_t a1)
{
  v88 = type metadata accessor for ChannelPickerElementModel(0);
  v2 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v86 = &v67 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v85 = &v67 - v5;
  sub_218951C88(0);
  v87 = v6;
  v89 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v67 - v10;
  sub_218BFAEC4(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v67 - v16;
  sub_2189519D8(0);
  MEMORY[0x28223BE20](v18);
  MEMORY[0x28223BE20](v19);
  MEMORY[0x28223BE20](v20);
  v26 = *(a1 + 96);
  if (!v26)
  {
    return MEMORY[0x277D84F90];
  }

  v27 = *(v26 + 16);
  if (!v27)
  {
    return MEMORY[0x277D84F90];
  }

  v78 = v25;
  v79 = &v67 - v22;
  v72 = v17;
  v73 = v24;
  v80 = v21;
  v28 = 0;
  v84 = v89 + 32;
  v76 = (v23 + 16);
  v77 = v23;
  v75 = v23 + 8;
  v74 = v23 + 32;
  v29 = v26 + 32;
  result = MEMORY[0x277D84F90];
  v81 = v29;
  while (2)
  {
    v82 = result;
    v31 = (v29 + 344 * v28);
    for (i = v28; ; ++i)
    {
      if (i >= v27)
      {
        __break(1u);
LABEL_52:
        __break(1u);
        goto LABEL_53;
      }

      result = memcpy(v93, v31, 0x151uLL);
      v28 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_52;
      }

      v33 = v93[7];
      if (!v93[7])
      {
        return v82;
      }

      v34 = *(v93[7] + 16);
      if (v34)
      {
        break;
      }

      v31 += 344;
      if (v28 == v27)
      {
        return v82;
      }
    }

    if (LOBYTE(v93[4]) != 2)
    {
      v71 = i + 1;
      if ((v93[4] & 1) == 0)
      {
        v68 = v8;
        v69 = v14;
        memcpy(v92, v93, 0x151uLL);
        sub_218E8E42C(v92);
        memcpy(v91, v92, sizeof(v91));
        sub_218D2EB00(v93, v90);
        sub_218D2EB00(v93, v90);
        v90[0] = MEMORY[0x277D84F90];

        sub_218C36D00(0, v34, 0);
        v45 = v90[0];
        v46 = v33 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
        v70 = v2;
        v83 = *(v2 + 72);
        do
        {
          v47 = v85;
          sub_218980A74(v46, v85);
          sub_218980A74(v47, v86);
          sub_219247090(&qword_27CC0AEE0, type metadata accessor for ChannelPickerElementModel, &protocol conformance descriptor for ChannelPickerElementModel);
          sub_219BE5FB4();
          sub_2189DA478(v47);
          v90[0] = v45;
          v49 = *(v45 + 16);
          v48 = *(v45 + 24);
          if (v49 >= v48 >> 1)
          {
            sub_218C36D00((v48 > 1), v49 + 1, 1);
            v45 = v90[0];
          }

          *(v45 + 16) = v49 + 1;
          (*(v89 + 32))(v45 + ((*(v89 + 80) + 32) & ~*(v89 + 80)) + *(v89 + 72) * v49, v11, v87);
          v46 += v83;
          --v34;
        }

        while (v34);

        v50 = sub_219247090(&qword_27CC0EF88, sub_218951C88, MEMORY[0x277D6D408]);
        v51 = sub_219247090(&qword_27CC0EF90, sub_218951C88, MEMORY[0x277D6D3F8]);
        MEMORY[0x21CEB9170](v45, v87, v50, v51);
        sub_218951A90();
        v52 = v79;
        sub_219BE6924();
        (*v76)(v78, v52, v80);
        v53 = v82;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v53 = sub_2191FA39C(0, v53[2] + 1, 1, v53);
        }

        v8 = v68;
        v14 = v69;
        v55 = v53[2];
        v54 = v53[3];
        v56 = v53;
        v83 = v55 + 1;
        if (v55 >= v54 >> 1)
        {
          v56 = sub_2191FA39C((v54 > 1), v55 + 1, 1, v53);
        }

        v2 = v70;
        sub_21914407C(v93);
        v57 = v77;
        v58 = v80;
        (*(v77 + 8))(v79, v80);
        v56[2] = v83;
        (*(v57 + 32))(v56 + ((*(v57 + 80) + 32) & ~*(v57 + 80)) + *(v57 + 72) * v55, v78, v58);
        goto LABEL_45;
      }

      v35 = v93[9];
      v36 = LOBYTE(v93[10]);
      memcpy(v92, v93, 0x151uLL);
      sub_2192470D8(v92);
      result = memcpy(v91, v92, sizeof(v91));
      if (v36)
      {
        v37 = 0;
      }

      else
      {
        v37 = v35;
      }

      if (LOBYTE(v93[14]))
      {
        v38 = 0;
      }

      else
      {
        v38 = v93[13];
      }

      v39 = v37 * v38;
      if ((v37 * v38) >> 64 == (v37 * v38) >> 63)
      {
        if ((v39 & 0x8000000000000000) == 0)
        {
          if (v34 >= v39)
          {
            v34 = v37 * v38;
          }

          v40 = MEMORY[0x277D84F90];
          if (v39)
          {
            v69 = v14;
            sub_218D2EB00(v93, v90);
            sub_218D2EB00(v93, v90);
            v90[0] = v40;
            v41 = v33 + ((*(v2 + 80) + 32) & ~*(v2 + 80));

            sub_218C36D00(0, v34, 0);
            v40 = v90[0];
            v70 = v2;
            v83 = *(v2 + 72);
            do
            {
              v42 = v85;
              sub_218980A74(v41, v85);
              sub_218980A74(v42, v86);
              sub_219247090(&qword_27CC0AEE0, type metadata accessor for ChannelPickerElementModel, &protocol conformance descriptor for ChannelPickerElementModel);
              sub_219BE5FB4();
              sub_2189DA478(v42);
              v90[0] = v40;
              v44 = *(v40 + 16);
              v43 = *(v40 + 24);
              if (v44 >= v43 >> 1)
              {
                sub_218C36D00((v43 > 1), v44 + 1, 1);
                v40 = v90[0];
              }

              *(v40 + 16) = v44 + 1;
              (*(v89 + 32))(v40 + ((*(v89 + 80) + 32) & ~*(v89 + 80)) + *(v89 + 72) * v44, v8, v87);
              v41 += v83;
              --v34;
            }

            while (v34);

            v14 = v69;
            v2 = v70;
          }

          else
          {
            sub_218D2EB00(v93, v90);
            sub_218D2EB00(v93, v90);
          }

          v59 = sub_219247090(&qword_27CC0EF88, sub_218951C88, MEMORY[0x277D6D408]);
          v60 = sub_219247090(&qword_27CC0EF90, sub_218951C88, MEMORY[0x277D6D3F8]);
          MEMORY[0x21CEB9170](v40, v87, v59, v60);
          sub_218951A90();
          sub_219247090(&qword_27CC0AEE0, type metadata accessor for ChannelPickerElementModel, &protocol conformance descriptor for ChannelPickerElementModel);
          v61 = v79;
          sub_219BE6924();
          (*v76)(v73, v61, v80);
          v62 = v82;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v62 = sub_2191FA39C(0, v62[2] + 1, 1, v62);
          }

          v64 = v62[2];
          v63 = v62[3];
          v56 = v62;
          v83 = v64 + 1;
          if (v64 >= v63 >> 1)
          {
            v56 = sub_2191FA39C((v63 > 1), v64 + 1, 1, v62);
          }

          sub_21914407C(v93);
          v65 = v77;
          v66 = v80;
          (*(v77 + 8))(v79, v80);
          v56[2] = v83;
          (*(v65 + 32))(v56 + ((*(v65 + 80) + 32) & ~*(v65 + 80)) + *(v65 + 72) * v64, v73, v66);
LABEL_45:
          result = v56;
          v28 = v71;
          v29 = v81;
          goto LABEL_46;
        }

LABEL_54:
        __break(1u);
        return result;
      }

LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    v29 = v81;
    result = v82;
LABEL_46:
    if (v28 != v27)
    {
      continue;
    }

    return result;
  }
}

uint64_t sub_219247090(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_2192470D8(void *result)
{
  v1 = result[10] & 1;
  v2 = result[12] & 1;
  v3 = result[14] & 1;
  v4 = result[18] & 1 | 0x8000000000000000;
  result[4] = *(result + 16);
  result[10] = v1;
  result[12] = v2;
  result[14] = v3;
  result[18] = v4;
  return result;
}

uint64_t type metadata accessor for SuperfeedMastheadModel(uint64_t a1)
{
  result = qword_280EC6980;
  if (!qword_280EC6980)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_219247164(uint64_t a1)
{
  result = sub_219BF1FB4();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for NameLogoMastheadModel(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for TagFeedViewerSportsEvent(319);
      if (v4 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_2192471FC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v186 = a3;
  v187 = a4;
  v185 = a2;
  sub_219248A04(0, qword_280EC6940, type metadata accessor for SuperfeedMastheadModel);
  MEMORY[0x28223BE20](v7 - 8);
  v168 = (&v161 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v178 = (&v161 - v10);
  MEMORY[0x28223BE20](v11);
  v179 = (&v161 - v12);
  v13 = sub_219BF2BF4();
  v181 = *(v13 - 8);
  v182 = v13;
  MEMORY[0x28223BE20](v13);
  v183 = &v161 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SuperfeedMastheadModel(0);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v162 = &v161 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v165 = &v161 - v19;
  MEMORY[0x28223BE20](v20);
  v164 = (&v161 - v21);
  MEMORY[0x28223BE20](v22);
  v163 = &v161 - v23;
  MEMORY[0x28223BE20](v24);
  v167 = &v161 - v25;
  MEMORY[0x28223BE20](v26);
  v166 = &v161 - v27;
  MEMORY[0x28223BE20](v28);
  v173 = &v161 - v29;
  MEMORY[0x28223BE20](v30);
  v169 = &v161 - v31;
  MEMORY[0x28223BE20](v32);
  v175 = &v161 - v33;
  MEMORY[0x28223BE20](v34);
  v174 = &v161 - v35;
  MEMORY[0x28223BE20](v36);
  v38 = &v161 - v37;
  MEMORY[0x28223BE20](v39);
  v172 = &v161 - v40;
  MEMORY[0x28223BE20](v41);
  v43 = (&v161 - v42);
  MEMORY[0x28223BE20](v44);
  v171 = &v161 - v45;
  MEMORY[0x28223BE20](v46);
  v170 = &v161 - v47;
  MEMORY[0x28223BE20](v48);
  v177 = &v161 - v49;
  MEMORY[0x28223BE20](v50);
  v176 = &v161 - v51;
  MEMORY[0x28223BE20](v52);
  v54 = &v161 - v53;
  MEMORY[0x28223BE20](v55);
  v57 = &v161 - v56;
  MEMORY[0x28223BE20](v58);
  v60 = (&v161 - v59);
  v61 = a1;
  v184 = sub_2192486E8();
  if (v184)
  {
LABEL_2:
    v180 = v60;
    v62 = v16;
    v63 = a5;
    if (sub_219BED0C4())
    {
      sub_219BF6394();
      swift_getObjectType();
      v64 = FCTagProviding.forceBasicTagMasthead.getter();
      swift_unknownObjectRelease();
      if (v64)
      {
        sub_219BF6394();
        v65 = v187;
        v66 = v183;
        sub_21881AC1C(v187, v183);
        (*(v181 + 104))(v66, *MEMORY[0x277D33B30], v182);
        sub_219BF1FA4();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        sub_218817598(v65, &qword_280EE33F0, MEMORY[0x277D2D4E0]);
        swift_storeEnumTagMultiPayload();
        a5 = v63;
        v16 = v62;
        goto LABEL_35;
      }
    }

    v67 = [sub_219BF6394() theme];
    swift_unknownObjectRelease();
    if (v67 && (v68 = [v67 feedMastheadType], swift_unknownObjectRelease(), v68))
    {
      v69 = sub_219BF5414();
      v71 = v70;

      v72 = v71;
      v73 = v69;
    }

    else
    {
      v73 = 0;
      v72 = 0xE000000000000000;
    }

    v74 = sub_2195ECF7C(v73, v72);
    a5 = v63;
    if (v74 <= 1)
    {
      v16 = v62;
      if (v74)
      {
        sub_219BF6394();
        v99 = v187;
        v100 = v183;
        sub_21881AC1C(v187, v183);
        (*(v181 + 104))(v100, *MEMORY[0x277D33B30], v182);
        sub_219BF1FA4();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        sub_218817598(v99, &qword_280EE33F0, MEMORY[0x277D2D4E0]);
        swift_storeEnumTagMultiPayload();
        v57 = v54;
LABEL_35:
        v75 = v180;
        if (v184)
        {
LABEL_37:
          sub_219248AB4(v57, v75);
          sub_219248AB4(v75, a5);
          v79 = 0;
          return v16[7](a5, v79, 1, v15);
        }

LABEL_36:
        sub_219248A58(v75);
        goto LABEL_37;
      }

      v80 = sub_219BED0C4();
      v75 = v180;
      v81 = v187;
      if (v80)
      {
        sub_219BF6394();
        v82 = v183;
        sub_21881AC1C(v81, v183);
        (*(v181 + 104))(v82, *MEMORY[0x277D33B30], v182);
        sub_219BF1FA4();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        sub_218817598(v81, &qword_280EE33F0, MEMORY[0x277D2D4E0]);
        swift_storeEnumTagMultiPayload();
        v57 = v38;
        if (v184)
        {
          goto LABEL_37;
        }

        goto LABEL_36;
      }

      v90 = MEMORY[0x277D2D4E0];
      v91 = v187;
      goto LABEL_44;
    }

    v16 = v62;
    if (v74 != 2)
    {
      v75 = v180;
      v76 = v187;
      if (v74 == 3)
      {
        v77 = v186;
        if ([v186 useFood])
        {
          v78 = [v61 feedConfiguration];
          sub_218817598(v76, &qword_280EE33F0, MEMORY[0x277D2D4E0]);
          if (v78 != 12)
          {
            swift_unknownObjectRelease();

            goto LABEL_45;
          }

          v131 = swift_allocObject();
          type metadata accessor for FeedMastheadModel();
          v132 = swift_allocObject();
          v132[3] = v185;
          v132[4] = v77;
          v132[2] = v61;
          *(v131 + 16) = v132;
          *v43 = v131 | 0x7000000000000000;
          swift_storeEnumTagMultiPayload();
          v133 = v43;
          v134 = v171;
          sub_219248AB4(v133, v171);
          v113 = v134;
          v57 = v172;
LABEL_64:
          sub_219248AB4(v113, v57);
          if (v184)
          {
            goto LABEL_37;
          }

          goto LABEL_36;
        }

        swift_unknownObjectRelease();

LABEL_41:
        swift_unknownObjectRelease();
        sub_218817598(v76, &qword_280EE33F0, MEMORY[0x277D2D4E0]);
        if (v184)
        {
          goto LABEL_47;
        }

        goto LABEL_46;
      }

      v92 = v61;
      v93 = [sub_219BF6394() isPuzzleHub];
      swift_unknownObjectRelease();
      v94 = v186;
      if ((v93 & 1) != 0 || (v95 = [sub_219BF6394() isPuzzleType], swift_unknownObjectRelease(), v95))
      {
        if ([v61 feedConfiguration] == 9)
        {
          v96 = swift_allocObject();
          type metadata accessor for FeedMastheadModel();
          v97 = swift_allocObject();
          v97[3] = v185;
          v97[4] = v94;
          v97[2] = v61;
          *(v96 + 16) = v97;
          v98 = 0x2000000000000000;
LABEL_51:
          v109 = v98 | v96;
          v110 = v178;
          *v178 = v109;
          swift_storeEnumTagMultiPayload();
          v16[7](v110, 0, 1, v15);
          sub_218817598(v76, &qword_280EE33F0, MEMORY[0x277D2D4E0]);
          v111 = v110;
          v112 = v174;
          sub_219248AB4(v111, v174);
          v113 = v112;
          v57 = v175;
          goto LABEL_64;
        }

        v105 = [sub_219BF6394() isPuzzleType];
        swift_unknownObjectRelease();
        if (v105)
        {
          v96 = swift_allocObject();
          type metadata accessor for FeedMastheadModel();
          v106 = swift_allocObject();
          v106[3] = v185;
          v106[4] = v94;
          v106[2] = v61;
          *(v96 + 16) = v106;
          v107 = v61;
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          v108 = [sub_219BF6394() asPuzzleType];
          swift_unknownObjectRelease();

          swift_unknownObjectRelease();
          v76 = v187;
          swift_unknownObjectRelease();
          *(v96 + 24) = v108;
          v98 = 0x3000000000000000;
          goto LABEL_51;
        }

        v129 = v178;
        v16[7](v178, 1, 1, v15);
        sub_218817598(v129, qword_280EC6940, type metadata accessor for SuperfeedMastheadModel);
        if (sub_219BED0C4())
        {
          sub_219BF6394();
          v130 = v183;
          sub_21881AC1C(v76, v183);
          (*(v181 + 104))(v130, *MEMORY[0x277D33B30], v182);
          v117 = v169;
          goto LABEL_61;
        }

        goto LABEL_85;
      }

      v114 = [sub_219BF6394() isLocal];
      swift_unknownObjectRelease();
      if ((v114 & 1) != 0 || (v115 = [sub_219BF6394() isNewspaper], swift_unknownObjectRelease(), v115))
      {
        sub_219BF6394();
        v116 = v183;
        sub_21881AC1C(v76, v183);
        (*(v181 + 104))(v116, *MEMORY[0x277D33B30], v182);
        v117 = v173;
        goto LABEL_61;
      }

      if ([v61 feedConfiguration] == 3)
      {
        v136 = [v61 alternativeFeedDescriptor];
        if (v136)
        {

          goto LABEL_71;
        }

        type metadata accessor for FeedMastheadModel();
        v144 = swift_allocObject();
        v144[3] = v185;
        v144[4] = v94;
        v144[2] = v61;
        sub_218A6E454(0);
        v146 = v145;
        v147 = swift_allocBox();
        v148 = *(v146 + 48);
        *v149 = v144;
        sub_21881AC1C(v76, v149 + v148);
        v150 = v147 | 0x1000000000000000;
        v143 = v168;
        *v168 = v150;
      }

      else
      {
        v141 = [sub_219BF6394() asSportsEvent];
        swift_unknownObjectRelease();
        if (v141)
        {
          v142 = v61;
          v143 = v168;
          sub_218A79640(v142, v141, v168);

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
        }

        else
        {
          v151 = [sub_219BF6394() asSports];
          swift_unknownObjectRelease();
          if (!v151)
          {
LABEL_71:
            v137 = v168;
            v16[7](v168, 1, 1, v15);
            sub_218817598(v137, qword_280EC6940, type metadata accessor for SuperfeedMastheadModel);
            v138 = [sub_219BF6394() isFoodHub];
            swift_unknownObjectRelease();
            if ((v138 & 1) != 0 || (v139 = [sub_219BF6394() isRecipeCatalog], swift_unknownObjectRelease(), v139))
            {
              if (![v94 useFood])
              {
                swift_unknownObjectRelease();

                goto LABEL_41;
              }

              v140 = [v92 feedConfiguration];
              sub_218817598(v76, &qword_280EE33F0, MEMORY[0x277D2D4E0]);
              if (v140 == 12)
              {
                v154 = swift_allocObject();
                type metadata accessor for FeedMastheadModel();
                v155 = swift_allocObject();
                v155[3] = v185;
                v155[4] = v94;
                v155[2] = v92;
                *(v154 + 16) = v155;
                v156 = v154 | 0x7000000000000000;
                v157 = v164;
                *v164 = v156;
                swift_storeEnumTagMultiPayload();
                v158 = v157;
                v159 = v163;
                sub_219248AB4(v158, v163);
                v113 = v159;
                v57 = v165;
                goto LABEL_64;
              }

              swift_unknownObjectRelease();

LABEL_45:
              swift_unknownObjectRelease();
              if (v184)
              {
LABEL_47:
                v79 = 1;
                return v16[7](a5, v79, 1, v15);
              }

LABEL_46:
              sub_219248A58(v75);
              goto LABEL_47;
            }

            if ((sub_219BED0C4() & 1) != 0 && [v92 feedConfiguration] != 3)
            {
              sub_219BF6394();
              v160 = v183;
              sub_21881AC1C(v76, v183);
              (*(v181 + 104))(v160, *MEMORY[0x277D33B30], v182);
              v117 = v162;
LABEL_61:
              sub_219BF1FA4();
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();

              sub_218817598(v76, &qword_280EE33F0, MEMORY[0x277D2D4E0]);
              swift_storeEnumTagMultiPayload();
              v57 = v117;
              if (v184)
              {
                goto LABEL_37;
              }

              goto LABEL_36;
            }

LABEL_85:
            sub_218817598(v76, &qword_280EE33F0, MEMORY[0x277D2D4E0]);

            swift_unknownObjectRelease();
            goto LABEL_45;
          }

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          v152 = type metadata accessor for NameLogoMastheadModel(0);
          v143 = v168;
          sub_21881AC1C(v76, v168 + *(v152 + 24));
          *v143 = v61;
          v143[1] = v151;
        }
      }

      swift_storeEnumTagMultiPayload();
      v16[7](v143, 0, 1, v15);
      sub_218817598(v76, &qword_280EE33F0, MEMORY[0x277D2D4E0]);
      v153 = v166;
      sub_219248AB4(v143, v166);
      v113 = v153;
      v57 = v167;
      goto LABEL_64;
    }

    v86 = [v61 feedConfiguration];
    v75 = v180;
    v87 = v187;
    if (v86 == 3)
    {
      v88 = [v61 alternativeFeedDescriptor];
      if (v88)
      {

        goto LABEL_27;
      }

      type metadata accessor for FeedMastheadModel();
      v118 = swift_allocObject();
      v119 = v186;
      v118[3] = v185;
      v118[4] = v119;
      v118[2] = v61;
      sub_218A6E454(0);
      v121 = v120;
      v122 = swift_allocBox();
      v123 = *(v121 + 48);
      *v124 = v118;
      sub_21881AC1C(v87, v124 + v123);
      v125 = v122 | 0x1000000000000000;
      v103 = v179;
      *v179 = v125;
    }

    else
    {
      v101 = [sub_219BF6394() asSportsEvent];
      swift_unknownObjectRelease();
      if (v101)
      {
        v102 = v61;
        v103 = v179;
        sub_218A79640(v102, v101, v179);

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }

      else
      {
        v126 = [sub_219BF6394() asSports];
        swift_unknownObjectRelease();
        if (!v126)
        {
LABEL_27:
          v89 = v179;
          v62[7](v179, 1, 1, v15);
          sub_218817598(v89, qword_280EC6940, type metadata accessor for SuperfeedMastheadModel);
          if ((sub_219BED0C4() & 1) != 0 && [v61 feedConfiguration] != 3)
          {
            sub_219BF6394();
            v135 = v183;
            sub_21881AC1C(v87, v183);
            (*(v181 + 104))(v135, *MEMORY[0x277D33B30], v182);
            v57 = v170;
            sub_219BF1FA4();
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();

            sub_218817598(v87, &qword_280EE33F0, MEMORY[0x277D2D4E0]);
            swift_storeEnumTagMultiPayload();
            if (v184)
            {
              goto LABEL_37;
            }

            goto LABEL_36;
          }

          v90 = MEMORY[0x277D2D4E0];
          v91 = v87;
LABEL_44:
          sub_218817598(v91, &qword_280EE33F0, v90);

          swift_unknownObjectRelease();
          goto LABEL_45;
        }

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v127 = type metadata accessor for NameLogoMastheadModel(0);
        v103 = v179;
        sub_21881AC1C(v87, v179 + *(v127 + 24));
        *v103 = v61;
        v103[1] = v126;
      }
    }

    swift_storeEnumTagMultiPayload();
    v62[7](v103, 0, 1, v15);
    sub_218817598(v87, &qword_280EE33F0, MEMORY[0x277D2D4E0]);
    v128 = v176;
    sub_219248AB4(v103, v176);
    v113 = v128;
    v57 = v177;
    goto LABEL_64;
  }

  if ((sub_219BED0C4() & 1) != 0 && [a1 feedConfiguration] != 11)
  {
    sub_219BF6394();
    v180 = v16;
    v83 = v15;
    v84 = a5;
    v85 = v183;
    sub_21881AC1C(v187, v183);
    (*(v181 + 104))(v85, *MEMORY[0x277D33B30], v182);
    a5 = v84;
    v15 = v83;
    v16 = v180;
    sub_219BF1FA4();
    swift_storeEnumTagMultiPayload();
    goto LABEL_2;
  }

  sub_218817598(v187, &qword_280EE33F0, MEMORY[0x277D2D4E0]);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v79 = 1;
  return v16[7](a5, v79, 1, v15);
}

uint64_t sub_2192486E8()
{
  v1 = [v0 alternativeFeedDescriptor];
  if (v1)
  {
    v2 = v1;
    v3 = sub_2192486E8();

    return v3 & 1;
  }

  v5 = [v0 feedConfiguration];
  if (v5 > 0xD)
  {
    goto LABEL_8;
  }

  if (((1 << v5) & 0x370A) != 0)
  {
    return 1;
  }

  if (((1 << v5) & 0x8F4) == 0)
  {
LABEL_8:
    v6 = [objc_msgSend(v0 backingTag)];
    swift_unknownObjectRelease();
    if (!v6)
    {
      return 1;
    }

    swift_unknownObjectRelease();
  }

  return 0;
}

uint64_t sub_21924880C()
{
  v1 = type metadata accessor for SuperfeedMastheadModel(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219248B18(v0, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        sub_219248A58(v3);
        return 0x7374726F7053;
      }

      else
      {
        sub_219248A58(v3);
        return 0x45207374726F7053;
      }
    }

    else if (EnumCaseMultiPayload)
    {
      sub_219248A58(v3);
      return 0xD000000000000010;
    }

    else
    {
      sub_219248A58(v3);
      return 6775124;
    }
  }

  else
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        sub_219248A58(v3);
        return 0xD000000000000013;
      }

      if (EnumCaseMultiPayload == 7)
      {
        sub_219248A58(v3);
        return 0x62754820646F6F46;
      }

      sub_219248A58(v3);
      v6 = 0x657069636552;
      return v6 & 0xFFFFFFFFFFFFLL | 0x4820000000000000;
    }

    if (EnumCaseMultiPayload == 4)
    {
      sub_219248A58(v3);
      v6 = 0x656C7A7A7550;
      return v6 & 0xFFFFFFFFFFFFLL | 0x4820000000000000;
    }

    sub_219248A58(v3);
    return 0x5420656C7A7A7550;
  }
}

void sub_219248A04(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_219BF6FB4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_219248A58(uint64_t a1)
{
  v2 = type metadata accessor for SuperfeedMastheadModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_219248AB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SuperfeedMastheadModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_219248B18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SuperfeedMastheadModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id TodayPrewarmManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TodayPrewarmManager.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id TodayPrewarmManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_219248C68(uint64_t a1)
{
  if (qword_280ECFB08 != -1)
  {
    swift_once();
  }

  sub_219BE1AA4();

  sub_219BE1AB4();

  v1 = qword_280ECFAD8;
  if (qword_280ECFAD8)
  {
    sub_2186C6148(0, &qword_280E8DA00, 0x277D82BB8);
    v2 = v1;
    v3 = [v2 request];
    v4 = sub_219BF6DD4();

    if (v4)
    {
      sub_219BDBA54();
      v6 = v5;
      [v2 operationStartTime];
      if (v6 - v7 < 15.0)
      {
LABEL_13:
        v12 = qword_280ECFAD8;
        qword_280ECFAD8 = 0;

        goto LABEL_14;
      }

      if (qword_280E8D7A0 != -1)
      {
        swift_once();
      }

      v8 = qword_280F616D8;
      v9 = sub_219BF6214();
      sub_219BE5314("Ignoring prewarmed operation because it was started more than 15s ago", 69, 2, &dword_2186C1000, v8, v9, MEMORY[0x277D84F90]);
    }

    else
    {
      if (qword_280E8D7A0 != -1)
      {
        swift_once();
      }

      v10 = qword_280F616D8;
      v11 = sub_219BF6214();
      sub_219BE5314("Ignoring prewarmed operation because its request doesn't match", 62, 2, &dword_2186C1000, v10, v11, MEMORY[0x277D84F90]);
    }

    v1 = 0;
    goto LABEL_13;
  }

LABEL_14:

  sub_219BE1AC4();

  return v1;
}

unint64_t sub_219248E88()
{
  result = qword_280EE9C60;
  if (!qword_280EE9C60)
  {
    sub_219BDBD34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE9C60);
  }

  return result;
}

uint64_t sub_219248EE0(uint64_t a1, uint64_t a2)
{
  sub_2186C5F60(0, &qword_280E90C58, MEMORY[0x277D32FE8], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_219248F74(void (*a1)(void *, __n128), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = v6;
      v9 = v7[4];
      v10 = v7[5];
      v12 = *v7;
      v11 = v7[1];
      v13[0] = *(v7 - 1);
      v13[1] = v12;
      v13[2] = v11;
      v14 = *(v7 + 1);
      v15 = v9;
      v16 = v10;

      (a1)(v13);

      if (v3)
      {
        break;
      }

      v6 = v8 - 1;
      v7 += 7;
    }

    while (v8);
  }
}

void sub_21924905C(void (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    for (i = (a3 + 32); ; ++i)
    {
      v7 = *i;

      a1(&v7);
      if (v3)
      {
        break;
      }

      if (!--v4)
      {
        return;
      }
    }
  }
}

void sub_2192490F4(void (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_219BF7214())
  {
    v6 = 0;
    while ((a3 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x21CECE0F0](v6, a3);
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_12;
      }

LABEL_7:
      v10 = v7;
      a1(&v10);

      if (!v3)
      {
        ++v6;
        if (v8 != i)
        {
          continue;
        }
      }

      return;
    }

    if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_13;
    }

    v7 = *(a3 + 8 * v6 + 32);

    v8 = v6 + 1;
    if (!__OFADD__(v6, 1))
    {
      goto LABEL_7;
    }

LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

void sub_219249208(void (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_219BF7214())
  {
    v6 = 0;
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x21CECE0F0](v6, a3);
      }

      else
      {
        if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v7 = *(a3 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v11 = v7;
      a1(&v11);

      if (!v3)
      {
        ++v6;
        if (v9 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

void (*sub_219249308(void (*result)(uint64_t *), uint64_t a2, unint64_t a3))(uint64_t *)
{
  v9 = result;
  if (a3 >> 62)
  {
    goto LABEL_14;
  }

  v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5)
  {
    do
    {
      v6 = 0;
      while ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x21CECE0F0](v6, a3);
        v8 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_12;
        }

LABEL_7:
        v10 = v7;
        v9(&v10);
        result = swift_unknownObjectRelease();
        if (!v3)
        {
          ++v6;
          if (v8 != v5)
          {
            continue;
          }
        }

        return result;
      }

      if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v7 = *(a3 + 8 * v6 + 32);
      swift_unknownObjectRetain();
      v8 = v6 + 1;
      if (!__OFADD__(v6, 1))
      {
        goto LABEL_7;
      }

LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      result = sub_219BF7214();
      v5 = result;
    }

    while (result);
  }

  return result;
}

void sub_21924941C(void (*a1)(uint64_t *, double), uint64_t a2, uint64_t a3)
{
  v13 = a1;
  v4 = *(a3 + 16);
  if (v4)
  {
    for (i = (a3 + 64); ; i += 40)
    {
      v6 = *(i - 3);
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;
      v11[0] = *(i - 4);
      v11[1] = v6;
      v11[2] = v7;
      v11[3] = v8;
      v12 = v9;
      v10 = sub_21892DEAC(v11[0], v6);
      v13(v11, v10);
      if (v3)
      {
        break;
      }

      sub_218D89920();
      if (!--v4)
      {
        return;
      }
    }

    sub_218D89920();
  }
}

uint64_t sub_21924951C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = type metadata accessor for MagazineCatalogSectionHeaderViewLayoutAttributes(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = (&v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for MagazineCatalogLayoutSectionDescriptor(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218950E48(0);
  sub_219BE8184();
  sub_218932FF4();
  if ((*(*(v11 - 8) + 48))(v10, 1, v11) == 1)
  {
    result = sub_219BF7514();
    __break(1u);
  }

  else
  {
    sub_218933454(v10, v7);
    sub_21924AAFC(0);
    v12 = sub_219BF6414();
    sub_21924979C(a3, v12, v7);
    v13 = swift_allocObject();
    swift_weakInit();
    v14 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v15 = swift_allocObject();
    *(v15 + 16) = v13;
    *(v15 + 24) = v14;

    sub_219BE81F4();

    sub_21924ABE0(v7, type metadata accessor for MagazineCatalogSectionHeaderViewLayoutAttributes);

    return v12;
  }

  return result;
}

void sub_21924979C(void *a1, uint64_t a2, uint64_t *a3)
{
  v4 = v3;
  v8 = __swift_project_boxed_opaque_existential_1((v4 + 32), *(v4 + 56));
  v52 = a2;
  v9 = sub_219BE8204();
  v10 = [a1 traitCollection];
  v11 = *v8;
  __swift_project_boxed_opaque_existential_1((*v8 + 16), *(*v8 + 40));
  v12 = *a3;
  v13 = a3[1];
  v14 = a3 + *(type metadata accessor for MagazineCatalogSectionHeaderModel(0) + 20);
  v50 = type metadata accessor for MagazineCatalogSectionDescriptor.Categories(0);
  v51 = v14;
  v15 = &v14[*(v50 + 20)];
  v16 = *v15;
  v17 = v15[1];
  v49 = v10;
  v18 = sub_218EBBBA0(v12, v13, v16, v17, v10);
  v19 = OBJC_IVAR____TtC7NewsUI232MagazineCatalogSectionHeaderView_selectCategoryButton;
  [*&v9[OBJC_IVAR____TtC7NewsUI232MagazineCatalogSectionHeaderView_selectCategoryButton] setAttributedTitle:v18 forState:0];
  v20 = [*&v9[v19] titleLabel];
  if (v20)
  {
    v21 = v20;
    [v20 setLineBreakMode_];
  }

  v22 = *&v9[v19];
  v23 = type metadata accessor for MagazineCatalogSectionHeaderViewLayoutAttributes(0);
  [v22 setFrame_];
  v24 = OBJC_IVAR____TtC7NewsUI232MagazineCatalogSectionHeaderView_sortByButton;
  v25 = *&v9[OBJC_IVAR____TtC7NewsUI232MagazineCatalogSectionHeaderView_sortByButton];
  __swift_project_boxed_opaque_existential_1((v11 + 16), *(v11 + 40));
  sub_218EBC26C(*(a3 + v23[8]));
  v27 = v26;
  [v25 setImage:v26 forState:0];

  v28 = (a3 + v23[7]);
  v29 = *v28;
  v30 = v28[1];
  v31 = v28[2];
  v32 = v28[3];
  [*&v9[v24] setFrame_];
  v54.origin.x = 0.0;
  v54.origin.y = 0.0;
  v54.size.width = 0.0;
  v54.size.height = 0.0;
  v53.origin.x = v29;
  v53.origin.y = v30;
  v53.size.width = v31;
  v53.size.height = v32;
  [*&v9[v24] setHidden_];

  v33 = sub_219BE8204();
  v34 = *&v33[OBJC_IVAR____TtC7NewsUI232MagazineCatalogSectionHeaderView_onSelectCategoryButtonTap];

  v35 = sub_219BEA814();
  swift_allocObject();
  swift_weakInit();

  MEMORY[0x28223BE20](v36);
  v48[2] = a3;
  v48[3] = v4;
  sub_21894624C(sub_21924AE44, v48, v37);
  v39 = v38;
  v40 = sub_219BE8204();
  v41 = *&v40[OBJC_IVAR____TtC7NewsUI232MagazineCatalogSectionHeaderView_sortByButton];

  if (v39 >> 62)
  {
    v42 = sub_219BF7214();
  }

  else
  {
    v42 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  [v41 setHidden_];

  v43 = sub_219BE8204();
  v44 = *&v43[OBJC_IVAR____TtC7NewsUI232MagazineCatalogSectionHeaderView_sortByButton];

  sub_2186C6148(0, &qword_280E8DAF0, 0x277D75710);
  v45 = sub_219BF6BF4();
  [v44 setMenu_];

  v46 = sub_219BE8204();
  v47 = *&v46[OBJC_IVAR____TtC7NewsUI232MagazineCatalogSectionHeaderView_sortByButton];

  [v47 setShowsMenuAsPrimaryAction_];
}

void sub_219249BC4(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  sub_21924ADD8(0, &qword_27CC17F18, type metadata accessor for MagazineCatalogSectionHeaderViewLayoutAttributes, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v30 - v7;
  v9 = type metadata accessor for MagazineCatalogSectionHeaderViewLayoutAttributes(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v30 - v14;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    v31 = a1;
    swift_beginAccess();
    v18 = swift_unknownObjectWeakLoadStrong();
    if (!v18)
    {

      return;
    }

    v19 = v18;
    sub_219BE5824();
    if (!v33)
    {

      sub_21924ABE0(aBlock, sub_21880702C);
      (*(v10 + 56))(v8, 1, 1, v9);
      goto LABEL_8;
    }

    v20 = swift_dynamicCast();
    (*(v10 + 56))(v8, v20 ^ 1u, 1, v9);
    if ((*(v10 + 48))(v8, 1, v9) == 1)
    {

LABEL_8:
      sub_21924AC40(v8);
      return;
    }

    sub_218933454(v8, v15);
    v21 = *(v17 + 72);
    if (v21)
    {

      if ((sub_219BEA374() & 1) == 0)
      {
        sub_21924ABE0(v15, type metadata accessor for MagazineCatalogSectionHeaderViewLayoutAttributes);

        goto LABEL_15;
      }

      v30 = objc_opt_self();
      sub_21924ACCC(v15, v12);
      v22 = (*(v10 + 80) + 40) & ~*(v10 + 80);
      v23 = (v11 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
      v24 = swift_allocObject();
      v24[2] = v17;
      v24[3] = v19;
      v24[4] = v31;
      sub_218933454(v12, v24 + v22);
      *(v24 + v23) = v21;
      *(v24 + ((v23 + 15) & 0xFFFFFFFFFFFFFFF8)) = a2;
      v25 = swift_allocObject();
      *(v25 + 16) = sub_21924AD30;
      *(v25 + 24) = v24;
      v34 = sub_218807D50;
      v35 = v25;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_218807CE4;
      v33 = &block_descriptor_107;
      v26 = _Block_copy(aBlock);

      v19 = v19;
      v27 = v31;
      v28 = a2;

      [v30 performWithoutAnimation_];
      _Block_release(v26);

      sub_21924ABE0(v15, type metadata accessor for MagazineCatalogSectionHeaderViewLayoutAttributes);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return;
      }

      __break(1u);
    }

    sub_21924ABE0(v15, type metadata accessor for MagazineCatalogSectionHeaderViewLayoutAttributes);
LABEL_15:
  }
}

void sub_21924A098(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4)
{
  sub_21924AAFC(0);
  sub_219BF5044();
  sub_21924979C(a2, v6, a4);
}

void sub_21924A1A4(uint64_t a1, void *a2)
{
  v3 = sub_219BDC104();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_21924ADD8(0, &qword_27CC0DCE8, MEMORY[0x277CC9AF8], MEMORY[0x277D84560]);
    v9 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_219C09BA0;
    v11 = [a2 indexPath];
    sub_219BDC0B4();

    (*(v4 + 32))(v10 + v9, v6, v3);
    v12 = sub_219BF5904();

    [v8 reloadItemsAtIndexPaths_];
  }
}

double sub_21924A360(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = *(*(Strong + OBJC_IVAR____TtC7NewsUI229MagazineCatalogViewController_eventHandler) + 40);
      ObjectType = swift_getObjectType();
      (*(v3 + 48))(ObjectType, v3);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_21924A410@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = *a1;
  sub_2186C6148(0, &qword_280E8DAF0, 0x277D75710);
  v10 = a2;
  v11 = a3;
  sub_218946354(sub_21924AE64, v9, v7);
  result = sub_219BF6C04();
  *a4 = result;
  return result;
}

uint64_t sub_21924A4D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a4@<X8>)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  if (v6 == 1)
  {
    sub_218F89910(*a1);
  }

  else
  {
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v8 = [objc_opt_self() bundleForClass_];
    sub_219BDB5E4();

    v9 = sub_219BF53D4();
    v10 = [objc_opt_self() systemImageNamed_];
  }

  v11 = *(type metadata accessor for MagazineCatalogSectionHeaderModel(0) + 20);
  v12 = type metadata accessor for MagazineCatalogSectionDescriptor.Categories(0);
  if (v6)
  {
    v13 = *(a2 + v11 + *(v12 + 24) + 8);
    if (v13 != 4)
    {
      sub_21908A55C(v5, v13);
    }
  }

  sub_2186C6148(0, &qword_280E8D9D0, 0x277D750C8);
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = v5;
  *(v15 + 32) = v6;
  sub_218951020(v5, v6);
  result = sub_219BF6E14();
  *a4 = result;
  return result;
}

double sub_21924A728(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v8 = *(Strong + OBJC_IVAR____TtC7NewsUI229MagazineCatalogViewController_eventHandler);
      v9 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v10 = *(v8 + 40);
      ObjectType = swift_getObjectType();
      v12 = *(v10 + 56);

      v12(a3, a4 & 1, sub_21924AE90, v9, ObjectType, v10);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

double sub_21924A9A4()
{
  v1 = sub_219BE9834();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_21924AAFC(0);
  (*(v2 + 104))(v4, *MEMORY[0x277D6E758], v1);
  sub_219BF6444();
  (*(v2 + 8))(v4, v1);
  *(v5 + 72) = sub_219BF63F4();

  return result;
}

void sub_21924AAFC(uint64_t a1)
{
  if (!qword_27CC17F08)
  {
    type metadata accessor for MagazineCatalogSectionHeaderView();
    sub_21924AB90(&qword_27CC17F10, type metadata accessor for MagazineCatalogSectionHeaderView, &unk_219C7E6BC);
    v1 = sub_219BE8224();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC17F08);
    }
  }
}

uint64_t sub_21924AB90(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21924ABE0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21924AC40(uint64_t a1)
{
  sub_21924ADD8(0, &qword_27CC17F18, type metadata accessor for MagazineCatalogSectionHeaderViewLayoutAttributes, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21924ACCC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MagazineCatalogSectionHeaderViewLayoutAttributes(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_21924AD30()
{
  v1 = *(type metadata accessor for MagazineCatalogSectionHeaderViewLayoutAttributes(0) - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = (v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80)));

  sub_21924A098(v2, v3, v4, v5);
}

void sub_21924ADD8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata accessor for SportsManagementDetailPrewarmBlueprintModifier(uint64_t a1)
{
  result = qword_27CC17F20;
  if (!qword_27CC17F20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21924AF0C(uint64_t a1)
{
  result = type metadata accessor for SportsManagementDetailPrewarmResult(319);
  if (v2 <= 0x3F)
  {
    result = sub_21924AF90();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_21924AF90()
{
  result = qword_280E97BA0[0];
  if (!qword_280E97BA0[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_280E97BA0);
  }

  return result;
}

uint64_t sub_21924AFF4(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v41 = a3;
  sub_21924C2FC(0);
  MEMORY[0x28223BE20](v5 - 8);
  v38 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21924C3C8(0, &qword_27CC0B060, MEMORY[0x277D6EC60]);
  v39 = *(v7 - 8);
  v40 = v7;
  MEMORY[0x28223BE20](v7);
  v37 = &v34 - v8;
  sub_21924C3C8(0, &qword_27CC17F50, MEMORY[0x277D6DF88]);
  v35 = *(v9 - 8);
  v36 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v34 - v10;
  v12 = type metadata accessor for SportsManagementDetailSectionDescriptor(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218952B60(0);
  v16 = v15;
  v17 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x277D84F90];
  v20 = type metadata accessor for SportsManagementDetailPrewarmResult(0);
  v21 = *(v3 + *(v20 + 20));
  if (v21 >> 62)
  {
    v22 = sub_219BF7214();
    if (v22)
    {
      goto LABEL_3;
    }

LABEL_7:
    v23 = MEMORY[0x277D84F90];
    goto LABEL_8;
  }

  v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v22)
  {
    goto LABEL_7;
  }

LABEL_3:
  v34 = a2;
  *v14 = *(*(v3 + *(v20 + 24)) + 16) == 0;
  swift_storeEnumTagMultiPayload();
  sub_21924B588(v21, v14, v19);
  sub_21924C5A8(v14, type metadata accessor for SportsManagementDetailSectionDescriptor);
  v23 = sub_2191FA3D0(0, 1, 1, MEMORY[0x277D84F90]);
  v25 = v23[2];
  v24 = v23[3];
  if (v25 >= v24 >> 1)
  {
    v23 = sub_2191FA3D0((v24 > 1), v25 + 1, 1, v23);
  }

  v23[2] = v25 + 1;
  v22 = (*(v17 + 32))(v23 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v25, v19, v16);
  v42 = v23;
  a2 = v34;
LABEL_8:
  if (*(*(v3 + *(v20 + 24)) + 16))
  {
    MEMORY[0x28223BE20](v22);
    v33 = v3;
    sub_21894A080(sub_21924C4BC, (&v34 - 4), v26);
    sub_2191EF930(v27);
    v23 = v42;
  }

  v28 = sub_21924C26C(&qword_27CC17F40, sub_218952B60, MEMORY[0x277D6D720]);
  v29 = sub_21924C26C(&qword_27CC17F48, sub_218952B60, MEMORY[0x277D6D718]);
  MEMORY[0x21CEB9170](v23, v16, v28, v29);
  type metadata accessor for SportsManagementDetailModel(0);
  sub_21924C26C(&qword_27CC17040, type metadata accessor for SportsManagementDetailSectionDescriptor, &unk_219CA2208);
  v30 = sub_21924C26C(&qword_27CC0B040, type metadata accessor for SportsManagementDetailModel, &unk_219CA89AC);
  v31 = v37;
  sub_219BEB2D4();
  v33 = v30;
  sub_219BE85C4();
  (*(v39 + 8))(v31, v40);
  a2(v11);
  return (*(v35 + 8))(v11, v36);
}

void *sub_21924B588@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v31 = type metadata accessor for SportsManagementDetailModel(0);
  MEMORY[0x28223BE20](v31);
  v7 = (v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_218952E24(0);
  v30 = v8;
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21924C4DC(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SportsManagementDetailSectionDescriptor(0);
  MEMORY[0x28223BE20](v15);
  v17 = v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21924C608(a2, v17, type metadata accessor for SportsManagementDetailSectionDescriptor);
  if (a1 >> 62)
  {
    v18 = sub_219BF7214();
  }

  else
  {
    v18 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v19 = MEMORY[0x277D84F90];
  if (!v18)
  {
LABEL_12:
    v26 = sub_21924C26C(&qword_27CC17F60, sub_218952E24, MEMORY[0x277D6D408]);
    v27 = sub_21924C26C(&unk_27CC17F68, sub_218952E24, MEMORY[0x277D6D3F8]);
    MEMORY[0x21CEB9170](v19, v30, v26, v27);
    sub_21924C26C(&qword_27CC17040, type metadata accessor for SportsManagementDetailSectionDescriptor, &unk_219CA2208);
    sub_21924C26C(&qword_27CC0B040, type metadata accessor for SportsManagementDetailModel, &unk_219CA89AC);
    return sub_219BE6924();
  }

  v32 = MEMORY[0x277D84F90];
  result = sub_218C36D50(0, v18 & ~(v18 >> 63), 0);
  if ((v18 & 0x8000000000000000) == 0)
  {
    v28[3] = a3;
    v29 = v18;
    v28[0] = v17;
    v28[1] = v15;
    v28[2] = v14;
    v21 = 0;
    v19 = v32;
    v22 = a1;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v23 = MEMORY[0x21CECE0F0](v21, v22);
      }

      else
      {
      }

      *v7 = v23;
      swift_storeEnumTagMultiPayload();
      sub_21924C26C(&qword_27CC0B040, type metadata accessor for SportsManagementDetailModel, &unk_219CA89AC);
      sub_219BE5FB4();
      v32 = v19;
      v25 = *(v19 + 16);
      v24 = *(v19 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_218C36D50((v24 > 1), v25 + 1, 1);
        v19 = v32;
      }

      ++v21;
      *(v19 + 16) = v25 + 1;
      (*(v9 + 32))(v19 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v25, v11, v30);
      v22 = a1;
    }

    while (v29 != v21);
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_21924B9CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30[3] = a2;
  v34 = type metadata accessor for SportsManagementDetailModel(0);
  MEMORY[0x28223BE20](v34);
  v4 = (v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for SportsModel(0);
  v31 = *(v5 - 8);
  v32 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218952E24(0);
  v33 = v8;
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21924C4DC(0);
  MEMORY[0x28223BE20](v12 - 8);
  v30[2] = v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for SportsManagementDetailSectionDescriptor(0);
  MEMORY[0x28223BE20](v14);
  v16 = (v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *(a1 + *(type metadata accessor for SportsManagementDetailSection(0) + 20));
  *v16 = sub_21924BF6C(v17);
  v16[1] = v18;
  v19 = *MEMORY[0x277D34028];
  v20 = sub_219BF3AF4();
  (*(*(v20 - 8) + 104))(v16, v19, v20);
  v30[0] = v16;
  v30[1] = v14;
  swift_storeEnumTagMultiPayload();
  v21 = *(v17 + 16);
  v22 = MEMORY[0x277D84F90];
  if (v21)
  {
    v35 = MEMORY[0x277D84F90];
    sub_218C36D50(0, v21, 0);
    v22 = v35;
    v23 = v17 + ((*(v31 + 80) + 32) & ~*(v31 + 80));
    v24 = *(v31 + 72);
    v30[5] = v9 + 32;
    v31 = v24;
    do
    {
      sub_21924C608(v23, v7, type metadata accessor for SportsModel);
      if (*(*&v7[*(v32 + 20)] + 16))
      {
        sub_21924C608(v7, v4, type metadata accessor for SportsModel);
        swift_storeEnumTagMultiPayload();
        sub_21924C26C(&qword_27CC0B040, type metadata accessor for SportsManagementDetailModel, &unk_219CA89AC);
      }

      else
      {
        *v4 = *&v7[*(v32 + 24)];
        swift_storeEnumTagMultiPayload();
        sub_21924C26C(&qword_27CC0B040, type metadata accessor for SportsManagementDetailModel, &unk_219CA89AC);
      }

      sub_219BE5FB4();
      sub_21924C5A8(v7, type metadata accessor for SportsModel);
      v35 = v22;
      v26 = *(v22 + 16);
      v25 = *(v22 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_218C36D50((v25 > 1), v26 + 1, 1);
        v22 = v35;
      }

      *(v22 + 16) = v26 + 1;
      (*(v9 + 32))(v22 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v26, v11, v33);
      v23 += v31;
      --v21;
    }

    while (v21);
  }

  v27 = sub_21924C26C(&qword_27CC17F60, sub_218952E24, MEMORY[0x277D6D408]);
  v28 = sub_21924C26C(&unk_27CC17F68, sub_218952E24, MEMORY[0x277D6D3F8]);
  MEMORY[0x21CEB9170](v22, v33, v27, v28);
  sub_21924C26C(&qword_27CC17040, type metadata accessor for SportsManagementDetailSectionDescriptor, &unk_219CA2208);
  sub_21924C26C(&qword_27CC0B040, type metadata accessor for SportsManagementDetailModel, &unk_219CA89AC);
  return sub_219BE6924();
}

uint64_t sub_21924BF6C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for SportsModel(0);
  MEMORY[0x28223BE20](v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x277D84F90];
  v22 = MEMORY[0x277D84F90];
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = *(v5 + 24);
    v12 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v13 = *(v6 + 72);
    do
    {
      sub_21924C608(v12, v8, type metadata accessor for SportsModel);
      v14 = [*(*&v8[v11] + 16) asSports];
      v15 = sub_21924C5A8(v8, type metadata accessor for SportsModel);
      if (v14)
      {
        MEMORY[0x21CECC690](v15);
        if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_219BF5A14();
        }

        sub_219BF5A54();
        v9 = v22;
      }

      v12 += v13;
      --v10;
    }

    while (v10);
  }

  v16 = (v2 + *(type metadata accessor for SportsManagementDetailPrewarmBlueprintModifier(0) + 20));
  v17 = v16[3];
  v18 = v16[4];
  __swift_project_boxed_opaque_existential_1(v16, v17);
  v19 = (*(v18 + 16))(v9, v17, v18);

  return v19;
}

uint64_t sub_21924C170(uint64_t a1)
{
  v2 = sub_21924C26C(&qword_27CC10F38, type metadata accessor for SportsManagementDetailPrewarmBlueprintModifier, &unk_219C69428);

  return MEMORY[0x2821D4040](a1, v2);
}

uint64_t sub_21924C26C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_21924C2FC(uint64_t a1)
{
  if (!qword_27CC17F38)
  {
    sub_218952B60(255);
    sub_21924C26C(&qword_27CC17F40, sub_218952B60, MEMORY[0x277D6D720]);
    sub_21924C26C(&qword_27CC17F48, sub_218952B60, MEMORY[0x277D6D718]);
    v1 = sub_219BE2454();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC17F38);
    }
  }
}

void sub_21924C3C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for SportsManagementDetailSectionDescriptor(255);
    v8[1] = type metadata accessor for SportsManagementDetailModel(255);
    v8[2] = sub_21924C26C(&qword_27CC17040, type metadata accessor for SportsManagementDetailSectionDescriptor, &unk_219CA2208);
    v8[3] = sub_21924C26C(&qword_27CC0B040, type metadata accessor for SportsManagementDetailModel, &unk_219CA89AC);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_21924C4DC(uint64_t a1)
{
  if (!qword_27CC17F58)
  {
    sub_218952E24(255);
    sub_21924C26C(&qword_27CC17F60, sub_218952E24, MEMORY[0x277D6D408]);
    sub_21924C26C(&unk_27CC17F68, sub_218952E24, MEMORY[0x277D6D3F8]);
    v1 = sub_219BE2454();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC17F58);
    }
  }
}

uint64_t sub_21924C5A8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21924C608(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21924C680()
{
  sub_2186CF94C(0);
  sub_2189B4DD4();
  return sub_219BEB484();
}

uint64_t sub_21924C6E8(uint64_t a1)
{
  v3 = type metadata accessor for SportsSectionCurationRequest(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 40);
  v8 = sub_219BF6214();
  sub_219BE5314("Sports section service fetching curations...", 44, 2, &dword_2186C1000, v7, v8, MEMORY[0x277D84F90]);
  v30 = v1;
  v31 = a1;
  sub_2192500E4(0, &qword_280E8F418, &type metadata for TagFeedCurationRequestTag, MEMORY[0x277D83940]);
  sub_219BE3204();
  v29 = type metadata accessor for SportsSectionCurationRequest;
  sub_21924FA04(a1, v6, type metadata accessor for SportsSectionCurationRequest);
  v9 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v10 = *(v4 + 80);
  v11 = v9 + v5;
  v27 = v9;
  v28 = v9 + v5;
  v12 = v9;
  v13 = (v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = v10;
  v14 = swift_allocObject();
  sub_21924FE00(v6, v14 + v12, type metadata accessor for SportsSectionCurationRequest);
  *(v14 + v13) = v1;

  v15 = sub_219BE2E54();
  sub_219BE2F64();

  v16 = v29;
  sub_21924FA04(a1, v6, v29);
  v17 = swift_allocObject();
  v18 = v27;
  sub_21924FE00(v6, v17 + v27, type metadata accessor for SportsSectionCurationRequest);
  v19 = sub_219BE2E54();
  sub_219BE2F74();

  sub_21924FA04(a1, v6, v16);
  v20 = swift_allocObject();
  sub_21924FE00(v6, v20 + v18, type metadata accessor for SportsSectionCurationRequest);
  v21 = sub_219BE2E54();
  sub_219BE3064();

  sub_21924FA04(a1, v6, v29);
  v22 = swift_allocObject();
  sub_21924FE00(v6, v22 + v18, type metadata accessor for SportsSectionCurationRequest);
  v23 = sub_219BE2E54();
  v24 = sub_219BE3024();

  return v24;
}

uint64_t sub_21924CA88(uint64_t a1)
{
  v3 = type metadata accessor for SportsSectionCurationRequest(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = [*(a1 + 8) mySportsTagID];
  if (v6)
  {
    v8 = v6;
    v9 = sub_219BF5414();
    v11 = v10;

    MEMORY[0x28223BE20](v12);
    *(&v19 - 4) = v1;
    *(&v19 - 3) = v9;
    *(&v19 - 2) = v11;
    sub_2186D8870();
    sub_219BE3204();

    v13 = sub_219BE2E54();
    sub_2192500E4(0, &qword_280E8F418, &type metadata for TagFeedCurationRequestTag, MEMORY[0x277D83940]);
    sub_219BE2F74();

    sub_21924FA04(a1, &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SportsSectionCurationRequest);
    v14 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v15 = swift_allocObject();
    sub_21924FE00(&v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for SportsSectionCurationRequest);
    v16 = sub_219BE2E54();
    v17 = sub_219BE3054();

    return v17;
  }

  else
  {
    sub_21924FE68(0, v7);
    swift_allocObject();
    return sub_219BE3014();
  }
}

char *sub_21924CD10(uint64_t *a1, unint64_t *a2, uint64_t a3)
{
  v65 = type metadata accessor for TagFeedCurationRequest(0);
  MEMORY[0x28223BE20](v65);
  v7 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v64 - v9;
  v11 = *a1;
  v12 = *a2;
  v13 = *a2 >> 62;
  v72 = a2;
  *&v73 = v12;
  v67 = v15;
  v68 = v14;
  v66 = a3;
  if (v13)
  {
    v16 = sub_219BF7214();
  }

  else
  {
    v16 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v17 = MEMORY[0x277D84F90];
  v70 = v10;
  v69 = v7;
  if (v16)
  {
    v74 = MEMORY[0x277D84F90];
    result = sub_218C35E18(0, v16 & ~(v16 >> 63), 0);
    if (v16 < 0)
    {
      __break(1u);
      return result;
    }

    *&v71 = v11;
    v19 = 0;
    v17 = v74;
    v20 = v73;
    v21 = v73 & 0xC000000000000001;
    do
    {
      if (v21)
      {
        MEMORY[0x21CECE0F0](v19, v20);
      }

      else
      {
        swift_unknownObjectRetain();
      }

      swift_getObjectType();
      nullsub_1();
      v23 = v22;
      v25 = v24;
      v74 = v17;
      v27 = *(v17 + 16);
      v26 = *(v17 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_218C35E18((v26 > 1), v27 + 1, 1);
        v20 = v73;
        v17 = v74;
      }

      ++v19;
      *(v17 + 16) = v27 + 1;
      v28 = v17 + 16 * v27;
      *(v28 + 32) = v23;
      *(v28 + 40) = v25;
    }

    while (v16 != v19);
    v11 = v71;
  }

  v74 = v11;

  sub_2191EEC2C(v17);
  v29 = v74;
  v30 = type metadata accessor for SportsSectionCurationRequest(0);
  v31 = *(v72 + *(v30 + 44));
  v32 = *(v31 + 16);
  v33 = MEMORY[0x277D84F90];
  if (v32)
  {
    *&v71 = v30;
    *&v73 = v29;
    v74 = MEMORY[0x277D84F90];
    sub_218C35E48(0, v32, 0);
    v33 = v74;
    v34 = (v31 + 40);
    do
    {
      v36 = *(v34 - 1);
      v35 = *v34;
      v74 = v33;
      v37 = *(v33 + 16);
      v38 = *(v33 + 24);

      if (v37 >= v38 >> 1)
      {
        sub_218C35E48((v38 > 1), v37 + 1, 1);
        v33 = v74;
      }

      *(v33 + 16) = v37 + 1;
      v39 = (v33 + 24 * v37);
      v39[4] = v36;
      v39[5] = v35;
      v39[6] = 0;
      v34 += 2;
      --v32;
    }

    while (v32);
    v29 = v73;
    v30 = v71;
  }

  v40 = v72;
  v71 = *(v72 + 5);
  v73 = *(v72 + 1);
  v41 = v72[4];
  v42 = *(v30 + 40);
  v43 = v65;
  v44 = *(v65 + 44);
  v45 = sub_219BEFBD4();
  v46 = v70;
  (*(*(v45 - 8) + 16))(&v70[v44], v40 + v42, v45);
  v47 = *(v43 + 48);
  v48 = *MEMORY[0x277D32840];
  v49 = sub_219BEF9C4();
  (*(*(v49 - 8) + 104))(v46 + v47, v48, v49);
  *v46 = v29;
  *(v46 + 8) = v33;
  v50 = v73;
  v51 = v71;
  *(v46 + 16) = v71;
  *(v46 + 32) = v50;
  v52 = MEMORY[0x277D84FA0];
  *(v46 + 48) = v41;
  *(v46 + 56) = v52;
  v53 = *(v66 + 56);
  v54 = v51;
  v55 = *(&v71 + 1);

  v56 = sub_219BF6214();
  sub_219BE5314("Tag curation service fetching curations...", 42, 2, &dword_2186C1000, v54, v56, MEMORY[0x277D84F90]);
  sub_2192500E4(0, &unk_280EE6E20, &type metadata for TagFeedCurationResult, MEMORY[0x277D6CF30]);
  *&v73 = v57;
  v58 = v69;
  sub_21924FA04(v46, v69, type metadata accessor for TagFeedCurationRequest);
  v59 = *(v67 + 80);
  v60 = swift_allocObject();
  *(v60 + 16) = v53;
  sub_21924FE00(v58, v60 + ((v59 + 24) & ~v59), type metadata accessor for TagFeedCurationRequest);

  sub_219BE2F54();
  sub_21924FA04(v46, v58, type metadata accessor for TagFeedCurationRequest);
  v61 = swift_allocObject();
  sub_21924FE00(v58, v61 + ((v59 + 16) & ~v59), type metadata accessor for TagFeedCurationRequest);
  v62 = sub_219BE2E54();
  v63 = sub_219BE3024();

  sub_21924FA6C(v46, type metadata accessor for TagFeedCurationRequest);
  return v63;
}

double sub_21924D2A4@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  sub_2186F20D4(0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_219C09BA0;
  v7 = *(v4 + 16);
  v8 = MEMORY[0x277D83C10];
  *(v6 + 56) = MEMORY[0x277D83B88];
  *(v6 + 64) = v8;
  *(v6 + 32) = v7;
  sub_219BF6214();
  sub_219BE5314("Sports section service fetched %ld curations", v10);

  *a2 = v4;
  a2[1] = v3;
  a2[2] = v5;

  return result;
}

void sub_21924D384(uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *(a2 + 40);
  sub_2186F20D4(0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_219C09BA0;
  sub_2186CFDE4(0, &qword_280E8B580, MEMORY[0x277D84948]);
  sub_219BF7484();
  *(v5 + 56) = MEMORY[0x277D837D0];
  *(v5 + 64) = sub_2186FC3BC();
  *(v5 + 32) = 0;
  *(v5 + 40) = 0xE000000000000000;
  v6 = sub_219BF6214();
  sub_219BE5314("Sports section service failed to fetch curations, error=%{public}@", 66, 2, &dword_2186C1000, v4, v6, v5);

  sub_219B7F578(MEMORY[0x277D84F90]);
  *a3 = v7;
  a3[1] = v8;
  a3[2] = v9;
}

uint64_t sub_21924D498(uint64_t *a1)
{
  sub_218F93878(0);
  MEMORY[0x28223BE20](v2 - 8);
  v228 = &v205 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v227 = type metadata accessor for TagFeedCuration(0);
  v232 = *(v227 - 8);
  MEMORY[0x28223BE20](v227);
  v231 = &v205 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v230 = &v205 - v6;
  MEMORY[0x28223BE20](v7);
  v240 = (&v205 - v8);
  MEMORY[0x28223BE20](v9);
  v226 = &v205 - v10;
  MEMORY[0x28223BE20](v11);
  v236 = &v205 - v12;
  MEMORY[0x28223BE20](v13);
  v220 = &v205 - v14;
  MEMORY[0x28223BE20](v15);
  v219 = &v205 - v16;
  MEMORY[0x28223BE20](v17);
  v238 = &v205 - v18;
  MEMORY[0x28223BE20](v19);
  v221 = &v205 - v20;
  v234 = type metadata accessor for SportsSection(0);
  v244 = *(v234 - 8);
  MEMORY[0x28223BE20](v234);
  v237 = &v205 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v239 = &v205 - v23;
  MEMORY[0x28223BE20](v24);
  v224 = &v205 - v25;
  MEMORY[0x28223BE20](v26);
  v229 = &v205 - v27;
  MEMORY[0x28223BE20](v28);
  v242 = &v205 - v29;
  MEMORY[0x28223BE20](v30);
  v235 = &v205 - v31;
  MEMORY[0x28223BE20](v32);
  v209 = &v205 - v33;
  MEMORY[0x28223BE20](v34);
  v223 = &v205 - v35;
  MEMORY[0x28223BE20](v36);
  v206 = &v205 - v37;
  MEMORY[0x28223BE20](v38);
  v222 = &v205 - v39;
  MEMORY[0x28223BE20](v40);
  v225 = (&v205 - v41);
  MEMORY[0x28223BE20](v42);
  v208 = &v205 - v43;
  MEMORY[0x28223BE20](v44);
  v207 = &v205 - v45;
  v46 = *a1;
  v47 = a1[1];
  v49 = a1[2];
  v48 = a1[3];
  v50 = a1[4];
  v51 = a1[6];
  v52 = *(a1 + 104);
  sub_2186F20D4(0);
  v54 = v53;
  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_219C10590;
  v250 = *(a1 + 7);
  v56 = a1[9];
  v57 = *(v56 + 16);
  v58 = MEMORY[0x277D83B88];
  v59 = MEMORY[0x277D83C10];
  *(v55 + 56) = MEMORY[0x277D83B88];
  *(v55 + 64) = v59;
  v243 = v57;
  *(v55 + 32) = v57;
  *(v55 + 96) = v58;
  *(v55 + 104) = v59;
  *(v55 + 72) = v49;
  *(v55 + 136) = v58;
  *(v55 + 144) = v59;
  v218 = v48;
  *(v55 + 112) = v48;
  *(v55 + 176) = v58;
  *(v55 + 184) = v59;
  *(v55 + 152) = v46;
  *(v55 + 216) = v58;
  *(v55 + 224) = v59;
  *(v55 + 192) = v47;
  *(v55 + 256) = v58;
  *(v55 + 264) = v59;
  v241 = v50;
  *(v55 + 232) = v50;
  v60 = v52;
  *(v55 + 296) = v58;
  *(v55 + 304) = v59;
  v233 = v51;
  *(v55 + 272) = v51;
  v213 = v46;
  v211 = v54;
  v214 = v47;
  v216 = v49;
  v215 = v56;
  if (v52 > 1)
  {
    if (v52 == 2)
    {
      v61 = 0xE600000000000000;
      v62 = 0x756F59726F66;
      goto LABEL_9;
    }

    v62 = 0xD000000000000012;
    v63 = "forYouThenCuration";
  }

  else
  {
    if (!v52)
    {
      v61 = 0x8000000219CD7360;
      v62 = 0xD000000000000010;
      goto LABEL_9;
    }

    v62 = 0xD000000000000012;
    v63 = "curationThenForYou";
  }

  v61 = (v63 - 32) | 0x8000000000000000;
LABEL_9:
  v64 = v245;
  v65 = a1[14];
  *(v55 + 336) = MEMORY[0x277D837D0];
  v66 = v55;
  *(v55 + 344) = sub_2186FC3BC();
  *(v66 + 312) = v62;
  *(v66 + 320) = v61;
  v67 = sub_219BF6214();
  v210 = v65;
  v68 = v65;
  v69 = a1;
  sub_219BE5314("Sports section service processing %ld sports topics for sections heroMin=%ld, heroMax=%ld, secMin=%ld, secMax=%ld, curatedMax=%ld, maxItems=%ld, heroStrategy=%{public}@", 168, 2, &dword_2186C1000, v68, v67, v66);

  v70 = MEMORY[0x277D84F90];
  v249 = MEMORY[0x277D84F90];
  __swift_project_boxed_opaque_existential_1((v217 + 16), *(v217 + 40));
  v71 = sub_219BF1C04();
  v72 = sub_218845F78(v71);

  v73 = a1[10];

  v217 = v73;
  v245 = sub_21924F718(MEMORY[0x277D84F98], v73, v72, &v249);
  v212 = v64;
  swift_bridgeObjectRelease_n();
  v248 = v70;
  if (v60 > 1)
  {
    if (v60 == 2)
    {
      v81 = *(a1 + 7);
      v254 = v81;
      v71 = v81;
      v82 = v245;
      if (v81)
      {
        v64 = *(&v254 + 1);
        sub_21924FB20(&v254, &v246, *&v81);

        v84 = v207;
        sub_218E8B22C(v83, v207);
        swift_beginAccess();
        v77 = sub_2191FA404(0, 1, 1, MEMORY[0x277D84F90]);
        v86 = v77[2];
        v85 = v77[3];
        v72 = v86 + 1;
        if (v86 >= v85 >> 1)
        {
          v77 = sub_2191FA404((v85 > 1), v86 + 1, 1, v77);
        }

        v77[2] = v72;
        sub_21924FE00(v84, v77 + ((*(v244 + 80) + 32) & ~*(v244 + 80)) + *(v244 + 72) * v86, type metadata accessor for SportsSection);
        v248 = v77;
        swift_endAccess();

        v75 = 0;
      }

      else
      {
        v75 = 0;
        v77 = MEMORY[0x277D84F90];
      }
    }

    else
    {
      v94 = *(a1 + 7);
      v253 = v94;
      v71 = v94;
      v82 = v245;
      if (v94)
      {
        v64 = *(&v253 + 1);
        sub_21924FB20(&v253, &v246, *&v94);

        v96 = v208;
        sub_218E8B22C(v95, v208);
        swift_beginAccess();
        v77 = sub_2191FA404(0, 1, 1, MEMORY[0x277D84F90]);
        v98 = v77[2];
        v97 = v77[3];
        if (v98 >= v97 >> 1)
        {
          v77 = sub_2191FA404((v97 > 1), v98 + 1, 1, v77);
        }

        v77[2] = v98 + 1;
        sub_21924FE00(v96, v77 + ((*(v244 + 80) + 32) & ~*(v244 + 80)) + *(v244 + 72) * v98, type metadata accessor for SportsSection);
        v248 = v77;
        swift_endAccess();
      }

      else
      {
        v77 = MEMORY[0x277D84F90];
      }

      swift_beginAccess();
      v101 = *(v249 + 16);
      v72 = v221;
      v75 = 0;
      if (v101)
      {
        v71 = v249 + ((*(v232 + 80) + 32) & ~*(v232 + 80));
        v102 = *(v232 + 72);
        do
        {
          sub_21924FA04(v71, v72, type metadata accessor for TagFeedCuration);
          if (v75 >= v241)
          {
            sub_21924FA6C(v72, type metadata accessor for TagFeedCuration);
          }

          else
          {
            v103 = v72;
            v104 = v238;
            sub_21924FA04(v103, v238, type metadata accessor for TagFeedCuration);
            sub_218E8BC60(v104, v225);
            swift_beginAccess();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v77 = sub_2191FA404(0, v77[2] + 1, 1, v77);
            }

            v64 = v77[2];
            v105 = v77[3];
            if (v64 >= v105 >> 1)
            {
              v77 = sub_2191FA404((v105 > 1), v64 + 1, 1, v77);
            }

            v77[2] = v64 + 1;
            sub_21924FE00(v225, v77 + ((*(v244 + 80) + 32) & ~*(v244 + 80)) + *(v244 + 72) * v64, type metadata accessor for SportsSection);
            v248 = v77;
            swift_endAccess();
            v72 = v221;
            sub_21924FA6C(v221, type metadata accessor for TagFeedCuration);
            ++v75;
          }

          v71 += v102;
          --v101;
        }

        while (v101);
      }
    }

    goto LABEL_64;
  }

  if (v60)
  {
    swift_beginAccess();
    v87 = *(v249 + 16);
    if (v87)
    {
      v75 = 0;
      v88 = v249 + ((*(v232 + 80) + 32) & ~*(v232 + 80));
      v89 = *(v232 + 72);
      v77 = MEMORY[0x277D84F90];
      v82 = v245;
      v72 = v220;
      do
      {
        sub_21924FA04(v88, v72, type metadata accessor for TagFeedCuration);
        if (v75 >= v241)
        {
          sub_21924FA6C(v72, type metadata accessor for TagFeedCuration);
        }

        else
        {
          v90 = v72;
          v91 = v238;
          sub_21924FA04(v90, v238, type metadata accessor for TagFeedCuration);
          sub_218E8BC60(v91, v223);
          swift_beginAccess();
          v64 = v75;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v77 = sub_2191FA404(0, v77[2] + 1, 1, v77);
          }

          v93 = v77[2];
          v92 = v77[3];
          if (v93 >= v92 >> 1)
          {
            v77 = sub_2191FA404((v92 > 1), v93 + 1, 1, v77);
          }

          v77[2] = v93 + 1;
          sub_21924FE00(v223, v77 + ((*(v244 + 80) + 32) & ~*(v244 + 80)) + *(v244 + 72) * v93, type metadata accessor for SportsSection);
          v248 = v77;
          swift_endAccess();
          v72 = v220;
          sub_21924FA6C(v220, type metadata accessor for TagFeedCuration);
          v75 = v64 + 1;
        }

        v88 += v89;
        --v87;
      }

      while (v87);
    }

    else
    {
      v75 = 0;
      v77 = MEMORY[0x277D84F90];
      v82 = v245;
    }

    v251 = v250;
    v71 = v250;
    if (!v250)
    {
      goto LABEL_64;
    }

    v64 = *(&v251 + 1);
    sub_21924FB20(&v251, &v246, *&v250);

    v100 = &v241;
    goto LABEL_60;
  }

  swift_beginAccess();
  v74 = *(v249 + 16);
  if (v74)
  {
    v75 = 0;
    v71 = v249 + ((*(v232 + 80) + 32) & ~*(v232 + 80));
    v76 = *(v232 + 72);
    v77 = MEMORY[0x277D84F90];
    v72 = v219;
    do
    {
      sub_21924FA04(v71, v72, type metadata accessor for TagFeedCuration);
      if (v75 >= v241)
      {
        sub_21924FA6C(v72, type metadata accessor for TagFeedCuration);
      }

      else
      {
        v78 = v72;
        v79 = v238;
        sub_21924FA04(v78, v238, type metadata accessor for TagFeedCuration);
        sub_218E8BC60(v79, v222);
        swift_beginAccess();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v77 = sub_2191FA404(0, v77[2] + 1, 1, v77);
        }

        v64 = v77[2];
        v80 = v77[3];
        if (v64 >= v80 >> 1)
        {
          v77 = sub_2191FA404((v80 > 1), v64 + 1, 1, v77);
        }

        v77[2] = v64 + 1;
        sub_21924FE00(v222, v77 + ((*(v244 + 80) + 32) & ~*(v244 + 80)) + *(v244 + 72) * v64, type metadata accessor for SportsSection);
        v248 = v77;
        swift_endAccess();
        v72 = v219;
        sub_21924FA6C(v219, type metadata accessor for TagFeedCuration);
        ++v75;
      }

      v71 += v76;
      --v74;
    }

    while (v74);
  }

  else
  {
    v75 = 0;
    v77 = MEMORY[0x277D84F90];
  }

  if (!v77[2])
  {
    v252 = v250;
    v71 = v250;
    v82 = v245;
    if (!v250)
    {
      goto LABEL_64;
    }

    v64 = *(&v252 + 1);
    sub_21924FB20(&v252, &v246, *&v250);

    v100 = &v238;
LABEL_60:
    v106 = *(v100 - 32);
    sub_218E8B22C(v99, v106);
    swift_beginAccess();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_171:
      v77 = sub_2191FA404(0, v77[2] + 1, 1, v77);
    }

    v108 = v77[2];
    v107 = v77[3];
    v72 = v108 + 1;
    if (v108 >= v107 >> 1)
    {
      v77 = sub_2191FA404((v107 > 1), v108 + 1, 1, v77);
    }

    v77[2] = v72;
    sub_21924FE00(v106, v77 + ((*(v244 + 80) + 32) & ~*(v244 + 80)) + *(v244 + 72) * v108, type metadata accessor for SportsSection);
    v248 = v77;
    swift_endAccess();

    goto LABEL_64;
  }

  v82 = v245;
LABEL_64:
  if (!v243)
  {
    goto LABEL_86;
  }

  v223 = v75;
  v225 = (v232 + 56);
  v109 = (v215 + 56);
  do
  {
    v112 = *(v109 - 3);
    v64 = *(v109 - 2);
    v69 = *v109;

    swift_unknownObjectRetain();

    v113 = [v112 identifier];
    v114 = sub_219BF5414();
    v116 = v115;

    if (*(v245 + 16))
    {
      v117 = sub_21870F700(v114, v116);
      v119 = v118;

      if (v119)
      {
        v120 = *(v232 + 72);
        v121 = v226;
        sub_21924FA04(*(v245 + 56) + v120 * v117, v226, type metadata accessor for TagFeedCuration);
        v122 = v121;
        v123 = v236;
        sub_21924FE00(v122, v236, type metadata accessor for TagFeedCuration);
        v124 = v123;
        v125 = v238;
        sub_21924FA04(v124, v238, type metadata accessor for TagFeedCuration);
        swift_unknownObjectRetain();

        sub_218E8B844(v64, v125, v235);
        swift_beginAccess();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v77 = sub_2191FA404(0, v77[2] + 1, 1, v77);
        }

        v127 = v77[2];
        v126 = v77[3];
        if (v127 >= v126 >> 1)
        {
          v77 = sub_2191FA404((v126 > 1), v127 + 1, 1, v77);
        }

        v77[2] = v127 + 1;
        sub_21924FE00(v235, v77 + ((*(v244 + 80) + 32) & ~*(v244 + 80)) + *(v244 + 72) * v127, type metadata accessor for SportsSection);
        v248 = v77;
        swift_endAccess();
        v128 = [v112 identifier];
        v72 = sub_219BF5414();
        v130 = v129;

        v71 = v245;
        v131 = sub_21870F700(v72, v130);
        if (v132)
        {
          v72 = v131;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v246 = v71;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_219494B8C();
            v71 = v246;
          }

          v134 = *(v71 + 56) + v72 * v120;
          v111 = v228;
          sub_21924FE00(v134, v228, type metadata accessor for TagFeedCuration);
          v245 = v71;
          sub_21948A9F8(v72, v71);
          v110 = 0;
        }

        else
        {
          v110 = 1;
          v111 = v228;
        }

        (*v225)(v111, v110, 1, v227);
        swift_unknownObjectRelease();

        sub_21924FA6C(v111, sub_218F93878);
        sub_21924FA6C(v236, type metadata accessor for TagFeedCuration);
        goto LABEL_68;
      }
    }

    else
    {
    }

    swift_unknownObjectRetain();

    sub_218E8B578(v112, v64, v242);
    swift_beginAccess();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v77 = sub_2191FA404(0, v77[2] + 1, 1, v77);
    }

    v72 = v77[2];
    v135 = v77[3];
    v71 = v72 + 1;
    if (v72 >= v135 >> 1)
    {
      v77 = sub_2191FA404((v135 > 1), v72 + 1, 1, v77);
    }

    v77[2] = v71;
    sub_21924FE00(v242, v77 + ((*(v244 + 80) + 32) & ~*(v244 + 80)) + *(v244 + 72) * v72, type metadata accessor for SportsSection);
    v248 = v77;
    swift_endAccess();

    swift_unknownObjectRelease();
LABEL_68:
    v109 += 4;
    v243 = (v243 - 1);
  }

  while (v243);
  v82 = v245;
  v75 = v223;
LABEL_86:
  v136 = *(v217 + 16);
  if (v136)
  {
    v69 = v75;
    v64 = v217 + ((*(v232 + 80) + 32) & ~*(v232 + 80));
    v137 = *(v232 + 72);
    do
    {
      v138 = v240;
      sub_21924FA04(v64, v240, type metadata accessor for TagFeedCuration);
      v139 = *v138;
      swift_unknownObjectRetain();
      sub_21924FA6C(v138, type metadata accessor for TagFeedCuration);
      v75 = [v139 identifier];
      swift_unknownObjectRelease();
      v71 = sub_219BF5414();
      v72 = v140;

      if (*(v82 + 16))
      {
        v71 = sub_21870F700(v71, v72);
        v75 = v141;

        if (v75)
        {
          v142 = *(v82 + 56) + v71 * v137;
          v71 = v231;
          sub_21924FA04(v142, v231, type metadata accessor for TagFeedCuration);
          v75 = v230;
          sub_21924FE00(v71, v230, type metadata accessor for TagFeedCuration);
          if (v69 >= v241)
          {
            sub_21924FA6C(v75, type metadata accessor for TagFeedCuration);
          }

          else
          {
            v143 = v238;
            sub_21924FA04(v75, v238, type metadata accessor for TagFeedCuration);
            sub_218E8BC60(v143, v229);
            swift_beginAccess();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v77 = sub_2191FA404(0, v77[2] + 1, 1, v77);
            }

            v72 = v77[2];
            v144 = v77[3];
            v71 = v72 + 1;
            if (v72 >= v144 >> 1)
            {
              v77 = sub_2191FA404((v144 > 1), v72 + 1, 1, v77);
            }

            v77[2] = v71;
            sub_21924FE00(v229, v77 + ((*(v244 + 80) + 32) & ~*(v244 + 80)) + *(v244 + 72) * v72, type metadata accessor for SportsSection);
            v248 = v77;
            swift_endAccess();
            sub_21924FA6C(v75, type metadata accessor for TagFeedCuration);
            ++v69;
          }
        }
      }

      else
      {
      }

      v64 += v137;
      --v136;
    }

    while (v136);
  }

  v145 = sub_219A78170(v218, v77);
  v236 = v148;
  v149 = v147 >> 1;
  v238 = v146;
  v106 = (v147 >> 1) - v146;
  if (__OFSUB__(v147 >> 1, v146))
  {
LABEL_166:
    __break(1u);
LABEL_167:
    __break(1u);
LABEL_168:
    swift_unknownObjectRelease();
    v82 = v245;
    v106 = v75;
LABEL_102:
    sub_218B6734C(v71, v72, v64, v69);
    v242 = v153;

    v154 = v216;
LABEL_111:
    swift_unknownObjectRelease();
    if (v106 >= v154)
    {
      goto LABEL_112;
    }

LABEL_109:
    sub_21924FACC();
    swift_allocError();
    *v158 = v154;
    *(v158 + 8) = v106;
    *(v158 + 16) = 0;
    swift_willThrow();

LABEL_144:
    swift_unknownObjectRelease();

    return v75;
  }

  v235 = v147;
  v240 = v145;
  v71 = sub_219BC7A94((v147 >> 1) - v146, v77);
  v72 = v150;
  v64 = v151;
  v69 = v152;
  v245 = v82;
  if ((v152 & 1) == 0)
  {
    swift_bridgeObjectRetain_n();
    goto LABEL_102;
  }

  v75 = v106;
  sub_219BF7934();
  swift_bridgeObjectRetain_n();
  swift_unknownObjectRetain_n();
  v155 = swift_dynamicCastClass();
  if (!v155)
  {
    swift_unknownObjectRelease();
    v155 = MEMORY[0x277D84F90];
  }

  v156 = *(v155 + 16);

  if (__OFSUB__(v69 >> 1, v64))
  {
    goto LABEL_167;
  }

  if (v156 != (v69 >> 1) - v64)
  {
    goto LABEL_168;
  }

  v157 = swift_dynamicCastClass();

  swift_unknownObjectRelease();
  v82 = v245;
  v154 = v216;
  v242 = v157;
  v106 = v75;
  if (!v157)
  {
    v242 = MEMORY[0x277D84F90];
    goto LABEL_111;
  }

  if (v75 < v216)
  {
    goto LABEL_109;
  }

LABEL_112:
  v77 = MEMORY[0x277D84FA0];
  v247 = MEMORY[0x277D84FA0];
  v71 = v242;
  if (v238 != v149)
  {
    if (v238 >= v149)
    {
      goto LABEL_170;
    }

    v149 = *(v234 + 28);
    v64 = v106;
    v159 = *(v244 + 72);
    v160 = v236 + v238 * v159;
    v75 = v64;
    v161 = v224;
    do
    {
      sub_21924FA04(v160, v161, type metadata accessor for SportsSection);
      v162 = *(v161 + v149);
      if (v162)
      {
        v163 = [v162 identifier];
        v164 = sub_219BF5414();
        v69 = v165;

        sub_219497B60(&v246, v164, v69);
        v161 = v224;
      }

      sub_21924FA6C(v161, type metadata accessor for SportsSection);
      v160 += v159;
      --v64;
    }

    while (v64);
    v77 = v247;
    v71 = v242;
    v106 = v75;
  }

  v233 = v106;
  v241 = *(v71 + 16);
  if (v241)
  {
    v106 = 0;
    v243 = v77 + 7;
    v72 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v106 >= *(v71 + 16))
      {
        __break(1u);
        goto LABEL_166;
      }

      v64 = (*(v244 + 80) + 32) & ~*(v244 + 80);
      v149 = *(v244 + 72);
      v166 = v71 + v64 + v149 * v106;
      v167 = v239;
      sub_21924FA04(v166, v239, type metadata accessor for SportsSection);
      v168 = *(v167 + *(v234 + 28));
      if (v168)
      {
        v169 = [v168 identifier];
        v170 = sub_219BF5414();
        v69 = v171;

        if (v77[2])
        {
          sub_219BF7AA4();
          sub_219BF5524();
          v172 = sub_219BF7AE4();
          v173 = -1 << *(v77 + 32);
          v174 = v172 & ~v173;
          if ((*(v243 + ((v174 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v174))
          {
            v75 = ~v173;
            while (1)
            {
              v175 = (v77[6] + 16 * v174);
              v176 = *v175 == v170 && v175[1] == v69;
              if (v176 || (sub_219BF78F4() & 1) != 0)
              {
                break;
              }

              v174 = (v174 + 1) & v75;
              if (((*(v243 + ((v174 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v174) & 1) == 0)
              {
                goto LABEL_134;
              }
            }

            sub_21924FA6C(v239, type metadata accessor for SportsSection);
            v82 = v245;
            v71 = v242;
            goto LABEL_122;
          }
        }

LABEL_134:

        v82 = v245;
      }

      sub_21924FE00(v239, v237, type metadata accessor for SportsSection);
      v177 = swift_isUniquelyReferenced_nonNull_native();
      v247 = v72;
      if ((v177 & 1) == 0)
      {
        sub_218C36DF0(0, *(v72 + 16) + 1, 1);
        v72 = v247;
      }

      v71 = v242;
      v75 = *(v72 + 16);
      v178 = *(v72 + 24);
      v69 = v75 + 1;
      if (v75 >= v178 >> 1)
      {
        sub_218C36DF0((v178 > 1), v75 + 1, 1);
        v71 = v242;
        v72 = v247;
      }

      *(v72 + 16) = v69;
      sub_21924FE00(v237, v72 + v64 + v75 * v149, type metadata accessor for SportsSection);
LABEL_122:
      if (++v106 == v241)
      {
        goto LABEL_141;
      }
    }
  }

  v72 = MEMORY[0x277D84F90];
LABEL_141:

  v179 = sub_219A78170(v214, v72);
  v183 = (v182 >> 1) - v181;
  if (__OFSUB__(v182 >> 1, v181))
  {
    __break(1u);
LABEL_170:
    __break(1u);
    goto LABEL_171;
  }

  v184 = v179;
  v185 = v213;
  if (v183 < v213)
  {
    sub_21924FACC();
    swift_allocError();
    *v186 = v185;
    *(v186 + 8) = v183;
    *(v186 + 16) = 1;
    swift_willThrow();

    swift_unknownObjectRelease();
    goto LABEL_144;
  }

  v187 = v182;
  v188 = v181;
  v189 = v180;
  v190 = swift_allocObject();
  *(v190 + 16) = xmmword_219C0B8C0;
  v191 = *(v242 + 2);
  v192 = MEMORY[0x277D83B88];
  *(v190 + 56) = MEMORY[0x277D83B88];
  v193 = MEMORY[0x277D83C10];
  *(v190 + 32) = v191;
  *(v190 + 96) = v192;
  *(v190 + 104) = v193;
  v194 = v233;
  *(v190 + 64) = v193;
  *(v190 + 72) = v194;
  *(v190 + 136) = v192;
  *(v190 + 144) = v193;
  *(v190 + 112) = v183;
  sub_219BF6214();
  sub_219BE5314("Sports section service capped %ld sports topics to %ld heroes and %ld sections", v205, v206, v207);

  v195 = v235;
  if ((v235 & 1) == 0)
  {
    v196 = swift_unknownObjectRetain();
    goto LABEL_147;
  }

  sub_219BF7934();
  swift_unknownObjectRetain_n();
  v198 = swift_dynamicCastClass();
  if (!v198)
  {
    swift_unknownObjectRelease();
    v198 = MEMORY[0x277D84F90];
  }

  v199 = *(v198 + 16);

  if (v199 != v233)
  {
    v204 = v240;
    swift_unknownObjectRelease();
    v196 = v204;
    v195 = v235;
LABEL_147:
    sub_218B6734C(v196, v236, v238, v195);
    v75 = v197;
LABEL_155:
    swift_unknownObjectRelease();
    if (v187)
    {
      goto LABEL_157;
    }

    goto LABEL_156;
  }

  v75 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v75)
  {
    v75 = MEMORY[0x277D84F90];
    goto LABEL_155;
  }

  if ((v187 & 1) == 0)
  {
LABEL_156:
    sub_218B6734C(v184, v189, v188, v187);

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    goto LABEL_163;
  }

LABEL_157:
  sub_219BF7934();
  swift_unknownObjectRetain_n();
  v200 = swift_dynamicCastClass();
  if (!v200)
  {
    swift_unknownObjectRelease();
    v200 = MEMORY[0x277D84F90];
  }

  v201 = *(v200 + 16);

  if (v201 != v183)
  {
    swift_unknownObjectRelease_n();
    goto LABEL_156;
  }

  v202 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease_n();
  if (!v202)
  {
    swift_unknownObjectRelease();
  }

LABEL_163:

  return v75;
}

uint64_t sub_21924F54C@<X0>(uint64_t *a2@<X8>)
{
  sub_2192500E4(0, &unk_280E8BD00, &type metadata for TagFeedCurationRequestTag, MEMORY[0x277D84560]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_219C09BA0;
  swift_getObjectType();
  nullsub_1();
  *(v4 + 32) = v5;
  *(v4 + 40) = v6;
  *a2 = v4;
  return swift_unknownObjectRetain();
}

uint64_t sub_21924F5F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  sub_2186F20D4(0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_219C09BA0;
  sub_2186CFDE4(0, &qword_280E8B580, MEMORY[0x277D84948]);
  sub_219BF7484();
  *(v3 + 56) = MEMORY[0x277D837D0];
  *(v3 + 64) = sub_2186FC3BC();
  *(v3 + 32) = 0;
  *(v3 + 40) = 0xE000000000000000;
  v4 = sub_219BF6214();
  sub_219BE5314("Sports section service failed to fetch my sports tag for curations, error=%{public}@", 84, 2, &dword_2186C1000, v2, v4, v3);

  sub_21924FE68(0, v5);
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_21924F718(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v35 = a4;
  v37 = type metadata accessor for TagFeedCuration(0);
  MEMORY[0x28223BE20](v37);
  v34 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v36 = &v32 - v9;
  MEMORY[0x28223BE20](v10);
  v13 = &v32 - v12;
  v14 = *(a2 + 16);
  if (v14)
  {
    v15 = *(v11 + 72);
    v33 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v16 = a2 + v33;
    do
    {
      sub_218A274C4(a3, v13);
      if (*(*(v13 + 1) + 16))
      {
        if (v13[*(v37 + 40)])
        {
          sub_21924FA04(v13, v36, type metadata accessor for TagFeedCuration);
          v26 = v35;
          v27 = *v35;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *v26 = v27;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v27 = sub_2191F92D0(0, v27[2] + 1, 1, v27);
            *v35 = v27;
          }

          v30 = v27[2];
          v29 = v27[3];
          if (v30 >= v29 >> 1)
          {
            v27 = sub_2191F92D0((v29 > 1), v30 + 1, 1, v27);
            *v35 = v27;
          }

          v27[2] = v30 + 1;
          sub_21924FE00(v36, v27 + v33 + v30 * v15, type metadata accessor for TagFeedCuration);
        }

        else
        {
          v17 = [*v13 identifier];
          v18 = sub_219BF5414();
          v20 = v19;

          v21 = a1;
          v22 = a3;
          v23 = v34;
          sub_21924FA04(v13, v34, type metadata accessor for TagFeedCuration);
          v24 = swift_isUniquelyReferenced_nonNull_native();
          v38 = v21;
          v25 = v23;
          a3 = v22;
          sub_21948DF8C(v25, v18, v20, v24);

          a1 = v38;
        }
      }

      sub_21924FA6C(v13, type metadata accessor for TagFeedCuration);
      v16 += v15;
      --v14;
    }

    while (v14);
  }

  return a1;
}

uint64_t sub_21924FA04(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21924FA6C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_21924FACC()
{
  result = qword_27CC17F78;
  if (!qword_27CC17F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC17F78);
  }

  return result;
}

uint64_t sub_21924FB20(uint64_t a1, uint64_t a2, double a3)
{
  sub_2192500E4(0, &unk_280ED02D0, &type metadata for SportsForYouCluster, MEMORY[0x277D83D88]);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

char *sub_21924FBD8(uint64_t *a1)
{
  v3 = *(type metadata accessor for SportsSectionCurationRequest(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  return sub_21924CD10(a1, (v1 + v4), *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

double sub_21924FD68()
{
  v1 = *(type metadata accessor for SportsSectionCurationRequest(0) - 8);
  v2 = *(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)) + 40);
  v3 = sub_219BF6214();
  v4 = MEMORY[0x277D84F90];

  return sub_219BE5314("Sports section service fetching curations...done", 48, 2, &dword_2186C1000, v2, v3, v4);
}

uint64_t sub_21924FE00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_21924FE68(uint64_t a1, double a2)
{
  if (!qword_27CC17F80)
  {
    sub_2192500E4(255, &qword_280E8F418, &type metadata for TagFeedCurationRequestTag, MEMORY[0x277D83940]);
    v2 = sub_219BE3114();
    if (!v3)
    {
      atomic_store(v2, &qword_27CC17F80);
    }
  }
}

uint64_t objectdestroy_3Tm_9()
{
  v1 = (type metadata accessor for SportsSectionCurationRequest(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  swift_unknownObjectRelease();

  v3 = v1[12];
  v4 = sub_219BEFBD4();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  return swift_deallocObject();
}

void sub_2192500E4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_219250134(uint64_t a1@<X3>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  if (v5 <= 1)
  {
    if (*(a1 + 8))
    {
      v21 = *__swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC7NewsUI233PuzzleArchiveFilterCommandHandler_puzzleArchiveFilterOptionManager), *(v2 + OBJC_IVAR____TtC7NewsUI233PuzzleArchiveFilterCommandHandler_puzzleArchiveFilterOptionManager + 24));
      swift_beginAccess();
      v7 = *(v21 + 24);
      v8 = v4;
      v9 = 1;
    }

    else
    {
      v10 = *__swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC7NewsUI233PuzzleArchiveFilterCommandHandler_puzzleArchiveFilterOptionManager), *(v2 + OBJC_IVAR____TtC7NewsUI233PuzzleArchiveFilterCommandHandler_puzzleArchiveFilterOptionManager + 24));
      swift_beginAccess();
      v7 = *(v10 + 24);
      v8 = v4;
      v9 = 0;
    }

    goto LABEL_23;
  }

  if (v5 == 2)
  {
    v11 = *__swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC7NewsUI233PuzzleArchiveFilterCommandHandler_puzzleArchiveFilterOptionManager), *(v2 + OBJC_IVAR____TtC7NewsUI233PuzzleArchiveFilterCommandHandler_puzzleArchiveFilterOptionManager + 24));
    swift_beginAccess();
    v7 = *(v11 + 24);
    v8 = v4;
    v9 = 2;
    goto LABEL_23;
  }

  if (v5 == 3)
  {
    v6 = *__swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC7NewsUI233PuzzleArchiveFilterCommandHandler_puzzleArchiveFilterOptionManager), *(v2 + OBJC_IVAR____TtC7NewsUI233PuzzleArchiveFilterCommandHandler_puzzleArchiveFilterOptionManager + 24));
    swift_beginAccess();
    v7 = *(v6 + 24);
    v8 = v4;
    v9 = 3;
LABEL_23:
    v14 = sub_218C311F0(v8, v9, v7) ^ 1;
    goto LABEL_24;
  }

  if (v4 > 2)
  {
    v22 = *__swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC7NewsUI233PuzzleArchiveFilterCommandHandler_puzzleArchiveFilterOptionManager), *(v2 + OBJC_IVAR____TtC7NewsUI233PuzzleArchiveFilterCommandHandler_puzzleArchiveFilterOptionManager + 24));
    swift_beginAccess();
    v7 = *(v22 + 24);
    if (v4 == 3)
    {
      v8 = 3;
    }

    else
    {
      v8 = 4;
    }

    v9 = 4;
    goto LABEL_23;
  }

  if (v4 >= 2)
  {
    v23 = *__swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC7NewsUI233PuzzleArchiveFilterCommandHandler_puzzleArchiveFilterOptionManager), *(v2 + OBJC_IVAR____TtC7NewsUI233PuzzleArchiveFilterCommandHandler_puzzleArchiveFilterOptionManager + 24));
    swift_beginAccess();
    v7 = *(v23 + 24);
    v8 = 2;
    v9 = 4;
    goto LABEL_23;
  }

  v12 = *__swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC7NewsUI233PuzzleArchiveFilterCommandHandler_puzzleArchiveFilterOptionManager), *(v2 + OBJC_IVAR____TtC7NewsUI233PuzzleArchiveFilterCommandHandler_puzzleArchiveFilterOptionManager + 24));
  swift_beginAccess();
  v13 = *(v12 + 24);
  if (*(v13 + 16))
  {
    sub_219BF7AA4();
    v14 = 1;
    MEMORY[0x21CECE850](1);
    v15 = sub_219BF7AE4();
    v16 = -1 << *(v13 + 32);
    v17 = v15 & ~v16;
    if ((*(v13 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
    {
      v18 = ~v16;
      do
      {
        v19 = *(v13 + 48) + 16 * v17;
        v20 = *(v19 + 8) >= 4u && *v19 == 0;
        v14 = !v20;
        if (v20)
        {
          break;
        }

        v17 = (v17 + 1) & v18;
      }

      while (((*(v13 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) != 0);
    }
  }

  else
  {
    v14 = 1;
  }

LABEL_24:
  *a2 = v14 & 1;
}

double sub_219250510(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 <= 1)
  {
    if (!*(a1 + 8))
    {
      __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC7NewsUI233PuzzleArchiveFilterCommandHandler_puzzleArchiveFilterOptionManager), *(v1 + OBJC_IVAR____TtC7NewsUI233PuzzleArchiveFilterCommandHandler_puzzleArchiveFilterOptionManager + 24));
      v47 = v2;
      LOBYTE(v48) = 0;
      v8 = [v4 identifier];
      v9 = sub_219BF5414();
      v11 = v10;

      v12 = &v47;
LABEL_29:
      sub_219579B00(v12, v9, v11);
      goto LABEL_30;
    }

    v29 = (v1 + OBJC_IVAR____TtC7NewsUI233PuzzleArchiveFilterCommandHandler_puzzleArchiveFilterOptionManager);
    v30 = *__swift_project_boxed_opaque_existential_1(v29, v29[3]);
    swift_beginAccess();
    LOBYTE(v30) = sub_218C311F0(v2, 1u, *(v30 + 24));
    __swift_project_boxed_opaque_existential_1(v29, v29[3]);
    if (v30)
    {
      v49 = v2;
      v50 = 1;
      v7 = [v4 identifier];
      goto LABEL_24;
    }

    v49 = v2;
    v50 = 1;
    v35 = [v4 identifier];
LABEL_28:
    v36 = v35;
    v9 = sub_219BF5414();
    v11 = v37;

    v12 = &v49;
    goto LABEL_29;
  }

  if (v3 == 2)
  {
    v13 = (v1 + OBJC_IVAR____TtC7NewsUI233PuzzleArchiveFilterCommandHandler_puzzleArchiveFilterOptionManager);
    v14 = *__swift_project_boxed_opaque_existential_1(v13, v13[3]);
    swift_beginAccess();
    LOBYTE(v14) = sub_218C311F0(v2, 2u, *(v14 + 24));
    __swift_project_boxed_opaque_existential_1(v13, v13[3]);
    if (v14)
    {
      v49 = v2;
      v50 = 2;
      v7 = [v4 identifier];
      goto LABEL_24;
    }

    v49 = v2;
    v50 = 2;
    v35 = [v4 identifier];
    goto LABEL_28;
  }

  if (v3 == 3)
  {
    v5 = (v1 + OBJC_IVAR____TtC7NewsUI233PuzzleArchiveFilterCommandHandler_puzzleArchiveFilterOptionManager);
    v6 = *__swift_project_boxed_opaque_existential_1(v5, v5[3]);
    swift_beginAccess();
    LOBYTE(v6) = sub_218C311F0(v2, 3u, *(v6 + 24));
    __swift_project_boxed_opaque_existential_1(v5, v5[3]);
    if (v6)
    {
      v49 = v2;
      v50 = 3;
      v7 = [v4 identifier];
LABEL_24:
      v31 = v7;
      v32 = sub_219BF5414();
      v34 = v33;

      sub_21957A2DC(&v49, v32, v34);
      goto LABEL_30;
    }

    v49 = v2;
    v50 = 3;
    v35 = [v4 identifier];
    goto LABEL_28;
  }

  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v39 = (v1 + OBJC_IVAR____TtC7NewsUI233PuzzleArchiveFilterCommandHandler_puzzleArchiveFilterOptionManager);
      v40 = *__swift_project_boxed_opaque_existential_1(v39, v39[3]);
      swift_beginAccess();
      LOBYTE(v40) = sub_218C311F0(3, 4u, *(v40 + 24));
      __swift_project_boxed_opaque_existential_1(v39, v39[3]);
      if (v40)
      {
        v49 = 3;
        v50 = 4;
        v7 = [v4 identifier];
        goto LABEL_24;
      }

      v49 = 3;
      v50 = 4;
      v35 = [v4 identifier];
    }

    else
    {
      v43 = (v1 + OBJC_IVAR____TtC7NewsUI233PuzzleArchiveFilterCommandHandler_puzzleArchiveFilterOptionManager);
      v44 = *__swift_project_boxed_opaque_existential_1(v43, v43[3]);
      swift_beginAccess();
      LOBYTE(v44) = sub_218C311F0(4, 4u, *(v44 + 24));
      __swift_project_boxed_opaque_existential_1(v43, v43[3]);
      if (v44)
      {
        v49 = 4;
        v50 = 4;
        v7 = [v4 identifier];
        goto LABEL_24;
      }

      v49 = 4;
      v50 = 4;
      v35 = [v4 identifier];
    }

    goto LABEL_28;
  }

  if (v2 >= 2)
  {
    v41 = (v1 + OBJC_IVAR____TtC7NewsUI233PuzzleArchiveFilterCommandHandler_puzzleArchiveFilterOptionManager);
    v42 = *__swift_project_boxed_opaque_existential_1(v41, v41[3]);
    swift_beginAccess();
    LOBYTE(v42) = sub_218C311F0(2, 4u, *(v42 + 24));
    __swift_project_boxed_opaque_existential_1(v41, v41[3]);
    if (v42)
    {
      v49 = 2;
      v50 = 4;
      v7 = [v4 identifier];
      goto LABEL_24;
    }

    v49 = 2;
    v50 = 4;
    v35 = [v4 identifier];
    goto LABEL_28;
  }

  v15 = (v1 + OBJC_IVAR____TtC7NewsUI233PuzzleArchiveFilterCommandHandler_puzzleArchiveFilterOptionManager);
  v16 = *__swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC7NewsUI233PuzzleArchiveFilterCommandHandler_puzzleArchiveFilterOptionManager), *(v1 + OBJC_IVAR____TtC7NewsUI233PuzzleArchiveFilterCommandHandler_puzzleArchiveFilterOptionManager + 24));
  swift_beginAccess();
  v17 = *(v16 + 24);
  if (*(v17 + 16) && (sub_219BF7AA4(), MEMORY[0x21CECE850](1), v18 = sub_219BF7AE4(), v19 = -1 << *(v17 + 32), v20 = v18 & ~v19, ((*(v17 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) != 0))
  {
    v21 = ~v19;
    while (1)
    {
      v22 = *(v17 + 48) + 16 * v20;
      if (*(v22 + 8) >= 4u && *v22 == 0)
      {
        break;
      }

      v20 = (v20 + 1) & v21;
      if (((*(v17 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    __swift_project_boxed_opaque_existential_1(v15, v15[3]);
    LOBYTE(v48) = 4;
    LOBYTE(v46) = 4;
    v24 = [v4 identifier];
  }

  else
  {
LABEL_20:
    __swift_project_boxed_opaque_existential_1(v15, v15[3]);
    LOBYTE(v48) = 4;
    LOBYTE(v46) = 4;
    v24 = [v4 identifier];
  }

  v25 = v24;
  v26 = sub_219BF5414();
  v28 = v27;

  sub_21957ABF0(&v47, &v45, v26, v28);
LABEL_30:

  return result;
}

uint64_t sub_219250B48()
{
  v1 = v0;
  v2 = sub_219BDD0A4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = (&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v0 + 16);
  *v6 = 0x657069636572;
  v6[1] = 0xE600000000000000;
  (*(v3 + 104))(v6, *MEMORY[0x277CEAE48], v2, v4);
  sub_219BDD204();
  result = (*(v3 + 8))(v6, v2);
  if (*(v1 + 120))
  {
    v9 = *(v1 + 128);
    ObjectType = swift_getObjectType();
    v12 = *(v1 + 136);
    return (*(v9 + 8))(v7, &v12, ObjectType, v9);
  }

  return result;
}

void sub_219250CA4(uint64_t a1)
{
  sub_21925312C(0, &qword_27CC17FA0, MEMORY[0x277D6DA48]);
  v145 = v2;
  v141 = *(v2 - 8);
  v139 = *(v141 + 64);
  MEMORY[0x28223BE20](v2);
  v140 = &v118 - v3;
  v4 = MEMORY[0x277D83D88];
  sub_2192532F8(0, &unk_280EE87A0, MEMORY[0x277D2DAB8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v125 = &v118 - v6;
  v151 = a1;
  sub_2192532F8(0, &unk_280EE8380, MEMORY[0x277D2E6C8], v4);
  MEMORY[0x28223BE20](v7 - 8);
  v124 = &v118 - v8;
  v132 = sub_219BE16E4();
  v131 = *(v132 - 8);
  MEMORY[0x28223BE20](v132);
  v138 = &v118 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = sub_219BDF584();
  v129 = *(v130 - 8);
  MEMORY[0x28223BE20](v130);
  v137 = &v118 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219253098(0);
  v127 = v11;
  MEMORY[0x28223BE20](v11);
  v165 = &v118 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58D58(0);
  v153 = v13;
  MEMORY[0x28223BE20](v13);
  v123 = &v118 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218953FB4(0);
  v168 = v15;
  v147 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v143 = &v118 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21925312C(0, &qword_27CC0B180, MEMORY[0x277D6EC60]);
  v146 = v17;
  v150 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v135 = &v118 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v154 = (&v118 - v20);
  sub_2192531EC(0);
  MEMORY[0x28223BE20](v21 - 8);
  v142 = &v118 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v148 = &v118 - v24;
  v166 = sub_219BF0B74();
  v25 = *(v166 - 8);
  MEMORY[0x28223BE20](v166);
  v163 = &v118 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v29 = &v118 - v28;
  sub_218C40320(0);
  v31 = v30;
  v149 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v128 = &v118 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v35 = &v118 - v34;
  v126 = type metadata accessor for MyRecipesModel(0);
  MEMORY[0x28223BE20](v126);
  v162 = &v118 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v39 = &v118 - v38;
  sub_2189F1E48(0);
  v41 = v40;
  v42 = *(v40 - 1);
  MEMORY[0x28223BE20](v40);
  v160 = &v118 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v161 = &v118 - v45;
  MEMORY[0x28223BE20](v46);
  v48 = &v118 - v47;
  sub_219BE7564();
  sub_219BE5FC4();
  v120 = v42;
  v49 = *(v42 + 8);
  v49(v48, v41);
  v156 = *(v149 + 32);
  v157 = v149 + 32;
  v156(v35, v39, v31);
  v167 = v31;
  v136 = v35;
  sub_219BF07D4();
  v50 = sub_219BF0B44();
  v51 = *(v25 + 8);
  v164 = v25 + 8;
  v155 = v51;
  v51(v29, v166);
  __swift_project_boxed_opaque_existential_1(v152 + 5, v152[8]);
  v144 = v50;
  v52 = [v50 identifier];
  sub_219BF5414();

  v53 = v145;
  v134 = sub_219BF4774();

  v54 = v154;
  sub_219BE7594();
  v55 = v161;
  sub_219BE7564();
  sub_219BE5F84();
  v161 = v41;
  v56 = v41;
  v57 = v142;
  v158 = v49;
  v159 = v42 + 8;
  v49(v55, v56);
  v58 = v148;
  v59 = v146;
  v60 = v54;
  sub_219BEB244();
  v61 = v150;
  v62 = v147;

  v65 = *(v61 + 8);
  v63 = v61 + 8;
  v64 = v65;
  v65(v60, v59);
  v133 = swift_allocBox();
  v67 = v66;
  v68 = sub_219BE16D4();
  v69 = *(v68 - 8);
  v122 = *(v69 + 56);
  v121 = v69 + 56;
  v122(v67, 1, 1, v68);
  sub_21925335C(v58, v57, sub_2192531EC);
  v70 = v168;
  if ((*(v62 + 48))(v57, 1) == 1)
  {
    v71 = v53;
    sub_2192533C4(v57, sub_2192531EC);
    v72 = v152;
    v73 = v151;
    v74 = v141;
LABEL_12:
    v97 = v140;
    v98 = v71;
    (*(v74 + 16))(v140, v73, v71);
    v99 = (*(v74 + 80) + 16) & ~*(v74 + 80);
    v100 = (v139 + v99 + 7) & 0xFFFFFFFFFFFFFFF8;
    v101 = swift_allocObject();
    (*(v74 + 32))(v101 + v99, v97, v98);
    v102 = v144;
    *(v101 + v100) = v144;
    v103 = v101 + ((v100 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v103 = v72;
    *(v103 + 8) = v134 & 1;
    *(v101 + ((v100 + 31) & 0xFFFFFFFFFFFFFFF8)) = v133;
    v104 = v102;

    sub_219BDD154();

    sub_2192533C4(v148, sub_2192531EC);
    (*(v149 + 8))(v136, v167);

    return;
  }

  v118 = v68;
  v119 = v67;
  v75 = v143;
  (*(v62 + 32))(v143, v57, v70);
  v150 = v63;
  sub_219BE7594();

  swift_unknownObjectRelease();
  __swift_project_boxed_opaque_existential_1(v152 + 10, v152[13]);
  sub_219BE6944();
  v76 = v154;
  sub_219BE7594();
  sub_21895406C();
  sub_219253424(&qword_27CC1AE10, type metadata accessor for MyRecipesModel, &unk_219C898C8);
  v142 = sub_219BF00E4();
  v77 = v168;

  v126 = v64;
  v64(v76, v146);
  v78 = v165;
  (*(v147 + 16))(v165, v75, v77);
  v79 = *(v127 + 36);
  sub_219253424(&qword_27CC17FB0, sub_218953FB4, MEMORY[0x277D6D730]);
  sub_219BF5DF4();
  v80 = v78;
  sub_219BF5E84();
  v81 = MEMORY[0x277D84F90];
  v82 = v167;
  v83 = v128;
  if (*&v78[v79] != v169)
  {
    v154 = (v120 + 16);
    v153 = (v149 + 8);
    do
    {
      v105 = sub_219BF5EC4();
      v107 = v160;
      v106 = v161;
      (*v154)(v160);
      v105(&v169, 0);
      sub_219BF5E94();
      v108 = v162;
      sub_219BE5FC4();
      v158(v107, v106);
      v156(v83, v108, v82);
      v109 = v163;
      sub_219BF07D4();
      v110 = sub_219BF0B44();
      v155(v109, v166);
      v111 = [v110 identifier];

      v112 = sub_219BF5414();
      v114 = v113;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v81 = sub_218840D24(0, *(v81 + 2) + 1, 1, v81);
      }

      v116 = *(v81 + 2);
      v115 = *(v81 + 3);
      if (v116 >= v115 >> 1)
      {
        v81 = sub_218840D24((v115 > 1), v116 + 1, 1, v81);
      }

      v82 = v167;
      (*v153)(v83, v167);
      *(v81 + 2) = v116 + 1;
      v117 = &v81[16 * v116];
      *(v117 + 4) = v112;
      *(v117 + 5) = v114;
      v80 = v165;
      v77 = v168;
      sub_219BF5E84();
    }

    while (*(v80 + v79) != v169);
  }

  sub_2192533C4(v80, sub_219253098);
  (*(v129 + 104))(v137, *MEMORY[0x277D2DB58], v130);
  v84 = v143;
  sub_219BE6934();
  v85 = *(v169 + OBJC_IVAR____TtC7NewsUI215MyRecipesConfig_dataSource);

  v86 = MEMORY[0x277D2F610];
  if (!v85)
  {
    v86 = MEMORY[0x277D2F7B8];
  }

  (*(v131 + 104))(v138, *v86, v132);
  sub_219BE6944();
  v88 = v87;
  sub_219BF5DF4();
  sub_219BF5E84();
  v89 = sub_219BF5E74();
  if (v89 > 0x7FFFFFFF)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v142 < 0xFFFFFFFF80000000 || v89 < 0xFFFFFFFF80000000)
  {
    goto LABEL_20;
  }

  v71 = v145;
  if (v142 <= 0x7FFFFFFF)
  {
    sub_219BE6934();

    v166 = v88;
    v90 = *MEMORY[0x277D2E6B0];
    v91 = sub_219BE0674();
    v92 = *(v91 - 8);
    v93 = v77;
    v94 = v124;
    (*(v92 + 104))(v124, v90, v91);
    (*(v92 + 56))(v94, 0, 1, v91);
    v95 = sub_219BDF474();
    (*(*(v95 - 8) + 56))(v125, 1, 1, v95);
    v96 = v123;
    sub_219BE15E4();
    v126(v135, v146);
    (*(v147 + 8))(v84, v93);
    v122(v96, 0, 1, v118);
    sub_218B58ECC(v96, v119);
    v72 = v152;
    v74 = v141;
    v73 = v151;
    goto LABEL_12;
  }

LABEL_21:
  __break(1u);
}

uint64_t sub_219252068(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, int a5, uint64_t a6)
{
  v105 = a5;
  v110 = a4;
  v114 = a3;
  v8 = sub_219BDBD34();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58D58(0);
  MEMORY[0x28223BE20](v12 - 8);
  v106 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_219BE16D4();
  v107 = *(v14 - 8);
  v108 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_219BDF8A4();
  v103 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v102 = &v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_219BE09E4();
  v99 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v98 = &v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_219BDF104();
  v95 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v94 = &v79 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_219BEF9C4();
  v89 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v88 = &v79 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_219BDFFE4();
  v92 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v91 = &v79 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_219BDEFE4();
  v86 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v85 = &v79 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_219BDFCE4();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v79 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = swift_projectBox();
  sub_21925312C(0, &qword_27CC17FA0, MEMORY[0x277D6DA48]);
  v28 = v27;
  sub_219253424(&qword_27CC17FC0, type metadata accessor for MyRecipesModel, &unk_219C89A60);
  v101 = v28;
  result = sub_219BE75B4();
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v80 = v16;
  v81 = v11;
  v82 = a2;
  v83 = v9;
  v84 = v8;
  sub_219BDFCD4();
  sub_2192532F8(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v115 = v30;
  v31 = sub_219BDCD44();
  v32 = *(v31 - 8);
  v33 = *(v32 + 72);
  v117 = *(v32 + 80);
  v118 = v33;
  v34 = v32;
  v35 = (v117 + 32) & ~v117;
  v36 = swift_allocObject();
  v121 = xmmword_219C09BA0;
  *(v36 + 16) = xmmword_219C09BA0;
  v120 = *MEMORY[0x277CEAD18];
  v112 = *(v34 + 104);
  v113 = v34 + 104;
  v116 = v31;
  v112(v36 + v35);
  v119 = "bserver";
  sub_219253424(&unk_280EE8590, MEMORY[0x277D2E058], MEMORY[0x277D2E050]);
  sub_219BDCCC4();

  (*(v24 + 8))(v26, v23);
  v37 = v114;
  v38 = [v114 identifier];
  sub_219BF5414();

  [v37 isPaid];
  v39 = [v37 totalTime];
  sub_219BF5414();

  v40 = v85;
  v109 = a1;
  sub_219BDEFB4();
  v111 = v35;
  v41 = swift_allocObject();
  *(v41 + 16) = v121;
  v42 = v120;
  v43 = v31;
  v44 = v112;
  (v112)(v41 + v35, v120, v43);
  sub_219253424(&qword_280EE8900, MEMORY[0x277D2D798], MEMORY[0x277D2D790]);
  v45 = v87;
  sub_219BDCCC4();

  (*(v86 + 8))(v40, v45);
  v46 = v89;
  v47 = v88;
  v48 = v90;
  (*(v89 + 104))(v88, *MEMORY[0x277D32840], v90);
  v49 = v91;
  v50 = v114;
  sub_219BE02B4();
  (*(v46 + 8))(v47, v48);
  v51 = v111;
  v52 = swift_allocObject();
  *(v52 + 16) = v121;
  v53 = v116;
  v44(v52 + v51, v42, v116);
  sub_219253424(&unk_280EE84E0, MEMORY[0x277D2E2C0], MEMORY[0x277D2E2B8]);
  v54 = v93;
  sub_219BDCCC4();

  (*(v92 + 8))(v49, v54);
  v110 = *(v110 + 32);
  v55 = [v50 sourceChannel];
  v56 = v94;
  sub_219BE01F4();
  swift_unknownObjectRelease();
  v57 = v111;
  v58 = swift_allocObject();
  *(v58 + 16) = v121;
  v59 = v112;
  (v112)(v58 + v57, v120, v53);
  sub_219253424(&unk_280EE8890, MEMORY[0x277D2D8B8], MEMORY[0x277D2D8B0]);
  v60 = v96;
  sub_219BDCCC4();

  (*(v95 + 8))(v56, v60);
  v61 = [v114 sourceChannel];
  v62 = v98;
  sub_219BE01E4();
  swift_unknownObjectRelease();
  v63 = swift_allocObject();
  *(v63 + 16) = v121;
  (v59)(v63 + v57, v120, v116);
  sub_219253424(&qword_280EE8270, MEMORY[0x277D2E9C0], MEMORY[0x277D2E9B8]);
  v64 = v100;
  sub_219BDCCC4();

  (*(v99 + 8))(v62, v64);
  v65 = v102;
  sub_219BDF894();
  v66 = swift_allocObject();
  *(v66 + 16) = v121;
  (v59)(v66 + v57, v120, v116);
  sub_219253424(&qword_280EE8640, MEMORY[0x277D2DE40], MEMORY[0x277D2DE38]);
  v67 = v104;
  sub_219BDCCC4();

  (*(v103 + 8))(v65, v67);
  v68 = v97;
  swift_beginAccess();
  v69 = v68;
  v70 = v106;
  sub_21925335C(v69, v106, sub_218B58D58);
  v72 = v107;
  v71 = v108;
  if ((*(v107 + 48))(v70, 1, v108) == 1)
  {
    sub_2192533C4(v70, sub_218B58D58);
  }

  else
  {
    v73 = v80;
    (*(v72 + 32))(v80, v70, v71);
    v74 = v111;
    v75 = swift_allocObject();
    *(v75 + 16) = v121;
    (v112)(v75 + v74, v120, v116);
    sub_219253424(&unk_280EE7FB0, MEMORY[0x277D2F590], MEMORY[0x277D2F588]);
    sub_219BDCCC4();

    (*(v72 + 8))(v73, v71);
  }

  sub_219BE04C4();
  v76 = v81;
  sub_219BE75A4();
  sub_219253424(&unk_280EE83D0, MEMORY[0x277D2E570], MEMORY[0x277D2E568]);
  sub_219BDCC64();
  v77 = *(v83 + 8);
  v78 = v84;
  v77(v76, v84);
  sub_219BE7574();
  sub_219BDCC74();
  return (v77)(v76, v78);
}

uint64_t sub_219253014()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 40));
  __swift_destroy_boxed_opaque_existential_1((v0 + 80));
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_219253098(uint64_t a1)
{
  if (!qword_27CC17FA8)
  {
    sub_218953FB4(255);
    sub_219253424(&qword_27CC17FB0, sub_218953FB4, MEMORY[0x277D6D730]);
    v1 = sub_219BF7494();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC17FA8);
    }
  }
}

void sub_21925312C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for MyRecipesSectionDescriptor;
    v8[1] = type metadata accessor for MyRecipesModel(255);
    v8[2] = sub_21895406C();
    v8[3] = sub_219253424(&qword_27CC1AE10, type metadata accessor for MyRecipesModel, &unk_219C898C8);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_219253220(uint64_t a1)
{
  sub_21925312C(0, &qword_27CC17FA0, MEMORY[0x277D6DA48]);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + v6);
  v8 = v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = *(v1 + ((v6 + 31) & 0xFFFFFFFFFFFFFFF8));

  return sub_219252068(a1, v1 + v5, v7, v9, v10, v11);
}

void sub_2192532F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_21925335C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2192533C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_219253424(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21925346C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for SpotlightTodayFeedGroupConfigData(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v42 - v8;
  LOBYTE(v48) = 13;
  sub_2189AE994(0);
  v45 = sub_219BEE964();
  sub_2186D8BE0(0, &unk_280E8B8C0, sub_218D907D4, MEMORY[0x277D84560]);
  sub_218D907D4(0);
  v47 = v10;
  v11 = *(v10 - 8);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v43 = *(v11 + 72);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_219C09EC0;
  v44 = v13;
  v46 = (v13 + v12);
  v14 = OBJC_IVAR____TtC7NewsUI230SpotlightTodayFeedGroupEmitter_config;
  sub_2186E0878(0);
  v42[2] = v14;
  v42[3] = v2;
  v42[1] = v15;
  sub_219BEDD14();
  v16 = sub_219BF1784();
  v18 = v17;
  v19 = sub_219BF1934();
  v20 = *(*(v19 - 8) + 8);
  v20(v9, v19);
  v42[0] = a1;
  if (!v18)
  {
    sub_219BEF0B4();
    v21 = *(v48 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_appConfig);
    swift_unknownObjectRetain();

    v22 = [v21 editorialChannelID];
    swift_unknownObjectRelease();
    if (v22)
    {
      v16 = sub_219BF5414();
      v18 = v23;
    }

    else
    {
      v16 = 0;
      v18 = 0;
    }
  }

  v24 = swift_allocObject();
  *(v24 + 16) = v16;
  *(v24 + 24) = v18;
  sub_218D90870(0);
  swift_allocObject();

  v25 = sub_219BEFB94();
  v27 = v46;
  v26 = v47;
  *v46 = v25;
  v28 = *MEMORY[0x277D32308];
  v29 = *(v11 + 104);
  v29(v27, v28, v26);

  sub_219BEDD14();
  v30 = sub_219BF1784();
  v32 = v31;
  v20(v6, v19);
  if (!v32)
  {
    sub_219BEF0B4();
    v33 = *(v48 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_appConfig);
    swift_unknownObjectRetain();

    v34 = [v33 editorialChannelID];
    swift_unknownObjectRelease();
    if (v34)
    {
      v30 = sub_219BF5414();
      v32 = v35;
    }

    else
    {
      v30 = 0;
      v32 = 0;
    }
  }

  v36 = swift_allocObject();
  *(v36 + 16) = v30;
  *(v36 + 24) = v32;
  swift_allocObject();

  v37 = sub_219BEFB94();
  v38 = v43;
  v40 = v46;
  v39 = v47;
  *(v46 + v43) = v37;
  v29((v40 + v38), v28, v39);

  v48 = v45;
  sub_2191EE478(v44);
  return v48;
}

uint64_t sub_219253910(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v5 = sub_219BEE6F4();
  v3[5] = v5;
  v3[6] = *(v5 - 8);
  v3[7] = swift_task_alloc();
  v6 = sub_219BF1904();
  v3[8] = v6;
  v3[9] = *(v6 - 8);
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v7 = swift_task_alloc();
  v3[13] = v7;
  *v7 = v3;
  v7[1] = sub_219253A84;

  return sub_219253EF8(a2);
}

uint64_t sub_219253A84(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 112) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_219253BEC, 0, 0);
  }
}

uint64_t sub_219253BEC(double a1)
{
  v2 = v1[12];
  v3 = v1[8];
  v4 = v1[9];
  sub_219BF2734();
  v5 = sub_219BF18D4();
  v6 = *(v4 + 8);
  v6(v2, v3);
  if (v5 >> 62)
  {
    v14 = sub_219BF7214();

    if (v14)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v7)
    {
LABEL_3:
      v20 = v6;
      v8 = v1[10];
      v9 = v1[11];
      v10 = v1[7];
      v12 = v1[5];
      v11 = v1[6];
      v19 = v1[8];
      v18 = v1[2];
      __swift_project_boxed_opaque_existential_1((v1[4] + OBJC_IVAR____TtC7NewsUI230SpotlightTodayFeedGroupEmitter_personalizationService), *(v1[4] + OBJC_IVAR____TtC7NewsUI230SpotlightTodayFeedGroupEmitter_personalizationService + 24));
      sub_219BF2734();
      (*(v11 + 104))(v10, *MEMORY[0x277D320E0], v12);
      sub_219BF0064();
      (*(v11 + 8))(v10, v12);
      v20(v8, v19);
      sub_219255010(v9, v18);

      v20(v9, v19);
      sub_218B8B124(0);
      swift_storeEnumTagMultiPayload();

      v13 = v1[1];
      goto LABEL_6;
    }
  }

  v15 = sub_219BEEDD4();
  sub_219255870(&qword_280E917E0, MEMORY[0x277D32430], MEMORY[0x277D32438]);
  swift_allocError();
  (*(*(v15 - 8) + 104))(v16, *MEMORY[0x277D323A8], v15);
  swift_willThrow();

  v13 = v1[1];
LABEL_6:

  return v13();
}

uint64_t sub_219253EF8(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = MEMORY[0x277D83D88];
  sub_2186D8BE0(0, &qword_280E90380, MEMORY[0x277D339F0], MEMORY[0x277D83D88]);
  v2[10] = swift_task_alloc();
  sub_2186D8BE0(0, &qword_280E90150, MEMORY[0x277D33EC8], v3);
  v2[11] = swift_task_alloc();
  sub_2186D8BE0(0, &unk_280E91A10, sub_2189AE994, v3);
  v2[12] = swift_task_alloc();
  v4 = sub_219BF2AB4();
  v2[13] = v4;
  v2[14] = *(v4 - 8);
  v2[15] = swift_task_alloc();
  v5 = sub_219BF2034();
  v2[16] = v5;
  v2[17] = *(v5 - 8);
  v2[18] = swift_task_alloc();
  sub_218A89A94(0);
  v2[19] = swift_task_alloc();
  sub_2186FE720(0);
  v2[20] = swift_task_alloc();
  v6 = sub_219BF1934();
  v2[21] = v6;
  v2[22] = *(v6 - 8);
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  sub_218DEC070(0);
  v2[25] = v7;
  v2[26] = *(v7 - 8);
  v2[27] = swift_task_alloc();
  type metadata accessor for SpotlightTodayFeedGroupConfigData(0);
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21925426C, 0, 0);
}

uint64_t sub_21925426C()
{
  v1 = v0[30];
  v2 = v0[26];
  v4 = v0[21];
  v3 = v0[22];
  sub_2186E0878(0);
  sub_219BEDD14();
  v5 = sub_219BF1704();
  v7 = v6;
  v8 = *(v3 + 1);
  v0[31] = v8;
  v0[32] = ((v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
  v59 = v0;
  v58 = v8;
  v8(v1, v4);
  MEMORY[0x21CECC330](v5, v7);

  v9 = sub_219BEF184();
  v10 = 0;
  v11 = *(v9 + 16);
  v12 = (v2 + 8);
  while (v11 != v10)
  {
    if (v10 >= *(v9 + 16))
    {
      __break(1u);
LABEL_22:
      swift_once();
      goto LABEL_18;
    }

    (*(v2 + 2))(v0[27], v9 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 9) * v10, v0[25]);
    v13 = sub_219BEDC34();
    v15 = v0[27];
    v16 = v0[25];
    if (v13 == 0x6867696C746F7073 && v14 == 0xEA00000000002D74)
    {

      (*v12)(v15, v16);
LABEL_14:

      v29 = sub_219BEEDD4();
      sub_219255870(&qword_280E917E0, MEMORY[0x277D32430], MEMORY[0x277D32438]);
      swift_allocError();
      *v30 = 0x6867696C746F7073;
      v30[1] = 0xEA00000000002D74;
      (*(*(v29 - 8) + 104))(v30, *MEMORY[0x277D32380], v29);
      swift_willThrow();

      v31 = v0[1];

      return v31();
    }

    ++v10;
    v18 = sub_219BF78F4();

    (*v12)(v15, v16);
    if (v18)
    {
      goto LABEL_14;
    }
  }

  v20 = v0[28];
  v19 = v0[29];
  v21 = v0[22];
  v22 = v59[23];
  v23 = v59[21];
  v24 = v59[9];

  sub_218718690(v24 + OBJC_IVAR____TtC7NewsUI230SpotlightTodayFeedGroupEmitter_formatService, (v59 + 2));
  v54 = v59[6];
  v55 = v59[5];
  __swift_project_boxed_opaque_existential_1(v59 + 2, v55);
  sub_219BEDD14();
  (*(v21 + 4))(v22, v19, v23);
  sub_219BEDD14();
  sub_219BF1784();
  v26 = v25;
  v58(v20, v23);
  if (!v26)
  {
    sub_219BEF0B4();
    v27 = *(v59[7] + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_appConfig);
    swift_unknownObjectRetain();

    v28 = [v27 editorialChannelID];
    swift_unknownObjectRelease();
    if (v28)
    {
      sub_219BF5414();
    }
  }

  v33 = v59[23];
  v34 = v59[20];
  v35 = v59[19];
  v51 = v59[21];
  v57 = v59[10];
  v52 = v59[9];
  v53 = v59[12];
  v56 = v59[11];
  v36 = sub_219BEC004();
  v37 = *(*(v36 - 8) + 56);
  v37(v34, 1, 1, v36);
  sub_218A42400(0);
  (*(*(v38 - 8) + 56))(v35, 1, 1, v38);
  sub_219BF1764();

  sub_219255F28(v35, sub_218A89A94);
  sub_219255F28(v34, sub_2186FE720);
  v58(v33, v51);
  v37(v34, 1, 1, v36);
  v39 = MEMORY[0x277D84F90];
  sub_219A95188(MEMORY[0x277D84F90]);
  sub_219A95188(v39);
  sub_219A951A0(v39);
  sub_219A951B8(v39);
  sub_219A952CC(v39);
  sub_219A952E4(v39);
  sub_219A953F8(v39);
  v12 = v59;
  sub_219BF2024();
  v40 = OBJC_IVAR____TtC7NewsUI230SpotlightTodayFeedGroupEmitter_knobs;
  sub_2189AE994(0);
  v42 = v41;
  v43 = *(v41 - 8);
  (*(v43 + 16))(v53, v52 + v40, v41);
  (*(v43 + 56))(v53, 0, 1, v42);
  v44 = sub_219BF35D4();
  (*(*(v44 - 8) + 56))(v56, 1, 1, v44);
  *(v59 + 288) = 13;
  sub_218D451AC(0);
  swift_allocObject();

  sub_219BF38D4();
  v45 = sub_219BF2774();
  (*(*(v45 - 8) + 56))(v57, 1, 1, v45);
  v46 = qword_280E8D7A0;
  *MEMORY[0x277D30BC8];
  if (v46 != -1)
  {
    goto LABEL_22;
  }

LABEL_18:
  qword_280F616D8;
  sub_219BF2A84();
  v47 = swift_task_alloc();
  v12[33] = v47;
  *v47 = v12;
  *(v47 + 1) = sub_219254B5C;
  v48 = v12[18];
  v49 = v12[15];
  v50 = v12[24];

  return MEMORY[0x2821921B8](v50, v48, v49, v55, v54);
}

uint64_t sub_219254B5C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 136);
  v5 = *(*v2 + 112);
  v3[34] = v1;

  v6 = (v5 + 8);
  v7 = (v4 + 8);
  v17 = v3[31];
  v8 = v3[24];
  v9 = v3[21];
  v10 = v3[18];
  v11 = v3[16];
  v12 = v3[15];
  v13 = v3[13];
  if (v1)
  {
    (*v6)(v12, v13);
    (*v7)(v10, v11);
    v17(v8, v9);
    v14 = sub_219254EFC;
  }

  else
  {
    v3[35] = a1;
    (*v6)(v12, v13);
    (*v7)(v10, v11);
    v17(v8, v9);
    v14 = sub_219254DE4;
  }

  return MEMORY[0x2822009F8](v14, 0, 0);
}

uint64_t sub_219254DE4()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v1 = v0[1];
  v2 = v0[35];

  return v1(v2);
}

uint64_t sub_219254EFC()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_219255010@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v22 = a3;
  sub_2186D8BE0(0, &unk_280E91B60, MEMORY[0x277D32040], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v21 = v19 - v5;
  v6 = sub_219BEF554();
  MEMORY[0x28223BE20](v6 - 8);
  MEMORY[0x28223BE20](v7);
  v8 = sub_219BF1904();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_219BED8D4();
  v12 = *(v20 - 8);
  v13 = MEMORY[0x28223BE20](v20);
  v15 = v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v11, a1, v8, v13);
  sub_2186E0878(0);
  v16 = sub_219BEDCB4();
  v19[1] = v17;
  v19[2] = v16;
  sub_219BEDCC4();
  sub_219BEDCC4();
  sub_2189AE994(0);
  sub_219BEE9B4();
  sub_219BEE984();
  sub_219BEE9D4();
  type metadata accessor for SpotlightTodayFeedGroupKnobs(0);
  sub_2189AE9B4(0);
  sub_219BEEC84();
  sub_219BED854();
  (*(v12 + 32))(v22, v15, v20);
  type metadata accessor for TodayFeedGroup(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_219255398(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  sub_218D3BC60(0);
  v3[6] = swift_task_alloc();
  v4 = type metadata accessor for TodayFeedGroup(0);
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_219255488, 0, 0);
}

uint64_t sub_219255488()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 48);
  sub_218D3BC94(0);
  v5 = v4;
  sub_219BEFDA4();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_219255F28(*(v0 + 48), sub_218D3BC60);
  }

  else
  {
    sub_218D90770(*(v0 + 48), *(v0 + 72));
    sub_219BEF164();
    v8 = *(v0 + 72);
    v10 = sub_21899D954(*(v0 + 16));

    sub_219255F28(v8, type metadata accessor for TodayFeedGroup);
    if (v10)
    {
      sub_219255F88(*(v0 + 40), *(v0 + 24), sub_218D3BC94);
      v6 = 0;
      goto LABEL_4;
    }
  }

  v6 = 1;
LABEL_4:
  (*(*(v5 - 8) + 56))(*(v0 + 24), v6, 1, v5);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_219255664()
{
  v1 = OBJC_IVAR____TtC7NewsUI230SpotlightTodayFeedGroupEmitter_config;
  sub_2186E0878(0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_219255F28(v0 + OBJC_IVAR____TtC7NewsUI230SpotlightTodayFeedGroupEmitter_knobs, type metadata accessor for SpotlightTodayFeedGroupKnobs);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC7NewsUI230SpotlightTodayFeedGroupEmitter_formatService));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC7NewsUI230SpotlightTodayFeedGroupEmitter_personalizationService));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SpotlightTodayFeedGroupEmitter(uint64_t a1)
{
  result = qword_280EAADA8;
  if (!qword_280EAADA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_219255798(uint64_t a1)
{
  sub_2186E0878(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for SpotlightTodayFeedGroupKnobs(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_219255870(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2192558B8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2187609C8;

  return sub_219253910(a1, a2);
}

uint64_t sub_219255964(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2187608D4;

  return sub_219255398(a1, a2, a3);
}

uint64_t sub_219255A14@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC7NewsUI230SpotlightTodayFeedGroupEmitter_config;
  sub_2186E0878(0);
  (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
  type metadata accessor for TodayFeedGroupConfig(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_219255AA8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC7NewsUI230SpotlightTodayFeedGroupEmitter_knobs;
  a1[3] = type metadata accessor for SpotlightTodayFeedGroupKnobs(0);
  a1[4] = sub_219255870(&qword_280EB23A0, type metadata accessor for SpotlightTodayFeedGroupKnobs, &unk_219C0F140);
  a1[5] = sub_219255870(&qword_280EB23A8, type metadata accessor for SpotlightTodayFeedGroupKnobs, &unk_219C0F168);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_219255F88(v3 + v4, boxed_opaque_existential_1, type metadata accessor for SpotlightTodayFeedGroupKnobs);
}

uint64_t sub_219255BD0@<X0>(uint64_t *a2@<X8>)
{
  sub_2186D8BE0(0, &qword_280E8B6A0, sub_2188317B0, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  sub_2186E0878(0);
  v4 = sub_219BEDCA4();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v4;
  *(inited + 56) = v5;
  sub_218831A70(inited);
  swift_setDeallocating();
  sub_219255F28(inited + 32, sub_2188317B0);
  sub_219255FF0(0);
  a2[3] = v6;
  a2[4] = sub_219255870(&qword_280EE7848, sub_219255FF0, MEMORY[0x277D6CC28]);
  __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_219BE2334();
}

uint64_t sub_219255D54(uint64_t a1)
{
  sub_219255870(&qword_280EAADC0, type metadata accessor for SpotlightTodayFeedGroupEmitter, &unk_219C69680);

  return sub_219BE2324();
}

uint64_t sub_219255F28(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_219255F88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_219256024@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v121 = a2;
  v5 = sub_219BE4584();
  v107 = *(v5 - 8);
  v108 = v5;
  MEMORY[0x28223BE20](v5);
  v97 = &v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v96 = &v91 - v8;
  v101 = sub_219BE3C44();
  v100 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v99 = &v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BDB954();
  v104 = *(v10 - 8);
  v105 = v10;
  MEMORY[0x28223BE20](v10);
  v103 = &v91 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v102 = &v91 - v13;
  sub_219258194(0);
  MEMORY[0x28223BE20](v14 - 8);
  v98 = &v91 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v106 = &v91 - v17;
  v18 = sub_219BF1364();
  v109 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v91 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v91 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v91 - v25;
  v27 = type metadata accessor for MastheadPaywallConfiguration(0);
  v113 = *(v27 - 8);
  v114 = v27;
  MEMORY[0x28223BE20](v27);
  v29 = (&v91 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = *a1;
  v31 = a1[2];
  v32 = a1[3];
  v115 = a1[1];
  v116 = v31;
  v33 = a1[4];
  v34 = a1[5];
  v117 = v32;
  v118 = v33;
  v35 = a1[6];
  v36 = a1[7];
  v119 = v34;
  v120 = v35;
  v38 = a1[8];
  v37 = a1[9];
  v111 = v36;
  v112 = v38;
  v110 = v37;
  sub_219BDC8D4();
  sub_219BDC8B4();
  if (qword_280EE93A0 != -1)
  {
    swift_once();
  }

  if (v30)
  {

    sub_219BEF524();
  }

  v39 = sub_219BDC8C4();

  if (v39)
  {
    if (v115)
    {

      sub_219BEF524();

      v94 = v122;
      v93 = v123;
      if (v116)
      {
LABEL_8:

        sub_219BEF524();

        v92 = v122;
        v91 = v123;
        goto LABEL_12;
      }
    }

    else
    {
      type metadata accessor for Localized();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v44 = [objc_opt_self() bundleForClass_];
      v94 = sub_219BDB5E4();
      v93 = v45;

      if (v116)
      {
        goto LABEL_8;
      }
    }

    type metadata accessor for Localized();
    v46 = swift_getObjCClassFromMetadata();
    v47 = [objc_opt_self() bundleForClass_];
    v92 = sub_219BDB5E4();
    v91 = v48;

LABEL_12:
    v49 = v120;
    if (v117)
    {

      sub_219BEF524();

      v50 = sub_219BF1344();
      (*(v109 + 8))(v26, v18);
      if (v118)
      {
LABEL_14:

        sub_219BEF524();

        v51 = sub_219BF1344();
        (*(v109 + 8))(v23, v18);
        goto LABEL_17;
      }
    }

    else
    {
      v50 = 0;
      if (v118)
      {
        goto LABEL_14;
      }
    }

    v51 = 0;
LABEL_17:
    v95 = a3;
    if (v119)
    {

      sub_219BEF524();

      v52 = v122;
      v53 = v123;
      if (!v49)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v52 = 0;
      v53 = 0;
      if (!v49)
      {
LABEL_20:
        v54 = v93;
        *v29 = v94;
        v29[1] = v54;
        v55 = v91;
        v29[2] = v92;
        v29[3] = v55;
        v29[4] = v50;
        v29[5] = v51;
        v29[6] = v52;
        v29[7] = v53;
        v29[8] = v49;
        v56 = v110;
        if (v111)
        {

          sub_219BEF524();

          v58 = v122;
          v57 = v123;
          if (v112)
          {
            goto LABEL_22;
          }
        }

        else
        {
          v58 = 0;
          v57 = 0;
          if (v112)
          {
LABEL_22:

            sub_219BEF524();

            v59 = v122;
            v60 = v123;
            if (v56)
            {
LABEL_23:

              v61 = v103;
              v112 = v60;
              v62 = v58;
              v63 = v59;
              sub_219BEF524();

              v64 = v105;
              v65 = *(v104 + 32);
              v66 = v102;
              v65(v102, v61, v105);
              v67 = v106;
              v65(v106, v66, v64);
              v68 = *MEMORY[0x277D35070];
              v69 = sub_219BE4394();
              v70 = *(v69 - 8);
              (*(v70 + 104))(v67, v68, v69);
              v71 = v69;
              v59 = v63;
              v58 = v62;
              v60 = v112;
              (*(v70 + 56))(v67, 0, 1, v71);
              goto LABEL_29;
            }

LABEL_28:

            v72 = sub_219BE4394();
            v67 = v106;
            (*(*(v72 - 8) + 56))(v106, 1, 1, v72);
LABEL_29:
            a3 = v95;
            if (v57)
            {
              if (v58 == 0x656568536F6C736FLL && v57 == 0xE900000000000074 || (sub_219BF78F4() & 1) != 0)
              {

                v42 = v114;
                v73 = *(v114 + 20);
                (*(v100 + 104))(v99, *MEMORY[0x277D34CB8], v101);
                sub_2192583B4(v67, v98);
                sub_219BE4534();
                v74 = sub_219BF0BD4();
                (*(*(v74 - 8) + 8))(v121, v74);
                sub_2192582F4(v67);
                (*(v107 + 104))(v29 + v73, *MEMORY[0x277D35208], v108);
LABEL_55:
                sub_219258350(v29, a3);
                v41 = 0;
                return (*(v113 + 56))(a3, v41, 1, v42);
              }

              if (v58 == 0x7465656853736D61 && v57 == 0xE800000000000000 || (sub_219BF78F4() & 1) != 0)
              {

                v75 = sub_219BF0BD4();
                (*(*(v75 - 8) + 8))(v121, v75);
                sub_2192582F4(v67);
                v42 = v114;
                (*(v107 + 104))(v29 + *(v114 + 20), *MEMORY[0x277D35200], v108);
                goto LABEL_55;
              }

              if (v58 == 0x50676E69646E616CLL && v57 == 0xEB00000000656761)
              {

LABEL_42:
                if (v60)
                {
                  v77 = v59;
                }

                else
                {
                  v77 = 0;
                }

                v78 = 0xE000000000000000;
                if (v60)
                {
                  v78 = v60;
                }

                v79 = &v124;
LABEL_54:
                v80 = *(v79 - 32);
                *v80 = v77;
                *(v80 + 1) = v78;
                sub_2192581EC(0);
                v82 = *(v81 + 80);
                v83 = sub_219BF5414();
                v85 = v84;
                v86 = sub_219BF0BD4();
                (*(*(v86 - 8) + 8))(v121, v86);
                sub_2192582F4(v67);
                *(v80 + 2) = v83;
                *(v80 + 3) = v85;
                v87 = sub_219BE4394();
                *(v80 + 4) = 0;
                *(v80 + 5) = 0;
                (*(*(v87 - 8) + 56))(&v80[v82], 1, 1, v87);
                v89 = v107;
                v88 = v108;
                (*(v107 + 104))(v80, *MEMORY[0x277D351F8], v108);
                v42 = v114;
                (*(v89 + 32))(v29 + *(v114 + 20), v80, v88);
                goto LABEL_55;
              }

              v76 = sub_219BF78F4();

              if (v76)
              {
                goto LABEL_42;
              }
            }

            if (v60)
            {
              v77 = v59;
            }

            else
            {
              v77 = 0;
            }

            v78 = 0xE000000000000000;
            if (v60)
            {
              v78 = v60;
            }

            v79 = &v125;
            goto LABEL_54;
          }
        }

        v59 = 0;
        v60 = 0;
        if (v56)
        {
          goto LABEL_23;
        }

        goto LABEL_28;
      }
    }

    sub_219BEF524();

    v49 = sub_219BF1344();
    (*(v109 + 8))(v20, v18);
    goto LABEL_20;
  }

  v40 = sub_219BF0BD4();
  (*(*(v40 - 8) + 8))(v121, v40);

  v41 = 1;
  v42 = v114;
  return (*(v113 + 56))(a3, v41, 1, v42);
}

unint64_t sub_219256E48(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x7954746567726174;
    v6 = 0xD000000000000014;
    if (a1 != 8)
    {
      v6 = 0xD00000000000001ALL;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    if (a1 == 5)
    {
      v7 = 0x726F737365636361;
    }

    else
    {
      v7 = 0xD000000000000012;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x64656C62616E65;
    v2 = 0xD000000000000011;
    v3 = 0x6F436E6F74747562;
    if (a1 != 3)
    {
      v3 = 0x65546E6F74747562;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x65546E6F74747562;
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

uint64_t sub_219256FC0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_219257E4C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_219256FE8(uint64_t a1)
{
  v2 = sub_219257914();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219257024(uint64_t a1)
{
  v2 = sub_219257914();

  return MEMORY[0x2821FE720](a1, v2);
}

void MastheadPaywallConfigurationRuleValues.init(from:)(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_2192578B8(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219257914();
  sub_219BF7B34();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    sub_2186F95C4();
    LOBYTE(v27) = 0;
    sub_219257968(&qword_280E913F8, sub_2186F95C4, MEMORY[0x277D32620]);
    sub_219BF76E4();
    v26 = v32[0];
    sub_2190E9E64();
    LOBYTE(v27) = 1;
    v10 = sub_219257968(&qword_280E91428, sub_2190E9E64, MEMORY[0x277D32620]);
    sub_219BF76E4();
    v25 = v32[0];
    LOBYTE(v27) = 2;
    *(&v24 + 1) = 0;
    sub_219BF76E4();
    v21 = v10;
    v23 = v32[0];
    sub_2192579B0(0);
    LOBYTE(v27) = 3;
    v22 = sub_219257968(&qword_280E91438, sub_2192579B0, MEMORY[0x277D32620]);
    sub_219BF76E4();
    v20 = v32[0];
    LOBYTE(v27) = 4;
    sub_219BF76E4();
    *&v24 = v32[0];
    LOBYTE(v27) = 5;
    sub_219BF76E4();
    *(&v24 + 1) = v32[0];
    LOBYTE(v27) = 6;
    sub_219BF76E4();
    v22 = v32[0];
    LOBYTE(v27) = 7;
    v19[1] = 0;
    sub_219BF76E4();
    v19[0] = v32[0];
    LOBYTE(v27) = 8;
    sub_219BF76E4();
    v11 = v32[0];
    sub_219257AB4(0);
    v38[0] = 9;
    sub_219257968(&qword_280E91498, sub_219257AB4, MEMORY[0x277D32620]);
    sub_219BF76E4();
    (*(v7 + 8))(v9, v6);
    v21 = v39;
    v12 = v26;
    v13 = v25;
    *&v27 = v26;
    *(&v27 + 1) = v25;
    v14 = v23;
    v15 = v20;
    *&v28 = v23;
    *(&v28 + 1) = v20;
    v16 = v24;
    v29 = v24;
    *&v30 = v22;
    *(&v30 + 1) = v19[0];
    *&v31 = v11;
    *(&v31 + 1) = v39;
    v17 = v30;
    a2[2] = v24;
    a2[3] = v17;
    v18 = v28;
    *a2 = v27;
    a2[1] = v18;
    a2[4] = v31;
    sub_219257BB8(&v27, v32);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v32[0] = v12;
    v32[1] = v13;
    v32[2] = v14;
    v32[3] = v15;
    v33 = __PAIR128__(*(&v24 + 1), v16);
    v34 = v22;
    v35 = v19[0];
    v36 = v11;
    v37 = v21;
    sub_219257BF0(v32);
  }
}

void sub_2192578B8(uint64_t a1)
{
  if (!qword_280E8C790)
  {
    sub_219257914();
    v1 = sub_219BF7774();
    if (!v2)
    {
      atomic_store(v1, &qword_280E8C790);
    }
  }
}

unint64_t sub_219257914()
{
  result = qword_280E98380;
  if (!qword_280E98380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E98380);
  }

  return result;
}

uint64_t sub_219257968(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2192579B0(uint64_t a1)
{
  if (!qword_280E91430)
  {
    sub_219BF1364();
    v1 = MEMORY[0x277D332E8];
    sub_219257968(&qword_280E90918, MEMORY[0x277D332E8], MEMORY[0x277D33300]);
    sub_219257968(&unk_280E90928, v1, MEMORY[0x277D332F0]);
    sub_219257968(&qword_280E90920, v1, MEMORY[0x277D332F8]);
    v2 = sub_219BEF544();
    if (!v3)
    {
      atomic_store(v2, &qword_280E91430);
    }
  }
}

void sub_219257AB4(uint64_t a1)
{
  if (!qword_280E91490)
  {
    sub_219BDB954();
    v1 = MEMORY[0x277CC9260];
    sub_219257968(&unk_280EE9D10, MEMORY[0x277CC9260], MEMORY[0x277CC9280]);
    sub_219257968(&unk_280EE9D40, v1, MEMORY[0x277CC9268]);
    sub_219257968(&qword_280EE9D20, v1, MEMORY[0x277CC9278]);
    v2 = sub_219BEF544();
    if (!v3)
    {
      atomic_store(v2, &qword_280E91490);
    }
  }
}

uint64_t sub_219257C60(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 80))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_219257CBC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_219257D48()
{
  result = qword_27CC17FC8;
  if (!qword_27CC17FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC17FC8);
  }

  return result;
}

unint64_t sub_219257DA0()
{
  result = qword_280E98370;
  if (!qword_280E98370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E98370);
  }

  return result;
}

unint64_t sub_219257DF8()
{
  result = qword_280E98378;
  if (!qword_280E98378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E98378);
  }

  return result;
}

uint64_t sub_219257E4C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64656C62616E65 && a2 == 0xE700000000000000;
  if (v4 || (sub_219BF78F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65546E6F74747562 && a2 == 0xEA00000000007478 || (sub_219BF78F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000219D140E0 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F436E6F74747562 && a2 == 0xEB00000000726F6CLL || (sub_219BF78F4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x65546E6F74747562 && a2 == 0xEF726F6C6F437478 || (sub_219BF78F4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x726F737365636361 && a2 == 0xED00007478655479 || (sub_219BF78F4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000219D14100 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x7954746567726174 && a2 == 0xEA00000000006570 || (sub_219BF78F4() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000219D14120 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000219D14140 == a2)
  {

    return 9;
  }

  else
  {
    v6 = sub_219BF78F4();

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

void sub_219258194(uint64_t a1)
{
  if (!qword_280EE6350)
  {
    sub_219BE4394();
    v1 = sub_219BF6FB4();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE6350);
    }
  }
}

void sub_2192581EC(uint64_t a1)
{
  if (!qword_280E8F878)
  {
    MEMORY[0x28223BE20](a1);
    sub_2186E3374();
    sub_219258194(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_280E8F878);
    }
  }
}

uint64_t sub_2192582F4(uint64_t a1)
{
  sub_219258194(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_219258350(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MastheadPaywallConfiguration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2192583B4(uint64_t a1, uint64_t a2)
{
  sub_219258194(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_219258418@<D0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v156 = a3;
  v5 = sub_219BDCAA4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v140 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BE8034();
  v10 = type metadata accessor for MagazineFeedGroupTitleViewLayoutOptions(0);
  (*(v6 + 16))(v8, &a2[*(v10 + 28)], v5);
  v162 = sub_218DF08AC(v9, v8);
  v11 = *(a1 + 48);
  if (v11)
  {
    v12 = 30.0;
  }

  else
  {
    v12 = 0.0;
  }

  sub_219BE8004();
  v14 = v13;
  sub_219BE7FF4();
  sub_219BF6034();
  v16 = v14 - v15;
  sub_219BE8014();
  sub_219BF6034();
  v159 = v16 - v17;
  v18 = v16 - v17 - v12;
  v19 = *(a1 + 24);
  v161 = v11;
  if (v19)
  {
    v164 = v19;
  }

  else
  {
    v164 = [objc_opt_self() labelColor];
  }

  v20 = *(a1 + 8);
  v163 = *a1;
  v157 = v20;
  v160 = v10;
  v166 = *(v10 + 36);
  *&v21 = COERCE_DOUBLE(sub_219BF0CD4());
  v151 = a1;
  v154 = *&v21;
  v22 = sub_2186C6148(0, &qword_280E8DB00, 0x277D74300);
  x = *MEMORY[0x277D76A08];
  v23 = v19;
  v24 = v22;
  v150 = v22;
  v25 = sub_219BF6BD4();
  v26 = sub_219BF6BE4();

  v27 = sub_219BF0CB4();
  v28 = [objc_allocWithZone(MEMORY[0x277D74240]) init];
  LODWORD(v29) = 1036831949;
  [v28 setHyphenationFactor_];
  v30 = sub_219BF53D4();
  v31 = v27;
  [v27 ts:v30 tightenedLineSpacingForString:?];
  v33 = v32;

  [v28 setLineSpacing_];
  [v28 setAlignment_];
  sub_21899E550(0);
  v142 = v34;
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C0B8C0;
  v36 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  *(inited + 40) = v27;
  v37 = a2;
  v38 = *MEMORY[0x277D740C0];
  *(inited + 64) = v24;
  *(inited + 72) = v38;
  v39 = sub_2186C6148(0, &qword_280E8DA80, 0x277D75348);
  v40 = v164;
  *(inited + 80) = v164;
  v41 = *MEMORY[0x277D74118];
  v147 = v39;
  *(inited + 104) = v39;
  *(inited + 112) = v41;
  *(inited + 144) = sub_2186C6148(0, &qword_280E8DED8, 0x277D74240);
  *(inited + 120) = v28;
  v141 = v36;
  v155 = COERCE_DOUBLE(v31);
  v146 = v38;
  v158 = v40;
  v42 = v41;
  v43 = v28;
  sub_2188195F4(inited);
  swift_setDeallocating();
  sub_218819588(0);
  v145 = v44;
  swift_arrayDestroy();
  v45 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v46 = sub_219BF53D4();
  type metadata accessor for Key(0);
  v48 = v47;
  v143 = sub_21899E604();
  v144 = v48;
  v49 = sub_219BF5204();

  v50 = [v45 initWithString:v46 attributes:v49];

  v157 = v50;
  v51 = v18;
  [v50 boundingRectWithSize:33 options:0 context:{v18, 1.79769313e308}];
  v152 = v53;
  v153 = v52;
  v155 = v54;
  v163 = v55;
  v56 = v150;
  v57 = sub_219BF6BD4();
  v58 = sub_219BF6BE4();

  v164 = v37;
  v59 = sub_219BF0CB4();

  [v59 descender];
  v148 = v60;

  v61 = __swift_project_boxed_opaque_existential_1((*&MaxY + 16), *(*&MaxY + 40));
  v62 = 0.0;
  if (*(v151 + 40))
  {
    v63 = *v61;
    MaxY = *(v151 + 32);
    v64 = swift_initStackObject();
    *(v64 + 16) = xmmword_219C09EC0;
    v65 = v141;
    *(v64 + 32) = v141;
    v66 = v65;
    v67 = sub_219BF6BD4();
    v68 = sub_219BF6BE4();

    v69 = sub_219BF0CB4();
    *(v64 + 40) = v69;
    v70 = v146;
    *(v64 + 64) = v56;
    *(v64 + 72) = v70;
    v71 = *(*__swift_project_boxed_opaque_existential_1((v63 + 16), *(v63 + 40)) + OBJC_IVAR____TtC7NewsUI210BaseStyler_theme + 56);
    *(v64 + 104) = v147;
    *(v64 + 80) = v71;
    v72 = v70;
    v73 = v71;
    sub_2188195F4(v64);
    swift_setDeallocating();
    swift_arrayDestroy();
    v74 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v75 = sub_219BF53D4();
    v76 = sub_219BF5204();

    v77 = [v74 initWithString:v75 attributes:v76];

    v78 = 0.0;
    v79 = 0.0;
    v80 = 0.0;
    if (v77)
    {
      [v77 boundingRectWithSize:33 options:0 context:{v51, 1.79769313e308}];
      v62 = v81;
      v78 = v82;
      v79 = v83;
      v80 = v84;
    }
  }

  else
  {
    v78 = 0.0;
    v79 = 0.0;
    v80 = 0.0;
  }

  v86 = v160;
  v85 = v161;
  v87 = v164;
  v88 = v164[*(v160 + 32)];
  v89 = *&v164[*(v160 + 20)];
  v149 = v51;
  if (v88)
  {
    v168.origin.x = v62;
    v168.origin.y = v78;
    v168.size.width = v79;
    v168.size.height = v80;
    Width = CGRectGetWidth(v168);
    v91 = v62;
    v92 = Width;
    v169.origin.x = v91;
    v169.origin.y = v78;
    v169.size.width = v79;
    v169.size.height = v80;
    v170.size.height = CGRectGetHeight(v169);
    v170.origin.x = 0.0;
    v170.origin.y = v89;
    v170.size.width = v92;
    v171 = CGRectIntegral(v170);
    y = v171.origin.y;
    v94 = v171.size.width;
    height = v171.size.height;
    x = v171.origin.x;
    MaxY = CGRectGetMaxY(v171);
    v96 = v152;
    v97 = v153;
    v172.origin.x = v153;
    v172.origin.y = v152;
    v98 = v155;
    v172.size.width = v155;
    v99 = v163;
    v172.size.height = v163;
    v100 = CGRectGetWidth(v172);
    v173.origin.x = v97;
    v173.origin.y = v96;
    v173.size.width = v98;
    v173.size.height = v99;
    v101 = v94;
    v174.size.height = CGRectGetHeight(v173);
    v174.origin.x = 0.0;
    v174.origin.y = MaxY;
    v174.size.width = v100;
    v175 = CGRectIntegral(v174);
    v102 = v175.origin.x;
    v103 = v175.origin.y;
    v104 = v175.size.width;
    MaxY = v175.size.height;
  }

  else
  {
    v176.origin.y = v152;
    v105 = v153;
    v176.origin.x = v153;
    x = v78;
    v106 = v152;
    v107 = v155;
    v176.size.width = v155;
    v154 = v62;
    v108 = v163;
    v176.size.height = v163;
    v109 = CGRectGetWidth(v176);
    v177.origin.x = v105;
    v177.origin.y = v106;
    v177.size.width = v107;
    v177.size.height = v108;
    v178.size.height = CGRectGetHeight(v177);
    v178.origin.x = 0.0;
    v178.origin.y = v89;
    v178.size.width = v109;
    v179 = CGRectIntegral(v178);
    v110 = v179.origin.x;
    v103 = v179.origin.y;
    v104 = v179.size.width;
    MaxY = v179.size.height;
    v163 = CGRectGetMaxY(v179);
    v111 = v154;
    v180.origin.x = v154;
    v112 = x;
    v180.origin.y = x;
    v180.size.width = v79;
    v180.size.height = v80;
    v113 = CGRectGetWidth(v180);
    v181.origin.x = v111;
    v181.origin.y = v112;
    v181.size.width = v79;
    v181.size.height = v80;
    v102 = v110;
    v182.size.height = CGRectGetHeight(v181);
    v182.origin.x = 0.0;
    v182.origin.y = v163;
    v182.size.width = v113;
    v183 = CGRectIntegral(v182);
    x = v183.origin.x;
    y = v183.origin.y;
    v101 = v183.size.width;
    height = v183.size.height;
  }

  v114 = v166;
  v163 = v104;
  sub_219BE8014();
  v116 = v115;
  sub_219BE7FF4();
  v118 = v117;
  v184.origin.x = v102;
  v184.origin.y = v103;
  v184.size.width = v104;
  v184.size.height = MaxY;
  v119 = v103;
  v120 = v102;
  v121 = CGRectGetMaxY(v184);
  v185.origin.x = x;
  v154 = v101;
  v155 = y;
  v185.origin.y = y;
  v185.size.width = v101;
  v153 = height;
  v185.size.height = height;
  v122 = CGRectGetMaxY(v185);
  if (v121 > v122)
  {
    v123 = v121;
  }

  else
  {
    v123 = v122;
  }

  v186.origin.x = v116 + v118;
  v186.size.height = v123 + *&v87[*(v86 + 24)];
  v124 = 0.0;
  v186.origin.y = 0.0;
  v186.size.width = v159;
  v187 = CGRectIntegral(v186);
  v125 = v187.origin.x;
  v126 = v187.origin.y;
  v127 = v187.size.width;
  v128 = v187.size.height;
  if (v85)
  {
    v188.origin.x = v120;
    v188.origin.y = v119;
    v188.size.width = v163;
    v188.size.height = MaxY;
    v129 = CGRectGetMaxY(v188);
    v124 = v149;
    v130 = v148 + v129 + -30.0;
    v131 = 0x403E000000000000;
  }

  else
  {
    v131 = 0;
    v130 = 0.0;
  }

  v132 = *(type metadata accessor for MagazineFeedGroupTitleViewLayoutAttributes(0) + 44);
  v133 = sub_219BDCAF4();
  v134 = v156;
  (*(*(v133 - 8) + 16))(v156 + v132, &v87[v114], v133);
  *v134 = v125;
  *(v134 + 8) = v126;
  *(v134 + 16) = v127;
  *(v134 + 24) = v128;
  *(v134 + 32) = v120;
  *(v134 + 40) = v119;
  v135 = MaxY;
  *(v134 + 48) = v163;
  *(v134 + 56) = v135;
  v137 = v154;
  v136 = v155;
  *(v134 + 64) = x;
  *(v134 + 72) = v136;
  result = v153;
  *(v134 + 80) = v137;
  *(v134 + 88) = result;
  *(v134 + 96) = v162 & 1;
  v139 = v157;
  *(v134 + 104) = v158;
  *(v134 + 112) = v139;
  *(v134 + 120) = v124;
  *(v134 + 128) = v130;
  *(v134 + 136) = v131;
  *(v134 + 144) = v131;
  *(v134 + 152) = v131;
  *(v134 + 160) = v85 == 0;
  return result;
}

Swift::String __swiftcall String.acronym()()
{
  sub_2187F3BD4();
  v0 = sub_219BF6FE4();
  v1 = *(v0 + 16);
  if (v1)
  {
    v16 = MEMORY[0x277D84F90];
    v2 = sub_21870B65C(0, v1, 0);
    v4 = (v0 + 40);
    while (1)
    {
      v5 = HIBYTE(*v4) & 0xFLL;
      if ((*v4 & 0x2000000000000000) == 0)
      {
        v5 = *(v4 - 1) & 0xFFFFFFFFFFFFLL;
      }

      if (!v5)
      {
        break;
      }

      v6 = sub_219BF5654();
      v8 = v7;

      v10 = *(v16 + 16);
      v9 = *(v16 + 24);
      if (v10 >= v9 >> 1)
      {
        v2 = sub_21870B65C((v9 > 1), v10 + 1, 1);
      }

      *(v16 + 16) = v10 + 1;
      v11 = v16 + 16 * v10;
      *(v11 + 32) = v6;
      *(v11 + 40) = v8;
      v4 += 2;
      if (!--v1)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_9:

    sub_2186D0D3C(0, &qword_280E8EE20, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    sub_2189DD328();
    v12 = sub_219BF5324();
    v14 = v13;

    v2 = v12;
    v3 = v14;
  }

  result._object = v3;
  result._countAndFlagsBits = v2;
  return result;
}

uint64_t sub_2192590BC(uint64_t a1, unint64_t a2)
{
  v2 = sub_219BF5674();
  v6 = sub_21925913C(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_21925913C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_219BF6FC4();
    if (!v9 || (v10 = v9, v11 = sub_2188249B8(v9, 0), v12 = sub_219259294(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_219BF5514();

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
      return sub_219BF5514();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_219BF73B4();
LABEL_4:

  return sub_219BF5514();
}

unint64_t sub_219259294(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
      result = sub_2197BD130(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_219BF55F4();
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
          result = sub_219BF73B4();
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

    result = sub_2197BD130(v12, a6, a7);
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

    result = sub_219BF55D4();
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

uint64_t sub_2192594B4()
{
  v1 = v0;
  v2 = type metadata accessor for ContinueReadingIneligibilityReason(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ContinueReadingEligibility(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21925A8BC(v1, v7, type metadata accessor for ContinueReadingEligibility);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21925A7FC(v7, v4);
    sub_21925A924(0, &qword_280E8B750, MEMORY[0x277D84560]);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_219C09EC0;
    *(v8 + 32) = 0xD000000000000045;
    *(v8 + 40) = 0x8000000219D142A0;
    *(v8 + 48) = sub_219259780();
    *(v8 + 56) = v9;
    v20[0] = v8;
    sub_21925A924(0, &qword_280E8EE20, MEMORY[0x277D83940]);
    sub_2189DD328();
    v10 = sub_219BF5324();

    sub_21925A860(v4);
    return v10;
  }

  else
  {
    v13 = *v7;
    v12 = *(v7 + 1);
    v14 = *(v7 + 2);
    v15 = *(v7 + 8);
    v16 = v7[72];
    v19 = *(v7 + 12);
    v20[0] = 0;
    v17 = v7[24];
    v20[1] = 0xE000000000000000;
    sub_219BF7314();

    strcpy(v20, "An article (");
    BYTE5(v20[1]) = 0;
    HIWORD(v20[1]) = -5120;

    MEMORY[0x21CECC330](v13, v12);

    MEMORY[0x21CECC330](0xD000000000000022, 0x8000000219D142F0);

    sub_218A57F90(v14, v17);

    sub_218A57FB4(v15, v16);

    return v20[0];
  }
}

unint64_t sub_219259780()
{
  v99 = sub_219BDED54();
  v1 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v3 = &v98 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_219BDEE04();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v98 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v98 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v98 - v12;
  v14 = type metadata accessor for ContinueReadingIneligibilityReason(0);
  MEMORY[0x28223BE20](v14);
  v16 = (&v98 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21925A8BC(v0, v16, type metadata accessor for ContinueReadingIneligibilityReason);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v53 = *v16;
      v102 = 0;
      v103 = 0xE000000000000000;
      sub_219BF7314();
      MEMORY[0x21CECC330](0xD00000000000003CLL, 0x8000000219D145C0);
      v100 = v53;
      sub_219BF7484();
      MEMORY[0x21CECC330](11817, 0xE200000000000000);
      sub_218932F9C(v53);
      return v102;
    case 2u:
      (*(v5 + 32))(v13, v16, v4);
      v102 = 0;
      v103 = 0xE000000000000000;
      sub_219BF7314();
      MEMORY[0x21CECC330](0xD000000000000035, 0x8000000219D14580);
      v37 = [sub_219BDEDF4() articleID];
      goto LABEL_25;
    case 3u:
      (*(v5 + 32))(v13, v16, v4);
      v102 = 0;
      v103 = 0xE000000000000000;
      sub_219BF7314();

      v102 = 0xD000000000000023;
      v103 = 0x8000000219D14550;
      v37 = [sub_219BDEDF4() articleID];
      goto LABEL_25;
    case 4u:
      (*(v5 + 32))(v13, v16, v4);
      v102 = 0;
      v103 = 0xE000000000000000;
      sub_219BF7314();
      MEMORY[0x21CECC330](0xD000000000000030, 0x8000000219D14510);
      v37 = [sub_219BDEDF4() articleID];
      goto LABEL_25;
    case 5u:
      (*(v5 + 32))(v13, v16, v4);
      v102 = 0;
      v103 = 0xE000000000000000;
      sub_219BF7314();

      v102 = 0xD000000000000022;
      v103 = 0x8000000219D144E0;
      v37 = [sub_219BDEDF4() articleID];
      goto LABEL_25;
    case 6u:
      (*(v5 + 32))(v10, v16, v4);
      v102 = 0;
      v103 = 0xE000000000000000;
      sub_219BF7314();

      v102 = 0xD00000000000001CLL;
      v103 = 0x8000000219D14440;
      v59 = [sub_219BDEDF4() sourceChannel];
      swift_unknownObjectRelease();
      if (v59)
      {
        v60 = [v59 identifier];
        swift_unknownObjectRelease();
        v59 = sub_219BF5414();
        v62 = v61;
      }

      else
      {
        v62 = 0;
      }

      v100 = v59;
      v101 = v62;
      sub_21925A924(0, &qword_280E8F860, MEMORY[0x277D83D88]);
      v88 = sub_219BF5484();
      MEMORY[0x21CECC330](v88);

      MEMORY[0x21CECC330](8233, 0xE200000000000000);
      v90 = v102;
      v89 = v103;
      v102 = 0;
      v103 = 0xE000000000000000;
      sub_219BF7314();

      v102 = 0xD00000000000001DLL;
      v103 = 0x8000000219D14460;
      v91 = [sub_219BDEDF4() articleID];
      swift_unknownObjectRelease();
      v92 = sub_219BF5414();
      v94 = v93;

      MEMORY[0x21CECC330](v92, v94);

      MEMORY[0x21CECC330](11817, 0xE200000000000000);
      v95 = v102;
      v96 = v103;
      v102 = v90;
      v103 = v89;

      MEMORY[0x21CECC330](v95, v96);

      v22 = v102;
      (*(v5 + 8))(v10, v4);
      return v22;
    case 7u:
      v47 = v5;
      v48 = v7;
      (*(v5 + 32))(v7, v16, v4);
      v102 = 0;
      v103 = 0xE000000000000000;
      sub_219BF7314();

      v102 = 0xD00000000000001ELL;
      v103 = 0x8000000219D14400;
      v49 = [sub_219BDEDF4() sourceChannel];
      swift_unknownObjectRelease();
      if (v49)
      {
        v50 = [v49 identifier];
        swift_unknownObjectRelease();
        v49 = sub_219BF5414();
        v52 = v51;
      }

      else
      {
        v52 = 0;
      }

      v100 = v49;
      v101 = v52;
      sub_21925A924(0, &qword_280E8F860, MEMORY[0x277D83D88]);
      v79 = sub_219BF5484();
      MEMORY[0x21CECC330](v79);

      MEMORY[0x21CECC330](8233, 0xE200000000000000);
      v81 = v102;
      v80 = v103;
      v102 = 0;
      v103 = 0xE000000000000000;
      sub_219BF7314();

      v102 = 0xD00000000000001DLL;
      v103 = 0x8000000219D14460;
      v82 = [sub_219BDEDF4() articleID];
      swift_unknownObjectRelease();
      v83 = sub_219BF5414();
      v85 = v84;

      MEMORY[0x21CECC330](v83, v85);

      MEMORY[0x21CECC330](11817, 0xE200000000000000);
      v87 = v102;
      v86 = v103;
      v102 = v81;
      v103 = v80;

      MEMORY[0x21CECC330](v87, v86);

      v22 = v102;
      (*(v47 + 8))(v48, v4);
      return v22;
    case 8u:
      (*(v5 + 32))(v13, v16, v4);
      v102 = 0;
      v103 = 0xE000000000000000;
      sub_219BF7314();

      v102 = 0xD00000000000002BLL;
      v103 = 0x8000000219D144B0;
      v37 = [sub_219BDEDF4() articleID];
LABEL_25:
      v75 = v37;
      swift_unknownObjectRelease();
      v76 = sub_219BF5414();
      v78 = v77;

      MEMORY[0x21CECC330](v76, v78);

      MEMORY[0x21CECC330](11817, 0xE200000000000000);
      v22 = v102;
      (*(v5 + 8))(v13, v4);
      return v22;
    case 9u:
      v40 = v99;
      (*(v1 + 32))(v3, v16, v99);
      v102 = 0;
      v103 = 0xE000000000000000;
      sub_219BF7314();

      v102 = 0xD000000000000020;
      v103 = 0x8000000219D14480;
      v41 = sub_219BDED44();
      v42 = [v41 identifier];

      v43 = sub_219BF5414();
      v45 = v44;

      MEMORY[0x21CECC330](v43, v45);

      MEMORY[0x21CECC330](11817, 0xE200000000000000);
      v22 = v102;
      (*(v1 + 8))(v3, v40);
      return v22;
    case 0xAu:
      v25 = v1;
      v26 = v99;
      (*(v1 + 32))(v3, v16, v99);
      v102 = 0;
      v103 = 0xE000000000000000;
      sub_219BF7314();

      v102 = 0xD00000000000001CLL;
      v103 = 0x8000000219D14440;
      v63 = sub_219BDED44();
      v64 = [v63 sourceChannel];

      v65 = [v64 identifier];
      swift_unknownObjectRelease();
      v66 = sub_219BF5414();
      v68 = v67;

      MEMORY[0x21CECC330](v66, v68);

      MEMORY[0x21CECC330](8233, 0xE200000000000000);
      v34 = v102;
      v33 = v103;
      v102 = 0;
      v103 = 0xE000000000000000;
      sub_219BF7314();

      v102 = 0xD00000000000001DLL;
      v103 = 0x8000000219D14460;
      v35 = sub_219BDED44();
      v36 = [v35 identifier];
      goto LABEL_23;
    case 0xBu:
      v25 = v1;
      v26 = v99;
      (*(v1 + 32))(v3, v16, v99);
      v102 = 0;
      v103 = 0xE000000000000000;
      sub_219BF7314();

      v102 = 0xD00000000000001ELL;
      v103 = 0x8000000219D14400;
      v27 = sub_219BDED44();
      v28 = [v27 sourceChannel];

      v29 = [v28 identifier];
      swift_unknownObjectRelease();
      v30 = sub_219BF5414();
      v32 = v31;

      MEMORY[0x21CECC330](v30, v32);

      MEMORY[0x21CECC330](8233, 0xE200000000000000);
      v34 = v102;
      v33 = v103;
      v102 = 0;
      v103 = 0xE000000000000000;
      sub_219BF7314();

      v102 = 0xD00000000000001BLL;
      v103 = 0x8000000219D14420;
      v35 = sub_219BDED44();
      v36 = [v35 identifier];
LABEL_23:
      v69 = v36;

      v70 = sub_219BF5414();
      v72 = v71;

      MEMORY[0x21CECC330](v70, v72);

      MEMORY[0x21CECC330](11817, 0xE200000000000000);
      v73 = v102;
      v74 = v103;
      v102 = v34;
      v103 = v33;

      MEMORY[0x21CECC330](v73, v74);

      v22 = v102;
      (*(v25 + 8))(v3, v26);
      return v22;
    case 0xCu:
      v38 = *v16;
      v102 = 0;
      v103 = 0xE000000000000000;
      sub_219BF7314();

      v102 = 0xD000000000000029;
      v103 = 0x8000000219D143D0;
      v39 = [v38 identifier];
      goto LABEL_18;
    case 0xDu:
      v54 = *v16;
      v102 = 0;
      v103 = 0xE000000000000000;
      sub_219BF7314();

      v102 = 0xD000000000000021;
      v103 = 0x8000000219D143A0;
      v39 = [v54 identifier];
LABEL_18:
      v55 = v39;
      v56 = sub_219BF5414();
      v58 = v57;

      MEMORY[0x21CECC330](v56, v58);

      MEMORY[0x21CECC330](11817, 0xE200000000000000);
      swift_unknownObjectRelease();
      return v102;
    case 0xEu:
      v23 = *v16;
      v24 = v16[1];
      v102 = 0;
      v103 = 0xE000000000000000;
      sub_219BF7314();

      v102 = 0xD00000000000002DLL;
      v103 = 0x8000000219D14350;
      MEMORY[0x21CECC330](v23, v24);

      MEMORY[0x21CECC330](11817, 0xE200000000000000);
      return v102;
    case 0xFu:
      v46 = *v16;
      v102 = 0;
      v103 = 0xE000000000000000;
      sub_219BF7314();
      MEMORY[0x21CECC330](0xD00000000000001ALL, 0x8000000219D14380);
      v100 = v46;
      sub_218A450F0();
      sub_219BF7484();
      MEMORY[0x21CECC330](11817, 0xE200000000000000);

      return v102;
    case 0x10u:
      return 0xD000000000000018;
    case 0x11u:
      return 0xD000000000000028;
    default:
      v17 = *v16;
      v102 = 0;
      v103 = 0xE000000000000000;
      sub_219BF7314();
      MEMORY[0x21CECC330](0xD00000000000003DLL, 0x8000000219D14600);
      v18 = [v17 description];
      v19 = sub_219BF5414();
      v21 = v20;

      MEMORY[0x21CECC330](v19, v21);

      MEMORY[0x21CECC330](11817, 0xE200000000000000);

      return v102;
  }
}

unint64_t sub_21925A780()
{
  if (*v0)
  {
    return 0xD000000000000022;
  }

  else
  {
    return 0xD000000000000025;
  }
}

uint64_t sub_21925A7FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContinueReadingIneligibilityReason(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21925A860(uint64_t a1)
{
  v2 = type metadata accessor for ContinueReadingIneligibilityReason(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21925A8BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_21925A924(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D837D0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_21925A978(uint64_t a1)
{
  result = type metadata accessor for ContinueReadingIneligibilityReason(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_21925A9E4(uint64_t a1)
{
  result = sub_21925AAB8();
  if (v2 <= 0x3F)
  {
    result = sub_219BDEE04();
    if (v3 <= 0x3F)
    {
      result = sub_219BDED54();
      if (v4 <= 0x3F)
      {
        result = sub_21873FA4C();
        if (v5 <= 0x3F)
        {
          result = sub_218A450F0();
          if (v6 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

unint64_t sub_21925AAB8()
{
  result = qword_280E8E650;
  if (!qword_280E8E650)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280E8E650);
  }

  return result;
}

unint64_t sub_21925AB18()
{
  result = qword_27CC17FD8;
  if (!qword_27CC17FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC17FD8);
  }

  return result;
}

uint64_t type metadata accessor for FoodBestOfRecipesClusteringRequest(uint64_t a1)
{
  result = qword_280EA0790;
  if (!qword_280EA0790)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21925ABE0(uint64_t a1)
{
  sub_21925ACF0(319);
  if (v1 <= 0x3F)
  {
    sub_219BEF9C4();
    if (v2 <= 0x3F)
    {
      sub_218822764();
      if (v3 <= 0x3F)
      {
        sub_219BF0354();
        if (v4 <= 0x3F)
        {
          sub_2186E2394();
          if (v5 <= 0x3F)
          {
            sub_2186C6148(319, &qword_280E8D790, 0x277D86200);
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

void sub_21925ACF0(uint64_t a1)
{
  if (!qword_280E8EF60)
  {
    sub_218C3EE8C(255);
    v1 = sub_219BF5B14();
    if (!v2)
    {
      atomic_store(v1, &qword_280E8EF60);
    }
  }
}

uint64_t sub_21925AD70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_218C90C1C(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186FF4C0(0);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C90CC8(a1, v8);
  v14 = *(v11 + 48);
  if (v14(v8, 1, v10) == 1)
  {
    type metadata accessor for SearchFeedServiceConfig(0);
    sub_218C90E50(&qword_280EC37A0, type metadata accessor for SearchFeedServiceConfig, &unk_219C4DF90);
    sub_219BEE974();
    if (v14(v8, 1, v10) != 1)
    {
      sub_218C90D2C(v8);
    }
  }

  else
  {
    (*(v11 + 32))(v13, v8, v10);
  }

  (*(v11 + 32))(a3, v13, v10);
  if (!a2)
  {
    v16[1] = 5;
    sub_2186F9548();
    swift_allocObject();
    a2 = sub_219BEF534();
  }

  sub_218C90D2C(a1);
  result = type metadata accessor for TopicsSearchFeedGroupKnobs(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t sub_21925AFFC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v13[0] = a2;
  sub_218C90C1C(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21925B690(0, &qword_280E8CCD0, MEMORY[0x277D844C8]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = v13 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21925B63C();
  sub_219BF7B34();
  if (!v2)
  {
    sub_2186FF4C0(0);
    v15 = 0;
    sub_218C90E50(&unk_280E91A00, sub_2186FF4C0, MEMORY[0x277D321B0]);
    sub_219BF7674();
    sub_2186F9548();
    v14 = 1;
    sub_218C90E50(&qword_280E913B8, sub_2186F9548, MEMORY[0x277D32620]);
    sub_219BF7674();
    sub_21925AD70(v6, v13[1], v13[0]);
    (*(v9 + 8))(v11, v8);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21925B260(void *a1)
{
  v3 = v1;
  sub_21925B690(0, &qword_27CC17FE0, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21925B63C();
  sub_219BF7B44();
  v13 = 0;
  sub_2186FF4C0(0);
  sub_218C90E50(&qword_27CC10588, sub_2186FF4C0, MEMORY[0x277D321A8]);
  sub_219BF7834();
  if (!v2)
  {
    v12 = *(v3 + *(type metadata accessor for TopicsSearchFeedGroupKnobs(0) + 20));
    v11[15] = 1;
    sub_2186F9548();
    sub_218C90E50(&qword_280E913C0, sub_2186F9548, MEMORY[0x277D32610]);
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_21925B478()
{
  if (*v0)
  {
    return 0xD000000000000014;
  }

  else
  {
    return 0x73656C7572;
  }
}

void sub_21925B4B4(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x73656C7572 && a2 == 0xE500000000000000;
  if (v6 || (sub_219BF78F4() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000219CEF680 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_219BF78F4();

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

uint64_t sub_21925B594(uint64_t a1)
{
  v2 = sub_21925B63C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21925B5D0(uint64_t a1)
{
  v2 = sub_21925B63C();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_21925B63C()
{
  result = qword_280EB99A0;
  if (!qword_280EB99A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB99A0);
  }

  return result;
}

void sub_21925B690(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_21925B63C();
    v7 = a3(a1, &type metadata for TopicsSearchFeedGroupKnobs.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_21925B708()
{
  result = qword_27CC17FE8;
  if (!qword_27CC17FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC17FE8);
  }

  return result;
}

unint64_t sub_21925B760()
{
  result = qword_280EB9990;
  if (!qword_280EB9990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB9990);
  }

  return result;
}

unint64_t sub_21925B7B8()
{
  result = qword_280EB9998;
  if (!qword_280EB9998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB9998);
  }

  return result;
}

id sub_21925B824()
{
  v1 = OBJC_IVAR____TtC7NewsUI225LocalDraftsDeviceListener____lazy_storage___session;
  v2 = *(v0 + OBJC_IVAR____TtC7NewsUI225LocalDraftsDeviceListener____lazy_storage___session);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC7NewsUI225LocalDraftsDeviceListener____lazy_storage___session);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277CD7BB0]) initWithPeer:*(v0 + OBJC_IVAR____TtC7NewsUI225LocalDraftsDeviceListener_myPeerId) securityIdentity:0 encryptionPreference:1];
    [v4 setDelegate_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

char *sub_21925B8C4()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC7NewsUI225LocalDraftsDeviceListener_localFiles] = MEMORY[0x277D84F90];
  v2 = &v0[OBJC_IVAR____TtC7NewsUI225LocalDraftsDeviceListener_deviceInfo];
  *(v2 + 1) = 0;
  *(v2 + 2) = 0;
  *v2 = 0;
  *&v0[OBJC_IVAR____TtC7NewsUI225LocalDraftsDeviceListener_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v3 = &v0[OBJC_IVAR____TtC7NewsUI225LocalDraftsDeviceListener_previewServiceType];
  *v3 = 0x6563697665446E6FLL;
  *(v3 + 1) = 0xEF77656976657250;
  v4 = [objc_opt_self() currentDevice];
  v5 = [v4 name];

  if (!v5)
  {
    sub_219BF5414();
    v5 = sub_219BF53D4();
  }

  v6 = OBJC_IVAR____TtC7NewsUI225LocalDraftsDeviceListener_myPeerId;
  v7 = [objc_allocWithZone(MEMORY[0x277CD7BA8]) initWithDisplayName_];

  *&v0[v6] = v7;
  *&v0[OBJC_IVAR____TtC7NewsUI225LocalDraftsDeviceListener____lazy_storage___session] = 0;
  v8 = objc_allocWithZone(MEMORY[0x277CD7BA0]);
  v9 = v7;

  v10 = sub_219BF53D4();

  v11 = [v8 initWithPeer:v9 serviceType:v10];

  *&v0[OBJC_IVAR____TtC7NewsUI225LocalDraftsDeviceListener_serviceBrowser] = v11;
  v19.receiver = v0;
  v19.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v19, sel_init);
  v13 = OBJC_IVAR____TtC7NewsUI225LocalDraftsDeviceListener_serviceBrowser;
  v14 = *&v12[OBJC_IVAR____TtC7NewsUI225LocalDraftsDeviceListener_serviceBrowser];
  v15 = v12;
  [v14 setDelegate_];
  sub_219BDC2D4();
  sub_21925D02C();
  sub_219BDC7D4();

  if (v18 == 1)
  {
    [*&v12[v13] startBrowsingForPeers];
  }

  sub_219BDC2D4();
  *(swift_allocObject() + 16) = v15;
  v16 = v15;
  sub_219BDC7E4();

  return v16;
}

id sub_21925BB70(_BYTE *a1, uint64_t a2)
{
  if (*a1)
  {
    v3 = &selRef_startBrowsingForPeers;
  }

  else
  {
    v4 = sub_21925B824();
    [v4 disconnect];

    v3 = &selRef_stopBrowsingForPeers;
  }

  v5 = *(a2 + OBJC_IVAR____TtC7NewsUI225LocalDraftsDeviceListener_serviceBrowser);
  v6 = *v3;

  return [v5 v6];
}

id sub_21925BC08()
{
  ObjectType = swift_getObjectType();
  [*&v0[OBJC_IVAR____TtC7NewsUI225LocalDraftsDeviceListener_serviceBrowser] stopBrowsingForPeers];
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_21925BF20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      v7 = sub_219BF53D4();
      [v6 showAlertWithPin:v4 pin:v7];

      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21925BFD8(uint64_t a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = result;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong hideAlert_];
      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21925C118(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    swift_beginAccess();

    sub_219B85148(v7, a2, a3, 0x4177656976657270, 0xEE00656C63697472);
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v9 = Strong;
      v10 = sub_219BF53D4();
      v11 = sub_219BF53D4();
      [v9 localDraftsDeviceOnPreview:v6 articleIdentifier:v10 channelIdentifier:v11];

      swift_unknownObjectRelease();
    }

    else
    {
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_21925C444(uint64_t a1)
{
  v1 = sub_219BF61F4();
  sub_2186F20D4(0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_219C09BA0;
  sub_219BF7314();
  MEMORY[0x21CECC330](0xD00000000000001DLL, 0x8000000219D148A0);
  sub_2186CFDE4(0, &qword_280E8B580, MEMORY[0x277D84948]);
  sub_219BF7484();
  *(v2 + 56) = MEMORY[0x277D837D0];
  *(v2 + 64) = sub_2186FC3BC();
  *(v2 + 32) = 0;
  *(v2 + 40) = 0xE000000000000000;
  sub_2186C6148(0, &qword_280E8D790, 0x277D86200);
  v3 = sub_219BF6F44();
  sub_219BE5324(v1, &dword_2186C1000, v3, "%@", 2, 2, v2);
}

void sub_21925C58C(void *a1, void *a2)
{
  sub_2186F20D4(0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_219C09BA0;
  sub_219BF7314();

  v5 = [a2 description];
  v6 = sub_219BF5414();
  v8 = v7;

  MEMORY[0x21CECC330](v6, v8);

  *(v4 + 56) = MEMORY[0x277D837D0];
  *(v4 + 64) = sub_2186FC3BC();
  *(v4 + 32) = 0xD000000000000018;
  *(v4 + 40) = 0x8000000219D14880;
  sub_2186C6148(0, &qword_280E8D790, 0x277D86200);
  v9 = sub_219BF6F44();
  v10 = sub_219BF6214();
  sub_219BE5314("%@", 2, 2, &dword_2186C1000, v9, v10, v4);

  v11 = sub_21925B824();
  [a1 invitePeer:a2 toSession:v11 withContext:0 timeout:10.0];
}

void sub_21925C72C(void *a1)
{
  sub_2186F20D4(0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_219C09BA0;
  v3 = [a1 description];
  v4 = sub_219BF5414();
  v6 = v5;

  MEMORY[0x21CECC330](v4, v6);

  *(v2 + 56) = MEMORY[0x277D837D0];
  *(v2 + 64) = sub_2186FC3BC();
  *(v2 + 32) = 0x7265655074736F6CLL;
  *(v2 + 40) = 0xEA0000000000203ALL;
  sub_2186C6148(0, &qword_280E8D790, 0x277D86200);
  v8 = sub_219BF6F44();
  v7 = sub_219BF6214();
  sub_219BE5314("%@", 2, 2, &dword_2186C1000, v8, v7, v2);
}

double sub_21925C868(uint64_t a1, uint64_t a2)
{
  sub_219BE1994();
  swift_allocObject();
  sub_219BE1984();
  sub_21925CF90();
  sub_219BE1974();
  if (v12)
  {
    if (v12 == 1)
    {
      v3 = swift_allocObject();
      v3[2] = v2;
      v3[3] = v9;
      v3[4] = v10;
      sub_21925CFFC(v9, v10, v11, 1u);
      v4 = v2;
      sub_219BE3494();

      sub_21925D014(v9, v10, v11, 1u);
    }

    else
    {
      v7 = swift_allocObject();
      *(v7 + 16) = v2;
      *(v7 + 24) = v9 & 1;
      v8 = v2;
      sub_219BE3494();
    }
  }

  else
  {

    v5 = &v2[OBJC_IVAR____TtC7NewsUI225LocalDraftsDeviceListener_deviceInfo];
    *v5 = v9;
    v5[1] = v10;
    v5[2] = v11;
  }

  return result;
}

void sub_21925CB34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_21873F65C(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = a1;
  v43 = a2;
  v44 = 47;
  v45 = 0xE100000000000000;
  sub_2187F3BD4();
  v11 = MEMORY[0x277D837D0];
  v12 = (sub_219BF6FE4() + 16);
  if (!*v12)
  {

    sub_2186F20D4(0);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_219C09BA0;
    *(v22 + 56) = v11;
    *(v22 + 64) = sub_2186FC3BC();
    *(v22 + 32) = 0xD000000000000021;
    *(v22 + 40) = 0x8000000219D14810;
    sub_2186C6148(0, &qword_280E8D790, 0x277D86200);
    v23 = sub_219BF6F44();
    v24 = sub_219BF6214();
    sub_219BE5314("%@", 2, 2, &dword_2186C1000, v23, v24, v22);

LABEL_9:

    return;
  }

  v13 = &v12[2 * *v12];
  v15 = *v13;
  v14 = v13[1];

  v16 = &v4[OBJC_IVAR____TtC7NewsUI225LocalDraftsDeviceListener_deviceInfo];
  v17 = *&v4[OBJC_IVAR____TtC7NewsUI225LocalDraftsDeviceListener_deviceInfo + 8];
  if (!v17)
  {

    v25 = sub_219BF61F4();
    sub_2186C6148(0, &qword_280E8D790, 0x277D86200);
    v23 = sub_219BF6F44();
    sub_219BE5324(v25, &dword_2186C1000, v23, "Device Info was not received from News Preview", 46, 2, MEMORY[0x277D84F90]);
    goto LABEL_9;
  }

  v18 = *(v16 + 2);
  if (!v18)
  {

    v26 = sub_219BF61F4();
    sub_2186C6148(0, &qword_280E8D790, 0x277D86200);
    v23 = sub_219BF6F44();
    sub_219BE5324(v26, &dword_2186C1000, v23, "Received 0 files from News Preview", 34, 2, MEMORY[0x277D84F90]);
    goto LABEL_9;
  }

  v39 = *v16;
  sub_2188383F8(a3, v10);
  v19 = sub_219BDB954();
  v20 = *(v19 - 8);
  v21 = (*(v20 + 48))(v10, 1, v19);

  if (v21 == 1)
  {
    sub_218838478(v10);
    v40 = 0xE000000000000000;
    v41 = 0;
  }

  else
  {
    v27 = sub_219BDB8F4();
    v40 = v28;
    v41 = v27;
    (*(v20 + 8))(v10, v19);
  }

  v29 = OBJC_IVAR____TtC7NewsUI225LocalDraftsDeviceListener_localFiles;
  swift_beginAccess();
  v30 = *&v4[v29];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v4[v29] = v30;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v30 = sub_2191FA438(0, *(v30 + 2) + 1, 1, v30);
    *&v4[v29] = v30;
  }

  v33 = *(v30 + 2);
  v32 = *(v30 + 3);
  if (v33 >= v32 >> 1)
  {
    v30 = sub_2191FA438((v32 > 1), v33 + 1, 1, v30);
  }

  *(v30 + 2) = v33 + 1;
  v34 = &v30[32 * v33];
  v35 = v40;
  *(v34 + 4) = v41;
  *(v34 + 5) = v35;
  *(v34 + 6) = v15;
  *(v34 + 7) = v14;
  *&v4[v29] = v30;
  swift_endAccess();
  if (__OFSUB__(v18, 1))
  {
    __break(1u);
  }

  else
  {
    v36 = v39;
    if (v18 == 1)
    {
      v37 = swift_allocObject();
      v37[2] = v4;
      v37[3] = v36;
      v37[4] = v17;
      v37[5] = 0;

      v38 = v4;
      sub_219BE3494();
    }

    *v16 = v36;
    *(v16 + 1) = v17;
    *(v16 + 2) = v18 - 1;
  }
}

unint64_t sub_21925CF90()
{
  result = qword_27CC180F0;
  if (!qword_27CC180F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC180F0);
  }

  return result;
}

double sub_21925CFFC(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 1u)
  {
  }

  return result;
}

double sub_21925D014(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 1u)
  {
  }

  return result;
}

unint64_t sub_21925D02C()
{
  result = qword_27CC18108;
  if (!qword_27CC18108)
  {
    type metadata accessor for LocalDraftsDeviceListener();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC18108);
  }

  return result;
}

uint64_t type metadata accessor for BestOfBundleMagazineFeedGroupConfigData(uint64_t a1)
{
  result = qword_280E97758;
  if (!qword_280E97758)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21925D0FC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = sub_219BEF554();
  v39 = *(v3 - 8);
  v40 = v3;
  MEMORY[0x28223BE20](v3);
  v35 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for BestOfBundleMagazineFeedGroupConfigData(0);
  MEMORY[0x28223BE20](v38);
  v36 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_219BF1934();
  v34 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D15B24(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21925DABC(0, &qword_280E8C740, MEMORY[0x277D844C8]);
  v42 = v11;
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v31 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21925DA04();
  v15 = v14;
  v16 = v43;
  sub_219BF7B34();
  if (!v16)
  {
    v43 = v12;
    v33 = v7;
    v17 = v38;
    v18 = v39;
    v20 = v40;
    v19 = v41;
    v48 = 1;
    v21 = v15;
    v22 = sub_219BF76A4();
    v47 = 2;
    v32 = sub_219BF76A4();
    v46 = 3;
    sub_218D15CF4(&unk_280E91390, MEMORY[0x277D32648], MEMORY[0x277D32658]);
    sub_219BF76E4();
    v45 = 4;
    v31 = sub_219BF76A4();
    v44 = 5;
    sub_218D15CF4(&qword_280E90808, MEMORY[0x277D33478], MEMORY[0x277D33488]);
    sub_219BF7734();
    (v43)[1](v21, v42);
    v24 = v36;
    *v36 = 11;
    v24[1] = v22 & 1;
    v24[2] = (v32 == 2) | v32 & 1;
    v25 = *(v18 + 48);
    if ((v25)(v10, 1, v20) == 1)
    {
      v26 = *MEMORY[0x277D32628];
      v27 = *(v18 + 104);
      v43 = v25;
      v28 = v35;
      v27(v35, v26, v20);
      v42 = v10;
      v29 = v19;
      if ((v43)(v10, 1, v20) != 1)
      {
        sub_218D15BD0(v42);
      }
    }

    else
    {
      v28 = v35;
      (*(v18 + 32))(v35, v10, v20);
      v29 = v19;
    }

    v30 = v36;
    (*(v18 + 32))(&v36[v17[7]], v28, v20);
    *(v30 + v17[8]) = v31 & 1;
    (*(v34 + 32))(v30 + v17[9], v33, v37);
    sub_21925DA58(v30, v29);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_21925D69C(void *a1)
{
  v3 = v1;
  sub_21925DABC(0, &qword_280E8C1E8, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21925DA04();
  sub_219BF7B44();
  v11[15] = *v3;
  v11[14] = 0;
  sub_218CD67F4();
  sub_219BF7834();
  if (!v2)
  {
    v11[13] = 1;
    sub_219BF7804();
    v11[12] = 2;
    sub_219BF7804();
    type metadata accessor for BestOfBundleMagazineFeedGroupConfigData(0);
    v11[11] = 3;
    sub_219BEF554();
    sub_218D15CF4(&qword_280E913A0, MEMORY[0x277D32648], MEMORY[0x277D32650]);
    sub_219BF7834();
    v11[10] = 4;
    sub_219BF7804();
    v11[9] = 5;
    sub_219BF1934();
    sub_218D15CF4(&qword_280E90810, MEMORY[0x277D33478], MEMORY[0x277D33480]);
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_21925D95C(uint64_t a1)
{
  v2 = sub_21925DA04();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21925D998(uint64_t a1)
{
  v2 = sub_21925DA04();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_21925DA04()
{
  result = qword_280E97798[0];
  if (!qword_280E97798[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E97798);
  }

  return result;
}

uint64_t sub_21925DA58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BestOfBundleMagazineFeedGroupConfigData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_21925DABC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_21925DA04();
    v7 = a3(a1, &type metadata for BestOfBundleMagazineFeedGroupConfigData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_21925DB34()
{
  result = qword_27CC18110;
  if (!qword_27CC18110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC18110);
  }

  return result;
}

unint64_t sub_21925DB8C()
{
  result = qword_280E97788;
  if (!qword_280E97788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E97788);
  }

  return result;
}

unint64_t sub_21925DBE4()
{
  result = qword_280E97790;
  if (!qword_280E97790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E97790);
  }

  return result;
}

int *sub_21925DC38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v53 = a2;
  v54 = a3;
  v5 = MEMORY[0x277D83D88];
  sub_21925E9AC(0, &unk_27CC21480, type metadata accessor for PuzzleMonthArchive, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v52 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v50 = &v49 - v9;
  MEMORY[0x28223BE20](v10);
  v12 = &v49 - v11;
  sub_21925E9AC(0, &qword_27CC18118, type metadata accessor for PuzzleArchiveFetchResult, v5);
  MEMORY[0x28223BE20](v13 - 8);
  v51 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v49 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v49 - v19;
  v21 = type metadata accessor for PuzzleArchiveFetchResult(0);
  v22 = *(v21 - 1);
  MEMORY[0x28223BE20](v21);
  v24 = &v49 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_21925E30C(a1, v3);
  v55 = a1;
  v56 = v25;
  sub_21925E5F4(a1, v20, &qword_27CC18118, type metadata accessor for PuzzleArchiveFetchResult);
  v26 = *(v22 + 48);
  if (v26(v20, 1, v21) == 1)
  {
    sub_21925E674(v20, &qword_27CC18118, type metadata accessor for PuzzleArchiveFetchResult);
    v27 = (v3 + *(type metadata accessor for PuzzleFullArchiveTagFeedGroupEmitterCursor(0) + 28));
    v28 = *v27;
    v29 = v27[1];
  }

  else
  {
    sub_21925E7D4(v20, v24, type metadata accessor for PuzzleArchiveFetchResult);
    v30 = &v24[v21[6]];
    v28 = *v30;
    v29 = *(v30 + 1);

    sub_21925E778(v24);
  }

  if (!(*(v56 + 16) | v29))
  {

    v31 = type metadata accessor for PuzzleFullArchiveTagFeedGroupEmitterCursor(0);
    return (*(*(v31 - 8) + 56))(v54, 1, 1, v31);
  }

  v33 = v12;
  v49 = v28;
  sub_21925E5F4(v55, v17, &qword_27CC18118, type metadata accessor for PuzzleArchiveFetchResult);
  if (v26(v17, 1, v21) == 1)
  {
    sub_21925E674(v17, &qword_27CC18118, type metadata accessor for PuzzleArchiveFetchResult);
    v34 = type metadata accessor for PuzzleMonthArchive(0);
    v35 = v50;
    (*(*(v34 - 8) + 56))(v50, 1, 1, v34);
    goto LABEL_9;
  }

  v35 = v50;
  sub_21925E5F4(&v17[v21[5]], v50, &unk_27CC21480, type metadata accessor for PuzzleMonthArchive);
  sub_21925E778(v17);
  v34 = type metadata accessor for PuzzleMonthArchive(0);
  v36 = *(v34 - 8);
  if ((*(v36 + 48))(v35, 1, v34) == 1)
  {
LABEL_9:
    v37 = type metadata accessor for PuzzleFullArchiveTagFeedGroupEmitterCursor(0);
    sub_21925E5F4(v3 + *(v37 + 24), v33, &unk_27CC21480, type metadata accessor for PuzzleMonthArchive);
    type metadata accessor for PuzzleMonthArchive(0);
    if ((*(*(v34 - 8) + 48))(v35, 1, v34) != 1)
    {
      sub_21925E674(v35, &unk_27CC21480, type metadata accessor for PuzzleMonthArchive);
    }

    goto LABEL_12;
  }

  sub_21925E7D4(v35, v33, type metadata accessor for PuzzleMonthArchive);
  (*(v36 + 56))(v33, 0, 1, v34);
LABEL_12:
  v38 = v52;
  sub_21925E6E4(v33, v52);
  v39 = v51;
  sub_21925E5F4(v55, v51, &qword_27CC18118, type metadata accessor for PuzzleArchiveFetchResult);
  if (v26(v39, 1, v21) == 1)
  {
    sub_21925E674(v39, &qword_27CC18118, type metadata accessor for PuzzleArchiveFetchResult);
    v40 = v3 + *(type metadata accessor for PuzzleFullArchiveTagFeedGroupEmitterCursor(0) + 32);
    v41 = *v40;
    v42 = *(v40 + 8);
  }

  else
  {
    v41 = *(v39 + v21[7]);
    sub_21925E778(v39);
    v42 = 0;
  }

  result = type metadata accessor for PuzzleFullArchiveTagFeedGroupEmitterCursor(0);
  v43 = *(v3 + result[9]);
  v44 = v43 + v53;
  if (__OFADD__(v43, v53))
  {
    __break(1u);
  }

  else
  {
    v45 = result;
    v46 = v54;
    *v54 = 0;
    *(v46 + 1) = v56;
    sub_21925E6E4(v38, &v46[result[6]]);
    v47 = &v46[v45[7]];
    *v47 = v49;
    v47[1] = v29;
    v48 = &v46[v45[8]];
    *v48 = v41;
    v48[8] = v42;
    *&v46[v45[9]] = v44;
    return (*(*(v45 - 1) + 56))(v46, 0, 1, v45);
  }

  return result;
}

uint64_t sub_21925E30C(uint64_t a1, uint64_t a2)
{
  sub_21925E9AC(0, &qword_27CC18118, type metadata accessor for PuzzleArchiveFetchResult, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v21 - v5;
  v7 = type metadata accessor for PuzzleArchiveFetchResult(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21925E5F4(a1, v6, &qword_27CC18118, type metadata accessor for PuzzleArchiveFetchResult);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_21925E674(v6, &qword_27CC18118, type metadata accessor for PuzzleArchiveFetchResult);
    v11 = *(a2 + 8);
    v12 = *(v11 + 16);
    if (v12)
    {
      v15 = (2 * v12) | 1;
      v16 = *(type metadata accessor for PuzzleMonthArchive(0) - 8);
      sub_218B67378(v11, v11 + ((*(v16 + 80) + 32) & ~*(v16 + 80)), 1, v15);
      return v17;
    }

    else
    {
    }
  }

  else
  {
    sub_21925E7D4(v6, v10, type metadata accessor for PuzzleArchiveFetchResult);
    v11 = *v10;
    v13 = *(*v10 + 16);
    if (v13)
    {
      v18 = (2 * v13) | 1;
      v19 = *(type metadata accessor for PuzzleMonthArchive(0) - 8);
      sub_218B67378(v11, v11 + ((*(v19 + 80) + 32) & ~*(v19 + 80)), 1, v18);
      v11 = v20;
    }

    else
    {
    }

    sub_21925E778(v10);
  }

  return v11;
}

uint64_t type metadata accessor for PuzzleFullArchiveTagFeedGroupEmitterCursor(uint64_t a1)
{
  result = qword_27CC18120;
  if (!qword_27CC18120)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21925E5F4(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_21925E9AC(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_21925E674(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_21925E9AC(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}