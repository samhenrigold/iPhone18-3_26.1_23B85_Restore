void __swiftcall CustomGraphShoppingActivityEvent.toObjectiveCGraphObject()(GDGraphShoppingActivityEvent *__return_ptr retstr)
{
  sub_1ABA8AAB0();
  sub_1ABAA9198();
  sub_1ABA8C0D0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1ABA8F4D8();
  v9 = sub_1ABAD219C(&qword_1EB4D9BF0, &qword_1ABF34240);
  v10 = sub_1ABA7AB80(v9);
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABA7E77C(v11, v81);
  MEMORY[0x1EEE9AC00](v12);
  sub_1ABA99440(v13, v14, v15, v16, v17, v18, v19, v20, v82);
  MEMORY[0x1EEE9AC00](v21);
  sub_1ABA954CC();
  v22 = sub_1ABAD219C(&qword_1EB4D5F20, &qword_1ABF4F358);
  sub_1ABA7AB80(v22);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v23);
  sub_1ABA9587C();
  sub_1ABAFF390(0, &qword_1EB4D5FA0, off_1E7960100);
  if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
  {
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  v24 = sub_1ABA90CF4();
  v25 = type metadata accessor for CustomGraphShoppingActivityEvent(v24);
  sub_1ABAA0EE8(v25);
  v26 = sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
  sub_1ABA8B2C0(&qword_1EB4D5F20, &qword_1ABF4F358, *(v26 + 28));
  sub_1ABAA5898();
  if (v27)
  {

    sub_1ABC6AAC4(v1, &qword_1EB4D5F20);
  }

  else
  {
    sub_1ABA89DD8();
    sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20);
    sub_1ABA8C968();
    v3 = &qword_1EB4D9BF0;
    v6 = v4;
    sub_1ABC6C36C(v28);
    sub_1ABAA45A8();
    sub_1ABA84188();
    sub_1ABAA295C();
    v29 = objc_allocWithZone(GDGraphDateRelationship);
    sub_1ABA89B58();

    v30 = sub_1ABAA40C4();
    sub_1ABC6C440(v30);
  }

  sub_1ABA969FC();
  if (v6)
  {
    sub_1ABA9FC20();
    sub_1ABA97FF8();
    while (1)
    {
      sub_1ABA8E96C();
      if (v31)
      {
        sub_1ABA8908C();
      }

      else
      {
        v32 = sub_1ABAB5AC8();
        sub_1ABAFF390(v32, v33, off_1E79600C8);
        v34 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        sub_1ABA96FC0();

        if (!sub_1ABAB65E0())
        {
          goto LABEL_78;
        }
      }

      v35 = v3[2];
      if (v35)
      {
        break;
      }

      v1 = MEMORY[0x1E69E7CC0];
LABEL_16:
      ++v5;
      v38 = objc_allocWithZone(GDGraphAttendeeRelationship);
      sub_1ABA9358C();
      sub_1ABC69D78();
      sub_1ABA9DE68();

      sub_1ABF24B94();
      sub_1ABAB67A0();
      sub_1ABA9E200();
      sub_1ABF24BA4();
      if (v5 == v6)
      {
        sub_1ABA9EFE4();
        goto LABEL_18;
      }
    }

    sub_1ABC6C428(MEMORY[0x1E69E7CC0]);
    sub_1ABA88B74();
    v36 = sub_1ABA8BCD4();
    sub_1ABAFF390(v36, v37, off_1E79600C8);
    swift_getObjCClassFromMetadata();
    sub_1ABA8BAF4();
    while ([sub_1ABA90FC8() initWithValue_])
    {
      sub_1ABA88C70();
      sub_1ABC6C3C4();
      sub_1ABA88D50();
      sub_1ABF24BA4();
      if (!--v35)
      {
        sub_1ABA9F1A0();
        goto LABEL_16;
      }
    }

    goto LABEL_73;
  }

LABEL_18:
  sub_1ABAB510C();
  v39 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    sub_1ABA8A3C0();
    sub_1ABA97FF8();
    while (1)
    {
      sub_1ABA8E96C();
      if (v40)
      {
        sub_1ABA8908C();
      }

      else
      {
        v41 = sub_1ABA8CB08();
        sub_1ABAFF390(v41, &qword_1EB4D5F08, off_1E7960048);
        v42 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        sub_1ABA96FC0();

        if (!sub_1ABAB65E0())
        {
          goto LABEL_79;
        }
      }

      v43 = v3[2];
      if (v43)
      {
        break;
      }

      v1 = v39;
LABEL_29:
      ++v5;
      v44 = objc_allocWithZone(GDGraphLocationRelationship);
      sub_1ABA8390C();
      sub_1ABC69D78();
      sub_1ABA9DE68();

      sub_1ABF24B94();
      sub_1ABAB67A0();
      sub_1ABA9E200();
      sub_1ABF24BA4();
      if (v5 == v6)
      {
        sub_1ABA9F0B8();
        goto LABEL_31;
      }
    }

    sub_1ABC6C458();
    sub_1ABA88B74();
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABA8BAF4();
    while ([sub_1ABA90FC8() initWithValue_])
    {
      sub_1ABA88C70();
      sub_1ABC6C3C4();
      sub_1ABA88D50();
      sub_1ABF24BA4();
      if (!--v43)
      {
        v1 = v85;
        v39 = MEMORY[0x1E69E7CC0];
        v6 = v83;
        goto LABEL_29;
      }
    }

LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

LABEL_31:
  sub_1ABAABCB8();
  if (v45)
  {
    v46 = 0;
  }

  else
  {
    v47 = v3[1];
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    v46 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_];
    if (!v46)
    {
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
      return;
    }
  }

  sub_1ABAA22EC();
  if ((v48 & 1) == 0)
  {
    v49 = v3[1];
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
    {
      goto LABEL_82;
    }
  }

  sub_1ABAA1F6C();
  if ((v51 & 1) == 0)
  {
    v52 = *(v50 + 8);
    sub_1ABAFF390(0, &qword_1EB4D5F50, off_1E795FF08);
    if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
    {
      goto LABEL_83;
    }
  }

  sub_1ABAB1118();
  if (v27)
  {
    v53 = 0;
  }

  else
  {
    v53 = sub_1ABC6C3F8();
  }

  sub_1ABA818CC();
  sub_1ABAFF390(0, &qword_1ED86B920, 0x1E696AD98);
  v54 = sub_1ABAA045C();
  v55 = sub_1ABA97B70(v54);
  sub_1ABA80B88(v55);
  if (v3)
  {
    v86 = v39;

    sub_1ABA9E6A8();
    sub_1ABA7F360();
    do
    {
      sub_1ABA9FEB0();
      sub_1ABAB54D0();
      v56 = sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20);
      v57 = sub_1ABA90834(v56);
      sub_1ABB2E9FC(v57, v58, &qword_1EB4D9BF0, &qword_1ABF34240);
      sub_1ABAA4E64();
      sub_1ABA9A498();
      sub_1ABA9754C();
      v59 = objc_allocWithZone(GDGraphDateRelationship);
      sub_1ABA9EFD8();

      sub_1ABA8E288();
      v60 = sub_1ABA9F354();
      sub_1ABC6AA68(v60);
      sub_1ABF24B94();
      sub_1ABA8B120();
      sub_1ABC6C3E0();
      sub_1ABF24BA4();
      sub_1ABAA1318();
    }

    while (!v27);
  }

  else
  {
  }

  sub_1ABAB56E0();
  v61 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABA9FFF0(MEMORY[0x1E69E7CC0]);
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABAB587C();
    while (1)
    {
      sub_1ABA8A95C();
      if (v62)
      {
        break;
      }

      if (![sub_1ABAA0CD0() initWithValue_])
      {
        goto LABEL_75;
      }

      sub_1ABA8B4D4();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
      if (v3 == v46)
      {
        v61 = v86;
        goto LABEL_53;
      }
    }

    __break(1u);
    goto LABEL_71;
  }

LABEL_53:
  sub_1ABAA2640(v61);
  v63 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABAA0318();
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABAB52F8();
    while (1)
    {
      sub_1ABA89C88();
      if (v62)
      {
        break;
      }

      if (![sub_1ABC6C410() initWithValue_])
      {
        goto LABEL_76;
      }

      sub_1ABA8B6AC();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
      if (v3 == v63)
      {
        v63 = v86;
        goto LABEL_59;
      }
    }

LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

LABEL_59:
  sub_1ABAA111C();
  v64 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABA8AF3C();
    sub_1ABAFF390(0, &qword_1EB4D5F50, off_1E795FF08);
    swift_getObjCClassFromMetadata();
    sub_1ABA88678();
    while (1)
    {
      sub_1ABA9F274();
      if (v62)
      {
        goto LABEL_72;
      }

      if (![sub_1ABAB0F94() initWithValue_])
      {
        goto LABEL_77;
      }

      sub_1ABAA0178();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
      if (v3 == v7)
      {
        v64 = v86;
        break;
      }
    }
  }

  sub_1ABA8282C();
  v65 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABA8A628();
    do
    {
      v66 = sub_1ABA95120();
      sub_1ABAAD268(v66);
      sub_1ABA9DFA0();
      sub_1ABAB6908();
      sub_1ABA9E0F4();
      sub_1ABF24BA4();
      v3 = (v3 - 1);
    }

    while (v3);
    v65 = v86;
  }

  sub_1ABA7AD30();
  v67 = MEMORY[0x1E69E7CC0];
  objc_allocWithZone(GDGraphShoppingActivityEvent);
  v68 = sub_1ABA8F488();
  sub_1ABC67F50(v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v84, v63, v64, v65, v67);
  sub_1ABA89A08();
  sub_1ABA8B438();
}

void __swiftcall CustomGraphMindfulnessActivityEvent.toObjectiveCGraphObject()(GDGraphMindfulnessActivityEvent *__return_ptr retstr)
{
  sub_1ABA8AAB0();
  sub_1ABAA9198();
  sub_1ABA8C0D0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1ABA8F4D8();
  v9 = sub_1ABAD219C(&qword_1EB4D9BF0, &qword_1ABF34240);
  v10 = sub_1ABA7AB80(v9);
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABA7E77C(v11, v81);
  MEMORY[0x1EEE9AC00](v12);
  sub_1ABA99440(v13, v14, v15, v16, v17, v18, v19, v20, v82);
  MEMORY[0x1EEE9AC00](v21);
  sub_1ABA954CC();
  v22 = sub_1ABAD219C(&qword_1EB4D5F20, &qword_1ABF4F358);
  sub_1ABA7AB80(v22);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v23);
  sub_1ABA9587C();
  sub_1ABAFF390(0, &qword_1EB4D5FA8, off_1E7960088);
  if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
  {
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  v24 = sub_1ABA90CF4();
  v25 = type metadata accessor for CustomGraphMindfulnessActivityEvent(v24);
  sub_1ABAA0EE8(v25);
  v26 = sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
  sub_1ABA8B2C0(&qword_1EB4D5F20, &qword_1ABF4F358, *(v26 + 28));
  sub_1ABAA5898();
  if (v27)
  {

    sub_1ABC6AAC4(v1, &qword_1EB4D5F20);
  }

  else
  {
    sub_1ABA89DD8();
    sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20);
    sub_1ABA8C968();
    v3 = &qword_1EB4D9BF0;
    v6 = v4;
    sub_1ABC6C36C(v28);
    sub_1ABAA45A8();
    sub_1ABA84188();
    sub_1ABAA295C();
    v29 = objc_allocWithZone(GDGraphDateRelationship);
    sub_1ABA89B58();

    v30 = sub_1ABAA40C4();
    sub_1ABC6C440(v30);
  }

  sub_1ABA969FC();
  if (v6)
  {
    sub_1ABA9FC20();
    sub_1ABA97FF8();
    while (1)
    {
      sub_1ABA8E96C();
      if (v31)
      {
        sub_1ABA8908C();
      }

      else
      {
        v32 = sub_1ABAB5AC8();
        sub_1ABAFF390(v32, v33, off_1E79600C8);
        v34 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        sub_1ABA96FC0();

        if (!sub_1ABAB65E0())
        {
          goto LABEL_78;
        }
      }

      v35 = v3[2];
      if (v35)
      {
        break;
      }

      v1 = MEMORY[0x1E69E7CC0];
LABEL_16:
      ++v5;
      v38 = objc_allocWithZone(GDGraphAttendeeRelationship);
      sub_1ABA9358C();
      sub_1ABC69D78();
      sub_1ABA9DE68();

      sub_1ABF24B94();
      sub_1ABAB67A0();
      sub_1ABA9E200();
      sub_1ABF24BA4();
      if (v5 == v6)
      {
        sub_1ABA9EFE4();
        goto LABEL_18;
      }
    }

    sub_1ABC6C428(MEMORY[0x1E69E7CC0]);
    sub_1ABA88B74();
    v36 = sub_1ABA8BCD4();
    sub_1ABAFF390(v36, v37, off_1E79600C8);
    swift_getObjCClassFromMetadata();
    sub_1ABA8BAF4();
    while ([sub_1ABA90FC8() initWithValue_])
    {
      sub_1ABA88C70();
      sub_1ABC6C3C4();
      sub_1ABA88D50();
      sub_1ABF24BA4();
      if (!--v35)
      {
        sub_1ABA9F1A0();
        goto LABEL_16;
      }
    }

    goto LABEL_73;
  }

LABEL_18:
  sub_1ABAB510C();
  v39 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    sub_1ABA8A3C0();
    sub_1ABA97FF8();
    while (1)
    {
      sub_1ABA8E96C();
      if (v40)
      {
        sub_1ABA8908C();
      }

      else
      {
        v41 = sub_1ABA8CB08();
        sub_1ABAFF390(v41, &qword_1EB4D5F08, off_1E7960048);
        v42 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        sub_1ABA96FC0();

        if (!sub_1ABAB65E0())
        {
          goto LABEL_79;
        }
      }

      v43 = v3[2];
      if (v43)
      {
        break;
      }

      v1 = v39;
LABEL_29:
      ++v5;
      v44 = objc_allocWithZone(GDGraphLocationRelationship);
      sub_1ABA8390C();
      sub_1ABC69D78();
      sub_1ABA9DE68();

      sub_1ABF24B94();
      sub_1ABAB67A0();
      sub_1ABA9E200();
      sub_1ABF24BA4();
      if (v5 == v6)
      {
        sub_1ABA9F0B8();
        goto LABEL_31;
      }
    }

    sub_1ABC6C458();
    sub_1ABA88B74();
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABA8BAF4();
    while ([sub_1ABA90FC8() initWithValue_])
    {
      sub_1ABA88C70();
      sub_1ABC6C3C4();
      sub_1ABA88D50();
      sub_1ABF24BA4();
      if (!--v43)
      {
        v1 = v85;
        v39 = MEMORY[0x1E69E7CC0];
        v6 = v83;
        goto LABEL_29;
      }
    }

LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

LABEL_31:
  sub_1ABAABCB8();
  if (v45)
  {
    v46 = 0;
  }

  else
  {
    v47 = v3[1];
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    v46 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_];
    if (!v46)
    {
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
      return;
    }
  }

  sub_1ABAA22EC();
  if ((v48 & 1) == 0)
  {
    v49 = v3[1];
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
    {
      goto LABEL_82;
    }
  }

  sub_1ABAA1F6C();
  if ((v51 & 1) == 0)
  {
    v52 = *(v50 + 8);
    sub_1ABAFF390(0, &qword_1EB4D5F50, off_1E795FF08);
    if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
    {
      goto LABEL_83;
    }
  }

  sub_1ABAB1118();
  if (v27)
  {
    v53 = 0;
  }

  else
  {
    v53 = sub_1ABC6C3F8();
  }

  sub_1ABA818CC();
  sub_1ABAFF390(0, &qword_1ED86B920, 0x1E696AD98);
  v54 = sub_1ABAA045C();
  v55 = sub_1ABA97B70(v54);
  sub_1ABA80B88(v55);
  if (v3)
  {
    v86 = v39;

    sub_1ABA9E6A8();
    sub_1ABA7F360();
    do
    {
      sub_1ABA9FEB0();
      sub_1ABAB54D0();
      v56 = sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20);
      v57 = sub_1ABA90834(v56);
      sub_1ABB2E9FC(v57, v58, &qword_1EB4D9BF0, &qword_1ABF34240);
      sub_1ABAA4E64();
      sub_1ABA9A498();
      sub_1ABA9754C();
      v59 = objc_allocWithZone(GDGraphDateRelationship);
      sub_1ABA9EFD8();

      sub_1ABA8E288();
      v60 = sub_1ABA9F354();
      sub_1ABC6AA68(v60);
      sub_1ABF24B94();
      sub_1ABA8B120();
      sub_1ABC6C3E0();
      sub_1ABF24BA4();
      sub_1ABAA1318();
    }

    while (!v27);
  }

  else
  {
  }

  sub_1ABAB56E0();
  v61 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABA9FFF0(MEMORY[0x1E69E7CC0]);
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABAB587C();
    while (1)
    {
      sub_1ABA8A95C();
      if (v62)
      {
        break;
      }

      if (![sub_1ABAA0CD0() initWithValue_])
      {
        goto LABEL_75;
      }

      sub_1ABA8B4D4();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
      if (v3 == v46)
      {
        v61 = v86;
        goto LABEL_53;
      }
    }

    __break(1u);
    goto LABEL_71;
  }

LABEL_53:
  sub_1ABAA2640(v61);
  v63 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABAA0318();
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABAB52F8();
    while (1)
    {
      sub_1ABA89C88();
      if (v62)
      {
        break;
      }

      if (![sub_1ABC6C410() initWithValue_])
      {
        goto LABEL_76;
      }

      sub_1ABA8B6AC();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
      if (v3 == v63)
      {
        v63 = v86;
        goto LABEL_59;
      }
    }

LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

LABEL_59:
  sub_1ABAA111C();
  v64 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABA8AF3C();
    sub_1ABAFF390(0, &qword_1EB4D5F50, off_1E795FF08);
    swift_getObjCClassFromMetadata();
    sub_1ABA88678();
    while (1)
    {
      sub_1ABA9F274();
      if (v62)
      {
        goto LABEL_72;
      }

      if (![sub_1ABAB0F94() initWithValue_])
      {
        goto LABEL_77;
      }

      sub_1ABAA0178();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
      if (v3 == v7)
      {
        v64 = v86;
        break;
      }
    }
  }

  sub_1ABA8282C();
  v65 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABA8A628();
    do
    {
      v66 = sub_1ABA95120();
      sub_1ABAAD268(v66);
      sub_1ABA9DFA0();
      sub_1ABAB6908();
      sub_1ABA9E0F4();
      sub_1ABF24BA4();
      v3 = (v3 - 1);
    }

    while (v3);
    v65 = v86;
  }

  sub_1ABA7AD30();
  v67 = MEMORY[0x1E69E7CC0];
  objc_allocWithZone(GDGraphMindfulnessActivityEvent);
  v68 = sub_1ABA8F488();
  sub_1ABC67F50(v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v84, v63, v64, v65, v67);
  sub_1ABA89A08();
  sub_1ABA8B438();
}

void __swiftcall CustomGraphSleepingActivityEvent.toObjectiveCGraphObject()(GDGraphSleepingActivityEvent *__return_ptr retstr)
{
  sub_1ABA8AAB0();
  sub_1ABAA9198();
  sub_1ABA8C0D0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1ABA8F4D8();
  v9 = sub_1ABAD219C(&qword_1EB4D9BF0, &qword_1ABF34240);
  v10 = sub_1ABA7AB80(v9);
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABA7E77C(v11, v81);
  MEMORY[0x1EEE9AC00](v12);
  sub_1ABA99440(v13, v14, v15, v16, v17, v18, v19, v20, v82);
  MEMORY[0x1EEE9AC00](v21);
  sub_1ABA954CC();
  v22 = sub_1ABAD219C(&qword_1EB4D5F20, &qword_1ABF4F358);
  sub_1ABA7AB80(v22);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v23);
  sub_1ABA9587C();
  sub_1ABAFF390(0, &qword_1EB4D5FB0, off_1E7960110);
  if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
  {
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  v24 = sub_1ABA90CF4();
  v25 = type metadata accessor for CustomGraphSleepingActivityEvent(v24);
  sub_1ABAA0EE8(v25);
  v26 = sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
  sub_1ABA8B2C0(&qword_1EB4D5F20, &qword_1ABF4F358, *(v26 + 28));
  sub_1ABAA5898();
  if (v27)
  {

    sub_1ABC6AAC4(v1, &qword_1EB4D5F20);
  }

  else
  {
    sub_1ABA89DD8();
    sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20);
    sub_1ABA8C968();
    v3 = &qword_1EB4D9BF0;
    v6 = v4;
    sub_1ABC6C36C(v28);
    sub_1ABAA45A8();
    sub_1ABA84188();
    sub_1ABAA295C();
    v29 = objc_allocWithZone(GDGraphDateRelationship);
    sub_1ABA89B58();

    v30 = sub_1ABAA40C4();
    sub_1ABC6C440(v30);
  }

  sub_1ABA969FC();
  if (v6)
  {
    sub_1ABA9FC20();
    sub_1ABA97FF8();
    while (1)
    {
      sub_1ABA8E96C();
      if (v31)
      {
        sub_1ABA8908C();
      }

      else
      {
        v32 = sub_1ABAB5AC8();
        sub_1ABAFF390(v32, v33, off_1E79600C8);
        v34 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        sub_1ABA96FC0();

        if (!sub_1ABAB65E0())
        {
          goto LABEL_78;
        }
      }

      v35 = v3[2];
      if (v35)
      {
        break;
      }

      v1 = MEMORY[0x1E69E7CC0];
LABEL_16:
      ++v5;
      v38 = objc_allocWithZone(GDGraphAttendeeRelationship);
      sub_1ABA9358C();
      sub_1ABC69D78();
      sub_1ABA9DE68();

      sub_1ABF24B94();
      sub_1ABAB67A0();
      sub_1ABA9E200();
      sub_1ABF24BA4();
      if (v5 == v6)
      {
        sub_1ABA9EFE4();
        goto LABEL_18;
      }
    }

    sub_1ABC6C428(MEMORY[0x1E69E7CC0]);
    sub_1ABA88B74();
    v36 = sub_1ABA8BCD4();
    sub_1ABAFF390(v36, v37, off_1E79600C8);
    swift_getObjCClassFromMetadata();
    sub_1ABA8BAF4();
    while ([sub_1ABA90FC8() initWithValue_])
    {
      sub_1ABA88C70();
      sub_1ABC6C3C4();
      sub_1ABA88D50();
      sub_1ABF24BA4();
      if (!--v35)
      {
        sub_1ABA9F1A0();
        goto LABEL_16;
      }
    }

    goto LABEL_73;
  }

LABEL_18:
  sub_1ABAB510C();
  v39 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    sub_1ABA8A3C0();
    sub_1ABA97FF8();
    while (1)
    {
      sub_1ABA8E96C();
      if (v40)
      {
        sub_1ABA8908C();
      }

      else
      {
        v41 = sub_1ABA8CB08();
        sub_1ABAFF390(v41, &qword_1EB4D5F08, off_1E7960048);
        v42 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        sub_1ABA96FC0();

        if (!sub_1ABAB65E0())
        {
          goto LABEL_79;
        }
      }

      v43 = v3[2];
      if (v43)
      {
        break;
      }

      v1 = v39;
LABEL_29:
      ++v5;
      v44 = objc_allocWithZone(GDGraphLocationRelationship);
      sub_1ABA8390C();
      sub_1ABC69D78();
      sub_1ABA9DE68();

      sub_1ABF24B94();
      sub_1ABAB67A0();
      sub_1ABA9E200();
      sub_1ABF24BA4();
      if (v5 == v6)
      {
        sub_1ABA9F0B8();
        goto LABEL_31;
      }
    }

    sub_1ABC6C458();
    sub_1ABA88B74();
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABA8BAF4();
    while ([sub_1ABA90FC8() initWithValue_])
    {
      sub_1ABA88C70();
      sub_1ABC6C3C4();
      sub_1ABA88D50();
      sub_1ABF24BA4();
      if (!--v43)
      {
        v1 = v85;
        v39 = MEMORY[0x1E69E7CC0];
        v6 = v83;
        goto LABEL_29;
      }
    }

LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

LABEL_31:
  sub_1ABAABCB8();
  if (v45)
  {
    v46 = 0;
  }

  else
  {
    v47 = v3[1];
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    v46 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_];
    if (!v46)
    {
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
      return;
    }
  }

  sub_1ABAA22EC();
  if ((v48 & 1) == 0)
  {
    v49 = v3[1];
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
    {
      goto LABEL_82;
    }
  }

  sub_1ABAA1F6C();
  if ((v51 & 1) == 0)
  {
    v52 = *(v50 + 8);
    sub_1ABAFF390(0, &qword_1EB4D5F50, off_1E795FF08);
    if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
    {
      goto LABEL_83;
    }
  }

  sub_1ABAB1118();
  if (v27)
  {
    v53 = 0;
  }

  else
  {
    v53 = sub_1ABC6C3F8();
  }

  sub_1ABA818CC();
  sub_1ABAFF390(0, &qword_1ED86B920, 0x1E696AD98);
  v54 = sub_1ABAA045C();
  v55 = sub_1ABA97B70(v54);
  sub_1ABA80B88(v55);
  if (v3)
  {
    v86 = v39;

    sub_1ABA9E6A8();
    sub_1ABA7F360();
    do
    {
      sub_1ABA9FEB0();
      sub_1ABAB54D0();
      v56 = sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20);
      v57 = sub_1ABA90834(v56);
      sub_1ABB2E9FC(v57, v58, &qword_1EB4D9BF0, &qword_1ABF34240);
      sub_1ABAA4E64();
      sub_1ABA9A498();
      sub_1ABA9754C();
      v59 = objc_allocWithZone(GDGraphDateRelationship);
      sub_1ABA9EFD8();

      sub_1ABA8E288();
      v60 = sub_1ABA9F354();
      sub_1ABC6AA68(v60);
      sub_1ABF24B94();
      sub_1ABA8B120();
      sub_1ABC6C3E0();
      sub_1ABF24BA4();
      sub_1ABAA1318();
    }

    while (!v27);
  }

  else
  {
  }

  sub_1ABAB56E0();
  v61 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABA9FFF0(MEMORY[0x1E69E7CC0]);
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABAB587C();
    while (1)
    {
      sub_1ABA8A95C();
      if (v62)
      {
        break;
      }

      if (![sub_1ABAA0CD0() initWithValue_])
      {
        goto LABEL_75;
      }

      sub_1ABA8B4D4();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
      if (v3 == v46)
      {
        v61 = v86;
        goto LABEL_53;
      }
    }

    __break(1u);
    goto LABEL_71;
  }

LABEL_53:
  sub_1ABAA2640(v61);
  v63 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABAA0318();
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABAB52F8();
    while (1)
    {
      sub_1ABA89C88();
      if (v62)
      {
        break;
      }

      if (![sub_1ABC6C410() initWithValue_])
      {
        goto LABEL_76;
      }

      sub_1ABA8B6AC();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
      if (v3 == v63)
      {
        v63 = v86;
        goto LABEL_59;
      }
    }

LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

LABEL_59:
  sub_1ABAA111C();
  v64 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABA8AF3C();
    sub_1ABAFF390(0, &qword_1EB4D5F50, off_1E795FF08);
    swift_getObjCClassFromMetadata();
    sub_1ABA88678();
    while (1)
    {
      sub_1ABA9F274();
      if (v62)
      {
        goto LABEL_72;
      }

      if (![sub_1ABAB0F94() initWithValue_])
      {
        goto LABEL_77;
      }

      sub_1ABAA0178();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
      if (v3 == v7)
      {
        v64 = v86;
        break;
      }
    }
  }

  sub_1ABA8282C();
  v65 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABA8A628();
    do
    {
      v66 = sub_1ABA95120();
      sub_1ABAAD268(v66);
      sub_1ABA9DFA0();
      sub_1ABAB6908();
      sub_1ABA9E0F4();
      sub_1ABF24BA4();
      v3 = (v3 - 1);
    }

    while (v3);
    v65 = v86;
  }

  sub_1ABA7AD30();
  v67 = MEMORY[0x1E69E7CC0];
  objc_allocWithZone(GDGraphSleepingActivityEvent);
  v68 = sub_1ABA8F488();
  sub_1ABC67F50(v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v84, v63, v64, v65, v67);
  sub_1ABA89A08();
  sub_1ABA8B438();
}

void __swiftcall CustomGraphTravelingActivityEvent.toObjectiveCGraphObject()(GDGraphTravelingActivityEvent *__return_ptr retstr)
{
  sub_1ABA8AAB0();
  sub_1ABAA9198();
  sub_1ABA8C0D0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1ABA8F4D8();
  v9 = sub_1ABAD219C(&qword_1EB4D9BF0, &qword_1ABF34240);
  v10 = sub_1ABA7AB80(v9);
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABA7E77C(v11, v81);
  MEMORY[0x1EEE9AC00](v12);
  sub_1ABA99440(v13, v14, v15, v16, v17, v18, v19, v20, v82);
  MEMORY[0x1EEE9AC00](v21);
  sub_1ABA954CC();
  v22 = sub_1ABAD219C(&qword_1EB4D5F20, &qword_1ABF4F358);
  sub_1ABA7AB80(v22);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v23);
  sub_1ABA9587C();
  sub_1ABAFF390(0, &qword_1EB4D5FB8, off_1E79601C8);
  if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
  {
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  v24 = sub_1ABA90CF4();
  v25 = type metadata accessor for CustomGraphTravelingActivityEvent(v24);
  sub_1ABAA0EE8(v25);
  v26 = sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
  sub_1ABA8B2C0(&qword_1EB4D5F20, &qword_1ABF4F358, *(v26 + 28));
  sub_1ABAA5898();
  if (v27)
  {

    sub_1ABC6AAC4(v1, &qword_1EB4D5F20);
  }

  else
  {
    sub_1ABA89DD8();
    sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20);
    sub_1ABA8C968();
    v3 = &qword_1EB4D9BF0;
    v6 = v4;
    sub_1ABC6C36C(v28);
    sub_1ABAA45A8();
    sub_1ABA84188();
    sub_1ABAA295C();
    v29 = objc_allocWithZone(GDGraphDateRelationship);
    sub_1ABA89B58();

    v30 = sub_1ABAA40C4();
    sub_1ABC6C440(v30);
  }

  sub_1ABA969FC();
  if (v6)
  {
    sub_1ABA9FC20();
    sub_1ABA97FF8();
    while (1)
    {
      sub_1ABA8E96C();
      if (v31)
      {
        sub_1ABA8908C();
      }

      else
      {
        v32 = sub_1ABAB5AC8();
        sub_1ABAFF390(v32, v33, off_1E79600C8);
        v34 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        sub_1ABA96FC0();

        if (!sub_1ABAB65E0())
        {
          goto LABEL_78;
        }
      }

      v35 = v3[2];
      if (v35)
      {
        break;
      }

      v1 = MEMORY[0x1E69E7CC0];
LABEL_16:
      ++v5;
      v38 = objc_allocWithZone(GDGraphAttendeeRelationship);
      sub_1ABA9358C();
      sub_1ABC69D78();
      sub_1ABA9DE68();

      sub_1ABF24B94();
      sub_1ABAB67A0();
      sub_1ABA9E200();
      sub_1ABF24BA4();
      if (v5 == v6)
      {
        sub_1ABA9EFE4();
        goto LABEL_18;
      }
    }

    sub_1ABC6C428(MEMORY[0x1E69E7CC0]);
    sub_1ABA88B74();
    v36 = sub_1ABA8BCD4();
    sub_1ABAFF390(v36, v37, off_1E79600C8);
    swift_getObjCClassFromMetadata();
    sub_1ABA8BAF4();
    while ([sub_1ABA90FC8() initWithValue_])
    {
      sub_1ABA88C70();
      sub_1ABC6C3C4();
      sub_1ABA88D50();
      sub_1ABF24BA4();
      if (!--v35)
      {
        sub_1ABA9F1A0();
        goto LABEL_16;
      }
    }

    goto LABEL_73;
  }

LABEL_18:
  sub_1ABAB510C();
  v39 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    sub_1ABA8A3C0();
    sub_1ABA97FF8();
    while (1)
    {
      sub_1ABA8E96C();
      if (v40)
      {
        sub_1ABA8908C();
      }

      else
      {
        v41 = sub_1ABA8CB08();
        sub_1ABAFF390(v41, &qword_1EB4D5F08, off_1E7960048);
        v42 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        sub_1ABA96FC0();

        if (!sub_1ABAB65E0())
        {
          goto LABEL_79;
        }
      }

      v43 = v3[2];
      if (v43)
      {
        break;
      }

      v1 = v39;
LABEL_29:
      ++v5;
      v44 = objc_allocWithZone(GDGraphLocationRelationship);
      sub_1ABA8390C();
      sub_1ABC69D78();
      sub_1ABA9DE68();

      sub_1ABF24B94();
      sub_1ABAB67A0();
      sub_1ABA9E200();
      sub_1ABF24BA4();
      if (v5 == v6)
      {
        sub_1ABA9F0B8();
        goto LABEL_31;
      }
    }

    sub_1ABC6C458();
    sub_1ABA88B74();
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABA8BAF4();
    while ([sub_1ABA90FC8() initWithValue_])
    {
      sub_1ABA88C70();
      sub_1ABC6C3C4();
      sub_1ABA88D50();
      sub_1ABF24BA4();
      if (!--v43)
      {
        v1 = v85;
        v39 = MEMORY[0x1E69E7CC0];
        v6 = v83;
        goto LABEL_29;
      }
    }

LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

LABEL_31:
  sub_1ABAABCB8();
  if (v45)
  {
    v46 = 0;
  }

  else
  {
    v47 = v3[1];
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    v46 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_];
    if (!v46)
    {
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
      return;
    }
  }

  sub_1ABAA22EC();
  if ((v48 & 1) == 0)
  {
    v49 = v3[1];
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
    {
      goto LABEL_82;
    }
  }

  sub_1ABAA1F6C();
  if ((v51 & 1) == 0)
  {
    v52 = *(v50 + 8);
    sub_1ABAFF390(0, &qword_1EB4D5F50, off_1E795FF08);
    if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
    {
      goto LABEL_83;
    }
  }

  sub_1ABAB1118();
  if (v27)
  {
    v53 = 0;
  }

  else
  {
    v53 = sub_1ABC6C3F8();
  }

  sub_1ABA818CC();
  sub_1ABAFF390(0, &qword_1ED86B920, 0x1E696AD98);
  v54 = sub_1ABAA045C();
  v55 = sub_1ABA97B70(v54);
  sub_1ABA80B88(v55);
  if (v3)
  {
    v86 = v39;

    sub_1ABA9E6A8();
    sub_1ABA7F360();
    do
    {
      sub_1ABA9FEB0();
      sub_1ABAB54D0();
      v56 = sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20);
      v57 = sub_1ABA90834(v56);
      sub_1ABB2E9FC(v57, v58, &qword_1EB4D9BF0, &qword_1ABF34240);
      sub_1ABAA4E64();
      sub_1ABA9A498();
      sub_1ABA9754C();
      v59 = objc_allocWithZone(GDGraphDateRelationship);
      sub_1ABA9EFD8();

      sub_1ABA8E288();
      v60 = sub_1ABA9F354();
      sub_1ABC6AA68(v60);
      sub_1ABF24B94();
      sub_1ABA8B120();
      sub_1ABC6C3E0();
      sub_1ABF24BA4();
      sub_1ABAA1318();
    }

    while (!v27);
  }

  else
  {
  }

  sub_1ABAB56E0();
  v61 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABA9FFF0(MEMORY[0x1E69E7CC0]);
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABAB587C();
    while (1)
    {
      sub_1ABA8A95C();
      if (v62)
      {
        break;
      }

      if (![sub_1ABAA0CD0() initWithValue_])
      {
        goto LABEL_75;
      }

      sub_1ABA8B4D4();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
      if (v3 == v46)
      {
        v61 = v86;
        goto LABEL_53;
      }
    }

    __break(1u);
    goto LABEL_71;
  }

LABEL_53:
  sub_1ABAA2640(v61);
  v63 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABAA0318();
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABAB52F8();
    while (1)
    {
      sub_1ABA89C88();
      if (v62)
      {
        break;
      }

      if (![sub_1ABC6C410() initWithValue_])
      {
        goto LABEL_76;
      }

      sub_1ABA8B6AC();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
      if (v3 == v63)
      {
        v63 = v86;
        goto LABEL_59;
      }
    }

LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

LABEL_59:
  sub_1ABAA111C();
  v64 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABA8AF3C();
    sub_1ABAFF390(0, &qword_1EB4D5F50, off_1E795FF08);
    swift_getObjCClassFromMetadata();
    sub_1ABA88678();
    while (1)
    {
      sub_1ABA9F274();
      if (v62)
      {
        goto LABEL_72;
      }

      if (![sub_1ABAB0F94() initWithValue_])
      {
        goto LABEL_77;
      }

      sub_1ABAA0178();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
      if (v3 == v7)
      {
        v64 = v86;
        break;
      }
    }
  }

  sub_1ABA8282C();
  v65 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABA8A628();
    do
    {
      v66 = sub_1ABA95120();
      sub_1ABAAD268(v66);
      sub_1ABA9DFA0();
      sub_1ABAB6908();
      sub_1ABA9E0F4();
      sub_1ABF24BA4();
      v3 = (v3 - 1);
    }

    while (v3);
    v65 = v86;
  }

  sub_1ABA7AD30();
  v67 = MEMORY[0x1E69E7CC0];
  objc_allocWithZone(GDGraphTravelingActivityEvent);
  v68 = sub_1ABA8F488();
  sub_1ABC67F50(v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v84, v63, v64, v65, v67);
  sub_1ABA89A08();
  sub_1ABA8B438();
}

void __swiftcall CustomGraphReadingActivityEvent.toObjectiveCGraphObject()(GDGraphReadingActivityEvent *__return_ptr retstr)
{
  sub_1ABA8AAB0();
  sub_1ABAA9198();
  sub_1ABA8C0D0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1ABA8F4D8();
  v9 = sub_1ABAD219C(&qword_1EB4D9BF0, &qword_1ABF34240);
  v10 = sub_1ABA7AB80(v9);
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABA7E77C(v11, v81);
  MEMORY[0x1EEE9AC00](v12);
  sub_1ABA99440(v13, v14, v15, v16, v17, v18, v19, v20, v82);
  MEMORY[0x1EEE9AC00](v21);
  sub_1ABA954CC();
  v22 = sub_1ABAD219C(&qword_1EB4D5F20, &qword_1ABF4F358);
  sub_1ABA7AB80(v22);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v23);
  sub_1ABA9587C();
  sub_1ABAFF390(0, &qword_1EB4D5FC0, off_1E79600E0);
  if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
  {
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  v24 = sub_1ABA90CF4();
  v25 = type metadata accessor for CustomGraphReadingActivityEvent(v24);
  sub_1ABAA0EE8(v25);
  v26 = sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
  sub_1ABA8B2C0(&qword_1EB4D5F20, &qword_1ABF4F358, *(v26 + 28));
  sub_1ABAA5898();
  if (v27)
  {

    sub_1ABC6AAC4(v1, &qword_1EB4D5F20);
  }

  else
  {
    sub_1ABA89DD8();
    sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20);
    sub_1ABA8C968();
    v3 = &qword_1EB4D9BF0;
    v6 = v4;
    sub_1ABC6C36C(v28);
    sub_1ABAA45A8();
    sub_1ABA84188();
    sub_1ABAA295C();
    v29 = objc_allocWithZone(GDGraphDateRelationship);
    sub_1ABA89B58();

    v30 = sub_1ABAA40C4();
    sub_1ABC6C440(v30);
  }

  sub_1ABA969FC();
  if (v6)
  {
    sub_1ABA9FC20();
    sub_1ABA97FF8();
    while (1)
    {
      sub_1ABA8E96C();
      if (v31)
      {
        sub_1ABA8908C();
      }

      else
      {
        v32 = sub_1ABAB5AC8();
        sub_1ABAFF390(v32, v33, off_1E79600C8);
        v34 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        sub_1ABA96FC0();

        if (!sub_1ABAB65E0())
        {
          goto LABEL_78;
        }
      }

      v35 = v3[2];
      if (v35)
      {
        break;
      }

      v1 = MEMORY[0x1E69E7CC0];
LABEL_16:
      ++v5;
      v38 = objc_allocWithZone(GDGraphAttendeeRelationship);
      sub_1ABA9358C();
      sub_1ABC69D78();
      sub_1ABA9DE68();

      sub_1ABF24B94();
      sub_1ABAB67A0();
      sub_1ABA9E200();
      sub_1ABF24BA4();
      if (v5 == v6)
      {
        sub_1ABA9EFE4();
        goto LABEL_18;
      }
    }

    sub_1ABC6C428(MEMORY[0x1E69E7CC0]);
    sub_1ABA88B74();
    v36 = sub_1ABA8BCD4();
    sub_1ABAFF390(v36, v37, off_1E79600C8);
    swift_getObjCClassFromMetadata();
    sub_1ABA8BAF4();
    while ([sub_1ABA90FC8() initWithValue_])
    {
      sub_1ABA88C70();
      sub_1ABC6C3C4();
      sub_1ABA88D50();
      sub_1ABF24BA4();
      if (!--v35)
      {
        sub_1ABA9F1A0();
        goto LABEL_16;
      }
    }

    goto LABEL_73;
  }

LABEL_18:
  sub_1ABAB510C();
  v39 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    sub_1ABA8A3C0();
    sub_1ABA97FF8();
    while (1)
    {
      sub_1ABA8E96C();
      if (v40)
      {
        sub_1ABA8908C();
      }

      else
      {
        v41 = sub_1ABA8CB08();
        sub_1ABAFF390(v41, &qword_1EB4D5F08, off_1E7960048);
        v42 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        sub_1ABA96FC0();

        if (!sub_1ABAB65E0())
        {
          goto LABEL_79;
        }
      }

      v43 = v3[2];
      if (v43)
      {
        break;
      }

      v1 = v39;
LABEL_29:
      ++v5;
      v44 = objc_allocWithZone(GDGraphLocationRelationship);
      sub_1ABA8390C();
      sub_1ABC69D78();
      sub_1ABA9DE68();

      sub_1ABF24B94();
      sub_1ABAB67A0();
      sub_1ABA9E200();
      sub_1ABF24BA4();
      if (v5 == v6)
      {
        sub_1ABA9F0B8();
        goto LABEL_31;
      }
    }

    sub_1ABC6C458();
    sub_1ABA88B74();
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABA8BAF4();
    while ([sub_1ABA90FC8() initWithValue_])
    {
      sub_1ABA88C70();
      sub_1ABC6C3C4();
      sub_1ABA88D50();
      sub_1ABF24BA4();
      if (!--v43)
      {
        v1 = v85;
        v39 = MEMORY[0x1E69E7CC0];
        v6 = v83;
        goto LABEL_29;
      }
    }

LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

LABEL_31:
  sub_1ABAABCB8();
  if (v45)
  {
    v46 = 0;
  }

  else
  {
    v47 = v3[1];
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    v46 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_];
    if (!v46)
    {
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
      return;
    }
  }

  sub_1ABAA22EC();
  if ((v48 & 1) == 0)
  {
    v49 = v3[1];
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
    {
      goto LABEL_82;
    }
  }

  sub_1ABAA1F6C();
  if ((v51 & 1) == 0)
  {
    v52 = *(v50 + 8);
    sub_1ABAFF390(0, &qword_1EB4D5F50, off_1E795FF08);
    if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
    {
      goto LABEL_83;
    }
  }

  sub_1ABAB1118();
  if (v27)
  {
    v53 = 0;
  }

  else
  {
    v53 = sub_1ABC6C3F8();
  }

  sub_1ABA818CC();
  sub_1ABAFF390(0, &qword_1ED86B920, 0x1E696AD98);
  v54 = sub_1ABAA045C();
  v55 = sub_1ABA97B70(v54);
  sub_1ABA80B88(v55);
  if (v3)
  {
    v86 = v39;

    sub_1ABA9E6A8();
    sub_1ABA7F360();
    do
    {
      sub_1ABA9FEB0();
      sub_1ABAB54D0();
      v56 = sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20);
      v57 = sub_1ABA90834(v56);
      sub_1ABB2E9FC(v57, v58, &qword_1EB4D9BF0, &qword_1ABF34240);
      sub_1ABAA4E64();
      sub_1ABA9A498();
      sub_1ABA9754C();
      v59 = objc_allocWithZone(GDGraphDateRelationship);
      sub_1ABA9EFD8();

      sub_1ABA8E288();
      v60 = sub_1ABA9F354();
      sub_1ABC6AA68(v60);
      sub_1ABF24B94();
      sub_1ABA8B120();
      sub_1ABC6C3E0();
      sub_1ABF24BA4();
      sub_1ABAA1318();
    }

    while (!v27);
  }

  else
  {
  }

  sub_1ABAB56E0();
  v61 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABA9FFF0(MEMORY[0x1E69E7CC0]);
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABAB587C();
    while (1)
    {
      sub_1ABA8A95C();
      if (v62)
      {
        break;
      }

      if (![sub_1ABAA0CD0() initWithValue_])
      {
        goto LABEL_75;
      }

      sub_1ABA8B4D4();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
      if (v3 == v46)
      {
        v61 = v86;
        goto LABEL_53;
      }
    }

    __break(1u);
    goto LABEL_71;
  }

LABEL_53:
  sub_1ABAA2640(v61);
  v63 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABAA0318();
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABAB52F8();
    while (1)
    {
      sub_1ABA89C88();
      if (v62)
      {
        break;
      }

      if (![sub_1ABC6C410() initWithValue_])
      {
        goto LABEL_76;
      }

      sub_1ABA8B6AC();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
      if (v3 == v63)
      {
        v63 = v86;
        goto LABEL_59;
      }
    }

LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

LABEL_59:
  sub_1ABAA111C();
  v64 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABA8AF3C();
    sub_1ABAFF390(0, &qword_1EB4D5F50, off_1E795FF08);
    swift_getObjCClassFromMetadata();
    sub_1ABA88678();
    while (1)
    {
      sub_1ABA9F274();
      if (v62)
      {
        goto LABEL_72;
      }

      if (![sub_1ABAB0F94() initWithValue_])
      {
        goto LABEL_77;
      }

      sub_1ABAA0178();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
      if (v3 == v7)
      {
        v64 = v86;
        break;
      }
    }
  }

  sub_1ABA8282C();
  v65 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABA8A628();
    do
    {
      v66 = sub_1ABA95120();
      sub_1ABAAD268(v66);
      sub_1ABA9DFA0();
      sub_1ABAB6908();
      sub_1ABA9E0F4();
      sub_1ABF24BA4();
      v3 = (v3 - 1);
    }

    while (v3);
    v65 = v86;
  }

  sub_1ABA7AD30();
  v67 = MEMORY[0x1E69E7CC0];
  objc_allocWithZone(GDGraphReadingActivityEvent);
  v68 = sub_1ABA8F488();
  sub_1ABC67F50(v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v84, v63, v64, v65, v67);
  sub_1ABA89A08();
  sub_1ABA8B438();
}

void __swiftcall CustomGraphVacationingActivityEvent.toObjectiveCGraphObject()(GDGraphVacationingActivityEvent *__return_ptr retstr)
{
  sub_1ABA8AAB0();
  sub_1ABAA9198();
  sub_1ABA8C0D0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1ABA8F4D8();
  v9 = sub_1ABAD219C(&qword_1EB4D9BF0, &qword_1ABF34240);
  v10 = sub_1ABA7AB80(v9);
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABA7E77C(v11, v81);
  MEMORY[0x1EEE9AC00](v12);
  sub_1ABA99440(v13, v14, v15, v16, v17, v18, v19, v20, v82);
  MEMORY[0x1EEE9AC00](v21);
  sub_1ABA954CC();
  v22 = sub_1ABAD219C(&qword_1EB4D5F20, &qword_1ABF4F358);
  sub_1ABA7AB80(v22);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v23);
  sub_1ABA9587C();
  sub_1ABAFF390(0, &qword_1EB4D5FC8, off_1E79601D8);
  if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
  {
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  v24 = sub_1ABA90CF4();
  v25 = type metadata accessor for CustomGraphVacationingActivityEvent(v24);
  sub_1ABAA0EE8(v25);
  v26 = sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
  sub_1ABA8B2C0(&qword_1EB4D5F20, &qword_1ABF4F358, *(v26 + 28));
  sub_1ABAA5898();
  if (v27)
  {

    sub_1ABC6AAC4(v1, &qword_1EB4D5F20);
  }

  else
  {
    sub_1ABA89DD8();
    sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20);
    sub_1ABA8C968();
    v3 = &qword_1EB4D9BF0;
    v6 = v4;
    sub_1ABC6C36C(v28);
    sub_1ABAA45A8();
    sub_1ABA84188();
    sub_1ABAA295C();
    v29 = objc_allocWithZone(GDGraphDateRelationship);
    sub_1ABA89B58();

    v30 = sub_1ABAA40C4();
    sub_1ABC6C440(v30);
  }

  sub_1ABA969FC();
  if (v6)
  {
    sub_1ABA9FC20();
    sub_1ABA97FF8();
    while (1)
    {
      sub_1ABA8E96C();
      if (v31)
      {
        sub_1ABA8908C();
      }

      else
      {
        v32 = sub_1ABAB5AC8();
        sub_1ABAFF390(v32, v33, off_1E79600C8);
        v34 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        sub_1ABA96FC0();

        if (!sub_1ABAB65E0())
        {
          goto LABEL_78;
        }
      }

      v35 = v3[2];
      if (v35)
      {
        break;
      }

      v1 = MEMORY[0x1E69E7CC0];
LABEL_16:
      ++v5;
      v38 = objc_allocWithZone(GDGraphAttendeeRelationship);
      sub_1ABA9358C();
      sub_1ABC69D78();
      sub_1ABA9DE68();

      sub_1ABF24B94();
      sub_1ABAB67A0();
      sub_1ABA9E200();
      sub_1ABF24BA4();
      if (v5 == v6)
      {
        sub_1ABA9EFE4();
        goto LABEL_18;
      }
    }

    sub_1ABC6C428(MEMORY[0x1E69E7CC0]);
    sub_1ABA88B74();
    v36 = sub_1ABA8BCD4();
    sub_1ABAFF390(v36, v37, off_1E79600C8);
    swift_getObjCClassFromMetadata();
    sub_1ABA8BAF4();
    while ([sub_1ABA90FC8() initWithValue_])
    {
      sub_1ABA88C70();
      sub_1ABC6C3C4();
      sub_1ABA88D50();
      sub_1ABF24BA4();
      if (!--v35)
      {
        sub_1ABA9F1A0();
        goto LABEL_16;
      }
    }

    goto LABEL_73;
  }

LABEL_18:
  sub_1ABAB510C();
  v39 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    sub_1ABA8A3C0();
    sub_1ABA97FF8();
    while (1)
    {
      sub_1ABA8E96C();
      if (v40)
      {
        sub_1ABA8908C();
      }

      else
      {
        v41 = sub_1ABA8CB08();
        sub_1ABAFF390(v41, &qword_1EB4D5F08, off_1E7960048);
        v42 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        sub_1ABA96FC0();

        if (!sub_1ABAB65E0())
        {
          goto LABEL_79;
        }
      }

      v43 = v3[2];
      if (v43)
      {
        break;
      }

      v1 = v39;
LABEL_29:
      ++v5;
      v44 = objc_allocWithZone(GDGraphLocationRelationship);
      sub_1ABA8390C();
      sub_1ABC69D78();
      sub_1ABA9DE68();

      sub_1ABF24B94();
      sub_1ABAB67A0();
      sub_1ABA9E200();
      sub_1ABF24BA4();
      if (v5 == v6)
      {
        sub_1ABA9F0B8();
        goto LABEL_31;
      }
    }

    sub_1ABC6C458();
    sub_1ABA88B74();
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABA8BAF4();
    while ([sub_1ABA90FC8() initWithValue_])
    {
      sub_1ABA88C70();
      sub_1ABC6C3C4();
      sub_1ABA88D50();
      sub_1ABF24BA4();
      if (!--v43)
      {
        v1 = v85;
        v39 = MEMORY[0x1E69E7CC0];
        v6 = v83;
        goto LABEL_29;
      }
    }

LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

LABEL_31:
  sub_1ABAABCB8();
  if (v45)
  {
    v46 = 0;
  }

  else
  {
    v47 = v3[1];
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    v46 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_];
    if (!v46)
    {
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
      return;
    }
  }

  sub_1ABAA22EC();
  if ((v48 & 1) == 0)
  {
    v49 = v3[1];
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
    {
      goto LABEL_82;
    }
  }

  sub_1ABAA1F6C();
  if ((v51 & 1) == 0)
  {
    v52 = *(v50 + 8);
    sub_1ABAFF390(0, &qword_1EB4D5F50, off_1E795FF08);
    if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
    {
      goto LABEL_83;
    }
  }

  sub_1ABAB1118();
  if (v27)
  {
    v53 = 0;
  }

  else
  {
    v53 = sub_1ABC6C3F8();
  }

  sub_1ABA818CC();
  sub_1ABAFF390(0, &qword_1ED86B920, 0x1E696AD98);
  v54 = sub_1ABAA045C();
  v55 = sub_1ABA97B70(v54);
  sub_1ABA80B88(v55);
  if (v3)
  {
    v86 = v39;

    sub_1ABA9E6A8();
    sub_1ABA7F360();
    do
    {
      sub_1ABA9FEB0();
      sub_1ABAB54D0();
      v56 = sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20);
      v57 = sub_1ABA90834(v56);
      sub_1ABB2E9FC(v57, v58, &qword_1EB4D9BF0, &qword_1ABF34240);
      sub_1ABAA4E64();
      sub_1ABA9A498();
      sub_1ABA9754C();
      v59 = objc_allocWithZone(GDGraphDateRelationship);
      sub_1ABA9EFD8();

      sub_1ABA8E288();
      v60 = sub_1ABA9F354();
      sub_1ABC6AA68(v60);
      sub_1ABF24B94();
      sub_1ABA8B120();
      sub_1ABC6C3E0();
      sub_1ABF24BA4();
      sub_1ABAA1318();
    }

    while (!v27);
  }

  else
  {
  }

  sub_1ABAB56E0();
  v61 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABA9FFF0(MEMORY[0x1E69E7CC0]);
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABAB587C();
    while (1)
    {
      sub_1ABA8A95C();
      if (v62)
      {
        break;
      }

      if (![sub_1ABAA0CD0() initWithValue_])
      {
        goto LABEL_75;
      }

      sub_1ABA8B4D4();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
      if (v3 == v46)
      {
        v61 = v86;
        goto LABEL_53;
      }
    }

    __break(1u);
    goto LABEL_71;
  }

LABEL_53:
  sub_1ABAA2640(v61);
  v63 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABAA0318();
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABAB52F8();
    while (1)
    {
      sub_1ABA89C88();
      if (v62)
      {
        break;
      }

      if (![sub_1ABC6C410() initWithValue_])
      {
        goto LABEL_76;
      }

      sub_1ABA8B6AC();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
      if (v3 == v63)
      {
        v63 = v86;
        goto LABEL_59;
      }
    }

LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

LABEL_59:
  sub_1ABAA111C();
  v64 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABA8AF3C();
    sub_1ABAFF390(0, &qword_1EB4D5F50, off_1E795FF08);
    swift_getObjCClassFromMetadata();
    sub_1ABA88678();
    while (1)
    {
      sub_1ABA9F274();
      if (v62)
      {
        goto LABEL_72;
      }

      if (![sub_1ABAB0F94() initWithValue_])
      {
        goto LABEL_77;
      }

      sub_1ABAA0178();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
      if (v3 == v7)
      {
        v64 = v86;
        break;
      }
    }
  }

  sub_1ABA8282C();
  v65 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABA8A628();
    do
    {
      v66 = sub_1ABA95120();
      sub_1ABAAD268(v66);
      sub_1ABA9DFA0();
      sub_1ABAB6908();
      sub_1ABA9E0F4();
      sub_1ABF24BA4();
      v3 = (v3 - 1);
    }

    while (v3);
    v65 = v86;
  }

  sub_1ABA7AD30();
  v67 = MEMORY[0x1E69E7CC0];
  objc_allocWithZone(GDGraphVacationingActivityEvent);
  v68 = sub_1ABA8F488();
  sub_1ABC67F50(v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v84, v63, v64, v65, v67);
  sub_1ABA89A08();
  sub_1ABA8B438();
}

void __swiftcall CustomGraphGamingActivityEvent.toObjectiveCGraphObject()(GDGraphGamingActivityEvent *__return_ptr retstr)
{
  sub_1ABA8AAB0();
  type metadata accessor for CustomGraphDateRelationship(0);
  sub_1ABA8C0D0();
  v160 = v6;
  MEMORY[0x1EEE9AC00](v7);
  sub_1ABA8F4D8();
  v8 = sub_1ABAD219C(&qword_1EB4D9BF0, &qword_1ABF34240);
  v9 = sub_1ABA7AB80(v8);
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA7C068();
  v181 = v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v158 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v185 = &v158 - v15;
  v16 = sub_1ABAD219C(&qword_1EB4D5F20, &qword_1ABF4F358);
  sub_1ABA7AB80(v16);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v17);
  sub_1ABC6C7C0();
  sub_1ABAFF390(0, &qword_1EB4D5FD0, off_1E7960000);
  v18 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_];
  if (!v18)
  {
LABEL_105:
    __break(1u);
    goto LABEL_106;
  }

  v19 = v18;
  v20 = v2[2];
  v21 = v2[3];
  v22 = type metadata accessor for CustomGraphGamingActivityEvent(0);
  v23 = v22[6];
  v176 = v2;
  v24 = v2 + v23;
  v25 = *(sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00) + 28);
  v174 = v24;
  sub_1ABB2E9FC(v24 + v25, v1, &qword_1EB4D5F20, &qword_1ABF4F358);
  sub_1ABAA5898();
  v182 = v13;
  v175 = v22;
  v173 = v19;
  v172 = v21;
  v171 = v20;
  v179 = v4;
  v180 = v5;
  if (v26)
  {

    sub_1ABC6AAC4(v1, &qword_1EB4D5F20);
    v170 = 0;
  }

  else
  {
    sub_1ABA89DD8();
    sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20);
    sub_1ABA8C968();
    v28 = v185;
    sub_1ABA8B8D0(v4 + v27);
    v29 = sub_1ABAA3560();
    sub_1ABA9E550(v29, v182);
    v30 = sub_1ABAA3914();
    sub_1ABA9E550(v30, v181);
    sub_1ABA9F7CC();
    v13 = v182;
    v5 = v28;
    v22 = v175;
    objc_allocWithZone(GDGraphDateRelationship);

    sub_1ABA96094();
    v170 = sub_1ABC69E44(v31, v32, v33, v34, v35, v36);
    sub_1ABC6AA68(v1);
  }

  v37 = v176;
  v38 = (*(v176 + v22[7]))[2];
  v39 = MEMORY[0x1E69E7CC0];
  if (v38)
  {
    *&v188 = MEMORY[0x1E69E7CC0];
    sub_1ABF24BC4();
    sub_1ABAA0AA4();
    v177 = v38;
    v178 = v40;
    v41 = v38;
    while (1)
    {
      sub_1ABAA08D0();
      v43 = *(v42 + 32);
      v44 = *(v42 + 40);
      v45 = *(v42 + 56);
      v183 = v46;
      v184 = v43;
      if (v45)
      {
        sub_1ABC6C540();

        v5 = 0;
      }

      else
      {
        v47 = sub_1ABA8CB08();
        sub_1ABAFF390(v47, &qword_1EB4D5EF8, off_1E79600C8);
        v48 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        sub_1ABA9E830();

        v49 = sub_1ABA7C298();
        v5 = [v49 v50];
        if (!v5)
        {
          goto LABEL_102;
        }
      }

      v51 = *(v44 + 16);
      if (v51)
      {
        break;
      }

LABEL_16:
      ++v13;
      v55 = objc_allocWithZone(GDGraphAttendeeRelationship);
      sub_1ABA89794();
      sub_1ABC69D78();
      sub_1ABC6C688();

      sub_1ABF24B94();
      sub_1ABA9E334();
      sub_1ABA9E200();
      sub_1ABF24BA4();
      if (v13 == v41)
      {
        v39 = v188;
        v22 = v175;
        v37 = v176;
        goto LABEL_18;
      }
    }

    v187 = MEMORY[0x1E69E7CC0];

    sub_1ABF24BC4();
    sub_1ABAFF390(0, &qword_1EB4D5EF8, off_1E79600C8);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v53 = (v44 + 32);
    while (1)
    {
      v54 = *v53++;
      if (![objc_allocWithZone(ObjCClassFromMetadata) initWithValue_])
      {
        goto LABEL_96;
      }

      sub_1ABF24B94();
      sub_1ABF24BD4();
      sub_1ABF24BE4();
      sub_1ABF24BA4();
      if (!--v51)
      {
        v41 = v177;
        goto LABEL_16;
      }
    }
  }

LABEL_18:
  v56 = (*(v37 + v22[8]))[2];
  v57 = MEMORY[0x1E69E7CC0];
  v169 = v39;
  if (v56)
  {
    *&v188 = MEMORY[0x1E69E7CC0];
    sub_1ABF24BC4();
    sub_1ABAA0AA4();
    v177 = v56;
    v178 = v58;
    v59 = v57;
    v60 = v56;
    while (1)
    {
      sub_1ABAA08D0();
      v62 = *(v61 + 32);
      v63 = *(v61 + 40);
      v64 = *(v61 + 56);
      v183 = v65;
      v184 = v62;
      if (v64)
      {
        sub_1ABC6C540();

        v5 = 0;
      }

      else
      {
        v66 = sub_1ABAB5AC8();
        sub_1ABAFF390(v66, v67, off_1E7960048);
        v68 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        sub_1ABA9E830();

        v69 = sub_1ABA7C298();
        v5 = [v69 v70];
        if (!v5)
        {
          goto LABEL_103;
        }
      }

      v71 = *(v63 + 16);
      if (v71)
      {
        break;
      }

LABEL_29:
      ++v13;
      v77 = objc_allocWithZone(GDGraphLocationRelationship);
      sub_1ABAA3138();
      sub_1ABC69D78();
      sub_1ABC6C688();

      sub_1ABF24B94();
      sub_1ABA9E334();
      sub_1ABA9E200();
      sub_1ABF24BA4();
      if (v13 == v60)
      {
        v78 = v188;
        v22 = v175;
        v37 = v176;
        goto LABEL_32;
      }
    }

    v187 = v59;

    sub_1ABF24BC4();
    v72 = sub_1ABA8BCD4();
    sub_1ABAFF390(v72, v73, off_1E7960048);
    v74 = swift_getObjCClassFromMetadata();
    v75 = (v63 + 32);
    while (1)
    {
      v76 = *v75++;
      if (![objc_allocWithZone(v74) initWithValue_])
      {
        goto LABEL_97;
      }

      sub_1ABF24B94();
      sub_1ABF24BD4();
      sub_1ABF24BE4();
      sub_1ABF24BA4();
      if (!--v71)
      {
        v59 = MEMORY[0x1E69E7CC0];
        v60 = v177;
        goto LABEL_29;
      }
    }
  }

  v78 = MEMORY[0x1E69E7CC0];
LABEL_32:
  v79 = v37 + v22[9];
  if (*(v79 + 16))
  {
    v80 = 0;
  }

  else
  {
    v81 = *(v79 + 8);
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    v80 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_];
    if (!v80)
    {
LABEL_106:
      __break(1u);
      goto LABEL_107;
    }
  }

  v82 = v37 + v22[10];
  v83 = *(v82 + 16);
  v167 = v80;
  v177 = v82;
  v178 = v79;
  if (v83)
  {
    v84 = 0;
  }

  else
  {
    v85 = *(v82 + 8);
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    v84 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_];
    if (!v84)
    {
LABEL_107:
      __break(1u);
LABEL_108:
      __break(1u);
      return;
    }
  }

  v86 = (v37 + v22[11]);
  v87 = *(v86 + 16);
  v166 = v84;
  if ((v87 & 1) == 0)
  {
    v88 = v86[1];
    sub_1ABAFF390(0, &qword_1EB4D5F50, off_1E795FF08);
    if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
    {
      goto LABEL_108;
    }
  }

  sub_1ABA89F20();
  v165 = v78;
  v164 = v89;
  v168 = v90;
  v176 = v86;
  if (!v26)
  {
    LOBYTE(v188) = v79;
    v78 = &v188;
    sub_1ABACEB14();
  }

  sub_1ABA9F4DC();
  sub_1ABAFF390(0, &qword_1ED86B920, 0x1E696AD98);
  v91 = sub_1ABAA045C();
  v92 = v37 + v22[13];
  v93 = *(v92 + 8);
  v175 = v92;
  v162 = sub_1ABC5021C(v93, *(v92 + 16));
  v94 = v37 + v22[14];
  v95 = *(v94 + 24);
  v163 = v91;
  if (v95)
  {
    v96 = *(v94 + 40);
    v97 = *(v94 + 32);
    v188 = *(v94 + 8);
    v189 = v95;
    v190 = v97;
    v191 = v96 & 1;
    v78 = &v188;
    v161 = sub_1ABC64AB0(&qword_1EB4D5FD8, off_1E7960130, off_1E7960138);
  }

  else
  {
    v161 = 0;
  }

  sub_1ABA8C5A8();
  v174 = v98;
  if (v79)
  {
    v159 = v94;
    v187 = MEMORY[0x1E69E7CC0];

    sub_1ABF24BC4();
    sub_1ABA935AC();
    v100 = v91 + v99;
    v183 = *(v101 + 72);
    v102 = v181;
    do
    {
      v184 = v79;
      v103 = v179;
      sub_1ABC6AA04(v100, v179);
      v104 = v180;
      v105 = v103 + *(v180 + 5);
      v106 = sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20);
      v5 = &qword_1ABF34240;
      sub_1ABB2E9FC(v105 + *(v106 + 28), v185, &qword_1EB4D9BF0, &qword_1ABF34240);
      sub_1ABB2E9FC(v103 + *(v104 + 6) + *(v106 + 28), v182, &qword_1EB4D9BF0, &qword_1ABF34240);
      sub_1ABB2E9FC(v103 + *(v104 + 7) + *(v106 + 28), v102, &qword_1EB4D9BF0, &qword_1ABF34240);
      objc_allocWithZone(GDGraphDateRelationship);

      sub_1ABA9EAB4();
      sub_1ABC69E44(v107, v108, v109, v110, v111, v112);
      sub_1ABC6AA68(v103);
      v78 = &v187;
      sub_1ABF24B94();
      sub_1ABA9EBF4();
      v113 = v184;
      sub_1ABF24BE4();
      sub_1ABF24BA4();
      v100 += v183;
      v79 = (v113 - 1);
    }

    while (v79);
    v114 = v187;
    v94 = v159;
  }

  else
  {

    v114 = MEMORY[0x1E69E7CC0];
  }

  v115 = *(*v178 + 16);
  v116 = MEMORY[0x1E69E7CC0];
  if (v115)
  {
    v187 = MEMORY[0x1E69E7CC0];
    sub_1ABC6C694();
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    v117 = swift_getObjCClassFromMetadata();
    sub_1ABC6C4FC();
    while (1)
    {
      sub_1ABC6C508();
      if (v118)
      {
        break;
      }

      v119 = [objc_allocWithZone(v117) initWithValue_];
      if (!v119)
      {
        goto LABEL_99;
      }

      sub_1ABC6C6FC(v119);
      sub_1ABA9EBF4();
      sub_1ABA9E200();
      sub_1ABF24BA4();
      if (v115 == v5)
      {
        v116 = v187;
        goto LABEL_56;
      }
    }

    __break(1u);
    goto LABEL_94;
  }

LABEL_56:
  v120 = *(*v177 + 16);
  v121 = MEMORY[0x1E69E7CC0];
  v183 = v116;
  if (v120)
  {
    v187 = MEMORY[0x1E69E7CC0];
    sub_1ABC6C694();
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    v122 = swift_getObjCClassFromMetadata();
    sub_1ABC6C4FC();
    while (1)
    {
      sub_1ABC6C508();
      if (v118)
      {
        break;
      }

      v123 = [objc_allocWithZone(v122) initWithValue_];
      if (!v123)
      {
        goto LABEL_100;
      }

      sub_1ABC6C6FC(v123);
      sub_1ABA9EBF4();
      sub_1ABA9E200();
      sub_1ABF24BA4();
      if (v120 == v5)
      {
        v121 = v187;
        v116 = v183;
        goto LABEL_62;
      }
    }

LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
LABEL_101:
    __break(1u);
LABEL_102:
    __break(1u);
LABEL_103:
    __break(1u);
LABEL_104:
    __break(1u);
    goto LABEL_105;
  }

LABEL_62:
  v182 = v121;
  v124 = *v176;
  v125 = *(*v176 + 2);
  if (v125)
  {
    v187 = MEMORY[0x1E69E7CC0];
    sub_1ABC6C694();
    sub_1ABAFF390(0, &qword_1EB4D5F50, off_1E795FF08);
    v126 = swift_getObjCClassFromMetadata();
    sub_1ABC6C4FC();
    while (1)
    {
      sub_1ABC6C508();
      if (v118)
      {
        goto LABEL_95;
      }

      v127 = [objc_allocWithZone(v126) initWithValue_];
      if (!v127)
      {
        goto LABEL_101;
      }

      sub_1ABC6C6FC(v127);
      sub_1ABA9EBF4();
      sub_1ABA9E200();
      sub_1ABF24BA4();
      if (v125 == v5)
      {
        v181 = v187;
        v116 = v183;
        goto LABEL_69;
      }
    }
  }

  v181 = MEMORY[0x1E69E7CC0];
LABEL_69:
  sub_1ABA9F6D8();
  v129 = *v128;
  v130 = *(*v128 + 16);
  if (v130)
  {
    v187 = MEMORY[0x1E69E7CC0];
    sub_1ABC6C694();
    v124 = (v129 + 32);
    do
    {
      v131 = *v124++;
      [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
      v78 = &v187;
      sub_1ABF24B94();
      sub_1ABA9EBF4();
      sub_1ABA9E200();
      sub_1ABF24BA4();
      --v130;
    }

    while (v130);
    v180 = v187;
    v116 = v183;
  }

  else
  {
    v180 = MEMORY[0x1E69E7CC0];
  }

  v132 = *v175;
  v133 = *(*v175 + 16);
  v134 = MEMORY[0x1E69E7CC0];
  if (v133)
  {
    v187 = MEMORY[0x1E69E7CC0];
    sub_1ABC6C694();
    v124 = (v132 + 32);
    do
    {
      v124 += 8;
      sub_1ABAA0D98(objc_allocWithZone(MEMORY[0x1E696AD98]));
      v78 = &v187;
      sub_1ABF24B94();
      sub_1ABA9EBF4();
      sub_1ABA9E200();
      sub_1ABF24BA4();
      --v133;
    }

    while (v133);
    v134 = v187;
  }

  v135 = *(*v94 + 16);
  v136 = MEMORY[0x1E69E7CC0];
  if (v135)
  {
    v178 = v134;
    v179 = v114;
    v187 = MEMORY[0x1E69E7CC0];
    sub_1ABC6C694();
    sub_1ABAA0AA4();
    v184 = v135;
    v185 = v137;
    while (1)
    {
      sub_1ABC6C748();
      if (v139)
      {
      }

      else
      {
        v140 = *(v138 + 24);
        sub_1ABAFF390(0, &qword_1EB4D5FD8, off_1E7960130);
        v141 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        sub_1ABA94A78();

        if (![v78 initWithValue_])
        {
          goto LABEL_104;
        }
      }

      v142 = *(v116 + 16);
      if (v142)
      {
        break;
      }

      v147 = v136;
LABEL_89:
      ++v124;
      v148 = objc_allocWithZone(GDGraphSoftwareRelationship);
      v149 = sub_1ABC6C5D4();
      sub_1ABC69D04(v149, v147, &qword_1EB4D5FD8, off_1E7960130);
      sub_1ABC6C59C();

      v78 = &v187;
      sub_1ABF24B94();
      sub_1ABA9EBF4();
      sub_1ABA9E200();
      sub_1ABF24BA4();
      if (v124 == v135)
      {
        v136 = v187;
        v150 = v163;
        v134 = v178;
        v114 = v179;
        v116 = v183;
        goto LABEL_92;
      }
    }

    v143 = v136;
    v186 = v136;
    sub_1ABF24BC4();
    sub_1ABAFF390(0, &qword_1EB4D5FD8, off_1E7960130);
    v144 = swift_getObjCClassFromMetadata();
    v145 = (v116 + 32);
    while (1)
    {
      v146 = *v145++;
      if (![objc_allocWithZone(v144) initWithValue_])
      {
        goto LABEL_98;
      }

      sub_1ABF24B94();
      sub_1ABF24BD4();
      sub_1ABF24BE4();
      sub_1ABF24BA4();
      if (!--v142)
      {
        v147 = v186;
        v136 = v143;
        v135 = v184;
        goto LABEL_89;
      }
    }
  }

  v150 = v163;
LABEL_92:
  objc_allocWithZone(GDGraphGamingActivityEvent);
  v157 = v180;
  v156 = v181;
  v155 = v182;
  v154 = v174;
  v153 = v161;
  v152 = v162;
  sub_1ABA8A1D4();
  sub_1ABC68240(v173, v171, v172, v170, v169, v165, v167, v166, v151, v150, v152, v153, v154, v114, v116, v155, v156, v157, v134, v136);
  sub_1ABA8B438();
}

void __swiftcall CustomGraphSocializingActivityEvent.toObjectiveCGraphObject()(GDGraphSocializingActivityEvent *__return_ptr retstr)
{
  sub_1ABA8AAB0();
  sub_1ABAA9198();
  sub_1ABA8C0D0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1ABA8F4D8();
  v9 = sub_1ABAD219C(&qword_1EB4D9BF0, &qword_1ABF34240);
  v10 = sub_1ABA7AB80(v9);
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABA7E77C(v11, v81);
  MEMORY[0x1EEE9AC00](v12);
  sub_1ABA99440(v13, v14, v15, v16, v17, v18, v19, v20, v82);
  MEMORY[0x1EEE9AC00](v21);
  sub_1ABA954CC();
  v22 = sub_1ABAD219C(&qword_1EB4D5F20, &qword_1ABF4F358);
  sub_1ABA7AB80(v22);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v23);
  sub_1ABA9587C();
  sub_1ABAFF390(0, &qword_1EB4D5FE8, off_1E7960120);
  if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
  {
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  v24 = sub_1ABA90CF4();
  v25 = type metadata accessor for CustomGraphSocializingActivityEvent(v24);
  sub_1ABAA0EE8(v25);
  v26 = sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
  sub_1ABA8B2C0(&qword_1EB4D5F20, &qword_1ABF4F358, *(v26 + 28));
  sub_1ABAA5898();
  if (v27)
  {

    sub_1ABC6AAC4(v1, &qword_1EB4D5F20);
  }

  else
  {
    sub_1ABA89DD8();
    sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20);
    sub_1ABA8C968();
    v3 = &qword_1EB4D9BF0;
    v6 = v4;
    sub_1ABC6C36C(v28);
    sub_1ABAA45A8();
    sub_1ABA84188();
    sub_1ABAA295C();
    v29 = objc_allocWithZone(GDGraphDateRelationship);
    sub_1ABA89B58();

    v30 = sub_1ABAA40C4();
    sub_1ABC6C440(v30);
  }

  sub_1ABA969FC();
  if (v6)
  {
    sub_1ABA9FC20();
    sub_1ABA97FF8();
    while (1)
    {
      sub_1ABA8E96C();
      if (v31)
      {
        sub_1ABA8908C();
      }

      else
      {
        v32 = sub_1ABAB5AC8();
        sub_1ABAFF390(v32, v33, off_1E79600C8);
        v34 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        sub_1ABA96FC0();

        if (!sub_1ABAB65E0())
        {
          goto LABEL_78;
        }
      }

      v35 = v3[2];
      if (v35)
      {
        break;
      }

      v1 = MEMORY[0x1E69E7CC0];
LABEL_16:
      ++v5;
      v38 = objc_allocWithZone(GDGraphAttendeeRelationship);
      sub_1ABA9358C();
      sub_1ABC69D78();
      sub_1ABA9DE68();

      sub_1ABF24B94();
      sub_1ABAB67A0();
      sub_1ABA9E200();
      sub_1ABF24BA4();
      if (v5 == v6)
      {
        sub_1ABA9EFE4();
        goto LABEL_18;
      }
    }

    sub_1ABC6C428(MEMORY[0x1E69E7CC0]);
    sub_1ABA88B74();
    v36 = sub_1ABA8BCD4();
    sub_1ABAFF390(v36, v37, off_1E79600C8);
    swift_getObjCClassFromMetadata();
    sub_1ABA8BAF4();
    while ([sub_1ABA90FC8() initWithValue_])
    {
      sub_1ABA88C70();
      sub_1ABC6C3C4();
      sub_1ABA88D50();
      sub_1ABF24BA4();
      if (!--v35)
      {
        sub_1ABA9F1A0();
        goto LABEL_16;
      }
    }

    goto LABEL_73;
  }

LABEL_18:
  sub_1ABAB510C();
  v39 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    sub_1ABA8A3C0();
    sub_1ABA97FF8();
    while (1)
    {
      sub_1ABA8E96C();
      if (v40)
      {
        sub_1ABA8908C();
      }

      else
      {
        v41 = sub_1ABA8CB08();
        sub_1ABAFF390(v41, &qword_1EB4D5F08, off_1E7960048);
        v42 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        sub_1ABA96FC0();

        if (!sub_1ABAB65E0())
        {
          goto LABEL_79;
        }
      }

      v43 = v3[2];
      if (v43)
      {
        break;
      }

      v1 = v39;
LABEL_29:
      ++v5;
      v44 = objc_allocWithZone(GDGraphLocationRelationship);
      sub_1ABA8390C();
      sub_1ABC69D78();
      sub_1ABA9DE68();

      sub_1ABF24B94();
      sub_1ABAB67A0();
      sub_1ABA9E200();
      sub_1ABF24BA4();
      if (v5 == v6)
      {
        sub_1ABA9F0B8();
        goto LABEL_31;
      }
    }

    sub_1ABC6C458();
    sub_1ABA88B74();
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABA8BAF4();
    while ([sub_1ABA90FC8() initWithValue_])
    {
      sub_1ABA88C70();
      sub_1ABC6C3C4();
      sub_1ABA88D50();
      sub_1ABF24BA4();
      if (!--v43)
      {
        v1 = v85;
        v39 = MEMORY[0x1E69E7CC0];
        v6 = v83;
        goto LABEL_29;
      }
    }

LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

LABEL_31:
  sub_1ABAABCB8();
  if (v45)
  {
    v46 = 0;
  }

  else
  {
    v47 = v3[1];
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    v46 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_];
    if (!v46)
    {
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
      return;
    }
  }

  sub_1ABAA22EC();
  if ((v48 & 1) == 0)
  {
    v49 = v3[1];
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
    {
      goto LABEL_82;
    }
  }

  sub_1ABAA1F6C();
  if ((v51 & 1) == 0)
  {
    v52 = *(v50 + 8);
    sub_1ABAFF390(0, &qword_1EB4D5F50, off_1E795FF08);
    if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
    {
      goto LABEL_83;
    }
  }

  sub_1ABAB1118();
  if (v27)
  {
    v53 = 0;
  }

  else
  {
    v53 = sub_1ABC6C3F8();
  }

  sub_1ABA818CC();
  sub_1ABAFF390(0, &qword_1ED86B920, 0x1E696AD98);
  v54 = sub_1ABAA045C();
  v55 = sub_1ABA97B70(v54);
  sub_1ABA80B88(v55);
  if (v3)
  {
    v86 = v39;

    sub_1ABA9E6A8();
    sub_1ABA7F360();
    do
    {
      sub_1ABA9FEB0();
      sub_1ABAB54D0();
      v56 = sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20);
      v57 = sub_1ABA90834(v56);
      sub_1ABB2E9FC(v57, v58, &qword_1EB4D9BF0, &qword_1ABF34240);
      sub_1ABAA4E64();
      sub_1ABA9A498();
      sub_1ABA9754C();
      v59 = objc_allocWithZone(GDGraphDateRelationship);
      sub_1ABA9EFD8();

      sub_1ABA8E288();
      v60 = sub_1ABA9F354();
      sub_1ABC6AA68(v60);
      sub_1ABF24B94();
      sub_1ABA8B120();
      sub_1ABC6C3E0();
      sub_1ABF24BA4();
      sub_1ABAA1318();
    }

    while (!v27);
  }

  else
  {
  }

  sub_1ABAB56E0();
  v61 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABA9FFF0(MEMORY[0x1E69E7CC0]);
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABAB587C();
    while (1)
    {
      sub_1ABA8A95C();
      if (v62)
      {
        break;
      }

      if (![sub_1ABAA0CD0() initWithValue_])
      {
        goto LABEL_75;
      }

      sub_1ABA8B4D4();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
      if (v3 == v46)
      {
        v61 = v86;
        goto LABEL_53;
      }
    }

    __break(1u);
    goto LABEL_71;
  }

LABEL_53:
  sub_1ABAA2640(v61);
  v63 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABAA0318();
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABAB52F8();
    while (1)
    {
      sub_1ABA89C88();
      if (v62)
      {
        break;
      }

      if (![sub_1ABC6C410() initWithValue_])
      {
        goto LABEL_76;
      }

      sub_1ABA8B6AC();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
      if (v3 == v63)
      {
        v63 = v86;
        goto LABEL_59;
      }
    }

LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

LABEL_59:
  sub_1ABAA111C();
  v64 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABA8AF3C();
    sub_1ABAFF390(0, &qword_1EB4D5F50, off_1E795FF08);
    swift_getObjCClassFromMetadata();
    sub_1ABA88678();
    while (1)
    {
      sub_1ABA9F274();
      if (v62)
      {
        goto LABEL_72;
      }

      if (![sub_1ABAB0F94() initWithValue_])
      {
        goto LABEL_77;
      }

      sub_1ABAA0178();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
      if (v3 == v7)
      {
        v64 = v86;
        break;
      }
    }
  }

  sub_1ABA8282C();
  v65 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABA8A628();
    do
    {
      v66 = sub_1ABA95120();
      sub_1ABAAD268(v66);
      sub_1ABA9DFA0();
      sub_1ABAB6908();
      sub_1ABA9E0F4();
      sub_1ABF24BA4();
      v3 = (v3 - 1);
    }

    while (v3);
    v65 = v86;
  }

  sub_1ABA7AD30();
  v67 = MEMORY[0x1E69E7CC0];
  objc_allocWithZone(GDGraphSocializingActivityEvent);
  v68 = sub_1ABA8F488();
  sub_1ABC67F50(v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v84, v63, v64, v65, v67);
  sub_1ABA89A08();
  sub_1ABA8B438();
}

void __swiftcall CustomGraphWakingUpActivityEvent.toObjectiveCGraphObject()(GDGraphWakingUpActivityEvent *__return_ptr retstr)
{
  sub_1ABA8AAB0();
  sub_1ABAA9198();
  sub_1ABA8C0D0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1ABA8F4D8();
  v9 = sub_1ABAD219C(&qword_1EB4D9BF0, &qword_1ABF34240);
  v10 = sub_1ABA7AB80(v9);
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABA7E77C(v11, v81);
  MEMORY[0x1EEE9AC00](v12);
  sub_1ABA99440(v13, v14, v15, v16, v17, v18, v19, v20, v82);
  MEMORY[0x1EEE9AC00](v21);
  sub_1ABA954CC();
  v22 = sub_1ABAD219C(&qword_1EB4D5F20, &qword_1ABF4F358);
  sub_1ABA7AB80(v22);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v23);
  sub_1ABA9587C();
  sub_1ABAFF390(0, &qword_1EB4D5FF0, off_1E79601F0);
  if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
  {
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  v24 = sub_1ABA90CF4();
  v25 = type metadata accessor for CustomGraphWakingUpActivityEvent(v24);
  sub_1ABAA0EE8(v25);
  v26 = sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
  sub_1ABA8B2C0(&qword_1EB4D5F20, &qword_1ABF4F358, *(v26 + 28));
  sub_1ABAA5898();
  if (v27)
  {

    sub_1ABC6AAC4(v1, &qword_1EB4D5F20);
  }

  else
  {
    sub_1ABA89DD8();
    sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20);
    sub_1ABA8C968();
    v3 = &qword_1EB4D9BF0;
    v6 = v4;
    sub_1ABC6C36C(v28);
    sub_1ABAA45A8();
    sub_1ABA84188();
    sub_1ABAA295C();
    v29 = objc_allocWithZone(GDGraphDateRelationship);
    sub_1ABA89B58();

    v30 = sub_1ABAA40C4();
    sub_1ABC6C440(v30);
  }

  sub_1ABA969FC();
  if (v6)
  {
    sub_1ABA9FC20();
    sub_1ABA97FF8();
    while (1)
    {
      sub_1ABA8E96C();
      if (v31)
      {
        sub_1ABA8908C();
      }

      else
      {
        v32 = sub_1ABAB5AC8();
        sub_1ABAFF390(v32, v33, off_1E79600C8);
        v34 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        sub_1ABA96FC0();

        if (!sub_1ABAB65E0())
        {
          goto LABEL_78;
        }
      }

      v35 = v3[2];
      if (v35)
      {
        break;
      }

      v1 = MEMORY[0x1E69E7CC0];
LABEL_16:
      ++v5;
      v38 = objc_allocWithZone(GDGraphAttendeeRelationship);
      sub_1ABA9358C();
      sub_1ABC69D78();
      sub_1ABA9DE68();

      sub_1ABF24B94();
      sub_1ABAB67A0();
      sub_1ABA9E200();
      sub_1ABF24BA4();
      if (v5 == v6)
      {
        sub_1ABA9EFE4();
        goto LABEL_18;
      }
    }

    sub_1ABC6C428(MEMORY[0x1E69E7CC0]);
    sub_1ABA88B74();
    v36 = sub_1ABA8BCD4();
    sub_1ABAFF390(v36, v37, off_1E79600C8);
    swift_getObjCClassFromMetadata();
    sub_1ABA8BAF4();
    while ([sub_1ABA90FC8() initWithValue_])
    {
      sub_1ABA88C70();
      sub_1ABC6C3C4();
      sub_1ABA88D50();
      sub_1ABF24BA4();
      if (!--v35)
      {
        sub_1ABA9F1A0();
        goto LABEL_16;
      }
    }

    goto LABEL_73;
  }

LABEL_18:
  sub_1ABAB510C();
  v39 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    sub_1ABA8A3C0();
    sub_1ABA97FF8();
    while (1)
    {
      sub_1ABA8E96C();
      if (v40)
      {
        sub_1ABA8908C();
      }

      else
      {
        v41 = sub_1ABA8CB08();
        sub_1ABAFF390(v41, &qword_1EB4D5F08, off_1E7960048);
        v42 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        sub_1ABA96FC0();

        if (!sub_1ABAB65E0())
        {
          goto LABEL_79;
        }
      }

      v43 = v3[2];
      if (v43)
      {
        break;
      }

      v1 = v39;
LABEL_29:
      ++v5;
      v44 = objc_allocWithZone(GDGraphLocationRelationship);
      sub_1ABA8390C();
      sub_1ABC69D78();
      sub_1ABA9DE68();

      sub_1ABF24B94();
      sub_1ABAB67A0();
      sub_1ABA9E200();
      sub_1ABF24BA4();
      if (v5 == v6)
      {
        sub_1ABA9F0B8();
        goto LABEL_31;
      }
    }

    sub_1ABC6C458();
    sub_1ABA88B74();
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABA8BAF4();
    while ([sub_1ABA90FC8() initWithValue_])
    {
      sub_1ABA88C70();
      sub_1ABC6C3C4();
      sub_1ABA88D50();
      sub_1ABF24BA4();
      if (!--v43)
      {
        v1 = v85;
        v39 = MEMORY[0x1E69E7CC0];
        v6 = v83;
        goto LABEL_29;
      }
    }

LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

LABEL_31:
  sub_1ABAABCB8();
  if (v45)
  {
    v46 = 0;
  }

  else
  {
    v47 = v3[1];
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    v46 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_];
    if (!v46)
    {
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
      return;
    }
  }

  sub_1ABAA22EC();
  if ((v48 & 1) == 0)
  {
    v49 = v3[1];
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
    {
      goto LABEL_82;
    }
  }

  sub_1ABAA1F6C();
  if ((v51 & 1) == 0)
  {
    v52 = *(v50 + 8);
    sub_1ABAFF390(0, &qword_1EB4D5F50, off_1E795FF08);
    if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
    {
      goto LABEL_83;
    }
  }

  sub_1ABAB1118();
  if (v27)
  {
    v53 = 0;
  }

  else
  {
    v53 = sub_1ABC6C3F8();
  }

  sub_1ABA818CC();
  sub_1ABAFF390(0, &qword_1ED86B920, 0x1E696AD98);
  v54 = sub_1ABAA045C();
  v55 = sub_1ABA97B70(v54);
  sub_1ABA80B88(v55);
  if (v3)
  {
    v86 = v39;

    sub_1ABA9E6A8();
    sub_1ABA7F360();
    do
    {
      sub_1ABA9FEB0();
      sub_1ABAB54D0();
      v56 = sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20);
      v57 = sub_1ABA90834(v56);
      sub_1ABB2E9FC(v57, v58, &qword_1EB4D9BF0, &qword_1ABF34240);
      sub_1ABAA4E64();
      sub_1ABA9A498();
      sub_1ABA9754C();
      v59 = objc_allocWithZone(GDGraphDateRelationship);
      sub_1ABA9EFD8();

      sub_1ABA8E288();
      v60 = sub_1ABA9F354();
      sub_1ABC6AA68(v60);
      sub_1ABF24B94();
      sub_1ABA8B120();
      sub_1ABC6C3E0();
      sub_1ABF24BA4();
      sub_1ABAA1318();
    }

    while (!v27);
  }

  else
  {
  }

  sub_1ABAB56E0();
  v61 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABA9FFF0(MEMORY[0x1E69E7CC0]);
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABAB587C();
    while (1)
    {
      sub_1ABA8A95C();
      if (v62)
      {
        break;
      }

      if (![sub_1ABAA0CD0() initWithValue_])
      {
        goto LABEL_75;
      }

      sub_1ABA8B4D4();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
      if (v3 == v46)
      {
        v61 = v86;
        goto LABEL_53;
      }
    }

    __break(1u);
    goto LABEL_71;
  }

LABEL_53:
  sub_1ABAA2640(v61);
  v63 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABAA0318();
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABAB52F8();
    while (1)
    {
      sub_1ABA89C88();
      if (v62)
      {
        break;
      }

      if (![sub_1ABC6C410() initWithValue_])
      {
        goto LABEL_76;
      }

      sub_1ABA8B6AC();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
      if (v3 == v63)
      {
        v63 = v86;
        goto LABEL_59;
      }
    }

LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

LABEL_59:
  sub_1ABAA111C();
  v64 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABA8AF3C();
    sub_1ABAFF390(0, &qword_1EB4D5F50, off_1E795FF08);
    swift_getObjCClassFromMetadata();
    sub_1ABA88678();
    while (1)
    {
      sub_1ABA9F274();
      if (v62)
      {
        goto LABEL_72;
      }

      if (![sub_1ABAB0F94() initWithValue_])
      {
        goto LABEL_77;
      }

      sub_1ABAA0178();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
      if (v3 == v7)
      {
        v64 = v86;
        break;
      }
    }
  }

  sub_1ABA8282C();
  v65 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABA8A628();
    do
    {
      v66 = sub_1ABA95120();
      sub_1ABAAD268(v66);
      sub_1ABA9DFA0();
      sub_1ABAB6908();
      sub_1ABA9E0F4();
      sub_1ABF24BA4();
      v3 = (v3 - 1);
    }

    while (v3);
    v65 = v86;
  }

  sub_1ABA7AD30();
  v67 = MEMORY[0x1E69E7CC0];
  objc_allocWithZone(GDGraphWakingUpActivityEvent);
  v68 = sub_1ABA8F488();
  sub_1ABC67F50(v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v84, v63, v64, v65, v67);
  sub_1ABA89A08();
  sub_1ABA8B438();
}

void __swiftcall CustomGraphGoingToBedActivityEvent.toObjectiveCGraphObject()(GDGraphGoingToBedActivityEvent *__return_ptr retstr)
{
  sub_1ABA8AAB0();
  sub_1ABAA9198();
  sub_1ABA8C0D0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1ABA8F4D8();
  v9 = sub_1ABAD219C(&qword_1EB4D9BF0, &qword_1ABF34240);
  v10 = sub_1ABA7AB80(v9);
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABA7E77C(v11, v81);
  MEMORY[0x1EEE9AC00](v12);
  sub_1ABA99440(v13, v14, v15, v16, v17, v18, v19, v20, v82);
  MEMORY[0x1EEE9AC00](v21);
  sub_1ABA954CC();
  v22 = sub_1ABAD219C(&qword_1EB4D5F20, &qword_1ABF4F358);
  sub_1ABA7AB80(v22);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v23);
  sub_1ABA9587C();
  sub_1ABAFF390(0, &qword_1EB4D5FF8, off_1E7960010);
  if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
  {
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  v24 = sub_1ABA90CF4();
  v25 = type metadata accessor for CustomGraphGoingToBedActivityEvent(v24);
  sub_1ABAA0EE8(v25);
  v26 = sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
  sub_1ABA8B2C0(&qword_1EB4D5F20, &qword_1ABF4F358, *(v26 + 28));
  sub_1ABAA5898();
  if (v27)
  {

    sub_1ABC6AAC4(v1, &qword_1EB4D5F20);
  }

  else
  {
    sub_1ABA89DD8();
    sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20);
    sub_1ABA8C968();
    v3 = &qword_1EB4D9BF0;
    v6 = v4;
    sub_1ABC6C36C(v28);
    sub_1ABAA45A8();
    sub_1ABA84188();
    sub_1ABAA295C();
    v29 = objc_allocWithZone(GDGraphDateRelationship);
    sub_1ABA89B58();

    v30 = sub_1ABAA40C4();
    sub_1ABC6C440(v30);
  }

  sub_1ABA969FC();
  if (v6)
  {
    sub_1ABA9FC20();
    sub_1ABA97FF8();
    while (1)
    {
      sub_1ABA8E96C();
      if (v31)
      {
        sub_1ABA8908C();
      }

      else
      {
        v32 = sub_1ABAB5AC8();
        sub_1ABAFF390(v32, v33, off_1E79600C8);
        v34 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        sub_1ABA96FC0();

        if (!sub_1ABAB65E0())
        {
          goto LABEL_78;
        }
      }

      v35 = v3[2];
      if (v35)
      {
        break;
      }

      v1 = MEMORY[0x1E69E7CC0];
LABEL_16:
      ++v5;
      v38 = objc_allocWithZone(GDGraphAttendeeRelationship);
      sub_1ABA9358C();
      sub_1ABC69D78();
      sub_1ABA9DE68();

      sub_1ABF24B94();
      sub_1ABAB67A0();
      sub_1ABA9E200();
      sub_1ABF24BA4();
      if (v5 == v6)
      {
        sub_1ABA9EFE4();
        goto LABEL_18;
      }
    }

    sub_1ABC6C428(MEMORY[0x1E69E7CC0]);
    sub_1ABA88B74();
    v36 = sub_1ABA8BCD4();
    sub_1ABAFF390(v36, v37, off_1E79600C8);
    swift_getObjCClassFromMetadata();
    sub_1ABA8BAF4();
    while ([sub_1ABA90FC8() initWithValue_])
    {
      sub_1ABA88C70();
      sub_1ABC6C3C4();
      sub_1ABA88D50();
      sub_1ABF24BA4();
      if (!--v35)
      {
        sub_1ABA9F1A0();
        goto LABEL_16;
      }
    }

    goto LABEL_73;
  }

LABEL_18:
  sub_1ABAB510C();
  v39 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    sub_1ABA8A3C0();
    sub_1ABA97FF8();
    while (1)
    {
      sub_1ABA8E96C();
      if (v40)
      {
        sub_1ABA8908C();
      }

      else
      {
        v41 = sub_1ABA8CB08();
        sub_1ABAFF390(v41, &qword_1EB4D5F08, off_1E7960048);
        v42 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        sub_1ABA96FC0();

        if (!sub_1ABAB65E0())
        {
          goto LABEL_79;
        }
      }

      v43 = v3[2];
      if (v43)
      {
        break;
      }

      v1 = v39;
LABEL_29:
      ++v5;
      v44 = objc_allocWithZone(GDGraphLocationRelationship);
      sub_1ABA8390C();
      sub_1ABC69D78();
      sub_1ABA9DE68();

      sub_1ABF24B94();
      sub_1ABAB67A0();
      sub_1ABA9E200();
      sub_1ABF24BA4();
      if (v5 == v6)
      {
        sub_1ABA9F0B8();
        goto LABEL_31;
      }
    }

    sub_1ABC6C458();
    sub_1ABA88B74();
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABA8BAF4();
    while ([sub_1ABA90FC8() initWithValue_])
    {
      sub_1ABA88C70();
      sub_1ABC6C3C4();
      sub_1ABA88D50();
      sub_1ABF24BA4();
      if (!--v43)
      {
        v1 = v85;
        v39 = MEMORY[0x1E69E7CC0];
        v6 = v83;
        goto LABEL_29;
      }
    }

LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

LABEL_31:
  sub_1ABAABCB8();
  if (v45)
  {
    v46 = 0;
  }

  else
  {
    v47 = v3[1];
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    v46 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_];
    if (!v46)
    {
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
      return;
    }
  }

  sub_1ABAA22EC();
  if ((v48 & 1) == 0)
  {
    v49 = v3[1];
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
    {
      goto LABEL_82;
    }
  }

  sub_1ABAA1F6C();
  if ((v51 & 1) == 0)
  {
    v52 = *(v50 + 8);
    sub_1ABAFF390(0, &qword_1EB4D5F50, off_1E795FF08);
    if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
    {
      goto LABEL_83;
    }
  }

  sub_1ABAB1118();
  if (v27)
  {
    v53 = 0;
  }

  else
  {
    v53 = sub_1ABC6C3F8();
  }

  sub_1ABA818CC();
  sub_1ABAFF390(0, &qword_1ED86B920, 0x1E696AD98);
  v54 = sub_1ABAA045C();
  v55 = sub_1ABA97B70(v54);
  sub_1ABA80B88(v55);
  if (v3)
  {
    v86 = v39;

    sub_1ABA9E6A8();
    sub_1ABA7F360();
    do
    {
      sub_1ABA9FEB0();
      sub_1ABAB54D0();
      v56 = sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20);
      v57 = sub_1ABA90834(v56);
      sub_1ABB2E9FC(v57, v58, &qword_1EB4D9BF0, &qword_1ABF34240);
      sub_1ABAA4E64();
      sub_1ABA9A498();
      sub_1ABA9754C();
      v59 = objc_allocWithZone(GDGraphDateRelationship);
      sub_1ABA9EFD8();

      sub_1ABA8E288();
      v60 = sub_1ABA9F354();
      sub_1ABC6AA68(v60);
      sub_1ABF24B94();
      sub_1ABA8B120();
      sub_1ABC6C3E0();
      sub_1ABF24BA4();
      sub_1ABAA1318();
    }

    while (!v27);
  }

  else
  {
  }

  sub_1ABAB56E0();
  v61 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABA9FFF0(MEMORY[0x1E69E7CC0]);
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABAB587C();
    while (1)
    {
      sub_1ABA8A95C();
      if (v62)
      {
        break;
      }

      if (![sub_1ABAA0CD0() initWithValue_])
      {
        goto LABEL_75;
      }

      sub_1ABA8B4D4();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
      if (v3 == v46)
      {
        v61 = v86;
        goto LABEL_53;
      }
    }

    __break(1u);
    goto LABEL_71;
  }

LABEL_53:
  sub_1ABAA2640(v61);
  v63 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABAA0318();
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABAB52F8();
    while (1)
    {
      sub_1ABA89C88();
      if (v62)
      {
        break;
      }

      if (![sub_1ABC6C410() initWithValue_])
      {
        goto LABEL_76;
      }

      sub_1ABA8B6AC();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
      if (v3 == v63)
      {
        v63 = v86;
        goto LABEL_59;
      }
    }

LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

LABEL_59:
  sub_1ABAA111C();
  v64 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABA8AF3C();
    sub_1ABAFF390(0, &qword_1EB4D5F50, off_1E795FF08);
    swift_getObjCClassFromMetadata();
    sub_1ABA88678();
    while (1)
    {
      sub_1ABA9F274();
      if (v62)
      {
        goto LABEL_72;
      }

      if (![sub_1ABAB0F94() initWithValue_])
      {
        goto LABEL_77;
      }

      sub_1ABAA0178();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
      if (v3 == v7)
      {
        v64 = v86;
        break;
      }
    }
  }

  sub_1ABA8282C();
  v65 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABA8A628();
    do
    {
      v66 = sub_1ABA95120();
      sub_1ABAAD268(v66);
      sub_1ABA9DFA0();
      sub_1ABAB6908();
      sub_1ABA9E0F4();
      sub_1ABF24BA4();
      v3 = (v3 - 1);
    }

    while (v3);
    v65 = v86;
  }

  sub_1ABA7AD30();
  v67 = MEMORY[0x1E69E7CC0];
  objc_allocWithZone(GDGraphGoingToBedActivityEvent);
  v68 = sub_1ABA8F488();
  sub_1ABC67F50(v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v84, v63, v64, v65, v67);
  sub_1ABA89A08();
  sub_1ABA8B438();
}

void __swiftcall CustomGraphExercisingActivityEvent.toObjectiveCGraphObject()(GDGraphExercisingActivityEvent *__return_ptr retstr)
{
  sub_1ABA8AAB0();
  sub_1ABAA9198();
  sub_1ABA8C0D0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1ABA8F4D8();
  v9 = sub_1ABAD219C(&qword_1EB4D9BF0, &qword_1ABF34240);
  v10 = sub_1ABA7AB80(v9);
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABA7E77C(v11, v81);
  MEMORY[0x1EEE9AC00](v12);
  sub_1ABA99440(v13, v14, v15, v16, v17, v18, v19, v20, v82);
  MEMORY[0x1EEE9AC00](v21);
  sub_1ABA954CC();
  v22 = sub_1ABAD219C(&qword_1EB4D5F20, &qword_1ABF4F358);
  sub_1ABA7AB80(v22);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v23);
  sub_1ABA9587C();
  sub_1ABAFF390(0, &qword_1EB4D6000, off_1E795FFE0);
  if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
  {
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  v24 = sub_1ABA90CF4();
  v25 = type metadata accessor for CustomGraphExercisingActivityEvent(v24);
  sub_1ABAA0EE8(v25);
  v26 = sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
  sub_1ABA8B2C0(&qword_1EB4D5F20, &qword_1ABF4F358, *(v26 + 28));
  sub_1ABAA5898();
  if (v27)
  {

    sub_1ABC6AAC4(v1, &qword_1EB4D5F20);
  }

  else
  {
    sub_1ABA89DD8();
    sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20);
    sub_1ABA8C968();
    v3 = &qword_1EB4D9BF0;
    v6 = v4;
    sub_1ABC6C36C(v28);
    sub_1ABAA45A8();
    sub_1ABA84188();
    sub_1ABAA295C();
    v29 = objc_allocWithZone(GDGraphDateRelationship);
    sub_1ABA89B58();

    v30 = sub_1ABAA40C4();
    sub_1ABC6C440(v30);
  }

  sub_1ABA969FC();
  if (v6)
  {
    sub_1ABA9FC20();
    sub_1ABA97FF8();
    while (1)
    {
      sub_1ABA8E96C();
      if (v31)
      {
        sub_1ABA8908C();
      }

      else
      {
        v32 = sub_1ABAB5AC8();
        sub_1ABAFF390(v32, v33, off_1E79600C8);
        v34 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        sub_1ABA96FC0();

        if (!sub_1ABAB65E0())
        {
          goto LABEL_78;
        }
      }

      v35 = v3[2];
      if (v35)
      {
        break;
      }

      v1 = MEMORY[0x1E69E7CC0];
LABEL_16:
      ++v5;
      v38 = objc_allocWithZone(GDGraphAttendeeRelationship);
      sub_1ABA9358C();
      sub_1ABC69D78();
      sub_1ABA9DE68();

      sub_1ABF24B94();
      sub_1ABAB67A0();
      sub_1ABA9E200();
      sub_1ABF24BA4();
      if (v5 == v6)
      {
        sub_1ABA9EFE4();
        goto LABEL_18;
      }
    }

    sub_1ABC6C428(MEMORY[0x1E69E7CC0]);
    sub_1ABA88B74();
    v36 = sub_1ABA8BCD4();
    sub_1ABAFF390(v36, v37, off_1E79600C8);
    swift_getObjCClassFromMetadata();
    sub_1ABA8BAF4();
    while ([sub_1ABA90FC8() initWithValue_])
    {
      sub_1ABA88C70();
      sub_1ABC6C3C4();
      sub_1ABA88D50();
      sub_1ABF24BA4();
      if (!--v35)
      {
        sub_1ABA9F1A0();
        goto LABEL_16;
      }
    }

    goto LABEL_73;
  }

LABEL_18:
  sub_1ABAB510C();
  v39 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    sub_1ABA8A3C0();
    sub_1ABA97FF8();
    while (1)
    {
      sub_1ABA8E96C();
      if (v40)
      {
        sub_1ABA8908C();
      }

      else
      {
        v41 = sub_1ABA8CB08();
        sub_1ABAFF390(v41, &qword_1EB4D5F08, off_1E7960048);
        v42 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        sub_1ABA96FC0();

        if (!sub_1ABAB65E0())
        {
          goto LABEL_79;
        }
      }

      v43 = v3[2];
      if (v43)
      {
        break;
      }

      v1 = v39;
LABEL_29:
      ++v5;
      v44 = objc_allocWithZone(GDGraphLocationRelationship);
      sub_1ABA8390C();
      sub_1ABC69D78();
      sub_1ABA9DE68();

      sub_1ABF24B94();
      sub_1ABAB67A0();
      sub_1ABA9E200();
      sub_1ABF24BA4();
      if (v5 == v6)
      {
        sub_1ABA9F0B8();
        goto LABEL_31;
      }
    }

    sub_1ABC6C458();
    sub_1ABA88B74();
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABA8BAF4();
    while ([sub_1ABA90FC8() initWithValue_])
    {
      sub_1ABA88C70();
      sub_1ABC6C3C4();
      sub_1ABA88D50();
      sub_1ABF24BA4();
      if (!--v43)
      {
        v1 = v85;
        v39 = MEMORY[0x1E69E7CC0];
        v6 = v83;
        goto LABEL_29;
      }
    }

LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

LABEL_31:
  sub_1ABAABCB8();
  if (v45)
  {
    v46 = 0;
  }

  else
  {
    v47 = v3[1];
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    v46 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_];
    if (!v46)
    {
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
      return;
    }
  }

  sub_1ABAA22EC();
  if ((v48 & 1) == 0)
  {
    v49 = v3[1];
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
    {
      goto LABEL_82;
    }
  }

  sub_1ABAA1F6C();
  if ((v51 & 1) == 0)
  {
    v52 = *(v50 + 8);
    sub_1ABAFF390(0, &qword_1EB4D5F50, off_1E795FF08);
    if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
    {
      goto LABEL_83;
    }
  }

  sub_1ABAB1118();
  if (v27)
  {
    v53 = 0;
  }

  else
  {
    v53 = sub_1ABC6C3F8();
  }

  sub_1ABA818CC();
  sub_1ABAFF390(0, &qword_1ED86B920, 0x1E696AD98);
  v54 = sub_1ABAA045C();
  v55 = sub_1ABA97B70(v54);
  sub_1ABA80B88(v55);
  if (v3)
  {
    v86 = v39;

    sub_1ABA9E6A8();
    sub_1ABA7F360();
    do
    {
      sub_1ABA9FEB0();
      sub_1ABAB54D0();
      v56 = sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20);
      v57 = sub_1ABA90834(v56);
      sub_1ABB2E9FC(v57, v58, &qword_1EB4D9BF0, &qword_1ABF34240);
      sub_1ABAA4E64();
      sub_1ABA9A498();
      sub_1ABA9754C();
      v59 = objc_allocWithZone(GDGraphDateRelationship);
      sub_1ABA9EFD8();

      sub_1ABA8E288();
      v60 = sub_1ABA9F354();
      sub_1ABC6AA68(v60);
      sub_1ABF24B94();
      sub_1ABA8B120();
      sub_1ABC6C3E0();
      sub_1ABF24BA4();
      sub_1ABAA1318();
    }

    while (!v27);
  }

  else
  {
  }

  sub_1ABAB56E0();
  v61 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABA9FFF0(MEMORY[0x1E69E7CC0]);
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABAB587C();
    while (1)
    {
      sub_1ABA8A95C();
      if (v62)
      {
        break;
      }

      if (![sub_1ABAA0CD0() initWithValue_])
      {
        goto LABEL_75;
      }

      sub_1ABA8B4D4();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
      if (v3 == v46)
      {
        v61 = v86;
        goto LABEL_53;
      }
    }

    __break(1u);
    goto LABEL_71;
  }

LABEL_53:
  sub_1ABAA2640(v61);
  v63 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABAA0318();
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABAB52F8();
    while (1)
    {
      sub_1ABA89C88();
      if (v62)
      {
        break;
      }

      if (![sub_1ABC6C410() initWithValue_])
      {
        goto LABEL_76;
      }

      sub_1ABA8B6AC();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
      if (v3 == v63)
      {
        v63 = v86;
        goto LABEL_59;
      }
    }

LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

LABEL_59:
  sub_1ABAA111C();
  v64 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABA8AF3C();
    sub_1ABAFF390(0, &qword_1EB4D5F50, off_1E795FF08);
    swift_getObjCClassFromMetadata();
    sub_1ABA88678();
    while (1)
    {
      sub_1ABA9F274();
      if (v62)
      {
        goto LABEL_72;
      }

      if (![sub_1ABAB0F94() initWithValue_])
      {
        goto LABEL_77;
      }

      sub_1ABAA0178();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
      if (v3 == v7)
      {
        v64 = v86;
        break;
      }
    }
  }

  sub_1ABA8282C();
  v65 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABA8A628();
    do
    {
      v66 = sub_1ABA95120();
      sub_1ABAAD268(v66);
      sub_1ABA9DFA0();
      sub_1ABAB6908();
      sub_1ABA9E0F4();
      sub_1ABF24BA4();
      v3 = (v3 - 1);
    }

    while (v3);
    v65 = v86;
  }

  sub_1ABA7AD30();
  v67 = MEMORY[0x1E69E7CC0];
  objc_allocWithZone(GDGraphExercisingActivityEvent);
  v68 = sub_1ABA8F488();
  sub_1ABC67F50(v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v84, v63, v64, v65, v67);
  sub_1ABA89A08();
  sub_1ABA8B438();
}

void __swiftcall CustomGraphCommuteActivityEvent.toObjectiveCGraphObject()(GDGraphCommuteActivityEvent *__return_ptr retstr)
{
  sub_1ABA8AAB0();
  sub_1ABAA9198();
  sub_1ABA8C0D0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1ABA8F4D8();
  v9 = sub_1ABAD219C(&qword_1EB4D9BF0, &qword_1ABF34240);
  v10 = sub_1ABA7AB80(v9);
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABA7E77C(v11, v81);
  MEMORY[0x1EEE9AC00](v12);
  sub_1ABA99440(v13, v14, v15, v16, v17, v18, v19, v20, v82);
  MEMORY[0x1EEE9AC00](v21);
  sub_1ABA954CC();
  v22 = sub_1ABAD219C(&qword_1EB4D5F20, &qword_1ABF4F358);
  sub_1ABA7AB80(v22);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v23);
  sub_1ABA9587C();
  sub_1ABAFF390(0, &qword_1EB4D6008, off_1E795FF78);
  if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
  {
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  v24 = sub_1ABA90CF4();
  v25 = type metadata accessor for CustomGraphCommuteActivityEvent(v24);
  sub_1ABAA0EE8(v25);
  v26 = sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
  sub_1ABA8B2C0(&qword_1EB4D5F20, &qword_1ABF4F358, *(v26 + 28));
  sub_1ABAA5898();
  if (v27)
  {

    sub_1ABC6AAC4(v1, &qword_1EB4D5F20);
  }

  else
  {
    sub_1ABA89DD8();
    sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20);
    sub_1ABA8C968();
    v3 = &qword_1EB4D9BF0;
    v6 = v4;
    sub_1ABC6C36C(v28);
    sub_1ABAA45A8();
    sub_1ABA84188();
    sub_1ABAA295C();
    v29 = objc_allocWithZone(GDGraphDateRelationship);
    sub_1ABA89B58();

    v30 = sub_1ABAA40C4();
    sub_1ABC6C440(v30);
  }

  sub_1ABA969FC();
  if (v6)
  {
    sub_1ABA9FC20();
    sub_1ABA97FF8();
    while (1)
    {
      sub_1ABA8E96C();
      if (v31)
      {
        sub_1ABA8908C();
      }

      else
      {
        v32 = sub_1ABAB5AC8();
        sub_1ABAFF390(v32, v33, off_1E79600C8);
        v34 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        sub_1ABA96FC0();

        if (!sub_1ABAB65E0())
        {
          goto LABEL_78;
        }
      }

      v35 = v3[2];
      if (v35)
      {
        break;
      }

      v1 = MEMORY[0x1E69E7CC0];
LABEL_16:
      ++v5;
      v38 = objc_allocWithZone(GDGraphAttendeeRelationship);
      sub_1ABA9358C();
      sub_1ABC69D78();
      sub_1ABA9DE68();

      sub_1ABF24B94();
      sub_1ABAB67A0();
      sub_1ABA9E200();
      sub_1ABF24BA4();
      if (v5 == v6)
      {
        sub_1ABA9EFE4();
        goto LABEL_18;
      }
    }

    sub_1ABC6C428(MEMORY[0x1E69E7CC0]);
    sub_1ABA88B74();
    v36 = sub_1ABA8BCD4();
    sub_1ABAFF390(v36, v37, off_1E79600C8);
    swift_getObjCClassFromMetadata();
    sub_1ABA8BAF4();
    while ([sub_1ABA90FC8() initWithValue_])
    {
      sub_1ABA88C70();
      sub_1ABC6C3C4();
      sub_1ABA88D50();
      sub_1ABF24BA4();
      if (!--v35)
      {
        sub_1ABA9F1A0();
        goto LABEL_16;
      }
    }

    goto LABEL_73;
  }

LABEL_18:
  sub_1ABAB510C();
  v39 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    sub_1ABA8A3C0();
    sub_1ABA97FF8();
    while (1)
    {
      sub_1ABA8E96C();
      if (v40)
      {
        sub_1ABA8908C();
      }

      else
      {
        v41 = sub_1ABA8CB08();
        sub_1ABAFF390(v41, &qword_1EB4D5F08, off_1E7960048);
        v42 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        sub_1ABA96FC0();

        if (!sub_1ABAB65E0())
        {
          goto LABEL_79;
        }
      }

      v43 = v3[2];
      if (v43)
      {
        break;
      }

      v1 = v39;
LABEL_29:
      ++v5;
      v44 = objc_allocWithZone(GDGraphLocationRelationship);
      sub_1ABA8390C();
      sub_1ABC69D78();
      sub_1ABA9DE68();

      sub_1ABF24B94();
      sub_1ABAB67A0();
      sub_1ABA9E200();
      sub_1ABF24BA4();
      if (v5 == v6)
      {
        sub_1ABA9F0B8();
        goto LABEL_31;
      }
    }

    sub_1ABC6C458();
    sub_1ABA88B74();
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABA8BAF4();
    while ([sub_1ABA90FC8() initWithValue_])
    {
      sub_1ABA88C70();
      sub_1ABC6C3C4();
      sub_1ABA88D50();
      sub_1ABF24BA4();
      if (!--v43)
      {
        v1 = v85;
        v39 = MEMORY[0x1E69E7CC0];
        v6 = v83;
        goto LABEL_29;
      }
    }

LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

LABEL_31:
  sub_1ABAABCB8();
  if (v45)
  {
    v46 = 0;
  }

  else
  {
    v47 = v3[1];
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    v46 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_];
    if (!v46)
    {
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
      return;
    }
  }

  sub_1ABAA22EC();
  if ((v48 & 1) == 0)
  {
    v49 = v3[1];
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
    {
      goto LABEL_82;
    }
  }

  sub_1ABAA1F6C();
  if ((v51 & 1) == 0)
  {
    v52 = *(v50 + 8);
    sub_1ABAFF390(0, &qword_1EB4D5F50, off_1E795FF08);
    if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
    {
      goto LABEL_83;
    }
  }

  sub_1ABAB1118();
  if (v27)
  {
    v53 = 0;
  }

  else
  {
    v53 = sub_1ABC6C3F8();
  }

  sub_1ABA818CC();
  sub_1ABAFF390(0, &qword_1ED86B920, 0x1E696AD98);
  v54 = sub_1ABAA045C();
  v55 = sub_1ABA97B70(v54);
  sub_1ABA80B88(v55);
  if (v3)
  {
    v86 = v39;

    sub_1ABA9E6A8();
    sub_1ABA7F360();
    do
    {
      sub_1ABA9FEB0();
      sub_1ABAB54D0();
      v56 = sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20);
      v57 = sub_1ABA90834(v56);
      sub_1ABB2E9FC(v57, v58, &qword_1EB4D9BF0, &qword_1ABF34240);
      sub_1ABAA4E64();
      sub_1ABA9A498();
      sub_1ABA9754C();
      v59 = objc_allocWithZone(GDGraphDateRelationship);
      sub_1ABA9EFD8();

      sub_1ABA8E288();
      v60 = sub_1ABA9F354();
      sub_1ABC6AA68(v60);
      sub_1ABF24B94();
      sub_1ABA8B120();
      sub_1ABC6C3E0();
      sub_1ABF24BA4();
      sub_1ABAA1318();
    }

    while (!v27);
  }

  else
  {
  }

  sub_1ABAB56E0();
  v61 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABA9FFF0(MEMORY[0x1E69E7CC0]);
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABAB587C();
    while (1)
    {
      sub_1ABA8A95C();
      if (v62)
      {
        break;
      }

      if (![sub_1ABAA0CD0() initWithValue_])
      {
        goto LABEL_75;
      }

      sub_1ABA8B4D4();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
      if (v3 == v46)
      {
        v61 = v86;
        goto LABEL_53;
      }
    }

    __break(1u);
    goto LABEL_71;
  }

LABEL_53:
  sub_1ABAA2640(v61);
  v63 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABAA0318();
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABAB52F8();
    while (1)
    {
      sub_1ABA89C88();
      if (v62)
      {
        break;
      }

      if (![sub_1ABC6C410() initWithValue_])
      {
        goto LABEL_76;
      }

      sub_1ABA8B6AC();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
      if (v3 == v63)
      {
        v63 = v86;
        goto LABEL_59;
      }
    }

LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

LABEL_59:
  sub_1ABAA111C();
  v64 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABA8AF3C();
    sub_1ABAFF390(0, &qword_1EB4D5F50, off_1E795FF08);
    swift_getObjCClassFromMetadata();
    sub_1ABA88678();
    while (1)
    {
      sub_1ABA9F274();
      if (v62)
      {
        goto LABEL_72;
      }

      if (![sub_1ABAB0F94() initWithValue_])
      {
        goto LABEL_77;
      }

      sub_1ABAA0178();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
      if (v3 == v7)
      {
        v64 = v86;
        break;
      }
    }
  }

  sub_1ABA8282C();
  v65 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABA8A628();
    do
    {
      v66 = sub_1ABA95120();
      sub_1ABAAD268(v66);
      sub_1ABA9DFA0();
      sub_1ABAB6908();
      sub_1ABA9E0F4();
      sub_1ABF24BA4();
      v3 = (v3 - 1);
    }

    while (v3);
    v65 = v86;
  }

  sub_1ABA7AD30();
  v67 = MEMORY[0x1E69E7CC0];
  objc_allocWithZone(GDGraphCommuteActivityEvent);
  v68 = sub_1ABA8F488();
  sub_1ABC67F50(v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v84, v63, v64, v65, v67);
  sub_1ABA89A08();
  sub_1ABA8B438();
}

void __swiftcall CustomGraphDiningActivityEvent.toObjectiveCGraphObject()(GDGraphDiningActivityEvent *__return_ptr retstr)
{
  sub_1ABA8AAB0();
  sub_1ABAA9198();
  sub_1ABA8C0D0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1ABA8F4D8();
  v9 = sub_1ABAD219C(&qword_1EB4D9BF0, &qword_1ABF34240);
  v10 = sub_1ABA7AB80(v9);
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABA7E77C(v11, v81);
  MEMORY[0x1EEE9AC00](v12);
  sub_1ABA99440(v13, v14, v15, v16, v17, v18, v19, v20, v82);
  MEMORY[0x1EEE9AC00](v21);
  sub_1ABA954CC();
  v22 = sub_1ABAD219C(&qword_1EB4D5F20, &qword_1ABF4F358);
  sub_1ABA7AB80(v22);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v23);
  sub_1ABA9587C();
  sub_1ABAFF390(0, &qword_1EB4D6010, off_1E795FF90);
  if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
  {
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  v24 = sub_1ABA90CF4();
  v25 = type metadata accessor for CustomGraphDiningActivityEvent(v24);
  sub_1ABAA0EE8(v25);
  v26 = sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
  sub_1ABA8B2C0(&qword_1EB4D5F20, &qword_1ABF4F358, *(v26 + 28));
  sub_1ABAA5898();
  if (v27)
  {

    sub_1ABC6AAC4(v1, &qword_1EB4D5F20);
  }

  else
  {
    sub_1ABA89DD8();
    sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20);
    sub_1ABA8C968();
    v3 = &qword_1EB4D9BF0;
    v6 = v4;
    sub_1ABC6C36C(v28);
    sub_1ABAA45A8();
    sub_1ABA84188();
    sub_1ABAA295C();
    v29 = objc_allocWithZone(GDGraphDateRelationship);
    sub_1ABA89B58();

    v30 = sub_1ABAA40C4();
    sub_1ABC6C440(v30);
  }

  sub_1ABA969FC();
  if (v6)
  {
    sub_1ABA9FC20();
    sub_1ABA97FF8();
    while (1)
    {
      sub_1ABA8E96C();
      if (v31)
      {
        sub_1ABA8908C();
      }

      else
      {
        v32 = sub_1ABAB5AC8();
        sub_1ABAFF390(v32, v33, off_1E79600C8);
        v34 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        sub_1ABA96FC0();

        if (!sub_1ABAB65E0())
        {
          goto LABEL_78;
        }
      }

      v35 = v3[2];
      if (v35)
      {
        break;
      }

      v1 = MEMORY[0x1E69E7CC0];
LABEL_16:
      ++v5;
      v38 = objc_allocWithZone(GDGraphAttendeeRelationship);
      sub_1ABA9358C();
      sub_1ABC69D78();
      sub_1ABA9DE68();

      sub_1ABF24B94();
      sub_1ABAB67A0();
      sub_1ABA9E200();
      sub_1ABF24BA4();
      if (v5 == v6)
      {
        sub_1ABA9EFE4();
        goto LABEL_18;
      }
    }

    sub_1ABC6C428(MEMORY[0x1E69E7CC0]);
    sub_1ABA88B74();
    v36 = sub_1ABA8BCD4();
    sub_1ABAFF390(v36, v37, off_1E79600C8);
    swift_getObjCClassFromMetadata();
    sub_1ABA8BAF4();
    while ([sub_1ABA90FC8() initWithValue_])
    {
      sub_1ABA88C70();
      sub_1ABC6C3C4();
      sub_1ABA88D50();
      sub_1ABF24BA4();
      if (!--v35)
      {
        sub_1ABA9F1A0();
        goto LABEL_16;
      }
    }

    goto LABEL_73;
  }

LABEL_18:
  sub_1ABAB510C();
  v39 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    sub_1ABA8A3C0();
    sub_1ABA97FF8();
    while (1)
    {
      sub_1ABA8E96C();
      if (v40)
      {
        sub_1ABA8908C();
      }

      else
      {
        v41 = sub_1ABA8CB08();
        sub_1ABAFF390(v41, &qword_1EB4D5F08, off_1E7960048);
        v42 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        sub_1ABA96FC0();

        if (!sub_1ABAB65E0())
        {
          goto LABEL_79;
        }
      }

      v43 = v3[2];
      if (v43)
      {
        break;
      }

      v1 = v39;
LABEL_29:
      ++v5;
      v44 = objc_allocWithZone(GDGraphLocationRelationship);
      sub_1ABA8390C();
      sub_1ABC69D78();
      sub_1ABA9DE68();

      sub_1ABF24B94();
      sub_1ABAB67A0();
      sub_1ABA9E200();
      sub_1ABF24BA4();
      if (v5 == v6)
      {
        sub_1ABA9F0B8();
        goto LABEL_31;
      }
    }

    sub_1ABC6C458();
    sub_1ABA88B74();
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABA8BAF4();
    while ([sub_1ABA90FC8() initWithValue_])
    {
      sub_1ABA88C70();
      sub_1ABC6C3C4();
      sub_1ABA88D50();
      sub_1ABF24BA4();
      if (!--v43)
      {
        v1 = v85;
        v39 = MEMORY[0x1E69E7CC0];
        v6 = v83;
        goto LABEL_29;
      }
    }

LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

LABEL_31:
  sub_1ABAABCB8();
  if (v45)
  {
    v46 = 0;
  }

  else
  {
    v47 = v3[1];
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    v46 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_];
    if (!v46)
    {
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
      return;
    }
  }

  sub_1ABAA22EC();
  if ((v48 & 1) == 0)
  {
    v49 = v3[1];
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
    {
      goto LABEL_82;
    }
  }

  sub_1ABAA1F6C();
  if ((v51 & 1) == 0)
  {
    v52 = *(v50 + 8);
    sub_1ABAFF390(0, &qword_1EB4D5F50, off_1E795FF08);
    if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
    {
      goto LABEL_83;
    }
  }

  sub_1ABAB1118();
  if (v27)
  {
    v53 = 0;
  }

  else
  {
    v53 = sub_1ABC6C3F8();
  }

  sub_1ABA818CC();
  sub_1ABAFF390(0, &qword_1ED86B920, 0x1E696AD98);
  v54 = sub_1ABAA045C();
  v55 = sub_1ABA97B70(v54);
  sub_1ABA80B88(v55);
  if (v3)
  {
    v86 = v39;

    sub_1ABA9E6A8();
    sub_1ABA7F360();
    do
    {
      sub_1ABA9FEB0();
      sub_1ABAB54D0();
      v56 = sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20);
      v57 = sub_1ABA90834(v56);
      sub_1ABB2E9FC(v57, v58, &qword_1EB4D9BF0, &qword_1ABF34240);
      sub_1ABAA4E64();
      sub_1ABA9A498();
      sub_1ABA9754C();
      v59 = objc_allocWithZone(GDGraphDateRelationship);
      sub_1ABA9EFD8();

      sub_1ABA8E288();
      v60 = sub_1ABA9F354();
      sub_1ABC6AA68(v60);
      sub_1ABF24B94();
      sub_1ABA8B120();
      sub_1ABC6C3E0();
      sub_1ABF24BA4();
      sub_1ABAA1318();
    }

    while (!v27);
  }

  else
  {
  }

  sub_1ABAB56E0();
  v61 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABA9FFF0(MEMORY[0x1E69E7CC0]);
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABAB587C();
    while (1)
    {
      sub_1ABA8A95C();
      if (v62)
      {
        break;
      }

      if (![sub_1ABAA0CD0() initWithValue_])
      {
        goto LABEL_75;
      }

      sub_1ABA8B4D4();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
      if (v3 == v46)
      {
        v61 = v86;
        goto LABEL_53;
      }
    }

    __break(1u);
    goto LABEL_71;
  }

LABEL_53:
  sub_1ABAA2640(v61);
  v63 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABAA0318();
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABAB52F8();
    while (1)
    {
      sub_1ABA89C88();
      if (v62)
      {
        break;
      }

      if (![sub_1ABC6C410() initWithValue_])
      {
        goto LABEL_76;
      }

      sub_1ABA8B6AC();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
      if (v3 == v63)
      {
        v63 = v86;
        goto LABEL_59;
      }
    }

LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

LABEL_59:
  sub_1ABAA111C();
  v64 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABA8AF3C();
    sub_1ABAFF390(0, &qword_1EB4D5F50, off_1E795FF08);
    swift_getObjCClassFromMetadata();
    sub_1ABA88678();
    while (1)
    {
      sub_1ABA9F274();
      if (v62)
      {
        goto LABEL_72;
      }

      if (![sub_1ABAB0F94() initWithValue_])
      {
        goto LABEL_77;
      }

      sub_1ABAA0178();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
      if (v3 == v7)
      {
        v64 = v86;
        break;
      }
    }
  }

  sub_1ABA8282C();
  v65 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABA8A628();
    do
    {
      v66 = sub_1ABA95120();
      sub_1ABAAD268(v66);
      sub_1ABA9DFA0();
      sub_1ABAB6908();
      sub_1ABA9E0F4();
      sub_1ABF24BA4();
      v3 = (v3 - 1);
    }

    while (v3);
    v65 = v86;
  }

  sub_1ABA7AD30();
  v67 = MEMORY[0x1E69E7CC0];
  objc_allocWithZone(GDGraphDiningActivityEvent);
  v68 = sub_1ABA8F488();
  sub_1ABC67F50(v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v84, v63, v64, v65, v67);
  sub_1ABA89A08();
  sub_1ABA8B438();
}

void __swiftcall CustomGraphAttendingAPerformanceActivityEvent.toObjectiveCGraphObject()(GDGraphAttendingAPerformanceActivityEvent *__return_ptr retstr)
{
  sub_1ABA8AAB0();
  sub_1ABAA9198();
  sub_1ABA8C0D0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1ABA8F4D8();
  v9 = sub_1ABAD219C(&qword_1EB4D9BF0, &qword_1ABF34240);
  v10 = sub_1ABA7AB80(v9);
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABA7E77C(v11, v81);
  MEMORY[0x1EEE9AC00](v12);
  sub_1ABA99440(v13, v14, v15, v16, v17, v18, v19, v20, v82);
  MEMORY[0x1EEE9AC00](v21);
  sub_1ABA954CC();
  v22 = sub_1ABAD219C(&qword_1EB4D5F20, &qword_1ABF4F358);
  sub_1ABA7AB80(v22);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v23);
  sub_1ABA9587C();
  sub_1ABAFF390(0, &qword_1EB4D6018, off_1E795FF28);
  if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
  {
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  v24 = sub_1ABA90CF4();
  v25 = type metadata accessor for CustomGraphAttendingAPerformanceActivityEvent(v24);
  sub_1ABAA0EE8(v25);
  v26 = sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
  sub_1ABA8B2C0(&qword_1EB4D5F20, &qword_1ABF4F358, *(v26 + 28));
  sub_1ABAA5898();
  if (v27)
  {

    sub_1ABC6AAC4(v1, &qword_1EB4D5F20);
  }

  else
  {
    sub_1ABA89DD8();
    sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20);
    sub_1ABA8C968();
    v3 = &qword_1EB4D9BF0;
    v6 = v4;
    sub_1ABC6C36C(v28);
    sub_1ABAA45A8();
    sub_1ABA84188();
    sub_1ABAA295C();
    v29 = objc_allocWithZone(GDGraphDateRelationship);
    sub_1ABA89B58();

    v30 = sub_1ABAA40C4();
    sub_1ABC6C440(v30);
  }

  sub_1ABA969FC();
  if (v6)
  {
    sub_1ABA9FC20();
    sub_1ABA97FF8();
    while (1)
    {
      sub_1ABA8E96C();
      if (v31)
      {
        sub_1ABA8908C();
      }

      else
      {
        v32 = sub_1ABAB5AC8();
        sub_1ABAFF390(v32, v33, off_1E79600C8);
        v34 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        sub_1ABA96FC0();

        if (!sub_1ABAB65E0())
        {
          goto LABEL_78;
        }
      }

      v35 = v3[2];
      if (v35)
      {
        break;
      }

      v1 = MEMORY[0x1E69E7CC0];
LABEL_16:
      ++v5;
      v38 = objc_allocWithZone(GDGraphAttendeeRelationship);
      sub_1ABA9358C();
      sub_1ABC69D78();
      sub_1ABA9DE68();

      sub_1ABF24B94();
      sub_1ABAB67A0();
      sub_1ABA9E200();
      sub_1ABF24BA4();
      if (v5 == v6)
      {
        sub_1ABA9EFE4();
        goto LABEL_18;
      }
    }

    sub_1ABC6C428(MEMORY[0x1E69E7CC0]);
    sub_1ABA88B74();
    v36 = sub_1ABA8BCD4();
    sub_1ABAFF390(v36, v37, off_1E79600C8);
    swift_getObjCClassFromMetadata();
    sub_1ABA8BAF4();
    while ([sub_1ABA90FC8() initWithValue_])
    {
      sub_1ABA88C70();
      sub_1ABC6C3C4();
      sub_1ABA88D50();
      sub_1ABF24BA4();
      if (!--v35)
      {
        sub_1ABA9F1A0();
        goto LABEL_16;
      }
    }

    goto LABEL_73;
  }

LABEL_18:
  sub_1ABAB510C();
  v39 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    sub_1ABA8A3C0();
    sub_1ABA97FF8();
    while (1)
    {
      sub_1ABA8E96C();
      if (v40)
      {
        sub_1ABA8908C();
      }

      else
      {
        v41 = sub_1ABA8CB08();
        sub_1ABAFF390(v41, &qword_1EB4D5F08, off_1E7960048);
        v42 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        sub_1ABA96FC0();

        if (!sub_1ABAB65E0())
        {
          goto LABEL_79;
        }
      }

      v43 = v3[2];
      if (v43)
      {
        break;
      }

      v1 = v39;
LABEL_29:
      ++v5;
      v44 = objc_allocWithZone(GDGraphLocationRelationship);
      sub_1ABA8390C();
      sub_1ABC69D78();
      sub_1ABA9DE68();

      sub_1ABF24B94();
      sub_1ABAB67A0();
      sub_1ABA9E200();
      sub_1ABF24BA4();
      if (v5 == v6)
      {
        sub_1ABA9F0B8();
        goto LABEL_31;
      }
    }

    sub_1ABC6C458();
    sub_1ABA88B74();
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABA8BAF4();
    while ([sub_1ABA90FC8() initWithValue_])
    {
      sub_1ABA88C70();
      sub_1ABC6C3C4();
      sub_1ABA88D50();
      sub_1ABF24BA4();
      if (!--v43)
      {
        v1 = v85;
        v39 = MEMORY[0x1E69E7CC0];
        v6 = v83;
        goto LABEL_29;
      }
    }

LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

LABEL_31:
  sub_1ABAABCB8();
  if (v45)
  {
    v46 = 0;
  }

  else
  {
    v47 = v3[1];
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    v46 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_];
    if (!v46)
    {
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
      return;
    }
  }

  sub_1ABAA22EC();
  if ((v48 & 1) == 0)
  {
    v49 = v3[1];
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
    {
      goto LABEL_82;
    }
  }

  sub_1ABAA1F6C();
  if ((v51 & 1) == 0)
  {
    v52 = *(v50 + 8);
    sub_1ABAFF390(0, &qword_1EB4D5F50, off_1E795FF08);
    if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
    {
      goto LABEL_83;
    }
  }

  sub_1ABAB1118();
  if (v27)
  {
    v53 = 0;
  }

  else
  {
    v53 = sub_1ABC6C3F8();
  }

  sub_1ABA818CC();
  sub_1ABAFF390(0, &qword_1ED86B920, 0x1E696AD98);
  v54 = sub_1ABAA045C();
  v55 = sub_1ABA97B70(v54);
  sub_1ABA80B88(v55);
  if (v3)
  {
    v86 = v39;

    sub_1ABA9E6A8();
    sub_1ABA7F360();
    do
    {
      sub_1ABA9FEB0();
      sub_1ABAB54D0();
      v56 = sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20);
      v57 = sub_1ABA90834(v56);
      sub_1ABB2E9FC(v57, v58, &qword_1EB4D9BF0, &qword_1ABF34240);
      sub_1ABAA4E64();
      sub_1ABA9A498();
      sub_1ABA9754C();
      v59 = objc_allocWithZone(GDGraphDateRelationship);
      sub_1ABA9EFD8();

      sub_1ABA8E288();
      v60 = sub_1ABA9F354();
      sub_1ABC6AA68(v60);
      sub_1ABF24B94();
      sub_1ABA8B120();
      sub_1ABC6C3E0();
      sub_1ABF24BA4();
      sub_1ABAA1318();
    }

    while (!v27);
  }

  else
  {
  }

  sub_1ABAB56E0();
  v61 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABA9FFF0(MEMORY[0x1E69E7CC0]);
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABAB587C();
    while (1)
    {
      sub_1ABA8A95C();
      if (v62)
      {
        break;
      }

      if (![sub_1ABAA0CD0() initWithValue_])
      {
        goto LABEL_75;
      }

      sub_1ABA8B4D4();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
      if (v3 == v46)
      {
        v61 = v86;
        goto LABEL_53;
      }
    }

    __break(1u);
    goto LABEL_71;
  }

LABEL_53:
  sub_1ABAA2640(v61);
  v63 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABAA0318();
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABAB52F8();
    while (1)
    {
      sub_1ABA89C88();
      if (v62)
      {
        break;
      }

      if (![sub_1ABC6C410() initWithValue_])
      {
        goto LABEL_76;
      }

      sub_1ABA8B6AC();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
      if (v3 == v63)
      {
        v63 = v86;
        goto LABEL_59;
      }
    }

LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

LABEL_59:
  sub_1ABAA111C();
  v64 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABA8AF3C();
    sub_1ABAFF390(0, &qword_1EB4D5F50, off_1E795FF08);
    swift_getObjCClassFromMetadata();
    sub_1ABA88678();
    while (1)
    {
      sub_1ABA9F274();
      if (v62)
      {
        goto LABEL_72;
      }

      if (![sub_1ABAB0F94() initWithValue_])
      {
        goto LABEL_77;
      }

      sub_1ABAA0178();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
      if (v3 == v7)
      {
        v64 = v86;
        break;
      }
    }
  }

  sub_1ABA8282C();
  v65 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABA8A628();
    do
    {
      v66 = sub_1ABA95120();
      sub_1ABAAD268(v66);
      sub_1ABA9DFA0();
      sub_1ABAB6908();
      sub_1ABA9E0F4();
      sub_1ABF24BA4();
      v3 = (v3 - 1);
    }

    while (v3);
    v65 = v86;
  }

  sub_1ABA7AD30();
  v67 = MEMORY[0x1E69E7CC0];
  objc_allocWithZone(GDGraphAttendingAPerformanceActivityEvent);
  v68 = sub_1ABA8F488();
  sub_1ABC67F50(v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v84, v63, v64, v65, v67);
  sub_1ABA89A08();
  sub_1ABA8B438();
}

void __swiftcall CustomGraphStationaryActivityEvent.toObjectiveCGraphObject()(GDGraphStationaryActivityEvent *__return_ptr retstr)
{
  sub_1ABA8AAB0();
  sub_1ABAA9198();
  sub_1ABA8C0D0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1ABA8F4D8();
  v9 = sub_1ABAD219C(&qword_1EB4D9BF0, &qword_1ABF34240);
  v10 = sub_1ABA7AB80(v9);
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABA7E77C(v11, v81);
  MEMORY[0x1EEE9AC00](v12);
  sub_1ABA99440(v13, v14, v15, v16, v17, v18, v19, v20, v82);
  MEMORY[0x1EEE9AC00](v21);
  sub_1ABA954CC();
  v22 = sub_1ABAD219C(&qword_1EB4D5F20, &qword_1ABF4F358);
  sub_1ABA7AB80(v22);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v23);
  sub_1ABA9587C();
  sub_1ABAFF390(0, &qword_1EB4D6020, off_1E7960190);
  if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
  {
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  v24 = sub_1ABA90CF4();
  v25 = type metadata accessor for CustomGraphStationaryActivityEvent(v24);
  sub_1ABAA0EE8(v25);
  v26 = sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
  sub_1ABA8B2C0(&qword_1EB4D5F20, &qword_1ABF4F358, *(v26 + 28));
  sub_1ABAA5898();
  if (v27)
  {

    sub_1ABC6AAC4(v1, &qword_1EB4D5F20);
  }

  else
  {
    sub_1ABA89DD8();
    sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20);
    sub_1ABA8C968();
    v3 = &qword_1EB4D9BF0;
    v6 = v4;
    sub_1ABC6C36C(v28);
    sub_1ABAA45A8();
    sub_1ABA84188();
    sub_1ABAA295C();
    v29 = objc_allocWithZone(GDGraphDateRelationship);
    sub_1ABA89B58();

    v30 = sub_1ABAA40C4();
    sub_1ABC6C440(v30);
  }

  sub_1ABA969FC();
  if (v6)
  {
    sub_1ABA9FC20();
    sub_1ABA97FF8();
    while (1)
    {
      sub_1ABA8E96C();
      if (v31)
      {
        sub_1ABA8908C();
      }

      else
      {
        v32 = sub_1ABAB5AC8();
        sub_1ABAFF390(v32, v33, off_1E79600C8);
        v34 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        sub_1ABA96FC0();

        if (!sub_1ABAB65E0())
        {
          goto LABEL_78;
        }
      }

      v35 = v3[2];
      if (v35)
      {
        break;
      }

      v1 = MEMORY[0x1E69E7CC0];
LABEL_16:
      ++v5;
      v38 = objc_allocWithZone(GDGraphAttendeeRelationship);
      sub_1ABA9358C();
      sub_1ABC69D78();
      sub_1ABA9DE68();

      sub_1ABF24B94();
      sub_1ABAB67A0();
      sub_1ABA9E200();
      sub_1ABF24BA4();
      if (v5 == v6)
      {
        sub_1ABA9EFE4();
        goto LABEL_18;
      }
    }

    sub_1ABC6C428(MEMORY[0x1E69E7CC0]);
    sub_1ABA88B74();
    v36 = sub_1ABA8BCD4();
    sub_1ABAFF390(v36, v37, off_1E79600C8);
    swift_getObjCClassFromMetadata();
    sub_1ABA8BAF4();
    while ([sub_1ABA90FC8() initWithValue_])
    {
      sub_1ABA88C70();
      sub_1ABC6C3C4();
      sub_1ABA88D50();
      sub_1ABF24BA4();
      if (!--v35)
      {
        sub_1ABA9F1A0();
        goto LABEL_16;
      }
    }

    goto LABEL_73;
  }

LABEL_18:
  sub_1ABAB510C();
  v39 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    sub_1ABA8A3C0();
    sub_1ABA97FF8();
    while (1)
    {
      sub_1ABA8E96C();
      if (v40)
      {
        sub_1ABA8908C();
      }

      else
      {
        v41 = sub_1ABA8CB08();
        sub_1ABAFF390(v41, &qword_1EB4D5F08, off_1E7960048);
        v42 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        sub_1ABA96FC0();

        if (!sub_1ABAB65E0())
        {
          goto LABEL_79;
        }
      }

      v43 = v3[2];
      if (v43)
      {
        break;
      }

      v1 = v39;
LABEL_29:
      ++v5;
      v44 = objc_allocWithZone(GDGraphLocationRelationship);
      sub_1ABA8390C();
      sub_1ABC69D78();
      sub_1ABA9DE68();

      sub_1ABF24B94();
      sub_1ABAB67A0();
      sub_1ABA9E200();
      sub_1ABF24BA4();
      if (v5 == v6)
      {
        sub_1ABA9F0B8();
        goto LABEL_31;
      }
    }

    sub_1ABC6C458();
    sub_1ABA88B74();
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABA8BAF4();
    while ([sub_1ABA90FC8() initWithValue_])
    {
      sub_1ABA88C70();
      sub_1ABC6C3C4();
      sub_1ABA88D50();
      sub_1ABF24BA4();
      if (!--v43)
      {
        v1 = v85;
        v39 = MEMORY[0x1E69E7CC0];
        v6 = v83;
        goto LABEL_29;
      }
    }

LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

LABEL_31:
  sub_1ABAABCB8();
  if (v45)
  {
    v46 = 0;
  }

  else
  {
    v47 = v3[1];
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    v46 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_];
    if (!v46)
    {
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
      return;
    }
  }

  sub_1ABAA22EC();
  if ((v48 & 1) == 0)
  {
    v49 = v3[1];
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
    {
      goto LABEL_82;
    }
  }

  sub_1ABAA1F6C();
  if ((v51 & 1) == 0)
  {
    v52 = *(v50 + 8);
    sub_1ABAFF390(0, &qword_1EB4D5F50, off_1E795FF08);
    if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
    {
      goto LABEL_83;
    }
  }

  sub_1ABAB1118();
  if (v27)
  {
    v53 = 0;
  }

  else
  {
    v53 = sub_1ABC6C3F8();
  }

  sub_1ABA818CC();
  sub_1ABAFF390(0, &qword_1ED86B920, 0x1E696AD98);
  v54 = sub_1ABAA045C();
  v55 = sub_1ABA97B70(v54);
  sub_1ABA80B88(v55);
  if (v3)
  {
    v86 = v39;

    sub_1ABA9E6A8();
    sub_1ABA7F360();
    do
    {
      sub_1ABA9FEB0();
      sub_1ABAB54D0();
      v56 = sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20);
      v57 = sub_1ABA90834(v56);
      sub_1ABB2E9FC(v57, v58, &qword_1EB4D9BF0, &qword_1ABF34240);
      sub_1ABAA4E64();
      sub_1ABA9A498();
      sub_1ABA9754C();
      v59 = objc_allocWithZone(GDGraphDateRelationship);
      sub_1ABA9EFD8();

      sub_1ABA8E288();
      v60 = sub_1ABA9F354();
      sub_1ABC6AA68(v60);
      sub_1ABF24B94();
      sub_1ABA8B120();
      sub_1ABC6C3E0();
      sub_1ABF24BA4();
      sub_1ABAA1318();
    }

    while (!v27);
  }

  else
  {
  }

  sub_1ABAB56E0();
  v61 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABA9FFF0(MEMORY[0x1E69E7CC0]);
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABAB587C();
    while (1)
    {
      sub_1ABA8A95C();
      if (v62)
      {
        break;
      }

      if (![sub_1ABAA0CD0() initWithValue_])
      {
        goto LABEL_75;
      }

      sub_1ABA8B4D4();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
      if (v3 == v46)
      {
        v61 = v86;
        goto LABEL_53;
      }
    }

    __break(1u);
    goto LABEL_71;
  }

LABEL_53:
  sub_1ABAA2640(v61);
  v63 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABAA0318();
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABAB52F8();
    while (1)
    {
      sub_1ABA89C88();
      if (v62)
      {
        break;
      }

      if (![sub_1ABC6C410() initWithValue_])
      {
        goto LABEL_76;
      }

      sub_1ABA8B6AC();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
      if (v3 == v63)
      {
        v63 = v86;
        goto LABEL_59;
      }
    }

LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

LABEL_59:
  sub_1ABAA111C();
  v64 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABA8AF3C();
    sub_1ABAFF390(0, &qword_1EB4D5F50, off_1E795FF08);
    swift_getObjCClassFromMetadata();
    sub_1ABA88678();
    while (1)
    {
      sub_1ABA9F274();
      if (v62)
      {
        goto LABEL_72;
      }

      if (![sub_1ABAB0F94() initWithValue_])
      {
        goto LABEL_77;
      }

      sub_1ABAA0178();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
      if (v3 == v7)
      {
        v64 = v86;
        break;
      }
    }
  }

  sub_1ABA8282C();
  v65 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABA8A628();
    do
    {
      v66 = sub_1ABA95120();
      sub_1ABAAD268(v66);
      sub_1ABA9DFA0();
      sub_1ABAB6908();
      sub_1ABA9E0F4();
      sub_1ABF24BA4();
      v3 = (v3 - 1);
    }

    while (v3);
    v65 = v86;
  }

  sub_1ABA7AD30();
  v67 = MEMORY[0x1E69E7CC0];
  objc_allocWithZone(GDGraphStationaryActivityEvent);
  v68 = sub_1ABA8F488();
  sub_1ABC67F50(v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v84, v63, v64, v65, v67);
  sub_1ABA89A08();
  sub_1ABA8B438();
}

void __swiftcall CustomGraphLocationVisitActivityEvent.toObjectiveCGraphObject()(GDGraphLocationVisitActivityEvent *__return_ptr retstr)
{
  sub_1ABA8AAB0();
  sub_1ABAA9198();
  sub_1ABA8C0D0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1ABA8F4D8();
  v9 = sub_1ABAD219C(&qword_1EB4D9BF0, &qword_1ABF34240);
  v10 = sub_1ABA7AB80(v9);
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABA7E77C(v11, v81);
  MEMORY[0x1EEE9AC00](v12);
  sub_1ABA99440(v13, v14, v15, v16, v17, v18, v19, v20, v82);
  MEMORY[0x1EEE9AC00](v21);
  sub_1ABA954CC();
  v22 = sub_1ABAD219C(&qword_1EB4D5F20, &qword_1ABF4F358);
  sub_1ABA7AB80(v22);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v23);
  sub_1ABA9587C();
  sub_1ABAFF390(0, &qword_1EB4D6028, off_1E7960068);
  if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
  {
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  v24 = sub_1ABA90CF4();
  v25 = type metadata accessor for CustomGraphLocationVisitActivityEvent(v24);
  sub_1ABAA0EE8(v25);
  v26 = sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
  sub_1ABA8B2C0(&qword_1EB4D5F20, &qword_1ABF4F358, *(v26 + 28));
  sub_1ABAA5898();
  if (v27)
  {

    sub_1ABC6AAC4(v1, &qword_1EB4D5F20);
  }

  else
  {
    sub_1ABA89DD8();
    sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20);
    sub_1ABA8C968();
    v3 = &qword_1EB4D9BF0;
    v6 = v4;
    sub_1ABC6C36C(v28);
    sub_1ABAA45A8();
    sub_1ABA84188();
    sub_1ABAA295C();
    v29 = objc_allocWithZone(GDGraphDateRelationship);
    sub_1ABA89B58();

    v30 = sub_1ABAA40C4();
    sub_1ABC6C440(v30);
  }

  sub_1ABA969FC();
  if (v6)
  {
    sub_1ABA9FC20();
    sub_1ABA97FF8();
    while (1)
    {
      sub_1ABA8E96C();
      if (v31)
      {
        sub_1ABA8908C();
      }

      else
      {
        v32 = sub_1ABAB5AC8();
        sub_1ABAFF390(v32, v33, off_1E79600C8);
        v34 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        sub_1ABA96FC0();

        if (!sub_1ABAB65E0())
        {
          goto LABEL_78;
        }
      }

      v35 = v3[2];
      if (v35)
      {
        break;
      }

      v1 = MEMORY[0x1E69E7CC0];
LABEL_16:
      ++v5;
      v38 = objc_allocWithZone(GDGraphAttendeeRelationship);
      sub_1ABA9358C();
      sub_1ABC69D78();
      sub_1ABA9DE68();

      sub_1ABF24B94();
      sub_1ABAB67A0();
      sub_1ABA9E200();
      sub_1ABF24BA4();
      if (v5 == v6)
      {
        sub_1ABA9EFE4();
        goto LABEL_18;
      }
    }

    sub_1ABC6C428(MEMORY[0x1E69E7CC0]);
    sub_1ABA88B74();
    v36 = sub_1ABA8BCD4();
    sub_1ABAFF390(v36, v37, off_1E79600C8);
    swift_getObjCClassFromMetadata();
    sub_1ABA8BAF4();
    while ([sub_1ABA90FC8() initWithValue_])
    {
      sub_1ABA88C70();
      sub_1ABC6C3C4();
      sub_1ABA88D50();
      sub_1ABF24BA4();
      if (!--v35)
      {
        sub_1ABA9F1A0();
        goto LABEL_16;
      }
    }

    goto LABEL_73;
  }

LABEL_18:
  sub_1ABAB510C();
  v39 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    sub_1ABA8A3C0();
    sub_1ABA97FF8();
    while (1)
    {
      sub_1ABA8E96C();
      if (v40)
      {
        sub_1ABA8908C();
      }

      else
      {
        v41 = sub_1ABA8CB08();
        sub_1ABAFF390(v41, &qword_1EB4D5F08, off_1E7960048);
        v42 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        sub_1ABA96FC0();

        if (!sub_1ABAB65E0())
        {
          goto LABEL_79;
        }
      }

      v43 = v3[2];
      if (v43)
      {
        break;
      }

      v1 = v39;
LABEL_29:
      ++v5;
      v44 = objc_allocWithZone(GDGraphLocationRelationship);
      sub_1ABA8390C();
      sub_1ABC69D78();
      sub_1ABA9DE68();

      sub_1ABF24B94();
      sub_1ABAB67A0();
      sub_1ABA9E200();
      sub_1ABF24BA4();
      if (v5 == v6)
      {
        sub_1ABA9F0B8();
        goto LABEL_31;
      }
    }

    sub_1ABC6C458();
    sub_1ABA88B74();
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABA8BAF4();
    while ([sub_1ABA90FC8() initWithValue_])
    {
      sub_1ABA88C70();
      sub_1ABC6C3C4();
      sub_1ABA88D50();
      sub_1ABF24BA4();
      if (!--v43)
      {
        v1 = v85;
        v39 = MEMORY[0x1E69E7CC0];
        v6 = v83;
        goto LABEL_29;
      }
    }

LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

LABEL_31:
  sub_1ABAABCB8();
  if (v45)
  {
    v46 = 0;
  }

  else
  {
    v47 = v3[1];
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    v46 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_];
    if (!v46)
    {
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
      return;
    }
  }

  sub_1ABAA22EC();
  if ((v48 & 1) == 0)
  {
    v49 = v3[1];
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
    {
      goto LABEL_82;
    }
  }

  sub_1ABAA1F6C();
  if ((v51 & 1) == 0)
  {
    v52 = *(v50 + 8);
    sub_1ABAFF390(0, &qword_1EB4D5F50, off_1E795FF08);
    if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
    {
      goto LABEL_83;
    }
  }

  sub_1ABAB1118();
  if (v27)
  {
    v53 = 0;
  }

  else
  {
    v53 = sub_1ABC6C3F8();
  }

  sub_1ABA818CC();
  sub_1ABAFF390(0, &qword_1ED86B920, 0x1E696AD98);
  v54 = sub_1ABAA045C();
  v55 = sub_1ABA97B70(v54);
  sub_1ABA80B88(v55);
  if (v3)
  {
    v86 = v39;

    sub_1ABA9E6A8();
    sub_1ABA7F360();
    do
    {
      sub_1ABA9FEB0();
      sub_1ABAB54D0();
      v56 = sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20);
      v57 = sub_1ABA90834(v56);
      sub_1ABB2E9FC(v57, v58, &qword_1EB4D9BF0, &qword_1ABF34240);
      sub_1ABAA4E64();
      sub_1ABA9A498();
      sub_1ABA9754C();
      v59 = objc_allocWithZone(GDGraphDateRelationship);
      sub_1ABA9EFD8();

      sub_1ABA8E288();
      v60 = sub_1ABA9F354();
      sub_1ABC6AA68(v60);
      sub_1ABF24B94();
      sub_1ABA8B120();
      sub_1ABC6C3E0();
      sub_1ABF24BA4();
      sub_1ABAA1318();
    }

    while (!v27);
  }

  else
  {
  }

  sub_1ABAB56E0();
  v61 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABA9FFF0(MEMORY[0x1E69E7CC0]);
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABAB587C();
    while (1)
    {
      sub_1ABA8A95C();
      if (v62)
      {
        break;
      }

      if (![sub_1ABAA0CD0() initWithValue_])
      {
        goto LABEL_75;
      }

      sub_1ABA8B4D4();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
      if (v3 == v46)
      {
        v61 = v86;
        goto LABEL_53;
      }
    }

    __break(1u);
    goto LABEL_71;
  }

LABEL_53:
  sub_1ABAA2640(v61);
  v63 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABAA0318();
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABAB52F8();
    while (1)
    {
      sub_1ABA89C88();
      if (v62)
      {
        break;
      }

      if (![sub_1ABC6C410() initWithValue_])
      {
        goto LABEL_76;
      }

      sub_1ABA8B6AC();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
      if (v3 == v63)
      {
        v63 = v86;
        goto LABEL_59;
      }
    }

LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

LABEL_59:
  sub_1ABAA111C();
  v64 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABA8AF3C();
    sub_1ABAFF390(0, &qword_1EB4D5F50, off_1E795FF08);
    swift_getObjCClassFromMetadata();
    sub_1ABA88678();
    while (1)
    {
      sub_1ABA9F274();
      if (v62)
      {
        goto LABEL_72;
      }

      if (![sub_1ABAB0F94() initWithValue_])
      {
        goto LABEL_77;
      }

      sub_1ABAA0178();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
      if (v3 == v7)
      {
        v64 = v86;
        break;
      }
    }
  }

  sub_1ABA8282C();
  v65 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABA8A628();
    do
    {
      v66 = sub_1ABA95120();
      sub_1ABAAD268(v66);
      sub_1ABA9DFA0();
      sub_1ABAB6908();
      sub_1ABA9E0F4();
      sub_1ABF24BA4();
      v3 = (v3 - 1);
    }

    while (v3);
    v65 = v86;
  }

  sub_1ABA7AD30();
  v67 = MEMORY[0x1E69E7CC0];
  objc_allocWithZone(GDGraphLocationVisitActivityEvent);
  v68 = sub_1ABA8F488();
  sub_1ABC67F50(v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v84, v63, v64, v65, v67);
  sub_1ABA89A08();
  sub_1ABA8B438();
}

void __swiftcall CustomGraphWalkingActivityEvent.toObjectiveCGraphObject()(GDGraphWalkingActivityEvent *__return_ptr retstr)
{
  sub_1ABA8AAB0();
  sub_1ABAA9198();
  sub_1ABA8C0D0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1ABA8F4D8();
  v9 = sub_1ABAD219C(&qword_1EB4D9BF0, &qword_1ABF34240);
  v10 = sub_1ABA7AB80(v9);
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABA7E77C(v11, v81);
  MEMORY[0x1EEE9AC00](v12);
  sub_1ABA99440(v13, v14, v15, v16, v17, v18, v19, v20, v82);
  MEMORY[0x1EEE9AC00](v21);
  sub_1ABA954CC();
  v22 = sub_1ABAD219C(&qword_1EB4D5F20, &qword_1ABF4F358);
  sub_1ABA7AB80(v22);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v23);
  sub_1ABA9587C();
  sub_1ABAFF390(0, &qword_1EB4D6030, off_1E7960200);
  if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
  {
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  v24 = sub_1ABA90CF4();
  v25 = type metadata accessor for CustomGraphWalkingActivityEvent(v24);
  sub_1ABAA0EE8(v25);
  v26 = sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
  sub_1ABA8B2C0(&qword_1EB4D5F20, &qword_1ABF4F358, *(v26 + 28));
  sub_1ABAA5898();
  if (v27)
  {

    sub_1ABC6AAC4(v1, &qword_1EB4D5F20);
  }

  else
  {
    sub_1ABA89DD8();
    sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20);
    sub_1ABA8C968();
    v3 = &qword_1EB4D9BF0;
    v6 = v4;
    sub_1ABC6C36C(v28);
    sub_1ABAA45A8();
    sub_1ABA84188();
    sub_1ABAA295C();
    v29 = objc_allocWithZone(GDGraphDateRelationship);
    sub_1ABA89B58();

    v30 = sub_1ABAA40C4();
    sub_1ABC6C440(v30);
  }

  sub_1ABA969FC();
  if (v6)
  {
    sub_1ABA9FC20();
    sub_1ABA97FF8();
    while (1)
    {
      sub_1ABA8E96C();
      if (v31)
      {
        sub_1ABA8908C();
      }

      else
      {
        v32 = sub_1ABAB5AC8();
        sub_1ABAFF390(v32, v33, off_1E79600C8);
        v34 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        sub_1ABA96FC0();

        if (!sub_1ABAB65E0())
        {
          goto LABEL_78;
        }
      }

      v35 = v3[2];
      if (v35)
      {
        break;
      }

      v1 = MEMORY[0x1E69E7CC0];
LABEL_16:
      ++v5;
      v38 = objc_allocWithZone(GDGraphAttendeeRelationship);
      sub_1ABA9358C();
      sub_1ABC69D78();
      sub_1ABA9DE68();

      sub_1ABF24B94();
      sub_1ABAB67A0();
      sub_1ABA9E200();
      sub_1ABF24BA4();
      if (v5 == v6)
      {
        sub_1ABA9EFE4();
        goto LABEL_18;
      }
    }

    sub_1ABC6C428(MEMORY[0x1E69E7CC0]);
    sub_1ABA88B74();
    v36 = sub_1ABA8BCD4();
    sub_1ABAFF390(v36, v37, off_1E79600C8);
    swift_getObjCClassFromMetadata();
    sub_1ABA8BAF4();
    while ([sub_1ABA90FC8() initWithValue_])
    {
      sub_1ABA88C70();
      sub_1ABC6C3C4();
      sub_1ABA88D50();
      sub_1ABF24BA4();
      if (!--v35)
      {
        sub_1ABA9F1A0();
        goto LABEL_16;
      }
    }

    goto LABEL_73;
  }

LABEL_18:
  sub_1ABAB510C();
  v39 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    sub_1ABA8A3C0();
    sub_1ABA97FF8();
    while (1)
    {
      sub_1ABA8E96C();
      if (v40)
      {
        sub_1ABA8908C();
      }

      else
      {
        v41 = sub_1ABA8CB08();
        sub_1ABAFF390(v41, &qword_1EB4D5F08, off_1E7960048);
        v42 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        sub_1ABA96FC0();

        if (!sub_1ABAB65E0())
        {
          goto LABEL_79;
        }
      }

      v43 = v3[2];
      if (v43)
      {
        break;
      }

      v1 = v39;
LABEL_29:
      ++v5;
      v44 = objc_allocWithZone(GDGraphLocationRelationship);
      sub_1ABA8390C();
      sub_1ABC69D78();
      sub_1ABA9DE68();

      sub_1ABF24B94();
      sub_1ABAB67A0();
      sub_1ABA9E200();
      sub_1ABF24BA4();
      if (v5 == v6)
      {
        sub_1ABA9F0B8();
        goto LABEL_31;
      }
    }

    sub_1ABC6C458();
    sub_1ABA88B74();
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABA8BAF4();
    while ([sub_1ABA90FC8() initWithValue_])
    {
      sub_1ABA88C70();
      sub_1ABC6C3C4();
      sub_1ABA88D50();
      sub_1ABF24BA4();
      if (!--v43)
      {
        v1 = v85;
        v39 = MEMORY[0x1E69E7CC0];
        v6 = v83;
        goto LABEL_29;
      }
    }

LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

LABEL_31:
  sub_1ABAABCB8();
  if (v45)
  {
    v46 = 0;
  }

  else
  {
    v47 = v3[1];
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    v46 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_];
    if (!v46)
    {
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
      return;
    }
  }

  sub_1ABAA22EC();
  if ((v48 & 1) == 0)
  {
    v49 = v3[1];
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
    {
      goto LABEL_82;
    }
  }

  sub_1ABAA1F6C();
  if ((v51 & 1) == 0)
  {
    v52 = *(v50 + 8);
    sub_1ABAFF390(0, &qword_1EB4D5F50, off_1E795FF08);
    if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
    {
      goto LABEL_83;
    }
  }

  sub_1ABAB1118();
  if (v27)
  {
    v53 = 0;
  }

  else
  {
    v53 = sub_1ABC6C3F8();
  }

  sub_1ABA818CC();
  sub_1ABAFF390(0, &qword_1ED86B920, 0x1E696AD98);
  v54 = sub_1ABAA045C();
  v55 = sub_1ABA97B70(v54);
  sub_1ABA80B88(v55);
  if (v3)
  {
    v86 = v39;

    sub_1ABA9E6A8();
    sub_1ABA7F360();
    do
    {
      sub_1ABA9FEB0();
      sub_1ABAB54D0();
      v56 = sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20);
      v57 = sub_1ABA90834(v56);
      sub_1ABB2E9FC(v57, v58, &qword_1EB4D9BF0, &qword_1ABF34240);
      sub_1ABAA4E64();
      sub_1ABA9A498();
      sub_1ABA9754C();
      v59 = objc_allocWithZone(GDGraphDateRelationship);
      sub_1ABA9EFD8();

      sub_1ABA8E288();
      v60 = sub_1ABA9F354();
      sub_1ABC6AA68(v60);
      sub_1ABF24B94();
      sub_1ABA8B120();
      sub_1ABC6C3E0();
      sub_1ABF24BA4();
      sub_1ABAA1318();
    }

    while (!v27);
  }

  else
  {
  }

  sub_1ABAB56E0();
  v61 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABA9FFF0(MEMORY[0x1E69E7CC0]);
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABAB587C();
    while (1)
    {
      sub_1ABA8A95C();
      if (v62)
      {
        break;
      }

      if (![sub_1ABAA0CD0() initWithValue_])
      {
        goto LABEL_75;
      }

      sub_1ABA8B4D4();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
      if (v3 == v46)
      {
        v61 = v86;
        goto LABEL_53;
      }
    }

    __break(1u);
    goto LABEL_71;
  }

LABEL_53:
  sub_1ABAA2640(v61);
  v63 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABAA0318();
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABAB52F8();
    while (1)
    {
      sub_1ABA89C88();
      if (v62)
      {
        break;
      }

      if (![sub_1ABC6C410() initWithValue_])
      {
        goto LABEL_76;
      }

      sub_1ABA8B6AC();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
      if (v3 == v63)
      {
        v63 = v86;
        goto LABEL_59;
      }
    }

LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

LABEL_59:
  sub_1ABAA111C();
  v64 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABA8AF3C();
    sub_1ABAFF390(0, &qword_1EB4D5F50, off_1E795FF08);
    swift_getObjCClassFromMetadata();
    sub_1ABA88678();
    while (1)
    {
      sub_1ABA9F274();
      if (v62)
      {
        goto LABEL_72;
      }

      if (![sub_1ABAB0F94() initWithValue_])
      {
        goto LABEL_77;
      }

      sub_1ABAA0178();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
      if (v3 == v7)
      {
        v64 = v86;
        break;
      }
    }
  }

  sub_1ABA8282C();
  v65 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABA8A628();
    do
    {
      v66 = sub_1ABA95120();
      sub_1ABAAD268(v66);
      sub_1ABA9DFA0();
      sub_1ABAB6908();
      sub_1ABA9E0F4();
      sub_1ABF24BA4();
      v3 = (v3 - 1);
    }

    while (v3);
    v65 = v86;
  }

  sub_1ABA7AD30();
  v67 = MEMORY[0x1E69E7CC0];
  objc_allocWithZone(GDGraphWalkingActivityEvent);
  v68 = sub_1ABA8F488();
  sub_1ABC67F50(v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v84, v63, v64, v65, v67);
  sub_1ABA89A08();
  sub_1ABA8B438();
}

void __swiftcall CustomGraphRunningActivityEvent.toObjectiveCGraphObject()(GDGraphRunningActivityEvent *__return_ptr retstr)
{
  sub_1ABA8AAB0();
  sub_1ABAA9198();
  sub_1ABA8C0D0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1ABA8F4D8();
  v9 = sub_1ABAD219C(&qword_1EB4D9BF0, &qword_1ABF34240);
  v10 = sub_1ABA7AB80(v9);
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABA7E77C(v11, v81);
  MEMORY[0x1EEE9AC00](v12);
  sub_1ABA99440(v13, v14, v15, v16, v17, v18, v19, v20, v82);
  MEMORY[0x1EEE9AC00](v21);
  sub_1ABA954CC();
  v22 = sub_1ABAD219C(&qword_1EB4D5F20, &qword_1ABF4F358);
  sub_1ABA7AB80(v22);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v23);
  sub_1ABA9587C();
  sub_1ABAFF390(0, &qword_1EB4D6038, off_1E79600F0);
  if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
  {
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  v24 = sub_1ABA90CF4();
  v25 = type metadata accessor for CustomGraphRunningActivityEvent(v24);
  sub_1ABAA0EE8(v25);
  v26 = sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
  sub_1ABA8B2C0(&qword_1EB4D5F20, &qword_1ABF4F358, *(v26 + 28));
  sub_1ABAA5898();
  if (v27)
  {

    sub_1ABC6AAC4(v1, &qword_1EB4D5F20);
  }

  else
  {
    sub_1ABA89DD8();
    sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20);
    sub_1ABA8C968();
    v3 = &qword_1EB4D9BF0;
    v6 = v4;
    sub_1ABC6C36C(v28);
    sub_1ABAA45A8();
    sub_1ABA84188();
    sub_1ABAA295C();
    v29 = objc_allocWithZone(GDGraphDateRelationship);
    sub_1ABA89B58();

    v30 = sub_1ABAA40C4();
    sub_1ABC6C440(v30);
  }

  sub_1ABA969FC();
  if (v6)
  {
    sub_1ABA9FC20();
    sub_1ABA97FF8();
    while (1)
    {
      sub_1ABA8E96C();
      if (v31)
      {
        sub_1ABA8908C();
      }

      else
      {
        v32 = sub_1ABAB5AC8();
        sub_1ABAFF390(v32, v33, off_1E79600C8);
        v34 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        sub_1ABA96FC0();

        if (!sub_1ABAB65E0())
        {
          goto LABEL_78;
        }
      }

      v35 = v3[2];
      if (v35)
      {
        break;
      }

      v1 = MEMORY[0x1E69E7CC0];
LABEL_16:
      ++v5;
      v38 = objc_allocWithZone(GDGraphAttendeeRelationship);
      sub_1ABA9358C();
      sub_1ABC69D78();
      sub_1ABA9DE68();

      sub_1ABF24B94();
      sub_1ABAB67A0();
      sub_1ABA9E200();
      sub_1ABF24BA4();
      if (v5 == v6)
      {
        sub_1ABA9EFE4();
        goto LABEL_18;
      }
    }

    sub_1ABC6C428(MEMORY[0x1E69E7CC0]);
    sub_1ABA88B74();
    v36 = sub_1ABA8BCD4();
    sub_1ABAFF390(v36, v37, off_1E79600C8);
    swift_getObjCClassFromMetadata();
    sub_1ABA8BAF4();
    while ([sub_1ABA90FC8() initWithValue_])
    {
      sub_1ABA88C70();
      sub_1ABC6C3C4();
      sub_1ABA88D50();
      sub_1ABF24BA4();
      if (!--v35)
      {
        sub_1ABA9F1A0();
        goto LABEL_16;
      }
    }

    goto LABEL_73;
  }

LABEL_18:
  sub_1ABAB510C();
  v39 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    sub_1ABA8A3C0();
    sub_1ABA97FF8();
    while (1)
    {
      sub_1ABA8E96C();
      if (v40)
      {
        sub_1ABA8908C();
      }

      else
      {
        v41 = sub_1ABA8CB08();
        sub_1ABAFF390(v41, &qword_1EB4D5F08, off_1E7960048);
        v42 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        sub_1ABA96FC0();

        if (!sub_1ABAB65E0())
        {
          goto LABEL_79;
        }
      }

      v43 = v3[2];
      if (v43)
      {
        break;
      }

      v1 = v39;
LABEL_29:
      ++v5;
      v44 = objc_allocWithZone(GDGraphLocationRelationship);
      sub_1ABA8390C();
      sub_1ABC69D78();
      sub_1ABA9DE68();

      sub_1ABF24B94();
      sub_1ABAB67A0();
      sub_1ABA9E200();
      sub_1ABF24BA4();
      if (v5 == v6)
      {
        sub_1ABA9F0B8();
        goto LABEL_31;
      }
    }

    sub_1ABC6C458();
    sub_1ABA88B74();
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABA8BAF4();
    while ([sub_1ABA90FC8() initWithValue_])
    {
      sub_1ABA88C70();
      sub_1ABC6C3C4();
      sub_1ABA88D50();
      sub_1ABF24BA4();
      if (!--v43)
      {
        v1 = v85;
        v39 = MEMORY[0x1E69E7CC0];
        v6 = v83;
        goto LABEL_29;
      }
    }

LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

LABEL_31:
  sub_1ABAABCB8();
  if (v45)
  {
    v46 = 0;
  }

  else
  {
    v47 = v3[1];
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    v46 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_];
    if (!v46)
    {
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
      return;
    }
  }

  sub_1ABAA22EC();
  if ((v48 & 1) == 0)
  {
    v49 = v3[1];
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
    {
      goto LABEL_82;
    }
  }

  sub_1ABAA1F6C();
  if ((v51 & 1) == 0)
  {
    v52 = *(v50 + 8);
    sub_1ABAFF390(0, &qword_1EB4D5F50, off_1E795FF08);
    if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
    {
      goto LABEL_83;
    }
  }

  sub_1ABAB1118();
  if (v27)
  {
    v53 = 0;
  }

  else
  {
    v53 = sub_1ABC6C3F8();
  }

  sub_1ABA818CC();
  sub_1ABAFF390(0, &qword_1ED86B920, 0x1E696AD98);
  v54 = sub_1ABAA045C();
  v55 = sub_1ABA97B70(v54);
  sub_1ABA80B88(v55);
  if (v3)
  {
    v86 = v39;

    sub_1ABA9E6A8();
    sub_1ABA7F360();
    do
    {
      sub_1ABA9FEB0();
      sub_1ABAB54D0();
      v56 = sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20);
      v57 = sub_1ABA90834(v56);
      sub_1ABB2E9FC(v57, v58, &qword_1EB4D9BF0, &qword_1ABF34240);
      sub_1ABAA4E64();
      sub_1ABA9A498();
      sub_1ABA9754C();
      v59 = objc_allocWithZone(GDGraphDateRelationship);
      sub_1ABA9EFD8();

      sub_1ABA8E288();
      v60 = sub_1ABA9F354();
      sub_1ABC6AA68(v60);
      sub_1ABF24B94();
      sub_1ABA8B120();
      sub_1ABC6C3E0();
      sub_1ABF24BA4();
      sub_1ABAA1318();
    }

    while (!v27);
  }

  else
  {
  }

  sub_1ABAB56E0();
  v61 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABA9FFF0(MEMORY[0x1E69E7CC0]);
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABAB587C();
    while (1)
    {
      sub_1ABA8A95C();
      if (v62)
      {
        break;
      }

      if (![sub_1ABAA0CD0() initWithValue_])
      {
        goto LABEL_75;
      }

      sub_1ABA8B4D4();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
      if (v3 == v46)
      {
        v61 = v86;
        goto LABEL_53;
      }
    }

    __break(1u);
    goto LABEL_71;
  }

LABEL_53:
  sub_1ABAA2640(v61);
  v63 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABAA0318();
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABAB52F8();
    while (1)
    {
      sub_1ABA89C88();
      if (v62)
      {
        break;
      }

      if (![sub_1ABC6C410() initWithValue_])
      {
        goto LABEL_76;
      }

      sub_1ABA8B6AC();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
      if (v3 == v63)
      {
        v63 = v86;
        goto LABEL_59;
      }
    }

LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

LABEL_59:
  sub_1ABAA111C();
  v64 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABA8AF3C();
    sub_1ABAFF390(0, &qword_1EB4D5F50, off_1E795FF08);
    swift_getObjCClassFromMetadata();
    sub_1ABA88678();
    while (1)
    {
      sub_1ABA9F274();
      if (v62)
      {
        goto LABEL_72;
      }

      if (![sub_1ABAB0F94() initWithValue_])
      {
        goto LABEL_77;
      }

      sub_1ABAA0178();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
      if (v3 == v7)
      {
        v64 = v86;
        break;
      }
    }
  }

  sub_1ABA8282C();
  v65 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABA8A628();
    do
    {
      v66 = sub_1ABA95120();
      sub_1ABAAD268(v66);
      sub_1ABA9DFA0();
      sub_1ABAB6908();
      sub_1ABA9E0F4();
      sub_1ABF24BA4();
      v3 = (v3 - 1);
    }

    while (v3);
    v65 = v86;
  }

  sub_1ABA7AD30();
  v67 = MEMORY[0x1E69E7CC0];
  objc_allocWithZone(GDGraphRunningActivityEvent);
  v68 = sub_1ABA8F488();
  sub_1ABC67F50(v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v84, v63, v64, v65, v67);
  sub_1ABA89A08();
  sub_1ABA8B438();
}

void __swiftcall CustomGraphBicyclingActivityEvent.toObjectiveCGraphObject()(GDGraphBicyclingActivityEvent *__return_ptr retstr)
{
  sub_1ABA8AAB0();
  sub_1ABAA9198();
  sub_1ABA8C0D0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1ABA8F4D8();
  v9 = sub_1ABAD219C(&qword_1EB4D9BF0, &qword_1ABF34240);
  v10 = sub_1ABA7AB80(v9);
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABA7E77C(v11, v81);
  MEMORY[0x1EEE9AC00](v12);
  sub_1ABA99440(v13, v14, v15, v16, v17, v18, v19, v20, v82);
  MEMORY[0x1EEE9AC00](v21);
  sub_1ABA954CC();
  v22 = sub_1ABAD219C(&qword_1EB4D5F20, &qword_1ABF4F358);
  sub_1ABA7AB80(v22);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v23);
  sub_1ABA9587C();
  sub_1ABAFF390(0, &qword_1EB4D6040, off_1E795FF48);
  if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
  {
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  v24 = sub_1ABA90CF4();
  v25 = type metadata accessor for CustomGraphBicyclingActivityEvent(v24);
  sub_1ABAA0EE8(v25);
  v26 = sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
  sub_1ABA8B2C0(&qword_1EB4D5F20, &qword_1ABF4F358, *(v26 + 28));
  sub_1ABAA5898();
  if (v27)
  {

    sub_1ABC6AAC4(v1, &qword_1EB4D5F20);
  }

  else
  {
    sub_1ABA89DD8();
    sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20);
    sub_1ABA8C968();
    v3 = &qword_1EB4D9BF0;
    v6 = v4;
    sub_1ABC6C36C(v28);
    sub_1ABAA45A8();
    sub_1ABA84188();
    sub_1ABAA295C();
    v29 = objc_allocWithZone(GDGraphDateRelationship);
    sub_1ABA89B58();

    v30 = sub_1ABAA40C4();
    sub_1ABC6C440(v30);
  }

  sub_1ABA969FC();
  if (v6)
  {
    sub_1ABA9FC20();
    sub_1ABA97FF8();
    while (1)
    {
      sub_1ABA8E96C();
      if (v31)
      {
        sub_1ABA8908C();
      }

      else
      {
        v32 = sub_1ABAB5AC8();
        sub_1ABAFF390(v32, v33, off_1E79600C8);
        v34 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        sub_1ABA96FC0();

        if (!sub_1ABAB65E0())
        {
          goto LABEL_78;
        }
      }

      v35 = v3[2];
      if (v35)
      {
        break;
      }

      v1 = MEMORY[0x1E69E7CC0];
LABEL_16:
      ++v5;
      v38 = objc_allocWithZone(GDGraphAttendeeRelationship);
      sub_1ABA9358C();
      sub_1ABC69D78();
      sub_1ABA9DE68();

      sub_1ABF24B94();
      sub_1ABAB67A0();
      sub_1ABA9E200();
      sub_1ABF24BA4();
      if (v5 == v6)
      {
        sub_1ABA9EFE4();
        goto LABEL_18;
      }
    }

    sub_1ABC6C428(MEMORY[0x1E69E7CC0]);
    sub_1ABA88B74();
    v36 = sub_1ABA8BCD4();
    sub_1ABAFF390(v36, v37, off_1E79600C8);
    swift_getObjCClassFromMetadata();
    sub_1ABA8BAF4();
    while ([sub_1ABA90FC8() initWithValue_])
    {
      sub_1ABA88C70();
      sub_1ABC6C3C4();
      sub_1ABA88D50();
      sub_1ABF24BA4();
      if (!--v35)
      {
        sub_1ABA9F1A0();
        goto LABEL_16;
      }
    }

    goto LABEL_73;
  }

LABEL_18:
  sub_1ABAB510C();
  v39 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    sub_1ABA8A3C0();
    sub_1ABA97FF8();
    while (1)
    {
      sub_1ABA8E96C();
      if (v40)
      {
        sub_1ABA8908C();
      }

      else
      {
        v41 = sub_1ABA8CB08();
        sub_1ABAFF390(v41, &qword_1EB4D5F08, off_1E7960048);
        v42 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        sub_1ABA96FC0();

        if (!sub_1ABAB65E0())
        {
          goto LABEL_79;
        }
      }

      v43 = v3[2];
      if (v43)
      {
        break;
      }

      v1 = v39;
LABEL_29:
      ++v5;
      v44 = objc_allocWithZone(GDGraphLocationRelationship);
      sub_1ABA8390C();
      sub_1ABC69D78();
      sub_1ABA9DE68();

      sub_1ABF24B94();
      sub_1ABAB67A0();
      sub_1ABA9E200();
      sub_1ABF24BA4();
      if (v5 == v6)
      {
        sub_1ABA9F0B8();
        goto LABEL_31;
      }
    }

    sub_1ABC6C458();
    sub_1ABA88B74();
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABA8BAF4();
    while ([sub_1ABA90FC8() initWithValue_])
    {
      sub_1ABA88C70();
      sub_1ABC6C3C4();
      sub_1ABA88D50();
      sub_1ABF24BA4();
      if (!--v43)
      {
        v1 = v85;
        v39 = MEMORY[0x1E69E7CC0];
        v6 = v83;
        goto LABEL_29;
      }
    }

LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

LABEL_31:
  sub_1ABAABCB8();
  if (v45)
  {
    v46 = 0;
  }

  else
  {
    v47 = v3[1];
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    v46 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_];
    if (!v46)
    {
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
      return;
    }
  }

  sub_1ABAA22EC();
  if ((v48 & 1) == 0)
  {
    v49 = v3[1];
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
    {
      goto LABEL_82;
    }
  }

  sub_1ABAA1F6C();
  if ((v51 & 1) == 0)
  {
    v52 = *(v50 + 8);
    sub_1ABAFF390(0, &qword_1EB4D5F50, off_1E795FF08);
    if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
    {
      goto LABEL_83;
    }
  }

  sub_1ABAB1118();
  if (v27)
  {
    v53 = 0;
  }

  else
  {
    v53 = sub_1ABC6C3F8();
  }

  sub_1ABA818CC();
  sub_1ABAFF390(0, &qword_1ED86B920, 0x1E696AD98);
  v54 = sub_1ABAA045C();
  v55 = sub_1ABA97B70(v54);
  sub_1ABA80B88(v55);
  if (v3)
  {
    v86 = v39;

    sub_1ABA9E6A8();
    sub_1ABA7F360();
    do
    {
      sub_1ABA9FEB0();
      sub_1ABAB54D0();
      v56 = sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20);
      v57 = sub_1ABA90834(v56);
      sub_1ABB2E9FC(v57, v58, &qword_1EB4D9BF0, &qword_1ABF34240);
      sub_1ABAA4E64();
      sub_1ABA9A498();
      sub_1ABA9754C();
      v59 = objc_allocWithZone(GDGraphDateRelationship);
      sub_1ABA9EFD8();

      sub_1ABA8E288();
      v60 = sub_1ABA9F354();
      sub_1ABC6AA68(v60);
      sub_1ABF24B94();
      sub_1ABA8B120();
      sub_1ABC6C3E0();
      sub_1ABF24BA4();
      sub_1ABAA1318();
    }

    while (!v27);
  }

  else
  {
  }

  sub_1ABAB56E0();
  v61 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABA9FFF0(MEMORY[0x1E69E7CC0]);
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABAB587C();
    while (1)
    {
      sub_1ABA8A95C();
      if (v62)
      {
        break;
      }

      if (![sub_1ABAA0CD0() initWithValue_])
      {
        goto LABEL_75;
      }

      sub_1ABA8B4D4();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
      if (v3 == v46)
      {
        v61 = v86;
        goto LABEL_53;
      }
    }

    __break(1u);
    goto LABEL_71;
  }

LABEL_53:
  sub_1ABAA2640(v61);
  v63 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABAA0318();
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABAB52F8();
    while (1)
    {
      sub_1ABA89C88();
      if (v62)
      {
        break;
      }

      if (![sub_1ABC6C410() initWithValue_])
      {
        goto LABEL_76;
      }

      sub_1ABA8B6AC();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
      if (v3 == v63)
      {
        v63 = v86;
        goto LABEL_59;
      }
    }

LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

LABEL_59:
  sub_1ABAA111C();
  v64 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABA8AF3C();
    sub_1ABAFF390(0, &qword_1EB4D5F50, off_1E795FF08);
    swift_getObjCClassFromMetadata();
    sub_1ABA88678();
    while (1)
    {
      sub_1ABA9F274();
      if (v62)
      {
        goto LABEL_72;
      }

      if (![sub_1ABAB0F94() initWithValue_])
      {
        goto LABEL_77;
      }

      sub_1ABAA0178();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
      if (v3 == v7)
      {
        v64 = v86;
        break;
      }
    }
  }

  sub_1ABA8282C();
  v65 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABA8A628();
    do
    {
      v66 = sub_1ABA95120();
      sub_1ABAAD268(v66);
      sub_1ABA9DFA0();
      sub_1ABAB6908();
      sub_1ABA9E0F4();
      sub_1ABF24BA4();
      v3 = (v3 - 1);
    }

    while (v3);
    v65 = v86;
  }

  sub_1ABA7AD30();
  v67 = MEMORY[0x1E69E7CC0];
  objc_allocWithZone(GDGraphBicyclingActivityEvent);
  v68 = sub_1ABA8F488();
  sub_1ABC67F50(v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v84, v63, v64, v65, v67);
  sub_1ABA89A08();
  sub_1ABA8B438();
}

void __swiftcall CustomGraphHikingActivityEvent.toObjectiveCGraphObject()(GDGraphHikingActivityEvent *__return_ptr retstr)
{
  sub_1ABA8AAB0();
  sub_1ABAA9198();
  sub_1ABA8C0D0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1ABA8F4D8();
  v9 = sub_1ABAD219C(&qword_1EB4D9BF0, &qword_1ABF34240);
  v10 = sub_1ABA7AB80(v9);
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABA7E77C(v11, v81);
  MEMORY[0x1EEE9AC00](v12);
  sub_1ABA99440(v13, v14, v15, v16, v17, v18, v19, v20, v82);
  MEMORY[0x1EEE9AC00](v21);
  sub_1ABA954CC();
  v22 = sub_1ABAD219C(&qword_1EB4D5F20, &qword_1ABF4F358);
  sub_1ABA7AB80(v22);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v23);
  sub_1ABA9587C();
  sub_1ABAFF390(0, &qword_1EB4D6048, off_1E7960028);
  if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
  {
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  v24 = sub_1ABA90CF4();
  v25 = type metadata accessor for CustomGraphHikingActivityEvent(v24);
  sub_1ABAA0EE8(v25);
  v26 = sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
  sub_1ABA8B2C0(&qword_1EB4D5F20, &qword_1ABF4F358, *(v26 + 28));
  sub_1ABAA5898();
  if (v27)
  {

    sub_1ABC6AAC4(v1, &qword_1EB4D5F20);
  }

  else
  {
    sub_1ABA89DD8();
    sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20);
    sub_1ABA8C968();
    v3 = &qword_1EB4D9BF0;
    v6 = v4;
    sub_1ABC6C36C(v28);
    sub_1ABAA45A8();
    sub_1ABA84188();
    sub_1ABAA295C();
    v29 = objc_allocWithZone(GDGraphDateRelationship);
    sub_1ABA89B58();

    v30 = sub_1ABAA40C4();
    sub_1ABC6C440(v30);
  }

  sub_1ABA969FC();
  if (v6)
  {
    sub_1ABA9FC20();
    sub_1ABA97FF8();
    while (1)
    {
      sub_1ABA8E96C();
      if (v31)
      {
        sub_1ABA8908C();
      }

      else
      {
        v32 = sub_1ABAB5AC8();
        sub_1ABAFF390(v32, v33, off_1E79600C8);
        v34 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        sub_1ABA96FC0();

        if (!sub_1ABAB65E0())
        {
          goto LABEL_78;
        }
      }

      v35 = v3[2];
      if (v35)
      {
        break;
      }

      v1 = MEMORY[0x1E69E7CC0];
LABEL_16:
      ++v5;
      v38 = objc_allocWithZone(GDGraphAttendeeRelationship);
      sub_1ABA9358C();
      sub_1ABC69D78();
      sub_1ABA9DE68();

      sub_1ABF24B94();
      sub_1ABAB67A0();
      sub_1ABA9E200();
      sub_1ABF24BA4();
      if (v5 == v6)
      {
        sub_1ABA9EFE4();
        goto LABEL_18;
      }
    }

    sub_1ABC6C428(MEMORY[0x1E69E7CC0]);
    sub_1ABA88B74();
    v36 = sub_1ABA8BCD4();
    sub_1ABAFF390(v36, v37, off_1E79600C8);
    swift_getObjCClassFromMetadata();
    sub_1ABA8BAF4();
    while ([sub_1ABA90FC8() initWithValue_])
    {
      sub_1ABA88C70();
      sub_1ABC6C3C4();
      sub_1ABA88D50();
      sub_1ABF24BA4();
      if (!--v35)
      {
        sub_1ABA9F1A0();
        goto LABEL_16;
      }
    }

    goto LABEL_73;
  }

LABEL_18:
  sub_1ABAB510C();
  v39 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    sub_1ABA8A3C0();
    sub_1ABA97FF8();
    while (1)
    {
      sub_1ABA8E96C();
      if (v40)
      {
        sub_1ABA8908C();
      }

      else
      {
        v41 = sub_1ABA8CB08();
        sub_1ABAFF390(v41, &qword_1EB4D5F08, off_1E7960048);
        v42 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        sub_1ABA96FC0();

        if (!sub_1ABAB65E0())
        {
          goto LABEL_79;
        }
      }

      v43 = v3[2];
      if (v43)
      {
        break;
      }

      v1 = v39;
LABEL_29:
      ++v5;
      v44 = objc_allocWithZone(GDGraphLocationRelationship);
      sub_1ABA8390C();
      sub_1ABC69D78();
      sub_1ABA9DE68();

      sub_1ABF24B94();
      sub_1ABAB67A0();
      sub_1ABA9E200();
      sub_1ABF24BA4();
      if (v5 == v6)
      {
        sub_1ABA9F0B8();
        goto LABEL_31;
      }
    }

    sub_1ABC6C458();
    sub_1ABA88B74();
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABA8BAF4();
    while ([sub_1ABA90FC8() initWithValue_])
    {
      sub_1ABA88C70();
      sub_1ABC6C3C4();
      sub_1ABA88D50();
      sub_1ABF24BA4();
      if (!--v43)
      {
        v1 = v85;
        v39 = MEMORY[0x1E69E7CC0];
        v6 = v83;
        goto LABEL_29;
      }
    }

LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

LABEL_31:
  sub_1ABAABCB8();
  if (v45)
  {
    v46 = 0;
  }

  else
  {
    v47 = v3[1];
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    v46 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_];
    if (!v46)
    {
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
      return;
    }
  }

  sub_1ABAA22EC();
  if ((v48 & 1) == 0)
  {
    v49 = v3[1];
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
    {
      goto LABEL_82;
    }
  }

  sub_1ABAA1F6C();
  if ((v51 & 1) == 0)
  {
    v52 = *(v50 + 8);
    sub_1ABAFF390(0, &qword_1EB4D5F50, off_1E795FF08);
    if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
    {
      goto LABEL_83;
    }
  }

  sub_1ABAB1118();
  if (v27)
  {
    v53 = 0;
  }

  else
  {
    v53 = sub_1ABC6C3F8();
  }

  sub_1ABA818CC();
  sub_1ABAFF390(0, &qword_1ED86B920, 0x1E696AD98);
  v54 = sub_1ABAA045C();
  v55 = sub_1ABA97B70(v54);
  sub_1ABA80B88(v55);
  if (v3)
  {
    v86 = v39;

    sub_1ABA9E6A8();
    sub_1ABA7F360();
    do
    {
      sub_1ABA9FEB0();
      sub_1ABAB54D0();
      v56 = sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20);
      v57 = sub_1ABA90834(v56);
      sub_1ABB2E9FC(v57, v58, &qword_1EB4D9BF0, &qword_1ABF34240);
      sub_1ABAA4E64();
      sub_1ABA9A498();
      sub_1ABA9754C();
      v59 = objc_allocWithZone(GDGraphDateRelationship);
      sub_1ABA9EFD8();

      sub_1ABA8E288();
      v60 = sub_1ABA9F354();
      sub_1ABC6AA68(v60);
      sub_1ABF24B94();
      sub_1ABA8B120();
      sub_1ABC6C3E0();
      sub_1ABF24BA4();
      sub_1ABAA1318();
    }

    while (!v27);
  }

  else
  {
  }

  sub_1ABAB56E0();
  v61 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABA9FFF0(MEMORY[0x1E69E7CC0]);
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABAB587C();
    while (1)
    {
      sub_1ABA8A95C();
      if (v62)
      {
        break;
      }

      if (![sub_1ABAA0CD0() initWithValue_])
      {
        goto LABEL_75;
      }

      sub_1ABA8B4D4();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
      if (v3 == v46)
      {
        v61 = v86;
        goto LABEL_53;
      }
    }

    __break(1u);
    goto LABEL_71;
  }

LABEL_53:
  sub_1ABAA2640(v61);
  v63 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABAA0318();
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABAB52F8();
    while (1)
    {
      sub_1ABA89C88();
      if (v62)
      {
        break;
      }

      if (![sub_1ABC6C410() initWithValue_])
      {
        goto LABEL_76;
      }

      sub_1ABA8B6AC();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
      if (v3 == v63)
      {
        v63 = v86;
        goto LABEL_59;
      }
    }

LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

LABEL_59:
  sub_1ABAA111C();
  v64 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABA8AF3C();
    sub_1ABAFF390(0, &qword_1EB4D5F50, off_1E795FF08);
    swift_getObjCClassFromMetadata();
    sub_1ABA88678();
    while (1)
    {
      sub_1ABA9F274();
      if (v62)
      {
        goto LABEL_72;
      }

      if (![sub_1ABAB0F94() initWithValue_])
      {
        goto LABEL_77;
      }

      sub_1ABAA0178();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
      if (v3 == v7)
      {
        v64 = v86;
        break;
      }
    }
  }

  sub_1ABA8282C();
  v65 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABA8A628();
    do
    {
      v66 = sub_1ABA95120();
      sub_1ABAAD268(v66);
      sub_1ABA9DFA0();
      sub_1ABAB6908();
      sub_1ABA9E0F4();
      sub_1ABF24BA4();
      v3 = (v3 - 1);
    }

    while (v3);
    v65 = v86;
  }

  sub_1ABA7AD30();
  v67 = MEMORY[0x1E69E7CC0];
  objc_allocWithZone(GDGraphHikingActivityEvent);
  v68 = sub_1ABA8F488();
  sub_1ABC67F50(v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v84, v63, v64, v65, v67);
  sub_1ABA89A08();
  sub_1ABA8B438();
}

void __swiftcall CustomGraphOnThePhoneActivityEvent.toObjectiveCGraphObject()(GDGraphOnThePhoneActivityEvent *__return_ptr retstr)
{
  sub_1ABA8AAB0();
  sub_1ABAA9198();
  sub_1ABA8C0D0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1ABA8F4D8();
  v9 = sub_1ABAD219C(&qword_1EB4D9BF0, &qword_1ABF34240);
  v10 = sub_1ABA7AB80(v9);
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABA7E77C(v11, v81);
  MEMORY[0x1EEE9AC00](v12);
  sub_1ABA99440(v13, v14, v15, v16, v17, v18, v19, v20, v82);
  MEMORY[0x1EEE9AC00](v21);
  sub_1ABA954CC();
  v22 = sub_1ABAD219C(&qword_1EB4D5F20, &qword_1ABF4F358);
  sub_1ABA7AB80(v22);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v23);
  sub_1ABA9587C();
  sub_1ABAFF390(0, &qword_1EB4D6050, off_1E79600A8);
  if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
  {
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  v24 = sub_1ABA90CF4();
  v25 = type metadata accessor for CustomGraphOnThePhoneActivityEvent(v24);
  sub_1ABAA0EE8(v25);
  v26 = sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
  sub_1ABA8B2C0(&qword_1EB4D5F20, &qword_1ABF4F358, *(v26 + 28));
  sub_1ABAA5898();
  if (v27)
  {

    sub_1ABC6AAC4(v1, &qword_1EB4D5F20);
  }

  else
  {
    sub_1ABA89DD8();
    sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20);
    sub_1ABA8C968();
    v3 = &qword_1EB4D9BF0;
    v6 = v4;
    sub_1ABC6C36C(v28);
    sub_1ABAA45A8();
    sub_1ABA84188();
    sub_1ABAA295C();
    v29 = objc_allocWithZone(GDGraphDateRelationship);
    sub_1ABA89B58();

    v30 = sub_1ABAA40C4();
    sub_1ABC6C440(v30);
  }

  sub_1ABA969FC();
  if (v6)
  {
    sub_1ABA9FC20();
    sub_1ABA97FF8();
    while (1)
    {
      sub_1ABA8E96C();
      if (v31)
      {
        sub_1ABA8908C();
      }

      else
      {
        v32 = sub_1ABAB5AC8();
        sub_1ABAFF390(v32, v33, off_1E79600C8);
        v34 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        sub_1ABA96FC0();

        if (!sub_1ABAB65E0())
        {
          goto LABEL_78;
        }
      }

      v35 = v3[2];
      if (v35)
      {
        break;
      }

      v1 = MEMORY[0x1E69E7CC0];
LABEL_16:
      ++v5;
      v38 = objc_allocWithZone(GDGraphAttendeeRelationship);
      sub_1ABA9358C();
      sub_1ABC69D78();
      sub_1ABA9DE68();

      sub_1ABF24B94();
      sub_1ABAB67A0();
      sub_1ABA9E200();
      sub_1ABF24BA4();
      if (v5 == v6)
      {
        sub_1ABA9EFE4();
        goto LABEL_18;
      }
    }

    sub_1ABC6C428(MEMORY[0x1E69E7CC0]);
    sub_1ABA88B74();
    v36 = sub_1ABA8BCD4();
    sub_1ABAFF390(v36, v37, off_1E79600C8);
    swift_getObjCClassFromMetadata();
    sub_1ABA8BAF4();
    while ([sub_1ABA90FC8() initWithValue_])
    {
      sub_1ABA88C70();
      sub_1ABC6C3C4();
      sub_1ABA88D50();
      sub_1ABF24BA4();
      if (!--v35)
      {
        sub_1ABA9F1A0();
        goto LABEL_16;
      }
    }

    goto LABEL_73;
  }

LABEL_18:
  sub_1ABAB510C();
  v39 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    sub_1ABA8A3C0();
    sub_1ABA97FF8();
    while (1)
    {
      sub_1ABA8E96C();
      if (v40)
      {
        sub_1ABA8908C();
      }

      else
      {
        v41 = sub_1ABA8CB08();
        sub_1ABAFF390(v41, &qword_1EB4D5F08, off_1E7960048);
        v42 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        sub_1ABA96FC0();

        if (!sub_1ABAB65E0())
        {
          goto LABEL_79;
        }
      }

      v43 = v3[2];
      if (v43)
      {
        break;
      }

      v1 = v39;
LABEL_29:
      ++v5;
      v44 = objc_allocWithZone(GDGraphLocationRelationship);
      sub_1ABA8390C();
      sub_1ABC69D78();
      sub_1ABA9DE68();

      sub_1ABF24B94();
      sub_1ABAB67A0();
      sub_1ABA9E200();
      sub_1ABF24BA4();
      if (v5 == v6)
      {
        sub_1ABA9F0B8();
        goto LABEL_31;
      }
    }

    sub_1ABC6C458();
    sub_1ABA88B74();
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABA8BAF4();
    while ([sub_1ABA90FC8() initWithValue_])
    {
      sub_1ABA88C70();
      sub_1ABC6C3C4();
      sub_1ABA88D50();
      sub_1ABF24BA4();
      if (!--v43)
      {
        v1 = v85;
        v39 = MEMORY[0x1E69E7CC0];
        v6 = v83;
        goto LABEL_29;
      }
    }

LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

LABEL_31:
  sub_1ABAABCB8();
  if (v45)
  {
    v46 = 0;
  }

  else
  {
    v47 = v3[1];
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    v46 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_];
    if (!v46)
    {
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
      return;
    }
  }

  sub_1ABAA22EC();
  if ((v48 & 1) == 0)
  {
    v49 = v3[1];
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
    {
      goto LABEL_82;
    }
  }

  sub_1ABAA1F6C();
  if ((v51 & 1) == 0)
  {
    v52 = *(v50 + 8);
    sub_1ABAFF390(0, &qword_1EB4D5F50, off_1E795FF08);
    if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
    {
      goto LABEL_83;
    }
  }

  sub_1ABAB1118();
  if (v27)
  {
    v53 = 0;
  }

  else
  {
    v53 = sub_1ABC6C3F8();
  }

  sub_1ABA818CC();
  sub_1ABAFF390(0, &qword_1ED86B920, 0x1E696AD98);
  v54 = sub_1ABAA045C();
  v55 = sub_1ABA97B70(v54);
  sub_1ABA80B88(v55);
  if (v3)
  {
    v86 = v39;

    sub_1ABA9E6A8();
    sub_1ABA7F360();
    do
    {
      sub_1ABA9FEB0();
      sub_1ABAB54D0();
      v56 = sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20);
      v57 = sub_1ABA90834(v56);
      sub_1ABB2E9FC(v57, v58, &qword_1EB4D9BF0, &qword_1ABF34240);
      sub_1ABAA4E64();
      sub_1ABA9A498();
      sub_1ABA9754C();
      v59 = objc_allocWithZone(GDGraphDateRelationship);
      sub_1ABA9EFD8();

      sub_1ABA8E288();
      v60 = sub_1ABA9F354();
      sub_1ABC6AA68(v60);
      sub_1ABF24B94();
      sub_1ABA8B120();
      sub_1ABC6C3E0();
      sub_1ABF24BA4();
      sub_1ABAA1318();
    }

    while (!v27);
  }

  else
  {
  }

  sub_1ABAB56E0();
  v61 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABA9FFF0(MEMORY[0x1E69E7CC0]);
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABAB587C();
    while (1)
    {
      sub_1ABA8A95C();
      if (v62)
      {
        break;
      }

      if (![sub_1ABAA0CD0() initWithValue_])
      {
        goto LABEL_75;
      }

      sub_1ABA8B4D4();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
      if (v3 == v46)
      {
        v61 = v86;
        goto LABEL_53;
      }
    }

    __break(1u);
    goto LABEL_71;
  }

LABEL_53:
  sub_1ABAA2640(v61);
  v63 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABAA0318();
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABAB52F8();
    while (1)
    {
      sub_1ABA89C88();
      if (v62)
      {
        break;
      }

      if (![sub_1ABC6C410() initWithValue_])
      {
        goto LABEL_76;
      }

      sub_1ABA8B6AC();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
      if (v3 == v63)
      {
        v63 = v86;
        goto LABEL_59;
      }
    }

LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

LABEL_59:
  sub_1ABAA111C();
  v64 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABA8AF3C();
    sub_1ABAFF390(0, &qword_1EB4D5F50, off_1E795FF08);
    swift_getObjCClassFromMetadata();
    sub_1ABA88678();
    while (1)
    {
      sub_1ABA9F274();
      if (v62)
      {
        goto LABEL_72;
      }

      if (![sub_1ABAB0F94() initWithValue_])
      {
        goto LABEL_77;
      }

      sub_1ABAA0178();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
      if (v3 == v7)
      {
        v64 = v86;
        break;
      }
    }
  }

  sub_1ABA8282C();
  v65 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    sub_1ABA8A628();
    do
    {
      v66 = sub_1ABA95120();
      sub_1ABAAD268(v66);
      sub_1ABA9DFA0();
      sub_1ABAB6908();
      sub_1ABA9E0F4();
      sub_1ABF24BA4();
      v3 = (v3 - 1);
    }

    while (v3);
    v65 = v86;
  }

  sub_1ABA7AD30();
  v67 = MEMORY[0x1E69E7CC0];
  objc_allocWithZone(GDGraphOnThePhoneActivityEvent);
  v68 = sub_1ABA8F488();
  sub_1ABC67F50(v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v84, v63, v64, v65, v67);
  sub_1ABA89A08();
  sub_1ABA8B438();
}