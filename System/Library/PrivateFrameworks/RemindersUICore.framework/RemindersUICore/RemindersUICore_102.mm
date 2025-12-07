uint64_t sub_21DA6CDD4(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v8 = (v4 + *a3);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  *v8 = a1;
  v8[1] = a2;
  return a4(v9, v10);
}

id TTRITextCellContent.init(textAutocapitalizationType:keyboardType:state:stateChangeEvent:)(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t *a4)
{
  v5 = *v4;
  v6 = *MEMORY[0x277D85000];
  v7 = *(a3 + 16);
  v8 = *(a3 + 17);
  v9 = *(a3 + 5);
  v10 = *a4;
  v11 = (v4 + qword_27CE652D8);
  *v11 = 0;
  v11[1] = 0;
  v12 = (v4 + qword_27CE652E0);
  *v12 = 0;
  v12[1] = 0;
  v13 = (v4 + qword_27CE652E8);
  *v13 = 0;
  v13[1] = 0;
  v14 = (v4 + qword_27CE652F0);
  *v14 = 0;
  v14[1] = 0;
  v15 = (v4 + qword_27CE652F8);
  *v15 = 0;
  v15[1] = 0;
  v16 = (v4 + qword_27CE65300);
  *v16 = 0;
  v16[1] = 0;
  v17 = (v4 + qword_27CE65308);
  *v17 = 0;
  v17[1] = 0;
  *(v4 + qword_27CE65310) = 1;
  *(v4 + qword_27CE65318) = a1;
  *(v4 + qword_27CE65320) = a2 == 3;
  *(v4 + qword_27CE65328) = a2;
  *(v4 + qword_27CE652D0) = v10;
  v26 = *a3;
  v27 = v7;
  v28 = v8;
  v29 = *(a3 + 24);
  v30 = v9;
  v18 = *((v6 & v5) + 0xE8);
  v19 = *((v6 & v5) + 0xF0);
  (*(v19 + 8))(&v25, v18, v19);
  v20 = (*(v19 + 16))(v18, v19);
  v22 = sub_21DBE97E0(&v26, &v25, v20, v21);
  v23 = v30;
  sub_21D5968AC(v26, *(&v26 + 1), v27);

  return v22;
}

uint64_t TTRITextCellContent.isEditing.getter()
{
  v1 = *MEMORY[0x277D85000] & *v0;
  v2 = *(v1 + 0x68);
  swift_beginAccess();
  v3 = *(v0 + v2);
  if (v3)
  {
    v6 = v1 + 232;
    v4 = *(v1 + 232);
    v5 = *(v6 + 8);
    v7 = *(v5 + 24);
    v8 = v3;
    v7(v4, v5);
    v10 = v9;

    ObjectType = swift_getObjectType();
    v12 = (*(v10 + 216))(ObjectType, v10);
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t TTRITextCellContent.currentAttributedText.getter()
{
  v1 = *MEMORY[0x277D85000] & *v0;
  v2 = *(v1 + 0x68);
  swift_beginAccess();
  v3 = *(v0 + v2);
  if (!v3)
  {
    return 0;
  }

  v6 = v1 + 232;
  v4 = *(v1 + 232);
  v5 = *(v6 + 8);
  v7 = *(v5 + 24);
  v8 = v3;
  v7(v4, v5);
  v10 = v9;

  ObjectType = swift_getObjectType();
  v12 = (*(v10 + 32))(ObjectType, v10);
  swift_unknownObjectRelease();
  return v12;
}

uint64_t TTRITextCellContent.hasMarkedText.getter()
{
  v1 = *MEMORY[0x277D85000] & *v0;
  v2 = *(v1 + 0x68);
  swift_beginAccess();
  v3 = *(v0 + v2);
  if (v3)
  {
    v6 = v1 + 232;
    v4 = *(v1 + 232);
    v5 = *(v6 + 8);
    v7 = *(v5 + 24);
    v8 = v3;
    v7(v4, v5);
    v10 = v9;

    ObjectType = swift_getObjectType();
    v12 = (*(v10 + 224))(ObjectType, v10);
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

Swift::Void __swiftcall TTRITextCellContent.beginEditing()()
{
  v1 = *MEMORY[0x277D85000] & *v0;
  v2 = *(v1 + 0x68);
  swift_beginAccess();
  v3 = *(v0 + v2);
  if (v3)
  {
    v6 = v1 + 232;
    v4 = *(v1 + 232);
    v5 = *(v6 + 8);
    v7 = *(v5 + 24);
    v8 = v3;
    v7(v4, v5);
    v10 = v9;

    ObjectType = swift_getObjectType();
    (*(v10 + 200))(ObjectType, v10);
    swift_unknownObjectRelease();
  }
}

Swift::Void __swiftcall TTRITextCellContent.endEditing()()
{
  v1 = *MEMORY[0x277D85000] & *v0;
  v2 = *(v1 + 0x68);
  swift_beginAccess();
  v3 = *(v0 + v2);
  if (v3)
  {
    v6 = v1 + 232;
    v4 = *(v1 + 232);
    v5 = *(v6 + 8);
    v7 = *(v5 + 24);
    v8 = v3;
    v7(v4, v5);
    v10 = v9;

    ObjectType = swift_getObjectType();
    (*(v10 + 208))(ObjectType, v10);
    swift_unknownObjectRelease();
  }
}

Swift::Void __swiftcall TTRITextCellContent.selectAllText()()
{
  v1 = *MEMORY[0x277D85000] & *v0;
  v2 = *(v1 + 0x68);
  swift_beginAccess();
  v3 = *(v0 + v2);
  if (v3)
  {
    v6 = v1 + 232;
    v4 = *(v1 + 232);
    v5 = *(v6 + 8);
    v7 = *(v5 + 24);
    v8 = v3;
    v7(v4, v5);
    v10 = v9;

    ObjectType = swift_getObjectType();
    (*(v10 + 232))(ObjectType, v10);
    swift_unknownObjectRelease();
  }
}

Swift::Void __swiftcall TTRITextCellContent.setAttributedTextIfNotEditing(_:)(NSAttributedString a1)
{
  if ((TTRITextCellContent.isEditing.getter() & 1) == 0)
  {
    v3 = v1 + *((*MEMORY[0x277D85000] & *v1) + 0x78);
    swift_beginAccess();
    v4 = *v3;
    v5 = *(v3 + 1);
    v6 = v3[16];
    v7 = v3[17];
    v9 = *(v3 + 3);
    v8 = *(v3 + 4);
    v10 = *(v3 + 5);
    sub_21D59B950(v4, v5, v6);
    v11 = v10;
    v12 = a1.super.isa;
    sub_21DBF8E0C();
    sub_21D5968AC(v4, v5, v6);
    isa = a1.super.isa;
    v15 = 0;
    v16 = 1;
    v17 = v7;
    v18 = v9;
    v19 = v8;
    v20 = v10;
    sub_21DBE9678(&isa);
    v13 = v20;
    sub_21D5968AC(isa, v15, v16);
  }
}

double sub_21DA6D780(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v6 = v4 + *((*MEMORY[0x277D85000] & *v4) + 0x78);
  swift_beginAccess();
  v7 = v6[16];
  ObjectType = swift_getObjectType();
  if (v7)
  {
    v9 = (*(a2 + 32))(ObjectType, a2);
    if (!v9)
    {
      v9 = [objc_allocWithZone(MEMORY[0x277CCA898]) init];
    }

    v10 = v9;
    v11 = v9;
    v12 = 0;
  }

  else
  {
    v13 = (*(a2 + 8))(ObjectType, a2);
    if (v14)
    {
      v10 = v13;
    }

    else
    {
      v10 = 0;
    }

    if (v14)
    {
      v12 = v14;
    }

    else
    {
      v12 = 0xE000000000000000;
    }

    sub_21DBF8E0C();
  }

  v16 = *v6;
  v15 = *(v6 + 1);
  v17 = v6[17];
  v18 = *(v6 + 4);
  v34 = *(v6 + 3);
  v19 = *(v6 + 5);
  v43 = v6[16];
  v42 = v17;
  if (v43)
  {
    if (v7)
    {
      sub_21D0D8CF0(0, &qword_280D17680, 0x277D82BB8);
      sub_21D59B950(v16, v15, 1);
      v32 = v19;
      v20 = v19;
      sub_21DBF8E0C();
      sub_21D59B950(v16, v15, 1);
      v21 = sub_21DBFB63C();
      sub_21D5968AC(v10, v12, 1);
      sub_21D5968AC(v16, v15, 1);
      if (v21)
      {
        sub_21D5968AC(v10, v12, 1);
        v7 = v43;
LABEL_25:
        v10 = v16;
        v12 = v15;
        goto LABEL_33;
      }

      sub_21D5968AC(v16, v15, 1);
      v17 = v42;
LABEL_29:
      v19 = v32;
      goto LABEL_30;
    }

    sub_21D59B950(v16, v15, 1);
    v20 = v19;
    sub_21DBF8E0C();
    sub_21D5968AC(v10, v12, 0);
    sub_21D5968AC(v16, v15, 1);
  }

  else
  {
    if ((v7 & 1) == 0)
    {
      if (v16 == v10 && v15 == v12)
      {
        sub_21D59B950(v10, v12, 0);
        v20 = v19;
        sub_21DBF8E0C();
        sub_21D5968AC(v10, v12, 0);
        sub_21D5968AC(v10, v12, 0);
        v7 = 0;
        goto LABEL_33;
      }

      v23 = v19;
      v24 = sub_21DBFC64C();
      sub_21D59B950(v16, v15, 0);
      v32 = v23;
      v20 = v23;
      sub_21DBF8E0C();
      sub_21D5968AC(v10, v12, 0);
      if (v24)
      {
        sub_21D5968AC(v10, v12, 0);
        v7 = 0;
        goto LABEL_25;
      }

      sub_21D5968AC(v16, v15, 0);
      goto LABEL_29;
    }

    sub_21D59B950(v16, v15, 0);
    v20 = v19;
    sub_21DBF8E0C();
    sub_21D5968AC(v10, v12, 1);
    sub_21D5968AC(v16, v15, 0);
  }

LABEL_30:
  v43 = v7;
  v35 = v10;
  v36 = v12;
  v37 = v7;
  v38 = v17;
  v39 = v34;
  v40 = v18;
  v25 = v19;
  v41 = v19;
  sub_21D59B950(v10, v12, v7);
  sub_21DBF8E0C();
  v20 = v20;
  TTRITableCellContent.setStateWithoutUpdatingCell(_:)(&v35);
  v26 = v41;
  sub_21D5968AC(v35, v36, v37);

  if (a3)
  {
    v27 = v4 + qword_27CE652D8;
    swift_beginAccess();
    v28 = *v27;
    if (*v27)
    {
      v29 = *(v27 + 1);
      v35 = v10;
      v36 = v12;
      v37 = v7;
      v38 = v17;
      v39 = v34;
      v40 = v18;
      v41 = v25;
      sub_21D0D0E78(v28, v29);
      sub_21D59B950(v10, v12, v7);
      sub_21DBF8E0C();
      v20 = v20;
      v28(&v35);
      sub_21D0D0E88(v28, v29);
      v30 = v41;
      sub_21D5968AC(v35, v36, v37);
    }
  }

LABEL_33:
  sub_21D5968AC(v10, v12, v7);

  return result;
}

double TTRITextCellContent.willUnassignCell(_:)()
{
  (*(*((*MEMORY[0x277D85000] & *v0) + 0xF0) + 24))(*((*MEMORY[0x277D85000] & *v0) + 0xE8));
  v2 = v1;
  ObjectType = swift_getObjectType();
  (*(v2 + 248))(0, 0, ObjectType, v2);

  swift_unknownObjectRelease();
  return result;
}

double TTRITextCellContent.didAssignCell(_:)()
{
  (*(*((*MEMORY[0x277D85000] & *v0) + 0xF0) + 24))(*((*MEMORY[0x277D85000] & *v0) + 0xE8));
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = *(v2 + 248);
  v5 = swift_unknownObjectRetain();
  v4(v5, &protocol witness table for TTRITextCellContent<A>, ObjectType, v2);

  swift_unknownObjectRelease();
  return result;
}

void TTRITextCellContent.didSetNeedsDisplayCell(oldState:)(uint64_t a1)
{
  v2 = qword_27CE65310;
  if ((*(v1 + qword_27CE65310) & 1) == 0)
  {
    v4 = *a1;
    v5 = *(a1 + 8);
    v6 = *(a1 + 16);
    v7 = v1 + *((*MEMORY[0x277D85000] & *v1) + 0x78);
    swift_beginAccess();
    v8 = *v7;
    v9 = *(v7 + 1);
    if (v7[16])
    {
      if (v6)
      {
        sub_21D0D8CF0(0, &qword_280D17680, 0x277D82BB8);
        v10 = v8;
        v11 = sub_21DBFB63C();
        sub_21D5968AC(v8, v9, 1);
LABEL_8:
        v3 = v11 ^ 1;
        goto LABEL_9;
      }
    }

    else if ((v6 & 1) == 0)
    {
      if (v8 == v4 && v9 == v5)
      {
        v11 = 1;
      }

      else
      {
        v11 = sub_21DBFC64C();
      }

      goto LABEL_8;
    }

    v11 = 0;
    goto LABEL_8;
  }

  v3 = 1;
LABEL_9:
  *(v1 + v2) = v3 & 1;
}

double TTRITextCellContent.updateCell(_:)(void *a1)
{
  v2 = v1;
  v4 = MEMORY[0x277D85000];
  (*(*((*MEMORY[0x277D85000] & *v1) + 0xF0) + 24))(*((*MEMORY[0x277D85000] & *v1) + 0xE8));
  v6 = v5;
  if (*(v1 + qword_27CE65310) == 1)
  {
    *(v1 + qword_27CE65310) = 0;
    v7 = v1 + *((*v4 & *v1) + 0x78);
    swift_beginAccess();
    v8 = *v7;
    v9 = *(v7 + 1);
    v10 = v7[16];
    ObjectType = swift_getObjectType();
    if ((v10 & 1) == 0)
    {
      sub_21DBF8E0C();
      v17.value._countAndFlagsBits = v8;
      v17.value._object = v9;
      TTRITextCellTextArea.setTextIfChanged(_:)(v17);
LABEL_10:
      v19 = sub_21D5968AC(v8, v9, v10);
      if (v7[17])
      {
        v20 = 3;
      }

      else
      {
        v20 = 0;
      }

      [a1 setAccessoryType_];
      goto LABEL_14;
    }

    v33 = v10;
    v12 = *(v6 + 32);
    v32 = v8;
    v31 = ObjectType;
    v13 = v12();
    if (v13)
    {
      v14 = v13;
      sub_21D0D8CF0(0, &qword_280D177E0, 0x277CCA898);
      v15 = v32;
      v16 = sub_21DBFB63C();

      if (v16)
      {
        sub_21D5968AC(v8, v9, 1);
LABEL_9:
        v4 = MEMORY[0x277D85000];
        v10 = v33;
        goto LABEL_10;
      }
    }

    else
    {
      v18 = v32;
    }

    (*(v6 + 40))(v8, v31, v6);
    goto LABEL_9;
  }

LABEL_14:
  v21 = swift_getObjectType();
  v22 = (v2 + *((*v4 & *v2) + 0x78));
  swift_beginAccess();
  v23 = v22[3];
  v24 = v22[4];
  v25 = *(v6 + 88);
  sub_21DBF8E0C();
  v25(v23, v24, v21, v6);
  v26 = v22[5];
  v27 = v26;
  if (!v26)
  {
    v27 = [objc_opt_self() labelColor];
  }

  v28 = *(v6 + 64);
  v29 = v26;
  v28(v27, v21, v6);
  (*(v6 + 112))(*(v2 + qword_27CE65318), v21, v6);
  (*(v6 + 136))(*(v2 + qword_27CE65320), v21, v6);
  (*(v6 + 160))(*(v2 + qword_27CE65328), v21, v6);
  swift_unknownObjectRelease();
  return result;
}

void TTRITextCellContent.textCellTextAreaDidEndEditing(_:)(uint64_t a1, uint64_t a2)
{
  if (*(v2 + qword_27CE652D0))
  {
    sub_21DA6E388(a1, a2);
  }

  v3 = v2 + qword_27CE652E8;
  swift_beginAccess();
  v4 = *v3;
  if (*v3)
  {
    v5 = *(v3 + 1);
    v6 = v2 + *((*MEMORY[0x277D85000] & *v2) + 0x78);
    swift_beginAccess();
    v7 = *v6;
    v8 = *(v6 + 1);
    v9 = v6[16];
    v10 = v6[17];
    v11 = *(v6 + 3);
    v12 = *(v6 + 4);
    v13 = *(v6 + 5);
    v16 = v7;
    v17 = v8;
    v18 = v9;
    v19 = v10;
    v20 = v11;
    v21 = v12;
    v22 = v13;
    sub_21D0D0E78(v4, v5);
    sub_21D59B950(v7, v8, v9);
    v14 = v13;
    sub_21DBF8E0C();
    v4(&v16);
    sub_21D0D0E88(v4, v5);
    v15 = v22;
    sub_21D5968AC(v16, v17, v18);
  }
}

double sub_21DA6E388(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = v3 + *((*MEMORY[0x277D85000] & *v3) + 0x78);
  swift_beginAccess();
  v6 = v5[16];
  ObjectType = swift_getObjectType();
  if (v6)
  {
    v8 = (*(a2 + 32))(ObjectType, a2);
    if (!v8)
    {
      v8 = [objc_allocWithZone(MEMORY[0x277CCA898]) init];
    }

    v9 = v8;
    v10 = v8;
    v11 = 0;
  }

  else
  {
    v12 = (*(a2 + 8))(ObjectType, a2);
    if (v13)
    {
      v9 = v12;
    }

    else
    {
      v9 = 0;
    }

    if (v13)
    {
      v11 = v13;
    }

    else
    {
      v11 = 0xE000000000000000;
    }

    sub_21DBF8E0C();
  }

  v15 = *v5;
  v14 = *(v5 + 1);
  v16 = v5[17];
  v17 = *(v5 + 3);
  v18 = *(v5 + 4);
  v19 = *(v5 + 5);
  v49 = v5[16];
  v48 = v16;
  if (v49)
  {
    v40 = v17;
    if (v6)
    {
      sub_21D0D8CF0(0, &qword_280D17680, 0x277D82BB8);
      sub_21D59B950(v15, v14, 1);
      v37 = v19;
      v20 = v19;
      sub_21DBF8E0C();
      sub_21D59B950(v15, v14, 1);
      v21 = sub_21DBFB63C();
      sub_21D5968AC(v9, v11, 1);
      sub_21D5968AC(v15, v14, 1);
      if (v21)
      {
        sub_21D5968AC(v9, v11, 1);
        v6 = v49;
LABEL_28:
        v9 = v15;
        v11 = v14;
        goto LABEL_31;
      }

      sub_21D5968AC(v15, v14, 1);
      v26 = v48;
      v19 = v37;
      goto LABEL_20;
    }

    v22 = v16;
    sub_21D59B950(v15, v14, 1);
    v20 = v19;
    sub_21DBF8E0C();
    sub_21D5968AC(v9, v11, 0);
    v23 = v15;
    v24 = v14;
    v25 = 1;
LABEL_19:
    sub_21D5968AC(v23, v24, v25);
    v26 = v22;
    goto LABEL_20;
  }

  if (v6)
  {
    v40 = v17;
    v22 = v16;
    sub_21D59B950(v15, v14, 0);
    v20 = v19;
    sub_21DBF8E0C();
    sub_21D5968AC(v9, v11, 1);
    v23 = v15;
    v24 = v14;
    v25 = 0;
    goto LABEL_19;
  }

  if (v15 == v9 && v14 == v11)
  {
    sub_21D59B950(v9, v11, 0);
    v20 = v19;
    sub_21DBF8E0C();
    sub_21D5968AC(v9, v11, 0);
    sub_21D5968AC(v9, v11, 0);
    v6 = 0;
    goto LABEL_31;
  }

  v39 = v16;
  v40 = v17;
  v34 = v19;
  v35 = sub_21DBFC64C();
  sub_21D59B950(v15, v14, 0);
  v20 = v34;
  sub_21DBF8E0C();
  sub_21D5968AC(v9, v11, 0);
  if (v35)
  {
    sub_21D5968AC(v9, v11, 0);
    v6 = 0;
    goto LABEL_28;
  }

  sub_21D5968AC(v15, v14, 0);
  v19 = v34;
  v26 = v39;
LABEL_20:
  v38 = v26;
  v49 = v6;
  v41 = v9;
  v42 = v11;
  v43 = v6;
  v44 = v26;
  v45 = v40;
  v46 = v18;
  v47 = v19;
  sub_21D59B950(v9, v11, v6);
  sub_21DBF8E0C();
  v20 = v20;
  v27 = v19;
  TTRITableCellContent.setStateWithoutUpdatingCell(_:)(&v41);
  v28 = v47;
  sub_21D5968AC(v41, v42, v43);

  v29 = v3 + qword_27CE652D8;
  swift_beginAccess();
  v30 = *v29;
  if (*v29)
  {
    v31 = *(v29 + 1);
    v41 = v9;
    v42 = v11;
    v43 = v6;
    v44 = v38;
    v45 = v40;
    v46 = v18;
    v47 = v27;
    sub_21D0D0E78(v30, v31);
    sub_21D59B950(v9, v11, v6);
    sub_21DBF8E0C();
    v20 = v20;
    v30(&v41);
    sub_21D0D0E88(v30, v31);
    v32 = v47;
    sub_21D5968AC(v41, v42, v43);
  }

LABEL_31:
  sub_21D5968AC(v9, v11, v6);

  return result;
}

uint64_t TTRITextCellContent.textCellTextArea(_:shouldChangeCharactersIn:replacementText:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = v6 + qword_27CE652F0;
  swift_beginAccess();
  v13 = *v12;
  if (*v12)
  {
    v14 = *(v12 + 8);
    ObjectType = swift_getObjectType();
    v22 = a3;
    v23 = a6;
    v16 = *(a2 + 8);

    v17 = v16(ObjectType, a2);
    if (v18)
    {
      v19 = v18;
    }

    else
    {
      v17 = 0;
      v19 = 0xE000000000000000;
    }

    v20 = v13(v17, v19, v22, a4, a5, v23);
    sub_21D0D0E88(v13, v14);
  }

  else
  {
    v20 = 1;
  }

  return v20 & 1;
}

double TTRITextCellContent.textCellTextAreaDidChange(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  if (((*(a2 + 224))(ObjectType, a2) & 1) == 0 && (*(v3 + qword_27CE652D0) & 2) != 0)
  {

    return sub_21DA6E388(a1, a2);
  }

  return result;
}

uint64_t TTRITextCellContent.textCellTextAreaDidReceiveReturnKey(_:)(uint64_t a1, uint64_t a2)
{
  v4 = v2 + qword_27CE652F8;
  swift_beginAccess();
  v5 = *v4;
  if (*v4)
  {
    v6 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    v8 = *(a2 + 8);

    v9 = v8(ObjectType, a2);
    if (v10)
    {
      v11 = v10;
    }

    else
    {
      v9 = 0;
      v11 = 0xE000000000000000;
    }

    v12 = v5(v9, v11);
    sub_21D0D0E88(v5, v6);
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t sub_21DA6EB64()
{
  sub_21D0D0E88(*(v0 + qword_27CE652D8), *(v0 + qword_27CE652D8 + 8));
  sub_21D0D0E88(*(v0 + qword_27CE652E0), *(v0 + qword_27CE652E0 + 8));
  sub_21D0D0E88(*(v0 + qword_27CE652E8), *(v0 + qword_27CE652E8 + 8));
  sub_21D0D0E88(*(v0 + qword_27CE652F0), *(v0 + qword_27CE652F0 + 8));
  sub_21D0D0E88(*(v0 + qword_27CE652F8), *(v0 + qword_27CE652F8 + 8));
  sub_21D0D0E88(*(v0 + qword_27CE65300), *(v0 + qword_27CE65300 + 8));
  v1 = *(v0 + qword_27CE65308);
  v2 = *(v0 + qword_27CE65308 + 8);

  return sub_21D0D0E88(v1, v2);
}

id TTRITextCellContent.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21DA6EC48(uint64_t a1)
{
  sub_21D0D0E88(*(a1 + qword_27CE652D8), *(a1 + qword_27CE652D8 + 8));
  sub_21D0D0E88(*(a1 + qword_27CE652E0), *(a1 + qword_27CE652E0 + 8));
  sub_21D0D0E88(*(a1 + qword_27CE652E8), *(a1 + qword_27CE652E8 + 8));
  sub_21D0D0E88(*(a1 + qword_27CE652F0), *(a1 + qword_27CE652F0 + 8));
  sub_21D0D0E88(*(a1 + qword_27CE652F8), *(a1 + qword_27CE652F8 + 8));
  sub_21D0D0E88(*(a1 + qword_27CE65300), *(a1 + qword_27CE65300 + 8));
  v2 = *(a1 + qword_27CE65308);
  v3 = *(a1 + qword_27CE65308 + 8);

  return sub_21D0D0E88(v2, v3);
}

uint64_t _s15RemindersUICore24TTRITextCellContentStateV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *(a1 + 17);
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = *(a2 + 17);
  v8 = a2[3];
  v7 = a2[4];
  v9 = a2[5];
  if (a1[2])
  {
    if ((a2[2] & 1) == 0)
    {
      return 0;
    }

    sub_21D0D8CF0(0, &qword_280D17680, 0x277D82BB8);
    v10 = sub_21DBFB63C();
  }

  else
  {
    if (a2[2])
    {
      return 0;
    }

    if (*a1 == *a2 && a1[1] == a2[1])
    {
      if (v2 != v6)
      {
        return 0;
      }

      goto LABEL_14;
    }

    v10 = sub_21DBFC64C();
  }

  v12 = v10;
  result = 0;
  if ((v12 & 1) != 0 && ((v2 ^ v6) & 1) == 0)
  {
LABEL_14:
    if (v4)
    {
      if (v7 && (v3 == v8 && v4 == v7 || (sub_21DBFC64C() & 1) != 0))
      {
LABEL_21:
        if (v5)
        {
          if (v9)
          {
            sub_21D0D8CF0(0, &qword_280D1B8F0, 0x277D75348);
            v13 = v9;
            v14 = v5;
            v15 = sub_21DBFB63C();

            if (v15)
            {
              return 1;
            }
          }
        }

        else if (!v9)
        {
          return 1;
        }
      }
    }

    else if (!v7)
    {
      goto LABEL_21;
    }

    return 0;
  }

  return result;
}

void _s15RemindersUICore19TTRITextCellContentC04textD23TextAreaDidBeginEditingyyAA0cdgH0_pF_0()
{
  v1 = v0 + qword_27CE652E0;
  swift_beginAccess();
  v2 = *v1;
  if (*v1)
  {
    v3 = *(v1 + 8);

    v2(v4);
    sub_21D0D0E88(v2, v3);
  }
}

void sub_21DA6EF60(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = v3 + *a3;
  swift_beginAccess();
  v7 = *v6;
  if (*v6)
  {
    v8 = *(v6 + 8);

    v7(a1, a2);
    sub_21D0D0E88(v7, v8);
  }
}

unint64_t sub_21DA6F01C()
{
  result = qword_27CE65330;
  if (!qword_27CE65330)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRITextCellContentStateChangeEvent, &type metadata for TTRITextCellContentStateChangeEvent, v0, v1);
    atomic_store(result, &qword_27CE65330);
  }

  return result;
}

unint64_t sub_21DA6F074()
{
  result = qword_27CE65338;
  if (!qword_27CE65338)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRITextCellContentStateChangeEvent, &type metadata for TTRITextCellContentStateChangeEvent, v0, v1);
    atomic_store(result, &qword_27CE65338);
  }

  return result;
}

unint64_t sub_21DA6F0CC()
{
  result = qword_27CE65340;
  if (!qword_27CE65340)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRITextCellContentStateChangeEvent, &type metadata for TTRITextCellContentStateChangeEvent, v0, v1);
    atomic_store(result, &qword_27CE65340);
  }

  return result;
}

unint64_t sub_21DA6F124()
{
  result = qword_27CE65348[0];
  if (!qword_27CE65348[0])
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRITextCellContentStateChangeEvent, &type metadata for TTRITextCellContentStateChangeEvent, v0, v1);
    atomic_store(result, qword_27CE65348);
  }

  return result;
}

void destroy for TTRITextCellContentState(uint64_t a1)
{
  sub_21D5968AC(*a1, *(a1 + 8), *(a1 + 16));

  v2 = *(a1 + 40);
}

uint64_t initializeWithCopy for TTRITextCellContentState(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  sub_21D59B950(*a2, v5, v6);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 17) = *(a2 + 17);
  v7 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v7;
  v8 = *(a2 + 40);
  *(a1 + 40) = v8;
  sub_21DBF8E0C();
  v9 = v8;
  return a1;
}

uint64_t assignWithCopy for TTRITextCellContentState(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  sub_21D59B950(*a2, v5, v6);
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  sub_21D5968AC(v7, v8, v9);
  *(a1 + 17) = *(a2 + 17);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  sub_21DBF8E0C();

  v10 = *(a1 + 40);
  v11 = *(a2 + 40);
  *(a1 + 40) = v11;
  v12 = v11;

  return a1;
}

uint64_t assignWithTake for TTRITextCellContentState(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  sub_21D5968AC(v5, v6, v7);
  *(a1 + 17) = *(a2 + 17);
  *(a1 + 24) = *(a2 + 24);

  v8 = *(a1 + 40);
  *(a1 + 32) = *(a2 + 32);

  return a1;
}

uint64_t getEnumTagSinglePayload for TTRITextCellContentState(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
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

uint64_t storeEnumTagSinglePayload for TTRITextCellContentState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

uint64_t sub_21DA6F864(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v5[0] = a1;
  v5[1] = a2;
  return v3(v5);
}

uint64_t sub_21DA6F89C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v6[0] = a1;
  v6[1] = a2;
  v3(&v5, v6);
  return v5;
}

uint64_t sub_21DA6F8DC@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(v2 + 16))(*a1, a1[1]);
  *a2 = result & 1;
  return result;
}

uint64_t sub_21DA6F918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(v6 + 16);
  v12[0] = a1;
  v12[1] = a2;
  v11[0] = a3;
  v11[1] = a4;
  v10[0] = a5;
  v10[1] = a6;
  v7(&v9, v12, v11, v10);
  return v9;
}

uint64_t sub_21DA6F968@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  result = (*(v4 + 16))(*a1, a1[1], *a2, a2[1], *a3, a3[1]);
  *a4 = result & 1;
  return result;
}

uint64_t TTRITitledDatePickerCellContentState.init(icon:title:date:datePickerMode:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = 0;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  *(a6 + 24) = 0x1FFFFFFFELL;
  *(a6 + 32) = 0u;
  *(a6 + 48) = 0u;
  *(a6 + 64) = 0;
  v21 = 0;
  v12 = *(a6 + 48);
  v20[2] = *(a6 + 32);
  v20[3] = v12;
  v13 = *(a6 + 16);
  v20[0] = *a6;
  v20[1] = v13;
  sub_21D0CF7E0(v20, &unk_27CE5EA00, &unk_21DC0A7C0);
  v14 = *(a1 + 48);
  *(a6 + 32) = *(a1 + 32);
  *(a6 + 48) = v14;
  *(a6 + 64) = *(a1 + 64);
  v15 = *(a1 + 16);
  *a6 = *a1;
  *(a6 + 16) = v15;
  *(a6 + 72) = a2;
  *(a6 + 80) = a3;
  v16 = type metadata accessor for TTRITitledDatePickerCellContentState(0);
  v17 = *(v16 + 24);
  v18 = sub_21DBF563C();
  result = (*(*(v18 - 8) + 32))(a6 + v17, a4, v18);
  *(a6 + *(v16 + 28)) = a5;
  return result;
}

uint64_t TTRITitledDatePickerCellContentState.icon.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v9 = *(v1 + 32);
  v10 = v2;
  v11 = *(v1 + 64);
  v3 = v11;
  v4 = *(v1 + 16);
  v8[0] = *v1;
  v5 = v8[0];
  v8[1] = v4;
  *(a1 + 32) = v9;
  *(a1 + 48) = v2;
  *(a1 + 64) = v3;
  *a1 = v5;
  *(a1 + 16) = v4;
  return sub_21D1ADB0C(v8, v7);
}

__n128 TTRITitledDatePickerCellContentState.icon.setter(uint64_t a1)
{
  v3 = *(v1 + 48);
  v7[2] = *(v1 + 32);
  v7[3] = v3;
  v8 = *(v1 + 64);
  v4 = *(v1 + 16);
  v7[0] = *v1;
  v7[1] = v4;
  sub_21D0CF7E0(v7, &unk_27CE5EA00, &unk_21DC0A7C0);
  v5 = *(a1 + 48);
  *(v1 + 32) = *(a1 + 32);
  *(v1 + 48) = v5;
  *(v1 + 64) = *(a1 + 64);
  result = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = result;
  return result;
}

uint64_t TTRITitledDatePickerCellContentState.title.getter()
{
  v1 = *(v0 + 72);
  sub_21DBF8E0C();
  return v1;
}

void TTRITitledDatePickerCellContentState.title.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
}

uint64_t TTRITitledDatePickerCellContentState.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TTRITitledDatePickerCellContentState(0) + 24);
  v4 = sub_21DBF563C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t TTRITitledDatePickerCellContentState.date.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for TTRITitledDatePickerCellContentState(0) + 24);
  v4 = sub_21DBF563C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t TTRITitledDatePickerCellContentState.datePickerMode.setter(uint64_t a1)
{
  result = type metadata accessor for TTRITitledDatePickerCellContentState(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t sub_21DA6FE64@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + qword_27CE8EC48);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_21D25A948;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_21D0D0E78(v4, v5);
}

uint64_t sub_21DA6FF04(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_21D25A920;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + qword_27CE8EC48);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_21D0D0E78(v3, v4);
  return sub_21D0EC9F4(v8, v9);
}

uint64_t TTRITitledDatePickerCellContent.stateChangeBlock.getter()
{
  v1 = (v0 + qword_27CE8EC48);
  swift_beginAccess();
  v2 = *v1;
  sub_21D0D0E78(*v1, v1[1]);
  return v2;
}

uint64_t TTRITitledDatePickerCellContent.stateChangeBlock.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + qword_27CE8EC48);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_21D0EC9F4(v6, v7);
}

id TTRITitledDatePickerCellContent.init(state:)(uint64_t a1)
{
  v3 = type metadata accessor for TTRITitledDatePickerCellContentState(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (v1 + qword_27CE8EC48);
  *v6 = 0;
  v6[1] = 0;
  sub_21DA710B0(a1, v5);
  v7 = MEMORY[0x277D85000];
  *(v1 + *((*MEMORY[0x277D85000] & *v1) + 0x68)) = 0;
  *(v1 + *((*v7 & *v1) + 0x70) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + *((*v7 & *v1) + 0x90)) = 0;
  sub_21DA710B0(v5, v1 + *((*v7 & *v1) + 0x78));
  *(v1 + *((*v7 & *v1) + 0x80)) = 0;
  v8 = (v1 + *((*v7 & *v1) + 0x88));
  *v8 = 0xD000000000000014;
  v8[1] = 0x800000021DC74B80;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE653D0, &qword_21DC390D8);
  v12.receiver = v1;
  v12.super_class = v9;
  v10 = objc_msgSendSuper2(&v12, sel_init);
  sub_21DA71114(a1);
  sub_21DA71114(v5);
  return v10;
}

void TTRITitledDatePickerCellContent.updateCell(_:)(uint64_t a1)
{
  v3 = sub_21DBF563C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1 + *((*MEMORY[0x277D85000] & *v1) + 0x78);
  swift_beginAccess();
  v8 = *(a1 + qword_27CE65590);
  sub_21DBF8E0C();
  v9 = v8;
  v10 = sub_21DBFA12C();

  [v9 setText_];

  v11 = *(v7 + 3);
  v28 = *(v7 + 2);
  v29 = v11;
  v30 = v7[64];
  v12 = *(v7 + 1);
  v26 = *v7;
  v27 = v12;
  v13 = a1 + qword_27CE655A0;
  swift_beginAccess();
  v14 = *(v13 + 48);
  v33 = *(v13 + 32);
  v34 = v14;
  v35 = *(v13 + 64);
  v15 = *(v13 + 16);
  v31 = *v13;
  v32 = v15;
  v36[2] = v33;
  v36[3] = v14;
  v37 = v35;
  v36[0] = v31;
  v36[1] = v15;
  v16 = v26;
  v17 = v27;
  v18 = v28;
  v19 = v29;
  *(v13 + 64) = v30;
  *(v13 + 32) = v18;
  *(v13 + 48) = v19;
  *v13 = v16;
  *(v13 + 16) = v17;
  sub_21D1ADB0C(&v26, v24);
  sub_21D1ADB0C(&v31, v24);
  sub_21D0CF7E0(v36, &unk_27CE5EA00, &unk_21DC0A7C0);
  v24[2] = v33;
  v24[3] = v34;
  v25 = v35;
  v24[0] = v31;
  v24[1] = v32;
  sub_21DA7EF48(v24);
  sub_21D0CF7E0(&v31, &unk_27CE5EA00, &unk_21DC0A7C0);
  v20 = *(a1 + qword_27CE653D8);
  v21 = [v20 minuteInterval];
  v22 = type metadata accessor for TTRITitledDatePickerCellContentState(0);
  [v20 setDatePickerMode_];
  [v20 setPreferredDatePickerStyle_];
  [v20 setMinuteInterval_];
  (*(v4 + 16))(v6, &v7[*(v22 + 24)], v3);
  v23 = sub_21DBF55BC();
  (*(v4 + 8))(v6, v3);
  [v20 setDate_];
}

uint64_t sub_21DA70614(uint64_t a1)
{
  v3 = sub_21DBF563C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRITitledDatePickerCellContentState(0);
  MEMORY[0x28223BE20](v7);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v23 - v11;
  sub_21D0CEB98(a1, v24);
  sub_21DA71A5C();
  result = swift_dynamicCast();
  if (result)
  {
    v14 = v23[1];
    v15 = MEMORY[0x277D85000];
    v16 = *((*MEMORY[0x277D85000] & *v1) + 0x78);
    swift_beginAccess();
    sub_21DA710B0(v1 + v16, v12);
    v17 = [v14 date];
    sub_21DBF55FC();

    (*(v4 + 40))(&v12[*(v7 + 24)], v6, v3);
    v18 = *((*v15 & *v1) + 0x90);
    *(v1 + v18) = 1;
    sub_21DA710B0(v12, v9);
    sub_21D5C7798(v9, v19);
    *(v1 + v18) = 0;
    v20 = v1 + qword_27CE8EC48;
    swift_beginAccess();
    v21 = *v20;
    if (*v20)
    {
      v22 = *(v20 + 1);

      v21(v12);
      sub_21D0EC9F4(v21, v22);
    }

    return sub_21DA71114(v12);
  }

  return result;
}

uint64_t sub_21DA7089C(void *a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectRetain();
  v4 = a1;
  sub_21DBFBC1C();
  swift_unknownObjectRelease();
  sub_21DA70614(v6);

  return __swift_destroy_boxed_opaque_existential_0(v6);
}

id TTRITitledDatePickerTableCell.__allocating_init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a3)
  {
    v6 = sub_21DBFA12C();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithStyle:a1 reuseIdentifier:v6];

  return v7;
}

char *TTRITitledDatePickerTableCell.init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v7 = [objc_allocWithZone(MEMORY[0x277D753E8]) initWithFrame_];
  v8 = qword_27CE653D8;
  *&v3[qword_27CE653D8] = v7;
  [v7 _setCustomFontDesign_];
  [*&v3[v8] setRoundsToMinuteInterval_];
  if (a3)
  {
    v9 = sub_21DBFA12C();
  }

  else
  {
    v9 = 0;
  }

  v24.receiver = v3;
  v24.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v24, sel_initWithStyle_reuseIdentifier_, a1, v9);

  v11 = *&v10[qword_27CE653D8];
  type metadata accessor for TTRITitledDatePickerTableCell.DatePickerProvider();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = &v10[qword_27CE65610];
  swift_beginAccess();
  v14 = *v13;
  v15 = *(v13 + 1);
  v16 = *(v13 + 2);
  v17 = *(v13 + 3);
  v18 = *(v13 + 4);
  *v13 = v12;
  *(v13 + 1) = &off_282EE37B8;
  *(v13 + 3) = 0;
  *(v13 + 4) = 0;
  *(v13 + 2) = 0;
  LOBYTE(v12) = v13[40];
  v13[40] = 2;
  v19 = v10;
  v20 = v11;
  sub_21D361B20(v14, v15, v16, v17, v18, v12);
  sub_21D361BB4(v14, v15, v16, v17, v18, v12);
  v22[0] = v14;
  v22[1] = v15;
  v22[2] = v16;
  v22[3] = v17;
  v22[4] = v18;
  v23 = v12;
  sub_21DA7F6B4(v22);

  sub_21D361BB4(v14, v15, v16, v17, v18, v12);
  return v19;
}

char *sub_21DA70BD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    a4 = sub_21DBFA16C();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return TTRITitledDatePickerTableCell.init(style:reuseIdentifier:)(a3, a4, v6);
}

uint64_t sub_21DA70CD8()
{

  return swift_deallocClassInstance();
}

BOOL _s15RemindersUICore36TTRITitledDatePickerCellContentStateV2eeoiySbAC_ACtFZ_0(__int128 *a1, __int128 *a2)
{
  v4 = a1[3];
  v57 = a1[2];
  v58 = v4;
  v5 = a1[1];
  v6 = a1[2];
  v55 = *a1;
  v56 = v5;
  v7 = a2[3];
  v60[2] = a2[2];
  v60[3] = v7;
  v8 = a2[1];
  v9 = a2[2];
  v60[0] = *a2;
  v60[1] = v8;
  v53 = v55;
  v10 = a1[3];
  v51 = v6;
  v52 = v10;
  v59 = *(a1 + 64);
  v61 = *(a2 + 64);
  v54 = *(a1 + 2);
  v11 = *(&v56 + 1);
  v12 = v59;
  *&v50[7] = v60[0];
  *&v50[23] = *(a2 + 2);
  v13 = *(&v8 + 1);
  v14 = a2[3];
  v48 = v9;
  v49 = v14;
  v15 = v61;
  if (*(&v56 + 1) >> 1 != 0xFFFFFFFFLL || v59 >= 2u)
  {
    v17 = *(a1 + 2);
    v38 = *a1;
    *&v39 = v17;
    *(&v39 + 1) = *(&v56 + 1);
    v18 = a1[3];
    v40 = a1[2];
    v41 = v18;
    v42 = v59;
    v37 = v59;
    v35 = v40;
    v36 = v18;
    v33 = v38;
    v34 = v39;
    if (*(&v8 + 1) >> 1 != 0xFFFFFFFFLL || v61 >= 2u)
    {
      v28 = *a2;
      v19 = *(a2 + 2);
      v20 = a2[3];
      v30 = a2[2];
      v31 = v20;
      *&v29 = v19;
      *(&v29 + 1) = v13;
      v32 = v61;
      sub_21D1ADB0C(&v55, v26);
      sub_21D1ADB0C(v60, v26);
      sub_21D1ADB0C(&v38, v26);
      v21 = _s15RemindersUICore31TTRIStaticTableViewStandardCellC4IconO2eeoiySbAE_AEtFZ_0(&v33, &v28);
      v24[2] = v30;
      v24[3] = v31;
      v25 = v32;
      v24[0] = v28;
      v24[1] = v29;
      sub_21D35D940(v24);
      v26[2] = v35;
      v26[3] = v36;
      v27 = v37;
      v26[0] = v33;
      v26[1] = v34;
      sub_21D35D940(v26);
      v28 = v53;
      *&v29 = v54;
      *(&v29 + 1) = v11;
      v30 = v51;
      v31 = v52;
      v32 = v12;
      sub_21D0CF7E0(&v28, &unk_27CE5EA00, &unk_21DC0A7C0);
      if ((v21 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_10;
    }

    v30 = v40;
    v31 = v41;
    v32 = v42;
    v28 = v38;
    v29 = v39;
    sub_21D1ADB0C(&v55, v26);
    sub_21D1ADB0C(v60, v26);
    sub_21D1ADB0C(&v38, v26);
    sub_21D35D940(&v28);
LABEL_16:
    v38 = v53;
    *&v39 = v54;
    *(&v39 + 1) = v11;
    v40 = v51;
    v41 = v52;
    v42 = v12;
    *v43 = *v50;
    *&v43[15] = *&v50[15];
    v44 = v13;
    v46 = v49;
    v45 = v48;
    v47 = v15;
    sub_21D0CF7E0(&v38, qword_27CE5ABE0, &qword_21DC1E920);
    return 0;
  }

  if (*(&v8 + 1) >> 1 != 0xFFFFFFFFLL || v61 >= 2u)
  {
    sub_21D1ADB0C(&v55, &v38);
    sub_21D1ADB0C(v60, &v38);
    goto LABEL_16;
  }

  v38 = *a1;
  *&v39 = *(a1 + 2);
  *(&v39 + 1) = *(&v56 + 1);
  v16 = a1[3];
  v40 = a1[2];
  v41 = v16;
  v42 = v59;
  sub_21D1ADB0C(&v55, &v33);
  sub_21D1ADB0C(v60, &v33);
  sub_21D0CF7E0(&v38, &unk_27CE5EA00, &unk_21DC0A7C0);
LABEL_10:
  if (*(a1 + 9) == *(a2 + 9) && *(a1 + 10) == *(a2 + 10) || (sub_21DBFC64C() & 1) != 0)
  {
    v22 = type metadata accessor for TTRITitledDatePickerCellContentState(0);
    if (sub_21DBF55EC())
    {
      return *(a1 + *(v22 + 28)) == *(a2 + *(v22 + 28));
    }
  }

  return 0;
}

uint64_t sub_21DA710B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRITitledDatePickerCellContentState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21DA71114(uint64_t a1)
{
  v2 = type metadata accessor for TTRITitledDatePickerCellContentState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *initializeBufferWithCopyOfBuffer for TTRITitledDatePickerCellContentState(char *a1, id *a2, uint64_t a3)
{
  v4 = a1;
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v15 = *a2;
    *v4 = *a2;
    v4 = &v15[(v5 + 16) & ~v5];
  }

  else
  {
    v7 = a2[3];
    v8 = *(a2 + 64);
    if (v7 >> 1 != 0xFFFFFFFF || v8 >= 2)
    {
      v10 = *a2;
      v11 = a2[1];
      v12 = a2[2];
      v13 = a2[5];
      v14 = a2[6];
      v23 = a2[7];
      v24 = a2[4];
      sub_21D361F04(*a2, v11, v12, v7, v24, v13, v14, v23, v8);
      *v4 = v10;
      *(v4 + 1) = v11;
      *(v4 + 2) = v12;
      *(v4 + 3) = v7;
      *(v4 + 4) = v24;
      *(v4 + 5) = v13;
      *(v4 + 6) = v14;
      *(v4 + 7) = v23;
      v4[64] = v8;
    }

    else
    {
      v16 = *(a2 + 3);
      *(a1 + 2) = *(a2 + 2);
      *(a1 + 3) = v16;
      a1[64] = *(a2 + 64);
      v17 = *(a2 + 1);
      *a1 = *a2;
      *(a1 + 1) = v17;
    }

    v18 = a2[10];
    *(v4 + 9) = a2[9];
    *(v4 + 10) = v18;
    v19 = *(a3 + 24);
    v20 = sub_21DBF563C();
    v21 = *(*(v20 - 8) + 16);
    sub_21DBF8E0C();
    v21(&v4[v19], a2 + v19, v20);
    *&v4[*(a3 + 28)] = *(a2 + *(a3 + 28));
  }

  return v4;
}

uint64_t destroy for TTRITitledDatePickerCellContentState(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  v5 = *(a1 + 64);
  if (v4 >> 1 != 0xFFFFFFFF || v5 >= 2)
  {
    sub_21D362050(*a1, *(a1 + 8), *(a1 + 16), v4, *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), v5);
  }

  v7 = *(a2 + 24);
  v8 = sub_21DBF563C();
  v9 = *(*(v8 - 8) + 8);

  return v9(a1 + v7, v8);
}

uint64_t initializeWithCopy for TTRITitledDatePickerCellContentState(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v6 = *(a2 + 24);
  v7 = *(a2 + 64);
  if (v6 >> 1 != 0xFFFFFFFF || v7 >= 2)
  {
    v9 = *a2;
    v10 = *(a2 + 8);
    v11 = *(a2 + 16);
    v12 = *(a2 + 32);
    v13 = *(a2 + 40);
    v14 = *(a2 + 48);
    v22 = *(a2 + 56);
    sub_21D361F04(*a2, v10, v11, v6, v12, v13, v14, v22, v7);
    *a1 = v9;
    *(a1 + 8) = v10;
    *(a1 + 16) = v11;
    *(a1 + 24) = v6;
    *(a1 + 32) = v12;
    *(a1 + 40) = v13;
    v3 = a3;
    *(a1 + 48) = v14;
    *(a1 + 56) = v22;
    *(a1 + 64) = v7;
  }

  else
  {
    v15 = *(a2 + 48);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = v15;
    *(a1 + 64) = *(a2 + 64);
    v16 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v16;
  }

  v17 = *(a2 + 80);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = v17;
  v18 = *(v3 + 24);
  v19 = sub_21DBF563C();
  v20 = *(*(v19 - 8) + 16);
  sub_21DBF8E0C();
  v20(a1 + v18, a2 + v18, v19);
  *(a1 + *(v3 + 28)) = *(a2 + *(v3 + 28));
  return a1;
}

uint64_t assignWithCopy for TTRITitledDatePickerCellContentState(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a3;
  v6 = a2[3];
  v7 = *(a2 + 64);
  v9 = v6 >> 1 == 0xFFFFFFFF && v7 < 2;
  if (*(a1 + 24) >> 1 != 0xFFFFFFFFLL || *(a1 + 64) >= 2u)
  {
    if (v9)
    {
      sub_21D35D940(a1);
      *a1 = *a2;
      v12 = *(a2 + 2);
      v11 = *(a2 + 3);
      v13 = *(a2 + 1);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 32) = v12;
      *(a1 + 48) = v11;
      *(a1 + 16) = v13;
    }

    else
    {
      v17 = *a2;
      v18 = a2[1];
      v19 = a2[2];
      v20 = a2[4];
      v21 = a2[5];
      v22 = a2[6];
      v41 = a2[7];
      sub_21D361F04(*a2, v18, v19, v6, v20, v21, v22, v41, v7);
      v23 = *a1;
      v24 = *(a1 + 8);
      v25 = *(a1 + 16);
      v26 = *(a1 + 24);
      v27 = *(a1 + 32);
      v28 = *(a1 + 40);
      v29 = *(a1 + 48);
      v30 = *(a1 + 56);
      v31 = *(a1 + 64);
      *a1 = v17;
      *(a1 + 8) = v18;
      v3 = a3;
      *(a1 + 16) = v19;
      *(a1 + 24) = v6;
      *(a1 + 32) = v20;
      *(a1 + 40) = v21;
      *(a1 + 48) = v22;
      *(a1 + 56) = v41;
      *(a1 + 64) = v7;
      sub_21D362050(v23, v24, v25, v26, v27, v28, v29, v30, v31);
    }
  }

  else if (v9)
  {
    *a1 = *a2;
    v14 = *(a2 + 1);
    v15 = *(a2 + 2);
    v16 = *(a2 + 3);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 32) = v15;
    *(a1 + 48) = v16;
    *(a1 + 16) = v14;
  }

  else
  {
    v32 = *a2;
    v33 = a2[1];
    v34 = a2[2];
    v35 = a2[4];
    v36 = a2[5];
    v37 = a2[6];
    v42 = a2[7];
    sub_21D361F04(*a2, v33, v34, v6, v35, v36, v37, v42, v7);
    *a1 = v32;
    *(a1 + 8) = v33;
    v3 = a3;
    *(a1 + 16) = v34;
    *(a1 + 24) = v6;
    *(a1 + 32) = v35;
    *(a1 + 40) = v36;
    *(a1 + 48) = v37;
    *(a1 + 56) = v42;
    *(a1 + 64) = v7;
  }

  *(a1 + 72) = a2[9];
  *(a1 + 80) = a2[10];
  sub_21DBF8E0C();

  v38 = *(v3 + 24);
  v39 = sub_21DBF563C();
  (*(*(v39 - 8) + 24))(a1 + v38, a2 + v38, v39);
  *(a1 + *(v3 + 28)) = *(a2 + *(v3 + 28));
  return a1;
}

uint64_t initializeWithTake for TTRITitledDatePickerCellContentState(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v6;
  *(a1 + 64) = *(a2 + 64);
  v7 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v7;
  *(a1 + 72) = *(a2 + 72);
  v8 = *(a3 + 24);
  v9 = sub_21DBF563C();
  (*(*(v9 - 8) + 32))(a1 + v8, a2 + v8, v9);
  *(a1 + *(a3 + 28)) = *(a2 + *(a3 + 28));
  return a1;
}

uint64_t assignWithTake for TTRITitledDatePickerCellContentState(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 24);
  v7 = *(a1 + 64);
  if (v6 >> 1 == 0xFFFFFFFF && v7 < 2)
  {
    goto LABEL_12;
  }

  v9 = *(a2 + 24);
  v10 = *(a2 + 64);
  if (v9 >> 1 == 0xFFFFFFFF && v10 < 2)
  {
    sub_21D35D940(a1);
LABEL_12:
    v21 = *(a2 + 48);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = v21;
    *(a1 + 64) = *(a2 + 64);
    v22 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v22;
    goto LABEL_13;
  }

  v12 = *(a2 + 16);
  v13 = *a1;
  v14 = *(a1 + 8);
  v15 = *(a1 + 16);
  v16 = *(a1 + 32);
  v17 = *(a1 + 40);
  v18 = *(a1 + 48);
  v19 = *(a1 + 56);
  *a1 = *a2;
  *(a1 + 16) = v12;
  *(a1 + 24) = v9;
  v20 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v20;
  *(a1 + 64) = v10;
  sub_21D362050(v13, v14, v15, v6, v16, v17, v18, v19, v7);
LABEL_13:
  v23 = *(a2 + 80);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = v23;

  v24 = *(a3 + 24);
  v25 = sub_21DBF563C();
  (*(*(v25 - 8) + 40))(a1 + v24, a2 + v24, v25);
  *(a1 + *(a3 + 28)) = *(a2 + *(a3 + 28));
  return a1;
}

uint64_t sub_21DA718F0(uint64_t a1)
{
  result = sub_21DBF563C();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

unint64_t sub_21DA71A5C()
{
  result = qword_27CE60890;
  if (!qword_27CE60890)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CE60890);
  }

  return result;
}

uint64_t sub_21DA71ABC()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE65410);
  v1 = __swift_project_value_buffer(v0, qword_27CE65410);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id TTRITextFieldTableViewCell.__allocating_init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a3)
  {
    v6 = sub_21DBFA12C();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithStyle:a1 reuseIdentifier:v6];

  return v7;
}

void TTRITextFieldTableViewCell.init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  type metadata accessor for TTRITextField();
  v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v9 = qword_280D176B8;
  v10 = v8;
  if (v9 != -1)
  {
    swift_once();
  }

  v11 = sub_21D900614(1);
  [v10 setFont_];

  v12 = [objc_opt_self() labelColor];
  [v10 setTextColor_];

  [v10 setAdjustsFontForContentSizeCategory_];
  [v10 setAdjustsFontSizeToFitWidth_];
  [v10 setMinimumFontSize_];
  [v10 setClearButtonMode_];
  [v10 setBorderStyle_];
  v13 = objc_allocWithZone(type metadata accessor for TTRITextCellTextFieldTextArea());
  v14 = v10;
  v15 = TTRITextCellTextFieldTextArea.init(textField:)(v14);
  v16 = &v4[qword_27CE65428];
  *v16 = v15;
  v16[1] = &protocol witness table for TTRITextCellTextFieldTextArea;
  v17 = v15;
  if (a3)
  {
    sub_21DBF8E0C();
    v18 = sub_21DBFA12C();
  }

  else
  {
    v18 = 0;
  }

  v35.receiver = v4;
  v35.super_class = ObjectType;
  v19 = objc_msgSendSuper2(&v35, sel_initWithStyle_reuseIdentifier_, a1, v18);

  v20 = v19;
  v21 = [v20 traitCollection];
  v22 = [v21 layoutDirection];

  if (v22 + 1 >= 3)
  {
    if (qword_27CE56FF0 != -1)
    {
      swift_once();
    }

    v31 = sub_21DBF84BC();
    __swift_project_value_buffer(v31, qword_27CE65410);
    v32 = MEMORY[0x277D84F90];
    v33 = sub_21D17716C(MEMORY[0x277D84F90]);
    v34 = sub_21D17716C(v32);
    sub_21DAEAB00("Unknown layout Direction", 24, 2, v33, v34);
    __break(1u);
  }

  else
  {
    v23 = qword_21DC392F8[v22 + 1];

    [v14 setTextAlignment_];

    v24 = qword_27CE5AF20;
    v25 = *&v20[qword_27CE5AF20];
    v26 = v20;
    [v25 setHorizontalAlignment_];
    [*&v20[v24] setVerticalAlignment_];
    v27 = *&v20[v24];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_21DC09CF0;
    *(v28 + 32) = v14;
    sub_21D114EC8();
    v29 = v14;
    v30 = sub_21DBFA5DC();

    [v27 setArrangedSubviews_];
  }
}

void sub_21DA72024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    a4 = sub_21DBFA16C();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  TTRITextFieldTableViewCell.init(style:reuseIdentifier:)(a3, a4, v6);
}

void TTRITextFieldTableViewCell.preferredSeparatorInsetType.getter(uint64_t *a1@<X8>)
{
  v3 = [*(v1 + qword_27CE5AF20) arrangedSubviews];
  if (!v3)
  {
    goto LABEL_10;
  }

  v4 = v3;
  sub_21D114EC8();
  v5 = sub_21DBFA5EC();

  if (!(v5 >> 62))
  {
    if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  if (!sub_21DBFBD7C())
  {
LABEL_9:

LABEL_10:
    v7 = 1;
    goto LABEL_11;
  }

LABEL_4:
  if ((v5 & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x223D44740](0, v5);
    goto LABEL_7;
  }

  if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v6 = *(v5 + 32);
LABEL_7:
    v7 = v6;

LABEL_11:
    *a1 = v7;
    return;
  }

  __break(1u);
}

char *TTRITextCellTextFieldTextArea.init(textField:)(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC15RemindersUICore29TTRITextCellTextFieldTextArea_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC15RemindersUICore29TTRITextCellTextFieldTextArea_textField] = a1;
  v13.receiver = v1;
  v13.super_class = ObjectType;
  v4 = a1;
  v5 = objc_msgSendSuper2(&v13, sel_init);
  v6 = OBJC_IVAR____TtC15RemindersUICore29TTRITextCellTextFieldTextArea_textField;
  v7 = *&v5[OBJC_IVAR____TtC15RemindersUICore29TTRITextCellTextFieldTextArea_textField];
  v8 = v5;
  [v7 addTarget:v8 action:sel_textFieldEditingChanged forControlEvents:0x20000];
  v9 = *&v5[v6];
  [v9 setDelegate_];

  v10 = *&v5[v6];
  v11 = OBJC_IVAR____TtC15RemindersUICore13TTRITextField_ttriAccessibilityLabeledWithPlaceholder;
  swift_beginAccess();
  v10[v11] = 1;

  return v8;
}

void (*TTRITextCellTextFieldTextArea.text.modify(uint64_t *a1))(uint64_t a1, uint64_t a2, double a3)
{
  v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore29TTRITextCellTextFieldTextArea_textField);
  a1[2] = v3;
  v4 = [v3 text];
  if (v4)
  {
    v5 = v4;
    v6 = sub_21DBFA16C();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *a1 = v6;
  a1[1] = v8;
  return sub_21DA724B4;
}

id TTRITextCellTextFieldTextArea.attributedText.getter()
{
  v1 = [*(v0 + OBJC_IVAR____TtC15RemindersUICore29TTRITextCellTextFieldTextArea_textField) attributedText];

  return v1;
}

void TTRITextCellTextFieldTextArea.attributedText.setter(void *a1)
{
  [*(v1 + OBJC_IVAR____TtC15RemindersUICore29TTRITextCellTextFieldTextArea_textField) setAttributedText_];
}

void (*TTRITextCellTextFieldTextArea.attributedText.modify(void *a1))(id *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore29TTRITextCellTextFieldTextArea_textField);
  a1[1] = v3;
  *a1 = [v3 attributedText];
  return sub_21DA725B4;
}

void sub_21DA725B4(id *a1)
{
  v1 = *a1;
  [a1[1] setAttributedText_];
}

id TTRITextCellTextFieldTextArea.textColor.getter()
{
  v1 = [*(v0 + OBJC_IVAR____TtC15RemindersUICore29TTRITextCellTextFieldTextArea_textField) textColor];

  return v1;
}

void TTRITextCellTextFieldTextArea.textColor.setter(void *a1)
{
  [*(v1 + OBJC_IVAR____TtC15RemindersUICore29TTRITextCellTextFieldTextArea_textField) setTextColor_];
}

void (*TTRITextCellTextFieldTextArea.textColor.modify(void *a1))(id *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore29TTRITextCellTextFieldTextArea_textField);
  a1[1] = v3;
  *a1 = [v3 textColor];
  return sub_21DA726F0;
}

void sub_21DA726F0(id *a1)
{
  v1 = *a1;
  [a1[1] setTextColor_];
}

uint64_t sub_21DA72744(SEL *a1)
{
  v2 = [*(v1 + OBJC_IVAR____TtC15RemindersUICore29TTRITextCellTextFieldTextArea_textField) *a1];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_21DBFA16C();

  return v4;
}

void sub_21DA727B4(void *a1@<X0>, SEL *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = [*(*a1 + OBJC_IVAR____TtC15RemindersUICore29TTRITextCellTextFieldTextArea_textField) *a2];
  if (v4)
  {
    v5 = v4;
    v6 = sub_21DBFA16C();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *a3 = v6;
  a3[1] = v8;
}

void sub_21DA72824(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = *(*a2 + OBJC_IVAR____TtC15RemindersUICore29TTRITextCellTextFieldTextArea_textField);
  if (*(a1 + 8))
  {
    v7 = sub_21DBFA12C();
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  [v6 *a5];
}

void sub_21DA728AC(double a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v6 = *(v4 + OBJC_IVAR____TtC15RemindersUICore29TTRITextCellTextFieldTextArea_textField);
  if (a3)
  {
    v7 = sub_21DBFA12C();
  }

  else
  {
    v7 = 0;
  }

  [v6 *a4];
}

void (*TTRITextCellTextFieldTextArea.placeholder.modify(uint64_t *a1))(uint64_t a1, uint64_t a2, double a3)
{
  v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore29TTRITextCellTextFieldTextArea_textField);
  a1[2] = v3;
  v4 = [v3 placeholder];
  if (v4)
  {
    v5 = v4;
    v6 = sub_21DBFA16C();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *a1 = v6;
  a1[1] = v8;
  return sub_21DA729BC;
}

void sub_21DA729C8(uint64_t a1, char a2, SEL *a3, double a4)
{
  v6 = *(a1 + 8);
  if (a2)
  {
    if (v6)
    {
      sub_21DBF8E0C();
      v7 = sub_21DBFA12C();
    }

    else
    {
      v7 = 0;
    }

    [*(a1 + 16) *a3];
  }

  else if (v6)
  {
    v7 = sub_21DBFA12C();

    [*(a1 + 16) *a3];
  }

  else
  {
    v7 = 0;
    [*(a1 + 16) *a3];
  }
}

id (*TTRITextCellTextFieldTextArea.autocapitalizationType.modify(void *a1))(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore29TTRITextCellTextFieldTextArea_textField);
  a1[1] = v3;
  *a1 = [v3 autocapitalizationType];
  return sub_21DA72B28;
}

id (*TTRITextCellTextFieldTextArea.autocorrectionType.modify(void *a1))(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore29TTRITextCellTextFieldTextArea_textField);
  a1[1] = v3;
  *a1 = [v3 autocorrectionType];
  return sub_21DA72BCC;
}

id (*TTRITextCellTextFieldTextArea.keyboardType.modify(void *a1))(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore29TTRITextCellTextFieldTextArea_textField);
  a1[1] = v3;
  *a1 = [v3 keyboardType];
  return sub_21DA72C70;
}

id (*TTRITextCellTextFieldTextArea.returnKeyType.modify(void *a1))(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore29TTRITextCellTextFieldTextArea_textField);
  a1[1] = v3;
  *a1 = [v3 returnKeyType];
  return sub_21DA72D14;
}

Swift::Void __swiftcall TTRITextCellTextFieldTextArea.beginEditing()()
{
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore29TTRITextCellTextFieldTextArea_textField);
  v2 = [v1 window];
  [v2 makeKeyWindow];

  [v1 becomeFirstResponder];
}

Swift::Void __swiftcall TTRITextCellTextFieldTextArea.selectAllText()()
{
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore29TTRITextCellTextFieldTextArea_textField);
  v2 = [v1 beginningOfDocument];
  v3 = [v1 endOfDocument];
  v4 = [v1 textRangeFromPosition:v2 toPosition:v3];

  [v1 setSelectedTextRange_];
}

double TTRITextCellTextFieldTextArea.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC15RemindersUICore29TTRITextCellTextFieldTextArea_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return result;
}

void (*TTRITextCellTextFieldTextArea.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC15RemindersUICore29TTRITextCellTextFieldTextArea_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_21D1E55F4;
}

id TTRITextCellTextFieldTextArea.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void (*sub_21DA731D0(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = TTRITextCellTextFieldTextArea.text.modify(v2);
  return sub_21D4C3D30;
}

id sub_21DA73240()
{
  v1 = [*(v0 + OBJC_IVAR____TtC15RemindersUICore29TTRITextCellTextFieldTextArea_textField) attributedText];

  return v1;
}

void sub_21DA73280(void *a1)
{
  [*(v1 + OBJC_IVAR____TtC15RemindersUICore29TTRITextCellTextFieldTextArea_textField) setAttributedText_];
}

void (*sub_21DA732D0(void *a1))(id *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore29TTRITextCellTextFieldTextArea_textField);
  a1[1] = v3;
  *a1 = [v3 attributedText];
  return sub_21DA725B4;
}

id sub_21DA73334()
{
  v1 = [*(v0 + OBJC_IVAR____TtC15RemindersUICore29TTRITextCellTextFieldTextArea_textField) textColor];

  return v1;
}

void sub_21DA73374(void *a1)
{
  [*(v1 + OBJC_IVAR____TtC15RemindersUICore29TTRITextCellTextFieldTextArea_textField) setTextColor_];
}

void (*sub_21DA733C4(void *a1))(id *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore29TTRITextCellTextFieldTextArea_textField);
  a1[1] = v3;
  *a1 = [v3 textColor];
  return sub_21DA726F0;
}

uint64_t sub_21DA73434(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = [*(v3 + OBJC_IVAR____TtC15RemindersUICore29TTRITextCellTextFieldTextArea_textField) *a3];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = sub_21DBFA16C();

  return v6;
}

void sub_21DA734AC(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, SEL *a6)
{
  v8 = *(v6 + OBJC_IVAR____TtC15RemindersUICore29TTRITextCellTextFieldTextArea_textField);
  if (a3)
  {
    v9 = sub_21DBFA12C();
  }

  else
  {
    v9 = 0;
  }

  [v8 *a6];
}

void (*sub_21DA7352C(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = TTRITextCellTextFieldTextArea.placeholder.modify(v2);
  return sub_21D4C30A8;
}

id (*sub_21DA735D0(void *a1))(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore29TTRITextCellTextFieldTextArea_textField);
  a1[1] = v3;
  *a1 = [v3 autocapitalizationType];
  return sub_21DA72B28;
}

id (*sub_21DA73660(void *a1))(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore29TTRITextCellTextFieldTextArea_textField);
  a1[1] = v3;
  *a1 = [v3 autocorrectionType];
  return sub_21DA72BCC;
}

id (*sub_21DA736F0(void *a1))(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore29TTRITextCellTextFieldTextArea_textField);
  a1[1] = v3;
  *a1 = [v3 keyboardType];
  return sub_21DA72C70;
}

id (*sub_21DA73780(void *a1))(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC15RemindersUICore29TTRITextCellTextFieldTextArea_textField);
  a1[1] = v3;
  *a1 = [v3 returnKeyType];
  return sub_21DA72D14;
}

id sub_21DA737DC()
{
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore29TTRITextCellTextFieldTextArea_textField);
  v2 = [v1 window];
  [v2 makeKeyWindow];

  return [v1 becomeFirstResponder];
}

void sub_21DA738BC()
{
  v1 = *(v0 + OBJC_IVAR____TtC15RemindersUICore29TTRITextCellTextFieldTextArea_textField);
  v2 = [v1 beginningOfDocument];
  v3 = [v1 endOfDocument];
  v4 = [v1 textRangeFromPosition:v2 toPosition:v3];

  [v1 setSelectedTextRange_];
}

double sub_21DA739D0(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC15RemindersUICore29TTRITextCellTextFieldTextArea_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return result;
}

void (*sub_21DA73A3C(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC15RemindersUICore29TTRITextCellTextFieldTextArea_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_21D6A4448;
}

Swift::Bool __swiftcall TTRITextCellTextFieldTextArea.textFieldShouldBeginEditing(_:)(UITextField *a1)
{
  v3 = v1 + OBJC_IVAR____TtC15RemindersUICore29TTRITextCellTextFieldTextArea_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    (*(v4 + 48))(v1, &protocol witness table for TTRITextCellTextFieldTextArea, a1, &protocol witness table for UITextField, ObjectType, v4);
    swift_unknownObjectRelease();
  }

  return 1;
}

Swift::Void __swiftcall TTRITextCellTextFieldTextArea.textFieldDidBeginEditing(_:)(UITextField *a1)
{
  v2 = v1 + OBJC_IVAR____TtC15RemindersUICore29TTRITextCellTextFieldTextArea_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v2 + 8);
    ObjectType = swift_getObjectType();
    (*(v3 + 8))(v1, &protocol witness table for TTRITextCellTextFieldTextArea, ObjectType, v3);
    swift_unknownObjectRelease();
  }
}

Swift::Bool __swiftcall TTRITextCellTextFieldTextArea.textField(_:shouldChangeCharactersIn:replacementString:)(UITextField *_, __C::_NSRange shouldChangeCharactersIn, Swift::String replacementString)
{
  object = replacementString._object;
  countAndFlagsBits = replacementString._countAndFlagsBits;
  length = shouldChangeCharactersIn.length;
  location = shouldChangeCharactersIn.location;
  v8 = v3 + OBJC_IVAR____TtC15RemindersUICore29TTRITextCellTextFieldTextArea_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v9 = *(v8 + 8);
    ObjectType = swift_getObjectType();
    v11 = (*(v9 + 16))(v3, &protocol witness table for TTRITextCellTextFieldTextArea, location, length, countAndFlagsBits, object, ObjectType, v9);
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 1;
  }

  return v11 & 1;
}

Swift::Bool __swiftcall TTRITextCellTextFieldTextArea.textFieldShouldReturn(_:)(UITextField *a1)
{
  v3 = v1 + OBJC_IVAR____TtC15RemindersUICore29TTRITextCellTextFieldTextArea_delegate;
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong() || (v4 = *(v3 + 8), ObjectType = swift_getObjectType(), v6 = (*(v4 + 32))(v1, &protocol witness table for TTRITextCellTextFieldTextArea, ObjectType, v4), swift_unknownObjectRelease(), (v6 & 1) == 0))
  {
    [(UITextField *)a1 resignFirstResponder];
  }

  return 0;
}

Swift::Void __swiftcall TTRITextCellTextFieldTextArea.textFieldDidEndEditing(_:)(UITextField *a1)
{
  v2 = v1;
  v4 = v2 + OBJC_IVAR____TtC15RemindersUICore29TTRITextCellTextFieldTextArea_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    (*(v5 + 56))(v2, &protocol witness table for TTRITextCellTextFieldTextArea, a1, &protocol witness table for UITextField, ObjectType, v5);
    swift_unknownObjectRelease();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = *(v4 + 8);
    v8 = swift_getObjectType();
    (*(v7 + 40))(v2, &protocol witness table for TTRITextCellTextFieldTextArea, v8, v7);
    swift_unknownObjectRelease();
  }
}

id keypath_get_2Tm_1@<X0>(void *a1@<X0>, SEL *a2@<X3>, void *a3@<X8>)
{
  result = [*(*a1 + OBJC_IVAR____TtC15RemindersUICore29TTRITextCellTextFieldTextArea_textField) *a2];
  *a3 = result;
  return result;
}

uint64_t type metadata accessor for TTRITextFieldTableViewCell(uint64_t a1)
{
  result = qword_27CE65448;
  if (!qword_27CE65448)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 TTRIToggleCellContentState.init(icon:title:subtitle:ttriAccessibilitySubtitle:isOn:isSelectable:isControlHidden:isSeparatorHidden:ttriAccessibilitySimulatesExpandAndCollapse:ttriAccessibilityIsInSimulatedExpandedState:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, char a10, char a11, char a12, char a13, char a14)
{
  *a9 = 0;
  *(a9 + 8) = 0;
  *(a9 + 16) = 0;
  *(a9 + 24) = 0x1FFFFFFFELL;
  *(a9 + 32) = 0u;
  *(a9 + 48) = 0u;
  *(a9 + 64) = 0;
  v28 = 0;
  v20 = *(a9 + 48);
  v27[2] = *(a9 + 32);
  v27[3] = v20;
  v21 = *(a9 + 16);
  v27[0] = *a9;
  v27[1] = v21;
  sub_21D0CF7E0(v27, &unk_27CE5EA00, &unk_21DC0A7C0);
  v22 = *(a1 + 48);
  *(a9 + 32) = *(a1 + 32);
  *(a9 + 48) = v22;
  *(a9 + 64) = *(a1 + 64);
  result = *(a1 + 16);
  *a9 = *a1;
  *(a9 + 16) = result;
  *(a9 + 72) = a2;
  *(a9 + 80) = a3;
  *(a9 + 88) = a4;
  *(a9 + 96) = a5;
  *(a9 + 104) = a6;
  *(a9 + 112) = a7;
  *(a9 + 120) = a8;
  *(a9 + 121) = a10;
  *(a9 + 122) = a11;
  *(a9 + 123) = a12;
  *(a9 + 124) = a13;
  *(a9 + 125) = a14;
  return result;
}

uint64_t TTRIToggleCellContentState.icon.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v9 = *(v1 + 32);
  v10 = v2;
  v11 = *(v1 + 64);
  v3 = v11;
  v4 = *(v1 + 16);
  v8[0] = *v1;
  v5 = v8[0];
  v8[1] = v4;
  *(a1 + 32) = v9;
  *(a1 + 48) = v2;
  *(a1 + 64) = v3;
  *a1 = v5;
  *(a1 + 16) = v4;
  return sub_21D1ADB0C(v8, v7);
}

__n128 TTRIToggleCellContentState.icon.setter(uint64_t a1)
{
  v3 = *(v1 + 48);
  v7[2] = *(v1 + 32);
  v7[3] = v3;
  v8 = *(v1 + 64);
  v4 = *(v1 + 16);
  v7[0] = *v1;
  v7[1] = v4;
  sub_21D0CF7E0(v7, &unk_27CE5EA00, &unk_21DC0A7C0);
  v5 = *(a1 + 48);
  *(v1 + 32) = *(a1 + 32);
  *(v1 + 48) = v5;
  *(v1 + 64) = *(a1 + 64);
  result = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = result;
  return result;
}

uint64_t TTRIToggleCellContentState.title.getter()
{
  v1 = *(v0 + 72);
  sub_21DBF8E0C();
  return v1;
}

void TTRIToggleCellContentState.title.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
}

uint64_t TTRIToggleCellContentState.subtitle.getter()
{
  v1 = *(v0 + 88);
  sub_21DBF8E0C();
  return v1;
}

void TTRIToggleCellContentState.subtitle.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
}

uint64_t TTRIToggleCellContentState.ttriAccessibilitySubtitle.getter()
{
  v1 = *(v0 + 104);
  sub_21DBF8E0C();
  return v1;
}

void TTRIToggleCellContentState.ttriAccessibilitySubtitle.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 104) = a1;
  *(v2 + 112) = a2;
}

uint64_t sub_21DA748A0@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + qword_27CE654C0);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_21D0E6070;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_21D0D0E78(v4, v5);
}

uint64_t sub_21DA74940(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_21D11DA58;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + qword_27CE654C0);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_21D0D0E78(v3, v4);
  return sub_21D0D0E88(v8, v9);
}

uint64_t sub_21DA74AA8@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + qword_27CE654C8);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_21D25A948;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_21D0D0E78(v4, v5);
}

uint64_t sub_21DA74B48(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_21D25A920;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + qword_27CE654C8);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_21D0D0E78(v3, v4);
  return sub_21D0D0E88(v8, v9);
}

uint64_t sub_21DA74C30(void *a1, void (*a2)(void, void, __n128))
{
  v4 = (v2 + *a1);
  swift_beginAccess();
  v5 = *v4;
  (a2)(*v4, v4[1]);
  return v5;
}

uint64_t sub_21DA74CB8(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v8 = (v4 + *a3);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  *v8 = a1;
  v8[1] = a2;
  return a4(v9, v10);
}

id TTRIToggleCellContent.init(state:)(_OWORD *a1)
{
  v3 = (v1 + qword_27CE654C0);
  *v3 = 0;
  v3[1] = 0;
  v4 = (v1 + qword_27CE654C8);
  *v4 = 0;
  v4[1] = 0;
  v5 = MEMORY[0x277D85000];
  *(v1 + *((*MEMORY[0x277D85000] & *v1) + 0x68)) = 0;
  *(v1 + *((*v5 & *v1) + 0x70) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + *((*v5 & *v1) + 0x90)) = 0;
  v6 = (v1 + *((*v5 & *v1) + 0x78));
  v7 = a1[3];
  v6[2] = a1[2];
  v6[3] = v7;
  v8 = a1[1];
  *v6 = *a1;
  v6[1] = v8;
  *(v6 + 110) = *(a1 + 110);
  v9 = a1[6];
  v6[5] = a1[5];
  v6[6] = v9;
  v6[4] = a1[4];
  *(v1 + *((*v5 & *v1) + 0x80)) = 0;
  v10 = (v1 + *((*v5 & *v1) + 0x88));
  *v10 = 0x6543686374697753;
  v10[1] = 0xEA00000000006C6CLL;
  v12.receiver = v1;
  v12.super_class = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE622A0, &unk_21DC1A290);
  return objc_msgSendSuper2(&v12, sel_init);
}

void TTRIToggleCellContent.selectionBehavior.getter(char *a1@<X8>)
{
  v3 = v1 + *((*MEMORY[0x277D85000] & *v1) + 0x78);
  swift_beginAccess();
  if (v3[121])
  {
    v4 = 1;
  }

  else
  {
    v4 = 3;
  }

  *a1 = v4;
}

Swift::Void __swiftcall TTRIToggleCellContent.cellDidBecomeSelected()()
{
  v1 = v0 + *((*MEMORY[0x277D85000] & *v0) + 0x78);
  swift_beginAccess();
  if (v1[121] == 1)
  {
    v2 = v0 + qword_27CE654C0;
    swift_beginAccess();
    v3 = *v2;
    if (*v2)
    {
      v4 = *(v2 + 1);

      v3(v5);
      sub_21D0D0E88(v3, v4);
    }
  }
}

uint64_t TTRIToggleCellContent.updateCell(_:)(uint64_t a1)
{
  v5[2] = a1;
  v1 = *(a1 + qword_27CE5AF20);
  v2 = swift_allocObject();
  *(v2 + 16) = sub_21DA7719C;
  *(v2 + 24) = v5;
  aBlock[4] = sub_21D0E6070;
  aBlock[5] = v2;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_133;
  v3 = _Block_copy(aBlock);

  [v1 performBatchUpdates_];
  _Block_release(v3);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21DA751C4(uint64_t a1, void *a2)
{
  v3 = a2 + *((*MEMORY[0x277D85000] & *a2) + 0x78);
  swift_beginAccess();
  v4 = *(v3 + 3);
  v49 = *(v3 + 2);
  v50 = v4;
  v51 = v3[64];
  v5 = *(v3 + 1);
  v47 = *v3;
  v48 = v5;
  v6 = a1 + qword_27CE655A0;
  swift_beginAccess();
  v7 = *(v6 + 48);
  v54 = *(v6 + 32);
  v55 = v7;
  v56 = *(v6 + 64);
  v8 = *(v6 + 16);
  v52 = *v6;
  v53 = v8;
  v57[2] = v54;
  v57[3] = v7;
  v58 = v56;
  v57[0] = v52;
  v57[1] = v8;
  v9 = v47;
  v10 = v48;
  v11 = v49;
  v12 = v50;
  *(v6 + 64) = v51;
  *(v6 + 32) = v11;
  *(v6 + 48) = v12;
  *v6 = v9;
  *(v6 + 16) = v10;
  sub_21D1ADB0C(&v47, &v42);
  sub_21D1ADB0C(&v52, &v42);
  sub_21D0CF7E0(v57, &unk_27CE5EA00, &unk_21DC0A7C0);
  v44 = v54;
  v45 = v55;
  v46 = v56;
  v42 = v52;
  v43 = v53;
  sub_21DA7EF48(&v42);
  sub_21D0CF7E0(&v52, &unk_27CE5EA00, &unk_21DC0A7C0);
  v13 = *(a1 + qword_27CE65590);
  sub_21DBF8E0C();
  v14 = v13;
  v15 = sub_21DBFA12C();

  [v14 setText_];

  v16 = *(v3 + 11);
  v17 = *(v3 + 12);
  sub_21DBF8E0C();
  sub_21DA7B5A0(v16, v17);
  v18 = *(v3 + 13);
  v19 = *(v3 + 14);
  v20 = (a1 + qword_27CE655D0);
  swift_beginAccess();
  *v20 = v18;
  v20[1] = v19;
  sub_21DBF8E0C();

  v21 = *(a1 + qword_27CE654D0);
  [v21 setOn_];
  if (v3[122])
  {
    v21 = 0;
    v22 = -1;
  }

  else
  {
    v23 = v21;
    v22 = 1;
  }

  v24 = a1 + qword_27CE65610;
  swift_beginAccess();
  v25 = *v24;
  v26 = *(v24 + 8);
  v27 = *(v24 + 16);
  v28 = *(v24 + 24);
  v29 = *(v24 + 32);
  *v24 = v21;
  *(v24 + 8) = 0u;
  *(v24 + 24) = 0u;
  v30 = *(v24 + 40);
  *(v24 + 40) = v22;
  sub_21D361B20(v25, v26, v27, v28, v29, v30);
  sub_21D361BB4(v25, v26, v27, v28, v29, v30);
  *&v42 = v25;
  *(&v42 + 1) = v26;
  *&v43 = v27;
  *(&v43 + 1) = v28;
  *&v44 = v29;
  BYTE8(v44) = v30;
  sub_21DA7F6B4(&v42);
  sub_21D361BB4(v25, v26, v27, v28, v29, v30);
  v31 = v3[123];
  v32 = qword_27CE65580;
  swift_beginAccess();
  v33 = *(a1 + v32);
  *(a1 + v32) = v31;
  if (v31 != v33)
  {
    [*(a1 + qword_27CE5AF20) invalidateIntrinsicContentSize];
  }

  *(a1 + qword_27CE654E0) = v3[124];
  *(a1 + qword_27CE654E8) = v3[125];
  *(a1 + qword_27CE654F0) = v3[121];
  v34 = (a2 + qword_27CE654C0);
  swift_beginAccess();
  v35 = *v34;
  v36 = v34[1];
  v37 = (a1 + qword_27CE654D8);
  v38 = *(a1 + qword_27CE654D8);
  v39 = *(a1 + qword_27CE654D8 + 8);
  *v37 = v35;
  v37[1] = v36;
  sub_21D0D0E78(v35, v36);
  return sub_21D0D0E88(v38, v39);
}

void sub_21DA75598(uint64_t a1)
{
  sub_21D0CEB98(a1, v41);
  sub_21D0D8CF0(0, &qword_27CE65518, 0x277D75AE8);
  if (swift_dynamicCast())
  {
    v2 = v40;
    v3 = [v40 isOn];
    v4 = v1 + *((*MEMORY[0x277D85000] & *v1) + 0x78);
    swift_beginAccess();
    v5 = *(v4 + 5);
    v37 = *(v4 + 4);
    v38 = v5;
    v39[0] = *(v4 + 6);
    v6 = v39[0];
    *(v39 + 14) = *(v4 + 110);
    v7 = *(v4 + 1);
    v34[0] = *v4;
    v34[1] = v7;
    v8 = *(v4 + 3);
    v35 = *(v4 + 2);
    v36 = v8;
    v42[4] = v37;
    v42[5] = v5;
    v42[6] = v6;
    v43 = *(v4 + 14);
    v42[0] = v34[0];
    v42[1] = v7;
    v42[2] = v35;
    v42[3] = v8;
    v44 = v3;
    v46 = v4[125];
    v45 = *(v4 + 121);
    sub_21D539B98(v34, v32);
    sub_21D5C6D8C(v42);
    v9 = v1 + qword_27CE654C8;
    swift_beginAccess();
    v10 = *v9;
    if (*v9)
    {
      v11 = *(v4 + 5);
      v12 = *(v4 + 3);
      v29 = *(v4 + 4);
      v30 = v11;
      v13 = *(v4 + 5);
      v31[0] = *(v4 + 6);
      *(v31 + 14) = *(v4 + 110);
      v14 = *(v4 + 1);
      v26[0] = *v4;
      v26[1] = v14;
      v15 = *(v4 + 3);
      v17 = *v4;
      v16 = *(v4 + 1);
      v27 = *(v4 + 2);
      v28 = v15;
      v23 = v29;
      v24 = v13;
      v25[0] = *(v4 + 6);
      *(v25 + 14) = *(v4 + 110);
      v19 = v17;
      v20 = v16;
      v18 = *(v9 + 1);
      v21 = v27;
      v22 = v12;
      sub_21D0D0E78(v10, v18);
      sub_21D539B98(v26, v32);
      v10(&v19);
      sub_21D0D0E88(v10, v18);

      v32[4] = v23;
      v32[5] = v24;
      v33[0] = v25[0];
      *(v33 + 14) = *(v25 + 14);
      v32[0] = v19;
      v32[1] = v20;
      v32[2] = v21;
      v32[3] = v22;
      sub_21D5D2B7C(v32);
    }

    else
    {
    }
  }
}

uint64_t sub_21DA757BC(void *a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectRetain();
  v4 = a1;
  sub_21DBFBC1C();
  swift_unknownObjectRelease();
  sub_21DA75598(v6);

  return __swift_destroy_boxed_opaque_existential_0(v6);
}

uint64_t sub_21DA75850()
{
  sub_21D0D0E88(*(v0 + qword_27CE654C0), *(v0 + qword_27CE654C0 + 8));
  v1 = *(v0 + qword_27CE654C8);
  v2 = *(v0 + qword_27CE654C8 + 8);

  return sub_21D0D0E88(v1, v2);
}

uint64_t sub_21DA7589C(uint64_t a1)
{
  sub_21D0D0E88(*(a1 + qword_27CE654C0), *(a1 + qword_27CE654C0 + 8));
  v2 = *(a1 + qword_27CE654C8);
  v3 = *(a1 + qword_27CE654C8 + 8);

  return sub_21D0D0E88(v2, v3);
}

id TTRIToggleTableViewCell.__allocating_init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a3)
  {
    v6 = sub_21DBFA12C();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithStyle:a1 reuseIdentifier:v6];

  return v7;
}

char *TTRIToggleTableViewCell.init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v7 = &v3[qword_27CE654D8];
  *v7 = 0;
  v7[1] = 0;
  v8 = [objc_allocWithZone(MEMORY[0x277D75AE8]) init];
  *&v3[qword_27CE654D0] = v8;
  v3[qword_27CE654E0] = 0;
  v3[qword_27CE654E8] = 0;
  v3[qword_27CE654F0] = 0;
  v9 = *v7;
  v10 = v7[1];
  *v7 = 0;
  v7[1] = 0;
  sub_21D0D0E88(v9, v10);
  if (a3)
  {
    v11 = sub_21DBFA12C();
  }

  else
  {
    v11 = 0;
  }

  v26.receiver = v3;
  v26.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v26, sel_initWithStyle_reuseIdentifier_, a1, v11);

  v13 = *&v12[qword_27CE654D0];
  v14 = &v12[qword_27CE65610];
  swift_beginAccess();
  v15 = *v14;
  v16 = *(v14 + 1);
  v17 = *(v14 + 2);
  v18 = *(v14 + 3);
  v19 = *(v14 + 4);
  *v14 = v13;
  *(v14 + 8) = 0u;
  *(v14 + 24) = 0u;
  v20 = v14[40];
  v14[40] = 1;
  v21 = v12;
  v22 = v13;
  sub_21D361B20(v15, v16, v17, v18, v19, v20);
  sub_21D361BB4(v15, v16, v17, v18, v19, v20);
  v24[0] = v15;
  v24[1] = v16;
  v24[2] = v17;
  v24[3] = v18;
  v24[4] = v19;
  v25 = v20;
  sub_21DA7F6B4(v24);

  sub_21D361BB4(v15, v16, v17, v18, v19, v20);
  return v21;
}

char *sub_21DA75B50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    a4 = sub_21DBFA16C();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return TTRIToggleTableViewCell.init(style:reuseIdentifier:)(a3, a4, v6);
}

void sub_21DA75B9C(uint64_t a1)
{
  v1 = (a1 + qword_27CE654D8);
  *v1 = 0;
  v1[1] = 0;
  sub_21DBFC31C();
  __break(1u);
}

char *sub_21DA75C64(char *result)
{
  v1 = *&result[qword_27CE654D8];
  if (v1)
  {
    v2 = *&result[qword_27CE654D8 + 8];
    v3 = result;
    v4 = sub_21D0D0E78(v1, v2);
    v1(v4);

    return sub_21D0D0E88(v1, v2);
  }

  return result;
}

id sub_21DA75D64(char *a1)
{
  v1 = *&a1[qword_27CE65590];
  v2 = a1;
  v3 = [v1 text];
  if (v3)
  {
    v4 = v3;
    sub_21DBFA16C();

    v5 = sub_21DBFA12C();
  }

  else
  {

    v5 = 0;
  }

  return v5;
}

uint64_t TTRIToggleTableViewCell.accessibilityLabel.getter()
{
  v1 = [*(v0 + qword_27CE65590) text];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_21DBFA16C();

  return v3;
}

uint64_t (*TTRIToggleTableViewCell.accessibilityLabel.modify(uint64_t *a1))(uint64_t a1)
{
  v3 = [*(v1 + qword_27CE65590) text];
  if (v3)
  {
    v4 = v3;
    v5 = sub_21DBFA16C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a1 = v5;
  a1[1] = v7;
  return destroy for TTRRemindersListViewModel.ListNameData;
}

uint64_t TTRIToggleTableViewCell.accessibilityValue.getter()
{
  v1 = (v0 + qword_27CE655D0);
  swift_beginAccess();
  v2 = v1[1];
  if (v2 || (v1 = (v0 + qword_27CE655C8), swift_beginAccess(), (v2 = v1[1]) != 0))
  {
    v3 = *v1;
    sub_21DBF8E0C();
    v4 = sub_21D210A84(0, 1, 1, MEMORY[0x277D84F90]);
    v6 = *(v4 + 2);
    v5 = *(v4 + 3);
    if (v6 >= v5 >> 1)
    {
      v4 = sub_21D210A84((v5 > 1), v6 + 1, 1, v4);
    }

    *(v4 + 2) = v6 + 1;
    v7 = &v4[16 * v6];
    *(v7 + 4) = v3;
    *(v7 + 5) = v2;
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

  if ([*(v0 + qword_27CE654D0) isOn])
  {
    if (qword_27CE57178 != -1)
    {
      swift_once();
    }

    v8 = &qword_27CE66AB0;
  }

  else
  {
    if (qword_27CE57180 != -1)
    {
      swift_once();
    }

    v8 = &qword_27CE66AC0;
  }

  v10 = *v8;
  v9 = v8[1];
  sub_21DBF8E0C();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_21D210A84(0, *(v4 + 2) + 1, 1, v4);
  }

  v12 = *(v4 + 2);
  v11 = *(v4 + 3);
  if (v12 >= v11 >> 1)
  {
    v4 = sub_21D210A84((v11 > 1), v12 + 1, 1, v4);
  }

  *(v4 + 2) = v12 + 1;
  v13 = &v4[16 * v12];
  *(v13 + 4) = v10;
  *(v13 + 5) = v9;
  if (*(v0 + qword_27CE654E0) == 1)
  {
    if (*(v0 + qword_27CE654E8) == 1)
    {
      if (qword_27CE57500 != -1)
      {
        swift_once();
      }

      v14 = &qword_27CE670F0;
    }

    else
    {
      if (qword_27CE574F8 != -1)
      {
        swift_once();
      }

      v14 = &qword_27CE670E0;
    }

    v16 = *v14;
    v15 = v14[1];
    sub_21DBF8E0C();
    v18 = *(v4 + 2);
    v17 = *(v4 + 3);
    if (v18 >= v17 >> 1)
    {
      v4 = sub_21D210A84((v17 > 1), v18 + 1, 1, v4);
    }

    *(v4 + 2) = v18 + 1;
    v19 = &v4[16 * v18];
    *(v19 + 4) = v16;
    *(v19 + 5) = v15;
  }

  if (qword_280D1B938 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61630, &qword_21DC0B3A0);
  sub_21D1ADAA8();
  v20 = sub_21DBFA07C();

  return v20;
}

uint64_t (*TTRIToggleTableViewCell.accessibilityValue.modify(uint64_t *a1))(uint64_t a1)
{
  *a1 = TTRIToggleTableViewCell.accessibilityValue.getter();
  a1[1] = v2;
  return destroy for TTRRemindersListViewModel.ListNameData;
}

id sub_21DA762F0(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();
  v6 = v5;

  if (v6)
  {
    v7 = sub_21DBFA12C();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t TTRIToggleTableViewCell.accessibilityHint.getter()
{
  if (*(v0 + qword_27CE654E0) == 1)
  {
    if (*(v0 + qword_27CE654E8) == 1)
    {
      if (qword_27CE57538 != -1)
      {
        swift_once();
      }

      v1 = &qword_27CE67160;
    }

    else if ([*(v0 + qword_27CE654D0) isOn])
    {
      if (qword_27CE57530 != -1)
      {
        swift_once();
      }

      v1 = &qword_27CE67150;
    }

    else
    {
      if (qword_27CE57540 != -1)
      {
        swift_once();
      }

      v1 = &qword_27CE67170;
    }

    v3 = *v1;
    v2 = v1[1];
    sub_21DBF8E0C();
    v4 = sub_21D210A84(0, 1, 1, MEMORY[0x277D84F90]);
    v6 = *(v4 + 2);
    v5 = *(v4 + 3);
    if (v6 >= v5 >> 1)
    {
      v4 = sub_21D210A84((v5 > 1), v6 + 1, 1, v4);
    }

    *(v4 + 2) = v6 + 1;
    v7 = &v4[16 * v6];
    *(v7 + 4) = v3;
    *(v7 + 5) = v2;
  }

  if (qword_280D1AA40 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61630, &qword_21DC0B3A0);
  sub_21D1ADAA8();
  v8 = sub_21DBFA07C();

  return v8;
}

uint64_t (*TTRIToggleTableViewCell.accessibilityHint.modify(uint64_t *a1))(uint64_t a1)
{
  *a1 = TTRIToggleTableViewCell.accessibilityHint.getter();
  a1[1] = v2;
  return destroy for TTRRemindersBoardCellInfoButtonStates;
}

Swift::Bool __swiftcall TTRIToggleTableViewCell.accessibilityActivate()()
{
  v1 = *(v0 + qword_27CE654D0);
  [v1 setOn:objc_msgSend(v1 animated:{sel_isOn) ^ 1, 1}];
  [v1 sendActionsForControlEvents_];
  return 1;
}

uint64_t sub_21DA7664C(char *a1)
{
  v2 = qword_27CE654D0;
  v3 = *&a1[qword_27CE654D0];
  v4 = a1;
  [v3 setOn:objc_msgSend(v3 animated:{sel_isOn) ^ 1, 1}];
  [*&a1[v2] sendActionsForControlEvents_];

  return 1;
}

void (*TTRIToggleTableViewCell.accessibilityActivationPoint.modify(void *a1))()
{
  [*(v1 + qword_27CE654D0) accessibilityActivationPoint];
  *a1 = v3;
  a1[1] = v4;
  return nullsub_1;
}

id sub_21DA7675C(void *a1)
{
  v1 = a1;
  v2 = TTRIToggleTableViewCell.accessibilityCustomActions.getter();

  if (v2)
  {
    sub_21D0D8CF0(0, qword_27CE58B18, 0x277D75088);
    v3 = sub_21DBFA5DC();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t TTRIToggleTableViewCell.accessibilityCustomActions.getter()
{
  ObjectType = swift_getObjectType();
  v12.receiver = v0;
  v12.super_class = ObjectType;
  v2 = objc_msgSendSuper2(&v12, sel_accessibilityCustomActions);
  if (v2)
  {
    v3 = v2;
    sub_21D0D8CF0(0, qword_27CE58B18, 0x277D75088);
    v4 = sub_21DBFA5EC();
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

  v13 = v4;
  if (v0[qword_27CE654E0] == 1 && [*&v0[qword_27CE654D0] isOn] && v0[qword_27CE654F0] == 1)
  {
    if (v0[qword_27CE654E8] == 1)
    {
      if (qword_27CE57518 != -1)
      {
        swift_once();
      }

      v5 = &qword_27CE67120;
    }

    else
    {
      if (qword_27CE57510 != -1)
      {
        swift_once();
      }

      v5 = &qword_27CE67110;
    }

    v6 = *v5;
    v7 = v5[1];
    sub_21DBF8E0C();
    sub_21D0D8CF0(0, qword_27CE58B18, 0x277D75088);
    v11[3] = ObjectType;
    v11[0] = v0;
    v8 = v0;
    v9 = sub_21DA76A04(v6, v7, v11, sel_toggleExpandCollapseState);
    MEMORY[0x223D42D80]();
    if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_21DBFA63C();
    }

    sub_21DBFA6CC();

    return v13;
  }

  return v4;
}

id sub_21DA76A04(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = sub_21DBFA12C();

  v7 = a3[3];
  if (v7)
  {
    v8 = __swift_project_boxed_opaque_existential_1(a3, a3[3]);
    v9 = *(v7 - 8);
    v10 = MEMORY[0x28223BE20](v8);
    v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v9 + 16))(v12, v10);
    v13 = sub_21DBFC62C();
    (*(v9 + 8))(v12, v7);
    __swift_destroy_boxed_opaque_existential_0(a3);
  }

  else
  {
    v13 = 0;
  }

  v14 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithName:v6 target:v13 selector:a4];

  swift_unknownObjectRelease();
  return v14;
}

uint64_t sub_21DA76BC0()
{
  v1 = *(v0 + qword_27CE654D8);
  v2 = *(v0 + qword_27CE654D8 + 8);

  return sub_21D0D0E88(v1, v2);
}

uint64_t sub_21DA76C04(uint64_t a1)
{
  v2 = *(a1 + qword_27CE654D8);
  v3 = *(a1 + qword_27CE654D8 + 8);

  return sub_21D0D0E88(v2, v3);
}

uint64_t _s15RemindersUICore26TTRIToggleCellContentStateV2eeoiySbAC_ACtFZ_0(__int128 *a1, __int128 *a2)
{
  v4 = a1[3];
  v98 = a1[2];
  v99 = v4;
  v5 = a1[1];
  v96 = *a1;
  v97 = v5;
  v6 = a2[3];
  v101[2] = a2[2];
  v101[3] = v6;
  v7 = a2[1];
  v101[0] = *a2;
  v101[1] = v7;
  v100 = *(a1 + 64);
  v8 = *(a1 + 9);
  v9 = *(a1 + 11);
  v69 = *(a1 + 12);
  v70 = *(a1 + 10);
  v10 = *(a1 + 13);
  v11 = *(a1 + 14);
  v12 = *(a1 + 120);
  v13 = *(a1 + 121);
  v14 = *(a1 + 122);
  v15 = *(a1 + 123);
  v16 = *(a1 + 124);
  v17 = *(a1 + 125);
  v102 = *(a2 + 64);
  v18 = *(a2 + 9);
  v19 = *(a2 + 10);
  v67 = *(a2 + 11);
  v68 = *(a2 + 12);
  v21 = *(a2 + 13);
  v20 = *(a2 + 14);
  v22 = *(a2 + 120);
  v23 = *(a2 + 121);
  v24 = *(a2 + 122);
  v25 = *(a2 + 123);
  v26 = *(a2 + 124);
  v27 = *(a2 + 125);
  v28 = *(&v5 + 1);
  v29 = v100;
  *&v95[7] = v101[0];
  *&v95[23] = *(a2 + 2);
  v30 = *(&v7 + 1);
  v31 = v102;
  if (*(&v5 + 1) >> 1 == 0xFFFFFFFFLL && v100 < 2u)
  {
    if (*(&v7 + 1) >> 1 == 0xFFFFFFFFLL && v102 < 2u)
    {
      v60 = v9;
      v61 = v26;
      v62 = v21;
      v63 = v20;
      v64 = v16;
      v65 = v22;
      v66 = v11;
      v32 = v10;
      v57 = v23;
      v58 = v13;
      v55 = v24;
      v56 = v14;
      v53 = v25;
      v54 = v15;
      v59 = v12;
      v51 = v17;
      v52 = v27;
      v85 = *a1;
      *&v86 = *(a1 + 2);
      *(&v86 + 1) = *(&v97 + 1);
      v33 = a1[3];
      v87 = a1[2];
      v88 = v33;
      v89 = v100;
      sub_21D1ADB0C(&v96, &v80);
      sub_21D1ADB0C(v101, &v80);
      sub_21D0CF7E0(&v85, &unk_27CE5EA00, &unk_21DC0A7C0);
      goto LABEL_10;
    }

    sub_21D1ADB0C(&v96, &v85);
    sub_21D1ADB0C(v101, &v85);
LABEL_20:
    v85 = *a1;
    *&v86 = *(a1 + 2);
    *(&v86 + 1) = v28;
    v47 = a1[3];
    v87 = a1[2];
    v88 = v47;
    v89 = v29;
    *v90 = *v95;
    *&v90[15] = *&v95[15];
    v91 = v30;
    v48 = a2[2];
    v93 = a2[3];
    v92 = v48;
    v94 = v31;
    sub_21D0CF7E0(&v85, qword_27CE5ABE0, &qword_21DC1E920);
    return 0;
  }

  v34 = *(a1 + 2);
  v85 = *a1;
  *&v86 = v34;
  *(&v86 + 1) = *(&v97 + 1);
  v35 = a1[3];
  v87 = a1[2];
  v88 = v35;
  v89 = v100;
  v84 = v100;
  v82 = v87;
  v83 = v35;
  v80 = v85;
  v81 = v86;
  if (*(&v7 + 1) >> 1 == 0xFFFFFFFFLL && v102 < 2u)
  {
    v77 = v87;
    v78 = v88;
    v79 = v89;
    v75 = v85;
    v76 = v86;
    sub_21D1ADB0C(&v96, v73);
    sub_21D1ADB0C(v101, v73);
    sub_21D1ADB0C(&v85, v73);
    sub_21D35D940(&v75);
    goto LABEL_20;
  }

  v60 = v9;
  v61 = v26;
  v62 = v21;
  v63 = v20;
  v64 = v16;
  v65 = v22;
  v66 = v11;
  v32 = v10;
  v57 = v23;
  v58 = v13;
  v55 = v24;
  v56 = v14;
  v53 = v25;
  v54 = v15;
  v59 = v12;
  v51 = v17;
  v52 = v27;
  v75 = *a2;
  v36 = *(a2 + 2);
  v37 = a2[3];
  v77 = a2[2];
  v78 = v37;
  *&v76 = v36;
  *(&v76 + 1) = v30;
  v79 = v102;
  sub_21D1ADB0C(&v96, v73);
  sub_21D1ADB0C(v101, v73);
  sub_21D1ADB0C(&v85, v73);
  v38 = _s15RemindersUICore31TTRIStaticTableViewStandardCellC4IconO2eeoiySbAE_AEtFZ_0(&v80, &v75);
  v71[2] = v77;
  v71[3] = v78;
  v72 = v79;
  v71[0] = v75;
  v71[1] = v76;
  sub_21D35D940(v71);
  v73[2] = v82;
  v73[3] = v83;
  v74 = v84;
  v73[0] = v80;
  v73[1] = v81;
  sub_21D35D940(v73);
  v75 = *a1;
  *&v76 = *(a1 + 2);
  *(&v76 + 1) = v28;
  v39 = a1[3];
  v77 = a1[2];
  v78 = v39;
  v79 = v29;
  sub_21D0CF7E0(&v75, &unk_27CE5EA00, &unk_21DC0A7C0);
  if ((v38 & 1) == 0)
  {
    return 0;
  }

LABEL_10:
  if ((v8 != v18 || v70 != v19) && (sub_21DBFC64C() & 1) == 0)
  {
    return 0;
  }

  if (!v69)
  {
    v40 = v66;
    v42 = v64;
    v41 = v65;
    v44 = v62;
    v43 = v63;
    v45 = v61;
    if (!v68)
    {
      goto LABEL_24;
    }

    return 0;
  }

  v40 = v66;
  v42 = v64;
  v41 = v65;
  v44 = v62;
  v43 = v63;
  v45 = v61;
  if (!v68)
  {
    return 0;
  }

  if (v60 != v67 || v69 != v68)
  {
    v46 = sub_21DBFC64C();
    v45 = v61;
    v44 = v62;
    v43 = v63;
    v42 = v64;
    v41 = v65;
    v40 = v66;
    if ((v46 & 1) == 0)
    {
      return 0;
    }
  }

LABEL_24:
  if (v40)
  {
    if (v43)
    {
      v50 = v42 ^ v45;
      if (v32 == v44 && v40 == v43)
      {
        if (((v59 ^ v41 | v58 ^ v57 | v56 ^ v55 | v54 ^ v53 | v50) & 1) == 0)
        {
          return v51 ^ v52 ^ 1u;
        }
      }

      else if (((sub_21DBFC64C() ^ 1 | v59 ^ v41 | v58 ^ v57 | v56 ^ v55 | v54 ^ v53 | v50) & 1) == 0)
      {
        return v51 ^ v52 ^ 1u;
      }
    }

    return 0;
  }

  result = 0;
  if (!v43 && ((v59 ^ v41) & 1) == 0 && ((v58 ^ v57) & 1) == 0 && ((v56 ^ v55) & 1) == 0 && ((v54 ^ v53) & 1) == 0 && ((v42 ^ v45) & 1) == 0)
  {
    return v51 ^ v52 ^ 1u;
  }

  return result;
}

double destroy for TTRIToggleCellContentState(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = *(a1 + 64);
  if (v1 >> 1 != 0xFFFFFFFF || v2 >= 2)
  {
    sub_21D362050(*a1, *(a1 + 8), *(a1 + 16), v1, *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), v2);
  }

  return result;
}

uint64_t initializeWithCopy for TTRIToggleCellContentState(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = *(a2 + 64);
  if (v4 >> 1 != 0xFFFFFFFF || v5 >= 2)
  {
    v7 = *a2;
    v8 = *(a2 + 8);
    v9 = *(a2 + 16);
    v10 = *(a2 + 40);
    v19 = *(a2 + 32);
    v11 = *(a2 + 48);
    v12 = *(a2 + 56);
    sub_21D361F04(*a2, v8, v9, v4, v19, v10, v11, v12, v5);
    *a1 = v7;
    *(a1 + 8) = v8;
    *(a1 + 16) = v9;
    *(a1 + 24) = v4;
    *(a1 + 32) = v19;
    *(a1 + 40) = v10;
    *(a1 + 48) = v11;
    *(a1 + 56) = v12;
    *(a1 + 64) = v5;
  }

  else
  {
    v13 = *(a2 + 48);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = v13;
    *(a1 + 64) = *(a2 + 64);
    v14 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v14;
  }

  v15 = *(a2 + 80);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = v15;
  v16 = *(a2 + 96);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = v16;
  v17 = *(a2 + 112);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = v17;
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 124) = *(a2 + 124);
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  return a1;
}

uint64_t assignWithCopy for TTRIToggleCellContentState(uint64_t a1, uint64_t *a2)
{
  v4 = a2[3];
  v5 = *(a2 + 64);
  v7 = v4 >> 1 == 0xFFFFFFFF && v5 < 2;
  if (*(a1 + 24) >> 1 != 0xFFFFFFFFLL || *(a1 + 64) >= 2u)
  {
    if (v7)
    {
      sub_21D35D940(a1);
      *a1 = *a2;
      v10 = *(a2 + 2);
      v9 = *(a2 + 3);
      v11 = *(a2 + 1);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 32) = v10;
      *(a1 + 48) = v9;
      *(a1 + 16) = v11;
    }

    else
    {
      v15 = *a2;
      v16 = a2[1];
      v17 = a2[2];
      v18 = a2[5];
      v37 = a2[4];
      v19 = a2[6];
      v20 = a2[7];
      sub_21D361F04(*a2, v16, v17, v4, v37, v18, v19, v20, v5);
      v21 = *a1;
      v22 = *(a1 + 8);
      v23 = *(a1 + 16);
      v24 = *(a1 + 24);
      v25 = *(a1 + 32);
      v26 = *(a1 + 40);
      v27 = *(a1 + 48);
      v28 = *(a1 + 56);
      v29 = *(a1 + 64);
      *a1 = v15;
      *(a1 + 8) = v16;
      *(a1 + 16) = v17;
      *(a1 + 24) = v4;
      *(a1 + 32) = v37;
      *(a1 + 40) = v18;
      *(a1 + 48) = v19;
      *(a1 + 56) = v20;
      *(a1 + 64) = v5;
      sub_21D362050(v21, v22, v23, v24, v25, v26, v27, v28, v29);
    }
  }

  else if (v7)
  {
    *a1 = *a2;
    v12 = *(a2 + 1);
    v13 = *(a2 + 2);
    v14 = *(a2 + 3);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 32) = v13;
    *(a1 + 48) = v14;
    *(a1 + 16) = v12;
  }

  else
  {
    v30 = *a2;
    v31 = a2[1];
    v32 = a2[2];
    v33 = a2[5];
    v38 = a2[4];
    v34 = a2[6];
    v35 = a2[7];
    sub_21D361F04(*a2, v31, v32, v4, v38, v33, v34, v35, v5);
    *a1 = v30;
    *(a1 + 8) = v31;
    *(a1 + 16) = v32;
    *(a1 + 24) = v4;
    *(a1 + 32) = v38;
    *(a1 + 40) = v33;
    *(a1 + 48) = v34;
    *(a1 + 56) = v35;
    *(a1 + 64) = v5;
  }

  *(a1 + 72) = a2[9];
  *(a1 + 80) = a2[10];
  sub_21DBF8E0C();

  *(a1 + 88) = a2[11];
  *(a1 + 96) = a2[12];
  sub_21DBF8E0C();

  *(a1 + 104) = a2[13];
  *(a1 + 112) = a2[14];
  sub_21DBF8E0C();

  *(a1 + 120) = *(a2 + 120);
  *(a1 + 121) = *(a2 + 121);
  *(a1 + 122) = *(a2 + 122);
  *(a1 + 123) = *(a2 + 123);
  *(a1 + 124) = *(a2 + 124);
  *(a1 + 125) = *(a2 + 125);
  return a1;
}

__n128 __swift_memcpy126_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 110) = *(a2 + 110);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t assignWithTake for TTRIToggleCellContentState(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  v5 = *(a1 + 64);
  if (v4 >> 1 == 0xFFFFFFFF && v5 < 2)
  {
    goto LABEL_12;
  }

  v7 = *(a2 + 24);
  v8 = *(a2 + 64);
  if (v7 >> 1 == 0xFFFFFFFF && v8 < 2)
  {
    sub_21D35D940(a1);
LABEL_12:
    v19 = *(a2 + 48);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = v19;
    *(a1 + 64) = *(a2 + 64);
    v20 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v20;
    goto LABEL_13;
  }

  v10 = *(a2 + 16);
  v11 = *a1;
  v12 = *(a1 + 8);
  v13 = *(a1 + 16);
  v14 = *(a1 + 32);
  v15 = *(a1 + 40);
  v16 = *(a1 + 48);
  v17 = *(a1 + 56);
  *a1 = *a2;
  *(a1 + 16) = v10;
  *(a1 + 24) = v7;
  v18 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v18;
  *(a1 + 64) = v8;
  sub_21D362050(v11, v12, v13, v4, v14, v15, v16, v17, v5);
LABEL_13:
  v21 = *(a2 + 80);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = v21;

  v22 = *(a2 + 96);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = v22;

  v23 = *(a2 + 112);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = v23;

  *(a1 + 120) = *(a2 + 120);
  *(a1 + 121) = *(a2 + 121);
  *(a1 + 122) = *(a2 + 122);
  *(a1 + 123) = *(a2 + 123);
  *(a1 + 124) = *(a2 + 124);
  *(a1 + 125) = *(a2 + 125);
  return a1;
}

uint64_t getEnumTagSinglePayload for TTRIToggleCellContentState(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 126))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 80);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRIToggleCellContentState(uint64_t result, int a2, int a3)
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
    *(result + 124) = 0;
    *(result + 120) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 126) = 1;
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
      *(result + 80) = (a2 - 1);
      return result;
    }

    *(result + 126) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 TTRIActionCellStateAdaptor.State.init(title:titleIsTinted:detailText:icon:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, __int128 *a6@<X5>, uint64_t a7@<X8>)
{
  *(a7 + 40) = 0;
  *(a7 + 48) = 0;
  *(a7 + 56) = 0;
  *(a7 + 64) = 0x1FFFFFFFELL;
  *(a7 + 72) = 0u;
  *(a7 + 88) = 0u;
  *(a7 + 104) = 0;
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  v15 = 0;
  v9 = *(a7 + 56);
  v10 = *(a7 + 88);
  v14[2] = *(a7 + 72);
  v14[3] = v10;
  v14[0] = *(a7 + 40);
  v14[1] = v9;
  sub_21D0CF7E0(v14, &unk_27CE5EA00, &unk_21DC0A7C0);
  v11 = *a6;
  *(a7 + 56) = a6[1];
  result = a6[2];
  v13 = a6[3];
  *(a7 + 72) = result;
  *(a7 + 88) = v13;
  *(a7 + 104) = *(a6 + 64);
  *(a7 + 40) = v11;
  return result;
}

id TTRIActionCellContent.__allocating_init(state:)(_OWORD *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = a1[5];
  v8[4] = a1[4];
  v9[0] = v4;
  *(v9 + 9) = *(a1 + 89);
  v5 = a1[1];
  v8[0] = *a1;
  v8[1] = v5;
  v6 = a1[3];
  v8[2] = a1[2];
  v8[3] = v6;
  return sub_21DA884EC(0, 0x65436E6F69746341, 0xEA00000000006C6CLL, 0, v8);
}

uint64_t TTRIActionCellStateAdaptor.State.title.getter()
{
  v1 = *v0;
  sub_21DBF8E0C();
  return v1;
}

void TTRIActionCellStateAdaptor.State.title.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t TTRIActionCellStateAdaptor.State.detailText.getter()
{
  v1 = *(v0 + 24);
  sub_21DBF8E0C();
  return v1;
}

void TTRIActionCellStateAdaptor.State.detailText.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
}

uint64_t TTRIActionCellStateAdaptor.State.icon.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  v3 = *(v1 + 88);
  v9 = *(v1 + 72);
  v10 = v3;
  v11 = *(v1 + 104);
  v4 = v11;
  v8[0] = *(v1 + 40);
  v5 = v8[0];
  v8[1] = v2;
  *(a1 + 32) = v9;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *a1 = v5;
  *(a1 + 16) = v2;
  return sub_21D0D3954(v8, v7, &unk_27CE5EA00, &unk_21DC0A7C0);
}

__n128 TTRIActionCellStateAdaptor.State.icon.setter(__int128 *a1)
{
  v3 = *(v1 + 56);
  v4 = *(v1 + 88);
  v8[2] = *(v1 + 72);
  v8[3] = v4;
  v9 = *(v1 + 104);
  v8[0] = *(v1 + 40);
  v8[1] = v3;
  sub_21D0CF7E0(v8, &unk_27CE5EA00, &unk_21DC0A7C0);
  v5 = *a1;
  *(v1 + 56) = a1[1];
  result = a1[2];
  v7 = a1[3];
  *(v1 + 72) = result;
  *(v1 + 88) = v7;
  *(v1 + 104) = *(a1 + 64);
  *(v1 + 40) = v5;
  return result;
}

id TTRIActionCellStateAdaptor.prototypeCellView.getter@<X0>(void **a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  return sub_21D568328(v2);
}

uint64_t TTRIActionCellStateAdaptor.reuseIdentifier.getter()
{
  v1 = *(v0 + 8);
  sub_21DBF8E0C();
  return v1;
}

double TTRIActionCellStateAdaptor.init()@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_21DC39410;
  *(a1 + 16) = 0xEA00000000006C6CLL;
  return result;
}

uint64_t TTRIActionCellStateAdaptor.setState(_:on:)(_OWORD *a1, uint64_t a2)
{
  v2 = a1[5];
  v11[4] = a1[4];
  v12[0] = v2;
  *(v12 + 9) = *(a1 + 89);
  v3 = a1[1];
  v11[0] = *a1;
  v11[1] = v3;
  v4 = a1[3];
  v11[2] = a1[2];
  v11[3] = v4;
  v9[2] = a2;
  v9[3] = v11;
  v5 = *(a2 + qword_27CE5AF20);
  v6 = swift_allocObject();
  *(v6 + 16) = sub_21DA785B0;
  *(v6 + 24) = v9;
  aBlock[4] = sub_21D0E6070;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_134;
  v7 = _Block_copy(aBlock);

  [v5 performBatchUpdates_];
  _Block_release(v7);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }

  return result;
}

void sub_21DA77DB8(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v4 = 0;
  }

  else
  {
    v4 = [objc_opt_self() labelColor];
  }

  *&v39 = v4;
  sub_21DA7B9D0(&v39);
  v5 = *(a1 + qword_27CE65590);
  v6 = sub_21DBFA12C();
  [v5 setText_];

  v7 = *(a2 + 56);
  v8 = *(a2 + 88);
  v41 = *(a2 + 72);
  v42 = v8;
  v43 = *(a2 + 104);
  v39 = *(a2 + 40);
  v40 = v7;
  v9 = a1 + qword_27CE655A0;
  swift_beginAccess();
  v10 = *(v9 + 32);
  v11 = *(v9 + 48);
  v12 = *v9;
  v32 = *(v9 + 16);
  v33 = v10;
  v34 = v11;
  v35 = *(v9 + 64);
  v31 = v12;
  v36[2] = v10;
  v36[3] = v11;
  v37 = v35;
  v36[0] = v12;
  v36[1] = v32;
  v13 = v39;
  v14 = v40;
  v15 = v41;
  v16 = v42;
  *(v9 + 64) = v43;
  *(v9 + 32) = v15;
  *(v9 + 48) = v16;
  *v9 = v13;
  *(v9 + 16) = v14;
  sub_21D0D3954(&v39, &v26, &unk_27CE5EA00, &unk_21DC0A7C0);
  sub_21D0D3954(&v31, &v26, &unk_27CE5EA00, &unk_21DC0A7C0);
  sub_21D0CF7E0(v36, &unk_27CE5EA00, &unk_21DC0A7C0);
  v28 = v33;
  v29 = v34;
  v30 = v35;
  v26 = v31;
  v27 = v32;
  sub_21DA7EF48(&v26);
  sub_21D0CF7E0(&v31, &unk_27CE5EA00, &unk_21DC0A7C0);
  v38 = *(a2 + 24);
  v17 = *(&v38 + 1);
  if (*(&v38 + 1))
  {
    v18 = v38;
    v19 = a1 + qword_27CE65610;
    swift_beginAccess();
    v20 = *v19;
    v21 = *(v19 + 8);
    v22 = *(v19 + 16);
    v23 = *(v19 + 24);
    v24 = *(v19 + 32);
    *v19 = v18;
    *(v19 + 8) = v17;
    *(v19 + 24) = 0;
    *(v19 + 32) = 0;
    *(v19 + 16) = 0;
    LOBYTE(v17) = *(v19 + 40);
    *(v19 + 40) = 0;
    sub_21D0D3954(&v38, &v26, &qword_27CE588A0, &qword_21DC09AF0);
  }

  else
  {
    v25 = a1 + qword_27CE65610;
    swift_beginAccess();
    v20 = *v25;
    v21 = *(v25 + 8);
    v22 = *(v25 + 16);
    v23 = *(v25 + 24);
    v24 = *(v25 + 32);
    *v25 = 0u;
    *(v25 + 16) = 0u;
    *(v25 + 32) = 0;
    v17 = *(v25 + 40);
    *(v25 + 40) = -1;
  }

  sub_21D361B20(v20, v21, v22, v23, v24, v17);
  sub_21D361BB4(v20, v21, v22, v23, v24, v17);
  *&v26 = v20;
  *(&v26 + 1) = v21;
  *&v27 = v22;
  *(&v27 + 1) = v23;
  *&v28 = v24;
  BYTE8(v28) = v17;
  sub_21DA7F6B4(&v26);
  sub_21D361BB4(v20, v21, v22, v23, v24, v17);
}

id TTRIActionCellContent.init(state:)(_OWORD *a1)
{
  v1 = a1[5];
  v5[4] = a1[4];
  v6[0] = v1;
  *(v6 + 9) = *(a1 + 89);
  v2 = a1[1];
  v5[0] = *a1;
  v5[1] = v2;
  v3 = a1[3];
  v5[2] = a1[2];
  v5[3] = v3;
  return sub_21DA884EC(0, 0x65436E6F69746341, 0xEA00000000006C6CLL, 0, v5);
}

id TTRIActionCellContent.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t _s15RemindersUICore26TTRIActionCellStateAdaptorV0E0V2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 16);
  v7 = a1[3];
  v8 = a1[4];
  v9 = *(a1 + 7);
  v10 = *(a1 + 11);
  v60 = *(a1 + 9);
  v61 = v10;
  v62 = *(a1 + 104);
  v58 = *(a1 + 5);
  v59 = v9;
  v11 = *a2;
  v12 = a2[1];
  v13 = *(a2 + 16);
  v15 = a2[3];
  v14 = a2[4];
  v16 = *(a2 + 5);
  v67 = *(a2 + 104);
  v17 = *(a2 + 11);
  v65 = *(a2 + 9);
  v66 = v17;
  v18 = *(a2 + 7);
  v63 = v16;
  v64 = v18;
  if (v4 == v11 && v5 == v12)
  {
    if (v6 != v13)
    {
      goto LABEL_25;
    }

LABEL_7:
    if (v8)
    {
      if (!v14 || (v7 != v15 || v8 != v14) && (sub_21DBFC64C() & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    else if (v14)
    {
      goto LABEL_25;
    }

    v20 = *(&v59 + 1);
    v21 = v62;
    *&v57[7] = *(a2 + 5);
    *&v57[23] = a2[7];
    v22 = *(&v64 + 1);
    v23 = v67;
    if (*(&v59 + 1) >> 1 == 0xFFFFFFFFLL && v62 < 2u)
    {
      if (*(&v64 + 1) >> 1 == 0xFFFFFFFFLL && v67 < 2u)
      {
        v47 = *(a1 + 5);
        *&v48 = a1[7];
        *(&v48 + 1) = *(&v59 + 1);
        v24 = *(a1 + 11);
        v49 = *(a1 + 9);
        v50 = v24;
        v51 = v62;
        sub_21D0D3954(&v58, &v42, &unk_27CE5EA00, &unk_21DC0A7C0);
        sub_21D0D3954(&v63, &v42, &unk_27CE5EA00, &unk_21DC0A7C0);
        sub_21D0CF7E0(&v47, &unk_27CE5EA00, &unk_21DC0A7C0);
        v19 = 1;
        return v19 & 1;
      }

      sub_21D0D3954(&v58, &v47, &unk_27CE5EA00, &unk_21DC0A7C0);
      sub_21D0D3954(&v63, &v47, &unk_27CE5EA00, &unk_21DC0A7C0);
    }

    else
    {
      v25 = a1[7];
      v47 = *(a1 + 5);
      *&v48 = v25;
      *(&v48 + 1) = *(&v59 + 1);
      v26 = *(a1 + 11);
      v49 = *(a1 + 9);
      v50 = v26;
      v51 = v62;
      v46 = v62;
      v44 = v49;
      v45 = v26;
      v42 = v47;
      v43 = v48;
      if (*(&v64 + 1) >> 1 != 0xFFFFFFFFLL || v67 >= 2u)
      {
        v37 = *(a2 + 5);
        v27 = a2[7];
        v28 = *(a2 + 11);
        v39 = *(a2 + 9);
        v40 = v28;
        *&v38 = v27;
        *(&v38 + 1) = *(&v64 + 1);
        v41 = v67;
        sub_21D0D3954(&v58, v35, &unk_27CE5EA00, &unk_21DC0A7C0);
        sub_21D0D3954(&v63, v35, &unk_27CE5EA00, &unk_21DC0A7C0);
        sub_21D0D3954(&v47, v35, &unk_27CE5EA00, &unk_21DC0A7C0);
        v19 = _s15RemindersUICore31TTRIStaticTableViewStandardCellC4IconO2eeoiySbAE_AEtFZ_0(&v42, &v37);
        v33[2] = v39;
        v33[3] = v40;
        v34 = v41;
        v33[0] = v37;
        v33[1] = v38;
        sub_21D35D940(v33);
        v35[2] = v44;
        v35[3] = v45;
        v36 = v46;
        v35[0] = v42;
        v35[1] = v43;
        sub_21D35D940(v35);
        v37 = *(a1 + 5);
        *&v38 = a1[7];
        *(&v38 + 1) = v20;
        v29 = *(a1 + 11);
        v39 = *(a1 + 9);
        v40 = v29;
        v41 = v21;
        sub_21D0CF7E0(&v37, &unk_27CE5EA00, &unk_21DC0A7C0);
        return v19 & 1;
      }

      v39 = v49;
      v40 = v50;
      v41 = v51;
      v37 = v47;
      v38 = v48;
      sub_21D0D3954(&v58, v35, &unk_27CE5EA00, &unk_21DC0A7C0);
      sub_21D0D3954(&v63, v35, &unk_27CE5EA00, &unk_21DC0A7C0);
      sub_21D0D3954(&v47, v35, &unk_27CE5EA00, &unk_21DC0A7C0);
      sub_21D35D940(&v37);
    }

    v47 = *(a1 + 5);
    *&v48 = a1[7];
    *(&v48 + 1) = v20;
    v30 = *(a1 + 11);
    v49 = *(a1 + 9);
    v50 = v30;
    v51 = v21;
    *v52 = *v57;
    *&v52[15] = *&v57[15];
    v53 = v22;
    v31 = *(a2 + 9);
    v55 = *(a2 + 11);
    v54 = v31;
    v56 = v23;
    sub_21D0CF7E0(&v47, qword_27CE5ABE0, &qword_21DC1E920);
LABEL_25:
    v19 = 0;
    return v19 & 1;
  }

  v19 = 0;
  if ((sub_21DBFC64C() & 1) != 0 && ((v6 ^ v13) & 1) == 0)
  {
    goto LABEL_7;
  }

  return v19 & 1;
}

unint64_t sub_21DA785BC()
{
  result = qword_27CE65520;
  if (!qword_27CE65520)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRIActionCellStateAdaptor.State, &type metadata for TTRIActionCellStateAdaptor.State, v0, v1);
    atomic_store(result, &qword_27CE65520);
  }

  return result;
}

void destroy for TTRIActionCellStateAdaptor.State(uint64_t a1)
{

  v2 = *(a1 + 64);
  if (v2 >> 1 != 0xFFFFFFFF || *(a1 + 104) >= 2u)
  {
    sub_21D362050(*(a1 + 40), *(a1 + 48), *(a1 + 56), v2, *(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96), *(a1 + 104));
  }
}

uint64_t initializeWithCopy for TTRIActionCellStateAdaptor.State(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  *(a1 + 16) = *(a2 + 16);
  v5 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v5;
  v6 = *(a2 + 64);
  v7 = *(a2 + 104);
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  if (v6 >> 1 == 0xFFFFFFFF && v7 < 2)
  {
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 40) = *(a2 + 40);
  }

  else
  {
    v8 = *(a2 + 40);
    v9 = *(a2 + 48);
    v10 = *(a2 + 56);
    v11 = *(a2 + 72);
    v12 = *(a2 + 80);
    v14 = *(a2 + 88);
    v13 = *(a2 + 96);
    sub_21D361F04(v8, v9, v10, v6, v11, v12, v14, v13, v7);
    *(a1 + 40) = v8;
    *(a1 + 48) = v9;
    *(a1 + 56) = v10;
    *(a1 + 64) = v6;
    *(a1 + 72) = v11;
    *(a1 + 80) = v12;
    *(a1 + 88) = v14;
    *(a1 + 96) = v13;
    *(a1 + 104) = v7;
  }

  return a1;
}

uint64_t assignWithCopy for TTRIActionCellStateAdaptor.State(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  sub_21DBF8E0C();

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  sub_21DBF8E0C();

  v4 = *(a2 + 64);
  v5 = *(a2 + 104);
  v7 = v4 >> 1 == 0xFFFFFFFF && v5 < 2;
  if (*(a1 + 64) >> 1 == 0xFFFFFFFFLL && *(a1 + 104) < 2u)
  {
    if (v7)
    {
      *(a1 + 40) = *(a2 + 40);
      v8 = *(a2 + 56);
      v9 = *(a2 + 72);
      v10 = *(a2 + 88);
      *(a1 + 104) = *(a2 + 104);
      *(a1 + 88) = v10;
      *(a1 + 72) = v9;
      *(a1 + 56) = v8;
    }

    else
    {
      v30 = *(a2 + 40);
      v31 = *(a2 + 48);
      v32 = *(a2 + 56);
      v33 = *(a2 + 72);
      v34 = *(a2 + 80);
      v36 = *(a2 + 88);
      v35 = *(a2 + 96);
      sub_21D361F04(v30, v31, v32, v4, v33, v34, v36, v35, v5);
      *(a1 + 40) = v30;
      *(a1 + 48) = v31;
      *(a1 + 56) = v32;
      *(a1 + 64) = v4;
      *(a1 + 72) = v33;
      *(a1 + 80) = v34;
      *(a1 + 88) = v36;
      *(a1 + 96) = v35;
      *(a1 + 104) = v5;
    }
  }

  else if (v7)
  {
    sub_21D35D940(a1 + 40);
    *(a1 + 40) = *(a2 + 40);
    v11 = *(a2 + 72);
    v12 = *(a2 + 88);
    v13 = *(a2 + 104);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 104) = v13;
    *(a1 + 88) = v12;
    *(a1 + 72) = v11;
  }

  else
  {
    v14 = *(a2 + 40);
    v15 = *(a2 + 48);
    v16 = *(a2 + 56);
    v17 = *(a2 + 72);
    v18 = *(a2 + 80);
    v20 = *(a2 + 88);
    v19 = *(a2 + 96);
    sub_21D361F04(v14, v15, v16, v4, v17, v18, v20, v19, v5);
    v21 = *(a1 + 40);
    v22 = *(a1 + 48);
    v23 = *(a1 + 56);
    v24 = *(a1 + 64);
    v25 = *(a1 + 72);
    v26 = *(a1 + 80);
    v27 = *(a1 + 88);
    v28 = *(a1 + 96);
    v29 = *(a1 + 104);
    *(a1 + 40) = v14;
    *(a1 + 48) = v15;
    *(a1 + 56) = v16;
    *(a1 + 64) = v4;
    *(a1 + 72) = v17;
    *(a1 + 80) = v18;
    *(a1 + 88) = v20;
    *(a1 + 96) = v19;
    *(a1 + 104) = v5;
    sub_21D362050(v21, v22, v23, v24, v25, v26, v27, v28, v29);
  }

  return a1;
}

uint64_t assignWithTake for TTRIActionCellStateAdaptor.State(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  *(a1 + 16) = *(a2 + 16);
  v5 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v5;

  v6 = *(a1 + 64);
  v7 = *(a1 + 104);
  v8 = *(a2 + 64);
  v9 = *(a2 + 104);
  if (v6 >> 1 != 0xFFFFFFFF || v7 >= 2)
  {
    if (v8 >> 1 != 0xFFFFFFFF || v9 >= 2)
    {
      v10 = *(a2 + 56);
      v11 = *(a1 + 40);
      v12 = *(a1 + 48);
      v13 = *(a1 + 56);
      v14 = *(a1 + 72);
      v15 = *(a1 + 80);
      v16 = *(a1 + 88);
      v17 = *(a1 + 96);
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 56) = v10;
      *(a1 + 64) = v8;
      *(a1 + 72) = *(a2 + 72);
      *(a1 + 88) = *(a2 + 88);
      *(a1 + 104) = v9;
      sub_21D362050(v11, v12, v13, v6, v14, v15, v16, v17, v7);
      return a1;
    }

    sub_21D35D940(a1 + 40);
  }

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t getEnumTagSinglePayload for TTRIActionCellStateAdaptor.State(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 105))
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

uint64_t storeEnumTagSinglePayload for TTRIActionCellStateAdaptor.State(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 105) = 1;
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

    *(result + 105) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata accessor for TTRIActionCellContent(uint64_t a1)
{
  result = qword_27CE65528;
  if (!qword_27CE65528)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 TTRIMenuCellContentState.init(icon:title:titleIsTinted:menu:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = 0;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  *(a6 + 24) = 0x1FFFFFFFELL;
  *(a6 + 32) = 0u;
  *(a6 + 48) = 0u;
  *(a6 + 64) = 0;
  v17 = 0;
  v12 = *(a6 + 48);
  v16[2] = *(a6 + 32);
  v16[3] = v12;
  v13 = *(a6 + 16);
  v16[0] = *a6;
  v16[1] = v13;
  sub_21D0CF7E0(v16, &unk_27CE5EA00, &unk_21DC0A7C0);
  v14 = *(a1 + 48);
  *(a6 + 32) = *(a1 + 32);
  *(a6 + 48) = v14;
  *(a6 + 64) = *(a1 + 64);
  result = *(a1 + 16);
  *a6 = *a1;
  *(a6 + 16) = result;
  *(a6 + 72) = a2;
  *(a6 + 80) = a3;
  *(a6 + 88) = a4;
  *(a6 + 96) = a5;
  return result;
}

id TTRIMenuCellContent.__allocating_init(state:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = MEMORY[0x277D85000];
  *(v3 + *((*MEMORY[0x277D85000] & *v3) + 0x68)) = 0;
  *(v3 + *((*v4 & *v3) + 0x70) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + *((*v4 & *v3) + 0x90)) = 0;
  v5 = v3 + *((*v4 & *v3) + 0x78);
  v6 = *(a1 + 16);
  *v5 = *a1;
  *(v5 + 1) = v6;
  *(v5 + 12) = *(a1 + 96);
  v7 = *(a1 + 80);
  *(v5 + 4) = *(a1 + 64);
  *(v5 + 5) = v7;
  v8 = *(a1 + 48);
  *(v5 + 2) = *(a1 + 32);
  *(v5 + 3) = v8;
  *(v3 + *((*v4 & *v3) + 0x80)) = 0;
  v9 = (v3 + *((*v4 & *v3) + 0x88));
  *v9 = 0x6C6C6543756E654DLL;
  v9[1] = 0xE800000000000000;
  v11.receiver = v3;
  v11.super_class = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE62330, &qword_21DC2B278);
  return objc_msgSendSuper2(&v11, sel_init);
}

uint64_t TTRIMenuCellContentState.icon.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  v9 = *(v1 + 32);
  v10 = v2;
  v11 = *(v1 + 64);
  v3 = v11;
  v4 = *(v1 + 16);
  v8[0] = *v1;
  v5 = v8[0];
  v8[1] = v4;
  *(a1 + 32) = v9;
  *(a1 + 48) = v2;
  *(a1 + 64) = v3;
  *a1 = v5;
  *(a1 + 16) = v4;
  return sub_21D1ADB0C(v8, v7);
}

__n128 TTRIMenuCellContentState.icon.setter(uint64_t a1)
{
  v3 = *(v1 + 48);
  v7[2] = *(v1 + 32);
  v7[3] = v3;
  v8 = *(v1 + 64);
  v4 = *(v1 + 16);
  v7[0] = *v1;
  v7[1] = v4;
  sub_21D0CF7E0(v7, &unk_27CE5EA00, &unk_21DC0A7C0);
  v5 = *(a1 + 48);
  *(v1 + 32) = *(a1 + 32);
  *(v1 + 48) = v5;
  *(v1 + 64) = *(a1 + 64);
  result = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = result;
  return result;
}

uint64_t TTRIMenuCellContentState.title.getter()
{
  v1 = *(v0 + 72);
  sub_21DBF8E0C();
  return v1;
}

void TTRIMenuCellContentState.title.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
}

void *TTRIMenuCellContentState.menu.getter()
{
  v1 = *(v0 + 96);
  v2 = v1;
  return v1;
}

id TTRIMenuCellContent.init(state:)(uint64_t a1)
{
  v3 = MEMORY[0x277D85000];
  *(v1 + *((*MEMORY[0x277D85000] & *v1) + 0x68)) = 0;
  *(v1 + *((*v3 & *v1) + 0x70) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + *((*v3 & *v1) + 0x90)) = 0;
  v4 = v1 + *((*v3 & *v1) + 0x78);
  v5 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 1) = v5;
  *(v4 + 12) = *(a1 + 96);
  v6 = *(a1 + 80);
  *(v4 + 4) = *(a1 + 64);
  *(v4 + 5) = v6;
  v7 = *(a1 + 48);
  *(v4 + 2) = *(a1 + 32);
  *(v4 + 3) = v7;
  *(v1 + *((*v3 & *v1) + 0x80)) = 0;
  v8 = (v1 + *((*v3 & *v1) + 0x88));
  *v8 = 0x6C6C6543756E654DLL;
  v8[1] = 0xE800000000000000;
  v10.receiver = v1;
  v10.super_class = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE62330, &qword_21DC2B278);
  return objc_msgSendSuper2(&v10, sel_init);
}

Swift::Void __swiftcall TTRIMenuCellContent.cellDidBecomeSelected()()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x68);
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2)
  {
    [*(v2 + qword_27CE65538) performPrimaryAction];
  }
}

uint64_t TTRIMenuCellContent.updateCell(_:)(uint64_t a1)
{
  v5[2] = a1;
  v1 = *(a1 + qword_27CE5AF20);
  v2 = swift_allocObject();
  *(v2 + 16) = sub_21DA7A3F8;
  *(v2 + 24) = v5;
  aBlock[4] = sub_21D0E6070;
  aBlock[5] = v2;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_135;
  v3 = _Block_copy(aBlock);

  [v1 performBatchUpdates_];
  _Block_release(v3);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }

  return result;
}

id sub_21DA79328(uint64_t a1, void *a2)
{
  v3 = a2 + *((*MEMORY[0x277D85000] & *a2) + 0x78);
  swift_beginAccess();
  v4 = *(v3 + 3);
  v22 = *(v3 + 2);
  v23 = v4;
  v24 = v3[64];
  v5 = *(v3 + 1);
  v20 = *v3;
  v21 = v5;
  v6 = a1 + qword_27CE655A0;
  swift_beginAccess();
  v7 = *(v6 + 48);
  v27 = *(v6 + 32);
  v28 = v7;
  v29 = *(v6 + 64);
  v8 = *(v6 + 16);
  v25 = *v6;
  v26 = v8;
  v30[2] = v27;
  v30[3] = v7;
  v31 = v29;
  v30[0] = v25;
  v30[1] = v8;
  v9 = v20;
  v10 = v21;
  v11 = v22;
  v12 = v23;
  *(v6 + 64) = v24;
  *(v6 + 32) = v11;
  *(v6 + 48) = v12;
  *v6 = v9;
  *(v6 + 16) = v10;
  sub_21D1ADB0C(&v20, v18);
  sub_21D1ADB0C(&v25, v18);
  sub_21D0CF7E0(v30, &unk_27CE5EA00, &unk_21DC0A7C0);
  v18[2] = v27;
  v18[3] = v28;
  v19 = v29;
  v18[0] = v25;
  v18[1] = v26;
  sub_21DA7EF48(v18);
  sub_21D0CF7E0(&v25, &unk_27CE5EA00, &unk_21DC0A7C0);
  v13 = *(a1 + qword_27CE65590);
  sub_21DBF8E0C();
  v14 = v13;
  v15 = sub_21DBFA12C();

  [v14 setText_];

  v16 = 0;
  if ((v3[88] & 1) == 0)
  {
    v16 = [objc_opt_self() labelColor];
  }

  *&v18[0] = v16;
  sub_21DA7B9D0(v18);
  return [*(a1 + qword_27CE65538) setMenu_];
}

id TTRIMenuTableCell.__allocating_init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a3)
  {
    v6 = sub_21DBFA12C();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithStyle:a1 reuseIdentifier:v6];

  return v7;
}

char *TTRIMenuTableCell.init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v38 = a2;
  v40 = a1;
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE62930, &qword_21DC0AED0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v38 - v7;
  v9 = sub_21DBFB83C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21DBFB95C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v38 - v18;
  sub_21DBFB90C();
  (*(v10 + 104))(v12, *MEMORY[0x277D75000], v9);
  sub_21DBFB85C();
  sub_21DBFB82C();
  sub_21DBFB80C();
  sub_21DBF8D6C();
  v20 = sub_21DBF8D5C();
  (*(*(v20 - 8) + 56))(v8, 0, 1, v20);
  sub_21DBFB8CC();
  type metadata accessor for TTRIOptionMenuTitlelessPopupButton();
  v41 = v14;
  v42 = v13;
  (*(v14 + 16))(v16, v19, v13);
  v21 = sub_21DBFB96C();
  v22 = [v21 titleLabel];
  if (v22)
  {
    v23 = v22;
    [v22 setAdjustsFontForContentSizeCategory_];
  }

  [v21 setIsAccessibilityElement_];
  [v21 setShowsMenuAsPrimaryAction_];
  *&v4[qword_27CE65538] = v21;
  v24 = v21;
  if (a3)
  {
    v25 = sub_21DBFA12C();
  }

  else
  {
    v25 = 0;
  }

  v45.receiver = v4;
  v45.super_class = ObjectType;
  v26 = objc_msgSendSuper2(&v45, sel_initWithStyle_reuseIdentifier_, v40, v25);

  v27 = &v26[qword_27CE65610];
  swift_beginAccess();
  v28 = *v27;
  v29 = *(v27 + 1);
  v30 = *(v27 + 2);
  v31 = *(v27 + 3);
  v32 = *(v27 + 4);
  *v27 = v21;
  *(v27 + 8) = 0u;
  *(v27 + 24) = 0u;
  v33 = v27[40];
  v27[40] = 1;
  v34 = v26;
  v35 = v21;
  v36 = v34;
  sub_21D361B20(v28, v29, v30, v31, v32, v33);
  sub_21D361BB4(v28, v29, v30, v31, v32, v33);
  v43[0] = v28;
  v43[1] = v29;
  v43[2] = v30;
  v43[3] = v31;
  v43[4] = v32;
  v44 = v33;
  sub_21DA7F6B4(v43);

  (*(v41 + 8))(v19, v42);
  sub_21D361BB4(v28, v29, v30, v31, v32, v33);
  return v36;
}

char *sub_21DA79A30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    a4 = sub_21DBFA16C();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return TTRIMenuTableCell.init(style:reuseIdentifier:)(a3, a4, v6);
}

id sub_21DA79B7C(char *a1)
{
  v1 = *&a1[qword_27CE65590];
  v2 = a1;
  v3 = [v1 text];
  if (v3)
  {
    v4 = v3;
    sub_21DBFA16C();

    v5 = sub_21DBFA12C();
  }

  else
  {

    v5 = 0;
  }

  return v5;
}

uint64_t TTRIMenuTableCell.accessibilityLabel.getter()
{
  v1 = [*(v0 + qword_27CE65590) text];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_21DBFA16C();

  return v3;
}

uint64_t (*TTRIMenuTableCell.accessibilityLabel.modify(uint64_t *a1))(uint64_t a1)
{
  v3 = [*(v1 + qword_27CE65590) text];
  if (v3)
  {
    v4 = v3;
    v5 = sub_21DBFA16C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a1 = v5;
  a1[1] = v7;
  return destroy for TTRRemindersListViewModel.ListNameData;
}

id sub_21DA79D20(char *a1)
{
  v2 = qword_27CE65538;
  v3 = *&a1[qword_27CE65538];
  v4 = a1;
  if (([v3 isHidden] & 1) != 0 || (v5 = objc_msgSend(*&a1[v2], sel_menu)) == 0)
  {

    v6 = 0;
  }

  else
  {

    if (qword_27CE571A0 != -1)
    {
      swift_once();
    }

    v6 = sub_21DBFA12C();
  }

  return v6;
}

id TTRIMenuTableCell.accessibilityHint.getter()
{
  v1 = *(v0 + qword_27CE65538);
  if ([v1 isHidden])
  {
    return 0;
  }

  result = [v1 menu];
  if (result)
  {

    if (qword_27CE571A0 != -1)
    {
      swift_once();
    }

    v3 = qword_27CE66B00;
    sub_21DBF8E0C();
    return v3;
  }

  return result;
}

uint64_t (*TTRIMenuTableCell.accessibilityHint.modify(uint64_t *a1))(uint64_t a1)
{
  v3 = *(v1 + qword_27CE65538);
  if ([v3 isHidden])
  {
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v5 = [v3 menu];
    if (v5)
    {

      if (qword_27CE571A0 != -1)
      {
        swift_once();
      }

      v4 = qword_27CE66B00;
      v5 = sub_21DBF8E0C();
    }

    else
    {
      v4 = 0;
    }
  }

  *a1 = v4;
  a1[1] = v5;
  return destroy for TTRRemindersBoardCellInfoButtonStates;
}

void (*TTRIMenuTableCell.accessibilityActivationPoint.modify(void *a1))()
{
  [*(v1 + qword_27CE65538) accessibilityActivationPoint];
  *a1 = v3;
  a1[1] = v4;
  return nullsub_1;
}

uint64_t _s15RemindersUICore24TTRIMenuCellContentStateV2eeoiySbAC_ACtFZ_0(__int128 *a1, __int128 *a2)
{
  v4 = a1[3];
  v67 = a1[2];
  v68 = v4;
  v69 = *(a1 + 64);
  v5 = a1[1];
  v65 = *a1;
  v66 = v5;
  v7 = *(a1 + 9);
  v6 = *(a1 + 10);
  v8 = *(a1 + 88);
  v9 = *(a1 + 12);
  v10 = a2[2];
  v11 = a2[3];
  v71 = *(a2 + 64);
  v70[2] = v10;
  v70[3] = v11;
  v12 = a2[1];
  v70[0] = *a2;
  v70[1] = v12;
  v13 = *(a2 + 9);
  v14 = *(a2 + 10);
  v15 = *(a2 + 88);
  v16 = *(a2 + 12);
  v17 = *(&v5 + 1);
  v18 = v69;
  *&v64[7] = v70[0];
  *&v64[23] = *(a2 + 2);
  v19 = *(&v12 + 1);
  v20 = v71;
  if (*(&v5 + 1) >> 1 == 0xFFFFFFFFLL && v69 < 2u)
  {
    if (*(&v12 + 1) >> 1 == 0xFFFFFFFFLL && v71 < 2u)
    {
      v38 = v15;
      v39 = v8;
      v21 = v6;
      v36 = v16;
      v37 = v9;
      v54 = *a1;
      *&v55 = *(a1 + 2);
      *(&v55 + 1) = *(&v66 + 1);
      v22 = a1[3];
      v56 = a1[2];
      v57 = v22;
      v58 = v69;
      sub_21D1ADB0C(&v65, &v49);
      sub_21D1ADB0C(v70, &v49);
      sub_21D0CF7E0(&v54, &unk_27CE5EA00, &unk_21DC0A7C0);
      goto LABEL_10;
    }

    sub_21D1ADB0C(&v65, &v54);
    sub_21D1ADB0C(v70, &v54);
LABEL_15:
    v54 = *a1;
    *&v55 = *(a1 + 2);
    *(&v55 + 1) = v17;
    v29 = a1[3];
    v56 = a1[2];
    v57 = v29;
    v58 = v18;
    *v59 = *v64;
    *&v59[15] = *&v64[15];
    v60 = v19;
    v30 = a2[2];
    v62 = a2[3];
    v61 = v30;
    v63 = v20;
    sub_21D0CF7E0(&v54, qword_27CE5ABE0, &qword_21DC1E920);
    return 0;
  }

  v23 = *(a1 + 2);
  v54 = *a1;
  *&v55 = v23;
  *(&v55 + 1) = *(&v66 + 1);
  v24 = a1[3];
  v56 = a1[2];
  v57 = v24;
  v58 = v69;
  v53 = v69;
  v51 = v56;
  v52 = v24;
  v49 = v54;
  v50 = v55;
  if (*(&v12 + 1) >> 1 == 0xFFFFFFFFLL && v71 < 2u)
  {
    v46 = v56;
    v47 = v57;
    v48 = v58;
    v44 = v54;
    v45 = v55;
    sub_21D1ADB0C(&v65, v42);
    sub_21D1ADB0C(v70, v42);
    sub_21D1ADB0C(&v54, v42);
    sub_21D35D940(&v44);
    goto LABEL_15;
  }

  v38 = v15;
  v39 = v8;
  v21 = v6;
  v36 = v16;
  v37 = v9;
  v44 = *a2;
  v25 = *(a2 + 2);
  v26 = a2[3];
  v46 = a2[2];
  v47 = v26;
  *&v45 = v25;
  *(&v45 + 1) = v19;
  v48 = v71;
  sub_21D1ADB0C(&v65, v42);
  sub_21D1ADB0C(v70, v42);
  sub_21D1ADB0C(&v54, v42);
  v27 = _s15RemindersUICore31TTRIStaticTableViewStandardCellC4IconO2eeoiySbAE_AEtFZ_0(&v49, &v44);
  v40[2] = v46;
  v40[3] = v47;
  v41 = v48;
  v40[0] = v44;
  v40[1] = v45;
  sub_21D35D940(v40);
  v42[2] = v51;
  v42[3] = v52;
  v43 = v53;
  v42[0] = v49;
  v42[1] = v50;
  sub_21D35D940(v42);
  v44 = *a1;
  *&v45 = *(a1 + 2);
  *(&v45 + 1) = v17;
  v28 = a1[3];
  v46 = a1[2];
  v47 = v28;
  v48 = v18;
  sub_21D0CF7E0(&v44, &unk_27CE5EA00, &unk_21DC0A7C0);
  if ((v27 & 1) == 0)
  {
    return 0;
  }

LABEL_10:
  if (v7 == v13 && v21 == v14)
  {
    if (v39 == v38)
    {
      goto LABEL_20;
    }

    return 0;
  }

  v32 = sub_21DBFC64C();
  result = 0;
  if ((v32 & 1) != 0 && ((v39 ^ v38) & 1) == 0)
  {
LABEL_20:
    if (v37)
    {
      if (v36)
      {
        sub_21D1DE990();
        v33 = v36;
        v34 = v37;
        v35 = sub_21DBFB63C();

        if (v35)
        {
          return 1;
        }
      }
    }

    else if (!v36)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

void destroy for TTRIMenuCellContentState(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 64);
  if (v2 >> 1 != 0xFFFFFFFF || v3 >= 2)
  {
    sub_21D362050(*a1, *(a1 + 8), *(a1 + 16), v2, *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), v3);
  }

  v5 = *(a1 + 96);
}

uint64_t initializeWithCopy for TTRIMenuCellContentState(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = *(a2 + 64);
  if (v4 >> 1 != 0xFFFFFFFF || v5 >= 2)
  {
    v7 = *a2;
    v8 = *(a2 + 8);
    v9 = *(a2 + 16);
    v10 = *(a2 + 40);
    v19 = *(a2 + 32);
    v11 = *(a2 + 48);
    v12 = *(a2 + 56);
    sub_21D361F04(*a2, v8, v9, v4, v19, v10, v11, v12, v5);
    *a1 = v7;
    *(a1 + 8) = v8;
    *(a1 + 16) = v9;
    *(a1 + 24) = v4;
    *(a1 + 32) = v19;
    *(a1 + 40) = v10;
    *(a1 + 48) = v11;
    *(a1 + 56) = v12;
    *(a1 + 64) = v5;
  }

  else
  {
    v13 = *(a2 + 48);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = v13;
    *(a1 + 64) = *(a2 + 64);
    v14 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v14;
  }

  v15 = *(a2 + 80);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = v15;
  *(a1 + 88) = *(a2 + 88);
  v16 = *(a2 + 96);
  *(a1 + 96) = v16;
  sub_21DBF8E0C();
  v17 = v16;
  return a1;
}

uint64_t assignWithCopy for TTRIMenuCellContentState(uint64_t a1, uint64_t *a2)
{
  v4 = a2[3];
  v5 = *(a2 + 64);
  v7 = v4 >> 1 == 0xFFFFFFFF && v5 < 2;
  if (*(a1 + 24) >> 1 != 0xFFFFFFFFLL || *(a1 + 64) >= 2u)
  {
    if (v7)
    {
      sub_21D35D940(a1);
      *a1 = *a2;
      v10 = *(a2 + 2);
      v9 = *(a2 + 3);
      v11 = *(a2 + 1);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 32) = v10;
      *(a1 + 48) = v9;
      *(a1 + 16) = v11;
    }

    else
    {
      v15 = *a2;
      v16 = a2[1];
      v17 = a2[2];
      v18 = a2[5];
      v40 = a2[4];
      v19 = a2[6];
      v20 = a2[7];
      sub_21D361F04(*a2, v16, v17, v4, v40, v18, v19, v20, v5);
      v21 = *a1;
      v22 = *(a1 + 8);
      v23 = *(a1 + 16);
      v24 = *(a1 + 24);
      v25 = *(a1 + 32);
      v26 = *(a1 + 40);
      v27 = *(a1 + 48);
      v28 = *(a1 + 56);
      v29 = *(a1 + 64);
      *a1 = v15;
      *(a1 + 8) = v16;
      *(a1 + 16) = v17;
      *(a1 + 24) = v4;
      *(a1 + 32) = v40;
      *(a1 + 40) = v18;
      *(a1 + 48) = v19;
      *(a1 + 56) = v20;
      *(a1 + 64) = v5;
      sub_21D362050(v21, v22, v23, v24, v25, v26, v27, v28, v29);
    }
  }

  else if (v7)
  {
    *a1 = *a2;
    v12 = *(a2 + 1);
    v13 = *(a2 + 2);
    v14 = *(a2 + 3);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 32) = v13;
    *(a1 + 48) = v14;
    *(a1 + 16) = v12;
  }

  else
  {
    v30 = *a2;
    v31 = a2[1];
    v32 = a2[2];
    v33 = a2[5];
    v41 = a2[4];
    v34 = a2[6];
    v35 = a2[7];
    sub_21D361F04(*a2, v31, v32, v4, v41, v33, v34, v35, v5);
    *a1 = v30;
    *(a1 + 8) = v31;
    *(a1 + 16) = v32;
    *(a1 + 24) = v4;
    *(a1 + 32) = v41;
    *(a1 + 40) = v33;
    *(a1 + 48) = v34;
    *(a1 + 56) = v35;
    *(a1 + 64) = v5;
  }

  *(a1 + 72) = a2[9];
  *(a1 + 80) = a2[10];
  sub_21DBF8E0C();

  *(a1 + 88) = *(a2 + 88);
  v36 = *(a1 + 96);
  v37 = a2[12];
  *(a1 + 96) = v37;
  v38 = v37;

  return a1;
}

uint64_t assignWithTake for TTRIMenuCellContentState(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  v5 = *(a1 + 64);
  if (v4 >> 1 == 0xFFFFFFFF && v5 < 2)
  {
    goto LABEL_12;
  }

  v7 = *(a2 + 24);
  v8 = *(a2 + 64);
  if (v7 >> 1 == 0xFFFFFFFF && v8 < 2)
  {
    sub_21D35D940(a1);
LABEL_12:
    v19 = *(a2 + 48);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = v19;
    *(a1 + 64) = *(a2 + 64);
    v20 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v20;
    goto LABEL_13;
  }

  v10 = *(a2 + 16);
  v11 = *a1;
  v12 = *(a1 + 8);
  v13 = *(a1 + 16);
  v14 = *(a1 + 32);
  v15 = *(a1 + 40);
  v16 = *(a1 + 48);
  v17 = *(a1 + 56);
  *a1 = *a2;
  *(a1 + 16) = v10;
  *(a1 + 24) = v7;
  v18 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v18;
  *(a1 + 64) = v8;
  sub_21D362050(v11, v12, v13, v4, v14, v15, v16, v17, v5);
LABEL_13:
  v21 = *(a2 + 80);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = v21;

  *(a1 + 88) = *(a2 + 88);
  v22 = *(a1 + 96);
  *(a1 + 96) = *(a2 + 96);

  return a1;
}

uint64_t getEnumTagSinglePayload for TTRIMenuCellContentState(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 80);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRIMenuCellContentState(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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
      *(result + 80) = (a2 - 1);
      return result;
    }

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void __swiftcall TTRIStaticTableViewStandardCell.CustomViewOptions.init(size:rectInsets:)(RemindersUICore::TTRIStaticTableViewStandardCell::CustomViewOptions *__return_ptr retstr, CGSize_optional size, UIEdgeInsets_optional *rectInsets)
{
  *&v5[7] = *v4;
  *&v5[23] = *(v4 + 16);
  *retstr->gap11 = *v5;
  v5[39] = *(v4 + 32);
  retstr->size.value.width = *&size.is_nil;
  *&retstr->size.value.height = rectInsets;
  retstr->size.is_nil = v3 & 1;
  *(&retstr->rectInsets.value.left + 1) = *&v5[16];
  *(&retstr->rectInsets.value.right + 1) = *&v5[32];
}

id sub_21DA7A9D8@<X0>(void *a1@<X8>)
{
  v3 = qword_27CE65580;
  swift_beginAccess();
  result = 0;
  if (v1[v3])
  {
    goto LABEL_16;
  }

  if ((v1[qword_27CE65588] & 1) == 0)
  {
    v5 = [v1 traitCollection];
    v6 = [v5 preferredContentSizeCategory];

    LOBYTE(v5) = sub_21DBFB42C();
    if ((v5 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  v7 = [*&v1[qword_27CE5AF20] arrangedSubviewRows];
  if (!v7)
  {
    goto LABEL_15;
  }

  v8 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F100, &qword_21DC18230);
  v9 = sub_21DBFA5EC();

  if (!*(v9 + 16))
  {
    goto LABEL_14;
  }

  v10 = *(v9 + 32);
  sub_21DBF8E0C();

  if (!(v10 >> 62))
  {
    result = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_8;
    }

    goto LABEL_14;
  }

  result = sub_21DBFBD7C();
  if (!result)
  {
LABEL_14:

LABEL_15:
    result = *&v1[qword_27CE65590];
    goto LABEL_16;
  }

LABEL_8:
  if ((v10 & 0xC000000000000001) != 0)
  {
    v11 = MEMORY[0x223D44740](0, v10);
    goto LABEL_11;
  }

  if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v11 = *(v10 + 32);
LABEL_11:
    v12 = v11;

    result = v12;
LABEL_16:
    *a1 = result;
    return result;
  }

  __break(1u);
  return result;
}

void sub_21DA7AB8C(char *a1@<X8>)
{
  v3 = v1 + qword_27CE655A0;
  swift_beginAccess();
  if (*(v3 + 64) < 2u && *(v3 + 24) >> 1 == 0xFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    v5 = 2;
  }

  *a1 = v5;
}

void sub_21DA7ABF8(uint64_t a1)
{
  if (*(v1 + qword_27CE5AF20) == a1)
  {
    (*((*MEMORY[0x277D85000] & *v1) + 0x68))(&v2);
    UITableViewCell.setSeparatorInsetType(_:)(&v2);
    sub_21D22BF80(v2);
  }

  sub_21DA7E4FC();
}

uint64_t sub_21DA7AC84()
{
  v1 = qword_27CE655A8;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_21DA7ACC8(char a1)
{
  v3 = a1 & 1;
  v4 = qword_27CE655A8;
  swift_beginAccess();
  v5 = *(v1 + v4);
  *(v1 + v4) = a1;
  if (v5 != v3)
  {
    [*(v1 + qword_27CE65590) setEnabled_];
    v6 = *(v1 + qword_27CE655B0);
    if (v6)
    {
      [v6 setEnabled_];
    }

    v7 = *(v1 + qword_27CE655B8);
    if (v7)
    {
      if (*(v1 + v4))
      {
        v8 = 1.0;
      }

      else
      {
        v8 = 0.4;
      }

      v9 = v7;
      [v9 setAlpha_];
    }
  }
}

void (*sub_21DA7ADB0(uint64_t *a1))(uint64_t a1, __n128 a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = qword_27CE655A8;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_21DA7AE44;
}

void sub_21DA7AE44(uint64_t a1, __n128 a2)
{
  v2 = *a1;
  v4 = *(*a1 + 24);
  v3 = *(*a1 + 32);
  v5 = *(*a1 + 40);
  v6 = *(v4 + v3);
  *(v4 + v3) = v5;
  sub_21DA7ECAC(v6);

  free(v2);
}

uint64_t sub_21DA7AE8C@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + qword_27CE655A0;
  swift_beginAccess();
  v4 = *(v3 + 48);
  v11 = *(v3 + 32);
  v12 = v4;
  v13 = *(v3 + 64);
  v5 = v13;
  v6 = *(v3 + 16);
  v10[0] = *v3;
  v7 = v10[0];
  v10[1] = v6;
  *(a1 + 32) = v11;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *a1 = v7;
  *(a1 + 16) = v6;
  return sub_21D1ADB0C(v10, &v9);
}

uint64_t sub_21DA7AF04(__int128 *a1)
{
  v3 = v1 + qword_27CE655A0;
  swift_beginAccess();
  v4 = *(v3 + 48);
  v15 = *(v3 + 32);
  v16 = v4;
  v17 = *(v3 + 64);
  v5 = *(v3 + 16);
  v13 = *v3;
  v14 = v5;
  v18[2] = v15;
  v18[3] = v4;
  v19 = v17;
  v18[0] = v13;
  v18[1] = v5;
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[2];
  v9 = a1[3];
  *(v3 + 64) = *(a1 + 64);
  *(v3 + 32) = v8;
  *(v3 + 48) = v9;
  *v3 = v6;
  *(v3 + 16) = v7;
  sub_21D1ADB0C(&v13, v11);
  sub_21D0CF7E0(v18, &unk_27CE5EA00, &unk_21DC0A7C0);
  v11[2] = v15;
  v11[3] = v16;
  v12 = v17;
  v11[0] = v13;
  v11[1] = v14;
  sub_21DA7EF48(v11);
  return sub_21D0CF7E0(&v13, &unk_27CE5EA00, &unk_21DC0A7C0);
}

void (*sub_21DA7AFEC(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x220uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 528) = v1;
  v5 = qword_27CE655A0;
  *(v3 + 536) = qword_27CE655A0;
  v6 = v1 + v5;
  swift_beginAccess();
  *v4 = *v6;
  v7 = *(v6 + 16);
  v8 = *(v6 + 32);
  v9 = *(v6 + 48);
  *(v4 + 64) = *(v6 + 64);
  *(v4 + 32) = v8;
  *(v4 + 48) = v9;
  *(v4 + 16) = v7;
  v11 = *(v6 + 32);
  v10 = *(v6 + 48);
  v12 = *(v6 + 64);
  *(v4 + 88) = *(v6 + 16);
  *(v4 + 136) = v12;
  *(v4 + 120) = v10;
  *(v4 + 104) = v11;
  *(v4 + 72) = *v6;
  sub_21D1ADB0C(v4, v4 + 144);
  return sub_21DA7B0D0;
}

void sub_21DA7B0D0(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *a1 + 216;
  v4 = *(v2 + 528) + *(v2 + 536);
  if (a2)
  {
    v5 = *(v2 + 88);
    v6 = *(v2 + 120);
    *(v2 + 392) = *(v2 + 104);
    *(v2 + 408) = v6;
    *(v2 + 424) = *(v2 + 136);
    *(v2 + 360) = *(v2 + 72);
    *(v2 + 376) = v5;
    v8 = *(v4 + 32);
    v7 = *(v4 + 48);
    v9 = *(v4 + 16);
    *(v2 + 352) = *(v4 + 64);
    *(v2 + 320) = v8;
    *(v2 + 336) = v7;
    *(v2 + 304) = v9;
    *(v2 + 288) = *v4;
    *v3 = *v4;
    v11 = *(v4 + 32);
    v10 = *(v4 + 48);
    v12 = *(v4 + 16);
    *(v3 + 64) = *(v4 + 64);
    *(v3 + 32) = v11;
    *(v3 + 48) = v10;
    *(v3 + 16) = v12;
    *v4 = *(v2 + 72);
    v13 = *(v2 + 88);
    v14 = *(v2 + 104);
    v15 = *(v2 + 120);
    *(v4 + 64) = *(v2 + 136);
    *(v4 + 32) = v14;
    *(v4 + 48) = v15;
    *(v4 + 16) = v13;
    sub_21D1ADB0C(v2 + 360, v2 + 432);
    sub_21D1ADB0C(v2 + 288, v2 + 432);
    sub_21D0CF7E0(v3, &unk_27CE5EA00, &unk_21DC0A7C0);
    v16 = *(v2 + 336);
    v34 = *(v2 + 320);
    v35 = v16;
    v36 = *(v2 + 352);
    v17 = *(v2 + 304);
    v32 = *(v2 + 288);
    v33 = v17;
    sub_21DA7EF48(&v32);
    sub_21D0CF7E0(v2 + 288, &unk_27CE5EA00, &unk_21DC0A7C0);
    v18 = *(v2 + 88);
    v19 = *(v2 + 120);
    *(v2 + 176) = *(v2 + 104);
    *(v2 + 192) = v19;
    *(v2 + 208) = *(v2 + 136);
    *(v2 + 144) = *(v2 + 72);
    *(v2 + 160) = v18;
    v20 = v2 + 144;
  }

  else
  {
    *v3 = *v4;
    v22 = *(v4 + 32);
    v21 = *(v4 + 48);
    v23 = *(v4 + 16);
    *(v3 + 64) = *(v4 + 64);
    *(v3 + 32) = v22;
    *(v3 + 48) = v21;
    *(v3 + 16) = v23;
    v25 = *(v4 + 32);
    v24 = *(v4 + 48);
    v26 = *(v4 + 16);
    *(v2 + 208) = *(v4 + 64);
    *(v2 + 176) = v25;
    *(v2 + 192) = v24;
    *(v2 + 160) = v26;
    *(v2 + 144) = *v4;
    *v4 = *(v2 + 72);
    v27 = *(v2 + 88);
    v28 = *(v2 + 104);
    v29 = *(v2 + 120);
    *(v4 + 64) = *(v2 + 136);
    *(v4 + 32) = v28;
    *(v4 + 48) = v29;
    *(v4 + 16) = v27;
    sub_21D1ADB0C(v3, v2 + 288);
    sub_21D0CF7E0(v2 + 144, &unk_27CE5EA00, &unk_21DC0A7C0);
    v30 = *(v3 + 48);
    v34 = *(v3 + 32);
    v35 = v30;
    v36 = *(v3 + 64);
    v31 = *(v3 + 16);
    v32 = *v3;
    v33 = v31;
    sub_21DA7EF48(&v32);
    v20 = v3;
  }

  sub_21D0CF7E0(v20, &unk_27CE5EA00, &unk_21DC0A7C0);

  free(v2);
}

uint64_t sub_21DA7B310()
{
  v1 = [*(v0 + qword_27CE65590) text];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_21DBFA16C();

  return v3;
}

void sub_21DA7B380(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + qword_27CE65590);
  if (a2)
  {
    v4 = v3;
    v6 = sub_21DBFA12C();
  }

  else
  {
    v5 = v3;
    v6 = 0;
  }

  [v3 setText_];
}

uint64_t (*sub_21DA7B418(uint64_t *a1))()
{
  v3 = qword_27CE65590;
  a1[2] = v1;
  a1[3] = v3;
  v4 = [*(v1 + v3) text];
  if (v4)
  {
    v5 = v4;
    v6 = sub_21DBFA16C();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *a1 = v6;
  a1[1] = v8;
  return sub_21DA7B4A8;
}

void sub_21DA7B4A8(void *a1, char a2)
{
  v2 = a1[1];
  v3 = *(a1[2] + a1[3]);
  v7 = v3;
  if (a2)
  {
    v4 = v3;
    if (v2)
    {
      sub_21DBF8E0C();
      v5 = sub_21DBFA12C();
    }

    else
    {
      v5 = 0;
    }

    [v7 setText_];
  }

  else
  {
    v6 = v3;
    if (v2)
    {
      v5 = sub_21DBFA12C();
    }

    else
    {
      v5 = 0;
    }

    [v7 setText_];
  }
}

void sub_21DA7B5A0(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = &v2[qword_27CE655C8];
  swift_beginAccess();
  v7 = *v6;
  v8 = *(v6 + 1);
  *v6 = a1;
  *(v6 + 1) = a2;
  if (a2)
  {
    if (v8)
    {
      v9 = v7 == a1 && v8 == a2;
      if (v9 || (sub_21DBFC64C() & 1) != 0)
      {

        return;
      }
    }
  }

  else if (!v8)
  {
    return;
  }

  v10 = *&v2[qword_27CE5AF20];
  v11 = swift_allocObject();
  *(v11 + 16) = v2;
  *(v11 + 24) = ObjectType;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_21DA816D0;
  *(v12 + 24) = v11;
  aBlock[4] = sub_21D0E6078;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_136;
  v13 = _Block_copy(aBlock);
  v14 = v2;

  [v10 performBatchUpdates_];
  _Block_release(v13);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}

void (*sub_21DA7B788(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = (v1 + qword_27CE655C8);
  swift_beginAccess();
  v6 = v5[1];
  *(v4 + 24) = *v5;
  *(v4 + 32) = v6;
  sub_21DBF8E0C();
  return sub_21DA7B828;
}

void sub_21DA7B828(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  if (a2)
  {
    sub_21DBF8E0C();
    sub_21DA7B5A0(v3, v4);
  }

  else
  {
    sub_21DA7B5A0(*(*a1 + 24), v4);
  }

  free(v2);
}

double sub_21DA7B8AC(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + qword_27CE655D0);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  return result;
}

id sub_21DA7B96C@<X0>(void *a1@<X8>)
{
  v3 = qword_27CE655D8;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *a1 = v4;

  return v4;
}

void (*sub_21DA7B9DC(uint64_t *a1))(void **a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = qword_27CE655D8;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return sub_21DA7BA78;
}

id sub_21DA7BA90@<X0>(void *a1@<X8>)
{
  v3 = qword_27CE655E8;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *a1 = v4;

  return v4;
}

void sub_21DA7BB00(void **a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v2 + v4);
  *(v2 + v4) = v3;
  if (v3)
  {
    if (v5)
    {
      sub_21D0D8CF0(0, &qword_280D17680, 0x277D82BB8);
      v6 = v3;
      v7 = v5;
      v8 = v6;
      v9 = sub_21DBFB63C();

      if (v9)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }
  }

  else if (!v5)
  {
    goto LABEL_9;
  }

  sub_21DA7E934();
LABEL_9:
  v7 = v5;
LABEL_10:
}

void (*sub_21DA7BBD8(uint64_t *a1))(void **a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = qword_27CE655E8;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return sub_21DA7BC74;
}

void sub_21DA7BC8C(void **a1, char a2, void (*a3)(id *))
{
  v4 = *a1;
  v6 = (*a1 + 24);
  v5 = *v6;
  v8 = *v6;
  if (a2)
  {
    v7 = v5;
    a3(&v8);
  }

  else
  {
    a3(&v8);
  }

  free(v4);
}

id sub_21DA7BD14()
{
  v1 = [*(v0 + qword_27CE65590) font];

  return v1;
}

void sub_21DA7BD54(void *a1)
{
  [*(v1 + qword_27CE65590) setFont_];
}

void (*sub_21DA7BDA4(void *a1))(uint64_t a1)
{
  v2 = qword_27CE65590;
  a1[1] = v1;
  a1[2] = v2;
  *a1 = [*(v1 + v2) font];
  return sub_21DA7BE08;
}

void sub_21DA7BE08(uint64_t a1)
{
  v1 = *a1;
  [*(*(a1 + 8) + *(a1 + 16)) setFont_];
}

void *sub_21DA7BE54()
{
  v1 = qword_27CE655F0;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_21DA7BEA0(void *a1)
{
  v3 = qword_27CE655F0;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  v6 = *(v1 + qword_27CE655B0);
  if (v6)
  {
    v7 = *(v1 + v3);
    v8 = v6;
    [v8 setFont_];
  }
}

uint64_t (*sub_21DA7BF44(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = qword_27CE655F0;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_21DA7BFCC;
}

void sub_21DA7BFCC(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = *(v4 + qword_27CE655B0);
    if (v5)
    {
      [v5 setFont_];
    }
  }

  free(v3);
}

void *sub_21DA7C038()
{
  v1 = qword_27CE655F8;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_21DA7C084(id a1)
{
  v3 = qword_27CE655F8;
  swift_beginAccess();
  v4 = *&v1[v3];
  *&v1[v3] = a1;
  if (a1)
  {
    if (v4)
    {
      v5 = v1;
      sub_21D0D8CF0(0, &qword_280D177E0, 0x277CCA898);
      a1 = a1;
      v6 = v4;
      v7 = sub_21DBFB63C();

      if (v7)
      {

        return;
      }

      v1 = v5;
    }

    else
    {
      a1 = a1;
    }
  }

  else if (!v4)
  {
    return;
  }

  v8 = *&v1[qword_27CE5AF20];
  v9 = swift_allocObject();
  *(v9 + 16) = v1;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_21DA816D8;
  *(v10 + 24) = v9;
  aBlock[4] = sub_21D11DA28;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_17_6;
  v11 = _Block_copy(aBlock);
  v12 = v1;

  [v8 performBatchUpdates_];
  _Block_release(v11);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}

void (*sub_21DA7C290(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = qword_27CE655F8;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return sub_21DA7C32C;
}

void *sub_21DA7C344()
{
  v1 = qword_27CE65608;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_21DA7C390(id a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = qword_27CE65608;
  swift_beginAccess();
  v6 = *&v2[v5];
  *&v2[v5] = a1;
  if (a1)
  {
    if (v6)
    {
      sub_21D0D8CF0(0, &qword_280D177E0, 0x277CCA898);
      a1 = a1;
      v7 = v6;
      v8 = sub_21DBFB63C();

      if (v8)
      {

        return;
      }
    }

    else
    {
      a1 = a1;
    }
  }

  else if (!v6)
  {
    return;
  }

  v9 = *&v2[qword_27CE5AF20];
  v10 = swift_allocObject();
  *(v10 + 16) = v2;
  *(v10 + 24) = ObjectType;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_21DA85014;
  *(v11 + 24) = v10;
  aBlock[4] = sub_21D11DA28;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_28_2;
  v12 = _Block_copy(aBlock);
  v13 = v2;

  [v9 performBatchUpdates_];
  _Block_release(v12);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }
}

void (*sub_21DA7C5A0(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = qword_27CE65608;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return sub_21DA7C63C;
}

void sub_21DA7C654(uint64_t a1, char a2, void (*a3)(id))
{
  v4 = *a1;
  v6 = (*a1 + 24);
  v5 = *v6;
  if (a2)
  {
    v7 = v5;
    a3(v5);
  }

  else
  {
    a3(*(*a1 + 24));
  }

  free(v4);
}

void sub_21DA7C6D4(uint64_t a1@<X8>)
{
  v3 = v1 + qword_27CE65610;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  v9 = *(v3 + 40);
  *(a1 + 40) = v9;
  sub_21D361B20(v4, v5, v6, v7, v8, v9);
}

void sub_21DA7C740(uint64_t a1)
{
  v2 = a1;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = v1 + qword_27CE65610;
  swift_beginAccess();
  v6 = *v5;
  v7 = *(v5 + 8);
  v8 = *(v5 + 16);
  v9 = *(v5 + 24);
  v10 = *(v5 + 32);
  v11 = v2[1];
  *v5 = *v2;
  *(v5 + 16) = v11;
  *(v5 + 32) = v3;
  LOBYTE(v2) = *(v5 + 40);
  *(v5 + 40) = v4;
  sub_21D361B20(v6, v7, v8, v9, v10, v2);
  sub_21D361BB4(v6, v7, v8, v9, v10, v2);
  v12[0] = v6;
  v12[1] = v7;
  v12[2] = v8;
  v12[3] = v9;
  v12[4] = v10;
  v13 = v2;
  sub_21DA7F6B4(v12);
  sub_21D361BB4(v6, v7, v8, v9, v10, v2);
}

void (*sub_21DA7C83C(uint64_t *a1))(void ***a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = qword_27CE65610;
  *(v3 + 72) = v1;
  *(v3 + 80) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  v7 = *v6;
  v8 = *(v6 + 8);
  v9 = *(v6 + 16);
  v10 = *(v6 + 24);
  v11 = *(v6 + 32);
  v12 = *(v6 + 40);
  *v4 = *v6;
  *(v4 + 8) = v8;
  *(v4 + 16) = v9;
  *(v4 + 24) = v10;
  *(v4 + 32) = v11;
  *(v4 + 40) = v12;
  sub_21D361B20(v7, v8, v9, v10, v11, v12);
  return sub_21DA7C8F0;
}

void sub_21DA7C8F0(void ***a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[10] + (*a1)[9];
  v5 = **a1;
  v6 = v3[1];
  v7 = v3[2];
  v8 = v3[3];
  v9 = v3[4];
  v10 = *(v3 + 40);
  v12 = *v4;
  v11 = *(v4 + 8);
  v14 = *(v4 + 16);
  v13 = *(v4 + 24);
  v15 = *(v4 + 32);
  v16 = *(v4 + 40);
  *v4 = v5;
  *(v4 + 8) = v6;
  *(v4 + 16) = v7;
  *(v4 + 24) = v8;
  *(v4 + 32) = v9;
  *(v4 + 40) = v10;
  if (a2)
  {
    sub_21D361B20(v5, v6, v7, v8, v9, v10);
    sub_21D361B20(v12, v11, v14, v13, v15, v16);
    sub_21D361BB4(v12, v11, v14, v13, v15, v16);
    v23 = v12;
    v24 = v11;
    v25 = v14;
    v26 = v13;
    v27 = v15;
    v28 = v16;
    sub_21DA7F6B4(&v23);
    sub_21D361BB4(v12, v11, v14, v13, v15, v16);
    v17 = *v3;
    v18 = v3[1];
    v19 = v3[2];
    v20 = v3[3];
    v21 = v3[4];
    v22 = *(v3 + 40);
  }

  else
  {
    sub_21D361B20(v12, v11, v14, v13, v15, v16);
    sub_21D361BB4(v12, v11, v14, v13, v15, v16);
    v23 = v12;
    v24 = v11;
    v25 = v14;
    v26 = v13;
    v27 = v15;
    v28 = v16;
    sub_21DA7F6B4(&v23);
    v17 = v12;
    v18 = v11;
    v19 = v14;
    v20 = v13;
    v21 = v15;
    v22 = v16;
  }

  sub_21D361BB4(v17, v18, v19, v20, v21, v22);

  free(v3);
}

void *sub_21DA7CA78()
{
  v1 = v0 + qword_27CE65618;
  swift_beginAccess();
  v2 = *v1;
  sub_21D639460(*v1, *(v1 + 8));
  return v2;
}

uint64_t sub_21DA7CAF4(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v3 = *v2;
  sub_21DBF8E0C();
  return v3;
}

uint64_t sub_21DA7CB48(uint64_t a1, uint64_t a2)
{
  v5 = &v2[qword_27CE65620];
  swift_beginAccess();
  *v5 = a1;
  *(v5 + 1) = a2;

  v6 = *&v2[qword_27CE5AF20];
  v7 = swift_allocObject();
  *(v7 + 16) = v2;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_21DA82084;
  *(v8 + 24) = v7;
  aBlock[4] = sub_21D11DA28;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_39_0;
  v9 = _Block_copy(aBlock);
  v10 = v2;

  [v6 performBatchUpdates_];
  _Block_release(v9);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t (*sub_21DA7CCDC(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  *a1 = v3;
  *(v3 + 48) = v1;
  swift_beginAccess();
  return sub_21DA7CD64;
}

void sub_21DA7CD64(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if (a2 & 1) == 0 && (v4 = v3[6], v5 = *&v4[qword_27CE5AF20], v6 = swift_allocObject(), *(v6 + 16) = v4, v7 = swift_allocObject(), *(v7 + 16) = sub_21DA85028, *(v7 + 24) = v6, v3[4] = sub_21D11DA28, v3[5] = v7, *v3 = MEMORY[0x277D85DD0], v3[1] = 1107296256, v3[2] = sub_21D0E6204, v3[3] = &block_descriptor_51_2, v8 = _Block_copy(v3), v9 = v4, , , [v5 performBatchUpdates_], _Block_release(v8), LOBYTE(v5) = swift_isEscapingClosureAtFileLocation(), , , (v5))
  {
    __break(1u);
  }

  else
  {

    free(v3);
  }
}

uint64_t sub_21DA7CEEC()
{
  v1 = qword_27CE65580;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_21DA7CF30(char a1)
{
  v3 = a1 & 1;
  v4 = qword_27CE65580;
  swift_beginAccess();
  v5 = *(v1 + v4);
  *(v1 + v4) = a1;
  if (v5 != v3)
  {
    [*(v1 + qword_27CE5AF20) invalidateIntrinsicContentSize];
  }
}

void (*sub_21DA7CFAC(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = qword_27CE65580;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_21DA7D040;
}

void sub_21DA7D040(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 24);
  v2 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v5 = *(v3 + v2);
  *(v3 + v2) = v4;
  if (v4 != v5)
  {
    [*(v1[3] + qword_27CE5AF20) invalidateIntrinsicContentSize];
  }

  free(v1);
}

uint64_t sub_21DA7D0AC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + qword_27CE5AF20);
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v9[4] = sub_21D11DA28;
  v9[5] = v6;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_21D0E6204;
  v9[3] = &block_descriptor_59_1;
  v7 = _Block_copy(v9);

  [v5 performBatchUpdates_];
  _Block_release(v7);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }

  return result;
}

double sub_21DA7D1D4@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1;
  return result;
}

__n128 sub_21DA7D1E8@<Q0>(uint64_t a1@<X8>)
{
  if (*(v1 + qword_27CE65588) & 1) != 0 || (v3 = [v1 traitCollection], v4 = objc_msgSend(v3, sel_preferredContentSizeCategory), v3, LOBYTE(v3) = sub_21DBFB42C(), v4, (v3))
  {
    if (((*((*MEMORY[0x277D85000] & *v1) + 0x2D8))() & 1) == 0)
    {
      *a1 = 1;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
      *(a1 + 32) = 1;
      return result;
    }

    *a1 = 2;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
  }

  else
  {
    (*((*MEMORY[0x277D85000] & *v1) + 0x2D0))(&v7);
    if ((v10 & 1) == 0)
    {
      v6 = v8 & 1;
      result = v9;
      *a1 = v7;
      *(a1 + 8) = v6;
      *(a1 + 16) = result;
      *(a1 + 32) = 0;
      return result;
    }

    result.n128_u64[0] = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  *(a1 + 32) = 1;
  return result;
}

uint64_t sub_21DA7D34C()
{
  sub_21DA7D1E8(&v21);
  if (v23 == 1 && v22 | *(&v22 + 1) | v21 | *(&v21 + 1))
  {
    sub_21DA7D5C8(&v21);
  }

  else
  {
    sub_21DA7DC5C(&v21);
  }

  v1 = v21;
  v16 = v21;
  v17 = v22;
  v18 = v23;
  v19 = v24;
  v20 = v25;
  v2 = *&v0[qword_27CE5AF20];
  v3 = [v2 arrangedSubviewRows];
  if (v3)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F100, &qword_21DC18230);
    v5 = sub_21DBFA5EC();

    sub_21DBF8E0C();
    sub_21D1D7AB4(v5, v1);
    LOBYTE(v4) = v6;

    if (v4)
    {
      return sub_21DA84AD0(&v16);
    }
  }

  v8 = swift_allocObject();
  *(v8 + 16) = v0;
  v9 = v16;
  *(v8 + 40) = v17;
  v10 = v19;
  *(v8 + 56) = v18;
  *(v8 + 72) = v10;
  *(v8 + 88) = v20;
  *(v8 + 24) = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_21DA84AC4;
  *(v11 + 24) = v8;
  aBlock[4] = sub_21D11DA28;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D0E6204;
  aBlock[3] = &block_descriptor_151_0;
  v12 = _Block_copy(aBlock);
  v13 = v0;

  [v2 performBatchUpdates_];
  _Block_release(v12);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void sub_21DA7D5C8(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = (*((*MEMORY[0x277D85000] & *v1) + 0x2D8))();
  v5 = qword_27CE655B8;
  v6 = *(v1 + qword_27CE655B8);
  v7 = MEMORY[0x277D84F90];
  if (v4)
  {
    if (v6)
    {
      v8 = v6;
    }

    v9 = *(v2 + qword_27CE65590);
    v61[4] = v6;
    v61[5] = v9;
    v10 = v2 + qword_27CE65618;
    swift_beginAccess();
    v11 = *v10;
    if (*v10)
    {
      v12 = *(v10 + 1);
      v13 = v9;
      sub_21D639460(v11, v12);
      v14 = v11;
      sub_21D5C5F74(v11, v12);
    }

    else
    {
      v40 = v9;
    }

    v41 = 0;
    v23 = v61;
    v61[6] = v11;
    v60 = v7;
    v42 = v7;
    v7 = 3;
LABEL_28:
    if (v41 <= 3)
    {
      v43 = 3;
    }

    else
    {
      v43 = v41;
    }

    while (v41 != 3)
    {
      if (v43 == v41)
      {
        __break(1u);
        goto LABEL_61;
      }

      v44 = v61[v41++ + 4];
      if (v44)
      {
        v45 = v44;
        MEMORY[0x223D42D80]();
        if (*((v60 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v60 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_21DBFA63C();
        }

        sub_21DBFA6CC();
        v42 = v60;
        v23 = v61;
        goto LABEL_28;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE65670, &qword_21DC39928);
    swift_arrayDestroy();
    v37 = MEMORY[0x277D84F90];
    v23 = sub_21D210CD8(0, 1, 1, MEMORY[0x277D84F90]);
    v47 = v23[2];
    v46 = v23[3];
    if (v47 >= v46 >> 1)
    {
      v23 = sub_21D210CD8((v46 > 1), v47 + 1, 1, v23);
    }

    v23[2] = v47 + 1;
    v23[v47 + 4] = v42;
    v48 = *(v2 + qword_27CE655B0);
    if (!v48)
    {
      v7 = MEMORY[0x277D84F90];
      goto LABEL_58;
    }

    v59[4] = *(v2 + qword_27CE655B0);
    v49 = *v10;
    if (*v10)
    {
      v50 = *(v10 + 1);
      v51 = v48;
      sub_21D639460(v49, v50);
      v52 = v49;
      sub_21D5C5F74(v49, v50);
    }

    else
    {
      v53 = v48;
    }

    v54 = 0;
    v59[5] = v49;
    v60 = v37;
    while (v54 != 2)
    {
      v55 = v59[v54++ + 4];
      if (v55)
      {
        v56 = v55;
        MEMORY[0x223D42D80]();
        if (*((v60 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v60 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_21DBFA63C();
        }

        sub_21DBFA6CC();
        v37 = v60;
      }
    }

    swift_arrayDestroy();
    v60 = v37;
    if (*(v2 + v5))
    {
      v7 = MEMORY[0x277D84F90];
      if (v37 >> 62 && sub_21DBFBD7C() < 0)
      {
        __break(1u);
        return;
      }

      sub_21DBD14CC(0, 0, v48);

      v37 = v60;
    }

    else
    {

      v7 = MEMORY[0x277D84F90];
    }

    v39 = v23[2];
    v57 = v23[3];
    if (v39 >= v57 >> 1)
    {
      v23 = sub_21D210CD8((v57 > 1), v39 + 1, 1, v23);
    }

    v23[2] = v39 + 1;
  }

  else
  {
    if (v6)
    {
      v15 = v6;
    }

    v16 = *(v2 + qword_27CE65590);
    v63[4] = v6;
    v63[5] = v16;
    v62 = v7;
    v17 = v16;
    v18 = 0;
    v19 = v7;
    while (v18 != 2)
    {
      v20 = v63[v18++ + 4];
      if (v20)
      {
        v21 = v20;
        MEMORY[0x223D42D80]();
        if (*((v62 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v62 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_21DBFA63C();
        }

        sub_21DBFA6CC();
        v19 = v62;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE65670, &qword_21DC39928);
    swift_arrayDestroy();
    if (v19 >> 62)
    {
      v22 = sub_21DBFBD7C();
    }

    else
    {
      v22 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v23 = sub_21D210CD8(0, 1, 1, MEMORY[0x277D84F90]);
    v25 = v23[2];
    v24 = v23[3];
    if (v25 >= v24 >> 1)
    {
      v23 = sub_21D210CD8((v24 > 1), v25 + 1, 1, v23);
    }

    v23[2] = v25 + 1;
    v23[v25 + 4] = v19;
    v26 = *(v2 + qword_27CE655B0);
    if (v26)
    {
      v27 = v7;
      v28 = v26;
      v29 = sub_21D4422A8(v28, v22);
      v31 = v23[2];
      v30 = v23[3];
      if (v31 >= v30 >> 1)
      {
        v23 = sub_21D210CD8((v30 > 1), v31 + 1, 1, v23);
      }

      v23[2] = v31 + 1;
      v23[v31 + 4] = v29;
      v7 = v27;
    }

    v32 = v2 + qword_27CE65618;
    swift_beginAccess();
    v33 = *v32;
    if (!*v32)
    {
      goto LABEL_58;
    }

    v34 = *(v32 + 1);
    sub_21D639460(v33, v34);
    v35 = v33;
    sub_21D5C5F74(v33, v34);
    v36 = v35;
    v37 = sub_21D4422A8(v36, v22);

    v39 = v23[2];
    v38 = v23[3];
    if (v39 >= v38 >> 1)
    {
      v23 = sub_21D210CD8((v38 > 1), v39 + 1, 1, v23);
    }

    v23[2] = v39 + 1;
  }

  v23[v39 + 4] = v37;
LABEL_58:
  if (qword_27CE56E40 != -1)
  {
LABEL_61:
    swift_once();
  }

  *a1 = v23;
  *(a1 + 8) = 0x4018000000000000;
  *(a1 + 16) = v7;
  *(a1 + 24) = 0;
  v58 = *&qword_27CE638A8;
  *(a1 + 32) = xmmword_27CE63898;
  *(a1 + 48) = v58;
  *(a1 + 64) = 1;
}

void sub_21DA7DC5C(void *a1@<X8>)
{
  v3 = v1;
  v59 = *MEMORY[0x277D85DE8];
  (*((*MEMORY[0x277D85000] & *v1) + 0x2D0))(v57);
  if (v58)
  {
    v5 = *(v1 + qword_27CE65590);
    v6 = *(v3 + qword_27CE655B0);
    v56[4] = *(v3 + qword_27CE65590);
    v56[5] = v6;
    v7 = MEMORY[0x277D84F90];
    v57[0] = MEMORY[0x277D84F90];
    v8 = v6;
    v9 = v5;
    for (i = 0; i != 2; ++i)
    {
      v11 = v56[i + 4];
      if (v11)
      {
        v12 = v11;
        MEMORY[0x223D42D80]();
        if (*((v57[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v57[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_21DBFA63C();
        }

        sub_21DBFA6CC();
        v7 = v57[0];
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE65650, &unk_21DC39918);
    swift_arrayDestroy();
    v27 = (v7 >> 62);
    if (v7 >> 62)
    {
LABEL_51:
      v28 = sub_21DBFBD7C();
    }

    else
    {
      v28 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F0F0, &unk_21DC0CB10);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21DC08D00;
    if (v27)
    {
      v2 = sub_21D0D8CF0(0, &qword_280D176A0, 0x277D75D18);
      sub_21DBF8E0C();
      v30 = sub_21DBFC33C();
    }

    else
    {
      sub_21DBF8E0C();
      sub_21DBFC65C();
      sub_21D0D8CF0(0, &qword_280D176A0, 0x277D75D18);
      v30 = v7;
    }

    *(inited + 32) = v30;
    v31 = *(v3 + qword_27CE655B8);
    if (!v31)
    {
      goto LABEL_20;
    }

    v7 = v31;
    v2 = sub_21D4422A8(v7, v28);

    v32 = *(inited + 16);
    if (v32 >= *(inited + 24) >> 1)
    {
      goto LABEL_53;
    }

    while (1)
    {
      sub_21D5058D0(0, 0, 1, v2);

LABEL_20:
      v3 += qword_27CE65618;
      swift_beginAccess();
      v33 = *v3;
      if (*v3)
      {
        v34 = *(v3 + 8);
        sub_21D639460(v33, v34);
        v2 = v33;
        sub_21D5C5F74(v33, v34);
        v35 = v2;
        v3 = sub_21D4422A8(v35, v28);

        v37 = *(inited + 16);
        v36 = *(inited + 24);
        v7 = v37 + 1;
        if (v37 >= v36 >> 1)
        {
          inited = sub_21D210CD8((v36 > 1), v37 + 1, 1, inited);
        }

        *(inited + 16) = v7;
        v32 = inited + 8 * v37;
        *(v32 + 32) = v3;
      }

      if ((v28 & 0x8000000000000000) == 0)
      {
        break;
      }

      __break(1u);
LABEL_53:
      inited = sub_21D210CD8(1, v32 + 1, 1, inited);
    }

    v54 = a1;
    v38 = MEMORY[0x277D84F90];
    if (v28)
    {
      a1 = v28;
      v3 = 0;
      v39 = *(inited + 16);
      v40 = (inited + 32);
      v7 = MEMORY[0x277D84F90];
      do
      {
        if (v39)
        {
          v55 = v38;
          sub_21DBFC01C();
          v27 = v40;
          v2 = v39;
          while (1)
          {
            v41 = *v27;
            if ((*v27 & 0xC000000000000001) != 0)
            {
              sub_21DBF8E0C();
              MEMORY[0x223D44740](v3, v41);
            }

            else
            {
              if (v3 >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                __break(1u);
                goto LABEL_51;
              }

              v42 = *(v41 + 8 * v3 + 32);
            }

            sub_21DBFBFEC();
            sub_21DBFC03C();
            sub_21DBFC04C();
            sub_21DBFBFFC();
            ++v27;
            if (!--v2)
            {
              v38 = v55;
              break;
            }
          }
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_21D210CD8(0, *(v7 + 16) + 1, 1, v7);
        }

        v44 = *(v7 + 16);
        v43 = *(v7 + 24);
        if (v44 >= v43 >> 1)
        {
          v7 = sub_21D210CD8((v43 > 1), v44 + 1, 1, v7);
        }

        ++v3;
        *(v7 + 16) = v44 + 1;
        *(v7 + 8 * v44 + 32) = v38;
        v38 = MEMORY[0x277D84F90];
      }

      while (v3 != a1);
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v13 = 0;
    v50 = MEMORY[0x277D84F90];
    a1 = v54;
  }

  else
  {
    v13 = v57[2];
    v14 = v57[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FF10, "^y\n");
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_21DC0AFB0;
    v16 = *(v1 + qword_27CE655B8);
    if (v16)
    {
      v17 = v16;
    }

    v18 = *(v1 + qword_27CE65590);
    *(v15 + 32) = v16;
    *(v15 + 40) = v18;
    v19 = qword_27CE655B0;
    v20 = *(v1 + qword_27CE655B0);
    *(v15 + 48) = v20;
    v21 = v1 + qword_27CE65618;
    swift_beginAccess();
    v22 = *v21;
    if (*v21)
    {
      v23 = *(v21 + 1);
      v24 = v20;
      v25 = v18;
      sub_21D639460(v22, v23);
      v26 = v22;
      sub_21D5C5F74(v22, v23);
    }

    else
    {
      v45 = v20;
      v46 = v18;
    }

    *(v15 + 56) = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE65660, &qword_21DC22B10);
    sub_21D0D8CF0(0, &qword_280D176A0, 0x277D75D18);
    sub_21DA84A14();
    v47 = sub_21DBFA41C();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F0F0, &unk_21DC0CB10);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_21DC08D00;
    *(v7 + 32) = v47;
    v48 = *(v3 + v19);
    if (v48)
    {
      v49 = v48;
      v50 = sub_21D210E0C(0, 1, 1, MEMORY[0x277D84F90]);
      v52 = *(v50 + 2);
      v51 = *(v50 + 3);
      if (v52 >= v51 >> 1)
      {
        v50 = sub_21D210E0C((v51 > 1), v52 + 1, 1, v50);
      }

      *(v50 + 2) = v52 + 1;
      v53 = &v50[24 * v52];
      *(v53 + 4) = v49;
      *(v53 + 5) = v14;
      *(v53 + 6) = 4;
    }

    else
    {
      v50 = MEMORY[0x277D84F90];
    }
  }

  *a1 = v7;
  a1[1] = 0x3FF0000000000000;
  a1[2] = v50;
  a1[3] = v13;
  *(a1 + 2) = xmmword_21DC395A0;
  *(a1 + 3) = xmmword_21DC395A0;
  *(a1 + 64) = 0;
}

void sub_21DA7E384(id a1, id a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = 0.0;
  if (!a1)
  {
    goto LABEL_6;
  }

  v5 = [a1 tintColor];
  if (v5)
  {
    v6 = v5;
    [v5 getHue:0 saturation:0 brightness:&v9 alpha:0];

    if (v9 == 1.0)
    {
      v7 = [v2 traitCollection];
      if ([v7 accessibilityContrast] == 1)
      {
        v8 = sub_21DBFB24C();

        v7 = v8;
      }

      goto LABEL_7;
    }

LABEL_6:
    v7 = [v2 traitCollection];
    if (!a1)
    {
LABEL_10:

      return;
    }

LABEL_7:
    if (a2)
    {
      a2 = [a2 resolvedColorWithTraitCollection_];
    }

    [a1 setBackgroundColor_];

    goto LABEL_10;
  }

  __break(1u);
}

void sub_21DA7E4FC()
{
  if (qword_280D0C1F8 != -1)
  {
    swift_once();
  }

  v2 = *(&xmmword_280D0C200 + 1);
  v1 = *&xmmword_280D0C200;
  *&v3 = sub_21DA7D1E8(&v33).n128_u64[0];
  v4 = v33;
  if (v35 == 1 || (v34 & 1) != 0)
  {
    goto LABEL_15;
  }

  [*&v0[qword_27CE65590] frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [v0 bounds];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = [v0 effectiveUserInterfaceLayoutDirection];
  v37.origin.x = v6;
  v37.origin.y = v8;
  v37.size.width = v10;
  v37.size.height = v12;
  CGRectGetMinY(v37);
  v38.origin.x = v14;
  v38.origin.y = v16;
  v38.size.width = v18;
  v38.size.height = v20;
  CGRectGetMinY(v38);
  v39.origin.x = v14;
  v39.origin.y = v16;
  v39.size.width = v18;
  v39.size.height = v20;
  CGRectGetMaxY(v39);
  v40.origin.x = v6;
  v40.origin.y = v8;
  v40.size.width = v10;
  v40.size.height = v12;
  CGRectGetMaxY(v40);
  v41.origin.x = v6;
  v41.origin.y = v8;
  v41.size.width = v10;
  v41.size.height = v12;
  MinX = CGRectGetMinX(v41);
  v42.origin.x = v14;
  v42.origin.y = v16;
  v42.size.width = v18;
  v42.size.height = v20;
  v31 = CGRectGetMinX(v42);
  v43.origin.x = v14;
  v43.origin.y = v16;
  v43.size.width = v18;
  v43.size.height = v20;
  MaxX = CGRectGetMaxX(v43);
  v44.origin.x = v6;
  v44.origin.y = v8;
  v44.size.width = v10;
  v44.size.height = v12;
  v23 = CGRectGetMaxX(v44);
  if (!v21)
  {
    v24 = MinX - v31;
LABEL_9:
    [v0 bounds];
    v25 = CGRectGetWidth(v45) * v4 - v24;
    if (v25 > 0.0)
    {
      v1 = v25;
    }

    else
    {
      v1 = 0.0;
    }

    if (qword_27CE56E30 != -1)
    {
      swift_once();
    }

    v2 = *&qword_27CE63888;
LABEL_15:
    v26 = *&v0[qword_27CE65590];

    [v26 setMaximumLayoutSize_];
    return;
  }

  if (v21 == 1)
  {
    v24 = MaxX - v23;
    goto LABEL_9;
  }

  if (qword_27CE56650 != -1)
  {
    swift_once();
  }

  v27 = sub_21DBF84BC();
  __swift_project_value_buffer(v27, qword_27CE5B1E8);
  v28 = MEMORY[0x277D84F90];
  v29 = sub_21D17716C(MEMORY[0x277D84F90]);
  v30 = sub_21D17716C(v28);
  sub_21DAEAB00("unknown layout direction", 24, 2, v29, v30);
  __break(1u);
}

uint64_t sub_21DA7E7D4()
{
  v1 = *&v0[qword_27CE5AF20];
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_21DA85028;
  *(v3 + 24) = v2;
  v8[4] = sub_21D11DA28;
  v8[5] = v3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_21D0E6204;
  v8[3] = &block_descriptor_162_1;
  v4 = _Block_copy(v8);
  v5 = v0;

  [v1 performBatchUpdates_];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void sub_21DA7E934()
{
  v1 = qword_27CE655F8;
  swift_beginAccess();
  if (!*&v0[v1])
  {
    v2 = *&v0[qword_27CE65590];
    v3 = qword_27CE655D8;
    swift_beginAccess();
    v4 = *&v0[v3];
    v5 = v2;
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = [v0 tintColor];
    }

    v7 = v4;
    [v2 setTextColor_];
  }

  v8 = qword_27CE65608;
  swift_beginAccess();
  if (!*&v0[v8])
  {
    v9 = *&v0[qword_27CE655B0];
    if (v9)
    {
      v10 = qword_27CE655E8;
      swift_beginAccess();
      v11 = *&v0[v10];
      v12 = v9;
      if (v11)
      {
        v13 = v11;
      }

      else
      {
        v13 = [v0 tintColor];
      }

      v14 = v11;
      [v9 setTextColor_];
    }
  }
}

uint64_t TTRIStaticTableViewStandardCell.RoundRectIcon.init(image:tintColor:backgroundColor:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

id static TTRIStaticTableViewStandardCell.Icon.custom(view:)@<X0>(id a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = a1;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 65;
  return a1;
}

id TTRIStaticTableViewStandardCell.RoundRectIcon.image.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

void *TTRIStaticTableViewStandardCell.RoundRectIcon.tintColor.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

void *TTRIStaticTableViewStandardCell.RoundRectIcon.backgroundColor.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t TTRIStaticTableViewStandardCell.CustomViewOptions.size.setter(uint64_t result, uint64_t a2, char a3)
{
  *v3 = result;
  *(v3 + 8) = a2;
  *(v3 + 16) = a3 & 1;
  return result;
}

__n128 TTRIStaticTableViewStandardCell.CustomViewOptions.rectInsets.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  result = *(v1 + 24);
  v4 = *(v1 + 40);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

__n128 TTRIStaticTableViewStandardCell.CustomViewOptions.rectInsets.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 24) = *a1;
  *(v1 + 40) = v3;
  *(v1 + 56) = *(a1 + 32);
  return result;
}

void sub_21DA7ECAC(char a1)
{
  v2 = a1 & 1;
  v3 = qword_27CE655A8;
  swift_beginAccess();
  if (*(v1 + v3) != v2)
  {
    [*(v1 + qword_27CE65590) setEnabled_];
    v4 = *(v1 + qword_27CE655B0);
    if (v4)
    {
      [v4 setEnabled_];
    }

    v5 = *(v1 + qword_27CE655B8);
    if (v5)
    {
      if (*(v1 + v3))
      {
        v6 = 1.0;
      }

      else
      {
        v6 = 0.4;
      }

      v7 = v5;
      [v7 setAlpha_];
    }
  }
}

uint64_t sub_21DA7ED88@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + qword_27CE655A0;
  swift_beginAccess();
  v11[0] = *v3;
  v4 = *(v3 + 16);
  v5 = *(v3 + 32);
  v6 = *(v3 + 48);
  v12 = *(v3 + 64);
  v11[2] = v5;
  v11[3] = v6;
  v11[1] = v4;
  v7 = *(v3 + 48);
  *(a2 + 32) = *(v3 + 32);
  *(a2 + 48) = v7;
  *(a2 + 64) = *(v3 + 64);
  v8 = *(v3 + 16);
  *a2 = *v3;
  *(a2 + 16) = v8;
  return sub_21D1ADB0C(v11, &v10);
}

uint64_t sub_21DA7EE18(__int128 *a1, void *a2)
{
  v2 = a1[3];
  v19 = a1[2];
  v20 = v2;
  v21 = *(a1 + 64);
  v3 = a1[1];
  v17 = *a1;
  v18 = v3;
  v4 = *a2 + qword_27CE655A0;
  swift_beginAccess();
  v22 = *v4;
  v5 = *(v4 + 16);
  v6 = *(v4 + 32);
  v7 = *(v4 + 48);
  v26 = *(v4 + 64);
  v24 = v6;
  v25 = v7;
  v23 = v5;
  v9 = *(v4 + 32);
  v8 = *(v4 + 48);
  v10 = *(v4 + 16);
  v28 = *(v4 + 64);
  v27[2] = v9;
  v27[3] = v8;
  v27[1] = v10;
  v27[0] = *v4;
  *v4 = v17;
  v11 = v18;
  v12 = v19;
  v13 = v20;
  *(v4 + 64) = v21;
  *(v4 + 32) = v12;
  *(v4 + 48) = v13;
  *(v4 + 16) = v11;
  sub_21D1ADB0C(&v17, v15);
  sub_21D1ADB0C(&v22, v15);
  sub_21D0CF7E0(v27, &unk_27CE5EA00, &unk_21DC0A7C0);
  v15[2] = v24;
  v15[3] = v25;
  v16 = v26;
  v15[0] = v22;
  v15[1] = v23;
  sub_21DA7EF48(v15);
  return sub_21D0CF7E0(&v22, &unk_27CE5EA00, &unk_21DC0A7C0);
}

uint64_t sub_21DA7EF48(__int128 *a1)
{
  ObjectType = swift_getObjectType();
  v4 = a1[3];
  v59 = a1[2];
  v60 = v4;
  v61 = *(a1 + 64);
  v5 = a1[1];
  v57 = *a1;
  v58 = v5;
  v6 = &v1[qword_27CE655A0];
  swift_beginAccess();
  v7 = *(v6 + 3);
  v62[2] = *(v6 + 2);
  v62[3] = v7;
  v8 = *(v6 + 1);
  v9 = *(v6 + 2);
  v62[0] = *v6;
  v62[1] = v8;
  v63 = v6[64];
  v56 = *(v6 + 2);
  v10 = *(&v8 + 1);
  v11 = *(v6 + 3);
  v53 = v9;
  v54 = v11;
  v55 = v62[0];
  v12 = v63;
  *&v52[7] = v57;
  v13 = *(&v58 + 1);
  *&v52[23] = v58;
  v50 = v59;
  v51 = v60;
  v14 = v61;
  if (*(&v8 + 1) >> 1 == 0xFFFFFFFFLL && v63 < 2u)
  {
    if (*(&v58 + 1) >> 1 == 0xFFFFFFFFLL && v61 < 2u)
    {
      aBlock = *v6;
      *&v41 = *(v6 + 2);
      *(&v41 + 1) = *(&v8 + 1);
      v15 = *(v6 + 3);
      v42 = *(v6 + 2);
      v43 = v15;
      v44 = v63;
      sub_21D1ADB0C(v62, &v35);
      sub_21D1ADB0C(&v57, &v35);
      return sub_21D0CF7E0(&aBlock, &unk_27CE5EA00, &unk_21DC0A7C0);
    }

    sub_21D1ADB0C(v62, &aBlock);
    sub_21D1ADB0C(&v57, &aBlock);
  }

  else
  {
    v17 = *(v6 + 2);
    aBlock = *v6;
    *&v41 = v17;
    *(&v41 + 1) = *(&v8 + 1);
    v18 = *(v6 + 3);
    v42 = *(v6 + 2);
    v43 = v18;
    v44 = v63;
    v39 = v63;
    v37 = v42;
    v38 = v18;
    v35 = aBlock;
    v36 = v41;
    if (*(&v58 + 1) >> 1 != 0xFFFFFFFFLL || v61 >= 2u)
    {
      v30 = v57;
      v32 = v59;
      v33 = v60;
      v31 = v58;
      v34 = v61;
      sub_21D1ADB0C(v62, v28);
      sub_21D1ADB0C(&v57, v28);
      sub_21D1ADB0C(&aBlock, v28);
      v19 = _s15RemindersUICore31TTRIStaticTableViewStandardCellC4IconO2eeoiySbAE_AEtFZ_0(&v35, &v30);
      v26[2] = v32;
      v26[3] = v33;
      v27 = v34;
      v26[0] = v30;
      v26[1] = v31;
      sub_21D35D940(v26);
      v28[2] = v37;
      v28[3] = v38;
      v29 = v39;
      v28[0] = v35;
      v28[1] = v36;
      sub_21D35D940(v28);
      v30 = v55;
      *&v31 = v56;
      *(&v31 + 1) = v10;
      v32 = v53;
      v33 = v54;
      v34 = v12;
      result = sub_21D0CF7E0(&v30, &unk_27CE5EA00, &unk_21DC0A7C0);
      if (v19)
      {
        return result;
      }

      goto LABEL_13;
    }

    v32 = v42;
    v33 = v43;
    v34 = v44;
    v30 = aBlock;
    v31 = v41;
    sub_21D1ADB0C(v62, v28);
    sub_21D1ADB0C(&v57, v28);
    sub_21D1ADB0C(&aBlock, v28);
    sub_21D35D940(&v30);
  }

  aBlock = v55;
  *&v41 = v56;
  *(&v41 + 1) = v10;
  v42 = v53;
  v43 = v54;
  v44 = v12;
  *v45 = *v52;
  *&v45[15] = *&v52[15];
  v46 = v13;
  v48 = v51;
  v47 = v50;
  v49 = v14;
  sub_21D0CF7E0(&aBlock, qword_27CE5ABE0, &qword_21DC1E920);
LABEL_13:
  v20 = *&v1[qword_27CE5AF20];
  v21 = swift_allocObject();
  *(v21 + 16) = v1;
  *(v21 + 24) = ObjectType;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_21DA85018;
  *(v22 + 24) = v21;
  *&v42 = sub_21D11DA28;
  *(&v42 + 1) = v22;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v41 = sub_21D0E6204;
  *(&v41 + 1) = &block_descriptor_184_1;
  v23 = _Block_copy(&aBlock);
  v24 = v1;

  [v20 performBatchUpdates_];
  _Block_release(v23);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void sub_21DA7F39C(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*(*a1 + qword_27CE65590) text];
  if (v3)
  {
    v4 = v3;
    v5 = sub_21DBFA16C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_21DA7F410(uint64_t a1, void *a2)
{
  v2 = *(*a2 + qword_27CE65590);
  if (*(a1 + 8))
  {
    v3 = v2;
    v4 = sub_21DBFA12C();
  }

  else
  {
    v5 = v2;
    v4 = 0;
  }

  v6 = v4;
  [v2 setText_];
}

double sub_21DA7F4A4(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + qword_27CE655D0);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;
  sub_21DBF8E0C();

  return result;
}

void sub_21DA7F51C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1 + qword_27CE65610;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  *a2 = *v3;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v8;
  v9 = *(v3 + 40);
  *(a2 + 40) = v9;
  sub_21D361B20(v4, v5, v6, v7, v8, v9);
}

void sub_21DA7F58C(uint64_t a1, void *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v13 = *(a1 + 24);
  v14 = *(a1 + 16);
  v4 = *(a1 + 32);
  v5 = *a2 + qword_27CE65610;
  v6 = *(a1 + 40);
  swift_beginAccess();
  v7 = *v5;
  v8 = *(v5 + 8);
  v9 = *(v5 + 16);
  v10 = *(v5 + 24);
  v11 = *(v5 + 32);
  *v5 = v2;
  *(v5 + 8) = v3;
  v12 = v3;
  *(v5 + 16) = v14;
  *(v5 + 24) = v13;
  *(v5 + 32) = v4;
  LOBYTE(v3) = *(v5 + 40);
  *(v5 + 40) = v6;
  sub_21D361B20(v2, v12, v14, v13, v4, v6);
  sub_21D361B20(v7, v8, v9, v10, v11, v3);
  sub_21D361BB4(v7, v8, v9, v10, v11, v3);
  v15[0] = v7;
  v15[1] = v8;
  v15[2] = v9;
  v15[3] = v10;
  v15[4] = v11;
  v16 = v3;
  sub_21DA7F6B4(v15);
  sub_21D361BB4(v7, v8, v9, v10, v11, v3);
}

void sub_21DA7F6B4(uint64_t a1)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v28 = *(a1 + 16);
  v29 = *(a1 + 24);
  v30 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = v1 + qword_27CE65610;
  swift_beginAccess();
  v7 = *v5;
  v6 = *(v5 + 8);
  v9 = *(v5 + 16);
  v8 = *(v5 + 24);
  v10 = *(v5 + 32);
  v11 = *(v5 + 40);
  if (v11 == 255)
  {
    sub_21D361B20(v7, v6, v9, v8, v10, 255);
    if (v4 == 255)
    {
      sub_21D361B20(v3, v2, v28, v29, v30, 255);
      sub_21D361BB4(v7, v6, v9, v8, v10, 255);
      return;
    }

    v25 = v2;
    v26 = v3;
    v13 = v3;
    v14 = v2;
    v15 = v28;
    v16 = v29;
    v17 = v30;
    sub_21D361B20(v13, v14, v28, v29, v30, v4);
  }

  else
  {
    aBlock = v7;
    v38 = v6;
    v39 = v9;
    v40 = v8;
    v41 = v10;
    LOBYTE(v42) = v11;
    if (v4 != 255)
    {
      v31 = v3;
      v32 = v2;
      v33 = v28;
      v34 = v29;
      v35 = v30;
      v36 = v4;
      sub_21D361B20(v7, v6, v9, v8, v10, v11);
      sub_21D361B20(v3, v2, v28, v29, v30, v4);
      sub_21D361B20(v7, v6, v9, v8, v10, v11);
      v12 = _s15RemindersUICore31TTRIStaticTableViewStandardCellC14ExtraAccessoryO2eeoiySbAE_AEtFZ_0(&aBlock, &v31);
      sub_21D361BC8(v31, v32, v33, v34, v35, v36);
      sub_21D361BC8(aBlock, v38, v39, v40, v41, v42);
      sub_21D361BB4(v7, v6, v9, v8, v10, v11);
      if (v12)
      {
        return;
      }

      goto LABEL_9;
    }

    sub_21D361B20(v7, v6, v9, v8, v10, v11);
    v25 = v2;
    v26 = v3;
    v18 = v3;
    v19 = v2;
    v15 = v28;
    v16 = v29;
    v17 = v30;
    sub_21D361B20(v18, v19, v28, v29, v30, 255);
    sub_21D361B20(v7, v6, v9, v8, v10, v11);
    sub_21D361BC8(v7, v6, v9, v8, v10, v11);
  }

  sub_21D361BB4(v7, v6, v9, v8, v10, v11);
  sub_21D361BB4(v26, v25, v15, v16, v17, v4);
LABEL_9:
  v20 = *&v27[qword_27CE5AF20];
  v21 = swift_allocObject();
  *(v21 + 16) = v27;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_21DA85028;
  *(v22 + 24) = v21;
  v41 = sub_21D11DA28;
  v42 = v22;
  aBlock = MEMORY[0x277D85DD0];
  v38 = 1107296256;
  v39 = sub_21D0E6204;
  v40 = &block_descriptor_173_1;
  v23 = _Block_copy(&aBlock);
  v24 = v27;

  [v20 performBatchUpdates_];
  _Block_release(v23);
  LOBYTE(v20) = swift_isEscapingClosureAtFileLocation();

  if (v20)
  {
    __break(1u);
  }
}

void *sub_21DA7FAA8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1 + qword_27CE65618;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  *a2 = *v3;
  a2[1] = v5;
  a2[2] = v6;
  return sub_21D639460(v4, v5);
}

void *sub_21DA7FB08(uint64_t a1, void *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2 + qword_27CE65618;
  swift_beginAccess();
  v6 = *v5;
  v7 = *(v5 + 8);
  *v5 = v2;
  *(v5 + 8) = v3;
  *(v5 + 16) = v4;
  sub_21D639460(v2, v3);
  return sub_21D5C5F74(v6, v7);
}

uint64_t sub_21DA7FBA0(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + qword_27CE65620);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;
  sub_21DBF8E0C();

  return sub_21DA7E7D4();
}

void sub_21DA7FC18(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = qword_27CE65580;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  if (v2 != v5)
  {
    [*(v3 + qword_27CE5AF20) invalidateIntrinsicContentSize];
  }
}

id TTRIStaticTableViewStandardCell.__allocating_init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a3)
  {
    v6 = sub_21DBFA12C();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithStyle:a1 reuseIdentifier:v6];

  return v7;
}

void *TTRIStaticTableViewStandardCell.init(style:reuseIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_getObjectType();
  v3[qword_27CE655A8] = 1;
  v7 = &v3[qword_27CE655A0];
  *v7 = 0;
  *(v7 + 1) = 0;
  *(v7 + 2) = 0;
  *(v7 + 3) = 0x1FFFFFFFELL;
  *(v7 + 2) = 0u;
  *(v7 + 3) = 0u;
  v7[64] = 0;
  v8 = &v3[qword_27CE655C8];
  *v8 = 0;
  v8[1] = 0;
  v9 = &v3[qword_27CE655D0];
  *v9 = 0;
  v9[1] = 0;
  v10 = qword_27CE655D8;
  *&v4[v10] = [objc_opt_self() labelColor];
  *&v4[qword_27CE655E8] = 0;
  v11 = qword_27CE655F0;
  if (qword_280D176B8 != -1)
  {
    swift_once();
  }

  *&v4[v11] = sub_21D900614(4);
  *&v4[qword_27CE655F8] = 0;
  *&v4[qword_27CE65608] = 0;
  v12 = &v4[qword_27CE65610];
  *(v12 + 4) = 0;
  *v12 = 0u;
  *(v12 + 1) = 0u;
  v12[40] = -1;
  v13 = &v4[qword_27CE65618];
  v13[1] = 0;
  v13[2] = 0;
  *v13 = 0;
  v14 = &v4[qword_27CE65620];
  *v14 = 0;
  v14[1] = 0;
  v4[qword_27CE65580] = 0;
  v4[qword_27CE65588] = 0;
  v15 = &v4[qword_27CE655B8];
  *v15 = 0;
  v15[8] = 0;
  *&v4[qword_27CE655B0] = 0;
  *&v4[qword_27CE65628] = 0x3FD999999999999ALL;
  v16 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v16 setUserInteractionEnabled_];
  v17 = sub_21D900614(1);
  [v16 setFont_];

  [v16 setAdjustsFontForContentSizeCategory_];
  if (qword_27CE57018 != -1)
  {
    swift_once();
  }

  LODWORD(v18) = dword_27CE65570;
  [v16 setContentCompressionResistancePriority:1 forAxis:v18];
  if (qword_27CE57028 != -1)
  {
    swift_once();
  }

  LODWORD(v19) = dword_27CE65578;
  [v16 setContentHuggingPriority:1 forAxis:v19];
  if (qword_27CE56FF8 != -1)
  {
    swift_once();
  }

  LODWORD(v20) = dword_27CE65560;
  [v16 setContentCompressionResistancePriority:0 forAxis:v20];
  if (qword_27CE57008 != -1)
  {
    swift_once();
  }

  LODWORD(v21) = dword_27CE65568;
  [v16 setContentHuggingPriority:0 forAxis:v21];
  *&v4[qword_27CE65590] = v16;
  v22 = v16;
  if (a3)
  {
    v23 = sub_21DBFA12C();
  }

  else
  {
    v23 = 0;
  }

  v39.receiver = v4;
  v39.super_class = type metadata accessor for TTRIStaticTableViewStandardCell(0);
  v24 = objc_msgSendSuper2(&v39, sel_initWithStyle_reuseIdentifier_, a1, v23);

  v25 = *((*MEMORY[0x277D85000] & *v24) + 0x2A0);
  v26 = v24;
  [v16 setNumberOfLines_];
  v27 = *(v26 + qword_27CE5AF20);
  [v27 setHorizontalDistribution_];
  [v27 setVerticalDistribution_];
  [v27 setHorizontalAlignment_];
  [v27 setVerticalAlignment_];
  [v27 setColumnSpacing_];
  v28 = v27;
  [v28 setDebugBoundingBoxesEnabled_];
  [v28 setDelegate_];

  sub_21DA7D34C();
  sub_21DA7E934();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE65630, &unk_21DC22100);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_21DC08D00;
  v30 = sub_21DBF8D4C();
  v31 = MEMORY[0x277D74DB8];
  *(v29 + 32) = v30;
  *(v29 + 40) = v31;
  sub_21DBFB5CC();
  swift_unknownObjectRelease();

  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_21DC08D00;
  v33 = sub_21DBF8B3C();
  v34 = MEMORY[0x277D74CB8];
  *(v32 + 32) = v33;
  *(v32 + 40) = v34;
  sub_21DBFB5CC();
  swift_unknownObjectRelease();

  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_21DC08D00;
  v36 = sub_21DBF88DC();
  v37 = MEMORY[0x277D74BF0];
  *(v35 + 32) = v36;
  *(v35 + 40) = v37;
  sub_21DBFB5CC();

  swift_unknownObjectRelease();

  return v26;
}

void *sub_21DA8034C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    a4 = sub_21DBFA16C();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return TTRIStaticTableViewStandardCell.init(style:reuseIdentifier:)(a3, a4, v6);
}

id TTRIStaticTableViewStandardCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void sub_21DA80438(void *a1, __n128 a2)
{
  v3.receiver = a1;
  v3.super_class = type metadata accessor for TTRIStaticTableViewStandardCell(0);
  v2 = v3.receiver;
  objc_msgSendSuper2(&v3, sel_tintColorDidChange);
  sub_21DA7E934();
}

void sub_21DA80494(void *a1, uint64_t a2, void *a3)
{
  if (*(a1 + qword_27CE5AF20) == a3)
  {
    v6 = *((*MEMORY[0x277D85000] & *a1) + 0x68);
    v7 = a3;
    v8 = a1;
    v6(&v10);
    UITableViewCell.setSeparatorInsetType(_:)(&v10);
    sub_21D22BF80(v10);
  }

  else
  {
    v4 = a3;
    v5 = a1;
  }

  sub_21DA7E4FC();
}

void *sub_21DA8066C(uint64_t a1, void *a2, int *a3, void *a4, uint64_t a5)
{
  type metadata accessor for UILayoutPriority(0);
  if (*a2 != -1)
  {
    swift_once();
  }

  sub_21D367748();
  return sub_21DBF84EC();
}

void sub_21DA80704(uint64_t a1, double *a2)
{
  v4 = *(a1 + qword_27CE655B0);
  if (v4)
  {
    v5 = *(a2 + 3);
    v6 = v4;
    [v6 setNumberOfLines_];
    [v6 setLineBreakMode_];
  }

  v26 = a1;
  v7 = *(a1 + qword_27CE5AF20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F100, &qword_21DC18230);
  v8 = sub_21DBFA5DC();
  [v7 setArrangedSubviewRows_];

  [v7 setRowSpacing_];
  v9 = *(a2 + 2);
  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = (v9 + 48);
    do
    {
      v12 = *(v11 - 1);
      v13 = *v11;
      v14 = *(v11 - 2);
      v15 = [v7 columnIndexForArrangedSubview_];
      if (v15 == sub_21DBF4B4C() || (v16 = [v7 columnAtIndex_]) == 0)
      {
      }

      else
      {
        v17 = v16;
        [v16 setSpacingAfter_];
        [v17 setAlignment_];

        swift_unknownObjectRelease();
      }

      v11 += 3;
      --v10;
    }

    while (v10);
  }

  v18 = v26 + qword_27CE65618;
  swift_beginAccess();
  if (*v18)
  {
    v19 = *(v18 + 16);
    v20 = a2[4];
    v21 = a2[5];
    v22 = a2[6];
    v23 = a2[7];
    v24 = *v18;
    swift_unknownObjectRetain();
    [v24 setCustomAlignmentRectInsets_];
    ObjectType = swift_getObjectType();
    (*(v19 + 32))(*(a2 + 64), ObjectType, v19);

    swift_unknownObjectRelease();
  }
}

uint64_t sub_21DA80968(uint64_t a1)
{
  v2 = (a1 + qword_27CE655A0);
  swift_beginAccess();
  v3 = v2[1];
  v73 = *v2;
  v74 = v3;
  v4 = v2[3];
  v75 = v2[2];
  v76 = v4;
  v5 = *(v2 + 64);
  v77 = *(v2 + 64);
  v7 = *(&v73 + 1);
  v6 = v73;
  v8 = *&v74;
  v9 = BYTE8(v74);
  v11 = *(&v75 + 1);
  v10 = *&v75;
  v13 = *(&v4 + 1);
  v12 = *&v4;
  if (*(&v74 + 1) >> 1 == 0xFFFFFFFFLL && v5 <= 1)
  {
    v14 = a1 + qword_27CE655B8;
    v15 = *(a1 + qword_27CE655B8);
    *v14 = 0;
    *(v14 + 8) = 0;
    goto LABEL_45;
  }

  v16 = v5 >> 6;
  if (v5 >> 6 <= 1)
  {
    if (!v16)
    {
      v17 = a1 + qword_27CE655B8;
      v18 = *(a1 + qword_27CE655B8);
      if (v18 && (v19 = *(v17 + 8), objc_opt_self(), (v20 = swift_dynamicCastObjCClass()) != 0) && (v19 & 1) == 0)
      {
        v22 = v20;
        v58 = v18;
        sub_21D1ADB0C(&v73, &v68);
        v59 = v58;
      }

      else
      {
        v70 = v75;
        v71 = v76;
        v72 = v77;
        v68 = v73;
        v69 = v74;
        v21 = objc_allocWithZone(MEMORY[0x277D755E8]);
        sub_21DA84A8C(&v68, v67);
        v22 = [v21 initWithImage_];
        [v22 setContentMode_];
        v23 = [v22 layer];
        [v23 setCornerCurve_];

        v24 = [v22 layer];
        [v24 setCornerRadius_];

        [v22 setClipsToBounds_];
        [v22 setUserInteractionEnabled_];
        if (v7 == 0.0)
        {
          v25 = COERCE_DOUBLE([objc_opt_self() whiteColor]);
        }

        else
        {
          v25 = v7;
        }

        v48 = *&v7;
        [v22 setTintColor_];

        v49 = qword_27CE655A8;
        swift_beginAccess();
        v50 = 0.4;
        if (*(a1 + v49))
        {
          v50 = 1.0;
        }

        [v22 setAlpha_];
        LODWORD(v51) = 1148846080;
        [v22 setLayoutSize:29.0 withContentPriority:{29.0, v51}];
        [v22 setCustomAlignmentRectInsets_];
      }

      [v22 setImage_];
      v6 = v22;
      sub_21DA7E384(v22, v8);

      sub_21D0CF7E0(&v73, &unk_27CE5EA00, &unk_21DC0A7C0);
      goto LABEL_44;
    }

    v31 = a1 + qword_27CE655B8;
    v32 = *(a1 + qword_27CE655B8);
    if (v32)
    {
      sub_21D1ADB0C(&v73, v67);
      sub_21D1ADB0C(&v73, v67);
      sub_21D0D8CF0(0, &qword_280D176A0, 0x277D75D18);
      v70 = v75;
      v71 = v76;
      v72 = v77;
      v68 = v73;
      v69 = v74;
      v33 = v32;
      sub_21DA84A8C(&v68, v67);
      v34 = sub_21DBFB63C();
      sub_21D0CF7E0(&v73, &unk_27CE5EA00, &unk_21DC0A7C0);

      if (v34)
      {
LABEL_29:
        sub_21D0CF7E0(&v73, &unk_27CE5EA00, &unk_21DC0A7C0);
        v15 = *v31;
        *v31 = v6;
        *(v31 + 8) = 1;
        goto LABEL_45;
      }

      if (v9)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v46 = v2[3];
      v70 = v2[2];
      v71 = v46;
      v72 = *(v2 + 64);
      v47 = v2[1];
      v68 = *v2;
      v69 = v47;
      sub_21D1ADB0C(&v73, v67);
      sub_21DA84A8C(&v68, v67);
      if (v9)
      {
LABEL_20:
        v36 = 29.0;
        v11 = 0.0;
        v10 = 10.0;
        v12 = 10.0;
        v13 = 0.0;
        v37 = 29.0;
LABEL_28:
        LODWORD(v35) = 1148846080;
        [v6 setLayoutSize:v36 withContentPriority:{v37, v35}];
        [v6 setCustomAlignmentRectInsets_];
        goto LABEL_29;
      }
    }

    v36 = v7;
    v37 = *&v8;
    if (v5)
    {
      v10 = (*&v8 + -29.0) * 0.5 + 10.0;
      HIDWORD(v35) = 0;
      v11 = (v7 + -29.0) * 0.5 + 0.0;
      v12 = v10;
      v13 = v11;
    }

    goto LABEL_28;
  }

  if (v16 == 2)
  {
    v17 = a1 + qword_27CE655B8;
    v26 = *(a1 + qword_27CE655B8);
    if (v26 && (v27 = *(v17 + 8), objc_opt_self(), (v28 = swift_dynamicCastObjCClass()) != 0) && (v27 & 1) == 0)
    {
      v22 = v28;
      v60 = v26;
      sub_21D1ADB0C(&v73, &v68);
      v61 = v60;
      if (*&v8 != 0.0)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v70 = v75;
      v71 = v76;
      v72 = v77;
      v68 = v73;
      v69 = v74;
      v29 = objc_allocWithZone(MEMORY[0x277D755E8]);
      sub_21DA84A8C(&v68, v67);
      v22 = [v29 initWithImage_];
      [v22 setContentMode_];
      [v22 setClipsToBounds_];
      [v22 setUserInteractionEnabled_];
      if (v7 == 0.0)
      {
        v30 = COERCE_DOUBLE([objc_opt_self() secondaryLabelColor]);
      }

      else
      {
        v30 = v7;
      }

      v52 = *&v7;
      [v22 setTintColor_];

      LODWORD(v53) = 1148846080;
      [v22 setLayoutSize:29.0 withContentPriority:{29.0, v53}];
      [v22 setCustomAlignmentRectInsets_];

      if (*&v8 != 0.0)
      {
LABEL_37:
        v54 = v6;
        v55 = v8;
        if (v6)
        {
LABEL_38:
          v56 = v8;
          v57 = [v6 imageWithSymbolConfiguration_];
LABEL_43:
          [v22 setImage_];

          v65 = v22;
          sub_21DA7E384(v22, 0);

          sub_21D0CF7E0(&v73, &unk_27CE5EA00, &unk_21DC0A7C0);
LABEL_44:

          v15 = *v17;
          *v17 = v22;
          *(v17 + 8) = 0;
          goto LABEL_45;
        }

LABEL_42:
        v64 = v8;
        v57 = 0;
        goto LABEL_43;
      }
    }

    v62 = objc_opt_self();
    v63 = v6;
    v55 = [v62 configurationWithScale_];
    if (v6)
    {
      goto LABEL_38;
    }

    goto LABEL_42;
  }

  v38 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v39 = [objc_opt_self() clearColor];
  [v38 setBackgroundColor_];

  v41 = a1 + qword_27CE655B8;
  v42 = *(a1 + qword_27CE655B8);
  if (!v42 || (sub_21D0D8CF0(0, &qword_280D176A0, 0x277D75D18), v43 = v38, v44 = v42, v45 = sub_21DBFB63C(), v44, v43, (v45 & 1) == 0))
  {
    LODWORD(v40) = 1148846080;
    [v38 setLayoutSize:29.0 withContentPriority:{29.0, v40}];
    [v38 setCustomAlignmentRectInsets_];
  }

  v15 = *v41;
  *v41 = v38;
  *(v41 + 8) = 1;
LABEL_45:

  return sub_21DA7D34C();
}