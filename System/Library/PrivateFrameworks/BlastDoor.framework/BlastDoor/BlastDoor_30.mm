uint64_t sub_2142DB320@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21438DE5C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2142DB348(uint64_t a1)
{
  v2 = sub_214327D80();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142DB384(uint64_t a1)
{
  v2 = sub_214327D80();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142DB3C0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000017;
  }

  else
  {
    v3 = 0xD000000000000012;
  }

  if (v2)
  {
    v4 = "query";
  }

  else
  {
    v4 = "composeTextMessage";
  }

  v5 = v4 | 0x8000000000000000;
  if (*a2)
  {
    v6 = 0xD000000000000017;
  }

  else
  {
    v6 = 0xD000000000000012;
  }

  if (*a2)
  {
    v7 = "composeTextMessage";
  }

  else
  {
    v7 = "query";
  }

  if (v3 == v6 && v5 == (v7 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_2146DA6A8();
  }

  return v9 & 1;
}

uint64_t sub_2142DB470()
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2142DB4F4(uint64_t a1)
{
  sub_2146D9698();
}

uint64_t sub_2142DB564(uint64_t a1)
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

void sub_2142DB5F0(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000017;
  }

  else
  {
    v2 = 0xD000000000000012;
  }

  if (*v1)
  {
    v3 = "composeTextMessage";
  }

  else
  {
    v3 = "query";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

uint64_t sub_2142DB6E4(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90DA30, &qword_2146F7150);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - v6;
  v8 = v1[1];
  v17 = *v1;
  v18 = v8;
  v9 = v1[3];
  v19 = v1[2];
  v20 = v9;
  v21 = *(v1 + 32);
  v33 = *(v1 + 33);
  v10 = *(v1 + 34) | (*(v1 + 19) << 32);
  v11 = *(v1 + 5);
  v15 = *(v1 + 7);
  v16 = v11;
  v14 = *(v1 + 72);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214327D80();
  sub_2146DAA28();
  if ((v10 & 0x8000000000000000) != 0)
  {
    LOBYTE(v22) = 1;
    v34 = 0;
    sub_214327DD4();
    sub_2146DA388();
    if (!v2)
    {
      v22 = v17;
      v23 = v18;
      v24 = v19;
      v25 = v20;
      v26 = v21;
      v27 = v33 & 1;
      v34 = 2;
      sub_214327E28();
      goto LABEL_6;
    }
  }

  else
  {
    LOBYTE(v22) = 0;
    v34 = 0;
    sub_214327DD4();
    sub_2146DA388();
    if (!v2)
    {
      v22 = v17;
      v23 = v18;
      v24 = v19;
      v25 = v20;
      v26 = v21;
      v27 = v33;
      v29 = WORD2(v10);
      v28 = v10;
      v30 = v16;
      v31 = v15;
      v32 = v14;
      v34 = 1;
      sub_214327E7C();
LABEL_6:
      sub_2146DA388();
    }
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_2142DB96C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90DA58, &qword_2146F7158);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214327D80();
  sub_2146DAA08();
  if (!v2)
  {
    v25 = 0;
    sub_214327ED0();
    sub_2146DA1C8();
    v10 = (v6 + 8);
    if (v26)
    {
      v24 = 2;
      sub_214327F24();
      sub_2146DA1C8();
      (*v10)(v8, v5);
      v13 = v18;
      v14 = v19;
      v15 = v20;
      v16 = 0x8000000000000000;
      if (BYTE1(v20))
      {
        v16 = 0x8000000000000100;
      }

      v17 = v16 | v20;
    }

    else
    {
      v24 = 1;
      sub_214327F78();
      sub_2146DA1C8();
      (*v10)(v8, v5);
      v13 = v18;
      v14 = v19;
      v11 = v21;
      v12 = v22;
      v15 = v23;
      v17 = v20 & 0x1FF;
    }

    *a2 = v13;
    *(a2 + 16) = v14;
    *(a2 + 32) = v17;
    *(a2 + 40) = v11;
    *(a2 + 56) = v12;
    *(a2 + 72) = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_2142DBC18()
{
  v1 = *v0;
  v2 = 0x756C61565F6C7275;
  v3 = 0x565F656369766564;
  if (v1 != 6)
  {
    v3 = 0x73676E6974746573;
  }

  v4 = 0x7261646E656C6163;
  if (v1 != 4)
  {
    v4 = 0x5F65736F706D6F63;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x565F72656C616964;
  if (v1 != 2)
  {
    v5 = 0x756C61565F70616DLL;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000019;
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

uint64_t sub_2142DBD3C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21438DFD4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2142DBD64(uint64_t a1)
{
  v2 = sub_214327FCC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142DBDA0(uint64_t a1)
{
  v2 = sub_214327FCC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142DBDF4(uint64_t a1)
{
  sub_2146D9698();
}

unint64_t sub_2142DBEF0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_21438E2EC(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_2142DBF20(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 7107189;
  v5 = 0xE600000000000000;
  v6 = 0x656369766564;
  v7 = 0xE800000000000000;
  if (v2 != 5)
  {
    v6 = 0x73676E6974746573;
    v5 = 0xE800000000000000;
  }

  v8 = 0x7261646E656C6163;
  if (v2 != 3)
  {
    v8 = 0x65736F706D6F63;
    v7 = 0xE700000000000000;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE600000000000000;
  v10 = 0x72656C616964;
  if (v2 != 1)
  {
    v10 = 7364973;
    v9 = 0xE300000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
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

uint64_t sub_2142DC094(void *a1)
{
  v31 = type metadata accessor for Chatbot.CalendarAction(0);
  MEMORY[0x28223BE20](v31);
  v32 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for Chatbot.MapAction(0);
  MEMORY[0x28223BE20](v34);
  v33 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Chatbot.DialerAction(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Chatbot.Action.ActionType(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90DA78, &qword_2146F7160);
  v45 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v11 = &v30 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214327FCC();
  v12 = v11;
  sub_2146DAA28();
  sub_2143287C0(v35, v9, type metadata accessor for Chatbot.Action.ActionType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      v16 = v6;
      v14 = v36;
      v15 = v12;
      if (EnumCaseMultiPayload == 1)
      {
        sub_214328704(v9, v16, type metadata accessor for Chatbot.DialerAction);
        LOBYTE(v41) = 1;
        LOBYTE(v38[0]) = 0;
        sub_214328020();
        v19 = v37;
        sub_2146DA388();
        if (!v19)
        {
          LOBYTE(v41) = 2;
          sub_214328930(&qword_27C90DAB8, type metadata accessor for Chatbot.DialerAction, aAc_0);
          sub_2146DA388();
        }

        v18 = type metadata accessor for Chatbot.DialerAction;
      }

      else
      {
        v16 = v33;
        sub_214328704(v9, v33, type metadata accessor for Chatbot.MapAction);
        LOBYTE(v41) = 2;
        LOBYTE(v38[0]) = 0;
        sub_214328020();
        v24 = v37;
        sub_2146DA388();
        if (!v24)
        {
          LOBYTE(v41) = 3;
          sub_214328930(&qword_27C90DAB0, type metadata accessor for Chatbot.MapAction, byte_214703AC8);
          sub_2146DA388();
        }

        v18 = type metadata accessor for Chatbot.MapAction;
      }

      goto LABEL_21;
    }

    sub_2143277E4(v9, &v41);
    LOBYTE(v38[0]) = 0;
    v40 = 0;
    sub_214328020();
    v21 = v36;
    v22 = v37;
    sub_2146DA388();
    if (!v22)
    {
      sub_2143277E4(&v41, v38);
      v40 = 1;
      sub_214328218();
      sub_2146DA388();
    }

    (*(v45 + 8))(v12, v21);
    return sub_2143281C4(&v41);
  }

  else
  {
    if (EnumCaseMultiPayload > 4)
    {
      v14 = v36;
      v15 = v11;
      if (EnumCaseMultiPayload == 5)
      {
        LOBYTE(v41) = 5;
        LOBYTE(v38[0]) = 0;
        sub_214328020();
        v20 = v37;
        sub_2146DA388();
        if (v20)
        {
          return (*(v45 + 8))(v15, v14);
        }

        LOBYTE(v41) = 6;
        sub_2143280C8();
      }

      else
      {
        v28 = *v9;
        LOBYTE(v41) = 6;
        LOBYTE(v38[0]) = 0;
        sub_214328020();
        v29 = v37;
        sub_2146DA388();
        if (v29)
        {
          return (*(v45 + 8))(v15, v14);
        }

        LOBYTE(v41) = v28;
        LOBYTE(v38[0]) = 7;
        sub_214328074();
      }

      sub_2146DA388();
      return (*(v45 + 8))(v15, v14);
    }

    v14 = v36;
    v15 = v11;
    if (EnumCaseMultiPayload == 3)
    {
      v16 = v32;
      sub_214328704(v9, v32, type metadata accessor for Chatbot.CalendarAction);
      LOBYTE(v41) = 3;
      LOBYTE(v38[0]) = 0;
      sub_214328020();
      v17 = v37;
      sub_2146DA388();
      if (!v17)
      {
        LOBYTE(v41) = 4;
        sub_214328930(&qword_27C90DAA8, type metadata accessor for Chatbot.CalendarAction, aQb);
        sub_2146DA388();
      }

      v18 = type metadata accessor for Chatbot.CalendarAction;
LABEL_21:
      sub_21432887C(v16, v18);
      return (*(v45 + 8))(v15, v14);
    }

    v25 = *(v9 + 3);
    v43 = *(v9 + 2);
    v44[0] = v25;
    *(v44 + 9) = *(v9 + 57);
    v26 = *(v9 + 1);
    v41 = *v9;
    v42 = v26;
    LOBYTE(v38[0]) = 4;
    v40 = 0;
    sub_214328020();
    v27 = v37;
    sub_2146DA388();
    if (!v27)
    {
      v38[2] = v43;
      *v39 = v44[0];
      *&v39[9] = *(v44 + 9);
      v38[0] = v41;
      v38[1] = v42;
      v40 = 5;
      sub_214328170();
      sub_2146DA388();
    }

    (*(v45 + 8))(v11, v14);
    return sub_21432811C(&v41);
  }
}

uint64_t sub_2142DC87C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v33 = type metadata accessor for Chatbot.CalendarAction(0);
  MEMORY[0x28223BE20](v33);
  v37 = v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for Chatbot.MapAction(0);
  MEMORY[0x28223BE20](v34);
  v36 = v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Chatbot.DialerAction(0);
  MEMORY[0x28223BE20](v5);
  v7 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90DAC8, &qword_2146F7168);
  v35 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = v31 - v9;
  v11 = type metadata accessor for Chatbot.Action.ActionType(0);
  MEMORY[0x28223BE20](v11);
  v13 = v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[3];
  v39 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_214327FCC();
  v15 = v40;
  sub_2146DAA08();
  if (!v15)
  {
    v31[1] = v5;
    v16 = v7;
    v17 = v36;
    v18 = v37;
    v40 = v11;
    v32 = v13;
    v19 = v38;
    v41[0] = 0;
    sub_21432826C();
    v20 = v10;
    sub_2146DA1C8();
    v21 = v8;
    if (LOBYTE(v42[0]) > 2u)
    {
      if (LOBYTE(v42[0]) > 4u)
      {
        v24 = v39;
        v25 = v19;
        v27 = v35;
        if (LOBYTE(v42[0]) == 5)
        {
          LOBYTE(v42[0]) = 6;
          sub_214328314();
          sub_2146DA1C8();
          (*(v27 + 8))(v20, v21);
          v29 = v32;
        }

        else
        {
          v41[0] = 7;
          sub_2143282C0();
          sub_2146DA1C8();
          (*(v27 + 8))(v20, v21);
          v29 = v32;
          *v32 = v42[0];
        }
      }

      else
      {
        v24 = v39;
        v25 = v19;
        v26 = v35;
        if (LOBYTE(v42[0]) == 3)
        {
          LOBYTE(v42[0]) = 4;
          sub_214328930(&qword_27C90DAF0, type metadata accessor for Chatbot.CalendarAction, byte_214703B40);
          sub_2146DA1C8();
          (*(v26 + 8))(v20, v21);
          v29 = v32;
          sub_214328704(v18, v32, type metadata accessor for Chatbot.CalendarAction);
        }

        else
        {
          v41[0] = 5;
          sub_214328368();
          sub_2146DA1C8();
          (*(v26 + 8))(v20, v21);
          v28 = v43[0];
          v29 = v32;
          v32[2] = v42[2];
          v29[3] = v28;
          *(v29 + 57) = *(v43 + 9);
          v30 = v42[1];
          *v29 = v42[0];
          v29[1] = v30;
        }
      }

      swift_storeEnumTagMultiPayload();
      goto LABEL_20;
    }

    if (LOBYTE(v42[0]))
    {
      if (LOBYTE(v42[0]) != 1)
      {
        LOBYTE(v42[0]) = 3;
        sub_214328930(&qword_27C90DAF8, type metadata accessor for Chatbot.MapAction, aIg);
        sub_2146DA1C8();
        (*(v35 + 8))(v10, v8);
        v24 = v39;
        v29 = v32;
        sub_214328704(v17, v32, type metadata accessor for Chatbot.MapAction);
        swift_storeEnumTagMultiPayload();
        v25 = v19;
        goto LABEL_20;
      }

      LOBYTE(v42[0]) = 2;
      sub_214328930(&qword_27C90DB00, type metadata accessor for Chatbot.DialerAction, byte_214703A50);
      sub_2146DA1C8();
      (*(v35 + 8))(v10, v8);
      v29 = v32;
      sub_214328704(v16, v32, type metadata accessor for Chatbot.DialerAction);
    }

    else
    {
      v44 = 1;
      sub_2143283BC();
      sub_2146DA1C8();
      (*(v35 + 8))(v10, v8);
      sub_2143277E4(v42, v41);
      v29 = v32;
      sub_2143277E4(v41, v32);
    }

    swift_storeEnumTagMultiPayload();
    v24 = v39;
    v25 = v19;
LABEL_20:
    sub_214328704(v29, v25, type metadata accessor for Chatbot.Action.ActionType);
    v22 = v24;
    return __swift_destroy_boxed_opaque_existential_1(v22);
  }

  v22 = v39;
  return __swift_destroy_boxed_opaque_existential_1(v22);
}

unint64_t sub_2142DD0BC()
{
  v1 = 0x6C61636974726576;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000028;
  }
}

uint64_t sub_2142DD130@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21438E338(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2142DD158(uint64_t a1)
{
  v2 = sub_214328410();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142DD194(uint64_t a1)
{
  v2 = sub_214328410();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142DD1D0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x746E6F7A69726F68;
  }

  else
  {
    v3 = 0x6C61636974726576;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xEA00000000006C61;
  }

  if (*a2)
  {
    v5 = 0x746E6F7A69726F68;
  }

  else
  {
    v5 = 0x6C61636974726576;
  }

  if (*a2)
  {
    v6 = 0xEA00000000006C61;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2146DA6A8();
  }

  return v8 & 1;
}

uint64_t sub_2142DD27C()
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2142DD304(uint64_t a1)
{
  sub_2146D9698();
}

uint64_t sub_2142DD378(uint64_t a1)
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

void sub_2142DD408(uint64_t *a1@<X8>)
{
  v2 = 0x6C61636974726576;
  if (*v1)
  {
    v2 = 0x746E6F7A69726F68;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xEA00000000006C61;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_2142DD4FC(void *a1)
{
  v19 = type metadata accessor for Chatbot.GeneralPurposeCardMessage.Layout.HorizontalLayout(0);
  MEMORY[0x28223BE20](v19);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Chatbot.GeneralPurposeCardMessage.Layout.VerticalLayout(0);
  MEMORY[0x28223BE20](v18);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Chatbot.GeneralPurposeCardMessage.Layout(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90DB10, &qword_2146F7170);
  v22 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v17 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214328410();
  sub_2146DAA28();
  sub_2143287C0(v20, v8, type metadata accessor for Chatbot.GeneralPurposeCardMessage.Layout);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_214328704(v8, v3, type metadata accessor for Chatbot.GeneralPurposeCardMessage.Layout.HorizontalLayout);
    v27 = 1;
    v26 = 0;
    sub_214328464();
    v12 = v21;
    sub_2146DA388();
    if (!v12)
    {
      v25 = 2;
      sub_214328930(&qword_27C90DB28, type metadata accessor for Chatbot.GeneralPurposeCardMessage.Layout.HorizontalLayout, aAy);
      sub_2146DA388();
    }

    v13 = type metadata accessor for Chatbot.GeneralPurposeCardMessage.Layout.HorizontalLayout;
    v14 = v3;
  }

  else
  {
    sub_214328704(v8, v5, type metadata accessor for Chatbot.GeneralPurposeCardMessage.Layout.VerticalLayout);
    v24 = 0;
    sub_214328464();
    v15 = v21;
    sub_2146DA388();
    if (!v15)
    {
      v23 = 1;
      sub_214328930(&qword_27C90DB30, type metadata accessor for Chatbot.GeneralPurposeCardMessage.Layout.VerticalLayout, byte_214702448);
      sub_2146DA388();
    }

    v13 = type metadata accessor for Chatbot.GeneralPurposeCardMessage.Layout.VerticalLayout;
    v14 = v5;
  }

  sub_21432887C(v14, v13);
  return (*(v22 + 8))(v11, v9);
}

uint64_t sub_2142DD8E0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v23 = type metadata accessor for Chatbot.GeneralPurposeCardMessage.Layout.HorizontalLayout(0);
  MEMORY[0x28223BE20](v23);
  v25 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Chatbot.GeneralPurposeCardMessage.Layout.VerticalLayout(0);
  MEMORY[0x28223BE20](v4);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90DB38, &qword_2146F7178);
  v24 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = v22 - v8;
  v10 = type metadata accessor for Chatbot.GeneralPurposeCardMessage.Layout(0);
  MEMORY[0x28223BE20](v10);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v28 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_214328410();
  v14 = v27;
  sub_2146DAA08();
  if (!v14)
  {
    v22[0] = v12;
    v22[1] = v4;
    v16 = v24;
    v15 = v25;
    v27 = v10;
    v17 = v26;
    v31 = 0;
    sub_2143284B8();
    sub_2146DA1C8();
    v18 = v7;
    v20 = (v16 + 8);
    if (v32)
    {
      v30 = 2;
      sub_214328930(&qword_27C90DB48, type metadata accessor for Chatbot.GeneralPurposeCardMessage.Layout.HorizontalLayout, byte_214702470);
      sub_2146DA1C8();
      (*v20)(v9, v18);
      v21 = v22[0];
      sub_214328704(v15, v22[0], type metadata accessor for Chatbot.GeneralPurposeCardMessage.Layout.HorizontalLayout);
    }

    else
    {
      v29 = 1;
      sub_214328930(&qword_27C90DB50, type metadata accessor for Chatbot.GeneralPurposeCardMessage.Layout.VerticalLayout, byte_214702420);
      sub_2146DA1C8();
      (*v20)(v9, v18);
      v21 = v22[0];
      sub_214328704(v6, v22[0], type metadata accessor for Chatbot.GeneralPurposeCardMessage.Layout.VerticalLayout);
    }

    swift_storeEnumTagMultiPayload();
    sub_214328704(v21, v17, type metadata accessor for Chatbot.GeneralPurposeCardMessage.Layout);
  }

  return __swift_destroy_boxed_opaque_existential_1(v28);
}

unint64_t sub_2142DDD18()
{
  v1 = 0xD00000000000001FLL;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000027;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x5F746F6274616863;
  }
}

uint64_t sub_2142DDD84@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21438E4B8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2142DDDAC(uint64_t a1)
{
  v2 = sub_21432850C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142DDDE8(uint64_t a1)
{
  v2 = sub_21432850C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142DDE24(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000021;
  }

  else
  {
    v3 = 0xD000000000000019;
  }

  if (v2)
  {
    v4 = "ap";
  }

  else
  {
    v4 = "generalPurposeCardMessage";
  }

  v5 = v4 | 0x8000000000000000;
  if (*a2)
  {
    v6 = 0xD000000000000021;
  }

  else
  {
    v6 = 0xD000000000000019;
  }

  if (*a2)
  {
    v7 = "generalPurposeCardMessage";
  }

  else
  {
    v7 = "ap";
  }

  if (v3 == v6 && v5 == (v7 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_2146DA6A8();
  }

  return v9 & 1;
}

uint64_t sub_2142DDED0()
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2142DDF50(uint64_t a1)
{
  sub_2146D9698();
}

uint64_t sub_2142DDFBC(uint64_t a1)
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

void sub_2142DE044(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000021;
  }

  else
  {
    v2 = 0xD000000000000019;
  }

  if (*v1)
  {
    v3 = "generalPurposeCardMessage";
  }

  else
  {
    v3 = "ap";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

uint64_t sub_2142DE134(void *a1)
{
  v19 = type metadata accessor for Chatbot.GeneralPurposeCardCarouselMessage(0);
  MEMORY[0x28223BE20](v19);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Chatbot.GeneralPurposeCardMessage(0);
  MEMORY[0x28223BE20](v18);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Chatbot.Message(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90DB58, &qword_2146F7180);
  v22 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v17 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21432850C();
  sub_2146DAA28();
  sub_2143287C0(v20, v8, type metadata accessor for Chatbot.Message);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_214328704(v8, v3, type metadata accessor for Chatbot.GeneralPurposeCardCarouselMessage);
    v27 = 1;
    v26 = 0;
    sub_214328560();
    v12 = v21;
    sub_2146DA388();
    if (!v12)
    {
      v25 = 2;
      sub_214328930(&qword_27C90DB70, type metadata accessor for Chatbot.GeneralPurposeCardCarouselMessage, byte_214702538);
      sub_2146DA388();
    }

    v13 = type metadata accessor for Chatbot.GeneralPurposeCardCarouselMessage;
    v14 = v3;
  }

  else
  {
    sub_214328704(v8, v5, type metadata accessor for Chatbot.GeneralPurposeCardMessage);
    v24 = 0;
    sub_214328560();
    v15 = v21;
    sub_2146DA388();
    if (!v15)
    {
      v23 = 1;
      sub_214328930(&qword_27C90DB78, type metadata accessor for Chatbot.GeneralPurposeCardMessage, byte_2147023F8);
      sub_2146DA388();
    }

    v13 = type metadata accessor for Chatbot.GeneralPurposeCardMessage;
    v14 = v5;
  }

  sub_21432887C(v14, v13);
  return (*(v22 + 8))(v11, v9);
}

uint64_t sub_2142DE518@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v23 = type metadata accessor for Chatbot.GeneralPurposeCardCarouselMessage(0);
  MEMORY[0x28223BE20](v23);
  v25 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Chatbot.GeneralPurposeCardMessage(0);
  MEMORY[0x28223BE20](v4);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90DB80, &qword_2146F7188);
  v24 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = v22 - v8;
  v10 = type metadata accessor for Chatbot.Message(0);
  MEMORY[0x28223BE20](v10);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v28 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_21432850C();
  v14 = v27;
  sub_2146DAA08();
  if (!v14)
  {
    v22[0] = v12;
    v22[1] = v4;
    v16 = v24;
    v15 = v25;
    v27 = v10;
    v17 = v26;
    v31 = 0;
    sub_2143285B4();
    sub_2146DA1C8();
    v18 = v7;
    v20 = (v16 + 8);
    if (v32)
    {
      v30 = 2;
      sub_214328930(&qword_27C90DB90, type metadata accessor for Chatbot.GeneralPurposeCardCarouselMessage, byte_214702510);
      sub_2146DA1C8();
      (*v20)(v9, v18);
      v21 = v22[0];
      sub_214328704(v15, v22[0], type metadata accessor for Chatbot.GeneralPurposeCardCarouselMessage);
    }

    else
    {
      v29 = 1;
      sub_214328930(&qword_27C90DB98, type metadata accessor for Chatbot.GeneralPurposeCardMessage, a9_10);
      sub_2146DA1C8();
      (*v20)(v9, v18);
      v21 = v22[0];
      sub_214328704(v6, v22[0], type metadata accessor for Chatbot.GeneralPurposeCardMessage);
    }

    swift_storeEnumTagMultiPayload();
    sub_214328704(v21, v17, type metadata accessor for Chatbot.Message);
  }

  return __swift_destroy_boxed_opaque_existential_1(v28);
}

uint64_t sub_2142DE950()
{
  v1 = 0x61565F796C706572;
  if (*v0 != 1)
  {
    v1 = 0x565F6E6F69746361;
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

uint64_t sub_2142DE9C0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21438E638(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2142DE9E8(uint64_t a1)
{
  v2 = sub_214328608();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142DEA24(uint64_t a1)
{
  v2 = sub_214328608();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142DEA60(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6E6F69746361;
  }

  else
  {
    v3 = 0x796C706572;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x6E6F69746361;
  }

  else
  {
    v5 = 0x796C706572;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2146DA6A8();
  }

  return v8 & 1;
}

uint64_t sub_2142DEB00()
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2142DEB7C(uint64_t a1)
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2142DECB0(void *a1)
{
  v2 = v1;
  v20 = type metadata accessor for Chatbot.Action(0);
  MEMORY[0x28223BE20](v20);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Chatbot.Suggestion(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90DBA0, &qword_2146F7190);
  v22 = *(v9 - 8);
  v23 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v20 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214328608();
  sub_2146DAA28();
  sub_2143287C0(v2, v8, type metadata accessor for Chatbot.Suggestion);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_214328704(v8, v5, type metadata accessor for Chatbot.Action);
    LOBYTE(v32) = 1;
    LOBYTE(v24) = 0;
    sub_21432865C();
    v12 = v23;
    v13 = v21;
    sub_2146DA388();
    if (!v13)
    {
      LOBYTE(v32) = 2;
      sub_214328930(&qword_27C90D848, type metadata accessor for Chatbot.Action, asc_2147022B8);
      sub_2146DA388();
    }

    sub_21432887C(v5, type metadata accessor for Chatbot.Action);
    return (*(v22 + 8))(v11, v12);
  }

  else
  {
    v15 = *(v8 + 5);
    v36 = *(v8 + 4);
    v37 = v15;
    v38 = *(v8 + 6);
    v39 = v8[112];
    v16 = *(v8 + 1);
    v32 = *v8;
    v33 = v16;
    v17 = *(v8 + 3);
    v34 = *(v8 + 2);
    v35 = v17;
    LOBYTE(v24) = 0;
    v40 = 0;
    sub_21432865C();
    v18 = v23;
    v19 = v21;
    sub_2146DA388();
    if (!v19)
    {
      v28 = v36;
      v29 = v37;
      v30 = v38;
      v31 = v39;
      v24 = v32;
      v25 = v33;
      v26 = v34;
      v27 = v35;
      v40 = 1;
      sub_2143271FC();
      sub_2146DA388();
    }

    (*(v22 + 8))(v11, v18);
    return sub_2143271A8(&v32);
  }
}

uint64_t sub_2142DF068@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v3 = type metadata accessor for Chatbot.Action(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90DBB8, &qword_2146F7198);
  v23 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v22 - v7;
  v9 = type metadata accessor for Chatbot.Suggestion(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v26 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_214328608();
  v13 = v25;
  sub_2146DAA08();
  if (!v13)
  {
    v25 = v3;
    v22 = v11;
    v14 = v23;
    v15 = v24;
    v35 = 0;
    sub_2143286B0();
    sub_2146DA1C8();
    if (v27)
    {
      LOBYTE(v27) = 2;
      sub_214328930(&qword_27C90D868, type metadata accessor for Chatbot.Action, aY_37);
      sub_2146DA1C8();
      (*(v14 + 8))(v8, v6);
      v17 = v22;
      sub_214328704(v5, v22, type metadata accessor for Chatbot.Action);
      swift_storeEnumTagMultiPayload();
      v18 = v15;
    }

    else
    {
      v35 = 1;
      sub_2143272A4();
      sub_2146DA1C8();
      (*(v14 + 8))(v8, v6);
      v18 = v15;
      v19 = v32;
      v17 = v22;
      *(v22 + 4) = v31;
      *(v17 + 80) = v19;
      *(v17 + 96) = v33;
      *(v17 + 112) = v34;
      v20 = v28;
      *v17 = v27;
      *(v17 + 16) = v20;
      v21 = v30;
      *(v17 + 32) = v29;
      *(v17 + 48) = v21;
      swift_storeEnumTagMultiPayload();
    }

    sub_214328704(v17, v18, type metadata accessor for Chatbot.Suggestion);
  }

  return __swift_destroy_boxed_opaque_existential_1(v26);
}

unint64_t sub_2142DF43C()
{
  v1 = 0x5F6567617373656DLL;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000013;
  }
}

uint64_t sub_2142DF4B0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21438E7B8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2142DF4D8(uint64_t a1)
{
  v2 = sub_21432876C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142DF514(uint64_t a1)
{
  v2 = sub_21432876C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142DF550(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6974736567677573;
  }

  else
  {
    v3 = 0x6567617373656DLL;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xEB00000000736E6FLL;
  }

  if (*a2)
  {
    v5 = 0x6974736567677573;
  }

  else
  {
    v5 = 0x6567617373656DLL;
  }

  if (*a2)
  {
    v6 = 0xEB00000000736E6FLL;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2146DA6A8();
  }

  return v8 & 1;
}

uint64_t sub_2142DF600()
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2142DF68C(uint64_t a1)
{
  sub_2146D9698();
}

uint64_t sub_2142DF704(uint64_t a1)
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

void sub_2142DF798(uint64_t *a1@<X8>)
{
  v2 = 0x6567617373656DLL;
  if (*v1)
  {
    v2 = 0x6974736567677573;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xEB00000000736E6FLL;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_2142DF890(void *a1)
{
  v2 = v1;
  v16 = type metadata accessor for Chatbot.Message(0);
  MEMORY[0x28223BE20](v16);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Chatbot.RootMessage(0);
  MEMORY[0x28223BE20](v6);
  v8 = (&v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90DBC8, &qword_2146F71A0);
  v18 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v16 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21432876C();
  sub_2146DAA28();
  sub_2143287C0(v2, v8, type metadata accessor for Chatbot.RootMessage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = *v8;
    v24 = 1;
    v23 = 0;
    sub_214328828();
    v13 = v17;
    sub_2146DA388();
    if (!v13)
    {
      v19 = v12;
      v22 = 2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C368, &qword_2146F6BF8);
      sub_21431C77C();
      sub_2146DA388();
    }

    (*(v18 + 8))(v11, v9);
  }

  else
  {
    sub_214328704(v8, v5, type metadata accessor for Chatbot.Message);
    v21 = 0;
    sub_214328828();
    v15 = v17;
    sub_2146DA388();
    if (!v15)
    {
      v20 = 1;
      sub_214328930(&qword_27C90DBE0, type metadata accessor for Chatbot.Message, a1a);
      sub_2146DA388();
    }

    sub_21432887C(v5, type metadata accessor for Chatbot.Message);
    return (*(v18 + 8))(v11, v9);
  }
}

uint64_t sub_2142DFC08@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v3 = type metadata accessor for Chatbot.Message(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90DBE8, &qword_2146F71A8);
  v20 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v19 - v7;
  v9 = type metadata accessor for Chatbot.RootMessage(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v23 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_21432876C();
  v13 = v22;
  sub_2146DAA08();
  if (!v13)
  {
    v19 = v11;
    v22 = v9;
    v14 = v20;
    v15 = v21;
    v27 = 0;
    sub_2143288DC();
    sub_2146DA1C8();
    if (v28)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C368, &qword_2146F6BF8);
      v26 = 2;
      sub_21431C39C();
      sub_2146DA1C8();
      (*(v14 + 8))(v8, v6);
      v17 = v15;
      v18 = v19;
      *v19 = v24;
    }

    else
    {
      v25 = 1;
      sub_214328930(qword_27C90DBF8, type metadata accessor for Chatbot.Message, byte_214703C80);
      sub_2146DA1C8();
      (*(v14 + 8))(v8, v6);
      v18 = v19;
      sub_214328704(v5, v19, type metadata accessor for Chatbot.Message);
      v17 = v15;
    }

    swift_storeEnumTagMultiPayload();
    sub_214328704(v18, v17, type metadata accessor for Chatbot.RootMessage);
  }

  return __swift_destroy_boxed_opaque_existential_1(v23);
}

uint64_t sub_2142E091C(unint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  if (!(a1 >> 62))
  {
    v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_12:

    return MEMORY[0x277D84F90];
  }

  v10 = sub_2146DA028();
  if (!v10)
  {
    goto LABEL_12;
  }

LABEL_3:
  v19 = MEMORY[0x277D84F90];
  result = sub_2146D9FB8();
  if (v10 < 0)
  {
    __break(1u);
  }

  else
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v12 = 0;
      do
      {
        v13 = v12 + 1;
        v14 = MEMORY[0x216054E00]();
        __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
        v15 = swift_allocObject();
        *(v15 + 16) = a4;
        *(v15 + 24) = v14;
        sub_2146D9F98();
        sub_2146D9FC8();
        sub_2146D9FD8();
        sub_2146D9FA8();
        v12 = v13;
      }

      while (v10 != v13);
    }

    else
    {
      v16 = 32;
      do
      {
        v17 = *(a1 + v16);
        __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
        v18 = swift_allocObject();
        *(v18 + 16) = a5;
        *(v18 + 24) = v17;

        sub_2146D9F98();
        sub_2146D9FC8();
        sub_2146D9FD8();
        sub_2146D9FA8();
        v16 += 8;
        --v10;
      }

      while (v10);
    }

    return v19;
  }

  return result;
}

uint64_t sub_2142E0AD0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146EAEB0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904180, &qword_2146EAAE0);
  v1 = swift_allocObject();
  v2 = swift_allocObject();
  v2[2] = sub_2143C945C;
  v2[3] = 0;
  v2[4] = 1;
  v2[5] = sub_21469B540;
  v2[6] = 0;
  *(v1 + 16) = sub_21438F530;
  *(v1 + 24) = v2;
  *(inited + 32) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v3 = swift_allocObject();
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v3 + 16) = sub_21438F534;
  *(v3 + 24) = v4;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_21438F680;
  *(v5 + 24) = v3;
  *(inited + 40) = v5;
  v6 = sub_2142E091C(inited, &qword_27C904180, &qword_2146EAAE0, sub_21438F6E0, sub_21438F6E0);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_21438F70C;
  *(v7 + 24) = v8;
  return v7;
}

uint64_t sub_2142E0CB4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146EAEB0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904180, &qword_2146EAAE0);
  v1 = swift_allocObject();
  v2 = swift_allocObject();
  v2[3] = 0;
  v2[4] = 0;
  v2[2] = sub_2143C945C;
  v2[5] = sub_21469B540;
  v2[6] = 0;
  *(v1 + 16) = sub_2140597F4;
  *(v1 + 24) = v2;
  *(inited + 32) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v3 = swift_allocObject();
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v3 + 16) = sub_21438EDCC;
  *(v3 + 24) = v4;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_21438F680;
  *(v5 + 24) = v3;
  *(inited + 40) = v5;
  v6 = sub_2142E091C(inited, &qword_27C904180, &qword_2146EAAE0, sub_21438F6E0, sub_21438F6E0);
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v7 + 16) = sub_21438EDD4;
  *(v7 + 24) = v8;
  return v7;
}

id sub_2142E0E94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v5 = sub_2146D9588();

  v10[0] = 0;
  v6 = [v3 initWithPattern:v5 options:a3 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_2146D8838();

    swift_willThrow();
  }

  return v6;
}

uint64_t sub_2142E0F88(void *a1, uint64_t a2, unint64_t *a3)
{
  v3 = a1[1];
  if (v3)
  {
    v4 = *a3;
    v9[0] = *a1;
    v9[1] = v3;
    MEMORY[0x28223BE20](a1);
    v7[2] = v9;
    v8 = 2;

    v5 = sub_2140479E4(sub_21438ED20, v7, v4);
  }

  else
  {
    v5 = 1;
  }

  return v5 & 1;
}

uint64_t sub_2142E1044(uint64_t *a1, void *a2, char a3)
{
  v3 = *a1;
  v4 = a2[1];
  v8[0] = *a2;
  v8[1] = v4;
  v5 = *(v3 + 16);
  v7 = a3;
  return v5(v8, &v7) & 1;
}

uint64_t sub_2142E1098(void *a1, char *a2, uint64_t *a3)
{
  v3 = a1[1];
  v4 = *a2;
  v5 = *a3;
  v9[0] = *a1;
  v9[1] = v3;
  v6 = *(v5 + 16);
  v8 = v4;
  return v6(v9, &v8) & 1;
}

unint64_t sub_2142E11A8()
{
  result = qword_280B30D90;
  if (!qword_280B30D90)
  {
    result = swift_getWitnessTable(byte_214731934, &_s10CodingKeysON_634, v0, v1);
    atomic_store(result, &qword_280B30D90);
  }

  return result;
}

unint64_t sub_2142E11FC()
{
  result = qword_280B2FE38;
  if (!qword_280B2FE38)
  {
    v4[1] = v0;
    v4[2] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C904798, qword_21473CFD0);
    v4[0] = MEMORY[0x277D83BB8];
    result = swift_getWitnessTable(MEMORY[0x277D84F58], v3, v4);
    atomic_store(result, &qword_280B2FE38);
  }

  return result;
}

unint64_t sub_2142E1278()
{
  result = qword_280B30B78;
  if (!qword_280B30B78)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C905680, &unk_2146F3CE0);
    v4[0] = sub_21406116C();
    result = swift_getWitnessTable(MEMORY[0x277D84F58], v3, v4);
    atomic_store(result, &qword_280B30B78);
  }

  return result;
}

unint64_t sub_2142E12FC()
{
  result = qword_280B2FE68;
  if (!qword_280B2FE68)
  {
    v4[1] = v0;
    v4[2] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C904008, &qword_2146EC050);
    v4[0] = MEMORY[0x277D83808];
    result = swift_getWitnessTable(MEMORY[0x277D84F58], v3, v4);
    atomic_store(result, &qword_280B2FE68);
  }

  return result;
}

unint64_t sub_2142E1378()
{
  result = qword_280B2FE48;
  if (!qword_280B2FE48)
  {
    v4[1] = v0;
    v4[2] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C905688, &qword_2146F3CF0);
    v4[0] = MEMORY[0x277D839D0];
    result = swift_getWitnessTable(MEMORY[0x277D84F58], v3, v4);
    atomic_store(result, &qword_280B2FE48);
  }

  return result;
}

unint64_t sub_2142E13F4()
{
  result = qword_280B2E920;
  if (!qword_280B2E920)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C905690, &qword_2146F3CF8);
    v4[0] = sub_2142E1478();
    result = swift_getWitnessTable(MEMORY[0x277D84F58], v3, v4);
    atomic_store(result, &qword_280B2E920);
  }

  return result;
}

unint64_t sub_2142E1478()
{
  result = qword_280B2E930;
  if (!qword_280B2E930)
  {
    result = swift_getWitnessTable(byte_2146F7250, &type metadata for APSUserPayloadDeliveryContext, v0, v1);
    atomic_store(result, &qword_280B2E930);
  }

  return result;
}

unint64_t sub_2142E14CC()
{
  result = qword_280B2E330;
  if (!qword_280B2E330)
  {
    v4[1] = v0;
    v4[2] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C905698, &qword_2146F3D00);
    v4[0] = MEMORY[0x277D84A58];
    result = swift_getWitnessTable(MEMORY[0x277D84F58], v3, v4);
    atomic_store(result, &qword_280B2E330);
  }

  return result;
}

unint64_t sub_2142E1548()
{
  result = qword_280B2FE58;
  if (!qword_280B2FE58)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C904000, &unk_2146EA780);
    v4[0] = sub_2142E15CC();
    result = swift_getWitnessTable(MEMORY[0x277D84F58], v3, v4);
    atomic_store(result, &qword_280B2FE58);
  }

  return result;
}

unint64_t sub_2142E15CC()
{
  result = qword_280B2FE60;
  if (!qword_280B2FE60)
  {
    v4[1] = v0;
    v4[2] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27C904F20, &qword_2146EE8A0);
    v4[0] = MEMORY[0x277D83808];
    result = swift_getWitnessTable(MEMORY[0x277D83978], v3, v4);
    atomic_store(result, &qword_280B2FE60);
  }

  return result;
}

unint64_t sub_2142E1648()
{
  result = qword_280B2E478;
  if (!qword_280B2E478)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C9056A0, &qword_2146F3D08);
    v4[0] = sub_2142E16CC();
    result = swift_getWitnessTable(MEMORY[0x277D83978], v3, v4);
    atomic_store(result, &qword_280B2E478);
  }

  return result;
}

unint64_t sub_2142E16CC()
{
  result = qword_280B30D70;
  if (!qword_280B30D70)
  {
    result = swift_getWitnessTable(aY0, &type metadata for APSUserPayload, v0, v1);
    atomic_store(result, &qword_280B30D70);
  }

  return result;
}

unint64_t sub_2142E1720()
{
  result = qword_280B2EB40;
  if (!qword_280B2EB40)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C9056A8, &qword_2146F3D10);
    v4[0] = sub_2142E17A4();
    result = swift_getWitnessTable(MEMORY[0x277D84F58], v3, v4);
    atomic_store(result, &qword_280B2EB40);
  }

  return result;
}

unint64_t sub_2142E17A4()
{
  result = qword_280B2EB48[0];
  if (!qword_280B2EB48[0])
  {
    result = swift_getWitnessTable(a0_4, &type metadata for APSUserPayloadHttpHeaders, v0, v1);
    atomic_store(result, qword_280B2EB48);
  }

  return result;
}

unint64_t sub_2142E17F8()
{
  result = qword_280B2E410;
  if (!qword_280B2E410)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C9056B0, &qword_2146F3D18);
    v4[0] = sub_2142E187C();
    result = swift_getWitnessTable(MEMORY[0x277D83978], v3, v4);
    atomic_store(result, &qword_280B2E410);
  }

  return result;
}

unint64_t sub_2142E187C()
{
  result = qword_280B2EA58;
  if (!qword_280B2EA58)
  {
    result = swift_getWitnessTable(aI_84, &type metadata for APSQuickRelayPluginRequest, v0, v1);
    atomic_store(result, &qword_280B2EA58);
  }

  return result;
}

unint64_t sub_2142E18D0()
{
  result = qword_280B2FDF8;
  if (!qword_280B2FDF8)
  {
    v4[1] = v0;
    v4[2] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C9056B8, &qword_2146F3D20);
    v4[0] = MEMORY[0x277D84D68];
    result = swift_getWitnessTable(MEMORY[0x277D84F58], v3, v4);
    atomic_store(result, &qword_280B2FDF8);
  }

  return result;
}

unint64_t sub_2142E194C()
{
  result = qword_280B2E3F0;
  if (!qword_280B2E3F0)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C9056C0, &qword_2146F3D28);
    v4[0] = sub_2142E19D0();
    result = swift_getWitnessTable(MEMORY[0x277D83978], v3, v4);
    atomic_store(result, &qword_280B2E3F0);
  }

  return result;
}

unint64_t sub_2142E19D0()
{
  result = qword_280B2E950;
  if (!qword_280B2E950)
  {
    result = swift_getWitnessTable(byte_2146F72F0, &type metadata for APSQuickRelayAllocationStatus, v0, v1);
    atomic_store(result, &qword_280B2E950);
  }

  return result;
}

unint64_t sub_2142E1A24()
{
  result = qword_280B2E400;
  if (!qword_280B2E400)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C9056C8, &qword_2146F3D30);
    v4[0] = sub_2142E1AA8();
    result = swift_getWitnessTable(MEMORY[0x277D83978], v3, v4);
    atomic_store(result, &qword_280B2E400);
  }

  return result;
}

unint64_t sub_2142E1AA8()
{
  result = qword_280B2E990;
  if (!qword_280B2E990)
  {
    result = swift_getWitnessTable(byte_2146F7340, &type metadata for APSQuickRelaySelfAllocToken, v0, v1);
    atomic_store(result, &qword_280B2E990);
  }

  return result;
}

unint64_t sub_2142E1AFC()
{
  result = qword_280B2E3E0;
  if (!qword_280B2E3E0)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C9056D0, &qword_2146F3D38);
    v4[0] = sub_2142E1B80();
    result = swift_getWitnessTable(MEMORY[0x277D83978], v3, v4);
    atomic_store(result, &qword_280B2E3E0);
  }

  return result;
}

unint64_t sub_2142E1B80()
{
  result = qword_280B2E940;
  if (!qword_280B2E940)
  {
    result = swift_getWitnessTable(aY_66, &type metadata for APSQuickRelayPluginAllocation, v0, v1);
    atomic_store(result, &qword_280B2E940);
  }

  return result;
}

unint64_t sub_2142E1C30()
{
  result = qword_280B30B90;
  if (!qword_280B30B90)
  {
    v4[1] = v0;
    v4[2] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C904798, qword_21473CFD0);
    v4[0] = MEMORY[0x277D83B90];
    result = swift_getWitnessTable(MEMORY[0x277D84F40], v3, v4);
    atomic_store(result, &qword_280B30B90);
  }

  return result;
}

unint64_t sub_2142E1CAC()
{
  result = qword_280B30DA0;
  if (!qword_280B30DA0)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C905680, &unk_2146F3CE0);
    v4[0] = sub_214061684();
    result = swift_getWitnessTable(MEMORY[0x277D84F40], v3, v4);
    atomic_store(result, &qword_280B30DA0);
  }

  return result;
}

unint64_t sub_2142E1D30()
{
  result = qword_280B2FE50;
  if (!qword_280B2FE50)
  {
    v4[1] = v0;
    v4[2] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C905688, &qword_2146F3CF0);
    v4[0] = MEMORY[0x277D839B8];
    result = swift_getWitnessTable(MEMORY[0x277D84F40], v3, v4);
    atomic_store(result, &qword_280B2FE50);
  }

  return result;
}

unint64_t sub_2142E1DAC()
{
  result = qword_280B2E928;
  if (!qword_280B2E928)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C905690, &qword_2146F3CF8);
    v4[0] = sub_2142E1E30();
    result = swift_getWitnessTable(MEMORY[0x277D84F40], v3, v4);
    atomic_store(result, &qword_280B2E928);
  }

  return result;
}

unint64_t sub_2142E1E30()
{
  result = qword_280B2E938;
  if (!qword_280B2E938)
  {
    result = swift_getWitnessTable(aA_74, &type metadata for APSUserPayloadDeliveryContext, v0, v1);
    atomic_store(result, &qword_280B2E938);
  }

  return result;
}

unint64_t sub_2142E1E84()
{
  result = qword_280B2FE08;
  if (!qword_280B2FE08)
  {
    v4[1] = v0;
    v4[2] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C905698, &qword_2146F3D00);
    v4[0] = MEMORY[0x277D84A30];
    result = swift_getWitnessTable(MEMORY[0x277D84F40], v3, v4);
    atomic_store(result, &qword_280B2FE08);
  }

  return result;
}

unint64_t sub_2142E1F00()
{
  result = qword_280B30BA0;
  if (!qword_280B30BA0)
  {
    v4[1] = v0;
    v4[2] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27C904F20, &qword_2146EE8A0);
    v4[0] = MEMORY[0x277D837D8];
    result = swift_getWitnessTable(MEMORY[0x277D83948], v3, v4);
    atomic_store(result, &qword_280B30BA0);
  }

  return result;
}

unint64_t sub_2142E1F7C()
{
  result = qword_280B2E480;
  if (!qword_280B2E480)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C9056A0, &qword_2146F3D08);
    v4[0] = sub_2142E2000();
    result = swift_getWitnessTable(MEMORY[0x277D83948], v3, v4);
    atomic_store(result, &qword_280B2E480);
  }

  return result;
}

unint64_t sub_2142E2000()
{
  result = qword_280B30D78;
  if (!qword_280B30D78)
  {
    result = swift_getWitnessTable(byte_2146F71D8, &type metadata for APSUserPayload, v0, v1);
    atomic_store(result, &qword_280B30D78);
  }

  return result;
}

unint64_t sub_2142E2054()
{
  result = qword_280B301A0;
  if (!qword_280B301A0)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C9056A8, &qword_2146F3D10);
    v4[0] = sub_2142E20D8();
    result = swift_getWitnessTable(MEMORY[0x277D84F40], v3, v4);
    atomic_store(result, &qword_280B301A0);
  }

  return result;
}

unint64_t sub_2142E20D8()
{
  result = qword_280B301A8;
  if (!qword_280B301A8)
  {
    result = swift_getWitnessTable(byte_2146F7228, &type metadata for APSUserPayloadHttpHeaders, v0, v1);
    atomic_store(result, &qword_280B301A8);
  }

  return result;
}

unint64_t sub_2142E212C()
{
  result = qword_280B2E418;
  if (!qword_280B2E418)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C9056B0, &qword_2146F3D18);
    v4[0] = sub_2142E21B0();
    result = swift_getWitnessTable(MEMORY[0x277D83948], v3, v4);
    atomic_store(result, &qword_280B2E418);
  }

  return result;
}

unint64_t sub_2142E21B0()
{
  result = qword_280B2EA60;
  if (!qword_280B2EA60)
  {
    result = swift_getWitnessTable(byte_2146F72C8, &type metadata for APSQuickRelayPluginRequest, v0, v1);
    atomic_store(result, &qword_280B2EA60);
  }

  return result;
}

unint64_t sub_2142E2204()
{
  result = qword_280B2FE00;
  if (!qword_280B2FE00)
  {
    v4[1] = v0;
    v4[2] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C9056B8, &qword_2146F3D20);
    v4[0] = MEMORY[0x277D84D40];
    result = swift_getWitnessTable(MEMORY[0x277D84F40], v3, v4);
    atomic_store(result, &qword_280B2FE00);
  }

  return result;
}

unint64_t sub_2142E2280()
{
  result = qword_280B2E3F8;
  if (!qword_280B2E3F8)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C9056C0, &qword_2146F3D28);
    v4[0] = sub_2142E2304();
    result = swift_getWitnessTable(MEMORY[0x277D83948], v3, v4);
    atomic_store(result, &qword_280B2E3F8);
  }

  return result;
}

unint64_t sub_2142E2304()
{
  result = qword_280B2E958;
  if (!qword_280B2E958)
  {
    result = swift_getWitnessTable(byte_2146F7318, &type metadata for APSQuickRelayAllocationStatus, v0, v1);
    atomic_store(result, &qword_280B2E958);
  }

  return result;
}

unint64_t sub_2142E2358()
{
  result = qword_280B2E408;
  if (!qword_280B2E408)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C9056C8, &qword_2146F3D30);
    v4[0] = sub_2142E23DC();
    result = swift_getWitnessTable(MEMORY[0x277D83948], v3, v4);
    atomic_store(result, &qword_280B2E408);
  }

  return result;
}

unint64_t sub_2142E23DC()
{
  result = qword_280B2E998;
  if (!qword_280B2E998)
  {
    result = swift_getWitnessTable(aQ_71, &type metadata for APSQuickRelaySelfAllocToken, v0, v1);
    atomic_store(result, &qword_280B2E998);
  }

  return result;
}

unint64_t sub_2142E2430()
{
  result = qword_280B2E3E8;
  if (!qword_280B2E3E8)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C9056D0, &qword_2146F3D38);
    v4[0] = sub_2142E24B4();
    result = swift_getWitnessTable(MEMORY[0x277D83948], v3, v4);
    atomic_store(result, &qword_280B2E3E8);
  }

  return result;
}

unint64_t sub_2142E24B4()
{
  result = qword_280B2E948;
  if (!qword_280B2E948)
  {
    result = swift_getWitnessTable(asc_2146F73B8, &type metadata for APSQuickRelayPluginAllocation, v0, v1);
    atomic_store(result, &qword_280B2E948);
  }

  return result;
}

unint64_t sub_2142E2508()
{
  result = qword_280B30CE8[0];
  if (!qword_280B30CE8[0])
  {
    result = swift_getWitnessTable(aE_96, &_s10CodingKeysON_633, v0, v1);
    atomic_store(result, qword_280B30CE8);
  }

  return result;
}

unint64_t sub_2142E255C()
{
  result = qword_27C9056F8;
  if (!qword_27C9056F8)
  {
    result = swift_getWitnessTable(byte_214731894, &_s10CodingKeysON_632, v0, v1);
    atomic_store(result, &qword_27C9056F8);
  }

  return result;
}

unint64_t sub_2142E25B0()
{
  result = qword_27C905710;
  if (!qword_27C905710)
  {
    result = swift_getWitnessTable(aM_158, &_s10CodingKeysON_631, v0, v1);
    atomic_store(result, &qword_27C905710);
  }

  return result;
}

unint64_t sub_2142E2604()
{
  result = qword_27C905728;
  if (!qword_27C905728)
  {
    result = swift_getWitnessTable(a5_47, &_s10CodingKeysON_630, v0, v1);
    atomic_store(result, &qword_27C905728);
  }

  return result;
}

unint64_t sub_2142E2658()
{
  result = qword_27C905740;
  if (!qword_27C905740)
  {
    result = swift_getWitnessTable(byte_2147317A4, &_s10CodingKeysON_629, v0, v1);
    atomic_store(result, &qword_27C905740);
  }

  return result;
}

unint64_t sub_2142E26AC()
{
  result = qword_27C905758;
  if (!qword_27C905758)
  {
    result = swift_getWitnessTable(asc_214731754, &_s10CodingKeysON_628, v0, v1);
    atomic_store(result, &qword_27C905758);
  }

  return result;
}

unint64_t sub_2142E2700()
{
  result = qword_27C905770;
  if (!qword_27C905770)
  {
    result = swift_getWitnessTable(asc_214731704, &_s10CodingKeysON_627, v0, v1);
    atomic_store(result, &qword_27C905770);
  }

  return result;
}

unint64_t sub_2142E2754()
{
  result = qword_27C905788;
  if (!qword_27C905788)
  {
    result = swift_getWitnessTable(aU_109, &_s10CodingKeysON_626, v0, v1);
    atomic_store(result, &qword_27C905788);
  }

  return result;
}

unint64_t sub_2142E27A8()
{
  result = qword_27C905790;
  if (!qword_27C905790)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27C9131A0, &unk_2146E9D10);
    v4[0] = sub_214328930(&qword_280B2FDD8, MEMORY[0x277CC9260], MEMORY[0x277CC9280]);
    result = swift_getWitnessTable(MEMORY[0x277D84F58], v3, v4);
    atomic_store(result, &qword_27C905790);
  }

  return result;
}

unint64_t sub_2142E285C()
{
  result = qword_27C905798;
  if (!qword_27C905798)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C9041D8, &qword_2146ED5C0);
    v4[0] = sub_214328930(&qword_27C9057A0, type metadata accessor for CloudKitSharingToken, a9_29);
    result = swift_getWitnessTable(MEMORY[0x277D84F58], v3, v4);
    atomic_store(result, &qword_27C905798);
  }

  return result;
}

unint64_t sub_2142E2910()
{
  result = qword_27C9057B0;
  if (!qword_27C9057B0)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27C9131A0, &unk_2146E9D10);
    v4[0] = sub_214328930(&qword_280B2FDE0, MEMORY[0x277CC9260], MEMORY[0x277CC9268]);
    result = swift_getWitnessTable(MEMORY[0x277D84F40], v3, v4);
    atomic_store(result, &qword_27C9057B0);
  }

  return result;
}

unint64_t sub_2142E29C4()
{
  result = qword_27C9057B8;
  if (!qword_27C9057B8)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C9041D8, &qword_2146ED5C0);
    v4[0] = sub_214328930(&qword_27C9057C0, type metadata accessor for CloudKitSharingToken, byte_2146F88F8);
    result = swift_getWitnessTable(MEMORY[0x277D84F40], v3, v4);
    atomic_store(result, &qword_27C9057B8);
  }

  return result;
}

unint64_t sub_2142E2A78()
{
  result = qword_27C9057D0;
  if (!qword_27C9057D0)
  {
    result = swift_getWitnessTable(aS_10, &_s10CodingKeysON_625, v0, v1);
    atomic_store(result, &qword_27C9057D0);
  }

  return result;
}

unint64_t sub_2142E2ACC()
{
  result = qword_27C9057E0;
  if (!qword_27C9057E0)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C9057D8, &qword_2146F3DD8);
    v4[0] = sub_214099EE0();
    result = swift_getWitnessTable(MEMORY[0x277D84F58], v3, v4);
    atomic_store(result, &qword_27C9057E0);
  }

  return result;
}

unint64_t sub_2142E2B50()
{
  result = qword_27C9057F0;
  if (!qword_27C9057F0)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C9057E8, &qword_2146F3DE0);
    v4[0] = sub_214099FB8();
    result = swift_getWitnessTable(MEMORY[0x277D84F58], v3, v4);
    atomic_store(result, &qword_27C9057F0);
  }

  return result;
}

unint64_t sub_2142E2BD4()
{
  result = qword_27C905800;
  if (!qword_27C905800)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C9057F8, &qword_2146F3DE8);
    v4[0] = sub_21409A0CC();
    result = swift_getWitnessTable(MEMORY[0x277D84F58], v3, v4);
    atomic_store(result, &qword_27C905800);
  }

  return result;
}

unint64_t sub_2142E2C58()
{
  result = qword_27C905808;
  if (!qword_27C905808)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C905280, &qword_2146F1C60);
    v4[0] = sub_214328930(&qword_27C905288, type metadata accessor for AccountsRepresentativeCloudShareInfo, byte_2146F7430);
    result = swift_getWitnessTable(MEMORY[0x277D84F58], v3, v4);
    atomic_store(result, &qword_27C905808);
  }

  return result;
}

unint64_t sub_2142E2D0C()
{
  result = qword_27C905818;
  if (!qword_27C905818)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C9057D8, &qword_2146F3DD8);
    v4[0] = sub_214068DE4();
    result = swift_getWitnessTable(MEMORY[0x277D84F40], v3, v4);
    atomic_store(result, &qword_27C905818);
  }

  return result;
}

unint64_t sub_2142E2D90()
{
  result = qword_27C905820;
  if (!qword_27C905820)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C9057E8, &qword_2146F3DE0);
    v4[0] = sub_214068E38();
    result = swift_getWitnessTable(MEMORY[0x277D84F40], v3, v4);
    atomic_store(result, &qword_27C905820);
  }

  return result;
}

unint64_t sub_2142E2E14()
{
  result = qword_27C905828;
  if (!qword_27C905828)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C9057F8, &qword_2146F3DE8);
    v4[0] = sub_214068E8C();
    result = swift_getWitnessTable(MEMORY[0x277D84F40], v3, v4);
    atomic_store(result, &qword_27C905828);
  }

  return result;
}

unint64_t sub_2142E2E98()
{
  result = qword_27C905830;
  if (!qword_27C905830)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C905280, &qword_2146F1C60);
    v4[0] = sub_214328930(&qword_27C905290, type metadata accessor for AccountsRepresentativeCloudShareInfo, byte_2146F7458);
    result = swift_getWitnessTable(MEMORY[0x277D84F40], v3, v4);
    atomic_store(result, &qword_27C905830);
  }

  return result;
}

unint64_t sub_2142E2F4C()
{
  result = qword_280B30298;
  if (!qword_280B30298)
  {
    result = swift_getWitnessTable(byte_214731614, &_s10CodingKeysON_624, v0, v1);
    atomic_store(result, &qword_280B30298);
  }

  return result;
}

unint64_t sub_2142E2FA0()
{
  result = qword_27C905850;
  if (!qword_27C905850)
  {
    result = swift_getWitnessTable(aE_97, &_s10CodingKeysON_623, v0, v1);
    atomic_store(result, &qword_27C905850);
  }

  return result;
}

BOOL sub_2142E3004(uint64_t *a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C911C78, &qword_2147319F8);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7 - v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C908F50, &qword_2146F54F0);
  sub_2146D8DB8();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C911C80, &unk_214731A00);
  v5 = (*(*(v4 - 8) + 48))(v3, 1, v4) != 1;
  sub_213FB2DF4(v3, &qword_27C911C78, &qword_2147319F8);
  return v5;
}

uint64_t sub_2142E3134(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = sub_2146D8918();
  if (v5)
  {
    v13[2] = v4;
    v13[3] = v5;
    sub_214069AD8();
    v6 = sub_2146D9DD8();
    v8 = v7;

    v13[0] = v6;
    v13[1] = v8;
    MEMORY[0x28223BE20](v9);
    v12[2] = v13;
    v10 = sub_21441C084(sub_21406D1FC, v12, v3);
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

BOOL sub_2142E3214(void *a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F30, &unk_2146EFA20);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7 - v2;
  sub_2146D8B18();
  v4 = sub_2146D8B88();
  v5 = (*(*(v4 - 8) + 48))(v3, 1, v4) != 1;
  sub_213FB2DF4(v3, &unk_27C904F30, &unk_2146EFA20);
  return v5;
}

uint64_t sub_2142E32F8(uint64_t *a1, char *a2, uint64_t a3)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a3 + 16);
  v7[0] = *a3;
  v7[1] = v5;
  v8 = *(a3 + 32);
  return sub_2145C62F0(v3, v4, *a2, v7) & 1;
}

unint64_t sub_2142E3370()
{
  result = qword_280B301D0;
  if (!qword_280B301D0)
  {
    result = swift_getWitnessTable(byte_214731574, &_s10CodingKeysON_622, v0, v1);
    atomic_store(result, &qword_280B301D0);
  }

  return result;
}

unint64_t sub_2142E3418()
{
  result = qword_27C905878;
  if (!qword_27C905878)
  {
    result = swift_getWitnessTable(byte_214731524, &_s10CodingKeysON_621, v0, v1);
    atomic_store(result, &qword_27C905878);
  }

  return result;
}

unint64_t sub_2142E351C()
{
  result = qword_27C905890;
  if (!qword_27C905890)
  {
    result = swift_getWitnessTable(aU_110, &_s10CodingKeysON_620, v0, v1);
    atomic_store(result, &qword_27C905890);
  }

  return result;
}

unint64_t sub_2142E3570()
{
  result = qword_280B2E338;
  if (!qword_280B2E338)
  {
    v4[1] = v0;
    v4[2] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C905898, &unk_2146F3E40);
    v4[0] = MEMORY[0x277D83EB0];
    result = swift_getWitnessTable(MEMORY[0x277D84F58], v3, v4);
    atomic_store(result, &qword_280B2E338);
  }

  return result;
}

unint64_t sub_2142E35EC()
{
  result = qword_280B2E3A0;
  if (!qword_280B2E3A0)
  {
    v4[1] = v0;
    v4[2] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C9058A0, &unk_2147379A0);
    v4[0] = MEMORY[0x277D83A30];
    result = swift_getWitnessTable(MEMORY[0x277D84F58], v3, v4);
    atomic_store(result, &qword_280B2E3A0);
  }

  return result;
}

unint64_t sub_2142E3668()
{
  result = qword_27C9058B0;
  if (!qword_27C9058B0)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C9058A8, &qword_2146F3E50);
    v4[0] = sub_214328930(&qword_27C9058B8, type metadata accessor for CGPoint, MEMORY[0x277CBF2B8]);
    result = swift_getWitnessTable(MEMORY[0x277D84F58], v3, v4);
    atomic_store(result, &qword_27C9058B0);
  }

  return result;
}

unint64_t sub_2142E3778()
{
  result = qword_280B2E340;
  if (!qword_280B2E340)
  {
    v4[1] = v0;
    v4[2] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C905898, &unk_2146F3E40);
    v4[0] = MEMORY[0x277D83E90];
    result = swift_getWitnessTable(MEMORY[0x277D84F40], v3, v4);
    atomic_store(result, &qword_280B2E340);
  }

  return result;
}

unint64_t sub_2142E37F4()
{
  result = qword_280B2E3A8;
  if (!qword_280B2E3A8)
  {
    v4[1] = v0;
    v4[2] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C9058A0, &unk_2147379A0);
    v4[0] = MEMORY[0x277D83A08];
    result = swift_getWitnessTable(MEMORY[0x277D84F40], v3, v4);
    atomic_store(result, &qword_280B2E3A8);
  }

  return result;
}

unint64_t sub_2142E3870()
{
  result = qword_27C9058C8;
  if (!qword_27C9058C8)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C9058A8, &qword_2146F3E50);
    v4[0] = sub_214328930(&qword_27C9058D0, type metadata accessor for CGPoint, MEMORY[0x277CBF2A8]);
    result = swift_getWitnessTable(MEMORY[0x277D84F40], v3, v4);
    atomic_store(result, &qword_27C9058C8);
  }

  return result;
}

unint64_t sub_2142E3924()
{
  result = qword_280B304D0;
  if (!qword_280B304D0)
  {
    result = swift_getWitnessTable(byte_214731484, &_s10CodingKeysON_619, v0, v1);
    atomic_store(result, &qword_280B304D0);
  }

  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

unint64_t sub_2142E39C8()
{
  result = qword_280B2F288;
  if (!qword_280B2F288)
  {
    result = swift_getWitnessTable(byte_21473145C, &type metadata for AttributeCodingType, v0, v1);
    atomic_store(result, &qword_280B2F288);
  }

  return result;
}

unint64_t sub_2142E3A1C()
{
  result = qword_280B302B0;
  if (!qword_280B302B0)
  {
    result = swift_getWitnessTable(aO_7, &type metadata for FileTransferAttribute, v0, v1);
    atomic_store(result, &qword_280B302B0);
  }

  return result;
}

void sub_2142E3A70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, unsigned __int8 a40)
{
  v41 = a40 >> 5;
  if (v41 <= 1)
  {
    if (!v41)
    {
LABEL_13:

      return;
    }

    sub_213FDC6D0(a28, a29);
  }

  else
  {
    if (v41 != 2)
    {
      if (v41 == 3)
      {
      }

      else
      {
        if (v41 != 4)
        {
          return;
        }

        sub_213FDC6D0(a3, a4);
      }

      goto LABEL_13;
    }

    sub_213FDC6D0(a18, a19);

    a33 = a23;
    a34 = a24;
  }

  sub_213FDC6D0(a33, a34);
}

unint64_t sub_2142E3C9C()
{
  result = qword_280B302B8;
  if (!qword_280B302B8)
  {
    result = swift_getWitnessTable(aIx, &type metadata for FileTransferAttribute, v0, v1);
    atomic_store(result, &qword_280B302B8);
  }

  return result;
}

uint64_t __swift_deallocate_boxed_opaque_existential_1(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x216056AC0);
  }

  return result;
}

unint64_t sub_2142E3D40()
{
  result = qword_280B30B60;
  if (!qword_280B30B60)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LinkIsRichLinkAttribute, &type metadata for LinkIsRichLinkAttribute, v0, v1);
    atomic_store(result, &qword_280B30B60);
  }

  return result;
}

unint64_t sub_2142E3D94()
{
  result = qword_280B30B68;
  if (!qword_280B30B68)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LinkIsRichLinkAttribute, &type metadata for LinkIsRichLinkAttribute, v0, v1);
    atomic_store(result, &qword_280B30B68);
  }

  return result;
}

unint64_t sub_2142E3DE8()
{
  result = qword_280B30188;
  if (!qword_280B30188)
  {
    result = swift_getWitnessTable(asc_214749D8C, &type metadata for TextStrikethroughAttribute, v0, v1);
    atomic_store(result, &qword_280B30188);
  }

  return result;
}

unint64_t sub_2142E3E3C()
{
  result = qword_280B30190;
  if (!qword_280B30190)
  {
    result = swift_getWitnessTable(a9y, &type metadata for TextStrikethroughAttribute, v0, v1);
    atomic_store(result, &qword_280B30190);
  }

  return result;
}

unint64_t sub_2142E3E90()
{
  result = qword_280B301F8;
  if (!qword_280B301F8)
  {
    result = swift_getWitnessTable(byte_214749D28, &type metadata for TextUnderlineAttribute, v0, v1);
    atomic_store(result, &qword_280B301F8);
  }

  return result;
}

unint64_t sub_2142E3EE4()
{
  result = qword_280B30200;
  if (!qword_280B30200)
  {
    result = swift_getWitnessTable(byte_214702880, &type metadata for TextUnderlineAttribute, v0, v1);
    atomic_store(result, &qword_280B30200);
  }

  return result;
}

unint64_t sub_2142E3F38()
{
  result = qword_280B303A8;
  if (!qword_280B303A8)
  {
    result = swift_getWitnessTable(asc_214749CC4, &type metadata for TextItalicAttribute, v0, v1);
    atomic_store(result, &qword_280B303A8);
  }

  return result;
}

unint64_t sub_2142E3F8C()
{
  result = qword_280B303B0;
  if (!qword_280B303B0)
  {
    result = swift_getWitnessTable(byte_214702830, &type metadata for TextItalicAttribute, v0, v1);
    atomic_store(result, &qword_280B303B0);
  }

  return result;
}

unint64_t sub_2142E3FE0()
{
  result = qword_280B304F8;
  if (!qword_280B304F8)
  {
    result = swift_getWitnessTable(byte_214749C60, &type metadata for TextBoldAttribute, v0, v1);
    atomic_store(result, &qword_280B304F8);
  }

  return result;
}

unint64_t sub_2142E4034()
{
  result = qword_280B30500;
  if (!qword_280B30500)
  {
    result = swift_getWitnessTable(aZ_7, &type metadata for TextBoldAttribute, v0, v1);
    atomic_store(result, &qword_280B30500);
  }

  return result;
}

unint64_t sub_2142E4088()
{
  result = qword_280B303D0;
  if (!qword_280B303D0)
  {
    result = swift_getWitnessTable(byte_214749BFC, &type metadata for TextEffectAttribute, v0, v1);
    atomic_store(result, &qword_280B303D0);
  }

  return result;
}

unint64_t sub_2142E40DC()
{
  result = qword_280B303D8;
  if (!qword_280B303D8)
  {
    result = swift_getWitnessTable(aYz, &type metadata for TextEffectAttribute, v0, v1);
    atomic_store(result, &qword_280B303D8);
  }

  return result;
}

unint64_t sub_2142E4130()
{
  result = qword_280B30540;
  if (!qword_280B30540)
  {
    result = swift_getWitnessTable(aL_5, &type metadata for MentionAttribute, v0, v1);
    atomic_store(result, &qword_280B30540);
  }

  return result;
}

unint64_t sub_2142E4184()
{
  result = qword_280B30548;
  if (!qword_280B30548)
  {
    result = swift_getWitnessTable(byte_214702740, &type metadata for MentionAttribute, v0, v1);
    atomic_store(result, &qword_280B30548);
  }

  return result;
}

unint64_t sub_2142E41D8()
{
  result = qword_280B30050;
  if (!qword_280B30050)
  {
    result = swift_getWitnessTable(aF_6, &type metadata for BreadcrumbTextMarkerAttribute, v0, v1);
    atomic_store(result, &qword_280B30050);
  }

  return result;
}

unint64_t sub_2142E422C()
{
  result = qword_280B30058;
  if (!qword_280B30058)
  {
    result = swift_getWitnessTable(byte_2147026F0, &type metadata for BreadcrumbTextMarkerAttribute, v0, v1);
    atomic_store(result, &qword_280B30058);
  }

  return result;
}

unint64_t sub_2142E4280()
{
  result = qword_280B2FFA0;
  if (!qword_280B2FFA0)
  {
    result = swift_getWitnessTable(a4_1, &type metadata for BreadcrumbTextOptionFlagsAttribute, v0, v1);
    atomic_store(result, &qword_280B2FFA0);
  }

  return result;
}

unint64_t sub_2142E42D4()
{
  result = qword_280B2FFA8;
  if (!qword_280B2FFA8)
  {
    result = swift_getWitnessTable(aI_85, &type metadata for BreadcrumbTextOptionFlagsAttribute, v0, v1);
    atomic_store(result, &qword_280B2FFA8);
  }

  return result;
}

unint64_t sub_2142E4328()
{
  result = qword_280B30358;
  if (!qword_280B30358)
  {
    result = swift_getWitnessTable(byte_214749950, &type metadata for MessagePartAttribute, v0, v1);
    atomic_store(result, &qword_280B30358);
  }

  return result;
}

unint64_t sub_2142E437C()
{
  result = qword_280B30370;
  if (!qword_280B30370)
  {
    result = swift_getWitnessTable(byte_214702650, &type metadata for MessagePartAttribute, v0, v1);
    atomic_store(result, &qword_280B30370);
  }

  return result;
}

unint64_t sub_2142E43D0()
{
  result = qword_280B30078;
  if (!qword_280B30078)
  {
    result = swift_getWitnessTable(byte_2147498EC, &type metadata for BaseWritingDirectionAttribute, v0, v1);
    atomic_store(result, &qword_280B30078);
  }

  return result;
}

unint64_t sub_2142E4424()
{
  result = qword_280B30080;
  if (!qword_280B30080)
  {
    result = swift_getWitnessTable(asc_214702600, &type metadata for BaseWritingDirectionAttribute, v0, v1);
    atomic_store(result, &qword_280B30080);
  }

  return result;
}

unint64_t sub_2142E4478()
{
  result = qword_280B2F290;
  if (!qword_280B2F290)
  {
    result = swift_getWitnessTable(byte_214731434, &type metadata for AttributeCodingType, v0, v1);
    atomic_store(result, &qword_280B2F290);
  }

  return result;
}

unint64_t sub_2142E4520()
{
  result = qword_280B302C0;
  if (!qword_280B302C0)
  {
    result = swift_getWitnessTable(byte_2147029E8, &type metadata for FileTransferAttribute, v0, v1);
    atomic_store(result, &qword_280B302C0);
  }

  return result;
}

unint64_t sub_2142E4574()
{
  result = qword_280B30B70;
  if (!qword_280B30B70)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LinkIsRichLinkAttribute, &type metadata for LinkIsRichLinkAttribute, v0, v1);
    atomic_store(result, &qword_280B30B70);
  }

  return result;
}

unint64_t sub_2142E45C8()
{
  result = qword_280B30198;
  if (!qword_280B30198)
  {
    result = swift_getWitnessTable(byte_2147028F8, &type metadata for TextStrikethroughAttribute, v0, v1);
    atomic_store(result, &qword_280B30198);
  }

  return result;
}

unint64_t sub_2142E461C()
{
  result = qword_280B30208[0];
  if (!qword_280B30208[0])
  {
    result = swift_getWitnessTable(a1u_0, &type metadata for TextUnderlineAttribute, v0, v1);
    atomic_store(result, qword_280B30208);
  }

  return result;
}

unint64_t sub_2142E4670()
{
  result = qword_280B303B8;
  if (!qword_280B303B8)
  {
    result = swift_getWitnessTable(byte_214702858, &type metadata for TextItalicAttribute, v0, v1);
    atomic_store(result, &qword_280B303B8);
  }

  return result;
}

unint64_t sub_2142E46C4()
{
  result = qword_280B30508;
  if (!qword_280B30508)
  {
    result = swift_getWitnessTable(byte_214702808, &type metadata for TextBoldAttribute, v0, v1);
    atomic_store(result, &qword_280B30508);
  }

  return result;
}

unint64_t sub_2142E4718()
{
  result = qword_280B303E0;
  if (!qword_280B303E0)
  {
    result = swift_getWitnessTable(aV_17, &type metadata for TextEffectAttribute, v0, v1);
    atomic_store(result, &qword_280B303E0);
  }

  return result;
}

unint64_t sub_2142E476C()
{
  result = qword_280B30550;
  if (!qword_280B30550)
  {
    result = swift_getWitnessTable(aQv, &type metadata for MentionAttribute, v0, v1);
    atomic_store(result, &qword_280B30550);
  }

  return result;
}

unint64_t sub_2142E47C0()
{
  result = qword_280B30060;
  if (!qword_280B30060)
  {
    result = swift_getWitnessTable(byte_214702718, &type metadata for BreadcrumbTextMarkerAttribute, v0, v1);
    atomic_store(result, &qword_280B30060);
  }

  return result;
}

unint64_t sub_2142E4814()
{
  result = qword_280B2FFB0[0];
  if (!qword_280B2FFB0[0])
  {
    result = swift_getWitnessTable(byte_2147026C8, &type metadata for BreadcrumbTextOptionFlagsAttribute, v0, v1);
    atomic_store(result, qword_280B2FFB0);
  }

  return result;
}

unint64_t sub_2142E4868()
{
  result = qword_280B30378;
  if (!qword_280B30378)
  {
    result = swift_getWitnessTable(aAw_0, &type metadata for MessagePartAttribute, v0, v1);
    atomic_store(result, &qword_280B30378);
  }

  return result;
}

unint64_t sub_2142E48BC()
{
  result = qword_280B30088;
  if (!qword_280B30088)
  {
    result = swift_getWitnessTable(byte_214702628, &type metadata for BaseWritingDirectionAttribute, v0, v1);
    atomic_store(result, &qword_280B30088);
  }

  return result;
}

unint64_t sub_2142E4964()
{
  result = qword_280B308C0;
  if (!qword_280B308C0)
  {
    result = swift_getWitnessTable(aE_98, &_s10CodingKeysON_618, v0, v1);
    atomic_store(result, &qword_280B308C0);
  }

  return result;
}

unint64_t sub_2142E49B8()
{
  result = qword_280B2F6C0;
  if (!qword_280B2F6C0)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C9058F0, &qword_2146F3E80);
    v4[0] = sub_2142E4A3C();
    result = swift_getWitnessTable(MEMORY[0x277D84F58], v3, v4);
    atomic_store(result, &qword_280B2F6C0);
  }

  return result;
}

unint64_t sub_2142E4A3C()
{
  result = qword_280B2F6D0;
  if (!qword_280B2F6D0)
  {
    result = swift_getWitnessTable(aUm_5, &type metadata for AttributionInfo.PreviewGenerationConstraints, v0, v1);
    atomic_store(result, &qword_280B2F6D0);
  }

  return result;
}

unint64_t sub_2142E4AEC()
{
  result = qword_280B2F6C8;
  if (!qword_280B2F6C8)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C9058F0, &qword_2146F3E80);
    v4[0] = sub_2142E4B70();
    result = swift_getWitnessTable(MEMORY[0x277D84F40], v3, v4);
    atomic_store(result, &qword_280B2F6C8);
  }

  return result;
}

unint64_t sub_2142E4B70()
{
  result = qword_280B2F6D8;
  if (!qword_280B2F6D8)
  {
    result = swift_getWitnessTable(byte_2146FDD08, &type metadata for AttributionInfo.PreviewGenerationConstraints, v0, v1);
    atomic_store(result, &qword_280B2F6D8);
  }

  return result;
}

uint64_t sub_2142E4BC4(uint64_t *a1, char *a2, unint64_t *a3)
{
  v3 = *a2;
  v4 = *a3;
  v8 = *a1;
  v6[2] = &v8;
  v7 = v3;
  return sub_2140479E4(sub_21438EDD8, v6, v4) & 1;
}

uint64_t sub_2142E4C28(uint64_t *a1, char *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v8 = *a3;
  v6[2] = &v8;
  v7 = v4;
  return sub_214042458(sub_21438ECC4, v6, v3) & 1;
}

uint64_t sub_2142E4CDC(uint64_t *a1, uint64_t a2, void *a3)
{
  if (*a1 == *a3 && a1[1] == a3[1])
  {
    return 1;
  }

  else
  {
    return sub_2146DA6A8();
  }
}

unint64_t sub_2142E4DF4()
{
  result = qword_27C905908;
  if (!qword_27C905908)
  {
    result = swift_getWitnessTable(byte_214731394, &_s10CodingKeysON_617, v0, v1);
    atomic_store(result, &qword_27C905908);
  }

  return result;
}

unint64_t sub_2142E4E48()
{
  result = qword_27C905920;
  if (!qword_27C905920)
  {
    result = swift_getWitnessTable(aM_159, &_s10CodingKeysON_616, v0, v1);
    atomic_store(result, &qword_27C905920);
  }

  return result;
}

unint64_t sub_2142E4E9C()
{
  result = qword_280B2E460;
  if (!qword_280B2E460)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C905928, &qword_2146F3EC0);
    v4[0] = sub_2142E4F20();
    result = swift_getWitnessTable(MEMORY[0x277D83978], v3, v4);
    atomic_store(result, &qword_280B2E460);
  }

  return result;
}

unint64_t sub_2142E4F20()
{
  result = qword_280B2F6B0;
  if (!qword_280B2F6B0)
  {
    result = swift_getWitnessTable(aY_67, &type metadata for AttributionInfo, v0, v1);
    atomic_store(result, &qword_280B2F6B0);
  }

  return result;
}

unint64_t sub_2142E4F74()
{
  result = qword_280B2F2D8;
  if (!qword_280B2F2D8)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C905930, &qword_2146F3EC8);
    v4[0] = sub_2142E4FF8();
    result = swift_getWitnessTable(MEMORY[0x277D84F58], v3, v4);
    atomic_store(result, &qword_280B2F2D8);
  }

  return result;
}

unint64_t sub_2142E4FF8()
{
  result = qword_280B2F2F0;
  if (!qword_280B2F2F0)
  {
    result = swift_getWitnessTable(byte_2146F7660, &type metadata for _AttributedString, v0, v1);
    atomic_store(result, &qword_280B2F2F0);
  }

  return result;
}

unint64_t sub_2142E504C()
{
  result = qword_27C905940;
  if (!qword_27C905940)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C905938, &unk_2146F3ED0);
    v4[0] = sub_2142E50D0();
    result = swift_getWitnessTable(MEMORY[0x277D84F58], v3, v4);
    atomic_store(result, &qword_27C905940);
  }

  return result;
}

unint64_t sub_2142E50D0()
{
  result = qword_280B2E380;
  if (!qword_280B2E380)
  {
    v4[1] = v0;
    v4[2] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C904770, &qword_2146ED4C0);
    v4[0] = MEMORY[0x277D83BB8];
    result = swift_getWitnessTable(MEMORY[0x277D83D38], v3, v4);
    atomic_store(result, &qword_280B2E380);
  }

  return result;
}

unint64_t sub_2142E514C()
{
  result = qword_27C905948;
  if (!qword_27C905948)
  {
    result = swift_getWitnessTable(asc_2146F9500, &type metadata for EncodedAttachments, v0, v1);
    atomic_store(result, &qword_27C905948);
  }

  return result;
}

unint64_t sub_2142E51A0()
{
  result = qword_280B2E468;
  if (!qword_280B2E468)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C905928, &qword_2146F3EC0);
    v4[0] = sub_2142E5224();
    result = swift_getWitnessTable(MEMORY[0x277D83948], v3, v4);
    atomic_store(result, &qword_280B2E468);
  }

  return result;
}

unint64_t sub_2142E5224()
{
  result = qword_280B2F6B8;
  if (!qword_280B2F6B8)
  {
    result = swift_getWitnessTable(byte_2146F76D8, &type metadata for AttributionInfo, v0, v1);
    atomic_store(result, &qword_280B2F6B8);
  }

  return result;
}

unint64_t sub_2142E5278()
{
  result = qword_280B2F2E0;
  if (!qword_280B2F2E0)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C905930, &qword_2146F3EC8);
    v4[0] = sub_2142E52FC();
    result = swift_getWitnessTable(MEMORY[0x277D84F40], v3, v4);
    atomic_store(result, &qword_280B2F2E0);
  }

  return result;
}

unint64_t sub_2142E52FC()
{
  result = qword_280B2F2F8[0];
  if (!qword_280B2F2F8[0])
  {
    result = swift_getWitnessTable(aQ_72, &type metadata for _AttributedString, v0, v1);
    atomic_store(result, qword_280B2F2F8);
  }

  return result;
}

unint64_t sub_2142E5350()
{
  result = qword_27C905958;
  if (!qword_27C905958)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C905938, &unk_2146F3ED0);
    v4[0] = sub_2142E53D4();
    result = swift_getWitnessTable(MEMORY[0x277D84F40], v3, v4);
    atomic_store(result, &qword_27C905958);
  }

  return result;
}

unint64_t sub_2142E53D4()
{
  result = qword_280B2E388;
  if (!qword_280B2E388)
  {
    v4[1] = v0;
    v4[2] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C904770, &qword_2146ED4C0);
    v4[0] = MEMORY[0x277D83B90];
    result = swift_getWitnessTable(MEMORY[0x277D83D08], v3, v4);
    atomic_store(result, &qword_280B2E388);
  }

  return result;
}

unint64_t sub_2142E5450()
{
  result = qword_27C905960;
  if (!qword_27C905960)
  {
    result = swift_getWitnessTable(byte_2146F9528, &type metadata for EncodedAttachments, v0, v1);
    atomic_store(result, &qword_27C905960);
  }

  return result;
}

unint64_t sub_2142E54F8()
{
  result = qword_27C905970;
  if (!qword_27C905970)
  {
    result = swift_getWitnessTable(a5_48, &_s10CodingKeysON_615, v0, v1);
    atomic_store(result, &qword_27C905970);
  }

  return result;
}

unint64_t sub_2142E554C()
{
  result = qword_27C905980;
  if (!qword_27C905980)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C905978, &qword_2146F3EF0);
    v4[0] = sub_21406116C();
    result = swift_getWitnessTable(MEMORY[0x277D83978], v3, v4);
    atomic_store(result, &qword_27C905980);
  }

  return result;
}

unint64_t sub_2142E562C()
{
  result = qword_27C905990;
  if (!qword_27C905990)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C905978, &qword_2146F3EF0);
    v4[0] = sub_214061684();
    result = swift_getWitnessTable(MEMORY[0x277D83948], v3, v4);
    atomic_store(result, &qword_27C905990);
  }

  return result;
}

unint64_t sub_2142E5738()
{
  result = qword_27C9059A0;
  if (!qword_27C9059A0)
  {
    result = swift_getWitnessTable(byte_2147312A4, &_s10CodingKeysON_614, v0, v1);
    atomic_store(result, &qword_27C9059A0);
  }

  return result;
}

unint64_t sub_2142E578C()
{
  result = qword_27C9059A8;
  if (!qword_27C9059A8)
  {
    result = swift_getWitnessTable(byte_214737C70, &type metadata for BasicEmojiTapback.AssociatedMessageType, v0, v1);
    atomic_store(result, &qword_27C9059A8);
  }

  return result;
}

unint64_t sub_2142E57E0()
{
  result = qword_27C9059B8;
  if (!qword_27C9059B8)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C9059B0, &qword_2146F3F08);
    v4[0] = sub_2142E5864();
    result = swift_getWitnessTable(MEMORY[0x277D84F58], v3, v4);
    atomic_store(result, &qword_27C9059B8);
  }

  return result;
}

unint64_t sub_2142E5864()
{
  result = qword_27C9059C0;
  if (!qword_27C9059C0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BasicTapBack.MessageSummaryInfo, &type metadata for BasicTapBack.MessageSummaryInfo, v0, v1);
    atomic_store(result, &qword_27C9059C0);
  }

  return result;
}

uint64_t sub_2142E58B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

unint64_t sub_2142E5928()
{
  result = qword_27C9059D0;
  if (!qword_27C9059D0)
  {
    result = swift_getWitnessTable(aA_75, &type metadata for BasicEmojiTapback.AssociatedMessageType, v0, v1);
    atomic_store(result, &qword_27C9059D0);
  }

  return result;
}

uint64_t sub_2142E597C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

unint64_t sub_2142E5990()
{
  result = qword_27C9059D8;
  if (!qword_27C9059D8)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C9059B0, &qword_2146F3F08);
    v4[0] = sub_2142E5A14();
    result = swift_getWitnessTable(MEMORY[0x277D84F40], v3, v4);
    atomic_store(result, &qword_27C9059D8);
  }

  return result;
}

unint64_t sub_2142E5A14()
{
  result = qword_27C9059E0;
  if (!qword_27C9059E0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BasicTapBack.MessageSummaryInfo, &type metadata for BasicTapBack.MessageSummaryInfo, v0, v1);
    atomic_store(result, &qword_27C9059E0);
  }

  return result;
}

uint64_t sub_2142E5A68(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result != 1)
  {
    return sub_214031CA0(result, a2, a3);
  }

  return result;
}

unint64_t sub_2142E5ACC()
{
  result = qword_27C9059F0;
  if (!qword_27C9059F0)
  {
    result = swift_getWitnessTable(aG_6, &_s10CodingKeysON_613, v0, v1);
    atomic_store(result, &qword_27C9059F0);
  }

  return result;
}

unint64_t sub_2142E5BD0()
{
  result = qword_27C905A08;
  if (!qword_27C905A08)
  {
    result = swift_getWitnessTable(asc_214731204, &_s10CodingKeysON_612, v0, v1);
    atomic_store(result, &qword_27C905A08);
  }

  return result;
}

unint64_t sub_2142E5C24()
{
  result = qword_27C905A10;
  if (!qword_27C905A10)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BasicTapBack.AssociatedMessageType, &type metadata for BasicTapBack.AssociatedMessageType, v0, v1);
    atomic_store(result, &qword_27C905A10);
  }

  return result;
}

unint64_t sub_2142E5CD4()
{
  result = qword_27C905A20;
  if (!qword_27C905A20)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for BasicTapBack.AssociatedMessageType, &type metadata for BasicTapBack.AssociatedMessageType, v0, v1);
    atomic_store(result, &qword_27C905A20);
  }

  return result;
}

unint64_t sub_2142E5D28()
{
  result = qword_27C905A30;
  if (!qword_27C905A30)
  {
    result = swift_getWitnessTable(aU_111, &_s10CodingKeysON_611, v0, v1);
    atomic_store(result, &qword_27C905A30);
  }

  return result;
}

unint64_t sub_2142E5D7C()
{
  result = qword_27C905A48;
  if (!qword_27C905A48)
  {
    result = swift_getWitnessTable(aT_17, &_s10CodingKeysON_610, v0, v1);
    atomic_store(result, &qword_27C905A48);
  }

  return result;
}

unint64_t sub_2142E5DD0()
{
  result = qword_27C905A60;
  if (!qword_27C905A60)
  {
    result = swift_getWitnessTable(byte_214731114, &_s10CodingKeysON_609, v0, v1);
    atomic_store(result, &qword_27C905A60);
  }

  return result;
}

unint64_t sub_2142E5E80()
{
  result = qword_27C905A78;
  if (!qword_27C905A78)
  {
    result = swift_getWitnessTable(aE_99, &_s10CodingKeysON_608, v0, v1);
    atomic_store(result, &qword_27C905A78);
  }

  return result;
}

unint64_t sub_2142E5F28()
{
  result = qword_27C905A90;
  if (!qword_27C905A90)
  {
    result = swift_getWitnessTable(byte_214731074, &_s10CodingKeysON_607, v0, v1);
    atomic_store(result, &qword_27C905A90);
  }

  return result;
}

unint64_t sub_2142E5F7C()
{
  result = qword_27C905A98;
  if (!qword_27C905A98)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CSDMHandle.HandleType, &type metadata for CSDMHandle.HandleType, v0, v1);
    atomic_store(result, &qword_27C905A98);
  }

  return result;
}

unint64_t sub_2142E602C()
{
  result = qword_27C905AA8;
  if (!qword_27C905AA8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CSDMHandle.HandleType, &type metadata for CSDMHandle.HandleType, v0, v1);
    atomic_store(result, &qword_27C905AA8);
  }

  return result;
}

unint64_t sub_2142E60D4()
{
  result = qword_27C905AB8;
  if (!qword_27C905AB8)
  {
    result = swift_getWitnessTable(byte_214731024, &_s10CodingKeysON_606, v0, v1);
    atomic_store(result, &qword_27C905AB8);
  }

  return result;
}

unint64_t sub_2142E6128()
{
  result = qword_27C905AC8;
  if (!qword_27C905AC8)
  {
    v4[1] = v0;
    v4[2] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C905AC0, &unk_2146F3F90);
    v4[0] = MEMORY[0x277D84CF0];
    result = swift_getWitnessTable(MEMORY[0x277D84F58], v3, v4);
    atomic_store(result, &qword_27C905AC8);
  }

  return result;
}

unint64_t sub_2142E61A4()
{
  result = qword_27C905AD8;
  if (!qword_27C905AD8)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C905AD0, &unk_214759900);
    v4[0] = sub_2142E6228();
    result = swift_getWitnessTable(MEMORY[0x277D84F58], v3, v4);
    atomic_store(result, &qword_27C905AD8);
  }

  return result;
}

unint64_t sub_2142E6228()
{
  result = qword_27C905AE0;
  if (!qword_27C905AE0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CSDMHandle, &type metadata for CSDMHandle, v0, v1);
    atomic_store(result, &qword_27C905AE0);
  }

  return result;
}

unint64_t sub_2142E62D8()
{
  result = qword_27C905AF0;
  if (!qword_27C905AF0)
  {
    v4[1] = v0;
    v4[2] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C905AC0, &unk_2146F3F90);
    v4[0] = MEMORY[0x277D84CC8];
    result = swift_getWitnessTable(MEMORY[0x277D84F40], v3, v4);
    atomic_store(result, &qword_27C905AF0);
  }

  return result;
}

unint64_t sub_2142E6354()
{
  result = qword_27C905AF8;
  if (!qword_27C905AF8)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C905AD0, &unk_214759900);
    v4[0] = sub_2142E63D8();
    result = swift_getWitnessTable(MEMORY[0x277D84F40], v3, v4);
    atomic_store(result, &qword_27C905AF8);
  }

  return result;
}

unint64_t sub_2142E63D8()
{
  result = qword_27C905B00;
  if (!qword_27C905B00)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CSDMHandle, &type metadata for CSDMHandle, v0, v1);
    atomic_store(result, &qword_27C905B00);
  }

  return result;
}

unint64_t sub_2142E6480()
{
  result = qword_27C905B10;
  if (!qword_27C905B10)
  {
    result = swift_getWitnessTable(aU_112, &_s10CodingKeysON_605, v0, v1);
    atomic_store(result, &qword_27C905B10);
  }

  return result;
}

unint64_t sub_2142E6584()
{
  result = qword_27C905B28;
  if (!qword_27C905B28)
  {
    result = swift_getWitnessTable(byte_214730F84, &_s10CodingKeysON_604, v0, v1);
    atomic_store(result, &qword_27C905B28);
  }

  return result;
}

unint64_t sub_2142E65D8()
{
  result = qword_27C905B38;
  if (!qword_27C905B38)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C905B30, &qword_2146F3FC0);
    v4[0] = sub_2142E665C();
    result = swift_getWitnessTable(MEMORY[0x277D84F58], v3, v4);
    atomic_store(result, &qword_27C905B38);
  }

  return result;
}

unint64_t sub_2142E665C()
{
  result = qword_27C905B40;
  if (!qword_27C905B40)
  {
    result = swift_getWitnessTable(aUh, &type metadata for CSDMConversationAudioVideoMode, v0, v1);
    atomic_store(result, &qword_27C905B40);
  }

  return result;
}

unint64_t sub_2142E66B0()
{
  result = qword_27C905B50;
  if (!qword_27C905B50)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C905B48, &qword_2146F3FC8);
    v4[0] = sub_2142E6734();
    result = swift_getWitnessTable(MEMORY[0x277D84F58], v3, v4);
    atomic_store(result, &qword_27C905B50);
  }

  return result;
}

unint64_t sub_2142E6734()
{
  result = qword_27C905B58;
  if (!qword_27C905B58)
  {
    result = swift_getWitnessTable(aIg_0, &type metadata for CSDMConversationPresentationMode, v0, v1);
    atomic_store(result, &qword_27C905B58);
  }

  return result;
}

unint64_t sub_2142E67E4()
{
  result = qword_27C905B68;
  if (!qword_27C905B68)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C905B30, &qword_2146F3FC0);
    v4[0] = sub_2142E6868();
    result = swift_getWitnessTable(MEMORY[0x277D84F40], v3, v4);
    atomic_store(result, &qword_27C905B68);
  }

  return result;
}

unint64_t sub_2142E6868()
{
  result = qword_27C905B70;
  if (!qword_27C905B70)
  {
    result = swift_getWitnessTable(byte_2147739BC, &type metadata for CSDMConversationAudioVideoMode, v0, v1);
    atomic_store(result, &qword_27C905B70);
  }

  return result;
}

unint64_t sub_2142E68BC()
{
  result = qword_27C905B78;
  if (!qword_27C905B78)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C905B48, &qword_2146F3FC8);
    v4[0] = sub_2142E6940();
    result = swift_getWitnessTable(MEMORY[0x277D84F40], v3, v4);
    atomic_store(result, &qword_27C905B78);
  }

  return result;
}

unint64_t sub_2142E6940()
{
  result = qword_27C905B80;
  if (!qword_27C905B80)
  {
    result = swift_getWitnessTable(byte_214773AC8, &type metadata for CSDMConversationPresentationMode, v0, v1);
    atomic_store(result, &qword_27C905B80);
  }

  return result;
}

unint64_t sub_2142E69E8()
{
  result = qword_27C905B90;
  if (!qword_27C905B90)
  {
    result = swift_getWitnessTable(byte_214730F34, &_s10CodingKeysON_603, v0, v1);
    atomic_store(result, &qword_27C905B90);
  }

  return result;
}

unint64_t sub_2142E6AEC()
{
  result = qword_27C905BA8;
  if (!qword_27C905BA8)
  {
    result = swift_getWitnessTable(aE_100, &_s10CodingKeysON_602, v0, v1);
    atomic_store(result, &qword_27C905BA8);
  }

  return result;
}

unint64_t sub_2142E6B40()
{
  result = qword_27C905BB8;
  if (!qword_27C905BB8)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C905BB0, &qword_2146F3FF0);
    v4[0] = sub_2142E6BC4();
    result = swift_getWitnessTable(MEMORY[0x277D84F58], v3, v4);
    atomic_store(result, &qword_27C905BB8);
  }

  return result;
}

unint64_t sub_2142E6BC4()
{
  result = qword_27C905BC0;
  if (!qword_27C905BC0)
  {
    result = swift_getWitnessTable(byte_2146F7B60, &type metadata for CSDMConversationActivitySceneAssociationBehavior, v0, v1);
    atomic_store(result, &qword_27C905BC0);
  }

  return result;
}

unint64_t sub_2142E6C74()
{
  result = qword_27C905BD0;
  if (!qword_27C905BD0)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C905BB0, &qword_2146F3FF0);
    v4[0] = sub_2142E6CF8();
    result = swift_getWitnessTable(MEMORY[0x277D84F40], v3, v4);
    atomic_store(result, &qword_27C905BD0);
  }

  return result;
}

unint64_t sub_2142E6CF8()
{
  result = qword_27C905BD8;
  if (!qword_27C905BD8)
  {
    result = swift_getWitnessTable(aQ_73, &type metadata for CSDMConversationActivitySceneAssociationBehavior, v0, v1);
    atomic_store(result, &qword_27C905BD8);
  }

  return result;
}

unint64_t sub_2142E6DA0()
{
  result = qword_27C905BE8;
  if (!qword_27C905BE8)
  {
    result = swift_getWitnessTable(byte_214730E94, &_s10CodingKeysON_601, v0, v1);
    atomic_store(result, &qword_27C905BE8);
  }

  return result;
}

unint64_t sub_2142E6EA4()
{
  result = qword_27C905C00;
  if (!qword_27C905C00)
  {
    result = swift_getWitnessTable(aMh_4, &_s10CodingKeysON_600, v0, v1);
    atomic_store(result, &qword_27C905C00);
  }

  return result;
}

unint64_t sub_2142E6EF8()
{
  result = qword_27C905C10;
  if (!qword_27C905C10)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C905C08, &unk_2147738C0);
    v4[0] = sub_2142E6F7C();
    result = swift_getWitnessTable(MEMORY[0x277D84F58], v3, v4);
    atomic_store(result, &qword_27C905C10);
  }

  return result;
}

unint64_t sub_2142E6F7C()
{
  result = qword_27C905C18;
  if (!qword_27C905C18)
  {
    result = swift_getWitnessTable(asc_2146F7C00, &type metadata for CSDMConversationActivityContext, v0, v1);
    atomic_store(result, &qword_27C905C18);
  }

  return result;
}

unint64_t sub_2142E6FD0()
{
  result = qword_27C905C28;
  if (!qword_27C905C28)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C905C20, &qword_2146F4020);
    v4[0] = sub_2142E7054();
    result = swift_getWitnessTable(MEMORY[0x277D84F58], v3, v4);
    atomic_store(result, &qword_27C905C28);
  }

  return result;
}

unint64_t sub_2142E7054()
{
  result = qword_27C905C30;
  if (!qword_27C905C30)
  {
    result = swift_getWitnessTable(aY_68, &type metadata for CSDMConversationActivityMetadata, v0, v1);
    atomic_store(result, &qword_27C905C30);
  }

  return result;
}

unint64_t sub_2142E7104()
{
  result = qword_27C905C40;
  if (!qword_27C905C40)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C905C08, &unk_2147738C0);
    v4[0] = sub_2142E7188();
    result = swift_getWitnessTable(MEMORY[0x277D84F40], v3, v4);
    atomic_store(result, &qword_27C905C40);
  }

  return result;
}

unint64_t sub_2142E7188()
{
  result = qword_27C905C48;
  if (!qword_27C905C48)
  {
    result = swift_getWitnessTable(byte_2146F7C28, &type metadata for CSDMConversationActivityContext, v0, v1);
    atomic_store(result, &qword_27C905C48);
  }

  return result;
}

unint64_t sub_2142E71DC()
{
  result = qword_27C905C50;
  if (!qword_27C905C50)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C905C20, &qword_2146F4020);
    v4[0] = sub_2142E7260();
    result = swift_getWitnessTable(MEMORY[0x277D84F40], v3, v4);
    atomic_store(result, &qword_27C905C50);
  }

  return result;
}

unint64_t sub_2142E7260()
{
  result = qword_27C905C58;
  if (!qword_27C905C58)
  {
    result = swift_getWitnessTable(byte_2146F7BD8, &type metadata for CSDMConversationActivityMetadata, v0, v1);
    atomic_store(result, &qword_27C905C58);
  }

  return result;
}

unint64_t sub_2142E7308()
{
  result = qword_27C905C68;
  if (!qword_27C905C68)
  {
    result = swift_getWitnessTable(a5_49, &_s10CodingKeysON_599, v0, v1);
    atomic_store(result, &qword_27C905C68);
  }

  return result;
}

unint64_t sub_2142E735C()
{
  result = qword_27C905C78;
  if (!qword_27C905C78)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C905C70, &unk_214759910);
    v4[0] = sub_2142E73E0();
    result = swift_getWitnessTable(MEMORY[0x277D84F58], v3, v4);
    atomic_store(result, &qword_27C905C78);
  }

  return result;
}

unint64_t sub_2142E73E0()
{
  result = qword_27C905C80;
  if (!qword_27C905C80)
  {
    result = swift_getWitnessTable(byte_2146F7C50, &type metadata for CSDMConversationActivity, v0, v1);
    atomic_store(result, &qword_27C905C80);
  }

  return result;
}

unint64_t sub_2142E7490()
{
  result = qword_27C905C90;
  if (!qword_27C905C90)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C905C70, &unk_214759910);
    v4[0] = sub_2142E7514();
    result = swift_getWitnessTable(MEMORY[0x277D84F40], v3, v4);
    atomic_store(result, &qword_27C905C90);
  }

  return result;
}

unint64_t sub_2142E7514()
{
  result = qword_27C905C98;
  if (!qword_27C905C98)
  {
    result = swift_getWitnessTable(aA_76, &type metadata for CSDMConversationActivity, v0, v1);
    atomic_store(result, &qword_27C905C98);
  }

  return result;
}

unint64_t sub_2142E75BC()
{
  result = qword_27C905CA8;
  if (!qword_27C905CA8)
  {
    result = swift_getWitnessTable(byte_214730DA4, &_s10CodingKeysON_598, v0, v1);
    atomic_store(result, &qword_27C905CA8);
  }

  return result;
}

unint64_t sub_2142E7610()
{
  result = qword_27C905CB8;
  if (!qword_27C905CB8)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C905CB0, &qword_2146F4050);
    v4[0] = sub_2142E6228();
    result = swift_getWitnessTable(MEMORY[0x277D83978], v3, v4);
    atomic_store(result, &qword_27C905CB8);
  }

  return result;
}

unint64_t sub_2142E76F0()
{
  result = qword_27C905CC8;
  if (!qword_27C905CC8)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C905CB0, &qword_2146F4050);
    v4[0] = sub_2142E63D8();
    result = swift_getWitnessTable(MEMORY[0x277D83948], v3, v4);
    atomic_store(result, &qword_27C905CC8);
  }

  return result;
}

unint64_t sub_2142E7774()
{
  result = qword_27C905CD8;
  if (!qword_27C905CD8)
  {
    result = swift_getWitnessTable(aE_101, &_s10CodingKeysON_597, v0, v1);
    atomic_store(result, &qword_27C905CD8);
  }

  return result;
}

unint64_t sub_2142E781C()
{
  result = qword_27C905CF0;
  if (!qword_27C905CF0)
  {
    result = swift_getWitnessTable(asc_214730D04, &_s10CodingKeysON_596, v0, v1);
    atomic_store(result, &qword_27C905CF0);
  }

  return result;
}

unint64_t sub_2142E7870()
{
  result = qword_27C905D00;
  if (!qword_27C905D00)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C905CF8, &qword_2146F4078);
    v4[0] = sub_2142E78F4();
    result = swift_getWitnessTable(MEMORY[0x277D84F58], v3, v4);
    atomic_store(result, &qword_27C905D00);
  }

  return result;
}

unint64_t sub_2142E78F4()
{
  result = qword_27C905D08;
  if (!qword_27C905D08)
  {
    result = swift_getWitnessTable(byte_214773DEC, &type metadata for CSDMConversationMessage.ConversationMessageType, v0, v1);
    atomic_store(result, &qword_27C905D08);
  }

  return result;
}

unint64_t sub_2142E7948()
{
  result = qword_27C905D18;
  if (!qword_27C905D18)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C905D10, &qword_2146F4080);
    v4[0] = sub_2142E79CC();
    result = swift_getWitnessTable(MEMORY[0x277D83978], v3, v4);
    atomic_store(result, &qword_27C905D18);
  }

  return result;
}

unint64_t sub_2142E79CC()
{
  result = qword_27C905D20;
  if (!qword_27C905D20)
  {
    result = swift_getWitnessTable(byte_2146F7B10, &type metadata for CSDMConversationParticipant, v0, v1);
    atomic_store(result, &qword_27C905D20);
  }

  return result;
}

unint64_t sub_2142E7A20()
{
  result = qword_27C905D30;
  if (!qword_27C905D30)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C905D28, &qword_2146F4088);
    v4[0] = sub_2142E7AA4();
    result = swift_getWitnessTable(MEMORY[0x277D83978], v3, v4);
    atomic_store(result, &qword_27C905D30);
  }

  return result;
}

unint64_t sub_2142E7AA4()
{
  result = qword_27C905D38;
  if (!qword_27C905D38)
  {
    result = swift_getWitnessTable(byte_2146F7A70, &type metadata for CSDMConversationMember, v0, v1);
    atomic_store(result, &qword_27C905D38);
  }

  return result;
}

unint64_t sub_2142E7AF8()
{
  result = qword_27C905D48;
  if (!qword_27C905D48)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C905D40, &qword_2146F4090);
    v4[0] = sub_2142E7B7C();
    result = swift_getWitnessTable(MEMORY[0x277D83978], v3, v4);
    atomic_store(result, &qword_27C905D48);
  }

  return result;
}

unint64_t sub_2142E7B7C()
{
  result = qword_27C905D50;
  if (!qword_27C905D50)
  {
    result = swift_getWitnessTable(aI_86, &type metadata for CSDMConversationActivitySession, v0, v1);
    atomic_store(result, &qword_27C905D50);
  }

  return result;
}

unint64_t sub_2142E7BD0()
{
  result = qword_27C905D60;
  if (!qword_27C905D60)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C905D58, &qword_2146F4098);
    v4[0] = sub_2142E7C54();
    result = swift_getWitnessTable(MEMORY[0x277D84F58], v3, v4);
    atomic_store(result, &qword_27C905D60);
  }

  return result;
}

unint64_t sub_2142E7C54()
{
  result = qword_27C905D68;
  if (!qword_27C905D68)
  {
    result = swift_getWitnessTable(byte_2146F7CF0, &type metadata for CSDMConversationLink, v0, v1);
    atomic_store(result, &qword_27C905D68);
  }

  return result;
}

unint64_t sub_2142E7CA8()
{
  result = qword_27C905D78;
  if (!qword_27C905D78)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C905D70, &qword_2146F40A0);
    v4[0] = sub_2142E7D2C();
    result = swift_getWitnessTable(MEMORY[0x277D84F58], v3, v4);
    atomic_store(result, &qword_27C905D78);
  }

  return result;
}

unint64_t sub_2142E7D2C()
{
  result = qword_27C905D80;
  if (!qword_27C905D80)
  {
    result = swift_getWitnessTable(aI_87, &type metadata for CSDMConversationReport, v0, v1);
    atomic_store(result, &qword_27C905D80);
  }

  return result;
}

unint64_t sub_2142E7D80()
{
  result = qword_27C905D90;
  if (!qword_27C905D90)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C905D88, &qword_2146F40A8);
    v4[0] = sub_2142E7E04();
    result = swift_getWitnessTable(MEMORY[0x277D84F58], v3, v4);
    atomic_store(result, &qword_27C905D90);
  }

  return result;
}

unint64_t sub_2142E7E04()
{
  result = qword_27C905D98;
  if (!qword_27C905D98)
  {
    result = swift_getWitnessTable(asc_2146F7DE0, &type metadata for CSDMEncryptedConversationMessage, v0, v1);
    atomic_store(result, &qword_27C905D98);
  }

  return result;
}

unint64_t sub_2142E7E58()
{
  result = qword_27C905DA8;
  if (!qword_27C905DA8)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C905DA0, &unk_2146F40B0);
    v4[0] = sub_2142E7EDC();
    result = swift_getWitnessTable(MEMORY[0x277D83978], v3, v4);
    atomic_store(result, &qword_27C905DA8);
  }

  return result;
}

unint64_t sub_2142E7EDC()
{
  result = qword_27C905DB0;
  if (!qword_27C905DB0)
  {
    result = swift_getWitnessTable(byte_2146F7D40, &type metadata for CSDMConversationInvitationPreference, v0, v1);
    atomic_store(result, &qword_27C905DB0);
  }

  return result;
}

unint64_t sub_2142E7F30()
{
  result = qword_27C905DC0;
  if (!qword_27C905DC0)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C905DB8, &unk_2147598E0);
    v4[0] = sub_2142E7B7C();
    result = swift_getWitnessTable(MEMORY[0x277D84F58], v3, v4);
    atomic_store(result, &qword_27C905DC0);
  }

  return result;
}

unint64_t sub_2142E7FB4()
{
  result = qword_27C905DD0;
  if (!qword_27C905DD0)
  {
    v4[1] = v0;
    v4[2] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C905DC8, &qword_2146F40C0);
    v4[0] = MEMORY[0x277D849D8];
    result = swift_getWitnessTable(MEMORY[0x277D84F58], v3, v4);
    atomic_store(result, &qword_27C905DD0);
  }

  return result;
}

void sub_2142E8030(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  if (a2 >> 60 != 11)
  {
    a5(a1);

    (a5)(a3, a4);
  }
}

unint64_t sub_2142E80F8()
{
  result = qword_27C905DE0;
  if (!qword_27C905DE0)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C905CF8, &qword_2146F4078);
    v4[0] = sub_2142E817C();
    result = swift_getWitnessTable(MEMORY[0x277D84F40], v3, v4);
    atomic_store(result, &qword_27C905DE0);
  }

  return result;
}

unint64_t sub_2142E817C()
{
  result = qword_27C905DE8;
  if (!qword_27C905DE8)
  {
    result = swift_getWitnessTable(byte_214773E14, &type metadata for CSDMConversationMessage.ConversationMessageType, v0, v1);
    atomic_store(result, &qword_27C905DE8);
  }

  return result;
}

unint64_t sub_2142E81D0()
{
  result = qword_27C905DF0;
  if (!qword_27C905DF0)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C905D10, &qword_2146F4080);
    v4[0] = sub_2142E8254();
    result = swift_getWitnessTable(MEMORY[0x277D83948], v3, v4);
    atomic_store(result, &qword_27C905DF0);
  }

  return result;
}

unint64_t sub_2142E8254()
{
  result = qword_27C905DF8;
  if (!qword_27C905DF8)
  {
    result = swift_getWitnessTable(byte_2146F7B38, &type metadata for CSDMConversationParticipant, v0, v1);
    atomic_store(result, &qword_27C905DF8);
  }

  return result;
}

unint64_t sub_2142E82A8()
{
  result = qword_27C905E00;
  if (!qword_27C905E00)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C905D28, &qword_2146F4088);
    v4[0] = sub_2142E832C();
    result = swift_getWitnessTable(MEMORY[0x277D83948], v3, v4);
    atomic_store(result, &qword_27C905E00);
  }

  return result;
}

unint64_t sub_2142E832C()
{
  result = qword_27C905E08;
  if (!qword_27C905E08)
  {
    result = swift_getWitnessTable(aA_77, &type metadata for CSDMConversationMember, v0, v1);
    atomic_store(result, &qword_27C905E08);
  }

  return result;
}

unint64_t sub_2142E8380()
{
  result = qword_27C905E10;
  if (!qword_27C905E10)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C905D40, &qword_2146F4090);
    v4[0] = sub_2142E8404();
    result = swift_getWitnessTable(MEMORY[0x277D83948], v3, v4);
    atomic_store(result, &qword_27C905E10);
  }

  return result;
}

unint64_t sub_2142E8404()
{
  result = qword_27C905E18;
  if (!qword_27C905E18)
  {
    result = swift_getWitnessTable(byte_2146F7CC8, &type metadata for CSDMConversationActivitySession, v0, v1);
    atomic_store(result, &qword_27C905E18);
  }

  return result;
}

unint64_t sub_2142E8458()
{
  result = qword_27C905E20;
  if (!qword_27C905E20)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C905D58, &qword_2146F4098);
    v4[0] = sub_2142E84DC();
    result = swift_getWitnessTable(MEMORY[0x277D84F40], v3, v4);
    atomic_store(result, &qword_27C905E20);
  }

  return result;
}

unint64_t sub_2142E84DC()
{
  result = qword_27C905E28;
  if (!qword_27C905E28)
  {
    result = swift_getWitnessTable(byte_2146F7D18, &type metadata for CSDMConversationLink, v0, v1);
    atomic_store(result, &qword_27C905E28);
  }

  return result;
}

unint64_t sub_2142E8530()
{
  result = qword_27C905E30;
  if (!qword_27C905E30)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C905D70, &qword_2146F40A0);
    v4[0] = sub_2142E85B4();
    result = swift_getWitnessTable(MEMORY[0x277D84F40], v3, v4);
    atomic_store(result, &qword_27C905E30);
  }

  return result;
}

unint64_t sub_2142E85B4()
{
  result = qword_27C905E38;
  if (!qword_27C905E38)
  {
    result = swift_getWitnessTable(byte_2146F7AE8, &type metadata for CSDMConversationReport, v0, v1);
    atomic_store(result, &qword_27C905E38);
  }

  return result;
}

unint64_t sub_2142E8608()
{
  result = qword_27C905E40;
  if (!qword_27C905E40)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C905D88, &qword_2146F40A8);
    v4[0] = sub_2142E868C();
    result = swift_getWitnessTable(MEMORY[0x277D84F40], v3, v4);
    atomic_store(result, &qword_27C905E40);
  }

  return result;
}

unint64_t sub_2142E868C()
{
  result = qword_27C905E48;
  if (!qword_27C905E48)
  {
    result = swift_getWitnessTable(byte_2146F7E08, &type metadata for CSDMEncryptedConversationMessage, v0, v1);
    atomic_store(result, &qword_27C905E48);
  }

  return result;
}

unint64_t sub_2142E86E0()
{
  result = qword_27C905E50;
  if (!qword_27C905E50)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C905DA0, &unk_2146F40B0);
    v4[0] = sub_2142E8764();
    result = swift_getWitnessTable(MEMORY[0x277D83948], v3, v4);
    atomic_store(result, &qword_27C905E50);
  }

  return result;
}

unint64_t sub_2142E8764()
{
  result = qword_27C905E58;
  if (!qword_27C905E58)
  {
    result = swift_getWitnessTable(aQ_74, &type metadata for CSDMConversationInvitationPreference, v0, v1);
    atomic_store(result, &qword_27C905E58);
  }

  return result;
}

unint64_t sub_2142E87B8()
{
  result = qword_27C905E60;
  if (!qword_27C905E60)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C905DB8, &unk_2147598E0);
    v4[0] = sub_2142E8404();
    result = swift_getWitnessTable(MEMORY[0x277D84F40], v3, v4);
    atomic_store(result, &qword_27C905E60);
  }

  return result;
}

unint64_t sub_2142E883C()
{
  result = qword_27C905E68;
  if (!qword_27C905E68)
  {
    v4[1] = v0;
    v4[2] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C905DC8, &qword_2146F40C0);
    v4[0] = MEMORY[0x277D849B0];
    result = swift_getWitnessTable(MEMORY[0x277D84F40], v3, v4);
    atomic_store(result, &qword_27C905E68);
  }

  return result;
}

unint64_t sub_2142E88B8()
{
  result = qword_27C905E78;
  if (!qword_27C905E78)
  {
    result = swift_getWitnessTable(aU_113, &_s10CodingKeysON_595, v0, v1);
    atomic_store(result, &qword_27C905E78);
  }

  return result;
}

unint64_t sub_2142E8960()
{
  result = qword_27C905E90;
  if (!qword_27C905E90)
  {
    result = swift_getWitnessTable(aU_114, &_s10CodingKeysON_594, v0, v1);
    atomic_store(result, &qword_27C905E90);
  }

  return result;
}

unint64_t sub_2142E89B4()
{
  result = qword_27C905EA0;
  if (!qword_27C905EA0)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C905E98, &qword_2147738D0);
    v4[0] = sub_2142E8A38();
    result = swift_getWitnessTable(MEMORY[0x277D84F58], v3, v4);
    atomic_store(result, &qword_27C905EA0);
  }

  return result;
}

unint64_t sub_2142E8A38()
{
  result = qword_27C905EA8;
  if (!qword_27C905EA8)
  {
    result = swift_getWitnessTable(aY_69, &type metadata for CSDMConversationMessage, v0, v1);
    atomic_store(result, &qword_27C905EA8);
  }

  return result;
}

unint64_t sub_2142E8AE8()
{
  result = qword_27C905EB8;
  if (!qword_27C905EB8)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C905E98, &qword_2147738D0);
    v4[0] = sub_2142E8B6C();
    result = swift_getWitnessTable(MEMORY[0x277D84F40], v3, v4);
    atomic_store(result, &qword_27C905EB8);
  }

  return result;
}

unint64_t sub_2142E8B6C()
{
  result = qword_27C905EC0;
  if (!qword_27C905EC0)
  {
    result = swift_getWitnessTable(asc_2146F7DB8, &type metadata for CSDMConversationMessage, v0, v1);
    atomic_store(result, &qword_27C905EC0);
  }

  return result;
}

unint64_t sub_2142E8BC0()
{
  result = qword_27C905ED0;
  if (!qword_27C905ED0)
  {
    result = swift_getWitnessTable(byte_214730C14, &_s10CodingKeysON_593, v0, v1);
    atomic_store(result, &qword_27C905ED0);
  }

  return result;
}

unint64_t sub_2142E8C14()
{
  result = qword_27C905EE0;
  if (!qword_27C905EE0)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C905ED8, &qword_2146F4100);
    v4[0] = sub_2142E8C98();
    result = swift_getWitnessTable(MEMORY[0x277D84F58], v3, v4);
    atomic_store(result, &qword_27C905EE0);
  }

  return result;
}

unint64_t sub_2142E8C98()
{
  result = qword_27C905EE8;
  if (!qword_27C905EE8)
  {
    result = swift_getWitnessTable(byte_214773F6C, &type metadata for CSDMConversationParticipantDidLeaveContext.LeaveReason, v0, v1);
    atomic_store(result, &qword_27C905EE8);
  }

  return result;
}

unint64_t sub_2142E8CEC()
{
  result = qword_27C905EF8;
  if (!qword_27C905EF8)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C905ED8, &qword_2146F4100);
    v4[0] = sub_2142E8D70();
    result = swift_getWitnessTable(MEMORY[0x277D84F40], v3, v4);
    atomic_store(result, &qword_27C905EF8);
  }

  return result;
}

unint64_t sub_2142E8D70()
{
  result = qword_27C905F00;
  if (!qword_27C905F00)
  {
    result = swift_getWitnessTable(aE_102, &type metadata for CSDMConversationParticipantDidLeaveContext.LeaveReason, v0, v1);
    atomic_store(result, &qword_27C905F00);
  }

  return result;
}

unint64_t sub_2142E8E18()
{
  result = qword_27C905F10;
  if (!qword_27C905F10)
  {
    result = swift_getWitnessTable(aE_103, &_s10CodingKeysON_592, v0, v1);
    atomic_store(result, &qword_27C905F10);
  }

  return result;
}

unint64_t sub_2142E8E6C()
{
  result = qword_27C905F20;
  if (!qword_27C905F20)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C905F18, &qword_2146F4118);
    v4[0] = sub_2142E8EF0();
    result = swift_getWitnessTable(MEMORY[0x277D84F58], v3, v4);
    atomic_store(result, &qword_27C905F20);
  }

  return result;
}

unint64_t sub_2142E8EF0()
{
  result = qword_27C905F28;
  if (!qword_27C905F28)
  {
    result = swift_getWitnessTable(aUa_0, &type metadata for CSDMCallMessage.CallMessageType, v0, v1);
    atomic_store(result, &qword_27C905F28);
  }

  return result;
}

unint64_t sub_2142E8F44()
{
  result = qword_27C905F38;
  if (!qword_27C905F38)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C905F30, &qword_2146F4120);
    v4[0] = sub_2142E8FC8();
    result = swift_getWitnessTable(MEMORY[0x277D84F58], v3, v4);
    atomic_store(result, &qword_27C905F38);
  }

  return result;
}

unint64_t sub_2142E8FC8()
{
  result = qword_27C905F40;
  if (!qword_27C905F40)
  {
    result = swift_getWitnessTable(byte_2146F7F20, &type metadata for CSDMAVConferenceInviteData, v0, v1);
    atomic_store(result, &qword_27C905F40);
  }

  return result;
}

void sub_2142E901C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t))
{
  if (a2 >> 60 != 11)
  {
    a7(a1);
    (a7)(a3, a4);

    (a7)(a5, a6);
  }
}

unint64_t sub_2142E9108()
{
  result = qword_27C905F50;
  if (!qword_27C905F50)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C905F18, &qword_2146F4118);
    v4[0] = sub_2142E918C();
    result = swift_getWitnessTable(MEMORY[0x277D84F40], v3, v4);
    atomic_store(result, &qword_27C905F50);
  }

  return result;
}

unint64_t sub_2142E918C()
{
  result = qword_27C905F58;
  if (!qword_27C905F58)
  {
    result = swift_getWitnessTable(byte_2147740BC, &type metadata for CSDMCallMessage.CallMessageType, v0, v1);
    atomic_store(result, &qword_27C905F58);
  }

  return result;
}

unint64_t sub_2142E91E0()
{
  result = qword_27C905F60;
  if (!qword_27C905F60)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C905F30, &qword_2146F4120);
    v4[0] = sub_2142E9264();
    result = swift_getWitnessTable(MEMORY[0x277D84F40], v3, v4);
    atomic_store(result, &qword_27C905F60);
  }

  return result;
}

unint64_t sub_2142E9264()
{
  result = qword_27C905F68;
  if (!qword_27C905F68)
  {
    result = swift_getWitnessTable(byte_2146F7F48, &type metadata for CSDMAVConferenceInviteData, v0, v1);
    atomic_store(result, &qword_27C905F68);
  }

  return result;
}

unint64_t sub_2142E92B8()
{
  result = qword_27C905F78;
  if (!qword_27C905F78)
  {
    result = swift_getWitnessTable(byte_214730B74, &_s10CodingKeysON_591, v0, v1);
    atomic_store(result, &qword_27C905F78);
  }

  return result;
}

unint64_t sub_2142E930C()
{
  result = qword_27C905F90;
  if (!qword_27C905F90)
  {
    result = swift_getWitnessTable(byte_214730B24, &_s10CodingKeysON_590, v0, v1);
    atomic_store(result, &qword_27C905F90);
  }

  return result;
}

unint64_t sub_2142E9360()
{
  result = qword_27C905FA8;
  if (!qword_27C905FA8)
  {
    result = swift_getWitnessTable(aU_115, &_s10CodingKeysON_589, v0, v1);
    atomic_store(result, &qword_27C905FA8);
  }

  return result;
}

unint64_t sub_2142E93B4()
{
  result = qword_27C905FB0;
  if (!qword_27C905FB0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MBDChipType, &type metadata for MBDChipType, v0, v1);
    atomic_store(result, &qword_27C905FB0);
  }

  return result;
}

unint64_t sub_2142E9408()
{
  result = qword_27C905FB8;
  if (!qword_27C905FB8)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C903F58, &qword_2146F4150);
    v4[0] = sub_214328930(&qword_27C905FC0, type metadata accessor for MBDChipContent, byte_214702A10);
    result = swift_getWitnessTable(MEMORY[0x277D84F58], v3, v4);
    atomic_store(result, &qword_27C905FB8);
  }

  return result;
}

unint64_t sub_2142E94BC()
{
  result = qword_27C905FD0;
  if (!qword_27C905FD0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MBDChipType, &type metadata for MBDChipType, v0, v1);
    atomic_store(result, &qword_27C905FD0);
  }

  return result;
}

unint64_t sub_2142E9510()
{
  result = qword_27C905FD8;
  if (!qword_27C905FD8)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C903F58, &qword_2146F4150);
    v4[0] = sub_214328930(&qword_27C905FE0, type metadata accessor for MBDChipContent, byte_214702A38);
    result = swift_getWitnessTable(MEMORY[0x277D84F40], v3, v4);
    atomic_store(result, &qword_27C905FD8);
  }

  return result;
}

unint64_t sub_2142E95C4()
{
  result = qword_27C905FF0;
  if (!qword_27C905FF0)
  {
    result = swift_getWitnessTable(byte_214730A84, &_s10CodingKeysON_588, v0, v1);
    atomic_store(result, &qword_27C905FF0);
  }

  return result;
}

unint64_t sub_2142E9618()
{
  result = qword_27C906000;
  if (!qword_27C906000)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C905FF8, &qword_2146F4170);
    v4[0] = sub_214328930(&qword_27C903F48, type metadata accessor for MBDChip, aI_64);
    result = swift_getWitnessTable(MEMORY[0x277D83978], v3, v4);
    atomic_store(result, &qword_27C906000);
  }

  return result;
}

unint64_t sub_2142E96CC()
{
  result = qword_27C906010;
  if (!qword_27C906010)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C905FF8, &qword_2146F4170);
    v4[0] = sub_214328930(&qword_27C903F50, type metadata accessor for MBDChip, byte_2146F7FE8);
    result = swift_getWitnessTable(MEMORY[0x277D83948], v3, v4);
    atomic_store(result, &qword_27C906010);
  }

  return result;
}

unint64_t sub_2142E9780()
{
  result = qword_27C906020;
  if (!qword_27C906020)
  {
    result = swift_getWitnessTable(byte_214730A34, &_s10CodingKeysON_587, v0, v1);
    atomic_store(result, &qword_27C906020);
  }

  return result;
}

unint64_t sub_2142E97D4()
{
  result = qword_27C906038;
  if (!qword_27C906038)
  {
    result = swift_getWitnessTable(aE_104, &_s10CodingKeysON_586, v0, v1);
    atomic_store(result, &qword_27C906038);
  }

  return result;
}

unint64_t sub_2142E987C()
{
  result = qword_27C906050;
  if (!qword_27C906050)
  {
    result = swift_getWitnessTable(byte_214730994, &_s10CodingKeysON_585, v0, v1);
    atomic_store(result, &qword_27C906050);
  }

  return result;
}

unint64_t sub_2142E992C()
{
  result = qword_27C906068;
  if (!qword_27C906068)
  {
    result = swift_getWitnessTable(aM_160, &_s10CodingKeysON_584, v0, v1);
    atomic_store(result, &qword_27C906068);
  }

  return result;
}

unint64_t sub_2142E9980()
{
  result = qword_27C906080;
  if (!qword_27C906080)
  {
    result = swift_getWitnessTable(a5_50, &_s10CodingKeysON_583, v0, v1);
    atomic_store(result, &qword_27C906080);
  }

  return result;
}

unint64_t sub_2142E99D4()
{
  result = qword_27C906088;
  if (!qword_27C906088)
  {
    result = swift_getWitnessTable(aMk_2, &type metadata for MBDActionDeviceType, v0, v1);
    atomic_store(result, &qword_27C906088);
  }

  return result;
}

unint64_t sub_2142E9A28()
{
  result = qword_27C906098;
  if (!qword_27C906098)
  {
    result = swift_getWitnessTable(byte_2147736C4, &type metadata for MBDActionDeviceType, v0, v1);
    atomic_store(result, &qword_27C906098);
  }

  return result;
}

unint64_t sub_2142E9AD0()
{
  result = qword_27C9060A8;
  if (!qword_27C9060A8)
  {
    result = swift_getWitnessTable(byte_2147308A4, &_s10CodingKeysON_582, v0, v1);
    atomic_store(result, &qword_27C9060A8);
  }

  return result;
}

unint64_t sub_2142E9BD4()
{
  result = qword_27C9060C0;
  if (!qword_27C9060C0)
  {
    result = swift_getWitnessTable(asc_214730854, &_s10CodingKeysON_581, v0, v1);
    atomic_store(result, &qword_27C9060C0);
  }

  return result;
}

unint64_t sub_2142E9CD8()
{
  result = qword_27C9060D8;
  if (!qword_27C9060D8)
  {
    result = swift_getWitnessTable(asc_214730804, &_s10CodingKeysON_580, v0, v1);
    atomic_store(result, &qword_27C9060D8);
  }

  return result;
}

unint64_t sub_2142E9D88()
{
  result = qword_27C9060F0;
  if (!qword_27C9060F0)
  {
    result = swift_getWitnessTable(aU_116, &_s10CodingKeysON_579, v0, v1);
    atomic_store(result, &qword_27C9060F0);
  }

  return result;
}

unint64_t sub_2142E9E30()
{
  result = qword_27C906108;
  if (!qword_27C906108)
  {
    result = swift_getWitnessTable(aU_117, &_s10CodingKeysON_578, v0, v1);
    atomic_store(result, &qword_27C906108);
  }

  return result;
}

unint64_t sub_2142E9E84()
{
  result = qword_27C906110;
  if (!qword_27C906110)
  {
    result = swift_getWitnessTable(byte_21475A0EC, &type metadata for MBDOpenWebViewMode, v0, v1);
    atomic_store(result, &qword_27C906110);
  }

  return result;
}

unint64_t sub_2142E9F34()
{
  result = qword_27C906120;
  if (!qword_27C906120)
  {
    result = swift_getWitnessTable(byte_21475A114, &type metadata for MBDOpenWebViewMode, v0, v1);
    atomic_store(result, &qword_27C906120);
  }

  return result;
}

unint64_t sub_2142E9F88()
{
  result = qword_27C906130;
  if (!qword_27C906130)
  {
    result = swift_getWitnessTable(byte_214730714, &_s10CodingKeysON_577, v0, v1);
    atomic_store(result, &qword_27C906130);
  }

  return result;
}

unint64_t sub_2142E9FDC()
{
  result = qword_27C906148;
  if (!qword_27C906148)
  {
    result = swift_getWitnessTable(aE_105, &_s10CodingKeysON_576, v0, v1);
    atomic_store(result, &qword_27C906148);
  }

  return result;
}

unint64_t sub_2142EA030()
{
  result = qword_27C906150;
  if (!qword_27C906150)
  {
    result = swift_getWitnessTable(asc_2147705FC, &type metadata for MBDActionSettingsType, v0, v1);
    atomic_store(result, &qword_27C906150);
  }

  return result;
}

unint64_t sub_2142EA084()
{
  result = qword_27C906160;
  if (!qword_27C906160)
  {
    result = swift_getWitnessTable(byte_214770624, &type metadata for MBDActionSettingsType, v0, v1);
    atomic_store(result, &qword_27C906160);
  }

  return result;
}

unint64_t sub_2142EA12C()
{
  result = qword_27C906170;
  if (!qword_27C906170)
  {
    result = swift_getWitnessTable(byte_214730674, &_s10CodingKeysON_575, v0, v1);
    atomic_store(result, &qword_27C906170);
  }

  return result;
}

unint64_t sub_2142EA1DC()
{
  result = qword_27C906190;
  if (!qword_27C906190)
  {
    result = swift_getWitnessTable(byte_214730624, &_s10CodingKeysON_574, v0, v1);
    atomic_store(result, &qword_27C906190);
  }

  return result;
}

unint64_t sub_2142EA230()
{
  result = qword_27C906198;
  if (!qword_27C906198)
  {
    result = swift_getWitnessTable(byte_2146F8510, &type metadata for MBDChipSuggestion, v0, v1);
    atomic_store(result, &qword_27C906198);
  }

  return result;
}

unint64_t sub_2142EA284()
{
  result = qword_27C9061A0;
  if (!qword_27C9061A0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MBDActionType, &type metadata for MBDActionType, v0, v1);
    atomic_store(result, &qword_27C9061A0);
  }

  return result;
}

unint64_t sub_2142EA2D8()
{
  result = qword_27C9061A8;
  if (!qword_27C9061A8)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C906180, &qword_2146F4250);
    v4[0] = sub_214328930(&qword_27C9061B0, type metadata accessor for MBDActionContent, byte_214702A60);
    result = swift_getWitnessTable(MEMORY[0x277D84F58], v3, v4);
    atomic_store(result, &qword_27C9061A8);
  }

  return result;
}

unint64_t sub_2142EA38C()
{
  result = qword_27C9061C0;
  if (!qword_27C9061C0)
  {
    result = swift_getWitnessTable(byte_2146F8538, &type metadata for MBDChipSuggestion, v0, v1);
    atomic_store(result, &qword_27C9061C0);
  }

  return result;
}

unint64_t sub_2142EA3E0()
{
  result = qword_27C9061C8;
  if (!qword_27C9061C8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MBDActionType, &type metadata for MBDActionType, v0, v1);
    atomic_store(result, &qword_27C9061C8);
  }

  return result;
}

unint64_t sub_2142EA434()
{
  result = qword_27C9061D0;
  if (!qword_27C9061D0)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C906180, &qword_2146F4250);
    v4[0] = sub_214328930(&qword_27C9061D8, type metadata accessor for MBDActionContent, aQs);
    result = swift_getWitnessTable(MEMORY[0x277D84F40], v3, v4);
    atomic_store(result, &qword_27C9061D0);
  }

  return result;
}

unint64_t sub_2142EA4E8()
{
  result = qword_27C9061E8;
  if (!qword_27C9061E8)
  {
    result = swift_getWitnessTable(aU_118, &_s10CodingKeysON_573, v0, v1);
    atomic_store(result, &qword_27C9061E8);
  }

  return result;
}

unint64_t sub_2142EA53C()
{
  result = qword_27C906200;
  if (!qword_27C906200)
  {
    result = swift_getWitnessTable(byte_214730584, &_s10CodingKeysON_572, v0, v1);
    atomic_store(result, &qword_27C906200);
  }

  return result;
}

unint64_t sub_2142EA590()
{
  result = qword_27C906218;
  if (!qword_27C906218)
  {
    result = swift_getWitnessTable(byte_214730534, &_s10CodingKeysON_571, v0, v1);
    atomic_store(result, &qword_27C906218);
  }

  return result;
}

unint64_t sub_2142EA5E4()
{
  result = qword_27C906228;
  if (!qword_27C906228)
  {
    result = swift_getWitnessTable(byte_214771010, &type metadata for CloudKitShareParticipantRole, v0, v1);
    atomic_store(result, &qword_27C906228);
  }

  return result;
}

unint64_t sub_2142EA638()
{
  result = qword_27C906230;
  if (!qword_27C906230)
  {
    result = swift_getWitnessTable(asc_214770E30, &type metadata for CloudKitShareParticipantAcceptanceStatus, v0, v1);
    atomic_store(result, &qword_27C906230);
  }

  return result;
}

unint64_t sub_2142EA68C()
{
  result = qword_27C906238;
  if (!qword_27C906238)
  {
    result = swift_getWitnessTable(aM4_0, &type metadata for CloudKitShareParticipantPermission, v0, v1);
    atomic_store(result, &qword_27C906238);
  }

  return result;
}

unint64_t sub_2142EA6E0()
{
  result = qword_27C906240;
  if (!qword_27C906240)
  {
    result = swift_getWitnessTable(asc_214771100, &type metadata for CloudKitShareParticipantInvitationTokenStatus, v0, v1);
    atomic_store(result, &qword_27C906240);
  }

  return result;
}

unint64_t sub_2142EA734()
{
  result = qword_27C906258;
  if (!qword_27C906258)
  {
    result = swift_getWitnessTable(byte_214771038, &type metadata for CloudKitShareParticipantRole, v0, v1);
    atomic_store(result, &qword_27C906258);
  }

  return result;
}

unint64_t sub_2142EA788()
{
  result = qword_27C906260;
  if (!qword_27C906260)
  {
    result = swift_getWitnessTable(byte_214770E58, &type metadata for CloudKitShareParticipantAcceptanceStatus, v0, v1);
    atomic_store(result, &qword_27C906260);
  }

  return result;
}

unint64_t sub_2142EA7DC()
{
  result = qword_27C906268;
  if (!qword_27C906268)
  {
    result = swift_getWitnessTable(byte_214770F48, &type metadata for CloudKitShareParticipantPermission, v0, v1);
    atomic_store(result, &qword_27C906268);
  }

  return result;
}

unint64_t sub_2142EA830()
{
  result = qword_27C906270;
  if (!qword_27C906270)
  {
    result = swift_getWitnessTable(byte_214771128, &type metadata for CloudKitShareParticipantInvitationTokenStatus, v0, v1);
    atomic_store(result, &qword_27C906270);
  }

  return result;
}

unint64_t sub_2142EA884()
{
  result = qword_27C906280;
  if (!qword_27C906280)
  {
    result = swift_getWitnessTable(aE_106, &_s10CodingKeysON_570, v0, v1);
    atomic_store(result, &qword_27C906280);
  }

  return result;
}

unint64_t sub_2142EA8D8()
{
  result = qword_27C906288;
  if (!qword_27C906288)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C917500, &qword_2146F42A8);
    v4[0] = sub_2142EA95C();
    result = swift_getWitnessTable(MEMORY[0x277D84F58], v3, v4);
    atomic_store(result, &qword_27C906288);
  }

  return result;
}

unint64_t sub_2142EA95C()
{
  result = qword_27C906290;
  if (!qword_27C906290)
  {
    result = swift_getWitnessTable(byte_2146F8650, &type metadata for CloudKitRecordID, v0, v1);
    atomic_store(result, &qword_27C906290);
  }

  return result;
}

unint64_t sub_2142EA9B0()
{
  result = qword_27C906298;
  if (!qword_27C906298)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C917510, &unk_214757860);
    v4[0] = sub_214328930(&qword_27C9062A0, MEMORY[0x277CC8E50], MEMORY[0x277CC8E70]);
    result = swift_getWitnessTable(MEMORY[0x277D84F58], v3, v4);
    atomic_store(result, &qword_27C906298);
  }

  return result;
}

unint64_t sub_2142EAA64()
{
  result = qword_27C9062A8;
  if (!qword_27C9062A8)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C917520, &qword_2146F42B0);
    v4[0] = sub_2142EAAE8();
    result = swift_getWitnessTable(MEMORY[0x277D84F58], v3, v4);
    atomic_store(result, &qword_27C9062A8);
  }

  return result;
}

unint64_t sub_2142EAAE8()
{
  result = qword_27C9062B0;
  if (!qword_27C9062B0)
  {
    result = swift_getWitnessTable(asc_2146F8600, &type metadata for CloudKitUserIdentityLookupInfo, v0, v1);
    atomic_store(result, &qword_27C9062B0);
  }

  return result;
}

unint64_t sub_2142EAB3C()
{
  result = qword_27C9062C0;
  if (!qword_27C9062C0)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C917500, &qword_2146F42A8);
    v4[0] = sub_2142EABC0();
    result = swift_getWitnessTable(MEMORY[0x277D84F40], v3, v4);
    atomic_store(result, &qword_27C9062C0);
  }

  return result;
}

unint64_t sub_2142EABC0()
{
  result = qword_27C9062C8;
  if (!qword_27C9062C8)
  {
    result = swift_getWitnessTable(aA_78, &type metadata for CloudKitRecordID, v0, v1);
    atomic_store(result, &qword_27C9062C8);
  }

  return result;
}

unint64_t sub_2142EAC14()
{
  result = qword_27C9062D0;
  if (!qword_27C9062D0)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C917510, &unk_214757860);
    v4[0] = sub_214328930(&qword_27C9062D8, MEMORY[0x277CC8E50], MEMORY[0x277CC8E58]);
    result = swift_getWitnessTable(MEMORY[0x277D84F40], v3, v4);
    atomic_store(result, &qword_27C9062D0);
  }

  return result;
}

unint64_t sub_2142EACC8()
{
  result = qword_27C9062E0;
  if (!qword_27C9062E0)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C917520, &qword_2146F42B0);
    v4[0] = sub_2142EAD4C();
    result = swift_getWitnessTable(MEMORY[0x277D84F40], v3, v4);
    atomic_store(result, &qword_27C9062E0);
  }

  return result;
}

unint64_t sub_2142EAD4C()
{
  result = qword_27C9062E8;
  if (!qword_27C9062E8)
  {
    result = swift_getWitnessTable(byte_2146F8628, &type metadata for CloudKitUserIdentityLookupInfo, v0, v1);
    atomic_store(result, &qword_27C9062E8);
  }

  return result;
}

unint64_t sub_2142EADF4()
{
  result = qword_27C9062F8;
  if (!qword_27C9062F8)
  {
    result = swift_getWitnessTable(byte_214730494, &_s10CodingKeysON_569, v0, v1);
    atomic_store(result, &qword_27C9062F8);
  }

  return result;
}

unint64_t sub_2142EAEF8()
{
  result = qword_27C906310;
  if (!qword_27C906310)
  {
    result = swift_getWitnessTable(aM_161, &_s10CodingKeysON_568, v0, v1);
    atomic_store(result, &qword_27C906310);
  }

  return result;
}

unint64_t sub_2142EAFAC()
{
  result = qword_27C906328;
  if (!qword_27C906328)
  {
    result = swift_getWitnessTable(a5_51, &_s10CodingKeysON_567, v0, v1);
    atomic_store(result, &qword_27C906328);
  }

  return result;
}

unint64_t sub_2142EB054()
{
  result = qword_27C906340;
  if (!qword_27C906340)
  {
    result = swift_getWitnessTable(byte_2147303A4, &_s10CodingKeysON_566, v0, v1);
    atomic_store(result, &qword_27C906340);
  }

  return result;
}

unint64_t sub_2142EB158()
{
  result = qword_27C906358;
  if (!qword_27C906358)
  {
    result = swift_getWitnessTable(asc_214730354, &_s10CodingKeysON_565, v0, v1);
    atomic_store(result, &qword_27C906358);
  }

  return result;
}

unint64_t sub_2142EB1AC()
{
  result = qword_27C906360;
  if (!qword_27C906360)
  {
    result = swift_getWitnessTable(byte_2146F86F0, &type metadata for CloudStorageSPKey, v0, v1);
    atomic_store(result, &qword_27C906360);
  }

  return result;
}

unint64_t sub_2142EB25C()
{
  result = qword_27C906370;
  if (!qword_27C906370)
  {
    result = swift_getWitnessTable(byte_2146F8718, &type metadata for CloudStorageSPKey, v0, v1);
    atomic_store(result, &qword_27C906370);
  }

  return result;
}

unint64_t sub_2142EB2B0()
{
  result = qword_27C906380;
  if (!qword_27C906380)
  {
    result = swift_getWitnessTable(asc_214730304, &_s10CodingKeysON_564, v0, v1);
    atomic_store(result, &qword_27C906380);
  }

  return result;
}

unint64_t sub_2142EB304()
{
  result = qword_27C906390;
  if (!qword_27C906390)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C906388, &qword_2146F4320);
    v4[0] = sub_2142EB388();
    result = swift_getWitnessTable(MEMORY[0x277D83978], v3, v4);
    atomic_store(result, &qword_27C906390);
  }

  return result;
}

unint64_t sub_2142EB388()
{
  result = qword_27C906398;
  if (!qword_27C906398)
  {
    result = swift_getWitnessTable(aI_88, &type metadata for CloudStorageValue, v0, v1);
    atomic_store(result, &qword_27C906398);
  }

  return result;
}

unint64_t sub_2142EB3DC()
{
  result = qword_27C9063A8;
  if (!qword_27C9063A8)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C906388, &qword_2146F4320);
    v4[0] = sub_2142EB460();
    result = swift_getWitnessTable(MEMORY[0x277D83948], v3, v4);
    atomic_store(result, &qword_27C9063A8);
  }

  return result;
}

unint64_t sub_2142EB460()
{
  result = qword_27C9063B0;
  if (!qword_27C9063B0)
  {
    result = swift_getWitnessTable(byte_2146F86C8, &type metadata for CloudStorageValue, v0, v1);
    atomic_store(result, &qword_27C9063B0);
  }

  return result;
}

unint64_t sub_2142EB4B4()
{
  result = qword_27C9063C0;
  if (!qword_27C9063C0)
  {
    result = swift_getWitnessTable(aU_119, &_s10CodingKeysON_563, v0, v1);
    atomic_store(result, &qword_27C9063C0);
  }

  return result;
}

unint64_t sub_2142EB508()
{
  result = qword_27C9063D0;
  if (!qword_27C9063D0)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C9063C8, &qword_2146F4338);
    v4[0] = sub_2142EB58C();
    result = swift_getWitnessTable(MEMORY[0x277D83978], v3, v4);
    atomic_store(result, &qword_27C9063D0);
  }

  return result;
}

unint64_t sub_2142EB58C()
{
  result = qword_27C9063D8;
  if (!qword_27C9063D8)
  {
    result = swift_getWitnessTable(byte_2146F8740, &type metadata for CloudStorageShareEntry, v0, v1);
    atomic_store(result, &qword_27C9063D8);
  }

  return result;
}

unint64_t sub_2142EB5E0()
{
  result = qword_27C9063E8;
  if (!qword_27C9063E8)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C9063E0, &qword_2146F4340);
    v4[0] = sub_2142EB664();
    result = swift_getWitnessTable(MEMORY[0x277D84F58], v3, v4);
    atomic_store(result, &qword_27C9063E8);
  }

  return result;
}

unint64_t sub_2142EB664()
{
  result = qword_27C9063F0;
  if (!qword_27C9063F0)
  {
    result = swift_getWitnessTable(aY_70, &type metadata for CloudStorageAttributes, v0, v1);
    atomic_store(result, &qword_27C9063F0);
  }

  return result;
}

unint64_t sub_2142EB6B8()
{
  result = qword_27C906400;
  if (!qword_27C906400)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C9063C8, &qword_2146F4338);
    v4[0] = sub_2142EB73C();
    result = swift_getWitnessTable(MEMORY[0x277D83948], v3, v4);
    atomic_store(result, &qword_27C906400);
  }

  return result;
}

unint64_t sub_2142EB73C()
{
  result = qword_27C906408;
  if (!qword_27C906408)
  {
    result = swift_getWitnessTable(aQ_75, &type metadata for CloudStorageShareEntry, v0, v1);
    atomic_store(result, &qword_27C906408);
  }

  return result;
}

unint64_t sub_2142EB790()
{
  result = qword_27C906410;
  if (!qword_27C906410)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C9063E0, &qword_2146F4340);
    v4[0] = sub_2142EB814();
    result = swift_getWitnessTable(MEMORY[0x277D84F40], v3, v4);
    atomic_store(result, &qword_27C906410);
  }

  return result;
}

unint64_t sub_2142EB814()
{
  result = qword_27C906418;
  if (!qword_27C906418)
  {
    result = swift_getWitnessTable(asc_2146F87B8, &type metadata for CloudStorageAttributes, v0, v1);
    atomic_store(result, &qword_27C906418);
  }

  return result;
}

unint64_t sub_2142EB8BC()
{
  result = qword_27C906428;
  if (!qword_27C906428)
  {
    result = swift_getWitnessTable(aU_120, &_s10CodingKeysON_562, v0, v1);
    atomic_store(result, &qword_27C906428);
  }

  return result;
}

unint64_t sub_2142EB9C0()
{
  result = qword_27C906440;
  if (!qword_27C906440)
  {
    result = swift_getWitnessTable(byte_214730214, &_s10CodingKeysON_561, v0, v1);
    atomic_store(result, &qword_27C906440);
  }

  return result;
}

unint64_t sub_2142EBA14()
{
  result = qword_27C906448;
  if (!qword_27C906448)
  {
    result = swift_getWitnessTable(asc_2146F87E0, &type metadata for CloudStorageSignedShareProtection, v0, v1);
    atomic_store(result, &qword_27C906448);
  }

  return result;
}

unint64_t sub_2142EBA68()
{
  result = qword_27C906458;
  if (!qword_27C906458)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C906450, &qword_2146F4368);
    v4[0] = sub_2142EB1AC();
    result = swift_getWitnessTable(MEMORY[0x277D84F58], v3, v4);
    atomic_store(result, &qword_27C906458);
  }

  return result;
}

unint64_t sub_2142EBAEC()
{
  result = qword_27C906468;
  if (!qword_27C906468)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C906460, &qword_2146F4370);
    v4[0] = sub_2142EBB70();
    result = swift_getWitnessTable(MEMORY[0x277D84F58], v3, v4);
    atomic_store(result, &qword_27C906468);
  }

  return result;
}

unint64_t sub_2142EBB70()
{
  result = qword_27C906470;
  if (!qword_27C906470)
  {
    result = swift_getWitnessTable(byte_2146F8830, &type metadata for CloudStorageSignature, v0, v1);
    atomic_store(result, &qword_27C906470);
  }

  return result;
}

unint64_t sub_2142EBC20()
{
  result = qword_27C906480;
  if (!qword_27C906480)
  {
    result = swift_getWitnessTable(byte_2146F8808, &type metadata for CloudStorageSignedShareProtection, v0, v1);
    atomic_store(result, &qword_27C906480);
  }

  return result;
}

unint64_t sub_2142EBC74()
{
  result = qword_27C906488;
  if (!qword_27C906488)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C906450, &qword_2146F4368);
    v4[0] = sub_2142EB25C();
    result = swift_getWitnessTable(MEMORY[0x277D84F40], v3, v4);
    atomic_store(result, &qword_27C906488);
  }

  return result;
}

unint64_t sub_2142EBCF8()
{
  result = qword_27C906490;
  if (!qword_27C906490)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C906460, &qword_2146F4370);
    v4[0] = sub_2142EBD7C();
    result = swift_getWitnessTable(MEMORY[0x277D84F40], v3, v4);
    atomic_store(result, &qword_27C906490);
  }

  return result;
}

unint64_t sub_2142EBD7C()
{
  result = qword_27C906498;
  if (!qword_27C906498)
  {
    result = swift_getWitnessTable(byte_2146F8858, &type metadata for CloudStorageSignature, v0, v1);
    atomic_store(result, &qword_27C906498);
  }

  return result;
}

unint64_t sub_2142EBDD0()
{
  result = qword_27C9064A8;
  if (!qword_27C9064A8)
  {
    result = swift_getWitnessTable(aE_107, &_s10CodingKeysON_560, v0, v1);
    atomic_store(result, &qword_27C9064A8);
  }

  return result;
}

unint64_t sub_2142EBE24()
{
  result = qword_27C9064B0;
  if (!qword_27C9064B0)
  {
    result = swift_getWitnessTable(byte_2146F8880, &type metadata for CloudStorageShareProtection, v0, v1);
    atomic_store(result, &qword_27C9064B0);
  }

  return result;
}

unint64_t sub_2142EBE78()
{
  result = qword_27C9064C0;
  if (!qword_27C9064C0)
  {
    result = swift_getWitnessTable(a1_28, &type metadata for CloudStorageShareProtection, v0, v1);
    atomic_store(result, &qword_27C9064C0);
  }

  return result;
}

unint64_t sub_2142EBECC()
{
  result = qword_27C9064D0;
  if (!qword_27C9064D0)
  {
    result = swift_getWitnessTable(byte_214730174, &_s10CodingKeysON_559, v0, v1);
    atomic_store(result, &qword_27C9064D0);
  }

  return result;
}

unint64_t sub_2142EBF20()
{
  result = qword_27C9064E8;
  if (!qword_27C9064E8)
  {
    result = swift_getWitnessTable(byte_214730124, &_s10CodingKeysON_558, v0, v1);
    atomic_store(result, &qword_27C9064E8);
  }

  return result;
}

unint64_t sub_2142EBF74()
{
  result = qword_27C906500;
  if (!qword_27C906500)
  {
    result = swift_getWitnessTable(aU_121, &_s10CodingKeysON_557, v0, v1);
    atomic_store(result, &qword_27C906500);
  }

  return result;
}

unint64_t sub_2142EBFC8()
{
  result = qword_27C906518;
  if (!qword_27C906518)
  {
    result = swift_getWitnessTable(byte_214730084, &_s14descr282650EA9V10CodingKeysON, v0, v1);
    atomic_store(result, &qword_27C906518);
  }

  return result;
}

unint64_t sub_2142EC01C()
{
  result = qword_27C906530;
  if (!qword_27C906530)
  {
    result = swift_getWitnessTable(byte_214730034, &_s10CodingKeysON_556, v0, v1);
    atomic_store(result, &qword_27C906530);
  }

  return result;
}

unint64_t sub_2142EC070()
{
  result = qword_27C906548;
  if (!qword_27C906548)
  {
    result = swift_getWitnessTable(aE_108, &_s10CodingKeysON_555, v0, v1);
    atomic_store(result, &qword_27C906548);
  }

  return result;
}

unint64_t sub_2142EC0C4()
{
  result = qword_280B2FDC0;
  if (!qword_280B2FDC0)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C913090, &unk_2146E9DB0);
    v4[0] = sub_214328930(&qword_280B34D28, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
    result = swift_getWitnessTable(MEMORY[0x277D84F58], v3, v4);
    atomic_store(result, &qword_280B2FDC0);
  }

  return result;
}

unint64_t sub_2142EC178()
{
  result = qword_27C906558;
  if (!qword_27C906558)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C906550, &qword_2146F43F8);
    v4[0] = sub_2142EC1FC();
    result = swift_getWitnessTable(MEMORY[0x277D84F58], v3, v4);
    atomic_store(result, &qword_27C906558);
  }

  return result;
}

unint64_t sub_2142EC1FC()
{
  result = qword_27C906560;
  if (!qword_27C906560)
  {
    v5[4] = v0;
    v5[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C905078, &unk_2146F4400);
    v4 = sub_2140929E4();
    v5[0] = MEMORY[0x277D83808];
    v5[1] = v4;
    result = swift_getWitnessTable(MEMORY[0x277D83528], v3, v5);
    atomic_store(result, &qword_27C906560);
  }

  return result;
}

unint64_t sub_2142EC288()
{
  result = qword_27C906568;
  if (!qword_27C906568)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C905020, ")\r");
    v4[0] = sub_214092C9C();
    result = swift_getWitnessTable(MEMORY[0x277D84F58], v3, v4);
    atomic_store(result, &qword_27C906568);
  }

  return result;
}

unint64_t sub_2142EC30C()
{
  result = qword_280B2FDC8;
  if (!qword_280B2FDC8)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C913090, &unk_2146E9DB0);
    v4[0] = sub_214328930(&qword_280B34C68, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
    result = swift_getWitnessTable(MEMORY[0x277D84F40], v3, v4);
    atomic_store(result, &qword_280B2FDC8);
  }

  return result;
}

unint64_t sub_2142EC3C0()
{
  result = qword_27C906578;
  if (!qword_27C906578)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C906550, &qword_2146F43F8);
    v4[0] = sub_2142EC444();
    result = swift_getWitnessTable(MEMORY[0x277D84F40], v3, v4);
    atomic_store(result, &qword_27C906578);
  }

  return result;
}

unint64_t sub_2142EC444()
{
  result = qword_27C906580;
  if (!qword_27C906580)
  {
    v5[4] = v0;
    v5[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C905078, &unk_2146F4400);
    v4 = sub_214092A38();
    v5[0] = MEMORY[0x277D837D8];
    v5[1] = v4;
    result = swift_getWitnessTable(MEMORY[0x277D83508], v3, v5);
    atomic_store(result, &qword_27C906580);
  }

  return result;
}

unint64_t sub_2142EC4D0()
{
  result = qword_27C906588;
  if (!qword_27C906588)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C905020, ")\r");
    v4[0] = sub_214092CF0();
    result = swift_getWitnessTable(MEMORY[0x277D84F40], v3, v4);
    atomic_store(result, &qword_27C906588);
  }

  return result;
}

unint64_t sub_2142EC554()
{
  result = qword_27C906598;
  if (!qword_27C906598)
  {
    result = swift_getWitnessTable(byte_21472FF94, &_s10CodingKeysON_554, v0, v1);
    atomic_store(result, &qword_27C906598);
  }

  return result;
}

unint64_t sub_2142EC5A8()
{
  result = qword_27C9065A0;
  if (!qword_27C9065A0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ChangeEvent.Trigger, &type metadata for ChangeEvent.Trigger, v0, v1);
    atomic_store(result, &qword_27C9065A0);
  }

  return result;
}

unint64_t sub_2142EC5FC()
{
  result = qword_27C9065B0;
  if (!qword_27C9065B0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ChangeEvent.Trigger, &type metadata for ChangeEvent.Trigger, v0, v1);
    atomic_store(result, &qword_27C9065B0);
  }

  return result;
}

unint64_t sub_2142EC650()
{
  result = qword_27C9065C0;
  if (!qword_27C9065C0)
  {
    result = swift_getWitnessTable(aM_162, &_s10CodingKeysON_553, v0, v1);
    atomic_store(result, &qword_27C9065C0);
  }

  return result;
}

unint64_t sub_2142EC6A4()
{
  result = qword_27C9065D0;
  if (!qword_27C9065D0)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C9065C8, &qword_2146F4430);
    v4[0] = sub_2140929E4();
    result = swift_getWitnessTable(MEMORY[0x277D84F58], v3, v4);
    atomic_store(result, &qword_27C9065D0);
  }

  return result;
}

uint64_t sub_2142EC728(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (a3)
  {
    sub_213FB54FC(result, a2);

    return sub_213FDC6BC(a4, a5);
  }

  return result;
}

uint64_t sub_2142EC784(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (a3)
  {
    sub_21402D9F8(result, a2);

    return sub_213FDCA18(a4, a5);
  }

  return result;
}

unint64_t sub_2142EC7E0()
{
  result = qword_27C9065E0;
  if (!qword_27C9065E0)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C9065C8, &qword_2146F4430);
    v4[0] = sub_214092A38();
    result = swift_getWitnessTable(MEMORY[0x277D84F40], v3, v4);
    atomic_store(result, &qword_27C9065E0);
  }

  return result;
}

unint64_t sub_2142EC864()
{
  result = qword_27C9065F0;
  if (!qword_27C9065F0)
  {
    result = swift_getWitnessTable(a5_52, &_s10CodingKeysON_552, v0, v1);
    atomic_store(result, &qword_27C9065F0);
  }

  return result;
}

unint64_t sub_2142EC8B8()
{
  result = qword_27C9065F8;
  if (!qword_27C9065F8)
  {
    result = swift_getWitnessTable(byte_214772F40, &type metadata for MembershipEvent.Trigger, v0, v1);
    atomic_store(result, &qword_27C9065F8);
  }

  return result;
}

unint64_t sub_2142EC90C()
{
  result = qword_27C906608;
  if (!qword_27C906608)
  {
    result = swift_getWitnessTable(aQn, &type metadata for MembershipEvent.Trigger, v0, v1);
    atomic_store(result, &qword_27C906608);
  }

  return result;
}

unint64_t sub_2142EC960()
{
  result = qword_27C906618;
  if (!qword_27C906618)
  {
    result = swift_getWitnessTable(byte_21472FEA4, &_s10CodingKeysON_551, v0, v1);
    atomic_store(result, &qword_27C906618);
  }

  return result;
}

unint64_t sub_2142EC9B4()
{
  result = qword_27C906620;
  if (!qword_27C906620)
  {
    result = swift_getWitnessTable(byte_214773068, &type metadata for PersistenceEvent.Trigger, v0, v1);
    atomic_store(result, &qword_27C906620);
  }

  return result;
}

unint64_t sub_2142ECA08()
{
  result = qword_27C906630;
  if (!qword_27C906630)
  {
    result = swift_getWitnessTable(aIm_0, &type metadata for PersistenceEvent.Trigger, v0, v1);
    atomic_store(result, &qword_27C906630);
  }

  return result;
}

unint64_t sub_2142ECA5C()
{
  result = qword_27C906640;
  if (!qword_27C906640)
  {
    result = swift_getWitnessTable(asc_21472FE54, &_s10CodingKeysON_550, v0, v1);
    atomic_store(result, &qword_27C906640);
  }

  return result;
}

unint64_t sub_2142ECAB0()
{
  result = qword_27C906668;
  if (!qword_27C906668)
  {
    result = swift_getWitnessTable(asc_21472FE04, &_s10CodingKeysON_549, v0, v1);
    atomic_store(result, &qword_27C906668);
  }

  return result;
}

unint64_t sub_2142ECB04()
{
  result = qword_27C906670;
  if (!qword_27C906670)
  {
    result = swift_getWitnessTable(aM_163, &type metadata for CollaborationNoticeAction.ActionType, v0, v1);
    atomic_store(result, &qword_27C906670);
  }

  return result;
}

unint64_t sub_2142ECB58()
{
  result = qword_27C906680;
  if (!qword_27C906680)
  {
    result = swift_getWitnessTable(byte_214741DC4, &type metadata for CollaborationNoticeAction.ActionType, v0, v1);
    atomic_store(result, &qword_27C906680);
  }

  return result;
}

unint64_t sub_2142ECBAC()
{
  result = qword_27C906690;
  if (!qword_27C906690)
  {
    result = swift_getWitnessTable(aU_122, &_s10CodingKeysON_548, v0, v1);
    atomic_store(result, &qword_27C906690);
  }

  return result;
}

unint64_t sub_2142ECC00()
{
  result = qword_27C9066A8;
  if (!qword_27C9066A8)
  {
    result = swift_getWitnessTable(aY_71, &_s10CodingKeysON_547, v0, v1);
    atomic_store(result, &qword_27C9066A8);
  }

  return result;
}

unint64_t sub_2142ECC54()
{
  result = qword_27C9066C0;
  if (!qword_27C9066C0)
  {
    result = swift_getWitnessTable(byte_21472FD14, &_s10CodingKeysON_546, v0, v1);
    atomic_store(result, &qword_27C9066C0);
  }

  return result;
}

unint64_t sub_2142ECCA8()
{
  result = qword_27C9066D8;
  if (!qword_27C9066D8)
  {
    result = swift_getWitnessTable(aE_109, &_s10CodingKeysON_545, v0, v1);
    atomic_store(result, &qword_27C9066D8);
  }

  return result;
}

unint64_t sub_2142ECCFC()
{
  result = qword_27C9066F0;
  if (!qword_27C9066F0)
  {
    result = swift_getWitnessTable(byte_21472FC74, &_s10CodingKeysON_544, v0, v1);
    atomic_store(result, &qword_27C9066F0);
  }

  return result;
}

unint64_t sub_2142ECD50()
{
  result = qword_27C9066F8;
  if (!qword_27C9066F8)
  {
    result = swift_getWitnessTable(a9M, &type metadata for ContactMessage.ContactInfo, v0, v1);
    atomic_store(result, &qword_27C9066F8);
  }

  return result;
}

unint64_t sub_2142ECE00()
{
  result = qword_27C906708;
  if (!qword_27C906708)
  {
    result = swift_getWitnessTable(aOm_1, &type metadata for ContactMessage.ContactInfo, v0, v1);
    atomic_store(result, &qword_27C906708);
  }

  return result;
}

unint64_t sub_2142ECEA8()
{
  result = qword_27C906718;
  if (!qword_27C906718)
  {
    result = swift_getWitnessTable(byte_21472FC24, &_s10CodingKeysON_543, v0, v1);
    atomic_store(result, &qword_27C906718);
  }

  return result;
}

unint64_t sub_2142ECEFC()
{
  result = qword_27C906730;
  if (!qword_27C906730)
  {
    result = swift_getWitnessTable(aU_123, &_s10CodingKeysON_542, v0, v1);
    atomic_store(result, &qword_27C906730);
  }

  return result;
}

unint64_t sub_2142ECF50()
{
  result = qword_27C906738;
  if (!qword_27C906738)
  {
    result = swift_getWitnessTable(byte_214784614, &type metadata for CustomAcknowledgement.AssociatedMessageType, v0, v1);
    atomic_store(result, &qword_27C906738);
  }

  return result;
}

unint64_t sub_2142ECFA4()
{
  result = qword_27C906740;
  if (!qword_27C906740)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C904FD8, &qword_2146F0C50);
    v4[0] = sub_2142ED028();
    result = swift_getWitnessTable(MEMORY[0x277D84F58], v3, v4);
    atomic_store(result, &qword_27C906740);
  }

  return result;
}

unint64_t sub_2142ED028()
{
  result = qword_27C906748;
  if (!qword_27C906748)
  {
    result = swift_getWitnessTable(aI_89, &type metadata for TapBack.MessageSummaryInfo, v0, v1);
    atomic_store(result, &qword_27C906748);
  }

  return result;
}

unint64_t sub_2142ED07C()
{
  result = qword_27C906758;
  if (!qword_27C906758)
  {
    result = swift_getWitnessTable(byte_21478463C, &type metadata for CustomAcknowledgement.AssociatedMessageType, v0, v1);
    atomic_store(result, &qword_27C906758);
  }

  return result;
}

unint64_t sub_2142ED0D0()
{
  result = qword_27C906760;
  if (!qword_27C906760)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C904FD8, &qword_2146F0C50);
    v4[0] = sub_2142ED154();
    result = swift_getWitnessTable(MEMORY[0x277D84F40], v3, v4);
    atomic_store(result, &qword_27C906760);
  }

  return result;
}

unint64_t sub_2142ED154()
{
  result = qword_27C906768;
  if (!qword_27C906768)
  {
    result = swift_getWitnessTable(byte_2146FF9C8, &type metadata for TapBack.MessageSummaryInfo, v0, v1);
    atomic_store(result, &qword_27C906768);
  }

  return result;
}

unint64_t sub_2142ED1A8()
{
  result = qword_27C906778;
  if (!qword_27C906778)
  {
    result = swift_getWitnessTable(byte_21472FB84, &_s10CodingKeysON_541, v0, v1);
    atomic_store(result, &qword_27C906778);
  }

  return result;
}

unint64_t sub_2142ED1FC()
{
  result = qword_280B30890;
  if (!qword_280B30890)
  {
    result = swift_getWitnessTable(byte_21472FB34, &_s10CodingKeysON_540, v0, v1);
    atomic_store(result, &qword_280B30890);
  }

  return result;
}

unint64_t sub_2142ED250()
{
  result = qword_27C9067A0;
  if (!qword_27C9067A0)
  {
    result = swift_getWitnessTable(aE_110, &_s10CodingKeysON_539, v0, v1);
    atomic_store(result, &qword_27C9067A0);
  }

  return result;
}

unint64_t sub_2142ED2A4()
{
  result = qword_27C9067D8;
  if (!qword_27C9067D8)
  {
    result = swift_getWitnessTable(byte_21472FA94, &_s10CodingKeysON_538, v0, v1);
    atomic_store(result, &qword_27C9067D8);
  }

  return result;
}

unint64_t sub_2142ED2F8()
{
  result = qword_27C9067F0;
  if (!qword_27C9067F0)
  {
    result = swift_getWitnessTable(aMh_5, &_s10CodingKeysON_537, v0, v1);
    atomic_store(result, &qword_27C9067F0);
  }

  return result;
}

unint64_t sub_2142ED34C()
{
  result = qword_27C906800;
  if (!qword_27C906800)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C9067F8, &qword_2146F4540);
    v4[0] = sub_2142ED3D0();
    result = swift_getWitnessTable(MEMORY[0x277D83978], v3, v4);
    atomic_store(result, &qword_27C906800);
  }

  return result;
}

unint64_t sub_2142ED3D0()
{
  result = qword_27C906808;
  if (!qword_27C906808)
  {
    result = swift_getWitnessTable(aI_90, &type metadata for SingleTap, v0, v1);
    atomic_store(result, &qword_27C906808);
  }

  return result;
}

unint64_t sub_2142ED424()
{
  result = qword_27C906818;
  if (!qword_27C906818)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C9067F8, &qword_2146F4540);
    v4[0] = sub_2142ED4A8();
    result = swift_getWitnessTable(MEMORY[0x277D83948], v3, v4);
    atomic_store(result, &qword_27C906818);
  }

  return result;
}

unint64_t sub_2142ED4A8()
{
  result = qword_27C906820;
  if (!qword_27C906820)
  {
    result = swift_getWitnessTable(byte_2146F90C8, &type metadata for SingleTap, v0, v1);
    atomic_store(result, &qword_27C906820);
  }

  return result;
}

uint64_t sub_2142ED514(void *a1, uint64_t a2, void *a3)
{
  v4 = a1[1];
  v5 = a3[1];
  result = (v4 | v5) == 0;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    if (*a1 == *a3 && v4 == v5)
    {
      return 1;
    }

    else
    {
      return sub_2146DA6A8();
    }
  }

  return result;
}

BOOL sub_2142ED560(void *a1, uint64_t a2, void **a3)
{
  v3 = *a3;
  v4 = sub_2146D9588();
  v5 = sub_2146D9588();
  v6 = [v3 numberOfMatchesInString:v5 options:0 range:{0, objc_msgSend(v4, sel_length)}];

  return v6 != 0;
}

uint64_t sub_2142ED5F0(uint64_t *a1, char *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v6 = *a2;
  sub_2143BE224(v2, v3, &v6);
  return v4 & 1;
}

unint64_t sub_2142ED674()
{
  result = qword_27C906830;
  if (!qword_27C906830)
  {
    result = swift_getWitnessTable(a5_53, &_s10CodingKeysON_536, v0, v1);
    atomic_store(result, &qword_27C906830);
  }

  return result;
}

unint64_t sub_2142ED6C8()
{
  result = qword_27C906848;
  if (!qword_27C906848)
  {
    result = swift_getWitnessTable(byte_21472F9A4, &_s10CodingKeysON_535, v0, v1);
    atomic_store(result, &qword_27C906848);
  }

  return result;
}

unint64_t sub_2142ED71C()
{
  result = qword_27C906858;
  if (!qword_27C906858)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C906850, &qword_2146F4570);
    v4[0] = sub_2142ED7A0();
    result = swift_getWitnessTable(MEMORY[0x277D83978], v3, v4);
    atomic_store(result, &qword_27C906858);
  }

  return result;
}

unint64_t sub_2142ED7A0()
{
  result = qword_27C906860;
  if (!qword_27C906860)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SingleStroke, &type metadata for SingleStroke, v0, v1);
    atomic_store(result, &qword_27C906860);
  }

  return result;
}

unint64_t sub_2142ED7F4()
{
  result = qword_27C906870;
  if (!qword_27C906870)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C906850, &qword_2146F4570);
    v4[0] = sub_2142ED878();
    result = swift_getWitnessTable(MEMORY[0x277D83948], v3, v4);
    atomic_store(result, &qword_27C906870);
  }

  return result;
}

unint64_t sub_2142ED878()
{
  result = qword_27C906878;
  if (!qword_27C906878)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SingleStroke, &type metadata for SingleStroke, v0, v1);
    atomic_store(result, &qword_27C906878);
  }

  return result;
}

unint64_t sub_2142ED8CC()
{
  result = qword_27C906888;
  if (!qword_27C906888)
  {
    result = swift_getWitnessTable(asc_21472F954, &_s10CodingKeysON_534, v0, v1);
    atomic_store(result, &qword_27C906888);
  }

  return result;
}

unint64_t sub_2142ED920()
{
  result = qword_27C906898;
  if (!qword_27C906898)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C906890, &qword_2146F4590);
    v4[0] = sub_2142ED9A4();
    result = swift_getWitnessTable(MEMORY[0x277D83978], v3, v4);
    atomic_store(result, &qword_27C906898);
  }

  return result;
}

unint64_t sub_2142ED9A4()
{
  result = qword_27C9068A0;
  if (!qword_27C9068A0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StrokePoint, &type metadata for StrokePoint, v0, v1);
    atomic_store(result, &qword_27C9068A0);
  }

  return result;
}

unint64_t sub_2142ED9F8()
{
  result = qword_27C9068B0;
  if (!qword_27C9068B0)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C906890, &qword_2146F4590);
    v4[0] = sub_2142EDA7C();
    result = swift_getWitnessTable(MEMORY[0x277D83948], v3, v4);
    atomic_store(result, &qword_27C9068B0);
  }

  return result;
}

unint64_t sub_2142EDA7C()
{
  result = qword_27C9068B8;
  if (!qword_27C9068B8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StrokePoint, &type metadata for StrokePoint, v0, v1);
    atomic_store(result, &qword_27C9068B8);
  }

  return result;
}

unint64_t sub_2142EDAD0()
{
  result = qword_27C9068C8;
  if (!qword_27C9068C8)
  {
    result = swift_getWitnessTable(asc_21472F904, &_s10CodingKeysON_533, v0, v1);
    atomic_store(result, &qword_27C9068C8);
  }

  return result;
}

unint64_t sub_2142EDBA8()
{
  result = qword_27C9068E0;
  if (!qword_27C9068E0)
  {
    result = swift_getWitnessTable(aU_124, &_s10CodingKeysON_532, v0, v1);
    atomic_store(result, &qword_27C9068E0);
  }

  return result;
}

unint64_t sub_2142EDC58()
{
  result = qword_27C906900;
  if (!qword_27C906900)
  {
    result = swift_getWitnessTable(aZ_8, &_s10CodingKeysON_531, v0, v1);
    atomic_store(result, &qword_27C906900);
  }

  return result;
}

unint64_t sub_2142EDCAC()
{
  result = qword_27C906908;
  if (!qword_27C906908)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for VideoMessage.MediaType, &type metadata for VideoMessage.MediaType, v0, v1);
    atomic_store(result, &qword_27C906908);
  }

  return result;
}

unint64_t sub_2142EDD00()
{
  result = qword_27C906910;
  if (!qword_27C906910)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C9068F0, &unk_2146F45C0);
    v4[0] = sub_214328930(&qword_27C906918, type metadata accessor for IntroBalloon, protocol conformance descriptor for IntroBalloon);
    result = swift_getWitnessTable(MEMORY[0x277D84F58], v3, v4);
    atomic_store(result, &qword_27C906910);
  }

  return result;
}

unint64_t sub_2142EDDB4()
{
  result = qword_27C906928;
  if (!qword_27C906928)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C906920, &qword_214738410);
    v4[0] = sub_214328930(&qword_27C906930, type metadata accessor for DigitalTouchBalloon, aY_72);
    result = swift_getWitnessTable(MEMORY[0x277D83978], v3, v4);
    atomic_store(result, &qword_27C906928);
  }

  return result;
}

unint64_t sub_2142EDE68()
{
  result = qword_27C906940;
  if (!qword_27C906940)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for VideoMessage.MediaType, &type metadata for VideoMessage.MediaType, v0, v1);
    atomic_store(result, &qword_27C906940);
  }

  return result;
}

unint64_t sub_2142EDEBC()
{
  result = qword_27C906948;
  if (!qword_27C906948)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C9068F0, &unk_2146F45C0);
    v4[0] = sub_214328930(&qword_27C906950, type metadata accessor for IntroBalloon, protocol conformance descriptor for IntroBalloon);
    result = swift_getWitnessTable(MEMORY[0x277D84F40], v3, v4);
    atomic_store(result, &qword_27C906948);
  }

  return result;
}

unint64_t sub_2142EDF70()
{
  result = qword_27C906958;
  if (!qword_27C906958)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C906920, &qword_214738410);
    v4[0] = sub_214328930(&qword_27C906960, type metadata accessor for DigitalTouchBalloon, byte_2146F8FD8);
    result = swift_getWitnessTable(MEMORY[0x277D83948], v3, v4);
    atomic_store(result, &qword_27C906958);
  }

  return result;
}

unint64_t sub_2142EE024()
{
  result = qword_27C906970;
  if (!qword_27C906970)
  {
    result = swift_getWitnessTable(byte_21472F814, &_s10CodingKeysON_530, v0, v1);
    atomic_store(result, &qword_27C906970);
  }

  return result;
}

unint64_t sub_2142EE078()
{
  result = qword_27C906978;
  if (!qword_27C906978)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DoodleMessage, &type metadata for DoodleMessage, v0, v1);
    atomic_store(result, &qword_27C906978);
  }

  return result;
}

unint64_t sub_2142EE0CC()
{
  result = qword_27C906988;
  if (!qword_27C906988)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DoodleMessage, &type metadata for DoodleMessage, v0, v1);
    atomic_store(result, &qword_27C906988);
  }

  return result;
}

unint64_t sub_2142EE120()
{
  result = qword_27C906998;
  if (!qword_27C906998)
  {
    result = swift_getWitnessTable(aE_111, &_s10CodingKeysON_529, v0, v1);
    atomic_store(result, &qword_27C906998);
  }

  return result;
}

unint64_t sub_2142EE174()
{
  result = qword_27C9069A8;
  if (!qword_27C9069A8)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C9069A0, &qword_2146F4600);
    v4[0] = sub_2142EE1F8();
    result = swift_getWitnessTable(MEMORY[0x277D83978], v3, v4);
    atomic_store(result, &qword_27C9069A8);
  }

  return result;
}

unint64_t sub_2142EE1F8()
{
  result = qword_27C9069B0;
  if (!qword_27C9069B0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SingleKiss, &type metadata for SingleKiss, v0, v1);
    atomic_store(result, &qword_27C9069B0);
  }

  return result;
}

unint64_t sub_2142EE24C()
{
  result = qword_27C9069C0;
  if (!qword_27C9069C0)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C9069A0, &qword_2146F4600);
    v4[0] = sub_2142EE2D0();
    result = swift_getWitnessTable(MEMORY[0x277D83948], v3, v4);
    atomic_store(result, &qword_27C9069C0);
  }

  return result;
}

unint64_t sub_2142EE2D0()
{
  result = qword_27C9069C8;
  if (!qword_27C9069C8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SingleKiss, &type metadata for SingleKiss, v0, v1);
    atomic_store(result, &qword_27C9069C8);
  }

  return result;
}

unint64_t sub_2142EE324()
{
  result = qword_27C9069D8;
  if (!qword_27C9069D8)
  {
    result = swift_getWitnessTable(byte_21472F774, &_s10CodingKeysON_528, v0, v1);
    atomic_store(result, &qword_27C9069D8);
  }

  return result;
}

unint64_t sub_2142EE3CC()
{
  result = qword_27C9069F0;
  if (!qword_27C9069F0)
  {
    result = swift_getWitnessTable(byte_21472F724, &_s10CodingKeysON_527, v0, v1);
    atomic_store(result, &qword_27C9069F0);
  }

  return result;
}

unint64_t sub_2142EE420()
{
  result = qword_27C906A00;
  if (!qword_27C906A00)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C9069F8, &qword_2146F4628);
    v4[0] = sub_2142EE4A4();
    result = swift_getWitnessTable(MEMORY[0x277D83978], v3, v4);
    atomic_store(result, &qword_27C906A00);
  }

  return result;
}

unint64_t sub_2142EE4A4()
{
  result = qword_27C906A08;
  if (!qword_27C906A08)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AngerMovement, &type metadata for AngerMovement, v0, v1);
    atomic_store(result, &qword_27C906A08);
  }

  return result;
}

unint64_t sub_2142EE554()
{
  result = qword_27C906A18;
  if (!qword_27C906A18)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C9069F8, &qword_2146F4628);
    v4[0] = sub_2142EE5D8();
    result = swift_getWitnessTable(MEMORY[0x277D83948], v3, v4);
    atomic_store(result, &qword_27C906A18);
  }

  return result;
}

unint64_t sub_2142EE5D8()
{
  result = qword_27C906A20;
  if (!qword_27C906A20)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AngerMovement, &type metadata for AngerMovement, v0, v1);
    atomic_store(result, &qword_27C906A20);
  }

  return result;
}

unint64_t sub_2142EE62C()
{
  result = qword_27C906A30;
  if (!qword_27C906A30)
  {
    result = swift_getWitnessTable(aU_125, &_s10CodingKeysON_526, v0, v1);
    atomic_store(result, &qword_27C906A30);
  }

  return result;
}

unint64_t sub_2142EE680()
{
  result = qword_27C906A48;
  if (!qword_27C906A48)
  {
    result = swift_getWitnessTable(byte_21472F684, &_s10CodingKeysON_525, v0, v1);
    atomic_store(result, &qword_27C906A48);
  }

  return result;
}

unint64_t sub_2142EE6D4()
{
  result = qword_27C906A50;
  if (!qword_27C906A50)
  {
    result = swift_getWitnessTable(byte_21476E76C, &type metadata for EditMessageCommand.MessageEditType, v0, v1);
    atomic_store(result, &qword_27C906A50);
  }

  return result;
}

unint64_t sub_2142EE728()
{
  result = qword_27C906A60;
  if (!qword_27C906A60)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C906A58, &qword_2146F4650);
    v4[0] = sub_21405E3AC();
    result = swift_getWitnessTable(MEMORY[0x277D84F58], v3, v4);
    atomic_store(result, &qword_27C906A60);
  }

  return result;
}

void sub_2142EE7AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2 != 1)
  {

    sub_214031CE0(a5, a6, a7);
  }
}

unint64_t sub_2142EE818()
{
  result = qword_27C906A70;
  if (!qword_27C906A70)
  {
    result = swift_getWitnessTable(aE_112, &type metadata for EditMessageCommand.MessageEditType, v0, v1);
    atomic_store(result, &qword_27C906A70);
  }

  return result;
}

void sub_2142EE86C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2 != 1)
  {

    sub_214031CA0(a5, a6, a7);
  }
}

unint64_t sub_2142EE8D8()
{
  result = qword_27C906A78;
  if (!qword_27C906A78)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C906A58, &qword_2146F4650);
    v4[0] = sub_21405E400();
    result = swift_getWitnessTable(MEMORY[0x277D84F40], v3, v4);
    atomic_store(result, &qword_27C906A78);
  }

  return result;
}

unint64_t sub_2142EE9B0()
{
  result = qword_27C906A88;
  if (!qword_27C906A88)
  {
    result = swift_getWitnessTable(byte_21472F634, &_s10CodingKeysON_524, v0, v1);
    atomic_store(result, &qword_27C906A88);
  }

  return result;
}

unint64_t sub_2142EEA04()
{
  result = qword_27C906A90;
  if (!qword_27C906A90)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for EmojiTapBack.AssociatedMessageType, &type metadata for EmojiTapBack.AssociatedMessageType, v0, v1);
    atomic_store(result, &qword_27C906A90);
  }

  return result;
}

unint64_t sub_2142EEAB4()
{
  result = qword_27C906AA0;
  if (!qword_27C906AA0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for EmojiTapBack.AssociatedMessageType, &type metadata for EmojiTapBack.AssociatedMessageType, v0, v1);
    atomic_store(result, &qword_27C906AA0);
  }

  return result;
}

unint64_t sub_2142EEB08()
{
  result = qword_27C906AB0;
  if (!qword_27C906AB0)
  {
    result = swift_getWitnessTable(aE_113, &_s10CodingKeysON_523, v0, v1);
    atomic_store(result, &qword_27C906AB0);
  }

  return result;
}

unint64_t sub_2142EEB5C()
{
  result = qword_27C906AD8;
  if (!qword_27C906AD8)
  {
    result = swift_getWitnessTable(byte_21472F594, &_s10CodingKeysON_522, v0, v1);
    atomic_store(result, &qword_27C906AD8);
  }

  return result;
}

unint64_t sub_2142EEBB0()
{
  result = qword_27C906AE8;
  if (!qword_27C906AE8)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C906AE0, &qword_2146F4688);
    v4[0] = sub_2142EEC34();
    result = swift_getWitnessTable(MEMORY[0x277D83978], v3, v4);
    atomic_store(result, &qword_27C906AE8);
  }

  return result;
}

unint64_t sub_2142EEC34()
{
  result = qword_27C906AF0;
  if (!qword_27C906AF0)
  {
    result = swift_getWitnessTable(aIom, &type metadata for EncodedAttachments.Content, v0, v1);
    atomic_store(result, &qword_27C906AF0);
  }

  return result;
}

unint64_t sub_2142EEC88()
{
  result = qword_27C906B00;
  if (!qword_27C906B00)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C906AE0, &qword_2146F4688);
    v4[0] = sub_2142EED0C();
    result = swift_getWitnessTable(MEMORY[0x277D83948], v3, v4);
    atomic_store(result, &qword_27C906B00);
  }

  return result;
}

unint64_t sub_2142EED0C()
{
  result = qword_27C906B08;
  if (!qword_27C906B08)
  {
    result = swift_getWitnessTable(byte_2146FDEE8, &type metadata for EncodedAttachments.Content, v0, v1);
    atomic_store(result, &qword_27C906B08);
  }

  return result;
}

unint64_t sub_2142EED60()
{
  result = qword_27C906B18;
  if (!qword_27C906B18)
  {
    result = swift_getWitnessTable(byte_21472F544, &_s10CodingKeysON_521, v0, v1);
    atomic_store(result, &qword_27C906B18);
  }

  return result;
}

unint64_t sub_2142EEDB4()
{
  result = qword_27C906B20;
  if (!qword_27C906B20)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ErrorMessage.ErrorType, &type metadata for ErrorMessage.ErrorType, v0, v1);
    atomic_store(result, &qword_27C906B20);
  }

  return result;
}

unint64_t sub_2142EEE08()
{
  result = qword_27C906B30;
  if (!qword_27C906B30)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ErrorMessage.ErrorType, &type metadata for ErrorMessage.ErrorType, v0, v1);
    atomic_store(result, &qword_27C906B30);
  }

  return result;
}

unint64_t sub_2142EEEB8()
{
  result = qword_27C906B40;
  if (!qword_27C906B40)
  {
    result = swift_getWitnessTable(a5_54, &_s10CodingKeysON_520, v0, v1);
    atomic_store(result, &qword_27C906B40);
  }

  return result;
}

unint64_t sub_2142EEFBC()
{
  result = qword_27C906B58;
  if (!qword_27C906B58)
  {
    result = swift_getWitnessTable(byte_21472F4A4, &_s10CodingKeysON_519, v0, v1);
    atomic_store(result, &qword_27C906B58);
  }

  return result;
}

unint64_t sub_2142EF010()
{
  result = qword_27C906B60;
  if (!qword_27C906B60)
  {
    result = swift_getWitnessTable(byte_21477C310, &type metadata for FMFFenceTrigger.EnvelopeTriggerStatus, v0, v1);
    atomic_store(result, &qword_27C906B60);
  }

  return result;
}

unint64_t sub_2142EF0C0()
{
  result = qword_27C906B70;
  if (!qword_27C906B70)
  {
    result = swift_getWitnessTable(byte_21477C338, &type metadata for FMFFenceTrigger.EnvelopeTriggerStatus, v0, v1);
    atomic_store(result, &qword_27C906B70);
  }

  return result;
}

unint64_t sub_2142EF168()
{
  result = qword_27C906B80;
  if (!qword_27C906B80)
  {
    result = swift_getWitnessTable(byte_21472F454, &_s10CodingKeysON_518, v0, v1);
    atomic_store(result, &qword_27C906B80);
  }

  return result;
}

unint64_t sub_2142EF218()
{
  result = qword_27C906B98;
  if (!qword_27C906B98)
  {
    result = swift_getWitnessTable(aMx_1, &_s10CodingKeysON_517, v0, v1);
    atomic_store(result, &qword_27C906B98);
  }

  return result;
}

unint64_t sub_2142EF26C()
{
  result = qword_27C906BB0;
  if (!qword_27C906BB0)
  {
    result = swift_getWitnessTable(aUM_5, &_s10CodingKeysON_516, v0, v1);
    atomic_store(result, &qword_27C906BB0);
  }

  return result;
}

unint64_t sub_2142EF2C0()
{
  result = qword_27C906BC8;
  if (!qword_27C906BC8)
  {
    result = swift_getWitnessTable(byte_21472F364, &_s10CodingKeysON_515, v0, v1);
    atomic_store(result, &qword_27C906BC8);
  }

  return result;
}

unint64_t sub_2142EF314()
{
  result = qword_27C906BD8;
  if (!qword_27C906BD8)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C906BD0, &qword_2146F4700);
    v4[0] = sub_214328930(&qword_27C906BE0, type metadata accessor for CircleTrustAcceptEnvelopeV1Payload, byte_2146F9780);
    result = swift_getWitnessTable(MEMORY[0x277D83978], v3, v4);
    atomic_store(result, &qword_27C906BD8);
  }

  return result;
}

unint64_t sub_2142EF3C8()
{
  result = qword_27C906BE8;
  if (!qword_27C906BE8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FindMyMessage.ItemSharingCrossAccountMessageType, &type metadata for FindMyMessage.ItemSharingCrossAccountMessageType, v0, v1);
    atomic_store(result, &qword_27C906BE8);
  }

  return result;
}

unint64_t sub_2142EF41C()
{
  result = qword_27C906BF8;
  if (!qword_27C906BF8)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C906BD0, &qword_2146F4700);
    v4[0] = sub_214328930(&qword_27C906C00, type metadata accessor for CircleTrustAcceptEnvelopeV1Payload, a1_29);
    result = swift_getWitnessTable(MEMORY[0x277D83948], v3, v4);
    atomic_store(result, &qword_27C906BF8);
  }

  return result;
}

unint64_t sub_2142EF4D0()
{
  result = qword_27C906C08;
  if (!qword_27C906C08)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FindMyMessage.ItemSharingCrossAccountMessageType, &type metadata for FindMyMessage.ItemSharingCrossAccountMessageType, v0, v1);
    atomic_store(result, &qword_27C906C08);
  }

  return result;
}

unint64_t sub_2142EF524()
{
  result = qword_27C906C18;
  if (!qword_27C906C18)
  {
    result = swift_getWitnessTable(byte_21472F314, &_s10CodingKeysON_514, v0, v1);
    atomic_store(result, &qword_27C906C18);
  }

  return result;
}

unint64_t sub_2142EF578()
{
  result = qword_27C906C30;
  if (!qword_27C906C30)
  {
    result = swift_getWitnessTable(aEdm, &_s10CodingKeysON_513, v0, v1);
    atomic_store(result, &qword_27C906C30);
  }

  return result;
}

unint64_t sub_2142EF5CC()
{
  result = qword_27C906C40;
  if (!qword_27C906C40)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C906C38, &qword_21476B570);
    v4[0] = sub_214328930(&qword_27C906C48, type metadata accessor for CircleTrustAckEnvelopeV1Payload, byte_2146F9820);
    result = swift_getWitnessTable(MEMORY[0x277D83978], v3, v4);
    atomic_store(result, &qword_27C906C40);
  }

  return result;
}

unint64_t sub_2142EF680()
{
  result = qword_27C906C58;
  if (!qword_27C906C58)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C906C38, &qword_21476B570);
    v4[0] = sub_214328930(&qword_27C906C60, type metadata accessor for CircleTrustAckEnvelopeV1Payload, byte_2146F9848);
    result = swift_getWitnessTable(MEMORY[0x277D83948], v3, v4);
    atomic_store(result, &qword_27C906C58);
  }

  return result;
}

unint64_t sub_2142EF734()
{
  result = qword_27C906C70;
  if (!qword_27C906C70)
  {
    result = swift_getWitnessTable(byte_21472F274, &_s10CodingKeysON_512, v0, v1);
    atomic_store(result, &qword_27C906C70);
  }

  return result;
}

unint64_t sub_2142EF788()
{
  result = qword_27C906C88;
  if (!qword_27C906C88)
  {
    result = swift_getWitnessTable(byte_21472F224, &_s10CodingKeysON_511, v0, v1);
    atomic_store(result, &qword_27C906C88);
  }

  return result;
}

unint64_t sub_2142EF7DC()
{
  result = qword_27C906C98;
  if (!qword_27C906C98)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C906C90, &qword_2146F4750);
    v4[0] = sub_214328930(&qword_27C906CA0, type metadata accessor for CircleTrustDeclineEnvelopeV1Payload, aI_91);
    result = swift_getWitnessTable(MEMORY[0x277D83978], v3, v4);
    atomic_store(result, &qword_27C906C98);
  }

  return result;
}

unint64_t sub_2142EF890()
{
  result = qword_27C906CB0;
  if (!qword_27C906CB0)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C906C90, &qword_2146F4750);
    v4[0] = sub_214328930(&qword_27C906CB8, type metadata accessor for CircleTrustDeclineEnvelopeV1Payload, byte_2146F98E8);
    result = swift_getWitnessTable(MEMORY[0x277D83948], v3, v4);
    atomic_store(result, &qword_27C906CB0);
  }

  return result;
}

unint64_t sub_2142EF944()
{
  result = qword_27C906CC8;
  if (!qword_27C906CC8)
  {
    result = swift_getWitnessTable(aUim, &_s10CodingKeysON_510, v0, v1);
    atomic_store(result, &qword_27C906CC8);
  }

  return result;
}

unint64_t sub_2142EF998()
{
  result = qword_27C906CE0;
  if (!qword_27C906CE0)
  {
    result = swift_getWitnessTable(byte_21472F184, &_s10CodingKeysON_509, v0, v1);
    atomic_store(result, &qword_27C906CE0);
  }

  return result;
}

unint64_t sub_2142EF9EC()
{
  result = qword_27C906CF0;
  if (!qword_27C906CF0)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C906CE8, &unk_21476B7A0);
    v4[0] = sub_214328930(&qword_27C906CF8, type metadata accessor for CircleTrustEnvelopeV1Payload, byte_2146F9960);
    result = swift_getWitnessTable(MEMORY[0x277D83978], v3, v4);
    atomic_store(result, &qword_27C906CF0);
  }

  return result;
}

unint64_t sub_2142EFAA0()
{
  result = qword_27C906D08;
  if (!qword_27C906D08)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C906CE8, &unk_21476B7A0);
    v4[0] = sub_214328930(&qword_27C906D10, type metadata accessor for CircleTrustEnvelopeV1Payload, aQ_39);
    result = swift_getWitnessTable(MEMORY[0x277D83948], v3, v4);
    atomic_store(result, &qword_27C906D08);
  }

  return result;
}

unint64_t sub_2142EFB54()
{
  result = qword_27C906D20;
  if (!qword_27C906D20)
  {
    result = swift_getWitnessTable(byte_21472F134, &_s10CodingKeysON_508, v0, v1);
    atomic_store(result, &qword_27C906D20);
  }

  return result;
}

unint64_t sub_2142EFBA8()
{
  result = qword_280B2FDB0;
  if (!qword_280B2FDB0)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27C904F30, &unk_2146EFA20);
    v4[0] = sub_214328930(&qword_280B35350, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
    result = swift_getWitnessTable(MEMORY[0x277D84F58], v3, v4);
    atomic_store(result, &qword_280B2FDB0);
  }

  return result;
}

unint64_t sub_2142EFC5C()
{
  result = qword_27C906D30;
  if (!qword_27C906D30)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C906D28, &qword_2146F4798);
    v4[0] = sub_214328930(&qword_27C906D38, type metadata accessor for KeyPackage, protocol conformance descriptor for KeyPackage);
    result = swift_getWitnessTable(MEMORY[0x277D83978], v3, v4);
    atomic_store(result, &qword_27C906D30);
  }

  return result;
}

unint64_t sub_2142EFD10()
{
  result = qword_27C906D48;
  if (!qword_27C906D48)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C906D40, &qword_2146F47A0);
    v4[0] = sub_214328930(&qword_27C906D50, type metadata accessor for PeerTrustEnvelopeV1, byte_2146F9E10);
    result = swift_getWitnessTable(MEMORY[0x277D83978], v3, v4);
    atomic_store(result, &qword_27C906D48);
  }

  return result;
}

unint64_t sub_2142EFDC4()
{
  result = qword_27C906D58;
  if (!qword_27C906D58)
  {
    result = swift_getWitnessTable(aU_126, &type metadata for CircleTrustEnvelopeV1Payload.ShareType, v0, v1);
    atomic_store(result, &qword_27C906D58);
  }

  return result;
}

unint64_t sub_2142EFE18()
{
  result = qword_280B2FDB8;
  if (!qword_280B2FDB8)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27C904F30, &unk_2146EFA20);
    v4[0] = sub_214328930(&qword_280B34D20, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
    result = swift_getWitnessTable(MEMORY[0x277D84F40], v3, v4);
    atomic_store(result, &qword_280B2FDB8);
  }

  return result;
}

unint64_t sub_2142EFECC()
{
  result = qword_27C906D68;
  if (!qword_27C906D68)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C906D28, &qword_2146F4798);
    v4[0] = sub_214328930(&qword_27C906D70, type metadata accessor for KeyPackage, protocol conformance descriptor for KeyPackage);
    result = swift_getWitnessTable(MEMORY[0x277D83948], v3, v4);
    atomic_store(result, &qword_27C906D68);
  }

  return result;
}

unint64_t sub_2142EFF80()
{
  result = qword_27C906D78;
  if (!qword_27C906D78)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C906D40, &qword_2146F47A0);
    v4[0] = sub_214328930(&qword_27C906D80, type metadata accessor for PeerTrustEnvelopeV1, byte_2146F9E38);
    result = swift_getWitnessTable(MEMORY[0x277D83948], v3, v4);
    atomic_store(result, &qword_27C906D78);
  }

  return result;
}

unint64_t sub_2142F0034()
{
  result = qword_27C906D88;
  if (!qword_27C906D88)
  {
    result = swift_getWitnessTable(byte_21476B8DC, &type metadata for CircleTrustEnvelopeV1Payload.ShareType, v0, v1);
    atomic_store(result, &qword_27C906D88);
  }

  return result;
}

unint64_t sub_2142F0088()
{
  result = qword_27C906D98;
  if (!qword_27C906D98)
  {
    atomic_store(result, &qword_27C906D98);
  }

  return result;
}

unint64_t sub_2142F00DC()
{
  result = qword_27C906DA8;
  if (!qword_27C906DA8)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C906DA0, qword_21476BCB0);
    v4[0] = sub_2142F0160();
    result = swift_getWitnessTable(MEMORY[0x277D83978], v3, v4);
    atomic_store(result, &qword_27C906DA8);
  }

  return result;
}

unint64_t sub_2142F0160()
{
  result = qword_27C906DB0;
  if (!qword_27C906DB0)
  {
    result = swift_getWitnessTable(asc_2146F9A00, &type metadata for CircleTrustRequestEnvelopeV1Payload, v0, v1);
    atomic_store(result, &qword_27C906DB0);
  }

  return result;
}

unint64_t sub_2142F01B4()
{
  result = qword_27C906DC0;
  if (!qword_27C906DC0)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C906DA0, qword_21476BCB0);
    v4[0] = sub_2142F0238();
    result = swift_getWitnessTable(MEMORY[0x277D83948], v3, v4);
    atomic_store(result, &qword_27C906DC0);
  }

  return result;
}

unint64_t sub_2142F0238()
{
  result = qword_27C906DC8;
  if (!qword_27C906DC8)
  {
    result = swift_getWitnessTable(byte_2146F9A28, &type metadata for CircleTrustRequestEnvelopeV1Payload, v0, v1);
    atomic_store(result, &qword_27C906DC8);
  }

  return result;
}

unint64_t sub_2142F028C()
{
  result = qword_27C906DD8;
  if (!qword_27C906DD8)
  {
    result = swift_getWitnessTable(byte_21472F094, &_s10CodingKeysON_506, v0, v1);
    atomic_store(result, &qword_27C906DD8);
  }

  return result;
}

unint64_t sub_2142F02E0()
{
  result = qword_27C906DE8;
  if (!qword_27C906DE8)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C906DE0, &qword_2146F47D0);
    v4[0] = sub_214328930(&qword_280B35350, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
    result = swift_getWitnessTable(MEMORY[0x277D83978], v3, v4);
    atomic_store(result, &qword_27C906DE8);
  }

  return result;
}

unint64_t sub_2142F0394()
{
  result = qword_27C906DF8;
  if (!qword_27C906DF8)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C906DE0, &qword_2146F47D0);
    v4[0] = sub_214328930(&qword_280B34D20, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
    result = swift_getWitnessTable(MEMORY[0x277D83948], v3, v4);
    atomic_store(result, &qword_27C906DF8);
  }

  return result;
}

unint64_t sub_2142F0448()
{
  result = qword_27C906E08;
  if (!qword_27C906E08)
  {
    result = swift_getWitnessTable(byte_21472F044, &_s10CodingKeysON_505, v0, v1);
    atomic_store(result, &qword_27C906E08);
  }

  return result;
}

unint64_t sub_2142F049C()
{
  result = qword_27C906E18;
  if (!qword_27C906E18)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C906E10, qword_21476B1F0);
    v4[0] = sub_2142F0520();
    result = swift_getWitnessTable(MEMORY[0x277D83978], v3, v4);
    atomic_store(result, &qword_27C906E18);
  }

  return result;
}

unint64_t sub_2142F0520()
{
  result = qword_27C906E20;
  if (!qword_27C906E20)
  {
    result = swift_getWitnessTable(aI_92, &type metadata for CirclesStoppedEnvelopeV1Payload, v0, v1);
    atomic_store(result, &qword_27C906E20);
  }

  return result;
}

unint64_t sub_2142F0574()
{
  result = qword_27C906E30;
  if (!qword_27C906E30)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C906E10, qword_21476B1F0);
    v4[0] = sub_2142F05F8();
    result = swift_getWitnessTable(MEMORY[0x277D83948], v3, v4);
    atomic_store(result, &qword_27C906E30);
  }

  return result;
}

unint64_t sub_2142F05F8()
{
  result = qword_27C906E38;
  if (!qword_27C906E38)
  {
    result = swift_getWitnessTable(byte_2146F9AC8, &type metadata for CirclesStoppedEnvelopeV1Payload, v0, v1);
    atomic_store(result, &qword_27C906E38);
  }

  return result;
}

unint64_t sub_2142F064C()
{
  result = qword_27C906E48;
  if (!qword_27C906E48)
  {
    result = swift_getWitnessTable(a5um, &_s10CodingKeysON_504, v0, v1);
    atomic_store(result, &qword_27C906E48);
  }

  return result;
}

unint64_t sub_2142F06A0()
{
  result = qword_27C906E60;
  if (!qword_27C906E60)
  {
    result = swift_getWitnessTable(byte_21472EFA4, &_s10CodingKeysON_503, v0, v1);
    atomic_store(result, &qword_27C906E60);
  }

  return result;
}

unint64_t sub_2142F06F4()
{
  result = qword_27C906E70;
  if (!qword_27C906E70)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C906E68, &qword_2146F4810);
    v4[0] = sub_2142F0778();
    result = swift_getWitnessTable(MEMORY[0x277D83978], v3, v4);
    atomic_store(result, &qword_27C906E70);
  }

  return result;
}

unint64_t sub_2142F0778()
{
  result = qword_27C906E78;
  if (!qword_27C906E78)
  {
    result = swift_getWitnessTable(byte_2146F9B40, &type metadata for CirclesUpdatedEnvelopeV1Payload, v0, v1);
    atomic_store(result, &qword_27C906E78);
  }

  return result;
}

unint64_t sub_2142F07CC()
{
  result = qword_27C906E88;
  if (!qword_27C906E88)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C906E68, &qword_2146F4810);
    v4[0] = sub_2142F0850();
    result = swift_getWitnessTable(MEMORY[0x277D83948], v3, v4);
    atomic_store(result, &qword_27C906E88);
  }

  return result;
}

unint64_t sub_2142F0850()
{
  result = qword_27C906E90;
  if (!qword_27C906E90)
  {
    result = swift_getWitnessTable(aQ_76, &type metadata for CirclesUpdatedEnvelopeV1Payload, v0, v1);
    atomic_store(result, &qword_27C906E90);
  }

  return result;
}

unint64_t sub_2142F08A4()
{
  result = qword_27C906EA0;
  if (!qword_27C906EA0)
  {
    result = swift_getWitnessTable(byte_21472EF54, &_s10CodingKeysON_502, v0, v1);
    atomic_store(result, &qword_27C906EA0);
  }

  return result;
}

unint64_t sub_2142F08F8()
{
  result = qword_27C906EB8;
  if (!qword_27C906EB8)
  {
    result = swift_getWitnessTable(aJm_2, &_s10CodingKeysON_501, v0, v1);
    atomic_store(result, &qword_27C906EB8);
  }

  return result;
}

unint64_t sub_2142F094C()
{
  result = qword_27C906EC8;
  if (!qword_27C906EC8)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C906EC0, &qword_21476BDF0);
    v4[0] = sub_214328930(&qword_27C906ED0, type metadata accessor for DelegatedCircleTrustStopEnvelopeV1Payload, asc_2146F9BE0);
    result = swift_getWitnessTable(MEMORY[0x277D83978], v3, v4);
    atomic_store(result, &qword_27C906EC8);
  }

  return result;
}

unint64_t sub_2142F0A00()
{
  result = qword_27C906EE0;
  if (!qword_27C906EE0)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C906EC0, &qword_21476BDF0);
    v4[0] = sub_214328930(&qword_27C906EE8, type metadata accessor for DelegatedCircleTrustStopEnvelopeV1Payload, byte_2146F9C08);
    result = swift_getWitnessTable(MEMORY[0x277D83948], v3, v4);
    atomic_store(result, &qword_27C906EE0);
  }

  return result;
}

unint64_t sub_2142F0AB4()
{
  result = qword_27C906EF8;
  if (!qword_27C906EF8)
  {
    result = swift_getWitnessTable(aUjm, &_s10CodingKeysON_500, v0, v1);
    atomic_store(result, &qword_27C906EF8);
  }

  return result;
}

unint64_t sub_2142F0B08()
{
  result = qword_27C906F10;
  if (!qword_27C906F10)
  {
    result = swift_getWitnessTable(byte_21472EE64, &_s10CodingKeysON_499, v0, v1);
    atomic_store(result, &qword_27C906F10);
  }

  return result;
}

unint64_t sub_2142F0BB0()
{
  result = qword_27C906F28;
  if (!qword_27C906F28)
  {
    result = swift_getWitnessTable(byte_21472EE14, &_s10CodingKeysON_498, v0, v1);
    atomic_store(result, &qword_27C906F28);
  }

  return result;
}

unint64_t sub_2142F0C04()
{
  result = qword_27C906F38;
  if (!qword_27C906F38)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C906F30, &qword_2146F4870);
    v4[0] = sub_2142F0C88();
    result = swift_getWitnessTable(MEMORY[0x277D84F58], v3, v4);
    atomic_store(result, &qword_27C906F38);
  }

  return result;
}

unint64_t sub_2142F0C88()
{
  result = qword_27C906F40;
  if (!qword_27C906F40)
  {
    result = swift_getWitnessTable(byte_2146F9D70, &type metadata for PeerTrustAckEnvelopeV1, v0, v1);
    atomic_store(result, &qword_27C906F40);
  }

  return result;
}

unint64_t sub_2142F0CDC()
{
  result = qword_27C906F50;
  if (!qword_27C906F50)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C906F48, &qword_2146F4878);
    v4[0] = sub_2142F0D60();
    result = swift_getWitnessTable(MEMORY[0x277D84F58], v3, v4);
    atomic_store(result, &qword_27C906F50);
  }

  return result;
}

unint64_t sub_2142F0D60()
{
  result = qword_27C906F58;
  if (!qword_27C906F58)
  {
    result = swift_getWitnessTable(byte_2146F9910, &type metadata for CircleTrustEnvelopeV1, v0, v1);
    atomic_store(result, &qword_27C906F58);
  }

  return result;
}

unint64_t sub_2142F0DB4()
{
  result = qword_27C906F68;
  if (!qword_27C906F68)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C906F60, &qword_2146F4880);
    v4[0] = sub_2142F0E38();
    result = swift_getWitnessTable(MEMORY[0x277D84F58], v3, v4);
    atomic_store(result, &qword_27C906F68);
  }

  return result;
}

unint64_t sub_2142F0E38()
{
  result = qword_27C906F70;
  if (!qword_27C906F70)
  {
    result = swift_getWitnessTable(a9_30, &type metadata for CircleTrustAckEnvelopeV1, v0, v1);
    atomic_store(result, &qword_27C906F70);
  }

  return result;
}

unint64_t sub_2142F0E8C()
{
  result = qword_27C906F80;
  if (!qword_27C906F80)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C906F78, &qword_2146F4888);
    v4[0] = sub_2142F0F10();
    result = swift_getWitnessTable(MEMORY[0x277D84F58], v3, v4);
    atomic_store(result, &qword_27C906F80);
  }

  return result;
}

unint64_t sub_2142F0F10()
{
  result = qword_27C906F88;
  if (!qword_27C906F88)
  {
    result = swift_getWitnessTable(byte_2146F9730, &type metadata for CircleTrustAcceptEnvelopeV1, v0, v1);
    atomic_store(result, &qword_27C906F88);
  }

  return result;
}

unint64_t sub_2142F0F64()
{
  result = qword_27C906F98;
  if (!qword_27C906F98)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C906F90, &qword_2146F4890);
    v4[0] = sub_2142F0FE8();
    result = swift_getWitnessTable(MEMORY[0x277D84F58], v3, v4);
    atomic_store(result, &qword_27C906F98);
  }

  return result;
}

unint64_t sub_2142F0FE8()
{
  result = qword_27C906FA0;
  if (!qword_27C906FA0)
  {
    result = swift_getWitnessTable(byte_2146F9870, &type metadata for CircleTrustDeclineEnvelopeV1, v0, v1);
    atomic_store(result, &qword_27C906FA0);
  }

  return result;
}

unint64_t sub_2142F103C()
{
  result = qword_27C906FB0;
  if (!qword_27C906FB0)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C906FA8, &qword_2146F4898);
    v4[0] = sub_2142F10C0();
    result = swift_getWitnessTable(MEMORY[0x277D84F58], v3, v4);
    atomic_store(result, &qword_27C906FB0);
  }

  return result;
}

unint64_t sub_2142F10C0()
{
  result = qword_27C906FB8;
  if (!qword_27C906FB8)
  {
    result = swift_getWitnessTable(byte_2146F9AF0, &type metadata for CirclesUpdatedEnvelopeV1, v0, v1);
    atomic_store(result, &qword_27C906FB8);
  }

  return result;
}

unint64_t sub_2142F1114()
{
  result = qword_27C906FC8;
  if (!qword_27C906FC8)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C906FC0, &qword_2146F48A0);
    v4[0] = sub_2142F1198();
    result = swift_getWitnessTable(MEMORY[0x277D84F58], v3, v4);
    atomic_store(result, &qword_27C906FC8);
  }

  return result;
}

unint64_t sub_2142F1198()
{
  result = qword_27C906FD0;
  if (!qword_27C906FD0)
  {
    result = swift_getWitnessTable(byte_2146F9A50, &type metadata for CirclesStoppedEnvelopeV1, v0, v1);
    atomic_store(result, &qword_27C906FD0);
  }

  return result;
}

unint64_t sub_2142F11EC()
{
  result = qword_27C906FE0;
  if (!qword_27C906FE0)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C906FD8, &qword_2146F48A8);
    v4[0] = sub_2142F1270();
    result = swift_getWitnessTable(MEMORY[0x277D84F58], v3, v4);
    atomic_store(result, &qword_27C906FE0);
  }

  return result;
}

unint64_t sub_2142F1270()
{
  result = qword_27C906FE8;
  if (!qword_27C906FE8)
  {
    result = swift_getWitnessTable(aY_73, &type metadata for CircleTrustRequestEnvelopeV1, v0, v1);
    atomic_store(result, &qword_27C906FE8);
  }

  return result;
}

unint64_t sub_2142F12C4()
{
  result = qword_27C906FF8;
  if (!qword_27C906FF8)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C906FF0, &qword_2146F48B0);
    v4[0] = sub_2142F1348();
    result = swift_getWitnessTable(MEMORY[0x277D84F58], v3, v4);
    atomic_store(result, &qword_27C906FF8);
  }

  return result;
}

unint64_t sub_2142F1348()
{
  result = qword_27C907000;
  if (!qword_27C907000)
  {
    result = swift_getWitnessTable(aY_74, &type metadata for DelegatedCircleTrustStopEnvelopeV1, v0, v1);
    atomic_store(result, &qword_27C907000);
  }

  return result;
}

uint64_t sub_2142F139C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2142F13DC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_2142F1478()
{
  result = qword_27C907010;
  if (!qword_27C907010)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C906F30, &qword_2146F4870);
    v4[0] = sub_2142F14FC();
    result = swift_getWitnessTable(MEMORY[0x277D84F40], v3, v4);
    atomic_store(result, &qword_27C907010);
  }

  return result;
}

unint64_t sub_2142F14FC()
{
  result = qword_27C907018;
  if (!qword_27C907018)
  {
    result = swift_getWitnessTable("A", &type metadata for PeerTrustAckEnvelopeV1, v0, v1);
    atomic_store(result, &qword_27C907018);
  }

  return result;
}

unint64_t sub_2142F1550()
{
  result = qword_27C907020;
  if (!qword_27C907020)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C906F48, &qword_2146F4878);
    v4[0] = sub_2142F15D4();
    result = swift_getWitnessTable(MEMORY[0x277D84F40], v3, v4);
    atomic_store(result, &qword_27C907020);
  }

  return result;
}

unint64_t sub_2142F15D4()
{
  result = qword_27C907028;
  if (!qword_27C907028)
  {
    result = swift_getWitnessTable(byte_2146F9938, &type metadata for CircleTrustEnvelopeV1, v0, v1);
    atomic_store(result, &qword_27C907028);
  }

  return result;
}

unint64_t sub_2142F1628()
{
  result = qword_27C907030;
  if (!qword_27C907030)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C906F60, &qword_2146F4880);
    v4[0] = sub_2142F16AC();
    result = swift_getWitnessTable(MEMORY[0x277D84F40], v3, v4);
    atomic_store(result, &qword_27C907030);
  }

  return result;
}

unint64_t sub_2142F16AC()
{
  result = qword_27C907038;
  if (!qword_27C907038)
  {
    result = swift_getWitnessTable(byte_2146F97F8, &type metadata for CircleTrustAckEnvelopeV1, v0, v1);
    atomic_store(result, &qword_27C907038);
  }

  return result;
}

unint64_t sub_2142F1700()
{
  result = qword_27C907040;
  if (!qword_27C907040)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C906F78, &qword_2146F4888);
    v4[0] = sub_2142F1784();
    result = swift_getWitnessTable(MEMORY[0x277D84F40], v3, v4);
    atomic_store(result, &qword_27C907040);
  }

  return result;
}

unint64_t sub_2142F1784()
{
  result = qword_27C907048;
  if (!qword_27C907048)
  {
    result = swift_getWitnessTable(byte_2146F9758, &type metadata for CircleTrustAcceptEnvelopeV1, v0, v1);
    atomic_store(result, &qword_27C907048);
  }

  return result;
}

unint64_t sub_2142F17D8()
{
  result = qword_27C907050;
  if (!qword_27C907050)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C906F90, &qword_2146F4890);
    v4[0] = sub_2142F185C();
    result = swift_getWitnessTable(MEMORY[0x277D84F40], v3, v4);
    atomic_store(result, &qword_27C907050);
  }

  return result;
}

unint64_t sub_2142F185C()
{
  result = qword_27C907058;
  if (!qword_27C907058)
  {
    result = swift_getWitnessTable(aA_80, &type metadata for CircleTrustDeclineEnvelopeV1, v0, v1);
    atomic_store(result, &qword_27C907058);
  }

  return result;
}

unint64_t sub_2142F18B0()
{
  result = qword_27C907060;
  if (!qword_27C907060)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C906FA8, &qword_2146F4898);
    v4[0] = sub_2142F1934();
    result = swift_getWitnessTable(MEMORY[0x277D84F40], v3, v4);
    atomic_store(result, &qword_27C907060);
  }

  return result;
}

unint64_t sub_2142F1934()
{
  result = qword_27C907068;
  if (!qword_27C907068)
  {
    result = swift_getWitnessTable(byte_2146F9B18, &type metadata for CirclesUpdatedEnvelopeV1, v0, v1);
    atomic_store(result, &qword_27C907068);
  }

  return result;
}

unint64_t sub_2142F1988()
{
  result = qword_27C907070;
  if (!qword_27C907070)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C906FC0, &qword_2146F48A0);
    v4[0] = sub_2142F1A0C();
    result = swift_getWitnessTable(MEMORY[0x277D84F40], v3, v4);
    atomic_store(result, &qword_27C907070);
  }

  return result;
}

unint64_t sub_2142F1A0C()
{
  result = qword_27C907078;
  if (!qword_27C907078)
  {
    result = swift_getWitnessTable(aA_81, &type metadata for CirclesStoppedEnvelopeV1, v0, v1);
    atomic_store(result, &qword_27C907078);
  }

  return result;
}

unint64_t sub_2142F1A60()
{
  result = qword_27C907080;
  if (!qword_27C907080)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C906FD8, &qword_2146F48A8);
    v4[0] = sub_2142F1AE4();
    result = swift_getWitnessTable(MEMORY[0x277D84F40], v3, v4);
    atomic_store(result, &qword_27C907080);
  }

  return result;
}

unint64_t sub_2142F1AE4()
{
  result = qword_27C907088;
  if (!qword_27C907088)
  {
    result = swift_getWitnessTable(byte_2146F99D8, &type metadata for CircleTrustRequestEnvelopeV1, v0, v1);
    atomic_store(result, &qword_27C907088);
  }

  return result;
}

unint64_t sub_2142F1B38()
{
  result = qword_27C907090;
  if (!qword_27C907090)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C906FF0, &qword_2146F48B0);
    v4[0] = sub_2142F1BBC();
    result = swift_getWitnessTable(MEMORY[0x277D84F40], v3, v4);
    atomic_store(result, &qword_27C907090);
  }

  return result;
}

unint64_t sub_2142F1BBC()
{
  result = qword_27C907098;
  if (!qword_27C907098)
  {
    result = swift_getWitnessTable(asc_2146F9BB8, &type metadata for DelegatedCircleTrustStopEnvelopeV1, v0, v1);
    atomic_store(result, &qword_27C907098);
  }

  return result;
}

unint64_t sub_2142F1C10()
{
  result = qword_27C9070A8;
  if (!qword_27C9070A8)
  {
    result = swift_getWitnessTable("eȰmh\t\b", &_s10CodingKeysON_497, v0, v1);
    atomic_store(result, &qword_27C9070A8);
  }

  return result;
}

unint64_t sub_2142F1C64()
{
  result = qword_27C9070C0;
  if (!qword_27C9070C0)
  {
    result = swift_getWitnessTable(byte_21472ED74, &_s10CodingKeysON_496, v0, v1);
    atomic_store(result, &qword_27C9070C0);
  }

  return result;
}

unint64_t sub_2142F1CB8()
{
  result = qword_27C9070D8;
  if (!qword_27C9070D8)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C9070D0, &qword_2146F48D8);
    v4[0] = sub_2142F1D3C();
    result = swift_getWitnessTable(MEMORY[0x277D83978], v3, v4);
    atomic_store(result, &qword_27C9070D8);
  }

  return result;
}

unint64_t sub_2142F1D3C()
{
  result = qword_27C9070E0;
  if (!qword_27C9070E0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DecodedKey, &type metadata for DecodedKey, v0, v1);
    atomic_store(result, &qword_27C9070E0);
  }

  return result;
}

unint64_t sub_2142F1D90()
{
  result = qword_27C9070F8;
  if (!qword_27C9070F8)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C9070D0, &qword_2146F48D8);
    v4[0] = sub_2142F1E14();
    result = swift_getWitnessTable(MEMORY[0x277D83948], v3, v4);
    atomic_store(result, &qword_27C9070F8);
  }

  return result;
}

unint64_t sub_2142F1E14()
{
  result = qword_27C907100;
  if (!qword_27C907100)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DecodedKey, &type metadata for DecodedKey, v0, v1);
    atomic_store(result, &qword_27C907100);
  }

  return result;
}

unint64_t sub_2142F1E68()
{
  result = qword_27C907110;
  if (!qword_27C907110)
  {
    result = swift_getWitnessTable(byte_21472ED24, &_s10CodingKeysON_495, v0, v1);
    atomic_store(result, &qword_27C907110);
  }

  return result;
}

unint64_t sub_2142F1EBC()
{
  result = qword_27C907120;
  if (!qword_27C907120)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C907118, &qword_2146F48F0);
    v4[0] = sub_214328930(&qword_27C907128, type metadata accessor for PeerTrustAckEnvelopeV1Payload, aI_93);
    result = swift_getWitnessTable(MEMORY[0x277D83978], v3, v4);
    atomic_store(result, &qword_27C907120);
  }

  return result;
}

unint64_t sub_2142F1F70()
{
  result = qword_27C907138;
  if (!qword_27C907138)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C907118, &qword_2146F48F0);
    v4[0] = sub_214328930(&qword_27C907140, type metadata accessor for PeerTrustAckEnvelopeV1Payload, byte_2146F9DE8);
    result = swift_getWitnessTable(MEMORY[0x277D83948], v3, v4);
    atomic_store(result, &qword_27C907138);
  }

  return result;
}

unint64_t sub_2142F2024()
{
  result = qword_27C907150;
  if (!qword_27C907150)
  {
    result = swift_getWitnessTable(aUwm, &_s10CodingKeysON_494, v0, v1);
    atomic_store(result, &qword_27C907150);
  }

  return result;
}

unint64_t sub_2142F2078()
{
  result = qword_27C907168;
  if (!qword_27C907168)
  {
    result = swift_getWitnessTable(byte_21472EC84, &_s10CodingKeysON_493, v0, v1);
    atomic_store(result, &qword_27C907168);
  }

  return result;
}

unint64_t sub_2142F20CC()
{
  result = qword_27C907170;
  if (!qword_27C907170)
  {
    result = swift_getWitnessTable(byte_2146F9E60, &type metadata for PeerTrustSharedSecret, v0, v1);
    atomic_store(result, &qword_27C907170);
  }

  return result;
}

unint64_t sub_2142F2120()
{
  result = qword_27C907180;
  if (!qword_27C907180)
  {
    result = swift_getWitnessTable(aQ_77, &type metadata for PeerTrustSharedSecret, v0, v1);
    atomic_store(result, &qword_27C907180);
  }

  return result;
}

unint64_t sub_2142F2174()
{
  result = qword_27C907190;
  if (!qword_27C907190)
  {
    result = swift_getWitnessTable(byte_21472EC34, &_s10CodingKeysON_492, v0, v1);
    atomic_store(result, &qword_27C907190);
  }

  return result;
}

unint64_t sub_2142F21C8()
{
  result = qword_27C907198;
  if (!qword_27C907198)
  {
    result = swift_getWitnessTable(aY_75, &type metadata for PeerTrustSharedSecretKey, v0, v1);
    atomic_store(result, &qword_27C907198);
  }

  return result;
}

unint64_t sub_2142F221C()
{
  result = qword_27C9071A8;
  if (!qword_27C9071A8)
  {
    result = swift_getWitnessTable(byte_2146F9ED8, &type metadata for PeerTrustSharedSecretKey, v0, v1);
    atomic_store(result, &qword_27C9071A8);
  }

  return result;
}

unint64_t sub_2142F2270()
{
  result = qword_27C9071B8;
  if (!qword_27C9071B8)
  {
    result = swift_getWitnessTable(aEkm, &_s10CodingKeysON_491, v0, v1);
    atomic_store(result, &qword_27C9071B8);
  }

  return result;
}

unint64_t sub_2142F2318()
{
  result = qword_27C9071D0;
  if (!qword_27C9071D0)
  {
    result = swift_getWitnessTable(byte_21472EB94, &_s10CodingKeysON_490, v0, v1);
    atomic_store(result, &qword_27C9071D0);
  }

  return result;
}

unint64_t sub_2142F23C8()
{
  result = qword_27C9071E8;
  if (!qword_27C9071E8)
  {
    result = swift_getWitnessTable(byte_21472EB44, &_s14descr282650921O10CodingKeysON, v0, v1);
    atomic_store(result, &qword_27C9071E8);
  }

  return result;
}

unint64_t sub_2142F241C()
{
  result = qword_27C907200;
  if (!qword_27C907200)
  {
    result = swift_getWitnessTable("5˰m<\v\b", &_s10CodingKeysON_489, v0, v1);
    atomic_store(result, &qword_27C907200);
  }

  return result;
}

unint64_t sub_2142F24C4()
{
  result = qword_27C907218;
  if (!qword_27C907218)
  {
    result = swift_getWitnessTable(byte_21472EAA4, &_s10CodingKeysON_488, v0, v1);
    atomic_store(result, &qword_27C907218);
  }

  return result;
}

unint64_t sub_2142F25C8()
{
  result = qword_27C907230;
  if (!qword_27C907230)
  {
    result = swift_getWitnessTable(byte_21472EA54, &_s10CodingKeysON_487, v0, v1);
    atomic_store(result, &qword_27C907230);
  }

  return result;
}

unint64_t sub_2142F261C()
{
  result = qword_27C907238;
  if (!qword_27C907238)
  {
    result = swift_getWitnessTable(byte_214751A84, &type metadata for GroupSessionParticipantUpdateType, v0, v1);
    atomic_store(result, &qword_27C907238);
  }

  return result;
}