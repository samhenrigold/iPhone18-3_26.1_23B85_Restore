uint64_t sub_2587F7D78(void *a1)
{
  sub_2587FAAF8(0, &qword_27F95E8D0, type metadata accessor for ContactLabelEditViewModel, MEMORY[0x277CE10B8]);
  sub_2588BD2C8();
  swift_beginAccess();
  if (*(v3 + 144) == 1)
  {
    *(v3 + 144) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath("0(\n'");
    MEMORY[0x28223BE20](KeyPath);
    sub_2587FA228(&qword_27F95E8A0, type metadata accessor for ContactLabelEditViewModel, &protocol conformance descriptor for ContactLabelEditViewModel);
    sub_2588BBB88();
  }
}

void sub_2587F7EFC(uint64_t a1@<X8>)
{
  v2 = sub_2588BC278();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2587F9C98(0);
  MEMORY[0x28223BE20](v6);
  v8 = (&v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2587F80E8(v8);
  sub_2588BC268();
  sub_2587FA270();
  sub_2587FA228(&qword_27F95E988, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
  sub_2588BCE48();
  (*(v3 + 8))(v5, v2);
  sub_2587FACAC(v8, sub_2587F9C98);
  v9 = sub_2588BC8C8();
  sub_2587F9CEC(0, &qword_27F95E8F0, sub_2587F9BC4, sub_2587E60D0);
  *(a1 + *(v10 + 36)) = v9;
}

void sub_2587F80E8(void *a1@<X8>)
{
  v2 = v1;
  v45 = a1;
  sub_2587FAB5C(0, &qword_27F95E9C0, MEMORY[0x277CE0330]);
  v43 = v3;
  MEMORY[0x28223BE20](v3);
  v44 = (&v33 - v4);
  v40 = sub_2588BC978();
  v5 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2587F9E14(0);
  v41 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2587F9D60(0);
  v36 = v11;
  v34 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2587F9CB8(0);
  v42 = v14;
  MEMORY[0x28223BE20](v14);
  v35 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v1;
  v38 = v1[1];
  v39 = v16;
  v50 = v16;
  v51 = v38;
  sub_2587FAAF8(0, &qword_27F95E8D0, type metadata accessor for ContactLabelEditViewModel, MEMORY[0x277CE10B8]);
  v37 = v17;
  sub_2588BD2C8();
  v18 = v48;
  swift_getKeyPath("P(\n'");
  v50 = v18;
  sub_2587FA228(&qword_27F95E8A0, type metadata accessor for ContactLabelEditViewModel, &protocol conformance descriptor for ContactLabelEditViewModel);
  sub_2588BBB98();

  swift_beginAccess();
  v19 = v18[3];
  if (v19)
  {
    v20 = v18[2];
  }

  else
  {
    swift_getKeyPath("P(\n'");
    v48 = v18;
    sub_2588BBB98();

    v20 = v18[8];
    v19 = v18[9];

    if (!v19)
    {
      v32 = v44;
      *v44 = 0xD000000000000051;
      v32[1] = 0x80000002588C9CB0;
      swift_storeEnumTagMultiPayload();
      sub_2587FA2F0();
      sub_2587FA400();
      sub_2588BC778();
      return;
    }
  }

  *v10 = sub_2588BC6F8();
  *(v10 + 1) = 0x4000000000000000;
  v10[16] = 0;
  sub_2587FABC4(0);
  sub_2587F8B24(v20, v19, v2, &v10[*(v21 + 44)]);
  sub_2588BC958();
  v22 = sub_2587FA228(&qword_27F95E968, sub_2587F9E14, MEMORY[0x277CE1198]);
  v23 = v41;
  sub_2588BCF88();
  (*(v5 + 8))(v7, v40);
  sub_2587FADE4(v10, sub_2587F9E14);
  sub_2587FAC5C(0, &qword_280C0DDD0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2588C00B0;
  v48 = v39;
  v49 = v38;
  sub_2588BD2C8();
  v25 = v46;
  swift_getKeyPath("P(\n'");
  v48 = v25;
  sub_2588BBB98();

  swift_beginAccess();
  v27 = v25[16];
  v26 = v25[17];

  *(v24 + 32) = v27;
  *(v24 + 40) = v26;
  v28 = sub_2588BD9A8();

  v29 = HKUIJoinStringsForAutomationIdentifier();

  if (v29)
  {

    sub_2588BD8A8();

    v46 = v23;
    v47 = v22;
    swift_getOpaqueTypeConformance2();
    v31 = v35;
    v30 = v36;
    sub_2588BCFB8();

    (*(v34 + 8))(v13, v30);
    sub_258798A0C(v31, v44);
    swift_storeEnumTagMultiPayload();
    sub_2587FA2F0();
    sub_2587FA400();
    sub_2588BC778();
    sub_2587FACAC(v31, sub_2587F9CB8);
  }

  else
  {
    __break(1u);
  }
}

__n128 sub_2587F877C@<Q0>(void *a1@<X0>, void *a2@<X8>)
{
  v11 = a1[4];
  v17 = *a1;
  sub_2587FAAF8(0, &qword_27F95E8D0, type metadata accessor for ContactLabelEditViewModel, MEMORY[0x277CE10B8]);
  swift_unknownObjectRetain();
  sub_2588BD2E8();
  swift_getKeyPath("P(\n'");
  sub_2587FAAF8(0, &qword_27F95E9B8, type metadata accessor for ContactLabelEditViewModel, MEMORY[0x277CE11F8]);
  sub_2588BD448();

  v26[6] = v23;
  v26[7] = v24;
  v26[8] = v25;
  v26[2] = v19;
  v26[3] = v20;
  v26[4] = v21;
  v26[5] = v22;
  v26[0] = v17;
  v26[1] = v18;

  swift_getKeyPath(byte_2588C2600);
  v3 = MEMORY[0x277CE11F8];
  sub_2587FAC5C(0, &qword_27F95E158, &type metadata for MedicalIDEmergencyContact, MEMORY[0x277CE11F8]);
  sub_2588BD448();

  sub_2587FAE44(v26, &qword_27F95E158, &type metadata for MedicalIDEmergencyContact, v3, sub_2587FAC5C);
  sub_2588BD2C8();
  swift_getKeyPath("P(\n'");
  sub_2587FA228(&qword_27F95E8A0, type metadata accessor for ContactLabelEditViewModel, &protocol conformance descriptor for ContactLabelEditViewModel);
  sub_2588BBB98();

  swift_beginAccess();
  v5 = *(v12 + 128);
  v4 = *(v12 + 136);

  v6 = type metadata accessor for RelationshipPickerView(0);
  v7 = v6[6];
  *(a2 + v7) = swift_getKeyPath(byte_2588C2620);
  sub_2587FAAF8(0, &qword_27F95DB30, MEMORY[0x277CDD848], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  v8 = a2 + v6[8];
  sub_2587FAC5C(0, &qword_27F95D458, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  sub_2588BD2B8();
  *v8 = v12;
  *(v8 + 2) = v13;
  *a2 = v11;
  v9 = a2 + v6[7];
  result = v14;
  *v9 = v14;
  *(v9 + 2) = v15;
  *(v9 + 3) = v16;
  a2[1] = v5;
  a2[2] = v4;
  return result;
}

void sub_2587F8B24(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v60 = a4;
  sub_2587F9F84(0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v61 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v62 = &v55 - v10;
  sub_2587FA08C(0, &qword_27F95E3B0, MEMORY[0x277CDE470], MEMORY[0x277CE0BD8]);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v63 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v64 = &v55 - v14;
  v66 = a1;
  v67 = a2;
  sub_25878F648();

  v15 = sub_2588BCDF8();
  v17 = v16;
  v19 = v18;
  sub_2588BCC08();
  v20 = sub_2588BCDD8();
  v22 = v21;
  v24 = v23;
  v26 = v25;

  sub_2587B1CF8(v15, v17, v19 & 1);

  v57 = v20;
  v66 = v20;
  v67 = v22;
  v56 = v22;
  v27 = v24 & 1;
  LOBYTE(v68) = v24 & 1;
  v58 = v26;
  v69 = v26;
  sub_2587FAC5C(0, &qword_280C0DDD0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_2588BFF50;
  v29 = *a3;
  v30 = a3[1];
  v59 = a3;
  v72 = v29;
  v73 = v30;
  sub_2587FAAF8(0, &qword_27F95E8D0, type metadata accessor for ContactLabelEditViewModel, MEMORY[0x277CE10B8]);
  sub_2588BD2C8();
  v31 = v65;
  swift_getKeyPath("P(\n'");
  v72 = v31;
  sub_2587FA228(&qword_27F95E8A0, type metadata accessor for ContactLabelEditViewModel, &protocol conformance descriptor for ContactLabelEditViewModel);
  sub_2588BBB98();

  swift_beginAccess();
  v33 = *(v31 + 128);
  v32 = *(v31 + 136);

  *(v28 + 32) = v33;
  *(v28 + 40) = v32;
  *(v28 + 48) = 1701667150;
  *(v28 + 56) = 0xE400000000000000;
  v34 = sub_2588BD9A8();

  v35 = HKUIJoinStringsForAutomationIdentifier();

  if (v35)
  {
    sub_2588BD8A8();

    sub_2588BCFB8();

    sub_2587B1CF8(v57, v56, v27);

    v36 = v62;
    sub_2587F9134(v62);
    v66 = v29;
    v67 = v30;
    sub_2588BD2C8();
    v37 = v65;
    swift_getKeyPath("P(\n'");
    v66 = v37;
    sub_2588BBB98();

    swift_beginAccess();
    v38 = *(v37 + 128);
    v39 = *(v37 + 136);

    sub_2587F9578(v38, v39, &v66);

    v58 = v67;
    v59 = v66;
    v40 = v68;
    v41 = v69;
    v42 = v71;
    v57 = v70;
    v43 = MEMORY[0x277CDE470];
    v44 = v63;
    v45 = MEMORY[0x277CE0BD8];
    sub_2587FAD0C(v64, v63, &qword_27F95E3B0, MEMORY[0x277CDE470], MEMORY[0x277CE0BD8], sub_2587FA08C);
    v46 = v36;
    v47 = v61;
    sub_2587FA768(v46, v61, sub_2587F9F84);
    v48 = v44;
    v49 = v60;
    sub_2587FAD0C(v48, v60, &qword_27F95E3B0, v43, v45, sub_2587FA08C);
    sub_2587F9EA8(0);
    v51 = v50;
    sub_2587FA768(v47, v49 + *(v50 + 48), sub_2587F9F84);
    v52 = (v49 + *(v51 + 64));
    v54 = v58;
    v53 = v59;
    *v52 = v59;
    v52[1] = v54;
    v52[2] = v40;
    v52[3] = v41;
    v52[4] = v57;
    v52[5] = v42;
    sub_2587FAD80(v53, v54, v40, v41);
    sub_2587FADE4(v62, sub_2587F9F84);
    sub_2587FAE44(v64, &qword_27F95E3B0, v43, MEMORY[0x277CE0BD8], sub_2587FA08C);
    sub_2587FAEA4(v53, v54, v40, v41);
    sub_2587FADE4(v47, sub_2587F9F84);
    sub_2587FAE44(v63, &qword_27F95E3B0, v43, MEMORY[0x277CE0BD8], sub_2587FA08C);
  }

  else
  {
    __break(1u);
  }
}

void sub_2587F9134(uint64_t a1@<X8>)
{
  sub_2587FA08C(0, &qword_27F95E3B0, MEMORY[0x277CDE470], MEMORY[0x277CE0BD8]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v41 - v6;
  v8 = *v1;
  v9 = v1[1];
  v52 = *v1;
  v53 = v9;
  sub_2587FAAF8(0, &qword_27F95E8D0, type metadata accessor for ContactLabelEditViewModel, MEMORY[0x277CE10B8]);
  v48 = v10;
  sub_2588BD2C8();
  sub_2587F7078();
  v12 = v11;
  v14 = v13;

  if (!v14)
  {
    v40 = 1;
    goto LABEL_5;
  }

  v42 = v7;
  v43 = v5;
  v44 = v4;
  v45 = a1;
  v52 = v12;
  v53 = v14;
  sub_25878F648();
  swift_bridgeObjectRetain_n();
  v15 = sub_2588BCDF8();
  v17 = v16;
  v19 = v18;
  sub_2588BCBF8();
  v20 = sub_2588BCDD8();
  v46 = v8;
  v47 = v9;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  sub_2587B1CF8(v15, v17, v19 & 1);

  LODWORD(v52) = sub_2588BC8D8();
  v26 = sub_2588BCD98();
  v28 = v27;
  LOBYTE(v15) = v29;
  v31 = v30;
  sub_2587B1CF8(v21, v23, v25 & 1);

  v52 = v26;
  v53 = v28;
  v32 = v15 & 1;
  v54 = v15 & 1;
  v55 = v31;
  sub_2587FAC5C(0, &qword_280C0DDD0, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_2588BFF50;
  v49 = v46;
  v50 = v47;
  sub_2588BD2C8();
  v34 = v51;
  swift_getKeyPath("P(\n'");
  v49 = v34;
  sub_2587FA228(&qword_27F95E8A0, type metadata accessor for ContactLabelEditViewModel, &protocol conformance descriptor for ContactLabelEditViewModel);
  sub_2588BBB98();

  swift_beginAccess();
  v36 = *(v34 + 128);
  v35 = *(v34 + 136);

  *(v33 + 32) = v36;
  *(v33 + 40) = v35;
  *(v33 + 48) = 0x7265626D754ELL;
  *(v33 + 56) = 0xE600000000000000;
  v37 = sub_2588BD9A8();

  v38 = HKUIJoinStringsForAutomationIdentifier();

  if (v38)
  {
    swift_bridgeObjectRelease_n();
    sub_2588BD8A8();

    v39 = v42;
    sub_2588BCFB8();

    sub_2587B1CF8(v26, v28, v32);

    a1 = v45;
    sub_2587FAF08(v39, v45);
    v40 = 0;
    v5 = v43;
    v4 = v44;
LABEL_5:
    (*(v5 + 56))(a1, v40, 1, v4);
    return;
  }

  __break(1u);
}

uint64_t sub_2587F9578@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v12 = *v3;
  v13 = v3[1];
  sub_2587FAAF8(0, &qword_27F95E8D0, type metadata accessor for ContactLabelEditViewModel, MEMORY[0x277CE10B8]);
  sub_2588BD2C8();
  swift_getKeyPath("P(\n'", v12, v13);
  sub_2587FA228(&qword_27F95E8A0, type metadata accessor for ContactLabelEditViewModel, &protocol conformance descriptor for ContactLabelEditViewModel);
  sub_2588BBB98();

  swift_beginAccess();
  v8 = *(v14 + 96);
  v7 = *(v14 + 104);

  if (v7)
  {

    v10 = sub_2588BCBF8();
    KeyPath = swift_getKeyPath(byte_2588C2650);
    result = sub_2588BC108();
  }

  else
  {
    v8 = 0;
    a1 = 0;
    a2 = 0;
    KeyPath = 0;
    v10 = 0;
  }

  *a3 = v8;
  a3[1] = v7;
  a3[2] = a1;
  a3[3] = a2;
  a3[4] = KeyPath;
  a3[5] = v10;
  return result;
}

uint64_t sub_2587F9730(uint64_t a1)
{
  result = sub_2588BBBD8();
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

void sub_2587F9968(uint64_t a1)
{
  sub_2587FAAF8(319, &qword_27F95E8D0, type metadata accessor for ContactLabelEditViewModel, MEMORY[0x277CE10B8]);
  if (v1 <= 0x3F)
  {
    sub_2587B2F78();
    if (v2 <= 0x3F)
    {
      sub_2587F9A7C();
      if (v3 <= 0x3F)
      {
        sub_2587FAAF8(319, &qword_27F95E8B8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_2587F9A7C()
{
  result = qword_27F95E8D8;
  if (!qword_27F95E8D8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27F95E8D8);
  }

  return result;
}

void sub_2587F9B30(uint64_t a1)
{
  if (!qword_27F95E8E8)
  {
    sub_2587F9CEC(255, &qword_27F95E8F0, sub_2587F9BC4, sub_2587E60D0);
    sub_2587FA454();
    v1 = sub_2588BD348();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95E8E8);
    }
  }
}

void sub_2587F9BC4(uint64_t a1)
{
  if (!qword_27F95E8F8)
  {
    sub_2587F9C98(255);
    sub_2588BC278();
    sub_2587FA270();
    sub_2587FA228(&qword_27F95E988, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F95E8F8);
    }
  }
}

void sub_2587F9CEC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_2588BC1E8();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_2587F9D60(uint64_t a1)
{
  if (!qword_27F95E910)
  {
    sub_2587F9E14(255);
    sub_2587FA228(&qword_27F95E968, sub_2587F9E14, MEMORY[0x277CE1198]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F95E910);
    }
  }
}

void sub_2587F9E14(uint64_t a1)
{
  if (!qword_27F95E918)
  {
    sub_2587FAAF8(255, &qword_27F95E920, sub_2587F9EA8, MEMORY[0x277CE14B8]);
    sub_2587FA1A0();
    v1 = sub_2588BD408();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95E918);
    }
  }
}

void sub_2587F9EA8(uint64_t a1)
{
  if (!qword_27F95E928)
  {
    sub_2587FA08C(255, &qword_27F95E3B0, MEMORY[0x277CDE470], MEMORY[0x277CE0BD8]);
    sub_2587F9F84(255);
    sub_2587FAAF8(255, &qword_27F95E938, sub_2587FA000, MEMORY[0x277D83D88]);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_27F95E928);
    }
  }
}

void sub_2587F9F84(uint64_t a1)
{
  if (!qword_27F95E930)
  {
    sub_2587FA08C(255, &qword_27F95E3B0, MEMORY[0x277CDE470], MEMORY[0x277CE0BD8]);
    v1 = sub_2588BDCE8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95E930);
    }
  }
}

void sub_2587FA000(uint64_t a1)
{
  if (!qword_27F95E940)
  {
    sub_2587FA08C(255, &qword_27F95E948, sub_2587B1964, &type metadata for ContactRelationTextView);
    sub_2587FA0F0(255);
    v1 = sub_2588BC1E8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95E940);
    }
  }
}

void sub_2587FA08C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    v5 = sub_2588BC1E8();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_2587FA0F0(uint64_t a1)
{
  if (!qword_27F95E950)
  {
    sub_2587FA14C();
    v1 = sub_2588BC918();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95E950);
    }
  }
}

unint64_t sub_2587FA14C()
{
  result = qword_27F95E958;
  if (!qword_27F95E958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95E958);
  }

  return result;
}

unint64_t sub_2587FA1A0()
{
  result = qword_27F95E960;
  if (!qword_27F95E960)
  {
    sub_2587FAAF8(255, &qword_27F95E920, sub_2587F9EA8, MEMORY[0x277CE14B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95E960);
  }

  return result;
}

uint64_t sub_2587FA228(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2587FA270()
{
  result = qword_27F95E970;
  if (!qword_27F95E970)
  {
    sub_2587F9C98(255);
    sub_2587FA2F0();
    sub_2587FA400();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95E970);
  }

  return result;
}

unint64_t sub_2587FA2F0()
{
  result = qword_27F95E978;
  if (!qword_27F95E978)
  {
    sub_2587F9CB8(255);
    sub_2587F9E14(255);
    sub_2587FA228(&qword_27F95E968, sub_2587F9E14, MEMORY[0x277CE1198]);
    swift_getOpaqueTypeConformance2();
    sub_2587FA228(&qword_27F95D9D8, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95E978);
  }

  return result;
}

unint64_t sub_2587FA400()
{
  result = qword_27F95E980;
  if (!qword_27F95E980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95E980);
  }

  return result;
}

unint64_t sub_2587FA454()
{
  result = qword_27F95E990;
  if (!qword_27F95E990)
  {
    sub_2587F9CEC(255, &qword_27F95E8F0, sub_2587F9BC4, sub_2587E60D0);
    sub_2587F9C98(255);
    sub_2588BC278();
    sub_2587FA270();
    sub_2587FA228(&qword_27F95E988, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
    swift_getOpaqueTypeConformance2();
    sub_2587FA228(&qword_27F95E628, sub_2587E60D0, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95E990);
  }

  return result;
}

void sub_2587FA5B4(uint64_t a1)
{
  if (!qword_27F95E998)
  {
    sub_2587F9AFC(255);
    type metadata accessor for RelationshipPickerView(255);
    sub_2587FA688();
    sub_2587FA228(&qword_27F95E9B0, type metadata accessor for RelationshipPickerView, &unk_2588C85C0);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F95E998);
    }
  }
}

unint64_t sub_2587FA688()
{
  result = qword_27F95E9A0;
  if (!qword_27F95E9A0)
  {
    sub_2587F9AFC(255);
    sub_2587FA228(&qword_27F95E9A8, sub_2587F9B30, MEMORY[0x277CDF028]);
    sub_2587FA228(&qword_27F95E628, sub_2587E60D0, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95E9A0);
  }

  return result;
}

uint64_t sub_2587FA768(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2587FA7D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContactLabelEditView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2587FA834()
{
  v1 = *(type metadata accessor for ContactLabelEditView(0) - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_2587F7D78(v2);
}

uint64_t objectdestroyTm_7()
{
  v1 = (type metadata accessor for ContactLabelEditView(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  swift_unknownObjectRelease();
  v3 = v1[9];
  sub_2587FAAF8(0, &qword_27F95E160, MEMORY[0x277CDFA28], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_2588BC1C8();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

double sub_2587FA9F4@<D0>(void *a1@<X8>)
{
  v3 = *(type metadata accessor for ContactLabelEditView(0) - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  *&result = sub_2587F877C(v4, a1).n128_u64[0];
  return result;
}

uint64_t sub_2587FAA64(uint64_t a1, _OWORD *a2)
{
  v4 = *(type metadata accessor for ContactLabelEditView(0) - 8);
  v5 = a2[5];
  v6 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));
  v11[4] = a2[4];
  v11[5] = v5;
  v7 = a2[7];
  v11[6] = a2[6];
  v11[7] = v7;
  v8 = a2[1];
  v11[0] = *a2;
  v11[1] = v8;
  v9 = a2[3];
  v11[2] = a2[2];
  v11[3] = v9;
  return (*(v6 + 16))(v11);
}

void sub_2587FAAF8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2587FAB5C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, ValueMetadata *))
{
  if (!*a2)
  {
    sub_2587F9CB8(255);
    v7 = a3(a1, v6, &type metadata for MedicalIDErrorView);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_2587FABC4(uint64_t a1)
{
  if (!qword_27F95E9C8)
  {
    sub_2587FAAF8(255, &qword_27F95E920, sub_2587F9EA8, MEMORY[0x277CE14B8]);
    v1 = sub_2588BC0B8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95E9C8);
    }
  }
}

void sub_2587FAC5C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_2587FACAC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2587FAD0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_2587FAD80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_2587FADE4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2587FAE44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_2587FAEA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_2587FAF08(uint64_t a1, uint64_t a2)
{
  sub_2587FA08C(0, &qword_27F95E3B0, MEMORY[0x277CDE470], MEMORY[0x277CE0BD8]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2587FAF90()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 144) = v2;
  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

void sub_2587FB03C()
{
  sub_2587FB424();
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = *(v0 + 8);
  v6 = swift_allocObject();
  v7 = *(v0 + 16);
  *(v6 + 16) = *v0;
  *(v6 + 32) = v7;
  *(v6 + 48) = *(v0 + 32);
  v13 = v0;
  sub_2587FB4AC(&v15, v14);

  sub_2588BD318();
  sub_258790D88();
  v8 = swift_allocObject();
  v9 = v15;
  *(v8 + 16) = xmmword_2588BFF50;
  *(v8 + 32) = v9;
  *(v8 + 48) = 0x6E6F74747542;
  *(v8 + 56) = 0xE600000000000000;

  v10 = sub_2588BD9A8();

  v11 = HKUIJoinStringsForAutomationIdentifier();

  if (v11)
  {
    sub_2588BD8A8();

    sub_2587FB8A4(&qword_27F95E9D8, sub_2587FB424, MEMORY[0x277CDF028]);
    sub_2588BCFB8();

    (*(v3 + 8))(v5, v2);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2587FB290@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a1[1];
  sub_2587FB508(*a1 & 1);
  sub_25878F648();
  v3 = sub_2588BCDF8();
  v5 = v4;
  v7 = v6;
  sub_2588BCBF8();
  v8 = sub_2588BCDD8();
  v10 = v9;
  v12 = v11;

  sub_2587B1CF8(v3, v5, v7 & 1);

  if (v21)
  {
    sub_2588BD158();
  }

  else
  {
    sub_2588BD178();
  }

  v13 = sub_2588BCD98();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  sub_2587B1CF8(v8, v10, v12 & 1);

  *a2 = v13;
  *(a2 + 8) = v15;
  *(a2 + 16) = v17 & 1;
  *(a2 + 24) = v19;
  return result;
}

void sub_2587FB424()
{
  if (!qword_27F95E9D0)
  {
    v0 = sub_2588BD348();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95E9D0);
    }
  }
}

uint64_t sub_2587FB508(char a1)
{
  v1 = sub_2588BD858();
  MEMORY[0x28223BE20](v1 - 8);
  sub_2588BD7E8();
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v2 = qword_27F95DA88;
  v3 = sub_2588BBAC8();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = v2;
  sub_2588BBAB8();
  return sub_2588BD8B8();
}

uint64_t sub_2587FB6BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_2587FB704(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t sub_2587FB75C()
{
  result = qword_27F95E9E0;
  if (!qword_27F95E9E0)
  {
    sub_2587FB83C(255);
    sub_2587FB8A4(&qword_27F95E9D8, sub_2587FB424, MEMORY[0x277CDF028]);
    sub_2587FB8A4(&qword_27F95D9D8, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95E9E0);
  }

  return result;
}

void sub_2587FB83C(uint64_t a1)
{
  if (!qword_27F95E9E8)
  {
    sub_2587FB424();
    sub_2588BCA98();
    v1 = sub_2588BC1E8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95E9E8);
    }
  }
}

uint64_t sub_2587FB8A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2587FB900()
{
  result = qword_27F95E9F0;
  if (!qword_27F95E9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95E9F0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_11MedicalIDUI15BasicAlertModelVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2587FB998(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_2587FB9E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2587FBA5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a1;
  v29 = a2;
  v3 = v2[1];
  v4 = v2[3];
  v45 = v2[2];
  v46 = v4;
  v5 = v2[1];
  v43 = *v2;
  v44 = v5;
  v6 = v2[3];
  v33 = v45;
  v34 = v6;
  v47 = *(v2 + 8);
  v35 = *(v2 + 8);
  v32 = v3;
  v31 = v43;
  sub_2587FC3C4(0);
  MEMORY[0x259C8C5A0](&v36);
  v7 = v37;
  if (v37)
  {
    v8 = v36;
    v9 = v38;
    v10 = v39;
    v11 = v40;
    v12 = v41;
    v13 = v42;

    sub_2587FC42C(v8, v7, v9, v10, v11, v12, v13);
  }

  else
  {
    sub_2587FC42C(v36, 0, v38, v39, v40, v41, v42);
    v8 = 0;
    v7 = 0xE000000000000000;
  }

  v28 = v7;
  v36 = v8;
  v37 = v7;
  sub_2588BDA78();
  sub_2587FC490(&v43, &v31);
  v14 = sub_2588BDA68();
  v15 = swift_allocObject();
  v16 = MEMORY[0x277D85700];
  *(v15 + 16) = v14;
  *(v15 + 24) = v16;
  v17 = v46;
  *(v15 + 64) = v45;
  *(v15 + 80) = v17;
  *(v15 + 96) = v47;
  v18 = v44;
  *(v15 + 32) = v43;
  *(v15 + 48) = v18;
  sub_2587FC490(&v43, &v31);
  v19 = sub_2588BDA68();
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  *(v20 + 24) = v16;
  v21 = v46;
  *(v20 + 64) = v45;
  *(v20 + 80) = v21;
  *(v20 + 96) = v47;
  v22 = v44;
  *(v20 + 32) = v43;
  *(v20 + 48) = v22;
  v23 = sub_2588BD468();
  v27 = v26;
  v26[3] = v32;
  v24 = MEMORY[0x28223BE20](v23);
  MEMORY[0x28223BE20](v24);
  sub_2587FC55C(0);
  sub_2587FC60C(0);
  sub_2587FC7CC(0, &qword_27F95D970, MEMORY[0x277CE0BD8]);
  sub_2587FC940(&qword_27F95EA28, sub_2587FC55C, MEMORY[0x277CE04B0]);
  sub_25878F648();
  sub_2587FC818();
  sub_2587FC8C0();
  sub_2588BD038();
}

uint64_t sub_2587FBDEC(uint64_t a1)
{
  sub_2587FC3C4(0);
  MEMORY[0x259C8C5A0](&v9);
  v1 = v10;
  if (v10)
  {
    v2 = v9;
    v3 = v11;
    v4 = v12;
    v5 = v13;
    v6 = v14;
    v7 = v15;

    sub_2587FC42C(v2, v1, v3, v4, v5, v6, v7);
  }

  else
  {
    sub_2587FC42C(v9, 0, v11, v12, v13, v14, v15);
  }

  sub_2587FC6E0(0, &qword_27F95EA18, type metadata accessor for BasicAlertModel.Action, MEMORY[0x277D83940]);
  sub_2588BB9F8();
  sub_2587FB424();
  sub_2587FC744();
  sub_2587FC940(&qword_27F95E9D8, sub_2587FB424, MEMORY[0x277CDF028]);
  sub_2587FC940(&qword_27F95EA40, type metadata accessor for BasicAlertModel.Action, &protocol conformance descriptor for BasicAlertModel.Action);
  return sub_2588BD4C8();
}

uint64_t sub_2587FBFC4(uint64_t a1)
{
  v2 = type metadata accessor for BasicAlertModel.Action(0);
  v3 = v2 - 8;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  sub_2587FC6E0(0, &qword_27F95D9E0, MEMORY[0x277CDD650], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v15 - v7;
  v9 = *(v3 + 32);
  v10 = (a1 + *(v3 + 28));
  v11 = v10[1];
  v15[0] = *v10;
  v15[1] = v11;
  sub_2587B226C(a1 + v9, v8);
  sub_2587FCB20(a1, v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for BasicAlertModel.Action);
  v12 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v13 = swift_allocObject();
  sub_2587B2B0C(v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
  sub_25878F648();

  return sub_2588BD328();
}

uint64_t sub_2587FC19C@<X0>(uint64_t *a2@<X8>)
{
  sub_2587FC3C4(0);
  MEMORY[0x259C8C5A0](&v15);
  v3 = v16;
  v4 = v19;
  v5 = v20;
  v6 = v21;
  if (!v16)
  {
    sub_2587FC42C(v15, 0, v17, v18, v19, v20, v21);
    goto LABEL_5;
  }

  v8 = v17;
  v7 = v18;
  v9 = v15;

  sub_2587FC42C(v9, v3, v8, v7, v4, v5, v6);
  if (!v7)
  {
LABEL_5:
    result = 0;
    v11 = 0;
    v14 = 0;
    v12 = 0;
    goto LABEL_6;
  }

  sub_25878F648();
  result = sub_2588BCDF8();
  v14 = v13 & 1;
LABEL_6:
  *a2 = result;
  a2[1] = v11;
  a2[2] = v14;
  a2[3] = v12;
  return result;
}

void sub_2587FC2A4(BOOL *a1@<X8>)
{
  sub_2587FC3C4(0);
  MEMORY[0x259C8C5A0](&v3);
  v2 = v4;
  if (v4)
  {
    sub_2587FC42C(v3, v4, v5, v6, v7, v8, v9);
  }

  *a1 = v2 != 0;
}

_BYTE *sub_2587FC324(_BYTE *result, uint64_t a2, uint64_t a3, __int128 *a4)
{
  if ((*result & 1) == 0)
  {
    v6 = a4[2];
    v7 = a4[3];
    v8 = *(a4 + 8);
    v4 = *a4;
    v5 = a4[1];
    sub_2587FC490(a4, v9);
    sub_2587FC3C4(0);
    sub_2588BD438();
    v9[2] = v6;
    v9[3] = v7;
    v10 = v8;
    v9[0] = v4;
    v9[1] = v5;
    return sub_2587FC9FC(v9);
  }

  return result;
}

void sub_2587FC3C4(uint64_t a1)
{
  if (!qword_27F95E9F8)
  {
    sub_2587FC7CC(255, &qword_27F95DC40, &type metadata for BasicAlertModel);
    v1 = sub_2588BD488();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95E9F8);
    }
  }
}

void sub_2587FC42C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2)
  {
  }
}

uint64_t objectdestroyTm_8()
{
  swift_unknownObjectRelease();

  if (*(v0 + 56))
  {
  }

  return swift_deallocObject();
}

void sub_2587FC55C(uint64_t a1)
{
  if (!qword_27F95EA00)
  {
    sub_2587FC5B8();
    v1 = sub_2588BC8B8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95EA00);
    }
  }
}

unint64_t sub_2587FC5B8()
{
  result = qword_27F95EA08;
  if (!qword_27F95EA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95EA08);
  }

  return result;
}

void sub_2587FC60C(uint64_t a1)
{
  if (!qword_27F95EA10)
  {
    sub_2587FC6E0(255, &qword_27F95EA18, type metadata accessor for BasicAlertModel.Action, MEMORY[0x277D83940]);
    sub_2588BB9F8();
    sub_2587FB424();
    sub_2587FC744();
    sub_2587B2C84();
    v1 = sub_2588BD4D8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95EA10);
    }
  }
}

void sub_2587FC6E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_2587FC744()
{
  result = qword_27F95EA20;
  if (!qword_27F95EA20)
  {
    sub_2587FC6E0(255, &qword_27F95EA18, type metadata accessor for BasicAlertModel.Action, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95EA20);
  }

  return result;
}

void sub_2587FC7CC(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_2588BDCE8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_2587FC818()
{
  result = qword_27F95EA30;
  if (!qword_27F95EA30)
  {
    sub_2587FC60C(255);
    sub_2587FC940(&qword_27F95E9D8, sub_2587FB424, MEMORY[0x277CDF028]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95EA30);
  }

  return result;
}

unint64_t sub_2587FC8C0()
{
  result = qword_27F95EA38;
  if (!qword_27F95EA38)
  {
    sub_2587FC7CC(255, &qword_27F95D970, MEMORY[0x277CE0BD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95EA38);
  }

  return result;
}

uint64_t sub_2587FC940(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2587FC988()
{
  v1 = type metadata accessor for BasicAlertModel.Action(0);
  v3 = *(v1 - 8);
  result = v1 - 8;
  v4 = (v0 + *(result + 36) + ((*(v3 + 80) + 16) & ~*(v3 + 80)));
  if (*v4)
  {
    return (*v4)();
  }

  return result;
}

uint64_t sub_2587FC9FC(uint64_t a1)
{
  sub_2587FC3C4(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2587FCA58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 16);
  v6 = *(a1 + 48);
  v16 = *(a1 + 32);
  v17 = v6;
  v7 = *(a1 + 16);
  v15[0] = *a1;
  v15[1] = v7;
  v8 = *(a1 + 48);
  v12 = v16;
  v13 = v8;
  v18 = *(a1 + 64);
  v14 = *(a1 + 64);
  v10 = v15[0];
  v11 = v5;
  sub_2587FCB20(v15, v19, sub_2587FC3C4);
  MEMORY[0x259C8C270](&v10, a2, &type metadata for BasicAlertModifier, a3);
  v19[2] = v12;
  v19[3] = v13;
  v20 = v14;
  v19[0] = v10;
  v19[1] = v11;
  return sub_2587FCB88(v19);
}

uint64_t sub_2587FCB20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

MedicalIDUI::MedicalIDEditingState_optional __swiftcall MedicalIDEditingState.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2588BDF58();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t MedicalIDEditingState.rawValue.getter()
{
  v1 = 0x64656C62616E65;
  v2 = 0xD00000000000001BLL;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000013;
  }

  if (*v0)
  {
    v1 = 0xD00000000000001BLL;
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

unint64_t sub_2587FCCC4()
{
  result = qword_27F95EA48;
  if (!qword_27F95EA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95EA48);
  }

  return result;
}

uint64_t sub_2587FCD18()
{
  sub_2588BE038();
  sub_2588BD908();

  return sub_2588BE078();
}

uint64_t sub_2587FCDE4(uint64_t a1)
{
  sub_2588BD908();
}

uint64_t sub_2587FCE9C(uint64_t a1)
{
  sub_2588BE038();
  sub_2588BD908();

  return sub_2588BE078();
}

void sub_2587FCF70(unint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x64656C62616E65;
  v4 = 0xD00000000000001BLL;
  v5 = 0x80000002588C8B80;
  if (*v1 != 2)
  {
    v4 = 0xD000000000000013;
    v5 = 0x80000002588C8BA0;
  }

  if (*v1)
  {
    v3 = 0xD00000000000001BLL;
    v2 = 0x80000002588C8B60;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = v5;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_2587FCFFC()
{
  result = qword_27F95EA50;
  if (!qword_27F95EA50)
  {
    sub_2587FD054();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95EA50);
  }

  return result;
}

void sub_2587FD054()
{
  if (!qword_27F95EA58)
  {
    v0 = sub_2588BDA08();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95EA58);
    }
  }
}

uint64_t getEnumTagSinglePayload for OrganDonationStatus(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for OrganDonationStatus(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
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

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t type metadata accessor for NanoEmergencyContactAddNewView(uint64_t a1)
{
  result = qword_27F95EA60;
  if (!qword_27F95EA60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2587FD278(uint64_t a1)
{
  sub_2587B2F78();
  if (v1 <= 0x3F)
  {
    sub_2587FEFD4(319, &qword_27F95EA70, type metadata accessor for AddEmergencyContactFlowViewModel, MEMORY[0x277CE10B8]);
    if (v2 <= 0x3F)
    {
      sub_2587FEFD4(319, &qword_27F95DF88, type metadata accessor for MedicalIDEditableEmergencyContactsModel, MEMORY[0x277CE12F8]);
      if (v3 <= 0x3F)
      {
        sub_2587FF128(319, &qword_27F95DAF8, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
        if (v4 <= 0x3F)
        {
          sub_2587FEFD4(319, &qword_27F95DC90, type metadata accessor for MedicalIDDataManager, MEMORY[0x277CDF468]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_2587FD414@<X0>(uint64_t a1@<X8>)
{
  v49 = a1;
  v2 = type metadata accessor for NanoEmergencyContactAddNewView(0);
  v3 = v2 - 8;
  v43 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v5;
  MEMORY[0x28223BE20](v4);
  v9 = &v36 - v8;
  sub_2587FE91C(0);
  v11 = *(v10 - 8);
  v45 = v10;
  v46 = v11;
  MEMORY[0x28223BE20](v10);
  v42 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2587FEB98(0);
  v14 = *(v13 - 8);
  v47 = v13;
  v48 = v14;
  MEMORY[0x28223BE20](v13);
  v50 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2587FE9CC(0);
  sub_2587FEB50(&qword_27F95EAA0, sub_2587FE9CC, MEMORY[0x277CE1138]);
  sub_2588BC118();
  v16 = v1 + *(v3 + 36);
  v17 = *v16;
  v18 = *(v16 + 8);
  v55 = v17;
  v56 = v18;
  sub_2587FF128(0, &qword_27F95DAF8, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
  v44 = v19;
  sub_2588BD2E8();
  v38 = v53;
  v39 = v1;
  v41 = v9;
  sub_2587FEC9C(v1, v9);
  v20 = (*(v43 + 80) + 16) & ~*(v43 + 80);
  v40 = v7;
  v21 = swift_allocObject();
  sub_2587FED00(v9, v21 + v20);
  sub_2587FEC9C(v1, v6);
  v22 = swift_allocObject();
  sub_2587FED00(v6, v22 + v20);
  v37 = type metadata accessor for RelationshipPickerView(0);
  v43 = sub_2587FEB50(&qword_27F95EAB0, sub_2587FE91C, MEMORY[0x277CDD938]);
  v23 = sub_2587FEB50(&qword_27F95E9B0, type metadata accessor for RelationshipPickerView, &unk_2588C85C0);
  v24 = v45;
  v25 = v42;
  sub_2588BD068();

  (*(v46 + 8))(v25, v24);
  v26 = v39;
  v27 = v39 + *(v3 + 40);
  v28 = *v27;
  v29 = *(v27 + 8);
  v55 = v28;
  v56 = v29;
  sub_2588BD2E8();
  v30 = v26;
  v31 = v41;
  sub_2587FEC9C(v30, v41);
  v32 = swift_allocObject();
  sub_2587FED00(v31, v32 + v20);
  v51 = v24;
  v52 = v37;
  v53 = v43;
  v54 = v23;
  swift_getOpaqueTypeConformance2();
  v33 = v47;
  v34 = v50;
  sub_2588BD068();

  return (*(v48 + 8))(v34, v33);
}

__n128 sub_2587FD9A4@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_2588BC608();
  v16 = 1;
  sub_2587FDA20(&v10);
  v3 = v11;
  v4 = v12;
  v5 = v13;
  v6 = v14;
  v7 = v15;
  result = v10;
  v9 = v16;
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = v9;
  *(a1 + 24) = result;
  *(a1 + 40) = v3;
  *(a1 + 48) = v4;
  *(a1 + 56) = v5;
  *(a1 + 64) = v6;
  *(a1 + 72) = v7;
  return result;
}

uint64_t sub_2587FDA20@<X0>(uint64_t a1@<X8>)
{
  sub_2588BC688();
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v2 = qword_27F95DA88;
  v3 = sub_2588BCDE8();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_2588BD258();
  *a1 = v3;
  *(a1 + 8) = v5;
  v7 &= 1u;
  *(a1 + 16) = v7;
  *(a1 + 24) = v9;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = v10;
  sub_2587A99B0(v3, v5, v7);

  sub_2587B1CF8(v3, v5, v7);
}

uint64_t sub_2587FDB68(uint64_t a1)
{
  v2 = type metadata accessor for NanoEmergencyContactAddNewView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2587FEFD4(0, &qword_27F95D830, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15 - v7;
  v9 = sub_2588BDAA8();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_2587FEC9C(a1, v5);
  sub_2588BDA78();
  v10 = sub_2588BDA68();
  v11 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  *(v12 + 16) = v10;
  *(v12 + 24) = v13;
  sub_2587FED00(v5, v12 + v11);
  sub_25885CB04(0, 0, v8, &unk_2588C2A80, v12);
}

uint64_t sub_2587FDD44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[165] = a4;
  sub_2588BDA78();
  v4[166] = sub_2588BDA68();
  v6 = sub_2588BDA28();
  v4[167] = v6;
  v4[168] = v5;

  return MEMORY[0x2822009F8](sub_2587FDDE0, v6, v5);
}

uint64_t sub_2587FDDE0()
{
  v1 = *(v0 + 1320);
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  *(v0 + 1224) = v2;
  *(v0 + 1232) = v3;
  sub_2587FEFD4(0, &qword_27F95EA70, type metadata accessor for AddEmergencyContactFlowViewModel, MEMORY[0x277CE10B8]);
  sub_2588BD2C8();
  v4 = *(v0 + 1256);
  swift_getKeyPath("8(\n'");
  *(v0 + 1264) = v4;
  sub_2587FEB50(&qword_27F95E380, type metadata accessor for AddEmergencyContactFlowViewModel, &protocol conformance descriptor for AddEmergencyContactFlowViewModel);
  sub_2588BBB98();

  swift_beginAccess();
  v5 = *(v4 + 24);
  v6 = *(v4 + 40);
  v7 = *(v4 + 72);
  *(v0 + 176) = *(v4 + 56);
  *(v0 + 192) = v7;
  *(v0 + 144) = v5;
  *(v0 + 160) = v6;
  v8 = *(v4 + 88);
  v9 = *(v4 + 104);
  v10 = *(v4 + 136);
  *(v0 + 240) = *(v4 + 120);
  *(v0 + 256) = v10;
  *(v0 + 208) = v8;
  *(v0 + 224) = v9;
  sub_2587DEE04(v0 + 144, v0 + 272);

  v11 = *(v0 + 224);
  *(v0 + 80) = *(v0 + 208);
  *(v0 + 96) = v11;
  v12 = *(v0 + 256);
  *(v0 + 112) = *(v0 + 240);
  *(v0 + 128) = v12;
  v13 = *(v0 + 160);
  *(v0 + 16) = *(v0 + 144);
  *(v0 + 32) = v13;
  v14 = *(v0 + 192);
  *(v0 + 48) = *(v0 + 176);
  *(v0 + 64) = v14;
  if (sub_2587DF798(v0 + 16) == 1)
  {

LABEL_12:
    v44 = *(v0 + 8);

    return v44();
  }

  v15 = (v0 + 1040);
  v16 = (v0 + 1120);
  v17 = *(v0 + 64);
  *(v0 + 1072) = *(v0 + 48);
  *(v0 + 1088) = v17;
  *(v0 + 1104) = *(v0 + 80);
  v18 = *(v0 + 32);
  *(v0 + 1040) = *(v0 + 16);
  *(v0 + 1056) = v18;
  v45 = *(v0 + 104);
  v46 = *(v0 + 96);
  v19 = *(v0 + 128);
  *(v0 + 1120) = *(v0 + 112);
  *(v0 + 1136) = v19;
  *(v0 + 1240) = v2;
  *(v0 + 1248) = v3;
  sub_2588BD2C8();
  v20 = *(v0 + 1272);
  swift_getKeyPath(byte_2588C2A20);
  *(v0 + 1280) = v20;
  sub_2588BBB98();

  swift_beginAccess();
  v21 = *(v20 + 160);
  *(v0 + 1352) = v21;
  v22 = *(v20 + 168);
  *(v0 + 1360) = v22;

  if (!v22)
  {

    v41 = *(v0 + 1088);
    *(v0 + 432) = *(v0 + 1072);
    *(v0 + 448) = v41;
    *(v0 + 464) = *(v0 + 1104);
    v42 = *(v0 + 1056);
    *(v0 + 400) = *v15;
    *(v0 + 416) = v42;
    *(v0 + 480) = v46;
    *(v0 + 488) = v45;
    v43 = *(v0 + 1136);
    *(v0 + 496) = *v16;
    *(v0 + 512) = v43;
    sub_2587C66FC(v0 + 400);
    goto LABEL_12;
  }

  type metadata accessor for NanoEmergencyContactAddNewView(0);
  sub_2587FEFD4(0, &qword_27F95DF88, type metadata accessor for MedicalIDEditableEmergencyContactsModel, MEMORY[0x277CE12F8]);
  sub_2588BD528();
  v23 = *(v0 + 1288);
  v24 = *(v0 + 1088);
  *(v0 + 560) = *(v0 + 1072);
  *(v0 + 576) = v24;
  *(v0 + 592) = *(v0 + 1104);
  v25 = *(v0 + 1056);
  *(v0 + 528) = *v15;
  *(v0 + 544) = v25;
  *(v0 + 608) = v21;
  *(v0 + 616) = v22;
  v26 = *(v0 + 1136);
  *(v0 + 624) = *v16;
  *(v0 + 640) = v26;
  swift_getKeyPath(byte_2588C2AB0);
  *(v0 + 1296) = v23;
  sub_2587914E8(v0 + 528, v0 + 656);
  sub_2587FEB50(&qword_27F95DBD0, type metadata accessor for MedicalIDEditableEmergencyContactsModel, &protocol conformance descriptor for MedicalIDEditableEmergencyContactsModel);
  sub_2588BBB98();

  *(v0 + 1304) = v23;
  swift_getKeyPath(byte_2588C2AB0);
  sub_2588BBBB8();

  swift_beginAccess();
  v27 = *(v23 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v23 + 16) = v27;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v27 = sub_2587F0300(0, *(v27 + 2) + 1, 1, v27);
    *(v23 + 16) = v27;
  }

  v30 = *(v27 + 2);
  v29 = *(v27 + 3);
  if (v30 >= v29 >> 1)
  {
    v27 = sub_2587F0300((v29 > 1), v30 + 1, 1, v27);
  }

  v31 = *(v0 + 1320);
  *(v27 + 2) = v30 + 1;
  v32 = &v27[128 * v30];
  v33 = *(v0 + 528);
  v34 = *(v0 + 544);
  v35 = *(v0 + 576);
  *(v32 + 4) = *(v0 + 560);
  *(v32 + 5) = v35;
  *(v32 + 2) = v33;
  *(v32 + 3) = v34;
  v36 = *(v0 + 592);
  v37 = *(v0 + 608);
  v38 = *(v0 + 640);
  *(v32 + 8) = *(v0 + 624);
  *(v32 + 9) = v38;
  *(v32 + 6) = v36;
  *(v32 + 7) = v37;
  *(v23 + 16) = v27;
  swift_endAccess();
  *(v0 + 1312) = v23;
  swift_getKeyPath(byte_2588C2AB0);
  sub_2588BBBA8();

  v47 = (*v31 + **v31);
  v39 = swift_task_alloc();
  *(v0 + 1368) = v39;
  *v39 = v0;
  v39[1] = sub_2587FE39C;

  return v47();
}

uint64_t sub_2587FE39C()
{
  v2 = *v1;
  *(*v1 + 1376) = v0;

  v3 = *(v2 + 1344);
  v4 = *(v2 + 1336);
  if (v0)
  {
    v5 = sub_2587FE560;
  }

  else
  {
    v5 = sub_2587FE4B8;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_2587FE4B8()
{
  v1 = *(v0 + 1360);
  v2 = *(v0 + 1352);

  v3 = *(v0 + 1056);
  v4 = *(v0 + 1088);
  *(v0 + 944) = *(v0 + 1072);
  *(v0 + 960) = v4;
  *(v0 + 976) = *(v0 + 1104);
  *(v0 + 912) = *(v0 + 1040);
  *(v0 + 928) = v3;
  *(v0 + 992) = v2;
  *(v0 + 1000) = v1;
  v5 = *(v0 + 1136);
  *(v0 + 1008) = *(v0 + 1120);
  *(v0 + 1024) = v5;
  sub_2587C66FC(v0 + 912);
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_2587FE560()
{
  v1 = *(v0 + 1360);
  v2 = *(v0 + 1352);

  v3 = *(v0 + 1056);
  v4 = *(v0 + 1088);
  *(v0 + 816) = *(v0 + 1072);
  *(v0 + 832) = v4;
  *(v0 + 848) = *(v0 + 1104);
  *(v0 + 784) = *(v0 + 1040);
  *(v0 + 800) = v3;
  *(v0 + 864) = v2;
  *(v0 + 872) = v1;
  v5 = *(v0 + 1136);
  *(v0 + 880) = *(v0 + 1120);
  *(v0 + 896) = v5;
  sub_2587C66FC(v0 + 784);
  v6 = *(v0 + 8);

  return v6();
}

__n128 sub_2587FE608@<Q0>(void *a2@<X8>)
{
  v3 = [objc_allocWithZone(MEMORY[0x277D12930]) init];
  sub_2587FEFD4(0, &qword_27F95EA70, type metadata accessor for AddEmergencyContactFlowViewModel, MEMORY[0x277CE10B8]);
  sub_2588BD2E8();
  swift_getKeyPath(byte_2588C2A20);
  sub_2587FEFD4(0, &qword_27F95EAB8, type metadata accessor for AddEmergencyContactFlowViewModel, MEMORY[0x277CE11F8]);
  sub_2588BD448();

  type metadata accessor for NanoEmergencyContactAddNewView(0);
  sub_2587FEFD4(0, &qword_27F95DF88, type metadata accessor for MedicalIDEditableEmergencyContactsModel, MEMORY[0x277CE12F8]);
  sub_2588BD528();
  v5 = *(v11 + 32);
  v4 = *(v11 + 40);

  v6 = type metadata accessor for RelationshipPickerView(0);
  v7 = v6[6];
  *(a2 + v7) = swift_getKeyPath("p(\n'");
  sub_2587FEFD4(0, &qword_27F95DB30, MEMORY[0x277CDD848], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  v8 = a2 + v6[8];
  sub_2587FF128(0, &qword_27F95D458, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  sub_2588BD2B8();
  *v8 = v11;
  *(v8 + 2) = v12;
  *a2 = v3;
  v9 = a2 + v6[7];
  result = v13;
  *v9 = v13;
  *(v9 + 2) = v14;
  *(v9 + 3) = v15;
  a2[1] = v5;
  a2[2] = v4;
  return result;
}

uint64_t sub_2587FE88C(uint64_t a1)
{
  type metadata accessor for NanoEmergencyContactAddNewView(0);
  sub_2587FF128(0, &qword_27F95DAF8, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
  return sub_2588BD2D8();
}

void sub_2587FE91C(uint64_t a1)
{
  if (!qword_27F95EA78)
  {
    sub_2587FE9CC(255);
    sub_2587FEB50(&qword_27F95EAA0, sub_2587FE9CC, MEMORY[0x277CE1138]);
    v1 = sub_2588BC128();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95EA78);
    }
  }
}

void sub_2587FE9CC(uint64_t a1)
{
  if (!qword_27F95EA80)
  {
    sub_2587FEFD4(255, &qword_27F95EA88, sub_2587FEA60, MEMORY[0x277CE14B8]);
    sub_2587FEAC8();
    v1 = sub_2588BD368();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95EA80);
    }
  }
}

void sub_2587FEA60()
{
  if (!qword_27F95EA90)
  {
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27F95EA90);
    }
  }
}

unint64_t sub_2587FEAC8()
{
  result = qword_27F95EA98;
  if (!qword_27F95EA98)
  {
    sub_2587FEFD4(255, &qword_27F95EA88, sub_2587FEA60, MEMORY[0x277CE14B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95EA98);
  }

  return result;
}

uint64_t sub_2587FEB50(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2587FEB98(uint64_t a1)
{
  if (!qword_27F95EAA8)
  {
    sub_2587FE91C(255);
    type metadata accessor for RelationshipPickerView(255);
    sub_2587FEB50(&qword_27F95EAB0, sub_2587FE91C, MEMORY[0x277CDD938]);
    sub_2587FEB50(&qword_27F95E9B0, type metadata accessor for RelationshipPickerView, &unk_2588C85C0);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F95EAA8);
    }
  }
}

uint64_t sub_2587FEC9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NanoEmergencyContactAddNewView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2587FED00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NanoEmergencyContactAddNewView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_9()
{
  v1 = (type metadata accessor for NanoEmergencyContactAddNewView(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[8];
  sub_2587FEFD4(0, &qword_27F95DF88, type metadata accessor for MedicalIDEditableEmergencyContactsModel, MEMORY[0x277CE12F8]);
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  return swift_deallocObject();
}

double sub_2587FEED8@<D0>(void *a1@<X8>)
{
  type metadata accessor for NanoEmergencyContactAddNewView(0);

  *&result = sub_2587FE608(a1).n128_u64[0];
  return result;
}

uint64_t sub_2587FEF60(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for NanoEmergencyContactAddNewView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

void sub_2587FEFD4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2587FF038(uint64_t a1)
{
  v4 = *(type metadata accessor for NanoEmergencyContactAddNewView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2587AE310;

  return sub_2587FDD44(a1, v6, v7, v1 + v5);
}

void sub_2587FF128(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t type metadata accessor for NanoEmergencyContactsOverallEditView(uint64_t a1)
{
  result = qword_27F95EAC0;
  if (!qword_27F95EAC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2587FF1EC(uint64_t a1)
{
  sub_258800A64(319, &qword_27F95DF88, type metadata accessor for MedicalIDEditableEmergencyContactsModel, MEMORY[0x277CE12F8]);
  if (v1 <= 0x3F)
  {
    sub_258800A64(319, &qword_27F95DC90, type metadata accessor for MedicalIDDataManager, MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_2587FF2EC()
{
  v1 = sub_2588BC598();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for NanoEmergencyContactsOverallEditView(0) + 20));
  v6 = *v5;
  v7 = *(v5 + 8);

  if ((v7 & 1) == 0)
  {
    sub_2588BDBE8();
    v8 = sub_2588BCB58();
    sub_2588BBC68();

    sub_2588BC588();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    return v10[1];
  }

  return v6;
}

uint64_t sub_2587FF43C@<X0>(uint64_t a1@<X8>)
{
  v56 = a1;
  v54 = type metadata accessor for NanoEmergencyContactAddNewView(0) - 8;
  v2 = MEMORY[0x28223BE20](v54);
  v55 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v52 = (&v44 - v4);
  v5 = type metadata accessor for NanoEmergencyContactsOverallEditView(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v48 = v7;
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for NanoEmergencyContactEditSectionView(0);
  v10 = v9 - 8;
  v11 = MEMORY[0x28223BE20](v9);
  v53 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v57 = (&v44 - v13);
  v49 = type metadata accessor for NanoEmergencyContactsOverallEditView;
  v45 = v1;
  sub_258800914(v1, v8, type metadata accessor for NanoEmergencyContactsOverallEditView);
  v14 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v15 = swift_allocObject();
  sub_258800530(v8, v15 + v14);
  sub_258800A64(0, &qword_27F95DF88, type metadata accessor for MedicalIDEditableEmergencyContactsModel, MEMORY[0x277CE12F8]);
  v47 = v16;
  sub_2588BD528();
  v44 = *&v61[0];
  type metadata accessor for MedicalIDDataManager(0);
  v46 = sub_258800660(&qword_27F95D3A8, type metadata accessor for MedicalIDDataManager, &protocol conformance descriptor for MedicalIDDataManager);
  v17 = sub_2588BBF58();
  v19 = v18;
  v20 = v57;
  *v57 = &unk_2588C2B60;
  v20[1] = v15;
  v51 = type metadata accessor for MedicalIDEditableEmergencyContactsModel(0);
  v50 = sub_258800660(&qword_27F95DBD0, type metadata accessor for MedicalIDEditableEmergencyContactsModel, &protocol conformance descriptor for MedicalIDEditableEmergencyContactsModel);
  sub_2588BD548();
  v21 = v20 + *(v10 + 32);
  *v21 = v17;
  v21[8] = v19 & 1;
  sub_258800914(v45, v8, v49);
  v22 = swift_allocObject();
  sub_258800530(v8, v22 + v14);
  sub_2588BD528();
  v23 = sub_2588BBF58();
  LOBYTE(v10) = v24;
  v25 = v52;
  *v52 = &unk_2588C2B70;
  v25[1] = v22;
  type metadata accessor for AddEmergencyContactFlowViewModel(0);
  v26 = swift_allocObject();
  *(v26 + 16) = 2;
  sub_25880088C(v61);
  v27 = v61[5];
  *(v26 + 88) = v61[4];
  *(v26 + 104) = v27;
  v28 = v61[7];
  *(v26 + 120) = v61[6];
  *(v26 + 136) = v28;
  v29 = v61[1];
  *(v26 + 24) = v61[0];
  *(v26 + 40) = v29;
  v30 = v61[3];
  *(v26 + 56) = v61[2];
  *(v26 + 72) = v30;
  *(v26 + 152) = 0;
  *(v26 + 154) = 0;
  *(v26 + 160) = 0;
  *(v26 + 168) = 0;
  sub_2588BBBC8();
  v58 = v26;
  sub_2588BD2B8();
  v31 = v60;
  v25[2] = v59;
  v25[3] = v31;
  v32 = v54;
  sub_2588BD548();
  v33 = v25 + v32[9];
  LOBYTE(v58) = 0;
  sub_2588BD2B8();
  v34 = v60;
  *v33 = v59;
  *(v33 + 1) = v34;
  v35 = v25 + v32[10];
  LOBYTE(v58) = 0;
  sub_2588BD2B8();
  v36 = v60;
  *v35 = v59;
  *(v35 + 1) = v36;
  v37 = v25 + v32[11];
  *v37 = v23;
  v37[8] = v10 & 1;
  v38 = v57;
  v39 = v53;
  sub_258800914(v57, v53, type metadata accessor for NanoEmergencyContactEditSectionView);
  v40 = v55;
  sub_258800914(v25, v55, type metadata accessor for NanoEmergencyContactAddNewView);
  v41 = v56;
  sub_258800914(v39, v56, type metadata accessor for NanoEmergencyContactEditSectionView);
  sub_2588008A4(0);
  sub_258800914(v40, v41 + *(v42 + 48), type metadata accessor for NanoEmergencyContactAddNewView);
  sub_25880097C(v25, type metadata accessor for NanoEmergencyContactAddNewView);
  sub_25880097C(v38, type metadata accessor for NanoEmergencyContactEditSectionView);
  sub_25880097C(v40, type metadata accessor for NanoEmergencyContactAddNewView);
  return sub_25880097C(v39, type metadata accessor for NanoEmergencyContactEditSectionView);
}

uint64_t sub_2587FFA58()
{
  v0[2] = sub_2588BDA78();
  v0[3] = sub_2588BDA68();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_2587FFB04;

  return sub_2587FFC60();
}

uint64_t sub_2587FFB04()
{
  *(*v1 + 40) = v0;

  v3 = sub_2588BDA28();
  if (v0)
  {
    v4 = sub_258800AC8;
  }

  else
  {
    v4 = sub_258800ACC;
  }

  return MEMORY[0x2822009F8](v4, v3, v2);
}

uint64_t sub_2587FFC60()
{
  v1[12] = v0;
  sub_2587B63B8(0);
  v1[13] = swift_task_alloc();
  type metadata accessor for MedicalIDData(0);
  v1[14] = swift_task_alloc();
  type metadata accessor for NanoEmergencyContactsOverallEditView(0);
  v1[15] = swift_task_alloc();
  v1[16] = sub_2588BDA78();
  v1[17] = sub_2588BDA68();
  v3 = sub_2588BDA28();
  v1[18] = v3;
  v1[19] = v2;

  return MEMORY[0x2822009F8](sub_2587FFD80, v3, v2);
}

uint64_t sub_2587FFD80()
{
  v1 = v0[15];
  v2 = v0[12];
  v0[20] = sub_2587FF2EC();
  sub_258800914(v2, v1, type metadata accessor for NanoEmergencyContactsOverallEditView);
  v0[21] = sub_2588BDA68();
  v4 = sub_2588BDA28();
  v0[22] = v4;
  v0[23] = v3;

  return MEMORY[0x2822009F8](sub_2587FFE40, v4, v3);
}

uint64_t sub_2587FFE40()
{
  v1 = v0[20];
  v2 = v0[14];
  v3 = v0[13];
  swift_getKeyPath(byte_2588C2B80);
  v0[8] = v1;
  sub_258800660(&qword_27F95D3A8, type metadata accessor for MedicalIDDataManager, &protocol conformance descriptor for MedicalIDDataManager);
  sub_2588BBB98();

  v4 = OBJC_IVAR____TtC11MedicalIDUI20MedicalIDDataManager__medicalIDData;
  swift_beginAccess();
  sub_258800914(v1 + v4, v3, sub_2587B63B8);
  LoadState<>.loadedValue.getter(v2);
  sub_25880097C(v3, sub_2587B63B8);
  sub_258800A64(0, &qword_27F95DF88, type metadata accessor for MedicalIDEditableEmergencyContactsModel, MEMORY[0x277CE12F8]);
  sub_2588BD528();
  v5 = v0[9];
  swift_getKeyPath(byte_2588C2BA8);
  v0[10] = v5;
  sub_258800660(&qword_27F95DBD0, type metadata accessor for MedicalIDEditableEmergencyContactsModel, &protocol conformance descriptor for MedicalIDEditableEmergencyContactsModel);
  sub_2588BBB98();

  swift_beginAccess();
  v6 = *(v5 + 16);

  *(v2 + 16) = v6;
  v7 = swift_task_alloc();
  v0[24] = v7;
  *v7 = v0;
  v7[1] = sub_2588000C0;
  v8 = v0[14];

  return sub_258880280(v8, (v0 + 11));
}

uint64_t sub_2588000C0()
{
  v2 = *v1;

  v3 = *(v2 + 176);
  v4 = *(v2 + 184);
  if (v0)
  {
    v5 = sub_25880030C;
  }

  else
  {
    v5 = sub_2588001D0;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_2588001D0()
{
  v2 = v0[14];
  v1 = v0[15];

  sub_25880097C(v1, type metadata accessor for NanoEmergencyContactsOverallEditView);
  sub_25880097C(v2, type metadata accessor for MedicalIDData);
  v3 = v0[18];
  v4 = v0[19];

  return MEMORY[0x2822009F8](sub_258800280, v3, v4);
}

uint64_t sub_258800280()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25880030C()
{
  v2 = v0[14];
  v1 = v0[15];

  sub_25880097C(v1, type metadata accessor for NanoEmergencyContactsOverallEditView);
  sub_25880097C(v2, type metadata accessor for MedicalIDData);
  v0[25] = v0[11];
  v3 = v0[18];
  v4 = v0[19];

  return MEMORY[0x2822009F8](sub_2588003C4, v3, v4);
}

uint64_t sub_2588003C4()
{
  v1 = *(v0 + 200);

  sub_2587CE078();
  swift_allocError();
  *v2 = v1;

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_258800480()
{
  v0[2] = sub_2588BDA78();
  v0[3] = sub_2588BDA68();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_2587C9A98;

  return sub_2587FFC60();
}

uint64_t sub_258800530(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NanoEmergencyContactsOverallEditView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_258800594()
{
  type metadata accessor for NanoEmergencyContactsOverallEditView(0);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2587AEAC8;

  return sub_2587FFA58();
}

uint64_t sub_258800660(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroyTm_10()
{
  v1 = *(type metadata accessor for NanoEmergencyContactsOverallEditView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  sub_258800A64(0, &qword_27F95DF88, type metadata accessor for MedicalIDEditableEmergencyContactsModel, MEMORY[0x277CE12F8]);
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocObject();
}

uint64_t sub_2588007C0()
{
  type metadata accessor for NanoEmergencyContactsOverallEditView(0);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2587AE310;

  return sub_258800480();
}

double sub_25880088C(_OWORD *a1)
{
  result = 0.0;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

void sub_2588008A4(uint64_t a1)
{
  if (!qword_27F95EAD0)
  {
    type metadata accessor for NanoEmergencyContactEditSectionView(255);
    type metadata accessor for NanoEmergencyContactAddNewView(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F95EAD0);
    }
  }
}

uint64_t sub_258800914(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25880097C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_2588009DC()
{
  result = qword_27F95EAD8;
  if (!qword_27F95EAD8)
  {
    sub_258800A64(255, &qword_27F95EAE0, sub_2588008A4, MEMORY[0x277CE14B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95EAD8);
  }

  return result;
}

void sub_258800A64(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata accessor for NanoEmergencyContactEditSectionView(uint64_t a1)
{
  result = qword_27F95EAE8;
  if (!qword_27F95EAE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_258800B44(uint64_t a1)
{
  sub_2587B2F78();
  if (v1 <= 0x3F)
  {
    sub_2588028C0(319, &qword_27F95DF88, type metadata accessor for MedicalIDEditableEmergencyContactsModel, MEMORY[0x277CE12F8]);
    if (v2 <= 0x3F)
    {
      sub_2588028C0(319, &qword_27F95DC90, type metadata accessor for MedicalIDDataManager, MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_258800C5C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v28 = a1;
  v3 = type metadata accessor for NanoEmergencyContactEditSectionView(0);
  v27 = *(v3 - 8);
  v26 = *(v27 + 64);
  MEMORY[0x28223BE20](v3);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2588028C0(0, &qword_27F95DF88, type metadata accessor for MedicalIDEditableEmergencyContactsModel, MEMORY[0x277CE12F8]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v26 - v9;
  sub_258801EB4(0);
  v29 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2588BD538();
  swift_getKeyPath(byte_2588C2C48, v26);
  sub_2588BD558();

  (*(v8 + 8))(v10, v7);
  v14 = v31;
  v15 = v32;
  v16 = v33;
  KeyPath = swift_getKeyPath("p'\n'");
  sub_2587D4E30(v14, v15, v16, KeyPath, sub_258801090, 0);
  sub_258802018(v2, v5);
  v18 = (*(v27 + 80) + 16) & ~*(v27 + 80);
  v19 = swift_allocObject();
  sub_25880207C(v5, v19 + v18);
  v20 = swift_allocObject();
  *(v20 + 16) = sub_2588020E0;
  *(v20 + 24) = v19;
  v21 = &v13[*(v29 + 36)];
  *v21 = sub_258802150;
  v21[1] = v20;
  sub_2588BD528();
  v22 = v31;
  swift_getKeyPath(byte_2588C2C48);
  v31 = v22;
  sub_258802158(&qword_27F95DBD0, type metadata accessor for MedicalIDEditableEmergencyContactsModel, &protocol conformance descriptor for MedicalIDEditableEmergencyContactsModel);
  sub_2588BBB98();

  swift_beginAccess();
  v23 = *(v22 + 16);

  v30 = v23;
  sub_258802018(v2, v5);
  v24 = swift_allocObject();
  sub_25880207C(v5, v24 + v18);
  sub_258802924(0, &qword_27F95E110, MEMORY[0x277D83940]);
  sub_25880232C();
  sub_258802454();
  sub_2588BD118();

  return sub_2588024E8(v13);
}

uint64_t sub_258801090(_OWORD *a1)
{
  type metadata accessor for ContactLabelEditView(0);
  sub_258802158(&qword_27F95E068, type metadata accessor for ContactLabelEditView, &unk_2588C25B0);
  return sub_2588BD508();
}

uint64_t sub_258801150@<X0>(_OWORD *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [objc_allocWithZone(MEMORY[0x277D12930]) init];
  v5 = *(type metadata accessor for ContactLabelEditView(0) + 28);
  *(a2 + v5) = swift_getKeyPath("@'\n'");
  sub_2588028C0(0, &qword_27F95E160, MEMORY[0x277CDFA28], MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  v6 = a1[7];
  v22[6] = a1[6];
  v22[7] = v6;
  v22[8] = a1[8];
  v7 = a1[3];
  v22[2] = a1[2];
  v22[3] = v7;
  v8 = a1[5];
  v22[4] = a1[4];
  v22[5] = v8;
  v9 = a1[1];
  v22[0] = *a1;
  v22[1] = v9;
  sub_258802924(0, &qword_27F95E158, MEMORY[0x277CE11F8]);
  MEMORY[0x259C8C5A0](v21);
  v27 = v21[4];
  v28 = v21[5];
  v29 = v21[6];
  v30 = v21[7];
  v23 = v21[0];
  v24 = v21[1];
  v25 = v21[2];
  v26 = v21[3];
  type metadata accessor for ContactLabelEditViewModel(0);
  v10 = swift_allocObject();
  *(v10 + 144) = 0;
  sub_2588BBBC8();
  v11 = v28;
  *(v10 + 80) = v27;
  *(v10 + 96) = v11;
  v12 = v30;
  *(v10 + 112) = v29;
  *(v10 + 128) = v12;
  v13 = v24;
  *(v10 + 16) = v23;
  *(v10 + 32) = v13;
  v14 = v26;
  *(v10 + 48) = v25;
  *(v10 + 64) = v14;
  *a2 = v10;
  a2[1] = 0;
  a2[4] = v4;
  v15 = swift_allocObject();
  v16 = a1[7];
  v15[7] = a1[6];
  v15[8] = v16;
  v15[9] = a1[8];
  v17 = a1[3];
  v15[3] = a1[2];
  v15[4] = v17;
  v18 = a1[5];
  v15[5] = a1[4];
  v15[6] = v18;
  v19 = a1[1];
  v15[1] = *a1;
  v15[2] = v19;
  a2[2] = sub_2587D7324;
  a2[3] = v15;
  return sub_2587D732C(a1, v22);
}

uint64_t sub_258801334(uint64_t a1, uint64_t a2)
{
  v15[0] = a2;
  v15[1] = a1;
  v2 = type metadata accessor for NanoEmergencyContactEditSectionView(0);
  v16 = *(v2 - 8);
  v3 = *(v16 + 64);
  MEMORY[0x28223BE20](v2);
  v4 = v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2588028C0(0, &qword_27F95D830, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v15 - v6;
  sub_2588028C0(0, &qword_27F95DF88, type metadata accessor for MedicalIDEditableEmergencyContactsModel, MEMORY[0x277CE12F8]);
  sub_2588BD528();
  v8 = v17;
  swift_getKeyPath(byte_2588C2C48);
  v17 = v8;
  sub_258802158(&qword_27F95DBD0, type metadata accessor for MedicalIDEditableEmergencyContactsModel, &protocol conformance descriptor for MedicalIDEditableEmergencyContactsModel);
  sub_2588BBB98();

  v17 = v8;
  swift_getKeyPath(byte_2588C2C48);
  sub_2588BBBB8();

  swift_beginAccess();
  sub_258802924(0, &qword_27F95E110, MEMORY[0x277D83940]);
  sub_258802634(&qword_27F95E118, MEMORY[0x277D83960]);
  sub_258802634(&qword_27F95E120, MEMORY[0x277D83990]);
  sub_2588BDB68();
  swift_endAccess();
  v17 = v8;
  swift_getKeyPath(byte_2588C2C48);
  sub_2588BBBA8();

  v9 = sub_2588BDAA8();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  sub_258802018(v15[0], v4);
  sub_2588BDA78();
  v10 = sub_2588BDA68();
  v11 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  *(v12 + 16) = v10;
  *(v12 + 24) = v13;
  sub_25880207C(v4, v12 + v11);
  sub_25885CB04(0, 0, v7, &unk_2588C2CA8, v12);
}

uint64_t sub_2588016F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_2588BDA78();
  v4[3] = sub_2588BDA68();
  v6 = sub_2588BDA28();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x2822009F8](sub_258801788, v6, v5);
}

uint64_t sub_258801788()
{
  v3 = (**(v0 + 16) + ***(v0 + 16));
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_258801874;

  return v3();
}

uint64_t sub_258801874()
{
  v2 = *v1;
  *(*v1 + 56) = v0;

  v3 = *(v2 + 40);
  v4 = *(v2 + 32);
  if (v0)
  {
    v5 = sub_2588019B0;
  }

  else
  {
    v5 = sub_2587C9BF4;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_2588019B0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_258801A14(uint64_t a1)
{
  v2 = type metadata accessor for NanoEmergencyContactEditSectionView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2588028C0(0, &qword_27F95D830, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15 - v7;
  v9 = sub_2588BDAA8();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_258802018(a1, v5);
  sub_2588BDA78();
  v10 = sub_2588BDA68();
  v11 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  *(v12 + 16) = v10;
  *(v12 + 24) = v13;
  sub_25880207C(v5, v12 + v11);
  sub_25885CB04(0, 0, v8, &unk_2588C2C98, v12);
}

uint64_t sub_258801BF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_2588BDA78();
  v4[3] = sub_2588BDA68();
  v6 = sub_2588BDA28();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x2822009F8](sub_258801C88, v6, v5);
}

uint64_t sub_258801C88()
{
  v3 = (**(v0 + 16) + ***(v0 + 16));
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_258801D74;

  return v3();
}

uint64_t sub_258801D74()
{
  v2 = *v1;
  *(*v1 + 56) = v0;

  v3 = *(v2 + 40);
  v4 = *(v2 + 32);
  if (v0)
  {
    v5 = sub_258802978;
  }

  else
  {
    v5 = sub_258800ACC;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

void sub_258801EB4(uint64_t a1)
{
  if (!qword_27F95EAF8)
  {
    sub_258801F1C(255);
    sub_2587D6558(255);
    v1 = sub_2588BC1E8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95EAF8);
    }
  }
}

void sub_258801F1C(uint64_t a1)
{
  if (!qword_27F95EB00)
  {
    sub_2587D60F0(255);
    sub_258801FB4(255);
    sub_2587D6458();
    sub_258791374();
    v1 = sub_2588BD4D8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95EB00);
    }
  }
}

void sub_258801FB4(uint64_t a1)
{
  if (!qword_27F95E058)
  {
    type metadata accessor for ContactLabelEditView(255);
    v1 = sub_2588BD518();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95E058);
    }
  }
}

uint64_t sub_258802018(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NanoEmergencyContactEditSectionView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25880207C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NanoEmergencyContactEditSectionView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2588020E0(uint64_t a1)
{
  v3 = *(type metadata accessor for NanoEmergencyContactEditSectionView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_258801334(a1, v4);
}

uint64_t sub_258802158(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroyTm_11()
{
  v1 = (type metadata accessor for NanoEmergencyContactEditSectionView(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[7];
  sub_2588028C0(0, &qword_27F95DF88, type metadata accessor for MedicalIDEditableEmergencyContactsModel, MEMORY[0x277CE12F8]);
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_2588022CC()
{
  v1 = *(type metadata accessor for NanoEmergencyContactEditSectionView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_258801A14(v2);
}

unint64_t sub_25880232C()
{
  result = qword_27F95EB08;
  if (!qword_27F95EB08)
  {
    sub_258801EB4(255);
    sub_2588023DC();
    sub_258802158(&qword_27F95EB18, sub_2587D6558, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95EB08);
  }

  return result;
}

unint64_t sub_2588023DC()
{
  result = qword_27F95EB10;
  if (!qword_27F95EB10)
  {
    sub_258801F1C(255);
    sub_2587D6388();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95EB10);
  }

  return result;
}

unint64_t sub_258802454()
{
  result = qword_27F95EB20;
  if (!qword_27F95EB20)
  {
    sub_258802924(255, &qword_27F95E110, MEMORY[0x277D83940]);
    sub_2587913CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95EB20);
  }

  return result;
}

uint64_t sub_2588024E8(uint64_t a1)
{
  sub_258801EB4(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_258802544(uint64_t a1)
{
  v4 = *(type metadata accessor for NanoEmergencyContactEditSectionView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2587AEAC8;

  return sub_258801BF0(a1, v6, v7, v1 + v5);
}

uint64_t sub_258802634(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_258802924(255, &qword_27F95E110, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroy_11Tm()
{
  v1 = (type metadata accessor for NanoEmergencyContactEditSectionView(0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  swift_unknownObjectRelease();

  v3 = v1[7];
  sub_2588028C0(0, &qword_27F95DF88, type metadata accessor for MedicalIDEditableEmergencyContactsModel, MEMORY[0x277CE12F8]);
  (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_2588027C8(uint64_t a1)
{
  v4 = *(type metadata accessor for NanoEmergencyContactEditSectionView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2587AE310;

  return sub_2588016F0(a1, v6, v7, v1 + v5);
}

void sub_2588028C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_258802924(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for MedicalIDEmergencyContact);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t type metadata accessor for NanoAllergyEditView(uint64_t a1)
{
  result = qword_27F95EB28;
  if (!qword_27F95EB28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2588029F0(uint64_t a1)
{
  result = type metadata accessor for MedicalIDMedicalInfoViewModel(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_258802A78(uint64_t a1, uint64_t a2, uint64_t a3)
{

  *(a1 + 40) = a2;
  *(a1 + 48) = a3;
  return result;
}

uint64_t sub_258802AC0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for MedicalIDMedicalInfoViewModel(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_258802C20(v2, v6);
  if (qword_27F95D0F0 != -1)
  {
    swift_once();
  }

  v7 = qword_27F969838;
  v8 = qword_27F969840;

  sub_25887BEA8(v6, v7, v8, v15);
  *(a1 + 24) = &type metadata for AllergyConfiguration;
  *(a1 + 32) = &off_2869C1778;
  v9 = swift_allocObject();
  *a1 = v9;
  v10 = v15[3];
  v9[3] = v15[2];
  v9[4] = v10;
  v11 = v15[5];
  v9[5] = v15[4];
  v9[6] = v11;
  v12 = v15[1];
  v9[1] = v15[0];
  v9[2] = v12;
  *(a1 + 40) = sub_258802A78;
  *(a1 + 48) = 0;
  type metadata accessor for MedicalIDDataManager(0);
  sub_258802C84();
  result = sub_2588BBF58();
  *(a1 + 56) = result;
  *(a1 + 64) = v14 & 1;
  return result;
}

uint64_t sub_258802C20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MedicalIDMedicalInfoViewModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_258802C84()
{
  result = qword_27F95D3A8;
  if (!qword_27F95D3A8)
  {
    type metadata accessor for MedicalIDDataManager(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95D3A8);
  }

  return result;
}

unint64_t sub_258802CDC()
{
  result = qword_27F95EB38;
  if (!qword_27F95EB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95EB38);
  }

  return result;
}

uint64_t type metadata accessor for NanoConditionsEditView(uint64_t a1)
{
  result = qword_27F95EB40;
  if (!qword_27F95EB40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_258802DC0(uint64_t a1, uint64_t a2, uint64_t a3)
{

  *(a1 + 24) = a2;
  *(a1 + 32) = a3;
  return result;
}

uint64_t sub_258802E08@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for MedicalIDMedicalInfoViewModel(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_258802C20(v2, v6);
  if (qword_27F95D148 != -1)
  {
    swift_once();
  }

  v7 = qword_27F9698E8;
  v8 = qword_27F9698F0;

  sub_25887C284(v6, v7, v8, v15);
  *(a1 + 24) = &type metadata for ConditionsConfiguration;
  *(a1 + 32) = &off_2869C1840;
  v9 = swift_allocObject();
  *a1 = v9;
  v10 = v15[3];
  v9[3] = v15[2];
  v9[4] = v10;
  v11 = v15[5];
  v9[5] = v15[4];
  v9[6] = v11;
  v12 = v15[1];
  v9[1] = v15[0];
  v9[2] = v12;
  *(a1 + 40) = sub_258802DC0;
  *(a1 + 48) = 0;
  type metadata accessor for MedicalIDDataManager(0);
  sub_258802C84();
  result = sub_2588BBF58();
  *(a1 + 56) = result;
  *(a1 + 64) = v14 & 1;
  return result;
}

uint64_t type metadata accessor for NanoMedicationEditView(uint64_t a1)
{
  result = qword_27F95EB50;
  if (!qword_27F95EB50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_258802FF8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for MedicalIDMedicalInfoViewModel(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_258802C20(v2, v6);
  if (qword_27F95D0F0 != -1)
  {
    swift_once();
  }

  v7 = qword_27F969838;
  v8 = qword_27F969840;

  sub_25887C604(v6, v7, v8, v15);
  *(a1 + 24) = &type metadata for MedicationsConfiguration;
  *(a1 + 32) = &off_2869C1908;
  v9 = swift_allocObject();
  *a1 = v9;
  v10 = v15[3];
  v9[3] = v15[2];
  v9[4] = v10;
  v11 = v15[5];
  v9[5] = v15[4];
  v9[6] = v11;
  v12 = v15[1];
  v9[1] = v15[0];
  v9[2] = v12;
  *(a1 + 40) = sub_2587DFD70;
  *(a1 + 48) = 0;
  type metadata accessor for MedicalIDDataManager(0);
  sub_258802C84();
  result = sub_2588BBF58();
  *(a1 + 56) = result;
  *(a1 + 64) = v14 & 1;
  return result;
}

uint64_t type metadata accessor for NanoNameEditView(uint64_t a1)
{
  result = qword_27F95EB60;
  if (!qword_27F95EB60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2588031CC(uint64_t a1)
{
  type metadata accessor for MedicalIDPersonalInfoViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_258803250(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_258803250(uint64_t a1)
{
  if (!qword_27F95DC90)
  {
    type metadata accessor for MedicalIDDataManager(255);
    v1 = sub_2588BBF48();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95DC90);
    }
  }
}

uint64_t type metadata accessor for NanoNotesEditView(uint64_t a1)
{
  result = qword_27F95EB70;
  if (!qword_27F95EB70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_258803354(uint64_t a1, uint64_t a2, uint64_t a3)
{

  *(a1 + 56) = a2;
  *(a1 + 64) = a3;
  return result;
}

uint64_t sub_25880339C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for MedicalIDMedicalInfoViewModel(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_258802C20(v2, v6);
  if (qword_27F95D0F0 != -1)
  {
    swift_once();
  }

  v7 = qword_27F969838;
  v8 = qword_27F969840;

  sub_25887C984(v6, v7, v8, v15);
  *(a1 + 24) = &type metadata for NotesConfiguration;
  *(a1 + 32) = &off_2869C19D0;
  v9 = swift_allocObject();
  *a1 = v9;
  v10 = v15[3];
  v9[3] = v15[2];
  v9[4] = v10;
  v11 = v15[5];
  v9[5] = v15[4];
  v9[6] = v11;
  v12 = v15[1];
  v9[1] = v15[0];
  v9[2] = v12;
  *(a1 + 40) = sub_258803354;
  *(a1 + 48) = 0;
  type metadata accessor for MedicalIDDataManager(0);
  sub_258802C84();
  result = sub_2588BBF58();
  *(a1 + 56) = result;
  *(a1 + 64) = v14 & 1;
  return result;
}

uint64_t sub_2588034FC()
{
  v1 = sub_2588BC598();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for NanoOrganDonorEditView(0) + 24));
  v6 = *v5;
  v7 = *(v5 + 8);

  if ((v7 & 1) == 0)
  {
    sub_2588BDBE8();
    v8 = sub_2588BCB58();
    sub_2588BBC68();

    sub_2588BC588();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    return v10[1];
  }

  return v6;
}

uint64_t sub_25880364C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for NanoOrganDonorEditView(0);
  v5 = a2 + *(v4 + 24);
  type metadata accessor for MedicalIDDataManager(0);
  sub_258804C4C(&qword_27F95D3A8, type metadata accessor for MedicalIDDataManager, &protocol conformance descriptor for MedicalIDDataManager);
  *v5 = sub_2588BBF58();
  *(v5 + 8) = v6 & 1;
  sub_258804B84(a1, a2, type metadata accessor for MedicalIDPersonalInfoViewModel);
  v7 = *(a1 + *(type metadata accessor for MedicalIDData(0) + 80));
  if (v7)
  {
    v8 = [v7 integerValue];
    if (v8 <= 2)
    {
      v9 = 0x30102u >> (8 * v8);
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  result = sub_258804BEC(a1, type metadata accessor for MedicalIDPersonalInfoViewModel);
  v11 = a2 + *(v4 + 20);
  *v11 = v9;
  *(v11 + 8) = 0;
  return result;
}

uint64_t sub_25880377C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for NanoOrganDonorEditView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_27F95D090 != -1)
  {
    swift_once();
  }

  v9 = qword_27F95EB80;
  v8 = *algn_27F95EB88;
  sub_258804B84(a1, &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for NanoOrganDonorEditView);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  sub_258804938(v7, v11 + v10);
  v12 = (a1 + *(v4 + 20));
  v13 = *v12;
  v14 = *(v12 + 1);
  v20[8] = v13;
  v21 = v14;
  sub_258804670();

  sub_2588BD2E8();
  v15 = v22;
  v16 = v23;
  LOBYTE(v10) = v24;
  KeyPath = swift_getKeyPath(byte_2588C2F98);
  sub_2588046DC(0);
  *(a2 + *(v18 + 48)) = KeyPath;
  sub_2588049FC(0, &qword_27F95EBC0, sub_258804A60, MEMORY[0x277CDF458]);
  result = swift_storeEnumTagMultiPayload();
  *(a2 + 40) = v15;
  *(a2 + 48) = v16;
  *(a2 + 56) = v10;
  *a2 = v9;
  *(a2 + 8) = v8;
  *(a2 + 16) = &unk_2869BCFA0;
  *(a2 + 24) = sub_25880499C;
  *(a2 + 32) = v11;
  return result;
}

uint64_t sub_2588039A4(uint64_t a1)
{
  v2 = type metadata accessor for NanoOrganDonorEditView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2588049FC(0, &qword_27F95D830, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15 - v7;
  v9 = sub_2588BDAA8();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_258804B84(a1, v5, type metadata accessor for NanoOrganDonorEditView);
  sub_2588BDA78();
  v10 = sub_2588BDA68();
  v11 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  *(v12 + 16) = v10;
  *(v12 + 24) = v13;
  sub_258804938(v5, v12 + v11);
  sub_25885CB04(0, 0, v8, &unk_2588C2FD0, v12);
}

void *sub_258803B94@<X0>(uint64_t *a1@<X8>)
{
  if (qword_27F95D090 != -1)
  {
    swift_once();
  }

  v3 = qword_27F95EB80;
  v2 = *algn_27F95EB88;

  v4 = MedicalIDPersonalInfoViewModel.localizedOrganDonationDescription()();
  if (v4.value._object)
  {
    countAndFlagsBits = v4.value._countAndFlagsBits;
    result = v4.value._object;
  }

  else
  {
    if (qword_27F95D0C0 != -1)
    {
      swift_once();
    }

    countAndFlagsBits = qword_27F9697D8;
  }

  *a1 = v3;
  a1[1] = v2;
  a1[2] = countAndFlagsBits;
  a1[3] = result;
  return result;
}

uint64_t sub_258803C60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a4;
  sub_2587B63B8(0);
  v4[10] = swift_task_alloc();
  v4[11] = type metadata accessor for MedicalIDData(0);
  v4[12] = swift_task_alloc();
  v4[13] = type metadata accessor for NanoOrganDonorEditView(0);
  v4[14] = swift_task_alloc();
  v4[15] = sub_2588BDA78();
  v4[16] = sub_2588BDA68();
  v6 = sub_2588BDA28();
  v4[17] = v6;
  v4[18] = v5;

  return MEMORY[0x2822009F8](sub_258803D88, v6, v5);
}

uint64_t sub_258803D88()
{
  v1 = v0[14];
  v2 = v0[9];
  v0[19] = sub_2588034FC();
  sub_258804B84(v2, v1, type metadata accessor for NanoOrganDonorEditView);
  v0[20] = sub_2588BDA68();
  v4 = sub_2588BDA28();
  v0[21] = v4;
  v0[22] = v3;

  return MEMORY[0x2822009F8](sub_258803E48, v4, v3);
}

uint64_t sub_258803E48()
{
  v1 = *(v0 + 152);
  v3 = *(v0 + 104);
  v2 = *(v0 + 112);
  v4 = *(v0 + 96);
  v5 = *(v0 + 80);
  swift_getKeyPath(byte_2588C2FD8);
  *(v0 + 56) = v1;
  sub_258804C4C(&qword_27F95D3A8, type metadata accessor for MedicalIDDataManager, &protocol conformance descriptor for MedicalIDDataManager);
  sub_2588BBB98();

  v6 = OBJC_IVAR____TtC11MedicalIDUI20MedicalIDDataManager__medicalIDData;
  swift_beginAccess();
  sub_258804B84(v1 + v6, v5, sub_2587B63B8);
  LoadState<>.loadedValue.getter(v4);
  sub_258804BEC(v5, sub_2587B63B8);
  v7 = (v2 + *(v3 + 20));
  v8 = *v7;
  v9 = *(v7 + 1);
  *(v0 + 40) = v8;
  *(v0 + 48) = v9;
  sub_258804670();
  sub_2588BD2C8();
  v10 = *(v0 + 200);
  if (*(v0 + 200) > 1u || *(v0 + 200))
  {
    sub_2587AEC74();
    v10 = sub_2588BDCC8();
  }

  v11 = *(v0 + 96);
  v12 = *(*(v0 + 88) + 80);

  *(v11 + v12) = v10;
  v13 = swift_task_alloc();
  *(v0 + 184) = v13;
  *v13 = v0;
  v13[1] = sub_258804060;
  v14 = *(v0 + 96);

  return sub_258880280(v14, v0 + 64);
}

uint64_t sub_258804060()
{
  v2 = *v1;

  v3 = *(v2 + 168);
  v4 = *(v2 + 176);
  if (v0)
  {
    v5 = sub_2588042B4;
  }

  else
  {
    v5 = sub_258804170;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_258804170()
{
  v1 = v0[14];
  v2 = v0[12];

  sub_258804BEC(v2, type metadata accessor for MedicalIDData);
  sub_258804BEC(v1, type metadata accessor for NanoOrganDonorEditView);
  v3 = v0[17];
  v4 = v0[18];

  return MEMORY[0x2822009F8](sub_258804224, v3, v4);
}

uint64_t sub_258804224()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2588042B4()
{
  v1 = v0[14];
  v2 = v0[12];

  sub_258804BEC(v2, type metadata accessor for MedicalIDData);
  sub_258804BEC(v1, type metadata accessor for NanoOrganDonorEditView);
  v0[24] = v0[8];
  v3 = v0[17];
  v4 = v0[18];

  return MEMORY[0x2822009F8](sub_258804370, v3, v4);
}

uint64_t sub_258804370()
{
  v1 = *(v0 + 192);

  sub_2587CE078();
  swift_allocError();
  *v2 = v1;

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_258804430()
{
  sub_2588046DC(0);
  MEMORY[0x28223BE20](v1);
  v5 = v0;
  sub_25880377C(v0, &v4[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  sub_258804794();
  sub_258804C4C(&qword_27F95EBB8, sub_2588046DC, &unk_2588C35F0);
  return sub_2588BC118();
}

uint64_t type metadata accessor for NanoOrganDonorEditView(uint64_t a1)
{
  result = qword_27F95EB90;
  if (!qword_27F95EB90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2588045A4(uint64_t a1)
{
  type metadata accessor for MedicalIDPersonalInfoViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_258804670();
    if (v2 <= 0x3F)
    {
      sub_2588049FC(319, &qword_27F95DC90, type metadata accessor for MedicalIDDataManager, MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_258804670()
{
  if (!qword_27F95DC80)
  {
    v0 = sub_2588BD2F8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95DC80);
    }
  }
}

void sub_2588046DC(uint64_t a1)
{
  if (!qword_27F95EBA0)
  {
    v2 = sub_258804738();
    v4 = type metadata accessor for NanoPickerView(a1, &type metadata for OrganDonationStatus, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &qword_27F95EBA0);
    }
  }
}

unint64_t sub_258804738()
{
  result = qword_27F95EBA8;
  if (!qword_27F95EBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95EBA8);
  }

  return result;
}

unint64_t sub_258804794()
{
  result = qword_27F95EBB0;
  if (!qword_27F95EBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95EBB0);
  }

  return result;
}

uint64_t sub_2588047E8()
{
  v0 = sub_2588BD858();
  MEMORY[0x28223BE20](v0 - 8);
  sub_2588BD7E8();
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v1 = qword_27F95DA88;
  v2 = sub_2588BBAC8();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = v1;
  sub_2588BBAB8();
  result = sub_2588BD8B8();
  qword_27F95EB80 = result;
  *algn_27F95EB88 = v5;
  return result;
}

uint64_t sub_258804938(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NanoOrganDonorEditView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25880499C()
{
  v1 = *(type metadata accessor for NanoOrganDonorEditView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_2588039A4(v2);
}

void sub_2588049FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_258804A94(uint64_t a1)
{
  v4 = *(type metadata accessor for NanoOrganDonorEditView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2587AE310;

  return sub_258803C60(a1, v6, v7, v1 + v5);
}

uint64_t sub_258804B84(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_258804BEC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_258804C4C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_258804C94(uint64_t a1)
{
  if (!qword_27F95EBD0)
  {
    sub_2588046DC(255);
    sub_258804794();
    sub_258804C4C(&qword_27F95EBB8, sub_2588046DC, &unk_2588C35F0);
    v1 = sub_2588BC128();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95EBD0);
    }
  }
}

uint64_t sub_258804D4C()
{
  v1 = sub_2588BC598();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for NanoPregnancyEditView(0) + 28));
  v6 = *v5;
  v7 = *(v5 + 8);

  if ((v7 & 1) == 0)
  {
    sub_2588BDBE8();
    v8 = sub_2588BCB58();
    sub_2588BBC68();

    sub_2588BC588();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    return v10[1];
  }

  return v6;
}

uint64_t sub_258804E9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a1;
  v23 = type metadata accessor for NanoPregnancyEditView(0);
  v25 = *(v23 + 24);
  sub_2587AFFC8(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = sub_2588BB9B8();
  v7 = *(v6 - 8);
  v8 = (*(v7 + 56))(&v22 - v5, 1, 1, v6);
  MEMORY[0x28223BE20](v8);
  sub_258806FA4(&v22 - v5, &v22 - v5, sub_2587AFFC8);
  sub_2588BD2B8();
  v24 = sub_2587AFFC8;
  sub_25880700C(&v22 - v5, sub_2587AFFC8);
  v9 = v23;
  v10 = a2 + *(v23 + 28);
  type metadata accessor for MedicalIDDataManager(0);
  sub_25880706C(&qword_27F95D3A8, type metadata accessor for MedicalIDDataManager, &protocol conformance descriptor for MedicalIDDataManager);
  *v10 = sub_2588BBF58();
  *(v10 + 8) = v11 & 1;
  v12 = v26;
  sub_258806FA4(v26, a2, type metadata accessor for MedicalIDPregnancyViewModel);
  v13 = v12 + *(type metadata accessor for MedicalIDPregnancyViewModel(0) + 20);
  v14 = type metadata accessor for MedicalIDData(0);
  v15 = *(v14 + 56);
  MEMORY[0x28223BE20](v14);
  sub_258806FA4(v13 + v15, &v22 - v5, sub_2587AFFC8);
  LOBYTE(v7) = (*(v7 + 48))(&v22 - v5, 1, v6) != 1;
  v16 = v24;
  sub_25880700C(&v22 - v5, v24);
  v17 = a2 + *(v9 + 20);
  v27 = v7;
  v18 = sub_2588BD2B8();
  v19 = v29;
  *v17 = v28;
  *(v17 + 8) = v19;
  MEMORY[0x28223BE20](v18);
  v20 = sub_258806FA4(v13 + v15, &v22 - v5, sub_2587AFFC8);
  MEMORY[0x28223BE20](v20);
  sub_258806FA4(&v22 - v5, &v22 - v5, sub_2587AFFC8);
  sub_258806D88(0, &qword_27F95DC50, sub_2587AFFC8, MEMORY[0x277CE10B8]);
  sub_2588BD2D8();
  sub_25880700C(v26, type metadata accessor for MedicalIDPregnancyViewModel);
  return sub_25880700C(&v22 - v5, v16);
}

uint64_t type metadata accessor for NanoPregnancyEditView(uint64_t a1)
{
  result = qword_27F95EBD8;
  if (!qword_27F95EBD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2588052A0(uint64_t a1)
{
  type metadata accessor for MedicalIDPregnancyViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_2587DC074();
    if (v2 <= 0x3F)
    {
      sub_258806D88(319, &qword_27F95DC50, sub_2587AFFC8, MEMORY[0x277CE10B8]);
      if (v3 <= 0x3F)
      {
        sub_258806D88(319, &qword_27F95DC90, type metadata accessor for MedicalIDDataManager, MEMORY[0x277CDF468]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_2588053D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25[1] = a2;
  v3 = type metadata accessor for NanoPregnancyEditView(0);
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v3);
  v8 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = v25 - v9;
  sub_258806C08(0);
  v12 = v11;
  MEMORY[0x28223BE20](v11);
  v14 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258806FA4(a1, v14, type metadata accessor for MedicalIDPregnancyViewModel);
  sub_258806FA4(a1, v10, type metadata accessor for NanoPregnancyEditView);
  sub_258806FA4(a1, v8, type metadata accessor for NanoPregnancyEditView);
  v15 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v16 = swift_allocObject();
  sub_258806DEC(v8, v16 + v15, type metadata accessor for NanoPregnancyEditView);
  v17 = (a1 + *(v4 + 28));
  v18 = *v17;
  v19 = *(v17 + 1);
  v27 = v18;
  v28 = v19;
  sub_2587DC074();
  sub_2588BD2E8();
  v20 = v25[7];
  v21 = v25[8];
  LOBYTE(v15) = v26;
  sub_258806D88(0, &qword_27F95DC50, sub_2587AFFC8, MEMORY[0x277CE10B8]);
  sub_2588BD2E8();
  v25[4] = v10;
  sub_258804794();
  sub_2588BC118();
  sub_25880700C(v10, type metadata accessor for NanoPregnancyEditView);
  v22 = &v14[*(v12 + 40)];
  *v22 = sub_258806D20;
  *(v22 + 1) = v16;
  v23 = &v14[*(v12 + 44)];
  *v23 = v20;
  *(v23 + 1) = v21;
  v23[16] = v15;
  if (qword_27F95D0D0 != -1)
  {
    swift_once();
  }

  sub_25880706C(&qword_27F95EC08, sub_258806C08, &unk_2588C7E88);

  sub_2588BCF28();

  return sub_25880700C(v14, sub_258806C08);
}

void *sub_25880576C(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for NanoPregnancyEditView(0) + 20));
  v2 = *v1;
  v3 = *(v1 + 1);
  v9[16] = v2;
  v10 = v3;
  sub_2587DC074();
  result = sub_2588BD2C8();
  if ((v9[15] & 1) == 0)
  {
    sub_2587AFFC8(0);
    MEMORY[0x28223BE20](v5 - 8);
    v7 = &v9[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
    v8 = sub_2588BB9B8();
    (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
    sub_258805ECC(v7);
    return sub_25880700C(v7, sub_2587AFFC8);
  }

  return result;
}

uint64_t sub_25880588C@<X0>(uint64_t *a1@<X8>)
{
  if (qword_27F95D0D0 != -1)
  {
    swift_once();
  }

  v2 = *(&xmmword_27F9697F8 + 1);
  v16 = xmmword_27F9697F8;
  sub_2587AFFC8(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2588BB9B8();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = sub_2588BE0A8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_2588BE088();
  v11 = MedicalIDPregnancyViewModel.gestationalAgeDescription(startDate:format:)(v5, v10);
  v13 = v12;
  (*(v8 + 8))(v10, v7);
  result = sub_25880700C(v5, sub_2587AFFC8);
  if (!v13)
  {
    if (qword_27F95D0B8 != -1)
    {
      swift_once();
    }

    v11 = qword_27F9697C8;
    v13 = qword_27F9697D0;
  }

  *a1 = v16;
  a1[1] = v2;
  a1[2] = v11;
  a1[3] = v13;
  return result;
}

uint64_t sub_258805AD0()
{
  v0 = sub_2588BB9B8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2587AFFC8(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NanoPregnancyEditView(0);
  sub_258806D88(0, &qword_27F95DC50, sub_2587AFFC8, MEMORY[0x277CE10B8]);
  sub_2588BD2C8();
  if ((*(v1 + 48))(v6, 1, v0) == 1)
  {
    sub_25880700C(v6, sub_2587AFFC8);
    if (qword_27F95D0B8 != -1)
    {
      swift_once();
    }

    v7 = qword_27F9697C8;
  }

  else
  {
    (*(v1 + 32))(v3, v6, v0);
    v17 = sub_2588BB948();
    v18 = v16;
    v8 = *(v17 - 8);
    MEMORY[0x28223BE20](v17);
    v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_2588BB938();
    v11 = sub_2588BB928();
    v16[1] = v16;
    v12 = *(v11 - 8);
    MEMORY[0x28223BE20](v11);
    v14 = v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_2588BB918();
    v7 = sub_2588BB998();
    (*(v12 + 8))(v14, v11);
    (*(v8 + 8))(v10, v17);
    (*(v1 + 8))(v3, v0);
  }

  return v7;
}

uint64_t sub_258805E50@<X0>(uint64_t *a1@<X8>)
{
  if (qword_27F95D0E8 != -1)
  {
    swift_once();
  }

  v3 = qword_27F969828;
  v2 = unk_27F969830;

  result = sub_258805AD0();
  *a1 = v3;
  a1[1] = v2;
  a1[2] = result;
  a1[3] = v5;
  return result;
}

uint64_t sub_258805ECC(uint64_t a1)
{
  v3 = type metadata accessor for NanoPregnancyEditView(0);
  v21 = *(v3 - 8);
  v4 = *(v21 + 64);
  MEMORY[0x28223BE20](v3);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258806D88(0, &qword_27F95D830, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v20 - v7;
  sub_2587AFFC8(0);
  v20 = *(v9 - 8);
  v10 = *(v20 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  sub_258806FA4(a1, &v20 - v11, sub_2587AFFC8);
  sub_258806D88(0, &qword_27F95DC50, sub_2587AFFC8, MEMORY[0x277CE10B8]);
  sub_2588BD2D8();
  v12 = sub_2588BDAA8();
  (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
  v13 = sub_258806FA4(v1, v5, type metadata accessor for NanoPregnancyEditView);
  MEMORY[0x28223BE20](v13);
  sub_258806FA4(a1, &v20 - v11, sub_2587AFFC8);
  sub_2588BDA78();
  v14 = sub_2588BDA68();
  v15 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v16 = (v4 + *(v20 + 80) + v15) & ~*(v20 + 80);
  v17 = swift_allocObject();
  v18 = MEMORY[0x277D85700];
  *(v17 + 16) = v14;
  *(v17 + 24) = v18;
  sub_258806DEC(v5, v17 + v15, type metadata accessor for NanoPregnancyEditView);
  sub_258806DEC(&v20 - v11, v17 + v16, sub_2587AFFC8);
  sub_25885CB04(0, 0, v8, &unk_2588C3070, v17);
}

uint64_t sub_258806238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  sub_2587B63B8(0);
  v5[9] = swift_task_alloc();
  type metadata accessor for MedicalIDData(0);
  v5[10] = swift_task_alloc();
  type metadata accessor for NanoPregnancyEditView(0);
  v5[11] = swift_task_alloc();
  v5[12] = sub_2588BDA78();
  v5[13] = sub_2588BDA68();
  v7 = sub_2588BDA28();
  v5[14] = v7;
  v5[15] = v6;

  return MEMORY[0x2822009F8](sub_258806358, v7, v6);
}

uint64_t sub_258806358()
{
  v1 = v0[11];
  v2 = v0[7];
  v3 = v0[8];
  v0[16] = sub_258804D4C();
  sub_258806FA4(v2, v1, type metadata accessor for NanoPregnancyEditView);
  sub_2587AFFC8(0);
  v4 = swift_task_alloc();
  v0[17] = v4;
  sub_258806FA4(v3, v4, sub_2587AFFC8);
  v0[18] = sub_2588BDA68();
  v6 = sub_2588BDA28();
  v0[19] = v6;
  v0[20] = v5;

  return MEMORY[0x2822009F8](sub_258806464, v6, v5);
}

uint64_t sub_258806464()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[10];
  v4 = v0[9];
  swift_getKeyPath(byte_2588C3078);
  v0[5] = v2;
  sub_25880706C(&qword_27F95D3A8, type metadata accessor for MedicalIDDataManager, &protocol conformance descriptor for MedicalIDDataManager);
  sub_2588BBB98();

  v5 = OBJC_IVAR____TtC11MedicalIDUI20MedicalIDDataManager__medicalIDData;
  swift_beginAccess();
  sub_258806FA4(v2 + v5, v4, sub_2587B63B8);
  LoadState<>.loadedValue.getter(v3);
  sub_25880700C(v4, sub_2587B63B8);
  MedicalIDPregnancyViewModel.update(_:with:)(v3, v1);
  v6 = swift_task_alloc();
  v0[21] = v6;
  *v6 = v0;
  v6[1] = sub_258806608;
  v7 = v0[10];

  return sub_258880280(v7, (v0 + 6));
}

uint64_t sub_258806608()
{
  v2 = *v1;

  v3 = *(v2 + 152);
  v4 = *(v2 + 160);
  if (v0)
  {
    v5 = sub_25880687C;
  }

  else
  {
    v5 = sub_258806718;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_258806718()
{
  v1 = v0[17];
  v3 = v0[10];
  v2 = v0[11];

  sub_25880700C(v3, type metadata accessor for MedicalIDData);
  sub_25880700C(v1, sub_2587AFFC8);
  sub_25880700C(v2, type metadata accessor for NanoPregnancyEditView);

  v4 = v0[14];
  v5 = v0[15];

  return MEMORY[0x2822009F8](sub_2588067F0, v4, v5);
}

uint64_t sub_2588067F0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25880687C()
{
  v1 = v0[17];
  v3 = v0[10];
  v2 = v0[11];

  sub_25880700C(v3, type metadata accessor for MedicalIDData);
  sub_25880700C(v1, sub_2587AFFC8);
  sub_25880700C(v2, type metadata accessor for NanoPregnancyEditView);
  v0[22] = v0[6];

  v4 = v0[14];
  v5 = v0[15];

  return MEMORY[0x2822009F8](sub_25880695C, v4, v5);
}

uint64_t sub_25880695C()
{
  v1 = *(v0 + 176);

  sub_2587CE078();
  swift_allocError();
  *v2 = v1;

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_258806A18()
{
  sub_258806B54(0);
  MEMORY[0x28223BE20](v1);
  v8 = v0;
  sub_2588053D0(v0, &v7[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  sub_258804794();
  sub_258806C08(255);
  v4 = v3;
  v5 = sub_25880706C(&qword_27F95EC08, sub_258806C08, &unk_2588C7E88);
  v9 = v4;
  v10 = v5;
  swift_getOpaqueTypeConformance2();
  return sub_2588BC118();
}

void sub_258806B54(uint64_t a1)
{
  if (!qword_27F95EBE8)
  {
    sub_258806C08(255);
    sub_25880706C(&qword_27F95EC08, sub_258806C08, &unk_2588C7E88);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F95EBE8);
    }
  }
}

void sub_258806C08(uint64_t a1)
{
  if (!qword_27F95EBF0)
  {
    sub_258806C9C(255);
    v3 = v2;
    v4 = sub_25880706C(&qword_27F95EC00, sub_258806C9C, MEMORY[0x277CDD938]);
    v6 = type metadata accessor for SharedPregnancyEditView(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_27F95EBF0);
    }
  }
}

void sub_258806C9C(uint64_t a1)
{
  if (!qword_27F95EBF8)
  {
    sub_258804794();
    v1 = sub_2588BC128();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95EBF8);
    }
  }
}

void *sub_258806D20()
{
  v1 = *(type metadata accessor for NanoPregnancyEditView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_25880576C(v2);
}

void sub_258806D88(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_258806DEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_258806E54(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for NanoPregnancyEditView(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  sub_2587AFFC8(0);
  v9 = (v6 + v7 + *(*(v8 - 8) + 80)) & ~*(*(v8 - 8) + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_2587AE310;

  return sub_258806238(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_258806FA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25880700C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_25880706C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2588070B4(uint64_t a1)
{
  if (!qword_27F95EC18)
  {
    sub_258806B54(255);
    sub_258804794();
    sub_258806C08(255);
    sub_25880706C(&qword_27F95EC08, sub_258806C08, &unk_2588C7E88);
    swift_getOpaqueTypeConformance2();
    v1 = sub_2588BC128();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95EC18);
    }
  }
}

uint64_t sub_25880719C()
{
  v1 = sub_2588BC598();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for NanoEditMedicalIDPrimaryLanguageView(0) + 20));
  v6 = *v5;
  v7 = *(v5 + 8);

  if ((v7 & 1) == 0)
  {
    sub_2588BDBE8();
    v8 = sub_2588BCB58();
    sub_2588BBC68();

    sub_2588BC588();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    return v10[1];
  }

  return v6;
}

uint64_t NanoEditMedicalIDPrimaryLanguageView.body.getter()
{
  v1 = v0;
  v2 = type metadata accessor for NanoEditMedicalIDPrimaryLanguageView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = type metadata accessor for NanoEditMedicalIDPrimaryLanguageSelectionView(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = v0;
  v8 = (v0 + *(type metadata accessor for MedicalIDData(0) + 60));
  if (v8[1])
  {
    v9 = *v8;
    v10 = v8[1];
  }

  else
  {
    v9 = 0;
    v10 = 0xE000000000000000;
  }

  sub_25880B7B8(v1, &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for NanoEditMedicalIDPrimaryLanguageView);
  v11 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v12 = swift_allocObject();
  sub_25880B9E4(&v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], v12 + v11, type metadata accessor for NanoEditMedicalIDPrimaryLanguageView);
  v13 = *(v5 + 28);
  *(v7 + v13) = swift_getKeyPath(byte_2588C30A0);
  sub_25880BE98(0, &qword_27F95EBC0, sub_258804A60, MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  *v7 = sub_258808198;
  v7[1] = v12;
  v7[3] = v9;
  v7[4] = v10;
  type metadata accessor for MedicalIDSpokenLanguagePickerViewModel(0);
  swift_allocObject();

  v7[2] = MedicalIDSpokenLanguagePickerViewModel.init(primaryLanguageCode:)(v9, v10);
  sub_258804794();
  sub_25880C02C(&qword_27F95EC20, type metadata accessor for NanoEditMedicalIDPrimaryLanguageSelectionView, &protocol conformance descriptor for NanoEditMedicalIDPrimaryLanguageSelectionView);
  return sub_2588BC118();
}

void *sub_2588075AC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for NanoEditMedicalIDPrimaryLanguageView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MedicalIDData(0);
  v9 = a1;
  v10 = (a1 + *(v8 + 60));
  if (v10[1])
  {
    v11 = *v10;
    v12 = v10[1];
  }

  else
  {
    v11 = 0;
    v12 = 0xE000000000000000;
  }

  sub_25880B7B8(v9, &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NanoEditMedicalIDPrimaryLanguageView);
  v13 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v14 = swift_allocObject();
  sub_25880B9E4(v7, v14 + v13, type metadata accessor for NanoEditMedicalIDPrimaryLanguageView);
  v15 = *(type metadata accessor for NanoEditMedicalIDPrimaryLanguageSelectionView(0) + 28);
  *(a2 + v15) = swift_getKeyPath(byte_2588C30A0);
  sub_25880BE98(0, &qword_27F95EBC0, sub_258804A60, MEMORY[0x277CDF458]);
  swift_storeEnumTagMultiPayload();
  *a2 = sub_25880C4DC;
  a2[1] = v14;
  a2[3] = v11;
  a2[4] = v12;
  type metadata accessor for MedicalIDSpokenLanguagePickerViewModel(0);
  swift_allocObject();

  result = MedicalIDSpokenLanguagePickerViewModel.init(primaryLanguageCode:)(v11, v12);
  a2[2] = result;
  return result;
}

uint64_t sub_2588077E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for NanoEditMedicalIDPrimaryLanguageView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25880BE98(0, &qword_27F95D830, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v21 - v11;
  v13 = sub_2588BDAA8();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  sub_25880B7B8(a3, v9, type metadata accessor for NanoEditMedicalIDPrimaryLanguageView);
  sub_2588BDA78();

  v14 = sub_2588BDA68();
  v15 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v16 = (v8 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  v18 = MEMORY[0x277D85700];
  *(v17 + 16) = v14;
  *(v17 + 24) = v18;
  sub_25880B9E4(v9, v17 + v15, type metadata accessor for NanoEditMedicalIDPrimaryLanguageView);
  v19 = (v17 + v16);
  *v19 = a1;
  v19[1] = a2;
  sub_25885CB04(0, 0, v12, &unk_2588C32A0, v17);
}

uint64_t sub_258807A18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a5;
  v6[9] = a6;
  v6[7] = a4;
  sub_2587B63B8(0);
  v6[10] = swift_task_alloc();
  v6[11] = type metadata accessor for MedicalIDData(0);
  v6[12] = swift_task_alloc();
  v6[13] = sub_2588BDA78();
  v6[14] = sub_2588BDA68();
  v8 = sub_2588BDA28();
  v6[15] = v8;
  v6[16] = v7;

  return MEMORY[0x2822009F8](sub_258807B14, v8, v7);
}

uint64_t sub_258807B14()
{
  v0[17] = sub_25880719C();
  v0[18] = sub_2588BDA68();
  v2 = sub_2588BDA28();
  v0[19] = v2;
  v0[20] = v1;

  return MEMORY[0x2822009F8](sub_258807BAC, v2, v1);
}

uint64_t sub_258807BAC()
{
  v1 = v0[17];
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[9];
  v5 = v0[10];
  v6 = v0[8];
  swift_getKeyPath(byte_2588C32A8);
  v0[5] = v1;
  sub_25880C02C(&qword_27F95D3A8, type metadata accessor for MedicalIDDataManager, &protocol conformance descriptor for MedicalIDDataManager);
  sub_2588BBB98();

  v7 = OBJC_IVAR____TtC11MedicalIDUI20MedicalIDDataManager__medicalIDData;
  swift_beginAccess();
  sub_25880B7B8(v1 + v7, v5, sub_2587B63B8);
  LoadState<>.loadedValue.getter(v2);
  sub_25880C074(v5, sub_2587B63B8);
  v8 = (v2 + *(v3 + 60));

  *v8 = v6;
  v8[1] = v4;
  v9 = swift_task_alloc();
  v0[21] = v9;
  *v9 = v0;
  v9[1] = sub_258807D6C;
  v10 = v0[12];

  return sub_258880280(v10, (v0 + 6));
}

uint64_t sub_258807D6C()
{
  v2 = *v1;

  v3 = *(v2 + 152);
  v4 = *(v2 + 160);
  if (v0)
  {
    v5 = sub_258807F84;
  }

  else
  {
    v5 = sub_258807E7C;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_258807E7C()
{
  v1 = v0[12];

  sub_25880C074(v1, type metadata accessor for MedicalIDData);
  v2 = v0[15];
  v3 = v0[16];

  return MEMORY[0x2822009F8](sub_258807F08, v2, v3);
}

uint64_t sub_258807F08()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_258807F84()
{
  v1 = v0[12];

  sub_25880C074(v1, type metadata accessor for MedicalIDData);
  v0[22] = v0[6];
  v2 = v0[15];
  v3 = v0[16];

  return MEMORY[0x2822009F8](sub_258808018, v2, v3);
}

uint64_t sub_258808018()
{
  v1 = *(v0 + 176);

  sub_2587CE078();
  swift_allocError();
  *v2 = v1;

  v3 = *(v0 + 8);

  return v3();
}

void *sub_2588080C4@<X0>(uint64_t *a1@<X8>)
{
  if (qword_27F95D0C8 != -1)
  {
    swift_once();
  }

  v3 = qword_27F9697E8;
  v2 = unk_27F9697F0;

  v4 = MedicalIDPersonalInfoViewModel.spokenLanguageDescription()();
  if (v4.value._object)
  {
    countAndFlagsBits = v4.value._countAndFlagsBits;
    result = v4.value._object;
  }

  else
  {
    if (qword_27F95D0C0 != -1)
    {
      swift_once();
    }

    countAndFlagsBits = qword_27F9697D8;
  }

  *a1 = v3;
  a1[1] = v2;
  a1[2] = countAndFlagsBits;
  a1[3] = result;
  return result;
}

uint64_t sub_25880819C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2588BC598();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25880BE98(0, &qword_27F95EBC0, sub_258804A60, MEMORY[0x277CDF458]);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for NanoEditMedicalIDPrimaryLanguageSelectionView(0);
  sub_25880B950(v1 + *(v10 + 28), v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_25880B9E4(v9, a1, sub_258804A60);
  }

  sub_2588BDBE8();
  v12 = sub_2588BCB58();
  sub_2588BBC68();

  sub_2588BC588();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_258808394()
{
  v1 = type metadata accessor for NanoEditMedicalIDPrimaryLanguageSelectionView(0);
  MEMORY[0x28223BE20](v1);
  v5 = v0;
  sub_2588075AC(v0, &v4[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  sub_258804794();
  sub_25880C02C(&qword_27F95EC20, type metadata accessor for NanoEditMedicalIDPrimaryLanguageSelectionView, &protocol conformance descriptor for NanoEditMedicalIDPrimaryLanguageSelectionView);
  return sub_2588BC118();
}

uint64_t sub_258808494(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a2 + 16);
  swift_getKeyPath("p'\n'");
  sub_25880C02C(&qword_27F95DDA0, type metadata accessor for MedicalIDSpokenLanguagePickerViewModel, &protocol conformance descriptor for MedicalIDSpokenLanguagePickerViewModel);
  sub_2588BBB98();

  swift_beginAccess();
  v5 = *(v4 + 32);
  if (v5)
  {
    if (v2 == *(v4 + 24) && v5 == v3)
    {
      v7 = 1;
    }

    else
    {
      v7 = sub_2588BDF98();
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t NanoEditMedicalIDPrimaryLanguageSelectionView.body.getter()
{
  v1 = v0;
  sub_25880A9A4(0);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_25880AD60(0);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v14[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = v1;
  sub_25880AA54(0);
  sub_25880C02C(&qword_27F95EC78, sub_25880AA54, MEMORY[0x277CE14C0]);
  sub_2588BCD48();
  v12 = sub_25880C02C(&qword_27F95EC88, sub_25880A9A4, MEMORY[0x277CDE5A0]);
  sub_2588BCFF8();
  (*(v4 + 8))(v6, v3);
  v15 = v1;
  sub_25880AE24(0);
  v17 = v3;
  v18 = v12;
  swift_getOpaqueTypeConformance2();
  sub_25880C02C(&qword_27F95ECF8, sub_25880AE24, MEMORY[0x277CDDF68]);
  sub_2588BD0B8();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_258808858@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v65 = a2;
  v64 = type metadata accessor for NanoMultipleSpokenLanguagesView(0);
  MEMORY[0x28223BE20](v64);
  v63 = &v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25880AC90(0);
  v5 = *(v4 - 8);
  v73 = v4;
  v74 = v5;
  v6 = MEMORY[0x28223BE20](v4);
  v72 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v69 = &v57 - v8;
  v9 = type metadata accessor for NanoEditMedicalIDPrimaryLanguageSelectionView(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  sub_25880AB64(0);
  v68 = v12;
  v67 = *(v12 - 8);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v57 - v16;
  v18 = sub_2588BD858();
  MEMORY[0x28223BE20](v18 - 8);
  sub_2588BD7E8();
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v19 = qword_27F95DA88;
  v20 = sub_2588BBAC8();
  MEMORY[0x28223BE20](v20 - 8);
  v21 = v19;
  sub_2588BBAB8();
  v62 = sub_2588BD8B8();
  v71 = v22;
  v76.id._countAndFlagsBits = sub_2588BD198();
  v70 = sub_2588BD418();
  v23 = *(a1 + 16);
  v76.id._countAndFlagsBits = sub_2587EF4B4();
  sub_25880B7B8(a1, &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NanoEditMedicalIDPrimaryLanguageSelectionView);
  v24 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v25 = swift_allocObject();
  sub_25880B9E4(&v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v24, type metadata accessor for NanoEditMedicalIDPrimaryLanguageSelectionView);
  sub_25880B198(0, &qword_27F95EC50, &type metadata for MedicalIDSpokenLanguage, MEMORY[0x277D83940]);
  sub_25880AC14();
  sub_25880B33C();
  sub_25880B84C();
  sub_2588BD4C8();
  v26 = sub_2587EF4B4();
  MEMORY[0x28223BE20](v26);
  v56 = a1;
  v28 = *(sub_2587EE430(sub_25880BD04, (&v57 - 4), v27) + 16);

  if (v28 || (swift_getKeyPath("p'\n'"), v76.id._countAndFlagsBits = v23, sub_25880C02C(&qword_27F95DDA0, type metadata accessor for MedicalIDSpokenLanguagePickerViewModel, &protocol conformance descriptor for MedicalIDSpokenLanguagePickerViewModel), sub_2588BBB98(), , swift_beginAccess(), (v33 = *(v23 + 32)) == 0))
  {
    v29 = v17;
    countAndFlagsBits = 0;
    v61 = 0;
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v60 = 0;
  }

  else
  {
    v29 = v17;
    v34 = *(v23 + 24);
    swift_bridgeObjectRetain_n();
    v35._countAndFlagsBits = v34;
    v35._object = v33;
    MedicalIDSpokenLanguage.init(id:)(&v76, v35);
    countAndFlagsBits = v76.languageInCurrentLocale._countAndFlagsBits;
    object = v76.languageInCurrentLocale._object;

    v37._countAndFlagsBits = v34;
    v37._object = v33;
    MedicalIDSpokenLanguage.init(id:)(&v75, v37);
    v30 = v75.languageInLanguageLocale._countAndFlagsBits;
    v38 = v75.languageInLanguageLocale._object;

    v61 = object;

    v31 = v38;

    v60 = nullsub_1;
    v32 = 1;
  }

  type metadata accessor for MedicalIDSpokenLanguagePickerViewModel(0);
  sub_25880C02C(&qword_27F95DDA0, type metadata accessor for MedicalIDSpokenLanguagePickerViewModel, &protocol conformance descriptor for MedicalIDSpokenLanguagePickerViewModel);

  sub_2588BD548();
  sub_25880C02C(&qword_27F95EC70, type metadata accessor for NanoMultipleSpokenLanguagesView, &protocol conformance descriptor for NanoMultipleSpokenLanguagesView);
  v39 = v69;
  sub_2588BC118();
  v40 = *(v67 + 16);
  v58 = v15;
  v41 = v29;
  v59 = v29;
  v42 = v68;
  v40(v15, v41, v68);
  v64 = *(v74 + 16);
  v64(v72, v39, v73);
  v43 = v65;
  v44 = v71;
  *v65 = v62;
  v43[1] = v44;
  v43[2] = v70;
  sub_25880AA88(0);
  v46 = v45;
  v40(v43 + *(v45 + 48), v15, v42);
  v47 = (v43 + *(v46 + 64));
  v48 = countAndFlagsBits;
  v49 = v61;
  *v47 = countAndFlagsBits;
  v47[1] = v49;
  v47[2] = v30;
  v47[3] = v31;
  v50 = v60;
  v47[4] = v32;
  v47[5] = v50;
  v47[6] = 0;
  v51 = v73;
  v64(v43 + *(v46 + 80), v72, v73);

  sub_25880BD24(v48, v49, v30, v31);
  sub_25880BD74(v48, v49, v30, v31);
  v52 = *(v74 + 8);
  v74 += 8;
  v52(v69, v51);
  v53 = *(v67 + 8);
  v54 = v68;
  v53(v59, v68);
  v52(v72, v73);
  sub_25880BD74(v48, v49, v30, v31);
  v53(v58, v54);
}

uint64_t sub_2588091A0@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for NanoEditMedicalIDPrimaryLanguageSelectionView(0);
  v19 = *(v6 - 8);
  v7 = *(v19 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = a1[2];
  v24 = a1[1];
  v25 = v8;
  v23 = *a1;
  v9 = *(&v24 + 1);
  v10 = *(&v8 + 1);
  v20 = v8;
  v21 = v24;
  v11 = *(a2 + 16);
  swift_getKeyPath("p'\n'");
  v22[0] = v11;
  sub_25880C02C(&qword_27F95DDA0, type metadata accessor for MedicalIDSpokenLanguagePickerViewModel, &protocol conformance descriptor for MedicalIDSpokenLanguagePickerViewModel);

  sub_2588BBB98();

  swift_beginAccess();
  if (*(v11 + 32))
  {
    if (*(v11 + 24) == v23)
    {
      v12 = 1;
    }

    else
    {
      v12 = sub_2588BDF98();
    }
  }

  else
  {
    v12 = 0;
  }

  sub_25880B7B8(a2, &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NanoEditMedicalIDPrimaryLanguageSelectionView);
  v13 = (*(v19 + 80) + 16) & ~*(v19 + 80);
  v14 = swift_allocObject();
  sub_25880B9E4(&v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for NanoEditMedicalIDPrimaryLanguageSelectionView);
  v15 = (v14 + ((v7 + v13 + 7) & 0xFFFFFFFFFFFFFFF8));
  v16 = v24;
  *v15 = v23;
  v15[1] = v16;
  v15[2] = v25;
  v17 = v20;
  *a3 = v21;
  *(a3 + 8) = v9;
  *(a3 + 16) = v17;
  *(a3 + 24) = v10;
  *(a3 + 32) = v12 & 1;
  *(a3 + 40) = sub_25880BDC4;
  *(a3 + 48) = v14;
  return sub_25880B8CC(&v23, v22);
}

uint64_t sub_25880940C(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  v4 = *a2;
  v3 = a2[1];
  swift_beginAccess();
  v5 = *(v2 + 32);
  if (v5 && (*(v2 + 24) == v4 ? (v6 = v5 == v3) : (v6 = 0), v6 || (sub_2588BDF98() & 1) != 0))
  {
    *(v2 + 24) = v4;
    *(v2 + 32) = v3;
  }

  else
  {
    KeyPath = swift_getKeyPath("p'\n'");
    MEMORY[0x28223BE20](KeyPath);
    sub_25880C02C(&qword_27F95DDA0, type metadata accessor for MedicalIDSpokenLanguagePickerViewModel, &protocol conformance descriptor for MedicalIDSpokenLanguagePickerViewModel);

    sub_2588BBB88();
  }
}

uint64_t sub_258809584@<X0>(uint64_t a1@<X8>)
{
  sub_2588BC688();
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v2 = qword_27F95DA88;
  result = sub_2588BCDE8();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_258809664@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  sub_25880AE58(0);
  v25 = v3;
  MEMORY[0x28223BE20](v3);
  v22 = sub_25880B030;
  v23 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25880AF90(0, &qword_27F95ECB8, sub_25880B030, &qword_27F95ECF0, sub_25880B030);
  v24 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - v7;
  v9 = sub_2588BC828();
  MEMORY[0x28223BE20](v9 - 8);
  sub_25880AF90(0, &qword_27F95ECA0, sub_25880AF38, &qword_27F95ECB0, sub_25880AF38);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v14 = &v21 - v13;
  sub_2588BC7E8();
  v28 = a1;
  sub_25880AF38();
  v15 = MEMORY[0x277CDF028];
  sub_25880C02C(&qword_27F95ECB0, sub_25880AF38, MEMORY[0x277CDF028]);
  sub_2588BBF88();
  sub_2588BC7D8();
  v27 = a1;
  sub_25880B030(0);
  sub_25880C02C(&qword_27F95ECF0, v22, v15);
  sub_2588BBF88();
  v16 = *(v25 + 48);
  v17 = v23;
  (*(v12 + 16))(v23, v14, v11);
  v18 = &v17[v16];
  v19 = v24;
  (*(v6 + 16))(v18, v8, v24);
  sub_2588BC718();
  (*(v6 + 8))(v8, v19);
  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_2588099F4(uint64_t a1)
{
  v2 = type metadata accessor for NanoEditMedicalIDPrimaryLanguageSelectionView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_25880B7B8(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NanoEditMedicalIDPrimaryLanguageSelectionView);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_25880B9E4(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for NanoEditMedicalIDPrimaryLanguageSelectionView);
  return sub_2588BD318();
}

uint64_t sub_258809B48(uint64_t a1)
{
  v2 = sub_2588BC298();
  MEMORY[0x28223BE20](v2 - 8);
  sub_258804A60(0);
  v4 = v3;
  MEMORY[0x28223BE20](v3);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  swift_getKeyPath("p'\n'");
  v12[1] = v7;
  sub_25880C02C(&qword_27F95DDA0, type metadata accessor for MedicalIDSpokenLanguagePickerViewModel, &protocol conformance descriptor for MedicalIDSpokenLanguagePickerViewModel);
  sub_2588BBB98();

  result = swift_beginAccess();
  v9 = *(v7 + 32);
  if (v9)
  {
    v10 = *(v7 + 24);
    v11 = *a1;

    v11(v10, v9);

    sub_25880819C(v6);
    MEMORY[0x259C8C5A0](v4);
    sub_2588BC288();
    sub_2588BD438();
    return sub_25880C074(v6, sub_258804A60);
  }

  return result;
}

uint64_t sub_258809D1C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2588BD258();
  *a1 = result;
  return result;
}

uint64_t sub_258809D5C(uint64_t a1)
{
  v2 = type metadata accessor for NanoEditMedicalIDPrimaryLanguageSelectionView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_25880B7B8(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NanoEditMedicalIDPrimaryLanguageSelectionView);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_25880B9E4(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for NanoEditMedicalIDPrimaryLanguageSelectionView);
  sub_25880B0B8(0, &qword_27F95ECC8, sub_25880B11C, MEMORY[0x277CE1088]);
  sub_25880B1E8();
  return sub_2588BD318();
}

uint64_t sub_258809EDC(uint64_t a1)
{
  v2 = sub_2588BC298();
  MEMORY[0x28223BE20](v2 - 8);
  sub_258804A60(0);
  v4 = v3;
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);

  sub_2587EEA60(v7, v8);
  sub_25880819C(v6);
  MEMORY[0x259C8C5A0](v4);
  sub_2588BC288();
  sub_2588BD438();
  return sub_25880C074(v6, sub_258804A60);
}

uint64_t sub_25880A014@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_2588BD258();
  v3 = [objc_opt_self() secondaryLabelColor];
  v4 = sub_2588BD148();
  result = swift_getKeyPath("P'\n'");
  *a1 = v2;
  a1[1] = result;
  a1[2] = v4;
  return result;
}

uint64_t sub_25880A090()
{
  v1 = v0;
  sub_25880A9A4(0);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_25880AD60(0);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v14[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = v1;
  sub_25880AA54(0);
  sub_25880C02C(&qword_27F95EC78, sub_25880AA54, MEMORY[0x277CE14C0]);
  sub_2588BCD48();
  v12 = sub_25880C02C(&qword_27F95EC88, sub_25880A9A4, MEMORY[0x277CDE5A0]);
  sub_2588BCFF8();
  (*(v4 + 8))(v6, v3);
  v15 = v1;
  sub_25880AE24(0);
  v17 = v3;
  v18 = v12;
  swift_getOpaqueTypeConformance2();
  sub_25880C02C(&qword_27F95ECF8, sub_25880AE24, MEMORY[0x277CDDF68]);
  sub_2588BD0B8();
  return (*(v9 + 8))(v11, v8);
}

uint64_t NanoMultipleSpokenLanguagesView.body.getter()
{
  sub_25880AB64(0);
  sub_25880B2C4();
  return sub_2588BCD48();
}

uint64_t sub_25880A3B8(uint64_t a1)
{
  v2 = type metadata accessor for NanoMultipleSpokenLanguagesView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_25880BE98(0, &qword_27F95ED38, type metadata accessor for MedicalIDSpokenLanguagePickerViewModel, MEMORY[0x277CE12F8]);
  sub_2588BD528();
  v5 = *(v10 + 16);

  v10 = v5;
  sub_25880B7B8(a1, &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NanoMultipleSpokenLanguagesView);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_25880B9E4(&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for NanoMultipleSpokenLanguagesView);
  sub_25880B198(0, &qword_27F95EC50, &type metadata for MedicalIDSpokenLanguage, MEMORY[0x277D83940]);
  sub_25880AC14();
  sub_25880B33C();
  sub_25880B84C();
  return sub_2588BD4C8();
}

uint64_t sub_25880A5B8@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for NanoMultipleSpokenLanguagesView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = a1[2];
  v27 = a1[1];
  v28 = v9;
  v26 = *a1;
  v10 = *(&v27 + 1);
  v11 = *(&v9 + 1);
  v23 = v9;
  v24 = v27;
  sub_25880BE98(0, &qword_27F95ED38, type metadata accessor for MedicalIDSpokenLanguagePickerViewModel, MEMORY[0x277CE12F8]);

  sub_2588BD528();
  v12 = v25[0];
  swift_getKeyPath("p'\n'");
  v25[0] = v12;
  sub_25880C02C(&qword_27F95DDA0, type metadata accessor for MedicalIDSpokenLanguagePickerViewModel, &protocol conformance descriptor for MedicalIDSpokenLanguagePickerViewModel);
  sub_2588BBB98();

  swift_beginAccess();
  v13 = *(v12 + 24);
  v14 = *(v12 + 32);

  if (v14)
  {
    if (__PAIR128__(v14, v13) == v26)
    {
      v15 = 1;
    }

    else
    {
      v15 = sub_2588BDF98();
    }
  }

  else
  {
    v15 = 0;
  }

  sub_25880B7B8(a2, &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NanoMultipleSpokenLanguagesView);
  v16 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v17 = swift_allocObject();
  sub_25880B9E4(&v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for NanoMultipleSpokenLanguagesView);
  v18 = (v17 + ((v8 + v16 + 7) & 0xFFFFFFFFFFFFFFF8));
  v19 = v27;
  *v18 = v26;
  v18[1] = v19;
  v18[2] = v28;
  v20 = v23;
  *a3 = v24;
  *(a3 + 8) = v10;
  *(a3 + 16) = v20;
  *(a3 + 24) = v11;
  *(a3 + 32) = v15 & 1;
  *(a3 + 40) = sub_25880B8A0;
  *(a3 + 48) = v17;
  return sub_25880B8CC(&v26, v25);
}

uint64_t sub_25880A884(uint64_t a1, uint64_t *a2)
{
  sub_25880BE98(0, &qword_27F95ED38, type metadata accessor for MedicalIDSpokenLanguagePickerViewModel, MEMORY[0x277CE12F8]);
  sub_2588BD528();
  v4 = *a2;
  v3 = a2[1];

  sub_2587EEA60(v4, v3);
}

uint64_t sub_25880A91C()
{
  sub_25880AB64(0);
  sub_25880B2C4();
  return sub_2588BCD48();
}

void sub_25880A9A4(uint64_t a1)
{
  if (!qword_27F95EC28)
  {
    sub_25880AA54(255);
    sub_25880C02C(&qword_27F95EC78, sub_25880AA54, MEMORY[0x277CE14C0]);
    v1 = sub_2588BCD58();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95EC28);
    }
  }
}

void sub_25880AA88(uint64_t a1)
{
  if (!qword_27F95EC38)
  {
    sub_25880B0B8(255, &qword_27F95EC40, sub_2587CCF4C, &type metadata for HeaderView);
    sub_25880AB64(255);
    sub_25880B198(255, &qword_27F95EC60, &type metadata for LanguageCell, MEMORY[0x277D83D88]);
    sub_25880AC90(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_27F95EC38);
    }
  }
}

void sub_25880AB64(uint64_t a1)
{
  if (!qword_27F95EC48)
  {
    sub_25880B198(255, &qword_27F95EC50, &type metadata for MedicalIDSpokenLanguage, MEMORY[0x277D83940]);
    sub_25880AC14();
    v1 = sub_2588BD4D8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95EC48);
    }
  }
}

unint64_t sub_25880AC14()
{
  result = qword_27F95EC58;
  if (!qword_27F95EC58)
  {
    sub_25880B198(255, &qword_27F95EC50, &type metadata for MedicalIDSpokenLanguage, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95EC58);
  }

  return result;
}

void sub_25880AC90(uint64_t a1)
{
  if (!qword_27F95EC68)
  {
    type metadata accessor for NanoMultipleSpokenLanguagesView(255);
    sub_25880C02C(&qword_27F95EC70, type metadata accessor for NanoMultipleSpokenLanguagesView, &protocol conformance descriptor for NanoMultipleSpokenLanguagesView);
    v1 = sub_2588BC128();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95EC68);
    }
  }
}

void sub_25880AD60(uint64_t a1)
{
  if (!qword_27F95EC80)
  {
    sub_25880A9A4(255);
    sub_25880C02C(&qword_27F95EC88, sub_25880A9A4, MEMORY[0x277CDE5A0]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F95EC80);
    }
  }
}

void sub_25880AE58(uint64_t a1)
{
  if (!qword_27F95EC98)
  {
    sub_25880AF90(255, &qword_27F95ECA0, sub_25880AF38, &qword_27F95ECB0, sub_25880AF38);
    sub_25880AF90(255, &qword_27F95ECB8, sub_25880B030, &qword_27F95ECF0, sub_25880B030);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F95EC98);
    }
  }
}

void sub_25880AF38()
{
  if (!qword_27F95ECA8)
  {
    v0 = sub_2588BD348();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95ECA8);
    }
  }
}

void sub_25880AF90(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_25880C02C(a4, a5, MEMORY[0x277CDF028]);
    v8 = sub_2588BBF98();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_25880B030(uint64_t a1)
{
  if (!qword_27F95ECC0)
  {
    sub_25880B0B8(255, &qword_27F95ECC8, sub_25880B11C, MEMORY[0x277CE1088]);
    sub_25880B1E8();
    v1 = sub_2588BD348();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95ECC0);
    }
  }
}

void sub_25880B0B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    v5 = sub_2588BC1E8();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_25880B11C(uint64_t a1)
{
  if (!qword_27F95ECD0)
  {
    sub_25880B198(255, &qword_27F95ECD8, MEMORY[0x277CE0F78], MEMORY[0x277D83D88]);
    v1 = sub_2588BCA88();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95ECD0);
    }
  }
}

void sub_25880B198(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_25880B1E8()
{
  result = qword_27F95ECE0;
  if (!qword_27F95ECE0)
  {
    sub_25880B0B8(255, &qword_27F95ECC8, sub_25880B11C, MEMORY[0x277CE1088]);
    sub_25880C02C(&qword_27F95ECE8, sub_25880B11C, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95ECE0);
  }

  return result;
}

unint64_t sub_25880B2C4()
{
  result = qword_27F95ED00;
  if (!qword_27F95ED00)
  {
    sub_25880AB64(255);
    sub_25880B33C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95ED00);
  }

  return result;
}

unint64_t sub_25880B33C()
{
  result = qword_27F95ED08;
  if (!qword_27F95ED08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95ED08);
  }

  return result;
}

void sub_25880B40C(uint64_t a1)
{
  type metadata accessor for MedicalIDPersonalInfoViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_25880BE98(319, &qword_27F95DC90, type metadata accessor for MedicalIDDataManager, MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_25880B4E8(uint64_t a1)
{
  sub_2587B2F78();
  if (v1 <= 0x3F)
  {
    type metadata accessor for MedicalIDSpokenLanguagePickerViewModel(319);
    if (v2 <= 0x3F)
    {
      sub_25880BE98(319, &qword_27F95ED20, sub_258804A60, MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_25880B5E4(uint64_t a1)
{
  sub_25880BE98(319, &qword_27F95ED38, type metadata accessor for MedicalIDSpokenLanguagePickerViewModel, MEMORY[0x277CE12F8]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_25880B680(uint64_t a1)
{
  if (!qword_27F95ED58)
  {
    type metadata accessor for NanoEditMedicalIDPrimaryLanguageSelectionView(255);
    sub_258804794();
    sub_25880C02C(&qword_27F95EC20, type metadata accessor for NanoEditMedicalIDPrimaryLanguageSelectionView, &protocol conformance descriptor for NanoEditMedicalIDPrimaryLanguageSelectionView);
    v1 = sub_2588BC128();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95ED58);
    }
  }
}

void sub_25880B738(uint64_t a1)
{
  if (!qword_27F95ED68)
  {
    sub_25880AB64(255);
    sub_25880B2C4();
    v1 = sub_2588BCD58();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95ED68);
    }
  }
}

uint64_t sub_25880B7B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_25880B84C()
{
  result = qword_27F95ED70;
  if (!qword_27F95ED70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95ED70);
  }

  return result;
}

uint64_t sub_25880B950(uint64_t a1, uint64_t a2)
{
  sub_25880BE98(0, &qword_27F95EBC0, sub_258804A60, MEMORY[0x277CDF458]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25880B9E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_39Tm()
{
  v1 = (type metadata accessor for NanoEditMedicalIDPrimaryLanguageSelectionView(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v2 + v1[9];
  sub_25880BE98(0, &qword_27F95EBC0, sub_258804A60, MEMORY[0x277CDF458]);
  LODWORD(v2) = swift_getEnumCaseMultiPayload();

  if (v2 == 1)
  {

    sub_258804A60(0);
    v5 = *(v4 + 32);
    v6 = sub_2588BC298();
    (*(*(v6 - 8) + 8))(v3 + v5, v6);
  }

  return swift_deallocObject();
}

uint64_t sub_25880BBCC(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for NanoEditMedicalIDPrimaryLanguageSelectionView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_25880BC6C(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = v3 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return a3(a1, v6);
}

uint64_t sub_25880BD24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_25880BD74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_25880BDF0(uint64_t (*a1)(void), uint64_t (*a2)(unint64_t, uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v2 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);

  return a2(v2 + v4, v5);
}

void sub_25880BE98(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_25880BEFC(uint64_t a1)
{
  v4 = *(type metadata accessor for NanoEditMedicalIDPrimaryLanguageView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_2587AE310;

  return sub_258807A18(a1, v6, v7, v1 + v5, v9, v10);
}

uint64_t sub_25880C02C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25880C074(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroyTm_12()
{
  v1 = *(type metadata accessor for NanoEditMedicalIDPrimaryLanguageView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  v3 = type metadata accessor for MedicalIDData(0);
  v4 = v3[13];
  v5 = sub_2588BB9B8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 48);
  if (!v7(v2 + v4, 1, v5))
  {
    (*(v6 + 8))(v2 + v4, v5);
  }

  v8 = v3[14];
  if (!v7(v2 + v8, 1, v5))
  {
    (*(v6 + 8))(v2 + v8, v5);
  }

  v9 = (v2 + v3[18]);
  v10 = v9[1];
  if (v10 >> 60 != 15)
  {
    sub_2587C2610(*v9, v10);
  }

  v11 = v3[19];
  v12 = sub_2588BB818();
  v13 = *(v12 - 8);
  if (!(*(v13 + 48))(v2 + v11, 1, v12))
  {
    (*(v13 + 8))(v2 + v11, v12);
  }

  v14 = v3[21];
  if (!v7(v2 + v14, 1, v5))
  {
    (*(v6 + 8))(v2 + v14, v5);
  }

  v15 = type metadata accessor for MedicalIDPersonalInfoViewModel(0);
  v16 = v15[5];
  v17 = sub_2588BBB48();
  (*(*(v17 - 8) + 8))(v2 + v16, v17);
  v18 = v15[6];
  v19 = sub_2588BBAC8();
  (*(*(v19 - 8) + 8))(v2 + v18, v19);

  return swift_deallocObject();
}

uint64_t sub_25880C45C(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for NanoEditMedicalIDPrimaryLanguageView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_2588077E8(a1, a2, v6);
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_25880C510(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_25880C558(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_25880C5D0@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (a1[1])
  {
    sub_25878F648();

    v3 = sub_2588BCDF8();
    v5 = v4;
    v7 = v6;
    sub_2588BCC08();
    v8 = sub_2588BCDD8();
    v19 = v9;
    v20 = v8;
    v11 = v10;
    v13 = v12;

    sub_2587B1CF8(v3, v5, v7 & 1);

    sub_2588BD5D8();
    sub_2588BC328();
    *&v24[54] = v28;
    *&v24[70] = v29;
    *&v24[6] = v25;
    *&v24[22] = v26;
    *&v24[86] = v30;
    *&v24[102] = v31;
    *&v24[38] = v27;
    *&v23[66] = *&v24[64];
    *&v23[82] = *&v24[80];
    *&v23[98] = *&v24[96];
    *&v23[2] = *v24;
    *&v23[18] = *&v24[16];
    *&v23[34] = *&v24[32];
    *&v21 = v20;
    *(&v21 + 1) = v11;
    LOBYTE(v22) = v13 & 1;
    *(&v22 + 1) = v19;
    *v23 = 256;
    *&v23[50] = *&v24[48];
    nullsub_1();
    v38 = *&v23[64];
    v39 = *&v23[80];
    v40 = *&v23[96];
    v41 = *(&v31 + 1);
    v34 = *v23;
    v35 = *&v23[16];
    v36 = *&v23[32];
    v37 = *&v23[48];
    v32 = v21;
    v33 = v22;
  }

  else
  {
    sub_25880CB1C(&v32);
  }

  v14 = v39;
  *(a2 + 96) = v38;
  *(a2 + 112) = v14;
  *(a2 + 128) = v40;
  *(a2 + 144) = v41;
  v15 = v35;
  *(a2 + 32) = v34;
  *(a2 + 48) = v15;
  v16 = v37;
  *(a2 + 64) = v36;
  *(a2 + 80) = v16;
  result = *&v32;
  v18 = v33;
  *a2 = v32;
  *(a2 + 16) = v18;
  return result;
}

uint64_t sub_25880C804(uint64_t a1)
{
  sub_2588BCB68();
  sub_25880C89C(0);
  sub_25880C9AC();
  return sub_2588BBEE8();
}

void sub_25880C89C(uint64_t a1)
{
  if (!qword_27F95ED78)
  {
    sub_25880C8F4(255);
    v1 = sub_2588BDCE8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95ED78);
    }
  }
}

void sub_25880C8F4(uint64_t a1)
{
  if (!qword_27F95ED80)
  {
    sub_25880C954();
    v1 = sub_2588BC1E8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95ED80);
    }
  }
}

void sub_25880C954()
{
  if (!qword_27F95ED88)
  {
    v0 = sub_2588BC1E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95ED88);
    }
  }
}

unint64_t sub_25880C9AC()
{
  result = qword_27F95ED90;
  if (!qword_27F95ED90)
  {
    sub_25880C89C(255);
    sub_25880CA24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95ED90);
  }

  return result;
}

unint64_t sub_25880CA24()
{
  result = qword_27F95ED98;
  if (!qword_27F95ED98)
  {
    sub_25880C8F4(255);
    sub_25880CAA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95ED98);
  }

  return result;
}

unint64_t sub_25880CAA4()
{
  result = qword_27F95EDA0;
  if (!qword_27F95EDA0)
  {
    sub_25880C954();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95EDA0);
  }

  return result;
}

double sub_25880CB1C(uint64_t a1)
{
  *(a1 + 144) = 0;
  result = 0.0;
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

unint64_t sub_25880CB3C()
{
  result = qword_27F95EDA8;
  if (!qword_27F95EDA8)
  {
    sub_25880CB94(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95EDA8);
  }

  return result;
}

void sub_25880CB94(uint64_t a1)
{
  if (!qword_27F95EDB0)
  {
    sub_25880C89C(255);
    sub_25880C9AC();
    v1 = sub_2588BBED8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95EDB0);
    }
  }
}

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_25880CC1C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25880CC64(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25880CCE4(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  (*(v2 + 24))(v1, v2);
  sub_25878F648();
  v3 = sub_2588BCDF8();
  v5 = v4;
  v7 = v6;
  sub_2588BCCC8();
  sub_2588BCDD8();

  sub_2587B1CF8(v3, v5, v7 & 1);

  sub_25880D7C4(0);
  sub_25880D894(255);
  sub_25880DC70(&qword_27F95EDF8, sub_25880D894, MEMORY[0x277CDD938]);
  swift_getOpaqueTypeConformance2();
  return sub_2588BD4E8();
}

uint64_t sub_25880CEA4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18[1] = a2;
  sub_25880DA24(0);
  MEMORY[0x28223BE20](v3);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25880D894(0);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1;
  sub_25880D16C(a1, v5);
  sub_25880D9CC();
  sub_25880DC70(&qword_27F95EDF0, sub_25880D9CC, MEMORY[0x277CE1198]);
  v11 = type metadata accessor for MedicalIDDataManager(255);
  v12 = sub_25880DAF4();
  v13 = sub_25880DC70(&qword_27F95D3A8, type metadata accessor for MedicalIDDataManager, &protocol conformance descriptor for MedicalIDDataManager);
  v20 = &type metadata for NanoAddReplaceEditView;
  v21 = v11;
  v22 = v12;
  v23 = v13;
  swift_getOpaqueTypeConformance2();
  sub_2588BC118();
  v14 = a1[3];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v14);
  v20 = (*(v15 + 8))(v14, v15);
  v21 = v16;
  sub_25880DC70(&qword_27F95EDF8, sub_25880D894, MEMORY[0x277CDD938]);
  sub_25878F648();
  sub_2588BCF38();

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_25880D16C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v18 = sub_2588BC598();
  v3 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  __swift_project_boxed_opaque_existential_1(a1, v6);
  v8 = (*(v7 + 32))(v6, v7);
  v10 = v9;
  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  type metadata accessor for MedicalIDDataManager(0);
  sub_25880DC70(&qword_27F95D3A8, type metadata accessor for MedicalIDDataManager, &protocol conformance descriptor for MedicalIDDataManager);

  v13 = sub_2588BBF58();
  v20 = v8;
  v21 = v10;
  v22 = v11;
  v23 = v12;
  v24 = v13;
  v25 = v14 & 1;
  LOBYTE(v11) = *(a1 + 64);

  if ((v11 & 1) == 0)
  {
    sub_2588BDBE8();
    v15 = sub_2588BCB58();
    sub_2588BBC68();

    sub_2588BC588();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v18);
  }

  sub_25880DAF4();
  sub_2588BCE58();
}

uint64_t sub_25880D3B8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2588BC6F8();
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  (*(v6 + 32))(v5, v6);
  if (!v7)
  {
    if (qword_27F95D0C0 != -1)
    {
      swift_once();
    }
  }

  sub_25878F648();
  result = sub_2588BCDF8();
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = result;
  *(a2 + 32) = v9;
  *(a2 + 40) = v10 & 1;
  *(a2 + 48) = v11;
  return result;
}

uint64_t sub_25880D4B4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  v6 = (*(v5 + 16))(v4, v5);
  v8 = v7;
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  v11 = (*(v10 + 32))(v9, v10);
  if (v12)
  {
    v13 = v11;
    result = v12;
  }

  else
  {
    if (qword_27F95D0C0 != -1)
    {
      swift_once();
    }

    v13 = qword_27F9697D8;
  }

  *a2 = v6;
  a2[1] = v8;
  a2[2] = v13;
  a2[3] = result;
  return result;
}

uint64_t sub_25880D5AC()
{
  sub_25880D6DC(0);
  MEMORY[0x28223BE20](v0);
  sub_25880D75C(0);
  sub_25880DB48();
  sub_2588BCD48();
  sub_258804794();
  sub_25880DC70(&qword_27F95EE08, sub_25880D6DC, MEMORY[0x277CDE5A0]);
  return sub_2588BC118();
}

void sub_25880D6DC(uint64_t a1)
{
  if (!qword_27F95EDB8)
  {
    sub_25880D75C(255);
    sub_25880DB48();
    v1 = sub_2588BCD58();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95EDB8);
    }
  }
}

void sub_25880D75C(uint64_t a1)
{
  if (!qword_27F95EDC0)
  {
    sub_25880D7C4(255);
    v1 = sub_2588BD518();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95EDC0);
    }
  }
}

void sub_25880D7C4(uint64_t a1)
{
  if (!qword_27F95EDC8)
  {
    sub_25880D894(255);
    sub_25880DC70(&qword_27F95EDF8, sub_25880D894, MEMORY[0x277CDD938]);
    sub_25878F648();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F95EDC8);
    }
  }
}

void sub_25880D894(uint64_t a1)
{
  if (!qword_27F95EDD0)
  {
    sub_25880D9CC();
    sub_25880DA24(255);
    sub_25880DC70(&qword_27F95EDF0, sub_25880D9CC, MEMORY[0x277CE1198]);
    type metadata accessor for MedicalIDDataManager(255);
    sub_25880DAF4();
    sub_25880DC70(&qword_27F95D3A8, type metadata accessor for MedicalIDDataManager, &protocol conformance descriptor for MedicalIDDataManager);
    swift_getOpaqueTypeConformance2();
    v1 = sub_2588BC128();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95EDD0);
    }
  }
}

void sub_25880D9CC()
{
  if (!qword_27F95EDD8)
  {
    v0 = sub_2588BD408();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95EDD8);
    }
  }
}

void sub_25880DA24(uint64_t a1)
{
  if (!qword_27F95EDE0)
  {
    type metadata accessor for MedicalIDDataManager(255);
    sub_25880DAF4();
    sub_25880DC70(&qword_27F95D3A8, type metadata accessor for MedicalIDDataManager, &protocol conformance descriptor for MedicalIDDataManager);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F95EDE0);
    }
  }
}

unint64_t sub_25880DAF4()
{
  result = qword_27F95EDE8;
  if (!qword_27F95EDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95EDE8);
  }

  return result;
}

unint64_t sub_25880DB48()
{
  result = qword_27F95EE00;
  if (!qword_27F95EE00)
  {
    sub_25880D75C(255);
    sub_25880D894(255);
    sub_25880DC70(&qword_27F95EDF8, sub_25880D894, MEMORY[0x277CDD938]);
    sub_25878F648();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95EE00);
  }

  return result;
}

uint64_t sub_25880DC70(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_25880DCB8(uint64_t a1)
{
  if (!qword_27F95EE18)
  {
    sub_25880D6DC(255);
    sub_258804794();
    sub_25880DC70(&qword_27F95EE08, sub_25880D6DC, MEMORY[0x277CDE5A0]);
    v1 = sub_2588BC128();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95EE18);
    }
  }
}

uint64_t sub_25880DD9C@<X0>(uint64_t a3@<X8>)
{
  sub_25878F648();

  v4 = sub_2588BCDF8();
  v6 = v5;
  v8 = v7;
  sub_2588BCCC8();
  v9 = sub_2588BCDD8();
  v11 = v10;
  v13 = v12;

  sub_2587B1CF8(v4, v6, v8 & 1);

  v14 = [objc_opt_self() secondaryLabelColor];
  sub_2588BD148();
  v15 = sub_2588BCD88();
  v17 = v16;
  v19 = v18;
  v21 = v20;

  sub_2587B1CF8(v9, v11, v13 & 1);

  *a3 = v15;
  *(a3 + 8) = v17;
  *(a3 + 16) = v19 & 1;
  *(a3 + 24) = v21;
  *(a3 + 32) = 256;
  return result;
}

void *sub_25880DF24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2588BC608();
  v11 = 1;
  sub_25880E028(a1, __src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v13, __src, sizeof(v13));
  v5 = MEMORY[0x277CE14B8];
  sub_25880EB00(__dst, &v8, &qword_27F95EE28, sub_25880E834, MEMORY[0x277CE14B8]);
  sub_25880EB70(v13, &qword_27F95EE28, sub_25880E834, v5);
  memcpy(&v10[7], __dst, 0x140uLL);
  v6 = v11;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v6;
  return memcpy((a2 + 17), v10, 0x147uLL);
}

uint64_t sub_25880E028@<X0>(uint64_t a1@<X0>, void *a8@<X8>)
{
  v36 = sub_2588BC6E8();
  v70 = 1;
  sub_25880E454(v85);
  *&v69[7] = v85[0];
  *&v69[23] = v85[1];
  *&v69[39] = v85[2];
  *&v69[55] = v85[3];
  sub_2588BD5D8();
  sub_2588BC328();
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  if (*(a1 + 32))
  {
    v9 = sub_2588BD258();
    sub_2588BD5E8();
    sub_2588BC328();
    v10 = v71;
    v11 = v72;
    v12 = v73;
    v13 = v74;
    v14 = v75;
    v15 = v76;
    v16 = v77;
    v17 = v78;
    v18 = v79;
    v19 = v80;
    v20 = v81;
    v21 = v82;
    v22 = v83;
    v23 = v84;
  }

  v30 = v22;
  v31 = v18;
  v32 = v23;
  v33 = v17;
  v34 = v10;
  v38 = v36;
  v39[0] = 1;
  *&v39[17] = *&v69[16];
  *&v39[33] = *&v69[32];
  *&v39[49] = *&v69[48];
  *&v39[64] = *&v69[63];
  *&v39[1] = *v69;
  *&v39[168] = v68;
  *&v39[152] = v67;
  *&v39[136] = v66;
  *&v39[120] = v65;
  *&v39[72] = v62;
  *&v39[88] = v63;
  *&v39[104] = v64;
  __src[10] = *&v39[144];
  __src[11] = *&v39[160];
  __src[6] = *&v39[80];
  __src[7] = *&v39[96];
  __src[8] = *&v39[112];
  __src[9] = *&v39[128];
  __src[2] = *&v39[16];
  __src[3] = *&v39[32];
  __src[4] = *&v39[48];
  __src[5] = *&v39[64];
  __src[0] = v36;
  __src[1] = *v39;
  *&v40 = v9;
  *(&v40 + 1) = v10;
  *&v41 = v11;
  *(&v41 + 1) = v12;
  *&v42 = v13;
  *(&v42 + 1) = v14;
  *&v43 = v15;
  *(&v43 + 1) = v16;
  *&v44 = v17;
  *(&v44 + 1) = v18;
  *&v45 = v19;
  *(&v45 + 1) = v20;
  *&v46 = v21;
  *(&v46 + 1) = v22;
  v47 = v23;
  *(&__src[16] + 8) = v44;
  *(&__src[17] + 8) = v45;
  *(&__src[18] + 8) = v46;
  *&__src[12] = *(&v68 + 1);
  *(&__src[19] + 1) = v23;
  *(&__src[15] + 8) = v43;
  *(&__src[14] + 8) = v42;
  *(&__src[13] + 8) = v41;
  *(&__src[12] + 8) = v40;
  v24 = v9;
  v25 = v11;
  v26 = v14;
  v27 = v19;
  memcpy(a8, __src, 0x140uLL);
  v48[0] = v24;
  v48[1] = v34;
  v48[2] = v25;
  v48[3] = v12;
  v48[4] = v13;
  v48[5] = v26;
  v48[6] = v15;
  v48[7] = v16;
  v48[8] = v33;
  v48[9] = v31;
  v48[10] = v27;
  v48[11] = v20;
  v48[12] = v21;
  v48[13] = v30;
  v48[14] = v32;
  sub_25880EA9C(&v38, v49);
  v28 = MEMORY[0x277D83D88];
  sub_25880EB00(&v40, v49, &qword_27F95EE40, sub_25880E998, MEMORY[0x277D83D88]);
  sub_25880EB70(v48, &qword_27F95EE40, sub_25880E998, v28);
  v49[0] = v36;
  v49[1] = 0;
  v50 = 1;
  v52 = *&v69[16];
  v53 = *&v69[32];
  *v54 = *&v69[48];
  *&v54[15] = *&v69[63];
  v51 = *v69;
  v55 = v62;
  v56 = v63;
  v57 = v64;
  v61 = v68;
  v60 = v67;
  v59 = v66;
  v58 = v65;
  return sub_25880EBCC(v49);
}

uint64_t sub_25880E454@<X0>(uint64_t a2@<X8>)
{
  sub_25878F648();

  v3 = sub_2588BCDF8();
  v5 = v4;
  v7 = v6;
  sub_2588BCC08();
  v8 = sub_2588BCDD8();
  v29 = v9;
  v30 = v8;
  v28 = v10;
  v31 = v11;

  sub_2587B1CF8(v3, v5, v7 & 1);

  v12 = sub_2588BCDF8();
  v14 = v13;
  LOBYTE(v5) = v15;
  sub_2588BCC08();
  v16 = sub_2588BCDD8();
  v18 = v17;
  LOBYTE(v3) = v19;

  sub_2587B1CF8(v12, v14, v5 & 1);

  v20 = [objc_opt_self() secondaryLabelColor];
  sub_2588BD148();
  v21 = sub_2588BCD88();
  v23 = v22;
  LOBYTE(v14) = v24;
  v26 = v25;

  sub_2587B1CF8(v16, v18, v3 & 1);

  *a2 = v30;
  *(a2 + 8) = v29;
  *(a2 + 16) = v28 & 1;
  *(a2 + 24) = v31;
  *(a2 + 32) = v21;
  *(a2 + 40) = v23;
  *(a2 + 48) = v14 & 1;
  *(a2 + 56) = v26;
  sub_2587A99B0(v30, v29, v28 & 1);

  sub_2587A99B0(v21, v23, v14 & 1);

  sub_2587B1CF8(v21, v23, v14 & 1);

  sub_2587B1CF8(v30, v29, v28 & 1);
}

uint64_t sub_25880E6A0()
{
  sub_25880E780(0);
  sub_25880EA54(&qword_27F95EE58, sub_25880E780, MEMORY[0x277CE1138]);

  return sub_2588BD318();
}

void sub_25880E780(uint64_t a1)
{
  if (!qword_27F95EE20)
  {
    sub_25880E934(255, &qword_27F95EE28, sub_25880E834, MEMORY[0x277CE14B8]);
    sub_25880E9F0(&qword_27F95EE50, &qword_27F95EE28, sub_25880E834);
    v1 = sub_2588BD368();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95EE20);
    }
  }
}

void sub_25880E834(uint64_t a1)
{
  if (!qword_27F95EE30)
  {
    sub_25880E8D4(255);
    sub_25880E934(255, &qword_27F95EE40, sub_25880E998, MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F95EE30);
    }
  }
}

void sub_25880E8D4(uint64_t a1)
{
  if (!qword_27F95EE38)
  {
    sub_2587A9ABC(255);
    v1 = sub_2588BC1E8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95EE38);
    }
  }
}

void sub_25880E934(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_25880E998()
{
  if (!qword_27F95EE48)
  {
    v0 = sub_2588BC1E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F95EE48);
    }
  }
}

uint64_t sub_25880E9F0(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_25880E934(255, a2, a3, MEMORY[0x277CE14B8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25880EA54(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25880EA9C(uint64_t a1, uint64_t a2)
{
  sub_25880E8D4(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25880EB00(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  sub_25880E934(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_25880EB70(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  sub_25880E934(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_25880EBCC(uint64_t a1)
{
  sub_25880E8D4(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_25880EC28(uint64_t a1)
{
  if (!qword_27F95EE68[0])
  {
    sub_25880E780(255);
    sub_25880EA54(&qword_27F95EE58, sub_25880E780, MEMORY[0x277CE1138]);
    v1 = sub_2588BD348();
    if (!v2)
    {
      atomic_store(v1, qword_27F95EE68);
    }
  }
}

void sub_25880ECC4(uint64_t a1)
{
  sub_2588BDA08();
  if (v1 <= 0x3F)
  {
    sub_2587B2F78();
    if (v2 <= 0x3F)
    {
      sub_2588BD488();
      if (v3 <= 0x3F)
      {
        sub_258810D18(319, &qword_27F95ED20, sub_258804A60, MEMORY[0x277CDF468]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_25880EDC4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  if (v7 >= 0)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v8;
  }

  v10 = sub_2588BC298();
  v11 = *(*(v10 - 8) + 80);
  v12 = 8;
  v13 = *(v6 + 80);
  if (((v11 + 16) & ~v11) + *(*(v10 - 8) + 64) > 8)
  {
    v12 = ((v11 + 16) & ~v11) + *(*(v10 - 8) + 64);
  }

  if (!a2)
  {
    return 0;
  }

  v14 = v13 | 7;
  if (a2 <= v9)
  {
    goto LABEL_33;
  }

  v15 = v12 + ((*(v6 + 64) + (v11 | 7) - (((-17 - v13) | v13) + ((-41 - v13) | v14)) - 2) & ~(v11 | 7)) + 1;
  v16 = 8 * v15;
  if (v15 <= 3)
  {
    v19 = ((a2 - v9 + ~(-1 << v16)) >> v16) + 1;
    if (HIWORD(v19))
    {
      v17 = *(a1 + v15);
      if (!v17)
      {
        goto LABEL_33;
      }

      goto LABEL_20;
    }

    if (v19 > 0xFF)
    {
      v17 = *(a1 + v15);
      if (!*(a1 + v15))
      {
        goto LABEL_33;
      }

      goto LABEL_20;
    }

    if (v19 < 2)
    {
LABEL_33:
      if (v9 == 0x7FFFFFFF)
      {
        v23 = *(a1 + 1);
        if (v23 >= 0xFFFFFFFF)
        {
          LODWORD(v23) = -1;
        }

        return (v23 + 1);
      }

      else
      {
        v24 = *(v6 + 48);

        return v24((v13 + ((((((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v14 + 16) & ~v14) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v13, v7, v5);
      }
    }
  }

  v17 = *(a1 + v15);
  if (!*(a1 + v15))
  {
    goto LABEL_33;
  }

LABEL_20:
  v20 = (v17 - 1) << v16;
  if (v15 > 3)
  {
    v20 = 0;
  }

  if (v15)
  {
    if (v15 <= 3)
    {
      v21 = v15;
    }

    else
    {
      v21 = 4;
    }

    if (v21 > 2)
    {
      if (v21 == 3)
      {
        v22 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v22 = *a1;
      }
    }

    else if (v21 == 1)
    {
      v22 = *a1;
    }

    else
    {
      v22 = *a1;
    }
  }

  else
  {
    v22 = 0;
  }

  return v9 + (v22 | v20) + 1;
}

void sub_25880F08C(_WORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v30 = v8;
  v9 = *(v8 + 84);
  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  if (v9 >= 0)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = v10;
  }

  v12 = *(sub_2588BC298() - 8);
  v13 = *(v12 + 80);
  v14 = ((v13 + 16) & ~v13) + *(v12 + 64);
  if (v14 <= 8)
  {
    v15 = 8;
  }

  else
  {
    v15 = v14;
  }

  v16 = *(v8 + 80);
  v17 = ((v16 + 16) & ~v16) + *(v8 + 64);
  v18 = v15 + ((((v16 + 40) & ~(v16 | 7)) + (v13 | 7) + v17) & ~(v13 | 7)) + 1;
  if (a3 <= v11)
  {
    v19 = 0;
  }

  else if (v18 <= 3)
  {
    v22 = ((a3 - v11 + ~(-1 << (8 * v18))) >> (8 * v18)) + 1;
    if (HIWORD(v22))
    {
      v19 = 4;
    }

    else
    {
      if (v22 < 0x100)
      {
        v23 = 1;
      }

      else
      {
        v23 = 2;
      }

      if (v22 >= 2)
      {
        v19 = v23;
      }

      else
      {
        v19 = 0;
      }
    }
  }

  else
  {
    v19 = 1;
  }

  if (v11 < a2)
  {
    v20 = ~v11 + a2;
    if (v18 < 4)
    {
      v21 = (v20 >> (8 * v18)) + 1;
      if (v18)
      {
        v24 = v20 & ~(-1 << (8 * v18));
        bzero(a1, v18);
        if (v18 != 3)
        {
          if (v18 == 2)
          {
            *a1 = v24;
            if (v19 > 1)
            {
LABEL_63:
              if (v19 == 2)
              {
                *(a1 + v18) = v21;
              }

              else
              {
                *(a1 + v18) = v21;
              }

              return;
            }
          }

          else
          {
            *a1 = v20;
            if (v19 > 1)
            {
              goto LABEL_63;
            }
          }

          goto LABEL_60;
        }

        *a1 = v24;
        *(a1 + 2) = BYTE2(v24);
      }

      if (v19 > 1)
      {
        goto LABEL_63;
      }
    }

    else
    {
      bzero(a1, v18);
      *a1 = v20;
      v21 = 1;
      if (v19 > 1)
      {
        goto LABEL_63;
      }
    }

LABEL_60:
    if (v19)
    {
      *(a1 + v18) = v21;
    }

    return;
  }

  if (v19 > 1)
  {
    if (v19 != 2)
    {
      *(a1 + v18) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *(a1 + v18) = 0;
LABEL_36:
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!v19)
  {
    goto LABEL_36;
  }

  *(a1 + v18) = 0;
  if (!a2)
  {
    return;
  }

LABEL_37:
  if (v11 == 0x7FFFFFFF)
  {
    if ((a2 & 0x80000000) != 0)
    {
      *a1 = a2 & 0x7FFFFFFF;
      *(a1 + 1) = 0;
    }

    else
    {
      *(a1 + 1) = (a2 - 1);
    }
  }

  else
  {
    v25 = ((((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + (v16 | 7) + 16) & ~(v16 | 7));
    if (v10 >= a2)
    {
      v29 = *(v30 + 56);

      v29((v16 + ((v25 + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v16, a2, v9, v7);
    }

    else
    {
      if (v17 <= 3)
      {
        v26 = ~(-1 << (8 * v17));
      }

      else
      {
        v26 = -1;
      }

      if (v17)
      {
        v27 = v26 & (~v10 + a2);
        if (v17 <= 3)
        {
          v28 = v17;
        }

        else
        {
          v28 = 4;
        }

        bzero(v25, v17);
        if (v28 > 2)
        {
          if (v28 == 3)
          {
            *v25 = v27;
            v25[2] = BYTE2(v27);
          }

          else
          {
            *v25 = v27;
          }
        }

        else if (v28 == 1)
        {
          *v25 = v27;
        }

        else
        {
          *v25 = v27;
        }
      }
    }
  }
}

uint64_t sub_25880F4B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_2588BC598();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258810D18(0, &qword_27F95EBC0, sub_258804A60, MEMORY[0x277CDF458]);
  MEMORY[0x28223BE20](v9);
  v11 = &v14 - v10;
  sub_25880B950(v2 + *(a1 + 48), &v14 - v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_258811004(v11, a2);
  }

  sub_2588BDBE8();
  v13 = sub_2588BCB58();
  sub_2588BBC68();

  sub_2588BC588();
  swift_getAtKeyPath();

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_25880F690@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v91 = a2;
  v89 = sub_2588BC9E8();
  v90 = *(v89 - 8);
  v3 = MEMORY[0x28223BE20](v89);
  v84 = v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = a1;
  v97 = a1;
  v80 = *(a1 - 8);
  v82 = *(v80 + 64);
  MEMORY[0x28223BE20](v3);
  v79 = v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2587FB424();
  v85 = v7;
  v87 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v81 = v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258810BA0(0);
  v86 = v9;
  v10 = MEMORY[0x28223BE20](v9);
  v88 = v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v83 = v71 - v12;
  v13 = *(a1 + 16);
  v78 = sub_2588BD488();
  MEMORY[0x28223BE20](v78);
  v77 = v71 - v14;
  v15 = sub_2588BDA08();
  v96 = *(v5 + 24);
  v16 = v96;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18 = sub_2588BDCE8();
  v19 = *(v16 + 8);
  v111 = v19;
  v71[0] = v19;
  WitnessTable = swift_getWitnessTable();
  v104 = MEMORY[0x277CE0BD8];
  v105 = v18;
  v106 = MEMORY[0x277CE0BC8];
  v107 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v22 = swift_getWitnessTable();
  v23 = v13;
  v93 = v13;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v104 = v15;
  v105 = AssociatedTypeWitness;
  v106 = OpaqueTypeMetadata2;
  v107 = v22;
  v108 = AssociatedConformanceWitness;
  v25 = sub_2588BD4D8();
  v71[1] = v25;
  v26 = MEMORY[0x277CE0BD8];
  v104 = MEMORY[0x277CE0BD8];
  v105 = v18;
  v27 = MEMORY[0x277CE0BC8];
  v106 = MEMORY[0x277CE0BC8];
  v107 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v28 = swift_getWitnessTable();
  v104 = v26;
  v105 = v23;
  v106 = v25;
  v107 = v27;
  v108 = v19;
  v109 = v28;
  v29 = sub_2588BD3B8();
  v72 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v31 = v71 - v30;
  v32 = sub_2588BC1E8();
  v73 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v34 = v71 - v33;
  v35 = sub_2588BC1E8();
  v75 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v37 = v71 - v36;
  v74 = sub_2588BC1E8();
  v76 = *(v74 - 8);
  v38 = MEMORY[0x28223BE20](v74);
  v92 = v71 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v94 = v71 - v40;
  v41 = v95;
  sub_2588BD458();
  v42 = v41[1];
  v104 = *v41;
  v105 = v42;
  LOBYTE(v106) = 0;
  v107 = MEMORY[0x277D84F90];
  v98 = v93;
  v99 = v96;
  v100 = v41;

  sub_2588BD388();
  sub_2588BD5C8();
  v43 = swift_getWitnessTable();
  sub_2588BD058();
  (*(v72 + 8))(v31, v29);
  sub_2588BCB98();
  v103[6] = v43;
  v103[7] = MEMORY[0x277CDF678];
  v44 = swift_getWitnessTable();
  sub_2588BD0A8();
  (*(v73 + 8))(v34, v32);
  sub_2588BCBA8();
  v45 = MEMORY[0x277CDF918];
  v103[4] = v44;
  v103[5] = MEMORY[0x277CDF918];
  v46 = swift_getWitnessTable();
  v47 = v92;
  sub_2588BD0A8();
  (*(v75 + 8))(v37, v35);
  v103[2] = v46;
  v103[3] = v45;
  v48 = v74;
  v78 = swift_getWitnessTable();
  v49 = v47;
  sub_2587DCF7C();
  v50 = v76;
  v51 = *(v76 + 8);
  v51(v49, v48);
  v52 = v80;
  v53 = v79;
  v54 = v97;
  (*(v80 + 16))(v79, v95, v97);
  v55 = (*(v52 + 80) + 32) & ~*(v52 + 80);
  v56 = swift_allocObject();
  v57 = v96;
  *(v56 + 16) = v93;
  *(v56 + 24) = v57;
  (*(v52 + 32))(v56 + v55, v53, v54);
  v58 = v81;
  sub_2588BD318();
  v59 = v84;
  sub_2588BC9D8();
  sub_258810F60(&qword_27F95E9D8, sub_2587FB424, MEMORY[0x277CDF028]);
  sub_258810F60(&qword_27F95EF00, MEMORY[0x277CDE400], MEMORY[0x277CDE3E8]);
  v60 = v83;
  v61 = v85;
  v62 = v89;
  sub_2588BCE48();
  (*(v90 + 8))(v59, v62);
  (*(v87 + 8))(v58, v61);
  v63 = sub_2588BD1A8();
  KeyPath = swift_getKeyPath(byte_2588C3640);
  v65 = v86;
  v66 = (v60 + *(v86 + 36));
  *v66 = KeyPath;
  v66[1] = v63;
  v67 = v92;
  v68 = v94;
  (*(v50 + 16))(v92, v94, v48);
  v104 = v67;
  v69 = v88;
  sub_25879C3C0(v60, v88);
  v105 = v69;
  v103[0] = v48;
  v103[1] = v65;
  v101 = v78;
  v102 = sub_258810E00();
  sub_25881C7E0(&v104, 2uLL, v103);
  sub_25879C424(v60);
  v51(v68, v48);
  sub_25879C424(v69);
  return (v51)(v67, v48);
}

uint64_t sub_258810284@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v26 = a1;
  v27 = a4;
  v6 = sub_2588BDA08();
  v20 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_2588BDCE8();
  v35 = *(a3 + 8);
  WitnessTable = swift_getWitnessTable();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v24 = v6;
  v21 = swift_getWitnessTable();
  v23 = AssociatedTypeWitness;
  v30 = v6;
  v31 = AssociatedTypeWitness;
  v32 = OpaqueTypeMetadata2;
  v33 = v21;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = sub_2588BD4D8();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v20 - v14;
  v29 = *(v26 + 16);
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;

  v30 = MEMORY[0x277CE0BD8];
  v31 = v8;
  v32 = MEMORY[0x277CE0BC8];
  v33 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_2588BD4C8();
  v28 = OpaqueTypeConformance2;
  swift_getWitnessTable();
  sub_2587DCF7C();
  v18 = *(v10 + 8);
  v18(v13, v9);
  sub_2587DCF7C();
  return (v18)(v15, v9);
}

uint64_t sub_25881059C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v26 = a1;
  v32 = a4;
  v6 = sub_2588BDCE8();
  v31 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v26 - v7;
  v37 = *(a3 + 8);
  WitnessTable = swift_getWitnessTable();
  v33 = MEMORY[0x277CE0BD8];
  v34 = v6;
  v35 = MEMORY[0x277CE0BC8];
  v36 = WitnessTable;
  v29 = &unk_2588CBCBC;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v30 = *(OpaqueTypeMetadata2 - 8);
  v10 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v27 = &v26 - v13;
  v33 = (*(a3 + 24))(a2, a3);
  v34 = v14;
  sub_25878F648();
  v15 = sub_2588BCDF8();
  v17 = v16;
  v33 = v15;
  v34 = v16;
  v19 = v18 & 1;
  LOBYTE(v35) = v18 & 1;
  v36 = v20;
  v21 = *(a2 - 8);
  (*(v21 + 16))(v8, v26, a2);
  (*(v21 + 56))(v8, 0, 1, a2);
  v22 = WitnessTable;
  sub_2587A8F0C(v8, 1, MEMORY[0x277CE0BD8], v6, MEMORY[0x277CE0BC8]);
  (*(v31 + 8))(v8, v6);
  sub_2587B1CF8(v15, v17, v19);

  v33 = MEMORY[0x277CE0BD8];
  v34 = v6;
  v35 = MEMORY[0x277CE0BC8];
  v36 = v22;
  swift_getOpaqueTypeConformance2();
  v23 = v27;
  sub_2587DCF7C();
  v24 = *(v30 + 8);
  v24(v12, OpaqueTypeMetadata2);
  sub_2587DCF7C();
  return (v24)(v23, OpaqueTypeMetadata2);
}

uint64_t sub_258810910(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2588BC298();
  MEMORY[0x28223BE20](v6 - 8);
  sub_258804A60(0);
  v8 = v7;
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a1 + 24))(v9);
  v13 = type metadata accessor for NanoPickerView(0, a2, a3, v12);
  sub_25880F4B0(v13, v11);
  MEMORY[0x259C8C5A0](v8);
  sub_2588BC288();
  sub_2588BD438();
  return sub_258810FA8(v11);
}

uint64_t sub_258810A3C@<X0>(uint64_t a1@<X8>)
{
  sub_2588BC688();
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v2 = qword_27F95DA88;
  v3 = sub_2588BCDE8();
  v5 = v4;
  v7 = v6;
  sub_2588BD188();
  v8 = sub_2588BCD98();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  sub_2587B1CF8(v3, v5, v7 & 1);

  *a1 = v8;
  *(a1 + 8) = v10;
  *(a1 + 16) = v12 & 1;
  *(a1 + 24) = v14;
  return result;
}

void sub_258810BA0(uint64_t a1)
{
  if (!qword_27F95EEF0)
  {
    sub_258810C08(255);
    sub_25880B11C(255);
    v1 = sub_2588BC1E8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95EEF0);
    }
  }
}

void sub_258810C08(uint64_t a1)
{
  if (!qword_27F95EEF8)
  {
    sub_2587FB424();
    sub_2588BC9E8();
    sub_258810F60(&qword_27F95E9D8, sub_2587FB424, MEMORY[0x277CDF028]);
    sub_258810F60(&qword_27F95EF00, MEMORY[0x277CDE400], MEMORY[0x277CDE3E8]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F95EEF8);
    }
  }
}

void sub_258810D18(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_258810D7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(type metadata accessor for NanoPickerView(0, v5, v6, a4) - 8);
  v8 = v4 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return sub_258810910(v8, v5, v6);
}

unint64_t sub_258810E00()
{
  result = qword_27F95EF08;
  if (!qword_27F95EF08)
  {
    sub_258810BA0(255);
    sub_2587FB424();
    sub_2588BC9E8();
    sub_258810F60(&qword_27F95E9D8, sub_2587FB424, MEMORY[0x277CDF028]);
    sub_258810F60(&qword_27F95EF00, MEMORY[0x277CDE400], MEMORY[0x277CDE3E8]);
    swift_getOpaqueTypeConformance2();
    sub_258810F60(&qword_27F95ECE8, sub_25880B11C, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95EF08);
  }

  return result;
}

uint64_t sub_258810F60(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_258810FA8(uint64_t a1)
{
  sub_258804A60(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_258811004(uint64_t a1, uint64_t a2)
{
  sub_258804A60(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_258811084(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata accessor for NanoConfirmationDeleteView(uint64_t a1)
{
  result = qword_27F95EF10;
  if (!qword_27F95EF10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_258811148(uint64_t a1)
{
  sub_258811084(319, &qword_27F95ED20, sub_258804A60, MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_258811084(319, &qword_27F95DC90, type metadata accessor for MedicalIDDataManager, MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      sub_258812730(319, &qword_27F95DAF0, MEMORY[0x277D839B0], MEMORY[0x277CE11F8]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_258811284@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_2588BC598();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258811084(0, &qword_27F95EBC0, sub_258804A60, MEMORY[0x277CDF458]);
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - v9;
  sub_25880B950(v2, &v13 - v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_258812B14(v10, a1, sub_258804A60);
  }

  sub_2588BDBE8();
  v12 = sub_2588BCB58();
  sub_2588BBC68();

  sub_2588BC588();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_258811474()
{
  v1 = sub_2588BC598();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for NanoConfirmationDeleteView(0) + 20));
  v6 = *v5;
  v7 = *(v5 + 8);

  if ((v7 & 1) == 0)
  {
    sub_2588BDBE8();
    v8 = sub_2588BCB58();
    sub_2588BBC68();

    sub_2588BC588();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    return v10[1];
  }

  return v6;
}

uint64_t sub_2588115C4@<X0>(void (*a1)(void, void, void)@<X0>, uint64_t a8@<X8>)
{
  *a8 = sub_2588BC6E8();
  *(a8 + 8) = 0;
  *(a8 + 16) = 1;
  sub_2588127C8(0);
  return sub_258811610(a1, (a8 + *(v10 + 44)));
}

uint64_t sub_258811610@<X0>(void (*a1)(void, void, void)@<X0>, _OWORD *a2@<X8>)
{
  v45 = a1;
  v48 = a2;
  v50 = sub_2588BD748();
  v49 = *(v50 - 8);
  v2 = MEMORY[0x28223BE20](v50);
  v58 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v51 = &v43 - v4;
  v5 = type metadata accessor for NanoConfirmationDeleteView(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  sub_258811084(0, &qword_27F95D9E0, MEMORY[0x277CDD650], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v43 - v9;
  sub_2587FB424();
  v44 = v11;
  v47 = *(v11 - 8);
  v12 = MEMORY[0x28223BE20](v11);
  v46 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v57 = &v43 - v14;
  sub_2588BC688();
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v15 = qword_27F95DA88;
  v16 = sub_2588BCDE8();
  v54 = v17;
  v55 = v16;
  v19 = v18;
  v56 = v20;
  KeyPath = swift_getKeyPath(byte_2588C36E0);
  v52 = v19 & 1;
  LOBYTE(v62[0]) = v19 & 1;
  sub_2588BBDC8();
  v21 = sub_2588BBDE8();
  (*(*(v21 - 8) + 56))(v10, 0, 1, v21);
  v22 = v45;
  sub_258812A4C(v45, &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NanoConfirmationDeleteView);
  v23 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v24 = swift_allocObject();
  sub_258812B14(&v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v23, type metadata accessor for NanoConfirmationDeleteView);
  v25 = v57;
  sub_2588BD308();
  sub_258812A4C(v22, &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NanoConfirmationDeleteView);
  v26 = swift_allocObject();
  sub_258812B14(&v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v23, type metadata accessor for NanoConfirmationDeleteView);
  v27 = v51;
  sub_2588BD718();
  v28 = v47;
  v45 = *(v47 + 16);
  v29 = v46;
  v30 = v44;
  v45(v46, v25, v44);
  v31 = v49;
  v32 = *(v49 + 16);
  v33 = v50;
  v32(v58, v27, v50);
  *&v60 = v55;
  *(&v60 + 1) = v54;
  v61[0] = v52;
  *&v61[1] = *v59;
  *&v61[4] = *&v59[3];
  *&v61[8] = v56;
  *&v61[16] = KeyPath;
  *&v61[24] = 1;
  v61[26] = 1;
  v34 = v48;
  *(v48 + 27) = *&v61[11];
  v35 = *v61;
  *v34 = v60;
  v34[1] = v35;
  sub_258812648(0);
  v37 = v36;
  v45(v34 + *(v36 + 48), v29, v30);
  v38 = v34 + *(v37 + 64);
  v39 = v58;
  v32(v38, v58, v33);
  sub_258812A4C(&v60, v62, sub_2588126D0);
  v40 = *(v31 + 8);
  v40(v51, v33);
  v41 = *(v28 + 8);
  v41(v57, v30);
  v40(v39, v33);
  v41(v29, v30);
  v62[0] = v55;
  v62[1] = v54;
  v63 = v52;
  *v64 = *v59;
  *&v64[3] = *&v59[3];
  v65 = v56;
  v66 = KeyPath;
  v67 = 1;
  v68 = 1;
  return sub_258812AB4(v62, sub_2588126D0);
}

uint64_t sub_258811CB0(uint64_t a1)
{
  v2 = type metadata accessor for NanoConfirmationDeleteView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258811084(0, &qword_27F95D830, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15 - v7;
  v9 = sub_2588BDAA8();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_258812A4C(a1, v5, type metadata accessor for NanoConfirmationDeleteView);
  sub_2588BDA78();
  v10 = sub_2588BDA68();
  v11 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  *(v12 + 16) = v10;
  *(v12 + 24) = v13;
  sub_258812B14(v5, v12 + v11, type metadata accessor for NanoConfirmationDeleteView);
  sub_2587ABD24(0, 0, v8, &unk_2588C3718, v12);
}

uint64_t sub_258811EB4@<X0>(uint64_t a1@<X8>)
{
  sub_2588BC688();
  if (qword_27F95D000 != -1)
  {
    swift_once();
  }

  v2 = qword_27F95DA88;
  result = sub_2588BCDE8();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_258811F94()
{
  v0 = sub_2588BC298();
  MEMORY[0x28223BE20](v0 - 8);
  sub_258804A60(0);
  v2 = v1;
  MEMORY[0x28223BE20](v1);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258811284(v4);
  MEMORY[0x259C8C5A0](v2);
  sub_2588BC288();
  sub_2588BD438();
  return sub_258812AB4(v4, sub_258804A60);
}

uint64_t sub_25881209C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  sub_2588BC298();
  v4[6] = swift_task_alloc();
  sub_258804A60(0);
  v4[7] = v5;
  v4[8] = swift_task_alloc();
  sub_2588BDA78();
  v4[9] = sub_2588BDA68();
  v7 = sub_2588BDA28();
  v4[10] = v7;
  v4[11] = v6;

  return MEMORY[0x2822009F8](sub_258812190, v7, v6);
}

uint64_t sub_258812190()
{
  *(v0 + 96) = sub_258811474();
  v1 = swift_task_alloc();
  *(v0 + 104) = v1;
  *v1 = v0;
  v1[1] = sub_258812230;

  return MedicalIDDataManager.delete()();
}

uint64_t sub_258812230(char a1)
{
  v2 = *v1;
  *(*v1 + 34) = a1;

  v3 = *(v2 + 88);
  v4 = *(v2 + 80);

  return MEMORY[0x2822009F8](sub_25881237C, v4, v3);
}

uint64_t sub_25881237C()
{
  v1 = *(v0 + 34);

  if (v1 == 1)
  {
    v3 = *(v0 + 56);
    v2 = *(v0 + 64);
    v4 = *(v0 + 40);
    sub_258811284(v2);
    MEMORY[0x259C8C5A0](v3);
    sub_2588BC288();
    sub_2588BD438();
    sub_258812AB4(v2, sub_258804A60);
    v5 = (v4 + *(type metadata accessor for NanoConfirmationDeleteView(0) + 24));
    v6 = *v5;
    v7 = v5[1];
    LOBYTE(v5) = *(v5 + 16);
    *(v0 + 16) = v6;
    *(v0 + 24) = v7;
    *(v0 + 32) = v5;
    *(v0 + 33) = 1;
    sub_258812730(0, &qword_27F95DAF0, MEMORY[0x277D839B0], MEMORY[0x277CE11F8]);
    sub_2588BD438();
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_2588124CC(uint64_t a1)
{
  sub_2588BCB68();
  sub_258812580(0);
  sub_258812780(&qword_27F95EF48, sub_258812580, MEMORY[0x277CE1198]);
  return sub_2588BBEE8();
}

void sub_258812580(uint64_t a1)
{
  if (!qword_27F95EF20)
  {
    sub_258812614(255);
    sub_258812780(&qword_27F95EF40, sub_258812614, MEMORY[0x277CE14C0]);
    v1 = sub_2588BD408();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95EF20);
    }
  }
}

void sub_258812648(uint64_t a1)
{
  if (!qword_27F95EF30)
  {
    sub_2588126D0(255);
    sub_2587FB424();
    sub_2588BD748();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_27F95EF30);
    }
  }
}

void sub_2588126D0(uint64_t a1)
{
  if (!qword_27F95EF38)
  {
    sub_2587E5DE8(255);
    v1 = sub_2588BC1E8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95EF38);
    }
  }
}

void sub_258812730(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_258812780(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2588127C8(uint64_t a1)
{
  if (!qword_27F95EF50)
  {
    sub_258812614(255);
    v1 = sub_2588BC0B8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95EF50);
    }
  }
}

uint64_t objectdestroyTm_13()
{
  v1 = *(type metadata accessor for NanoConfirmationDeleteView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  sub_258811084(0, &qword_27F95EBC0, sub_258804A60, MEMORY[0x277CDF458]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    sub_258804A60(0);
    v5 = *(v4 + 32);
    v6 = sub_2588BC298();
    (*(*(v6 - 8) + 8))(v2 + v5, v6);
  }

  return swift_deallocObject();
}

uint64_t sub_2588129D8(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for NanoConfirmationDeleteView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_258812A4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_258812AB4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_258812B14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_258812B7C(uint64_t a1)
{
  v4 = *(type metadata accessor for NanoConfirmationDeleteView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2587AE310;

  return sub_25881209C(a1, v6, v7, v1 + v5);
}

void sub_258812C6C(uint64_t a1)
{
  if (!qword_27F95EF60)
  {
    sub_258812580(255);
    sub_258812780(&qword_27F95EF48, sub_258812580, MEMORY[0x277CE1198]);
    v1 = sub_2588BBED8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95EF60);
    }
  }
}

__n128 __swift_memcpy129_8(uint64_t a1, uint64_t a2)
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
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_258812D34(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 129))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 96);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_258812D7C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 128) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 129) = 1;
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
      *(result + 96) = (a2 - 1);
      return result;
    }

    *(result + 129) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_258812E0C@<Q0>(uint64_t a2@<X8>)
{
  v4 = *(v2 + 112);
  v38[6] = *(v2 + 96);
  v38[7] = v4;
  v39 = *(v2 + 128);
  v5 = *(v2 + 48);
  v38[2] = *(v2 + 32);
  v38[3] = v5;
  v6 = *(v2 + 80);
  v38[4] = *(v2 + 64);
  v38[5] = v6;
  v7 = *(v2 + 16);
  v38[0] = *v2;
  v38[1] = v7;
  v8 = sub_2588BC6F8();
  v37 = 1;
  sub_25881308C(v38, &v21);
  v52 = v33;
  v53 = v34;
  v54 = v35;
  v48 = v29;
  v49 = v30;
  v51 = v32;
  v50 = v31;
  v44 = v25;
  v45 = v26;
  v47 = v28;
  v46 = v27;
  v40 = v21;
  v41 = v22;
  v42 = v23;
  v43 = v24;
  v55[12] = v33;
  v55[13] = v34;
  v55[14] = v35;
  v55[8] = v29;
  v55[9] = v30;
  v55[11] = v32;
  v55[10] = v31;
  v55[4] = v25;
  v55[5] = v26;
  v55[7] = v28;
  v55[6] = v27;
  v55[0] = v21;
  v55[1] = v22;
  v55[3] = v24;
  v55[2] = v23;
  sub_2588144EC(&v40, v20);
  sub_25881456C(v55);
  *&v36[183] = v51;
  *&v36[199] = v52;
  *&v36[215] = v53;
  *&v36[231] = v54;
  *&v36[119] = v47;
  *&v36[135] = v48;
  *&v36[151] = v49;
  *&v36[167] = v50;
  *&v36[55] = v43;
  *&v36[71] = v44;
  *&v36[87] = v45;
  *&v36[103] = v46;
  *&v36[7] = v40;
  *&v36[23] = v41;
  *&v36[39] = v42;
  v9 = v37;
  sub_2588BD5C8();
  sub_2588BC328();
  *a2 = v8;
  *(a2 + 8) = 0;
  *(a2 + 16) = v9;
  v10 = *&v36[208];
  *(a2 + 209) = *&v36[192];
  *(a2 + 225) = v10;
  *(a2 + 241) = *&v36[224];
  *(a2 + 256) = *&v36[239];
  v11 = *&v36[144];
  *(a2 + 145) = *&v36[128];
  *(a2 + 161) = v11;
  v12 = *&v36[176];
  *(a2 + 177) = *&v36[160];
  *(a2 + 193) = v12;
  v13 = *&v36[80];
  *(a2 + 81) = *&v36[64];
  *(a2 + 97) = v13;
  v14 = *&v36[112];
  *(a2 + 113) = *&v36[96];
  *(a2 + 129) = v14;
  v15 = *&v36[16];
  *(a2 + 17) = *v36;
  *(a2 + 33) = v15;
  v16 = *&v36[48];
  *(a2 + 49) = *&v36[32];
  *(a2 + 65) = v16;
  v17 = v26;
  *(a2 + 328) = v25;
  *(a2 + 344) = v17;
  *(a2 + 360) = v27;
  v18 = v22;
  *(a2 + 264) = v21;
  *(a2 + 280) = v18;
  result = v24;
  *(a2 + 296) = v23;
  *(a2 + 312) = result;
  return result;
}

uint64_t sub_25881308C@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = a1[11];
  if (a1[1])
  {
    v4 = *a1;
    v5 = a1[1];
  }

  else
  {
    v4 = 0;
    v5 = 0xE000000000000000;
  }

  v6 = a1[10];
  *&v104[0] = v4;
  *(&v104[0] + 1) = v5;
  sub_2588144B4(a1, &v111);
  sub_25878F648();

  v7 = sub_2588BCDF8();
  v52 = v8;
  v53 = v7;
  v10 = v9;
  v54 = v11;
  *(&v51 + 1) = sub_2588BCCC8();
  *&v51 = swift_getKeyPath(byte_2588C37F0);
  *(&v50 + 1) = sub_2588BD1D8();
  *&v50 = swift_getKeyPath("X%\n'");
  v49 = v10 & 1;
  v119 = v10 & 1;
  if (v3)
  {
    *&v111 = v6;
    *(&v111 + 1) = v3;
    strcpy(v104, "[^A-Za-z0-9]+");
    HIWORD(v104[0]) = -4864;
    v55 = 0;
    v56 = 0xE000000000000000;
    v12 = sub_2588BDD08();
    v14 = v13;
    sub_2588145E4(a1);
  }

  else
  {
    sub_2588145E4(a1);
    v12 = 0;
    v14 = 0xE000000000000000;
  }

  *&v111 = v12;
  *(&v111 + 1) = v14;
  v15 = sub_2588BCDF8();
  v45 = v16;
  v46 = v15;
  v18 = v17;
  v44 = v19;
  *(&v43 + 1) = sub_2588BCCC8();
  *&v43 = swift_getKeyPath(byte_2588C37F0);
  *(&v42 + 1) = sub_2588BD1E8();
  *&v42 = swift_getKeyPath("X%\n'");
  v41 = v18 & 1;
  v110 = v18 & 1;
  v40 = sub_2588BC608();
  LOBYTE(v104[0]) = 1;
  sub_2588135B4(&v111);
  v20 = v111;
  v21 = v112;
  v22 = BYTE8(v112);
  v23 = v113;
  v39 = v114;
  LOBYTE(v55) = BYTE8(v112);
  LOBYTE(v105[0]) = v114;
  v24 = sub_2588BCCC8();
  KeyPath = swift_getKeyPath(byte_2588C37F0);
  *(&v47 + 1) = sub_2588BD1E8();
  v83 = v40;
  v84[0] = 1;
  *&v84[8] = v20;
  *&v84[24] = v21;
  v85[0] = v22;
  *&v85[8] = v23;
  v85[24] = v39;
  *&v86 = KeyPath;
  *(&v86 + 1) = v24;
  *&v47 = swift_getKeyPath("X%\n'");
  v79 = *&v84[16];
  v80 = *v85;
  v81 = *&v85[16];
  v82 = v86;
  v77 = v40;
  v78 = *v84;
  v87[0] = v40;
  v87[1] = 0;
  v88 = 1;
  v89 = v20;
  v90 = v21;
  v91 = v22;
  v92 = v23;
  v93 = v39;
  v94 = KeyPath;
  v95 = v24;
  sub_258814614(&v83, &v111, sub_25881413C);
  sub_25881467C(v87, sub_25881413C);
  *&v96 = v53;
  *(&v96 + 1) = v52;
  LOBYTE(v97) = v49;
  *(&v97 + 1) = *v118;
  DWORD1(v97) = *&v118[3];
  *(&v97 + 1) = v54;
  v98 = v51;
  v99 = v50;
  v64 = v51;
  v65 = v50;
  v62 = v96;
  v63 = v97;
  *&v100 = v46;
  *(&v100 + 1) = v45;
  LOBYTE(v101) = v41;
  *(&v101 + 1) = v44;
  v102 = v43;
  v103 = v42;
  v68 = v43;
  v69 = v42;
  v66 = v100;
  v67 = v101;
  v26 = v78;
  v104[0] = v40;
  v104[1] = v78;
  v27 = v81;
  v28 = v82;
  v104[5] = v82;
  v104[4] = v81;
  v29 = v79;
  v30 = v80;
  v104[2] = v79;
  v104[3] = v80;
  v104[6] = v47;
  v70 = v40;
  v71 = v78;
  v76 = v47;
  v74 = v81;
  v75 = v82;
  v72 = v79;
  v73 = v80;
  v31 = v97;
  *a2 = v96;
  a2[1] = v31;
  v32 = v67;
  a2[4] = v66;
  a2[5] = v32;
  v33 = v65;
  a2[2] = v64;
  a2[3] = v33;
  v34 = v71;
  a2[8] = v70;
  a2[9] = v34;
  v35 = v69;
  a2[6] = v68;
  a2[7] = v35;
  v36 = v76;
  a2[13] = v75;
  a2[14] = v36;
  v37 = v74;
  a2[11] = v73;
  a2[12] = v37;
  a2[10] = v72;
  v113 = v29;
  v114 = v30;
  v115 = v27;
  v116 = v28;
  v111 = v40;
  v112 = v26;
  v117 = v47;
  sub_258814614(&v96, &v55, sub_258813FA8);
  sub_258814614(&v100, &v55, sub_258813FA8);
  sub_258814614(v104, &v55, sub_258814098);
  sub_25881467C(&v111, sub_258814098);
  v105[0] = v46;
  v105[1] = v45;
  v106 = v41;
  v107 = v44;
  v108 = v43;
  v109 = v42;
  sub_25881467C(v105, sub_258813FA8);
  v55 = v53;
  v56 = v52;
  v57 = v49;
  *v58 = *v118;
  *&v58[3] = *&v118[3];
  v59 = v54;
  v60 = v51;
  v61 = v50;
  return sub_25881467C(&v55, sub_258813FA8);
}

uint64_t sub_2588135B4@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_2588BD258();
  sub_25878F648();

  v4 = sub_2588BCDF8();
  v6 = v5;
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  v8 = v7 & 1;
  *(a2 + 24) = v7 & 1;
  *(a2 + 32) = v9;
  *(a2 + 40) = 0;
  *(a2 + 48) = 1;

  sub_2587A99B0(v4, v6, v8);

  sub_2587B1CF8(v4, v6, v8);
}

void *sub_2588136BC@<X0>(void *a1@<X8>)
{
  sub_258814828(0, &qword_27F95EF68, MEMORY[0x277CE0330]);
  v41 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = v35 - v4;
  v6 = sub_2588BC278();
  v39 = *(v6 - 8);
  v40 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258813DD0(0);
  v10 = v9;
  v38 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_258813CCC(0);
  v42 = v13;
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = *(v1 + 128);
  v17 = *(v1 + 112);
  v48[6] = *(v1 + 96);
  v48[7] = v17;
  v18 = *(v1 + 48);
  v48[2] = *(v1 + 32);
  v48[3] = v18;
  v19 = *(v1 + 80);
  v48[4] = *(v1 + 64);
  v48[5] = v19;
  v20 = *(v1 + 16);
  v48[0] = *v1;
  v48[1] = v20;
  if (v49)
  {
    v36 = v14;
    v21 = swift_allocObject();
    v37 = a1;
    *(v21 + 144) = *(v1 + 128);
    v22 = *(v1 + 112);
    *(v21 + 112) = *(v1 + 96);
    *(v21 + 128) = v22;
    v23 = *(v1 + 48);
    *(v21 + 48) = *(v1 + 32);
    *(v21 + 64) = v23;
    v24 = *(v1 + 80);
    *(v21 + 80) = *(v1 + 64);
    *(v21 + 96) = v24;
    v25 = *(v1 + 16);
    *(v21 + 16) = *v1;
    *(v21 + 32) = v25;
    MEMORY[0x28223BE20](v21);
    v35[-2] = v48;
    sub_2588144B4(v48, v47);
    sub_258813E34(0);
    v35[0] = v26;
    v35[1] = sub_258814368();
    sub_2588BD318();
    sub_2588BC268();
    v27 = sub_258814418(&qword_27F95EFF8, sub_258813DD0, MEMORY[0x277CDF028]);
    v28 = sub_258814418(&qword_27F95E988, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
    v29 = v40;
    sub_2588BCE48();
    (*(v39 + 8))(v8, v29);
    (*(v38 + 8))(v12, v10);
    v30 = v36;
    v31 = v42;
    (*(v36 + 16))(v5, v16, v42);
    swift_storeEnumTagMultiPayload();
    v47[0] = v10;
    v47[1] = v29;
    v47[2] = v27;
    v47[3] = v28;
    swift_getOpaqueTypeConformance2();
    sub_2588BC778();
    return (*(v30 + 8))(v16, v31);
  }

  else
  {
    sub_258812E0C(v47);
    memcpy(v5, v47, 0x178uLL);
    swift_storeEnumTagMultiPayload();
    sub_258813E34(0);
    v33 = sub_258814418(&qword_27F95EFF8, sub_258813DD0, MEMORY[0x277CDF028]);
    v34 = sub_258814418(&qword_27F95E988, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
    v43 = v10;
    v44 = v40;
    v45 = v33;
    v46 = v34;
    swift_getOpaqueTypeConformance2();
    sub_258814368();
    return sub_2588BC778();
  }
}

void sub_258813C34(uint64_t a1)
{
  if (*(a1 + 56))
  {
    v1 = objc_opt_self();
    v2 = sub_2588BD868();
    [v1 callEmergencyContact_];
  }
}

void sub_258813CCC(uint64_t a1)
{
  if (!qword_27F95EF70)
  {
    sub_258813DD0(255);
    sub_2588BC278();
    sub_258814418(&qword_27F95EFF8, sub_258813DD0, MEMORY[0x277CDF028]);
    sub_258814418(&qword_27F95E988, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27F95EF70);
    }
  }
}

void sub_258813DD0(uint64_t a1)
{
  if (!qword_27F95EF78)
  {
    sub_258813E34(255);
    sub_258814368();
    v1 = sub_2588BD348();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95EF78);
    }
  }
}

void sub_258813E34(uint64_t a1)
{
  if (!qword_27F95EF80)
  {
    sub_258813E94(255);
    v1 = sub_2588BC1E8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95EF80);
    }
  }
}

void sub_258813E94(uint64_t a1)
{
  if (!qword_27F95EF88)
  {
    sub_25881425C(255, &qword_27F95EF90, sub_258813F34);
    sub_258814318(&qword_27F95EFE0, &qword_27F95EF90, sub_258813F34);
    v1 = sub_2588BD408();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95EF88);
    }
  }
}

void sub_258813F34(uint64_t a1)
{
  if (!qword_27F95EF98)
  {
    sub_258813FA8(255);
    sub_258814098(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_27F95EF98);
    }
  }
}

void sub_258813FC8(uint64_t a1)
{
  if (!qword_27F95EFA8)
  {
    sub_258814040(255, &qword_27F95D998, &qword_27F95D9A0, MEMORY[0x277CE0AE0]);
    v1 = sub_2588BC1E8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95EFA8);
    }
  }
}

void sub_258814040(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_2587FC7CC(255, a3, a4);
    v5 = sub_2588BCA88();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_2588140B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_258814040(255, &qword_27F95ECD0, &qword_27F95ECD8, MEMORY[0x277CE0F78]);
    v4 = sub_2588BC1E8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_25881413C(uint64_t a1)
{
  if (!qword_27F95EFB8)
  {
    sub_2588141BC(255);
    sub_258814040(255, &qword_27F95D998, &qword_27F95D9A0, MEMORY[0x277CE0AE0]);
    v1 = sub_2588BC1E8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95EFB8);
    }
  }
}

void sub_2588141BC(uint64_t a1)
{
  if (!qword_27F95EFC0)
  {
    sub_25881425C(255, &qword_27F95EFC8, sub_2588142B0);
    sub_258814318(&qword_27F95EFD8, &qword_27F95EFC8, sub_2588142B0);
    v1 = sub_2588BD368();
    if (!v2)
    {
      atomic_store(v1, &qword_27F95EFC0);
    }
  }
}

void sub_25881425C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2588BD658();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2588142B0()
{
  if (!qword_27F95EFD0)
  {
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_27F95EFD0);
    }
  }
}

uint64_t sub_258814318(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_25881425C(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_258814368()
{
  result = qword_27F95EFE8;
  if (!qword_27F95EFE8)
  {
    sub_258813E34(255);
    sub_258814418(&qword_27F95EFF0, sub_258813E94, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F95EFE8);
  }

  return result;
}

uint64_t sub_258814418(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2588144EC(uint64_t a1, uint64_t a2)
{
  sub_25881425C(0, &qword_27F95EF90, sub_258813F34);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}