uint64_t sub_251AB7D18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a4;
  v55 = a2;
  v56 = a3;
  v5 = type metadata accessor for PBRawData(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v47 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v49 = &v42 - v9;
  v51 = type metadata accessor for PBPlainText.OneOf_Plaintext;
  v10 = MEMORY[0x277D83D88];
  sub_251AB9AB0(0, &qword_27F479500, type metadata accessor for PBPlainText.OneOf_Plaintext, MEMORY[0x277D83D88]);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v45 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v42 - v14;
  v16 = type metadata accessor for PBPlainText.OneOf_Plaintext(0);
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v42 - v21;
  sub_251AB9AB0(0, &qword_27F479560, type metadata accessor for PBRawData, v10);
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v52 = &v42 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v27 = &v42 - v26;
  v50 = v6;
  v28 = *(v6 + 56);
  v54 = v5;
  v29 = v5;
  v30 = v17;
  v48 = v28;
  v28(&v42 - v26, 1, 1, v29);
  v31 = OBJC_IVAR____TtCV19HealthRecordsDaemon11PBPlainTextP33_3ECAB67A0DFC3A57AF94D1182EC4571713_StorageClass__plaintext;
  swift_beginAccess();
  v46 = a1;
  v44 = v31;
  sub_251AB9C18(a1 + v31, v15, &qword_27F479500, v51);
  v43 = v30;
  LODWORD(v51) = (*(v30 + 48))(v15, 1, v16);
  if (v51 == 1)
  {
    sub_251AB9BA8(v15, &qword_27F479500, type metadata accessor for PBPlainText.OneOf_Plaintext);
    v32 = v16;
  }

  else
  {
    sub_251AB9A48(v15, v22, type metadata accessor for PBPlainText.OneOf_Plaintext);
    sub_251AB9A48(v22, v20, type metadata accessor for PBPlainText.OneOf_Plaintext);
    v32 = v16;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_251AB9BA8(v27, &qword_27F479560, type metadata accessor for PBRawData);
      v33 = v49;
      sub_251AB9A48(v20, v49, type metadata accessor for PBRawData);
      sub_251AB9A48(v33, v27, type metadata accessor for PBRawData);
      v34 = v54;
      v48(v27, 0, 1, v54);
      goto LABEL_7;
    }

    sub_251ABA428(v20, type metadata accessor for PBPlainText.OneOf_Plaintext);
  }

  v34 = v54;
LABEL_7:
  v35 = v52;
  sub_251AB991C(&qword_27F478F68, type metadata accessor for PBRawData, &unk_251C74DD4);
  v36 = v53;
  sub_251C70564();
  if (v36)
  {
    return sub_251AB9BA8(v27, &qword_27F479560, type metadata accessor for PBRawData);
  }

  sub_251AB9C18(v27, v35, &qword_27F479560, type metadata accessor for PBRawData);
  if ((*(v50 + 48))(v35, 1, v34) == 1)
  {
    sub_251AB9BA8(v27, &qword_27F479560, type metadata accessor for PBRawData);
    return sub_251AB9BA8(v35, &qword_27F479560, type metadata accessor for PBRawData);
  }

  else
  {
    v38 = v47;
    sub_251AB9A48(v35, v47, type metadata accessor for PBRawData);
    if (v51 != 1)
    {
      sub_251C70454();
    }

    sub_251AB9BA8(v27, &qword_27F479560, type metadata accessor for PBRawData);
    v39 = v45;
    sub_251AB9A48(v38, v45, type metadata accessor for PBRawData);
    swift_storeEnumTagMultiPayload();
    (*(v43 + 56))(v39, 0, 1, v32);
    v40 = v46;
    v41 = v44;
    swift_beginAccess();
    sub_251AB9B14(v39, v40 + v41);
    return swift_endAccess();
  }
}

uint64_t sub_251AB83BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = type metadata accessor for PBPlainText(0);
  result = sub_251AB8428(*(v3 + *(v8 + 20)), a1, a2, a3);
  if (!v4)
  {
    return sub_251C70394();
  }

  return result;
}

uint64_t sub_251AB8428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_251AB9AB0(0, &qword_27F479500, type metadata accessor for PBPlainText.OneOf_Plaintext, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v23 - v10;
  swift_beginAccess();
  if (!*(a1 + 16) || (v12 = *(a1 + 24), v23[10] = *(a1 + 16), v24 = v12, sub_251AB99F4(), result = sub_251C70604(), !v4))
  {
    swift_beginAccess();
    v14 = *(a1 + 40);
    v15 = HIBYTE(v14) & 0xF;
    if ((v14 & 0x2000000000000000) == 0)
    {
      v15 = *(a1 + 32) & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 || (, sub_251C70674(), result = , !v4))
    {
      swift_beginAccess();
      v16 = *(a1 + 56);
      v17 = HIBYTE(v16) & 0xF;
      if ((v16 & 0x2000000000000000) == 0)
      {
        v17 = *(a1 + 48) & 0xFFFFFFFFFFFFLL;
      }

      if (!v17 || (, sub_251C70674(), result = , !v4))
      {
        swift_beginAccess();
        v18 = *(a1 + 72);
        v19 = HIBYTE(v18) & 0xF;
        if ((v18 & 0x2000000000000000) == 0)
        {
          v19 = *(a1 + 64) & 0xFFFFFFFFFFFFLL;
        }

        if (!v19 || (, sub_251C70674(), result = , !v4))
        {
          v20 = OBJC_IVAR____TtCV19HealthRecordsDaemon11PBPlainTextP33_3ECAB67A0DFC3A57AF94D1182EC4571713_StorageClass__plaintext;
          swift_beginAccess();
          sub_251AB9C18(a1 + v20, v11, &qword_27F479500, type metadata accessor for PBPlainText.OneOf_Plaintext);
          v21 = type metadata accessor for PBPlainText.OneOf_Plaintext(0);
          result = (*(*(v21 - 8) + 48))(v11, 1, v21);
          if (result != 1)
          {
            EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
            if (EnumCaseMultiPayload)
            {
              if (EnumCaseMultiPayload == 1)
              {
                sub_251AB89FC(a1, a2, a3, a4);
              }

              else
              {
                sub_251AB8C84(a1, a2, a3, a4);
              }
            }

            else
            {
              sub_251AB8778(a1, a2, a3, a4);
            }

            return sub_251ABA428(v11, type metadata accessor for PBPlainText.OneOf_Plaintext);
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_251AB8778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[5] = a4;
  sub_251AB9AB0(0, &qword_27F479500, type metadata accessor for PBPlainText.OneOf_Plaintext, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for PBReferences(0);
  MEMORY[0x28223BE20](v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtCV19HealthRecordsDaemon11PBPlainTextP33_3ECAB67A0DFC3A57AF94D1182EC4571713_StorageClass__plaintext;
  swift_beginAccess();
  sub_251AB9C18(a1 + v11, v7, &qword_27F479500, type metadata accessor for PBPlainText.OneOf_Plaintext);
  v12 = type metadata accessor for PBPlainText.OneOf_Plaintext(0);
  if ((*(*(v12 - 8) + 48))(v7, 1, v12) == 1)
  {
    sub_251AB9BA8(v7, &qword_27F479500, type metadata accessor for PBPlainText.OneOf_Plaintext);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_251AB9A48(v7, v10, type metadata accessor for PBReferences);
    sub_251AB991C(&qword_27F478F08, type metadata accessor for PBReferences, &unk_251C7499C);
    sub_251C706A4();
    return sub_251ABA428(v10, type metadata accessor for PBReferences);
  }

  result = sub_251ABA428(v7, type metadata accessor for PBPlainText.OneOf_Plaintext);
  __break(1u);
  return result;
}

uint64_t sub_251AB89FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[5] = a4;
  sub_251AB9AB0(0, &qword_27F479500, type metadata accessor for PBPlainText.OneOf_Plaintext, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for PBTypedData(0);
  MEMORY[0x28223BE20](v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtCV19HealthRecordsDaemon11PBPlainTextP33_3ECAB67A0DFC3A57AF94D1182EC4571713_StorageClass__plaintext;
  swift_beginAccess();
  sub_251AB9C18(a1 + v11, v7, &qword_27F479500, type metadata accessor for PBPlainText.OneOf_Plaintext);
  v12 = type metadata accessor for PBPlainText.OneOf_Plaintext(0);
  if ((*(*(v12 - 8) + 48))(v7, 1, v12) == 1)
  {
    sub_251AB9BA8(v7, &qword_27F479500, type metadata accessor for PBPlainText.OneOf_Plaintext);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_251AB9A48(v7, v10, type metadata accessor for PBTypedData);
    sub_251AB991C(&qword_27F478F48, type metadata accessor for PBTypedData, &unk_251C74C6C);
    sub_251C706A4();
    return sub_251ABA428(v10, type metadata accessor for PBTypedData);
  }

  result = sub_251ABA428(v7, type metadata accessor for PBPlainText.OneOf_Plaintext);
  __break(1u);
  return result;
}

uint64_t sub_251AB8C84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[5] = a4;
  sub_251AB9AB0(0, &qword_27F479500, type metadata accessor for PBPlainText.OneOf_Plaintext, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for PBRawData(0);
  MEMORY[0x28223BE20](v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtCV19HealthRecordsDaemon11PBPlainTextP33_3ECAB67A0DFC3A57AF94D1182EC4571713_StorageClass__plaintext;
  swift_beginAccess();
  sub_251AB9C18(a1 + v11, v7, &qword_27F479500, type metadata accessor for PBPlainText.OneOf_Plaintext);
  v12 = type metadata accessor for PBPlainText.OneOf_Plaintext(0);
  if ((*(*(v12 - 8) + 48))(v7, 1, v12) == 1)
  {
    sub_251AB9BA8(v7, &qword_27F479500, type metadata accessor for PBPlainText.OneOf_Plaintext);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_251AB9A48(v7, v10, type metadata accessor for PBRawData);
    sub_251AB991C(&qword_27F478F68, type metadata accessor for PBRawData, &unk_251C74DD4);
    sub_251C706A4();
    return sub_251ABA428(v10, type metadata accessor for PBRawData);
  }

  result = sub_251ABA428(v7, type metadata accessor for PBPlainText.OneOf_Plaintext);
  __break(1u);
  return result;
}

BOOL sub_251AB8F0C(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for PBPlainText.OneOf_Plaintext(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AB9D80(0);
  v9 = v8;
  MEMORY[0x28223BE20](v8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AB9AB0(0, &qword_27F479500, type metadata accessor for PBPlainText.OneOf_Plaintext, MEMORY[0x277D83D88]);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v37 - v16;
  swift_beginAccess();
  v18 = a1[2];
  swift_beginAccess();
  v19 = *(a2 + 16);
  if (*(a2 + 24) == 1)
  {
    if (v19 > 1)
    {
      if (v19 == 2)
      {
        if (v18 != 2)
        {
          return 0;
        }
      }

      else if (v18 != 3)
      {
        return 0;
      }
    }

    else if (v19)
    {
      if (v18 != 1)
      {
        return 0;
      }
    }

    else if (v18)
    {
      return 0;
    }
  }

  else if (v18 != v19)
  {
    return 0;
  }

  v39 = v15;
  swift_beginAccess();
  v20 = a1[4];
  v21 = a1[5];
  swift_beginAccess();
  if ((v20 != *(a2 + 32) || v21 != *(a2 + 40)) && (sub_251C719D4() & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  v22 = a1[6];
  v23 = a1[7];
  swift_beginAccess();
  if ((v22 != *(a2 + 48) || v23 != *(a2 + 56)) && (sub_251C719D4() & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  v24 = a1[8];
  v25 = a1[9];
  swift_beginAccess();
  if ((v24 != *(a2 + 64) || v25 != *(a2 + 72)) && (sub_251C719D4() & 1) == 0)
  {
    return 0;
  }

  v38 = v7;
  v26 = v5;
  v27 = OBJC_IVAR____TtCV19HealthRecordsDaemon11PBPlainTextP33_3ECAB67A0DFC3A57AF94D1182EC4571713_StorageClass__plaintext;
  swift_beginAccess();
  v28 = a1 + v27;
  v29 = v26;
  sub_251AB9C18(v28, v17, &qword_27F479500, type metadata accessor for PBPlainText.OneOf_Plaintext);
  v30 = OBJC_IVAR____TtCV19HealthRecordsDaemon11PBPlainTextP33_3ECAB67A0DFC3A57AF94D1182EC4571713_StorageClass__plaintext;
  swift_beginAccess();
  v31 = *(v9 + 48);
  sub_251AB9C18(v17, v11, &qword_27F479500, type metadata accessor for PBPlainText.OneOf_Plaintext);
  sub_251AB9C18(a2 + v30, &v11[v31], &qword_27F479500, type metadata accessor for PBPlainText.OneOf_Plaintext);
  v32 = *(v29 + 48);
  if (v32(v11, 1, v4) != 1)
  {
    v33 = v39;
    sub_251AB9C18(v11, v39, &qword_27F479500, type metadata accessor for PBPlainText.OneOf_Plaintext);
    if (v32(&v11[v31], 1, v4) == 1)
    {
      sub_251AB9BA8(v17, &qword_27F479500, type metadata accessor for PBPlainText.OneOf_Plaintext);
      sub_251ABA428(v33, type metadata accessor for PBPlainText.OneOf_Plaintext);
      goto LABEL_28;
    }

    v35 = v38;
    sub_251AB9A48(&v11[v31], v38, type metadata accessor for PBPlainText.OneOf_Plaintext);
    v36 = sub_251AB9E14(v33, v35);
    sub_251ABA428(v35, type metadata accessor for PBPlainText.OneOf_Plaintext);
    sub_251AB9BA8(v17, &qword_27F479500, type metadata accessor for PBPlainText.OneOf_Plaintext);
    sub_251ABA428(v33, type metadata accessor for PBPlainText.OneOf_Plaintext);
    sub_251AB9BA8(v11, &qword_27F479500, type metadata accessor for PBPlainText.OneOf_Plaintext);
    return (v36 & 1) != 0;
  }

  sub_251AB9BA8(v17, &qword_27F479500, type metadata accessor for PBPlainText.OneOf_Plaintext);
  if (v32(&v11[v31], 1, v4) != 1)
  {
LABEL_28:
    sub_251ABA428(v11, sub_251AB9D80);
    return 0;
  }

  sub_251AB9BA8(v11, &qword_27F479500, type metadata accessor for PBPlainText.OneOf_Plaintext);
  return 1;
}

uint64_t sub_251AB94C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_251C703A4();
  v4 = *(a1 + 20);
  if (qword_27F478468 != -1)
  {
    swift_once();
  }

  *(a2 + v4) = qword_27F4794E0;
}

uint64_t sub_251AB955C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_251C703B4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_251AB95C4(uint64_t a1)
{
  v3 = sub_251C703B4();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_251AB967C(uint64_t a1, uint64_t a2)
{
  v4 = sub_251AB991C(&qword_27F479548, type metadata accessor for PBPlainText, &unk_251C75590);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251AB96F8@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F478460 != -1)
  {
    swift_once();
  }

  v2 = sub_251C706D4();
  v3 = __swift_project_value_buffer(v2, qword_27F4A1B50);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_251AB97A0(uint64_t a1)
{
  v2 = sub_251AB991C(&qword_27F479530, type metadata accessor for PBPlainText, &unk_251C755C8);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251AB980C(uint64_t a1, uint64_t a2)
{
  sub_251AB991C(&qword_27F479530, type metadata accessor for PBPlainText, &unk_251C755C8);

  return sub_251C705C4();
}

uint64_t sub_251AB991C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_251AB99F4()
{
  result = qword_27F479550;
  if (!qword_27F479550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F479550);
  }

  return result;
}

uint64_t sub_251AB9A48(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_251AB9AB0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_251AB9B14(uint64_t a1, uint64_t a2)
{
  sub_251AB9AB0(0, &qword_27F479500, type metadata accessor for PBPlainText.OneOf_Plaintext, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_251AB9BA8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_251AB9AB0(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_251AB9C18(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_251AB9AB0(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_251AB9C98(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for PBPlainText(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  if (v5 != v6)
  {

    v7 = sub_251AB8F0C(v5, v6);

    if (!v7)
    {
      return 0;
    }
  }

  sub_251C703B4();
  sub_251AB991C(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_251C70ED4() & 1;
}

void sub_251AB9D80(uint64_t a1)
{
  if (!qword_27F479568)
  {
    sub_251AB9AB0(255, &qword_27F479500, type metadata accessor for PBPlainText.OneOf_Plaintext, MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F479568);
    }
  }
}

uint64_t sub_251AB9E14(uint64_t a1, uint64_t a2)
{
  v39 = a2;
  v37 = type metadata accessor for PBRawData(0);
  MEMORY[0x28223BE20](v37);
  v38 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for PBTypedData(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PBReferences(0);
  MEMORY[0x28223BE20](v7);
  v9 = (&v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for PBPlainText.OneOf_Plaintext(0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v36 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = (&v36 - v17);
  sub_251ABA360(0);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v22 = &v36 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(v20 + 56);
  sub_251ABA3C4(a1, v22);
  sub_251ABA3C4(v39, &v22[v23]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_251ABA3C4(v22, v18);
    if (swift_getEnumCaseMultiPayload())
    {
      v26 = type metadata accessor for PBReferences;
      v27 = v18;
      goto LABEL_13;
    }

    sub_251AB9A48(&v22[v23], v9, type metadata accessor for PBReferences);
    if (sub_251A9C724(*v18, *v9))
    {
      sub_251C703B4();
      sub_251AB991C(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      if (sub_251C70ED4())
      {
        v30 = type metadata accessor for PBReferences;
        sub_251ABA428(v9, type metadata accessor for PBReferences);
        v31 = v18;
        goto LABEL_17;
      }
    }

    v33 = type metadata accessor for PBReferences;
    sub_251ABA428(v9, type metadata accessor for PBReferences);
    v34 = v18;
LABEL_20:
    sub_251ABA428(v34, v33);
    v25 = 0;
    goto LABEL_21;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_251ABA3C4(v22, v13);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      v26 = type metadata accessor for PBRawData;
      v27 = v13;
      goto LABEL_13;
    }

    v28 = &v22[v23];
    v29 = v38;
    sub_251AB9A48(v28, v38, type metadata accessor for PBRawData);
    if (sub_251A9D1F0(*v13, *(v13 + 1), *v29, *(v29 + 8)))
    {
      sub_251C703B4();
      sub_251AB991C(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      if (sub_251C70ED4())
      {
        v30 = type metadata accessor for PBRawData;
        sub_251ABA428(v29, type metadata accessor for PBRawData);
        v31 = v13;
LABEL_17:
        sub_251ABA428(v31, v30);
        v25 = 1;
        goto LABEL_21;
      }
    }

    v33 = type metadata accessor for PBRawData;
    sub_251ABA428(v29, type metadata accessor for PBRawData);
    v34 = v13;
    goto LABEL_20;
  }

  sub_251ABA3C4(v22, v16);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_251AB9A48(&v22[v23], v6, type metadata accessor for PBTypedData);
    v25 = sub_251A9D474(v16, v6);
    sub_251ABA428(v6, type metadata accessor for PBTypedData);
    sub_251ABA428(v16, type metadata accessor for PBTypedData);
LABEL_21:
    v32 = type metadata accessor for PBPlainText.OneOf_Plaintext;
    goto LABEL_22;
  }

  v26 = type metadata accessor for PBTypedData;
  v27 = v16;
LABEL_13:
  sub_251ABA428(v27, v26);
  v25 = 0;
  v32 = sub_251ABA360;
LABEL_22:
  sub_251ABA428(v22, v32);
  return v25 & 1;
}

void sub_251ABA360(uint64_t a1)
{
  if (!qword_27F479570)
  {
    type metadata accessor for PBPlainText.OneOf_Plaintext(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F479570);
    }
  }
}

uint64_t sub_251ABA3C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PBPlainText.OneOf_Plaintext(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_251ABA428(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for ClinicalSharingCategoryNodeInfo(uint64_t a1)
{
  result = qword_27F479578;
  if (!qword_27F479578)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_251ABA4FC(uint64_t a1)
{
  sub_251ABA5A0(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for PBReference(319);
    if (v2 <= 0x3F)
    {
      sub_251ABA5F8(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_251ABA5A0(uint64_t a1)
{
  if (!qword_27F479588)
  {
    type metadata accessor for ClinicalSharingDataNodeInfo(255);
    v1 = sub_251C711A4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F479588);
    }
  }
}

void sub_251ABA5F8(uint64_t a1)
{
  if (!qword_27F479590)
  {
    sub_251C70014();
    sub_251ABA664();
    v1 = sub_251C70E74();
    if (!v2)
    {
      atomic_store(v1, &qword_27F479590);
    }
  }
}

unint64_t sub_251ABA664()
{
  result = qword_27F479598;
  if (!qword_27F479598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F479598);
  }

  return result;
}

uint64_t sub_251ABA6B8@<X0>(uint64_t a1@<X8>)
{
  v285 = a1;
  v249 = type metadata accessor for PBActiveMedications(0);
  MEMORY[0x28223BE20](v249);
  v280 = (&v231 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v248 = type metadata accessor for PBMedicationTrackingSchedules(0);
  MEMORY[0x28223BE20](v248);
  v279 = (&v231 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v247 = type metadata accessor for PBMedicationTrackingDoseEvents(0);
  MEMORY[0x28223BE20](v247);
  v278 = (&v231 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v282 = type metadata accessor for PBMedicationTracking(0);
  v233 = *(v282 - 8);
  MEMORY[0x28223BE20](v282);
  v284 = &v231 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v246 = type metadata accessor for PBMedicationTrackings(0);
  MEMORY[0x28223BE20](v246);
  v281 = &v231 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v245 = type metadata accessor for PBHistogramSeries(0);
  MEMORY[0x28223BE20](v245);
  v277 = (&v231 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v243 = type metadata accessor for PBSleepSeries(0);
  MEMORY[0x28223BE20](v243);
  v273 = (&v231 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v242 = type metadata accessor for PBSleepSummary(0);
  MEMORY[0x28223BE20](v242);
  v272 = &v231 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v244 = type metadata accessor for PBPatientMeta(0);
  MEMORY[0x28223BE20](v244);
  v275 = &v231 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v241 = type metadata accessor for PBActivitySummarySeries(0);
  MEMORY[0x28223BE20](v241);
  v271 = &v231 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251ABCCD4(0);
  MEMORY[0x28223BE20](v11 - 8);
  v276 = &v231 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v240 = type metadata accessor for PBECGMeasurement(0);
  MEMORY[0x28223BE20](v240);
  v274 = &v231 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v239 = type metadata accessor for PBCycleTracking(0);
  MEMORY[0x28223BE20](v239);
  v270 = &v231 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v238 = type metadata accessor for PBECGs(0);
  MEMORY[0x28223BE20](v238);
  v268 = &v231 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v237 = type metadata accessor for PBAllClinicalRecords(0);
  MEMORY[0x28223BE20](v237);
  v269 = (&v231 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v236 = type metadata accessor for PBCharacteristics(0);
  MEMORY[0x28223BE20](v236);
  v267 = (&v231 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v235 = type metadata accessor for PBWorkout(0);
  MEMORY[0x28223BE20](v235);
  v266 = &v231 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v234 = type metadata accessor for PBCategorySeries(0);
  MEMORY[0x28223BE20](v234);
  v265 = &v231 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v250 = type metadata accessor for PBTimeSeries(0);
  MEMORY[0x28223BE20](v250);
  v264 = &v231 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251ABCD08(0);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v263 = &v231 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v262 = &v231 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v261 = &v231 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v260 = &v231 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v259 = &v231 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v257 = &v231 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v258 = &v231 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v256 = &v231 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v255 = &v231 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v254 = &v231 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v253 = &v231 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v252 = &v231 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v48 = &v231 - v47;
  v49 = MEMORY[0x28223BE20](v46);
  v251 = &v231 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v53 = &v231 - v52;
  v54 = MEMORY[0x28223BE20](v51);
  v56 = &v231 - v55;
  v57 = MEMORY[0x28223BE20](v54);
  v59 = &v231 - v58;
  MEMORY[0x28223BE20](v57);
  v61 = &v231 - v60;
  v62 = type metadata accessor for PBTypedData.OneOf_Raw(0);
  v63 = *(v62 - 8);
  v64 = MEMORY[0x28223BE20](v62);
  v66 = &v231 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v64);
  v68 = &v231 - v67;
  v69 = *(type metadata accessor for PBTypedData(0) + 20);
  sub_251ABCD3C(v286 + v69, v61, sub_251ABCD08);
  v283 = *(v63 + 48);
  if (v283(v61, 1, v62) == 1)
  {
    sub_251AC10E4(v61, sub_251ABCD08);
    v70 = sub_251C70014();
    return (*(*(v70 - 8) + 56))(v285, 1, 1, v70);
  }

  sub_251ABCDA4(v61, v68, type metadata accessor for PBTypedData.OneOf_Raw);
  v232 = v68;
  sub_251ABCD3C(v68, v66, type metadata accessor for PBTypedData.OneOf_Raw);
  v72 = v62;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v74 = v282;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      sub_251ABCD3C(v286 + v69, v56, sub_251ABCD08);
      v129 = v283(v56, 1, v62);
      v130 = sub_251ABCD08;
      if (v129 == 1 || (v131 = swift_getEnumCaseMultiPayload(), v130 = type metadata accessor for PBTypedData.OneOf_Raw, v131 != 1))
      {
        sub_251AC10E4(v56, v130);
        v132 = v265;
        *v265 = 0;
        *(v132 + 1) = 0xE000000000000000;
        *(v132 + 2) = MEMORY[0x277D84F90];
        v153 = v234;
        sub_251C703A4();
        v154 = *(v153 + 28);
        v155 = type metadata accessor for PBDateRange(0);
        (*(*(v155 - 8) + 56))(&v132[v154], 1, 1, v155);
      }

      else
      {
        v132 = v265;
        sub_251ABCDA4(v56, v265, type metadata accessor for PBCategorySeries);
      }

      sub_251ABCFB8(v132, v285);
      sub_251AC10E4(v132, type metadata accessor for PBCategorySeries);
      v156 = v232;
      goto LABEL_121;
    case 2:
      sub_251ABCD3C(v286 + v69, v53, sub_251ABCD08);
      v111 = v283(v53, 1, v62);
      v112 = sub_251ABCD08;
      if (v111 == 1)
      {
        v113 = v285;
        v89 = v232;
        v114 = v266;
      }

      else
      {
        v178 = swift_getEnumCaseMultiPayload();
        v112 = type metadata accessor for PBTypedData.OneOf_Raw;
        v113 = v285;
        v89 = v232;
        v114 = v266;
        if (v178 == 2)
        {
          sub_251ABCDA4(v53, v266, type metadata accessor for PBWorkout);
          goto LABEL_68;
        }
      }

      sub_251AC10E4(v53, v112);
      *v114 = 0;
      *(v114 + 8) = 0;
      *(v114 + 16) = 1;
      *(v114 + 28) = 0;
      *(v114 + 20) = 0;
      v179 = v235;
      sub_251C703A4();
      v180 = *(v179 + 48);
      v181 = type metadata accessor for PBDateRange(0);
      (*(*(v181 - 8) + 56))(v114 + v180, 1, 1, v181);
LABEL_68:
      sub_251ABD350(v114, v113);
      v182 = type metadata accessor for PBWorkout;
      goto LABEL_110;
    case 3:
      v119 = v251;
      sub_251ABCD3C(v286 + v69, v251, sub_251ABCD08);
      v120 = v283(v119, 1, v72);
      v121 = sub_251ABCD08;
      if (v120 == 1)
      {
        v83 = v285;
        v122 = v232;
      }

      else
      {
        v184 = swift_getEnumCaseMultiPayload();
        v121 = type metadata accessor for PBTypedData.OneOf_Raw;
        v83 = v285;
        v122 = v232;
        if (v184 == 3)
        {
          sub_251AC10E4(v232, type metadata accessor for PBTypedData.OneOf_Raw);
          v185 = v119;
          v84 = v267;
          sub_251ABCDA4(v185, v267, type metadata accessor for PBCharacteristics);
          v158 = type metadata accessor for PBCharacteristics;
          goto LABEL_103;
        }
      }

      sub_251AC10E4(v119, v121);
      v186 = v267;
      *v267 = 0;
      v186[1] = 0xE000000000000000;
      v186[2] = 0;
      v186[3] = 0xE000000000000000;
      v186[4] = 0;
      v186[5] = 0xE000000000000000;
      sub_251C703A4();
      sub_251AC10E4(v186, type metadata accessor for PBCharacteristics);
      v187 = type metadata accessor for PBTypedData.OneOf_Raw;
      goto LABEL_100;
    case 4:
      v95 = v286;
      sub_251ABCD3C(v286 + v69, v48, sub_251ABCD08);
      v96 = v283(v48, 1, v62);
      v97 = sub_251ABCD08;
      if (v96 == 1)
      {
        v98 = v285;
        v99 = v232;
        v100 = v269;
      }

      else
      {
        v163 = swift_getEnumCaseMultiPayload();
        v97 = type metadata accessor for PBTypedData.OneOf_Raw;
        v98 = v285;
        v99 = v232;
        v100 = v269;
        if (v163 == 4)
        {
          v164 = sub_251ABCDA4(v48, v269, type metadata accessor for PBAllClinicalRecords);
          goto LABEL_55;
        }
      }

      sub_251AC10E4(v48, v97);
      *v100 = MEMORY[0x277D84F90];
      v164 = sub_251C703A4();
LABEL_55:
      MEMORY[0x28223BE20](v164);
      *(&v231 - 2) = v95;
      v166 = sub_251C00B3C(sub_251AC0E80, (&v231 - 4), v165);
      sub_251AC00D0(v166, v98);

      sub_251AC10E4(v99, type metadata accessor for PBTypedData.OneOf_Raw);
      v167 = type metadata accessor for PBAllClinicalRecords;
      v156 = v100;
      goto LABEL_122;
    case 5:
      v133 = v252;
      sub_251ABCD3C(v286 + v69, v252, sub_251ABCD08);
      v134 = v283(v133, 1, v62);
      v135 = sub_251ABCD08;
      if (v134 == 1)
      {
        v136 = v285;
        v89 = v232;
        v114 = v268;
      }

      else
      {
        v196 = swift_getEnumCaseMultiPayload();
        v135 = type metadata accessor for PBTypedData.OneOf_Raw;
        v136 = v285;
        v89 = v232;
        v114 = v268;
        if (v196 == 5)
        {
          sub_251ABCDA4(v133, v268, type metadata accessor for PBECGs);
          goto LABEL_83;
        }
      }

      sub_251AC10E4(v133, v135);
      *v114 = MEMORY[0x277D84F90];
      sub_251C703A4();
LABEL_83:
      sub_251ABD7C8(v114, type metadata accessor for PBECGMeasurement, type metadata accessor for PBECGMeasurement, type metadata accessor for PBECGMeasurement, v136);
      v182 = type metadata accessor for PBECGs;
      goto LABEL_110;
    case 6:
      v141 = v253;
      sub_251ABCD3C(v286 + v69, v253, sub_251ABCD08);
      v142 = v283(v141, 1, v72);
      v143 = sub_251ABCD08;
      if (v142 == 1)
      {
        v144 = v285;
        v145 = v270;
      }

      else
      {
        v210 = swift_getEnumCaseMultiPayload();
        v143 = type metadata accessor for PBTypedData.OneOf_Raw;
        v144 = v285;
        v145 = v270;
        if (v210 == 6)
        {
          sub_251AC10E4(v232, type metadata accessor for PBTypedData.OneOf_Raw);
          sub_251ABCDA4(v141, v145, type metadata accessor for PBCycleTracking);
          goto LABEL_97;
        }
      }

      sub_251AC10E4(v141, v143);
      *v145 = MEMORY[0x277D84F90];
      *(v145 + 1) = 0;
      *(v145 + 2) = 0;
      *(v145 + 3) = 0xE000000000000000;
      v211 = v239;
      sub_251C703A4();
      sub_251AC10E4(v232, type metadata accessor for PBTypedData.OneOf_Raw);
      v212 = *(v211 + 36);
      v213 = type metadata accessor for PBCycleTracking.Range(0);
      v214 = *(*(v213 - 8) + 56);
      v214(&v145[v212], 1, 1, v213);
      v214(&v145[*(v211 + 40)], 1, 1, v213);
LABEL_97:
      sub_251AC10E4(v145, type metadata accessor for PBCycleTracking);
      v215 = sub_251C70014();
      (*(*(v215 - 8) + 56))(v144, 1, 1, v215);
      goto LABEL_105;
    case 7:
      v123 = v254;
      sub_251ABCD3C(v286 + v69, v254, sub_251ABCD08);
      v124 = v283(v123, 1, v62);
      v125 = sub_251ABCD08;
      if (v124 == 1)
      {
        v126 = v285;
        v127 = v276;
        v128 = v274;
      }

      else
      {
        v188 = swift_getEnumCaseMultiPayload();
        v125 = type metadata accessor for PBTypedData.OneOf_Raw;
        v127 = v276;
        v128 = v274;
        if (v188 == 7)
        {
          sub_251ABCDA4(v123, v274, type metadata accessor for PBECGMeasurement);
          v126 = v285;
          goto LABEL_114;
        }

        v126 = v285;
      }

      sub_251AC10E4(v123, v125);
      *v128 = 0;
      *(v128 + 8) = 0xE000000000000000;
      *(v128 + 16) = 0;
      *(v128 + 24) = 0;
      *(v128 + 32) = 0xE000000000000000;
      *(v128 + 40) = 0;
      *(v128 + 48) = 0xE000000000000000;
      *(v128 + 56) = 0;
      *(v128 + 64) = 0xE000000000000000;
      *(v128 + 72) = 0;
      *(v128 + 80) = 0xE000000000000000;
      v225 = MEMORY[0x277D84F90];
      *(v128 + 88) = MEMORY[0x277D84F90];
      *(v128 + 96) = v225;
      *(v128 + 104) = 0;
      *(v128 + 112) = 0;
      *(v128 + 120) = 1;
      sub_251C703A4();
LABEL_114:
      v78 = v232;
      if (qword_27F478930 != -1)
      {
        swift_once();
      }

      v226 = qword_27F4A2878;
      v227 = sub_251C70EE4();
      v228 = [v226 dateFromString_];

      if (v228)
      {
        sub_251C6FFE4();

        v229 = 0;
      }

      else
      {
        v229 = 1;
      }

      v230 = sub_251C70014();
      (*(*(v230 - 8) + 56))(v127, v229, 1, v230);
      sub_251ABCDA4(v127, v126, sub_251ABCCD4);
      v194 = type metadata accessor for PBECGMeasurement;
      v195 = v128;
      goto LABEL_120;
    case 8:
      v149 = v255;
      sub_251ABCD3C(v286 + v69, v255, sub_251ABCD08);
      v150 = v283(v149, 1, v62);
      v151 = sub_251ABCD08;
      if (v150 == 1)
      {
        v152 = v285;
        v89 = v232;
        v114 = v271;
      }

      else
      {
        v221 = swift_getEnumCaseMultiPayload();
        v151 = type metadata accessor for PBTypedData.OneOf_Raw;
        v152 = v285;
        v89 = v232;
        v114 = v271;
        if (v221 == 8)
        {
          sub_251ABCDA4(v149, v271, type metadata accessor for PBActivitySummarySeries);
          goto LABEL_109;
        }
      }

      sub_251AC10E4(v149, v151);
      *v114 = MEMORY[0x277D84F90];
      v222 = v241;
      sub_251C703A4();
      v223 = *(v222 + 24);
      v224 = type metadata accessor for PBDateRange(0);
      (*(*(v224 - 8) + 56))(v114 + v223, 1, 1, v224);
LABEL_109:
      sub_251ABD61C(v114, v152);
      v182 = type metadata accessor for PBActivitySummarySeries;
LABEL_110:
      v169 = v182;
      v170 = v114;
      goto LABEL_111;
    case 9:
      v105 = v256;
      sub_251ABCD3C(v286 + v69, v256, sub_251ABCD08);
      v106 = v283(v105, 1, v62);
      v107 = sub_251ABCD08;
      if (v106 == 1)
      {
        v108 = v285;
        v109 = v232;
        v110 = v275;
      }

      else
      {
        v171 = swift_getEnumCaseMultiPayload();
        v107 = type metadata accessor for PBTypedData.OneOf_Raw;
        v108 = v285;
        v109 = v232;
        v110 = v275;
        if (v171 == 9)
        {
          sub_251AC10E4(v232, type metadata accessor for PBTypedData.OneOf_Raw);
          sub_251ABCDA4(v105, v110, type metadata accessor for PBPatientMeta);
          goto LABEL_64;
        }
      }

      sub_251AC10E4(v105, v107);
      *v110 = 0;
      *(v110 + 8) = MEMORY[0x277D84F90];
      *(v110 + 16) = 0;
      *(v110 + 24) = 0xE000000000000000;
      *(v110 + 32) = 0;
      *(v110 + 40) = 0xE000000000000000;
      *(v110 + 48) = 0;
      *(v110 + 56) = 0xE000000000000000;
      v172 = v244;
      sub_251C703A4();
      sub_251AC10E4(v109, type metadata accessor for PBTypedData.OneOf_Raw);
      v173 = *(v172 + 40);
      v174 = type metadata accessor for PBPatientMeta.HeartRateMeds(0);
      (*(*(v174 - 8) + 56))(v110 + v173, 1, 1, v174);
      v175 = *(v172 + 44);
      v176 = type metadata accessor for PBPatientMeta.HumanName(0);
      (*(*(v176 - 8) + 56))(v110 + v175, 1, 1, v176);
LABEL_64:
      sub_251AC10E4(v110, type metadata accessor for PBPatientMeta);
      v177 = sub_251C70014();
      (*(*(v177 - 8) + 56))(v108, 1, 1, v177);
      goto LABEL_105;
    case 10:
      v146 = v258;
      sub_251ABCD3C(v286 + v69, v258, sub_251ABCD08);
      v147 = v283(v146, 1, v62);
      v148 = sub_251ABCD08;
      if (v147 == 1)
      {
        v83 = v285;
        v84 = v232;
        v122 = v272;
LABEL_101:
        sub_251AC10E4(v146, v148);
        *v122 = MEMORY[0x277D84F90];
        *(v122 + 2) = 0;
        sub_251C703A4();
        v159 = type metadata accessor for PBSleepSummary;
        goto LABEL_102;
      }

      v216 = swift_getEnumCaseMultiPayload();
      v148 = type metadata accessor for PBTypedData.OneOf_Raw;
      v83 = v285;
      v84 = v232;
      v122 = v272;
      if (v216 != 10)
      {
        goto LABEL_101;
      }

      sub_251AC10E4(v232, type metadata accessor for PBTypedData.OneOf_Raw);
      sub_251ABCDA4(v146, v122, type metadata accessor for PBSleepSummary);
      v187 = type metadata accessor for PBSleepSummary;
LABEL_100:
      v217 = v187;
      v218 = v122;
LABEL_104:
      sub_251AC10E4(v218, v217);
      v219 = sub_251C70014();
      (*(*(v219 - 8) + 56))(v83, 1, 1, v219);
LABEL_105:
      v220 = v66;
      return sub_251AC10E4(v220, type metadata accessor for PBTypedData.OneOf_Raw);
    case 11:
      v91 = v257;
      sub_251ABCD3C(v286 + v69, v257, sub_251ABCD08);
      v92 = v283(v91, 1, v62);
      v93 = sub_251ABCD08;
      if (v92 == 1)
      {
        v94 = v285;
        v89 = v232;
        v90 = v273;
      }

      else
      {
        v162 = swift_getEnumCaseMultiPayload();
        v93 = type metadata accessor for PBTypedData.OneOf_Raw;
        v94 = v285;
        v89 = v232;
        v90 = v273;
        if (v162 == 11)
        {
          sub_251ABCDA4(v91, v273, type metadata accessor for PBSleepSeries);
          goto LABEL_51;
        }
      }

      sub_251AC10E4(v91, v93);
      *v90 = MEMORY[0x277D84F90];
      sub_251C703A4();
LABEL_51:
      sub_251ABD7C8(v90, type metadata accessor for PBSleepSeries.Value, type metadata accessor for PBSleepSeries.Value, type metadata accessor for PBSleepSeries.Value, v94);
      v161 = type metadata accessor for PBSleepSeries;
      goto LABEL_60;
    case 12:
      v101 = v259;
      sub_251ABCD3C(v286 + v69, v259, sub_251ABCD08);
      v102 = v283(v101, 1, v62);
      v103 = sub_251ABCD08;
      if (v102 == 1)
      {
        v104 = v285;
        v89 = v232;
        v90 = v277;
      }

      else
      {
        v168 = swift_getEnumCaseMultiPayload();
        v103 = type metadata accessor for PBTypedData.OneOf_Raw;
        v104 = v285;
        v89 = v232;
        v90 = v277;
        if (v168 == 12)
        {
          sub_251ABCDA4(v101, v277, type metadata accessor for PBHistogramSeries);
          goto LABEL_59;
        }
      }

      sub_251AC10E4(v101, v103);
      *v90 = MEMORY[0x277D84F90];
      v90[1] = 0;
      v90[2] = 0xE000000000000000;
      sub_251C703A4();
LABEL_59:
      sub_251ABD7C8(v90, type metadata accessor for PBHistogramSeries.Value, type metadata accessor for PBHistogramSeries.Value, type metadata accessor for PBHistogramSeries.Value, v104);
      v161 = type metadata accessor for PBHistogramSeries;
      goto LABEL_60;
    case 13:
      v137 = v260;
      sub_251ABCD3C(v286 + v69, v260, sub_251ABCD08);
      v138 = v283(v137, 1, v72);
      v139 = sub_251ABCD08;
      if (v138 == 1)
      {
        v140 = v281;
      }

      else
      {
        v197 = swift_getEnumCaseMultiPayload();
        v139 = type metadata accessor for PBTypedData.OneOf_Raw;
        v140 = v281;
        if (v197 == 13)
        {
          sub_251ABCDA4(v137, v281, type metadata accessor for PBMedicationTrackings);
          goto LABEL_87;
        }
      }

      sub_251AC10E4(v137, v139);
      *v140 = MEMORY[0x277D84F90];
      sub_251C703A4();
LABEL_87:
      v198 = *v140;
      v199 = *(*v140 + 16);
      v200 = MEMORY[0x277D84F90];
      if (v199)
      {
        v287 = MEMORY[0x277D84F90];
        sub_251C0B6AC(0, v199, 0);
        v200 = v287;
        v201 = v198 + ((*(v233 + 80) + 32) & ~*(v233 + 80));
        v202 = *(v233 + 72);
        do
        {
          v203 = v284;
          sub_251ABCD3C(v201, v284, type metadata accessor for PBMedicationTracking);
          v204 = *(v203 + *(v74 + 20));
          swift_beginAccess();
          v206 = *(v204 + 208);
          v205 = *(v204 + 216);

          sub_251AC10E4(v203, type metadata accessor for PBMedicationTracking);
          v287 = v200;
          v208 = *(v200 + 16);
          v207 = *(v200 + 24);
          if (v208 >= v207 >> 1)
          {
            sub_251C0B6AC((v207 > 1), v208 + 1, 1);
            v200 = v287;
          }

          *(v200 + 16) = v208 + 1;
          v209 = v200 + 16 * v208;
          *(v209 + 32) = v206;
          *(v209 + 40) = v205;
          v201 += v202;
          --v199;
        }

        while (v199);
        v140 = v281;
      }

      sub_251ABDB10(v200, v285);

      sub_251AC10E4(v232, type metadata accessor for PBTypedData.OneOf_Raw);
      v167 = type metadata accessor for PBMedicationTrackings;
      v156 = v140;
      goto LABEL_122;
    case 14:
      v85 = v261;
      sub_251ABCD3C(v286 + v69, v261, sub_251ABCD08);
      v86 = v283(v85, 1, v62);
      v87 = sub_251ABCD08;
      if (v86 == 1)
      {
        v88 = v285;
        v89 = v232;
        v90 = v278;
      }

      else
      {
        v160 = swift_getEnumCaseMultiPayload();
        v87 = type metadata accessor for PBTypedData.OneOf_Raw;
        v88 = v285;
        v89 = v232;
        v90 = v278;
        if (v160 == 14)
        {
          sub_251ABCDA4(v85, v278, type metadata accessor for PBMedicationTrackingDoseEvents);
          goto LABEL_47;
        }
      }

      sub_251AC10E4(v85, v87);
      *v90 = MEMORY[0x277D84F90];
      sub_251C703A4();
LABEL_47:
      sub_251ABD964(v90, v88);
      v161 = type metadata accessor for PBMedicationTrackingDoseEvents;
LABEL_60:
      v169 = v161;
      v170 = v90;
LABEL_111:
      sub_251AC10E4(v170, v169);
      v156 = v89;
      goto LABEL_121;
    case 15:
      v115 = v286 + v69;
      v116 = v262;
      sub_251ABCD3C(v115, v262, sub_251ABCD08);
      v117 = v283(v116, 1, v62);
      v118 = sub_251ABCD08;
      if (v117 == 1)
      {
        v83 = v285;
        v84 = v232;
      }

      else
      {
        v183 = swift_getEnumCaseMultiPayload();
        v118 = type metadata accessor for PBTypedData.OneOf_Raw;
        v83 = v285;
        v84 = v232;
        if (v183 == 15)
        {
          sub_251AC10E4(v232, type metadata accessor for PBTypedData.OneOf_Raw);
          v84 = v279;
          sub_251ABCDA4(v116, v279, type metadata accessor for PBMedicationTrackingSchedules);
          v158 = type metadata accessor for PBMedicationTrackingSchedules;
          goto LABEL_103;
        }
      }

      sub_251AC10E4(v116, v118);
      v122 = v279;
      *v279 = MEMORY[0x277D84F90];
      sub_251C703A4();
      v159 = type metadata accessor for PBMedicationTrackingSchedules;
      goto LABEL_102;
    case 16:
      v79 = v286 + v69;
      v80 = v263;
      sub_251ABCD3C(v79, v263, sub_251ABCD08);
      v81 = v283(v80, 1, v62);
      v82 = sub_251ABCD08;
      if (v81 == 1)
      {
        v83 = v285;
        v84 = v232;
      }

      else
      {
        v157 = swift_getEnumCaseMultiPayload();
        v82 = type metadata accessor for PBTypedData.OneOf_Raw;
        v83 = v285;
        v84 = v232;
        if (v157 == 16)
        {
          sub_251AC10E4(v232, type metadata accessor for PBTypedData.OneOf_Raw);
          v84 = v280;
          sub_251ABCDA4(v80, v280, type metadata accessor for PBActiveMedications);
          v158 = type metadata accessor for PBActiveMedications;
          goto LABEL_103;
        }
      }

      sub_251AC10E4(v80, v82);
      v122 = v280;
      *v280 = MEMORY[0x277D84F90];
      sub_251C703A4();
      v159 = type metadata accessor for PBActiveMedications;
LABEL_102:
      sub_251AC10E4(v122, v159);
      v158 = type metadata accessor for PBTypedData.OneOf_Raw;
LABEL_103:
      v217 = v158;
      v218 = v84;
      goto LABEL_104;
    default:
      sub_251ABCD3C(v286 + v69, v59, sub_251ABCD08);
      v75 = v283(v59, 1, v62);
      v76 = sub_251ABCD08;
      if (v75 == 1)
      {
        v77 = v285;
        v78 = v232;
LABEL_78:
        sub_251AC10E4(v59, v76);
        v190 = v264;
        *v264 = 0;
        *(v190 + 1) = 0xE000000000000000;
        *(v190 + 2) = 0;
        *(v190 + 3) = 0xE000000000000000;
        *(v190 + 4) = MEMORY[0x277D84F90];
        v191 = v250;
        sub_251C703A4();
        v192 = *(v191 + 32);
        v193 = type metadata accessor for PBDateRange(0);
        (*(*(v193 - 8) + 56))(&v190[v192], 1, 1, v193);
        goto LABEL_79;
      }

      v189 = swift_getEnumCaseMultiPayload();
      v76 = type metadata accessor for PBTypedData.OneOf_Raw;
      v77 = v285;
      v78 = v232;
      if (v189)
      {
        goto LABEL_78;
      }

      v190 = v264;
      sub_251ABCDA4(v59, v264, type metadata accessor for PBTimeSeries);
LABEL_79:
      sub_251ABCE0C(v190, v77);
      v194 = type metadata accessor for PBTimeSeries;
      v195 = v190;
LABEL_120:
      sub_251AC10E4(v195, v194);
      v156 = v78;
LABEL_121:
      v167 = type metadata accessor for PBTypedData.OneOf_Raw;
LABEL_122:
      sub_251AC10E4(v156, v167);
      v220 = v66;
      return sub_251AC10E4(v220, type metadata accessor for PBTypedData.OneOf_Raw);
  }
}

uint64_t sub_251ABCD3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_251ABCDA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_251ABCE0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PBTimeSeries.Value(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  v9 = *(v8 + 16);
  v10 = MEMORY[0x277D84F90];
  if (v9)
  {
    v20 = MEMORY[0x277D84F90];
    sub_251C0B6AC(0, v9, 0);
    v10 = v20;
    v11 = v8 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v12 = *(v5 + 72);
    do
    {
      sub_251ABCD3C(v11, v7, type metadata accessor for PBTimeSeries.Value);
      v14 = *(v7 + 3);
      v13 = *(v7 + 4);

      sub_251AC10E4(v7, type metadata accessor for PBTimeSeries.Value);
      v20 = v10;
      v16 = *(v10 + 16);
      v15 = *(v10 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_251C0B6AC((v15 > 1), v16 + 1, 1);
        v10 = v20;
      }

      *(v10 + 16) = v16 + 1;
      v17 = v10 + 16 * v16;
      *(v17 + 32) = v14;
      *(v17 + 40) = v13;
      v11 += v12;
      --v9;
    }

    while (v9);
  }

  sub_251ABDB10(v10, a2);
}

uint64_t sub_251ABCFB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_251AC0EAC(0);
  MEMORY[0x28223BE20](v4 - 8);
  v30 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for PBDateRange(0);
  v6 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for PBCategorySeries.Event(0);
  v9 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 16);
  v13 = *(v12 + 16);
  v14 = MEMORY[0x277D84F90];
  if (v13)
  {
    v26 = a2;
    v31 = MEMORY[0x277D84F90];
    sub_251C0B6AC(0, v13, 0);
    v14 = v31;
    v15 = v12 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v27 = *(v9 + 72);
    v16 = (v6 + 48);
    do
    {
      sub_251ABCD3C(v15, v11, type metadata accessor for PBCategorySeries.Event);
      v17 = v30;
      sub_251ABCD3C(&v11[*(v28 + 36)], v30, sub_251AC0EAC);
      v18 = *v16;
      v19 = v29;
      if ((*v16)(v17, 1, v29) == 1)
      {
        *v8 = 0;
        *(v8 + 1) = 0xE000000000000000;
        *(v8 + 2) = 0;
        *(v8 + 3) = 0xE000000000000000;
        *(v8 + 4) = 0;
        v8[40] = 1;
        sub_251C703A4();
        sub_251AC10E4(v11, type metadata accessor for PBCategorySeries.Event);
        if (v18(v17, 1, v19) != 1)
        {
          sub_251AC10E4(v17, sub_251AC0EAC);
        }
      }

      else
      {
        sub_251AC10E4(v11, type metadata accessor for PBCategorySeries.Event);
        sub_251ABCDA4(v17, v8, type metadata accessor for PBDateRange);
      }

      v21 = *(v8 + 2);
      v20 = *(v8 + 3);

      sub_251AC10E4(v8, type metadata accessor for PBDateRange);
      v31 = v14;
      v23 = *(v14 + 16);
      v22 = *(v14 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_251C0B6AC((v22 > 1), v23 + 1, 1);
        v14 = v31;
      }

      *(v14 + 16) = v23 + 1;
      v24 = v14 + 16 * v23;
      *(v24 + 32) = v21;
      *(v24 + 40) = v20;
      v15 += v27;
      --v13;
    }

    while (v13);
    a2 = v26;
  }

  sub_251ABDB10(v14, a2);
}

uint64_t sub_251ABD350@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_251AC0EAC(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PBDateRange(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PBWorkout(0);
  sub_251ABCD3C(a1 + *(v11 + 48), v6, sub_251AC0EAC);
  v12 = *(v8 + 48);
  if (v12(v6, 1, v7) == 1)
  {
    *v10 = 0;
    *(v10 + 1) = 0xE000000000000000;
    *(v10 + 2) = 0;
    *(v10 + 3) = 0xE000000000000000;
    *(v10 + 4) = 0;
    v10[40] = 1;
    sub_251C703A4();
    if (v12(v6, 1, v7) != 1)
    {
      sub_251AC10E4(v6, sub_251AC0EAC);
    }
  }

  else
  {
    sub_251ABCDA4(v6, v10, type metadata accessor for PBDateRange);
  }

  sub_251AC10E4(v10, type metadata accessor for PBDateRange);
  if (qword_27F478930 != -1)
  {
    swift_once();
  }

  v13 = qword_27F4A2878;
  v14 = sub_251C70EE4();

  v15 = [v13 dateFromString_];

  if (v15)
  {
    sub_251C6FFE4();

    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  v17 = sub_251C70014();
  return (*(*(v17 - 8) + 56))(a2, v16, 1, v17);
}

uint64_t sub_251ABD61C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PBActivitySummarySeries.ActivitySummary(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v9 = *(*a1 + 16);
  v10 = MEMORY[0x277D84F90];
  if (v9)
  {
    v20 = MEMORY[0x277D84F90];
    sub_251C0B6AC(0, v9, 0);
    v10 = v20;
    v11 = v8 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v12 = *(v5 + 72);
    do
    {
      sub_251ABCD3C(v11, v7, type metadata accessor for PBActivitySummarySeries.ActivitySummary);
      v14 = *(v7 + 3);
      v13 = *(v7 + 4);

      sub_251AC10E4(v7, type metadata accessor for PBActivitySummarySeries.ActivitySummary);
      v20 = v10;
      v16 = *(v10 + 16);
      v15 = *(v10 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_251C0B6AC((v15 > 1), v16 + 1, 1);
        v10 = v20;
      }

      *(v10 + 16) = v16 + 1;
      v17 = v10 + 16 * v16;
      *(v17 + 32) = v14;
      *(v17 + 40) = v13;
      v11 += v12;
      --v9;
    }

    while (v9);
  }

  sub_251ABDB10(v10, a2);
}

uint64_t sub_251ABD7C8@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  v25 = a4;
  v8 = a2(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = (&v23 - v10);
  v12 = *a1;
  v13 = *(*a1 + 16);
  v14 = MEMORY[0x277D84F90];
  if (v13)
  {
    v24 = a5;
    v26 = MEMORY[0x277D84F90];
    sub_251C0B6AC(0, v13, 0);
    v14 = v26;
    v15 = v12 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v16 = *(v9 + 72);
    do
    {
      sub_251ABCD3C(v15, v11, a3);
      v17 = *v11;
      v18 = v11[1];

      sub_251AC10E4(v11, v25);
      v26 = v14;
      v20 = *(v14 + 16);
      v19 = *(v14 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_251C0B6AC((v19 > 1), v20 + 1, 1);
        v14 = v26;
      }

      *(v14 + 16) = v20 + 1;
      v21 = v14 + 16 * v20;
      *(v21 + 32) = v17;
      *(v21 + 40) = v18;
      v15 += v16;
      --v13;
    }

    while (v13);
    a5 = v24;
  }

  sub_251ABDB10(v14, a5);
}

uint64_t sub_251ABD964@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PBMedicationTrackingDoseEvent(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v9 = *(*a1 + 16);
  v10 = MEMORY[0x277D84F90];
  if (v9)
  {
    v20 = MEMORY[0x277D84F90];
    sub_251C0B6AC(0, v9, 0);
    v10 = v20;
    v11 = v8 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v12 = *(v5 + 72);
    do
    {
      sub_251ABCD3C(v11, v7, type metadata accessor for PBMedicationTrackingDoseEvent);
      v14 = *(v7 + 11);
      v13 = *(v7 + 12);

      sub_251AC10E4(v7, type metadata accessor for PBMedicationTrackingDoseEvent);
      v20 = v10;
      v16 = *(v10 + 16);
      v15 = *(v10 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_251C0B6AC((v15 > 1), v16 + 1, 1);
        v10 = v20;
      }

      *(v10 + 16) = v16 + 1;
      v17 = v10 + 16 * v16;
      *(v17 + 32) = v14;
      *(v17 + 40) = v13;
      v11 += v12;
      --v9;
    }

    while (v9);
  }

  sub_251ABDB10(v10, a2);
}

uint64_t sub_251ABDB10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v63 = sub_251C70014();
  v3 = *(v63 - 1);
  v4 = MEMORY[0x28223BE20](v63);
  v56 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v59 = &v55 - v7;
  MEMORY[0x28223BE20](v6);
  v57 = &v55 - v8;
  sub_251ABCCD4(0);
  v60 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v55 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v55 - v17;
  MEMORY[0x28223BE20](v16);
  v58 = &v55 - v19;
  v20 = *(a1 + 16);
  v21 = MEMORY[0x277D84F90];
  v61 = v3;
  v62 = v12;
  if (v20)
  {
    v64 = MEMORY[0x277D84F90];
    sub_251C0B75C(0, v20, 0);
    v21 = v64;
    v22 = (v3 + 56);
    v23 = a1 + 40;
    do
    {
      v24 = qword_27F478930;

      if (v24 != -1)
      {
        swift_once();
      }

      v25 = qword_27F4A2878;
      v26 = sub_251C70EE4();
      v27 = [v25 dateFromString_];

      if (v27)
      {
        sub_251C6FFE4();

        v28 = 0;
      }

      else
      {
        v28 = 1;
      }

      (*v22)(v15, v28, 1, v63);
      sub_251ABCDA4(v15, v18, sub_251ABCCD4);
      v64 = v21;
      v30 = *(v21 + 16);
      v29 = *(v21 + 24);
      v12 = v62;
      if (v30 >= v29 >> 1)
      {
        sub_251C0B75C((v29 > 1), v30 + 1, 1);
        v21 = v64;
      }

      *(v21 + 16) = v30 + 1;
      sub_251ABCDA4(v18, v21 + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v30, sub_251ABCCD4);
      v23 += 16;
      --v20;
    }

    while (v20);
    v3 = v61;
  }

  v31 = *(v21 + 16);
  v32 = v63;
  if (v31)
  {
    v33 = v21 + ((*(v60 + 80) + 32) & ~*(v60 + 80));
    v60 = *(v60 + 72);
    v34 = (v3 + 48);
    v35 = (v3 + 32);
    v36 = MEMORY[0x277D84F90];
    do
    {
      v37 = v58;
      sub_251ABCD3C(v33, v58, sub_251ABCCD4);
      sub_251ABCDA4(v37, v12, sub_251ABCCD4);
      if ((*v34)(v12, 1, v32) == 1)
      {
        sub_251AC10E4(v12, sub_251ABCCD4);
      }

      else
      {
        v38 = v12;
        v39 = *v35;
        (*v35)(v59, v38, v32);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v36 = sub_251C38F9C(0, v36[2] + 1, 1, v36);
        }

        v41 = v36[2];
        v40 = v36[3];
        if (v41 >= v40 >> 1)
        {
          v36 = sub_251C38F9C((v40 > 1), v41 + 1, 1, v36);
        }

        v36[2] = v41 + 1;
        v3 = v61;
        v42 = v36 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v61 + 72) * v41;
        v32 = v63;
        v39(v42, v59, v63);
        v12 = v62;
      }

      v33 += v60;
      --v31;
    }

    while (v31);
  }

  else
  {

    v36 = MEMORY[0x277D84F90];
  }

  v43 = v36[2];
  if (!v43)
  {

    v47 = 1;
    v46 = v55;
    return (*(v3 + 56))(v46, v47, 1, v32);
  }

  v44 = *(v3 + 16);
  v62 = v36 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v63 = v44;
  result = v44(v57);
  if (v43 == 1)
  {
LABEL_26:

    v3 = v61;
    v46 = v55;
    (*(v61 + 32))(v55, v57, v32);
    v47 = 0;
    return (*(v3 + 56))(v46, v47, 1, v32);
  }

  v48 = (v61 + 32);
  v49 = 1;
  v50 = v61;
  while (v49 < v36[2])
  {
    v51 = v56;
    (v63)(v56, &v62[*(v50 + 72) * v49], v32);
    v52 = v57;
    v53 = sub_251C6FFA4();
    v54 = *(v50 + 8);
    if (v53)
    {
      v54(v52, v32);
      result = (*v48)(v52, v51, v32);
    }

    else
    {
      result = (v54)(v51, v32);
    }

    if (v43 == ++v49)
    {
      goto LABEL_26;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_251ABE198@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v247 = a2;
  v3 = type metadata accessor for PBHKMedicationRecord(0);
  MEMORY[0x28223BE20](v3 - 8);
  v231 = &v213 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v218 = type metadata accessor for PBHKProcedureRecord(0);
  MEMORY[0x28223BE20](v218);
  v234 = &v213 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v216 = type metadata accessor for PBHKAccountOwner(0);
  MEMORY[0x28223BE20](v216);
  v240 = (&v213 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v217 = type metadata accessor for PBHKDiagnosticTestReport(0);
  MEMORY[0x28223BE20](v217);
  v233 = &v213 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v239 = type metadata accessor for PBHKDiagnosticTestResult(0);
  MEMORY[0x28223BE20](v239);
  v232 = &v213 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v215 = type metadata accessor for PBHKMedicationOrder(0);
  MEMORY[0x28223BE20](v215);
  v244 = &v213 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v214 = type metadata accessor for PBHKMedicationDispenseRecord(0);
  MEMORY[0x28223BE20](v214);
  v243 = &v213 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v213 = type metadata accessor for PBHKVaccinationRecord(0);
  MEMORY[0x28223BE20](v213);
  v242 = &v213 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PBHKConditionRecord(0);
  MEMORY[0x28223BE20](v12 - 8);
  v227 = &v213 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251ABCCD4(0);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v226 = &v213 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v241 = &v213 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v237 = &v213 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v230 = &v213 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v238 = &v213 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v236 = &v213 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v235 = &v213 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v225 = &v213 - v30;
  MEMORY[0x28223BE20](v29);
  v229 = &v213 - v31;
  v219 = type metadata accessor for PBHKAllergyRecord(0);
  MEMORY[0x28223BE20](v219);
  v228 = &v213 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AC0F38(0);
  v34 = MEMORY[0x28223BE20](v33 - 8);
  v224 = &v213 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x28223BE20](v34);
  v223 = &v213 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v222 = &v213 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v221 = &v213 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v220 = &v213 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v46 = &v213 - v45;
  v47 = MEMORY[0x28223BE20](v44);
  v49 = &v213 - v48;
  v50 = MEMORY[0x28223BE20](v47);
  v52 = &v213 - v51;
  MEMORY[0x28223BE20](v50);
  v54 = &v213 - v53;
  v55 = type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord(0);
  v56 = *(v55 - 8);
  v57 = MEMORY[0x28223BE20](v55);
  v59 = &v213 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v57);
  v61 = &v213 - v60;
  v62 = *(type metadata accessor for PBClinicalRecord(0) + 20);
  v245 = a1;
  v63 = *(a1 + v62);
  v64 = OBJC_IVAR____TtCV19HealthRecordsDaemon16PBClinicalRecordP33_F8BD0C5BAFF9793DC2607055D044CB4F13_StorageClass__medicalRecord;
  swift_beginAccess();
  sub_251ABCD3C(v63 + v64, v54, sub_251AC0F38);
  v246 = *(v56 + 48);
  if (v246(v54, 1, v55) == 1)
  {
    sub_251AC10E4(v54, sub_251AC0F38);
    v65 = sub_251C70014();
    return (*(*(v65 - 8) + 56))(v247, 1, 1, v65);
  }

  sub_251ABCDA4(v54, v61, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
  v67 = v61;
  sub_251ABCD3C(v61, v59, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v69 = v59;
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload > 6)
    {
      if (EnumCaseMultiPayload == 7)
      {
        v101 = v223;
        sub_251ABCD3C(v63 + v64, v223, sub_251AC0F38);
        v102 = v246(v101, 1, v55);
        v103 = sub_251AC0F38;
        if (v102 == 1 || (v104 = swift_getEnumCaseMultiPayload(), v103 = type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord, v104 != 7))
        {
          v106 = v247;
          v137 = v240;
          sub_251AC10E4(v101, v103);
          *v137 = 0;
          v137[1] = 0xE000000000000000;
          v137[2] = 0;
          v137[3] = 0xE000000000000000;
          sub_251C703A4();
          sub_251AC10E4(v137, type metadata accessor for PBHKAccountOwner);
          sub_251AC10E4(v67, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
        }

        else
        {
          sub_251AC10E4(v67, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
          v105 = v240;
          sub_251ABCDA4(v101, v240, type metadata accessor for PBHKAccountOwner);
          sub_251AC10E4(v105, type metadata accessor for PBHKAccountOwner);
          v106 = v247;
        }

        v138 = sub_251C70014();
        (*(*(v138 - 8) + 56))(v106, 1, 1, v138);
        v139 = v69;
        return sub_251AC10E4(v139, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
      }

      if (EnumCaseMultiPayload != 8)
      {
        v112 = v231;
        sub_251B5D054(v231);
        if (qword_27F478930 != -1)
        {
          swift_once();
        }

        v113 = qword_27F4A2878;
        v114 = sub_251C70EE4();
        v115 = [v113 dateFromString_];

        if (v115)
        {
          v116 = v226;
          sub_251C6FFE4();

          v117 = 0;
          v118 = v247;
        }

        else
        {
          v117 = 1;
          v118 = v247;
          v116 = v226;
        }

        v196 = sub_251C70014();
        (*(*(v196 - 8) + 56))(v116, v117, 1, v196);
        sub_251ABCDA4(v116, v118, sub_251ABCCD4);
        v197 = type metadata accessor for PBHKMedicationRecord;
        goto LABEL_99;
      }

      v74 = v63 + v64;
      v75 = v224;
      sub_251ABCD3C(v74, v224, sub_251AC0F38);
      v76 = v246(v75, 1, v55);
      v77 = sub_251AC0F38;
      if (v76 == 1)
      {
        v73 = v234;
      }

      else
      {
        v162 = swift_getEnumCaseMultiPayload();
        v77 = type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord;
        v73 = v234;
        if (v162 == 8)
        {
          sub_251ABCDA4(v75, v234, type metadata accessor for PBHKProcedureRecord);
LABEL_65:
          v168 = v241;
          if (qword_27F478930 != -1)
          {
            swift_once();
          }

          v169 = qword_27F4A2878;
          v170 = sub_251C70EE4();
          v171 = [v169 dateFromString_];

          if (v171)
          {
            sub_251C6FFE4();

            v172 = 0;
          }

          else
          {
            v172 = 1;
          }

          v203 = v247;
          v204 = sub_251C70014();
          (*(*(v204 - 8) + 56))(v168, v172, 1, v204);
          sub_251ABCDA4(v168, v203, sub_251ABCCD4);
          v200 = type metadata accessor for PBHKProcedureRecord;
LABEL_104:
          v194 = v200;
          v195 = v73;
          goto LABEL_105;
        }
      }

      sub_251AC10E4(v75, v77);
      v163 = MEMORY[0x277D84F90];
      *v73 = MEMORY[0x277D84F90];
      *(v73 + 8) = v163;
      *(v73 + 16) = 0;
      *(v73 + 24) = 0xE000000000000000;
      *(v73 + 32) = 0;
      *(v73 + 40) = 0xE000000000000000;
      *(v73 + 48) = v163;
      *(v73 + 56) = 0;
      *(v73 + 64) = v163;
      *(v73 + 72) = v163;
      v164 = v218;
      sub_251C703A4();
      v165 = v164[13];
      v166 = type metadata accessor for PBHKConcept(0);
      v167 = *(*(v166 - 8) + 56);
      v167(v73 + v165, 1, 1, v166);
      v167(v73 + v164[14], 1, 1, v166);
      v167(v73 + v164[15], 1, 1, v166);
      v167(v73 + v164[16], 1, 1, v166);
      v167(v73 + v164[17], 1, 1, v166);
      goto LABEL_65;
    }

    if (EnumCaseMultiPayload == 5)
    {
      v91 = v63 + v64;
      v92 = v221;
      sub_251ABCD3C(v91, v221, sub_251AC0F38);
      v93 = v246(v92, 1, v55);
      v94 = sub_251AC0F38;
      if (v93 == 1)
      {
        v95 = v232;
      }

      else
      {
        v173 = swift_getEnumCaseMultiPayload();
        v94 = type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord;
        v95 = v232;
        if (v173 == 5)
        {
          sub_251ABCDA4(v92, v232, type metadata accessor for PBHKDiagnosticTestResult);
LABEL_74:
          swift_beginAccess();
          v176 = qword_27F478930;

          if (v176 != -1)
          {
            swift_once();
          }

          v177 = qword_27F4A2878;
          v178 = sub_251C70EE4();

          v179 = [v177 dateFromString_];

          if (v179)
          {
            v180 = v230;
            sub_251C6FFE4();

            v181 = 0;
          }

          else
          {
            v181 = 1;
            v180 = v230;
          }

          sub_251AC10E4(v67, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
          v209 = sub_251C70014();
          (*(*(v209 - 8) + 56))(v180, v181, 1, v209);
          sub_251ABCDA4(v180, v247, sub_251ABCCD4);
          sub_251AC10E4(v95, type metadata accessor for PBHKDiagnosticTestResult);
          v139 = v59;
          return sub_251AC10E4(v139, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
        }
      }

      v174 = v239;
      sub_251AC10E4(v92, v94);
      sub_251C703A4();
      v175 = *(v174 + 20);
      if (qword_27F4786E8 != -1)
      {
        swift_once();
      }

      *(v95 + v175) = qword_27F47AC00;

      goto LABEL_74;
    }

    v124 = v63 + v64;
    v125 = v222;
    sub_251ABCD3C(v124, v222, sub_251AC0F38);
    v126 = v246(v125, 1, v55);
    v127 = sub_251AC0F38;
    if (v126 == 1)
    {
      v73 = v233;
    }

    else
    {
      v182 = swift_getEnumCaseMultiPayload();
      v127 = type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord;
      v73 = v233;
      if (v182 == 6)
      {
        sub_251ABCDA4(v125, v233, type metadata accessor for PBHKDiagnosticTestReport);
LABEL_81:
        v187 = v237;
        if (qword_27F478930 != -1)
        {
          swift_once();
        }

        v188 = qword_27F4A2878;
        v189 = sub_251C70EE4();
        v190 = [v188 dateFromString_];

        if (v190)
        {
          sub_251C6FFE4();

          v191 = 0;
        }

        else
        {
          v191 = 1;
        }

        v210 = v247;
        v211 = sub_251C70014();
        (*(*(v211 - 8) + 56))(v187, v191, 1, v211);
        sub_251ABCDA4(v187, v210, sub_251ABCCD4);
        v200 = type metadata accessor for PBHKDiagnosticTestReport;
        goto LABEL_104;
      }
    }

    sub_251AC10E4(v125, v127);
    *v73 = 0;
    *(v73 + 8) = 0xE000000000000000;
    *(v73 + 16) = 0;
    *(v73 + 24) = 0xE000000000000000;
    *(v73 + 32) = 0;
    *(v73 + 40) = 0xE000000000000000;
    *(v73 + 48) = 0;
    *(v73 + 56) = 0xE000000000000000;
    *(v73 + 64) = MEMORY[0x277D84F90];
    v183 = v217;
    sub_251C703A4();
    v184 = *(v183 + 40);
    v185 = type metadata accessor for PBHKConcept(0);
    v186 = *(*(v185 - 8) + 56);
    v186(v73 + v184, 1, 1, v185);
    v186(v73 + *(v183 + 44), 1, 1, v185);
    goto LABEL_81;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_251ABCD3C(v63 + v64, v49, sub_251AC0F38);
      v96 = v246(v49, 1, v55);
      v97 = sub_251AC0F38;
      if (v96 == 1 || (v98 = swift_getEnumCaseMultiPayload(), v97 = type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord, v98 != 2))
      {
        v99 = v242;
        v100 = v235;
        sub_251AC10E4(v49, v97);
        *v99 = 0;
        *(v99 + 8) = 0xE000000000000000;
        *(v99 + 16) = 0;
        *(v99 + 24) = 0xE000000000000000;
        *(v99 + 32) = 0;
        *(v99 + 40) = 0xE000000000000000;
        *(v99 + 48) = 0;
        *(v99 + 56) = 0xE000000000000000;
        *(v99 + 64) = 0;
        *(v99 + 72) = 0;
        *(v99 + 80) = 0xE000000000000000;
        *(v99 + 88) = 0;
        *(v99 + 96) = 0xE000000000000000;
        v128 = MEMORY[0x277D84F90];
        *(v99 + 104) = MEMORY[0x277D84F90];
        *(v99 + 112) = v128;
        v129 = v213;
        sub_251C703A4();
        v130 = v129[15];
        v131 = type metadata accessor for PBHKConcept(0);
        v132 = *(*(v131 - 8) + 56);
        v132(v99 + v130, 1, 1, v131);
        v132(v99 + v129[16], 1, 1, v131);
        v132(v99 + v129[17], 1, 1, v131);
        v132(v99 + v129[18], 1, 1, v131);
      }

      else
      {
        v99 = v242;
        sub_251ABCDA4(v49, v242, type metadata accessor for PBHKVaccinationRecord);
        v100 = v235;
      }

      if (qword_27F478930 != -1)
      {
        swift_once();
      }

      v133 = qword_27F4A2878;
      v134 = sub_251C70EE4();
      v135 = [v133 dateFromString_];

      if (v135)
      {
        sub_251C6FFE4();

        v136 = 0;
      }

      else
      {
        v136 = 1;
      }

      v192 = v247;
      v193 = sub_251C70014();
      (*(*(v193 - 8) + 56))(v100, v136, 1, v193);
      sub_251ABCDA4(v100, v192, sub_251ABCCD4);
      v194 = type metadata accessor for PBHKVaccinationRecord;
      v195 = v99;
      goto LABEL_105;
    }

    if (EnumCaseMultiPayload == 3)
    {
      sub_251ABCD3C(v63 + v64, v46, sub_251AC0F38);
      v70 = v246(v46, 1, v55);
      v71 = sub_251AC0F38;
      if (v70 == 1 || (v72 = swift_getEnumCaseMultiPayload(), v71 = type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord, v72 != 3))
      {
        v73 = v243;
        sub_251AC10E4(v46, v71);
        *v73 = 0;
        *(v73 + 8) = 0xE000000000000000;
        *(v73 + 16) = 0;
        *(v73 + 24) = 0xE000000000000000;
        v140 = v214;
        sub_251C703A4();
        v141 = v140[7];
        v142 = type metadata accessor for PBGeneralMedication(0);
        (*(*(v142 - 8) + 56))(v73 + v141, 1, 1, v142);
        v143 = v140[8];
        v144 = type metadata accessor for PBQuantity(0);
        v145 = *(*(v144 - 8) + 56);
        v145(v73 + v143, 1, 1, v144);
        v145(v73 + v140[9], 1, 1, v144);
      }

      else
      {
        v73 = v243;
        sub_251ABCDA4(v46, v243, type metadata accessor for PBHKMedicationDispenseRecord);
      }

      v146 = v236;
      if (qword_27F478930 != -1)
      {
        swift_once();
      }

      v147 = qword_27F4A2878;
      v148 = sub_251C70EE4();
      v149 = [v147 dateFromString_];

      if (v149)
      {
        sub_251C6FFE4();

        v150 = 0;
      }

      else
      {
        v150 = 1;
      }

      v198 = v247;
      v199 = sub_251C70014();
      (*(*(v199 - 8) + 56))(v146, v150, 1, v199);
      sub_251ABCDA4(v146, v198, sub_251ABCCD4);
      v200 = type metadata accessor for PBHKMedicationDispenseRecord;
    }

    else
    {
      v107 = v63 + v64;
      v108 = v220;
      sub_251ABCD3C(v107, v220, sub_251AC0F38);
      v109 = v246(v108, 1, v55);
      v110 = sub_251AC0F38;
      if (v109 == 1 || (v111 = swift_getEnumCaseMultiPayload(), v110 = type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord, v111 != 4))
      {
        v73 = v244;
        sub_251AC10E4(v108, v110);
        *v73 = 0;
        *(v73 + 8) = 0xE000000000000000;
        *(v73 + 16) = 0;
        *(v73 + 24) = 0;
        *(v73 + 32) = 0xE000000000000000;
        *(v73 + 40) = MEMORY[0x277D84F90];
        *(v73 + 48) = 0;
        *(v73 + 56) = 0xE000000000000000;
        v151 = v215;
        sub_251C703A4();
        v152 = v151[10];
        v153 = type metadata accessor for PBGeneralMedication(0);
        (*(*(v153 - 8) + 56))(v73 + v152, 1, 1, v153);
        v154 = v151[11];
        v155 = type metadata accessor for PBHKConcept(0);
        v156 = *(*(v155 - 8) + 56);
        v156(v73 + v154, 1, 1, v155);
        v156(v73 + v151[12], 1, 1, v155);
      }

      else
      {
        v73 = v244;
        sub_251ABCDA4(v108, v244, type metadata accessor for PBHKMedicationOrder);
      }

      v157 = v238;
      if (qword_27F478930 != -1)
      {
        swift_once();
      }

      v158 = qword_27F4A2878;
      v159 = sub_251C70EE4();
      v160 = [v158 dateFromString_];

      if (v160)
      {
        sub_251C6FFE4();

        v161 = 0;
      }

      else
      {
        v161 = 1;
      }

      v201 = v247;
      v202 = sub_251C70014();
      (*(*(v202 - 8) + 56))(v157, v161, 1, v202);
      sub_251ABCDA4(v157, v201, sub_251ABCCD4);
      v200 = type metadata accessor for PBHKMedicationOrder;
    }

    goto LABEL_104;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_251ABCD3C(v63 + v64, v52, sub_251AC0F38);
    v78 = v246(v52, 1, v55);
    v79 = sub_251AC0F38;
    if (v78 == 1 || (v80 = swift_getEnumCaseMultiPayload(), v79 = type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord, v80))
    {
      sub_251AC10E4(v52, v79);
      v81 = v228;
      *v228 = 0;
      *(v81 + 1) = 0xE000000000000000;
      *(v81 + 2) = 0;
      *(v81 + 3) = 0xE000000000000000;
      *(v81 + 4) = 0;
      *(v81 + 5) = 0xE000000000000000;
      *(v81 + 6) = MEMORY[0x277D84F90];
      *(v81 + 7) = 0;
      *(v81 + 8) = 0xE000000000000000;
      v82 = v219;
      sub_251C703A4();
      v83 = v82[10];
      v84 = type metadata accessor for PBHKConcept(0);
      v85 = *(*(v84 - 8) + 56);
      v85(&v81[v83], 1, 1, v84);
      v85(&v81[v82[11]], 1, 1, v84);
      v85(&v81[v82[12]], 1, 1, v84);
    }

    else
    {
      v212 = v52;
      v81 = v228;
      sub_251ABCDA4(v212, v228, type metadata accessor for PBHKAllergyRecord);
    }

    v86 = v229;
    if (qword_27F478930 != -1)
    {
      swift_once();
    }

    v87 = qword_27F4A2878;
    v88 = sub_251C70EE4();
    v89 = [v87 dateFromString_];

    if (v89)
    {
      sub_251C6FFE4();

      v90 = 0;
    }

    else
    {
      v90 = 1;
    }

    v205 = v247;
    v206 = sub_251C70014();
    (*(*(v206 - 8) + 56))(v86, v90, 1, v206);
    sub_251ABCDA4(v86, v205, sub_251ABCCD4);
    v194 = type metadata accessor for PBHKAllergyRecord;
    v195 = v81;
    goto LABEL_105;
  }

  v112 = v227;
  sub_251B5CDA0(v227);
  if (qword_27F478930 != -1)
  {
    swift_once();
  }

  v119 = qword_27F4A2878;
  v120 = sub_251C70EE4();
  v121 = [v119 dateFromString_];

  v122 = v225;
  if (v121)
  {
    sub_251C6FFE4();

    v123 = 0;
  }

  else
  {
    v123 = 1;
  }

  v207 = v247;
  v208 = sub_251C70014();
  (*(*(v208 - 8) + 56))(v122, v123, 1, v208);
  sub_251ABCDA4(v122, v207, sub_251ABCCD4);
  v197 = type metadata accessor for PBHKConditionRecord;
LABEL_99:
  v194 = v197;
  v195 = v112;
LABEL_105:
  sub_251AC10E4(v195, v194);
  sub_251AC10E4(v67, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
  v139 = v69;
  return sub_251AC10E4(v139, type metadata accessor for PBClinicalRecord.OneOf_MedicalRecord);
}

uint64_t sub_251AC00D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_251C70014();
  v5 = MEMORY[0x28223BE20](*(v4 - 8));
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v22 - v9;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = *(v8 + 16);
    v13 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v25 = v8;
    v23 = a2;
    v24 = v12;
    v12(&v22 - v9, v13, v4);
    result = v25;
    if (v11 == 1)
    {
LABEL_3:
      v15 = v23;
      (*(result + 32))(v23, v10, v4);
      return (*(v25 + 56))(v15, 0, 1, v4);
    }

    else
    {
      v17 = (v25 + 32);
      v18 = 1;
      while (1)
      {
        v19 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        v24(v7, v13 + *(result + 72) * v18, v4);
        sub_251AC0EE0();
        v20 = sub_251C70EB4();
        v21 = *(v25 + 8);
        if (v20)
        {
          v21(v10, v4);
          (*v17)(v10, v7, v4);
        }

        else
        {
          v21(v7, v4);
        }

        ++v18;
        result = v25;
        if (v19 == v11)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
    }
  }

  else
  {
    v16 = *(v8 + 56);

    return v16(a2, 1, 1, v4);
  }

  return result;
}

int64_t sub_251AC0350(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    if (v1 >= 5)
    {
      v4 = v3 & 0xFFFFFFFFFFFFFFFCLL | 1;
      v5 = vdupq_n_s64(v2);
      v6 = (a1 + 56);
      v7 = v3 & 0xFFFFFFFFFFFFFFFCLL;
      v8 = v5;
      do
      {
        v5 = vbslq_s8(vcgtq_s64(v5, v6[-1]), v5, v6[-1]);
        v8 = vbslq_s8(vcgtq_s64(v8, *v6), v8, *v6);
        v6 += 2;
        v7 -= 4;
      }

      while (v7);
      v9 = vbslq_s8(vcgtq_s64(v5, v8), v5, v8);
      v10 = vextq_s8(v9, v9, 8uLL).u64[0];
      v2 = vbsl_s8(vcgtd_s64(v9.i64[0], v10), *v9.i8, v10);
      if (v3 == (v3 & 0xFFFFFFFFFFFFFFFCLL))
      {
        return v2;
      }
    }

    else
    {
      v4 = 1;
    }

    v11 = v1 - v4;
    v12 = (a1 + 8 * v4 + 32);
    do
    {
      v14 = *v12++;
      v13 = v14;
      if (v2 <= v14)
      {
        v2 = v13;
      }

      --v11;
    }

    while (v11);
  }

  return v2;
}

uint64_t sub_251AC0404@<X0>(char *a1@<X8>)
{
  v68 = a1;
  sub_251AC0FA0(0, &qword_27F4795A8, sub_251ABCCD4, MEMORY[0x277D83D88]);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v91 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v89 = &v67 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v67 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v67 - v10;
  sub_251ABCCD4(0);
  v13 = *(v12 - 8);
  v87 = v12;
  v88 = v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v67 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v67 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v70 = &v67 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v86 = &v67 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v85 = &v67 - v28;
  MEMORY[0x28223BE20](v27);
  i = &v67 - v29;
  v30 = sub_251C70014();
  v72 = *(v30 - 8);
  v31 = MEMORY[0x28223BE20](v30);
  v33 = (&v67 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v31);
  v83 = &v67 - v34;
  v36 = *v1;
  v35 = *(v1 + 8);
  v37 = *(v1 + 16);
  v92 = *(v1 + 24);
  v93 = v35;
  v94 = *(v1 + 32);
  v95 = v37;
  v97[0] = v36;
  v67 = v36 >> 62;
  if (v36 >> 62)
  {
    goto LABEL_50;
  }

  v38 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v90 = v22;
  v39 = *(v1 + 48);
  v69 = *(v1 + 40);
  sub_251ABCD3C(v97, &v96, sub_251AC0F6C);

  v71 = v39;

  v84 = v30;
  v77 = v33;
  if (v38)
  {
    v80 = v11;
    v81 = v9;
    v22 = 0;
    v82 = v36 & 0xC000000000000001;
    v30 = v36 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v82)
      {
        v40 = MEMORY[0x25308D460](v22, v36);
      }

      else
      {
        if (v22 >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_49;
        }

        v40 = *(v36 + 8 * v22 + 32);
      }

      v33 = v40;
      v9 = (v22 + 1);
      if (__OFADD__(v22, 1))
      {
        goto LABEL_48;
      }

      v96 = v40;
      v41 = v86;
      v93(&v96);

      v42 = v41;
      v11 = v85;
      sub_251ABCDA4(v42, v85, sub_251ABCCD4);
      v1 = v94;
      if (v92(v11))
      {
        break;
      }

      sub_251AC10E4(v11, sub_251ABCCD4);
      ++v22;
      v43 = v9 == v38;
      v9 = v81;
      if (v43)
      {
        v45 = 1;
        v30 = v84;
        v11 = v80;
        goto LABEL_16;
      }
    }

    v44 = v11;
    v11 = v80;
    sub_251ABCDA4(v44, v80, sub_251ABCCD4);
    v45 = 0;
    v38 = v22 + 1;
    v30 = v84;
    v9 = v81;
  }

  else
  {
    v45 = 1;
  }

LABEL_16:
  v46 = v87;
  v47 = v88;
  v1 = 1;
  v81 = *(v88 + 56);
  v82 = v88 + 56;
  (v81)(v11, v45, 1, v87);
  sub_251AC1050(v11, v9);
  v48 = *(v47 + 48);
  v88 = v47 + 48;
  v80 = v48;
  if ((v48)(v9, 1, v46) != 1)
  {
    v49 = v70;
    sub_251ABCDA4(v9, v70, sub_251ABCCD4);
    v69(v49);
    sub_251AC10E4(v49, sub_251ABCCD4);
    v1 = 0;
  }

  v33 = v72;
  v50 = i;
  v85 = v72[7];
  v86 = (v72 + 7);
  (v85)(i, v1, 1, v30);
  v78 = v33[6];
  v79 = v33 + 6;
  if (v78(v50, 1, v30) == 1)
  {
    sub_251AC10E4(v97, sub_251AC0F6C);

    sub_251AC10E4(v50, sub_251ABCCD4);
    v51 = 1;
    v52 = v68;
  }

  else
  {
    v75 = v33[4];
    v76 = v33 + 4;
    v75(v83, v50, v30);
    v30 = v36 & 0xFFFFFFFFFFFFFF8;
    if (v67)
    {
      v22 = sub_251C717F4();
    }

    else
    {
      v22 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v9 = (v36 & 0xC000000000000001);
    v72 = v33 + 1;
    v74 = v16;
    for (i = (v36 & 0xFFFFFFFFFFFFFF8); ; v30 = i)
    {
      if (v38 != v22)
      {
        do
        {
          if (v9)
          {
            v54 = MEMORY[0x25308D460](v38, v36);
          }

          else
          {
            if ((v38 & 0x8000000000000000) != 0)
            {
              __break(1u);
LABEL_46:
              __break(1u);
LABEL_47:
              __break(1u);
LABEL_48:
              __break(1u);
LABEL_49:
              __break(1u);
LABEL_50:
              v38 = sub_251C717F4();
              goto LABEL_3;
            }

            if (v38 >= *(v30 + 16))
            {
              goto LABEL_47;
            }

            v54 = *(v36 + 8 * v38 + 32);
          }

          v33 = v54;
          v11 = (v38 + 1);
          if (__OFADD__(v38, 1))
          {
            goto LABEL_46;
          }

          v96 = v54;
          v93(&v96);

          sub_251ABCDA4(v16, v19, sub_251ABCCD4);
          v1 = v94;
          if (v92(v19))
          {
            sub_251ABCDA4(v19, v89, sub_251ABCCD4);
            v53 = 0;
            ++v38;
            goto LABEL_38;
          }

          sub_251AC10E4(v19, sub_251ABCCD4);
          ++v38;
        }

        while (v11 != v22);
      }

      v53 = 1;
      v38 = v22;
LABEL_38:
      v55 = 1;
      v56 = v89;
      v57 = v87;
      (v81)(v89, v53, 1, v87);
      v58 = v56;
      v59 = v91;
      sub_251AC1050(v58, v91);
      if ((v80)(v59, 1, v57) != 1)
      {
        v60 = v70;
        sub_251ABCDA4(v91, v70, sub_251ABCCD4);
        v69(v60);
        sub_251AC10E4(v60, sub_251ABCCD4);
        v55 = 0;
      }

      v61 = v90;
      v62 = v55;
      v1 = v84;
      (v85)(v90, v62, 1, v84);
      if (v78(v61, 1, v1) == 1)
      {
        break;
      }

      v33 = v77;
      v63 = v75;
      v75(v77, v61, v1);
      sub_251AC0EE0();
      v11 = v83;
      v64 = sub_251C70EB4();
      v65 = *v72;
      if (v64)
      {
        v65(v11, v1);
        v63(v11, v33, v1);
      }

      else
      {
        v65(v33, v1);
      }

      v16 = v74;
    }

    sub_251AC10E4(v97, sub_251AC0F6C);

    sub_251AC10E4(v61, sub_251ABCCD4);
    v52 = v68;
    v75(v68, v83, v1);
    v51 = 0;
    v30 = v1;
  }

  return (v85)(v52, v51, 1, v30);
}

unint64_t sub_251AC0EE0()
{
  result = qword_27F4795A0;
  if (!qword_27F4795A0)
  {
    sub_251C70014();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4795A0);
  }

  return result;
}

void sub_251AC0FA0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_251AC1004()
{
  result = qword_27F4795B8;
  if (!qword_27F4795B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F4795B8);
  }

  return result;
}

uint64_t sub_251AC1050(uint64_t a1, uint64_t a2)
{
  sub_251AC0FA0(0, &qword_27F4795A8, sub_251ABCCD4, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_251AC10E4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_251AC1148()
{
  result = qword_27F4795C0;
  if (!qword_27F4795C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4795C0);
  }

  return result;
}

uint64_t sub_251AC119C(uint64_t a1, int8x16_t *a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v8 = a2[2].i8[0];
  return sub_251AC1560(v5, v7) & 1;
}

unint64_t sub_251AC11E8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 32);
  if (v3 <= 2)
  {
    if (*(v0 + 32))
    {
      if (v3 == 1)
      {
        sub_251C716A4();

        v6 = 0xD000000000000027;
      }

      else
      {
        sub_251C716A4();

        v6 = 0xD00000000000002DLL;
      }

      goto LABEL_13;
    }

    sub_251C716A4();

    v7 = 0xD00000000000001ALL;
    goto LABEL_11;
  }

  v5 = v0[2];
  v4 = v0[3];
  if (*(v0 + 32) <= 4u)
  {
    if (v3 == 3)
    {
      sub_251C716A4();

      v6 = 0xD000000000000029;
LABEL_13:
      v10 = v6;
      v8 = sub_251C719A4();
      MEMORY[0x25308CDA0](v8);

      return v10;
    }

    sub_251C716A4();

    v10 = 0xD000000000000016;
    MEMORY[0x25308CDA0](v5, v4);
    MEMORY[0x25308CDA0](8250, 0xE200000000000000);
LABEL_15:
    MEMORY[0x25308CDA0](v1, v2);
    return v10;
  }

  if (v3 == 5)
  {
    sub_251C716A4();

    v7 = 0xD000000000000018;
LABEL_11:
    v10 = v7;
    goto LABEL_15;
  }

  if (v5 | v2 | v1 | v4)
  {
    return 0xD00000000000001FLL;
  }

  else
  {
    return 0xD000000000000023;
  }
}

uint64_t get_enum_tag_for_layout_string_19HealthRecordsDaemon29ClinicalSharingCloudSyncErrorO(uint64_t a1)
{
  if ((*(a1 + 32) & 7u) <= 5)
  {
    return *(a1 + 32) & 7;
  }

  else
  {
    return (*a1 + 6);
  }
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_251AC14A4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 33))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 32);
  if (v3 <= 6)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_251AC14EC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 250;
    *(result + 8) = 0;
    if (a3 >= 0xFA)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_251AC1534(uint64_t result, unsigned int a2)
{
  if (a2 >= 6)
  {
    *result = a2 - 6;
    *(result + 8) = 0;
    LOBYTE(a2) = 6;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

uint64_t sub_251AC1560(uint64_t *a1, int8x16_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 32);
  if (v5 <= 2)
  {
    if (*(a1 + 32))
    {
      if (v5 == 1)
      {
        if (a2[2].i8[0] != 1)
        {
          return 0;
        }

        return v3 == a2->i64[0];
      }

      if (a2[2].i8[0] == 2)
      {
        return v3 == a2->i64[0];
      }
    }

    else if (!a2[2].i8[0])
    {
      if (v3 != a2->i64[0] || v4 != a2->i64[1])
      {
        goto LABEL_29;
      }

      return 1;
    }

    return 0;
  }

  v7 = a1[2];
  v6 = a1[3];
  if (*(a1 + 32) > 4u)
  {
    if (v5 != 5)
    {
      if (v7 | v4 | v3 | v6)
      {
        if (a2[2].i8[0] != 6 || a2->i64[0] != 1 || a2[1].i64[0] | a2[1].i64[1] | a2->i64[1])
        {
          return 0;
        }
      }

      else
      {
        if (a2[2].i8[0] != 6)
        {
          return 0;
        }

        v13 = vorrq_s8(*a2, a2[1]);
        if (vorr_s8(*v13.i8, *&vextq_s8(v13, v13, 8uLL)))
        {
          return 0;
        }
      }

      return 1;
    }

    if (a2[2].i8[0] == 5)
    {
      if (v3 != a2->i64[0] || v4 != a2->i64[1])
      {
LABEL_29:

        return sub_251C719D4();
      }

      return 1;
    }

    return 0;
  }

  if (v5 == 3)
  {
    if (a2[2].i8[0] != 3)
    {
      return 0;
    }

    return v3 == a2->i64[0];
  }

  if (a2[2].i8[0] != 4)
  {
    return 0;
  }

  v10 = a2[1].i64[0];
  v11 = a2[1].i64[1];
  if (v3 == a2->i64[0] && v4 == a2->i64[1] || (v12 = sub_251C719D4(), result = 0, (v12 & 1) != 0))
  {
    if (v7 != v10 || v6 != v11)
    {
      goto LABEL_29;
    }

    return 1;
  }

  return result;
}

uint64_t sub_251AC1734()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A1B68);
  __swift_project_value_buffer(v0, qword_27F4A1B68);
  sub_251AC2DC8(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_251C75800;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "test_gateway_id";
  *(v7 + 8) = 15;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x277D21888];
  v9 = sub_251C706B4();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "test_mc_version";
  *(v11 + 1) = 15;
  v11[16] = 2;
  v10();
  return sub_251C706C4();
}

uint64_t sub_251AC1914(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_251C70444();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1 || result == 2)
    {
      sub_251C70534();
    }
  }

  return result;
}

uint64_t sub_251AC1994(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3[1];
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6 || (result = sub_251C70674(), !v4))
  {
    v8 = v3[3];
    v9 = HIBYTE(v8) & 0xF;
    if ((v8 & 0x2000000000000000) == 0)
    {
      v9 = v3[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v9 || (result = sub_251C70674(), !v4))
    {
      type metadata accessor for PBTestFlowData(0);
      return sub_251C70394();
    }
  }

  return result;
}

uint64_t sub_251AC1A58@<X0>(void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = 0;
  a2[3] = 0xE000000000000000;
  return sub_251C703A4();
}

uint64_t sub_251AC1AB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_251AC2AD0(&qword_27F479608, type metadata accessor for PBTestFlowData, &unk_251C75A40);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251AC1B58(uint64_t a1)
{
  v2 = sub_251AC2AD0(&qword_27F4795F0, type metadata accessor for PBTestFlowData, &unk_251C75A78);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251AC1BC4(uint64_t a1, uint64_t a2)
{
  sub_251AC2AD0(&qword_27F4795F0, type metadata accessor for PBTestFlowData, &unk_251C75A78);

  return sub_251C705C4();
}

uint64_t sub_251AC1C44()
{
  v0 = sub_251C706D4();
  __swift_allocate_value_buffer(v0, qword_27F4A1B80);
  __swift_project_value_buffer(v0, qword_27F4A1B80);
  sub_251AC2DC8(0, &qword_27F478F88, sub_251A93770, MEMORY[0x277D84560]);
  sub_251A93770(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_251C75810;
  v5 = v27 + v4;
  v6 = v27 + v4 + *(v2 + 56);
  *(v27 + v4) = 2;
  *v6 = "dlid";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_251C706B4();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v3 + *(v2 + 56);
  *(v5 + v3) = 3;
  *v10 = "key";
  *(v10 + 8) = 3;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v3);
  v12 = v11 + *(v2 + 56);
  *v11 = 4;
  *v12 = "vk_hr";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v3);
  v14 = v13 + *(v2 + 56);
  *v13 = 5;
  *v14 = "last_sync_time";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v3);
  v16 = v15 + *(v2 + 56);
  *v15 = 6;
  *v16 = "device_id";
  *(v16 + 1) = 9;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v3);
  v18 = v17 + *(v2 + 56);
  *v17 = 7;
  *v18 = "device_name";
  *(v18 + 1) = 11;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v3);
  v20 = v19 + *(v2 + 56);
  *v19 = 8;
  *v20 = "times_shared";
  *(v20 + 1) = 12;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v3);
  v22 = v21 + *(v2 + 56);
  *v21 = 9;
  *v22 = "expires_at";
  *(v22 + 1) = 10;
  v22[16] = 2;
  v9();
  v23 = v5 + 8 * v3 + *(v2 + 56);
  *(v5 + 8 * v3) = 10;
  *v23 = "health_institute_id";
  *(v23 + 8) = 19;
  *(v23 + 16) = 2;
  v9();
  v24 = (v5 + 9 * v3);
  v25 = v24 + *(v2 + 56);
  *v24 = 11;
  *v25 = "test_flow_data";
  *(v25 + 1) = 14;
  v25[16] = 2;
  v9();
  return sub_251C706C4();
}

uint64_t sub_251AC201C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_251C70444();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    if (result > 6)
    {
      if (result <= 8)
      {
        if (result == 7)
        {
          goto LABEL_2;
        }

        sub_251C704F4();
      }

      else if (result == 9 || result == 10)
      {
LABEL_2:
        sub_251C70534();
      }

      else if (result == 11)
      {
        sub_251AC2168(a1, v5, a2, a3);
      }
    }

    else if (result <= 3)
    {
      if (result == 2)
      {
        goto LABEL_2;
      }

      if (result == 3)
      {
        goto LABEL_20;
      }
    }

    else
    {
      if (result != 4)
      {
        goto LABEL_2;
      }

LABEL_20:
      sub_251C704D4();
    }
  }
}

uint64_t sub_251AC2168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for PBLookupInfo(0);
  type metadata accessor for PBTestFlowData(0);
  sub_251AC2AD0(&qword_27F4795F0, type metadata accessor for PBTestFlowData, &unk_251C75A78);
  return sub_251C70564();
}

uint64_t sub_251AC221C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 8);
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 || (result = sub_251C70674(), !v4))
  {
    v11 = *(v3 + 16);
    v12 = *(v3 + 24);
    v13 = v12 >> 62;
    if ((v12 >> 62) > 1)
    {
      if (v13 != 2)
      {
        goto LABEL_14;
      }

      v14 = *(v11 + 16);
      v15 = *(v11 + 24);
    }

    else
    {
      if (!v13)
      {
        if ((v12 & 0xFF000000000000) == 0)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }

      v14 = v11;
      v15 = v11 >> 32;
    }

    if (v14 == v15)
    {
      goto LABEL_14;
    }

LABEL_13:
    result = sub_251C70624();
    if (v4)
    {
      return result;
    }

LABEL_14:
    v16 = *(v3 + 32);
    v17 = *(v3 + 40);
    v18 = v17 >> 62;
    if ((v17 >> 62) > 1)
    {
      if (v18 != 2)
      {
        goto LABEL_23;
      }

      v19 = *(v16 + 16);
      v20 = *(v16 + 24);
    }

    else
    {
      if (!v18)
      {
        if ((v17 & 0xFF000000000000) == 0)
        {
          goto LABEL_23;
        }

LABEL_22:
        result = sub_251C70624();
        if (v4)
        {
          return result;
        }

        goto LABEL_23;
      }

      v19 = v16;
      v20 = v16 >> 32;
    }

    if (v19 != v20)
    {
      goto LABEL_22;
    }

LABEL_23:
    v21 = *(v3 + 56);
    v22 = HIBYTE(v21) & 0xF;
    if ((v21 & 0x2000000000000000) == 0)
    {
      v22 = *(v3 + 48) & 0xFFFFFFFFFFFFLL;
    }

    if (!v22 || (result = sub_251C70674(), !v4))
    {
      v23 = *(v3 + 72);
      v24 = HIBYTE(v23) & 0xF;
      if ((v23 & 0x2000000000000000) == 0)
      {
        v24 = *(v3 + 64) & 0xFFFFFFFFFFFFLL;
      }

      if (!v24 || (result = sub_251C70674(), !v4))
      {
        v25 = *(v3 + 88);
        v26 = HIBYTE(v25) & 0xF;
        if ((v25 & 0x2000000000000000) == 0)
        {
          v26 = *(v3 + 80) & 0xFFFFFFFFFFFFLL;
        }

        if (!v26 || (result = sub_251C70674(), !v4))
        {
          if (!*(v3 + 96) || (result = sub_251C70644(), !v4))
          {
            v27 = *(v3 + 112);
            v28 = HIBYTE(v27) & 0xF;
            if ((v27 & 0x2000000000000000) == 0)
            {
              v28 = *(v3 + 104) & 0xFFFFFFFFFFFFLL;
            }

            if (!v28 || (result = sub_251C70674(), !v4))
            {
              v29 = *(v3 + 128);
              v30 = HIBYTE(v29) & 0xF;
              if ((v29 & 0x2000000000000000) == 0)
              {
                v30 = *(v3 + 120) & 0xFFFFFFFFFFFFLL;
              }

              if (!v30 || (result = sub_251C70674(), !v4))
              {
                result = sub_251AC2488(v3, a1, a2, a3);
                if (!v4)
                {
                  type metadata accessor for PBLookupInfo(0);
                  return sub_251C70394();
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_251AC2488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_251AC2DC8(0, &qword_27F479618, type metadata accessor for PBTestFlowData, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for PBTestFlowData(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PBLookupInfo(0);
  sub_251AC2E2C(a1 + *(v12 + 56), v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_251AC2EC0(v7);
  }

  sub_251AC2F4C(v7, v11);
  sub_251AC2AD0(&qword_27F4795F0, type metadata accessor for PBTestFlowData, &unk_251C75A78);
  sub_251C706A4();
  return sub_251AC352C(v11, type metadata accessor for PBTestFlowData);
}

uint64_t sub_251AC2690@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = xmmword_251C745D0;
  *(a2 + 32) = xmmword_251C745D0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0xE000000000000000;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0xE000000000000000;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0xE000000000000000;
  *(a2 + 96) = 0;
  *(a2 + 104) = 0;
  *(a2 + 112) = 0xE000000000000000;
  *(a2 + 120) = 0;
  *(a2 + 128) = 0xE000000000000000;
  sub_251C703A4();
  v4 = *(a1 + 56);
  v5 = type metadata accessor for PBTestFlowData(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(a2 + v4, 1, 1, v5);
}

uint64_t sub_251AC2758@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 52);
  v5 = sub_251C703B4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_251AC27CC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 52);
  v5 = sub_251C703B4();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_251AC2894(uint64_t a1, uint64_t a2)
{
  v4 = sub_251AC2AD0(&qword_27F479610, type metadata accessor for PBLookupInfo, &unk_251C758D8);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_251AC2934(uint64_t a1)
{
  v2 = sub_251AC2AD0(&qword_27F4795D0, type metadata accessor for PBLookupInfo, &unk_251C75910);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_251AC29A0(uint64_t a1, uint64_t a2)
{
  sub_251AC2AD0(&qword_27F4795D0, type metadata accessor for PBLookupInfo, &unk_251C75910);

  return sub_251C705C4();
}

uint64_t sub_251AC2AD0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_251AC2CE8(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_251C719D4() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_251C719D4() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for PBTestFlowData(0);
  sub_251C703B4();
  sub_251AC2AD0(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_251C70ED4() & 1;
}

void sub_251AC2DC8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_251AC2E2C(uint64_t a1, uint64_t a2)
{
  sub_251AC2DC8(0, &qword_27F479618, type metadata accessor for PBTestFlowData, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_251AC2EC0(uint64_t a1)
{
  sub_251AC2DC8(0, &qword_27F479618, type metadata accessor for PBTestFlowData, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_251AC2F4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PBTestFlowData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_251AC2FB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PBTestFlowData(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_251AC2DC8(0, &qword_27F479618, type metadata accessor for PBTestFlowData, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v21 - v9);
  sub_251AC3498(0);
  v12 = v11;
  MEMORY[0x28223BE20](v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 != *a2 && (sub_251C719D4() & 1) == 0 || !sub_251A9D1F0(*(a1 + 16), *(a1 + 24), *(a2 + 16), *(a2 + 24)) || !sub_251A9D1F0(*(a1 + 32), *(a1 + 40), *(a2 + 32), *(a2 + 40)) || (*(a1 + 48) != *(a2 + 48) || *(a1 + 56) != *(a2 + 56)) && (sub_251C719D4() & 1) == 0 || (*(a1 + 64) != *(a2 + 64) || *(a1 + 72) != *(a2 + 72)) && (sub_251C719D4() & 1) == 0 || (*(a1 + 80) != *(a2 + 80) || *(a1 + 88) != *(a2 + 88)) && (sub_251C719D4() & 1) == 0 || *(a1 + 96) != *(a2 + 96) || (*(a1 + 104) != *(a2 + 104) || *(a1 + 112) != *(a2 + 112)) && (sub_251C719D4() & 1) == 0 || (*(a1 + 120) != *(a2 + 120) || *(a1 + 128) != *(a2 + 128)) && (sub_251C719D4() & 1) == 0)
  {
    goto LABEL_27;
  }

  v15 = *(type metadata accessor for PBLookupInfo(0) + 56);
  v16 = *(v12 + 48);
  sub_251AC2E2C(a1 + v15, v14);
  sub_251AC2E2C(a2 + v15, &v14[v16]);
  v17 = *(v5 + 48);
  if (v17(v14, 1, v4) == 1)
  {
    if (v17(&v14[v16], 1, v4) == 1)
    {
      sub_251AC2EC0(v14);
LABEL_36:
      sub_251C703B4();
      sub_251AC2AD0(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v18 = sub_251C70ED4();
      return v18 & 1;
    }

    goto LABEL_26;
  }

  sub_251AC2E2C(v14, v10);
  if (v17(&v14[v16], 1, v4) == 1)
  {
    sub_251AC352C(v10, type metadata accessor for PBTestFlowData);
LABEL_26:
    sub_251AC352C(v14, sub_251AC3498);
    goto LABEL_27;
  }

  sub_251AC2F4C(&v14[v16], v7);
  if (*v10 == *v7 && v10[1] == v7[1] || (sub_251C719D4()) && (v10[2] == v7[2] && v10[3] == v7[3] || (sub_251C719D4()))
  {
    sub_251C703B4();
    sub_251AC2AD0(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    v20 = sub_251C70ED4();
    sub_251AC352C(v7, type metadata accessor for PBTestFlowData);
    sub_251AC352C(v10, type metadata accessor for PBTestFlowData);
    sub_251AC2EC0(v14);
    if (v20)
    {
      goto LABEL_36;
    }
  }

  else
  {
    sub_251AC352C(v7, type metadata accessor for PBTestFlowData);
    sub_251AC352C(v10, type metadata accessor for PBTestFlowData);
    sub_251AC2EC0(v14);
  }

LABEL_27:
  v18 = 0;
  return v18 & 1;
}

void sub_251AC3498(uint64_t a1)
{
  if (!qword_27F479620)
  {
    sub_251AC2DC8(255, &qword_27F479618, type metadata accessor for PBTestFlowData, MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F479620);
    }
  }
}

uint64_t sub_251AC352C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_251AC35B4(uint64_t a1)
{
  result = sub_251C703B4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_251AC3658(uint64_t a1)
{
  sub_251C703B4();
  if (v1 <= 0x3F)
  {
    sub_251AC2DC8(319, &qword_27F479618, type metadata accessor for PBTestFlowData, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_251AC3744(unint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v13 = MEMORY[0x277D84F90];
  if (*a1 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_251C717F4())
  {
    v12 = a2;
    v5 = 0;
    a2 = &off_2796E0000;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x25308D460](v5, v3);
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if ((sub_251C71464() & 1) != 0 && (v9 = [v7 clinicalSharingStatus], v10 = objc_msgSend(v9, sel_userStatus), v9, v10))
      {
        sub_251C71734();
        sub_251C71774();
        sub_251C71784();
        sub_251C71744();
      }

      else
      {
      }

      ++v5;
      if (v8 == i)
      {
        a2 = v12;
        v11 = v13;
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  v11 = MEMORY[0x277D84F90];
LABEL_19:
  *a2 = v11;
}

uint64_t sub_251AC38B8(uint64_t a1, void *a2)
{
  v4 = sub_251C70074();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v32 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v29 - v8;
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v10 = sub_251C70764();
  __swift_project_value_buffer(v10, qword_2813E8130);
  v31 = *(v5 + 16);
  v31(v9, a1, v4);
  v11 = sub_251C70744();
  v12 = sub_251C713F4();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v30 = a2;
    v14 = v13;
    v29[0] = swift_slowAlloc();
    v33 = v29[0];
    *v14 = 136315138;
    sub_251AC5EF4(&qword_27F479418, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v15 = sub_251C719A4();
    v29[1] = v6;
    v16 = a1;
    v18 = v17;
    (*(v5 + 8))(v9, v4);
    v19 = sub_251B10780(v15, v18, &v33);
    a1 = v16;

    *(v14 + 4) = v19;
    _os_log_impl(&dword_251A6C000, v11, v12, "ClinicalSharingAccountStore: refreshing access token for %s", v14, 0xCu);
    v20 = v29[0];
    __swift_destroy_boxed_opaque_existential_1(v29[0]);
    MEMORY[0x25308E2B0](v20, -1, -1);
    v21 = v14;
    a2 = v30;
    MEMORY[0x25308E2B0](v21, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v9, v4);
  }

  v22 = v32;
  v31(v32, a1, v4);
  v23 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = a2;
  (*(v5 + 32))(v24 + v23, v22, v4);
  v25 = MEMORY[0x277D837D0];
  sub_251AC5A44(0, &qword_2813E2020, MEMORY[0x277D837D0]);
  swift_allocObject();
  v26 = a2;
  v33 = sub_251C70A64();
  sub_251AC5AAC(&qword_2813E2028, &qword_2813E2020, v25);
  v27 = sub_251C70A94();

  return v27;
}

uint64_t sub_251AC3C64(unint64_t a1, void *a2)
{
  sub_251AC5AFC(0);
  v26 = v4;
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AC5C14(0);
  v28 = v8;
  v25 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AC5E58(0);
  v29 = v11;
  v27 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v14 = sub_251C70764();
  __swift_project_value_buffer(v14, qword_2813E8130);

  v15 = sub_251C70744();
  v16 = sub_251C713F4();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 134217984;
    if (a1 >> 62)
    {
      v18 = sub_251C717F4();
    }

    else
    {
      v18 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v17 + 4) = v18;

    _os_log_impl(&dword_251A6C000, v15, v16, "ClinicalSharingAccountStore: refreshing connection info for %ld accounts", v17, 0xCu);
    MEMORY[0x25308E2B0](v17, -1, -1);
  }

  else
  {
  }

  v30 = a1;
  sub_251AC5BAC(0);
  sub_251AC5EF4(&qword_2813E1E28, sub_251AC5BAC, MEMORY[0x277D83970]);
  sub_251C710D4();
  *(swift_allocObject() + 16) = a2;
  v19 = a2;
  sub_251C70964();
  sub_251AC5FEC(0, &qword_2813E1FE0, sub_251AC5D0C);
  sub_251AC5EF4(&qword_2813E2238, sub_251AC5AFC, MEMORY[0x277CBCD18]);
  sub_251AC6060(&qword_2813E1FE8, &qword_2813E1FE0, sub_251AC5D0C);
  v20 = v26;
  sub_251C70BD4();

  (*(v5 + 8))(v7, v20);
  sub_251AC5EF4(&qword_2813E2290, sub_251AC5C14, MEMORY[0x277CBCCE0]);
  v21 = v28;
  sub_251C70B64();
  (*(v25 + 8))(v10, v21);
  sub_251AC5EF4(&qword_2813E2450, sub_251AC5E58, MEMORY[0x277CBCCD0]);
  v22 = v29;
  v23 = sub_251C70A94();
  (*(v27 + 8))(v13, v22);
  return v23;
}

uint64_t sub_251AC4148(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v46 = a5;
  v47 = a2;
  v48 = a3;
  v49 = a4;
  v43 = a1;
  v50 = sub_251C70074();
  v5 = *(v50 - 8);
  v42 = *(v5 + 64);
  MEMORY[0x28223BE20](v50);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251ABCCD4(0);
  v41 = *(v8 - 8);
  v9 = *(v41 + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v40 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v38 - v12;
  v39 = &v38 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v38 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v38 - v17;
  v19 = sub_251C70014();
  v20 = *(*(v19 - 8) + 56);
  v45 = v18;
  v20(v18, 1, 1, v19);
  v44 = v16;
  v20(v16, 1, 1, v19);
  (*(v5 + 16))(v7, v43, v50);
  sub_251AC553C(v18, v13);
  sub_251AC553C(v16, &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v22 = *(v41 + 80);
  v23 = (v42 + v22 + v21) & ~v22;
  v24 = (v9 + v22 + v23) & ~v22;
  v25 = (v9 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v25 + 15) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  v28 = v46;
  *(v27 + 16) = v46;
  (*(v5 + 32))(v27 + v21, v7, v50);
  sub_251AC55A0(v39, v27 + v23);
  sub_251AC55A0(v40, v27 + v24);
  *(v27 + v25) = 0;
  v30 = v47;
  v29 = v48;
  *(v27 + v26) = v47;
  v31 = (v27 + ((v26 + 15) & 0xFFFFFFFFFFFFFFF8));
  v32 = v49;
  *v31 = v29;
  v31[1] = v32;
  v33 = MEMORY[0x277D839B0];
  sub_251AC5A44(0, &qword_2813E1FF0, MEMORY[0x277D839B0]);
  swift_allocObject();

  v34 = v28;
  v35 = v30;
  v51 = sub_251C70A64();
  sub_251AC5AAC(&qword_2813E1FF8, &qword_2813E1FF0, v33);
  v36 = sub_251C70A94();
  sub_251AC5608(v44);
  sub_251AC5608(v45);

  return v36;
}

uint64_t sub_251AC44F0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v97 = a4;
  sub_251ABCCD4(0);
  v88 = *(v7 - 8);
  v8 = *(v88 + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v92 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v9);
  v94 = &v76 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v87 = &v76 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v85 = &v76 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v76 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v76 - v19;
  v21 = sub_251C70074();
  v22 = *(v21 - 8);
  v23 = MEMORY[0x28223BE20](v21);
  v96 = &v76 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = v24;
  MEMORY[0x28223BE20](v23);
  v26 = &v76 - v25;
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v27 = sub_251C70764();
  __swift_project_value_buffer(v27, qword_2813E8130);
  v89 = *(v22 + 16);
  v90 = v22 + 16;
  v89(v26, a1, v21);
  sub_251AC553C(a2, v20);
  v93 = a3;
  sub_251AC553C(a3, v18);
  v28 = sub_251C70744();
  v86 = sub_251C713F4();
  v29 = os_log_type_enabled(v28, v86);
  v95 = v21;
  if (v29)
  {
    v80 = v28;
    v81 = v18;
    v83 = a1;
    v84 = a2;
    v30 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    v98[0] = v79;
    *v30 = 136315650;
    sub_251AC5EF4(&qword_27F479418, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v31 = sub_251C719A4();
    v33 = v32;
    v82 = v22;
    (*(v22 + 8))(v26, v21);
    v34 = sub_251B10780(v31, v33, v98);

    *(v30 + 4) = v34;
    *(v30 + 12) = 2080;
    v35 = v85;
    sub_251AC553C(v20, v85);
    v36 = sub_251C70014();
    v78 = *(v36 - 8);
    v37 = v36;
    v77 = *(v78 + 48);
    if (v77(v35, 1) == 1)
    {
      sub_251AC5608(v35);
      v38 = 0xE500000000000000;
      v39 = 0x7D6C696E7BLL;
      v40 = 0x7D6C696E7BLL;
    }

    else
    {
      v39 = 0x7D6C696E7BLL;
      if (qword_27F478930 != -1)
      {
        swift_once();
      }

      v44 = qword_27F4A2878;
      v45 = sub_251C6FF94();
      v46 = [v44 stringFromDate_];

      v40 = sub_251C70F14();
      v38 = v47;

      (*(v78 + 8))(v35, v37);
    }

    sub_251AC5608(v20);
    v48 = sub_251B10780(v40, v38, v98);

    *(v30 + 14) = v48;
    *(v30 + 22) = 2080;
    v49 = v81;
    v50 = v87;
    sub_251AC553C(v81, v87);
    if ((v77)(v50, 1, v37) == 1)
    {
      sub_251AC5608(v50);
      v51 = 0xE500000000000000;
      v42 = v88;
      v41 = v82;
      a1 = v83;
    }

    else
    {
      v42 = v88;
      v41 = v82;
      if (qword_27F478930 != -1)
      {
        swift_once();
      }

      v52 = qword_27F4A2878;
      v53 = sub_251C6FF94();
      v54 = [v52 stringFromDate_];

      v39 = sub_251C70F14();
      v51 = v55;

      (*(v78 + 8))(v50, v37);
      a1 = v83;
    }

    sub_251AC5608(v49);
    v56 = sub_251B10780(v39, v51, v98);

    *(v30 + 24) = v56;
    v57 = v80;
    _os_log_impl(&dword_251A6C000, v80, v86, "ClinicalSharingAccountStore: updating clinical sharing dates for account %s. First shared: %s, last shared: %s", v30, 0x20u);
    v58 = v79;
    swift_arrayDestroy();
    MEMORY[0x25308E2B0](v58, -1, -1);
    MEMORY[0x25308E2B0](v30, -1, -1);

    v43 = v93;
    a2 = v84;
    v21 = v95;
  }

  else
  {

    sub_251AC5608(v18);
    sub_251AC5608(v20);
    (*(v22 + 8))(v26, v21);
    v41 = v22;
    v42 = v88;
    v43 = v93;
  }

  v93 = sub_251C712A4();
  v89(v96, a1, v21);
  v59 = v94;
  sub_251AC553C(a2, v94);
  v60 = v92;
  sub_251AC553C(v43, v92);
  v61 = (*(v41 + 80) + 24) & ~*(v41 + 80);
  v62 = *(v42 + 80);
  v63 = (v91 + v62 + v61) & ~v62;
  v64 = (v8 + v62 + v63) & ~v62;
  v65 = (v8 + v64 + 7) & 0xFFFFFFFFFFFFFFF8;
  v66 = (v65 + 15) & 0xFFFFFFFFFFFFFFF8;
  v67 = swift_allocObject();
  v68 = v96;
  *(v67 + 16) = v97;
  (*(v41 + 32))(v67 + v61, v68, v95);
  sub_251AC55A0(v59, v67 + v63);
  sub_251AC55A0(v60, v67 + v64);
  *(v67 + v65) = 0;
  v69 = v93;
  *(v67 + v66) = v93;
  v70 = (v67 + ((v66 + 15) & 0xFFFFFFFFFFFFFFF8));
  v71 = MEMORY[0x277D839B0];
  sub_251AC5A44(0, &qword_2813E1FF0, MEMORY[0x277D839B0]);
  *v70 = 0;
  v70[1] = 0;
  swift_allocObject();
  v72 = v97;
  v73 = v69;
  v98[0] = sub_251C70A64();
  sub_251AC5AAC(&qword_2813E1FF8, &qword_2813E1FF0, v71);
  v74 = sub_251C70A94();

  return v74;
}

uint64_t sub_251AC4D54(uint64_t a1, void *a2, void *a3)
{
  v72 = a3;
  sub_251ABCCD4(0);
  v65 = *(v5 - 8);
  v6 = *(v65 + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v69 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v7);
  v64 = &v56 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v71 = &v56 - v11;
  MEMORY[0x28223BE20](v10);
  v70 = &v56 - v12;
  v13 = sub_251C70074();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v61 = v16;
  v62 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v56 - v17;
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v19 = sub_251C70764();
  __swift_project_value_buffer(v19, qword_2813E8130);
  v20 = *(v14 + 16);
  v63 = a1;
  v60 = v20;
  v20(v18, a1, v13);
  v21 = a2;
  v22 = sub_251C70744();
  v23 = sub_251C713F4();
  v67 = v21;

  v24 = os_log_type_enabled(v22, v23);
  v66 = a2;
  v68 = v13;
  if (v24)
  {
    v58 = v23;
    v25 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v73 = v57;
    *v25 = 136315394;
    sub_251AC5EF4(&qword_27F479418, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v26 = sub_251C719A4();
    v28 = v27;
    v59 = v14;
    (*(v14 + 8))(v18, v13);
    v29 = sub_251B10780(v26, v28, &v73);

    *(v25 + 4) = v29;
    *(v25 + 12) = 2080;
    if (a2)
    {
      [v67 integerValue];
      v30 = HKClinicalSharingUserStatusToString();
      v31 = sub_251C70F14();
      v33 = v32;
    }

    else
    {
      v33 = 0xE500000000000000;
      v31 = 0x7D6C696E7BLL;
    }

    v35 = sub_251B10780(v31, v33, &v73);

    *(v25 + 14) = v35;
    _os_log_impl(&dword_251A6C000, v22, v58, "ClinicalSharingAccountStore: updating clinical sharing user status for account %s: %s", v25, 0x16u);
    v36 = v57;
    swift_arrayDestroy();
    MEMORY[0x25308E2B0](v36, -1, -1);
    MEMORY[0x25308E2B0](v25, -1, -1);

    v34 = v68;
    v14 = v59;
  }

  else
  {

    (*(v14 + 8))(v18, v13);
    v34 = v13;
  }

  v37 = sub_251C70014();
  v38 = *(*(v37 - 8) + 56);
  v39 = v70;
  v38(v70, 1, 1, v37);
  v40 = v71;
  v38(v71, 1, 1, v37);
  v41 = v62;
  v60(v62, v63, v34);
  v42 = v64;
  sub_251AC553C(v39, v64);
  sub_251AC553C(v40, v69);
  v43 = (*(v14 + 80) + 24) & ~*(v14 + 80);
  v44 = *(v65 + 80);
  v45 = (v61 + v44 + v43) & ~v44;
  v46 = (v6 + v44 + v45) & ~v44;
  v47 = (v6 + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
  v48 = (v47 + 15) & 0xFFFFFFFFFFFFFFF8;
  v49 = swift_allocObject();
  *(v49 + 16) = v72;
  (*(v14 + 32))(v49 + v43, v41, v68);
  sub_251AC55A0(v42, v49 + v45);
  sub_251AC55A0(v69, v49 + v46);
  *(v49 + v47) = v66;
  *(v49 + v48) = 0;
  v50 = (v49 + ((v48 + 15) & 0xFFFFFFFFFFFFFFF8));
  v51 = MEMORY[0x277D839B0];
  sub_251AC5A44(0, &qword_2813E1FF0, MEMORY[0x277D839B0]);
  *v50 = 0;
  v50[1] = 0;
  swift_allocObject();
  v52 = v67;
  v53 = v72;
  v73 = sub_251C70A64();
  sub_251AC5AAC(&qword_2813E1FF8, &qword_2813E1FF0, v51);
  v54 = sub_251C70A94();

  sub_251AC5608(v71);
  sub_251AC5608(v70);
  return v54;
}

uint64_t sub_251AC5394()
{
  sub_251AC5F4C(0);
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  *(swift_allocObject() + 16) = v6;
  sub_251AC5FEC(0, &qword_2813E2000, sub_251AC5BAC);
  sub_251AC6060(&qword_2813E2008, &qword_2813E2000, sub_251AC5BAC);
  v7 = v6;
  sub_251C70A74();
  sub_251AC5EF4(&qword_2813E1FD8, sub_251AC5F4C, MEMORY[0x277CBCEB8]);
  v8 = sub_251C70A94();
  (*(v3 + 8))(v5, v2);
  return v8;
}

uint64_t sub_251AC553C(uint64_t a1, uint64_t a2)
{
  sub_251ABCCD4(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_251AC55A0(uint64_t a1, uint64_t a2)
{
  sub_251ABCCD4(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_251AC5608(uint64_t a1)
{
  sub_251ABCCD4(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroyTm_0()
{
  v1 = sub_251C70074();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  sub_251ABCCD4(0);
  v7 = *(*(v6 - 8) + 80);
  v8 = *(*(v6 - 8) + 64);
  v9 = (v4 + v5 + v7) & ~v7;
  v10 = (v8 + v7 + v9) & ~v7;

  (*(v2 + 8))(v0 + v4, v1);
  v11 = sub_251C70014();
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  if (!v13(v0 + v9, 1, v11))
  {
    (*(v12 + 8))(v0 + v9, v11);
  }

  if (!v13(v0 + v10, 1, v11))
  {
    (*(v12 + 8))(v0 + v10, v11);
  }

  v14 = (v8 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v14 + 15) & 0xFFFFFFFFFFFFFFF8;

  return MEMORY[0x2821FE8E8](v0, ((v15 + 15) & 0xFFFFFFFFFFFFFFF8) + 16, v3 | v7 | 7);
}

void sub_251AC5880(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_251C70074() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  sub_251ABCCD4(0);
  v9 = *(*(v8 - 8) + 80);
  v10 = (v6 + v7 + v9) & ~v9;
  v11 = *(*(v8 - 8) + 64);
  v12 = (v11 + v9 + v10) & ~v9;
  v13 = (v11 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_251BCB1E8(a1, a2, *(v2 + 16), v2 + v6, v2 + v10, v2 + v12, *(v2 + v13), *(v2 + ((v13 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v13 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v13 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

void sub_251AC59C0(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_251C70074() - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  sub_251C3B214(a1, a2, v6, v7);
}

void sub_251AC5A44(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    sub_251A82284();
    v4 = sub_251C70A54();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_251AC5AAC(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_251AC5A44(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_251AC5AFC(uint64_t a1)
{
  if (!qword_2813E2230)
  {
    sub_251AC5BAC(255);
    sub_251AC5EF4(&qword_2813E1E28, sub_251AC5BAC, MEMORY[0x277D83970]);
    v1 = sub_251C70904();
    if (!v2)
    {
      atomic_store(v1, &qword_2813E2230);
    }
  }
}

void sub_251AC5BAC(uint64_t a1)
{
  if (!qword_2813E1E30)
  {
    sub_251A8223C(255, &qword_2813E1D98, 0x277D123D8);
    v1 = sub_251C711A4();
    if (!v2)
    {
      atomic_store(v1, &qword_2813E1E30);
    }
  }
}

void sub_251AC5C14(uint64_t a1)
{
  if (!qword_2813E2288)
  {
    sub_251AC5FEC(255, &qword_2813E1FE0, sub_251AC5D0C);
    sub_251AC5D9C(255);
    sub_251AC6060(&qword_2813E1FE8, &qword_2813E1FE0, sub_251AC5D0C);
    sub_251AC5EF4(&qword_2813E2678, sub_251AC5D9C, MEMORY[0x277CBCBA0]);
    v1 = sub_251C708D4();
    if (!v2)
    {
      atomic_store(v1, &qword_2813E2288);
    }
  }
}

void sub_251AC5D0C(uint64_t a1)
{
  if (!qword_2813E1D90)
  {
    sub_251A8223C(255, &qword_2813E1D98, 0x277D123D8);
    sub_251A8223C(255, &qword_2813E1DB8, 0x277D12450);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2813E1D90);
    }
  }
}

void sub_251AC5D9C(uint64_t a1)
{
  if (!qword_2813E2670)
  {
    sub_251AC5AFC(255);
    sub_251A82284();
    sub_251AC5EF4(&qword_2813E2238, sub_251AC5AFC, MEMORY[0x277CBCD18]);
    v1 = sub_251C707E4();
    if (!v2)
    {
      atomic_store(v1, &qword_2813E2670);
    }
  }
}

void sub_251AC5E58(uint64_t a1)
{
  if (!qword_2813E2448)
  {
    sub_251AC5C14(255);
    sub_251AC5EF4(&qword_2813E2290, sub_251AC5C14, MEMORY[0x277CBCCE0]);
    v1 = sub_251C708C4();
    if (!v2)
    {
      atomic_store(v1, &qword_2813E2448);
    }
  }
}

uint64_t sub_251AC5EF4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_251AC5F4C(uint64_t a1)
{
  if (!qword_2813E1FD0)
  {
    sub_251AC5FEC(255, &qword_2813E2000, sub_251AC5BAC);
    sub_251AC6060(&qword_2813E2008, &qword_2813E2000, sub_251AC5BAC);
    v1 = sub_251C70A84();
    if (!v2)
    {
      atomic_store(v1, &qword_2813E1FD0);
    }
  }
}

void sub_251AC5FEC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_251A82284();
    v4 = sub_251C70A54();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_251AC6060(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_251AC5FEC(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_251AC60BC@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = swift_allocObject();
  v7[2] = v5;
  v7[3] = v6;
  v7[4] = a2;
  sub_251AC63E4(0);
  swift_allocObject();

  v8 = a2;
  sub_251C70A64();
  sub_251AC644C();
  v9 = sub_251C70A94();

  *a3 = v9;
  return result;
}

uint64_t sub_251AC61A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  sub_251C6FA54();
  swift_allocObject();

  sub_251C6FA44();
  sub_251AC64E4();
  v11 = sub_251C6FA34();
  v13 = v12;

  v14 = sub_251C6FEC4();
  v15 = sub_251C70EE4();
  v16 = swift_allocObject();
  v16[2] = sub_251AC64A4;
  v16[3] = v10;
  v16[4] = a3;
  v16[5] = a4;
  aBlock[4] = sub_251AC6600;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_251BCB170;
  aBlock[3] = &block_descriptor_0;
  v17 = _Block_copy(aBlock);

  [a5 setData:v14 forKey:v15 completion:v17];
  _Block_release(v17);

  return sub_251A83028(v11, v13);
}

void sub_251AC63E4(uint64_t a1)
{
  if (!qword_2813E2040)
  {
    sub_251A82284();
    v1 = sub_251C70A54();
    if (!v2)
    {
      atomic_store(v1, &qword_2813E2040);
    }
  }
}

unint64_t sub_251AC644C()
{
  result = qword_2813E2048;
  if (!qword_2813E2048)
  {
    sub_251AC63E4(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813E2048);
  }

  return result;
}

uint64_t sub_251AC64A4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *(v3 + 16);
  v6[0] = a1;
  v6[1] = a2;
  v7 = a3 & 1;
  return v4(v6);
}

unint64_t sub_251AC64E4()
{
  result = qword_2813E3790;
  if (!qword_2813E3790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813E3790);
  }

  return result;
}

void sub_251AC6538(char a1, id a2, void (*a3)(id, uint64_t, uint64_t), uint64_t a4, void *a5, uint64_t a6)
{
  if (a1)
  {
    (a3)(a5, a6, 0, a4);
  }

  else
  {
    if (a2)
    {
      v7 = a2;
    }

    else
    {
      sub_251AC6624();
      v7 = swift_allocError();
      v9 = v8;
      a2 = 0;
      *v9 = 0;
      *(v9 + 8) = 0;
      *(v9 + 16) = 2;
    }

    v10 = a2;
    a3(v7, 0, 1);
  }
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_251AC6624()
{
  result = qword_27F479648;
  if (!qword_27F479648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F479648);
  }

  return result;
}

void __swiftcall HKFHIRCredential.asAuthorizationHeader()(HealthRecordsDaemon::HTTPHeader_optional *__return_ptr retstr)
{
  v3 = [v1 accessToken];
  if (v3)
  {
    v4 = v3;
    v5 = sub_251C70F14();
    v7 = v6;

    MEMORY[0x25308CDA0](v5, v7);

    retstr->value.name = xmmword_251C75B90;
    retstr->value.value._countAndFlagsBits = 0x20726572616542;
    retstr->value.value._object = 0xE700000000000000;
  }

  else
  {
    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v8 = sub_251C70764();
    __swift_project_value_buffer(v8, qword_2813E8130);
    v9 = sub_251C70744();
    v10 = sub_251C713D4();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_251A6C000, v9, v10, "HKFHIRCredential.asAuthorizationHeader: No accessToken", v11, 2u);
      MEMORY[0x25308E2B0](v11, -1, -1);
    }

    retstr->value.name = 0u;
    retstr->value.value = 0u;
  }
}

HealthRecordsDaemon::HTTPHeader __swiftcall HTTPHeader.init(name:value:)(Swift::String name, Swift::String value)
{
  *v2 = name;
  v2[1] = value;
  result.value = value;
  result.name = name;
  return result;
}

uint64_t HTTPHeader.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t HTTPHeader.value.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t static HTTPHeader.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_251C719D4(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_251C719D4();
    }
  }

  return result;
}

uint64_t HTTPHeader.hash(into:)(uint64_t a1)
{
  sub_251C70FB4();

  return sub_251C70FB4();
}

uint64_t HTTPHeader.hashValue.getter()
{
  sub_251C71AA4();
  sub_251C70FB4();
  sub_251C70FB4();
  return sub_251C71AD4();
}

uint64_t sub_251AC69A4(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_251C719D4(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_251C719D4();
    }
  }

  return result;
}

uint64_t sub_251AC6A48()
{
  sub_251C71AA4();
  sub_251C70FB4();
  sub_251C70FB4();
  return sub_251C71AD4();
}

uint64_t sub_251AC6AB0(uint64_t a1)
{
  sub_251C70FB4();

  return sub_251C70FB4();
}

uint64_t sub_251AC6B00(uint64_t a1)
{
  sub_251C71AA4();
  sub_251C70FB4();
  sub_251C70FB4();
  return sub_251C71AD4();
}

unint64_t sub_251AC6B78()
{
  result = qword_27F479650;
  if (!qword_27F479650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F479650);
  }

  return result;
}

uint64_t sub_251AC6BDC(uint64_t a1, unsigned int a2)
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

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_251AC6C38(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
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

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t storeEnumTagSinglePayload for PBTimeSeries.Value.OneOf_AdditionalData(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_251AC6D14(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
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

uint64_t sub_251AC6D70(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SyncSuccessMetricField(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
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

void sub_251AC6E98(uint64_t *a1@<X8>)
{
  if (*v1)
  {
    v3 = sub_251C6FD74();
    v4 = [v3 domain];

    v5 = sub_251C70F14();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a1 = v5;
  a1[1] = v7;
}

uint64_t sub_251AC6F20@<X0>(uint64_t *a1@<X8>)
{
  result = *v1;
  if (*v1)
  {
    swift_getErrorValue();
    result = sub_251C71A44();
  }

  else
  {
    v4 = 0;
  }

  *a1 = result;
  a1[1] = v4;
  return result;
}

void sub_251AC6F90(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  if ((v3 & 1) == 0)
  {
    if (v2 >= 18)
    {
      if (v2 > 0x13)
      {
        if (v2 <= 0x50)
        {
          v2 = *v1 - *v1 % 0xAu;
        }

        else
        {
          v2 = 81;
        }
      }

      else
      {
        v2 = 20;
      }
    }

    else
    {
      v2 = 17;
    }
  }

  *a1 = v2;
  *(a1 + 8) = v3;
}

uint64_t sub_251AC7024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v4;
    sub_251ACCFD8(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v17;
  }

  else
  {
    v12 = sub_251AC8C58(a3, a4);
    v14 = v13;

    if (v14)
    {
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v5;
      v18 = *v5;
      if (!v15)
      {
        sub_251ACDDFC();
        v16 = v18;
      }

      result = sub_251AD1264(v12, v16);
      *v5 = v16;
    }
  }

  return result;
}

_OWORD *sub_251AC712C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(a1 + 24))
  {
    sub_251ACFB54(a1, v15);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    result = sub_251ACD750(v15, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v13;
  }

  else
  {
    v7 = MEMORY[0x277D84F70];
    sub_251ACDF84(a1, &qword_2813E1BA0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_251ACFBB8);
    v8 = sub_251AC8DE8(a2);
    if (v9)
    {
      v10 = v8;
      v11 = swift_isUniquelyReferenced_nonNull_native();
      v12 = *v2;
      v14 = *v3;
      if (!v11)
      {
        sub_251ACEF5C();
        v12 = v14;
      }

      sub_251ACFB54((*(v12 + 56) + 32 * v10), v15);
      sub_251AD171C(v10, v12);
      *v3 = v12;
    }

    else
    {
      memset(v15, 0, sizeof(v15));
    }

    return sub_251ACDF84(v15, &qword_2813E1BA0, v7 + 8, MEMORY[0x277D83D88], sub_251ACFBB8);
  }

  return result;
}

void *static ContentVariables.asValueMap(substituting:)(uint64_t a1)
{
  v2 = 0;
  v3 = MEMORY[0x277D84F98];
  while (1)
  {
    v6 = byte_2863F2EB0[v2 + 32];
    if (v6 > 5)
    {
      if (byte_2863F2EB0[v2 + 32] > 8u)
      {
        if (v6 == 9)
        {
          v8 = 0x656372756F736572;
          v14 = 0xEA00000000004449;
          if (!*(a1 + 16))
          {
            goto LABEL_45;
          }

          goto LABEL_26;
        }

        v7 = v6 == 10;
        if (v6 == 10)
        {
          v8 = 0x44494C44746F6F72;
        }

        else
        {
          v8 = 0x6574617473;
        }

        v9 = 0xE800000000000000;
        v10 = 0xE500000000000000;
        goto LABEL_41;
      }

      if (v6 == 6)
      {
        v8 = 0xD000000000000015;
        v14 = 0x8000000251C89BD0;
        if (!*(a1 + 16))
        {
          goto LABEL_45;
        }

        goto LABEL_26;
      }

      v11 = v6 == 7;
      v8 = v6 == 7 ? 0x746E6569746170 : 0x5468736572666572;
      v12 = 0xEC0000006E656B6FLL;
      v13 = 0xE700000000000000;
    }

    else
    {
      if (byte_2863F2EB0[v2 + 32] <= 2u)
      {
        if (!byte_2863F2EB0[v2 + 32])
        {
          v14 = 0xE800000000000000;
          v8 = 0x4449746E65696C63;
          if (!*(a1 + 16))
          {
            goto LABEL_45;
          }

          goto LABEL_26;
        }

        v7 = v6 == 1;
        if (v6 == 1)
        {
          v8 = 0x6553746E65696C63;
        }

        else
        {
          v8 = 1701080931;
        }

        v9 = 0xEC00000074657263;
        v10 = 0xE400000000000000;
LABEL_41:
        if (v7)
        {
          v14 = v9;
        }

        else
        {
          v14 = v10;
        }

        if (!*(a1 + 16))
        {
          goto LABEL_45;
        }

        goto LABEL_26;
      }

      if (v6 == 3)
      {
        v8 = 0xD000000000000015;
        v14 = 0x8000000251C89B90;
        if (!*(a1 + 16))
        {
          goto LABEL_45;
        }

        goto LABEL_26;
      }

      v11 = v6 == 4;
      v8 = v6 == 4 ? 1734431845 : 0xD000000000000011;
      v12 = 0x8000000251C89BB0;
      v13 = 0xE400000000000000;
    }

    if (v11)
    {
      v14 = v13;
    }

    else
    {
      v14 = v12;
    }

    if (!*(a1 + 16))
    {
LABEL_45:

      goto LABEL_46;
    }

LABEL_26:
    v15 = sub_251AC8C58(v8, v14);
    v17 = v16;

    if (v17)
    {
      v18 = (*(a1 + 56) + 16 * v15);
      v20 = *v18;
      v19 = v18[1];

      goto LABEL_28;
    }

LABEL_46:
    if (v6 > 5)
    {
      if (v6 > 8)
      {
        if (v6 == 9)
        {
          v20 = 0x656372756F736572;
          v19 = 0xEA00000000004449;
        }

        else if (v6 == 10)
        {
          v19 = 0xE800000000000000;
          v20 = 0x44494C44746F6F72;
        }

        else
        {
          v19 = 0xE500000000000000;
          v20 = 0x6574617473;
        }
      }

      else if (v6 == 6)
      {
        v20 = 0xD000000000000015;
        v19 = 0x8000000251C89BD0;
      }

      else if (v6 == 7)
      {
        v19 = 0xE700000000000000;
        v20 = 0x746E6569746170;
      }

      else
      {
        v20 = 0x5468736572666572;
        v19 = 0xEC0000006E656B6FLL;
      }
    }

    else if (v6 > 2)
    {
      if (v6 == 3)
      {
        v20 = 0xD000000000000015;
        v19 = 0x8000000251C89B90;
      }

      else if (v6 == 4)
      {
        v19 = 0xE400000000000000;
        v20 = 1734431845;
      }

      else
      {
        v20 = 0xD000000000000011;
        v19 = 0x8000000251C89BB0;
      }
    }

    else if (v6)
    {
      if (v6 == 1)
      {
        v20 = 0x6553746E65696C63;
        v19 = 0xEC00000074657263;
      }

      else
      {
        v19 = 0xE400000000000000;
        v20 = 1701080931;
      }
    }

    else
    {
      v19 = 0xE800000000000000;
      v20 = 0x4449746E65696C63;
    }

LABEL_28:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v36 = v3;
    v22 = sub_251AC8C58(v8, v14);
    v24 = v3[2];
    v25 = (v23 & 1) == 0;
    v26 = __OFADD__(v24, v25);
    v27 = v24 + v25;
    if (v26)
    {
      break;
    }

    v28 = v23;
    if (v3[3] < v27)
    {
      sub_251ACA35C(v27, isUniquelyReferenced_nonNull_native);
      v22 = sub_251AC8C58(v8, v14);
      if ((v28 & 1) != (v29 & 1))
      {
        goto LABEL_82;
      }

LABEL_33:
      if (v28)
      {
        goto LABEL_2;
      }

      goto LABEL_34;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_33;
    }

    v34 = v22;
    sub_251ACDDFC();
    v22 = v34;
    if (v28)
    {
LABEL_2:
      v4 = v22;

      v3 = v36;
      v5 = (v36[7] + 16 * v4);
      *v5 = v20;
      v5[1] = v19;

      goto LABEL_3;
    }

LABEL_34:
    v3 = v36;
    v36[(v22 >> 6) + 8] |= 1 << v22;
    v30 = (v36[6] + 16 * v22);
    *v30 = v8;
    v30[1] = v14;
    v31 = (v36[7] + 16 * v22);
    *v31 = v20;
    v31[1] = v19;
    v32 = v36[2];
    v26 = __OFADD__(v32, 1);
    v33 = v32 + 1;
    if (v26)
    {
      goto LABEL_81;
    }

    v36[2] = v33;
LABEL_3:
    if (++v2 == 12)
    {
      return v3;
    }
  }

  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  result = sub_251C71A14();
  __break(1u);
  return result;
}

{
  v2 = 0;
  v3 = MEMORY[0x277D84F98];
  while (1)
  {
    v6 = byte_2863F2EB0[v2 + 32];
    if (v6 > 5)
    {
      if (byte_2863F2EB0[v2 + 32] <= 8u)
      {
        if (v6 == 6)
        {
          v8 = 0xD000000000000015;
          v11 = 0x8000000251C89BD0;
          if (!*(a1 + 16))
          {
            goto LABEL_53;
          }
        }

        else if (v6 == 7)
        {
          v11 = 0xE700000000000000;
          v8 = 0x746E6569746170;
          if (!*(a1 + 16))
          {
            goto LABEL_53;
          }
        }

        else
        {
          v8 = 0x5468736572666572;
          v11 = 0xEC0000006E656B6FLL;
          if (!*(a1 + 16))
          {
            goto LABEL_53;
          }
        }

        goto LABEL_34;
      }

      if (v6 == 9)
      {
        v8 = 0x656372756F736572;
        v11 = 0xEA00000000004449;
        if (!*(a1 + 16))
        {
          goto LABEL_53;
        }

        goto LABEL_34;
      }

      v7 = v6 == 10;
      v8 = v6 == 10 ? 0x44494C44746F6F72 : 0x6574617473;
      v9 = 0xE800000000000000;
      v10 = 0xE500000000000000;
    }

    else
    {
      if (byte_2863F2EB0[v2 + 32] > 2u)
      {
        if (v6 == 3)
        {
          v8 = 0xD000000000000015;
          v11 = 0x8000000251C89B90;
          if (!*(a1 + 16))
          {
            goto LABEL_53;
          }
        }

        else
        {
          if (v6 == 4)
          {
            v8 = 1734431845;
          }

          else
          {
            v8 = 0xD000000000000011;
          }

          if (v6 == 4)
          {
            v11 = 0xE400000000000000;
          }

          else
          {
            v11 = 0x8000000251C89BB0;
          }

          if (!*(a1 + 16))
          {
            goto LABEL_53;
          }
        }

        goto LABEL_34;
      }

      if (!byte_2863F2EB0[v2 + 32])
      {
        v11 = 0xE800000000000000;
        v8 = 0x4449746E65696C63;
        if (!*(a1 + 16))
        {
          goto LABEL_53;
        }

        goto LABEL_34;
      }

      v7 = v6 == 1;
      v8 = v6 == 1 ? 0x6553746E65696C63 : 1701080931;
      v9 = 0xEC00000074657263;
      v10 = 0xE400000000000000;
    }

    if (v7)
    {
      v11 = v9;
    }

    else
    {
      v11 = v10;
    }

    if (!*(a1 + 16))
    {
      goto LABEL_53;
    }

LABEL_34:
    v12 = sub_251AC8DE8(byte_2863F2EB0[v2 + 32]);
    if (v13)
    {
      v14 = (*(a1 + 56) + 16 * v12);
      v16 = *v14;
      v15 = v14[1];

      goto LABEL_36;
    }

LABEL_53:
    if (v6 > 5)
    {
      if (v6 > 8)
      {
        if (v6 == 9)
        {
          v16 = 0x656372756F736572;
          v15 = 0xEA00000000004449;
        }

        else if (v6 == 10)
        {
          v15 = 0xE800000000000000;
          v16 = 0x44494C44746F6F72;
        }

        else
        {
          v15 = 0xE500000000000000;
          v16 = 0x6574617473;
        }
      }

      else if (v6 == 6)
      {
        v16 = 0xD000000000000015;
        v15 = 0x8000000251C89BD0;
      }

      else if (v6 == 7)
      {
        v15 = 0xE700000000000000;
        v16 = 0x746E6569746170;
      }

      else
      {
        v16 = 0x5468736572666572;
        v15 = 0xEC0000006E656B6FLL;
      }
    }

    else if (v6 > 2)
    {
      if (v6 == 3)
      {
        v16 = 0xD000000000000015;
        v15 = 0x8000000251C89B90;
      }

      else if (v6 == 4)
      {
        v15 = 0xE400000000000000;
        v16 = 1734431845;
      }

      else
      {
        v16 = 0xD000000000000011;
        v15 = 0x8000000251C89BB0;
      }
    }

    else if (v6)
    {
      if (v6 == 1)
      {
        v16 = 0x6553746E65696C63;
        v15 = 0xEC00000074657263;
      }

      else
      {
        v15 = 0xE400000000000000;
        v16 = 1701080931;
      }
    }

    else
    {
      v15 = 0xE800000000000000;
      v16 = 0x4449746E65696C63;
    }

LABEL_36:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v32 = v3;
    v18 = sub_251AC8C58(v8, v11);
    v20 = v3[2];
    v21 = (v19 & 1) == 0;
    v22 = __OFADD__(v20, v21);
    v23 = v20 + v21;
    if (v22)
    {
      break;
    }

    v24 = v19;
    if (v3[3] < v23)
    {
      sub_251ACA35C(v23, isUniquelyReferenced_nonNull_native);
      v18 = sub_251AC8C58(v8, v11);
      if ((v24 & 1) != (v25 & 1))
      {
        goto LABEL_81;
      }

LABEL_41:
      if (v24)
      {
        goto LABEL_2;
      }

      goto LABEL_42;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_41;
    }

    v30 = v18;
    sub_251ACDDFC();
    v18 = v30;
    if (v24)
    {
LABEL_2:
      v4 = v18;

      v3 = v32;
      v5 = (v32[7] + 16 * v4);
      *v5 = v16;
      v5[1] = v15;

      goto LABEL_3;
    }

LABEL_42:
    v3 = v32;
    v32[(v18 >> 6) + 8] |= 1 << v18;
    v26 = (v32[6] + 16 * v18);
    *v26 = v8;
    v26[1] = v11;
    v27 = (v32[7] + 16 * v18);
    *v27 = v16;
    v27[1] = v15;
    v28 = v32[2];
    v22 = __OFADD__(v28, 1);
    v29 = v28 + 1;
    if (v22)
    {
      goto LABEL_80;
    }

    v32[2] = v29;
LABEL_3:
    if (++v2 == 12)
    {
      return v3;
    }
  }

  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  result = sub_251C71A14();
  __break(1u);
  return result;
}

unint64_t ContentVariables.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 5)
  {
    v7 = 0x656372756F736572;
    v8 = 0x44494C44746F6F72;
    if (v1 != 10)
    {
      v8 = 0x6574617473;
    }

    if (v1 != 9)
    {
      v7 = v8;
    }

    v9 = 0xD000000000000015;
    v10 = 0x746E6569746170;
    if (v1 != 7)
    {
      v10 = 0x5468736572666572;
    }

    if (v1 != 6)
    {
      v9 = v10;
    }

    if (*v0 <= 8u)
    {
      return v9;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v2 = 0x4449746E65696C63;
    v3 = 0xD000000000000015;
    v4 = 1734431845;
    if (v1 != 4)
    {
      v4 = 0xD000000000000011;
    }

    if (v1 != 3)
    {
      v3 = v4;
    }

    v5 = 0x6553746E65696C63;
    if (v1 != 1)
    {
      v5 = 1701080931;
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
}

HealthRecordsDaemon::ContentVariables_optional __swiftcall ContentVariables.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_251C71854();

  v5 = 12;
  if (v3 < 0xC)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_251AC7E44()
{
  v0 = ContentVariables.rawValue.getter();
  v2 = v1;
  if (v0 == ContentVariables.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_251C719D4();
  }

  return v5 & 1;
}

uint64_t sub_251AC7EE0()
{
  sub_251C71AA4();
  ContentVariables.rawValue.getter();
  sub_251C70FB4();

  return sub_251C71AD4();
}

uint64_t sub_251AC7F48(uint64_t a1)
{
  ContentVariables.rawValue.getter();
  sub_251C70FB4();
}

uint64_t sub_251AC7FAC(uint64_t a1)
{
  sub_251C71AA4();
  ContentVariables.rawValue.getter();
  sub_251C70FB4();

  return sub_251C71AD4();
}

unint64_t sub_251AC801C@<X0>(unint64_t *a1@<X8>)
{
  result = ContentVariables.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t static SchemaSubstitutions.determineSinceDate(lastFetchDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_251C701C4();
  v36 = *(v4 - 8);
  v37 = v4;
  MEMORY[0x28223BE20](v4);
  v32 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_251C70094();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_251C701E4();
  v33 = *(v10 - 8);
  v34 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251ACE4A8(0, &qword_2813E7500, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v35 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v28 - v16;
  v18 = sub_251C70014();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251AC553C(a1, v17);
  v31 = *(v19 + 48);
  if (v31(v17, 1, v18) == 1)
  {
    sub_251ACDF84(v17, &qword_2813E7500, MEMORY[0x277CC9578], MEMORY[0x277D83D88], sub_251ACE4A8);
    return sub_251C6FF54();
  }

  else
  {
    v30 = a2;
    v29 = *(v19 + 32);
    v29(v21, v17, v18);
    (*(v7 + 104))(v9, *MEMORY[0x277CC9830], v6);
    sub_251C700A4();
    (*(v7 + 8))(v9, v6);
    v24 = v36;
    v23 = v37;
    v25 = v32;
    (*(v36 + 104))(v32, *MEMORY[0x277CC9968], v37);
    v26 = v35;
    sub_251C70154();
    (*(v24 + 8))(v25, v23);
    (*(v33 + 8))(v12, v34);
    v27 = v31;
    if (v31(v26, 1, v18) == 1)
    {
      sub_251C6FF54();
      (*(v19 + 8))(v21, v18);
      result = v27(v26, 1, v18);
      if (result != 1)
      {
        return sub_251ACDF84(v26, &qword_2813E7500, MEMORY[0x277CC9578], MEMORY[0x277D83D88], sub_251ACE4A8);
      }
    }

    else
    {
      (*(v19 + 8))(v21, v18);
      return (v29)(v30, v26, v18);
    }
  }

  return result;
}

uint64_t sub_251AC8590(uint64_t a1, uint64_t a2)
{
  v30 = a2;
  v3 = MEMORY[0x277CC9578];
  v4 = MEMORY[0x277D83D88];
  sub_251ACE4A8(0, &qword_2813E7500, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v27 - v6;
  v8 = sub_251C70014();
  v29 = *(v8 - 8);
  v9 = v29;
  v10 = MEMORY[0x28223BE20](v8);
  v28 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v27 - v12;
  v14 = *(v9 + 16);
  v14(v7, a1, v8);
  v15 = *(v9 + 56);
  v15(v7, 0, 1, v8);
  static SchemaSubstitutions.determineSinceDate(lastFetchDate:)(v7, v13);
  sub_251ACDF84(v7, &qword_2813E7500, v3, v4, sub_251ACE4A8);
  v31 = 25959;
  v32 = 0xE200000000000000;
  v14(v7, v13, v8);
  v15(v7, 0, 1, v8);
  v16 = v28;
  static SchemaSubstitutions.determineSinceDate(lastFetchDate:)(v7, v28);
  sub_251ACDF84(v7, &qword_2813E7500, v3, v4, sub_251ACE4A8);
  v17 = [objc_allocWithZone(MEMORY[0x277CCAA68]) init];
  [v17 setFormatOptions_];
  v18 = v16;
  v19 = sub_251C6FF94();
  v20 = [v17 stringFromDate_];

  v21 = sub_251C70F14();
  v23 = v22;

  v24 = *(v29 + 8);
  v24(v18, v8);
  MEMORY[0x25308CDA0](v21, v23);

  v25 = v31;
  v24(v13, v8);
  return v25;
}

uint64_t sub_251AC88B4(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x277CC9578];
  v5 = MEMORY[0x277D83D88];
  sub_251ACE4A8(0, &qword_2813E7500, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v18 - v7;
  v9 = sub_251C70014();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v8, a1, v9);
  (*(v10 + 56))(v8, 0, 1, v9);
  static SchemaSubstitutions.determineSinceDate(lastFetchDate:)(v8, v12);
  sub_251ACDF84(v8, &qword_2813E7500, v4, v5, sub_251ACE4A8);
  v13 = [objc_allocWithZone(MEMORY[0x277CCAA68]) init];
  [v13 setFormatOptions_];
  v14 = sub_251C6FF94();
  v15 = [v13 stringFromDate_];

  v16 = sub_251C70F14();
  (*(v10 + 8))(v12, v9);
  return v16;
}

unint64_t sub_251AC8AFC(uint64_t a1)
{
  sub_251C70074();
  v2 = MEMORY[0x277CC95F0];
  sub_251ACF63C(&qword_2813E74E0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v3 = sub_251C70E84();
  return sub_251AC984C(a1, v3, MEMORY[0x277CC95F0], &qword_27F4796A0, v2, MEMORY[0x277CC9610]);
}

unint64_t sub_251AC8BD0(uint64_t a1, char a2)
{
  v3 = a2 & 1;
  sub_251C71AA4();
  sub_251ABA664();
  sub_251C70E94();
  v4 = sub_251C71AD4();
  return sub_251AC9020(a1, v3, v4);
}

unint64_t sub_251AC8C58(uint64_t a1, uint64_t a2)
{
  sub_251C71AA4();
  sub_251C70FB4();
  v4 = sub_251C71AD4();

  return sub_251AC9124(a1, a2, v4);
}

unint64_t sub_251AC8CD0(uint64_t a1)
{
  v2 = sub_251C71524();

  return sub_251AC91DC(a1, v2);
}

unint64_t sub_251AC8D14(uint64_t a1)
{
  sub_251C6FAE4();
  v2 = MEMORY[0x277CC88A8];
  sub_251ACF63C(&qword_27F4793F8, MEMORY[0x277CC88A8], MEMORY[0x277CC88B8]);
  v3 = sub_251C70E84();
  return sub_251AC984C(a1, v3, MEMORY[0x277CC88A8], &qword_27F479168, v2, MEMORY[0x277CC88C8]);
}

unint64_t sub_251AC8DE8(uint64_t a1)
{
  v1 = a1;
  sub_251C71AA4();
  ContentVariables.rawValue.getter();
  sub_251C70FB4();

  v2 = sub_251C71AD4();

  return sub_251AC92B0(v1, v2);
}

unint64_t sub_251AC8E74(uint64_t a1)
{
  v2 = sub_251C71624();

  return sub_251AC9680(a1, v2);
}

unint64_t sub_251AC8EB8(uint64_t a1)
{
  sub_251C70F14();
  sub_251C71AA4();
  sub_251C70FB4();
  v2 = sub_251C71AD4();

  return sub_251AC9748(a1, v2);
}

unint64_t sub_251AC8F4C(uint64_t a1)
{
  sub_251C70014();
  v2 = MEMORY[0x277CC9578];
  sub_251ACF63C(&qword_27F479708, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  v3 = sub_251C70E84();
  return sub_251AC984C(a1, v3, MEMORY[0x277CC9578], &qword_27F479160, v2, MEMORY[0x277CC9598]);
}

unint64_t sub_251AC9020(uint64_t a1, char a2, uint64_t a3)
{
  v5 = -1 << *(v3 + 32);
  result = a3 & ~v5;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = ~v5;
    do
    {
      v8 = *(*(v3 + 48) + 16 * result);
      if (a2)
      {
        if (a1 > 3)
        {
          if (a1 > 5)
          {
            if (a1 == 6)
            {
              if (v8 == 6)
              {
                return result;
              }
            }

            else if (v8 == 7)
            {
              return result;
            }
          }

          else if (a1 == 4)
          {
            if (v8 == 4)
            {
              return result;
            }
          }

          else if (v8 == 5)
          {
            return result;
          }
        }

        else if (a1 > 1)
        {
          if (a1 == 2)
          {
            if (v8 == 2)
            {
              return result;
            }
          }

          else if (v8 == 3)
          {
            return result;
          }
        }

        else if (a1)
        {
          if (v8 == 1)
          {
            return result;
          }
        }

        else if (!v8)
        {
          return result;
        }
      }

      else if (v8 == a1)
      {
        return result;
      }

      result = (result + 1) & v7;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_251AC9124(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_251C719D4())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_251AC91DC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_251A8223C(0, &qword_27F479680, 0x277CCD720);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_251C71534();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_251AC92B0(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v21 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v2 + 48) + v4);
      if (v6 > 5)
      {
        if (*(*(v2 + 48) + v4) > 8u)
        {
          if (v6 == 9)
          {
            v7 = 0x656372756F736572;
            v8 = 0xEA00000000004449;
          }

          else if (v6 == 10)
          {
            v8 = 0xE800000000000000;
            v7 = 0x44494C44746F6F72;
          }

          else
          {
            v8 = 0xE500000000000000;
            v7 = 0x6574617473;
          }
        }

        else if (v6 == 6)
        {
          v7 = 0xD000000000000015;
          v8 = 0x8000000251C89BD0;
        }

        else if (v6 == 7)
        {
          v8 = 0xE700000000000000;
          v7 = 0x746E6569746170;
        }

        else
        {
          v7 = 0x5468736572666572;
          v8 = 0xEC0000006E656B6FLL;
        }
      }

      else if (*(*(v2 + 48) + v4) > 2u)
      {
        if (v6 == 3)
        {
          v7 = 0xD000000000000015;
          v8 = 0x8000000251C89B90;
        }

        else if (v6 == 4)
        {
          v8 = 0xE400000000000000;
          v7 = 1734431845;
        }

        else
        {
          v7 = 0xD000000000000011;
          v8 = 0x8000000251C89BB0;
        }
      }

      else if (*(*(v2 + 48) + v4))
      {
        if (v6 == 1)
        {
          v7 = 0x6553746E65696C63;
        }

        else
        {
          v7 = 1701080931;
        }

        if (v6 == 1)
        {
          v8 = 0xEC00000074657263;
        }

        else
        {
          v8 = 0xE400000000000000;
        }
      }

      else
      {
        v8 = 0xE800000000000000;
        v7 = 0x4449746E65696C63;
      }

      v9 = 0x44494C44746F6F72;
      if (v5 != 10)
      {
        v9 = 0x6574617473;
      }

      v10 = 0xE500000000000000;
      if (v5 == 10)
      {
        v10 = 0xE800000000000000;
      }

      if (v5 == 9)
      {
        v9 = 0x656372756F736572;
        v10 = 0xEA00000000004449;
      }

      v11 = 0x5468736572666572;
      if (v5 == 7)
      {
        v11 = 0x746E6569746170;
      }

      v12 = 0xEC0000006E656B6FLL;
      if (v5 == 7)
      {
        v12 = 0xE700000000000000;
      }

      if (v5 == 6)
      {
        v11 = 0xD000000000000015;
        v12 = 0x8000000251C89BD0;
      }

      if (v5 <= 8)
      {
        v9 = v11;
        v10 = v12;
      }

      v13 = 0xD000000000000011;
      if (v5 == 4)
      {
        v13 = 1734431845;
        v14 = 0xE400000000000000;
      }

      else
      {
        v14 = 0x8000000251C89BB0;
      }

      if (v5 == 3)
      {
        v13 = 0xD000000000000015;
        v14 = 0x8000000251C89B90;
      }

      v15 = 0x6553746E65696C63;
      if (v5 != 1)
      {
        v15 = 1701080931;
      }

      v16 = 0xEC00000074657263;
      if (v5 != 1)
      {
        v16 = 0xE400000000000000;
      }

      if (!v5)
      {
        v15 = 0x4449746E65696C63;
        v16 = 0xE800000000000000;
      }

      if (v5 <= 2)
      {
        v13 = v15;
        v14 = v16;
      }

      v17 = v5 <= 5 ? v13 : v9;
      v18 = v5 <= 5 ? v14 : v10;
      if (v7 == v17 && v8 == v18)
      {
        break;
      }

      v19 = sub_251C719D4();

      if ((v19 & 1) == 0)
      {
        v4 = (v4 + 1) & v21;
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

unint64_t sub_251AC9680(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_251ACFAF8(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x25308D3E0](v9, a1);
      sub_251ACFB64(v9);
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

unint64_t sub_251AC9748(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_251C70F14();
      v8 = v7;
      if (v6 == sub_251C70F14() && v8 == v9)
      {
        break;
      }

      v11 = sub_251C719D4();

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

unint64_t sub_251AC984C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v24 = a5;
  v25 = a6;
  v23 = a4;
  v21[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v21 - v10;
  v22 = v6;
  v12 = -1 << *(v6 + 32);
  v13 = a2 & ~v12;
  v21[0] = v6 + 64;
  if ((*(v6 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v17 = *(v9 + 16);
    v16 = v9 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    do
    {
      v15(v11, *(v22 + 48) + v18 * v13, v8);
      sub_251ACF63C(v23, v24, v25);
      v19 = sub_251C70ED4();
      (*(v16 - 8))(v11, v8);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
    }

    while (((*(v21[0] + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  return v13;
}

uint64_t sub_251AC99EC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_251ACE2EC(0, &qword_27F479670, &qword_27F4792D0, MEMORY[0x277D834F8], sub_251ACE358);
  v34 = v4;
  result = sub_251C71814();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_251C71AA4();
      sub_251C70FB4();
      result = sub_251C71AD4();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_251AC9CC0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_251ACE358(0, &qword_27F479678, MEMORY[0x277D84460]);
  v34 = v4;
  result = sub_251C71814();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_251C71AA4();
      sub_251C70FB4();
      result = sub_251C71AD4();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_251AC9F90(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_251C6FAE4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_251AB03E0(0);
  v39 = v4;
  result = sub_251C71814();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    v38 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v6 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_251ACF63C(&qword_27F4793F8, MEMORY[0x277CC88A8], MEMORY[0x277CC88B8]);
      result = sub_251C70E84();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v6 = v37;
      v9 = v38;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_251ACA35C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_251ACFE48(0, &qword_27F4796E8, MEMORY[0x277D837D0], MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v37 = v4;
  result = sub_251C71814();
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

      sub_251C71AA4();
      sub_251C70FB4();
      result = sub_251C71AD4();
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

uint64_t sub_251ACA62C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v44 = sub_251C70014();
  v5 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v43 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_251ACF9F4(0);
  v41 = v4;
  result = sub_251C71814();
  v9 = result;
  if (*(v7 + 16))
  {
    v37 = v2;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v38 = (v5 + 16);
    v39 = v5;
    v42 = (v5 + 32);
    v16 = result + 64;
    v40 = v7;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = *(v7 + 48) + 16 * v22;
      v25 = *v24;
      v26 = *(v24 + 8);
      v27 = *(v5 + 72);
      v28 = v23 + v27 * v22;
      if (v41)
      {
        (*v42)(v43, v28, v44);
      }

      else
      {
        (*v38)(v43, v28, v44);
      }

      v45 = v25;
      v46 = v26;
      sub_251C71AA4();
      sub_251ABA664();
      sub_251C70E94();
      result = sub_251C71AD4();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = *(v9 + 48) + 16 * v17;
      *v18 = v25;
      *(v18 + 8) = v26;
      result = (*v42)(*(v9 + 56) + v27 * v17, v43, v44);
      ++*(v9 + 16);
      v5 = v39;
      v7 = v40;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_251ACA9B8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v5 = v3;
  v6 = a2;
  v7 = sub_251C70074();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  a3(0);
  v41 = v6;
  result = sub_251C71814();
  v13 = result;
  if (*(v11 + 16))
  {
    v45 = v10;
    v37 = v3;
    v14 = 0;
    v15 = (v11 + 64);
    v16 = 1 << *(v11 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v11 + 64);
    v19 = (v16 + 63) >> 6;
    v38 = (v8 + 16);
    v39 = v11;
    v40 = v8;
    v42 = (v8 + 32);
    v20 = result + 64;
    while (v18)
    {
      v22 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v25 = v22 | (v14 << 6);
      v26 = *(v11 + 48);
      v44 = *(v40 + 72);
      v27 = v26 + v44 * v25;
      if (v41)
      {
        (*v42)(v45, v27, v7);
        v43 = *(*(v11 + 56) + 8 * v25);
      }

      else
      {
        (*v38)(v45, v27, v7);
        v43 = *(*(v11 + 56) + 8 * v25);
      }

      sub_251ACF63C(&qword_2813E74E0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_251C70E84();
      v28 = -1 << *(v13 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v20 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v20 + 8 * v30);
          if (v34 != -1)
          {
            v21 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v29) & ~*(v20 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      result = (*v42)(*(v13 + 48) + v44 * v21, v45, v7);
      *(*(v13 + 56) + 8 * v21) = v43;
      ++*(v13 + 16);
      v11 = v39;
    }

    v23 = v14;
    while (1)
    {
      v14 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v14 >= v19)
      {
        break;
      }

      v24 = v15[v14];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v18 = (v24 - 1) & v24;
        goto LABEL_15;
      }
    }

    if ((v41 & 1) == 0)
    {

      v5 = v37;
      goto LABEL_34;
    }

    v35 = 1 << *(v11 + 32);
    v5 = v37;
    if (v35 >= 64)
    {
      bzero(v15, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v35;
    }

    *(v11 + 16) = 0;
  }

LABEL_34:
  *v5 = v13;
  return result;
}

uint64_t sub_251ACAD90(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_251ACFE48(0, &qword_2813E1CB0, MEMORY[0x277D84030], MEMORY[0x277D84F70] + 8, MEMORY[0x277D84038]);
  result = sub_251C71814();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
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
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (v4)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v38 = *(v23 + 32);
        v36 = v24;
        v37 = v25;
        sub_251ACFB54((*(v5 + 56) + 32 * v22), v35);
      }

      else
      {
        sub_251ACFAF8(v23, &v36);
        sub_251A83384(*(v5 + 56) + 32 * v22, v35);
      }

      result = sub_251C71624();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v36;
      v18 = v37;
      *(v16 + 32) = v38;
      *v16 = v17;
      *(v16 + 16) = v18;
      result = sub_251ACFB54(v35, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if (v4)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_251ACB078(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v4 = v3;
  v5 = a2;
  v6 = *v3;
  a3(0);
  v35 = v5;
  result = sub_251C71814();
  v8 = result;
  if (*(v6 + 16))
  {
    v34 = v6;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v21 = v18 | (v9 << 6);
      v22 = (*(v6 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v6 + 56) + 8 * v21);
      if ((v35 & 1) == 0)
      {
      }

      sub_251C71AA4();
      sub_251C70FB4();
      result = sub_251C71AD4();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v6 = v34;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v4 = v3;
      goto LABEL_33;
    }

    v33 = 1 << *(v6 + 32);
    v4 = v3;
    if (v33 >= 64)
    {
      bzero(v10, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v6 + 16) = 0;
  }

LABEL_33:
  *v4 = v8;
  return result;
}

uint64_t sub_251ACB318(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_251ACFE48(0, &qword_2813E1CB8, MEMORY[0x277D837D0], MEMORY[0x277D84F70] + 8, MEMORY[0x277D837E0]);
  v33 = v4;
  result = sub_251C71814();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_251ACFB54(v24, v34);
      }

      else
      {
        sub_251A83384(v24, v34);
      }

      sub_251C71AA4();
      sub_251C70FB4();
      result = sub_251C71AD4();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_251ACFB54(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_251ACB5E8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_251ACFDE4(0, &qword_27F4796E0, MEMORY[0x277D837D0]);
  v32 = v4;
  result = sub_251C71814();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v20 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_16:
      v23 = v20 | (v8 << 6);
      v24 = *(*(v5 + 48) + v23);
      v25 = (*(v5 + 56) + 16 * v23);
      v26 = v25[1];
      v33 = *v25;
      if ((v32 & 1) == 0)
      {
      }

      sub_251C71AA4();
      sub_251C70FB4();

      result = sub_251C71AD4();
      v15 = -1 << *(v7 + 32);
      v16 = result & ~v15;
      v17 = v16 >> 6;
      if (((-1 << v16) & ~*(v14 + 8 * (v16 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v15) >> 6;
        while (++v17 != v28 || (v27 & 1) == 0)
        {
          v29 = v17 == v28;
          if (v17 == v28)
          {
            v17 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v17);
          if (v30 != -1)
          {
            v18 = __clz(__rbit64(~v30)) + (v17 << 6);
            goto LABEL_8;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v16) & ~*(v14 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v14 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v7 + 48) + v18) = v24;
      v19 = (*(v7 + 56) + 16 * v18);
      *v19 = v33;
      v19[1] = v26;
      ++*(v7 + 16);
    }

    v21 = v8;
    while (1)
    {
      v8 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v22 = v9[v8];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v12 = (v22 - 1) & v22;
        goto LABEL_16;
      }
    }

    if ((v32 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v2;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_251ACBA24(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_251ACFDE4(0, &qword_27F4796C8, MEMORY[0x277D84F70] + 8);
  result = sub_251C71814();
  v7 = result;
  if (*(v5 + 16))
  {
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
LABEL_17:
      v22 = v19 | (v8 << 6);
      v23 = *(*(v5 + 48) + v22);
      v24 = (*(v5 + 56) + 32 * v22);
      if (v4)
      {
        sub_251ACFB54(v24, v30);
      }

      else
      {
        sub_251A83384(v24, v30);
      }

      sub_251C71AA4();
      sub_251C70FB4();

      result = sub_251C71AD4();
      v15 = -1 << *(v7 + 32);
      v16 = result & ~v15;
      v17 = v16 >> 6;
      if (((-1 << v16) & ~*(v14 + 8 * (v16 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v15) >> 6;
        while (++v17 != v26 || (v25 & 1) == 0)
        {
          v27 = v17 == v26;
          if (v17 == v26)
          {
            v17 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v17);
          if (v28 != -1)
          {
            v18 = __clz(__rbit64(~v28)) + (v17 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v16) & ~*(v14 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v14 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v7 + 48) + v18) = v23;
      result = sub_251ACFB54(v30, (*(v7 + 56) + 32 * v18));
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
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
        goto LABEL_17;
      }
    }

    if (v4)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v2;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_251ACBE58(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_251C70074();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_251ACFC5C(0);
  v39 = v4;
  result = sub_251C71814();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    v38 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v6 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_251ACF63C(&qword_2813E74E0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_251C70E84();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v6 = v37;
      v9 = v38;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_251ACC224(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_251ACFD18(0);
  v33 = v4;
  result = sub_251C71814();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 40 * v20);
      if (v33)
      {
        sub_251A7E8D8(v24, v34);
      }

      else
      {
        sub_251A823B4(v24, v34);
      }

      sub_251C71AA4();
      sub_251C70FB4();
      result = sub_251C71AD4();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_251A7E8D8(v34, *(v7 + 56) + 40 * v15);
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_251ACC4DC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_251ACE3EC(0);
  result = sub_251C71814();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v2;
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
        v22 = v20;
      }

      result = sub_251C71524();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v31;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v31;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_251ACC740(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_251ACE2EC(0, &qword_2813E1CC0, &qword_2813E1D20, 0x277D82BB8, sub_251A8223C);
  v35 = v4;
  result = sub_251C71814();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      sub_251C71AA4();
      sub_251C70FB4();
      result = sub_251C71AD4();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_251ACCA1C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_251C70014();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_251ACFE9C(0);
  v39 = v4;
  result = sub_251C71814();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    v38 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v6 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_251ACF63C(&qword_27F479708, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
      result = sub_251C70E84();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v6 = v37;
      v9 = v38;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_251ACCE40(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void))
{
  v9 = v6;
  v14 = *v6;
  v15 = sub_251AC8C58(a2, a3);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a4 & 1) == 0)
  {
    if (v22 < v20 || (a4 & 1) != 0)
    {
      a6(v20, a4 & 1);
      v15 = sub_251AC8C58(a2, a3);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_18:
        result = sub_251C71A14();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = v15;
      a5();
      v15 = v23;
    }
  }

  v25 = *v9;
  if (v21)
  {
    *(v25[7] + 8 * v15) = a1;
  }

  v25[(v15 >> 6) + 8] |= 1 << v15;
  v27 = (v25[6] + 16 * v15);
  *v27 = a2;
  v27[1] = a3;
  *(v25[7] + 8 * v15) = a1;
  v28 = v25[2];
  v19 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v25[2] = v29;
}

uint64_t sub_251ACCFD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_251AC8C58(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_251ACA35C(v18, a5 & 1);
      v13 = sub_251AC8C58(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        result = sub_251C71A14();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_251ACDDFC();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v26 = (v23[6] + 16 * v13);
  *v26 = a3;
  v26[1] = a4;
  v27 = (v23[7] + 16 * v13);
  *v27 = a1;
  v27[1] = a2;
  v28 = v23[2];
  v17 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v29;
}