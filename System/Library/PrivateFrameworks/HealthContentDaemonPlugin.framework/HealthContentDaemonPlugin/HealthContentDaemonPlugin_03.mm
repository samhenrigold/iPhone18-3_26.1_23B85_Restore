void sub_2515410C0(uint64_t a1)
{
  sub_25154CFE0();
  if (v1 <= 0x3F)
  {
    sub_25153D964(319, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_2515411C0(319, &qword_27F43BD98, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2515411C0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t __swift_get_extra_inhabitant_index_199Tm(uint64_t a1, uint64_t a2, int *a3, unint64_t *a4, uint64_t (*a5)(uint64_t), unint64_t *a6, uint64_t (*a7)(uint64_t))
{
  v14 = sub_25154CFE0();
  if (*(*(v14 - 8) + 84) == a2)
  {
    v15 = v14;
    v16 = *(v14 - 8);
    v17 = a3[5];
LABEL_5:
    v19 = *(v16 + 48);

    return v19(a1 + v17, a2, v15);
  }

  sub_25153D964(0, a4, a5, MEMORY[0x277D83D88]);
  if (*(*(v18 - 8) + 84) == a2)
  {
    v15 = v18;
    v16 = *(v18 - 8);
    v17 = a3[6];
    goto LABEL_5;
  }

  sub_25153D964(0, a6, a7, MEMORY[0x277D83D88]);
  v22 = v21;
  v23 = *(*(v21 - 8) + 48);
  v24 = a1 + a3[7];

  return v23(v24, a2, v22);
}

uint64_t __swift_store_extra_inhabitant_index_200Tm(uint64_t a1, uint64_t a2, int a3, int *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), unint64_t *a7, uint64_t (*a8)(uint64_t))
{
  v16 = sub_25154CFE0();
  if (*(*(v16 - 8) + 84) == a3)
  {
    v17 = v16;
    v18 = *(v16 - 8);
    v19 = a4[5];
LABEL_5:
    v21 = *(v18 + 56);

    return v21(a1 + v19, a2, a2, v17);
  }

  sub_25153D964(0, a5, a6, MEMORY[0x277D83D88]);
  if (*(*(v20 - 8) + 84) == a3)
  {
    v17 = v20;
    v18 = *(v20 - 8);
    v19 = a4[6];
    goto LABEL_5;
  }

  sub_25153D964(0, a7, a8, MEMORY[0x277D83D88]);
  v24 = v23;
  v25 = *(*(v23 - 8) + 56);
  v26 = a1 + a4[7];

  return v25(v26, a2, a2, v24);
}

void sub_2515415D4(uint64_t a1)
{
  sub_25154CFE0();
  if (v1 <= 0x3F)
  {
    sub_25153D964(319, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_25153D964(319, &qword_27F43C6A8, type metadata accessor for ProtoImageProps, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_251541764(uint64_t a1)
{
  sub_25154CFE0();
  if (v1 <= 0x3F)
  {
    sub_25153D964(319, &qword_27F43BFE8, type metadata accessor for ProtoLocalizedTextProps, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_25153D964(319, &qword_27F43C6B0, type metadata accessor for ProtoVideoProps, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_251541888(uint64_t a1)
{
  sub_25153D964(319, &qword_27F43CCA8, type metadata accessor for ProtoTableProps.ColumnHeader, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_25153D964(319, &qword_27F43CCB0, type metadata accessor for ProtoTableProps.Column, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      sub_25154CFE0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_151Tm(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  v10 = sub_25154CFE0();
  v11 = *(v10 - 8);
  if (*(v11 + 84) == a2)
  {
    v12 = v10;
    v13 = *(v11 + 48);
    v14 = a1 + *(a3 + 20);

    return v13(v14, a2, v12);
  }

  else
  {
    sub_25153D964(0, a4, a5, MEMORY[0x277D83D88]);
    v17 = v16;
    v18 = *(*(v16 - 8) + 48);
    v19 = a1 + *(a3 + 24);

    return v18(v19, a2, v17);
  }
}

uint64_t __swift_store_extra_inhabitant_index_152Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, unint64_t *a5, uint64_t (*a6)(uint64_t))
{
  v12 = sub_25154CFE0();
  v13 = *(v12 - 8);
  if (*(v13 + 84) == a3)
  {
    v14 = v12;
    v15 = *(v13 + 56);
    v16 = a1 + *(a4 + 20);

    return v15(v16, a2, a2, v14);
  }

  else
  {
    sub_25153D964(0, a5, a6, MEMORY[0x277D83D88]);
    v19 = v18;
    v20 = *(*(v18 - 8) + 56);
    v21 = a1 + *(a4 + 24);

    return v20(v21, a2, a2, v19);
  }
}

void sub_251541C28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t (*a6)(uint64_t))
{
  sub_25154CFE0();
  if (v8 <= 0x3F)
  {
    sub_25153D964(319, a5, a6, MEMORY[0x277D83D88]);
    if (v9 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_251541D28(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  sub_25153D964(319, a4, a5, MEMORY[0x277D83940]);
  if (v5 <= 0x3F)
  {
    sub_25154CFE0();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_251541DC8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_251541E24(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void sub_251541E24(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_25153D964(255, a3, a4, MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_251541E9C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_25153D964(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_251541F0C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_25153D964(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_251541F8C(uint64_t a1)
{
  if (!qword_27F43CDE0)
  {
    type metadata accessor for ProtoComponent.OneOf_Props(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F43CDE0);
    }
  }
}

uint64_t sub_251541FF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_251542190()
{

  v1 = sub_2514F17E0(v0);

  return v1;
}

uint64_t sub_2515421D4()
{
  v1 = *(v0 + OBJC_IVAR____TtC25HealthContentDaemonPlugin21HgQLSubgraphQueryNode_subgraphName);

  return v1;
}

char *sub_251542210(char a1)
{
  v3 = OBJC_IVAR____TtC25HealthContentDaemonPlugin21HgQLSubgraphQueryNode_subgraphCaptures;
  if (a1)
  {
    v3 = 32;
  }

  v4 = *(*(v1 + v3) + 16);
  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  v5 = ( + 40);
  v6 = MEMORY[0x277D84F90];
  do
  {
    v8 = *(v5 - 1);
    v7 = *v5;
    v17 = *v5;
    swift_bridgeObjectRetain_n();
    MEMORY[0x253078930](542327072, 0xE400000000000000);
    if (a1)
    {
      v9 = 0;
      v10 = 0xE000000000000000;
    }

    else
    {
      v15 = *(v1 + 16);
      v16 = *(v1 + 24);

      MEMORY[0x253078930](95, 0xE100000000000000);
      v9 = v15;
      v10 = v16;
    }

    MEMORY[0x253078930](v9, v10);

    MEMORY[0x253078930](v8, v7);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_2514EF00C(0, *(v6 + 2) + 1, 1, v6);
    }

    v12 = *(v6 + 2);
    v11 = *(v6 + 3);
    if (v12 >= v11 >> 1)
    {
      v6 = sub_2514EF00C((v11 > 1), v12 + 1, 1, v6);
    }

    *(v6 + 2) = v12 + 1;
    v13 = &v6[16 * v12];
    *(v13 + 4) = v8;
    *(v13 + 5) = v17;
    v5 += 2;
    --v4;
  }

  while (v4);

  return v6;
}

uint64_t sub_2515423BC()
{
}

uint64_t sub_251542400()
{
  v0 = sub_2515426C0();

  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for HgQLSubgraphQueryNode(uint64_t a1)
{
  result = qword_27F43CDE8;
  if (!qword_27F43CDE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_251542544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  sub_251548550(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v5 + OBJC_IVAR____TtC25HealthContentDaemonPlugin17HgQLTraversalNode_inNode) = 0;
  *(v5 + OBJC_IVAR____TtC25HealthContentDaemonPlugin17HgQLTraversalNode_attachmentNodes) = MEMORY[0x277D84F90];
  v5[2] = a1;
  v5[3] = a2;
  v5[4] = a3;
  sub_2514F6000(a4, v12);
  v13 = sub_25154CF80();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_2514F6080(v12);
    v15 = MEMORY[0x277D84F90];
  }

  else
  {
    v15 = sub_25154CF60();
    (*(v14 + 8))(v12, v13);
  }

  v16 = sub_2514F17E0(v15);

  v5[5] = v16;
  sub_2515486C8(a4, v5 + OBJC_IVAR____TtC25HealthContentDaemonPlugin17HgQLTraversalNode_triple);
  return v5;
}

void *sub_2515426C0()
{

  sub_2514F6080(v0 + OBJC_IVAR____TtC25HealthContentDaemonPlugin17HgQLTraversalNode_triple);

  v1 = *(v0 + OBJC_IVAR____TtC25HealthContentDaemonPlugin17HgQLTraversalNode_inNode);
  *(v0 + OBJC_IVAR____TtC25HealthContentDaemonPlugin17HgQLTraversalNode_inNode) = 0;

  if (v1)
  {
    do
    {

      if (!swift_isUniquelyReferenced_native())
      {
        break;
      }

      v2 = *(v1 + OBJC_IVAR____TtC25HealthContentDaemonPlugin17HgQLTraversalNode_inNode);
      swift_retain_n();

      v1 = v2;
    }

    while (v2);
  }

  return v0;
}

char *sub_25154277C()
{
  v1 = v0;
  v2 = sub_25154CDD0();
  v56 = *(v2 - 8);
  v57 = v2;
  MEMORY[0x28223BE20](v2);
  *&v55 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_25154CE30();
  v52 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v5 = (&v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_25154CDE0();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = (&v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v12 = (&v49 - v11);
  sub_251548550(0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_25154CF80();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = MEMORY[0x277D84FA0];
  v58 = v1;
  sub_2514F6000(v1 + OBJC_IVAR____TtC25HealthContentDaemonPlugin17HgQLTraversalNode_triple, v15);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_2514F6080(v15);
    return MEMORY[0x277D84FA0];
  }

  v50 = v17;
  v21 = *(v17 + 32);
  v51 = v16;
  v21(v19, v15, v16);
  v54 = v19;
  sub_25154CF50();
  v22 = v7 + 88;
  v60 = *(v7 + 88);
  v23 = v60(v12, v6);
  v61 = *MEMORY[0x277D11B18];
  v49 = v7;
  if (v23 == v61)
  {
    (*(v7 + 96))(v12, v6);
    sub_2514EF228(&v62, *v12, v12[1]);
  }

  else
  {
    (*(v7 + 8))(v12, v6);
  }

  v24 = v6;
  v26 = v56;
  v25 = v57;
  sub_25154CF70();
  v27 = v52;
  v28 = v53;
  if ((*(v52 + 88))(v5, v53) == *MEMORY[0x277D11B40])
  {
    (*(v27 + 96))(v5, v28);
    sub_2514EF228(&v62, *v5, v5[1]);
  }

  else
  {
    (*(v27 + 8))(v5, v28);
  }

  v29 = v55;
  sub_25154CF40();
  if ((v26[11])(v29, v25) == *MEMORY[0x277D11AE8])
  {
    v26[12](v29, v25);
    sub_2514EF228(&v62, *v29, v29[1]);
  }

  else
  {
    v26[1](v29, v25);
  }

  v30 = v58;
  v31 = OBJC_IVAR____TtC25HealthContentDaemonPlugin17HgQLTraversalNode_attachmentNodes;
  swift_beginAccess();
  v32 = *(v30 + v31);
  if (v32 >> 62)
  {
    v33 = sub_25154D4A0();
  }

  else
  {
    v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = v54;
  v34 = v51;
  v35 = v50;
  if (v33)
  {
    if (v33 < 1)
    {
      __break(1u);
      return result;
    }

    v36 = v32 & 0xC000000000000001;
    v56 = (v49 + 96);
    v57 = (v49 + 8);

    v37 = 0;
    v55 = xmmword_25154E670;
    v58 = v32 & 0xC000000000000001;
    v59 = v24;
    do
    {
      if (v36)
      {
        MEMORY[0x253078AC0](v37, v32);
      }

      else
      {
      }

      sub_25154CF50();
      v39 = v60(v10, v24);
      if (v39 == v61)
      {
        (*v56)(v10, v24);
        v40 = *v10;
        v41 = v10[1];
        sub_2514F619C(0, &qword_27F43BD88, MEMORY[0x277D84560]);
        inited = swift_initStackObject();
        *(inited + 16) = v55;
        v43 = v33;
        v44 = v10;
        v45 = v32;
        v46 = v22;
        *(inited + 32) = v40;
        v47 = inited + 32;
        *(inited + 40) = v41;
        v24 = v59;
        v38 = sub_25154872C(inited);
        swift_setDeallocating();
        v48 = v47;
        v22 = v46;
        v32 = v45;
        v10 = v44;
        v33 = v43;
        v36 = v58;
        sub_251548888(v48);
      }

      else
      {
        (*v57)(v10, v24);
        v38 = MEMORY[0x277D84FA0];
      }

      ++v37;
      sub_2514EE22C(v38);
    }

    while (v33 != v37);

    v34 = v51;
    v35 = v50;
    result = v54;
  }

  (*(v35 + 8))(result, v34);
  return v63;
}

uint64_t sub_251542E84(uint64_t a1)
{
  v2 = v1;
  v38 = a1;
  v3 = sub_25154CDE0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = (&v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_251548550(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25154CF80();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v34 - v15;
  sub_2514F6000(v2 + OBJC_IVAR____TtC25HealthContentDaemonPlugin17HgQLTraversalNode_triple, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_2514F6080(v9);
    sub_2514F231C();
    swift_allocError();
    *v17 = 0xD000000000000035;
    v17[1] = 0x8000000251553CD0;
    return swift_willThrow();
  }

  (*(v11 + 32))(v16, v9, v10);
  (*(v11 + 16))(v14, v38 + OBJC_IVAR____TtC25HealthContentDaemonPlugin22HgQLAttributeValueNode_privateTriple, v10);
  sub_25154CF50();
  if ((*(v4 + 88))(v6, v3) == *MEMORY[0x277D11B18])
  {
    (*(v4 + 96))(v6, v3);
    v19 = *v6;
    v20 = v6[1];
    v21 = sub_25154CF60();
    v22 = sub_2514F17E0(v21);

    v23 = sub_25154CF60();
    v24 = sub_2514F2AA8(v23, v22);

    v25 = v24[2];

    if (!v25)
    {
      v36 = 0;
      v37 = 0xE000000000000000;
      sub_25154D430();
      MEMORY[0x253078930](0xD00000000000002CLL, 0x8000000251553D10);
      MEMORY[0x253078930](v19, v20);

      MEMORY[0x253078930](0xD000000000000038, 0x8000000251553D40);
      v30 = v36;
      v31 = v37;
      sub_2514F231C();
      swift_allocError();
      *v32 = v30;
      v32[1] = v31;
      swift_willThrow();
      v33 = *(v11 + 8);
      v33(v14, v10);
      return (v33)(v16, v10);
    }

    v35 = v14;
  }

  else
  {
    v35 = v14;
    (*(v4 + 8))(v6, v3);
  }

  v26 = OBJC_IVAR____TtC25HealthContentDaemonPlugin17HgQLTraversalNode_attachmentNodes;
  swift_beginAccess();

  MEMORY[0x253078950](v27);
  if (*((*(v2 + v26) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + v26) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_25154D320();
  }

  sub_25154D340();
  swift_endAccess();
  swift_beginAccess();

  sub_2514EE22C(v28);
  swift_endAccess();
  v29 = *(v11 + 8);
  v29(v35, v10);
  return (v29)(v16, v10);
}

uint64_t sub_251543384(uint64_t a1)
{
  v2 = v1;
  sub_251548550(0);
  v49 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v50 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v47 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v47 - v10;
  v12 = sub_25154CF80();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtC25HealthContentDaemonPlugin17HgQLTraversalNode_triple;
  sub_2514F6000(a1 + OBJC_IVAR____TtC25HealthContentDaemonPlugin17HgQLTraversalNode_triple, v11);
  v48 = *(v13 + 48);
  v17 = v48(v11, 1, v12);
  v56 = v2;
  if (v17 == 1)
  {
    sub_2514F6080(v11);
  }

  else
  {
    (*(v13 + 32))(v15, v11, v12);
    v18 = sub_25154CF60();
    v19 = sub_2514F17E0(v18);
    v47 = a1;
    v20 = v19;

    v22 = (*(*v2 + 216))(v21);
    v23 = sub_2514F2C48(v22, v20);

    (*(v13 + 8))(v15, v12);
    v24 = v23[2];
    a1 = v47;

    if (v24)
    {
      *(a1 + OBJC_IVAR____TtC25HealthContentDaemonPlugin17HgQLTraversalNode_inNode) = v56;
    }
  }

  v52 = 0;
  v53 = 0xE000000000000000;
  sub_25154D430();
  v54 = v52;
  v55 = v53;
  MEMORY[0x253078930](0xD00000000000001BLL, 0x8000000251553C50);
  sub_2514F6000(a1 + v16, v9);
  v26 = sub_25154D270();
  v27 = a1;
  MEMORY[0x253078930](v26);

  MEMORY[0x253078930](0xD000000000000029, 0x8000000251553C70);
  v28 = v50;
  sub_2514F6000(v27 + v16, v50);
  if (v48(v28, 1, v12) == 1)
  {
    sub_2514F6080(v28);
    v29 = MEMORY[0x277D84F90];
  }

  else
  {
    v29 = sub_25154CF60();
    (*(v13 + 8))(v28, v12);
  }

  v30 = v56;
  v31 = MEMORY[0x253078980](v29, MEMORY[0x277D837D0]);
  v33 = v32;

  MEMORY[0x253078930](v31, v33);

  v34 = MEMORY[0x253078930](0xD00000000000002CLL, 0x8000000251553CA0);
  v35 = (*(*v30 + 216))(v34);
  v36 = v35;
  v37 = *(v35 + 16);
  if (v37)
  {
    v38 = sub_25154AEEC(*(v35 + 16), 0);
    v39 = sub_25154B434(&v52, v38 + 4, v37, v36);
    sub_2514F2298(v52);
    if (v39 == v37)
    {
      goto LABEL_12;
    }

    __break(1u);
  }

  v38 = MEMORY[0x277D84F90];
LABEL_12:
  v52 = v38;

  v40 = v51;
  sub_2514F0544(&v52);
  if (v40)
  {

    __break(1u);
  }

  else
  {

    v41 = MEMORY[0x253078980](v52, MEMORY[0x277D837D0]);
    v43 = v42;

    MEMORY[0x253078930](v41, v43);

    v44 = v54;
    v45 = v55;
    sub_2514F231C();
    swift_allocError();
    *v46 = v44;
    v46[1] = v45;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_25154387C(char **a1, int a2)
{
  v5 = sub_25154CDE0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251548550(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_25154CF80();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2514F6000(v2 + OBJC_IVAR____TtC25HealthContentDaemonPlugin17HgQLTraversalNode_triple, v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    return sub_2514F6080(v11);
  }

  (*(v13 + 32))(v15, v11, v12);
  sub_25154CF50();
  if ((*(v6 + 88))(v8, v5) == *MEMORY[0x277D11B20])
  {
    v42 = a2;
    v43 = v15;
    v44 = v12;
    v45 = a1;
    (*(v6 + 96))(v8, v5);
    v17 = *v8;
    v18 = *(*v8 + 16);
    v41[1] = v17;
    if (v18)
    {
      v19 = (v17 + 32);
      v20 = MEMORY[0x277D84F90];
      do
      {
        v21 = *v19++;
        v46 = v21;
        v22 = sub_25154D500();
        v24 = v23;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_2514EF00C(0, *(v20 + 2) + 1, 1, v20);
        }

        v26 = *(v20 + 2);
        v25 = *(v20 + 3);
        if (v26 >= v25 >> 1)
        {
          v20 = sub_2514EF00C((v25 > 1), v26 + 1, 1, v20);
        }

        *(v20 + 2) = v26 + 1;
        v27 = &v20[16 * v26];
        *(v27 + 4) = v22;
        *(v27 + 5) = v24;
        --v18;
      }

      while (v18);
    }

    else
    {
      v20 = MEMORY[0x277D84F90];
    }

    v46 = v20;
    sub_2514F619C(0, &qword_27F43BD70, MEMORY[0x277D83940]);
    sub_2514F22A0();
    v28 = sub_25154D230();
    v30 = v29;

    v46 = 0;
    v47 = 0xE000000000000000;
    if (v42)
    {
      if (v42 == 1)
      {
        v31 = 0x64695F65646F6ELL;
      }

      else
      {
        v31 = 0x5F7463656A627573;
      }

      if (v42 == 1)
      {
        v32 = 0xE700000000000000;
      }

      else
      {
        v32 = 0xEA00000000006469;
      }
    }

    else
    {
      v32 = 0xE500000000000000;
      v31 = 0x6469776F72;
    }

    v33 = v45;
    v34 = v43;
    MEMORY[0x253078930](v31, v32);

    MEMORY[0x253078930](0x28204E4920, 0xE500000000000000);
    MEMORY[0x253078930](v28, v30);

    MEMORY[0x253078930](41, 0xE100000000000000);
    v35 = v46;
    v36 = v47;
    v37 = *v33;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v37 = sub_2514EF00C(0, *(v37 + 2) + 1, 1, v37);
    }

    v39 = *(v37 + 2);
    v38 = *(v37 + 3);
    if (v39 >= v38 >> 1)
    {
      v37 = sub_2514EF00C((v38 > 1), v39 + 1, 1, v37);
    }

    result = (*(v13 + 8))(v34, v44);
    *(v37 + 2) = v39 + 1;
    v40 = &v37[16 * v39];
    *(v40 + 4) = v35;
    *(v40 + 5) = v36;
    *v33 = v37;
  }

  else
  {
    (*(v13 + 8))(v15, v12);
    return (*(v6 + 8))(v8, v5);
  }

  return result;
}

uint64_t sub_251543D58(char **a1, int a2)
{
  v100 = a2;
  v94 = a1;
  v3 = sub_25154CDD0();
  v98 = *(v3 - 8);
  v99 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v90 = &v90 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v92 = &v90 - v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v90 - v8;
  sub_251548550(0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v96 = &v90 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v90 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v90 - v16;
  v18 = sub_25154CF80();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v93 = &v90 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v95 = &v90 - v23;
  MEMORY[0x28223BE20](v22);
  v25 = &v90 - v24;
  v26 = OBJC_IVAR____TtC25HealthContentDaemonPlugin17HgQLTraversalNode_triple;
  v97 = v2;
  sub_2514F6000(v2 + OBJC_IVAR____TtC25HealthContentDaemonPlugin17HgQLTraversalNode_triple, v17);
  v27 = *(v19 + 48);
  if (v27(v17, 1, v18) != 1)
  {
    v91 = v27;
    (*(v19 + 32))(v25, v17, v18);
    sub_25154CF40();
    v31 = v98;
    v30 = v99;
    if ((*(v98 + 88))(v9, v99) != *MEMORY[0x277D11AF8])
    {
      (*(v19 + 8))(v25, v18);
      (*(v31 + 8))(v9, v30);
      v28 = v30;
      v29 = v31;
      v27 = v91;
      goto LABEL_13;
    }

    v95 = v25;
    v96 = v18;
    v97 = v19;
    (*(v31 + 96))(v9, v30);
    v32 = *v9;
    v33 = *(*v9 + 16);
    v99 = *v9;
    if (v33)
    {
      v34 = (v32 + 32);
      v35 = MEMORY[0x277D84F90];
      do
      {
        v36 = *v34++;
        v101[0] = v36;
        v37 = sub_25154D500();
        v39 = v38;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v35 = sub_2514EF00C(0, *(v35 + 2) + 1, 1, v35);
        }

        v41 = *(v35 + 2);
        v40 = *(v35 + 3);
        if (v41 >= v40 >> 1)
        {
          v35 = sub_2514EF00C((v40 > 1), v41 + 1, 1, v35);
        }

        *(v35 + 2) = v41 + 1;
        v42 = &v35[16 * v41];
        *(v42 + 4) = v37;
        *(v42 + 5) = v39;
        --v33;
      }

      while (v33);
    }

    else
    {
      v35 = MEMORY[0x277D84F90];
    }

    v101[0] = v35;
    sub_2514F619C(0, &qword_27F43BD70, MEMORY[0x277D83940]);
    sub_2514F22A0();
    v73 = sub_25154D230();
    v75 = v74;

    if (v100)
    {
      v46 = v94;
      v15 = v95;
      if (v100 != 2)
      {
        (*(v97 + 8))(v95, v96);
      }

      v101[0] = 0;
      v101[1] = 0xE000000000000000;
      sub_25154D430();

      strcpy(v101, "object_id IN (");
      HIBYTE(v101[1]) = -18;
      MEMORY[0x253078930](v73, v75);

      MEMORY[0x253078930](41, 0xE100000000000000);
      v48 = v101[0];
      v51 = v101[1];
      v52 = *v46;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
LABEL_51:
        v28 = *(v52 + 2);
        v53 = *(v52 + 3);
        v44 = v28 + 1;
        if (v28 < v53 >> 1)
        {
LABEL_52:
          result = (*(v97 + 8))(v15, v96);
LABEL_68:
          *(v52 + 2) = v44;
          v86 = &v52[16 * v28];
          *(v86 + 4) = v48;
          *(v86 + 5) = v51;
          *v46 = v52;
          return result;
        }

LABEL_74:
        v52 = sub_2514EF00C((v53 > 1), v44, 1, v52);
        goto LABEL_52;
      }
    }

    else
    {
      strcpy(v101, "rowid IN (");
      BYTE3(v101[1]) = 0;
      HIDWORD(v101[1]) = -369098752;
      MEMORY[0x253078930](v73, v75);

      MEMORY[0x253078930](41, 0xE100000000000000);
      v48 = v101[0];
      v51 = v101[1];
      v46 = v94;
      v52 = *v94;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v15 = v95;
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_51;
      }
    }

    v52 = sub_2514EF00C(0, *(v52 + 2) + 1, 1, v52);
    goto LABEL_51;
  }

  sub_2514F6080(v17);
  v29 = v98;
  v28 = v99;
LABEL_13:
  v43 = v97;
  sub_2514F6000(v97 + v26, v15);
  if (v27(v15, 1, v18) == 1)
  {
    sub_2514F6080(v15);
LABEL_30:
    v60 = v43 + v26;
    v61 = v96;
    sub_2514F6000(v60, v96);
    if (v27(v61, 1, v18) == 1)
    {
      return sub_2514F6080(v61);
    }

    v44 = v93;
    (*(v19 + 32))(v93, v61, v18);
    v63 = v90;
    sub_25154CF40();
    if ((*(v29 + 88))(v63, v28) != *MEMORY[0x277D11B08])
    {
      (*(v19 + 8))(v44, v18);
      return (*(v29 + 8))(v63, v28);
    }

    v96 = v18;
    v97 = v19;
    v64 = *(v29 + 96);
    v46 = (v29 + 96);
    v64(v63, v28);
    v48 = *v63;
    v65 = *(*v63 + 16);
    if (!v65)
    {
      v52 = MEMORY[0x277D84F90];
LABEL_63:

      v101[0] = 40;
      v101[1] = 0xE100000000000000;
      v102 = v52;
      sub_2514F619C(0, &qword_27F43BD70, MEMORY[0x277D83940]);
      sub_2514F22A0();
      v82 = sub_25154D230();
      v84 = v83;

      MEMORY[0x253078930](v82, v84);

      MEMORY[0x253078930](41, 0xE100000000000000);
      v48 = v101[0];
      v51 = v101[1];
      v46 = v94;
      v52 = *v94;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v52 = sub_2514EF00C(0, *(v52 + 2) + 1, 1, v52);
      }

      v28 = *(v52 + 2);
      v85 = *(v52 + 3);
      v44 = v28 + 1;
      if (v28 >= v85 >> 1)
      {
        v52 = sub_2514EF00C((v85 > 1), v28 + 1, 1, v52);
      }

      result = (*(v97 + 8))(v93, v96);
      goto LABEL_68;
    }

    v66 = 0;
    v51 = (v48 + 40);
    v52 = MEMORY[0x277D84F90];
    while (1)
    {
      v53 = *(v48 + 16);
      if (v66 >= v53)
      {
        break;
      }

      v68 = *(v51 - 1);
      v67 = *v51;
      v101[0] = 0;
      v101[1] = 0xE000000000000000;
      if (v100 == 1)
      {
        v70 = 0xE500000000000000;
        v69 = 0x65756C6176;
      }

      else
      {
        if (v100 != 2)
        {

          sub_2514F231C();
          swift_allocError();
          *v88 = 0xD00000000000002ELL;
          v88[1] = 0x8000000251553BC0;
          swift_willThrow();
          (*(v97 + 8))(v93, v96);
        }

        v69 = 0x695F7463656A626FLL;
        v70 = 0xE900000000000064;
      }

      MEMORY[0x253078930](v69, v70);

      MEMORY[0x253078930](0x2720454B494C20, 0xE700000000000000);
      MEMORY[0x253078930](v68, v67);

      MEMORY[0x253078930](39, 0xE100000000000000);
      v28 = v101[0];
      v46 = v101[1];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v52 = sub_2514EF00C(0, *(v52 + 2) + 1, 1, v52);
      }

      v15 = *(v52 + 2);
      v71 = *(v52 + 3);
      v44 = v15 + 1;
      if (v15 >= v71 >> 1)
      {
        v52 = sub_2514EF00C((v71 > 1), v15 + 1, 1, v52);
      }

      ++v66;
      *(v52 + 2) = v44;
      v72 = &v52[16 * v15];
      *(v72 + 4) = v28;
      *(v72 + 5) = v46;
      v51 += 2;
      if (v65 == v66)
      {
        goto LABEL_63;
      }
    }

LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v91 = v27;
  v44 = v95;
  (*(v19 + 32))(v95, v15, v18);
  v45 = v92;
  sub_25154CF40();
  if ((*(v29 + 88))(v45, v28) != *MEMORY[0x277D11B00])
  {
    (*(v19 + 8))(v44, v18);
    (*(v29 + 8))(v45, v28);
    v43 = v97;
    v27 = v91;
    goto LABEL_30;
  }

  v96 = v18;
  v97 = v19;
  v47 = *(v29 + 96);
  v46 = (v29 + 96);
  v47(v45, v28);
  v48 = *v45;
  v49 = *(*v45 + 16);
  if (!v49)
  {
    v52 = MEMORY[0x277D84F90];
LABEL_57:

    v101[0] = 40;
    v101[1] = 0xE100000000000000;
    v102 = v52;
    sub_2514F619C(0, &qword_27F43BD70, MEMORY[0x277D83940]);
    sub_2514F22A0();
    v77 = sub_25154D230();
    v79 = v78;

    MEMORY[0x253078930](v77, v79);

    MEMORY[0x253078930](41, 0xE100000000000000);
    v48 = v101[0];
    v51 = v101[1];
    v46 = v94;
    v52 = *v94;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v52 = sub_2514EF00C(0, *(v52 + 2) + 1, 1, v52);
    }

    v80 = v95;
    v28 = *(v52 + 2);
    v81 = *(v52 + 3);
    v44 = v28 + 1;
    if (v28 >= v81 >> 1)
    {
      v89 = v95;
      v52 = sub_2514EF00C((v81 > 1), v28 + 1, 1, v52);
      v80 = v89;
    }

    result = (*(v97 + 8))(v80, v96);
    goto LABEL_68;
  }

  v50 = 0;
  v51 = (v48 + 40);
  v52 = MEMORY[0x277D84F90];
  while (1)
  {
    v53 = *(v48 + 16);
    if (v50 >= v53)
    {
      __break(1u);
      goto LABEL_73;
    }

    v55 = *(v51 - 1);
    v54 = *v51;
    v101[0] = 0;
    v101[1] = 0xE000000000000000;
    if (v100 == 1)
    {
      v57 = 0xE500000000000000;
      v56 = 0x65756C6176;
      goto LABEL_23;
    }

    if (v100 != 2)
    {
      break;
    }

    v56 = 0x695F7463656A626FLL;
    v57 = 0xE900000000000064;
LABEL_23:

    MEMORY[0x253078930](v56, v57);

    MEMORY[0x253078930](0x2720454B494C20, 0xE700000000000000);
    MEMORY[0x253078930](v55, v54);

    MEMORY[0x253078930](39, 0xE100000000000000);
    v28 = v101[0];
    v46 = v101[1];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v52 = sub_2514EF00C(0, *(v52 + 2) + 1, 1, v52);
    }

    v15 = *(v52 + 2);
    v58 = *(v52 + 3);
    v44 = v15 + 1;
    if (v15 >= v58 >> 1)
    {
      v52 = sub_2514EF00C((v58 > 1), v15 + 1, 1, v52);
    }

    ++v50;
    *(v52 + 2) = v44;
    v59 = &v52[16 * v15];
    *(v59 + 4) = v28;
    *(v59 + 5) = v46;
    v51 += 2;
    if (v49 == v50)
    {
      goto LABEL_57;
    }
  }

  sub_2514F231C();
  swift_allocError();
  *v87 = 0xD00000000000002ELL;
  v87[1] = 0x8000000251553BC0;
  swift_willThrow();
  (*(v97 + 8))(v95, v96);
}

uint64_t sub_251544B58(char **a1, int a2, _DWORD *a3)
{
  v48 = a2;
  v51 = a1;
  v6 = sub_25154CE30();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_251548550(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_25154CF80();
  MEMORY[0x28223BE20](v13);
  v15 = v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v3 + OBJC_IVAR____TtC25HealthContentDaemonPlugin17HgQLTraversalNode_triple;
  v18 = v17;
  sub_2514F6000(v16, v12);
  if ((*(v18 + 48))(v12, 1, v13) == 1)
  {
    return sub_2514F6080(v12);
  }

  (*(v18 + 32))(v15, v12, v13);
  sub_25154CF70();
  if ((*(v7 + 88))(v9, v6) == *a3)
  {
    v45 = v15;
    v46 = v18;
    v44[0] = v4;
    (*(v7 + 96))(v9, v6);
    v20 = *v9;

    v21 = *(v20 + 16);
    v47 = v13;
    v44[1] = v20;
    if (v21)
    {
      v22 = (v20 + 32);
      v23 = MEMORY[0x277D84F90];
      do
      {
        v24 = *v22++;
        v49 = v24;
        v25 = sub_25154D500();
        v27 = v26;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v23 = sub_2514EF00C(0, *(v23 + 2) + 1, 1, v23);
        }

        v29 = *(v23 + 2);
        v28 = *(v23 + 3);
        if (v29 >= v28 >> 1)
        {
          v23 = sub_2514EF00C((v28 > 1), v29 + 1, 1, v23);
        }

        *(v23 + 2) = v29 + 1;
        v30 = &v23[16 * v29];
        *(v30 + 4) = v25;
        *(v30 + 5) = v27;
        --v21;
      }

      while (v21);
    }

    else
    {
      v23 = MEMORY[0x277D84F90];
    }

    v49 = v23;
    sub_2514F619C(0, &qword_27F43BD70, MEMORY[0x277D83940]);
    sub_2514F22A0();
    v31 = sub_25154D230();
    v33 = v32;

    v49 = 0;
    v50 = 0xE000000000000000;
    if (v48)
    {
      if (v48 == 1)
      {
        v34 = 0x7475626972747461;
      }

      else
      {
        v34 = 0xD000000000000011;
      }

      if (v48 == 1)
      {
        v35 = 0xEE00657079745F65;
      }

      else
      {
        v35 = 0x8000000251553BF0;
      }

      v36 = v45;
      MEMORY[0x253078930](v34, v35);

      MEMORY[0x253078930](0x28204E4920, 0xE500000000000000);
      MEMORY[0x253078930](v31, v33);

      MEMORY[0x253078930](41, 0xE100000000000000);
      v37 = v49;
      v38 = v50;
      v39 = *v51;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v39 = sub_2514EF00C(0, *(v39 + 2) + 1, 1, v39);
      }

      v41 = *(v39 + 2);
      v40 = *(v39 + 3);
      if (v41 >= v40 >> 1)
      {
        v39 = sub_2514EF00C((v40 > 1), v41 + 1, 1, v39);
      }

      result = (*(v46 + 8))(v36, v47);
      *(v39 + 2) = v41 + 1;
      v42 = &v39[16 * v41];
      *(v42 + 4) = v37;
      *(v42 + 5) = v38;
      *v51 = v39;
    }

    else
    {

      sub_2514F231C();
      swift_allocError();
      *v43 = 0xD000000000000031;
      v43[1] = 0x8000000251553C10;
      swift_willThrow();
      return (*(v46 + 8))(v45, v47);
    }
  }

  else
  {
    (*(v18 + 8))(v15, v13);
    return (*(v7 + 8))(v9, v6);
  }

  return result;
}

uint64_t sub_2515450B4(char **a1)
{
  v89 = a1;
  v85 = 0;
  v2 = sub_25154CDE0();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v90 = &v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v76 - v7;
  v101 = MEMORY[0x277D84FA0];
  v9 = *(v1 + OBJC_IVAR____TtC25HealthContentDaemonPlugin17HgQLTraversalNode_inNode);
  v82 = v1;
  v86 = v6;
  v83 = &v76 - v7;
  if (!v9)
  {
    goto LABEL_17;
  }

  v96 = v3;
  swift_beginAccess();
  v10 = *(v1 + 40);
  v11 = *(*v9 + 216);
  swift_retain_n();

  v13 = v11(v12);
  v14 = sub_2514F2C48(v13, v10);

  v15 = v14[2];
  if (!v15)
  {
    goto LABEL_5;
  }

  v16 = sub_25154AEEC(v14[2], 0);
  v17 = sub_25154B434(&v97, v16 + 4, v15, v14);
  v18 = v97;

  sub_2514F2298(v18);
  if (v17 != v15)
  {
    __break(1u);
LABEL_5:
    v16 = MEMORY[0x277D84F90];
  }

  v97 = v16;
  v19 = v85;
  sub_2514F0544(&v97);
  v85 = v19;
  if (v19)
  {
LABEL_72:

    __break(1u);
    return result;
  }

  v20 = *(v97 + 2);
  if (v20)
  {
    v21 = *v89;
    v95 = v97;
    v22 = (v97 + 40);
    do
    {
      v23 = *(v22 - 1);
      v24 = *v22;
      v97 = 0;
      v98 = 0xE000000000000000;

      sub_25154D430();
      v25 = v9[2];
      v26 = v9[3];

      v97 = v25;
      v98 = v26;
      MEMORY[0x253078930](46, 0xE100000000000000);
      v28 = v9[2];
      v27 = v9[3];

      MEMORY[0x253078930](v28, v27);

      MEMORY[0x253078930](95, 0xE100000000000000);
      MEMORY[0x253078930](v23, v24);
      MEMORY[0x253078930](0x20544F4E20534920, 0xEC0000004C4C554ELL);
      v29 = v97;
      v30 = v98;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_2514EF00C(0, *(v21 + 2) + 1, 1, v21);
      }

      v32 = *(v21 + 2);
      v31 = *(v21 + 3);
      if (v32 >= v31 >> 1)
      {
        v21 = sub_2514EF00C((v31 > 1), v32 + 1, 1, v21);
      }

      *(v21 + 2) = v32 + 1;
      v33 = &v21[16 * v32];
      *(v33 + 4) = v29;
      *(v33 + 5) = v30;
      sub_2514EF228(&v97, v23, v24);

      v22 += 2;
      --v20;
    }

    while (v20);

    *v89 = v21;
  }

  else
  {
  }

  v1 = v82;
  v2 = v86;
  v8 = v83;
  v3 = v96;
LABEL_17:
  v34 = OBJC_IVAR____TtC25HealthContentDaemonPlugin17HgQLTraversalNode_attachmentNodes;
  swift_beginAccess();
  v35 = *(v1 + v34);
  if (v35 >> 62)
  {
    goto LABEL_71;
  }

  v36 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_19:

  swift_beginAccess();
  if (v36)
  {
    v37 = 0;
    v81 = v35 & 0xC000000000000001;
    v80 = v35 & 0xFFFFFFFFFFFFFF8;
    v79 = v35 + 32;
    v94 = (v3 + 88);
    v93 = *MEMORY[0x277D11B18];
    v88 = (v3 + 8);
    v87 = (v3 + 96);
    v76 = xmmword_25154E670;
    v77 = v35;
    v78 = v36;
    do
    {
      if (v81)
      {
        v38 = MEMORY[0x253078AC0](v37, v35);
        v39 = __OFADD__(v37, 1);
        v40 = v37 + 1;
        if (v39)
        {
          goto LABEL_66;
        }
      }

      else
      {
        if (v37 >= *(v80 + 16))
        {
          goto LABEL_69;
        }

        v38 = *(v79 + 8 * v37);

        v39 = __OFADD__(v37, 1);
        v40 = v37 + 1;
        if (v39)
        {
LABEL_66:
          __break(1u);
          break;
        }
      }

      v84 = v40;
      v41 = *(v1 + 40);
      v42 = OBJC_IVAR____TtC25HealthContentDaemonPlugin22HgQLAttributeValueNode_privateTriple;

      v92 = v42;
      sub_25154CF50();
      v91 = *v94;
      v43 = v91(v8, v2);
      if (v43 == v93)
      {
        (*v87)(v8, v2);
        v44 = *v8;
        v45 = *(v8 + 8);
        sub_2514F619C(0, &qword_27F43BD88, MEMORY[0x277D84560]);
        inited = swift_initStackObject();
        *(inited + 16) = v76;
        *(inited + 32) = v44;
        v47 = inited + 32;
        *(inited + 40) = v45;
        v48 = sub_25154872C(inited);
        swift_setDeallocating();
        sub_251548888(v47);
      }

      else
      {
        (*v88)(v8, v2);
        v48 = MEMORY[0x277D84FA0];
      }

      v1 = sub_2514F2C48(v48, v41);

      v3 = *(v1 + 16);
      if (v3)
      {
        sub_2514F619C(0, &qword_27F43BD88, MEMORY[0x277D84560]);
        v49 = swift_allocObject();
        v50 = _swift_stdlib_malloc_size(v49);
        v51 = v50 - 32;
        if (v50 < 32)
        {
          v51 = v50 - 17;
        }

        v49[2] = v3;
        v49[3] = 2 * (v51 >> 4);
        v96 = sub_25154B434(&v97, v49 + 4, v3, v1);
        v52 = v97;
        v2 = v99;
        v8 = v100;

        sub_2514F2298(v52);
        if (v96 != v3)
        {
          goto LABEL_70;
        }

        v8 = v83;
      }

      else
      {
        v49 = MEMORY[0x277D84F90];
      }

      v97 = v49;
      v53 = v85;
      sub_2514F0544(&v97);
      v85 = v53;
      if (v53)
      {
        goto LABEL_72;
      }

      v3 = v97;
      v96 = *(v97 + 2);
      if (v96)
      {
        v8 = 0;
        v35 = v101;
        v95 = v97 + 32;
        v54 = v101 + 56;
        v2 = v86;
        while (1)
        {
          if (v8 >= *(v3 + 2))
          {
            __break(1u);
LABEL_69:
            __break(1u);
LABEL_70:
            __break(1u);
LABEL_71:
            v36 = sub_25154D4A0();
            goto LABEL_19;
          }

          v55 = &v95[16 * v8];
          v57 = *v55;
          v56 = *(v55 + 1);
          if (*(v35 + 16))
          {
            sub_25154D590();

            sub_25154D2B0();
            v58 = sub_25154D5B0();
            v59 = -1 << *(v35 + 32);
            v60 = v58 & ~v59;
            if ((*(v54 + ((v60 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v60))
            {
              v1 = ~v59;
              while (1)
              {
                v61 = (*(v35 + 48) + 16 * v60);
                v62 = *v61 == v57 && v61[1] == v56;
                if (v62 || (sub_25154D520() & 1) != 0)
                {
                  break;
                }

                v60 = (v60 + 1) & v1;
                if (((*(v54 + ((v60 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v60) & 1) == 0)
                {
                  goto LABEL_52;
                }
              }

LABEL_62:

              goto LABEL_39;
            }
          }

          else
          {
          }

LABEL_52:
          v1 = v38 + v92;
          v63 = v90;
          sub_25154CF50();
          v64 = v91(v63, v2);
          if (v64 == v93)
          {
            (*v87)(v63, v2);
            v1 = v63[1];
            if (*v63 == v57 && v1 == v56)
            {

LABEL_57:
              v97 = 0;
              v98 = 0xE000000000000000;
              sub_25154D430();
              v67 = *(v38 + 16);
              v66 = *(v38 + 24);

              v97 = v67;
              v98 = v66;
              MEMORY[0x253078930](46, 0xE100000000000000);
              v68 = *(v38 + 16);
              v69 = *(v38 + 24);

              MEMORY[0x253078930](v68, v69);

              MEMORY[0x253078930](95, 0xE100000000000000);
              MEMORY[0x253078930](v57, v56);

              MEMORY[0x253078930](0x20544F4E20534920, 0xEC0000004C4C554ELL);
              v70 = v97;
              v71 = v98;
              v1 = *v89;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v1 = sub_2514EF00C(0, *(v1 + 16) + 1, 1, v1);
              }

              v73 = *(v1 + 16);
              v72 = *(v1 + 24);
              if (v73 >= v72 >> 1)
              {
                v1 = sub_2514EF00C((v72 > 1), v73 + 1, 1, v1);
              }

              *(v1 + 16) = v73 + 1;
              v74 = v1 + 16 * v73;
              *(v74 + 32) = v70;
              *(v74 + 40) = v71;
              *v89 = v1;
              v2 = v86;
              goto LABEL_39;
            }

            v65 = sub_25154D520();

            if (v65)
            {
              goto LABEL_57;
            }

            goto LABEL_62;
          }

          (*v88)(v63, v2);
LABEL_39:
          if (++v8 == v96)
          {

            v8 = v83;
            v35 = v77;
            goto LABEL_22;
          }
        }
      }

      v2 = v86;
LABEL_22:
      v37 = v84;
      v1 = v82;
    }

    while (v84 != v78);
  }
}

uint64_t sub_251545BD4()
{
  swift_beginAccess();
  v1 = *(v0 + 40);
  v2 = *(v0 + OBJC_IVAR____TtC25HealthContentDaemonPlugin17HgQLTraversalNode_inNode);

  if (v2)
  {
    do
    {
      swift_beginAccess();

      sub_2514EE22C(v3);
      v4 = *(v2 + OBJC_IVAR____TtC25HealthContentDaemonPlugin17HgQLTraversalNode_inNode);

      v2 = v4;
    }

    while (v4);
  }

  return v1;
}

char *sub_251545C88()
{
  v1 = sub_25154277C();
  v2 = *(v0 + OBJC_IVAR____TtC25HealthContentDaemonPlugin17HgQLTraversalNode_inNode);

  if (!v2)
  {
    return v1;
  }

  do
  {

    v3 = sub_25154277C();
    sub_2514EE22C(v3);

    v4 = *(v2 + OBJC_IVAR____TtC25HealthContentDaemonPlugin17HgQLTraversalNode_inNode);

    v2 = v4;
  }

  while (v4);
  return v1;
}

uint64_t sub_251545D24()
{
  v0 = sub_2515488DC();
  if (v0 > 1)
  {
    if (v0 == 2)
    {
      return 0x6E6F6974616C6572;
    }

    else
    {
      return 0;
    }
  }

  else if (v0)
  {
    return 0x7475626972747461;
  }

  else
  {
    return 0x7365646F6ELL;
  }
}

char *sub_251545DBC(int a1)
{
  v2 = v1;
  v197 = a1;
  v192 = sub_25154CDD0();
  v196 = *(v192 - 1);
  MEMORY[0x28223BE20](v192);
  v195 = (&v187 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v198 = sub_25154CE30();
  v200 = *(v198 - 1);
  v4 = MEMORY[0x28223BE20](v198);
  v193 = &v187 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v194 = &v187 - v7;
  MEMORY[0x28223BE20](v6);
  v9 = (&v187 - v8);
  v10 = sub_25154CDE0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = (&v187 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_251548550(0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v187 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_25154CF80();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v187 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2514F6000(v2 + OBJC_IVAR____TtC25HealthContentDaemonPlugin17HgQLTraversalNode_triple, v16);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_2514F6080(v16);
LABEL_5:
    sub_2514F231C();
    swift_allocError();
    *v22 = 0xD000000000000048;
    v22[1] = 0x8000000251553B70;
    return swift_willThrow();
  }

  (*(v18 + 32))(v20, v16, v17);
  v191 = v2;
  v21 = sub_2515488DC();
  if (v21 == 3)
  {
    (*(v18 + 8))(v20, v17);
    goto LABEL_5;
  }

  v24 = v21;
  v189 = v18;
  v190 = v17;
  v211 = MEMORY[0x277D84FA0];
  sub_25154CF50();
  v132 = (*(v11 + 88))(v13, v10) == *MEMORY[0x277D11B18];
  v188 = v20;
  if (v132)
  {
    (*(v11 + 96))(v13, v10);
    v25 = *v13;
    v26 = v13[1];
    v204 = 0;
    v205 = 0xE000000000000000;
    v30 = v198;
    if (v24)
    {
      if (v24 == 1)
      {
        v27 = 0x64695F65646F6ELL;
      }

      else
      {
        v27 = 0x5F7463656A627573;
      }

      if (v24 == 1)
      {
        v28 = 0xE700000000000000;
      }

      else
      {
        v28 = 0xEA00000000006469;
      }
    }

    else
    {
      v28 = 0xE500000000000000;
      v27 = 0x6469776F72;
    }

    MEMORY[0x253078930](v27, v28);

    MEMORY[0x253078930](542327072, 0xE400000000000000);
    if (v197)
    {
      v31 = 0;
      v32 = 0xE000000000000000;
    }

    else
    {
      v33 = *(v191 + 24);
      v209 = *(v191 + 16);
      v210 = v33;

      MEMORY[0x253078930](95, 0xE100000000000000);
      v31 = v209;
      v32 = v210;
    }

    MEMORY[0x253078930](v31, v32);

    v34 = v25;
    v35 = v25;
    v36 = v26;
    MEMORY[0x253078930](v35, v26);
    v37 = v204;
    v38 = v205;
    v39 = sub_2514EF00C(0, 1, 1, MEMORY[0x277D84F90]);
    v41 = *(v39 + 2);
    v40 = *(v39 + 3);
    v201 = v39;
    if (v41 >= v40 >> 1)
    {
      v201 = sub_2514EF00C((v40 > 1), v41 + 1, 1, v201);
    }

    v42 = v201;
    *(v201 + 2) = v41 + 1;
    v43 = &v42[16 * v41];
    *(v43 + 4) = v37;
    *(v43 + 5) = v38;
    sub_2514EF228(&v204, v34, v36);

    v29 = v188;
  }

  else
  {
    v29 = v20;
    (*(v11 + 8))(v13, v10);
    v201 = MEMORY[0x277D84F90];
    v30 = v198;
  }

  sub_25154CF70();
  v44 = v200;
  v45 = v200[11];
  if (v45(v9, v30) == *MEMORY[0x277D11B40])
  {
    (v44[12])(v9, v30);
    v46 = *v9;
    v47 = v9[1];
    v204 = 0;
    v205 = 0xE000000000000000;
    v48 = v190;
    if (!v24)
    {

      v53 = v29;
      v54 = 0x8000000251553C10;
      sub_2514F231C();
      swift_allocError();
      v56 = 0xD000000000000031;
LABEL_91:
      *v55 = v56;
      v55[1] = v54;
      swift_willThrow();
      (*(v189 + 8))(v53, v48);
      goto LABEL_92;
    }

    if (v24 == 1)
    {
      v49 = 0x7475626972747461;
    }

    else
    {
      v49 = 0xD000000000000011;
    }

    if (v24 == 1)
    {
      v50 = 0xEE00657079745F65;
    }

    else
    {
      v50 = 0x8000000251553BF0;
    }

    MEMORY[0x253078930](v49, v50);

    MEMORY[0x253078930](542327072, 0xE400000000000000);
    v187 = v45;
    if (v197)
    {
      v51 = 0;
      v52 = 0xE000000000000000;
    }

    else
    {
      v57 = *(v191 + 24);
      v209 = *(v191 + 16);
      v210 = v57;

      MEMORY[0x253078930](95, 0xE100000000000000);
      v51 = v209;
      v52 = v210;
    }

    MEMORY[0x253078930](v51, v52);

    v58 = v46;
    MEMORY[0x253078930](v46, v47);
    v59 = v204;
    v60 = v205;
    v61 = v201;
    v62 = v47;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v61 = sub_2514EF00C(0, *(v61 + 2) + 1, 1, v61);
    }

    v64 = *(v61 + 2);
    v63 = *(v61 + 3);
    v201 = v61;
    if (v64 >= v63 >> 1)
    {
      v201 = sub_2514EF00C((v63 > 1), v64 + 1, 1, v201);
    }

    v65 = v201;
    *(v201 + 2) = v64 + 1;
    v66 = &v65[16 * v64];
    *(v66 + 4) = v59;
    *(v66 + 5) = v60;
    sub_2514EF228(&v204, v58, v62);

    v44 = v200;
    v45 = v187;
    v29 = v188;
  }

  else
  {
    (v44[1])(v9, v30);
  }

  v67 = v194;
  sub_25154CF70();
  if (v45(v67, v30) != *MEMORY[0x277D11B38])
  {
    LODWORD(v198) = v24;
    (v44[1])(v67, v30);
LABEL_53:
    v75 = v195;
    v74 = v196;
    v76 = v193;
    goto LABEL_60;
  }

  (v44[12])(v67, v30);
  v68 = *(v67 + 1);
  v69 = *(v67 + 2);

  if (!v69)
  {
    LODWORD(v198) = v24;
    goto LABEL_53;
  }

  v204 = 0;
  v205 = 0xE000000000000000;
  if (!v24)
  {
LABEL_72:

    sub_2514F231C();
    swift_allocError();
    *v93 = 0xD000000000000031;
    v93[1] = 0x8000000251553C10;
    swift_willThrow();
    (*(v189 + 8))(v29, v190);
LABEL_92:
  }

  LODWORD(v198) = v24;
  if (v24 == 1)
  {
    v70 = 0x7475626972747461;
  }

  else
  {
    v70 = 0xD000000000000011;
  }

  if (v24 == 1)
  {
    v71 = 0xEE00657079745F65;
  }

  else
  {
    v71 = 0x8000000251553BF0;
  }

  MEMORY[0x253078930](v70, v71);

  MEMORY[0x253078930](542327072, 0xE400000000000000);
  v187 = v45;
  if (v197)
  {
    v72 = 0;
    v73 = 0xE000000000000000;
  }

  else
  {
    v77 = *(v191 + 24);
    v209 = *(v191 + 16);
    v210 = v77;

    MEMORY[0x253078930](95, 0xE100000000000000);
    v72 = v209;
    v73 = v210;
  }

  MEMORY[0x253078930](v72, v73);

  MEMORY[0x253078930](v68, v69);
  v78 = v204;
  v79 = v205;
  v80 = v201;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_184;
  }

  while (1)
  {
    v82 = *(v80 + 2);
    v81 = *(v80 + 3);
    v201 = v80;
    if (v82 >= v81 >> 1)
    {
      v201 = sub_2514EF00C((v81 > 1), v82 + 1, 1, v201);
    }

    v83 = v201;
    *(v201 + 2) = v82 + 1;
    v84 = &v83[16 * v82];
    *(v84 + 4) = v78;
    *(v84 + 5) = v79;
    sub_2514EF228(&v204, v68, v69);

    v75 = v195;
    v74 = v196;
    v44 = v200;
    v76 = v193;
    v45 = v187;
LABEL_60:
    sub_25154CF70();
    if (v45(v76, v30) == *MEMORY[0x277D11B30])
    {
      (v44[12])(v76, v30);
      v85 = *(v76 + 1);
      v86 = *(v76 + 2);

      v87 = v199;
      if (v86)
      {
        v204 = 0;
        v205 = 0xE000000000000000;
        if (!v198)
        {
          goto LABEL_72;
        }

        if (v198 == 1)
        {
          v88 = 0x7475626972747461;
        }

        else
        {
          v88 = 0xD000000000000011;
        }

        if (v198 == 1)
        {
          v89 = 0xEE00657079745F65;
        }

        else
        {
          v89 = 0x8000000251553BF0;
        }

        MEMORY[0x253078930](v88, v89);

        MEMORY[0x253078930](542327072, 0xE400000000000000);
        v90 = v29;
        if (v197)
        {
          v91 = 0;
          v92 = 0xE000000000000000;
        }

        else
        {
          v94 = *(v191 + 24);
          v209 = *(v191 + 16);
          v210 = v94;

          MEMORY[0x253078930](95, 0xE100000000000000);
          v91 = v209;
          v92 = v210;
        }

        MEMORY[0x253078930](v91, v92);

        MEMORY[0x253078930](v85, v86);
        v95 = v204;
        v96 = v205;
        v97 = v201;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v97 = sub_2514EF00C(0, *(v97 + 2) + 1, 1, v97);
        }

        v99 = *(v97 + 2);
        v98 = *(v97 + 3);
        v201 = v97;
        if (v99 >= v98 >> 1)
        {
          v201 = sub_2514EF00C((v98 > 1), v99 + 1, 1, v201);
        }

        v100 = v201;
        *(v201 + 2) = v99 + 1;
        v101 = &v100[16 * v99];
        *(v101 + 4) = v95;
        *(v101 + 5) = v96;
        sub_2514EF228(&v204, v85, v86);

        v29 = v90;
        v75 = v195;
        v74 = v196;
      }
    }

    else
    {
      (v44[1])(v76, v30);
      v87 = v199;
    }

    sub_25154CF40();
    v102 = v192;
    if ((*(v74 + 88))(v75, v192) == *MEMORY[0x277D11AE8])
    {
      (*(v74 + 96))(v75, v102);
      v104 = *v75;
      v103 = v75[1];
      v204 = 0;
      v205 = 0xE000000000000000;
      v48 = v190;
      if (!v198)
      {

        v53 = v29;
        v54 = 0x8000000251553BC0;
        sub_2514F231C();
        swift_allocError();
        v56 = 0xD00000000000002ELL;
        goto LABEL_91;
      }

      if (v198 == 1)
      {
        v105 = 0x65756C6176;
      }

      else
      {
        v105 = 0x695F7463656A626FLL;
      }

      if (v198 == 1)
      {
        v106 = 0xE500000000000000;
      }

      else
      {
        v106 = 0xE900000000000064;
      }

      MEMORY[0x253078930](v105, v106);

      MEMORY[0x253078930](542327072, 0xE400000000000000);
      if (v197)
      {
        v107 = 0;
        v108 = 0xE000000000000000;
      }

      else
      {
        v109 = *(v191 + 24);
        v209 = *(v191 + 16);
        v210 = v109;

        MEMORY[0x253078930](95, 0xE100000000000000);
        v107 = v209;
        v108 = v210;
      }

      MEMORY[0x253078930](v107, v108);

      MEMORY[0x253078930](v104, v103);
      v110 = v204;
      v111 = v205;
      v112 = v201;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v112 = sub_2514EF00C(0, *(v112 + 2) + 1, 1, v112);
      }

      v114 = *(v112 + 2);
      v113 = *(v112 + 3);
      v201 = v112;
      if (v114 >= v113 >> 1)
      {
        v201 = sub_2514EF00C((v113 > 1), v114 + 1, 1, v201);
      }

      v115 = v201;
      *(v201 + 2) = v114 + 1;
      v116 = &v115[16 * v114];
      *(v116 + 4) = v110;
      *(v116 + 5) = v111;
      sub_2514EF228(&v204, v104, v103);
    }

    else
    {
      (*(v74 + 8))(v75, v102);
    }

    v117 = OBJC_IVAR____TtC25HealthContentDaemonPlugin17HgQLTraversalNode_attachmentNodes;
    v118 = v191;
    swift_beginAccess();
    v29 = *(v118 + v117);
    if (v29 >> 62)
    {
      goto LABEL_182;
    }

    v196 = v29 & 0xFFFFFFFFFFFFFF8;
    v119 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_101:

    if (v119)
    {
      v120 = 0;
      v195 = (v29 & 0xC000000000000001);
      v194 = v29;
      v193 = v119;
      do
      {
        if (v195)
        {
          v121 = MEMORY[0x253078AC0](v120, v29);
          v122 = v120 + 1;
          if (__OFADD__(v120, 1))
          {
LABEL_143:
            __break(1u);
            break;
          }
        }

        else
        {
          if (v120 >= *(v196 + 16))
          {
            __break(1u);
LABEL_179:
            __break(1u);
LABEL_180:
            __break(1u);
LABEL_181:
            __break(1u);
LABEL_182:
            v196 = v29 & 0xFFFFFFFFFFFFFF8;
            v119 = sub_25154D4A0();
            goto LABEL_101;
          }

          v122 = v120 + 1;
          if (__OFADD__(v120, 1))
          {
            goto LABEL_143;
          }
        }

        v198 = v122;
        v200 = v121;
        v123 = *(v121 + 40);
        v124 = *(v123 + 16);
        if (v124)
        {
          v199 = v87;
          sub_2514F619C(0, &qword_27F43BD88, MEMORY[0x277D84560]);
          v125 = swift_allocObject();
          v126 = _swift_stdlib_malloc_size(v125);
          v127 = v126 - 32;
          if (v126 < 32)
          {
            v127 = v126 - 17;
          }

          v125[2] = v124;
          v125[3] = 2 * (v127 >> 4);
          v128 = sub_25154B434(&v204, v125 + 4, v124, v123);
          v129 = v204;
          v29 = v206;
          v87 = v207;

          sub_2514F2298(v129);
          if (v128 != v124)
          {
            goto LABEL_181;
          }

          v87 = v199;
        }

        else
        {
          v125 = MEMORY[0x277D84F90];
        }

        v204 = v125;
        sub_2514F0544(&v204);
        if (v87)
        {
          goto LABEL_185;
        }

        v130 = v204;
        v131 = *(v204 + 2);
        if (!v131)
        {

          ++v120;
          v132 = v198 == v193;
          goto LABEL_115;
        }

        v199 = 0;
        v87 = 0;
        v192 = v204 + 32;
        do
        {
          if (v87 >= *(v130 + 2))
          {
            goto LABEL_179;
          }

          v133 = &v192[16 * v87];
          v134 = *v133;
          v135 = v133[1];
          v29 = v211;
          if (!*(v211 + 16))
          {

LABEL_132:
            v142 = 0xE000000000000000;
            v204 = 0;
            v205 = 0xE000000000000000;
            sub_25154D430();
            v143 = v200;
            v145 = v200[2];
            v144 = v200[3];

            v204 = v145;
            v205 = v144;
            MEMORY[0x253078930](46, 0xE100000000000000);
            v147 = v143[2];
            v146 = v143[3];

            MEMORY[0x253078930](v147, v146);

            MEMORY[0x253078930](95, 0xE100000000000000);
            MEMORY[0x253078930](v134, v135);
            MEMORY[0x253078930](542327072, 0xE400000000000000);
            if (v197)
            {
              v148 = 0;
            }

            else
            {
              v149 = *(v191 + 24);
              v202 = *(v191 + 16);
              v203 = v149;

              MEMORY[0x253078930](95, 0xE100000000000000);
              v148 = v202;
              v142 = v203;
            }

            MEMORY[0x253078930](v148, v142);

            MEMORY[0x253078930](v134, v135);
            v29 = v204;
            v150 = v205;
            v151 = v201;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v151 = sub_2514EF00C(0, *(v151 + 2) + 1, 1, v151);
            }

            v153 = *(v151 + 2);
            v152 = *(v151 + 3);
            v201 = v151;
            if (v153 >= v152 >> 1)
            {
              v201 = sub_2514EF00C((v152 > 1), v153 + 1, 1, v201);
            }

            v154 = v201;
            *(v201 + 2) = v153 + 1;
            v155 = &v154[16 * v153];
            *(v155 + 4) = v29;
            *(v155 + 5) = v150;
            sub_2514EF228(&v204, v134, v135);
            goto LABEL_119;
          }

          sub_25154D590();

          sub_25154D2B0();
          v136 = sub_25154D5B0();
          v137 = -1 << *(v29 + 32);
          v138 = v136 & ~v137;
          if (((*(v29 + 56 + ((v138 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v138) & 1) == 0)
          {
            goto LABEL_132;
          }

          v139 = ~v137;
          while (1)
          {
            v140 = (*(v29 + 48) + 16 * v138);
            v141 = *v140 == v134 && v140[1] == v135;
            if (v141 || (sub_25154D520() & 1) != 0)
            {
              break;
            }

            v138 = (v138 + 1) & v139;
            if (((*(v29 + 56 + ((v138 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v138) & 1) == 0)
            {
              goto LABEL_132;
            }
          }

LABEL_119:

          ++v87;
        }

        while (v87 != v131);

        v120 = v198;
        v87 = v199;
        v132 = v198 == v193;
LABEL_115:
        v29 = v194;
      }

      while (!v132);
    }

    v30 = *(v191 + OBJC_IVAR____TtC25HealthContentDaemonPlugin17HgQLTraversalNode_inNode);
    if (!v30)
    {
      goto LABEL_176;
    }

    v156 = *(*v30 + 208);
    v29 = *v30 + 208;

    v80 = v156(v157);
    v158 = *(v80 + 2);
    if (!v158)
    {
      break;
    }

    v199 = v87;
    v69 = sub_25154AEEC(v158, 0);
    v29 = sub_25154B434(&v204, v69 + 4, v158, v80);
    v159 = v204;
    v78 = v205;
    v68 = v207;
    v79 = v208;

    sub_2514F2298(v159);
    if (v29 == v158)
    {
      v87 = v199;
      goto LABEL_149;
    }

    __break(1u);
LABEL_184:
    v80 = sub_2514EF00C(0, *(v80 + 2) + 1, 1, v80);
  }

  v69 = MEMORY[0x277D84F90];
LABEL_149:
  v204 = v69;
  sub_2514F0544(&v204);
  if (v87)
  {
LABEL_185:

    __break(1u);
  }

  else
  {

    v160 = v204;
    v200 = *(v204 + 2);
    if (v200)
    {
      v161 = 0;
      v198 = v204 + 32;
      v199 = 0;
      while (1)
      {
        if (v161 >= *(v160 + 2))
        {
          goto LABEL_180;
        }

        v163 = &v198[16 * v161];
        v165 = *v163;
        v164 = v163[1];
        v166 = v211;
        if (*(v211 + 16))
        {
          sub_25154D590();

          sub_25154D2B0();
          v167 = sub_25154D5B0();
          v168 = -1 << *(v166 + 32);
          v169 = v167 & ~v168;
          if ((*(v166 + 56 + ((v169 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v169))
          {
            v170 = ~v168;
            while (1)
            {
              v171 = (*(v166 + 48) + 16 * v169);
              v172 = *v171 == v165 && v171[1] == v164;
              if (v172 || (sub_25154D520() & 1) != 0)
              {
                break;
              }

              v169 = (v169 + 1) & v170;
              if (((*(v166 + 56 + ((v169 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v169) & 1) == 0)
              {
                goto LABEL_166;
              }
            }

            v87 = v199;
            goto LABEL_153;
          }
        }

        else
        {
        }

LABEL_166:

        sub_2514EF228(&v204, v165, v164);

        v173 = 0xE000000000000000;
        v204 = 0;
        v205 = 0xE000000000000000;
        sub_25154D430();
        v175 = *(v30 + 2);
        v174 = *(v30 + 3);

        v204 = v175;
        v205 = v174;
        MEMORY[0x253078930](46, 0xE100000000000000);
        v177 = *(v30 + 2);
        v176 = *(v30 + 3);

        MEMORY[0x253078930](v177, v176);

        MEMORY[0x253078930](95, 0xE100000000000000);
        MEMORY[0x253078930](v165, v164);
        MEMORY[0x253078930](542327072, 0xE400000000000000);
        if (v197)
        {
          v178 = 0;
        }

        else
        {
          v179 = *(v191 + 24);
          v202 = *(v191 + 16);
          v203 = v179;

          MEMORY[0x253078930](95, 0xE100000000000000);
          v178 = v202;
          v173 = v203;
        }

        v87 = v199;
        MEMORY[0x253078930](v178, v173);

        MEMORY[0x253078930](v165, v164);

        v180 = v204;
        v181 = v205;
        v182 = v201;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v182 = sub_2514EF00C(0, *(v182 + 2) + 1, 1, v182);
        }

        v184 = *(v182 + 2);
        v183 = *(v182 + 3);
        v201 = v182;
        if (v184 >= v183 >> 1)
        {
          v201 = sub_2514EF00C((v183 > 1), v184 + 1, 1, v201);
        }

        v185 = v201;
        *(v201 + 2) = v184 + 1;
        v186 = &v185[16 * v184];
        *(v186 + 4) = v180;
        *(v186 + 5) = v181;
LABEL_153:
        ++v161;
        v29 = v190;
        v162 = v189;
        if (v161 == v200)
        {

          goto LABEL_177;
        }
      }
    }

LABEL_176:
    v29 = v190;
    v162 = v189;
LABEL_177:
    (*(v162 + 8))(v188, v29);

    return v201;
  }

  return result;
}

char *sub_251547590(int a1)
{
  v4 = v2;
  v128 = a1;
  v5 = sub_25154CDE0();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = (&v101 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = OBJC_IVAR____TtC25HealthContentDaemonPlugin17HgQLTraversalNode_inNode;
  v118 = v1;
  v11 = *(v1 + OBJC_IVAR____TtC25HealthContentDaemonPlugin17HgQLTraversalNode_inNode);
  v111 = v7;
  v110 = v9;
  if (v11)
  {
    goto LABEL_2;
  }

  v14 = OBJC_IVAR____TtC25HealthContentDaemonPlugin17HgQLTraversalNode_attachmentNodes;
  v15 = v118;
  swift_beginAccess();
  v16 = *(v15 + v14);
  if (!(v16 >> 62))
  {
    if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_6;
    }

    return MEMORY[0x277D84F90];
  }

  if (!sub_25154D4A0())
  {
    return MEMORY[0x277D84F90];
  }

LABEL_6:
  v11 = *(v118 + v10);
  if (!v11)
  {
    v3 = MEMORY[0x277D84F90];
    goto LABEL_27;
  }

LABEL_2:

  v12 = sub_2514EE660(0);
  if (v2)
  {
LABEL_3:

    return v3;
  }

  v116 = v12;
  v115 = v13;
  v17 = v118;
  swift_beginAccess();
  v18 = v17[5];
  v19 = *(*v11 + 216);

  v21 = v19(v20);
  v22 = sub_2514F2C48(v21, v18);

  v23 = v22[2];
  if (!v23)
  {
    v24 = MEMORY[0x277D84F90];
LABEL_12:
    v121 = v24;
    sub_2514F0544(&v121);
    v117 = 0;
    v114 = v6;

    v27 = *(v121 + 16);
    v113 = v121;
    if (v27)
    {
      v28 = (v121 + 40);
      v29 = MEMORY[0x277D84F90];
      do
      {
        v31 = *(v28 - 1);
        v30 = *v28;
        v121 = 0;
        v122 = 0xE000000000000000;
        if (v128)
        {

          v32 = 0;
          v33 = 0xE000000000000000;
        }

        else
        {
          v34 = v118[3];
          v125 = v118[2];
          v126 = v34;

          MEMORY[0x253078930](95, 0xE100000000000000);
          v32 = v125;
          v33 = v126;
        }

        MEMORY[0x253078930](v32, v33);

        MEMORY[0x253078930](v31, v30);
        MEMORY[0x253078930](2112800, 0xE300000000000000);
        v35 = v11[2];
        v36 = v11[3];

        MEMORY[0x253078930](v35, v36);

        MEMORY[0x253078930](46, 0xE100000000000000);
        v37 = v11[2];
        v38 = v11[3];

        MEMORY[0x253078930](v37, v38);

        MEMORY[0x253078930](95, 0xE100000000000000);
        MEMORY[0x253078930](v31, v30);

        v39 = v121;
        v40 = v122;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = sub_2514EF00C(0, *(v29 + 2) + 1, 1, v29);
        }

        v42 = *(v29 + 2);
        v41 = *(v29 + 3);
        if (v42 >= v41 >> 1)
        {
          v29 = sub_2514EF00C((v41 > 1), v42 + 1, 1, v29);
        }

        *(v29 + 2) = v42 + 1;
        v43 = &v29[16 * v42];
        *(v43 + 4) = v39;
        *(v43 + 5) = v40;
        v28 += 16;
        --v27;
      }

      while (v27);
    }

    else
    {
      v29 = MEMORY[0x277D84F90];
    }

    v121 = 0;
    v122 = 0xE000000000000000;
    sub_25154D430();

    v121 = 0x494F4A205446454CLL;
    v122 = 0xEB0000000028204ELL;
    MEMORY[0x253078930](v116, v115);

    MEMORY[0x253078930](0x2053412029, 0xE500000000000000);
    v45 = v11[2];
    v44 = v11[3];

    MEMORY[0x253078930](v45, v44);

    MEMORY[0x253078930](0x28204E4F20, 0xE500000000000000);
    v125 = v29;
    sub_2514F619C(0, &qword_27F43BD70, MEMORY[0x277D83940]);
    sub_2514F22A0();
    v46 = sub_25154D230();
    v48 = v47;

    MEMORY[0x253078930](v46, v48);

    MEMORY[0x253078930](41, 0xE100000000000000);
    v49 = v121;
    v50 = v122;
    v3 = sub_2514EF00C(0, 1, 1, MEMORY[0x277D84F90]);
    v52 = *(v3 + 2);
    v51 = *(v3 + 3);
    if (v52 >= v51 >> 1)
    {
      v3 = sub_2514EF00C((v51 > 1), v52 + 1, 1, v3);
    }

    v5 = v111;
    v9 = v110;
    v6 = v114;

    *(v3 + 2) = v52 + 1;
    v53 = &v3[16 * v52];
    *(v53 + 4) = v49;
    *(v53 + 5) = v50;
    v4 = v117;
LABEL_27:
    v54 = OBJC_IVAR____TtC25HealthContentDaemonPlugin17HgQLTraversalNode_attachmentNodes;
    v55 = v118;
    swift_beginAccess();
    v56 = *(v55 + v54);
    if (v56 >> 62)
    {
      goto LABEL_69;
    }

    v57 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_29:

    swift_beginAccess();
    if (v57)
    {
      v58 = 0;
      v109 = v56 & 0xC000000000000001;
      v108 = v56 & 0xFFFFFFFFFFFFFF8;
      v107 = v56 + 32;
      v106 = (v6 + 88);
      v127 = *MEMORY[0x277D11B18];
      v103 = (v6 + 8);
      v102 = (v6 + 96);
      v101 = xmmword_25154E670;
      v104 = v57;
      v105 = v56;
      do
      {
        if (v109)
        {
          v6 = MEMORY[0x253078AC0](v58, v56);
          v59 = __OFADD__(v58, 1);
          v60 = v58 + 1;
          if (v59)
          {
            goto LABEL_66;
          }
        }

        else
        {
          if (v58 >= *(v108 + 16))
          {
            goto LABEL_67;
          }

          v6 = *(v107 + 8 * v58);

          v59 = __OFADD__(v58, 1);
          v60 = v58 + 1;
          if (v59)
          {
LABEL_66:
            __break(1u);
LABEL_67:
            __break(1u);
LABEL_68:
            __break(1u);
LABEL_69:
            v57 = sub_25154D4A0();
            goto LABEL_29;
          }
        }

        v61 = sub_2514EEB90(0);
        if (v4)
        {

          goto LABEL_3;
        }

        v114 = v61;
        v115 = v62;
        v63 = v118[5];

        sub_25154CF50();
        v64 = (*v106)(v9, v5);
        v117 = 0;
        v116 = v60;
        if (v64 == v127)
        {
          (*v102)(v9, v5);
          v65 = *v9;
          v66 = v9[1];
          sub_2514F619C(0, &qword_27F43BD88, MEMORY[0x277D84560]);
          inited = swift_initStackObject();
          *(inited + 16) = v101;
          *(inited + 32) = v65;
          v68 = inited + 32;
          *(inited + 40) = v66;
          v69 = sub_25154872C(inited);
          swift_setDeallocating();
          sub_251548888(v68);
        }

        else
        {
          (*v103)(v9, v5);
          v69 = MEMORY[0x277D84FA0];
        }

        v56 = sub_2514F2C48(v69, v63);

        v5 = *(v56 + 16);
        if (v5)
        {
          v70 = sub_25154AEEC(*(v56 + 16), 0);
          v113 = sub_25154B434(&v121, v70 + 4, v5, v56);
          v71 = v121;
          v9 = v122;
          v4 = v123;

          sub_2514F2298(v71);
          if (v113 != v5)
          {
            goto LABEL_68;
          }
        }

        else
        {
          v70 = MEMORY[0x277D84F90];
        }

        v121 = v70;
        v72 = v117;
        sub_2514F0544(&v121);
        v26 = &v129;
        v117 = v72;
        if (v72)
        {
          goto LABEL_74;
        }

        v113 = v3;

        v73 = *(v121 + 16);
        v112 = v121;
        if (v73)
        {
          v74 = (v121 + 40);
          v75 = MEMORY[0x277D84F90];
          do
          {
            v76 = *(v74 - 1);
            v77 = *v74;
            v121 = 0;
            v122 = 0xE000000000000000;
            if (v128)
            {

              v78 = 0;
              v79 = 0xE000000000000000;
            }

            else
            {
              v80 = v118[3];
              v119 = v118[2];
              v120 = v80;

              MEMORY[0x253078930](95, 0xE100000000000000);
              v78 = v119;
              v79 = v120;
            }

            MEMORY[0x253078930](v78, v79);

            MEMORY[0x253078930](v76, v77);
            MEMORY[0x253078930](2112800, 0xE300000000000000);
            v81 = *(v6 + 16);
            v82 = *(v6 + 24);

            MEMORY[0x253078930](v81, v82);

            MEMORY[0x253078930](46, 0xE100000000000000);
            v83 = *(v6 + 16);
            v84 = *(v6 + 24);

            MEMORY[0x253078930](v83, v84);

            MEMORY[0x253078930](95, 0xE100000000000000);
            MEMORY[0x253078930](v76, v77);

            v85 = v121;
            v86 = v122;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v75 = sub_2514EF00C(0, *(v75 + 2) + 1, 1, v75);
            }

            v88 = *(v75 + 2);
            v87 = *(v75 + 3);
            if (v88 >= v87 >> 1)
            {
              v75 = sub_2514EF00C((v87 > 1), v88 + 1, 1, v75);
            }

            *(v75 + 2) = v88 + 1;
            v89 = &v75[16 * v88];
            *(v89 + 4) = v85;
            *(v89 + 5) = v86;
            v74 += 16;
            --v73;
          }

          while (v73);
        }

        else
        {
          v75 = MEMORY[0x277D84F90];
        }

        v121 = 0;
        v122 = 0xE000000000000000;
        sub_25154D430();

        v121 = 0x494F4A205446454CLL;
        v122 = 0xEB0000000028204ELL;
        MEMORY[0x253078930](v114, v115);

        MEMORY[0x253078930](0x2053412029, 0xE500000000000000);
        v91 = *(v6 + 16);
        v90 = *(v6 + 24);

        MEMORY[0x253078930](v91, v90);

        MEMORY[0x253078930](0x28204E4F20, 0xE500000000000000);
        v119 = v75;
        sub_2514F619C(0, &qword_27F43BD70, MEMORY[0x277D83940]);
        sub_2514F22A0();
        v92 = sub_25154D230();
        v94 = v93;

        MEMORY[0x253078930](v92, v94);

        MEMORY[0x253078930](41, 0xE100000000000000);
        v95 = v121;
        v96 = v122;
        v3 = v113;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v3 = sub_2514EF00C(0, *(v3 + 2) + 1, 1, v3);
        }

        v5 = v111;
        v9 = v110;
        v98 = *(v3 + 2);
        v97 = *(v3 + 3);
        if (v98 >= v97 >> 1)
        {
          v3 = sub_2514EF00C((v97 > 1), v98 + 1, 1, v3);
        }

        *(v3 + 2) = v98 + 1;
        v99 = &v3[16 * v98];
        *(v99 + 4) = v95;
        *(v99 + 5) = v96;
        v58 = v116;
        v4 = v117;
        v56 = v105;
      }

      while (v116 != v104);
    }

    return v3;
  }

  v24 = sub_25154AEEC(v22[2], 0);
  v117 = sub_25154B434(&v121, v24 + 4, v23, v22);
  v25 = v121;
  v114 = v124;

  sub_2514F2298(v25);
  v26 = v117;
  if (v117 == v23)
  {
    goto LABEL_12;
  }

  __break(1u);
LABEL_74:

  __break(1u);
  return result;
}

char *sub_2515482EC(uint64_t a1)
{
  v2 = sub_2515488DC();
  if (v2 == 3)
  {
    sub_2514F231C();
    swift_allocError();
    *v3 = 0xD000000000000039;
    v3[1] = 0x8000000251553B30;
    return swift_willThrow();
  }

  else
  {
    v5 = v2;
    v6 = MEMORY[0x277D84F90];
    sub_25154387C(&v6, v2);
    sub_251543D58(&v6, v5);
    if (v1)
    {
    }

    else
    {
      sub_251544B18(&v6, v5);
      sub_251544B38(&v6, v5);
      sub_2515450B4(&v6);
      return v6;
    }
  }
}

uint64_t sub_2515483EC()
{
  sub_2515426C0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for HgQLTraversalNode(uint64_t a1)
{
  result = qword_27F43CE00;
  if (!qword_27F43CE00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_251548498(uint64_t a1)
{
  sub_251548550(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_251548550(uint64_t a1)
{
  if (!qword_27F43BD68)
  {
    sub_25154CF80();
    v1 = sub_25154D3C0();
    if (!v2)
    {
      atomic_store(v1, &qword_27F43BD68);
    }
  }
}

uint64_t sub_2515485A8()
{
  sub_25154D590();
  sub_25154D2B0();
  return sub_25154D5B0();
}

uint64_t sub_2515485FC(uint64_t a1)
{
  sub_25154D590();
  sub_25154D2B0();
  return sub_25154D5B0();
}

uint64_t sub_251548640(uint64_t *a1, uint64_t a2)
{
  if (*(*a1 + 16) == *(*a2 + 16) && *(*a1 + 24) == *(*a2 + 24))
  {
    return 1;
  }

  else
  {
    return sub_25154D520();
  }
}

unint64_t sub_251548670()
{
  result = qword_27F43CE10;
  if (!qword_27F43CE10)
  {
    type metadata accessor for HgQLTraversalNode(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F43CE10);
  }

  return result;
}

uint64_t sub_2515486C8(uint64_t a1, uint64_t a2)
{
  sub_251548550(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25154872C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2514F6110();
    v3 = sub_25154D400();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_25154D590();

      sub_25154D2B0();
      result = sub_25154D5B0();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = sub_25154D520();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_2515488DC()
{
  v1 = sub_25154CE30();
  v33 = *(v1 - 8);
  v2 = MEMORY[0x28223BE20](v1);
  v31 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v32 = &v30 - v4;
  v5 = sub_25154CDD0();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v30 - v10;
  sub_251548550(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_25154CF80();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2514F6000(v0 + OBJC_IVAR____TtC25HealthContentDaemonPlugin17HgQLTraversalNode_triple, v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_2514F6080(v14);
    return 3;
  }

  else
  {
    v30 = v1;
    (*(v16 + 32))(v18, v14, v15);
    sub_25154CF40();
    v20 = *(v6 + 88);
    if (v20(v11, v5) == *MEMORY[0x277D11B00])
    {
      (*(v16 + 8))(v18, v15);
      (*(v6 + 8))(v11, v5);
      return 1;
    }

    else
    {
      v21 = v11;
      v22 = *(v6 + 8);
      v22(v21, v5);
      sub_25154CF40();
      if (v20(v9, v5) == *MEMORY[0x277D11B08])
      {
        (*(v16 + 8))(v18, v15);
        v22(v9, v5);
        return 1;
      }

      else
      {
        v22(v9, v5);
        v23 = v32;
        sub_25154CF70();
        v24 = v33;
        v25 = *(v33 + 88);
        v26 = v30;
        if (v25(v23, v30) == *MEMORY[0x277D11B30])
        {
          (*(v16 + 8))(v18, v15);
          (*(v24 + 8))(v23, v26);
          return 1;
        }

        else
        {
          v27 = *(v24 + 8);
          v27(v23, v26);
          v28 = v31;
          sub_25154CF70();
          (*(v16 + 8))(v18, v15);
          v29 = v25(v28, v26) != *MEMORY[0x277D11B48];
          v27(v28, v26);
          return (2 * v29);
        }
      }
    }
  }
}

uint64_t sub_251548D94()
{
  v1 = sub_25154CE30();
  v29 = *(v1 - 8);
  v30 = v1;
  v2 = MEMORY[0x28223BE20](v1);
  v27 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v28 = &v27 - v4;
  v5 = sub_25154CDD0();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  v12 = sub_25154CF80();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v15, v0 + OBJC_IVAR____TtC25HealthContentDaemonPlugin22HgQLAttributeValueNode_privateTriple, v12);
  sub_25154CF40();
  v16 = *(v6 + 88);
  if (v16(v11, v5) == *MEMORY[0x277D11B00])
  {
    (*(v13 + 8))(v15, v12);
    (*(v6 + 8))(v11, v5);
  }

  else
  {
    v17 = v11;
    v18 = *(v6 + 8);
    v18(v17, v5);
    sub_25154CF40();
    if (v16(v9, v5) == *MEMORY[0x277D11B08])
    {
      (*(v13 + 8))(v15, v12);
      v18(v9, v5);
    }

    else
    {
      v18(v9, v5);
      v19 = v28;
      sub_25154CF70();
      v21 = v29;
      v20 = v30;
      v22 = *(v29 + 88);
      if (v22(v19, v30) != *MEMORY[0x277D11B30])
      {
        v24 = *(v21 + 8);
        v24(v19, v20);
        v25 = v27;
        sub_25154CF70();
        (*(v13 + 8))(v15, v12);
        v26 = v22(v25, v20) != *MEMORY[0x277D11B48];
        v24(v25, v20);
        return (2 * v26);
      }

      (*(v13 + 8))(v15, v12);
      (*(v21 + 8))(v19, v20);
    }
  }

  return 1;
}

char *sub_2515491AC(int a1)
{
  v68 = a1;
  v3 = sub_25154CDD0();
  v61 = *(v3 - 8);
  v62 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = (v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_25154CE30();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25154CDE0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = (v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_251548D94();
  if (v14 == 3)
  {
    sub_2514F231C();
    swift_allocError();
    *v15 = 0xD000000000000039;
    v15[1] = 0x8000000251553B30;
    swift_willThrow();
    return v10;
  }

  v67 = v14;
  v59[2] = OBJC_IVAR____TtC25HealthContentDaemonPlugin22HgQLAttributeValueNode_privateTriple;
  v60 = v1;
  sub_25154CF50();
  if ((*(v11 + 88))(v13, v10) == *MEMORY[0x277D11B18])
  {
    (*(v11 + 96))(v13, v10);
    v16 = v13[1];
    v59[0] = *v13;
    v65 = 0;
    v66 = 0xE000000000000000;
    if (v67)
    {
      if (v67 == 1)
      {
        v17 = 0x64695F65646F6ELL;
      }

      else
      {
        v17 = 0x5F7463656A627573;
      }

      if (v67 == 1)
      {
        v18 = 0xE700000000000000;
      }

      else
      {
        v18 = 0xEA00000000006469;
      }
    }

    else
    {
      v18 = 0xE500000000000000;
      v17 = 0x6469776F72;
    }

    v19 = v60;
    MEMORY[0x253078930](v17, v18);

    MEMORY[0x253078930](542327072, 0xE400000000000000);
    v59[1] = v2;
    if (v68)
    {
      v20 = 0;
      v21 = 0xE000000000000000;
    }

    else
    {
      v22 = *(v19 + 24);
      v63 = *(v19 + 16);
      v64 = v22;

      MEMORY[0x253078930](95, 0xE100000000000000);
      v20 = v63;
      v21 = v64;
    }

    MEMORY[0x253078930](v20, v21);

    MEMORY[0x253078930](v59[0], v16);

    v23 = v65;
    v24 = v66;
    v10 = sub_2514EF00C(0, 1, 1, MEMORY[0x277D84F90]);
    v26 = *(v10 + 16);
    v25 = *(v10 + 24);
    if (v26 >= v25 >> 1)
    {
      v10 = sub_2514EF00C((v25 > 1), v26 + 1, 1, v10);
    }

    *(v10 + 16) = v26 + 1;
    v27 = v10 + 16 * v26;
    *(v27 + 32) = v23;
    *(v27 + 40) = v24;
  }

  else
  {
    (*(v11 + 8))(v13, v10);
    v10 = MEMORY[0x277D84F90];
  }

  v28 = v60;
  sub_25154CF70();
  if ((*(v7 + 88))(v9, v6) != *MEMORY[0x277D11B30])
  {
    (*(v7 + 8))(v9, v6);
    goto LABEL_31;
  }

  (*(v7 + 96))(v9, v6);
  v29 = *(v9 + 1);
  v30 = *(v9 + 2);

  if (!v30)
  {
LABEL_31:
    v35 = v62;
    goto LABEL_39;
  }

  v65 = 0;
  v66 = 0xE000000000000000;
  if (!v67)
  {

    v36 = 0x8000000251553C10;
    sub_2514F231C();
    swift_allocError();
    v38 = 0xD000000000000031;
LABEL_51:
    *v37 = v38;
    v37[1] = v36;
    swift_willThrow();

    return v10;
  }

  if (v67 == 1)
  {
    v31 = 0x7475626972747461;
  }

  else
  {
    v31 = 0xD000000000000011;
  }

  if (v67 == 1)
  {
    v32 = 0xEE00657079745F65;
  }

  else
  {
    v32 = 0x8000000251553BF0;
  }

  MEMORY[0x253078930](v31, v32);

  MEMORY[0x253078930](542327072, 0xE400000000000000);
  if (v68)
  {
    v33 = 0;
    v34 = 0xE000000000000000;
  }

  else
  {
    v39 = *(v28 + 24);
    v63 = *(v28 + 16);
    v64 = v39;

    MEMORY[0x253078930](95, 0xE100000000000000);
    v33 = v63;
    v34 = v64;
  }

  MEMORY[0x253078930](v33, v34);

  MEMORY[0x253078930](v29, v30);

  v40 = v65;
  v41 = v66;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = sub_2514EF00C(0, *(v10 + 16) + 1, 1, v10);
  }

  v35 = v62;
  v43 = *(v10 + 16);
  v42 = *(v10 + 24);
  if (v43 >= v42 >> 1)
  {
    v10 = sub_2514EF00C((v42 > 1), v43 + 1, 1, v10);
  }

  *(v10 + 16) = v43 + 1;
  v44 = v10 + 16 * v43;
  *(v44 + 32) = v40;
  *(v44 + 40) = v41;
LABEL_39:
  sub_25154CF40();
  v45 = v61;
  if ((*(v61 + 88))(v5, v35) != *MEMORY[0x277D11AF0])
  {
    (*(v45 + 8))(v5, v35);
    return v10;
  }

  (*(v45 + 96))(v5, v35);
  v47 = *v5;
  v46 = v5[1];
  v65 = 0;
  v66 = 0xE000000000000000;
  if (!v67)
  {

    v36 = 0x8000000251553BC0;
    sub_2514F231C();
    swift_allocError();
    v38 = 0xD00000000000002ELL;
    goto LABEL_51;
  }

  if (v67 == 1)
  {
    v48 = 0x65756C6176;
  }

  else
  {
    v48 = 0x695F7463656A626FLL;
  }

  if (v67 == 1)
  {
    v49 = 0xE500000000000000;
  }

  else
  {
    v49 = 0xE900000000000064;
  }

  MEMORY[0x253078930](v48, v49);

  MEMORY[0x253078930](542327072, 0xE400000000000000);
  if (v68)
  {
    v50 = 0;
    v51 = 0xE000000000000000;
  }

  else
  {
    v52 = *(v28 + 24);
    v63 = *(v28 + 16);
    v64 = v52;

    MEMORY[0x253078930](95, 0xE100000000000000);
    v50 = v63;
    v51 = v64;
  }

  MEMORY[0x253078930](v50, v51);

  MEMORY[0x253078930](v47, v46);

  v53 = v65;
  v54 = v66;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = sub_2514EF00C(0, *(v10 + 16) + 1, 1, v10);
  }

  v56 = *(v10 + 16);
  v55 = *(v10 + 24);
  if (v56 >= v55 >> 1)
  {
    v10 = sub_2514EF00C((v55 > 1), v56 + 1, 1, v10);
  }

  *(v10 + 16) = v56 + 1;
  v57 = v10 + 16 * v56;
  *(v57 + 32) = v53;
  *(v57 + 40) = v54;
  return v10;
}

uint64_t sub_2515499D4()
{
  v0 = sub_25154D5D0();
  MEMORY[0x253078930](v0);

  MEMORY[0x253078930](8250, 0xE200000000000000);
  sub_25154CF80();
  sub_25154D490();
  return 0;
}

uint64_t sub_251549A94()
{

  v1 = OBJC_IVAR____TtC25HealthContentDaemonPlugin22HgQLAttributeValueNode_privateTriple;
  v2 = sub_25154CF80();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t type metadata accessor for HgQLAttributeValueNode(uint64_t a1)
{
  result = qword_27F43CE20;
  if (!qword_27F43CE20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_251549B9C(uint64_t a1)
{
  result = sub_25154CF80();
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

char *sub_251549C6C()
{
  v2 = v0;
  v3 = sub_25154CE30();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v68 = (v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_25154CDE0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_251548D94();
  if (v10 == 3)
  {
    sub_2514F231C();
    swift_allocError();
    *v11 = 0xD000000000000039;
    v11[1] = 0x8000000251553B30;
    swift_willThrow();
  }

  else
  {
    v12 = v10;
    v63 = OBJC_IVAR____TtC25HealthContentDaemonPlugin22HgQLAttributeValueNode_privateTriple;
    sub_25154CF50();
    v13 = (*(v7 + 88))(v9, v6);
    v14 = *MEMORY[0x277D11B20];
    v62 = v1;
    v65 = v12;
    v64 = v0;
    if (v13 == v14)
    {
      v61 = v3;
      (*(v7 + 96))(v9, v6);
      v15 = *v9;
      v16 = *(*v9 + 16);
      v59[1] = *v9;
      v60 = v4;
      if (v16)
      {
        v17 = (v15 + 32);
        v18 = MEMORY[0x277D84F90];
        do
        {
          v19 = *v17++;
          v66 = v19;
          v20 = sub_25154D500();
          v22 = v21;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v18 = sub_2514EF00C(0, *(v18 + 2) + 1, 1, v18);
          }

          v24 = *(v18 + 2);
          v23 = *(v18 + 3);
          if (v24 >= v23 >> 1)
          {
            v18 = sub_2514EF00C((v23 > 1), v24 + 1, 1, v18);
          }

          *(v18 + 2) = v24 + 1;
          v25 = &v18[16 * v24];
          *(v25 + 4) = v20;
          *(v25 + 5) = v22;
          --v16;
        }

        while (v16);
      }

      else
      {
        v18 = MEMORY[0x277D84F90];
      }

      v66 = v18;
      sub_25154A3BC();
      sub_2514F22A0();
      v26 = sub_25154D230();
      v28 = v27;

      v66 = 0;
      v67 = 0xE000000000000000;
      if (v65)
      {
        if (v65 == 1)
        {
          v29 = 0x64695F65646F6ELL;
        }

        else
        {
          v29 = 0x5F7463656A627573;
        }

        if (v65 == 1)
        {
          v30 = 0xE700000000000000;
        }

        else
        {
          v30 = 0xEA00000000006469;
        }
      }

      else
      {
        v30 = 0xE500000000000000;
        v29 = 0x6469776F72;
      }

      v3 = v61;
      MEMORY[0x253078930](v29, v30);

      MEMORY[0x253078930](0x28204E4920, 0xE500000000000000);
      MEMORY[0x253078930](v26, v28);

      MEMORY[0x253078930](41, 0xE100000000000000);
      v31 = v66;
      v32 = v67;
      v2 = sub_2514EF00C(0, 1, 1, MEMORY[0x277D84F90]);
      v34 = *(v2 + 2);
      v33 = *(v2 + 3);
      if (v34 >= v33 >> 1)
      {
        v2 = sub_2514EF00C((v33 > 1), v34 + 1, 1, v2);
      }

      v4 = v60;
      *(v2 + 2) = v34 + 1;
      v35 = &v2[16 * v34];
      *(v35 + 4) = v31;
      *(v35 + 5) = v32;
    }

    else
    {
      (*(v7 + 8))(v9, v6);
      v2 = MEMORY[0x277D84F90];
    }

    v36 = v68;
    sub_25154CF70();
    if ((*(v4 + 88))(v36, v3) == *MEMORY[0x277D11B30])
    {
      v64 = v2;
      (*(v4 + 96))(v36, v3);
      v37 = *v36;

      v2 = *(v37 + 16);
      v63 = v37;
      if (v2)
      {
        v38 = (v37 + 32);
        v39 = MEMORY[0x277D84F90];
        do
        {
          v40 = *v38++;
          v66 = v40;
          v41 = sub_25154D500();
          v43 = v42;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v39 = sub_2514EF00C(0, *(v39 + 2) + 1, 1, v39);
          }

          v45 = *(v39 + 2);
          v44 = *(v39 + 3);
          if (v45 >= v44 >> 1)
          {
            v39 = sub_2514EF00C((v44 > 1), v45 + 1, 1, v39);
          }

          *(v39 + 2) = v45 + 1;
          v46 = &v39[16 * v45];
          *(v46 + 4) = v41;
          *(v46 + 5) = v43;
          --v2;
        }

        while (v2);
      }

      else
      {
        v39 = MEMORY[0x277D84F90];
      }

      v66 = v39;
      sub_25154A3BC();
      sub_2514F22A0();
      v47 = sub_25154D230();
      v49 = v48;

      v66 = 0;
      v67 = 0xE000000000000000;
      if (v65)
      {
        if (v65 == 1)
        {
          v50 = 0x7475626972747461;
        }

        else
        {
          v50 = 0xD000000000000011;
        }

        if (v65 == 1)
        {
          v51 = 0xEE00657079745F65;
        }

        else
        {
          v51 = 0x8000000251553BF0;
        }

        v2 = v64;
        MEMORY[0x253078930](v50, v51);

        MEMORY[0x253078930](0x28204E4920, 0xE500000000000000);
        MEMORY[0x253078930](v47, v49);

        MEMORY[0x253078930](41, 0xE100000000000000);
        v52 = v66;
        v53 = v67;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v2 = sub_2514EF00C(0, *(v2 + 2) + 1, 1, v2);
        }

        v55 = *(v2 + 2);
        v54 = *(v2 + 3);
        if (v55 >= v54 >> 1)
        {
          v2 = sub_2514EF00C((v54 > 1), v55 + 1, 1, v2);
        }

        *(v2 + 2) = v55 + 1;
        v56 = &v2[16 * v55];
        *(v56 + 4) = v52;
        *(v56 + 5) = v53;
      }

      else
      {

        sub_2514F231C();
        swift_allocError();
        *v58 = 0xD000000000000031;
        v58[1] = 0x8000000251553C10;
        swift_willThrow();
      }
    }

    else
    {
      (*(v4 + 8))(v36, v3);
    }
  }

  return v2;
}

void sub_25154A3BC()
{
  if (!qword_27F43BD70)
  {
    v0 = sub_25154D350();
    if (!v1)
    {
      atomic_store(v0, &qword_27F43BD70);
    }
  }
}

uint64_t sub_25154A40C(uint64_t a1)
{
  *(a1 + 8) = sub_25154A484(&qword_27F43CE30, MEMORY[0x277D83808], MEMORY[0x277D83528]);
  result = sub_25154A484(&qword_27F43CE38, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_25154A484(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_25154BAAC(255, &qword_27F43BDC8, MEMORY[0x277D834F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25154A500(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  sub_25154AD0C(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25154CE00();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x277D84FA0];
  v28 = &v30;
  v25 = sub_25154AD7C;
  v26 = &v27;
  sub_25154A874(a1, sub_25154AD9C, v24);
  v13 = v30;
  v14 = *(v30 + 16);
  if (!v14)
  {
    goto LABEL_4;
  }

  v18 = a3;
  v19 = a2;
  v15 = sub_25154AF64(v14, 0);
  v16 = sub_25154B58C(v29, v15 + 4, v14, v13);
  v22 = v29[0];
  v23 = v16;
  v20 = v29[4];
  v21 = v29[3];

  result = sub_2514F2298(v22);
  if (v23 == v14)
  {
    a2 = v19;
LABEL_4:
    sub_25154CDF0();

    (*(v10 + 16))(v8, v12, v9);
    swift_storeEnumTagMultiPayload();
    a2(v8);
    sub_25154B80C(v8, sub_25154AD0C);
    return (*(v10 + 8))(v12, v9);
  }

  __break(1u);
  return result;
}

uint64_t sub_25154A7D0(void *a1, uint64_t a2, uint64_t (*a3)(uint64_t *))
{
  v4 = v3;
  v7 = *__swift_project_boxed_opaque_existential_1(a1, a1[3]);

  v8 = v7;
  v9 = v4;
  v10 = sub_25154B8BC(v8, a2);

  if (!v9)
  {
    v12 = v10;
    LOBYTE(a3) = a3(&v12);
  }

  return a3 & 1;
}

uint64_t sub_25154A874(uint64_t a1, void (*a2)(char *, uint64_t), void (*a3)(char *, uint64_t))
{
  v35 = a2;
  v36 = a3;
  v4 = type metadata accessor for HgQLGraphQuery(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v37 = &v33 - v8;
  v9 = sub_25154CE70();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v33 - v14;
  sub_25154CE10();
  v16 = *(v10 + 16);
  v16(v13, v15, v9);
  v16(v7, v13, v9);
  v17 = sub_2514F1994(v13);
  if (v3)
  {
    v19 = *(v10 + 8);
    v19(v13, v9);
    v19(v15, v9);
    return (v19)(v7, v9);
  }

  else
  {
    v21 = v17;
    v22 = v18;
    v33 = *(v10 + 8);
    v33(v13, v9);
    v23 = &v7[*(v4 + 20)];
    *v23 = v21;
    *(v23 + 1) = v22;
    v24 = v37;
    sub_25154B754(v7, v37);
    v25 = (v24 + *(v4 + 20));
    v26 = *v25;
    v27 = v25[1];
    v28 = sub_25154CE60();
    v29 = __swift_project_boxed_opaque_existential_1((v34 + 32), *(v34 + 56));
    v30 = MEMORY[0x28223BE20](v29);
    v31 = v36;
    *(&v33 - 4) = v35;
    *(&v33 - 3) = v31;
    *(&v33 - 2) = v28;
    MEMORY[0x28223BE20](v30);
    *(&v33 - 4) = v26;
    *(&v33 - 3) = v27;
    *(&v33 - 2) = sub_25154B7B8;
    *(&v33 - 1) = v32;
    sub_2514ED390(sub_25154B7EC, (&v33 - 6));

    v33(v15, v9);
    return sub_25154B80C(v37, type metadata accessor for HgQLGraphQuery);
  }
}

uint64_t sub_25154ABA0(uint64_t *a1)
{
  v1 = *a1;

  sub_2514EF378(&v3, v1);

  return 1;
}

uint64_t sub_25154ABF4()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return MEMORY[0x2821FE8D8](v0, 72, 7);
}

unint64_t sub_25154AC5C()
{
  result = qword_27F43CE40;
  if (!qword_27F43CE40)
  {
    sub_25154CE20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F43CE40);
  }

  return result;
}

uint64_t sub_25154ACB4()
{
  v1 = *(*v0 + 16);

  return v1;
}

void sub_25154AD0C(uint64_t a1)
{
  if (!qword_27F43CE48)
  {
    sub_25154CE00();
    sub_2514ECC34();
    v1 = sub_25154D5C0();
    if (!v2)
    {
      atomic_store(v1, &qword_27F43CE48);
    }
  }
}

unint64_t sub_25154ADBC(uint64_t a1, uint64_t a2)
{
  sub_25154D590();
  sub_25154D2B0();
  v4 = sub_25154D5B0();

  return sub_25154AE34(a1, a2, v4);
}

unint64_t sub_25154AE34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_25154D520())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void *sub_25154AEEC(uint64_t a1, uint64_t a2)
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

  sub_25154B86C();
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_25154AF64(uint64_t a1, uint64_t a2)
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

  sub_25154B6E0(0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

uint64_t sub_25154AFDC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_25154BAAC(0, &qword_27F43CE58, MEMORY[0x277D84460]);
  v37 = v4;
  result = sub_25154D4D0();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      sub_25154D590();
      sub_25154D2B0();
      result = sub_25154D5B0();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

void *sub_25154B2AC()
{
  v1 = v0;
  sub_25154BAAC(0, &qword_27F43CE58, MEMORY[0x277D84460]);
  v2 = *v0;
  v3 = sub_25154D4C0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_25154B434(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_25154B58C(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 48) + ((v12 << 9) | (8 * v17)));
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      ++v11;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v19 = v12 + 1;
    }

    else
    {
      v19 = (63 - v7) >> 6;
    }

    v12 = v19 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void sub_25154B6E0(uint64_t a1)
{
  if (!qword_27F43CE50)
  {
    sub_25154BAAC(255, &qword_27F43BDC8, MEMORY[0x277D834F8]);
    v1 = sub_25154D510();
    if (!v2)
    {
      atomic_store(v1, &qword_27F43CE50);
    }
  }
}

uint64_t sub_25154B754(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HgQLGraphQuery(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25154B80C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_25154B86C()
{
  if (!qword_27F43BD88)
  {
    v0 = sub_25154D510();
    if (!v1)
    {
      atomic_store(v0, &qword_27F43BD88);
    }
  }
}

void *sub_25154B8BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return MEMORY[0x277D84F98];
  }

  v3 = (a2 + 40);
  v4 = MEMORY[0x277D84F98];
  while (1)
  {
    v6 = *(v3 - 1);
    v5 = *v3;

    v7 = sub_25154D250();
    v8 = HDSQLiteColumnWithNameAsString();

    if (!v8)
    {
      goto LABEL_3;
    }

    v9 = sub_25154D260();
    v11 = v10;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = sub_25154ADBC(v6, v5);
    v15 = v4[2];
    v16 = (v14 & 1) == 0;
    v17 = __OFADD__(v15, v16);
    v18 = v15 + v16;
    if (v17)
    {
      break;
    }

    v19 = v14;
    if (v4[3] < v18)
    {
      sub_25154AFDC(v18, isUniquelyReferenced_nonNull_native);
      v13 = sub_25154ADBC(v6, v5);
      if ((v19 & 1) != (v20 & 1))
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v19)
      {
        goto LABEL_12;
      }

      goto LABEL_14;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_11;
    }

    v23 = v13;
    sub_25154B2AC();
    v13 = v23;
    if (v19)
    {
LABEL_12:
      v21 = v13;

      v22 = (v4[7] + 16 * v21);
      *v22 = v9;
      v22[1] = v11;
LABEL_3:

      goto LABEL_4;
    }

LABEL_14:
    v4[(v13 >> 6) + 8] |= 1 << v13;
    v24 = (v4[6] + 16 * v13);
    *v24 = v6;
    v24[1] = v5;
    v25 = (v4[7] + 16 * v13);
    *v25 = v9;
    v25[1] = v11;
    v26 = v4[2];
    v17 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (v17)
    {
      goto LABEL_19;
    }

    v4[2] = v27;
LABEL_4:
    v3 += 2;
    if (!--v2)
    {
      return v4;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  result = sub_25154D540();
  __break(1u);
  return result;
}

void sub_25154BAAC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void, void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D837D0], MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t HealthContentDaemonPluginObject.pluginIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC25HealthContentDaemonPlugin31HealthContentDaemonPluginObject_pluginIdentifier);

  return v1;
}

id sub_25154BBAC(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();
  v2 = sub_25154D200();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25154D1D0();
  v6 = sub_25154D1F0();
  v7 = sub_25154D380();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v8 = 136446210;
    v10 = sub_25154D5D0();
    v12 = sub_25154C4BC(v10, v11, &v18);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_2514E7000, v6, v7, "[%{public}s] returning extension for healthd", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x253079210](v9, -1, -1);
    MEMORY[0x253079210](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v13 = objc_allocWithZone(type metadata accessor for ConcreteHealthContentDaemonExtension());
  v14 = swift_unknownObjectRetain();
  v15 = sub_2514EC2A0(v14);
  swift_unknownObjectRelease();
  sub_25154CA4C(&qword_2813D85C8, type metadata accessor for ConcreteHealthContentDaemonExtension, &protocol conformance descriptor for ConcreteHealthContentDaemonExtension);
  return v15;
}

id sub_25154BE28(void *a1, uint64_t a2)
{
  swift_getObjectType();
  v3 = sub_25154D200();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25154D1D0();
  v7 = sub_25154D1F0();
  v8 = sub_25154D380();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v9 = 136446210;
    v11 = sub_25154D5D0();
    v13 = sub_25154C4BC(v11, v12, &v20);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_2514E7000, v7, v8, "[%{public}s] returning extension for profile", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x253079210](v10, -1, -1);
    MEMORY[0x253079210](v9, -1, -1);
  }

  (*(v4 + 8))(v6, v3);
  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  if (!v14)
  {
    return 0;
  }

  v15 = v14;
  objc_allocWithZone(type metadata accessor for ConcreteHealthContentProfileExtension());
  v16 = a1;
  v17 = sub_2514F6D0C(v15);

  sub_25154CA4C(&qword_2813D85D0, type metadata accessor for ConcreteHealthContentProfileExtension, &unk_25154E620);
  return v17;
}

id sub_25154C0C8(uint64_t a1)
{
  v1 = objc_allocWithZone(type metadata accessor for ConcreteHealthContentDaemonExtension());
  v2 = swift_unknownObjectRetain();
  v3 = sub_2514EC2A0(v2);
  swift_unknownObjectRelease();
  sub_25154CA4C(&qword_2813D85C8, type metadata accessor for ConcreteHealthContentDaemonExtension, &protocol conformance descriptor for ConcreteHealthContentDaemonExtension);
  return v3;
}

id sub_25154C14C(void *a1)
{
  v2 = objc_allocWithZone(type metadata accessor for ConcreteHealthContentProfileExtension());
  v3 = a1;
  v4 = sub_2514F6D0C(v3);

  sub_25154CA4C(&qword_2813D85D0, type metadata accessor for ConcreteHealthContentProfileExtension, &unk_25154E620);
  return v4;
}

id sub_25154C1CC(uint64_t a1)
{
  v2 = objc_allocWithZone(MEMORY[0x277D103A8]);

  return [v2 initWithProfile_];
}

id HealthContentDaemonPluginObject.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HealthContentDaemonPluginObject.init()()
{
  v1 = &v0[OBJC_IVAR____TtC25HealthContentDaemonPlugin31HealthContentDaemonPluginObject_pluginIdentifier];
  *v1 = sub_25154CD60();
  v1[1] = v2;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for HealthContentDaemonPluginObject();
  return objc_msgSendSuper2(&v4, sel_init);
}

id HealthContentDaemonPluginObject.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HealthContentDaemonPluginObject();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t HealthContentDaemonPluginObject.taskServerClasses()()
{
  sub_25154CAB8(0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_25154E5A0;
  *(v0 + 32) = sub_25154CB5C(0, &qword_2813D8388, 0x277D103A0);
  *(v0 + 40) = sub_25154CB5C(0, &qword_2813D8380, 0x277D103D0);
  *(v0 + 48) = type metadata accessor for HealthOntologyStoreTaskServer();
  return v0;
}

unint64_t sub_25154C4BC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_25154C588(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_2514F2370(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_25154C588(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_25154C694(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_25154D480();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_25154C694(uint64_t a1, unint64_t a2)
{
  v3 = sub_25154C6E0(a1, a2);
  sub_25154C810(&unk_286375448);
  return v3;
}

void *sub_25154C6E0(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_25154C8FC(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_25154D480();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_25154D2D0();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_25154C8FC(v10, 0);
        result = sub_25154D420();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_25154C810(uint64_t result)
{
  v2 = *(result + 16);
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

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_25154C964(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_25154C8FC(uint64_t a1, uint64_t a2)
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

  sub_25154CCC0();
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_25154C964(char *result, int64_t a2, char a3, char *a4)
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
    sub_25154CCC0();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_25154CA4C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_25154CAB8(uint64_t a1)
{
  if (!qword_2813D8348)
  {
    sub_25154CB10();
    v1 = sub_25154D510();
    if (!v2)
    {
      atomic_store(v1, &qword_2813D8348);
    }
  }
}

unint64_t sub_25154CB10()
{
  result = qword_2813D8340;
  if (!qword_2813D8340)
  {
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_2813D8340);
  }

  return result;
}

uint64_t sub_25154CB5C(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t dispatch thunk of HealthContentDaemonPluginObject.extension(for:)()
{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x58))();
}

{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x60))();
}

void sub_25154CCC0()
{
  if (!qword_27F43CF90)
  {
    v0 = sub_25154D510();
    if (!v1)
    {
      atomic_store(v0, &qword_27F43CF90);
    }
  }
}