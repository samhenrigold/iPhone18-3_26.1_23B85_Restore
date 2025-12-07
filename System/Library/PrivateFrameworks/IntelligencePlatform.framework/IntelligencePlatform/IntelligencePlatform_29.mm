unint64_t sub_1ABCB0FA8(char a1)
{
  result = 0x64496465707974;
  switch(a1)
  {
    case 1:
      result = 1701667182;
      break;
    case 2:
      result = 1702125924;
      break;
    case 3:
      result = 0x6565646E65747461;
      break;
    case 4:
      result = 0x6E6F697461636F6CLL;
      break;
    case 5:
      result = 0x636F4C7472617473;
      break;
    case 6:
      result = 0x7461636F4C646E65;
      break;
    case 7:
      result = 0xD000000000000012;
      break;
    case 8:
      result = 0x7974697669746361;
      break;
    case 9:
      result = 0x6E656469666E6F63;
      break;
    case 10:
      result = 0x6572617774666F73;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1ABCB10F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABCB0C28(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABCB1118(uint64_t a1)
{
  v2 = sub_1ABD0B744();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABCB1154(uint64_t a1)
{
  v2 = sub_1ABD0B744();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void CustomGraphGamingActivityEvent.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1ABA7BCA8();
  sub_1ABA89B64();
  sub_1ABAD219C(&qword_1EB4D6A70, &dword_1ABF50D40);
  sub_1ABA96D00();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v25);
  sub_1ABA7E338();
  sub_1ABA8EA00();
  v26 = sub_1ABD0B744();
  sub_1ABA8D27C(&type metadata for CustomGraphGamingActivityEvent.CodingKeys, v27, v26);
  v51 = *v24;
  v28 = sub_1ABA8C744();
  sub_1ABAD219C(v28, v29);
  sub_1ABA7D99C();
  sub_1ABD1044C(v30);
  sub_1ABD1AC30();
  sub_1ABF24F84();
  if (!v23)
  {
    v31 = v24[2];
    v33 = v24[3];
    v51 = v24[1];
    v32 = v51;
    *&v52 = v31;
    *(&v52 + 1) = v33;
    sub_1ABA8B6EC();

    sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
    sub_1ABD09E38();
    sub_1ABA8B6C8(&v51);
    if (!v32)
    {

      v34 = type metadata accessor for CustomGraphGamingActivityEvent(0);
      v35 = v34[6];
      LOBYTE(v51) = 2;
      sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
      sub_1ABA80C14();
      sub_1ABD0A358(v36);
      sub_1ABA88D68(v24 + v35, &v51);
      v51 = *(v24 + v34[7]);
      sub_1ABD1AF94();
      sub_1ABAD219C(&qword_1EB4D65E0, &qword_1ABF50B50);
      sub_1ABD09F00();
      sub_1ABA8B6C8(&v51);
      v51 = *(v24 + v34[8]);
      sub_1ABA8B908();
      sub_1ABAD219C(&qword_1EB4D6610, &unk_1ABF50B70);
      sub_1ABD0A060();
      sub_1ABA8B6C8(&v51);
      v39 = sub_1ABA8AF58(v34[9]);
      sub_1ABD1BF70(v39, v40);
      sub_1ABD1AFDC();

      sub_1ABAD219C(&qword_1EB4D6628, &unk_1ABF50B80);
      sub_1ABD0A110();
      sub_1ABD1AC08();
      sub_1ABF24F84();

      v41 = sub_1ABA8AF58(v34[10]);
      sub_1ABD1BF70(v41, v42);
      sub_1ABD1AFD0();

      sub_1ABD1AC08();
      sub_1ABF24F84();

      v43 = sub_1ABA8AF58(v34[11]);
      sub_1ABD1BF70(v43, v44);
      sub_1ABD1AFC4();

      sub_1ABAD219C(&qword_1EB4D66F0, &qword_1ABF50BB8);
      sub_1ABD0A808();
      sub_1ABA8B6C8(&v51);

      v45 = v24 + v34[12];
      v46 = *v45;
      LOBYTE(v45) = v45[8];
      v51 = v46;
      LOBYTE(v52) = v45;
      sub_1ABD1AFB8();

      sub_1ABAD219C(&qword_1EB4D6718, &dword_1ABF50BC8);
      sub_1ABD0A8F4();
      sub_1ABA8B6C8(&v51);

      v47 = sub_1ABA8AF58(v34[13]);
      sub_1ABD1BF70(v47, v48);
      sub_1ABD1AFE8();

      sub_1ABAD219C(&qword_1EB4D6738, &dword_1ABF50BD0);
      sub_1ABD0AA28();
      sub_1ABA8B6C8(&v51);

      v49 = v24 + v34[14];
      v50 = v49[40];
      v51 = *v49;
      v52 = *(v49 + 8);
      v53 = *(v49 + 24);
      v54 = v50;
      sub_1ABAB6330();

      sub_1ABAD219C(&qword_1EB4D6A90, &unk_1ABF50D50);
      sub_1ABD0B798();
      sub_1ABA8B6C8(&v51);
    }
  }

  v37 = sub_1ABA89DE4();
  v38(v37);
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void CustomGraphGamingActivityEvent.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1ABA7BCA8();
  a22 = v29;
  a23 = v30;
  sub_1ABA89524();
  sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
  sub_1ABA8CD04();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v31);
  sub_1ABA9F7AC();
  v51 = sub_1ABAD219C(&qword_1EB4D6AB0, &dword_1ABF50D60);
  sub_1ABA7BB64();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v32);
  v33 = sub_1ABAB67BC();
  v53 = type metadata accessor for CustomGraphGamingActivityEvent(v33);
  sub_1ABA7BBB0();
  MEMORY[0x1EEE9AC00](v34);
  sub_1ABA7C21C();
  v52 = v35;
  sub_1ABA90D04();
  v36 = sub_1ABD0B744();
  sub_1ABA9F458(&type metadata for CustomGraphGamingActivityEvent.CodingKeys, v37, v36);
  if (v24)
  {
    sub_1ABA82840();
    sub_1ABA84B54(v23);
    if (v24)
    {
      sub_1ABD1B370();
      if ((v28 & 1) == 0)
      {
LABEL_11:
        if (v27)
        {
LABEL_12:
          sub_1ABA88814();
          if ((v26 & 1) == 0)
          {
LABEL_13:
            if (!v25)
            {
              goto LABEL_15;
            }

LABEL_14:
            sub_1ABAA1044();
            goto LABEL_15;
          }

LABEL_7:
          sub_1ABD1B2FC();
          if ((v25 & 1) == 0)
          {
            goto LABEL_15;
          }

          goto LABEL_14;
        }

LABEL_6:
        if (!v26)
        {
          goto LABEL_13;
        }

        goto LABEL_7;
      }
    }

    else if (!v28)
    {
      goto LABEL_11;
    }

    sub_1ABD1B314();
    if (v27)
    {
      goto LABEL_12;
    }

    goto LABEL_6;
  }

  v38 = sub_1ABA7ABE4();
  sub_1ABAD219C(v38, v39);
  sub_1ABAAFAF4();
  sub_1ABA8F54C();
  v41 = sub_1ABD1044C(v40);
  sub_1ABAA212C(v25, &a13, v51, v25, v41);
  *v52 = v54;
  sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
  sub_1ABA89A14();
  sub_1ABD0A2D4();
  sub_1ABA9756C();
  sub_1ABF24E64();
  *(v52 + 8) = v54;
  *(v52 + 16) = v55;
  LOBYTE(v54) = 2;
  sub_1ABA7F460();
  sub_1ABD0A358(v42);
  sub_1ABF24E64();
  sub_1ABA94EB8();
  sub_1ABAD219C(&qword_1EB4D65E0, &qword_1ABF50B50);
  sub_1ABA9ED60();
  sub_1ABD0A408();
  sub_1ABA9756C();
  sub_1ABF24E64();
  *(v52 + *(v53 + 28)) = v54;
  sub_1ABAD219C(&qword_1EB4D6610, &unk_1ABF50B70);
  sub_1ABA9EC10();
  sub_1ABD0A568();
  sub_1ABA9756C();
  sub_1ABF24E64();
  *(v52 + *(v53 + 32)) = v54;
  sub_1ABAD219C(&qword_1EB4D6628, &unk_1ABF50B80);
  sub_1ABD1AFDC();
  sub_1ABD0A618();
  sub_1ABAA3934();
  sub_1ABF24E64();
  sub_1ABD1BF44();
  sub_1ABA8A644(v43);
  sub_1ABD1AFD0();
  sub_1ABAA3934();
  sub_1ABF24E64();
  sub_1ABD1BF44();
  sub_1ABA8A644(v44);
  sub_1ABAD219C(&qword_1EB4D66F0, &qword_1ABF50BB8);
  sub_1ABA893EC();
  sub_1ABD0AB5C();
  sub_1ABA9756C();
  sub_1ABF24E64();
  sub_1ABD1BF44();
  sub_1ABA8A644(v45);
  sub_1ABAD219C(&qword_1EB4D6718, &dword_1ABF50BC8);
  sub_1ABD1AFB8();
  sub_1ABD0AC48();
  sub_1ABA9756C();
  sub_1ABF24E64();
  sub_1ABA89678(v54);
  sub_1ABAD219C(&qword_1EB4D6738, &dword_1ABF50BD0);
  sub_1ABD1AFE8();
  sub_1ABD0ACD4();
  sub_1ABA9756C();
  sub_1ABF24E64();
  sub_1ABD1BF44();
  sub_1ABD1AEEC(v46);
  sub_1ABAD219C(&qword_1EB4D6A90, &unk_1ABF50D50);
  sub_1ABAB6330();
  sub_1ABD0B884();
  sub_1ABA89228();
  sub_1ABF24E64();
  v47 = sub_1ABA8150C();
  v48(v47);
  sub_1ABD1B634(v54);
  sub_1ABD0AD58();
  sub_1ABA84B54(v23);
  v49 = sub_1ABA7D000();
  sub_1ABD0ADB0(v49, v50);
LABEL_15:
  sub_1ABA9EFCC();
  sub_1ABA7BC90();
}

void static CustomGraphSocializingActivityEvent.getEntityClass()()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x798), *(_Records_GDEntityClass_records + 0x7A0), *(_Records_GDEntityClass_records + 0x7A8), v11);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v8, v10, v9, v11[0], v11[1], v12);
  }

  else
  {
    __break(1u);
  }
}

void CustomGraphSocializingActivityEvent.init<A, B>(with:initializationResources:)()
{
  sub_1ABA7BCA8();
  v1 = sub_1ABA8E9D8();
  v2 = type metadata accessor for CustomGraphSocializingActivityEvent(v1);
  v3 = sub_1ABA7AB80(v2);
  MEMORY[0x1EEE9AC00](v3);
  sub_1ABA90150();
  sub_1ABD1AC8C();
  if (!v0)
  {
    sub_1ABA88A80();
  }

  sub_1ABA8AD50();
  v4 = sub_1ABA7EDF8();
  v5(v4);
  sub_1ABA8869C();
  sub_1ABA7BC90();
}

void sub_1ABCB211C(uint64_t a1, __n128 a2)
{
  EntityClass.init(intValue:)(*(a1 + 7), &v23);
  v2 = *(&v23 + 1);
  if (!*(&v23 + 1))
  {
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v8 = sub_1ABF237F4();
    sub_1ABA7AA24(v8, qword_1ED871B40);
    v9 = sub_1ABF237D4();
    v10 = sub_1ABF24674();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1ABA78000, v9, v10, "entityClass is nil in CustomGraphSocializingActivityEvent init", v11, 2u);
      MEMORY[0x1AC5AB8B0](v11, -1, -1);
    }

    sub_1ABB6DA08();
    swift_allocError();
    *v12 = 2;
    *(v12 + 8) = 0u;
    *(v12 + 24) = 0u;
    *(v12 + 33) = 0u;
    *(v12 + 49) = 2;
    goto LABEL_15;
  }

  if (_Records_GDEntityClass_records)
  {
    v3 = v23;
    v4 = v24;
    v5 = v25;
    v6 = v26;
    sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x798), *(_Records_GDEntityClass_records + 0x7A0), *(_Records_GDEntityClass_records + 0x7A8), v36);
    v7 = v37 == v4 && v5 == v38;
    if (v7 || (sub_1ABF25054() & 1) != 0)
    {
      sub_1ABA88934(v36);
LABEL_9:
      sub_1ABAA8FA8(v3, v2, v4, v5);
      return;
    }

    *&v23 = v3;
    *(&v23 + 1) = v2;
    v24 = v4;
    v25 = v5;
    LOBYTE(v26) = v6;
    EntityClass.ancestorClassesSet.getter();
    sub_1ABAA6788(v36, v13, v14, v15, v16, v17, v18, v19, v23, SBYTE8(v23), v24, v25, v26, v27, v28, v29, v30, v31, v32, *(&v32 + 1), v33, v34, v35, v36[0], v36[1], v37, v38, v39, v40, v41);
    v21 = v20;

    sub_1ABA88934(v36);
    if (v21)
    {
      goto LABEL_9;
    }

    if (_Records_GDEntityClass_records)
    {
      sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x798), *(_Records_GDEntityClass_records + 0x7A0), *(_Records_GDEntityClass_records + 0x7A8), &v32);
      v23 = v32;
      v24 = v33;
      v25 = v34;
      LOBYTE(v26) = v35;
      v27 = v3;
      v28 = v2;
      v29 = v4;
      v30 = v5;
      LOBYTE(v31) = v6;
      sub_1ABC7B1C0();
      swift_allocError();
      sub_1ABC81B08(&v23, v22);
LABEL_15:
      swift_willThrow();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1ABCB23E8(uint64_t a1)
{
  v2 = sub_1ABD0B970();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABCB2424(uint64_t a1)
{
  v2 = sub_1ABD0B970();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void CustomGraphSocializingActivityEvent.encode(to:)()
{
  sub_1ABA7BCA8();
  sub_1ABA89B64();
  sub_1ABAD219C(&qword_1EB4D6AC8, &qword_1ABF50D68);
  sub_1ABA96D00();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v1);
  sub_1ABA7E338();
  sub_1ABA8EA00();
  v2 = sub_1ABD0B970();
  sub_1ABA8D27C(&type metadata for CustomGraphSocializingActivityEvent.CodingKeys, v3, v2);
  sub_1ABA9F0C4();
  v4 = sub_1ABA8C744();
  sub_1ABAD219C(v4, v5);
  sub_1ABA7D99C();
  sub_1ABD1044C(v6);
  v7 = sub_1ABAA19EC();
  sub_1ABAA6564(v7, v8, v9);
  if (!v0)
  {
    sub_1ABAA073C();

    sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
    sub_1ABD09E38();
    v10 = sub_1ABAA2D10();
    sub_1ABAA6564(v10, v11, v12);
    sub_1ABAA1210();

    type metadata accessor for CustomGraphSocializingActivityEvent(0);
    sub_1ABA8CB28();
    sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
    sub_1ABA80C14();
    sub_1ABD0A358(v13);
    v14 = sub_1ABA82E78();
    sub_1ABAA6564(v14, v15, v16);
    sub_1ABAB5AF0();
    sub_1ABAD219C(&qword_1EB4D65E0, &qword_1ABF50B50);
    sub_1ABD09F00();
    v17 = sub_1ABAA2D10();
    sub_1ABAA6564(v17, v18, v19);
    sub_1ABAA17C0();
    sub_1ABAD219C(&qword_1EB4D6610, &unk_1ABF50B70);
    sub_1ABD0A060();
    v20 = sub_1ABAA2D10();
    sub_1ABAA6564(v20, v21, v22);
    sub_1ABAA2300(12);
    sub_1ABD1AFDC();

    sub_1ABAD219C(&qword_1EB4D6628, &unk_1ABF50B80);
    sub_1ABD0A110();
    sub_1ABAA1328();

    sub_1ABAA2300(348516);
    sub_1ABD1AFD0();

    v25 = sub_1ABD1ABF4();
    sub_1ABD1AF60(v25, v26, v27);

    sub_1ABAA2300(12);
    sub_1ABD1AFC4();

    sub_1ABAD219C(&qword_1EB4D66F0, &qword_1ABF50BB8);
    sub_1ABD0A808();
    v28 = sub_1ABAA2D10();
    sub_1ABAA6564(v28, v29, v30);
    sub_1ABD1AFA0();

    sub_1ABA98014(348522);
    sub_1ABD1AFB8();

    sub_1ABAD219C(&qword_1EB4D6718, &dword_1ABF50BC8);
    sub_1ABD0A8F4();
    v31 = sub_1ABAA2D10();
    sub_1ABAA6564(v31, v32, v33);
    sub_1ABD1AFA0();

    sub_1ABAA2300(12);
    sub_1ABD1AFE8();

    sub_1ABAD219C(&qword_1EB4D6738, &dword_1ABF50BD0);
    sub_1ABD0AA28();
    v34 = sub_1ABAA2D10();
    sub_1ABAA6564(v34, v35, v36);
  }

  v23 = sub_1ABA89DE4();
  v24(v23);
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void CustomGraphSocializingActivityEvent.init(from:)()
{
  sub_1ABA7BCA8();
  sub_1ABA89524();
  sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
  sub_1ABA8CD04();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v7);
  sub_1ABA9F7AC();
  v8 = sub_1ABAD219C(&qword_1EB4D6AE8, &qword_1ABF50D78);
  sub_1ABA960BC(v8);
  v10 = v9;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v11);
  v12 = sub_1ABAB67BC();
  v13 = type metadata accessor for CustomGraphSocializingActivityEvent(v12);
  v14 = sub_1ABAB6924(v13);
  MEMORY[0x1EEE9AC00](v14);
  sub_1ABA7C21C();
  v31 = v15;
  sub_1ABA90D04();
  v16 = sub_1ABD0B970();
  sub_1ABA9F458(&type metadata for CustomGraphSocializingActivityEvent.CodingKeys, v17, v16);
  if (v1)
  {
    sub_1ABA81914();
    sub_1ABA90FE0();
    if (v0)
    {
      sub_1ABAA5D48();

      if (v1)
      {
        goto LABEL_5;
      }
    }

    else if (v1)
    {
LABEL_5:
      sub_1ABA8A78C();
      sub_1ABAB480C(v31 + v26, &qword_1EB4D5F30, &unk_1ABF50B00);
      if ((v6 & 1) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }

    if (!v6)
    {
LABEL_6:
      if (v5)
      {
        goto LABEL_7;
      }

      goto LABEL_15;
    }

LABEL_14:
    sub_1ABD1B370();
    if (v5)
    {
LABEL_7:
      sub_1ABD1B314();
      if ((v4 & 1) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_16;
    }

LABEL_15:
    if (!v4)
    {
LABEL_8:
      if (v3)
      {
        goto LABEL_9;
      }

      goto LABEL_17;
    }

LABEL_16:
    sub_1ABA88814();
    if (v3)
    {
LABEL_9:
      sub_1ABD1B2FC();
      if ((v2 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_18;
    }

LABEL_17:
    if (!v2)
    {
LABEL_10:
      if (!v10)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

LABEL_18:
    sub_1ABAA1044();
    if ((v10 & 1) == 0)
    {
      goto LABEL_20;
    }

LABEL_19:
    sub_1ABAA20FC();
    goto LABEL_20;
  }

  v18 = sub_1ABA7ABE4();
  sub_1ABAD219C(v18, v19);
  sub_1ABAAFAF4();
  sub_1ABA8F54C();
  sub_1ABD1044C(v20);
  v21 = sub_1ABA841C4();
  sub_1ABAA212C(v21, v22, v23, v24, v25);
  sub_1ABA9EAC4();
  sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
  sub_1ABA89A14();
  sub_1ABD0A2D4();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA88ACC();
  sub_1ABAA2660();
  sub_1ABA7F460();
  v28 = sub_1ABD0A358(v27);
  sub_1ABAB54E0(v28);
  sub_1ABA8A800();
  sub_1ABA94EB8();
  sub_1ABAD219C(&qword_1EB4D65E0, &qword_1ABF50B50);
  sub_1ABA9ED60();
  sub_1ABD0A408();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA89318();
  sub_1ABAD219C(&qword_1EB4D6610, &unk_1ABF50B70);
  sub_1ABA9EC10();
  sub_1ABD0A568();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA897A8();
  sub_1ABAD219C(&qword_1EB4D6628, &unk_1ABF50B80);
  sub_1ABD1AFDC();
  sub_1ABD0A618();
  sub_1ABA83974();
  sub_1ABF24E64();
  sub_1ABA7C300();
  sub_1ABAB5D1C();
  sub_1ABF24E64();
  sub_1ABAA314C();
  sub_1ABAD219C(&qword_1EB4D66F0, &qword_1ABF50BB8);
  sub_1ABA893EC();
  sub_1ABD0AB5C();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABAA297C();
  sub_1ABAD219C(&qword_1EB4D6718, &dword_1ABF50BC8);
  sub_1ABD1AFB8();
  sub_1ABD0AC48();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA958A0();
  sub_1ABAD219C(&qword_1EB4D6738, &dword_1ABF50BD0);
  sub_1ABD1AFE8();
  sub_1ABD0ACD4();
  sub_1ABA93610();
  sub_1ABF24E64();
  v29 = sub_1ABA9F94C();
  v30(v29);
  sub_1ABA94AC4();
  sub_1ABD0AD58();
  sub_1ABAA91B0();
LABEL_20:
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void static CustomGraphWakingUpActivityEvent.getEntityClass()()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x7B0), *(_Records_GDEntityClass_records + 0x7B8), *(_Records_GDEntityClass_records + 0x7C0), v11);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v8, v10, v9, v11[0], v11[1], v12);
  }

  else
  {
    __break(1u);
  }
}

void CustomGraphWakingUpActivityEvent.init<A, B>(with:initializationResources:)()
{
  sub_1ABA7BCA8();
  v1 = sub_1ABA8E9D8();
  v2 = type metadata accessor for CustomGraphWakingUpActivityEvent(v1);
  v3 = sub_1ABA7AB80(v2);
  MEMORY[0x1EEE9AC00](v3);
  sub_1ABA90150();
  sub_1ABD1AC8C();
  if (!v0)
  {
    sub_1ABA88A80();
  }

  sub_1ABA8AD50();
  v4 = sub_1ABA7EDF8();
  v5(v4);
  sub_1ABA8869C();
  sub_1ABA7BC90();
}

void sub_1ABCB308C(uint64_t a1, __n128 a2)
{
  EntityClass.init(intValue:)(*(a1 + 7), &v23);
  v2 = *(&v23 + 1);
  if (!*(&v23 + 1))
  {
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v8 = sub_1ABF237F4();
    sub_1ABA7AA24(v8, qword_1ED871B40);
    v9 = sub_1ABF237D4();
    v10 = sub_1ABF24674();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1ABA78000, v9, v10, "entityClass is nil in CustomGraphWakingUpActivityEvent init", v11, 2u);
      MEMORY[0x1AC5AB8B0](v11, -1, -1);
    }

    sub_1ABB6DA08();
    swift_allocError();
    *v12 = 2;
    *(v12 + 8) = 0u;
    *(v12 + 24) = 0u;
    *(v12 + 33) = 0u;
    *(v12 + 49) = 2;
    goto LABEL_15;
  }

  if (_Records_GDEntityClass_records)
  {
    v3 = v23;
    v4 = v24;
    v5 = v25;
    v6 = v26;
    sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x7B0), *(_Records_GDEntityClass_records + 0x7B8), *(_Records_GDEntityClass_records + 0x7C0), v36);
    v7 = v37 == v4 && v5 == v38;
    if (v7 || (sub_1ABF25054() & 1) != 0)
    {
      sub_1ABA88934(v36);
LABEL_9:
      sub_1ABAA8FA8(v3, v2, v4, v5);
      return;
    }

    *&v23 = v3;
    *(&v23 + 1) = v2;
    v24 = v4;
    v25 = v5;
    LOBYTE(v26) = v6;
    EntityClass.ancestorClassesSet.getter();
    sub_1ABAA6788(v36, v13, v14, v15, v16, v17, v18, v19, v23, SBYTE8(v23), v24, v25, v26, v27, v28, v29, v30, v31, v32, *(&v32 + 1), v33, v34, v35, v36[0], v36[1], v37, v38, v39, v40, v41);
    v21 = v20;

    sub_1ABA88934(v36);
    if (v21)
    {
      goto LABEL_9;
    }

    if (_Records_GDEntityClass_records)
    {
      sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x7B0), *(_Records_GDEntityClass_records + 0x7B8), *(_Records_GDEntityClass_records + 0x7C0), &v32);
      v23 = v32;
      v24 = v33;
      v25 = v34;
      LOBYTE(v26) = v35;
      v27 = v3;
      v28 = v2;
      v29 = v4;
      v30 = v5;
      LOBYTE(v31) = v6;
      sub_1ABC7B1C0();
      swift_allocError();
      sub_1ABC81B08(&v23, v22);
LABEL_15:
      swift_willThrow();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1ABCB3358(uint64_t a1)
{
  v2 = sub_1ABD0B9C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABCB3394(uint64_t a1)
{
  v2 = sub_1ABD0B9C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void CustomGraphWakingUpActivityEvent.encode(to:)()
{
  sub_1ABA7BCA8();
  sub_1ABA89B64();
  sub_1ABAD219C(&qword_1EB4D6AF8, &qword_1ABF50D80);
  sub_1ABA96D00();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v1);
  sub_1ABA7E338();
  sub_1ABA8EA00();
  v2 = sub_1ABD0B9C4();
  sub_1ABA8D27C(&type metadata for CustomGraphWakingUpActivityEvent.CodingKeys, v3, v2);
  sub_1ABA9F0C4();
  v4 = sub_1ABA8C744();
  sub_1ABAD219C(v4, v5);
  sub_1ABA7D99C();
  sub_1ABD1044C(v6);
  v7 = sub_1ABAA19EC();
  sub_1ABAA6564(v7, v8, v9);
  if (!v0)
  {
    sub_1ABAA073C();

    sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
    sub_1ABD09E38();
    v10 = sub_1ABAA2D10();
    sub_1ABAA6564(v10, v11, v12);
    sub_1ABAA1210();

    type metadata accessor for CustomGraphWakingUpActivityEvent(0);
    sub_1ABA8CB28();
    sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
    sub_1ABA80C14();
    sub_1ABD0A358(v13);
    v14 = sub_1ABA82E78();
    sub_1ABAA6564(v14, v15, v16);
    sub_1ABAB5AF0();
    sub_1ABAD219C(&qword_1EB4D65E0, &qword_1ABF50B50);
    sub_1ABD09F00();
    v17 = sub_1ABAA2D10();
    sub_1ABAA6564(v17, v18, v19);
    sub_1ABAA17C0();
    sub_1ABAD219C(&qword_1EB4D6610, &unk_1ABF50B70);
    sub_1ABD0A060();
    v20 = sub_1ABAA2D10();
    sub_1ABAA6564(v20, v21, v22);
    sub_1ABAA2300(12);
    sub_1ABD1AFDC();

    sub_1ABAD219C(&qword_1EB4D6628, &unk_1ABF50B80);
    sub_1ABD0A110();
    sub_1ABAA1328();

    sub_1ABAA2300(348534);
    sub_1ABD1AFD0();

    v25 = sub_1ABD1ABF4();
    sub_1ABD1AF60(v25, v26, v27);

    sub_1ABAA2300(12);
    sub_1ABD1AFC4();

    sub_1ABAD219C(&qword_1EB4D66F0, &qword_1ABF50BB8);
    sub_1ABD0A808();
    v28 = sub_1ABAA2D10();
    sub_1ABAA6564(v28, v29, v30);
    sub_1ABD1AFA0();

    sub_1ABA98014(348540);
    sub_1ABD1AFB8();

    sub_1ABAD219C(&qword_1EB4D6718, &dword_1ABF50BC8);
    sub_1ABD0A8F4();
    v31 = sub_1ABAA2D10();
    sub_1ABAA6564(v31, v32, v33);
    sub_1ABD1AFA0();

    sub_1ABAA2300(12);
    sub_1ABD1AFE8();

    sub_1ABAD219C(&qword_1EB4D6738, &dword_1ABF50BD0);
    sub_1ABD0AA28();
    v34 = sub_1ABAA2D10();
    sub_1ABAA6564(v34, v35, v36);
  }

  v23 = sub_1ABA89DE4();
  v24(v23);
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void CustomGraphWakingUpActivityEvent.init(from:)()
{
  sub_1ABA7BCA8();
  sub_1ABA89524();
  sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
  sub_1ABA8CD04();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v7);
  sub_1ABA9F7AC();
  v8 = sub_1ABAD219C(&qword_1EB4D6B18, &unk_1ABF50D90);
  sub_1ABA960BC(v8);
  v10 = v9;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v11);
  v12 = sub_1ABAB67BC();
  v13 = type metadata accessor for CustomGraphWakingUpActivityEvent(v12);
  v14 = sub_1ABAB6924(v13);
  MEMORY[0x1EEE9AC00](v14);
  sub_1ABA7C21C();
  v31 = v15;
  sub_1ABA90D04();
  v16 = sub_1ABD0B9C4();
  sub_1ABA9F458(&type metadata for CustomGraphWakingUpActivityEvent.CodingKeys, v17, v16);
  if (v1)
  {
    sub_1ABA81914();
    sub_1ABA90FE0();
    if (v0)
    {
      sub_1ABAA5D48();

      if (v1)
      {
        goto LABEL_5;
      }
    }

    else if (v1)
    {
LABEL_5:
      sub_1ABA8A78C();
      sub_1ABAB480C(v31 + v26, &qword_1EB4D5F30, &unk_1ABF50B00);
      if ((v6 & 1) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }

    if (!v6)
    {
LABEL_6:
      if (v5)
      {
        goto LABEL_7;
      }

      goto LABEL_15;
    }

LABEL_14:
    sub_1ABD1B370();
    if (v5)
    {
LABEL_7:
      sub_1ABD1B314();
      if ((v4 & 1) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_16;
    }

LABEL_15:
    if (!v4)
    {
LABEL_8:
      if (v3)
      {
        goto LABEL_9;
      }

      goto LABEL_17;
    }

LABEL_16:
    sub_1ABA88814();
    if (v3)
    {
LABEL_9:
      sub_1ABD1B2FC();
      if ((v2 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_18;
    }

LABEL_17:
    if (!v2)
    {
LABEL_10:
      if (!v10)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

LABEL_18:
    sub_1ABAA1044();
    if ((v10 & 1) == 0)
    {
      goto LABEL_20;
    }

LABEL_19:
    sub_1ABAA20FC();
    goto LABEL_20;
  }

  v18 = sub_1ABA7ABE4();
  sub_1ABAD219C(v18, v19);
  sub_1ABAAFAF4();
  sub_1ABA8F54C();
  sub_1ABD1044C(v20);
  v21 = sub_1ABA841C4();
  sub_1ABAA212C(v21, v22, v23, v24, v25);
  sub_1ABA9EAC4();
  sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
  sub_1ABA89A14();
  sub_1ABD0A2D4();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA88ACC();
  sub_1ABAA2660();
  sub_1ABA7F460();
  v28 = sub_1ABD0A358(v27);
  sub_1ABAB54E0(v28);
  sub_1ABA8A800();
  sub_1ABA94EB8();
  sub_1ABAD219C(&qword_1EB4D65E0, &qword_1ABF50B50);
  sub_1ABA9ED60();
  sub_1ABD0A408();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA89318();
  sub_1ABAD219C(&qword_1EB4D6610, &unk_1ABF50B70);
  sub_1ABA9EC10();
  sub_1ABD0A568();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA897A8();
  sub_1ABAD219C(&qword_1EB4D6628, &unk_1ABF50B80);
  sub_1ABD1AFDC();
  sub_1ABD0A618();
  sub_1ABA83974();
  sub_1ABF24E64();
  sub_1ABA7C300();
  sub_1ABAB5D1C();
  sub_1ABF24E64();
  sub_1ABAA314C();
  sub_1ABAD219C(&qword_1EB4D66F0, &qword_1ABF50BB8);
  sub_1ABA893EC();
  sub_1ABD0AB5C();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABAA297C();
  sub_1ABAD219C(&qword_1EB4D6718, &dword_1ABF50BC8);
  sub_1ABD1AFB8();
  sub_1ABD0AC48();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA958A0();
  sub_1ABAD219C(&qword_1EB4D6738, &dword_1ABF50BD0);
  sub_1ABD1AFE8();
  sub_1ABD0ACD4();
  sub_1ABA93610();
  sub_1ABF24E64();
  v29 = sub_1ABA9F94C();
  v30(v29);
  sub_1ABA94AC4();
  sub_1ABD0AD58();
  sub_1ABAA91B0();
LABEL_20:
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void static CustomGraphGoingToBedActivityEvent.getEntityClass()()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x7C8), *(_Records_GDEntityClass_records + 0x7D0), *(_Records_GDEntityClass_records + 0x7D8), v11);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v8, v10, v9, v11[0], v11[1], v12);
  }

  else
  {
    __break(1u);
  }
}

void CustomGraphGoingToBedActivityEvent.init<A, B>(with:initializationResources:)()
{
  sub_1ABA7BCA8();
  v1 = sub_1ABA8E9D8();
  v2 = type metadata accessor for CustomGraphGoingToBedActivityEvent(v1);
  v3 = sub_1ABA7AB80(v2);
  MEMORY[0x1EEE9AC00](v3);
  sub_1ABA90150();
  sub_1ABD1AC8C();
  if (!v0)
  {
    sub_1ABA88A80();
  }

  sub_1ABA8AD50();
  v4 = sub_1ABA7EDF8();
  v5(v4);
  sub_1ABA8869C();
  sub_1ABA7BC90();
}

void sub_1ABCB3FFC(uint64_t a1, __n128 a2)
{
  EntityClass.init(intValue:)(*(a1 + 7), &v23);
  v2 = *(&v23 + 1);
  if (!*(&v23 + 1))
  {
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v8 = sub_1ABF237F4();
    sub_1ABA7AA24(v8, qword_1ED871B40);
    v9 = sub_1ABF237D4();
    v10 = sub_1ABF24674();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1ABA78000, v9, v10, "entityClass is nil in CustomGraphGoingToBedActivityEvent init", v11, 2u);
      MEMORY[0x1AC5AB8B0](v11, -1, -1);
    }

    sub_1ABB6DA08();
    swift_allocError();
    *v12 = 2;
    *(v12 + 8) = 0u;
    *(v12 + 24) = 0u;
    *(v12 + 33) = 0u;
    *(v12 + 49) = 2;
    goto LABEL_15;
  }

  if (_Records_GDEntityClass_records)
  {
    v3 = v23;
    v4 = v24;
    v5 = v25;
    v6 = v26;
    sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x7C8), *(_Records_GDEntityClass_records + 0x7D0), *(_Records_GDEntityClass_records + 0x7D8), v36);
    v7 = v37 == v4 && v5 == v38;
    if (v7 || (sub_1ABF25054() & 1) != 0)
    {
      sub_1ABA88934(v36);
LABEL_9:
      sub_1ABAA8FA8(v3, v2, v4, v5);
      return;
    }

    *&v23 = v3;
    *(&v23 + 1) = v2;
    v24 = v4;
    v25 = v5;
    LOBYTE(v26) = v6;
    EntityClass.ancestorClassesSet.getter();
    sub_1ABAA6788(v36, v13, v14, v15, v16, v17, v18, v19, v23, SBYTE8(v23), v24, v25, v26, v27, v28, v29, v30, v31, v32, *(&v32 + 1), v33, v34, v35, v36[0], v36[1], v37, v38, v39, v40, v41);
    v21 = v20;

    sub_1ABA88934(v36);
    if (v21)
    {
      goto LABEL_9;
    }

    if (_Records_GDEntityClass_records)
    {
      sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x7C8), *(_Records_GDEntityClass_records + 0x7D0), *(_Records_GDEntityClass_records + 0x7D8), &v32);
      v23 = v32;
      v24 = v33;
      v25 = v34;
      LOBYTE(v26) = v35;
      v27 = v3;
      v28 = v2;
      v29 = v4;
      v30 = v5;
      LOBYTE(v31) = v6;
      sub_1ABC7B1C0();
      swift_allocError();
      sub_1ABC81B08(&v23, v22);
LABEL_15:
      swift_willThrow();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1ABCB42C8(uint64_t a1)
{
  v2 = sub_1ABD0BA18();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABCB4304(uint64_t a1)
{
  v2 = sub_1ABD0BA18();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void CustomGraphGoingToBedActivityEvent.encode(to:)()
{
  sub_1ABA7BCA8();
  sub_1ABA89B64();
  sub_1ABAD219C(&qword_1EB4D6B28, &dword_1ABF50D98);
  sub_1ABA96D00();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v1);
  sub_1ABA7E338();
  sub_1ABA8EA00();
  v2 = sub_1ABD0BA18();
  sub_1ABA8D27C(&type metadata for CustomGraphGoingToBedActivityEvent.CodingKeys, v3, v2);
  sub_1ABA9F0C4();
  v4 = sub_1ABA8C744();
  sub_1ABAD219C(v4, v5);
  sub_1ABA7D99C();
  sub_1ABD1044C(v6);
  v7 = sub_1ABAA19EC();
  sub_1ABAA6564(v7, v8, v9);
  if (!v0)
  {
    sub_1ABAA073C();

    sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
    sub_1ABD09E38();
    v10 = sub_1ABAA2D10();
    sub_1ABAA6564(v10, v11, v12);
    sub_1ABAA1210();

    type metadata accessor for CustomGraphGoingToBedActivityEvent(0);
    sub_1ABA8CB28();
    sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
    sub_1ABA80C14();
    sub_1ABD0A358(v13);
    v14 = sub_1ABA82E78();
    sub_1ABAA6564(v14, v15, v16);
    sub_1ABAB5AF0();
    sub_1ABAD219C(&qword_1EB4D65E0, &qword_1ABF50B50);
    sub_1ABD09F00();
    v17 = sub_1ABAA2D10();
    sub_1ABAA6564(v17, v18, v19);
    sub_1ABAA17C0();
    sub_1ABAD219C(&qword_1EB4D6610, &unk_1ABF50B70);
    sub_1ABD0A060();
    v20 = sub_1ABAA2D10();
    sub_1ABAA6564(v20, v21, v22);
    sub_1ABAA2300(12);
    sub_1ABD1AFDC();

    sub_1ABAD219C(&qword_1EB4D6628, &unk_1ABF50B80);
    sub_1ABD0A110();
    sub_1ABAA1328();

    sub_1ABAA2300(348552);
    sub_1ABD1AFD0();

    v25 = sub_1ABD1ABF4();
    sub_1ABD1AF60(v25, v26, v27);

    sub_1ABAA2300(12);
    sub_1ABD1AFC4();

    sub_1ABAD219C(&qword_1EB4D66F0, &qword_1ABF50BB8);
    sub_1ABD0A808();
    v28 = sub_1ABAA2D10();
    sub_1ABAA6564(v28, v29, v30);
    sub_1ABD1AFA0();

    sub_1ABA98014(348558);
    sub_1ABD1AFB8();

    sub_1ABAD219C(&qword_1EB4D6718, &dword_1ABF50BC8);
    sub_1ABD0A8F4();
    v31 = sub_1ABAA2D10();
    sub_1ABAA6564(v31, v32, v33);
    sub_1ABD1AFA0();

    sub_1ABAA2300(12);
    sub_1ABD1AFE8();

    sub_1ABAD219C(&qword_1EB4D6738, &dword_1ABF50BD0);
    sub_1ABD0AA28();
    v34 = sub_1ABAA2D10();
    sub_1ABAA6564(v34, v35, v36);
  }

  v23 = sub_1ABA89DE4();
  v24(v23);
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void CustomGraphGoingToBedActivityEvent.init(from:)()
{
  sub_1ABA7BCA8();
  sub_1ABA89524();
  sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
  sub_1ABA8CD04();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v7);
  sub_1ABA9F7AC();
  v8 = sub_1ABAD219C(&qword_1EB4D6B48, &unk_1ABF50DA8);
  sub_1ABA960BC(v8);
  v10 = v9;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v11);
  v12 = sub_1ABAB67BC();
  v13 = type metadata accessor for CustomGraphGoingToBedActivityEvent(v12);
  v14 = sub_1ABAB6924(v13);
  MEMORY[0x1EEE9AC00](v14);
  sub_1ABA7C21C();
  v31 = v15;
  sub_1ABA90D04();
  v16 = sub_1ABD0BA18();
  sub_1ABA9F458(&type metadata for CustomGraphGoingToBedActivityEvent.CodingKeys, v17, v16);
  if (v1)
  {
    sub_1ABA81914();
    sub_1ABA90FE0();
    if (v0)
    {
      sub_1ABAA5D48();

      if (v1)
      {
        goto LABEL_5;
      }
    }

    else if (v1)
    {
LABEL_5:
      sub_1ABA8A78C();
      sub_1ABAB480C(v31 + v26, &qword_1EB4D5F30, &unk_1ABF50B00);
      if ((v6 & 1) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }

    if (!v6)
    {
LABEL_6:
      if (v5)
      {
        goto LABEL_7;
      }

      goto LABEL_15;
    }

LABEL_14:
    sub_1ABD1B370();
    if (v5)
    {
LABEL_7:
      sub_1ABD1B314();
      if ((v4 & 1) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_16;
    }

LABEL_15:
    if (!v4)
    {
LABEL_8:
      if (v3)
      {
        goto LABEL_9;
      }

      goto LABEL_17;
    }

LABEL_16:
    sub_1ABA88814();
    if (v3)
    {
LABEL_9:
      sub_1ABD1B2FC();
      if ((v2 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_18;
    }

LABEL_17:
    if (!v2)
    {
LABEL_10:
      if (!v10)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

LABEL_18:
    sub_1ABAA1044();
    if ((v10 & 1) == 0)
    {
      goto LABEL_20;
    }

LABEL_19:
    sub_1ABAA20FC();
    goto LABEL_20;
  }

  v18 = sub_1ABA7ABE4();
  sub_1ABAD219C(v18, v19);
  sub_1ABAAFAF4();
  sub_1ABA8F54C();
  sub_1ABD1044C(v20);
  v21 = sub_1ABA841C4();
  sub_1ABAA212C(v21, v22, v23, v24, v25);
  sub_1ABA9EAC4();
  sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
  sub_1ABA89A14();
  sub_1ABD0A2D4();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA88ACC();
  sub_1ABAA2660();
  sub_1ABA7F460();
  v28 = sub_1ABD0A358(v27);
  sub_1ABAB54E0(v28);
  sub_1ABA8A800();
  sub_1ABA94EB8();
  sub_1ABAD219C(&qword_1EB4D65E0, &qword_1ABF50B50);
  sub_1ABA9ED60();
  sub_1ABD0A408();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA89318();
  sub_1ABAD219C(&qword_1EB4D6610, &unk_1ABF50B70);
  sub_1ABA9EC10();
  sub_1ABD0A568();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA897A8();
  sub_1ABAD219C(&qword_1EB4D6628, &unk_1ABF50B80);
  sub_1ABD1AFDC();
  sub_1ABD0A618();
  sub_1ABA83974();
  sub_1ABF24E64();
  sub_1ABA7C300();
  sub_1ABAB5D1C();
  sub_1ABF24E64();
  sub_1ABAA314C();
  sub_1ABAD219C(&qword_1EB4D66F0, &qword_1ABF50BB8);
  sub_1ABA893EC();
  sub_1ABD0AB5C();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABAA297C();
  sub_1ABAD219C(&qword_1EB4D6718, &dword_1ABF50BC8);
  sub_1ABD1AFB8();
  sub_1ABD0AC48();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA958A0();
  sub_1ABAD219C(&qword_1EB4D6738, &dword_1ABF50BD0);
  sub_1ABD1AFE8();
  sub_1ABD0ACD4();
  sub_1ABA93610();
  sub_1ABF24E64();
  v29 = sub_1ABA9F94C();
  v30(v29);
  sub_1ABA94AC4();
  sub_1ABD0AD58();
  sub_1ABAA91B0();
LABEL_20:
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void static CustomGraphExercisingActivityEvent.getEntityClass()()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x7F8), *(_Records_GDEntityClass_records + 0x800), *(_Records_GDEntityClass_records + 0x808), v11);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v8, v10, v9, v11[0], v11[1], v12);
  }

  else
  {
    __break(1u);
  }
}

void CustomGraphExercisingActivityEvent.init<A, B>(with:initializationResources:)()
{
  sub_1ABA7BCA8();
  v1 = sub_1ABA8E9D8();
  v2 = type metadata accessor for CustomGraphExercisingActivityEvent(v1);
  v3 = sub_1ABA7AB80(v2);
  MEMORY[0x1EEE9AC00](v3);
  sub_1ABA90150();
  sub_1ABD1AC8C();
  if (!v0)
  {
    sub_1ABA88A80();
  }

  sub_1ABA8AD50();
  v4 = sub_1ABA7EDF8();
  v5(v4);
  sub_1ABA8869C();
  sub_1ABA7BC90();
}

void sub_1ABCB4F6C(uint64_t a1, __n128 a2)
{
  EntityClass.init(intValue:)(*(a1 + 7), &v23);
  v2 = *(&v23 + 1);
  if (!*(&v23 + 1))
  {
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v8 = sub_1ABF237F4();
    sub_1ABA7AA24(v8, qword_1ED871B40);
    v9 = sub_1ABF237D4();
    v10 = sub_1ABF24674();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1ABA78000, v9, v10, "entityClass is nil in CustomGraphExercisingActivityEvent init", v11, 2u);
      MEMORY[0x1AC5AB8B0](v11, -1, -1);
    }

    sub_1ABB6DA08();
    swift_allocError();
    *v12 = 2;
    *(v12 + 8) = 0u;
    *(v12 + 24) = 0u;
    *(v12 + 33) = 0u;
    *(v12 + 49) = 2;
    goto LABEL_15;
  }

  if (_Records_GDEntityClass_records)
  {
    v3 = v23;
    v4 = v24;
    v5 = v25;
    v6 = v26;
    sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x7F8), *(_Records_GDEntityClass_records + 0x800), *(_Records_GDEntityClass_records + 0x808), v36);
    v7 = v37 == v4 && v5 == v38;
    if (v7 || (sub_1ABF25054() & 1) != 0)
    {
      sub_1ABA88934(v36);
LABEL_9:
      sub_1ABAA8FA8(v3, v2, v4, v5);
      return;
    }

    *&v23 = v3;
    *(&v23 + 1) = v2;
    v24 = v4;
    v25 = v5;
    LOBYTE(v26) = v6;
    EntityClass.ancestorClassesSet.getter();
    sub_1ABAA6788(v36, v13, v14, v15, v16, v17, v18, v19, v23, SBYTE8(v23), v24, v25, v26, v27, v28, v29, v30, v31, v32, *(&v32 + 1), v33, v34, v35, v36[0], v36[1], v37, v38, v39, v40, v41);
    v21 = v20;

    sub_1ABA88934(v36);
    if (v21)
    {
      goto LABEL_9;
    }

    if (_Records_GDEntityClass_records)
    {
      sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x7F8), *(_Records_GDEntityClass_records + 0x800), *(_Records_GDEntityClass_records + 0x808), &v32);
      v23 = v32;
      v24 = v33;
      v25 = v34;
      LOBYTE(v26) = v35;
      v27 = v3;
      v28 = v2;
      v29 = v4;
      v30 = v5;
      LOBYTE(v31) = v6;
      sub_1ABC7B1C0();
      swift_allocError();
      sub_1ABC81B08(&v23, v22);
LABEL_15:
      swift_willThrow();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1ABCB5238(uint64_t a1)
{
  v2 = sub_1ABD0BA6C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABCB5274(uint64_t a1)
{
  v2 = sub_1ABD0BA6C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void CustomGraphExercisingActivityEvent.encode(to:)()
{
  sub_1ABA7BCA8();
  sub_1ABA89B64();
  sub_1ABAD219C(&qword_1EB4D6B58, &dword_1ABF50DB0);
  sub_1ABA96D00();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v1);
  sub_1ABA7E338();
  sub_1ABA8EA00();
  v2 = sub_1ABD0BA6C();
  sub_1ABA8D27C(&type metadata for CustomGraphExercisingActivityEvent.CodingKeys, v3, v2);
  sub_1ABA9F0C4();
  v4 = sub_1ABA8C744();
  sub_1ABAD219C(v4, v5);
  sub_1ABA7D99C();
  sub_1ABD1044C(v6);
  v7 = sub_1ABAA19EC();
  sub_1ABAA6564(v7, v8, v9);
  if (!v0)
  {
    sub_1ABAA073C();

    sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
    sub_1ABD09E38();
    v10 = sub_1ABAA2D10();
    sub_1ABAA6564(v10, v11, v12);
    sub_1ABAA1210();

    type metadata accessor for CustomGraphExercisingActivityEvent(0);
    sub_1ABA8CB28();
    sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
    sub_1ABA80C14();
    sub_1ABD0A358(v13);
    v14 = sub_1ABA82E78();
    sub_1ABAA6564(v14, v15, v16);
    sub_1ABAB5AF0();
    sub_1ABAD219C(&qword_1EB4D65E0, &qword_1ABF50B50);
    sub_1ABD09F00();
    v17 = sub_1ABAA2D10();
    sub_1ABAA6564(v17, v18, v19);
    sub_1ABAA17C0();
    sub_1ABAD219C(&qword_1EB4D6610, &unk_1ABF50B70);
    sub_1ABD0A060();
    v20 = sub_1ABAA2D10();
    sub_1ABAA6564(v20, v21, v22);
    sub_1ABAA2300(12);
    sub_1ABD1AFDC();

    sub_1ABAD219C(&qword_1EB4D6628, &unk_1ABF50B80);
    sub_1ABD0A110();
    sub_1ABAA1328();

    sub_1ABAA2300(348570);
    sub_1ABD1AFD0();

    v25 = sub_1ABD1ABF4();
    sub_1ABD1AF60(v25, v26, v27);

    sub_1ABAA2300(12);
    sub_1ABD1AFC4();

    sub_1ABAD219C(&qword_1EB4D66F0, &qword_1ABF50BB8);
    sub_1ABD0A808();
    v28 = sub_1ABAA2D10();
    sub_1ABAA6564(v28, v29, v30);
    sub_1ABD1AFA0();

    sub_1ABA98014(348576);
    sub_1ABD1AFB8();

    sub_1ABAD219C(&qword_1EB4D6718, &dword_1ABF50BC8);
    sub_1ABD0A8F4();
    v31 = sub_1ABAA2D10();
    sub_1ABAA6564(v31, v32, v33);
    sub_1ABD1AFA0();

    sub_1ABAA2300(12);
    sub_1ABD1AFE8();

    sub_1ABAD219C(&qword_1EB4D6738, &dword_1ABF50BD0);
    sub_1ABD0AA28();
    v34 = sub_1ABAA2D10();
    sub_1ABAA6564(v34, v35, v36);
  }

  v23 = sub_1ABA89DE4();
  v24(v23);
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void CustomGraphExercisingActivityEvent.init(from:)()
{
  sub_1ABA7BCA8();
  sub_1ABA89524();
  sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
  sub_1ABA8CD04();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v7);
  sub_1ABA9F7AC();
  v8 = sub_1ABAD219C(&qword_1EB4D6B78, &unk_1ABF50DC0);
  sub_1ABA960BC(v8);
  v10 = v9;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v11);
  v12 = sub_1ABAB67BC();
  v13 = type metadata accessor for CustomGraphExercisingActivityEvent(v12);
  v14 = sub_1ABAB6924(v13);
  MEMORY[0x1EEE9AC00](v14);
  sub_1ABA7C21C();
  v31 = v15;
  sub_1ABA90D04();
  v16 = sub_1ABD0BA6C();
  sub_1ABA9F458(&type metadata for CustomGraphExercisingActivityEvent.CodingKeys, v17, v16);
  if (v1)
  {
    sub_1ABA81914();
    sub_1ABA90FE0();
    if (v0)
    {
      sub_1ABAA5D48();

      if (v1)
      {
        goto LABEL_5;
      }
    }

    else if (v1)
    {
LABEL_5:
      sub_1ABA8A78C();
      sub_1ABAB480C(v31 + v26, &qword_1EB4D5F30, &unk_1ABF50B00);
      if ((v6 & 1) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }

    if (!v6)
    {
LABEL_6:
      if (v5)
      {
        goto LABEL_7;
      }

      goto LABEL_15;
    }

LABEL_14:
    sub_1ABD1B370();
    if (v5)
    {
LABEL_7:
      sub_1ABD1B314();
      if ((v4 & 1) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_16;
    }

LABEL_15:
    if (!v4)
    {
LABEL_8:
      if (v3)
      {
        goto LABEL_9;
      }

      goto LABEL_17;
    }

LABEL_16:
    sub_1ABA88814();
    if (v3)
    {
LABEL_9:
      sub_1ABD1B2FC();
      if ((v2 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_18;
    }

LABEL_17:
    if (!v2)
    {
LABEL_10:
      if (!v10)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

LABEL_18:
    sub_1ABAA1044();
    if ((v10 & 1) == 0)
    {
      goto LABEL_20;
    }

LABEL_19:
    sub_1ABAA20FC();
    goto LABEL_20;
  }

  v18 = sub_1ABA7ABE4();
  sub_1ABAD219C(v18, v19);
  sub_1ABAAFAF4();
  sub_1ABA8F54C();
  sub_1ABD1044C(v20);
  v21 = sub_1ABA841C4();
  sub_1ABAA212C(v21, v22, v23, v24, v25);
  sub_1ABA9EAC4();
  sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
  sub_1ABA89A14();
  sub_1ABD0A2D4();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA88ACC();
  sub_1ABAA2660();
  sub_1ABA7F460();
  v28 = sub_1ABD0A358(v27);
  sub_1ABAB54E0(v28);
  sub_1ABA8A800();
  sub_1ABA94EB8();
  sub_1ABAD219C(&qword_1EB4D65E0, &qword_1ABF50B50);
  sub_1ABA9ED60();
  sub_1ABD0A408();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA89318();
  sub_1ABAD219C(&qword_1EB4D6610, &unk_1ABF50B70);
  sub_1ABA9EC10();
  sub_1ABD0A568();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA897A8();
  sub_1ABAD219C(&qword_1EB4D6628, &unk_1ABF50B80);
  sub_1ABD1AFDC();
  sub_1ABD0A618();
  sub_1ABA83974();
  sub_1ABF24E64();
  sub_1ABA7C300();
  sub_1ABAB5D1C();
  sub_1ABF24E64();
  sub_1ABAA314C();
  sub_1ABAD219C(&qword_1EB4D66F0, &qword_1ABF50BB8);
  sub_1ABA893EC();
  sub_1ABD0AB5C();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABAA297C();
  sub_1ABAD219C(&qword_1EB4D6718, &dword_1ABF50BC8);
  sub_1ABD1AFB8();
  sub_1ABD0AC48();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA958A0();
  sub_1ABAD219C(&qword_1EB4D6738, &dword_1ABF50BD0);
  sub_1ABD1AFE8();
  sub_1ABD0ACD4();
  sub_1ABA93610();
  sub_1ABF24E64();
  v29 = sub_1ABA9F94C();
  v30(v29);
  sub_1ABA94AC4();
  sub_1ABD0AD58();
  sub_1ABAA91B0();
LABEL_20:
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void static CustomGraphCommuteActivityEvent.getEntityClass()()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xB28), *(_Records_GDEntityClass_records + 0xB30), *(_Records_GDEntityClass_records + 0xB38), v11);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v8, v10, v9, v11[0], v11[1], v12);
  }

  else
  {
    __break(1u);
  }
}

void CustomGraphCommuteActivityEvent.init<A, B>(with:initializationResources:)()
{
  sub_1ABA7BCA8();
  v1 = sub_1ABA8E9D8();
  v2 = type metadata accessor for CustomGraphCommuteActivityEvent(v1);
  v3 = sub_1ABA7AB80(v2);
  MEMORY[0x1EEE9AC00](v3);
  sub_1ABA90150();
  sub_1ABD1AC8C();
  if (!v0)
  {
    sub_1ABA88A80();
  }

  sub_1ABA8AD50();
  v4 = sub_1ABA7EDF8();
  v5(v4);
  sub_1ABA8869C();
  sub_1ABA7BC90();
}

void sub_1ABCB5EDC(uint64_t a1, __n128 a2)
{
  EntityClass.init(intValue:)(*(a1 + 7), &v23);
  v2 = *(&v23 + 1);
  if (!*(&v23 + 1))
  {
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v8 = sub_1ABF237F4();
    sub_1ABA7AA24(v8, qword_1ED871B40);
    v9 = sub_1ABF237D4();
    v10 = sub_1ABF24674();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1ABA78000, v9, v10, "entityClass is nil in CustomGraphCommuteActivityEvent init", v11, 2u);
      MEMORY[0x1AC5AB8B0](v11, -1, -1);
    }

    sub_1ABB6DA08();
    swift_allocError();
    *v12 = 2;
    *(v12 + 8) = 0u;
    *(v12 + 24) = 0u;
    *(v12 + 33) = 0u;
    *(v12 + 49) = 2;
    goto LABEL_15;
  }

  if (_Records_GDEntityClass_records)
  {
    v3 = v23;
    v4 = v24;
    v5 = v25;
    v6 = v26;
    sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xB28), *(_Records_GDEntityClass_records + 0xB30), *(_Records_GDEntityClass_records + 0xB38), v36);
    v7 = v37 == v4 && v5 == v38;
    if (v7 || (sub_1ABF25054() & 1) != 0)
    {
      sub_1ABA88934(v36);
LABEL_9:
      sub_1ABAA8FA8(v3, v2, v4, v5);
      return;
    }

    *&v23 = v3;
    *(&v23 + 1) = v2;
    v24 = v4;
    v25 = v5;
    LOBYTE(v26) = v6;
    EntityClass.ancestorClassesSet.getter();
    sub_1ABAA6788(v36, v13, v14, v15, v16, v17, v18, v19, v23, SBYTE8(v23), v24, v25, v26, v27, v28, v29, v30, v31, v32, *(&v32 + 1), v33, v34, v35, v36[0], v36[1], v37, v38, v39, v40, v41);
    v21 = v20;

    sub_1ABA88934(v36);
    if (v21)
    {
      goto LABEL_9;
    }

    if (_Records_GDEntityClass_records)
    {
      sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xB28), *(_Records_GDEntityClass_records + 0xB30), *(_Records_GDEntityClass_records + 0xB38), &v32);
      v23 = v32;
      v24 = v33;
      v25 = v34;
      LOBYTE(v26) = v35;
      v27 = v3;
      v28 = v2;
      v29 = v4;
      v30 = v5;
      LOBYTE(v31) = v6;
      sub_1ABC7B1C0();
      swift_allocError();
      sub_1ABC81B08(&v23, v22);
LABEL_15:
      swift_willThrow();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1ABCB61A8(uint64_t a1)
{
  v2 = sub_1ABD0BAC0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABCB61E4(uint64_t a1)
{
  v2 = sub_1ABD0BAC0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void CustomGraphCommuteActivityEvent.encode(to:)()
{
  sub_1ABA7BCA8();
  sub_1ABA89B64();
  sub_1ABAD219C(&qword_1EB4D6B88, &dword_1ABF50DC8);
  sub_1ABA96D00();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v1);
  sub_1ABA7E338();
  sub_1ABA8EA00();
  v2 = sub_1ABD0BAC0();
  sub_1ABA8D27C(&type metadata for CustomGraphCommuteActivityEvent.CodingKeys, v3, v2);
  sub_1ABA9F0C4();
  v4 = sub_1ABA8C744();
  sub_1ABAD219C(v4, v5);
  sub_1ABA7D99C();
  sub_1ABD1044C(v6);
  v7 = sub_1ABAA19EC();
  sub_1ABAA6564(v7, v8, v9);
  if (!v0)
  {
    sub_1ABAA073C();

    sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
    sub_1ABD09E38();
    v10 = sub_1ABAA2D10();
    sub_1ABAA6564(v10, v11, v12);
    sub_1ABAA1210();

    type metadata accessor for CustomGraphCommuteActivityEvent(0);
    sub_1ABA8CB28();
    sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
    sub_1ABA80C14();
    sub_1ABD0A358(v13);
    v14 = sub_1ABA82E78();
    sub_1ABAA6564(v14, v15, v16);
    sub_1ABAB5AF0();
    sub_1ABAD219C(&qword_1EB4D65E0, &qword_1ABF50B50);
    sub_1ABD09F00();
    v17 = sub_1ABAA2D10();
    sub_1ABAA6564(v17, v18, v19);
    sub_1ABAA17C0();
    sub_1ABAD219C(&qword_1EB4D6610, &unk_1ABF50B70);
    sub_1ABD0A060();
    v20 = sub_1ABAA2D10();
    sub_1ABAA6564(v20, v21, v22);
    sub_1ABAA2300(12);
    sub_1ABD1AFDC();

    sub_1ABAD219C(&qword_1EB4D6628, &unk_1ABF50B80);
    sub_1ABD0A110();
    sub_1ABAA1328();

    sub_1ABAA2300(348588);
    sub_1ABD1AFD0();

    v25 = sub_1ABD1ABF4();
    sub_1ABD1AF60(v25, v26, v27);

    sub_1ABAA2300(12);
    sub_1ABD1AFC4();

    sub_1ABAD219C(&qword_1EB4D66F0, &qword_1ABF50BB8);
    sub_1ABD0A808();
    v28 = sub_1ABAA2D10();
    sub_1ABAA6564(v28, v29, v30);
    sub_1ABD1AFA0();

    sub_1ABA98014(348594);
    sub_1ABD1AFB8();

    sub_1ABAD219C(&qword_1EB4D6718, &dword_1ABF50BC8);
    sub_1ABD0A8F4();
    v31 = sub_1ABAA2D10();
    sub_1ABAA6564(v31, v32, v33);
    sub_1ABD1AFA0();

    sub_1ABAA2300(12);
    sub_1ABD1AFE8();

    sub_1ABAD219C(&qword_1EB4D6738, &dword_1ABF50BD0);
    sub_1ABD0AA28();
    v34 = sub_1ABAA2D10();
    sub_1ABAA6564(v34, v35, v36);
  }

  v23 = sub_1ABA89DE4();
  v24(v23);
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void CustomGraphCommuteActivityEvent.init(from:)()
{
  sub_1ABA7BCA8();
  sub_1ABA89524();
  sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
  sub_1ABA8CD04();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v7);
  sub_1ABA9F7AC();
  v8 = sub_1ABAD219C(&qword_1EB4D6BA8, &unk_1ABF50DD8);
  sub_1ABA960BC(v8);
  v10 = v9;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v11);
  v12 = sub_1ABAB67BC();
  v13 = type metadata accessor for CustomGraphCommuteActivityEvent(v12);
  v14 = sub_1ABAB6924(v13);
  MEMORY[0x1EEE9AC00](v14);
  sub_1ABA7C21C();
  v31 = v15;
  sub_1ABA90D04();
  v16 = sub_1ABD0BAC0();
  sub_1ABA9F458(&type metadata for CustomGraphCommuteActivityEvent.CodingKeys, v17, v16);
  if (v1)
  {
    sub_1ABA81914();
    sub_1ABA90FE0();
    if (v0)
    {
      sub_1ABAA5D48();

      if (v1)
      {
        goto LABEL_5;
      }
    }

    else if (v1)
    {
LABEL_5:
      sub_1ABA8A78C();
      sub_1ABAB480C(v31 + v26, &qword_1EB4D5F30, &unk_1ABF50B00);
      if ((v6 & 1) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }

    if (!v6)
    {
LABEL_6:
      if (v5)
      {
        goto LABEL_7;
      }

      goto LABEL_15;
    }

LABEL_14:
    sub_1ABD1B370();
    if (v5)
    {
LABEL_7:
      sub_1ABD1B314();
      if ((v4 & 1) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_16;
    }

LABEL_15:
    if (!v4)
    {
LABEL_8:
      if (v3)
      {
        goto LABEL_9;
      }

      goto LABEL_17;
    }

LABEL_16:
    sub_1ABA88814();
    if (v3)
    {
LABEL_9:
      sub_1ABD1B2FC();
      if ((v2 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_18;
    }

LABEL_17:
    if (!v2)
    {
LABEL_10:
      if (!v10)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

LABEL_18:
    sub_1ABAA1044();
    if ((v10 & 1) == 0)
    {
      goto LABEL_20;
    }

LABEL_19:
    sub_1ABAA20FC();
    goto LABEL_20;
  }

  v18 = sub_1ABA7ABE4();
  sub_1ABAD219C(v18, v19);
  sub_1ABAAFAF4();
  sub_1ABA8F54C();
  sub_1ABD1044C(v20);
  v21 = sub_1ABA841C4();
  sub_1ABAA212C(v21, v22, v23, v24, v25);
  sub_1ABA9EAC4();
  sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
  sub_1ABA89A14();
  sub_1ABD0A2D4();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA88ACC();
  sub_1ABAA2660();
  sub_1ABA7F460();
  v28 = sub_1ABD0A358(v27);
  sub_1ABAB54E0(v28);
  sub_1ABA8A800();
  sub_1ABA94EB8();
  sub_1ABAD219C(&qword_1EB4D65E0, &qword_1ABF50B50);
  sub_1ABA9ED60();
  sub_1ABD0A408();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA89318();
  sub_1ABAD219C(&qword_1EB4D6610, &unk_1ABF50B70);
  sub_1ABA9EC10();
  sub_1ABD0A568();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA897A8();
  sub_1ABAD219C(&qword_1EB4D6628, &unk_1ABF50B80);
  sub_1ABD1AFDC();
  sub_1ABD0A618();
  sub_1ABA83974();
  sub_1ABF24E64();
  sub_1ABA7C300();
  sub_1ABAB5D1C();
  sub_1ABF24E64();
  sub_1ABAA314C();
  sub_1ABAD219C(&qword_1EB4D66F0, &qword_1ABF50BB8);
  sub_1ABA893EC();
  sub_1ABD0AB5C();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABAA297C();
  sub_1ABAD219C(&qword_1EB4D6718, &dword_1ABF50BC8);
  sub_1ABD1AFB8();
  sub_1ABD0AC48();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA958A0();
  sub_1ABAD219C(&qword_1EB4D6738, &dword_1ABF50BD0);
  sub_1ABD1AFE8();
  sub_1ABD0ACD4();
  sub_1ABA93610();
  sub_1ABF24E64();
  v29 = sub_1ABA9F94C();
  v30(v29);
  sub_1ABA94AC4();
  sub_1ABD0AD58();
  sub_1ABAA91B0();
LABEL_20:
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void static CustomGraphDiningActivityEvent.getEntityClass()()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xB40), *(_Records_GDEntityClass_records + 0xB48), *(_Records_GDEntityClass_records + 0xB50), v11);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v8, v10, v9, v11[0], v11[1], v12);
  }

  else
  {
    __break(1u);
  }
}

void CustomGraphDiningActivityEvent.init<A, B>(with:initializationResources:)()
{
  sub_1ABA7BCA8();
  v1 = sub_1ABA8E9D8();
  v2 = type metadata accessor for CustomGraphDiningActivityEvent(v1);
  v3 = sub_1ABA7AB80(v2);
  MEMORY[0x1EEE9AC00](v3);
  sub_1ABA90150();
  sub_1ABD1AC8C();
  if (!v0)
  {
    sub_1ABA88A80();
  }

  sub_1ABA8AD50();
  v4 = sub_1ABA7EDF8();
  v5(v4);
  sub_1ABA8869C();
  sub_1ABA7BC90();
}

void sub_1ABCB6E4C(uint64_t a1, __n128 a2)
{
  EntityClass.init(intValue:)(*(a1 + 7), &v23);
  v2 = *(&v23 + 1);
  if (!*(&v23 + 1))
  {
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v8 = sub_1ABF237F4();
    sub_1ABA7AA24(v8, qword_1ED871B40);
    v9 = sub_1ABF237D4();
    v10 = sub_1ABF24674();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1ABA78000, v9, v10, "entityClass is nil in CustomGraphDiningActivityEvent init", v11, 2u);
      MEMORY[0x1AC5AB8B0](v11, -1, -1);
    }

    sub_1ABB6DA08();
    swift_allocError();
    *v12 = 2;
    *(v12 + 8) = 0u;
    *(v12 + 24) = 0u;
    *(v12 + 33) = 0u;
    *(v12 + 49) = 2;
    goto LABEL_15;
  }

  if (_Records_GDEntityClass_records)
  {
    v3 = v23;
    v4 = v24;
    v5 = v25;
    v6 = v26;
    sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xB40), *(_Records_GDEntityClass_records + 0xB48), *(_Records_GDEntityClass_records + 0xB50), v36);
    v7 = v37 == v4 && v5 == v38;
    if (v7 || (sub_1ABF25054() & 1) != 0)
    {
      sub_1ABA88934(v36);
LABEL_9:
      sub_1ABAA8FA8(v3, v2, v4, v5);
      return;
    }

    *&v23 = v3;
    *(&v23 + 1) = v2;
    v24 = v4;
    v25 = v5;
    LOBYTE(v26) = v6;
    EntityClass.ancestorClassesSet.getter();
    sub_1ABAA6788(v36, v13, v14, v15, v16, v17, v18, v19, v23, SBYTE8(v23), v24, v25, v26, v27, v28, v29, v30, v31, v32, *(&v32 + 1), v33, v34, v35, v36[0], v36[1], v37, v38, v39, v40, v41);
    v21 = v20;

    sub_1ABA88934(v36);
    if (v21)
    {
      goto LABEL_9;
    }

    if (_Records_GDEntityClass_records)
    {
      sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xB40), *(_Records_GDEntityClass_records + 0xB48), *(_Records_GDEntityClass_records + 0xB50), &v32);
      v23 = v32;
      v24 = v33;
      v25 = v34;
      LOBYTE(v26) = v35;
      v27 = v3;
      v28 = v2;
      v29 = v4;
      v30 = v5;
      LOBYTE(v31) = v6;
      sub_1ABC7B1C0();
      swift_allocError();
      sub_1ABC81B08(&v23, v22);
LABEL_15:
      swift_willThrow();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1ABCB7118(uint64_t a1)
{
  v2 = sub_1ABD0BB14();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABCB7154(uint64_t a1)
{
  v2 = sub_1ABD0BB14();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void CustomGraphDiningActivityEvent.encode(to:)()
{
  sub_1ABA7BCA8();
  sub_1ABA89B64();
  sub_1ABAD219C(&qword_1EB4D6BB8, &dword_1ABF50DE0);
  sub_1ABA96D00();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v1);
  sub_1ABA7E338();
  sub_1ABA8EA00();
  v2 = sub_1ABD0BB14();
  sub_1ABA8D27C(&type metadata for CustomGraphDiningActivityEvent.CodingKeys, v3, v2);
  sub_1ABA9F0C4();
  v4 = sub_1ABA8C744();
  sub_1ABAD219C(v4, v5);
  sub_1ABA7D99C();
  sub_1ABD1044C(v6);
  v7 = sub_1ABAA19EC();
  sub_1ABAA6564(v7, v8, v9);
  if (!v0)
  {
    sub_1ABAA073C();

    sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
    sub_1ABD09E38();
    v10 = sub_1ABAA2D10();
    sub_1ABAA6564(v10, v11, v12);
    sub_1ABAA1210();

    type metadata accessor for CustomGraphDiningActivityEvent(0);
    sub_1ABA8CB28();
    sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
    sub_1ABA80C14();
    sub_1ABD0A358(v13);
    v14 = sub_1ABA82E78();
    sub_1ABAA6564(v14, v15, v16);
    sub_1ABAB5AF0();
    sub_1ABAD219C(&qword_1EB4D65E0, &qword_1ABF50B50);
    sub_1ABD09F00();
    v17 = sub_1ABAA2D10();
    sub_1ABAA6564(v17, v18, v19);
    sub_1ABAA17C0();
    sub_1ABAD219C(&qword_1EB4D6610, &unk_1ABF50B70);
    sub_1ABD0A060();
    v20 = sub_1ABAA2D10();
    sub_1ABAA6564(v20, v21, v22);
    sub_1ABAA2300(12);
    sub_1ABD1AFDC();

    sub_1ABAD219C(&qword_1EB4D6628, &unk_1ABF50B80);
    sub_1ABD0A110();
    sub_1ABAA1328();

    sub_1ABAA2300(348606);
    sub_1ABD1AFD0();

    v25 = sub_1ABD1ABF4();
    sub_1ABD1AF60(v25, v26, v27);

    sub_1ABAA2300(12);
    sub_1ABD1AFC4();

    sub_1ABAD219C(&qword_1EB4D66F0, &qword_1ABF50BB8);
    sub_1ABD0A808();
    v28 = sub_1ABAA2D10();
    sub_1ABAA6564(v28, v29, v30);
    sub_1ABD1AFA0();

    sub_1ABA98014(348612);
    sub_1ABD1AFB8();

    sub_1ABAD219C(&qword_1EB4D6718, &dword_1ABF50BC8);
    sub_1ABD0A8F4();
    v31 = sub_1ABAA2D10();
    sub_1ABAA6564(v31, v32, v33);
    sub_1ABD1AFA0();

    sub_1ABAA2300(12);
    sub_1ABD1AFE8();

    sub_1ABAD219C(&qword_1EB4D6738, &dword_1ABF50BD0);
    sub_1ABD0AA28();
    v34 = sub_1ABAA2D10();
    sub_1ABAA6564(v34, v35, v36);
  }

  v23 = sub_1ABA89DE4();
  v24(v23);
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void CustomGraphDiningActivityEvent.init(from:)()
{
  sub_1ABA7BCA8();
  sub_1ABA89524();
  sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
  sub_1ABA8CD04();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v7);
  sub_1ABA9F7AC();
  v8 = sub_1ABAD219C(&qword_1EB4D6BD8, &unk_1ABF50DF0);
  sub_1ABA960BC(v8);
  v10 = v9;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v11);
  v12 = sub_1ABAB67BC();
  v13 = type metadata accessor for CustomGraphDiningActivityEvent(v12);
  v14 = sub_1ABAB6924(v13);
  MEMORY[0x1EEE9AC00](v14);
  sub_1ABA7C21C();
  v31 = v15;
  sub_1ABA90D04();
  v16 = sub_1ABD0BB14();
  sub_1ABA9F458(&type metadata for CustomGraphDiningActivityEvent.CodingKeys, v17, v16);
  if (v1)
  {
    sub_1ABA81914();
    sub_1ABA90FE0();
    if (v0)
    {
      sub_1ABAA5D48();

      if (v1)
      {
        goto LABEL_5;
      }
    }

    else if (v1)
    {
LABEL_5:
      sub_1ABA8A78C();
      sub_1ABAB480C(v31 + v26, &qword_1EB4D5F30, &unk_1ABF50B00);
      if ((v6 & 1) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }

    if (!v6)
    {
LABEL_6:
      if (v5)
      {
        goto LABEL_7;
      }

      goto LABEL_15;
    }

LABEL_14:
    sub_1ABD1B370();
    if (v5)
    {
LABEL_7:
      sub_1ABD1B314();
      if ((v4 & 1) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_16;
    }

LABEL_15:
    if (!v4)
    {
LABEL_8:
      if (v3)
      {
        goto LABEL_9;
      }

      goto LABEL_17;
    }

LABEL_16:
    sub_1ABA88814();
    if (v3)
    {
LABEL_9:
      sub_1ABD1B2FC();
      if ((v2 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_18;
    }

LABEL_17:
    if (!v2)
    {
LABEL_10:
      if (!v10)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

LABEL_18:
    sub_1ABAA1044();
    if ((v10 & 1) == 0)
    {
      goto LABEL_20;
    }

LABEL_19:
    sub_1ABAA20FC();
    goto LABEL_20;
  }

  v18 = sub_1ABA7ABE4();
  sub_1ABAD219C(v18, v19);
  sub_1ABAAFAF4();
  sub_1ABA8F54C();
  sub_1ABD1044C(v20);
  v21 = sub_1ABA841C4();
  sub_1ABAA212C(v21, v22, v23, v24, v25);
  sub_1ABA9EAC4();
  sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
  sub_1ABA89A14();
  sub_1ABD0A2D4();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA88ACC();
  sub_1ABAA2660();
  sub_1ABA7F460();
  v28 = sub_1ABD0A358(v27);
  sub_1ABAB54E0(v28);
  sub_1ABA8A800();
  sub_1ABA94EB8();
  sub_1ABAD219C(&qword_1EB4D65E0, &qword_1ABF50B50);
  sub_1ABA9ED60();
  sub_1ABD0A408();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA89318();
  sub_1ABAD219C(&qword_1EB4D6610, &unk_1ABF50B70);
  sub_1ABA9EC10();
  sub_1ABD0A568();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA897A8();
  sub_1ABAD219C(&qword_1EB4D6628, &unk_1ABF50B80);
  sub_1ABD1AFDC();
  sub_1ABD0A618();
  sub_1ABA83974();
  sub_1ABF24E64();
  sub_1ABA7C300();
  sub_1ABAB5D1C();
  sub_1ABF24E64();
  sub_1ABAA314C();
  sub_1ABAD219C(&qword_1EB4D66F0, &qword_1ABF50BB8);
  sub_1ABA893EC();
  sub_1ABD0AB5C();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABAA297C();
  sub_1ABAD219C(&qword_1EB4D6718, &dword_1ABF50BC8);
  sub_1ABD1AFB8();
  sub_1ABD0AC48();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA958A0();
  sub_1ABAD219C(&qword_1EB4D6738, &dword_1ABF50BD0);
  sub_1ABD1AFE8();
  sub_1ABD0ACD4();
  sub_1ABA93610();
  sub_1ABF24E64();
  v29 = sub_1ABA9F94C();
  v30(v29);
  sub_1ABA94AC4();
  sub_1ABD0AD58();
  sub_1ABAA91B0();
LABEL_20:
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void static CustomGraphAttendingAPerformanceActivityEvent.getEntityClass()()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xB58), *(_Records_GDEntityClass_records + 0xB60), *(_Records_GDEntityClass_records + 0xB68), v11);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v8, v10, v9, v11[0], v11[1], v12);
  }

  else
  {
    __break(1u);
  }
}

void CustomGraphAttendingAPerformanceActivityEvent.init<A, B>(with:initializationResources:)()
{
  sub_1ABA7BCA8();
  v1 = sub_1ABA8E9D8();
  v2 = type metadata accessor for CustomGraphAttendingAPerformanceActivityEvent(v1);
  v3 = sub_1ABA7AB80(v2);
  MEMORY[0x1EEE9AC00](v3);
  sub_1ABA90150();
  sub_1ABD1AC8C();
  if (!v0)
  {
    sub_1ABA88A80();
  }

  sub_1ABA8AD50();
  v4 = sub_1ABA7EDF8();
  v5(v4);
  sub_1ABA8869C();
  sub_1ABA7BC90();
}

void sub_1ABCB7DBC(uint64_t a1, __n128 a2)
{
  EntityClass.init(intValue:)(*(a1 + 7), &v23);
  v2 = *(&v23 + 1);
  if (!*(&v23 + 1))
  {
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v8 = sub_1ABF237F4();
    sub_1ABA7AA24(v8, qword_1ED871B40);
    v9 = sub_1ABF237D4();
    v10 = sub_1ABF24674();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1ABA78000, v9, v10, "entityClass is nil in CustomGraphAttendingAPerformanceActivityEvent init", v11, 2u);
      MEMORY[0x1AC5AB8B0](v11, -1, -1);
    }

    sub_1ABB6DA08();
    swift_allocError();
    *v12 = 2;
    *(v12 + 8) = 0u;
    *(v12 + 24) = 0u;
    *(v12 + 33) = 0u;
    *(v12 + 49) = 2;
    goto LABEL_15;
  }

  if (_Records_GDEntityClass_records)
  {
    v3 = v23;
    v4 = v24;
    v5 = v25;
    v6 = v26;
    sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xB58), *(_Records_GDEntityClass_records + 0xB60), *(_Records_GDEntityClass_records + 0xB68), v36);
    v7 = v37 == v4 && v5 == v38;
    if (v7 || (sub_1ABF25054() & 1) != 0)
    {
      sub_1ABA88934(v36);
LABEL_9:
      sub_1ABAA8FA8(v3, v2, v4, v5);
      return;
    }

    *&v23 = v3;
    *(&v23 + 1) = v2;
    v24 = v4;
    v25 = v5;
    LOBYTE(v26) = v6;
    EntityClass.ancestorClassesSet.getter();
    sub_1ABAA6788(v36, v13, v14, v15, v16, v17, v18, v19, v23, SBYTE8(v23), v24, v25, v26, v27, v28, v29, v30, v31, v32, *(&v32 + 1), v33, v34, v35, v36[0], v36[1], v37, v38, v39, v40, v41);
    v21 = v20;

    sub_1ABA88934(v36);
    if (v21)
    {
      goto LABEL_9;
    }

    if (_Records_GDEntityClass_records)
    {
      sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xB58), *(_Records_GDEntityClass_records + 0xB60), *(_Records_GDEntityClass_records + 0xB68), &v32);
      v23 = v32;
      v24 = v33;
      v25 = v34;
      LOBYTE(v26) = v35;
      v27 = v3;
      v28 = v2;
      v29 = v4;
      v30 = v5;
      LOBYTE(v31) = v6;
      sub_1ABC7B1C0();
      swift_allocError();
      sub_1ABC81B08(&v23, v22);
LABEL_15:
      swift_willThrow();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1ABCB8088(uint64_t a1)
{
  v2 = sub_1ABD0BB68();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABCB80C4(uint64_t a1)
{
  v2 = sub_1ABD0BB68();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void CustomGraphAttendingAPerformanceActivityEvent.encode(to:)()
{
  sub_1ABA7BCA8();
  sub_1ABA89B64();
  sub_1ABAD219C(&qword_1EB4D6BE8, &dword_1ABF50DF8);
  sub_1ABA96D00();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v1);
  sub_1ABA7E338();
  sub_1ABA8EA00();
  v2 = sub_1ABD0BB68();
  sub_1ABA8D27C(&type metadata for CustomGraphAttendingAPerformanceActivityEvent.CodingKeys, v3, v2);
  sub_1ABA9F0C4();
  v4 = sub_1ABA8C744();
  sub_1ABAD219C(v4, v5);
  sub_1ABA7D99C();
  sub_1ABD1044C(v6);
  v7 = sub_1ABAA19EC();
  sub_1ABAA6564(v7, v8, v9);
  if (!v0)
  {
    sub_1ABAA073C();

    sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
    sub_1ABD09E38();
    v10 = sub_1ABAA2D10();
    sub_1ABAA6564(v10, v11, v12);
    sub_1ABAA1210();

    type metadata accessor for CustomGraphAttendingAPerformanceActivityEvent(0);
    sub_1ABA8CB28();
    sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
    sub_1ABA80C14();
    sub_1ABD0A358(v13);
    v14 = sub_1ABA82E78();
    sub_1ABAA6564(v14, v15, v16);
    sub_1ABAB5AF0();
    sub_1ABAD219C(&qword_1EB4D65E0, &qword_1ABF50B50);
    sub_1ABD09F00();
    v17 = sub_1ABAA2D10();
    sub_1ABAA6564(v17, v18, v19);
    sub_1ABAA17C0();
    sub_1ABAD219C(&qword_1EB4D6610, &unk_1ABF50B70);
    sub_1ABD0A060();
    v20 = sub_1ABAA2D10();
    sub_1ABAA6564(v20, v21, v22);
    sub_1ABAA2300(12);
    sub_1ABD1AFDC();

    sub_1ABAD219C(&qword_1EB4D6628, &unk_1ABF50B80);
    sub_1ABD0A110();
    sub_1ABAA1328();

    sub_1ABAA2300(348624);
    sub_1ABD1AFD0();

    v25 = sub_1ABD1ABF4();
    sub_1ABD1AF60(v25, v26, v27);

    sub_1ABAA2300(12);
    sub_1ABD1AFC4();

    sub_1ABAD219C(&qword_1EB4D66F0, &qword_1ABF50BB8);
    sub_1ABD0A808();
    v28 = sub_1ABAA2D10();
    sub_1ABAA6564(v28, v29, v30);
    sub_1ABD1AFA0();

    sub_1ABA98014(348630);
    sub_1ABD1AFB8();

    sub_1ABAD219C(&qword_1EB4D6718, &dword_1ABF50BC8);
    sub_1ABD0A8F4();
    v31 = sub_1ABAA2D10();
    sub_1ABAA6564(v31, v32, v33);
    sub_1ABD1AFA0();

    sub_1ABAA2300(12);
    sub_1ABD1AFE8();

    sub_1ABAD219C(&qword_1EB4D6738, &dword_1ABF50BD0);
    sub_1ABD0AA28();
    v34 = sub_1ABAA2D10();
    sub_1ABAA6564(v34, v35, v36);
  }

  v23 = sub_1ABA89DE4();
  v24(v23);
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void CustomGraphAttendingAPerformanceActivityEvent.init(from:)()
{
  sub_1ABA7BCA8();
  sub_1ABA89524();
  sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
  sub_1ABA8CD04();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v7);
  sub_1ABA9F7AC();
  v8 = sub_1ABAD219C(&qword_1EB4D6C08, &unk_1ABF50E08);
  sub_1ABA960BC(v8);
  v10 = v9;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v11);
  v12 = sub_1ABAB67BC();
  v13 = type metadata accessor for CustomGraphAttendingAPerformanceActivityEvent(v12);
  v14 = sub_1ABAB6924(v13);
  MEMORY[0x1EEE9AC00](v14);
  sub_1ABA7C21C();
  v31 = v15;
  sub_1ABA90D04();
  v16 = sub_1ABD0BB68();
  sub_1ABA9F458(&type metadata for CustomGraphAttendingAPerformanceActivityEvent.CodingKeys, v17, v16);
  if (v1)
  {
    sub_1ABA81914();
    sub_1ABA90FE0();
    if (v0)
    {
      sub_1ABAA5D48();

      if (v1)
      {
        goto LABEL_5;
      }
    }

    else if (v1)
    {
LABEL_5:
      sub_1ABA8A78C();
      sub_1ABAB480C(v31 + v26, &qword_1EB4D5F30, &unk_1ABF50B00);
      if ((v6 & 1) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }

    if (!v6)
    {
LABEL_6:
      if (v5)
      {
        goto LABEL_7;
      }

      goto LABEL_15;
    }

LABEL_14:
    sub_1ABD1B370();
    if (v5)
    {
LABEL_7:
      sub_1ABD1B314();
      if ((v4 & 1) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_16;
    }

LABEL_15:
    if (!v4)
    {
LABEL_8:
      if (v3)
      {
        goto LABEL_9;
      }

      goto LABEL_17;
    }

LABEL_16:
    sub_1ABA88814();
    if (v3)
    {
LABEL_9:
      sub_1ABD1B2FC();
      if ((v2 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_18;
    }

LABEL_17:
    if (!v2)
    {
LABEL_10:
      if (!v10)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

LABEL_18:
    sub_1ABAA1044();
    if ((v10 & 1) == 0)
    {
      goto LABEL_20;
    }

LABEL_19:
    sub_1ABAA20FC();
    goto LABEL_20;
  }

  v18 = sub_1ABA7ABE4();
  sub_1ABAD219C(v18, v19);
  sub_1ABAAFAF4();
  sub_1ABA8F54C();
  sub_1ABD1044C(v20);
  v21 = sub_1ABA841C4();
  sub_1ABAA212C(v21, v22, v23, v24, v25);
  sub_1ABA9EAC4();
  sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
  sub_1ABA89A14();
  sub_1ABD0A2D4();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA88ACC();
  sub_1ABAA2660();
  sub_1ABA7F460();
  v28 = sub_1ABD0A358(v27);
  sub_1ABAB54E0(v28);
  sub_1ABA8A800();
  sub_1ABA94EB8();
  sub_1ABAD219C(&qword_1EB4D65E0, &qword_1ABF50B50);
  sub_1ABA9ED60();
  sub_1ABD0A408();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA89318();
  sub_1ABAD219C(&qword_1EB4D6610, &unk_1ABF50B70);
  sub_1ABA9EC10();
  sub_1ABD0A568();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA897A8();
  sub_1ABAD219C(&qword_1EB4D6628, &unk_1ABF50B80);
  sub_1ABD1AFDC();
  sub_1ABD0A618();
  sub_1ABA83974();
  sub_1ABF24E64();
  sub_1ABA7C300();
  sub_1ABAB5D1C();
  sub_1ABF24E64();
  sub_1ABAA314C();
  sub_1ABAD219C(&qword_1EB4D66F0, &qword_1ABF50BB8);
  sub_1ABA893EC();
  sub_1ABD0AB5C();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABAA297C();
  sub_1ABAD219C(&qword_1EB4D6718, &dword_1ABF50BC8);
  sub_1ABD1AFB8();
  sub_1ABD0AC48();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA958A0();
  sub_1ABAD219C(&qword_1EB4D6738, &dword_1ABF50BD0);
  sub_1ABD1AFE8();
  sub_1ABD0ACD4();
  sub_1ABA93610();
  sub_1ABF24E64();
  v29 = sub_1ABA9F94C();
  v30(v29);
  sub_1ABA94AC4();
  sub_1ABD0AD58();
  sub_1ABAA91B0();
LABEL_20:
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void static CustomGraphStationaryActivityEvent.getEntityClass()()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xB70), *(_Records_GDEntityClass_records + 0xB78), *(_Records_GDEntityClass_records + 0xB80), v11);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v8, v10, v9, v11[0], v11[1], v12);
  }

  else
  {
    __break(1u);
  }
}

void CustomGraphStationaryActivityEvent.init<A, B>(with:initializationResources:)()
{
  sub_1ABA7BCA8();
  v1 = sub_1ABA8E9D8();
  v2 = type metadata accessor for CustomGraphStationaryActivityEvent(v1);
  v3 = sub_1ABA7AB80(v2);
  MEMORY[0x1EEE9AC00](v3);
  sub_1ABA90150();
  sub_1ABD1AC8C();
  if (!v0)
  {
    sub_1ABA88A80();
  }

  sub_1ABA8AD50();
  v4 = sub_1ABA7EDF8();
  v5(v4);
  sub_1ABA8869C();
  sub_1ABA7BC90();
}

void sub_1ABCB8D2C(uint64_t a1, __n128 a2)
{
  EntityClass.init(intValue:)(*(a1 + 7), &v23);
  v2 = *(&v23 + 1);
  if (!*(&v23 + 1))
  {
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v8 = sub_1ABF237F4();
    sub_1ABA7AA24(v8, qword_1ED871B40);
    v9 = sub_1ABF237D4();
    v10 = sub_1ABF24674();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1ABA78000, v9, v10, "entityClass is nil in CustomGraphStationaryActivityEvent init", v11, 2u);
      MEMORY[0x1AC5AB8B0](v11, -1, -1);
    }

    sub_1ABB6DA08();
    swift_allocError();
    *v12 = 2;
    *(v12 + 8) = 0u;
    *(v12 + 24) = 0u;
    *(v12 + 33) = 0u;
    *(v12 + 49) = 2;
    goto LABEL_15;
  }

  if (_Records_GDEntityClass_records)
  {
    v3 = v23;
    v4 = v24;
    v5 = v25;
    v6 = v26;
    sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xB70), *(_Records_GDEntityClass_records + 0xB78), *(_Records_GDEntityClass_records + 0xB80), v36);
    v7 = v37 == v4 && v5 == v38;
    if (v7 || (sub_1ABF25054() & 1) != 0)
    {
      sub_1ABA88934(v36);
LABEL_9:
      sub_1ABAA8FA8(v3, v2, v4, v5);
      return;
    }

    *&v23 = v3;
    *(&v23 + 1) = v2;
    v24 = v4;
    v25 = v5;
    LOBYTE(v26) = v6;
    EntityClass.ancestorClassesSet.getter();
    sub_1ABAA6788(v36, v13, v14, v15, v16, v17, v18, v19, v23, SBYTE8(v23), v24, v25, v26, v27, v28, v29, v30, v31, v32, *(&v32 + 1), v33, v34, v35, v36[0], v36[1], v37, v38, v39, v40, v41);
    v21 = v20;

    sub_1ABA88934(v36);
    if (v21)
    {
      goto LABEL_9;
    }

    if (_Records_GDEntityClass_records)
    {
      sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xB70), *(_Records_GDEntityClass_records + 0xB78), *(_Records_GDEntityClass_records + 0xB80), &v32);
      v23 = v32;
      v24 = v33;
      v25 = v34;
      LOBYTE(v26) = v35;
      v27 = v3;
      v28 = v2;
      v29 = v4;
      v30 = v5;
      LOBYTE(v31) = v6;
      sub_1ABC7B1C0();
      swift_allocError();
      sub_1ABC81B08(&v23, v22);
LABEL_15:
      swift_willThrow();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1ABCB8FF8(uint64_t a1)
{
  v2 = sub_1ABD0BBBC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABCB9034(uint64_t a1)
{
  v2 = sub_1ABD0BBBC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void CustomGraphStationaryActivityEvent.encode(to:)()
{
  sub_1ABA7BCA8();
  sub_1ABA89B64();
  sub_1ABAD219C(&qword_1EB4D6C18, &dword_1ABF50E10);
  sub_1ABA96D00();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v1);
  sub_1ABA7E338();
  sub_1ABA8EA00();
  v2 = sub_1ABD0BBBC();
  sub_1ABA8D27C(&type metadata for CustomGraphStationaryActivityEvent.CodingKeys, v3, v2);
  sub_1ABA9F0C4();
  v4 = sub_1ABA8C744();
  sub_1ABAD219C(v4, v5);
  sub_1ABA7D99C();
  sub_1ABD1044C(v6);
  v7 = sub_1ABAA19EC();
  sub_1ABAA6564(v7, v8, v9);
  if (!v0)
  {
    sub_1ABAA073C();

    sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
    sub_1ABD09E38();
    v10 = sub_1ABAA2D10();
    sub_1ABAA6564(v10, v11, v12);
    sub_1ABAA1210();

    type metadata accessor for CustomGraphStationaryActivityEvent(0);
    sub_1ABA8CB28();
    sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
    sub_1ABA80C14();
    sub_1ABD0A358(v13);
    v14 = sub_1ABA82E78();
    sub_1ABAA6564(v14, v15, v16);
    sub_1ABAB5AF0();
    sub_1ABAD219C(&qword_1EB4D65E0, &qword_1ABF50B50);
    sub_1ABD09F00();
    v17 = sub_1ABAA2D10();
    sub_1ABAA6564(v17, v18, v19);
    sub_1ABAA17C0();
    sub_1ABAD219C(&qword_1EB4D6610, &unk_1ABF50B70);
    sub_1ABD0A060();
    v20 = sub_1ABAA2D10();
    sub_1ABAA6564(v20, v21, v22);
    sub_1ABAA2300(12);
    sub_1ABD1AFDC();

    sub_1ABAD219C(&qword_1EB4D6628, &unk_1ABF50B80);
    sub_1ABD0A110();
    sub_1ABAA1328();

    sub_1ABAA2300(348642);
    sub_1ABD1AFD0();

    v25 = sub_1ABD1ABF4();
    sub_1ABD1AF60(v25, v26, v27);

    sub_1ABAA2300(12);
    sub_1ABD1AFC4();

    sub_1ABAD219C(&qword_1EB4D66F0, &qword_1ABF50BB8);
    sub_1ABD0A808();
    v28 = sub_1ABAA2D10();
    sub_1ABAA6564(v28, v29, v30);
    sub_1ABD1AFA0();

    sub_1ABA98014(348648);
    sub_1ABD1AFB8();

    sub_1ABAD219C(&qword_1EB4D6718, &dword_1ABF50BC8);
    sub_1ABD0A8F4();
    v31 = sub_1ABAA2D10();
    sub_1ABAA6564(v31, v32, v33);
    sub_1ABD1AFA0();

    sub_1ABAA2300(12);
    sub_1ABD1AFE8();

    sub_1ABAD219C(&qword_1EB4D6738, &dword_1ABF50BD0);
    sub_1ABD0AA28();
    v34 = sub_1ABAA2D10();
    sub_1ABAA6564(v34, v35, v36);
  }

  v23 = sub_1ABA89DE4();
  v24(v23);
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void CustomGraphStationaryActivityEvent.init(from:)()
{
  sub_1ABA7BCA8();
  sub_1ABA89524();
  sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
  sub_1ABA8CD04();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v7);
  sub_1ABA9F7AC();
  v8 = sub_1ABAD219C(&qword_1EB4D6C38, &unk_1ABF50E20);
  sub_1ABA960BC(v8);
  v10 = v9;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v11);
  v12 = sub_1ABAB67BC();
  v13 = type metadata accessor for CustomGraphStationaryActivityEvent(v12);
  v14 = sub_1ABAB6924(v13);
  MEMORY[0x1EEE9AC00](v14);
  sub_1ABA7C21C();
  v31 = v15;
  sub_1ABA90D04();
  v16 = sub_1ABD0BBBC();
  sub_1ABA9F458(&type metadata for CustomGraphStationaryActivityEvent.CodingKeys, v17, v16);
  if (v1)
  {
    sub_1ABA81914();
    sub_1ABA90FE0();
    if (v0)
    {
      sub_1ABAA5D48();

      if (v1)
      {
        goto LABEL_5;
      }
    }

    else if (v1)
    {
LABEL_5:
      sub_1ABA8A78C();
      sub_1ABAB480C(v31 + v26, &qword_1EB4D5F30, &unk_1ABF50B00);
      if ((v6 & 1) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }

    if (!v6)
    {
LABEL_6:
      if (v5)
      {
        goto LABEL_7;
      }

      goto LABEL_15;
    }

LABEL_14:
    sub_1ABD1B370();
    if (v5)
    {
LABEL_7:
      sub_1ABD1B314();
      if ((v4 & 1) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_16;
    }

LABEL_15:
    if (!v4)
    {
LABEL_8:
      if (v3)
      {
        goto LABEL_9;
      }

      goto LABEL_17;
    }

LABEL_16:
    sub_1ABA88814();
    if (v3)
    {
LABEL_9:
      sub_1ABD1B2FC();
      if ((v2 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_18;
    }

LABEL_17:
    if (!v2)
    {
LABEL_10:
      if (!v10)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

LABEL_18:
    sub_1ABAA1044();
    if ((v10 & 1) == 0)
    {
      goto LABEL_20;
    }

LABEL_19:
    sub_1ABAA20FC();
    goto LABEL_20;
  }

  v18 = sub_1ABA7ABE4();
  sub_1ABAD219C(v18, v19);
  sub_1ABAAFAF4();
  sub_1ABA8F54C();
  sub_1ABD1044C(v20);
  v21 = sub_1ABA841C4();
  sub_1ABAA212C(v21, v22, v23, v24, v25);
  sub_1ABA9EAC4();
  sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
  sub_1ABA89A14();
  sub_1ABD0A2D4();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA88ACC();
  sub_1ABAA2660();
  sub_1ABA7F460();
  v28 = sub_1ABD0A358(v27);
  sub_1ABAB54E0(v28);
  sub_1ABA8A800();
  sub_1ABA94EB8();
  sub_1ABAD219C(&qword_1EB4D65E0, &qword_1ABF50B50);
  sub_1ABA9ED60();
  sub_1ABD0A408();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA89318();
  sub_1ABAD219C(&qword_1EB4D6610, &unk_1ABF50B70);
  sub_1ABA9EC10();
  sub_1ABD0A568();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA897A8();
  sub_1ABAD219C(&qword_1EB4D6628, &unk_1ABF50B80);
  sub_1ABD1AFDC();
  sub_1ABD0A618();
  sub_1ABA83974();
  sub_1ABF24E64();
  sub_1ABA7C300();
  sub_1ABAB5D1C();
  sub_1ABF24E64();
  sub_1ABAA314C();
  sub_1ABAD219C(&qword_1EB4D66F0, &qword_1ABF50BB8);
  sub_1ABA893EC();
  sub_1ABD0AB5C();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABAA297C();
  sub_1ABAD219C(&qword_1EB4D6718, &dword_1ABF50BC8);
  sub_1ABD1AFB8();
  sub_1ABD0AC48();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA958A0();
  sub_1ABAD219C(&qword_1EB4D6738, &dword_1ABF50BD0);
  sub_1ABD1AFE8();
  sub_1ABD0ACD4();
  sub_1ABA93610();
  sub_1ABF24E64();
  v29 = sub_1ABA9F94C();
  v30(v29);
  sub_1ABA94AC4();
  sub_1ABD0AD58();
  sub_1ABAA91B0();
LABEL_20:
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void static CustomGraphLocationVisitActivityEvent.getEntityClass()()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xBE8), *(_Records_GDEntityClass_records + 0xBF0), *(_Records_GDEntityClass_records + 0xBF8), v11);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v8, v10, v9, v11[0], v11[1], v12);
  }

  else
  {
    __break(1u);
  }
}

void CustomGraphLocationVisitActivityEvent.init<A, B>(with:initializationResources:)()
{
  sub_1ABA7BCA8();
  v1 = sub_1ABA8E9D8();
  v2 = type metadata accessor for CustomGraphLocationVisitActivityEvent(v1);
  v3 = sub_1ABA7AB80(v2);
  MEMORY[0x1EEE9AC00](v3);
  sub_1ABA90150();
  sub_1ABD1AC8C();
  if (!v0)
  {
    sub_1ABA88A80();
  }

  sub_1ABA8AD50();
  v4 = sub_1ABA7EDF8();
  v5(v4);
  sub_1ABA8869C();
  sub_1ABA7BC90();
}

void sub_1ABCB9C9C(uint64_t a1, __n128 a2)
{
  EntityClass.init(intValue:)(*(a1 + 7), &v23);
  v2 = *(&v23 + 1);
  if (!*(&v23 + 1))
  {
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v8 = sub_1ABF237F4();
    sub_1ABA7AA24(v8, qword_1ED871B40);
    v9 = sub_1ABF237D4();
    v10 = sub_1ABF24674();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1ABA78000, v9, v10, "entityClass is nil in CustomGraphLocationVisitActivityEvent init", v11, 2u);
      MEMORY[0x1AC5AB8B0](v11, -1, -1);
    }

    sub_1ABB6DA08();
    swift_allocError();
    *v12 = 2;
    *(v12 + 8) = 0u;
    *(v12 + 24) = 0u;
    *(v12 + 33) = 0u;
    *(v12 + 49) = 2;
    goto LABEL_15;
  }

  if (_Records_GDEntityClass_records)
  {
    v3 = v23;
    v4 = v24;
    v5 = v25;
    v6 = v26;
    sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xBE8), *(_Records_GDEntityClass_records + 0xBF0), *(_Records_GDEntityClass_records + 0xBF8), v36);
    v7 = v37 == v4 && v5 == v38;
    if (v7 || (sub_1ABF25054() & 1) != 0)
    {
      sub_1ABA88934(v36);
LABEL_9:
      sub_1ABAA8FA8(v3, v2, v4, v5);
      return;
    }

    *&v23 = v3;
    *(&v23 + 1) = v2;
    v24 = v4;
    v25 = v5;
    LOBYTE(v26) = v6;
    EntityClass.ancestorClassesSet.getter();
    sub_1ABAA6788(v36, v13, v14, v15, v16, v17, v18, v19, v23, SBYTE8(v23), v24, v25, v26, v27, v28, v29, v30, v31, v32, *(&v32 + 1), v33, v34, v35, v36[0], v36[1], v37, v38, v39, v40, v41);
    v21 = v20;

    sub_1ABA88934(v36);
    if (v21)
    {
      goto LABEL_9;
    }

    if (_Records_GDEntityClass_records)
    {
      sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xBE8), *(_Records_GDEntityClass_records + 0xBF0), *(_Records_GDEntityClass_records + 0xBF8), &v32);
      v23 = v32;
      v24 = v33;
      v25 = v34;
      LOBYTE(v26) = v35;
      v27 = v3;
      v28 = v2;
      v29 = v4;
      v30 = v5;
      LOBYTE(v31) = v6;
      sub_1ABC7B1C0();
      swift_allocError();
      sub_1ABC81B08(&v23, v22);
LABEL_15:
      swift_willThrow();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1ABCB9F68(uint64_t a1)
{
  v2 = sub_1ABD0BC10();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABCB9FA4(uint64_t a1)
{
  v2 = sub_1ABD0BC10();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void CustomGraphLocationVisitActivityEvent.encode(to:)()
{
  sub_1ABA7BCA8();
  sub_1ABA89B64();
  sub_1ABAD219C(&qword_1EB4D6C48, &dword_1ABF50E28);
  sub_1ABA96D00();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v1);
  sub_1ABA7E338();
  sub_1ABA8EA00();
  v2 = sub_1ABD0BC10();
  sub_1ABA8D27C(&type metadata for CustomGraphLocationVisitActivityEvent.CodingKeys, v3, v2);
  sub_1ABA9F0C4();
  v4 = sub_1ABA8C744();
  sub_1ABAD219C(v4, v5);
  sub_1ABA7D99C();
  sub_1ABD1044C(v6);
  v7 = sub_1ABAA19EC();
  sub_1ABAA6564(v7, v8, v9);
  if (!v0)
  {
    sub_1ABAA073C();

    sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
    sub_1ABD09E38();
    v10 = sub_1ABAA2D10();
    sub_1ABAA6564(v10, v11, v12);
    sub_1ABAA1210();

    type metadata accessor for CustomGraphLocationVisitActivityEvent(0);
    sub_1ABA8CB28();
    sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
    sub_1ABA80C14();
    sub_1ABD0A358(v13);
    v14 = sub_1ABA82E78();
    sub_1ABAA6564(v14, v15, v16);
    sub_1ABAB5AF0();
    sub_1ABAD219C(&qword_1EB4D65E0, &qword_1ABF50B50);
    sub_1ABD09F00();
    v17 = sub_1ABAA2D10();
    sub_1ABAA6564(v17, v18, v19);
    sub_1ABAA17C0();
    sub_1ABAD219C(&qword_1EB4D6610, &unk_1ABF50B70);
    sub_1ABD0A060();
    v20 = sub_1ABAA2D10();
    sub_1ABAA6564(v20, v21, v22);
    sub_1ABAA2300(12);
    sub_1ABD1AFDC();

    sub_1ABAD219C(&qword_1EB4D6628, &unk_1ABF50B80);
    sub_1ABD0A110();
    sub_1ABAA1328();

    sub_1ABAA2300(348660);
    sub_1ABD1AFD0();

    v25 = sub_1ABD1ABF4();
    sub_1ABD1AF60(v25, v26, v27);

    sub_1ABAA2300(12);
    sub_1ABD1AFC4();

    sub_1ABAD219C(&qword_1EB4D66F0, &qword_1ABF50BB8);
    sub_1ABD0A808();
    v28 = sub_1ABAA2D10();
    sub_1ABAA6564(v28, v29, v30);
    sub_1ABD1AFA0();

    sub_1ABA98014(348666);
    sub_1ABD1AFB8();

    sub_1ABAD219C(&qword_1EB4D6718, &dword_1ABF50BC8);
    sub_1ABD0A8F4();
    v31 = sub_1ABAA2D10();
    sub_1ABAA6564(v31, v32, v33);
    sub_1ABD1AFA0();

    sub_1ABAA2300(12);
    sub_1ABD1AFE8();

    sub_1ABAD219C(&qword_1EB4D6738, &dword_1ABF50BD0);
    sub_1ABD0AA28();
    v34 = sub_1ABAA2D10();
    sub_1ABAA6564(v34, v35, v36);
  }

  v23 = sub_1ABA89DE4();
  v24(v23);
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void CustomGraphLocationVisitActivityEvent.init(from:)()
{
  sub_1ABA7BCA8();
  sub_1ABA89524();
  sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
  sub_1ABA8CD04();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v7);
  sub_1ABA9F7AC();
  v8 = sub_1ABAD219C(&qword_1EB4D6C68, &unk_1ABF50E38);
  sub_1ABA960BC(v8);
  v10 = v9;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v11);
  v12 = sub_1ABAB67BC();
  v13 = type metadata accessor for CustomGraphLocationVisitActivityEvent(v12);
  v14 = sub_1ABAB6924(v13);
  MEMORY[0x1EEE9AC00](v14);
  sub_1ABA7C21C();
  v31 = v15;
  sub_1ABA90D04();
  v16 = sub_1ABD0BC10();
  sub_1ABA9F458(&type metadata for CustomGraphLocationVisitActivityEvent.CodingKeys, v17, v16);
  if (v1)
  {
    sub_1ABA81914();
    sub_1ABA90FE0();
    if (v0)
    {
      sub_1ABAA5D48();

      if (v1)
      {
        goto LABEL_5;
      }
    }

    else if (v1)
    {
LABEL_5:
      sub_1ABA8A78C();
      sub_1ABAB480C(v31 + v26, &qword_1EB4D5F30, &unk_1ABF50B00);
      if ((v6 & 1) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }

    if (!v6)
    {
LABEL_6:
      if (v5)
      {
        goto LABEL_7;
      }

      goto LABEL_15;
    }

LABEL_14:
    sub_1ABD1B370();
    if (v5)
    {
LABEL_7:
      sub_1ABD1B314();
      if ((v4 & 1) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_16;
    }

LABEL_15:
    if (!v4)
    {
LABEL_8:
      if (v3)
      {
        goto LABEL_9;
      }

      goto LABEL_17;
    }

LABEL_16:
    sub_1ABA88814();
    if (v3)
    {
LABEL_9:
      sub_1ABD1B2FC();
      if ((v2 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_18;
    }

LABEL_17:
    if (!v2)
    {
LABEL_10:
      if (!v10)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

LABEL_18:
    sub_1ABAA1044();
    if ((v10 & 1) == 0)
    {
      goto LABEL_20;
    }

LABEL_19:
    sub_1ABAA20FC();
    goto LABEL_20;
  }

  v18 = sub_1ABA7ABE4();
  sub_1ABAD219C(v18, v19);
  sub_1ABAAFAF4();
  sub_1ABA8F54C();
  sub_1ABD1044C(v20);
  v21 = sub_1ABA841C4();
  sub_1ABAA212C(v21, v22, v23, v24, v25);
  sub_1ABA9EAC4();
  sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
  sub_1ABA89A14();
  sub_1ABD0A2D4();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA88ACC();
  sub_1ABAA2660();
  sub_1ABA7F460();
  v28 = sub_1ABD0A358(v27);
  sub_1ABAB54E0(v28);
  sub_1ABA8A800();
  sub_1ABA94EB8();
  sub_1ABAD219C(&qword_1EB4D65E0, &qword_1ABF50B50);
  sub_1ABA9ED60();
  sub_1ABD0A408();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA89318();
  sub_1ABAD219C(&qword_1EB4D6610, &unk_1ABF50B70);
  sub_1ABA9EC10();
  sub_1ABD0A568();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA897A8();
  sub_1ABAD219C(&qword_1EB4D6628, &unk_1ABF50B80);
  sub_1ABD1AFDC();
  sub_1ABD0A618();
  sub_1ABA83974();
  sub_1ABF24E64();
  sub_1ABA7C300();
  sub_1ABAB5D1C();
  sub_1ABF24E64();
  sub_1ABAA314C();
  sub_1ABAD219C(&qword_1EB4D66F0, &qword_1ABF50BB8);
  sub_1ABA893EC();
  sub_1ABD0AB5C();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABAA297C();
  sub_1ABAD219C(&qword_1EB4D6718, &dword_1ABF50BC8);
  sub_1ABD1AFB8();
  sub_1ABD0AC48();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA958A0();
  sub_1ABAD219C(&qword_1EB4D6738, &dword_1ABF50BD0);
  sub_1ABD1AFE8();
  sub_1ABD0ACD4();
  sub_1ABA93610();
  sub_1ABF24E64();
  v29 = sub_1ABA9F94C();
  v30(v29);
  sub_1ABA94AC4();
  sub_1ABD0AD58();
  sub_1ABAA91B0();
LABEL_20:
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void static CustomGraphWalkingActivityEvent.getEntityClass()()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x858), *(_Records_GDEntityClass_records + 0x860), *(_Records_GDEntityClass_records + 0x868), v11);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v8, v10, v9, v11[0], v11[1], v12);
  }

  else
  {
    __break(1u);
  }
}

void CustomGraphWalkingActivityEvent.init<A, B>(with:initializationResources:)()
{
  sub_1ABA7BCA8();
  v1 = sub_1ABA8E9D8();
  v2 = type metadata accessor for CustomGraphWalkingActivityEvent(v1);
  v3 = sub_1ABA7AB80(v2);
  MEMORY[0x1EEE9AC00](v3);
  sub_1ABA90150();
  sub_1ABD1AC8C();
  if (!v0)
  {
    sub_1ABA88A80();
  }

  sub_1ABA8AD50();
  v4 = sub_1ABA7EDF8();
  v5(v4);
  sub_1ABA8869C();
  sub_1ABA7BC90();
}

void sub_1ABCBAC0C(uint64_t a1, __n128 a2)
{
  EntityClass.init(intValue:)(*(a1 + 7), &v23);
  v2 = *(&v23 + 1);
  if (!*(&v23 + 1))
  {
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v8 = sub_1ABF237F4();
    sub_1ABA7AA24(v8, qword_1ED871B40);
    v9 = sub_1ABF237D4();
    v10 = sub_1ABF24674();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1ABA78000, v9, v10, "entityClass is nil in CustomGraphWalkingActivityEvent init", v11, 2u);
      MEMORY[0x1AC5AB8B0](v11, -1, -1);
    }

    sub_1ABB6DA08();
    swift_allocError();
    *v12 = 2;
    *(v12 + 8) = 0u;
    *(v12 + 24) = 0u;
    *(v12 + 33) = 0u;
    *(v12 + 49) = 2;
    goto LABEL_15;
  }

  if (_Records_GDEntityClass_records)
  {
    v3 = v23;
    v4 = v24;
    v5 = v25;
    v6 = v26;
    sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x858), *(_Records_GDEntityClass_records + 0x860), *(_Records_GDEntityClass_records + 0x868), v36);
    v7 = v37 == v4 && v5 == v38;
    if (v7 || (sub_1ABF25054() & 1) != 0)
    {
      sub_1ABA88934(v36);
LABEL_9:
      sub_1ABAA8FA8(v3, v2, v4, v5);
      return;
    }

    *&v23 = v3;
    *(&v23 + 1) = v2;
    v24 = v4;
    v25 = v5;
    LOBYTE(v26) = v6;
    EntityClass.ancestorClassesSet.getter();
    sub_1ABAA6788(v36, v13, v14, v15, v16, v17, v18, v19, v23, SBYTE8(v23), v24, v25, v26, v27, v28, v29, v30, v31, v32, *(&v32 + 1), v33, v34, v35, v36[0], v36[1], v37, v38, v39, v40, v41);
    v21 = v20;

    sub_1ABA88934(v36);
    if (v21)
    {
      goto LABEL_9;
    }

    if (_Records_GDEntityClass_records)
    {
      sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x858), *(_Records_GDEntityClass_records + 0x860), *(_Records_GDEntityClass_records + 0x868), &v32);
      v23 = v32;
      v24 = v33;
      v25 = v34;
      LOBYTE(v26) = v35;
      v27 = v3;
      v28 = v2;
      v29 = v4;
      v30 = v5;
      LOBYTE(v31) = v6;
      sub_1ABC7B1C0();
      swift_allocError();
      sub_1ABC81B08(&v23, v22);
LABEL_15:
      swift_willThrow();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1ABCBAED8(uint64_t a1)
{
  v2 = sub_1ABD0BC64();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABCBAF14(uint64_t a1)
{
  v2 = sub_1ABD0BC64();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void CustomGraphWalkingActivityEvent.encode(to:)()
{
  sub_1ABA7BCA8();
  sub_1ABA89B64();
  sub_1ABAD219C(&qword_1EB4D6C78, &dword_1ABF50E40);
  sub_1ABA96D00();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v1);
  sub_1ABA7E338();
  sub_1ABA8EA00();
  v2 = sub_1ABD0BC64();
  sub_1ABA8D27C(&type metadata for CustomGraphWalkingActivityEvent.CodingKeys, v3, v2);
  sub_1ABA9F0C4();
  v4 = sub_1ABA8C744();
  sub_1ABAD219C(v4, v5);
  sub_1ABA7D99C();
  sub_1ABD1044C(v6);
  v7 = sub_1ABAA19EC();
  sub_1ABAA6564(v7, v8, v9);
  if (!v0)
  {
    sub_1ABAA073C();

    sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
    sub_1ABD09E38();
    v10 = sub_1ABAA2D10();
    sub_1ABAA6564(v10, v11, v12);
    sub_1ABAA1210();

    type metadata accessor for CustomGraphWalkingActivityEvent(0);
    sub_1ABA8CB28();
    sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
    sub_1ABA80C14();
    sub_1ABD0A358(v13);
    v14 = sub_1ABA82E78();
    sub_1ABAA6564(v14, v15, v16);
    sub_1ABAB5AF0();
    sub_1ABAD219C(&qword_1EB4D65E0, &qword_1ABF50B50);
    sub_1ABD09F00();
    v17 = sub_1ABAA2D10();
    sub_1ABAA6564(v17, v18, v19);
    sub_1ABAA17C0();
    sub_1ABAD219C(&qword_1EB4D6610, &unk_1ABF50B70);
    sub_1ABD0A060();
    v20 = sub_1ABAA2D10();
    sub_1ABAA6564(v20, v21, v22);
    sub_1ABAA2300(12);
    sub_1ABD1AFDC();

    sub_1ABAD219C(&qword_1EB4D6628, &unk_1ABF50B80);
    sub_1ABD0A110();
    sub_1ABAA1328();

    sub_1ABAA2300(348678);
    sub_1ABD1AFD0();

    v25 = sub_1ABD1ABF4();
    sub_1ABD1AF60(v25, v26, v27);

    sub_1ABAA2300(12);
    sub_1ABD1AFC4();

    sub_1ABAD219C(&qword_1EB4D66F0, &qword_1ABF50BB8);
    sub_1ABD0A808();
    v28 = sub_1ABAA2D10();
    sub_1ABAA6564(v28, v29, v30);
    sub_1ABD1AFA0();

    sub_1ABA98014(348684);
    sub_1ABD1AFB8();

    sub_1ABAD219C(&qword_1EB4D6718, &dword_1ABF50BC8);
    sub_1ABD0A8F4();
    v31 = sub_1ABAA2D10();
    sub_1ABAA6564(v31, v32, v33);
    sub_1ABD1AFA0();

    sub_1ABAA2300(12);
    sub_1ABD1AFE8();

    sub_1ABAD219C(&qword_1EB4D6738, &dword_1ABF50BD0);
    sub_1ABD0AA28();
    v34 = sub_1ABAA2D10();
    sub_1ABAA6564(v34, v35, v36);
  }

  v23 = sub_1ABA89DE4();
  v24(v23);
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void CustomGraphWalkingActivityEvent.init(from:)()
{
  sub_1ABA7BCA8();
  sub_1ABA89524();
  sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
  sub_1ABA8CD04();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v7);
  sub_1ABA9F7AC();
  v8 = sub_1ABAD219C(&qword_1EB4D6C98, &unk_1ABF50E50);
  sub_1ABA960BC(v8);
  v10 = v9;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v11);
  v12 = sub_1ABAB67BC();
  v13 = type metadata accessor for CustomGraphWalkingActivityEvent(v12);
  v14 = sub_1ABAB6924(v13);
  MEMORY[0x1EEE9AC00](v14);
  sub_1ABA7C21C();
  v31 = v15;
  sub_1ABA90D04();
  v16 = sub_1ABD0BC64();
  sub_1ABA9F458(&type metadata for CustomGraphWalkingActivityEvent.CodingKeys, v17, v16);
  if (v1)
  {
    sub_1ABA81914();
    sub_1ABA90FE0();
    if (v0)
    {
      sub_1ABAA5D48();

      if (v1)
      {
        goto LABEL_5;
      }
    }

    else if (v1)
    {
LABEL_5:
      sub_1ABA8A78C();
      sub_1ABAB480C(v31 + v26, &qword_1EB4D5F30, &unk_1ABF50B00);
      if ((v6 & 1) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }

    if (!v6)
    {
LABEL_6:
      if (v5)
      {
        goto LABEL_7;
      }

      goto LABEL_15;
    }

LABEL_14:
    sub_1ABD1B370();
    if (v5)
    {
LABEL_7:
      sub_1ABD1B314();
      if ((v4 & 1) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_16;
    }

LABEL_15:
    if (!v4)
    {
LABEL_8:
      if (v3)
      {
        goto LABEL_9;
      }

      goto LABEL_17;
    }

LABEL_16:
    sub_1ABA88814();
    if (v3)
    {
LABEL_9:
      sub_1ABD1B2FC();
      if ((v2 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_18;
    }

LABEL_17:
    if (!v2)
    {
LABEL_10:
      if (!v10)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

LABEL_18:
    sub_1ABAA1044();
    if ((v10 & 1) == 0)
    {
      goto LABEL_20;
    }

LABEL_19:
    sub_1ABAA20FC();
    goto LABEL_20;
  }

  v18 = sub_1ABA7ABE4();
  sub_1ABAD219C(v18, v19);
  sub_1ABAAFAF4();
  sub_1ABA8F54C();
  sub_1ABD1044C(v20);
  v21 = sub_1ABA841C4();
  sub_1ABAA212C(v21, v22, v23, v24, v25);
  sub_1ABA9EAC4();
  sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
  sub_1ABA89A14();
  sub_1ABD0A2D4();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA88ACC();
  sub_1ABAA2660();
  sub_1ABA7F460();
  v28 = sub_1ABD0A358(v27);
  sub_1ABAB54E0(v28);
  sub_1ABA8A800();
  sub_1ABA94EB8();
  sub_1ABAD219C(&qword_1EB4D65E0, &qword_1ABF50B50);
  sub_1ABA9ED60();
  sub_1ABD0A408();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA89318();
  sub_1ABAD219C(&qword_1EB4D6610, &unk_1ABF50B70);
  sub_1ABA9EC10();
  sub_1ABD0A568();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA897A8();
  sub_1ABAD219C(&qword_1EB4D6628, &unk_1ABF50B80);
  sub_1ABD1AFDC();
  sub_1ABD0A618();
  sub_1ABA83974();
  sub_1ABF24E64();
  sub_1ABA7C300();
  sub_1ABAB5D1C();
  sub_1ABF24E64();
  sub_1ABAA314C();
  sub_1ABAD219C(&qword_1EB4D66F0, &qword_1ABF50BB8);
  sub_1ABA893EC();
  sub_1ABD0AB5C();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABAA297C();
  sub_1ABAD219C(&qword_1EB4D6718, &dword_1ABF50BC8);
  sub_1ABD1AFB8();
  sub_1ABD0AC48();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA958A0();
  sub_1ABAD219C(&qword_1EB4D6738, &dword_1ABF50BD0);
  sub_1ABD1AFE8();
  sub_1ABD0ACD4();
  sub_1ABA93610();
  sub_1ABF24E64();
  v29 = sub_1ABA9F94C();
  v30(v29);
  sub_1ABA94AC4();
  sub_1ABD0AD58();
  sub_1ABAA91B0();
LABEL_20:
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void static CustomGraphRunningActivityEvent.getEntityClass()()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x870), *(_Records_GDEntityClass_records + 0x878), *(_Records_GDEntityClass_records + 0x880), v11);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v8, v10, v9, v11[0], v11[1], v12);
  }

  else
  {
    __break(1u);
  }
}

void CustomGraphRunningActivityEvent.init<A, B>(with:initializationResources:)()
{
  sub_1ABA7BCA8();
  v1 = sub_1ABA8E9D8();
  v2 = type metadata accessor for CustomGraphRunningActivityEvent(v1);
  v3 = sub_1ABA7AB80(v2);
  MEMORY[0x1EEE9AC00](v3);
  sub_1ABA90150();
  sub_1ABD1AC8C();
  if (!v0)
  {
    sub_1ABA88A80();
  }

  sub_1ABA8AD50();
  v4 = sub_1ABA7EDF8();
  v5(v4);
  sub_1ABA8869C();
  sub_1ABA7BC90();
}

void sub_1ABCBBB7C(uint64_t a1, __n128 a2)
{
  EntityClass.init(intValue:)(*(a1 + 7), &v23);
  v2 = *(&v23 + 1);
  if (!*(&v23 + 1))
  {
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v8 = sub_1ABF237F4();
    sub_1ABA7AA24(v8, qword_1ED871B40);
    v9 = sub_1ABF237D4();
    v10 = sub_1ABF24674();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1ABA78000, v9, v10, "entityClass is nil in CustomGraphRunningActivityEvent init", v11, 2u);
      MEMORY[0x1AC5AB8B0](v11, -1, -1);
    }

    sub_1ABB6DA08();
    swift_allocError();
    *v12 = 2;
    *(v12 + 8) = 0u;
    *(v12 + 24) = 0u;
    *(v12 + 33) = 0u;
    *(v12 + 49) = 2;
    goto LABEL_15;
  }

  if (_Records_GDEntityClass_records)
  {
    v3 = v23;
    v4 = v24;
    v5 = v25;
    v6 = v26;
    sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x870), *(_Records_GDEntityClass_records + 0x878), *(_Records_GDEntityClass_records + 0x880), v36);
    v7 = v37 == v4 && v5 == v38;
    if (v7 || (sub_1ABF25054() & 1) != 0)
    {
      sub_1ABA88934(v36);
LABEL_9:
      sub_1ABAA8FA8(v3, v2, v4, v5);
      return;
    }

    *&v23 = v3;
    *(&v23 + 1) = v2;
    v24 = v4;
    v25 = v5;
    LOBYTE(v26) = v6;
    EntityClass.ancestorClassesSet.getter();
    sub_1ABAA6788(v36, v13, v14, v15, v16, v17, v18, v19, v23, SBYTE8(v23), v24, v25, v26, v27, v28, v29, v30, v31, v32, *(&v32 + 1), v33, v34, v35, v36[0], v36[1], v37, v38, v39, v40, v41);
    v21 = v20;

    sub_1ABA88934(v36);
    if (v21)
    {
      goto LABEL_9;
    }

    if (_Records_GDEntityClass_records)
    {
      sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x870), *(_Records_GDEntityClass_records + 0x878), *(_Records_GDEntityClass_records + 0x880), &v32);
      v23 = v32;
      v24 = v33;
      v25 = v34;
      LOBYTE(v26) = v35;
      v27 = v3;
      v28 = v2;
      v29 = v4;
      v30 = v5;
      LOBYTE(v31) = v6;
      sub_1ABC7B1C0();
      swift_allocError();
      sub_1ABC81B08(&v23, v22);
LABEL_15:
      swift_willThrow();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1ABCBBE48(uint64_t a1)
{
  v2 = sub_1ABD0BCB8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABCBBE84(uint64_t a1)
{
  v2 = sub_1ABD0BCB8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void CustomGraphRunningActivityEvent.encode(to:)()
{
  sub_1ABA7BCA8();
  sub_1ABA89B64();
  sub_1ABAD219C(&qword_1EB4D6CA8, &dword_1ABF50E58);
  sub_1ABA96D00();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v1);
  sub_1ABA7E338();
  sub_1ABA8EA00();
  v2 = sub_1ABD0BCB8();
  sub_1ABA8D27C(&type metadata for CustomGraphRunningActivityEvent.CodingKeys, v3, v2);
  sub_1ABA9F0C4();
  v4 = sub_1ABA8C744();
  sub_1ABAD219C(v4, v5);
  sub_1ABA7D99C();
  sub_1ABD1044C(v6);
  v7 = sub_1ABAA19EC();
  sub_1ABAA6564(v7, v8, v9);
  if (!v0)
  {
    sub_1ABAA073C();

    sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
    sub_1ABD09E38();
    v10 = sub_1ABAA2D10();
    sub_1ABAA6564(v10, v11, v12);
    sub_1ABAA1210();

    type metadata accessor for CustomGraphRunningActivityEvent(0);
    sub_1ABA8CB28();
    sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
    sub_1ABA80C14();
    sub_1ABD0A358(v13);
    v14 = sub_1ABA82E78();
    sub_1ABAA6564(v14, v15, v16);
    sub_1ABAB5AF0();
    sub_1ABAD219C(&qword_1EB4D65E0, &qword_1ABF50B50);
    sub_1ABD09F00();
    v17 = sub_1ABAA2D10();
    sub_1ABAA6564(v17, v18, v19);
    sub_1ABAA17C0();
    sub_1ABAD219C(&qword_1EB4D6610, &unk_1ABF50B70);
    sub_1ABD0A060();
    v20 = sub_1ABAA2D10();
    sub_1ABAA6564(v20, v21, v22);
    sub_1ABAA2300(12);
    sub_1ABD1AFDC();

    sub_1ABAD219C(&qword_1EB4D6628, &unk_1ABF50B80);
    sub_1ABD0A110();
    sub_1ABAA1328();

    sub_1ABAA2300(348696);
    sub_1ABD1AFD0();

    v25 = sub_1ABD1ABF4();
    sub_1ABD1AF60(v25, v26, v27);

    sub_1ABAA2300(12);
    sub_1ABD1AFC4();

    sub_1ABAD219C(&qword_1EB4D66F0, &qword_1ABF50BB8);
    sub_1ABD0A808();
    v28 = sub_1ABAA2D10();
    sub_1ABAA6564(v28, v29, v30);
    sub_1ABD1AFA0();

    sub_1ABA98014(348702);
    sub_1ABD1AFB8();

    sub_1ABAD219C(&qword_1EB4D6718, &dword_1ABF50BC8);
    sub_1ABD0A8F4();
    v31 = sub_1ABAA2D10();
    sub_1ABAA6564(v31, v32, v33);
    sub_1ABD1AFA0();

    sub_1ABAA2300(12);
    sub_1ABD1AFE8();

    sub_1ABAD219C(&qword_1EB4D6738, &dword_1ABF50BD0);
    sub_1ABD0AA28();
    v34 = sub_1ABAA2D10();
    sub_1ABAA6564(v34, v35, v36);
  }

  v23 = sub_1ABA89DE4();
  v24(v23);
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void CustomGraphRunningActivityEvent.init(from:)()
{
  sub_1ABA7BCA8();
  sub_1ABA89524();
  sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
  sub_1ABA8CD04();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v7);
  sub_1ABA9F7AC();
  v8 = sub_1ABAD219C(&qword_1EB4D6CC8, &unk_1ABF50E68);
  sub_1ABA960BC(v8);
  v10 = v9;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v11);
  v12 = sub_1ABAB67BC();
  v13 = type metadata accessor for CustomGraphRunningActivityEvent(v12);
  v14 = sub_1ABAB6924(v13);
  MEMORY[0x1EEE9AC00](v14);
  sub_1ABA7C21C();
  v31 = v15;
  sub_1ABA90D04();
  v16 = sub_1ABD0BCB8();
  sub_1ABA9F458(&type metadata for CustomGraphRunningActivityEvent.CodingKeys, v17, v16);
  if (v1)
  {
    sub_1ABA81914();
    sub_1ABA90FE0();
    if (v0)
    {
      sub_1ABAA5D48();

      if (v1)
      {
        goto LABEL_5;
      }
    }

    else if (v1)
    {
LABEL_5:
      sub_1ABA8A78C();
      sub_1ABAB480C(v31 + v26, &qword_1EB4D5F30, &unk_1ABF50B00);
      if ((v6 & 1) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }

    if (!v6)
    {
LABEL_6:
      if (v5)
      {
        goto LABEL_7;
      }

      goto LABEL_15;
    }

LABEL_14:
    sub_1ABD1B370();
    if (v5)
    {
LABEL_7:
      sub_1ABD1B314();
      if ((v4 & 1) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_16;
    }

LABEL_15:
    if (!v4)
    {
LABEL_8:
      if (v3)
      {
        goto LABEL_9;
      }

      goto LABEL_17;
    }

LABEL_16:
    sub_1ABA88814();
    if (v3)
    {
LABEL_9:
      sub_1ABD1B2FC();
      if ((v2 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_18;
    }

LABEL_17:
    if (!v2)
    {
LABEL_10:
      if (!v10)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

LABEL_18:
    sub_1ABAA1044();
    if ((v10 & 1) == 0)
    {
      goto LABEL_20;
    }

LABEL_19:
    sub_1ABAA20FC();
    goto LABEL_20;
  }

  v18 = sub_1ABA7ABE4();
  sub_1ABAD219C(v18, v19);
  sub_1ABAAFAF4();
  sub_1ABA8F54C();
  sub_1ABD1044C(v20);
  v21 = sub_1ABA841C4();
  sub_1ABAA212C(v21, v22, v23, v24, v25);
  sub_1ABA9EAC4();
  sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
  sub_1ABA89A14();
  sub_1ABD0A2D4();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA88ACC();
  sub_1ABAA2660();
  sub_1ABA7F460();
  v28 = sub_1ABD0A358(v27);
  sub_1ABAB54E0(v28);
  sub_1ABA8A800();
  sub_1ABA94EB8();
  sub_1ABAD219C(&qword_1EB4D65E0, &qword_1ABF50B50);
  sub_1ABA9ED60();
  sub_1ABD0A408();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA89318();
  sub_1ABAD219C(&qword_1EB4D6610, &unk_1ABF50B70);
  sub_1ABA9EC10();
  sub_1ABD0A568();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA897A8();
  sub_1ABAD219C(&qword_1EB4D6628, &unk_1ABF50B80);
  sub_1ABD1AFDC();
  sub_1ABD0A618();
  sub_1ABA83974();
  sub_1ABF24E64();
  sub_1ABA7C300();
  sub_1ABAB5D1C();
  sub_1ABF24E64();
  sub_1ABAA314C();
  sub_1ABAD219C(&qword_1EB4D66F0, &qword_1ABF50BB8);
  sub_1ABA893EC();
  sub_1ABD0AB5C();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABAA297C();
  sub_1ABAD219C(&qword_1EB4D6718, &dword_1ABF50BC8);
  sub_1ABD1AFB8();
  sub_1ABD0AC48();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA958A0();
  sub_1ABAD219C(&qword_1EB4D6738, &dword_1ABF50BD0);
  sub_1ABD1AFE8();
  sub_1ABD0ACD4();
  sub_1ABA93610();
  sub_1ABF24E64();
  v29 = sub_1ABA9F94C();
  v30(v29);
  sub_1ABA94AC4();
  sub_1ABD0AD58();
  sub_1ABAA91B0();
LABEL_20:
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void static CustomGraphBicyclingActivityEvent.getEntityClass()()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x888), *(_Records_GDEntityClass_records + 0x890), *(_Records_GDEntityClass_records + 0x898), v11);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v8, v10, v9, v11[0], v11[1], v12);
  }

  else
  {
    __break(1u);
  }
}

void CustomGraphBicyclingActivityEvent.init<A, B>(with:initializationResources:)()
{
  sub_1ABA7BCA8();
  v1 = sub_1ABA8E9D8();
  v2 = type metadata accessor for CustomGraphBicyclingActivityEvent(v1);
  v3 = sub_1ABA7AB80(v2);
  MEMORY[0x1EEE9AC00](v3);
  sub_1ABA90150();
  sub_1ABD1AC8C();
  if (!v0)
  {
    sub_1ABA88A80();
  }

  sub_1ABA8AD50();
  v4 = sub_1ABA7EDF8();
  v5(v4);
  sub_1ABA8869C();
  sub_1ABA7BC90();
}

void sub_1ABCBCAEC(uint64_t a1, __n128 a2)
{
  EntityClass.init(intValue:)(*(a1 + 7), &v23);
  v2 = *(&v23 + 1);
  if (!*(&v23 + 1))
  {
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v8 = sub_1ABF237F4();
    sub_1ABA7AA24(v8, qword_1ED871B40);
    v9 = sub_1ABF237D4();
    v10 = sub_1ABF24674();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1ABA78000, v9, v10, "entityClass is nil in CustomGraphBicyclingActivityEvent init", v11, 2u);
      MEMORY[0x1AC5AB8B0](v11, -1, -1);
    }

    sub_1ABB6DA08();
    swift_allocError();
    *v12 = 2;
    *(v12 + 8) = 0u;
    *(v12 + 24) = 0u;
    *(v12 + 33) = 0u;
    *(v12 + 49) = 2;
    goto LABEL_15;
  }

  if (_Records_GDEntityClass_records)
  {
    v3 = v23;
    v4 = v24;
    v5 = v25;
    v6 = v26;
    sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x888), *(_Records_GDEntityClass_records + 0x890), *(_Records_GDEntityClass_records + 0x898), v36);
    v7 = v37 == v4 && v5 == v38;
    if (v7 || (sub_1ABF25054() & 1) != 0)
    {
      sub_1ABA88934(v36);
LABEL_9:
      sub_1ABAA8FA8(v3, v2, v4, v5);
      return;
    }

    *&v23 = v3;
    *(&v23 + 1) = v2;
    v24 = v4;
    v25 = v5;
    LOBYTE(v26) = v6;
    EntityClass.ancestorClassesSet.getter();
    sub_1ABAA6788(v36, v13, v14, v15, v16, v17, v18, v19, v23, SBYTE8(v23), v24, v25, v26, v27, v28, v29, v30, v31, v32, *(&v32 + 1), v33, v34, v35, v36[0], v36[1], v37, v38, v39, v40, v41);
    v21 = v20;

    sub_1ABA88934(v36);
    if (v21)
    {
      goto LABEL_9;
    }

    if (_Records_GDEntityClass_records)
    {
      sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x888), *(_Records_GDEntityClass_records + 0x890), *(_Records_GDEntityClass_records + 0x898), &v32);
      v23 = v32;
      v24 = v33;
      v25 = v34;
      LOBYTE(v26) = v35;
      v27 = v3;
      v28 = v2;
      v29 = v4;
      v30 = v5;
      LOBYTE(v31) = v6;
      sub_1ABC7B1C0();
      swift_allocError();
      sub_1ABC81B08(&v23, v22);
LABEL_15:
      swift_willThrow();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1ABCBCDB8(uint64_t a1)
{
  v2 = sub_1ABD0BD0C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABCBCDF4(uint64_t a1)
{
  v2 = sub_1ABD0BD0C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void CustomGraphBicyclingActivityEvent.encode(to:)()
{
  sub_1ABA7BCA8();
  sub_1ABA89B64();
  sub_1ABAD219C(&qword_1EB4D6CD8, &dword_1ABF50E70);
  sub_1ABA96D00();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v1);
  sub_1ABA7E338();
  sub_1ABA8EA00();
  v2 = sub_1ABD0BD0C();
  sub_1ABA8D27C(&type metadata for CustomGraphBicyclingActivityEvent.CodingKeys, v3, v2);
  sub_1ABA9F0C4();
  v4 = sub_1ABA8C744();
  sub_1ABAD219C(v4, v5);
  sub_1ABA7D99C();
  sub_1ABD1044C(v6);
  v7 = sub_1ABAA19EC();
  sub_1ABAA6564(v7, v8, v9);
  if (!v0)
  {
    sub_1ABAA073C();

    sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
    sub_1ABD09E38();
    v10 = sub_1ABAA2D10();
    sub_1ABAA6564(v10, v11, v12);
    sub_1ABAA1210();

    type metadata accessor for CustomGraphBicyclingActivityEvent(0);
    sub_1ABA8CB28();
    sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
    sub_1ABA80C14();
    sub_1ABD0A358(v13);
    v14 = sub_1ABA82E78();
    sub_1ABAA6564(v14, v15, v16);
    sub_1ABAB5AF0();
    sub_1ABAD219C(&qword_1EB4D65E0, &qword_1ABF50B50);
    sub_1ABD09F00();
    v17 = sub_1ABAA2D10();
    sub_1ABAA6564(v17, v18, v19);
    sub_1ABAA17C0();
    sub_1ABAD219C(&qword_1EB4D6610, &unk_1ABF50B70);
    sub_1ABD0A060();
    v20 = sub_1ABAA2D10();
    sub_1ABAA6564(v20, v21, v22);
    sub_1ABAA2300(12);
    sub_1ABD1AFDC();

    sub_1ABAD219C(&qword_1EB4D6628, &unk_1ABF50B80);
    sub_1ABD0A110();
    sub_1ABAA1328();

    sub_1ABAA2300(348714);
    sub_1ABD1AFD0();

    v25 = sub_1ABD1ABF4();
    sub_1ABD1AF60(v25, v26, v27);

    sub_1ABAA2300(12);
    sub_1ABD1AFC4();

    sub_1ABAD219C(&qword_1EB4D66F0, &qword_1ABF50BB8);
    sub_1ABD0A808();
    v28 = sub_1ABAA2D10();
    sub_1ABAA6564(v28, v29, v30);
    sub_1ABD1AFA0();

    sub_1ABA98014(348720);
    sub_1ABD1AFB8();

    sub_1ABAD219C(&qword_1EB4D6718, &dword_1ABF50BC8);
    sub_1ABD0A8F4();
    v31 = sub_1ABAA2D10();
    sub_1ABAA6564(v31, v32, v33);
    sub_1ABD1AFA0();

    sub_1ABAA2300(12);
    sub_1ABD1AFE8();

    sub_1ABAD219C(&qword_1EB4D6738, &dword_1ABF50BD0);
    sub_1ABD0AA28();
    v34 = sub_1ABAA2D10();
    sub_1ABAA6564(v34, v35, v36);
  }

  v23 = sub_1ABA89DE4();
  v24(v23);
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void CustomGraphBicyclingActivityEvent.init(from:)()
{
  sub_1ABA7BCA8();
  sub_1ABA89524();
  sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
  sub_1ABA8CD04();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v7);
  sub_1ABA9F7AC();
  v8 = sub_1ABAD219C(&qword_1EB4D6CF8, &unk_1ABF50E80);
  sub_1ABA960BC(v8);
  v10 = v9;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v11);
  v12 = sub_1ABAB67BC();
  v13 = type metadata accessor for CustomGraphBicyclingActivityEvent(v12);
  v14 = sub_1ABAB6924(v13);
  MEMORY[0x1EEE9AC00](v14);
  sub_1ABA7C21C();
  v31 = v15;
  sub_1ABA90D04();
  v16 = sub_1ABD0BD0C();
  sub_1ABA9F458(&type metadata for CustomGraphBicyclingActivityEvent.CodingKeys, v17, v16);
  if (v1)
  {
    sub_1ABA81914();
    sub_1ABA90FE0();
    if (v0)
    {
      sub_1ABAA5D48();

      if (v1)
      {
        goto LABEL_5;
      }
    }

    else if (v1)
    {
LABEL_5:
      sub_1ABA8A78C();
      sub_1ABAB480C(v31 + v26, &qword_1EB4D5F30, &unk_1ABF50B00);
      if ((v6 & 1) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }

    if (!v6)
    {
LABEL_6:
      if (v5)
      {
        goto LABEL_7;
      }

      goto LABEL_15;
    }

LABEL_14:
    sub_1ABD1B370();
    if (v5)
    {
LABEL_7:
      sub_1ABD1B314();
      if ((v4 & 1) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_16;
    }

LABEL_15:
    if (!v4)
    {
LABEL_8:
      if (v3)
      {
        goto LABEL_9;
      }

      goto LABEL_17;
    }

LABEL_16:
    sub_1ABA88814();
    if (v3)
    {
LABEL_9:
      sub_1ABD1B2FC();
      if ((v2 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_18;
    }

LABEL_17:
    if (!v2)
    {
LABEL_10:
      if (!v10)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

LABEL_18:
    sub_1ABAA1044();
    if ((v10 & 1) == 0)
    {
      goto LABEL_20;
    }

LABEL_19:
    sub_1ABAA20FC();
    goto LABEL_20;
  }

  v18 = sub_1ABA7ABE4();
  sub_1ABAD219C(v18, v19);
  sub_1ABAAFAF4();
  sub_1ABA8F54C();
  sub_1ABD1044C(v20);
  v21 = sub_1ABA841C4();
  sub_1ABAA212C(v21, v22, v23, v24, v25);
  sub_1ABA9EAC4();
  sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
  sub_1ABA89A14();
  sub_1ABD0A2D4();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA88ACC();
  sub_1ABAA2660();
  sub_1ABA7F460();
  v28 = sub_1ABD0A358(v27);
  sub_1ABAB54E0(v28);
  sub_1ABA8A800();
  sub_1ABA94EB8();
  sub_1ABAD219C(&qword_1EB4D65E0, &qword_1ABF50B50);
  sub_1ABA9ED60();
  sub_1ABD0A408();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA89318();
  sub_1ABAD219C(&qword_1EB4D6610, &unk_1ABF50B70);
  sub_1ABA9EC10();
  sub_1ABD0A568();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA897A8();
  sub_1ABAD219C(&qword_1EB4D6628, &unk_1ABF50B80);
  sub_1ABD1AFDC();
  sub_1ABD0A618();
  sub_1ABA83974();
  sub_1ABF24E64();
  sub_1ABA7C300();
  sub_1ABAB5D1C();
  sub_1ABF24E64();
  sub_1ABAA314C();
  sub_1ABAD219C(&qword_1EB4D66F0, &qword_1ABF50BB8);
  sub_1ABA893EC();
  sub_1ABD0AB5C();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABAA297C();
  sub_1ABAD219C(&qword_1EB4D6718, &dword_1ABF50BC8);
  sub_1ABD1AFB8();
  sub_1ABD0AC48();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA958A0();
  sub_1ABAD219C(&qword_1EB4D6738, &dword_1ABF50BD0);
  sub_1ABD1AFE8();
  sub_1ABD0ACD4();
  sub_1ABA93610();
  sub_1ABF24E64();
  v29 = sub_1ABA9F94C();
  v30(v29);
  sub_1ABA94AC4();
  sub_1ABD0AD58();
  sub_1ABAA91B0();
LABEL_20:
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void static CustomGraphHikingActivityEvent.getEntityClass()()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x8A0), *(_Records_GDEntityClass_records + 0x8A8), *(_Records_GDEntityClass_records + 0x8B0), v11);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v8, v10, v9, v11[0], v11[1], v12);
  }

  else
  {
    __break(1u);
  }
}

void CustomGraphHikingActivityEvent.init<A, B>(with:initializationResources:)()
{
  sub_1ABA7BCA8();
  v1 = sub_1ABA8E9D8();
  v2 = type metadata accessor for CustomGraphHikingActivityEvent(v1);
  v3 = sub_1ABA7AB80(v2);
  MEMORY[0x1EEE9AC00](v3);
  sub_1ABA90150();
  sub_1ABD1AC8C();
  if (!v0)
  {
    sub_1ABA88A80();
  }

  sub_1ABA8AD50();
  v4 = sub_1ABA7EDF8();
  v5(v4);
  sub_1ABA8869C();
  sub_1ABA7BC90();
}

void sub_1ABCBDA5C(uint64_t a1, __n128 a2)
{
  EntityClass.init(intValue:)(*(a1 + 7), &v23);
  v2 = *(&v23 + 1);
  if (!*(&v23 + 1))
  {
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v8 = sub_1ABF237F4();
    sub_1ABA7AA24(v8, qword_1ED871B40);
    v9 = sub_1ABF237D4();
    v10 = sub_1ABF24674();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1ABA78000, v9, v10, "entityClass is nil in CustomGraphHikingActivityEvent init", v11, 2u);
      MEMORY[0x1AC5AB8B0](v11, -1, -1);
    }

    sub_1ABB6DA08();
    swift_allocError();
    *v12 = 2;
    *(v12 + 8) = 0u;
    *(v12 + 24) = 0u;
    *(v12 + 33) = 0u;
    *(v12 + 49) = 2;
    goto LABEL_15;
  }

  if (_Records_GDEntityClass_records)
  {
    v3 = v23;
    v4 = v24;
    v5 = v25;
    v6 = v26;
    sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x8A0), *(_Records_GDEntityClass_records + 0x8A8), *(_Records_GDEntityClass_records + 0x8B0), v36);
    v7 = v37 == v4 && v5 == v38;
    if (v7 || (sub_1ABF25054() & 1) != 0)
    {
      sub_1ABA88934(v36);
LABEL_9:
      sub_1ABAA8FA8(v3, v2, v4, v5);
      return;
    }

    *&v23 = v3;
    *(&v23 + 1) = v2;
    v24 = v4;
    v25 = v5;
    LOBYTE(v26) = v6;
    EntityClass.ancestorClassesSet.getter();
    sub_1ABAA6788(v36, v13, v14, v15, v16, v17, v18, v19, v23, SBYTE8(v23), v24, v25, v26, v27, v28, v29, v30, v31, v32, *(&v32 + 1), v33, v34, v35, v36[0], v36[1], v37, v38, v39, v40, v41);
    v21 = v20;

    sub_1ABA88934(v36);
    if (v21)
    {
      goto LABEL_9;
    }

    if (_Records_GDEntityClass_records)
    {
      sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x8A0), *(_Records_GDEntityClass_records + 0x8A8), *(_Records_GDEntityClass_records + 0x8B0), &v32);
      v23 = v32;
      v24 = v33;
      v25 = v34;
      LOBYTE(v26) = v35;
      v27 = v3;
      v28 = v2;
      v29 = v4;
      v30 = v5;
      LOBYTE(v31) = v6;
      sub_1ABC7B1C0();
      swift_allocError();
      sub_1ABC81B08(&v23, v22);
LABEL_15:
      swift_willThrow();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1ABCBDD28(uint64_t a1)
{
  v2 = sub_1ABD0BD60();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABCBDD64(uint64_t a1)
{
  v2 = sub_1ABD0BD60();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void CustomGraphHikingActivityEvent.encode(to:)()
{
  sub_1ABA7BCA8();
  sub_1ABA89B64();
  sub_1ABAD219C(&qword_1EB4D6D08, &dword_1ABF50E88);
  sub_1ABA96D00();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v1);
  sub_1ABA7E338();
  sub_1ABA8EA00();
  v2 = sub_1ABD0BD60();
  sub_1ABA8D27C(&type metadata for CustomGraphHikingActivityEvent.CodingKeys, v3, v2);
  sub_1ABA9F0C4();
  v4 = sub_1ABA8C744();
  sub_1ABAD219C(v4, v5);
  sub_1ABA7D99C();
  sub_1ABD1044C(v6);
  v7 = sub_1ABAA19EC();
  sub_1ABAA6564(v7, v8, v9);
  if (!v0)
  {
    sub_1ABAA073C();

    sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
    sub_1ABD09E38();
    v10 = sub_1ABAA2D10();
    sub_1ABAA6564(v10, v11, v12);
    sub_1ABAA1210();

    type metadata accessor for CustomGraphHikingActivityEvent(0);
    sub_1ABA8CB28();
    sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
    sub_1ABA80C14();
    sub_1ABD0A358(v13);
    v14 = sub_1ABA82E78();
    sub_1ABAA6564(v14, v15, v16);
    sub_1ABAB5AF0();
    sub_1ABAD219C(&qword_1EB4D65E0, &qword_1ABF50B50);
    sub_1ABD09F00();
    v17 = sub_1ABAA2D10();
    sub_1ABAA6564(v17, v18, v19);
    sub_1ABAA17C0();
    sub_1ABAD219C(&qword_1EB4D6610, &unk_1ABF50B70);
    sub_1ABD0A060();
    v20 = sub_1ABAA2D10();
    sub_1ABAA6564(v20, v21, v22);
    sub_1ABAA2300(12);
    sub_1ABD1AFDC();

    sub_1ABAD219C(&qword_1EB4D6628, &unk_1ABF50B80);
    sub_1ABD0A110();
    sub_1ABAA1328();

    sub_1ABAA2300(348732);
    sub_1ABD1AFD0();

    v25 = sub_1ABD1ABF4();
    sub_1ABD1AF60(v25, v26, v27);

    sub_1ABAA2300(12);
    sub_1ABD1AFC4();

    sub_1ABAD219C(&qword_1EB4D66F0, &qword_1ABF50BB8);
    sub_1ABD0A808();
    v28 = sub_1ABAA2D10();
    sub_1ABAA6564(v28, v29, v30);
    sub_1ABD1AFA0();

    sub_1ABA98014(348738);
    sub_1ABD1AFB8();

    sub_1ABAD219C(&qword_1EB4D6718, &dword_1ABF50BC8);
    sub_1ABD0A8F4();
    v31 = sub_1ABAA2D10();
    sub_1ABAA6564(v31, v32, v33);
    sub_1ABD1AFA0();

    sub_1ABAA2300(12);
    sub_1ABD1AFE8();

    sub_1ABAD219C(&qword_1EB4D6738, &dword_1ABF50BD0);
    sub_1ABD0AA28();
    v34 = sub_1ABAA2D10();
    sub_1ABAA6564(v34, v35, v36);
  }

  v23 = sub_1ABA89DE4();
  v24(v23);
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void CustomGraphHikingActivityEvent.init(from:)()
{
  sub_1ABA7BCA8();
  sub_1ABA89524();
  sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
  sub_1ABA8CD04();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v7);
  sub_1ABA9F7AC();
  v8 = sub_1ABAD219C(&qword_1EB4D6D28, &unk_1ABF50E98);
  sub_1ABA960BC(v8);
  v10 = v9;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v11);
  v12 = sub_1ABAB67BC();
  v13 = type metadata accessor for CustomGraphHikingActivityEvent(v12);
  v14 = sub_1ABAB6924(v13);
  MEMORY[0x1EEE9AC00](v14);
  sub_1ABA7C21C();
  v31 = v15;
  sub_1ABA90D04();
  v16 = sub_1ABD0BD60();
  sub_1ABA9F458(&type metadata for CustomGraphHikingActivityEvent.CodingKeys, v17, v16);
  if (v1)
  {
    sub_1ABA81914();
    sub_1ABA90FE0();
    if (v0)
    {
      sub_1ABAA5D48();

      if (v1)
      {
        goto LABEL_5;
      }
    }

    else if (v1)
    {
LABEL_5:
      sub_1ABA8A78C();
      sub_1ABAB480C(v31 + v26, &qword_1EB4D5F30, &unk_1ABF50B00);
      if ((v6 & 1) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }

    if (!v6)
    {
LABEL_6:
      if (v5)
      {
        goto LABEL_7;
      }

      goto LABEL_15;
    }

LABEL_14:
    sub_1ABD1B370();
    if (v5)
    {
LABEL_7:
      sub_1ABD1B314();
      if ((v4 & 1) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_16;
    }

LABEL_15:
    if (!v4)
    {
LABEL_8:
      if (v3)
      {
        goto LABEL_9;
      }

      goto LABEL_17;
    }

LABEL_16:
    sub_1ABA88814();
    if (v3)
    {
LABEL_9:
      sub_1ABD1B2FC();
      if ((v2 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_18;
    }

LABEL_17:
    if (!v2)
    {
LABEL_10:
      if (!v10)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

LABEL_18:
    sub_1ABAA1044();
    if ((v10 & 1) == 0)
    {
      goto LABEL_20;
    }

LABEL_19:
    sub_1ABAA20FC();
    goto LABEL_20;
  }

  v18 = sub_1ABA7ABE4();
  sub_1ABAD219C(v18, v19);
  sub_1ABAAFAF4();
  sub_1ABA8F54C();
  sub_1ABD1044C(v20);
  v21 = sub_1ABA841C4();
  sub_1ABAA212C(v21, v22, v23, v24, v25);
  sub_1ABA9EAC4();
  sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
  sub_1ABA89A14();
  sub_1ABD0A2D4();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA88ACC();
  sub_1ABAA2660();
  sub_1ABA7F460();
  v28 = sub_1ABD0A358(v27);
  sub_1ABAB54E0(v28);
  sub_1ABA8A800();
  sub_1ABA94EB8();
  sub_1ABAD219C(&qword_1EB4D65E0, &qword_1ABF50B50);
  sub_1ABA9ED60();
  sub_1ABD0A408();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA89318();
  sub_1ABAD219C(&qword_1EB4D6610, &unk_1ABF50B70);
  sub_1ABA9EC10();
  sub_1ABD0A568();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA897A8();
  sub_1ABAD219C(&qword_1EB4D6628, &unk_1ABF50B80);
  sub_1ABD1AFDC();
  sub_1ABD0A618();
  sub_1ABA83974();
  sub_1ABF24E64();
  sub_1ABA7C300();
  sub_1ABAB5D1C();
  sub_1ABF24E64();
  sub_1ABAA314C();
  sub_1ABAD219C(&qword_1EB4D66F0, &qword_1ABF50BB8);
  sub_1ABA893EC();
  sub_1ABD0AB5C();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABAA297C();
  sub_1ABAD219C(&qword_1EB4D6718, &dword_1ABF50BC8);
  sub_1ABD1AFB8();
  sub_1ABD0AC48();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA958A0();
  sub_1ABAD219C(&qword_1EB4D6738, &dword_1ABF50BD0);
  sub_1ABD1AFE8();
  sub_1ABD0ACD4();
  sub_1ABA93610();
  sub_1ABF24E64();
  v29 = sub_1ABA9F94C();
  v30(v29);
  sub_1ABA94AC4();
  sub_1ABD0AD58();
  sub_1ABAA91B0();
LABEL_20:
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void static CustomGraphOnThePhoneActivityEvent.getEntityClass()()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x828), *(_Records_GDEntityClass_records + 0x830), *(_Records_GDEntityClass_records + 0x838), v11);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v8, v10, v9, v11[0], v11[1], v12);
  }

  else
  {
    __break(1u);
  }
}

void CustomGraphOnThePhoneActivityEvent.init<A, B>(with:initializationResources:)()
{
  sub_1ABA7BCA8();
  v1 = sub_1ABA8E9D8();
  v2 = type metadata accessor for CustomGraphOnThePhoneActivityEvent(v1);
  v3 = sub_1ABA7AB80(v2);
  MEMORY[0x1EEE9AC00](v3);
  sub_1ABA90150();
  sub_1ABD1AC8C();
  if (!v0)
  {
    sub_1ABA88A80();
  }

  sub_1ABA8AD50();
  v4 = sub_1ABA7EDF8();
  v5(v4);
  sub_1ABA8869C();
  sub_1ABA7BC90();
}

void sub_1ABCBE9CC(uint64_t a1, __n128 a2)
{
  EntityClass.init(intValue:)(*(a1 + 7), &v23);
  v2 = *(&v23 + 1);
  if (!*(&v23 + 1))
  {
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v8 = sub_1ABF237F4();
    sub_1ABA7AA24(v8, qword_1ED871B40);
    v9 = sub_1ABF237D4();
    v10 = sub_1ABF24674();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1ABA78000, v9, v10, "entityClass is nil in CustomGraphOnThePhoneActivityEvent init", v11, 2u);
      MEMORY[0x1AC5AB8B0](v11, -1, -1);
    }

    sub_1ABB6DA08();
    swift_allocError();
    *v12 = 2;
    *(v12 + 8) = 0u;
    *(v12 + 24) = 0u;
    *(v12 + 33) = 0u;
    *(v12 + 49) = 2;
    goto LABEL_15;
  }

  if (_Records_GDEntityClass_records)
  {
    v3 = v23;
    v4 = v24;
    v5 = v25;
    v6 = v26;
    sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x828), *(_Records_GDEntityClass_records + 0x830), *(_Records_GDEntityClass_records + 0x838), v36);
    v7 = v37 == v4 && v5 == v38;
    if (v7 || (sub_1ABF25054() & 1) != 0)
    {
      sub_1ABA88934(v36);
LABEL_9:
      sub_1ABAA8FA8(v3, v2, v4, v5);
      return;
    }

    *&v23 = v3;
    *(&v23 + 1) = v2;
    v24 = v4;
    v25 = v5;
    LOBYTE(v26) = v6;
    EntityClass.ancestorClassesSet.getter();
    sub_1ABAA6788(v36, v13, v14, v15, v16, v17, v18, v19, v23, SBYTE8(v23), v24, v25, v26, v27, v28, v29, v30, v31, v32, *(&v32 + 1), v33, v34, v35, v36[0], v36[1], v37, v38, v39, v40, v41);
    v21 = v20;

    sub_1ABA88934(v36);
    if (v21)
    {
      goto LABEL_9;
    }

    if (_Records_GDEntityClass_records)
    {
      sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x828), *(_Records_GDEntityClass_records + 0x830), *(_Records_GDEntityClass_records + 0x838), &v32);
      v23 = v32;
      v24 = v33;
      v25 = v34;
      LOBYTE(v26) = v35;
      v27 = v3;
      v28 = v2;
      v29 = v4;
      v30 = v5;
      LOBYTE(v31) = v6;
      sub_1ABC7B1C0();
      swift_allocError();
      sub_1ABC81B08(&v23, v22);
LABEL_15:
      swift_willThrow();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1ABCBEC98(uint64_t a1)
{
  v2 = sub_1ABD0BDB4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABCBECD4(uint64_t a1)
{
  v2 = sub_1ABD0BDB4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void CustomGraphOnThePhoneActivityEvent.encode(to:)()
{
  sub_1ABA7BCA8();
  sub_1ABA89B64();
  sub_1ABAD219C(&qword_1EB4D6D38, &dword_1ABF50EA0);
  sub_1ABA96D00();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v1);
  sub_1ABA7E338();
  sub_1ABA8EA00();
  v2 = sub_1ABD0BDB4();
  sub_1ABA8D27C(&type metadata for CustomGraphOnThePhoneActivityEvent.CodingKeys, v3, v2);
  sub_1ABA9F0C4();
  v4 = sub_1ABA8C744();
  sub_1ABAD219C(v4, v5);
  sub_1ABA7D99C();
  sub_1ABD1044C(v6);
  v7 = sub_1ABAA19EC();
  sub_1ABAA6564(v7, v8, v9);
  if (!v0)
  {
    sub_1ABAA073C();

    sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
    sub_1ABD09E38();
    v10 = sub_1ABAA2D10();
    sub_1ABAA6564(v10, v11, v12);
    sub_1ABAA1210();

    type metadata accessor for CustomGraphOnThePhoneActivityEvent(0);
    sub_1ABA8CB28();
    sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
    sub_1ABA80C14();
    sub_1ABD0A358(v13);
    v14 = sub_1ABA82E78();
    sub_1ABAA6564(v14, v15, v16);
    sub_1ABAB5AF0();
    sub_1ABAD219C(&qword_1EB4D65E0, &qword_1ABF50B50);
    sub_1ABD09F00();
    v17 = sub_1ABAA2D10();
    sub_1ABAA6564(v17, v18, v19);
    sub_1ABAA17C0();
    sub_1ABAD219C(&qword_1EB4D6610, &unk_1ABF50B70);
    sub_1ABD0A060();
    v20 = sub_1ABAA2D10();
    sub_1ABAA6564(v20, v21, v22);
    sub_1ABAA2300(12);
    sub_1ABD1AFDC();

    sub_1ABAD219C(&qword_1EB4D6628, &unk_1ABF50B80);
    sub_1ABD0A110();
    sub_1ABAA1328();

    sub_1ABAA2300(348750);
    sub_1ABD1AFD0();

    v25 = sub_1ABD1ABF4();
    sub_1ABD1AF60(v25, v26, v27);

    sub_1ABAA2300(12);
    sub_1ABD1AFC4();

    sub_1ABAD219C(&qword_1EB4D66F0, &qword_1ABF50BB8);
    sub_1ABD0A808();
    v28 = sub_1ABAA2D10();
    sub_1ABAA6564(v28, v29, v30);
    sub_1ABD1AFA0();

    sub_1ABA98014(348756);
    sub_1ABD1AFB8();

    sub_1ABAD219C(&qword_1EB4D6718, &dword_1ABF50BC8);
    sub_1ABD0A8F4();
    v31 = sub_1ABAA2D10();
    sub_1ABAA6564(v31, v32, v33);
    sub_1ABD1AFA0();

    sub_1ABAA2300(12);
    sub_1ABD1AFE8();

    sub_1ABAD219C(&qword_1EB4D6738, &dword_1ABF50BD0);
    sub_1ABD0AA28();
    v34 = sub_1ABAA2D10();
    sub_1ABAA6564(v34, v35, v36);
  }

  v23 = sub_1ABA89DE4();
  v24(v23);
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void CustomGraphOnThePhoneActivityEvent.init(from:)()
{
  sub_1ABA7BCA8();
  sub_1ABA89524();
  sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
  sub_1ABA8CD04();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v7);
  sub_1ABA9F7AC();
  v8 = sub_1ABAD219C(&qword_1EB4D6D58, &unk_1ABF50EB0);
  sub_1ABA960BC(v8);
  v10 = v9;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v11);
  v12 = sub_1ABAB67BC();
  v13 = type metadata accessor for CustomGraphOnThePhoneActivityEvent(v12);
  v14 = sub_1ABAB6924(v13);
  MEMORY[0x1EEE9AC00](v14);
  sub_1ABA7C21C();
  v31 = v15;
  sub_1ABA90D04();
  v16 = sub_1ABD0BDB4();
  sub_1ABA9F458(&type metadata for CustomGraphOnThePhoneActivityEvent.CodingKeys, v17, v16);
  if (v1)
  {
    sub_1ABA81914();
    sub_1ABA90FE0();
    if (v0)
    {
      sub_1ABAA5D48();

      if (v1)
      {
        goto LABEL_5;
      }
    }

    else if (v1)
    {
LABEL_5:
      sub_1ABA8A78C();
      sub_1ABAB480C(v31 + v26, &qword_1EB4D5F30, &unk_1ABF50B00);
      if ((v6 & 1) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }

    if (!v6)
    {
LABEL_6:
      if (v5)
      {
        goto LABEL_7;
      }

      goto LABEL_15;
    }

LABEL_14:
    sub_1ABD1B370();
    if (v5)
    {
LABEL_7:
      sub_1ABD1B314();
      if ((v4 & 1) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_16;
    }

LABEL_15:
    if (!v4)
    {
LABEL_8:
      if (v3)
      {
        goto LABEL_9;
      }

      goto LABEL_17;
    }

LABEL_16:
    sub_1ABA88814();
    if (v3)
    {
LABEL_9:
      sub_1ABD1B2FC();
      if ((v2 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_18;
    }

LABEL_17:
    if (!v2)
    {
LABEL_10:
      if (!v10)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

LABEL_18:
    sub_1ABAA1044();
    if ((v10 & 1) == 0)
    {
      goto LABEL_20;
    }

LABEL_19:
    sub_1ABAA20FC();
    goto LABEL_20;
  }

  v18 = sub_1ABA7ABE4();
  sub_1ABAD219C(v18, v19);
  sub_1ABAAFAF4();
  sub_1ABA8F54C();
  sub_1ABD1044C(v20);
  v21 = sub_1ABA841C4();
  sub_1ABAA212C(v21, v22, v23, v24, v25);
  sub_1ABA9EAC4();
  sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
  sub_1ABA89A14();
  sub_1ABD0A2D4();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA88ACC();
  sub_1ABAA2660();
  sub_1ABA7F460();
  v28 = sub_1ABD0A358(v27);
  sub_1ABAB54E0(v28);
  sub_1ABA8A800();
  sub_1ABA94EB8();
  sub_1ABAD219C(&qword_1EB4D65E0, &qword_1ABF50B50);
  sub_1ABA9ED60();
  sub_1ABD0A408();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA89318();
  sub_1ABAD219C(&qword_1EB4D6610, &unk_1ABF50B70);
  sub_1ABA9EC10();
  sub_1ABD0A568();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA897A8();
  sub_1ABAD219C(&qword_1EB4D6628, &unk_1ABF50B80);
  sub_1ABD1AFDC();
  sub_1ABD0A618();
  sub_1ABA83974();
  sub_1ABF24E64();
  sub_1ABA7C300();
  sub_1ABAB5D1C();
  sub_1ABF24E64();
  sub_1ABAA314C();
  sub_1ABAD219C(&qword_1EB4D66F0, &qword_1ABF50BB8);
  sub_1ABA893EC();
  sub_1ABD0AB5C();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABAA297C();
  sub_1ABAD219C(&qword_1EB4D6718, &dword_1ABF50BC8);
  sub_1ABD1AFB8();
  sub_1ABD0AC48();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA958A0();
  sub_1ABAD219C(&qword_1EB4D6738, &dword_1ABF50BD0);
  sub_1ABD1AFE8();
  sub_1ABD0ACD4();
  sub_1ABA93610();
  sub_1ABF24E64();
  v29 = sub_1ABA9F94C();
  v30(v29);
  sub_1ABA94AC4();
  sub_1ABD0AD58();
  sub_1ABAA91B0();
LABEL_20:
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void static CustomGraphFacetimeActivityEvent.getEntityClass()()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x840), *(_Records_GDEntityClass_records + 0x848), *(_Records_GDEntityClass_records + 0x850), v11);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v8, v10, v9, v11[0], v11[1], v12);
  }

  else
  {
    __break(1u);
  }
}

void CustomGraphFacetimeActivityEvent.init<A, B>(with:initializationResources:)()
{
  sub_1ABA7BCA8();
  v1 = sub_1ABA8E9D8();
  v2 = type metadata accessor for CustomGraphFacetimeActivityEvent(v1);
  v3 = sub_1ABA7AB80(v2);
  MEMORY[0x1EEE9AC00](v3);
  sub_1ABA90150();
  sub_1ABD1AC8C();
  if (!v0)
  {
    sub_1ABA88A80();
  }

  sub_1ABA8AD50();
  v4 = sub_1ABA7EDF8();
  v5(v4);
  sub_1ABA8869C();
  sub_1ABA7BC90();
}

void sub_1ABCBF93C(uint64_t a1, __n128 a2)
{
  EntityClass.init(intValue:)(*(a1 + 7), &v23);
  v2 = *(&v23 + 1);
  if (!*(&v23 + 1))
  {
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v8 = sub_1ABF237F4();
    sub_1ABA7AA24(v8, qword_1ED871B40);
    v9 = sub_1ABF237D4();
    v10 = sub_1ABF24674();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1ABA78000, v9, v10, "entityClass is nil in CustomGraphFacetimeActivityEvent init", v11, 2u);
      MEMORY[0x1AC5AB8B0](v11, -1, -1);
    }

    sub_1ABB6DA08();
    swift_allocError();
    *v12 = 2;
    *(v12 + 8) = 0u;
    *(v12 + 24) = 0u;
    *(v12 + 33) = 0u;
    *(v12 + 49) = 2;
    goto LABEL_15;
  }

  if (_Records_GDEntityClass_records)
  {
    v3 = v23;
    v4 = v24;
    v5 = v25;
    v6 = v26;
    sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x840), *(_Records_GDEntityClass_records + 0x848), *(_Records_GDEntityClass_records + 0x850), v36);
    v7 = v37 == v4 && v5 == v38;
    if (v7 || (sub_1ABF25054() & 1) != 0)
    {
      sub_1ABA88934(v36);
LABEL_9:
      sub_1ABAA8FA8(v3, v2, v4, v5);
      return;
    }

    *&v23 = v3;
    *(&v23 + 1) = v2;
    v24 = v4;
    v25 = v5;
    LOBYTE(v26) = v6;
    EntityClass.ancestorClassesSet.getter();
    sub_1ABAA6788(v36, v13, v14, v15, v16, v17, v18, v19, v23, SBYTE8(v23), v24, v25, v26, v27, v28, v29, v30, v31, v32, *(&v32 + 1), v33, v34, v35, v36[0], v36[1], v37, v38, v39, v40, v41);
    v21 = v20;

    sub_1ABA88934(v36);
    if (v21)
    {
      goto LABEL_9;
    }

    if (_Records_GDEntityClass_records)
    {
      sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x840), *(_Records_GDEntityClass_records + 0x848), *(_Records_GDEntityClass_records + 0x850), &v32);
      v23 = v32;
      v24 = v33;
      v25 = v34;
      LOBYTE(v26) = v35;
      v27 = v3;
      v28 = v2;
      v29 = v4;
      v30 = v5;
      LOBYTE(v31) = v6;
      sub_1ABC7B1C0();
      swift_allocError();
      sub_1ABC81B08(&v23, v22);
LABEL_15:
      swift_willThrow();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1ABCBFC08(uint64_t a1)
{
  v2 = sub_1ABD0BE08();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABCBFC44(uint64_t a1)
{
  v2 = sub_1ABD0BE08();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void CustomGraphFacetimeActivityEvent.encode(to:)()
{
  sub_1ABA7BCA8();
  sub_1ABA89B64();
  sub_1ABAD219C(&qword_1EB4D6D68, &dword_1ABF50EB8);
  sub_1ABA96D00();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v1);
  sub_1ABA7E338();
  sub_1ABA8EA00();
  v2 = sub_1ABD0BE08();
  sub_1ABA8D27C(&type metadata for CustomGraphFacetimeActivityEvent.CodingKeys, v3, v2);
  sub_1ABA9F0C4();
  v4 = sub_1ABA8C744();
  sub_1ABAD219C(v4, v5);
  sub_1ABA7D99C();
  sub_1ABD1044C(v6);
  v7 = sub_1ABAA19EC();
  sub_1ABAA6564(v7, v8, v9);
  if (!v0)
  {
    sub_1ABAA073C();

    sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
    sub_1ABD09E38();
    v10 = sub_1ABAA2D10();
    sub_1ABAA6564(v10, v11, v12);
    sub_1ABAA1210();

    type metadata accessor for CustomGraphFacetimeActivityEvent(0);
    sub_1ABA8CB28();
    sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
    sub_1ABA80C14();
    sub_1ABD0A358(v13);
    v14 = sub_1ABA82E78();
    sub_1ABAA6564(v14, v15, v16);
    sub_1ABAB5AF0();
    sub_1ABAD219C(&qword_1EB4D65E0, &qword_1ABF50B50);
    sub_1ABD09F00();
    v17 = sub_1ABAA2D10();
    sub_1ABAA6564(v17, v18, v19);
    sub_1ABAA17C0();
    sub_1ABAD219C(&qword_1EB4D6610, &unk_1ABF50B70);
    sub_1ABD0A060();
    v20 = sub_1ABAA2D10();
    sub_1ABAA6564(v20, v21, v22);
    sub_1ABAA2300(12);
    sub_1ABD1AFDC();

    sub_1ABAD219C(&qword_1EB4D6628, &unk_1ABF50B80);
    sub_1ABD0A110();
    sub_1ABAA1328();

    sub_1ABAA2300(348768);
    sub_1ABD1AFD0();

    v25 = sub_1ABD1ABF4();
    sub_1ABD1AF60(v25, v26, v27);

    sub_1ABAA2300(12);
    sub_1ABD1AFC4();

    sub_1ABAD219C(&qword_1EB4D66F0, &qword_1ABF50BB8);
    sub_1ABD0A808();
    v28 = sub_1ABAA2D10();
    sub_1ABAA6564(v28, v29, v30);
    sub_1ABD1AFA0();

    sub_1ABA98014(348774);
    sub_1ABD1AFB8();

    sub_1ABAD219C(&qword_1EB4D6718, &dword_1ABF50BC8);
    sub_1ABD0A8F4();
    v31 = sub_1ABAA2D10();
    sub_1ABAA6564(v31, v32, v33);
    sub_1ABD1AFA0();

    sub_1ABAA2300(12);
    sub_1ABD1AFE8();

    sub_1ABAD219C(&qword_1EB4D6738, &dword_1ABF50BD0);
    sub_1ABD0AA28();
    v34 = sub_1ABAA2D10();
    sub_1ABAA6564(v34, v35, v36);
  }

  v23 = sub_1ABA89DE4();
  v24(v23);
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void CustomGraphFacetimeActivityEvent.init(from:)()
{
  sub_1ABA7BCA8();
  sub_1ABA89524();
  sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
  sub_1ABA8CD04();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v7);
  sub_1ABA9F7AC();
  v8 = sub_1ABAD219C(&qword_1EB4D6D88, &unk_1ABF50EC8);
  sub_1ABA960BC(v8);
  v10 = v9;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v11);
  v12 = sub_1ABAB67BC();
  v13 = type metadata accessor for CustomGraphFacetimeActivityEvent(v12);
  v14 = sub_1ABAB6924(v13);
  MEMORY[0x1EEE9AC00](v14);
  sub_1ABA7C21C();
  v31 = v15;
  sub_1ABA90D04();
  v16 = sub_1ABD0BE08();
  sub_1ABA9F458(&type metadata for CustomGraphFacetimeActivityEvent.CodingKeys, v17, v16);
  if (v1)
  {
    sub_1ABA81914();
    sub_1ABA90FE0();
    if (v0)
    {
      sub_1ABAA5D48();

      if (v1)
      {
        goto LABEL_5;
      }
    }

    else if (v1)
    {
LABEL_5:
      sub_1ABA8A78C();
      sub_1ABAB480C(v31 + v26, &qword_1EB4D5F30, &unk_1ABF50B00);
      if ((v6 & 1) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }

    if (!v6)
    {
LABEL_6:
      if (v5)
      {
        goto LABEL_7;
      }

      goto LABEL_15;
    }

LABEL_14:
    sub_1ABD1B370();
    if (v5)
    {
LABEL_7:
      sub_1ABD1B314();
      if ((v4 & 1) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_16;
    }

LABEL_15:
    if (!v4)
    {
LABEL_8:
      if (v3)
      {
        goto LABEL_9;
      }

      goto LABEL_17;
    }

LABEL_16:
    sub_1ABA88814();
    if (v3)
    {
LABEL_9:
      sub_1ABD1B2FC();
      if ((v2 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_18;
    }

LABEL_17:
    if (!v2)
    {
LABEL_10:
      if (!v10)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

LABEL_18:
    sub_1ABAA1044();
    if ((v10 & 1) == 0)
    {
      goto LABEL_20;
    }

LABEL_19:
    sub_1ABAA20FC();
    goto LABEL_20;
  }

  v18 = sub_1ABA7ABE4();
  sub_1ABAD219C(v18, v19);
  sub_1ABAAFAF4();
  sub_1ABA8F54C();
  sub_1ABD1044C(v20);
  v21 = sub_1ABA841C4();
  sub_1ABAA212C(v21, v22, v23, v24, v25);
  sub_1ABA9EAC4();
  sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
  sub_1ABA89A14();
  sub_1ABD0A2D4();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA88ACC();
  sub_1ABAA2660();
  sub_1ABA7F460();
  v28 = sub_1ABD0A358(v27);
  sub_1ABAB54E0(v28);
  sub_1ABA8A800();
  sub_1ABA94EB8();
  sub_1ABAD219C(&qword_1EB4D65E0, &qword_1ABF50B50);
  sub_1ABA9ED60();
  sub_1ABD0A408();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA89318();
  sub_1ABAD219C(&qword_1EB4D6610, &unk_1ABF50B70);
  sub_1ABA9EC10();
  sub_1ABD0A568();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA897A8();
  sub_1ABAD219C(&qword_1EB4D6628, &unk_1ABF50B80);
  sub_1ABD1AFDC();
  sub_1ABD0A618();
  sub_1ABA83974();
  sub_1ABF24E64();
  sub_1ABA7C300();
  sub_1ABAB5D1C();
  sub_1ABF24E64();
  sub_1ABAA314C();
  sub_1ABAD219C(&qword_1EB4D66F0, &qword_1ABF50BB8);
  sub_1ABA893EC();
  sub_1ABD0AB5C();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABAA297C();
  sub_1ABAD219C(&qword_1EB4D6718, &dword_1ABF50BC8);
  sub_1ABD1AFB8();
  sub_1ABD0AC48();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA958A0();
  sub_1ABAD219C(&qword_1EB4D6738, &dword_1ABF50BD0);
  sub_1ABD1AFE8();
  sub_1ABD0ACD4();
  sub_1ABA93610();
  sub_1ABF24E64();
  v29 = sub_1ABA9F94C();
  v30(v29);
  sub_1ABA94AC4();
  sub_1ABD0AD58();
  sub_1ABAA91B0();
LABEL_20:
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void static CustomGraphDrivingActivityEvent.getEntityClass()()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xCA8), *(_Records_GDEntityClass_records + 0xCB0), *(_Records_GDEntityClass_records + 0xCB8), v11);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v8, v10, v9, v11[0], v11[1], v12);
  }

  else
  {
    __break(1u);
  }
}

void CustomGraphDrivingActivityEvent.init<A, B>(with:initializationResources:)()
{
  sub_1ABA7BCA8();
  v1 = sub_1ABA8E9D8();
  v2 = type metadata accessor for CustomGraphDrivingActivityEvent(v1);
  v3 = sub_1ABA7AB80(v2);
  MEMORY[0x1EEE9AC00](v3);
  sub_1ABA90150();
  sub_1ABD1AC8C();
  if (!v0)
  {
    sub_1ABA88A80();
  }

  sub_1ABA8AD50();
  v4 = sub_1ABA7EDF8();
  v5(v4);
  sub_1ABA8869C();
  sub_1ABA7BC90();
}

void sub_1ABCC08AC(uint64_t a1, __n128 a2)
{
  EntityClass.init(intValue:)(*(a1 + 7), &v23);
  v2 = *(&v23 + 1);
  if (!*(&v23 + 1))
  {
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v8 = sub_1ABF237F4();
    sub_1ABA7AA24(v8, qword_1ED871B40);
    v9 = sub_1ABF237D4();
    v10 = sub_1ABF24674();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1ABA78000, v9, v10, "entityClass is nil in CustomGraphDrivingActivityEvent init", v11, 2u);
      MEMORY[0x1AC5AB8B0](v11, -1, -1);
    }

    sub_1ABB6DA08();
    swift_allocError();
    *v12 = 2;
    *(v12 + 8) = 0u;
    *(v12 + 24) = 0u;
    *(v12 + 33) = 0u;
    *(v12 + 49) = 2;
    goto LABEL_15;
  }

  if (_Records_GDEntityClass_records)
  {
    v3 = v23;
    v4 = v24;
    v5 = v25;
    v6 = v26;
    sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xCA8), *(_Records_GDEntityClass_records + 0xCB0), *(_Records_GDEntityClass_records + 0xCB8), v36);
    v7 = v37 == v4 && v5 == v38;
    if (v7 || (sub_1ABF25054() & 1) != 0)
    {
      sub_1ABA88934(v36);
LABEL_9:
      sub_1ABAA8FA8(v3, v2, v4, v5);
      return;
    }

    *&v23 = v3;
    *(&v23 + 1) = v2;
    v24 = v4;
    v25 = v5;
    LOBYTE(v26) = v6;
    EntityClass.ancestorClassesSet.getter();
    sub_1ABAA6788(v36, v13, v14, v15, v16, v17, v18, v19, v23, SBYTE8(v23), v24, v25, v26, v27, v28, v29, v30, v31, v32, *(&v32 + 1), v33, v34, v35, v36[0], v36[1], v37, v38, v39, v40, v41);
    v21 = v20;

    sub_1ABA88934(v36);
    if (v21)
    {
      goto LABEL_9;
    }

    if (_Records_GDEntityClass_records)
    {
      sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xCA8), *(_Records_GDEntityClass_records + 0xCB0), *(_Records_GDEntityClass_records + 0xCB8), &v32);
      v23 = v32;
      v24 = v33;
      v25 = v34;
      LOBYTE(v26) = v35;
      v27 = v3;
      v28 = v2;
      v29 = v4;
      v30 = v5;
      LOBYTE(v31) = v6;
      sub_1ABC7B1C0();
      swift_allocError();
      sub_1ABC81B08(&v23, v22);
LABEL_15:
      swift_willThrow();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1ABCC0B44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_1ABA7BCA8();
  v25 = v24;
  v174 = v26;
  v28 = v27;
  v176 = v29;
  v179 = v31;
  v180 = v30;
  v33 = v32;
  v35 = v34;
  v36 = sub_1ABAD219C(&qword_1EB4D5F20, &qword_1ABF4F358);
  sub_1ABA7AB80(v36);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v37);
  v38 = sub_1ABAB67BC();
  v39 = type metadata accessor for CustomGraphDateRelationship(v38);
  sub_1ABA7BB64();
  MEMORY[0x1EEE9AC00](v40);
  v177 = v42;
  v178 = &v171 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = v28;
  v173 = v25;
  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
    __break(1u);
    goto LABEL_122;
  }

  v181 = v22;
  v43 = *v35;
  v44 = *(v35 + 8);
  a10 = v35;
  sub_1ABA91D48(_Records_GDEntityPredicate_records[12], *(_Records_GDEntityPredicate_records + 4), *(_Records_GDEntityPredicate_records + 5), &v200);
  v45 = v200 == v43 && v201 == v44;
  if (v45)
  {

LABEL_51:
    v46 = v35;
    if (!*(v35 + 97))
    {
      v80 = *(v35 + 40);
      v79 = a10[6];
      sub_1ABA7C32C(v33 + 16, &v200);

      sub_1ABB4DC20();
      v81 = *(*(v33 + 16) + 16);
      sub_1ABB4E024(v81);
      v82 = *(v33 + 16);
      *(v82 + 16) = v81 + 1;
      v83 = v82 + 16 * v81;
      *(v83 + 32) = v80;
      *(v83 + 40) = v79;
      *(v33 + 16) = v82;
      swift_endAccess();
      goto LABEL_92;
    }

    goto LABEL_52;
  }

  v172 = v43;
  sub_1ABF25054();
  sub_1ABA7C014();

  if (v35)
  {
    goto LABEL_51;
  }

  if (!_Records_GDEntityPredicate_records)
  {
LABEL_122:
    __break(1u);
    goto LABEL_123;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[1740], *(_Records_GDEntityPredicate_records + 436), *(_Records_GDEntityPredicate_records + 437), &v200);
  v46 = v202;
  if (v200 == v172 && v201 == v44)
  {

    goto LABEL_59;
  }

  sub_1ABF25054();
  sub_1ABA7C014();

  if (v35)
  {
LABEL_59:
    v46 = v35;
    *(v199 + 10) = *(v35 + 82);
    v84 = *(v35 + 56);
    v198[0] = *(v35 + 40);
    v198[1] = v84;
    v199[0] = *(v35 + 72);
    if (BYTE9(v199[1]) == 1)
    {
      v85 = *(v35 + 56);
      v203[0] = *(v35 + 40);
      v203[1] = v85;
      v204[0] = *(v35 + 72);
      *(v204 + 9) = *(v35 + 81);
      sub_1ABD1C0E4();
      sub_1ABD1C0E4();
      v86 = v180;

      v87 = v86;
      v88 = v181;
      sub_1ABC8A96C(v203, v87, v23);
      if (v88)
      {
        v89 = &qword_1EB4D7E60;
        v90 = &unk_1ABF5E780;
        v91 = v198;
      }

      else
      {
        if (sub_1ABA7E1E0(v23, 1, v39) != 1)
        {
          v107 = v178;
          sub_1ABCF9424();
          v108 = v179;
          sub_1ABA7C32C(v179 + 16, &v200);
          sub_1ABB4DE30();
          v109 = sub_1ABD1BD90();
          sub_1ABB4E234(v109);
          v110 = *(v108 + 16);
          *(v110 + 16) = v39 + 1;
          sub_1ABD1B7FC();
          sub_1ABA8AA88();
          sub_1ABD0AD58();
          *(v108 + 16) = v110;
          swift_endAccess();
          sub_1ABAB480C(v198, &qword_1EB4D7E60, &unk_1ABF5E780);
          sub_1ABD0ADB0(v107, (v108 + 16));
          goto LABEL_92;
        }

        sub_1ABAB480C(v198, &qword_1EB4D7E60, &unk_1ABF5E780);
        v89 = &qword_1EB4D5F20;
        v90 = &qword_1ABF4F358;
        v91 = v23;
      }

      sub_1ABAB480C(v91, v89, v90);
      goto LABEL_92;
    }

    if (qword_1ED871B38 != -1)
    {
      sub_1ABA7D178(&qword_1ED871B38);
    }

    v92 = sub_1ABF237F4();
    sub_1ABAA2318(v92, qword_1ED871B40);
    sub_1ABAE2EC4();
    v71 = sub_1ABF237D4();
    v93 = sub_1ABF24664();
    if (!sub_1ABAA5E74(v93))
    {
      goto LABEL_66;
    }

    sub_1ABA8E2E8();
    v73 = sub_1ABAB5B88();
    v185 = v73;
    v94 = sub_1ABD1BDA4(4.9654e-34);
    v95 = v35;
LABEL_90:
    memcpy(v94, v95, 0x62uLL);
    sub_1ABAD219C(&qword_1EB4D1148, &qword_1ABF332D0);
    v76 = sub_1ABF23C94();
    v78 = &v185;
    goto LABEL_91;
  }

  if (!_Records_GDEntityPredicate_records)
  {
LABEL_123:
    __break(1u);
LABEL_124:
    sub_1ABA7D178(&qword_1ED871B38);
LABEL_117:
    v166 = sub_1ABF237F4();
    sub_1ABAA2318(v166, qword_1ED871B40);
    sub_1ABAE2EC4();
    v71 = sub_1ABF237D4();
    v167 = sub_1ABF24664();
    if (sub_1ABAA5E74(v167))
    {
      sub_1ABA8E2E8();
      v73 = sub_1ABAB5B88();
      *&v198[0] = v73;
      v74 = sub_1ABD1BDA4(4.9654e-34);
      v75 = a10;
      goto LABEL_56;
    }

    v96 = a10;
    goto LABEL_67;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[1392], *(_Records_GDEntityPredicate_records + 349), *(_Records_GDEntityPredicate_records + 350), &v200);
  v48 = sub_1ABD1AEC0();
  if (v45 && v39 == v44)
  {

LABEL_72:
    sub_1ABAA6314();
    if (!v45)
    {
LABEL_86:
      if (qword_1ED871B38 != -1)
      {
        sub_1ABA7D178(&qword_1ED871B38);
      }

      v127 = sub_1ABF237F4();
      sub_1ABAA2318(v127, qword_1ED871B40);
      sub_1ABAE2EC4();
      v71 = sub_1ABF237D4();
      v128 = sub_1ABF24664();
      if (!sub_1ABAA5E74(v128))
      {

        v96 = v44;
        goto LABEL_67;
      }

      sub_1ABA8E2E8();
      v73 = sub_1ABAB5B88();
      v185 = v73;
      v94 = sub_1ABD1BDA4(4.9654e-34);
      v95 = v44;
      goto LABEL_90;
    }

    sub_1ABAB5BBC();
    MEMORY[0x1EEE9AC00](v97);
    sub_1ABA9F9B8();
    sub_1ABAE2EC4();
    sub_1ABD191AC(&v200, &v185);
    v98 = sub_1ABA7ABE4();
    v99 = v181;
    sub_1ABCFC2DC(v98, v100, v101, v102, v103, v104, v105, v106, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192, v193, *(&v193 + 1));
    if (!v99)
    {
      v111 = v194;
      if (v194)
      {
        sub_1ABD1AE84();
        v112 = v176;
        sub_1ABA7C32C(v176 + 16, &v182);
        sub_1ABB4DEA8();
        v113 = sub_1ABAA6450();
        sub_1ABB4E2AC(v113);
LABEL_79:
        v114 = *(v112 + 16);
        *(v114 + 16) = v39 + 1;
        v115 = v114 + (v39 << 6);
        *(v115 + 32) = v193;
        *(v115 + 48) = v111;
        *(v115 + 56) = v195;
        *(v115 + 72) = v196;
        *(v115 + 88) = v197;
        *(v112 + 16) = v114;
        swift_endAccess();
LABEL_95:
        sub_1ABAB480C(v198, &qword_1EB4D7E60, &unk_1ABF5E780);
        goto LABEL_92;
      }

LABEL_94:
      sub_1ABD1AE84();
      goto LABEL_95;
    }

LABEL_75:
    sub_1ABD1AE84();
    sub_1ABAB480C(v198, &qword_1EB4D7E60, &unk_1ABF5E780);
    goto LABEL_92;
  }

  sub_1ABAA36FC(v48, v49, v50);
  sub_1ABA7C014();

  if (v35)
  {
    goto LABEL_72;
  }

  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
    goto LABEL_126;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[1080], *(_Records_GDEntityPredicate_records + 271), *(_Records_GDEntityPredicate_records + 272), &v200);
  v52 = sub_1ABD1AEC0();
  if (v45 && v39 == v44)
  {

LABEL_81:
    sub_1ABAA6314();
    if (!v45)
    {
      goto LABEL_86;
    }

    sub_1ABAB5BBC();
    MEMORY[0x1EEE9AC00](v116);
    sub_1ABA9F9B8();
    sub_1ABAE2EC4();
    sub_1ABD191AC(&v200, &v185);
    v117 = sub_1ABA7ABE4();
    v118 = v181;
    sub_1ABCFC2DC(v117, v119, v120, v121, v122, v123, v124, v125, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192, v193, *(&v193 + 1));
    if (!v118)
    {
      v111 = v194;
      if (v194)
      {
        sub_1ABD1AE84();
        v112 = v175;
        sub_1ABA7C32C(v175 + 16, &v182);
        sub_1ABB4DD28();
        v126 = sub_1ABAA6450();
        sub_1ABB4E12C(v126);
        goto LABEL_79;
      }

      goto LABEL_94;
    }

    goto LABEL_75;
  }

  sub_1ABAA36FC(v52, v53, v54);
  sub_1ABA7C014();

  if (v35)
  {
    goto LABEL_81;
  }

  if (!_Records_GDEntityPredicate_records)
  {
LABEL_126:
    __break(1u);
    goto LABEL_127;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[1920], *(_Records_GDEntityPredicate_records + 481), *(_Records_GDEntityPredicate_records + 482), &v200);
  v56 = sub_1ABD1AEC0();
  if (v45 && v39 == v44)
  {

    goto LABEL_98;
  }

  sub_1ABAA36FC(v56, v57, v58);
  sub_1ABA7C014();

  if (v35)
  {
LABEL_98:
    sub_1ABD1B82C();
    if (!v45)
    {
      goto LABEL_52;
    }

    v130 = sub_1ABD1B7EC();
    sub_1ABC4A630(v130, v131, v132, v133, v134, v135, v136, v137);
    if (v22)
    {
      goto LABEL_92;
    }

    v138 = *&v198[0];
    v139 = v174;
    goto LABEL_102;
  }

  if (!_Records_GDEntityPredicate_records)
  {
LABEL_127:
    __break(1u);
    goto LABEL_128;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[1932], *(_Records_GDEntityPredicate_records + 484), *(_Records_GDEntityPredicate_records + 485), &v200);
  v60 = sub_1ABD1AEC0();
  if (v45 && v39 == v44)
  {

    goto LABEL_104;
  }

  sub_1ABAA36FC(v60, v61, v62);
  sub_1ABA7C014();

  if (v35)
  {
LABEL_104:
    sub_1ABD1B82C();
    if (!v45)
    {
      goto LABEL_52;
    }

    v142 = sub_1ABD1B7EC();
    sub_1ABC4A630(v142, v143, v144, v145, v146, v147, v148, v149);
    if (v22)
    {
      goto LABEL_92;
    }

    v138 = *&v198[0];
    v139 = v173;
LABEL_102:
    sub_1ABA8C160(v139 + 16, &v200);
    sub_1ABB4DD40();
    v140 = sub_1ABD1BD90();
    sub_1ABB4E144(v140);
    v141 = *(v139 + 16);
    *(v141 + 16) = v39 + 1;
    *(v141 + 8 * v39 + 32) = v138;
    *(v139 + 16) = v141;
    goto LABEL_92;
  }

  if (!_Records_GDEntityPredicate_records)
  {
LABEL_128:
    __break(1u);
    goto LABEL_129;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[240], *(_Records_GDEntityPredicate_records + 61), *(_Records_GDEntityPredicate_records + 62), &v200);
  v64 = sub_1ABD1AEC0();
  if (v45 && v39 == v44)
  {

LABEL_109:
    sub_1ABD1B82C();
    if (v45)
    {
      v150 = sub_1ABD1B7EC();
      sub_1ABC4CBC0(v150, v151, v152, v153, v154, v155, v156, v157, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192, v193, *(&v193 + 1), v194, v195, *(&v195 + 1), v196);
      if (!v22)
      {
        v158 = *&v198[0];
        sub_1ABA8C160(a21 + 16, &v200);
        sub_1ABB4DE48();
        v159 = sub_1ABAB5F24();
        sub_1ABB4E24C(v159);
        sub_1ABAA33C0();
        *(v160 + 32) = v158;
        *(a21 + 16) = v161;
      }

      goto LABEL_92;
    }

LABEL_52:
    if (qword_1ED871B38 != -1)
    {
      sub_1ABA7D178(&qword_1ED871B38);
    }

    v70 = sub_1ABF237F4();
    sub_1ABAA2318(v70, qword_1ED871B40);
    sub_1ABAE2EC4();
    v71 = sub_1ABF237D4();
    v72 = sub_1ABF24664();
    if (sub_1ABAA5E74(v72))
    {
      sub_1ABA8E2E8();
      v73 = sub_1ABAB5B88();
      *&v198[0] = v73;
      v74 = sub_1ABD1BDA4(4.9654e-34);
      v75 = v46;
LABEL_56:
      memcpy(v74, v75, 0x62uLL);
      sub_1ABAD219C(&qword_1EB4D1148, &qword_1ABF332D0);
      v76 = sub_1ABF23C94();
      v78 = v198;
LABEL_91:
      v129 = sub_1ABADD6D8(v76, v77, v78);

      *(v39 + 4) = v129;
      _os_log_impl(&dword_1ABA78000, v71, v35, "Failed to parse %{sensitive}s.", v39, 0xCu);
      sub_1ABA84B54(v73);
      sub_1ABA7BC34();
      sub_1ABA90C1C();

      goto LABEL_92;
    }

LABEL_66:

    v96 = v46;
LABEL_67:
    sub_1ABAB480C(v96, &qword_1EB4D1148, &qword_1ABF332D0);
    goto LABEL_92;
  }

  sub_1ABAA36FC(v64, v65, v66);
  sub_1ABA7C014();

  if (v35)
  {
    goto LABEL_109;
  }

  if (_Records_GDEntityPredicate_records)
  {
    sub_1ABA91D48(_Records_GDEntityPredicate_records[1200], *(_Records_GDEntityPredicate_records + 301), *(_Records_GDEntityPredicate_records + 302), &v200);
    v39 = v201;
    if (v200 == v172 && v201 == v44)
    {

LABEL_114:
      if (!*(v35 + 97))
      {
        v162 = *(v35 + 40);
        v163 = *(v35 + 48);

        v164 = sub_1ABB24D04(v162, v163);
        if ((v165 & 1) == 0)
        {
          v168 = v164;
          sub_1ABA8C160(a22 + 16, &v200);
          sub_1ABB4DCB0();
          v169 = *(*(a22 + 16) + 16);
          sub_1ABB4E0CC(v169);
          v170 = *(a22 + 16);
          *(v170 + 16) = v169 + 1;
          *(v170 + 8 * v169 + 32) = v168;
          *(a22 + 16) = v170;
          goto LABEL_92;
        }
      }

      if (qword_1ED871B38 == -1)
      {
        goto LABEL_117;
      }

      goto LABEL_124;
    }

    v69 = sub_1ABF25054();

    if (v69)
    {
      goto LABEL_114;
    }

LABEL_92:
    sub_1ABA8869C();
    sub_1ABA7BC90();
    return;
  }

LABEL_129:
  __break(1u);
}

void sub_1ABCC1840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, __int16 **a23, uint64_t a24)
{
  sub_1ABA7BCA8();
  v287 = v25;
  v290 = v26;
  v292 = v27;
  v295 = v28;
  v303 = v29;
  v310 = v30;
  v318 = v31;
  v33 = v32;
  v34 = sub_1ABAD219C(&qword_1EB4D5F20, &qword_1ABF4F358);
  sub_1ABA7AB80(v34);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v35);
  sub_1ABA7FBE0();
  sub_1ABA8147C(v36);
  v307 = type metadata accessor for CustomGraphDateRelationship(0);
  sub_1ABA7BB64();
  v301 = v37;
  MEMORY[0x1EEE9AC00](v38);
  sub_1ABA7C21C();
  sub_1ABA8147C(v39);
  v40 = *(a24 + 8);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  sub_1ABA82858();
  v313 = sub_1ABF247E4();
  sub_1ABA7BB64();
  v312 = v41;
  MEMORY[0x1EEE9AC00](v42);
  sub_1ABA7C068();
  sub_1ABA8BEF0();
  MEMORY[0x1EEE9AC00](v43);
  sub_1ABA88E50();
  sub_1ABA8BEF0();
  MEMORY[0x1EEE9AC00](v44);
  sub_1ABA8147C(&v281 - v45);
  v317 = a24;
  v314 = *(a24 - 8);
  MEMORY[0x1EEE9AC00](v46);
  sub_1ABA7C068();
  sub_1ABA8BEF0();
  MEMORY[0x1EEE9AC00](v47);
  sub_1ABA88E50();
  sub_1ABA8BEF0();
  MEMORY[0x1EEE9AC00](v48);
  sub_1ABA88E50();
  sub_1ABA8BEF0();
  MEMORY[0x1EEE9AC00](v49);
  sub_1ABA88E50();
  sub_1ABA8BEF0();
  MEMORY[0x1EEE9AC00](v50);
  sub_1ABA88E50();
  sub_1ABA8BEF0();
  MEMORY[0x1EEE9AC00](v51);
  sub_1ABA8147C(&v281 - v52);
  v319[0] = *(a23 - 1);
  MEMORY[0x1EEE9AC00](v53);
  sub_1ABA7C068();
  sub_1ABA8BEF0();
  MEMORY[0x1EEE9AC00](v54);
  sub_1ABA88E50();
  sub_1ABA8BEF0();
  MEMORY[0x1EEE9AC00](v55);
  sub_1ABA88E50();
  sub_1ABA8BEF0();
  MEMORY[0x1EEE9AC00](v56);
  sub_1ABA88E50();
  sub_1ABA8BEF0();
  MEMORY[0x1EEE9AC00](v57);
  sub_1ABA88E50();
  sub_1ABA8BEF0();
  MEMORY[0x1EEE9AC00](v58);
  sub_1ABA88E50();
  sub_1ABA8BEF0();
  MEMORY[0x1EEE9AC00](v59);
  sub_1ABA88E50();
  sub_1ABA8BEF0();
  MEMORY[0x1EEE9AC00](v60);
  sub_1ABA88E50();
  sub_1ABA8BEF0();
  MEMORY[0x1EEE9AC00](v61);
  v63 = (&v281 - v62);
  v320 = swift_checkMetadataState();
  sub_1ABA7BB64();
  v65 = v64;
  MEMORY[0x1EEE9AC00](v66);
  sub_1ABA7C068();
  sub_1ABA8BEF0();
  MEMORY[0x1EEE9AC00](v67);
  sub_1ABA88E50();
  sub_1ABA8BEF0();
  MEMORY[0x1EEE9AC00](v68);
  sub_1ABA88E50();
  sub_1ABA8BEF0();
  MEMORY[0x1EEE9AC00](v69);
  sub_1ABA88E50();
  sub_1ABA8BEF0();
  MEMORY[0x1EEE9AC00](v70);
  sub_1ABA88E50();
  sub_1ABA8BEF0();
  MEMORY[0x1EEE9AC00](v71);
  v73 = &v281 - v72;
  MEMORY[0x1EEE9AC00](v74);
  v76 = (&v281 - v75);
  v78 = MEMORY[0x1EEE9AC00](v77);
  v80 = &v281 - v79;
  v81 = *(v40 + 24);
  v321 = v33;
  v322 = a23;
  LODWORD(v82) = v33;
  v319[2] = v40;
  v81(v329, a23, v40, v78);
  v319[1] = v65;
  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
    goto LABEL_129;
  }

  v84 = v329[0];
  v83 = v329[1];
  v85 = v330;
  sub_1ABA91D48(_Records_GDEntityPredicate_records[12], *(_Records_GDEntityPredicate_records + 4), *(_Records_GDEntityPredicate_records + 5), &v324);
  v86 = v84;
  v82 = v325;
  v87 = v324 == v86 && v325 == v83;
  if (v87)
  {

LABEL_9:
    v89 = v321;

    v90 = v322;
    v91 = sub_1ABD1BE94();
    v92(v91);
    v93 = v320;
    v94 = swift_getAssociatedConformanceWitness();
    v95 = (*(v94 + 24))(v93, v94);
    v97 = v96;
    v98 = sub_1ABAA1B2C();
    v99(v98, v93);
    if (v97)
    {
      v100 = v318;
      sub_1ABA7C32C(v318 + 16, &v324);
      sub_1ABB4DC20();
      v101 = *(*(v100 + 16) + 16);
      sub_1ABB4E024(v101);
      v102 = *(v100 + 16);
      *(v102 + 16) = v101 + 1;
      v103 = v102 + 16 * v101;
      *(v103 + 32) = v95;
      *(v103 + 40) = v97;
      *(v100 + 16) = v102;
      swift_endAccess();
      goto LABEL_55;
    }

    if (qword_1ED871B38 != -1)
    {
      sub_1ABA7D178(&qword_1ED871B38);
    }

    v104 = sub_1ABF237F4();
    sub_1ABAA2318(v104, qword_1ED871B40);
    sub_1ABD1BA08();
    sub_1ABD1B578();
    v105 = sub_1ABA8BBFC();
    v93(v105);
    v106 = sub_1ABF237D4();
    v107 = sub_1ABF24664();
    if (sub_1ABA9E624(v107))
    {
      sub_1ABA8E2E8();
      v321 = sub_1ABAB5B88();
      v324 = v321;
      v108 = sub_1ABD1BDB0(4.9654e-34);
      (v93)(v108, v63, v90);
      sub_1ABF23C94();
      sub_1ABD1B6A8();
      v109 = sub_1ABAA4810();
      v110(v109);
      sub_1ABD1B55C();
      sub_1ABD1BA80();

      *(v89 + 4) = v80;
      sub_1ABA8D1E0();
      _os_log_impl(v111, v112, v113, v114, v115, 0xCu);
      sub_1ABA84B54(v321);
      sub_1ABA7BC34();
LABEL_31:
      sub_1ABA7BC34();

LABEL_55:
      sub_1ABA7BC90();
      return;
    }

    v117 = sub_1ABAA4810();
LABEL_54:
    v119(v117, v118);
    goto LABEL_55;
  }

  v283 = v85;
  v282 = v86;
  sub_1ABA89938();
  v88 = sub_1ABF25054();

  if (v88)
  {
    goto LABEL_9;
  }

  v63 = &_Records_GDEntityPredicate_records;
  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
    goto LABEL_131;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[1740], *(_Records_GDEntityPredicate_records + 436), *(_Records_GDEntityPredicate_records + 437), &v324);
  sub_1ABA88FC8();
  if (v87 && v82 == v83)
  {
    sub_1ABD1B964();

    goto LABEL_25;
  }

  sub_1ABA89938();
  v80 = sub_1ABF25054();

  if (v80)
  {
    sub_1ABAA0C8C();
LABEL_25:

    sub_1ABD1B7BC();
    v120 = sub_1ABAB5978();
    v121(v120);
    v122 = AssociatedConformanceWitness;
    sub_1ABD1BA50();
    v123(v320, v122);
    v82 = v73;
    v124 = sub_1ABA7AC64();
    v125(v124);
    v80 = v317;
    v126 = sub_1ABA7E1E0(v73, 1, v317);
    v73 = v319[0];
    if (v126 == 1)
    {
      (*(v312 + 8))(v82, v313);
      if (qword_1ED871B38 != -1)
      {
        sub_1ABA7D178(&qword_1ED871B38);
      }

      v127 = sub_1ABF237F4();
      sub_1ABAA2318(v127, qword_1ED871B40);
      sub_1ABD1B578();
      v128 = &v330;
      goto LABEL_29;
    }

    sub_1ABD1BA50();
    (*(v136 + 32))(v309, v82, v80);
    v137 = sub_1ABA894A0();
    v138(v137);
    swift_getAssociatedConformanceWitness();

    v139 = v311;
    CustomGraphDateRelationship.init<A>(from:initializationResources:)();
    if (!v24)
    {
      if (sub_1ABA7E1E0(v139, 1, v307) == 1)
      {
        v140 = sub_1ABD1B148();
        v141(v140);
        sub_1ABAB480C(v139, &qword_1EB4D5F20, &qword_1ABF4F358);
        goto LABEL_55;
      }

      v163 = v302;
      sub_1ABCF9424();
      v164 = v303;
      sub_1ABA7C32C(v303 + 16, &v324);
      sub_1ABB4DE30();
      v165 = sub_1ABD1BCE4();
      sub_1ABB4E234(v165);
      v166 = *(v164 + 16);
      *(v166 + 16) = v139 + 1;
      sub_1ABD0AD58();
      *(v164 + 16) = v166;
      swift_endAccess();
      sub_1ABD0ADB0(v163, type metadata accessor for CustomGraphDateRelationship);
    }

LABEL_53:
    v117 = sub_1ABD1B148();
    goto LABEL_54;
  }

  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
LABEL_133:
    sub_1ABA7D178(&qword_1ED871B38);
LABEL_108:
    v238 = sub_1ABF237F4();
    sub_1ABAA2318(v238, qword_1ED871B40);
    v239 = v319[0] + 16;
    v240 = *(v319[0] + 16);
    v241 = v286;
    v240(v286, v83, v63);
    v242 = sub_1ABF237D4();
    v243 = sub_1ABF24664();
    if (!sub_1ABA9E624(v243))
    {

      v256 = sub_1ABA8B1A8();
      v257(v256);
      goto LABEL_55;
    }

    sub_1ABA8E2E8();
    v321 = sub_1ABAB5B88();
    v324 = v321;
    *v88 = 136642819;
    v240(v315, v241, v63);
    sub_1ABA97F40();
    sub_1ABF23C94();
    sub_1ABD1B6A8();
    v244 = sub_1ABA8B1A8();
    v245(v244);
    sub_1ABD1B55C();
    sub_1ABD1BA80();

    *(v88 + 4) = v239;
    sub_1ABA8D1E0();
    _os_log_impl(v246, v247, v248, v249, v250, 0xCu);
    sub_1ABA84B54(v321);
    goto LABEL_110;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[1392], *(_Records_GDEntityPredicate_records + 349), *(_Records_GDEntityPredicate_records + 350), &v324);
  sub_1ABA88FC8();
  if (v87 && v82 == v83)
  {
    sub_1ABD1B964();

    goto LABEL_44;
  }

  sub_1ABA89938();
  v80 = sub_1ABF25054();

  if (v80)
  {
    sub_1ABAA0C8C();
LABEL_44:

    sub_1ABD1B7BC();
    v143 = sub_1ABAB5978();
    v144(v143);
    sub_1ABD1BF10();
    v145 = v308;
    LODWORD(v82) = v73;
    v146(v320, v76);
    v147 = sub_1ABAA0C6C();
    v148(v147);
    v73 = v317;
    if (sub_1ABA7E1E0(v145, 1, v317) != 1)
    {
      sub_1ABD1BE88();
      v152 = v306;
      v153 = sub_1ABAA4810();
      v154(v153);
      v155 = sub_1ABA97F40();
      v156(v155);
      type metadata accessor for CustomGraphPerson(0);
      v157 = sub_1ABD09EBC(&unk_1EB4D7E80);
      sub_1ABA7AC64();
      swift_getAssociatedConformanceWitness();
      v158 = sub_1ABD1BE94();
      CustomGraphAttendeeRelationship.init<A>(from:initializationResources:)(v161, v158, v159, v73, v157, v160);
      if (!v24 && v326)
      {
        sub_1ABA7C32C(v295 + 16, v323);
        sub_1ABB4DEA8();
        v162 = sub_1ABD1BD7C();
        sub_1ABB4E2AC(v162);
        sub_1ABA8A43C();
      }

      (*(v80 + 8))(v152, v73);
      goto LABEL_55;
    }

    v149 = sub_1ABD1B650();
    v150(v149);
    if (qword_1ED871B38 != -1)
    {
      sub_1ABA7D178(&qword_1ED871B38);
    }

    v151 = sub_1ABF237F4();
    sub_1ABAA2318(v151, qword_1ED871B40);
    sub_1ABD1BA08();
    sub_1ABD1B578();
    v128 = &v328;
    goto LABEL_29;
  }

  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
LABEL_135:
    sub_1ABA7D178(&qword_1ED871B38);
LABEL_124:
    v264 = sub_1ABF237F4();
    sub_1ABAA2318(v264, qword_1ED871B40);
    sub_1ABD1BD18();
    v267 = *(v80 + 16);
    v265 = v80 + 16;
    v266 = v267;
    v267(v285, v321, v322);
    v242 = sub_1ABF237D4();
    v268 = sub_1ABF24664();
    if (!sub_1ABA9E624(v268))
    {

      (*(v319[0] + 8))(v285, v322);
      goto LABEL_55;
    }

    sub_1ABA8E2E8();
    v269 = sub_1ABAB5B88();
    v324 = v269;
    v270 = sub_1ABD1BDB0(4.9654e-34);
    v266(v270, v285, v322);
    sub_1ABF23C94();
    sub_1ABD1B6A8();
    v271 = sub_1ABA97F40();
    v272(v271);
    sub_1ABD1B55C();
    sub_1ABD1BA80();

    *(v88 + 4) = v265;
    sub_1ABA8D1E0();
    _os_log_impl(v273, v274, v275, v276, v277, 0xCu);
    sub_1ABA84B54(v269);
LABEL_110:
    sub_1ABA7BC34();
    sub_1ABA90C1C();

    goto LABEL_55;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[1080], *(_Records_GDEntityPredicate_records + 271), *(_Records_GDEntityPredicate_records + 272), &v324);
  sub_1ABA88FC8();
  if (v87 && v82 == v83)
  {
    sub_1ABD1B964();

    goto LABEL_64;
  }

  sub_1ABA89938();
  sub_1ABF25054();
  sub_1ABA7F240();

  if (v73)
  {
    sub_1ABAA0C8C();
LABEL_64:
    sub_1ABD1BA08();

    sub_1ABD1B7BC();
    sub_1ABD1BE88();
    v168 = sub_1ABAB5978();
    v169(v168);
    sub_1ABD1BF10();
    v170 = v300;
    LODWORD(v82) = v80;
    v171 = v320;
    v172(v320, v76);
    v173 = sub_1ABAA1B2C();
    v174(v173, v171);
    v80 = v317;
    if (sub_1ABA7E1E0(v170, 1, v317) == 1)
    {
      v175 = sub_1ABD1B650();
      v176(v175);
      if (qword_1ED871B38 != -1)
      {
        sub_1ABA7D178(&qword_1ED871B38);
      }

      v177 = sub_1ABF237F4();
      sub_1ABAA2318(v177, qword_1ED871B40);
      sub_1ABD1B578();
      v128 = v323;
      goto LABEL_29;
    }

    sub_1ABD1BA50();
    v178 = sub_1ABAA4810();
    v179(v178);
    v180 = v297;
    v181 = sub_1ABAA1DFC();
    v182(v181);
    v183 = sub_1ABD19740();
    sub_1ABA7AC64();
    v184 = swift_getAssociatedConformanceWitness();
    CustomGraphLocationRelationship.init<A>(from:initializationResources:)(&v324, v180, &type metadata for CustomGraphLocation, v80, v183, v184);
    if (!v24 && v326)
    {
      sub_1ABA7C32C(v292 + 16, v323);
      sub_1ABB4DD28();
      v185 = sub_1ABD1BD7C();
      sub_1ABB4E12C(v185);
      sub_1ABA8A43C();
    }

    goto LABEL_53;
  }

  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
LABEL_137:
    __break(1u);
LABEL_138:
    __break(1u);
    goto LABEL_139;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[1920], *(_Records_GDEntityPredicate_records + 481), *(_Records_GDEntityPredicate_records + 482), &v324);
  sub_1ABA88FC8();
  if (v87 && v82 == v83)
  {
    sub_1ABD1B964();

    goto LABEL_79;
  }

  sub_1ABA89938();
  sub_1ABF25054();
  sub_1ABA7F240();

  if (v73)
  {
    sub_1ABAA0C8C();
LABEL_79:
    sub_1ABD1BA08();

    sub_1ABAA5634();
    sub_1ABD1BE88();
    v63 = v322;
    v187 = sub_1ABA8BBFC();
    v189 = v188(v187);
    sub_1ABD1B4FC(v189, v190, v191, &protocol requirements base descriptor for BaseEntityFactProtocol, &associated conformance descriptor for BaseEntityFactProtocol.BaseEntityFactProtocol.Object: BaseEntityFactObjectProtocol);
    sub_1ABAA6720();
    LODWORD(v82) = v80;
    v192(v88);
    v193 = sub_1ABAA1B2C();
    v194(v193, v88);
    if (v325)
    {
      if (qword_1ED871B38 == -1)
      {
LABEL_81:
        v202 = sub_1ABF237F4();
        sub_1ABAA2318(v202, qword_1ED871B40);
        sub_1ABD1B578();
        v128 = &v320;
LABEL_29:
        v129 = *(v128 - 32);
        v130 = sub_1ABA7D0EC();
        v76(v130);
        v106 = sub_1ABF237D4();
        v131 = sub_1ABF24664();
        if (!sub_1ABA9E624(v131))
        {

          (*(v73 + 8))(v129, v63);
          goto LABEL_55;
        }

        v132 = sub_1ABA8E2E8();
        LODWORD(v321) = v82;
        v133 = v132;
        v134 = v73;
        v135 = swift_slowAlloc();
        v324 = v135;
        *v133 = 136642819;
        (v76)(v315, v129, v63);
        sub_1ABA97F40();
        sub_1ABF23C94();
        sub_1ABD1B6A8();
        (*(v134 + 8))(v129, v63);
        sub_1ABD1B55C();
        sub_1ABD1BA80();

        *(v133 + 4) = v80;
        _os_log_impl(&dword_1ABA78000, v106, v321, "Failed to parse %{sensitive}s.", v133, 0xCu);
        sub_1ABA84B54(v135);
        sub_1ABA7BC34();
        goto LABEL_31;
      }

LABEL_129:
      sub_1ABA7D178(&qword_1ED871B38);
      goto LABEL_81;
    }

    sub_1ABC4A630(v324, v195, v196, v197, v198, v199, v200, v201);
    if (v24)
    {
      goto LABEL_55;
    }

    p_AssociatedConformanceWitness = v319;
LABEL_84:
    sub_1ABA8C160(*(p_AssociatedConformanceWitness - 32) + 16, &v324);
    sub_1ABB4DD40();
    v204 = sub_1ABD1BD44();
    sub_1ABB4E144(v204);
    sub_1ABD1B540();
    goto LABEL_55;
  }

  if (!_Records_GDEntityPredicate_records)
  {
    goto LABEL_137;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[1932], *(_Records_GDEntityPredicate_records + 484), *(_Records_GDEntityPredicate_records + 485), &v324);
  sub_1ABA88FC8();
  v205 = v87 && v82 == v83;
  v63 = v322;
  if (v205)
  {
    sub_1ABD1B964();

LABEL_93:
    sub_1ABD1BA08();

    sub_1ABAA5634();
    sub_1ABD1BE88();
    v206 = sub_1ABA8BBFC();
    v208 = v207(v206);
    sub_1ABD1B4FC(v208, v209, v210, &protocol requirements base descriptor for BaseEntityFactProtocol, &associated conformance descriptor for BaseEntityFactProtocol.BaseEntityFactProtocol.Object: BaseEntityFactObjectProtocol);
    sub_1ABAA6720();
    LODWORD(v82) = v80;
    v211(v88);
    v212 = sub_1ABAA1B2C();
    v213(v212, v88);
    if ((v325 & 1) == 0)
    {
      sub_1ABC4A630(v324, v214, v215, v216, v217, v218, v219, v220);
      if (v24)
      {
        goto LABEL_55;
      }

      p_AssociatedConformanceWitness = &AssociatedConformanceWitness;
      goto LABEL_84;
    }

    if (qword_1ED871B38 == -1)
    {
LABEL_95:
      v221 = sub_1ABF237F4();
      sub_1ABAA2318(v221, qword_1ED871B40);
      sub_1ABD1B578();
      v128 = &v318;
      goto LABEL_29;
    }

LABEL_131:
    sub_1ABA7D178(&qword_1ED871B38);
    goto LABEL_95;
  }

  sub_1ABA89938();
  sub_1ABF25054();
  sub_1ABA7F240();

  if (v73)
  {
    sub_1ABAA0C8C();
    goto LABEL_93;
  }

  if (!_Records_GDEntityPredicate_records)
  {
    goto LABEL_138;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[240], *(_Records_GDEntityPredicate_records + 61), *(_Records_GDEntityPredicate_records + 62), &v324);
  sub_1ABA88FC8();
  if (v87 && v82 == v83)
  {
    sub_1ABD1B964();

LABEL_106:

    sub_1ABAA5634();
    sub_1ABD1BA50();
    v83 = v321;
    v223 = sub_1ABA8BBFC();
    v225 = v224(v223);
    sub_1ABD1B4FC(v225, v226, v227, &protocol requirements base descriptor for BaseEntityFactProtocol, &associated conformance descriptor for BaseEntityFactProtocol.BaseEntityFactProtocol.Object: BaseEntityFactObjectProtocol);
    sub_1ABAA6720();
    v228(v88);
    v229 = sub_1ABAA0C6C();
    v230(v229);
    if ((v325 & 1) == 0)
    {
      sub_1ABC4CBC0(v324, v231, v232, v233, v234, v235, v236, v237, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, v299, v300, v301, v302, v303, v304, v305, v306, v307, v308);
      if (!v24)
      {
        v251 = v323[0];
        sub_1ABA8C160(a21 + 16, &v324);
        sub_1ABB4DE48();
        v252 = sub_1ABD1BCE4();
        sub_1ABB4E24C(v252);
        v253 = *(a21 + 16);
        *(v253 + 16) = v83 + 1;
        *(v253 + 8 * v83 + 32) = v251;
        *(a21 + 16) = v253;
      }

      goto LABEL_55;
    }

    if (qword_1ED871B38 == -1)
    {
      goto LABEL_108;
    }

    goto LABEL_133;
  }

  sub_1ABA89938();
  sub_1ABF25054();
  sub_1ABA7F240();

  if (v73)
  {
    sub_1ABAA0C8C();
    goto LABEL_106;
  }

  if (_Records_GDEntityPredicate_records)
  {
    sub_1ABA91D48(_Records_GDEntityPredicate_records[1200], *(_Records_GDEntityPredicate_records + 301), *(_Records_GDEntityPredicate_records + 302), &v324);
    v254 = v327;
    if (v324 == v282 && v325 == v83)
    {

      sub_1ABD1B964();
    }

    else
    {
      sub_1ABA89938();
      sub_1ABF25054();
      sub_1ABA7F240();

      sub_1ABD1B964();

      if ((v73 & 1) == 0)
      {
        goto LABEL_55;
      }
    }

    sub_1ABAA5634();
    sub_1ABD1BA50();
    v258(v322, v254);
    sub_1ABA7D0EC();
    v88 = v320;
    swift_getAssociatedConformanceWitness();
    v259 = BaseEntityFactObjectProtocol.asDouble.getter();
    v261 = v260;
    v262 = sub_1ABAA0C6C();
    v263(v262);
    if ((v261 & 1) == 0)
    {
      sub_1ABA8C160(a22 + 16, &v324);
      sub_1ABB4DCB0();
      v278 = sub_1ABAB5F24();
      sub_1ABB4E0CC(v278);
      sub_1ABAA33C0();
      *(v279 + 32) = v259;
      *(a22 + 16) = v280;
      goto LABEL_55;
    }

    if (qword_1ED871B38 == -1)
    {
      goto LABEL_124;
    }

    goto LABEL_135;
  }

LABEL_139:
  __break(1u);
}

uint64_t sub_1ABCC3164()
{
  sub_1ABA81488();
  v3 = v1 == 0x64496465707974 && v2 == 0xE700000000000000;
  if (v3 || (sub_1ABA89938(), (sub_1ABF25054() & 1) != 0))
  {

    return 0;
  }

  else
  {
    v5 = v1 == 1701667182 && v0 == 0xE400000000000000;
    if (v5 || (sub_1ABA89938(), (sub_1ABF25054() & 1) != 0))
    {

      return 1;
    }

    else
    {
      v6 = v1 == 1702125924 && v0 == 0xE400000000000000;
      if (v6 || (sub_1ABA89938(), (sub_1ABF25054() & 1) != 0))
      {

        return 2;
      }

      else
      {
        v7 = v1 == 0x6565646E65747461 && v0 == 0xE900000000000073;
        if (v7 || (sub_1ABA89938(), (sub_1ABF25054() & 1) != 0))
        {

          return 3;
        }

        else
        {
          v8 = v1 == 0x6E6F697461636F6CLL && v0 == 0xE900000000000073;
          if (v8 || (sub_1ABA89938(), (sub_1ABF25054() & 1) != 0))
          {

            return 4;
          }

          else
          {
            v10 = v1 == sub_1ABD1BB7C() && v0 == v9;
            if (v10 || (sub_1ABA89938(), (sub_1ABF25054() & 1) != 0))
            {

              return 5;
            }

            else
            {
              v12 = v1 == sub_1ABD1BC94() && v0 == v11;
              if (v12 || (sub_1ABA89938(), (sub_1ABF25054() & 1) != 0))
              {

                return 6;
              }

              else
              {
                v13 = v1 == 0xD000000000000012 && 0x80000001ABF8D5E0 == v0;
                if (v13 || (sub_1ABA89938(), (sub_1ABF25054() & 1) != 0))
                {

                  return 7;
                }

                else
                {
                  v15 = v1 == sub_1ABD1BC74() && v0 == v14;
                  if (v15 || (sub_1ABA89938(), (sub_1ABF25054() & 1) != 0))
                  {

                    return 8;
                  }

                  else if (v1 == 0x6E656469666E6F63 && v0 == 0xEA00000000006563)
                  {

                    return 9;
                  }

                  else
                  {
                    sub_1ABA89938();
                    v17 = sub_1ABF25054();

                    if (v17)
                    {
                      return 9;
                    }

                    else
                    {
                      return 10;
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

uint64_t sub_1ABCC3424(char a1)
{
  result = 0x64496465707974;
  switch(a1)
  {
    case 1:
      result = 1701667182;
      break;
    case 2:
      result = 1702125924;
      break;
    case 3:
      result = 0x6565646E65747461;
      break;
    case 4:
      result = 0x6E6F697461636F6CLL;
      break;
    case 5:
      result = sub_1ABD1BB7C();
      break;
    case 6:
      result = sub_1ABD1BC94();
      break;
    case 7:
      result = 0xD000000000000012;
      break;
    case 8:
      result = sub_1ABD1BC74();
      break;
    case 9:
      result = 0x6E656469666E6F63;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1ABCC3530(uint64_t a1)
{
  v2 = sub_1ABD0BE5C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABCC356C(uint64_t a1)
{
  v2 = sub_1ABD0BE5C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void CustomGraphDrivingActivityEvent.encode(to:)()
{
  sub_1ABA7BCA8();
  sub_1ABA89B64();
  sub_1ABAD219C(&qword_1EB4D6D98, &dword_1ABF50ED0);
  sub_1ABA96D00();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v1);
  sub_1ABA7E338();
  sub_1ABA8EA00();
  v2 = sub_1ABD0BE5C();
  sub_1ABA8D27C(&type metadata for CustomGraphDrivingActivityEvent.CodingKeys, v3, v2);
  sub_1ABA9F0C4();
  v4 = sub_1ABA8C744();
  sub_1ABAD219C(v4, v5);
  sub_1ABA7D99C();
  sub_1ABD1044C(v6);
  v7 = sub_1ABAA19EC();
  sub_1ABAA6564(v7, v8, v9);
  if (!v0)
  {
    sub_1ABAA073C();

    sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
    sub_1ABD09E38();
    v10 = sub_1ABAA2D10();
    sub_1ABAA6564(v10, v11, v12);
    sub_1ABAA1210();

    type metadata accessor for CustomGraphDrivingActivityEvent(0);
    sub_1ABA8CB28();
    sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
    sub_1ABA80C14();
    sub_1ABD0A358(v13);
    v14 = sub_1ABA82E78();
    sub_1ABAA6564(v14, v15, v16);
    sub_1ABAB5AF0();
    sub_1ABAD219C(&qword_1EB4D65E0, &qword_1ABF50B50);
    sub_1ABD09F00();
    v17 = sub_1ABAA2D10();
    sub_1ABAA6564(v17, v18, v19);
    sub_1ABAA17C0();
    sub_1ABAD219C(&qword_1EB4D6610, &unk_1ABF50B70);
    sub_1ABD0A060();
    v20 = sub_1ABAA2D10();
    sub_1ABAA6564(v20, v21, v22);
    sub_1ABAA2300(12);
    sub_1ABD1AFDC();

    sub_1ABAD219C(&qword_1EB4D6628, &unk_1ABF50B80);
    sub_1ABD0A110();
    sub_1ABAA1328();

    sub_1ABAA2300(348786);
    sub_1ABD1AFD0();

    v25 = sub_1ABD1ABF4();
    sub_1ABD1AF60(v25, v26, v27);

    sub_1ABAA2300(12);
    sub_1ABD1AFC4();

    sub_1ABAD219C(&qword_1EB4D66F0, &qword_1ABF50BB8);
    sub_1ABD0A808();
    v28 = sub_1ABAA2D10();
    sub_1ABAA6564(v28, v29, v30);
    sub_1ABD1AFA0();

    sub_1ABA98014(348792);
    sub_1ABD1AFB8();

    sub_1ABAD219C(&qword_1EB4D6718, &dword_1ABF50BC8);
    sub_1ABD0A8F4();
    v31 = sub_1ABAA2D10();
    sub_1ABAA6564(v31, v32, v33);
    sub_1ABD1AFA0();

    sub_1ABAA2300(12);
    sub_1ABD1AFE8();

    sub_1ABAD219C(&qword_1EB4D6738, &dword_1ABF50BD0);
    sub_1ABD0AA28();
    v34 = sub_1ABAA2D10();
    sub_1ABAA6564(v34, v35, v36);
  }

  v23 = sub_1ABA89DE4();
  v24(v23);
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void CustomGraphDrivingActivityEvent.init(from:)()
{
  sub_1ABA7BCA8();
  sub_1ABA89524();
  sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
  sub_1ABA8CD04();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v7);
  sub_1ABA9F7AC();
  v8 = sub_1ABAD219C(&qword_1EB4D6DB8, &unk_1ABF50EE0);
  sub_1ABA960BC(v8);
  v10 = v9;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v11);
  v12 = sub_1ABAB67BC();
  v13 = type metadata accessor for CustomGraphDrivingActivityEvent(v12);
  v14 = sub_1ABAB6924(v13);
  MEMORY[0x1EEE9AC00](v14);
  sub_1ABA7C21C();
  v31 = v15;
  sub_1ABA90D04();
  v16 = sub_1ABD0BE5C();
  sub_1ABA9F458(&type metadata for CustomGraphDrivingActivityEvent.CodingKeys, v17, v16);
  if (v1)
  {
    sub_1ABA81914();
    sub_1ABA90FE0();
    if (v0)
    {
      sub_1ABAA5D48();

      if (v1)
      {
        goto LABEL_5;
      }
    }

    else if (v1)
    {
LABEL_5:
      sub_1ABA8A78C();
      sub_1ABAB480C(v31 + v26, &qword_1EB4D5F30, &unk_1ABF50B00);
      if ((v6 & 1) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }

    if (!v6)
    {
LABEL_6:
      if (v5)
      {
        goto LABEL_7;
      }

      goto LABEL_15;
    }

LABEL_14:
    sub_1ABD1B370();
    if (v5)
    {
LABEL_7:
      sub_1ABD1B314();
      if ((v4 & 1) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_16;
    }

LABEL_15:
    if (!v4)
    {
LABEL_8:
      if (v3)
      {
        goto LABEL_9;
      }

      goto LABEL_17;
    }

LABEL_16:
    sub_1ABA88814();
    if (v3)
    {
LABEL_9:
      sub_1ABD1B2FC();
      if ((v2 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_18;
    }

LABEL_17:
    if (!v2)
    {
LABEL_10:
      if (!v10)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

LABEL_18:
    sub_1ABAA1044();
    if ((v10 & 1) == 0)
    {
      goto LABEL_20;
    }

LABEL_19:
    sub_1ABAA20FC();
    goto LABEL_20;
  }

  v18 = sub_1ABA7ABE4();
  sub_1ABAD219C(v18, v19);
  sub_1ABAAFAF4();
  sub_1ABA8F54C();
  sub_1ABD1044C(v20);
  v21 = sub_1ABA841C4();
  sub_1ABAA212C(v21, v22, v23, v24, v25);
  sub_1ABA9EAC4();
  sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
  sub_1ABA89A14();
  sub_1ABD0A2D4();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA88ACC();
  sub_1ABAA2660();
  sub_1ABA7F460();
  v28 = sub_1ABD0A358(v27);
  sub_1ABAB54E0(v28);
  sub_1ABA8A800();
  sub_1ABA94EB8();
  sub_1ABAD219C(&qword_1EB4D65E0, &qword_1ABF50B50);
  sub_1ABA9ED60();
  sub_1ABD0A408();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA89318();
  sub_1ABAD219C(&qword_1EB4D6610, &unk_1ABF50B70);
  sub_1ABA9EC10();
  sub_1ABD0A568();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA897A8();
  sub_1ABAD219C(&qword_1EB4D6628, &unk_1ABF50B80);
  sub_1ABD1AFDC();
  sub_1ABD0A618();
  sub_1ABA83974();
  sub_1ABF24E64();
  sub_1ABA7C300();
  sub_1ABAB5D1C();
  sub_1ABF24E64();
  sub_1ABAA314C();
  sub_1ABAD219C(&qword_1EB4D66F0, &qword_1ABF50BB8);
  sub_1ABA893EC();
  sub_1ABD0AB5C();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABAA297C();
  sub_1ABAD219C(&qword_1EB4D6718, &dword_1ABF50BC8);
  sub_1ABD1AFB8();
  sub_1ABD0AC48();
  sub_1ABA93610();
  sub_1ABF24E64();
  sub_1ABA958A0();
  sub_1ABAD219C(&qword_1EB4D6738, &dword_1ABF50BD0);
  sub_1ABD1AFE8();
  sub_1ABD0ACD4();
  sub_1ABA93610();
  sub_1ABF24E64();
  v29 = sub_1ABA9F94C();
  v30(v29);
  sub_1ABA94AC4();
  sub_1ABD0AD58();
  sub_1ABAA91B0();
LABEL_20:
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void static CustomGraphBehaviorActivityEvent.getEntityClass()()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xCD8), *(_Records_GDEntityClass_records + 0xCE0), *(_Records_GDEntityClass_records + 0xCE8), v11);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v8, v10, v9, v11[0], v11[1], v12);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1ABCC3F68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v98 = a2;
  v99 = a1;
  v97 = a4;
  v5 = sub_1ABAD219C(&qword_1EB4D5F20, &qword_1ABF4F358);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v93 = &v82 - v6;
  v7 = swift_allocObject();
  v106 = v7;
  v8 = MEMORY[0x1E69E7CC0];
  *(v7 + 16) = MEMORY[0x1E69E7CC0];
  v87 = (v7 + 16);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v88 = v9 + 16;
  v10 = swift_allocObject();
  v103 = v10;
  *(v10 + 16) = v8;
  v89 = (v10 + 16);
  v11 = swift_allocObject();
  *(v11 + 16) = v8;
  v90 = (v11 + 16);
  v12 = swift_allocObject();
  *(v12 + 16) = v8;
  v91 = v12 + 16;
  v13 = swift_allocObject();
  *(v13 + 16) = v8;
  v92 = (v13 + 16);
  v14 = swift_allocObject();
  *(v14 + 16) = v8;
  v96 = v14 + 16;
  v15 = swift_allocObject();
  *(v15 + 16) = v8;
  v94 = (v15 + 16);
  v16 = swift_allocObject();
  *(v16 + 16) = v8;
  v95 = v16 + 16;
  v17 = a3;
  v18 = swift_allocObject();
  v18[2] = v106;
  v18[3] = v17;
  v19 = v103;
  v18[4] = v9;
  v18[5] = v19;
  v18[6] = v11;
  v18[7] = v12;
  v18[8] = v13;
  v18[9] = v14;
  v18[10] = v15;
  v18[11] = v16;

  v102 = v9;
  v20 = v13;

  v101 = v11;

  v21 = v100;
  (v99)(v105, sub_1ABCC4FE0, 0, sub_1ABD19C84, v18);
  if (v21)
  {

LABEL_17:
  }

  v100 = 0;
  v85 = v12;
  v86 = v14;
  v98 = v15;
  v99 = v16;

  v84 = v105[0];
  v22 = v96;
  swift_beginAccess();
  v30 = *v22;
  v31 = *(*v22 + 16);
  if (v31)
  {
    v83 = v17;

    v32 = MEMORY[0x1E69E7CC0];
    v33 = 32;
    do
    {
      EntityClass.init(intValue:)(*(v30 + v33 + 7), v105);
      if (v105[1])
      {
        ActivityEventType.init(activityTypeEntityClass:)(v105, v104);
        v34 = v104[0];
        if (v104[0] != 25)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1ABADADEC(0, *(v32 + 16) + 1, 1, v32);
            v32 = v37;
          }

          v36 = *(v32 + 16);
          v35 = *(v32 + 24);
          if (v36 >= v35 >> 1)
          {
            sub_1ABADADEC(v35 > 1, v36 + 1, 1, v32);
            v32 = v38;
          }

          *(v32 + 16) = v36 + 1;
          *(v32 + v36 + 32) = v34;
        }
      }

      v33 += 8;
      --v31;
    }

    while (v31);
  }

  else
  {
    v32 = MEMORY[0x1E69E7CC0];
  }

  v39 = v100;
  sub_1ABC4C7B0(v84, v23, v24, v25, v26, v27, v28, v29, v82, v83, v84, v85, v86);
  if (v39)
  {

    goto LABEL_17;
  }

  v100 = 0;
  v41 = v97;
  *v97 = v105[0];
  v42 = v87;
  swift_beginAccess();
  v43 = *v42;
  v44 = sub_1ABB2B834(v43);
  v41[1] = v43;
  v41[2] = v44;
  v41[3] = v45;
  swift_beginAccess();
  v46 = type metadata accessor for CustomGraphDateRelationship(0);
  v47 = v93;
  sub_1ABA7B9B4(v93, 1, 1, v46);
  v48 = type metadata accessor for CustomGraphBehaviorActivityEvent(0);
  v49 = v48[6];

  sub_1ABC8B318(v50, v47, (v41 + v49));
  v51 = v89;
  swift_beginAccess();
  v52 = v48[7];
  v93 = *v51;
  *(v41 + v52) = v93;
  v53 = v90;
  swift_beginAccess();
  v54 = v48[8];
  v90 = *v53;
  *(v41 + v54) = v90;
  v55 = v91;
  swift_beginAccess();
  v56 = *v55;
  v57 = *(*v55 + 16);
  if (v57)
  {
    v58 = *(v56 + 32);
  }

  else
  {
    v58 = 0;
  }

  v59 = v94;
  v60 = v92;
  v61 = v97 + v48[9];
  *v61 = v56;
  *(v61 + 1) = v58;
  v61[16] = v57 == 0;
  swift_beginAccess();
  v62 = *v60;
  v63 = *(v62 + 16);
  v82 = v20;
  if (v63)
  {
    v64 = *(v62 + 32);
  }

  else
  {
    v64 = 0;
  }

  v65 = v97;
  v66 = v97 + v48[10];
  *v66 = v62;
  *(v66 + 1) = v64;
  v66[16] = v63 == 0;
  v67 = *v22;
  v68 = *(v67 + 16);
  if (v68)
  {
    v69 = *(v67 + 32);
  }

  else
  {
    v69 = 0;
  }

  v70 = v65 + v48[11];
  *v70 = v67;
  *(v70 + 1) = v69;
  v70[16] = v68 == 0;
  if (*(v32 + 16))
  {
    v71 = *(v32 + 32);
  }

  else
  {
    v71 = 25;
  }

  v72 = v65 + v48[12];
  *v72 = v32;
  v72[8] = v71;
  swift_beginAccess();
  v73 = *v59;
  v74 = *(v73 + 16);
  if (v74)
  {
    v75 = *(v73 + 32);
  }

  else
  {
    v75 = 0;
  }

  v76 = v97;
  v77 = v97 + v48[13];
  *v77 = v73;
  *(v77 + 1) = v75;
  v77[16] = v74 == 0;
  swift_beginAccess();
  v78 = *(v99 + 16);
  v96 = sub_1ABB2B834(v78);
  v95 = v79;

  v80 = (v76 + v48[14]);
  v81 = v96;
  *v80 = v78;
  v80[1] = v81;
  v80[2] = v95;
}

void sub_1ABCC4850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1ABA7BCA8();
  sub_1ABA9E2C4(v10, v11, v12, v13, v14);
  sub_1ABD1B6D0(v15);
  v16 = sub_1ABAD219C(&qword_1EB4D5F20, &qword_1ABF4F358);
  sub_1ABA7AB80(v16);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v17);
  sub_1ABA7FBE0();
  sub_1ABA8147C(v18);
  sub_1ABA7D028();
  v111 = swift_allocObject();
  sub_1ABD1B09C(v111);
  sub_1ABD1B3DC(v19);
  sub_1ABA7D028();
  v110 = swift_allocObject();
  sub_1ABD1B09C(v110);
  sub_1ABD1B6E8(v20);
  sub_1ABA7D028();
  v21 = swift_allocObject();
  sub_1ABD1B09C(v21);
  v102 = v22;
  sub_1ABA7D028();
  v23 = swift_allocObject();
  sub_1ABD1B09C(v23);
  sub_1ABD1BD0C(v24);
  sub_1ABA7D028();
  v25 = swift_allocObject();
  sub_1ABD1B09C(v25);
  sub_1ABD1B3C4(v26);
  sub_1ABA7D028();
  v27 = swift_allocObject();
  sub_1ABD1B09C(v27);
  sub_1ABD1BE50(v28);
  sub_1ABA7D028();
  v29 = swift_allocObject();
  sub_1ABD1B09C(v29);
  sub_1ABD1B61C(v30);
  sub_1ABA7D028();
  v31 = swift_allocObject();
  sub_1ABD1B09C(v31);
  sub_1ABD1BE44(v32);
  sub_1ABA7D028();
  v33 = swift_allocObject();
  sub_1ABD1B09C(v33);
  sub_1ABD1BA5C(v34);
  sub_1ABD1B534();
  v35 = swift_allocObject();
  v35[2] = v108;
  v35[3] = v109;
  v35[4] = sub_1ABA9EA34();
  v35[5] = a10;
  v35[6] = v110;
  v35[7] = v21;
  v35[8] = v23;
  v35[9] = v25;
  v35[10] = v27;
  v35[11] = v29;
  v35[12] = v31;
  v35[13] = v33;

  v36 = v25;

  sub_1ABD1B700();
  sub_1ABD1B6B4();
  v37();
  if (v110)
  {

    sub_1ABA9EA34();

    sub_1ABAA1460();

    sub_1ABD1BC5C();
  }

  else
  {
    v99 = v27;
    v100 = v33;

    sub_1ABD1C01C();
    sub_1ABAAD280();
    v38 = v27;
    v39 = *v27;
    v40 = *(v39 + 16);
    if (v40)
    {
      v98 = v31;

      v41 = MEMORY[0x1E69E7CC0];
      v42 = 32;
      do
      {
        sub_1ABD1B924(v39 + v42);
        if (v116)
        {
          sub_1ABAA0AB0(v116);
          sub_1ABD1B9E4();
          v43 = v114[0];
          if (v114[0] != 25)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v45 = sub_1ABA8A534();
              sub_1ABADADEC(v45, v46, v47, v48);
              v41 = v49;
            }

            v36 = *(v41 + 16);
            v44 = *(v41 + 24);
            if (v36 >= v44 >> 1)
            {
              sub_1ABA7BBEC(v44);
              sub_1ABA9ECC4();
              sub_1ABADADEC(v50, v51, v52, v53);
              v41 = v54;
            }

            *(v41 + 16) = v36 + 1;
            *(v36 + v41 + 32) = v43;
          }
        }

        v42 += 8;
        --v40;
      }

      while (v40);
    }

    else
    {
      v41 = MEMORY[0x1E69E7CC0];
    }

    v55 = sub_1ABD1BE5C();
    sub_1ABC4C7B0(v55, v56, v57, v58, v59, v60, v61, v62, v98, v99, v31, v100, v102);
    sub_1ABD1BE30();
    v64 = *(v63 - 256);
    *v36 = v115;
    sub_1ABAA9068(v64, &v115);
    v65 = *v104;
    v66 = sub_1ABB2B834(*v104);
    v36[1] = v65;
    v36[2] = v66;
    v36[3] = v67;
    sub_1ABD1B080(v66, v114);
    sub_1ABD1AF20();
    v71 = sub_1ABA9DFB8(v107, v68, v69, v70);
    v72 = type metadata accessor for CustomGraphBehaviorActivityEvent(v71);
    sub_1ABD1C23C();

    sub_1ABC8B318(v73, v107, v36);
    sub_1ABAAD280();
    sub_1ABD1BDEC(v72[7]);
    sub_1ABAAD280();
    sub_1ABD1BDEC(v72[8]);
    sub_1ABD1B1F4(v74, &v113);
    sub_1ABD1BFD0();
    sub_1ABAAFB28();
    v75 = (v36 + v72[9]);
    *v75 = v105;
    v75[1] = v76;
    sub_1ABD1BE04(v77);
    sub_1ABD1B03C(v78, v79);
    sub_1ABD1BA44();
    sub_1ABAAFB28();
    sub_1ABD1BCCC(v80);
    v81 = *v38;
    sub_1ABAAFB28();
    v82 = (v36 + v72[11]);
    *v82 = v81;
    v82[1] = v83;
    sub_1ABA889F8(v84);
    if (v85)
    {
      v86 = *(v41 + 32);
    }

    else
    {
      v86 = 25;
    }

    sub_1ABAA5C0C(v86);
    sub_1ABAAA634(v87, v88);
    v89 = *v103;
    sub_1ABAAFB28();
    v90 = v36 + v72[13];
    *v90 = v89;
    *(v90 + 1) = v91;
    v90[16] = v92;
    sub_1ABA7F2A0(v93, &v112);
    v94 = *(v101 + 16);
    v95 = sub_1ABB2B834(v94);
    v106 = v96;

    sub_1ABD1C2FC();

    v97 = (v36 + v72[14]);
    *v97 = v94;
    v97[1] = v95;
    v97[2] = v106;
    sub_1ABA9EA34();

    sub_1ABAA2168();

    sub_1ABAA1460();

    sub_1ABD1BC5C();
    sub_1ABD1B628();
  }

  sub_1ABA7AC0C();
  sub_1ABA7BC90();
}

void sub_1ABCC4FE0(uint64_t a1, __n128 a2)
{
  EntityClass.init(intValue:)(*(a1 + 7), &v23);
  v2 = *(&v23 + 1);
  if (!*(&v23 + 1))
  {
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v8 = sub_1ABF237F4();
    sub_1ABA7AA24(v8, qword_1ED871B40);
    v9 = sub_1ABF237D4();
    v10 = sub_1ABF24674();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1ABA78000, v9, v10, "entityClass is nil in CustomGraphBehaviorActivityEvent init", v11, 2u);
      MEMORY[0x1AC5AB8B0](v11, -1, -1);
    }

    sub_1ABB6DA08();
    swift_allocError();
    *v12 = 2;
    *(v12 + 8) = 0u;
    *(v12 + 24) = 0u;
    *(v12 + 33) = 0u;
    *(v12 + 49) = 2;
    goto LABEL_15;
  }

  if (_Records_GDEntityClass_records)
  {
    v3 = v23;
    v4 = v24;
    v5 = v25;
    v6 = v26;
    sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xCD8), *(_Records_GDEntityClass_records + 0xCE0), *(_Records_GDEntityClass_records + 0xCE8), v36);
    v7 = v37 == v4 && v5 == v38;
    if (v7 || (sub_1ABF25054() & 1) != 0)
    {
      sub_1ABA88934(v36);
LABEL_9:
      sub_1ABAA8FA8(v3, v2, v4, v5);
      return;
    }

    *&v23 = v3;
    *(&v23 + 1) = v2;
    v24 = v4;
    v25 = v5;
    LOBYTE(v26) = v6;
    EntityClass.ancestorClassesSet.getter();
    sub_1ABAA6788(v36, v13, v14, v15, v16, v17, v18, v19, v23, SBYTE8(v23), v24, v25, v26, v27, v28, v29, v30, v31, v32, *(&v32 + 1), v33, v34, v35, v36[0], v36[1], v37, v38, v39, v40, v41);
    v21 = v20;

    sub_1ABA88934(v36);
    if (v21)
    {
      goto LABEL_9;
    }

    if (_Records_GDEntityClass_records)
    {
      sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xCD8), *(_Records_GDEntityClass_records + 0xCE0), *(_Records_GDEntityClass_records + 0xCE8), &v32);
      v23 = v32;
      v24 = v33;
      v25 = v34;
      LOBYTE(v26) = v35;
      v27 = v3;
      v28 = v2;
      v29 = v4;
      v30 = v5;
      LOBYTE(v31) = v6;
      sub_1ABC7B1C0();
      swift_allocError();
      sub_1ABC81B08(&v23, v22);
LABEL_15:
      swift_willThrow();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1ABCC5278(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v138 = a7;
  v140 = a5;
  v142 = a4;
  v143 = a3;
  v16 = sub_1ABAD219C(&qword_1EB4D5F20, &qword_1ABF4F358);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v135 - v17;
  v19 = type metadata accessor for CustomGraphDateRelationship(0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v135 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = 279;
  v141 = v22;
  v139 = a6;
  v137 = a8;
  v145 = v11;
  if (!_Records_GDEntityPredicate_records)
  {
    goto LABEL_126;
  }

  v23 = *a1;
  v24 = a1[1];
  v166 = a1;
  sub_1ABA91D48(_Records_GDEntityPredicate_records[12], *(_Records_GDEntityPredicate_records + 4), *(_Records_GDEntityPredicate_records + 5), v163);
  if (*&v163[0] == v23 && *(&v163[0] + 1) == v24)
  {

LABEL_61:
    v68 = v166;
    if (!*(v166 + 97))
    {
      v79 = v166[5];
      v78 = v166[6];
      swift_beginAccess();

      sub_1ABB4DC20();
      v80 = *(*(a2 + 16) + 16);
      sub_1ABB4E024(v80);
      v81 = *(a2 + 16);
      *(v81 + 16) = v80 + 1;
      v82 = v81 + 16 * v80;
      *(v82 + 32) = v79;
      *(v82 + 40) = v78;
      *(a2 + 16) = v81;
      goto LABEL_68;
    }

    goto LABEL_62;
  }

  v136 = v23;
  v26 = sub_1ABF25054();

  if (v26)
  {
    goto LABEL_61;
  }

  if (v144 < 0x92)
  {
    __break(1u);
LABEL_110:

    goto LABEL_111;
  }

  if (!_Records_GDEntityPredicate_records)
  {
    goto LABEL_128;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[1740], *(_Records_GDEntityPredicate_records + 436), *(_Records_GDEntityPredicate_records + 437), v163);
  if (*&v163[0] == v136 && *(&v163[0] + 1) == v24)
  {

LABEL_70:
    v68 = v166;
    *(v162 + 10) = *(v166 + 82);
    v83 = *(v166 + 7);
    v160 = *(v166 + 5);
    v161 = v83;
    v162[0] = *(v166 + 9);
    if (BYTE9(v162[1]) == 1)
    {
      v84 = *(v166 + 7);
      v164[0] = *(v166 + 5);
      v164[1] = v84;
      *v165 = *(v166 + 9);
      *&v165[9] = *(v166 + 81);
      sub_1ABAE2EC4();
      sub_1ABAE2EC4();
      v85 = v143;

      v86 = v85;
      v87 = v145;
      sub_1ABC8A96C(v164, v86, v18);
      if (v87)
      {
        v88 = &qword_1EB4D7E60;
        v89 = &unk_1ABF5E780;
        v90 = &v160;
      }

      else
      {
        if (sub_1ABA7E1E0(v18, 1, v19) != 1)
        {
          sub_1ABCF9424();
          v96 = v142;
          swift_beginAccess();
          sub_1ABB4DE30();
          v97 = *(*(v96 + 16) + 16);
          sub_1ABB4E234(v97);
          v98 = *(v96 + 16);
          *(v98 + 16) = v97 + 1;
          sub_1ABD0AD58();
          *(v96 + 16) = v98;
          swift_endAccess();
          sub_1ABAB480C(&v160, &qword_1EB4D7E60, &unk_1ABF5E780);
          sub_1ABD0ADB0(v21, type metadata accessor for CustomGraphDateRelationship);
          return;
        }

        sub_1ABAB480C(&v160, &qword_1EB4D7E60, &unk_1ABF5E780);
        v88 = &qword_1EB4D5F20;
        v89 = &qword_1ABF4F358;
        v90 = v18;
      }

      sub_1ABAB480C(v90, v88, v89);
      return;
    }

    goto LABEL_89;
  }

  v28 = sub_1ABF25054();

  if (v28)
  {
    goto LABEL_70;
  }

  if (!_Records_GDEntityPredicate_records)
  {
LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[1392], *(_Records_GDEntityPredicate_records + 349), *(_Records_GDEntityPredicate_records + 350), v163);
  if (*&v163[0] == v136 && *(&v163[0] + 1) == v24)
  {

LABEL_77:
    v68 = v166;
    *(v162 + 10) = *(v166 + 82);
    v91 = *(v166 + 7);
    v160 = *(v166 + 5);
    v161 = v91;
    v162[0] = *(v166 + 9);
    if (BYTE9(v162[1]) == 1)
    {
      v92 = *(v166 + 7);
      v157 = *(v166 + 5);
      v158 = v92;
      v159[0] = *(v166 + 9);
      *(v159 + 9) = *(v166 + 81);
      MEMORY[0x1EEE9AC00](v31);
      *(&v135 - 2) = &v157;
      v163[0] = v160;
      v163[1] = v161;
      v163[2] = v162[0];
      *(&v163[2] + 10) = *(v162 + 10);
      sub_1ABAE2EC4();
      sub_1ABD191AC(v163, &v149);
      v93 = v145;
      sub_1ABCFC2DC(sub_1ABD1A8C8, (&v135 - 4), &unk_1F209A408, &unk_1F209A890, sub_1ABD1AB6C, sub_1ABD19C3C, v94, v95, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, *(&v149 + 1), v150, *(&v150 + 1), *&v151[0], *(&v151[0] + 1), *&v151[1], *(&v151[1] + 1), v152, *(&v152 + 1));
      if (!v93)
      {
        v99 = v153;
        if (v153)
        {
          v149 = v157;
          v150 = v158;
          v151[0] = v159[0];
          *(v151 + 9) = *(v159 + 9);
          sub_1ABD19208(&v149);
          v100 = v140;
          swift_beginAccess();
          sub_1ABB4DEA8();
          v101 = *(*(v100 + 16) + 16);
          sub_1ABB4E2AC(v101);
LABEL_83:
          v102 = *(v100 + 16);
          *(v102 + 16) = v101 + 1;
          v103 = v102 + (v101 << 6);
          *(v103 + 32) = v152;
          *(v103 + 48) = v99;
          *(v103 + 56) = v154;
          *(v103 + 72) = v155;
          *(v103 + 88) = v156;
          *(v100 + 16) = v102;
          swift_endAccess();
LABEL_98:
          sub_1ABAB480C(&v160, &qword_1EB4D7E60, &unk_1ABF5E780);
          return;
        }

LABEL_97:
        v149 = v157;
        v150 = v158;
        v151[0] = v159[0];
        *(v151 + 9) = *(v159 + 9);
        sub_1ABD19208(&v149);
        goto LABEL_98;
      }

LABEL_79:
      v149 = v157;
      v150 = v158;
      v151[0] = v159[0];
      *(v151 + 9) = *(v159 + 9);
      sub_1ABD19208(&v149);
      sub_1ABAB480C(&v160, &qword_1EB4D7E60, &unk_1ABF5E780);
      return;
    }

LABEL_89:
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v109 = sub_1ABF237F4();
    sub_1ABA7AA24(v109, qword_1ED871B40);
    sub_1ABAE2EC4();
    v70 = sub_1ABF237D4();
    v71 = sub_1ABF24664();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      *&v149 = v73;
      *v72 = 136642819;
      memcpy(v163, v68, 0x62uLL);
      sub_1ABAD219C(&qword_1EB4D1148, &qword_1ABF332D0);
      v75 = sub_1ABF23C94();
      v77 = &v149;
      goto LABEL_93;
    }

LABEL_94:

    v111 = v68;
LABEL_95:
    sub_1ABAB480C(v111, &qword_1EB4D1148, &qword_1ABF332D0);
    return;
  }

  v30 = sub_1ABF25054();

  if (v30)
  {
    goto LABEL_77;
  }

  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
LABEL_132:
    __break(1u);
    goto LABEL_133;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[1080], *(_Records_GDEntityPredicate_records + 271), *(_Records_GDEntityPredicate_records + 272), v163);
  if (*&v163[0] == v136 && *(&v163[0] + 1) == v24)
  {

LABEL_85:
    v68 = v166;
    *(v162 + 10) = *(v166 + 82);
    v104 = *(v166 + 7);
    v160 = *(v166 + 5);
    v161 = v104;
    v162[0] = *(v166 + 9);
    if (BYTE9(v162[1]) == 1)
    {
      v105 = *(v166 + 7);
      v157 = *(v166 + 5);
      v158 = v105;
      v159[0] = *(v166 + 9);
      *(v159 + 9) = *(v166 + 81);
      MEMORY[0x1EEE9AC00](v34);
      *(&v135 - 2) = &v157;
      v163[0] = v160;
      v163[1] = v161;
      v163[2] = v162[0];
      *(&v163[2] + 10) = *(v162 + 10);
      sub_1ABAE2EC4();
      sub_1ABD191AC(v163, &v149);
      v106 = v145;
      sub_1ABCFC2DC(sub_1ABD1A8C8, (&v135 - 4), &unk_1F2099F58, &unk_1F2099F80, sub_1ABD0D498, sub_1ABD1932C, v107, v108, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, *(&v149 + 1), v150, *(&v150 + 1), *&v151[0], *(&v151[0] + 1), *&v151[1], *(&v151[1] + 1), v152, *(&v152 + 1));
      if (!v106)
      {
        v99 = v153;
        if (v153)
        {
          v149 = v157;
          v150 = v158;
          v151[0] = v159[0];
          *(v151 + 9) = *(v159 + 9);
          sub_1ABD19208(&v149);
          v100 = v139;
          swift_beginAccess();
          sub_1ABB4DD28();
          v101 = *(*(v100 + 16) + 16);
          sub_1ABB4E12C(v101);
          goto LABEL_83;
        }

        goto LABEL_97;
      }

      goto LABEL_79;
    }

    goto LABEL_89;
  }

  v33 = sub_1ABF25054();

  if (v33)
  {
    goto LABEL_85;
  }

  if (v144 < 0xA1)
  {
    __break(1u);
LABEL_126:
    __break(1u);
    goto LABEL_127;
  }

  v35 = v136;
  if (!_Records_GDEntityPredicate_records)
  {
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[1920], *(_Records_GDEntityPredicate_records + 481), *(_Records_GDEntityPredicate_records + 482), v163);
  if (*&v163[0] == v35 && *(&v163[0] + 1) == v24)
  {

    goto LABEL_101;
  }

  v37 = sub_1ABF25054();

  if (v37)
  {
LABEL_101:
    v68 = v166;
    if (*(v166 + 97) != 2)
    {
      goto LABEL_62;
    }

    v112 = v145;
    sub_1ABC4A630(v166[5], v38, v39, v40, v41, v42, v43, v44);
    if (v112)
    {
      return;
    }

    v113 = v160;
    v114 = v138;
    goto LABEL_104;
  }

  if (v144 == 161)
  {
LABEL_127:
    __break(1u);
LABEL_128:
    __break(1u);
    goto LABEL_129;
  }

  v45 = v136;
  if (!_Records_GDEntityPredicate_records)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[1932], *(_Records_GDEntityPredicate_records + 484), *(_Records_GDEntityPredicate_records + 485), v163);
  if (*&v163[0] == v45 && *(&v163[0] + 1) == v24)
  {

    goto LABEL_106;
  }

  v47 = sub_1ABF25054();

  if (v47)
  {
LABEL_106:
    v68 = v166;
    if (*(v166 + 97) != 2)
    {
      goto LABEL_62;
    }

    v117 = v145;
    sub_1ABC4A630(v166[5], v48, v49, v50, v51, v52, v53, v54);
    if (v117)
    {
      return;
    }

    v113 = v160;
    v114 = v137;
LABEL_104:
    swift_beginAccess();
    sub_1ABB4DD40();
    v115 = *(*(v114 + 16) + 16);
    sub_1ABB4E144(v115);
    v116 = *(v114 + 16);
    *(v116 + 16) = v115 + 1;
    *(v116 + 8 * v115 + 32) = v113;
    *(v114 + 16) = v116;
    return;
  }

  if (!_Records_GDEntityPredicate_records)
  {
LABEL_135:
    __break(1u);
    goto LABEL_136;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[240], *(_Records_GDEntityPredicate_records + 61), *(_Records_GDEntityPredicate_records + 62), v163);
  if (*&v163[0] == v136 && *(&v163[0] + 1) == v24)
  {
    goto LABEL_110;
  }

  v56 = sub_1ABF25054();

  if ((v56 & 1) == 0)
  {
    if (!_Records_GDEntityPredicate_records)
    {
LABEL_136:
      __break(1u);
      goto LABEL_137;
    }

    sub_1ABA91D48(_Records_GDEntityPredicate_records[1200], *(_Records_GDEntityPredicate_records + 301), *(_Records_GDEntityPredicate_records + 302), v163);
    if (*&v163[0] == v136 && *(&v163[0] + 1) == v24)
    {
    }

    else
    {
      v65 = sub_1ABF25054();

      if ((v65 & 1) == 0)
      {
        if (v144 >= 0xCC)
        {
          if (_Records_GDEntityPredicate_records)
          {
            sub_1ABA91D48(_Records_GDEntityPredicate_records[2436], *(_Records_GDEntityPredicate_records + 610), *(_Records_GDEntityPredicate_records + 611), v163);
            if (*&v163[0] == v136 && *(&v163[0] + 1) == v24)
            {
            }

            else
            {
              v67 = sub_1ABF25054();

              if ((v67 & 1) == 0)
              {
                return;
              }
            }

            if (*(v166 + 97))
            {
LABEL_120:
              if (qword_1ED871B38 == -1)
              {
LABEL_121:
                v129 = sub_1ABF237F4();
                sub_1ABA7AA24(v129, qword_1ED871B40);
                sub_1ABAE2EC4();
                v70 = sub_1ABF237D4();
                v71 = sub_1ABF24664();
                if (os_log_type_enabled(v70, v71))
                {
                  v72 = swift_slowAlloc();
                  v73 = swift_slowAlloc();
                  *&v160 = v73;
                  *v72 = 136642819;
                  v74 = v166;
                  goto LABEL_66;
                }

                v111 = v166;
                goto LABEL_95;
              }

LABEL_130:
              swift_once();
              goto LABEL_121;
            }

            v131 = v166[5];
            v130 = v166[6];
            swift_beginAccess();

            sub_1ABB4DC20();
            v132 = *(*(a11 + 16) + 16);
            sub_1ABB4E024(v132);
            v133 = *(a11 + 16);
            *(v133 + 16) = v132 + 1;
            v134 = v133 + 16 * v132;
            *(v134 + 32) = v131;
            *(v134 + 40) = v130;
            *(a11 + 16) = v133;
LABEL_68:
            swift_endAccess();
            return;
          }

LABEL_137:
          __break(1u);
          return;
        }

        goto LABEL_132;
      }
    }

    if (!*(v166 + 97))
    {
      v122 = v166[5];
      v123 = v166[6];

      v124 = sub_1ABB24D04(v122, v123);
      if ((v125 & 1) == 0)
      {
        v126 = v124;
        swift_beginAccess();
        sub_1ABB4DCB0();
        v127 = *(*(a10 + 16) + 16);
        sub_1ABB4E0CC(v127);
        v128 = *(a10 + 16);
        *(v128 + 16) = v127 + 1;
        *(v128 + 8 * v127 + 32) = v126;
        *(a10 + 16) = v128;
        return;
      }
    }

    goto LABEL_120;
  }

LABEL_111:
  v68 = v166;
  if (*(v166 + 97) != 2)
  {
LABEL_62:
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v69 = sub_1ABF237F4();
    sub_1ABA7AA24(v69, qword_1ED871B40);
    sub_1ABAE2EC4();
    v70 = sub_1ABF237D4();
    v71 = sub_1ABF24664();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      *&v160 = v73;
      *v72 = 136642819;
      v74 = v68;
LABEL_66:
      memcpy(v163, v74, 0x62uLL);
      sub_1ABAD219C(&qword_1EB4D1148, &qword_1ABF332D0);
      v75 = sub_1ABF23C94();
      v77 = &v160;
LABEL_93:
      v110 = sub_1ABADD6D8(v75, v76, v77);

      *(v72 + 4) = v110;
      _os_log_impl(&dword_1ABA78000, v70, v71, "Failed to parse %{sensitive}s.", v72, 0xCu);
      sub_1ABA84B54(v73);
      MEMORY[0x1AC5AB8B0](v73, -1, -1);
      MEMORY[0x1AC5AB8B0](v72, -1, -1);

      return;
    }

    goto LABEL_94;
  }

  v118 = v145;
  sub_1ABC4CBC0(v166[5], v57, v58, v59, v60, v61, v62, v63, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, *(&v149 + 1), v150, *(&v150 + 1), *&v151[0], *(&v151[0] + 1), *&v151[1], *(&v151[1] + 1), v152, *(&v152 + 1), v153, v154, *(&v154 + 1), v155);
  if (!v118)
  {
    v119 = v160;
    swift_beginAccess();
    sub_1ABB4DE48();
    v120 = *(*(a9 + 16) + 16);
    sub_1ABB4E24C(v120);
    v121 = *(a9 + 16);
    *(v121 + 16) = v120 + 1;
    *(v121 + 8 * v120 + 32) = v119;
    *(a9 + 16) = v121;
  }
}