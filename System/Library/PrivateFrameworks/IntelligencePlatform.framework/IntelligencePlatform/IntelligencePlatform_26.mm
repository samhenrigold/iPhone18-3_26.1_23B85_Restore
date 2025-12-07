void __swiftcall CustomGraphFacetimeActivityEvent.toObjectiveCGraphObject()(GDGraphFacetimeActivityEvent *__return_ptr retstr)
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
  sub_1ABAFF390(0, &qword_1EB4D6058, off_1E795FFF0);
  if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
  {
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  v24 = sub_1ABA90CF4();
  v25 = type metadata accessor for CustomGraphFacetimeActivityEvent(v24);
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
  objc_allocWithZone(GDGraphFacetimeActivityEvent);
  v68 = sub_1ABA8F488();
  sub_1ABC67F50(v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v84, v63, v64, v65, v67);
  sub_1ABA89A08();
  sub_1ABA8B438();
}

void __swiftcall CustomGraphDrivingActivityEvent.toObjectiveCGraphObject()(GDGraphDrivingActivityEvent *__return_ptr retstr)
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
  sub_1ABAFF390(0, &qword_1EB4D6060, off_1E795FFA0);
  if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
  {
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  v24 = sub_1ABA90CF4();
  v25 = type metadata accessor for CustomGraphDrivingActivityEvent(v24);
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
  objc_allocWithZone(GDGraphDrivingActivityEvent);
  v68 = sub_1ABA8F488();
  sub_1ABC67F50(v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v84, v63, v64, v65, v67);
  sub_1ABA89A08();
  sub_1ABA8B438();
}

void __swiftcall CustomGraphBehaviorActivityEvent.toObjectiveCGraphObject()(GDGraphBehaviorActivityEvent *__return_ptr retstr)
{
  sub_1ABA8AAB0();
  sub_1ABAA9198();
  sub_1ABA8C0D0();
  v119[1] = v8;
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA8F4D8();
  v10 = sub_1ABAD219C(&qword_1EB4D9BF0, &qword_1ABF34240);
  v11 = sub_1ABA7AB80(v10);
  MEMORY[0x1EEE9AC00](v11);
  sub_1ABA7AC18();
  v14 = v12 - v13;
  MEMORY[0x1EEE9AC00](v15);
  sub_1ABA99440(v16, v17, v18, v19, v20, v21, v22, v23, v119[0]);
  MEMORY[0x1EEE9AC00](v24);
  v26 = v119 - v25;
  v27 = sub_1ABAD219C(&qword_1EB4D5F20, &qword_1ABF4F358);
  sub_1ABA7AB80(v27);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v28);
  sub_1ABA9587C();
  sub_1ABAFF390(0, &qword_1EB4D6068, off_1E795FF38);
  if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
  {
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  v29 = sub_1ABA90CF4();
  v30 = type metadata accessor for CustomGraphBehaviorActivityEvent(v29);
  sub_1ABAA0EE8(v30);
  v31 = sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
  sub_1ABA8B2C0(&qword_1EB4D5F20, &qword_1ABF4F358, *(v31 + 28));
  sub_1ABAA5898();
  v120 = v6;
  v119[16] = v3;
  v119[17] = v2;
  v119[15] = v4;
  v125 = v7;
  v119[0] = v5;
  v126 = v14;
  v124 = v26;
  if (v32)
  {

    sub_1ABC6AAC4(v1, &qword_1EB4D5F20);
    v119[14] = 0;
  }

  else
  {
    sub_1ABA89DD8();
    sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20);
    sub_1ABA8C968();
    v3 = &qword_1EB4D9BF0;
    sub_1ABA9E550(v5 + v33, v26);
    v34 = sub_1ABAA3560();
    sub_1ABA8B8D0(v34);
    v35 = sub_1ABAA3914();
    sub_1ABA9E550(v35, v126);
    sub_1ABAA295C();
    v36 = objc_allocWithZone(GDGraphDateRelationship);
    sub_1ABA89B58();

    sub_1ABA96094();
    v43 = sub_1ABC69E44(v37, v38, v39, v40, v41, v42);
    sub_1ABC6C440(v43);
  }

  v44 = v121;
  v45 = *(*(v6 + v121[7]) + 16);
  v46 = MEMORY[0x1E69E7CC0];
  if (v45)
  {
    sub_1ABA9FC20();
    sub_1ABA97FF8();
    while (1)
    {
      sub_1ABA8E96C();
      if (v47)
      {
        sub_1ABA8908C();
      }

      else
      {
        v48 = sub_1ABA8CB08();
        sub_1ABAFF390(v48, &qword_1EB4D5EF8, off_1E79600C8);
        v49 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        sub_1ABA96FC0();

        if (!sub_1ABAB65E0())
        {
          goto LABEL_80;
        }
      }

      v50 = v3[2];
      if (v50)
      {
        break;
      }

LABEL_16:
      ++v6;
      v54 = objc_allocWithZone(GDGraphAttendeeRelationship);
      sub_1ABA8390C();
      sub_1ABC69D78();
      sub_1ABA9DE68();

      sub_1ABF24B94();
      sub_1ABAB67A0();
      sub_1ABA9E200();
      sub_1ABF24BA4();
      if (v6 == v45)
      {
        v46 = v130;
        v6 = v120;
        v44 = v121;
        goto LABEL_18;
      }
    }

    sub_1ABC6C428(MEMORY[0x1E69E7CC0]);
    sub_1ABA88DF8();
    sub_1ABAFF390(0, &qword_1EB4D5EF8, off_1E79600C8);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v52 = v3 + 4;
    while (1)
    {
      v53 = *v52++;
      if (![objc_allocWithZone(ObjCClassFromMetadata) initWithValue_])
      {
        goto LABEL_75;
      }

      sub_1ABA88C70();
      sub_1ABC6C3C4();
      sub_1ABA88D50();
      sub_1ABF24BA4();
      if (!--v50)
      {
        sub_1ABA9F1A0();
        goto LABEL_16;
      }
    }
  }

LABEL_18:
  v55 = *(*(v6 + v44[8]) + 16);
  v56 = MEMORY[0x1E69E7CC0];
  v119[13] = v46;
  if (v55)
  {
    sub_1ABAA0318();
    sub_1ABAA0AA4();
    v122 = v55;
    v123 = v57;
    v58 = v55;
    while (1)
    {
      sub_1ABA8E96C();
      if (v59)
      {
        sub_1ABA8908C();
      }

      else
      {
        v60 = sub_1ABAB5AC8();
        sub_1ABAFF390(v60, v61, off_1E7960048);
        v62 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        sub_1ABA96FC0();

        if (!sub_1ABAB65E0())
        {
          goto LABEL_81;
        }
      }

      v63 = *(v55 + 16);
      if (v63)
      {
        break;
      }

LABEL_29:
      ++v6;
      v69 = objc_allocWithZone(GDGraphLocationRelationship);
      sub_1ABA9358C();
      sub_1ABC69D78();
      sub_1ABA9DE68();

      sub_1ABF24B94();
      sub_1ABAB67A0();
      sub_1ABA9E200();
      sub_1ABF24BA4();
      if (v6 == v58)
      {
        v70 = v130;
        v6 = v120;
        v44 = v121;
        goto LABEL_32;
      }
    }

    v129 = v56;

    sub_1ABA88DF8();
    v64 = sub_1ABA8BCD4();
    sub_1ABAFF390(v64, v65, off_1E7960048);
    v66 = swift_getObjCClassFromMetadata();
    v67 = (v55 + 32);
    while (1)
    {
      v68 = *v67++;
      if (![objc_allocWithZone(v66) initWithValue_])
      {
        break;
      }

      sub_1ABA88C70();
      sub_1ABC6C3C4();
      sub_1ABA88D50();
      sub_1ABF24BA4();
      if (!--v63)
      {
        v56 = MEMORY[0x1E69E7CC0];
        v58 = v122;
        goto LABEL_29;
      }
    }

LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  v70 = MEMORY[0x1E69E7CC0];
LABEL_32:
  v71 = v6 + v44[9];
  if (*(v71 + 16))
  {
    v72 = 0;
  }

  else
  {
    v73 = *(v71 + 8);
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    v72 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_];
    if (!v72)
    {
LABEL_83:
      __break(1u);
      goto LABEL_84;
    }
  }

  v123 = v71;
  v74 = v6 + v44[10];
  if (*(v74 + 16))
  {
    v75 = v56;
    v76 = 0;
  }

  else
  {
    v75 = v56;
    v77 = *(v74 + 8);
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    v76 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_];
    if (!v76)
    {
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
      return;
    }
  }

  v78 = v6 + v44[11];
  v79 = *(v78 + 16);
  v122 = v74;
  if ((v79 & 1) == 0)
  {
    v80 = *(v78 + 8);
    sub_1ABAFF390(0, &qword_1EB4D5F50, off_1E795FF08);
    if (![objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
    {
      goto LABEL_85;
    }
  }

  sub_1ABA89F20();
  v119[10] = v81;
  v119[2] = v82;
  if (v32)
  {
    v83 = 0;
  }

  else
  {
    v83 = sub_1ABC6C3F8();
  }

  v121 = v78;
  v119[11] = v76;
  v119[12] = v72;
  v120 = v70;
  sub_1ABA9F4DC();
  sub_1ABAFF390(0, &qword_1ED86B920, 0x1E696AD98);
  v119[9] = sub_1ABAA045C();
  v119[8] = sub_1ABC6C834(v6 + v44[13]);
  v84 = v6 + v44[14];
  v119[7] = *(v84 + 8);
  v119[4] = v84;
  v85 = *(v6 + 8);
  sub_1ABAA154C();
  v119[6] = v86;
  v119[5] = v85;
  if (v74)
  {
    v130 = v75;

    sub_1ABA9E6A8();
    sub_1ABA935AC();
    v127 = *(v87 + 72);
    v75 = v119[0];
    do
    {
      sub_1ABA9FEB0();
      sub_1ABAB54D0();
      v88 = sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20);
      v89 = sub_1ABA90834(v88);
      sub_1ABB2E9FC(v89, v90, &qword_1EB4D9BF0, &qword_1ABF34240);
      sub_1ABAA4E64();
      sub_1ABA9A498();
      sub_1ABA9754C();
      v91 = objc_allocWithZone(GDGraphDateRelationship);
      sub_1ABA9EFD8();

      sub_1ABA8E288();
      v92 = sub_1ABA9F354();
      sub_1ABC6AA68(v92);
      sub_1ABF24B94();
      sub_1ABA8B120();
      sub_1ABC6C3E0();
      sub_1ABF24BA4();
      sub_1ABAA1318();
    }

    while (!v32);
  }

  else
  {
  }

  sub_1ABAB56E0();
  v93 = MEMORY[0x1E69E7CC0];
  if (v74)
  {
    sub_1ABA9FFF0(MEMORY[0x1E69E7CC0]);
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABAB587C();
    while (1)
    {
      sub_1ABA8A95C();
      if (v94)
      {
        break;
      }

      if (![sub_1ABAA0CD0() initWithValue_])
      {
        goto LABEL_77;
      }

      sub_1ABA8B4D4();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
      if (v74 == v72)
      {
        v93 = v130;
        goto LABEL_55;
      }
    }

    __break(1u);
    goto LABEL_73;
  }

LABEL_55:
  sub_1ABAA2640(v93);
  v95 = MEMORY[0x1E69E7CC0];
  if (v74)
  {
    sub_1ABAA0318();
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    swift_getObjCClassFromMetadata();
    sub_1ABAB52F8();
    while (1)
    {
      sub_1ABA89C88();
      if (v94)
      {
        break;
      }

      if (![sub_1ABC6C410() initWithValue_])
      {
        goto LABEL_78;
      }

      sub_1ABA8B6AC();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
      if (v74 == v95)
      {
        v95 = v130;
        goto LABEL_61;
      }
    }

LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

LABEL_61:
  sub_1ABAA111C();
  v96 = MEMORY[0x1E69E7CC0];
  if (v74)
  {
    sub_1ABA8AF3C();
    sub_1ABAFF390(0, &qword_1EB4D5F50, off_1E795FF08);
    swift_getObjCClassFromMetadata();
    sub_1ABA88678();
    while (1)
    {
      sub_1ABA9F274();
      if (v94)
      {
        goto LABEL_74;
      }

      if (![sub_1ABAB0F94() initWithValue_])
      {
        goto LABEL_79;
      }

      sub_1ABAA0178();
      sub_1ABC6C3A8();
      sub_1ABA88FB0();
      sub_1ABF24BA4();
      if (v74 == v75)
      {
        v96 = v130;
        break;
      }
    }
  }

  sub_1ABA8C5A8();
  v97 = MEMORY[0x1E69E7CC0];
  if (v74)
  {
    sub_1ABA8A628();
    do
    {
      v98 = sub_1ABA95120();
      sub_1ABAAD268(v98);
      sub_1ABA9DFA0();
      sub_1ABAB6908();
      sub_1ABA9E0F4();
      sub_1ABF24BA4();
      --v74;
    }

    while (v74);
    v97 = v130;
  }

  sub_1ABA8C5A8();
  v99 = MEMORY[0x1E69E7CC0];
  sub_1ABAA3CF0();
  v101 = *v100;
  objc_allocWithZone(GDGraphBehaviorActivityEvent);

  v118 = v127;
  v117 = v128;
  sub_1ABA8A034();
  v116 = v102;
  sub_1ABA9F6D8();
  v103 = sub_1ABA8F488();
  sub_1ABC6858C(v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v95, v96, v97, v99, v101);
  sub_1ABA8B438();
}

void __swiftcall CustomGraphCalendarEvent.toObjectiveCGraphObject()(GDGraphCalendarEvent *__return_ptr retstr)
{
  sub_1ABA7E2A8();
  v4 = sub_1ABAD219C(&qword_1EB4D9BF0, &qword_1ABF34240);
  v5 = sub_1ABA7AB80(v4);
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA7AC18();
  v8 = v6 - v7;
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA89308();
  MEMORY[0x1EEE9AC00](v10);
  v101 = sub_1ABC6C7F4();
  sub_1ABA7BB64();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  sub_1ABA7BC58();
  v16 = v15 - v14;
  v17 = *v1;
  v91 = v1[2];
  v96 = v1[3];
  v18 = v1[4];
  v90 = v1[5];
  v19 = *(v1 + 48);
  ObjCClassFromMetadata = v1[7];
  v94 = v1[8];
  v93 = v1[9];
  v92 = v1[10];
  sub_1ABAFF390(0, &qword_1EB4D6070, off_1E795FF58);
  v21 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_];
  if (!v21)
  {
LABEL_63:
    __break(1u);
    return;
  }

  v89 = v21;
  v22 = *(v18 + 16);
  if (v22)
  {
    v86 = v19;
    v87 = ObjCClassFromMetadata;
    v110[0] = MEMORY[0x1E69E7CC0];

    sub_1ABF24BC4();
    v107 = v3;
    v23 = v18 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v98 = *(v12 + 72);
    do
    {
      v104 = v22;
      sub_1ABC6AA04(v23, v16);
      v24 = (v16 + v101[5]);
      v25 = sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20);
      v26 = sub_1ABA952DC(v25);
      sub_1ABB2E9FC(v26, v107, &qword_1EB4D9BF0, &qword_1ABF34240);
      v27 = (v16 + v101[6]);
      v3 = v2;
      sub_1ABB2E9FC(v27 + v111, v2, &qword_1EB4D9BF0, &qword_1ABF34240);
      v28 = (v16 + v101[7]);
      sub_1ABB2E9FC(v28 + v111, v8, &qword_1EB4D9BF0, &qword_1ABF34240);
      v29 = *v24;
      v30 = *v27;
      v31 = *v28;
      objc_allocWithZone(GDGraphDateRelationship);

      sub_1ABC69E44(v107, v2, v8, v29, v30, v31);
      v32 = sub_1ABC6C59C();
      sub_1ABC6AA68(v32);
      sub_1ABF24B94();
      sub_1ABA9E334();
      sub_1ABA9E200();
      sub_1ABF24BA4();
      v23 += v98;
      --v22;
    }

    while (v104 != 1);
    v99 = v110[0];
    ObjCClassFromMetadata = v87;
    v19 = v86;
  }

  else
  {

    v99 = MEMORY[0x1E69E7CC0];
  }

  sub_1ABAFF390(0, &qword_1ED86B920, 0x1E696AD98);
  v97 = sub_1ABC6433C(v19);
  v33 = ObjCClassFromMetadata[2];
  v34 = MEMORY[0x1E69E7CC0];
  if (v33)
  {
    v110[0] = MEMORY[0x1E69E7CC0];
    sub_1ABF24BC4();
    v3 = ObjCClassFromMetadata + 14;
    do
    {
      v105 = *(v3 - 4);
      v108 = *(v3 - 7);
      v35 = *(v3 - 2);
      v3 += 11;
      v36 = objc_allocWithZone(GDGraphIdentifierRelationship);

      ObjCClassFromMetadata = sub_1ABC6C5A8(v108, v37, v105, v38, v39, v40, v41, v42, v35);
      sub_1ABF24B94();
      sub_1ABA88ED0();
      sub_1ABC6C494();
      sub_1ABF24BA4();
      --v33;
    }

    while (v33);
    v34 = v110[0];
  }

  v88 = v34;
  v43 = *(v94 + 16);
  v44 = MEMORY[0x1E69E7CC0];
  if (v43)
  {
    sub_1ABC6C47C(MEMORY[0x1E69E7CC0]);
    sub_1ABF24BC4();
    v45 = 0;
    v102 = v43;
    while (1)
    {
      sub_1ABA8D3D4((v94 + 32 + (v45 << 6)));
      v46 = v112;
      if (v114)
      {
        v47 = sub_1ABC6C73C();
        sub_1ABB2E9FC(v47, v48, &qword_1EB4D1898, &qword_1ABF33A28);
      }

      else
      {
        v49 = v113;
        sub_1ABAFF390(0, &qword_1EB4D5EF8, off_1E79600C8);
        ObjCClassFromMetadata = objc_allocWithZone(swift_getObjCClassFromMetadata());
        v50 = sub_1ABC6C73C();
        sub_1ABB2E9FC(v50, v51, &qword_1EB4D1898, &qword_1ABF33A28);

        if (![ObjCClassFromMetadata initWithValue_])
        {
          goto LABEL_60;
        }
      }

      v52 = *(v46 + 16);
      if (v52)
      {
        break;
      }

LABEL_22:
      ++v45;
      v55 = objc_allocWithZone(GDGraphAttendeeRelationship);
      sub_1ABAA2654();
      sub_1ABC6C470();
      sub_1ABC69D78();
      v3 = &qword_1ABF33A28;
      sub_1ABC6AAC4(v110, &qword_1EB4D1898);
      sub_1ABF24B94();
      sub_1ABA8965C();
      sub_1ABA9E200();
      sub_1ABF24BA4();
      if (v45 == v43)
      {
        v44 = v115;
        goto LABEL_24;
      }
    }

    sub_1ABF24BC4();
    sub_1ABAFF390(0, &qword_1EB4D5EF8, off_1E79600C8);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v53 = (v46 + 32);
    while (1)
    {
      v54 = *v53++;
      if (![objc_allocWithZone(ObjCClassFromMetadata) initWithValue_])
      {
        break;
      }

      sub_1ABF24B94();
      sub_1ABA88ED0();
      sub_1ABF24BE4();
      sub_1ABF24BA4();
      if (!--v52)
      {
        v43 = v102;
        goto LABEL_22;
      }
    }

    __break(1u);
    goto LABEL_58;
  }

LABEL_24:
  v95 = v44;
  v56 = *(v93 + 16);
  v57 = MEMORY[0x1E69E7CC0];
  if (v56)
  {
    v115 = MEMORY[0x1E69E7CC0];
    sub_1ABF24BC4();
    sub_1ABAA0AA4();
    v103 = v56;
    v106 = v58;
    while (1)
    {
      sub_1ABA8D3D4((v106 + (v3 << 6)));
      v59 = v112;
      if (v114)
      {
        v60 = sub_1ABC6C73C();
        sub_1ABB2E9FC(v60, v61, &qword_1EB4D1898, &qword_1ABF33A28);
      }

      else
      {
        v62 = v113;
        sub_1ABAFF390(0, &qword_1EB4D5EF8, off_1E79600C8);
        v63 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        v64 = sub_1ABC6C73C();
        sub_1ABB2E9FC(v64, v65, &qword_1EB4D1898, &qword_1ABF33A28);

        if (![v63 initWithValue_])
        {
          goto LABEL_61;
        }
      }

      ObjCClassFromMetadata = *(v59 + 16);
      if (ObjCClassFromMetadata)
      {
        break;
      }

LABEL_35:
      v3 = (v3 + 1);
      v69 = objc_allocWithZone(GDGraphAttendeeRelationship);
      sub_1ABC6C470();
      sub_1ABC69D78();
      sub_1ABC6AAC4(v110, &qword_1EB4D1898);
      sub_1ABF24B94();
      sub_1ABA8965C();
      sub_1ABA9E200();
      sub_1ABF24BA4();
      if (v3 == v56)
      {
        v57 = v115;
        goto LABEL_37;
      }
    }

    sub_1ABF24BC4();
    sub_1ABAFF390(0, &qword_1EB4D5EF8, off_1E79600C8);
    v66 = swift_getObjCClassFromMetadata();
    v67 = (v59 + 32);
    while (1)
    {
      v68 = *v67++;
      if (![objc_allocWithZone(v66) initWithValue_])
      {
        break;
      }

      sub_1ABF24B94();
      sub_1ABA8CFE4();
      sub_1ABF24BE4();
      sub_1ABF24BA4();
      ObjCClassFromMetadata = (ObjCClassFromMetadata - 1);
      if (!ObjCClassFromMetadata)
      {
        v56 = v103;
        goto LABEL_35;
      }
    }

LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

LABEL_37:
  v70 = *(v92 + 16);
  v71 = MEMORY[0x1E69E7CC0];
  if (v70)
  {
    v110[0] = MEMORY[0x1E69E7CC0];
    sub_1ABF24BC4();
    sub_1ABAA0AA4();
    v100 = v70;
    while (1)
    {
      sub_1ABAA08D0();
      v73 = *(v72 + 40);
      v109 = *(v72 + 32);
      if (*(v72 + 56))
      {
        sub_1ABC6C86C();
      }

      else
      {
        v74 = sub_1ABC6C794();
        sub_1ABAFF390(v74, &qword_1EB4D5F08, off_1E7960048);
        v75 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        sub_1ABC6C86C();

        if (![v75 initWithValue_])
        {
          goto LABEL_62;
        }
      }

      v76 = *(v73 + 16);
      if (v76)
      {
        break;
      }

LABEL_48:
      v3 = (v3 + 1);
      v80 = objc_allocWithZone(GDGraphLocationRelationship);
      ObjCClassFromMetadata = v109;
      sub_1ABC6C470();
      sub_1ABC69D78();

      sub_1ABF24B94();
      sub_1ABA9E334();
      sub_1ABA9E200();
      sub_1ABF24BA4();
      if (v3 == v70)
      {
        v81 = v110[0];
        v82 = v90;
        goto LABEL_51;
      }
    }

    sub_1ABF24BC4();
    sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
    v77 = swift_getObjCClassFromMetadata();
    v78 = (v73 + 32);
    while (1)
    {
      v79 = *v78++;
      if (![objc_allocWithZone(v77) initWithValue_])
      {
        break;
      }

      sub_1ABF24B94();
      sub_1ABA88ED0();
      sub_1ABC6C494();
      sub_1ABF24BA4();
      if (!--v76)
      {
        v71 = MEMORY[0x1E69E7CC0];
        v70 = v100;
        goto LABEL_48;
      }
    }

LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v81 = MEMORY[0x1E69E7CC0];
  v82 = v90;
LABEL_51:
  v83 = *(v82 + 16);
  sub_1ABC6C7A0();
  if (v83)
  {
    v110[0] = MEMORY[0x1E69E7CC0];

    sub_1ABF24BC4();
    v84 = 32;
    do
    {
      ObjCClassFromMetadata = sub_1ABC6C854(objc_allocWithZone(MEMORY[0x1E696AD98]));
      sub_1ABF24B94();
      sub_1ABA88ED0();
      sub_1ABC6C494();
      sub_1ABF24BA4();
      ++v84;
      --v83;
    }

    while (v83);

    v85 = v110[0];
    sub_1ABC6C7A0();
  }

  else
  {

    v85 = MEMORY[0x1E69E7CC0];
  }

  objc_allocWithZone(GDGraphCalendarEvent);
  sub_1ABC688F8(v89, v91, v96, v99, v97, v88, v95, v57, v81, v71, ObjCClassFromMetadata, v85);
  sub_1ABA7BC1C();
}

id sub_1ABC6433C(char a1)
{
  if (a1 == 2)
  {
    return 0;
  }

  else
  {
    return [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithBool_];
  }
}

void __swiftcall CustomGraphSongEvent.toObjectiveCGraphObject()(GDGraphSongEvent *__return_ptr retstr)
{
  sub_1ABA7E2A8();
  v5 = v1;
  v6 = type metadata accessor for CustomGraphDateRelationship(0);
  sub_1ABA7BB64();
  v90 = v7;
  MEMORY[0x1EEE9AC00](v8);
  sub_1ABA8F4D8();
  v9 = sub_1ABAD219C(&qword_1EB4D9BF0, &qword_1ABF34240);
  v10 = sub_1ABA7AB80(v9);
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABA7AC18();
  v13 = v11 - v12;
  MEMORY[0x1EEE9AC00](v14);
  sub_1ABAA08DC();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v83 - v16;
  v18 = sub_1ABAD219C(&qword_1EB4D5F20, &qword_1ABF4F358);
  sub_1ABA7AB80(v18);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v19);
  sub_1ABA96A10();
  v20 = *v1;
  sub_1ABAFF390(0, &qword_1EB4D6078, off_1E7960158);
  v21 = &selRef_enumerateActivityEventsWithAscending_error_block_;
  v22 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_];
  if (!v22)
  {
LABEL_29:
    __break(1u);
    return;
  }

  v23 = v22;
  v24 = type metadata accessor for CustomGraphSongEvent(0);
  v25 = v24[5];
  v95 = v5;
  v26 = v5 + v25;
  v27 = *(sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00) + 28);
  v91 = v26;
  sub_1ABB2E9FC(&v26[v27], v2, &qword_1EB4D5F20, &qword_1ABF4F358);
  v28 = sub_1ABA7E1E0(v2, 1, v6);
  v89 = v23;
  v93 = v4;
  v94 = v6;
  v92 = v3;
  v96 = v17;
  if (v28 == 1)
  {
    v29 = v13;
    sub_1ABC6AAC4(v2, &qword_1EB4D5F20);
    v88 = 0;
  }

  else
  {
    v30 = (v2 + v6[5]);
    sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20);
    sub_1ABA8C968();
    v87 = v24;
    v31 = v17;
    sub_1ABB2E9FC(v30 + v32, v17, &qword_1EB4D9BF0, &qword_1ABF34240);
    v33 = (v2 + v6[6]);
    v34 = sub_1ABC6C730();
    sub_1ABB2E9FC(v34, v4, &qword_1EB4D9BF0, &qword_1ABF34240);
    v35 = (v2 + v6[7]);
    sub_1ABB2E9FC(v35 + v23[7], v13, &qword_1EB4D9BF0, &qword_1ABF34240);
    v36 = *v30;
    v37 = *v33;
    v38 = *v35;
    objc_allocWithZone(GDGraphDateRelationship);

    v39 = v31;
    v24 = v87;
    v29 = v13;
    v88 = sub_1ABC69E44(v39, v4, v13, v36, v37, v38);
    sub_1ABC6AA68(v2);
  }

  v40 = v24[7];
  v41 = (v95 + v24[6]);
  v42 = v41[2];
  v86 = v41[1];
  v87 = v42;
  v43 = (v95 + v40);
  v44 = *(v95 + v40 + 24);
  if (v44)
  {
    v45 = *(v43 + 40);
    v46 = v43[4];
    v99 = *(v43 + 1);
    v100 = v44;
    v101 = v46;
    v102 = v45 & 1;

    v85 = sub_1ABC64AB0(&qword_1EB4D6080, off_1E7960148, off_1E7960160);
  }

  else
  {

    v85 = 0;
  }

  v47 = *v91;
  v48 = *(*v91 + 16);
  v49 = MEMORY[0x1E69E7CC0];
  if (v48)
  {
    v83 = v43;
    v84 = v41;
    v98 = MEMORY[0x1E69E7CC0];
    sub_1ABF24BC4();
    v50 = v47 + ((*(v90 + 80) + 32) & ~*(v90 + 80));
    v51 = *(v90 + 72);
    v90 = v29;
    v91 = v51;
    do
    {
      v95 = v48;
      v52 = v92;
      sub_1ABC6AA04(v50, v92);
      v53 = v94;
      v54 = (v52 + *(v94 + 20));
      sub_1ABAD219C(&qword_1EB4D5F00, &unk_1ABF50B20);
      sub_1ABA8C968();
      sub_1ABB2E9FC(v54 + v55, v96, &qword_1EB4D9BF0, &qword_1ABF34240);
      v56 = (v52 + *(v53 + 24));
      v57 = v93;
      sub_1ABB2E9FC(v56 + SHIDWORD(v100), v93, &qword_1EB4D9BF0, &qword_1ABF34240);
      v58 = (v52 + *(v53 + 28));
      v59 = sub_1ABC6C730();
      v60 = v90;
      sub_1ABB2E9FC(v59, v90, &qword_1EB4D9BF0, &qword_1ABF34240);
      v61 = *v54;
      v62 = *v56;
      v63 = *v58;
      objc_allocWithZone(GDGraphDateRelationship);

      sub_1ABC69E44(v96, v57, v60, v61, v62, v63);
      v64 = sub_1ABC6C7B4();
      v65 = v95;
      sub_1ABC6AA68(v64);
      sub_1ABF24B94();
      sub_1ABC6C884();
      sub_1ABF24BE4();
      sub_1ABF24BA4();
      v50 += v91;
      v48 = (v65 - 1);
    }

    while (v48);
    v66 = v98;
    v49 = MEMORY[0x1E69E7CC0];
    v43 = v83;
    v41 = v84;
    v21 = &selRef_enumerateActivityEventsWithAscending_error_block_;
  }

  else
  {
    v66 = MEMORY[0x1E69E7CC0];
  }

  v67 = *v41;
  v68 = *v43;
  v69 = *(*v43 + 16);
  if (v69)
  {
    v93 = v67;
    v94 = v66;
    v98 = v49;

    sub_1ABF24BC4();
    v70 = 0;
    v95 = v69;
    v96 = (v68 + 32);
    while (1)
    {
      sub_1ABC6C748();
      if (v72)
      {
      }

      else
      {
        v73 = *(v71 + 24);
        sub_1ABAFF390(0, &qword_1EB4D6080, off_1E7960148);
        v74 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        sub_1ABA94A78();

        if (![&v98 v21[250]])
        {
          goto LABEL_28;
        }
      }

      v75 = MEMORY[0x10];
      if (MEMORY[0x10])
      {
        break;
      }

LABEL_23:
      v70 = (v70 + 1);
      v79 = objc_allocWithZone(GDGraphSongRelationship);
      sub_1ABC6C488();
      sub_1ABC69D04(v80, v81, &qword_1EB4D6080, off_1E7960148);
      sub_1ABC6C59C();

      sub_1ABF24B94();
      sub_1ABA9E334();
      sub_1ABA9E200();
      sub_1ABF24BA4();
      if (v70 == v69)
      {
        v82 = v98;
        v67 = v93;
        v66 = v94;
        goto LABEL_26;
      }
    }

    v97 = v49;
    sub_1ABF24BC4();
    sub_1ABAFF390(0, &qword_1EB4D6080, off_1E7960148);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v77 = 32;
    while (1)
    {
      v78 = *v77;
      v77 += 8;
      if (![objc_allocWithZone(ObjCClassFromMetadata) v21[250]])
      {
        break;
      }

      sub_1ABF24B94();
      sub_1ABF24BD4();
      sub_1ABF24BE4();
      sub_1ABF24BA4();
      if (!--v75)
      {
        v49 = MEMORY[0x1E69E7CC0];
        v69 = v95;
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v82 = MEMORY[0x1E69E7CC0];
LABEL_26:
  objc_allocWithZone(GDGraphSongEvent);
  sub_1ABC68B50(v89, v88, v86, v87, v85, v66, v67, v82);
  sub_1ABA7BC1C();
}

id sub_1ABC64AB0(unint64_t *a1, void *a2, Class *a3)
{
  v7 = *(v3 + 16);
  if ((*(v3 + 32) & 1) != 0 || (v8 = *(v3 + 24), sub_1ABAFF390(0, a1, a2), (result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_]) != 0))
  {
    v10 = *(v7 + 16);
    if (!v10)
    {
LABEL_8:
      v14 = objc_allocWithZone(*a3);
      sub_1ABC6C488();
      return sub_1ABC69D04(v15, v16, a1, a2);
    }

    v17 = a3;
    sub_1ABF24BC4();
    sub_1ABAFF390(0, a1, a2);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v12 = (v7 + 32);
    while (1)
    {
      v13 = *v12++;
      result = [objc_allocWithZone(ObjCClassFromMetadata) initWithValue_];
      if (!result)
      {
        break;
      }

      sub_1ABF24B94();
      sub_1ABF24BD4();
      sub_1ABF24BE4();
      sub_1ABF24BA4();
      if (!--v10)
      {
        a3 = v17;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void __swiftcall CustomGraphLocation.toObjectiveCGraphObject()(GDGraphLocation *__return_ptr retstr)
{
  sub_1ABA7E2A8();
  v2 = v1;
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  v74 = v2[7];
  v10 = *(v2 + 5);
  v84 = *(v2 + 4);
  v85 = v10;
  v86[0] = *(v2 + 6);
  *(v86 + 9) = *(v2 + 105);
  v50 = v2[16];
  v11 = v2[46];
  v12 = v2[49];
  v45 = v2[48];
  v46 = v8;
  sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
  v13 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_];
  if (v13)
  {
    v14 = v13;
    v44 = v5;
    if (v85)
    {
      v82[0] = *(v2 + 4);
      *&v82[1] = v85;
      *(&v82[1] + 8) = *(v2 + 11);
      *(&v82[2] + 8) = *(v2 + 13);
      BYTE8(v82[3]) = *(v2 + 120);

      sub_1ABB2E9FC(&v84, __dst, &qword_1EB4D6090, &unk_1ABF50B10);
      CustomGraphLocationLatLongRelationship.toObjectiveCGraphObject()(v15);
      v17 = v16;
      __dst[0] = v82[0];
      __dst[1] = v82[1];
      __dst[2] = v82[2];
      *(&__dst[2] + 9) = *(&v82[2] + 9);
      sub_1ABC6ABF0(__dst);
    }

    else
    {

      v17 = 0;
    }

    memcpy(__dst, v2 + 17, 0xE8uLL);
    v43 = v14;
    if (sub_1ABB9AE48(__dst) == 1)
    {
      v42 = 0;
    }

    else
    {
      memcpy(__src, __dst, sizeof(__src));
      memcpy(v81, v2 + 17, sizeof(v81));
      sub_1ABC6AB40(v81, v82);
      CustomGraphLocationAddressRelationship.toObjectiveCGraphObject()(v18);
      v42 = v19;
      memcpy(v82, __src, 0xE8uLL);
      sub_1ABC6AB9C(v82);
    }

    v20 = *(v11 + 16);
    v21 = MEMORY[0x1E69E7CC0];
    v49 = v9;
    v48 = v7;
    v47 = v12;
    if (v20)
    {
      *&v82[0] = MEMORY[0x1E69E7CC0];
      sub_1ABF24BC4();
      v22 = v11 + 112;
      do
      {
        v76 = *(v22 - 32);
        v78 = *(v22 - 56);
        v23 = *(v22 - 16);
        v22 += 88;
        v24 = objc_allocWithZone(GDGraphIdentifierRelationship);

        sub_1ABC6C514(v78, v25, v76, v26, v27, v28, v29, v30, v23);
        sub_1ABF24B94();
        sub_1ABF24BD4();
        sub_1ABC6C494();
        sub_1ABF24BA4();
        --v20;
      }

      while (v20);
      v41 = *&v82[0];
      v9 = v49;
      v7 = v48;
      v21 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v41 = MEMORY[0x1E69E7CC0];
    }

    v31 = v74;
    v32 = *(v74 + 16);
    if (v32)
    {
      v81[0] = v21;

      sub_1ABF24BC4();
      v33 = 32;
      do
      {
        v82[0] = *(v31 + v33);
        v82[1] = *(v31 + v33 + 16);
        v82[2] = *(v31 + v33 + 32);
        *(&v82[2] + 9) = *(v31 + v33 + 41);
        CustomGraphLocationLatLongRelationship.toObjectiveCGraphObject()((v31 + v33));
        sub_1ABF24B94();
        sub_1ABF24BD4();
        v31 = v74;
        sub_1ABF24BE4();
        sub_1ABF24BA4();
        v33 += 64;
        --v32;
      }

      while (v32);

      v34 = v81[0];
    }

    else
    {

      v34 = MEMORY[0x1E69E7CC0];
    }

    v35 = *(v50 + 16);
    v36 = MEMORY[0x1E69E7CC0];
    if (v35)
    {
      *&v82[0] = MEMORY[0x1E69E7CC0];

      sub_1ABF24BC4();
      v37 = 0;
      do
      {
        v70 = v35;
        v64 = *(v50 + v37 + 48);
        v77 = *(v50 + v37 + 80);
        v79 = *(v50 + v37 + 56);
        v58 = *(v50 + v37 + 72);
        v59 = *(v50 + v37 + 88);
        v56 = *(v50 + v37 + 120);
        v57 = *(v50 + v37 + 96);
        v73 = *(v50 + v37 + 128);
        v75 = *(v50 + v37 + 104);
        v60 = *(v50 + v37 + 112);
        v61 = *(v50 + v37 + 136);
        v54 = *(v50 + v37 + 64);
        v55 = *(v50 + v37 + 144);
        v71 = *(v50 + v37 + 176);
        v72 = *(v50 + v37 + 152);
        v38 = *(v50 + v37 + 192);
        v62 = *(v50 + v37 + 160);
        v63 = *(v50 + v37 + 184);
        v69 = *(v50 + v37 + 200);
        v51 = *(v50 + v37 + 216);
        v68 = *(v50 + v37 + 224);
        v65 = *(v50 + v37 + 208);
        v52 = *(v50 + v37 + 240);
        v53 = *(v50 + v37 + 168);
        v66 = *(v50 + v37 + 256);
        v67 = *(v50 + v37 + 248);
        objc_allocWithZone(GDGraphLocationAddressRelationship);

        sub_1ABC6A3D4(v79, v54, v77, v59, v75, v60, v73, v61, v72, v62, v71, v63, v69, v65, v68, v39, v67, v66, v64, v58, v57, v56, v55, v53, v38, v51, v52);
        sub_1ABF24B94();
        sub_1ABF24BD4();
        sub_1ABA9E200();
        sub_1ABF24BA4();
        v37 += 232;
        --v35;
      }

      while (v70 != 1);

      v36 = *&v82[0];
      v9 = v49;
      v7 = v48;
      v12 = v47;
    }

    objc_allocWithZone(GDGraphLocation);

    sub_1ABC68CA0(v43, v44, v6, v46, v9, v17, v42, v41, v45, v12, v4, v7, v34, v36, v40);
    sub_1ABA7BC1C();
  }

  else
  {
    __break(1u);
  }
}

void __swiftcall CustomGraphLocationLatLongRelationship.toObjectiveCGraphObject()(GDGraphLocationLatLongRelationship *__return_ptr retstr)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  sub_1ABAFF390(0, &qword_1ED86B920, 0x1E696AD98);
  v16 = sub_1ABC5021C(v2, v4);
  v8 = sub_1ABC5021C(v6, v7);
  v9 = *(v3 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  if (v9)
  {
    v17 = MEMORY[0x1E69E7CC0];

    sub_1ABF24BC4();
    v11 = 32;
    do
    {
      [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
      sub_1ABF24B94();
      sub_1ABC6C7E8();
      sub_1ABF24BD4();
      sub_1ABC6C7E8();
      sub_1ABF24BE4();
      sub_1ABF24BA4();
      v11 += 8;
      --v9;
    }

    while (v9);

    v10 = v17;
  }

  v12 = *(v5 + 16);
  v13 = MEMORY[0x1E69E7CC0];
  if (v12)
  {
    v18 = MEMORY[0x1E69E7CC0];

    sub_1ABF24BC4();
    v14 = 32;
    do
    {
      [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
      sub_1ABF24B94();
      sub_1ABC6C7E8();
      sub_1ABF24BD4();
      sub_1ABC6C7E8();
      sub_1ABF24BE4();
      sub_1ABF24BA4();
      v14 += 8;
      --v12;
    }

    while (v12);

    v13 = v18;
  }

  v15 = objc_allocWithZone(GDGraphLocationLatLongRelationship);
  sub_1ABC6A78C(v16, v8, v10, v13);
}

void __swiftcall CustomGraphLocationAddressRelationship.toObjectiveCGraphObject()(GDGraphLocationAddressRelationship *__return_ptr retstr)
{
  v16 = v1[2];
  v28 = v1[3];
  v11 = v1[5];
  v12 = v1[4];
  v2 = v1[7];
  v27 = v1[6];
  v10 = v1[8];
  v26 = v1[9];
  v13 = v1[10];
  v9 = v1[11];
  v25 = v1[12];
  v14 = v1[13];
  v8 = v1[14];
  v24 = v1[15];
  v15 = v1[16];
  v7 = v1[17];
  v3 = v1[20];
  v22 = v1[21];
  v23 = v1[18];
  v4 = v1[23];
  v17 = v1[19];
  v18 = v1[22];
  v21 = v1[24];
  v6 = v1[26];
  v19 = v1[28];
  v20 = v1[27];
  objc_allocWithZone(GDGraphLocationAddressRelationship);

  sub_1ABC6A3D4(v28, v12, v27, v2, v26, v13, v25, v14, v24, v15, v23, v17, v22, v18, v21, v5, v20, v19, v16, v11, v10, v9, v8, v7, v3, v4, v6);
}

void __swiftcall CustomGraphHandleRelationship.toObjectiveCGraphObject()(GDGraphHandleRelationship *__return_ptr retstr)
{
  v2 = v1[2];
  v3 = v1[5];
  v4 = v1[6];
  v5 = objc_allocWithZone(GDGraphHandleRelationship);

  v6 = sub_1ABA7E79C();
  sub_1ABC6A044(v6, v7, v3, v4, v2);
}

void __swiftcall CustomGraphVisualIdentifierRelationship.toObjectiveCGraphObject()(GDGraphVisualIdentifierRelationship *__return_ptr retstr)
{
  v2 = v1[2];
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[7];
  v13 = v1[6];
  v14 = v1[3];
  v6 = v1[8];
  v12 = v1[9];
  v8 = v1[10];
  v7 = v1[11];
  v10 = v1[12];
  v9 = v1[13];
  v11 = objc_allocWithZone(GDGraphVisualIdentifierRelationship);

  sub_1ABC6A854(v14, v3, v13, v5, v12, v8, v10, v9, v2, v4, v6, v7);
}

GDGraphTopic __swiftcall CustomGraphTopic.toObjectiveCGraphObject()()
{
  v0 = sub_1ABC66210(&qword_1EB4D5F18, off_1E79601A0, off_1E7960198, &selRef_initWithEntityIdentifierField_qidField_allQidField_);
  result._allQid = v3;
  result._qid = v2;
  result._entityIdentifier = v1;
  result.super.isa = v0;
  return result;
}

void __swiftcall CustomGraphSong.toObjectiveCGraphObject()(GDGraphSong *__return_ptr retstr)
{
  v2 = *v1;
  v52 = v1[4];
  v53 = v1[1];
  v3 = v1[6];
  v47 = v1[5];
  v48 = v1[2];
  v55 = v1[9];
  v56 = v1[3];
  v50 = v1[10];
  v51 = v1[7];
  v45 = v1[11];
  v46 = v1[8];
  v54 = v1[12];
  v40 = v1[13];
  v4 = v1[16];
  v5 = v1[17];
  v7 = v1[18];
  v6 = v1[19];
  v42 = v1[20];
  v44 = v1[21];
  v8 = v1[23];
  v57 = v1[22];
  v43 = v1[24];
  v49 = v1[25];
  v41 = v1[27];
  v9 = v1[28];
  sub_1ABAFF390(0, &qword_1EB4D6080, off_1E7960148);
  v10 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_];
  if (v10)
  {
    v37 = v10;
    if (v4)
    {
      v11 = objc_allocWithZone(GDGraphQuantityRelationship);
      sub_1ABA94A78();

      v36 = sub_1ABC6A284(v5, v7, v4);
    }

    else
    {

      v36 = 0;
    }

    v38 = v8;
    v12 = *(v6 + 16);
    v13 = MEMORY[0x1E69E7CC0];
    v39 = v3;
    if (v12)
    {
      sub_1ABC6C47C(MEMORY[0x1E69E7CC0]);
      sub_1ABF24BC4();
      v14 = (v6 + 112);
      do
      {
        v15 = *(v14 - 8);
        v16 = *(v14 - 5);
        v17 = *(v14 - 2);
        v18 = *v14;
        v14 += 11;
        objc_allocWithZone(GDGraphIdentifierRelationship);

        sub_1ABC6C788();
        sub_1ABC6A12C(v19, v20, v21, v22, v23, v18, v15, v16, v17);
        sub_1ABF24B94();
        sub_1ABA8965C();
        sub_1ABA9E200();
        sub_1ABF24BA4();
        --v12;
      }

      while (v12);
      v58 = v59;
      v13 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v58 = MEMORY[0x1E69E7CC0];
    }

    v24 = *(v40 + 16);
    v26 = v52;
    v25 = v53;
    v27 = v49;
    if (v24)
    {
      v60 = v13;

      sub_1ABF24BC4();
      v28 = v40 + 64;
      do
      {
        v28 += 40;
        objc_allocWithZone(GDGraphQuantityRelationship);

        v29 = sub_1ABA7C298();
        sub_1ABC6A284(v29, v30, v31);
        sub_1ABF24B94();
        sub_1ABA8965C();
        sub_1ABA9E200();
        sub_1ABF24BA4();
        --v24;
      }

      while (v24);

      v32 = v60;
      v26 = v52;
      v25 = v53;
      v34 = v50;
      v33 = v51;
      v27 = v49;
    }

    else
    {

      v33 = v51;

      v34 = v50;

      v32 = MEMORY[0x1E69E7CC0];
    }

    objc_allocWithZone(GDGraphSong);

    sub_1ABC69744(v37, v48, v56, v47, v39, v46, v55, v45, v54, v36, v58, v44, v57, v43, v27, v41, v9, v25, v26, v33, v34, v32, v42, v38, v35);
  }

  else
  {
    __break(1u);
  }
}

GDGraphQuantityRelationship __swiftcall CustomGraphQuantityRelationship.toObjectiveCGraphObject()()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = objc_allocWithZone(GDGraphQuantityRelationship);

  v5 = sub_1ABC6A284(v2, v3, v1);
  result._allQuantity = v7;
  result._quantity = v6;
  result.super.isa = v5;
  return result;
}

GDGraphActivityEventType __swiftcall CustomGraphActivityEventType.toObjectiveCGraphObject()()
{
  v0 = sub_1ABC66210(&qword_1EB4D5F50, off_1E795FF08, off_1E795FF00, &selRef_initWithEntityIdentifierField_nameField_allNameField_);
  result._allName = v3;
  result._name = v2;
  result._entityIdentifier = v1;
  result.super.isa = v0;
  return result;
}

id sub_1ABC66210(unint64_t *a1, void *a2, Class *a3, uint64_t a4)
{
  v6 = *v4;
  v7 = v4[1];
  v8 = v4[2];
  v9 = v4[3];
  sub_1ABAFF390(0, a1, a2);
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_];
  if (result)
  {
    v11 = result;
    v12 = objc_allocWithZone(*a3);

    return sub_1ABC69AD4(v11, v8, v9, v7);
  }

  else
  {
    __break(1u);
  }

  return result;
}

GDGraphModeOfTransportation __swiftcall CustomGraphModeOfTransportation.toObjectiveCGraphObject()()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = *(v0 + 16);
  sub_1ABAFF390(0, &qword_1EB4D5F70, off_1E7960098);
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_];
  if (v4)
  {
    if (v3 == 8)
    {
      v8 = 0;
    }

    else
    {
      v8 = qword_1ABF4FEF0[v3];
    }

    sub_1ABAFF390(0, &qword_1ED86B920, 0x1E696AD98);
    sub_1ABC501D0(v8, v3 == 8);
    v9 = *(v1 + 16);
    v10 = MEMORY[0x1E69E7CC0];
    if (v9)
    {
      v15 = MEMORY[0x1E69E7CC0];

      sub_1ABF24BC4();
      v11 = 32;
      do
      {
        [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
        sub_1ABF24B94();
        sub_1ABF24BD4();
        sub_1ABF24BE4();
        sub_1ABF24BA4();
        ++v11;
        --v9;
      }

      while (v9);

      v10 = v15;
    }

    v12 = objc_allocWithZone(GDGraphModeOfTransportation);
    v13 = sub_1ABA7E79C();
    v4 = sub_1ABC69B6C(v13, v14, v10);
  }

  else
  {
    __break(1u);
  }

  result._allTransportationType = v7;
  result._transportationType = v6;
  result._entityIdentifier = v5;
  result.super.isa = v4;
  return result;
}

void sub_1ABC66484()
{
  sub_1ABA7E2A8();
  v2 = v1;
  v3 = *v0;
  sub_1ABAFF390(0, v4, v5);
  if ([objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_])
  {
    objc_allocWithZone(*v2);

    sub_1ABC69C10();
    sub_1ABA7BC1C();
  }

  else
  {
    __break(1u);
  }
}

id sub_1ABC66558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v9 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_1ABA94A78();
  sub_1ABAA2654();
  return sub_1ABC6A310(v10, v11, v12, a4, a5, a6);
}

id sub_1ABC665F4()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_1ABA7D0F8();
  return sub_1ABC6C1D8(v1, v2);
}

id sub_1ABC6667C(void *a1, void (*a2)(uint64_t *__return_ptr, id))
{
  a2(&v6, [a1 intValue]);
  v4 = [v2 initWithValue_];

  if (v4)
  {
  }

  return v4;
}

id _sSo28GDGraphEventEntityIdentifierC20IntelligencePlatformE012fromGDEntityD0ABSgSo0hD0C_tcfc_0(void *a1)
{
  sub_1ABC4A834(&v5, [a1 intValue]);
  v3 = [v1 initWithValue_];

  if (v3)
  {
  }

  return v3;
}

id _sSo27GDGraphSongEntityIdentifierC20IntelligencePlatformE012fromGDEntityD0ABSgSo0hD0C_tcfC_0()
{
  sub_1ABA9EFD8();
  v1 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initFromGDEntityIdentifier_];

  return v1;
}

id sub_1ABC6727C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_1ABAFF390(0, &qword_1EB4D60E8, off_1E7960030);
  v24 = sub_1ABF240C4();

  if (a4)
  {
    v23 = sub_1ABF23BD4();
  }

  else
  {
    v23 = 0;
  }

  sub_1ABAD219C(&qword_1EB4D5F38, &qword_1ABF4F360);
  v22 = sub_1ABF240C4();

  sub_1ABAD219C(&qword_1EB4D5F40, &qword_1ABF4F368);
  v21 = sub_1ABF240C4();

  sub_1ABAD219C(&qword_1EB4D5F48, &qword_1ABF4F370);
  v15 = sub_1ABF240C4();

  v18 = sub_1ABF240C4();

  sub_1ABAFF390(0, &qword_1EB4D6108, off_1E795FF80);
  v19 = sub_1ABF240C4();

  sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
  v20 = sub_1ABF240C4();

  v16 = sub_1ABF240C4();

  v26 = [v25 initWithEntityIdentifierField:a1 eventTypesField:v24 nameField:v23 dateField:a5 attendeesField:v22 cooccurringEventsField:v21 locationsField:v15 startLocationField:a9 endLocationField:a10 allNameField:v18 allDateField:v19 allStartLocationField:v20 allEndLocationField:v16];

  return v26;
}

id sub_1ABC67508(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, void *a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  sub_1ABAFF390(0, &qword_1EB4D60E8, off_1E7960030);
  v35 = sub_1ABF240C4();

  if (a4)
  {
    v34 = sub_1ABF23BD4();
  }

  else
  {
    v34 = 0;
  }

  sub_1ABAD219C(&qword_1EB4D5F38, &qword_1ABF4F360);
  v31 = sub_1ABF240C4();

  sub_1ABAD219C(&qword_1EB4D5F40, &qword_1ABF4F368);
  v29 = sub_1ABF240C4();

  v23 = sub_1ABF240C4();

  sub_1ABAD219C(&qword_1EB4D5F48, &qword_1ABF4F370);
  v24 = sub_1ABF240C4();

  v25 = sub_1ABF240C4();

  sub_1ABAFF390(0, &qword_1EB4D6108, off_1E795FF80);
  v26 = sub_1ABF240C4();

  sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
  v27 = sub_1ABF240C4();

  v28 = sub_1ABF240C4();

  sub_1ABAFF390(0, &qword_1EB4D5F50, off_1E795FF08);
  v30 = sub_1ABF240C4();

  sub_1ABAFF390(0, &qword_1ED86B920, 0x1E696AD98);
  v32 = sub_1ABF240C4();

  v33 = sub_1ABF240C4();

  v37 = [v36 initWithEntityIdentifierField:a1 eventTypesField:v35 nameField:v34 dateField:a5 attendeesField:v31 cooccurringEventsField:v29 subEventsField:v23 locationsField:v24 startLocationField:a10 endLocationField:a11 activityTypeObjectField:a12 activityTypeField:a13 confidenceField:a14 allNameField:v25 allDateField:v26 allStartLocationField:v27 allEndLocationField:v28 allActivityTypeObjectField:v30 allActivityTypeField:v32 allConfidenceField:v33];

  return v37;
}

id sub_1ABC678DC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, void *a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_1ABAFF390(0, &qword_1EB4D60E8, off_1E7960030);
  v24 = sub_1ABF240C4();

  if (a4)
  {
    v23 = sub_1ABF23BD4();
  }

  else
  {
    v23 = 0;
  }

  sub_1ABAD219C(&qword_1EB4D5F40, &qword_1ABF4F368);
  v22 = sub_1ABF240C4();

  sub_1ABAD219C(&qword_1EB4D5F48, &qword_1ABF4F370);
  v21 = sub_1ABF240C4();

  sub_1ABAD219C(&qword_1EB4D5F38, &qword_1ABF4F360);
  v18 = sub_1ABF240C4();

  v19 = sub_1ABF240C4();

  sub_1ABAFF390(0, &qword_1EB4D6108, off_1E795FF80);
  v20 = sub_1ABF240C4();

  sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
  v15 = sub_1ABF240C4();

  v16 = sub_1ABF240C4();

  v26 = [v25 initWithEntityIdentifierField:a1 eventTypesField:v24 nameField:v23 dateField:a5 cooccurringEventsField:v22 locationsField:v21 startLocationField:a8 endLocationField:a9 teamsField:v18 allNameField:v19 allDateField:v20 allStartLocationField:v15 allEndLocationField:v16];

  return v26;
}

id sub_1ABC67B68(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, void *a7, void *a8, void *a9, void *a10, void *a11, void *a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  if (a3)
  {
    v36 = sub_1ABF23BD4();
  }

  else
  {
    v36 = 0;
  }

  sub_1ABAD219C(&qword_1EB4D5F38, &qword_1ABF4F360);
  v34 = sub_1ABF240C4();

  sub_1ABAD219C(&qword_1EB4D5F48, &qword_1ABF4F370);
  v31 = sub_1ABF240C4();

  v43 = sub_1ABF240C4();

  sub_1ABAFF390(0, &qword_1EB4D6108, off_1E795FF80);
  v25 = sub_1ABF240C4();

  sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
  v26 = sub_1ABF240C4();

  v27 = sub_1ABF240C4();

  sub_1ABAFF390(0, &qword_1EB4D5F50, off_1E795FF08);
  v28 = sub_1ABF240C4();

  sub_1ABAFF390(0, &qword_1ED86B920, 0x1E696AD98);
  v29 = sub_1ABF240C4();

  v30 = sub_1ABF240C4();

  v32 = sub_1ABF240C4();

  sub_1ABAFF390(0, &qword_1EB4D5F70, off_1E7960098);
  v33 = sub_1ABF240C4();

  v35 = sub_1ABF240C4();

  v38 = [v37 initWithEntityIdentifierField:a1 nameField:v36 dateField:a4 attendeesField:v34 locationsField:v31 startLocationField:a7 endLocationField:a8 activityTypeObjectField:a9 activityTypeField:a10 confidenceField:a11 uncertaintyField:a12 modeOfTransportationField:a13 transportationTypeField:a14 allNameField:v43 allDateField:v25 allStartLocationField:v26 allEndLocationField:v27 allActivityTypeObjectField:v28 allActivityTypeField:v29 allConfidenceField:v30 allUncertaintyField:v32 allModeOfTransportationField:v33 allTransportationTypeField:v35];

  return v38;
}

id sub_1ABC67F50(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, void *a7, void *a8, void *a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  if (a3)
  {
    sub_1ABAA06A0(a1, a2);
    v28 = sub_1ABF23BD4();
  }

  else
  {
    v28 = 0;
  }

  sub_1ABAD219C(&qword_1EB4D5F38, &qword_1ABF4F360);
  v27 = sub_1ABF240C4();

  sub_1ABAD219C(&qword_1EB4D5F48, &qword_1ABF4F370);
  v26 = sub_1ABF240C4();

  v19 = sub_1ABF240C4();

  sub_1ABAFF390(0, &qword_1EB4D6108, off_1E795FF80);
  v20 = sub_1ABF240C4();

  sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
  sub_1ABA979F8();
  v21 = sub_1ABF240C4();

  v22 = sub_1ABF240C4();

  sub_1ABAFF390(0, &qword_1EB4D5F50, off_1E795FF08);
  sub_1ABA89740();
  v23 = sub_1ABF240C4();

  sub_1ABAFF390(0, &qword_1ED86B920, 0x1E696AD98);
  v24 = sub_1ABF240C4();

  v25 = sub_1ABF240C4();

  v30 = [v29 initWithEntityIdentifierField:a1 nameField:v28 dateField:a4 attendeesField:v27 locationsField:v26 startLocationField:a7 endLocationField:a8 activityTypeObjectField:a9 activityTypeField:a10 confidenceField:a11 allNameField:v19 allDateField:v20 allStartLocationField:v21 allEndLocationField:v22 allActivityTypeObjectField:v23 allActivityTypeField:v24 allConfidenceField:v25];

  return v30;
}

id sub_1ABC68240(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, void *a7, void *a8, void *a9, void *a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  if (a3)
  {
    v31 = sub_1ABF23BD4();
  }

  else
  {
    v31 = 0;
  }

  sub_1ABAD219C(&qword_1EB4D5F38, &qword_1ABF4F360);
  v30 = sub_1ABF240C4();

  sub_1ABAD219C(&qword_1EB4D5F48, &qword_1ABF4F370);
  v29 = sub_1ABF240C4();

  v21 = sub_1ABF240C4();

  sub_1ABAFF390(0, &qword_1EB4D6108, off_1E795FF80);
  v22 = sub_1ABF240C4();

  sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
  v23 = sub_1ABF240C4();

  v24 = sub_1ABF240C4();

  sub_1ABAFF390(0, &qword_1EB4D5F50, off_1E795FF08);
  v25 = sub_1ABF240C4();

  sub_1ABAFF390(0, &qword_1ED86B920, 0x1E696AD98);
  v26 = sub_1ABF240C4();

  v27 = sub_1ABF240C4();

  sub_1ABAD219C(&qword_1EB4D5FE0, &qword_1ABF4F378);
  v28 = sub_1ABF240C4();

  v33 = [v32 initWithEntityIdentifierField:a1 nameField:v31 dateField:a4 attendeesField:v30 locationsField:v29 startLocationField:a7 endLocationField:a8 activityTypeObjectField:a9 activityTypeField:a10 confidenceField:a11 softwareField:a12 allNameField:v21 allDateField:v22 allStartLocationField:v23 allEndLocationField:v24 allActivityTypeObjectField:v25 allActivityTypeField:v26 allConfidenceField:v27 allSoftwareField:v28];

  return v33;
}

id sub_1ABC6858C(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, void *a7, void *a8, void *a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  if (a3)
  {
    v33 = sub_1ABF23BD4();
  }

  else
  {
    v33 = 0;
  }

  sub_1ABAD219C(&qword_1EB4D5F38, &qword_1ABF4F360);
  v32 = sub_1ABF240C4();

  sub_1ABAD219C(&qword_1EB4D5F48, &qword_1ABF4F370);
  v30 = sub_1ABF240C4();

  if (a13)
  {
    v21 = sub_1ABF23BD4();
  }

  else
  {
    v21 = 0;
  }

  v23 = sub_1ABF240C4();

  sub_1ABAFF390(0, &qword_1EB4D6108, off_1E795FF80);
  v24 = sub_1ABF240C4();

  sub_1ABAFF390(0, &qword_1EB4D5F08, off_1E7960048);
  v25 = sub_1ABF240C4();

  v26 = sub_1ABF240C4();

  sub_1ABAFF390(0, &qword_1EB4D5F50, off_1E795FF08);
  v27 = sub_1ABF240C4();

  sub_1ABAFF390(0, &qword_1ED86B920, 0x1E696AD98);
  v28 = sub_1ABF240C4();

  v29 = sub_1ABF240C4();

  v31 = sub_1ABF240C4();

  v35 = [v34 initWithEntityIdentifierField:a1 nameField:v33 dateField:a4 attendeesField:v32 locationsField:v30 startLocationField:a7 endLocationField:a8 activityTypeObjectField:a9 activityTypeField:a10 confidenceField:a11 behaviorTypeField:v21 allNameField:v23 allDateField:v24 allStartLocationField:v25 allEndLocationField:v26 allActivityTypeObjectField:v27 allActivityTypeField:v28 allConfidenceField:v29 allBehaviorTypeField:v31];

  return v35;
}

id sub_1ABC688F8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a3)
  {
    v22 = sub_1ABF23BD4();
  }

  else
  {
    v22 = 0;
  }

  sub_1ABAFF390(0, &qword_1EB4D6108, off_1E795FF80);
  v21 = sub_1ABF240C4();

  sub_1ABAFF390(0, &qword_1EB4D60E8, off_1E7960030);
  v20 = sub_1ABF240C4();

  sub_1ABAD219C(&qword_1EB4D5F38, &qword_1ABF4F360);
  v19 = sub_1ABF240C4();

  v12 = sub_1ABF240C4();

  sub_1ABAD219C(&qword_1EB4D5F48, &qword_1ABF4F370);
  v13 = sub_1ABF240C4();

  v17 = sub_1ABF240C4();

  v18 = sub_1ABF240C4();

  sub_1ABAFF390(0, &qword_1ED86B920, 0x1E696AD98);
  v14 = sub_1ABF240C4();

  v15 = [v23 initWithEntityIdentifierField:a1 nameField:v22 datesField:v21 isAllDayField:a5 identifiersField:v20 attendeesField:v19 organizersField:v12 locationsField:v13 sgeventTypeField:v17 allNameField:v18 allIsAllDayField:v14];

  return v15;
}

id sub_1ABC68B50(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  if (a4)
  {
    v13 = sub_1ABF23BD4();
  }

  else
  {
    v13 = 0;
  }

  sub_1ABAFF390(0, &qword_1EB4D6108, off_1E795FF80);
  v14 = sub_1ABF240C4();

  v15 = sub_1ABF240C4();

  sub_1ABAD219C(&qword_1EB4D6088, &qword_1ABF4F380);
  v16 = sub_1ABF240C4();

  v17 = [v9 initWithEntityIdentifierField:a1 dateField:a2 playbackStateField:v13 songField:a5 allDateField:v14 allPlaybackStateField:v15 allSongField:v16];

  return v17;
}

id sub_1ABC68CA0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (a3)
  {
    v25 = sub_1ABF23BD4();
  }

  else
  {
    v25 = 0;
  }

  if (a5)
  {
    v24 = sub_1ABF23BD4();
  }

  else
  {
    v24 = 0;
  }

  sub_1ABAFF390(0, &qword_1EB4D60E8, off_1E7960030);
  v23 = sub_1ABF240C4();

  if (a10)
  {
    v16 = sub_1ABF23BD4();
  }

  else
  {
    v16 = 0;
  }

  v17 = sub_1ABF240C4();

  v21 = sub_1ABF240C4();

  sub_1ABAFF390(0, &qword_1EB4D60F8, off_1E7960050);
  v22 = sub_1ABF240C4();

  sub_1ABAFF390(0, &qword_1EB4D6100, off_1E7960040);
  v18 = sub_1ABF240C4();

  v19 = sub_1ABF240C4();

  v27 = [v26 initWithEntityIdentifierField:a1 nameField:v25 locationLabelField:v24 latLongField:a6 addressField:a7 identifiersField:v23 muidField:v16 allNameField:v17 allLocationLabelField:v21 allLatLongField:v22 allAddressField:v18 allMuidField:v19];

  return v27;
}

id sub_1ABC68EF8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a3)
  {
    v13 = sub_1ABF23BD4();
  }

  else
  {
    v13 = 0;
  }

  sub_1ABAFF390(0, &qword_1EB4D60E8, off_1E7960030);
  v14 = sub_1ABF240C4();

  if (!a6)
  {
    v15 = 0;
    if (a8)
    {
      goto LABEL_6;
    }

LABEL_8:
    v16 = 0;
    goto LABEL_9;
  }

  v15 = sub_1ABF23BD4();

  if (!a8)
  {
    goto LABEL_8;
  }

LABEL_6:
  v16 = sub_1ABF23BD4();

LABEL_9:
  v17 = sub_1ABF240C4();

  v18 = sub_1ABF240C4();

  v19 = sub_1ABF240C4();

  v20 = [v22 initWithEntityIdentifierField:a1 nameField:v13 identifiersField:v14 qidField:v15 umcIdentifierField:v16 allNameField:v17 allQidField:v18 allUmcIdentifierField:v19];

  return v20;
}

id sub_1ABC690A0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, void *a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  v54 = sub_1ABF240C4();

  v53 = sub_1ABF240C4();

  v52 = sub_1ABF240C4();

  v51 = sub_1ABF240C4();

  v50 = sub_1ABF240C4();

  v49 = sub_1ABF240C4();

  v65 = sub_1ABF240C4();

  v48 = sub_1ABF240C4();

  v63 = sub_1ABF240C4();

  v47 = sub_1ABF240C4();

  v46 = sub_1ABF240C4();

  v66 = sub_1ABF240C4();

  v34 = sub_1ABF21EB4();
  v35 = 0;
  if (sub_1ABA7E1E0(a14, 1, v34) != 1)
  {
    v35 = sub_1ABF21E34();
    (*(*(v34 - 8) + 8))(a14, v34);
  }

  if (a16)
  {
    v64 = sub_1ABF23BD4();
  }

  else
  {
    v64 = 0;
  }

  sub_1ABAD219C(&qword_1EB4D6098, &qword_1ABF4F388);
  v62 = sub_1ABF240C4();

  sub_1ABAD219C(&qword_1EB4D5F48, &qword_1ABF4F370);
  v61 = sub_1ABF240C4();

  sub_1ABAD219C(&qword_1EB4D60A0, &qword_1ABF4F390);
  v60 = sub_1ABF240C4();

  sub_1ABAD219C(&qword_1EB4D60A8, &qword_1ABF4F398);
  v59 = sub_1ABF240C4();

  sub_1ABAFF390(0, &qword_1EB4D6110, off_1E7960018);
  v58 = sub_1ABF240C4();

  sub_1ABAFF390(0, &qword_1EB4D60E8, off_1E7960030);
  v36 = sub_1ABF240C4();

  if (a27)
  {
    v37 = sub_1ABF23BD4();
  }

  else
  {
    v37 = 0;
  }

  sub_1ABAFF390(0, &qword_1EB4D6118, off_1E79601E0);
  v39 = sub_1ABF240C4();

  v40 = sub_1ABF240C4();

  v41 = sub_1ABF240C4();

  sub_1ABAFF390(0, &qword_1ED86B920, 0x1E696AD98);
  v42 = sub_1ABF240C4();

  v43 = sub_1ABF240C4();

  v44 = sub_1ABF240C4();

  v45 = sub_1ABF240C4();

  v56 = [v55 initWithEntityIdentifierField:a1 fullNamesField:v54 prefixesField:v53 givenNamesField:v52 phoneticGivenNamesField:v51 middleNamesField:v50 phoneticMiddleNamesField:v49 familyNamesField:v65 phoneticFamilyNamesField:v48 previousFamilyNamesField:v63 suffixesField:v47 nicknamesField:v46 birthNamesField:v66 birthdayField:v35 occupationField:v64 isFavoriteField:a17 isCurrentUserField:a18 isInferredDeviceUserField:a19 associatedPeopleField:v62 locationsField:v61 employersField:v60 topicsField:v59 handlesField:v58 identifiersField:v36 contactIdentifierField:v37 visualIdentifiersField:v39 allBirthdayField:v40 allOccupationField:v41 allIsFavoriteField:v42 allIsCurrentUserField:v43 allIsInferredDeviceUserField:v44 allContactIdentifierField:v45];

  return v56;
}

id sub_1ABC69744(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  if (a3)
  {
    v43 = sub_1ABF23BD4();

    if (a5)
    {
LABEL_3:
      v42 = sub_1ABF23BD4();

      goto LABEL_6;
    }
  }

  else
  {
    v43 = 0;
    if (a5)
    {
      goto LABEL_3;
    }
  }

  v42 = 0;
LABEL_6:
  if (a7)
  {
    v41 = sub_1ABF23BD4();
  }

  else
  {
    v41 = 0;
  }

  if (a9)
  {
    v40 = sub_1ABF23BD4();
  }

  else
  {
    v40 = 0;
  }

  sub_1ABAFF390(0, &qword_1EB4D60E8, off_1E7960030);
  v39 = sub_1ABF240C4();

  if (a13)
  {
    v38 = sub_1ABF23BD4();
  }

  else
  {
    v38 = 0;
  }

  if (!a15)
  {
    v37 = 0;
    if (a17)
    {
      goto LABEL_17;
    }

LABEL_19:
    v36 = 0;
    goto LABEL_20;
  }

  v37 = sub_1ABF23BD4();

  if (!a17)
  {
    goto LABEL_19;
  }

LABEL_17:
  v36 = sub_1ABF23BD4();

LABEL_20:
  v28 = sub_1ABF240C4();

  v29 = sub_1ABF240C4();

  v30 = sub_1ABF240C4();

  v31 = sub_1ABF240C4();

  sub_1ABAFF390(0, &qword_1EB4D60F0, off_1E79600D0);
  v32 = sub_1ABF240C4();

  v33 = sub_1ABF240C4();

  v34 = sub_1ABF240C4();

  v35 = sub_1ABF240C4();

  v45 = [v44 initWithEntityIdentifierField:a1 nameField:v43 artistNameField:v42 albumNameField:v41 genreField:v40 durationField:a10 identifiersField:v39 songAdamIdField:v38 albumAdamIdField:v37 artistAdamIdField:v36 allNameField:v28 allArtistNameField:v29 allAlbumNameField:v30 allGenreField:v31 allDurationField:v32 allSongAdamIdField:v33 allAlbumAdamIdField:v34 allArtistAdamIdField:v35];

  return v45;
}

id sub_1ABC69AD4(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (a3)
  {
    v4 = a3;
    sub_1ABAA06A0(a1, a2);
    v6 = sub_1ABF23BD4();
  }

  else
  {
    v6 = 0;
  }

  sub_1ABF240C4();
  sub_1ABA7C014();
  v7 = sub_1ABC6C77C();
  v9 = [v7 v8];

  return v9;
}

id sub_1ABC69B6C(void *a1, void *a2, uint64_t a3)
{
  sub_1ABAFF390(0, &qword_1ED86B920, 0x1E696AD98);
  v6 = sub_1ABF240C4();

  v7 = [v3 initWithEntityIdentifierField:a1 transportationTypeField:a2 allTransportationTypeField:v6];

  return v7;
}

void sub_1ABC69C10()
{
  sub_1ABA7E2A8();
  v4 = v3;
  v5 = v2;
  v6 = v0;
  if (!v7)
  {
    v8 = 0;
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_5:
    v9 = 0;
    goto LABEL_6;
  }

  sub_1ABAA06A0(v0, v1);
  v8 = sub_1ABF23BD4();

  if (!v5)
  {
    goto LABEL_5;
  }

LABEL_3:
  v9 = sub_1ABF23BD4();

LABEL_6:
  v10 = sub_1ABF240C4();

  sub_1ABF240C4();
  sub_1ABA7C014();
  v11 = sub_1ABC6C77C();
  [v11 v12];

  sub_1ABA7BC1C();
}

id sub_1ABC69D04(void *a1, uint64_t a2, unint64_t *a3, void *a4)
{
  sub_1ABAFF390(0, a3, a4);
  v5 = sub_1ABF240C4();

  v6 = sub_1ABC6C814();

  return v6;
}

void sub_1ABC69D78()
{
  sub_1ABA7E2A8();
  v1 = v0;
  v3 = v2;
  if (v4)
  {
    v5 = sub_1ABF23BD4();
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_1ABF240C4();

  sub_1ABAA2654();
  sub_1ABAFF390(v7, v8, v9);
  sub_1ABF240C4();
  sub_1ABA7C014();
  v10 = sub_1ABC6C77C();
  [v10 v11];

  sub_1ABA7BC1C();
}

id sub_1ABC69E44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v11 = sub_1ABF21EB4();
  v12 = 0;
  if (sub_1ABA7E1E0(a1, 1, v11) != 1)
  {
    v12 = sub_1ABF21E34();
    (*(*(v11 - 8) + 8))(a1, v11);
  }

  if (sub_1ABA7E1E0(a2, 1, v11) == 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = sub_1ABF21E34();
    (*(*(v11 - 8) + 8))(a2, v11);
  }

  if (sub_1ABA7E1E0(a3, 1, v11) == 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = sub_1ABF21E34();
    (*(*(v11 - 8) + 8))(a3, v11);
  }

  v15 = sub_1ABF240C4();

  v16 = sub_1ABF240C4();

  v17 = sub_1ABF240C4();

  v18 = [v7 initWithStartDateField:v12 endDateField:v13 occurrenceDateField:v14 allStartDateField:v15 allEndDateField:v16 allOccurrenceDateField:v17];

  return v18;
}

id sub_1ABC6A044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v6 = sub_1ABF23BD4();
  }

  else
  {
    v6 = 0;
  }

  v7 = sub_1ABF240C4();

  v8 = sub_1ABF240C4();

  v9 = sub_1ABF240C4();

  v10 = [v5 initWithLabelField:v6 emailAddressesField:v7 phoneNumbersField:v8 allLabelField:v9];

  return v10;
}

id sub_1ABC6A12C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a2)
  {
    v12 = sub_1ABF23BD4();
  }

  else
  {
    v12 = 0;
  }

  if (!a4)
  {
    v13 = 0;
    if (a6)
    {
      goto LABEL_6;
    }

LABEL_8:
    v14 = 0;
    goto LABEL_9;
  }

  v13 = sub_1ABF23BD4();

  if (!a6)
  {
    goto LABEL_8;
  }

LABEL_6:
  v14 = sub_1ABF23BD4();

LABEL_9:
  v15 = sub_1ABF240C4();

  v16 = sub_1ABF240C4();

  v17 = sub_1ABF240C4();

  v18 = [v9 initWithTypeField:v12 idField:v13 hasProfileImageField:v14 allTypeField:v15 allIdField:v16 allHasProfileImageField:v17];

  return v18;
}

id sub_1ABC6A284(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v4 = sub_1ABF23BD4();
  }

  else
  {
    v4 = 0;
  }

  v5 = sub_1ABF240C4();

  v6 = [v3 initWithQuantityField:v4 allQuantityField:v5];

  return v6;
}

id sub_1ABC6A310(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  if (a2)
  {
    v8 = sub_1ABF23BD4();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_1ABF240C4();

  sub_1ABF240C4();
  sub_1ABA7C014();
  v10 = sub_1ABC6C77C();
  v12 = [v10 v11];

  return v12;
}

id sub_1ABC6A3D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  if (a2)
  {
    v48 = sub_1ABF23BD4();

    if (a4)
    {
      goto LABEL_3;
    }

LABEL_6:
    v47 = 0;
    if (a6)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v48 = 0;
  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  v47 = sub_1ABF23BD4();

  if (a6)
  {
LABEL_4:
    v46 = sub_1ABF23BD4();

    goto LABEL_8;
  }

LABEL_7:
  v46 = 0;
LABEL_8:
  if (a8)
  {
    v45 = sub_1ABF23BD4();
  }

  else
  {
    v45 = 0;
  }

  if (a10)
  {
    v44 = sub_1ABF23BD4();
  }

  else
  {
    v44 = 0;
  }

  if (a12)
  {
    v43 = sub_1ABF23BD4();
  }

  else
  {
    v43 = 0;
  }

  if (a14)
  {
    v42 = sub_1ABF23BD4();
  }

  else
  {
    v42 = 0;
  }

  if (!a16)
  {
    v41 = 0;
    if (a18)
    {
      goto LABEL_22;
    }

LABEL_24:
    v38 = 0;
    goto LABEL_25;
  }

  v41 = sub_1ABF23BD4();

  if (!a18)
  {
    goto LABEL_24;
  }

LABEL_22:
  v38 = sub_1ABF23BD4();

LABEL_25:
  v30 = sub_1ABF240C4();

  v32 = sub_1ABF240C4();

  v33 = sub_1ABF240C4();

  v34 = sub_1ABF240C4();

  v35 = sub_1ABF240C4();

  v36 = sub_1ABF240C4();

  v37 = sub_1ABF240C4();

  v39 = sub_1ABF240C4();

  v40 = sub_1ABF240C4();

  v50 = [v49 initWithStreetField:v48 subLocalityField:v47 cityField:v46 subAdministrativeAreaField:v45 stateField:v44 postalCodeField:v43 countryField:v42 isoCountryCodeField:v41 inferredSemanticLabelField:v38 allStreetField:v30 allSubLocalityField:v32 allCityField:v33 allSubAdministrativeAreaField:v34 allStateField:v35 allPostalCodeField:v36 allCountryField:v37 allIsoCountryCodeField:v39 allInferredSemanticLabelField:v40];

  return v50;
}

id sub_1ABC6A78C(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  sub_1ABAFF390(0, &qword_1ED86B920, 0x1E696AD98);
  v7 = sub_1ABF240C4();

  v8 = sub_1ABF240C4();

  v9 = [v4 initWithLatitudeField:a1 longitudeField:a2 allLatitudeField:v7 allLongitudeField:v8];

  return v9;
}

id sub_1ABC6A854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a2)
  {
    v24 = sub_1ABF23BD4();

    if (a4)
    {
LABEL_3:
      v15 = sub_1ABF23BD4();

      goto LABEL_6;
    }
  }

  else
  {
    v24 = 0;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v15 = 0;
LABEL_6:
  if (!a6)
  {
    v16 = 0;
    if (a8)
    {
      goto LABEL_8;
    }

LABEL_10:
    v17 = 0;
    goto LABEL_11;
  }

  v16 = sub_1ABF23BD4();

  if (!a8)
  {
    goto LABEL_10;
  }

LABEL_8:
  v17 = sub_1ABF23BD4();

LABEL_11:
  v18 = sub_1ABF240C4();

  v19 = sub_1ABF240C4();

  v20 = sub_1ABF240C4();

  v21 = sub_1ABF240C4();

  v22 = [v25 initWithVisualIdentifierField:v24 associationReasonField:v15 suggestedNameField:v16 suggestedRelationshipToDeviceOwnerField:v17 allVisualIdentifierField:v18 allAssociationReasonField:v19 allSuggestedNameField:v20 allSuggestedRelationshipToDeviceOwnerField:v21];

  return v22;
}

uint64_t sub_1ABC6AA04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CustomGraphDateRelationship(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1ABC6AA68(uint64_t a1)
{
  v2 = type metadata accessor for CustomGraphDateRelationship(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1ABC6AAC4(uint64_t a1, uint64_t a2)
{
  v3 = sub_1ABAA06A0(a1, a2);
  v5 = sub_1ABAD219C(v3, v4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1ABC6AC44(uint64_t a1)
{
  result = sub_1ABC6BD84(&qword_1ED86DAF8, type metadata accessor for CustomGraphEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ABC6AC9C(uint64_t a1)
{
  result = sub_1ABC6BD84(&qword_1ED86D278, type metadata accessor for CustomGraphActivityEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ABC6ACF4(uint64_t a1)
{
  result = sub_1ABC6BD84(&qword_1ED86D1D0, type metadata accessor for CustomGraphSportsGameEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ABC6AD4C(uint64_t a1)
{
  result = sub_1ABC6BD84(&qword_1ED86C5D0, type metadata accessor for CustomGraphTransportationActivityEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ABC6ADA4(uint64_t a1)
{
  result = sub_1ABC6BD84(&qword_1ED86CA68, type metadata accessor for CustomGraphWorkingActivityEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ABC6ADFC(uint64_t a1)
{
  result = sub_1ABC6BD84(&qword_1ED86CB80, type metadata accessor for CustomGraphMeetingActivityEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ABC6AE54(uint64_t a1)
{
  result = sub_1ABC6BD84(&qword_1ED86CDB8, type metadata accessor for CustomGraphEatingActivityEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ABC6AEAC(uint64_t a1)
{
  result = sub_1ABC6BD84(&qword_1ED86C810, type metadata accessor for CustomGraphWatchingTVActivityEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ABC6AF04(uint64_t a1)
{
  result = sub_1ABC6BD84(&qword_1ED86C618, type metadata accessor for CustomGraphCommunicatingActivityEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ABC6AF5C(uint64_t a1)
{
  result = sub_1ABC6BD84(&qword_1ED86CA00, type metadata accessor for CustomGraphShoppingActivityEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ABC6AFB4(uint64_t a1)
{
  result = sub_1ABC6BD84(&qword_1ED86C7E8, type metadata accessor for CustomGraphMindfulnessActivityEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ABC6B00C(uint64_t a1)
{
  result = sub_1ABC6BD84(&qword_1ED86C9E0, type metadata accessor for CustomGraphSleepingActivityEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ABC6B064(uint64_t a1)
{
  result = sub_1ABC6BD84(&qword_1ED86C8F8, type metadata accessor for CustomGraphTravelingActivityEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ABC6B0BC(uint64_t a1)
{
  result = sub_1ABC6BD84(&qword_1ED86CB50, type metadata accessor for CustomGraphReadingActivityEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ABC6B114(uint64_t a1)
{
  result = sub_1ABC6BD84(&qword_1ED86C798, type metadata accessor for CustomGraphVacationingActivityEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ABC6B16C(uint64_t a1)
{
  result = sub_1ABC6BD84(&qword_1ED86CD90, type metadata accessor for CustomGraphGamingActivityEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ABC6B1C4(uint64_t a1)
{
  result = sub_1ABC6BD84(&qword_1ED86C7C0, type metadata accessor for CustomGraphSocializingActivityEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ABC6B21C(uint64_t a1)
{
  result = sub_1ABC6BD84(&qword_1ED86C9B8, type metadata accessor for CustomGraphWakingUpActivityEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ABC6B274(uint64_t a1)
{
  result = sub_1ABC6BD84(&qword_1ED86C880, type metadata accessor for CustomGraphGoingToBedActivityEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ABC6B2CC(uint64_t a1)
{
  result = sub_1ABC6BD84(&qword_1ED86C8A8, type metadata accessor for CustomGraphExercisingActivityEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ABC6B324(uint64_t a1)
{
  result = sub_1ABC6BD84(&qword_1ED86CC50, type metadata accessor for CustomGraphCommuteActivityEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ABC6B37C(uint64_t a1)
{
  result = sub_1ABC6BD84(&qword_1ED86CDD8, type metadata accessor for CustomGraphDiningActivityEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ABC6B3D4(uint64_t a1)
{
  result = sub_1ABC6BD84(&qword_1ED86C3B0, type metadata accessor for CustomGraphAttendingAPerformanceActivityEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ABC6B42C(uint64_t a1)
{
  result = sub_1ABC6BD84(&qword_1ED86C830, type metadata accessor for CustomGraphStationaryActivityEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ABC6B484(uint64_t a1)
{
  result = sub_1ABC6BD84(&qword_1ED86C5F0, type metadata accessor for CustomGraphLocationVisitActivityEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ABC6B4DC(uint64_t a1)
{
  result = sub_1ABC6BD84(&qword_1ED86CA88, type metadata accessor for CustomGraphWalkingActivityEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ABC6B534(uint64_t a1)
{
  result = sub_1ABC6BD84(&qword_1ED86CB30, type metadata accessor for CustomGraphRunningActivityEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ABC6B58C(uint64_t a1)
{
  result = sub_1ABC6BD84(&qword_1ED86C998, type metadata accessor for CustomGraphBicyclingActivityEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ABC6B5E4(uint64_t a1)
{
  result = sub_1ABC6BD84(&qword_1ED86CD70, type metadata accessor for CustomGraphHikingActivityEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ABC6B63C(uint64_t a1)
{
  result = sub_1ABC6BD84(&qword_1ED86C858, type metadata accessor for CustomGraphOnThePhoneActivityEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ABC6B694(uint64_t a1)
{
  result = sub_1ABC6BD84(&qword_1ED86CA20, type metadata accessor for CustomGraphFacetimeActivityEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ABC6B6EC(uint64_t a1)
{
  result = sub_1ABC6BD84(&qword_1ED86CC28, type metadata accessor for CustomGraphDrivingActivityEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1ABC6B744(uint64_t a1)
{
  result = sub_1ABC6BD84(&qword_1ED86CA40, type metadata accessor for CustomGraphBehaviorActivityEvent);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1ABC6B79C(uint64_t a1)
{
  result = sub_1ABC6B7C4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1ABC6B7C4()
{
  result = qword_1ED86D258;
  if (!qword_1ED86D258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86D258);
  }

  return result;
}

uint64_t sub_1ABC6B818(uint64_t a1)
{
  result = sub_1ABC6BD84(qword_1EB4D1B50, type metadata accessor for CustomGraphSongEvent);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1ABC6B870(uint64_t a1)
{
  result = sub_1ABC6B898();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1ABC6B898()
{
  result = qword_1ED86D420;
  if (!qword_1ED86D420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86D420);
  }

  return result;
}

unint64_t sub_1ABC6B8EC(uint64_t a1)
{
  result = sub_1ABC6B914();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1ABC6B914()
{
  result = qword_1ED86D2B0;
  if (!qword_1ED86D2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86D2B0);
  }

  return result;
}

unint64_t sub_1ABC6B968(uint64_t a1)
{
  result = sub_1ABC6B990();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1ABC6B990()
{
  result = qword_1ED86D380;
  if (!qword_1ED86D380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86D380);
  }

  return result;
}

uint64_t sub_1ABC6B9E4(uint64_t a1)
{
  result = sub_1ABC6BD84(&qword_1ED86D6C8, type metadata accessor for CustomGraphPerson);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1ABC6BA3C(uint64_t a1)
{
  result = sub_1ABC6BA64();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1ABC6BA64()
{
  result = qword_1ED86DAD8;
  if (!qword_1ED86DAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86DAD8);
  }

  return result;
}

unint64_t sub_1ABC6BAB8(uint64_t a1)
{
  result = sub_1ABC6BAE0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1ABC6BAE0()
{
  result = qword_1ED86DB30;
  if (!qword_1ED86DB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86DB30);
  }

  return result;
}

unint64_t sub_1ABC6BB34(uint64_t a1)
{
  result = sub_1ABC6BB5C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1ABC6BB5C()
{
  result = qword_1ED86CF38;
  if (!qword_1ED86CF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86CF38);
  }

  return result;
}

unint64_t sub_1ABC6BBB0(uint64_t a1)
{
  result = sub_1ABC6BBD8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1ABC6BBD8()
{
  result = qword_1ED86CB60;
  if (!qword_1ED86CB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86CB60);
  }

  return result;
}

unint64_t sub_1ABC6BC2C(uint64_t a1)
{
  result = sub_1ABC6BC54();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1ABC6BC54()
{
  result = qword_1ED86D410;
  if (!qword_1ED86D410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86D410);
  }

  return result;
}

uint64_t sub_1ABC6BD2C(uint64_t a1)
{
  result = sub_1ABC6BD84(&qword_1EB4D60B0, type metadata accessor for CustomGraphDateRelationship);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1ABC6BD84(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    sub_1ABA89740();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1ABC6BDF4(uint64_t a1)
{
  result = sub_1ABC6BE1C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1ABC6BE1C()
{
  result = qword_1EB4D60B8;
  if (!qword_1EB4D60B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D60B8);
  }

  return result;
}

unint64_t sub_1ABC6BE70(uint64_t a1)
{
  result = sub_1ABC6BE98();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1ABC6BE98()
{
  result = qword_1EB4D60C0;
  if (!qword_1EB4D60C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D60C0);
  }

  return result;
}

unint64_t sub_1ABC6BEEC(uint64_t a1)
{
  result = sub_1ABC6BF14();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1ABC6BF14()
{
  result = qword_1EB4D60C8;
  if (!qword_1EB4D60C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D60C8);
  }

  return result;
}

unint64_t sub_1ABC6BF94(uint64_t a1)
{
  result = sub_1ABC6BFBC();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1ABC6BFBC()
{
  result = qword_1EB4D60D0;
  if (!qword_1EB4D60D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D60D0);
  }

  return result;
}

unint64_t sub_1ABC6C010(uint64_t a1)
{
  result = sub_1ABC6C038();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1ABC6C038()
{
  result = qword_1EB4D60D8;
  if (!qword_1EB4D60D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D60D8);
  }

  return result;
}

unint64_t sub_1ABC6C0E4(uint64_t a1)
{
  result = sub_1ABC6C10C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1ABC6C10C()
{
  result = qword_1EB4D60E0;
  if (!qword_1EB4D60E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D60E0);
  }

  return result;
}

uint64_t sub_1ABC6C18C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

id sub_1ABC6C1D8(void *a1, uint64_t a2)
{
  sub_1ABAA06A0(a1, a2);
  v3 = sub_1ABF240C4();

  v4 = sub_1ABC6C814();

  return v4;
}

uint64_t sub_1ABC6C36C@<X0>(uint64_t a1@<X8>)
{

  return sub_1ABB2E9FC(v3 + a1, v4, v1, v2);
}

uint64_t sub_1ABC6C3A8()
{

  return sub_1ABF24BD4();
}

uint64_t sub_1ABC6C3C4()
{

  return sub_1ABF24BD4();
}

uint64_t sub_1ABC6C3E0()
{

  return sub_1ABF24BE4();
}

uint64_t sub_1ABC6C3F8()
{
  *(v1 - 112) = v0;

  return sub_1ABACEB14();
}

id sub_1ABC6C410()
{

  return objc_allocWithZone(v0);
}

uint64_t sub_1ABC6C428@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 120) = a1;
}

uint64_t sub_1ABC6C440(uint64_t a1)
{
  *(v2 - 240) = a1;

  return sub_1ABC6AA68(v1);
}

uint64_t sub_1ABC6C458()
{
  *(v1 - 120) = v0;
}

uint64_t sub_1ABC6C494()
{

  return sub_1ABF24BE4();
}

uint64_t sub_1ABC6C4AC()
{

  return sub_1ABF24BC4();
}

id sub_1ABC6C514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_1ABC6A12C(a1, v11, a3, v13, v14, v10, v9, v12, a9);
}

uint64_t sub_1ABC6C540()
{

  return swift_bridgeObjectRetain_n();
}

void sub_1ABC6C558()
{
  v2 = *(v1 - 128) + (v0 << 6);
  v3 = *(v2 + 32);
  *(v1 - 120) = *(v2 + 24);
  *(v1 - 112) = v3;
}

uint64_t sub_1ABC6C574()
{

  return swift_getAssociatedTypeWitness();
}

id sub_1ABC6C5A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_1ABC6A12C(a1, v10, a3, v12, v13, v14, v9, v11, a9);
}

uint64_t sub_1ABC6C5F0(uint64_t a1, uint64_t a2)
{

  return sub_1ABB2E9FC(a1, a2, v2, v3);
}

uint64_t sub_1ABC6C608()
{

  return sub_1ABF24BC4();
}

uint64_t sub_1ABC6C63C(uint64_t a1)
{

  return sub_1ABF241F4();
}

uint64_t sub_1ABC6C694()
{

  return sub_1ABF24BC4();
}

uint64_t sub_1ABC6C6AC(uint64_t a1)
{

  return sub_1ABF24B94();
}

uint64_t sub_1ABC6C6C8()
{

  return sub_1ABF24BD4();
}

uint64_t sub_1ABC6C6E4(uint64_t a1)
{

  return sub_1ABF24B94();
}

uint64_t sub_1ABC6C6FC(uint64_t a1)
{

  return sub_1ABF24B94();
}

uint64_t sub_1ABC6C718()
{

  return sub_1ABF24BC4();
}

uint64_t sub_1ABC6C7F4()
{

  return type metadata accessor for CustomGraphDateRelationship(0);
}

id sub_1ABC6C814()
{
  v5 = *v0;

  return [v1 v5];
}

id sub_1ABC6C834@<X0>(uint64_t a1@<X8>)
{
  v3 = *(a1 + 8);
  *(v1 - 328) = a1;
  v4 = *(a1 + 16);

  return sub_1ABC5021C(v3, v4);
}

id sub_1ABC6C854(void *a1)
{

  return [a1 (v2 + 3468)];
}

uint64_t sub_1ABC6C86C()
{

  return swift_bridgeObjectRetain_n();
}

uint64_t sub_1ABC6C884()
{

  return sub_1ABF24BD4();
}

id sub_1ABC6C89C(void *a1, const void *a2)
{
  result = [objc_allocWithZone(GDEntityIdentifier) initWithValue_];
  if (result)
  {
    *&v2[OBJC_IVAR___GDKnosisResultContextItem__entityId] = result;
    memcpy(&v2[OBJC_IVAR___GDKnosisResultContextItem__answer], a2, 0x70uLL);
    v5.receiver = v2;
    v5.super_class = GDKnosisResultContextItem;
    return objc_msgSendSuper2(&v5, sel_init);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1ABC6C934(uint64_t *a1, const void *a2)
{
  v3 = *a1;
  memcpy(__dst, a2, sizeof(__dst));
  v8 = v3;
  memcpy(v7, a2, sizeof(v7));
  v4 = objc_allocWithZone(GDKnosisResultContextItem);
  sub_1ABAE441C(__dst, v6);
  return sub_1ABC6C89C(&v8, v7);
}

id sub_1ABC6C9F0()
{
  memcpy(__dst, (v0 + OBJC_IVAR___GDKnosisResultContextItem__answer), sizeof(__dst));
  memcpy(v3, (v0 + OBJC_IVAR___GDKnosisResultContextItem__answer), sizeof(v3));
  sub_1ABAE441C(__dst, v5);
  v1 = sub_1ABD7C170();
  memcpy(v5, v3, sizeof(v5));
  sub_1ABC6D404(v5);
  return v1;
}

id sub_1ABC6CABC(uint64_t a1)
{
  type metadata accessor for GDKnosisResultContext(a1);
  v2 = *(v1 + OBJC_IVAR___GDKnosisResultContextItem__answer + 80);

  ObjectSynthesisDictionaryMapping.init()(v7);
  v3 = v7[0];
  type metadata accessor for InitializationResourcesManager();
  v4 = swift_allocObject();
  *(v4 + 16) = sub_1ABF239C4();
  v7[0] = v3;
  v7[1] = v2;
  v7[2] = v4;
  v5 = sub_1ABC6CB84(v7);

  return v5;
}

id sub_1ABC6CB84(uint64_t *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v4[0] = *a1;
  v4[1] = v1;
  v4[2] = v2;
  objc_allocWithZone(GDKnosisResultContext);

  return sub_1ABC6CD1C(v4);
}

id sub_1ABC6CD1C(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = &v1[OBJC_IVAR___GDKnosisResultContext_knosisResultContext];
  *v5 = *a1;
  *(v5 + 1) = v3;
  *(v5 + 2) = v4;
  v6 = type metadata accessor for _GDSwiftGraphObjectContext();
  v7 = objc_allocWithZone(v6);
  v12[3] = sub_1ABAD219C(&qword_1EB4D6150, &unk_1ABF4FF30);
  v12[0] = v2;
  v12[1] = v3;
  v12[4] = sub_1ABC6D4BC();
  v12[2] = v4;
  sub_1ABA93E64(v12, v7 + OBJC_IVAR____TtC20IntelligencePlatform26_GDSwiftGraphObjectContext_context);
  v11.receiver = v7;
  v11.super_class = v6;

  v8 = objc_msgSendSuper2(&v11, sel_init);
  sub_1ABA84B54(v12);
  *&v1[OBJC_IVAR___GDKnosisResultContext_gdSwiftGraphObjectContext] = v8;
  v10.receiver = v1;
  v10.super_class = GDKnosisResultContext;
  return objc_msgSendSuper2(&v10, sel_init);
}

uint64_t sub_1ABC6CE60()
{
  v1 = *(v0 + OBJC_IVAR___GDKnosisResultContext_knosisResultContext + 8);
  v2 = *(v1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v6 = MEMORY[0x1E69E7CC0];
    sub_1ABF24BC4();
    v4 = (v1 + 32);
    do
    {
      memcpy(__dst, v4, sizeof(__dst));
      sub_1ABD7C170();
      sub_1ABF24B94();
      sub_1ABF24BD4();
      sub_1ABF24BE4();
      sub_1ABF24BA4();
      v4 += 112;
      --v2;
    }

    while (v2);
    return v6;
  }

  return result;
}

void *sub_1ABC6CF90(void (*a1)(id, char *))
{
  result = Array<A>.entityIdsWithAnswers()(*(v1 + OBJC_IVAR___GDKnosisResultContext_knosisResultContext + 8));
  if (!v2)
  {
    sub_1ABC6CFF4(result, a1);
  }

  return result;
}

void sub_1ABC6CFF4(uint64_t a1, void (*a2)(id, char *))
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = (a1 + 40);
  v4 = *(a1 + 16) + 1;
  do
  {
    if (!--v4)
    {
      break;
    }

    v5 = v3 + 120;
    v6 = *(v3 - 1);
    v7 = memcpy(__dst, v3, sizeof(__dst));
    v10 = 0;
    type metadata accessor for GDKnosisResultContextItem(v7);
    v9 = v6;
    v8 = sub_1ABC6C934(&v9, __dst);
    a2(v8, &v10);

    v3 = v5;
  }

  while (v10 != 1);
}

uint64_t sub_1ABC6D170(void *a1, void (*a2)(id, char *))
{
  v5 = *(v2 + OBJC_IVAR___GDKnosisResultContext_knosisResultContext + 8);
  v9 = [a1 intValue];
  v6 = sub_1ABD811F4(&v9, v5);
  v7 = Array<A>.entityIdsWithAnswers()(v6);

  if (!v3)
  {
    sub_1ABC6CFF4(v7, a2);
  }

  return result;
}

id _sSo10GDVUUpdateC20IntelligencePlatformEABycfC_0()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_1ABC6D458(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  result = a2;
  if (a6 - 2 < 2)
  {
  }

  if (!a6)
  {
  }

  return result;
}

unint64_t sub_1ABC6D4BC()
{
  result = qword_1EB4D6158;
  if (!qword_1EB4D6158)
  {
    sub_1ABAE2850(&qword_1EB4D6150, &unk_1ABF4FF30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D6158);
  }

  return result;
}

uint64_t sub_1ABC6D528()
{
  if (qword_1ED871B38 != -1)
  {
    swift_once();
  }

  v0 = sub_1ABF237F4();

  return sub_1ABA7AA24(v0, qword_1ED871B40);
}

id sub_1ABC6D8B4(uint64_t a1, uint64_t *a2, uint64_t (*a3)(void))
{
  v5 = sub_1ABF237F4();
  sub_1ABB9009C(v5, a2);
  sub_1ABA7AA24(v5, a2);
  result = a3();
  if (result)
  {
    return sub_1ABF23804();
  }

  __break(1u);
  return result;
}

_BYTE *storeEnumTagSinglePayload for GDLog(_BYTE *result, int a2, int a3)
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

uint64_t sub_1ABC6D9F4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v9 = MEMORY[0x1E69E7CC0];
  sub_1ABADDFFC(0, v2, 0);
  result = v9;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v6 = *v4++;
      v5 = v6;
      v10 = result;
      v8 = *(result + 16);
      v7 = *(result + 24);
      if (v8 >= v7 >> 1)
      {
        sub_1ABADDFFC((v7 > 1), v8 + 1, 1);
        result = v10;
      }

      *(result + 16) = v8 + 1;
      *(result + 8 * v8 + 32) = v5;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t sub_1ABC6DAC8(char a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();

  sub_1ABC6DFE8(v6, a1 & 1, a2, a3);
}

void sub_1ABC6DBB4()
{
  sub_1ABA97BA0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  sub_1ABA7F3A8(v8);

  sub_1ABC6E100(v10, v9 & 1, v7, v5, v3, v1);

  sub_1ABA7E708();
}

void sub_1ABC6DCB4(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, void (*a6)(void, uint64_t, uint64_t, void, uint64_t, uint64_t))
{
  swift_beginAccess();
  v12 = *(v6 + 24);

  a6(a1 & 1, a2, v12, a3 & 1, a4, a5);

  sub_1ABA7E708();
}

void sub_1ABC6DDA4()
{
  sub_1ABA97BA0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  sub_1ABA7F3A8(v9);
  v11 = *(v0 + 24);

  v2(v10, v11, v8 & 1, v6, v4);

  sub_1ABA7E708();
}

void sub_1ABC6DE84()
{
  sub_1ABA97BA0();
  v4 = v3;
  sub_1ABA8C0E8();
  v6 = v5;
  sub_1ABA7F3A8(v7);

  sub_1ABC6E6A4(v2, v1, v0, v4, v6);

  sub_1ABA7E708();
}

uint64_t sub_1ABC6DFE8(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{

  v8 = sub_1ABAEE858(a2 & 1);
  if (v4)
  {
  }

  v10 = sub_1ABAEF578(v8);

  MEMORY[0x1EEE9AC00](v11);
  v12[2] = a3;
  v12[3] = a4;
  sub_1ABC6EEF8(v10, sub_1ABC713B4, v12, sub_1ABC713D4, sub_1ABC7147C);
}

uint64_t sub_1ABC6E100(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{

  v12 = a5(a2 & 1);
  if (v6)
  {
  }

  v14 = sub_1ABAEF5A4(v12);

  MEMORY[0x1EEE9AC00](v15);
  v16[2] = a3;
  v16[3] = a4;
  sub_1ABC6EEF8(v14, a6, v16, sub_1ABC71180, sub_1ABC711A4);
}

uint64_t sub_1ABC6E214(char a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{

  v12 = sub_1ABAEE2F8(a1 & 1, a2, a4 & 1);
  if (v6)
  {
  }

  v14 = sub_1ABAEF578(v12);

  MEMORY[0x1EEE9AC00](v15);
  v16[2] = a5;
  v16[3] = a6;
  sub_1ABC6EEF8(v14, sub_1ABC714E4, v16, sub_1ABC713D4, sub_1ABC7147C);
}

uint64_t sub_1ABC6E33C(char a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{

  v12 = sub_1ABAEE488(a1 & 1, a2, a4 & 1);
  if (v6)
  {
  }

  v14 = sub_1ABAEF5A4(v12);

  MEMORY[0x1EEE9AC00](v15);
  v16[2] = a5;
  v16[3] = a6;
  sub_1ABC6EEF8(v14, sub_1ABC714C8, v16, sub_1ABC71180, sub_1ABC711A4);
}

uint64_t sub_1ABC6E464(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  v8 = sub_1ABAEE768();
  if (v5)
  {
  }

  v10 = sub_1ABAEF578(v8);

  MEMORY[0x1EEE9AC00](v11);
  v12[2] = a4;
  v12[3] = a5;
  sub_1ABC6EEF8(v10, sub_1ABC714E4, v12, sub_1ABC713D4, sub_1ABC7147C);
}

uint64_t sub_1ABC6E584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  v8 = sub_1ABAEE798();
  if (v5)
  {
  }

  v10 = sub_1ABAEF5A4(v8);

  MEMORY[0x1EEE9AC00](v11);
  v12[2] = a4;
  v12[3] = a5;
  sub_1ABC6EEF8(v10, sub_1ABC714C8, v12, sub_1ABC71180, sub_1ABC711A4);
}

uint64_t sub_1ABC6E6A4@<X0>(uint64_t a1@<X1>, void (*a2)(uint64_t *__return_ptr, uint64_t)@<X2>, uint64_t (*a3)(uint64_t)@<X3>, uint64_t (*a4)(void)@<X4>, uint64_t a5@<X8>)
{

  a2(&v13, a1);

  if (!v5)
  {
    if (v14)
    {
      v12 = a4(0);
      return sub_1ABA7B9B4(a5, 1, 1, v12);
    }

    else
    {
      return a3(v13);
    }
  }

  return result;
}

uint64_t sub_1ABC6E774(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t *), uint64_t a4)
{
  v28 = a4;
  v29 = a3;
  v30 = a1;
  v6 = type metadata accessor for CustomGraphSongEvent(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1ABAD219C(&qword_1EB4D61E8, &qword_1ABF500B8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v28 - v10;
  v12 = sub_1ABAD219C(&qword_1EB4D1BE0, &unk_1ABF34230);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v28 - v16;
  sub_1ABBD88DC(a2, v11, &qword_1EB4D61E8, &qword_1ABF500B8);
  if (sub_1ABA7E1E0(v11, 1, v12) == 1)
  {
    sub_1ABAB480C(v11, &qword_1EB4D61E8, &qword_1ABF500B8);
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v18 = sub_1ABF237F4();
    sub_1ABA7AA24(v18, qword_1ED871B40);
    v19 = sub_1ABF237D4();
    v20 = sub_1ABF24664();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v32 = v22;
      *v21 = 136315138;
      v31 = v30;
      v23 = EntityIdentifier.description.getter();
      v25 = sub_1ABADD6D8(v23, v24, &v32);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_1ABA78000, v19, v20, "ID %s is in Event index but constructing a graph object from it results in nil!", v21, 0xCu);
      sub_1ABA84B54(v22);
      MEMORY[0x1AC5AB8B0](v22, -1, -1);
      MEMORY[0x1AC5AB8B0](v21, -1, -1);
    }

    v26 = 1;
  }

  else
  {
    sub_1ABBD898C(v11, v17, &qword_1EB4D1BE0, &unk_1ABF34230);
    LOBYTE(v31) = 0;
    sub_1ABBD88DC(v17, v14, &qword_1EB4D1BE0, &unk_1ABF34230);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v32 = *v14;
      sub_1ABAD219C(&qword_1EB4D1AD0, &qword_1ABF33C70);
      swift_willThrowTypedImpl();
      sub_1ABAB480C(v17, &qword_1EB4D1BE0, &unk_1ABF34230);
    }

    else
    {
      sub_1ABC712DC(v14, v8, type metadata accessor for CustomGraphSongEvent);
      v29(v8, &v31);
      sub_1ABC7133C(v8, type metadata accessor for CustomGraphSongEvent);
      sub_1ABAB480C(v17, &qword_1EB4D1BE0, &unk_1ABF34230);
      if (!v4)
      {
        v26 = v31 ^ 1;
      }
    }
  }

  return v26 & 1;
}

void sub_1ABC6EB50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1ABA7BCA8();
  a19 = v21;
  a20 = v22;
  v50 = v24;
  v51 = v23;
  v26 = v25;
  v52 = v27;
  v28 = type metadata accessor for CustomGraphActivityEvent(0);
  v29 = sub_1ABA7AB80(v28);
  MEMORY[0x1EEE9AC00](v29);
  sub_1ABA7BC58();
  v32 = v31 - v30;
  v33 = sub_1ABAD219C(&qword_1EB4D61E0, &qword_1ABF500B0);
  sub_1ABA7AB80(v33);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v34);
  sub_1ABA7E338();
  v35 = sub_1ABAD219C(&qword_1EB4D5E20, &unk_1ABF643D0);
  sub_1ABA7BBB0();
  MEMORY[0x1EEE9AC00](v36);
  v38 = (&v50 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v50 - v40;
  sub_1ABBD88DC(v26, v20, &qword_1EB4D61E0, &qword_1ABF500B0);
  if (sub_1ABA7E1E0(v20, 1, v35) == 1)
  {
    sub_1ABAB480C(v20, &qword_1EB4D61E0, &qword_1ABF500B0);
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v42 = sub_1ABF237F4();
    sub_1ABA7AA24(v42, qword_1ED871B40);
    v43 = sub_1ABF237D4();
    v44 = sub_1ABF24664();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      a10 = v46;
      *v45 = 136315138;
      v53 = v52;
      v47 = EntityIdentifier.description.getter();
      v49 = sub_1ABADD6D8(v47, v48, &a10);

      *(v45 + 4) = v49;
      _os_log_impl(&dword_1ABA78000, v43, v44, "ID %s is in Event index but constructing a graph object from it results in nil!", v45, 0xCu);
      sub_1ABA84B54(v46);
      MEMORY[0x1AC5AB8B0](v46, -1, -1);
      MEMORY[0x1AC5AB8B0](v45, -1, -1);
    }
  }

  else
  {
    sub_1ABBD898C(v20, v41, &qword_1EB4D5E20, &unk_1ABF643D0);
    LOBYTE(v53) = 0;
    sub_1ABBD88DC(v41, v38, &qword_1EB4D5E20, &unk_1ABF643D0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      a10 = *v38;
      sub_1ABAD219C(&qword_1EB4D1AD0, &qword_1ABF33C70);
      swift_willThrowTypedImpl();
    }

    else
    {
      sub_1ABC712DC(v38, v32, type metadata accessor for CustomGraphActivityEvent);
      v51(v32, &v53);
      sub_1ABC7133C(v32, type metadata accessor for CustomGraphActivityEvent);
    }

    sub_1ABAB480C(v41, &qword_1EB4D5E20, &unk_1ABF643D0);
  }

  sub_1ABA7BC90();
}

uint64_t sub_1ABC6EEF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  v10 = sub_1ABC6D9F4(a1);
  v14 = a2;
  v15 = a3;
  v16 = &v17;
  v12[2] = a4;
  v12[3] = &v13;
  sub_1ABC70FDC(v10, a5, v12);
}

uint64_t sub_1ABC6EF94(uint64_t a1)
{
  if (a1 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1ABC6EFB4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1ABC6EF94(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1ABC6EFE0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1ABC6EFAC(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_1ABC6F00C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ABC708EC();
  v5 = sub_1ABC70940();

  return MEMORY[0x1EEE6B588](a1, a2, v4, v5);
}

id sub_1ABC6F064(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC20IntelligencePlatform30_GDSwiftAppleMusicEventContext_swiftContext] = a1;
  v6[3] = sub_1ABAD219C(&qword_1EB4D61A8, &unk_1ABF4FF60);
  v6[4] = sub_1ABC71418();
  v6[0] = a1;
  sub_1ABA93E64(v6, &v1[OBJC_IVAR____TtC20IntelligencePlatform26_GDSwiftGraphObjectContext_context]);
  v5.receiver = v1;
  v5.super_class = type metadata accessor for _GDSwiftGraphObjectContext();

  v3 = objc_msgSendSuper2(&v5, sel_init);
  sub_1ABA84B54(v6);
  return v3;
}

uint64_t _GDSwiftAppleMusicEventContext.init()()
{
  v1 = type metadata accessor for ViewService();
  v2 = static ViewService.clientService.getter(v1);
  sub_1ABAD219C(&qword_1EB4D61A8, &unk_1ABF4FF60);
  v3 = swift_allocObject();
  v4 = v2;
  v5 = v3;
  v6 = CustomAppleMusicEventContext.init<>(viewService:)(v4);
  if (!v0)
  {
    v7 = v6;
    v8 = objc_allocWithZone(type metadata accessor for _GDSwiftAppleMusicEventContext());
    v5 = sub_1ABC6F064(v7);
  }

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v5;
}

unint64_t sub_1ABC6F2B4()
{
  result = qword_1EB4D61C0;
  if (!qword_1EB4D61C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D61C0);
  }

  return result;
}

uint64_t sub_1ABC6F33C()
{
  v2 = sub_1ABAD219C(&qword_1EB4D61B0, &qword_1ABF50310);
  sub_1ABA7AB80(v2);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v3);
  sub_1ABA7E5C0();
  v4 = type metadata accessor for CustomGraphSongEvent(0);
  sub_1ABA7BBB0();
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA7BC58();
  v8 = v7 - v6;
  sub_1ABC6DE84();
  if (!v1)
  {
    if (sub_1ABA7E1E0(v0, 1, v4) == 1)
    {
      sub_1ABAB480C(v0, &qword_1EB4D61B0, &qword_1ABF50310);
      sub_1ABC6F2B4();
      swift_allocError();
      *v9 = 0;
      swift_willThrow();
    }

    else
    {
      sub_1ABC712DC(v0, v8, type metadata accessor for CustomGraphSongEvent);
      CustomGraphSongEvent.toObjectiveCGraphObject()(v11);
      v0 = v12;
      sub_1ABC7133C(v8, type metadata accessor for CustomGraphSongEvent);
    }
  }

  return v0;
}

id sub_1ABC6F50C(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = a1;
  v6 = a4();

  return v6;
}

void sub_1ABC6F5B8(uint64_t a1, _BYTE *a2, void (*a3)(void))
{
  CustomGraphSongEvent.toObjectiveCGraphObject()(*MEMORY[0x1E69E9840]);
  v6 = v5;
  a3();

  *a2 = 0;
}

void sub_1ABC6F650()
{
  sub_1ABA7BCA8();
  sub_1ABA7D8C4();
  v1 = sub_1ABAD219C(&qword_1EB4D1D98, &qword_1ABF4C7C0);
  sub_1ABA7AB80(v1);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v2);
  sub_1ABA7E338();
  sub_1ABC2D3D4(v0);
  sub_1ABA8E988();
  sub_1ABA8E2B8();
  sub_1ABC6DDA4();
  sub_1ABAB480C(v0, &qword_1EB4D1D98, &qword_1ABF4C7C0);
  sub_1ABA7BC90();
}

void sub_1ABC6F7FC()
{
  sub_1ABA7BCA8();
  v2 = v1;
  sub_1ABA7D8C4();
  v3 = sub_1ABAD219C(&qword_1EB4D1D98, &qword_1ABF4C7C0);
  sub_1ABA7AB80(v3);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v4);
  sub_1ABA7E5C0();
  sub_1ABC2D3D4(v0);
  sub_1ABA8E988();
  v5 = sub_1ABA9A4C8();
  sub_1ABC6DCB4(v5, v6, v7, v2, v8, v9);
  sub_1ABAB480C(v0, &qword_1EB4D1D98, &qword_1ABF4C7C0);
  sub_1ABA7BC90();
}

uint64_t sub_1ABC6F918()
{
  sub_1ABA8C0E8();
  swift_getObjectType();
  v0 = sub_1ABA80BAC(1);
  return sub_1ABC6DAC8(v0, v1, v2);
}

unint64_t sub_1ABC6FA08()
{
  result = qword_1EB4D61C8;
  if (!qword_1EB4D61C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB4D61C8);
  }

  return result;
}

uint64_t sub_1ABC6FA80()
{
  v2 = sub_1ABAD219C(&qword_1EB4D1DF8, &unk_1ABF34858);
  sub_1ABA7AB80(v2);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v3);
  sub_1ABA7E338();
  v4 = sub_1ABAD219C(&qword_1EB4D1A80, &qword_1ABF33C10);
  sub_1ABA7BBB0();
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  v11 = *(sub_1ABC6DAB4() + 16);
  sub_1ABAEDE4C();

  if (!v0)
  {
    v11 = 1;
    if (sub_1ABA7E1E0(v1, 1, v4) == 1)
    {
      sub_1ABAB480C(v1, &qword_1EB4D1DF8, &unk_1ABF34858);
      sub_1ABC6F2B4();
      swift_allocError();
      *v12 = 1;
      swift_willThrow();
    }

    else
    {
      sub_1ABBD898C(v1, v10, &qword_1EB4D1A80, &qword_1ABF33C10);
      sub_1ABC6FA08();
      sub_1ABBD88DC(v10, v7, &qword_1EB4D1A80, &qword_1ABF33C10);
      v11 = sub_1ABC71500(v7);
      sub_1ABAB480C(v10, &qword_1EB4D1A80, &qword_1ABF33C10);
    }
  }

  return v11;
}

void sub_1ABC6FC88(uint64_t a1, _BYTE *a2, void (*a3)(void *, char *))
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = sub_1ABAD219C(&qword_1EB4D1A80, &qword_1ABF33C10);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = (&v10 - v7);
  HIBYTE(v10) = 0;
  sub_1ABC6FA08();
  sub_1ABBD88DC(a1, v8, &qword_1EB4D1A80, &qword_1ABF33C10);
  v9 = sub_1ABC71500(v8);
  a3(v9, &v10 + 7);

  *a2 = HIBYTE(v10);
}

void sub_1ABC6FDA4()
{
  sub_1ABA7BCA8();
  sub_1ABA7D8C4();
  v1 = sub_1ABAD219C(&qword_1EB4D1D98, &qword_1ABF4C7C0);
  sub_1ABA7AB80(v1);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v2);
  sub_1ABA7E338();
  sub_1ABC6DAB4();
  sub_1ABC2D3D4(v0);
  sub_1ABA8E988();
  sub_1ABA8E2B8();
  sub_1ABAEAACC();
  sub_1ABAB480C(v0, &qword_1EB4D1D98, &qword_1ABF4C7C0);

  sub_1ABA7BC90();
}

void sub_1ABC6FF4C()
{
  sub_1ABA7BCA8();
  sub_1ABA7D8C4();
  v1 = sub_1ABAD219C(&qword_1EB4D1D98, &qword_1ABF4C7C0);
  sub_1ABA7AB80(v1);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v2);
  sub_1ABA7E5C0();
  sub_1ABC6DAB4();
  sub_1ABC2D3D4(v0);
  sub_1ABA8E988();
  v3 = sub_1ABA9A4C8();
  sub_1ABAEA3A8(v3);
  sub_1ABAB480C(v0, &qword_1EB4D1D98, &qword_1ABF4C7C0);

  sub_1ABA7BC90();
}

uint64_t sub_1ABC70064(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const void *a6, uint64_t a7, void (*a8)(uint64_t, uint64_t, uint64_t, _BYTE *))
{
  v13 = sub_1ABF21984();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  sub_1ABA7BC58();
  v17 = v16 - v15;
  v18 = _Block_copy(a6);
  sub_1ABF21954();
  v22 = v18;
  v19 = a1;
  a8(v17, a4, a7, v21);
  (*(v14 + 8))(v17, v13);

  _Block_release(v18);
  return 1;
}

uint64_t sub_1ABC70204()
{
  sub_1ABA8C0E8();
  swift_getObjectType();
  sub_1ABC6DAB4();
  sub_1ABA80BAC(1);
  sub_1ABAE9F04();
}

uint64_t sub_1ABC702FC(void *a1, int a2, uint64_t a3, int a4, void *aBlock, uint64_t a6, void (*a7)(uint64_t, uint64_t, void *))
{
  v11 = _Block_copy(aBlock);
  v14[2] = v11;
  v12 = a1;
  a7(a3, a6, v14);

  _Block_release(v11);
  return 1;
}

id _GDSwiftAppleMusicEventContext.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _GDSwiftAppleMusicEventContext();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

_BYTE *storeEnumTagSinglePayload for GDAppleMusicEventContextError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1ABC70898()
{
  result = qword_1EB4D61D0;
  if (!qword_1EB4D61D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D61D0);
  }

  return result;
}

unint64_t sub_1ABC708EC()
{
  result = qword_1EB4D61D8;
  if (!qword_1EB4D61D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D61D8);
  }

  return result;
}

unint64_t sub_1ABC70940()
{
  result = qword_1EB4CE760;
  if (!qword_1EB4CE760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CE760);
  }

  return result;
}

uint64_t sub_1ABC70994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, char *), uint64_t a5, uint64_t a6)
{
  v12 = sub_1ABAD219C(&qword_1EB4D61E8, &qword_1ABF500B8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v17 - v13;
  v15 = sub_1ABC6C238(a1, &v18);
  if (!v6)
  {
    v17 = a6;
    MEMORY[0x1EEE9AC00](v15);
    *(&v17 - 4) = a2;
    *(&v17 - 3) = a3;
    *(&v17 - 2) = &v17;
    sub_1ABE55928(sub_1ABC713F8, (&v17 - 6), 1);
    LOBYTE(a4) = a4(&v18, v14);
    sub_1ABAB480C(v14, &qword_1EB4D61E8, &qword_1ABF500B8);
  }

  return a4 & 1;
}

uint64_t sub_1ABC70AEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, char *), uint64_t a5, uint64_t a6)
{
  v11 = sub_1ABAD219C(&qword_1EB4D61E0, &qword_1ABF500B0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v16 - v12;
  v14 = sub_1ABC4A730();
  if (!v6)
  {
    v16 = a6;
    MEMORY[0x1EEE9AC00](v14);
    *(&v16 - 4) = a2;
    *(&v16 - 3) = a3;
    *(&v16 - 2) = &v16;
    sub_1ABE55BD4(sub_1ABC712BC, (&v16 - 6), 1);
    LOBYTE(a4) = a4(&v17, v13);
    sub_1ABAB480C(v13, &qword_1EB4D61E0, &qword_1ABF500B0);
  }

  return a4 & 1;
}

uint64_t sub_1ABC70CEC(uint64_t result, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t *), uint64_t a4, uint64_t (*a5)(uint64_t *, uint64_t (*)(), uint64_t))
{
  v7 = result;
  v8 = *(a2 + 16);
  for (i = (a2 + 32); v8; --v8)
  {
    v10 = *i;
    v15 = *i;
    result = a3(v7, &v15);
    if (v5)
    {
      break;
    }

    v11 = result;
    sub_1ABAD219C(&unk_1EB4DB8A0, &qword_1ABF500A8);
    swift_initStackObject();
    v12 = sub_1ABE7F504(v11);
    swift_beginAccess();
    if (*(v12 + 40))
    {
      v15 = v10;
      v13 = a5(&v15, sub_1ABC712A0, v12);

      if ((v13 & 1) == 0)
      {
        return result;
      }
    }

    else
    {
    }

    ++i;
  }

  return result;
}

uint64_t sub_1ABC70E38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = a3;
  v19 = a4;
  v16 = *v4;
  v17 = a1;
  v6 = sub_1ABAD219C(&qword_1EB4DB820, &qword_1ABF500A0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v16 - v9;
  v12 = v4[5];
  v11 = v4[6];
  sub_1ABBD88DC(a2, &v16 - v9, &qword_1EB4DB820, &qword_1ABF500A0);
  v13 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  *(v14 + 24) = v11;
  sub_1ABBD898C(v10, v14 + v13, &qword_1EB4DB820, &qword_1ABF500A0);
  *(v14 + ((v8 + v13 + 7) & 0xFFFFFFFFFFFFFFF8)) = v16;

  sub_1ABC70C44(v17, v18, v19, sub_1ABC711C4, v14);
}

uint64_t sub_1ABC70FDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1ABAD219C(&qword_1EB4DB820, &qword_1ABF500A0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v11 - v7;
  v9 = sub_1ABF22424();
  sub_1ABA7B9B4(v8, 1, 1, v9);
  sub_1ABC70E38(a1, v8, a2, a3);
  return sub_1ABAB480C(v8, &qword_1EB4DB820, &qword_1ABF500A0);
}

uint64_t sub_1ABC712DC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1ABA7BBB0();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1ABC7133C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1ABA7BBB0();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_1ABC71418()
{
  result = qword_1EB4D61F0;
  if (!qword_1EB4D61F0)
  {
    sub_1ABAE2850(&qword_1EB4D61A8, &unk_1ABF4FF60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D61F0);
  }

  return result;
}

id sub_1ABC71500(uint64_t *a1)
{
  v2 = sub_1ABAD219C(&qword_1EB4D9BF0, &qword_1ABF34240);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v13 - v3;
  v5 = *a1;
  sub_1ABC71698();
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_];
  if (result)
  {
    v7 = result;
    v8 = sub_1ABAD219C(&qword_1EB4D1A80, &qword_1ABF33C10);
    v9 = sub_1ABF21E34();
    sub_1ABAE6A34(a1 + *(v8 + 40), v4);
    v10 = sub_1ABF21EB4();
    v11 = 0;
    if (sub_1ABA7E1E0(v4, 1, v10) != 1)
    {
      v11 = sub_1ABF21E34();
      (*(*(v10 - 8) + 8))(v4, v10);
    }

    v12 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithEntityIdentifier:v7 startDate:v9 endDate:v11];

    sub_1ABC716DC(a1);
    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1ABC71698()
{
  result = qword_1EB4D6078;
  if (!qword_1EB4D6078)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB4D6078);
  }

  return result;
}

uint64_t sub_1ABC716DC(uint64_t a1)
{
  v2 = sub_1ABAD219C(&qword_1EB4D1A80, &qword_1ABF33C10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1ABC71744(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ABC7287C();
  v5 = sub_1ABC70940();

  return MEMORY[0x1EEE6B588](a1, a2, v4, v5);
}

id sub_1ABC7179C(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC20IntelligencePlatform30_GDSwiftFutureLifeEventContext_swiftContext] = a1;
  v6[3] = sub_1ABAD219C(&qword_1EB4D61F8, &unk_1ABF500C0);
  v6[4] = sub_1ABC728D8();
  v6[0] = a1;
  sub_1ABA93E64(v6, &v1[OBJC_IVAR____TtC20IntelligencePlatform26_GDSwiftGraphObjectContext_context]);
  v5.receiver = v1;
  v5.super_class = type metadata accessor for _GDSwiftGraphObjectContext();

  v3 = objc_msgSendSuper2(&v5, sel_init);
  sub_1ABA84B54(v6);
  return v3;
}

uint64_t _GDSwiftFutureLifeEventContext.init()()
{
  v1 = type metadata accessor for ViewService();
  v2 = static ViewService.clientService.getter(v1);
  sub_1ABAD219C(&qword_1EB4D61F8, &unk_1ABF500C0);
  v3 = swift_allocObject();
  v4 = v2;
  v5 = v3;
  v6 = CustomFutureLifeEventContext.init<>(viewService:)(v4);
  if (!v0)
  {
    v7 = v6;
    v8 = objc_allocWithZone(type metadata accessor for _GDSwiftFutureLifeEventContext());
    v5 = sub_1ABC7179C(v7);
  }

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v5;
}

unint64_t sub_1ABC719FC()
{
  result = qword_1EB4D6210;
  if (!qword_1EB4D6210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D6210);
  }

  return result;
}

uint64_t sub_1ABC71A50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CustomGraphActivityEvent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1ABC71AB4(uint64_t a1)
{
  v2 = type metadata accessor for CustomGraphActivityEvent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_1ABC71B54(void (*a1)(__n128))
{
  v3 = sub_1ABAD219C(&qword_1EB4D6200, &unk_1ABF6CC00);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v15 - v4;
  v6 = type metadata accessor for CustomGraphActivityEvent(0);
  sub_1ABA7BBB0();
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  a1(v8);
  if (!v1)
  {
    if (sub_1ABA7E1E0(v5, 1, v6) == 1)
    {
      sub_1ABAB480C(v5, &qword_1EB4D6200, &unk_1ABF6CC00);
      sub_1ABC719FC();
      swift_allocError();
      *v11 = 0;
      swift_willThrow();
    }

    else
    {
      sub_1ABC71A50(v5, v10);
      CustomGraphActivityEvent.toObjectiveCGraphObject()(v13);
      v5 = v14;
      sub_1ABC71AB4(v10);
    }
  }

  return v5;
}

void sub_1ABC71CE4(uint64_t a1, _BYTE *a2, void (*a3)(void))
{
  CustomGraphActivityEvent.toObjectiveCGraphObject()(*MEMORY[0x1E69E9840]);
  v6 = v5;
  a3();

  *a2 = 0;
}

void sub_1ABC71D7C()
{
  sub_1ABA7F3D0();
  v0 = sub_1ABA80BAC(1);
  sub_1ABC6DB74(v0, v1, v2);
}

uint64_t sub_1ABC71E60(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ABAD219C(&qword_1EB4D18F8, &qword_1ABF33A88);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1ABC71ED0()
{
  result = qword_1EB4D6218;
  if (!qword_1EB4D6218)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB4D6218);
  }

  return result;
}

uint64_t sub_1ABC71F14(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ABAD219C(&qword_1EB4D18F8, &qword_1ABF33A88);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1ABC71FB8()
{
  v1 = sub_1ABAD219C(&qword_1EB4D1DD0, &qword_1ABF34830);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v14 - v2;
  v4 = sub_1ABAD219C(&qword_1EB4D18F8, &qword_1ABF33A88);
  sub_1ABA7BBB0();
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  v11 = *(sub_1ABC6DAB4() + 16);
  sub_1ABAEDEE4();

  if (!v0)
  {
    v11 = 1;
    if (sub_1ABA7E1E0(v3, 1, v4) == 1)
    {
      sub_1ABAB480C(v3, &qword_1EB4D1DD0, &qword_1ABF34830);
      sub_1ABC719FC();
      swift_allocError();
      *v12 = 1;
      swift_willThrow();
    }

    else
    {
      sub_1ABC71E60(v3, v10);
      sub_1ABC71ED0();
      sub_1ABC71F14(v10, v7);
      v11 = sub_1ABC7293C(v7);
      sub_1ABAB480C(v10, &qword_1EB4D18F8, &qword_1ABF33A88);
    }
  }

  return v11;
}

id sub_1ABC721B8(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = a1;
  v6 = a4();

  return v6;
}

void sub_1ABC72264(uint64_t a1, _BYTE *a2, void (*a3)(void *, char *))
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = sub_1ABAD219C(&qword_1EB4D18F8, &qword_1ABF33A88);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = (&v10 - v7);
  HIBYTE(v10) = 0;
  sub_1ABC71ED0();
  sub_1ABC71F14(a1, v8);
  v9 = sub_1ABC7293C(v8);
  a3(v9, &v10 + 7);

  *a2 = HIBYTE(v10);
}

uint64_t sub_1ABC72368()
{
  sub_1ABA7F3D0();
  sub_1ABC6DAB4();
  v0 = sub_1ABA80BAC(1);
  sub_1ABAE9F20(v0, v1, v2);
}

uint64_t sub_1ABC72454(void *a1, int a2, uint64_t a3, int a4, void *aBlock, uint64_t a6, void (*a7)(uint64_t, uint64_t, void *))
{
  v11 = _Block_copy(aBlock);
  v14[2] = v11;
  v12 = a1;
  a7(a3, a6, v14);

  _Block_release(v11);
  return 1;
}

id _GDSwiftFutureLifeEventContext.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _GDSwiftFutureLifeEventContext();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

_BYTE *storeEnumTagSinglePayload for GDFutureLifeEventContextError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1ABC72828()
{
  result = qword_1EB4D6220;
  if (!qword_1EB4D6220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D6220);
  }

  return result;
}

unint64_t sub_1ABC7287C()
{
  result = qword_1EB4D6228;
  if (!qword_1EB4D6228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D6228);
  }

  return result;
}

unint64_t sub_1ABC728D8()
{
  result = qword_1EB4CED18;
  if (!qword_1EB4CED18)
  {
    sub_1ABAE2850(&qword_1EB4D61F8, &unk_1ABF500C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CED18);
  }

  return result;
}

id sub_1ABC7293C(uint64_t *a1)
{
  v2 = *a1;
  sub_1ABC72A1C();
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_];
  if (result)
  {
    v4 = result;
    v5 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    sub_1ABAD219C(&qword_1EB4D18F8, &qword_1ABF33A88);
    v6 = sub_1ABF21E34();
    v7 = sub_1ABF21E34();
    v8 = [v5 initWithEntityIdentifier:v4 startDate:v6 endDate:v7];

    sub_1ABC72A60(a1);
    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1ABC72A1C()
{
  result = qword_1EB4CE650;
  if (!qword_1EB4CE650)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB4CE650);
  }

  return result;
}

uint64_t sub_1ABC72A60(uint64_t a1)
{
  v2 = sub_1ABAD219C(&qword_1EB4D18F8, &qword_1ABF33A88);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1ABC75BC4()
{
  sub_1ABA841B8();
  sub_1ABA83928(OBJC_IVAR____TtC20IntelligencePlatform26_GDSwiftGraphObjectContext_context);
  [v1 intValue];
  sub_1ABC77190(sub_1ABC4C8B4, &v18);
  v2 = sub_1ABC6B7C4();
  sub_1ABA94A84(&v18, v3, &type metadata for CustomGraphCalendarEvent, v4, v2, v5, v6, v7, v13, v14, v15, v16[0], v16[1], v16[2], v16[3], v16[4], v16[5], v16[6], v16[7], v16[8]);
  if (!v0)
  {
    memcpy(__dst, __src, sizeof(__dst));
    if (__dst[1])
    {
      memcpy(v16, &__src[16], sizeof(v16));
      CustomGraphCalendarEvent.toObjectiveCGraphObject()(v8);
      sub_1ABAB480C(__dst, &qword_1EB4D6340, &qword_1ABF50308);
    }

    else
    {
      v10 = sub_1ABC7713C();
      v11 = sub_1ABA7BD00(&type metadata for GDGraphObjectContextError, v10);
      sub_1ABA8E0B8(v11, v12);
    }
  }

  return sub_1ABA80BE4();
}

uint64_t sub_1ABC75E54()
{
  sub_1ABA841B8();
  sub_1ABA83928(OBJC_IVAR____TtC20IntelligencePlatform26_GDSwiftGraphObjectContext_context);
  [v1 intValue];
  sub_1ABC77190(sub_1ABC4A630, &v17);
  v2 = sub_1ABC6B898();
  sub_1ABA94A84(&v17, v3, &type metadata for CustomGraphLocation, v4, v2, v5, v6, v7, v13, v14[0], v14[1], v14[2], v14[3], v14[4], v14[5], v14[6], v14[7], v14[8], v14[9], v14[10]);
  if (!v0)
  {
    memcpy(__dst, __src, sizeof(__dst));
    memcpy(v16, __src, sizeof(v16));
    if (sub_1ABAC9370(v16) == 1)
    {
      v8 = sub_1ABC7713C();
      v9 = sub_1ABA7BD00(&type metadata for GDGraphObjectContextError, v8);
      sub_1ABA8E0B8(v9, v10);
    }

    else
    {
      memcpy(v14, v16, sizeof(v14));
      CustomGraphLocation.toObjectiveCGraphObject()(v12);
      sub_1ABAB480C(__dst, &qword_1EB4D6348, &qword_1ABF50318);
    }
  }

  return sub_1ABA80BE4();
}

id sub_1ABC75F6C()
{
  sub_1ABA841B8();
  sub_1ABA83928(OBJC_IVAR____TtC20IntelligencePlatform26_GDSwiftGraphObjectContext_context);
  [v1 intValue];
  sub_1ABC77190(sub_1ABC4A52C, v32);
  v3 = sub_1ABC6B914();
  sub_1ABA94A84(v32, v4, &type metadata for CustomGraphOrganization, v5, v3, v6, v7, v8, v22, v23, v24, v26, v27, v28, v29, v30, v31, v32[0], v32[1], v32[2]);
  if (v0)
  {
    return sub_1ABA80BE4();
  }

  if (!v25)
  {
    v19 = sub_1ABC7713C();
    v20 = sub_1ABA7BD00(&type metadata for GDGraphObjectContextError, v19);
    sub_1ABA8E0B8(v20, v21);
    return sub_1ABA80BE4();
  }

  sub_1ABAA3CFC();
  sub_1ABAFF390(0, &qword_1EB4D5F10, off_1E79600B8);
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_];
  if (result)
  {
    objc_allocWithZone(GDGraphOrganization);

    sub_1ABAA58BC();
    sub_1ABAA40F0();
    sub_1ABC68EEC(v10, v11, v12, v13, v14, v15, v16);
    v17 = sub_1ABA818E8();
    sub_1ABC77428(v17, v18);
    return sub_1ABA80BE4();
  }

  __break(1u);
  return result;
}

uint64_t sub_1ABC760CC()
{
  sub_1ABA841B8();
  sub_1ABA83928(OBJC_IVAR____TtC20IntelligencePlatform26_GDSwiftGraphObjectContext_context);
  [v1 intValue];
  sub_1ABC77190(sub_1ABC4C9B8, &v17);
  v2 = sub_1ABC6B990();
  sub_1ABA94A84(&v17, v3, &type metadata for CustomGraphSportsTeam, v4, v2, v5, v6, v7, v13, v14, v15[0], v15[1], v15[2], v15[3], v15[4], v15[5], v15[6], v15[7], v15[8], __dst[0]);
  if (!v0)
  {
    memcpy(__dst, __src, sizeof(__dst));
    if (__dst[1])
    {
      memcpy(v15, &__src[16], sizeof(v15));
      CustomGraphSportsTeam.toObjectiveCGraphObject()(v8);
      sub_1ABAB480C(__dst, &unk_1EB4DB3E0, &unk_1ABF50320);
    }

    else
    {
      v10 = sub_1ABC7713C();
      v11 = sub_1ABA7BD00(&type metadata for GDGraphObjectContextError, v10);
      sub_1ABA8E0B8(v11, v12);
    }
  }

  return sub_1ABA80BE4();
}

id sub_1ABC7635C()
{
  sub_1ABA841B8();
  sub_1ABA83928(OBJC_IVAR____TtC20IntelligencePlatform26_GDSwiftGraphObjectContext_context);
  [v1 intValue];
  sub_1ABC77190(sub_1ABC4A42C, &v22);
  v2 = sub_1ABC6BA64();
  sub_1ABA94A84(&v22, v3, &type metadata for CustomGraphTopic, v4, v2, v5, v6, v7, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32);
  if (v0)
  {
    return sub_1ABA80BE4();
  }

  v8 = v24;
  if (!v24)
  {
    v18 = sub_1ABC7713C();
    v19 = sub_1ABA7BD00(&type metadata for GDGraphObjectContextError, v18);
    sub_1ABA8E0B8(v19, v20);
    return sub_1ABA80BE4();
  }

  v9 = v23;
  sub_1ABAFF390(0, &qword_1EB4D5F18, off_1E79601A0);
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_];
  if (result)
  {
    objc_allocWithZone(GDGraphTopic);

    v11 = sub_1ABAA58BC();
    sub_1ABC69738(v11, v12, v13, v8);
    v14 = sub_1ABA818E8();
    sub_1ABAA8FA8(v14, v15, v16, v17);
    return sub_1ABA80BE4();
  }

  __break(1u);
  return result;
}

uint64_t sub_1ABC76498()
{
  sub_1ABA841B8();
  sub_1ABA83928(OBJC_IVAR____TtC20IntelligencePlatform26_GDSwiftGraphObjectContext_context);
  [v1 intValue];
  sub_1ABC77190(sub_1ABC4CABC, &v17);
  v2 = sub_1ABC6BAE0();
  sub_1ABA94A84(&v17, v3, &type metadata for CustomGraphSong, v4, v2, v5, v6, v7, v13, v14[0], v14[1], v14[2], v14[3], v14[4], v14[5], v14[6], v14[7], v14[8], v14[9], v14[10]);
  if (!v0)
  {
    memcpy(__dst, __src, sizeof(__dst));
    memcpy(v16, __src, sizeof(v16));
    if (sub_1ABAC9370(v16) == 1)
    {
      v8 = sub_1ABC7713C();
      v9 = sub_1ABA7BD00(&type metadata for GDGraphObjectContextError, v8);
      sub_1ABA8E0B8(v9, v10);
    }

    else
    {
      memcpy(v14, v16, sizeof(v14));
      CustomGraphSong.toObjectiveCGraphObject()(v12);
      sub_1ABAB480C(__dst, &qword_1EB4D6350, &unk_1ABF50330);
    }
  }

  return sub_1ABA80BE4();
}

id sub_1ABC765B0()
{
  sub_1ABA841B8();
  sub_1ABA83928(OBJC_IVAR____TtC20IntelligencePlatform26_GDSwiftGraphObjectContext_context);
  [v1 intValue];
  sub_1ABC77190(sub_1ABC4CBC0, &v22);
  v2 = sub_1ABC6BB5C();
  sub_1ABA94A84(&v22, v3, &type metadata for CustomGraphActivityEventType, v4, v2, v5, v6, v7, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32);
  if (v0)
  {
    return sub_1ABA80BE4();
  }

  v8 = v24;
  if (!v24)
  {
    v18 = sub_1ABC7713C();
    v19 = sub_1ABA7BD00(&type metadata for GDGraphObjectContextError, v18);
    sub_1ABA8E0B8(v19, v20);
    return sub_1ABA80BE4();
  }

  v9 = v23;
  sub_1ABAFF390(0, &qword_1EB4D5F50, off_1E795FF08);
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_];
  if (result)
  {
    objc_allocWithZone(GDGraphActivityEventType);

    v11 = sub_1ABAA58BC();
    sub_1ABC69AC8(v11, v12, v13, v8);
    v14 = sub_1ABA818E8();
    sub_1ABAA8FA8(v14, v15, v16, v17);
    return sub_1ABA80BE4();
  }

  __break(1u);
  return result;
}

uint64_t sub_1ABC766EC()
{
  sub_1ABA841B8();
  sub_1ABA83928(OBJC_IVAR____TtC20IntelligencePlatform26_GDSwiftGraphObjectContext_context);
  [v1 intValue];
  sub_1ABC77190(sub_1ABC4CCC4, var28);
  v2 = sub_1ABC6BBD8();
  sub_1ABA94A84(var28, v3, &type metadata for CustomGraphModeOfTransportation, v4, v2, v5, v6, v7, v12, v13, v14, v16, v17, var28[0], var28[1], var28[2], var28[3], var28[4], var28[5], var28[6]);
  if (!v0)
  {
    if (v15)
    {
      CustomGraphModeOfTransportation.toObjectiveCGraphObject()();
    }

    else
    {
      v9 = sub_1ABC7713C();
      v10 = sub_1ABA7BD00(&type metadata for GDGraphObjectContextError, v9);
      sub_1ABA8E0B8(v10, v11);
    }
  }

  return sub_1ABA80BE4();
}

id sub_1ABC767D0()
{
  sub_1ABA841B8();
  sub_1ABA83928(OBJC_IVAR____TtC20IntelligencePlatform26_GDSwiftGraphObjectContext_context);
  [v1 intValue];
  sub_1ABC77190(sub_1ABC4CDC8, v32);
  v3 = sub_1ABC6BC54();
  sub_1ABA94A84(v32, v4, &type metadata for CustomGraphSoftware, v5, v3, v6, v7, v8, v22, v23, v24, v26, v27, v28, v29, v30, v31, v32[0], v32[1], v32[2]);
  if (v0)
  {
    return sub_1ABA80BE4();
  }

  if (!v25)
  {
    v19 = sub_1ABC7713C();
    v20 = sub_1ABA7BD00(&type metadata for GDGraphObjectContextError, v19);
    sub_1ABA8E0B8(v20, v21);
    return sub_1ABA80BE4();
  }

  sub_1ABAA3CFC();
  sub_1ABAFF390(0, &qword_1EB4D5FD8, off_1E7960130);
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_];
  if (result)
  {
    objc_allocWithZone(GDGraphSoftware);

    sub_1ABAA58BC();
    sub_1ABAA40F0();
    sub_1ABC69C04(v10, v11, v12, v13, v14, v15, v16);
    v17 = sub_1ABA818E8();
    sub_1ABC77428(v17, v18);
    return sub_1ABA80BE4();
  }

  __break(1u);
  return result;
}

uint64_t sub_1ABC76930()
{
  sub_1ABA841B8();
  ObjectSynthesisDictionaryMapping.init()(v25);
  v3 = v25[0];
  v4 = (v1 + OBJC_IVAR____TtC20IntelligencePlatform26_GDSwiftGraphObjectContext_context);
  v5 = *(v1 + OBJC_IVAR____TtC20IntelligencePlatform26_GDSwiftGraphObjectContext_context + 24);
  v6 = v4[4];
  sub_1ABA93E20(v4, v5);
  v7 = [v2 intValue];
  GraphObjectBareContextProtocol.graphObject<A>(forUntyped:mapping:)(v21, &v18, v5, &type metadata for ObjectSynthesisDictionaryMapping, v6, &protocol witness table for ObjectSynthesisDictionaryMapping, v8, v9, v3, *(&v18 + 1), v19, *(&v19 + 1), v20, v7, v21[1], v21[2], v21[3], v21[4], v22, *(&v22 + 1));

  if (!v0)
  {
    if (v23)
    {
      sub_1ABA946C0(&v22, v25);
      sub_1ABA93E64(v25, v21);
      sub_1ABAD219C(&qword_1EB4D6360, &qword_1ABF50340);
      sub_1ABAD219C(&qword_1EB4D6368, &qword_1ABF50348);
      if (swift_dynamicCast())
      {
        sub_1ABA946C0(&v18, &v22);
        v12 = v23;
        v11 = v24;
        sub_1ABA93E20(&v22, v23);
        (*(*(v11 + 16) + 24))(v12);
        sub_1ABA84B54(v25);
        sub_1ABA84B54(&v22);
      }

      else
      {
        v20 = 0;
        v18 = 0u;
        v19 = 0u;
        sub_1ABAB480C(&v18, &qword_1EB4D6370, &unk_1ABF50350);
        v16 = sub_1ABC7713C();
        sub_1ABA7BD00(&type metadata for GDGraphObjectContextError, v16);
        *v17 = 1;
        swift_willThrow();
        sub_1ABA84B54(v25);
      }
    }

    else
    {
      sub_1ABAB480C(&v22, &qword_1EB4D6358, &unk_1ABF50900);
      v13 = sub_1ABC7713C();
      v14 = sub_1ABA7BD00(&type metadata for GDGraphObjectContextError, v13);
      sub_1ABA8E0B8(v14, v15);
    }
  }

  return sub_1ABA80BE4();
}

uint64_t sub_1ABC76B34(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ABC782B8();
  v5 = sub_1ABC70940();

  return MEMORY[0x1EEE6B588](a1, a2, v4, v5);
}

id sub_1ABC76FC4(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(id))
{
  v7 = a3;
  v8 = a1;
  v9 = a5(v7);

  return v9;
}

id _GDSwiftGraphObjectContext.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id _GDSwiftGraphObjectContext.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for _GDSwiftGraphObjectContext();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_1ABC7713C()
{
  result = qword_1EB4D6240;
  if (!qword_1EB4D6240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D6240);
  }

  return result;
}

void *sub_1ABC77190@<X0>(void *(*a1)(uint64_t *__return_ptr)@<X1>, void *a2@<X8>)
{
  result = a1(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_1ABC77328(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1ABC77370(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1ABA7BBB0();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1ABC773D0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1ABA7BBB0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1ABC77428(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for GDGraphObjectContextError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1ABC78264()
{
  result = qword_1EB4D6378;
  if (!qword_1EB4D6378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D6378);
  }

  return result;
}

unint64_t sub_1ABC782B8()
{
  result = qword_1EB4D6380;
  if (!qword_1EB4D6380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D6380);
  }

  return result;
}

uint64_t sub_1ABC7832C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ABC79BF0();
  v5 = sub_1ABC70940();

  return MEMORY[0x1EEE6B588](a1, a2, v4, v5);
}

id sub_1ABC78384(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC20IntelligencePlatform24_GDSwiftLifeEventContext_swiftContext] = a1;
  v6[3] = sub_1ABAD219C(&qword_1EB4D6388, &unk_1ABF50490);
  v6[4] = sub_1ABC79C44();
  v6[0] = a1;
  sub_1ABA93E64(v6, &v1[OBJC_IVAR____TtC20IntelligencePlatform26_GDSwiftGraphObjectContext_context]);
  v5.receiver = v1;
  v5.super_class = type metadata accessor for _GDSwiftGraphObjectContext();

  v3 = objc_msgSendSuper2(&v5, sel_init);
  sub_1ABA84B54(v6);
  return v3;
}

uint64_t _GDSwiftLifeEventContext.init()()
{
  v1 = type metadata accessor for ViewService();
  v2 = static ViewService.clientService.getter(v1);
  sub_1ABAD219C(&qword_1EB4D6388, &unk_1ABF50490);
  v3 = swift_allocObject();
  v4 = v2;
  v5 = v3;
  v6 = CustomLifeEventContext.init<>(viewService:)(v4);
  if (!v0)
  {
    v7 = v6;
    v8 = objc_allocWithZone(type metadata accessor for _GDSwiftLifeEventContext());
    v5 = sub_1ABC78384(v7);
  }

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v5;
}

uint64_t sub_1ABC78604(void (*a1)(__n128))
{
  v4 = sub_1ABAD219C(&qword_1EB4D6200, &unk_1ABF6CC00);
  sub_1ABA7AB80(v4);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA7E5C0();
  v6 = type metadata accessor for CustomGraphActivityEvent(0);
  sub_1ABA7BBB0();
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  a1(v8);
  if (!v2)
  {
    if (sub_1ABA7E1E0(v1, 1, v6) == 1)
    {
      sub_1ABAB480C(v1, &qword_1EB4D6200, &unk_1ABF6CC00);
      sub_1ABC7956C();
      swift_allocError();
      *v11 = 0;
      swift_willThrow();
    }

    else
    {
      sub_1ABC71A50(v1, v10);
      CustomGraphActivityEvent.toObjectiveCGraphObject()(v13);
      v1 = v14;
      sub_1ABC71AB4(v10);
    }
  }

  return v1;
}

void sub_1ABC78784()
{
  sub_1ABA7BCA8();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  ObjectType = swift_getObjectType();
  v7 = sub_1ABAD219C(&qword_1EB4D1D98, &qword_1ABF4C7C0);
  sub_1ABA7AB80(v7);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v11 - v9;
  sub_1ABC2D3D4(v11 - v9);
  v11[2] = v3;
  v11[3] = v1;
  v11[4] = ObjectType;
  sub_1ABC6DD78(v10, (v5 & 1) == 0, sub_1ABC79CA8, v11);
  sub_1ABAB480C(v10, &qword_1EB4D1D98, &qword_1ABF4C7C0);
  sub_1ABA7BC90();
}

void sub_1ABC7894C()
{
  sub_1ABA7BCA8();
  v8 = v2;
  v4 = v3;
  sub_1ABA7D8C4();
  v5 = sub_1ABAD219C(&qword_1EB4D1D98, &qword_1ABF4C7C0);
  sub_1ABA7AB80(v5);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v6);
  sub_1ABA7E5C0();
  sub_1ABC2D3D4(v0);
  sub_1ABA8E988();
  sub_1ABC6DC88(v4, v0, (v1 & 1) == 0, v8, &v7);
  sub_1ABAB480C(v0, &qword_1EB4D1D98, &qword_1ABF4C7C0);
  sub_1ABA7BC90();
}

void sub_1ABC78A60()
{
  sub_1ABA7F3D0();
  sub_1ABA80BAC(1);
  sub_1ABC6DC48();
}

uint64_t sub_1ABC78B48()
{
  v1 = sub_1ABAD219C(&qword_1EB4D1DB8, &qword_1ABF34818);
  sub_1ABA7AB80(v1);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v15 - v3;
  v5 = sub_1ABAD219C(&qword_1EB4D1388, &qword_1ABF33510);
  sub_1ABA7BBB0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v15 - v10;
  v12 = *(sub_1ABC6DAB4() + 16);
  sub_1ABAEDF7C();

  if (!v0)
  {
    v12 = 1;
    if (sub_1ABA7E1E0(v4, 1, v5) == 1)
    {
      sub_1ABAB480C(v4, &qword_1EB4D1DB8, &qword_1ABF34818);
      sub_1ABC7956C();
      swift_allocError();
      *v13 = 1;
      swift_willThrow();
    }

    else
    {
      sub_1ABC795C0(v4, v11);
      sub_1ABC79630();
      sub_1ABC79674(v11, v8);
      v12 = sub_1ABC79CD8(v8);
      sub_1ABAB480C(v11, &qword_1EB4D1388, &qword_1ABF33510);
    }
  }

  return v12;
}

id sub_1ABC78D40(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = a1;
  v6 = a4();

  return v6;
}

void sub_1ABC78DEC(uint64_t a1, _BYTE *a2, void (*a3)(void *, char *))
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = sub_1ABAD219C(&qword_1EB4D1388, &qword_1ABF33510);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = (&v10 - v7);
  HIBYTE(v10) = 0;
  sub_1ABC79630();
  sub_1ABC79674(a1, v8);
  v9 = sub_1ABC79CD8(v8);
  a3(v9, &v10 + 7);

  *a2 = HIBYTE(v10);
}

void sub_1ABC78EF0()
{
  sub_1ABA7BCA8();
  sub_1ABA7D8C4();
  v0 = sub_1ABAD219C(&qword_1EB4D1D98, &qword_1ABF4C7C0);
  sub_1ABA7AB80(v0);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v4 - v2;
  sub_1ABC6DAB4();
  sub_1ABC2D3D4(v3);
  sub_1ABA8E988();
  sub_1ABAEAAFC();
  sub_1ABAB480C(v3, &qword_1EB4D1D98, &qword_1ABF4C7C0);

  sub_1ABA7BC90();
}

void sub_1ABC790AC()
{
  sub_1ABA7BCA8();
  v7 = v2;
  v4 = v3;
  sub_1ABA7D8C4();
  v5 = sub_1ABAD219C(&qword_1EB4D1D98, &qword_1ABF4C7C0);
  sub_1ABA7AB80(v5);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v6);
  sub_1ABA7E5C0();
  sub_1ABC6DAB4();
  sub_1ABC2D3D4(v0);
  sub_1ABA8E988();
  sub_1ABAEA510(v4, v0, (v1 & 1) == 0, v7, &v8);
  sub_1ABAB480C(v0, &qword_1EB4D1D98, &qword_1ABF4C7C0);

  sub_1ABA7BC90();
}

uint64_t sub_1ABC791D0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const void *a6, uint64_t a7, void (*a8)(char *, uint64_t, uint64_t, _BYTE *))
{
  v20[1] = a5;
  v13 = sub_1ABF21984();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = _Block_copy(a6);
  sub_1ABF21954();
  v22 = v17;
  v18 = a1;
  a8(v16, a4, a7, v21);
  (*(v14 + 8))(v16, v13);

  _Block_release(v17);
  return 1;
}

uint64_t sub_1ABC79378()
{
  sub_1ABA7F3D0();
  sub_1ABC6DAB4();
  sub_1ABA80BAC(1);
  sub_1ABAE9FAC();
}

uint64_t sub_1ABC79434(void *a1, int a2, uint64_t a3, int a4, void *aBlock, uint64_t a6, void (*a7)(uint64_t, uint64_t, void *))
{
  v11 = _Block_copy(aBlock);
  v14[2] = v11;
  v12 = a1;
  a7(a3, a6, v14);

  _Block_release(v11);
  return 1;
}

id _GDSwiftLifeEventContext.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _GDSwiftLifeEventContext();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1ABC7956C()
{
  result = qword_1EB4D6398;
  if (!qword_1EB4D6398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D6398);
  }

  return result;
}

uint64_t sub_1ABC795C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ABAD219C(&qword_1EB4D1388, &qword_1ABF33510);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1ABC79630()
{
  result = qword_1EB4CE6F8;
  if (!qword_1EB4CE6F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB4CE6F8);
  }

  return result;
}

uint64_t sub_1ABC79674(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ABAD219C(&qword_1EB4D1388, &qword_1ABF33510);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_BYTE *storeEnumTagSinglePayload for GDLifeEventContextError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1ABC79B9C()
{
  result = qword_1EB4D63A0;
  if (!qword_1EB4D63A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D63A0);
  }

  return result;
}

unint64_t sub_1ABC79BF0()
{
  result = qword_1EB4D63A8;
  if (!qword_1EB4D63A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D63A8);
  }

  return result;
}

unint64_t sub_1ABC79C44()
{
  result = qword_1EB4CF040;
  if (!qword_1EB4CF040)
  {
    sub_1ABAE2850(&qword_1EB4D6388, &unk_1ABF50490);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF040);
  }

  return result;
}

id sub_1ABC79CD8(uint64_t *a1)
{
  v2 = *a1;
  sub_1ABC72A1C();
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithValue_];
  if (result)
  {
    v4 = result;
    v5 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    sub_1ABAD219C(&qword_1EB4D1388, &qword_1ABF33510);
    v6 = sub_1ABF21E34();
    v7 = sub_1ABF21E34();
    v8 = [v5 initWithEntityIdentifier:v4 startDate:v6 endDate:v7];

    sub_1ABC79DB8(a1);
    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1ABC79DB8(uint64_t a1)
{
  v2 = sub_1ABAD219C(&qword_1EB4D1388, &qword_1ABF33510);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1ABC79E20(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1ABAD219C(&qword_1EB4D1B40, &qword_1ABF34150);
  swift_allocObject();

  v4 = sub_1ABAE6998();
  v8[3] = v3;
  v8[4] = sub_1ABC79F6C();
  v8[0] = v4;
  sub_1ABA93E64(v8, v2 + OBJC_IVAR____TtC20IntelligencePlatform26_GDSwiftGraphObjectContext_context);
  v7.receiver = v2;
  v7.super_class = type metadata accessor for _GDSwiftGraphObjectContext();

  v5 = objc_msgSendSuper2(&v7, sel_init);
  sub_1ABA84B54(v8);

  return v5;
}

id _GDSwiftSubgraphViewContext.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _GDSwiftSubgraphViewContext();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1ABC79F6C()
{
  result = qword_1EB4D63B0;
  if (!qword_1EB4D63B0)
  {
    sub_1ABAE2850(&qword_1EB4D1B40, &qword_1ABF34150);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D63B0);
  }

  return result;
}

uint64_t sub_1ABC79FD0()
{
  *&__src[0] = 7628135;
  *(&__src[0] + 1) = 0xE300000000000000;
  *&__src[1] = &unk_1F208E5D8;
  *(&__src[1] + 1) = 115;
  *&__src[2] = 0xE100000000000000;
  BYTE8(__src[2]) = 0;
  *&__src[3] = 0xD000000000000034;
  *(&__src[3] + 1) = 0x80000001ABF8D510;
  *&__src[4] = 0;
  *(&__src[4] + 1) = 0xE000000000000000;
  memset(&__src[5], 0, 32);
  memset(v4, 0, sizeof(v4));
  memcpy((v0 + 16), __src, 0x70uLL);

  sub_1ABB51320(__src, &v2);
  sub_1ABAE4AA8(v4);

  sub_1ABB5137C(__src);
  return v0;
}

uint64_t sub_1ABC7A09C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (((1 << *(a6 + 64)) & 0x1FA) != 0)
  {
    swift_beginAccess();
    if (*(a6 + 32))
    {
      v10 = sub_1ABAE305C();
      swift_endAccess();
      if (v10)
      {
        swift_beginAccess();
        v11 = *(v10 + 16);

        v10 = sub_1ABE8AE5C(v11);
      }
    }

    else
    {
      swift_endAccess();
      v10 = 0;
    }

    swift_beginAccess();
    if (*(a6 + 32) && (v12 = sub_1ABAE305C()) != 0)
    {
      v13 = v12;
      swift_endAccess();
      swift_beginAccess();
      v14 = *(v13 + 16);

      v15 = sub_1ABE8AE5C(v14);
    }

    else
    {
      swift_endAccess();
      v15 = 0;
    }

    sub_1ABAD219C(&qword_1EB4D63B8, &qword_1ABF673F0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1ABF34060;
    *(v16 + 32) = v10;
    *(v16 + 40) = v15;
    v17 = sub_1ABE9059C(v16);
    swift_setDeallocating();

    sub_1ABB4DB48();
    if ((v17 & 1) == 0)
    {
      v23 = a2 + *(type metadata accessor for QueryContext(0) + 32);
      v25 = *(v23 + 88);
      v26 = *(v23 + 104);
      v27 = 32;
      if (v25 >> 1 != 0xFFFFFFFF || (*(v23 + 104) & 0x1E) != 0)
      {
        v34 = *(v23 + 96);
        memcpy(__dst, v23, sizeof(__dst));
        v39 = v25;
        v40 = v34;
        v41 = v26;
        v52 = 1;
        *&__src[0] = 0;
        *(&__src[0] + 1) = v10;
        *&__src[1] = 0;
        *(&__src[1] + 1) = v15;
        *(&__src[5] + 1) = 0;
        memset(&__src[2], 0, 48);
        BYTE8(__src[6]) = 32;
        sub_1ABE39F20();
        if (v6)
        {
          memcpy(v36, __src, 0x69uLL);
          sub_1ABAE4B6C(v36);
          return v22 & 1;
        }

        memcpy(v36, __src, 0x69uLL);
        sub_1ABAE4B6C(v36);
        v28 = v42;
        v10 = v43;
        v29 = v44;
        v15 = v45;
        v30 = v46;
        v31 = v47;
        v32 = v48;
        v33 = v49;
        v24 = v50;
        v27 = v51;
      }

      else
      {
        v28 = 0;
        v29 = 0;
        v30 = 0uLL;
        v31 = 0uLL;
        v32 = 0uLL;
        v33 = 0uLL;
      }

      *a1 = v28;
      *(a1 + 8) = v10;
      *(a1 + 16) = v29;
      *(a1 + 24) = v15;
      *(a1 + 32) = v30;
      *(a1 + 48) = v31;
      *(a1 + 64) = v32;
      *(a1 + 80) = v33;
      *(a1 + 96) = v24;
      v22 = 1;
      *(a1 + 104) = v27;
      return v22 & 1;
    }

    if (qword_1ED86E458 != -1)
    {
      swift_once();
    }

    v18 = sub_1ABF237F4();
    sub_1ABA7AA24(v18, qword_1ED86E460);
    v19 = sub_1ABF237D4();
    v20 = sub_1ABF24664();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1ABA78000, v19, v20, "Get operator must have subject and predicate args", v21, 2u);
      MEMORY[0x1AC5AB8B0](v21, -1, -1);
    }
  }

  v22 = 0;
  *(a1 + 80) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 88) = xmmword_1ABF34940;
  *(a1 + 104) = 0;
  return v22 & 1;
}

uint64_t sub_1ABC7A464(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (v3)
  {
    v4 = (a3 + 32);
    v20 = MEMORY[0x1E69E7CC0];
    do
    {
      memcpy(__dst, v4, 0x58uLL);
      v6 = __dst[3];
      v5 = __dst[4];
      v7 = __dst[7];
      v21 = __dst[6];
      if (__dst[7])
      {
        v8 = __dst[7];
      }

      else
      {
        v8 = 0xE000000000000000;
      }

      sub_1ABB242A4(__dst, &v22);

      v9 = sub_1ABE713BC();
      v22 = v6;
      v23 = v5;
      MEMORY[0x1EEE9AC00](v9);
      sub_1ABA8F4F8();
      v10 = sub_1ABB2F764();

      if (v10)
      {
        if (v7)
        {
          v11 = v21;
        }

        else
        {
          v11 = 0;
        }

        v12 = sub_1ABE713BC();
        v22 = v11;
        v23 = v8;
        MEMORY[0x1EEE9AC00](v12);
        sub_1ABA8F4F8();
        v13 = sub_1ABB2F764();

        if (v13)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1ABAD8758();
            v20 = v15;
          }

          v14 = *(v20 + 16);
          if (v14 >= *(v20 + 24) >> 1)
          {
            sub_1ABAD8758();
            v20 = v16;
          }

          *(v20 + 16) = v14 + 1;
          memcpy((v20 + 88 * v14 + 32), __dst, 0x58uLL);
        }

        else
        {
          sub_1ABB24250(__dst);
        }
      }

      else
      {
        sub_1ABB24250(__dst);
      }

      v4 += 88;
      --v3;
    }

    while (v3);
  }

  else
  {
    v20 = MEMORY[0x1E69E7CC0];
  }

  type metadata accessor for ResultGraph();
  v17 = swift_allocObject();
  v18 = MEMORY[0x1E69E7CC0];
  *(v17 + 16) = sub_1ABF239C4();
  *(v17 + 24) = v18;
  LOBYTE(__dst[0]) = 2;
  sub_1ABE489A8(v20, __dst);
  return v20;
}

uint64_t sub_1ABC7A740(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16) == 29295 && *(a3 + 24) == 0xE200000000000000;
  if (!v6 && (sub_1ABF25054() & 1) == 0)
  {
    return sub_1ABB52174(a1, a2, a3) & 1;
  }

  switch(*(a2 + 64))
  {
    case 2:

      return sub_1ABB52174(a1, a2, a3) & 1;
    default:
      v7 = sub_1ABF25054();

      if (v7)
      {
        return sub_1ABB52174(a1, a2, a3) & 1;
      }

      result = 1;
      break;
  }

  return result;
}

BOOL CustomGraphEvent.isCalendarEvent.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v1 + 16);
  for (i = (v1 + 64); v2; i += 11)
  {
    if (*i)
    {
      v4 = *(i - 1) == 0x746E6576454B45 && *i == 0xE700000000000000;
      if (v4 || (sub_1ABF25054() & 1) != 0)
      {
        break;
      }
    }

    --v2;
  }

  return v2 != 0;
}

BOOL _s20IntelligencePlatform16CustomGraphEventV06isLifeE0Sbvg_0()
{
  v1 = *(v0 + 8);
  v2 = *(v1 + 16);
  for (i = (v1 + 64); v2; i += 11)
  {
    if (*i)
    {
      v4 = *(i - 1) == 0x6E6576456566696CLL && *i == 0xE900000000000074;
      if (v4 || (sub_1ABF25054() & 1) != 0)
      {
        break;
      }
    }

    --v2;
  }

  return v2 != 0;
}

uint64_t CustomGraphEventRelationship.cast<A>(as:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = v4[1];
  v11 = v4[2];
  v12 = v4[3];
  v13 = *(v4 + 32);
  v30 = *v4;
  v31 = v10;
  v28[1] = v30;
  v28[2] = v10;
  v28[3] = v11;
  v28[4] = v12;
  v29 = v13;
  v32 = CustomGraphEventRelationship.$eventId.getter();
  v14 = *(a2 + 24);
  v23 = *(a2 + 16);
  v24 = a3;
  v25 = v14;
  v26 = a4;
  v27 = a1;
  type metadata accessor for TypedEntityIdentifier(255, v23, *(v14 + 8), v15);
  v16 = sub_1ABF241F4();
  v18 = type metadata accessor for TypedEntityIdentifier(0, a3, *(a4 + 8), v17);
  v19 = sub_1ABAD219C(&qword_1EB4D1AD0, &qword_1ABF33C70);
  WitnessTable = swift_getWitnessTable();
  sub_1ABB66290(sub_1ABC7AC90, &v22, v16, v18, v19, WitnessTable, MEMORY[0x1E69E7288], v28);

  if (!v5)
  {
    return CustomGraphEventRelationship.init(subentityId:all_eventId:)();
  }

  return result;
}

void *sub_1ABC7ABFC@<X0>(uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, void *a6@<X6>, unint64_t *a7@<X8>)
{
  type metadata accessor for TypedEntityIdentifier(0, a2, *(a4 + 8), a3);
  result = TypedEntityIdentifier.cast<A>(as:)(a3, *(a5 + 8), a7);
  if (v7)
  {
    *a6 = v7;
  }

  return result;
}

uint64_t BaseEntityFactObjectProtocol.asGraphLocationDegrees.getter(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 24))(a1);
  if (v3)
  {
    return sub_1ABB24D04(v2, v3);
  }

  else
  {
    return 0;
  }
}

__n128 CustomGraphLocation.Placemark.location.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t CustomGraphLocation.Placemark.name.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t CustomGraphLocation.Placemark.postalAddress.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 32), 0xE8uLL);
  memcpy(a1, (v1 + 32), 0xE8uLL);
  return sub_1ABC7AD88(__dst, v4);
}

uint64_t sub_1ABC7AD88(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ABAD219C(&unk_1EB4D63C0, &qword_1ABF50618);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *CustomGraphLocation.placemark.getter@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(v1 + 80);
  v6 = *(v1 + 88);
  v7 = *(v1 + 112);
  v8 = *(v1 + 120);
  v9 = *(v1 + 96);
  memcpy(__dst, (v1 + 136), sizeof(__dst));
  if (!v5 || (v9 & 1) != 0 || (v8 & 1) != 0)
  {
    sub_1ABC7AF0C(__src);
    return memcpy(a1, __src, 0x108uLL);
  }

  else
  {
    memcpy(&__src[4], (v1 + 136), 0xE8uLL);
    __src[0] = v6;
    __src[1] = v7;
    __src[2] = v4;
    __src[3] = v3;
    nullsub_1();
    memcpy(a1, __src, 0x108uLL);

    return sub_1ABC7AD88(__dst, v11);
  }
}

void CustomGraphLocationLatLongRelationship.location.getter(uint64_t a1@<X8>)
{
  if (*(v1 + 32) & 1) != 0 || (*(v1 + 56))
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 1;
  }

  else
  {
    v2 = *(v1 + 48);
    *a1 = *(v1 + 24);
    *(a1 + 8) = v2;
    *(a1 + 16) = 0;
  }
}

void sub_1ABC7AF0C(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 1;
  bzero(a1 + 4, 0xE8uLL);
}

uint64_t sub_1ABC7AF34(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1ABC7AF54(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 264))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1ABC7AFA8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 248) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 264) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 264) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SubentityIdentifier(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SubentityIdentifier(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

void *GraphObject.untypedId.getter@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  result = (*(a1 + 32))(&v4);
  *a2 = v4;
  return result;
}

unint64_t sub_1ABC7B198(uint64_t a1)
{
  result = sub_1ABC7B1C0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1ABC7B1C0()
{
  result = qword_1EB4D63D0;
  if (!qword_1EB4D63D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D63D0);
  }

  return result;
}

uint64_t sub_1ABC7B214(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 73))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_1ABC7B254(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1ABC7B3C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_1ABC7B3A4();
  sub_1ABD4ED20(a1, a2, a3, a4);
}

uint64_t GraphObjectBareContext.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  GraphObjectBareContext.init(_:)(a1);
  return v2;
}

uint64_t *GraphObjectBareContext.init(_:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 104);
  type metadata accessor for InitializationResourcesManager();
  v5 = swift_allocObject();
  v6 = sub_1ABF239C4();
  *(v1 + v4) = v5;
  *(v5 + 16) = v6;
  (*(*(*(v3 + 80) - 8) + 32))(v1 + *(*v1 + 96), a1);
  return v1;
}

uint64_t GraphObjectBareContext.deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96));

  return v0;
}

uint64_t GraphObjectBareContext.__deallocating_deinit()
{
  GraphObjectBareContext.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1ABC7B684(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void GraphObjectBareContextProtocol.graphObject<A>(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1ABA7BCA8();
  a19 = v22;
  a20 = v23;
  v80 = v24;
  v81 = v21;
  v76 = v25;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  sub_1ABAE2850(&qword_1EB4D1AD0, &qword_1ABF33C70);
  v79 = v29;
  v78 = sub_1ABF252B4();
  sub_1ABF247E4();
  sub_1ABA7BB64();
  v70 = v35;
  v71 = v34;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v36);
  v75 = &v70 - v37;
  sub_1ABAA1C98();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1ABA7BB64();
  v40 = v39;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v70 - v42;
  v46 = sub_1ABAB5AD8(v27, v31, v44, v45, &associated conformance descriptor for GraphObjectBareContextProtocol.GraphObjectBareContextProtocol.TripleProvider: TripleProviderProtocol);
  sub_1ABA7C2D4();
  swift_getAssociatedTypeWitness();
  sub_1ABA7BB64();
  v72 = v47;
  v73 = v48;
  sub_1ABA7BB88();
  v50 = MEMORY[0x1EEE9AC00](v49);
  v51 = *v33;
  v52 = *(v27 + 24);
  v77 = v20;
  v74 = v31;
  v52(v31, v27, v50);
  a10 = v51;
  v53 = v81;
  (*(v46 + 72))(&a10, AssociatedTypeWitness, v46);
  if (v53)
  {
    (*(v40 + 8))(v43, AssociatedTypeWitness);
  }

  else
  {
    (*(v40 + 8))(v43, AssociatedTypeWitness);
    sub_1ABA7C2D4();
    swift_getAssociatedTypeWitness();
    v54 = v72;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    *(&v68 + 1) = swift_getAssociatedConformanceWitness();
    v69 = v27;
    *&v68 = AssociatedConformanceWitness;
    v67 = v76;
    v56 = v75;
    v57 = v79;
    v58 = sub_1ABA7D0EC();
    sub_1ABC80FCC(v58, 1, v57, v59, v67, v68, v69);
    v60 = v78;
    if (sub_1ABA7E1E0(v56, 1, v78) == 1)
    {
      v61 = sub_1ABA7E48C();
      v62(v61, v54);
      (*(v70 + 8))(v56, v71);
      v63 = 1;
      v64 = v80;
    }

    else
    {
      v64 = v80;
      sub_1ABD49B3C(v60, &a10, v80);
      v65 = sub_1ABA7E48C();
      v66(v65, v54);
      v63 = 0;
    }

    sub_1ABA7B9B4(v64, v63, 1, v57);
  }

  sub_1ABA7BC90();
}

void GraphObjectBareContextProtocol.graphObjects<A, B>(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1ABA7BCA8();
  a19 = v23;
  a20 = v24;
  v86 = v25;
  v84 = v26;
  v85 = v27;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v76 = v36;
  sub_1ABA7BD7C();
  v73 = v37;
  MEMORY[0x1EEE9AC00](v38);
  sub_1ABA7C21C();
  v75 = v39;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1ABA7BD7C();
  v87 = v40;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v41);
  sub_1ABA83634();
  v82 = v22;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_1ABA7F418();
  v72 = swift_getAssociatedTypeWitness();
  sub_1ABA7BB64();
  v71 = v43;
  MEMORY[0x1EEE9AC00](v44);
  sub_1ABA7C068();
  v80 = v45;
  sub_1ABA7D5FC();
  v47 = MEMORY[0x1EEE9AC00](v46);
  v49 = &v71 - v48;
  v50 = *(v31 + 24);
  v74 = v20;
  v50(v35, v31, v47);
  v81 = v35;
  v88[2] = v35;
  v88[3] = v33;
  v78 = v29;
  v79 = v33;
  v88[4] = v84;
  v88[5] = v31;
  v77 = v31;
  v88[6] = v29;
  v88[7] = v85;
  a10 = sub_1ABB444E4(sub_1ABC7F9CC, v88, v84, &type metadata for EntityIdentifier, MEMORY[0x1E69E73E0], v85, MEMORY[0x1E69E7410], v51);
  v52 = *(AssociatedConformanceWitness + 80);
  v53 = sub_1ABAD219C(&qword_1EB4D1720, &qword_1ABF338B0);
  sub_1ABA7D918();
  v56 = sub_1ABAB47C4(v54, &qword_1EB4D1720, &qword_1ABF338B0, v55);
  v57 = v49;
  v58 = AssociatedTypeWitness;
  v59 = AssociatedConformanceWitness;
  v52(&a10, v53, v56, AssociatedTypeWitness, AssociatedConformanceWitness);

  v60 = sub_1ABA7E48C();
  v61(v60, v58);
  if (!v21)
  {
    v62 = v72;
    (*(v71 + 32))(v80, v57, v72);
    v63 = v75;
    (*(v73 + 16))(v75, v74, v81);
    sub_1ABAA19E0();
    v64 = swift_getAssociatedTypeWitness();
    v67 = sub_1ABAB5AD8(v59, v58, v65, v66, &associated conformance descriptor for TripleProviderProtocol.TripleProviderProtocol.MultiTripleTupleSequence: Sequence);
    sub_1ABA9E10C();
    sub_1ABA97560();
    v68 = swift_getAssociatedConformanceWitness();
    sub_1ABAA19E0();
    swift_getAssociatedTypeWitness();
    sub_1ABA9E10C();
    v69 = swift_getAssociatedConformanceWitness();
    *&v70 = v68;
    *(&v70 + 1) = v78;
    sub_1ABEB20F8(v80, v63, 1, v62, v64, v79, v81, v67, v76, v70, v77, v69);
  }

  sub_1ABA7AC0C();
  sub_1ABA7BC90();
}

void GraphObjectBareContextProtocol<>.enumerateGraphObjects<A, B>(for:block:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_1ABA7BCA8();
  a19 = v24;
  a20 = v25;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v49 = v36;
  v48 = v37;
  v38 = a21;
  v39 = a22;
  sub_1ABA94AA4();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1ABA7BB64();
  v51 = v40;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v41);
  sub_1ABA83634();
  (*(v29 + 24))(v35, v29);
  v54[2] = v35;
  v54[3] = v33;
  v54[4] = v31;
  v54[5] = v29;
  v54[6] = v27;
  v54[7] = v38;
  v54[8] = v39;
  a10 = sub_1ABB444E4(sub_1ABC7D73C, v54, v31, &type metadata for EntityIdentifier, MEMORY[0x1E69E73E0], v38, MEMORY[0x1E69E7410], v42);
  v52[2] = v35;
  v52[3] = v33;
  v52[4] = v31;
  v52[5] = v29;
  v52[6] = v27;
  v52[7] = v38;
  v52[8] = v39;
  v52[9] = v48;
  v52[10] = v49;
  v53 = v22;
  v43 = *(v39 + 24);
  v44 = sub_1ABAD219C(&qword_1EB4D1720, &qword_1ABF338B0);
  sub_1ABA7D918();
  v47 = sub_1ABAB47C4(v45, &qword_1EB4D1720, &qword_1ABF338B0, v46);
  v43(&a10, sub_1ABC7D9B4, v52, v44, v47, AssociatedTypeWitness, v39);

  (*(v51 + 8))(v23, AssociatedTypeWitness);
  sub_1ABA83F0C();
  sub_1ABA7BC90();
}

void GraphObjectBareContextProtocol.graphObject<A>(forUntyped:mapping:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1ABA7BCA8();
  a19 = v22;
  a20 = v23;
  v65 = v24;
  v61 = v26;
  v62 = v25;
  v28 = v27;
  v64 = v29;
  v31 = v30;
  v33 = v32;
  sub_1ABAA1C98();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1ABA7BB64();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v35);
  sub_1ABA83634();
  sub_1ABAA17B4();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_1ABA7F418();
  swift_getAssociatedTypeWitness();
  sub_1ABA7BB64();
  v59 = v37;
  v60 = v38;
  sub_1ABA7BB88();
  v40 = MEMORY[0x1EEE9AC00](v39);
  v42 = &v59 - v41;
  v43 = *v33;
  v44 = *(v28 + 24);
  v63 = v20;
  v44(v31, v28, v40);
  *&v66 = v43;
  (*(AssociatedConformanceWitness + 72))(&v66, AssociatedTypeWitness, AssociatedConformanceWitness);
  if (v21)
  {
    v45 = sub_1ABA7D0F8();
    v46(v45);
  }

  else
  {
    v47 = sub_1ABA7D0F8();
    v48(v47);
    a10 = v43;
    sub_1ABA7F418();
    swift_getAssociatedTypeWitness();
    v49 = v59;
    v50 = swift_getAssociatedConformanceWitness();
    v51 = swift_getAssociatedConformanceWitness();
    *&v58 = v31;
    *(&v58 + 1) = v50;
    v52 = sub_1ABC80E28(&a10, 1, v64, &v66, v58, v51, v61, v28);
    if (v67 == 255)
    {
      v55 = sub_1ABA7E48C();
      v56(v55, v49);
      sub_1ABA925A4(&v66, qword_1EB4D3948, &qword_1ABF508F0);
      v57 = v65;
      *(v65 + 32) = 0;
      *v57 = 0u;
      v57[1] = 0u;
    }

    else
    {
      v53 = v65;
      v54 = v60;
      if (v67)
      {
        a10 = v66;
        sub_1ABAD219C(&qword_1EB4D1AD0, &qword_1ABF33C70);
        swift_willThrowTypedImpl();
        (*(v54 + 8))(v42);
      }

      else
      {
        (*(v60 + 8))(v42, v49, v52);
        sub_1ABAFF5C4(&v66, v53);
      }
    }
  }

  sub_1ABA7AC0C();
  sub_1ABA7BC90();
}

{
  sub_1ABA7BCA8();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v42 = v25;
  v43 = v26;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  sub_1ABA94AA4();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1ABA7BB64();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v36);
  sub_1ABA7BCE0();
  v37 = *v34;
  sub_1ABAA2970();
  v38(v32, v28);
  a10 = v37;
  v44[2] = v32;
  v44[3] = v30;
  v44[4] = v28;
  v44[5] = v43;
  v44[6] = v24;
  v44[7] = v37;
  v44[8] = v42;
  v45 = v20;
  v39 = sub_1ABAD219C(&qword_1EB4D6358, &unk_1ABF50900);
  sub_1ABE91010(&a10, sub_1ABC7DA10, v44, AssociatedTypeWitness, v39, v24);
  v40 = sub_1ABA95890();
  v41(v40, AssociatedTypeWitness);
  sub_1ABA83F0C();
  sub_1ABA7BC90();
}

void GraphObjectBareContextProtocol.entity(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1ABA7BCA8();
  v59 = v22;
  *&v60 = v20;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1ABA7BB64();
  v31 = v30;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v32);
  v34 = v58 - v33;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_1ABA7F418();
  swift_getAssociatedTypeWitness();
  sub_1ABA7BB64();
  v58[1] = v37;
  v58[2] = v36;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v38);
  sub_1ABA7ED98();
  v39 = *v28;
  (*(v24 + 24))(v26, v24);
  *&v62[0] = v39;
  (*(AssociatedConformanceWitness + 72))(v62, AssociatedTypeWitness, AssociatedConformanceWitness);
  if (v21)
  {
    (*(v31 + 8))(v34, AssociatedTypeWitness);
  }

  else
  {
    (*(v31 + 8))(v34, AssociatedTypeWitness);
    sub_1ABA7F418();
    sub_1ABA97560();
    swift_getAssociatedTypeWitness();
    sub_1ABAA3928();
    sub_1ABAA19E0();
    swift_getAssociatedConformanceWitness();
    v40 = sub_1ABAA3928();
    sub_1ABAB5AD8(v40, v41, v42, v43, v44);
    sub_1ABA9E10C();
    sub_1ABC80EA0(v45);
    v46 = v65;
    if (HIBYTE(v65) <= 0xFEu)
    {
      v50 = v59;
      if ((v65 & 0x100) != 0)
      {
        sub_1ABAD219C(&qword_1EB4D1AD0, &qword_1ABF33C70);
        swift_willThrowTypedImpl();
        v56 = sub_1ABA9E10C();
        v57(v56);
      }

      else
      {
        v60 = v62[0];
        v61 = v62[1];
        v51 = v63;
        v52 = v64;
        v53 = sub_1ABA9E10C();
        v54(v53);
        v55 = v61;
        *v50 = v60;
        *(v50 + 16) = v55;
        *(v50 + 32) = v51;
        *(v50 + 40) = v52;
        *(v50 + 48) = v46;
      }
    }

    else
    {
      v47 = sub_1ABA9E10C();
      v48(v47);
      v49 = v59;
      *(v59 + 48) = 0;
      v49[1] = 0u;
      v49[2] = 0u;
      *v49 = 0u;
    }
  }

  sub_1ABA7AC0C();
  sub_1ABA7BC90();
}

void GraphObjectBareContextProtocol.entity<>(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1ABA7BCA8();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  sub_1ABA94AA4();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1ABA7BB64();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v31);
  sub_1ABA7BCE0();
  v32 = *v29;
  sub_1ABAA2970();
  v33(v27, v25);
  a10 = v32;
  v37[2] = v27;
  v37[3] = v25;
  v37[4] = v23;
  v34 = sub_1ABAD219C(&qword_1EB4D6500, &qword_1ABF508F8);
  sub_1ABE91010(&a10, sub_1ABC7D9F0, v37, AssociatedTypeWitness, v34, v23);
  v35 = sub_1ABA95890();
  v36(v35, AssociatedTypeWitness);
  sub_1ABA83F0C();
  sub_1ABA7BC90();
}

void sub_1ABC7C9D0(uint64_t (*a1)(uint64_t (*)(), _BYTE *, double)@<X0>, uint64_t a2@<X1>, uint64_t a5@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_1ABC80EE4(v13, a1, a2, AssociatedTypeWitness, AssociatedConformanceWitness);
  v10 = v14;
  if (HIBYTE(v14) <= 0xFEu)
  {
    if ((v14 & 0x100) != 0)
    {
      sub_1ABAD219C(&qword_1EB4D1AD0, &qword_1ABF33C70);
      swift_willThrowTypedImpl();
    }

    else
    {
      v11 = v13[1];
      v12 = v13[2];
      *a5 = v13[0];
      *(a5 + 16) = v11;
      *(a5 + 32) = v12;
      *(a5 + 48) = v10;
    }
  }

  else
  {
    *(a5 + 48) = 0;
    *(a5 + 16) = 0u;
    *(a5 + 32) = 0u;
    *a5 = 0u;
  }
}

void GraphObjectBareContextProtocol.entities<A>(for:)()
{
  sub_1ABA7BCA8();
  v34 = v1;
  v35 = v2;
  v4 = v3;
  v6 = v5;
  v32 = v8;
  v33 = v7;
  sub_1ABAA1C98();
  sub_1ABAA19E0();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1ABA7BB64();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABA7E358();
  sub_1ABAA17B4();
  swift_getAssociatedConformanceWitness();
  sub_1ABA7C2D4();
  v31 = swift_getAssociatedTypeWitness();
  sub_1ABA7BB64();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  sub_1ABA7C068();
  v30 = v14;
  sub_1ABA7D5FC();
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v30 - v17;
  (*(v4 + 24))(v6, v4, v16);
  v19 = sub_1ABA96CEC();
  v20(v19);
  v21 = sub_1ABA960B0();
  v22(v21, AssociatedTypeWitness);
  if (!v0)
  {
    v24 = v30;
    v23 = v31;
    (*(v12 + 32))(v30, v18, v31);
    sub_1ABA7C2D4();
    sub_1ABAA17B4();
    swift_getAssociatedTypeWitness();
    v25 = sub_1ABA7D0F8();
    sub_1ABAB5AD8(v25, v26, v27, v28, v29);
    sub_1ABA7D0F8();
    swift_getAssociatedConformanceWitness();
    sub_1ABAA2D04();
    sub_1ABAA17B4();
    swift_getAssociatedTypeWitness();
    sub_1ABA7D0F8();
    swift_getAssociatedConformanceWitness();
    sub_1ABBEDC1C(v24, v23, v32);
  }

  sub_1ABA7AC0C();
  sub_1ABA7BC90();
}

uint64_t sub_1ABC7CF18@<X0>(unint64_t a3@<X2>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v18 = a3;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_1ABC8102C(&v18, 1, a7, v16, a6, AssociatedConformanceWitness, a10, a8);
  if (v17 == 255)
  {
    result = sub_1ABA925A4(v16, qword_1EB4D3948, &qword_1ABF508F0);
    *(a9 + 32) = 0;
    *a9 = 0u;
    *(a9 + 16) = 0u;
  }

  else if (v17)
  {
    v18 = *&v16[0];
    sub_1ABAD219C(&qword_1EB4D1AD0, &qword_1ABF33C70);
    return swift_willThrowTypedImpl();
  }

  else
  {
    return sub_1ABAFF5C4(v16, a9);
  }

  return result;
}

void GraphObjectBareContextProtocol.graphObjects<A, B>(forUntyped:mapping:)()
{
  sub_1ABA7BCA8();
  v46 = v3;
  v47 = v2;
  v52 = v4;
  AssociatedConformanceWitness = v5;
  v7 = v6;
  v9 = v8;
  v51 = v10;
  sub_1ABA7BD7C();
  v42 = v11;
  v43 = v12;
  MEMORY[0x1EEE9AC00](v13);
  sub_1ABA7C21C();
  v45 = v14;
  v50 = v15;
  sub_1ABA7BD7C();
  v40 = v16;
  MEMORY[0x1EEE9AC00](v17);
  sub_1ABA7C21C();
  v49 = v18;
  sub_1ABAA1C98();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1ABA7BB64();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v20);
  sub_1ABA7E358();
  sub_1ABA97560();
  swift_getAssociatedConformanceWitness();
  sub_1ABA7F418();
  v41 = swift_getAssociatedTypeWitness();
  sub_1ABA7BB64();
  v22 = v21;
  MEMORY[0x1EEE9AC00](v23);
  sub_1ABA7C068();
  v48 = v24;
  sub_1ABA7D5FC();
  v26 = MEMORY[0x1EEE9AC00](v25);
  v28 = &v40 - v27;
  v29 = *(v7 + 24);
  v44 = v0;
  v29(v9, v7, v26);
  v30 = sub_1ABA96CEC();
  v31(v30);
  v32 = sub_1ABA960B0();
  v33(v32, AssociatedTypeWitness);
  if (!v1)
  {
    v34 = v41;
    (*(v22 + 32))(v48, v28, v41);
    (*(v40 + 16))(v49, v42, v50);
    v35 = v45;
    (*(v43 + 16))(v45, v44, v9);
    sub_1ABA7F418();
    v54 = swift_getAssociatedTypeWitness();
    sub_1ABAA3928();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    sub_1ABAA3928();
    v36 = swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    sub_1ABAA3928();
    v37 = swift_getAssociatedConformanceWitness();
    *&v39 = v7;
    *(&v39 + 1) = v47;
    *(&v38 + 1) = v36;
    *&v38 = AssociatedConformanceWitness;
    sub_1ABB6830C(v48, v49, v35, 1, v34, v54, v9, v50, v46, v38, v39, v37);
  }

  sub_1ABA7AC0C();
  sub_1ABA7BC90();
}

void GraphObjectBareContextProtocol<>.enumerateEntities<A>(for:block:)()
{
  sub_1ABA7BCA8();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v18 = v11;
  v19 = v12;
  v20 = v13;
  sub_1ABA94AA4();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1ABA7BB64();
  v16 = v15;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v17);
  sub_1ABA7E358();
  (*(v6 + 24))(v10, v6);
  v21[2] = v10;
  v21[3] = v8;
  v21[4] = v6;
  v21[5] = v4;
  v21[6] = v2;
  v21[7] = v18;
  v21[8] = v19;
  (*(v2 + 24))(v20, sub_1ABC7DA44, v21, v8, v4, AssociatedTypeWitness, v2);
  (*(v16 + 8))(v0, AssociatedTypeWitness);
  sub_1ABA83F0C();
  sub_1ABA7BC90();
}

uint64_t sub_1ABC7D5E0(uint64_t *a1, uint64_t (*a2)(uint64_t (*)(), _BYTE *, double), uint64_t a3, uint64_t (*a4)(uint64_t *, __int128 *), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v21 = *a1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_1ABC80EE4(v19, a2, a3, AssociatedTypeWitness, AssociatedConformanceWitness);
  v15 = v19[0];
  v16 = v19[1];
  v17 = v19[2];
  v18 = v20;
  v13 = a4(&v21, &v15);
  sub_1ABC7F940(v15, *(&v15 + 1), v16, *(&v16 + 1), v17, *(&v17 + 1), v18);
  return v13 & 1;
}

uint64_t sub_1ABC7D748(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, char *), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v26 = a4;
  v27 = a6;
  v24 = a2;
  v25 = a3;
  sub_1ABAE2850(&qword_1EB4D1AD0, &qword_1ABF33C70);
  sub_1ABF252B4();
  v15 = sub_1ABF247E4();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v21 - v17;
  v28 = *a1;
  TypedEntityIdentifier.init(untyped:)(&v28, a8, a11, &v29);
  if (!v11)
  {
    v22 = v16;
    v23 = v15;
    v21 = a5;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    sub_1ABC81098(a8, 1, a8, v18, a11, AssociatedConformanceWitness, a10);
    LOBYTE(a1) = v26(&v29, v18);
    (*(v22 + 8))(v18, v23);
  }

  return a1 & 1;
}

void GraphObjectBareContextProtocol<>.enumerateGraphObjects<A, B>(forUntyped:mapping:block:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1ABA7BCA8();
  v26 = v25;
  v41 = v28;
  v42 = v27;
  v30 = v29;
  v32 = v31;
  v43 = v33;
  v44 = v34;
  v45 = v35;
  sub_1ABA94AA4();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1ABA7BB64();
  v38 = v37;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v39);
  sub_1ABA7BCE0();
  sub_1ABAA2970();
  v40(v32, v26);
  v46[2] = v32;
  v46[3] = v30;
  v46[4] = v41;
  v46[5] = v26;
  v46[6] = a21;
  v46[7] = a22;
  v47 = a23;
  v48 = v42;
  v49 = v44;
  v50 = v43;
  v51 = v23;
  (*(v47 + 24))(v45, sub_1ABC7DD54, v46, v30, a21, AssociatedTypeWitness, v47);
  (*(v38 + 8))(v24, AssociatedTypeWitness);
  sub_1ABA83F0C();
  sub_1ABA7BC90();
}

uint64_t sub_1ABC7DBE8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, void *), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v21 = *a1;
  v19 = v21;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v15 = sub_1ABC8102C(&v19, 1, a10, v20, a8, AssociatedConformanceWitness, a13, a11);
  v16 = (a4)(&v21, v20, v15);
  sub_1ABA925A4(v20, qword_1EB4D3948, &qword_1ABF508F0);
  return v16 & 1;
}

void GraphObjectBareContextProtocol<>.entities()()
{
  sub_1ABA7BCA8();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v27 = v8;
  sub_1ABA94AA4();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1ABA7BB64();
  v11 = v10;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v12);
  sub_1ABA7BCE0();
  sub_1ABA7F418();
  v25 = swift_getAssociatedTypeWitness();
  sub_1ABA7BB64();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  sub_1ABA7C068();
  v24 = v16;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v24 - v18;
  sub_1ABAA2970();
  v26 = v7;
  v20(v7, v5);
  (*(v3 + 48))(AssociatedTypeWitness, v3);
  (*(v11 + 8))(v1, AssociatedTypeWitness);
  if (!v0)
  {
    (*(v14 + 32))(v24, v19, v25);
    sub_1ABA7F418();
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    sub_1ABA8394C();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedConformanceWitness();
    sub_1ABAA2D04();
    swift_getAssociatedTypeWitness();
    sub_1ABA7D0F8();
    swift_getAssociatedConformanceWitness();
    v21 = sub_1ABA82DAC();
    sub_1ABBEDC1C(v21, v22, v23);
  }

  sub_1ABA7AC0C();
  sub_1ABA7BC90();
}

void GraphObjectBareContextProtocol<>.graphObjects<A>(ofType:)()
{
  sub_1ABA7BCA8();
  v4 = v3;
  v41 = v6;
  v42 = v5;
  v8 = v7;
  v10 = v9;
  v40 = v11;
  sub_1ABA7BD7C();
  v35 = v12;
  MEMORY[0x1EEE9AC00](v13);
  sub_1ABA7C21C();
  v39 = v14;
  sub_1ABA94AA4();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1ABA7BB64();
  v17 = v16;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v18);
  sub_1ABA7ED98();
  sub_1ABA98008();
  v38 = swift_getAssociatedTypeWitness();
  sub_1ABA7BB64();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  sub_1ABA7C068();
  v43 = v22;
  sub_1ABA7D5FC();
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = &v34 - v25;
  v27 = *(v8 + 24);
  v36 = v8;
  v37 = v0;
  v27(v10, v8, v24);
  (*(v4 + 48))(AssociatedTypeWitness, v4);
  (*(v17 + 8))(v2, AssociatedTypeWitness);
  if (!v1)
  {
    v28 = v38;
    (*(v20 + 32))(v43, v26, v38);
    v29 = v39;
    (*(v35 + 16))(v39, v37, v10);
    sub_1ABA98008();
    v30 = swift_getAssociatedTypeWitness();
    sub_1ABA82DAC();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    sub_1ABA82DAC();
    v37 = swift_getAssociatedConformanceWitness();
    v31 = v36;
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    sub_1ABA82DAC();
    v32 = swift_getAssociatedConformanceWitness();
    *(&v33 + 1) = v41;
    *&v33 = v37;
    sub_1ABEB20F8(v43, v29, 0, v28, v30, v42, v10, AssociatedConformanceWitness, v40, v33, v31, v32);
  }

  sub_1ABA7AC0C();
  sub_1ABA7BC90();
}

void GraphObjectBareContextProtocol<>.graphObjects<A>(mapping:)()
{
  sub_1ABA7BCA8();
  v44 = v4;
  v45 = v3;
  v6 = v5;
  v8 = v7;
  sub_1ABA7BD7C();
  v39 = v9;
  v40 = v10;
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA7C21C();
  v43 = v11;
  v48 = v12;
  sub_1ABA7BD7C();
  v37 = v13;
  MEMORY[0x1EEE9AC00](v14);
  sub_1ABA7C21C();
  v47 = v15;
  sub_1ABA94AA4();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1ABA7BB64();
  v18 = v17;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v19);
  sub_1ABA7BCE0();
  sub_1ABA98008();
  v41 = swift_getAssociatedTypeWitness();
  sub_1ABA7BB64();
  v21 = v20;
  MEMORY[0x1EEE9AC00](v22);
  sub_1ABA7C068();
  v46 = v23;
  sub_1ABA7D5FC();
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v37 - v25;
  sub_1ABAA2970();
  v42 = v0;
  v38 = v6;
  v27(v8, v6);
  v28 = sub_1ABA9E10C();
  v29(v28);
  (*(v18 + 8))(v2, AssociatedTypeWitness);
  if (!v1)
  {
    v30 = v41;
    (*(v21 + 32))(v46, v26, v41);
    (*(v37 + 16))(v47, v39, v48);
    v31 = v43;
    (*(v40 + 16))(v43, v42, v8);
    sub_1ABA98008();
    v32 = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v42 = swift_getAssociatedConformanceWitness();
    v33 = v38;
    sub_1ABA7D0F8();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    v34 = swift_getAssociatedConformanceWitness();
    *&v36 = v33;
    *(&v36 + 1) = v45;
    *(&v35 + 1) = v42;
    *&v35 = AssociatedConformanceWitness;
    sub_1ABB6830C(v46, v47, v31, 1, v30, v32, v8, v48, v44, v35, v36, v34);
  }

  sub_1ABA7AC0C();
  sub_1ABA7BC90();
}

void GraphObjectBareContextProtocol<>.enumerateEntities(block:)()
{
  sub_1ABA7BCA8();
  sub_1ABA94AA4();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1ABA7BB64();
  v3 = v2;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v4);
  sub_1ABA7ED98();
  v5 = sub_1ABA8E9A8();
  v6(v5);
  sub_1ABA97560();
  v7();
  (*(v3 + 8))(v0, AssociatedTypeWitness);

  sub_1ABA83F0C();
  sub_1ABA7BC90();
}

uint64_t sub_1ABC7E8EC(uint64_t *a1, uint64_t (*a2)(uint64_t (*)(), _BYTE *, double), uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t *, __int128 *), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v21 = *a1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_1ABC80EE4(v19, a2, a3, AssociatedTypeWitness, AssociatedConformanceWitness);
  v15 = v19[0];
  v16 = v19[1];
  v17 = v19[2];
  v18 = v20;
  v13 = a5(&v21, &v15);
  sub_1ABC7F940(v15, *(&v15 + 1), v16, *(&v16 + 1), v17, *(&v17 + 1), v18);
  return v13 & 1;
}

void GraphObjectBareContextProtocol<>.enumerateGraphObjects<A>(ofType:block:)()
{
  sub_1ABA7BCA8();
  v1 = v0;
  v3 = v2;
  sub_1ABA94AA4();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1ABA7BB64();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA7BCE0();
  sub_1ABAA2970();
  v6(v3, v1);
  sub_1ABA97560();
  v7();
  v8 = sub_1ABA95890();
  v9(v8, AssociatedTypeWitness);

  sub_1ABA83F0C();
  sub_1ABA7BC90();
}

uint64_t sub_1ABC7EBD0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t *, uint64_t), uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v42 = a5;
  v43 = a8;
  v37 = a7;
  v38 = a6;
  v40 = a2;
  v41 = a3;
  sub_1ABAE2850(&qword_1EB4D1AD0, &qword_1ABF33C70);
  v13 = sub_1ABF252B4();
  v14 = sub_1ABF247E4();
  v45 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v31 - v18;
  v44 = v13;
  v20 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v31 - v22;
  v46 = *a1;
  v39 = a11;
  TypedEntityIdentifier.init(untyped:)(&v46, a9, a11, &v47);
  if (v11)
  {
  }

  else
  {
    v33 = v23;
    v34 = v16;
    v35 = v20;
    v36 = v14;
    v32 = v47;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    sub_1ABC81098(a9, 0, a9, v19, v39, AssociatedConformanceWitness, a10);
    v25 = v44;
    if (sub_1ABA7E1E0(v19, 1, v44) != 1)
    {
      v28 = v35;
      v29 = v33;
      (*(v35 + 32))(v33, v19, v25);
      v47 = v32;
      v30 = v34;
      (*(v28 + 16))(v34, v29, v25);
      sub_1ABA7B9B4(v30, 0, 1, v25);
      v26 = v38(&v47, v30);
      (*(v45 + 8))(v30, v36);
      (*(v28 + 8))(v29, v25);
      return v26 & 1;
    }

    (*(v45 + 8))(v19, v36);
  }

  v26 = 1;
  return v26 & 1;
}

void GraphObjectBareContextProtocol<>.enumerateGraphObjects<A>(mapping:block:)()
{
  sub_1ABA7BCA8();
  sub_1ABA94AA4();
  swift_getAssociatedTypeWitness();
  sub_1ABA7BB64();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v0);
  v1 = sub_1ABA9E10C();
  v2(v1);
  sub_1ABA97560();
  v3();
  v4 = sub_1ABAA3928();
  v5(v4);

  sub_1ABA83F0C();
  sub_1ABA7BC90();
}

uint64_t sub_1ABC7F158(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t *, __int128 *), uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v12 = *a1;
  v21 = *a1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_1ABC8102C(&v21, 1, a10, &v17, a9, AssociatedConformanceWitness, a12, a11);
  if (v18[24] == 255)
  {
    sub_1ABA925A4(&v17, qword_1EB4D3948, &qword_1ABF508F0);
    v14 = 1;
  }

  else
  {
    v19 = v17;
    v20[0] = *v18;
    *(v20 + 9) = *&v18[9];
    v21 = v12;
    sub_1ABC7F8D0(&v19, &v17);
    v14 = a7(&v21, &v17);
    sub_1ABA925A4(&v17, qword_1EB4D3948, &qword_1ABF508F0);
    sub_1ABA925A4(&v19, &qword_1EB4D6508, &unk_1ABF50940);
  }

  return v14 & 1;
}

void GraphObjectBareContextProtocol<>.entityIds(referringTo:)()
{
  sub_1ABA7BCA8();
  sub_1ABAB5D04();
  sub_1ABA94AA4();
  swift_getAssociatedTypeWitness();
  sub_1ABA7BB64();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v0);
  sub_1ABA7ED98();
  v1 = sub_1ABA8E9A8();
  v2(v1);
  v3 = sub_1ABAA5388();
  v4(v3);
  v5 = sub_1ABA7AD44();
  v6(v5);
  sub_1ABA7BC90();
}

void GraphObjectBareContextProtocol<>.entityIds(referredBy:)()
{
  sub_1ABA7BCA8();
  sub_1ABAB5D04();
  sub_1ABA94AA4();
  swift_getAssociatedTypeWitness();
  sub_1ABA7BB64();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v0);
  sub_1ABA7ED98();
  v1 = sub_1ABA8E9A8();
  v2(v1);
  v3 = sub_1ABAA5388();
  v4(v3);
  v5 = sub_1ABA7AD44();
  v6(v5);
  sub_1ABA7BC90();
}

void sub_1ABC7F5C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  sub_1ABA7BCA8();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  a10 = *v36;
  v38 = v37(&a10, v32, v28, v24);
  if (!v21)
  {
    v42[3] = v42;
    v42[2] = a21;
    a10 = v38;
    MEMORY[0x1EEE9AC00](v38);
    v42[1] = v41;
    v41[2] = v33;
    v41[3] = v31;
    v41[4] = v29;
    v41[5] = v27;
    v41[6] = v25;
    v41[7] = v35;
    sub_1ABAD219C(&unk_1EB4DB8E0, &unk_1ABF50A20);
    type metadata accessor for TypedEntityIdentifier(0, v31, v27, v39);
    sub_1ABAB47C4(&qword_1EB4CF810, &unk_1EB4DB8E0, &unk_1ABF50A20, MEMORY[0x1E69E6508]);
    v40 = sub_1ABF23F24();

    a10 = v40;
    sub_1ABA7C2D4();
    sub_1ABF241F4();
    swift_getWitnessTable();
    swift_getWitnessTable();
    sub_1ABA97340();
    sub_1ABF243E4();
  }

  sub_1ABA83F0C();
  sub_1ABA7BC90();
}

void sub_1ABC7F778(uint64_t a2@<X3>, uint64_t a3@<X5>, uint64_t a4@<X8>)
{
  EntityIdentifier.typed<A>(as:)(a2, a3, &v7);
  if (v4)
  {

    v6 = 0;
  }

  else
  {
    v6 = v7;
  }

  *a4 = v6;
  *(a4 + 8) = v4 != 0;
}

uint64_t sub_1ABC7F8D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ABAD219C(&qword_1EB4D6508, &unk_1ABF50940);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1ABC7F940(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (BYTE1(a7) != 255)
  {
    sub_1ABC7F958(result, a2, a3, a4, a5, a6, a7, BYTE1(a7) & 1);
  }
}

void sub_1ABC7F958(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a8)
  {
  }

  else
  {
  }
}

uint64_t sub_1ABC7FA40(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = &v6 - v2;
  (*(v4 + 16))(&v6 - v2, v1);
  return sub_1ABC7FB94(v3);
}

uint64_t sub_1ABC7FB00@<X0>(uint64_t a1@<X8>)
{
  sub_1ABA7C2E0();
  v4 = *(v3 + 184);
  swift_beginAccess();
  sub_1ABA7C2E0();
  sub_1ABA7D08C();
  return (*(v5 + 16))(a1, v1 + v4);
}

uint64_t sub_1ABC7FB94(uint64_t a1)
{
  sub_1ABA7C2E0();
  v4 = *(v3 + 184);
  swift_beginAccess();
  sub_1ABA7C2E0();
  sub_1ABA7D08C();
  (*(v5 + 40))(v1 + v4, a1);
  return swift_endAccess();
}

uint64_t *GraphObjectContext.init(_:objectMapping:)(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 152);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v16 - v7;
  v10 = *(v9 + 160);
  sub_1ABA7D08C();
  v12 = v11;
  (*(v11 + 16))(v2 + v13);
  (*(v6 + 16))(v8, a1, v5);
  v14 = GraphObjectBareContext.init(_:)(v8);
  (*(v12 + 8))(a2, v10);
  (*(v6 + 8))(a1, v5);
  return v14;
}

uint64_t *GraphObjectContext.init<>(_:)(uint64_t a1)
{
  v3 = *(*v1 + 152);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v9 - v5;
  ObjectSynthesisDictionaryMapping.init()(&v10);
  *(v1 + *(*v1 + 184)) = v10;
  (*(v4 + 16))(v6, a1, v3);
  v7 = GraphObjectBareContext.init(_:)(v6);
  (*(v4 + 8))(a1, v3);
  return v7;
}

uint64_t *GraphObjectContext.__allocating_init<A>(_:objectMapping:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 160);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  sub_1ABA7BC58();
  v11 = v10 - v9;
  sub_1ABA7D08C();
  MEMORY[0x1EEE9AC00](v12);
  sub_1ABA7BC58();
  v15 = v14 - v13;
  (*(v16 + 24))(v17, v16);
  (*(v8 + 16))(v11, a2, v7);
  v18 = GraphObjectContext.__allocating_init(_:objectMapping:)(v15, v11);
  (*(v8 + 8))(a2, v7);
  sub_1ABA7D08C();
  (*(v19 + 8))(a1, a3);
  return v18;
}

uint64_t *GraphObjectContext.__allocating_init<A>(_:)(uint64_t a1, uint64_t a2)
{
  sub_1ABA7D08C();
  MEMORY[0x1EEE9AC00](v4);
  sub_1ABA7BC58();
  v7 = v6 - v5;
  (*(v8 + 24))(v9, v8);
  v10 = GraphObjectContext.__allocating_init<>(_:)(v7);
  sub_1ABA7D08C();
  (*(v11 + 8))(a1, a2);
  return v10;
}

uint64_t GraphObjectContext.deinit()
{
  v1 = *v0;
  v2 = GraphObjectBareContext.deinit();
  (*(*(*(v1 + 160) - 8) + 8))(v2 + *(*v2 + 184));
  return v2;
}

uint64_t GraphObjectContext.__deallocating_deinit()
{
  GraphObjectContext.deinit();

  return swift_deallocClassInstance();
}