unint64_t sub_2142A9300()
{
  v1 = *v0;
  v2 = 0x565F65676E616863;
  v3 = 0x5F6E6F69746E656DLL;
  v4 = 0xD000000000000011;
  if (v1 == 3)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD00000000000001BLL;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_2142A93B8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2143863BC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2142A93E0(uint64_t a1)
{
  v2 = sub_21431EE28();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142A941C(uint64_t a1)
{
  v2 = sub_21431EE28();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142A9464()
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2142A9550(uint64_t a1)
{
  sub_2146D9698();
}

uint64_t sub_2142A9628(uint64_t a1)
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

unint64_t sub_2142A9710@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2143865E0(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_2142A9740(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x64696C61766E69;
  v5 = 0xE700000000000000;
  v6 = 0x6E6F69746E656DLL;
  v7 = 0xEA00000000007069;
  v8 = 0x68737265626D656DLL;
  if (v2 != 3)
  {
    v8 = 0x6574736973726570;
    v7 = 0xEB0000000065636ELL;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x65676E616863;
    v3 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_2142A9898(void *a1)
{
  v35 = type metadata accessor for PersistenceEvent(0);
  MEMORY[0x28223BE20](v35);
  v37 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for MembershipEvent(0);
  MEMORY[0x28223BE20](v34);
  v36 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for MentionEvent(0);
  MEMORY[0x28223BE20](v38);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ChangeEvent(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CollaborationHighlightEvent(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C810, &qword_2146F6DA8);
  v13 = *(v12 - 8);
  v42 = v12;
  v43 = v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v33 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21431EE28();
  v41 = v15;
  sub_2146DAA28();
  sub_2143287C0(v39, v11, type metadata accessor for CollaborationHighlightEvent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_214328704(v11, v5, type metadata accessor for MentionEvent);
      v49 = 2;
      v48 = 0;
      sub_21431EE7C();
      v19 = v41;
      v20 = v42;
      v32 = v40;
      sub_2146DA388();
      if (!v32)
      {
        v47 = 2;
        sub_214328930(&qword_27C90C838, type metadata accessor for MentionEvent, protocol conformance descriptor for MentionEvent);
        sub_2146DA388();
      }

      v27 = type metadata accessor for MentionEvent;
      v28 = v5;
      goto LABEL_19;
    }

    v23 = v11;
    v18 = v8;
    sub_214328704(v23, v8, type metadata accessor for ChangeEvent);
    v46 = 1;
    v45 = 0;
    sub_21431EE7C();
    v19 = v41;
    v20 = v42;
    v24 = v40;
    sub_2146DA388();
    if (!v24)
    {
      v44 = 1;
      sub_214328930(&qword_27C90C840, type metadata accessor for ChangeEvent, protocol conformance descriptor for ChangeEvent);
      sub_2146DA388();
    }

    v22 = type metadata accessor for ChangeEvent;
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v25 = v11;
    v18 = v36;
    sub_214328704(v25, v36, type metadata accessor for MembershipEvent);
    v52 = 3;
    v51 = 0;
    sub_21431EE7C();
    v19 = v41;
    v20 = v42;
    v26 = v40;
    sub_2146DA388();
    if (!v26)
    {
      v50 = 3;
      sub_214328930(&qword_27C90C830, type metadata accessor for MembershipEvent, byte_2146F8BC8);
      sub_2146DA388();
    }

    v22 = type metadata accessor for MembershipEvent;
  }

  else
  {
    if (EnumCaseMultiPayload != 3)
    {
      v56 = 0;
      sub_21431EE7C();
      v30 = v41;
      v29 = v42;
      sub_2146DA388();
      return (*(v43 + 8))(v30, v29);
    }

    v17 = v11;
    v18 = v37;
    sub_214328704(v17, v37, type metadata accessor for PersistenceEvent);
    v55 = 4;
    v54 = 0;
    sub_21431EE7C();
    v19 = v41;
    v20 = v42;
    v21 = v40;
    sub_2146DA388();
    if (!v21)
    {
      v53 = 4;
      sub_214328930(&qword_27C90C828, type metadata accessor for PersistenceEvent, byte_2146F8C18);
      sub_2146DA388();
    }

    v22 = type metadata accessor for PersistenceEvent;
  }

  v27 = v22;
  v28 = v18;
LABEL_19:
  sub_21432887C(v28, v27);
  return (*(v43 + 8))(v19, v20);
}

uint64_t sub_2142A9F0C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v31 = type metadata accessor for PersistenceEvent(0);
  MEMORY[0x28223BE20](v31);
  v30 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for MembershipEvent(0);
  MEMORY[0x28223BE20](v29);
  v28 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for MentionEvent(0);
  MEMORY[0x28223BE20](v27);
  v33 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ChangeEvent(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C848, &qword_2146F6DB0);
  v32 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v25 - v10;
  v12 = type metadata accessor for CollaborationHighlightEvent(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v36 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_21431EE28();
  v16 = v35;
  sub_2146DAA08();
  if (!v16)
  {
    v25 = v6;
    v26 = v14;
    v18 = v32;
    v17 = v33;
    v35 = v12;
    v19 = v34;
    v41 = 0;
    sub_21431EED0();
    sub_2146DA1C8();
    if (v42 <= 1u)
    {
      if (v42)
      {
        v37 = 1;
        sub_214328930(&qword_27C90C870, type metadata accessor for ChangeEvent, protocol conformance descriptor for ChangeEvent);
        sub_2146DA1C8();
        (*(v18 + 8))(v11, v9);
        v22 = v26;
        sub_214328704(v8, v26, type metadata accessor for ChangeEvent);
      }

      else
      {
        (*(v18 + 8))(v11, v9);
        v22 = v26;
      }
    }

    else if (v42 == 2)
    {
      v38 = 2;
      sub_214328930(&qword_27C90C868, type metadata accessor for MentionEvent, protocol conformance descriptor for MentionEvent);
      sub_2146DA1C8();
      (*(v18 + 8))(v11, v9);
      v22 = v26;
      sub_214328704(v17, v26, type metadata accessor for MentionEvent);
    }

    else
    {
      v20 = v9;
      if (v42 == 3)
      {
        v39 = 3;
        sub_214328930(&qword_27C90C860, type metadata accessor for MembershipEvent, aI_51);
        v21 = v28;
        sub_2146DA1C8();
        (*(v18 + 8))(v11, v20);
        v22 = v26;
        sub_214328704(v21, v26, type metadata accessor for MembershipEvent);
      }

      else
      {
        v40 = 4;
        sub_214328930(&qword_27C90C858, type metadata accessor for PersistenceEvent, byte_2146F8BF0);
        v23 = v30;
        sub_2146DA1C8();
        (*(v18 + 8))(v11, v20);
        v22 = v26;
        sub_214328704(v23, v26, type metadata accessor for PersistenceEvent);
      }
    }

    swift_storeEnumTagMultiPayload();
    sub_214328704(v22, v19, type metadata accessor for CollaborationHighlightEvent);
  }

  return __swift_destroy_boxed_opaque_existential_1(v36);
}

unint64_t sub_2142AA574()
{
  v1 = *v0;
  v2 = 0x756C61565F706174;
  v3 = 0x6C61565F7373696BLL;
  if (v1 != 6)
  {
    v3 = 0x61565F7265676E61;
  }

  v4 = 0x7061746B63697571;
  if (v1 != 4)
  {
    v4 = 0x61565F6F65646976;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x565F656C646F6F64;
  if (v1 != 2)
  {
    v5 = 0x6165627472616568;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000013;
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

uint64_t sub_2142AA6AC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21438662C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2142AA6D4(uint64_t a1)
{
  v2 = sub_21431EF24();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142AA710(uint64_t a1)
{
  v2 = sub_21431EF24();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_2142AA774@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_214386950(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_2142AA7A4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 7364980;
  v5 = 0xE400000000000000;
  v6 = 1936943467;
  if (v2 != 6)
  {
    v6 = 0x7265676E61;
    v5 = 0xE500000000000000;
  }

  v7 = 0xEB00000000747069;
  v8 = 0x6563657264616572;
  if (v2 != 4)
  {
    v8 = 0x6F65646976;
    v7 = 0xE500000000000000;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE900000000000074;
  v10 = 0x6165627472616568;
  if (v2 != 2)
  {
    v10 = 0x7061746B63697571;
    v9 = 0xE800000000000000;
  }

  if (*v1)
  {
    v4 = 0x656C646F6F64;
    v3 = 0xE600000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
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

uint64_t sub_2142AA944(void *a1)
{
  v2 = v1;
  v45 = type metadata accessor for VideoMessage(0);
  MEMORY[0x28223BE20](v45);
  v46 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DigitalTouchMessage(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C878, &qword_2146F6DB8);
  v59 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v44 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21431EF24();
  sub_2146DAA28();
  sub_2143287C0(v2, v7, type metadata accessor for DigitalTouchMessage);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        v26 = *(v7 + 1);
        v53 = *v7;
        v54 = v26;
        *&v55 = *(v7 + 4);
        LOBYTE(v48) = 7;
        v58 = 0;
        sub_21431EF78();
        v27 = v47;
        sub_2146DA388();
        if (!v27)
        {
          v48 = v53;
          v49 = v54;
          *&v50 = v55;
          v58 = 7;
          sub_21431EFCC();
          sub_2146DA388();
        }

        (*(v59 + 8))(v10, v8);
        return sub_2142EE378(&v53);
      }

      else
      {
        LOBYTE(v53) = 4;
        LOBYTE(v48) = 0;
        sub_21431EF78();
        sub_2146DA388();
        return (*(v59 + 8))(v10, v8);
      }
    }

    else
    {
      v12 = v8;
      v13 = v10;
      if (EnumCaseMultiPayload != 4)
      {
        v34 = *v7;
        v35 = *(v7 + 1);
        v36 = *(v7 + 2);
        v37 = v7[24];
        LOBYTE(v53) = 6;
        LOBYTE(v48) = 0;
        sub_21431EF78();
        v38 = v47;
        sub_2146DA388();
        if (!v38)
        {
          *&v53 = v34;
          *(&v53 + 1) = v35;
          *&v54 = v36;
          BYTE8(v54) = v37;
          LOBYTE(v48) = 6;
          sub_21431F020();
          goto LABEL_23;
        }

        goto LABEL_24;
      }

      v19 = v46;
      sub_214328704(v7, v46, type metadata accessor for VideoMessage);
      LOBYTE(v53) = 5;
      LOBYTE(v48) = 0;
      sub_21431EF78();
      v20 = v47;
      sub_2146DA388();
      if (!v20)
      {
        LOBYTE(v53) = 5;
        sub_214328930(&qword_27C90C8A0, type metadata accessor for VideoMessage, protocol conformance descriptor for VideoMessage);
        sub_2146DA388();
      }

      sub_21432887C(v19, type metadata accessor for VideoMessage);
      return (*(v59 + 8))(v10, v8);
    }
  }

  else
  {
    if (EnumCaseMultiPayload <= 1)
    {
      v12 = v8;
      v13 = v10;
      if (EnumCaseMultiPayload)
      {
        v28 = *v7;
        v29 = *(v7 + 1);
        v30 = *(v7 + 2);
        v31 = v7[24];
        v32 = v7[25];
        LOBYTE(v53) = 1;
        LOBYTE(v48) = 0;
        sub_21431EF78();
        v33 = v47;
        sub_2146DA388();
        if (!v33)
        {
          *&v53 = v28;
          *(&v53 + 1) = v29;
          *&v54 = v30;
          BYTE8(v54) = v31;
          BYTE9(v54) = v32;
          LOBYTE(v48) = 2;
          sub_2142EE0CC();
          goto LABEL_23;
        }
      }

      else
      {
        v14 = *v7;
        v15 = *(v7 + 1);
        v16 = *(v7 + 2);
        v17 = v7[24];
        LOBYTE(v53) = 0;
        LOBYTE(v48) = 0;
        sub_21431EF78();
        v18 = v47;
        sub_2146DA388();
        if (!v18)
        {
          *&v53 = v14;
          *(&v53 + 1) = v15;
          *&v54 = v16;
          BYTE8(v54) = v17;
          LOBYTE(v48) = 1;
          sub_21431F074();
LABEL_23:
          sub_2146DA388();
        }
      }

LABEL_24:
      (*(v59 + 8))(v13, v12);
LABEL_28:
    }

    v22 = v10;
    if (EnumCaseMultiPayload != 2)
    {
      v39 = *v7;
      v40 = *(v7 + 1);
      v41 = *(v7 + 2);
      v42 = v7[24];
      LOBYTE(v53) = 3;
      LOBYTE(v48) = 0;
      sub_21431EF78();
      v43 = v47;
      sub_2146DA388();
      if (!v43)
      {
        *&v53 = v39;
        *(&v53 + 1) = v40;
        *&v54 = v41;
        BYTE8(v54) = v42;
        LOBYTE(v48) = 4;
        sub_21431F074();
        sub_2146DA388();
      }

      (*(v59 + 8))(v22, v8);
      goto LABEL_28;
    }

    v23 = *(v7 + 3);
    v55 = *(v7 + 2);
    v56 = v23;
    *v57 = *(v7 + 4);
    *&v57[14] = *(v7 + 78);
    v24 = *(v7 + 1);
    v53 = *v7;
    v54 = v24;
    LOBYTE(v48) = 2;
    v58 = 0;
    sub_21431EF78();
    v25 = v47;
    sub_2146DA388();
    if (!v25)
    {
      v50 = v55;
      v51 = v56;
      v52[0] = *v57;
      *(v52 + 14) = *&v57[14];
      v48 = v53;
      v49 = v54;
      v58 = 3;
      sub_21431F0C8();
      sub_2146DA388();
    }

    (*(v59 + 8))(v10, v8);
    return sub_2142EDB54(&v53);
  }
}

uint64_t sub_2142AB0B4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = type metadata accessor for VideoMessage(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C8B8, &qword_2146F6DC0);
  v32 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v30 - v7;
  v9 = type metadata accessor for DigitalTouchMessage(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v35 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_21431EF24();
  v13 = v34;
  sub_2146DAA08();
  if (!v13)
  {
    v34 = v9;
    v31 = v11;
    v14 = v32;
    v15 = v33;
    v41 = 0;
    sub_21431F11C();
    sub_2146DA1C8();
    if (v36 > 3u)
    {
      if (v36 > 5u)
      {
        if (v36 == 6)
        {
          v41 = 6;
          sub_21431F1C4();
          sub_2146DA1C8();
          (*(v14 + 8))(v8, v6);
          v21 = v37;
          v22 = BYTE8(v37);
          v18 = v31;
          *v31 = v36;
          *(v18 + 2) = v21;
          *(v18 + 24) = v22;
        }

        else
        {
          v41 = 7;
          sub_21431F170();
          sub_2146DA1C8();
          (*(v14 + 8))(v8, v6);
          v28 = v37;
          v18 = v31;
          *v31 = v36;
          v18[1] = v28;
          *(v18 + 4) = v38;
        }
      }

      else if (v36 == 4)
      {
        (*(v14 + 8))(v8, v6);
        v18 = v31;
      }

      else
      {
        LOBYTE(v36) = 5;
        sub_214328930(&qword_27C90C8D8, type metadata accessor for VideoMessage, protocol conformance descriptor for VideoMessage);
        sub_2146DA1C8();
        (*(v14 + 8))(v8, v6);
        v18 = v31;
        sub_214328704(v5, v31, type metadata accessor for VideoMessage);
      }
    }

    else if (v36 > 1u)
    {
      if (v36 == 2)
      {
        v41 = 3;
        sub_21431F26C();
        sub_2146DA1C8();
        (*(v14 + 8))(v8, v6);
        v19 = v39;
        v18 = v31;
        v31[2] = v38;
        v18[3] = v19;
        v18[4] = v40[0];
        *(v18 + 78) = *(v40 + 14);
        v20 = v37;
        *v18 = v36;
        v18[1] = v20;
      }

      else
      {
        v41 = 4;
        sub_21431F218();
        sub_2146DA1C8();
        (*(v14 + 8))(v8, v6);
        v26 = v37;
        v27 = BYTE8(v37);
        v18 = v31;
        *v31 = v36;
        *(v18 + 2) = v26;
        *(v18 + 24) = v27;
      }
    }

    else if (v36)
    {
      v41 = 2;
      sub_2142EE078();
      sub_2146DA1C8();
      (*(v14 + 8))(v8, v6);
      v23 = v37;
      v24 = BYTE8(v37);
      v25 = BYTE9(v37);
      v18 = v31;
      *v31 = v36;
      *(v18 + 2) = v23;
      *(v18 + 24) = v24;
      *(v18 + 25) = v25;
    }

    else
    {
      v41 = 1;
      sub_21431F218();
      sub_2146DA1C8();
      (*(v14 + 8))(v8, v6);
      v16 = v37;
      v17 = BYTE8(v37);
      v18 = v31;
      *v31 = v36;
      *(v18 + 2) = v16;
      *(v18 + 24) = v17;
    }

    swift_storeEnumTagMultiPayload();
    sub_214328704(v18, v15, type metadata accessor for DigitalTouchMessage);
  }

  return __swift_destroy_boxed_opaque_existential_1(v35);
}

unint64_t sub_2142AB734(char a1)
{
  result = 0xD000000000000014;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000023;
      break;
    case 2:
    case 5:
    case 21:
    case 24:
      result = 0xD00000000000001ALL;
      break;
    case 3:
    case 33:
      result = 0xD000000000000019;
      break;
    case 4:
    case 22:
      result = 0xD00000000000001ELL;
      break;
    case 6:
    case 23:
    case 28:
      result = 0xD000000000000014;
      break;
    case 7:
    case 12:
      result = 0xD000000000000015;
      break;
    case 8:
    case 10:
    case 17:
    case 31:
      result = 0xD000000000000016;
      break;
    case 9:
    case 13:
    case 14:
    case 16:
      result = 0xD000000000000018;
      break;
    case 11:
    case 29:
    case 30:
      result = 0xD000000000000017;
      break;
    case 15:
    case 26:
    case 27:
    case 32:
      result = 0xD000000000000013;
      break;
    case 18:
    case 19:
      result = 0xD00000000000001BLL;
      break;
    case 20:
      result = 0xD000000000000012;
      break;
    case 25:
      result = 0xD00000000000001DLL;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_2142AB9A0(char a1)
{
  result = 0x74656C6544666D66;
  switch(a1)
  {
    case 1:
    case 4:
    case 20:
    case 23:
      result = 0xD000000000000014;
      break;
    case 2:
    case 32:
      result = 0xD000000000000013;
      break;
    case 3:
    case 21:
      result = 0xD000000000000018;
      break;
    case 5:
      return result;
    case 6:
      result = 0x65636E6546666D66;
      break;
    case 7:
      result = 0xD000000000000010;
      break;
    case 8:
    case 12:
    case 13:
    case 15:
      result = 0xD000000000000012;
      break;
    case 9:
      result = 0xD000000000000010;
      break;
    case 10:
    case 28:
    case 29:
      result = 0xD000000000000011;
      break;
    case 11:
      result = 0x73655370756F7267;
      break;
    case 14:
      result = 0x416563694E736469;
      break;
    case 16:
      result = 0xD000000000000010;
      break;
    case 17:
    case 18:
      v3 = 5;
      goto LABEL_15;
    case 19:
      result = 0x50646E41656D616ELL;
      break;
    case 22:
      result = 0x4D74726F70706172;
      break;
    case 24:
      result = 0xD000000000000017;
      break;
    case 25:
      result = 0x416E6F6973736573;
      break;
    case 26:
      result = 0x436E6F6973736573;
      break;
    case 27:
      result = 0x446E6F6973736573;
      break;
    case 30:
      result = 0xD000000000000010;
      break;
    case 31:
      result = 0x5445646572616873;
      break;
    default:
      v3 = 13;
LABEL_15:
      result = v3 | 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t sub_2142ABD38@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21438699C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2142ABD60(uint64_t a1)
{
  v2 = sub_21431F2C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142ABD9C(uint64_t a1)
{
  v2 = sub_21431F2C0();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_2142ABE38@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_21438742C(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_2142ABE68@<X0>(unint64_t *a1@<X8>)
{
  result = sub_2142AB9A0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2142ABF44(uint64_t a1)
{
  v161 = v2;
  v168 = v1;
  v3 = MEMORY[0x28223BE20](a1);
  v155 = type metadata accessor for PhotosSharedAlbumMessage(0);
  MEMORY[0x28223BE20](v155);
  v160 = &v151 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = type metadata accessor for IDSNearbySessionMessage(0);
  MEMORY[0x28223BE20](v154);
  v159 = &v151 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = type metadata accessor for IDSSampleMessage(0);
  MEMORY[0x28223BE20](v153);
  v158 = &v151 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = type metadata accessor for IDSProtobuf(0);
  MEMORY[0x28223BE20](v152);
  v157 = &v151 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = type metadata accessor for FMFShareInvitation(0);
  MEMORY[0x28223BE20](v151);
  v156 = &v151 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AccountsRepresentativeMessage(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v151 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for IDSClientMessageType(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v151 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C8F0, &qword_2146F6DC8);
  v16 = *(v15 - 8);
  v163 = v15;
  v164 = v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v151 - v17;
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_21431F2C0();
  v162 = v18;
  sub_2146DAA28();
  sub_2143287C0(v168, v14, type metadata accessor for IDSClientMessageType);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v70 = *v14;
      v166[0] = 1;
      LOBYTE(v165[0]) = 0;
      sub_21431F314();
      v31 = v162;
      v32 = v163;
      v71 = v161;
      sub_2146DA388();
      if (v71)
      {
        goto LABEL_77;
      }

      v166[0] = v70;
      LOBYTE(v165[0]) = 2;
      sub_21407D9F4();
      goto LABEL_76;
    case 2u:
      memcpy(v166, v14, 0x6F3uLL);
      LOBYTE(v165[0]) = 2;
      v167 = 0;
      sub_21431F314();
      v58 = v162;
      v59 = v163;
      v60 = v161;
      sub_2146DA388();
      if (!v60)
      {
        memcpy(v165, v166, 0x6F3uLL);
        v167 = 3;
        sub_2142E8B6C();
        sub_2146DA388();
      }

      (*(v164 + 8))(v58, v59);
      return sub_2142E77C8(v166);
    case 3u:
      memcpy(v166, v14, 0x1D2uLL);
      LOBYTE(v165[0]) = 3;
      v167 = 0;
      sub_21431F314();
      v62 = v162;
      v63 = v163;
      v64 = v161;
      sub_2146DA388();
      if (!v64)
      {
        memcpy(v165, v166, 0x1D2uLL);
        v167 = 4;
        sub_21431FAF4();
        sub_2146DA388();
      }

      (*(v164 + 8))(v62, v63);
      return sub_2142F0B5C(v166);
    case 4u:
      v37 = *v14;
      v166[0] = 4;
      LOBYTE(v165[0]) = 0;
      sub_21431F314();
      v31 = v162;
      v32 = v163;
      v38 = v161;
      sub_2146DA388();
      if (v38)
      {
        goto LABEL_77;
      }

      *v166 = v37;
      LOBYTE(v165[0]) = 5;
      sub_21431FAA0();
      goto LABEL_76;
    case 5u:
      v83 = *(v14 + 3);
      *&v166[32] = *(v14 + 2);
      *&v166[48] = v83;
      v84 = *(v14 + 5);
      *&v166[64] = *(v14 + 4);
      *&v166[80] = v84;
      v85 = *(v14 + 1);
      *v166 = *v14;
      *&v166[16] = v85;
      LOBYTE(v165[0]) = 5;
      v167 = 0;
      sub_21431F314();
      v86 = v162;
      v87 = v163;
      v88 = v161;
      sub_2146DA388();
      if (!v88)
      {
        v165[2] = *&v166[32];
        v165[3] = *&v166[48];
        v165[4] = *&v166[64];
        v165[5] = *&v166[80];
        v165[0] = *v166;
        v165[1] = *&v166[16];
        v167 = 6;
        sub_21431FA4C();
        sub_2146DA388();
      }

      (*(v164 + 8))(v86, v87);
      return sub_2142EEE64(v166);
    case 6u:
      v97 = *(v14 + 9);
      *&v166[128] = *(v14 + 8);
      *&v166[144] = v97;
      v98 = *(v14 + 11);
      *&v166[160] = *(v14 + 10);
      *&v166[176] = v98;
      v99 = *(v14 + 5);
      *&v166[64] = *(v14 + 4);
      *&v166[80] = v99;
      v100 = *(v14 + 7);
      *&v166[96] = *(v14 + 6);
      *&v166[112] = v100;
      v101 = *(v14 + 1);
      *v166 = *v14;
      *&v166[16] = v101;
      v102 = *(v14 + 3);
      *&v166[32] = *(v14 + 2);
      *&v166[48] = v102;
      LOBYTE(v165[0]) = 6;
      v167 = 0;
      sub_21431F314();
      v103 = v162;
      v104 = v163;
      v105 = v161;
      sub_2146DA388();
      if (!v105)
      {
        v165[8] = *&v166[128];
        v165[9] = *&v166[144];
        v165[10] = *&v166[160];
        v165[11] = *&v166[176];
        v165[4] = *&v166[64];
        v165[5] = *&v166[80];
        v165[6] = *&v166[96];
        v165[7] = *&v166[112];
        v165[0] = *v166;
        v165[1] = *&v166[16];
        v165[2] = *&v166[32];
        v165[3] = *&v166[48];
        v167 = 7;
        sub_21431F9F8();
        sub_2146DA388();
      }

      (*(v164 + 8))(v103, v104);
      return sub_2142EEF68(v166);
    case 7u:
      v65 = *(v14 + 3);
      *&v166[32] = *(v14 + 2);
      *&v166[48] = v65;
      *&v166[64] = *(v14 + 4);
      *&v166[73] = *(v14 + 73);
      v66 = *(v14 + 1);
      *v166 = *v14;
      *&v166[16] = v66;
      LOBYTE(v165[0]) = 7;
      v167 = 0;
      sub_21431F314();
      v67 = v162;
      v68 = v163;
      v69 = v161;
      sub_2146DA388();
      if (!v69)
      {
        v165[2] = *&v166[32];
        v165[3] = *&v166[48];
        v165[4] = *&v166[64];
        *(&v165[4] + 9) = *&v166[73];
        v165[0] = *v166;
        v165[1] = *&v166[16];
        v167 = 8;
        sub_21431F9A4();
        sub_2146DA388();
      }

      (*(v164 + 8))(v67, v68);
      return sub_2142EF114(v166);
    case 8u:
      v11 = v156;
      sub_214328704(v14, v156, type metadata accessor for FMFShareInvitation);
      v166[0] = 8;
      LOBYTE(v165[0]) = 0;
      sub_21431F314();
      v19 = v162;
      v20 = v163;
      v116 = v161;
      sub_2146DA388();
      if (!v116)
      {
        v166[0] = 9;
        sub_214328930(&qword_27C90C9A8, type metadata accessor for FMFShareInvitation, asc_2146F96B8);
        sub_2146DA388();
      }

      v22 = type metadata accessor for FMFShareInvitation;
      goto LABEL_73;
    case 9u:
      memcpy(v166, v14, sizeof(v166));
      LOBYTE(v165[0]) = 9;
      v167 = 0;
      sub_21431F314();
      v42 = v162;
      v43 = v163;
      v44 = v161;
      sub_2146DA388();
      if (!v44)
      {
        memcpy(v165, v166, 0xCF3uLL);
        v167 = 10;
        sub_21431F950();
        sub_2146DA388();
      }

      (*(v164 + 8))(v42, v43);
      return sub_2142F2574(v166);
    case 0xAu:
      v108 = *(v14 + 9);
      *&v166[128] = *(v14 + 8);
      *&v166[144] = v108;
      *&v166[155] = *(v14 + 155);
      v109 = *(v14 + 5);
      *&v166[64] = *(v14 + 4);
      *&v166[80] = v109;
      v110 = *(v14 + 6);
      *&v166[112] = *(v14 + 7);
      *&v166[96] = v110;
      v111 = *(v14 + 1);
      *v166 = *v14;
      *&v166[16] = v111;
      v112 = *(v14 + 2);
      *&v166[48] = *(v14 + 3);
      *&v166[32] = v112;
      LOBYTE(v165[0]) = 10;
      v167 = 0;
      sub_21431F314();
      v113 = v162;
      v114 = v163;
      v115 = v161;
      sub_2146DA388();
      if (!v115)
      {
        v165[8] = *&v166[128];
        v165[9] = *&v166[144];
        *(&v165[9] + 11) = *&v166[155];
        v165[4] = *&v166[64];
        v165[5] = *&v166[80];
        v165[6] = *&v166[96];
        v165[7] = *&v166[112];
        v165[0] = *v166;
        v165[1] = *&v166[16];
        v165[2] = *&v166[32];
        v165[3] = *&v166[48];
        v167 = 11;
        sub_21431F8FC();
        sub_2146DA388();
      }

      (*(v164 + 8))(v113, v114);
      return sub_2142F2C90(v166);
    case 0xBu:
      memcpy(v166, v14, 0x19BuLL);
      LOBYTE(v165[0]) = 11;
      v167 = 0;
      sub_21431F314();
      v34 = v162;
      v35 = v163;
      v36 = v161;
      sub_2146DA388();
      if (!v36)
      {
        memcpy(v165, v166, 0x19BuLL);
        v167 = 12;
        sub_21431F8A8();
        sub_2146DA388();
      }

      (*(v164 + 8))(v34, v35);
      return sub_2142F31E8(v166);
    case 0xCu:
      memcpy(v166, v14, 0xC89uLL);
      LOBYTE(v165[0]) = 12;
      v167 = 0;
      sub_21431F314();
      v39 = v162;
      v40 = v163;
      v41 = v161;
      sub_2146DA388();
      if (!v41)
      {
        memcpy(v165, v166, 0xC89uLL);
        v167 = 13;
        sub_21431F854();
        sub_2146DA388();
      }

      (*(v164 + 8))(v39, v40);
      return sub_2142F37B0(v166);
    case 0xDu:
      v90 = *(v14 + 7);
      *&v166[96] = *(v14 + 6);
      *&v166[112] = v90;
      *&v166[128] = *(v14 + 8);
      v166[144] = v14[144];
      v91 = *(v14 + 3);
      *&v166[32] = *(v14 + 2);
      *&v166[48] = v91;
      v92 = *(v14 + 5);
      *&v166[64] = *(v14 + 4);
      *&v166[80] = v92;
      v93 = *(v14 + 1);
      *v166 = *v14;
      *&v166[16] = v93;
      LOBYTE(v165[0]) = 13;
      v167 = 0;
      sub_21431F314();
      v94 = v162;
      v95 = v163;
      v96 = v161;
      sub_2146DA388();
      if (!v96)
      {
        v165[6] = *&v166[96];
        v165[7] = *&v166[112];
        v165[8] = *&v166[128];
        LOBYTE(v165[9]) = v166[144];
        v165[2] = *&v166[32];
        v165[3] = *&v166[48];
        v165[4] = *&v166[64];
        v165[5] = *&v166[80];
        v165[0] = *v166;
        v165[1] = *&v166[16];
        v167 = 14;
        sub_21431F800();
        sub_2146DA388();
      }

      (*(v164 + 8))(v94, v95);
      return sub_2142F36AC(v166);
    case 0xEu:
      v166[0] = 14;
      LOBYTE(v165[0]) = 0;
      sub_21431F314();
      v31 = v162;
      v32 = v163;
      v33 = v161;
      sub_2146DA388();
      if (!v33)
      {
        v166[0] = 15;
        sub_2146DA368();
      }

      goto LABEL_77;
    case 0xFu:
      v11 = v157;
      sub_214328704(v14, v157, type metadata accessor for IDSProtobuf);
      v166[0] = 15;
      LOBYTE(v165[0]) = 0;
      sub_21431F314();
      v19 = v162;
      v20 = v163;
      v61 = v161;
      sub_2146DA388();
      if (!v61)
      {
        v166[0] = 16;
        sub_214328930(&qword_27C90C978, type metadata accessor for IDSProtobuf, protocol conformance descriptor for IDSProtobuf);
        sub_2146DA388();
      }

      v22 = type metadata accessor for IDSProtobuf;
      goto LABEL_73;
    case 0x10u:
      v11 = v158;
      sub_214328704(v14, v158, type metadata accessor for IDSSampleMessage);
      v166[0] = 16;
      LOBYTE(v165[0]) = 0;
      sub_21431F314();
      v19 = v162;
      v20 = v163;
      v30 = v161;
      sub_2146DA388();
      if (!v30)
      {
        v166[0] = 17;
        sub_214328930(&qword_27C90C970, type metadata accessor for IDSSampleMessage, byte_2146FA6F8);
        sub_2146DA388();
      }

      v22 = type metadata accessor for IDSSampleMessage;
      goto LABEL_73;
    case 0x11u:
      memcpy(v166, v14, 0x679uLL);
      LOBYTE(v165[0]) = 17;
      v167 = 0;
      sub_21431F314();
      v79 = v162;
      v80 = v163;
      v81 = v161;
      sub_2146DA388();
      if (!v81)
      {
        memcpy(v165, v166, 0x679uLL);
        v167 = 18;
        sub_21431F7AC();
        sub_2146DA388();
      }

      (*(v164 + 8))(v79, v80);
      return sub_21431F758(v166);
    case 0x12u:
      v106 = *v14;
      v166[0] = 18;
      LOBYTE(v165[0]) = 0;
      sub_21431F314();
      v31 = v162;
      v32 = v163;
      v107 = v161;
      sub_2146DA388();
      if (v107)
      {
        goto LABEL_77;
      }

      v166[0] = v106;
      LOBYTE(v165[0]) = 19;
      sub_214052838();
      goto LABEL_76;
    case 0x13u:
      memcpy(v166, v14, 0x261uLL);
      LOBYTE(v165[0]) = 19;
      v167 = 0;
      sub_21431F314();
      v125 = v162;
      v126 = v163;
      v127 = v161;
      sub_2146DA388();
      if (!v127)
      {
        memcpy(v165, v166, 0x261uLL);
        v167 = 20;
        sub_21431F704();
        sub_2146DA388();
      }

      (*(v164 + 8))(v125, v126);
      return sub_21431F6B0(v166);
    case 0x14u:
      v11 = v159;
      sub_214328704(v14, v159, type metadata accessor for IDSNearbySessionMessage);
      v166[0] = 20;
      LOBYTE(v165[0]) = 0;
      sub_21431F314();
      v19 = v162;
      v20 = v163;
      v82 = v161;
      sub_2146DA388();
      if (!v82)
      {
        v166[0] = 21;
        sub_214328930(&qword_27C90C958, type metadata accessor for IDSNearbySessionMessage, byte_2146FB328);
        sub_2146DA388();
      }

      v22 = type metadata accessor for IDSNearbySessionMessage;
      goto LABEL_73;
    case 0x15u:
      v11 = v160;
      sub_214328704(v14, v160, type metadata accessor for PhotosSharedAlbumMessage);
      v166[0] = 21;
      LOBYTE(v165[0]) = 0;
      sub_21431F314();
      v19 = v162;
      v20 = v163;
      v89 = v161;
      sub_2146DA388();
      if (!v89)
      {
        v166[0] = 22;
        sub_214328930(&qword_27C90C950, type metadata accessor for PhotosSharedAlbumMessage, byte_2146FB648);
        sub_2146DA388();
      }

      v22 = type metadata accessor for PhotosSharedAlbumMessage;
      goto LABEL_73;
    case 0x16u:
      memcpy(v166, v14, 0x179uLL);
      LOBYTE(v165[0]) = 22;
      v167 = 0;
      sub_21431F314();
      v122 = v162;
      v123 = v163;
      v124 = v161;
      sub_2146DA388();
      if (!v124)
      {
        memcpy(v165, v166, 0x179uLL);
        v167 = 23;
        sub_21431F65C();
        sub_2146DA388();
      }

      (*(v164 + 8))(v122, v123);
      return sub_21431F608(v166);
    case 0x17u:
      memcpy(v166, v14, 0x219uLL);
      LOBYTE(v165[0]) = 23;
      v167 = 0;
      sub_21431F314();
      v128 = v162;
      v129 = v163;
      v130 = v161;
      sub_2146DA388();
      if (!v130)
      {
        memcpy(v165, v166, 0x219uLL);
        v167 = 24;
        sub_214058DF4();
        sub_2146DA388();
      }

      (*(v164 + 8))(v128, v129);
      return sub_214300F50(v166);
    case 0x18u:
      memcpy(v166, v14, 0x151uLL);
      LOBYTE(v165[0]) = 24;
      v167 = 0;
      sub_21431F314();
      v55 = v162;
      v56 = v163;
      v57 = v161;
      sub_2146DA388();
      if (!v57)
      {
        memcpy(v165, v166, 0x151uLL);
        v167 = 25;
        sub_21431F5B4();
        sub_2146DA388();
      }

      (*(v164 + 8))(v55, v56);
      return sub_21404C67C(v166);
    case 0x19u:
      v45 = *(v14 + 13);
      *&v166[192] = *(v14 + 12);
      *&v166[208] = v45;
      *&v166[218] = *(v14 + 218);
      v46 = *(v14 + 9);
      *&v166[128] = *(v14 + 8);
      *&v166[144] = v46;
      v47 = *(v14 + 10);
      *&v166[176] = *(v14 + 11);
      *&v166[160] = v47;
      v48 = *(v14 + 5);
      *&v166[64] = *(v14 + 4);
      *&v166[80] = v48;
      v49 = *(v14 + 6);
      *&v166[112] = *(v14 + 7);
      *&v166[96] = v49;
      v50 = *(v14 + 1);
      *v166 = *v14;
      *&v166[16] = v50;
      v51 = *(v14 + 2);
      *&v166[48] = *(v14 + 3);
      *&v166[32] = v51;
      LOBYTE(v165[0]) = 25;
      v167 = 0;
      sub_21431F314();
      v52 = v162;
      v53 = v163;
      v54 = v161;
      sub_2146DA388();
      if (!v54)
      {
        v165[12] = *&v166[192];
        v165[13] = *&v166[208];
        *(&v165[13] + 10) = *&v166[218];
        v165[8] = *&v166[128];
        v165[9] = *&v166[144];
        v165[10] = *&v166[160];
        v165[11] = *&v166[176];
        v165[4] = *&v166[64];
        v165[5] = *&v166[80];
        v165[6] = *&v166[96];
        v165[7] = *&v166[112];
        v165[0] = *v166;
        v165[1] = *&v166[16];
        v165[2] = *&v166[32];
        v165[3] = *&v166[48];
        v167 = 26;
        sub_21431F560();
        sub_2146DA388();
      }

      (*(v164 + 8))(v52, v53);
      return sub_2142F6960(v166);
    case 0x1Au:
      v145 = *(v14 + 5);
      *&v166[64] = *(v14 + 4);
      *&v166[80] = v145;
      *&v166[96] = *(v14 + 12);
      v146 = *(v14 + 1);
      *v166 = *v14;
      *&v166[16] = v146;
      v147 = *(v14 + 2);
      *&v166[48] = *(v14 + 3);
      *&v166[32] = v147;
      LOBYTE(v165[0]) = 26;
      v167 = 0;
      sub_21431F314();
      v148 = v162;
      v149 = v163;
      v150 = v161;
      sub_2146DA388();
      if (!v150)
      {
        v165[4] = *&v166[64];
        v165[5] = *&v166[80];
        *&v165[6] = *&v166[96];
        v165[0] = *v166;
        v165[1] = *&v166[16];
        v165[2] = *&v166[32];
        v165[3] = *&v166[48];
        v167 = 27;
        sub_21431F50C();
        sub_2146DA388();
      }

      (*(v164 + 8))(v148, v149);
      return sub_2142F6A64(v166);
    case 0x1Bu:
      v23 = *(v14 + 5);
      *&v166[64] = *(v14 + 4);
      *&v166[80] = v23;
      *&v166[96] = *(v14 + 12);
      v24 = *(v14 + 1);
      *v166 = *v14;
      *&v166[16] = v24;
      v25 = *(v14 + 2);
      *&v166[48] = *(v14 + 3);
      *&v166[32] = v25;
      LOBYTE(v165[0]) = 27;
      v167 = 0;
      sub_21431F314();
      v26 = v162;
      v27 = v163;
      v28 = v161;
      sub_2146DA388();
      if (!v28)
      {
        v165[4] = *&v166[64];
        v165[5] = *&v166[80];
        *&v165[6] = *&v166[96];
        v165[0] = *v166;
        v165[1] = *&v166[16];
        v165[2] = *&v166[32];
        v165[3] = *&v166[48];
        v167 = 28;
        sub_21431F4B8();
        sub_2146DA388();
      }

      (*(v164 + 8))(v26, v27);
      return sub_2142F6D18(v166);
    case 0x1Cu:
      v131 = *(v14 + 11);
      *&v166[160] = *(v14 + 10);
      *&v166[176] = v131;
      *&v166[191] = *(v14 + 191);
      v132 = *(v14 + 7);
      *&v166[96] = *(v14 + 6);
      *&v166[112] = v132;
      v133 = *(v14 + 8);
      *&v166[144] = *(v14 + 9);
      *&v166[128] = v133;
      v134 = *(v14 + 3);
      *&v166[32] = *(v14 + 2);
      *&v166[48] = v134;
      v135 = *(v14 + 4);
      *&v166[80] = *(v14 + 5);
      *&v166[64] = v135;
      v136 = *v14;
      *&v166[16] = *(v14 + 1);
      *v166 = v136;
      LOBYTE(v165[0]) = 28;
      v167 = 0;
      sub_21431F314();
      v137 = v162;
      v138 = v163;
      v139 = v161;
      sub_2146DA388();
      if (!v139)
      {
        v165[10] = *&v166[160];
        v165[11] = *&v166[176];
        *(&v165[11] + 15) = *&v166[191];
        v165[6] = *&v166[96];
        v165[7] = *&v166[112];
        v165[8] = *&v166[128];
        v165[9] = *&v166[144];
        v165[2] = *&v166[32];
        v165[3] = *&v166[48];
        v165[4] = *&v166[64];
        v165[5] = *&v166[80];
        v165[0] = *v166;
        v165[1] = *&v166[16];
        v167 = 29;
        sub_21431F464();
        sub_2146DA388();
      }

      (*(v164 + 8))(v137, v138);
      return sub_2142F6E1C(v166);
    case 0x1Du:
      v140 = *(v14 + 3);
      *&v166[32] = *(v14 + 2);
      *&v166[48] = v140;
      *&v166[64] = *(v14 + 4);
      *&v166[80] = *(v14 + 40);
      v141 = *(v14 + 1);
      *v166 = *v14;
      *&v166[16] = v141;
      LOBYTE(v165[0]) = 29;
      v167 = 0;
      sub_21431F314();
      v142 = v162;
      v143 = v163;
      v144 = v161;
      sub_2146DA388();
      if (!v144)
      {
        v165[2] = *&v166[32];
        v165[3] = *&v166[48];
        v165[4] = *&v166[64];
        LOWORD(v165[5]) = *&v166[80];
        v165[0] = *v166;
        v165[1] = *&v166[16];
        v167 = 30;
        sub_21406B0F8();
        sub_2146DA388();
      }

      (*(v164 + 8))(v142, v143);
      return sub_2142F6FC8(v166);
    case 0x1Eu:
      v117 = *v14;
      v166[0] = 30;
      LOBYTE(v165[0]) = 0;
      sub_21431F314();
      v31 = v162;
      v32 = v163;
      v118 = v161;
      sub_2146DA388();
      if (v118)
      {
        goto LABEL_77;
      }

      v166[0] = v117;
      LOBYTE(v165[0]) = 31;
      sub_21431F410();
LABEL_76:
      sub_2146DA388();
LABEL_77:
      result = (*(v164 + 8))(v31, v32);
      break;
    case 0x1Fu:
      v72 = *(v14 + 7);
      *&v166[96] = *(v14 + 6);
      *&v166[112] = v72;
      v166[128] = v14[128];
      v73 = *(v14 + 3);
      *&v166[32] = *(v14 + 2);
      *&v166[48] = v73;
      v74 = *(v14 + 4);
      *&v166[80] = *(v14 + 5);
      *&v166[64] = v74;
      v75 = *v14;
      *&v166[16] = *(v14 + 1);
      *v166 = v75;
      LOBYTE(v165[0]) = 31;
      v167 = 0;
      sub_21431F314();
      v76 = v162;
      v77 = v163;
      v78 = v161;
      sub_2146DA388();
      if (!v78)
      {
        v165[6] = *&v166[96];
        v165[7] = *&v166[112];
        LOBYTE(v165[8]) = v166[128];
        v165[2] = *&v166[32];
        v165[3] = *&v166[48];
        v165[4] = *&v166[64];
        v165[5] = *&v166[80];
        v165[0] = *v166;
        v165[1] = *&v166[16];
        v167 = 32;
        sub_21431F3BC();
        sub_2146DA388();
      }

      (*(v164 + 8))(v76, v77);
      return sub_214301940(v166);
    case 0x20u:
      memcpy(v166, v14, 0x1A1uLL);
      LOBYTE(v165[0]) = 32;
      v167 = 0;
      sub_21431F314();
      v119 = v162;
      v120 = v163;
      v121 = v161;
      sub_2146DA388();
      if (!v121)
      {
        memcpy(v165, v166, 0x1A1uLL);
        v167 = 33;
        sub_21431F368();
        sub_2146DA388();
      }

      (*(v164 + 8))(v119, v120);
      return sub_214301A44(v166);
    default:
      sub_214328704(v14, v11, type metadata accessor for AccountsRepresentativeMessage);
      v166[0] = 0;
      LOBYTE(v165[0]) = 0;
      sub_21431F314();
      v19 = v162;
      v20 = v163;
      v21 = v161;
      sub_2146DA388();
      if (!v21)
      {
        v166[0] = 1;
        sub_214328930(&qword_27C9052D0, type metadata accessor for AccountsRepresentativeMessage, a1_26);
        sub_2146DA388();
      }

      v22 = type metadata accessor for AccountsRepresentativeMessage;
LABEL_73:
      sub_21432887C(v11, v22);
      result = (*(v164 + 8))(v19, v20);
      break;
  }

  return result;
}

uint64_t sub_2142ADD5C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v122 = a2;
  v118 = type metadata accessor for PhotosSharedAlbumMessage(0);
  MEMORY[0x28223BE20](v118);
  v121 = &v109 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = type metadata accessor for IDSNearbySessionMessage(0);
  MEMORY[0x28223BE20](v117);
  v120 = &v109 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = type metadata accessor for IDSSampleMessage(0);
  MEMORY[0x28223BE20](v115);
  v116 = &v109 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = type metadata accessor for IDSProtobuf(0);
  MEMORY[0x28223BE20](v114);
  v119 = &v109 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = type metadata accessor for FMFShareInvitation(0);
  MEMORY[0x28223BE20](v112);
  v113 = &v109 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = type metadata accessor for AccountsRepresentativeMessage(0);
  MEMORY[0x28223BE20](v111);
  v9 = &v109 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90C9D8, &qword_2146F6DD0);
  v123 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v109 - v11;
  v13 = type metadata accessor for IDSClientMessageType(0);
  MEMORY[0x28223BE20](v13);
  v15 = (&v109 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = a1[3];
  v127 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_21431F2C0();
  v17 = v124;
  sub_2146DAA08();
  if (v17)
  {
    v18 = v127;
    return __swift_destroy_boxed_opaque_existential_1(v18);
  }

  else
  {
    v110 = v9;
    v19 = v119;
    v20 = v120;
    v124 = v15;
    v22 = v121;
    v21 = v122;
    v126 = 0;
    sub_21431FB48();
    sub_2146DA1C8();
    v109 = 0;
    switch(v125[0])
    {
      case 1:
        v126 = 2;
        sub_21407D9A0();
        v55 = v109;
        sub_2146DA1C8();
        if (v55)
        {
          goto LABEL_42;
        }

        goto LABEL_32;
      case 2:
        v126 = 3;
        sub_2142E8A38();
        v48 = v109;
        sub_2146DA1C8();
        v29 = (v123 + 8);
        if (v48)
        {
          goto LABEL_68;
        }

        v27 = v21;
        (*v29)(v12, v10);
        v25 = v124;
        memcpy(v124, v125, 0x6F3uLL);
        goto LABEL_75;
      case 3:
        v126 = 4;
        sub_21432022C();
        v51 = v109;
        sub_2146DA1C8();
        v29 = (v123 + 8);
        if (v51)
        {
          goto LABEL_68;
        }

        v27 = v21;
        (*v29)(v12, v10);
        v25 = v124;
        memcpy(v124, v125, 0x1D2uLL);
        goto LABEL_75;
      case 4:
        v126 = 5;
        sub_2143201D8();
        v34 = v109;
        sub_2146DA1C8();
        if (v34)
        {
          goto LABEL_42;
        }

        v27 = v21;
        (*(v123 + 8))(v12, v10);
        v25 = v124;
        *v124 = *v125;
        goto LABEL_75;
      case 5:
        v126 = 6;
        sub_214320184();
        v63 = v109;
        sub_2146DA1C8();
        v29 = (v123 + 8);
        if (v63)
        {
          goto LABEL_68;
        }

        v27 = v21;
        (*v29)(v12, v10);
        v64 = *&v125[48];
        v25 = v124;
        *(v124 + 2) = *&v125[32];
        *(v25 + 3) = v64;
        v65 = *&v125[80];
        *(v25 + 4) = *&v125[64];
        *(v25 + 5) = v65;
        v66 = *&v125[16];
        *v25 = *v125;
        *(v25 + 1) = v66;
        goto LABEL_75;
      case 6:
        v126 = 7;
        sub_214320130();
        v73 = v109;
        sub_2146DA1C8();
        v29 = (v123 + 8);
        if (v73)
        {
          goto LABEL_68;
        }

        v27 = v21;
        (*v29)(v12, v10);
        v74 = *&v125[144];
        v25 = v124;
        *(v124 + 8) = *&v125[128];
        *(v25 + 9) = v74;
        v75 = *&v125[176];
        *(v25 + 10) = *&v125[160];
        *(v25 + 11) = v75;
        v76 = *&v125[80];
        *(v25 + 4) = *&v125[64];
        *(v25 + 5) = v76;
        v77 = *&v125[112];
        *(v25 + 6) = *&v125[96];
        *(v25 + 7) = v77;
        v78 = *&v125[16];
        *v25 = *v125;
        *(v25 + 1) = v78;
        v79 = *&v125[48];
        *(v25 + 2) = *&v125[32];
        *(v25 + 3) = v79;
        goto LABEL_75;
      case 7:
        v126 = 8;
        sub_2143200DC();
        v52 = v109;
        sub_2146DA1C8();
        v29 = (v123 + 8);
        if (v52)
        {
          goto LABEL_68;
        }

        v27 = v21;
        (*v29)(v12, v10);
        v53 = *&v125[48];
        v25 = v124;
        *(v124 + 2) = *&v125[32];
        *(v25 + 3) = v53;
        *(v25 + 4) = *&v125[64];
        *(v25 + 73) = *&v125[73];
        v54 = *&v125[16];
        *v25 = *v125;
        *(v25 + 1) = v54;
        goto LABEL_75;
      case 8:
        v125[0] = 9;
        sub_214328930(&qword_27C90CA88, type metadata accessor for FMFShareInvitation, aY_93);
        v87 = v113;
        v88 = v109;
        sub_2146DA1C8();
        if (v88)
        {
          goto LABEL_42;
        }

        v27 = v21;
        (*(v123 + 8))(v12, v10);
        v25 = v124;
        sub_214328704(v87, v124, type metadata accessor for FMFShareInvitation);
        goto LABEL_75;
      case 9:
        v126 = 10;
        sub_214320088();
        v36 = v109;
        sub_2146DA1C8();
        v29 = (v123 + 8);
        if (v36)
        {
          goto LABEL_68;
        }

        v27 = v21;
        (*v29)(v12, v10);
        v25 = v124;
        memcpy(v124, v125, 0xCF3uLL);
        goto LABEL_75;
      case 0xA:
        v121 = v13;
        v126 = 11;
        sub_214320034();
        v37 = v10;
        v81 = v109;
        sub_2146DA1C8();
        v39 = (v123 + 8);
        if (v81)
        {
          goto LABEL_64;
        }

        v27 = v21;
        (*v39)(v12, v10);
        v82 = *&v125[144];
        v25 = v124;
        *(v124 + 8) = *&v125[128];
        *(v25 + 9) = v82;
        *(v25 + 155) = *&v125[155];
        v83 = *&v125[80];
        *(v25 + 4) = *&v125[64];
        *(v25 + 5) = v83;
        v84 = *&v125[112];
        *(v25 + 6) = *&v125[96];
        *(v25 + 7) = v84;
        v85 = *&v125[16];
        *v25 = *v125;
        *(v25 + 1) = v85;
        v86 = *&v125[48];
        *(v25 + 2) = *&v125[32];
        *(v25 + 3) = v86;
        goto LABEL_75;
      case 0xB:
        v126 = 12;
        sub_21431FFE0();
        v33 = v109;
        sub_2146DA1C8();
        v29 = (v123 + 8);
        if (v33)
        {
          goto LABEL_68;
        }

        v27 = v21;
        (*v29)(v12, v10);
        v25 = v124;
        memcpy(v124, v125, 0x19BuLL);
        goto LABEL_75;
      case 0xC:
        v126 = 13;
        sub_21431FF8C();
        v35 = v109;
        sub_2146DA1C8();
        v29 = (v123 + 8);
        if (v35)
        {
          goto LABEL_68;
        }

        v27 = v21;
        (*v29)(v12, v10);
        v25 = v124;
        memcpy(v124, v125, 0xC89uLL);
        goto LABEL_75;
      case 0xD:
        v126 = 14;
        sub_21431FF38();
        v68 = v109;
        sub_2146DA1C8();
        v29 = (v123 + 8);
        if (v68)
        {
          goto LABEL_68;
        }

        v27 = v21;
        (*v29)(v12, v10);
        v69 = *&v125[112];
        v25 = v124;
        *(v124 + 6) = *&v125[96];
        *(v25 + 7) = v69;
        *(v25 + 8) = *&v125[128];
        *(v25 + 144) = v125[144];
        v70 = *&v125[48];
        *(v25 + 2) = *&v125[32];
        *(v25 + 3) = v70;
        v71 = *&v125[80];
        *(v25 + 4) = *&v125[64];
        *(v25 + 5) = v71;
        v72 = *&v125[16];
        *v25 = *v125;
        *(v25 + 1) = v72;
        goto LABEL_75;
      case 0xE:
        v121 = v13;
        v125[0] = 15;
        v32 = sub_2146DA1A8();
        v27 = v21;
        (*(v123 + 8))(v12, v10);
        v25 = v124;
        *v124 = v32;
        goto LABEL_75;
      case 0xF:
        v125[0] = 16;
        sub_214328930(&qword_27C90CA58, type metadata accessor for IDSProtobuf, protocol conformance descriptor for IDSProtobuf);
        v49 = v19;
        v50 = v109;
        sub_2146DA1C8();
        if (v50)
        {
          goto LABEL_42;
        }

        v27 = v21;
        (*(v123 + 8))(v12, v10);
        v25 = v124;
        sub_214328704(v49, v124, type metadata accessor for IDSProtobuf);
        goto LABEL_75;
      case 0x10:
        v125[0] = 17;
        sub_214328930(&qword_27C90CA50, type metadata accessor for IDSSampleMessage, a9_42);
        v30 = v116;
        v31 = v109;
        sub_2146DA1C8();
        if (v31)
        {
          goto LABEL_42;
        }

        v27 = v21;
        (*(v123 + 8))(v12, v10);
        v25 = v124;
        sub_214328704(v30, v124, type metadata accessor for IDSSampleMessage);
        goto LABEL_75;
      case 0x11:
        v126 = 18;
        sub_21431FEE4();
        v61 = v109;
        sub_2146DA1C8();
        v29 = (v123 + 8);
        if (v61)
        {
          goto LABEL_68;
        }

        v27 = v21;
        (*v29)(v12, v10);
        v25 = v124;
        memcpy(v124, v125, 0x679uLL);
        goto LABEL_75;
      case 0x12:
        v126 = 19;
        sub_2140527E4();
        v80 = v109;
        sub_2146DA1C8();
        if (!v80)
        {
          goto LABEL_32;
        }

        goto LABEL_42;
      case 0x13:
        v126 = 20;
        sub_21431FE90();
        v92 = v109;
        sub_2146DA1C8();
        v29 = (v123 + 8);
        if (v92)
        {
          goto LABEL_68;
        }

        v27 = v21;
        (*v29)(v12, v10);
        v25 = v124;
        memcpy(v124, v125, 0x261uLL);
        goto LABEL_75;
      case 0x14:
        v125[0] = 21;
        sub_214328930(&qword_27C90CA38, type metadata accessor for IDSNearbySessionMessage, asc_2146FB300);
        v62 = v109;
        sub_2146DA1C8();
        if (v62)
        {
          goto LABEL_42;
        }

        v27 = v21;
        (*(v123 + 8))(v12, v10);
        v25 = v124;
        sub_214328704(v20, v124, type metadata accessor for IDSNearbySessionMessage);
        goto LABEL_75;
      case 0x15:
        v125[0] = 22;
        sub_214328930(&qword_27C90CA30, type metadata accessor for PhotosSharedAlbumMessage, byte_2146FB620);
        v67 = v109;
        sub_2146DA1C8();
        if (v67)
        {
          goto LABEL_42;
        }

        v27 = v21;
        (*(v123 + 8))(v12, v10);
        v25 = v124;
        sub_214328704(v22, v124, type metadata accessor for PhotosSharedAlbumMessage);
        goto LABEL_75;
      case 0x16:
        v126 = 23;
        sub_21431FE3C();
        v91 = v109;
        sub_2146DA1C8();
        v29 = (v123 + 8);
        if (v91)
        {
          goto LABEL_68;
        }

        v27 = v21;
        (*v29)(v12, v10);
        v25 = v124;
        memcpy(v124, v125, 0x179uLL);
        goto LABEL_75;
      case 0x17:
        v126 = 24;
        sub_214058DA0();
        v93 = v109;
        sub_2146DA1C8();
        v29 = (v123 + 8);
        if (v93)
        {
          goto LABEL_68;
        }

        v27 = v21;
        (*v29)(v12, v10);
        v25 = v124;
        memcpy(v124, v125, 0x219uLL);
        goto LABEL_75;
      case 0x18:
        v126 = 25;
        sub_21431FDE8();
        v47 = v109;
        sub_2146DA1C8();
        v29 = (v123 + 8);
        if (v47)
        {
          goto LABEL_68;
        }

        v27 = v21;
        (*v29)(v12, v10);
        v25 = v124;
        memcpy(v124, v125, 0x151uLL);
        goto LABEL_75;
      case 0x19:
        v121 = v13;
        v126 = 26;
        sub_21431FD94();
        v37 = v10;
        v38 = v109;
        sub_2146DA1C8();
        v39 = (v123 + 8);
        if (v38)
        {
          goto LABEL_64;
        }

        v27 = v21;
        (*v39)(v12, v10);
        v40 = *&v125[208];
        v25 = v124;
        *(v124 + 12) = *&v125[192];
        *(v25 + 13) = v40;
        *(v25 + 218) = *&v125[218];
        v41 = *&v125[144];
        *(v25 + 8) = *&v125[128];
        *(v25 + 9) = v41;
        v42 = *&v125[176];
        *(v25 + 10) = *&v125[160];
        *(v25 + 11) = v42;
        v43 = *&v125[80];
        *(v25 + 4) = *&v125[64];
        *(v25 + 5) = v43;
        v44 = *&v125[112];
        *(v25 + 6) = *&v125[96];
        *(v25 + 7) = v44;
        v45 = *&v125[16];
        *v25 = *v125;
        *(v25 + 1) = v45;
        v46 = *&v125[48];
        *(v25 + 2) = *&v125[32];
        *(v25 + 3) = v46;
        goto LABEL_75;
      case 0x1A:
        v126 = 27;
        sub_21431FD40();
        v98 = v109;
        sub_2146DA1C8();
        v29 = (v123 + 8);
        if (v98)
        {
          goto LABEL_68;
        }

        goto LABEL_74;
      case 0x1B:
        v126 = 28;
        sub_21431FCEC();
        v28 = v109;
        sub_2146DA1C8();
        v29 = (v123 + 8);
        if (v28)
        {
          goto LABEL_68;
        }

LABEL_74:
        v27 = v21;
        (*v29)(v12, v10);
        v106 = *&v125[80];
        v25 = v124;
        *(v124 + 4) = *&v125[64];
        *(v25 + 5) = v106;
        v25[12] = *&v125[96];
        v107 = *&v125[16];
        *v25 = *v125;
        *(v25 + 1) = v107;
        v108 = *&v125[48];
        *(v25 + 2) = *&v125[32];
        *(v25 + 3) = v108;
        goto LABEL_75;
      case 0x1C:
        v121 = v13;
        v126 = 29;
        sub_21431FC98();
        v37 = v10;
        v94 = v109;
        sub_2146DA1C8();
        v39 = (v123 + 8);
        if (v94)
        {
LABEL_64:
          (*v39)(v12, v37);
          goto LABEL_69;
        }

        v27 = v21;
        (*v39)(v12, v10);
        v100 = *&v125[176];
        v25 = v124;
        *(v124 + 10) = *&v125[160];
        *(v25 + 11) = v100;
        *(v25 + 191) = *&v125[191];
        v101 = *&v125[112];
        *(v25 + 6) = *&v125[96];
        *(v25 + 7) = v101;
        v102 = *&v125[144];
        *(v25 + 8) = *&v125[128];
        *(v25 + 9) = v102;
        v103 = *&v125[48];
        *(v25 + 2) = *&v125[32];
        *(v25 + 3) = v103;
        v104 = *&v125[80];
        *(v25 + 4) = *&v125[64];
        *(v25 + 5) = v104;
        v105 = *&v125[16];
        *v25 = *v125;
        *(v25 + 1) = v105;
        goto LABEL_75;
      case 0x1D:
        v126 = 30;
        sub_21406B0A4();
        v95 = v109;
        sub_2146DA1C8();
        v29 = (v123 + 8);
        if (v95)
        {
          goto LABEL_68;
        }

        v27 = v21;
        (*v29)(v12, v10);
        v96 = *&v125[48];
        v25 = v124;
        *(v124 + 2) = *&v125[32];
        *(v25 + 3) = v96;
        *(v25 + 4) = *&v125[64];
        *(v25 + 40) = *&v125[80];
        v97 = *&v125[16];
        *v25 = *v125;
        *(v25 + 1) = v97;
        goto LABEL_75;
      case 0x1E:
        v126 = 31;
        sub_21431FC44();
        v89 = v109;
        sub_2146DA1C8();
        if (v89)
        {
          goto LABEL_42;
        }

LABEL_32:
        v27 = v21;
        (*(v123 + 8))(v12, v10);
        v25 = v124;
        *v124 = v125[0];
        goto LABEL_75;
      case 0x1F:
        v126 = 32;
        sub_21431FBF0();
        v56 = v109;
        sub_2146DA1C8();
        v29 = (v123 + 8);
        if (v56)
        {
          goto LABEL_68;
        }

        v27 = v21;
        (*v29)(v12, v10);
        v57 = *&v125[112];
        v25 = v124;
        *(v124 + 6) = *&v125[96];
        *(v25 + 7) = v57;
        *(v25 + 128) = v125[128];
        v58 = *&v125[48];
        *(v25 + 2) = *&v125[32];
        *(v25 + 3) = v58;
        v59 = *&v125[80];
        *(v25 + 4) = *&v125[64];
        *(v25 + 5) = v59;
        v60 = *&v125[16];
        *v25 = *v125;
        *(v25 + 1) = v60;
        goto LABEL_75;
      case 0x20:
        v126 = 33;
        sub_21431FB9C();
        v90 = v109;
        sub_2146DA1C8();
        v29 = (v123 + 8);
        if (v90)
        {
LABEL_68:
          (*v29)(v12, v10);
          goto LABEL_69;
        }

        v27 = v21;
        (*v29)(v12, v10);
        v25 = v124;
        memcpy(v124, v125, 0x1A1uLL);
LABEL_75:
        swift_storeEnumTagMultiPayload();
        v26 = v127;
        goto LABEL_76;
      default:
        v125[0] = 1;
        sub_214328930(&qword_27C9052C8, type metadata accessor for AccountsRepresentativeMessage, byte_2146F7480);
        v23 = v110;
        v24 = v109;
        sub_2146DA1C8();
        if (v24)
        {
LABEL_42:
          (*(v123 + 8))(v12, v10);
LABEL_69:
          v18 = v127;
          return __swift_destroy_boxed_opaque_existential_1(v18);
        }

        (*(v123 + 8))(v12, v10);
        v25 = v124;
        sub_214328704(v23, v124, type metadata accessor for AccountsRepresentativeMessage);
        swift_storeEnumTagMultiPayload();
        v26 = v127;
        v27 = v21;
LABEL_76:
        sub_214328704(v25, v27, type metadata accessor for IDSClientMessageType);
        result = __swift_destroy_boxed_opaque_existential_1(v26);
        break;
    }
  }

  return result;
}

unint64_t sub_2142AF620()
{
  v1 = 0xD000000000000019;
  v2 = *v0;
  v3 = 0xD000000000000022;
  if (v2 != 5)
  {
    v3 = 0xD000000000000020;
  }

  v4 = 0xD00000000000001CLL;
  if (v2 != 3)
  {
    v4 = 0xD000000000000019;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  if (v2 != 1)
  {
    v1 = 0xD00000000000001ALL;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000014;
  }

  if (*v0 <= 2u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_2142AF6E0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_214387480(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2142AF708(uint64_t a1)
{
  v2 = sub_214320280();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142AF744(uint64_t a1)
{
  v2 = sub_214320280();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142AF794(uint64_t a1)
{
  sub_2146D9698();
}

unint64_t sub_2142AF870@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_21438776C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_2142AF8A0(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000013;
  v3 = *v1;
  v4 = "statusKitInvitation";
  v5 = "idsKCSharingInvitation";
  v6 = "idsHealthInvitation";
  v7 = 0xD00000000000001CLL;
  if (v3 != 4)
  {
    v7 = 0xD00000000000001ALL;
    v6 = "idsActivitySharingInvitation";
  }

  if (v3 == 3)
  {
    v7 = 0xD000000000000013;
  }

  else
  {
    v5 = v6;
  }

  v8 = "idsSampleInvitation";
  v9 = 0xD000000000000016;
  if (v3 == 1)
  {
    v9 = 0xD000000000000014;
  }

  else
  {
    v8 = "idsHomekitInvitation";
  }

  if (*v1)
  {
    v2 = v9;
    v4 = v8;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v2 = v7;
    v10 = v5;
  }

  *a1 = v2;
  a1[1] = v10 | 0x8000000000000000;
}

uint64_t sub_2142AF9F8(void *a1)
{
  v31 = type metadata accessor for IDSActivitySharingInvitation(0);
  MEMORY[0x28223BE20](v31);
  v36 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for IDSHealthInvitation(0);
  MEMORY[0x28223BE20](v30);
  v35 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for IDSKCSharingInvitation(0);
  MEMORY[0x28223BE20](v29);
  v34 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for IDSHomeKitInvitation(0);
  MEMORY[0x28223BE20](v28);
  v33 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for IDSSampleInvitation(0);
  MEMORY[0x28223BE20](v27);
  v32 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for IDSDictionaryContext(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90CAB8, &qword_2146F6DD8);
  v38 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v27 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214320280();
  sub_2146DAA28();
  sub_2143287C0(v39, v9, type metadata accessor for IDSDictionaryContext);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      v19 = v32;
      sub_214328704(v9, v32, type metadata accessor for IDSSampleInvitation);
      v41[0] = 0;
      v40[0] = 0;
      sub_2143202D4();
      v14 = v12;
      v20 = v37;
      sub_2146DA388();
      if (!v20)
      {
        v41[0] = 1;
        sub_214328930(&qword_27C90CAF0, type metadata accessor for IDSSampleInvitation, a1_44);
        sub_2146DA388();
      }

      v21 = type metadata accessor for IDSSampleInvitation;
      v22 = v19;
      goto LABEL_22;
    }

    v14 = v12;
    if (EnumCaseMultiPayload == 1)
    {
      v15 = v33;
      sub_214328704(v9, v33, type metadata accessor for IDSHomeKitInvitation);
      v41[0] = 1;
      v40[0] = 0;
      sub_2143202D4();
      v16 = v37;
      sub_2146DA388();
      if (!v16)
      {
        v41[0] = 2;
        sub_214328930(&qword_27C90CAE8, type metadata accessor for IDSHomeKitInvitation, byte_2146FA3D8);
        sub_2146DA388();
      }

      v17 = type metadata accessor for IDSHomeKitInvitation;
    }

    else
    {
      v15 = v34;
      sub_214328704(v9, v34, type metadata accessor for IDSKCSharingInvitation);
      v41[0] = 2;
      v40[0] = 0;
      sub_2143202D4();
      v24 = v37;
      sub_2146DA388();
      if (!v24)
      {
        v41[0] = 3;
        sub_214328930(&qword_27C90CAE0, type metadata accessor for IDSKCSharingInvitation, asc_2146FA5B8);
        sub_2146DA388();
      }

      v17 = type metadata accessor for IDSKCSharingInvitation;
    }

LABEL_21:
    v21 = v17;
    v22 = v15;
LABEL_22:
    sub_21432887C(v22, v21);
    return (*(v38 + 8))(v14, v10);
  }

  if (EnumCaseMultiPayload == 3)
  {
    v15 = v35;
    sub_214328704(v9, v35, type metadata accessor for IDSHealthInvitation);
    v41[0] = 3;
    v40[0] = 0;
    sub_2143202D4();
    v14 = v12;
    v23 = v37;
    sub_2146DA388();
    if (!v23)
    {
      v41[0] = 4;
      sub_214328930(&qword_27C90CAD8, type metadata accessor for IDSHealthInvitation, aQ_8);
      sub_2146DA388();
    }

    v17 = type metadata accessor for IDSHealthInvitation;
    goto LABEL_21;
  }

  v14 = v12;
  if (EnumCaseMultiPayload == 4)
  {
    v15 = v36;
    sub_214328704(v9, v36, type metadata accessor for IDSActivitySharingInvitation);
    v41[0] = 4;
    v40[0] = 0;
    sub_2143202D4();
    v18 = v37;
    sub_2146DA388();
    if (!v18)
    {
      v41[0] = 5;
      sub_214328930(&qword_27C90CAD0, type metadata accessor for IDSActivitySharingInvitation, aA_45);
      sub_2146DA388();
    }

    v17 = type metadata accessor for IDSActivitySharingInvitation;
    goto LABEL_21;
  }

  memcpy(v41, v9, 0x151uLL);
  v40[0] = 5;
  v42 = 0;
  sub_2143202D4();
  v26 = v37;
  sub_2146DA388();
  if (!v26)
  {
    memcpy(v40, v41, sizeof(v40));
    v42 = 6;
    sub_21431F5B4();
    sub_2146DA388();
  }

  (*(v38 + 8))(v12, v10);
  return sub_21404C67C(v41);
}

uint64_t sub_2142B021C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v32 = type metadata accessor for IDSActivitySharingInvitation(0);
  MEMORY[0x28223BE20](v32);
  v31 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for IDSHealthInvitation(0);
  MEMORY[0x28223BE20](v30);
  v33 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for IDSKCSharingInvitation(0);
  MEMORY[0x28223BE20](v29);
  v26 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for IDSHomeKitInvitation(0);
  MEMORY[0x28223BE20](v27);
  v28 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for IDSSampleInvitation(0);
  MEMORY[0x28223BE20](v25);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90CAF8, &qword_2146F6DE0);
  v34 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v24 - v10;
  v12 = type metadata accessor for IDSDictionaryContext(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_214320280();
  v16 = v36;
  sub_2146DAA08();
  if (!v16)
  {
    v17 = v33;
    v36 = v12;
    v18 = v35;
    v39 = 0;
    sub_214320328();
    sub_2146DA1C8();
    if (v38[0] <= 2u)
    {
      if (v38[0])
      {
        if (v38[0] == 1)
        {
          v38[0] = 2;
          sub_214328930(&qword_27C90CB20, type metadata accessor for IDSHomeKitInvitation, aY_95);
          v20 = v28;
          sub_2146DA1C8();
          (*(v34 + 8))(v11, v9);
          sub_214328704(v20, v14, type metadata accessor for IDSHomeKitInvitation);
        }

        else
        {
          v38[0] = 3;
          sub_214328930(&qword_27C90CB18, type metadata accessor for IDSKCSharingInvitation, aY_94);
          v23 = v26;
          sub_2146DA1C8();
          (*(v34 + 8))(v11, v9);
          sub_214328704(v23, v14, type metadata accessor for IDSKCSharingInvitation);
        }
      }

      else
      {
        v38[0] = 1;
        sub_214328930(&qword_27C90CB28, type metadata accessor for IDSSampleInvitation, byte_2146FA680);
        sub_2146DA1C8();
        (*(v34 + 8))(v11, v9);
        sub_214328704(v8, v14, type metadata accessor for IDSSampleInvitation);
      }

      goto LABEL_16;
    }

    if (v38[0] == 3)
    {
      v38[0] = 4;
      sub_214328930(&qword_27C90CB10, type metadata accessor for IDSHealthInvitation, byte_2146FA360);
      sub_2146DA1C8();
      (*(v34 + 8))(v11, v9);
      sub_214328704(v17, v14, type metadata accessor for IDSHealthInvitation);
    }

    else
    {
      v21 = v34;
      if (v38[0] != 4)
      {
        v39 = 6;
        sub_21431FDE8();
        sub_2146DA1C8();
        (*(v21 + 8))(v11, v9);
        memcpy(v14, v38, 0x151uLL);
LABEL_16:
        swift_storeEnumTagMultiPayload();
        goto LABEL_17;
      }

      v38[0] = 5;
      sub_214328930(&qword_27C90CB08, type metadata accessor for IDSActivitySharingInvitation, byte_2146FA270);
      v22 = v31;
      sub_2146DA1C8();
      (*(v21 + 8))(v11, v9);
      sub_214328704(v22, v14, type metadata accessor for IDSActivitySharingInvitation);
    }

    swift_storeEnumTagMultiPayload();
    v18 = v35;
LABEL_17:
    sub_214328704(v14, v18, type metadata accessor for IDSDictionaryContext);
  }

  return __swift_destroy_boxed_opaque_existential_1(v37);
}

unint64_t sub_2142B0A24()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0xD000000000000018;
  }
}

uint64_t sub_2142B0A60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 0xD000000000000018 && 0x8000000214797EA0 == a2;
  if (v5 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000214797EC0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2146DA6A8();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_2142B0B44(uint64_t a1)
{
  v2 = sub_21432037C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142B0B80(uint64_t a1)
{
  v2 = sub_21432037C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142B0CEC(void *a1)
{
  v2 = v1;
  v15[0] = type metadata accessor for IDSDictionaryContext(0);
  MEMORY[0x28223BE20](v15[0]);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for IDSInvitationContextType(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90CB30, &qword_2146F6DE8);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v15 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21432037C();
  sub_2146DAA28();
  sub_2143287C0(v2, v8, type metadata accessor for IDSInvitationContextType);
  sub_214328704(v8, v5, type metadata accessor for IDSDictionaryContext);
  v17 = 0;
  sub_2143203D0();
  v13 = v15[1];
  sub_2146DA388();
  if (!v13)
  {
    v16 = 1;
    sub_214328930(&qword_27C905088, type metadata accessor for IDSDictionaryContext, byte_214702BC8);
    sub_2146DA388();
  }

  sub_21432887C(v5, type metadata accessor for IDSDictionaryContext);
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_2142B0F8C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v13 = a2;
  v4 = type metadata accessor for IDSDictionaryContext(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90CB48, &qword_2146F6DF0);
  v7 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v9 = &v13 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21432037C();
  sub_2146DAA08();
  if (!v2)
  {
    v10 = v7;
    v16 = 0;
    sub_214320424();
    v11 = v14;
    sub_2146DA1C8();
    v15 = 1;
    sub_214328930(&qword_27C905080, type metadata accessor for IDSDictionaryContext, aIv);
    sub_2146DA1C8();
    (*(v10 + 8))(v9, v11);
    sub_214328704(v6, v13, type metadata accessor for IDSDictionaryContext);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_2142B11F0(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0xD000000000000021;
    v6 = 0xD000000000000032;
    if (a1 == 8)
    {
      v6 = 0xD00000000000002CLL;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0xD000000000000037;
    if (a1 == 5)
    {
      v7 = 0xD000000000000024;
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
    v1 = 0xD000000000000032;
    v2 = 0xD000000000000033;
    if (a1 != 3)
    {
      v2 = 0xD00000000000002CLL;
    }

    if (a1 != 2)
    {
      v1 = v2;
    }

    v3 = 0xD00000000000001BLL;
    if (!a1)
    {
      v3 = 0xD00000000000001CLL;
    }

    if (a1 <= 1u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

unint64_t sub_2142B130C(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0xD00000000000002DLL;
    if (a1 != 2)
    {
      v5 = 0xD000000000000026;
    }

    v6 = 0xD00000000000002CLL;
    if (!a1)
    {
      v6 = 0xD000000000000015;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0xD00000000000001BLL;
    v2 = 0xD00000000000002CLL;
    if (a1 == 7)
    {
      v2 = 0xD000000000000026;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000031;
    if (a1 == 4)
    {
      v3 = 0xD00000000000001ELL;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_2142B1444@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2143877B8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2142B146C(uint64_t a1)
{
  v2 = sub_214320478();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142B14A8(uint64_t a1)
{
  v2 = sub_214320478();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_2142B1528@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_214387B2C(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_2142B1558@<X0>(unint64_t *a1@<X8>)
{
  result = sub_2142B130C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2142B1634(void *a1)
{
  v61 = type metadata accessor for WalletCloudStoreZoneInvitationResponseMessage(0);
  MEMORY[0x28223BE20](v61);
  v60 = &v59 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for WalletCloudStoreZoneInvitationRequestMessage(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for IDSClientProtobufMessageType(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90CB58, &qword_2146F6DF8);
  v62 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v10 = &v59 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214320478();
  v65 = v10;
  sub_2146DAA28();
  sub_2143287C0(v63, v8, type metadata accessor for IDSClientProtobufMessageType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    v19 = v60;
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        sub_214328704(v8, v60, type metadata accessor for WalletCloudStoreZoneInvitationResponseMessage);
        LOBYTE(v74) = 2;
        LOBYTE(v67) = 0;
        sub_2143204CC();
        v25 = v65;
        v26 = v66;
        v27 = v64;
        sub_2146DA388();
        if (!v27)
        {
          LOBYTE(v74) = 3;
          sub_214328930(&qword_27C904EE0, type metadata accessor for WalletCloudStoreZoneInvitationResponseMessage, aQom);
          sub_2146DA388();
        }

        sub_21432887C(v19, type metadata accessor for WalletCloudStoreZoneInvitationResponseMessage);
        return (*(v62 + 8))(v25, v26);
      }

      else
      {
        v44 = *(v8 + 5);
        v78 = *(v8 + 4);
        v79[0] = v44;
        v79[1] = *(v8 + 6);
        v80 = *(v8 + 14);
        v45 = *(v8 + 1);
        v74 = *v8;
        v75 = v45;
        v46 = *(v8 + 3);
        v76 = *(v8 + 2);
        v77 = v46;
        LOBYTE(v67) = 3;
        v81 = 0;
        sub_2143204CC();
        v47 = v65;
        v48 = v66;
        v49 = v64;
        sub_2146DA388();
        if (!v49)
        {
          v71 = v78;
          v72[0] = v79[0];
          v72[1] = v79[1];
          v73 = v80;
          v67 = v74;
          v68 = v75;
          v69 = v76;
          v70 = v77;
          v81 = 4;
          sub_21432061C();
          sub_2146DA388();
        }

        (*(v62 + 8))(v47, v48);
        return sub_21404B8A0(&v74);
      }
    }

    else
    {
      if (EnumCaseMultiPayload)
      {
        sub_214328704(v8, v5, type metadata accessor for WalletCloudStoreZoneInvitationRequestMessage);
        LOBYTE(v74) = 1;
        LOBYTE(v67) = 0;
        sub_2143204CC();
        v41 = v65;
        v42 = v66;
        v43 = v64;
        sub_2146DA388();
        if (!v43)
        {
          LOBYTE(v74) = 2;
          sub_214328930(&qword_27C90CBA0, type metadata accessor for WalletCloudStoreZoneInvitationRequestMessage, byte_2146FDA38);
          sub_2146DA388();
        }

        sub_21432887C(v5, type metadata accessor for WalletCloudStoreZoneInvitationRequestMessage);
        return (*(v62 + 8))(v41, v42);
      }

      v21 = *v8;
      v20 = *(v8 + 1);
      LOBYTE(v74) = 0;
      LOBYTE(v67) = 0;
      sub_2143204CC();
      v22 = v65;
      v23 = v66;
      v24 = v64;
      sub_2146DA388();
      if (!v24)
      {
        *&v74 = v21;
        *(&v74 + 1) = v20;
        LOBYTE(v67) = 1;
        sub_21404B9BC();
        sub_2146DA388();
      }

      (*(v62 + 8))(v22, v23);
    }
  }

  else
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload != 6)
      {
        if (EnumCaseMultiPayload == 7)
        {
          v12 = *v8;
          v13 = v8[4];
          v14 = v8[5];
          LOBYTE(v74) = 7;
          LOBYTE(v67) = 0;
          sub_2143204CC();
          v15 = v65;
          v16 = v66;
          v17 = v64;
          sub_2146DA388();
          if (!v17)
          {
            LODWORD(v74) = v12;
            BYTE4(v74) = v13;
            BYTE5(v74) = v14;
            LOBYTE(v67) = 8;
            sub_214320574();
            sub_2146DA388();
          }

          return (*(v62 + 8))(v15, v16);
        }

        v50 = *v8;
        v51 = v8[8];
        LOBYTE(v74) = 8;
        LOBYTE(v67) = 0;
        sub_2143204CC();
        v41 = v65;
        v42 = v66;
        v52 = v64;
        sub_2146DA388();
        if (!v52)
        {
          *&v74 = v50;
          BYTE8(v74) = v51;
          LOBYTE(v67) = 9;
          sub_214320520();
          sub_2146DA388();
        }

        return (*(v62 + 8))(v41, v42);
      }

      v33 = *(v8 + 5);
      v78 = *(v8 + 4);
      v79[0] = v33;
      *(v79 + 10) = *(v8 + 90);
      v34 = *(v8 + 1);
      v74 = *v8;
      v75 = v34;
      v35 = *(v8 + 3);
      v76 = *(v8 + 2);
      v77 = v35;
      LOBYTE(v67) = 6;
      v81 = 0;
      sub_2143204CC();
      v36 = v65;
      v37 = v66;
      v38 = v64;
      sub_2146DA388();
      if (!v38)
      {
        v71 = v78;
        v72[0] = v79[0];
        *(v72 + 10) = *(v79 + 10);
        v67 = v74;
        v68 = v75;
        v69 = v76;
        v70 = v77;
        v81 = 7;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9041F8, &unk_2146F6E00);
        sub_21432076C(&qword_27C90CB80, &qword_27C9041F8, &unk_2146F6E00, byte_2146FD948);
        sub_2146DA388();
      }

      (*(v62 + 8))(v36, v37);
      v39 = &qword_27C9041F8;
      v40 = &unk_2146F6E00;
      return sub_213FB2DF4(&v74, v39, v40);
    }

    if (EnumCaseMultiPayload != 4)
    {
      v53 = *(v8 + 5);
      v78 = *(v8 + 4);
      v79[0] = v53;
      *(v79 + 10) = *(v8 + 90);
      v54 = *(v8 + 1);
      v74 = *v8;
      v75 = v54;
      v55 = *(v8 + 3);
      v76 = *(v8 + 2);
      v77 = v55;
      LOBYTE(v67) = 5;
      v81 = 0;
      sub_2143204CC();
      v56 = v65;
      v57 = v66;
      v58 = v64;
      sub_2146DA388();
      if (!v58)
      {
        v71 = v78;
        v72[0] = v79[0];
        *(v72 + 10) = *(v79 + 10);
        v67 = v74;
        v68 = v75;
        v69 = v76;
        v70 = v77;
        v81 = 6;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904200, &qword_2146EAB58);
        sub_21432076C(&qword_27C90CB88, &qword_27C904200, &qword_2146EAB58, byte_2146FD948);
        sub_2146DA388();
      }

      (*(v62 + 8))(v56, v57);
      v39 = &qword_27C904200;
      v40 = &qword_2146EAB58;
      return sub_213FB2DF4(&v74, v39, v40);
    }

    v28 = *(v8 + 3);
    v76 = *(v8 + 2);
    v77 = v28;
    v78 = *(v8 + 4);
    LOBYTE(v79[0]) = v8[80];
    v29 = *(v8 + 1);
    v74 = *v8;
    v75 = v29;
    LOBYTE(v67) = 4;
    v81 = 0;
    sub_2143204CC();
    v30 = v65;
    v31 = v66;
    v32 = v64;
    sub_2146DA388();
    if (!v32)
    {
      v69 = v76;
      v70 = v77;
      v71 = v78;
      LOBYTE(v72[0]) = v79[0];
      v67 = v74;
      v68 = v75;
      v81 = 5;
      sub_2143205C8();
      sub_2146DA388();
    }

    (*(v62 + 8))(v30, v31);
    return sub_21404B84C(&v74);
  }
}

uint64_t sub_2142B2040@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v37 = type metadata accessor for WalletCloudStoreZoneInvitationResponseMessage(0);
  MEMORY[0x28223BE20](v37);
  v36 = v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for WalletCloudStoreZoneInvitationRequestMessage(0);
  MEMORY[0x28223BE20](v4);
  v6 = v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90CBA8, &qword_2146F6E10);
  v38 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = v34 - v8;
  v10 = type metadata accessor for IDSClientProtobufMessageType(0);
  MEMORY[0x28223BE20](v10);
  v12 = v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v40 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_214320478();
  v14 = v39;
  sub_2146DAA08();
  if (!v14)
  {
    v34[1] = v4;
    v15 = v36;
    v39 = v12;
    v48 = 0;
    sub_214320670();
    sub_2146DA1C8();
    if (v41 <= 3u)
    {
      if (v41 <= 1u)
      {
        if (v41)
        {
          LOBYTE(v41) = 2;
          sub_214328930(&qword_27C90CBE8, type metadata accessor for WalletCloudStoreZoneInvitationRequestMessage, byte_2146FDA10);
          sub_2146DA1C8();
          (*(v38 + 8))(v9, v7);
          v18 = v35;
          v20 = v39;
          sub_214328704(v6, v39, type metadata accessor for WalletCloudStoreZoneInvitationRequestMessage);
        }

        else
        {
          v48 = 1;
          sub_21432085C();
          sub_2146DA1C8();
          (*(v38 + 8))(v9, v7);
          v18 = v35;
          v20 = v39;
          *v39 = v41;
        }

        goto LABEL_22;
      }

      if (v41 == 2)
      {
        LOBYTE(v41) = 3;
        sub_214328930(&qword_27C904ED8, type metadata accessor for WalletCloudStoreZoneInvitationResponseMessage, byte_2146FDA60);
        sub_2146DA1C8();
        (*(v38 + 8))(v9, v7);
        v20 = v39;
        sub_214328704(v15, v39, type metadata accessor for WalletCloudStoreZoneInvitationResponseMessage);
        goto LABEL_23;
      }

      v48 = 4;
      sub_214320808();
      sub_2146DA1C8();
      (*(v38 + 8))(v9, v7);
      v18 = v35;
      v24 = *v46;
      v20 = v39;
      v39[4] = v45;
      v20[5] = v24;
      v20[6] = *&v46[16];
      *(v20 + 14) = v47;
      v25 = v42;
      *v20 = v41;
      v20[1] = v25;
      v26 = v44;
      v20[2] = v43;
      v20[3] = v26;
    }

    else
    {
      if (v41 > 5u)
      {
        if (v41 != 6)
        {
          if (v41 == 7)
          {
            v48 = 8;
            sub_214320718();
            sub_2146DA1C8();
            v18 = v35;
            (*(v38 + 8))(v9, v7);
            v19 = WORD2(v41);
            v20 = v39;
            *v39 = v41;
            *(v20 + 2) = v19;
          }

          else
          {
            v48 = 9;
            sub_2143206C4();
            sub_2146DA1C8();
            v18 = v35;
            (*(v38 + 8))(v9, v7);
            v27 = BYTE8(v41);
            v20 = v39;
            *v39 = v41;
            *(v20 + 8) = v27;
          }

          goto LABEL_22;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9041F8, &unk_2146F6E00);
        v48 = 7;
        sub_21432076C(&qword_27C90CBC8, &qword_27C9041F8, &unk_2146F6E00, byte_2146FD920);
        sub_2146DA1C8();
        (*(v38 + 8))(v9, v7);
        v21 = *v46;
        v20 = v39;
        v39[4] = v45;
        v20[5] = v21;
        *(v20 + 90) = *&v46[10];
        v22 = v42;
        *v20 = v41;
        v20[1] = v22;
        v23 = v44;
        v20[2] = v43;
        v20[3] = v23;
LABEL_23:
        swift_storeEnumTagMultiPayload();
        v30 = v40;
        v18 = v35;
        goto LABEL_24;
      }

      if (v41 != 4)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904200, &qword_2146EAB58);
        v48 = 6;
        sub_21432076C(&qword_27C90CBD0, &qword_27C904200, &qword_2146EAB58, byte_2146FD920);
        sub_2146DA1C8();
        (*(v38 + 8))(v9, v7);
        v31 = *v46;
        v20 = v39;
        v39[4] = v45;
        v20[5] = v31;
        *(v20 + 90) = *&v46[10];
        v32 = v42;
        *v20 = v41;
        v20[1] = v32;
        v33 = v44;
        v20[2] = v43;
        v20[3] = v33;
        goto LABEL_23;
      }

      v48 = 5;
      sub_2143207B4();
      sub_2146DA1C8();
      v18 = v35;
      (*(v38 + 8))(v9, v7);
      v28 = v44;
      v20 = v39;
      v39[2] = v43;
      v20[3] = v28;
      v20[4] = v45;
      *(v20 + 80) = v46[0];
      v29 = v42;
      *v20 = v41;
      v20[1] = v29;
    }

LABEL_22:
    swift_storeEnumTagMultiPayload();
    v30 = v40;
LABEL_24:
    sub_214328704(v20, v18, type metadata accessor for IDSClientProtobufMessageType);
    v16 = v30;
    return __swift_destroy_boxed_opaque_existential_1(v16);
  }

  v16 = v40;
  return __swift_destroy_boxed_opaque_existential_1(v16);
}

unint64_t sub_2142B2948()
{
  v1 = 0xD00000000000001BLL;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000001DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000014;
  }
}

uint64_t sub_2142B29A0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_214387B78(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2142B29C8(uint64_t a1)
{
  v2 = sub_2143208B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142B2A04(uint64_t a1)
{
  v2 = sub_2143208B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142B2A40(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000017;
  }

  else
  {
    v3 = 0xD000000000000015;
  }

  if (v2)
  {
    v4 = "legacyActivitySharing";
  }

  else
  {
    v4 = "strationRequestResultMessage";
  }

  v5 = v4 | 0x8000000000000000;
  if (*a2)
  {
    v6 = 0xD000000000000017;
  }

  else
  {
    v6 = 0xD000000000000015;
  }

  if (*a2)
  {
    v7 = "strationRequestResultMessage";
  }

  else
  {
    v7 = "legacyActivitySharing";
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

uint64_t sub_2142B2AEC()
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2142B2B6C(uint64_t a1)
{
  sub_2146D9698();
}

uint64_t sub_2142B2BD8(uint64_t a1)
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

void sub_2142B2C60(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000017;
  }

  else
  {
    v2 = 0xD000000000000015;
  }

  if (*v1)
  {
    v3 = "strationRequestResultMessage";
  }

  else
  {
    v3 = "legacyActivitySharing";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

uint64_t sub_2142B2D50(void *a1)
{
  v2 = v1;
  v18 = type metadata accessor for IDSSampleMessage(0);
  MEMORY[0x28223BE20](v18);
  v19 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for IDSSampleMessageType(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90CBF8, &qword_2146F6E18);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v17 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143208B0();
  sub_2146DAA28();
  sub_2143287C0(v2, v7, type metadata accessor for IDSSampleMessageType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = v19;
    sub_214328704(v7, v19, type metadata accessor for IDSSampleMessage);
    v26 = 1;
    v25 = 0;
    sub_214320904();
    v13 = v20;
    sub_2146DA388();
    if (!v13)
    {
      v24 = 2;
      sub_214328930(&qword_27C90C970, type metadata accessor for IDSSampleMessage, byte_2146FA6F8);
      sub_2146DA388();
    }

    sub_21432887C(v12, type metadata accessor for IDSSampleMessage);
  }

  else
  {
    v14 = *v7;
    v23 = 0;
    sub_214320904();
    v15 = v20;
    sub_2146DA388();
    if (!v15)
    {
      v22 = v14;
      v21 = 1;
      sub_214052838();
      sub_2146DA388();
    }
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_2142B3094@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v3 = type metadata accessor for IDSSampleMessage(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90CC10, &qword_2146F6E20);
  v21 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v19 - v7;
  v9 = type metadata accessor for IDSSampleMessageType(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v24 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_2143208B0();
  v13 = v23;
  sub_2146DAA08();
  if (!v13)
  {
    v20 = v11;
    v23 = v9;
    v14 = v21;
    v15 = v22;
    v28 = 0;
    sub_214320958();
    sub_2146DA1C8();
    if (v29)
    {
      v27 = 2;
      sub_214328930(&qword_27C90CA50, type metadata accessor for IDSSampleMessage, a9_42);
      sub_2146DA1C8();
      (*(v14 + 8))(v8, v6);
      v17 = v20;
      sub_214328704(v5, v20, type metadata accessor for IDSSampleMessage);
      v18 = v15;
    }

    else
    {
      v25 = 1;
      sub_2140527E4();
      sub_2146DA1C8();
      (*(v14 + 8))(v8, v6);
      v18 = v15;
      v17 = v20;
      *v20 = v26;
    }

    swift_storeEnumTagMultiPayload();
    sub_214328704(v17, v18, type metadata accessor for IDSSampleMessageType);
  }

  return __swift_destroy_boxed_opaque_existential_1(v24);
}

unint64_t sub_2142B3434()
{
  v1 = *v0;
  v2 = 0x565F656C676E6973;
  v3 = 0x5F736E6F6974706FLL;
  if (v1 != 3)
  {
    v3 = 0xD000000000000013;
  }

  if (v1 != 1)
  {
    v2 = 0x5F736E6F6974706FLL;
  }

  if (!*v0)
  {
    v2 = 0xD00000000000001ALL;
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

uint64_t sub_2142B3518@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_214387CF0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2142B3540(uint64_t a1)
{
  v2 = sub_2143209AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142B357C(uint64_t a1)
{
  v2 = sub_2143209AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142B35C4()
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2142B3684(uint64_t a1)
{
  sub_2146D9698();
}

uint64_t sub_2142B3730(uint64_t a1)
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

unint64_t sub_2142B37EC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_214387F58(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_2142B381C(uint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1701736302;
  v4 = 0xE700000000000000;
  v5 = 0x736E6F6974706FLL;
  if (*v1 != 2)
  {
    v5 = 0x68437972616E6962;
    v4 = 0xEC0000006563696FLL;
  }

  if (*v1)
  {
    v3 = 0x656C676E6973;
    v2 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_2142B3948(void *a1)
{
  v2 = v1;
  v33 = type metadata accessor for BIABinaryChoiceButton(0);
  v4 = MEMORY[0x28223BE20](v33);
  v34 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v35 = &v32 - v6;
  v7 = type metadata accessor for BIAUserAction(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for BIAUserInteractionParadigm(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90CC20, &qword_2146F6E28);
  v14 = *(v13 - 8);
  v37 = v13;
  v38 = v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v32 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143209AC();
  sub_2146DAA28();
  sub_2143287C0(v2, v12, type metadata accessor for BIAUserInteractionParadigm);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90CC38, &qword_2146F6E30) + 48);
      v23 = v35;
      sub_214328704(v12, v35, type metadata accessor for BIABinaryChoiceButton);
      v24 = &v12[v22];
      v25 = v34;
      sub_214328704(v24, v34, type metadata accessor for BIABinaryChoiceButton);
      LOBYTE(v39) = 3;
      v40 = 0;
      sub_214320A00();
      v26 = v36;
      v19 = v37;
      sub_2146DA388();
      if (!v26)
      {
        LOBYTE(v39) = 4;
        sub_214328930(&qword_27C90CC40, type metadata accessor for BIABinaryChoiceButton, byte_2146FAEC8);
        sub_2146DA388();
        LOBYTE(v39) = 5;
        sub_2146DA388();
      }

      sub_21432887C(v25, type metadata accessor for BIABinaryChoiceButton);
      v21 = v23;
      v20 = type metadata accessor for BIABinaryChoiceButton;
      goto LABEL_11;
    }

    LOBYTE(v39) = 0;
    v40 = 0;
    sub_214320A00();
    v31 = v37;
    sub_2146DA388();
    return (*(v38 + 8))(v16, v31);
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      sub_214328704(v12, v9, type metadata accessor for BIAUserAction);
      LOBYTE(v39) = 1;
      v40 = 0;
      sub_214320A00();
      v18 = v36;
      v19 = v37;
      sub_2146DA388();
      if (!v18)
      {
        LOBYTE(v39) = 1;
        sub_214328930(&qword_27C907D08, type metadata accessor for BIAUserAction, protocol conformance descriptor for BIAUserAction);
        sub_2146DA388();
      }

      v20 = type metadata accessor for BIAUserAction;
      v21 = v9;
LABEL_11:
      sub_21432887C(v21, v20);
      return (*(v38 + 8))(v16, v19);
    }

    v28 = *(v12 + 2);
    LOBYTE(v39) = 2;
    v40 = 0;
    sub_214320A00();
    v29 = v36;
    v30 = v37;
    sub_2146DA388();
    if (v29)
    {
      (*(v38 + 8))(v16, v30);
    }

    else
    {
      LOBYTE(v39) = 2;
      sub_2146DA328();

      v39 = v28;
      v40 = 3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907D60, &qword_2146F4DF0);
      sub_2142F8978();
      sub_2146DA388();
      (*(v38 + 8))(v16, v30);
    }
  }
}

uint64_t sub_2142B3F3C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v33 = type metadata accessor for BIABinaryChoiceButton(0);
  v3 = MEMORY[0x28223BE20](v33);
  v30 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v32 = &v30 - v5;
  v6 = type metadata accessor for BIAUserAction(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90CC48, &qword_2146F6E38);
  v34 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v30 - v10;
  v12 = type metadata accessor for BIAUserInteractionParadigm(0);
  MEMORY[0x28223BE20](v12);
  v14 = (&v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = a1[3];
  v36 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_2143209AC();
  v16 = v35;
  sub_2146DAA08();
  if (!v16)
  {
    v35 = v6;
    v17 = v32;
    v43 = 0;
    sub_214320A54();
    sub_2146DA1C8();
    if (v44 > 1u)
    {
      if (v44 == 2)
      {
        v40 = 2;
        v19 = sub_2146DA168();
        v20 = v34;
        v24 = v23;
        v25 = v19;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C907D60, &qword_2146F4DF0);
        v39 = 3;
        sub_2142F8840();
        sub_2146DA1C8();
        (*(v20 + 8))(v11, v9);
        v28 = v37;
        *v14 = v25;
        v14[1] = v24;
        v14[2] = v28;
      }

      else
      {
        v42 = 4;
        sub_214328930(&qword_27C90CC58, type metadata accessor for BIABinaryChoiceButton, aI_15);
        v21 = v11;
        sub_2146DA1C8();
        v41 = 5;
        v22 = v30;
        sub_2146DA1C8();
        v26 = v22;
        (*(v34 + 8))(v21, v9);
        v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90CC38, &qword_2146F6E30) + 48);
        sub_214328704(v17, v14, type metadata accessor for BIABinaryChoiceButton);
        sub_214328704(v26, v14 + v27, type metadata accessor for BIABinaryChoiceButton);
      }
    }

    else if (v44)
    {
      v38 = 1;
      sub_214328930(&qword_27C907CF8, type metadata accessor for BIAUserAction, protocol conformance descriptor for BIAUserAction);
      sub_2146DA1C8();
      (*(v34 + 8))(v11, v9);
      sub_214328704(v8, v14, type metadata accessor for BIAUserAction);
    }

    else
    {
      (*(v34 + 8))(v11, v9);
    }

    v29 = v31;
    swift_storeEnumTagMultiPayload();
    sub_214328704(v14, v29, type metadata accessor for BIAUserInteractionParadigm);
  }

  return __swift_destroy_boxed_opaque_existential_1(v36);
}

unint64_t sub_2142B4540()
{
  v1 = 0x756C61565F6C7275;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000019;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x4172657355414962;
  }
}

uint64_t sub_2142B45B0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_214387FA4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2142B45D8(uint64_t a1)
{
  v2 = sub_214320AA8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142B4614(uint64_t a1)
{
  v2 = sub_214320AA8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142B4650(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000013;
  }

  else
  {
    v3 = 7107189;
  }

  if (v2)
  {
    v4 = 0xE300000000000000;
  }

  else
  {
    v4 = 0x8000000214786B50;
  }

  if (*a2)
  {
    v5 = 0xD000000000000013;
  }

  else
  {
    v5 = 7107189;
  }

  if (*a2)
  {
    v6 = 0x8000000214786B50;
  }

  else
  {
    v6 = 0xE300000000000000;
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

uint64_t sub_2142B46F4()
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2142B4774(uint64_t a1)
{
  sub_2146D9698();
}

uint64_t sub_2142B47E0(uint64_t a1)
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

void sub_2142B4868(unint64_t *a1@<X8>)
{
  v2 = 0x8000000214786B50;
  v3 = 7107189;
  if (*v1)
  {
    v3 = 0xD000000000000013;
  }

  else
  {
    v2 = 0xE300000000000000;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t BIAUserAction.encode(to:)(void *a1)
{
  v2 = v1;
  v20 = type metadata accessor for BIAURL(0);
  MEMORY[0x28223BE20](v20);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for BIAUserAction(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90CC60, &qword_2146F6E40);
  v22 = *(v9 - 8);
  v23 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v20 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214320AA8();
  sub_2146DAA28();
  sub_2143287C0(v2, v8, type metadata accessor for BIAUserAction);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = *(v8 + 5);
    v36 = *(v8 + 4);
    v37 = v12;
    v38 = *(v8 + 6);
    v39 = v8[112];
    v13 = *(v8 + 1);
    v32 = *v8;
    v33 = v13;
    v14 = *(v8 + 3);
    v34 = *(v8 + 2);
    v35 = v14;
    LOBYTE(v24) = 1;
    v40 = 0;
    sub_214320AFC();
    v15 = v23;
    v16 = v21;
    sub_2146DA388();
    if (!v16)
    {
      v28 = v36;
      v29 = v37;
      v30 = v38;
      v31 = v39;
      v24 = v32;
      v25 = v33;
      v26 = v34;
      v27 = v35;
      v40 = 2;
      sub_214320B50();
      sub_2146DA388();
    }

    (*(v22 + 8))(v11, v15);
    return sub_2142F8368(&v32);
  }

  else
  {
    sub_214328704(v8, v5, type metadata accessor for BIAURL);
    LOBYTE(v32) = 0;
    LOBYTE(v24) = 0;
    sub_214320AFC();
    v18 = v23;
    v19 = v21;
    sub_2146DA388();
    if (!v19)
    {
      LOBYTE(v32) = 1;
      sub_214328930(&qword_27C90CC80, type metadata accessor for BIAURL, aQ_13);
      sub_2146DA388();
    }

    sub_21432887C(v5, type metadata accessor for BIAURL);
    return (*(v22 + 8))(v11, v18);
  }
}

uint64_t BIAUserAction.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v3 = type metadata accessor for BIAURL(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90CC88, &qword_2146F6E48);
  v23 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v22 - v7;
  v9 = type metadata accessor for BIAUserAction(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v26 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_214320AA8();
  v13 = v25;
  sub_2146DAA08();
  if (!v13)
  {
    v25 = v3;
    v22 = v11;
    v14 = v23;
    v15 = v24;
    v35 = 0;
    sub_214320BA4();
    sub_2146DA1C8();
    if (v27)
    {
      v35 = 2;
      sub_214320BF8();
      sub_2146DA1C8();
      (*(v14 + 8))(v8, v6);
      v17 = v15;
      v18 = v32;
      v19 = v22;
      *(v22 + 4) = v31;
      *(v19 + 80) = v18;
      *(v19 + 96) = v33;
      *(v19 + 112) = v34;
      v20 = v28;
      *v19 = v27;
      *(v19 + 16) = v20;
      v21 = v30;
      *(v19 + 32) = v29;
      *(v19 + 48) = v21;
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      LOBYTE(v27) = 1;
      sub_214328930(&qword_27C90CCA0, type metadata accessor for BIAURL, byte_2146FAD60);
      sub_2146DA1C8();
      (*(v14 + 8))(v8, v6);
      v19 = v22;
      sub_214328704(v5, v22, type metadata accessor for BIAURL);
      swift_storeEnumTagMultiPayload();
      v17 = v15;
    }

    sub_214328704(v19, v17, type metadata accessor for BIAUserAction);
  }

  return __swift_destroy_boxed_opaque_existential_1(v26);
}

unint64_t sub_2142B50E0()
{
  if (*v0)
  {
    return 0xD000000000000019;
  }

  else
  {
    return 0xD000000000000016;
  }
}

uint64_t sub_2142B511C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000016 && 0x80000002147981A0 == a2 || (sub_2146DA6A8() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000019 && 0x8000000214798180 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_2146DA6A8();

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
  return result;
}

uint64_t sub_2142B5200(uint64_t a1)
{
  v2 = sub_214320C4C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142B523C(uint64_t a1)
{
  v2 = sub_214320C4C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142B5278()
{
  sub_2146DA958();
  sub_2146D9698();
  return sub_2146DA9B8();
}

uint64_t sub_2142B52EC(uint64_t a1)
{
  sub_2146DA958();
  sub_2146D9698();
  return sub_2146DA9B8();
}

uint64_t sub_2142B541C(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90CCA8, &qword_2146F6E50);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - v6;
  v8 = *v1;
  v9 = *(v1 + 8);
  v10 = *(v1 + 3);
  v17 = *(v1 + 4);
  v18 = v10;
  v30 = v1[40];
  v19 = *(v1 + 3);
  v20 = v9;
  v11 = *(v1 + 8);
  v15 = *(v1 + 9);
  v16 = v11;
  v14 = v1[80];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214320C4C();
  sub_2146DAA28();
  v21[0] = 0;
  sub_214320CA0();
  sub_2146DA388();
  if (!v2)
  {
    v21[0] = v8;
    v22 = v20;
    v23 = v18;
    v24 = v17;
    v25 = v30;
    v26 = v19;
    v27 = v16;
    v28 = v15;
    v29 = v14;
    v31 = 1;
    sub_214320CF4();
    sub_2146DA388();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_2142B5600@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90CCC8, &qword_2146F6E58);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214320C4C();
  sub_2146DAA08();
  if (!v2)
  {
    LOBYTE(v13) = 0;
    sub_214320D48();
    sub_2146DA1C8();
    v12 = 1;
    sub_214320D9C();
    sub_2146DA1C8();
    (*(v6 + 8))(v8, v5);
    v10[2] = v15;
    v10[3] = v16;
    v10[4] = v17;
    v11 = v18;
    v10[0] = v13;
    v10[1] = v14;
    sub_214320DF0(v10, a2);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_2142B5830()
{
  if (*v0)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0xD000000000000019;
  }
}

uint64_t sub_2142B586C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0xD000000000000019 && 0x8000000214799680 == a2;
  if (v6 || (sub_2146DA6A8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000002147996A0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2146DA6A8();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_2142B594C(uint64_t a1)
{
  v2 = sub_21438E93C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142B5988(uint64_t a1)
{
  v2 = sub_21438E93C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142B59C4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x456E776F6E6B6E75;
  v4 = 0xEC000000726F7272;
  if (v2 != 1)
  {
    v3 = 0x56676E697373696DLL;
    v4 = 0xEC00000065756C61;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x546E776F6E6B6E75;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xEB00000000657079;
  }

  v7 = 0x456E776F6E6B6E75;
  v8 = 0xEC000000726F7272;
  if (*a2 != 1)
  {
    v7 = 0x56676E697373696DLL;
    v8 = 0xEC00000065756C61;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x546E776F6E6B6E75;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xEB00000000657079;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2146DA6A8();
  }

  return v11 & 1;
}

uint64_t sub_2142B5AEC()
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2142B5BA8(uint64_t a1)
{
  sub_2146D9698();
}

uint64_t sub_2142B5C50(uint64_t a1)
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

unint64_t sub_2142B5D08@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_21438817C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_2142B5D38(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000657079;
  v4 = 0xEC000000726F7272;
  v5 = 0x456E776F6E6B6E75;
  if (v2 != 1)
  {
    v5 = 0x56676E697373696DLL;
    v4 = 0xEC00000065756C61;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x546E776F6E6B6E75;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_2142B5E60(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C911C48, &unk_214731990);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21438E93C();
  sub_2146DAA28();
  if (!a3)
  {
    v15 = 0;
    sub_21438E9E4();
    goto LABEL_5;
  }

  if (a3 == 1)
  {
    v17 = 1;
    v16 = 0;
    sub_21438E9E4();
LABEL_5:
    sub_2146DA388();
    return (*(v7 + 8))(v9, v6);
  }

  v14 = 2;
  v13 = 0;
  sub_21438E9E4();
  sub_2146DA388();
  if (!v3)
  {
    v12 = 1;
    sub_2146DA328();
    return (*(v7 + 8))(v9, v6);
  }

  return (*(v7 + 8))(v9, v6);
}

void *sub_2142B6068@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_214357EA8(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

uint64_t sub_2142B60B0()
{
  v1 = 0x6C61565F70696863;
  if (*v0 != 1)
  {
    v1 = 0x6C61565F756E656DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD00000000000001CLL;
  }
}

uint64_t sub_2142B6110@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2143881C8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2142B6138(uint64_t a1)
{
  v2 = sub_214320E4C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142B6174(uint64_t a1)
{
  v2 = sub_214320E4C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142B61B0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 1885956195;
  if (v2 != 1)
  {
    v3 = 1970169197;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x64696C61766E69;
  }

  if (v2)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  v6 = 1885956195;
  if (*a2 != 1)
  {
    v6 = 1970169197;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x64696C61766E69;
  }

  if (*a2)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE700000000000000;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_2146DA6A8();
  }

  return v9 & 1;
}

uint64_t sub_2142B6294()
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2142B6328(uint64_t a1)
{
  sub_2146D9698();
}

uint64_t sub_2142B63A8(uint64_t a1)
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

unint64_t sub_2142B6438@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_214388350(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_2142B6468(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 1885956195;
  if (v2 != 1)
  {
    v4 = 1970169197;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x64696C61766E69;
  }

  if (!v5)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t sub_2142B6568(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for MBDChip(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MBDPersistentMenuItemContent(0);
  MEMORY[0x28223BE20](v7);
  v9 = (&v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90CCE0, &qword_2146F6E60);
  v24 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v11 = &v21 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214320E4C();
  sub_2146DAA28();
  sub_2143287C0(v2, v9, type metadata accessor for MBDPersistentMenuItemContent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v13 = v9[3];
      v32 = v9[2];
      v33 = v13;
      v34 = v9[4];
      v14 = v9[1];
      v30 = *v9;
      v31 = v14;
      LOBYTE(v25) = 2;
      v35 = 0;
      sub_214320EA0();
      v15 = v22;
      v16 = v23;
      sub_2146DA388();
      if (!v16)
      {
        v27 = v32;
        v28 = v33;
        v29 = v34;
        v25 = v30;
        v26 = v31;
        v35 = 2;
        sub_2142FBB00();
        sub_2146DA388();
      }

      (*(v24 + 8))(v11, v15);
      return sub_2142E1100(&v30);
    }

    else
    {
      LOBYTE(v30) = 0;
      LOBYTE(v25) = 0;
      sub_214320EA0();
      v20 = v22;
      sub_2146DA388();
      return (*(v24 + 8))(v11, v20);
    }
  }

  else
  {
    sub_214328704(v9, v6, type metadata accessor for MBDChip);
    LOBYTE(v30) = 1;
    LOBYTE(v25) = 0;
    sub_214320EA0();
    v18 = v22;
    v19 = v23;
    sub_2146DA388();
    if (!v19)
    {
      LOBYTE(v30) = 1;
      sub_214328930(&qword_27C903F50, type metadata accessor for MBDChip, byte_2146F7FE8);
      sub_2146DA388();
    }

    sub_21432887C(v6, type metadata accessor for MBDChip);
    return (*(v24 + 8))(v11, v18);
  }
}

uint64_t sub_2142B697C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v3 = type metadata accessor for MBDChip(0);
  MEMORY[0x28223BE20](v3);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90CCF8, &qword_2146F6E68);
  v21 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v20 - v7;
  v9 = type metadata accessor for MBDPersistentMenuItemContent(0);
  MEMORY[0x28223BE20](v9);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v24 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_214320E4C();
  v13 = v23;
  sub_2146DAA08();
  if (!v13)
  {
    v20[1] = v3;
    v23 = v11;
    v14 = v21;
    v15 = v22;
    v30 = 0;
    sub_214320EF4();
    sub_2146DA1C8();
    if (v25)
    {
      if (v25 == 1)
      {
        LOBYTE(v25) = 1;
        sub_214328930(&qword_27C903F48, type metadata accessor for MBDChip, aI_64);
        sub_2146DA1C8();
        (*(v14 + 8))(v8, v6);
        v16 = v23;
        sub_214328704(v5, v23, type metadata accessor for MBDChip);
      }

      else
      {
        v30 = 2;
        sub_2142FBA28();
        sub_2146DA1C8();
        (*(v14 + 8))(v8, v6);
        v17 = v28;
        v16 = v23;
        v23[2] = v27;
        v16[3] = v17;
        v16[4] = v29;
        v18 = v26;
        *v16 = v25;
        v16[1] = v18;
      }
    }

    else
    {
      (*(v14 + 8))(v8, v6);
      v16 = v23;
    }

    swift_storeEnumTagMultiPayload();
    sub_214328704(v16, v15, type metadata accessor for MBDPersistentMenuItemContent);
  }

  return __swift_destroy_boxed_opaque_existential_1(v24);
}

uint64_t sub_2142B6D58()
{
  v1 = 0x5F696A6F6D696E61;
  if (*v0 != 1)
  {
    v1 = 0x565F696A6F6D656DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_2142B6DCC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21438839C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2142B6DF4(uint64_t a1)
{
  v2 = sub_214320F48();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142B6E30(uint64_t a1)
{
  v2 = sub_214320F48();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142B6E6C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x696A6F6D656DLL;
  }

  else
  {
    v3 = 0x696A6F6D696E61;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x696A6F6D656DLL;
  }

  else
  {
    v5 = 0x696A6F6D696E61;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
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

uint64_t sub_2142B6F10()
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2142B6F90(uint64_t a1)
{
  sub_2146D9698();
}

uint64_t sub_2142B6FFC(uint64_t a1)
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

void sub_2142B7084(uint64_t *a1@<X8>)
{
  v2 = 0x696A6F6D696E61;
  if (*v1)
  {
    v2 = 0x696A6F6D656DLL;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_2142B7170(uint64_t a1)
{
  v22 = v2;
  v3 = MEMORY[0x28223BE20](a1);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90CD08, &qword_2146F6E70);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - v6;
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_214320F48();
  sub_2146DAA28();
  if (v8 < 0)
  {
    memcpy(v21, ((v8 & 0x7FFFFFFFFFFFFFFFLL) + 16), 0x27FAuLL);
    v20 = 1;
    v19[10238] = 0;
    sub_214320F9C(v21, v19);
    sub_214320FF8();
    v15 = v22;
    sub_2146DA388();
    if (!v15)
    {
      memcpy(v19, v21, 0x27FAuLL);
      v20 = 2;
      sub_2143210A0();
      sub_2146DA388();
    }

    (*(v5 + 8))(v7, v4);
    return sub_21432104C(v21);
  }

  else
  {
    v9 = *(v8 + 16);
    v10 = *(v8 + 24);
    v11 = *(v8 + 40);
    v17 = *(v8 + 32);
    v18 = v9;
    v12 = *(v8 + 48);
    LOBYTE(v21[0]) = 0;
    v19[0] = 0;
    sub_214320FF8();

    v13 = v22;
    sub_2146DA388();
    if (!v13)
    {
      v21[0] = v18;
      v21[1] = v10;
      v21[2] = v17;
      v21[3] = v11;
      LOBYTE(v21[4]) = v12;
      v19[0] = 1;
      sub_2143210F4();
      sub_2146DA388();
    }

    (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_2142B7474(uint64_t a1)
{
  v2 = MEMORY[0x28223BE20](a1);
  v19 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90CD30, &qword_2146F6E78);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17[-v6 - 16];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_214320F48();
  sub_2146DAA08();
  if (!v1)
  {
    v8 = v19;
    v18 = 0;
    sub_214321148();
    sub_2146DA1C8();
    v10 = (v5 + 8);
    if (v17[0])
    {
      v18 = 2;
      sub_21432119C();
      sub_2146DA1C8();
      (*v10)(v7, v4);
      v11 = swift_allocObject();
      memcpy((v11 + 16), v17, 0x27FAuLL);
      *v8 = v11 | 0x8000000000000000;
    }

    else
    {
      v18 = 1;
      sub_2143211F0();
      sub_2146DA1C8();
      (*v10)(v7, v4);
      v12 = *&v17[16];
      v13 = *&v17[24];
      v14 = v17[32];
      v16 = *v17;
      v15 = swift_allocObject();
      *(v15 + 16) = v16;
      *(v15 + 32) = v12;
      *(v15 + 40) = v13;
      *(v15 + 48) = v14;
      *v8 = v15;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v2);
}

unint64_t sub_2142B775C()
{
  if (*v0)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t sub_2142B77A8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_214388520(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2142B77D0(uint64_t a1)
{
  v2 = sub_214321244();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142B780C(uint64_t a1)
{
  v2 = sub_214321244();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142B7848(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x7069636974726170;
  v4 = 0xEB00000000746E61;
  if (v2 != 1)
  {
    v3 = 0x6E776F6E6B6E75;
    v4 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x4E79616C70736964;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xEB00000000656D61;
  }

  v7 = 0x7069636974726170;
  v8 = 0xEB00000000746E61;
  if (*a2 != 1)
  {
    v7 = 0x6E776F6E6B6E75;
    v8 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x4E79616C70736964;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xEB00000000656D61;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2146DA6A8();
  }

  return v11 & 1;
}

uint64_t sub_2142B7960()
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2142B7A14(uint64_t a1)
{
  sub_2146D9698();
}

uint64_t sub_2142B7AB4(uint64_t a1)
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

unint64_t sub_2142B7B64@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_214388698(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_2142B7B94(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000656D61;
  v4 = 0xEB00000000746E61;
  v5 = 0x7069636974726170;
  if (v2 != 1)
  {
    v5 = 0x6E776F6E6B6E75;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x4E79616C70736964;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_2142B7CB4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90CD50, &qword_2146F6E80);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - v5;
  v7 = *v1;
  v13 = v1[1];
  v14 = v7;
  v8 = *(v1 + 32);
  v9 = *(v1 + 33);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214321244();
  sub_2146DAA28();
  if (v9)
  {
    if (v9 != 1)
    {
      LOBYTE(v16) = 2;
      v19 = 0;
      sub_214321298();
      goto LABEL_8;
    }

    LOBYTE(v16) = 1;
    v19 = 0;
    sub_214321298();
    v10 = v15;
    sub_2146DA388();
    if (!v10)
    {
      LOBYTE(v16) = v14 & 1;
      *(&v16 + 1) = *(&v14 + 1);
      v19 = 2;
      sub_2143212EC();
LABEL_8:
      sub_2146DA388();
    }
  }

  else
  {
    LOBYTE(v16) = 0;
    v19 = 0;
    sub_214321298();
    v11 = v15;
    sub_2146DA388();
    if (!v11)
    {
      v17 = v13;
      v16 = v14;
      v18 = v8;
      v19 = 1;
      sub_214321340();
      goto LABEL_8;
    }
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_2142B7F14@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90CD78, &qword_2146F6E88);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214321244();
  sub_2146DAA08();
  if (!v2)
  {
    v20 = 0;
    sub_214321394();
    sub_2146DA1C8();
    v9 = v16;
    if (v16)
    {
      if (v16 == 1)
      {
        v20 = 2;
        sub_2143213E8();
        sub_2146DA1C8();
        (*(v6 + 8))(v8, v5);
        v10 = 0;
        v11 = v16;
        v12 = v17;
      }

      else
      {
        (*(v6 + 8))(v8, v5);
        v11 = 0;
        v12 = 0;
        v10 = 0;
      }

      v13 = 0uLL;
    }

    else
    {
      v20 = 1;
      sub_21432143C();
      sub_2146DA1C8();
      (*(v6 + 8))(v8, v5);
      v11 = v16;
      v12 = v17;
      v13 = v18;
      v10 = v19;
    }

    *a2 = v11;
    *(a2 + 8) = v12;
    *(a2 + 16) = v13;
    *(a2 + 32) = v10;
    *(a2 + 33) = v9;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2142B81C8()
{
  v1 = 0x5F50504733736D69;
  if (*v0 != 1)
  {
    v1 = 0x5F534352616D7367;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000019;
  }
}

uint64_t sub_2142B8230@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2143886E4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2142B8258(uint64_t a1)
{
  v2 = sub_214321490();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142B8294(uint64_t a1)
{
  v2 = sub_214321490();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142B82D0(char *a1, char *a2)
{
  if (*&aIms3gpp_2[8 * *a1] == *&aIms3gpp_2[8 * *a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_2146DA6A8();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_2142B8338()
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2142B8394(uint64_t a1)
{
  sub_2146D9698();
}

uint64_t sub_2142B83D4(uint64_t a1)
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

unint64_t sub_2142B842C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_21438886C(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_2142B8528(void *a1)
{
  v2 = v1;
  v21 = type metadata accessor for GSMARCSApplicationCharacteristic(0);
  MEMORY[0x28223BE20](v21);
  v22 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for IMS3GPPApplicationCharacteristic(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ApplicationCharacteristic(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90CD98, &qword_2146F6E90);
  v25 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v12 = &v20 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214321490();
  sub_2146DAA28();
  sub_2143287C0(v2, v10, type metadata accessor for ApplicationCharacteristic);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v14 = v22;
      sub_214328704(v10, v22, type metadata accessor for GSMARCSApplicationCharacteristic);
      v30 = 1;
      v29 = 0;
      sub_2143214E4();
      v15 = v23;
      v16 = v24;
      sub_2146DA388();
      if (!v16)
      {
        v28 = 2;
        sub_214328930(&qword_27C90CDB0, type metadata accessor for GSMARCSApplicationCharacteristic, byte_2146FCD18);
        sub_2146DA388();
      }

      sub_21432887C(v14, type metadata accessor for GSMARCSApplicationCharacteristic);
    }

    else
    {
      v32 = 2;
      v31 = 0;
      sub_2143214E4();
      v15 = v23;
      sub_2146DA388();
    }

    return (*(v25 + 8))(v12, v15);
  }

  else
  {
    sub_214328704(v10, v7, type metadata accessor for IMS3GPPApplicationCharacteristic);
    v27 = 0;
    sub_2143214E4();
    v18 = v23;
    v17 = v24;
    sub_2146DA388();
    if (!v17)
    {
      v26 = 1;
      sub_214328930(&qword_27C90CDB8, type metadata accessor for IMS3GPPApplicationCharacteristic, byte_2146FCCC8);
      sub_2146DA388();
    }

    sub_21432887C(v7, type metadata accessor for IMS3GPPApplicationCharacteristic);
    return (*(v25 + 8))(v12, v18);
  }
}

uint64_t sub_2142B896C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v26 = type metadata accessor for GSMARCSApplicationCharacteristic(0);
  MEMORY[0x28223BE20](v26);
  v25 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for IMS3GPPApplicationCharacteristic(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90CDC0, &qword_2146F6E98);
  v27 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v23 - v8;
  v10 = type metadata accessor for ApplicationCharacteristic(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v30 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_214321490();
  v14 = v29;
  sub_2146DAA08();
  if (!v14)
  {
    v15 = v6;
    v24 = v12;
    v29 = v10;
    v17 = v27;
    v16 = v28;
    v33 = 0;
    sub_214321538();
    sub_2146DA1C8();
    v18 = v17;
    if (v34)
    {
      if (v34 == 1)
      {
        v32 = 2;
        sub_214328930(&qword_27C90CDD0, type metadata accessor for GSMARCSApplicationCharacteristic, byte_2146FCCF0);
        v19 = v25;
        sub_2146DA1C8();
        (*(v18 + 8))(v9, v7);
        v20 = v16;
        v21 = v24;
        sub_214328704(v19, v24, type metadata accessor for GSMARCSApplicationCharacteristic);
      }

      else
      {
        (*(v17 + 8))(v9, v7);
        v20 = v16;
        v21 = v24;
      }
    }

    else
    {
      v31 = 1;
      sub_214328930(&qword_27C90CDD8, type metadata accessor for IMS3GPPApplicationCharacteristic, aIMF);
      sub_2146DA1C8();
      (*(v17 + 8))(v9, v7);
      v21 = v24;
      sub_214328704(v15, v24, type metadata accessor for IMS3GPPApplicationCharacteristic);
      v20 = v16;
    }

    swift_storeEnumTagMultiPayload();
    sub_214328704(v21, v20, type metadata accessor for ApplicationCharacteristic);
  }

  return __swift_destroy_boxed_opaque_existential_1(v30);
}

unint64_t sub_2142B8DD8()
{
  v1 = *v0;
  v2 = 0x565F657461647075;
  v3 = 0x5F68736572666572;
  v4 = 0x5F74736575716572;
  if (v1 != 3)
  {
    v4 = 0xD000000000000015;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD00000000000001FLL;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_2142B8E9C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2143888B8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2142B8EC4(uint64_t a1)
{
  v2 = sub_21432158C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142B8F00(uint64_t a1)
{
  v2 = sub_21432158C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142B8F48()
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2142B9014(uint64_t a1)
{
  sub_2146D9698();
}

uint64_t sub_2142B90CC(uint64_t a1)
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

unint64_t sub_2142B9194@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_214388AE0(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_2142B91C4(uint64_t *a1@<X8>)
{
  v2 = 0xE600000000000000;
  v3 = 0x657461647075;
  v4 = 0xE700000000000000;
  v5 = 0x74736575716572;
  if (*v1 != 2)
  {
    v5 = 0x5274736575716572;
    v4 = 0xEF65736E6F707365;
  }

  if (*v1)
  {
    v3 = 0x68736572666572;
    v2 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_2142B92FC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90CDE0, &qword_2146F6EA0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18[-1] - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21432158C();
  sub_2146DAA28();
  memcpy(v19, v3, 0x122uLL);
  v9 = sub_2143215E0(v19);
  v10 = sub_213FBF540(v19);
  v11 = v10;
  if (v9 > 1)
  {
    if (v9 == 2)
    {
      v17 = *v10;
      v13 = *(v10 + 16);
      v14 = *(v10 + 24);
      v15 = *(v10 + 32);
      LOBYTE(v18[0]) = 2;
      v20 = 0;
      sub_2143215EC();
      sub_2146DA388();
      if (!v2)
      {
        v18[0] = v17;
        *&v18[1] = v13;
        *(&v18[1] + 1) = v14;
        LOBYTE(v18[2]) = v15;
        v20 = 3;
        sub_214321694();
LABEL_13:
        sub_2146DA388();
      }
    }

    else
    {
      LOBYTE(v18[0]) = 3;
      v20 = 0;
      sub_2143215EC();
      sub_2146DA388();
      if (!v2)
      {
        memcpy(v18, v11, 0x122uLL);
        v12 = 4;
        goto LABEL_12;
      }
    }
  }

  else if (v9)
  {
    LOBYTE(v18[0]) = 1;
    v20 = 0;
    sub_2143215EC();
    sub_2146DA388();
    if (!v2)
    {
      memcpy(v18, v11, 0x122uLL);
      v12 = 2;
      goto LABEL_12;
    }
  }

  else
  {
    LOBYTE(v18[0]) = 0;
    v20 = 0;
    sub_2143215EC();
    sub_2146DA388();
    if (!v2)
    {
      memcpy(v18, v11, 0x122uLL);
      v12 = 1;
LABEL_12:
      v20 = v12;
      sub_214321640();
      goto LABEL_13;
    }
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_2142B95FC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90CE08, &qword_2146F6EA8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  v9 = a1[3];
  v13 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_21432158C();
  sub_2146DAA08();
  if (!v2)
  {
    v18 = 0;
    sub_2143216E8();
    sub_2146DA1C8();
    if (v19 > 1u)
    {
      if (v19 == 2)
      {
        v17 = 3;
        sub_2143217E8();
        sub_2146DA1C8();
        (*(v6 + 8))(v8, v5);
        v15[0] = v14[0];
        v15[1] = v14[1];
        LOBYTE(v15[2]) = v14[2];
        sub_21432183C(v15);
        v11 = v15;
LABEL_12:
        memcpy(v16, v11, sizeof(v16));
        memcpy(a2, v16, 0x122uLL);
        return __swift_destroy_boxed_opaque_existential_1(v13);
      }

      v17 = 4;
      sub_21432173C();
      sub_2146DA1C8();
      (*(v6 + 8))(v8, v5);
      memcpy(v14, v15, 0x122uLL);
      sub_214321790(v14);
    }

    else if (v19)
    {
      v17 = 2;
      sub_21432173C();
      sub_2146DA1C8();
      (*(v6 + 8))(v8, v5);
      memcpy(v14, v15, 0x122uLL);
      sub_214321894(v14);
    }

    else
    {
      v17 = 1;
      sub_21432173C();
      sub_2146DA1C8();
      (*(v6 + 8))(v8, v5);
      memcpy(v14, v15, 0x122uLL);
      sub_2143218EC(v14);
    }

    v11 = v14;
    goto LABEL_12;
  }

  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t sub_2142B99C8()
{
  v1 = *v0;
  v2 = 0x534A74656C6C6177;
  v3 = 0x565F7463656A626FLL;
  v4 = 0x61565F7961727261;
  if (v1 != 4)
  {
    v4 = 0x6C61565F6C6F6F62;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x565F676E69727473;
  if (v1 != 1)
  {
    v5 = 0x565F7265626D756ELL;
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

uint64_t sub_2142B9AAC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_214388B2C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2142B9AD4(uint64_t a1)
{
  v2 = sub_214321940();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142B9B10(uint64_t a1)
{
  v2 = sub_214321940();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142B9B60(uint64_t a1)
{
  sub_2146D9698();
}

unint64_t sub_2142B9C38@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_214388D98(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_2142B9C68(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x676E69727473;
  v5 = 0xE500000000000000;
  v6 = 0x7961727261;
  v7 = 1819242338;
  if (v2 != 4)
  {
    v7 = 1819047278;
  }

  if (v2 != 3)
  {
    v6 = v7;
    v5 = 0xE400000000000000;
  }

  v8 = 0x7265626D756ELL;
  if (v2 != 1)
  {
    v8 = 0x7463656A626FLL;
  }

  if (*v1)
  {
    v4 = v8;
    v3 = 0xE600000000000000;
  }

  if (*v1 <= 2u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t WalletJSON.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90CE28, &qword_2146F6EB0);
  v11 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v9 - v5;
  v10 = *v1;
  v7 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214321940();
  sub_2146DAA28();
  if (v7 > 2)
  {
    if (v7 == 3)
    {
      LOBYTE(v12) = 3;
      v13 = 0;
      sub_214321994();
      sub_2146DA388();
      if (v2)
      {
        return (*(v11 + 8))(v6, v4);
      }

      v12 = v10;
      v13 = 4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90CE40, &qword_2146F6EB8);
      sub_2143219E8();
      goto LABEL_17;
    }

    if (v7 != 4)
    {
      LOBYTE(v12) = 5;
      v13 = 0;
      sub_214321994();
      goto LABEL_17;
    }

    LOBYTE(v12) = 4;
    v13 = 0;
    sub_214321994();
    sub_2146DA388();
    if (!v2)
    {
      LOBYTE(v12) = 5;
      sub_2146DA338();
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        LOBYTE(v12) = 1;
        v13 = 0;
        sub_214321994();
        sub_2146DA388();
        if (!v2)
        {
          LOBYTE(v12) = 2;
          sub_2146DA368();
        }

        return (*(v11 + 8))(v6, v4);
      }

      LOBYTE(v12) = 2;
      v13 = 0;
      sub_214321994();
      sub_2146DA388();
      if (v2)
      {
        return (*(v11 + 8))(v6, v4);
      }

      v12 = v10;
      v13 = 3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90CE58, &qword_2146F6EC0);
      sub_214321AC0();
LABEL_17:
      sub_2146DA388();
      return (*(v11 + 8))(v6, v4);
    }

    LOBYTE(v12) = 0;
    v13 = 0;
    sub_214321994();
    sub_2146DA388();
    if (!v2)
    {
      LOBYTE(v12) = 1;
      sub_2146DA328();
    }
  }

  return (*(v11 + 8))(v6, v4);
}

uint64_t WalletJSON.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90CE68, &qword_2146F6EC8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214321940();
  sub_2146DAA08();
  if (!v2)
  {
    v17 = 0;
    sub_214321B4C();
    sub_2146DA1C8();
    v9 = v16;
    if (v16 > 2u)
    {
      if (v16 == 3)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90CE40, &qword_2146F6EB8);
        v17 = 4;
        sub_214321BA0();
LABEL_12:
        sub_2146DA1C8();
        (*(v6 + 8))(v8, v5);
        v12 = 0;
        v10 = v16;
        goto LABEL_15;
      }

      if (v16 != 4)
      {
        (*(v6 + 8))(v8, v5);
        v10 = 0;
        goto LABEL_14;
      }

      LOBYTE(v16) = 5;
      v11 = sub_2146DA178();
      (*(v6 + 8))(v8, v5);
      v12 = 0;
      v10 = v11 & 1;
    }

    else
    {
      if (v16)
      {
        if (v16 == 1)
        {
          LOBYTE(v16) = 2;
          v10 = sub_2146DA1A8();
          (*(v6 + 8))(v8, v5);
LABEL_14:
          v12 = 0;
          goto LABEL_15;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90CE58, &qword_2146F6EC0);
        v17 = 3;
        sub_214321C78();
        goto LABEL_12;
      }

      LOBYTE(v16) = 1;
      v10 = sub_2146DA168();
      v12 = v13;
      (*(v6 + 8))(v8, v5);
    }

LABEL_15:
    *a2 = v10;
    *(a2 + 8) = v12;
    *(a2 + 16) = v9;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_2142BA4BC()
{
  v1 = *v0;
  v2 = 0x5F72656B63697473;
  v3 = 0x746F68506576696CLL;
  if (v1 != 4)
  {
    v3 = 0xD000000000000012;
  }

  if (v1 != 3)
  {
    v2 = v3;
  }

  v4 = 0xD000000000000027;
  v5 = 0xD000000000000011;
  if (v1 != 1)
  {
    v5 = 0xD000000000000010;
  }

  if (*v0)
  {
    v4 = v5;
  }

  if (*v0 <= 2u)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2142BA59C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_214388DE4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2142BA5C4(uint64_t a1)
{
  v2 = sub_214321D04();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142BA600(uint64_t a1)
{
  v2 = sub_214321D04();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142BA648()
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2142BA744(uint64_t a1)
{
  sub_2146D9698();
}

uint64_t sub_2142BA82C(uint64_t a1)
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

unint64_t sub_2142BA924@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_214389048(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_2142BA954(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000646569;
  v4 = 0x6669636570736E75;
  v5 = 0xE700000000000000;
  v6 = 0x72656B63697473;
  v7 = 0xE90000000000006FLL;
  v8 = 0x746F68506576696CLL;
  if (v2 != 3)
  {
    v8 = 0x73654D6F69647561;
    v7 = 0xEC00000065676173;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x616D49696A6F6D65;
    v3 = 0xEA00000000006567;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_2142BAABC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90CE90, &qword_2146F6ED0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214321D04();
  sub_2146DAA28();
  memcpy(v27, v3, 0x139uLL);
  v9 = sub_214321D58(v27);
  v10 = sub_213FBF550(v27);
  if (v9 <= 1)
  {
    if (v9)
    {
      v21 = v10;
      LOBYTE(v26[0]) = 1;
      v28 = 0;
      sub_214321D64();
      sub_2146DA388();
      if (!v2)
      {
        memcpy(v26, v21, 0x111uLL);
        v28 = 2;
        sub_214321E60();
        goto LABEL_15;
      }
    }

    else
    {
      v14 = *v10;
      v15 = *(v10 + 8);
      LOBYTE(v26[0]) = 0;
      v28 = 0;
      sub_214321D64();
      sub_2146DA388();
      if (!v2)
      {
        *&v26[0] = v14;
        *(&v26[0] + 1) = v15;
        v28 = 1;
        sub_214321EB4();
        goto LABEL_15;
      }
    }
  }

  else if (v9 == 2)
  {
    v16 = v10;
    LOBYTE(v26[0]) = 2;
    v28 = 0;
    sub_214321D64();
    sub_2146DA388();
    if (!v2)
    {
      memcpy(v26, v16, 0x139uLL);
      v28 = 3;
      sub_2142FF1A0();
      goto LABEL_15;
    }
  }

  else if (v9 == 3)
  {
    v25 = *v10;
    v11 = *(v10 + 16);
    v12 = *(v10 + 24);
    v13 = *(v10 + 32);
    LOBYTE(v26[0]) = 3;
    v28 = 0;
    sub_214321D64();
    sub_2146DA388();
    if (!v2)
    {
      v26[0] = v25;
      *&v26[1] = v11;
      *(&v26[1] + 1) = v12;
      LOBYTE(v26[2]) = v13;
      v28 = 4;
      sub_214321E0C();
LABEL_15:
      sub_2146DA388();
    }
  }

  else
  {
    v25 = *v10;
    v17 = *(v10 + 16);
    v18 = *(v10 + 24);
    v19 = *(v10 + 32);
    v20 = *(v10 + 40);
    v23 = *(v10 + 48);
    v24 = v20;
    LOBYTE(v26[0]) = 4;
    v28 = 0;
    sub_214321D64();
    sub_2146DA388();
    if (!v2)
    {
      v26[0] = v25;
      *&v26[1] = v17;
      *(&v26[1] + 1) = v18;
      LOBYTE(v26[2]) = v19;
      *(&v26[2] + 1) = v24;
      *&v26[3] = v23;
      v28 = 5;
      sub_214321DB8();
      goto LABEL_15;
    }
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_2142BAE70@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90CEA8, &qword_2146F6ED8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  v9 = a1[3];
  v13 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_214321D04();
  sub_2146DAA08();
  if (!v2)
  {
    v18 = 0;
    sub_214321F08();
    sub_2146DA1C8();
    if (v19 <= 1u)
    {
      if (v19)
      {
        v17 = 2;
        sub_21432210C();
        sub_2146DA1C8();
        (*(v6 + 8))(v8, v5);
        memcpy(v15, v14, 0x111uLL);
        sub_214322160(v15);
      }

      else
      {
        v17 = 1;
        sub_2143221B8();
        sub_2146DA1C8();
        (*(v6 + 8))(v8, v5);
        v15[0] = v14[0];
        sub_21432220C(v15);
      }
    }

    else
    {
      if (v19 == 2)
      {
        v17 = 3;
        sub_2142FF14C();
        sub_2146DA1C8();
        (*(v6 + 8))(v8, v5);
        memcpy(v14, v15, 0x139uLL);
        sub_2143220B4(v14);
        v11 = v14;
LABEL_14:
        memcpy(v16, v11, sizeof(v16));
        memcpy(a2, v16, 0x139uLL);
        return __swift_destroy_boxed_opaque_existential_1(v13);
      }

      if (v19 == 3)
      {
        v17 = 4;
        sub_214322008();
        sub_2146DA1C8();
        (*(v6 + 8))(v8, v5);
        v15[0] = v14[0];
        v15[1] = v14[1];
        LOBYTE(v15[2]) = v14[2];
        sub_21432205C(v15);
      }

      else
      {
        v17 = 5;
        sub_214321F5C();
        sub_2146DA1C8();
        (*(v6 + 8))(v8, v5);
        v15[0] = v14[0];
        v15[1] = v14[1];
        LOBYTE(v15[2]) = v14[2];
        *(&v15[2] + 8) = *(&v14[2] + 8);
        sub_214321FB0(v15);
      }
    }

    v11 = v15;
    goto LABEL_14;
  }

  return __swift_destroy_boxed_opaque_existential_1(v13);
}

unint64_t sub_2142BB2BC()
{
  v1 = 0xD000000000000011;
  v2 = *v0;
  v3 = 0xD000000000000019;
  if (v2 != 5)
  {
    v3 = 0xD00000000000001BLL;
  }

  v4 = 0xD000000000000016;
  if (v2 != 3)
  {
    v4 = 0xD000000000000022;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  if (v2 == 1)
  {
    v1 = 0xD000000000000018;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000015;
  }

  if (*v0 <= 2u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_2142BB384@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_214389094(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2142BB3AC(uint64_t a1)
{
  v2 = sub_214322260();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142BB3E8(uint64_t a1)
{
  v2 = sub_214322260();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142BB438(uint64_t a1)
{
  sub_2146D9698();
}

unint64_t sub_2142BB548@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_21438932C(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_2142BB578@<X0>(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000676E69;
  v4 = 0x74697277646E6168;
  v5 = 0x8000000214786C70;
  v6 = 0xD00000000000001CLL;
  v7 = 0x8000000214786C90;
  v8 = 0xD000000000000013;
  result = 0xD000000000000015;
  if (v2 != 4)
  {
    v8 = 0xD000000000000015;
    v7 = 0x8000000214786CB0;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  if (v2 != 1)
  {
    v4 = 0xD000000000000010;
    v3 = 0x8000000214786C50;
  }

  if (!*v1)
  {
    v4 = 0xD000000000000012;
    v3 = 0x8000000214786C30;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
  return result;
}

uint64_t BalloonPlugin.Payload.encode(to:)(void *a1)
{
  v39 = type metadata accessor for MessagesAppCustomAcknowledgement(0);
  MEMORY[0x28223BE20](v39);
  v43 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for DigitalTouchBalloon(0);
  MEMORY[0x28223BE20](v38);
  v42 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for CombinedPluginAttachmentInfo(0);
  MEMORY[0x28223BE20](v37);
  v41 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for LinkPresentation.MessagesPayload(0);
  MEMORY[0x28223BE20](v36);
  v40 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for Handwriting(0);
  MEMORY[0x28223BE20](v35);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for MessagesAppBalloon(0);
  MEMORY[0x28223BE20](v34);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for BalloonPlugin.Payload(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90CEC0, &qword_2146F6EE0);
  v46 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v34 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214322260();
  v45 = v15;
  sub_2146DAA28();
  sub_2143287C0(v47, v12, type metadata accessor for BalloonPlugin.Payload);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v22 = v41;
      sub_214328704(v12, v41, type metadata accessor for CombinedPluginAttachmentInfo);
      v48 = 768;
      sub_2143222B4();
      v29 = v44;
      v23 = v45;
      sub_2146DA388();
      if (!v29)
      {
        HIBYTE(v48) = 4;
        sub_214328930(&qword_27C90CEE0, type metadata accessor for CombinedPluginAttachmentInfo, a1_45);
        sub_2146DA388();
      }

      v25 = type metadata accessor for CombinedPluginAttachmentInfo;
    }

    else if (EnumCaseMultiPayload == 4)
    {
      v22 = v42;
      sub_214328704(v12, v42, type metadata accessor for DigitalTouchBalloon);
      v48 = 1024;
      sub_2143222B4();
      v24 = v44;
      v23 = v45;
      sub_2146DA388();
      if (!v24)
      {
        HIBYTE(v48) = 5;
        sub_214328930(&qword_27C906960, type metadata accessor for DigitalTouchBalloon, byte_2146F8FD8);
        sub_2146DA388();
      }

      v25 = type metadata accessor for DigitalTouchBalloon;
    }

    else
    {
      v22 = v43;
      sub_214328704(v12, v43, type metadata accessor for MessagesAppCustomAcknowledgement);
      v48 = 1280;
      sub_2143222B4();
      v33 = v44;
      v23 = v45;
      sub_2146DA388();
      if (!v33)
      {
        HIBYTE(v48) = 6;
        sub_214328930(&qword_27C90CED8, type metadata accessor for MessagesAppCustomAcknowledgement, byte_2146FB058);
        sub_2146DA388();
      }

      v25 = type metadata accessor for MessagesAppCustomAcknowledgement;
    }

    v27 = v25;
    v28 = v22;
    goto LABEL_26;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_214328704(v12, v9, type metadata accessor for MessagesAppBalloon);
    v48 = 0;
    sub_2143222B4();
    v26 = v44;
    v23 = v45;
    sub_2146DA388();
    if (!v26)
    {
      HIBYTE(v48) = 1;
      sub_214328930(&qword_27C90CEF0, type metadata accessor for MessagesAppBalloon, byte_2146FB008);
      sub_2146DA388();
    }

    v27 = type metadata accessor for MessagesAppBalloon;
    v28 = v9;
LABEL_26:
    sub_21432887C(v28, v27);
    return (*(v46 + 8))(v23, v13);
  }

  v17 = v13;
  if (EnumCaseMultiPayload == 1)
  {
    sub_214328704(v12, v7, type metadata accessor for Handwriting);
    v48 = 256;
    sub_2143222B4();
    v19 = v44;
    v18 = v45;
    sub_2146DA388();
    if (!v19)
    {
      HIBYTE(v48) = 2;
      sub_214328930(&qword_27C90CEE8, type metadata accessor for Handwriting, protocol conformance descriptor for Handwriting);
      sub_2146DA388();
    }

    v20 = type metadata accessor for Handwriting;
    v21 = v7;
  }

  else
  {
    v30 = v40;
    sub_214328704(v12, v40, type metadata accessor for LinkPresentation.MessagesPayload);
    v48 = 512;
    sub_2143222B4();
    v31 = v44;
    v18 = v45;
    sub_2146DA388();
    if (!v31)
    {
      HIBYTE(v48) = 3;
      sub_214328930(&qword_27C9048A0, type metadata accessor for LinkPresentation.MessagesPayload, byte_214700648);
      sub_2146DA388();
    }

    v20 = type metadata accessor for LinkPresentation.MessagesPayload;
    v21 = v30;
  }

  sub_21432887C(v21, v20);
  return (*(v46 + 8))(v18, v17);
}

uint64_t BalloonPlugin.Payload.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v37 = type metadata accessor for MessagesAppCustomAcknowledgement(0);
  MEMORY[0x28223BE20](v37);
  v35 = v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for DigitalTouchBalloon(0);
  MEMORY[0x28223BE20](v36);
  v34 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for CombinedPluginAttachmentInfo(0);
  MEMORY[0x28223BE20](v39);
  v38 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for LinkPresentation.MessagesPayload(0);
  MEMORY[0x28223BE20](v32);
  v33 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for Handwriting(0);
  MEMORY[0x28223BE20](v30);
  v31 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MessagesAppBalloon(0);
  MEMORY[0x28223BE20](v8);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90CEF8, &qword_2146F6EE8);
  v40 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = v29 - v12;
  v14 = type metadata accessor for BalloonPlugin.Payload(0);
  MEMORY[0x28223BE20](v14);
  v16 = v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[3];
  v43 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_214322260();
  v18 = v42;
  sub_2146DAA08();
  if (!v18)
  {
    v29[1] = v8;
    v19 = v38;
    v42 = v16;
    v20 = v41;
    v50 = 0;
    sub_214322308();
    v21 = v13;
    sub_2146DA1C8();
    if (v51 > 2u)
    {
      v25 = v20;
      if (v51 == 3)
      {
        v47 = 4;
        sub_214328930(&qword_27C90CF10, type metadata accessor for CombinedPluginAttachmentInfo, byte_2146F8D80);
        sub_2146DA1C8();
        (*(v40 + 8))(v21, v11);
        v24 = v42;
        sub_214328704(v19, v42, type metadata accessor for CombinedPluginAttachmentInfo);
      }

      else if (v51 == 4)
      {
        v48 = 5;
        sub_214328930(&qword_27C906930, type metadata accessor for DigitalTouchBalloon, aY_72);
        v26 = v34;
        sub_2146DA1C8();
        (*(v40 + 8))(v21, v11);
        v24 = v42;
        sub_214328704(v26, v42, type metadata accessor for DigitalTouchBalloon);
      }

      else
      {
        v49 = 6;
        sub_214328930(&qword_27C90CF08, type metadata accessor for MessagesAppCustomAcknowledgement, byte_2146FB030);
        v28 = v35;
        sub_2146DA1C8();
        (*(v40 + 8))(v21, v11);
        v24 = v42;
        sub_214328704(v28, v42, type metadata accessor for MessagesAppCustomAcknowledgement);
      }
    }

    else if (v51)
    {
      if (v51 == 1)
      {
        v45 = 2;
        sub_214328930(&qword_27C90CF18, type metadata accessor for Handwriting, protocol conformance descriptor for Handwriting);
        v23 = v31;
        sub_2146DA1C8();
        (*(v40 + 8))(v13, v11);
        v24 = v42;
        sub_214328704(v23, v42, type metadata accessor for Handwriting);
      }

      else
      {
        v46 = 3;
        sub_214328930(&qword_27C904898, type metadata accessor for LinkPresentation.MessagesPayload, aM4);
        v27 = v33;
        sub_2146DA1C8();
        (*(v40 + 8))(v13, v11);
        v24 = v42;
        sub_214328704(v27, v42, type metadata accessor for LinkPresentation.MessagesPayload);
      }

      v25 = v20;
    }

    else
    {
      v44 = 1;
      sub_214328930(&qword_27C90CF20, type metadata accessor for MessagesAppBalloon, asc_2146FAFE0);
      sub_2146DA1C8();
      (*(v40 + 8))(v13, v11);
      v24 = v42;
      sub_214328704(v10, v42, type metadata accessor for MessagesAppBalloon);
      v25 = v20;
    }

    swift_storeEnumTagMultiPayload();
    sub_214328704(v24, v25, type metadata accessor for BalloonPlugin.Payload);
  }

  return __swift_destroy_boxed_opaque_existential_1(v43);
}

unint64_t sub_2142BC7E0()
{
  v1 = *v0;
  v2 = 0x5F6B636162706174;
  if (v1 == 5)
  {
    v3 = 0xD000000000000011;
  }

  else
  {
    v3 = 0xD000000000000012;
  }

  if (v1 != 3)
  {
    v2 = 0xD000000000000012;
  }

  if (*v0 > 4u)
  {
    v2 = v3;
  }

  v4 = 0xD000000000000015;
  if (v1 != 1)
  {
    v4 = 0xD000000000000011;
  }

  if (!*v0)
  {
    v4 = 0xD00000000000001CLL;
  }

  if (*v0 <= 2u)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2142BC8C8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_214389378(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2142BC8F0(uint64_t a1)
{
  v2 = sub_21432235C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142BC92C(uint64_t a1)
{
  v2 = sub_21432235C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142BC97C(uint64_t a1)
{
  sub_2146D9698();
}

unint64_t sub_2142BCAA0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_214389620(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_2142BCAD0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEF726F7461636964;
  v4 = 0x6E49676E69707974;
  v5 = 0xEC00000065676173;
  v6 = 0x73654D6F69647561;
  v7 = 0xEB00000000646574;
  v8 = 0x726F707075736E75;
  if (v2 != 4)
  {
    v8 = 0x706154696A6F6D65;
    v7 = 0xEC0000006B636162;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEB00000000656761;
  v10 = 0x7373654D74786574;
  if (v2 != 1)
  {
    v10 = 0x6B636162706174;
    v9 = 0xE700000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_2142BCC6C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90CF28, &qword_2146F6EF0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v52 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21432235C();
  sub_2146DAA28();
  v9 = v3[9];
  v63[8] = v3[8];
  v64[0] = v9;
  *(v64 + 9) = *(v3 + 153);
  v10 = v3[5];
  v63[4] = v3[4];
  v63[5] = v10;
  v11 = v3[7];
  v63[6] = v3[6];
  v63[7] = v11;
  v12 = v3[1];
  v63[0] = *v3;
  v63[1] = v12;
  v13 = v3[3];
  v63[2] = v3[2];
  v63[3] = v13;
  v14 = sub_2143223B0(v63);
  if (v14 > 2)
  {
    if (v14 == 3)
    {
      nullsub_1();
      v29 = v28;
      LOBYTE(v53) = 3;
      v65 = 0;
      sub_2143223B8();
      sub_2146DA388();
      if (!v2)
      {
        v30 = *v29;
        v31 = v29[1];
        v32 = v29[3];
        v55 = v29[2];
        v56 = v32;
        v53 = v30;
        v54 = v31;
        v65 = 4;
        sub_214322460();
        goto LABEL_18;
      }
    }

    else if (v14 == 4)
    {
      nullsub_1();
      v52 = *v22;
      v23 = *(v22 + 2);
      v24 = *(v22 + 24);
      LOBYTE(v53) = 4;
      v65 = 0;
      sub_2143223B8();
      sub_2146DA388();
      if (!v2)
      {
        v53 = v52;
        *&v54 = v23;
        BYTE8(v54) = v24;
        v65 = 5;
        sub_21408E85C();
        goto LABEL_18;
      }
    }

    else
    {
      nullsub_1();
      v42 = v41;
      LOBYTE(v53) = 5;
      v65 = 0;
      sub_2143223B8();
      sub_2146DA388();
      if (!v2)
      {
        v43 = *v42;
        v44 = v42[2];
        v54 = v42[1];
        v55 = v44;
        v53 = v43;
        v45 = v42[3];
        v46 = v42[4];
        v47 = v42[6];
        v58[0] = v42[5];
        v58[1] = v47;
        v56 = v45;
        v57 = v46;
        v48 = v42[7];
        v49 = v42[8];
        v50 = v42[9];
        v62 = *(v42 + 20);
        v60 = v49;
        v61 = v50;
        v59 = v48;
        v65 = 6;
        sub_21432240C();
        goto LABEL_18;
      }
    }
  }

  else if (v14)
  {
    if (v14 == 1)
    {
      nullsub_1();
      v16 = v15;
      LOBYTE(v53) = 1;
      v65 = 0;
      sub_2143223B8();
      sub_2146DA388();
      if (!v2)
      {
        v17 = *v16;
        v18 = v16[2];
        v54 = v16[1];
        v55 = v18;
        v53 = v17;
        v19 = v16[3];
        v20 = v16[4];
        v21 = v16[5];
        *(v58 + 9) = *(v16 + 89);
        v57 = v20;
        v58[0] = v21;
        v56 = v19;
        v65 = 2;
        sub_214322508();
LABEL_18:
        sub_2146DA388();
      }
    }

    else
    {
      nullsub_1();
      v34 = v33;
      LOBYTE(v53) = 2;
      v65 = 0;
      sub_2143223B8();
      sub_2146DA388();
      if (!v2)
      {
        v35 = *v34;
        v36 = v34[1];
        v37 = v34[3];
        v55 = v34[2];
        v56 = v37;
        v53 = v35;
        v54 = v36;
        v38 = v34[4];
        v39 = v34[5];
        v40 = v34[7];
        v58[1] = v34[6];
        v59 = v40;
        v57 = v38;
        v58[0] = v39;
        v65 = 3;
        sub_2143224B4();
        goto LABEL_18;
      }
    }
  }

  else
  {
    nullsub_1();
    v26 = *v25;
    v27 = *(v25 + 1);
    LOBYTE(v53) = 0;
    v65 = 0;
    sub_2143223B8();
    sub_2146DA388();
    if (!v2)
    {
      LOBYTE(v53) = v26;
      *(&v53 + 1) = v27;
      v65 = 1;
      sub_21432255C();
      goto LABEL_18;
    }
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_2142BD118@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90CF68, &qword_2146F6EF8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  v9 = a1[3];
  v48 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_21432235C();
  sub_2146DAA08();
  if (!v2)
  {
    v46 = 0;
    sub_2143225B0();
    sub_2146DA1C8();
    if (v47 > 2u)
    {
      if (v47 == 3)
      {
        v25 = 4;
        sub_214322670();
        sub_2146DA1C8();
        (*(v6 + 8))(v8, v5);
        v16 = v26;
        v17 = v27;
        v18 = v28;
        v19 = v29;
        sub_2143226C4(&v16);
      }

      else if (v47 == 4)
      {
        v25 = 5;
        sub_21408E808();
        sub_2146DA1C8();
        (*(v6 + 8))(v8, v5);
        v16 = v26;
        *&v17 = v27;
        BYTE8(v17) = BYTE8(v27);
        sub_214322664(&v16);
      }

      else
      {
        v25 = 6;
        sub_214322604();
        sub_2146DA1C8();
        (*(v6 + 8))(v8, v5);
        v23 = v33;
        *v24 = v34;
        *&v24[16] = v35;
        v20 = v30;
        v21[0] = v31[0];
        v21[1] = v31[1];
        v22 = v32;
        v16 = v26;
        v17 = v27;
        v18 = v28;
        v19 = v29;
        sub_214322658(&v16);
      }
    }

    else if (v47)
    {
      if (v47 == 1)
      {
        v25 = 2;
        sub_214322730();
        sub_2146DA1C8();
        (*(v6 + 8))(v8, v5);
        v20 = v30;
        v21[0] = v31[0];
        *(v21 + 9) = *(v31 + 9);
        v16 = v26;
        v17 = v27;
        v18 = v28;
        v19 = v29;
        sub_214322784(&v16);
      }

      else
      {
        v25 = 3;
        sub_2143226D0();
        sub_2146DA1C8();
        (*(v6 + 8))(v8, v5);
        v20 = v30;
        v21[0] = v31[0];
        v21[1] = v31[1];
        v22 = v32;
        v16 = v26;
        v17 = v27;
        v18 = v28;
        v19 = v29;
        sub_214322724(&v16);
      }
    }

    else
    {
      v25 = 1;
      sub_214322790();
      sub_2146DA1C8();
      (*(v6 + 8))(v8, v5);
      LOBYTE(v16) = v26;
      *(&v16 + 1) = *(&v26 + 1);
      sub_2143227E4(&v16);
    }

    v44 = v23;
    *v45 = *v24;
    *&v45[9] = *&v24[9];
    v40 = v20;
    v41 = v21[0];
    v42 = v21[1];
    v43 = v22;
    v36 = v16;
    v37 = v17;
    v38 = v18;
    v39 = v19;
    v11 = *v45;
    a2[8] = v23;
    a2[9] = v11;
    *(a2 + 153) = *&v45[9];
    v12 = v41;
    a2[4] = v40;
    a2[5] = v12;
    v13 = v43;
    a2[6] = v42;
    a2[7] = v13;
    v14 = v37;
    *a2 = v36;
    a2[1] = v14;
    v15 = v39;
    a2[2] = v38;
    a2[3] = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(v48);
}

unint64_t sub_2142BD66C()
{
  v1 = 0x61565F726568746FLL;
  if (*v0 != 2)
  {
    v1 = 0xD00000000000001BLL;
  }

  v2 = 0xD00000000000001DLL;
  if (*v0)
  {
    v2 = 0xD000000000000015;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_2142BD6FC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21438966C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2142BD724(uint64_t a1)
{
  v2 = sub_2143227EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142BD760(uint64_t a1)
{
  v2 = sub_2143227EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142BD79C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x726568746FLL;
  v5 = 0x8000000214786D20;
  if (v2 != 1)
  {
    v4 = 0xD000000000000015;
    v3 = 0x8000000214786D20;
  }

  if (*a1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x7373656E69737562;
  }

  if (v2)
  {
    v7 = v3;
  }

  else
  {
    v7 = 0xEF6567617373654DLL;
  }

  v8 = 0x726568746FLL;
  if (*a2 == 1)
  {
    v5 = 0xE500000000000000;
  }

  else
  {
    v8 = 0xD000000000000015;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x7373656E69737562;
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xEF6567617373654DLL;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2146DA6A8();
  }

  return v11 & 1;
}

uint64_t sub_2142BD898()
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2142BD948(uint64_t a1)
{
  sub_2146D9698();
}

uint64_t sub_2142BD9E4(uint64_t a1)
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

unint64_t sub_2142BDA90@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_214389834(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_2142BDAC0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEF6567617373654DLL;
  v4 = 0xE500000000000000;
  v5 = 0x726568746FLL;
  if (v2 != 1)
  {
    v5 = 0xD000000000000015;
    v4 = 0x8000000214786D20;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x7373656E69737562;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_2142BDBDC(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for BusinessMessage(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for EncodedAppData.EncodedContent(0);
  MEMORY[0x28223BE20](v7);
  v9 = (&v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90CFA0, &qword_2146F6F00);
  v25 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v11 = &v22 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143227EC();
  sub_2146DAA28();
  sub_2143287C0(v2, v9, type metadata accessor for EncodedAppData.EncodedContent);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v14 = *v9;
      v13 = v9[1];
      LOBYTE(v26) = 1;
      v28 = 0;
      sub_214322840();
      v15 = v23;
      v16 = v24;
      sub_2146DA388();
      if (!v16)
      {
        v26 = v14;
        v27 = v13;
        v17 = 2;
LABEL_10:
        v28 = v17;
        sub_214322894();
        sub_2146DA388();
      }
    }

    else
    {
      v14 = *v9;
      v13 = v9[1];
      LOBYTE(v26) = 2;
      v28 = 0;
      sub_214322840();
      v15 = v23;
      v21 = v24;
      sub_2146DA388();
      if (!v21)
      {
        v26 = v14;
        v27 = v13;
        v17 = 3;
        goto LABEL_10;
      }
    }

    (*(v25 + 8))(v11, v15);
    return sub_213FB54FC(v14, v13);
  }

  sub_214328704(v9, v6, type metadata accessor for BusinessMessage);
  LOBYTE(v26) = 0;
  v28 = 0;
  sub_214322840();
  v19 = v23;
  v18 = v24;
  sub_2146DA388();
  if (!v18)
  {
    LOBYTE(v26) = 1;
    sub_214328930(&qword_27C90CFC0, type metadata accessor for BusinessMessage, aQ_11);
    sub_2146DA388();
  }

  sub_21432887C(v6, type metadata accessor for BusinessMessage);
  return (*(v25 + 8))(v11, v19);
}

uint64_t sub_2142BDF98@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v3 = type metadata accessor for BusinessMessage(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90CFC8, &qword_2146F6F08);
  v21 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v19 - v7;
  v9 = type metadata accessor for EncodedAppData.EncodedContent(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v24 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_2143227EC();
  v13 = v23;
  sub_2146DAA08();
  if (!v13)
  {
    v20 = v11;
    v23 = v9;
    v14 = v21;
    v15 = v22;
    v26 = 0;
    sub_2143228E8();
    sub_2146DA1C8();
    if (v25)
    {
      v26 = 2;
      sub_21432293C();
      sub_2146DA1C8();
      (*(v14 + 8))(v8, v6);
      v17 = v15;
      v18 = v20;
      *v20 = v25;
    }

    else
    {
      LOBYTE(v25) = 1;
      sub_214328930(&qword_27C90CFE0, type metadata accessor for BusinessMessage, byte_2146FAF40);
      sub_2146DA1C8();
      (*(v14 + 8))(v8, v6);
      v18 = v20;
      sub_214328704(v5, v20, type metadata accessor for BusinessMessage);
      v17 = v15;
    }

    swift_storeEnumTagMultiPayload();
    sub_214328704(v18, v17, type metadata accessor for EncodedAppData.EncodedContent);
  }

  return __swift_destroy_boxed_opaque_existential_1(v24);
}

uint64_t sub_2142BE3B0()
{
  v1 = 0x6C61565F63747361;
  if (*v0 != 1)
  {
    v1 = 0x61565F726568746FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000021;
  }
}

uint64_t sub_2142BE41C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_214389880(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2142BE444(uint64_t a1)
{
  v2 = sub_214322990();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142BE480(uint64_t a1)
{
  v2 = sub_214322990();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142BE4BC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x726568746FLL;
  }

  else
  {
    v3 = 1668576097;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (*a2)
  {
    v5 = 0x726568746FLL;
  }

  else
  {
    v5 = 1668576097;
  }

  if (*a2)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
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

uint64_t sub_2142BE558()
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2142BE5D0(uint64_t a1)
{
  sub_2146D9698();
}

uint64_t sub_2142BE634(uint64_t a1)
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

void sub_2142BE6B4(uint64_t *a1@<X8>)
{
  v2 = 1668576097;
  if (*v1)
  {
    v2 = 0x726568746FLL;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_2142BE798(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90CFE8, &qword_2146F6F10);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214322990();
  sub_2146DAA28();
  sub_2143229E4(v3, v15);
  if (v16)
  {
    v10 = *v15;
    v9 = *&v15[8];
    v13[0] = 1;
    v14 = 0;
    sub_214322A40();
    sub_2146DA388();
    if (!v2)
    {
      *v13 = v10;
      *&v13[8] = v9;
      v14 = 2;
      sub_214322A94();
      sub_2146DA388();
    }

    (*(v6 + 8))(v8, v5);
    return sub_213FB54FC(v10, v9);
  }

  else
  {
    memcpy(v13, v15, sizeof(v13));
    v14 = 0;
    v12[7] = 0;
    sub_214322A40();
    sub_2146DA388();
    if (!v2)
    {
      v14 = 1;
      sub_214322AE8();
      sub_2146DA388();
    }

    sub_214309B44(v13);
    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_2142BE9FC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v13 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90D010, &qword_2146F6F18);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214322990();
  sub_2146DAA08();
  if (!v2)
  {
    v8 = v13;
    v17 = 0;
    sub_214322B3C();
    sub_2146DA1C8();
    v10 = (v5 + 8);
    if (v14)
    {
      v17 = 2;
      sub_214322B90();
      sub_2146DA1C8();
      (*v10)(v7, v4);
      v11 = v14;
      v18 = 1;
    }

    else
    {
      v17 = 1;
      sub_214322BE4();
      sub_2146DA1C8();
      (*v10)(v7, v4);
      v12 = v14;
      memcpy(v16, v15, sizeof(v16));
      v11 = v14;
      v18 = 0;
    }

    *v8 = v11;
    memcpy((v8 + 16), v16, 0x1C9uLL);
    *(v8 + 473) = v18;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_2142BECAC()
{
  v1 = 0xD000000000000016;
  if (*v0 == 2)
  {
    v1 = 0xD000000000000014;
  }

  v2 = 0xD000000000000018;
  if (!*v0)
  {
    v2 = 0xD000000000000017;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_2142BED20@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_214389A04(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2142BED48(uint64_t a1)
{
  v2 = sub_214322C38();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142BED84(uint64_t a1)
{
  v2 = sub_214322C38();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142BEDC0(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xEE00657461647055;
  v3 = 0xD000000000000010;
  v4 = *a1;
  if (v4 == 1)
  {
    v5 = 0x796C6E4F656D616ELL;
  }

  else
  {
    v5 = 0xD000000000000010;
  }

  if (v4 == 1)
  {
    v6 = 0xEE00657461647055;
  }

  else
  {
    v6 = 0x8000000214786D70;
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD000000000000012;
  }

  if (v4)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0x8000000214786D40;
  }

  if (*a2 == 1)
  {
    v3 = 0x796C6E4F656D616ELL;
  }

  else
  {
    v2 = 0x8000000214786D70;
  }

  if (*a2)
  {
    v9 = v3;
  }

  else
  {
    v9 = 0xD000000000000012;
  }

  if (*a2)
  {
    v10 = v2;
  }

  else
  {
    v10 = 0x8000000214786D40;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2146DA6A8();
  }

  return v11 & 1;
}

uint64_t sub_2142BEEA8()
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2142BEF64(uint64_t a1)
{
  sub_2146D9698();
}

uint64_t sub_2142BF00C(uint64_t a1)
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

unint64_t sub_2142BF0C4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_214389BC4(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_2142BF0F4(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEE00657461647055;
  v4 = 0x796C6E4F656D616ELL;
  if (v2 != 1)
  {
    v4 = 0xD000000000000010;
    v3 = 0x8000000214786D70;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xD000000000000012;
  }

  if (v5)
  {
    v3 = 0x8000000214786D40;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t NameAndPhoto.UpdateType.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90D030, &qword_2146F6F20);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v28 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214322C38();
  sub_2146DAA28();
  memcpy(v31, v3, 0x261uLL);
  v9 = sub_214322C8C(v31);
  v10 = sub_213FBF560(v31);
  v11 = v10;
  if (v9)
  {
    if (v9 == 1)
    {
      v12 = *v10;
      v28 = *(v10 + 16);
      v29 = v12;
      v13 = *(v10 + 32);
      v14 = *(v10 + 40);
      LOBYTE(v30[0]) = 1;
      v32 = 0;
      sub_214322C98();
      sub_2146DA388();
      if (!v2)
      {
        v30[0] = v29;
        v30[1] = v28;
        *&v30[2] = v13;
        BYTE8(v30[2]) = v14;
        v32 = 2;
        sub_214322D40();
LABEL_9:
        sub_2146DA388();
      }
    }

    else
    {
      LOBYTE(v30[0]) = 2;
      v32 = 0;
      sub_214322C98();
      sub_2146DA388();
      if (!v2)
      {
        v15 = *v11;
        v16 = v11[1];
        v17 = v11[3];
        v30[2] = v11[2];
        v30[3] = v17;
        v30[0] = v15;
        v30[1] = v16;
        v18 = v11[4];
        v19 = v11[5];
        v20 = v11[7];
        v30[6] = v11[6];
        v30[7] = v20;
        v30[4] = v18;
        v30[5] = v19;
        v21 = v11[8];
        v22 = v11[9];
        v23 = v11[11];
        v30[10] = v11[10];
        v30[11] = v23;
        v30[8] = v21;
        v30[9] = v22;
        v24 = v11[12];
        v25 = v11[13];
        v26 = v11[14];
        *(&v30[14] + 9) = *(v11 + 233);
        v30[13] = v25;
        v30[14] = v26;
        v30[12] = v24;
        v32 = 3;
        sub_214322CEC();
        goto LABEL_9;
      }
    }
  }

  else
  {
    LOBYTE(v30[0]) = 0;
    v32 = 0;
    sub_214322C98();
    sub_2146DA388();
    if (!v2)
    {
      memcpy(v30, v11, 0x261uLL);
      v32 = 1;
      sub_214322D94();
      goto LABEL_9;
    }
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t NameAndPhoto.UpdateType.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90D060, &qword_2146F6F28);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  v9 = a1[3];
  v13 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_214322C38();
  sub_2146DAA08();
  if (!v2)
  {
    v18 = 0;
    sub_214322DE8();
    sub_2146DA1C8();
    if (v19)
    {
      if (v19 == 1)
      {
        v17 = 2;
        sub_214322F14();
        sub_2146DA1C8();
        (*(v6 + 8))(v8, v5);
        v15[0] = v14[0];
        v15[1] = v14[1];
        *&v15[2] = *&v14[2];
        BYTE8(v15[2]) = BYTE8(v14[2]);
        sub_214322F68(v15);
      }

      else
      {
        v17 = 3;
        sub_214322E3C();
        sub_2146DA1C8();
        (*(v6 + 8))(v8, v5);
        v15[12] = v14[12];
        v15[13] = v14[13];
        v15[14] = v14[14];
        *(&v15[14] + 9) = *(&v14[14] + 9);
        v15[8] = v14[8];
        v15[9] = v14[9];
        v15[10] = v14[10];
        v15[11] = v14[11];
        v15[4] = v14[4];
        v15[5] = v14[5];
        v15[6] = v14[6];
        v15[7] = v14[7];
        v15[0] = v14[0];
        v15[1] = v14[1];
        v15[2] = v14[2];
        v15[3] = v14[3];
        sub_214322E90(v15);
      }

      v11 = v15;
    }

    else
    {
      v17 = 1;
      sub_214322FEC();
      sub_2146DA1C8();
      (*(v6 + 8))(v8, v5);
      memcpy(v14, v15, 0x261uLL);
      sub_214323040(v14);
      v11 = v14;
    }

    memcpy(v16, v11, sizeof(v16));
    memcpy(a2, v16, 0x261uLL);
  }

  return __swift_destroy_boxed_opaque_existential_1(v13);
}

unint64_t sub_2142BF8A4()
{
  v1 = 0x61565F64696C6F73;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000014;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000025;
  }
}

uint64_t sub_2142BF914@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_214389C10(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2142BF93C(uint64_t a1)
{
  v2 = sub_2143230C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142BF978(uint64_t a1)
{
  v2 = sub_2143230C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142BF9B4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x72477261656E696CLL;
  }

  else
  {
    v3 = 0x64696C6F73;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xEE00746E65696461;
  }

  if (*a2)
  {
    v5 = 0x72477261656E696CLL;
  }

  else
  {
    v5 = 0x64696C6F73;
  }

  if (*a2)
  {
    v6 = 0xEE00746E65696461;
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

uint64_t sub_2142BFA64()
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2142BFAF0(uint64_t a1)
{
  sub_2146D9698();
}

uint64_t sub_2142BFB68(uint64_t a1)
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

void sub_2142BFBFC(uint64_t *a1@<X8>)
{
  v2 = 0x64696C6F73;
  if (*v1)
  {
    v2 = 0x72477261656E696CLL;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xEE00746E65696461;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t AvatarRecipe.BackgroundRepresentation.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90D088, &qword_2146F6F30);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - v6;
  v13 = *v1;
  v8 = v1[1];
  v9 = v1[2];
  v10 = v1[3];
  v11 = *(v1 + 32);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143230C0();
  sub_2146DAA28();
  if (v11)
  {
    LOBYTE(v14) = 1;
    v18 = 0;
    sub_214323114();
    sub_2146DA388();
    if (!v2)
    {
      v14 = v13;
      v18 = 2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A848, &qword_2146F5FA0);
      sub_21430F8FC();
LABEL_6:
      sub_2146DA388();
    }
  }

  else
  {
    LOBYTE(v14) = 0;
    v18 = 0;
    sub_214323114();
    sub_2146DA388();
    if (!v2)
    {
      v14 = v13;
      v15 = v8;
      v16 = v9;
      v17 = v10;
      v18 = 1;
      sub_2142FCF88();
      goto LABEL_6;
    }
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t AvatarRecipe.BackgroundRepresentation.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90D0A0, &qword_2146F6F38);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143230C0();
  sub_2146DAA08();
  if (!v2)
  {
    v17 = 0;
    sub_214323168();
    sub_2146DA1C8();
    v10 = v14;
    if (v14)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90A848, &qword_2146F5FA0);
      v17 = 2;
      sub_21430F5F0();
      sub_2146DA1C8();
      (*(v6 + 8))(v8, v5);
      v11 = 0;
      v12 = v14;
      v13 = 0uLL;
    }

    else
    {
      v17 = 1;
      sub_2142FCE0C();
      sub_2146DA1C8();
      (*(v6 + 8))(v8, v5);
      v12 = v14;
      v13 = v15;
      v11 = v16;
    }

    *a2 = v12;
    *(a2 + 8) = v13;
    *(a2 + 24) = v11;
    *(a2 + 32) = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_2142C01CC()
{
  v1 = 0x565F6F5465766F6DLL;
  v2 = 0x565F6F54656E696CLL;
  if (*v0 != 2)
  {
    v2 = 0x5F6F546576727563;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000027;
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

uint64_t sub_2142C025C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_214389D8C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2142C0284(uint64_t a1)
{
  v2 = sub_2143231BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142C02C0(uint64_t a1)
{
  v2 = sub_2143231BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142C0308()
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2142C03C8(uint64_t a1)
{
  sub_2146D9698();
}

uint64_t sub_2142C0474(uint64_t a1)
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

unint64_t sub_2142C0530@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_214389F64(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_2142C0560(uint64_t *a1@<X8>)
{
  v2 = 0xE600000000000000;
  v3 = 0x6F5465766F6DLL;
  v4 = 0xE700000000000000;
  v5 = 0x6F546576727563;
  if (*v1 != 2)
  {
    v5 = 0x74615065736F6C63;
    v4 = 0xE900000000000068;
  }

  if (*v1)
  {
    v3 = 0x6F54656E696CLL;
    v2 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t AvatarRecipe.MonogramRecipe.CommandType.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90D0B0, &qword_2146F6F40);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - v6;
  v8 = *v1;
  v12 = v1[1];
  v13 = v8;
  v9 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143231BC();
  sub_2146DAA28();
  if (v9 > 1)
  {
    if (v9 != 2)
    {
      LOBYTE(v14) = 3;
      v16 = 0;
      sub_214323210();
      goto LABEL_12;
    }

    LOBYTE(v14) = 2;
    v16 = 0;
    sub_214323210();
    sub_2146DA388();
    if (!v2)
    {
      v14 = v13;
      v16 = 3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90D0C8, &qword_2146F6F48);
      sub_214323264();
LABEL_12:
      sub_2146DA388();
    }
  }

  else if (v9)
  {
    LOBYTE(v14) = 1;
    v16 = 0;
    sub_214323210();
    sub_2146DA388();
    if (!v2)
    {
      v14 = v13;
      v15 = v12;
      v10 = 2;
      goto LABEL_10;
    }
  }

  else
  {
    LOBYTE(v14) = 0;
    v16 = 0;
    sub_214323210();
    sub_2146DA388();
    if (!v2)
    {
      v14 = v13;
      v15 = v12;
      v10 = 1;
LABEL_10:
      v16 = v10;
      sub_21430E274();
      goto LABEL_12;
    }
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t AvatarRecipe.MonogramRecipe.CommandType.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90D0D8, &qword_2146F6F50);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143231BC();
  sub_2146DAA08();
  if (!v2)
  {
    v14 = 0;
    sub_2143232E8();
    sub_2146DA1C8();
    v9 = v13;
    if (v13 > 1u)
    {
      if (v13 == 2)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90D0C8, &qword_2146F6F48);
        v14 = 3;
        sub_21432333C();
        sub_2146DA1C8();
        (*(v6 + 8))(v8, v5);
        *&v11 = v13;
      }

      else
      {
        (*(v6 + 8))(v8, v5);
        v11 = 0uLL;
      }
    }

    else
    {
      if (v13)
      {
        v10 = 2;
      }

      else
      {
        v10 = 1;
      }

      v14 = v10;
      sub_21430E148();
      sub_2146DA1C8();
      (*(v6 + 8))(v8, v5);
      v11 = v13;
    }

    *a2 = v11;
    *(a2 + 16) = v9;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2142C0BE0()
{
  v1 = 0x6D6172676F6E6F6DLL;
  if (*v0 != 1)
  {
    v1 = 0x61565F696A6F6D65;
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

uint64_t sub_2142C0C54@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_214389FB0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2142C0C7C(uint64_t a1)
{
  v2 = sub_2143233C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142C0CB8(uint64_t a1)
{
  v2 = sub_2143233C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142C0D00()
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_2142C0DC0(uint64_t a1)
{
  sub_2146D9698();
}

uint64_t sub_2142C0E6C(uint64_t a1)
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

unint64_t sub_2142C0F28@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_21438A134(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_2142C0F58(uint64_t *a1@<X8>)
{
  v2 = 0xEA00000000006574;
  v3 = 0x7465756F686C6973;
  v4 = 0x696A6F6D65;
  if (*v1 != 2)
  {
    v4 = 0x6567616D69;
  }

  if (*v1)
  {
    v3 = 0x6D6172676F6E6F6DLL;
    v2 = 0xE800000000000000;
  }

  if (*v1 <= 1u)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = 0xE500000000000000;
  }

  *a1 = v5;
  a1[1] = v2;
}

uint64_t AvatarRecipe.Recipe.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90D0F0, &qword_2146F6F58);
  v18 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v14 - v4;
  v6 = *v1;
  v15 = v1[1];
  v16 = v6;
  v7 = v1[3];
  v14 = v1[2];
  v8 = *(v1 + 32);
  v9 = *(v1 + 33);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143233C0();
  sub_2146DAA28();
  if (v9)
  {
    if (v9 != 1)
    {
      if (v14 | v15 | v16 | v7)
      {
        v12 = 0;
      }

      else
      {
        v12 = v8 == 0;
      }

      if (v12)
      {
        LOBYTE(v19) = 0;
      }

      else
      {
        LOBYTE(v19) = 3;
      }

      v24 = 0;
      sub_214323414();
      goto LABEL_14;
    }

    LOBYTE(v19) = 2;
    v24 = 0;
    sub_214323414();
    v10 = v17;
    sub_2146DA388();
    if (!v10)
    {
      v19 = v16;
      v20 = v15;
      v21 = v14;
      v22 = v7;
      v23 = v8;
      v24 = 2;
      sub_214323468();
LABEL_14:
      sub_2146DA388();
    }
  }

  else
  {
    LOBYTE(v19) = 1;
    v24 = 0;
    sub_214323414();
    v11 = v17;
    sub_2146DA388();
    if (!v11)
    {
      v19 = v16;
      v20 = v15;
      v21 = v14;
      v24 = 1;
      sub_2143234BC();
      goto LABEL_14;
    }
  }

  return (*(v18 + 8))(v5, v3);
}

uint64_t AvatarRecipe.Recipe.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90D118, &qword_2146F6F60);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2143233C0();
  sub_2146DAA08();
  if (!v2)
  {
    v22 = 0;
    sub_214323510();
    sub_2146DA1C8();
    if (v17 > 1u)
    {
      if (v17 == 2)
      {
        v22 = 2;
        sub_214323564();
        sub_2146DA1C8();
        (*(v6 + 8))(v8, v5);
        v9 = v17;
        v10 = v18;
        v11 = v19;
        v12 = v20;
        v14 = 1;
        v13 = v21;
      }

      else
      {
        (*(v6 + 8))(v8, v5);
        v10 = 0;
        v11 = 0;
        v12 = 0;
        v13 = 0;
        v14 = 2;
        v9 = 1;
      }
    }

    else if (v17)
    {
      v22 = 1;
      sub_2143235B8();
      sub_2146DA1C8();
      (*(v6 + 8))(v8, v5);
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v9 = v17;
      v10 = v18;
      v11 = v19;
    }

    else
    {
      (*(v6 + 8))(v8, v5);
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 2;
    }

    *a2 = v9;
    *(a2 + 8) = v10;
    *(a2 + 16) = v11;
    *(a2 + 24) = v12;
    *(a2 + 32) = v13;
    *(a2 + 33) = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_2142C160C()
{
  v1 = *v0;
  v2 = 0x565F736F746F6870;
  v3 = 0x5F63696D616E7964;
  if (v1 == 5)
  {
    v3 = 0xD000000000000011;
  }

  v4 = 0x6D6172676F6E6F6DLL;
  if (v1 != 3)
  {
    v4 = 0x746E656964617267;
  }

  if (*v0 > 4u)
  {
    v4 = v3;
  }

  if (v1 != 1)
  {
    v2 = 0x565F696A6F6D656DLL;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000016;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_2142C1714@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21438A180(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2142C173C(uint64_t a1)
{
  v2 = sub_21432360C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2142C1778(uint64_t a1)
{
  v2 = sub_21432360C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2142C17C8(uint64_t a1)
{
  sub_2146D9698();
}

unint64_t sub_2142C18C0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_21438A43C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_2142C18F0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x736F746F6870;
  v5 = 0xE800000000000000;
  v6 = 0x746E656964617267;
  v7 = 0xEB00000000584656;
  v8 = 0x746E656964617267;
  if (v2 != 4)
  {
    v8 = 0x63696D616E7964;
    v7 = 0xE700000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE600000000000000;
  v10 = 0x696A6F6D656DLL;
  if (v2 != 1)
  {
    v10 = 0x6D6172676F6E6F6DLL;
    v9 = 0xE800000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t PosterArchive.Provider.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C90D138, &qword_2146F6F68);
  v19 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v12 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21432360C();
  sub_2146DAA28();
  sub_214323660(v3, v17);
  if (v18 > 2u)
  {
    if (v18 == 3)
    {
      v12 = *&v17[16];
      v13 = *v17;
      v9 = v17[32];
      v15[0] = 3;
      LOBYTE(v14[0]) = 0;
      sub_2143236BC();
      sub_2146DA388();
      if (!v2)
      {
        *v15 = v13;
        *&v15[16] = v12;
        v15[32] = v9;
        LOBYTE(v14[0]) = 4;
        sub_2143237B8();
LABEL_22:
        sub_2146DA388();
      }
    }

    else
    {
      if (v18 == 4)
      {
        *&v15[128] = *&v17[128];
        *&v15[144] = *&v17[144];
        *&v15[160] = *&v17[160];
        *&v15[174] = *&v17[174];
        *&v15[64] = *&v17[64];
        *&v15[80] = *&v17[80];
        *&v15[96] = *&v17[96];
        *&v15[112] = *&v17[112];
        *v15 = *v17;
        *&v15[16] = *&v17[16];
        *&v15[32] = *&v17[32];
        *&v15[48] = *&v17[48];
        LOBYTE(v14[0]) = 4;
        v16 = 0;
        sub_2143236BC();
        sub_2146DA388();
        if (!v2)
        {
          v14[8] = *&v15[128];
          v14[9] = *&v15[144];
          v14[10] = *&v15[160];
          *(&v14[10] + 14) = *&v15[174];
          v14[4] = *&v15[64];
          v14[5] = *&v15[80];
          v14[6] = *&v15[96];
          v14[7] = *&v15[112];
          v14[0] = *v15;
          v14[1] = *&v15[16];
          v14[2] = *&v15[32];
          v14[3] = *&v15[48];
          v16 = 5;
          sub_214323764();
          sub_2146DA388();
        }

        (*(v19 + 8))(v7, v5);
        return sub_2142FD404(v15);
      }

      v10 = v17[0];
      v12 = *&v17[24];
      v13 = *&v17[8];
      v11 = v17[40];
      v15[0] = 5;
      LOBYTE(v14[0]) = 0;
      sub_2143236BC();
      sub_2146DA388();
      if (!v2)
      {
        v15[0] = v10;
        *&v15[24] = v12;
        *&v15[8] = v13;
        v15[40] = v11;
        LOBYTE(v14[0]) = 6;
        sub_214323710();
        goto LABEL_22;
      }
    }

    return (*(v19 + 8))(v7, v5);
  }

  if (v18)
  {
    if (v18 == 1)
    {
      memcpy(v15, v17, 0x209uLL);
      LOBYTE(v14[0]) = 1;
      v16 = 0;
      sub_2143236BC();
      sub_2146DA388();
      if (!v2)
      {
        LOBYTE(v14[0]) = 2;
        sub_214323908();
        sub_2146DA388();
      }

      sub_2143238B4(v15);
      return (*(v19 + 8))(v7, v5);
    }

    *&v15[160] = *&v17[160];
    *&v15[176] = *&v17[176];
    *&v15[185] = *&v17[185];
    *&v15[96] = *&v17[96];
    *&v15[112] = *&v17[112];
    *&v15[128] = *&v17[128];
    *&v15[144] = *&v17[144];
    *&v15[32] = *&v17[32];
    *&v15[48] = *&v17[48];
    *&v15[64] = *&v17[64];
    *&v15[80] = *&v17[80];
    *v15 = *v17;
    *&v15[16] = *&v17[16];
    LOBYTE(v14[0]) = 2;
    v16 = 0;
    sub_2143236BC();
    sub_2146DA388();
    if (!v2)
    {
      v14[10] = *&v15[160];
      v14[11] = *&v15[176];
      *(&v14[11] + 9) = *&v15[185];
      v14[6] = *&v15[96];
      v14[7] = *&v15[112];
      v14[8] = *&v15[128];
      v14[9] = *&v15[144];
      v14[2] = *&v15[32];
      v14[3] = *&v15[48];
      v14[4] = *&v15[64];
      v14[5] = *&v15[80];
      v14[0] = *v15;
      v14[1] = *&v15[16];
      v16 = 3;
      sub_214323860();
      sub_2146DA388();
    }

    (*(v19 + 8))(v7, v5);
    return sub_21432380C(v15);
  }

  else
  {
    memcpy(v15, v17, sizeof(v15));
    LOBYTE(v14[0]) = 0;
    v16 = 0;
    sub_2143236BC();
    sub_2146DA388();
    if (!v2)
    {
      memcpy(v14, v15, 0x2D8uLL);
      v16 = 1;
      sub_21432395C();
      sub_2146DA388();
    }

    (*(v19 + 8))(v7, v5);
    return sub_2142FC228(v15);
  }
}